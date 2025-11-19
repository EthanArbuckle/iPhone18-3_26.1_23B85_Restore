void sub_29A242868(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A2429A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29A242A10(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1EFFD4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
  }

  sub_29A243128(a1);
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::Swap();
}

void sub_29A242AE8(uint64_t a1, _BYTE *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29A186978(v4, a1);
  *(a1 + 8) = &off_2A2049200;
  sub_29A2430C0(a1, a2);
}

void sub_29A242B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A242BB8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A242BD8(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A242CE8(a1);
}

void sub_29A242CD0(_BYTE **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2049200;
  sub_29A2430C0(a2, v2);
}

void sub_29A242CE8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      sub_29A012C90(&v2);
      v2 = (v1 + 104);
      sub_29A012C90(&v2);
      v2 = (v1 + 80);
      sub_29A012C90(&v2);
      v2 = (v1 + 56);
      sub_29A012C90(&v2);
      v2 = (v1 + 32);
      sub_29A012C90(&v2);
      v2 = (v1 + 8);
      sub_29A012C90(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A242D94(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A242E00(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

unint64_t sub_29A242E00(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A242E48(a1, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_29A242E48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29A1C5CF0(a1, *a2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  sub_29A1C5CF0(a1, *a3, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));

  return sub_29A242EF0(a1, a4, a5, a6, a7);
}

unint64_t sub_29A242EF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29A1C5CF0(a1, *a2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  sub_29A1C5CF0(a1, *a3, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));

  return sub_29A242F80(a1, a4, a5);
}

unint64_t sub_29A242F80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1C5CF0(a1, *a2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v5 = *a3;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3);

  return sub_29A1C5CF0(a1, v5, v6);
}

uint64_t sub_29A242FF0(_BYTE **a1)
{
  v1 = atomic_load(*a1 + 38);
  if (v1 != 1)
  {
    sub_29A243058(*a1);
  }

  return *a1;
}

uint64_t sub_29A243128(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B294964();
  }

  return sub_29A242FF0(a1);
}

__n128 sub_29A243164(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2431F0(a1, a2))
  {
    goto LABEL_6;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A22DED0(a1) & 1) != 0);
  if ((sub_29A229D1C(a1) & 1) == 0 && v3)
  {
LABEL_6:
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A2431E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2431F0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A243270(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25F120(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A243264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A243270(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A243338(a1, a2))
  {
    return 0;
  }

  if (!sub_29A235C1C(a1))
  {
    return 0;
  }

  sub_29A24384C(a1, a2);
  if (!sub_29A22E5EC(a1, a2))
  {
    return 0;
  }

  if (!sub_29A2439EC(a1, a2))
  {
    return 0;
  }

  v4 = a1[4];
  if (v4 == a1[8] || *v4 != 123)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v4 + 1;
  a1[5] = v5;
  ++a1[7];

  return sub_29A25291C(a1, a2);
}

uint64_t sub_29A243338(uint64_t a1, uint64_t a2)
{
  if (sub_29A24339C(a1, a2) & 1) != 0 || (sub_29A243528(a1, a2))
  {
    return 1;
  }

  return sub_29A2436B4(a1, a2);
}

uint64_t sub_29A24339C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A24341C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2434D4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A243410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A24341C(uint64_t a1)
{
  if (sub_29A243468(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A243468(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 25956 || *(v1 + 2) != 102)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

void sub_29A2434D4(uint64_t a1, uint64_t a2)
{
  *(a2 + 1020) = 0;
  if (*(*(a2 + 264) - 4) == 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 1u);
}

uint64_t sub_29A243528(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2435A8(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A24365C(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A24359C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2435A8(uint64_t a1)
{
  if (sub_29A2435F4(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2435F4(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1919252079)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

void sub_29A24365C(uint64_t a1, uint64_t a2)
{
  *(a2 + 1020) = 1;
  if (*(*(a2 + 264) - 4) == 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 1u);
}

uint64_t sub_29A2436B4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A243734(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2437F4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A243728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A243734(uint64_t a1)
{
  if (sub_29A243780(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A243780(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1935764579 || *(v1 + 4) != 115)
  {
    return 0;
  }

  v4 = a1[5] + 5;
  a1[4] = v1 + 5;
  a1[5] = v4;
  a1[7] += 5;
  return 1;
}

void sub_29A2437F4(uint64_t a1, uint64_t a2)
{
  *(a2 + 1020) = 2;
  if (*(*(a2 + 264) - 4) == 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 1u);
}

__n128 sub_29A24384C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (!sub_29A2438B8(a1, a2) || (sub_29A235C1C(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A2438AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2438B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A230290(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A243904(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

__n128 sub_29A243904(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A243970(a1, a2) || (sub_29A230290(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A243964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A243970(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A236E04(a1, a2);
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A2439EC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = a1 + 24;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
    ;
  }

  sub_29A243A74(a1, a2);
  v8[0] = v6;
  v8[1] = v7;
  v9 = v4;
  sub_29A2528A0(v8, a2);
  return 1;
}

void sub_29A243A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A243A74(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22E2FC(a1, a2);
  if (v4)
  {
    sub_29A243AF8(a1, a2);
      ;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A243AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A243AF8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A243B58(a1, a2);
  if ((sub_29A24108C(a1, a2) & 1) == 0)
  {
    sub_29A241028(a1);
  }

  return 1;
}

uint64_t sub_29A243B58(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A243BD0(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A243BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A243BD0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A243C28(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A252834(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v4;
}

uint64_t sub_29A243C28(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A243E7C(a1, a2) & 1) != 0 || (sub_29A244578(a1, a2))
  {
    return 1;
  }

  if (sub_29A2447D0(a1, a2))
  {
    sub_29A244B00(a1, a2);
    return 1;
  }

  if (sub_29A248DB8(a1, a2))
  {
    sub_29A2490A0(a1, a2);
    return 1;
  }

  if (sub_29A24CC98(a1, a2))
  {
    return 1;
  }

  if (sub_29A24DA24(a1, a2))
  {
    sub_29A24DB9C(a1, a2);
    return 1;
  }

  if (sub_29A243D5C(a1, a2) & 1) != 0 || (sub_29A243DA4(a1, a2) & 1) != 0 || (sub_29A22E530(a1, a2) & 1) != 0 || (sub_29A243DEC(a1, a2) & 1) != 0 || (sub_29A251654(a1, a2) & 1) != 0 || (sub_29A243E34(a1, a2))
  {
    return 1;
  }

  return sub_29A252420(a1, a2);
}

uint64_t sub_29A243D5C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A24DC74(a1, a2);
  if (v4)
  {
    sub_29A24DE5C(a1, a2);
  }

  return v4;
}

uint64_t sub_29A243DA4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A250350(a1, a2);
  if (v4)
  {
    sub_29A24DE5C(a1, a2);
  }

  return v4;
}

uint64_t sub_29A243DEC(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A23BBF8(a1, a2);
  if (v4)
  {
    sub_29A250554(a1, a2);
  }

  return v4;
}

uint64_t sub_29A243E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A2521C8(a1, a2);
  if (v4)
  {
    sub_29A252348(a1, a2);
  }

  return v4;
}

uint64_t sub_29A243E7C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A22E5EC(a1, a2) & 1) != 0 || (sub_29A243EE0(a1, a2))
  {
    return 1;
  }

  return sub_29A23B8EC(a1, a2);
}

uint64_t sub_29A243EE0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A243F60(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A244450(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A243F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A243F60(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A243FC4(a1, a2) || !sub_29A234BC8(a1, a2))
  {
    return 0;
  }

  return sub_29A234CE8(a1, a2);
}

uint64_t sub_29A243FC4(uint64_t a1, uint64_t a2)
{
  if (sub_29A244028(a1, a2) & 1) != 0 || (sub_29A244258(a1, a2))
  {
    return 1;
  }

  return sub_29A230290(a1, a2);
}

uint64_t sub_29A244028(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2440A8(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2441A8(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A24409C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2440A8(uint64_t a1)
{
  if (sub_29A2440F4(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2440F4(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x61446D6F74737563 || *(v1 + 8) != 24948)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

void sub_29A2441A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (*(v2 - 4) == 4)
  {
    SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(v2 - 8));
    sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataStart(__p, SpecTypeFromContext, a2);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 5u);
  }
}

void sub_29A24423C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A244258(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2442D8(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2443A0(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2442CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2442D8(uint64_t a1)
{
  if (sub_29A244324(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A244324(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0x11)
  {
    return 0;
  }

  v2 = *v1 == 0x797274656D6D7973 && *(v1 + 8) == 0x746E656D75677241;
  if (!v2 || *(v1 + 16) != 115)
  {
    return 0;
  }

  v5 = a1[5] + 17;
  a1[4] = v1 + 17;
  a1[5] = v5;
  a1[7] += 17;
  return 1;
}

void sub_29A2443A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (*(v2 - 4) == 4)
  {
    SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(v2 - 8));
    sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataStart(__p, SpecTypeFromContext, a2);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 5u);
  }
}

void sub_29A244434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A244450(uint64_t a1, uint64_t a2)
{
  SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(*(a2 + 264) - 8));
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataEnd(SpecTypeFromContext, a2, __p) & 1) == 0)
  {
    v5 = *(a1 + 32);
    sub_29A2266C8(v7, a1, (v5 + 48));
    sub_29A276708(a2, v5, v7, __p);
    if (v8 < 0)
    {
      operator delete(v7[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A244530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A244578(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = sub_29A2445F0(a1, a2);
  if (v4)
  {
    sub_29A244714(a1, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v4;
}

void sub_29A2445E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2445F0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A244660(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x19u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A244654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A244660(uint64_t a1)
{
  if (sub_29A2446AC(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2446AC(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1684957547)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

uint64_t sub_29A244714(uint64_t a1, uint64_t a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A22E5EC(a1, a2) & 1) == 0)
  {
    sub_29A24476C(a1);
  }

  return 1;
}

void sub_29A24476C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected string", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A2447D0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_29A244850(a1);
  if (result)
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A244950(v7, a2);
  }

  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_29A244844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A244850(uint64_t a1)
{
  if (sub_29A24489C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A24489C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x636E657265666572 || *(v1 + 8) != 29541)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

void sub_29A244950(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x12u);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *&v3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v3 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A244A44(uint64_t a1, uint64_t a2)
{
  sub_29A184A10((a2 + 48), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_29A244AAC(uint64_t a1)
{
  sub_29A184A10((a1 + 48), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A244B00(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A244BD8(a1, a2) & 1) == 0)
  {
    sub_29A244B74(a1);
  }

  return 1;
}

void sub_29A244B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A244B74(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected None, reference, or list of references separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A244BD8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A244C58(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A24586C(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A244C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A244C58(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A234D4C(a1, a2) & 1) != 0 || (sub_29A244CBC(a1, a2))
  {
    return 1;
  }

  return sub_29A245668(a1, a2);
}

uint64_t sub_29A244CBC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A244D3C(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A2450EC(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A244D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A244D3C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A23C954(a1, a2) & 1) != 0 || (result = sub_29A244DA4(a1, a2), result))
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
    sub_29A244E08(a1, a2);
    return 1;
  }

  return result;
}

uint64_t sub_29A244DA4(void *a1, uint64_t a2)
{
  sub_29A2401F0(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
    sub_29A23C954(a1, a2);
  }

  return v5;
}

__n128 sub_29A244E08(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A244E94(a1, a2))
  {
    goto LABEL_4;
  }

    ;
  }

  sub_29A244F20(a1, a2);
  if ((sub_29A24108C(a1, a2) & 1) == 0)
  {
LABEL_4:
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A244E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A244E94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 40)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x28u);
  return 1;
}

void sub_29A244F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A244F20(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A244F98(a1, a2);
  v4 = v3;
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A244F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A244F98(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A244FF4(a1, a2);
  if ((v4 & 1) != 0 || (sub_29A2406BC(a1, a2), v5))
  {
    do
    {
      sub_29A245070(a1, a2);
    }

    while ((v6 & 1) != 0);
    sub_29A240F88(a1);
  }
}

__n128 sub_29A244FF4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A244028(a1, a2) || !sub_29A234BC8(a1, a2) || (sub_29A23529C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A245064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A245070(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (!sub_29A236670(a1) || (result.n128_u64[0] = sub_29A244FF4(a1, a2).n128_u64[0], (v5 & 1) == 0) && (sub_29A2406BC(a1, a2), (v6 & 1) == 0))
  {
    result = v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void sub_29A2450E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2450EC(uint64_t a1, uint64_t a2)
{
  *&v5 = 0;
  pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(__p, a2 + 72, a2 + 336, a2 + 96, &v5);
  sub_29A184A10(&v5, 0);
  pxrInternal__aapl__pxrReserved__::VtDictionary::swap(&v10, *(a2 + 944));
  v3 = sub_29A245218((a2 + 488), __p);
  if (*(a2 + 95) < 0)
  {
    **(a2 + 72) = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    *(a2 + 72) = 0;
    *(a2 + 95) = 0;
  }

  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v3);
  sub_29A2258F0((a2 + 336), v4);
  sub_29A225948((a2 + 340), v4 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v5, 0.0, 1.0);
  *(a2 + 96) = v5;
  sub_29A184A10(&v10, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v9);
  sub_29A1DE3A4(&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2451EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A244AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A245218(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A245278(a1, a2);
  }

  else
  {
    sub_29A2453C4(a1, a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A245278(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[56 * v2];
  *(&v16 + 1) = &v7[56 * v6];
  sub_29A2453C4(a1, v15, a2);
  *&v16 = v15 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A245460(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A2455EC(&v14);
  return v13;
}

void sub_29A2453B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2455EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2453C4(int a1, char *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v5;
  }

  sub_29A1E21F4(__dst + 6, a3 + 6);
  sub_29A1E2240(__dst + 7, a3 + 7);
  *(__dst + 2) = a3[2];
  return pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a3 + 3));
}

void sub_29A24543C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A245460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 28;
    do
    {
      v9 = *(v8 - 28);
      *(v4 + 16) = *(v8 - 12);
      *v4 = v9;
      *(v8 - 12) = 0;
      *(v8 - 20) = 0;
      *(v8 - 28) = 0;
      sub_29A1DDD84((v4 + 24), (v8 - 4));
      sub_29A1DDDC0((v4 + 28), v8);
      *(v4 + 32) = *(v8 + 4);
      v10 = *(v8 + 20);
      *(v8 + 20) = 0;
      *(v4 + 48) = v10;
      v4 = v16 + 56;
      v16 += 56;
      v11 = v8 + 28;
      v8 += 56;
    }

    while (v11 != a3);
    v14 = 1;
    while (v6 != a3)
    {
      sub_29A244A44(a1, v6);
      v6 += 56;
    }
  }

  return sub_29A245560(v13);
}

uint64_t sub_29A245560(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A245598(a1);
  }

  return a1;
}

void sub_29A245598(uint64_t *a1)
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
      v3 -= 56;
      sub_29A244A44(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A2455EC(void **a1)
{
  sub_29A245620(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A245620(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29A244A44(v4, i - 56);
  }
}

uint64_t sub_29A245668(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = a1[4];
  if (v2 == a1[8])
  {
    return 0;
  }

  if (*v2 != 91)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v5;
  ++a1[7];
    ;
  }

  sub_29A245730(a1, a2);
  v6 = a1[4];
  if (v6 == a1[8] || *v6 != 93)
  {
    return 0;
  }

  v7 = a1[5] + 1;
  a1[4] = v6 + 1;
  a1[5] = v7;
  ++a1[7];
  return 1;
}

uint64_t sub_29A245730(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A2457A8(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A245798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2457A8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A244CBC(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A245800(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

__n128 sub_29A245800(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A244CBC(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A245860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A24586C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 488);
  v5 = *(a2 + 496);
  if (v4 == v5 && *(a2 + 616) != 0)
  {
    sub_29A008E78(__p, "Setting references to None (or an empty list)is only allowed when setting explicit references, not for list editing");
    v13 = *(a1 + 32);
    sub_29A2266C8(v20, a1, (v13 + 48));
    sub_29A276708(a2, v13, v20, __p);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  while (v4 != v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidReference(v4, __p);
    if (v19 == 1)
    {
      v9 = *(a1 + 32);
      sub_29A2266C8(v20, a1, (v9 + 48));
      WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A276708(a2, v9, v20, WhyNot);
      if (v22 < 0)
      {
        operator delete(v21);
      }

      v11 = __cxa_allocate_exception(0x20uLL);
      v12 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A22DB7C(v11, v12, a1);
      __cxa_throw(v11, &unk_2A2048840, sub_29A2265D4);
    }

    v4 = (v4 + 56);
  }

  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v7)
  {
    v7 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((sub_29A245B54(v7 + 36, *(a2 + 616), (a2 + 488), a2, __p) & 1) == 0)
  {
    v15 = *(a1 + 32);
    sub_29A2266C8(v20, a1, (v15 + 48));
    sub_29A276708(a2, v15, v20, __p);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    v16 = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(v16, __p, a1);
    __cxa_throw(v16, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v8);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A245ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A245B54(void *a1, uint64_t a2, __int128 **a3, uint64_t a4, uint64_t a5)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v8 = *a3;
  v9 = a3[1];
  v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - *a3) >> 3);
  if (v10 < 2)
  {
    goto LABEL_2;
  }

  if (v10 > 0xA)
  {
    if (v8 == v9)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v15 = v8 + 56;
      if ((v8 + 56) == v9)
      {
        break;
      }

      v16 = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v8, v8 + 7);
      v8 = (v8 + 56);
      if ((v16 & 1) == 0)
      {
        v9 = (v15 - 56);
        break;
      }
    }

    if (v9 == a3[1] || (v14 = sub_29A246108(a3), !v14))
    {
LABEL_2:
      sub_29A22DD10((a4 + 1024));
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SdfListOp();
    }
  }

  else
  {
    if (v8 == (v9 - 56))
    {
      goto LABEL_2;
    }

    while (1)
    {
      v12 = v8 + 56;
      if (v9 != (v8 + 56))
      {
        break;
      }

LABEL_9:
      v8 = (v8 + 56);
      if (v12 == v9 - 56)
      {
        goto LABEL_2;
      }
    }

    v13 = (v8 + 56);
    while (1)
    {
      v14 = pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v8, v13);
      if (v14)
      {
        break;
      }

      v13 = (v13 + 56);
      if (v13 == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  std::operator+<char>();
  v17 = std::string::append(&v32, "' at '");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString((a4 + 1032), v29);
  if ((v30 & 0x80u) == 0)
  {
    v19 = v29;
  }

  else
  {
    v19 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = v29[1];
  }

  v21 = std::string::append(&v31, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(__p, "'");
  v24 = v23->__r_.__value_.__r.__words[0];
  v33[0] = v23->__r_.__value_.__l.__size_;
  *(v33 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v26 = v33[0];
  *a5 = v24;
  *(a5 + 8) = v26;
  *(a5 + 15) = *(v33 + 7);
  *(a5 + 23) = v25;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A245F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  _Unwind_Resume(exception_object);
}

void **sub_29A246038(void **a1)
{
  v3 = a1 + 16;
  sub_29A2463D0(&v3);
  v3 = a1 + 13;
  sub_29A2463D0(&v3);
  v3 = a1 + 10;
  sub_29A2463D0(&v3);
  v3 = a1 + 7;
  sub_29A2463D0(&v3);
  v3 = a1 + 4;
  sub_29A2463D0(&v3);
  v3 = a1 + 1;
  sub_29A2463D0(&v3);
  return a1;
}

BOOL sub_29A246108(__int128 **a1)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_29A246200(&v9, *a1, a1[1], 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3));
  v1 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v10 - v9));
  if (v10 == v9)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  sub_29A246458(v9, v10, &v12, v2, 1);
  v3 = v9;
  v4 = v10;
  if (v9 != v10)
  {
    while (1)
    {
      v5 = v3 + 7;
      if (v3 + 7 == v4)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v3, v3 + 7);
      v3 = v5;
      if (v6)
      {
        v4 = v5 - 7;
        break;
      }
    }

    v3 = v4;
    v4 = v10;
  }

  v7 = v3 != v4;
  v13 = &v9;
  sub_29A2463D0(&v13);
  return v7;
}

void sub_29A2461E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_29A2463D0((v10 - 24));
  _Unwind_Resume(a1);
}

char *sub_29A246200(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29A246288(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A246268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A2463D0(&a9);
  _Unwind_Resume(a1);
}

char *sub_29A246288(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      sub_29A246334(v7, v4, v6);
      v6 = (v6 + 56);
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A245560(v9);
  return v4;
}

uint64_t sub_29A246334(int a1, char *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v5;
  }

  sub_29A1E21F4(__dst + 6, a3 + 6);
  sub_29A1E2240(__dst + 7, a3 + 7);
  *(__dst + 2) = a3[2];
  return pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a3 + 3));
}

void sub_29A2463AC(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A2463D0(void ***a1)
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
        v4 -= 56;
        sub_29A244A44(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_29A246458(const void **result, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2 - 7;
  v16 = a2 - 21;
  v17 = a2 - 14;
  v7 = result;
  v8 = result;
  v9 = a2 - result;
  v10 = 0x6DB6DB6DB6DB6DB7 * (a2 - result);
  if (v10 <= 2)
  {
    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v6, result);
      if (result)
      {

        sub_29A2476F4(v7, v6);
      }

      return result;
    }

    goto LABEL_8;
  }

  switch(v10)
  {
    case 3uLL:

      return sub_29A246898(result, result + 7, v6);
    case 4uLL:
      sub_29A246898(result, result + 7, result + 14);
      result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v6, (v7 + 112));
      if (result)
      {
        sub_29A2476F4(v7 + 112, v6);
      }

      break;
    case 5uLL:

      return sub_29A24694C(result, result + 7, result + 14, (result + 21), v6);
    default:
LABEL_8:
      if (v9 <= 1343)
      {
        if (a5)
        {

          return sub_29A246A78(result, a2);
        }

        else
        {

          return sub_29A246C90(result, a2);
        }
      }

      else
      {
        if (a4 != 0)
        {
          v11 = v10 >> 1;
          v12 = &result[7 * (v10 >> 1)];
          if (v9 >= 0x1C01)
          {
            sub_29A246898(result, v12, v6);
            v13 = v7 + 56;
            v14 = 56 * v11;
            v15 = &v8[7 * v11 - 7];
            sub_29A246898(v8 + 7, v15, v17);
            sub_29A246898(v8 + 14, (v13 + v14), v16);
            sub_29A246898(v15, v12, (v13 + v14));
            sub_29A2476F4(v8, v12);
          }

          sub_29A246898(v12, result, v6);
          if (a5 & 1) != 0 || (pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v8 - 7, v8))
          {
            sub_29A247110(v8, a2);
          }

          sub_29A246E94(v8, a2);
        }

        if (result != a2)
        {

          return sub_29A247890(result, a2, a2, a3);
        }
      }

      return result;
  }

  return result;
}

uint64_t sub_29A246898(const void **a1, const void **a2, const void **a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      sub_29A2476F4(a1, a3);
    }

    sub_29A2476F4(a1, a2);
  }

  if (result)
  {
    sub_29A2476F4(a2, a3);
  }

  return result;
}

uint64_t sub_29A24694C(const void **a1, const void **a2, const void **a3, __int128 *a4, const void **a5)
{
  sub_29A246898(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a4, a3))
  {
    sub_29A2476F4(a3, a4);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a5, a4);
  if (result)
  {
    sub_29A2476F4(a4, a5);
  }

  return result;
}

uint64_t sub_29A246A78(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 56);
    if ((result + 56) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v4, v6);
        if (result)
        {
          *__p = *v7;
          v11 = v7[2];
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v12 = *(v6 + 80);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v6 + 80));
          v13 = *(v6 + 84);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 84));
          v14 = *(v6 + 88);
          v8 = *(v6 + 104);
          *(v6 + 104) = 0;
          v15 = v8;
          v9 = v3 + v5;
          if (*(v3 + v5 + 79) < 0)
          {
            operator delete(*(v9 + 56));
          }

          *(v9 + 56) = *v9;
          *(v9 + 72) = *(v9 + 16);
          *(v9 + 23) = 0;
          *v9 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v4 = v7 + 7;
        v5 += 56;
        v6 = v7;
      }

      while (v7 + 7 != a2);
    }
  }

  return result;
}

uint64_t sub_29A246C90(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 56);
    if ((result + 56) != a2)
    {
      v5 = result + 104;
      do
      {
        v6 = v4;
        result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v4, v3);
        if (result)
        {
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v3 + 20);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v3 + 21);
          v3[13] = 0;
          v7 = (v5 - 48);
          if (*(v5 - 25) < 0)
          {
            operator delete(*v7);
          }

          *v7 = *(v5 - 104);
          *(v5 - 32) = *(v5 - 88);
          *(v5 - 81) = 0;
          *(v5 - 104) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v4 = v6 + 7;
        v5 += 56;
        v3 = v6;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}

void sub_29A246E94(uint64_t a1, const void **a2)
{
  *__p = *a1;
  v12 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v13 = *(a1 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 24));
  v14 = *(a1 + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 28));
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  *(a1 + 48) = 0;
  v16 = v4;
  if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<(__p, a2 - 7))
  {
    v5 = a1;
    do
    {
      v5 += 7;
    }

    while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator<(__p, v5) & 1) == 0);
  }

  else
  {
    v6 = (a1 + 56);
    do
    {
      v5 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(__p, v6);
      v6 = v5 + 7;
    }

    while (!v7);
  }

  if (v5 < a2)
  {
    do
    {
      a2 -= 7;
    }

    while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator<(__p, a2) & 1) != 0);
  }

  if (v5 >= a2)
  {
    v8 = (v5 - 7);
    if (v5 - 7 != a1)
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v9 = *v8;
      *(a1 + 16) = *(v5 - 5);
      *a1 = v9;
      *(v5 - 33) = 0;
      *(v5 - 56) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (*(v5 - 33) < 0)
    {
      operator delete(*v8);
    }

    v10 = *__p;
    *(v5 - 5) = v12;
    *v8 = v10;
    HIBYTE(v12) = 0;
    LOBYTE(__p[0]) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A2476F4(v5, a2);
}

void sub_29A247110(uint64_t a1, const void **a2)
{
  *__p = *a1;
  v13 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = *(a1 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 24));
  v15 = *(a1 + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 28));
  v4 = 0;
  v5 = *(a1 + 48);
  v16 = *(a1 + 32);
  *(a1 + 48) = 0;
  v17 = v5;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfReference::operator<((a1 + v4 + 56), __p);
    v4 += 56;
  }

  while ((v6 & 1) != 0);
  v7 = a1 + v4;
  if (v4 == 56)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 7;
    }

    while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a2, __p) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 7;
    }

    while (!pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a2, __p));
  }

  v8 = a1 + v4;
  if (v7 < a2)
  {
    sub_29A2476F4(v8, a2);
  }

  v9 = (v8 - 56);
  if (v8 - 56 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v10 = *v9;
    *(a1 + 16) = *(v8 - 40);
    *a1 = v10;
    *(v8 - 33) = 0;
    *(v8 - 56) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (*(v8 - 33) < 0)
  {
    operator delete(*v9);
  }

  v11 = *__p;
  *(v8 - 40) = v13;
  *v9 = v11;
  HIBYTE(v13) = 0;
  LOBYTE(__p[0]) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A247394(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 56);
      if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<((a2 - 56), a1))
      {
        sub_29A2476F4(a1, v5);
      }

      return 1;
    }

    goto LABEL_11;
  }

  if (v4 == 3)
  {
    sub_29A246898(a1, (a1 + 56), (a2 - 56));
    return 1;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      sub_29A24694C(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56));
      return 1;
    }

LABEL_11:
    v6 = (a1 + 112);
    sub_29A246898(a1, (a1 + 56), (a1 + 112));
    v7 = a1 + 168;
    if (a1 + 168 != a2)
    {
      v8 = 0;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v7, v6))
        {
          *__p = *v7;
          v14 = *(v7 + 16);
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
          v15 = *(v7 + 24);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v7 + 24));
          v16 = *(v7 + 28);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v7 + 28));
          v17 = *(v7 + 32);
          v9 = *(v7 + 48);
          *(v7 + 48) = 0;
          v18 = v9;
          v10 = a1 + v8;
          if (*(a1 + v8 + 191) < 0)
          {
            operator delete(*(v10 + 168));
          }

          *(v10 + 168) = *(v10 + 112);
          *(v10 + 184) = *(v10 + 128);
          *(v10 + 135) = 0;
          *(v10 + 112) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v6 = v7;
        v8 += 56;
        v7 += 56;
      }

      while (v7 != a2);
    }

    return 1;
  }

  v11 = (a2 - 56);
  sub_29A246898(a1, (a1 + 56), (a1 + 112));
  if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v11, (a1 + 112)))
  {
    sub_29A2476F4(a1 + 112, v11);
  }

  return 1;
}

void sub_29A2476F4(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 28));
  *(a1 + 48) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

const void **sub_29A247890(__int128 *a1, __int128 *a2, const void **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 56 * v10;
      do
      {
        sub_29A2479C8(a1, a4, v9, v12);
        v12 -= 56;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v13, a1))
        {
          sub_29A2476F4(v13, a1);
        }

        v13 += 7;
      }

      while (v13 != a3);
    }

    if (v8 >= 57)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      do
      {
        sub_29A247C50(a1, v6, a4, v14);
        v6 -= 56;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29A2479C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
  {
    v5 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
    v6 = result + 56 * v5;
    if ((0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2) < a3)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<((result + 56 * v5), (v6 + 56)))
      {
        v6 += 56;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v6, a4);
    if ((result & 1) == 0)
    {
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a4 + 24));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a4 + 28));
      *(a4 + 48) = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v8 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v8;
      *(v6 + 23) = 0;
      *v6 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

uint64_t sub_29A247C50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((result + 24));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 28));
    *(v6 + 48) = 0;
    sub_29A247EBC(v6, a3, a4);
  }

  return result;
}

void sub_29A247EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 56);
  if (a3 > 2)
  {
    v5 = (a1 + 112);
    if (pxrInternal__aapl__pxrReserved__::SdfReference::operator<((a1 + 56), (a1 + 112)))
    {
      v4 = v5;
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v7 = *v4;
  *(a1 + 16) = *(v4 + 2);
  *a1 = v7;
  *(v4 + 23) = 0;
  *v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A247FB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = result + 56 * ((a4 - 2) >> 1);
    v6 = a2 - 56;
    result = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v5, (a2 - 56));
    if (result)
    {
      *__p = *v6;
      v10 = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v11 = *(a2 - 32);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a2 - 32));
      v12 = *(a2 - 28);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a2 - 28));
      v13 = *(a2 - 24);
      v7 = *(a2 - 8);
      *(a2 - 8) = 0;
      v14 = v7;
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v8 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *v6 = v8;
      *(v5 + 23) = 0;
      *v5 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

uint64_t sub_29A2481A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29A246200((a1 + 8), *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29A246200((a1 + 32), *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29A246200((a1 + 56), *(a2 + 56), *(a2 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A246200((a1 + 80), *(a2 + 80), *(a2 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_29A246200((a1 + 104), *(a2 + 104), *(a2 + 112), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A246200((a1 + 128), *(a2 + 128), *(a2 + 136), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 136) - *(a2 + 128)) >> 3));
  return a1;
}

void sub_29A2482DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2463D0(va);
  sub_29A2463D0(va);
  sub_29A2463D0(va);
  sub_29A2463D0(va);
  sub_29A2463D0(va);
  _Unwind_Resume(a1);
}

void sub_29A248344(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1EF0BC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SdfListOp();
  }

  sub_29A248D7C(a1);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::Swap();
}

uint64_t sub_29A24841C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A20492B8;
  sub_29A248D14(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A2484B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A2484EC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A24850C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A24861C(a1);
}

uint64_t sub_29A248604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20492B8;
  return sub_29A248D14(a2, v2);
}

void sub_29A24861C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      sub_29A2463D0(&v2);
      v2 = (v1 + 104);
      sub_29A2463D0(&v2);
      v2 = (v1 + 80);
      sub_29A2463D0(&v2);
      v2 = (v1 + 56);
      sub_29A2463D0(&v2);
      v2 = (v1 + 32);
      sub_29A2463D0(&v2);
      v2 = (v1 + 8);
      sub_29A2463D0(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A2486C8(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A248734(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

unint64_t sub_29A248734(unint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A24877C(a1, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_29A24877C(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = *a2;
  v15 = a2[1] - v14;
  if (v15)
  {
    v16 = 0x6DB6DB6DB6DB6DB7 * (v15 >> 3);
    do
    {
      --v16;
      v17 = v14 + 56;
      sub_29A2488E4(a1, v14);
      v14 = v17;
    }

    while (v16);
  }

  return sub_29A248834(a1, a3, a4, a5, a6, a7);
}

unint64_t sub_29A248834(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = *a2;
  v13 = a2[1] - v12;
  if (v13)
  {
    v14 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
    do
    {
      --v14;
      v15 = v12 + 56;
      sub_29A2488E4(a1, v12);
      v12 = v15;
    }

    while (v14);
  }

  return sub_29A248A68(a1, a3, a4, a5, a6);
}

unint64_t sub_29A2488E4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A24896C(&v5, a2, (a2 + 24), (a2 + 32), (a2 + 48));
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_29A24896C(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2, unsigned int *a3, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a4, uint64_t *a5)
{
  v9 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v10);
  sub_29A1E33B4(a1, a3);

  return sub_29A2489E4(a1, a4, a5);
}

unint64_t sub_29A2489E4(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *this, uint64_t *a3)
{
  Hash = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(this);
  if (*(a1 + 8))
  {
    Hash += (*a1 + Hash + (*a1 + Hash) * (*a1 + Hash)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = Hash;
  result = sub_29A1876A4(a3);
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

unint64_t sub_29A248A68(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = a2[1] - v10;
  if (v11)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
    do
    {
      --v12;
      v13 = v10 + 56;
      sub_29A2488E4(a1, v10);
      v10 = v13;
    }

    while (v12);
  }

  return sub_29A248B08(a1, a3, a4, a5);
}

unint64_t sub_29A248B08(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = a2[1] - v8;
  if (v9)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
    do
    {
      --v10;
      v11 = v8 + 56;
      sub_29A2488E4(a1, v8);
      v8 = v11;
    }

    while (v10);
  }

  return sub_29A248BA0(a1, a3, a4);
}

unint64_t sub_29A248BA0(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = a2[1] - v6;
  if (v7)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
    do
    {
      --v8;
      v9 = v6 + 56;
      result = sub_29A2488E4(v5, v6);
      v6 = v9;
    }

    while (v8);
  }

  v10 = *a3;
  v11 = a3[1] - *a3;
  if (v11)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
    do
    {
      --v12;
      v13 = v10 + 56;
      result = sub_29A2488E4(v5, v10);
      v10 = v13;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29A248C44(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 152));
  if (v2 != 1)
  {
    sub_29A248CAC(*a1, &v4);
    sub_29A24861C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A24861C(&v4);
  }

  return *a1;
}

uint64_t sub_29A248CAC@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0xA0uLL);
  result = sub_29A2481A4(v4, a1);
  atomic_store(0, v4 + 38);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 38, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A248D14(unsigned int **a1, uint64_t a2)
{
  v4 = operator new(0xA0uLL);
  result = sub_29A2481A4(v4, a2);
  atomic_store(0, v4 + 38);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 38, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A248D7C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2949D0();
  }

  return sub_29A248C44(a1);
}

uint64_t sub_29A248DB8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_29A248E38(a1);
  if (result)
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A248F04(v7, a2);
  }

  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_29A248E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A248E38(uint64_t a1)
{
  if (sub_29A248E84(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A248E84(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1819894128 || *(v1 + 3) != 1684107116)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

void sub_29A248F04(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x13u);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *&v3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v3 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A248FFC(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_29A249058(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A2490A0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A249178(a1, a2) & 1) == 0)
  {
    sub_29A249114(a1);
  }

  return 1;
}

void sub_29A249108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A249114(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected None, payload, or list of payloads separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A249178(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2491F8(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A249B14(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2491EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2491F8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A234D4C(a1, a2) & 1) != 0 || (sub_29A24925C(a1, a2))
  {
    return 1;
  }

  return sub_29A249910(a1, a2);
}

uint64_t sub_29A24925C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2492DC(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A249434(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2492D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2492DC(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A23C954(a1, a2) & 1) != 0 || (result = sub_29A244DA4(a1, a2), result))
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
    sub_29A249344(a1, a2);
    return 1;
  }

  return result;
}

__n128 sub_29A249344(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = (a1 + 32);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  if (v9.n128_u64[0] == *(a1 + 64))
  {
    goto LABEL_8;
  }

  if (*v9.n128_u64[0] != 40)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 40) + 1;
  *(a1 + 32) = v9.n128_u64[0] + 1;
  *(a1 + 40) = v5;
  ++*(a1 + 56);
    ;
  }

  sub_29A2405EC(a1, a2);
  v7 = *(a1 + 32);
  if (v7 == *(a1 + 64) || *v7 != 41)
  {
LABEL_8:
    result = v9;
    *v2 = v9;
    v2[1] = v10;
  }

  else
  {
    v8 = *(a1 + 40) + 1;
    *(a1 + 32) = v7 + 1;
    *(a1 + 40) = v8;
    ++*(a1 + 56);
  }

  return result;
}

void sub_29A249424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A249434(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, a2 + 72, a2 + 336, a2 + 96);
  v3 = sub_29A249514((a2 + 512), __p);
  if (*(a2 + 95) < 0)
  {
    **(a2 + 72) = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    *(a2 + 72) = 0;
    *(a2 + 95) = 0;
  }

  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v3);
  sub_29A2258F0((a2 + 336), v4);
  sub_29A225948((a2 + 340), v4 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v5, 0.0, 1.0);
  *(a2 + 96) = v5;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v9);
  sub_29A1DE3A4(&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2494FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A249058(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A249514(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A249574(a1, a2);
  }

  else
  {
    sub_29A2496A8(a1, a1[1], a2);
    result = v3 + 48;
    a1[1] = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A249574(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29A2496A8(a1, v15, a2);
  *&v16 = v15 + 3;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_29A249714(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A249894(&v14);
  return v13;
}

void sub_29A249694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A249894(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A2496A8(int a1, __n128 *__dst, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v5 = *a3;
    __dst[1].n128_u64[0] = *(a3 + 16);
    *__dst = v5;
  }

  sub_29A1E21F4(&__dst[1].n128_u32[2], (a3 + 24));
  sub_29A1E2240(&__dst[1].n128_u32[3], (a3 + 28));
  result = *(a3 + 32);
  __dst[2] = result;
  return result;
}

uint64_t sub_29A249714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 28;
    do
    {
      v9 = *(v8 - 28);
      *(v4 + 16) = *(v8 - 12);
      *v4 = v9;
      *(v8 - 12) = 0;
      *(v8 - 20) = 0;
      *(v8 - 28) = 0;
      sub_29A1DDD84((v4 + 24), (v8 - 4));
      sub_29A1DDDC0((v4 + 28), v8);
      *(v4 + 32) = *(v8 + 4);
      v4 = v15 + 48;
      v15 += 48;
      v10 = v8 + 20;
      v8 += 48;
    }

    while (v10 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      sub_29A248FFC(a1, v6);
      v6 += 48;
    }
  }

  return sub_29A249808(v12);
}

uint64_t sub_29A249808(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A249840(a1);
  }

  return a1;
}

void sub_29A249840(uint64_t *a1)
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
      v3 -= 48;
      sub_29A248FFC(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A249894(void **a1)
{
  sub_29A2498C8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A2498C8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29A248FFC(v4, i - 48);
  }
}

uint64_t sub_29A249910(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = a1[4];
  if (v2 == a1[8])
  {
    return 0;
  }

  if (*v2 != 91)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v5;
  ++a1[7];
    ;
  }

  sub_29A2499D8(a1, a2);
  v6 = a1[4];
  if (v6 == a1[8] || *v6 != 93)
  {
    return 0;
  }

  v7 = a1[5] + 1;
  a1[4] = v6 + 1;
  a1[5] = v7;
  ++a1[7];
  return 1;
}

uint64_t sub_29A2499D8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A249A50(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A249A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A249A50(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A24925C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A249AA8(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

__n128 sub_29A249AA8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A24925C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A249B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A249B14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 512);
  v5 = *(a2 + 520);
  if (v4 == v5 && *(a2 + 616) != 0)
  {
    sub_29A008E78(__p, "Setting payload to None (or an empty list)is only allowed when setting explicit payloads, not for list editing");
    v13 = *(a1 + 32);
    sub_29A2266C8(v20, a1, (v13 + 48));
    sub_29A276708(a2, v13, v20, __p);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  while (v4 != v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidPayload(v4, __p);
    if (v19 == 1)
    {
      v9 = *(a1 + 32);
      sub_29A2266C8(v20, a1, (v9 + 48));
      WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A276708(a2, v9, v20, WhyNot);
      if (v22 < 0)
      {
        operator delete(v21);
      }

      v11 = __cxa_allocate_exception(0x20uLL);
      v12 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A22DB7C(v11, v12, a1);
      __cxa_throw(v11, &unk_2A2048840, sub_29A2265D4);
    }

    v4 += 48;
  }

  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v7)
  {
    v7 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((sub_29A249E00(v7 + 31, *(a2 + 616), (a2 + 512), a2, __p) & 1) == 0)
  {
    v15 = *(a1 + 32);
    sub_29A2266C8(v20, a1, (v15 + 48));
    sub_29A276708(a2, v15, v20, __p);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    v16 = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(v16, __p, a1);
    __cxa_throw(v16, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v8);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A249D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A249E00(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v8 = *a3;
  v9 = a3[1];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a3) >> 4);
  if (v10 < 2)
  {
    goto LABEL_2;
  }

  if (v10 > 0xA)
  {
    if (v8 == v9)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v15 = v8 + 6;
      if (v8 + 6 == v9)
      {
        break;
      }

      v16 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v8, v8 + 6);
      v8 += 6;
      if ((v16 & 1) == 0)
      {
        v9 = v15 - 6;
        break;
      }
    }

    if (v9 == a3[1] || !(v14 = sub_29A24A3AC(a3)))
    {
LABEL_2:
      sub_29A22DD10((a4 + 1024));
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp();
    }
  }

  else
  {
    if (v8 == v9 - 6)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v12 = v8 + 6;
      if (v9 != v8 + 6)
      {
        break;
      }

LABEL_9:
      v8 += 6;
      if (v12 == v9 - 6)
      {
        goto LABEL_2;
      }
    }

    v13 = (v8 + 6);
    while (1)
    {
      v14 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v8, v13);
      if (v14)
      {
        break;
      }

      v13 += 6;
      if (v13 == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  std::operator+<char>();
  v17 = std::string::append(&v32, "' at '");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString((a4 + 1032), v29);
  if ((v30 & 0x80u) == 0)
  {
    v19 = v29;
  }

  else
  {
    v19 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = v29[1];
  }

  v21 = std::string::append(&v31, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(__p, "'");
  v24 = v23->__r_.__value_.__r.__words[0];
  v33[0] = v23->__r_.__value_.__l.__size_;
  *(v33 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v26 = v33[0];
  *a5 = v24;
  *(a5 + 8) = v26;
  *(a5 + 15) = *(v33 + 7);
  *(a5 + 23) = v25;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A24A230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  _Unwind_Resume(exception_object);
}

void **sub_29A24A2DC(void **a1)
{
  v3 = a1 + 16;
  sub_29A24A5D0(&v3);
  v3 = a1 + 13;
  sub_29A24A5D0(&v3);
  v3 = a1 + 10;
  sub_29A24A5D0(&v3);
  v3 = a1 + 7;
  sub_29A24A5D0(&v3);
  v3 = a1 + 4;
  sub_29A24A5D0(&v3);
  v3 = a1 + 1;
  sub_29A24A5D0(&v3);
  return a1;
}

BOOL sub_29A24A3AC(uint64_t *a1)
{
  v9 = 0uLL;
  v10 = 0;
  sub_29A24A49C(&v9, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v1 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v9.n128_u64[1] - v9.n128_u64[0]) >> 4));
  if (v9.n128_u64[1] == v9.n128_u64[0])
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  sub_29A24A658(v9.n128_u64[0], v9.n128_u64[1], &v11, v2, 1);
  v4 = v9.n128_u64[1];
  v3 = v9.n128_u64[0];
  if (v9.n128_u64[0] != v9.n128_u64[1])
  {
    while (1)
    {
      v5 = v3 + 6;
      if (v3 + 6 == v4)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v3, v3 + 6);
      v3 = v5;
      if (v6)
      {
        v4 = (v5 - 6);
        break;
      }
    }

    v3 = v4;
    v4 = v9.n128_u64[1];
  }

  v7 = v3 != v4;
  v12 = &v9;
  sub_29A24A5D0(&v12);
  return v7;
}

void sub_29A24A47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_29A24A5D0((v10 - 24));
  _Unwind_Resume(a1);
}

__n128 *sub_29A24A49C(__n128 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29A24A524(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A24A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A24A5D0(&a9);
  _Unwind_Resume(a1);
}

__n128 *sub_29A24A524(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      sub_29A2496A8(v7, v4, v6);
      v6 += 48;
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A249808(v9);
  return v4;
}

void sub_29A24A5D0(void ***a1)
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
        v4 -= 48;
        sub_29A248FFC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_29A24A658(const void **result, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
  v16 = a2 - 18;
  v17 = a2 - 12;
  v7 = result;
  v8 = result;
  v9 = a2 - result;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 4);
  if (v10 <= 2)
  {
    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2 - 6, result);
      if (result)
      {

        sub_29A24B778(v7, a2 - 3);
      }

      return result;
    }

    goto LABEL_8;
  }

  switch(v10)
  {
    case 3uLL:

      return sub_29A24AA70(result, result + 6, a2 - 6);
    case 4uLL:
      sub_29A24AA70(result, result + 6, result + 12);
      result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2 - 6, (v7 + 96));
      if (result)
      {
        sub_29A24B778(v7 + 96, a2 - 3);
      }

      break;
    case 5uLL:

      return sub_29A24AB24(result, result + 6, result + 12, result + 9, a2 - 6);
    default:
LABEL_8:
      if (v9 <= 1151)
      {
        if (a5)
        {

          return sub_29A24AC50(result, a2);
        }

        else
        {

          return sub_29A24AE30(result, a2);
        }
      }

      else
      {
        if (a4 != 0)
        {
          v11 = v10 >> 1;
          v12 = &result[6 * (v10 >> 1)];
          if (v9 >= 0x1801)
          {
            sub_29A24AA70(result, v12, a2 - 6);
            v13 = 3 * v11;
            v14 = (v7 + 48 * v11 - 48);
            sub_29A24AA70((v7 + 48), v14, v17);
            v15 = (v7 + 48 + 16 * v13);
            sub_29A24AA70(v8 + 12, v15, v16);
            sub_29A24AA70(v14, v12, v15);
            sub_29A24B778(v8, v12);
          }

          sub_29A24AA70(v12, result, a2 - 6);
          if (a5 & 1) != 0 || (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v8 - 6, v8))
          {
            sub_29A24B214(v8, a2);
          }

          sub_29A24AFE0(v8, a2);
        }

        if (result != a2)
        {

          return sub_29A24B8C8(result, a2, a2, a3);
        }
      }

      return result;
  }

  return result;
}

uint64_t sub_29A24AA70(const void **a1, const void **a2, const void **a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      sub_29A24B778(a1, a3);
    }

    sub_29A24B778(a1, a2);
  }

  if (result)
  {
    sub_29A24B778(a2, a3);
  }

  return result;
}

uint64_t sub_29A24AB24(const void **a1, const void **a2, const void **a3, __int128 *a4, const void **a5)
{
  sub_29A24AA70(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a4, a3))
  {
    sub_29A24B778(a3, a4);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a5, a4);
  if (result)
  {
    sub_29A24B778(a4, a5);
  }

  return result;
}

uint64_t sub_29A24AC50(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 48);
    if ((result + 48) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v4, v6);
        if (result)
        {
          *__p = *v7;
          v10 = v7[2];
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v11 = *(v6 + 72);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v6 + 72));
          v12 = *(v6 + 76);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 76));
          v13 = *(v6 + 80);
          v8 = v3 + v5;
          if (*(v3 + v5 + 71) < 0)
          {
            operator delete(*(v8 + 48));
          }

          *(v8 + 48) = *v8;
          *(v8 + 64) = *(v8 + 16);
          *(v8 + 23) = 0;
          *v8 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v4 = v7 + 6;
        v5 += 48;
        v6 = v7;
      }

      while (v7 + 6 != a2);
    }
  }

  return result;
}

uint64_t sub_29A24AE30(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 48);
    if ((result + 48) != a2)
    {
      v5 = result - 48;
      do
      {
        v6 = v4;
        result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v4, v3);
        if (result)
        {
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v3 + 18);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v3 + 19);
          if (*(v5 + 119) < 0)
          {
            operator delete(*(v5 + 96));
          }

          *(v5 + 96) = *(v5 + 48);
          *(v5 + 112) = *(v5 + 64);
          *(v5 + 71) = 0;
          *(v5 + 48) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v4 = v6 + 6;
        v5 += 48;
        v3 = v6;
      }

      while (v6 + 6 != a2);
    }
  }

  return result;
}

void sub_29A24AFE0(uint64_t a1, const void **a2)
{
  *__p = *a1;
  v11 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v12 = *(a1 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 24));
  v13 = *(a1 + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 28));
  v14 = *(a1 + 32);
  if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(__p, a2 - 6))
  {
    v4 = a1;
    do
    {
      v4 += 6;
    }

    while ((pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(__p, v4) & 1) == 0);
  }

  else
  {
    v5 = (a1 + 48);
    do
    {
      v4 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(__p, v5);
      v5 = v4 + 6;
    }

    while (!v6);
  }

  if (v4 < a2)
  {
    do
    {
      a2 -= 6;
    }

    while ((pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(__p, a2) & 1) != 0);
  }

  if (v4 >= a2)
  {
    v7 = (v4 - 6);
    if (v4 - 6 != a1)
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v8 = *v7;
      *(a1 + 16) = *(v4 - 4);
      *a1 = v8;
      *(v4 - 25) = 0;
      *(v4 - 48) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (*(v4 - 25) < 0)
    {
      operator delete(*v7);
    }

    v9 = *__p;
    *(v4 - 4) = v11;
    *v7 = v9;
    HIBYTE(v11) = 0;
    LOBYTE(__p[0]) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A24B778(v4, a2);
}

void sub_29A24B214(uint64_t a1, const void **a2)
{
  *__p = *a1;
  v12 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v13 = *(a1 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 24));
  v14 = *(a1 + 28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 28));
  v4 = 0;
  v15 = *(a1 + 32);
  do
  {
    v5 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<((a1 + v4 + 48), __p);
    v4 += 48;
  }

  while ((v5 & 1) != 0);
  v6 = a1 + v4;
  if (v4 == 48)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      a2 -= 6;
    }

    while ((pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2, __p) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 6;
    }

    while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2, __p));
  }

  v7 = a1 + v4;
  if (v6 < a2)
  {
    sub_29A24B778(v7, a2);
  }

  v8 = (v7 - 48);
  if (v7 - 48 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v9 = *v8;
    *(a1 + 16) = *(v7 - 32);
    *a1 = v9;
    *(v7 - 25) = 0;
    *(v7 - 48) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (*(v7 - 25) < 0)
  {
    operator delete(*v8);
  }

  v10 = *__p;
  *(v7 - 32) = v12;
  *v8 = v10;
  HIBYTE(v12) = 0;
  LOBYTE(__p[0]) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A24B458(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 48);
      if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<((a2 - 48), a1))
      {
        sub_29A24B778(a1, v5);
      }

      return 1;
    }

    goto LABEL_11;
  }

  if (v4 == 3)
  {
    sub_29A24AA70(a1, (a1 + 48), (a2 - 48));
    return 1;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      sub_29A24AB24(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48));
      return 1;
    }

LABEL_11:
    v6 = (a1 + 96);
    sub_29A24AA70(a1, (a1 + 48), (a1 + 96));
    v7 = a1 + 144;
    if (a1 + 144 != a2)
    {
      v8 = 0;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v7, v6))
        {
          *__p = *v7;
          v13 = *(v7 + 16);
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
          v14 = *(v7 + 24);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v7 + 24));
          v15 = *(v7 + 28);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v7 + 28));
          v16 = *(v7 + 32);
          v9 = a1 + v8;
          if (*(a1 + v8 + 167) < 0)
          {
            operator delete(*(v9 + 144));
          }

          *(v9 + 144) = *(v9 + 96);
          *(v9 + 160) = *(v9 + 112);
          *(v9 + 119) = 0;
          *(v9 + 96) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v6 = v7;
        v8 += 48;
        v7 += 48;
      }

      while (v7 != a2);
    }

    return 1;
  }

  v10 = (a2 - 48);
  sub_29A24AA70(a1, (a1 + 48), (a1 + 96));
  if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v10, (a1 + 96)))
  {
    sub_29A24B778(a1 + 96, v10);
  }

  return 1;
}

void sub_29A24B778(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 28));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

const void **sub_29A24B8C8(__int128 *a1, __int128 *a2, const void **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        sub_29A24B9F8(a1, a4, v9, v12);
        v12 -= 48;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v13, a1))
        {
          sub_29A24B778(v13, a1);
        }

        v13 += 6;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      do
      {
        sub_29A24BC40(a1, v6, a4, v14);
        v6 -= 48;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29A24B9F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 4)))
  {
    v5 = (0x5555555555555556 * ((a4 - result) >> 4)) | 1;
    v6 = result + 48 * v5;
    if (0x5555555555555556 * ((a4 - result) >> 4) + 2 < a3)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<((result + 48 * v5), (v6 + 48)))
      {
        v6 += 48;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v6, a4);
    if ((result & 1) == 0)
    {
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a4 + 24));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a4 + 28));
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v8 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v8;
      *(v6 + 23) = 0;
      *v6 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

uint64_t sub_29A24BC40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((result + 24));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 28));
    sub_29A24BE54(v6, a3, a4);
  }

  return result;
}

void sub_29A24BE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 48);
  if (a3 > 2)
  {
    v5 = (a1 + 96);
    if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator<((a1 + 48), (a1 + 96)))
    {
      v4 = v5;
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v7 = *v4;
  *(a1 + 16) = *(v4 + 2);
  *a1 = v7;
  *(v4 + 23) = 0;
  *v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A24BF3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = result + 48 * ((a4 - 2) >> 1);
    v6 = a2 - 48;
    result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v5, (a2 - 48));
    if (result)
    {
      *__p = *v6;
      v9 = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v10 = *(a2 - 24);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a2 - 24));
      v11 = *(a2 - 20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a2 - 20));
      v12 = *(a2 - 16);
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v7 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *v6 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

uint64_t sub_29A24C0F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29A24A49C((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29A24A49C((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29A24A49C((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A24A49C((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_29A24A49C((a1 + 104), *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 4));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A24A49C((a1 + 128), *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
  return a1;
}

void sub_29A24C234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A24A5D0(va);
  sub_29A24A5D0(va);
  sub_29A24A5D0(va);
  sub_29A24A5D0(va);
  sub_29A24A5D0(va);
  _Unwind_Resume(a1);
}

void sub_29A24C29C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1EF030(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp();
  }

  sub_29A24CC5C(a1);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::Swap();
}

uint64_t sub_29A24C374(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A2049370;
  sub_29A24CBF4(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A24C408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A24C444(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A24C464(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A24C574(a1);
}

uint64_t sub_29A24C55C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2049370;
  return sub_29A24CBF4(a2, v2);
}

void sub_29A24C574(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      sub_29A24A5D0(&v2);
      v2 = (v1 + 104);
      sub_29A24A5D0(&v2);
      v2 = (v1 + 80);
      sub_29A24A5D0(&v2);
      v2 = (v1 + 56);
      sub_29A24A5D0(&v2);
      v2 = (v1 + 32);
      sub_29A24A5D0(&v2);
      v2 = (v1 + 8);
      sub_29A24A5D0(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A24C620(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A24C68C(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

unint64_t sub_29A24C68C(unint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A24C6D4(a1, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_29A24C6D4(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = *a2;
  v15 = a2[1] - v14;
  if (v15)
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
    do
    {
      --v16;
      v17 = v14 + 48;
      sub_29A24C82C(a1, v14);
      v14 = v17;
    }

    while (v16);
  }

  return sub_29A24C784(a1, a3, a4, a5, a6, a7);
}

unint64_t sub_29A24C784(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = *a2;
  v13 = a2[1] - v12;
  if (v13)
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
    do
    {
      --v14;
      v15 = v12 + 48;
      sub_29A24C82C(a1, v12);
      v12 = v15;
    }

    while (v14);
  }

  return sub_29A24C960(a1, a3, a4, a5, a6);
}

unint64_t sub_29A24C82C(uint64_t a1, uint64_t a2)
{
  result = sub_29A24C888(a2, (a2 + 24), (a2 + 32));
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

unint64_t sub_29A24C888(uint64_t a1, unsigned int *a2, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a3)
{
  v9 = 0;
  v10 = 0;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v9, v6, v7);
  sub_29A24C908(&v9, a2, a3);
  return bswap64(0x9E3779B97F4A7C55 * v9);
}

unint64_t sub_29A24C908(uint64_t a1, unsigned int *a2, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a3)
{
  sub_29A1E33B4(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(a3);
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

unint64_t sub_29A24C960(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = a2[1] - v10;
  if (v11)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
    do
    {
      --v12;
      v13 = v10 + 48;
      sub_29A24C82C(a1, v10);
      v10 = v13;
    }

    while (v12);
  }

  return sub_29A24C9F8(a1, a3, a4, a5);
}

unint64_t sub_29A24C9F8(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = a2[1] - v8;
  if (v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
    do
    {
      --v10;
      v11 = v8 + 48;
      sub_29A24C82C(a1, v8);
      v8 = v11;
    }

    while (v10);
  }

  return sub_29A24CA88(a1, a3, a4);
}

unint64_t sub_29A24CA88(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = a2[1] - v6;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
    do
    {
      --v8;
      v9 = v6 + 48;
      result = sub_29A24C82C(v5, v6);
      v6 = v9;
    }

    while (v8);
  }

  v10 = *a3;
  v11 = a3[1] - *a3;
  if (v11)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
    do
    {
      --v12;
      v13 = v10 + 48;
      result = sub_29A24C82C(v5, v10);
      v10 = v13;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29A24CB24(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 152));
  if (v2 != 1)
  {
    sub_29A24CB8C(*a1, &v4);
    sub_29A24C574(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A24C574(&v4);
  }

  return *a1;
}

uint64_t sub_29A24CB8C@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0xA0uLL);
  result = sub_29A24C0F4(v4, a1);
  atomic_store(0, v4 + 38);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 38, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A24CBF4(unsigned int **a1, uint64_t a2)
{
  v4 = operator new(0xA0uLL);
  result = sub_29A24C0F4(v4, a2);
  atomic_store(0, v4 + 38);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 38, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A24CC5C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B294A3C();
  }

  return sub_29A24CB24(a1);
}

uint64_t sub_29A24CC98(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A24CD24(a1, a2);
  if (v4)
  {
    sub_29A24CE80(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A24CED8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A24CD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A24CD24(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A24CD94(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x16u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A24CD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A24CD94(uint64_t a1)
{
  if (sub_29A24CDE0(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A24CDE0(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 8uLL || *v1 != 0x73746E6169726176)
  {
    return 0;
  }

  v3 = a1[5] + 8;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 8;
  return 1;
}

uint64_t sub_29A24CE80(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A23529C(a1, a2) & 1) == 0)
  {
    sub_29A235F88(a1);
  }

  return 1;
}

void sub_29A24CED8(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  v39 = 0;
  v4 = sub_29A22DD10((a2 + 1024));
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v5)
  {
    v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(*v4 + 112))(v4, a2 + 1032, v5 + 472, v38))
  {
    v6 = sub_29A24D380(v38);
    if (&v33 != v6)
    {
      sub_29A028554(&v33, *v6, (v6 + 1));
    }
  }

  v7 = *(a2 + 944);
  v31 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v7);
  v32 = v8;
  v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v7);
  v11 = v31;
  if (v9)
  {
    v12 = v31 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v32 != v9 || v13 == 0)
  {
    if (sub_29A1EFC10((v31 + 56)))
    {
      v15 = sub_29A1EFC48((v31 + 56));
      if (*(v15 + 23) < 0)
      {
        sub_29A008D14(&__str, *v15, v15[1]);
      }

      else
      {
        v16 = *v15;
        __str.__r_.__value_.__r.__words[2] = v15[2];
        *&__str.__r_.__value_.__l.__data_ = v16;
      }

      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantSelection(&__str, __p);
      if (v29 != 1)
      {
        v35[0] = (v11 + 32);
        v17 = sub_29A00B038(&v33, (v11 + 32), &unk_29B4D6118, v35);
        std::string::operator=((v17 + 7), &__str);
        if (v29 == 1 && v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
      }

      v21 = *(a1 + 32);
      sub_29A2266C8(v35, a1, (v21 + 48));
      WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A276708(a2, v21, v35, WhyNot);
      if (v37 < 0)
      {
        operator delete(v36);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v24 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A22DB7C(exception, v24, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    sub_29A008E78(__p, "variant name must be a string");
    v25 = *(a1 + 32);
    sub_29A2266C8(v35, a1, (v25 + 48));
    sub_29A276708(a2, v25, v35, __p);
    if (v37 < 0)
    {
      operator delete(v36);
    }

    v26 = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(v26, __p, a1);
    __cxa_throw(v26, &unk_2A2048840, sub_29A2265D4);
  }

  v18 = sub_29A22DD10((a2 + 1024));
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v19)
  {
    v19 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v35[1] = &off_2A2049438;
  sub_29A24D9BC(v35, &v33);
  (*(*v18 + 152))(v18, a2 + 1032, v19 + 472, v35);
  sub_29A186B14(v35);
  pxrInternal__aapl__pxrReserved__::VtDictionary::clear(*(a2 + 944));
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v20);
  sub_29A186B14(v38);
  sub_29A01752C(&v33, v34[0]);
}

void sub_29A24D288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_29A186B14(v36 - 88);
  sub_29A01752C(&a24, a25);
  _Unwind_Resume(a1);
}

void **sub_29A24D380(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A24D414(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A24D4A0, &stru_2A2049428);
  }
}

uint64_t sub_29A24D414(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485763 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2049428);
}

void *sub_29A24D4A0@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *a1 = result;
  a1[1] = sub_29A24D4F4;
  a1[2] = &stru_2A2049428;
  return result;
}

void sub_29A24D4F4(void **a1)
{
  if (a1)
  {
    sub_29A01752C(a1, a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_29A24D538(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A24D558(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A24D6B4(a1);
}

unint64_t sub_29A24D570(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A24D71C(&v3, *v1, (v1 + 8));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t *sub_29A24D69C@<X0>(const void ****a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2049438;
  return sub_29A24D9BC(a2, v2);
}

void sub_29A24D6B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A01752C(v1, *(v1 + 8));

    operator delete(v1);
  }
}

unint64_t sub_29A24D71C(unint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = a2[1];
      v6 = a2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      result = sub_29A24D79C(v4, (a2 + 4));
      a2 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

unint64_t sub_29A24D79C(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v5);
  v8 = *(v2 + 3);
  v7 = (v2 + 24);
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = v7[1];
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v10, v11);
}

BOOL sub_29A24D80C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) != a2[2])
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v4 = (a1 + 8);
  v5 = *a1;
  if (*a1 == a1 + 8)
  {
    return 1;
  }

  v6 = *a2;
  do
  {
    result = sub_29A1B0B38(&v13, (v5 + 4), (v6 + 4));
    if (!result)
    {
      break;
    }

    v8 = v5[1];
    v9 = v5;
    if (v8)
    {
      do
      {
        v5 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v5 = v9[2];
        v10 = *v5 == v9;
        v9 = v5;
      }

      while (!v10);
    }

    v11 = v6[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v6[2];
        v10 = *v12 == v6;
        v6 = v12;
      }

      while (!v10);
    }

    v6 = v12;
  }

  while (v5 != v4);
  return result;
}

const void ***sub_29A24D8EC(const void ****a1)
{
  v2 = atomic_load(*a1 + 6);
  if (v2 != 1)
  {
    sub_29A24D954(*a1, &v4);
    sub_29A24D6B4(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A24D6B4(&v4);
  }

  return *a1;
}

uint64_t *sub_29A24D954@<X0>(const void ***a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  result = sub_29A019350(v4, a1);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A24D9BC(void *a1, const void ***a2)
{
  v4 = operator new(0x20uLL);
  result = sub_29A019350(v4, a2);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A24DA24(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A24DA94(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x17u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A24DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A24DA94(uint64_t a1)
{
  if (sub_29A24DAE0(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A24DAE0(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  if (a1[8] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "variantSets", 11);
  if (*v1 != 0x53746E6169726176 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[5] + 11;
  a1[4] = v1 + 11;
  a1[5] = v4;
  a1[7] += 11;
  return 1;
}

uint64_t sub_29A24DB9C(uint64_t a1, uint64_t a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  sub_29A2413BC(a1, a2);
  if ((v4 & 1) == 0)
  {
    sub_29A24DC10(a1);
  }

  return 1;
}

void sub_29A24DC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A24DC10(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected string or list of strings enclosed in [] separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A24DC74(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A24DCF4(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A24DDE0(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A24DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A24DCF4(uint64_t a1)
{
  if (sub_29A24DD40(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A24DD40(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 8uLL || *v1 != 0x7374697265686E69)
  {
    return 0;
  }

  v3 = a1[5] + 8;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 8;
  return 1;
}

void sub_29A24DDE0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (*(*(a2 + 33) - 4) == 6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  v4 = *(a2 + 55);
  for (i = *(a2 + 56); i != v4; sub_29A1E230C(a2 + 440, i))
  {
    i -= 2;
  }

  *(a2 + 56) = v4;

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x14u);
}

uint64_t sub_29A24DE5C(uint64_t a1, uint64_t a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A24DF34(a1, a2) & 1) == 0)
  {
    sub_29A24DED0(a1);
  }

  return 1;
}

void sub_29A24DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A24DED0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected None, path ref, or list of path refs separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A24DF34(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A24DFB4(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A24E21C(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A24DFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A24DFB4(void *a1, uint64_t a2)
{
  if (sub_29A234D4C(a1, a2) & 1) != 0 || (sub_29A23C954(a1, a2))
  {
    return 1;
  }

  return sub_29A24E018(a1, a2);
}

uint64_t sub_29A24E018(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8])
  {
    return 0;
  }

  if (*v2 != 91)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v5;
  ++a1[7];
    ;
  }

  sub_29A24E0E0(a1, a2);
  v6 = a1[4];
  if (v6 == a1[8] || *v6 != 93)
  {
    return 0;
  }

  v7 = a1[5] + 1;
  a1[4] = v6 + 1;
  a1[5] = v7;
  ++a1[7];
  return 1;
}

uint64_t sub_29A24E0E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A24E158(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A24E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A24E158(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A23C954(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A24E1B0(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

__n128 sub_29A24E1B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A23C954(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A24E210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A24E21C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 264) - 4);
  if (v4 == 21)
  {
    v8 = *(a2 + 464);
    v9 = *(a2 + 472);
    if (v8 == v9 && *(a2 + 616) != 0)
    {
      sub_29A008E78(&v29, "Setting specializes paths to None (or empty list) is only allowed when setting explicit specializes paths, not for list editing");
      v25 = *(a1 + 32);
      sub_29A2266C8(v33, a1, (v25 + 48));
      sub_29A276708(a2, v25, v33, &v29);
      if (v35 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(exception, &v29, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    while (v8 != v9)
    {
      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidSpecializesPath(v8, &v29);
      if (v32 == 1)
      {
        v19 = *(a1 + 32);
        sub_29A2266C8(v33, a1, (v19 + 48));
        WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v29);
        sub_29A276708(a2, v19, v33, WhyNot);
        if (v35 < 0)
        {
          operator delete(__p);
        }

        v21 = __cxa_allocate_exception(0x20uLL);
        v22 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v29);
        sub_29A22DB7C(v21, v22, a1);
        __cxa_throw(v21, &unk_2A2048840, sub_29A2265D4);
      }

      v8 = (v8 + 8);
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v14)
    {
      v14 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((sub_29A24E74C(v14 + 39, *(a2 + 616), (a2 + 464), a2, &v29) & 1) == 0)
    {
      v27 = *(a1 + 32);
      sub_29A2266C8(v33, a1, (v27 + 48));
      sub_29A276708(a2, v27, v33, &v29);
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v28 = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(v28, &v29, a1);
      __cxa_throw(v28, &unk_2A2048840, sub_29A2265D4);
    }
  }

  else
  {
    if (v4 != 20)
    {
      goto LABEL_30;
    }

    v5 = *(a2 + 440);
    v6 = *(a2 + 448);
    if (v5 == v6 && *(a2 + 616) != 0)
    {
      sub_29A008E78(&v29, "Setting inherit paths to None (or empty list) is only allowed when setting explicit inherit paths, not for list editing");
      v23 = *(a1 + 32);
      sub_29A2266C8(v33, a1, (v23 + 48));
      sub_29A276708(a2, v23, v33, &v29);
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v24 = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(v24, &v29, a1);
      __cxa_throw(v24, &unk_2A2048840, sub_29A2265D4);
    }

    while (v5 != v6)
    {
      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidInheritPath(v5, &v29);
      if (v32 == 1)
      {
        v15 = *(a1 + 32);
        sub_29A2266C8(v33, a1, (v15 + 48));
        v16 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v29);
        sub_29A276708(a2, v15, v33, v16);
        if (v35 < 0)
        {
          operator delete(__p);
        }

        v17 = __cxa_allocate_exception(0x20uLL);
        v18 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v29);
        sub_29A22DB7C(v17, v18, a1);
        __cxa_throw(v17, &unk_2A2048840, sub_29A2265D4);
      }

      v5 = (v5 + 8);
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v11)
    {
      v11 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((sub_29A24E74C(v11 + 24, *(a2 + 616), (a2 + 440), a2, &v29) & 1) == 0)
    {
      v12 = *(a1 + 32);
      sub_29A2266C8(v33, a1, (v12 + 48));
      sub_29A276708(a2, v12, v33, &v29);
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v13 = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(v13, &v29, a1);
      __cxa_throw(v13, &unk_2A2048840, sub_29A2265D4);
    }
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

LABEL_30:
  *(a2 + 616) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
}

void sub_29A24E684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A24E74C(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::TfToken **a3, uint64_t a4, uint64_t a5)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  v9 = (v8 - *a3) >> 3;
  if (v9 < 2)
  {
    goto LABEL_2;
  }

  if (v9 > 0xA)
  {
    if (v7 != v8 && (v7 + 8) != v8)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

LABEL_2:
    sub_29A22DD10((a4 + 1024));
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
  }

  if (v7 == (v8 - 8))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v11 = v7 + 8;
    if (v8 != (v7 + 8))
    {
      break;
    }

LABEL_9:
    v7 = (v7 + 8);
    if (v11 == v8 - 8)
    {
      goto LABEL_2;
    }
  }

  v12 = (v7 + 8);
  while (*v7 != *v12)
  {
    if (++v12 == v8)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  std::operator+<char>();
  v13 = std::string::append(&v28, "' at '");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString((a4 + 1032), v25);
  if ((v26 & 0x80u) == 0)
  {
    v15 = v25;
  }

  else
  {
    v15 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v25[1];
  }

  v17 = std::string::append(&v27, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(__p, "'");
  v20 = v19->__r_.__value_.__r.__words[0];
  v29[0] = v19->__r_.__value_.__l.__size_;
  *(v29 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v22 = v29[0];
  *a5 = v20;
  *(a5 + 8) = v22;
  *(a5 + 15) = *(v29 + 7);
  *(a5 + 23) = v21;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A24EB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A24EC58()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A24ED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_29A1E234C((v10 - 24));
  _Unwind_Resume(a1);
}

int *sub_29A24ED30(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = (a2 - result) >> 3;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:

        sub_29A24F118();
      case 4:

        sub_29A24F208();
      case 5:

        sub_29A24F2D8();
    }
  }

  else
  {
    if (v5 < 2)
    {
      return result;
    }

    if (v5 == 2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  if (v5 <= 23)
  {
    if (a5)
    {

      return sub_29A24F3E0(result, a2);
    }

    else
    {

      return sub_29A24F520(result, a2);
    }
  }

  else
  {
    if (a4 != 0)
    {
      if (v5 >= 0x81)
      {
        sub_29A24F118();
      }

      sub_29A24F118();
    }

    if (result != a2)
    {

      return sub_29A24FBC4(result, a2, a2, a3);
    }
  }

  return result;
}

uint64_t sub_29A24F3E0(uint64_t result, uint64_t a2)
{
  if (result != a2 && result + 8 != a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

void sub_29A24F50C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A24F520(uint64_t result, uint64_t a2)
{
  if (result != a2 && result + 8 != a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

void sub_29A24F630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A24F644(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
}

void sub_29A24F7B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A24F7E8(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
}

void sub_29A24F974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A24F998(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_29A24F118();
      case 4:
        sub_29A24F208();
      case 5:
        sub_29A24F2D8();
    }

LABEL_11:
    sub_29A24F118();
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    goto LABEL_11;
  }

  return 1;
}

void sub_29A24FBB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A24FBC4(int *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_29A24FCDC(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    if (v8 >= 2)
    {
      do
      {
        sub_29A24FE74(a1, v6, a4, v8);
        v6 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A24FCDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= (a4 - result) >> 3)
  {
    if (((a4 - result) >> 2) + 2 < a3)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

void sub_29A24FE60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

int *sub_29A24FE74(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = *result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
    v8 = *(v6 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 4));
    sub_29A24FFA4(v6, a3, a4);
  }

  return result;
}

void sub_29A24FF90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A24FFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A250058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }
}

void sub_29A250158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A25016C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1E1F54(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
  }

  sub_29A250314(a1);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::Swap();
}

void sub_29A250244(uint64_t a1, _BYTE *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29A186978(v4, a1);
  *(a1 + 8) = &off_2A2046FA0;
  sub_29A1E3654(a1, a2);
}

void sub_29A2502D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A250314(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B294AA8();
  }

  return sub_29A1E3584(a1);
}

uint64_t sub_29A250350(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2503D0(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2504D8(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2503C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2503D0(uint64_t a1)
{
  if (sub_29A25041C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A25041C(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  if (a1[8] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "specializes", 11);
  if (*v1 != 0x696C616963657073 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[5] + 11;
  a1[4] = v1 + 11;
  a1[5] = v4;
  a1[7] += 11;
  return 1;
}

void sub_29A2504D8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (*(*(a2 + 33) - 4) == 6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  v4 = *(a2 + 58);
  for (i = *(a2 + 59); i != v4; sub_29A1E230C(a2 + 464, i))
  {
    i -= 2;
  }

  *(a2 + 59) = v4;

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x15u);
}

uint64_t sub_29A250554(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A235C1C(a1) & 1) == 0)
  {
    sub_29A235BB8(a1);
  }

  if ((sub_29A2505CC(a1, a2) & 1) == 0)
  {
    sub_29A251534(a1);
  }

  return 1;
}

void sub_29A2505C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2505CC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A2447D0(a1, a2))
  {

    return sub_29A25063C(a1, a2);
  }

  else
  {
    if ((sub_29A2507CC(a1, a2) & 1) == 0)
    {
      sub_29A251414(a1);
    }

    return 1;
  }
}

uint64_t sub_29A25063C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A244BD8(a1, a2) & 1) == 0)
  {
    sub_29A250688(a1);
  }

  return 1;
}

void sub_29A250688(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ReferenceList>");
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

void sub_29A25076C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A2507CC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A248DB8(a1, a2))
  {

    return sub_29A25083C(a1, a2);
  }

  else
  {
    if ((sub_29A2509CC(a1, a2) & 1) == 0)
    {
      sub_29A2512F4(a1);
    }

    return 1;
  }
}

uint64_t sub_29A25083C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A249178(a1, a2) & 1) == 0)
  {
    sub_29A250888(a1);
  }

  return 1;
}

void sub_29A250888(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485200;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PayloadList>");
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

void sub_29A25096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A2509CC(uint64_t a1, char *a2)
{
  if ((sub_29A24DC74(a1, a2) & 1) != 0 || sub_29A250350(a1, a2))
  {

    return sub_29A250A4C(a1, a2);
  }

  else
  {
    if ((sub_29A250BE4(a1, a2) & 1) == 0)
    {
      sub_29A2511D4(a1);
    }

    return 1;
  }
}

uint64_t sub_29A250A4C(uint64_t a1, uint64_t a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A24DF34(a1, a2) & 1) == 0)
  {
    sub_29A250A98(a1);
  }

  return 1;
}

void sub_29A250A98(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xC0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485210;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>");
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

void sub_29A250B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A250BE4(uint64_t a1, char *a2)
{
  if (sub_29A24DA24(a1, a2))
  {

    return sub_29A250C54(a1, a2);
  }

  else
  {
    if ((sub_29A250DE4(a1, a2) & 1) == 0)
    {
      sub_29A2510A0(a1);
    }

    return 1;
  }
}

uint64_t sub_29A250C54(uint64_t a1, uint64_t a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A2413BC(a1, a2), (v4 & 1) == 0))
  {
    sub_29A250CA0(a1);
  }

  return 1;
}

void sub_29A250CA0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485220;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>");
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

void sub_29A250D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A250DE4(uint64_t a1, char *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A250E64(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A250F78(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A250E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A250E64(uint64_t a1, char *a2)
{
  if (!sub_29A230290(a1, a2) || !sub_29A234BC8(a1, a2))
  {
    return 0;
  }

  return sub_29A250EC8(a1, a2);
}

uint64_t sub_29A250EC8(uint64_t a1, char *a2)
{
  if ((sub_29A234D4C(a1, a2) & 1) == 0 && (sub_29A238C1C(a1, a2) & 1) == 0)
  {
    sub_29A250F14(a1);
  }

  return 1;
}

void sub_29A250F14(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected None or [", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A250F78(uint64_t a1, uint64_t a2)
{
  SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(*(a2 + 264) - 8));
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataEnd(SpecTypeFromContext, a2, __p) & 1) == 0)
  {
    v5 = *(a1 + 32);
    sub_29A2266C8(v7, a1, (v5 + 48));
    sub_29A276708(a2, v5, v7, __p);
    if (v8 < 0)
    {
      operator delete(v7[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A251058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A2510A0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x58uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485230;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata");
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

void sub_29A251174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A2511D4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x178uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485240;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>");
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

void sub_29A251294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A2512F4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x310uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485250;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordInherits, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpecializes>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>>");
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

void sub_29A2513B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A251414(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x430uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485260;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordPayload, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PayloadList>, PXR_INTERNAL_NS_pegtl::if_must_else<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordInherits, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpecializes>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>>>");
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

void sub_29A2514D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A251534(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x550uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485270;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordReferences, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ReferenceList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordPayload, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PayloadList>, PXR_INTERNAL_NS_pegtl::if_must_else<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordInherits, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpecializes>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>>>>");
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

void sub_29A2515F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A251654(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2516D4(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A252040(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2516C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2516D4(void *a1, uint64_t a2)
{
  if ((sub_29A251720(a1, a2) & 1) != 0 || (result = sub_29A251864(a1, a2), result))
  {
    sub_29A2519A8(a1, a2);
    return 1;
  }

  return result;
}

uint64_t sub_29A251720(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A251790(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Du);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A251784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A251790(uint64_t a1)
{
  if (sub_29A2517DC(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2517DC(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 0x13uLL)
  {
    return 0;
  }

  v2 = *v1 == 0x7553786966657270 && v1[1] == 0x6974757469747362;
  if (!v2 || *(v1 + 11) != 0x736E6F6974757469)
  {
    return 0;
  }

  v5 = a1[5] + 19;
  a1[4] = v1 + 19;
  a1[5] = v5;
  a1[7] += 19;
  return 1;
}

uint64_t sub_29A251864(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2518D4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Eu);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2518C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2518D4(uint64_t a1)
{
  if (sub_29A251920(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A251920(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 0x13uLL)
  {
    return 0;
  }

  v2 = *v1 == 0x7553786966667573 && v1[1] == 0x6974757469747362;
  if (!v2 || *(v1 + 11) != 0x736E6F6974757469)
  {
    return 0;
  }

  v5 = a1[5] + 19;
  a1[4] = v1 + 19;
  a1[5] = v5;
  a1[7] += 19;
  return 1;
}

uint64_t sub_29A2519A8(void *a1, uint64_t a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A251A00(a1, a2) & 1) == 0)
  {
    sub_29A251F14(a1);
  }

  return 1;
}

uint64_t sub_29A251A00(void *a1, uint64_t a2)
{
  if ((sub_29A251AD8(a1, a2) & 1) == 0)
  {
    sub_29A251A74(a1);
  }

    ;
  }

  sub_29A251C90(a1, a2);
  if ((sub_29A251E94(a1, a2) & 1) == 0)
  {
    sub_29A251E30(a1);
  }

  return 1;
}

void sub_29A251A74(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected {", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A251AD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 123)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A251B70(v6, a2);
  return 1;
}

void sub_29A251B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A251B70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 952);
  v4 = *(a2 + 960);
  if (v3 >= v4)
  {
    v6 = *(a2 + 944);
    v7 = (v3 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v14[4] = a2 + 944;
    if (v10)
    {
      v11 = sub_29A00C9BC(a2 + 944, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v7];
    v14[0] = v11;
    v14[1] = v12;
    *v12 = 0;
    v14[2] = v12 + 8;
    v14[3] = &v11[8 * v10];
    sub_29A235614(a2 + 944, v14);
    v5 = *(a2 + 952);
    sub_29A2356CC(v14);
  }

  else
  {
    *v3 = 0;
    v5 = v3 + 1;
    *(a2 + 952) = v5;
  }

  *(a2 + 952) = v5;
  result = pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::IsRecordingString((a2 + 624));
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::StopRecordingString(a2 + 624);
  }

  *(a2 + 600) = 0;
  if (*(a2 + 599) < 0)
  {
    **(a2 + 576) = 0;
    *(a2 + 584) = 0;
  }

  else
  {
    *(a2 + 576) = 0;
    *(a2 + 599) = 0;
  }

  return result;
}

void sub_29A251C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2356CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A251C90(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A251D08(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A251CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A251D08(void *a1, uint64_t a2)
{
  v4 = sub_29A251D60(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A251DC4(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

uint64_t sub_29A251D60(void *a1, uint64_t a2)
{
  if (!sub_29A22E5EC(a1, a2) || !sub_29A23EA90(a1))
  {
    return 0;
  }

  return sub_29A22E5EC(a1, a2);
}

__n128 sub_29A251DC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A251D60(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A251E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A251E30(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A251E94(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 125)
  {
    return 0;
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  v5 = (*(a2 + 952) - 8);
  sub_29A184A10(v5, 0);
  *(a2 + 952) = v5;
  return 1;
}

void sub_29A251F14(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485280;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::StringDictionary");
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

void sub_29A251FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A252040(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(*(a2 + 264) - 4);
  v4 = sub_29A22DD10((a2 + 1024));
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (v3 == 45)
  {
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v6 = *(a2 + 944);
    v10 = &off_2A2042030;
    sub_29A187864(&v9, v6);
    (*(*v4 + 152))(v4, a2 + 1032, v5 + 272, &v9);
  }

  else
  {
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v7 = *(a2 + 944);
    v10 = &off_2A2042030;
    sub_29A187864(&v9, v7);
    (*(*v4 + 152))(v4, a2 + 1032, v5 + 400, &v9);
  }

  sub_29A186B14(&v9);
  pxrInternal__aapl__pxrReserved__::VtDictionary::clear(*(a2 + 944));
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v8);
}

void sub_29A2521A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2521C8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A252248(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 4)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 8u);
    }
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A25223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A252248(uint64_t a1)
{
  if (sub_29A252294(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A252294(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x697373696D726570 || *(v1 + 8) != 28271)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

uint64_t sub_29A252348(uint64_t a1, uint64_t a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A230290(a1, a2) & 1) == 0)
  {
    sub_29A2523BC(a1);
  }

  return 1;
}

void sub_29A2523B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2523BC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected identifier", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A252420(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2524A0(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A2526B8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A252494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2524A0(uint64_t a1, uint64_t a2)
{
  result = sub_29A2524EC(a1, a2);
  if (result)
  {
    result = sub_29A234BC8(a1, a2);
    if (result)
    {
      sub_29A230290(a1, a2);
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A2524EC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25256C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A25265C(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A252560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25256C(uint64_t a1)
{
  if (sub_29A2525B8(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2525B8(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 0x10uLL)
  {
    return 0;
  }

  if (*v1 != 0x797274656D6D7973 || v1[1] != 0x6E6F6974636E7546)
  {
    return 0;
  }

  v4 = a1[5] + 16;
  a1[4] = v1 + 2;
  a1[5] = v4;
  a1[7] += 16;
  return 1;
}

void sub_29A25265C(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 9u);
    if (*(a2 + 255) < 0)
    {
      **(a2 + 232) = 0;
      *(a2 + 240) = 0;
    }

    else
    {
      *(a2 + 232) = 0;
      *(a2 + 255) = 0;
    }
  }
}

void sub_29A2526B8(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = sub_29A22DD10((a2 + 1024));
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (*(a2 + 255) >= 0)
  {
    v5 = *(a2 + 255);
  }

  else
  {
    v5 = *(a2 + 240);
  }

  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
    v9 = v8;
    v10 = &off_2A2044E88 + 1;
    if ((v8 & 7) != 0)
    {
      v6 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 = v6;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = &off_2A2044E88 + 1;
  }

  (*(*v3 + 152))(v3, a2 + 1032, v4 + 432, &v9);
  sub_29A186B14(&v9);
  if (v5 && (v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v7);
}

void sub_29A25280C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_29A186B14(&a10);
  if (v10)
  {
    sub_29B294B14(&a9);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A252834(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A243C28(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A252894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2528A0(uint64_t a1, uint64_t a2)
{
  v3[2] = *MEMORY[0x29EDCA608];
  *(a2 + 1016) = 0;
  v3[1] = 0;
  sub_29A18606C((a2 + 1040), v3);
  sub_29A186B14(v3);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 2u);
}

uint64_t sub_29A25291C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A2529D0(a1, a2) & 1) == 0)
  {
    sub_29A25296C(a1);
  }

  return sub_29A25F060(a1);
}

void sub_29A25296C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected child order, property order, prim, property, or variant set", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A2529D0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  do
  {
    sub_29A252A18(a1, a2);
  }

  while ((v4 & 1) != 0);
  return 1;
}

__n128 sub_29A252A18(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A252A94(a1, a2);
  if ((v4 & 1) != 0 || sub_29A25E13C(a1, a2))
  {
      ;
    }
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A252A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A252A94(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_29A252B30(a1, a2) & 1) == 0 && !sub_29A2530F8(a1, a2))
  {
    goto LABEL_6;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A22DED0(a1) & 1) != 0);
  if ((sub_29A2366E0(a1) & 1) == 0)
  {
LABEL_6:
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A252B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A252B30(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A252BB0(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A252F24(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A252BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A252BB0(void *a1, uint64_t a2)
{
  if (sub_29A23C1E8(a1, a2) && sub_29A235C1C(a1) && ((sub_29A252C44(a1, a2) & 1) != 0 || sub_29A252DB4(a1, a2)) && sub_29A234BC8(a1, a2))
  {

    sub_29A2413BC(a1, a2);
  }
}

uint64_t sub_29A252C44(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A252CB4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x10u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A252CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A252CB4(uint64_t a1)
{
  if (sub_29A252D00(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A252D00(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xC)
  {
    return 0;
  }

  if (*v1 != 0x6C696843656D616ELL || *(v1 + 8) != 1852142180)
  {
    return 0;
  }

  v4 = a1[5] + 12;
  a1[4] = v1 + 12;
  a1[5] = v4;
  a1[7] += 12;
  return 1;
}

uint64_t sub_29A252DB4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A252E24(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x11u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A252E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A252E24(uint64_t a1)
{
  if (sub_29A252E70(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A252E70(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x69747265706F7270 || *(v1 + 8) != 29541)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

void sub_29A252F24(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 264) - 4);
  if (v2 == 17)
  {
    sub_29A22DD10((a2 + 1024));
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A242610();
  }

  if (v2 == 16)
  {
    sub_29A22DD10((a2 + 1024));
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A242610();
  }

  *(a2 + 616) = 0;
  v5 = *(a2 + 280);
  for (i = *(a2 + 288); i != v5; i -= 8)
  {
    v8 = *(i - 8);
    v7 = v8;
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a2 + 288) = v5;
}

void sub_29A2530D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2530F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A253178(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25E0D8(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A25316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A253178(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A2531DC(a1, a2);
  if (v4 & 1) != 0 || (sub_29A25C1D4(a1, a2))
  {
    return 1;
  }

  return sub_29A25DBD0(a1, a2);
}

__n128 sub_29A2531DC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A253264(a1, a2);
  if (v4 && sub_29A256B68(a1, a2))
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25C144(v8, a2);
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A253258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A253264(void *a1, uint64_t a2)
{
  sub_29A2532D4(a1, a2);
  if (sub_29A253424(a1, a2) && sub_29A235C1C(a1))
  {

    sub_29A253AD8(a1, a2);
  }
}

__n128 sub_29A2532D4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A253364(a1);
  if ((v4 & 1) == 0)
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    goto LABEL_5;
  }

  *(a2 + 1016) = 1;
  if ((sub_29A235C1C(a1) & 1) == 0)
  {
LABEL_5:
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A25334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A253364(uint64_t a1)
{
  if (sub_29A2533B0(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2533B0(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1953723747 || *(v1 + 4) != 28015)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A253424(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A253494(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetupFactory(a2 + 624, a2 + 184);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A253488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A253494(uint64_t a1, uint64_t a2)
{
  sub_29A2534E8(a1, a2);
  v4 = sub_29A230290(a1, a2);
  if (v4)
  {
    sub_29A2360FC(a1, a2);
  }

  return v4;
}

__n128 sub_29A2534E8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_29A253554(a1, a2);
  if (!v3 || (sub_29A235C1C(a1) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A253548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A253554(uint64_t a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (sub_29A253604(a1, a2) & 1) != 0 || (sub_29A253950(a1, a2))
  {
    v7[1] = 0;
    sub_29A18606C((a2 + 1056), v7);
    sub_29A186B14(v7);
  }

  else
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A2535F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A253604(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2536C0(a1);
  v5 = v4;
  if (v4)
  {
    v9[1] = &off_2A20494F0 + 3;
    LODWORD(v9[0]) = 1;
    sub_29A18606C((a2 + 1040), v9);
    sub_29A186B14(v9);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2536B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2536C0(uint64_t a1)
{
  if (sub_29A25370C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A25370C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1718513507 || *(v1 + 4) != 26473)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

_DWORD *sub_29A2538A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A20494F0 + 3;
  *a2 = *result;
  return result;
}

void *sub_29A2538BC(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A20495A8, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A253934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A253950(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A253A0C(a1);
  v5 = v4;
  if (v4)
  {
    v9[1] = &off_2A20494F0 + 3;
    LODWORD(v9[0]) = 1;
    sub_29A18606C((a2 + 1040), v9);
    sub_29A186B14(v9);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A253A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A253A0C(uint64_t a1)
{
  if (sub_29A253A58(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A253A58(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1718185589 || *(v1 + 3) != 1836216166)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

__n128 sub_29A253AD8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_29A253B5C(a1) & 1) != 0 || sub_29A253C88(a1, a2))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A256908(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A253B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A253B5C(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v2 = sub_29A225AEC(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A253BE4(a1);
    }

    while ((v3 & 1) != 0);
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v2;
}

void sub_29A253BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A253BE4(__n128 *a1)
{
  v1 = a1 + 2;
  v5 = a1[2];
  v6 = a1[3];
  if (v5.n128_u64[0] != a1[4].n128_u64[0] && *v5.n128_u64[0] == 58 && (v3 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v5.n128_u64[0] + 1, a1[2].n128_u64[1] = v3, ++a1[3].n128_u64[1], sub_29A225AEC(a1)))
  {
      ;
    }
  }

  else
  {
    result = v5;
    *v1 = v5;
    v1[1] = v6;
  }

  return result;
}

void sub_29A253C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A253C88(uint64_t a1, uint64_t a2)
{
  if (sub_29A23BC7C(a1, a2) & 1) != 0 || (sub_29A23BF28(a1, a2) & 1) != 0 || (sub_29A254060(a1, a2) & 1) != 0 || (sub_29A2436B4(a1, a2) & 1) != 0 || (sub_29A253604(a1, a2) & 1) != 0 || (sub_29A254198(a1, a2) & 1) != 0 || (sub_29A254370(a1, a2))
  {
    return 1;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A253364(a1);
  if (v4)
  {
    *(a2 + 1016) = 1;
    return 1;
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  if (sub_29A244028(a1, a2) & 1) != 0 || (sub_29A2544B0(a1, a2) & 1) != 0 || (sub_29A24339C(a1, a2) & 1) != 0 || (sub_29A23BDD0(a1, a2) & 1) != 0 || (sub_29A235930(a1, a2) & 1) != 0 || (sub_29A2545FC(a1, a2) & 1) != 0 || (sub_29A23B9BC(a1, a2) & 1) != 0 || (sub_29A254784(a1, a2) & 1) != 0 || (sub_29A25493C(a1, a2) & 1) != 0 || (sub_29A24DC74(a1, a2) & 1) != 0 || (sub_29A2445F0(a1, a2) & 1) != 0 || (sub_29A254A80(a1, a2) & 1) != 0 || (sub_29A254C44(a1, a2) & 1) != 0 || (sub_29A252C44(a1, a2) & 1) != 0 || (sub_29A234D4C(a1, a2) & 1) != 0 || (sub_29A254DE8(a1, a2) & 1) != 0 || (sub_29A240730(a1, a2) & 1) != 0 || (sub_29A254FA0(a1, a2) & 1) != 0 || (sub_29A243528(a1, a2) & 1) != 0 || (sub_29A248DB8(a1, a2) & 1) != 0 || (sub_29A2521C8(a1, a2) & 1) != 0 || (sub_29A255170(a1, a2) & 1) != 0 || (sub_29A255324(a1, a2) & 1) != 0 || (sub_29A251720(a1, a2) & 1) != 0 || (sub_29A23C084(a1, a2) & 1) != 0 || (sub_29A252DB4(a1, a2) & 1) != 0 || (sub_29A2447D0(a1, a2) & 1) != 0 || (sub_29A23C478(a1) & 1) != 0 || (sub_29A25587C(a1, a2) & 1) != 0 || (sub_29A23C1E8(a1, a2) & 1) != 0 || (sub_29A241254(a1, a2) & 1) != 0 || (sub_29A255A64(a1, a2) & 1) != 0 || (sub_29A255BFC(a1, a2) & 1) != 0 || (sub_29A240860(a1, a2) & 1) != 0 || (sub_29A255D94(a1, a2) & 1) != 0 || (sub_29A23FEC8(a1, a2) & 1) != 0 || (sub_29A251864(a1, a2) & 1) != 0 || (sub_29A250350(a1, a2) & 1) != 0 || (sub_29A255EC4(a1, a2) & 1) != 0 || (sub_29A244258(a1, a2) & 1) != 0 || (sub_29A2524EC(a1, a2) & 1) != 0 || (sub_29A25639C(a1, a2) & 1) != 0 || (sub_29A253950(a1, a2) & 1) != 0 || (sub_29A2565B4(a1, a2) & 1) != 0 || (sub_29A24DA24(a1, a2) & 1) != 0 || (sub_29A24CD24(a1, a2))
  {
    return 1;
  }

  return sub_29A256784(a1, a2);
}

void sub_29A254054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A254060(uint64_t a1, uint64_t *a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A2540D8(a1);
  v6 = v5;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
    pxrInternal__aapl__pxrReserved__::TsSpline::SetCurveType(a2 + 148, 0);
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v6;
}

void sub_29A2540CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2540D8(uint64_t a1)
{
  if (sub_29A254124(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A254124(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1769629026 || *(v1 + 4) != 29285)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A254198(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A254218(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2542E4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A25420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A254218(uint64_t a1)
{
  if (sub_29A254264(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A254264(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1852731235 || *(v1 + 3) != 1952671086)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

void sub_29A2542E4(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xEu);
  v4 = *(a2 + 408);
  for (i = *(a2 + 416); i != v4; sub_29A1E230C(a2 + 408, i))
  {
    i -= 2;
  }

  *(a2 + 416) = v4;
  *(a2 + 432) = 1;
  if ((*(a2 + 768) & 1) == 0)
  {

    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::StopRecordingString(a2 + 624);
  }
}

uint64_t sub_29A254370(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2543F0(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 39)
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::SetNextInterpolation(a2 + 1240, 3);
    }
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2543E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2543F0(uint64_t a1)
{
  if (sub_29A25443C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A25443C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1987212643 || *(v1 + 4) != 101)
  {
    return 0;
  }

  v4 = a1[5] + 5;
  a1[4] = v1 + 5;
  a1[5] = v4;
  a1[7] += 5;
  return 1;
}

uint64_t sub_29A2544B0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A254530(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 3)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Cu);
    }
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A254524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A254530(uint64_t a1)
{
  if (sub_29A25457C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A25457C(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1634100580 || *(v1 + 3) != 1953264993)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

uint64_t sub_29A2545FC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25467C(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 4)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xAu);
    }
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A254670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25467C(uint64_t a1)
{
  if (sub_29A2546C8(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2546C8(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  if (a1[8] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "displayUnit", 11);
  if (*v1 != 0x5579616C70736964 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[5] + 11;
  a1[4] = v1 + 11;
  a1[5] = v4;
  a1[7] += 11;
  return 1;
}

uint64_t sub_29A254784(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A254804(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2548B8(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2547F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A254804(uint64_t a1)
{
  if (sub_29A254850(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A254850(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1684825448)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}