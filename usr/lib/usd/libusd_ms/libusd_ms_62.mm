void sub_29A376140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A376164(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, int a3)
{
  v21[2] = *MEMORY[0x29EDCA608];
  v16 = a2;
  v17 = a1;
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A3759B4(a1, (a1 + 2), (a2 - 16), a3);
        return 1;
      case 4:
        v20 = (a1 + 2);
        v21[0] = a1;
        v13 = (a2 - 16);
        v18 = (a2 - 16);
        v19 = (a1 + 4);
        sub_29A3759B4(a1, (a1 + 2), (a1 + 4), a3);
        if (!sub_29A373D74(a3, v13, (a1 + 4)))
        {
          return 1;
        }

        sub_29A375930(&v19, &v18);
        if (!sub_29A373D74(a3, v19, (a1 + 2)))
        {
          return 1;
        }

        sub_29A375930(&v20, &v19);
        if (!sub_29A373D74(a3, v20, a1))
        {
          return 1;
        }

        v7 = v21;
        v8 = &v20;
        goto LABEL_6;
      case 5:
        sub_29A375A7C(a1, (a1 + 2), (a1 + 4), (a1 + 6), a2 - 2, a3);
        return 1;
    }

LABEL_12:
    v9 = (a1 + 4);
    sub_29A3759B4(a1, (a1 + 2), (a1 + 4), a3);
    v10 = (a1 + 6);
    if (v10 != a2)
    {
      v11 = 0;
      while (1)
      {
        if (sub_29A373D74(a3, v10, v9))
        {
          sub_29A186A3C(v21, v10);
          do
          {
            v12 = v9;
            sub_29A18606C(v9 + 2, v9);
            if (v9 == v17)
            {
              break;
            }

            v9 = (v9 - 16);
          }

          while (sub_29A373D74(a3, v21, (v12 - 16)));
          sub_29A18606C(v12, v21);
          if (++v11 == 8)
          {
            v14 = (v10 + 16) == v16;
            sub_29A186B14(v21);
            return v14;
          }

          sub_29A186B14(v21);
        }

        v9 = v10;
        v10 = (v10 + 16);
        if (v10 == v16)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v16 = (a2 - 16);
  if (sub_29A373D74(a3, (a2 - 16), a1))
  {
    v7 = &v17;
    v8 = &v16;
LABEL_6:
    sub_29A375930(v7, v8);
  }

  return 1;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29A3763E8(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *this, pxrInternal__aapl__pxrReserved__::VtValue *a3, int a4)
{
  *v15 = a1;
  if (a1 != this)
  {
    v7 = a1;
    v8 = (this - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_29A3764EC(v7, a4, v8, v11);
        v11 = (v11 - 16);
        --v10;
      }

      while (v10);
    }

    v14 = this;
    if (this != a3)
    {
      v12 = this;
      do
      {
        if (sub_29A373D74(a4, v12, *v15))
        {
          sub_29A375930(&v14, v15);
          sub_29A3764EC(*v15, a4, v8, *v15);
        }

        v12 = (v14 + 16);
        v14 = v12;
      }

      while (v12 != a3);
      v7 = *v15;
    }

    sub_29A376678(v7, this, a4);
    return v14;
  }

  return a3;
}

uint64_t sub_29A3764EC(uint64_t result, int a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v10 = (a4 - result) >> 3;
      v11 = v10 + 1;
      v12 = result + 16 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && sub_29A373D74(a2, (result + 16 * (v10 + 1)), (v12 + 16)))
      {
        v12 += 16;
        v11 = v13;
      }

      result = sub_29A373D74(a2, v12, v5);
      if ((result & 1) == 0)
      {
        sub_29A186A3C(v16, v5);
        do
        {
          v14 = v12;
          sub_29A18606C(v5, v12);
          if (v7 < v11)
          {
            break;
          }

          v15 = (2 * v11) | 1;
          v12 = v6 + 16 * v15;
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v15;
          }

          else if (sub_29A373D74(a2, (v6 + 16 * v15), (v12 + 16)))
          {
            v12 += 16;
          }

          else
          {
            v11 = v15;
          }

          v5 = v14;
        }

        while (!sub_29A373D74(a2, v12, v16));
        sub_29A18606C(v14, v16);
        return sub_29A186B14(v16);
      }
    }
  }

  return result;
}

void sub_29A376664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A376678(uint64_t result, uint64_t a2, int a3)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v3 = (a2 - result) >> 4;
  if (v3 >= 2)
  {
    v5 = result;
    v6 = (a2 - 16);
    do
    {
      sub_29A186A3C(v10, v5);
      v7 = sub_29A376790(v5, a3, v3);
      v8 = v7;
      if (v6 == v7)
      {
        sub_29A18606C(v7, v10);
      }

      else
      {
        sub_29A18606C(v7, v6);
        sub_29A18606C(v6, v10);
        sub_29A376840(v5, (v8 + 2), a3, ((v8 + 2) - v5) >> 4);
      }

      result = sub_29A186B14(v10);
      v6 -= 2;
    }

    while (v3-- > 2);
  }

  return result;
}

void sub_29A37677C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A376790(void *a1, int a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 4;
      if (sub_29A373D74(a2, (v8 + 2), (v8 + 4)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    sub_29A18606C(a1, v9);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t sub_29A376840(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    result = sub_29A373D74(a3, v8, (a2 - 16));
    if (result)
    {
      sub_29A186A3C(v11, v9);
      do
      {
        v10 = v8;
        sub_29A18606C(v9, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 16 * v7);
        v9 = v10;
      }

      while (sub_29A373D74(a3, v8, v11));
      sub_29A18606C(v10, v11);
      return sub_29A186B14(v11);
    }
  }

  return result;
}

void sub_29A376928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A37693C(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A376AE0(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A376AA8();
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
    *(*(a1 + 16) - 18) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A376A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B22C(va);
  _Unwind_Resume(a1);
}

void *sub_29A376AA8()
{
  if ((atomic_load_explicit(&qword_2A14F6B50, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C214();
  }

  return &unk_2A14F6B38;
}

void *sub_29A376AE0(void *a1, unint64_t a2)
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
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 24;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A376B6C(uint64_t *a1, pxrInternal__aapl__pxrReserved__::VtValue *this, void *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this));
  v7 = v6 & *a1;
  v8 = a1[4] + 24 * v7;
  if (*(v8 + 4) < 0)
  {
    v9 = 0;
LABEL_7:
    while (sub_29A376D04(a1, v9))
    {
      v10 = a1[4];
      v7 = v6 & *a1;
      if (*(v10 + 24 * v7 + 4) < 0)
      {
        v9 = 0;
      }

      else
      {
        LOWORD(v9) = 0;
        do
        {
          v9 = (v9 + 1);
          v7 = (v7 + 1) & *a1;
        }

        while (v9 <= *(v10 + 24 * v7 + 4));
      }
    }

    v11 = a1[4] + 24 * v7;
    if (*(v11 + 4) == -1)
    {
      sub_29A186EF4((v11 + 8), a3);
      *v11 = v6;
      *(v11 + 4) = v9;
    }

    else
    {
      sub_29A376DD8(a1, v7, v9, v6, a3);
    }

    ++a1[6];
  }

  else
  {
    LOWORD(v9) = 0;
    while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v8 + 8, this) & 1) == 0)
    {
      v7 = *a1 & (v7 + 1);
      v9 = (v9 + 1);
      v8 = a1[4] + 24 * v7;
      if (v9 > *(v8 + 4))
      {
        goto LABEL_7;
      }
    }
  }

  return a1[4] + 24 * v7;
}

uint64_t sub_29A376D04(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A376E70(a1, v7);
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

        sub_29A376E70(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_29A376DD8(uint64_t *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  v10[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v10, a5);
  sub_29A3770F0(a1, a2, a3, a4, v10);
  return sub_29A186B14(v10);
}

void sub_29A376E70(uint64_t a1, unint64_t a2)
{
  sub_29A37693C(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v6 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::VtValue::GetHash((v3 + 2)));
        }

        else
        {
          v6 = *v3;
        }

        sub_29A376F88(&v7, v7 & v6, 0, v6, v3 + 1);
      }

      v3 += 6;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29A36B22C(&v9);
}

void sub_29A376F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A36B22C((v11 - 72));
  _Unwind_Resume(a1);
}

void *sub_29A376F88(void *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  v6 = a3;
  v14 = a3;
  v13 = a4;
  while (1)
  {
    v9 = a1[4] + 24 * a2;
    v10 = *(v9 + 4);
    if (v10 >= v6)
    {
      goto LABEL_5;
    }

    if (v10 == -1)
    {
      break;
    }

    sub_29A37703C((a1[4] + 24 * a2), &v14, &v13, a5);
    v6 = v14;
LABEL_5:
    v14 = ++v6;
    a2 = *a1 & (a2 + 1);
  }

  v11 = v13;
  result = sub_29A186A3C((v9 + 8), a5);
  *v9 = v11;
  *(v9 + 4) = v6;
  return result;
}

uint64_t sub_29A37703C(int *a1, __int16 *a2, int *a3, void *a4)
{
  v11[2] = *MEMORY[0x29EDCA608];
  sub_29A186A3C(v11, a4);
  sub_29A18606C(a4, a1 + 1);
  sub_29A18606C(a1 + 1, v11);
  result = sub_29A186B14(v11);
  v9 = *a2;
  *a2 = *(a1 + 2);
  *(a1 + 2) = v9;
  v10 = *a1;
  *a1 = *a3;
  *a3 = v10;
  return result;
}

void *sub_29A3770F0(uint64_t *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  v17 = a3;
  v16 = a4;
  sub_29A37703C((a1[4] + 24 * a2), &v17, &v16, a5);
  v8 = *a1;
  v9 = *a1 & (a2 + 1);
  v10 = ++v17;
  v11 = a1[4];
  v12 = v11 + 24 * v9;
  for (i = *(v12 + 4); i != 0xFFFF; i = *(v12 + 4))
  {
    if (v10 > i)
    {
      if (v10 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      sub_29A37703C(v12, &v17, &v16, a5);
      v8 = *a1;
      v10 = v17;
      v11 = a1[4];
    }

    v9 = v8 & (v9 + 1);
    v17 = ++v10;
    v12 = v11 + 24 * v9;
  }

  v14 = v16;
  result = sub_29A186A3C((v12 + 8), a5);
  *v12 = v14;
  *(v12 + 4) = v10;
  return result;
}

void *sub_29A377204(void *result, void *a2)
{
  v3 = result;
  if (result != a2)
  {
    v2 = a2 - 2;
    if (a2 - 2 > result)
    {
      do
      {
        result = sub_29A375930(&v3, &v2);
        v2 -= 2;
        v3 += 2;
      }

      while (v3 < v2);
    }
  }

  return result;
}

void *sub_29A377260(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FD164(&v23, v16, v17);
      v21 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v20);
      v24 = v23;
      sub_29A1FD1E4(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FD1E4(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A377388(uint64_t a1)
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

void sub_29A377408(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A377408(a1, *a2);
    sub_29A377408(a1, a2[1]);
    sub_29A377464(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29A377464(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29A3774A4(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  if (a3 != a4)
  {
    v8 = sub_29A37759C(a1, 0, 0, a3);
    v9 = v8;
    v10 = a3 + 2;
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = sub_29A37759C(a1, v12, 0, v10);
        *(v12 + 8) = v8;
        ++v11;
        v10 += 2;
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29A377574(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29B29C280(v1);
  __cxa_rethrow();
}

void *sub_29A37759C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = operator new(0x18uLL);
  *v7 = a2;
  v7[1] = a3;
  sub_29A1E21F4(v7 + 4, a4);
  sub_29A1E2240(v7 + 5, a4 + 1);
  return v7;
}

uint64_t **sub_29A3775F4(uint64_t **a1, unint64_t *a2, uint64_t a3, _DWORD **a4)
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
        break;
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
    v11 = operator new(0x30uLL);
    v12 = *a4;
    sub_29A1E21F4(v11 + 8, v12);
    sub_29A1E2240(v11 + 9, v12 + 1);
    *(v11 + 5) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

int *sub_29A3776C8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        sub_29A23DFE4(a1, a2, a1[1], a2 + 8 * a5);
        sub_29A2258F0(v5, (v7 + 16));
        sub_29A225948(v5 + 1, (v7 + 20));
        if (a5 != 1)
        {
          v21 = a5 + 1;
          v22 = v5 + 2;
          do
          {
            v7 = *(v7 + 8);
            sub_29A2258F0(v22, (v7 + 16));
            sub_29A225948(v22 + 1, (v7 + 20));
            --v21;
            v22 += 2;
          }

          while (v21 > 2);
        }
      }

      else
      {
        if (v18 < 0)
        {
          v23 = (v10 - a2) >> 3;
          v20 = a3;
          do
          {
            v20 = *v20;
          }

          while (!__CFADD__(v23++, 1));
        }

        else if (v10 == a2)
        {
          v20 = a3;
        }

        else
        {
          v19 = v18 + 1;
          v20 = a3;
          do
          {
            v20 = v20[1];
            --v19;
          }

          while (v19 > 1);
        }

        a1[1] = sub_29A377964(a1, v20, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A23DFE4(a1, v5, v10, &v5[2 * a5]);
          sub_29A377A00(&v26, v7, v20, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v30 = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v26 = v17;
      v27 = &v17[8 * v16];
      v28 = v27;
      v29 = &v17[8 * v15];
      sub_29A3778F0(&v26, v7, a5);
      v5 = sub_29A23E100(a1, &v26, v5);
      sub_29A1E29E8(&v26);
    }
  }

  return v5;
}

_DWORD *sub_29A3778F0(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[2 * a3];
    do
    {
      sub_29A1E21F4(v4, (a2 + 16));
      result = sub_29A1E2240(v4 + 1, (a2 + 20));
      v4 += 2;
      a2 = *(a2 + 8);
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 2) = v4;
  return result;
}

_DWORD *sub_29A377964(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
      sub_29A1E21F4(v4, (v6 + 16));
      sub_29A1E2240(v4 + 1, (v6 + 20));
      v6 = *(v6 + 8);
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A1E2280(v8);
  return v4;
}

uint64_t sub_29A377A00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, (v5 + 16));
    sub_29A225948(a4 + 1, (v5 + 20));
    v5 = *(v5 + 8);
    a4 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29A377A70(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    sub_29A1E21F4(&v9, a2);
    sub_29A1E2240(&v10, a2 + 1);
    v11 = v5;
    v12 = v9;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
    v13 = v10;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
    v14 = v11;
    v6 = sub_29A2F49C0(v4, &v12, &v12);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    sub_29A1DE3A4(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    if ((v5 & 1) == 0)
    {
      return *a1 + 8 * v6[3];
    }
  }

  else
  {
    result = sub_29A377CFC(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A1E28B4(a1, a2);
  sub_29A377D74(a1);
  return a1[1] - 8;
}

void sub_29A377BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11)
{
  sub_29A377C7C(&a11);
  sub_29A377CBC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A377BD0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_29A378160(a1, a2);
  }

  else
  {
    sub_29A1DDD84(*(a1 + 8), a2);
    sub_29A1DDDC0((v4 + 4), a2 + 1);
    result = v4 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A377C38(uint64_t a1)
{
  sub_29A1DE554((a1 + 24), 0);
  v3 = a1;
  sub_29A1E234C(&v3);
  return a1;
}

_DWORD *sub_29A377C7C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29A377CBC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A377CFC(void *a1, unsigned int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A2F4F50(v3, a2);
    if (v4)
    {
      return *a1 + 8 * v4[3];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v6 = *a1;
    result = a1[1];
    if (*a1 != result)
    {
      while (*v6 != *a2)
      {
        if (++v6 == result)
        {
          return result;
        }
      }

      return v6;
    }
  }

  return result;
}

void sub_29A377D74(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x3F9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A1DE554(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A377E5C(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29A377E44(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29A377E5C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29A3780A4(a1, v6, a4, &v22);
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

void sub_29A37808C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2F4C80(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3780A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  result = sub_29A1E2240(v8 + 5, v9 + 1);
  v8[3] = 0;
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29A37811C(_DWORD *result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(result + 1);
    result = sub_29A1DE3A4(v1);
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_29A378160(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A00C9BC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[8 * v2];
  *(&v17 + 1) = &v8[8 * v7];
  sub_29A1DDD84(v16, a2);
  sub_29A1DDDC0(v16 + 1, a2 + 1);
  *&v17 = v16 + 8;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29A1E291C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A1E29E8(&v15);
  return v14;
}

void sub_29A378264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A378278(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = sub_29A37759C(a1, 0, 0, v5);
      v7 = *a1;
      *v6 = *a1;
      v6[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      ++a1[2];
      v5 += 2;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_29A37830C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29A377964(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A378374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_29A378394(uint64_t **a1, unint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 28);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x28uLL);
    sub_29A1E21F4(v10 + 7, a3);
    sub_29A1E2240(v10 + 8, a3 + 1);
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

int *sub_29A378460(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = a2 - 6;
  v15 = a2 - 4;
  v7 = result;
  v8 = (a2 - result) >> 3;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3uLL:

        return sub_29A378884(result, result + 2, a2 - 2);
      case 4uLL:
        result = sub_29A378884(result, result + 2, result + 4);
        if (*(a2 - 1) >= *(v7 + 2))
        {
          return result;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v7 + 4, a2 - 2);
        result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v7 + 5, a2 - 1);
        if (*(v7 + 2) >= *(v7 + 1))
        {
          return result;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v7 + 2, v7 + 4);
        result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v7 + 3, v7 + 5);
        if (*(v7 + 1) >= *v7)
        {
          return result;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v7, v7 + 2);
        v13 = v7 + 1;
        v12 = v7 + 3;
        goto LABEL_25;
      case 5uLL:

        return sub_29A378974(result, result + 2, result + 4, result + 6, a2 - 2);
    }
  }

  else
  {
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 2)
    {
      v11 = a2 - 2;
      if (*(a2 - 1) >= *result)
      {
        return result;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(result, v11);
      v12 = a2 - 1;
      v13 = v7 + 1;
LABEL_25:

      return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v13, v12);
    }
  }

  if (v8 <= 23)
  {
    if (a5)
    {

      return sub_29A378AF4(result, a2);
    }

    else
    {

      return sub_29A378C18(result, a2);
    }
  }

  else
  {
    if (a4 != 0)
    {
      v9 = v8 >> 1;
      v10 = &result[2 * (v8 >> 1)];
      if (v8 < 0x81)
      {
        sub_29A378884(&result[2 * (v8 >> 1)], result, a2 - 2);
        if (a5)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_29A378884(result, &result[2 * (v8 >> 1)], a2 - 2);
        sub_29A378884(v7 + 2, v10 - 2, v15);
        sub_29A378884(v7 + 4, &v7[2 * v9 + 2], v14);
        sub_29A378884(v10 - 2, v10, &v7[2 * v9 + 2]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v7, v10);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v7 + 1, v10 + 1);
        if (a5)
        {
          goto LABEL_15;
        }
      }

      if (*(v7 - 1) >= *v7)
      {
        sub_29A378D20(v7, a2);
      }

LABEL_15:
      sub_29A378E78(v7, a2);
    }

    if (result != a2)
    {

      return sub_29A379260(result, a2, a2, a3);
    }
  }

  return result;
}

uint64_t sub_29A378884(int *a1, int *a2, int *a3)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 < *a1)
  {
    if (v7 < v6)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a3);
      v8 = a1 + 1;
LABEL_9:
      v9 = a3 + 1;
      goto LABEL_10;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
    if (*a3 < *a2)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
      v8 = a2 + 1;
      goto LABEL_9;
    }

    return 1;
  }

  if (v7 < v6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a2 + 1, a3 + 1);
    if (*a2 < *a1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
      v8 = a1 + 1;
      v9 = a2 + 1;
LABEL_10:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v8, v9);
      return 1;
    }

    return 1;
  }

  return 0;
}

int *sub_29A378974(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  result = sub_29A378884(a1, a2, a3);
  if (*a4 < *a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a3, a4);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a3 + 1, a4 + 1);
    if (*a3 < *a2)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a2 + 1, a3 + 1);
      if (*a2 < *a1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
        result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
      }
    }
  }

  if (*a5 < *a4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a4, a5);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a4 + 1, a5 + 1);
    if (*a4 < *a3)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a3, a4);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a3 + 1, a4 + 1);
      if (*a3 < *a2)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
        result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a2 + 1, a3 + 1);
        if (*a2 < *a1)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);

          return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
        }
      }
    }
  }

  return result;
}

_DWORD *sub_29A378AF4(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (*(v4 + 1) < *v4)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v2);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 3);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v2 += 2;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *sub_29A378C18(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result;
    v3 = result + 2;
    if (result + 2 != a2)
    {
      v4 = result + 3;
      do
      {
        v5 = v3;
        if (*(v2 + 1) < *v2)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v3);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v2 + 3);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v3 += 2;
        v4 += 2;
        v2 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

void sub_29A378D20(int *a1, int *a2)
{
  LODWORD(v10) = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  HIDWORD(v10) = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  if (v10 >= *(a2 - 1))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 2;
    }

    while (v10 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = *(v4 + 1);
      v4 += 2;
    }

    while (v10 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 1);
      a2 -= 2;
    }

    while (v10 < v7);
  }

  while (v4 < a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v4, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v4 + 1, a2 + 1);
    do
    {
      v8 = *(v4 + 1);
      v4 += 2;
    }

    while (v10 >= v8);
    do
    {
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v10 < v9);
  }

  if (v4 - 2 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A378E78(int *a1, int *a2)
{
  LODWORD(v13) = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  HIDWORD(v13) = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v4 = 0;
  do
  {
    v5 = *&a1[v4 + 2];
    v4 += 2;
  }

  while (v5 < v13);
  v6 = &a1[v4];
  if (v4 == 2)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 >= v13);
  }

  else
  {
    do
    {
      v7 = *(a2 - 1);
      a2 -= 2;
    }

    while (v7 >= v13);
  }

  v9 = &a1[v4];
  if (v6 < a2)
  {
    v10 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v9, v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v9 + 1, v10 + 1);
      do
      {
        v11 = *(v9 + 1);
        v9 += 2;
      }

      while (v11 < v13);
      do
      {
        v12 = *(v10 - 1);
        v10 -= 2;
      }

      while (v12 >= v13);
    }

    while (v9 < v10);
  }

  if (v9 - 2 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A378FE4(int *a1, char *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 8);
      if (*(a2 - 1) < *a1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, v5);
        v6 = (a2 - 4);
        v7 = a1 + 1;
LABEL_6:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v7, v6);
        return 1;
      }

      return 1;
    }

LABEL_12:
    v8 = (a1 + 4);
    sub_29A378884(a1, a1 + 2, a1 + 4);
    v9 = (a1 + 6);
    if (a1 + 6 != a2)
    {
      v10 = 0;
      do
      {
        if (*v9 < *v8)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v9);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v9 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v8 = v9;
        v10 += 8;
        v9 += 8;
      }

      while (v9 != a2);
    }

    return 1;
  }

  if (v4 == 3)
  {
    sub_29A378884(a1, a1 + 2, a2 - 2);
    return 1;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      sub_29A378974(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    goto LABEL_12;
  }

  sub_29A378884(a1, a1 + 2, a1 + 4);
  if (*(a2 - 1) < *(a1 + 2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1 + 4, a2 - 2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 5, a2 - 1);
    if (*(a1 + 2) < *(a1 + 1))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1 + 2, a1 + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 3, a1 + 5);
      if (*(a1 + 1) < *a1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a1 + 2);
        v7 = a1 + 1;
        v6 = a1 + 3;
        goto LABEL_6;
      }
    }
  }

  return 1;
}

int *sub_29A379260(int *a1, int *a2, int *a3, uint64_t a4)
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
        sub_29A379378(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v12, a1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v12 + 1, a1 + 1);
          sub_29A379378(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_29A3794FC(a1, v6, a4, v8);
        v6 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A379378(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= (a4 - result) >> 3)
  {
    v5 = (a4 - result) >> 2;
    v6 = (result + 8 * (v5 + 1));
    if (v5 + 2 >= a3)
    {
      v7 = *v6;
    }

    else
    {
      v7 = *v6;
      if (*v6 <= v6[1])
      {
        v7 = v6[1];
      }
    }

    if (v7 >= *a4)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a4 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

_DWORD *sub_29A3794FC(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = result;
    v5 = *result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
    v6 = v4[1];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 1);
    sub_29A37962C();
  }

  return result;
}

void sub_29A379618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3796D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2 && *(result + 8 * ((a4 - 2) >> 1)) < *(a2 - 8))
  {
    v5 = *(a2 - 8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a2 - 8));
    v6 = *(a2 - 4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a2 - 4));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return result;
}

uint64_t sub_29A3797D8(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A37997C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A379944();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A37991C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B394(va);
  _Unwind_Resume(a1);
}

void *sub_29A379944()
{
  if ((atomic_load_explicit(&qword_2A14F6B68, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C2B8();
  }

  return &unk_2A14F6B58;
}

void *sub_29A37997C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A379A04(a1, a2);
    v4 = a1[1];
    v5 = v4 + 12 * a2;
    do
    {
      *v4 = -1;
      *(v4 + 2) = 0;
      v4 += 12;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

char *sub_29A379A04(void *a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    sub_29A00C9A4();
  }

  result = sub_29A379A50(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[12 * v4];
  return result;
}

void *sub_29A379A50(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    sub_29A00C8B8();
  }

  return operator new(12 * a2);
}

__int16 *sub_29A379A98(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = (v7 + 12 * v8);
  if (*result < 0)
  {
    v10 = 0;
LABEL_7:
    while (sub_29A379C2C(a1, v10))
    {
      v11 = a1[4];
      v8 = v5 & *a1;
      if (*(v11 + 12 * v8) < 0)
      {
        v10 = 0;
      }

      else
      {
        LOWORD(v10) = 0;
        do
        {
          v10 = (v10 + 1);
          v8 = (v8 + 1) & *a1;
        }

        while (v10 <= *(v11 + 12 * v8));
      }
    }

    v12 = (a1[4] + 12 * v8);
    if (*v12 == -1)
    {
      sub_29A1E21F4(v12 + 1, a3);
      sub_29A1E2240(v12 + 2, a3 + 1);
      *v12 = v10;
    }

    else
    {
      sub_29A379D00(a1, v8, v10, v5, a3);
    }

    ++a1[6];
    return (a1[4] + 12 * v8);
  }

  else
  {
    LOWORD(v10) = 0;
    while (*(result + 2) != *a2)
    {
      v10 = (v10 + 1);
      v8 = (v8 + 1) & v6;
      result = (v7 + 12 * v8);
      if (v10 > *result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29A379C2C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A379D90(a1, v7);
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

        sub_29A379D90(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *sub_29A379D00(uint64_t *a1, uint64_t a2, __int16 a3, uint64_t a4, _DWORD *a5)
{
  sub_29A1E21F4(&v11, a5);
  sub_29A1E2240(&v12, a5 + 1);
  sub_29A379F44(a1, a2, a3, a4, &v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  return sub_29A1DE3A4(&v11);
}

void sub_29A379D90(uint64_t a1, unint64_t a2)
{
  sub_29A3797D8(&v8, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = (v3 + 4);
    do
    {
      if (*(v5 - 2) != -1)
      {
        v6 = bswap64(0x9E3779B97F4A7C55 * (v5[1] + ((v5[1] + *v5 + (v5[1] + *v5) * (v5[1] + *v5)) >> 1)));
        sub_29A379E94(&v8, v6 & v8, 0, v6, v5);
      }

      v7 = (v5 + 2);
      v5 += 3;
    }

    while (v7 != v4);
  }

  v9[5] = *(a1 + 48);
  sub_29A10A4B4(&v8, a1);
  v10 = v9;
  sub_29A36B394(&v10);
}

void sub_29A379E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 56) = &a11;
  sub_29A36B394((v11 - 56));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A379E94(void *a1, uint64_t a2, __int16 a3, uint64_t a4, int *a5)
{
  while (1)
  {
    v9 = (a1[4] + 12 * a2);
    v10 = *v9;
    if (v10 >= a3)
    {
      goto LABEL_4;
    }

    if (v10 == -1)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a5, v9 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a5 + 1, v9 + 2);
    v11 = *v9;
    *v9 = a3;
    a3 = v11;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  sub_29A1DDD84(v9 + 1, a5);
  result = sub_29A1DDDC0(v9 + 2, a5 + 1);
  *v9 = a3;
  return result;
}

_DWORD *sub_29A379F44(uint64_t *a1, uint64_t a2, __int16 a3, uint64_t a4, int *a5)
{
  v9 = a1[4] + 12 * a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a5, (v9 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a5 + 1, (v9 + 8));
  v10 = *v9;
  *v9 = a3;
  v11 = *a1;
  v12 = *a1 & (a2 + 1);
  v13 = v10 + 1;
  v14 = a1[4];
  v15 = (v14 + 12 * v12);
  for (i = *v15; i != 0xFFFF; i = *v15)
  {
    if (v13 > i)
    {
      if (v13 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a5, v15 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a5 + 1, v15 + 2);
      v17 = *v15;
      *v15 = v13;
      v11 = *a1;
      v14 = a1[4];
      v13 = v17;
    }

    v12 = v11 & (v12 + 1);
    ++v13;
    v15 = (v14 + 12 * v12);
  }

  sub_29A1DDD84(v15 + 1, a5);
  result = sub_29A1DDDC0(v15 + 2, a5 + 1);
  *v15 = v13;
  return result;
}

int *sub_29A37A060(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result;
    for (i = a2 - 2; v2 < i; i -= 2)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v2, i);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v2 + 1, i + 1);
      v2 += 2;
    }
  }

  return result;
}

void *sub_29A37A0C0(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FAB78(&v23, v16, v17);
      v21 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v20);
      v24 = v23;
      sub_29A1FABF8(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FABF8(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

void sub_29A37A1E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A37A1E8(a1, *a2);
    sub_29A37A1E8(a1, a2[1]);
    sub_29A37A244((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A37A244(uint64_t a1)
{
  sub_29A184A10((a1 + 48), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_29A37A2AC(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  if (a3 != a4)
  {
    v8 = sub_29A37A3A4(a1, 0, 0, a3);
    v9 = v8;
    v10 = (a3 + 56);
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = sub_29A37A3A4(a1, v12, 0, v10);
        *(v12 + 8) = v8;
        ++v11;
        v10 = (v10 + 56);
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29A37A37C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29B29C324(v1);
  __cxa_rethrow();
}

void *sub_29A37A3A4(int a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = operator new(0x48uLL);
  *v8 = a2;
  *(v8 + 1) = a3;
  sub_29A37A418(a1, v8 + 16, a4);
  return v8;
}

uint64_t sub_29A37A418(int a1, char *__dst, __int128 *a3)
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

void sub_29A37A490(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A37A4B4(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A37A54C(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A37A5D4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

const void **sub_29A37A54C(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

char *sub_29A37A5D4@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0x60uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A37A654(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A37A654(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, v3 + 6);
  sub_29A1E2240(__dst + 7, v3 + 7);
  *(__dst + 2) = v3[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (v3 + 3));
  *(__dst + 7) = 0;
  return __dst;
}

void sub_29A37A6D4(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A37A6F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A37A244(v2 + 32);
    }

    operator delete(v2);
  }
}

std::string *sub_29A37A754(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v18 = v10 - a2;
      v19 = 0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3);
      if (v19 >= a5)
      {
        sub_29A37A9B4(a1, a2, a1[1], a2 + 56 * a5);
        sub_29A37AA90(v7, a5, v5);
      }

      else
      {
        if (v18 <= -56)
        {
          v21 = a3;
          do
          {
            v21 = *v21;
          }

          while (!__CFADD__(v19++, 1));
        }

        else if (v10 == a2)
        {
          v21 = a3;
        }

        else
        {
          v20 = v19 + 1;
          v21 = a3;
          do
          {
            v21 = v21[1];
            --v20;
          }

          while (v20 > 1);
        }

        a1[1] = sub_29A37AC1C(a1, v21, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A37A9B4(a1, v5, v10, v5 + 56 * a5);
          sub_29A37AD98(v27, v7, v21, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
      if (v12 > 0x492492492492492)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x249249249249249)
      {
        v15 = 0x492492492492492;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
      *v30 = a1;
      if (v15)
      {
        v17 = sub_29A040BCC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v22 = &v17[56 * v16];
      v27[0] = v17;
      v27[1] = v22;
      v28 = v22;
      v29 = &v17[56 * v15];
      v23 = 56 * a5;
      v24 = &v22[56 * a5];
      do
      {
        sub_29A246334(v30[0], v22, (v7 + 16));
        v22 += 56;
        v7 = *(v7 + 8);
        v23 -= 56;
      }

      while (v23);
      v28 = v24;
      v5 = sub_29A37AB60(a1, v27, v5);
      sub_29A2455EC(v27);
    }
  }

  return v5;
}

uint64_t sub_29A37A9B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v13 = *(v7 + v10);
      *(v12 + 16) = *(v7 + v10 + 16);
      *v12 = v13;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      sub_29A1DDD84((v6 + v10 + 24), (v7 + v10 + 24));
      sub_29A1DDDC0((v6 + v10 + 28), (v7 + v10 + 28));
      *(v12 + 32) = *(v7 + v10 + 32);
      v14 = *(v7 + v10 + 48);
      v11[6] = 0;
      *(v12 + 48) = v14;
      v10 += 56;
    }

    while ((v11 + 7) < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return sub_29A37ACC8(&v16, a2, v7, v6);
}

std::string *sub_29A37AA90(uint64_t a1, uint64_t a2, std::string *this)
{
  v3 = this;
  if (a2 >= 1)
  {
    v5 = a1;
    std::string::operator=(this, (a1 + 16));
    sub_29A2258F0(&v3[1], (v5 + 40));
    sub_29A225948(v3[1].__r_.__value_.__r.__words + 1, (v5 + 44));
    *&v3[1].__r_.__value_.__r.__words[1] = *(v5 + 48);
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v3[2], (v5 + 64));
    v3 = (v3 + 56);
    if (a2 != 1)
    {
      v6 = a2 + 1;
      do
      {
        v5 = *(v5 + 8);
        std::string::operator=(v3, (v5 + 16));
        sub_29A2258F0(&v3[1], (v5 + 40));
        sub_29A225948(v3[1].__r_.__value_.__r.__words + 1, (v5 + 44));
        *&v3[1].__r_.__value_.__r.__words[1] = *(v5 + 48);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v3[2], (v5 + 64));
        v3 = (v3 + 56);
        --v6;
      }

      while (v6 > 2);
    }
  }

  return v3;
}

uint64_t sub_29A37AB60(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29A245460(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29A245460(a1, v7, a3, v9);
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

char *sub_29A37AC1C(uint64_t a1, uint64_t a2, uint64_t a3, char *__dst)
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
      sub_29A246334(v7, v4, (v6 + 16));
      v6 = *(v6 + 8);
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A245560(v9);
  return v4;
}

uint64_t sub_29A37ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 56);
    if (*(a4 - 33) < 0)
    {
      operator delete(*v6);
    }

    v7 = *(a3 - 56);
    *(a4 - 40) = *(a3 - 40);
    *v6 = v7;
    *(a3 - 33) = 0;
    *(a3 - 56) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

uint64_t sub_29A37AD98(int a1, uint64_t a2, uint64_t a3, std::string *this)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, (v5 + 16));
    sub_29A2258F0(&this[1], (v5 + 40));
    sub_29A225948(this[1].__r_.__value_.__r.__words + 1, (v5 + 44));
    *&this[1].__r_.__value_.__r.__words[1] = *(v5 + 48);
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&this[2], (v5 + 64));
    v5 = *(v5 + 8);
    this = (this + 56);
  }

  while (v5 != v6);
  return v6;
}

__int128 *sub_29A37AE28(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    v6 = *a2;
    *(a4 + 16) = *(a2 + 2);
    *a4 = v6;
    *(a2 + 23) = 0;
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

std::string *sub_29A37AED4(uint64_t *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v18 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v20 = 56 * a5;
        sub_29A37A9B4(a1, a2, a1[1], a2 + 56 * a5);
        v19 = (v7 + v20);
      }

      else
      {
        a1[1] = sub_29A37B0E4(a1, (a3 + v18), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29A37A9B4(a1, v5, v10, v5 + 56 * a5);
        v19 = (v7 + v18);
      }

      sub_29A325344(v25, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
    if (v12 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
    *v28 = a1;
    if (v15)
    {
      v17 = sub_29A040BCC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[56 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v26 = v21;
    v27 = &v17[56 * v15];
    v22 = 56 * a5;
    v23 = &v21[56 * a5];
    do
    {
      sub_29A2453C4(v28[0], v21, v7);
      v21 += 56;
      v7 = (v7 + 56);
      v22 -= 56;
    }

    while (v22);
    v26 = v23;
    v5 = sub_29A37AB60(a1, v25, v5);
    sub_29A2455EC(v25);
  }

  return v5;
}

char *sub_29A37B0E4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
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
      sub_29A2453C4(v7, v4, v6);
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

uint64_t sub_29A37B190(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
    sub_29A37BA04(__dst, a2, &v10);
    sub_29A37BAB8(__p, __dst);
    v5 = sub_29A37B608(v4, __p, __p);
    v7 = v6;
    sub_29A184A10(&v20, 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v19);
    sub_29A1DE3A4(&v18);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A184A10(&v15, 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14);
    sub_29A1DE3A4(&v13);
    if (v12 < 0)
    {
      operator delete(__dst[0]);
      if ((v7 & 1) == 0)
      {
        return *a1 + 56 * *(v5 + 9);
      }
    }

    else if ((v7 & 1) == 0)
    {
      return *a1 + 56 * *(v5 + 9);
    }
  }

  else
  {
    result = sub_29A37B580(a1, a2);
    if (*(a1 + 8) != result)
    {
      return result;
    }
  }

  sub_29A245218(a1, a2);
  v9 = *(a1 + 8);
  if ((0x6DB6DB6DB6DB6DB7 * ((v9 - *a1) >> 3)) >= 0x80)
  {
    sub_29A37BC54(a1);
    v9 = *(a1 + 8);
  }

  return v9 - 56;
}

void sub_29A37B314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A37B4D8(va1);
  sub_29A37B52C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A37B330(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A37C1EC(a1, a2);
  }

  else
  {
    sub_29A37C174(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A37B370(uint64_t a1)
{
  sub_29A37B3B4((a1 + 24), 0);
  v3 = a1;
  sub_29A2463D0(&v3);
  return a1;
}

void sub_29A37B3B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A37B3F0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A37B3F0(uint64_t a1)
{
  sub_29A37B42C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A37B42C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A37B470((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A37B470(uint64_t a1)
{
  sub_29A184A10((a1 + 48), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_29A37B4D8(uint64_t a1)
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

uint64_t sub_29A37B52C(uint64_t a1)
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

uint64_t sub_29A37B580(double **a1, void *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = sub_29A37BB1C(v4, a2);
    if (v5)
    {
      return &(*a1)[7 * *(v5 + 9)];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v8 = a1;
    v7 = *a1;
    v6 = v8[1];
    while (v7 != v6)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v7, a2))
      {
        return v7;
      }

      v7 += 7;
    }
  }

  return v6;
}

double *sub_29A37B608(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v25 = 0;
  v26 = 0;
  sub_29A24896C(&v25, a2, (a2 + 24), (a2 + 32), (a2 + 48));
  v7 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v25));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = *(i + 1);
        if (v13 == v7)
        {
          if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A37B890(a1, v7, a3, &v25);
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

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    i = v25;
    *v25 = *v21;
    *v21 = i;
  }

  else
  {
    v22 = v25;
    *v25 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v3) = a1 + 16;
    i = v25;
    if (*v25)
    {
      v23 = *(*v25 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25;
      i = v25;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A37B878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A37B9A8(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29A37B890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  result = sub_29A37B900(v8 + 16, a3);
  *(a4 + 16) = 1;
  return result;
}

char *sub_29A37B900(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a2 + 3));
  *(__dst + 7) = *(a2 + 7);
  return __dst;
}

void sub_29A37B984(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A37B9A8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A37B470(v2 + 16);
    }

    operator delete(v2);
  }
}

char *sub_29A37BA04(char *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v6;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a2 + 3));
  *(__dst + 7) = *a3;
  return __dst;
}

void sub_29A37BA94(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A37BAB8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A1DDD84((a1 + 24), a2 + 6);
  sub_29A1DDDC0((a1 + 28), a2 + 7);
  *(a1 + 32) = a2[2];
  v5 = *(a2 + 6);
  v6 = *(a2 + 7);
  *(a2 + 6) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  return a1;
}

double *sub_29A37BB1C(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  sub_29A24896C(&v13, a2, (a2 + 24), (a2 + 32), (a2 + 48));
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v13));
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = v5 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v11 == v5)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(i + 2, a2))
      {
        return i;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return i;
}

void sub_29A37BC54(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A37B3B4(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = a1[3];
        v8 = (v4 + v5);
        *(sub_29A37BD4C(v7, v4 + v5, &unk_29B4D6118, &v8) + 9) = v6++;
        v4 = *a1;
        v5 += 56;
      }

      while (v6 < 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29A37BD34(_Unwind_Exception *a1)
{
  v3 = sub_29A37B3F0(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

double *sub_29A37BD4C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A24896C(&v26, a2, (a2 + 24), (a2 + 32), (a2 + 48));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
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

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = *(i + 1);
        if (v14 == v8)
        {
          if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(i + 2, a2))
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

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A37BFEC(a1, v8, a4, &v26);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    i = v26;
    *v26 = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v4) = a1 + 16;
    i = v26;
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
      i = v26;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A37BFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A37B9A8(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29A37BFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v10 = *a3;
  result = sub_29A37C070(v8 + 16, &v10);
  *(a4 + 16) = 1;
  return result;
}

char *sub_29A37C070(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, v3 + 6);
  sub_29A1E2240(__dst + 7, v3 + 7);
  *(__dst + 2) = v3[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (v3 + 3));
  *(__dst + 7) = 0;
  return __dst;
}

void sub_29A37C0F0(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A37C114(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_29A184A10((a1 + 48), 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
    sub_29A1DE3A4((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 56) = 0;
  }
}

__n128 sub_29A37C174(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A1DDD84((v4 + 24), a2 + 6);
  sub_29A1DDDC0((v4 + 28), a2 + 7);
  result = a2[2];
  *(v4 + 32) = result;
  v7 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(v4 + 48) = v7;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t sub_29A37C1EC(uint64_t *a1, __int128 *a2)
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

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[56 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A1DDD84(v8 + 6, a2 + 6);
  sub_29A1DDDC0(v8 + 7, a2 + 7);
  *(v8 + 2) = a2[2];
  v10 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(v8 + 6) = v10;
  *&v19 = v8 + 56;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  sub_29A245460(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A2455EC(&v17);
  return v16;
}

void sub_29A37C354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2455EC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A37C368(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = sub_29A37C3FC(a1, 0, 0, v5);
      v7 = *a1;
      *v6 = *a1;
      v6[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      ++a1[2];
      v5 = (v5 + 56);
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_29A37C3FC(int a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = operator new(0x48uLL);
  *v8 = a2;
  *(v8 + 1) = a3;
  sub_29A37C470(a1, v8 + 16, a4);
  return v8;
}

uint64_t sub_29A37C470(int a1, char *__dst, __int128 *a3)
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

void sub_29A37C4E8(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_29A37C50C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29A37AC1C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A37C574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A2463D0(&a9);
  _Unwind_Resume(a1);
}

void sub_29A37C594(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A37C594(a1, *a2);
    sub_29A37C594(a1, a2[1]);
    sub_29A36B544((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29A37C5F0(char *a1, const void **a2, __int128 *a3)
{
  v5 = sub_29A37A54C(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A37C670(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t sub_29A37C670@<X0>(char *a1@<X0>, __int128 *a2@<X1>, char **a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A37C6E0(a1, v6 + 32, a2);
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29A37C6E0(int a1, char *__dst, __int128 *a3)
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

void sub_29A37C758(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A37C77C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A36B544(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A37C7D8(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfReference::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_29A37C85C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((pxrInternal__aapl__pxrReserved__::SdfReference::operator<(a2, v2 + 4) & 1) == 0)
      {
        if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v2 + 4, a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

const void **sub_29A37C8C4(const void **result, const void **a2, uint64_t a3, uint64_t a4, char a5)
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

          return sub_29A37CD04(result, a2);
        }

        else
        {

          return sub_29A37CF1C(result, a2);
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
            sub_29A37D39C(v8, a2);
          }

          sub_29A37D120(v8, a2);
        }

        if (result != a2)
        {

          return sub_29A37D980(result, a2, a2, a3);
        }
      }

      return result;
  }

  return result;
}

uint64_t sub_29A37CD04(uint64_t result, const void **a2)
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

uint64_t sub_29A37CF1C(uint64_t result, const void **a2)
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

void sub_29A37D120(uint64_t a1, const void **a2)
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

void sub_29A37D39C(uint64_t a1, const void **a2)
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

uint64_t sub_29A37D620(uint64_t a1, uint64_t a2)
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

const void **sub_29A37D980(__int128 *a1, __int128 *a2, const void **a3, uint64_t a4)
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
        sub_29A37DAB8(a1, a4, v9, v12);
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
        sub_29A37DD40(a1, v6, a4, v14);
        v6 -= 56;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29A37DAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_29A37DD40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_29A37DFAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_29A37E19C(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A37E334(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A37E2FC();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 58)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 58) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A37E2D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B60C(va);
  _Unwind_Resume(a1);
}

void *sub_29A37E2FC()
{
  if ((atomic_load_explicit(&qword_2A14F6BB0, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C35C();
  }

  return &unk_2A14F6B70;
}

void *sub_29A37E334(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1BF94C(a1, a2);
    v4 = a1[1];
    v5 = v4 + (a2 << 6);
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 64;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A37E3BC(void *a1, uint64_t a2, __int128 *a3)
{
  v13 = 0;
  v14 = 0;
  sub_29A24896C(&v13, a2, (a2 + 24), (a2 + 32), (a2 + 48));
  v6 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v13));
  v7 = v6 & *a1;
  v8 = a1[4] + (v7 << 6);
  if (*(v8 + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v9) = 0;
  while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==((v8 + 8), a2) & 1) == 0)
  {
    v7 = *a1 & (v7 + 1);
    v9 = (v9 + 1);
    v8 = a1[4] + (v7 << 6);
    if (v9 > *(v8 + 4))
    {
      while (sub_29A37E548(a1, v9))
      {
        v10 = a1[4];
        v7 = v6 & *a1;
        if (*(v10 + (v7 << 6) + 4) < 0)
        {
LABEL_7:
          v9 = 0;
        }

        else
        {
          LOWORD(v9) = 0;
          do
          {
            v9 = (v9 + 1);
            v7 = (v7 + 1) & *a1;
          }

          while (v9 <= *(v10 + (v7 << 6) + 4));
        }
      }

      v11 = a1[4] + (v7 << 6);
      if (*(v11 + 4) != -1)
      {
        sub_29A37E6D0(a1, v7, v9, v6, a3);
      }

      sub_29A37E61C(v11, v9, v6, a3);
      ++a1[6];
      return a1[4] + (v7 << 6);
    }
  }

  return a1[4] + (v7 << 6);
}

uint64_t sub_29A37E548(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A37E7DC(a1, v7);
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

        sub_29A37E7DC(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_29A37E61C(uint64_t a1, __int16 a2, int a3, __int128 *a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v8;
  }

  sub_29A1E21F4((a1 + 32), a4 + 6);
  sub_29A1E2240((a1 + 36), a4 + 7);
  *(a1 + 40) = a4[2];
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 56), (a4 + 3));
  *a1 = a3;
  *(a1 + 4) = a2;
  return result;
}

void sub_29A37E6AC(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 32));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_29A37E6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v11 = *(a5 + 16);
  }

  sub_29A1E21F4(&v12, (a5 + 24));
  sub_29A1E2240(&v13, (a5 + 28));
  v14 = *(a5 + 32);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v15, (a5 + 48));
  sub_29A37E9F8(a1, a2, a3, a4, __p);
}

void sub_29A37E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_29A1DCEA8((v14 + 24));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A37E7DC(uint64_t a1, unint64_t a2)
{
  sub_29A37E19C(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v9 = 0;
          v10 = 0;
          sub_29A24896C(&v9, (v3 + 2), v3 + 8, (v3 + 10), v3 + 7);
          v6 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v9));
        }

        else
        {
          v6 = *v3;
        }

        sub_29A37E918(&v7, v7 & v6, 0, v6, (v3 + 2));
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29A36B60C(&v9);
}

void sub_29A37E8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A36B60C((v11 - 72));
  _Unwind_Resume(a1);
}

__n128 sub_29A37E918(void *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  while (1)
  {
    v9 = a1[4] + (a2 << 6);
    v10 = *(v9 + 4);
    if (v10 < a3)
    {
      break;
    }

    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  if (v10 != -1)
  {
    sub_29A2476F4(a5, (v9 + 8));
  }

  v11 = *a5;
  *(v9 + 24) = *(a5 + 16);
  *(v9 + 8) = v11;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  sub_29A1DDD84((v9 + 32), (a5 + 24));
  sub_29A1DDDC0((v9 + 36), (a5 + 28));
  result = *(a5 + 32);
  *(v9 + 40) = result;
  v13 = *(a5 + 48);
  *(a5 + 48) = 0;
  *(v9 + 56) = v13;
  *v9 = a4;
  *(v9 + 4) = a3;
  return result;
}

void *sub_29A37EB4C(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FB580(&v23, v16, v17);
      v21 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v20);
      v24 = v23;
      sub_29A1FB600(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FB600(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

void sub_29A37EC74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A37EC74(a1, *a2);
    sub_29A37EC74(a1, a2[1]);
    sub_29A37ECD0((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A37ECD0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

__n128 *sub_29A37ED2C(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v8 = sub_29A37EE24(a1, 0, 0, a3);
    v9 = v8;
    v10 = a3 + 48;
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = sub_29A37EE24(a1, v12, 0, v10);
        *(v12 + 8) = v8;
        ++v11;
        v10 += 48;
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    v13->n128_u64[1] = v9;
    v9->n128_u64[0] = v13;
    *a2 = v8;
    v8->n128_u64[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29A37EDFC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29B29C3C8(v1);
  __cxa_rethrow();
}

__n128 *sub_29A37EE24(int a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = operator new(0x40uLL);
  v8->n128_u64[0] = a2;
  v8->n128_u64[1] = a3;
  sub_29A2496A8(a1, v8 + 1, a4);
  return v8;
}

uint64_t *sub_29A37EE98(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A37EF30(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A37EFB8(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

const void **sub_29A37EF30(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *sub_29A37EFB8@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A37F038(v6 + 4, &v8);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A37F038(void *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    __dst[2] = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, v3 + 6);
  sub_29A1E2240(__dst + 7, v3 + 7);
  *(__dst + 2) = v3[2];
  __dst[6] = 0;
  return __dst;
}

void sub_29A37F0AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A37ECD0(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A37F108(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v18 = v10 - a2;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4);
      if (v19 >= a5)
      {
        sub_29A37F3C8(a1, a2, a1[1], a2 + 48 * a5);
        std::string::operator=(v5, (v7 + 16));
        sub_29A2258F0((v5 + 24), (v7 + 40));
        sub_29A225948((v5 + 28), (v7 + 44));
        *(v5 + 32) = *(v7 + 48);
        if (a5 != 1)
        {
          v22 = 0;
          v23 = a5 + 1;
          do
          {
            v7 = *(v7 + 8);
            std::string::operator=((v22 + v5 + 48), (v7 + 16));
            sub_29A2258F0((v22 + v5 + 72), (v7 + 40));
            sub_29A225948((v22 + v5 + 76), (v7 + 44));
            *(v22 + v5 + 80) = *(v7 + 48);
            --v23;
            v22 += 48;
          }

          while (v23 > 2);
        }
      }

      else
      {
        if (v18 <= -48)
        {
          v21 = a3;
          do
          {
            v21 = *v21;
          }

          while (!__CFADD__(v19++, 1));
        }

        else if (v10 == a2)
        {
          v21 = a3;
        }

        else
        {
          v20 = v19 + 1;
          v21 = a3;
          do
          {
            v21 = v21[1];
            --v20;
          }

          while (v20 > 1);
        }

        a1[1] = sub_29A37F554(a1, v21, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A37F3C8(a1, v5, v10, v5 + 48 * a5);
          sub_29A37F6C0(v30, v7, v21, v5);
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
      *v33 = a1;
      if (v15)
      {
        v17 = sub_29A08E058(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[48 * v16];
      v30[0] = v17;
      v30[1] = v24;
      v31 = v24;
      v32 = &v17[48 * v15];
      v25 = 3 * a5;
      v26 = &v24[3 * a5];
      v27 = 16 * v25;
      do
      {
        sub_29A2496A8(v33[0], v24, v7 + 16);
        v24 += 3;
        v7 = *(v7 + 8);
        v27 -= 48;
      }

      while (v27);
      v31 = v26;
      v5 = sub_29A37F498(a1, v30, v5);
      sub_29A249894(v30);
    }
  }

  return v5;
}

uint64_t sub_29A37F3C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v13 = *(v7 + v10);
      *(v12 + 16) = *(v7 + v10 + 16);
      *v12 = v13;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      sub_29A1DDD84((v6 + v10 + 24), (v7 + v10 + 24));
      sub_29A1DDDC0((v6 + v10 + 28), (v7 + v10 + 28));
      *(v12 + 32) = *(v7 + v10 + 32);
      v10 += 48;
    }

    while ((v11 + 6) < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return sub_29A37F600(&v15, a2, v7, v6);
}

uint64_t sub_29A37F498(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29A249714(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29A249714(a1, v7, a3, v9);
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

__n128 *sub_29A37F554(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *__dst)
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
      sub_29A2496A8(v7, v4, v6 + 16);
      v6 = *(v6 + 8);
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A249808(v9);
  return v4;
}

uint64_t sub_29A37F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 48);
    if (*(a4 - 25) < 0)
    {
      operator delete(*v6);
    }

    v7 = *(a3 - 48);
    *(a4 - 32) = *(a3 - 32);
    *v6 = v7;
    *(a3 - 25) = 0;
    *(a3 - 48) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

uint64_t sub_29A37F6C0(int a1, uint64_t a2, uint64_t a3, std::string *this)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, (v5 + 16));
    sub_29A2258F0(&this[1], (v5 + 40));
    sub_29A225948(this[1].__r_.__value_.__r.__words + 1, (v5 + 44));
    *&this[1].__r_.__value_.__r.__words[1] = *(v5 + 48);
    v5 = *(v5 + 8);
    this += 2;
  }

  while (v5 != v6);
  return v6;
}

__int128 *sub_29A37F744(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    v6 = *a2;
    *(a4 + 16) = *(a2 + 2);
    *a4 = v6;
    *(a2 + 23) = 0;
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

std::string *sub_29A37F7E0(uint64_t *a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v20 = 3 * a5;
        sub_29A37F3C8(a1, a2, a1[1], a2 + 48 * a5);
        v19 = &v7[(16 * v20) / 0x18];
      }

      else
      {
        a1[1] = sub_29A37F9DC(a1, a3 + v18, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29A37F3C8(a1, v5, v10, &v5[2 * a5]);
        v19 = (v7 + v18);
      }

      sub_29A325970(v26, v7, v19, v5);
      return v5;
    }

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
    *v29 = a1;
    if (v15)
    {
      v17 = sub_29A08E058(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[48 * v16];
    v26[0] = v17;
    v26[1] = v21;
    v27 = v21;
    v28 = &v17[48 * v15];
    v22 = 3 * a5;
    v23 = &v21[3 * a5];
    v24 = 16 * v22;
    do
    {
      sub_29A2496A8(v29[0], v21, v7);
      v21 += 3;
      v7 += 2;
      v24 -= 48;
    }

    while (v24);
    v27 = v23;
    v5 = sub_29A37F498(a1, v26, v5);
    sub_29A249894(v26);
  }

  return v5;
}

__n128 *sub_29A37F9DC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *__dst)
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

uint64_t sub_29A37FA88(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
    sub_29A380308(__dst, a2, &v10);
    *__p = *__dst;
    v18 = v12;
    __dst[1] = 0;
    v12 = 0;
    __dst[0] = 0;
    v19 = v13;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v13);
    v20 = v14;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v14);
    v21 = v15;
    v22 = v16;
    v5 = sub_29A37FF54(v4, __p, __p);
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
    sub_29A1DE3A4(&v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__dst[0]);
      if ((v7 & 1) == 0)
      {
        return *a1 + 48 * *(v5 + 8);
      }
    }

    else if ((v7 & 1) == 0)
    {
      return *a1 + 48 * *(v5 + 8);
    }
  }

  else
  {
    result = sub_29A37FECC(a1, a2);
    if (*(a1 + 8) != result)
    {
      return result;
    }
  }

  sub_29A249514(a1, a2);
  v9 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 4) >= 0x80)
  {
    sub_29A3804A4(a1);
    v9 = *(a1 + 8);
  }

  return v9 - 48;
}

void sub_29A37FC34(_Unwind_Exception *a1, uint64_t a2, ...)
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
  sub_29A37FE3C(va1);
  sub_29A37FE84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A37FC58(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29A3808F4(a1, a2);
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 16);
    *v4 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    sub_29A1DDD84((v4 + 24), (a2 + 24));
    sub_29A1DDDC0((v4 + 28), (a2 + 28));
    *(v4 + 32) = *(a2 + 32);
    result = v4 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A37FCE0(uint64_t a1)
{
  sub_29A37FD24((a1 + 24), 0);
  v3 = a1;
  sub_29A24A5D0(&v3);
  return a1;
}

void sub_29A37FD24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A37FD60(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A37FD60(uint64_t a1)
{
  sub_29A37FD9C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A37FD9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A37FDE0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A37FDE0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_29A37FE3C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A37FE84(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A37FECC(double **a1, double *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = sub_29A38038C(v4, a2);
    if (v5)
    {
      return &(*a1)[6 * *(v5 + 8)];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v8 = a1;
    v7 = *a1;
    v6 = v8[1];
    while (v7 != v6)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v7, a2))
      {
        return v7;
      }

      v7 += 6;
    }
  }

  return v6;
}

double *sub_29A37FF54(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * sub_29A24C888(a2, (a2 + 24), (a2 + 32)));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = *(i + 1);
        if (v13 == v7)
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A3801C4(a1, v7, a3, v25);
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

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    i = v25[0];
    *v25[0] = *v21;
    *v21 = i;
  }

  else
  {
    v22 = v25[0];
    *v25[0] = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v3) = a1 + 16;
    i = v25[0];
    if (*v25[0])
    {
      v23 = *(*v25[0] + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25[0];
      i = v25[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A3801AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3802AC(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A3801C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A380234(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29A380234(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  __dst[6] = *(a2 + 6);
  return __dst;
}

void sub_29A3802AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A37FDE0(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A380308(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v6;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  __dst[6] = *a3;
  return __dst;
}

double *sub_29A38038C(void *a1, uint64_t a2)
{
  v4 = sub_29A24C888(a2, (a2 + 24), (a2 + 32));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = bswap64(0x9E3779B97F4A7C55 * v4);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_29A3804A4(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A37FD24(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = a1[3];
        v8 = (v4 + v5);
        *(sub_29A380594(v7, v4 + v5, &unk_29B4D6118, &v8) + 8) = v6++;
        v4 = *a1;
        v5 += 48;
      }

      while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
    }
  }
}

void sub_29A38057C(_Unwind_Exception *a1)
{
  v3 = sub_29A37FD60(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

double *sub_29A380594(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * sub_29A24C888(a2, (a2 + 24), (a2 + 32)));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
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
      v4 = (v9 - 1) & v8;
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = *(i + 1);
        if (v14 == v8)
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(i + 2, a2))
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

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A38081C(a1, v8, a4, v26);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
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
    *(v21 + 8 * v4) = a1 + 16;
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

void sub_29A380804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3802AC(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A38081C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A37F038(v8 + 2, &v10);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A3808A0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
    sub_29A1DE3A4((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }
}

uint64_t sub_29A3808F4(uint64_t *a1, __int128 *a2)
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

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[48 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A1DDD84(v8 + 6, a2 + 6);
  sub_29A1DDDC0(v8 + 7, a2 + 7);
  *(v8 + 2) = a2[2];
  *&v18 = v8 + 48;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29A249714(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A249894(&v16);
  return v15;
}

void sub_29A380A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A249894(va);
  _Unwind_Resume(a1);
}

__n128 **sub_29A380A4C(__n128 **a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = sub_29A380AE0(a1, 0, 0, v5);
      v7 = *a1;
      v6->n128_u64[0] = *a1;
      v6->n128_u64[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      a1[2] = (a1[2] + 1);
      v5 += 48;
    }

    while (v5 != a3);
  }

  return a1;
}

__n128 *sub_29A380AE0(int a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = operator new(0x40uLL);
  v8->n128_u64[0] = a2;
  v8->n128_u64[1] = a3;
  sub_29A2496A8(a1, v8 + 1, a4);
  return v8;
}

__n128 *sub_29A380B54(__n128 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29A37F554(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A380BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A24A5D0(&a9);
  _Unwind_Resume(a1);
}

void sub_29A380BDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A380BDC(a1, *a2);
    sub_29A380BDC(a1, a2[1]);
    sub_29A36B7E4((a2 + 4));

    operator delete(a2);
  }
}

__n128 *sub_29A380C38(__n128 *a1, const void **a2, uint64_t a3)
{
  v5 = sub_29A37EF30(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A380CB8(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void sub_29A380CB8(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 **a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  sub_29A2496A8(a1, v6 + 2, a2);
  *(a3 + 16) = 1;
}

void sub_29A380D28(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A36B7E4(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A380D84(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_29A380E08(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(a2, v2 + 4) & 1) == 0)
      {
        if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v2 + 4, a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

const void **sub_29A380E70(const void **result, const void **a2, uint64_t a3, uint64_t a4, char a5)
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

          return sub_29A381288(result, a2);
        }

        else
        {

          return sub_29A381468(result, a2);
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
            sub_29A38184C(v8, a2);
          }

          sub_29A381618(v8, a2);
        }

        if (result != a2)
        {

          return sub_29A381DB0(result, a2, a2, a3);
        }
      }

      return result;
  }

  return result;
}

uint64_t sub_29A381288(uint64_t result, const void **a2)
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

uint64_t sub_29A381468(uint64_t result, const void **a2)
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

void sub_29A381618(uint64_t a1, const void **a2)
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

void sub_29A38184C(uint64_t a1, const void **a2)
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

uint64_t sub_29A381A90(uint64_t a1, uint64_t a2)
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

const void **sub_29A381DB0(__int128 *a1, __int128 *a2, const void **a3, uint64_t a4)
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
        sub_29A381EE0(a1, a4, v9, v12);
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
        sub_29A382128(a1, v6, a4, v14);
        v6 -= 48;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29A381EE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_29A382128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_29A38233C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_29A3824F4(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A38269C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A382664();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x492492492492493)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 50) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A38263C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B894(va);
  _Unwind_Resume(a1);
}

void *sub_29A382664()
{
  if ((atomic_load_explicit(&qword_2A14F6BF0, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C400();
  }

  return &unk_2A14F6BB8;
}

void *sub_29A38269C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A044EF0(a1, a2);
    v4 = a1[1];
    v5 = v4 + 56 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 56;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A382728(void *a1, uint64_t a2, __int128 *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * sub_29A24C888(a2, (a2 + 24), (a2 + 32)));
  v7 = v6 & *a1;
  v8 = a1[4] + 56 * v7;
  if (*(v8 + 4) < 0)
  {
    v9 = 0;
LABEL_7:
    while (sub_29A3828C4(a1, v9))
    {
      v10 = a1[4];
      v7 = v6 & *a1;
      if (*(v10 + 56 * v7 + 4) < 0)
      {
        v9 = 0;
      }

      else
      {
        LOWORD(v9) = 0;
        do
        {
          v9 = (v9 + 1);
          v7 = (v7 + 1) & *a1;
        }

        while (v9 <= *(v10 + 56 * v7 + 4));
      }
    }

    v11 = a1[4] + 56 * v7;
    if (*(v11 + 4) != -1)
    {
      sub_29A382A1C(a1, v7, v9, v6, a3);
    }

    sub_29A382998(v11, v9, v6, a3);
    ++a1[6];
  }

  else
  {
    LOWORD(v9) = 0;
    while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==((v8 + 8), a2))
    {
      v7 = *a1 & (v7 + 1);
      v9 = (v9 + 1);
      v8 = a1[4] + 56 * v7;
      if (v9 > *(v8 + 4))
      {
        goto LABEL_7;
      }
    }
  }

  return a1[4] + 56 * v7;
}

uint64_t sub_29A3828C4(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A382AEC(a1, v7);
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

        sub_29A382AEC(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_29A382998(uint64_t a1, __int16 a2, int a3, __int128 *a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v8;
  }

  sub_29A1E21F4((a1 + 32), a4 + 6);
  sub_29A1E2240((a1 + 36), a4 + 7);
  result = a4[2];
  *(a1 + 40) = result;
  *a1 = a3;
  *(a1 + 4) = a2;
  return result;
}

void sub_29A382A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v11 = *(a5 + 16);
  }

  sub_29A1E21F4(&v12, (a5 + 24));
  sub_29A1E2240(&v13, (a5 + 28));
  v14 = *(a5 + 32);
  sub_29A382CEC(a1, a2, a3, a4, __p);
}

void sub_29A382AEC(uint64_t a1, unint64_t a2)
{
  sub_29A3824F4(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v6 = bswap64(0x9E3779B97F4A7C55 * sub_29A24C888((v3 + 2), v3 + 8, (v3 + 10)));
        }

        else
        {
          v6 = *v3;
        }

        sub_29A382C0C(&v7, v7 & v6, 0, v6, (v3 + 2));
      }

      v3 += 14;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29A36B894(&v9);
}

void sub_29A382BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A36B894((v11 - 72));
  _Unwind_Resume(a1);
}

__n128 sub_29A382C0C(void *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  while (1)
  {
    v9 = a1[4] + 56 * a2;
    v10 = *(v9 + 4);
    if (v10 < a3)
    {
      break;
    }

    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  if (v10 != -1)
  {
    sub_29A24B778(a5, (v9 + 8));
  }

  v11 = *a5;
  *(v9 + 24) = *(a5 + 16);
  *(v9 + 8) = v11;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  sub_29A1DDD84((v9 + 32), (a5 + 24));
  sub_29A1DDDC0((v9 + 36), (a5 + 28));
  result = *(a5 + 32);
  *(v9 + 40) = result;
  *v9 = a4;
  *(v9 + 4) = a3;
  return result;
}

void *sub_29A382E3C(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FAFF0(&v23, v16, v17);
      v21 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v20);
      v24 = v23;
      sub_29A1FB070(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FB070(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Sdf_LsdMapEditor(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A204BD30;
  v4 = *a2;
  *(a1 + 8) = *a2;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v5 = *a3;
  *(a1 + 16) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = 0;
  v6 = sub_29A1E045C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(v6, v14);
  if (v15)
  {
    if (sub_29A185258(v14))
    {
      v7 = sub_29A187B1C(v14);
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 24), v7);
    }

    else
    {
      v12[0] = "sdf/mapEditor.cpp";
      v12[1] = "Sdf_LsdMapEditor";
      v12[2] = 56;
      v12[3] = "pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Sdf_LsdMapEditor(const SdfSpecHandle &, const TfToken &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary]";
      v13 = 0;
      (*(*a1 + 16))(__p, a1);
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "%s does not hold value of expected type.", v8);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_29A186B14(v14);
  return a1;
}

void sub_29A383154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a21);
  sub_29A184A10(v23, 0);
  if ((*v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v21);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::GetLocation(uint64_t a1)
{
  v1 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v1)
  {
    v2 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v2 = *v2;
    }
  }

  else
  {
    v2 = "";
  }

  v3 = sub_29A1E045C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v8);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v8);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("field '%s' in <%s>", v5, v6, v2, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29A383250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::GetOwner@<X0>(uint64_t result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::GetData(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Copy(uint64_t a1, const void ****a2)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 24), a2);

  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::_UpdateDataInSpec();
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::_UpdateDataInSpec(uint64_t a1)
{
  sub_29A0ECEEC(&v7, "Sdf", "Sdf_LsdMapEditor::_UpdateDataInSpec");
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)) || (v5[0] = "sdf/mapEditor.cpp", v5[1] = "_UpdateDataInSpec", v5[2] = 144, v5[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::_UpdateDataInSpec() [T = pxrInternal__aapl__pxrReserved__::VtDictionary]", v6 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_owner", 0), (result & 1) != 0))
  {
    if (pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a1 + 24)))
    {
      v2 = sub_29A1E045C((a1 + 8));
      result = pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(v2, (a1 + 16));
    }

    else
    {
      v4 = sub_29A1E045C((a1 + 8));
      result = sub_29A3836FC(v4, (a1 + 16), (a1 + 24));
    }
  }

  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Set(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 24), a2);
  sub_29A1854E8(v4, a3);

  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::_UpdateDataInSpec();
}

uint64_t *pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Insert@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::insert((a1 + 24), a2, a3);
  if (*(a3 + 16) == 1)
  {

    pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::_UpdateDataInSpec();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Erase(uint64_t a1, const void **a2)
{
  if (pxrInternal__aapl__pxrReserved__::VtDictionary::erase((a1 + 24), a2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::_UpdateDataInSpec();
  }

  return 0;
}

uint64_t *sub_29A383518@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = result[10];
  if (v3)
  {
    v4 = *result;
    v5[1] = &off_2A2044DD0;
    sub_29A1B01B8(v5, a2);
    v3(v4, v5);
    return sub_29A186B14(v5);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A3835B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A38364C@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = result[11];
  if (v3)
  {
    v4 = *result;
    sub_29A186EF4(v5, a2);
    v3(v4, v5);
    return sub_29A186B14(v5);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A3836E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3836FC(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const void ****a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2042030;
  sub_29A187864(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A38378C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_CreateMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>()
{
  operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<pxrInternal__aapl__pxrReserved__::VtDictionary>::Sdf_LsdMapEditor();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::Sdf_LsdMapEditor(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A204BE20;
  v4 = *a2;
  *(a1 + 8) = *a2;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v5 = *a3;
  *(a1 + 16) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  v6 = (a1 + 24);
  *(a1 + 40) = 0;
  v7 = sub_29A1E045C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(v7, v15);
  if (v16)
  {
    if (sub_29A24D414(v15))
    {
      v8 = sub_29A24D380(v15);
      if (v6 != v8)
      {
        sub_29A028554((a1 + 24), *v8, (v8 + 1));
      }
    }

    else
    {
      v13[0] = "sdf/mapEditor.cpp";
      v13[1] = "Sdf_LsdMapEditor";
      v13[2] = 56;
      v13[3] = "pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string, std::string>>::Sdf_LsdMapEditor(const SdfSpecHandle &, const TfToken &) [T = std::map<std::string, std::string>]";
      v14 = 0;
      (*(*a1 + 16))(__p, a1);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "%s does not hold value of expected type.", v9);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_29A186B14(v15);
  return a1;
}

void sub_29A3839F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a21);
  sub_29A01752C(v23, *v24);
  if ((*v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v21);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::GetLocation(uint64_t a1)
{
  v1 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v1)
  {
    v2 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v2 = *v2;
    }
  }

  else
  {
    v2 = "";
  }

  v3 = sub_29A1E045C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v8);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v8);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("field '%s' in <%s>", v5, v6, v2, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29A383AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::GetOwner@<X0>(uint64_t result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::GetData(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::Copy(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (v2 != a2)
  {
    sub_29A028554(v2, *a2, (a2 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::_UpdateDataInSpec();
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::_UpdateDataInSpec(uint64_t a1)
{
  sub_29A0ECEEC(&v7, "Sdf", "Sdf_LsdMapEditor::_UpdateDataInSpec");
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)) || (v5[0] = "sdf/mapEditor.cpp", v5[1] = "_UpdateDataInSpec", v5[2] = 144, v5[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string, std::string>>::_UpdateDataInSpec() [T = std::map<std::string, std::string>]", v6 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_owner", 0), (result & 1) != 0))
  {
    if (*(a1 + 40))
    {
      v2 = sub_29A1E045C((a1 + 8));
      result = sub_29A383F00(v2, (a1 + 16), (a1 + 24));
    }

    else
    {
      v4 = sub_29A1E045C((a1 + 8));
      result = pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(v4, (a1 + 16));
    }
  }

  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::Set(uint64_t a1, __int128 *a2, const std::string *a3)
{
  v5 = a2;
  v4 = sub_29A00B038((a1 + 24), a2, &unk_29B4D6118, &v5);
  std::string::operator=((v4 + 7), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::_UpdateDataInSpec();
}

uint64_t *pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::Insert(uint64_t a1, const void **a2)
{
  v2 = sub_29A0D956C((a1 + 24), a2, a2);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::_UpdateDataInSpec();
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::Erase(uint64_t a1, const void **a2)
{
  if (sub_29A0DCFB4((a1 + 24), a2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::_UpdateDataInSpec();
  }

  return 0;
}

uint64_t *sub_29A383E44@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = result[11];
  if (v3)
  {
    v4 = *result;
    v5[1] = &off_2A2044DD0;
    sub_29A1B01B8(v5, a2);
    v3(v4, v5);
    return sub_29A186B14(v5);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A383EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A383F00(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const void ***a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2049438;
  sub_29A24D9BC(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A383F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_CreateMapEditor<std::map<std::string,std::string>>()
{
  operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<std::string,std::string>>::Sdf_LsdMapEditor();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::Sdf_LsdMapEditor(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A204BF10;
  v4 = *a2;
  *(a1 + 8) = *a2;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v5 = *a3;
  *(a1 + 16) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  v6 = (a1 + 24);
  *(a1 + 40) = 0;
  v7 = sub_29A1E045C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(v7, v15);
  if (v16)
  {
    if (sub_29A325CA0(v15))
    {
      v8 = sub_29A384258(v15);
      if (v6 != v8)
      {
        sub_29A325D2C((a1 + 24), *v8, v8 + 1);
      }
    }

    else
    {
      v13[0] = "sdf/mapEditor.cpp";
      v13[1] = "Sdf_LsdMapEditor";
      v13[2] = 56;
      v13[3] = "pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>::Sdf_LsdMapEditor(const SdfSpecHandle &, const TfToken &) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>]";
      v14 = 0;
      (*(*a1 + 16))(__p, a1);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "%s does not hold value of expected type.", v9);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_29A186B14(v15);
  return a1;
}

void sub_29A3841F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a21);
  sub_29A1EF938(v23, *v24);
  if ((*v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v21);
  _Unwind_Resume(a1);
}

void **sub_29A384258(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A325CA0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A384B6C, &stru_2A2049070);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::GetLocation(uint64_t a1)
{
  v1 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v1)
  {
    v2 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v2 = *v2;
    }
  }

  else
  {
    v2 = "";
  }

  v3 = sub_29A1E045C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v8);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v8);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("field '%s' in <%s>", v5, v6, v2, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29A384384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::GetOwner@<X0>(uint64_t result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::GetData(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::Copy(uint64_t a1, uint64_t **a2)
{
  v2 = (a1 + 24);
  if (v2 != a2)
  {
    sub_29A325D2C(v2, *a2, a2 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::_UpdateDataInSpec();
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::_UpdateDataInSpec(uint64_t a1)
{
  sub_29A0ECEEC(&v7, "Sdf", "Sdf_LsdMapEditor::_UpdateDataInSpec");
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)) || (v5[0] = "sdf/mapEditor.cpp", v5[1] = "_UpdateDataInSpec", v5[2] = 144, v5[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>::_UpdateDataInSpec() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>]", v6 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_owner", 0), (result & 1) != 0))
  {
    if (*(a1 + 40))
    {
      v2 = sub_29A1E045C((a1 + 8));
      result = sub_29A38489C(v2, (a1 + 16), a1 + 24);
    }

    else
    {
      v4 = sub_29A1E045C((a1 + 8));
      result = pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(v4, (a1 + 16));
    }
  }

  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::Set(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = a2;
  v4 = sub_29A326108((a1 + 24), a2, &unk_29B4D6118, &v5);
  sub_29A2258F0(v4 + 9, a3);
  sub_29A225948(v4 + 10, a3 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::_UpdateDataInSpec();
}

uint64_t *pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::Insert(uint64_t a1, _DWORD *a2)
{
  v2 = sub_29A384C04((a1 + 24), a2, a2);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::_UpdateDataInSpec();
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::Erase(uint64_t a1)
{
  if (sub_29A384C8C((a1 + 24)))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::_UpdateDataInSpec();
  }

  return 0;
}

uint64_t *sub_29A38467C@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = result[10];
  if (v3)
  {
    v5 = *result;
    v8 = &off_2A20470E8 + 1;
    sub_29A1E21F4(&v6, a2);
    sub_29A1E2240(&v7, a2 + 1);
    v3(v5, &v6);
    return sub_29A186B14(&v6);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A38473C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3847C8@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = result[11];
  if (v3)
  {
    v5 = *result;
    v8 = &off_2A20470E8 + 1;
    sub_29A1E21F4(&v6, a2);
    sub_29A1E2240(&v7, a2 + 1);
    v3(v5, &v6);
    return sub_29A186B14(&v6);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A384888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A38489C(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2048FB8;
  sub_29A23F794(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A38492C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_CreateMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>()
{
  operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_LsdMapEditor<std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::Sdf_LsdMapEditor();
}

{
    ;
  }
}

void sub_29A3849AC(uint64_t a1)
{
  v1 = sub_29A384A2C(a1);

  operator delete(v1);
}

void sub_29A3849D8(uint64_t a1)
{
  v1 = sub_29A384A94(a1);

  operator delete(v1);
}

void sub_29A384A04(uint64_t a1)
{
  v1 = sub_29A384B00(a1);

  operator delete(v1);
}

uint64_t sub_29A384A2C(uint64_t a1)
{
  *a1 = &unk_2A204BD30;
  sub_29A184A10((a1 + 24), 0);
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

uint64_t sub_29A384A94(uint64_t a1)
{
  *a1 = &unk_2A204BE20;
  sub_29A01752C(a1 + 24, *(a1 + 32));
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

uint64_t sub_29A384B00(uint64_t a1)
{
  *a1 = &unk_2A204BF10;
  sub_29A1EF938(a1 + 24, *(a1 + 32));
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

void *sub_29A384B6C@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *a1 = result;
  a1[1] = sub_29A384BC0;
  a1[2] = &stru_2A2049070;
  return result;
}

void sub_29A384BC0(void **a1)
{
  if (a1)
  {
    sub_29A1EF938(a1, a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_29A384C04(uint64_t **a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_29A1EF804(a1, &v9);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    sub_29A23F744(v6 + 7, a3);
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t sub_29A384C8C(uint64_t **a1)
{
  v2 = sub_29A1EF6EC(a1);
  if (a1 + 1 == v2)
  {
    return 0;
  }

  v3 = v2;
  sub_29A03AFE8(a1, v2);
  sub_29A1EF8E4(v3 + 7);
  operator delete(v3);
  return 1;
}

void sub_29A384CE8()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C038, 0, "SdfNamespaceEditDetail::Error", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C038, 1, "SdfNamespaceEditDetail::Unbatched", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C038, 2, "SdfNamespaceEditDetail::Okay", 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::GetChild(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v8);
  sub_29A1DE3A4(&v7);
  sub_29A388300(&v7, a2);
  v4 = sub_29A388FA8(*(this + 3), &v7);
  if (*(this + 3) + 8 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 32);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  sub_29A3883D8(&v9, 0);
  sub_29A3886A8(&v7);
  return v5;
}

{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v8);
  sub_29A1DE3A4(&v7);
  sub_29A388300(&v7, a2);
  v4 = sub_29A388FA8(*(this + 3), &v7);
  if (*(this + 3) + 8 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 32);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  sub_29A3883D8(&v9, 0);
  sub_29A3886A8(&v7);
  return v5;
}

void sub_29A384E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A384E30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A384E30(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29A3883D8((a1 + 24), 0);
  sub_29A3886A8(a1);
  return a1;
}

void sub_29A384F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A384E30(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::FindOrCreateChild(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v13);
  sub_29A1DE3A4(&v12);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
  sub_29A388500(&v12, NameToken);
  v5 = sub_29A388FA8(*(this + 3), &v12);
  if (*(this + 3) + 8 == v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v10);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, a2, &v10, (this + 32), 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    sub_29A1DE3A4(&v10);
    v6 = *(this + 3);
    v7 = operator new(0x28uLL);
    sub_29A388574(v7, this, &v12, &v11);
    v10 = v7;
    v5 = sub_29A3890E0(v6, &v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
    sub_29A1DE3A4(&v11);
  }

  v8 = *(v5 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  sub_29A3883D8(&v14, 0);
  sub_29A3886A8(&v12);
  return v8;
}

void sub_29A385088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, int a12, int a13, __int16 a14, char a15, char a16)
{
  operator delete(v16);
  sub_29A1DCEA8(&a12);
  sub_29A384E30(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::FindOrCreateChild(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, BOOL *a4)
{
  sub_29A1E21F4(&v15, a2);
  sub_29A1E2240(v16, a2 + 1);
  v16[1] = 2;
  sub_29A3887D8(v17, &v15);
  sub_29A3886A8(&v15);
  v8 = sub_29A388FA8(*(this + 3), v17);
  v9 = *(this + 3) + 8 == v8;
  *a4 = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget((this + 32), a3, &v15);
    v10 = *(this + 3);
    v11 = operator new(0x28uLL);
    sub_29A388574(v11, this, v17, &v15);
    v14 = v11;
    v8 = sub_29A3890E0(v10, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v16);
    sub_29A1DE3A4(&v15);
  }

  v12 = *(v8 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  sub_29A1DE3A4(&v19);
  sub_29A3883D8(&v18, 0);
  sub_29A3886A8(v17);
  return v12;
}

void sub_29A385204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char a12)
{
  operator delete(v12);
  sub_29A1DCEA8(&a10);
  sub_29A384E30(&a12);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Remove(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4 && *(a1 + 8))
  {
    v10 = "sdf/namespaceEdit.cpp";
    v11 = "Remove";
    v12 = 333;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Remove(std::string *)";
    v14 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "!IsRemoved()", 0))
    {
      v8 = "Coding error: Node has no parent";
LABEL_18:
      MEMORY[0x29C2C1A60](a2, v8);
      return 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  v10 = "sdf/namespaceEdit.cpp";
  v11 = "Remove";
  v12 = 337;
  v13 = "BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Remove(std::string *)";
  v14 = 0;
  if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "_parent", 0))
  {
    v8 = "Coding error: Removing root";
    goto LABEL_18;
  }

  v4 = *(a1 + 16);
LABEL_4:
  v5 = sub_29A388FA8(*(v4 + 24), a1);
  if ((*(*(a1 + 16) + 24) + 8) == v5 && (sub_29B29C484(&v10, a2) & 1) == 0 || v5[4] != a1 && (sub_29B29C4F8(v9, a2) & 1) == 0)
  {
    return 0;
  }

  sub_29A03AFE8(*(*(a1 + 16) + 24), v5);
  v5[4] = 0;
  *(a1 + 16) = 0;
  v15 = &v17;
  v6 = 1;
  v16 = 1;
  sub_29A38922C(&v15, v5);
  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Reparent(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4)
{
  v22 = a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v18);
  sub_29A1DE3A4(&v17);
  sub_29A388300(&v17, a3);
  if (*(a1 + 24) + 8 != sub_29A388FA8(*(a1 + 24), &v17))
  {
    v12 = "sdf/namespaceEdit.cpp";
    v13 = "Reparent";
    v14 = 373;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Reparent(_Node *, const SdfPath &, std::string *)";
    v16 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "_children->find(keyNode) == _children->end()", 0) & 1) == 0)
    {
      v10 = "Coding error: Object with new path already exists";
LABEL_12:
      MEMORY[0x29C2C1A60](a4, v10);
      goto LABEL_13;
    }
  }

  if (!*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      v12 = "sdf/namespaceEdit.cpp";
      v13 = "Reparent";
      v14 = 379;
      v15 = "BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Reparent(_Node *, const SdfPath &, std::string *)";
      v16 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "!node->IsRemoved()", 0) & 1) == 0)
      {
        v10 = "Coding error: Object at path has been removed";
        goto LABEL_12;
      }
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Remove(a2, a4))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  sub_29A38881C(a2, &v17);
  sub_29A3890E0(*(a1 + 24), &v22);
  if ((v8 & 1) == 0)
  {
    v12 = "sdf/namespaceEdit.cpp";
    v13 = "Reparent";
    v14 = 393;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Reparent(_Node *, const SdfPath &, std::string *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "_children->emplace(node).second", 0);
  }

  *(v22 + 16) = a1;
  v9 = 1;
LABEL_14:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  sub_29A3883D8(&v19, 0);
  sub_29A3886A8(&v17);
  return v9;
}

void sub_29A3855C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A384E30(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::FindOrCreateOriginalPath(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  NodeAtPath = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_FindOrCreateNodeAtPath(this, a2);
  if (NodeAtPath)
  {
    return (NodeAtPath + 32);
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(0);
}

pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_FindOrCreateNodeAtPath(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_IsDeadspace(this, a2))
  {
    return 0;
  }

  v11 = 0;
  Child = (this + 8);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(a2, &v9);
  v5 = v9;
  for (i = v10; v5 != i; v5 = (v5 + 8))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(v5))
    {
      TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(v5);
      pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_UneditPath(this, TargetPath, &v12);
      Child = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::FindOrCreateChild(Child, TargetPath, &v12, &v11);
      if (v11 && *this == 1)
      {
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_AddBackpointer(this, TargetPath, Child);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      sub_29A1DE3A4(&v12);
    }

    else
    {
      Child = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::FindOrCreateChild(Child, v5);
    }
  }

  v12 = &v9;
  sub_29A1E234C(&v12);
  return Child;
}

void sub_29A385750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::GetOriginalPath(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  IsDeadspace = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_IsDeadspace(this, a2);
  if (IsDeadspace)
  {
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(IsDeadspace);
    sub_29A1E21F4(a3, v7);

    sub_29A1E2240(a3 + 1, v7 + 1);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_UneditPath(this, a2, a3);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_IsDeadspace(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = (this + 56);
  if (*(this + 7))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  if (v2 == *(this + 6))
  {
    return 0;
  }

  v3 = *v2;
  if (*v2)
  {
    do
    {
      v4 = v3;
      v3 = v3[1];
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

    while (v5);
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (v4 + 28));
}

void pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_UneditPath(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = this + 8;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(a2, &v10);
  v6 = v10;
  v7 = v11;
  if (v10 == v11)
  {
    v9 = v5;
LABEL_6:
    v12 = &v10;
    sub_29A1E234C(&v12);
    sub_29A1E21F4(a3, v9 + 8);
    sub_29A1E2240(a3 + 1, v9 + 9);
  }

  else
  {
    while (1)
    {
      Child = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::GetChild(v5, v6);
      v9 = Child;
      if (!Child)
      {
        break;
      }

      v6 = (v6 + 8);
      v5 = Child;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v6, &v12);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, &v12, (v5 + 32), 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
    sub_29A1DE3A4(&v12);
    v12 = &v10;
    sub_29A1E234C(&v12);
  }
}

void sub_29A3859E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_29A1DCEA8(&a12);
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::Apply(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *a1, uint64_t a2, uint64_t a3)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 8)))
  {
    if (*a2 == *(a2 + 8))
    {
      return 1;
    }

    else
    {

      return pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Move(a1, a2, (a2 + 8), a3);
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Remove(a1, a2, a3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Remove(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  NodeAtPath = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_GetNodeAtPath(a1, a2);
  if (NodeAtPath)
  {
    v7 = NodeAtPath;
    result = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Remove(NodeAtPath, a3);
    if (!result)
    {
      return result;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v7 + 36));
    sub_29A1DE3A4((v7 + 32));
    sub_29A3883D8((v7 + 24), 0);
    sub_29A3886A8(v7);
    operator delete(v7);
  }

  else if ((sub_29B29C56C(v9, a3, &v10) & 1) == 0)
  {
    return v10;
  }

  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_RemoveBackpointers(a1, a2);
  }

  pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_AddDeadspace(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Move(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4)
{
  NodeAtPath = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_GetNodeAtPath(a1, a2);
  if (!NodeAtPath && (sub_29B29C5F8(v12, a4) & 1) == 0)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, v11);
  v9 = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_GetNodeAtPath(a1, v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
  sub_29A1DE3A4(v11);
  if (!v9 && (sub_29B29C66C(v11, a4) & 1) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Reparent(v9, NodeAtPath, a3, a4);
  if (result)
  {
    if (*a1 == 1)
    {
      pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_FixBackpointers(a1, a2, a3);
    }

    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_MoveDeadspaceDescendants(a1, a2, a3);
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_AddDeadspace(a1, a2);
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_RemoveDeadspace(a1, a3);
    return 1;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_GetNodeAtPath(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  Child = (this + 8);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(a2, v6);
  v3 = v6[0];
  v4 = v6[1];
  while (v3 != v4)
  {
    Child = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::GetChild(Child, v3);
    if (!Child)
    {
      break;
    }

    v3 = (v3 + 8);
  }

  v7 = v6;
  sub_29A1E234C(&v7);
  return Child;
}

void sub_29A385D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_AddBackpointer(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = sub_29A389294((a1 + 72), a2, &unk_29B4D6118, &v6);
  return sub_29A0F2BE4(v3 + 5, &v5, &v5);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_RemoveBackpointers(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = (this + 80);
  if (*(this + 10))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v3 = (this + 80);
  v4 = (this + 72);

  return sub_29A389424(v4, v3, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_AddDeadspace(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*a2 != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this) || (result = sub_29B29C6E0(v3), (result & 1) != 0))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_FixBackpointers(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = (this + 80);
  if (*(this + 10))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  sub_29A389424(this + 9, this + 10, this + 10);
  if (*v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v6 = v13;
  if (v13 != v14)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, (v6 + 4), a2, a3, 1);
      v12 = &v11;
      v7 = sub_29A38948C(v5 - 1, &v11, &unk_29B4D6118, &v12);
      sub_29A13F534(v7 + 5, (v6 + 5));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
      sub_29A1DE3A4(&v11);
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

    while (v9 != v14);
  }

  sub_29A388F00(&v13, v14[0]);
}

void pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_MoveDeadspaceDescendants(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (*a2 != *v6 || (v6 = sub_29B29C728(v21), (v6 & 1) != 0))
  {
    if (*a3 != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6) || (sub_29B29C770(v20) & 1) != 0)
    {
      v8 = *(this + 6);
      v7 = this + 48;
      v9 = sub_29A38653C(v8, v7 + 1, a2, &v17);
      v10 = v9;
      v12 = v11;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      if (v9 != v11)
      {
        v13 = v9;
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v22, (v13 + 28), a2, a3, 1);
          sub_29A377BD0(&v17, &v22);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
          sub_29A1DE3A4(&v22);
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v13[2];
              v16 = *v15 == v13;
              v13 = v15;
            }

            while (!v16);
          }

          v13 = v15;
        }

        while (v15 != v12);
      }

      sub_29A389698(v7, v10, v12);
      if (v17 != v18)
      {
        std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
      }

      v22 = &v17;
      sub_29A1E234C(&v22);
    }
  }
}