void sub_29A2548B8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 264) - 4);
  if ((v3 - 32) >= 2)
  {
    if (v3 == 39)
    {

      pxrInternal__aapl__pxrReserved__::TsKnot::SetNextInterpolation(a2 + 1240, 1);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v4, 1);
    *(a2 + 1200) = v4;
  }
}

uint64_t sub_29A25493C(uint64_t a1, uint64_t *a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A2549B4(a1);
  v6 = v5;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
    pxrInternal__aapl__pxrReserved__::TsSpline::SetCurveType(a2 + 148, 1);
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v6;
}

void sub_29A2549A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2549B4(uint64_t a1)
{
  if (sub_29A254A00(a1))
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

uint64_t sub_29A254A00(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1836213608 || *(v1 + 3) != 1702127981)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

uint64_t sub_29A254A80(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A254B00(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A254BC0(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A254AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A254B00(uint64_t a1)
{
  if (sub_29A254B4C(a1))
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

uint64_t sub_29A254B4C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701734764 || *(v1 + 4) != 29281)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

void sub_29A254BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 264) - 4);
  if ((v3 - 32) >= 2)
  {
    if (v3 == 39)
    {

      pxrInternal__aapl__pxrReserved__::TsKnot::SetNextInterpolation(a2 + 1240, 2);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v4, 2);
    *(a2 + 1200) = v4;
  }
}

uint64_t sub_29A254C44(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A254CC4(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A254D78(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A254CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A254CC4(uint64_t a1)
{
  if (sub_29A254D10(a1))
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

uint64_t sub_29A254D10(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1886351212)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

void sub_29A254D78(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v3 = *(*(a2 + 33) - 4);
  if (v3 == 31)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
    v3 = *(*(a2 + 33) - 4);
  }

  if ((v3 & 0xFFFFFFFE) == 0x20)
  {

    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x23u);
  }
}

uint64_t sub_29A254DE8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A254E68(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A254F1C(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A254E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A254E68(uint64_t a1)
{
  if (sub_29A254EB4(a1))
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

uint64_t sub_29A254EB4(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1701736302)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

void sub_29A254F1C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 264) - 4);
  if ((v3 - 32) >= 2)
  {
    if (v3 == 39)
    {

      pxrInternal__aapl__pxrReserved__::TsKnot::SetNextInterpolation(a2 + 1240, 0);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v4, 0);
    *(a2 + 1200) = v4;
  }
}

uint64_t sub_29A254FA0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A255020(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A255118(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A255014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A255020(uint64_t a1)
{
  if (sub_29A25506C(a1))
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

uint64_t sub_29A25506C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x74616C6C6963736FLL || *(v1 + 8) != 101)
  {
    return 0;
  }

  v4 = a1[5] + 9;
  a1[4] = v1 + 9;
  a1[5] = v4;
  a1[7] += 9;
  return 1;
}

void sub_29A255118(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 35)
  {
    v7 = v2;
    v8 = v3;
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v6, 6);
    *(a2 + 1200) = v6;
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }
}

uint64_t sub_29A255170(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2551F0(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2552A4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2551E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2551F0(uint64_t a1)
{
  if (sub_29A25523C(a1))
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

uint64_t sub_29A25523C(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1953722224)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

void sub_29A2552A4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 264) - 4);
  if (v3 == 31)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
    v3 = *(*(a2 + 264) - 4);
  }

  if (v3 == 30)
  {
    v4 = 32;
  }

  else
  {
    if (v3 != 36)
    {
      return;
    }

    *(a2 + 1512) = 0;
    v4 = 39;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, v4);
}

uint64_t sub_29A255324(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2553A4(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A25545C(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A255398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2553A4(uint64_t a1)
{
  if (sub_29A2553F0(a1))
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

uint64_t sub_29A2553F0(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 29296 || *(v1 + 2) != 101)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

void sub_29A25545C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 264) - 4);
  if (v3 == 31)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
    v3 = *(*(a2 + 264) - 4);
  }

  if (v3 == 36)
  {
    *(a2 + 1512) = 1;
    v4[0] = 0;
    v5 = 0;
    sub_29A255530(a2 + 1376, v4);
    sub_29A224BA0(v4);
    v4[0] = 0;
    v5 = 0;
    sub_29A255530(a2 + 1432, v4);
    sub_29A224BA0(v4);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x25u);
  }

  else if (v3 == 30)
  {

    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x21u);
  }
}

uint64_t sub_29A255530(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (*(result + 48) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_29A224BA0(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_2A20495B8[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_29A2555A0(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 48))
  {
    result = sub_29A224BA0(*result);
    *v4 = *a3;
    *(v4 + 48) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

uint64_t *sub_29A2555EC(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 48) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_29A224BA0(*result);
    *v4 = *a3;
    *(v4 + 48) = 1;
  }

  return result;
}

double sub_29A255640(uint64_t *a1, void *a2, double *a3)
{
  v4 = *a1;
  if (*(*a1 + 48) == 2)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_29A224BA0(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 48) = 2;
  }

  return result;
}

__n128 sub_29A2556AC(__n128 *a1, uint64_t a2, __n128 *a3)
{
  if (a1[3].n128_u32[0] == 3)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    *a2 = result;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  else
  {
    sub_29A224BA0(a1);
    result = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    *a1 = result;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a1[3].n128_u32[0] = 3;
  }

  return result;
}

uint64_t sub_29A255738(uint64_t result, void *a2, void *a3)
{
  if (*(result + 48) == 4)
  {
    if (a3 != a2)
    {
      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a2 = *a3;
      *a3 = 0;
    }
  }

  else
  {
    v4 = result;
    result = sub_29A224BA0(result);
    *v4 = *a3;
    *a3 = 0;
    *(v4 + 48) = 4;
  }

  return result;
}

__n128 sub_29A2557B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 48) == 5)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
    *(a3 + 23) = 0;
    *a3 = 0;
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    result = *(a3 + 24);
    *(a2 + 40) = *(a3 + 5);
    *(a2 + 24) = result;
    *(a3 + 47) = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    sub_29A224BA0(a1);
    v8 = *a3;
    *(a1 + 16) = *(a3 + 2);
    *a1 = v8;
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    result = *(a3 + 24);
    *(a1 + 40) = *(a3 + 5);
    *(a1 + 24) = result;
    *(a3 + 4) = 0;
    *(a3 + 5) = 0;
    *(a3 + 3) = 0;
    *(a1 + 48) = 5;
  }

  return result;
}

uint64_t sub_29A25587C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2558FC(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A2559B4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2558F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2558FC(uint64_t a1)
{
  if (sub_29A255948(a1))
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

uint64_t sub_29A255948(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 25970 || *(v1 + 2) != 108)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

void sub_29A2559B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v3[2] = *MEMORY[0x29EDCA608];
  if (*(*(a2 + 33) - 4) == 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  if (!*(a2 + 131))
  {
    v3[1] = &off_2A20494F0 + 3;
    LODWORD(v3[0]) = 1;
    sub_29A18606C(a2 + 130, v3);
    sub_29A186B14(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 3u);
}

uint64_t sub_29A255A64(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A255AE4(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A255BA4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A255AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A255AE4(uint64_t a1)
{
  if (sub_29A255B30(a1))
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

uint64_t sub_29A255B30(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701864818 || *(v1 + 4) != 29793)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

void sub_29A255BA4(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 35)
  {
    v7 = v2;
    v8 = v3;
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v6, 4);
    *(a2 + 1200) = v6;
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }
}

uint64_t sub_29A255BFC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A255C7C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A255D3C(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A255C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A255C7C(uint64_t a1)
{
  if (sub_29A255CC8(a1))
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

uint64_t sub_29A255CC8(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1702061426 || *(v1 + 4) != 116)
  {
    return 0;
  }

  v4 = a1[5] + 5;
  a1[4] = v1 + 5;
  a1[5] = v4;
  a1[7] += 5;
  return 1;
}

void sub_29A255D3C(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 35)
  {
    v7 = v2;
    v8 = v3;
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v6, 5);
    *(a2 + 1200) = v6;
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }
}

uint64_t sub_29A255D94(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A255E04(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x22u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A255DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A255E04(uint64_t a1)
{
  if (sub_29A255E50(a1))
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

uint64_t sub_29A255E50(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1886350451 || *(v1 + 4) != 25701)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A255EC4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A255F44(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A256004(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A255F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A255F44(uint64_t a1)
{
  if (sub_29A255F90(a1))
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

uint64_t sub_29A255F90(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1768714355 || *(v1 + 4) != 25966)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

void sub_29A256004(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 744);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p);
  TypeForValueTypeName = pxrInternal__aapl__pxrReserved__::SdfGetTypeForValueTypeName(&__p, v5);
  if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20478E8, v6);
  if (TypeForValueTypeName == *v8)
  {
    *(a2 + 1176) = 1;
    v10 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94B8], v7);
    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&__p, *v10);
    pxrInternal__aapl__pxrReserved__::TsSpline::operator=((a2 + 1184), &__p);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }

    pxrInternal__aapl__pxrReserved__::TsSpline::SetTimeValued((a2 + 1184), 1);
  }

  else
  {
    IsSupportedValueType = pxrInternal__aapl__pxrReserved__::TsSpline::IsSupportedValueType(TypeForValueTypeName);
    *(a2 + 1176) = IsSupportedValueType;
    if (!IsSupportedValueType)
    {
      pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&TypeForValueTypeName);
      std::operator+<char>();
      v11 = std::string::append(&v30, "for context value: ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = *(a2 + 767);
      if (v13 >= 0)
      {
        v14 = v4;
      }

      else
      {
        v14 = *(a2 + 744);
      }

      if (v13 >= 0)
      {
        v15 = *(a2 + 767);
      }

      else
      {
        v15 = *(a2 + 752);
      }

      v16 = std::string::append(&v31, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v32, "and attribute time name: ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = *(a2 + 207);
      if (v20 >= 0)
      {
        v21 = (a2 + 184);
      }

      else
      {
        v21 = *(a2 + 184);
      }

      if (v20 >= 0)
      {
        v22 = *(a2 + 207);
      }

      else
      {
        v22 = *(a2 + 192);
      }

      v23 = std::string::append(&__p, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v34 = v23->__r_.__value_.__r.__words[2];
      v33 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      v25 = *(a1 + 32);
      sub_29A2266C8(&__p, a1, (v25 + 48));
      sub_29A276708(a2, v25, &__p, &v33);
      if (v29 < 0)
      {
        operator delete(v28);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(exception, &v33, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&__p, TypeForValueTypeName);
    pxrInternal__aapl__pxrReserved__::TsSpline::operator=((a2 + 1184), &__p);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }
  }

  pxrInternal__aapl__pxrReserved__::TsKnotMap::clear((a2 + 1216));
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Eu);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Fu);
}

void sub_29A2562C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A25639C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25641C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A256524(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A256410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25641C(uint64_t a1)
{
  if (sub_29A256468(a1))
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

uint64_t sub_29A256468(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  if (a1[8] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "timeSamples", 11);
  if (*v1 != 0x706D6153656D6974 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[5] + 11;
  a1[4] = v1 + 11;
  a1[5] = v4;
  a1[7] += 11;
  return 1;
}

void sub_29A256524(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v6 = &v7;
  v3 = a2 + 312;
  sub_29A1F9B0C(a2 + 304, *(a2 + 312));
  v4 = v7;
  *(a2 + 304) = &v7;
  *(a2 + 312) = v4;
  v5 = v8;
  *(a2 + 320) = v8;
  if (v5)
  {
    v4[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v4 = 0;
  }

  else
  {
    *(a2 + 304) = v3;
  }

  sub_29A1F9B0C(&v6, v4);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Du);
}

uint64_t sub_29A2565B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A256634(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A256734(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A256628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A256634(uint64_t a1)
{
  if (sub_29A256680(a1))
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

uint64_t sub_29A256680(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x53746E6169726176 || *(v1 + 8) != 29797)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

void sub_29A256734(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (*(*(a2 + 33) - 4) == 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Bu);
}

uint64_t sub_29A256784(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25683C(a1);
  v5 = v4;
  if (v4)
  {
    v9[1] = &off_2A20494F0 + 3;
    LODWORD(v9[0]) = 0;
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

void sub_29A256830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25683C(uint64_t a1)
{
  if (sub_29A256888(a1))
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

uint64_t sub_29A256888(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 2037539190 || *(v1 + 3) != 1735289209)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

void sub_29A256908(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 264) - 4);
  if (v4 == 3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
    RelationshipSpec = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_CreateRelationshipSpec(__p, a2, &v15);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if ((RelationshipSpec & 1) == 0)
    {
      v9 = *(a1 + 32);
      sub_29A2266C8(__p, a1, (v9 + 48));
      sub_29A276708(a2, v9, __p, &v15);
      if (v14 < 0)
      {
        operator delete(v13);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(exception, &v15, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
    AttributeSpec = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_CreateAttributeSpec(__p, a2, &v15);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if ((AttributeSpec & 1) == 0)
    {
      v7 = *(a1 + 32);
      sub_29A2266C8(__p, a1, (v7 + 48));
      sub_29A276708(a2, v7, __p, &v15);
      if (v14 < 0)
      {
        operator delete(v13);
      }

      v8 = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(v8, &v15, a1);
      __cxa_throw(v8, &unk_2A2048840, sub_29A2265D4);
    }

    if ((*(a2 + 768) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::StartRecordingString(a2 + 624);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }
}

void sub_29A256AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A256B68(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A256BD8(a1, a2))
  {
    if ((sub_29A256C84(a1, a2) & 1) == 0)
    {
      sub_29A25BAD8(a1);
    }

    return 1;
  }

  else
  {

    return sub_29A25BBF8(a1, a2);
  }
}

uint64_t sub_29A256BD8(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
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

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A256C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A256C84(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A25639C(a1, a2))
  {
    sub_29A256D00(a1, a2);
  }

  else if (sub_29A254198(a1, a2))
  {
    sub_29A257798(a1, a2);
  }

  else
  {
    result = sub_29A255EC4(a1, a2);
    if (!result)
    {
      return result;
    }

    sub_29A257F8C(a1, a2);
  }

  return 1;
}

uint64_t sub_29A256D00(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A256D4C(a1, a2) & 1) == 0)
  {
    sub_29A257654(a1);
  }

  return 1;
}

uint64_t sub_29A256D4C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A256DCC(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A257044(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A256DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A256DCC(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = a1[4];
  if (v2 == a1[8])
  {
    return 0;
  }

  if (*v2 != 123)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v5;
  ++a1[7];
    ;
  }

  sub_29A256E94(a1, a2);
  v6 = a1[4];
  if (v6 == a1[8] || *v6 != 125)
  {
    return 0;
  }

  v7 = a1[5] + 1;
  a1[4] = v6 + 1;
  a1[5] = v7;
  ++a1[7];
  return 1;
}

uint64_t sub_29A256E94(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A256F0C(a1, a2);
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

void sub_29A256EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A256F0C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A256F64(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
      sub_29A256FD8(a1, a2);
    }

    while ((v6 & 1) != 0);
    sub_29A238640(a1);
  }

  return v5;
}

void sub_29A256F64(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A240990(a1, a2);
  if (v4 && sub_29A23EA90(a1) && (sub_29A234D4C(a1, a2) & 1) == 0)
  {

    sub_29A236904(a1, a2);
  }
}

__n128 sub_29A256FD8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A256F64(a1, a2), (v5 & 1) == 0))
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A257038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A257044(uint64_t a1, uint64_t *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = sub_29A22DD10(a2 + 128);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v6[1] = &off_2A20495E8;
  sub_29A2575EC(v6, (a2 + 38));
  (*(*v3 + 152))(v3, a2 + 129, v4 + 448, v6);
  sub_29A186B14(v6);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
}

void sub_29A25712C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A257148(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A257168(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A2572C0(a1);
}

unint64_t sub_29A257180(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A257328(&v3, *v1, (v1 + 8));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t *sub_29A2572A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20495E8;
  return sub_29A2575EC(a2, v2);
}

void sub_29A2572C0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A1F9B0C(v1, *(v1 + 8));

    operator delete(v1);
  }
}

uint64_t sub_29A257328(uint64_t result, void *a2, void *a3)
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

      result = sub_29A2573A8(v4, a2 + 4);
      a2 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_29A2573A8(uint64_t a1, double *a2)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (*(a1 + 8))
  {
    *&v4 = *&v3 + ((*a1 + *&v3 + (*a1 + *&v3) * (*a1 + *&v3)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  result = pxrInternal__aapl__pxrReserved__::VtValue::GetHash((a2 + 1));
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

uint64_t sub_29A257434(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (*a1 == a1 + 1)
  {
    return 1;
  }

  if (*(*a1 + 32) == *(*a2 + 32))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

  return 0;
}

uint64_t sub_29A25751C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29A257584(*a1, &v4);
    sub_29A2572C0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A2572C0(&v4);
  }

  return *a1;
}

uint64_t *sub_29A257584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  result = sub_29A1F973C(v4, a1);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A2575EC(void *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  result = sub_29A1F973C(v4, a2);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void sub_29A257654(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TimeSampleMap>");
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

void sub_29A257738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A257798(uint64_t a1, uint64_t a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A2577E4(a1, a2) & 1) == 0)
  {
    sub_29A257E48(a1);
  }

  return 1;
}

uint64_t sub_29A2577E4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A257864(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A257980(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A257858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A257864(void *a1, uint64_t a2)
{
  if (sub_29A234D4C(a1, a2) & 1) != 0 || (sub_29A23C954(a1, a2))
  {
    return 1;
  }

  return sub_29A2578C8(a1, a2);
}

uint64_t sub_29A2578C8(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 91)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A257928(a1, a2);
  return 1;
}

uint64_t sub_29A257928(void *a1, uint64_t a2)
{
    ;
  }

  sub_29A24E0E0(a1, a2);

  return sub_29A2362C4(a1);
}

void sub_29A257980(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 408);
  v5 = *(a2 + 416);
  v6 = *(a2 + 616);
  if (v4 == v5 && v6 != 0)
  {
    sub_29A008E78(__p, "Setting connection paths to None (or an empty list) is only allowed when setting explicit connection paths, not for list editing");
    v19 = *(a1 + 32);
    sub_29A2266C8(&v26, a1, (v19 + 48));
    sub_29A276708(a2, v19, &v26, __p);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  if (v4 != v5)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidAttributeConnectionPath(v4, __p);
      if (v25 == 1)
      {
        v15 = *(a1 + 32);
        sub_29A2266C8(&v26, a1, (v15 + 48));
        WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
        sub_29A276708(a2, v15, &v26, WhyNot);
        if (v29 < 0)
        {
          operator delete(v28);
        }

        v17 = __cxa_allocate_exception(0x20uLL);
        v18 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
        sub_29A22DB7C(v17, v18, a1);
        __cxa_throw(v17, &unk_2A2048840, sub_29A2265D4);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
    v6 = *(a2 + 616);
  }

  if (v6 < 2)
  {
    v8 = *(a2 + 408);
    for (i = *(a2 + 416); v8 != i; v8 = (v8 + 8))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget((a2 + 1032), v8, &v26);
      v10 = sub_29A22DD10((a2 + 1024));
      if (((*(*v10 + 72))(v10, &v26) & 1) == 0)
      {
        v11 = sub_29A22DD10((a2 + 1024));
        (*(*v11 + 64))(v11, &v26, 2);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
      sub_29A1DE3A4(&v26);
    }

    sub_29A22DD10((a2 + 1024));
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
    {
      sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v27 = &off_2A2048F00;
    sub_29A23E64C();
  }

  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v13)
  {
    v13 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((sub_29A24E74C(v13 + 7, *(a2 + 616), (a2 + 408), a2, __p) & 1) == 0)
  {
    v21 = *(a1 + 32);
    sub_29A2266C8(&v26, a1, (v21 + 48));
    sub_29A276708(a2, v21, &v26, __p);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    v22 = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(v22, __p, a1);
    __cxa_throw(v22, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  *(a2 + 1016) = 0;
  v27 = 0;
  sub_29A18606C((a2 + 1040), &v26);
  sub_29A186B14(&v26);
  if (*(a2 + 207) < 0)
  {
    **(a2 + 184) = 0;
    *(a2 + 192) = 0;
  }

  else
  {
    *(a2 + 184) = 0;
    *(a2 + 207) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v14);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A257D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A257E48(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485290;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ConnectValue>");
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

void sub_29A257F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A257F8C(uint64_t a1, __n128 *a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A257FD8(a1, a2) & 1) == 0)
  {
    sub_29A25B994(a1);
  }

  return 1;
}

uint64_t sub_29A257FD8(uint64_t a1, __n128 *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A258058(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25B49C(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A25804C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258058(void *a1, __n128 *a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 123)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A2580B8(a1, a2);
  return 1;
}

uint64_t sub_29A2580B8(void *a1, __n128 *a2)
{
  if ((sub_29A258108(a1, a2) & 1) == 0)
  {
    sub_29A25B33C(a1);
  }

  return sub_29A25F060(a1);
}

uint64_t sub_29A258108(void *a1, __n128 *a2)
{
    ;
  }

  v4 = sub_29A25816C(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A25816C(uint64_t a1, __n128 *a2)
{
  v4 = sub_29A2581C4(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A25B2D0(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

uint64_t sub_29A2581C4(uint64_t a1, __n128 *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A258234(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Fu);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A258228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258234(uint64_t a1, __n128 *a2)
{
  if (sub_29A25493C(a1, a2) & 1) != 0 || (sub_29A254060(a1, a2) & 1) != 0 || (sub_29A2582C8(a1, a2) & 1) != 0 || (sub_29A258878(a1, a2) & 1) != 0 || (sub_29A258954(a1, a2))
  {
    return 1;
  }

  return sub_29A2593BC(a1, a2);
}

uint64_t sub_29A2582C8(uint64_t a1, __n128 *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = sub_29A258340(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::SetPreExtrapolation(&a2[74], a2 + 75);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v4;
}

void sub_29A258334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258340(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A255324(a1, a2) || !sub_29A23EA90(a1))
  {
    return 0;
  }

  return sub_29A2583A4(a1, a2);
}

uint64_t sub_29A2583A4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A254DE8(a1, a2))
  {
    return 1;
  }

  if (sub_29A254784(a1, a2))
  {
    return 1;
  }

  if (sub_29A254A80(a1, a2))
  {
    return 1;
  }

  sub_29A258448(a1, a2);
  if (v4)
  {
    return 1;
  }

  sub_29A25871C(a1, a2);
  if (v5)
  {
    return 1;
  }

  sub_29A258798(a1, a2);
  if (v6)
  {
    return 1;
  }

  return sub_29A258814(a1, a2);
}

__n128 sub_29A258448(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (sub_29A255D94(a1, a2) && sub_29A2584FC(a1) && sub_29A25859C(a1, a2) && (v5 = *(a1 + 32), v5 != *(a1 + 64)) && *v5 == 41)
  {
    v6 = *(a1 + 40) + 1;
    *(a1 + 32) = v5 + 1;
    *(a1 + 40) = v6;
    ++*(a1 + 56);
  }

  else
  {
    result = v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void sub_29A2584F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2584FC(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 40)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A25859C(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A258618(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A258618(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A25869C(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A258690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25869C(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v8);
  pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(&v7, 3);
  *(a2 + 1200) = v7;
  sub_29A2123CC(v9);
  *(a2 + 1208) = v4;
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  return sub_29A224BA0(v9);
}

void sub_29A258700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A224BA0(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A25871C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A254C44(a1, a2) || !sub_29A235C1C(a1) || (sub_29A255A64(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25878C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A258798(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A254C44(a1, a2) || !sub_29A235C1C(a1) || (sub_29A255BFC(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A258808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258814(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A254C44(a1, a2) || !sub_29A235C1C(a1))
  {
    return 0;
  }

  return sub_29A254FA0(a1, a2);
}

uint64_t sub_29A258878(uint64_t a1, __n128 *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = sub_29A2588F0(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::SetPostExtrapolation(&a2[74], a2 + 75);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v4;
}

void sub_29A2588E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2588F0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A255170(a1, a2) || !sub_29A23EA90(a1))
  {
    return 0;
  }

  return sub_29A2583A4(a1, a2);
}

uint64_t sub_29A258954(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2589D4(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A259260(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2589C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2589D4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  result = sub_29A254C44(a1, a2);
  if (result)
  {
    result = sub_29A23EA90(a1);
    if (result)
    {
      result = sub_29A2584FC(a1);
      if (result)
      {
        result = sub_29A258AF4(a1, a2);
        if (result)
        {
          result = sub_29A258C50(a1);
          if (result)
          {
            result = sub_29A258CF0(a1, a2);
            if (result)
            {
              result = sub_29A258C50(a1);
              if (result)
              {
                result = sub_29A258E4C(a1, a2);
                if (result)
                {
                  result = sub_29A258C50(a1);
                  if (result)
                  {
                    result = sub_29A258FA8(a1, a2);
                    if (result)
                    {
                      result = sub_29A258C50(a1);
                      if (result)
                      {
                        result = sub_29A259104(a1, a2);
                        if (result)
                        {
                          v5 = a1[4];
                          if (v5 == a1[8] || *v5 != 41)
                          {
                            return 0;
                          }

                          else
                          {
                            v6 = a1[5] + 1;
                            a1[4] = v5 + 1;
                            a1[5] = v6;
                            ++a1[7];
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A258AF4(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A258B70(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A258B70(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A258BF4(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A258BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258BF4(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v6);
  sub_29A2123CC(v7);
  *(a2 + 1520) = v4;
  return sub_29A224BA0(v7);
}

uint64_t sub_29A258C50(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 44)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A258CF0(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A258D6C(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A258D6C(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A258DF0(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A258DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258DF0(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v6);
  sub_29A2123CC(v7);
  *(a2 + 1528) = v4;
  return sub_29A224BA0(v7);
}

uint64_t sub_29A258E4C(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A258EC8(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A258EC8(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A258F4C(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A258F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A258F4C(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v6);
  sub_29A2123CC(v7);
  *(a2 + 1536) = v4;
  return sub_29A224BA0(v7);
}

uint64_t sub_29A258FA8(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A259024(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A259024(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A2590A8(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A25909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2590A8(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v6);
  sub_29A2123CC(v7);
  *(a2 + 1544) = v4;
  return sub_29A224BA0(v7);
}

uint64_t sub_29A259104(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A259180(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A259180(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A259204(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A2591F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A259204(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v6);
  sub_29A2123CC(v7);
  *(a2 + 1552) = v4;
  return sub_29A224BA0(v7);
}

double sub_29A259260(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1536);
  if (trunc(v3) != v3 || (v4 = *(a2 + 1544), trunc(v4) != v4))
  {
    sub_29A008E78(v14, "SplineLoopItem: Non-integer loop count");
    v7 = *(a1 + 32);
    sub_29A2266C8(&v9, a1, (v7 + 48));
    sub_29A276708(a2, v7, &v9, v14);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, v14, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  v9 = *(a2 + 1520);
  v10 = v3;
  v11 = v4;
  __p = *(a2 + 1552);
  pxrInternal__aapl__pxrReserved__::TsSpline::SetInnerLoopParams((a2 + 1184), &v9);
  *(a2 + 1552) = 0;
  result = 0.0;
  *(a2 + 1536) = 0u;
  *(a2 + 1520) = 0u;
  return result;
}

void sub_29A259374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2593BC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25943C(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A25B278(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A259430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A25943C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A259498(a1, a2);
  if (v4 && sub_29A23EA90(a1))
  {
    sub_29A25960C(a1, a2);
    if (v5)
    {
      sub_29A25A29C(a1, a2);
    }
  }
}

__n128 sub_29A259498(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A25951C(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A259510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25951C(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v10);
  ValueType = pxrInternal__aapl__pxrReserved__::TsSpline::GetValueType((a2 + 1184));
  CurveType = pxrInternal__aapl__pxrReserved__::TsSpline::GetCurveType((a2 + 1184));
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v8, ValueType, CurveType);
  pxrInternal__aapl__pxrReserved__::TsKnot::operator=(a2 + 1240, v8);
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v8);
  sub_29A2123CC(v11);
  pxrInternal__aapl__pxrReserved__::TsKnot::SetTime((a2 + 1240), v6);
  *&v8[0] = 0;
  v9 = 0;
  sub_29A255530(a2 + 1264, v8);
  sub_29A224BA0(v8);
  *&v8[0] = 0;
  v9 = 0;
  sub_29A255530(a2 + 1320, v8);
  sub_29A224BA0(v8);
  return sub_29A224BA0(v11);
}

void sub_29A2595E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(va);
  sub_29A224BA0(va1);
  _Unwind_Resume(a1);
}

__n128 sub_29A25960C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A259680(a1, a2);
  if ((v4 & 1) != 0 || sub_29A259F74(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x24u);
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A259674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A259680(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A259708(a1, a2);
  if (v4 && sub_29A259BE8(a1))
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A259C6C(v8, a2);
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A2596FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A259708(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A25978C(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A259780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25978C(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v5);
  sub_29A2597E8(a2 + 1264, v6);
  return sub_29A224BA0(v6);
}

uint64_t sub_29A2597E8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (*(result + 48) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_29A224BA0(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_2A20496A0[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_29A259858(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 48))
  {
    result = sub_29A224BA0(*result);
    *v4 = *a3;
    *(v4 + 48) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

uint64_t *sub_29A2598A4(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 48) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_29A224BA0(*result);
    *v4 = *a3;
    *(v4 + 48) = 1;
  }

  return result;
}

double sub_29A2598F8(uint64_t *a1, void *a2, double *a3)
{
  v4 = *a1;
  if (*(*a1 + 48) == 2)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_29A224BA0(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 48) = 2;
  }

  return result;
}

double sub_29A259964(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 48) == 3)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = sub_29A2599B0(v6).n128_u64[0];
  }

  return result;
}

__n128 sub_29A2599B0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_29A008D14(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_29A224BA0(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[3].n128_u32[0] = 3;
  return result;
}

void *sub_29A259A20(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 48) == 4)
  {
    return sub_29A166F2C(a2, a3);
  }

  else
  {
    return sub_29A259A40(a1, a3);
  }
}

uint64_t sub_29A259A40(uint64_t a1, uint64_t *a2)
{
  sub_29A224BA0(a1);
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 48) = 4;
  return a1;
}

double sub_29A259AA0(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 48) == 5)
  {
    std::string::operator=(this, __str);

    std::string::operator=(this + 1, __str + 1);
  }

  else
  {
    v6[0] = a1;
    v6[1] = __str;
    return sub_29A259B18(v6);
  }

  return result;
}

double sub_29A259B18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_29A008D14(&v8, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v9 = *(v2 + 16);
    v8 = v3;
  }

  if (*(v2 + 47) < 0)
  {
    sub_29A008D14(&v10, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    v4 = *(v2 + 24);
    v11 = *(v2 + 40);
    v10 = v4;
  }

  sub_29A224BA0(v1);
  v5 = v8;
  *(v1 + 16) = v9;
  *v1 = v5;
  v6 = v11;
  result = *&v10;
  *(v1 + 24) = v10;
  *(v1 + 40) = v6;
  *(v1 + 48) = 5;
  return result;
}

void sub_29A259BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A259BE8(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 38)
  {
    return 0;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A259C6C(uint64_t a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  sub_29A259D00(a2, a2 + 1264, v4);
  pxrInternal__aapl__pxrReserved__::TsKnot::SetValue(a2 + 1240, v4);
  return sub_29A186B14(v4);
}

void sub_29A259CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A259D00(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  ValueType = pxrInternal__aapl__pxrReserved__::TsSpline::GetValueType((a1 + 1184));
  sub_29A2123CC(a2);
  v8 = v6;
  v7 = a3;
  sub_29A259D80(ValueType, &v8, &v7);
}

void sub_29A259D80(uint64_t a1, double *a2, void **a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == a1)
  {
    v6 = *a2;
    v7 = *a3;
    v10 = &unk_2A2044D1B;
    v9 = *&v6;
LABEL_5:
    sub_29A18606C(v7, &v9);
    sub_29A186B14(&v9);
    return;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == a1)
  {
    v7 = *a3;
    v8 = *a2;
    v10 = &unk_2A2044C63;
    *&v9 = v8;
    goto LABEL_5;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == a1)
  {
    sub_29A259EB0(*a2, &v9, *a3);
  }

  else
  {
    v9 = "ts/valueTypeDispatch.h";
    v10 = "TsDispatchToValueTypeTemplate";
    v11 = 64;
    v12 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_Bundler, Args = <double, pxrInternal__aapl__pxrReserved__::VtValue *>]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Unsupported spline value type");
  }
}

uint64_t sub_29A259EB0(double a1, uint64_t a2, void *a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v4 = a1;
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  v7[1] = &off_2A2044BA8 + 3;
  LOWORD(v7[0]) = v5;
  sub_29A18606C(a3, v7);
  return sub_29A186B14(v7);
}

uint64_t sub_29A259F74(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A259FF4(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A25A1D8(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A259FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A259FF4(void *a1, uint64_t a2)
{
  sub_29A25A058(a1, a2);
  if (v4 && sub_29A25A138(a1))
  {

    sub_29A259708(a1, a2);
  }
}

__n128 sub_29A25A058(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A25A0DC(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A25A0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A0DC(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v5);
  sub_29A2597E8(a2 + 1320, v6);
  return sub_29A224BA0(v6);
}

uint64_t sub_29A25A138(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 38)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A25A1D8(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  sub_29A259D00(a2, a2 + 1320, v5);
  pxrInternal__aapl__pxrReserved__::TsKnot::SetPreValue((a2 + 1240), v5);
  sub_29A186B14(v5);
  sub_29A259D00(a2, a2 + 1264, v4);
  pxrInternal__aapl__pxrReserved__::TsKnot::SetValue(a2 + 1240, v4);
  return sub_29A186B14(v4);
}

void sub_29A25A274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A29C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A2366E0(a1);
  if (v4)
  {
    sub_29A25A2F4(a1, a2);
    if ((v5 & 1) == 0)
    {
      sub_29A25B158(a1);
    }
  }

  return v4;
}

__n128 sub_29A25A2F4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A25A354(a1, a2))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    sub_29A2366E0(a1);
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A25A348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A354(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A25A3D0(a1, a2);
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

uint64_t sub_29A25A3D0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A25A428(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A25B0EC(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v4;
}

uint64_t sub_29A25A428(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A25A4A8(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25B080(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A25A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A4A8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A25A50C(a1, a2);
  if (v4 & 1) != 0 || (sub_29A25ADCC(a1, a2))
  {
    return 1;
  }

  return sub_29A23529C(a1, a2);
}

__n128 sub_29A25A50C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (!sub_29A255324(a1, a2) || !sub_29A235C1C(a1) || (result.n128_u64[0] = sub_29A25A588(a1, a2).n128_u64[0], (v5 & 1) == 0))
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A25A57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25A588(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25A5F8(a1, a2);
  if ((v5 & 1) != 0 || sub_29A25A9F4(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
  }

  else
  {
    result = v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void sub_29A25A5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25A5F8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (sub_29A2584FC(a1) && sub_29A25A69C(a1, a2) && (v5 = *(a1 + 32), v5 != *(a1 + 64)) && *v5 == 41)
  {
    v6 = *(a1 + 40) + 1;
    *(a1 + 32) = v5 + 1;
    *(a1 + 40) = v6;
    ++*(a1 + 56);
  }

  else
  {
    result = v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void sub_29A25A690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A69C(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A25A718(a1, a2);
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

uint64_t sub_29A25A718(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (sub_29A25A7AC(a1, a2) && ((v4 = *(a1 + 32), v4 == *(a1 + 64)) || *v4 != 44))
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25A908(v8, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A25A7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A7AC(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A25A828(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A25A828(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A25A8AC(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A25A8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A8AC(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v5);
  sub_29A2597E8(a2 + 1376, v6);
  return sub_29A224BA0(v6);
}

uint64_t sub_29A25A908(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  sub_29A259D00(a2, a2 + 1376, v4);
  if (*(a2 + 1512) == 1)
  {
    sub_29A186EF4(v5, v4);
    pxrInternal__aapl__pxrReserved__::TsKnot::SetPreTanSlope(a2 + 1240, v5);
  }

  else
  {
    sub_29A186EF4(v5, v4);
    pxrInternal__aapl__pxrReserved__::TsKnot::SetPostTanSlope(a2 + 1240, v5);
  }

  sub_29A186B14(v5);
  return sub_29A186B14(v4);
}

void sub_29A25A9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A25A9F4(void *a1, uint64_t a2)
{
  result = sub_29A2584FC(a1);
  if (result)
  {
    result = sub_29A25AA74(a1, a2);
    if (result)
    {
      v5 = a1[4];
      if (v5 == a1[8] || *v5 != 41)
      {
        return 0;
      }

      else
      {
        v6 = a1[5] + 1;
        a1[4] = v5 + 1;
        a1[5] = v6;
        ++a1[7];
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_29A25AA74(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A25AAF0(a1, a2);
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

uint64_t sub_29A25AAF0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A25AB70(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A25ACB4(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A25AB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A25AB70(void *a1, uint64_t a2)
{
  sub_29A25ABD4(a1, a2);
  if (v4 && sub_29A258C50(a1))
  {

    sub_29A25A828(a1, a2);
  }
}

__n128 sub_29A25ABD4(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A25AC58(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A25AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25AC58(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v5);
  sub_29A2597E8(a2 + 1432, v6);
  return sub_29A224BA0(v6);
}

uint64_t sub_29A25ACB4(uint64_t a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  sub_29A2123CC(a2 + 1432);
  v4 = v3;
  sub_29A259D00(a2, a2 + 1376, v6);
  if (*(a2 + 1512) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::SetPreTanWidth((a2 + 1240), v4);
    sub_29A186EF4(v7, v6);
    pxrInternal__aapl__pxrReserved__::TsKnot::SetPreTanSlope(a2 + 1240, v7);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::SetPostTanWidth((a2 + 1240), v4);
    sub_29A186EF4(v7, v6);
    pxrInternal__aapl__pxrReserved__::TsKnot::SetPostTanSlope(a2 + 1240, v7);
  }

  sub_29A186B14(v7);
  return sub_29A186B14(v6);
}

void sub_29A25AD9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A25ADCC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = sub_29A25AE48(a1, a2);
  if (v5)
  {
    if (*(*(a2 + 33) - 4) == 37)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
    }
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A25AE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25AE48(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  result = sub_29A255170(a1, a2);
  if (result)
  {
    result = sub_29A25AE94(a1, a2);
    if (result)
    {
      sub_29A25A588(a1, a2);
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A25AE94(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A25AF10(a1, a2);
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

uint64_t sub_29A25AF10(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A25AF90(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25B004(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A25AF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25AF90(uint64_t a1, uint64_t a2)
{
  if (sub_29A254DE8(a1, a2) & 1) != 0 || (sub_29A254784(a1, a2) & 1) != 0 || (sub_29A254A80(a1, a2))
  {
    return 1;
  }

  return sub_29A254370(a1, a2);
}

void sub_29A25B004(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  v3[0] = 0;
  v4 = 0;
  sub_29A255530(a2 + 1376, v3);
  sub_29A224BA0(v3);
  v3[0] = 0;
  v4 = 0;
  sub_29A255530(a2 + 1432, v3);
  sub_29A224BA0(v3);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x25u);
}

void sub_29A25B080(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v3, *(a2 + 944));
  pxrInternal__aapl__pxrReserved__::TsKnot::SetCustomData(a2 + 1240, &v3);
  sub_29A184A10(&v3, 0);
  pxrInternal__aapl__pxrReserved__::VtDictionary::clear(*(a2 + 944));
}

void sub_29A25B0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29A25B0EC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A25A428(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25B14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A25B158(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x190uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4852A0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::StatementSequenceOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::SplineKnotParam>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, PXR_INTERNAL_NS_pegtl::not_at<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::StatementSeparator>>");
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

void sub_29A25B218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

pxrInternal__aapl__pxrReserved__::TsKnot *sub_29A25B278(uint64_t a1, void *a2)
{
  if (*(a2[33] - 4) == 36)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);

  return pxrInternal__aapl__pxrReserved__::TsKnotMap::insert((a2 + 152), (a2 + 155));
}

__n128 sub_29A25B2D0(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A2581C4(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25B330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A25B33C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4852B0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::SplineItem>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
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

void sub_29A25B43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A25B49C(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  if (*(a2 + 1176) == 1)
  {
    if (!pxrInternal__aapl__pxrReserved__::TsKnotMap::empty((a2 + 1216)))
    {
      v8[0] = &v7;
      v3 = sub_29A1BE184();
      sub_29A0A71C8(v3, v8);
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::TsSpline::SetKnots((a2 + 1184), (a2 + 1216));
      sub_29A25B610(&v7);
    }

    v4 = sub_29A22DD10((a2 + 1024));
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v8[1] = &off_2A20496D0;
    sub_29A25B92C(v8, (a2 + 1184));
    (*(*v4 + 152))(v4, a2 + 1032, v5 + 328, v8);
    sub_29A186B14(v8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v6);
}

void sub_29A25B5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A25B610(uint64_t a1)
{
  v2 = sub_29A1BE184();
  v3 = v2[1];
  if (*v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 - 8);
  }

  if (v4 != a1)
  {
    v10[0] = "tf/stacked.h";
    v10[1] = "_Pop";
    v10[2] = 189;
    v10[3] = "static void pxrInternal__aapl__pxrReserved__::TfStacked<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector, true, pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<TsAntiRegressionAuthoringSelector, true>>::_Pop(const Derived *) [Derived = pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector, PerThread = true, Holder = pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<TsAntiRegressionAuthoringSelector, true>]";
    v11 = 0;
    v12 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B485B6BLL & 0x7FFFFFFFFFFFFFFFLL), v8);
    if (v9 >= 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v10, "Destroyed %s out of stack order.", v6, v7);
  }

  result = sub_29A1BE184();
  *(result + 8) -= 8;
  return result;
}

void sub_29A25B6E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A25B65CLL);
}

void sub_29A25B6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A25B710(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A25B730(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29A25B844@<X0>(const pxrInternal__aapl__pxrReserved__::TsSpline **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20496D0;
  return sub_29A25B92C(a2, v2);
}

const pxrInternal__aapl__pxrReserved__::TsSpline *sub_29A25B85C(const pxrInternal__aapl__pxrReserved__::TsSpline **a1)
{
  v2 = atomic_load(*a1 + 4);
  if (v2 != 1)
  {
    sub_29A25B8C4(*a1, &v4);
    sub_29A1D2264(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1D2264(&v4);
  }

  return *a1;
}

void *sub_29A25B8C4@<X0>(const pxrInternal__aapl__pxrReserved__::TsSpline *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x18uLL);
  result = pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(v4, a1);
  atomic_store(0, v4 + 4);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A25B92C(unsigned int **a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v4 = operator new(0x18uLL);
  result = pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(v4, a2);
  atomic_store(0, v4 + 4);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  return result;
}

void sub_29A25B994(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485200;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::SplineValue>");
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

void sub_29A25BA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A25BAD8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x370uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4852C0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::if_must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordTimeSamples, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TimeSampleMap>>, PXR_INTERNAL_NS_pegtl::if_must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordConnect, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ConnectValue>>, PXR_INTERNAL_NS_pegtl::if_must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpline, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::SplineValue>>>");
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

void sub_29A25BB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25BBF8(void *a1, char *a2)
{
  if (!sub_29A25BC44(a1, a2) || (sub_29A25BD18(a1, a2) & 1) == 0)
  {
    sub_29A25C024(a1);
  }

  return 1;
}

uint64_t sub_29A25BC44(uint64_t a1, char *a2)
{
  sub_29A25BC9C(a1, a2);
  if ((a2[768] & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::StopRecordingString((a2 + 624));
  }

  return 1;
}

void sub_29A25BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25BC9C(uint64_t a1, char *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A234BC8(a1, a2) || (sub_29A234D4C(a1, a2) & 1) == 0 && (sub_29A236904(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25BD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25BD18(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  sub_29A25BD68(a1, a2);
  return 1;
}

uint64_t sub_29A25BD68(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22E2FC(a1, a2);
  if (v4)
  {
    sub_29A25BDF8(a1, a2);
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A25BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25BDF8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A25BE58(a1, a2);
  if ((sub_29A24108C(a1, a2) & 1) == 0)
  {
    sub_29A241028(a1);
  }

  return 1;
}

uint64_t sub_29A25BE58(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A25BED0(a1, a2);
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

void sub_29A25BEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25BED0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A25BF28(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A25BFB8(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v4;
}

uint64_t sub_29A25BF28(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A243E7C(a1, a2) & 1) != 0 || (sub_29A23BAE4(a1, a2))
  {
    return 1;
  }

  if (sub_29A2545FC(a1, a2) || sub_29A2521C8(a1, a2))
  {
    sub_29A252348(a1, a2);
    return 1;
  }

  return sub_29A252420(a1, a2);
}

__n128 sub_29A25BFB8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A25BF28(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25C018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A25C024(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x130uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4852D0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::AttributeAssignmentOptional, PXR_INTERNAL_NS_pegtl::pad_opt<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::AttributeMetadata, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>>");
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

void sub_29A25C0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25C144(uint64_t a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  *(a2 + 1016) = 0;
  v4[1] = 0;
  sub_29A18606C((a2 + 1040), v4);
  result = sub_29A186B14(v4);
  if (*(a2 + 207) < 0)
  {
    **(a2 + 184) = 0;
    *(a2 + 192) = 0;
  }

  else
  {
    *(a2 + 184) = 0;
    *(a2 + 207) = 0;
  }

  return result;
}

uint64_t sub_29A25C1D4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A25C254(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25DB4C(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A25C248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25C254(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A25C2C8(a1, a2))
  {
    return 0;
  }

  if (!sub_29A235C1C(a1))
  {
    return 0;
  }

  sub_29A253AD8(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return sub_29A25C4B8(a1, a2);
}

uint64_t sub_29A25C2C8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A25587C(a1, a2))
  {
    return 1;
  }

  sub_29A25C32C(a1, a2);
  if (v4)
  {
    return 1;
  }

  return sub_29A25C3A8(a1, a2);
}

__n128 sub_29A25C32C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A256784(a1, a2) || !sub_29A235C1C(a1) || (sub_29A25587C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25C3A8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A253364(a1);
  if (v4)
  {
    *(a2 + 1016) = 1;
    result = sub_29A235C1C(a1);
    if (result)
    {
      if (sub_29A25587C(a1, a2))
      {
        return 1;
      }

      else
      {

        return sub_29A25C454(a1, a2);
      }
    }
  }

  else
  {
    result = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A25C448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25C454(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A256784(a1, a2) || !sub_29A235C1C(a1))
  {
    return 0;
  }

  return sub_29A25587C(a1, a2);
}

uint64_t sub_29A25C4B8(void *a1, uint64_t *a2)
{
  if (sub_29A256BD8(a1, a2))
  {

    return sub_29A25C520(a1, a2);
  }

  else
  {

    return sub_29A25C818(a1, a2);
  }
}

uint64_t sub_29A25C520(uint64_t a1, uint64_t a2)
{
  if (!sub_29A2544B0(a1, a2))
  {
    sub_29A25C6F8(a1);
  }

  sub_29A25C568(a1, a2);
  return 1;
}

uint64_t sub_29A25C568(uint64_t a1, uint64_t a2)
{
  if (!sub_29A234BC8(a1, a2) || (sub_29A23C954(a1, a2) & 1) == 0)
  {
    sub_29A25C5B4(a1);
  }

  return 1;
}

void sub_29A25C5B4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xA8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4852E0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef>");
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

void sub_29A25C698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A25C6F8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x130uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4852F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::if_must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordDefault, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef>>>");
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

void sub_29A25C7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25C818(void *a1, uint64_t *a2)
{
  if ((sub_29A25C864(a1, a2) & 1) == 0 && (sub_29A25CD84(a1, a2) & 1) == 0)
  {
    sub_29A25DA2C(a1);
  }

  return 1;
}

uint64_t sub_29A25C864(uint64_t a1, uint64_t *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A25C8FC(a1, a2);
  if (v4)
  {
    sub_29A25C988(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A25C8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25C8FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 91)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Bu);
  return 1;
}

void sub_29A25C97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25C988(void *a1, uint64_t *a2)
{
  if ((sub_29A25C9E0(a1, a2) & 1) == 0)
  {
    sub_29A25CA5C(a1);
  }

  if ((sub_29A25CC04(a1, a2) & 1) == 0)
  {
    sub_29A25CBA0(a1);
  }

  return 1;
}

uint64_t sub_29A25C9E0(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = sub_29A23C954(a1, a2);
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

void sub_29A25CA5C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485300;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>");
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

void sub_29A25CB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A25CBA0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected ]", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A25CC04(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 93)
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
  sub_29A25CC9C(v6, a2);
  return 1;
}

void sub_29A25CC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

_DWORD *sub_29A25CC9C(uint64_t a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget((a2 + 129), (a2[45] - 8), &v7);
  v3 = sub_29A22DD10(a2 + 128);
  if (((*(*v3 + 72))(v3, &v7) & 1) == 0)
  {
    v5 = sub_29A22DD10(a2 + 128);
    (*(*v5 + 64))(v5, &v7, 9);
    sub_29A1E28B4((a2 + 48), (a2[45] - 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A25CD70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A25CD84(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A25CDF8(a1, a2);
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
    if (sub_29A22E2FC(a1, a2))
    {
      sub_29A25D7F0(a1, a2);
    }
  }

  return v4;
}

uint64_t sub_29A25CDF8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_29A25CE5C(a1, a2);
  v7[0] = v5;
  v7[1] = v6;
  v8 = a1 + 24;
  sub_29A25D138(v7, a2);
  return 1;
}

void sub_29A25CE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A25CE5C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A234BC8(a1, a2) || (sub_29A25CEC8(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25CEC8(void *a1, uint64_t a2)
{
  if ((sub_29A234D4C(a1, a2) & 1) == 0 && (sub_29A23C954(a1, a2) & 1) == 0)
  {
    result = sub_29A25CF24(a1, a2);
    if (!result)
    {
      return result;
    }

    sub_29A25D020(a1, a2);
  }

  return 1;
}

uint64_t sub_29A25CF24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 91)
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
  sub_29A25CFBC(v6, a2);
  return 1;
}

void sub_29A25CFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A25CFBC(uint64_t a1, uint64_t a2)
{
  memset(v2, 0, sizeof(v2));
  sub_29A235058(a2 + 352, v2);
  v3 = v2;
  sub_29A1E234C(&v3);
}

void sub_29A25D004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29A25D020(void *a1, uint64_t a2)
{
    ;
  }

  sub_29A24E0E0(a1, a2);

  return sub_29A25D078(a1);
}

uint64_t sub_29A25D078(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 93)
  {
    sub_29A25D0D4(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A25D0D4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected ]", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A25D138(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  if (*(a2 + 376))
  {
    v4 = *(a2 + 352);
    v5 = *(a2 + 360);
    v6 = *(a2 + 616);
    if (v4 == v5 && v6 != 0)
    {
      sub_29A008E78(v27, "Setting relationship targets to None (or empty list) is only allowed when setting explicit targets, not for list editing");
      v21 = *(a1 + 32);
      sub_29A2266C8(&v29, a1, (v21 + 48));
      sub_29A276708(a2, v21, &v29, v27);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(exception, v27, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    v8 = (a2 + 616);
    if (v4 != v5)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelationshipTargetPath(v4, v27);
        if (v28 == 1)
        {
          v17 = *(a1 + 32);
          sub_29A2266C8(&v29, a1, (v17 + 48));
          WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v27);
          sub_29A276708(a2, v17, &v29, WhyNot);
          if (v33 < 0)
          {
            operator delete(v32);
          }

          v19 = __cxa_allocate_exception(0x20uLL);
          v20 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v27);
          sub_29A22DB7C(v19, v20, a1);
          __cxa_throw(v19, &unk_2A2048840, sub_29A2265D4);
        }

        v4 = (v4 + 8);
      }

      while (v4 != v5);
      v6 = *v8;
    }

    if (v6 < 2)
    {
      v9 = *(a2 + 352);
      for (i = *(a2 + 360); v9 != i; v9 = (v9 + 8))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget((a2 + 1032), v9, &v29);
        v11 = sub_29A22DD10((a2 + 1024));
        if (((*(*v11 + 72))(v11, &v29) & 1) == 0)
        {
          v12 = sub_29A22DD10((a2 + 1024));
          (*(*v12 + 64))(v12, &v29, 9);
          sub_29A1E28B4(a2 + 384, v9);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29 + 1);
        sub_29A1DE3A4(&v29);
      }
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v13)
    {
      v13 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((sub_29A24E74C(v13 + 55, *(a2 + 616), (a2 + 352), a2, __p) & 1) == 0)
    {
      v23 = *(a1 + 32);
      sub_29A2266C8(&v29, a1, (v23 + 48));
      sub_29A276708(a2, v23, &v29, __p);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      v24 = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(v24, __p, a1);
      __cxa_throw(v24, &unk_2A2048840, sub_29A2265D4);
    }

    if (*(a2 + 384) != *(a2 + 392))
    {
      v15 = sub_29A22DD10((a2 + 1024));
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
      if (!v16)
      {
        v16 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
      }

      memset(v27, 0, sizeof(v27));
      (*(*v15 + 136))(&v34, v15, a2 + 1032, v16 + 48);
      if (sub_29A23DDC0(&v34) && (v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
    }

    if (*(*(a2 + 264) - 4) == 26)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v14);
    }

    if (*v8)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v14);
      *(a2 + 1016) = 0;
      v30 = 0;
      sub_29A18606C((a2 + 1040), &v29);
      sub_29A186B14(&v29);
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 2u);
    }
  }

  else
  {
    if (*(*(a2 + 264) - 4) == 26)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
    }

    v8 = (a2 + 616);
    if (*(a2 + 616))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
      *(a2 + 1016) = 0;
      v30 = 0;
      sub_29A18606C((a2 + 1040), &v29);
      sub_29A186B14(&v29);
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 2u);
    }
  }

  *v8 = 0;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A25D6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A25D7F0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A25D870(a1, a2);
  if ((sub_29A24108C(a1, a2) & 1) == 0)
  {
    sub_29A241028(a1);
  }

  return 1;
}

void sub_29A25D860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25D870(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A25D8E8(a1, a2);
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

void sub_29A25D8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25D8E8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A25D940(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A25D9C0(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v4;
}

uint64_t sub_29A25D940(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A243E7C(a1, a2) & 1) != 0 || (sub_29A23BAE4(a1, a2))
  {
    return 1;
  }

  if (sub_29A2521C8(a1, a2))
  {
    sub_29A252348(a1, a2);
    return 1;
  }

  return sub_29A252420(a1, a2);
}

__n128 sub_29A25D9C0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A25D940(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A25DA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A25DA2C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x368uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485310;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::star<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, PXR_INTERNAL_NS_pegtl::if_must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelationshipTargetOpen, PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelationshipTargetClose>>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelationshipAssignmentOptional, PXR_INTERNAL_NS_pegtl::star<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, PXR_INTERNAL_NS_pegtl::opt<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelationshipMetadata>>>");
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

void sub_29A25DAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A25DB4C(uint64_t a1, uint64_t a2)
{
  v3[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  *(a2 + 1016) = 0;
  v3[1] = 0;
  sub_29A18606C((a2 + 1040), v3);
  sub_29A186B14(v3);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 2u);
}

uint64_t sub_29A25DBD0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A23BBF8(a1, a2) || !sub_29A235C1C(a1))
  {
    return 0;
  }

  return sub_29A25DC34(a1, a2);
}

uint64_t sub_29A25DC34(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A25DC9C(a1, a2);
  if (v4)
  {
    if ((sub_29A25DDB0(a1, a2) & 1) == 0)
    {
      sub_29A25DE14(a1);
    }
  }

  else if ((sub_29A25DF34(a1, a2) & 1) == 0)
  {
    sub_29A25DFB8(a1);
  }

  return 1;
}

double sub_29A25DC9C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A25587C(a1, a2) & 1) == 0)
  {
    *&result = sub_29A25C32C(a1, a2).n128_u64[0];
    if ((v5 & 1) == 0)
    {

      *&result = sub_29A25DD00(a1, a2).n128_u64[0];
    }
  }

  return result;
}

__n128 sub_29A25DD00(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A253364(a1);
  if ((v4 & 1) == 0)
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
LABEL_7:
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    return result;
  }

  *(a2 + 1016) = 1;
  if (!sub_29A235C1C(a1) || (sub_29A25587C(a1, a2) & 1) == 0 && (sub_29A25C454(a1, a2) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_29A25DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25DDB0(void *a1, uint64_t a2)
{
  if (!sub_29A235C1C(a1))
  {
    return 0;
  }

  sub_29A253AD8(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return sub_29A25CDF8(a1, a2);
}

void sub_29A25DE14(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x110uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485320;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TokenSeparator, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NamespacedName, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelationshipAssignmentOptional>");
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

void sub_29A25DED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25DF34(void *a1, uint64_t a2)
{
  sub_29A253264(a1, a2);
  if (!v4 || !sub_29A243970(a1, a2) || !sub_29A254198(a1, a2) || !sub_29A234BC8(a1, a2))
  {
    return 0;
  }

  return sub_29A2577E4(a1, a2);
}

void sub_29A25DFB8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x1F0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485330;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::AttributeDeclaration, PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Dot, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordConnect, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ConnectValue>");
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

void sub_29A25E078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25E13C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A2431F0() & 1) != 0 || (result = sub_29A25E1B4(a1, a2), result))
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22DED0(a1) & 1) != 0);

    return sub_29A22DE78(a1);
  }

  return result;
}

uint64_t sub_29A25E1B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A25E234(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25EBDC(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A25E228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25E234(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A2565B4(a1, a2) || !sub_29A235C1C(a1) || !sub_29A22E5EC(a1, a2) || !sub_29A25E2B8(a1))
  {
    return 0;
  }

  return sub_29A25E34C(a1, a2);
}

uint64_t sub_29A25E2B8(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 61)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

uint64_t sub_29A25E34C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A25E418(a1, a2) & 1) == 0)
  {
    sub_29A25E3B4(a1);
  }

    ;
  }

  if ((sub_29A25E7F8(a1, a2) & 1) == 0)
  {
    sub_29A25EB78(a1);
  }

  return 1;
}

void sub_29A25E3B4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected {", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A25E418(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 123)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Cu);
  return 1;
}

void sub_29A25E498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25E4A4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
    ;
  }

  v4 = sub_29A25E538(a1, a2);
  if (v4)
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

void sub_29A25E524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25E538(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A25E5B8(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25E880(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A25E5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25E5B8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  result = sub_29A22E5EC(a1, a2);
  if (result)
  {
      ;
    }

    sub_29A243A74(a1, a2);

    return sub_29A25E624(a1, a2);
  }

  return result;
}

uint64_t sub_29A25E624(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A25E6FC(a1, a2) & 1) == 0)
  {
    sub_29A25E698(a1);
  }

  if ((sub_29A2529D0(a1, a2) & 1) == 0)
  {
    sub_29A25296C(a1);
  }

  if ((sub_29A25E7F8(a1, a2) & 1) == 0)
  {
    sub_29A25E794(a1);
  }

  return 1;
}

void sub_29A25E698(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected {", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A25E6FC(uint64_t a1, uint64_t a2)
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
  sub_29A2528A0(v6, a2);
  return 1;
}

void sub_29A25E788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A25E794(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A25E7F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 125)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  return 1;
}

void sub_29A25E874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A25E880(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a2[136] - 24) != *(a2[136] - 16))
  {
    sub_29A22DD10(a2 + 128);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
    {
      sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v11[1] = &off_2A2049148;
    sub_29A242610();
  }

  if (*(a2[139] - 24) != *(a2[139] - 16))
  {
    sub_29A22DD10(a2 + 128);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
    {
      sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v11[1] = &off_2A2049148;
    sub_29A242610();
  }

  v11[0] = (a2[136] - 24);
  v5 = v11[0];
  sub_29A124AB0(v11);
  a2[136] = v5;
  v11[0] = (a2[139] - 24);
  v6 = v11[0];
  sub_29A124AB0(v11);
  a2[139] = v6;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection((a2 + 129), v11);
  *v9 = *v11;
  v10 = v12;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  if (v14 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((a2 + 129), &v7);
  sub_29A008E78(v11, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v7, v9, v11, &v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A25EB78(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A25EBDC(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x29EDCA608];
  sub_29A1E21F4(&v3, (a2 + 1032));
  sub_29A1E2240(v4, (a2 + 1036));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((a2 + 1032), v5);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A25EF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A186B14(&a12);
  a12 = &a15;
  sub_29A124AB0(&a12);
  sub_29A1DCEA8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A25F060(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 125)
  {
    sub_29A25F0BC(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A25F0BC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A25F120(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a2[136] - 24) != *(a2[136] - 16))
  {
    sub_29A22DD10(a2 + 128);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
    {
      sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v8 = &off_2A2049148;
    sub_29A242610();
  }

  if (*(a2[139] - 24) != *(a2[139] - 16))
  {
    sub_29A22DD10(a2 + 128);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
    {
      sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v8 = &off_2A2049148;
    sub_29A242610();
  }

  v7 = (a2[136] - 24);
  v5 = v7;
  sub_29A124AB0(&v7);
  a2[136] = v5;
  v7 = (a2[139] - 24);
  v6 = v7;
  sub_29A124AB0(&v7);
  a2[139] = v6;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((a2 + 129), &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A25F350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A25F380(uint64_t a1, uint64_t a2)
{
  v2 = sub_29A22DD10((a2 + 1024));
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  sub_29A242610();
}

void sub_29A25F484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A25F4A0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485340;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::LayerSpec");
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

void sub_29A25F56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A25F5CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485350;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::internal::eof");
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

void sub_29A25F694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25F6F4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A22D2A0(a1, a2);
  if (v4)
  {
      ;
    }

    sub_29A22E278(a1, a2);
  }

  return v4;
}

void sub_29A25F74C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485360;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::LayerMetadataOnly");
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

void sub_29A25F818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A25F878(uint64_t a1)
{
  if (*(a1 + 1511) < 0)
  {
    operator delete(*(a1 + 1488));
  }

  sub_29A224BA0(a1 + 1432);
  sub_29A224BA0(a1 + 1376);
  sub_29A224BA0(a1 + 1320);
  sub_29A224BA0(a1 + 1264);
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((a1 + 1240));
  v8 = (a1 + 1216);
  sub_29A1B8EE4(&v8);
  v2 = *(a1 + 1192);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v8 = (a1 + 1152);
  sub_29A177EDC(&v8);
  v8 = (a1 + 1128);
  sub_29A012C90(&v8);
  v8 = (a1 + 1104);
  sub_29A25FB48(&v8);
  v8 = (a1 + 1080);
  sub_29A25FB48(&v8);
  sub_29A186B14(a1 + 1056);
  sub_29A186B14(a1 + 1040);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 1036));
  sub_29A1DE3A4((a1 + 1032));
  sub_29A25FBBC((a1 + 1024));
  v3 = *(a1 + 992);
  if (v3)
  {
    operator delete(v3);
  }

  v8 = (a1 + 968);
  sub_29A012C90(&v8);
  v8 = (a1 + 944);
  sub_29A25FBEC(&v8);
  sub_29A186B14(a1 + 928);
  sub_29A25FC74(a1 + 624);
  v4 = *(a1 + 608);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 564));
  sub_29A1DE3A4((a1 + 560));
  v8 = (a1 + 536);
  sub_29A23F9D4(&v8);
  v8 = (a1 + 512);
  sub_29A24A5D0(&v8);
  v8 = (a1 + 488);
  sub_29A2463D0(&v8);
  v8 = (a1 + 464);
  sub_29A1E234C(&v8);
  v8 = (a1 + 440);
  sub_29A1E234C(&v8);
  v8 = (a1 + 408);
  sub_29A1E234C(&v8);
  v8 = (a1 + 384);
  sub_29A1E234C(&v8);
  if (*(a1 + 376) == 1)
  {
    v8 = (a1 + 352);
    sub_29A1E234C(&v8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 340));
  sub_29A1DE3A4((a1 + 336));
  sub_29A1F9B0C(a1 + 304, *(a1 + 312));
  v8 = (a1 + 280);
  sub_29A124AB0(&v8);
  v5 = *(a1 + 256);
  if (v5)
  {
    *(a1 + 264) = v5;
    operator delete(v5);
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    *(a1 + 144) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 112);
  sub_29A012C90(&v8);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A25FB48(void ***a1)
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
        sub_29A124AB0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_29A25FBEC(void ***a1)
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
        sub_29A184A10(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A25FC74(uint64_t a1)
{
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  sub_29A25FD10(a1 + 240);
  sub_29A200914(a1 + 176);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 64);
  sub_29A25FD90(&v5);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_29A25FD10(uint64_t a1)
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

void sub_29A25FD90(void ***a1)
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
        sub_29A224BA0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A25FE14(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A25FE98(a1, a2) & 1) == 0)
  {
    sub_29A275A10(a1);
  }

  if (*(a1 + 8) != *(a1 + 40))
  {
    sub_29A275B3C(a1);
  }

  return 1;
}

void sub_29A25FE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25FE98(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A25FF20(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A25F380(v8, a2);
  }

  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return v4;
}

void sub_29A25FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A25FF20(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A25FF88(a1, a2);
  if (v4)
  {
      ;
    }

    sub_29A260AB8(a1, a2);
      ;
    }
  }

  return v4;
}

uint64_t sub_29A25FF88(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A260010(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A22D6B4(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A260000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A260010(int64x2_t *a1)
{
  v2 = sub_29A260068(a1);
  if (v2 && !sub_29A260258(a1))
  {
    sub_29A260360(a1);
  }

  return v2;
}

uint64_t sub_29A260068(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 35)
  {
    sub_29A2600B8(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

void sub_29A2600B8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4850F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::one<'#'>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26017C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::runtime_error *sub_29A2601DC(std::runtime_error *a1, char *a2, uint64_t a3)
{
  sub_29A2266C8(&v6, a3 + 8, (a3 + 48));
  sub_29A226630(a1, a2, &v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A26023C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A260258(int64x2_t *a1)
{
  v3 = 1;
  if ((sub_29A2602EC(a1) & 1) == 0 && v2)
  {
    do
    {
      v4 = a1->i64[1];
      v5 = a1[2].i64[1];
      v3 = v4 != v5;
      if (v4 == v5)
      {
        break;
      }

      if (*v4 == 10)
      {
        ++a1[1].i64[1];
        v6 = 1;
      }

      else
      {
        v6 = a1[2].i64[0] + 1;
      }

      a1[2].i64[0] = v6;
      v7 = a1[1].i64[0] + 1;
      a1->i64[1] = (v4 + 1);
      a1[1].i64[0] = v7;
      if (sub_29A2602EC(a1))
      {
        break;
      }
    }

    while (v8);
  }

  return v3;
}

uint64_t sub_29A2602EC(int64x2_t *a1)
{
  v1 = a1[2].i64[1];
  v2 = a1->i64[1];
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return 0;
  }

  v4 = *v2;
  if (v4 != 10)
  {
    v8 = v3 >= 2 && v4 == 13;
    if (v8 && v2[1] == 10)
    {
      v5 = 2;
      goto LABEL_4;
    }

    return 0;
  }

  v5 = 1;
LABEL_4:
  v6 = 1;
  v7 = vdupq_n_s64(1uLL);
  v7.i64[0] = v5;
  a1[1] = vaddq_s64(a1[1], v7);
  a1[2].i64[0] = 1;
  a1->i64[1] = &v2[v5];
  return v6;
}

void sub_29A260360(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485100;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Eolf>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A260434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A260494(void *a1)
{
  if (sub_29A2604F4(a1) & 1) != 0 || (sub_29A22EC88(a1))
  {
    return 1;
  }

  return sub_29A260540(a1);
}

uint64_t sub_29A2604F4(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 32 && v2 != 9)
  {
    return 0;
  }

  v4 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v4;
  ++a1[4];
  return 1;
}

uint64_t sub_29A260540(uint64_t a1)
{
  if (sub_29A2605A4(a1) & 1) != 0 || (sub_29A2608AC(a1))
  {
    return 1;
  }

  return sub_29A26098C(a1);
}

uint64_t sub_29A2605A4(uint64_t a1)
{
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 40) || *v5 != 35)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v5 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  do
  {
    sub_29A260644(a1);
  }

  while ((v3 & 1) != 0);
  return 1;
}

void sub_29A260638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A260644(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v2 = sub_29A2602EC(a1);
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  if ((v2 & 1) != 0 || !v3 || !sub_29A2606C0(a1))
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

BOOL sub_29A2606C0(void *a1)
{
  v2 = sub_29A260700(a1);
  v3 = v2 & 0xFF00000000;
  if ((v2 & 0xFF00000000) != 0)
  {
    sub_29A225BF4(a1, BYTE4(v2));
  }

  return v3 != 0;
}

unint64_t sub_29A260700(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 40))
  {
    return 0;
  }

  v2 = *v1;
  v3 = v2;
  if (v2 < 0)
  {
    v6 = sub_29A260758(a1, v2);
    v3 = v6;
    v4 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 0x100000000;
  }

  return v4 | v3;
}

uint64_t sub_29A260758(uint64_t a1, char a2)
{
  if ((a2 & 0xE0) == 0xC0)
  {
    v2 = *(a1 + 8);
    if ((*(a1 + 40) - v2) >= 2)
    {
      v3 = *(v2 + 1);
      if ((v3 & 0xC0) == 0x80)
      {
        v4 = (a2 & 0x1F) << 6;
        if (v4 >= 0x80)
        {
          v5 = v3 & 0x3F | v4;
          v6 = 0x200000000;
          return v6 | v5;
        }
      }
    }

LABEL_21:
    v5 = 0;
    v6 = 0;
    return v6 | v5;
  }

  if ((a2 & 0xF0) == 0xE0)
  {
    v7 = *(a1 + 8);
    if ((*(a1 + 40) - v7) < 3)
    {
      goto LABEL_21;
    }

    v8 = *(v7 + 1);
    if ((v8 & 0xC0) != 0x80)
    {
      goto LABEL_21;
    }

    v9 = *(v7 + 2);
    if ((v9 & 0xC0) != 0x80)
    {
      goto LABEL_21;
    }

    v10 = v8 & 0x3F | ((a2 & 0xF) << 6);
    if (v10 < 0x20)
    {
      goto LABEL_21;
    }

    v5 = v9 & 0x3F | (v10 << 6);
    v6 = 0x300000000;
    if ((a2 & 0xF) << 6 <= 0x37Fu && v10 >= 0x360)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((a2 & 0xF8) != 0xF0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 8);
    if (*(a1 + 40) - v11 < 4uLL)
    {
      goto LABEL_21;
    }

    v6 = 0;
    v5 = 0;
    v12 = v11[1];
    if ((v12 & 0xC0) == 0x80)
    {
      v13 = v11[2];
      if ((v13 & 0xC0) == 0x80)
      {
        v14 = v11[3];
        if ((v14 & 0xC0) == 0x80)
        {
          v15 = v12 & 0x3F | ((a2 & 7) << 6);
          if ((v15 - 16) <= 0xFF)
          {
            v5 = v14 & 0x3F | ((v13 & 0x3F) << 6) | (v15 << 12);
            v6 = 0x400000000;
            return v6 | v5;
          }

          goto LABEL_21;
        }
      }
    }
  }

  return v6 | v5;
}

uint64_t sub_29A2608AC(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v2 = sub_29A26092C(a1);
  if (v2)
  {
    do
    {
      sub_29A260644(a1);
    }

    while ((v3 & 1) != 0);
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v2;
}

void sub_29A26091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26092C(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 12079)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

uint64_t sub_29A26098C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (sub_29A2609F8(a1))
  {
    while ((sub_29A260A58(a1) & 1) == 0)
    {
      if (!sub_29A2606C0(a1))
      {
        goto LABEL_4;
      }
    }

    return 1;
  }

  else
  {
LABEL_4:
    result = 0;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A2609F8(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 10799)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

uint64_t sub_29A260A58(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 12074)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

uint64_t sub_29A260AB8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A260B48(a1, a2);
  if (v4)
  {
    sub_29A260BDC(a1, a2);
      ;
    }
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A260B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A260B48(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 40) || *v5 != 40)
  {
    return 0;
  }

  v3 = *(a1 + 16) + 1;
  *(a1 + 8) = v5 + 1;
  *(a1 + 16) = v3;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 4u);
  *(a2 + 616) = 0;
  return 1;
}

void sub_29A260BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A260BDC(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A260C3C(a1, a2);
  if ((sub_29A269494(a1, a2) & 1) == 0)
  {
    sub_29A269430(a1);
  }

  return 1;
}

uint64_t sub_29A260C3C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A260CC0(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A260CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A260CC0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A260D18(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26930C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A269384(a1);
  }

  return v4;
}

uint64_t sub_29A260D18(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A260DD0(a1, a2))
  {
    return 1;
  }

  if (sub_29A2680AC(a1))
  {
    sub_29A268188(a1, a2);
    return 1;
  }

  return sub_29A268834(a1, a2);
}

uint64_t sub_29A260D88(void *a1, uint64_t a2)
{
  v4 = sub_29A2680AC(a1);
  if (v4)
  {
    sub_29A268188(a1, a2);
  }

  return v4;
}

uint64_t sub_29A260DD0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A260E44(a1, a2) & 1) != 0 || (sub_29A261BAC(a1, a2) & 1) != 0 || (sub_29A26787C(a1, a2))
  {
    return 1;
  }

  return sub_29A267A28(a1, a2);
}

uint64_t sub_29A260E44(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A260ECC(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A22F3A0(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A260EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A260ECC(void *a1)
{
  if (sub_29A260F58(a1))
  {
    sub_29A260FC4(a1);
    return 1;
  }

  if (sub_29A261280(a1))
  {
    return 1;
  }

  if (sub_29A26163C(a1))
  {
    sub_29A2616A8(a1);
    return 1;
  }

  return sub_29A261904(a1);
}

uint64_t sub_29A260F58(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 10023 || *(v1 + 2) != 39)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A260FC4(void *a1)
{
  while ((sub_29A260F58(a1) & 1) == 0)
  {
    if (!sub_29A261014(a1))
    {
      sub_29A26112C(a1);
    }
  }

  return 1;
}

BOOL sub_29A261014(void *a1)
{
  if (sub_29A26106C(a1) & 1) != 0 || (sub_29A2610CC(a1))
  {
    return 1;
  }

  return sub_29A2606C0(a1);
}

uint64_t sub_29A26106C(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 23644)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

uint64_t sub_29A2610CC(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 10076)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

void sub_29A26112C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485110;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::three<'\\''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', '\\''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A261220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A261280(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 39)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v3;
  ++a1[4];
  if ((sub_29A2612FC(a1) & 1) == 0)
  {
    sub_29A2614E8(a1);
  }

  return 1;
}

uint64_t sub_29A2612FC(void *a1)
{
  while (1)
  {
    v2 = a1[1];
    if (v2 != a1[5] && *v2 == 39)
    {
      break;
    }

    if ((sub_29A261374(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v4;
  ++a1[4];
  return 1;
}

uint64_t sub_29A261374(void *a1)
{
  if (sub_29A26106C(a1) & 1) != 0 || (sub_29A2610CC(a1))
  {
    return 1;
  }

  return sub_29A2613D4(a1);
}

uint64_t sub_29A2613D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  if (!sub_29A2606C0(a1))
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 8);
  v7 = v2;
  *v8 = v2;
  *&v8[8] = v13;
  *&v8[24] = v14;
  v9 = v3;
  if (*(a1 + 71) < 0)
  {
    sub_29A008D14(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v11 = *(a1 + 64);
  }

  v12 = 0;
  v15 = *v8;
  v16 = *&v8[16];
  v4 = sub_29A22EC88(&v7);
  if (*v8 == v9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *&v8[16] = v16;
  *v8 = v15;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
LABEL_10:
    result = 0;
    *(a1 + 8) = v2;
    *(a1 + 16) = v13;
    *(a1 + 32) = v14;
    return result;
  }

  return 1;
}

void sub_29A2614D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20)
{
  *(v20 + 8) = v21;
  *(v20 + 16) = a19;
  *(v20 + 32) = a20;
  _Unwind_Resume(a1);
}

void sub_29A2614E8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485120;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::one<'\\''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', '\\''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2615DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26163C(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 8738 || *(v1 + 2) != 34)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A2616A8(void *a1)
{
  while ((sub_29A26163C(a1) & 1) == 0)
  {
    if (!sub_29A2616F8(a1))
    {
      sub_29A2617B0(a1);
    }
  }

  return 1;
}

BOOL sub_29A2616F8(void *a1)
{
  if (sub_29A26106C(a1) & 1) != 0 || (sub_29A261750(a1))
  {
    return 1;
  }

  return sub_29A2606C0(a1);
}

uint64_t sub_29A261750(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 8796)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

void sub_29A2617B0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485130;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::three<''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', ''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2618A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A261904(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 34)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v3;
  ++a1[4];
  if ((sub_29A261980(a1) & 1) == 0)
  {
    sub_29A261A58(a1);
  }

  return 1;
}

uint64_t sub_29A261980(void *a1)
{
  while (1)
  {
    v2 = a1[1];
    if (v2 != a1[5] && *v2 == 34)
    {
      break;
    }

    if ((sub_29A2619F8(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v4;
  ++a1[4];
  return 1;
}

uint64_t sub_29A2619F8(void *a1)
{
  if (sub_29A26106C(a1) & 1) != 0 || (sub_29A261750(a1))
  {
    return 1;
  }

  return sub_29A2613D4(a1);
}

void sub_29A261A58(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485140;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::one<''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', ''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A261B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A261BAC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A261C34(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A23B7C4(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A261C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A261C34(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A261C98(a1, a2) || !sub_29A26208C(a1, a2))
  {
    return 0;
  }

  return sub_29A2621B8(a1, a2);
}

uint64_t sub_29A261C98(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A261D20(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A2340B0(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A261D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A261D20(uint64_t a1)
{
  sub_29A261D6C(a1);
  v3 = v2;
  if (v2)
  {
    do
    {
      sub_29A261FB4(a1);
    }

    while ((v4 & 1) != 0);
  }

  return v3;
}

double sub_29A261D6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  if (!sub_29A261E98(a1))
  {
    goto LABEL_10;
  }

    ;
  }

  v3 = *(a1 + 8);
  v7[0] = v2;
  v7[1] = v2;
  v8 = v14;
  v9 = v15;
  v10 = v3;
  if (*(a1 + 71) < 0)
  {
    sub_29A008D14(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v12 = *(a1 + 64);
  }

  v13 = 0;
  *&result = sub_29A230488(v7).n128_u64[0];
  v6 = v4;
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if (v4)
    {
      return result;
    }

LABEL_10:
    *(a1 + 8) = v2;
    result = *&v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    return result;
  }

  operator delete(__p[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_29A261E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 8) = v21;
  *(v20 + 16) = *(v22 - 64);
  *(v20 + 32) = *(v22 - 48);
  _Unwind_Resume(exception_object);
}

uint64_t sub_29A261E98(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 95)
  {
    return sub_29A261EDC(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

uint64_t sub_29A261EDC(void *a1)
{
  if (a1[1] == a1[5])
  {
    return 0;
  }

  v2 = sub_29A260700(a1);
  if ((v2 & 0xFF00000000) == 0)
  {
    return 0;
  }

  v3 = BYTE4(v2);
  result = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v2);
  if (result)
  {
    sub_29A225BF4(a1, v3);
    return 1;
  }

  return result;
}

uint64_t sub_29A261F48(void *a1)
{
  if (a1[1] == a1[5])
  {
    return 0;
  }

  v2 = sub_29A260700(a1);
  if ((v2 & 0xFF00000000) == 0)
  {
    return 0;
  }

  v3 = BYTE4(v2);
  result = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(v2);
  if (result)
  {
    sub_29A225BF4(a1, v3);
    return 1;
  }

  return result;
}

__n128 sub_29A261FB4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (!sub_29A26202C(a1) || (result.n128_f64[0] = sub_29A261D6C(a1), (v3 & 1) == 0))
  {
    result = v4;
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return result;
}

void sub_29A26201C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26202C(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 14906)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

uint64_t sub_29A26208C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A262118(a1);
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 3)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Au);
    }
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A262108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262118(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 61)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A2621B8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26221C(a1, a2) & 1) != 0 || (sub_29A2622F8(a1, a2))
  {
    return 1;
  }

  return sub_29A2630A8(a1, a2);
}

uint64_t sub_29A26221C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A2622A4(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A234E80(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A262294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2622A4(uint64_t a1)
{
  if (sub_29A231ED4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A2622F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26238C(a1, a2);
  if (v4)
  {
    sub_29A262420(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A2368A8(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26237C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26238C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4 == *(a1 + 40) || *v4 != 123)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1;
  sub_29A2353C0(v6, a2);
  return 1;
}

void sub_29A262414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262420(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A262480(a1, a2);
  if ((sub_29A263014(a1, a2) & 1) == 0)
  {
    sub_29A262FB0(a1);
  }

  return 1;
}

uint64_t sub_29A262480(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A262504(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A2624F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262504(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A26255C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A262E5C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A269384(a1);
  }

  return v4;
}

uint64_t sub_29A26255C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A2625E4(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A236504(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A2625D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2625E4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A262644(a1, a2))
  {
    sub_29A262720(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A262AA4(a1, a2);
  }
}

uint64_t sub_29A262644(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A2626CC(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A235AB0(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2626BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2626CC(uint64_t a1)
{
  if (sub_29A2314C8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A262720(void *a1, uint64_t a2)
{
  if ((sub_29A262838(a1) & 1) == 0)
  {
    sub_29A2627D4(a1);
  }

  if ((sub_29A262908(a1, a2) & 1) == 0)
  {
    sub_29A2628A4(a1);
  }

  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A2622F8(a1, a2) & 1) == 0)
  {
    sub_29A262A40(a1);
  }

  return 1;
}

void sub_29A2627C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2627D4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected spaces", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A262838(void *a1)
{
    ;
  }

  v2 = sub_29A2604F4(a1);
  if (v2)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
  }

  return v2;
}

void sub_29A2628A4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected string or identifier", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A262908(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A262990(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A235DB8(v8, a2);
  }

  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return v4;
}

void sub_29A262980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262990(void *a1, uint64_t a2)
{
  if ((sub_29A260E44(a1, a2) & 1) == 0)
  {
    result = sub_29A261E98(a1);
    if (!result)
    {
      return result;
    }

      ;
    }
  }

  return 1;
}

void sub_29A2629DC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected =", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A262A40(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected dictionary", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A262AA4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A262B28(a1, a2) || !sub_29A262838(a1) || !sub_29A262908(a1, a2) || !sub_29A26208C(a1, a2))
  {
    return 0;
  }

  return sub_29A2630A8(a1, a2);
}

uint64_t sub_29A262B28(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A261C98(a1, a2);
  if (v4)
  {
    sub_29A262BBC(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A236384(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A262BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A262BBC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  if ((sub_29A262C40(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A262C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262C40(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v4 = sub_29A262CE4(a1);
  if (v4)
  {
    v5 = *(*(a2 + 264) - 4);
    if (v5 == 12)
    {
      v6 = 208;
      goto LABEL_7;
    }

    if (v5 == 2)
    {
      v6 = 184;
LABEL_7:
      std::string::append((a2 + v6), "[]");
    }
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v4;
}

void sub_29A262CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262CE4(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 91)
  {
    return 0;
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  sub_29A262D44(a1);
  return 1;
}

uint64_t sub_29A262D44(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);

  return sub_29A262D9C(a1);
}

uint64_t sub_29A262D9C(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 93)
  {
    sub_29A262DF8(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

void sub_29A262DF8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected ]", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

__n128 sub_29A262E5C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A262ED4(a1) || (sub_29A26255C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A262EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A262ED4(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A260540(a1) & 1) != 0);
  v2 = sub_29A262F44(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A262F44(void *a1)
{
  if (sub_29A22EC88(a1))
  {
    return 1;
  }

  v2 = a1[1];
  if (v2 != a1[5] && *v2 == 59)
  {
    v3 = a1[2] + 1;
    a1[1] = v2 + 1;
    a1[2] = v3;
    ++a1[4];
    return 1;
  }

  return 0;
}

void sub_29A262FB0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A263014(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4 == *(a1 + 40) || *v4 != 125)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1;
  sub_29A236848(v6, a2);
  return 1;
}

void sub_29A26309C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2630A8(uint64_t a1, char *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A263130(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A23B6A4(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A263120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A263130(uint64_t a1, char *a2)
{
  if (sub_29A2631B4(a1, a2) & 1) != 0 || (sub_29A264224(a1, a2, v4) & 1) != 0 || (sub_29A2649B4(a1, a2) & 1) != 0 || (sub_29A264B04(a1, a2))
  {
    return 1;
  }

  return sub_29A2651DC(a1, a2);
}

uint64_t sub_29A2631B4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26323C(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A237FD0(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

double sub_29A26323C(uint64_t a1, uint64_t a2)
{
  *&result = sub_29A2632B0(a1, a2).n128_u64[0];
  if ((v5 & 1) == 0 && (sub_29A263AF4(a1, a2) & 1) == 0 && (sub_29A263B7C(a1, a2) & 1) == 0)
  {

    *&result = sub_29A263C04(a1, a2).n128_u64[0];
  }

  return result;
}

__n128 sub_29A2632B0(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A26333C(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A263A34(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1;
    sub_29A237304(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

void sub_29A26332C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26333C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  if (v6.n128_u64[0] != *(a1 + 40) && *v6.n128_u64[0] == 45)
  {
    v3 = *(a1 + 16) + 1;
    *(a1 + 8) = v6.n128_u64[0] + 1;
    *(a1 + 16) = v3;
    ++*(a1 + 32);
  }

  result.n128_f64[0] = sub_29A2633C0(a1, a2);
  if ((v5 & 1) == 0)
  {
    result = v6;
    *v2 = v6;
    v2[1] = v7;
  }

  return result;
}

void sub_29A2633B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

double sub_29A2633C0(uint64_t a1, uint64_t a2)
{
  *&result = sub_29A263424(a1, a2).n128_u64[0];
  if ((v5 & 1) == 0)
  {
    *&result = sub_29A2638A4(a1, a2).n128_u64[0];
    if ((v6 & 1) == 0)
    {

      *&result = sub_29A263974(a1).n128_u64[0];
    }
  }

  return result;
}

__n128 sub_29A263424(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2634A8(a1) || (sub_29A263530(a1, a2), (sub_29A26367C(a1) & 1) == 0))
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A263498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2634A8(void *a1)
{
  v1 = a1[1];
  v2 = a1[5];
  if (v1 == v2 || *v1 - 48 > 9)
  {
    return 0;
  }

  v3 = v1 + 1;
  v4 = a1[2];
  a1[1] = v3;
  a1[2] = v4 + 1;
  v5 = a1[4];
  a1[4] = v5 + 1;
  if (v3 != v2)
  {
    v6 = v5 + 2;
    v7 = v4 + 2;
    do
    {
      if (*v3 - 48 > 9)
      {
        break;
      }

      a1[1] = ++v3;
      a1[2] = v7;
      a1[4] = v6++;
      ++v7;
    }

    while (v3 != v2);
  }

  return 1;
}

__n128 sub_29A263530(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if (sub_29A2635D8(a1, a2))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      v6 = *(a1 + 32) + 1;
      v7 = *(a1 + 16) + 1;
      do
      {
        if (*v5 - 48 > 9)
        {
          break;
        }

        *(a1 + 8) = ++v5;
        *(a1 + 16) = v7;
        *(a1 + 32) = v6++;
        ++v7;
      }

      while (v5 != v4);
    }
  }

  else
  {
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

void sub_29A2635C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2635D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 40) || *v4 != 46)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  if (*(*(a2 + 264) - 4) == 1)
  {
    std::string::append((a2 + 160), ".");
  }

  return 1;
}

void sub_29A263670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26367C(void *a1)
{
  v1 = a1[1];
  if (v1 != a1[5] && (*v1 & 0xDF) == 0x45)
  {
    v2 = a1[2] + 1;
    a1[1] = v1 + 1;
    a1[2] = v2;
    ++a1[4];
    sub_29A2636D8(a1);
  }

  return 1;
}

uint64_t sub_29A2636D8(void *a1)
{
  sub_29A263720(a1);
  if ((sub_29A2634A8(a1) & 1) == 0)
  {
    sub_29A263770(a1);
  }

  return 1;
}

uint64_t sub_29A263720(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 45 && v2 != 43)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v3;
  ++a1[4];
  return 1;
}