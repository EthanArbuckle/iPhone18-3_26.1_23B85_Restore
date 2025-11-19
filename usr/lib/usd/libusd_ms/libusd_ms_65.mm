void sub_29A3A0FE4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485180;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPathPatternParser::PropPathPatternElem");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A3A10B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A3A1110(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A3A1190(a1, a2);
  if (v3)
  {
    sub_29A3A14B4();
  }

  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return v3;
}

void sub_29A3A1184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A1190(void *a1, uint64_t a2)
{
  if (sub_29A3A11F0(a1, a2))
  {
    sub_29A399C48(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A3A08F0(a1, a2);
  }
}

uint64_t sub_29A3A11F0(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A3A127C(a1);
  if (v4)
  {
    sub_29A3A134C(a1);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A399BE8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3A1270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A127C(void *a1)
{
  v2 = sub_29A3A12C8(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A3A12C8(void *a1)
{
  if (sub_29A228CB4(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8])
  {
    v3 = *v2;
    v4 = v3 > 0x3F;
    v5 = (1 << v3) & 0x8400040000000000;
    if (!v4 && v5 != 0)
    {
      v7 = a1[5] + 1;
      a1[4] = v2 + 1;
      a1[5] = v7;
      ++a1[7];
      return 1;
    }
  }

  return 0;
}

__n128 sub_29A3A134C(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 91 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A3A13DC(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A3A13D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A13DC(void *a1)
{
  v2 = sub_29A3A1428(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A3A1428(void *a1)
{
  if (sub_29A228CB4(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8])
  {
    v3 = *v2 - 33;
    v4 = v3 > 0x3C;
    v5 = (1 << v3) & 0x1400000042001201;
    if (!v4 && v5 != 0)
    {
      v7 = a1[5] + 1;
      a1[4] = v2 + 1;
      a1[5] = v7;
      ++a1[7];
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29A3A155C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A3A15CC(a1, a2);
  if (v4)
  {
    sub_29A3A1660(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3A15C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A15CC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  if (v6 == *(a1 + 64) || *v6 != 46)
  {
    return 0;
  }

  v3 = *(a1 + 40) + 1;
  *(a1 + 32) = v6 + 1;
  *(a1 + 40) = v3;
  ++*(a1 + 56);
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(a1);
  sub_29A39924C(a2, v4);
  return 1;
}

void sub_29A3A1654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A1660(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A3994B4(a1, a2);
  if (v4)
  {
    sub_29A3997BC(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3A16C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A3A16D0(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeAtom(a2, v3);
  sub_29A39726C((a1 + 24), v3);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v8 = &v5;
  sub_29A218CE8(&v8);
  v8 = &v4;
  sub_29A21859C(&v8);
  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_29A3A1754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3A1768(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v4 = (a1 + 112);
  sub_29A2177C4(&v4);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_29A2176E4(&v4);
  v4 = (a1 + 8);
  sub_29A10C99C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29A3A1804(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485180;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::PathExprCloseGroup");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A3A18D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A3A1930(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 41)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  sub_29A3A19B8(a2);
  return 1;
}

void sub_29A3A19AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A3A19B8(uint64_t a1)
{
  sub_29A3A1A74((*(a1 + 8) - 48), v3);
  v2 = *(a1 + 8);
  sub_29A397E5C(a1, v2 - 48);
  *(a1 + 8) = v2 - 48;
  sub_29A39726C((v2 - 72), v3);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v8 = &v5;
  sub_29A218CE8(&v8);
  v8 = &v4;
  sub_29A21859C(&v8);
  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_29A3A1A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

void sub_29A3A1A74(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 != a1[1])
  {
    sub_29A3986AC(a1);
  }

  v4 = a1[4];
  *a2 = *(v4 - 96);
  *(a2 + 16) = *(v4 - 80);
  *(v4 - 96) = 0;
  *(v4 - 88) = 0;
  *(a2 + 24) = *(v4 - 72);
  *(a2 + 40) = *(v4 - 56);
  *(v4 - 80) = 0;
  *(v4 - 72) = 0;
  *(v4 - 64) = 0;
  *(v4 - 56) = 0;
  *(a2 + 48) = *(v4 - 48);
  *(a2 + 64) = *(v4 - 32);
  *(v4 - 48) = 0;
  *(v4 - 40) = 0;
  v5 = *(v4 - 24);
  *(a2 + 88) = *(v4 - 8);
  *(a2 + 72) = v5;
  *(v4 - 32) = 0;
  *(v4 - 24) = 0;
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  v6 = a1[3];
  for (i = a1[4]; i != v6; sub_29A39716C((a1 + 3), i))
  {
    i -= 96;
  }

  a1[4] = v6;
}

uint64_t sub_29A3A1B44(uint64_t a1)
{
  v9 = *(a1 + 32);
  v12 = *(a1 + 48);
    ;
  }

  v2 = *(a1 + 32);
  if (v2 == *(a1 + 64) || *v2 != 43)
  {
    *(a1 + 32) = v9;
    *(a1 + 48) = v12;
    v10 = *(a1 + 32);
    v13 = *(a1 + 48);
      ;
    }

    v4 = *(a1 + 32);
    if (v4 == *(a1 + 64) || *v4 != 38)
    {
      *(a1 + 32) = v10;
      *(a1 + 48) = v13;
      v11 = *(a1 + 32);
      v14 = *(a1 + 48);
        ;
      }

      v6 = *(a1 + 32);
      if (v6 == *(a1 + 64) || *v6 != 45)
      {
        *(a1 + 32) = v11;
        *(a1 + 48) = v14;
        result = sub_29A2262B0(a1);
        if (!result)
        {
          return result;
        }

          ;
        }
      }

      else
      {
        v7 = *(a1 + 40) + 1;
        *(a1 + 32) = v6 + 1;
        *(a1 + 40) = v7;
        ++*(a1 + 56);
          ;
        }
      }
    }

    else
    {
      v5 = *(a1 + 40) + 1;
      *(a1 + 32) = v4 + 1;
      *(a1 + 40) = v5;
      ++*(a1 + 56);
        ;
      }
    }
  }

  else
  {
    v3 = *(a1 + 40) + 1;
    *(a1 + 32) = v2 + 1;
    *(a1 + 40) = v3;
    ++*(a1 + 56);
      ;
    }
  }

  return 1;
}

uint64_t sub_29A3A1CB4(void *a1)
{
  sub_29A3A1D88(a1);
  if (sub_29A3A1E14(a1) & 1) != 0 || (sub_29A3A1FE0(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 40)
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    if ((sub_29A3A2640(a1) & 1) == 0)
    {
      sub_29A398034(a1);
    }

    v4 = a1[4];
    if (v4 == a1[8] || *v4 != 41)
    {
      sub_29A3A1804(a1);
    }

    v5 = a1[5] + 1;
    a1[4] = v4 + 1;
    a1[5] = v5;
    ++a1[7];
    return 1;
  }

  return 0;
}

__n128 sub_29A3A1D88(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
    ;
  }

  v2 = *(a1 + 32);
  if (v2 == *(a1 + 64) || *v2 != 126)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  else
  {
    v3 = *(a1 + 40) + 1;
    *(a1 + 32) = v2 + 1;
    *(a1 + 40) = v3;
    ++*(a1 + 56);
      ;
    }
  }

  return result;
}

uint64_t sub_29A3A1E14(uint64_t a1)
{
  v16 = *(a1 + 32);
  v18 = *(a1 + 48);
  if (sub_29A398E00(a1))
  {
    v20 = *(a1 + 32);
    v23 = *(a1 + 48);
    v2 = sub_29A398E60(a1);
    *(a1 + 32) = v20;
    *(a1 + 48) = v23;
    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  *(a1 + 32) = v16;
  *(a1 + 48) = v18;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  if (v3 == v4 || *v3 != 37)
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v3 + 1;
  *(a1 + 40) = v5 + 1;
  v6 = *(a1 + 56);
  *(a1 + 56) = v6 + 1;
  v21 = *(a1 + 32);
  v24 = *(a1 + 48);
  if (v3 + 1 != v4 && v3[1] == 47)
  {
    *(a1 + 32) = v3 + 2;
    *(a1 + 40) = v5 + 2;
    *(a1 + 56) = v6 + 2;
    if (sub_29A398FF4(a1))
    {
      return 1;
    }
  }

  *(a1 + 32) = v21;
  *(a1 + 48) = v24;
  v17 = *(a1 + 32);
  v19 = *(a1 + 48);
  if (!sub_29A2297B8(a1))
  {
    v9 = v17;
    v10 = v19;
LABEL_15:
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
    goto LABEL_16;
  }

  v22 = *(a1 + 32);
  v25 = *(a1 + 48);
  v7 = *(a1 + 32);
  if (v7 != *(a1 + 64))
  {
    do
    {
      if (*v7 != 47)
      {
        break;
      }

      v8 = *(a1 + 40) + 1;
      *(a1 + 32) = v7 + 1;
      *(a1 + 40) = v8;
      ++*(a1 + 56);
      if (!sub_29A2297B8(a1))
      {
        break;
      }

      v22 = *(a1 + 32);
      v25 = *(a1 + 48);
      v7 = *(a1 + 32);
    }

    while (v7 != *(a1 + 64));
    v9 = v22;
    v10 = v25;
    goto LABEL_15;
  }

LABEL_16:
  v11 = *(a1 + 32);
  if (v11 == *(a1 + 64) || *v11 != 47)
  {
    if (!sub_29A3990CC(a1))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = *(a1 + 40) + 1;
    *(a1 + 32) = v11 + 1;
    *(a1 + 40) = v12;
    ++*(a1 + 56);
    if ((sub_29A398FF4(a1) & 1) == 0)
    {
LABEL_19:
      result = 0;
      *(a1 + 32) = v14;
      *(a1 + 48) = v15;
      return result;
    }
  }

  return 1;
}

uint64_t sub_29A3A1FE0(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(v4);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v2 = sub_29A3A2068(a1);
  sub_29A3A1768(v4);
  return v2;
}

uint64_t sub_29A3A2068(void *a1)
{
  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 47)
  {
    sub_29A3A2100(a1);
    return 1;
  }

  if (sub_29A3A2148(a1))
  {
    return 1;
  }

  sub_29A3A21DC(a1);
  if (v3)
  {
    return 1;
  }

  return sub_29A3A254C(a1);
}

uint64_t sub_29A3A2100(void *a1)
{
  if ((sub_29A3A0B20(a1) & 1) == 0)
  {
    sub_29A39931C(a1);
  }

  sub_29A3A21DC(a1);
  return 1;
}

uint64_t sub_29A3A2148(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v2 = sub_29A2297B8(a1);
  if (v2)
  {
    do
    {
      sub_29A23B068(a1);
    }

    while ((v3 & 1) != 0);
    if (sub_29A3A0B20(a1))
    {
      sub_29A3A21DC(a1);
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v2;
}

void sub_29A3A21CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A3A21DC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (!sub_29A3A2248(a1) || (sub_29A3A236C(a1) & 1) == 0)
  {
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

void sub_29A3A223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A2248(__n128 *a1)
{
  v2 = sub_29A3A0B8C(a1);
  if (v2)
  {
    do
    {
      sub_29A3A2294(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

__n128 sub_29A3A2294(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_29A3A2310(a1);
  if (!v2 || !sub_29A3A0B20(a1) || (sub_29A3A0B8C(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A3A2304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A3A2310(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (sub_29A3A0B20(a1))
  {
    sub_29A3A0B8C(a1);
  }

  result = v3;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

void sub_29A3A2360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A236C(__n128 *a1)
{
  v2 = a1[2].n128_u64[0];
  if (v2 == a1[4].n128_u64[0] || *v2 != 46)
  {
    sub_29A22E0F4(a1);
  }

  else
  {
    v3 = a1[2].n128_u64[1] + 1;
    a1[2].n128_u64[0] = (v2 + 1);
    a1[2].n128_u64[1] = v3;
    ++a1[3].n128_u64[1];
    if ((sub_29A3A23EC(a1) & 1) == 0)
    {
      sub_29A3A0FE4(a1);
    }
  }

  return 1;
}

uint64_t sub_29A3A23EC(__n128 *a1)
{
  if (sub_29A3A244C(a1))
  {
    sub_29A3A0CEC(a1);
    return 1;
  }

  else
  {

    return sub_29A3A0EAC(a1);
  }
}

uint64_t sub_29A3A244C(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = sub_29A3A127C(a1);
  if (v2)
  {
    sub_29A3A24BC(a1);
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return v2;
}

void sub_29A3A24B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A3A24BC(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 91 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A3A13DC(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A3A2540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A254C(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 == *(a1 + 64) || *v3 != 46)
  {
    return 0;
  }

  v1 = *(a1 + 40) + 1;
  *(a1 + 32) = v3 + 1;
  *(a1 + 40) = v1;
  ++*(a1 + 56);
  sub_29A3A25D0(a1);
  return 1;
}

void sub_29A3A25C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A25D0(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = sub_29A22E0F4(a1);
  if (v2)
  {
    sub_29A3A21DC(a1);
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return v2;
}

void sub_29A3A2634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A2640(uint64_t a1)
{
    ;
  }

  sub_29A3A1D88(a1);
  if ((sub_29A3A1E14(a1) & 1) == 0 && (sub_29A3A1FE0(a1) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (v2 == *(a1 + 64) || *v2 != 40)
    {
      return 0;
    }

    v3 = *(a1 + 40) + 1;
    *(a1 + 32) = v2 + 1;
    *(a1 + 40) = v3;
    ++*(a1 + 56);
    if ((sub_29A3A2640(a1) & 1) == 0)
    {
      sub_29A398034(a1);
    }

    v4 = *(a1 + 32);
    if (v4 == *(a1 + 64) || *v4 != 41)
    {
      sub_29A3A1804(a1);
    }

    v5 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v5;
    ++*(a1 + 56);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = v8;
  v11 = v9;
  if (sub_29A3A1B44(a1))
  {
    while (1)
    {
      v6 = sub_29A3A1CB4(a1);
      *(a1 + 32) = v10;
      *(a1 + 48) = v11;
      if (!v6 || !sub_29A3A1B44(a1) || (sub_29A3A1CB4(a1) & 1) == 0)
      {
        break;
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = v8;
      v11 = v9;
      if ((sub_29A3A1B44(a1) & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
  }

  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
    ;
  }

  return 1;
}

void sub_29A3A27AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A3A27C4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CF0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::eolf");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A3A2888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

char *sub_29A3A28E8(char *__dst, __int128 *a2, char **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  v6 = __dst[23];
  if (v6 < 0)
  {
    v7 = *__dst;
    v6 = *(__dst + 1);
  }

  else
  {
    v7 = __dst;
  }

  *(__dst + 3) = v7;
  *(__dst + 4) = v7;
  *(__dst + 40) = xmmword_29B430070;
  *(__dst + 7) = 1;
  *(__dst + 8) = &v7[v6];
  sub_29A008E78(__dst + 9, *a3);
  *(__dst + 12) = 0;
  return __dst;
}

void sub_29A3A297C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A3A2998(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      v17 = sub_29A00E7A8(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[4 * v16];
    v35 = 4 * a5;
    v36 = v34;
    do
    {
      v37 = *v7++;
      *v36 = v37;
      v36 += 4;
      v35 -= 4;
    }

    while (v35);
    v38 = &v17[4 * v15];
    memcpy(&v34[4 * a5], v5, *(a1 + 8) - v5);
    v39 = *a1;
    v40 = &v34[4 * a5 + *(a1 + 8) - v5];
    *(a1 + 8) = v5;
    v41 = v5 - v39;
    v42 = &v34[-(v5 - v39)];
    memcpy(v42, v39, v41);
    v43 = *a1;
    *a1 = v42;
    *(a1 + 8) = v40;
    *(a1 + 16) = v38;
    if (v43)
    {
      operator delete(v43);
    }

    return v34;
  }

  v18 = v10 - __dst;
  v19 = (v10 - __dst) >> 2;
  if (v19 >= a5)
  {
    v30 = &__dst[4 * a5];
    v31 = (v10 - 4 * a5);
    v32 = *(a1 + 8);
    while (v31 < v10)
    {
      v33 = *v31++;
      *v32++ = v33;
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v30);
    }

    v29 = 4 * a5;
    v27 = v5;
    v28 = v7;
    goto LABEL_29;
  }

  v21 = a4 - &__src[v18];
  if (a4 != &__src[v18])
  {
    memmove(*(a1 + 8), &__src[v18], a4 - &__src[v18]);
  }

  v22 = (v10 + v21);
  *(a1 + 8) = v10 + v21;
  if (v19 >= 1)
  {
    v23 = &v5[4 * a5];
    v24 = v10 + v21;
    if (&v22[-4 * a5] < v10)
    {
      v25 = &v5[a4];
      v26 = &v5[a4 + -4 * a5];
      do
      {
        *(v25 - v7) = *(v26 - v7);
        v26 += 4;
        v25 += 4;
      }

      while (v26 - v7 < v10);
      v24 = v25 - v7;
    }

    *(a1 + 8) = v24;
    if (v22 != v23)
    {
      memmove(&v5[4 * a5], v5, v22 - v23);
    }

    if (v10 != v5)
    {
      v27 = v5;
      v28 = v7;
      v29 = v10 - v5;
LABEL_29:
      memmove(v27, v28, v29);
    }
  }

  return v5;
}

uint64_t sub_29A3A2BC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 5;
      if (v19 >= a5)
      {
        sub_29A3A2D5C(a1, a2, a1[1], a2 + 32 * a5);
        v20 = a3 + 32 * a5;
      }

      else
      {
        a1[1] = sub_29A3A2F70(a1, v18 + a3, a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A3A2D5C(a1, v5, v10, v5 + 32 * a5);
        v20 = v18 + a3;
      }

      sub_29A3A30D8(&v22, a3, v20);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v26 = a1;
    if (v15)
    {
      v17 = sub_29A10CB10(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    v23 = &v17[32 * v16];
    v24 = v23;
    v25 = &v17[32 * v15];
    sub_29A3A2E24(&v22, a3, a5);
    v5 = sub_29A3A2EB4(a1, &v22, v5);
    sub_29A3A3254(&v22);
  }

  return v5;
}

uint64_t sub_29A3A2D5C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = (v7 + v10);
      v12 = v6 + v10;
      sub_29A1DDD84((v6 + v10), (v7 + v10));
      sub_29A1DDDC0((v6 + v10 + 4), (v7 + v10 + 4));
      v13 = *(v7 + v10 + 8);
      *(v12 + 24) = *(v7 + v10 + 24);
      *(v12 + 8) = v13;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
      v10 += 32;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return sub_29A3A3024(&v15, a2, v7);
}

_DWORD *sub_29A3A2E24(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v5 = v4 + 4;
    v6 = 32 * a3;
    v7 = a2 + 4;
    v4 += 32 * a3;
    do
    {
      sub_29A1DDD84((v5 - 4), (v7 - 4));
      result = sub_29A1DDDC0(v5, v7);
      v8 = *(v7 + 4);
      *(v5 + 20) = *(v7 + 20);
      *(v5 + 4) = v8;
      *(v7 + 12) = 0;
      *(v7 + 4) = 0;
      *(v7 + 20) = 0;
      v5 += 32;
      v7 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  *(v3 + 2) = v4;
  return result;
}

uint64_t sub_29A3A2EB4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29A3A3170(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29A3A3170(a1, v7, a3, v9);
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

uint64_t sub_29A3A2F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A1DDD84(v4, v6);
      sub_29A1DDDC0((v4 + 4), (v6 + 4));
      v7 = *(v6 + 8);
      *(v4 + 24) = *(v6 + 24);
      *(v4 + 8) = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A218510(v9);
  return v4;
}

uint64_t sub_29A3A3024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

uint64_t sub_29A3A30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

uint64_t sub_29A3A3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0((v4 + 4), (v8 + 4));
      v9 = *(v8 + 8);
      *(v4 + 24) = *(v8 + 24);
      *(v4 + 8) = v9;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v8 += 32;
      v4 = v14 + 32;
      v14 += 32;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      sub_29A2175CC(a1, v6);
      v6 += 32;
    }
  }

  return sub_29A218510(v11);
}

void **sub_29A3A3254(void **a1)
{
  sub_29A3A3288(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A3A3288(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 32;
      result = sub_29A2175CC(v4, v1 - 32);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A3A32D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 6;
      if (v19 >= a5)
      {
        sub_29A3A3484(a1, a2, a1[1], a2 + (a5 << 6));
        v20 = v7 + (a5 << 6);
      }

      else
      {
        a1[1] = sub_29A3A35E0(a1, v18 + a3, a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A3A3484(a1, v5, v10, v5 + (a5 << 6));
        v20 = v18 + v7;
      }

      sub_29A3A37C0(v25, v7, v20);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 6;
    v25[4] = a1;
    if (v15)
    {
      v17 = sub_29A0BE3C0(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[64 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v25[3] = &v17[64 * v15];
    v22 = a5 << 6;
    v23 = &v21[64 * a5];
    do
    {
      sub_29A3A3674(a1, v21, v7);
      v21 += 64;
      v7 += 64;
      v22 -= 64;
    }

    while (v22);
    v25[2] = v23;
    v5 = sub_29A3A3524(a1, v25, v5);
    sub_29A3A392C(v25);
  }

  return v5;
}

uint64_t sub_29A3A3484(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      sub_29A3A3674(a1, v8, v10);
      v10 += 64;
      v8 += 64;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A3A36F8(&v12, a2, v7);
}

uint64_t sub_29A3A3524(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29A3A3878(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29A3A3878(a1, v7, a3, v9);
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

uint64_t sub_29A3A35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A3A3674(a1, v4, v6);
      v6 += 64;
      v4 = v12 + 64;
      v12 += 64;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A218C5C(v9);
  return v4;
}

__n128 sub_29A3A3674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = *(a3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a2 + 56) = *(a3 + 56);
  return result;
}

uint64_t sub_29A3A36F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

uint64_t sub_29A3A37C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

uint64_t sub_29A3A3878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A3A3674(a1, a4, v7);
      v7 += 64;
      a4 = v12 + 64;
      v12 += 64;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A217688(a1, v5);
      v5 += 64;
    }
  }

  return sub_29A218C5C(v9);
}

void **sub_29A3A392C(void **a1)
{
  sub_29A3A3960(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A3A3960(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 64;
      result = sub_29A217688(v4, v1 - 64);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A3A39A8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[32 * v7];
  sub_29A1DDD84(v9, a2);
  sub_29A1DDDC0(v9 + 1, (a2 + 4));
  v10 = *(a2 + 8);
  *(v9 + 3) = *(a2 + 24);
  *(v9 + 8) = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v19 = v9 + 32;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A3A3170(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A3A3254(&v17);
  return v16;
}

void sub_29A3A3AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3A3254(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A3AD8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[64 * v2];
  *(&v17 + 1) = &v8[64 * v7];
  sub_29A3A3674(a1, v16, a2);
  *&v17 = v16 + 64;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A3A3878(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A3A392C(&v15);
  return v14;
}

void sub_29A3A3BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3A392C(va);
  _Unwind_Resume(a1);
}

void *sub_29A3A3BE8(void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = a1[1];
    v7 = &v6[a2];
    v8 = 8 * a2;
    do
    {
      *v6++ = *a3;
      v8 -= 8;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

void sub_29A3A3C50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3A3C6C(void ***a1)
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
        v4 -= 96;
        sub_29A39716C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternIncrSearchState::Pop(uint64_t this, int a2)
{
  v2 = *this;
  v3 = *(this + 8);
  if (*this != v3)
  {
    v4 = (v3 - 4);
    do
    {
      if (*v4 < a2)
      {
        break;
      }

      *(this + 8) = v4;
    }

    while (v4-- != v2);
  }

  if (*(this + 24) >= a2)
  {
    *(this + 24) = -1;
  }

  return this;
}

unint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_EvalExpr(int **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *v3;
    if (*v3 > 2)
    {
      if ((v10 - 4) >= 2)
      {
        if (v10 == 3)
        {
          v9 = (v9 - 1);
        }

        else
        {
          v9 = v9;
        }
      }

      else
      {
        v12 = v10 != 5;
        if (v3 != v4 && ((v12 ^ v8) & 1) == 0)
        {
          v13 = v9;
          do
          {
            v14 = *v3;
            if (*v3 == 3)
            {
              v13 = (v13 - 1);
              if (v13 == v9)
              {
                goto LABEL_35;
              }
            }

            else if (v14 == 2)
            {
              v13 = (v13 + 1);
            }

            else if (!v14)
            {
              a3(a2, 1);
            }

            ++v3;
          }

          while (v3 != v4);
          v9 = v13;
        }
      }
    }

    else if (v10)
    {
      if (v10 == 2)
      {
        v11 = v9 + 1;
      }

      else
      {
        v11 = v9;
      }

      if (v10 == 1)
      {
        v9 = v9;
      }

      else
      {
        v9 = v11;
      }

      if (v10 == 1)
      {
        v8 ^= 1u;
      }
    }

    else
    {
      v15 = (a3)(a2, 0);
      v8 = v15 & 1;
      if (HIDWORD(v15) == 1 && v7 == 0)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }
    }

LABEL_35:
    ++v3;
  }

  while (v3 != v4);
  return v8 | (v7 << 32);
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_29A2258F0(a1, a2);
  sub_29A225948((a1 + 4), (a2 + 4));
  *(a1 + 104) = 0;
  sub_29A3A41DC(a1 + 8, (*(a2 + 16) - *(a2 + 8)) >> 5);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v8 != v9)
  {
    v10 = v8 + 32;
    while (*(v8 + 24) == -1)
    {
      if ((*(v8 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v8 + 8))
        {
          break;
        }
      }

      else if (*(v8 + 23))
      {
        break;
      }

      if (v9 == v10)
      {
        *(a1 + 105) = 1;
      }

      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      if (v15 == v16)
      {
        *(a1 + 104) = 1;
      }

      else
      {
        v17 = *(a1 + 40);
        if (*(a1 + 32) == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v17 - 8);
        }

        __p[0] = v18;
        __p[1] = (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 2));
        sub_29A03A998(a1 + 32, __p);
      }

LABEL_26:
      v8 += 32;
      v10 += 32;
      if (v8 == v9)
      {
        goto LABEL_31;
      }
    }

    if (*(v8 + 28))
    {
      goto LABEL_12;
    }

    if ((*(v8 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v8 + 8))
      {
LABEL_12:
        sub_29A070BA0(a1 + 56);
      }
    }

    else if (!*(v8 + 23))
    {
      goto LABEL_12;
    }

    std::operator+<char>();
    v11 = std::string::append(&v29, "$");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v31 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v28 = 2;
    v13 = *(a1 + 88);
    if (v13 >= *(a1 + 96))
    {
      v14 = sub_29A3A520C(a1 + 80, __p, &v28);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::ArchRegex::ArchRegex(*(a1 + 88), __p, 2);
      v14 = v13 + 48;
      *(a1 + 88) = v13 + 48;
    }

    *(a1 + 88) = v14;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v19 = -1431655765 * ((*(a1 + 88) - *(a1 + 80)) >> 4) - 1;
    LODWORD(__p[0]) = 1;
    HIDWORD(__p[0]) = v19;
    LODWORD(__p[1]) = -1;
    sub_29A3A429C(a1 + 8, __p);
    v20 = *(v8 + 24);
    if (v20 != -1)
    {
      *(*(a1 + 16) - 4) = a4(a3, *(a2 + 32) + 72 * v20);
    }

    goto LABEL_26;
  }

LABEL_31:
  if ((*(a1 + 105) & 1) == 0)
  {
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    if (v21 != v22)
    {
      v23 = *(a1 + 40);
      if (*(a1 + 32) == v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v23 - 8);
      }

      __p[0] = v24;
      __p[1] = (0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 2));
      sub_29A03A998(a1 + 32, __p);
    }
  }

  if (*(a2 + 56))
  {
    LOBYTE(v25) = 2;
  }

  else if (*(a1 + 105))
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v26 = *(a1 + 16);
    if (*(a1 + 8) == v26 || *(v26 - 12))
    {
      goto LABEL_46;
    }

    v27 = *(a1 + 56) + 24 * *(v26 - 8);
    v25 = *(v27 + 23);
    if (v25 < 0)
    {
      v25 = *(v27 + 8);
    }

    if (v25)
    {
LABEL_46:
      LOBYTE(v25) = 1;
    }
  }

  *(a1 + 106) = v25;
}

void sub_29A3A419C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 88) = v22;
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

void sub_29A3A41DC(uint64_t a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A379A50(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[12 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_29A3A429C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = sub_29A379A50(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[12 * v8];
    v14 = &v12[12 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    v7 = v13 + 12;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = (v5 + 12);
  }

  *(a1 + 8) = v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Match(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v44[0] = a3;
  v44[1] = a4;
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(this) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(v4) & 1) == 0)
  {
    v39 = "sdf/pathExpressionEval.cpp";
    v40 = "_Match";
    v41 = 254;
    v42 = "SdfPredicateFunctionResult pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Match(const SdfPath &, TfFunctionRef<SdfPredicateFunctionResult (int, const SdfPath &)>) const";
    v43 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v4, __p);
    if (v38 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v39, "Unsupported path <%s>; can only match prim or prim-property paths", v11, v12);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_14;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v4, a1))
  {
    HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a1, v4);
    LOBYTE(v4) = 0;
    v8 = 0;
    v9 = HasPrefix;
    return v8 | (v9 << 32) | v4;
  }

  IsPrimPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(v4);
  v7 = *(a1 + 106);
  if (v7 == 2 && !IsPrimPropertyPath)
  {
    goto LABEL_6;
  }

  if (((v7 == 1) & IsPrimPropertyPath) != 0)
  {
LABEL_14:
    LOBYTE(v4) = 0;
    v9 = 0;
    v8 = 0;
    return v8 | (v9 << 32) | v4;
  }

  if (*(a1 + 8) == *(a1 + 16))
  {
    if (*(a1 + 104) & 1) != 0 || (*(a1 + 105))
    {
      v9 = 0;
      v8 = 0;
      LOBYTE(v4) = 1;
    }

    else
    {
      v8 = 0;
      v4 = *v4 == *a1;
      v9 = v4;
    }

    return v8 | (v9 << 32) | v4;
  }

  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v4);
  if (PathElementCount == pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1))
  {
LABEL_6:
    LOBYTE(v4) = 0;
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32) | v4;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v4);
  v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(v4, &v39, v15 - v16);
  v17 = v39;
  v18 = v40;
  __p[0] = a1;
  __p[1] = v44;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  if (v19 == v20)
  {
LABEL_42:
    v33 = 0;
    v9 = *(a1 + 105) ^ 1;
    LOBYTE(v4) = 1;
    goto LABEL_53;
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 2);
  v9 = 1;
  v22 = v21;
  v35 = *(a1 + 40);
  v36 = v21;
  while (1)
  {
    if (v22 > (v18 - v17) >> 3)
    {
LABEL_47:
      LOBYTE(v4) = 0;
      v33 = 0;
      goto LABEL_53;
    }

    v23 = v19[1];
    v24 = v23 - *v19;
    v22 -= v24;
    if ((*(a1 + 104) & 1) == 0 && !*v19)
    {
      v4 = sub_29A3A4788(__p, v19, v17);
      if (v4 != 1)
      {
        goto LABEL_48;
      }

      v25 = v19[1];
      v17 = (v17 + 8 * (v25 - *v19));
      if ((*(a1 + 105) & 1) == 0 && v25 == v21 && v17 != v18)
      {
        goto LABEL_47;
      }

      goto LABEL_41;
    }

    if ((*(a1 + 105) & 1) != 0 || v23 != v21)
    {
      break;
    }

    v4 = sub_29A3A4788(__p, v19, (v18 - 8 * v24));
    v17 = v18;
    if (v4 != 1)
    {
LABEL_48:
      v9 = HIDWORD(v4);
      goto LABEL_52;
    }

LABEL_41:
    v19 += 2;
    if (v19 == v20)
    {
      goto LABEL_42;
    }
  }

  v26 = (v18 - (v17 + 8 * v22)) >> 3;
  v27 = v26 >= v24;
  v28 = v26 - v24;
  if (!v27 || (v29 = v17 + 8 * v28 + 8, v29 == v17))
  {
    LODWORD(v4) = 0;
    v34 = 0x100000000;
    goto LABEL_51;
  }

  v30 = v17;
  v31 = v17;
  while (1)
  {
    v32 = sub_29A3A4788(__p, v19, v30);
    LODWORD(v4) = v32;
    if (v32)
    {
      break;
    }

    v31 = (v31 + 8);
    v30 = (v30 + 8);
    if (v31 == v29)
    {
      v31 = v17;
      break;
    }
  }

  v21 = v36;
  if (v32 == 1)
  {
    v17 = (v31 + 8 * (v19[1] - *v19));
    v20 = v35;
    goto LABEL_41;
  }

  v34 = v32 & 0xFFFFFFFF00000000;
LABEL_51:
  v9 = HIDWORD(v34);
LABEL_52:
  v33 = v4;
LABEL_53:
  __p[0] = &v39;
  sub_29A1E234C(__p);
  v8 = v33 & 0xFFFFFF00;
  return v8 | (v9 << 32) | v4;
}

void sub_29A3A4748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  __p = &a19;
  sub_29A1E234C(&__p);
  _Unwind_Resume(a1);
}

unint64_t sub_29A3A4788(void *a1, void *a2, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v3 = a2[1];
  if (*a2 != v3)
  {
    v9 = *a1;
    v10 = *(*a1 + 8);
    v11 = (v10 + 12 * v3);
    v12 = (v10 + 12 * *a2 + 4);
    v6 = 1;
    while (1)
    {
      v14 = v12 - 1;
      v13 = *(v12 - 1);
      if (v13 == 1)
      {
        v16 = *(v9 + 80) + 48 * *v12;
        Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
        if (!pxrInternal__aapl__pxrReserved__::ArchRegex::Match(v16, Name))
        {
          goto LABEL_29;
        }
      }

      else if (!v13)
      {
        v15 = *(v9 + 56) + 24 * *v12;
        if ((*(v15 + 23) & 0x8000000000000000) != 0)
        {
          if (!*(v15 + 8))
          {
            goto LABEL_25;
          }
        }

        else if (!*(v15 + 23))
        {
          goto LABEL_25;
        }

        v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
        v19 = *(v15 + 23);
        if (v19 >= 0)
        {
          v20 = *(v15 + 23);
        }

        else
        {
          v20 = *(v15 + 8);
        }

        v21 = *(v18 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = v18[1];
        }

        if (v20 != v21 || (v19 >= 0 ? (v23 = v15) : (v23 = *v15), v22 >= 0 ? (v24 = v18) : (v24 = *v18), memcmp(v23, v24, v20)))
        {
LABEL_29:
          v6 = 0;
LABEL_30:
          v4 = 0;
          v5 = 0x100000000;
          return v6 | v5 | v4;
        }
      }

LABEL_25:
      v25 = v12[1];
      if (v25 != -1)
      {
        v26 = (*(a1[1] + 8))(*a1[1], v25, this);
        if (v26 != 1)
        {
          v5 = v26 & 0xFFFFFFFF00000000;
          v4 = v26 & 0xFFFFFF00;
          v6 = v26;
          return v6 | v5 | v4;
        }
      }

      this = (this + 8);
      v12 += 3;
      if (v14 + 3 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  v4 = 0;
  v5 = 0x100000000;
  v6 = 1;
  return v6 | v5 | v4;
}

unint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Next(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (*(a2 + 24) == -1)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(this) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(this) & 1) == 0)
    {
      v52[0] = "sdf/pathExpressionEval.cpp";
      v52[1] = "_Next";
      v52[2] = 510;
      v52[3] = "SdfPredicateFunctionResult pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Next(_PatternIncrSearchState &, const SdfPath &, TfFunctionRef<SdfPredicateFunctionResult (int, const SdfPath &)>) const";
      v53 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, __p);
      if (v51 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v52, "Unsupported path <%s>; can only match prim or prim-property paths", v16, v17);
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = 0;
      v6 = 0;
      v7 = 0;
      *(a2 + 24) = 0;
      goto LABEL_55;
    }

    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(this);
    v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
    if (*a2 == *(a2 + 8) && !pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(this, a1))
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a1, this))
      {
        goto LABEL_9;
      }
    }

    else
    {
      IsPrimPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(this);
      v15 = *(a1 + 106);
      if (v15 == 2 && !IsPrimPropertyPath)
      {
        goto LABEL_9;
      }

      if (((v15 == 1) & IsPrimPropertyPath) != 0)
      {
        v8 = 0;
        v6 = 0;
        v7 = 0;
        return v6 | v7 | v8;
      }

      if (*(a1 + 8) != *(a1 + 16))
      {
        v19 = *a2;
        v18 = *(a2 + 8);
        v20 = &v18[-*a2] >> 2;
        v21 = *(a1 + 32);
        if (v20 == (*(a1 + 40) - v21) >> 4)
        {
          v18 -= 4;
          *(a2 + 8) = v18;
          v20 = (v18 - v19) >> 2;
        }

        v22 = (v21 + 16 * v20);
        if (v18 != v19)
        {
          if (PathElementCount - *(v18 - 1) >= v22[1] - *v22)
          {
            goto LABEL_23;
          }

LABEL_9:
          v8 = 0;
          v7 = 0;
          v6 = 0x100000000;
          return v6 | v7 | v8;
        }

        v48 = v22[1] - *v22;
        if (PathElementCount - v13 < v48)
        {
          goto LABEL_9;
        }

        if (PathElementCount - v13 <= v48 || (*(a1 + 104) & 1) != 0)
        {
LABEL_23:
          sub_29A1E21F4(v52, this);
          sub_29A1E2240(v52 + 1, this + 1);
          v23 = *(a1 + 8);
          v25 = *v22;
          v24 = v22[1];
          v26 = v23 + 12 * *v22;
          if (v24 != v25)
          {
            v27 = v23 + 12 * v24;
            if (*(v27 - 12))
            {
              goto LABEL_43;
            }

            v28 = *(a1 + 56) + 24 * *(v27 - 8);
            v29 = *(v28 + 23);
            if (v29 < 0)
            {
              v29 = *(v28 + 8);
            }

            if (!v29)
            {
              goto LABEL_41;
            }

            Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v52);
            v31 = *(v28 + 23);
            if (v31 >= 0)
            {
              v32 = *(v28 + 23);
            }

            else
            {
              v32 = *(v28 + 8);
            }

            v33 = *(Name + 23);
            v34 = v33;
            if ((v33 & 0x80u) != 0)
            {
              v33 = Name[1];
            }

            if (v32 == v33)
            {
              v35 = v31 >= 0 ? v28 : *v28;
              v36 = v34 >= 0 ? Name : *Name;
              if (!memcmp(v35, v36, v32))
              {
LABEL_41:
                v37 = *(v27 - 4);
                if (v37 == -1 || (v38 = a5(a4, v37, v52), v38 == 1))
                {
LABEL_43:
                  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v52, __p);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                }

LABEL_68:
                v8 = v38;
                v44 = v38 >> 8;
                v46 = HIDWORD(v38);
                if (HIDWORD(v38))
                {
                  v6 = v38 & 0xFFFFFFFF00000000;
                  goto LABEL_71;
                }

                goto LABEL_69;
              }
            }

            goto LABEL_64;
          }

          v39 = v23 + 12 * v24;
          sub_29A2258F0(v52, this);
          sub_29A225948(v52 + 1, this + 1);
          if (v39 == v26)
          {
            LODWORD(__p[0]) = PathElementCount;
            sub_29A00D250(a2, __p);
            if ((*(a2 + 8) - *a2) >> 2 == (*(a1 + 40) - *(a1 + 32)) >> 4)
            {
              LODWORD(v44) = 0;
              v45 = *(a1 + 105);
              v8 = 1;
              if (v45)
              {
                LOBYTE(v46) = 1;
LABEL_69:
                v6 = 0;
                *(a2 + 24) = PathElementCount;
                *(a2 + 28) = v46;
                goto LABEL_71;
              }

LABEL_65:
              v6 = 0x100000000;
LABEL_71:
              sub_29A1DCEA8(v52);
              v7 = (v44 & 0xFFFFFF) << 8;
              return v6 | v7 | v8;
            }
          }

          else
          {
            if (*(v39 - 12) != 1)
            {
              goto LABEL_49;
            }

            v40 = *(v39 - 8);
            v41 = *(a1 + 80);
            v42 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v52);
            if (pxrInternal__aapl__pxrReserved__::ArchRegex::Match(v41 + 48 * v40, v42))
            {
              v43 = *(v39 - 4);
              if (v43 != -1)
              {
                v38 = a5(a4, v43, v52);
                if (v38 != 1)
                {
                  goto LABEL_68;
                }
              }

LABEL_49:
              pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v52, __p);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }
          }

LABEL_64:
          v8 = 0;
          LODWORD(v44) = 0;
          goto LABEL_65;
        }

        v8 = 0;
        v6 = 0;
        v7 = 0;
        *(a2 + 24) = PathElementCount;
LABEL_55:
        *(a2 + 28) = 0;
        return v6 | v7 | v8;
      }

      if ((*(a1 + 104) & 1) != 0 || *(a1 + 105) == 1)
      {
        v6 = 0;
        v7 = 0;
        *(a2 + 24) = v13;
        v8 = 1;
        *(a2 + 28) = 1;
        return v6 | v7 | v8;
      }

      if (PathElementCount <= v13)
      {
        v7 = 0;
        v6 = 0x100000000;
        v8 = 1;
        return v6 | v7 | v8;
      }
    }

    v8 = 0;
    v6 = 0;
    v7 = 0;
    *(a2 + 24) = v13;
    goto LABEL_55;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a2 + 28);
  return v6 | v7 | v8;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_MakePathExpressionEvalImpl(char *a1, pxrInternal__aapl__pxrReserved__::SdfPathExpression *this, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (*(this + 3) == *(this + 4) && pxrInternal__aapl__pxrReserved__::SdfPathExpression::IsAbsolute(this))
  {
    v18 = a1;
    v19 = &v15;
    __p[0] = this;
    pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v14);
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::Walk(this, &v18, sub_29A3A505C, __p, sub_29A3A515C, a3, a4);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v9 = v14;
    v10 = atomic_load((v8 + 144));
    v11 = v9 >= v10 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v14, v8);
    pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v14);
  }

  else
  {
    v18 = "sdf/pathExpressionEval.cpp";
    v19 = "Sdf_MakePathExpressionEvalImpl";
    v20 = 745;
    v21 = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_MakePathExpressionEvalImpl(Sdf_PathExpressionEvalBase &, const SdfPathExpression &, TfFunctionRef<void (const SdfPathExpression::PathPattern &)>)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(__p, this);
    if (v17 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Cannot build evaluator for incomplete SdfPathExpression; must contain only absolute paths and no expression references: <%s>", v12);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v11;
}

void sub_29A3A505C(const void ***a1, int a2, int a3)
{
  if ((a2 - 1) < 4)
  {
    if (a3 == 2)
    {
      if (a2 == 4)
      {
        v8 = *a1;
        LODWORD(v9[0]) = 1;
        sub_29A00D250(v8, v9);
      }

      v6 = *a1;
      v7 = 3;
    }

    else
    {
      if (a3 != 1)
      {
        return;
      }

      v4 = *a1;
      if ((a2 - 3) >= 2)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }

      LODWORD(v9[0]) = v5;
      sub_29A00D250(v4, v9);
      v6 = *a1;
      v7 = 2;
    }

    goto LABEL_15;
  }

  if (a2 == 5)
  {
    v9[0] = "sdf/pathExpressionEval.cpp";
    v9[1] = "operator()";
    v9[2] = 796;
    v9[3] = "auto pxrInternal__aapl__pxrReserved__::Sdf_MakePathExpressionEvalImpl(Sdf_PathExpressionEvalBase &, const SdfPathExpression &, TfFunctionRef<void (const SdfPathExpression::PathPattern &)>)::(anonymous class)::operator()(Expr::Op, int) const";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Cannot build evaluator for incomplete SdfPathExpression");
  }

  else if (!a2 && a3 == 1)
  {
    v6 = *a1;
    v7 = 1;
LABEL_15:
    LODWORD(v9[0]) = v7;
    sub_29A00D250(v6, v9);
  }
}

void sub_29A3A515C(pxrInternal__aapl__pxrReserved__::SdfPathExpression **a1)
{
  v4[0] = "sdf/pathExpressionEval.cpp";
  v4[1] = "operator()";
  v4[2] = 806;
  v4[3] = "auto pxrInternal__aapl__pxrReserved__::Sdf_MakePathExpressionEvalImpl(Sdf_PathExpressionEvalBase &, const SdfPathExpression &, TfFunctionRef<void (const SdfPathExpression::PathPattern &)>)::(anonymous class)::operator()(const Expr::ExpressionReference &) const";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(__p, *a1);
  if (v3 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unexpected reference in path expression: <%s>", v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3A51F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3A520C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A08E058(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = (v9 + 48 * v3);
  *&v18 = v17;
  *(&v18 + 1) = v9 + 48 * v8;
  pxrInternal__aapl__pxrReserved__::ArchRegex::ArchRegex(v17, a2, *a3);
  *&v18 = v17 + 48;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  sub_29A3A5344(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A3A53C8(&v16);
  return v15;
}

void sub_29A3A5330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3A53C8(va);
  _Unwind_Resume(a1);
}

void sub_29A3A5344(uint64_t a1, pxrInternal__aapl__pxrReserved__::ArchRegex *a2, pxrInternal__aapl__pxrReserved__::ArchRegex *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 3);
      *(a4 + 8) = v7;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      v6 = (v6 + 48);
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex(v5);
      v5 = (v8 + 48);
    }
  }
}

uint64_t sub_29A3A53C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_FreeList::Pop(uint64_t a1)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
  *a1 = *result;
  --*(a1 + 8);
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_FreeList::Push(uint64_t a1, int a2)
{
  v4 = a2;
  ++*(a1 + 8);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(&v4);
  *result = *a1;
  *a1 = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_PoolSpan::Alloc(int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = v2 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v4, v1, v2);
  return v4;
}

int *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_RegionState::_RegionState(int *result, int a2, int a3)
{
  *result = a2 | (a3 << 8);
  return result;
}

{
  *result = a2 | (a3 << 8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_RegionState::Reserve(_DWORD *a1, unsigned int a2)
{
  if (0x1000000 - (*a1 >> 8) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 | ((a2 + (*a1 >> 8)) << 8);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Allocate()
{
  v0 = *off_2A1B71B08();
  if (!v0)
  {
    if ((*off_2A1B71B38() & 1) == 0)
    {
      sub_29B29CCA4();
    }

    v0 = off_2A1B71B20();
    *v4 = v0;
  }

  v5 = *v0;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v5))
  {
    *v0 = *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(v0);
    --*(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 20);
    if (v1 == *(v0 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_TakeSharedFreeList();
    }

    v2 = *(v0 + 16);
    *(v0 + 20) = v1 + 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6, v2, v1);
    return v6;
  }

  return v5;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_TakeSharedFreeList(_OWORD *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_sharedFreeLists);
  if (!v2)
  {
    v2 = sub_29A3AAC40(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_sharedFreeLists);
  }

  return sub_29A3AAF40(v2, a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_ReserveSpan(_DWORD *a1, unint64_t a2, char *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState;
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState)
  {
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState, &v4, 0xFFFFFFFF);
    if (!v4)
    {
      qword_2A14F6C08 = pxrInternal__aapl__pxrReserved__::Sdf_PoolReserveRegion(0x18000000, a2);
      v4 = 257;
      atomic_store(0x101u, &pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState);
    }
  }

  while (1)
  {
    while (v4 == -1)
    {
      sched_yield();
      v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState;
    }

    v5 = v4 + 0x400000;
    v6 = v4 >= 0xFFC00000 ? -1 : v4 + 0x400000;
    v7 = v4;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState, &v7, v6);
    if (v7 == v4)
    {
      break;
    }

    v4 = v7;
  }

  if (v6 == -1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionStarts[v4 + 1] = pxrInternal__aapl__pxrReserved__::Sdf_PoolReserveRegion(0x18000000, a2);
    v5 = (v4 + 1) | 0x100;
    atomic_store(v5, &pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionState);
  }

  *a1 = v4;
  a1[1] = v4 >> 8;
  if (v4 == v5)
  {
    v8 = v5 >> 8;
  }

  else
  {
    v8 = 0xFFFFFF;
  }

  a1[2] = v8;
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionStarts[v4];

  return pxrInternal__aapl__pxrReserved__::Sdf_PoolCommitRange((v9 + 24 * (v4 >> 8)), (v9 + (24 * v8)), a3);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Free()
{
  v1 = *off_2A1B71B08();
  if (!v1)
  {
    if ((*off_2A1B71B38() & 1) == 0)
    {
      sub_29B29CCA4();
    }

    v1 = off_2A1B71B20();
    *v3 = v1;
  }

  v4 = v0;
  ++*(v1 + 8);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(&v4);
  *result = *v1;
  *v1 = v4;
  if (*(v1 + 8) >= 0x4000uLL)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_ShareFreeList();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_ShareFreeList(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_sharedFreeLists);
  if (!v2)
  {
    v2 = sub_29A3AAC40(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_sharedFreeLists);
  }

  v3 = v2[1];
  add = atomic_fetch_add((v3 + 128), 1uLL);
  result = sub_29A17282C((v3 + 40 * ((3 * add) & 7) + 384), a1, add, v2, sub_29A3AB108);
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_GetHandle(uint64_t a1)
{
  if (a1)
  {
    v1 = &qword_2A14F6C08;
    v2 = 1;
    while (1)
    {
      v3 = a1 - *v1;
      if (v3 >> 27 < 3)
      {
        break;
      }

      ++v2;
      ++v1;
      if (v2 == 257)
      {
        goto LABEL_5;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5, v2, v3 / 0x18);
  }

  else
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5);
  }

  return v5;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_FreeList::Pop(uint64_t a1)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a1);
  *a1 = *result;
  --*(a1 + 8);
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_FreeList::Push(uint64_t a1, int a2)
{
  v4 = a2;
  ++*(a1 + 8);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(&v4);
  *result = *a1;
  *a1 = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_PoolSpan::Alloc(int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = v2 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v4, v1, v2);
  return v4;
}

int *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_RegionState::_RegionState(int *result, int a2, int a3)
{
  *result = a2 | (a3 << 8);
  return result;
}

{
  *result = a2 | (a3 << 8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_RegionState::Reserve(_DWORD *a1, unsigned int a2)
{
  if (0x1000000 - (*a1 >> 8) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 | ((a2 + (*a1 >> 8)) << 8);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate()
{
  v0 = *off_2A1B71B50();
  if (!v0)
  {
    if ((*off_2A1B71B80() & 1) == 0)
    {
      sub_29B29CCE0();
    }

    v0 = off_2A1B71B68();
    *v4 = v0;
  }

  v5 = *v0;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5))
  {
    *v0 = *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(v0);
    --*(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 20);
    if (v1 == *(v0 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_TakeSharedFreeList();
    }

    v2 = *(v0 + 16);
    *(v0 + 20) = v1 + 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6, v2, v1);
    return v6;
  }

  return v5;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_TakeSharedFreeList(_OWORD *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_sharedFreeLists);
  if (!v2)
  {
    v2 = sub_29A3AB114(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_sharedFreeLists);
  }

  return sub_29A3AAF40(v2, a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_ReserveSpan(_DWORD *a1, unint64_t a2, char *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState;
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState)
  {
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState, &v4, 0xFFFFFFFF);
    if (!v4)
    {
      qword_2A14F7420 = pxrInternal__aapl__pxrReserved__::Sdf_PoolReserveRegion(0x18000000, a2);
      v4 = 257;
      atomic_store(0x101u, &pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState);
    }
  }

  while (1)
  {
    while (v4 == -1)
    {
      sched_yield();
      v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState;
    }

    v5 = v4 + 0x400000;
    v6 = v4 >= 0xFFC00000 ? -1 : v4 + 0x400000;
    v7 = v4;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState, &v7, v6);
    if (v7 == v4)
    {
      break;
    }

    v4 = v7;
  }

  if (v6 == -1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionStarts[v4 + 1] = pxrInternal__aapl__pxrReserved__::Sdf_PoolReserveRegion(0x18000000, a2);
    v5 = (v4 + 1) | 0x100;
    atomic_store(v5, &pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionState);
  }

  *a1 = v4;
  a1[1] = v4 >> 8;
  if (v4 == v5)
  {
    v8 = v5 >> 8;
  }

  else
  {
    v8 = 0xFFFFFF;
  }

  a1[2] = v8;
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionStarts[v4];

  return pxrInternal__aapl__pxrReserved__::Sdf_PoolCommitRange((v9 + 24 * (v4 >> 8)), (v9 + (24 * v8)), a3);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Free()
{
  v1 = *off_2A1B71B50();
  if (!v1)
  {
    if ((*off_2A1B71B80() & 1) == 0)
    {
      sub_29B29CCE0();
    }

    v1 = off_2A1B71B68();
    *v3 = v1;
  }

  v4 = v0;
  ++*(v1 + 8);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(&v4);
  *result = *v1;
  *v1 = v4;
  if (*(v1 + 8) >= 0x4000uLL)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_ShareFreeList();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_ShareFreeList(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_sharedFreeLists);
  if (!v2)
  {
    v2 = sub_29A3AB114(&pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_sharedFreeLists);
  }

  v3 = v2[1];
  add = atomic_fetch_add((v3 + 128), 1uLL);
  result = sub_29A17282C((v3 + 40 * ((3 * add) & 7) + 384), a1, add, v2, sub_29A3AB39C);
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_GetHandle(uint64_t a1)
{
  if (a1)
  {
    v1 = &qword_2A14F7420;
    v2 = 1;
    while (1)
    {
      v3 = a1 - *v1;
      if (v3 >> 27 < 3)
      {
        break;
      }

      ++v2;
      ++v1;
      if (v2 == 257)
      {
        goto LABEL_5;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v5, v2, v3 / 0x18);
  }

  else
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v5);
  }

  return v5;
}

void pxrInternal__aapl__pxrReserved__::Sdf_PrimPartPathNode::operator delete(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(a1);
  v2 = *off_2A1B71B08();
  if (!v2)
  {
    if ((*off_2A1B71B38() & 1) == 0)
    {
      sub_29B29CCA4();
    }

    v2 = off_2A1B71B20();
    *v3 = v2;
  }

  v4 = v1;
  ++*(v2 + 8);
  *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(&v4) = *v2;
  *v2 = v4;
  if (*(v2 + 8) >= 0x4000uLL)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_ShareFreeList();
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PropPartPathNode::operator delete(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(a1);
  v2 = *off_2A1B71B50();
  if (!v2)
  {
    if ((*off_2A1B71B80() & 1) == 0)
    {
      sub_29B29CCE0();
    }

    v2 = off_2A1B71B68();
    *v3 = v2;
  }

  v4 = v1;
  ++*(v2 + 8);
  *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(&v4) = *v2;
  *v2 = v4;
  if (*(v2 + 8) >= 0x4000uLL)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_ShareFreeList();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetAbsoluteRootNode(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  v1 = atomic_load(&qword_2A173FA40);
  if (!v1)
  {
    sub_29A3AB3A8();
  }

  return *v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetRelativeRootNode(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  v1 = atomic_load(&qword_2A173FA48);
  if (!v1)
  {
    sub_29A3AB444();
  }

  return *v1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrim@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v9 = atomic_load(&qword_2A173FA50);
  if (!v9)
  {
    v9 = sub_29A3AB4DC();
  }

  v10 = v9 + 88 * ((((0x1E3779B97F4A7C55 * ((*a2 & 0xFFFFFFFFFFFFFFF8) + (((*a2 & 0xFFFFFFFFFFFFFFF8) + a1 + ((*a2 & 0xFFFFFFFFFFFFFFF8) + a1) * ((*a2 & 0xFFFFFFFFFFFFFFF8) + a1)) >> 1))) >> 32) >> 24) & 0x7F);
  sub_29A0EB5BC(&v47, v10 + 80);
  v11 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = bswap64(0x9E3779B97F4A7C55 * ((v11 & 0xFFFFFFFFFFFFFFF8) + (((v11 & 0xFFFFFFFFFFFFFFF8) + a1 + ((v11 & 0xFFFFFFFFFFFFFFF8) + a1) * ((v11 & 0xFFFFFFFFFFFFFFF8) + a1)) >> 1)));
  v13 = *v10;
  v14 = *(v10 + 32);
  v15 = v12 & *v10;
  v16 = v14 + 32 * v15;
  if (*(v16 + 4) < 0)
  {
    LOWORD(v17) = 0;
    while (1)
    {
LABEL_16:
      if (v17 > 0x2000 || (*(v10 + 72) & 1) != 0 || (v19 = *(v10 + 48), v19 >= *(v10 + 56)))
      {
        v23 = sub_29A10A428(v10);
        sub_29A3AB838(v10, v23);
        *(v10 + 72) = 0;
      }

      else
      {
        if (*(v10 + 73) != 1 || (*(v10 + 73) = 0, v20 = *(v10 + 64), v20 == 0.0) || ((v21 = *(v10 + 40)) == 0 ? (v22 = 0.0) : (v22 = v19 / v21), v22 >= v20))
        {
          v28 = (v14 + 32 * v15);
          v29 = *(v28 + 2);
          if (v29 == 0xFFFF)
          {
            *(v28 + 1) = a1;
            *(v28 + 2) = v11;
            v28[6] = 0;
            *v28 = v12;
            *(v28 + 2) = v17;
          }

          else
          {
            v31 = *(v28 + 1);
            v30 = *(v28 + 2);
            *(v28 + 1) = a1;
            *(v28 + 2) = v11;
            v32 = v28[6];
            v28[6] = 0;
            *(v28 + 2) = v17;
            v33 = *v28;
            *v28 = v12;
            v34 = (v15 + 1) & v13;
            v35 = v29 + 1;
            v36 = *(v10 + 32);
            v37 = (v36 + 32 * v34);
            for (i = *(v37 + 2); i != 0xFFFF; i = *(v37 + 2))
            {
              if (v35 <= i)
              {
                i = v35;
              }

              else
              {
                if (v35 > 0x2000)
                {
                  *(v10 + 72) = 1;
                }

                v39 = *(v37 + 1);
                v40 = *(v37 + 2);
                *(v37 + 1) = v31;
                *(v37 + 2) = v30;
                v41 = v37[6];
                v37[6] = v32;
                *(v37 + 2) = v35;
                v42 = *v37;
                *v37 = v33;
                v36 = *(v10 + 32);
                v32 = v41;
                v30 = v40;
                v31 = v39;
                v33 = v42;
              }

              v34 = (v34 + 1) & v13;
              v35 = i + 1;
              v37 = (v36 + 32 * v34);
            }

            *(v37 + 1) = v31;
            *(v37 + 2) = v30;
            v37[6] = v32;
            *v37 = v33;
            *(v37 + 2) = v35;
          }

          *(v10 + 48) = v19 + 1;
          v43 = *(v10 + 32);
          if (a4(a3))
          {
            goto LABEL_49;
          }

          sub_29A3ABA84(v10, v43 + 32 * v15);
          result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
          goto LABEL_50;
        }

        v24 = *(v10 + 68);
        v25 = vcvtps_u32_f32((v19 + 1) / v24);
        v26 = vcvtps_u32_f32(v19 / v24);
        if (v26 <= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        sub_29A3AB838(v10, v27);
      }

      LOWORD(v17) = 0;
      v13 = *v10;
      v14 = *(v10 + 32);
      v15 = *v10 & v12;
      if ((*(v14 + 32 * v15 + 4) & 0x80000000) == 0)
      {
        LOWORD(v17) = 0;
        do
        {
          v17 = (v17 + 1);
          v15 = (v15 + 1) & v13;
        }

        while (v17 <= *(v14 + 32 * v15 + 4));
      }
    }
  }

  LOWORD(v17) = 0;
  while (*(v16 + 8) != a1 || (v11 ^ *(v16 + 16)) >= 8)
  {
    v17 = (v17 + 1);
    v15 = (v15 + 1) & v13;
    v16 = v14 + 32 * v15;
    if (v17 > *(v16 + 4))
    {
      goto LABEL_16;
    }
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(v16 + 24);
  if ((atomic_fetch_add((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(&v48) + 8), 1u) & 0x7FFFFFFF) == 0)
  {
LABEL_49:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Allocate();
  }

  v48 = *(v16 + 24);
  *a5 = v48;
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v48);
LABEL_50:
  v45 = v47;
  if (v47)
  {
    __dmb(0xBu);
    *v45 = 0;
  }

  return result;
}

void sub_29A3A65FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (a10)
  {
    __dmb(0xBu);
    *a10 = 0;
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrimProperty@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _DWORD *a4@<X8>)
{
  v8 = atomic_load(&qword_2A173FA58);
  if (!v8)
  {
    v8 = sub_29A3ABBE4();
  }

  v16[0] = 0;
  v16[1] = a1;
  v17 = 0;
  v9 = (v8 + 88 * ((((0x1E3779B97F4A7C55 * ((*a1 & 0xFFFFFFFFFFFFFFF8) + (((*a1 & 0xFFFFFFFFFFFFFFF8 | 1) * (*a1 & 0xFFFFFFFFFFFFFFF8)) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v15, (v9 + 10));
  v10 = sub_29A3ABED4(v9, v16);
  v11 = v10;
  if (v12)
  {
    if (a3(a2))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate();
    }

    sub_29A3ABA84(v9, v11);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4);
  }

  else
  {
    v18 = *(v10 + 24);
    *a4 = v18;
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  }

  v14 = v15;
  if (v15)
  {
    __dmb(0xBu);
    *v14 = 0;
  }

  return result;
}

void sub_29A3A6780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrimVariantSelection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, _DWORD *a6@<X8>)
{
  v12 = atomic_load(&qword_2A173FA60);
  if (!v12)
  {
    v12 = sub_29A3AC398();
  }

  sub_29A3AA17C(&v41, a2, a3);
  v13 = (v42 & 0xFFFFFFFFFFFFFFF8) + (v41 & 0xFFFFFFFFFFFFFFF8) + (((v41 & 0xFFFFFFFFFFFFFFF8) + a1 + ((v41 & 0xFFFFFFFFFFFFFFF8) + a1) * ((v41 & 0xFFFFFFFFFFFFFFF8) + a1)) >> 1);
  v14 = v12 + 88 * ((((0x1E3779B97F4A7C55 * ((v42 & 0xFFFFFFFFFFFFFFF8) + ((v13 + v13 * v13) >> 1))) >> 32) >> 24) & 0x7F);
  sub_29A0EB5BC(&v43, v14 + 80);
  v44 = a1;
  sub_29A3ACAE4(&v45, &v41);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_29A3AC72C(&v48, &v44, &v45);
  v15 = bswap64(0x9E3779B97F4A7C55 * v48);
  v16 = *(v14 + 32);
  v17 = v15 & *v14;
  v18 = v16 + 40 * v17;
  if (*(v18 + 4) < 0)
  {
    LOWORD(v19) = 0;
    while (1)
    {
LABEL_14:
      if (v19 > 0x2000 || (*(v14 + 72) & 1) != 0 || (v21 = *(v14 + 48), v21 >= *(v14 + 56)))
      {
        v25 = sub_29A10A428(v14);
        sub_29A3AC7A8(v14, v25);
        *(v14 + 72) = 0;
      }

      else
      {
        if (*(v14 + 73) != 1 || (*(v14 + 73) = 0, v22 = *(v14 + 64), v22 == 0.0) || ((v23 = *(v14 + 40)) == 0 ? (v24 = 0.0) : (v24 = v21 / v23), v24 >= v22))
        {
          v30 = v16 + 40 * v17;
          if (*(v30 + 4) == -1)
          {
            *(v30 + 8) = v44;
            *(v30 + 16) = v45;
            v45 = 0;
            *(v30 + 24) = v46;
            v46 = 0;
            *(v30 + 32) = v47;
            *v30 = v15;
            *(v30 + 4) = v19;
          }

          else
          {
            v50 = v19;
            LODWORD(v48) = v15;
            sub_29A3AC9AC(v30, &v50, &v48, &v44);
            v31 = *v14;
            v32 = *v14 & (v17 + 1);
            v33 = ++v50;
            v34 = *(v14 + 32);
            v35 = v34 + 40 * v32;
            for (i = *(v35 + 4); i != 0xFFFF; i = *(v35 + 4))
            {
              if (v33 > i)
              {
                if (v33 > 0x2000)
                {
                  *(v14 + 72) = 1;
                }

                sub_29A3AC9AC(v35, &v50, &v48, &v44);
                v31 = *v14;
                v33 = v50;
                v34 = *(v14 + 32);
              }

              v32 = v31 & (v32 + 1);
              v50 = ++v33;
              v35 = v34 + 40 * v32;
            }

            v37 = v48;
            *(v35 + 8) = v44;
            *(v35 + 16) = v45;
            *(v35 + 24) = v46;
            v45 = 0;
            v46 = 0;
            *(v35 + 32) = v47;
            *v35 = v37;
            *(v35 + 4) = v33;
            v21 = *(v14 + 48);
          }

          *(v14 + 48) = v21 + 1;
          v18 = *(v14 + 32) + 40 * v17;
          v38 = 1;
          goto LABEL_42;
        }

        v26 = *(v14 + 68);
        v27 = vcvtps_u32_f32((v21 + 1) / v26);
        v28 = vcvtps_u32_f32(v21 / v26);
        if (v28 <= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        sub_29A3AC7A8(v14, v29);
      }

      LOWORD(v19) = 0;
      v16 = *(v14 + 32);
      v17 = *v14 & v15;
      if ((*(v16 + 40 * v17 + 4) & 0x80000000) == 0)
      {
        LOWORD(v19) = 0;
        do
        {
          v19 = (v19 + 1);
          v17 = (v17 + 1) & *v14;
        }

        while (v19 <= *(v16 + 40 * v17 + 4));
      }
    }
  }

  LOWORD(v19) = 0;
  while (*(v18 + 8) != v44 || (*(v18 + 16) ^ v45) > 7 || (*(v18 + 24) ^ v46) >= 8)
  {
    v19 = (v19 + 1);
    v17 = (v17 + 1) & *v14;
    v18 = v16 + 40 * v17;
    if (v19 > *(v18 + 4))
    {
      goto LABEL_14;
    }
  }

  v38 = 0;
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_42:
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v38)
  {
    if ((a5(a4) & 1) == 0)
    {
      sub_29A3ACB40(v14, v18);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a6);
      goto LABEL_50;
    }

LABEL_49:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Allocate();
  }

  LODWORD(v44) = *(v18 + 32);
  if ((atomic_fetch_add((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(&v44) + 8), 1u) & 0x7FFFFFFF) == 0)
  {
    goto LABEL_49;
  }

  LODWORD(v44) = *(v18 + 32);
  *a6 = v44;
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v44);
LABEL_50:
  v40 = v43;
  if (v43)
  {
    __dmb(0xBu);
    *v40 = 0;
  }

  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A3A6C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    __dmb(0xBu);
    *a12 = 0;
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_29A3A6CF0(void *result)
{
  v1 = result[1];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateTarget@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v10 = atomic_load(&qword_2A173FA68);
  if (!v10)
  {
    v10 = sub_29A3ACD14();
  }

  v20[0] = a1;
  v20[1] = a2;
  v21 = 0;
  v11 = *a2;
  v12 = v11 + a1 + (v11 + a1) * (v11 + a1);
  v13 = (v10 + 88 * ((((0x1E3779B97F4A7C55 * (a2[1] + ((a2[1] + v11 + (v12 >> 1) + (a2[1] + v11 + (v12 >> 1)) * (a2[1] + v11 + (v12 >> 1))) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v19, (v13 + 20));
  v14 = sub_29A3AD138(v13, v20);
  v15 = v14;
  if (v16)
  {
    if (a4(a3))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate();
    }

    sub_29A3AD7E0(v13, v15);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5);
  }

  else
  {
    v22 = *(v14 + 24);
    *a5 = v22;
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  }

  v18 = v19;
  if (v19)
  {
    __dmb(0xBu);
    *v18 = 0;
  }

  return result;
}

void sub_29A3A6E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateRelationalAttribute@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v10 = atomic_load(&qword_2A173FA70);
  if (!v10)
  {
    v10 = sub_29A3AD994();
  }

  v18[0] = a1;
  v18[1] = a2;
  v19 = 0;
  v11 = (v10 + 88 * ((((0x1E3779B97F4A7C55 * ((*a2 & 0xFFFFFFFFFFFFFFF8) + (((*a2 & 0xFFFFFFFFFFFFFFF8) + a1 + ((*a2 & 0xFFFFFFFFFFFFFFF8) + a1) * ((*a2 & 0xFFFFFFFFFFFFFFF8) + a1)) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v17, (v11 + 10));
  v12 = sub_29A3ABED4(v11, v18);
  v13 = v12;
  if (v14)
  {
    if (a4(a3))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate();
    }

    sub_29A3ABA84(v11, v13);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5);
  }

  else
  {
    v20 = *(v12 + 24);
    *a5 = v20;
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  }

  v16 = v17;
  if (v17)
  {
    __dmb(0xBu);
    *v16 = 0;
  }

  return result;
}

void sub_29A3A6FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateMapper@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v10 = atomic_load(&qword_2A173FA78);
  if (!v10)
  {
    v10 = sub_29A3ADAF0();
  }

  v20[0] = a1;
  v20[1] = a2;
  v21 = 0;
  v11 = *a2;
  v12 = v11 + a1 + (v11 + a1) * (v11 + a1);
  v13 = (v10 + 88 * ((((0x1E3779B97F4A7C55 * (a2[1] + ((a2[1] + v11 + (v12 >> 1) + (a2[1] + v11 + (v12 >> 1)) * (a2[1] + v11 + (v12 >> 1))) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v19, (v13 + 20));
  v14 = sub_29A3AD138(v13, v20);
  v15 = v14;
  if (v16)
  {
    if (a4(a3))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate();
    }

    sub_29A3AD7E0(v13, v15);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5);
  }

  else
  {
    v22 = *(v14 + 24);
    *a5 = v22;
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  }

  v18 = v19;
  if (v19)
  {
    __dmb(0xBu);
    *v18 = 0;
  }

  return result;
}

void sub_29A3A710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateMapperArg@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v10 = atomic_load(&qword_2A173FA80);
  if (!v10)
  {
    v10 = sub_29A3ADC60();
  }

  v18[0] = a1;
  v18[1] = a2;
  v19 = 0;
  v11 = (v10 + 88 * ((((0x1E3779B97F4A7C55 * ((*a2 & 0xFFFFFFFFFFFFFFF8) + (((*a2 & 0xFFFFFFFFFFFFFFF8) + a1 + ((*a2 & 0xFFFFFFFFFFFFFFF8) + a1) * ((*a2 & 0xFFFFFFFFFFFFFFF8) + a1)) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v17, (v11 + 10));
  v12 = sub_29A3ABED4(v11, v18);
  v13 = v12;
  if (v14)
  {
    if (a4(a3))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate();
    }

    sub_29A3ABA84(v11, v13);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5);
  }

  else
  {
    v20 = *(v12 + 24);
    *a5 = v20;
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  }

  v16 = v17;
  if (v17)
  {
    __dmb(0xBu);
    *v16 = 0;
  }

  return result;
}

void sub_29A3A725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateExpression@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, _DWORD *a4@<X8>)
{
  v8 = atomic_load(&qword_2A173FA88);
  if (!v8)
  {
    v8 = sub_29A3ADDBC();
  }

  v9 = v8 + 88 * ((((0x1E3779B97F4A7C55 * a1) >> 32) >> 24) & 0x7F);
  sub_29A0EB5BC(&v42, v9 + 80);
  v10 = bswap64(0x9E3779B97F4A7C55 * a1);
  v11 = *v9;
  v12 = *(v9 + 32);
  v13 = *v9 & v10;
  v14 = v12 + 24 * v13;
  if (*(v14 + 4) < 0)
  {
    LOWORD(v15) = 0;
    while (1)
    {
LABEL_9:
      if (v15 > 0x2000 || (*(v9 + 72) & 1) != 0 || (v16 = *(v9 + 48), v16 >= *(v9 + 56)))
      {
        v20 = sub_29A10A428(v9);
        sub_29A3AE0E4(v9, v20);
        *(v9 + 72) = 0;
      }

      else
      {
        if (*(v9 + 73) != 1 || (*(v9 + 73) = 0, v17 = *(v9 + 64), v17 == 0.0) || ((v18 = *(v9 + 40)) == 0 ? (v19 = 0.0) : (v19 = v16 / v18), v19 >= v17))
        {
          v25 = (v12 + 24 * v13);
          v26 = *(v25 + 2);
          if (v26 == 0xFFFF)
          {
            *(v25 + 1) = a1;
            v25[4] = 0;
            *v25 = v10;
            *(v25 + 2) = v15;
          }

          else
          {
            v27 = *(v25 + 1);
            *(v25 + 1) = a1;
            v28 = v25[4];
            v25[4] = 0;
            *(v25 + 2) = v15;
            v29 = *v25;
            *v25 = v10;
            v30 = (v13 + 1) & v11;
            v31 = v26 + 1;
            v32 = *(v9 + 32);
            v33 = (v32 + 24 * v30);
            v34 = v33 + 1;
            for (i = *(v33 + 2); i != 0xFFFF; i = *(v33 + 2))
            {
              if (v31 <= i)
              {
                i = v31;
              }

              else
              {
                if (v31 > 0x2000)
                {
                  *(v9 + 72) = 1;
                }

                v36 = *(v33 + 1);
                *(v33 + 1) = v27;
                v37 = v33[4];
                v33[4] = v28;
                *v34 = v31;
                v38 = *v33;
                *v33 = v29;
                v32 = *(v9 + 32);
                v28 = v37;
                v27 = v36;
                v29 = v38;
              }

              v30 = (v30 + 1) & v11;
              v31 = i + 1;
              v33 = (v32 + 24 * v30);
              v34 = v33 + 1;
            }

            *(v33 + 1) = v27;
            v33[4] = v28;
            *v33 = v29;
            *(v33 + 2) = v31;
          }

          *(v9 + 48) = v16 + 1;
          v39 = *(v9 + 32);
          if (a3(a2))
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Allocate();
          }

          sub_29A3AE27C(v9, v39 + 24 * v13);
          result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4);
          goto LABEL_40;
        }

        v21 = *(v9 + 68);
        v22 = vcvtps_u32_f32((v16 + 1) / v21);
        v23 = vcvtps_u32_f32(v16 / v21);
        if (v23 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        sub_29A3AE0E4(v9, v24);
      }

      LOWORD(v15) = 0;
      v11 = *v9;
      v12 = *(v9 + 32);
      v13 = *v9 & v10;
      if ((*(v12 + 24 * v13 + 4) & 0x80000000) == 0)
      {
        LOWORD(v15) = 0;
        do
        {
          v15 = (v15 + 1);
          v13 = (v13 + 1) & v11;
        }

        while (v15 <= *(v12 + 24 * v13 + 4));
      }
    }
  }

  LOWORD(v15) = 0;
  while (*(v14 + 8) != a1)
  {
    v15 = (v15 + 1);
    v13 = (v13 + 1) & v11;
    v14 = v12 + 24 * v13;
    if (v15 > *(v14 + 4))
    {
      goto LABEL_9;
    }
  }

  v43 = *(v14 + 16);
  *a4 = v43;
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43);
LABEL_40:
  v41 = v42;
  if (v42)
  {
    __dmb(0xBu);
    *v41 = 0;
  }

  return result;
}

void sub_29A3A761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (a10)
  {
    __dmb(0xBu);
    *a10 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNode::Sdf_PathNode(uint64_t this, char a2)
{
  *this = 0;
  *(this + 8) = 1;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  return this;
}

{
  *this = 0;
  *(this + 8) = 1;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_GetEmptyVariantSelection(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((atomic_load_explicit(&qword_2A1741A98, memory_order_acquire) & 1) == 0)
  {
    sub_29B29CD1C();
  }

  return &unk_2A1741AC8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetPathToken(unint64_t this, std::string *a2, const pxrInternal__aapl__pxrReserved__::Sdf_PathNode *a3)
{
  atomic_fetch_or_explicit((this + 8), 0x80000000, memory_order_relaxed);
  sub_29A0ECEEC(&v64, "Sdf", "SdfPath");
  v5 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v5)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Sdf_PathNode::GetPathToken", 0);
  }

  else
  {
    v6 = 0;
  }

  v62 = v6;
  v63 = v6 != 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v7 = atomic_load(&unk_2A173FA90);
  if (!v7)
  {
    v7 = sub_29A3AE33C();
  }

  v8 = operator new(0x20uLL);
  v8[2] = 0;
  v8[1] = 0;
  *v8 = v8 + 1;
  *(v8 + 24) = 0;
  v66 = v8;
  v9 = operator new(0x20uLL);
  v9->__vftable = &unk_2A204C300;
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v8;
  v66 = 0;
  sub_29A3AA1D8(&v66);
  v57 = v9;
  if (v60)
  {
    v10 = v58;
    v58 = 0;
    if (v59 == 1)
    {
LABEL_8:
      v11 = *v10;
      v12 = *v10 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v13 = v11;
        atomic_compare_exchange_strong(v10, &v13, v12);
        if (v13 == v11)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v10, 0, memory_order_relaxed) != v11)
        {
          sched_yield();
          goto LABEL_8;
        }
      }
    }

    else
    {
      atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFCLL);
    }

    v60 = 0;
  }

  v14 = 0;
  v56 = 0;
  v15 = *v7;
  __dmb(0xBu);
  while (1)
  {
    sub_29A3AE54C(&v66, v7, v15 & (this ^ (this >> 3)));
    v16 = v68 + 16;
    while (1)
    {
      v16 = *v16;
      if (v16 < 0x40)
      {
        break;
      }

      if (*(v16 + 16) == this)
      {
        goto LABEL_20;
      }
    }

    if (v16)
    {
LABEL_20:
      v17 = v14;
      goto LABEL_21;
    }

    if (!v14)
    {
      v14 = tbb::internal::allocate_via_handler_v3(0x28);
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = this;
      *(v14 + 3) = v8;
      *(v14 + 4) = v57;
      v57 = 0;
      v8 = 0;
    }

    if ((v67 & 1) == 0)
    {
      v67 = 1;
      if ((tbb::spin_rw_mutex_v3::internal_upgrade(v66) & 1) == 0)
      {
        v16 = v68 + 16;
        while (1)
        {
          v16 = *v16;
          if (v16 < 0x40)
          {
            break;
          }

          if (*(v16 + 16) == this)
          {
            if (v67 == 1)
            {
              atomic_fetch_add(v66, 3uLL);
              v67 = 0;
            }

            goto LABEL_20;
          }
        }
      }
    }

    v24 = *v7;
    __dmb(0xBu);
    if (v15 == v24)
    {
      break;
    }

    if (!sub_29A108BB8(v7, this ^ (this >> 3), v15, v24))
    {
      goto LABEL_40;
    }

LABEL_32:
    sub_29A0F845C(&v66);
    v15 = v24;
  }

  v24 = v15;
LABEL_40:
  v56 = sub_29A108650(v7, v68, v14, v24);
  v17 = 0;
  v16 = v14;
LABEL_21:
  v59 = 1;
  if (!tbb::spin_rw_mutex_v3::internal_try_acquire_writer((v16 + 8)))
  {
    sched_yield();
    v18 = 2;
    while (1)
    {
      v59 = 1;
      if (tbb::spin_rw_mutex_v3::internal_try_acquire_writer((v16 + 8)))
      {
        break;
      }

      sched_yield();
      v19 = v18 < 16;
      v18 *= 2;
      if (!v19)
      {
        v20 = v66;
        v66 = 0;
        if (v67 == 1)
        {
LABEL_26:
          v21 = *v20;
          v22 = *v20 & 0xFFFFFFFFFFFFFFFCLL;
          while (1)
          {
            v23 = v21;
            atomic_compare_exchange_strong(v20, &v23, v22);
            if (v23 == v21)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v20, 0, memory_order_relaxed) != v21)
            {
              sched_yield();
              goto LABEL_26;
            }
          }
        }

        else
        {
          atomic_fetch_add(v20, 0xFFFFFFFFFFFFFFFCLL);
        }

        sched_yield();
        v24 = *v7;
        __dmb(0xBu);
        v14 = v17;
        goto LABEL_32;
      }
    }
  }

  v58 = (v16 + 8);
  sub_29A0F845C(&v66);
  v60 = v16;
  v61 = this ^ (this >> 3);
  if (v56)
  {
    if (v56 < 8)
    {
      v30 = tbb::internal::allocate_via_handler_v3(0x17D0);
      v31 = (v30 + 16);
      v32 = 254;
      do
      {
        *(v31 - 1) = 0;
        *v31 = 3;
        v31 += 3;
        --v32;
      }

      while (v32);
      v33 = 0;
      v34 = v30 - 48;
      v35 = xmmword_29B43B8D0;
      v36 = v7 + 24;
      v37 = vdupq_n_s64(7uLL);
      v38 = vdupq_n_s64(1uLL);
      v39 = vdupq_n_s64(2uLL);
      v29 = 255;
      do
      {
        v40 = vorrq_s8(vdupq_n_s64(v33), xmmword_29B430070);
        v41 = vshlq_u64(v38, v35);
        if (vmovn_s64(vcgtq_u64(v37, v40)).u8[0])
        {
          *(v36 - 1) = v34 + 24 * v41.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v40)).i32[1])
        {
          *v36 = v34 + 24 * v41.i64[1];
        }

        v33 += 2;
        v35 = vaddq_s64(v35, v39);
        v36 += 2;
      }

      while (v33 != 8);
    }

    else
    {
      v26 = tbb::internal::allocate_via_handler_v3((24 << v56));
      v27 = 1 << v56;
      v28 = (v26 + 16);
      do
      {
        *(v28 - 1) = 0;
        *v28 = 3;
        v28 += 3;
        --v27;
      }

      while (v27);
      *&v7[8 * v56 + 8] = v26;
      v29 = (2 << v56) - 1;
    }

    __dmb(0xBu);
    *v7 = v29;
  }

  if (v17)
  {
    sub_29A3AE514(v17, v25);
  }

  if (v57)
  {
    sub_29A014BEC(v57);
  }

  v42 = v60;
  if (v60)
  {
    v43 = v58;
    v58 = 0;
    if (v59 == 1)
    {
LABEL_66:
      v44 = *v43;
      v45 = *v43 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v46 = v44;
        atomic_compare_exchange_strong(v43, &v46, v45);
        if (v46 == v44)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v43, 0, memory_order_relaxed) != v44)
        {
          sched_yield();
          goto LABEL_66;
        }
      }
    }

    else
    {
      atomic_fetch_add(v43, 0xFFFFFFFFFFFFFFFCLL);
    }

    v60 = 0;
  }

  v70 = a2;
  v47 = *(v42 + 24);
  sub_29A0EB5BC(&v66, v47 + 24);
  v48 = *(v47 + 8);
  if (!v48)
  {
    goto LABEL_80;
  }

  v49 = (v47 + 8);
  do
  {
    v50 = *(v48 + 32);
    v51 = v50 >= a2;
    v52 = v50 < a2;
    if (v51)
    {
      v49 = v48;
    }

    v48 = *(v48 + 8 * v52);
  }

  while (v48);
  if (v49 == (v47 + 8) || v49[4] > a2)
  {
LABEL_80:
    v53 = v66;
    __dmb(0xBu);
    *v53 = 0;
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_CreatePathToken(this, a2, &v69);
    sub_29A3AE760(&v66, v47 + 24);
    v49 = sub_29A3AE7D4(v47, &v70, &v70, &v69);
    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v54 = v66;
  if (v66)
  {
    __dmb(0xBu);
    *v54 = 0;
  }

  v60 = 0;
  sub_29A0F845C(&v58);
  if (v62)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v63, v62);
  }

  if (v64)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v65, v64);
  }

  return v49 + 5;
}

void sub_29A3A7C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v8 = 0;
  sub_29A0F845C(va);
  sub_29A0E9CEC(va1);
  sub_29A0E9CEC(va2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_CreatePathToken(std::string *this@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  memset(v7, 0, sizeof(v7));
  sub_29A3A822C(this, a2, v7);
  sub_29A3A8204(v7, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if ((v7[23] & 0x80000000) != 0)
  {
    operator delete(*v7);
  }
}

void sub_29A3A7DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_GetElementImpl(std::string *this@<X0>, uint64_t a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  sub_29A3A7EB0(this, v5);
  sub_29A3A8204(v5, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if ((v5[23] & 0x80000000) != 0)
  {
    operator delete(*v5);
  }
}

void sub_29A3A7E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::string *sub_29A3A7EB0(std::string *result, std::string *this)
{
  v3 = result;
  v4 = result->__r_.__value_.__s.__data_[14];
  if (v4 > 4)
  {
    if (result->__r_.__value_.__s.__data_[14] > 6u)
    {
      if (v4 != 7)
      {
        if (v4 != 8)
        {
          return result;
        }

        v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v11)
        {
          v11 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        v12 = *(v11 + 8);
        goto LABEL_25;
      }
    }

    else
    {
      if (v4 == 5)
      {
        size = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) != 0)
        {
          size = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = size;
        sub_29A3AE8F8(this, "]");
        sub_29A3AE970(&v3->__r_.__value_.__r.__words[2], this);
        v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v17 & 0x80u) != 0)
        {
          v17 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v17;
        sub_29A3AE8F8(this, "[");
        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v18)
        {
          v18 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        v19 = *(v18 + 7) & 0xFFFFFFFFFFFFFFF8;
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

        v22 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v22 & 0x80u) != 0)
        {
          v22 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v22;
        sub_29A3AE8F8(this, v20);
        v23 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v23 & 0x80u) != 0)
        {
          v23 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v23;
        v10 = ".";
LABEL_63:

        return sub_29A3AE8F8(this, v10);
      }

      if (v4 != 6)
      {
        return result;
      }
    }
  }

  else
  {
    if (result->__r_.__value_.__s.__data_[14] <= 2u)
    {
      if (v4 == 1)
      {
        v15 = result->__r_.__value_.__r.__words[2] & 0xFFFFFFFFFFFFFFF8;
        if (v15)
        {
          v10 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v10 = *v10;
          }
        }

        else
        {
          v10 = "";
        }

        v21 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v21 & 0x80u) != 0)
        {
          v21 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v21;
      }

      else
      {
        if (v4 != 2)
        {
          return result;
        }

        v5 = result->__r_.__value_.__r.__words[2];
        v6 = *v5 & 0xFFFFFFFFFFFFFFF8;
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

        v24 = v5[1] & 0xFFFFFFFFFFFFFFF8;
        if (v24)
        {
          v25 = (v24 + 16);
          if (*(v24 + 39) < 0)
          {
            v25 = *v25;
          }
        }

        else
        {
          v25 = "";
        }

        v26 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v26 & 0x80u) != 0)
        {
          v26 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v26;
        std::string::append(this, "{");
        std::string::append(this, v7);
        std::string::append(this, "=");
        std::string::append(this, v25);
        v10 = "}";
      }

      goto LABEL_63;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return result;
      }

      v8 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v8 & 0x80u) != 0)
      {
        v8 = this->__r_.__value_.__l.__size_;
      }

      this[1].__r_.__value_.__r.__words[0] = v8;
      sub_29A3AE8F8(this, "]");
      sub_29A3AE970(&v3->__r_.__value_.__r.__words[2], this);
      v9 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v9 & 0x80u) != 0)
      {
        v9 = this->__r_.__value_.__l.__size_;
      }

      this[1].__r_.__value_.__r.__words[0] = v9;
      v10 = "[";
      goto LABEL_63;
    }
  }

  v12 = result->__r_.__value_.__r.__words[2];
LABEL_25:
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  if (v13)
  {
    v14 = (v13 + 16);
    if (*(v13 + 39) < 0)
    {
      v14 = *v14;
    }
  }

  else
  {
    v14 = "";
  }

  return sub_29A3AE89C(this, v14);
}

void *sub_29A3A8204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1;
    a1 = *a1;
    v4 = *(v5 + 8);
  }

  return sub_29A3AA2D4(a2, a1 + v4, a1 + v4, a1, a1, v4);
}

std::string *sub_29A3A822C(std::string *a1, std::string *a2, std::string *this)
{
  v5 = atomic_load(&qword_2A173FA48);
  if (!v5)
  {
    sub_29A3AB444();
  }

  if (!a2 && *v5 == a1)
  {
    v6 = ".";
LABEL_38:
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    this[1].__r_.__value_.__r.__words[0] = size;

    return sub_29A3AE8F8(this, v6);
  }

  if (a1->__r_.__value_.__s.__data_[15])
  {
    result = atomic_load(&qword_2A173FA40);
    if (!result)
    {
      sub_29A3AB3A8();
    }
  }

  else
  {
    result = atomic_load(&qword_2A173FA48);
    if (!result)
    {
      sub_29A3AB444();
    }
  }

  v8 = result->__r_.__value_.__r.__words[0];
  if (a2)
  {
    v9 = a2;
    do
    {
      result = sub_29A3A7EB0(v9, this);
      v9 = v9->__r_.__value_.__r.__words[0];
    }

    while (v9);
    if (a1->__r_.__value_.__s.__data_[14] == 1)
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!result)
      {
        result = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      if ((result[2].__r_.__value_.__r.__words[0] ^ a1->__r_.__value_.__r.__words[2]) <= 7)
      {
        v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v10 & 0x80u) != 0)
        {
          v10 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v10;
        result = sub_29A3AE8F8(this, "/");
      }
    }
  }

  if (a1 && v8 != a1)
  {
    v11 = a1;
    do
    {
      v12 = v11;
      result = sub_29A3A7EB0(v11, this);
      v11 = v11->__r_.__value_.__r.__words[0];
      v13 = v12->__r_.__value_.__s.__data_[14] != 1 || v11 == 0;
      if (!v13 && v11->__r_.__value_.__s.__data_[14] == 1)
      {
        v14 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v14 & 0x80u) != 0)
        {
          v14 = this->__r_.__value_.__l.__size_;
        }

        this[1].__r_.__value_.__r.__words[0] = v14;
        result = sub_29A3AE8F8(this, "/");
      }

      if (v11)
      {
        v15 = v11 == v8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
  }

  if (a1->__r_.__value_.__s.__data_[15])
  {
    v6 = "/";
    goto LABEL_38;
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetDebugText(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this, const pxrInternal__aapl__pxrReserved__::Sdf_PathNode *a2, const pxrInternal__aapl__pxrReserved__::Sdf_PathNode *a3)
{
  v8 = 0;
  v9 = 0;
  sub_29A3A84A4(this, a2, &v8);
  if (v9)
  {
    return aPathTextExceed;
  }

  v4 = (qword_2A14F7C58 - 1);
  result = &unk_2A173FA98;
  if (qword_2A14F7C58 - 1 > &unk_2A173FA98)
  {
    v5 = &unk_2A173FA99;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
    }

    while (v5++ < v4);
  }

  qword_2A14F7C58 = &unk_2A173FA98;
  return result;
}

pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *sub_29A3A84A4(uint64_t *a1, void *a2, unint64_t *a3)
{
  v5 = atomic_load(&qword_2A173FA48);
  if (!v5)
  {
    sub_29A3AB444();
  }

  if (!a2 && *v5 == a1)
  {
    v6 = ".";
LABEL_34:
    *a3 = qword_2A14F7C58;

    return sub_29A3AECBC(a3, v6);
  }

  if (*(a1 + 15))
  {
    result = atomic_load(&qword_2A173FA40);
    if (!result)
    {
      sub_29A3AB3A8();
    }
  }

  else
  {
    result = atomic_load(&qword_2A173FA48);
    if (!result)
    {
      sub_29A3AB444();
    }
  }

  v8 = *result;
  if (a2)
  {
    v9 = a2;
    do
    {
      result = sub_29A3AE9C8(v9, a3);
      v9 = *v9;
    }

    while (v9);
    if (*(a1 + 14) == 1)
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!result)
      {
        result = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      if ((*(result + 6) ^ a1[2]) <= 7)
      {
        *a3 = qword_2A14F7C58;
        result = sub_29A3AECBC(a3, "/");
      }
    }
  }

  if (a1 && v8 != a1)
  {
    v10 = a1;
    do
    {
      v11 = v10;
      result = sub_29A3AE9C8(v10, a3);
      v10 = *v10;
      v12 = *(v11 + 14) != 1 || v10 == 0;
      if (!v12 && *(v10 + 14) == 1)
      {
        *a3 = qword_2A14F7C58;
        result = sub_29A3AECBC(a3, "/");
      }

      if (v10)
      {
        v13 = v10 == v8;
      }

      else
      {
        v13 = 1;
      }
    }

    while (!v13);
  }

  if (*(a1 + 15))
  {
    v6 = "/";
    goto LABEL_34;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(unint64_t this)
{
  v2 = atomic_load(&unk_2A173FA90);
  if (!v2)
  {
    v2 = sub_29A3AE33C();
  }

  v3 = *v2;
  __dmb(0xBu);
  while (2)
  {
    sub_29A3AE54C(&v10, v2, v3 & (this ^ (this >> 3)));
    while (1)
    {
      v4 = (v12 + 16);
      while (1)
      {
        v5 = v4;
        v4 = *v4;
        if (v4 < 0x40)
        {
          break;
        }

        if (v4[2] == this)
        {
          goto LABEL_10;
        }
      }

      if (!v4)
      {
        break;
      }

LABEL_10:
      if (v11 & 1) != 0 || (v11 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v10)))
      {
        *v5 = *v4;
        atomic_fetch_add(v2 + 65, 0xFFFFFFFFFFFFFFFFLL);
        sub_29A0F845C(&v10);
        v11 = 1;
        v10 = (v4 + 1);
        tbb::spin_rw_mutex_v3::internal_acquire_writer(v4 + 1);
        sub_29A0F845C(&v10);
        return sub_29A3AE514(v4, v8);
      }

      v6 = *v2;
      __dmb(0xBu);
      if (v3 != v6)
      {
        v7 = sub_29A108BB8(v2, this ^ (this >> 3), v3, v6);
        v3 = v6;
        if (v7)
        {
          goto LABEL_17;
        }
      }
    }

    v6 = *v2;
    __dmb(0xBu);
    if (v3 != v6 && sub_29A108BB8(v2, this ^ (this >> 3), v3, v6))
    {
LABEL_17:
      sub_29A0F845C(&v10);
      v3 = v6;
      continue;
    }

    return sub_29A0F845C(&v10);
  }
}

void sub_29A3A87F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_IsNamespacedImpl(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  v1 = *(this + 14);
  if (v1 <= 2)
  {
    if (*(this + 14))
    {
      if (v1 != 1)
      {
        if (v1 == 2)
        {
          v2 = *(this + 2);
          v4 = *(v2 + 8);
          v3 = (v2 + 8);
          if (v4)
          {
            v5 = v3;
          }

          else
          {
            v5 = *(this + 2);
          }

          goto LABEL_18;
        }

        goto LABEL_33;
      }

      goto LABEL_17;
    }

    v11 = *(this + 15);
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (v11)
    {
      if (!v5)
      {
        v5 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }
    }

    else
    {
      if (!v5)
      {
        v5 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      v5 = (v5 + 8);
    }
  }

  else
  {
    if (*(this + 14) <= 6u)
    {
      if (v1 != 3 && v1 != 6)
      {
        goto LABEL_33;
      }

LABEL_17:
      v5 = (this + 16);
      goto LABEL_18;
    }

    if (v1 == 7)
    {
      goto LABEL_17;
    }

    if (v1 != 8)
    {
LABEL_33:
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!v12)
      {
        v12 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      v5 = (v12 + 88);
      goto LABEL_18;
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v6)
    {
      v6 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    v5 = (v6 + 64);
  }

LABEL_18:
  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  if (!v8)
  {
    v8 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  }

  if ((*(v8 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = ((*(v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  return std::string::find(EmptyString, *v9, 0) != -1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_PrimPathNode::~Sdf_PrimPathNode(pxrInternal__aapl__pxrReserved__::Sdf_PrimPathNode *this)
{
  v2 = atomic_load(&qword_2A173FA50);
  if (!v2)
  {
    v2 = sub_29A3AB4DC();
  }

  v3 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = (v2 + 88 * ((((0x1E3779B97F4A7C55 * ((*(this + 2) & 0xFFFFFFFFFFFFFFF8) + (((*(this + 2) & 0xFFFFFFFFFFFFFFF8) + v3 + ((*(this + 2) & 0xFFFFFFFFFFFFFFF8) + v3) * ((*(this + 2) & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v12, (v4 + 10));
  v5 = *(this + 2);
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v4[4];
  v7 = bswap64(0x9E3779B97F4A7C55 * ((v5 & 0xFFFFFFFFFFFFFFF8) + (((v5 & 0xFFFFFFFFFFFFFFF8) + v3 + ((v5 & 0xFFFFFFFFFFFFFFF8) + v3) * ((v5 & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1))) & *v4;
  v8 = v6 + 32 * v7;
  if (*(v8 + 4) < 0)
  {
LABEL_16:
    v8 = v6 + 32 * v4[5];
  }

  else
  {
    LOWORD(v9) = 0;
    while (*(v8 + 8) != v3 || (v5 ^ *(v8 + 16)) >= 8)
    {
      v9 = (v9 + 1);
      v7 = (v7 + 1) & *v4;
      v8 = v6 + 32 * v7;
      if (v9 > *(v8 + 4))
      {
        goto LABEL_16;
      }
    }
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v6 = v4[4];
  }

  if (v8 != v6 + 32 * v4[5] && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr((v8 + 24)) == this)
  {
    sub_29A3ABA84(v4, v8);
  }

  v11 = v12;
  if (v12)
  {
    __dmb(0xBu);
    *v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

void pxrInternal__aapl__pxrReserved__::Sdf_PrimPropertyPathNode::~Sdf_PrimPropertyPathNode(pxrInternal__aapl__pxrReserved__::Sdf_PrimPropertyPathNode *this)
{
  v2 = atomic_load(&qword_2A173FA58);
  if (!v2)
  {
    v2 = sub_29A3ABBE4();
  }

  v3 = *this;
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  sub_29A3A8BE0(this, v2, &v4, this + 2);
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

uint64_t sub_29A3A8BE0(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v6 = *a3;
  v7 = (a2 + 88 * ((((0x1E3779B97F4A7C55 * ((*a4 & 0xFFFFFFFFFFFFFFF8) + (((*a4 & 0xFFFFFFFFFFFFFFF8) + *a3 + ((*a4 & 0xFFFFFFFFFFFFFFF8) + *a3) * ((*a4 & 0xFFFFFFFFFFFFFFF8) + *a3)) >> 1))) >> 32) >> 24) & 0x7F));
  result = sub_29A0EB5BC(&v16, (v7 + 10));
  v9 = *a4;
  if ((*a4 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v7[4];
  v11 = bswap64(0x9E3779B97F4A7C55 * ((v9 & 0xFFFFFFFFFFFFFFF8) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v6 + ((v9 & 0xFFFFFFFFFFFFFFF8) + v6) * ((v9 & 0xFFFFFFFFFFFFFFF8) + v6)) >> 1))) & *v7;
  v12 = v10 + 32 * v11;
  if (*(v12 + 4) < 0)
  {
LABEL_12:
    v12 = v10 + 32 * v7[5];
  }

  else
  {
    LOWORD(v13) = 0;
    while (*(v12 + 8) != v6 || (v9 ^ *(v12 + 16)) >= 8)
    {
      v13 = (v13 + 1);
      v11 = (v11 + 1) & *v7;
      v12 = v10 + 32 * v11;
      if (v13 > *(v12 + 4))
      {
        goto LABEL_12;
      }
    }
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v10 = v7[4];
  }

  if (v12 != v10 + 32 * v7[5])
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v12 + 24));
    if (result == a1)
    {
      result = sub_29A3ABA84(v7, v12);
    }
  }

  v15 = v16;
  if (v16)
  {
    __dmb(0xBu);
    *v15 = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::_GetNameImpl(pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode *this)
{
  v1 = *(this + 2);
  v3 = *(v1 + 8);
  v2 = v1 + 8;
  if (v3)
  {
    return v2;
  }

  else
  {
    return *(this + 2);
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::~Sdf_PrimVariantSelectionNode(pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode *this)
{
  v2 = atomic_load(&qword_2A173FA60);
  if (!v2)
  {
    v2 = sub_29A3AC398();
  }

  v3 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = *(this + 2);
  v5 = *v4 & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + v3 + (v5 + v3) * (v5 + v3);
  v7 = (v2 + 88 * ((((0x1E3779B97F4A7C55 * ((v4[1] & 0xFFFFFFFFFFFFFFF8) + (((v4[1] & 0xFFFFFFFFFFFFFFF8) + v5 + (v6 >> 1) + ((v4[1] & 0xFFFFFFFFFFFFFFF8) + v5 + (v6 >> 1)) * ((v4[1] & 0xFFFFFFFFFFFFFFF8) + v5 + (v6 >> 1))) >> 1))) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v18, (v7 + 10));
  v15 = v3;
  sub_29A3ACAE4(&v16, v4);
  v19 = 0;
  v20 = 0;
  sub_29A3AC72C(&v19, &v15, &v16);
  v8 = v7[4];
  v9 = *v7 & bswap64(0x9E3779B97F4A7C55 * v19);
  v10 = v8 + 40 * v9;
  if (*(v10 + 4) < 0)
  {
    v12 = v17;
LABEL_16:
    v10 = v8 + 40 * v7[5];
  }

  else
  {
    LOWORD(v11) = 0;
    v12 = v17;
    while (*(v10 + 8) != v15 || (*(v10 + 16) ^ v16) > 7 || (*(v10 + 24) ^ v17) >= 8)
    {
      v11 = (v11 + 1);
      v9 = (v9 + 1) & *v7;
      v10 = v8 + 40 * v9;
      if (v11 > *(v10 + 4))
      {
        goto LABEL_16;
      }
    }
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v10 != v7[4] + 40 * v7[5] && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr((v10 + 32)) == this)
  {
    sub_29A3ACB40(v7, v10);
  }

  v14 = v18;
  if (v18)
  {
    __dmb(0xBu);
    *v14 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

void sub_29A3A8F80(void *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B29CD8C((v2 + 8), va, va1);
  sub_299FEDEEC(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_TargetPathNode::~Sdf_TargetPathNode(pxrInternal__aapl__pxrReserved__::Sdf_TargetPathNode *this)
{
  v2 = atomic_load(&qword_2A173FA68);
  if (!v2)
  {
    v2 = sub_29A3ACD14();
  }

  v3 = *this;
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  sub_29A3A9054(this, v2, &v4, this + 4);
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

uint64_t sub_29A3A9054(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v6 = *a3;
  v7 = a4 + 1;
  v8 = *a4;
  v9 = v8 + *a3 + (v8 + *a3) * (v8 + *a3);
  v10 = a2 + 88 * ((((0x1E3779B97F4A7C55 * (a4[1] + ((a4[1] + v8 + (v9 >> 1) + (a4[1] + v8 + (v9 >> 1)) * (a4[1] + v8 + (v9 >> 1))) >> 1))) >> 32) >> 24) & 0x7F);
  sub_29A0EB5BC(&v20, v10 + 80);
  v18 = v6;
  sub_29A1E21F4(&v19, a4);
  sub_29A1E2240(&v19 + 1, v7);
  v21 = 0;
  v22 = 0;
  sub_29A3AD498(&v21, &v18, &v19);
  v11 = *(v10 + 32);
  v12 = *v10 & bswap64(0x9E3779B97F4A7C55 * v21);
  v13 = v11 + 32 * v12;
  if (*(v13 + 4) < 0)
  {
LABEL_8:
    v13 = v11 + 32 * *(v10 + 40);
  }

  else
  {
    LOWORD(v14) = 0;
    while (*(v13 + 8) != v18 || *(v13 + 16) != v19)
    {
      v14 = (v14 + 1);
      v12 = (v12 + 1) & *v10;
      v13 = v11 + 32 * v12;
      if (v14 > *(v13 + 4))
      {
        goto LABEL_8;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
  result = sub_29A1DE3A4(&v19);
  if (v13 != *(v10 + 32) + 32 * *(v10 + 40))
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v13 + 24));
    if (result == a1)
    {
      result = sub_29A3AD7E0(v10, v13);
    }
  }

  v17 = v20;
  if (v20)
  {
    __dmb(0xBu);
    *v17 = 0;
  }

  return result;
}

void sub_29A3A91E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  sub_29A3AA370((v11 + 8));
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_RelationalAttributePathNode::~Sdf_RelationalAttributePathNode(pxrInternal__aapl__pxrReserved__::Sdf_RelationalAttributePathNode *this)
{
  v2 = atomic_load(&qword_2A173FA70);
  if (!v2)
  {
    v2 = sub_29A3AD994();
  }

  v3 = *this;
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  sub_29A3A8BE0(this, v2, &v4, this + 2);
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

void pxrInternal__aapl__pxrReserved__::Sdf_MapperPathNode::~Sdf_MapperPathNode(pxrInternal__aapl__pxrReserved__::Sdf_MapperPathNode *this)
{
  v2 = atomic_load(&qword_2A173FA78);
  if (!v2)
  {
    v2 = sub_29A3ADAF0();
  }

  v3 = *this;
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  sub_29A3A9054(this, v2, &v4, this + 4);
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

void pxrInternal__aapl__pxrReserved__::Sdf_MapperArgPathNode::~Sdf_MapperArgPathNode(pxrInternal__aapl__pxrReserved__::Sdf_MapperArgPathNode *this)
{
  v2 = atomic_load(&qword_2A173FA80);
  if (!v2)
  {
    v2 = sub_29A3ADC60();
  }

  v3 = *this;
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  sub_29A3A8BE0(this, v2, &v4, this + 2);
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ExpressionPathNode::~Sdf_ExpressionPathNode(pxrInternal__aapl__pxrReserved__::Sdf_ExpressionPathNode *this)
{
  v2 = atomic_load(&qword_2A173FA88);
  if (!v2)
  {
    v2 = sub_29A3ADDBC();
  }

  v3 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = (v2 + 88 * ((((0x1E3779B97F4A7C55 * v3) >> 32) >> 24) & 0x7F));
  sub_29A0EB5BC(&v11, (v4 + 10));
  v5 = v4[4];
  v6 = *v4 & bswap64(0x9E3779B97F4A7C55 * v3);
  v7 = v5 + 24 * v6;
  if (*(v7 + 4) < 0)
  {
LABEL_9:
    v9 = v4[5];
    v7 = v5 + 24 * v9;
  }

  else
  {
    LOWORD(v8) = 0;
    while (*(v7 + 8) != v3)
    {
      v8 = (v8 + 1);
      v6 = (v6 + 1) & *v4;
      v7 = v5 + 24 * v6;
      if (v8 > *(v7 + 4))
      {
        goto LABEL_9;
      }
    }

    v9 = v4[5];
  }

  if (v7 != v5 + 24 * v9 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v7 + 16)) == this)
  {
    sub_29A3AE27C(v4, v7);
  }

  v10 = v11;
  if (v11)
  {
    __dmb(0xBu);
    *v10 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
}

void pxrInternal__aapl__pxrReserved__::Sdf_DumpPathStats(pxrInternal__aapl__pxrReserved__ *this)
{
  v19[9] = *MEMORY[0x29EDCA608];
  *__p = 0u;
  memset(v18, 0, sizeof(v18));
  *v15 = 0u;
  v16 = 0u;
  v1 = atomic_load(&qword_2A173FA40);
  if (!v1)
  {
    sub_29A3AB3A8();
  }

  sub_29A3A9894(*v1, v15);
  v2 = atomic_load(&qword_2A173FA48);
  if (!v2)
  {
    sub_29A3AB444();
  }

  sub_29A3A9894(*v2, v15);
  puts("Sdf_PathNode stats:");
  printf("\tnum node refs: %i\n", HIDWORD(v15[0]));
  printf("\tnum nodes:     %i\n", LODWORD(v15[0]));
  printf("\tsizeof(SdfPath), aka node ref:  %zu\n", 8uLL);
  printf("\tsizeof(Sdf_PathNode), aka node: %zu\n", 0x10uLL);
  v19[0] = "RootNode";
  v19[1] = "PrimNode";
  v19[2] = "PrimVariantSelectionNode";
  v19[3] = "PrimPropertyNode";
  v19[4] = "TargetNode";
  v19[5] = "MapperNode";
  v19[6] = "RelationalAttributeNode";
  v19[7] = "MapperArgNode";
  v19[8] = "ExpressionNode";
  printf("------------------------------------------------");
  puts("-- By Type");
  for (i = 0; i != 9; ++i)
  {
    printf("\t%32ss: %8zu -- %6.2f%%\n", v19[i], *(v18 + i * 8 + 8), *(v18 + i * 8 + 8) * 100.0 / SLODWORD(v15[0]));
  }

  printf("------------------------------------------------");
  puts("-- By Length");
  v4 = v15[1];
  if (v16 == v15[1])
  {
    v7 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      printf("\tnum nodes with %3zu components : %i\n", v5, v4[v5]);
      v4 = v15[1];
      v6 += v5 * *(v15[1] + v5);
      ++v5;
    }

    while (v5 < (v16 - v15[1]) >> 2);
    v7 = v6;
  }

  printf("\tavg num components: %g\n", (v7 / SLODWORD(v15[0])));
  printf("------------------------------------------------");
  puts("-- By Number of Children");
  v8 = __p[0];
  v9 = __p[1] - __p[0];
  if (__p[1] != __p[0])
  {
    v10 = 0;
    do
    {
      printf("\tnum nodes with %3zu children : %i\n", v10, v8[v10]);
      ++v10;
      v8 = __p[0];
      v9 = __p[1] - __p[0];
    }

    while (v10 < (__p[1] - __p[0]) >> 2);
  }

  v11 = v9 >> 2;
  v12 = 0.0;
  if (v11 >= 2)
  {
    v13 = 0;
    for (j = 1; j != v11; ++j)
    {
      v13 += j * v8[j];
    }

    v12 = v13;
  }

  printf("\tavg num children (for nodes with any children): %g\n", (v12 / (LODWORD(v15[0]) - *v8)));
  putchar(10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v15[1])
  {
    *&v16 = v15[1];
    operator delete(v15[1]);
  }
}

void sub_29A3A9880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0C2140(va);
  _Unwind_Resume(a1);
}

void sub_29A3A9894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  ++*a2;
  *(a2 + 4) = v4 + (*(a1 + 8) & 0x7FFFFFFF);
  v5 = a2 + 8 * *(a1 + 14);
  ++*(v5 + 56);
  v6 = *(a1 + 12) + 1;
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  for (i = *(a2 + 16); v6 >= (i - v7) >> 2; i = *(a2 + 16))
  {
    n.i32[0] = 0;
    sub_29A00D250(v8, n.i32);
    v7 = *(a2 + 8);
  }

  ++*(v7 + 4 * v6);
  v91 = 0uLL;
  v92 = 0;
  v10 = atomic_load(&qword_2A173FA78);
  if (!v10)
  {
    v10 = sub_29A3ADAF0();
  }

  sub_29A3AA468(a1, v10, &v91);
  v11 = atomic_load(&qword_2A173FA68);
  if (!v11)
  {
    v11 = sub_29A3ACD14();
  }

  sub_29A3AA468(a1, v11, &v91);
  v12 = atomic_load(&qword_2A173FA80);
  if (!v12)
  {
    v12 = sub_29A3ADC60();
  }

  sub_29A3AA6E4(a1, v12, &v91);
  v13 = atomic_load(&qword_2A173FA50);
  v88 = v13;
  if (!v13)
  {
    v88 = sub_29A3AB4DC();
  }

  for (j = 0; j != 128; ++j)
  {
    v15 = v88 + 88 * j;
    sub_29A0EB5BC(v95, v15 + 80);
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
    v18 = 0;
    if (v16)
    {
      v19 = (v17 + 4);
      while (1)
      {
        v20 = *v19;
        v19 += 16;
        if (v20 != -1)
        {
          break;
        }

        if (v16 == ++v18)
        {
          goto LABEL_44;
        }
      }
    }

    v93 = v17 + 32 * v18;
    v94 = v17 + 32 * v16;
    if (v18 != v16)
    {
      do
      {
        sub_29A3AAAD4(&v93);
        v21 = v93;
        if (*(v93 + 8) == a1)
        {
          sub_29A3AAAD4(&v93);
          Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr((v93 + 24));
          v23 = Ptr;
          v24 = v91.i64[1];
          if (v91.i64[1] >= v92)
          {
            v26 = (v91.i64[1] - v91.i64[0]) >> 3;
            v27 = v26 + 1;
            if ((v26 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v28 = v92 - v91.i64[0];
            if ((v92 - v91.i64[0]) >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            v99 = &v91;
            if (v29)
            {
              v30 = sub_29A00C9BC(&v91, v29);
            }

            else
            {
              v30 = 0;
            }

            v31 = &v30[8 * v26];
            n.i64[0] = v30;
            n.i64[1] = v31;
            v98 = &v30[8 * v29];
            *v31 = v23;
            if (v23)
            {
              atomic_fetch_add_explicit((v23 + 8), 1u, memory_order_relaxed);
            }

            v97 = (v31 + 1);
            sub_29A3AA998(&v91, &n);
            v25 = v91.i64[1];
            sub_29A3AAA4C(&n);
          }

          else
          {
            *v91.i64[1] = Ptr;
            if (Ptr)
            {
              atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
            }

            v25 = v24 + 8;
          }

          v91.i64[1] = v25;
          v21 = v93;
        }

        v32 = v94;
        if (v21 == v94)
        {
          n.i64[0] = "tf/iterator.h";
          n.i64[1] = "operator++";
          v97 = 233;
          v98 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
          LOBYTE(v99) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&n, 1, "iterator exhausted");
          v34 = v93;
          v32 = v94;
        }

        else
        {
          v33 = v21 + 32;
          do
          {
            v34 = v33;
            if (*(v33 - 26))
            {
              break;
            }

            v33 += 32;
          }

          while (*(v34 + 4) == -1);
          v93 = v34;
        }
      }

      while (v34 != v32);
    }

LABEL_44:
    v35 = v95[0];
    if (v95[0])
    {
      __dmb(0xBu);
      *v35 = 0;
    }
  }

  v36 = atomic_load(&qword_2A173FA58);
  if (!v36)
  {
    v36 = sub_29A3ABBE4();
  }

  sub_29A3AA6E4(a1, v36, &v91);
  v37 = atomic_load(&qword_2A173FA70);
  if (!v37)
  {
    v37 = sub_29A3AD994();
  }

  sub_29A3AA6E4(a1, v37, &v91);
  v38 = atomic_load(&qword_2A173FA60);
  v89 = v38;
  if (!v38)
  {
    v89 = sub_29A3AC398();
  }

  for (k = 0; k != 128; ++k)
  {
    v40 = v89 + 88 * k;
    sub_29A0EB5BC(v95, v40 + 80);
    v42 = *(v40 + 32);
    v41 = *(v40 + 40);
    v43 = 0;
    if (v41)
    {
      v44 = (v42 + 4);
      while (1)
      {
        v45 = *v44;
        v44 += 20;
        if (v45 != -1)
        {
          break;
        }

        if (v41 == ++v43)
        {
          goto LABEL_85;
        }
      }
    }

    v93 = v42 + 40 * v43;
    v94 = v42 + 40 * v41;
    if (v43 != v41)
    {
      do
      {
        sub_29A3AAB0C(&v93);
        v46 = v93;
        if (*(v93 + 8) == a1)
        {
          sub_29A3AAB0C(&v93);
          v47 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr((v93 + 32));
          v48 = v47;
          v49 = v91.i64[1];
          if (v91.i64[1] >= v92)
          {
            v51 = (v91.i64[1] - v91.i64[0]) >> 3;
            v52 = v51 + 1;
            if ((v51 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v53 = v92 - v91.i64[0];
            if ((v92 - v91.i64[0]) >> 2 > v52)
            {
              v52 = v53 >> 2;
            }

            if (v53 >= 0x7FFFFFFFFFFFFFF8)
            {
              v54 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v52;
            }

            v99 = &v91;
            if (v54)
            {
              v55 = sub_29A00C9BC(&v91, v54);
            }

            else
            {
              v55 = 0;
            }

            v56 = &v55[8 * v51];
            n.i64[0] = v55;
            n.i64[1] = v56;
            v98 = &v55[8 * v54];
            *v56 = v48;
            if (v48)
            {
              atomic_fetch_add_explicit((v48 + 8), 1u, memory_order_relaxed);
            }

            v97 = (v56 + 1);
            sub_29A3AA998(&v91, &n);
            v50 = v91.i64[1];
            sub_29A3AAA4C(&n);
          }

          else
          {
            *v91.i64[1] = v47;
            if (v47)
            {
              atomic_fetch_add_explicit((v47 + 8), 1u, memory_order_relaxed);
            }

            v50 = v49 + 8;
          }

          v91.i64[1] = v50;
          v46 = v93;
        }

        v57 = v94;
        if (v46 == v94)
        {
          n.i64[0] = "tf/iterator.h";
          n.i64[1] = "operator++";
          v97 = 233;
          v98 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::TfToken>>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::TfToken>>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
          LOBYTE(v99) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&n, 1, "iterator exhausted");
          v59 = v93;
          v57 = v94;
        }

        else
        {
          v58 = v46 + 40;
          do
          {
            v59 = v58;
            if (*(v58 - 34))
            {
              break;
            }

            v58 += 40;
          }

          while (*(v59 + 4) == -1);
          v93 = v59;
        }
      }

      while (v59 != v57);
    }

LABEL_85:
    v60 = v95[0];
    if (v95[0])
    {
      __dmb(0xBu);
      *v60 = 0;
    }
  }

  v61 = atomic_load(&qword_2A173FA88);
  v90 = v61;
  if (!v61)
  {
    v90 = sub_29A3ADDBC();
  }

  for (m = 0; m != 128; ++m)
  {
    v63 = v90 + 88 * m;
    sub_29A0EB5BC(v95, v63 + 80);
    v65 = *(v63 + 32);
    v64 = *(v63 + 40);
    v66 = 0;
    if (v64)
    {
      v67 = (v65 + 4);
      while (1)
      {
        v68 = *v67;
        v67 += 12;
        if (v68 != -1)
        {
          break;
        }

        if (v64 == ++v66)
        {
          goto LABEL_122;
        }
      }
    }

    v93 = v65 + 24 * v66;
    v94 = v65 + 24 * v64;
    if (v66 != v64)
    {
      do
      {
        sub_29A3AAB44(&v93);
        v69 = v93;
        if (*(v93 + 8) == a1)
        {
          sub_29A3AAB44(&v93);
          v70 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v93 + 16));
          v71 = v70;
          v72 = v91.i64[1];
          if (v91.i64[1] >= v92)
          {
            v74 = (v91.i64[1] - v91.i64[0]) >> 3;
            v75 = v74 + 1;
            if ((v74 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v76 = v92 - v91.i64[0];
            if ((v92 - v91.i64[0]) >> 2 > v75)
            {
              v75 = v76 >> 2;
            }

            if (v76 >= 0x7FFFFFFFFFFFFFF8)
            {
              v77 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v77 = v75;
            }

            v99 = &v91;
            if (v77)
            {
              v78 = sub_29A00C9BC(&v91, v77);
            }

            else
            {
              v78 = 0;
            }

            v79 = &v78[8 * v74];
            n.i64[0] = v78;
            n.i64[1] = v79;
            v98 = &v78[8 * v77];
            *v79 = v71;
            if (v71)
            {
              atomic_fetch_add_explicit((v71 + 8), 1u, memory_order_relaxed);
            }

            v97 = (v79 + 1);
            sub_29A3AA998(&v91, &n);
            v73 = v91.i64[1];
            sub_29A3AAA4C(&n);
          }

          else
          {
            *v91.i64[1] = v70;
            if (v70)
            {
              atomic_fetch_add_explicit((v70 + 8), 1u, memory_order_relaxed);
            }

            v73 = v72 + 8;
          }

          v91.i64[1] = v73;
          v69 = v93;
        }

        v80 = v94;
        if (v69 == v94)
        {
          n.i64[0] = "tf/iterator.h";
          n.i64[1] = "operator++";
          v97 = 233;
          v98 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<void>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<void>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
          LOBYTE(v99) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&n, 1, "iterator exhausted");
          v82 = v93;
          v80 = v94;
        }

        else
        {
          v81 = v69 + 24;
          do
          {
            v82 = v81;
            if (*(v81 - 18))
            {
              break;
            }

            v81 += 24;
          }

          while (*(v82 + 4) == -1);
          v93 = v82;
        }
      }

      while (v82 != v80);
    }

LABEL_122:
    v83 = v95[0];
    if (v95[0])
    {
      __dmb(0xBu);
      *v83 = 0;
    }
  }

  v84 = v91;
  v85 = vsubq_s64(vdupq_laneq_s64(v91, 1), v91).i64[0] >> 3;
  v86 = *(a2 + 32);
  if (v85 >= (*(a2 + 40) - v86) >> 2)
  {
    do
    {
      n.i32[0] = 0;
      sub_29A00D250((a2 + 32), n.i32);
      v86 = *(a2 + 32);
    }

    while (v85 >= (*(a2 + 40) - v86) >> 2);
    v84 = v91;
  }

  ++*(v86 + 4 * v85);
  for (n = v84; n.i64[0] != n.i64[1]; sub_29A3AA3E8(&n))
  {
    v87 = sub_29A3AA3B0(&n);
    sub_29A3A9894(**v87, a2);
  }

  n.i64[0] = &v91;
  sub_29A3AAB7C(&n);
}

void sub_29A3AA0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  sub_29A3AAB7C(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3AA17C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *a3;
  result[1] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void ***sub_29A3AA1D8(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29A16DC74(v2, v2[1]);
    operator delete(v2);
  }

  return a1;
}

void sub_29A3AA220(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3AA250(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C350))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A3AA290(void **a1)
{
  if (a1)
  {
    sub_29A16DC74(a1, a1[1]);

    operator delete(a1);
  }
}

void *sub_29A3AA2D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  v9 = result;
  if (a6 > 0x16)
  {
    if ((a6 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a6 | 7) + 1;
    }

    result = operator new(v10);
    v9[1] = a6;
    v9[2] = v10 | 0x8000000000000000;
    *v9 = result;
    v9 = result;
  }

  else
  {
    *(result + 23) = a6;
  }

  while (a3 != a5)
  {
    v11 = *--a3;
    *v9 = v11;
    v9 = (v9 + 1);
  }

  *v9 = 0;
  return result;
}

_DWORD *sub_29A3AA370(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void *sub_29A3AA3B0(void *result)
{
  if (*result == result[1])
  {
    sub_29B29CDB8();
  }

  return result;
}

void *sub_29A3AA3E8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<const pxrInternal__aapl__pxrReserved__::Sdf_PathNode>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<const pxrInternal__aapl__pxrReserved__::Sdf_PathNode>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void sub_29A3AA468(uint64_t a1, uint64_t a2, void *a3)
{
  for (i = 0; i != 128; ++i)
  {
    v6 = a2 + 88 * i;
    sub_29A0EB5BC(&v31, v6 + 80);
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v9 = 0;
    if (v7)
    {
      v10 = (v8 + 4);
      while (1)
      {
        v11 = *v10;
        v10 += 16;
        if (v11 != -1)
        {
          break;
        }

        if (v7 == ++v9)
        {
          goto LABEL_33;
        }
      }
    }

    v29 = v8 + 32 * v9;
    v30 = v8 + 32 * v7;
    if (v9 != v7)
    {
      do
      {
        sub_29A3AA960(&v29);
        v12 = v29;
        if (*(v29 + 8) == a1)
        {
          sub_29A3AA960(&v29);
          Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v29 + 24));
          v14 = Ptr;
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            v18 = (v15 - *a3) >> 3;
            v19 = v18 + 1;
            if ((v18 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v20 = v16 - *a3;
            if (v20 >> 2 > v19)
            {
              v19 = v20 >> 2;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              v21 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            v36 = a3;
            if (v21)
            {
              v22 = sub_29A00C9BC(a3, v21);
            }

            else
            {
              v22 = 0;
            }

            v23 = &v22[8 * v18];
            v32 = v22;
            v33 = v23;
            v35 = &v22[8 * v21];
            *v23 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
            }

            v34 = (v23 + 8);
            sub_29A3AA998(a3, &v32);
            v17 = a3[1];
            sub_29A3AAA4C(&v32);
          }

          else
          {
            *v15 = Ptr;
            if (Ptr)
            {
              atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
            }

            v17 = v15 + 1;
            a3[1] = v15 + 1;
          }

          a3[1] = v17;
          v12 = v29;
        }

        v24 = v30;
        if (v12 == v30)
        {
          v32 = "tf/iterator.h";
          v33 = "operator++";
          v34 = 233;
          v35 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
          LOBYTE(v36) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v32, 1, "iterator exhausted");
          v26 = v29;
          v24 = v30;
        }

        else
        {
          v25 = v12 + 32;
          do
          {
            v26 = v25;
            if (*(v25 - 26))
            {
              break;
            }

            v25 += 32;
          }

          while (*(v26 + 4) == -1);
          v29 = v26;
        }
      }

      while (v26 != v24);
    }

LABEL_33:
    v27 = v31;
    if (v31)
    {
      __dmb(0xBu);
      *v27 = 0;
    }
  }
}

void sub_29A3AA6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    __dmb(0xBu);
    *a12 = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3AA6E4(uint64_t a1, uint64_t a2, void *a3)
{
  for (i = 0; i != 128; ++i)
  {
    v6 = a2 + 88 * i;
    sub_29A0EB5BC(&v31, v6 + 80);
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v9 = 0;
    if (v7)
    {
      v10 = (v8 + 4);
      while (1)
      {
        v11 = *v10;
        v10 += 16;
        if (v11 != -1)
        {
          break;
        }

        if (v7 == ++v9)
        {
          goto LABEL_33;
        }
      }
    }

    v29 = v8 + 32 * v9;
    v30 = v8 + 32 * v7;
    if (v9 != v7)
    {
      do
      {
        sub_29A3AAA9C(&v29);
        v12 = v29;
        if (*(v29 + 8) == a1)
        {
          sub_29A3AAA9C(&v29);
          Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v29 + 24));
          v14 = Ptr;
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            v18 = (v15 - *a3) >> 3;
            v19 = v18 + 1;
            if ((v18 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v20 = v16 - *a3;
            if (v20 >> 2 > v19)
            {
              v19 = v20 >> 2;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              v21 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            v36 = a3;
            if (v21)
            {
              v22 = sub_29A00C9BC(a3, v21);
            }

            else
            {
              v22 = 0;
            }

            v23 = &v22[8 * v18];
            v32 = v22;
            v33 = v23;
            v35 = &v22[8 * v21];
            *v23 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
            }

            v34 = (v23 + 8);
            sub_29A3AA998(a3, &v32);
            v17 = a3[1];
            sub_29A3AAA4C(&v32);
          }

          else
          {
            *v15 = Ptr;
            if (Ptr)
            {
              atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
            }

            v17 = v15 + 1;
            a3[1] = v15 + 1;
          }

          a3[1] = v17;
          v12 = v29;
        }

        v24 = v30;
        if (v12 == v30)
        {
          v32 = "tf/iterator.h";
          v33 = "operator++";
          v34 = 233;
          v35 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::pxr_tsl::robin_map<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParentAnd<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag, 24, 8>::Handle, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
          LOBYTE(v36) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v32, 1, "iterator exhausted");
          v26 = v29;
          v24 = v30;
        }

        else
        {
          v25 = v12 + 32;
          do
          {
            v26 = v25;
            if (*(v25 - 26))
            {
              break;
            }

            v25 += 32;
          }

          while (*(v26 + 4) == -1);
          v29 = v26;
        }
      }

      while (v26 != v24);
    }

LABEL_33:
    v27 = v31;
    if (v31)
    {
      __dmb(0xBu);
      *v27 = 0;
    }
  }
}

void sub_29A3AA92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    __dmb(0xBu);
    *a12 = 0;
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3AA960(void *result)
{
  if (*result == result[1])
  {
    sub_29B29CE04();
  }

  return result;
}

void *sub_29A3AA998(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v3);
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A3AAA4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 8;
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A3AAA9C(void *result)
{
  if (*result == result[1])
  {
    sub_29B29CE50();
  }

  return result;
}

void *sub_29A3AAAD4(void *result)
{
  if (*result == result[1])
  {
    sub_29B29CE9C();
  }

  return result;
}

void *sub_29A3AAB0C(void *result)
{
  if (*result == result[1])
  {
    sub_29B29CEE8();
  }

  return result;
}

void *sub_29A3AAB44(void *result)
{
  if (*result == result[1])
  {
    sub_29B29CF34();
  }

  return result;
}

void sub_29A3AAB7C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A3AAC00(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p[1];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*__p & 7) != 0)
    {
      atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(__p);
  }
}

void *sub_29A3AAC40(atomic_ullong *a1)
{
  result = sub_29A3AACA4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    return atomic_load(a1);
  }

  return result;
}

void *sub_29A3AACA4()
{
  v0 = operator new(0x18uLL);
  *v0 = &unk_2A204C3E8;
  v2 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v1);
  v0[1] = v2;
  bzero(v2, 0x2C0uLL);
  v2[16] = vdupq_n_s64(0x10uLL);
  *v0 = &unk_2A204C378;
  return v0;
}

void sub_29A3AAD4C(void *a1)
{
  v1 = sub_29A3AAE1C(a1);

  operator delete(v1);
}

uint64_t sub_29A3AADD4(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

uint64_t sub_29A3AAE1C(void *a1)
{
  *a1 = &unk_2A204C378;
  sub_29A3AAE7C(a1);
  sub_29A171EEC(a1);

  return sub_29A3AAEF4(a1, v2);
}

BOOL sub_29A3AAE7C(_BOOL8 result)
{
  v1 = result;
  LODWORD(v7) = 0;
  *(&v7 + 1) = 0;
  while (1)
  {
    v2 = *(v1 + 8);
    v3 = v2[16];
    __dmb(0xBu);
    v4 = *v2;
    __dmb(0xBu);
    v5 = v2[16];
    __dmb(0xBu);
    if (v3 == v5)
    {
      v6 = v2[34];
      __dmb(0xBu);
      if (v3 == v6 + v4)
      {
        break;
      }
    }

    result = sub_29A3AAF40(v1, &v7);
  }

  return result;
}

uint64_t sub_29A3AAEF4(uint64_t a1, void *a2)
{
  *a1 = &unk_2A204C3E8;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

BOOL sub_29A3AAF40(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 - v5;
    v8 = v7 > 0;
LABEL_3:
    if (v7 < 1)
    {
      return 0;
    }

    while (1)
    {
      v9 = v5;
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v11 = v4[16];
        __dmb(0xBu);
        v7 = v11 - add_explicit;
        v5 = add_explicit;
        goto LABEL_3;
      }
    }

    if (sub_29A3AB000(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

BOOL sub_29A3AB000(uint64_t *a1, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFF8;
  v9 = a1[1];
  __dmb(0xBu);
  if (v9 != (a3 & 0xFFFFFFFFFFFFFFF8))
  {
    while (1)
    {
      v12 = a1[1];
      __dmb(0xBu);
      if (v12 == v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v10 = a1[3];
  __dmb(0xBu);
  if (v10 == v8)
  {
    while (1)
    {
      v11 = a1[3];
      __dmb(0xBu);
      if (v11 != v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v13 = *a1;
  __dmb(0xBu);
  v14 = *(a4 + 8);
  v15 = *(v14 + 256) - 1;
  v16 = v15 & (a3 >> 3);
  if (v16 == v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v21[0] = v8 + 8;
  v21[1] = a1;
  v21[2] = v17;
  v21[3] = a4;
  v18 = *(v13 + 8) & (1 << v16);
  if (v18)
  {
    *a2 = *(v13 + 16 * v16 + 16);
  }

  else
  {
    atomic_fetch_add((v14 + 272), 0xFFFFFFFFFFFFFFFFLL);
  }

  v19 = v18 != 0;
  sub_29A172748(v21);
  return v19;
}

__n128 sub_29A3AB108(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_29A3AB114(atomic_ullong *a1)
{
  result = sub_29A3AB178();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    return atomic_load(a1);
  }

  return result;
}

void *sub_29A3AB178()
{
  v0 = operator new(0x18uLL);
  *v0 = &unk_2A204C498;
  v2 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v1);
  v0[1] = v2;
  bzero(v2, 0x2C0uLL);
  v2[16] = vdupq_n_s64(0x10uLL);
  *v0 = &unk_2A204C428;
  return v0;
}

void sub_29A3AB220(void *a1)
{
  v1 = sub_29A3AB2F0(a1);

  operator delete(v1);
}

uint64_t sub_29A3AB2A8(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

uint64_t sub_29A3AB2F0(void *a1)
{
  *a1 = &unk_2A204C428;
  sub_29A3AAE7C(a1);
  sub_29A171EEC(a1);

  return sub_29A3AB350(a1, v2);
}

uint64_t sub_29A3AB350(uint64_t a1, void *a2)
{
  *a1 = &unk_2A204C498;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

__n128 sub_29A3AB39C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_29A3AB4DC()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3AB5C8(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA50, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3AB79C(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA50);
  }

  return v0;
}

void sub_29A3AB590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3AB79C(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3AB5C8(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = a2;
  v7 = sub_29A10A6B8(a1, &v16);
  v7[1] = 0;
  v8 = v16;
  v7[2] = 0;
  v7[3] = 0;
  v17 = (v7 + 1);
  v18 = 0;
  if (v8)
  {
    if (v8 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = operator new(32 * v8);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    v10 = &v9[8 * v8];
    *(a1 + 24) = v10;
    v11 = v9;
    do
    {
      *v11 = 0;
      *(v11 + 2) = -1;
      *(v11 + 6) = 0;
      v11 += 8;
    }

    while (v11 != v10);
    *(a1 + 16) = v10;
  }

  else if (atomic_load_explicit(&qword_2A1741AA0, memory_order_acquire))
  {
    v9 = &dword_2A1741AF0;
  }

  else
  {
    sub_29B29D030(&v17);
    v9 = v17;
  }

  v12 = v16;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v12 >> 59)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v12)
  {
    *(*(a1 + 16) - 26) = 1;
  }

  v13 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v13;
  *(a1 + 56) = (v13 * v12);
  return a1;
}

void sub_29A3AB768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11)
{
  a11 = a9;
  sub_29A3AB79C(&a11);
  _Unwind_Resume(a1);
}

void sub_29A3AB79C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 14) != -1)
        {
          v5 = *(v3 - 2);
          if ((v5 & 7) != 0)
          {
            atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(v3 - 14) = -1;
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_29A3AB808(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    v1 = *(result + 16);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(result + 4) = -1;
  }

  return result;
}

__n128 sub_29A3AB838(uint64_t *a1, uint64_t a2)
{
  sub_29A3AB5C8(&v19, a2, *(a1 + 16), *(a1 + 17));
  v3 = v22;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    while (1)
    {
      if (*(v4 + 2) == -1)
      {
        goto LABEL_12;
      }

      if (v3 > 0x100000000)
      {
        v6 = bswap64(0x9E3779B97F4A7C55 * ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + (((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 1) + ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 1)) * ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 1))) >> 1)));
      }

      else
      {
        v6 = *v4;
      }

      v7 = 0;
      v8 = v19;
      v9 = v19 & v6;
      v28 = 0;
      LODWORD(v27) = v6;
      while (1)
      {
        v10 = *(&v21 + 1) + 32 * v9;
        v11 = *(v10 + 4);
        if (v11 >= v7)
        {
          goto LABEL_10;
        }

        if (v11 == -1)
        {
          break;
        }

        sub_29A3ABA04(v10, &v28, &v27, v4 + 2);
        v7 = v28;
        v8 = v19;
LABEL_10:
        v28 = ++v7;
        v9 = v8 & (v9 + 1);
      }

      v12 = v27;
      *(v10 + 8) = *(v4 + 1);
      *(v10 + 16) = *(v4 + 2);
      *(v4 + 2) = 0;
      *(v10 + 24) = v4[6];
      *v10 = v12;
      *(v10 + 4) = v7;
LABEL_12:
      v4 += 8;
      if (v4 == v5)
      {
        v4 = a1[1];
        v5 = a1[2];
        v3 = v22;
        break;
      }
    }
  }

  v13 = *a1;
  *a1 = v19;
  v14 = v20;
  v19 = v13;
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *(a1 + 1) = v14;
  v15 = v21;
  v21 = *(a1 + 3);
  *(a1 + 3) = v15;
  v16 = *(a1 + 5);
  a1[5] = v3;
  v22 = v16;
  v17 = v23;
  v23 = a1[7];
  a1[7] = v17;
  *&v15 = v24;
  v24 = a1[8];
  a1[8] = v15;
  LOBYTE(v17) = v25;
  v25 = *(a1 + 72);
  *(a1 + 72) = v17;
  LOBYTE(v17) = v26;
  v26 = *(a1 + 73);
  *(a1 + 73) = v17;
  v27 = &v20;
  sub_29A3AB79C(&v27);
  return result;
}

int *sub_29A3ABA04(int *result, _WORD *a2, int *a3, int *a4)
{
  v5 = *a4;
  v4 = *(a4 + 1);
  *(a4 + 1) = 0;
  *a4 = *(result + 1);
  if (result + 2 == a4)
  {
    v6 = *(result + 2);
    *(result + 1) = v5;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *(a4 + 1) = *(result + 2);
    *(result + 1) = v5;
  }

  *(result + 2) = v4;
  v7 = a4[4];
  a4[4] = result[6];
  result[6] = v7;
  LOWORD(v7) = *a2;
  *a2 = *(result + 2);
  *(result + 2) = v7;
  v8 = *result;
  *result = *a3;
  *a3 = v8;
  return result;
}

uint64_t *sub_29A3ABA84(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    v2 = *(a2 + 16);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a2 + 4) = -1;
  }

  --result[6];
  v3 = result[4];
  v4 = (a2 - v3) >> 5;
  v5 = *result;
  v6 = (v4 + 1) & *result;
  v7 = (v3 + 32 * v6);
  v8 = *(v7 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v3 + 32 * v4;
      v10 = *v7;
      *(v9 + 8) = *(v7 + 1);
      *(v9 + 16) = *(v7 + 2);
      *(v7 + 2) = 0;
      *(v9 + 24) = v7[6];
      *v9 = v10;
      *(v9 + 4) = v8 - 1;
      v3 = result[4];
      v11 = v3 + 32 * v6;
      if (*(v11 + 4) != -1)
      {
        v12 = *(v11 + 16);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          v5 = *result;
          v3 = result[4];
        }

        *(v11 + 4) = -1;
      }

      v4 = v6;
      v6 = v5 & (v6 + 1);
      v7 = (v3 + 32 * v6);
      v8 = *(v7 + 2);
    }

    while (v8 > 0);
  }

  *(result + 73) = 1;
  return result;
}

uint64_t sub_29A3ABB78(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v3 = *(a2 + 12) + 1;
    v4 = *(a2 + 15);
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  *(result + 8) = 1;
  *(result + 12) = v3;
  *(result + 14) = 1;
  *(result + 15) = v4;
  v5 = *a3;
  *(result + 16) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

unint64_t sub_29A3ABBE4()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3ABCD0(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA58, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3AB79C(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA58);
  }

  return v0;
}

void sub_29A3ABC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3AB79C(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ABCD0(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = a2;
  v7 = sub_29A10A6B8(a1, &v16);
  v7[1] = 0;
  v8 = v16;
  v7[2] = 0;
  v7[3] = 0;
  v17 = (v7 + 1);
  v18 = 0;
  if (v8)
  {
    if (v8 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = operator new(32 * v8);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    v10 = &v9[8 * v8];
    *(a1 + 24) = v10;
    v11 = v9;
    do
    {
      *v11 = 0;
      *(v11 + 2) = -1;
      *(v11 + 6) = 0;
      v11 += 8;
    }

    while (v11 != v10);
    *(a1 + 16) = v10;
  }

  else if (atomic_load_explicit(&qword_2A1741AA8, memory_order_acquire))
  {
    v9 = &dword_2A1741B10;
  }

  else
  {
    sub_29B29D0AC(&v17);
    v9 = v17;
  }

  v12 = v16;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v12 >> 59)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v12)
  {
    *(*(a1 + 16) - 26) = 1;
  }

  v13 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v13;
  *(a1 + 56) = (v13 * v12);
  return a1;
}

void sub_29A3ABE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11)
{
  a11 = a9;
  sub_29A3AB79C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ABEA4(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    v1 = *(result + 16);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(result + 4) = -1;
  }

  return result;
}

uint64_t sub_29A3ABED4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2[1];
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(a2 + 4);
  v6 = bswap64(0x9E3779B97F4A7C55 * ((v4 & 0xFFFFFFFFFFFFFFF8) + (((v4 & 0xFFFFFFFFFFFFFFF8) + v3 + ((v4 & 0xFFFFFFFFFFFFFFF8) + v3) * ((v4 & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1)));
  v7 = *a1;
  v8 = a1[4];
  v9 = v6 & *a1;
  result = v8 + 32 * v9;
  if (*(result + 4) < 0)
  {
    LOWORD(v11) = 0;
    while (1)
    {
LABEL_14:
      if (v11 > 0x2000 || (a1[9] & 1) != 0 || (v13 = a1[6], v13 >= a1[7]))
      {
        v17 = sub_29A10A428(a1);
        sub_29A3AC1CC(a1, v17);
        *(a1 + 72) = 0;
      }

      else
      {
        if (*(a1 + 73) != 1 || (*(a1 + 73) = 0, v14 = *(a1 + 16), v14 == 0.0) || ((v15 = a1[5]) == 0 ? (v16 = 0.0) : (v16 = v13 / v15), v16 >= v14))
        {
          v22 = (v8 + 32 * v9);
          v23 = *(v22 + 2);
          if (v23 == 0xFFFF)
          {
            *(v22 + 1) = v3;
            *(v22 + 2) = v4;
            v22[6] = v5;
            *v22 = v6;
            *(v22 + 2) = v11;
          }

          else
          {
            v25 = *(v22 + 1);
            v24 = *(v22 + 2);
            *(v22 + 1) = v3;
            *(v22 + 2) = v4;
            v26 = v22[6];
            v22[6] = v5;
            *(v22 + 2) = v11;
            v27 = *v22;
            *v22 = v6;
            v28 = (v9 + 1) & v7;
            v29 = v23 + 1;
            v30 = a1[4];
            v31 = (v30 + 32 * v28);
            for (i = *(v31 + 2); i != 0xFFFF; i = *(v31 + 2))
            {
              if (v29 <= i)
              {
                i = v29;
              }

              else
              {
                if (v29 > 0x2000)
                {
                  *(a1 + 72) = 1;
                }

                v33 = *(v31 + 1);
                v34 = *(v31 + 2);
                *(v31 + 1) = v25;
                *(v31 + 2) = v24;
                v35 = v31[6];
                v31[6] = v26;
                *(v31 + 2) = v29;
                v36 = *v31;
                *v31 = v27;
                v30 = a1[4];
                v26 = v35;
                v24 = v34;
                v25 = v33;
                v27 = v36;
              }

              v28 = (v28 + 1) & v7;
              v29 = i + 1;
              v31 = (v30 + 32 * v28);
            }

            *(v31 + 1) = v25;
            *(v31 + 2) = v24;
            v31[6] = v26;
            *v31 = v27;
            *(v31 + 2) = v29;
          }

          a1[6] = v13 + 1;
          return a1[4] + 32 * v9;
        }

        v18 = *(a1 + 17);
        v19 = vcvtps_u32_f32((v13 + 1) / v18);
        v20 = vcvtps_u32_f32(v13 / v18);
        if (v20 <= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        sub_29A3AC1CC(a1, v21);
      }

      LOWORD(v11) = 0;
      v7 = *a1;
      v8 = a1[4];
      v9 = *a1 & v6;
      if ((*(v8 + 32 * v9 + 4) & 0x80000000) == 0)
      {
        LOWORD(v11) = 0;
        do
        {
          v11 = (v11 + 1);
          v9 = (v9 + 1) & v7;
        }

        while (v11 <= *(v8 + 32 * v9 + 4));
      }
    }
  }

  LOWORD(v11) = 0;
  while (*(result + 8) != v3 || (v4 ^ *(result + 16)) >= 8)
  {
    v11 = (v11 + 1);
    v9 = (v9 + 1) & v7;
    result = v8 + 32 * v9;
    if (v11 > *(result + 4))
    {
      goto LABEL_14;
    }
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

__n128 sub_29A3AC1CC(uint64_t *a1, uint64_t a2)
{
  sub_29A3ABCD0(&v19, a2, *(a1 + 16), *(a1 + 17));
  v3 = v22;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    while (1)
    {
      if (*(v4 + 2) == -1)
      {
        goto LABEL_12;
      }

      if (v3 > 0x100000000)
      {
        v6 = bswap64(0x9E3779B97F4A7C55 * ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + (((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 1) + ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 1)) * ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 1))) >> 1)));
      }

      else
      {
        v6 = *v4;
      }

      v7 = 0;
      v8 = v19;
      v9 = v19 & v6;
      v28 = 0;
      LODWORD(v27) = v6;
      while (1)
      {
        v10 = *(&v21 + 1) + 32 * v9;
        v11 = *(v10 + 4);
        if (v11 >= v7)
        {
          goto LABEL_10;
        }

        if (v11 == -1)
        {
          break;
        }

        sub_29A3ABA04(v10, &v28, &v27, v4 + 2);
        v7 = v28;
        v8 = v19;
LABEL_10:
        v28 = ++v7;
        v9 = v8 & (v9 + 1);
      }

      v12 = v27;
      *(v10 + 8) = *(v4 + 1);
      *(v10 + 16) = *(v4 + 2);
      *(v4 + 2) = 0;
      *(v10 + 24) = v4[6];
      *v10 = v12;
      *(v10 + 4) = v7;
LABEL_12:
      v4 += 8;
      if (v4 == v5)
      {
        v4 = a1[1];
        v5 = a1[2];
        v3 = v22;
        break;
      }
    }
  }

  v13 = *a1;
  *a1 = v19;
  v14 = v20;
  v19 = v13;
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *(a1 + 1) = v14;
  v15 = v21;
  v21 = *(a1 + 3);
  *(a1 + 3) = v15;
  v16 = *(a1 + 5);
  a1[5] = v3;
  v22 = v16;
  v17 = v23;
  v23 = a1[7];
  a1[7] = v17;
  *&v15 = v24;
  v24 = a1[8];
  a1[8] = v15;
  LOBYTE(v17) = v25;
  v25 = *(a1 + 72);
  *(a1 + 72) = v17;
  LOBYTE(v17) = v26;
  v26 = *(a1 + 73);
  *(a1 + 73) = v17;
  v27 = &v20;
  sub_29A3AB79C(&v27);
  return result;
}

unint64_t sub_29A3AC398()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3AC484(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA60, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3AC664(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA60);
  }

  return v0;
}

void sub_29A3AC44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3AC664(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3AC484(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = a2;
  v7 = sub_29A10A6B8(a1, &v16);
  v7[1] = 0;
  v8 = v16;
  v7[2] = 0;
  v7[3] = 0;
  v17 = (v7 + 1);
  v18 = 0;
  if (v8)
  {
    if (v8 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = operator new(40 * v8);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    v10 = &v9[10 * v8];
    *(a1 + 24) = v10;
    v11 = v9;
    do
    {
      *v11 = 0;
      *(v11 + 2) = -1;
      *(v11 + 6) = 0;
      v11 += 10;
    }

    while (v11 != v10);
    *(a1 + 16) = v10;
  }

  else if (atomic_load_explicit(&qword_2A1741AB0, memory_order_acquire))
  {
    v9 = &dword_2A1741B50;
  }

  else
  {
    sub_29B29D128(&v17);
    v9 = v17;
  }

  v12 = v16;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v12 > 0x666666666666666)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v12)
  {
    *(*(a1 + 16) - 34) = 1;
  }

  v13 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v13;
  *(a1 + 56) = (v13 * v12);
  return a1;
}

void sub_29A3AC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A3AC664(va);
  _Unwind_Resume(a1);
}

void sub_29A3AC664(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 18) != -1)
        {
          v5 = *(v3 - 2);
          if ((v5 & 7) != 0)
          {
            atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v6 = *(v3 - 3);
          if ((v6 & 7) != 0)
          {
            atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(v3 - 18) = -1;
        }

        v3 -= 20;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_29A3AC6E4(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    v1 = *(result + 24);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 = *(result + 16);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(result + 4) = -1;
  }

  return result;
}

uint64_t sub_29A3AC72C(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  return sub_29A3AC760(a1, a3);
}

uint64_t sub_29A3AC760(uint64_t result, void *a2)
{
  v2 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 8))
  {
    v2 += (*result + v2 + (*result + v2) * (*result + v2)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = (a2[1] & 0xFFFFFFFFFFFFFFF8) + (((a2[1] & 0xFFFFFFFFFFFFFFF8) + v2 + ((a2[1] & 0xFFFFFFFFFFFFFFF8) + v2) * ((a2[1] & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
  return result;
}

__n128 sub_29A3AC7A8(uint64_t *a1, uint64_t a2)
{
  sub_29A3AC484(&v20, a2, *(a1 + 16), *(a1 + 17));
  v3 = v23;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    while (1)
    {
      if (*(v4 + 2) == -1)
      {
        goto LABEL_12;
      }

      if (v3 > 0x100000000)
      {
        v28 = 0;
        v29 = 0;
        sub_29A3AC72C(&v28, v4 + 1, v4 + 2);
        v6 = bswap64(0x9E3779B97F4A7C55 * v28);
      }

      else
      {
        v6 = *v4;
      }

      v7 = 0;
      v8 = v20;
      v9 = v20 & v6;
      v30 = 0;
      LODWORD(v28) = v6;
      while (1)
      {
        v10 = *(&v22 + 1) + 40 * v9;
        v11 = *(v10 + 4);
        if (v11 >= v7)
        {
          goto LABEL_10;
        }

        if (v11 == -1)
        {
          break;
        }

        sub_29A3AC9AC(v10, &v30, &v28, v4 + 1);
        v7 = v30;
        v8 = v20;
LABEL_10:
        v30 = ++v7;
        v9 = v8 & (v9 + 1);
      }

      v12 = v28;
      *(v10 + 8) = v4[1];
      *(v10 + 16) = v4[2];
      v4[2] = 0;
      *(v10 + 24) = v4[3];
      v4[3] = 0;
      *(v10 + 32) = *(v4 + 8);
      *v10 = v12;
      *(v10 + 4) = v7;
LABEL_12:
      v4 += 5;
      if (v4 == v5)
      {
        v4 = a1[1];
        v5 = a1[2];
        v3 = v23;
        break;
      }
    }
  }

  v13 = *a1;
  *a1 = v20;
  v14 = v21;
  v15 = v22;
  v20 = v13;
  *&v21 = v4;
  *(&v21 + 1) = v5;
  *(a1 + 1) = v14;
  v16 = *(a1 + 3);
  *(a1 + 3) = v15;
  v17 = *(a1 + 5);
  a1[5] = v3;
  v22 = v16;
  v23 = v17;
  v18 = v24;
  v24 = a1[7];
  a1[7] = v18;
  *&v15 = v25;
  v25 = a1[8];
  a1[8] = v15;
  LOBYTE(v18) = v26;
  v26 = *(a1 + 72);
  *(a1 + 72) = v18;
  LOBYTE(v18) = v27;
  v27 = *(a1 + 73);
  *(a1 + 73) = v18;
  v28 = &v21;
  sub_29A3AC664(&v28);
  return result;
}

void sub_29A3AC98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 88) = &a11;
  sub_29A3AC664((v11 - 88));
  _Unwind_Resume(a1);
}

void *sub_29A3AC9AC(int *a1, _WORD *a2, int *a3, uint64_t *a4)
{
  v8 = *a4;
  v12 = *(a4 + 1);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = *(a1 + 1);
  sub_29A3ACA90(a4 + 1, a1 + 2);
  *(a1 + 1) = v8;
  result = sub_29A3ACA90(a1 + 2, &v12);
  if ((BYTE8(v12) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v12 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a4 + 6);
  *(a4 + 6) = a1[8];
  a1[8] = v10;
  LOWORD(v10) = *a2;
  *a2 = *(a1 + 2);
  *(a1 + 2) = v10;
  v11 = *a1;
  *a1 = *a3;
  *a3 = v11;
  return result;
}

void *sub_29A3ACA90(void *result, void *a2)
{
  if (a2 != result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = *a2;
    *a2 = 0;
    v2 = result[1];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    result[1] = a2[1];
    a2[1] = 0;
  }

  return result;
}

uint64_t *sub_29A3ACAE4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[1];
  result[1] = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t *sub_29A3ACB40(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    v2 = *(a2 + 24);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = *(a2 + 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a2 + 4) = -1;
  }

  --result[6];
  v4 = result[4];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v4) >> 3);
  v6 = *result;
  v7 = (v5 + 1) & *result;
  v8 = (v4 + 40 * v7);
  v9 = *(v8 + 2);
  if (v9 >= 1)
  {
    do
    {
      v10 = v4 + 40 * v5;
      v11 = *v8;
      *(v10 + 8) = *(v8 + 1);
      *(v10 + 16) = *(v8 + 2);
      *(v8 + 2) = 0;
      *(v10 + 24) = *(v8 + 3);
      *(v8 + 3) = 0;
      *(v10 + 32) = v8[8];
      *v10 = v11;
      *(v10 + 4) = v9 - 1;
      v4 = result[4];
      v12 = v4 + 40 * v7;
      if (*(v12 + 4) != -1)
      {
        v13 = *(v12 + 24);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v14 = *(v12 + 16);
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(v12 + 4) = -1;
        v6 = *result;
        v4 = result[4];
      }

      v5 = v7;
      v7 = v6 & (v7 + 1);
      v8 = (v4 + 40 * v7);
      v9 = *(v8 + 2);
    }

    while (v9 > 0);
  }

  *(result + 73) = 1;
  return result;
}

uint64_t sub_29A3ACC80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v5 = *(a2 + 12) + 1;
    v6 = *(a2 + 15) | 2;
  }

  else
  {
    v5 = 1;
    v6 = 2;
  }

  *(a1 + 8) = 1;
  *(a1 + 12) = v5;
  *(a1 + 14) = 2;
  *(a1 + 15) = v6;
  v7 = operator new(0x10uLL);
  *(a1 + 16) = sub_29A3ACAE4(v7, a3);
  return a1;
}

unint64_t sub_29A3ACD14()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3ACE00(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA68, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3ACFD4(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA68);
  }

  return v0;
}

void sub_29A3ACDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3ACFD4(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ACE00(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = a2;
  v7 = sub_29A10A6B8(a1, &v16);
  v7[1] = 0;
  v8 = v16;
  v7[2] = 0;
  v7[3] = 0;
  v17 = (v7 + 1);
  v18 = 0;
  if (v8)
  {
    if (v8 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = operator new(32 * v8);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    v10 = &v9[8 * v8];
    *(a1 + 24) = v10;
    v11 = v9;
    do
    {
      *v11 = 0;
      *(v11 + 2) = -1;
      *(v11 + 6) = 0;
      v11 += 8;
    }

    while (v11 != v10);
    *(a1 + 16) = v10;
  }

  else if (atomic_load_explicit(&qword_2A1741AB8, memory_order_acquire))
  {
    v9 = &dword_2A1741B30;
  }

  else
  {
    sub_29B29D1A4(&v17);
    v9 = v17;
  }

  v12 = v16;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v12 >> 59)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v12)
  {
    *(*(a1 + 16) - 26) = 1;
  }

  v13 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v13;
  *(a1 + 56) = (v13 * v12);
  return a1;
}

void sub_29A3ACFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11)
{
  a11 = a9;
  sub_29A3ACFD4(&a11);
  _Unwind_Resume(a1);
}

void sub_29A3ACFD4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      do
      {
        if (*(v6 + 4) != -1)
        {
          sub_29A3AD0C0(v6);
          *(v6 + 4) = -1;
        }

        v7 = v6 == v2;
        v6 -= 32;
      }

      while (!v7);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A3AD080(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A3AD0C0(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

_DWORD *sub_29A3AD0C0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));

  return sub_29A1DE3A4((a1 + 16));
}

uint64_t sub_29A3AD100(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  return a1;
}

uint64_t sub_29A3AD138(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v22 = *a2;
  sub_29A1E21F4(&v23, v4);
  sub_29A1E2240(&v23 + 1, v4 + 1);
  v24 = *(a2 + 16);
  v25 = 0;
  v26 = 0;
  sub_29A3AD498(&v25, &v22, &v23);
  v5 = bswap64(0x9E3779B97F4A7C55 * v25);
  v6 = *(a1 + 32);
  v7 = v5 & *a1;
  v8 = v6 + 32 * v7;
  if (*(v8 + 4) < 0)
  {
    LOWORD(v9) = 0;
    while (1)
    {
LABEL_10:
      if (v9 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v11 = *(a1 + 48), v11 >= *(a1 + 56)))
      {
        v15 = sub_29A10A428(a1);
        sub_29A3AD4CC(a1, v15);
        *(a1 + 72) = 0;
      }

      else
      {
        if (*(a1 + 73) != 1 || (*(a1 + 73) = 0, v12 = *(a1 + 64), v12 == 0.0) || ((v13 = *(a1 + 40)) == 0 ? (v14 = 0.0) : (v14 = v11 / v13), v14 >= v12))
        {
          v20 = v6 + 32 * v7;
          if (*(v20 + 4) != -1)
          {
            v27 = v9;
            LODWORD(v25) = v5;
            sub_29A3AD6D0(v20, &v27, &v25, &v22);
          }

          *(v20 + 8) = v22;
          sub_29A1DDD84((v20 + 16), &v23);
          sub_29A1DDDC0((v20 + 20), &v23 + 1);
          *(v20 + 24) = v24;
          *v20 = v5;
          *(v20 + 4) = v9;
          ++*(a1 + 48);
          v8 = *(a1 + 32) + 32 * v7;
          goto LABEL_32;
        }

        v16 = *(a1 + 68);
        v17 = vcvtps_u32_f32((v11 + 1) / v16);
        v18 = vcvtps_u32_f32(v11 / v16);
        if (v18 <= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        sub_29A3AD4CC(a1, v19);
      }

      LOWORD(v9) = 0;
      v6 = *(a1 + 32);
      v7 = *a1 & v5;
      if ((*(v6 + 32 * v7 + 4) & 0x80000000) == 0)
      {
        LOWORD(v9) = 0;
        do
        {
          v9 = (v9 + 1);
          v7 = (v7 + 1) & *a1;
        }

        while (v9 <= *(v6 + 32 * v7 + 4));
      }
    }
  }

  LOWORD(v9) = 0;
  while (*(v8 + 8) != v22 || *(v8 + 16) != v23)
  {
    v9 = (v9 + 1);
    v7 = (v7 + 1) & *a1;
    v8 = v6 + 32 * v7;
    if (v9 > *(v8 + 4))
    {
      goto LABEL_10;
    }
  }

LABEL_32:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
  sub_29A1DE3A4(&v23);
  return v8;
}

uint64_t sub_29A3AD498(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  return sub_29A1E33B4(a1, a3);
}

__n128 sub_29A3AD4CC(uint64_t *a1, uint64_t a2)
{
  sub_29A3ACE00(&v19, a2, *(a1 + 16), *(a1 + 17));
  v3 = v22;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 2) != -1)
      {
        if (v3 > 0x100000000)
        {
          v27 = 0;
          v28 = 0;
          sub_29A3AD498(&v27, v4 + 1, v4 + 4);
          v6 = bswap64(0x9E3779B97F4A7C55 * v27);
        }

        else
        {
          v6 = *v4;
        }

        v7 = 0;
        v8 = v19 & v6;
        v29 = 0;
        LODWORD(v27) = v6;
        while (1)
        {
          v9 = *(&v21 + 1) + 32 * v8;
          v10 = *(v9 + 4);
          if (v10 < v7)
          {
            break;
          }

          v29 = ++v7;
          v8 = v19 & (v8 + 1);
        }

        if (v10 != -1)
        {
          sub_29A3AD6D0(*(&v21 + 1) + 32 * v8, &v29, &v27, (v4 + 2));
        }

        v11 = v27;
        *(v9 + 8) = *(v4 + 1);
        sub_29A1DDD84((v9 + 16), v4 + 4);
        sub_29A1DDDC0((v9 + 20), v4 + 5);
        *(v9 + 24) = v4[6];
        *v9 = v11;
        *(v9 + 4) = v7;
      }

      v4 += 8;
    }

    while (v4 != v5);
    v4 = a1[1];
    v5 = a1[2];
    v3 = v22;
  }

  v12 = *a1;
  *a1 = v19;
  v13 = v20;
  v14 = v21;
  v19 = v12;
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *(a1 + 1) = v13;
  v15 = *(a1 + 3);
  *(a1 + 3) = v14;
  v16 = *(a1 + 5);
  a1[5] = v3;
  v21 = v15;
  v22 = v16;
  v17 = v23;
  v23 = a1[7];
  a1[7] = v17;
  *&v14 = v24;
  v24 = a1[8];
  a1[8] = v14;
  LOBYTE(v17) = v25;
  v25 = *(a1 + 72);
  *(a1 + 72) = v17;
  LOBYTE(v17) = v26;
  v26 = *(a1 + 73);
  *(a1 + 73) = v17;
  v27 = &v20;
  sub_29A3ACFD4(&v27);
  return result;
}