uint64_t sub_29A5545F0(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  __src = (a2[1] - *a2) >> 4;
  result = sub_29A4E5264(a1, &__src);
  v5 = *a2;
  for (i = a2[1]; v5 != i; v5 += 16)
  {
    result = sub_29A554A4C(a1, v5);
  }

  return result;
}

uint64_t **sub_29A554660(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  sub_29A23FA5C(&v13, *a2, (*(a2 + 8) - *a2) >> 4);
  v4 = bswap64(0x9E3779B97F4A7C55 * v13);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_29A5548FC(a1, v4, &v13);
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29A5549A8(a1, v10 + 2, a2))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_29A5548D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A5549FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5548FC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
}

void sub_29A55498C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A5549FC(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_29A5549A8(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a3;
  if (v3 - *a2 != *(a3 + 8) - *a3)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    result = v6 == v8 && v7 == v9;
  }

  while (result && v4 != v3);
  return result;
}

void sub_29A5549FC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 2;
    sub_29A23F9D4(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A554A4C(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t a2)
{
  v4 = *(*a1 + 817);
  sub_29A008E78(__p, "A SdfRelocatesMap value was detected which requires crate version 0.11.0.");
  sub_29A531C2C(v4, 0xB00, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(*a1, a2);
  sub_29A4FBF2C(a1, &__src);
  __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(*a1, (a2 + 8));
  return sub_29A4FBF2C(a1, &__src);
}

void sub_29A554AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A554B14(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20599F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A554B60(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20599F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A554B90(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A554C28(v5, &v10, v3, v4);
}

uint64_t sub_29A554BDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A554C28(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A554D68(&v6, v9);
  }

  sub_29A554CB8(a4, v9);
  *&v6 = v9;
  sub_29A23F9D4(&v6);
}

void sub_29A554C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A23F9D4((v15 - 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_29A554CB8(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A346DCC(a1) & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_29A555128(a1);
  }

  result = sub_29A5551F8(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A554D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A23F9D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A554D68(uint64_t a1, int **a2)
{
  v14 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v14))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v14 > v6)
  {
    v9 = "usd/crateFile.cpp";
    v10 = "_Read";
    v11 = 1314;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = std::pair<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v14, v6, v4);
    return 0;
  }

  sub_29A554ED8(&v9, v14);
  if (v14)
  {
    sub_29A554F60(a1);
  }

  if (&v9 != a2)
  {
    sub_29A469A88(a2, v9, v10, (v10 - v9) >> 4);
  }

  v7 = 1;
  v15 = &v9;
  sub_29A23F9D4(&v15);
  return v7;
}

void sub_29A554EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A23F9D4(&a18);
  _Unwind_Resume(a1);
}

void *sub_29A554ED8(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = &v4[4 * a2];
    v6 = 16 * a2;
    do
    {
      v4 = sub_29A3DFDB8(v4) + 4;
      v6 -= 16;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A554F60(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v8[0] = -1;
  v2 = sub_29A4FC36C(a1 + 8, 0, v8);
  if (v2)
  {
    v3 = *(*a1 + 96);
    if (v8[0] >= ((*(*a1 + 104) - v3) >> 3))
    {
      v4 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v2);
    }

    else
    {
      v4 = (v3 + 8 * v8[0]);
    }

    sub_29A2258F0(&v11, v4);
    sub_29A225948(&v12, v4 + 1);
  }

  v8[0] = -1;
  v5 = sub_29A4FC36C(a1 + 8, 0, v8);
  if (v5)
  {
    v6 = *(*a1 + 96);
    if (v8[0] >= ((*(*a1 + 104) - v6) >> 3))
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v5);
    }

    else
    {
      v7 = (v6 + 8 * v8[0]);
    }

    sub_29A2258F0(&v9, v7);
    sub_29A225948(&v10, v7 + 1);
  }

  sub_29A393914(v8, &v11, &v9);
  sub_29A46A260();
}

void sub_29A555108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void sub_29A555128(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29A186978(v2, a1);
  *(a1 + 8) = &off_2A2049080;
  sub_29A23FC78();
}

void sub_29A5551BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A5551F8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC5B4();
  }

  return sub_29A23FB0C(a1);
}

__n128 sub_29A55523C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059A70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A555288(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059A70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5552C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A55530C(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A55538C(v5, &v9, v3, v4);
}

void sub_29A55538C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A55542C(&v6, v9);
  }

  sub_29A554CB8(a4, v9);
  *&v6 = v9;
  sub_29A23F9D4(&v6);
}

void sub_29A555410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A23F9D4((v15 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29A55542C(uint64_t a1, int **a2)
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
    v9 = "usd/crateFile.cpp";
    v10 = "_Read";
    v11 = 1314;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = std::pair<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A554ED8(&v9, __dst);
  if (__dst)
  {
    sub_29A5555A8(a1);
  }

  if (&v9 != a2)
  {
    sub_29A469A88(a2, v9, v10, (v10 - v9) >> 4);
  }

  v7 = 1;
  v15 = &v9;
  sub_29A23F9D4(&v15);
  return v7;
}

void sub_29A555588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A23F9D4(&a18);
  _Unwind_Resume(a1);
}

void sub_29A5555A8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v8[0] = -1;
  v2 = sub_29A4E7A0C(a1 + 8, v8, 4uLL);
  if (v2)
  {
    v3 = *(*a1 + 96);
    if (v8[0] >= ((*(*a1 + 104) - v3) >> 3))
    {
      v4 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v2);
    }

    else
    {
      v4 = (v3 + 8 * v8[0]);
    }

    sub_29A2258F0(&v11, v4);
    sub_29A225948(&v12, v4 + 1);
  }

  v8[0] = -1;
  v5 = sub_29A4E7A0C(a1 + 8, v8, 4uLL);
  if (v5)
  {
    v6 = *(*a1 + 96);
    if (v8[0] >= ((*(*a1 + 104) - v6) >> 3))
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v5);
    }

    else
    {
      v7 = (v6 + 8 * v8[0]);
    }

    sub_29A2258F0(&v9, v7);
    sub_29A225948(&v10, v7 + 1);
  }

  sub_29A393914(v8, &v11, &v9);
  sub_29A46A260();
}

void sub_29A555750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

__n128 sub_29A555778(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059AF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5557C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059AF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5557FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A555848(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A5558F4(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5558D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

void sub_29A5558F4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A5559BC(&v6, v9);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A554CB8(a4, v9);
  v10 = v9;
  sub_29A23F9D4(&v10);
}

void sub_29A55598C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  *(v13 - 24) = &a13;
  sub_29A23F9D4((v13 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29A5559BC(void *a1, int **a2)
{
  v11 = 0;
  if (!sub_29A4E5308(a1 + 1, &v11, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v11 > v6)
  {
    sub_29B2AC620();
    return 0;
  }

  sub_29A554ED8(&v9, v11);
  if (v11)
  {
    sub_29A555B18(a1);
  }

  if (&v9 != a2)
  {
    sub_29A469A88(a2, v9, v10, (v10 - v9) >> 4);
  }

  v7 = 1;
  v12 = &v9;
  sub_29A23F9D4(&v12);
  return v7;
}

void sub_29A555AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29A23F9D4(&a14);
  _Unwind_Resume(a1);
}

void sub_29A555B18(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v8[0] = -1;
  v2 = sub_29A4E5308(a1 + 1, v8, 4uLL);
  if (v2)
  {
    v3 = *(*a1 + 96);
    if (v8[0] >= ((*(*a1 + 104) - v3) >> 3))
    {
      v4 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v2);
    }

    else
    {
      v4 = (v3 + 8 * v8[0]);
    }

    sub_29A2258F0(&v11, v4);
    sub_29A225948(&v12, v4 + 1);
  }

  v8[0] = -1;
  v5 = sub_29A4E5308(a1 + 1, v8, 4uLL);
  if (v5)
  {
    v6 = *(*a1 + 96);
    if (v8[0] >= ((*(*a1 + 104) - v6) >> 3))
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v5);
    }

    else
    {
      v7 = (v6 + 8 * v8[0]);
    }

    sub_29A2258F0(&v9, v7);
    sub_29A225948(&v10, v7 + 1);
  }

  sub_29A393914(v8, &v11, &v9);
  sub_29A46A260();
}

void sub_29A555CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

__n128 sub_29A555CE8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059B70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A555D34(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059B70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A555D78(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A555DC4(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
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

  v18[0] = a2;
  v18[1] = a3;
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v16, v8);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v9 = *a1;
  if (!*a1)
  {
    v10 = operator new(0x28uLL);
    *v10 = 0u;
    v10[1] = 0u;
    *(v10 + 8) = 1065353216;
    sub_29A4E49F0(a1, v10);
    v9 = *a1;
  }

  v15 = 0;
  v11 = sub_29A555FA4(v9, v8, v8, &v15);
  v12 = v11;
  if (v13)
  {
    v11[4] = *(a3 + 2) & 0xFFFFFFFFFFFFLL | 0x3B000000000000;
    sub_29A555EA8(v18, v8);
  }

  return v12[4];
}

void sub_29A555EA8(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v4 = *(*a1 + 817);
  sub_29A008E78(__p, "A spline was detected which requires crate version 0.12.0.");
  sub_29A531C2C(v4, 0xC00, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::GetBinaryData(a2, &v6, &v5);
  __src = v7 - v6;
  sub_29A4E5264(a1, &__src);
  sub_29A4D0BB8(a1, v6, v7 - v6);
  sub_29A5562B8(a1, v5);
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_29A555F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A555FA4(uint64_t a1, pxrInternal__aapl__pxrReserved__::TsSpline *a2, const pxrInternal__aapl__pxrReserved__::TsSpline *a3, void *a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
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

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v8)
          {
            if (pxrInternal__aapl__pxrReserved__::TsSpline::operator==((v14 + 2), a2))
            {
              return v14;
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v15 >= v9)
              {
                v15 %= v9;
              }
            }

            else
            {
              v15 &= v9 - 1;
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

  sub_29A55621C(a1, v8, a3, a4, &v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
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
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v25 >= v9)
        {
          v25 %= v9;
        }
      }

      else
      {
        v25 &= v9 - 1;
      }

      *(*a1 + 8 * v25) = v27;
      v14 = v27;
    }
  }

  ++*(a1 + 24);
  return v14;
}

void sub_29A5561F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A4B1424(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A55621C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::TsSpline *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x28uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(v10 + 2, a3);
  v10[4] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A55629C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A4B1424(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5562B8(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t a2)
{
  __src = *(a2 + 24);
  result = sub_29A4E5264(a1, &__src);
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A4E5264(a1, i + 16);
    result = sub_29A52FA30(a1, (i + 24));
  }

  return result;
}

__n128 sub_29A556324(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059BF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A556370(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059BF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A5563A0(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A556438(v5, &v10, v3, v4);
}

uint64_t sub_29A5563EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A556438(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v11);
  v7 = a2[1];
  v8 = *a2;
  v9 = v7;
  v10 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v9 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A55654C(&v8, &v11);
  }

  sub_29A5564D0(a4, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A5564B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5564D0(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  if ((sub_29A1F1D6C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v6);
    sub_29A55687C(a1, &v6);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  v4 = sub_29A55694C(a1);
  pxrInternal__aapl__pxrReserved__::swap(v4, a2, v5);
}

void sub_29A556534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A55654C(uint64_t *a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (sub_29A55675C(a1, &v10))
  {
    memset(v8, 0, sizeof(v8));
    v9 = 1065353216;
    v4 = sub_29A556640(a1, v8);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::CreateSplineFromBinaryData(&v10, v8, &v6);
      pxrInternal__aapl__pxrReserved__::TsSpline::operator=(a2, &v6);
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    sub_29A1B2944(v8);
  }

  else
  {
    v4 = 0;
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v4;
}

void sub_29A5565FC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1B2944(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    *(v3 - 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29A556640(uint64_t *a1, uint64_t a2)
{
  v10 = 0;
  result = sub_29A4EF670((a1 + 1), 0, &v10);
  if (result)
  {
    if (v10--)
    {
      while (1)
      {
        v9 = 0.0;
        if (!sub_29A4EF670((a1 + 1), 0, &v9))
        {
          sub_29A1B35A8(a2);
          return 0;
        }

        v8 = 0;
        if (!sub_29A52FDDC(a1, &v8))
        {
          break;
        }

        v11 = &v9;
        v6 = sub_29A1BFB28(a2, &v9, &unk_29B4D6118, &v11);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v6 + 3, &v8);
        sub_29A184A10(&v8, 0);
        if (!v10--)
        {
          return 1;
        }
      }

      sub_29A1B35A8(a2);
      sub_29A184A10(&v8, 0);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_29A556744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_29A55675C(uint64_t a1, void **a2)
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
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = unsigned char]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A0104F4(&__p, v16);
  v7 = sub_29A4D3508(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29AA39DA4(a2, __p, v12, v12 - __p);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A556860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A55687C(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A20496D0;
  sub_29A25B92C(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A556910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const pxrInternal__aapl__pxrReserved__::TsSpline *sub_29A55694C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC694();
  }

  return sub_29A25B85C(a1);
}

__n128 sub_29A556990(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059C70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5569DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059C70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A556A14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A556A60(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A556AE0(v5, &v9, v3, v4);
}

void sub_29A556AE0(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v11);
  v7 = a2[1];
  v8 = *a2;
  v9 = v7;
  v10 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v8 + 1) = *(*v9 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A556B88(&v8, &v11);
  }

  sub_29A5564D0(a4, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A556B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A556B88(uint64_t a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (sub_29A556D98(a1, &v10))
  {
    memset(v8, 0, sizeof(v8));
    v9 = 1065353216;
    v4 = sub_29A556C7C(a1, v8);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::CreateSplineFromBinaryData(&v10, v8, &v6);
      pxrInternal__aapl__pxrReserved__::TsSpline::operator=(a2, &v6);
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    sub_29A1B2944(v8);
  }

  else
  {
    v4 = 0;
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v4;
}

void sub_29A556C38(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1B2944(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    *(v3 - 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A556C7C(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  result = sub_29A4E7A0C(a1 + 8, &__dst, 8uLL);
  if (result)
  {
    if (__dst--)
    {
      while (1)
      {
        v9 = 0;
        if ((sub_29A4E7A0C(a1 + 8, &v9, 8uLL) & 1) == 0)
        {
          sub_29A1B35A8(a2);
          return 0;
        }

        v8 = 0;
        if (!sub_29A530B58(a1, &v8))
        {
          break;
        }

        v11 = &v9;
        v6 = sub_29A1BFB28(a2, &v9, &unk_29B4D6118, &v11);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v6 + 3, &v8);
        sub_29A184A10(&v8, 0);
        if (!__dst--)
        {
          return 1;
        }
      }

      sub_29A1B35A8(a2);
      sub_29A184A10(&v8, 0);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_29A556D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A556D98(uint64_t a1, void **a2)
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
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = unsigned char]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A0104F4(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, __dst);
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
    sub_29AA39DA4(a2, __p, v12, v12 - __p);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A556EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A556ECC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059CF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A556F18(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059CF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A556F50(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A556F9C(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A557048(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A557024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

void sub_29A557048(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v11);
  v8 = *a2;
  v7 = *(a2 + 2);
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A557118(&v8, &v11);
    v7 = v9;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29A5564D0(a4, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A5570EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A557118(uint64_t *a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (sub_29A557328(a1, &v10))
  {
    memset(v8, 0, sizeof(v8));
    v9 = 1065353216;
    v4 = sub_29A55720C(a1, v8);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::CreateSplineFromBinaryData(&v10, v8, &v6);
      pxrInternal__aapl__pxrReserved__::TsSpline::operator=(a2, &v6);
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    sub_29A1B2944(v8);
  }

  else
  {
    v4 = 0;
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v4;
}

void sub_29A5571C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1B2944(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    *(v3 - 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A55720C(uint64_t *a1, uint64_t a2)
{
  v10 = 0;
  result = sub_29A4E5308(a1 + 1, &v10, 8uLL);
  if (result)
  {
    if (v10--)
    {
      while (1)
      {
        v9 = 0;
        if ((sub_29A4E5308(a1 + 1, &v9, 8uLL) & 1) == 0)
        {
          sub_29A1B35A8(a2);
          return 0;
        }

        v8 = 0;
        if (!sub_29A5311A0(a1, &v8))
        {
          break;
        }

        v11 = &v9;
        v6 = sub_29A1BFB28(a2, &v9, &unk_29B4D6118, &v11);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v6 + 3, &v8);
        sub_29A184A10(&v8, 0);
        if (!v10--)
        {
          return 1;
        }
      }

      sub_29A1B35A8(a2);
      sub_29A184A10(&v8, 0);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_29A557310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A557328(uint64_t a1, void **a2)
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
    sub_29B2AC700();
    return 0;
  }

  sub_29A0104F4(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, v13);
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
    sub_29AA39DA4(a2, __p, v12, v12 - __p);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A557418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A557480(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, ...)
{
  va_start(va, a4);

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(va, 3, a3);
}

void sub_29A557498(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(va, 3, a3);
}

void sub_29A5574EC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USD_ASSIGN_PROTOTYPES_DETERMINISTICALLY))
  {
    sub_29B2AC774();
  }
}

double pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::Usd_InstanceCache(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 17) = this + 144;
  *(this + 22) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 1065353216;
  *(this + 33) = 0;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 17) = this + 144;
  *(this + 22) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 1065353216;
  *(this + 33) = 0;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::RegisterInstancePrimIndex(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, const pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask *a3, const pxrInternal__aapl__pxrReserved__::UsdStageLoadRules *a4)
{
  v8 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v8)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("InstanceCache::RegisterIndex", 0);
  }

  else
  {
    v9 = 0;
  }

  v25 = v9;
  v26 = v9 != 0;
  if ((pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsInstanceable(a2) & 1) == 0)
  {
    v19[0] = "usd/instanceCache.cpp";
    v19[1] = "RegisterInstancePrimIndex";
    v19[2] = 43;
    v20 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::RegisterInstancePrimIndex(const PcpPrimIndex &, const UsdStagePopulationMask *, const UsdStageLoadRules &)";
    v21 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "index.IsInstanceable()", 0) & 1) == 0)
    {
      v15 = 0;
      if (!v9)
      {
        return v15;
      }

      goto LABEL_14;
    }
  }

  pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::Usd_InstanceKey(v19, a2, a3, a4);
  v10 = sub_29A55B21C(this + 1, v19);
  sub_29A0EB5BC(v18, this);
  v27 = v19;
  v11 = sub_29A55B324(this + 23, v19);
  Path = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPath(a2);
  sub_29A1E28B4((v11 + 19), Path);
  if (v10)
  {
    v13 = v18[0];
    if (v18[0])
    {
      __dmb(0xBu);
      *v13 = 0;
    }

    v14 = sub_29A1EF6EC(this + 112);
    v15 = (this + 120) != v14 && *(v14 + 36) == *pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPath(a2);
  }

  else
  {
    v15 = v11[20] - v11[19] == 8;
    v16 = v18[0];
    if (v18[0])
    {
      __dmb(0xBu);
      *v16 = 0;
    }
  }

  v18[0] = &v24;
  sub_29A559EF0(v18);
  v18[0] = &v23;
  sub_29A1E234C(v18);
  v18[0] = &v22;
  sub_29A4B0280(v18);
  v18[0] = &v20;
  sub_29A0D2770(v18);
  v18[0] = v19;
  sub_29A466A6C(v18);
  v9 = v25;
  if (v25)
  {
LABEL_14:
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v9);
  }

  return v15;
}

void **sub_29A557870(void **a1)
{
  v3 = a1 + 13;
  sub_29A559EF0(&v3);
  v3 = a1 + 10;
  sub_29A1E234C(&v3);
  v3 = a1 + 7;
  sub_29A4B0280(&v3);
  v3 = a1 + 3;
  sub_29A0D2770(&v3);
  v3 = a1;
  sub_29A466A6C(&v3);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::UnregisterInstancePrimIndexesUnder(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v3)
  {
    result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("InstanceCache::UnregisterIndex", 0);
  }

  else
  {
    result = 0;
  }

  if (*(this + 21))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(result != 0, result);
  }

  return result;
}

void sub_29A557A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::ProcessChanges(void *a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("InstanceCache::ProcessChanges", 0);
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  v23 = v5 != 0;
  v6 = a1 + 30;
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  for (i = (a1 + 30); ; pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_RemoveInstances(a1, i + 2, i + 19, a2, v20))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    if (sub_29A55B21C(a1 + 23, i + 2))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
    }
  }

  v8 = atomic_load(pxrInternal__aapl__pxrReserved__::USD_ASSIGN_PROTOTYPES_DETERMINISTICALLY);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v8 != 1)
  {
    if (a1[25])
    {
      pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_CreateOrUpdatePrototypeForInstances();
    }

    goto LABEL_24;
  }

  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v9 = a1[25];
  if (!v9)
  {
    goto LABEL_23;
  }

  do
  {
    v10 = v9[19];
    if (v10 == v9[20])
    {
      v13 = "usd/instanceCache.cpp";
      v14 = "ProcessChanges";
      v15 = 158;
      v16 = "void pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::ProcessChanges(Usd_InstanceChanges *)";
      v17 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "!primIndexes.empty()", 0))
      {
        goto LABEL_15;
      }

      v10 = v9[19];
    }

    sub_29A55B85C(&v18, v10, v10);
    if ((v11 & 1) == 0)
    {
      v13 = "usd/instanceCache.cpp";
      v14 = "ProcessChanges";
      v15 = 160;
      v16 = "void pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::ProcessChanges(Usd_InstanceChanges *)";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "keysToProcess.emplace(primIndexes.front(), key).second", 0);
    }

LABEL_15:
    v9 = *v9;
  }

  while (v9);
  if (v18 != v19)
  {
    v13 = (v18 + 5);
    sub_29A55B324(a1 + 23, v18 + 5);
    pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_CreateOrUpdatePrototypeForInstances();
  }

LABEL_23:
  sub_29A55B800(&v18, v19[0]);
LABEL_24:
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_RemovePrototypeIfNoInstances(a1, v6 + 2, a2);
  }

  sub_29A55BA18((a1 + 23));
  sub_29A55BA18((a1 + 28));
  result = sub_29A55B678(v20);
  if (v22)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }

  return result;
}

void sub_29A557E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_29A55B678(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_RemoveInstances(void *result, uint64_t *a2, pxrInternal__aapl__pxrReserved__::SdfPath **a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != a3[1])
  {
    v8 = result;
    result = sub_29A55B21C(result + 1, a2);
    if (result)
    {
      v9 = result;
      v32 = a4;
      v10 = result + 19;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v35);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v36);
      v33[0] = v10;
      v11 = sub_29A55C168(v8 + 17, v10, &unk_29B4D6118, v33);
      v13 = *a3;
      v12 = a3[1];
      if (*a3 != v12)
      {
        do
        {
          v15 = *(v11 + 5);
          v14 = *(v11 + 6);
          if (v15 != v14)
          {
            while (*v15 != *v13)
            {
              if (++v15 == v14)
              {
                goto LABEL_15;
              }
            }
          }

          if (v15 != v14)
          {
            if (sub_29A4AF3EC(4))
            {
              Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
              v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v10);
              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Instancing: Removed instance prim index <%s> for prototype <%s>\n", v18, v19, Text, v17);
            }

            sub_29A31BE88(v33, (v15 + 1), *(v11 + 6));
            v21 = v20;
            for (i = *(v11 + 6); i != v21; sub_29A1E230C((v11 + 10), i))
            {
              i -= 2;
            }

            *(v11 + 6) = v21;
            sub_29A384C8C(v8 + 20);
          }

LABEL_15:
          sub_29A1EF6EC((v8 + 14));
          if (sub_29A384C8C(v8 + 11))
          {
            if (!sub_29A384C8C(v8 + 14))
            {
              v33[0] = "usd/instanceCache.cpp";
              v33[1] = "_RemoveInstances";
              v33[2] = 345;
              v33[3] = "void pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_RemoveInstances(const Usd_InstanceKey &, const _PrimIndexPaths &, Usd_InstanceChanges *, std::unordered_map<SdfPath, SdfPath, SdfPath::Hash> *)";
              v34 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v33, "_prototypeToSourcePrimIndexMap.erase(prototypePath)", 0);
            }

            sub_29A2258F0(&v35, v13);
            sub_29A225948(&v36, v13 + 1);
          }

          v13 = (v13 + 8);
        }

        while (v13 != v12);
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v35))
      {
        v23 = *(v11 + 5);
        if (v23 == *(v11 + 6))
        {
          v33[0] = v10;
          v31 = sub_29A55CB38(a5, v10, &unk_29B4D6118, v33);
          sub_29A2258F0(v31 + 6, &v35);
          sub_29A225948(v31 + 7, &v36);
        }

        else
        {
          if (sub_29A4AF3EC(4))
          {
            v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v35);
            v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v23);
            v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v10);
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Instancing: Changing source <%s> -> <%s> for <%s>\n", v27, v28, v24, v25, v26, a5);
          }

          v33[0] = v23;
          v29 = sub_29A326108(v8 + 11, v23, &unk_29B4D6118, v33);
          sub_29A2258F0(v29 + 9, v10);
          sub_29A225948(v29 + 10, v9 + 39);
          v33[0] = v10;
          v30 = sub_29A326108(v8 + 14, v10, &unk_29B4D6118, v33);
          sub_29A2258F0(v30 + 9, v23);
          sub_29A225948(v30 + 10, v23 + 1);
          sub_29A1E28B4(v32 + 48, v10);
          sub_29A1E28B4(v32 + 72, v23);
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36);
      return sub_29A1DE3A4(&v35);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_CreateOrUpdatePrototypeForInstances()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v0 + 1);
  sub_29A559FB8(v1);
}

void pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_RemovePrototypeIfNoInstances(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_29A55B21C((a1 + 8), a2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_29A55CDFC(a1 + 136);
    if ((a1 + 144) != v7 || (sub_29B2AC7A8(v11)) && v7[5] == v7[6])
    {
      if (sub_29A4AF3EC(4))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v6 + 19));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Instancing: Removing prototype <%s>\n", v9, v10, Text);
      }

      sub_29A1E28B4(a3 + 96, v6 + 38);
      sub_29A55CE80((a1 + 48), v6 + 38);
      sub_29A55CF14((a1 + 8), v6);
      sub_29A03AFE8((a1 + 136), v7);
      sub_29A55B1D0((v7 + 4));
      operator delete(v7);
    }
  }
}

uint64_t sub_29A558988(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 140));
  sub_29A1DE3A4((a1 + 136));
  v3 = (a1 + 104);
  sub_29A559EF0(&v3);
  v3 = (a1 + 80);
  sub_29A1E234C(&v3);
  v3 = (a1 + 56);
  sub_29A4B0280(&v3);
  v3 = (a1 + 24);
  sub_29A0D2770(&v3);
  v3 = a1;
  sub_29A466A6C(&v3);
  return a1;
}

uint64_t sub_29A558A14(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 140));
  sub_29A1DE3A4((a1 + 136));
  v3 = (a1 + 104);
  sub_29A559EF0(&v3);
  v3 = (a1 + 80);
  sub_29A1E234C(&v3);
  v3 = (a1 + 56);
  sub_29A4B0280(&v3);
  v3 = (a1 + 24);
  sub_29A0D2770(&v3);
  v3 = a1;
  sub_29A466A6C(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_GetNextPrototypePath(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, _DWORD *a2@<X8>)
{
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v6 = *(this + 33) + 1;
  *(this + 33) = v6;
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("__Prototype_%zu", v7, v8, v6);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v5, &v11, a2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A558B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A558B7C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    sub_29A55A678(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
    sub_29A55A8F0(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
    v4 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    sub_29A55AAD0(a1 + 56, v4, *(a2 + 64), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 64) - v4) >> 4));
    sub_29A324D54(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_29A55AF7C(a1 + 104, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 2));
  }

  *(a1 + 128) = *(a2 + 128);
  return a1;
}

void sub_29A558C64(pxrInternal__aapl__pxrReserved__::PcpInstanceKey *a1)
{
  sub_29A00B6DC(&v6);
  v2 = *(v6 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v6 + v2));
  std::ios_base::imbue((&v6 + v2), v3);
  std::locale::~locale(&v8);
  v4 = *(&v6 + v2 + 40);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v7, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, a1);
}

void sub_29A558E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::IsPathInPrototype(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
  if (!v3 || *this == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3))
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this))
  {
    v11[0] = "usd/instanceCache.cpp";
    v11[1] = "IsPathInPrototype";
    v11[2] = 430;
    v11[3] = "static BOOL pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::IsPathInPrototype(const SdfPath &)";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "IsPathInPrototype() requires an absolute path but was given <%s>", Text);
    return 0;
  }

  sub_29A1E21F4(v11, this);
  sub_29A1E2240(v11 + 1, this + 1);
  if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(v11) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v11, &v10);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v11);
  v8 = *(Name + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = Name[1];
  }

  if (v8 >= 0xC)
  {
    if (v9 < 0)
    {
      Name = *Name;
    }

    v5 = strncmp(Name, "__Prototype_", 0xCuLL) == 0;
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
  sub_29A1DE3A4(v11);
  return v5;
}

void sub_29A558FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::IsPrototypePath(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(this);
  if (result)
  {
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
    v5 = *(Name + 23);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = Name[1];
    }

    if (v5 >= 0xC)
    {
      if (v6 < 0)
      {
        Name = *Name;
      }

      return strncmp(Name, "__Prototype_", 0xCuLL) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetInstancePrimIndexesForPrototype@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, void *a2@<X8>)
{
  result = sub_29A55CDFC(this + 136);
  if ((this + 144) != result)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetAllPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_29A2FCAE8(a2, *(this + 4));
  for (i = this + 24; ; result = sub_29A1E28B4(a2, i + 38))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return result;
}

void sub_29A55915C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetPrototypeUsingPrimIndexPath@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_29A1EF6EC(this + 88);
  if ((this + 96) == v5)
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  else
  {
    v6 = v5;
    sub_29A1E21F4(a2, v5 + 9);

    return sub_29A1E2240(a2 + 1, v6 + 10);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_PrototypeUsesPrimIndexPath(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  sub_29A1E21F4(&v16, a2);
  v6 = sub_29A1E2240(&v16 + 1, a2 + 1);
  v11 = 0;
  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
  if (v16 != *v7)
  {
    sub_29A1E21F4(&v14, &v16);
    sub_29A1E2240(&v15, &v16 + 1);
    v8 = sub_29A391F3C((a1 + 160), &v14, 0, v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    if ((a1 + 168) != v8)
    {
      v9 = sub_29A1EF6EC(a1 + 112);
      if (a1 + 120 != v9 || (v12[0] = "usd/instanceCache.cpp", v12[1] = "_PrototypeUsesPrimIndexPath", v12[2] = 601, v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_PrototypeUsesPrimIndexPath(const SdfPath &, vector<SdfPath> *) const", v13 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "prototypeToSourceIt != _prototypeToSourcePrimIndexMap.end()", 0) & 1) != 0))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v16, (v9 + 36)))
        {
          if (!a3)
          {
            v11 = 1;
            goto LABEL_12;
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v12, a2, (v9 + 36), (v9 + 28), 1);
          sub_29A377BD0(a3, v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 1);
          sub_29A1DE3A4(v12);
          v11 = 1;
        }

        if (*(v8 + 28) == v16)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v8 + 28), v12);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

LABEL_12:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
  sub_29A1DE3A4(&v16);
  return v11 & 1;
}

void sub_29A559418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetPrimsInPrototypesUsingPrimIndexPath@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::_PrototypeUsesPrimIndexPath(this, a2, a3);
}

void sub_29A5594A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetPrototypesUsingPrimIndexPathOrDescendents@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 96))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return this;
}

void sub_29A559674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  sub_29A23F9D4(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A5596AC(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    v5 = sub_29A4726CC(a1, a2, a3);
  }

  else
  {
    v5 = sub_29A4727E0(v4, a2, a3) + 4;
  }

  *(a1 + 8) = v5;
  return v5 - 4;
}

void *sub_29A55972C(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1))
  {
    return (a1 + 8);
  }

  else
  {
    return sub_29A391F3C(a1, a2, 1, &v5);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetMostAncestralInstancePath@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  sub_29A1E21F4(&v12, a2);
  sub_29A1E2240(&v12 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
  if (v12 != *v7)
  {
    v8 = sub_29A55972C((this + 160), &v12);
    v9 = v8;
    if ((this + 168) != v8)
    {
      sub_29A2258F0(a3, v8 + 7);
      sub_29A225948(a3 + 1, v9 + 8);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v9 + 7), &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  return sub_29A1DE3A4(&v12);
}

void sub_29A5598A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(v2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetPrototypeForInstanceablePrimIndexPath@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_29A1EF6EC(this + 160);
  if ((this + 168) == v5)
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  else
  {
    v6 = v5;
    sub_29A1E21F4(a2, v5 + 9);

    return sub_29A1E2240(a2 + 1, v6 + 10);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetPathInPrototypeForInstancePath@<X0>(pxrInternal__aapl__pxrReserved__::Usd_InstanceCache *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  if (pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::IsPathInPrototype(a2, v6))
  {
    v7 = (this + 120);
    if (*(this + 15))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    if (v7 != *(this + 14))
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v9 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (v10);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v16, a2, (v9 + 28), (v9 + 36), 1);
      if (v16[0] != *a2)
      {
        sub_29A2258F0(&v20, v16);
        sub_29A225948(&v21, v16 + 1);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v16 + 1);
      sub_29A1DE3A4(v16);
    }
  }

  else
  {
    sub_29A2258F0(&v20, a2);
    sub_29A225948(&v21, a2 + 1);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v20))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    sub_29A1E21F4(&v18, &v20);
    sub_29A1E2240(&v19, &v21);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v18))
    {
      v11 = sub_29A55972C((this + 160), &v18);
      if ((this + 168) != v11)
      {
        v12 = sub_29A1EF6EC(this + 112);
        if (this + 120) != v12 || (v16[0] = "usd/instanceCache.cpp", v16[1] = "GetPathInPrototypeForInstancePath", v16[2] = 766, v16[3] = "SdfPath pxrInternal__aapl__pxrReserved__::Usd_InstanceCache::GetPathInPrototypeForInstancePath(const SdfPath &) const", v17 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v16, "prototypeToSourceIt != _prototypeToSourcePrimIndexMap.end()", 0)))
        {
          v14 = *(v12 + 36);
          v13 = (v12 + 36);
          if (*(v11 + 28) != v14)
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v16, &v18, (v11 + 28), v13, 1);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v16, &v18, (v11 + 28), (v11 + 36), 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
    sub_29A1DE3A4(&v18);
  }

  else
  {
    sub_29A1DDD84(a3, &v20);
    sub_29A1DDDC0(a3 + 1, &v21);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  return sub_29A1DE3A4(&v20);
}

void sub_29A559C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(v7);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void sub_29A559CCC(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A559D10(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A559D10(void **a1)
{
  v2 = a1 + 17;
  sub_29A1E234C(&v2);
  v2 = a1 + 13;
  sub_29A559EF0(&v2);
  v2 = a1 + 10;
  sub_29A1E234C(&v2);
  v2 = a1 + 7;
  sub_29A4B0280(&v2);
  v2 = a1 + 3;
  sub_29A0D2770(&v2);
  v2 = a1;
  sub_29A466A6C(&v2);
}

_DWORD *sub_29A559D94(uint64_t a1)
{
  v2 = (a1 + 8);
  v4 = (a1 + 112);
  sub_29A559EF0(&v4);
  v4 = (a1 + 88);
  sub_29A1E234C(&v4);
  v4 = (a1 + 64);
  sub_29A4B0280(&v4);
  v4 = (a1 + 32);
  sub_29A0D2770(&v4);
  v4 = v2;
  sub_29A466A6C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29A559E20(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 140));
  sub_29A1DE3A4((a1 + 136));
  v2 = (a1 + 104);
  sub_29A559EF0(&v2);
  v2 = (a1 + 80);
  sub_29A1E234C(&v2);
  v2 = (a1 + 56);
  sub_29A4B0280(&v2);
  v2 = (a1 + 24);
  sub_29A0D2770(&v2);
  v2 = a1;
  sub_29A466A6C(&v2);
}

void **sub_29A559EA8(void **a1)
{
  v3 = a1 + 3;
  sub_29A0D2770(&v3);
  v3 = a1;
  sub_29A466A6C(&v3);
  return a1;
}

void sub_29A559EF0(void ***a1)
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
        sub_29A559F78(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A559F78(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

void sub_29A559FFC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>();
}

void sub_29A55A110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  sub_29A4B0280(va);
  sub_29A559EA8(v2);
  _Unwind_Resume(a1);
}

char *sub_29A55A160(void *a1, unint64_t a2)
{
  if (a2 >= 0x24924924924924ALL)
  {
    sub_29A00C9A4();
  }

  result = sub_29A466E98(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[112 * v4];
  return result;
}

uint64_t sub_29A55A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = *a2;
    sub_29B2A5A80((a4 + 8), (a2 + 8));
  }

  v7 = 1;
  sub_29A466FD0(v6);
  return a4;
}

char *sub_29A55A26C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A34CA60(v4, v6);
      v6 += 3;
      v4 = v11 + 48;
      v11 += 48;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A4674EC(v8);
  return v4;
}

void *sub_29A55A310(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A55A398(result, a4);
    result = sub_29A55A3E0(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A55A378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A4B0280(&a9);
  _Unwind_Resume(a1);
}

char *sub_29A55A398(void *a1, unint64_t a2)
{
  if (a2 >= 0xF0F0F0F0F0F0F1)
  {
    sub_29A00C9A4();
  }

  result = sub_29A4BBBB4(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[272 * v4];
  return result;
}

uint64_t sub_29A55A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29A4BBC9C(a4, v6);
      v6 += 272;
      a4 += 272;
      v7 -= 272;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29A55A440(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 272;
    do
    {
      v4 = sub_29A4B0304(v4) - 272;
      v2 += 272;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A55A464(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A1E21F4(v4, v6);
      sub_29A1E2240(v4 + 1, v6 + 1);
      v4[2] = v6[2];
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A55A508(v8);
  return v4;
}

uint64_t sub_29A55A508(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A55A540(a1);
  }

  return a1;
}

uint64_t *sub_29A55A540(uint64_t *result)
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
      v3 -= 3;
      result = sub_29A559F78(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29A55A594(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a1 + 128) = v5;
  sub_29A1DDD84((a1 + 136), (a2 + 136));
  sub_29A1DDDC0((a1 + 140), (a2 + 140));
  return a1;
}

uint64_t sub_29A55A678(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29A55A7F8(a1);
    if (a4 > 0x249249249249249)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
    {
      v10 = 0x249249249249249;
    }

    else
    {
      v10 = v9;
    }

    sub_29A55A160(a1, v10);
    result = sub_29A55A1B0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 4) < a4)
  {
    sub_29A55A864(&v16, a2, a2 + v12, v8);
    result = sub_29A55A1B0(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29A55A864(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 112;
      result = sub_29A466AF4(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29A55A7F8(void **a1)
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
        v3 -= 112;
        sub_29A466AF4(a1, v3);
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

uint64_t sub_29A55A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(a4 + 8, v5 + 8);
    sub_29A2258F0((a4 + 88), (v5 + 88));
    sub_29A225948((a4 + 92), (v5 + 92));
    *(a4 + 96) = *(v5 + 96);
    a4 += 112;
    v5 += 112;
  }

  while (v5 != v6);
  return v6;
}

void sub_29A55A8F0(uint64_t a1, std::string *__str, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29A46731C(a1);
    if (a4 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    sub_29A1C11FC(a1, v10);
    v11 = sub_29A55A26C(a1, __str, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 4) < a4)
  {
    sub_29A55AA60(&v16, __str, (__str + v12), v8);
    v11 = sub_29A55A26C(a1, (__str + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A55AA60(&v17, __str, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 48;
      sub_29A0D27F8(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

std::string *sub_29A55AA60(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29A55AAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29A55AC38(a1);
    if (a4 > 0xF0F0F0F0F0F0F0)
    {
      sub_29A00C9A4();
    }

    v9 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
    {
      v10 = 0xF0F0F0F0F0F0F0;
    }

    else
    {
      v10 = v9;
    }

    sub_29A55A398(a1, v10);
    result = sub_29A55A3E0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xF0F0F0F0F0F0F0F1 * (v12 >> 4) < a4)
  {
    sub_29A55AC98(&v15, a2, a2 + v12, v8);
    result = sub_29A55A3E0(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  sub_29A55AC98(&v16, a2, a3, v8);
  v14 = v13;
  result = *(a1 + 8);
  if (result != v13)
  {
    do
    {
      result = sub_29A4B0304(result - 272);
    }

    while (result != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29A55AC38(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_29A4B0304(v3 - 272);
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

uint64_t sub_29A55AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A55AD68(a4, v5);
    sub_29A55ADF8((a4 + 48), (v5 + 48));
    sub_29A3DF8B0((a4 + 104), (v5 + 104));
    sub_29A55AEEC((a4 + 136), (v5 + 136));
    sub_29A55AEEC((a4 + 184), (v5 + 184));
    *(a4 + 232) = *(v5 + 232);
    *(a4 + 240) = *(v5 + 240);
    sub_29B28FD1C((a4 + 248), (v5 + 248));
    sub_29A2258F0((a4 + 256), (v5 + 256));
    sub_29A225948((a4 + 260), (v5 + 260));
    *(a4 + 264) = *(v5 + 264);
    a4 += 272;
    v5 += 272;
  }

  while (v5 != v6);
  return v6;
}

void sub_29A55AD68(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      sub_29A4AC1F0(a1, a2);
    }
  }

  else if (*(a1 + 40))
  {
    sub_29A55ADC0(a1);
  }

  else
  {
    v2 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v2;
    v3 = *(a2 + 4);
    *(a1 + 32) = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(a1 + 24))
      {
        v4 = *(a1 + 24);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = 1;
  }
}

void sub_29A55ADC0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    sub_29A216064(a1);
    *(a1 + 40) = 0;
  }
}

void sub_29A55ADF8(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[0] == __str[2].__r_.__value_.__s.__data_[0])
  {
    if (__dst[2].__r_.__value_.__s.__data_[0])
    {
      std::string::operator=(__dst, __str);

      std::string::operator=(__dst + 1, __str + 1);
    }
  }

  else if (__dst[2].__r_.__value_.__s.__data_[0])
  {

    sub_29A55AE98(__dst);
  }

  else
  {
    sub_29A4BBDB0(__dst, __str);
    __dst[2].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_29A55AE98(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }
}

__int128 *sub_29A55AEEC(__int128 *result, __int128 *a2)
{
  if (*(result + 40) == *(a2 + 40))
  {
    if (*(result + 40))
    {
      return sub_29A4AD84C(result, a2);
    }
  }

  else if (*(result + 40))
  {
    return sub_29A55AF44(result);
  }

  else
  {
    v2 = a2[1];
    *result = *a2;
    result[1] = v2;
    v3 = *(a2 + 4);
    *(result + 4) = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(result + 3))
      {
        v4 = *(result + 3);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    *(result + 40) = 1;
  }

  return result;
}

uint64_t sub_29A55AF44(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  return result;
}

_DWORD *sub_29A55AF7C(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) < a4)
  {
    sub_29A55B0EC(a1);
    if (a4 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v9;
    }

    sub_29A379A04(a1, v10);
    result = sub_29A55A464(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 2) < a4)
  {
    sub_29A55B158(&v16, a2, (a2 + v12), v8);
    result = sub_29A55A464(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29A55B158(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 3;
      result = sub_29A559F78(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29A55B0EC(void *a1)
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
        v3 -= 3;
        sub_29A559F78(a1, v3);
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

_DWORD *sub_29A55B158(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, v5);
    sub_29A225948(a4 + 1, v5 + 1);
    a4[2] = v5[2];
    a4 += 3;
    v5 += 3;
  }

  while (v5 != v6);
  return v6;
}

_DWORD *sub_29A55B1D0(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void *sub_29A55B21C(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = bswap64(0x9E3779B97F4A7C55 * a2[16]);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v10 == v4)
      {
        if (pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::operator==(v9 + 2, a2))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_29A55B324(void *a1, uint64_t *a2)
{
  v3 = bswap64(0x9E3779B97F4A7C55 * a2[16]);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_29A55B598(a1, v3, v13);
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::operator==(v10 + 2, a2))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_29A55B580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A55B61C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A55B598(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  sub_29A559FFC(v6 + 2);
}

void sub_29A55B61C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A559D10(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A55B678(uint64_t a1)
{
  sub_29A55B6B4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A55B6B4(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A1EF8E4(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A55B6F8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1 == *a2)
  {
    return *a1;
  }

  if (*a3 != *a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v7 = *a5;
  while (v5 != v6)
  {
    sub_29A1E28B4(v7, v5);
    v5 += 2;
  }

  return v6;
}

void sub_29A55B800(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A55B800(a1, *a2);
    sub_29A55B800(a1, a2[1]);
    sub_29A559D94((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_29A55B85C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = *sub_29A38932C(a1, &v7);
  if (!result)
  {
    sub_29A55B8E4(a1, a3, v6);
  }

  return result;
}

void sub_29A55B8E4(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  sub_29A55B958(v6 + 32, a2);
}

void sub_29A55B958(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29A559FFC((a1 + 8));
}

void sub_29A55B9BC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A559D94(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A55BA18(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A559CCC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_29A55BA74(void *a1, uint64_t *a2)
{
  v3 = bswap64(0x9E3779B97F4A7C55 * a2[16]);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_29A55BCD8(a1, v3, v13);
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::operator==(v10 + 2, a2))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_29A55BCC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A55BD8C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A55BCD8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  sub_29A55BD48(v6 + 2);
}

void sub_29A55BD8C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A559E20(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A55BDE8(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29A55C030(a1, v6, a4, &v22);
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

void sub_29A55C018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A55C10C(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A55C030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xA0uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A55C0B4(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29A55C0B4(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::Usd_InstanceKey((a1 + 2));
  return a1;
}

void sub_29A55C10C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A559D94(v2 + 16);
    }

    operator delete(v2);
  }
}

_DWORD *sub_29A55C168(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x40uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 8, v9);
    sub_29A1E2240(v7 + 9, v9 + 1);
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 7) = 0;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

void sub_29A55C208(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a2 - a1) >> 3;
  v9 = (a3 - a2) >> 3;
  if (v9 >= v8)
  {
    v10 = (a2 - a1) >> 3;
  }

  else
  {
    v10 = (a3 - a2) >> 3;
  }

  if (v10 < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = MEMORY[0x29EDC9418];
    while (1)
    {
      v12 = operator new(8 * v10, v11);
      if (v12)
      {
        break;
      }

      v13 = v10 >> 1;
      v14 = v10 > 1;
      v10 >>= 1;
      if (!v14)
      {
        v15 = 0;
        v10 = v13;
        goto LABEL_11;
      }
    }

    v15 = v12;
  }

LABEL_11:
  sub_29A55C324(a1, a2, a3, a4, v8, v9, v15, v10);
  if (v15)
  {

    operator delete(v15);
  }
}

void sub_29A55C30C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29A55C324(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  if (a6)
  {
    if (a6 <= a8 || a5 <= a8)
    {
      return sub_29A55C5C8(result, a2, a3, a4, a5, a6, a7);
    }

    else if (a5)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  return result;
}

unint64_t *sub_29A55C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  if (a5 <= a6)
  {
    if (a1 == a2)
    {
      v13 = 0;
      v14 = a7;
    }

    else
    {
      v13 = 0;
      v14 = a7;
      v17 = a1;
      do
      {
        sub_29A1DDD84(v14, v17);
        sub_29A1DDDC0(v14 + 1, v17 + 1);
        ++v13;
        v17 += 2;
        v14 += 2;
      }

      while (v17 != a2);
    }

    v18 = v13;
    result = sub_29A55C7B8(a7, v14, a2, a3);
  }

  else
  {
    if (a2 == a3)
    {
      v11 = 0;
      v12 = a7;
    }

    else
    {
      v11 = 0;
      v12 = a7;
      v15 = a2;
      do
      {
        sub_29A1DDD84(v12, v15);
        sub_29A1DDDC0(v12 + 1, v15 + 1);
        ++v11;
        v15 += 2;
        v12 += 2;
      }

      while (v15 != a3);
    }

    v18 = v11;
    result = sub_29A55C884(v12, v12, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    return sub_29A55C9FC(&v18, a7);
  }

  return result;
}

void sub_29A55C720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  if (v14)
  {
    sub_29A55C9FC(&a14, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A55C740(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

uint64_t sub_29A55C7B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v7 = v4;
    v8 = v5;
    if (a3 != a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    return sub_29A31BE88(&v6, result, a2);
  }

  return result;
}

uint64_t sub_29A55C884(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    if (a6 != a8)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    return sub_29A55C968(result, a2, a4, a9, a10, v10);
  }

  return result;
}

uint64_t sub_29A55C968@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  *a6 = result;
  a6[1] = a2;
  a6[2] = a4;
  a6[3] = a5;
  return result;
}

unint64_t *sub_29A55C9FC(unint64_t *result, _DWORD *a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);
      result = sub_29A1DE3A4(a2);
      ++v4;
      a2 += 2;
    }

    while (v4 < *v3);
  }

  return result;
}

int *sub_29A55CA5C(int *a1, int *a2, int *a3)
{
  v4 = a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, v4 + 1);
  v6 = a1 + 2;
  for (i = v4 + 2; i != a3; i += 2)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v6, i);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v6 + 1, i + 1);
    v6 += 2;
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v8, v9);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v8 + 1, v9 + 1);
        v8 += 2;
        v9 += 2;
        if (v9 == a3)
        {
          break;
        }

        if (v8 == v4)
        {
          v4 = v9;
        }
      }

      v9 = v4;
    }

    while (v8 != v4);
  }

  return v6;
}

void *sub_29A55CB38(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            if (v11[2] == *a2)
            {
              return v11;
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

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v11 = operator new(0x20uLL);
  *v11 = 0;
  v11[1] = v7;
  v23 = *a4;
  sub_29A32619C(v11 + 4, &v23);
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

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    *v11 = *v20;
LABEL_38:
    *v20 = v11;
    goto LABEL_39;
  }

  *v11 = *(a1 + 16);
  *(a1 + 16) = v11;
  *(v19 + 8 * v4) = a1 + 16;
  if (*v11)
  {
    v21 = *(*v11 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v11;
}

void sub_29A55CD88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A55CDA0(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A55CDA0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A1EF8E4(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A55CDFC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return a1 + 8;
}

uint64_t *sub_29A55CE80(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29A55CEB8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A55CEB8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A559D94(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29A55CF14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A559E20(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

pxrInternal__aapl__pxrReserved__::Usd_InstanceKey *pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::Usd_InstanceKey(pxrInternal__aapl__pxrReserved__::Usd_InstanceKey *this)
{
  pxrInternal__aapl__pxrReserved__::PcpInstanceKey::PcpInstanceKey(this);
  *(v2 + 56) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  v4 = 0;
  v5 = 0;
  sub_29A55E428(&v4, this, (v2 + 56), (v2 + 80), (v2 + 104));
  *(this + 16) = bswap64(0x9E3779B97F4A7C55 * v4);
  return this;
}

void sub_29A55D014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A559EF0(va);
  sub_29A1E234C(va);
  sub_29A4B0280(va);
  sub_29A559EA8(v4);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::_ComputeHash(pxrInternal__aapl__pxrReserved__::Usd_InstanceKey *this)
{
  v2 = 0;
  v3 = 0;
  sub_29A55E428(&v2, this, this + 7, this + 10, (this + 104));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

void pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::Usd_InstanceKey(pxrInternal__aapl__pxrReserved__::Usd_InstanceKey *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, const pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask *a3, const pxrInternal__aapl__pxrReserved__::UsdStageLoadRules *a4)
{
  v6 = pxrInternal__aapl__pxrReserved__::PcpInstanceKey::PcpInstanceKey(this, a2);
  *(v6 + 56) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  pxrInternal__aapl__pxrReserved__::Usd_ComputeClipSetDefinitionsForPrimIndex(a2, (v6 + 56), 0);
  if (a3)
  {
    Path = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPath(a2);
    pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(Path);
    pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask::GetPaths(&v9);
  }

  sub_29A55D624(v7, &v9);
}

void sub_29A55D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  sub_29A559EF0(&a11);
  a11 = a10;
  sub_29A1E234C(&a11);
  sub_29A4B0280(&a11);
  sub_29A559EA8(v11);
  _Unwind_Resume(a1);
}

void sub_29A55D624(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X8>)
{
  memset(v4, 0, sizeof(v4));
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  sub_29A55D8E4(v4, v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A55D690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_InstanceKey::operator==(uint64_t *a1, uint64_t *a2)
{
  if (a1[16] != a2[16])
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::PcpInstanceKey::operator==(a1, a2))
  {
    return 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  v6 = a2[7];
  if (v5 - v4 != a2[8] - v6)
  {
    return 0;
  }

  while (v4 != v5)
  {
    if (!sub_29A55E234(v4, v6))
    {
      return 0;
    }

    v4 += 272;
    v6 += 272;
  }

  v8 = a1[10];
  v7 = a1[11];
  v9 = a2[10];
  if (v7 - v8 != a2[11] - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    v8 += 8;
    ++v9;
  }

  return pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::operator==(a1 + 13, a2 + 13);
}

void pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::PcpInstanceKey *a2)
{
  v3 = sub_29A00911C(a1, "_pcpInstanceKey:\n", 17);
  pxrInternal__aapl__pxrReserved__::PcpInstanceKey::GetString(a2, __p);
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v11 = 10;
  v7 = sub_29A00911C(v6, &v11, 1);
  v8 = sub_29A00911C(v7, "_mask: ", 7);
  pxrInternal__aapl__pxrReserved__::operator<<(v8);
}

void sub_29A55D8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask *sub_29A55D8E4(pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask::GetUnion(a1, a2, &v4);
  sub_29A1E23D4(a1);
  *a1 = v4;
  *(a1 + 2) = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  sub_29A1E234C(&v6);
  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfPath **sub_29A55D948(pxrInternal__aapl__pxrReserved__::SdfPath **a1, char *a2, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A55D9A8(a1, a2, a3, (a3 - a2) >> 3);
  pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask::_ValidateAndNormalize(a1);
  return a1;
}

void sub_29A55D990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void *sub_29A55D9A8(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29A1E2158(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A55DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A55DA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_29A55DC8C(&v9, a3, *(a1 + 8));
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 3;
        sub_29A559F78(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

char *sub_29A55DAB4(void *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v6 = a2;
  v9 = a1[1];
  v8 = a1[2];
  if (v9 >= v8)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 2) + 1;
    if (v11 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v12 = &a2[-v10];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 2);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 2) + 1;
    }

    if (v13 >= 0xAAAAAAAAAAAAAAALL)
    {
      v15 = 0x1555555555555555;
    }

    else
    {
      v15 = v14;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
    v23 = a1;
    if (v15)
    {
      v17 = sub_29A379A50(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v19 = v17;
    v20 = &v17[12 * v16];
    v21 = v20;
    v22 = &v17[12 * v15];
    sub_29A55DDBC(&v19, a3, a4);
    v6 = sub_29A55DF14(a1, &v19, v6);
    sub_29A55E1B8(&v19);
  }

  else
  {
    if (a2 != v9)
    {
      v21 = a1;
      sub_29A1E21F4(&v19, a3);
      sub_29A1E2240(&v19 + 1, a3 + 1);
      LODWORD(v20) = *a4;
      sub_29A55DD04(a1, v6, a1[1], (v6 + 12));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    sub_29A1E21F4(a1[1], a3);
    sub_29A1E2240((v9 + 4), a3 + 1);
    *(v9 + 8) = *a4;
    a1[1] = v9 + 12;
  }

  return v6;
}

uint64_t sub_29A55DC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

uint64_t sub_29A55DD04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      sub_29A1DDD84((v6 + v10), (v7 + v10));
      sub_29A1DDDC0((v6 + v10 + 4), (v7 + v10 + 4));
      *(v6 + v10 + 8) = *(v7 + v10 + 8);
      v10 += 12;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return sub_29A55DFD0(&v12, a2, v7);
}

_DWORD *sub_29A55DDBC(void *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = a1[2];
  if (v6 == a1[3])
  {
    v7 = a1[1];
    if (v7 <= *a1)
    {
      if (v6 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v6 - *a1) >> 2);
      }

      v11 = v10 >> 2;
      v12 = a1[4];
      v20 = a1[4];
      *&v18 = sub_29A379A50(v12, v10);
      *(&v18 + 1) = v18 + 12 * v11;
      *&v19 = *(&v18 + 1);
      *(&v19 + 1) = v18 + 12 * v13;
      sub_29A55E058(&v18, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 2));
      v14 = v19;
      v15 = *a1;
      v16 = *(a1 + 1);
      *a1 = v18;
      *(a1 + 1) = v14;
      v18 = v15;
      v19 = v16;
      sub_29A55E1B8(&v18);
      v6 = a1[2];
    }

    else
    {
      v8 = -3 * ((0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 2) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 2) + 1) >> 63)) >> 1);
      sub_29A55DC8C(&v18, v7, v6);
      v6 = v9;
      a1[1] += 4 * v8;
      a1[2] = v9;
    }
  }

  sub_29A1E21F4(v6, a2);
  result = sub_29A1E2240(v6 + 1, a2 + 1);
  v6[2] = *a3;
  a1[2] += 12;
  return result;
}

uint64_t sub_29A55DF14(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A55E0E4(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A55E0E4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_29A55DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

_DWORD *sub_29A55E058(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v5 = v4 + 12 * a3;
    v6 = (v4 + 4);
    v7 = 12 * a3;
    v8 = (a2 + 4);
    do
    {
      sub_29A1DDD84(v6 - 1, v8 - 1);
      result = sub_29A1DDDC0(v6, v8);
      v6[1] = v8[1];
      v6 += 3;
      v8 += 3;
      v7 -= 12;
    }

    while (v7);
  }

  else
  {
    v5 = *(result + 2);
  }

  *(v3 + 2) = v5;
  return result;
}

uint64_t sub_29A55E0E4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0(v4 + 1, v8 + 1);
      v4[2] = v8[2];
      v8 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29A559F78(a1, v6);
      v6 += 3;
    }
  }

  return sub_29A55A508(v10);
}

void **sub_29A55E1B8(void **a1)
{
  sub_29A55E1EC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A55E1EC(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 12;
      result = sub_29A559F78(v4, (v1 - 12));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

BOOL sub_29A55E234(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (!sub_29A215F30(a1, a2))
  {
    return 0;
  }

  v7 = *(a1 + 96);
  v8 = *(a2 + 96);
  if (v7 == v8 && v7 != 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==();
  }

  if (v7 != v8)
  {
    return 0;
  }

  result = sub_29A55E398((a1 + 104), (a2 + 104));
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 176);
  v12 = *(a2 + 176);
  if (v11 == v12 && *(a1 + 176))
  {
    if (!Overlay::__operatorEqualsEquals((a1 + 136), a2 + 136))
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = *(a1 + 224);
  v14 = *(a2 + 224);
  if (v13 == v14 && *(a1 + 224))
  {
    if (!Overlay::__operatorEqualsEquals((a1 + 184), a2 + 184))
    {
      return 0;
    }
  }

  else if (v13 != v14)
  {
    return 0;
  }

  v15 = *(a1 + 233);
  v16 = *(a2 + 233);
  if (v15 == v16 && *(a1 + 233))
  {
    v15 = *(a1 + 232);
    v16 = *(a2 + 232);
  }

  if (v15 == v16)
  {
    v17 = sub_29A0ECB5C(a1 + 240);
    if (v17 == sub_29A0ECB5C(a2 + 240) && *(a1 + 256) == *(a2 + 256))
    {
      return *(a1 + 264) == *(a2 + 264);
    }
  }

  return 0;
}

BOOL sub_29A55E398(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 == a2[24];
  if (v2 == a2[24] && v2 != 0)
  {
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = a2[23];
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        a1 = *a1;
      }

      if (v8 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

unint64_t sub_29A55E428(unint64_t a1, uint64_t a2, uint64_t *a3, char **a4, pxrInternal__aapl__pxrReserved__ *a5)
{
  v8 = *(a2 + 48);
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  sub_29A55E544(a1, *a3, 0xF0F0F0F0F0F0F0F1 * ((a3[1] - *a3) >> 4));

  return sub_29A55E4C0(a1, a4, a5);
}

unint64_t sub_29A55E4C0(uint64_t a1, char **a2, pxrInternal__aapl__pxrReserved__ *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::hash_value(a2);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  result = pxrInternal__aapl__pxrReserved__::hash_value(a3, v6);
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

unint64_t sub_29A55E544(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      result = sub_29A55E5B8(a2);
      if (*(v5 + 8))
      {
        result += (*v5 + result + (*v5 + result) * (*v5 + result)) >> 1;
      }

      else
      {
        *(v5 + 8) = 1;
      }

      a2 += 272;
      *v5 = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_29A55E5B8(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_29A55E730(&v4, (a1 + 264), a1 + 240, (a1 + 256));
  result = bswap64(0x9E3779B97F4A7C55 * v4);
  v3 = result;
  if (*(a1 + 40) == 1)
  {
    v5 = 1;
    v4 = result;
    sub_29A4B0614(&v4, a1);
    result = bswap64(0x9E3779B97F4A7C55 * v4);
    v3 = result;
  }

  if (*(a1 + 96) == 1)
  {
    v5 = 1;
    v4 = result;
    sub_29A215EB0(&v4, (a1 + 48));
    result = bswap64(0x9E3779B97F4A7C55 * v4);
    v3 = result;
  }

  if (*(a1 + 128) == 1)
  {
    v4 = 0;
    v5 = 0;
    sub_29A55E7D4(&v4, &v3, a1 + 104);
    result = bswap64(0x9E3779B97F4A7C55 * v4);
    v3 = result;
  }

  if (*(a1 + 176) == 1)
  {
    v5 = 1;
    v4 = result;
    sub_29A55E81C(&v4, (a1 + 136));
    result = bswap64(0x9E3779B97F4A7C55 * v4);
    v3 = result;
  }

  if (*(a1 + 224) == 1)
  {
    v5 = 1;
    v4 = result;
    sub_29A55E81C(&v4, (a1 + 184));
    result = bswap64(0x9E3779B97F4A7C55 * v4);
  }

  if (*(a1 + 233) == 1)
  {
    return bswap64(0x9E3779B97F4A7C55 * (*(a1 + 232) + ((result + *(a1 + 232) + (result + *(a1 + 232)) * (result + *(a1 + 232))) >> 1)));
  }

  return result;
}

uint64_t sub_29A55E730(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A55E768(a1, a3, a4);
}

uint64_t sub_29A55E768(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_29A0ECB5C(a2);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;

  return sub_29A1E33B4(a1, a3);
}

unint64_t sub_29A55E7D4(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t *a2, uint64_t a3)
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
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v5, v6);
}

uint64_t sub_29A55E81C(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*(result + 8))
  {
    v4 = v3 + ((*result + v3 + (*result + v3) * (*result + v3)) >> 1);
  }

  else
  {
    *(result + 8) = 1;
    v4 = v3;
  }

  *result = v4;
  if (v3)
  {
    v5 = a2[4];
    do
    {
      --v3;
      v6 = v5 + 2;
      result = sub_29A1929D8(v2, v5);
      v5 = v6;
    }

    while (v3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  if (this - 0x20000000 >= 0xFFFFFFFFE0000001 && ((v1 = (2 * this + 7) >> 3, 0x7FFFFFFF - v1 >= 4 * this) ? (v2 = 0x7FFFFFFF - v1 - 4 * this >= 4) : (v2 = 0), v2))
  {
    return pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize((4 * this + v1 + 4));
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize(0);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  if (this - 0x20000000 < 0xFFFFFFFFE0000001)
  {
    return 0;
  }

  v2 = (2 * this + 7) >> 3;
  if (0x7FFFFFFF - v2 >= 4 * this && 0x7FFFFFFF - v2 - 4 * this >= 4)
  {
    return 4 * this + v2 + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this, uint64_t a2, char *a3, char *a4)
{
  v5 = a2;
  v7 = 4 * a2;
  v8 = 2 * a2;
  if ((a2 - 0x20000000) >= 0xFFFFFFFFE0000001)
  {
    v11 = 0x7FFFFFFF - ((v8 + 7) >> 3);
    if (v11 - 4 * a2 >= 4 && v11 >= v7)
    {
      v13 = v7 + ((v8 + 7) >> 3) + 4;
    }

    else
    {
      v13 = 0;
    }

    v9 = operator new[](v13);
    goto LABEL_11;
  }

  v9 = operator new[](0);
  if (v5)
  {
LABEL_11:
    v45 = a3;
    sub_29A56099C(&v46, 0, 0.0, 0.5);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      LODWORD(v49) = *(this + v14) - v17;
      v48 = &v49;
      v18 = sub_29A560C20(&v46, &v49, &unk_29B4D6118, &v48);
      v19 = *(v18 + 2) + 1;
      *(v18 + 2) = v19;
      if (v19 <= v16)
      {
        if (v19 == v16 && v49 > v15)
        {
          v15 = v49;
        }
      }

      else
      {
        v15 = v49;
        v16 = v19;
      }

      v17 = *(this + v14);
      v14 += 4;
    }

    while (v7 != v14);
    v49 = &v47;
    sub_29A560BC8(&v49);
    *v9 = v15;
    v20 = v9 + 4;
    v21 = v9 + ((v8 + 7) >> 3) + 4;
    if (v5 < 4)
    {
      v22 = 0;
      a3 = v45;
    }

    else
    {
      v22 = 0;
      a3 = v45;
      do
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = v22;
          v26 = *this;
          this = (this + 4);
          v22 = v26;
          v27 = v26 - v25;
          if (v26 - v25 != v15)
          {
            if (v27 == v27)
            {
              v28 = 1 << v23;
              *v21 = v27;
              v29 = 1;
            }

            else
            {
              v28 = 3 << v23;
              *v21 = v27;
              v29 = 4;
            }

            v21 += v29;
            v24 |= v28;
          }

          v23 += 2;
        }

        while (v23 != 8);
        *v20++ = v24;
        v5 -= 4;
      }

      while (v5 > 3);
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v32 = *this;
        v33 = *this - v22;
        if (v33 == v15)
        {
          v31 = 0;
        }

        else if (v33 == v33)
        {
          *v21++ = v33;
          v31 = 1;
        }

        else
        {
          *v21 = v33;
          v21 += 4;
          v31 = 3;
        }

        v40 = *(this + 1) - v32;
        if (v40 != v15)
        {
          if (v40 == v40)
          {
            *v21 = v40;
            v41 = 4;
            v42 = 1;
          }

          else
          {
            *v21 = v40;
            v41 = 12;
            v42 = 4;
          }

          v21 += v42;
          v31 |= v41;
        }
      }

      else
      {
        v34 = 0;
        v31 = 0;
        do
        {
          v36 = *this;
          this = (this + 4);
          v35 = v36;
          v37 = v36 - v22;
          if (v36 - v22 != v15)
          {
            if (v37 == v37)
            {
              v38 = 1 << v34;
              *v21 = v37;
              v39 = 1;
            }

            else
            {
              v38 = 3 << v34;
              *v21 = v37;
              v39 = 4;
            }

            v21 += v39;
            v31 |= v38;
          }

          v34 += 2;
          v22 = v35;
        }

        while (v34 != 6);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_57:
        v10 = v21 - v9;
        goto LABEL_58;
      }

      v30 = *this - v22;
      if (v30 == v15)
      {
        v31 = 0;
      }

      else if (v30 == v30)
      {
        *v21++ = v30;
        v31 = 1;
      }

      else
      {
        *v21 = v30;
        v21 += 4;
        v31 = 3;
      }
    }

    *v20 = v31;
    goto LABEL_57;
  }

  v10 = 0;
LABEL_58:
  v43 = pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(v9, a3, v10);
  operator delete[](v9);
  return v43;
}

{
  v5 = a2;
  v7 = 4 * a2;
  v8 = 2 * a2;
  if ((a2 - 0x40000000) >= 0xFFFFFFFFC0000001)
  {
    v11 = 0xFFFFFFFF - ((v8 + 7) >> 3);
    if (v11 - 4 * a2 >= 4 && v11 >= v7)
    {
      v13 = v7 + ((v8 + 7) >> 3) + 4;
    }

    else
    {
      v13 = 0;
    }

    v9 = operator new[](v13);
    goto LABEL_11;
  }

  v9 = operator new[](0);
  if (v5)
  {
LABEL_11:
    v45 = a3;
    sub_29A56099C(&v46, 0, 0.0, 0.5);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      LODWORD(v49) = *(this + v14) - v16;
      v48 = &v49;
      v18 = sub_29A560C20(&v46, &v49, &unk_29B4D6118, &v48);
      v19 = *(v18 + 2) + 1;
      *(v18 + 2) = v19;
      if (v19 <= v17)
      {
        if (v19 == v17 && v49 > v15)
        {
          v15 = v49;
        }
      }

      else
      {
        v15 = v49;
        v17 = v19;
      }

      v16 = *(this + v14);
      v14 += 4;
    }

    while (v7 != v14);
    v49 = &v47;
    sub_29A560BC8(&v49);
    *v9 = v15;
    v20 = v9 + 4;
    v21 = v9 + ((v8 + 7) >> 3) + 4;
    if (v5 < 4)
    {
      v22 = 0;
      a3 = v45;
    }

    else
    {
      v22 = 0;
      a3 = v45;
      do
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = v22;
          v26 = *this;
          this = (this + 4);
          v22 = v26;
          v27 = v26 - v25;
          if (v26 - v25 != v15)
          {
            if (v27 == v27)
            {
              v28 = 1 << v23;
              *v21 = v27;
              v29 = 1;
            }

            else
            {
              v28 = 3 << v23;
              *v21 = v27;
              v29 = 4;
            }

            v21 += v29;
            v24 |= v28;
          }

          v23 += 2;
        }

        while (v23 != 8);
        *v20++ = v24;
        v5 -= 4;
      }

      while (v5 > 3);
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v32 = *this;
        v33 = *this - v22;
        if (v33 == v15)
        {
          v31 = 0;
        }

        else if (v33 == v33)
        {
          *v21++ = v33;
          v31 = 1;
        }

        else
        {
          *v21 = v33;
          v21 += 4;
          v31 = 3;
        }

        v40 = *(this + 1) - v32;
        if (v40 != v15)
        {
          if (v40 == v40)
          {
            *v21 = v40;
            v41 = 4;
            v42 = 1;
          }

          else
          {
            *v21 = v40;
            v41 = 12;
            v42 = 4;
          }

          v21 += v42;
          v31 |= v41;
        }
      }

      else
      {
        v34 = 0;
        v31 = 0;
        do
        {
          v36 = *this;
          this = (this + 4);
          v35 = v36;
          v37 = v36 - v22;
          if (v36 - v22 != v15)
          {
            if (v37 == v37)
            {
              v38 = 1 << v34;
              *v21 = v37;
              v39 = 1;
            }

            else
            {
              v38 = 3 << v34;
              *v21 = v37;
              v39 = 4;
            }

            v21 += v39;
            v31 |= v38;
          }

          v34 += 2;
          v22 = v35;
        }

        while (v34 != 6);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_57:
        v10 = v21 - v9;
        goto LABEL_58;
      }

      v30 = *this - v22;
      if (v30 == v15)
      {
        v31 = 0;
      }

      else if (v30 == v30)
      {
        *v21++ = v30;
        v31 = 1;
      }

      else
      {
        *v21 = v30;
        v21 += 4;
        v31 = 3;
      }
    }

    *v20 = v31;
    goto LABEL_57;
  }

  v10 = 0;
LABEL_58:
  v43 = pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(v9, a3, v10);
  operator delete[](v9);
  return v43;
}

unint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this, char *a2, _DWORD *a3, int64_t a4, char *__dst, char *a6)
{
  v6 = __dst;
  v7 = a4;
  if ((a4 - 0x20000000) >= 0xFFFFFFFFE0000001)
  {
    v13 = (2 * a4 + 7) >> 3;
    if (0x7FFFFFFF - v13 >= 4 * a4 && 0x7FFFFFFF - v13 - 4 * a4 >= 4)
    {
      v11 = 4 * a4 + v13 + 4;
    }

    else
    {
      v11 = 0;
    }

    if (__dst)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (__dst)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_12;
    }
  }

  v12 = operator new[](v11);
  v6 = v12;
LABEL_12:
  v15 = pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(this, v6, a2, v11);
  if (!v15)
  {
LABEL_32:
    v7 = 0;
    goto LABEL_33;
  }

  if (v15 <= 3)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 383;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = int]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v16 = 2 * v7 + 7;
  v17 = (v16 >> 3) + 4;
  if (v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 396;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = int]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v19 = v6 + 4;
  v18 = *v6;
  if (v16 >= 8)
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = (v6 + 4);
    do
    {
      v24 = 0;
      v26 = *v23++;
      v25 = v26;
      v27 = v21;
      do
      {
        if (v27 >= v7)
        {
          break;
        }

        v28 = (v25 >> v24) & 3;
        v29 = v20 + 2;
        if (v28 != 2)
        {
          v29 = v20 + 4;
        }

        if (v28)
        {
          ++v20;
        }

        if (((v25 >> v24) & 3) > 1)
        {
          v20 = v29;
        }

        v24 += 2;
        ++v27;
      }

      while (v24 != 8);
      ++v22;
      v21 += 4;
    }

    while (v22 != v16 >> 3);
  }

  else
  {
    v20 = 0;
  }

  if (v20 + v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 404;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = int]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read variable length integer data section.");
    goto LABEL_32;
  }

  v31 = &v19[v16 >> 3];
  v32 = 0;
  if (v7 < 4)
  {
    i = v7;
  }

  else
  {
    for (i = v7; i > 3; i -= 4)
    {
      v34 = 0;
      v36 = *v19++;
      v35 = v36;
      do
      {
        v37 = (v35 >> v34) & 3;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v39 = *v31;
            v31 += 2;
            v38 = v39;
          }

          else
          {
            v41 = *v31;
            v31 += 4;
            v38 = v41;
          }
        }

        else if (v37)
        {
          v40 = *v31++;
          v38 = v40;
        }

        else
        {
          v38 = v18;
        }

        v32 += v38;
        *a3++ = v32;
        v34 += 2;
      }

      while (v34 != 8);
    }

    v19 = &v6[((v7 - 4) >> 2) + 5];
  }

  if (i > 1)
  {
    if (i == 2)
    {
      v43 = *v19;
      if ((v43 & 3) > 1)
      {
        if ((v43 & 3) == 2)
        {
          v52 = *v31;
          v31 += 2;
          v44 = v52;
        }

        else
        {
          v54 = *v31;
          v31 += 4;
          v44 = v54;
        }
      }

      else if ((v43 & 3) != 0)
      {
        v53 = *v31++;
        v44 = v53;
      }

      else
      {
        v44 = v18;
      }

      v55 = v44 + v32;
      *a3 = v55;
      v56 = (v43 >> 2) & 3;
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v18 = *v31;
        }

        else
        {
          v18 = *v31;
        }
      }

      else if (v56)
      {
        v18 = *v31;
      }

      a3[1] = v18 + v55;
    }

    else
    {
      v45 = 0;
      v46 = *v19;
      do
      {
        v47 = (v46 >> v45) & 3;
        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v49 = *v31;
            v31 += 2;
            v48 = v49;
          }

          else
          {
            v51 = *v31;
            v31 += 4;
            v48 = v51;
          }
        }

        else if (v47)
        {
          v50 = *v31++;
          v48 = v50;
        }

        else
        {
          v48 = v18;
        }

        v32 += v48;
        *a3++ = v32;
        v45 += 2;
      }

      while (v45 != 6);
    }
  }

  else if (i)
  {
    v42 = *v19 & 3;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v18 = *v31;
      }

      else
      {
        v18 = *v31;
      }
    }

    else if (v42)
    {
      v18 = *v31;
    }

    *a3 = v18 + v32;
  }

LABEL_33:
  if (v12)
  {
    operator delete[](v12);
  }

  return v7;
}

{
  v6 = __dst;
  v7 = a4;
  if ((a4 - 0x20000000) >= 0xFFFFFFFFE0000001)
  {
    v13 = (2 * a4 + 7) >> 3;
    if (0x7FFFFFFF - v13 >= 4 * a4 && 0x7FFFFFFF - v13 - 4 * a4 >= 4)
    {
      v11 = 4 * a4 + v13 + 4;
    }

    else
    {
      v11 = 0;
    }

    if (__dst)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (__dst)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_12;
    }
  }

  v12 = operator new[](v11);
  v6 = v12;
LABEL_12:
  v15 = pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(this, v6, a2, v11);
  if (!v15)
  {
LABEL_32:
    v7 = 0;
    goto LABEL_33;
  }

  if (v15 <= 3)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 383;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = unsigned int]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v16 = 2 * v7 + 7;
  v17 = (v16 >> 3) + 4;
  if (v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 396;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = unsigned int]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v19 = v6 + 4;
  v18 = *v6;
  if (v16 >= 8)
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = (v6 + 4);
    do
    {
      v24 = 0;
      v26 = *v23++;
      v25 = v26;
      v27 = v21;
      do
      {
        if (v27 >= v7)
        {
          break;
        }

        v28 = (v25 >> v24) & 3;
        v29 = v20 + 2;
        if (v28 != 2)
        {
          v29 = v20 + 4;
        }

        if (v28)
        {
          ++v20;
        }

        if (((v25 >> v24) & 3) > 1)
        {
          v20 = v29;
        }

        v24 += 2;
        ++v27;
      }

      while (v24 != 8);
      ++v22;
      v21 += 4;
    }

    while (v22 != v16 >> 3);
  }

  else
  {
    v20 = 0;
  }

  if (v20 + v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 404;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = unsigned int]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read variable length integer data section.");
    goto LABEL_32;
  }

  v31 = &v19[v16 >> 3];
  v32 = 0;
  if (v7 < 4)
  {
    i = v7;
  }

  else
  {
    for (i = v7; i > 3; i -= 4)
    {
      v34 = 0;
      v36 = *v19++;
      v35 = v36;
      do
      {
        v37 = (v35 >> v34) & 3;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v39 = *v31;
            v31 += 2;
            v38 = v39;
          }

          else
          {
            v41 = *v31;
            v31 += 4;
            v38 = v41;
          }
        }

        else if (v37)
        {
          v40 = *v31++;
          v38 = v40;
        }

        else
        {
          v38 = v18;
        }

        v32 += v38;
        *a3++ = v32;
        v34 += 2;
      }

      while (v34 != 8);
    }

    v19 = &v6[((v7 - 4) >> 2) + 5];
  }

  if (i > 1)
  {
    if (i == 2)
    {
      v43 = *v19;
      if ((v43 & 3) > 1)
      {
        if ((v43 & 3) == 2)
        {
          v52 = *v31;
          v31 += 2;
          v44 = v52;
        }

        else
        {
          v54 = *v31;
          v31 += 4;
          v44 = v54;
        }
      }

      else if ((v43 & 3) != 0)
      {
        v53 = *v31++;
        v44 = v53;
      }

      else
      {
        v44 = v18;
      }

      v55 = v44 + v32;
      *a3 = v55;
      v56 = (v43 >> 2) & 3;
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v18 = *v31;
        }

        else
        {
          v18 = *v31;
        }
      }

      else if (v56)
      {
        v18 = *v31;
      }

      a3[1] = v18 + v55;
    }

    else
    {
      v45 = 0;
      v46 = *v19;
      do
      {
        v47 = (v46 >> v45) & 3;
        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v49 = *v31;
            v31 += 2;
            v48 = v49;
          }

          else
          {
            v51 = *v31;
            v31 += 4;
            v48 = v51;
          }
        }

        else if (v47)
        {
          v50 = *v31++;
          v48 = v50;
        }

        else
        {
          v48 = v18;
        }

        v32 += v48;
        *a3++ = v32;
        v45 += 2;
      }

      while (v45 != 6);
    }
  }

  else if (i)
  {
    v42 = *v19 & 3;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v18 = *v31;
      }

      else
      {
        v18 = *v31;
      }
    }

    else if (v42)
    {
      v18 = *v31;
    }

    *a3 = v18 + v32;
  }

LABEL_33:
  if (v12)
  {
    operator delete[](v12);
  }

  return v7;
}

void sub_29A55F4F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete[](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A55F904(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete[](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  if (this - 0x1000000000000000 >= 0xF000000000000001 && ((v1 = (2 * this + 7) >> 3, (v1 ^ 0x7FFFFFFFFFFFFFFFLL) >= 8 * this) ? (v2 = (v1 ^ 0x7FFFFFFFFFFFFFFFLL) - 8 * this >= 8) : (v2 = 0), v2))
  {
    return pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize((8 * this + v1 + 8));
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize(0);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  if (this - 0x1000000000000000 < 0xF000000000000001)
  {
    return 0;
  }

  v2 = (2 * this + 7) >> 3;
  if ((v2 ^ 0x7FFFFFFFFFFFFFFFLL) >= 8 * this && (v2 ^ 0x7FFFFFFFFFFFFFFFLL) - 8 * this >= 8)
  {
    return 8 * this + v2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::CompressToBuffer(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this, uint64_t a2, char *a3, char *a4)
{
  v5 = a2;
  v7 = 8 * a2;
  v8 = 2 * a2;
  if ((a2 - 0x1000000000000000) >= 0xF000000000000001)
  {
    v11 = ((v8 + 7) >> 3) ^ 0x7FFFFFFFFFFFFFFFLL;
    if (v11 - 8 * a2 >= 8 && v11 >= v7)
    {
      v13 = v7 + ((v8 + 7) >> 3) + 8;
    }

    else
    {
      v13 = 0;
    }

    v9 = operator new[](v13);
    goto LABEL_11;
  }

  v9 = operator new[](0);
  if (v5)
  {
LABEL_11:
    v45 = a3;
    sub_29A561048(&v46, 0, 0.0, 0.5);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v49 = (*(this + v14) - v17);
      v48 = &v49;
      v18 = sub_29A56128C(&v46, &v49, &unk_29B4D6118, &v48);
      v19 = *(v18 + 2) + 1;
      *(v18 + 2) = v19;
      if (v19 <= v16)
      {
        if (v19 == v16 && v49 > v15)
        {
          v15 = v49;
        }
      }

      else
      {
        v15 = v49;
        v16 = v19;
      }

      v17 = *(this + v14);
      v14 += 8;
    }

    while (v7 != v14);
    v49 = &v47;
    sub_29A560BC8(&v49);
    *v9 = v15;
    v20 = v9 + 8;
    v21 = v9 + ((v8 + 7) >> 3) + 8;
    if (v5 < 4)
    {
      v22 = 0;
      a3 = v45;
    }

    else
    {
      v22 = 0;
      a3 = v45;
      do
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = v22;
          v26 = *this;
          this = (this + 8);
          v22 = v26;
          v27 = v26 - v25;
          if ((v26 - v25) != v15)
          {
            if (v27 == v27)
            {
              v28 = 1 << v23;
              *v21 = v27;
              v29 = 2;
            }

            else
            {
              v28 = 3 << v23;
              *v21 = v27;
              v29 = 8;
            }

            v21 += v29;
            v24 |= v28;
          }

          v23 += 2;
        }

        while (v23 != 8);
        *v20++ = v24;
        v5 -= 4;
      }

      while (v5 > 3);
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v32 = *this;
        v33 = (*this - v22);
        if (v33 == v15)
        {
          v31 = 0;
        }

        else if (v33 == v33)
        {
          *v21 = v33;
          v21 += 2;
          v31 = 1;
        }

        else
        {
          *v21 = v33;
          v21 += 8;
          v31 = 3;
        }

        v40 = (*(this + 1) - v32);
        if (v40 != v15)
        {
          if (v40 == v40)
          {
            *v21 = v40;
            v41 = 4;
            v42 = 2;
          }

          else
          {
            *v21 = v40;
            v41 = 12;
            v42 = 8;
          }

          v21 += v42;
          v31 |= v41;
        }
      }

      else
      {
        v34 = 0;
        v31 = 0;
        do
        {
          v36 = *this;
          this = (this + 8);
          v35 = v36;
          v37 = v36 - v22;
          if ((v36 - v22) != v15)
          {
            if (v37 == v37)
            {
              v38 = 1 << v34;
              *v21 = v37;
              v39 = 2;
            }

            else
            {
              v38 = 3 << v34;
              *v21 = v37;
              v39 = 8;
            }

            v21 += v39;
            v31 |= v38;
          }

          v34 += 2;
          v22 = v35;
        }

        while (v34 != 6);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_57:
        v10 = v21 - v9;
        goto LABEL_58;
      }

      v30 = (*this - v22);
      if (v30 == v15)
      {
        v31 = 0;
      }

      else if (v30 == v30)
      {
        *v21 = v30;
        v21 += 2;
        v31 = 1;
      }

      else
      {
        *v21 = v30;
        v21 += 8;
        v31 = 3;
      }
    }

    *v20 = v31;
    goto LABEL_57;
  }

  v10 = 0;
LABEL_58:
  v43 = pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(v9, a3, v10);
  operator delete[](v9);
  return v43;
}

{
  v5 = a2;
  v7 = 2 * a2;
  if ((a2 - 0x2000000000000000) >= 0xE000000000000001)
  {
    v10 = (v7 + 7) >> 3;
    v11 = __CFADD__(v10, 8 * a2);
    v12 = v10 + 8 * a2;
    v14 = v11 || v12 > 0xFFFFFFFFFFFFFFF7;
    v15 = v12 + 8;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v8 = operator new[](v16);
    goto LABEL_14;
  }

  v8 = operator new[](0);
  if (v5)
  {
LABEL_14:
    v48 = a3;
    sub_29A561048(&v49, 0, 0.0, 0.5);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v52 = (*(this + v17) - v19);
      v51 = &v52;
      v21 = sub_29A56128C(&v49, &v52, &unk_29B4D6118, &v51);
      v22 = *(v21 + 2) + 1;
      *(v21 + 2) = v22;
      if (v22 <= v20)
      {
        if (v22 == v20 && v52 > v18)
        {
          v18 = v52;
        }
      }

      else
      {
        v18 = v52;
        v20 = v22;
      }

      v19 = *(this + v17);
      v17 += 8;
    }

    while (8 * v5 != v17);
    v52 = &v50;
    sub_29A560BC8(&v52);
    *v8 = v18;
    v23 = v8 + 8;
    v24 = v8 + ((v7 + 7) >> 3) + 8;
    if (v5 < 4)
    {
      v25 = 0;
      a3 = v48;
    }

    else
    {
      v25 = 0;
      a3 = v48;
      do
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = v25;
          v29 = *this;
          this = (this + 8);
          v25 = v29;
          v30 = v29 - v28;
          if ((v29 - v28) != v18)
          {
            if (v30 == v30)
            {
              v31 = 1 << v26;
              *v24 = v30;
              v32 = 2;
            }

            else
            {
              v31 = 3 << v26;
              *v24 = v30;
              v32 = 8;
            }

            v24 += v32;
            v27 |= v31;
          }

          v26 += 2;
        }

        while (v26 != 8);
        *v23++ = v27;
        v5 -= 4;
      }

      while (v5 > 3);
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v35 = *this;
        v36 = (*this - v25);
        if (v36 == v18)
        {
          v34 = 0;
        }

        else if (v36 == v36)
        {
          *v24 = v36;
          v24 += 2;
          v34 = 1;
        }

        else
        {
          *v24 = v36;
          v24 += 8;
          v34 = 3;
        }

        v43 = (*(this + 1) - v35);
        if (v43 != v18)
        {
          if (v43 == v43)
          {
            *v24 = v43;
            v44 = 4;
            v45 = 2;
          }

          else
          {
            *v24 = v43;
            v44 = 12;
            v45 = 8;
          }

          v24 += v45;
          v34 |= v44;
        }
      }

      else
      {
        v37 = 0;
        v34 = 0;
        do
        {
          v39 = *this;
          this = (this + 8);
          v38 = v39;
          v40 = v39 - v25;
          if ((v39 - v25) != v18)
          {
            if (v40 == v40)
            {
              v41 = 1 << v37;
              *v24 = v40;
              v42 = 2;
            }

            else
            {
              v41 = 3 << v37;
              *v24 = v40;
              v42 = 8;
            }

            v24 += v42;
            v34 |= v41;
          }

          v37 += 2;
          v25 = v38;
        }

        while (v37 != 6);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_60:
        v9 = v24 - v8;
        goto LABEL_61;
      }

      v33 = (*this - v25);
      if (v33 == v18)
      {
        v34 = 0;
      }

      else if (v33 == v33)
      {
        *v24 = v33;
        v24 += 2;
        v34 = 1;
      }

      else
      {
        *v24 = v33;
        v24 += 8;
        v34 = 3;
      }
    }

    *v23 = v34;
    goto LABEL_60;
  }

  v9 = 0;
LABEL_61:
  v46 = pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(v8, a3, v9);
  operator delete[](v8);
  return v46;
}

unint64_t pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this, char *a2, void *a3, int64_t a4, char *__dst, char *a6)
{
  v6 = __dst;
  v7 = a4;
  if ((a4 - 0x1000000000000000) >= 0xF000000000000001)
  {
    v13 = (2 * a4 + 7) >> 3;
    if ((v13 ^ 0x7FFFFFFFFFFFFFFFLL) >= 8 * a4 && (v13 ^ 0x7FFFFFFFFFFFFFFFLL) - 8 * a4 >= 8)
    {
      v11 = 8 * a4 + v13 + 8;
    }

    else
    {
      v11 = 0;
    }

    if (__dst)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (__dst)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_12;
    }
  }

  v12 = operator new[](v11);
  v6 = v12;
LABEL_12:
  v15 = pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(this, v6, a2, v11);
  if (!v15)
  {
LABEL_32:
    v7 = 0;
    goto LABEL_33;
  }

  if (v15 <= 7)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 383;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = long long]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v16 = 2 * v7 + 7;
  v17 = (v16 >> 3) + 8;
  if (v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 396;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = long long]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v19 = v6 + 8;
  v18 = *v6;
  if (v16 >= 8)
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = (v6 + 8);
    do
    {
      v24 = 0;
      v26 = *v23++;
      v25 = v26;
      v27 = v21;
      do
      {
        if (v27 >= v7)
        {
          break;
        }

        v28 = (v25 >> v24) & 3;
        v29 = v20 + 4;
        if (v28 != 2)
        {
          v29 = v20 + 8;
        }

        if (v28)
        {
          v20 += 2;
        }

        if (((v25 >> v24) & 3) > 1)
        {
          v20 = v29;
        }

        v24 += 2;
        ++v27;
      }

      while (v24 != 8);
      ++v22;
      v21 += 4;
    }

    while (v22 != v16 >> 3);
  }

  else
  {
    v20 = 0;
  }

  if (v20 + v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 404;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = long long]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read variable length integer data section.");
    goto LABEL_32;
  }

  v31 = &v19[v16 >> 3];
  v32 = 0;
  if (v7 < 4)
  {
    i = v7;
  }

  else
  {
    for (i = v7; i > 3; i -= 4)
    {
      v34 = 0;
      v36 = *v19++;
      v35 = v36;
      do
      {
        v37 = (v35 >> v34) & 3;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v39 = *v31;
            v31 += 4;
            v38 = v39;
          }

          else
          {
            v41 = *v31;
            v31 += 8;
            v38 = v41;
          }
        }

        else if (v37)
        {
          v40 = *v31;
          v31 += 2;
          v38 = v40;
        }

        else
        {
          v38 = v18;
        }

        v32 += v38;
        *a3++ = v32;
        v34 += 2;
      }

      while (v34 != 8);
    }

    v19 = &v6[((v7 - 4) >> 2) + 9];
  }

  if (i > 1)
  {
    if (i == 2)
    {
      v43 = *v19;
      if ((v43 & 3) > 1)
      {
        if ((v43 & 3) == 2)
        {
          v52 = *v31;
          v31 += 4;
          v44 = v52;
        }

        else
        {
          v54 = *v31;
          v31 += 8;
          v44 = v54;
        }
      }

      else if ((v43 & 3) != 0)
      {
        v53 = *v31;
        v31 += 2;
        v44 = v53;
      }

      else
      {
        v44 = v18;
      }

      v55 = v44 + v32;
      *a3 = v55;
      v56 = (v43 >> 2) & 3;
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v18 = *v31;
        }

        else
        {
          v18 = *v31;
        }
      }

      else if (v56)
      {
        v18 = *v31;
      }

      a3[1] = v18 + v55;
    }

    else
    {
      v45 = 0;
      v46 = *v19;
      do
      {
        v47 = (v46 >> v45) & 3;
        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v49 = *v31;
            v31 += 4;
            v48 = v49;
          }

          else
          {
            v51 = *v31;
            v31 += 8;
            v48 = v51;
          }
        }

        else if (v47)
        {
          v50 = *v31;
          v31 += 2;
          v48 = v50;
        }

        else
        {
          v48 = v18;
        }

        v32 += v48;
        *a3++ = v32;
        v45 += 2;
      }

      while (v45 != 6);
    }
  }

  else if (i)
  {
    v42 = *v19 & 3;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v18 = *v31;
      }

      else
      {
        v18 = *v31;
      }
    }

    else if (v42)
    {
      v18 = *v31;
    }

    *a3 = v18 + v32;
  }

LABEL_33:
  if (v12)
  {
    operator delete[](v12);
  }

  return v7;
}

{
  v6 = __dst;
  v7 = a4;
  if ((a4 - 0x1000000000000000) >= 0xF000000000000001)
  {
    v13 = (2 * a4 + 7) >> 3;
    if ((v13 ^ 0x7FFFFFFFFFFFFFFFLL) >= 8 * a4 && (v13 ^ 0x7FFFFFFFFFFFFFFFLL) - 8 * a4 >= 8)
    {
      v11 = 8 * a4 + v13 + 8;
    }

    else
    {
      v11 = 0;
    }

    if (__dst)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (__dst)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_12;
    }
  }

  v12 = operator new[](v11);
  v6 = v12;
LABEL_12:
  v15 = pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(this, v6, a2, v11);
  if (!v15)
  {
LABEL_32:
    v7 = 0;
    goto LABEL_33;
  }

  if (v15 <= 7)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 383;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = unsigned long long]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v16 = 2 * v7 + 7;
  v17 = (v16 >> 3) + 8;
  if (v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 396;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = unsigned long long]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read codes section.");
    goto LABEL_32;
  }

  v19 = v6 + 8;
  v18 = *v6;
  if (v16 >= 8)
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = (v6 + 8);
    do
    {
      v24 = 0;
      v26 = *v23++;
      v25 = v26;
      v27 = v21;
      do
      {
        if (v27 >= v7)
        {
          break;
        }

        v28 = (v25 >> v24) & 3;
        v29 = v20 + 4;
        if (v28 != 2)
        {
          v29 = v20 + 8;
        }

        if (v28)
        {
          v20 += 2;
        }

        if (((v25 >> v24) & 3) > 1)
        {
          v20 = v29;
        }

        v24 += 2;
        ++v27;
      }

      while (v24 != 8);
      ++v22;
      v21 += 4;
    }

    while (v22 != v16 >> 3);
  }

  else
  {
    v20 = 0;
  }

  if (v20 + v17 > v15)
  {
    v57 = "usd/integerCoding.cpp";
    v58 = "_DecodeIntegers";
    v59 = 404;
    v60 = "size_t pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DecodeIntegers(const char *, size_t, size_t, Int *) [Int = unsigned long long]";
    v61 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v57, 3, "Not enough decompressed bytes to read variable length integer data section.");
    goto LABEL_32;
  }

  v31 = &v19[v16 >> 3];
  v32 = 0;
  if (v7 < 4)
  {
    i = v7;
  }

  else
  {
    for (i = v7; i > 3; i -= 4)
    {
      v34 = 0;
      v36 = *v19++;
      v35 = v36;
      do
      {
        v37 = (v35 >> v34) & 3;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v39 = *v31;
            v31 += 4;
            v38 = v39;
          }

          else
          {
            v41 = *v31;
            v31 += 8;
            v38 = v41;
          }
        }

        else if (v37)
        {
          v40 = *v31;
          v31 += 2;
          v38 = v40;
        }

        else
        {
          v38 = v18;
        }

        v32 += v38;
        *a3++ = v32;
        v34 += 2;
      }

      while (v34 != 8);
    }

    v19 = &v6[((v7 - 4) >> 2) + 9];
  }

  if (i > 1)
  {
    if (i == 2)
    {
      v43 = *v19;
      if ((v43 & 3) > 1)
      {
        if ((v43 & 3) == 2)
        {
          v52 = *v31;
          v31 += 4;
          v44 = v52;
        }

        else
        {
          v54 = *v31;
          v31 += 8;
          v44 = v54;
        }
      }

      else if ((v43 & 3) != 0)
      {
        v53 = *v31;
        v31 += 2;
        v44 = v53;
      }

      else
      {
        v44 = v18;
      }

      v55 = v44 + v32;
      *a3 = v55;
      v56 = (v43 >> 2) & 3;
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v18 = *v31;
        }

        else
        {
          v18 = *v31;
        }
      }

      else if (v56)
      {
        v18 = *v31;
      }

      a3[1] = v18 + v55;
    }

    else
    {
      v45 = 0;
      v46 = *v19;
      do
      {
        v47 = (v46 >> v45) & 3;
        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v49 = *v31;
            v31 += 4;
            v48 = v49;
          }

          else
          {
            v51 = *v31;
            v31 += 8;
            v48 = v51;
          }
        }

        else if (v47)
        {
          v50 = *v31;
          v31 += 2;
          v48 = v50;
        }

        else
        {
          v48 = v18;
        }

        v32 += v48;
        *a3++ = v32;
        v45 += 2;
      }

      while (v45 != 6);
    }
  }

  else if (i)
  {
    v42 = *v19 & 3;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v18 = *v31;
      }

      else
      {
        v18 = *v31;
      }
    }

    else if (v42)
    {
      v18 = *v31;
    }

    *a3 = v18 + v32;
  }

LABEL_33:
  if (v12)
  {
    operator delete[](v12);
  }

  return v7;
}

void sub_29A560578(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete[](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A560984(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete[](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A56099C(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A560B40(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A560B08();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0xAAAAAAAAAAAAAABLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 22) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A560AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A560BC8(va);
  _Unwind_Resume(a1);
}

void *sub_29A560B08()
{
  if ((atomic_load_explicit(&qword_2A14F8178, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AC7F4();
  }

  return &unk_2A14F8160;
}

void *sub_29A560B40(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v4 = a1[1];
    v5 = v4 + 24 * a2;
    do
    {
      *v4 = -1;
      *(v4 + 2) = 0;
      v4 += 24;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A560BC8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    while (v3 != v2)
    {
      v4 = *(v3 - 12);
      v3 -= 12;
      if (v4 != -1)
      {
        *v3 = -1;
      }
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

__int16 *sub_29A560C08(__int16 *result)
{
  if (*result != -1)
  {
    *result = -1;
  }

  return result;
}

__int16 *sub_29A560C20(uint64_t *a1, int *a2, uint64_t a3, int **a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = a1[4];
  v9 = *a1 & v6;
  result = (v8 + 24 * v9);
  if (*result < 0)
  {
    v11 = 0;
LABEL_7:
    while (sub_29A560D9C(a1, v11))
    {
      v12 = a1[4];
      v9 = *a1 & v6;
      if (*(v12 + 24 * v9) < 0)
      {
        v11 = 0;
      }

      else
      {
        LOWORD(v11) = 0;
        do
        {
          v11 = (v11 + 1);
          v9 = (v9 + 1) & *a1;
        }

        while (v11 <= *(v12 + 24 * v9));
      }
    }

    v13 = a1[4];
    v14 = (v13 + 24 * v9);
    if (*v14 == -1)
    {
      *(v14 + 2) = **a4;
      *(v14 + 2) = 0;
      *v14 = v11;
    }

    else
    {
      v15 = **a4;
      v16 = 0;
      sub_29A560F74(a1, v9, v11, v6, &v15);
      v13 = a1[4];
    }

    ++a1[6];
    return (v13 + 24 * v9);
  }

  else
  {
    LOWORD(v11) = 0;
    while (*(result + 2) != v6)
    {
      v11 = (v11 + 1);
      v9 = (v9 + 1) & v7;
      result = (v8 + 24 * v9);
      if (v11 > *result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29A560D9C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A560E70(a1, v7);
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

        sub_29A560E70(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A560E70(uint64_t a1, unint64_t a2)
{
  sub_29A56099C(&v14, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_10;
  }

  do
  {
    if (*v3 == -1)
    {
      goto LABEL_9;
    }

    v5 = 0;
    v6 = *(v3 + 2);
    v7 = v14;
    v8 = v15[3];
    while (1)
    {
      v9 = v7 & v6;
      v10 = (v8 + 24 * v9);
      v11 = *v10;
      if (v11 >= v5)
      {
        goto LABEL_7;
      }

      if (v11 == -1)
      {
        break;
      }

      v12 = *(v3 + 2);
      *(v3 + 2) = *(v10 + 2);
      *(v10 + 2) = v12;
      v13 = *(v3 + 2);
      *(v3 + 2) = *(v10 + 2);
      *(v10 + 2) = v13;
      *v10 = v5;
      v7 = v14;
      v5 = v11;
LABEL_7:
      ++v5;
      v6 = v9 + 1;
    }

    *(v10 + 4) = *(v3 + 4);
    *v10 = v5;
LABEL_9:
    v3 += 12;
  }

  while (v3 != v4);
LABEL_10:
  v15[5] = *(a1 + 48);
  sub_29A10A4B4(&v14, a1);
  v16 = v15;
  sub_29A560BC8(&v16);
}

__n128 sub_29A560F74(uint64_t *a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, int *a5)
{
  v5 = a1[4];
  v6 = (v5 + 24 * a2);
  v7 = *a5;
  *a5 = *(v6 + 2);
  *(v6 + 2) = v7;
  v8 = *(a5 + 1);
  *(a5 + 1) = *(v6 + 2);
  *(v6 + 2) = v8;
  LODWORD(v8) = *v6;
  *v6 = a3;
  v9 = *a1;
  v10 = *a1 & (a2 + 1);
  v11 = v8 + 1;
  v12 = (v5 + 24 * v10);
  for (i = *v12; i != 0xFFFF; i = *v12)
  {
    if (v11 <= i)
    {
      i = v11;
    }

    else
    {
      if (v11 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v14 = *a5;
      *a5 = *(v12 + 2);
      *(v12 + 2) = v14;
      v15 = *(a5 + 1);
      *(a5 + 1) = *(v12 + 2);
      *(v12 + 2) = v15;
      *v12 = v11;
      v9 = *a1;
    }

    v10 = v9 & (v10 + 1);
    v11 = i + 1;
    v12 = (v5 + 24 * v10);
  }

  result = *a5;
  *(v12 + 4) = *a5;
  *v12 = v11;
  return result;
}

uint64_t sub_29A561048(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A5611EC(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A5611B4();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0xAAAAAAAAAAAAAABLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 22) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A56118C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A560BC8(va);
  _Unwind_Resume(a1);
}

void *sub_29A5611B4()
{
  if ((atomic_load_explicit(&qword_2A14F8198, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AC860();
  }

  return &unk_2A14F8180;
}

void *sub_29A5611EC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v4 = a1[1];
    v5 = v4 + 24 * a2;
    do
    {
      *v4 = -1;
      *(v4 + 2) = 0;
      v4 += 24;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

__int16 *sub_29A561274(__int16 *result)
{
  if (*result != -1)
  {
    *result = -1;
  }

  return result;
}

__int16 *sub_29A56128C(uint64_t *a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = a1[4];
  v9 = *a2 & *a1;
  result = (v8 + 24 * v9);
  if (*result < 0)
  {
    v11 = 0;
LABEL_7:
    while (sub_29A561400(a1, v11))
    {
      v12 = a1[4];
      v9 = v6 & *a1;
      if (*(v12 + 24 * v9) < 0)
      {
        v11 = 0;
      }

      else
      {
        LOWORD(v11) = 0;
        do
        {
          v11 = (v11 + 1);
          v9 = (v9 + 1) & *a1;
        }

        while (v11 <= *(v12 + 24 * v9));
      }
    }

    v13 = a1[4];
    v14 = (v13 + 24 * v9);
    if (*v14 == -1)
    {
      *(v14 + 1) = **a4;
      *(v14 + 2) = 0;
      *v14 = v11;
    }

    else
    {
      v15 = **a4;
      sub_29A5615C8(a1, v9, v11, v6, &v15);
      v13 = a1[4];
    }

    ++a1[6];
    return (v13 + 24 * v9);
  }

  else
  {
    LOWORD(v11) = 0;
    while (*(result + 1) != v6)
    {
      v11 = (v11 + 1);
      v9 = (v9 + 1) & v7;
      result = (v8 + 24 * v9);
      if (v11 > *result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29A561400(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A5614D4(a1, v7);
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

        sub_29A5614D4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A5614D4(uint64_t a1, unint64_t a2)
{
  sub_29A561048(&v14, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_10;
  }

  do
  {
    if (*v3 == -1)
    {
      goto LABEL_9;
    }

    v5 = 0;
    v6 = (v3 + 4);
    v7 = *(v3 + 1);
    v8 = v14;
    v9 = v15[3];
    while (1)
    {
      v10 = v8 & v7;
      v11 = (v9 + 24 * v10);
      v12 = *v11;
      if (v12 >= v5)
      {
        goto LABEL_7;
      }

      if (v12 == -1)
      {
        break;
      }

      v13 = *v6;
      *v6 = *(v11 + 4);
      *(v11 + 4) = v13;
      *v11 = v5;
      v8 = v14;
      v5 = v12;
LABEL_7:
      ++v5;
      v7 = v10 + 1;
    }

    *(v11 + 4) = *v6;
    *v11 = v5;
LABEL_9:
    v3 += 12;
  }

  while (v3 != v4);
LABEL_10:
  v15[5] = *(a1 + 48);
  sub_29A10A4B4(&v14, a1);
  v16 = v15;
  sub_29A560BC8(&v16);
}

__n128 sub_29A5615C8(uint64_t *a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, __n128 *a5)
{
  v5 = a1[4];
  v6 = (v5 + 24 * a2);
  v7 = *a5;
  *a5 = *(v6 + 4);
  *(v6 + 4) = v7;
  v8 = *v6;
  *v6 = a3;
  v9 = *a1;
  v10 = *a1 & (a2 + 1);
  v11 = v8 + 1;
  v12 = (v5 + 24 * v10);
  for (i = *v12; i != 0xFFFF; i = *v12)
  {
    if (v11 <= i)
    {
      i = v11;
    }

    else
    {
      if (v11 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v14 = *a5;
      *a5 = *(v12 + 4);
      *(v12 + 4) = v14;
      *v12 = v11;
      v9 = *a1;
    }

    v10 = v9 & (v10 + 1);
    v11 = i + 1;
    v12 = (v5 + 24 * v10);
  }

  result = *a5;
  *(v12 + 4) = *a5;
  *v12 = v11;
  return result;
}

uint64_t sub_29A565E40(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5)
{
  v8 = sub_29A3302A8(a2);
  v9 = *(a1 + 8);

  return pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v8, a3, a5, v9);
}

void sub_29A565FBC(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A5660EC(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

void sub_29A566398(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A566460(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56652C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040768;
    v8 = 0;
    v7[0] = &unk_2A20506E0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A5665A0(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v21 = &v19;
  v22 = &stru_2A2040768;
  v23 = 0;
  v20 = &unk_2A20506E0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v23 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v21 = &v18;
    v22 = &stru_2A2040768;
    v23 = 0;
    v20 = &unk_2A20506E0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v23 & 1) != 0)
    {
      v18 = v19;
      v14 = v19;
    }

    else
    {
      v14 = v18;
    }

    v15 = (1.0 - (a3 - a4) / (a5 - a4)) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v19] + (a3 - a4) / (a5 - a4) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v14];
    if (v15 == 0.0)
    {
      v16 = HIWORD(LODWORD(v15));
    }

    else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v15) >> 23])
    {
      v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v15) >> 23] + (((LODWORD(v15) & 0x7FFFFF) + ((LODWORD(v15) >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v16) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v15));
    }

    **(a1 + 8) = v16;
  }

  return v12;
}

void sub_29A566AC8(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A566B90(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A566C5C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042518;
    v8 = 0;
    v7[0] = &unk_2A2050718;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A566CD0(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A211C(v12, a3, &v39, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A211C(v13, a3, &v36, a6) & 1) == 0)
    {
      sub_29A4ABA20(&v36, &v39);
    }

    v14 = &v40 + 8;
    if (v39 != v36 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v40;
      v16[4] = v41;
      v41 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v39;
      v16[2] = v18;
      v39 = v20;
      *&v40 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v37 + 8;
      v22 = v16[4];
      v23 = v37;
      v16[4] = v38;
      v38 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v36;
      v16[2] = v23;
      v36 = v25;
      *&v37 = v24;
      goto LABEL_7;
    }

    v42 = 0;
    v43 = &v42;
    sub_29A18EFA8(v16, v39, &v43);
    v26 = v41;
    v27 = v38;
    v28 = *(a1 + 8);
    sub_29A18F540(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v32 = (1.0 - v15) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v31];
        v33 = *v27++;
        v34 = v32 + v15 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v33];
        if (v34 == 0.0)
        {
          v35 = HIWORD(LODWORD(v34));
        }

        else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v34) >> 23])
        {
          v35 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v34) >> 23] + (((LODWORD(v34) & 0x7FFFFF) + ((LODWORD(v34) >> 13) & 1) + 4095) >> 13);
        }

        else
        {
          LOWORD(v35) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v34));
        }

        *v30++ = v35;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29A56712C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A5671F4(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5672C0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = MEMORY[0x29EDC94C0];
    v8 = 0;
    v7[0] = &unk_2A2050750;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A567334(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v19 = 0;
  v10 = sub_29A3302A8(a2);
  v11 = MEMORY[0x29EDC94C0];
  v21 = &v19 + 4;
  v22 = MEMORY[0x29EDC94C0];
  v23 = 0;
  v20 = &unk_2A2050750;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v13 = TimeSample & (v23 ^ 1u);
  if (v13 == 1)
  {
    v14 = sub_29A3302A8(a2);
    v21 = &v19;
    v22 = v11;
    v23 = 0;
    v20 = &unk_2A2050750;
    v15 = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v14, a5);
    v16 = *&v19;
    if (v23 & 1 | ((v15 & 1) == 0))
    {
      v16 = *(&v19 + 1);
    }

    v17 = (1.0 - (a3 - a4) / (a5 - a4)) * *(&v19 + 1) + (a3 - a4) / (a5 - a4) * v16;
    **(a1 + 8) = v17;
  }

  return v13;
}

void sub_29A5677A8(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A567870(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56793C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042500;
    v8 = 0;
    v7[0] = &unk_2A2050788;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A5679B0(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A250C(v12, a3, &v37, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A250C(v13, a3, &v34, a6) & 1) == 0)
    {
      sub_29A41712C(&v34, &v37);
    }

    v14 = &v38 + 8;
    if (v37 != v34 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v38;
      v16[4] = v39;
      v39 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v37;
      v16[2] = v18;
      v37 = v20;
      *&v38 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v35 + 8;
      v22 = v16[4];
      v23 = v35;
      v16[4] = v36;
      v36 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v34;
      v16[2] = v23;
      v34 = v25;
      *&v35 = v24;
      goto LABEL_7;
    }

    v40 = 0;
    v41 = &v40;
    sub_29A18E224(v16, v37, &v41, COERCE_INT16X4_T(1.0));
    v26 = v39;
    v27 = v36;
    v28 = *(a1 + 8);
    sub_29A18E624(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v32 = (1.0 - v15) * v31;
        v33 = *v27++;
        *&v32 = v32 + v15 * v33;
        *v30++ = LODWORD(v32);
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29A567DA8(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A567E70(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A567F3C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = MEMORY[0x29EDC94B8];
    v8 = 0;
    v7[0] = &unk_2A20507C0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A567FB0(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v18 = 0.0;
  v19 = 0.0;
  v10 = sub_29A3302A8(a2);
  v11 = MEMORY[0x29EDC94B8];
  v21 = &v19;
  v22 = MEMORY[0x29EDC94B8];
  v23 = 0;
  v20 = &unk_2A20507C0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v13 = TimeSample & (v23 ^ 1u);
  if (v13 == 1)
  {
    v14 = sub_29A3302A8(a2);
    v21 = &v18;
    v22 = v11;
    v23 = 0;
    v20 = &unk_2A20507C0;
    v15 = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v14, a5);
    v16 = v18;
    if (v23 & 1 | ((v15 & 1) == 0))
    {
      v16 = v19;
    }

    **(a1 + 8) = (1.0 - (a3 - a4) / (a5 - a4)) * v19 + (a3 - a4) / (a5 - a4) * v16;
  }

  return v13;
}

void sub_29A568408(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A5684D0(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56859C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20424E8;
    v8 = 0;
    v7[0] = &unk_2A20507F8;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A568610(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A28FC(v12, a3, &v37, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A28FC(v13, a3, &v34, a6) & 1) == 0)
    {
      sub_29A4ABD14(&v34, &v37);
    }

    v14 = &v38 + 8;
    if (v37 != v34 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v38;
      v16[4] = v39;
      v39 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v37;
      v16[2] = v18;
      v37 = v20;
      *&v38 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v35 + 8;
      v22 = v16[4];
      v23 = v35;
      v16[4] = v36;
      v36 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v34;
      v16[2] = v23;
      v34 = v25;
      *&v35 = v24;
      goto LABEL_7;
    }

    v40 = 0;
    v41 = &v40;
    sub_29A18FD48(v16, v37, &v41);
    v26 = v39;
    v27 = v36;
    v28 = *(a1 + 8);
    sub_29A190088(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v32 = v31;
        v33 = *v27++;
        *v30++ = (1.0 - v15) * v32 + v15 * v33;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29A5689F0(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A568AB8(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A568B84(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20478E8;
    v8 = 0;
    v7[0] = &unk_2A2050830;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A568BF8(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v17 = 0.0;
  v18 = 0.0;
  v10 = sub_29A3302A8(a2);
  v20 = &v18;
  v21 = &stru_2A20478E8;
  v22 = 0;
  v19 = &unk_2A2050830;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v22 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v20 = &v17;
    v21 = &stru_2A20478E8;
    v22 = 0;
    v19 = &unk_2A2050830;
    v14 = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5);
    v15 = v17;
    if (v22 & 1 | ((v14 & 1) == 0))
    {
      v15 = v18;
    }

    **(a1 + 8) = (1.0 - (a3 - a4) / (a5 - a4)) * v18 + (a3 - a4) / (a5 - a4) * v15;
  }

  return v12;
}