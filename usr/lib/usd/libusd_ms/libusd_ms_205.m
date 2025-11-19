void *sub_29B212E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29B2131B4(a1, a2);
  }

  else
  {
    sub_29B21314C(a1, a2);
    result = (v3 + 32);
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_29B212E84(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29B2130FC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_29A156170(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

_BYTE *sub_29B21314C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  result = v3 + 1;
  if (*(a2 + 31) < 0)
  {
    result = sub_29A008D14(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *result = v5;
  }

  *(a1 + 8) = v3 + 4;
  return result;
}

void *sub_29B2131B4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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

  v24 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v20 = v8;
  v21 = v9;
  v10 = &v8[32 * v7];
  v22 = v9;
  v23 = v10;
  *v9 = *a2;
  v11 = v9 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_29A008D14(v11, *(a2 + 8), *(a2 + 16));
    v9 = v21;
    v13 = v22;
    v10 = v23;
  }

  else
  {
    v12 = *(a2 + 8);
    *(v9 + 3) = *(a2 + 24);
    *v11 = v12;
    v13 = v9;
  }

  v14 = v13 + 32;
  v15 = *(a1 + 8) - *a1;
  v16 = &v9[-v15];
  memcpy(&v9[-v15], *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 8) = v14;
  v18 = *(a1 + 16);
  *(a1 + 16) = v10;
  v22 = v17;
  v23 = v18;
  v20 = v17;
  v21 = v17;
  sub_29A1595C4(&v20);
  return v14;
}

void sub_29B2132C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1595C4(va);
  _Unwind_Resume(a1);
}

const void **sub_29B2132DC(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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

  sub_29B213548(a1, v9, a4, v27);
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

void sub_29B213530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B213548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
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

void sub_29B2135EC(void *a1@<X8>)
{
  v2 = operator new(0x58uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20C91D0;
  v2[10] = 0;
  v2[3] = &unk_2A20C9220;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 20) = 1065353216;
  *a1 = v2 + 3;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B2136A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C91D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B213714(void *a1)
{
  *a1 = &unk_2A20C9220;
  sub_29B2137C4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B213764(void *a1)
{
  *a1 = &unk_2A20C9220;
  sub_29B2137C4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

uint64_t sub_29B2137C4(uint64_t a1)
{
  sub_29B213800(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B213800(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_29A014BEC(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_29B213848(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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

  sub_29B213AB4(a1, v9, a4, v27);
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

void sub_29B213A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B213AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
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

void sub_29B213B5C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29A03AF64(a1);
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
    v12 = sub_29AE13FA0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29A4274B8(&v18, a2, (a2 + v13), v8);
    v12 = sub_29AE13FA0(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29A4274B8(&v19, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v17 = *(v16 - 8);
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      v16 -= 16;
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

uint64_t *sub_29B213C9C(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_29B213D50(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = *a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = *a2;
      if (v8 <= v7)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
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
            if (*(v11 + 4) == v7)
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

  v11 = operator new(0x28uLL);
  *v11 = 0;
  v11[1] = v7;
  *(v11 + 4) = **a4;
  v11[3] = 0;
  v11[4] = 0;
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
      if (v8 <= v7)
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

void sub_29B213F94(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_29B213FF4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29B213800(a1, *(a1 + 16));
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

void *sub_29B214050@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  result = sub_29B2140B4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29B2140B4(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C9258;
  sub_29B2141B4(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_29B214148(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B2141B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4[1];
  v5 = *a4;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B22FF60(a2, a3, &v5);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B214210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B214228(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29B214288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2142A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20958E0, &unk_2A20C9230, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

char *sub_29B214354(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29B2143AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B2143C8(void *a1)
{
  result = sub_29B22141C(a1);
  *result = &unk_2A20C92A8;
  return result;
}

void sub_29B2143FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void **a5)
{
  if (a4 >= -1)
  {
    v7 = a4 / 2;
    if (a4 / 2 >= 0)
    {
      v8 = a4 / 2;
    }

    else
    {
      v8 = a4 / -2;
    }

    v34 = v8;
    v35 = a4 / -2;
    if (v7 <= a4 / -2)
    {
      v7 = a4 / -2;
    }

    v9 = v7 + 1;
    v10 = a4 / -2;
    do
    {
      v36 = v10;
      v11 = v10;
      v12 = v35;
      do
      {
        std::operator+<char>();
        v13 = std::string::append(&v39, " * ");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        v15 = *(a3 + 23);
        if (v15 >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        if (v15 >= 0)
        {
          v17 = *(a3 + 23);
        }

        else
        {
          v17 = *(a3 + 8);
        }

        v18 = std::string::append(&v40, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v20 = std::string::append(&v41, "(");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v42.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v38, v12);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v38;
        }

        else
        {
          v22 = v38.__r_.__value_.__r.__words[0];
        }

        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v38.__r_.__value_.__l.__size_;
        }

        v24 = std::string::append(&v42, v22, size);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v43.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v43.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&v43, ",");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v37, v11);
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v37;
        }

        else
        {
          v28 = v37.__r_.__value_.__r.__words[0];
        }

        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v37.__r_.__value_.__l.__size_;
        }

        v30 = std::string::append(&v44, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v45, ")");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v47 = v32->__r_.__value_.__r.__words[2];
        v46 = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        sub_29A091654(a5, &v46);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        ++v12;
      }

      while (v9 != v12);
      v10 = v36 + 1;
    }

    while (v36 != v34);
  }
}

void sub_29B2146E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 185) < 0)
  {
    operator delete(*(v56 - 208));
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B2147DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B246C60();
  v4 = sub_29A1B00DC(a2, v3);
  v5 = *(a2 + 32);
  if (v4 && v5 == 1)
  {
    return 1;
  }

  if ((v5 - 2) > 2)
  {
    return 0;
  }

  return *(a2 + 25) - 1 < 2;
}

void sub_29B214848(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6)
{
  sub_29A008E78(v52, "MX_MAX_SAMPLE_COUNT");
  v11 = sub_29B2438AC(a2[1], a4);
  v12 = v11;
  if (*(v11 + 23) >= 0)
  {
    v13 = *(v11 + 23);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  v14 = &v46;
  sub_29A022DE0(&v46, v13 + 1);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v46.__r_.__value_.__r.__words[0];
  }

  if (v13)
  {
    if (v12[23] >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = *v12;
    }

    memmove(v14, v15, v13);
  }

  *(&v14->__r_.__value_.__l.__data_ + v13) = 32;
  v16 = *(a5 + 23);
  if (v16 >= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = *a5;
  }

  if (v16 >= 0)
  {
    v18 = *(a5 + 23);
  }

  else
  {
    v18 = *(a5 + 8);
  }

  v19 = std::string::append(&v46, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v47, "[");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if ((v53 & 0x80u) == 0)
  {
    v23 = v52;
  }

  else
  {
    v23 = v52[0];
  }

  if ((v53 & 0x80u) == 0)
  {
    v24 = v53;
  }

  else
  {
    v24 = v52[1];
  }

  v25 = std::string::append(&v48, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v49, "]");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v51 = v27->__r_.__value_.__r.__words[2];
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  (*(*a2 + 80))(a2, __p, a3, 1);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (a6[1] != *a6)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      if (*(a5 + 23) >= 0)
      {
        v31 = *(a5 + 23);
      }

      else
      {
        v31 = *(a5 + 8);
      }

      sub_29A022DE0(&v47, v31 + 1);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v47;
      }

      else
      {
        v32 = v47.__r_.__value_.__r.__words[0];
      }

      if (v31)
      {
        if (*(a5 + 23) >= 0)
        {
          v33 = a5;
        }

        else
        {
          v33 = *a5;
        }

        memmove(v32, v33, v31);
      }

      *(&v32->__r_.__value_.__l.__data_ + v31) = 91;
      std::to_string(&v46, v30);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v46;
      }

      else
      {
        v34 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v46.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v47, v34, size);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v48, "] = ");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = *a6 + v29;
      v41 = *(v40 + 23);
      if (v41 >= 0)
      {
        v42 = (*a6 + v29);
      }

      else
      {
        v42 = *v40;
      }

      if (v41 >= 0)
      {
        v43 = *(v40 + 23);
      }

      else
      {
        v43 = *(v40 + 8);
      }

      v44 = std::string::append(&v49, v42, v43);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v51 = v44->__r_.__value_.__r.__words[2];
      *__p = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      (*(*a2 + 80))(a2, __p, a3, 1);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      ++v30;
      v29 += 24;
    }

    while (v30 < 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }
}

void sub_29B214C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B214D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = strlen(off_2A14FE6F8);
  v9 = result;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (result != *(a4 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a4;
  }

  else
  {
    result = a4;
    if (v9 != v10)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v9);
  if (!result)
  {
    v11 = *(*a1 + 136);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

void sub_29B214E4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a4 + 8))
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    sub_29A008E78(&v98, qword_2A14FE598);
    v13 = sub_29B23EC38(a2, &v98);
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    v14 = v12[1];
    if (v13 && (*(*a1 + 112))(a1, v13[3]))
    {
      v15 = sub_29B2438AC(v14, v13[3]);
    }

    else
    {
      v15 = sub_29B1F31FC();
    }

    v16 = v15;
    sub_29A008E78(&v98, qword_2A14FE5A0);
    v17 = sub_29B23EC38(a2, &v98);
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    if (!v17)
    {
      goto LABEL_150;
    }

    v18 = *(v16 + 23);
    if (v18 < 0)
    {
      v18 = *(v16 + 8);
    }

    if (!v18)
    {
LABEL_150:
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v72 = std::string::append(&v97, "' is not a valid Blur node");
      v73 = *&v72->__r_.__value_.__l.__data_;
      v99 = v72->__r_.__value_.__r.__words[2];
      v98 = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v98);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    sub_29A008E78(&v98, qword_2A14FE5A8);
    v19 = sub_29B23EC38(a2, &v98);
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    v78 = v16;
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = v19[16];
    v21 = v19[17];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *sub_29B1F487C(v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v22 > 0.0)
    {
      if (v22 <= 0.333)
      {
        v77 = 1;
        v23 = 3;
      }

      else
      {
        if (v22 <= 0.666)
        {
          v23 = 5;
        }

        else
        {
          v23 = 7;
        }

        if (v22 <= 0.666)
        {
          v24 = 10;
        }

        else
        {
          v24 = 35;
        }

        v77 = v24;
      }
    }

    else
    {
LABEL_36:
      v77 = 0;
      v23 = 1;
    }

    v98 = 0uLL;
    v99 = 0;
    sub_29A008E78(&v97, qword_2A14FE570);
    v25 = v23 * v23;
    sub_29B2218C0(a1, a2, v23 * v23, v23, &v97, a3, a4, &v98, 1.0, 0.0);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (v98 == *(&v98 + 1))
    {
      v74 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v75 = std::string::append(&v96, "' cannot compute upstream samples");
      v76 = *&v75->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v74, &v97);
      *v74 = &unk_2A20C8F68;
      __cxa_throw(v74, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v26 = **(a2 + 152);
    if (v25 == 1)
    {
      (*(*v12 + 48))(v12, a4);
      (*(*v12 + 192))(v12, v26, 1, 0, a3, a4);
      std::operator+<char>();
      (*(*v12 + 72))(v12, &v97, a4);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      (*(*v12 + 56))(v12, a4, 1);
LABEL_147:
      v97.__r_.__value_.__r.__words[0] = &v98;
      sub_29A012C90(&v97);
      return;
    }

    sub_29A008E78(&v97, "mx_convolution_");
    sub_29A008E78(&v96, "_samples");
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((v26 + 104), &v96.__r_.__value_.__l.__data_, v94);
    (*(*a1 + 144))(a1, v12, a4, v13[3], v94, &v98);
    (*(*v12 + 48))(v12, a4);
    (*(*v12 + 192))(v12, v26, 1, 0, a3, a4);
    (*(*v12 + 56))(v12, a4, 1);
    (*(*v12 + 48))(v12, a4);
    sub_29A008E78(&v91, "if (");
    (*(*v12 + 72))(v12, &v91, a4);
    if (SHIBYTE(v93) < 0)
    {
      operator delete(v91);
    }

    (*(*v12 + 184))(v12, v17, a3, a4);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    sub_29A008E78(&v88, qword_2A14FE578);
    v27 = std::string::insert(&v88, 0, "");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v89, "");
    v30 = *&v29->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v89, qword_2A14FE578);
    v31 = sub_29B247F60();
    sub_29A008E78(&v88, qword_2A14FE590);
    v32 = (*(*v14 + 200))(v14, &v89, v31, &v88, &v91);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
      if (!v32)
      {
LABEL_59:
        std::operator+<char>();
        v33 = std::string::append(&v88, ")");
        v34 = *&v33->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        (*(*v12 + 72))(v12, &v89, a4);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        (*(*v12 + 56))(v12, a4, 0);
        (*(*v12 + 32))(v12, a4, 1);
        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v97.__r_.__value_.__l.__data_, v78, &v89);
        (*(*v12 + 48))(v12, a4);
        (*(*v12 + 72))(v12, v26 + 104, a4);
        std::operator+<char>();
        (*(*v12 + 72))(v12, &v88, a4);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v35 = std::string::append(&v81, ", ");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v82, qword_2A14FE588);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v83, ", ");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v80, v77);
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v80;
        }

        else
        {
          v41 = v80.__r_.__value_.__r.__words[0];
        }

        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v80.__r_.__value_.__l.__size_;
        }

        v43 = std::string::append(&v84, v41, size);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v85.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v85.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        v45 = std::string::append(&v85, ", ");
        v46 = *&v45->__r_.__value_.__l.__data_;
        v86.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v86.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v79, v25);
        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v79;
        }

        else
        {
          v47 = v79.__r_.__value_.__r.__words[0];
        }

        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = v79.__r_.__value_.__l.__size_;
        }

        v49 = std::string::append(&v86, v47, v48);
        v50 = *&v49->__r_.__value_.__l.__data_;
        v87.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
        *&v87.__r_.__value_.__l.__data_ = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        v51 = std::string::append(&v87, ")");
        v52 = *&v51->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        (*(*v12 + 72))(v12, &v88, a4);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        (*(*v12 + 56))(v12, a4, 1);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        (*(*v12 + 40))(v12, a4, 0, 1);
        sub_29A008E78(&v89, "else");
        (*(*v12 + 80))(v12, &v89, a4, 0);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        (*(*v12 + 32))(v12, a4, 1);
        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v97.__r_.__value_.__l.__data_, v78, &v89);
        (*(*v12 + 48))(v12, a4);
        (*(*v12 + 72))(v12, v26 + 104, a4);
        std::operator+<char>();
        (*(*v12 + 72))(v12, &v88, a4);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v53 = std::string::append(&v81, ", ");
        v54 = *&v53->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = std::string::append(&v82, qword_2A14FE580);
        v56 = *&v55->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v83, ", ");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v80, v77);
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v80;
        }

        else
        {
          v59 = v80.__r_.__value_.__r.__words[0];
        }

        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v80.__r_.__value_.__l.__size_;
        }

        v61 = std::string::append(&v84, v59, v60);
        v62 = *&v61->__r_.__value_.__l.__data_;
        v85.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
        *&v85.__r_.__value_.__l.__data_ = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        v63 = std::string::append(&v85, ", ");
        v64 = *&v63->__r_.__value_.__l.__data_;
        v86.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
        *&v86.__r_.__value_.__l.__data_ = v64;
        v63->__r_.__value_.__l.__size_ = 0;
        v63->__r_.__value_.__r.__words[2] = 0;
        v63->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v79, v25);
        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v79;
        }

        else
        {
          v65 = v79.__r_.__value_.__r.__words[0];
        }

        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v66 = v79.__r_.__value_.__l.__size_;
        }

        v67 = std::string::append(&v86, v65, v66);
        v68 = *&v67->__r_.__value_.__l.__data_;
        v87.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&v87.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v87, ")");
        v70 = *&v69->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        (*(*v12 + 72))(v12, &v88, a4);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        (*(*v12 + 56))(v12, a4, 1);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        (*(*v12 + 40))(v12, a4, 0, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v93)
        {
          sub_29A014BEC(v93);
        }

        if (v95 < 0)
        {
          operator delete(v94[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        goto LABEL_147;
      }
    }

    else if (!v32)
    {
      goto LABEL_59;
    }

    (*(*v14 + 24))(&v89, v14, v91, v92, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v89;
    goto LABEL_59;
  }
}

void sub_29B215F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  v60 = *(v58 - 232);
  if (v60)
  {
    sub_29A014BEC(v60);
  }

  if (*(v58 - 201) < 0)
  {
    operator delete(*(v58 - 224));
  }

  if (*(v58 - 177) < 0)
  {
    operator delete(*(v58 - 200));
  }

  if (*(v58 - 153) < 0)
  {
    operator delete(*(v58 - 176));
  }

  *(v58 - 176) = v58 - 144;
  sub_29A012C90((v58 - 176));
  _Unwind_Resume(a1);
}

double sub_29B216294@<D0>(_OWORD *a1@<X8>)
{
  sub_29B216D94(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B2162D0(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *(a3 + 368);
    if (v12 == *(a3 + 360))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 - 8);
    }

    v14 = *a3;
    sub_29A008E78(&v95, qword_2A14FE5B0);
    v15 = sub_29B23EB84(a2, &v95);
    if (v97 < 0)
    {
      operator delete(v95);
    }

    sub_29A008E78(&v95, qword_2A14FE5B8);
    v16 = sub_29B23EB84(a2, &v95);
    if (v97 < 0)
    {
      operator delete(v95);
    }

    v17 = v15[30];
    if (v17)
    {
      v18 = v17[2];
      if (*(v18 + 8) == a2[1])
      {
        sub_29B20D440(&v95, a2, v18, v13);
        (*(*v14 + 128))(v14, v18, a3, a4);
        sub_29B20D47C(&v95);
      }
    }

    v19 = v16[30];
    if (v19)
    {
      v20 = v19[2];
      if (*(v20 + 8) == a2[1])
      {
        sub_29B20D440(&v95, a2, v20, v13);
        (*(*v14 + 128))(v14, v20, a3, a4);
        sub_29B20D47C(&v95);
      }
    }

    (*(*v14 + 224))(&v95, v14, v15, a3);
    (*(*v14 + 224))(&v92, v14, v16, a3);
    v21 = a2[19];
    v22 = *v21;
    v23 = *(*v21 + 24);
    v24 = sub_29B248158();
    if (sub_29A1B00DC(v23, v24))
    {
      (*(*a1 + 80))(a1, a2, a3, a4);
      if (*(v22 + 127) >= 0)
      {
        v25 = *(v22 + 127);
      }

      else
      {
        v25 = *(v22 + 112);
      }

      v26 = &v86;
      sub_29A022DE0(&v86, v25 + 12);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v86.__r_.__value_.__r.__words[0];
      }

      if (v25)
      {
        if (*(v22 + 127) >= 0)
        {
          v27 = (v22 + 104);
        }

        else
        {
          v27 = *(v22 + 104);
        }

        memmove(v26, v27, v25);
      }

      strcpy(v26 + v25, ".response = ");
      if ((v97 & 0x80u) == 0)
      {
        v28 = &v95;
      }

      else
      {
        v28 = v95;
      }

      if ((v97 & 0x80u) == 0)
      {
        v29 = v97;
      }

      else
      {
        v29 = v96;
      }

      v30 = std::string::append(&v86, v28, v29);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v87, ".response + ");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if ((v94 & 0x80u) == 0)
      {
        v34 = &v92;
      }

      else
      {
        v34 = v92;
      }

      if ((v94 & 0x80u) == 0)
      {
        v35 = v94;
      }

      else
      {
        v35 = v93;
      }

      v36 = std::string::append(&v88, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v89, ".response");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v91 = v38->__r_.__value_.__r.__words[2];
      __p = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, &__p, a4, 1);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (*(v22 + 127) >= 0)
      {
        v40 = *(v22 + 127);
      }

      else
      {
        v40 = *(v22 + 112);
      }

      v41 = &v86;
      sub_29A022DE0(&v86, v40 + 14);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v41 = v86.__r_.__value_.__r.__words[0];
      }

      if (v40)
      {
        if (*(v22 + 127) >= 0)
        {
          v42 = (v22 + 104);
        }

        else
        {
          v42 = *(v22 + 104);
        }

        memmove(v41, v42, v40);
      }

      strcpy(v41 + v40, ".throughput = ");
      if ((v97 & 0x80u) == 0)
      {
        v43 = &v95;
      }

      else
      {
        v43 = v95;
      }

      if ((v97 & 0x80u) == 0)
      {
        v44 = v97;
      }

      else
      {
        v44 = v96;
      }

      v45 = std::string::append(&v86, v43, v44);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = std::string::append(&v87, ".throughput * ");
      v48 = *&v47->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      if ((v94 & 0x80u) == 0)
      {
        v49 = &v92;
      }

      else
      {
        v49 = v92;
      }

      if ((v94 & 0x80u) == 0)
      {
        v50 = v94;
      }

      else
      {
        v50 = v93;
      }

      v51 = std::string::append(&v88, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = std::string::append(&v89, ".throughput");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v91 = v53->__r_.__value_.__r.__words[2];
      __p = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, &__p, a4, 1);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_128;
      }

      v55 = v86.__r_.__value_.__r.__words[0];
    }

    else
    {
      v56 = *(v22 + 24);
      v57 = sub_29B248254();
      if (!sub_29A1B00DC(v56, v57))
      {
        goto LABEL_128;
      }

      v58 = v14[1];
      v59 = sub_29B248254();
      v60 = sub_29B2438AC(v58, v59);
      v61 = v60;
      if (*(v60 + 23) >= 0)
      {
        v62 = *(v60 + 23);
      }

      else
      {
        v62 = *(v60 + 8);
      }

      v63 = &v85;
      sub_29A022DE0(&v85, v62 + 1);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = v85.__r_.__value_.__r.__words[0];
      }

      if (v62)
      {
        if (v61[23] >= 0)
        {
          v64 = v61;
        }

        else
        {
          v64 = *v61;
        }

        memmove(v63, v64, v62);
      }

      *(&v63->__r_.__value_.__l.__data_ + v62) = 32;
      v67 = *(v22 + 104);
      v66 = v22 + 104;
      v65 = v67;
      v68 = *(v66 + 23);
      if (v68 >= 0)
      {
        v69 = v66;
      }

      else
      {
        v69 = v65;
      }

      if (v68 >= 0)
      {
        v70 = *(v66 + 23);
      }

      else
      {
        v70 = *(v66 + 8);
      }

      v71 = std::string::append(&v85, v69, v70);
      v72 = *&v71->__r_.__value_.__l.__data_;
      v86.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
      *&v86.__r_.__value_.__l.__data_ = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      v73 = std::string::append(&v86, " = ");
      v74 = *&v73->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      if ((v97 & 0x80u) == 0)
      {
        v75 = &v95;
      }

      else
      {
        v75 = v95;
      }

      if ((v97 & 0x80u) == 0)
      {
        v76 = v97;
      }

      else
      {
        v76 = v96;
      }

      v77 = std::string::append(&v87, v75, v76);
      v78 = *&v77->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      v79 = std::string::append(&v88, " + ");
      v80 = *&v79->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      if ((v94 & 0x80u) == 0)
      {
        v81 = &v92;
      }

      else
      {
        v81 = v92;
      }

      if ((v94 & 0x80u) == 0)
      {
        v82 = v94;
      }

      else
      {
        v82 = v93;
      }

      v83 = std::string::append(&v89, v81, v82);
      v84 = *&v83->__r_.__value_.__l.__data_;
      v91 = v83->__r_.__value_.__r.__words[2];
      __p = v84;
      v83->__r_.__value_.__l.__size_ = 0;
      v83->__r_.__value_.__r.__words[2] = 0;
      v83->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, &__p, a4, 1);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_128;
      }

      v55 = v85.__r_.__value_.__r.__words[0];
    }

    operator delete(v55);
LABEL_128:
    if (v94 < 0)
    {
      operator delete(v92);
    }

    if (v97 < 0)
    {
      operator delete(v95);
    }
  }
}

uint64_t sub_29B216CE4(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B216D34(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B216D94@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B216DE0(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B216DE0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9400;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9368;
  return a1;
}

void sub_29B216E88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B216EF4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B218610(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B216F48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a4 + 8))
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    (*(**a3 + 120))(*a3, *(a1 + 40), a3, a4);
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(*v12 + 216))(v12, a2, &__p);
    v13 = __p;
    v14 = v16;
    if (__p == v16)
    {
      sub_29B2170D0(a1, 0, a3, a4);
    }

    else
    {
      do
      {
        sub_29B2170D0(a1, *v13++, a3, a4);
      }

      while (v13 != v14);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

void sub_29B2170B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2170D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(*a3 + 8);
  sub_29A008E78(v91, "");
  (*(*v7 + 48))(v7, a4);
  if (a2)
  {
    v9 = *(**(*(a1 + 40) + 88) + 24);
    std::operator+<char>();
    v10 = sub_29B217B64(a2, v9);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 1);
    }

    v14 = std::string::append(&v87, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v88, "(");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v90 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, __p, a4);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v18 = sub_29B217BA0(a2, v9);
    v19 = *v18;
    v20 = v18[1];
    if (*v18 != v20)
    {
      do
      {
        v21 = sub_29B2438AC(v8, *v19);
        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v91, v21, &v87);
        v22 = std::string::append(&v87, " ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v26 = *(v19 + 8);
        v25 = v19 + 8;
        v24 = v26;
        v27 = *(v25 + 23);
        if (v27 >= 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = v24;
        }

        if (v27 >= 0)
        {
          v29 = *(v25 + 23);
        }

        else
        {
          v29 = *(v25 + 8);
        }

        v30 = std::string::append(&v88, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v90 = v30->__r_.__value_.__r.__words[2];
        *__p = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        (*(*v7 + 72))(v7, __p, a4);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        MEMORY[0x29C2C1A60](v91, ", ");
        v19 = v25 + 24;
      }

      while (v19 != v20);
    }
  }

  else
  {
    std::operator+<char>();
    v32 = std::string::append(&v88, "(");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v90 = v32->__r_.__value_.__r.__words[2];
    *__p = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, __p, a4);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }
  }

  v34 = *(a1 + 40);
  v35 = v34[19];
  v36 = v34[20];
  v83 = a2;
  v84 = a1;
  if (v35 != v36)
  {
    do
    {
      v37 = *v35;
      v38 = sub_29B2438AC(v8, *(*v35 + 24));
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v91, v38, &v87);
      v39 = std::string::append(&v87, " ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v43 = *(v37 + 104);
      v42 = v37 + 104;
      v41 = v43;
      v44 = *(v42 + 23);
      if (v44 >= 0)
      {
        v45 = v42;
      }

      else
      {
        v45 = v41;
      }

      if (v44 >= 0)
      {
        v46 = *(v42 + 23);
      }

      else
      {
        v46 = *(v42 + 8);
      }

      v47 = std::string::append(&v88, v45, v46);
      v48 = *&v47->__r_.__value_.__l.__data_;
      v90 = v47->__r_.__value_.__r.__words[2];
      *__p = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 72))(v7, __p, a4);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      MEMORY[0x29C2C1A60](v91, ", ");
      ++v35;
    }

    while (v35 != v36);
    v34 = *(a1 + 40);
  }

  v49 = v34[11];
  for (i = v34[12]; v49 != i; ++v49)
  {
    v51 = *v49;
    (*(*v8 + 16))(&v86, v8, *(*v49 + 24));
    if ((v92 & 0x80u) == 0)
    {
      v52 = v91;
    }

    else
    {
      v52 = v91[0];
    }

    if ((v92 & 0x80u) == 0)
    {
      v53 = v92;
    }

    else
    {
      v53 = v91[1];
    }

    v54 = std::string::insert(&v86, 0, v52, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    v56 = std::string::append(&v87, " ");
    v57 = *&v56->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    v60 = *(v51 + 104);
    v59 = v51 + 104;
    v58 = v60;
    v61 = *(v59 + 23);
    if (v61 >= 0)
    {
      v62 = v59;
    }

    else
    {
      v62 = v58;
    }

    if (v61 >= 0)
    {
      v63 = *(v59 + 23);
    }

    else
    {
      v63 = *(v59 + 8);
    }

    v64 = std::string::append(&v88, v62, v63);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v90 = v64->__r_.__value_.__r.__words[2];
    *__p = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, __p, a4);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    MEMORY[0x29C2C1A60](v91, ", ");
  }

  sub_29A008E78(__p, ")");
  (*(*v7 + 72))(v7, __p, a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 56))(v7, a4, 0);
  (*(*v7 + 160))(v7, *(a1 + 40), a3, a4, 1);
  if (v83)
  {
    __p[0] = v83;
    sub_29A0A71C8((a3 + 45), __p);
  }

  (*(*v7 + 144))(v7, *(a1 + 40), a3, a4, 1);
  v66 = *(a1 + 40);
  v67 = *(v66 + 88);
  v68 = *(v66 + 96);
  while (v67 != v68)
  {
    v69 = *(*v67 + 240);
    if (v69)
    {
      v70 = *(v69 + 16);
      if (*(v70 + 8) == *(v84 + 40) && (*(v70 + 40) & 6) != 0)
      {
        (*(*v7 + 128))(v7);
      }
    }

    v67 += 8;
  }

  if (v83)
  {
    v71 = a3[46];
    if (v71 != a3[45])
    {
      a3[46] = v71 - 8;
    }
  }

  v72 = *(v84 + 40);
  v73 = *(v72 + 88);
  v74 = *(v72 + 96);
  if (v73 != v74)
  {
    do
    {
      v75 = *v73;
      (*(*v7 + 224))(__p, v7, *v73, a3);
      if (*(v75 + 127) >= 0)
      {
        v76 = *(v75 + 127);
      }

      else
      {
        v76 = *(v75 + 112);
      }

      sub_29A022DE0(&v87, v76 + 3);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v87;
      }

      else
      {
        v77 = v87.__r_.__value_.__r.__words[0];
      }

      if (v76)
      {
        if (*(v75 + 127) >= 0)
        {
          v78 = (v75 + 104);
        }

        else
        {
          v78 = *(v75 + 104);
        }

        memmove(v77, v78, v76);
      }

      *(&v77->__r_.__value_.__l.__data_ + v76) = 2112800;
      if (v90 >= 0)
      {
        v79 = __p;
      }

      else
      {
        v79 = __p[0];
      }

      if (v90 >= 0)
      {
        v80 = HIBYTE(v90);
      }

      else
      {
        v80 = __p[1];
      }

      v81 = std::string::append(&v87, v79, v80);
      v82 = *&v81->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 80))(v7, &v88, a4, 1);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90) < 0)
      {
        operator delete(__p[0]);
      }

      ++v73;
    }

    while (v73 != v74);
    v72 = *(v84 + 40);
  }

  (*(*v7 + 168))(v7, v72, a3, a4);
  if (v92 < 0)
  {
    operator delete(v91[0]);
  }
}

void sub_29B2179E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B217B64(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = sub_29B20D628((a1 + 48), &v4);
  if (v2)
  {
    return (v2 + 3);
  }

  else
  {
    return sub_29B1F31FC();
  }
}

uint64_t *sub_29B217BA0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = sub_29B20D628((a1 + 8), &v4);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return sub_29B20E688();
  }
}

void sub_29B217BDC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = strlen(off_2A14FE550[0]);
  v10 = v9;
  v11 = *(a4 + 23);
  if (v11 < 0)
  {
    if (v9 != *(a4 + 8))
    {
      goto LABEL_9;
    }

    if (v9 == -1)
    {
      sub_29A0F26CC();
    }

    v12 = *a4;
  }

  else
  {
    v12 = a4;
    if (v10 != v11)
    {
      goto LABEL_9;
    }
  }

  if (!memcmp(v12, off_2A14FE550[0], v10))
  {
    (*(*v8 + 144))(v8, *(a1 + 40), a3, a4, 0);
    LOBYTE(v11) = *(a4 + 23);
  }

LABEL_9:
  v13 = strlen(off_2A14FE6F8);
  v14 = v13;
  if ((v11 & 0x80) != 0)
  {
    if (v13 != *(a4 + 8))
    {
      return;
    }

    if (v13 == -1)
    {
      sub_29A0F26CC();
    }

    v15 = *a4;
  }

  else
  {
    v15 = a4;
    if (v14 != v11)
    {
      return;
    }
  }

  if (!memcmp(v15, off_2A14FE6F8, v14))
  {
    (*(*v8 + 152))(v8, a2, a3, a4, 2);
    (*(*a1 + 80))(a1, a2, a3, a4);
    (*(*v8 + 48))(v8, a4);
    sub_29A008E78(v61, "");
    v16 = a3[46];
    if (v16 == a3[45] || (v17 = *(v16 - 8)) == 0)
    {
      if (*(a1 + 79) >= 0)
      {
        v21 = *(a1 + 79);
      }

      else
      {
        v21 = *(a1 + 64);
      }

      p_dst = &__dst;
      sub_29A022DE0(&__dst, v21 + 1);
      if (v59 < 0)
      {
        p_dst = __dst;
      }

      if (v21)
      {
        if (*(a1 + 79) >= 0)
        {
          v23 = (a1 + 56);
        }

        else
        {
          v23 = *(a1 + 56);
        }

        memmove(p_dst, v23, v21);
      }

      *(p_dst + v21) = 40;
      (*(*v8 + 72))(v8, &__dst, a4);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__dst);
      }
    }

    else
    {
      v18 = **(*(a1 + 40) + 88);
      v51 = *(v18 + 24);
      *&__dst = a2;
      v19 = sub_29B20D628((v17 + 88), &__dst);
      if (v19)
      {
        v20 = v19[3];
      }

      else
      {
        v20 = 0;
      }

      v24 = sub_29B248158();
      v25 = sub_29A1B00DC(v51, v24);
      if (v20)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        for (i = *(v20 + 16); i; i = *i)
        {
          if (*(i + 39) < 0)
          {
            sub_29A008D14(&__dst, i[2], i[3]);
          }

          else
          {
            __dst = *(i + 1);
            v59 = i[4];
          }

          v60 = i[5];
          if (*(v18 + 127) >= 0)
          {
            v28 = *(v18 + 127);
          }

          else
          {
            v28 = *(v18 + 112);
          }

          sub_29A022DE0(&v54, v28 + 1);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v54;
          }

          else
          {
            v29 = v54.__r_.__value_.__r.__words[0];
          }

          if (v28)
          {
            if (*(v18 + 127) >= 0)
            {
              v30 = (v18 + 104);
            }

            else
            {
              v30 = *(v18 + 104);
            }

            memmove(v29, v30, v28);
          }

          *(&v29->__r_.__value_.__l.__data_ + v28) = 46;
          if (v59 >= 0)
          {
            v31 = &__dst;
          }

          else
          {
            v31 = __dst;
          }

          if (v59 >= 0)
          {
            v32 = HIBYTE(v59);
          }

          else
          {
            v32 = *(&__dst + 1);
          }

          v33 = std::string::append(&v54, v31, v32);
          v34 = *&v33->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = std::string::append(&v55, " = ");
          v36 = *&v35->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          (*(*v8 + 224))(v52, v8, v60, a3);
          if ((v53 & 0x80u) == 0)
          {
            v37 = v52;
          }

          else
          {
            v37 = v52[0];
          }

          if ((v53 & 0x80u) == 0)
          {
            v38 = v53;
          }

          else
          {
            v38 = v52[1];
          }

          v39 = std::string::append(&v56, v37, v38);
          v40 = *&v39->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          (*(*v8 + 80))(v8, &__p, a4, 1);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v53 < 0)
          {
            operator delete(v52[0]);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v59) < 0)
          {
            operator delete(__dst);
          }
        }
      }

      v41 = sub_29B217B64(v17, v51);
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((a1 + 56), v41, &__p);
      v42 = std::string::append(&__p, "(");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v59 = v42->__r_.__value_.__r.__words[2];
      __dst = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      (*(*v8 + 72))(v8, &__dst, a4);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v44 = sub_29B217BA0(v17, v51);
      v45 = *v44;
      v46 = v44[1];
      if (*v44 != v46)
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v61, (v45 + 8), &__dst);
          (*(*v8 + 72))(v8, &__dst, a4);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(__dst);
          }

          MEMORY[0x29C2C1A60](v61, ", ");
          v45 += 32;
        }

        while (v45 != v46);
      }
    }

    v47 = a2[11];
    for (j = a2[12]; v47 != j; ++v47)
    {
      v49 = *v47;
      (*(*v8 + 72))(v8, v61, a4);
      (*(*v8 + 184))(v8, v49, a3, a4);
      MEMORY[0x29C2C1A60](v61, ", ");
    }

    if (a2[20] != a2[19])
    {
      v50 = 0;
      do
      {
        (*(*v8 + 72))(v8, v61, a4);
        (*(*v8 + 192))(v8, *(a2[19] + 8 * v50), 0, 0, a3, a4);
        MEMORY[0x29C2C1A60](v61, ", ");
        ++v50;
      }

      while (v50 < (a2[20] - a2[19]) >> 3);
    }

    sub_29A008E78(&__dst, ")");
    (*(*v8 + 72))(v8, &__dst, a4);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    (*(*v8 + 56))(v8, a4, 1);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }
  }
}

void sub_29B2183D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2184E8(uint64_t a1)
{
  *a1 = &unk_2A20C99C0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B218570(void **__p)
{
  *__p = &unk_2A20C99C0;
  if (*(__p + 79) < 0)
  {
    operator delete(__p[7]);
  }

  v2 = __p[6];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B218610@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x68uLL);
  result = sub_29B21865C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B21865C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C94E8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_29B23F978((a1 + 24));
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 24) = &unk_2A20C9450;
  return a1;
}

void sub_29B218718(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C94E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B218784@<D0>(_OWORD *a1@<X8>)
{
  sub_29B219674(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B2187C0(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = a3[46];
    if (v12 == a3[45])
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 - 8);
    }

    v14 = *a3;
    sub_29A008E78(&v111, qword_2A14FE5C0);
    v15 = sub_29B23EB84(a2, &v111);
    if (SBYTE7(v112) < 0)
    {
      operator delete(v111);
    }

    sub_29A008E78(&v111, qword_2A14FE5C8);
    v16 = sub_29B23EB84(a2, &v111);
    if (SBYTE7(v112) < 0)
    {
      operator delete(v111);
    }

    v17 = v15[30];
    if (v17 && (v18 = v16[30]) != 0)
    {
      v104 = **(a2 + 152);
      v19 = v17[2];
      v20 = v18[2];
      v21 = *(a2 + 8);
      if ((*(v19 + 41) & 0x20) != 0)
      {
        if (*(v20 + 8) != v21)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          sub_29A008E78(&v111, "Thin-film can only be applied to a sibling node, not through a graph interface");
          sub_29AAD6B14(exception, &v111);
          *exception = &unk_2A20C8F68;
          __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
        }

        v111 = 0u;
        v112 = 0u;
        v113 = 1065353216;
        sub_29A008E78(&__str, qword_2A14FE5D0);
        v60 = sub_29B23EB84(v19, &__str.__r_.__value_.__l.__data_);
        sub_29A008E78(&v110, qword_2A14FE5D0);
        v108.__r_.__value_.__r.__words[0] = &v110;
        *(sub_29B2197D4(&v111, &v110.__r_.__value_.__l.__data_, &unk_29B7687F3, &v108) + 5) = v60;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&__str, qword_2A14FE5D8);
        v61 = sub_29B23EB84(v19, &__str.__r_.__value_.__l.__data_);
        sub_29A008E78(&v110, qword_2A14FE5D8);
        v108.__r_.__value_.__r.__words[0] = &v110;
        *(sub_29B2197D4(&v111, &v110.__r_.__value_.__l.__data_, &unk_29B7687F3, &v108) + 5) = v61;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_29B20D390(&v110, &v111, v20, v13);
        sub_29B20D50C(&__str, (v104 + 104));
        (*(*v14 + 128))(v14, v20, a3, a4);
        sub_29B20D55C(&__str);
        sub_29B20D47C(&v110);
        sub_29A0EB4E8(&v111);
      }

      else
      {
        if (*(v19 + 8) == v21)
        {
          sub_29B20D440(&v111, a2, v19, v13);
          (*(*v14 + 128))(v14, v19, a3, a4);
          sub_29B20D47C(&v111);
          v21 = *(a2 + 8);
        }

        if (*(v20 + 8) == v21)
        {
          (*(*v14 + 128))(v14, v20, a3, a4);
        }

        v22 = v15[30];
        v23 = v16[30];
        (*(*a1 + 80))(a1, a2, a3, a4);
        v24 = *(**(v20 + 152) + 24);
        v25 = sub_29B248350();
        if (sub_29A1B00DC(v24, v25))
        {
          if (*(v104 + 127) >= 0)
          {
            v26 = *(v104 + 127);
          }

          else
          {
            v26 = *(v104 + 112);
          }

          v27 = &v107;
          sub_29A022DE0(&v107, v26 + 12);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v107.__r_.__value_.__r.__words[0];
          }

          if (v26)
          {
            if (*(v104 + 127) >= 0)
            {
              v28 = (v104 + 104);
            }

            else
            {
              v28 = *(v104 + 104);
            }

            memmove(v27, v28, v26);
          }

          strcpy(v27 + v26, ".response = ");
          v29 = v22[127];
          if (v29 >= 0)
          {
            v30 = v22 + 104;
          }

          else
          {
            v30 = *(v22 + 13);
          }

          if (v29 >= 0)
          {
            v31 = v22[127];
          }

          else
          {
            v31 = *(v22 + 14);
          }

          v32 = std::string::append(&v107, v30, v31);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          v34 = std::string::append(&v108, ".response * ");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          v36 = v23[127];
          if (v36 >= 0)
          {
            v37 = v23 + 104;
          }

          else
          {
            v37 = *(v23 + 13);
          }

          if (v36 >= 0)
          {
            v38 = v23[127];
          }

          else
          {
            v38 = *(v23 + 14);
          }

          v39 = std::string::append(&v110, v37, v38);
          v40 = *&v39->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          v41 = std::string::append(&__str, ".throughput");
          v42 = *&v41->__r_.__value_.__l.__data_;
          *&v112 = *(&v41->__r_.__value_.__l + 2);
          v111 = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          (*(*v14 + 80))(v14, &v111, a4, 1);
          if (SBYTE7(v112) < 0)
          {
            operator delete(v111);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (*(v104 + 127) >= 0)
          {
            v43 = *(v104 + 127);
          }

          else
          {
            v43 = *(v104 + 112);
          }

          v44 = &v107;
          sub_29A022DE0(&v107, v43 + 14);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v107.__r_.__value_.__r.__words[0];
          }

          if (v43)
          {
            if (*(v104 + 127) >= 0)
            {
              v45 = (v104 + 104);
            }

            else
            {
              v45 = *(v104 + 104);
            }

            memmove(v44, v45, v43);
          }

          strcpy(v44 + v43, ".throughput = ");
          v46 = v22[127];
          if (v46 >= 0)
          {
            v47 = v22 + 104;
          }

          else
          {
            v47 = *(v22 + 13);
          }

          if (v46 >= 0)
          {
            v48 = v22[127];
          }

          else
          {
            v48 = *(v22 + 14);
          }

          v49 = std::string::append(&v107, v47, v48);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          v51 = std::string::append(&v108, ".throughput * ");
          v52 = *&v51->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          v53 = v23[127];
          if (v53 >= 0)
          {
            v54 = v23 + 104;
          }

          else
          {
            v54 = *(v23 + 13);
          }

          if (v53 >= 0)
          {
            v55 = v23[127];
          }

          else
          {
            v55 = *(v23 + 14);
          }

          v56 = std::string::append(&v110, v54, v55);
          v57 = *&v56->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          v58 = std::string::append(&__str, ".throughput");
          v59 = *&v58->__r_.__value_.__l.__data_;
          *&v112 = *(&v58->__r_.__value_.__l + 2);
          v111 = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          (*(*v14 + 80))(v14, &v111, a4, 1);
        }

        else
        {
          if (*(v104 + 127) >= 0)
          {
            v62 = *(v104 + 127);
          }

          else
          {
            v62 = *(v104 + 112);
          }

          v63 = &v105;
          sub_29A022DE0(&v105, v62 + 12);
          if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v63 = v105.__r_.__value_.__r.__words[0];
          }

          if (v62)
          {
            if (*(v104 + 127) >= 0)
            {
              v64 = (v104 + 104);
            }

            else
            {
              v64 = *(v104 + 104);
            }

            memmove(v63, v64, v62);
          }

          strcpy(v63 + v62, ".response = ");
          v65 = v22[127];
          if (v65 >= 0)
          {
            v66 = v22 + 104;
          }

          else
          {
            v66 = *(v22 + 13);
          }

          if (v65 >= 0)
          {
            v67 = v22[127];
          }

          else
          {
            v67 = *(v22 + 14);
          }

          v68 = std::string::append(&v105, v66, v67);
          v69 = *&v68->__r_.__value_.__l.__data_;
          v106.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
          *&v106.__r_.__value_.__l.__data_ = v69;
          v68->__r_.__value_.__l.__size_ = 0;
          v68->__r_.__value_.__r.__words[2] = 0;
          v68->__r_.__value_.__r.__words[0] = 0;
          v70 = std::string::append(&v106, ".response + ");
          v71 = *&v70->__r_.__value_.__l.__data_;
          v107.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
          *&v107.__r_.__value_.__l.__data_ = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          v72 = v23[127];
          if (v72 >= 0)
          {
            v73 = v23 + 104;
          }

          else
          {
            v73 = *(v23 + 13);
          }

          if (v72 >= 0)
          {
            v74 = v23[127];
          }

          else
          {
            v74 = *(v23 + 14);
          }

          v75 = std::string::append(&v107, v73, v74);
          v76 = *&v75->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v76;
          v75->__r_.__value_.__l.__size_ = 0;
          v75->__r_.__value_.__r.__words[2] = 0;
          v75->__r_.__value_.__r.__words[0] = 0;
          v77 = std::string::append(&v108, ".response * ");
          v78 = *&v77->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = v22[127];
          if (v79 >= 0)
          {
            v80 = v22 + 104;
          }

          else
          {
            v80 = *(v22 + 13);
          }

          if (v79 >= 0)
          {
            v81 = v22[127];
          }

          else
          {
            v81 = *(v22 + 14);
          }

          v82 = std::string::append(&v110, v80, v81);
          v83 = *&v82->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          v84 = std::string::append(&__str, ".throughput");
          v85 = *&v84->__r_.__value_.__l.__data_;
          *&v112 = *(&v84->__r_.__value_.__l + 2);
          v111 = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          (*(*v14 + 80))(v14, &v111, a4, 1);
          if (SBYTE7(v112) < 0)
          {
            operator delete(v111);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          if (*(v104 + 127) >= 0)
          {
            v86 = *(v104 + 127);
          }

          else
          {
            v86 = *(v104 + 112);
          }

          v87 = &v107;
          sub_29A022DE0(&v107, v86 + 14);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v87 = v107.__r_.__value_.__r.__words[0];
          }

          if (v86)
          {
            if (*(v104 + 127) >= 0)
            {
              v88 = (v104 + 104);
            }

            else
            {
              v88 = *(v104 + 104);
            }

            memmove(v87, v88, v86);
          }

          strcpy(v87 + v86, ".throughput = ");
          v89 = v22[127];
          if (v89 >= 0)
          {
            v90 = v22 + 104;
          }

          else
          {
            v90 = *(v22 + 13);
          }

          if (v89 >= 0)
          {
            v91 = v22[127];
          }

          else
          {
            v91 = *(v22 + 14);
          }

          v92 = std::string::append(&v107, v90, v91);
          v93 = *&v92->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v93;
          v92->__r_.__value_.__l.__size_ = 0;
          v92->__r_.__value_.__r.__words[2] = 0;
          v92->__r_.__value_.__r.__words[0] = 0;
          v94 = std::string::append(&v108, ".throughput * ");
          v95 = *&v94->__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
          *&v110.__r_.__value_.__l.__data_ = v95;
          v94->__r_.__value_.__l.__size_ = 0;
          v94->__r_.__value_.__r.__words[2] = 0;
          v94->__r_.__value_.__r.__words[0] = 0;
          v96 = v23[127];
          if (v96 >= 0)
          {
            v97 = v23 + 104;
          }

          else
          {
            v97 = *(v23 + 13);
          }

          if (v96 >= 0)
          {
            v98 = v23[127];
          }

          else
          {
            v98 = *(v23 + 14);
          }

          v99 = std::string::append(&v110, v97, v98);
          v100 = *&v99->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v100;
          v99->__r_.__value_.__l.__size_ = 0;
          v99->__r_.__value_.__r.__words[2] = 0;
          v99->__r_.__value_.__r.__words[0] = 0;
          v101 = std::string::append(&__str, ".throughput");
          v102 = *&v101->__r_.__value_.__l.__data_;
          *&v112 = *(&v101->__r_.__value_.__l + 2);
          v111 = v102;
          v101->__r_.__value_.__l.__size_ = 0;
          v101->__r_.__value_.__r.__words[2] = 0;
          v101->__r_.__value_.__r.__words[0] = 0;
          (*(*v14 + 80))(v14, &v111, a4, 1);
        }

        if (SBYTE7(v112) < 0)
        {
          operator delete(v111);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      (*(*a1 + 80))(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_29B2195C4(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B219614(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B219674@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B2196C0(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B2196C0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C95D0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9538;
  return a1;
}

void sub_29B219768(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C95D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B2197D4(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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
        v15 = *(i + 1);
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

  i = operator new(0x30uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

double sub_29B219A44@<D0>(_OWORD *a1@<X8>)
{
  sub_29B21A80C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B219A80(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *(a3 + 368);
    if (v12 == *(a3 + 360))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 - 8);
    }

    v14 = *a3;
    sub_29A008E78(&v122, qword_2A14FE5E0);
    v15 = sub_29B23EB84(a2, &v122);
    if (v124 < 0)
    {
      operator delete(v122);
    }

    sub_29A008E78(&v122, qword_2A14FE5E8);
    v16 = sub_29B23EB84(a2, &v122);
    if (v124 < 0)
    {
      operator delete(v122);
    }

    sub_29A008E78(&v122, qword_2A14FE5F0);
    v17 = sub_29B23EB84(a2, &v122);
    if (v124 < 0)
    {
      operator delete(v122);
    }

    v18 = v15[30];
    if (v18)
    {
      v19 = v18[2];
      if (*(v19 + 8) == a2[1])
      {
        sub_29B20D440(&v122, a2, v19, v13);
        (*(*v14 + 128))(v14, v19, a3, a4);
        sub_29B20D47C(&v122);
      }
    }

    v20 = v16[30];
    if (v20)
    {
      v21 = v20[2];
      if (*(v21 + 8) == a2[1])
      {
        sub_29B20D440(&v122, a2, v21, v13);
        (*(*v14 + 128))(v14, v21, a3, a4);
        sub_29B20D47C(&v122);
      }
    }

    (*(*v14 + 224))(&v122, v14, v15, a3);
    (*(*v14 + 224))(&v119, v14, v16, a3);
    (*(*v14 + 224))(&v116, v14, v17, a3);
    v22 = a2[19];
    v23 = *v22;
    v24 = *(*v22 + 24);
    v25 = sub_29B248158();
    if (sub_29A1B00DC(v24, v25))
    {
      (*(*a1 + 80))(a1, a2, a3, a4);
      if (*(v23 + 127) >= 0)
      {
        v26 = *(v23 + 127);
      }

      else
      {
        v26 = *(v23 + 112);
      }

      v27 = &v108;
      sub_29A022DE0(&v108, v26 + 16);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v108.__r_.__value_.__r.__words[0];
      }

      if (v26)
      {
        if (*(v23 + 127) >= 0)
        {
          v28 = (v23 + 104);
        }

        else
        {
          v28 = *(v23 + 104);
        }

        memmove(v27, v28, v26);
      }

      strcpy(v27 + v26, ".response = mix(");
      if ((v121 & 0x80u) == 0)
      {
        v29 = &v119;
      }

      else
      {
        v29 = v119;
      }

      if ((v121 & 0x80u) == 0)
      {
        v30 = v121;
      }

      else
      {
        v30 = v120;
      }

      v31 = std::string::append(&v108, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v109.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v109.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v109, ".response, ");
      v34 = *&v33->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if ((v124 & 0x80u) == 0)
      {
        v35 = &v122;
      }

      else
      {
        v35 = v122;
      }

      if ((v124 & 0x80u) == 0)
      {
        v36 = v124;
      }

      else
      {
        v36 = v123;
      }

      v37 = std::string::append(&v110, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v111, ".response, ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      if ((v118 & 0x80u) == 0)
      {
        v41 = &v116;
      }

      else
      {
        v41 = v116;
      }

      if ((v118 & 0x80u) == 0)
      {
        v42 = v118;
      }

      else
      {
        v42 = v117;
      }

      v43 = std::string::append(&v112, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v113, ")");
      v46 = *&v45->__r_.__value_.__l.__data_;
      v115 = v45->__r_.__value_.__r.__words[2];
      v114 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, &v114, a4, 1);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(v114);
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (*(v23 + 127) >= 0)
      {
        v47 = *(v23 + 127);
      }

      else
      {
        v47 = *(v23 + 112);
      }

      v48 = &v108;
      sub_29A022DE0(&v108, v47 + 18);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v108.__r_.__value_.__r.__words[0];
      }

      if (v47)
      {
        if (*(v23 + 127) >= 0)
        {
          v49 = (v23 + 104);
        }

        else
        {
          v49 = *(v23 + 104);
        }

        memmove(v48, v49, v47);
      }

      strcpy(v48 + v47, ".throughput = mix(");
      if ((v121 & 0x80u) == 0)
      {
        v50 = &v119;
      }

      else
      {
        v50 = v119;
      }

      if ((v121 & 0x80u) == 0)
      {
        v51 = v121;
      }

      else
      {
        v51 = v120;
      }

      v52 = std::string::append(&v108, v50, v51);
      v53 = *&v52->__r_.__value_.__l.__data_;
      v109.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
      *&v109.__r_.__value_.__l.__data_ = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v54 = std::string::append(&v109, ".throughput, ");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      if ((v124 & 0x80u) == 0)
      {
        v56 = &v122;
      }

      else
      {
        v56 = v122;
      }

      if ((v124 & 0x80u) == 0)
      {
        v57 = v124;
      }

      else
      {
        v57 = v123;
      }

      v58 = std::string::append(&v110, v56, v57);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      v60 = std::string::append(&v111, ".throughput, ");
      v61 = *&v60->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      if ((v118 & 0x80u) == 0)
      {
        v62 = &v116;
      }

      else
      {
        v62 = v116;
      }

      if ((v118 & 0x80u) == 0)
      {
        v63 = v118;
      }

      else
      {
        v63 = v117;
      }

      v64 = std::string::append(&v112, v62, v63);
      v65 = *&v64->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      v66 = std::string::append(&v113, ")");
      v67 = *&v66->__r_.__value_.__l.__data_;
      v115 = v66->__r_.__value_.__r.__words[2];
      v114 = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, &v114, a4, 1);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(v114);
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      v68 = v108.__r_.__value_.__r.__words[0];
    }

    else
    {
      v69 = *(v23 + 24);
      v70 = sub_29B248254();
      if (!sub_29A1B00DC(v69, v70))
      {
        goto LABEL_162;
      }

      v71 = v14[1];
      v72 = sub_29B248254();
      v73 = sub_29B2438AC(v71, v72);
      v74 = v73;
      if (*(v73 + 23) >= 0)
      {
        v75 = *(v73 + 23);
      }

      else
      {
        v75 = *(v73 + 8);
      }

      v76 = &v106;
      sub_29A022DE0(&v106, v75 + 1);
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v76 = v106.__r_.__value_.__r.__words[0];
      }

      if (v75)
      {
        if (v74[23] >= 0)
        {
          v77 = v74;
        }

        else
        {
          v77 = *v74;
        }

        memmove(v76, v77, v75);
      }

      *(&v76->__r_.__value_.__l.__data_ + v75) = 32;
      v80 = *(v23 + 104);
      v79 = v23 + 104;
      v78 = v80;
      v81 = *(v79 + 23);
      if (v81 >= 0)
      {
        v82 = v79;
      }

      else
      {
        v82 = v78;
      }

      if (v81 >= 0)
      {
        v83 = *(v79 + 23);
      }

      else
      {
        v83 = *(v79 + 8);
      }

      v84 = std::string::append(&v106, v82, v83);
      v85 = *&v84->__r_.__value_.__l.__data_;
      v107.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
      *&v107.__r_.__value_.__l.__data_ = v85;
      v84->__r_.__value_.__l.__size_ = 0;
      v84->__r_.__value_.__r.__words[2] = 0;
      v84->__r_.__value_.__r.__words[0] = 0;
      v86 = std::string::append(&v107, " = mix(");
      v87 = *&v86->__r_.__value_.__l.__data_;
      v108.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
      *&v108.__r_.__value_.__l.__data_ = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      if ((v121 & 0x80u) == 0)
      {
        v88 = &v119;
      }

      else
      {
        v88 = v119;
      }

      if ((v121 & 0x80u) == 0)
      {
        v89 = v121;
      }

      else
      {
        v89 = v120;
      }

      v90 = std::string::append(&v108, v88, v89);
      v91 = *&v90->__r_.__value_.__l.__data_;
      v109.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
      *&v109.__r_.__value_.__l.__data_ = v91;
      v90->__r_.__value_.__l.__size_ = 0;
      v90->__r_.__value_.__r.__words[2] = 0;
      v90->__r_.__value_.__r.__words[0] = 0;
      v92 = std::string::append(&v109, ", ");
      v93 = *&v92->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      if ((v124 & 0x80u) == 0)
      {
        v94 = &v122;
      }

      else
      {
        v94 = v122;
      }

      if ((v124 & 0x80u) == 0)
      {
        v95 = v124;
      }

      else
      {
        v95 = v123;
      }

      v96 = std::string::append(&v110, v94, v95);
      v97 = *&v96->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;
      v98 = std::string::append(&v111, ", ");
      v99 = *&v98->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      if ((v118 & 0x80u) == 0)
      {
        v100 = &v116;
      }

      else
      {
        v100 = v116;
      }

      if ((v118 & 0x80u) == 0)
      {
        v101 = v118;
      }

      else
      {
        v101 = v117;
      }

      v102 = std::string::append(&v112, v100, v101);
      v103 = *&v102->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v103;
      v102->__r_.__value_.__l.__size_ = 0;
      v102->__r_.__value_.__r.__words[2] = 0;
      v102->__r_.__value_.__r.__words[0] = 0;
      v104 = std::string::append(&v113, ")");
      v105 = *&v104->__r_.__value_.__l.__data_;
      v115 = v104->__r_.__value_.__r.__words[2];
      v114 = v105;
      v104->__r_.__value_.__l.__size_ = 0;
      v104->__r_.__value_.__r.__words[2] = 0;
      v104->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, &v114, a4, 1);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(v114);
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      v68 = v106.__r_.__value_.__r.__words[0];
    }

    operator delete(v68);
LABEL_162:
    if (v118 < 0)
    {
      operator delete(v116);
    }

    if (v121 < 0)
    {
      operator delete(v119);
    }

    if (v124 < 0)
    {
      operator delete(v122);
    }
  }
}

uint64_t sub_29B21A75C(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B21A7AC(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B21A80C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B21A858(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B21A858(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C96B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9620;
  return a1;
}

void sub_29B21A900(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C96B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B21A96C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B21B65C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B21A9A8(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    v13 = *(a3 + 368);
    if (v13 == *(a3 + 360))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v13 - 8);
    }

    v15 = v12[1];
    sub_29A008E78(&v111, qword_2A14FE5F8);
    v16 = sub_29B23EB84(a2, &v111);
    if (v113 < 0)
    {
      operator delete(v111);
    }

    sub_29A008E78(&v111, qword_2A14FE600);
    v17 = sub_29B23EB84(a2, &v111);
    if (v113 < 0)
    {
      operator delete(v111);
    }

    v18 = v16[30];
    if (v18)
    {
      v19 = v18[2];
      if (*(v19 + 8) == a2[1])
      {
        sub_29B20D440(&v111, a2, v19, v14);
        (*(*v12 + 128))(v12, v19, a3, a4);
        sub_29B20D47C(&v111);
      }
    }

    (*(*v12 + 224))(&v111, v12, v16, a3);
    (*(*v12 + 224))(&v108, v12, v17, a3);
    v20 = a2[19];
    v21 = *v20;
    v22 = *(*v20 + 24);
    v23 = sub_29B248158();
    if (sub_29A1B00DC(v22, v23))
    {
      v100 = a1;
      if (*(v21 + 127) >= 0)
      {
        v24 = *(v21 + 127);
      }

      else
      {
        v24 = *(v21 + 112);
      }

      v25 = v106;
      sub_29A022DE0(v106, v24 + 12);
      if (v107 < 0)
      {
        v25 = v106[0];
      }

      if (v24)
      {
        if (*(v21 + 127) >= 0)
        {
          v26 = (v21 + 104);
        }

        else
        {
          v26 = *(v21 + 104);
        }

        memmove(v25, v26, v24);
      }

      strcpy(v25 + v24, "_in2_clamped");
      v27 = sub_29B2438AC(v15, v17[3]);
      v28 = v27;
      if (*(v27 + 23) >= 0)
      {
        v29 = *(v27 + 23);
      }

      else
      {
        v29 = *(v27 + 8);
      }

      v30 = &v101;
      sub_29A022DE0(&v101, v29 + 1);
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v101.__r_.__value_.__r.__words[0];
      }

      if (v29)
      {
        if (v28[23] >= 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = *v28;
        }

        memmove(v30, v31, v29);
      }

      *(&v30->__r_.__value_.__l.__data_ + v29) = 32;
      if (v107 >= 0)
      {
        v32 = v106;
      }

      else
      {
        v32 = v106[0];
      }

      if (v107 >= 0)
      {
        v33 = HIBYTE(v107);
      }

      else
      {
        v33 = v106[1];
      }

      v34 = std::string::append(&v101, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v102, " = clamp(");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if ((v110 & 0x80u) == 0)
      {
        v38 = &v108;
      }

      else
      {
        v38 = v108;
      }

      if ((v110 & 0x80u) == 0)
      {
        v39 = v110;
      }

      else
      {
        v39 = v109;
      }

      v40 = std::string::append(&v103, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v104, ", 0.0, 1.0)");
      v43 = *&v42->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, &__p, a4, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      (*(*v100 + 80))(v100, a2, a3, a4);
      if (*(v21 + 127) >= 0)
      {
        v44 = *(v21 + 127);
      }

      else
      {
        v44 = *(v21 + 112);
      }

      v45 = &v102;
      sub_29A022DE0(&v102, v44 + 12);
      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = v102.__r_.__value_.__r.__words[0];
      }

      if (v44)
      {
        if (*(v21 + 127) >= 0)
        {
          v46 = (v21 + 104);
        }

        else
        {
          v46 = *(v21 + 104);
        }

        memmove(v45, v46, v44);
      }

      strcpy(v45 + v44, ".response = ");
      if ((v113 & 0x80u) == 0)
      {
        v47 = &v111;
      }

      else
      {
        v47 = v111;
      }

      if ((v113 & 0x80u) == 0)
      {
        v48 = v113;
      }

      else
      {
        v48 = v112;
      }

      v49 = std::string::append(&v102, v47, v48);
      v50 = *&v49->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v103, ".response * ");
      v52 = *&v51->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if (v107 >= 0)
      {
        v53 = v106;
      }

      else
      {
        v53 = v106[0];
      }

      if (v107 >= 0)
      {
        v54 = HIBYTE(v107);
      }

      else
      {
        v54 = v106[1];
      }

      v55 = std::string::append(&v104, v53, v54);
      v56 = *&v55->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, &__p, a4, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (*(v21 + 127) >= 0)
      {
        v57 = *(v21 + 127);
      }

      else
      {
        v57 = *(v21 + 112);
      }

      v58 = &v102;
      sub_29A022DE0(&v102, v57 + 14);
      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v58 = v102.__r_.__value_.__r.__words[0];
      }

      if (v57)
      {
        if (*(v21 + 127) >= 0)
        {
          v59 = (v21 + 104);
        }

        else
        {
          v59 = *(v21 + 104);
        }

        memmove(v58, v59, v57);
      }

      strcpy(v58 + v57, ".throughput = ");
      if ((v113 & 0x80u) == 0)
      {
        v60 = &v111;
      }

      else
      {
        v60 = v111;
      }

      if ((v113 & 0x80u) == 0)
      {
        v61 = v113;
      }

      else
      {
        v61 = v112;
      }

      v62 = std::string::append(&v102, v60, v61);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = std::string::append(&v103, ".throughput * ");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      if (v107 >= 0)
      {
        v66 = v106;
      }

      else
      {
        v66 = v106[0];
      }

      if (v107 >= 0)
      {
        v67 = HIBYTE(v107);
      }

      else
      {
        v67 = v106[1];
      }

      v68 = std::string::append(&v104, v66, v67);
      v69 = *&v68->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, &__p, a4, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v107) & 0x80000000) == 0)
      {
        goto LABEL_165;
      }

      v70 = v106[0];
    }

    else
    {
      v71 = *(v21 + 24);
      v72 = sub_29B248254();
      if (!sub_29A1B00DC(v71, v72))
      {
        goto LABEL_165;
      }

      v73 = v12[1];
      v74 = sub_29B248254();
      v75 = sub_29B2438AC(v73, v74);
      v76 = v75;
      if (*(v75 + 23) >= 0)
      {
        v77 = *(v75 + 23);
      }

      else
      {
        v77 = *(v75 + 8);
      }

      v78 = &v101;
      sub_29A022DE0(&v101, v77 + 1);
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v78 = v101.__r_.__value_.__r.__words[0];
      }

      if (v77)
      {
        if (v76[23] >= 0)
        {
          v79 = v76;
        }

        else
        {
          v79 = *v76;
        }

        memmove(v78, v79, v77);
      }

      *(&v78->__r_.__value_.__l.__data_ + v77) = 32;
      v82 = *(v21 + 104);
      v81 = v21 + 104;
      v80 = v82;
      v83 = *(v81 + 23);
      if (v83 >= 0)
      {
        v84 = v81;
      }

      else
      {
        v84 = v80;
      }

      if (v83 >= 0)
      {
        v85 = *(v81 + 23);
      }

      else
      {
        v85 = *(v81 + 8);
      }

      v86 = std::string::append(&v101, v84, v85);
      v87 = *&v86->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      v88 = std::string::append(&v102, " = ");
      v89 = *&v88->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      if ((v113 & 0x80u) == 0)
      {
        v90 = &v111;
      }

      else
      {
        v90 = v111;
      }

      if ((v113 & 0x80u) == 0)
      {
        v91 = v113;
      }

      else
      {
        v91 = v112;
      }

      v92 = std::string::append(&v103, v90, v91);
      v93 = *&v92->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      v94 = std::string::append(&v104, " * ");
      v95 = *&v94->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v95;
      v94->__r_.__value_.__l.__size_ = 0;
      v94->__r_.__value_.__r.__words[2] = 0;
      v94->__r_.__value_.__r.__words[0] = 0;
      if ((v110 & 0x80u) == 0)
      {
        v96 = &v108;
      }

      else
      {
        v96 = v108;
      }

      if ((v110 & 0x80u) == 0)
      {
        v97 = v110;
      }

      else
      {
        v97 = v109;
      }

      v98 = std::string::append(&__p, v96, v97);
      v99 = *&v98->__r_.__value_.__l.__data_;
      v107 = v98->__r_.__value_.__r.__words[2];
      *v106 = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, v106, a4, 1);
      if (SHIBYTE(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_165;
      }

      v70 = v101.__r_.__value_.__r.__words[0];
    }

    operator delete(v70);
LABEL_165:
    if (v110 < 0)
    {
      operator delete(v108);
    }

    if (v113 < 0)
    {
      operator delete(v111);
    }
  }
}

uint64_t sub_29B21B5AC(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B21B5FC(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B21B65C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B21B6A8(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B21B6A8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C97A0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9708;
  return a1;
}

void sub_29B21B750(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C97A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B21B7BC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B21C1D0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B21B7F8(uint64_t a1, uint64_t a2, void *a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    (*(**a3 + 152))(*a3, a2, a3, a4, 2);
    if (*(a1 + 40) == 1)
    {

      sub_29B22D350(a1, a2, a3, a4);
    }

    else
    {
      v13 = **(a2 + 152);
      sub_29A008E78(v59, "");
      (*(*a1 + 80))(a1, a2, a3, a4);
      v14 = a3[46];
      if (v14 == a3[45] || (v15 = *(v14 - 8)) == 0)
      {
        (*(*v12 + 48))(v12, a4);
        if (*(a1 + 71) >= 0)
        {
          v18 = *(a1 + 71);
        }

        else
        {
          v18 = *(a1 + 56);
        }

        p_dst = &__dst;
        sub_29A022DE0(&__dst, v18 + 1);
        if (v57 < 0)
        {
          p_dst = __dst;
        }

        if (v18)
        {
          if (*(a1 + 71) >= 0)
          {
            v20 = (a1 + 48);
          }

          else
          {
            v20 = *(a1 + 48);
          }

          memmove(p_dst, v20, v18);
        }

        *(p_dst + v18) = 40;
        (*(*v12 + 72))(v12, &__dst, a4);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__dst);
        }
      }

      else
      {
        v49 = *(v13 + 24);
        *&__dst = a2;
        v16 = sub_29B20D628((v15 + 88), &__dst);
        if (v16)
        {
          v17 = v16[3];
        }

        else
        {
          v17 = 0;
        }

        v21 = sub_29B248158();
        v22 = sub_29A1B00DC(v49, v21);
        if (v17)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          for (i = *(v17 + 16); i; i = *i)
          {
            if (*(i + 39) < 0)
            {
              sub_29A008D14(&__dst, i[2], i[3]);
            }

            else
            {
              __dst = *(i + 1);
              v57 = i[4];
            }

            v58 = i[5];
            if (*(v13 + 127) >= 0)
            {
              v25 = *(v13 + 127);
            }

            else
            {
              v25 = *(v13 + 112);
            }

            sub_29A022DE0(&v52, v25 + 1);
            if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &v52;
            }

            else
            {
              v26 = v52.__r_.__value_.__r.__words[0];
            }

            if (v25)
            {
              if (*(v13 + 127) >= 0)
              {
                v27 = (v13 + 104);
              }

              else
              {
                v27 = *(v13 + 104);
              }

              memmove(v26, v27, v25);
            }

            *(&v26->__r_.__value_.__l.__data_ + v25) = 46;
            if (v57 >= 0)
            {
              v28 = &__dst;
            }

            else
            {
              v28 = __dst;
            }

            if (v57 >= 0)
            {
              v29 = HIBYTE(v57);
            }

            else
            {
              v29 = *(&__dst + 1);
            }

            v30 = std::string::append(&v52, v28, v29);
            v31 = *&v30->__r_.__value_.__l.__data_;
            v53.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
            *&v53.__r_.__value_.__l.__data_ = v31;
            v30->__r_.__value_.__l.__size_ = 0;
            v30->__r_.__value_.__r.__words[2] = 0;
            v30->__r_.__value_.__r.__words[0] = 0;
            v32 = std::string::append(&v53, " = ");
            v33 = *&v32->__r_.__value_.__l.__data_;
            v54.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
            *&v54.__r_.__value_.__l.__data_ = v33;
            v32->__r_.__value_.__l.__size_ = 0;
            v32->__r_.__value_.__r.__words[2] = 0;
            v32->__r_.__value_.__r.__words[0] = 0;
            (*(*v12 + 224))(v50, v12, v58, a3);
            if ((v51 & 0x80u) == 0)
            {
              v34 = v50;
            }

            else
            {
              v34 = v50[0];
            }

            if ((v51 & 0x80u) == 0)
            {
              v35 = v51;
            }

            else
            {
              v35 = v50[1];
            }

            v36 = std::string::append(&v54, v34, v35);
            v37 = *&v36->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v37;
            v36->__r_.__value_.__l.__size_ = 0;
            v36->__r_.__value_.__r.__words[2] = 0;
            v36->__r_.__value_.__r.__words[0] = 0;
            (*(*v12 + 80))(v12, &__p, a4, 1);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v51 < 0)
            {
              operator delete(v50[0]);
            }

            if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v54.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v57) < 0)
            {
              operator delete(__dst);
            }
          }
        }

        (*(*v12 + 48))(v12, a4);
        v38 = sub_29B217B64(v15, v49);
        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((a1 + 48), v38, &__p);
        v39 = std::string::append(&__p, "(");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v57 = v39->__r_.__value_.__r.__words[2];
        __dst = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        (*(*v12 + 72))(v12, &__dst, a4);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v41 = sub_29B217BA0(v15, v49);
        v42 = *v41;
        v43 = v41[1];
        if (*v41 != v43)
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v59, (v42 + 8), &__dst);
            (*(*v12 + 72))(v12, &__dst, a4);
            if (SHIBYTE(v57) < 0)
            {
              operator delete(__dst);
            }

            MEMORY[0x29C2C1A60](v59, ", ");
            v42 += 32;
          }

          while (v42 != v43);
        }
      }

      v44 = *(a2 + 88);
      for (j = *(a2 + 96); v44 != j; ++v44)
      {
        v46 = *v44;
        (*(*v12 + 72))(v12, v59, a4);
        (*(*v12 + 184))(v12, v46, a3, a4);
        MEMORY[0x29C2C1A60](v59, ", ");
      }

      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v59, (**(a2 + 152) + 104), &__p);
      v47 = std::string::append(&__p, ")");
      v48 = *&v47->__r_.__value_.__l.__data_;
      v57 = v47->__r_.__value_.__r.__words[2];
      __dst = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 72))(v12, &__dst, a4);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      (*(*v12 + 56))(v12, a4, 1);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }
    }
  }
}

void sub_29B21BF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B21C084(uint64_t a1)
{
  *a1 = &unk_2A20CA8D0;
  v3 = (a1 + 96);
  sub_29A012C90(&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B21C128(void **a1)
{
  *a1 = &unk_2A20CA8D0;
  v2 = a1 + 12;
  sub_29A012C90(&v2);
  if (*(a1 + 95) < 0)
  {
    operator delete(a1[9]);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  operator delete(a1);
}

uint64_t sub_29B21C1D0@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  result = sub_29B21C21C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B21C21C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9888;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  sub_29B23F978((a1 + 24));
  *(a1 + 132) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = &unk_2A20C97F0;
  return a1;
}

void sub_29B21C2F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B21C35C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B21D624(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B21C398(uint64_t a1, uint64_t a2, uint64_t **a3, const void **a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = **(a2 + 88);
    v12 = **(a2 + 152);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v115 = std::string::append(&__str, "' is not a valid convert node");
      v116 = *&v115->__r_.__value_.__l.__data_;
      v137 = v115->__r_.__value_.__r.__words[2];
      v136 = v116;
      v115->__r_.__value_.__l.__size_ = 0;
      v115->__r_.__value_.__r.__words[2] = 0;
      v115->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v136);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v14 = *a3;
    v136 = 0uLL;
    v137 = 0;
    v15 = *(v11 + 24);
    v16 = sub_29B246C60();
    v127 = v12;
    if (sub_29A1B00DC(v15, v16))
    {
      v18 = *(a2 + 88);
      v17 = *(a2 + 96);
      v19 = (v17 - v18) >> 3;
      sub_29A01FBC8(&v136, v19);
      if (v17 != v18)
      {
        v20 = 0;
        v21 = 0;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        do
        {
          (*(*v14 + 224))(&__str, v14, *(*(a2 + 88) + 8 * v21), a3);
          v22 = v136 + v20;
          if (*(v136 + v20 + 23) < 0)
          {
            operator delete(*v22);
          }

          v23 = *&__str.__r_.__value_.__l.__data_;
          *(v22 + 16) = *(&__str.__r_.__value_.__l + 2);
          *v22 = v23;
          ++v21;
          v20 += 24;
        }

        while (v19 != v21);
      }

      goto LABEL_107;
    }

    v24 = *(v11 + 24);
    v25 = sub_29B247ADC();
    if (sub_29A1B00DC(v24, v25) || (v26 = *(v11 + 24), v27 = sub_29B2470A0(), v28 = sub_29A1B00DC(v26, v27)))
    {
      v29 = *(*(a2 + 88) + 8);
      if (!v29 || (v30 = *(v29 + 24), v30 != sub_29B246C60()))
      {
        v120 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v121 = std::string::append(&__dst, "' is not a valid convert node");
        v122 = *&v121->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v122;
        v121->__r_.__value_.__l.__size_ = 0;
        v121->__r_.__value_.__r.__words[2] = 0;
        v121->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v120, &__str);
        *v120 = &unk_2A20C8F68;
        __cxa_throw(v120, &unk_2A20C8EF8, sub_29B20BED4);
      }

      v31 = *(v11 + 240);
      if (v31)
      {
        v32 = *(v11 + 240);
      }

      else
      {
        v32 = v11;
      }

      if (*(v32 + 127) < 0)
      {
        sub_29A008D14(&__str, *(v32 + 104), *(v32 + 112));
        v31 = *(v11 + 240);
      }

      else
      {
        __str = *(v32 + 104);
      }

      v126 = v29;
      if (!v31)
      {
        v33 = *(v11 + 128);
        v34 = *(v11 + 136);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = v14[1];
        if (v33)
        {
          v36 = *(v11 + 136);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v35 + 24))(&__dst);
          if (v36)
          {
            sub_29A014BEC(v36);
          }
        }

        else
        {
          v44 = sub_29B243874(v35, *(v11 + 24), 0);
          if (*(v44 + 23) < 0)
          {
            sub_29A008D14(&__dst, *v44, *(v44 + 8));
          }

          else
          {
            v45 = *v44;
            __dst.__r_.__value_.__r.__words[2] = *(v44 + 16);
            *&__dst.__r_.__value_.__l.__data_ = v45;
          }
        }

        if (v34)
        {
          sub_29A014BEC(v34);
        }

        v50 = sub_29B2438AC(v14[1], *(v11 + 24));
        v51 = v50;
        if (*(v50 + 23) >= 0)
        {
          v52 = *(v50 + 23);
        }

        else
        {
          v52 = *(v50 + 8);
        }

        sub_29A022DE0(&v129, v52 + 1);
        if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v129;
        }

        else
        {
          v53 = v129.__r_.__value_.__r.__words[0];
        }

        if (v52)
        {
          if (v51[23] >= 0)
          {
            v54 = v51;
          }

          else
          {
            v54 = *v51;
          }

          memmove(v53, v54, v52);
        }

        *(&v53->__r_.__value_.__l.__data_ + v52) = 32;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        v57 = std::string::append(&v129, p_str, size);
        v58 = *&v57->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v59 = std::string::append(&v130, " = ");
        v29 = v126;
        v60 = *&v59->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v62 = __dst.__r_.__value_.__l.__size_;
        }

        v63 = std::string::append(&v131, p_dst, v62);
        v64 = *&v63->__r_.__value_.__l.__data_;
        v133 = v63->__r_.__value_.__r.__words[2];
        *__p = v64;
        v63->__r_.__value_.__l.__size_ = 0;
        v63->__r_.__value_.__r.__words[2] = 0;
        v63->__r_.__value_.__r.__words[0] = 0;
        (*(*v14 + 80))(v14, __p, a4, 1);
        if (SHIBYTE(v133) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      v65 = sub_29B2435EC(v14[1], *(v11 + 24));
      v66 = *(v65 + 136) - *(v65 + 128);
      if (v66)
      {
        v67 = 0xAAAAAAAAAAAAAAABLL * (v66 >> 3);
        sub_29A01FBC8(&v136, v67 + 1);
        v68 = 0;
        if (v67 <= 1)
        {
          v69 = 1;
        }

        else
        {
          v69 = v67;
        }

        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__str.__r_.__value_.__l.__data_, (*(v65 + 128) + v68), &__dst);
          v70 = v136 + v68;
          if (*(v136 + v68 + 23) < 0)
          {
            operator delete(*v70);
          }

          v71 = *&__dst.__r_.__value_.__l.__data_;
          *(v70 + 16) = *(&__dst.__r_.__value_.__l + 2);
          *v70 = v71;
          v68 += 24;
          --v69;
        }

        while (v69);
        v29 = v126;
      }

      else
      {
        sub_29A01FBC8(&v136, 2uLL);
        std::string::operator=(v136, &__str);
        v67 = 1;
      }

      (*(*v14 + 224))(&__dst, v14, v29, a3);
      v72 = v136 + 24 * v67;
      if (*(v72 + 23) < 0)
      {
        operator delete(*v72);
      }

      v73 = *&__dst.__r_.__value_.__l.__data_;
      *(v72 + 16) = *(&__dst.__r_.__value_.__l + 2);
      *v72 = v73;
    }

    else
    {
      v37 = *(v11 + 24);
      Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v28);
      v39 = sub_29A1B00DC(v37, Vector2Name);
      if (!v39)
      {
LABEL_107:
        if (v136 == *(&v136 + 1))
        {
          v117 = __cxa_allocate_exception(0x20uLL);
          std::operator+<char>();
          v118 = std::string::append(&__dst, "' is not a valid convert node");
          v119 = *&v118->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v119;
          v118->__r_.__value_.__l.__size_ = 0;
          v118->__r_.__value_.__r.__words[2] = 0;
          v118->__r_.__value_.__r.__words[0] = 0;
          sub_29AAD6B14(v117, &__str);
          *v117 = &unk_2A20C8F68;
          __cxa_throw(v117, &unk_2A20C8EF8, sub_29B20BED4);
        }

        v74 = sub_29B2435EC(v14[1], *(v127 + 24));
        (*(*v74 + 32))(&__str);
        (*(*v14 + 48))(v14, a4);
        (*(*v14 + 192))(v14, **(a2 + 152), 1, 0, a3, a4);
        std::operator+<char>();
        (*(*v14 + 72))(v14, &__dst, a4);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        (*(*v14 + 56))(v14, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str.__r_.__value_.__r.__words[0] = &v136;
        sub_29A012C90(&__str);
        return;
      }

      v40 = *(*(a2 + 88) + 8);
      if (!v40 || (v41 = *(v40 + 24), v41 != pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v39)))
      {
        v123 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v124 = std::string::append(&__dst, "' is not a valid convert node");
        v125 = *&v124->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v125;
        v124->__r_.__value_.__l.__size_ = 0;
        v124->__r_.__value_.__r.__words[2] = 0;
        v124->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v123, &__str);
        *v123 = &unk_2A20C8F68;
        __cxa_throw(v123, &unk_2A20C8EF8, sub_29B20BED4);
      }

      v42 = *(v11 + 240);
      if (v42)
      {
        v43 = *(v11 + 240);
      }

      else
      {
        v43 = v11;
      }

      if (*(v43 + 127) < 0)
      {
        sub_29A008D14(&__str, *(v43 + 104), *(v43 + 112));
        v42 = *(v11 + 240);
      }

      else
      {
        __str = *(v43 + 104);
      }

      if (!v42)
      {
        v46 = *(v11 + 128);
        v47 = *(v11 + 136);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = v14[1];
        if (v46)
        {
          v49 = *(v11 + 136);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v48 + 24))(&__dst);
          if (v49)
          {
            sub_29A014BEC(v49);
          }
        }

        else
        {
          v75 = sub_29B243874(v48, *(v11 + 24), 0);
          if (*(v75 + 23) < 0)
          {
            sub_29A008D14(&__dst, *v75, *(v75 + 8));
          }

          else
          {
            v76 = *v75;
            __dst.__r_.__value_.__r.__words[2] = *(v75 + 16);
            *&__dst.__r_.__value_.__l.__data_ = v76;
          }
        }

        if (v47)
        {
          sub_29A014BEC(v47);
        }

        v77 = sub_29B2438AC(v14[1], *(v11 + 24));
        sub_29A911628(" ", v77, &v129.__r_.__value_.__l.__data_);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = &__str;
        }

        else
        {
          v78 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v79 = __str.__r_.__value_.__l.__size_;
        }

        v80 = std::string::append(&v129, v78, v79);
        v81 = *&v80->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        v82 = std::string::append(&v130, " = ");
        v83 = *&v82->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v83;
        v82->__r_.__value_.__l.__size_ = 0;
        v82->__r_.__value_.__r.__words[2] = 0;
        v82->__r_.__value_.__r.__words[0] = 0;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &__dst;
        }

        else
        {
          v84 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = __dst.__r_.__value_.__l.__size_;
        }

        v86 = std::string::append(&v131, v84, v85);
        v87 = *&v86->__r_.__value_.__l.__data_;
        v133 = v86->__r_.__value_.__r.__words[2];
        *__p = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        (*(*v14 + 80))(v14, __p, a4, 1);
        if (SHIBYTE(v133) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      v88 = *(v40 + 240);
      if (v88)
      {
        v89 = *(v40 + 240);
      }

      else
      {
        v89 = v40;
      }

      if (*(v89 + 127) < 0)
      {
        sub_29A008D14(&__dst, *(v89 + 104), *(v89 + 112));
        v88 = *(v40 + 240);
      }

      else
      {
        __dst = *(v89 + 104);
      }

      if (!v88)
      {
        v90 = *(v40 + 128);
        v91 = *(v40 + 136);
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v92 = v14[1];
        if (v90)
        {
          v93 = *(v40 + 136);
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v92 + 24))(__p);
          if (v93)
          {
            sub_29A014BEC(v93);
          }
        }

        else
        {
          v94 = sub_29B243874(v92, *(v40 + 24), 0);
          if (*(v94 + 23) < 0)
          {
            sub_29A008D14(__p, *v94, *(v94 + 8));
          }

          else
          {
            v95 = *v94;
            v133 = *(v94 + 16);
            *__p = v95;
          }
        }

        if (v91)
        {
          sub_29A014BEC(v91);
        }

        v96 = sub_29B2438AC(v14[1], *(v40 + 24));
        sub_29A911628(" ", v96, &v128.__r_.__value_.__l.__data_);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v97 = &__dst;
        }

        else
        {
          v97 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v98 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v98 = __dst.__r_.__value_.__l.__size_;
        }

        v99 = std::string::append(&v128, v97, v98);
        v100 = *&v99->__r_.__value_.__l.__data_;
        v129.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
        *&v129.__r_.__value_.__l.__data_ = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        v101 = std::string::append(&v129, " = ");
        v102 = *&v101->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v102;
        v101->__r_.__value_.__l.__size_ = 0;
        v101->__r_.__value_.__r.__words[2] = 0;
        v101->__r_.__value_.__r.__words[0] = 0;
        if (v133 >= 0)
        {
          v103 = __p;
        }

        else
        {
          v103 = __p[0];
        }

        if (v133 >= 0)
        {
          v104 = HIBYTE(v133);
        }

        else
        {
          v104 = __p[1];
        }

        v105 = std::string::append(&v130, v103, v104);
        v106 = *&v105->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v106;
        v105->__r_.__value_.__l.__size_ = 0;
        v105->__r_.__value_.__r.__words[2] = 0;
        v105->__r_.__value_.__r.__words[0] = 0;
        (*(*v14 + 80))(v14, &v131, a4, 1);
        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v133) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_29A01FBC8(&v136, 4uLL);
      v107 = sub_29B2435EC(v14[1], *(v11 + 24));
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__str.__r_.__value_.__l.__data_, *(v107 + 128), __p);
      v108 = v136;
      if (*(v136 + 23) < 0)
      {
        operator delete(*v136);
      }

      v109 = *__p;
      *(v108 + 16) = v133;
      *v108 = v109;
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__str.__r_.__value_.__l.__data_, (*(v107 + 128) + 24), __p);
      v110 = v136;
      if (*(v136 + 47) < 0)
      {
        operator delete(*(v136 + 24));
      }

      *(v110 + 24) = *__p;
      *(v110 + 40) = v133;
      v111 = sub_29B2435EC(v14[1], *(v40 + 24));
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__dst.__r_.__value_.__l.__data_, *(v111 + 128), __p);
      v112 = v136;
      if (*(v136 + 71) < 0)
      {
        operator delete(*(v136 + 48));
      }

      *(v112 + 48) = *__p;
      *(v112 + 64) = v133;
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__dst.__r_.__value_.__l.__data_, (*(v111 + 128) + 24), __p);
      v113 = v136;
      if (*(v136 + 95) < 0)
      {
        operator delete(*(v136 + 72));
      }

      *(v113 + 72) = *__p;
      *(v113 + 88) = v133;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_107;
  }
}

void sub_29B21D2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  *(v52 - 160) = v52 - 128;
  sub_29A012C90((v52 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_29B21D574(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B21D5C4(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B21D624@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B21D670(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B21D670(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9970;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C98D8;
  return a1;
}

void sub_29B21D718(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B21D784@<D0>(_OWORD *a1@<X8>)
{
  sub_29B21E7C8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

unint64_t sub_29B21D7C0(uint64_t a1, const std::string *a2, _DWORD *a3)
{
  sub_29B23F9EC(a1, a2);
  v6 = sub_29B1F31FC();
  if ((sub_29AAC05D4(a2, v6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v12 = std::string::append(&v14, "' is not a node graph implementation");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16 = v12->__r_.__value_.__r.__words[2];
    v15 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v15);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  std::string::operator=((a1 + 56), a2 + 2);
  (*(**(*a3 + 8) + 176))(*(*a3 + 8), a1 + 56);
  v7 = a3[6];
  a3[6] = 1;
  sub_29B236D28(0, a2, a3, &v15);
  v8 = v15;
  v15 = 0uLL;
  v9 = *(a1 + 48);
  *(a1 + 40) = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }
  }

  a3[6] = v7;
  result = sub_29A12A708(&v15, a1 + 56);
  *(a1 + 32) = result;
  return result;
}

void sub_29B21D940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29B21D9A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 40);
  v5 = *(v4 + 264);
  for (i = *(v4 + 272); v5 != i; result = (*(**(v9 + 176) + 56))(*(v9 + 176), v9, a3, a4))
  {
    v9 = *v5++;
  }

  return result;
}

void sub_29B21DA18(uint64_t a1, uint64_t a2, void *a3, const void **a4)
{
  v6 = strlen(off_2A14FE6F8);
  v7 = v6;
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    if (v6 != a4[1])
    {
      return;
    }

    if (v6 == -1)
    {
      sub_29A0F26CC();
    }

    v9 = *a4;
  }

  else
  {
    v9 = a4;
    if (v7 != v8)
    {
      return;
    }
  }

  if (!memcmp(v9, off_2A14FE6F8, v7))
  {
    v10 = *a3;
    v11 = *(*a3 + 8);
    (*(**a3 + 120))(*a3, *(a1 + 40));
    (*(*v10 + 48))(v10, a4);
    std::operator+<char>();
    v12 = std::string::append(&v61, "(");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v63 = v12->__r_.__value_.__r.__words[2];
    v62 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    (*(*v10 + 72))(v10, &v62, a4);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v62, "");
    v14 = *(a1 + 40);
    v15 = v14[19];
    v16 = v14[20];
    if (v15 != v16)
    {
      do
      {
        v17 = *v15;
        v18 = sub_29B2438AC(v11, *(*v15 + 24));
        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v62, v18, &v59);
        v19 = std::string::append(&v59, " ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v23 = *(v17 + 104);
        v22 = v17 + 104;
        v21 = v23;
        v24 = *(v22 + 23);
        if (v24 >= 0)
        {
          v25 = v22;
        }

        else
        {
          v25 = v21;
        }

        if (v24 >= 0)
        {
          v26 = *(v22 + 23);
        }

        else
        {
          v26 = *(v22 + 8);
        }

        v27 = std::string::append(&v60, v25, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        (*(*v10 + 72))(v10, &v61, a4);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        MEMORY[0x29C2C1A60](&v62, ", ");
        ++v15;
      }

      while (v15 != v16);
      v14 = *(a1 + 40);
    }

    v29 = v14[11];
    for (i = v14[12]; v29 != i; ++v29)
    {
      v31 = *v29;
      (*(*v11 + 16))(&v58, v11, *(*v29 + 24));
      if (v63 >= 0)
      {
        v32 = &v62;
      }

      else
      {
        v32 = v62;
      }

      if (v63 >= 0)
      {
        v33 = HIBYTE(v63);
      }

      else
      {
        v33 = *(&v62 + 1);
      }

      v34 = std::string::insert(&v58, 0, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v59, " ");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v40 = *(v31 + 104);
      v39 = v31 + 104;
      v38 = v40;
      v41 = *(v39 + 23);
      if (v41 >= 0)
      {
        v42 = v39;
      }

      else
      {
        v42 = v38;
      }

      if (v41 >= 0)
      {
        v43 = *(v39 + 23);
      }

      else
      {
        v43 = *(v39 + 8);
      }

      v44 = std::string::append(&v60, v42, v43);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      (*(*v10 + 72))(v10, &v61, a4);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      MEMORY[0x29C2C1A60](&v62, ", ");
    }

    sub_29A008E78(&v61, ")");
    (*(*v10 + 72))(v10, &v61, a4);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    (*(*v10 + 56))(v10, a4, 0);
    (*(*v10 + 160))(v10, *(a1 + 40), a3, a4, 1);
    (*(*v10 + 144))(v10, *(a1 + 40), a3, a4, 0);
    v46 = *(a1 + 40);
    v47 = *(v46 + 88);
    v48 = *(v46 + 96);
    if (v47 != v48)
    {
      do
      {
        v49 = *v47;
        (*(*v10 + 224))(&v61, v10, *v47, a3);
        if (*(v49 + 127) >= 0)
        {
          v50 = *(v49 + 127);
        }

        else
        {
          v50 = *(v49 + 112);
        }

        sub_29A022DE0(&v59, v50 + 3);
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v59;
        }

        else
        {
          v51 = v59.__r_.__value_.__r.__words[0];
        }

        if (v50)
        {
          if (*(v49 + 127) >= 0)
          {
            v52 = (v49 + 104);
          }

          else
          {
            v52 = *(v49 + 104);
          }

          memmove(v51, v52, v50);
        }

        *(&v51->__r_.__value_.__l.__data_ + v50) = 2112800;
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v61;
        }

        else
        {
          v53 = v61.__r_.__value_.__r.__words[0];
        }

        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v61.__r_.__value_.__l.__size_;
        }

        v55 = std::string::append(&v59, v53, size);
        v56 = *&v55->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        (*(*v10 + 80))(v10, &v60, a4, 1);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        ++v47;
      }

      while (v47 != v48);
      v46 = *(a1 + 40);
    }

    (*(*v10 + 168))(v10, v46, a3, a4);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }
  }
}

void sub_29B21E0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B21E240(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = strlen(off_2A14FE550[0]);
  v10 = v9;
  v11 = *(a4 + 23);
  if (v11 < 0)
  {
    if (v9 != *(a4 + 8))
    {
      goto LABEL_9;
    }

    if (v9 == -1)
    {
      sub_29A0F26CC();
    }

    v12 = *a4;
  }

  else
  {
    v12 = a4;
    if (v10 != v11)
    {
      goto LABEL_9;
    }
  }

  if (!memcmp(v12, off_2A14FE550[0], v10))
  {
    (*(*v8 + 144))(v8, *(a1 + 40), a3, a4, 0);
    LOBYTE(v11) = *(a4 + 23);
  }

LABEL_9:
  v13 = strlen(off_2A14FE6F8);
  v14 = v13;
  if ((v11 & 0x80) != 0)
  {
    if (v13 != *(a4 + 8))
    {
      return;
    }

    if (v13 == -1)
    {
      sub_29A0F26CC();
    }

    v15 = *a4;
  }

  else
  {
    v15 = a4;
    if (v14 != v11)
    {
      return;
    }
  }

  if (!memcmp(v15, off_2A14FE6F8, v14))
  {
    (*(*a1 + 80))(a1, a2, a3, a4);
    (*(*v8 + 48))(v8, a4);
    if (*(a1 + 79) >= 0)
    {
      v16 = *(a1 + 79);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    v17 = __p;
    sub_29A022DE0(__p, v16 + 1);
    if (v29 < 0)
    {
      v17 = __p[0];
    }

    if (v16)
    {
      v20 = *(a1 + 56);
      v19 = (a1 + 56);
      v18 = v20;
      if (v19[23] >= 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = v18;
      }

      memmove(v17, v21, v16);
    }

    *(v17 + v16) = 40;
    (*(*v8 + 72))(v8, __p, a4);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "");
    v22 = a2[11];
    for (i = a2[12]; v22 != i; ++v22)
    {
      v24 = *v22;
      (*(*v8 + 72))(v8, __p, a4);
      (*(*v8 + 184))(v8, v24, a3, a4);
      MEMORY[0x29C2C1A60](__p, ", ");
    }

    if (a2[20] != a2[19])
    {
      v25 = 0;
      do
      {
        (*(*v8 + 72))(v8, __p, a4);
        (*(*v8 + 192))(v8, *(a2[19] + 8 * v25), 0, 0, a3, a4);
        MEMORY[0x29C2C1A60](__p, ", ");
        ++v25;
      }

      while (v25 < (a2[20] - a2[19]) >> 3);
    }

    sub_29A008E78(v26, ")");
    (*(*v8 + 72))(v8, v26, a4);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    (*(*v8 + 56))(v8, a4, 1);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B21E65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B21E6A8(uint64_t a1)
{
  *a1 = &unk_2A20C99C0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B21E730(void **__p)
{
  *__p = &unk_2A20C99C0;
  if (*(__p + 79) < 0)
  {
    operator delete(__p[7]);
  }

  v2 = __p[6];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B21E7C8@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x68uLL);
  result = sub_29B21E814(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B21E814(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9A58;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C99C0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return a1;
}

void sub_29B21E8D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B21E93C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B220E18(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B21E978(uint64_t a1, uint64_t a2, uint64_t **a3, const void **a4)
{
  v269[6] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787248))
  {
    v53 = sub_29B247ADC();
    v54 = sub_29B2470A0();
    sub_29A008E78(&v181, "rgb");
    *&v254.__r_.__value_.__r.__words[1] = v181;
    v254.__r_.__value_.__r.__words[0] = v54;
    v255 = v182;
    v181 = 0uLL;
    v182 = 0;
    v55 = sub_29B247C28();
    sub_29A008E78(&v179, "rgb1");
    v257 = v179;
    v256 = v55;
    v258 = v180;
    v179 = 0uLL;
    v180 = 0;
    sub_29B220F78(v183, &v254, 2);
    __p[0].__r_.__value_.__r.__words[0] = v53;
    sub_29B220A8C(&__p[0].__r_.__value_.__l.__size_, v183);
    v56 = sub_29B247C28();
    v57 = sub_29B2471EC();
    sub_29A008E78(&v176, "rgba");
    *&v249.__r_.__value_.__r.__words[1] = v176;
    v249.__r_.__value_.__r.__words[0] = v57;
    v250 = v177;
    v176 = 0uLL;
    v177 = 0;
    v58 = sub_29B247ADC();
    sub_29A008E78(&v174, "rgb");
    v252 = v174;
    v251 = v58;
    v253 = v175;
    v174 = 0uLL;
    v175 = 0;
    sub_29B220F78(v178, &v249, 2);
    v260 = v56;
    v59 = sub_29B220A8C(v261, v178);
    Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v59);
    v61 = sub_29B2470A0();
    sub_29A008E78(&v171, "xy0");
    v244 = v171;
    v243 = v61;
    v245 = v172;
    v171 = 0uLL;
    v172 = 0;
    v62 = sub_29B24732C();
    sub_29A008E78(&v169, "xy");
    v247 = v169;
    v246 = v62;
    v248 = v170;
    v169 = 0uLL;
    v170 = 0;
    sub_29B220F78(v173, &v243, 2);
    v261[5] = Vector2Name;
    sub_29B220A8C(v262, v173);
    v63 = sub_29B2470A0();
    v64 = sub_29B247ADC();
    sub_29A008E78(&v166, "xyz");
    *&v232.__r_.__value_.__r.__words[1] = v166;
    v232.__r_.__value_.__r.__words[0] = v64;
    v233 = v167;
    v166 = 0uLL;
    v167 = 0;
    v65 = sub_29B2471EC();
    v66 = sub_29A008E78(&v164, "xyz1");
    v235 = v164;
    v234 = v65;
    v236 = v165;
    v164 = 0uLL;
    v165 = 0;
    v67 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v66);
    sub_29A008E78(&v162, "xy");
    v238 = v162;
    v237 = v67;
    v239 = v163;
    v162 = 0uLL;
    v163 = 0;
    v68 = sub_29B247478();
    sub_29A008E78(&v160, "xyz");
    v241 = v160;
    v240 = v68;
    v242 = v161;
    v160 = 0uLL;
    v161 = 0;
    sub_29B220F78(v168, &v232, 4);
    v262[5] = v63;
    sub_29B220A8C(v263, v168);
    v69 = sub_29B2471EC();
    v70 = sub_29B247C28();
    sub_29A008E78(&v157, "xyzw");
    *&v224.__r_.__value_.__r.__words[1] = v157;
    v224.__r_.__value_.__r.__words[0] = v70;
    v225 = v158;
    v157 = 0uLL;
    v158 = 0;
    v71 = sub_29B2470A0();
    sub_29A008E78(&v155, "xyz");
    v227 = v155;
    v226 = v71;
    v228 = v156;
    v155 = 0uLL;
    v156 = 0;
    v72 = sub_29B2475C4();
    sub_29A008E78(&v153, "xyzw");
    v230 = v153;
    v229 = v72;
    v231 = v154;
    v153 = 0uLL;
    v154 = 0;
    sub_29B220F78(v159, &v224, 3);
    v263[5] = v69;
    sub_29B220A8C(v264, v159);
    v73 = sub_29B246C60();
    v74 = sub_29B247ADC();
    sub_29A008E78(&v150, "rrr");
    *&v210.__r_.__value_.__r.__words[1] = v150;
    v210.__r_.__value_.__r.__words[0] = v74;
    v211 = v151;
    v150 = 0uLL;
    v151 = 0;
    v75 = sub_29B247C28();
    v76 = sub_29A008E78(&v148, "rrrr");
    v213 = v148;
    v212 = v75;
    v214 = v149;
    v148 = 0uLL;
    v149 = 0;
    v77 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v76);
    sub_29A008E78(&v146, "rr");
    v216 = v146;
    v215 = v77;
    v217 = v147;
    v146 = 0uLL;
    v147 = 0;
    v78 = sub_29B2470A0();
    sub_29A008E78(&v144, "rrr");
    v219 = v144;
    v218 = v78;
    v220 = v145;
    v144 = 0uLL;
    v145 = 0;
    v79 = sub_29B2471EC();
    sub_29A008E78(&v142, "rrrr");
    v222 = v142;
    v221 = v79;
    v223 = v143;
    v142 = 0uLL;
    v143 = 0;
    sub_29B220F78(v152, &v210, 5);
    v264[5] = v73;
    sub_29B220A8C(v265, v152);
    v80 = sub_29B246D5C();
    v81 = sub_29B247ADC();
    sub_29A008E78(&v139, "xxx");
    *&__dst.__r_.__value_.__r.__words[1] = v139;
    __dst.__r_.__value_.__r.__words[0] = v81;
    v197 = v140;
    v139 = 0uLL;
    v140 = 0;
    v82 = sub_29B247C28();
    v83 = sub_29A008E78(&v137, "xxxx");
    v199 = v137;
    v198 = v82;
    v200 = v138;
    v137 = 0uLL;
    v138 = 0;
    v84 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v83);
    sub_29A008E78(&v135, "xx");
    v202 = v135;
    v201 = v84;
    v203 = v136;
    v135 = 0uLL;
    v136 = 0;
    v85 = sub_29B2470A0();
    sub_29A008E78(v133, "xxx");
    v205 = *v133;
    v204 = v85;
    v206 = v134;
    v133[0] = 0;
    v133[1] = 0;
    v134 = 0;
    v86 = sub_29B2471EC();
    sub_29A008E78(&v131, "xxxx");
    v208 = v131;
    v207 = v86;
    v209 = v132;
    v131 = 0uLL;
    v132 = 0;
    sub_29B220F78(v141, &__dst, 5);
    v265[5] = v80;
    sub_29B220A8C(v266, v141);
    v87 = sub_29B24732C();
    v88 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v87);
    sub_29A008E78(&v128, "xy");
    v194 = v128;
    v193 = v88;
    v195 = v129;
    v128 = 0uLL;
    v129 = 0;
    sub_29B220F78(v130, &v193, 1);
    v266[5] = v87;
    sub_29B220A8C(v267, v130);
    v89 = sub_29B247478();
    v90 = sub_29B2470A0();
    sub_29A008E78(v125, "xyz");
    v188 = *v125;
    v187 = v90;
    v189 = v126;
    v125[0] = 0;
    v125[1] = 0;
    v126 = 0;
    v91 = sub_29B247ADC();
    sub_29A008E78(v123, "xyz");
    v191 = *v123;
    v190 = v91;
    v192 = v124;
    v123[0] = 0;
    v123[1] = 0;
    v124 = 0;
    sub_29B220F78(v127, &v187, 2);
    v267[5] = v89;
    sub_29B220A8C(v268, v127);
    v92 = sub_29B2475C4();
    v93 = sub_29B2471EC();
    sub_29A008E78(v120, "xyzw");
    v185 = *v120;
    v184 = v93;
    v186 = v121;
    v120[0] = 0;
    v120[1] = 0;
    v121 = 0;
    sub_29B220F78(v122, &v184, 1);
    v268[5] = v92;
    sub_29B220A8C(v269, v122);
    sub_29B220FF0(qword_2A1787220, __p, 10);
    for (i = 440; i != -40; i -= 48)
    {
      sub_29AE14178(__p + i);
    }

    sub_29AE14178(v122);
    if (SHIBYTE(v186) < 0)
    {
      operator delete(v185);
    }

    if (SHIBYTE(v121) < 0)
    {
      operator delete(v120[0]);
    }

    sub_29AE14178(v127);
    for (j = 0; j != -64; j -= 32)
    {
      if (*(&v192 + j + 7) < 0)
      {
        operator delete(*(&v191 + j));
      }
    }

    if (SHIBYTE(v124) < 0)
    {
      operator delete(v123[0]);
    }

    if (SHIBYTE(v126) < 0)
    {
      operator delete(v125[0]);
    }

    sub_29AE14178(v130);
    if (SHIBYTE(v195) < 0)
    {
      operator delete(v194);
    }

    if (SHIBYTE(v129) < 0)
    {
      operator delete(v128);
    }

    sub_29AE14178(v141);
    for (k = 0; k != -160; k -= 32)
    {
      if (*(&v209 + k + 7) < 0)
      {
        operator delete(*(&v208 + k));
      }
    }

    if (SHIBYTE(v132) < 0)
    {
      operator delete(v131);
    }

    if (SHIBYTE(v134) < 0)
    {
      operator delete(v133[0]);
    }

    if (SHIBYTE(v136) < 0)
    {
      operator delete(v135);
    }

    if (SHIBYTE(v138) < 0)
    {
      operator delete(v137);
    }

    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    sub_29AE14178(v152);
    for (m = 0; m != -160; m -= 32)
    {
      if (*(&v223 + m + 7) < 0)
      {
        operator delete(*(&v222 + m));
      }
    }

    if (SHIBYTE(v143) < 0)
    {
      operator delete(v142);
    }

    if (SHIBYTE(v145) < 0)
    {
      operator delete(v144);
    }

    if (SHIBYTE(v147) < 0)
    {
      operator delete(v146);
    }

    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v151) < 0)
    {
      operator delete(v150);
    }

    sub_29AE14178(v159);
    for (n = 0; n != -96; n -= 32)
    {
      if (*(&v231 + n + 7) < 0)
      {
        operator delete(*(&v230 + n));
      }
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v153);
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    if (SHIBYTE(v158) < 0)
    {
      operator delete(v157);
    }

    sub_29AE14178(v168);
    for (ii = 0; ii != -128; ii -= 32)
    {
      if (*(&v242 + ii + 7) < 0)
      {
        operator delete(*(&v241 + ii));
      }
    }

    if (SHIBYTE(v161) < 0)
    {
      operator delete(v160);
    }

    if (SHIBYTE(v163) < 0)
    {
      operator delete(v162);
    }

    if (SHIBYTE(v165) < 0)
    {
      operator delete(v164);
    }

    if (SHIBYTE(v167) < 0)
    {
      operator delete(v166);
    }

    sub_29AE14178(v173);
    for (jj = 0; jj != -64; jj -= 32)
    {
      if (*(&v248 + jj + 7) < 0)
      {
        operator delete(*(&v247 + jj));
      }
    }

    if (SHIBYTE(v170) < 0)
    {
      operator delete(v169);
    }

    if (SHIBYTE(v172) < 0)
    {
      operator delete(v171);
    }

    sub_29AE14178(v178);
    for (kk = 0; kk != -64; kk -= 32)
    {
      if (*(&v253 + kk + 7) < 0)
      {
        operator delete(*(&v252 + kk));
      }
    }

    if (SHIBYTE(v175) < 0)
    {
      operator delete(v174);
    }

    if (SHIBYTE(v177) < 0)
    {
      operator delete(v176);
    }

    sub_29AE14178(v183);
    for (mm = 0; mm != -64; mm -= 32)
    {
      if (*(&v258 + mm + 7) < 0)
      {
        operator delete(*(&v257 + mm));
      }
    }

    if (SHIBYTE(v180) < 0)
    {
      operator delete(v179);
    }

    if (SHIBYTE(v182) < 0)
    {
      operator delete(v181);
    }

    __cxa_atexit(sub_29B2209D8, qword_2A1787220, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1787248);
  }

  if ((atomic_load_explicit(&qword_2A1787268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787268))
  {
    sub_29A008E78(&unk_2A1787250, "in");
    __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A1787250, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1787268);
  }

  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *a3;
    v12 = sub_29B23EC38(a2, &unk_2A1787250);
    v13 = v12;
    if (!v12 || (v14 = **(a2 + 152)) == 0)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v115 = std::string::append(&v210, "' is not a valid convert node");
      v116 = *&v115->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v116;
      v115->__r_.__value_.__l.__size_ = 0;
      v115->__r_.__value_.__r.__words[2] = 0;
      v115->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, __p);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    if (!v12[30])
    {
      v16 = v12[16];
      v15 = v12[17];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_29A014BEC(v15);
      }

      if (!v16)
      {
        v117 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v118 = std::string::append(&v210, "'");
        v119 = *&v118->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v119;
        v118->__r_.__value_.__l.__size_ = 0;
        v118->__r_.__value_.__r.__words[2] = 0;
        v118->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v117, __p);
        *v117 = &unk_2A20C8F68;
        __cxa_throw(v117, &unk_2A20C8EF8, sub_29B20BED4);
      }
    }

    memset(__p, 0, 24);
    if (*(v13[3] + 4) == 1 && *(*(v14 + 24) + 32) == 1)
    {
      (*(*v11 + 224))(&v210, v11, v13, a3);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      __p[0] = v210;
      v17 = sub_29B2438AC(v11[1], *(v14 + 24));
      v18 = v17;
      if (*(v17 + 23) >= 0)
      {
        v19 = *(v17 + 23);
      }

      else
      {
        v19 = *(v17 + 8);
      }

      p_dst = &__dst;
      sub_29A022DE0(&__dst, v19 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v19)
      {
        if (v18[23] >= 0)
        {
          v21 = v18;
        }

        else
        {
          v21 = *v18;
        }

        memmove(p_dst, v21, v19);
      }

      *(&p_dst->__r_.__value_.__l.__data_ + v19) = 40;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(&__dst, v22, size);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v210.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v210.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = std::string::append(&v210, ")");
      v27 = v26->__r_.__value_.__r.__words[0];
      v232.__r_.__value_.__r.__words[0] = v26->__r_.__value_.__l.__size_;
      *(v232.__r_.__value_.__r.__words + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
      v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      __p[0].__r_.__value_.__r.__words[0] = v27;
      __p[0].__r_.__value_.__l.__size_ = v232.__r_.__value_.__r.__words[0];
      *(&__p[0].__r_.__value_.__r.__words[1] + 7) = *(v232.__r_.__value_.__r.__words + 7);
      *(&__p[0].__r_.__value_.__s + 23) = v28;
      if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v210.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v210.__r_.__value_.__r.__words[0] = v13[3];
      v29 = sub_29B20D628(qword_2A1787220, &v210);
      if (!v29)
      {
        goto LABEL_200;
      }

      v210.__r_.__value_.__r.__words[0] = *(v14 + 24);
      v30 = sub_29B20D628(v29 + 3, &v210);
      if (!v30)
      {
        goto LABEL_200;
      }

      v31 = *(v30 + 47);
      if (v31 < 0)
      {
        v31 = v30[4];
      }

      if (!v31)
      {
LABEL_200:
        v103 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v104 = std::string::append(&v224, "' to '");
        v105 = *&v104->__r_.__value_.__l.__data_;
        v232.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&v232.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        v106 = *(v14 + 24);
        v107 = *(v106 + 23);
        if (v107 >= 0)
        {
          v108 = *(v14 + 24);
        }

        else
        {
          v108 = *v106;
        }

        if (v107 >= 0)
        {
          v109 = *(v106 + 23);
        }

        else
        {
          v109 = *(v106 + 8);
        }

        v110 = std::string::append(&v232, v108, v109);
        v111 = *&v110->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v111;
        v110->__r_.__value_.__l.__size_ = 0;
        v110->__r_.__value_.__r.__words[2] = 0;
        v110->__r_.__value_.__r.__words[0] = 0;
        v112 = std::string::append(&__dst, "' is not supported by convert node");
        v113 = *&v112->__r_.__value_.__l.__data_;
        v210.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
        *&v210.__r_.__value_.__l.__data_ = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v103, &v210);
        *v103 = &unk_2A20C8F68;
        __cxa_throw(v103, &unk_2A20C8EF8, sub_29B20BED4);
      }

      memset(&v210, 0, sizeof(v210));
      if (v13[30])
      {
        (*(*v11 + 224))(&__dst, v11, v13, a3);
        if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v210.__r_.__value_.__l.__data_);
        }

        v210 = __dst;
      }

      else
      {
        std::string::operator=(&v210, (v13 + 13));
        v32 = v13[16];
        v33 = v13[17];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = v11[1];
        if (v32)
        {
          v35 = v13[17];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v34 + 24))(&__dst);
          if (v35)
          {
            sub_29A014BEC(v35);
          }
        }

        else
        {
          v36 = sub_29B243874(v34, v13[3], 0);
          if (*(v36 + 23) < 0)
          {
            sub_29A008D14(&__dst, *v36, *(v36 + 8));
          }

          else
          {
            v37 = *v36;
            __dst.__r_.__value_.__r.__words[2] = *(v36 + 16);
            *&__dst.__r_.__value_.__l.__data_ = v37;
          }
        }

        if (v33)
        {
          sub_29A014BEC(v33);
        }

        v38 = sub_29B2438AC(v11[1], v13[3]);
        v39 = v38;
        if (*(v38 + 23) >= 0)
        {
          v40 = *(v38 + 23);
        }

        else
        {
          v40 = *(v38 + 8);
        }

        v41 = &v249;
        sub_29A022DE0(&v249, v40 + 1);
        if ((v249.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = v249.__r_.__value_.__r.__words[0];
        }

        if (v40)
        {
          if (v39[23] >= 0)
          {
            v42 = v39;
          }

          else
          {
            v42 = *v39;
          }

          memmove(v41, v42, v40);
        }

        *(&v41->__r_.__value_.__l.__data_ + v40) = 32;
        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v210;
        }

        else
        {
          v43 = v210.__r_.__value_.__r.__words[0];
        }

        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v210.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v210.__r_.__value_.__l.__size_;
        }

        v45 = std::string::append(&v249, v43, v44);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v254.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v254.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = std::string::append(&v254, " = ");
        v48 = *&v47->__r_.__value_.__l.__data_;
        v224.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&v224.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &__dst;
        }

        else
        {
          v49 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = __dst.__r_.__value_.__l.__size_;
        }

        v51 = std::string::append(&v224, v49, v50);
        v52 = *&v51->__r_.__value_.__l.__data_;
        v232.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v232.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        (*(*v11 + 80))(v11, &v232, a4, 1);
        if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v232.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v254.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v249.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      (*(*v11[1] + 40))(&__dst);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      __p[0] = __dst;
      if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v210.__r_.__value_.__l.__data_);
      }
    }

    (*(*v11 + 48))(v11, a4);
    (*(*v11 + 192))(v11, **(a2 + 152), 1, 0, a3, a4);
    std::operator+<char>();
    (*(*v11 + 72))(v11, &v210, a4);
    if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v210.__r_.__value_.__l.__data_);
    }

    (*(*v11 + 56))(v11, a4, 1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_29B21FFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  v88 = v86 + 440;
  v89 = -480;
  do
  {
    v88 = sub_29AE14178(v88) - 48;
    v89 += 48;
  }

  while (v89);
  sub_29AE14178(&a16);
  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_29AE14178(&a33);
  v90 = &STACK[0x468];
  v91 = -64;
  while (1)
  {
    if (*(v90 + 23) < 0)
    {
      operator delete(*v90);
    }

    v90 -= 4;
    v91 += 32;
    if (!v91)
    {
      if (a26 < 0)
      {
        operator delete(a21);
      }

      if (a32 < 0)
      {
        operator delete(a27);
      }

      sub_29AE14178(&a44);
      if (SLOBYTE(STACK[0x49F]) < 0)
      {
        operator delete(STACK[0x488]);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      sub_29AE14178(&a75);
      v92 = &STACK[0x528];
      v93 = -160;
      while (1)
      {
        if (*(v92 + 23) < 0)
        {
          operator delete(*v92);
        }

        v92 -= 4;
        v93 += 32;
        if (!v93)
        {
          if (a54 < 0)
          {
            operator delete(a49);
          }

          if (a60 < 0)
          {
            operator delete(a55);
          }

          if (a66 < 0)
          {
            operator delete(a61);
          }

          if (a72 < 0)
          {
            operator delete(a67);
          }

          if (a74 < 0)
          {
            operator delete(a73);
          }

          sub_29AE14178(&a86);
          v94 = &STACK[0x5C8];
          v95 = -160;
          while (1)
          {
            if (*(v94 + 23) < 0)
            {
              operator delete(*v94);
            }

            v94 -= 4;
            v95 += 32;
            if (!v95)
            {
              if (a77 < 0)
              {
                operator delete(a76);
              }

              if (a79 < 0)
              {
                operator delete(a78);
              }

              if (a81 < 0)
              {
                operator delete(a80);
              }

              if (a83 < 0)
              {
                operator delete(a82);
              }

              if (a85 < 0)
              {
                operator delete(a84);
              }

              sub_29AE14178(&STACK[0x268]);
              v96 = &STACK[0x628];
              v97 = -96;
              while (1)
              {
                if (*(v96 + 23) < 0)
                {
                  operator delete(*v96);
                }

                v96 -= 4;
                v97 += 32;
                if (!v97)
                {
                  if (SLOBYTE(STACK[0x237]) < 0)
                  {
                    operator delete(STACK[0x220]);
                  }

                  if (SLOBYTE(STACK[0x24F]) < 0)
                  {
                    operator delete(STACK[0x238]);
                  }

                  if (SLOBYTE(STACK[0x267]) < 0)
                  {
                    operator delete(STACK[0x250]);
                  }

                  sub_29AE14178(&STACK[0x2F0]);
                  v98 = &STACK[0x6A8];
                  v99 = -128;
                  while (1)
                  {
                    if (*(v98 + 23) < 0)
                    {
                      operator delete(*v98);
                    }

                    v98 -= 4;
                    v99 += 32;
                    if (!v99)
                    {
                      if (SLOBYTE(STACK[0x2A7]) < 0)
                      {
                        operator delete(STACK[0x290]);
                      }

                      if (SLOBYTE(STACK[0x2BF]) < 0)
                      {
                        operator delete(STACK[0x2A8]);
                      }

                      if (SLOBYTE(STACK[0x2D7]) < 0)
                      {
                        operator delete(STACK[0x2C0]);
                      }

                      if (SLOBYTE(STACK[0x2EF]) < 0)
                      {
                        operator delete(STACK[0x2D8]);
                      }

                      sub_29AE14178(&STACK[0x348]);
                      v100 = &STACK[0x6E8];
                      v101 = -64;
                      while (1)
                      {
                        if (*(v100 + 23) < 0)
                        {
                          operator delete(*v100);
                        }

                        v100 -= 4;
                        v101 += 32;
                        if (!v101)
                        {
                          if (SLOBYTE(STACK[0x32F]) < 0)
                          {
                            operator delete(STACK[0x318]);
                          }

                          if (SLOBYTE(STACK[0x347]) < 0)
                          {
                            operator delete(STACK[0x330]);
                          }

                          sub_29AE14178(&STACK[0x3A0]);
                          v102 = &STACK[0x728];
                          v103 = -64;
                          while (1)
                          {
                            if (*(v102 + 23) < 0)
                            {
                              operator delete(*v102);
                            }

                            v102 -= 4;
                            v103 += 32;
                            if (!v103)
                            {
                              if (SLOBYTE(STACK[0x387]) < 0)
                              {
                                operator delete(STACK[0x370]);
                              }

                              if (SLOBYTE(STACK[0x39F]) < 0)
                              {
                                operator delete(STACK[0x388]);
                              }

                              sub_29AE14178(&STACK[0x3F8]);
                              v104 = &STACK[0x768];
                              v105 = -64;
                              while (1)
                              {
                                if (*(v104 + 23) < 0)
                                {
                                  operator delete(*v104);
                                }

                                v104 -= 4;
                                v105 += 32;
                                if (!v105)
                                {
                                  if (SLOBYTE(STACK[0x3DF]) < 0)
                                  {
                                    operator delete(STACK[0x3C8]);
                                  }

                                  if (SLOBYTE(STACK[0x3F7]) < 0)
                                  {
                                    operator delete(STACK[0x3E0]);
                                  }

                                  __cxa_guard_abort(&qword_2A1787248);
                                  _Unwind_Resume(a1);
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
      }
    }
  }
}

uint64_t sub_29B2209DC(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}