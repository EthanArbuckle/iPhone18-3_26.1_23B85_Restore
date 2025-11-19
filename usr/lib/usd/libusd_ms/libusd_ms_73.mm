uint64_t *sub_29A4274B8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_29A427530(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = bswap64(0x9E3779B97F4A7C55 * a2[9]);
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
        if (pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator==(v9 + 2, a2))
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

void sub_29A4279C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4279E0(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A4279E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A130C(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29A427A40(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29A427BC4(a1);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
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

    sub_29A0D0518(a1, v11);
    v12 = sub_29A427C04(a1, a2, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v12;
    return;
  }

  v13 = *(a1 + 8);
  if (a4 > (v13 - v8) >> 4)
  {
    v14 = (v13 + a2 - v8);
    if (v13 != v8)
    {
      v15 = a2;
      v16 = *a1;
      do
      {
        v17 = *v15;
        v15 += 2;
        *v16 = v17;
        v16 += 2;
        sub_29B28FD1C((v8 + 8), a2 + 1);
        v8 = v16;
        a2 = v15;
      }

      while (v15 != v14);
      v13 = *(a1 + 8);
    }

    v12 = sub_29A427C04(a1, v14, a3, v13);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    v18 = a2;
    v19 = *a1;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19 = v20;
      v19 += 2;
      sub_29B28FD1C((v8 + 8), a2 + 1);
      v8 = v19;
      a2 = v18;
    }

    while (v18 != a3);
    v8 = v19;
  }

  sub_29A0ED2EC(a1, v8);
}

void sub_29A427BC4(uint64_t *a1)
{
  if (*a1)
  {
    sub_29A0ED2EC(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_29A427C04(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_29A427C8C(v7);
  return v4;
}

uint64_t sub_29A427C8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A0ED3E8(a1);
  }

  return a1;
}

void sub_29A427CC4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A426AF8(a1, *(a1 + 16));
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

uint64_t sub_29A427D20(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

  return sub_29A427C8C(v6);
}

uint64_t sub_29A427DA4(uint64_t *a1, __int128 *a2)
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[16 * v7];
  v10 = *a2;
  *v9 = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1u, memory_order_relaxed);
  }

  *&v19 = v9 + 16;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A427D20(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A0ED41C(&v17);
  return v16;
}

void sub_29A427EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A427EC0(void *a1, void *a2)
{
  result = sub_29A427530(a1, a2);
  if (result)
  {
    sub_29A427EF8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A427EF8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2A1480(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void *sub_29A427F58(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
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

void sub_29A427FB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A427FCC(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a2));
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
        v14 = i[1];
        if (v14 == v8)
        {
          v15 = sub_29A0ECB5C((i + 2));
          if (v15 == sub_29A0ECB5C(a2))
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

  v16 = operator new(0x38uLL);
  i = v16;
  *v16 = 0;
  v16[1] = v8;
  v17 = (*a4)[1];
  v16[2] = **a4;
  v16[3] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
  }

  v16[4] = 0;
  v16[5] = 0;
  v16[6] = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v9 || (v19 * v9) < v18)
  {
    v20 = 1;
    if (v9 >= 3)
    {
      v20 = (v9 & (v9 - 1)) != 0;
    }

    v21 = v20 | (2 * v9);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_40:
    *v25 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v26 >= v9)
      {
        v26 %= v9;
      }
    }

    else
    {
      v26 &= v9 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return i;
}

void sub_29A428240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A428258(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A428258(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A1408(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A4282B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = a1; i != a2; i += 16)
  {
    v6 = sub_29A0ECB5C(i);
    if (v6 == sub_29A0ECB5C(a3))
    {
      break;
    }
  }

  return i;
}

uint64_t *sub_29A42831C(void *a1, uint64_t a2)
{
  result = sub_29A0ECC48(a1, a2);
  if (result)
  {
    sub_29A428354(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A428354(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2A1408(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29A4283B4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2A130C(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29A428414(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29A428530(a1);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
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

    sub_29A0D0518(a1, v11);
    result = sub_29A428570(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    v14 = (a2 + (v13 >> 1));
    sub_29A428618(&v16, a2, v14, v8);
    result = sub_29A428570(a1, v14, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  sub_29A428618(&v17, a2, a3, v8);
  return sub_29A38A808(a1, v15);
}

void sub_29A428530(uint64_t *a1)
{
  if (*a1)
  {
    sub_29A38A808(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_29A428570(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
      sub_29A321960(v4, v6++);
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A38A8CC(v8);
  return v4;
}

uint64_t *sub_29A428618(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29A321960(&v10, v5);
      v7 = *(a4 + 8);
      *a4 = v10;
      *(&v10 + 1) = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = *(&v10 + 1);
        *&v10 = 0;
        if (*(&v10 + 1) && atomic_fetch_add_explicit((*(&v10 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v8 + 8))(v8);
        }
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_29A42897C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4279E0(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_29A428994(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
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

  sub_29A428C3C(a1, v10, a4, &v28);
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

void sub_29A428C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A428CE4(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A428C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x40uLL);
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
  v9[7] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A428CE4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A426C3C(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A428D40(void *a1, uint64_t a2)
{
  result = sub_29A0ECC48(a1, a2);
  if (result)
  {
    sub_29A428D78(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A428D78(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2A1384(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29A428DD8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A1384(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A428E38(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a2));
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
        v14 = i[1];
        if (v14 == v8)
        {
          v15 = sub_29A0ECB5C((i + 2));
          if (v15 == sub_29A0ECB5C(a2))
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

  v16 = operator new(0x38uLL);
  i = v16;
  *v16 = 0;
  v16[1] = v8;
  v17 = (*a4)[1];
  v16[2] = **a4;
  v16[3] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
  }

  v16[5] = 0;
  v16[6] = 0;
  v16[4] = v16 + 5;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v9 || (v19 * v9) < v18)
  {
    v20 = 1;
    if (v9 >= 3)
    {
      v20 = (v9 & (v9 - 1)) != 0;
    }

    v21 = v20 | (2 * v9);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_40:
    *v25 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v26 >= v9)
      {
        v26 %= v9;
      }
    }

    else
    {
      v26 &= v9 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return i;
}

void sub_29A4290B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A428DD8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4290C8(uint64_t *a1, const void **a2, const void ***a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A347A54(a1, a2, a3);
  return a1;
}

void *sub_29A429118(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = v12 >> 2;
      v14 = result[4];
      v29 = v3[4];
      v15 = sub_29A012C48(v14, v12);
      v17 = &v15[24 * v13];
      v18 = *(v3 + 1);
      v19 = v18;
      v20 = v17;
      v21 = *(&v18 + 1) - v18;
      if (*(&v18 + 1) != v18)
      {
        v20 = &v17[v21];
        v22 = &v15[24 * v13];
        do
        {
          v23 = *v19;
          *(v22 + 2) = *(v19 + 2);
          *v22 = v23;
          v22 += 24;
          *(v19 + 1) = 0;
          *(v19 + 2) = 0;
          *v19 = 0;
          v19 = (v19 + 24);
          v21 -= 24;
        }

        while (v21);
        v18 = *(v3 + 1);
      }

      v26 = *v3;
      *v3 = v15;
      v3[1] = v17;
      v27 = v18;
      v24 = v3[3];
      v3[2] = v20;
      v3[3] = &v15[24 * v16];
      v28 = v24;
      result = sub_29A01FF14(&v26);
      v4 = v3[2];
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
      v7 = -3 * (v6 >> 1);
      result = sub_29A2C97CC(&v26, v5, v4, v5 - 24 * (v6 >> 1));
      v4 = v8;
      v3[1] += 8 * v7;
      v3[2] = v8;
    }
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(v4, *a2, *(a2 + 1));
  }

  else
  {
    v25 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v25;
  }

  v3[2] += 24;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_Node::SetArc(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) >= 0x10000u)
  {
    sub_29B2A191C(v8);
  }

  if (*(a2 + 52) >= 0x10000u)
  {
    sub_29B2A1964(v8);
  }

  if ((*(a2 + 16) + 1) >= 0x10000)
  {
    sub_29B2A19AC(v8);
  }

  if ((*(a2 + 32) + 1) >= 0x10000)
  {
    sub_29B2A19F4(v8);
  }

  *(a1 + 40) = *a2;
  *(a1 + 36) = *(a2 + 48);
  *(a1 + 38) = *(a2 + 52);
  v4 = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 26) = *(a2 + 32);
  if (!*(a2 + 8) || v4 == -1)
  {
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::Identity(v8);
    sub_29A42B700((a1 + 8), v8);
    sub_29A42B700((a1 + 16), (a1 + 8));
  }

  else
  {
    sub_29A42B700((a1 + 16), (a2 + 40));
    MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot((a2 + 8));
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(MapToRoot, (a1 + 16), v6, v8);
    sub_29A42B700((a1 + 8), v8);
  }

  if (v8[0])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8[0], v7);
  }
}

void sub_29A4293A8(_Unwind_Exception *exception_object, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::New(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2)
{
  v2 = a2;
  sub_29A0ECEEC(&v5, "Pcp", "PcpPrimIndex_Graph");
  v4 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::PcpPrimIndex_Graph(v4, this, v2);
}

void sub_29A429444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_29A0E9CEC(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::New@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_29A0ECEEC(&v6, "Pcp", "PcpPrimIndex_Graph");
  v4 = operator new(0x40uLL);
  result = sub_29A42B744(v4, *a1);
  *a2 = v4;
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return result;
}

void sub_29A4294E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_29A0E9CEC(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::PcpPrimIndex_Graph(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2, int a3)
{
  *(this + 2) = 1;
  *this = &unk_2A204E248;
  v6 = operator new(0x30uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A204E280;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = 0;
  *(this + 4) = 0;
  *(this + 2) = v6 + 3;
  *(this + 3) = v6;
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (a3)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *(this + 56) = *(this + 56) & 0xF0 | v7;
  v11 = 0;
  v12 = -1;
  v13 = 0;
  v14 = -1;
  v10 = 0;
  v15[0] = 0;
  v15[1] = 0;
  pxrInternal__aapl__pxrReserved__::PcpMapExpression::Identity(&v9);
  sub_29A42B700(v15, &v9);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v8);
  }

  pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNode(this, a2);
}

void sub_29A42961C(_Unwind_Exception *a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, pxrInternal__aapl__pxrReserved__ *a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, pxrInternal__aapl__pxrReserved__ *a15)
{
  if (a15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a15, a2);
  }

  sub_29A42B9F8(&a10);
  v17 = *(v15 + 3);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  pxrInternal__aapl__pxrReserved__::TfSimpleRefBase::~TfSimpleRefBase(v15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNode(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 48))
  {
    v5 = sub_29A42C668(a1 + 32, (a2 + 8));
  }

  else
  {
    sub_29A42C798(*(a1 + 40), (a2 + 8));
    v5 = v4 + 12;
    *(a1 + 40) = v4 + 12;
  }

  *(a1 + 40) = v5;
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (v7 >= *(v6 + 16))
  {
    v8 = sub_29A42C97C(*(a1 + 16));
  }

  else
  {
    *(v7 + 36) = 0;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = -1;
    v8 = v7 + 48;
    *(v7 + 32) = -1;
  }

  *(v6 + 8) = v8;
  *(a1 + 56) &= ~4u;
  *(*(*(a1 + 16) + 8) - 48) = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::SetIsInstanceable(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFD | v2;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeUsingSite(uint64_t result, uint64_t *a2)
{
  v2 = **(result + 16);
  v3 = *(*(result + 16) + 8);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if ((*(v2 + 42) & 2) == 0)
    {
      v11 = *(result + 32) + v6;
      if ((*(v11 + 10) & 2) == 0 && *v2 == v10 && *v11 == v9)
      {
        break;
      }
    }

    ++v7;
    v2 += 48;
    v6 += 12;
    if (v8 == v7)
    {
      return 0;
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexesForRange(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 56) & 4) == 0)
  {
    sub_29B2A1A3C(&v18);
  }

  v4 = **(a1 + 16);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 16) + 8) - v4) >> 4);
  if (a2 <= 6)
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 != 6)
    {
LABEL_10:
      v7 = *(v4 + 28);
      v6 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 16) + 8) - v4) >> 4);
      if (v7 != 0xFFFF)
      {
        while (1)
        {
          v8 = *(v4 + 48 * v7 + 40);
          if (a2 >= 6)
          {
            v18 = "pcp/primIndex_Graph.cpp";
            v19 = "_GetArcTypeForRangeType";
            v20 = 224;
            v21 = "PcpArcType pxrInternal__aapl__pxrReserved__::_GetArcTypeForRangeType(const PcpRangeType)";
            v22 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Unhandled range type");
            v9 = 0;
          }

          else
          {
            v9 = dword_29B48F114[a2];
          }

          v6 = v7;
          v10 = *(a1 + 16);
          if (v9 == v8)
          {
            break;
          }

          v4 = *v10;
          v7 = *(*v10 + 48 * v7 + 34);
          if (v7 == 0xFFFF)
          {
            return 0xAAAAAAAAAAAAAAABLL * ((v10[1] - v4) >> 4);
          }
        }

        v13 = *v10;
        for (i = *(*v10 + 48 * v7 + 34); i != 0xFFFF; i = *(v13 + 48 * i + 34))
        {
          v15 = *(v13 + 48 * i + 40);
          if (a2 >= 6)
          {
            v18 = "pcp/primIndex_Graph.cpp";
            v19 = "_GetArcTypeForRangeType";
            v20 = 224;
            v21 = "PcpArcType pxrInternal__aapl__pxrReserved__::_GetArcTypeForRangeType(const PcpRangeType)";
            v22 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Unhandled range type");
            v16 = 0;
          }

          else
          {
            v16 = dword_29B48F114[a2];
          }

          if (v16 != v15)
          {
            break;
          }

          v13 = **(a1 + 16);
        }
      }

      return v6;
    }

    return 0;
  }

  if (a2 == 7)
  {
    return 1;
  }

  if (a2 != 8)
  {
    if (a2 == 9)
    {
      v18 = "pcp/primIndex_Graph.cpp";
      v19 = "GetNodeIndexesForRange";
      v20 = 242;
      v21 = "std::pair<size_t, size_t> pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexesForRange(PcpRangeType) const";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid range type specified");
      return v5;
    }

    goto LABEL_10;
  }

  v11 = *(v4 + 28);
  if (v11 == 0xFFFF)
  {
    return 0;
  }

  while (1)
  {
    v12 = v4 + 48 * v11;
    if (*(v12 + 40) == 5)
    {
      break;
    }

    v11 = *(v12 + 34);
    if (v11 == 0xFFFF)
    {
      return 0;
    }
  }

  return 0;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexForNode(uint64_t a1, void *a2)
{
  if (*a2 == a1)
  {
    return a2[1];
  }

  else
  {
    return 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexesForSubtreeRange(uint64_t a1, void *a2)
{
  if (*a2 != a1)
  {
    return 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4);
  }

  result = a2[1];
  v4 = **(a1 + 16);
  v5 = result;
  do
  {
    v5 = *(v4 + 48 * v5 + 30);
  }

  while (v5 != 0xFFFF);
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::Finalize(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this)
{
  if ((*(this + 56) & 4) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    if ((pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeStrengthOrderIndexMapping(this, &v5) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(this, &v5);
    }

    __p = 0;
    v3 = 0;
    v4 = 0;
    if (pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeEraseCulledNodeIndexMapping(this, &__p))
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(this, &__p);
    }

    *(this + 56) |= 4u;
    if (__p)
    {
      v3 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      v6 = v5;
      operator delete(v5);
    }
  }
}

void sub_29A429C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeStrengthOrderIndexMapping(uint64_t a1, uint64_t *a2)
{
  sub_29A00BF50(a2, 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4));
  v5 = 0;
  return pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeStrengthOrderIndexMappingRecursively(a1, 0, &v5, a2);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *a1, char **a2)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePool(a1);
  v37 = *(a1 + 2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v37[1] - *v37) >> 4);
  if (v4 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 5) - *(a1 + 4)) >> 2))
  {
    sub_29B2A1A84();
    v4 = v38;
  }

  v6 = *a2;
  v5 = a2[1];
  if (v4 != (v5 - *a2) >> 3)
  {
    *&v40 = "pcp/primIndex_Graph.cpp";
    *(&v40 + 1) = "_ApplyNodeIndexMapping";
    v41 = 360;
    v42 = "void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(const std::vector<size_t> &)";
    v43 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "nodeIndexMap.size() == oldNodes.size()", 0);
    v6 = *a2;
    v5 = a2[1];
  }

  if (v6 == v5)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v37[1] - *v37) >> 4);
    v12 = v13;
  }

  else
  {
    v7 = 0;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 8;
      if (v9 == 0xFFFF)
      {
        ++v7;
      }
    }

    while (v8 != v5);
    v11 = *v37;
    v10 = v37[1];
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v37) >> 4);
    v13 = v12 - v7;
    if (v12 < v7)
    {
      *&v40 = "pcp/primIndex_Graph.cpp";
      *(&v40 + 1) = "_ApplyNodeIndexMapping";
      v41 = 368;
      v42 = "void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(const std::vector<size_t> &)";
      v43 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "newNumNodes <= oldNumNodes", 0);
      v6 = *a2;
      v5 = a2[1];
      v7 = 1;
    }

    v14 = v5 - v6;
    if (v14)
    {
      v15 = 0;
      v16 = v14 >> 3;
      do
      {
        v17 = *&(*a2)[8 * v15];
        if (v17 >= v13 && v17 != 0xFFFF)
        {
          *&v40 = "pcp/primIndex_Graph.cpp";
          *(&v40 + 1) = "_ConvertOldToNewIndex";
          v41 = 376;
          v42 = "pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(const std::vector<size_t> &)::_ConvertOldToNewIndex::_ConvertOldToNewIndex(const std::vector<size_t> &, size_t)";
          v43 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "_table[i] < numNewNodes || _table[i] == _Node::_invalidNodeIndex", 0);
        }

        ++v15;
      }

      while (v16 != v15);
    }

    if (v7)
    {
      if (v10 != v11)
      {
        v19 = 0;
        v20 = 24;
        v21 = *(a1 + 2);
        while (1)
        {
          if (v19 == 0xFFFF)
          {
            v22 = *v21;
            v23 = (*v21 + 3145680);
          }

          else
          {
            v22 = *v21;
            if (*&(*a2)[8 * v19] != 0xFFFFLL)
            {
              v27 = *(v22 + v20);
              if (v27 != 0xFFFF && *&(*a2)[8 * v27] == 0xFFFFLL)
              {
                *&v40 = "pcp/primIndex_Graph.cpp";
                *(&v40 + 1) = "_ApplyNodeIndexMapping";
                v41 = 414;
                v42 = "void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ApplyNodeIndexMapping(const std::vector<size_t> &)";
                v43 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "!parentWillBeErased", 0);
              }

              goto LABEL_38;
            }

            v23 = (v22 + v20 - 24);
          }

          v24 = v23[16];
          v25 = v23[17];
          if (v24 != 0xFFFF)
          {
            *(v22 + 48 * v23[16] + 34) = v25;
          }

          if (v25 != 0xFFFF)
          {
            *(v22 + 48 * v25 + 32) = v24;
          }

          v26 = v22 + 48 * v23[12];
          if (v19 == *(v26 + 28))
          {
            *(v26 + 28) = v25;
          }

          if (v19 == *(v26 + 30))
          {
            *(v26 + 30) = v23[16];
          }

LABEL_38:
          ++v19;
          v20 += 48;
          if (v12 == v19)
          {
            goto LABEL_42;
          }
        }
      }

      v12 = 0;
    }
  }

LABEL_42:
  sub_29A42BB14(&v40, v13);
  sub_29A42BC80(&v38, v13);
  if (v12)
  {
    v28 = 0;
    v29 = 0;
    v30 = 8;
    do
    {
      if (v29 != 0xFFFF)
      {
        v31 = *&(*a2)[8 * v29];
        if (v31 != 0xFFFF)
        {
          sub_29A42A58C((v40 + 48 * v31), (*v37 + v28));
        }
      }

      ++v29;
      v28 += 48;
      v30 += 12;
    }

    while (v12 != v29);
  }

  v32 = *(a1 + 2);
  v33 = *v32;
  *v32 = v40;
  v40 = v33;
  v34 = *(v32 + 2);
  *(v32 + 2) = v41;
  v41 = v34;
  v35 = *(a1 + 2);
  *(a1 + 2) = v38;
  v38 = v35;
  v36 = *(a1 + 6);
  *(a1 + 6) = v39;
  v39 = v36;
  v44 = &v38;
  sub_29A42B9F8(&v44);
  *&v38 = &v40;
  sub_29A42BBAC(&v38);
}

void sub_29A42A250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A42BBAC(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeEraseCulledNodeIndexMapping(void *a1, void *a2)
{
  v4 = a1[2];
  v6 = *v4;
  v5 = v4[1];
  v7 = (v5 - *v4) >> 4;
  sub_29A42CF94(__p, 0xAAAAAAAAAAAAAAABLL * ((a1[5] - a1[4]) >> 2));
  v9 = a1[4];
  v8 = a1[5];
  v10 = v8 - v9;
  if (v8 != v9)
  {
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
    v13 = __p[0];
    v14 = (v9 + 10);
    do
    {
      v15 = *v14;
      v14 += 12;
      v16 = v11 >> 6;
      v17 = 1 << v11;
      if ((v15 & 2) != 0)
      {
        v18 = v13[v16] | v17;
      }

      else
      {
        v18 = v13[v16] & ~v17;
      }

      v13[v16] = v18;
      ++v11;
    }

    while (v12 != v11);
  }

  v19 = 0xAAAAAAAAAAAAAAABLL * v7;
  v20 = __p[0];
  if (v5 != v6)
  {
    v21 = 0;
    v22 = *a1[2];
    if (v19 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v19;
    }

    do
    {
      if (*(v22 + 48 * v21 + 26) != -1)
      {
        v24 = 0;
        v25 = v21;
        do
        {
          v26 = (1 << v25) & *(v20 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8));
          v27 = (v26 == 0) | v24;
          if (v26 && (v24 & 1) != 0)
          {
            if (v25 != 0xFFFF)
            {
              for (i = v25; i != 0xFFFF; i = *(v22 + 48 * i + 24))
              {
                v29 = v20[i >> 6];
                if ((v29 & (1 << i)) == 0)
                {
                  break;
                }

                v20[i >> 6] = v29 & ~(1 << i);
              }
            }

            v27 = v24;
          }

          v30 = v22 + 48 * v25;
          v25 = *(v30 + 26);
          v31 = *(v30 + 24);
          v24 = v27;
        }

        while (v25 != v31);
      }

      ++v21;
    }

    while (v21 != v23);
    v20 = __p[0];
  }

  v39 = v20;
  v40 = 0;
  v32 = sub_29A42D03C(&v39, __p[1]);
  if (v32)
  {
    sub_29A00BF50(a2, v19);
    v33 = __p[0];
    if (v5 != v6)
    {
      v34 = 0;
      v35 = 0;
      if (v19 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v19;
      }

      do
      {
        if ((*&v33[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v34))
        {
          *(*a2 + 8 * v34) = 0xFFFFLL;
          ++v35;
        }

        else
        {
          *(*a2 + 8 * v34) = v34 - v35;
        }

        ++v34;
      }

      while (v36 != v34);
      goto LABEL_35;
    }
  }

  else
  {
    v33 = __p[0];
  }

  if (v33)
  {
LABEL_35:
    operator delete(v33);
  }

  return v32 != 0;
}

void sub_29A42A498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePool(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this)
{
  v2 = *(this + 3);
  if (!v2 || *(v2 + 8))
  {
    v3 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
    if (v3)
    {
      v4 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_DetachSharedNodePool", 0);
    }

    else
    {
      v4 = 0;
    }

    v8 = v4;
    v9 = v4 != 0;
    sub_29A42BD64(*(this + 2), &v7);
    v5 = v7;
    v7 = 0uLL;
    v6 = *(this + 3);
    *(this + 1) = v5;
    if (v6)
    {
      sub_29A014BEC(v6);
      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }
    }

    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4 != 0, v4);
    }
  }
}

void sub_29A42A578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void sub_29A42A58C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  *a1 = *a2;
  *a2 = v2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_RemoveRef();
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::AppendChildNameToAllSites(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v9);
  v4 = *(this + 4);
  for (i = *(this + 5); v4 != i; v4 += 3)
  {
    if (*v4 != v9)
    {
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v4, NameToken, &v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    sub_29A2258F0(v4, a2);
    sub_29A225948(v4 + 1, a2 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
  return sub_29A1DE3A4(&v9);
}

void sub_29A42A734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::InsertChildNode(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29A0ECEEC(&v17, "Pcp", "PcpPrimIndex_Graph");
  if (!*a4)
  {
    *&v13 = "pcp/primIndex_Graph.cpp";
    *(&v13 + 1) = "InsertChildNode";
    v14 = 495;
    v15 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::InsertChildNode(const PcpNodeRef &, const PcpLayerStackSite &, const PcpArc &, PcpErrorBasePtr *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "arc.type != PcpArcTypeRoot", 0);
  }

  if (*(a4 + 16) != a2[1] || *(a4 + 8) != *a2)
  {
    *&v13 = "pcp/primIndex_Graph.cpp";
    *(&v13 + 1) = "InsertChildNode";
    v14 = 496;
    v15 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::InsertChildNode(const PcpNodeRef &, const PcpLayerStackSite &, const PcpArc &, PcpErrorBasePtr *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "arc.parent == parent", 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 2) + 8) - **(a1 + 2)) >> 4) >= 0xFFFF)
  {
    if (!a5)
    {
      goto LABEL_17;
    }

    pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::New(3, &v13);
    goto LABEL_11;
  }

  if (*(a4 + 52) < 0x10000)
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePoolForNewNodes(a1, -1);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNode(a1, a3);
  }

  if (a5)
  {
    pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::New(5, &v13);
LABEL_11:
    v10 = v13;
    v13 = 0uLL;
    v11 = *(a5 + 8);
    *a5 = v10;
    if (v11)
    {
      sub_29A014BEC(v11);
      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }
    }

    a5 = 0;
  }

LABEL_17:
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }

  return a5;
}

void sub_29A42A928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePoolForNewNodes(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, uint64_t a2)
{
  v4 = *(this + 3);
  if (!v4 || *(v4 + 8))
  {
    v5 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
    if (v5)
    {
      v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_DetachSharedNodePoolForNewNodes", 0);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(this + 2);
    v9 = *v7;
    v8 = v7[1];
    v10 = operator new(0x30uLL);
    v11 = v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
    v10->__shared_owners_ = 0;
    v10->__shared_weak_owners_ = 0;
    v10->__vftable = &unk_2A204E280;
    v10[1].__vftable = 0;
    v13 = &v10[1];
    v10[1].__shared_owners_ = 0;
    v10[1].__shared_weak_owners_ = 0;
    v14 = v12 >> 2;
    if (v12 >> 2 <= 1)
    {
      v14 = 1;
    }

    if (a2 != -1)
    {
      v14 = a2;
    }

    sub_29A42B308(&v10[1].__vftable, v14 + v12);
    sub_29A42C1D8(v13, *v13, **(this + 2), *(*(this + 2) + 8), 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 8) - **(this + 2)) >> 4));
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *(this + 3);
    *(this + 2) = v13;
    *(this + 3) = v11;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    sub_29A014BEC(v11);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v6 != 0, v6);
    }
  }
}

void sub_29A42AAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A014BEC(v9);
  sub_29A0E9CEC(&a9);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_InsertChildInStrengthOrder(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, unint64_t a2, unint64_t a3)
{
  v6 = *(this + 2);
  if (0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4) <= a2)
  {
    v29 = "pcp/primIndex_Graph.cpp";
    v30 = "_InsertChildInStrengthOrder";
    v31 = 560;
    v32 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_InsertChildInStrengthOrder(size_t, size_t)";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "parentNodeIdx < _GetNumNodes()", 0);
    v6 = *(this + 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4) <= a3)
  {
    v29 = "pcp/primIndex_Graph.cpp";
    v30 = "_InsertChildInStrengthOrder";
    v31 = 561;
    v32 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_InsertChildInStrengthOrder(size_t, size_t)";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "childNodeIdx < _GetNumNodes()", 0);
    v6 = *(this + 2);
  }

  v7 = *v6;
  v8 = *v6 + 48 * a2;
  v28 = this;
  v9 = *(v8 + 28);
  if (v9 == 0xFFFF)
  {
    if (*(v8 + 30) != -1)
    {
      sub_29B2A1B40(&v29);
    }

    *(v8 + 30) = a3;
    goto LABEL_13;
  }

  v10 = v7 + 48 * a3;
  v11 = sub_29A42B234(&v28, a3, v9);
  v12 = *(v8 + 30);
  if (v11)
  {
    if (v12 == 0xFFFF)
    {
      sub_29B2A1AF8(&v29);
    }

    v13 = *(v8 + 28);
    v14 = *v6;
    *(v10 + 34) = v13;
    *(v14 + 48 * v13 + 32) = a3;
LABEL_13:
    *(v8 + 28) = a3;
    return this;
  }

  if (sub_29A42B234(&v28, a3, v12))
  {
    v16 = *(v8 + 28);
    if (v16 != 0xFFFF)
    {
      while (1)
      {
        v17 = v16;
        v18 = sub_29A42B234(&v28, a3, v16);
        v19 = *v6;
        if (v18)
        {
          break;
        }

        v16 = *(v19 + 48 * v17 + 34);
        if (v16 == 0xFFFF)
        {
          return this;
        }
      }

      v22 = v19 + 48 * v17;
      v25 = *(v22 + 32);
      v23 = (v22 + 32);
      v24 = v25;
      if (v25 == 0xFFFF)
      {
        v29 = "pcp/primIndex_Graph.cpp";
        v30 = "_InsertChildInStrengthOrder";
        v31 = 599;
        v32 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_InsertChildInStrengthOrder(size_t, size_t)";
        v33 = 0;
        v27 = v23;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "PREV_SIBLING(nextNode) != _Node::_invalidNodeIndex", 0);
        v23 = v27;
        v24 = *v27;
      }

      v26 = *v6;
      *(v10 + 32) = v24;
      *(v10 + 34) = v17;
      *v23 = a3;
      *(v26 + 48 * v24 + 34) = a3;
    }
  }

  else
  {
    v20 = *(v8 + 30);
    v21 = *v6;
    *(v10 + 32) = v20;
    *(v21 + 48 * v20 + 34) = a3;
    *(v8 + 30) = a3;
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::InsertChildSubgraph(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_29A0ECEEC(&v25, "Pcp", "PcpPrimIndex_Graph");
  if (!*a4)
  {
    *&v21 = "pcp/primIndex_Graph.cpp";
    *(&v21 + 1) = "InsertChildSubgraph";
    v22 = 532;
    v23 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::InsertChildSubgraph(const PcpNodeRef &, const PcpPrimIndex_GraphRefPtr &, const PcpArc &, PcpErrorBasePtr *)";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "arc.type != PcpArcTypeRoot", 0);
  }

  if (*(a4 + 16) != a2[1] || *(a4 + 8) != *a2)
  {
    *&v21 = "pcp/primIndex_Graph.cpp";
    *(&v21 + 1) = "InsertChildSubgraph";
    v22 = 533;
    v23 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::InsertChildSubgraph(const PcpNodeRef &, const PcpPrimIndex_GraphRefPtr &, const PcpArc &, PcpErrorBasePtr *)";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "arc.parent == parent", 0);
  }

  v10 = *(a1 + 2);
  v12 = *v10;
  v11 = v10[1];
  v13 = sub_29A42AF94(a3);
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 4) - 0x5555555555555555 * ((*(*(v13 + 16) + 8) - **(v13 + 16)) >> 4) < 0xFFFF)
  {
    v17 = *a3;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePoolForNewNodes(a1, 0xAAAAAAAAAAAAAAABLL * ((*(*(*a3 + 16) + 8) - **(*a3 + 16)) >> 4));
    v18 = a2[1];
    NodesForSubgraph = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNodesForSubgraph(a1, v17, a4);
    inserted = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_InsertChildInStrengthOrder(a1, v18, NodesForSubgraph);
  }

  else
  {
    if (a5)
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorCapacityExceeded::New(3, &v21);
      v14 = v21;
      v21 = 0uLL;
      v15 = *(a5 + 8);
      *a5 = v14;
      if (v15)
      {
        sub_29A014BEC(v15);
        if (*(&v21 + 1))
        {
          sub_29A014BEC(*(&v21 + 1));
        }
      }
    }

    inserted = 0;
  }

  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }

  return inserted;
}

void sub_29A42AF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A42AF94(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNodesForSubgraph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[0] = a2;
  v29[1] = 0;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v29) && v6 != -1 || (v28[0] = a2, v28[1] = 0, pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(v28)) && v7 != -1)
  {
    v23 = "pcp/primIndex_Graph.cpp";
    v24 = "_CreateNodesForSubgraph";
    v25 = 670;
    v26 = "size_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNodesForSubgraph(const PcpPrimIndex_Graph &, const PcpArc &)";
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v23, "!subgraph.GetRootNode().GetParentNode() && !subgraph.GetRootNode().GetOriginNode()", 0);
  }

  v8 = *(a1 + 16);
  v9 = v8[1] - *v8;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
  *(a1 + 56) &= ~4u;
  sub_29A42C1D8(v8, v8[1], **(a2 + 16), *(*(a2 + 16) + 8), 0xAAAAAAAAAAAAAAABLL * ((*(*(a2 + 16) + 8) - **(a2 + 16)) >> 4));
  sub_29A42CAA4((a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  v11 = *(a1 + 16);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 4);
  v13 = *v11 + v9;
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_Node::SetArc(v13, a3);
  v23 = v10;
  v24 = v12;
  v15 = v10 - v12;
  if (v10 < v12)
  {
    v16 = 0;
    v17 = 48 * v10 + 24;
    do
    {
      v18 = *v11;
      if (v16)
      {
        pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose((v13 + 8), (v18 + v17 - 16), v14, v29);
        sub_29A42B700((v18 + v17 - 16), v29);
        if (v29[0])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29[0], v19);
        }

        v20 = (v18 + v17);
        *v20 = sub_29A42B3E4(&v23, *(v18 + v17));
        v20[1] = sub_29A42B3E4(&v23, *(v18 + v17 + 2));
      }

      v21 = (v18 + v17);
      v21[2] = sub_29A42B3E4(&v23, *(v18 + v17 + 4));
      v21[3] = sub_29A42B3E4(&v23, *(v18 + v17 + 6));
      v21[4] = sub_29A42B3E4(&v23, *(v18 + v17 + 8));
      v21[5] = sub_29A42B3E4(&v23, *(v18 + v17 + 10));
      --v16;
      v17 += 48;
    }

    while (v15 != v16);
  }

  return v10;
}

void sub_29A42B21C(_Unwind_Exception *exception_object, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17)
{
  if (a17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A42B234(void *a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3)
{
  v16[0] = *a1;
  v16[1] = a2;
  v15[0] = v16[0];
  v15[1] = a3;
  v4 = pxrInternal__aapl__pxrReserved__::PcpCompareSiblingNodeStrength(v16, v15, a3);
  if (v4)
  {
    return v4 == -1;
  }

  v13[0] = "pcp/primIndex_Graph.cpp";
  v13[1] = "operator()";
  v13[2] = 37;
  v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ArcStrengthOrder::operator()(size_t, size_t) const";
  v14 = 0;
  v12[0] = *a1;
  v12[1] = 0;
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v12);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(Path);
  v10 = *(String + 23) >= 0 ? String : *String;
  v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Redundant nodes in prim index for <%s>", v8, v9, v10);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "result != 0", v11))
  {
    return v4 == -1;
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v16, v15);
  }
}

void **sub_29A42B308(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A08E058(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[48 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29A42C090(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A42C15C(&v12);
  }

  return result;
}

void sub_29A42B3D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A42C15C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29A42B3E4(void *a1, uint64_t a2)
{
  result = 0xFFFFLL;
  if (a2 != 0xFFFF)
  {
    result = *a1 + a2;
    if (result >= a1[1])
    {
      v5[0] = "pcp/primIndex_Graph.cpp";
      v5[1] = "operator()";
      v5[2] = 702;
      v5[3] = "size_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_CreateNodesForSubgraph(const PcpPrimIndex_Graph &, const PcpArc &)::_ConvertOldToNewIndex::operator()(size_t) const";
      v6 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "oldIndex + _base < _numNewNodes", 0);
      return *a1 + a2;
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_GetWriteableNode(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 8) - **(this + 2)) >> 4) <= a2)
  {
    sub_29B2A1B88(v5);
  }

  pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePool(this);
  return **(this + 2) + 48 * a2;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_GetWriteableNode(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2)
{
  v3 = *(a2 + 1);
  if (v3 >= 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 8) - **(this + 2)) >> 4))
  {
    sub_29B2A1BD0(v5);
  }

  pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_DetachSharedNodePool(this);
  return **(this + 2) + 48 * v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeStrengthOrderIndexMappingRecursively(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a3;
  v9 = *a4;
  for (i = 1; ; i &= v12)
  {
    *(v9 + 8 * a2) = v8;
    v11 = *a3;
    v12 = *a3 == a2;
    v13 = **(a1 + 16) + 48 * a2;
    v14 = *(v13 + 28);
    if (v14 != 0xFFFF)
    {
      *a3 = v11 + 1;
      v15 = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_ComputeStrengthOrderIndexMappingRecursively(a1, v14, a3, a4);
      if (v11 == a2)
      {
        v12 = v15;
      }

      else
      {
        v12 = 0;
      }

      v9 = *a4;
    }

    a2 = *(v13 + 34);
    if (a2 == 0xFFFF)
    {
      break;
    }

    v8 = *a3 + 1;
    *a3 = v8;
  }

  return i & v12;
}

void sub_29A42B62C(uint64_t a1)
{
  *a1 = &unk_2A204E248;
  v3 = (a1 + 32);
  sub_29A42B9F8(&v3);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfSimpleRefBase::~TfSimpleRefBase(a1);
}

void sub_29A42B694(uint64_t a1)
{
  *a1 = &unk_2A204E248;
  v4 = (a1 + 32);
  sub_29A42B9F8(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfSimpleRefBase::~TfSimpleRefBase(a1);
  operator delete(v3);
}

atomic_uint **sub_29A42B700(atomic_uint **a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement(*a2);
  }

  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*a1, a2);
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_29A42B744(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_2A204E248;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29A42B7F8((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_29A42B7D8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfSimpleRefBase::~TfSimpleRefBase(v1);
  _Unwind_Resume(a1);
}

void *sub_29A42B7F8(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A379A04(result, a4);
    result = sub_29A42B880(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A42B860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A42B9F8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A42B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A1E21F4(v4, v6);
      sub_29A1E2240((v4 + 4), (v6 + 4));
      v7 = *(v6 + 8);
      *(v4 + 10) = *(v6 + 10);
      *(v4 + 8) = v7;
      v6 += 12;
      v4 = v12 + 12;
      v12 += 12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A42B92C(v9);
  return v4;
}

uint64_t sub_29A42B92C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A42B964(a1);
  }

  return a1;
}

uint64_t *sub_29A42B964(uint64_t *result)
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
      result = sub_29A42B9B8(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

_DWORD *sub_29A42B9B8(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

void sub_29A42B9F8(void ***a1)
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
        sub_29A42B9B8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A42BAA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A204E280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29A42BB14(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1C11FC(a1, a2);
    v4 = a1[1];
    v5 = v4 + 48 * a2;
    v6 = 48 * a2;
    v7 = v4 + 24;
    do
    {
      *(v7 + 12) = 0;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *v7 = -1;
      *(v7 + 8) = -1;
      v7 += 48;
      v6 -= 48;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A42BBAC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      sub_29A42BC34(v1, (v3 - 48));
    }

    v1[1] = v2;

    operator delete(v4);
  }
}

void sub_29A42BC34(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = *(a2 + 2);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, a2);
  }

  sub_29A41B088();
}

void *sub_29A42BC80(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A379A04(a1, a2);
    sub_29A42BCEC(a1, a2);
  }

  return a1;
}

_DWORD *sub_29A42BCEC(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = v3 + 12 * a2;
    v5 = 12 * a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v3);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((v3 + 4));
      *(v3 + 10) &= 0xF8u;
      v3 += 12;
      v5 -= 12;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 1) = v3;
  return result;
}

uint64_t sub_29A42BD64@<X0>(void **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = sub_29A42BDC0(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29A42BDC0(uint64_t a1, void **a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A204E280;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_29A42BE44((a1 + 24), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  return a1;
}

void *sub_29A42BE44(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29A42BECC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A42BEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A42BBAC(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A42BECC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29A42BF78(a1, a4, a2);
  }

  v7 = 1;
  sub_29A42C004(v6);
  return a4;
}

void sub_29A42BFDC(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  sub_29A41B088();
}

uint64_t sub_29A42C004(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A42C03C(a1);
  }

  return a1;
}

uint64_t sub_29A42C03C(uint64_t result)
{
  v1 = *(result + 16);
  if (*v1 != **(result + 8))
  {
    sub_29A42BC34(*result, (*v1 - 48));
  }

  return result;
}

uint64_t sub_29A42C090(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29B2A1890(a1, a4, a2);
  }

  v6 = 1;
  return sub_29A42C004(v5);
}

void **sub_29A42C15C(void **a1)
{
  sub_29A42C190(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A42C190(void *result)
{
  v1 = result[2];
  if (v1 != result[1])
  {
    v2 = result;
    v3 = result[4];
    v2[2] = v1 - 48;
    sub_29A42BC34(v3, (v1 - 48));
  }

  return result;
}

uint64_t sub_29A42C1D8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 <= 0x555555555555555)
      {
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
        v23 = a1;
        if (v15)
        {
          v17 = sub_29A08E058(a1, v15);
        }

        else
        {
          v17 = 0;
        }

        v22[0] = v17;
        v22[3] = &v17[6 * v15];
        sub_29A42BF78(v23, &v17[6 * v16], a3);
      }

      sub_29A00C9A4();
    }

    v18 = v10 - a2;
    if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
    {
      v20 = 3 * a5;
      sub_29A42C3D4(a1, a2, a1[1], a2 + 48 * a5);
      v19 = &a3[2 * v20];
      goto LABEL_15;
    }

    a1[1] = sub_29A42BECC(a1, (a3 + v18), a4, a1[1]);
    if (v18 >= 1)
    {
      sub_29A42C3D4(a1, a2, v10, a2 + 48 * a5);
      v19 = a3 + v18;
LABEL_15:
      sub_29A42C614(v22, a3, v19);
    }
  }

  return a2;
}

uint64_t sub_29A42C3D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      sub_29A42C538(a1, v8, v10);
      v10 += 48;
      v8 += 48;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A42C5BC(&v12, a2, v7);
}

uint64_t sub_29A42C47C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A42C090(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A42C090(a1, v7, a3, v9);
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

__n128 sub_29A42C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  *a2 = *a3;
  *a3 = 0;
  *(a2 + 8) = v5;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement(v5);
  }

  v6 = *(a3 + 16);
  *(a2 + 16) = v6;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement(v6);
  }

  result = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = result;
  return result;
}

void sub_29A42C594(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  sub_29A41B088();
}

uint64_t sub_29A42C5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_29B2A1C18();
  }

  return a3;
}

uint64_t sub_29A42C614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    sub_29B2A1CB4();
  }

  return a2;
}

uint64_t sub_29A42C668(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A379A50(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[12 * v2];
  *(&v16 + 1) = &v7[12 * v6];
  sub_29A42C798(v15, a2);
  *&v16 = v15 + 12;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29A42C824(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A42C900(&v14);
  return v13;
}

void sub_29A42C784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A42C900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A42C798(uint64_t a1, _DWORD *a2)
{
  sub_29A1E21F4(&v5, a2);
  sub_29A1E2240(&v6, a2 + 1);
  sub_29A1DDD84(a1, &v5);
  sub_29A1DDDC0((a1 + 4), &v6);
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0xF8u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  sub_29A1DE3A4(&v5);
  return a1;
}

uint64_t sub_29A42C824(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
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
      sub_29A1DDDC0((v4 + 4), v8 + 1);
      v9 = *(v8 + 4);
      *(v4 + 10) = *(v8 + 10);
      *(v4 + 8) = v9;
      v8 += 3;
      v4 = v14 + 12;
      v14 += 12;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      sub_29A42B9B8(a1, v6);
      v6 += 3;
    }
  }

  return sub_29A42B92C(v11);
}

void **sub_29A42C900(void **a1)
{
  sub_29A42C934(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A42C934(_DWORD *result)
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
      result = sub_29A42B9B8(v4, (v1 - 12));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A42C97C(uint64_t a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  v16 = a1;
  if (v4)
  {
    v5 = sub_29A08E058(a1, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = &v5[48 * v1];
  v13 = v5;
  v14 = v6;
  *(&v15 + 1) = &v5[48 * v4];
  *(v6 + 36) = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = -1;
  *(v6 + 8) = -1;
  *&v15 = v6 + 48;
  v7 = *(a1 + 8);
  v8 = &v6[*a1 - v7];
  sub_29A42C090(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_29A42C15C(&v13);
  return v12;
}

void sub_29A42CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A42C15C(va);
  _Unwind_Resume(a1);
}

char *sub_29A42CAA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 2)) >= a5)
      {
        v20 = 3 * a5;
        sub_29A42CC74(a1, a2, a1[1], a2 + 12 * a5);
        v19 = a3 + 4 * v20;
      }

      else
      {
        a1[1] = sub_29A42B880(a1, v18 + a3, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29A42CC74(a1, v5, v10, &v5[12 * a5]);
        v19 = v18 + a3;
      }

      sub_29A42CF14(&v22, a3, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 2);
    if (v12 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xAAAAAAAAAAAAAAALL)
    {
      v15 = 0x1555555555555555;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 2);
    v26 = a1;
    if (v15)
    {
      v17 = sub_29A379A50(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    v23 = &v17[12 * v16];
    v24 = v23;
    v25 = &v17[12 * v15];
    sub_29A42CD34(&v22, a3, a5);
    v5 = sub_29A42CDC8(a1, &v22, v5);
    sub_29A42C900(&v22);
  }

  return v5;
}

uint64_t sub_29A42CC74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = v6 + v10;
      sub_29A1DDD84((v6 + v10), (v7 + v10));
      sub_29A1DDDC0((v6 + v10 + 4), (v7 + v10 + 4));
      v12 = *(v7 + v10 + 8);
      *(v11 + 10) = *(v7 + v10 + 10);
      *(v11 + 8) = v12;
      v10 += 12;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return sub_29A42CE84(&v14, a2, v7);
}

_DWORD *sub_29A42CD34(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v5 = v4 + 12 * a3;
    v6 = v4 + 4;
    v7 = 12 * a3;
    v8 = a2 + 4;
    do
    {
      sub_29A1E21F4((v6 - 4), (v8 - 4));
      result = sub_29A1E2240(v6, v8);
      v9 = *(v8 + 4);
      *(v6 + 6) = *(v8 + 6);
      *(v6 + 4) = v9;
      v6 += 12;
      v8 += 12;
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

uint64_t sub_29A42CDC8(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  sub_29A42C824(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_29A42C824(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29A42CE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

uint64_t sub_29A42CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    sub_29A225948((a4 + 4), (v5 + 4));
    v7 = *(v5 + 10);
    *(a4 + 8) = *(v5 + 8);
    *(a4 + 10) = v7;
    a4 += 12;
    v5 += 12;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29A42CF94(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A08C840(a1, a2);
    v4 = a1[1];
    v5 = v4 + a2;
    a1[1] = v4 + a2;
    if (v4)
    {
      v6 = v5 - 1;
      if (((v5 - 1) ^ (v4 - 1)) < 0x40)
      {
LABEL_10:
        v10 = *a1 + 8 * (v4 >> 6);
        v11 = v4 & 0x3F;
        sub_29A08CC70(&v10, a2);
        return a1;
      }
    }

    else
    {
      v6 = v5 - 1;
    }

    v7 = v6 >> 6;
    if (v5 >= 0x41)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
    goto LABEL_10;
  }

  return a1;
}

uint64_t sub_29A42D03C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((64 - v2) >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = (64 - v2);
    }

    v4 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v3)) & (-1 << v2) & **a1));
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.u32[0];
    a2 -= v3;
    *a1 += 8;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 0x40)
  {
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v5 += v8.u32[0];
      a2 -= 64;
    }

    while (a2 > 0x3F);
    *a1 = v6;
  }

  if (a2)
  {
    v9 = vcnt_s8((**a1 & (0xFFFFFFFFFFFFFFFFLL >> -a2)));
    v9.i16[0] = vaddlv_u8(v9);
    v5 += v9.u32[0];
  }

  return v5;
}

void sub_29A42D110(uint64_t *a1, void *a2)
{
  memset(v101, 0, sizeof(v101));
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = v101;
  v102 = 0;
  v103 = v104;
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  v106 = 0;
  v107 = v108;
  memset(v108, 0, sizeof(v108));
  memset(v111, 0, sizeof(v111));
  v109 = 0;
  v110 = v111;
  v113[0] = 0;
  v113[1] = 0;
  v112 = v113;
  v115[0] = 0;
  v115[1] = 0;
  v114 = v115;
  sub_29A42E5C0(a1, &v97);
  v3 = sub_29A00911C(a2, "PcpCache Statistics", 19);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v5 = sub_29A00911C(v3, "-------------------", 19);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v7 = sub_29A00911C(a2, "Entries: ", 9);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v9 = sub_29A00911C(a2, "  Prim indexes:                      ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v10, v11, v97);
  if ((v96 & 0x80u) == 0)
  {
    locale = &v94;
  }

  else
  {
    locale = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v13 = v96;
  }

  else
  {
    v13 = v95;
  }

  v14 = sub_29A00911C(v9, locale, v13);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  v16 = sub_29A00911C(a2, "  Property indexes:                  ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v17, v18, v98);
  if ((v96 & 0x80u) == 0)
  {
    v19 = &v94;
  }

  else
  {
    v19 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v20 = v96;
  }

  else
  {
    v20 = v95;
  }

  v21 = sub_29A00911C(v16, v19, v20);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v23 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v24 = sub_29A00911C(a2, "Prim graphs: ", 13);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  sub_29A42E914(&v99, &v102, a2);
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v26 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v27 = sub_29A00911C(a2, "Prim graphs (shared): ", 22);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v29 = sub_29A00911C(a2, "  Graph instances:                   ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v30, v31, v105);
  if ((v96 & 0x80u) == 0)
  {
    v32 = &v94;
  }

  else
  {
    v32 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v33 = v96;
  }

  else
  {
    v33 = v95;
  }

  v34 = sub_29A00911C(v29, v32, v33);
  std::ios_base::getloc((v34 + *(*v34 - 24)));
  v35 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  sub_29A42E914(&v106, &v109, a2);
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v36 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v37 = sub_29A00911C(a2, "Memory usage: ", 14);
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v39 = sub_29A00911C(a2, "  sizeof(PcpMapFunction):            ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd B", v40, v41, 56);
  if ((v96 & 0x80u) == 0)
  {
    v42 = &v94;
  }

  else
  {
    v42 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v43 = v96;
  }

  else
  {
    v43 = v95;
  }

  v44 = sub_29A00911C(v39, v42, v43);
  std::ios_base::getloc((v44 + *(*v44 - 24)));
  v45 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  v46 = sub_29A00911C(a2, "  sizeof(PcpLayerStackPtr):          ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd B", v47, v48, 16);
  if ((v96 & 0x80u) == 0)
  {
    v49 = &v94;
  }

  else
  {
    v49 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v50 = v96;
  }

  else
  {
    v50 = v95;
  }

  v51 = sub_29A00911C(v46, v49, v50);
  std::ios_base::getloc((v51 + *(*v51 - 24)));
  v52 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v52->__vftable[2].~facet_0)(v52, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  v53 = sub_29A00911C(a2, "  sizeof(PcpLayerStackSite):         ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd B", v54, v55, 16);
  if ((v96 & 0x80u) == 0)
  {
    v56 = &v94;
  }

  else
  {
    v56 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v57 = v96;
  }

  else
  {
    v57 = v95;
  }

  v58 = sub_29A00911C(v53, v56, v57);
  std::ios_base::getloc((v58 + *(*v58 - 24)));
  v59 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v59->__vftable[2].~facet_0)(v59, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  v60 = sub_29A00911C(a2, "  sizeof(PcpPrimIndex):              ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd B", v61, v62, 40);
  if ((v96 & 0x80u) == 0)
  {
    v63 = &v94;
  }

  else
  {
    v63 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v64 = v96;
  }

  else
  {
    v64 = v95;
  }

  v65 = sub_29A00911C(v60, v63, v64);
  std::ios_base::getloc((v65 + *(*v65 - 24)));
  v66 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v66->__vftable[2].~facet_0)(v66, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  v67 = sub_29A00911C(a2, "  sizeof(PcpPrimIndex_Graph):        ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd B", v68, v69, 64);
  if ((v96 & 0x80u) == 0)
  {
    v70 = &v94;
  }

  else
  {
    v70 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v71 = v96;
  }

  else
  {
    v71 = v95;
  }

  v72 = sub_29A00911C(v67, v70, v71);
  std::ios_base::getloc((v72 + *(*v72 - 24)));
  v73 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v73->__vftable[2].~facet_0)(v73, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  v74 = sub_29A00911C(a2, "  sizeof(PcpPrimIndex_Graph::_Node): ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd B", v75, v76, 48);
  if ((v96 & 0x80u) == 0)
  {
    v77 = &v94;
  }

  else
  {
    v77 = v94.__locale_;
  }

  if ((v96 & 0x80u) == 0)
  {
    v78 = v96;
  }

  else
  {
    v78 = v95;
  }

  v79 = sub_29A00911C(v74, v77, v78);
  std::ios_base::getloc((v79 + *(*v79 - 24)));
  v80 = std::locale::use_facet(&v116, MEMORY[0x29EDC93D0]);
  (v80->__vftable[2].~facet_0)(v80, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  if (v96 < 0)
  {
    operator delete(v94.__locale_);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v81 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v81->__vftable[2].~facet_0)(v81, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v82 = sub_29A00911C(a2, "PcpMapFunction size histogram: ", 31);
  std::ios_base::getloc((v82 + *(*v82 - 24)));
  v83 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v83->__vftable[2].~facet_0)(v83, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v84 = sub_29A00911C(a2, "SIZE    COUNT", 13);
  std::ios_base::getloc((v84 + *(*v84 - 24)));
  v85 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v85->__vftable[2].~facet_0)(v85, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v94.__locale_ = v112;
  v95 = v113;
  while (v94.__locale_ != v95)
  {
    v86 = *(*sub_29A42F148(&v94) + 32);
    v87 = sub_29A42F148(&v94);
    printf("%zu   %zu\n", v86, *(*v87 + 40));
    sub_29A42F180(&v94);
  }

  v88 = sub_29A00911C(a2, "PcpLayerStack pathsWithRelocates size histogram: ", 49);
  std::ios_base::getloc((v88 + *(*v88 - 24)));
  v89 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v89->__vftable[2].~facet_0)(v89, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v90 = sub_29A00911C(a2, "SIZE    COUNT", 13);
  std::ios_base::getloc((v90 + *(*v90 - 24)));
  v91 = std::locale::use_facet(&v94, MEMORY[0x29EDC93D0]);
  (v91->__vftable[2].~facet_0)(v91, 10);
  std::locale::~locale(&v94);
  std::ostream::put();
  std::ostream::flush();
  v94.__locale_ = v114;
  v95 = v115;
  while (v94.__locale_ != v95)
  {
    v92 = *(*sub_29A42F148(&v94) + 32);
    v93 = sub_29A42F148(&v94);
    printf("%zu   %zu\n", v92, *(*v93 + 40));
    sub_29A42F180(&v94);
  }

  sub_29A082B84(&v114, v115[0]);
  sub_29A082B84(&v112, v113[0]);
  sub_29A082B84(&v110, v111[0]);
  sub_29A082B84(&v107, v108[0]);
  sub_29A082B84(&v103, v104[0]);
  sub_29A082B84(&v100, v101[0]);
}

void sub_29A42E318(uint64_t *a1, void *a2)
{
  v19 = v20;
  memset(v20, 0, sizeof(v20));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0;
  v16 = v17;
  sub_29A42F2CC(a1, &v18, 0);
  sub_29A42F2CC(a1, &v15, 1);
  v4 = sub_29A00911C(a2, "PcpPrimIndex Statistics - ", 26);
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a1);
  v13.__locale_ = v5;
  v14 = v6;
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v13);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v4, Path);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v21, MEMORY[0x29EDC93D0]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v21);
  std::ostream::put();
  std::ostream::flush();
  v10 = sub_29A00911C(v8, "-----------------------", 23);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v21, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v21);
  std::ostream::put();
  std::ostream::flush();
  sub_29A42E914(&v18, &v15, a2);
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v12 = std::locale::use_facet(&v13, MEMORY[0x29EDC93D0]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v13);
  std::ostream::put();
  std::ostream::flush();
  sub_29A082B84(&v16, v17[0]);
  sub_29A082B84(&v19, v20[0]);
}

void sub_29A42E578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  std::locale::~locale(&a10);
  sub_29A082B84(v20 + 8, a14);
  sub_29A082B84(v19 + 8, a19);
  _Unwind_Resume(a1);
}

void sub_29A42E5C0(uint64_t *a1, uint64_t a2)
{
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v32 = 0u;
  v33 = 0u;
  v34 = 1065353216;
  v30 = sub_29A42F680((a1 + 26));
  v31 = 0;
  while (v30 != v31)
  {
    v4 = (*sub_29A42F294(&v30) + 8);
    if (*v4)
    {
      ++*a2;
      sub_29A42F2CC(v4, a2 + 16, 0);
      sub_29A42F2CC(v4, a2 + 56, 1);
      v5 = sub_29A42AF94(v4);
      sub_29A42F734(&v35, (v5 + 16), (v5 + 16));
      if (v6)
      {
        ++*(a2 + 96);
        sub_29A42F2CC(v4, a2 + 104, 0);
        sub_29A42F2CC(v4, a2 + 144, 1);
      }

      pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v4, 6u, &v26);
      v8 = v26;
      v7 = v27;
      v9 = v28;
      if (v26 != v28 || v27 != v29)
      {
        v10 = (v29 - 1);
        do
        {
          do
          {
            v11 = v7;
            v25[0] = v8;
            v25[1] = v7;
            MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v25);
            v15 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v13, v14);
            sub_29A42F800(&v32, v15, v15);
            MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(v25);
            v19 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToRoot, v17, v18);
            sub_29A42F800(&v32, v19, v19);
            v7 = (v11 + 1);
          }

          while (v8 != v9);
        }

        while (v10 != v11);
      }
    }

    sub_29A42F3F8(&v30);
  }

  v26 = sub_29A42FB70((a1 + 31));
  v27 = 0;
  while (v26 != v27)
  {
    v20 = sub_29A42F484(&v26);
    if (!pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::IsEmpty((*v20 + 8)))
    {
      ++*(a2 + 8);
    }

    sub_29A42F4BC(&v26);
  }

  v30 = v33;
  v31 = 0;
  while (v30 != v31)
  {
    v21 = sub_29A42F548(&v30);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetSourceToTargetMap((*v21 + 16), &v26);
    v22 = v28;
    sub_29A1EF938(&v26, v27);
    v25[0] = v22;
    v26 = v25;
    v23 = sub_29A36F768((a2 + 184), v25, &unk_29B4D6118, &v26);
    ++v23[5];
    sub_29A42F580(&v30);
  }

  v24 = sub_29A42F600(a1 + 25);
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetAllLayerStacks(v24, &v26);
  if (v26 != v27)
  {
    sub_29A419260(v26);
  }

  v30 = &v26;
  sub_29A0EBD50(&v30);
  sub_29A42FC60(&v32);
  sub_29A42FCE0(&v35, v36[0]);
}

void sub_29A42E8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A42FC60(va);
  sub_29A42FCE0(v9 - 80, *(v9 - 72));
  _Unwind_Resume(a1);
}

void sub_29A42E914(void *a1, void *a2, void *a3)
{
  v5 = sub_29A00911C(a3, "  Total nodes:                       ", 37);
  v61 = a1;
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v6, v7, *a1);
  if ((v78 & 0x80u) == 0)
  {
    locale = &v76;
  }

  else
  {
    locale = v76.__locale_;
  }

  if ((v78 & 0x80u) == 0)
  {
    v9 = v78;
  }

  else
  {
    v9 = v77;
  }

  v10 = sub_29A00911C(v5, locale, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v74, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v74);
  std::ostream::put();
  std::ostream::flush();
  if (v78 < 0)
  {
    operator delete(v76.__locale_);
  }

  v12 = sub_29A00911C(a3, "  Total culled* nodes:               ", 37);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v13, v14, *a2);
  if ((v78 & 0x80u) == 0)
  {
    v15 = &v76;
  }

  else
  {
    v15 = v76.__locale_;
  }

  if ((v78 & 0x80u) == 0)
  {
    v16 = v78;
  }

  else
  {
    v16 = v77;
  }

  v17 = sub_29A00911C(v12, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v74, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v74);
  std::ostream::put();
  std::ostream::flush();
  if (v78 < 0)
  {
    operator delete(v76.__locale_);
  }

  v19 = sub_29A00911C(a3, "  By type (total / culled*):         ", 37);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v76, MEMORY[0x29EDC93D0]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  sub_29A42FD40(&v76, (a1 + 1));
  sub_29A42FD40(&v74, (a2 + 1));
  v21 = 0;
  v73 = 0;
  v22 = MEMORY[0x29EDC93D0];
  do
  {
    v19 = v19 & 0xFFFFFFFF00000000 | v21;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, v19, &v70);
    v23 = sub_29A00911C(a3, "    ", 4);
    if ((v72 & 0x80u) == 0)
    {
      v24 = &v70;
    }

    else
    {
      v24 = v70.__locale_;
    }

    if ((v72 & 0x80u) == 0)
    {
      v25 = v72;
    }

    else
    {
      v25 = v71;
    }

    v26 = sub_29A00911C(v23, v24, v25);
    v27 = sub_29A00911C(v26, ": ", 2);
    if ((v72 & 0x80u) == 0)
    {
      v28 = v72;
    }

    else
    {
      v28 = v71;
    }

    v63[0] = &v73;
    v29 = sub_29A36BB6C(&v76, &v73, &unk_29B4D6118, v63);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v30, v31, v29[5]);
    if (v66 >= 0)
    {
      v32 = v65;
    }

    else
    {
      v32 = v65[0];
    }

    v79.__locale_ = &v73;
    v33 = sub_29A36BB6C(&v74, &v73, &unk_29B4D6118, &v79);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v34, v35, v33[5]);
    v38 = v63;
    if (v64 < 0)
    {
      v38 = v63[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%*s%s / %s", v36, v37, (31 - v28), "", v32, v38);
    if ((v69 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v69 & 0x80u) == 0)
    {
      v40 = v69;
    }

    else
    {
      v40 = v68;
    }

    v41 = sub_29A00911C(v27, p_p, v40);
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v42 = std::locale::use_facet(&v79, v22);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&v79);
    std::ostream::put();
    std::ostream::flush();
    if (v69 < 0)
    {
      operator delete(__p);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v73 == 1)
    {
      v43 = sub_29A00911C(a3, "      implied inherits: ", 24);
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v44, v45, v61[4]);
      v46 = v66;
      v47 = v65[0];
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%zd", v48, v49, a2[4]);
      v52 = v65;
      if (v46 < 0)
      {
        v52 = v47;
      }

      v53 = v63;
      if (v64 < 0)
      {
        v53 = v63[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%*s%s / %s", v50, v51, 13, "", v52, v53);
      if ((v69 & 0x80u) == 0)
      {
        v54 = &__p;
      }

      else
      {
        v54 = __p;
      }

      if ((v69 & 0x80u) == 0)
      {
        v55 = v69;
      }

      else
      {
        v55 = v68;
      }

      v56 = sub_29A00911C(v43, v54, v55);
      std::ios_base::getloc((v56 + *(*v56 - 24)));
      v57 = std::locale::use_facet(&v79, v22);
      (v57->__vftable[2].~facet_0)(v57, 10);
      std::locale::~locale(&v79);
      std::ostream::put();
      std::ostream::flush();
      if (v69 < 0)
      {
        operator delete(__p);
      }

      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }
    }

    if (v72 < 0)
    {
      operator delete(v70.__locale_);
    }

    v21 = v73 + 1;
    v73 = v21;
  }

  while (v21 != 7);
  v58 = sub_29A00911C(a3, "  (*) This does not include culled nodes that were erased ", 58);
  v59 = sub_29A00911C(v58, "from the graph", 14);
  std::ios_base::getloc((v59 + *(*v59 - 24)));
  v60 = std::locale::use_facet(&v70, MEMORY[0x29EDC93D0]);
  (v60->__vftable[2].~facet_0)(v60, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  std::ostream::flush();
  sub_29A082B84(&v74, v75);
  sub_29A082B84(&v76, v77);
}

void *sub_29A42F148(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A1D44();
  }

  return result;
}

void *sub_29A42F180(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<unsigned long, unsigned long>>::operator++() [T = std::map<unsigned long, unsigned long>, Reverse = false]";
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

void **sub_29A42F228(void **a1)
{
  sub_29A082B84((a1 + 26), a1[27]);
  sub_29A082B84((a1 + 23), a1[24]);
  sub_29A082B84((a1 + 19), a1[20]);
  sub_29A082B84((a1 + 14), a1[15]);
  sub_29A082B84((a1 + 8), a1[9]);
  sub_29A082B84((a1 + 3), a1[4]);
  return a1;
}

void *sub_29A42F294(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A1D90();
  }

  return result;
}

unint64_t sub_29A42F2CC(uint64_t *a1, uint64_t a2, int a3)
{
  result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a1, 6u, &v19);
  v7 = v19;
  v6 = v20;
  v8 = v21;
  if (v19 != v21 || v20 != v22)
  {
    v10 = v22 - 1;
    do
    {
      v11 = v6;
      v18[0] = v7;
      v18[1] = v6;
      if (!a3 || (result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(v18), result))
      {
        ++*a2;
        ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v18);
        p_ArcType = &ArcType;
        v12 = sub_29A36BB6C((a2 + 8), &ArcType, &unk_29B4D6118, &p_ArcType);
        v12[5] = (v12[5] + 1);
        OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(v18);
        v15 = v14;
        result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v18);
        if (v15 != v16 || OriginNode != result)
        {
          result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v18);
          if (result == 1)
          {
            ++*(a2 + 32);
          }
        }
      }

      v6 = v11 + 1;
    }

    while (v7 != v8 || v10 != v11);
  }

  return result;
}

unint64_t *sub_29A42F3F8(unint64_t *a1)
{
  if (*a1 == a1[1])
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPrimIndex>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPrimIndex>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    v2 = *(*a1 + 56);
    if (!v2)
    {
      v2 = sub_29A42FB34(a1);
    }

    *a1 = v2;
  }

  return a1;
}

void *sub_29A42F484(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A1DDC();
  }

  return result;
}

unint64_t *sub_29A42F4BC(unint64_t *a1)
{
  if (*a1 == a1[1])
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPropertyIndex>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPropertyIndex>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    v2 = *(*a1 + 48);
    if (!v2)
    {
      v2 = sub_29A42FC24(a1);
    }

    *a1 = v2;
  }

  return a1;
}

void *sub_29A42F548(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A1E28();
  }

  return result;
}

uint64_t sub_29A42F580(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::PcpMapFunction, pxrInternal__aapl__pxrReserved__::Pcp_Statistics::MapFuncHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::PcpMapFunction, pxrInternal__aapl__pxrReserved__::Pcp_Statistics::MapFuncHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t sub_29A42F600(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void *sub_29A42F680(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  return sub_29A42F6CC(a1, v2);
}

void *sub_29A42F6CC(void *a1, unsigned int *a2)
{
  if (!a1[3])
  {
    return 0;
  }

  for (result = *(*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4])); result; result = result[6])
  {
    if (*result == *a2)
    {
      break;
    }
  }

  return result;
}

uint64_t *sub_29A42F734(uint64_t **a1, unint64_t *a2, uint64_t *a3)
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
        v9 = v5[4];
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
        return v8;
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
    v10 = operator new(0x30uLL);
    v11 = a3[1];
    v10[4] = *a3;
    v10[5] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A00B204(a1, v8, v6, v10);
  }

  return v10;
}

void *sub_29A42F800(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpMapFunction *this, uint64_t a3)
{
  v7 = pxrInternal__aapl__pxrReserved__::PcpMapFunction::Hash(this);
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
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (pxrInternal__aapl__pxrReserved__::PcpMapFunction::operator==((v13 + 2), this))
            {
              return v13;
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

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  sub_29A42FA54(a1, v8, a3, &v26);
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
    v13 = v26;
    *v26 = *v22;
    *v22 = v13;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    v13 = v26;
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
      v13 = v26;
    }
  }

  ++*(a1 + 24);
  return v13;
}

void sub_29A42FA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A42FAD8(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29A42FA54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  sub_29A41B000(v8 + 4, a3);
  result = *(a3 + 40);
  *(v8 + 56) = result;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A42FAD8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A41AF74(v2 + 16);
    }

    operator delete(v2);
  }
}

unint64_t sub_29A42FB34(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 64); ; i = *(result + 64))
  {
    result = i & 0xFFFFFFFFFFFFFFF8;
    if ((i & 7) != 0 && result != 0)
    {
      break;
    }

    if (result)
    {
      v4 = (i & 7) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_29A42FB70(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  return sub_29A42FBBC(a1, v2);
}

void *sub_29A42FBBC(void *a1, unsigned int *a2)
{
  if (!a1[3])
  {
    return 0;
  }

  for (result = *(*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4])); result; result = result[5])
  {
    if (*result == *a2)
    {
      break;
    }
  }

  return result;
}

unint64_t sub_29A42FC24(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 56); ; i = *(result + 56))
  {
    result = i & 0xFFFFFFFFFFFFFFF8;
    if ((i & 7) != 0 && result != 0)
    {
      break;
    }

    if (result)
    {
      v4 = (i & 7) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29A42FC60(uint64_t a1)
{
  sub_29A42FC9C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A42FC9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A41AF74((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A42FCE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A42FCE0(a1, *a2);
    sub_29A42FCE0(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_29A42FD40(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A42FD98(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29A42FD98(uint64_t *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A42FE20(v5, v5 + 1, v4 + 8, v4 + 2);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29A42FE20(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v6 = sub_29A42FEA8(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A42FEA8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression@<X0>(const std::string *a1@<X0>, uint64_t a2@<X1>, const std::string *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, void **a7@<X6>, uint64_t a8@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfVariableExpression::SdfVariableExpression(v25, a1);
  sub_29A4302E4(v25, (a2 + 16), &v26);
  pxrInternal__aapl__pxrReserved__::SdfVariableExpression::~SdfVariableExpression(v25);
  if (a6)
  {
    for (i = v31; i; i = *i)
    {
      sub_29A2D1AC8(a6, i + 2, (i + 2));
    }
  }

  if (a7 && v28 != v29)
  {
    pxrInternal__aapl__pxrReserved__::PcpErrorVariableExpressionError::New(&v24);
    std::string::operator=((v24 + 104), a1);
    sub_29A11CF98("; ", v28, v29, v25);
    v17 = v24;
    v18 = v24;
    if (*(v24 + 151) < 0)
    {
      operator delete(*(v24 + 128));
      v18 = v24;
    }

    *(v17 + 128) = v25[0];
    std::string::operator=((v18 + 152), a3);
    v19 = v24;
    *(v24 + 176) = *a4;
    sub_29B28FD1C((v19 + 184), (a4 + 8));
    v20 = v24;
    sub_29A2258F0((v24 + 192), a5);
    sub_29A225948((v20 + 196), a5 + 1);
    *&v25[0].__r_.__value_.__l.__data_ = v24;
    v24 = 0uLL;
    sub_29A01729C(a7, v25);
    if (v25[0].__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v25[0].__r_.__value_.__l.__size_);
    }

    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }
  }

  if (sub_29A1EFC10(&v26))
  {
    if ((v27 & 4) != 0)
    {
      v21 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(&v26);
    }

    else
    {
      v21 = v26;
    }

    if (*(v21 + 23) < 0)
    {
      sub_29A008D14(a8, *v21, *(v21 + 8));
    }

    else
    {
      v22 = *v21;
      *(a8 + 16) = *(v21 + 16);
      *a8 = v22;
    }
  }

  else
  {
    *a8 = 0;
    *(a8 + 8) = 0;
    *(a8 + 16) = 0;
  }

  sub_29A0EB4E8(&v30);
  v25[0].__r_.__value_.__r.__words[0] = &v28;
  sub_29A012C90(v25);
  return sub_29A186B14(&v26);
}

void sub_29A430284(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A430424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4302E4@<X0>(pxrInternal__aapl__pxrReserved__::SdfVariableExpression *a1@<X0>, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::SdfVariableExpression::Evaluate(a1, a2, a3);
  if (*(a3 + 8))
  {
    result = sub_29A1EFC10(a3);
    if ((result & 1) == 0)
    {
      v6[0] = 0;
      v6[1] = 0;
      v7 = 0;
      v8[1] = &off_2A2044DD0;
      sub_29A1B01B8(v8, v6);
      pxrInternal__aapl__pxrReserved__::SdfVariableExpression::_FormatUnexpectedTypeError(a3, v8, v5);
      sub_29A091654((a3 + 16), __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A186B14(v8);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(v6[0]);
      }

      __p[1] = 0;
      sub_29A18606C(a3, __p);
      return sub_29A186B14(__p);
    }
  }

  return result;
}

void sub_29A4303D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a16);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_29A430424(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_29A430424(uint64_t a1)
{
  sub_29A0EB4E8(a1 + 40);
  v3 = (a1 + 16);
  sub_29A012C90(&v3);
  return sub_29A186B14(a1);
}

void pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression(const std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  v7[0] = 0;
  v7[1] = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6 + 1);
  pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression(a1, a2, &v8, v7, &v6, 0, 0, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
  sub_29B2A1E74(&v6, v7, &v8);
}

void sub_29A430510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_29A1DCEA8(&a9);
  if (a11)
  {
    sub_29B290120(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  *a3 = a3 + 8;
  return pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(a1, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(uint64_t result, uint64_t a2, uint64_t **a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    result = sub_29A430644(result);
    if ((result & 1) == 0)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
      if (!v6)
      {
        v6 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
      }

      if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
      }

      v9 = EmptyString;
      v8 = sub_29A00B038(a3, EmptyString, &unk_29B4D6118, &v9);
      return std::string::operator=((v8 + 7), a2);
    }
  }

  return result;
}

BOOL sub_29A430644(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::SplitIdentifier(a1, __p, &v5))
  {
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    if (!v1)
    {
      v1 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    }

    if ((*v1 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v1 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1);
    }

    v3 = v6 != sub_29A01BCCC(&v5, EmptyString);
  }

  else
  {
    v3 = 0;
  }

  sub_29A01752C(&v5, v6[0]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29A430704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_29A01752C(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    if (!v5)
    {
      v5 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    }

    sub_29A430D9C(__dst, v5, a1);
    sub_29A3466A8(a2, __dst, 1);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_29A430818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0D2850(va);
  _Unwind_Resume(a1);
}

uint64_t **pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!sub_29A430644(a1))
  {
    return a2;
  }

  if (a3 != a2)
  {
    sub_29A028554(a3, *a2, (a2 + 8));
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  sub_29A0DCFB4(a3, EmptyString);
  return a3;
}

void pxrInternal__aapl__pxrReserved__::Pcp_StripFileFormatTarget(uint64_t a1, uint64_t **a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
  }

  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  v6 = sub_29A01BCCC(a2, EmptyString);
  if (a2 + 1 != v6)
  {
    v7 = v6;
    v8 = *(v6 + 79);
    if (v8 >= 0)
    {
      v9 = *(v6 + 79);
    }

    else
    {
      v9 = *(v6 + 64);
    }

    v10 = *(a1 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a1 + 8);
    }

    if (v9 == v10)
    {
      v12 = v8 >= 0 ? (v6 + 56) : *(v6 + 56);
      v13 = v11 >= 0 ? a1 : *a1;
      if (!memcmp(v12, v13, v9))
      {
        sub_29A03AFE8(a2, v7);
        sub_29A00B454((v7 + 4));

        operator delete(v7);
      }
    }
  }
}

double pxrInternal__aapl__pxrReserved__::Pcp_FindStartingNodeOfClassHierarchy@<D0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, uint64_t a2@<X8>)
{
  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this);
  if (ArcType != 1 && ArcType != 6)
  {
    v17 = "pcp/utils.cpp";
    v18 = "Pcp_FindStartingNodeOfClassHierarchy";
    v19 = 147;
    v20 = "std::pair<PcpNodeRef, PcpNodeRef> pxrInternal__aapl__pxrReserved__::Pcp_FindStartingNodeOfClassHierarchy(const PcpNodeRef &)";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "PcpIsClassBasedArc(n.GetArcType())", 0);
  }

  DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(this, v6);
  v8 = 0.0;
  *v16 = *this;
  v9 = -1;
  while (1)
  {
    v10 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v16);
    v12 = v10 == 6 || v10 == 1;
    if (!v12 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(v16, v11) != DepthBelowIntroduction)
    {
      break;
    }

    if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v16) || v13 == -1)
    {
      v17 = "pcp/utils.cpp";
      v18 = "Pcp_FindStartingNodeOfClassHierarchy";
      v19 = 155;
      v20 = "std::pair<PcpNodeRef, PcpNodeRef> pxrInternal__aapl__pxrReserved__::Pcp_FindStartingNodeOfClassHierarchy(const PcpNodeRef &)";
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "instanceNode.GetParentNode()", 0);
    }

    v9 = *&v16[1];
    v8 = v16[0];
    *&v16[0] = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v16);
    v16[1] = v14;
  }

  result = v16[0];
  *a2 = *v16;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Pcp_TranslatePathFromNodeToRootOrClosestNode@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, uint64_t a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(this))
  {
    sub_29A1E21F4(a3, a2);
    result = sub_29A1E2240((a3 + 4), a2 + 1);
    *(a3 + 8) = *this;
  }

  else
  {
    v26 = *this;
    pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(a2, &v24);
    MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(this);
    v11 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToRoot, v9, v10);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v11, &v24, &v22);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v22))
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
      *&v26 = v12;
      *(&v26 + 1) = v13;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&v26))
    {
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(&v26);
      v17 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v15, v16);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v17, &v24, &v21);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v21))
      {
        *&v26 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v26);
        *(&v26 + 1) = v18;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
      sub_29A1DE3A4(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
    sub_29A1DE3A4(&v22);
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(&v26, v19, &v22);
    if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v22))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v22, &v20);
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v21, &v24, &v20, &v22, 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
    sub_29A1DE3A4(&v22);
    sub_29A1E21F4(a3, &v24);
    sub_29A1E2240((a3 + 4), &v25);
    *(a3 + 8) = v26;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
    return sub_29A1DE3A4(&v24);
  }

  return result;
}

void sub_29A430D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12, int a13)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a13);
  _Unwind_Resume(a1);
}

char *sub_29A430D9C(char *__dst, void *a2, __int128 *a3)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v7;
  }

  return __dst;
}

void sub_29A430E2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A430E48()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PCP_CULLING))
  {
    sub_29B2A22E0();
  }
}

void pxrInternal__aapl__pxrReserved__::PcpCache::~PcpCache(pxrInternal__aapl__pxrReserved__::PcpCache *this)
{
  v1 = *(this + 16);
  *(this + 16) = 0;
  sub_29A41B088();
}

void sub_29A431018(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies **a1, pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::~Pcp_Dependencies(v3);

    operator delete(v4);
  }
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A431054(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a1)
{
  v1 = *a1;
  *a1 = 0;
  v3 = 0;
  sub_29B290B2C(a1, v1);
  return sub_29A43A21C(&v3);
}

void sub_29A431090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43A21C(va);
  _Unwind_Resume(a1);
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::PcpCache::FindLayerStack@<X0>(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A42F600(this + 25);

  return pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::Find(v5, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::UsesLayerStack(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A42F600((a1 + 200));

  return pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::Contains(v3, a2);
}

void pxrInternal__aapl__pxrReserved__::PcpCache::FindAllLayerStacksUsingLayer(uint64_t a1)
{
  v1 = sub_29A42F600((a1 + 200));

  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindAllUsingLayer(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::SetVariantFallbacks(uint64_t result, uint64_t **a2, pxrInternal__aapl__pxrReserved__::PcpChanges *a3)
{
  v5 = result;
  if (*(result + 192) != a2[2])
  {
    goto LABEL_17;
  }

  v6 = *(result + 176);
  v7 = (result + 184);
  if (v6 != (result + 184))
  {
    v8 = *a2;
    while (1)
    {
      result = sub_29A43A4E0(&v18, (v6 + 4), (v8 + 4));
      if ((result & 1) == 0)
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

      v12 = v8[1];
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
          v13 = v8[2];
          v11 = *v13 == v8;
          v8 = v13;
        }

        while (!v11);
      }

      v8 = v13;
      if (v6 == v7)
      {
        return result;
      }
    }

LABEL_17:
    if (v5 + 22 != a2)
    {
      sub_29A43A5B8(v5 + 22, *a2, a2 + 1);
    }

    v18 = a3;
    v14 = pxrInternal__aapl__pxrReserved__::PcpChanges::PcpChanges(v19);
    v15 = v18;
    v16 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v14);
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v19;
    }

    pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(v17, v5, v16);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::PcpCache::RequestPayloads(const pxrInternal__aapl__pxrReserved__::PcpCache *a1, void *a2, void *a3, pxrInternal__aapl__pxrReserved__::PcpChanges *a4)
{
  v31 = a4;
  pxrInternal__aapl__pxrReserved__::PcpChanges::PcpChanges(v32);
  v29 = *a2;
  v30 = a2 + 1;
  while (v29 != v30)
  {
    v6 = sub_29A431548(&v29);
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((*v6 + 28)))
    {
      v9 = sub_29A431580(&v29, v7, v8);
      sub_29A43A86C(a1 + 136, v9, v9);
      if (v10)
      {
        v12 = v31;
        v13 = sub_29A431580(&v29, v10, v11);
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v32;
        }

        pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(v14, a1, v13);
      }
    }

    else
    {
      v24 = "pcp/cache.cpp";
      v25 = "RequestPayloads";
      v26 = 240;
      v27 = "void pxrInternal__aapl__pxrReserved__::PcpCache::RequestPayloads(const SdfPathSet &, const SdfPathSet &, PcpChanges *)";
      v28 = 0;
      v15 = sub_29A431548(&v29);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v15 + 28));
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Path <%s> must be a prim path", Text);
    }

    sub_29A431604(&v29);
  }

  v29 = *a3;
  v30 = a3 + 1;
  while (v29 != v30)
  {
    v17 = sub_29A431548(&v29);
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((*v17 + 28)))
    {
      sub_29A431580(&v29, v18, v19);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::find<pxrInternal__aapl__pxrReserved__::SdfPath>();
    }

    v24 = "pcp/cache.cpp";
    v25 = "RequestPayloads";
    v26 = 252;
    v27 = "void pxrInternal__aapl__pxrReserved__::PcpCache::RequestPayloads(const SdfPathSet &, const SdfPathSet &, PcpChanges *)";
    v28 = 0;
    v20 = sub_29A431548(&v29);
    v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v20 + 28));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Path <%s> must be a prim path", v21);
    sub_29A431604(&v29);
  }

  return sub_29A436C60(&v31);
}

void sub_29A431520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A436C60(va);
  _Unwind_Resume(a1);
}

void *sub_29A431548(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A2314();
  }

  return result;
}

uint64_t sub_29A431580(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator*() [T = const std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 28;
}

void *sub_29A431604(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator++() [T = const std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
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

void pxrInternal__aapl__pxrReserved__::PcpCache::RequestLayerMuting(uint64_t *a1, uint64_t *a2, uint64_t *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(v37, (a1 + 6));
  v34 = 0uLL;
  v35 = 0;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      if ((*(v8 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v8 + 8))
        {
LABEL_6:
          v31[0] = 0;
          v31[1] = 0;
          v30 = v31;
          pxrInternal__aapl__pxrReserved__::SdfLayer::Find(v8, &v30, &v32);
        }
      }

      else if (*(v8 + 23))
      {
        goto LABEL_6;
      }

      v8 += 24;
    }

    while (v8 != v9);
  }

  v32 = 0uLL;
  v33 = 0;
  v11 = *a3;
  v10 = a3[1];
  while (v11 != v10)
  {
    if ((*(v11 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v11 + 8))
      {
        goto LABEL_16;
      }
    }

    else if (!*(v11 + 23))
    {
      goto LABEL_16;
    }

    if (sub_29A22B430(*a2, a2[1], v11) == a2[1])
    {
      sub_29A070BA0(&v32);
    }

LABEL_16:
    v11 += 24;
  }

  if (v34 != *(&v34 + 1) || v32 != *(&v32 + 1))
  {
    v12 = sub_29A42F600(a1 + 25);
    sub_29A321960(&v30, a1);
    pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::MuteAndUnmuteLayers(v12, &v30, &v34, &v32);
    sub_29B28F9E0(&v30);
    v30 = a4;
    pxrInternal__aapl__pxrReserved__::PcpChanges::PcpChanges(v31);
    if (v30)
    {
      v13 = v30;
    }

    else
    {
      v13 = v31;
    }

    pxrInternal__aapl__pxrReserved__::PcpChanges::DidMuteAndUnmuteLayers(v13, a1, &v34, &v32);
    v15 = a5;
    v14 = a6;
    if (v32 != *(&v32 + 1))
    {
      v16 = sub_29A42F680((a1 + 26));
      for (i = v16; v16; i = v16)
      {
        if (*(v16 + 8))
        {
          sub_29A431C18((v16 + 8), v28);
          v17 = v28[0];
          v18 = v28[1];
          while (v17 != v18)
          {
            if (*v17)
            {
              if (v19)
              {
                v20 = v19;
                v21 = *(v17 + 8);
                if (v21)
                {
                  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v22 = sub_29A22B430(v32, *(&v32 + 1), v19 + 28);
                if (v22 != *(&v32 + 1))
                {
                  if (v30)
                  {
                    v23 = v30;
                  }

                  else
                  {
                    v23 = v31;
                  }

                  pxrInternal__aapl__pxrReserved__::PcpChanges::DidMaybeFixAsset(v23, a1, (v20 + 13), (v20 + 31), v20 + 28);
                }

                if (v21)
                {
                  sub_29A014BEC(v21);
                }
              }
            }

            v17 += 16;
          }

          v36 = v28;
          sub_29A0176E4(&v36);
          v16 = i;
        }

        v16 = *(v16 + 56);
        if (!v16)
        {
          v16 = sub_29A42FB34(&i);
        }
      }

      v15 = a5;
      v14 = a6;
    }

    if (v15)
    {
      sub_29A095FDC(v15);
      *v15 = v34;
      *(v15 + 16) = v35;
      v35 = 0;
      v34 = 0uLL;
    }

    if (v14)
    {
      sub_29A095FDC(v14);
      *v14 = v32;
      *(v14 + 16) = v33;
      v33 = 0;
      v32 = 0uLL;
    }

    sub_29A436C60(&v30);
  }

  v30 = &v32;
  sub_29A012C90(&v30);
  v30 = &v34;
  sub_29A012C90(&v30);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(v37);
}

void sub_29A431AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_29A436C60(&a19);
  a19 = &a35;
  sub_29A012C90(&a19);
  a19 = (v35 - 176);
  sub_29A012C90(&a19);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder((v35 - 144));
  _Unwind_Resume(a1);
}

void *sub_29A431C18@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[4];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v2)
  {
    return sub_29A426D84(a2, *v2, v2[1], (v2[1] - *v2) >> 4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::GetMutedLayers(pxrInternal__aapl__pxrReserved__::PcpCache *this)
{
  v1 = sub_29A42F600(this + 25);

  return pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetMutedLayers(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::IsLayerMuted(uint64_t *a1, uint64_t a2)
{
  sub_29A321960(v7, a1);
  v4 = sub_29A42F600(a1 + 25);
  IsLayerMuted = pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::IsLayerMuted(v4, v7, a2, 0);
  sub_29B28F9E0(v7);
  return IsLayerMuted;
}

void sub_29A431CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::IsLayerMuted(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = sub_29A42F600((a1 + 200));

  return pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::IsLayerMuted(v7, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::GetPrimIndexInputs@<X0>(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  memset(&__p, 0, sizeof(__p));
  v11 = 1;
  *&v6 = this;
  *(&v6 + 1) = this + 176;
  v7 = this + 136;
  v3 = atomic_load(pxrInternal__aapl__pxrReserved__::PCP_CULLING);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  LOBYTE(v11) = *v3;
  std::string::operator=(&__p, (this + 104));
  *a2 = v6;
  *(a2 + 16) = v7;
  sub_29A436CA0(a2 + 32, v8);
  *(a2 + 64) = *(&v9 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14((a2 + 72), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a2 + 96) = v11;
    if (v4 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a2 + 72) = __p;
    *(a2 + 96) = v11;
  }

  return sub_29A346EB0(v8);
}

void sub_29A431E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A346EB0(v9 + 32);
  sub_29A431E94(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A431E94(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_29A346EB0(a1 + 32);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::ComputeLayerStack(void *a1@<X0>, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2@<X1>, pxrInternal__aapl__pxrReserved__::PcpLayerStack **a3@<X8>)
{
  v6 = sub_29A42F600(a1 + 25);
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindOrCreate(v6, a2, a3);
  if (!a1[16])
  {
    if (pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator==(a2, a1 + 2))
    {
      a1[16] = *a3;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::PcpCache::FindPrimIndex(uint64_t a1, unsigned int *a2)
{
  v2 = sub_29A42F6CC((a1 + 208), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[1];
  result = v2 + 1;
  if (!v4)
  {
    return 0;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::PcpCache::_GetPrimIndex(uint64_t a1, unsigned int *a2)
{
  v2 = sub_29A42F6CC((a1 + 208), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[1];
  result = v2 + 1;
  if (!v4)
  {
    return 0;
  }

  return result;
}

{
  v2 = sub_29A42F6CC((a1 + 208), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[1];
  result = v2 + 1;
  if (!v4)
  {
    return 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::ComputeRelationshipTargetPaths(char *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a3, char a4, const char *a5, char a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  v27 = a4;
  v26 = a6;
  v24 = a8;
  v25 = a7;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this))
  {
    v16 = a1;
    v17 = this;
    v18 = &v27;
    v19 = a5;
    v20 = &v26;
    v21 = &v25;
    v22 = &v24;
    v23 = &v28;
    if (a1[96] == 1)
    {
      pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(v14);
      pxrInternal__aapl__pxrReserved__::PcpBuildPropertyIndex(this, a1, v14, v24);
      sub_29A432110(&v16, v14);
      sub_29A151CB4(&v15, 0);
      v29 = v14;
      sub_29A436DB8(&v29);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::PcpCache::ComputePropertyIndex(a1, this, a8);
      sub_29A432110(&v16, v13);
    }
  }

  else
  {
    v16 = "pcp/cache.cpp";
    v17 = "ComputeRelationshipTargetPaths";
    v18 = 413;
    v19 = "void pxrInternal__aapl__pxrReserved__::PcpCache::ComputeRelationshipTargetPaths(const SdfPath &, SdfPathVector *, BOOL, const SdfSpecHandle &, BOOL, SdfPathVector *, PcpErrorVector *)";
    LOBYTE(v20) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 1, "Path <%s> must be a relationship path", Text);
  }
}

void sub_29A4320FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4322C4(va);
  _Unwind_Resume(a1);
}

void sub_29A432110(uint64_t *a1, pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v4 = *a1;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v10, (*a1 + 16), a1[1]);
  pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(&v10, a2, 8, *a1[2], a1[3], *a1[4], v4, v17, *a1[5], *a1[6]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v14);
  v19 = &v13;
  sub_29A0176E4(&v19);
  v5 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *a1[7];
  v8 = *v7;
  *v7 = v17[0];
  v17[0] = v8;
  v9 = *(v7 + 16);
  *(v7 + 16) = *&v17[1];
  *&v17[1] = v9;
  v10 = &v17[1] + 1;
  sub_29A0176E4(&v10);
  v10 = v17;
  sub_29A1E234C(&v10);
}

void sub_29A4322A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A436D38(va);
  sub_29A436D70((v4 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_29A4322C4(uint64_t a1)
{
  sub_29A151CB4((a1 + 24), 0);
  v3 = a1;
  sub_29A436DB8(&v3);
  return a1;
}

char *pxrInternal__aapl__pxrReserved__::PcpCache::ComputePropertyIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A1741E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741E68))
  {
    pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(&unk_2A1741E48);
    __cxa_atexit(sub_29A4322C4, &unk_2A1741E48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741E68);
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this) & 1) == 0)
  {
    v8 = "pcp/cache.cpp";
    v9 = "ComputePropertyIndex";
    v10 = 1784;
    v11 = "const PcpPropertyIndex &pxrInternal__aapl__pxrReserved__::PcpCache::ComputePropertyIndex(const SdfPath &, PcpErrorVector *)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Path <%s> must be a property path");
    return &unk_2A1741E48;
  }

  if (*(a1 + 96) == 1)
  {
    v8 = "pcp/cache.cpp";
    v9 = "ComputePropertyIndex";
    v10 = 1797;
    v11 = "const PcpPropertyIndex &pxrInternal__aapl__pxrReserved__::PcpCache::ComputePropertyIndex(const SdfPath &, PcpErrorVector *)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "PcpCache will not compute a cached property index in USD mode; use PcpBuildPropertyIndex() instead.  Path was <%s>");
    return &unk_2A1741E48;
  }

  v6 = sub_29A4361EC((a1 + 248), this);
  if (pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::IsEmpty(v6))
  {
    pxrInternal__aapl__pxrReserved__::PcpBuildPropertyIndex(this, a1, v6, a3);
  }

  return v6;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::ComputeAttributeConnectionPaths(char *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a3, char a4, const char *a5, char a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  v27 = a4;
  v26 = a6;
  v24 = a8;
  v25 = a7;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this))
  {
    v16 = a1;
    v17 = this;
    v18 = &v27;
    v19 = a5;
    v20 = &v26;
    v21 = &v25;
    v22 = &v24;
    v23 = &v28;
    if (a1[96] == 1)
    {
      pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(v14);
      pxrInternal__aapl__pxrReserved__::PcpBuildPropertyIndex(this, a1, v14, v24);
      sub_29A4325E0(&v16, v14);
      sub_29A151CB4(&v15, 0);
      v29 = v14;
      sub_29A436DB8(&v29);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::PcpCache::ComputePropertyIndex(a1, this, a8);
      sub_29A4325E0(&v16, v13);
    }
  }

  else
  {
    v16 = "pcp/cache.cpp";
    v17 = "ComputeAttributeConnectionPaths";
    v18 = 452;
    v19 = "void pxrInternal__aapl__pxrReserved__::PcpCache::ComputeAttributeConnectionPaths(const SdfPath &, SdfPathVector *, BOOL, const SdfSpecHandle &, BOOL, SdfPathVector *, PcpErrorVector *)";
    LOBYTE(v20) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 1, "Path <%s> must be an attribute path", Text);
  }
}

void sub_29A4325CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4322C4(va);
  _Unwind_Resume(a1);
}

void sub_29A4325E0(uint64_t *a1, pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v4 = *a1;
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&v10, (*a1 + 16), a1[1]);
  pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(&v10, a2, 1, *a1[2], a1[3], *a1[4], v4, v17, *a1[5], *a1[6]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&v14);
  v19 = &v13;
  sub_29A0176E4(&v19);
  v5 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *a1[7];
  v8 = *v7;
  *v7 = v17[0];
  v17[0] = v8;
  v9 = *(v7 + 16);
  *(v7 + 16) = *&v17[1];
  *&v17[1] = v9;
  v10 = &v17[1] + 1;
  sub_29A0176E4(&v10);
  v10 = v17;
  sub_29A1E234C(&v10);
}

void sub_29A432770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A436D38(va);
  sub_29A436D70((v4 - 96));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::PcpCache::_GetPropertyIndex(pxrInternal__aapl__pxrReserved__::PcpCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A42FBBC(this + 31, a2);
  if (result)
  {
    v3 = result + 1;
    if (pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::IsEmpty((result + 1)))
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

{
  result = sub_29A42FBBC(this + 31, a2);
  if (result)
  {
    v3 = result + 1;
    if (pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::IsEmpty((result + 1)))
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCache::GetUsedLayers@<X0>(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X0>, uint64_t *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetUsedLayers(*(this + 36), a2);
  v6 = *(this + 16);
  v5 = (this + 128);
  if (v6)
  {
    v7 = sub_29A4184C4(v5);
    result = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v7);
    if (*result != *(result + 8))
    {
      sub_29A41CD8C(a2, (a2 + 1), *result);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::GetUsedRootLayers(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetUsedRootLayers(*(this + 36), a2);
  sub_29A321960(&v3, this);
  sub_29A43AC14();
}

void sub_29A4328C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  sub_29A1FFFD0(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = sub_29A42F600((a1 + 200));
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindAllUsingLayer(v2);
}

void sub_29A432AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_29A43AC9C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(uint64_t a1@<X1>, int a2@<W3>, void *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if ((a2 & 0x30) != 0)
  {
    if ((a2 & 0xF) != 0)
    {
      if ((a2 & 0x21) != 1)
      {
        sub_29A419260(a1);
      }

      v4 = "pcp/cache.cpp";
      v5 = "FindSiteDependencies";
      v6 = 657;
      v7 = "PcpDependencyVector pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(const PcpLayerStackPtr &, const SdfPath &, PcpDependencyFlags, BOOL, BOOL, BOOL) const";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "depMask of PcpDependencyTypeRoot requires PcpDependencyTypeNonVirtual");
    }

    else
    {
      v4 = "pcp/cache.cpp";
      v5 = "FindSiteDependencies";
      v6 = 650;
      v7 = "PcpDependencyVector pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(const PcpLayerStackPtr &, const SdfPath &, PcpDependencyFlags, BOOL, BOOL, BOOL) const";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "depMask must include at least one of {PcpDependencyTypeRoot, PcpDependencyTypePurelyDirect, PcpDependencyTypePartlyDirect, PcpDependencyTypeAncestral}");
    }
  }

  else
  {
    v4 = "pcp/cache.cpp";
    v5 = "FindSiteDependencies";
    v6 = 641;
    v7 = "PcpDependencyVector pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(const PcpLayerStackPtr &, const SdfPath &, PcpDependencyFlags, BOOL, BOOL, BOOL) const";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "depMask must include at least one of {PcpDependencyTypeVirtual, PcpDependencyTypeNonVirtual}");
  }
}

void sub_29A433328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  sub_29A1DCEA8(&a28);
  sub_29A43AC9C(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_29A433460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A43AD80(a1, a2);
  }

  else
  {
    sub_29A43AECC(a1, *(a1 + 8), a2);
    result = v3 + 72;
    *(a1 + 8) = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29A4334C0(_DWORD *a1)
{
  sub_29A41AF74((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A43351C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (*(a1 + 8) != 1)
  {
    return 1;
  }

  v3 = *a1;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(this))
  {
    v4 = sub_29A42F6CC(v3 + 26, this);
    return v4 && v4[1];
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this);
    if (result)
    {
      return pxrInternal__aapl__pxrReserved__::PcpCache::_GetPropertyIndex(v3, this) != 0;
    }
  }

  return result;
}

uint64_t sub_29A4335AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A43BCB0(a1, a2);
  }

  else
  {
    sub_29A43B000(a1, *(a1 + 8), a2);
    result = v3 + 72;
    *(a1 + 8) = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::PcpCache::CanHaveOpinionForSite(uint64_t a1, unsigned int *a2)
{
  result = sub_29A42F6CC((a1 + 208), a2);
  if (result)
  {
    v4 = result[1];
    v3 = result + 1;
    if (v4)
    {
      v27[0] = 0;
      v27[1] = 0;
      v26 = v27;
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v3, 6u, &v22);
      v5 = v22;
      v6 = v23;
      v7 = v24;
      v8 = v25;
      if (v22 != v24 || v23 != v25)
      {
        do
        {
          v21[0] = v5;
          v21[1] = v6;
          if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(v21))
          {
            LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v21);
            sub_29A41CF24(&v19, LayerStack);
            v10 = sub_29A43BE2C(&v26, &v19, &v19);
            if (sub_29B2A2360(v10, v11, &v20))
            {
              v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v21);
              v13 = sub_29A4184C4(v12);
              Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v13);
              v17 = Layers[1];
              v18[0] = *Layers;
              v18[1] = v17;
              if (v18[0] != v17)
              {
                sub_29A433804(v18, v15, v16);
                sub_29B299E9C();
              }
            }
          }

          ++v6;
        }

        while (v5 != v7 || v6 != v8);
      }

      sub_29A43BDFC(&v26, v27[0]);
    }

    return 0;
  }

  return result;
}

uint64_t sub_29A433804(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A433884(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::GetInvalidSublayerIdentifiers(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X0>, void *a2@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v3 = sub_29A42F600(this + 25);
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetAllLayerStacks(v3, &v9);
  v8[0] = v9;
  v8[1] = v10;
  if (v9 != v10)
  {
    v6 = sub_29A433AF0(v8, v4, v5);
    sub_29A419260(v6);
  }

  sub_29A43BF5C(a2, v11, v12);
  v7 = &v9;
  sub_29A0EBD50(&v7);
  sub_29A019EE8(&v11, v12[0]);
}

void sub_29A433A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, char *a21)
{
  a12 = &a17;
  sub_29A0EBD50(&a12);
  sub_29A019EE8(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t sub_29A433AF0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

uint64_t sub_29A433B70(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>>::operator*() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A433BF0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>>::operator++() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::PcpErrorBase>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A433C70(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::PcpCache::IsInvalidSublayerIdentifier(pxrInternal__aapl__pxrReserved__::PcpCache *a1, const void **a2)
{
  pxrInternal__aapl__pxrReserved__::PcpCache::GetInvalidSublayerIdentifiers(a1, &v6);
  v3 = sub_29A22B430(v6, v7, a2);
  v4 = v3 != v7;
  v8 = &v6;
  sub_29A012C90(&v8);
  return v4;
}

void *pxrInternal__aapl__pxrReserved__::PcpCache::GetInvalidAssetPaths@<X0>(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  result = sub_29A42F680((this + 208));
  v13 = result;
  v14 = 0;
  while (v13 != v14)
  {
    v4 = *sub_29A42F294(&v13);
    v5 = *sub_29A42F294(&v13);
    v7 = *(v5 + 8);
    v6 = (v5 + 8);
    if (v7)
    {
      sub_29A431C18(v6, v12);
      v9 = v12[0];
      v8 = v12[1];
      while (v9 != v8)
      {
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v15 = v4;
          v11 = sub_29A43C110(a2, v4, &unk_29B4D6118, &v15);
          sub_29A070BA0((v11 + 5));
        }

        v9 += 16;
      }

      v16 = v12;
      sub_29A0176E4(&v16);
    }

    result = sub_29A42F3F8(&v13);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::PcpCache::IsInvalidAssetPath(pxrInternal__aapl__pxrReserved__::PcpCache *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::PcpCache::GetInvalidAssetPaths(a1, &v20);
  v18 = v20;
  v19 = &v21;
  while (1)
  {
    v3 = v18;
    v4 = v19;
    if (v18 == v19)
    {
      break;
    }

    v5 = sub_29A434024(&v18);
    v8 = *(*v5 + 48);
    v16 = *(*v5 + 40);
    v17 = v8;
    while (v16 != v17)
    {
      v9 = sub_29A102AAC(&v16, v6, v7);
      v10 = *(v9 + 23);
      if (v10 >= 0)
      {
        v11 = *(v9 + 23);
      }

      else
      {
        v11 = v9[1];
      }

      v12 = *(a2 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v11 == v12)
      {
        if (v10 < 0)
        {
          v9 = *v9;
        }

        v14 = v13 >= 0 ? a2 : *a2;
        if (!memcmp(v9, v14, v11))
        {
          goto LABEL_19;
        }
      }

      sub_29A102B2C(&v16);
    }

    sub_29A43405C(&v18);
  }

LABEL_19:
  sub_29A43C068(&v20, v21);
  return v3 != v4;
}

void *sub_29A434024(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A23B8();
  }

  return result;
}

void *sub_29A43405C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, std::vector<std::string>, pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, std::vector<std::string>, pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan>, Reverse = false]";
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

void pxrInternal__aapl__pxrReserved__::PcpCache::Apply(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a3)
{
  v3 = a3;
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__count_unique<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

void sub_29A43459C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  sub_29A1E234C(&a15);
  _Unwind_Resume(a1);
}

void sub_29A4345E4(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 48);
          sub_29A151CB4((v6 + 40), 0);
          v8 = *(v6 + 16);
          if (v8)
          {
            *(v6 + 24) = v8;
            operator delete(v8);
          }

          sub_29A436E3C((v6 + 8));
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v9 = sub_29A1DE3A4(v6);
          operator delete(v9);
          v6 = v7;
        }

        while (v7);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

void sub_29A434694(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 40);
          sub_29A151CB4((v6 + 32), 0);
          v9 = (v6 + 8);
          sub_29A436DB8(&v9);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v8 = sub_29A1DE3A4(v6);
          operator delete(v8);
          v6 = v7;
        }

        while (v7);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePrimAndPropertyCaches(pxrInternal__aapl__pxrReserved__::PcpCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a3)
{
  v11 = 0;
  v10 = sub_29A42F6CC(this + 26, a2);
  v6 = sub_29A42FB34(&v10);
  v8 = v10;
  v11 = v6;
  v9 = v10;
  if (v6 != v10)
  {
    v6 = v10;
    do
    {
      pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Remove(*(this + 36), (v6 + 8), a3);
      v6 = *(v9 + 56);
      if (!v6)
      {
        v6 = sub_29A42FB34(&v9);
      }

      v9 = v6;
    }

    while (v11 != v6);
    v8 = v10;
  }

  if (v8 != v6)
  {
    sub_29A4354E4((this + 208), &v10);
  }

  pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePropertyCaches(this, a2, v7);
}

void pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePropertyCaches(pxrInternal__aapl__pxrReserved__::PcpCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a3)
{
  v5 = 0;
  v4 = sub_29A42FBBC(this + 31, a2);
  v5 = sub_29A42FC24(&v4);
  if (v4 != v5)
  {
    sub_29A4355AC((this + 248), &v4);
  }
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePrimCache(pxrInternal__aapl__pxrReserved__::PcpCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a3)
{
  result = sub_29A42F6CC(this + 26, a2);
  if (result)
  {
    v6 = result;
    pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Remove(*(this + 36), (result + 1), a3);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(&v7);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::Swap((v6 + 8), &v7);
    sub_29A151CB4(&v10, 0);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    return sub_29A436E3C(&v7);
  }

  return result;
}

void sub_29A4348F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A435494(va);
  _Unwind_Resume(a1);
}

void sub_29A434908(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v4 = *a1;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(this))
  {
    v5 = sub_29A42F6CC((v4 + 208), this);
    if (v5)
    {
      v6 = v5 + 1;
      if (v5[1])
      {
        pxrInternal__aapl__pxrReserved__::Pcp_RescanForSpecs(v5 + 1, *(v4 + 96), 1, a1[2]);
        pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v6, 6u, &v15);
        v8 = v15;
        v7 = v16;
        v9 = v17;
        if (v15 == v17 && v16 == v18)
        {
LABEL_10:
          pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePrimAndPropertyCaches(v4, this, *a1[1]);
        }

        else
        {
          v10 = v18 - 1;
          while (1)
          {
            v11 = v7;
            v14[0] = v8;
            v14[1] = v7;
            if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(v14))
            {
              break;
            }

            v7 = v11 + 1;
            if (v8 == v9 && v10 == v11)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this))
  {

    pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePropertyCache(v4, this, v12);
  }

  else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(this))
  {

    pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePropertyCaches(v4, this, v13);
  }
}

void pxrInternal__aapl__pxrReserved__::PcpCache::Reload(pxrInternal__aapl__pxrReserved__::PcpCache *this, pxrInternal__aapl__pxrReserved__::PcpChanges *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = (this + 128);
  if (*(this + 16))
  {
    pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(v27, (this + 48));
    v5 = sub_29A42F600(this + 25);
    pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetAllLayerStacks(v5, &v24);
    v20 = v24;
    v21 = v25;
    if (v24 != v25)
    {
      v8 = sub_29A433AF0(&v20, v6, v7);
      sub_29A419260(v8);
    }

    v20 = sub_29A42F680((this + 208));
    v21 = 0;
    while (v20 != v21)
    {
      v9 = *sub_29A434E34(&v20);
      v11 = *(v9 + 8);
      v10 = (v9 + 8);
      if (v11)
      {
        sub_29A431C18(v10, &v22);
        v12 = v22;
        v13 = v23;
        while (v12 != v13)
        {
          if (*v12)
          {
            if (v14)
            {
              v15 = v12[1];
              if (v15)
              {
                atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::PcpChanges::DidMaybeFixAsset(a2, this, (v14 + 13), (v14 + 31), v14 + 28);
              if (v15)
              {
                sub_29A014BEC(v15);
              }
            }
          }

          v12 += 2;
        }

        v26 = &v22;
        sub_29A0176E4(&v26);
      }

      sub_29A434E6C(&v20);
    }

    pxrInternal__aapl__pxrReserved__::PcpCache::GetUsedLayers(this, &v22);
    v16 = sub_29A4184C4(v2);
    pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetSessionLayers(v16, &v20);
    v17 = v20;
    v18 = v21;
    while (v17 != v18)
    {
      sub_29A43C240(&v22, v17);
      v17 += 16;
    }

    v26 = &v20;
    sub_29A38A7B4(&v26);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ReloadLayers(&v22, 0, v19);
    sub_29A1FFFD0(&v22, v23);
    v22 = &v24;
    sub_29A0EBD50(&v22);
    pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(v27);
  }
}

void sub_29A434D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_29A1FFFD0(va, v8);
  va_copy(v6, va1);
  sub_29A0EBD50(va);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(va2);
  _Unwind_Resume(a1);
}

void *sub_29A434E34(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A2404();
  }

  return result;
}

unint64_t *sub_29A434E6C(unint64_t *a1)
{
  if (*a1 == a1[1])
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPrimIndex>>::operator++() [T = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPrimIndex>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    v2 = *(*a1 + 56);
    if (!v2)
    {
      v2 = sub_29A42FB34(a1);
    }

    *a1 = v2;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::ReloadReferences(pxrInternal__aapl__pxrReserved__::PcpCache *this, pxrInternal__aapl__pxrReserved__::PcpChanges *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(v30, (this + 48));
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v23 = 0;
  v22 = sub_29A42F6CC(this + 26, a3);
  v7 = sub_29A42FB34(&v22);
  v8 = v22;
  v27 = v22;
  if (v22 != v7)
  {
    v15 = v7;
    do
    {
      v9 = (v8 + 1);
      if (v8[1])
      {
        sub_29A431C18(v8 + 1, v26);
        v11 = v26[0];
        v10 = v26[1];
        while (v11 != v10)
        {
          if (*v11)
          {
            if (v12)
            {
              v13 = *(v11 + 8);
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::PcpChanges::DidMaybeFixAsset(a2, this, (v12 + 13), (v12 + 31), v12 + 28);
              if (v13)
              {
                sub_29A014BEC(v13);
              }
            }
          }

          v11 += 16;
        }

        pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v9, 6u, &v22);
        if (v22 != v24 || v23 != v25)
        {
          v21[0] = v22;
          v21[1] = v23;
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v21, &v16);
          sub_29A41CF24(&v19, &v16);
          sub_29A43BE2C(&v28, &v19, &v19);
          sub_29B28CF5C(&v20);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
          sub_29A1DE3A4(&v17);
          sub_29A41B088();
        }

        v22 = v26;
        sub_29A0176E4(&v22);
        v8 = v27;
        v7 = v15;
      }

      v8 = v8[7];
      if (!v8)
      {
        v8 = sub_29A42FB34(&v27);
      }

      v27 = v8;
    }

    while (v7 != v8);
  }

  if (v28 != v29)
  {
    sub_29A419260((v28 + 4));
  }

  v23 = 0;
  v24 = 0;
  v22 = &v23;
  pxrInternal__aapl__pxrReserved__::SdfLayer::ReloadLayers(&v22, 0, v6);
  sub_29A1FFFD0(&v22, v23);
  sub_29A43BDFC(&v28, v29[0]);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(v30);
}

void sub_29A435340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  sub_29A1FFFD0(&a18, a19);
  sub_29A43BDFC(&a26, a27);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder((v27 - 144));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A435494(uint64_t a1)
{
  sub_29A151CB4((a1 + 32), 0);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return sub_29A436E3C(a1);
}

void sub_29A4354E4(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29A43C350(a1, *a2);
  sub_29A43C3A4(a1, v3);

  sub_29A43C440(a1, v3);
}

void pxrInternal__aapl__pxrReserved__::PcpCache::_RemovePropertyCache(pxrInternal__aapl__pxrReserved__::PcpCache *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a3)
{
  v3 = sub_29A42FBBC(this + 31, a2);
  if (v3)
  {
    v4 = v3;
    pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(v5);
    pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::Swap(v4 + 1, v5);
    sub_29A151CB4(&v6, 0);
    v7 = v5;
    sub_29A436DB8(&v7);
  }
}

void sub_29A435598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4322C4(va);
  _Unwind_Resume(a1);
}

void sub_29A4355AC(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29A43C5C8(a1, *a2);
  sub_29A43C61C(a1, v3);

  sub_29A43C6B8(a1, v3);
}

void pxrInternal__aapl__pxrReserved__::PcpCache::_ForEachLayerStack(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A42F600((a1 + 200));

  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::ForEachLayerStack(v3, a2);
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpCache::_ForEachPrimIndex(uint64_t a1, uint64_t a2)
{
  result = sub_29A42F680((a1 + 208));
  while (1)
  {
    v4 = result;
    if (!result)
    {
      break;
    }

    if (*(result + 8))
    {
      (*(a2 + 8))(*a2, result + 8);
      result = v4;
    }

    result = *(result + 56);
    if (!result)
    {
      result = sub_29A42FB34(&v4);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpCache::_ComputePrimIndexesInParallel(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v46 = *MEMORY[0x29EDCA608];
  v26 = a8;
  if (*(a1 + 96))
  {
    pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(v45);
    sub_29A43C834(&v24, &v26, &a9);
    if (!*(a1 + 128))
    {
      pxrInternal__aapl__pxrReserved__::PcpCache::ComputeLayerStack(a1, (a1 + 16), &v23);
      sub_29A41B088();
    }

    v16 = *(a1 + 296);
    if (!v16)
    {
      v17 = operator new(0x260uLL);
      sub_29A41CF24(v22, (a1 + 128));
      sub_29A436E6C(v17, a1, v22);
      sub_29B2A2450((a1 + 296), v17, v22, &v38);
      v16 = v38;
    }

    pxrInternal__aapl__pxrReserved__::PcpCache::GetPrimIndexInputs(a1, v33);
    HIBYTE(v37) = *(a1 + 96);
    v32[0] = &unk_2A204E688;
    v32[1] = a6;
    v32[2] = a7;
    v32[3] = v32;
    sub_29A437820(v34, v32);
    v38 = v33[0];
    v39 = v33[1];
    sub_29A436CA0(v40, v34);
    v41 = v34[4];
    if (SHIBYTE(v36) < 0)
    {
      sub_29A008D14(&v42, __p, *(&__p + 1));
    }

    else
    {
      v42 = __p;
      v43 = v36;
    }

    v44 = v37;
    sub_29A346EB0(v32);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }

    sub_29A346EB0(v34);
    v27[0] = v38;
    v27[1] = v39;
    sub_29A436CA0(v28, v40);
    v28[4] = v41;
    if (SHIBYTE(v43) < 0)
    {
      sub_29A008D14(&v29, v42, *(&v42 + 1));
    }

    else
    {
      v29 = v42;
      v30 = v43;
    }

    v31 = v44;
    sub_29A435B08(v16, a4, a5, v27, a3, v45, v26, a9);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    v18 = sub_29A346EB0(v28);
    v19 = *a2;
    v20 = a2[1];
    if (*a2 != v20)
    {
      do
      {
        if (*v19 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v18))
        {
          v21 = 0;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v19, v33);
          v21 = pxrInternal__aapl__pxrReserved__::PcpCache::_ComputePrimIndexWithCompatibleInputs(a1, v33, &v38, a3);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v33 + 1);
          sub_29A1DE3A4(v33);
        }

        v18 = sub_29A435E2C(v16, v21, v19);
        v19 = (v19 + 8);
      }

      while (v19 != v20);
    }

    sub_29A435ED8(v16);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    sub_29A346EB0(v40);
    if (v24)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v25, v24);
    }

    pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(v45);
  }

  else
  {
    *&v38 = "pcp/cache.cpp";
    *(&v38 + 1) = "_ComputePrimIndexesInParallel";
    *&v39 = 1651;
    *(&v39 + 1) = "void pxrInternal__aapl__pxrReserved__::PcpCache::_ComputePrimIndexesInParallel(const SdfPathVector &, PcpErrorVector *, _UntypedIndexingChildrenPredicate, _UntypedIndexingPayloadPredicate, const char *, const char *)";
    v40[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v38, 1, "Computing prim indexes in parallel only supported for USD caches.");
  }
}

void sub_29A435A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A346EB0(v4 + 32);
  sub_29A431E94(v5 - 208);
  sub_29A0E9CEC(va);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache((v5 - 104));
  _Unwind_Resume(a1);
}

void *sub_29A435B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 392) = a2;
  *(a1 + 400) = a3;
  v14 = *(a4 + 16);
  *(a1 + 408) = *a4;
  *(a1 + 424) = v14;
  sub_29A437820((a1 + 440), a4 + 32);
  *(a1 + 472) = *(a4 + 64);
  result = std::string::operator=((a1 + 480), (a4 + 72));
  *(a1 + 504) = *(a4 + 96);
  *(a1 + 432) = a1 + 40;
  *(a1 + 512) = a5;
  *(a1 + 528) = a6;
  *(a1 + 536) = a7;
  *(a1 + 544) = a8;
  v16 = *(a1 + 560);
  v17 = *(a1 + 552);
  while (v16 != v17)
  {
    v16 -= 16;
    result = sub_29A4377A8(a1 + 552, v16);
  }

  *(a1 + 560) = v17;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpCache::_ComputePrimIndexWithCompatibleInputs(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29A42F6CC((a1 + 208), a2);
  if (!v8 || (v9 = v8 + 1, !v8[1]))
  {
    if (!*(a1 + 128))
    {
      pxrInternal__aapl__pxrReserved__::PcpCache::ComputeLayerStack(a1, (a1 + 16), &v25);
      sub_29A41B088();
    }

    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(&v14);
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::PcpExpressionVariablesDependencyData(&v23);
    memset(v24, 0, sizeof(v24));
    sub_29A41CF24(v13, (a1 + 128));
    pxrInternal__aapl__pxrReserved__::PcpComputePrimIndex(a2, v13, a3, &v14, 0);
    sub_29B28F9E0(v13);
    sub_29A4272D4(a4, *(a4 + 8), v18, v19, (v19 - v18) >> 4);
    pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Add(*(a1 + 288), &v14, v24, &v22, &v23);
    v11 = v21;
    if (v21 == 3)
    {
      sub_29A43A86C(a1 + 136, a2, a2);
      v11 = v21;
    }

    if (v11 == 4)
    {
      sub_29A43AB80((a1 + 136), a2);
    }

    v9 = sub_29A436020((a1 + 208), a2);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::Swap(v9, &v14);
    v13[0] = v24;
    sub_29A41CF9C(v13);
    pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::~PcpExpressionVariablesDependencyData(&v23);
    v12 = v22;
    v22 = 0;
    if (v12)
    {
      sub_29A41AE40(&v22, v12);
    }

    v13[0] = &v18;
    sub_29A0176E4(v13);
    sub_29A151CB4(&v17, 0);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_29A436E3C(&v14);
  }

  return v9;
}

void sub_29A435D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A436128(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A435E2C(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, _DWORD *a3)
{
  if (!a2 && *a3 != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1))
  {
    sub_29B2A24D4(&v9, v6, v7);
  }

  v9 = a2;
  sub_29A1E21F4(&v10, a3);
  sub_29A1E2240(v11, a3 + 1);
  sub_29A437AF8(a1 + 552, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11);
  return sub_29A1DE3A4(&v10);
}

void sub_29A435ED8(uint64_t a1)
{
  v2 = a1;
  v3[0] = &unk_2A204E570;
  v3[1] = &v2;
  tbb::interface7::internal::isolate_within_arena(v3, 0);
  sub_29A437E74(a1, (a1 + 552), *(a1 + 560) - *(a1 + 552) > 0x3FF0uLL);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpCache::ComputePrimIndex(pxrInternal__aapl__pxrReserved__::PcpCache *a1, unsigned int *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::PcpCache::GetPrimIndexInputs(a1, v8);
  v12 = *(a1 + 96);
  v6 = pxrInternal__aapl__pxrReserved__::PcpCache::_ComputePrimIndexWithCompatibleInputs(a1, a2, v8, a3);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  sub_29A346EB0(&v9);
  return v6;
}

char *sub_29A436020(void *a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(v8);
  sub_29A1E21F4(&v11, a2);
  sub_29A1E2240(&v12, a2 + 1);
  v4 = *v8;
  v8[0] = 0;
  v8[1] = 0;
  *__p = v4;
  v14 = v9;
  v9 = 0uLL;
  v5 = v10;
  v10 = 0;
  v15 = v5;
  v6 = sub_29A439510(a1, &v11);
  sub_29A151CB4(&v15, 0);
  if (__p[1])
  {
    *&v14 = __p[1];
    operator delete(__p[1]);
  }

  sub_29A436E3C(__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  sub_29A1DE3A4(&v11);
  sub_29A151CB4(&v10, 0);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  sub_29A436E3C(v8);
  return v6 + 8;
}

void sub_29A43610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A436B24(&a15);
  sub_29A435494(&a9);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A436128(uint64_t a1)
{
  v5 = (a1 + 88);
  sub_29A41CF9C(&v5);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::~PcpExpressionVariablesDependencyData((a1 + 80));
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    sub_29A41AE40(a1 + 72, v2);
  }

  v5 = (a1 + 40);
  sub_29A0176E4(&v5);
  sub_29A151CB4((a1 + 32), 0);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return sub_29A436E3C(a1);
}

char *sub_29A4361EC(void *a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(v6);
  sub_29A43CED4(&v8, a2, v6);
  v4 = sub_29A43C9A8(a1, &v8);
  sub_29A151CB4(&v11, 0);
  v12 = &v10;
  sub_29A436DB8(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  sub_29A151CB4(&v7, 0);
  v12 = v6;
  sub_29A436DB8(&v12);
  return v4 + 8;
}

void sub_29A43629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A43C1E8(&a13);
  sub_29A4322C4(&a9);
  _Unwind_Resume(a1);
}

void sub_29A4362D0(uint64_t a1)
{
  v12[9] = *MEMORY[0x29EDCA608];
  v1 = **(a1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v10);
  v8 = 0;
  v9 = v11;
  v2 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v8, 0x18uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204E310;
  v2[1] = v1;
  v2[2] = v12;
  (***(v2 - 5))();
  v8 = 0;
  v9 = v11;
  v3 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v8, 0x18uLL);
  *(v3 - 11) = 1;
  *v3 = &unk_2A204E358;
  v3[1] = v1;
  v3[2] = v12;
  (***(v3 - 5))();
  v8 = 0;
  v9 = v11;
  v4 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v8, 0x18uLL);
  *(v4 - 11) = 1;
  *v4 = &unk_2A204E3A0;
  v4[1] = v1;
  v4[2] = v12;
  (***(v4 - 5))();
  v8 = 0;
  v9 = v11;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v8, 0x18uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A204E3E8;
  v5[1] = v1;
  v5[2] = v12;
  (***(v5 - 5))();
  v8 = 0;
  v9 = v11;
  v6 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v8, 0x18uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204E430;
  v6[1] = v1;
  v6[2] = v12;
  (***(v6 - 5))();
  v8 = 0;
  v9 = v11;
  v7 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v8, 0x18uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A204E478;
  v7[1] = v1;
  v7[2] = v12;
  (***(v7 - 5))();
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v10);
}

void sub_29A436714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A436814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A436830(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  v2 = *(a1 + 8);
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  sub_29A1C04D0(v8, v2 + 136);
  sub_29A43A24C(v8);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = v7;
  v5 = atomic_load((v3 + 144));
  if (v4 < v5 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v3))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v7, *(a1 + 16));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return 0;
}

void sub_29A4368E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4368FC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v13);
  v2 = *(a1 + 8);
  v3 = &v14;
  v6 = *(v2 + 184);
  v5 = (v2 + 184);
  v4 = v6;
  v14 = *(v5 - 1);
  v15[0] = v6;
  v7 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  v15[1] = v7;
  v8 = v6 + 2;
  if (v7)
  {
    v3 = v8;
  }

  *v3 = v15;
  *(v5 - 1) = v5;
  sub_29A43A2CC(&v14, v4);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v10 = v13;
  v11 = atomic_load((v9 + 144));
  if (v10 < v11 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v13, v9))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v13, *(a1 + 16));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v13);
  return 0;
}

uint64_t sub_29A4369E0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  v2 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_VisitPathTableInParallel(*(v2 + 208), (*(v2 + 216) - *(v2 + 208)) >> 3, &v8, sub_29A436AA8);
  *(v2 + 232) = 0;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = v7;
  v5 = atomic_load((v3 + 144));
  if (v4 < v5 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v3))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v7, *(a1 + 16));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return 0;
}

void sub_29A436AA8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    do
    {
      v4 = *(v3 + 48);
      sub_29A151CB4((v3 + 40), 0);
      v5 = *(v3 + 16);
      if (v5)
      {
        *(v3 + 24) = v5;
        operator delete(v5);
      }

      sub_29A436E3C((v3 + 8));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v3 + 4));
      v6 = sub_29A1DE3A4(v3);
      operator delete(v6);
      v3 = v4;
    }

    while (v4);
  }

  *a2 = 0;
}

_DWORD *sub_29A436B24(uint64_t a1)
{
  sub_29A151CB4((a1 + 40), 0);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  sub_29A436E3C((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A436B90(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  v2 = *(a1 + 8);
  v8 = *(v2 + 248);
  *(v2 + 248) = 0u;
  v9 = *(v2 + 264);
  *(v2 + 264) = 0;
  v10 = *(v2 + 272);
  *(v2 + 272) = 0u;
  sub_29A43A360(&v8);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = v7;
  v5 = atomic_load((v3 + 144));
  if (v4 < v5 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v3))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v7, *(a1 + 16));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return 0;
}

void sub_29A436C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29A436C60(void *a1)
{
  if (!*a1)
  {
    pxrInternal__aapl__pxrReserved__::PcpChanges::Apply((a1 + 1));
  }

  pxrInternal__aapl__pxrReserved__::PcpChanges::~PcpChanges((a1 + 1));
  return a1;
}

uint64_t sub_29A436CA0(uint64_t a1, uint64_t a2)
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

uint64_t sub_29A436D38(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 84));
  sub_29B2A252C(a1);
  return a1;
}

void **sub_29A436D70(void **a1)
{
  v3 = a1 + 3;
  sub_29A0176E4(&v3);
  v3 = a1;
  sub_29A1E234C(&v3);
  return a1;
}

void sub_29A436DB8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A436E6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  *a1 = a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = Resolver;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher((a1 + 48));
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 504) = 1;
  *(a1 + 520) = 0;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  *(a1 + 576) = &unk_2A204E530;
  v8 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v7);
  *(a1 + 584) = v8;
  bzero(v8, 0x2C0uLL);
  *(*(a1 + 584) + 256) = xmmword_29B48F180;
  *(a1 + 576) = &unk_2A204E4C0;
  atomic_store(0, (a1 + 600));
  return a1;
}

void sub_29A436F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A437720(va);
  sub_29A431E94(v2 + 408);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher((v2 + 48));
  v4 = *(v2 + 16);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v4 + 8))(v4);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A436FE8(void *a1)
{
  v1 = sub_29A4370C0(a1);

  operator delete(v1);
}

uint64_t sub_29A437078(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

uint64_t sub_29A4370C0(void *a1)
{
  *a1 = &unk_2A204E4C0;
  sub_29A437120(a1);
  sub_29A171EEC(a1);

  return sub_29A4371B4(a1, v2);
}

uint64_t sub_29A437120(uint64_t a1)
{
  sub_29A437200(v8);
  while (1)
  {
    v2 = *(a1 + 8);
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

    sub_29A437344(a1, v8);
  }

  return sub_29A43767C(v8);
}

void sub_29A4371A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43767C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4371B4(uint64_t a1, void *a2)
{
  *a1 = &unk_2A204E530;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

uint64_t sub_29A437200(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::PcpExpressionVariablesDependencyData((a1 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_29A437278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;
  v6 = *v4;
  *v4 = 0;
  if (v6)
  {
    sub_29A41AE40(v4, v6);
  }

  sub_29A0176E4(va);
  sub_29A435494((v2 + 1));
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    sub_29A4372CC(v2, v7);
  }

  _Unwind_Resume(a1);
}

void sub_29A4372CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A151CB4((a2 + 40), 0);
    v3 = *(a2 + 16);
    if (v3)
    {
      *(a2 + 24) = v3;
      operator delete(v3);
    }

    sub_29A436E3C((a2 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));
    v4 = sub_29A1DE3A4(a2);

    operator delete(v4);
  }
}

BOOL sub_29A437344(uint64_t a1, uint64_t a2)
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

    if (sub_29A437404(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

BOOL sub_29A437404(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
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

  v20[0] = v8 + 8;
  v20[1] = a1;
  v20[2] = v17;
  v20[3] = a4;
  v18 = *(v13 + 8) & (1 << v16);
  if (v18)
  {
    sub_29A437520(a1, a2, v13, v16);
  }

  else
  {
    atomic_fetch_add((v14 + 272), 0xFFFFFFFFFFFFFFFFLL);
  }

  sub_29A172748(v20);
  return v18 != 0;
}

uint64_t sub_29A437520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 120 * a4;
  sub_29A43757C(a2, (v4 + 16));

  return sub_29A43767C(v4 + 16);
}

void sub_29A437564(_Unwind_Exception *a1)
{
  v2 = v1;
  sub_29A43767C(v2 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_29A43757C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    sub_29A4372CC(a1, v5);
  }

  sub_29A437630((a1 + 8), a2 + 1);
  sub_29A03AF64((a1 + 48));
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = a2[8];
  a2[7] = 0;
  a2[8] = 0;
  a2[6] = 0;
  *(a1 + 72) = *(a2 + 18);
  v6 = *(a1 + 80);
  *(a1 + 80) = a2[10];
  a2[10] = v6;
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::operator=((a1 + 88), a2 + 11);
  sub_29A41B744((a1 + 96));
  *(a1 + 96) = *(a2 + 6);
  *(a1 + 112) = a2[14];
  a2[12] = 0;
  a2[13] = 0;
  a2[14] = 0;
  return a1;
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A437630(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = 0;
  sub_29B290B2C(a1, v4);
  sub_29B2A25DC(a1, a2);
  return a1;
}

uint64_t sub_29A43767C(uint64_t a1)
{
  v6 = (a1 + 96);
  sub_29A41CF9C(&v6);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::~PcpExpressionVariablesDependencyData((a1 + 88));
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    sub_29A41AE40(a1 + 80, v2);
  }

  v6 = (a1 + 48);
  sub_29A0176E4(&v6);
  sub_29A151CB4((a1 + 40), 0);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  sub_29A436E3C((a1 + 8));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    sub_29A4372CC(a1, v4);
  }

  return a1;
}

void sub_29A437720(void ***a1)
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
        v4 -= 16;
        sub_29A4377A8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A4377A8(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));

  return sub_29A1DE3A4((a2 + 8));
}

uint64_t sub_29A4377E8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  return a1;
}

void *sub_29A437820(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29A436CA0(v4, a2);
  sub_29A437894(v4, a1);
  sub_29A346EB0(v4);
  return a1;
}

void *sub_29A437894(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29A437AEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A437AF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A437B68(a1, a2);
    v5 = result;
  }

  else
  {
    v4 = (a2 + 12);
    *v3 = *a2;
    v5 = v3 + 16;
    sub_29A1DDD84((v3 + 8), (a2 + 8));
    result = sub_29A1DDDC0((v3 + 12), v4);
  }

  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_29A437B68(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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

  v9 = &v8[16 * v2];
  v16 = v8;
  v17 = v9;
  *(&v18 + 1) = &v8[16 * v7];
  *v9 = *a2;
  sub_29A1DDD84(v9 + 2, (a2 + 8));
  sub_29A1DDDC0(v9 + 3, (a2 + 12));
  *&v18 = v9 + 16;
  v10 = *(a1 + 8);
  v11 = &v9[*a1 - v10];
  sub_29A437C94(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A437DF8(&v16);
  return v15;
}

void sub_29A437C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A437DF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A437C94(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
    v5 = a2;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 2;
      *a4 = v9;
      v10 = (a4 + 12);
      sub_29A1DDD84((a4 + 8), v7 + 2);
      sub_29A1DDDC0(v10, v7 + 3);
      a4 = v15 + 16;
      v15 += 16;
      v7 = v8;
    }

    while (v8 != a3);
    v13 = 1;
    while (v5 != a3)
    {
      sub_29A4377A8(a1, v5);
      v5 += 16;
    }
  }

  return sub_29A437D6C(v12);
}

uint64_t sub_29A437D6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A437DA4(a1);
  }

  return a1;
}

uint64_t *sub_29A437DA4(uint64_t *result)
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
      v3 -= 16;
      result = sub_29A4377A8(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}