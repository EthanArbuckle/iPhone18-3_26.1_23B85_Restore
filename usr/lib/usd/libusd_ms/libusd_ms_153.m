void sub_29ADC1798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADC1834(void *a1)
{
  v2 = atomic_load(&qword_2A174E9E0);
  if (!v2)
  {
    v2 = sub_29ADC4754();
  }

  if ((*(v2 + 368) ^ *a1) < 8)
  {
    return 2;
  }

  v3 = atomic_load(&qword_2A174E9E0);
  if (!v3)
  {
    v3 = sub_29ADC4754();
  }

  if ((*(v3 + 336) ^ *a1) < 8)
  {
    return 2;
  }

  v5 = atomic_load(&qword_2A174E9E0);
  if (!v5)
  {
    v5 = sub_29ADC4754();
  }

  if ((*(v5 + 376) ^ *a1) < 8)
  {
    return 3;
  }

  v6 = atomic_load(&qword_2A174E9E0);
  if (!v6)
  {
    v6 = sub_29ADC4754();
  }

  if ((*(v6 + 344) ^ *a1) < 8)
  {
    return 3;
  }

  v7 = atomic_load(&qword_2A174E9E0);
  if (!v7)
  {
    v7 = sub_29ADC4754();
  }

  if ((*(v7 + 384) ^ *a1) < 8)
  {
    return 4;
  }

  v8 = atomic_load(&qword_2A174E9E0);
  if (!v8)
  {
    v8 = sub_29ADC4754();
  }

  if ((*(v8 + 352) ^ *a1) < 8)
  {
    return 4;
  }

  v9 = atomic_load(&qword_2A174E9E0);
  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  if ((*(v9 + 416) ^ *a1) < 8)
  {
    return 9;
  }

  v10 = atomic_load(&qword_2A174E9E0);
  if (!v10)
  {
    v10 = sub_29ADC4754();
  }

  if ((*(v10 + 432) ^ *a1) < 8)
  {
    return 9;
  }

  v11 = atomic_load(&qword_2A174E9E0);
  if (!v11)
  {
    v11 = sub_29ADC4754();
  }

  if ((*(v11 + 424) ^ *a1) < 8)
  {
    return 16;
  }

  v12 = atomic_load(&qword_2A174E9E0);
  if (!v12)
  {
    v12 = sub_29ADC4754();
  }

  if ((*(v12 + 440) ^ *a1) > 7)
  {
    return 1;
  }

  else
  {
    return 16;
  }
}

void *sub_29ADC19F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&qword_2A174E9E0);
  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  if ((*(v4 + 336) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v5 = atomic_load(&qword_2A174E9E0);
  if (!v5)
  {
    v5 = sub_29ADC4754();
  }

  if ((*(v5 + 344) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v6 = atomic_load(&qword_2A174E9E0);
  if (!v6)
  {
    v6 = sub_29ADC4754();
  }

  if ((*(v6 + 352) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v7 = atomic_load(&qword_2A174E9E0);
  if (!v7)
  {
    v7 = sub_29ADC4754();
  }

  if ((*(v7 + 312) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v8 = atomic_load(&qword_2A174E9E0);
  if (!v8)
  {
    v8 = sub_29ADC4754();
  }

  if ((*(v8 + 320) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v9 = atomic_load(&qword_2A174E9E0);
  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  if ((*(v9 + 328) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v10 = atomic_load(&qword_2A174E9E0);
  if (!v10)
  {
    v10 = sub_29ADC4754();
  }

  if ((*(v10 + 368) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v11 = atomic_load(&qword_2A174E9E0);
  if (!v11)
  {
    v11 = sub_29ADC4754();
  }

  if ((*(v11 + 376) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v12 = atomic_load(&qword_2A174E9E0);
  if (!v12)
  {
    v12 = sub_29ADC4754();
  }

  if ((*(v12 + 384) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v13 = atomic_load(&qword_2A174E9E0);
  if (!v13)
  {
    v13 = sub_29ADC4754();
  }

  if ((*(v13 + 392) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v14 = atomic_load(&qword_2A174E9E0);
  if (!v14)
  {
    v14 = sub_29ADC4754();
  }

  if ((*(v14 + 400) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v15 = atomic_load(&qword_2A174E9E0);
  if (!v15)
  {
    v15 = sub_29ADC4754();
  }

  if ((*(v15 + 408) ^ *a1) < 8)
  {
    goto LABEL_40;
  }

  v16 = atomic_load(&qword_2A174E9E0);
  if (!v16)
  {
    v16 = sub_29ADC4754();
  }

  if ((*(v16 + 448) ^ *a1) >= 8)
  {
    v19 = atomic_load(&qword_2A174E9E0);
    if (!v19)
    {
      v19 = sub_29ADC4754();
    }

    v17 = ".x";
    if ((*(v19 + 456) ^ *a1) >= 8)
    {
      v20 = atomic_load(&qword_2A174E9E0);
      if (!v20)
      {
        v20 = sub_29ADC4754();
      }

      v17 = ".x";
      if ((*(v20 + 464) ^ *a1) >= 8)
      {
        v17 = "";
      }
    }
  }

  else
  {
LABEL_40:
    v17 = ".x";
  }

  return sub_29A008E78(a2, v17);
}

BOOL sub_29ADC1C78(void *a1)
{
  v2 = atomic_load(&qword_2A174E9E0);
  if (!v2)
  {
    v2 = sub_29ADC4754();
  }

  if ((*(v2 + 8) ^ *a1) < 8)
  {
    return 1;
  }

  v3 = atomic_load(&qword_2A174E9E0);
  if (!v3)
  {
    v3 = sub_29ADC4754();
  }

  if ((*(v3 + 16) ^ *a1) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&qword_2A174E9E0);
  if (!v5)
  {
    v5 = sub_29ADC4754();
  }

  return (*(v5 + 24) ^ *a1) < 8uLL;
}

uint64_t sub_29ADC1D14(uint64_t a1)
{
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  v2 = *(a1 + 264);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v3)
  {
    sub_29AB64520(a1 + 256, v3);
  }

  sub_29A019EE8(a1 + 232, *(a1 + 240));
  v5 = (a1 + 208);
  sub_29A012C90(&v5);
  sub_29A01752C(a1 + 184, *(a1 + 192));
  sub_29A01752C(a1 + 160, *(a1 + 168));
  sub_29A01752C(a1 + 136, *(a1 + 144));
  v5 = (a1 + 112);
  sub_29A012C90(&v5);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ADC1E0C(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v16 = 0x333333333333333;
  }

  else
  {
    v16 = v8;
  }

  v27 = a1;
  if (v16)
  {
    v17 = sub_29A09AEA8(a1, v16);
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v25 = &v17[10 * v7];
  *(&v26 + 1) = &v17[10 * v16];
  sub_29ADC1F78(a1, v25, a2, a3, a4, a5, a6, a7);
  *&v26 = v25 + 10;
  v18 = *(a1 + 8);
  v19 = v25 + *a1 - v18;
  sub_29AB6CA10(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_29AB6CC70(&v24);
  return v23;
}

void sub_29ADC1F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

void sub_29ADC1F78(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a3;
  v10 = *a4;
  v20 = *a5;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *a6;
  v19 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v12;
    }
  }

  v13 = *a7;
  v18 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v14;
    }
  }

  v15 = *a8;
  v17 = v15;
  if ((v15 & 7) != 0)
  {
    v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v16;
    }
  }

  sub_29AB6BAC8(a2, v9, v10, &v20, &v19, &v18, &v17);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29ADC20A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if ((v3 & 0x80000000) != 0)
  {
    v4 = *(a3 + 648);
    v5 = *(a3 + 656);
    if (v4 == v5)
    {
LABEL_5:
      v3 = *(a1 + 92);
      *(a1 + 92) = v3 + 1;
    }

    else
    {
      while ((*(a2 + 24) ^ *v4) >= 8)
      {
        v4 += 24;
        if (v4 == v5)
        {
          goto LABEL_5;
        }
      }

      return *(v4 + 17);
    }
  }

  return v3;
}

uint64_t sub_29ADC20F8(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = (a1 + 48);
  sub_29AB89D8C(&v3);
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

uint64_t sub_29ADC2164(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v8 = sub_29A160470(a1, a2);
  if (a3 && v8)
  {
    return *(v8 + 6);
  }

  v12 = *(a1 + 40);
  v10 = sub_29A4FA83C(a1, a2, a2, &v12);
  result = v12;
  if ((v11 & 1) == 0)
  {
    *(v10 + 6) = v12;
  }

  *(a1 + 40) += a4;
  return result;
}

uint64_t sub_29ADC21EC(uint64_t a1, void *a2)
{
  v4 = atomic_load(&qword_2A174E9E0);
  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  if ((*(v4 + 640) ^ *a2) < 8)
  {
    return 2;
  }

  v5 = atomic_load(&qword_2A174E9E0);
  if (!v5)
  {
    v5 = sub_29ADC4754();
  }

  if ((*(v5 + 400) ^ *a2) >= 8)
  {
    v6 = atomic_load(&qword_2A174E9E0);
    if (!v6)
    {
      v6 = sub_29ADC4754();
    }

    if ((*(v6 + 408) ^ *a2) > 7)
    {
      return 1;
    }
  }

  v7 = (*(*a1 + 192))(a1);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v8)
  {
    v8 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  if ((*(v8 + 4) ^ *v7) >= 8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_29ADC22F8(void *a1)
{
  v2 = atomic_load(&qword_2A174E9E0);
  if (!v2)
  {
    v2 = sub_29ADC4754();
  }

  if ((*(v2 + 64) ^ *a1) < 8)
  {
    return 1;
  }

  v4 = atomic_load(&qword_2A174E9E0);
  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  return 2 * ((*(v4 + 72) ^ *a1) < 8uLL);
}

uint64_t sub_29ADC2374(void *a1)
{
  v2 = atomic_load(&qword_2A174E9E0);
  if (!v2)
  {
    v2 = sub_29ADC4754();
  }

  if ((*(v2 + 88) ^ *a1) < 8)
  {
    return 1;
  }

  v4 = atomic_load(&qword_2A174E9E0);
  if (!v4)
  {
    v4 = sub_29ADC4754();
  }

  return 2 * ((*(v4 + 80) ^ *a1) < 8uLL);
}

uint64_t sub_29ADC23F0(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ADC2770(a1, a2);
  }

  else
  {
    sub_29ADC28BC(a1, a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void sub_29ADC2450(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29AB89B20(*(a1 + 8), a2);
  }

  sub_29ADC2AA8(a1, a2);
}

void *sub_29ADC24A4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
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

  sub_29ADC26EC(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29ADC26CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ADC26EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x20uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = *a3;
  result[2] = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 6) = *(a3 + 2);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29ADC2770(uint64_t *a1, __int128 *a2)
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
  sub_29ADC28BC(a1, v15, a2);
  *&v16 = v15 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29ADC2954(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ADC2A2C(&v14);
  return v13;
}

void sub_29ADC28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADC2A2C(va);
  _Unwind_Resume(a1);
}

void *sub_29ADC28BC(int a1, char *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v5;
  }

  if (*(a3 + 47) < 0)
  {
    result = sub_29A008D14(__dst + 24, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    *(__dst + 5) = *(a3 + 5);
    *(__dst + 24) = v7;
  }

  *(__dst + 6) = *(a3 + 6);
  return result;
}

void sub_29ADC2938(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADC2954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_29A0D27F8(a1, v5);
      v5 += 56;
    }
  }

  return sub_29AB89D00(v11);
}

void **sub_29ADC2A2C(void **a1)
{
  sub_29ADC2A60(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ADC2A60(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29A0D27F8(v4, i - 56);
  }
}

void sub_29ADC2AA8(void *a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v5 = 0x276276276276276;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A09B7D4(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[104 * v2];
    v9 = v8;
    v10 = &v6[104 * v5];
    sub_29AB89B20(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29ADC2BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADC2D00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADC2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v10 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v10;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      *(a4 + 96) = *(v7 + 96);
      v7 += 104;
      a4 += 104;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_29AB89EA0(a1, v5);
      v5 += 104;
    }
  }

  return sub_29AB89E14(v12);
}

void **sub_29ADC2D00(void **a1)
{
  sub_29ADC2D34(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ADC2D34(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 104;
    sub_29AB89EA0(v4, i - 104);
  }
}

uint64_t sub_29ADC2D7C(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v8 = 1;
  v9 = 1;
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 16))
  {
    result = sub_29ADC2FB0(a1, &v9, &v8, a3, a2);
  }

  else
  {
    sub_29ADC3104(a1, *(a1 + 8), &v9, &v8, a3, a2);
    result = v6 + 80;
    *(a1 + 8) = v6 + 80;
  }

  *(a1 + 8) = result;
  if ((a4 & 0x80000000) == 0)
  {
    *(result - 72) = a4;
  }

  return result;
}

uint64_t sub_29ADC2E18(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int __val)
{
  if (__val < 1)
  {
    v16 = 0;
  }

  else
  {
    std::to_string(&v15, __val);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v16);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  v14 = 4;
  LODWORD(v15.__r_.__value_.__l.__data_) = 0;
  v9 = *(a1 + 8);
  if (v9 >= *(a1 + 16))
  {
    v10 = sub_29ADC31EC(a1, &v15, &v14, a3, a2, &v16);
  }

  else
  {
    sub_29ADC3350(a1, *(a1 + 8), &v15, &v14, a3, a2, &v16);
    v10 = v9 + 80;
    *(a1 + 8) = v10;
  }

  *(a1 + 8) = v10;
  v11 = v10 - 24;
  v12 = *(v10 - 16);
  if (v12 >= *(v10 - 8))
  {
    result = sub_29ADC704C(v11, a3, a2);
  }

  else
  {
    sub_29AB6C230(v11, *(v10 - 16), a3, a2);
    result = v12 + 32;
    *(v10 - 16) = v12 + 32;
  }

  *(v10 - 16) = result;
  if ((a4 & 0x80000000) == 0)
  {
    *(*(a1 + 8) - 72) = a4;
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ADC2F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADC2FB0(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v12 = 0x333333333333333;
  }

  else
  {
    v12 = v6;
  }

  v23 = a1;
  if (v12)
  {
    v13 = sub_29A09AEA8(a1, v12);
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = &v13[10 * v5];
  *(&v22 + 1) = &v13[10 * v12];
  sub_29ADC3104(a1, v21, a2, a3, a4, a5);
  *&v22 = v21 + 10;
  v14 = *(a1 + 8);
  v15 = v21 + *a1 - v14;
  sub_29AB6CA10(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AB6CC70(&v20);
  return v19;
}

void sub_29ADC30F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

void sub_29ADC3104(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a3;
  v8 = *a4;
  v14 = *a5;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a6;
  v13 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v10;
    }
  }

  v11 = 0;
  v12 = 0;
  sub_29AB6BAC8(a2, v7, v8, &v14, &v13, &v12, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29ADC31EC(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v14 = 0x333333333333333;
  }

  else
  {
    v14 = v7;
  }

  v25 = a1;
  if (v14)
  {
    v15 = sub_29A09AEA8(a1, v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = v15;
  v23 = &v15[10 * v6];
  *(&v24 + 1) = &v15[10 * v14];
  sub_29ADC3350(a1, v23, a2, a3, a4, a5, a6);
  *&v24 = v23 + 10;
  v16 = *(a1 + 8);
  v17 = v23 + *a1 - v16;
  sub_29AB6CA10(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = *(a1 + 16);
  v21 = v24;
  *(a1 + 8) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_29AB6CC70(&v22);
  return v21;
}

void sub_29ADC333C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

void sub_29ADC3350(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v8 = *a3;
  v9 = *a4;
  v17 = *a5;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *a6;
  v16 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v11;
    }
  }

  v12 = *a7;
  v15 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v13;
    }
  }

  v14 = 0;
  sub_29AB6BAC8(a2, v8, v9, &v17, &v16, &v15, &v14);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void *sub_29ADC345C(void *a1, int a2)
{
  if (!a2)
  {
    goto LABEL_32;
  }

  v3 = atomic_load(&qword_2A174E9E0);
  if (!v3)
  {
    v3 = sub_29ADC4754();
  }

  v4 = *(v3 + 344) ^ *a1;
  v5 = atomic_load(&qword_2A174E9E0);
  if (v4 <= 7)
  {
    if (!v5)
    {
      v5 = sub_29ADC4754();
    }

    return (v5 + 168);
  }

  if (!v5)
  {
    v5 = sub_29ADC4754();
  }

  v6 = *(v5 + 376) ^ *a1;
  v7 = atomic_load(&qword_2A174E9E0);
  if (v6 <= 7)
  {
    if (!v7)
    {
      v7 = sub_29ADC4754();
    }

    return (v7 + 144);
  }

  if (!v7)
  {
    v7 = sub_29ADC4754();
  }

  v8 = *(v7 + 400) ^ *a1;
  v9 = atomic_load(&qword_2A174E9E0);
  if (v8 <= 7)
  {
    if (!v9)
    {
      v9 = sub_29ADC4754();
    }

    return (v9 + 192);
  }

  if (!v9)
  {
    v9 = sub_29ADC4754();
  }

  v10 = *(v9 + 416) ^ *a1;
  v11 = atomic_load(&qword_2A174E9E0);
  if (v10 <= 7)
  {
    if (!v11)
    {
      v11 = sub_29ADC4754();
    }

    return (v11 + 216);
  }

  if (!v11)
  {
    v11 = sub_29ADC4754();
  }

  if ((*(v11 + 432) ^ *a1) <= 7)
  {
    v12 = atomic_load(&qword_2A174E9E0);
    if (!v12)
    {
      v12 = sub_29ADC4754();
    }

    return (v12 + 240);
  }

  else
  {
LABEL_32:
    v13 = atomic_load(&qword_2A174E9E0);
    if (!v13)
    {
      v13 = sub_29ADC4754();
    }

    v14 = *(v13 + 448) ^ *a1;
    v15 = atomic_load(&qword_2A174E9E0);
    if (v14 > 7)
    {
      if (!v15)
      {
        v15 = sub_29ADC4754();
      }

      v16 = *(v15 + 456) ^ *a1;
      v17 = atomic_load(&qword_2A174E9E0);
      if (v16 > 7)
      {
        if (!v17)
        {
          v17 = sub_29ADC4754();
        }

        if ((*(v17 + 464) ^ *a1) <= 7)
        {
          v18 = atomic_load(&qword_2A174E9E0);
          if (!v18)
          {
            v18 = sub_29ADC4754();
          }

          return (v18 + 288);
        }
      }

      else
      {
        if (!v17)
        {
          v17 = sub_29ADC4754();
        }

        return (v17 + 272);
      }
    }

    else
    {
      if (!v15)
      {
        v15 = sub_29ADC4754();
      }

      return (v15 + 256);
    }
  }

  return a1;
}

uint64_t sub_29ADC3650(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v14 = 0x333333333333333;
  }

  else
  {
    v14 = v7;
  }

  v25 = a1;
  if (v14)
  {
    v15 = sub_29A09AEA8(a1, v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = v15;
  v23 = &v15[10 * v6];
  *(&v24 + 1) = &v15[10 * v14];
  sub_29ADC3350(a1, v23, a2, a3, a4, a5, a6);
  *&v24 = v23 + 10;
  v16 = *(a1 + 8);
  v17 = v23 + *a1 - v16;
  sub_29AB6CA10(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = *(a1 + 16);
  v21 = v24;
  *(a1 + 8) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_29AB6CC70(&v22);
  return v21;
}

void sub_29ADC37A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

void sub_29ADC37B4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_29AB6BCD8(a1);
    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A15A71C(a1, v11);
    v12 = sub_29AB6C8C8(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 5)
  {
    sub_29ADC38F4(&v17, a2, (a2 + v13), v8);
    v12 = sub_29AB6C8C8(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29ADC38F4(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 4;
      sub_29AB6BD44(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

void *sub_29ADC38F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A166F2C(a4, v5);
    sub_29A166F2C(a4 + 1, v5 + 1);
    sub_29A166F2C(a4 + 2, v5 + 2);
    sub_29A166F2C(a4 + 3, v5 + 3);
    a4 += 4;
    v5 += 4;
  }

  while (v5 != v6);
  return v6;
}

unint64_t sub_29ADC397C(void *a1, uint64_t *a2, int *a3, int *a4, int *a5, int *a6)
{
  v13 = a1[1];
  v12 = a1[2];
  if (v13 >= v12)
  {
    v15 = (v13 - *a1) >> 5;
    if ((v15 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v16 = v12 - *a1;
    v17 = v16 >> 4;
    if (v16 >> 4 <= (v15 + 1))
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v25 = a1;
    if (v18)
    {
      v19 = sub_29A10CB10(a1, v18);
    }

    else
    {
      v19 = 0;
    }

    v21 = v19;
    v22 = &v19[32 * v15];
    v24 = &v19[32 * v18];
    sub_29ADC3AD8(a1, v22, a2, a3, a4, a5, a6);
    v23 = v22 + 32;
    sub_29ADC3B58(a1, &v21);
    v14 = a1[1];
    sub_29ADC3C04(&v21);
  }

  else
  {
    sub_29ADC3AD8(a1, a1[1], a2, a3, a4, a5, a6);
    v14 = v13 + 32;
    a1[1] = v13 + 32;
  }

  a1[1] = v14;
  return v14 - 32;
}

void sub_29ADC3AD8(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6, int *a7)
{
  v7 = *a3;
  if ((*a3 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = *a7;
  *a2 = v7;
  if ((v7 & 7) != 0)
  {
    v12 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(a2 + 8) = v8;
    *(a2 + 12) = v9;
    *(a2 + 16) = v10;
    *(a2 + 20) = v11;
    *(a2 + 24) = 0;
    atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    *(a2 + 8) = v8;
    *(a2 + 12) = v9;
    *(a2 + 16) = v10;
    *(a2 + 20) = v11;
    *(a2 + 24) = 0;
  }
}

uint64_t sub_29ADC3B58(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v2;
    do
    {
      *v6 = *v5;
      *v5 = 0;
      v7 = *(v5 + 1);
      *(v6 + 24) = *(v5 + 6);
      *(v6 + 8) = v7;
      v5 += 4;
      v6 += 32;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 += 4;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  *(result + 8) = v8;
  a2[1] = v8;
  v9 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v9;
  v10 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29ADC3C04(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 32);
    v3 -= 32;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

unint64_t sub_29ADC3C68(void *a1, uint64_t *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  v15 = a1[1];
  v14 = a1[2];
  if (v15 >= v14)
  {
    v17 = (v15 - *a1) >> 5;
    if ((v17 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v18 = v14 - *a1;
    v19 = v18 >> 4;
    if (v18 >> 4 <= (v17 + 1))
    {
      v19 = v17 + 1;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v20 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v19;
    }

    v27 = a1;
    if (v20)
    {
      v21 = sub_29A10CB10(a1, v20);
    }

    else
    {
      v21 = 0;
    }

    v23 = v21;
    v24 = &v21[32 * v17];
    v26 = &v21[32 * v20];
    sub_29ADC3DD0(a1, v24, a2, a3, a4, a5, a6, a7);
    v25 = v24 + 32;
    sub_29ADC3B58(a1, &v23);
    v16 = a1[1];
    sub_29ADC3C04(&v23);
  }

  else
  {
    sub_29ADC3DD0(a1, a1[1], a2, a3, a4, a5, a6, a7);
    v16 = v15 + 32;
    a1[1] = v15 + 32;
  }

  a1[1] = v16;
  return v16 - 32;
}

void sub_29ADC3DD0(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6, int *a7, int *a8)
{
  v8 = *a3;
  if ((*a3 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  *a2 = v8;
  if ((v8 & 7) != 0)
  {
    v14 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(a2 + 8) = v9;
    *(a2 + 12) = v10;
    *(a2 + 16) = v11;
    *(a2 + 20) = v12;
    *(a2 + 24) = v13;
    atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    *(a2 + 8) = v9;
    *(a2 + 12) = v10;
    *(a2 + 16) = v11;
    *(a2 + 20) = v12;
    *(a2 + 24) = v13;
  }
}

void *sub_29ADC3E54(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29ADC3EDC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ADC3EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29ADC3EDC(uint64_t a1, void *a2, void *a3, void *a4)
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
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29ADC3F64(v7);
  return v4;
}

uint64_t sub_29ADC3F64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29ADC3F9C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29ADC3FD8(v3);

    operator delete(v4);
  }
}

uint64_t sub_29ADC3FD8(uint64_t a1)
{
  v27 = (a1 + 648);
  sub_29ADC431C(&v27);
  sub_29ADC43B8(a1 + 624, *(a1 + 632));
  v27 = (a1 + 600);
  sub_29ADC431C(&v27);
  v27 = (a1 + 576);
  sub_29ADC431C(&v27);
  v2 = *(a1 + 560);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 552);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 536);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 528);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 512);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 504);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 488);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 480);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 464);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 456);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 440);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 432);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 416);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 408);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 392);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 384);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 368);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 360);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 344);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 336);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 320);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 312);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 296);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 288);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ADC4430(a1 + 264, *(a1 + 272));
  sub_29ADC4504(a1 + 232, *(a1 + 240));
  sub_29ADC4504(a1 + 208, *(a1 + 216));
  sub_29ADC4504(a1 + 184, *(a1 + 192));
  sub_29ADC4504(a1 + 160, *(a1 + 168));
  sub_29ADC4504(a1 + 136, *(a1 + 144));
  sub_29ADC4504(a1 + 112, *(a1 + 120));
  sub_29ADC4504(a1 + 88, *(a1 + 96));
  sub_29ADC43B8(a1 + 64, *(a1 + 72));
  sub_29ADC43B8(a1 + 40, *(a1 + 48));
  sub_29ADC43B8(a1 + 16, *(a1 + 24));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29ADC431C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29ADC4370(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29ADC4370(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; i -= 24)
  {
    v3 = *(i - 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(i - 24);
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(result + 8) = a2;
  return result;
}

void sub_29ADC43B8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29ADC43B8(a1, *a2);
    sub_29ADC43B8(a1, *(a2 + 1));
    v5 = (a2 + 48);
    sub_29AB7E23C(&v5);
    v4 = *(a2 + 5);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_29ADC4430(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29ADC4430(a1, *a2);
    sub_29ADC4430(a1, a2[1]);
    sub_29ADC448C((a2 + 4));

    operator delete(a2);
  }
}

void sub_29ADC448C(uint64_t a1)
{
  v4 = (a1 + 48);
  sub_29A124AB0(&v4);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ADC4504(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29ADC4504(a1, *a2);
    sub_29ADC4504(a1, a2[1]);
    v4 = a2[6];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = a2[5];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_29ADC4588(void ***a1)
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
        v4 -= 80;
        sub_29AB6CB34(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29ADC4610(uint64_t a1)
{
  sub_29ADC464C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29ADC464C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29ADC4690((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29ADC4690(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_29ADC4700(void ***a1)
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
        v6 = *(v3 - 4);
        v3 -= 32;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

unint64_t sub_29ADC4754()
{
  v171 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x2A8uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "double", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "float", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "int", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "uint", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "BOOL", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "atomic_int", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "atomic_uint", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "flat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "noperspective", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "sample", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "centroid", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "patch", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "hd_barycentricCoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "hd_patchID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "hd_tessCoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "hd_vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "hd_vec3_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "hd_vec3_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "hd_ivec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "hd_ivec3_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "hd_ivec3_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "hd_dvec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "hd_dvec3_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 24, "hd_dvec3_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 25, "hd_mat3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 26, "hd_mat3_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 27, "hd_mat3_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 28, "hd_dmat3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 29, "hd_dmat3_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 30, "hd_dmat3_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 31, "hd_vec4_2_10_10_10_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 32, "hd_vec4_2_10_10_10_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 33, "hd_half2_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 34, "hd_half2_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 35, "hd_half4_get", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 36, "hd_half4_set", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 37, "PrimvarData", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 38, "inPrimvars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 39, "uvec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 40, "uvec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 41, "uvec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 42, "ivec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 43, "ivec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 44, "ivec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 45, "outPrimvars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 46, "vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 47, "vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 48, "vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 49, "dvec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 50, "dvec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 51, "dvec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 52, "mat3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 53, "mat4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 54, "dmat3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 55, "dmat4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 56, "packed_2_10_10_10", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 57, "packed_half2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 58, "packed_half4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 59, "ptexTextureSampler", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 60, "isamplerBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 61, "samplerBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 62, "gl_MaxPatchVertices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 63, "HD_NUM_PATCH_EVAL_VERTS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 64, "HD_NUM_PRIMITIVE_VERTS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 65, "quads", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 66, "isolines", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 67, "equal_spacing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 68, "fractional_even_spacing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 69, "fractional_odd_spacing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 70, "cw", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 71, "ccw", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 72, "points", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 73, "lines", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 74, "lines_adjacency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 75, "triangles", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 76, "triangles_adjacency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 77, "line_strip", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 78, "triangle_strip", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 79, "early_fragment_tests", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 80, "OsdPerPatchVertexBezier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 81, "interstageDrawingCoord", 0);
  v1 = *v0;
  v89 = v1;
  if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v2 = v0[1];
  v90 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[2];
  v91 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[3];
  v92 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v92 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[4];
  v93 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v93 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[5];
  v94 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[6];
  v95 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[7];
  v96 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[8];
  v97 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[9];
  v98 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[10];
  v99 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[11];
  v100 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[12];
  v101 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[13];
  v102 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[14];
  v103 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[15];
  v104 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[16];
  v105 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[17];
  v106 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[18];
  v107 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[19];
  v108 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[20];
  v109 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[21];
  v110 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[22];
  v111 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[23];
  v112 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[24];
  v113 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = v0[25];
  v114 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = v0[26];
  v115 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v115 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v0[27];
  v116 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v116 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = v0[28];
  v117 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v117 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = v0[29];
  v118 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v118 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = v0[30];
  v119 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v119 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = v0[31];
  v120 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v120 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = v0[32];
  v121 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v121 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = v0[33];
  v122 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v122 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = v0[34];
  v123 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v123 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = v0[35];
  v124 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v124 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = v0[36];
  v125 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v125 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = v0[37];
  v126 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v126 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = v0[38];
  v127 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v127 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = v0[39];
  v128 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v128 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = v0[40];
  v129 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v129 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = v0[41];
  v130 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v130 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = v0[42];
  v131 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v131 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = v0[43];
  v132 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v132 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = v0[44];
  v133 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v133 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = v0[45];
  v134 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v134 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = v0[46];
  v135 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v135 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = v0[47];
  v136 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v136 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = v0[48];
  v137 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v137 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = v0[49];
  v138 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v138 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = v0[50];
  v139 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v139 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = v0[51];
  v140 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v140 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = v0[52];
  v141 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v141 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = v0[53];
  v142 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v142 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = v0[54];
  v143 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v143 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = v0[55];
  v144 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v144 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = v0[56];
  v145 = v57;
  if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v145 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = v0[57];
  v146 = v58;
  if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v146 &= 0xFFFFFFFFFFFFFFF8;
  }

  v59 = v0[58];
  v147 = v59;
  if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v147 &= 0xFFFFFFFFFFFFFFF8;
  }

  v60 = v0[59];
  v148 = v60;
  if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v148 &= 0xFFFFFFFFFFFFFFF8;
  }

  v61 = v0[60];
  v149 = v61;
  if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v149 &= 0xFFFFFFFFFFFFFFF8;
  }

  v62 = v0[61];
  v150 = v62;
  if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v150 &= 0xFFFFFFFFFFFFFFF8;
  }

  v63 = v0[62];
  v151 = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v151 &= 0xFFFFFFFFFFFFFFF8;
  }

  v64 = v0[63];
  v152 = v64;
  if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v152 &= 0xFFFFFFFFFFFFFFF8;
  }

  v65 = v0[64];
  v153 = v65;
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v153 &= 0xFFFFFFFFFFFFFFF8;
  }

  v66 = v0[65];
  v154 = v66;
  if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v154 &= 0xFFFFFFFFFFFFFFF8;
  }

  v67 = v0[66];
  v155 = v67;
  if ((v67 & 7) != 0 && (atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v155 &= 0xFFFFFFFFFFFFFFF8;
  }

  v68 = v0[67];
  v156 = v68;
  if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v156 &= 0xFFFFFFFFFFFFFFF8;
  }

  v69 = v0[68];
  v157 = v69;
  if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v157 &= 0xFFFFFFFFFFFFFFF8;
  }

  v70 = v0[69];
  v158 = v70;
  if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v158 &= 0xFFFFFFFFFFFFFFF8;
  }

  v71 = v0[70];
  v159 = v71;
  if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v159 &= 0xFFFFFFFFFFFFFFF8;
  }

  v72 = v0[71];
  v160 = v72;
  if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v160 &= 0xFFFFFFFFFFFFFFF8;
  }

  v73 = v0[72];
  v161 = v73;
  if ((v73 & 7) != 0 && (atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v161 &= 0xFFFFFFFFFFFFFFF8;
  }

  v74 = v0[73];
  v162 = v74;
  if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v162 &= 0xFFFFFFFFFFFFFFF8;
  }

  v75 = v0[74];
  v163 = v75;
  if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v163 &= 0xFFFFFFFFFFFFFFF8;
  }

  v76 = v0[75];
  v164 = v76;
  if ((v76 & 7) != 0 && (atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v164 &= 0xFFFFFFFFFFFFFFF8;
  }

  v77 = v0[76];
  v165 = v77;
  if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v165 &= 0xFFFFFFFFFFFFFFF8;
  }

  v78 = v0[77];
  v166 = v78;
  if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v166 &= 0xFFFFFFFFFFFFFFF8;
  }

  v79 = v0[78];
  v167 = v79;
  if ((v79 & 7) != 0 && (atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v167 &= 0xFFFFFFFFFFFFFFF8;
  }

  v80 = v0[79];
  v168 = v80;
  if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v168 &= 0xFFFFFFFFFFFFFFF8;
  }

  v81 = v0[80];
  v169 = v81;
  if ((v81 & 7) != 0 && (atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v169 &= 0xFFFFFFFFFFFFFFF8;
  }

  v82 = v0 + 82;
  v83 = v0[81];
  v170 = v83;
  if ((v83 & 7) != 0 && (atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v170 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v82 = 0;
  v0[83] = 0;
  v0[84] = 0;
  sub_29A12EF7C(v82, &v89, &v171, 0x52uLL);
  for (i = 648; i != -8; i -= 8)
  {
    v85 = *(&v89 + i);
    if ((v85 & 7) != 0)
    {
      atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v86 = 0;
  atomic_compare_exchange_strong(&qword_2A174E9E0, &v86, v0);
  if (v86)
  {
    v87 = sub_29ADC67D4(v0);
    operator delete(v87);
    return atomic_load(&qword_2A174E9E0);
  }

  return v0;
}

void sub_29ADC5D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  v30 = 648;
  while (1)
  {
    v31 = *(v21 + v30);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v30 -= 8;
    if (v30 == -8)
    {
      if ((*v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v20[63];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v20[62];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v20[61];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v20[60];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v20[59];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v20[58];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v20[57];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v20[56];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v20[55];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v20[54];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v20[53];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v20[52];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v20[51];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v20[50];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v20[49];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v20[48];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v20[47];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v20[46];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v20[45];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v20[44];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v20[43];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v20[42];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v20[41];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v20[40];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v20[39];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v20[38];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v58 = v20[37];
      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v59 = v20[36];
      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 = v20[35];
      if ((v60 & 7) != 0)
      {
        atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v61 = v20[34];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v20[33];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v63 = v20[32];
      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v64 = v20[31];
      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v65 = v20[30];
      if ((v65 & 7) != 0)
      {
        atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v66 = v20[29];
      if ((v66 & 7) != 0)
      {
        atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v67 = v20[28];
      if ((v67 & 7) != 0)
      {
        atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v68 = v20[27];
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v69 = v20[26];
      if ((v69 & 7) != 0)
      {
        atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v70 = v20[25];
      if ((v70 & 7) != 0)
      {
        atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v71 = v20[24];
      if ((v71 & 7) != 0)
      {
        atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v72 = v20[23];
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v73 = v20[22];
      if ((v73 & 7) != 0)
      {
        atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v74 = v20[21];
      if ((v74 & 7) != 0)
      {
        atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v75 = v20[20];
      if ((v75 & 7) != 0)
      {
        atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v76 = v20[19];
      if ((v76 & 7) != 0)
      {
        atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v77 = v20[18];
      if ((v77 & 7) != 0)
      {
        atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v78 = v20[17];
      if ((v78 & 7) != 0)
      {
        atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v79 = v20[16];
      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v80 = v20[15];
      if ((v80 & 7) != 0)
      {
        atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v81 = v20[14];
      if ((v81 & 7) != 0)
      {
        atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v82 = v20[13];
      if ((v82 & 7) != 0)
      {
        atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v83 = v20[12];
      if ((v83 & 7) != 0)
      {
        atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v84 = v20[11];
      if ((v84 & 7) != 0)
      {
        atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v85 = v20[10];
      if ((v85 & 7) != 0)
      {
        atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v86 = v20[9];
      if ((v86 & 7) != 0)
      {
        atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v87 = v20[8];
      if ((v87 & 7) != 0)
      {
        atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v88 = v20[7];
      if ((v88 & 7) != 0)
      {
        atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v89 = v20[6];
      if ((v89 & 7) != 0)
      {
        atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v90 = v20[5];
      if ((v90 & 7) != 0)
      {
        atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v91 = v20[4];
      if ((v91 & 7) != 0)
      {
        atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v92 = v20[3];
      if ((v92 & 7) != 0)
      {
        atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v93 = v20[2];
      if ((v93 & 7) != 0)
      {
        atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v94 = v20[1];
      if ((v94 & 7) != 0)
      {
        atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29ADC67D4(uint64_t a1)
{
  v84 = (a1 + 656);
  sub_29A124AB0(&v84);
  v2 = *(a1 + 648);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 640);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 632);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 624);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 616);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 608);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 600);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 592);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 584);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 576);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 568);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 560);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 552);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 544);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 536);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 528);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 520);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 512);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 504);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 496);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 488);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 480);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 472);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 464);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 456);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 448);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 440);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 432);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 424);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 416);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 408);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 400);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 392);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 384);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 376);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 368);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 360);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 352);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(a1 + 344);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(a1 + 336);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(a1 + 328);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(a1 + 320);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(a1 + 312);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(a1 + 304);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a1 + 296);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(a1 + 288);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(a1 + 280);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(a1 + 272);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(a1 + 264);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(a1 + 256);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(a1 + 248);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(a1 + 240);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(a1 + 232);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(a1 + 224);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(a1 + 216);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(a1 + 208);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(a1 + 200);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(a1 + 192);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(a1 + 184);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(a1 + 176);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(a1 + 168);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(a1 + 160);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(a1 + 152);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(a1 + 144);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(a1 + 136);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(a1 + 128);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(a1 + 120);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(a1 + 112);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(a1 + 104);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(a1 + 96);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(a1 + 88);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(a1 + 80);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(a1 + 72);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(a1 + 64);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(a1 + 56);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(a1 + 48);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(a1 + 40);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(a1 + 32);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(a1 + 24);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(a1 + 16);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(a1 + 8);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *sub_29ADC6FC0(atomic_ullong *a1)
{
  result = sub_29ADC7008();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType::~HdShaderTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *sub_29ADC7008()
{
  v0 = operator new(0x128uLL);
  pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType::HdShaderTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29ADC704C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A10CB10(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[32 * v3];
  *(&v19 + 1) = &v10[32 * v9];
  sub_29AB6C230(a1, v18, a2, a3);
  *&v19 = v18 + 4;
  v11 = *(a1 + 8);
  v12 = (v18 + *a1 - v11);
  sub_29AB6C328(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AB6C484(&v17);
  return v16;
}

void sub_29ADC7154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6C484(va);
  _Unwind_Resume(a1);
}

void sub_29ADC7168(void *a1)
{
  if (a1)
  {
    sub_29ADC7168(*a1);
    sub_29ADC7168(a1[1]);
    sub_29ADC71BC((a1 + 4));

    operator delete(a1);
  }
}

void sub_29ADC71BC(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29ADC4588(&v3);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ADC7224(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29ADC464C(a1, *(a1 + 16));
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

const void **sub_29ADC7280(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4, void **a5)
{
  v10 = sub_29A12A708(a1, a2);
  v11 = v10;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v5 = v10;
      if (v10 >= v12)
      {
        v5 = v10 % v12;
      }
    }

    else
    {
      v5 = (v12 - 1) & v10;
    }

    v15 = *(*a1 + 8 * v5);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v11)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v17 >= v12)
            {
              v17 %= v12;
            }
          }

          else
          {
            v17 &= v12 - 1;
          }

          if (v17 != v5)
          {
            break;
          }
        }
      }
    }
  }

  sub_29ADC74EC(a1, v11, a4, a5, v29);
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v12 || (v19 * v12) < v18)
  {
    v20 = 1;
    if (v12 >= 3)
    {
      v20 = (v12 & (v12 - 1)) != 0;
    }

    v21 = v20 | (2 * v12);
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
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v5 = v11 % v12;
      }

      else
      {
        v5 = v11;
      }
    }

    else
    {
      v5 = (v12 - 1) & v11;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v5);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = *(a1 + 16);
    *(a1 + 16) = v26;
    *(v24 + 8 * v5) = a1 + 16;
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v27 >= v12)
        {
          v27 %= v12;
        }
      }

      else
      {
        v27 &= v12 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29ADC74D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADC75FC(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29ADC74EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void **a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x48uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  v11 = *a3;
  v13 = *a4;
  v14 = v11;
  result = sub_29ADC7580(v10 + 2, &v14, &v13);
  *(a5 + 16) = 1;
  return result;
}

void *sub_29ADC7580(void *__dst, __int128 **a2, void **a3)
{
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    __dst[2] = *(v5 + 2);
    *__dst = v6;
  }

  v7 = *a3;
  __dst[3] = **a3;
  *v7 = 0;
  v8 = *(v7 + 1);
  __dst[6] = v7[3];
  *(__dst + 2) = v8;
  v7[2] = 0;
  v7[3] = 0;
  v7[1] = 0;
  return __dst;
}

void sub_29ADC75FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ADC4690(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29ADC7658(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v16 = 0x333333333333333;
  }

  else
  {
    v16 = v8;
  }

  v27 = a1;
  if (v16)
  {
    v17 = sub_29A09AEA8(a1, v16);
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v25 = &v17[10 * v7];
  *(&v26 + 1) = &v17[10 * v16];
  sub_29ADC1F78(a1, v25, a2, a3, a4, a5, a6, a7);
  *&v26 = v25 + 10;
  v18 = *(a1 + 8);
  v19 = v25 + *a1 - v18;
  sub_29AB6CA10(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_29AB6CC70(&v24);
  return v23;
}

void sub_29ADC77B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADC77C4(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v16 = 0x333333333333333;
  }

  else
  {
    v16 = v8;
  }

  v27 = a1;
  if (v16)
  {
    v17 = sub_29A09AEA8(a1, v16);
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v25 = &v17[10 * v7];
  *(&v26 + 1) = &v17[10 * v16];
  sub_29ADC1F78(a1, v25, a2, a3, a4, a5, a6, a7);
  *&v26 = v25 + 10;
  v18 = *(a1 + 8);
  v19 = v25 + *a1 - v18;
  sub_29AB6CA10(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_29AB6CC70(&v24);
  return v23;
}

void sub_29ADC791C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

void *sub_29ADC7930(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29ADC3EDC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ADC7998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType *sub_29ADC79B8(atomic_ullong *a1)
{
  result = sub_29ADC7A00();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType::~HdStMaterialTagTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType *sub_29ADC7A00()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType::HdStMaterialTagTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ADC7A44@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  result = sub_29ADC7AA8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADC7AA8(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2092BA8;
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::HdStGLSLProgram((a1 + 3), a2, *a3);
  return a1;
}

void sub_29ADC7B28(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2092BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType *sub_29ADC7B78(atomic_ullong *a1)
{
  result = sub_29ADC7BC0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType::~HdStTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType *sub_29ADC7BC0()
{
  v0 = operator new(0xE8uLL);
  pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType::HdStTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType *sub_29ADC7C04(atomic_ullong *a1)
{
  result = sub_29ADC7C4C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType::~HdSt_ResourceBindingSuffixTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType *sub_29ADC7C4C()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType::HdSt_ResourceBindingSuffixTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ADC7C90(void *a1)
{
  if (a1)
  {
    sub_29ADC7C90(*a1);
    sub_29ADC7C90(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    v3 = a1[5];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = a1[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

char *sub_29ADC7D1C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 5;
      if (v19 >= a5)
      {
        sub_29ADC7ED0(a1, a2, a1[1], a2 + 32 * a5);
        v20 = &v7[4 * a5];
      }

      else
      {
        a1[1] = sub_29AB6C8C8(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29ADC7ED0(a1, v5, v10, &v5[32 * a5]);
        v20 = (v7 + v18);
      }

      sub_29ADC38F4(v25, v7, v20, v5);
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
    v25[4] = a1;
    if (v15)
    {
      v17 = sub_29A10CB10(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[32 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v25[3] = &v17[32 * v15];
    v22 = 32 * a5;
    v23 = &v21[32 * a5];
    do
    {
      sub_29AB6C95C(a1, v21, v7);
      v21 += 32;
      v7 += 4;
      v22 -= 32;
    }

    while (v22);
    v25[2] = v23;
    v5 = sub_29ADC7F60(a1, v25, v5);
    sub_29AB6C484(v25);
  }

  return v5;
}

uint64_t sub_29ADC7ED0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      v8[1] = v9[1];
      v9[1] = 0;
      v8[2] = v9[2];
      v9[2] = 0;
      v8[3] = v9[3];
      v9[3] = 0;
      v9 += 4;
      v8 += 4;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29ADC801C(&v11, a2, v7, v6);
}

uint64_t sub_29ADC7F60(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29AB6C328(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29AB6C328(a1, v7, a3, v9);
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

uint64_t sub_29ADC801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a3;
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = (a4 - 32);
      if (v5 != a4)
      {
        if ((*v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(a4 - 32) = *(v5 - 32);
        *(v5 - 32) = 0;
        v7 = *(a4 - 24);
        if ((v7 & 7) != 0)
        {
          atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(a4 - 24) = *(v5 - 24);
        *(v5 - 24) = 0;
        v8 = *(a4 - 16);
        if ((v8 & 7) != 0)
        {
          atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(a4 - 16) = *(v5 - 16);
        *(v5 - 16) = 0;
        v9 = *(a4 - 8);
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(a4 - 8) = *(v5 - 8);
        *(v5 - 8) = 0;
      }

      v5 -= 32;
      a4 -= 32;
    }

    while (v5 != a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey *pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey::HdSt_CullingShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey *this, int a2, int a3, int a4)
{
  *this = &unk_2A2092BF8;
  v8 = (this + 8);
  v9 = atomic_load(&qword_2A174EA28);
  if (!v9)
  {
    v9 = sub_29ADC8614();
  }

  v10 = *v9;
  *v8 = *v9;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v11 = atomic_load(&qword_2A174EA28);
  if (!v11)
  {
    v11 = sub_29ADC8614();
  }

  sub_29A166F2C(this + 2, (v11 + 8));
  v12 = atomic_load(&qword_2A174EA28);
  if (a4)
  {
    if (!v12)
    {
      v12 = sub_29ADC8614();
    }

    v13 = (v12 + 16);
  }

  else
  {
    if (!v12)
    {
      v12 = sub_29ADC8614();
    }

    v13 = (v12 + 24);
  }

  sub_29A166F2C(this + 3, v13);
  v14 = atomic_load(&qword_2A174EA28);
  if (a3)
  {
    if (!v14)
    {
      v14 = sub_29ADC8614();
    }

    v15 = (v14 + 32);
  }

  else
  {
    if (!v14)
    {
      v14 = sub_29ADC8614();
    }

    v15 = (v14 + 40);
  }

  sub_29A166F2C(this + 4, v15);
  v16 = atomic_load(&qword_2A174EA28);
  if (!v16)
  {
    v16 = sub_29ADC8614();
  }

  sub_29A166F2C(this + 5, (v16 + 48));
  v17 = atomic_load(&qword_2A174EA28);
  if (a2)
  {
    if (!v17)
    {
      v17 = sub_29ADC8614();
    }

    v18 = (v17 + 56);
  }

  else
  {
    if (!v17)
    {
      v17 = sub_29ADC8614();
    }

    v18 = (v17 + 64);
  }

  sub_29A166F2C(this + 6, v18);
  v19 = *(this + 7);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 7) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey::~HdSt_CullingShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey *this)
{
  *this = &unk_2A2092BF8;
  for (i = 56; i != 8; i -= 8)
  {
    v2 = *(this + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey::~HdSt_CullingShaderKey(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey *pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey::HdSt_CullingComputeShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey *this, int a2, int a3, int a4)
{
  *this = &unk_2A2092CB8;
  v8 = (this + 8);
  v9 = atomic_load(&qword_2A174EA28);
  if (!v9)
  {
    v9 = sub_29ADC8614();
  }

  v10 = *v9;
  *v8 = *v9;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v11 = atomic_load(&qword_2A174EA28);
  if (!v11)
  {
    v11 = sub_29ADC8614();
  }

  sub_29A166F2C(this + 2, (v11 + 8));
  v12 = atomic_load(&qword_2A174EA28);
  if (a4)
  {
    if (!v12)
    {
      v12 = sub_29ADC8614();
    }

    v13 = (v12 + 16);
  }

  else
  {
    if (!v12)
    {
      v12 = sub_29ADC8614();
    }

    v13 = (v12 + 24);
  }

  sub_29A166F2C(this + 3, v13);
  v14 = atomic_load(&qword_2A174EA28);
  if (a3)
  {
    if (!v14)
    {
      v14 = sub_29ADC8614();
    }

    v15 = (v14 + 32);
  }

  else
  {
    if (!v14)
    {
      v14 = sub_29ADC8614();
    }

    v15 = (v14 + 40);
  }

  sub_29A166F2C(this + 4, v15);
  v16 = atomic_load(&qword_2A174EA28);
  if (!v16)
  {
    v16 = sub_29ADC8614();
  }

  sub_29A166F2C(this + 5, (v16 + 48));
  v17 = atomic_load(&qword_2A174EA28);
  if (a2)
  {
    if (!v17)
    {
      v17 = sub_29ADC8614();
    }

    v18 = (v17 + 72);
  }

  else
  {
    if (!v17)
    {
      v17 = sub_29ADC8614();
    }

    v18 = (v17 + 80);
  }

  sub_29A166F2C(this + 6, v18);
  v19 = *(this + 7);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 7) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey::~HdSt_CullingComputeShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey *this)
{
  *this = &unk_2A2092CB8;
  for (i = 56; i != 8; i -= 8)
  {
    v2 = *(this + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey::~HdSt_CullingComputeShaderKey(this);

  operator delete(v1);
}

unint64_t sub_29ADC8614()
{
  v29 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "frustumCull.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "Instancing.Transform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "ViewFrustumCull.Counting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "ViewFrustumCull.NoCounting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "ViewFrustumCull.TinyCull", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "ViewFrustumCull.NoTinyCull", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "ViewFrustumCull.IsVisible", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "ViewFrustumCull.VertexInstancing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "ViewFrustumCull.Vertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "ViewFrustumCull.ComputeInstancing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "ViewFrustumCull.Compute", 0);
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
  atomic_compare_exchange_strong(&qword_2A174EA28, &v15, v0);
  if (v15)
  {
    v16 = sub_29A178A80(v0);
    operator delete(v16);
    return atomic_load(&qword_2A174EA28);
  }

  return v0;
}

void sub_29ADC89A8(_Unwind_Exception *a1)
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

void sub_29ADC8B50()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_BROKEN_SHADER_VISUAL_FEEDBACK))
  {
    sub_29B2C8AE8();
  }
}

pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch *pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::HdSt_DrawBatch(pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch *this, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2, char a3)
{
  *this = &unk_2A2092DA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = a3;
  sub_29ADCA738(this + 40);
  *(this + 20) = 0;
  return this;
}

void sub_29ADC8BDC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_Init(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_29A0A71C8(a1 + 8, &v3);
  *(a1 + 160) = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::~HdSt_DrawBatch(pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch *this)
{
  *this = &unk_2A2092DA8;
  *(this + 5) = &unk_2A2092E00;
  v2 = *(this + 19);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v7 = (this + 104);
  sub_29A0176E4(&v7);
  v4 = *(this + 11);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1602D4(this + 64, *(this + 9));
  v5 = *(this + 7);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Append(pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch *this, const pxrInternal__aapl__pxrReserved__::HdStDrawItem **a2)
{
  v11 = a2;
  v4 = *(this + 1);
  v5 = (this + 8);
  if (v4 == *(this + 2))
  {
    v9[0] = "hdSt/drawBatch.cpp";
    v9[1] = "Append";
    v9[2] = 152;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Append(HdStDrawItemInstance *)";
    v10 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "!_drawItemInstances.empty()", 0);
    if (!result)
    {
      return result;
    }

    v4 = *v5;
  }

  v6 = a2[1];
  v7 = *(*v4 + 8);
  if (!v7)
  {
    sub_29B2C8B1C(v9);
  }

  result = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_IsAggregated(this, v6, v7);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetBatchIndex(a2, (*(this + 2) - *(this + 1)) >> 3);
    pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetBatch(a2, this);
    sub_29A0A71C8(v5, &v11);
    return 1;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_IsAggregated(pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch *this, const pxrInternal__aapl__pxrReserved__::HdStDrawItem *a2, const pxrInternal__aapl__pxrReserved__::HdStDrawItem *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_CanAggregateMaterials(a2, a3);
  if (!result)
  {
    return result;
  }

  result = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_CanAggregateTextures(this, a2, a3);
  if (!result)
  {
    return result;
  }

  if (*(a2 + 5) != *(a3 + 5))
  {
    return 0;
  }

  v7 = sub_29ADC9478(a2);
  if (v7 != sub_29ADC9478(a3))
  {
    return 0;
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 4));
  v9 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 4));
  if (*v8)
  {
    if (!sub_29ADC935C(*v8, v9))
    {
      return 0;
    }
  }

  else if (*v9)
  {
    return 0;
  }

  v10 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 17));
  v11 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 17));
  if (*v10)
  {
    if (!sub_29ADC935C(*v10, v11))
    {
      return 0;
    }
  }

  else if (*v11)
  {
    return 0;
  }

  v12 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 13));
  v13 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 13));
  if (*v12)
  {
    if (!sub_29ADC935C(*v12, v13))
    {
      return 0;
    }
  }

  else if (*v13)
  {
    return 0;
  }

  v14 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 18));
  v15 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 18));
  if (*v14)
  {
    if (!sub_29ADC935C(*v14, v15))
    {
      return 0;
    }
  }

  else if (*v15)
  {
    return 0;
  }

  v16 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 14));
  v17 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 14));
  if (*v16)
  {
    if (!sub_29ADC935C(*v16, v17))
    {
      return 0;
    }
  }

  else if (*v17)
  {
    return 0;
  }

  v18 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 16));
  v19 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 16));
  if (*v18)
  {
    if (!sub_29ADC935C(*v18, v19))
    {
      return 0;
    }
  }

  else if (*v19)
  {
    return 0;
  }

  v20 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 12));
  v21 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 12));
  if (*v20)
  {
    if (!sub_29ADC935C(*v20, v21))
    {
      return 0;
    }
  }

  else if (*v21)
  {
    return 0;
  }

  v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 3), *(a2 + 15));
  v23 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a3 + 3), *(a3 + 15));
  if (!*v22)
  {
    if (!*v23)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!sub_29ADC935C(*v22, v23))
  {
    return 0;
  }

LABEL_39:
  v24 = sub_29ADC9478(a2);
  if (v24 < 1)
  {
    return 1;
  }

  v25 = v24;
  for (i = 0; i != v25; ++i)
  {
    v27 = sub_29ADC94F8(a2, i);
    v28 = sub_29ADC94F8(a3, i);
    if (*v27)
    {
      if (!sub_29ADC935C(*v27, v28))
      {
        return 0;
      }
    }

    else if (*v28)
    {
      return 0;
    }

    result = 1;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_CanAggregateMaterials(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3 != v5)
  {
    v6 = (*(*v3 + 72))(v3);
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v5 + 72))(v5);
    v11 = *v9;
    v10 = v9[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8 == v11 || (v8 ? (v12 = v11 == 0) : (v12 = 1), !v12 && (v13 = (*(*v8 + 152))(v8), v13 == (*(*v11 + 152))(v11))))
    {
      v16 = (*(*v3 + 16))(v3);
      v14 = v16 == (*(*v5 + 16))(v5);
      if (!v10)
      {
LABEL_19:
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        if (!v4)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    sub_29A014BEC(v10);
    goto LABEL_19;
  }

  v14 = 1;
  if (v4)
  {
LABEL_22:
    sub_29A014BEC(v4);
  }

LABEL_23:
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return v14;
}

void sub_29ADC92F8(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_29A014BEC(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  sub_29A014BEC(v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_29A014BEC(v1);
  goto LABEL_5;
}

BOOL sub_29ADC935C(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = (*(*a1 + 152))(a1);
  return v3 == (*(**a2 + 152))();
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_CanAggregateTextures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  v5 = (*(**(a2 + 56) + 24))(*(a2 + 56));
  return v5 == (*(**(a3 + 56) + 24))(*(a3 + 56));
}

uint64_t sub_29ADC9478(uint64_t a1)
{
  result = *(*(a1 + 24) + 336);
  if (result == -1)
  {
    v3[0] = "hdSt/drawItem.h";
    v3[1] = "GetInstancePrimvarNumLevels";
    v3[2] = 42;
    v3[3] = "int pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetInstancePrimvarNumLevels() const";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "_GetSharedData()->instancerLevels != -1", 0);
    return *(*(a1 + 24) + 336);
  }

  return result;
}

void *sub_29ADC94F8(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = sub_29ADCA7A8(a1 + 8, a2);

  return pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v2, v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Rebuild(pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  *(this + 1) = 0;
  v5 = (this + 16);
  v4 = *(this + 2);
  *(this + 2) = 0;
  v6 = (v4 - v2) >> 3;
  *(this + 3) = 0;
  sub_29A08AF9C(this + 8, v6);
  v7 = *v2;
  if (!*((*v2)[1] + 5) && (v17 = "hdSt/drawBatch.cpp", v18 = "Rebuild", v19 = 273, v20 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Rebuild()", v21 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "batchItem->GetDrawItem()->GetGeometricShader()", 0) & 1) == 0) || ((*(*this + 64))(this, v7), *v3 == *v5) && (v17 = "hdSt/drawBatch.cpp", v18 = "Rebuild", v19 = 277, v20 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Rebuild()", v21 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "!_drawItemInstances.empty()", 0) & 1) == 0))
  {
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = v2 + 1;
    do
    {
      v10 = *v9;
      if (!*((*v9)[1] + 5))
      {
        v17 = "hdSt/drawBatch.cpp";
        v18 = "Rebuild";
        v19 = 285;
        v20 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Rebuild()";
        v21 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "item->GetDrawItem()->GetGeometricShader()", 0) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if ((pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Append(this, v10) & 1) == 0)
      {
        if (sub_29ADC9798(1))
        {
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("   Rebuild failed for batch %p\n", v14, v15, this);
        }

        goto LABEL_16;
      }

      ++v9;
    }

    while (--v8);
  }

  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("   Rebuild success for batch %p\n", v11, v12, this);
  }

  v13 = 1;
LABEL_17:
  operator delete(v2);
  return v13;
}

BOOL sub_29ADC9798(int a1)
{
  v2 = sub_29ADCBDE8();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29ADCBDE8();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296B10[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStRenderPassState **a2, uint64_t a3)
{
  sub_29A0ECEEC(&v58, "hdSt", "HdSt_DrawBatch::_DrawingProgram &pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)");
  v5 = *(**(a1 + 8) + 8);
  ShaderHash = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetShaderHash(*a2);
  v7 = (*(**(v5 + 40) + 16))(*(v5 + 40));
  v9 = *(v5 + 56);
  v8 = *(v5 + 64);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*a2 + 869) & 1) == 0 && (*(v5 + 72) & 1) == 0)
  {
    sub_29ADC9F98(&__p);
    v9 = __p;
    v10 = v61;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    v8 = v10;
  }

  v52 = v5;
  if (v9)
  {
    v11 = (*(*v9 + 16))(v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 160);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetShaders(*a2, &v56);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_29ADC3E54(&v53, v56, v57, (v57 - v56) >> 4);
  if ((a1 + 104) != &v53)
  {
    sub_29ADCAC24(a1 + 104, v53, v54, (v54 - v53) >> 4);
  }

  v13 = bswap64(0x9E3779B97F4A7C55 * (v7 + ((v7 + ShaderHash + (v7 + ShaderHash) * (v7 + ShaderHash)) >> 1)));
  v14 = v11 + v13 + (v11 + v13) * (v11 + v13);
  __p = &v53;
  sub_29A0176E4(&__p);
  v15 = *(v52 + 40);
  v16 = *(v52 + 48);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 136);
  v18 = v11 + (v14 >> 1);
  *(a1 + 128) = v15;
  *(a1 + 136) = v16;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v19 = bswap64(0x9E3779B97F4A7C55 * v18);
  v21 = *(a1 + 48);
  v20 = *(a1 + 56);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v20);
  }

  if (!v21 || v12 != v19)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 152);
    *(a1 + 144) = v9;
    *(a1 + 152) = v8;
    v23 = v52;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (sub_29ADC9798(15) || sub_29ADC9798(14))
    {
      if ((atomic_load_explicit(&qword_2A174EA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EA50))
      {
        sub_29A008E78(&__p, "HDST_DEBUG_SHADER_PROGRAM_FOR_PRIM");
        sub_29A008E78(&v65, "");
        pxrInternal__aapl__pxrReserved__::TfGetenv(&__p, &v65, &qword_2A174EA38);
        if (v67 < 0)
        {
          operator delete(v65);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(__p);
        }

        __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A174EA38, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174EA50);
        v23 = v52;
      }

      v24 = qword_2A174EA40;
      if (byte_2A174EA4F >= 0)
      {
        v24 = byte_2A174EA4F;
      }

      if (v24)
      {
        v26 = *(a1 + 8);
        v25 = *(a1 + 16);
        if (v26 != v25)
        {
          v49 = v19;
          v50 = v8;
          while (1)
          {
            v27 = *(*v26 + 8);
            if (v27 || (__p = "hdSt/drawBatch.cpp", v61 = "_LogShaderCacheLookupForDrawBatch", v62 = 76, v63 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_LogShaderCacheLookupForDrawBatch(const std::vector<const HdStDrawItemInstance *> &)", v64 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "drawItem", 0) & 1) != 0))
            {
              String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((*(v27 + 24) + 344));
              v29 = *(String + 23);
              if ((v29 & 0x80u) == 0)
              {
                v30 = String;
              }

              else
              {
                v30 = *String;
              }

              if ((v29 & 0x80u) != 0)
              {
                v29 = String[1];
              }

              if (byte_2A174EA4F >= 0)
              {
                v31 = &qword_2A174EA38;
              }

              else
              {
                v31 = qword_2A174EA38;
              }

              if (byte_2A174EA4F >= 0)
              {
                v32 = byte_2A174EA4F;
              }

              else
              {
                v32 = qword_2A174EA40;
              }

              if (!v32)
              {
LABEL_64:
                v19 = v49;
                v8 = v50;
                v23 = v52;
                break;
              }

              if (v29 >= v32)
              {
                v33 = &v30[v29];
                v34 = *v31;
                v35 = v30;
                do
                {
                  v36 = v29 - v32;
                  if (v36 == -1)
                  {
                    break;
                  }

                  v37 = memchr(v35, v34, v36 + 1);
                  if (!v37)
                  {
                    break;
                  }

                  v38 = v37;
                  if (!memcmp(v37, v31, v32))
                  {
                    if (v38 == v33 || v38 - v30 == -1)
                    {
                      break;
                    }

                    goto LABEL_64;
                  }

                  v35 = v38 + 1;
                  v29 = v33 - (v38 + 1);
                }

                while (v29 >= v32);
              }
            }

            v26 += 8;
            if (v26 == v25)
            {
              goto LABEL_64;
            }
          }
        }
      }
    }

    if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(a1 + 40, v23, a3))
    {
      goto LABEL_83;
    }

    __p = "hdSt/drawBatch.cpp";
    v61 = "_GetDrawingProgram";
    v62 = 391;
    v63 = "HdSt_DrawBatch::_DrawingProgram &pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)";
    v64 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*(v23 + 24) + 344));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Failed to compile shader for prim %s.", Text);
    if ((atomic_load_explicit(&qword_2A174EA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EA60))
    {
      v48 = atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_BROKEN_SHADER_VISUAL_FEEDBACK);
      if (!v48)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A174EA58 = *v48;
      __cxa_guard_release(&qword_2A174EA60);
    }

    if (byte_2A174EA58 == 1)
    {
      if ((atomic_load_explicit(&qword_2A174EA78, memory_order_acquire) & 1) == 0)
      {
        sub_29B2C8B68();
      }

      if (atomic_load_explicit(&qword_2A174EA68, memory_order_acquire) != -1)
      {
        __p = &v68;
        p_p = &__p;
        std::__call_once(&qword_2A174EA68, &p_p, sub_29ADCAD64);
      }

      v40 = qword_2A174EA90;
      v41 = *algn_2A174EA98;
      v65 = qword_2A174EA90;
      v66 = *algn_2A174EA98;
      if (*algn_2A174EA98)
      {
        atomic_fetch_add_explicit((*algn_2A174EA98 + 8), 1uLL, memory_order_relaxed);
LABEL_75:
        v42 = 0;
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_77:
        v43 = *(a1 + 152);
        *(a1 + 144) = v40;
        *(a1 + 152) = v41;
        if (v43)
        {
          sub_29A014BEC(v43);
        }

        if (!pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(a1 + 40, v52, a3))
        {
          __p = "hdSt/drawBatch.cpp";
          v61 = "_GetDrawingProgram";
          v62 = 416;
          v63 = "HdSt_DrawBatch::_DrawingProgram &pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)";
          v64 = 0;
          v47 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Failed to compile with the invalid/fallback material network shader.", v44, v45);
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "res", v47);
        }

        if ((v42 & 1) == 0)
        {
          sub_29A014BEC(v41);
        }

LABEL_83:
        *(a1 + 160) = v19;
        goto LABEL_84;
      }
    }

    else
    {
      sub_29ADC9F98(&v65);
      v40 = v65;
      v41 = v66;
      if (v66)
      {
        goto LABEL_75;
      }
    }

    v42 = 1;
    goto LABEL_77;
  }

LABEL_84:
  __p = &v56;
  sub_29A0176E4(&__p);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v58)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v59, v58);
  }

  return a1 + 40;
}

void sub_29ADC9EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_guard_abort(&qword_2A174EA60);
  *(v27 - 128) = &a17;
  sub_29A0176E4((v27 - 128));
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A0E9CEC(&a20);
  _Unwind_Resume(a1);
}

void sub_29ADC9F98(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174EA70, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C8BB4();
  }

  if (atomic_load_explicit(&qword_2A174EA30, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&qword_2A174EA30, &v4, sub_29ADCA82C);
  }

  v2 = *algn_2A174EA88;
  *a1 = qword_2A174EA80;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_29ADCA03C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  sub_29A0ECEEC(&v48, "hdSt", "BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(const HdStDrawItem *, const HdStResourceRegistrySharedPtr &, BOOL)");
  if (v10[11])
  {
    memset(v47, 0, sizeof(v47));
    v46 = 1;
    (**v10)(v10, v47, &v46);
    sub_29ADCA4B8(v10, v45);
    v39 = v45[0];
    v40 = v45[1];
    while (v39 != v40)
    {
      v13 = sub_29ADB40A4(&v39, v11, v12);
      (*(**v13 + 96))(*v13, v47);
      sub_29ADB4124(&v39);
    }

    v14 = operator new(0x2A0uLL);
    sub_29ADCBF48(v14);
    v44 = v14;
    v15 = v46;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*v7);
    v17 = (*(*Hgi + 200))(Hgi);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveBindings((v10 + 3), v9, v45, v14, v10 + 6, v15, v47, v17);
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::HdSt_CodeGen(&v39, v10 + 11, v45, v9 + 32, &v44);
    v18 = pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::ComputeHash(&v39);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGLSLProgram(*v7, v18, v34);
    if (v38 == 1)
    {
      if ((sub_29ADC9798(15) & v5) == 1)
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*(v9 + 24) + 344));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(MISS) First program instance for batch with head draw item %s (hash = %zu)\n", v20, v21, Text, v18);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::Compile(&v39, *v7, &v32);
      if (v32 && (*(*v10 + 8))(v10, &v32))
      {
        sub_29ADCA55C(v34, &v32);
      }

      if (v33)
      {
        sub_29A014BEC(v33);
      }
    }

    else if ((sub_29ADC9798(14) & v5) == 1)
    {
      v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*(v9 + 24) + 344));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(HIT) Found program instance with hash = %zu for batch with head draw item %s\n", v24, v25, v18, v23);
    }

    v26 = v34[1];
    v27 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v10[2];
    v10[1] = v26;
    v10[2] = v27;
    if (v28)
    {
      sub_29A014BEC(v28);
      v26 = v10[1];
    }

    v22 = v26 != 0;
    if (v37 == 1)
    {
      std::mutex::unlock(v36);
    }

    if (v35)
    {
      sub_29A014BEC(v35);
    }

    sub_29ADCAE34(&v39);
    v29 = v44;
    v44 = 0;
    if (v29)
    {
      v30 = sub_29ADC3FD8(v29);
      operator delete(v30);
    }

    v39 = v45;
    sub_29A0176E4(&v39);
    v39 = v47;
    sub_29ADCBE70(&v39);
  }

  else
  {
    v39 = "hdSt/drawBatch.cpp";
    v40 = "CompileShader";
    v41 = 441;
    v42 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(const HdStDrawItem *, const HdStResourceRegistrySharedPtr &, BOOL)";
    v43 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "Can not compile a shader without a geometric shader");
    v22 = 0;
  }

  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v49, v48);
  }

  return v22;
}

void sub_29ADCA3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29ADCA62C(&a14);
  sub_29ADCAE34(&a21);
  v23 = *(v21 - 144);
  *(v21 - 144) = 0;
  if (v23)
  {
    v24 = sub_29ADC3FD8(v23);
    operator delete(v24);
  }

  a21 = (v21 - 136);
  sub_29A0176E4(&a21);
  a21 = (v21 - 104);
  sub_29ADCBE70(&a21);
  sub_29A0E9CEC(v21 - 80);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdStGLSLProgram *pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid(pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram *this)
{
  result = *(this + 1);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Validate(result);
  }

  return result;
}

void sub_29ADCA4B8(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29ADC3E54(a2, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 4);
  if (*(a1 + 104))
  {
    v4 = *(a1 + 112);
    v5 = *(a1 + 104);
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A01729C(a2, &v5);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29ADCA538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29ADCA55C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29ADCC074(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29ADCA614(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADCA62C(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    std::mutex::unlock(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::_GetCustomBindings(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3 || (sub_29B2C8C18(v4) & 1) != 0)
  {
    *a3 = 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::_Link(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStGLSLProgram **a2)
{
  v2 = *a2;
  if (*a2)
  {
    return pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link(v2);
  }

  v6[0] = "hdSt/drawBatch.cpp";
  v6[1] = "_Link";
  v6[2] = 538;
  v6[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::_Link(const HdStGLSLProgramSharedPtr &)";
  v7 = 0;
  v5 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "glslProgram", 0);
  result = 0;
  if (v5)
  {
    v2 = *a2;
    return pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link(v2);
  }

  return result;
}

uint64_t sub_29ADCA738(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2092E00;
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::HdSt_ResourceBinder((a1 + 24));
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void sub_29ADCA790(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADCA7A8(uint64_t a1, int a2)
{
  v3 = *(a1 + 2);
  if (v3 == 0xFFFF)
  {
    v6[0] = "hd/drawingCoord.h";
    v6[1] = "GetInstancePrimvarIndex";
    v6[2] = 105;
    v6[3] = "int pxrInternal__aapl__pxrReserved__::HdDrawingCoord::GetInstancePrimvarIndex(int) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_instancePrimvar != Unassigned", 0);
    LOWORD(v3) = *(a1 + 2);
  }

  return (a2 + v3);
}

void sub_29ADCA82C()
{
  pxrInternal__aapl__pxrReserved__::HdStPackageFallbackMaterialNetworkShader(&v1);
  sub_29ADCA944(&v1, &v2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v0 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::HdStGLSLFXShader(v0);
  sub_29ADCA8FC(&qword_2A174EA80, v0);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29ADCA8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v12 = v11;
  operator delete(v12);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(a1);
}

void sub_29ADCA8FC(void *a1, uint64_t a2)
{
  sub_29ADCAAF8(&v5, a2);
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

void *sub_29ADCA944@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x150uLL);
  result = sub_29ADCA9A0(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ADCA9A0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2092E40;
  sub_29ADCAA80(&v4, (a1 + 3), a2);
  return a1;
}

void sub_29ADCAA30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2092E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ADCAA80(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v5)
  {
    v5 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  return pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(a2, EmptyString, v5 + 112);
}

uint64_t *sub_29ADCAAF8(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2092E90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29ADCAB68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::~HdStGLSLFXShader(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADCAB88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ADCABB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::~HdStGLSLFXShader(v1);

    operator delete(v2);
  }
}

uint64_t sub_29ADCABE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2092EE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ADCAC24(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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
    v12 = sub_29ADC3EDC(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29A4274B8(&v18, a2, (a2 + v13), v8);
    v12 = sub_29ADC3EDC(a1, (a2 + v13), a3, *(a1 + 8));
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

void sub_29ADCAD64()
{
  pxrInternal__aapl__pxrReserved__::HdStPackageInvalidMaterialNetworkShader(&v1);
  sub_29ADCA944(&v1, &v2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v0 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::HdStGLSLFXShader::HdStGLSLFXShader(v0);
  sub_29ADCA8FC(&qword_2A174EA90, v0);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29ADCADE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v12 = v11;
  operator delete(v12);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ADCAE34(uint64_t a1)
{
  v2 = (a1 + 4096);
  if (*(a1 + 5359) < 0)
  {
    operator delete(*(a1 + 5336));
  }

  if (v2[1239] < 0)
  {
    operator delete(*(a1 + 5312));
  }

  if (v2[1215] < 0)
  {
    operator delete(*(a1 + 5288));
  }

  if (v2[1191] < 0)
  {
    operator delete(*(a1 + 5264));
  }

  if (v2[1167] < 0)
  {
    operator delete(*(a1 + 5240));
  }

  if (v2[1143] < 0)
  {
    operator delete(*(a1 + 5216));
  }

  if (v2[1119] < 0)
  {
    operator delete(*(a1 + 5192));
  }

  if (v2[1095] < 0)
  {
    operator delete(*(a1 + 5168));
  }

  v11 = (a1 + 5144);
  sub_29ADC4700(&v11);
  v11 = (a1 + 5120);
  sub_29ADC4588(&v11);
  v11 = (a1 + 5096);
  sub_29ADC4588(&v11);
  v11 = (a1 + 5072);
  sub_29ADC4588(&v11);
  sub_29ADC4610(a1 + 5032);
  v11 = (a1 + 5008);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4984);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4960);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4936);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4912);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4888);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4864);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4840);
  sub_29ADC4588(&v11);
  v11 = (a1 + 4816);
  sub_29ADC4588(&v11);
  v3 = MEMORY[0x29EDC9528];
  v4 = *MEMORY[0x29EDC9528];
  *(a1 + 4536) = *MEMORY[0x29EDC9528];
  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  *(a1 + 4536 + *(v4 - 24)) = v6;
  v7 = v5;
  *(a1 + 4552) = v5;
  *(a1 + 4560) = MEMORY[0x29EDC9570] + 16;
  if (v2[551] < 0)
  {
    operator delete(*(a1 + 4624));
  }

  *(a1 + 4560) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 4568));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 4664);
  *(a1 + 4256) = v4;
  *(a1 + 4256 + *(v4 - 24)) = v6;
  *(a1 + 4272) = v7;
  *(a1 + 4280) = MEMORY[0x29EDC9570] + 16;
  if (v2[271] < 0)
  {
    operator delete(*(a1 + 4344));
  }

  *(a1 + 4280) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 4288));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 4384);
  *(a1 + 3976) = v4;
  *(a1 + 3976 + *(v4 - 24)) = v6;
  *(a1 + 3992) = v7;
  *(a1 + 4000) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 4087) < 0)
  {
    operator delete(*(a1 + 4064));
  }

  *(a1 + 4000) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 4008));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 4104);
  *(a1 + 3696) = v4;
  *(a1 + 3696 + *(v4 - 24)) = v6;
  *(a1 + 3712) = v7;
  *(a1 + 3720) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 3807) < 0)
  {
    operator delete(*(a1 + 3784));
  }

  *(a1 + 3720) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 3728));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 3824);
  *(a1 + 3416) = v4;
  *(a1 + 3416 + *(v4 - 24)) = v6;
  *(a1 + 3432) = v7;
  *(a1 + 3440) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 3527) < 0)
  {
    operator delete(*(a1 + 3504));
  }

  *(a1 + 3440) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 3448));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 3544);
  *(a1 + 3136) = v4;
  *(a1 + 3136 + *(v4 - 24)) = v6;
  *(a1 + 3152) = v7;
  *(a1 + 3160) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 3247) < 0)
  {
    operator delete(*(a1 + 3224));
  }

  *(a1 + 3160) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 3168));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 3264);
  *(a1 + 2856) = v4;
  *(a1 + 2856 + *(v4 - 24)) = v6;
  *(a1 + 2872) = v7;
  *(a1 + 2880) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 2967) < 0)
  {
    operator delete(*(a1 + 2944));
  }

  *(a1 + 2880) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 2888));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 2984);
  *(a1 + 2576) = v4;
  *(a1 + 2576 + *(v4 - 24)) = v6;
  *(a1 + 2592) = v7;
  *(a1 + 2600) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 2687) < 0)
  {
    operator delete(*(a1 + 2664));
  }

  *(a1 + 2600) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 2608));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 2704);
  *(a1 + 2296) = v4;
  *(a1 + 2296 + *(v4 - 24)) = v6;
  *(a1 + 2312) = v7;
  *(a1 + 2320) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 2407) < 0)
  {
    operator delete(*(a1 + 2384));
  }

  *(a1 + 2320) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 2328));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 2424);
  *(a1 + 2016) = v4;
  *(a1 + 2016 + *(v4 - 24)) = v6;
  *(a1 + 2032) = v7;
  *(a1 + 2040) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 2127) < 0)
  {
    operator delete(*(a1 + 2104));
  }

  *(a1 + 2040) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 2048));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 2144);
  *(a1 + 1736) = v4;
  *(a1 + 1736 + *(v4 - 24)) = v6;
  *(a1 + 1752) = v7;
  *(a1 + 1760) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1847) < 0)
  {
    operator delete(*(a1 + 1824));
  }

  *(a1 + 1760) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1768));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 1864);
  *(a1 + 1456) = v4;
  *(a1 + 1456 + *(v4 - 24)) = v6;
  *(a1 + 1472) = v7;
  *(a1 + 1480) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1567) < 0)
  {
    operator delete(*(a1 + 1544));
  }

  *(a1 + 1480) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1488));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 1584);
  *(a1 + 1176) = v4;
  *(a1 + 1176 + *(v4 - 24)) = v6;
  *(a1 + 1192) = v7;
  *(a1 + 1200) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1287) < 0)
  {
    operator delete(*(a1 + 1264));
  }

  *(a1 + 1200) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1208));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 1304);
  *(a1 + 896) = v4;
  *(a1 + 896 + *(v4 - 24)) = v6;
  *(a1 + 912) = v7;
  *(a1 + 920) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  *(a1 + 920) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 928));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 1024);
  *(a1 + 616) = v4;
  *(a1 + 616 + *(v4 - 24)) = v6;
  *(a1 + 632) = v7;
  *(a1 + 640) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  *(a1 + 640) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 648));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 744);
  *(a1 + 336) = v4;
  *(a1 + 336 + *(v4 - 24)) = v6;
  *(a1 + 352) = v7;
  *(a1 + 360) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  *(a1 + 360) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 368));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 464);
  *(a1 + 56) = v4;
  *(a1 + 56 + *(v4 - 24)) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  *(a1 + 80) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 88));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 184);
  v8 = *(a1 + 48);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = (a1 + 24);
  sub_29A0176E4(&v11);
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29ADC3F9C(a1, 0);
  return a1;
}

uint64_t sub_29ADCBDE8()
{
  if ((atomic_load_explicit(&qword_2A14F9C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9C70))
  {
    v1 = operator new(0x48uLL);
    v1[8] = 0;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *v1 = 0u;
    *(v1 + 1) = 0u;
    qword_2A14F9C68 = v1;
    __cxa_guard_release(&qword_2A14F9C70);
  }

  return qword_2A14F9C68;
}

void sub_29ADCBE70(void ***a1)
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
        v4 -= 9;
        sub_29ADCBEF8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29ADCBEF8(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a2[3];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a2[1];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

double sub_29ADCBF48(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0u;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0u;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0u;
  *(a1 + 88) = a1 + 96;
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 144) = 0u;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0u;
  *(a1 + 160) = a1 + 168;
  *(a1 + 192) = 0u;
  *(a1 + 184) = a1 + 192;
  *(a1 + 216) = 0u;
  *(a1 + 208) = a1 + 216;
  *(a1 + 240) = 0u;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = -1;
  *(a1 + 312) = 0u;
  *(a1 + 328) = -1;
  *(a1 + 336) = 0u;
  *(a1 + 352) = -1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = -1;
  *(a1 + 384) = 0u;
  *(a1 + 400) = -1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = -1;
  *(a1 + 432) = 0u;
  *(a1 + 448) = -1;
  *(a1 + 456) = 0u;
  *(a1 + 472) = -1;
  *(a1 + 480) = 0u;
  *(a1 + 496) = -1;
  *(a1 + 504) = 0u;
  *(a1 + 520) = -1;
  *(a1 + 528) = 0u;
  *(a1 + 544) = -1;
  *(a1 + 552) = 0u;
  *(a1 + 568) = -1;
  *(a1 + 632) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 624) = a1 + 632;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  return result;
}

uint64_t sub_29ADCC074(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29ADCC104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADCC11C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = 0x9E3779B97F4A7C15 * *a2;
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29ADCC1F0(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[5];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29ADCC1F0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29ADCC28C(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29ADCC28C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29ADCC28C(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29ADCC370(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29ADCC370@<X0>(int a1@<W0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x30);
  *(result + 5) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[5];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29ADCC444(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

uint64_t sub_29ADCC444(int a1, tbb::internal *this)
{
  if (*(this + 40))
  {
    v3 = *(this + 3);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

void sub_29ADCC48C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0x9E3779B97F4A7C15 * *a2;
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29ADCC1F0(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 40) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[5];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29ADCC444(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[5];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = tbb::internal::allocate_via_handler_v3(0x30);
      *(a3 + 8) = *a2;
      v14 = (a3 + 8);
      *(a3 + 16) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a3 + 32) = *(a2 + 24);
      *(a3 + 40) = v12;
      *a3 = 0;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::GetDrawItems(const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a2)
  {
    sub_29ADCD004(v6, a1);
  }

  v4[0] = "hdSt/drawItemsCache.cpp";
  v4[1] = "GetDrawItems";
  v4[2] = 67;
  v4[3] = "HdDrawItemConstPtrVectorSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::GetDrawItems(const HdRprimCollection &, const TfTokenVector &, HdRenderIndex *, const HdDrawItemConstPtrVectorSharedPtr &)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Received a null render index\n");
  *a3 = 0;
  a3[1] = 0;
}

void sub_29ADCCBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a12);
  sub_29ADCCF6C((v52 - 240));
  _Unwind_Resume(a1);
}

void sub_29ADCCC58(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = (a1 + 104);
  sub_29A124AB0(&v3);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::_IsCacheEntryStale(int a1, void *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v6 = a2[2];
  CollectionVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetCollectionVersion((a4 + 440), a3);
  v8 = a2[3];
  RenderTagVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRenderTagVersion((a4 + 440));
  v10 = a2[4];
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a4);
  v12 = (*(*RenderDelegate + 48))(RenderDelegate);
  MaterialTagsVersion = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetMaterialTagsVersion(v12);
  v14 = a2[5];
  v15 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a4);
  v16 = (*(*v15 + 48))(v15);
  GeomSubsetDrawItemsVersion = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetGeomSubsetDrawItemsVersion(v16);
  result = 1;
  if (__PAIR128__(v8, v6) == __PAIR128__(RenderTagVersion, CollectionVersion))
  {
    return v10 != MaterialTagsVersion || v14 != GeomSubsetDrawItemsVersion;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::_UpdateCacheEntry(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 16) = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetCollectionVersion((a4 + 440), (a2 + 8));
  *(a5 + 24) = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRenderTagVersion((a4 + 440));
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a4);
  v10 = (*(*RenderDelegate + 48))(RenderDelegate);
  *(a5 + 32) = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetMaterialTagsVersion(v10);
  v11 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a4);
  v12 = (*(*v11 + 48))(v11);
  *(a5 + 40) = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetGeomSubsetDrawItemsVersion(v12);
  v13 = operator new(0x30uLL);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = &unk_2A2092F08;
  v13[4] = 0;
  v13[5] = 0;
  v14 = *(a5 + 8);
  *(a5 + 8) = v13;
  v13[3] = 0;
  *a5 = v13 + 3;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a4);
  v16 = (*(*v15 + 48))(v15);
  MaterialTag = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetMaterialTag(a2);
  if (pxrInternal__aapl__pxrReserved__::HdStRenderParam::HasMaterialTag(v16, MaterialTag) && (*a3 == a3[1] || pxrInternal__aapl__pxrReserved__::HdStRenderParam::HasAnyRenderTag(v16, a3)))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetDrawItems(a4, a2, a3, &v21);
    v18 = *a5;
    v19 = **a5;
    *v18 = v21;
    v18[1] = v22;
    v20 = v18[2];
    v18[2] = v23;
    v21 = v19;
    v23 = v20;
    if (v19)
    {
      v22 = v19;
      operator delete(v19);
    }
  }
}

void sub_29ADCCF6C(void **a1)
{
  v2 = a1 + 13;
  sub_29A124AB0(&v2);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::GarbageCollect(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this;
    do
    {
      while (1)
      {
        v3 = v1[20];
        if (v3)
        {
          if (!*(v3 + 8))
          {
            break;
          }
        }

        v1 = *v1;
        if (!v1)
        {
          return this;
        }
      }

      this = sub_29ADCD668(v2, v1);
      v1 = this;
    }

    while (this);
  }

  return this;
}

void sub_29ADCD004(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29ADCD06C(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void *sub_29ADCD0F0(void *a1, void *a2, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3)
{
  v6 = sub_29ADCD3B0(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    sub_29ADCD340(a1, v7, a3, v16);
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29ADCD480(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_29ADCD328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADCD580(va, 0);
  _Unwind_Resume(a1);
}

void sub_29ADCD340(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xC8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29ADCD504((v8 + 2), a3);
}

unint64_t sub_29ADCD3B0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  sub_29AC06A04(&v4, (a2 + 8), (a2 + 16), (a2 + 40), a2 + 56, a2 + 80, (a2 + 48));
  sub_29ADCD42C(&v4, a2 + 104, (a2 + 128));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t sub_29ADCD42C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_29A2833FC(a1, a2);
  v6 = *a3;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_29ADCD480(void *a1, void *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::operator==(a1, a2);
  if (result)
  {
    v6 = a1[13];
    v5 = a1[14];
    v7 = a2[13];
    if (v5 - v6 == a2[14] - v7)
    {
      while (v6 != v5)
      {
        if ((*v7 ^ *v6) > 7)
        {
          return 0;
        }

        v6 += 8;
        ++v7;
      }

      return a1[16] == a2[16];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29ADCD504(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29ADCD580(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ADCCC58(v2 + 16);
    }

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType *sub_29ADCD5DC(atomic_ullong *a1)
{
  result = sub_29ADCD624();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType::~HdStPerfTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType *sub_29ADCD624()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType::HdStPerfTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29ADCD668(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29ADCCC58(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29ADCD6E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2092F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ADCD728(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::HdSt_ExtCompComputeShader(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader *this, const pxrInternal__aapl__pxrReserved__::HdExtComputation *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(this);
  *result = &unk_2A2092F58;
  result[3] = a2;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(this);
  *result = &unk_2A2092F58;
  result[3] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::~HdSt_ExtCompComputeShader(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader *this)
{
  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetSource@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!result)
  {
    result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  if ((result[3] ^ *a2) > 7)
  {
    goto LABEL_10;
  }

  v7 = *(this + 3);
  if (v7)
  {
    goto LABEL_5;
  }

  v9[0] = "hdSt/extCompComputeShader.cpp";
  v9[1] = "GetSource";
  v9[2] = 39;
  v9[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetSource(const TfToken &) const";
  v10 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_extComp", 0);
  if (!result)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v7 = *(this + 3);
LABEL_5:
  if (*(v7 + 127) < 0)
  {
    return sub_29A008D14(a3, *(v7 + 104), *(v7 + 112));
  }

  v8 = *(v7 + 104);
  *(a3 + 16) = *(v7 + 120);
  *a3 = v8;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::ComputeHash(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    v8[0] = "hdSt/extCompComputeShader.cpp";
    v8[1] = "ComputeHash";
    v8[2] = 77;
    v8[3] = "virtual HdStShaderCode::ID pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::ComputeHash() const";
    v9 = 0;
    v7 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_extComp", 0);
    result = 0;
    if (!v7)
    {
      return result;
    }

    v1 = *(this + 3);
  }

  v2 = *(v1 + 127);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = *(v1 + 104);
    v2 = *(v1 + 112);
  }

  else
  {
    v3 = (v1 + 104);
  }

  v4 = pxrInternal__aapl__pxrReserved__::ArchHash(v3, v2);
  return bswap64(0x9E3779B97F4A7C55 * (((v4 + v4 * v4) >> 1) + v4));
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetExtComputationId(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    v5[0] = "hdSt/extCompComputeShader.cpp";
    v5[1] = "GetExtComputationId";
    v5[2] = 90;
    v5[3] = "const SdfPath &pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetExtComputationId() const";
    v6 = 0;
    v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_extComp", 0);
    if (!v4)
    {
      return pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    }

    v1 = *(this + 3);
  }

  return (v1 + 8);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource::HdSt_ExtCompComputedInputSource(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  *pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::HdSt_ExtCompInputSource(a1, a2) = &unk_2A2093000;
  v7 = *a3;
  v8 = a3[1];
  a1[3] = *a3;
  a1[4] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *a3;
  }

  a1[5] = -1;
  a1[5] = pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::GetOutputIndex(v7, a4);
  return a1;
}

void sub_29ADCDAC8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 4);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::~HdSt_ExtCompInputSource(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource::~HdSt_ExtCompComputedInputSource(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::~HdSt_ExtCompInputSource(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource::~HdSt_ExtCompComputedInputSource(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource *this)
{
  if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*(this + 3)))
  {
    v2 = atomic_load((*(this + 3) + 8));
    if (v2 >= 2)
    {
      v3 = 0;
      atomic_compare_exchange_strong(this + 2, &v3, 1u);
      if (!v3)
      {
        v4 = atomic_load((*(this + 3) + 8));
        if (v4 != 3)
        {
          sub_29AD1019C(this);
          return 1;
        }

LABEL_7:
        sub_29ADCDBFC(this);
        return 1;
      }
    }
  }

  else
  {
    v5 = 0;
    atomic_compare_exchange_strong(this + 2, &v5, 1u);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_29ADCDBFC(uint64_t result)
{
  v1 = (result + 8);
  v2 = atomic_load((result + 8));
  if (v2 != 1)
  {
    result = sub_29B2C8C64(v3);
  }

  atomic_store(3u, v1);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::HdSt_ExtCompInputSource(uint64_t result, uint64_t *a2)
{
  *(result + 8) = 0;
  *result = &unk_2A20930A0;
  v2 = *a2;
  *(result + 16) = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::~HdSt_ExtCompInputSource(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource *this)
{
  *this = &unk_2A20930A0;
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource *pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource::HdSt_ExtCompSceneInputSource(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::HdSt_ExtCompInputSource(this, a2);
  *v5 = &unk_2A2093140;
  sub_29A186EF4(v5 + 3, a3);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource::~HdSt_ExtCompSceneInputSource(pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource *this)
{
  sub_29A186B14(this + 24);

  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::~HdSt_ExtCompInputSource(this);
}

{
  sub_29A186B14(this + 24);

  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::~HdSt_ExtCompInputSource(this);
}

{
  sub_29A186B14(this + 24);
  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::~HdSt_ExtCompInputSource(this);

  operator delete(v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource::Resolve(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  v2 = v1 == 0;
  if (!v1)
  {
    sub_29AD1019C(this);
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_FieldTextureCpuData::HdSt_FieldTextureCpuData(uint64_t a1, void *a2, std::string *__str, uint64_t a4)
{
  *a1 = &unk_2A20931E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = xmmword_29B70A5A0;
  *(a1 + 68) = 0x1000100000000;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  v7 = (a1 + 80);
  *(a1 + 52) = xmmword_29B70A5B0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  std::string::operator=((a1 + 8), __str);
  if (*a2 && (*(**a2 + 24))(*a2) >= 1 && (*(**a2 + 32))() >= 1 && (*(**a2 + 40))() >= 1 && (*(**a2 + 64))())
  {
    *(a1 + 32) = 8;
    *(a1 + 56) = 2;
    v8 = (*(**a2 + 48))();
    HgiFormat = pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetHgiFormat(v8, a4, v9);
    *(a1 + 36) = HgiFormat;
    if (HgiFormat == -1)
    {
      __p = "hdSt/fieldTextureCpuData.cpp";
      v27 = "HdSt_FieldTextureCpuData";
      v28 = 72;
      v29 = "pxrInternal__aapl__pxrReserved__::HdSt_FieldTextureCpuData::HdSt_FieldTextureCpuData(const HioFieldTextureDataSharedPtr &, const std::string &, const BOOL)";
      v30 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Unsupported texture format for field", v11);
    }

    else
    {
      HioToHgiConversion = pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetHioToHgiConversion(v8, a4, v11);
      if (pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(*(a1 + 36)) == 1)
      {
        *(a1 + 40) = xmmword_29B70A5C0;
      }

      v13 = (*(**a2 + 24))();
      v14 = (*(**a2 + 32))();
      v15 = (*(**a2 + 40))();
      *(a1 + 60) = v13;
      *(a1 + 64) = v14;
      *(a1 + 68) = v15;
      pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(*(a1 + 36), (a1 + 60), *(a1 + 72), 0xFFFFFFFFFFFFFFFFLL, &__p);
      v16 = *(__p + 3) + *__p;
      *v7 = v16;
      if (HioToHgiConversion)
      {
        DataSizeOfFormat = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(*(a1 + 36), 0, 0);
        v18 = *v7;
        v19 = operator new[](v18);
        bzero(v19, v18);
        v20 = (*(**a2 + 72))();
        HioToHgiConversion(v20, v16 / DataSizeOfFormat, v19);
        v21 = *(a1 + 120);
        *(a1 + 120) = v19;
        if (v21)
        {
          operator delete[](v21);
          v19 = *(a1 + 120);
        }
      }

      else
      {
        v23 = *a2;
        v22 = a2[1];
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v24 = *(a1 + 112);
        *(a1 + 104) = v23;
        *(a1 + 112) = v22;
        if (v24)
        {
          sub_29A014BEC(v24);
        }

        v19 = (*(**a2 + 72))();
      }

      *(a1 + 88) = v19;
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }
    }
  }

  return a1;
}

void sub_29ADCE25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = *(v11 + 120);
  *(v11 + 120) = 0;
  if (v14)
  {
    operator delete[](v14);
  }

  v15 = *(v11 + 112);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (*(v11 + 31) < 0)
  {
    operator delete(*v12);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureCpuData::~HdStTextureCpuData(v11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_FieldTextureCpuData::~HdSt_FieldTextureCpuData(pxrInternal__aapl__pxrReserved__::HdSt_FieldTextureCpuData *this)
{
  *this = &unk_2A20931E0;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureCpuData::~HdStTextureCpuData(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_FieldTextureCpuData::~HdSt_FieldTextureCpuData(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderShaderKey *pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderShaderKey::HdSt_ImageShaderShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderShaderKey *this)
{
  *this = &unk_2A2093230;
  v2 = (this + 8);
  v3 = atomic_load(&qword_2A174EAA0);
  if (!v3)
  {
    v3 = sub_29ADCE5D8();
  }

  v4 = *v3;
  *v2 = *v3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v5 = atomic_load(&qword_2A174EAA0);
  if (!v5)
  {
    v5 = sub_29ADCE5D8();
  }

  sub_29A166F2C(this + 2, (v5 + 8));
  v6 = *(this + 3);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 3) = 0;
  v7 = atomic_load(&qword_2A174EAA0);
  if (!v7)
  {
    v7 = sub_29ADCE5D8();
  }

  sub_29A166F2C(this + 4, (v7 + 16));
  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 5) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderShaderKey::~HdSt_ImageShaderShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderShaderKey *this)
{
  *this = &unk_2A2093230;
  for (i = 40; i != 24; i -= 8)
  {
    v2 = *(this + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  do
  {
    v3 = *(this + i);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 8);
  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderShaderKey::~HdSt_ImageShaderShaderKey(this);

  operator delete(v1);
}

unint64_t sub_29ADCE5D8()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "imageShader.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "ImageShader.Vertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "ImageShader.Fragment", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A174EAA0, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174EAA0);
  }

  return v0;
}

void sub_29ADCE754(_Unwind_Exception *a1)
{
  v4 = 16;
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
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29ADCE7F0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_FRUSTUM_CULLING))
  {
    sub_29B2C8D20();
  }
}

void sub_29ADCE820()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_COUNT_VISIBLE_INSTANCES))
  {
    sub_29B2C8D54();
  }
}

void sub_29ADCE850()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_INSTANCE_FRUSTUM_CULLING))
  {
    sub_29B2C8D88();
  }
}

pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::HdSt_IndirectDrawBatch(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2, char a3, char a4)
{
  v7 = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::HdSt_DrawBatch(this, a2, a4);
  *v7 = &unk_2A2093308;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 209) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 35) = 0;
  *(v7 + 232) = 0u;
  *(v7 + 264) = 0u;
  sub_29ADCA738(v7 + 288);
  *(this + 36) = &unk_2A2093360;
  *(this + 204) = 1;
  *(this + 52) = 0;
  *(this + 106) = 0x10000;
  *(this + 214) = 0;
  *(this + 430) = a3;
  *(this + 54) = 0;
  *(this + 440) = 0;
  (*(*this + 64))(this, a2);
  return this;
}

void sub_29ADCE978(_Unwind_Exception *a1)
{
  sub_29ADCE9D0(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(v1 + 25);
  if (v5)
  {
    *(v1 + 26) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(v1 + 22);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::~HdSt_DrawBatch(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADCE9D0(uint64_t a1)
{
  *a1 = &unk_2A2092E00;
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v7 = (a1 + 64);
  sub_29A0176E4(&v7);
  v4 = *(a1 + 48);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1602D4(a1 + 24, *(a1 + 32));
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::~HdSt_IndirectDrawBatch(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this)
{
  *this = &unk_2A2093308;
  *(this + 36) = &unk_2A2092E00;
  v2 = *(this + 50);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 48);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v10 = (this + 352);
  sub_29A0176E4(&v10);
  v4 = *(this + 42);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1602D4(this + 312, *(this + 40));
  v5 = *(this + 38);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(this + 25);
  if (v7)
  {
    *(this + 26) = v7;
    operator delete(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(this + 22);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::~HdSt_DrawBatch(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::~HdSt_IndirectDrawBatch(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_Init(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_Init(this, a2);
  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetBatchIndex(a2, 0);
  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetBatch(a2, this);
  v4 = *(a2 + 1);
  *(this + 29) = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetBufferArraysHash(v4);
  *(this + 30) = 0;
  *(this + 426) = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v4 + 24), *(v4 + 8)) != 0;
  v5 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v4 + 24), *(v4 + 15));
  *(this + 427) = *v5 != 0;
  if ((*(this + 430) & 1) == 0)
  {
    *(this + 214) = 0;
    goto LABEL_9;
  }

  IsEnabledGPUFrustumCulling = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUFrustumCulling(v5);
  *(this + 428) = IsEnabledGPUFrustumCulling;
  if (*(this + 427) != 1 || !IsEnabledGPUFrustumCulling)
  {
    IsEnabledGPUInstanceFrustumCulling = 0;
    *(this + 429) = 0;
    if (!IsEnabledGPUFrustumCulling)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  IsEnabledGPUInstanceFrustumCulling = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUInstanceFrustumCulling(IsEnabledGPUFrustumCulling);
  v8 = *(this + 428);
  *(this + 429) = IsEnabledGPUInstanceFrustumCulling;
  if (v8)
  {
LABEL_8:
    pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CullingProgram::Initialize((this + 288), *(this + 426), IsEnabledGPUInstanceFrustumCulling, *(this + 29));
  }

LABEL_9:
  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("   Resetting dispatch buffer.\n", v9, v10);
  }

  v11 = *(this + 22);
  *(this + 21) = 0;
  *(this + 22) = 0;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUFrustumCulling(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this)
{
  if ((atomic_load_explicit(&qword_2A174EAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EAB0))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_FRUSTUM_CULLING);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A174EAA8 = *v2;
    __cxa_guard_release(&qword_2A174EAB0);
  }

  return byte_2A174EAA8 == 1 && !sub_29ADC9798(5);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUInstanceFrustumCulling(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this)
{
  if ((atomic_load_explicit(&qword_2A174EAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EAD0))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_INSTANCE_FRUSTUM_CULLING);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A174EAC8 = *v2;
    __cxa_guard_release(&qword_2A174EAD0);
  }

  return byte_2A174EAC8;
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CullingProgram::Initialize(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CullingProgram *this, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  if (*(this + 120) != a2 || *(this + 121) != a3 || *(this + 16) != a4)
  {
    sub_29ADD29F4(this);
  }

  *(this + 120) = v6;
  *(this + 121) = v5;
  *(this + 16) = a4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::SetEnableTinyPrimCulling(uint64_t this, int a2)
{
  if (*(this + 424) != a2)
  {
    *(this + 424) = a2;
    *(this + 425) = 1;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this)
{
  if ((atomic_load_explicit(&qword_2A174EAC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EAC0))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_GPU_COUNT_VISIBLE_INSTANCES);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A174EAB8 = *v2;
    __cxa_guard_release(&qword_2A174EAC0);
  }

  return byte_2A174EAB8;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CompileBatch(uint64_t a1, void ***a2)
{
  result = sub_29A0ECEEC(&v180, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CompileBatch(const HdStResourceRegistrySharedPtr &)");
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
    goto LABEL_240;
  }

  v7 = sub_29ADC9478(*(*v5 + 8));
  if (*(a1 + 426))
  {
    if (*(a1 + 429))
    {
      v8 = 19;
    }

    else
    {
      v8 = 15;
    }

    if (*(a1 + 429))
    {
      v9 = 6;
    }

    else
    {
      v9 = 1;
    }

    if (*(a1 + 429))
    {
      v10 = 20;
    }

    else
    {
      v10 = 0;
    }

    v137 = v10;
    if (*(a1 + 429))
    {
      v11 = 36;
    }

    else
    {
      v11 = 20;
    }

    if (*(a1 + 429))
    {
      v12 = 52;
    }

    else
    {
      v12 = 36;
    }

    if (*(a1 + 429))
    {
      v13 = 68;
    }

    else
    {
      v13 = 52;
    }

    v146 = v13;
    if (*(a1 + 429))
    {
      v14 = 76;
    }

    else
    {
      v14 = 60;
    }

    v140 = v14;
    v15 = 16;
  }

  else
  {
    if (*(a1 + 429))
    {
      v8 = 18;
    }

    else
    {
      v8 = 14;
    }

    if (*(a1 + 429))
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    if (*(a1 + 429))
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    v137 = v16;
    if (*(a1 + 429))
    {
      v11 = 32;
    }

    else
    {
      v11 = 16;
    }

    if (*(a1 + 429))
    {
      v12 = 48;
    }

    else
    {
      v12 = 32;
    }

    if (*(a1 + 429))
    {
      v17 = 64;
    }

    else
    {
      v17 = 48;
    }

    v146 = v17;
    if (*(a1 + 429))
    {
      v18 = 72;
    }

    else
    {
      v18 = 56;
    }

    v140 = v18;
    v15 = 12;
  }

  v138 = v15;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("\nCompile Dispatch Buffer\n", v19, v20);
  }

  v139 = v7;
  *v147 = v8 + v7;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - numUInt32: %zd\n", v21, v22, *v147);
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - useDrawIndexed: %d\n", v23, v24, *(a1 + 426));
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - useInstanceCulling: %d\n", v25, v26, *(a1 + 429));
  }

  v142 = v6 - v5;
  v29 = (v6 - v5) >> 3;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - num draw items: %zu\n", v27, v28, v29);
  }

  sub_29A0A171C((a1 + 200), *v147 * v29);
  v141 = v9;
  v30 = *(a1 + 200);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  v31 = *(*(**(a1 + 8) + 8) + 56);
  if (v31)
  {
    v148 = (*(*v31 + 24))(v31);
  }

  else
  {
    v148 = 0;
  }

  *(a1 + 440) = 0;
  v144 = v12;
  v145 = v11;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Processing Items:\n", v32, v33);
  }

  v143 = v7;
  v149 = v7 + 1;
  *(a1 + 240) = 0;
  if (v29 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v29;
  }

  v35 = 0;
  v150 = 4 * *v147;
  v151 = v34;
  do
  {
    v36 = *(*(a1 + 8) + 8 * v35);
    v37 = *(v36 + 8);
    ElementOffsetsHash = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetElementOffsetsHash(v37);
    *(a1 + 240) = bswap64(0x9E3779B97F4A7C55 * (ElementOffsetsHash + ((*(a1 + 240) + ElementOffsetsHash + (*(a1 + 240) + ElementOffsetsHash) * (*(a1 + 240) + ElementOffsetsHash)) >> 1)));
    sub_29ADD2F8C(&v161, v37);
    if (*(a1 + 32) == 1 && (*(a1 + 440) & 1) == 0)
    {
      v39 = *(v37 + 56);
      if (v39)
      {
        v39 = (*(*v39 + 24))(v39);
      }

      if (v148 != v39)
      {
        *(a1 + 440) = 1;
      }
    }

    v160 = v35;
    v40 = v161;
    if (*(&v161 + 1))
    {
      atomic_fetch_add_explicit((*(&v161 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v40)
    {
      v41 = (*(*v40 + 72))(v40);
      if (!*(&v40 + 1))
      {
        goto LABEL_77;
      }

LABEL_76:
      sub_29A014BEC(*(&v40 + 1));
      goto LABEL_77;
    }

    v41 = 0;
    if (*(&v40 + 1))
    {
      goto LABEL_76;
    }

LABEL_77:
    v42 = v172;
    v43 = v173;
    if (v173)
    {
      atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v42)
    {
      v44 = (*(*v42 + 72))(v42);
      if (!v43)
      {
        goto LABEL_82;
      }

LABEL_81:
      sub_29A014BEC(v43);
      goto LABEL_82;
    }

    v44 = 0;
    if (v43)
    {
      goto LABEL_81;
    }

LABEL_82:
    v45 = v164;
    v46 = v165;
    if (v165)
    {
      atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v45)
    {
      v47 = (*(*v45 + 72))(v45);
      if (!v46)
      {
        goto LABEL_87;
      }

LABEL_86:
      sub_29A014BEC(v46);
      goto LABEL_87;
    }

    v47 = 0;
    if (v46)
    {
      goto LABEL_86;
    }

LABEL_87:
    v48 = v166;
    v49 = v167;
    if (v167)
    {
      atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v48)
    {
      v50 = (*(*v48 + 72))(v48);
      if (!v49)
      {
        goto LABEL_92;
      }

LABEL_91:
      sub_29A014BEC(v49);
      goto LABEL_92;
    }

    v50 = 0;
    if (v49)
    {
      goto LABEL_91;
    }

LABEL_92:
    v51 = v162;
    v52 = v163;
    if (v163)
    {
      atomic_fetch_add_explicit(v163 + 1, 1uLL, memory_order_relaxed);
    }

    if (v51)
    {
      v157 = (*(*v51 + 72))(v51);
      if (!v52)
      {
        goto LABEL_97;
      }

LABEL_96:
      sub_29A014BEC(v52);
      goto LABEL_97;
    }

    v157 = 0;
    if (v52)
    {
      goto LABEL_96;
    }

LABEL_97:
    v53 = v168;
    v54 = v169;
    if (v169)
    {
      atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v53)
    {
      v156 = (*(*v53 + 72))(v53);
      if (!v54)
      {
        goto LABEL_102;
      }

LABEL_101:
      sub_29A014BEC(v54);
      goto LABEL_102;
    }

    v156 = 0;
    if (v54)
    {
      goto LABEL_101;
    }

LABEL_102:
    v55 = v176;
    v56 = v177;
    if (v177)
    {
      atomic_fetch_add_explicit(&v177->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v55)
    {
      v155 = (*(*v55 + 72))(v55);
      if (!v56)
      {
        goto LABEL_107;
      }

LABEL_106:
      sub_29A014BEC(v56);
      goto LABEL_107;
    }

    v155 = 0;
    if (v56)
    {
      goto LABEL_106;
    }

LABEL_107:
    v57 = v174;
    v58 = v175;
    if (v175)
    {
      atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v57)
    {
      v152 = (*(*v57 + 72))(v57);
      if (!v58)
      {
        goto LABEL_112;
      }

LABEL_111:
      sub_29A014BEC(v58);
      goto LABEL_112;
    }

    v152 = 0;
    if (v58)
    {
      goto LABEL_111;
    }

LABEL_112:
    v59 = v170;
    v60 = v171;
    if (v171)
    {
      atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v153 = v50;
    v154 = v36;
    if (v59)
    {
      v61 = (*(*v59 + 72))(v59);
    }

    else
    {
      v61 = 0;
    }

    v62 = a1;
    if (v60)
    {
      sub_29A014BEC(v60);
    }

    PrimitiveIndexSize = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(*(v37 + 40));
    v64 = v172;
    v65 = v173;
    if (v173)
    {
      atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v64)
    {
      v66 = (*(*v64 + 88))(v64);
      if (!v65)
      {
        goto LABEL_140;
      }

LABEL_139:
      sub_29A014BEC(v65);
      goto LABEL_140;
    }

    v66 = 0;
    if (v65)
    {
      goto LABEL_139;
    }

LABEL_140:
    if (!v66)
    {
      v159 = 0;
      goto LABEL_151;
    }

    v67 = v162;
    v68 = v163;
    if (v163)
    {
      atomic_fetch_add_explicit(v163 + 1, 1uLL, memory_order_relaxed);
    }

    if (!v67)
    {
      v159 = 0;
      if (!v68)
      {
        goto LABEL_151;
      }

LABEL_150:
      sub_29A014BEC(v68);
      goto LABEL_151;
    }

    v159 = (*(*v67 + 88))(v67);
    if (v68)
    {
      goto LABEL_150;
    }

LABEL_151:
    v69 = v176;
    v70 = v177;
    if (v177)
    {
      atomic_fetch_add_explicit(&v177->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v69)
    {
      v71 = (*(*v69 + 88))(v69);
    }

    else
    {
      v71 = 1;
    }

    v158 = v66;
    if (*(v154 + 24) == 1)
    {
      v72 = v71 / v149;
    }

    else
    {
      v72 = 0;
    }

    if (v70)
    {
      sub_29A014BEC(v70);
    }

    v73 = *(v62 + 429);
    if (*(v62 + 426))
    {
      v74 = v160;
      *v30 = v159 * PrimitiveIndexSize;
      v30[1] = v72;
      v75 = v157;
      v30[2] = PrimitiveIndexSize * v157;
      v30[3] = v44;
      v76 = v30 + 5;
      v30[4] = v160;
      if (v73)
      {
        v77 = 6;
        v78 = 7;
        v79 = 8;
        v80 = 9;
LABEL_166:
        a1 = v62;
        *v76 = 1;
        v30[v77] = v72;
        v76 = &v30[v80];
        v30[v78] = 0;
        v30[v79] = v74;
        goto LABEL_168;
      }
    }

    else
    {
      v76 = v30 + 4;
      *v30 = v158;
      v30[1] = v72;
      v74 = v160;
      v30[2] = v44;
      v30[3] = v160;
      v75 = v157;
      if (v73)
      {
        v77 = 5;
        v78 = 6;
        v79 = 7;
        v80 = 8;
        goto LABEL_166;
      }
    }

    a1 = v62;
LABEL_168:
    *v76 = 0;
    v76[1] = v41;
    v76[2] = v153;
    v76[3] = v75;
    v76[4] = v156;
    v76[5] = v155;
    v76[6] = v152;
    v76[7] = v44;
    v30 = v76 + 10;
    v76[8] = v47;
    v76[9] = v61;
    v81 = v178;
    if (v179 != v178)
    {
      v82 = 0;
      v83 = 0;
      while (1)
      {
        v84 = (v81 + v82);
        v85 = *v84;
        v86 = v84[1];
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v85)
        {
          break;
        }

        v87 = (*(*v85 + 72))(v85);
        if (v86)
        {
          goto LABEL_174;
        }

LABEL_175:
        *v30++ = v87;
        ++v83;
        v81 = v178;
        v82 += 16;
        if (v83 >= (v179 - v178) >> 4)
        {
          goto LABEL_179;
        }
      }

      v87 = 0;
      if (!v86)
      {
        goto LABEL_175;
      }

LABEL_174:
      sub_29A014BEC(v86);
      goto LABEL_175;
    }

LABEL_179:
    v88 = sub_29ADC9798(0);
    v89 = MEMORY[0x29EDC93C8];
    if (v88)
    {
      sub_29A00911C(MEMORY[0x29EDC93C8], "   - ", 5);
      if (v150)
      {
        v90 = &v30[v150 / 0xFFFFFFFFFFFFFFFCLL];
        do
        {
          v91 = MEMORY[0x29C2C1EE0](v89, *v90);
          sub_29A00911C(v91, " ", 1);
          ++v90;
        }

        while (v90 != v30);
      }

      std::ios_base::getloc((v89 + *(*v89 - 24)));
      v92 = std::locale::use_facet(&v182, MEMORY[0x29EDC93D0]);
      (v92->__vftable[2].~facet_0)(v92, 10);
      std::locale::~locale(&v182);
      std::ostream::put();
      std::ostream::flush();
    }

    v93 = *(a1 + 272);
    v94 = *(a1 + 264) + v72;
    *(a1 + 280) += v159;
    *(a1 + 264) = v94;
    *(a1 + 272) = v93 + v158;
    sub_29ADD32C4(&v161);
    v35 = v160 + 1;
  }

  while (v160 + 1 != v151);
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Num Visible: %zu\n", v95, v96, *(a1 + 264));
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Total Elements: %zu\n", v97, v98, *(a1 + 280));
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Total Verts: %zu\n", v99, v100, *(a1 + 272));
  }

  if (v30 != *(a1 + 208))
  {
    *&v161 = "hdSt/indirectDrawBatch.cpp";
    *(&v161 + 1) = "_CompileBatch";
    v162 = 726;
    v163 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CompileBatch(const HdStResourceRegistrySharedPtr &)";
    LOBYTE(v164) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v161, "cmdIt == _drawCommandBuffer.end()", 0);
  }

  *(a1 + 432) = 1;
  *(a1 + 436) = v141;
  v101 = *a2;
  v102 = atomic_load(&qword_2A174EAD8);
  if (!v102)
  {
    v102 = sub_29ADD3C88();
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterDispatchBuffer(v101, (v102 + 16), v142 >> 3, v147[0], &v161);
  v103 = v161;
  v161 = 0uLL;
  v104 = *(a1 + 176);
  *(a1 + 168) = v103;
  if (v104)
  {
    sub_29A014BEC(v104);
    if (*(&v161 + 1))
    {
      sub_29A014BEC(*(&v161 + 1));
    }
  }

  v105 = *(a1 + 168);
  v106 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v106)
  {
    v106 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v105, v106 + 22, 5, 1, 0);
  v107 = *(a1 + 168);
  v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v108)
  {
    v108 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v107, v108 + 24, 8, 1, v145);
  v109 = *(a1 + 168);
  v110 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v110)
  {
    v110 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v109, v110 + 25, 8, 1, v144);
  v111 = *(a1 + 168);
  v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v112)
  {
    v112 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v111, v112 + 26, 6, 1, v146);
  if (v143)
  {
    v113 = *(a1 + 168);
    v114 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v114)
    {
      v114 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v113, v114 + 27, 5, v139, v140);
  }

  result = pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 168), (a1 + 200));
  if (*(a1 + 428) == 1)
  {
    v115 = *a2;
    v116 = atomic_load(&qword_2A174EAD8);
    if (!v116)
    {
      v116 = sub_29ADD3C88();
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterDispatchBuffer(v115, (v116 + 24), v142 >> 3, v147[0], &v161);
    v117 = v161;
    v161 = 0uLL;
    v118 = *(a1 + 192);
    *(a1 + 184) = v117;
    if (v118)
    {
      sub_29A014BEC(v118);
      if (*(&v161 + 1))
      {
        sub_29A014BEC(*(&v161 + 1));
      }
    }

    v119 = *(a1 + 429);
    v120 = *(a1 + 184);
    v121 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (v119 == 1)
    {
      if (!v121)
      {
        v121 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v120, v121 + 22, 5, 1, v137);
      v122 = *(a1 + 184);
      v123 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v123)
      {
        v123 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v122, v123 + 24, 8, 1, v145);
      v124 = *(a1 + 184);
      v125 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v125)
      {
        v125 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v124, v125 + 25, 6, 1, v144);
      if (v143)
      {
        v126 = *(a1 + 184);
        v127 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v127)
        {
          v127 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v126, v127 + 27, 5, v139, v140);
      }

      v128 = *(a1 + 184);
      v129 = atomic_load(&qword_2A174EAD8);
      if (!v129)
      {
        v129 = sub_29ADD3C88();
      }

      v130 = (v129 + 8);
      v131 = v138;
    }

    else
    {
      if (!v121)
      {
        v121 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v120, v121 + 22, 5, 1, 0);
      v132 = *(a1 + 184);
      v133 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v133)
      {
        v133 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v132, v133 + 24, 8, 1, v145);
      v134 = *(a1 + 184);
      v135 = atomic_load(&qword_2A174EAD8);
      if (!v135)
      {
        v135 = sub_29ADD3C88();
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v134, (v135 + 8), 5, 1, v138);
      v128 = *(a1 + 184);
      v136 = atomic_load(&qword_2A174EAD8);
      if (!v136)
      {
        v136 = sub_29ADD3C88();
      }

      v130 = (v136 + 40);
      v131 = 4;
    }

    pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v128, v130, 5, 1, v131);
    result = pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 184), (a1 + 200));
  }

LABEL_240:
  if (v180)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v181, v180);
  }

  return result;
}