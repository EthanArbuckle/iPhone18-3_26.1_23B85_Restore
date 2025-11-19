void sub_29A1BEFC4(void *a1)
{
  a1[11] = a1[10];
  sub_29A1B35A8((a1 + 13));
  a1[19] = a1[18];
}

void sub_29A1BEFFC(void *a1, double a2)
{
  v19 = a2;
  v4 = a1[10];
  v3 = a1[11];
  if (v3 == v4)
  {
    v6 = a1[11];
  }

  else
  {
    v5 = v3 - v4;
    v6 = a1[10];
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v3 != v6 && *v6 == a2)
  {
    v11 = v6 - v4;
    v12 = v3 - (v6 + 1);
    if (v3 != v6 + 1)
    {
      memmove(v6, v6 + 1, v3 - (v6 + 1));
    }

    a1[11] = v6 + v12;
    sub_29A1C036C(a1 + 13, &v19);
    v13 = a1[18];
    v14 = a1[19];
    v15 = v13 + 8 * v11;
    v16 = v14 - (v15 + 64);
    if (v14 != v15 + 64)
    {
      memmove((v13 + 8 * v11), (v15 + 64), v14 - (v15 + 64));
    }

    a1[19] = v15 + v16;
  }

  else
  {
    v17[0] = "ts/splineData.h";
    v17[1] = "RemoveKnotAtTime";
    v17[2] = 379;
    v17[3] = "virtual void pxrInternal__aapl__pxrReserved__::Ts_TypedSplineData<double>::RemoveKnotAtTime(const TsTime) [T = double]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v17, 1, "Cannot remove nonexistent knot from SplineData");
  }
}

void sub_29A1BF120(uint64_t a1, double a2, double a3, uint64_t a4, char *a5)
{
  v5 = a2;
  v43 = a3;
  if (a3 < 0.0)
  {
    *&v45 = "ts/splineData.h";
    *(&v45 + 1) = "ApplyOffsetAndScale";
    *&v46 = 461;
    *(&v46 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::Ts_TypedSplineData<double>::ApplyOffsetAndScale(const TsTime, const double) [T = double]";
    LOBYTE(v47) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v45, "Applying negative scale to spline", a5);
    v5 = a2;
    a3 = v43;
  }

  v7 = (a1 + 16);
  if (*(a1 + 16) == 3)
  {
    *(a1 + 24) = *(a1 + 24) / a3;
  }

  v8 = (a1 + 32);
  if (*(a1 + 32) == 3)
  {
    *(a1 + 40) = *(a1 + 40) / a3;
  }

  if (a3 < 0.0)
  {
    v9 = *v7;
    *v7 = *v8;
    *v8 = v9;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  if (v11 > v10)
  {
    v12 = v10 * a3 + v5;
    v13 = v11 * a3 + v5;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    if (a3 < 0.0)
    {
      *(a1 + 48) = v13;
      *(a1 + 56) = v12;
      *(a1 + 64) = vrev64_s32(*(a1 + 64));
    }
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  if (v14 != v15)
  {
    v16 = *(a1 + 80);
    do
    {
      *v16 = *v16 * a3 + v5;
      ++v16;
    }

    while (v16 != v15);
  }

  if (a3 < 0.0 && v14 != v15)
  {
    v17 = v15 - 1;
    if (v17 > v14)
    {
      v18 = v14 + 8;
      do
      {
        v19 = *(v18 - 8);
        *(v18 - 8) = *v17;
        *v17-- = v19;
        v20 = v18 >= v17;
        v18 += 8;
      }

      while (!v20);
    }
  }

  v21 = *(a1 + 144);
  v22 = *(a1 + 152);
  if ((*(a1 + 8) & 2) != 0)
  {
    if (v21 != v22)
    {
      v41 = vdupq_lane_s64(*&v5, 0);
      do
      {
        sub_29A1C047C(v21, v5, a3);
        v5 = a2;
        a3 = v43;
        v21[2] = vaddq_f64(vmulq_n_f64(v21[2], v43), v41);
        v21 += 4;
      }

      while (v21 != v22);
    }
  }

  else
  {
    for (; v21 != v22; v21 += 4)
    {
      sub_29A1C047C(v21, v5, a3);
      v5 = a2;
      a3 = v43;
    }
  }

  if (a3 < 0.0)
  {
    v23 = *(a1 + 144);
    v24 = *(a1 + 152);
    if (v24 - v23 >= 0x41)
    {
      v25 = 0;
      v26 = 1;
      do
      {
        *(v23 + v25 + 24) = *(v23 + v25 + 24) & 0xF8 | *(v23 + v25 + 88) & 7;
        ++v26;
        v23 = *(a1 + 144);
        v24 = *(a1 + 152);
        v25 += 64;
      }

      while (v26 < (v24 - v23) >> 6);
    }

    v27 = (v24 - 64);
    if (v23 != v24 && v27 > v23)
    {
      v29 = v23 + 64;
      do
      {
        v30 = *(v29 - 64);
        v31 = *(v29 - 48);
        v32 = *(v29 - 16);
        v47 = *(v29 - 32);
        v48 = v32;
        v45 = v30;
        v46 = v31;
        v33 = *v27;
        v34 = v27[1];
        v35 = v27[3];
        *(v29 - 32) = v27[2];
        *(v29 - 16) = v35;
        *(v29 - 64) = v33;
        *(v29 - 48) = v34;
        v36 = v45;
        v37 = v46;
        v38 = v48;
        v27[2] = v47;
        v27[3] = v38;
        *v27 = v36;
        v27[1] = v37;
        v27 -= 4;
        v20 = v29 >= v27;
        v29 += 64;
      }

      while (!v20);
    }
  }

  if (*(a1 + 128))
  {
    v45 = 0u;
    v46 = 0u;
    LODWORD(v47) = 1065353216;
    for (i = *(a1 + 120); i; a3 = v43)
    {
      v44[0] = *(i + 2) * a3 + v5;
      v49 = v44;
      v40 = sub_29A1BFB28(&v45, v44, &unk_29B4D6118, &v49);
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v40 + 3, i + 3);
      i = *i;
      v5 = a2;
    }

    sub_29A1C04D0(a1 + 104, &v45);
    sub_29A1B2944(&v45);
  }
}

void sub_29A1BF420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1B2944(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A1BF434(uint64_t a1)
{
  v2 = *(a1 + 144);
  v1 = *(a1 + 152);
  if (v2 == v1)
  {
    return 0;
  }

  if (!*(a1 + 16) || !*(a1 + 32))
  {
    return 1;
  }

  v3 = v2 + 64;
  do
  {
    result = (*(v3 - 40) & 7) == 0;
    v5 = (*(v3 - 40) & 7) == 0 || v3 == v1;
    v3 += 64;
  }

  while (!v5);
  return result;
}

BOOL sub_29A1BF484(uint64_t a1, double a2)
{
  v2 = *(a1 + 144);
  if (v2 == *(a1 + 152))
  {
    return 0;
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    v6 = *(a1 + 88);
  }

  else
  {
    v5 = v4 - v3;
    v6 = *(a1 + 80);
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v4 == v6)
  {
    v13 = *(a1 + 32);
    return v13 == 0;
  }

  if (*v6 != a2)
  {
    if (v3 != v6)
    {
      v12 = *(v2 + 8 * (v6 - v3) - 40);
      return (v12 & 7) == 0;
    }

    v13 = *(a1 + 16);
    return v13 == 0;
  }

  v12 = *(v2 + 8 * (v6 - v3) + 24);
  return (v12 & 7) == 0;
}

uint64_t sub_29A1BF534(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A1BF5AC(a1, i + 2, i + 2);
  }

  return a1;
}

double *sub_29A1BF5AC(uint64_t a1, double *a2, void *a3)
{
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *a2;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (*&v5 >= v6)
      {
        *&v3 = *&v5 % v6;
      }
    }

    else
    {
      *&v3 = (v6 - 1) & *&v5;
    }

    v8 = *(*a1 + 8 * *&v3);
    if (v8)
    {
      for (i = *v8; i; i = *i)
      {
        v10 = *(i + 1);
        if (v10 == *&v5)
        {
          if (i[2] == *a2)
          {
            return i;
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

          if (v10 != *&v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A1BF7F4(a1, *&v5, a3, v22);
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
      if (*&v5 >= v6)
      {
        *&v3 = *&v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      *&v3 = (v6 - 1) & *&v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * *&v3);
  if (v18)
  {
    i = v22[0];
    *v22[0] = *v18;
    *v18 = i;
  }

  else
  {
    v19 = v22[0];
    *v22[0] = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * *&v3) = a1 + 16;
    i = v22[0];
    if (*v22[0])
    {
      v20 = *(*v22[0] + 8);
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

      *(*a1 + 8 * v20) = v22[0];
      i = v22[0];
    }
  }

  v22[0] = 0;
  ++*(a1 + 24);
  sub_29A1BF870(v22, 0);
  return i;
}

void sub_29A1BF7DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1BF870(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1BF7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = *a3;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((v8 + 3), (a3 + 1));
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1BF870(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A184A10(v2 + 3, 0);
    }

    operator delete(v2);
  }
}

void *sub_29A1BF8D0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A1BF94C(result, a4);
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

void sub_29A1BF930(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A1BF94C(void *a1, unint64_t a2)
{
  if (a2 >> 58)
  {
    sub_29A00C9A4();
  }

  result = sub_29A0BE3C0(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[64 * v4];
  return result;
}

BOOL sub_29A1BF988(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_29A1B7910(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 64;
    v4 += 64;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_29A1BF9FC(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A1B905C(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == v5[2] && (pxrInternal__aapl__pxrReserved__::operator==(v3 + 3, v5 + 3, v6) & 1) != 0);
  return v4;
}

void sub_29A1BFA88(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 6)
  {
    if (a2 >> 58)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A0BE3C0(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[64 * v6];
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

double *sub_29A1BFB28(uint64_t a1, double *a2, uint64_t a3, double **a4)
{
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *a2;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (*&v7 >= v8)
      {
        *&v4 = *&v7 % v8;
      }
    }

    else
    {
      *&v4 = (v8 - 1) & *&v7;
    }

    v10 = *(*a1 + 8 * *&v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = *(i + 1);
        if (v12 == *&v7)
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

          if (v12 != *&v4)
          {
            break;
          }
        }
      }
    }
  }

  v13 = operator new(0x20uLL);
  v25[0] = v13;
  v25[1] = a1;
  v25[2] = 1;
  *v13 = 0.0;
  v13[1] = v7;
  v13[2] = **a4;
  v13[3] = 0.0;
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
      if (*&v7 >= v8)
      {
        *&v4 = *&v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      *&v4 = (v8 - 1) & *&v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * *&v4);
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
    *(v20 + 8 * *&v4) = a1 + 16;
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

  v25[0] = 0;
  ++*(a1 + 24);
  sub_29A1BF870(v25, 0);
  return i;
}

void sub_29A1BFD74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1BF870(va, 0);
  _Unwind_Resume(a1);
}

double *sub_29A1BFD8C(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v30 = a1;
    if (v14)
    {
      v16 = sub_29A00C9BC(a1, v14);
    }

    else
    {
      v16 = 0;
    }

    v27 = v16;
    v28 = &v16[8 * v15];
    *&v29 = v28;
    *(&v29 + 1) = &v16[8 * v14];
    sub_29A1C0150(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = &v19[-(v4 - v18)];
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 1;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = a3[v25];
  }

  return v4;
}

void sub_29A1BFF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 *sub_29A1BFF60(char **a1, __n128 *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 6) + 1;
    if (v14 >> 58)
    {
      sub_29A00C9A4();
    }

    v15 = __src - v13;
    v16 = v7 - v13;
    if (v16 >> 5 > v14)
    {
      v14 = v16 >> 5;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFC0)
    {
      v17 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v14;
    }

    v18 = v15 >> 6;
    v40 = a1;
    if (v17)
    {
      v19 = sub_29A0BE3C0(a1, v17);
    }

    else
    {
      v19 = 0;
    }

    v37 = v19;
    v38 = &v19[64 * v18];
    *&v39 = v38;
    *(&v39 + 1) = &v19[64 * v17];
    sub_29A1C0250(&v37, a3);
    v23 = v38;
    memcpy(v39, v4, a1[1] - v4);
    v24 = *a1;
    v25 = v38;
    *&v39 = v39 + a1[1] - v4;
    a1[1] = v4;
    v26 = v4 - v24;
    v27 = &v25[-(v4 - v24)];
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    v29 = a1[2];
    *(a1 + 1) = v39;
    *&v39 = v28;
    *(&v39 + 1) = v29;
    v37 = v28;
    v38 = v28;
    if (v28)
    {
      operator delete(v28);
    }

    return v23;
  }

  else if (__src == v6)
  {
    v20 = *a3;
    v21 = *(a3 + 16);
    v22 = *(a3 + 48);
    v6[2] = *(a3 + 32);
    v6[3] = v22;
    *v6 = v20;
    v6[1] = v21;
    a1[1] = &v6[4];
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 0x40)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 4;
      v10 = v6[-4];
      v11 = v6[-3];
      v12 = v6[-1];
      v6[2] = v6[-2];
      v6[3] = v12;
      *v6 = v10;
      v6[1] = v11;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[4], __src, v6 - v8);
      v9 = a1[1];
    }

    v30 = v9 <= a3 || v4 > a3;
    v31 = 64;
    if (v30)
    {
      v31 = 0;
    }

    v32 = (a3 + v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[3];
    v4[2] = v32[2];
    v4[3] = v35;
    *v4 = v33;
    v4[1] = v34;
  }

  return v4;
}

void sub_29A1C0118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A1C0150(void *a1, double *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      v12 = sub_29A00C9BC(a1[4], v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = ((v6 >> 3) + 1) / 2;
      v9 = &v5[-8 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-8 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[8 * v7];
    }
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 8;
  return result;
}

__n128 sub_29A1C0250(void **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 5;
      }

      v12 = sub_29A0BE3C0(a1[4], v11);
      v14 = &v12[64 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = (v14 + v16);
        v17 = &v12[64 * (v11 >> 2)];
        do
        {
          v18 = *v15;
          v19 = v15[1];
          v20 = v15[3];
          *(v17 + 2) = v15[2];
          *(v17 + 3) = v20;
          *v17 = v18;
          *(v17 + 1) = v19;
          v17 += 64;
          v15 += 4;
          v16 -= 64;
        }

        while (v16);
      }

      v21 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[64 * v13];
      if (v21)
      {
        operator delete(v21);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 6) + 1) / -2;
      v8 = ((v6 >> 6) + 1) / 2;
      v9 = &v5[-4 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-4 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[4 * v7];
      a1[2] = &v9[v10];
    }
  }

  result = *a2;
  v23 = a2[1];
  v24 = a2[3];
  v4[2] = a2[2];
  v4[3] = v24;
  *v4 = result;
  v4[1] = v23;
  a1[2] = a1[2] + 64;
  return result;
}

double *sub_29A1C036C(void *a1, double *a2)
{
  result = sub_29A1C03BC(a1, a2);
  if (result)
  {
    sub_29A0ECDB0(a1, result, v4);
    sub_29A1BF870(v4, 0);
    return 1;
  }

  return result;
}

double *sub_29A1C03BC(void *a1, double *a2)
{
  v2 = *a2;
  if (*a2 == 0.0)
  {
    v2 = 0.0;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (*&v2 >= *&v3)
    {
      *&v5 = *&v2 % *&v3;
    }
  }

  else
  {
    *&v5 = (*&v3 - 1) & *&v2;
  }

  v6 = *(*a1 + 8 * *&v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = *(result + 1);
    if (v8 == *&v2)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v3)
        {
          v8 %= *&v3;
        }
      }

      else
      {
        v8 &= *&v3 - 1;
      }

      if (v8 != *&v5)
      {
        return 0;
      }
    }
  }

  return result;
}

int8x16_t sub_29A1C047C(uint64_t a1, double a2, double a3)
{
  *a1 = *a1 * a3 + a2;
  result = vmulq_n_f64(*(a1 + 8), fabs(a3));
  *(a1 + 8) = result;
  v4 = vdivq_f64(*(a1 + 48), vdupq_lane_s64(*&a3, 0));
  *(a1 + 48) = v4;
  if (a3 < 0.0)
  {
    *(a1 + 8) = vextq_s8(result, result, 8uLL);
    result = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    *(a1 + 32) = result;
    *(a1 + 48) = vextq_s8(v4, v4, 8uLL);
  }

  return result;
}

void sub_29A1C04D0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

void sub_29A1C05E0(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(this);
}

void sub_29A1C0624(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(this);

  operator delete(v3);
}

uint64_t sub_29A1C066C(uint64_t a1)
{
  if (*(a1 + 8))
  {

    return pxrInternal__aapl__pxrReserved__::Ts_GetType<float>();
  }

  else
  {
    v4[1] = v1;
    v4[2] = v2;
    pxrInternal__aapl__pxrReserved__::TfType::TfType(v4);
    return v4[0];
  }
}

char *sub_29A1C06B4(uint64_t a1)
{
  v2 = operator new(0xA8uLL);
  *v2 = &unk_2A2045470;
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  *(v2 + 56) = *(a1 + 56);
  v3 = *(a1 + 80);
  *(v2 + 9) = *(a1 + 72);
  v4 = *(a1 + 8);
  *(v2 + 10) = 0;
  *(v2 + 8) = v4;
  v5 = *(a1 + 88);
  *(v2 + 11) = 0;
  *(v2 + 12) = 0;
  sub_29A00C8EC(v2 + 10, v3, v5, (v5 - v3) >> 3);
  sub_29A1BF534((v2 + 104), a1 + 104);
  *v2 = &unk_2A20455D8;
  *(v2 + 19) = 0;
  *(v2 + 20) = 0;
  *(v2 + 18) = 0;
  sub_29A1C1180(v2 + 18, *(a1 + 144), *(a1 + 152), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 4));
  return v2;
}

void sub_29A1C07A0(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(v1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29A1C07DC(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8) ^ *(a1 + 8)) & 0xF) != 0)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(a1 + 16, a2 + 16))
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(a1 + 32, a2 + 32))
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsLoopParams::operator!=(a1 + 48, a2 + 48))
  {
    return 0;
  }

  if (!sub_29A1BF9FC(a1 + 104, (a2 + 104)))
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_29A1C1248((a1 + 144), v4 + 18);
}

void sub_29A1C08C8(uint64_t a1, unint64_t a2)
{
  sub_29A08AF9C(a1 + 80, a2);

  sub_29A1C12BC(a1 + 144, a2);
}

const void ****sub_29A1C090C(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  sub_29A08B03C((a1 + 80), a2);
  usdStl::StlModel::AddFacet(a1 + 144, a2);
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::empty(a3);
  if ((result & 1) == 0)
  {
    v8 = a2;
    v7 = sub_29A1BFB28(a1 + 104, a2, &unk_29B4D6118, &v8);
    return pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v7 + 3, a3);
  }

  return result;
}

uint64_t sub_29A1C0990(uint64_t a1, unint64_t a2, const void ****this)
{
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v6 = (a1 + 80);
  if (v8 == v7)
  {
    v11 = v8;
  }

  else
  {
    v9 = (v8 - v7) >> 3;
    v10 = *a2;
    v11 = v7;
    do
    {
      v12 = v9 >> 1;
      v13 = &v11[8 * (v9 >> 1)];
      v15 = *v13;
      v14 = (v13 + 1);
      v9 += ~(v9 >> 1);
      if (v15 < v10)
      {
        v11 = v14;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v9);
  }

  v16 = (v11 - v7) >> 3;
  if (v8 == v11 || *v11 != *a2)
  {
    sub_29A1BFD8C(v6, v11, a2);
    sub_29A1C137C((a1 + 144), (*(a1 + 144) + 48 * v16), a2);
  }

  else
  {
    *v11 = *a2;
    v17 = (*(a1 + 144) + 48 * v16);
    v18 = *a2;
    v19 = *(a2 + 16);
    *(v17 + 28) = *(a2 + 28);
    *v17 = v18;
    v17[1] = v19;
  }

  if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(this))
  {
    v22 = a2;
    v20 = sub_29A1BFB28(a1 + 104, a2, &unk_29B4D6118, &v22);
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v20 + 3, this);
  }

  return v16;
}

__n128 sub_29A1C0AB0(uint64_t a1, uint64_t a2)
{
  v4 = operator new(0x30uLL);
  v5 = *(a1 + 144) + 48 * a2;
  v6 = *(v5 + 16);
  *v4 = *v5;
  v4[1] = v6;
  result = *(v5 + 32);
  v4[2] = result;
  return result;
}

__n128 sub_29A1C0B00(void *a1, __n128 result)
{
  v2 = a1[10];
  v3 = a1[11];
  if (v3 == v2)
  {
    v5 = a1[11];
  }

  else
  {
    v4 = v3 - v2;
    v5 = a1[10];
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[v4 >> 1];
      v9 = *v7;
      v8 = v7 + 1;
      v4 += ~(v4 >> 1);
      if (v9 < result.n128_f64[0])
      {
        v5 = v8;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 != v5 && *v5 == result.n128_f64[0])
  {
    v10 = a1[18] + 48 * ((v5 - v2) >> 3);
    v11 = operator new(0x30uLL);
    v12 = *(v10 + 16);
    *v11 = *v10;
    v11[1] = v12;
    result = *(v10 + 32);
    v11[2] = result;
  }

  return result;
}

float64x2_t sub_29A1C0BB8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 144) + 48 * a2;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(a3);
  v5 = *v4;
  *(a3 + 9) = *(v4 + 9);
  *a3 = v5;
  result = vcvtq_f64_f32(*(v4 + 28));
  v7 = vcvtq_f64_f32(*(v4 + 36));
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  return result;
}

void sub_29A1C0C10(void *a1, double a2)
{
  v18 = a2;
  v4 = a1[10];
  v3 = a1[11];
  if (v3 == v4)
  {
    v6 = a1[11];
  }

  else
  {
    v5 = v3 - v4;
    v6 = a1[10];
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v3 != v6 && *v6 == a2)
  {
    v11 = v6 - v4;
    v12 = v3 - (v6 + 1);
    if (v3 != v6 + 1)
    {
      memmove(v6, v6 + 1, v3 - (v6 + 1));
    }

    a1[11] = v6 + v12;
    sub_29A1C036C(a1 + 13, &v18);
    v13 = a1[19];
    v14 = a1[18] + 48 * v11;
    v15 = v13 - (v14 + 48);
    if (v13 != v14 + 48)
    {
      memmove((a1[18] + 48 * v11), (v14 + 48), v15 - 4);
    }

    a1[19] = v14 + v15;
  }

  else
  {
    v16[0] = "ts/splineData.h";
    v16[1] = "RemoveKnotAtTime";
    v16[2] = 379;
    v16[3] = "virtual void pxrInternal__aapl__pxrReserved__::Ts_TypedSplineData<float>::RemoveKnotAtTime(const TsTime) [T = float]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Cannot remove nonexistent knot from SplineData");
  }
}

void sub_29A1C0D3C(uint64_t a1, double a2, double a3, uint64_t a4, char *a5)
{
  v5 = a2;
  v40 = a3;
  if (a3 < 0.0)
  {
    *&v42 = "ts/splineData.h";
    *(&v42 + 1) = "ApplyOffsetAndScale";
    *v43 = 461;
    *&v43[8] = "virtual void pxrInternal__aapl__pxrReserved__::Ts_TypedSplineData<float>::ApplyOffsetAndScale(const TsTime, const double) [T = float]";
    v43[16] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v42, "Applying negative scale to spline", a5);
    v5 = a2;
    a3 = v40;
  }

  v7 = (a1 + 16);
  if (*(a1 + 16) == 3)
  {
    *(a1 + 24) = *(a1 + 24) / a3;
  }

  v8 = (a1 + 32);
  if (*(a1 + 32) == 3)
  {
    *(a1 + 40) = *(a1 + 40) / a3;
  }

  if (a3 < 0.0)
  {
    v9 = *v7;
    *v7 = *v8;
    *v8 = v9;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  if (v11 > v10)
  {
    v12 = v10 * a3 + v5;
    v13 = v11 * a3 + v5;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    if (a3 < 0.0)
    {
      *(a1 + 48) = v13;
      *(a1 + 56) = v12;
      *(a1 + 64) = vrev64_s32(*(a1 + 64));
    }
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  if (v14 != v15)
  {
    v16 = *(a1 + 80);
    do
    {
      *v16 = *v16 * a3 + v5;
      ++v16;
    }

    while (v16 != v15);
  }

  if (a3 < 0.0 && v14 != v15)
  {
    v17 = v15 - 1;
    if (v17 > v14)
    {
      v18 = v14 + 8;
      do
      {
        v19 = *(v18 - 8);
        *(v18 - 8) = *v17;
        *v17-- = v19;
        v20 = v18 >= v17;
        v18 += 8;
      }

      while (!v20);
    }
  }

  v21 = *(a1 + 144);
  v22 = *(a1 + 152);
  if ((*(a1 + 8) & 2) != 0)
  {
    if (v21 != v22)
    {
      v38 = vdupq_lane_s64(*&v5, 0);
      do
      {
        sub_29A1C16EC(v21, v5, a3);
        v5 = a2;
        a3 = v40;
        *(v21 + 28) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(*(v21 + 28)), v40), v38));
        v21 += 48;
      }

      while (v21 != v22);
    }
  }

  else
  {
    for (; v21 != v22; v21 += 48)
    {
      sub_29A1C16EC(v21, v5, a3);
      v5 = a2;
      a3 = v40;
    }
  }

  if (a3 < 0.0)
  {
    v23 = *(a1 + 144);
    v24 = *(a1 + 152);
    if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 4) >= 2)
    {
      v25 = 0;
      v26 = 1;
      do
      {
        *(v23 + v25 + 24) = *(v23 + v25 + 24) & 0xF8 | *(v23 + v25 + 72) & 7;
        ++v26;
        v23 = *(a1 + 144);
        v24 = *(a1 + 152);
        v25 += 48;
      }

      while (v26 < 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 4));
    }

    v27 = (v24 - 48);
    if (v23 != v24 && v27 > v23)
    {
      v29 = v23 + 48;
      do
      {
        v30 = *(v29 - 48);
        v31 = *(v29 - 16);
        *v43 = *(v29 - 32);
        *&v43[16] = v31;
        v42 = v30;
        v32 = *v27;
        v33 = v27[1];
        *(v29 - 20) = *(v27 + 28);
        *(v29 - 48) = v32;
        *(v29 - 32) = v33;
        v34 = v42;
        v35 = *v43;
        *(v27 + 28) = *&v43[12];
        *v27 = v34;
        v27[1] = v35;
        v27 -= 3;
        v20 = v29 >= v27;
        v29 += 48;
      }

      while (!v20);
    }
  }

  if (*(a1 + 128))
  {
    v42 = 0u;
    *v43 = 0u;
    *&v43[16] = 1065353216;
    for (i = *(a1 + 120); i; a3 = v40)
    {
      v41[0] = *(i + 2) * a3 + v5;
      v44 = v41;
      v37 = sub_29A1BFB28(&v42, v41, &unk_29B4D6118, &v44);
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v37 + 3, i + 3);
      i = *i;
      v5 = a2;
    }

    sub_29A1C04D0(a1 + 104, &v42);
    sub_29A1B2944(&v42);
  }
}

void sub_29A1C105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1B2944(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A1C1070(uint64_t a1)
{
  v2 = *(a1 + 144);
  v1 = *(a1 + 152);
  if (v2 == v1)
  {
    return 0;
  }

  if (!*(a1 + 16) || !*(a1 + 32))
  {
    return 1;
  }

  v3 = v2 + 48;
  do
  {
    result = (*(v3 - 24) & 7) == 0;
    v5 = (*(v3 - 24) & 7) == 0 || v3 == v1;
    v3 += 48;
  }

  while (!v5);
  return result;
}

BOOL sub_29A1C10C0(uint64_t a1, double a2)
{
  v2 = *(a1 + 144);
  if (v2 == *(a1 + 152))
  {
    return 0;
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    v6 = *(a1 + 88);
  }

  else
  {
    v5 = v4 - v3;
    v6 = *(a1 + 80);
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v4 == v6)
  {
    v13 = *(a1 + 32);
    return v13 == 0;
  }

  if (*v6 != a2)
  {
    if (v3 != v6)
    {
      v12 = *(v2 + 48 * ((v6 - v3) >> 3) - 24);
      return (v12 & 7) == 0;
    }

    v13 = *(a1 + 16);
    return v13 == 0;
  }

  v12 = *(v2 + 48 * ((v6 - v3) >> 3) + 24);
  return (v12 & 7) == 0;
}

void *sub_29A1C1180(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A1C11FC(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8 - 4);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A1C11E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A1C11FC(void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    sub_29A00C9A4();
  }

  result = sub_29A08E058(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

BOOL sub_29A1C1248(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_29A1B7D10(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 48;
    v4 += 48;
  }

  while (v2 != v3);
  return result;
}

void sub_29A1C12BC(uint64_t a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A08E058(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[48 * v6];
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

__n128 *sub_29A1C137C(char **a1, __n128 *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    if (v13 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v14 = __src - v12;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 4);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v17 = 0x555555555555555;
    }

    else
    {
      v17 = v16;
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
    v38 = a1;
    if (v17)
    {
      v19 = sub_29A08E058(a1, v17);
    }

    else
    {
      v19 = 0;
    }

    v35 = v19;
    v36 = &v19[48 * v18];
    *&v37 = v36;
    *(&v37 + 1) = &v19[48 * v17];
    sub_29A1C15AC(&v35, a3);
    v22 = v36;
    memcpy(v37, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v36;
    *&v37 = v37 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = &v24[-(v4 - v23)];
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v37;
    *&v37 = v27;
    *(&v37 + 1) = v28;
    v35 = v27;
    v36 = v27;
    if (v27)
    {
      operator delete(v27);
    }

    return v22;
  }

  else if (__src == v6)
  {
    v20 = *a3;
    v21 = *(a3 + 32);
    v6[1] = *(a3 + 16);
    v6[2] = v21;
    *v6 = v20;
    a1[1] = &v6[3];
  }

  else
  {
    v8 = __src + 3;
    if (v6 < 0x30)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 3;
      v10 = v6[-3];
      v11 = v6[-1];
      v6[1] = v6[-2];
      v6[2] = v11;
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(v8, __src, v6 - v8 - 4);
      v9 = a1[1];
    }

    v29 = v9 <= a3 || v4 > a3;
    v30 = 48;
    if (v29)
    {
      v30 = 0;
    }

    v31 = (a3 + v30);
    v32 = *v31;
    v33 = *(v31 + 1);
    *(v4 + 28) = *(v31 + 28);
    *v4 = v32;
    v4[1] = v33;
  }

  return v4;
}

void sub_29A1C155C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A1C15AC(void **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 4);
      }

      v11 = v10 >> 2;
      v12 = sub_29A08E058(a1[4], v10);
      v14 = &v12[48 * v11];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = (v14 + v16);
        v17 = &v12[48 * v11];
        do
        {
          v18 = *v15;
          v19 = v15[2];
          *(v17 + 1) = v15[1];
          *(v17 + 2) = v19;
          *v17 = v18;
          v17 += 48;
          v15 += 3;
          v16 -= 48;
        }

        while (v16);
      }

      v20 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[48 * v13];
      if (v20)
      {
        operator delete(v20);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + 1) / -2;
      v8 = &v5[-3 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + 1) / 2)];
      v9 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-3 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + 1) / 2)], v5, v9 - 4);
        v5 = a1[1];
      }

      v4 = &v8[v9];
      a1[1] = &v5[3 * v7];
      a1[2] = &v8[v9];
    }
  }

  result = *a2;
  v22 = a2[2];
  v4[1] = a2[1];
  v4[2] = v22;
  *v4 = result;
  a1[2] = a1[2] + 48;
  return result;
}

double sub_29A1C16EC(uint64_t a1, double a2, double a3)
{
  *a1 = *a1 * a3 + a2;
  v3 = vmulq_n_f64(*(a1 + 8), fabs(a3));
  *(a1 + 8) = v3;
  v4 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*(a1 + 36)), vdupq_lane_s64(*&a3, 0)));
  *(a1 + 36) = v4;
  if (a3 < 0.0)
  {
    *(a1 + 8) = vextq_s8(v3, v3, 8uLL);
    *(a1 + 28) = vrev64_s32(*(a1 + 28));
    *v3.i8 = vrev64_s32(v4);
    *(a1 + 36) = v3.i64[0];
  }

  return *v3.i64;
}

void sub_29A1C174C(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(this);
}

void sub_29A1C1790(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(this);

  operator delete(v3);
}

uint64_t sub_29A1C17D8(uint64_t a1)
{
  if (*(a1 + 8))
  {

    return pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
  }

  else
  {
    v4[1] = v1;
    v4[2] = v2;
    pxrInternal__aapl__pxrReserved__::TfType::TfType(v4);
    return v4[0];
  }
}

char *sub_29A1C1820(uint64_t a1)
{
  v2 = operator new(0xA8uLL);
  *v2 = &unk_2A2045470;
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  *(v2 + 56) = *(a1 + 56);
  v3 = *(a1 + 80);
  *(v2 + 9) = *(a1 + 72);
  v4 = *(a1 + 8);
  *(v2 + 10) = 0;
  *(v2 + 8) = v4;
  v5 = *(a1 + 88);
  *(v2 + 11) = 0;
  *(v2 + 12) = 0;
  sub_29A00C8EC(v2 + 10, v3, v5, (v5 - v3) >> 3);
  sub_29A1BF534((v2 + 104), a1 + 104);
  *v2 = &unk_2A2045690;
  *(v2 + 19) = 0;
  *(v2 + 20) = 0;
  *(v2 + 18) = 0;
  sub_29A1C23C8(v2 + 18, *(a1 + 144), *(a1 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 152) - *(a1 + 144)) >> 3));
  return v2;
}

void sub_29A1C190C(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(v1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29A1C1948(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8) ^ *(a1 + 8)) & 0xF) != 0)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(a1 + 16, a2 + 16))
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(a1 + 32, a2 + 32))
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsLoopParams::operator!=(a1 + 48, a2 + 48))
  {
    return 0;
  }

  if (!sub_29A1BF9FC(a1 + 104, (a2 + 104)))
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_29A1C2444((a1 + 144), v4 + 18);
}

void sub_29A1C1A34(uint64_t a1, unint64_t a2)
{
  sub_29A08AF9C(a1 + 80, a2);

  sub_29A1C24B8(a1 + 144, a2);
}

const void ****sub_29A1C1A78(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  sub_29A08B03C((a1 + 80), a2);
  sub_29A1B33FC(a1 + 144, a2);
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::empty(a3);
  if ((result & 1) == 0)
  {
    v8 = a2;
    v7 = sub_29A1BFB28(a1 + 104, a2, &unk_29B4D6118, &v8);
    return pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v7 + 3, a3);
  }

  return result;
}

uint64_t sub_29A1C1AFC(void *a1, unint64_t a2, const void ****this)
{
  v7 = a1[10];
  v8 = a1[11];
  v6 = a1 + 10;
  if (v8 == v7)
  {
    v11 = v8;
  }

  else
  {
    v9 = (v8 - v7) >> 3;
    v10 = *a2;
    v11 = v7;
    do
    {
      v12 = v9 >> 1;
      v13 = &v11[8 * (v9 >> 1)];
      v15 = *v13;
      v14 = (v13 + 1);
      v9 += ~(v9 >> 1);
      if (v15 < v10)
      {
        v11 = v14;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v9);
  }

  v16 = (v11 - v7) >> 3;
  if (v8 == v11 || *v11 != *a2)
  {
    sub_29A1BFD8C(v6, v11, a2);
    sub_29A1C2578(a1 + 18, (a1[18] + 40 * v16), a2);
  }

  else
  {
    *v11 = *a2;
    v17 = a1[18] + 40 * v16;
    v18 = *a2;
    v19 = *(a2 + 16);
    *(v17 + 32) = *(a2 + 32);
    *v17 = v18;
    *(v17 + 16) = v19;
  }

  if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(this))
  {
    v22 = a2;
    v20 = sub_29A1BFB28((a1 + 13), a2, &unk_29B4D6118, &v22);
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v20 + 3, this);
  }

  return v16;
}

__n128 sub_29A1C1C1C(uint64_t a1, uint64_t a2)
{
  v4 = operator new(0x28uLL);
  v5 = *(a1 + 144) + 40 * a2;
  result = *v5;
  v7 = *(v5 + 16);
  *v4 = *v5;
  v4[1] = v7;
  *(v4 + 4) = *(v5 + 32);
  return result;
}

__n128 sub_29A1C1C6C(void *a1, __n128 result)
{
  v2 = a1[10];
  v3 = a1[11];
  if (v3 == v2)
  {
    v5 = a1[11];
  }

  else
  {
    v4 = v3 - v2;
    v5 = a1[10];
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[v4 >> 1];
      v9 = *v7;
      v8 = v7 + 1;
      v4 += ~(v4 >> 1);
      if (v9 < result.n128_f64[0])
      {
        v5 = v8;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 != v5 && *v5 == result.n128_f64[0])
  {
    v10 = a1[18] + 40 * ((v5 - v2) >> 3);
    v11 = operator new(0x28uLL);
    result = *v10;
    v12 = *(v10 + 16);
    *v11 = *v10;
    v11[1] = v12;
    *(v11 + 4) = *(v10 + 32);
  }

  return result;
}

double sub_29A1C1D24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 144) + 40 * a2;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(a3);
  v5 = *v4;
  *(a3 + 9) = *(v4 + 9);
  *a3 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v4 + 28)];
  *(a3 + 32) = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v4 + 26)];
  *(a3 + 40) = v6;
  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v4 + 30)];
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v4 + 32)];
  *(a3 + 48) = result;
  *(a3 + 56) = v8;
  return result;
}

void sub_29A1C1DA8(void *a1, double a2)
{
  v18 = a2;
  v4 = a1[10];
  v3 = a1[11];
  if (v3 == v4)
  {
    v6 = a1[11];
  }

  else
  {
    v5 = v3 - v4;
    v6 = a1[10];
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v3 != v6 && *v6 == a2)
  {
    v11 = v6 - v4;
    v12 = v3 - (v6 + 1);
    if (v3 != v6 + 1)
    {
      memmove(v6, v6 + 1, v3 - (v6 + 1));
    }

    a1[11] = v6 + v12;
    sub_29A1C036C(a1 + 13, &v18);
    v13 = a1[19];
    v14 = a1[18] + 40 * v11;
    v15 = v13 - (v14 + 40);
    if (v13 != v14 + 40)
    {
      memmove((a1[18] + 40 * v11), (v14 + 40), v15 - 6);
    }

    a1[19] = v14 + v15;
  }

  else
  {
    v16[0] = "ts/splineData.h";
    v16[1] = "RemoveKnotAtTime";
    v16[2] = 379;
    v16[3] = "virtual void pxrInternal__aapl__pxrReserved__::Ts_TypedSplineData<pxrInternal__aapl__pxrReserved__::pxr_half::half>::RemoveKnotAtTime(const TsTime) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Cannot remove nonexistent knot from SplineData");
  }
}

void sub_29A1C1ED4(uint64_t a1, double a2, double a3, uint64_t a4, char *a5)
{
  if (a3 < 0.0)
  {
    *&v44 = "ts/splineData.h";
    *(&v44 + 1) = "ApplyOffsetAndScale";
    *&v45 = 461;
    *(&v45 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::Ts_TypedSplineData<pxrInternal__aapl__pxrReserved__::pxr_half::half>::ApplyOffsetAndScale(const TsTime, const double) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(v46) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v44, "Applying negative scale to spline", a5);
  }

  v8 = (a1 + 16);
  if (*(a1 + 16) == 3)
  {
    *(a1 + 24) = *(a1 + 24) / a3;
  }

  v9 = (a1 + 32);
  if (*(a1 + 32) == 3)
  {
    *(a1 + 40) = *(a1 + 40) / a3;
  }

  if (a3 < 0.0)
  {
    v10 = *v8;
    *v8 = *v9;
    *v9 = v10;
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  if (v12 > v11)
  {
    v13 = v11 * a3 + a2;
    v14 = v12 * a3 + a2;
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    if (a3 < 0.0)
    {
      *(a1 + 48) = v14;
      *(a1 + 56) = v13;
      *(a1 + 64) = vrev64_s32(*(a1 + 64));
    }
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  if (v15 != v16)
  {
    v17 = *(a1 + 80);
    do
    {
      *v17 = *v17 * a3 + a2;
      ++v17;
    }

    while (v17 != v16);
  }

  if (a3 < 0.0 && v15 != v16)
  {
    v18 = v16 - 1;
    if (v18 > v15)
    {
      v19 = v15 + 8;
      do
      {
        v20 = *(v19 - 8);
        *(v19 - 8) = *v18;
        *v18-- = v20;
        v21 = v19 >= v18;
        v19 += 8;
      }

      while (!v21);
    }
  }

  v22 = *(a1 + 144);
  v23 = *(a1 + 152);
  if ((*(a1 + 8) & 2) != 0)
  {
    for (; v22 != v23; v22 += 40)
    {
      sub_29A1C28F0(v22, a2, a3);
      v24 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v22 + 26)] * a3 + a2;
      if (v24 == 0.0)
      {
        v25 = HIWORD(LODWORD(v24));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v24) >> 23])
      {
        v25 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v24) >> 23] + (((LODWORD(v24) & 0x7FFFFF) + ((LODWORD(v24) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v25) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v24));
      }

      *(v22 + 26) = v25;
      v26 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v22 + 28)] * a3 + a2;
      if (v26 == 0.0)
      {
        v27 = HIWORD(LODWORD(v26));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v26) >> 23])
      {
        v27 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v26) >> 23] + (((LODWORD(v26) & 0x7FFFFF) + ((LODWORD(v26) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v27) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v26));
      }

      *(v22 + 28) = v27;
    }
  }

  else
  {
    for (; v22 != v23; v22 += 40)
    {
      sub_29A1C28F0(v22, a2, a3);
    }
  }

  if (a3 < 0.0)
  {
    v28 = *(a1 + 144);
    v29 = *(a1 + 152);
    if (0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3) >= 2)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        *(v28 + v30 + 24) = *(v28 + v30 + 24) & 0xF8 | *(v28 + v30 + 64) & 7;
        ++v31;
        v28 = *(a1 + 144);
        v29 = *(a1 + 152);
        v30 += 40;
      }

      while (v31 < 0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    }

    v32 = (v29 - 40);
    if (v28 != v29 && v32 > v28)
    {
      v34 = v28 + 40;
      do
      {
        v35 = *(v34 - 40);
        v36 = *(v34 - 24);
        v46 = *(v34 - 8);
        v44 = v35;
        v45 = v36;
        v37 = *v32;
        v38 = v32[1];
        *(v34 - 8) = *(v32 + 16);
        *(v34 - 24) = v38;
        *(v34 - 40) = v37;
        v39 = v44;
        v40 = v45;
        *(v32 + 16) = v46;
        *v32 = v39;
        v32[1] = v40;
        v32 = (v32 - 40);
        v21 = v34 >= v32;
        v34 += 40;
      }

      while (!v21);
    }
  }

  if (*(a1 + 128))
  {
    v44 = 0u;
    v45 = 0u;
    LODWORD(v46) = 1065353216;
    for (i = *(a1 + 120); i; i = *i)
    {
      v43[0] = *(i + 2) * a3 + a2;
      v47 = v43;
      v42 = sub_29A1BFB28(&v44, v43, &unk_29B4D6118, &v47);
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v42 + 3, i + 3);
    }

    sub_29A1C04D0(a1 + 104, &v44);
    sub_29A1B2944(&v44);
  }
}

void sub_29A1C22A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1B2944(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A1C22B8(uint64_t a1)
{
  v2 = *(a1 + 144);
  v1 = *(a1 + 152);
  if (v2 == v1)
  {
    return 0;
  }

  if (!*(a1 + 16) || !*(a1 + 32))
  {
    return 1;
  }

  v3 = v2 + 40;
  do
  {
    result = (*(v3 - 16) & 7) == 0;
    v5 = (*(v3 - 16) & 7) == 0 || v3 == v1;
    v3 += 40;
  }

  while (!v5);
  return result;
}

BOOL sub_29A1C2308(uint64_t a1, double a2)
{
  v2 = *(a1 + 144);
  if (v2 == *(a1 + 152))
  {
    return 0;
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    v6 = *(a1 + 88);
  }

  else
  {
    v5 = v4 - v3;
    v6 = *(a1 + 80);
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v4 == v6)
  {
    v13 = *(a1 + 32);
    return v13 == 0;
  }

  if (*v6 != a2)
  {
    if (v3 != v6)
    {
      v12 = *(v2 + 40 * ((v6 - v3) >> 3) - 16);
      return (v12 & 7) == 0;
    }

    v13 = *(a1 + 16);
    return v13 == 0;
  }

  v12 = *(v2 + 40 * ((v6 - v3) >> 3) + 24);
  return (v12 & 7) == 0;
}

void *sub_29A1C23C8(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A10E7C8(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8 - 6);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A1C2428(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A1C2444(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_29A1B8110(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 40;
    v4 += 40;
  }

  while (v2 != v3);
  return result;
}

void sub_29A1C24B8(uint64_t a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    if (a2 >= 0x666666666666667)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A10E224(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[40 * v6];
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

char *sub_29A1C2578(void *a1, char *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0xCCCCCCCCCCCCCCCDLL * (&v6[-*a1] >> 3) + 1;
    if (v13 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v14 = __src - v12;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v12) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * (&v6[-*a1] >> 3) + 1;
    }

    if (v15 >= 0x333333333333333)
    {
      v17 = 0x666666666666666;
    }

    else
    {
      v17 = v16;
    }

    v18 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3);
    v38 = a1;
    if (v17)
    {
      v19 = sub_29A10E224(a1, v17);
    }

    else
    {
      v19 = 0;
    }

    v35 = v19;
    v36 = &v19[40 * v18];
    *&v37 = v36;
    *(&v37 + 1) = &v19[40 * v17];
    sub_29A1C27AC(&v35, a3);
    v22 = v36;
    memcpy(v37, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v36;
    *&v37 = v37 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = &v24[-(v4 - v23)];
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v37;
    *&v37 = v27;
    *(&v37 + 1) = v28;
    v35 = v27;
    v36 = v27;
    if (v27)
    {
      operator delete(v27);
    }

    return v22;
  }

  else if (__src == v6)
  {
    v20 = *a3;
    v21 = *(a3 + 16);
    *(v6 + 4) = *(a3 + 32);
    *v6 = v20;
    *(v6 + 1) = v21;
    a1[1] = v6 + 40;
  }

  else
  {
    v8 = __src + 40;
    if (v6 < 0x28)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 40;
      v10 = *(v6 - 40);
      v11 = *(v6 - 24);
      *(v6 + 4) = *(v6 - 1);
      *v6 = v10;
      *(v6 + 1) = v11;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(v8, __src, v6 - v8 - 6);
      v9 = a1[1];
    }

    v29 = v9 <= a3 || v4 > a3;
    v30 = 40;
    if (v29)
    {
      v30 = 0;
    }

    v31 = a3 + v30;
    v32 = *v31;
    v33 = *(v31 + 16);
    *(v4 + 16) = *(v31 + 32);
    *v4 = v32;
    v4[1] = v33;
  }

  return v4;
}

void sub_29A1C275C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A1C27AC(void **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x999999999999999ALL * ((v4 - *a1) >> 3);
      }

      v11 = v10 >> 2;
      v12 = sub_29A10E224(a1[4], v10);
      v14 = &v12[40 * v11];
      v15 = a1[1];
      v4 = v14;
      v16 = (a1[2] - v15);
      if (v16)
      {
        v4 = &v16[v14];
        v17 = &v12[40 * v11];
        do
        {
          v18 = *v15;
          v19 = *(v15 + 1);
          *(v17 + 4) = *(v15 + 4);
          *v17 = v18;
          *(v17 + 1) = v19;
          v17 += 40;
          v15 += 40;
          v16 -= 40;
        }

        while (v16);
      }

      v20 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[40 * v13];
      if (v20)
      {
        operator delete(v20);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = (0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + 1) / -2;
      v8 = v5 - 40 * ((0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + 1) / 2);
      v9 = v4 - v5;
      if (v4 != v5)
      {
        memmove(v5 - 40 * ((0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + 1) / 2), v5, v9 - 6);
        v5 = a1[1];
      }

      v4 = &v8[v9];
      a1[1] = v5 + 40 * v7;
      a1[2] = &v8[v9];
    }
  }

  result = *a2;
  v22 = a2[1];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  *v4 = result;
  v4[1] = v22;
  a1[2] = a1[2] + 40;
  return result;
}

uint64_t sub_29A1C28F0(uint64_t a1, double a2, double a3)
{
  *a1 = *a1 * a3 + a2;
  *(a1 + 8) = vmulq_n_f64(*(a1 + 8), fabs(a3));
  v5 = a3;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1 + 30)] / v5;
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  *(a1 + 30) = v7;
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1 + 32)] / v5;
  if (v8 == 0.0)
  {
    result = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  *(a1 + 32) = result;
  if (a3 < 0.0)
  {
    *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
    HIDWORD(v10) = *(a1 + 26);
    LODWORD(v10) = HIDWORD(v10);
    *(a1 + 26) = v10 >> 16;
    v11 = *(a1 + 30);
    *(a1 + 30) = result;
    *(a1 + 32) = v11;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_ConvertToStandardHelper<double>(int a1, int a2, int a3, double *a4, double *a5, double a6, double a7)
{
  if ((a1 & 1) != 0 || a2)
  {
    v7 = a6 / 3.0;
    if (a2)
    {
      v8 = a6 / 3.0;
    }

    else
    {
      v8 = a6;
    }

    if (a1)
    {
      v7 = v8;
    }

    else
    {
      a6 = 3.0;
    }

    v9 = a7 / a6;
    a7 = 1.79769313e308;
    if (v9 <= 1.79769313e308)
    {
      if (v9 >= -1.79769313e308)
      {
        a7 = v9;
      }

      else
      {
        a7 = -1.79769313e308;
      }
    }
  }

  else
  {
    v7 = a6;
  }

  v10 = -a7;
  if (!a3)
  {
    v10 = a7;
  }

  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = v10;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_ConvertToStandardHelper<float>(int a1, int a2, int a3, double *a4, float *a5, double a6, float a7)
{
  if ((a1 & 1) != 0 || a2)
  {
    v8 = a7;
    v7 = a6 / 3.0;
    if (a2)
    {
      v9 = a6 / 3.0;
    }

    else
    {
      v9 = a6;
    }

    if (a1)
    {
      v7 = v9;
    }

    else
    {
      a6 = 3.0;
    }

    v10 = v8 / a6;
    v11 = 3.40282347e38;
    if (v10 <= 3.40282347e38)
    {
      v11 = v10;
      if (v10 < -3.40282347e38)
      {
        v11 = -3.40282347e38;
      }
    }

    a7 = v11;
  }

  else
  {
    v7 = a6;
  }

  v12 = -a7;
  if (!a3)
  {
    v12 = a7;
  }

  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_ConvertToStandardHelper<pxrInternal__aapl__pxrReserved__::pxr_half::half>(unsigned int a1, int a2, int a3, int a4, double *a5, _WORD *a6, double a7)
{
  v10 = a7;
  if ((a2 & 1) != 0 || a3)
  {
    v11 = 3.0;
    if (a3)
    {
      v12 = a7 / 3.0;
    }

    else
    {
      v12 = a7;
    }

    if (a2)
    {
      v11 = a7;
      v10 = v12;
    }

    else
    {
      v10 = a7 / 3.0;
    }

    v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1] / v11;
    v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1C2C50()];
    v15 = sub_29A1C2C50();
    if (v13 <= v14)
    {
      if (v13 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v15 ^ 0x8000])
      {
        goto LABEL_13;
      }

      v15 = sub_29A1C2C50() ^ 0x8000;
    }

    v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v15];
LABEL_13:
    v16 = v13;
    if (v16 == 0.0)
    {
      a1 = HIWORD(LODWORD(v16));
    }

    else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v16) >> 23])
    {
      a1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v16) >> 23] + (((LODWORD(v16) & 0x7FFFFF) + ((LODWORD(v16) >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(a1) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v16));
    }
  }

  v17 = a1 ^ 0x8000;
  if (!a4)
  {
    v17 = a1;
  }

  if (a5)
  {
    *a5 = v10;
  }

  if (a6)
  {
    *a6 = v17;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_ConvertFromStandardHelper<double>(int a1, int a2, int a3, double *a4, double *a5, double a6, double a7)
{
  if ((a1 & 1) != 0 || a2)
  {
    if (a1)
    {
      if (a2)
      {
        a6 = a6 * 3.0;
      }

      v7 = a6 * a7;
    }

    else
    {
      v7 = a7 * 3.0;
      a6 = a6 * 3.0;
    }

    a7 = 1.79769313e308;
    if (v7 <= 1.79769313e308)
    {
      if (v7 >= -1.79769313e308)
      {
        a7 = v7;
      }

      else
      {
        a7 = -1.79769313e308;
      }
    }
  }

  if (a3)
  {
    a7 = -a7;
  }

  if (a4)
  {
    *a4 = a6;
  }

  if (a5)
  {
    *a5 = a7;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_ConvertFromStandardHelper<float>(int a1, int a2, int a3, double *a4, float *a5, double a6, float a7)
{
  if ((a1 & 1) != 0 || a2)
  {
    v7 = a7;
    if (a1)
    {
      if (a2)
      {
        a6 = a6 * 3.0;
      }

      v8 = a6 * v7;
    }

    else
    {
      v8 = v7 * 3.0;
      a6 = a6 * 3.0;
    }

    v9 = 3.40282347e38;
    if (v8 <= 3.40282347e38)
    {
      v9 = v8;
      if (v8 < -3.40282347e38)
      {
        v9 = -3.40282347e38;
      }
    }

    a7 = v9;
  }

  if (a3)
  {
    a7 = -a7;
  }

  if (a4)
  {
    *a4 = a6;
  }

  if (a5)
  {
    *a5 = a7;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_ConvertFromStandardHelper<pxrInternal__aapl__pxrReserved__::pxr_half::half>(unsigned int a1, int a2, int a3, int a4, double *a5, _WORD *a6, double a7)
{
  if ((a2 & 1) != 0 || a3)
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
    v12 = v11 * 3.0;
    if (a3)
    {
      v13 = a7 * 3.0;
    }

    else
    {
      v13 = a7;
    }

    v14 = v13 * v11;
    if (a2)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (a2)
    {
      a7 = v13;
    }

    else
    {
      a7 = a7 * 3.0;
    }

    v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1C2C50()];
    v17 = sub_29A1C2C50();
    if (v15 <= v16)
    {
      if (v15 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v17 ^ 0x8000])
      {
        goto LABEL_16;
      }

      v17 = sub_29A1C2C50() ^ 0x8000;
    }

    v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v17];
LABEL_16:
    v18 = v15;
    if (v18 == 0.0)
    {
      a1 = HIWORD(LODWORD(v18));
    }

    else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23])
    {
      a1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v18) >> 23] + (((LODWORD(v18) & 0x7FFFFF) + ((LODWORD(v18) >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(a1) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v18));
    }
  }

  v19 = a1 ^ 0x8000;
  if (!a4)
  {
    v19 = a1;
  }

  if (a5)
  {
    *a5 = a7;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsConvertToStandardTangent(pxrInternal__aapl__pxrReserved__ *this, double a2, const std::type_info *a3, int a4, int a5, void *a6, double *a7, pxrInternal__aapl__pxrReserved__::VtValue *a8)
{
  v12 = a3;
  v40 = *MEMORY[0x29EDCA608];
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(this, a3);
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == Type)
  {
    sub_29A186EF4(&v35, this);
    if ((v36 & 4) != 0)
    {
      v17 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
    }

    else
    {
      v17 = &v35;
    }

    v18 = *v17;
    if ((v12 & 1) != 0 || a4)
    {
      v22 = 3.0;
      v16.n128_f64[0] = a2 / 3.0;
      if (a4)
      {
        v23 = a2 / 3.0;
      }

      else
      {
        v23 = a2;
      }

      if (v12)
      {
        v16.n128_f64[0] = v23;
        v22 = a2;
      }

      v24 = v18 / v22;
      v18 = 1.79769313e308;
      if (v24 <= 1.79769313e308)
      {
        if (v24 >= -1.79769313e308)
        {
          v18 = v24;
        }

        else
        {
          v18 = -1.79769313e308;
        }
      }
    }

    else
    {
      v16.n128_f64[0] = a2;
    }

    if (a5)
    {
      v32 = -v18;
    }

    else
    {
      v32 = v18;
    }

    if (a6)
    {
      *a6 = v16.n128_u64[0];
    }

    if (a7)
    {
      v33 = *(a7 + 1);
      if (v33 && (a7[1] & 3) != 3)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 32))(a7, v16);
      }

      *(a7 + 1) = &unk_2A2044D1B;
      *a7 = v32;
    }

LABEL_56:
    sub_29A186B14(&v35);
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == Type)
  {
    sub_29A186EF4(&v35, this);
    if ((v36 & 4) != 0)
    {
      v20 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
    }

    else
    {
      v20 = &v35;
    }

    v21 = *v20;
    if ((v12 & 1) != 0 || a4)
    {
      v25 = v21;
      v26 = 3.0;
      v19.n128_f64[0] = a2 / 3.0;
      if (a4)
      {
        v27 = a2 / 3.0;
      }

      else
      {
        v27 = a2;
      }

      if (v12)
      {
        v19.n128_f64[0] = v27;
        v26 = a2;
      }

      v28 = v25 / v26;
      v29 = 3.40282347e38;
      if (v28 <= 3.40282347e38)
      {
        v29 = v28;
        if (v28 < -3.40282347e38)
        {
          v29 = -3.40282347e38;
        }
      }

      v21 = v29;
    }

    else
    {
      v19.n128_f64[0] = a2;
    }

    if (a5)
    {
      v30 = -v21;
    }

    else
    {
      v30 = v21;
    }

    if (a6)
    {
      *a6 = v19.n128_u64[0];
    }

    if (a7)
    {
      v31 = *(a7 + 1);
      if (v31 && (a7[1] & 3) != 3)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 32))(a7, v19);
      }

      *(a7 + 1) = &unk_2A2044C63;
      *a7 = v30;
    }

    goto LABEL_56;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == Type)
  {
    sub_29A186EF4(&v35, this);
    if ((v36 & 4) != 0)
    {
      (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
    }

    pxrInternal__aapl__pxrReserved__::Ts_ConvertToStandardHelper<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
  }

  v35 = "ts/valueTypeDispatch.h";
  v36 = "TsDispatchToValueTypeTemplate";
  v37 = 64;
  v38 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_VtConvertToStandardHelper, Args = <double &, const pxrInternal__aapl__pxrReserved__::VtValue &, BOOL &, BOOL &, BOOL &, double *&, pxrInternal__aapl__pxrReserved__::VtValue *&, BOOL *>]";
  v39 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Unsupported spline value type");
  return 1;
}

void sub_29A1C3230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsConvertFromStandardTangent(pxrInternal__aapl__pxrReserved__ *this, double a2, const std::type_info *a3, int a4, int a5, double *a6, double *a7, pxrInternal__aapl__pxrReserved__::VtValue *a8)
{
  v12 = a3;
  v39 = *MEMORY[0x29EDCA608];
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(this, a3);
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == Type)
  {
    sub_29A186EF4(&v34, this);
    if ((v35 & 4) != 0)
    {
      v16 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
    }

    else
    {
      v16 = &v34;
    }

    v17 = *v16;
    if ((v12 & 1) != 0 || a4)
    {
      v18 = v17 * 3.0;
      v19 = a4 ? a2 * 3.0 : a2;
      v20 = v19 * v17;
      a2 = v12 ? v19 : a2 * 3.0;
      v21 = v12 ? v20 : v18;
      v17 = 1.79769313e308;
      if (v21 <= 1.79769313e308)
      {
        if (v21 >= -1.79769313e308)
        {
          v17 = v21;
        }

        else
        {
          v17 = -1.79769313e308;
        }
      }
    }

    if (a5)
    {
      v31 = -v17;
    }

    else
    {
      v31 = v17;
    }

    if (a6)
    {
      *a6 = a2;
    }

    if (a7)
    {
      v32 = *(a7 + 1);
      if (v32 && (a7[1] & 3) != 3)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 32))(a7);
      }

      *(a7 + 1) = &unk_2A2044D1B;
      *a7 = v31;
    }

LABEL_61:
    sub_29A186B14(&v34);
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == Type)
  {
    sub_29A186EF4(&v34, this);
    if ((v35 & 4) != 0)
    {
      v22 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
    }

    else
    {
      v22 = &v34;
    }

    v23 = *v22;
    if ((v12 & 1) != 0 || a4)
    {
      v24 = v23;
      v25 = v24 * 3.0;
      if (a4)
      {
        v26 = a2 * 3.0;
      }

      else
      {
        v26 = a2;
      }

      v27 = v26 * v24;
      if (v12)
      {
        a2 = v26;
      }

      else
      {
        a2 = a2 * 3.0;
      }

      if (!v12)
      {
        v27 = v25;
      }

      v28 = 3.40282347e38;
      if (v27 <= 3.40282347e38)
      {
        v28 = v27;
        if (v27 < -3.40282347e38)
        {
          v28 = -3.40282347e38;
        }
      }

      v23 = v28;
    }

    if (a5)
    {
      v29 = -v23;
    }

    else
    {
      v29 = v23;
    }

    if (a6)
    {
      *a6 = a2;
    }

    if (a7)
    {
      v30 = *(a7 + 1);
      if (v30 && (a7[1] & 3) != 3)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 32))(a7);
      }

      *(a7 + 1) = &unk_2A2044C63;
      *a7 = v29;
    }

    goto LABEL_61;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == Type)
  {
    sub_29A186EF4(&v34, this);
    if ((v35 & 4) != 0)
    {
      (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
    }

    pxrInternal__aapl__pxrReserved__::Ts_ConvertFromStandardHelper<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
  }

  v34 = "ts/valueTypeDispatch.h";
  v35 = "TsDispatchToValueTypeTemplate";
  v36 = 64;
  v37 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_VtConvertFromStandardHelper, Args = <double &, const pxrInternal__aapl__pxrReserved__::VtValue &, BOOL &, BOOL &, BOOL &, double *&, pxrInternal__aapl__pxrReserved__::VtValue *&, BOOL *>]";
  v38 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v34, 1, "Unsupported spline value type");
  return 1;
}

void sub_29A1C35BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_GetType<double>()
{
  if ((atomic_load_explicit(&qword_2A173F4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F4C0))
  {
    qword_2A173F4B8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94B8], v1);
    __cxa_guard_release(&qword_2A173F4C0);
  }

  return qword_2A173F4B8;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_GetType<float>()
{
  if ((atomic_load_explicit(&qword_2A173F4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F4D0))
  {
    qword_2A173F4C8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94C0], v1);
    __cxa_guard_release(&qword_2A173F4D0);
  }

  return qword_2A173F4C8;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>()
{
  if ((atomic_load_explicit(&qword_2A173F4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F4E0))
  {
    qword_2A173F4D8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040768, v1);
    __cxa_guard_release(&qword_2A173F4E0);
  }

  return qword_2A173F4D8;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_GetTypeFromTypeName(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 6 && **a1 == 1651863396 && *(*a1 + 4) == 25964)
    {
LABEL_32:

      return pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
    }

    if (a1[1] == 5 && **a1 == 1634692198 && *(*a1 + 4) == 116)
    {
      goto LABEL_35;
    }

    if (a1[1] != 4)
    {
LABEL_31:
      v9[1] = v1;
      v9[2] = v2;
      pxrInternal__aapl__pxrReserved__::TfType::TfType(v9);
      return v9[0];
    }

    a1 = *a1;
  }

  else
  {
    v3 = *(a1 + 23);
    if (v3 != 4)
    {
      if (v3 != 5)
      {
        if (v3 != 6)
        {
          goto LABEL_31;
        }

        if (*a1 != 1651863396 || *(a1 + 2) != 25964)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (*a1 != 1634692198 || *(a1 + 4) != 116)
      {
        goto LABEL_31;
      }

LABEL_35:

      return pxrInternal__aapl__pxrReserved__::Ts_GetType<float>();
    }
  }

  if (*a1 != 1718378856)
  {
    goto LABEL_31;
  }

  return pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
}

void *pxrInternal__aapl__pxrReserved__::Ts_GetTypeNameFromType@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == a1)
  {
    v4 = "double";
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == a1)
  {
    v4 = "float";
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == a1)
  {
    v4 = "half";
  }

  else
  {
    v4 = "";
  }

  return sub_29A008E78(a2, v4);
}

void sub_29A1C3938()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2044FD8, 0, "TsInterpValueBlock", "Value Block");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2044FD8, 1, "TsInterpHeld", "Held");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2044FD8, 2, "TsInterpLinear", "Linear");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2044FD8, 3, "TsInterpCurve", "Curve");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2044FC8, 0, "TsCurveTypeBezier", "Bezier");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2044FC8, 1, "TsCurveTypeHermite", "Hermite");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 0, "TsExtrapValueBlock", "Value Block");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 1, "TsExtrapHeld", "Held");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 2, "TsExtrapLinear", "Linear");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 3, "TsExtrapSloped", "Sloped");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 4, "TsExtrapLoopRepeat", "Loop Repeat");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 5, "TsExtrapLoopReset", "Loop Reset");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045260, 6, "TsExtrapLoopOscillate", "Loop Oscillate");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045738, 0, "TsAntiRegressionNone", "None");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045738, 1, "TsAntiRegressionContain", "Contain");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045738, 2, "TsAntiRegressionKeepRatio", "Keep Ratio");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045738, 3, "TsAntiRegressionKeepStart", "Keep Start");
}

double *pxrInternal__aapl__pxrReserved__::TsLoopParams::GetPrototypeInterval@<X0>(double *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 1);
  *a2 = *this;
  *(a2 + 8) = fabs(v2) != INFINITY;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsLoopParams::GetLoopedInterval@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v2 = *(this + 8);
  v4 = v2 - *this;
  v5 = v4 * *(this + 16);
  v6 = v2 + v4 * *(this + 20);
  *a2 = *this - v5;
  *(a2 + 8) = vabdd_f64(v3, v5) != INFINITY;
  *(a2 + 16) = v6;
  *(a2 + 24) = fabs(v6) != INFINITY;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(uint64_t this)
{
  *this = 1;
  *(this + 8) = 0;
  return this;
}

{
  *this = 1;
  *(this + 8) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(uint64_t result, int a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*a1 == 3)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 1;
}

BOOL pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (*a1 == 3)
  {
    return *(a1 + 8) != *(a2 + 8);
  }

  return 0;
}

void sub_29A1C3D24()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045748, 0, "AR_RESOLVER_INIT", 0);
  v0 = sub_29A1C3D80();

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "AR_RESOLVER_INIT", "Print debug output during asset resolver initialization");
}

uint64_t sub_29A1C3D80()
{
  if ((atomic_load_explicit(&qword_2A14F6968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F6968))
  {
    v1 = operator new(4uLL);
    *v1 = 0;
    qword_2A14F6960 = v1;
    __cxa_guard_release(&qword_2A14F6968);
  }

  return qword_2A14F6960;
}

double pxrInternal__aapl__pxrReserved__::ArAsset::GetDetachedAsset@<D0>(pxrInternal__aapl__pxrReserved__::ArAsset *this@<X0>, const pxrInternal__aapl__pxrReserved__::ArAsset *a2@<X1>, _OWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::FromAsset(this, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 == v4)
  {
    v6 = a2;
    v7 = a1;
    if (v2 < 0)
    {
      a1 = *a1;
    }

    if (v5 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(a1, a2, v3))
    {
      v8 = *(v7 + 47);
      if (v8 >= 0)
      {
        v9 = *(v7 + 47);
      }

      else
      {
        v9 = v7[4];
      }

      v10 = *(v6 + 47);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = v6[4];
      }

      if (v9 == v10)
      {
        v12 = v8 >= 0 ? v7 + 3 : v7[3];
        v13 = v11 >= 0 ? v6 + 3 : v6[3];
        if (!memcmp(v12, v13, v9))
        {
          v14 = *(v7 + 71);
          if (v14 >= 0)
          {
            v15 = *(v7 + 71);
          }

          else
          {
            v15 = v7[7];
          }

          v16 = *(v6 + 71);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = v6[7];
          }

          if (v15 == v16)
          {
            v18 = v14 >= 0 ? v7 + 6 : v7[6];
            v19 = v17 >= 0 ? v6 + 6 : v6[6];
            if (!memcmp(v18, v19, v15))
            {

              pxrInternal__aapl__pxrReserved__::VtValue::operator==();
            }
          }
        }
      }
    }
  }

  return 0;
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 == v4)
  {
    if (v2 < 0)
    {
      a1 = *a1;
    }

    if (v5 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(a1, a2, v3))
    {
      pxrInternal__aapl__pxrReserved__::ArResolvedPath::operator==();
    }
  }

  return 0;
}

{
  if ((*a2 ^ *a1) <= 7 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

  return 0;
}

{
  if (*a1 != *a2 || (a2[1] ^ a1[1]) > 7 || a1[4] != a2[4])
  {
    return 0;
  }

  v2 = a1[2];
  if (v2 == a1 + 3)
  {
    return 1;
  }

  if ((*(a2[2] + 32) ^ v2[4]) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

  return 0;
}

{
  if ((*a2 ^ *a1) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator!=(void *a1, void *a2)
{
  return pxrInternal__aapl__pxrReserved__::operator==(a1, a2) ^ 1;
}

{
  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::operator==(a1, a2) ^ 1;
}

{
  return pxrInternal__aapl__pxrReserved__::operator==(a1, a2) ^ 1;
}

{
  return pxrInternal__aapl__pxrReserved__::operator==(a1, a2) ^ 1;
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::SetDefaultSearchPath(uint64_t a1)
{
  v6[5] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::ArDefaultResolverContext(&v3, a1);
  v1 = atomic_load(&qword_2A173F4E8);
  if (!v1)
  {
    v1 = sub_29A1C50D8(&qword_2A173F4E8);
  }

  if (!pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::operator==(&v3, v1))
  {
    v2 = atomic_load(&qword_2A173F4E8);
    if (!v2)
    {
      v2 = sub_29A1C50D8(&qword_2A173F4E8);
    }

    sub_29A095FDC(v2);
    *v2 = v3;
    *(v2 + 16) = v4;
    v3 = 0uLL;
    v4 = 0;
    v5[0] = &unk_2A20458E0;
    v5[3] = v5;
    pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::ResolverChanged(v6, v5);
    pxrInternal__aapl__pxrReserved__::TfNotice::Send(v6);
    pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::~ResolverChanged(v6);
    sub_29A1C5478(v5);
  }

  v6[0] = &v3;
  sub_29A012C90(v6);
}

void sub_29A1C40EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::~ResolverChanged(&a17);
  sub_29A1C5478(&a13);
  a17 = &a9;
  sub_29A012C90(&a17);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateIdentifier(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      *a4 = *a2;
      a4[2] = *(a2 + 16);
      return;
    }

    goto LABEL_5;
  }

  if (*(a2 + 8))
  {
LABEL_5:
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    if (v7)
    {
      sub_29A1C42A0(a3, a2, v14);
      if (sub_29A1C445C(a2))
      {
        pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(a1);
        if (v13 >= 0)
        {
          v8 = v13;
        }

        else
        {
          v8 = v12;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          operator delete(__p);
        }

        if (v8)
        {
          v9 = v14;
        }

        else
        {
          v9 = a2;
        }
      }

      else
      {
        v9 = v14;
      }

      pxrInternal__aapl__pxrReserved__::TfNormPath(a4, v9, 0);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    else
    {

      pxrInternal__aapl__pxrReserved__::TfNormPath(a4, a2, 0);
    }

    return;
  }

  v10 = *a2;

  sub_29A008D14(a4, v10, 0);
}

void sub_29A1C4280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C42A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a1))
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6 && pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2))
  {
    if (*(a1 + 23) < 0)
    {
      sub_29A008D14(__dst, *a1, *(a1 + 8));
    }

    else
    {
      *__dst = *a1;
      v15 = *(a1 + 16);
    }

    v9 = HIBYTE(v15);
    v10 = __dst;
    if (v15 < 0)
    {
      v10 = __dst[0];
      v9 = __dst[1];
    }

    for (; v9; --v9)
    {
      if (*v10 == 92)
      {
        *v10 = 47;
      }

      v10 = (v10 + 1);
    }

    pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(__dst, 47, &__p);
    pxrInternal__aapl__pxrReserved__::TfStringCatPaths(&__p.__r_.__value_.__l.__data_, a2, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::TfNormPath(a3, v12, 0);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
LABEL_8:
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
      v8 = *(a2 + 8);

      sub_29A008D14(a3, v7, v8);
    }

    else
    {
      *a3 = *a2;
      a3[2] = *(a2 + 16);
    }
  }
}

void sub_29A1C4414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A1C445C(char *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  v2 = a1;
  result = pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a1);
  if (result)
  {
    v4 = v2[23];
    v5 = *(v2 + 1);
    if (v4 < 0)
    {
      v2 = *v2;
    }

    if (v4 >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = &v2[v6];
    if (v6 >= 2)
    {
      v8 = v6;
      v9 = v2;
      do
      {
        v10 = memchr(v9, 46, v8 - 1);
        if (!v10)
        {
          break;
        }

        if (*v10 == 12078)
        {
          if (v10 == v2)
          {
            return 0;
          }

          break;
        }

        v9 = v10 + 1;
        v8 = v7 - v9;
      }

      while (v7 - v9 >= 2);
      if (v6 != 2)
      {
        v11 = v2;
        do
        {
          v12 = memchr(v11, 46, v6 - 2);
          if (!v12)
          {
            break;
          }

          if (*v12 == 11822 && v12[2] == 47)
          {
            return v12 == v7 || v12 != v2;
          }

          v11 = v12 + 1;
          v6 = v7 - v11;
        }

        while (v7 - v11 > 2);
      }
    }

    v12 = v7;
    return v12 == v7 || v12 != v2;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateIdentifierForNewAsset(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a3 = *a1;
      a3[2] = *(a1 + 16);
      return;
    }

    v7 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
LABEL_5:
    if (v6 < 0)
    {
      v6 = v7;
    }

    if (v6 && pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a1))
    {
      v8 = *(a2 + 23);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 8);
      }

      if (v8)
      {
        sub_29A1C42A0(a2, a1, __p);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::TfAbsPath(__p, a1);
      }

      pxrInternal__aapl__pxrReserved__::TfNormPath(a3, __p, 0);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {

      pxrInternal__aapl__pxrReserved__::TfNormPath(a3, a1, 0);
    }

    return;
  }

  v9 = *a1;

  sub_29A008D14(a3, v9, 0);
}

void sub_29A1C46B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_Resolve(pxrInternal__aapl__pxrReserved__::ArResolver *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if (!pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2))
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    sub_29A1C4914(v18, a2, a3);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  pxrInternal__aapl__pxrReserved__::ArchGetCwd(__p);
  sub_29A1C4914(__p, a2, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = HIBYTE(v19);
  v8 = HIBYTE(v19);
  if (v19 < 0)
  {
    v7 = v18[1];
  }

  if (v7)
  {
LABEL_10:
    *a3 = *v18;
    a3[2] = v19;
    return;
  }

  if (sub_29A1C445C(a2))
  {
    v21 = 0;
    InternallyManagedCurrentContext = pxrInternal__aapl__pxrReserved__::ArResolver::_GetInternallyManagedCurrentContext(a1);
    if (InternallyManagedCurrentContext)
    {
      InternallyManagedCurrentContext = sub_29A1C53E0(InternallyManagedCurrentContext);
    }

    v20 = InternallyManagedCurrentContext;
    v10 = atomic_load(&qword_2A173F4E8);
    if (!v10)
    {
      v10 = sub_29A1C50D8(&qword_2A173F4E8);
    }

    v11 = 0;
    v21 = v10;
    do
    {
      v12 = (&v20)[v11];
      if (v12)
      {
        v13 = *v12;
        v14 = v12[1];
        while (v13 != v14)
        {
          sub_29A1C4914(v13, a2, __p);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          v19 = v17;
          *v18 = *__p;
          v15 = HIBYTE(v17);
          if ((v17 & 0x8000000000000000) != 0)
          {
            v15 = __p[1];
          }

          if (v15)
          {
            goto LABEL_10;
          }

          v13 += 24;
        }
      }

      ++v11;
    }

    while (v11 != 2);
    v8 = HIBYTE(v19);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v8 < 0)
  {
LABEL_13:
    operator delete(v18[0]);
  }
}

void sub_29A1C48C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C4914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a1, a2, &v7);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v7;
    v10 = v8;
  }

  if (pxrInternal__aapl__pxrReserved__::TfPathExists(__p, 0))
  {
    pxrInternal__aapl__pxrReserved__::TfAbsPath(&v7, __p);
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1C4A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_GetCurrentContextPtr(pxrInternal__aapl__pxrReserved__::ArDefaultResolver *this)
{
  result = pxrInternal__aapl__pxrReserved__::ArResolver::_GetInternallyManagedCurrentContext(this);
  if (result)
  {

    return sub_29A1C53E0(result);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_ResolveForNewAsset(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *__p = *a1;
      v4 = *(a1 + 16);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 8))
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::TfAbsPath(__p, a1);
    goto LABEL_6;
  }

  sub_29A008D14(__p, *a1, 0);
LABEL_6:
  if (SHIBYTE(v4) < 0)
  {
    sub_29A008D14(a2, __p[0], __p[1]);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = *__p;
    *(a2 + 16) = v4;
  }
}

void sub_29A1C4B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_OpenAsset@<D0>(const char *a1@<X1>, _OWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::Open(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_OpenAssetForWrite@<D0>(uint64_t a1@<X1>, int a2@<W2>, _OWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::Create(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateDefaultContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateContextFromString(unsigned __int8 *a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfStringTokenize(a1, ":", v3);
  pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::ArDefaultResolverContext(v4, v3);
  sub_29A1C54F8(a2);
}

void sub_29A1C4C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v11 - 24) = v10;
  sub_29A012C90((v11 - 24));
  *(v11 - 24) = &a10;
  sub_29A012C90((v11 - 24));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateDefaultContextForAsset(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfAbsPath(&__p, a1);
    pxrInternal__aapl__pxrReserved__::TfGetPathName(&__p, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A111510(v4, 1uLL, &v6);
    pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::ArDefaultResolverContext(&__p, v4);
    sub_29A1C54F8(a2);
  }

  memset(&v6, 0, sizeof(v6));
  sub_29A1C54F8(a2);
}

void sub_29A1C4DC4(void **a1)
{
  *a1 = &unk_2A20457C0;
  v2 = a1 + 1;
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::ArResolver::~ArResolver(a1);
}

void sub_29A1C4E20(void **a1)
{
  *a1 = &unk_2A20457C0;
  v3 = a1 + 1;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::ArResolver::~ArResolver(a1);
  operator delete(v2);
}

uint64_t sub_29A1C4E80()
{
  v2 = nullsub_133;
  return sub_29A1C4EDC(v0);
}

uint64_t sub_29A1C4EDC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20458A0;
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

void sub_29A1C4F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C4F8C(pxrInternal__aapl__pxrReserved__::Ar_ResolverFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Ar_ResolverFactoryBase::~Ar_ResolverFactoryBase(a1);

  operator delete(v1);
}

void *sub_29A1C4FB4()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::ArResolver::ArResolver(v0);
  *v0 = &unk_2A20457C0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  return v0;
}

void *sub_29A1C5018(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_29A1C50A0(v7);
  return v4;
}

uint64_t sub_29A1C50A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

unint64_t sub_29A1C50D8(atomic_ullong *a1)
{
  v2 = sub_29A1C513C();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = v2;
      sub_29A012C90(&v6);
      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

void *sub_29A1C513C()
{
  v0 = operator new(0x18uLL);
  sub_29A1C5180(v0);
  return v0;
}

void *sub_29A1C5180(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A008E78(v7, "PXR_AR_DEFAULT_SEARCH_PATH");
  sub_29A008E78(__p, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(v7, __p, v9);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  v2 = v10;
  v3 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v2 = v9[1];
  }

  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfStringTokenize(v9, ":", __p);
    pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::ArDefaultResolverContext(v7, __p);
    sub_29A095FDC(a1);
    *a1 = *v7;
    a1[2] = v8;
    v7[1] = 0;
    v8 = 0;
    v7[0] = 0;
    v11 = v7;
    sub_29A012C90(&v11);
    v11 = __p;
    sub_29A012C90(&v11);
    v3 = v10;
  }

  if ((v3 & 0x80) != 0)
  {
    operator delete(v9[0]);
  }

  return a1;
}

void sub_29A1C5294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v28 - 40) = &a10;
  sub_29A012C90((v28 - 40));
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void *sub_29A1C5310()
{
  result = operator new(0x10uLL);
  *result = &unk_2A20458E0;
  return result;
}

uint64_t sub_29A1C5394(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2045960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1C53E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = (*(**v1 + 24))();
    if (!strcmp((0x800000029B481D9ELL & 0x7FFFFFFFFFFFFFFFLL), (*(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL)))
    {
      break;
    }

    v1 += 16;
    if (v1 == v2)
    {
      return 0;
    }
  }

  return *v1 + 8;
}

uint64_t sub_29A1C5478(uint64_t a1)
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

void sub_29A1C54F8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A1C5548();
}

void sub_29A1C5530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void sub_29A1C55B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C55DC(void *a1)
{
  *a1 = &unk_2A2045980;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A1C5658(void **a1)
{
  *a1 = &unk_2A2045980;
  v2 = a1 + 1;
  sub_29A012C90(&v2);
  pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped::~_Untyped(a1);
}

void sub_29A1C56B4(void **a1)
{
  *a1 = &unk_2A2045980;
  v3 = a1 + 1;
  sub_29A012C90(&v3);
  pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped::~_Untyped(a1);
  operator delete(v2);
}

void *sub_29A1C57A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20459F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1C57F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B293160(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C5814(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1C583C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1C586C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2045A40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::ArDefaultResolverContext(uint64_t a1, uint64_t **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29A0925E4(a1, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if ((*(v4 + 23) & 0x8000000000000000) != 0)
      {
        if (v4[1])
        {
LABEL_6:
          pxrInternal__aapl__pxrReserved__::TfAbsPath(__p, v4);
          v7 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v7 = __p[1];
          }

          if (v7)
          {
            sub_29A070BA0(a1);
          }

          v10[0] = "ar/defaultResolverContext.cpp";
          v10[1] = "ArDefaultResolverContext";
          v10[2] = 31;
          v10[3] = "pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::ArDefaultResolverContext(const std::vector<std::string> &)";
          v11 = 0;
          v8 = v4;
          if (*(v4 + 23) < 0)
          {
            v8 = *v4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v10, "Could not determine absolute path for search path prefix '%s'", v6, v8);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (*(v4 + 23))
      {
        goto LABEL_6;
      }

      v4 += 3;
    }

    while (v4 != v5);
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::operator==(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_29A0EC4B8(&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext::GetAsString@<X0>(std::string **this@<X0>, std::string *a2@<X8>)
{
  sub_29A008E78(a2, "Search path: ");
  if (*this == this[1])
  {
    v6 = "[ ]";
  }

  else
  {
    std::string::append(a2, "[\n    ");
    pxrInternal__aapl__pxrReserved__::TfStringJoin("\n    ", this, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v6 = "\n]";
  }

  return std::string::append(a2, v6);
}

void sub_29A1C5BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::hash_value(uint64_t **this, const pxrInternal__aapl__pxrReserved__::ArDefaultResolverContext *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A1C5CF0(&v3, *this, 0xAAAAAAAAAAAAAAABLL * (this[1] - *this));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t sub_29A1C5C4C(const void **a1, const void **a2, const void **a3, const void **a4, uint64_t a5)
{
  if (a3 == a4)
  {
    return 0;
  }

  v7 = a3;
  while (a1 != a2 && !sub_29A00AFCC(a5, a1, v7))
  {
    v10 = sub_29A00AFCC(a5, v7, a1);
    result = 0;
    if (!v10)
    {
      a1 += 3;
      v7 += 3;
      if (v7 != a4)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

unint64_t sub_29A1C5CF0(unint64_t this, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = this;
    do
    {
      --v3;
      v5 = a2 + 3;
      v6 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v7 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v7 = v6;
      }

      this = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v4, a2, v7);
      a2 = v5;
    }

    while (v3);
  }

  return this;
}

FILE *pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::Open@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = pxrInternal__aapl__pxrReserved__::ArchOpenFile(a1, "rb");
  v4 = result;
  if (result)
  {
    return sub_29A1C6330(&v4, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

double pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::GetModificationTimestamp(char *a1, uint64_t a2, double *a3)
{
  *v5 = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  ModificationTime = pxrInternal__aapl__pxrReserved__::ArchGetModificationTime(a1, v5, a3);
  result = *v5;
  if (!ModificationTime)
  {
    return NAN;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::ArFilesystemAsset *pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::ArFilesystemAsset(pxrInternal__aapl__pxrReserved__::ArFilesystemAsset *this, __sFILE *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset(this);
  *v4 = &unk_2A2045AE8;
  v4[1] = a2;
  if (!a2)
  {
    v6[0] = "ar/filesystemAsset.cpp";
    v6[1] = "ArFilesystemAsset";
    v6[2] = 42;
    v6[3] = "pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::ArFilesystemAsset(FILE *)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Invalid file handle");
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::~ArFilesystemAsset(FILE **this)
{
  *this = &unk_2A2045AE8;
  fclose(this[1]);

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);
}

{
  *this = &unk_2A2045AE8;
  fclose(this[1]);

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);
}

{
  *this = &unk_2A2045AE8;
  fclose(this[1]);
  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);

  operator delete(v2);
}

void *pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::GetBuffer@<X0>(pxrInternal__aapl__pxrReserved__::ArFilesystemAsset *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::ArchMapFileReadOnly(v10, *(this + 1), 0);
  v3 = v10[0];
  if (v10[0])
  {
    v4 = operator new(0x10uLL);
    v10[0] = 0;
    v5 = v10[1];
    *v4 = v3;
    v4[1] = v5;
    sub_29A1C61A4(&v9, v4);
    *a2 = v3;
    v6 = operator new(0x30uLL);
    v7 = v9;
    v9 = 0uLL;
    *v6 = &unk_2A2045C10;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v3;
    *(v6 + 2) = v7;
    a2[1] = v6;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return sub_29A0D8AA8(v10, 0);
}

void sub_29A1C6088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_begin_catch(a1);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  __cxa_rethrow();
}

void sub_29A1C60A4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A0D8AA8(va, 0);
  _Unwind_Resume(a1);
}

ssize_t pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::Read(FILE **this, __sFILE *a2, char *a3, off_t a4)
{
  result = pxrInternal__aapl__pxrReserved__::ArchPRead(this[1], a2, a3, a4);
  if (result == -1)
  {
    v8[0] = "ar/filesystemAsset.cpp";
    v8[1] = "Read";
    v8[2] = 88;
    v8[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::Read(void *, size_t, size_t) const";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::ArchStrerror(__p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "Error occurred reading file: %s", v5);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_29A1C617C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1C61A4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2045B48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1C6208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1C62DC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A1C6224(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A1C624C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_29A0D8AA8(*(a1 + 24), 0);

    operator delete(v1);
  }
}

uint64_t sub_29A1C629C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2045B98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A1C62DC(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A0D8AA8(v2, 0);

    operator delete(v2);
  }
}

void *sub_29A1C6330@<X0>(__sFILE **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  result = sub_29A1C638C(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29A1C638C(void *a1, __sFILE **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2045BC0;
  pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::ArFilesystemAsset((a1 + 3), *a2);
  return a1;
}

void sub_29A1C640C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2045BC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A1C6478(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2A2045C10;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_29A014BEC(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void sub_29A1C64D4(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2A2045C10;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_29A014BEC(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete(v3);
}

void sub_29A1C6534(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      sub_29A014BEC(v3);
    }
  }
}

uint64_t sub_29A1C6588(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2045C50))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::Create(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfGetPathName(a1, &v18);
  size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (!size || (pxrInternal__aapl__pxrReserved__::TfIsDir(&v18, 0) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::TfMakeDirs(&v18, 0xFFFFFFFFLL, 1) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v17);
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    if (a2)
    {
      if (a2 != 1)
      {
LABEL_11:
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
        if (!v7)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
        }

        v8 = v17;
        v9 = atomic_load((v7 + 144));
        if (v8 >= v9 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v17, v7))
        {
          sub_29A1C6BB0(&v13, a3);
        }

        else
        {
          *a3 = 0;
          a3[1] = 0;
        }

        pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile(&v13);
        pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v17);
        goto LABEL_18;
      }

      pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Replace(a1, v12);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Update(a1, v12);
    }

    sub_29A1C67C4(&v13, v12);
    pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile(v12);
    goto LABEL_11;
  }

  *&v13 = "ar/filesystemWritableAsset.cpp";
  *(&v13 + 1) = "Create";
  *&v14 = 31;
  *(&v14 + 1) = "static std::shared_ptr<ArFilesystemWritableAsset> pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::Create(const ArResolvedPath &, ArResolver::WriteMode)";
  LOBYTE(v15) = 0;
  v10 = &v18;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v18.__r_.__value_.__r.__words[0];
  }

  if (*(a1 + 23) >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 3, "Could not create directory '%s' for asset '%s'", v10, v11);
  *a3 = 0;
  a3[1] = 0;
LABEL_18:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_29A1C6780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1C67C4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::ArFilesystemWritableAsset(void *a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArWritableAsset::ArWritableAsset(a1);
  *v4 = &unk_2A2045C70;
  v4[1] = *a2;
  v5 = *(a2 + 8);
  v4[4] = *(a2 + 24);
  *(v4 + 1) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 32);
  v4[7] = *(a2 + 48);
  *(v4 + 5) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  if (!v4[1])
  {
    v8[0] = "ar/filesystemWritableAsset.cpp";
    v8[1] = "ArFilesystemWritableAsset";
    v8[2] = 58;
    v8[3] = "pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::ArFilesystemWritableAsset(TfSafeOutputFile &&)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Invalid output file");
  }

  return a1;
}

void sub_29A1C6930(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile(v2);
  pxrInternal__aapl__pxrReserved__::ArWritableAsset::~ArWritableAsset(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::~ArFilesystemWritableAsset(pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset *this)
{
  *this = &unk_2A2045C70;
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile((this + 8));

  pxrInternal__aapl__pxrReserved__::ArWritableAsset::~ArWritableAsset(this);
}

{
  *this = &unk_2A2045C70;
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile((this + 8));

  pxrInternal__aapl__pxrReserved__::ArWritableAsset::~ArWritableAsset(this);
}

{
  *this = &unk_2A2045C70;
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile((this + 8));
  pxrInternal__aapl__pxrReserved__::ArWritableAsset::~ArWritableAsset(this);

  operator delete(v2);
}

BOOL pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::Close(pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset *this)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v7);
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Close((this + 8));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v7;
  v4 = atomic_load((v2 + 144));
  v5 = v3 >= v4 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v7, v2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v7);
  return v5;
}

void sub_29A1C6ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

char *pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::Write(FILE **this, __sFILE *a2, char *a3, off_t a4)
{
  result = pxrInternal__aapl__pxrReserved__::ArchPWrite(this[1], a2, a3, a4);
  if (result == -1)
  {
    v8[0] = "ar/filesystemWritableAsset.cpp";
    v8[1] = "Write";
    v8[2] = 79;
    v8[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::Write(const void *, size_t, size_t)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::ArchStrerror(__p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "Error occurred writing file: %s", v5);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_29A1C6B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1C6BB0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x58uLL);
  result = sub_29A1C6C0C(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29A1C6C0C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2045CB8;
  pxrInternal__aapl__pxrReserved__::ArFilesystemWritableAsset::ArFilesystemWritableAsset(a1 + 3, a2);
  return a1;
}

void sub_29A1C6C88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2045CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::~ArInMemoryAsset(pxrInternal__aapl__pxrReserved__::ArInMemoryAsset *this)
{
  *this = &unk_2A2045D08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);
}

{
  pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::~ArInMemoryAsset(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::FromAsset(pxrInternal__aapl__pxrReserved__::ArInMemoryAsset *this@<X0>, const pxrInternal__aapl__pxrReserved__::ArAsset *a2@<X1>, void *a3@<X8>)
{
  v5 = (*(*this + 16))(this, a2);
  v12 = 0uLL;
  v6 = operator new[](v5);
  sub_29A1C6FC4(&v12, v6);
  v7 = (*(*this + 32))(this, v12, v5, 0);
  if (v7 == v5)
  {
    v8 = v12;
    v12 = 0uLL;
    v13 = v5;
    sub_29A1C7284(&v8, &v13, a3);
    if (*(&v8 + 1))
    {
      sub_29A014BEC(*(&v8 + 1));
    }
  }

  else
  {
    *&v8 = "ar/inMemoryAsset.cpp";
    *(&v8 + 1) = "FromAsset";
    v9 = 65;
    v10 = "static std::shared_ptr<ArInMemoryAsset> pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::FromAsset(const ArAsset &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 3, "Failed to read asset into memory. Expected %zu bytes, read %zu.", v5, v7);
    *a3 = 0;
    a3[1] = 0;
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }
}

void sub_29A1C6F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C6FC4(void *a1, uint64_t a2)
{
  sub_29A1C7390(&v5, a2);
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

uint64_t pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::GetBuffer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

size_t pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::Read(pxrInternal__aapl__pxrReserved__::ArInMemoryAsset *this, void *__dst, size_t a3, uint64_t a4)
{
  if (a4 + a3 > *(this + 3))
  {
    return 0;
  }

  v4 = a3;
  memcpy(__dst, (*(this + 1) + a4), a3);
  return v4;
}

double pxrInternal__aapl__pxrReserved__::ArInMemoryAsset::GetDetachedAsset@<D0>(pxrInternal__aapl__pxrReserved__::ArInMemoryAsset *this@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(this + 3);
  sub_29A1C70E0(this + 1, &v5, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void *sub_29A1C70E0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  result = sub_29A1C7154(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29A1C7154(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2045D68;
  v5 = *a3;
  pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset(a1 + 3);
  v7 = *a2;
  v6 = a2[1];
  a1[3] = &unk_2A2045D08;
  a1[4] = v7;
  a1[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = v5;
  return a1;
}

void sub_29A1C7218(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2045D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1C7284@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  result = sub_29A1C72F8(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t sub_29A1C72F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2045D68;
  v5 = *a3;
  pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset((a1 + 24));
  *(a1 + 24) = &unk_2A2045D08;
  *(a1 + 32) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = v5;
  return a1;
}

void *sub_29A1C7390(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2045DB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1C73E8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[](v1);
  }

  __cxa_rethrow();
}

void sub_29A1C7418(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A1C7440(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete[](v1);
  }
}

uint64_t sub_29A1C7450(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2045DF8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A1C7490()
{
  v1 = nullsub_136;
  v1 = nullsub_137;
}

void *pxrInternal__aapl__pxrReserved__::ArNotice::ResolverNotice::ResolverNotice(void *this)
{
  *this = &unk_2A2045E18;
  return this;
}

{
  *this = &unk_2A2045E18;
  return this;
}

void pxrInternal__aapl__pxrReserved__::ArNotice::ResolverNotice::~ResolverNotice(pxrInternal__aapl__pxrReserved__::ArNotice::ResolverNotice *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged *pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::ResolverChanged(pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged *this)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A2045E88;
  v3[3] = v3;
  pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::ResolverChanged(this, v3);
  sub_29A1C5478(v3);
  return this;
}

{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A2045E88;
  v3[3] = v3;
  pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::ResolverChanged(this, v3);
  sub_29A1C5478(v3);
  return this;
}

void sub_29A1C7624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1C5478(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::ResolverChanged(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2045E38;
  sub_29A1C7940((a1 + 1), a2);
  return a1;
}

void sub_29A1C771C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1C5478(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::~ResolverChanged(pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged *this)
{
  *this = &unk_2A2045E38;
  sub_29A1C5478(this + 8);

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  *this = &unk_2A2045E38;
  sub_29A1C5478(this + 8);

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  *this = &unk_2A2045E38;
  sub_29A1C5478(this + 8);
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArNotice::ResolverChanged::AffectsContext(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_29A1C788C()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2045E88;
  return result;
}

uint64_t sub_29A1C78F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2045EE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1C7940(uint64_t a1, uint64_t a2)
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

BOOL pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    v1 = *(a1 + 8);
    if (!v1)
    {
      return 0;
    }

    v4 = *a1;
    v2 = *a1 + v1;
    v3 = *(v2 - 1);
  }

  else
  {
    if (!*(a1 + 23))
    {
      return 0;
    }

    v2 = a1 + v1;
    v3 = *(a1 + v1 - 1);
    v4 = a1;
  }

  if (v3 == 93)
  {
    return v4 + v1 != sub_29A1C7A98(a1, (v2 - 1));
  }

  return 0;
}

unsigned __int8 *sub_29A1C7A98(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 == a2)
  {
    if ((v2 & 0x80u) != 0)
    {
      v2 = *(a1 + 8);
    }

    return &v3[v2];
  }

  else
  {
    v4 = a2 - 1;
    v5 = 1;
    v6 = a2 - 1;
    do
    {
      v7 = *v4;
      if ((v7 == 93 || v7 == 91) && (v3 == v6 || *(v6 - 1) != 92))
      {
        if (v7 == 91)
        {
          --v5;
        }

        else
        {
          ++v5;
        }
      }

      v8 = v4 - 1;
      if (v4 == v3)
      {
        break;
      }

      --v6;
      --v4;
    }

    while (v5);
    if ((v2 & 0x80u) != 0)
    {
      v2 = *(a1 + 8);
    }

    v9 = &v3[v2];
    if (v5)
    {
      return v9;
    }

    else
    {
      return v8 + 1;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(__int128 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = *(v3 + 23);
    if (v5 < 0)
    {
      v5 = *(v3 + 1);
    }

    if (v5)
    {
      break;
    }

    v3 = (v3 + 24);
  }

  if (v3 == v4)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_29A008D14(a2, *v3, *(v3 + 1));
    }

    else
    {
      v6 = *v3;
      a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&a2->__r_.__value_.__l.__data_ = v6;
    }

    v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      v9 = a2->__r_.__value_.__r.__words[0];
      size = a2->__r_.__value_.__l.__size_;
      v8 = a2->__r_.__value_.__r.__words[0] + size;
      if (*(v8 - 1) == 93)
      {
LABEL_16:
        while (v8 != v9)
        {
          v11 = *--v8;
          if (v11 != 93)
          {
            v9 = v8 + 1;
            break;
          }
        }

        if (v7 >= 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = a2->__r_.__value_.__r.__words[0];
        }

        size = v9 - v12;
      }
    }

    else
    {
      v8 = a2 + v7;
      v9 = a2;
      if (a2->__r_.__value_.__s.__data_[v7 - 1] == 93)
      {
        goto LABEL_16;
      }

      size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    for (i = v3 + 24; i != v4; i += 24)
    {
      if ((*(i + 23) & 0x8000000000000000) != 0)
      {
        if (*(i + 8))
        {
LABEL_28:
          sub_29A1C880C(i, &v18);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14.__i_ = &v18;
          }

          else
          {
            v14.__i_ = v18.__r_.__value_.__r.__words[0];
          }

          std::string::insert(&v18, v14, 91);
          v19 = v18;
          memset(&v18, 0, sizeof(v18));
          std::string::push_back(&v19, 93);
          v20 = v19;
          memset(&v19, 0, sizeof(v19));
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }

          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v20;
          }

          else
          {
            v15 = v20.__r_.__value_.__r.__words[0];
          }

          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v16 = v20.__r_.__value_.__l.__size_;
          }

          std::string::insert(a2, size, v15, v16);
          v17 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v17 = v20.__r_.__value_.__l.__size_;
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          size = size + v17 - 1;
        }
      }

      else if (*(i + 23))
      {
        goto LABEL_28;
      }
    }
  }
}

void sub_29A1C7D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  v2[0] = a1;
  v2[1] = (a1 + 24);
  sub_29A1C7DEC(v2, &v3, a2);
}

void sub_29A1C7DEC(__int128 **a1@<X0>, __int128 **a2@<X1>, std::string *a3@<X8>)
{
  if (a1 == a2)
  {
LABEL_8:
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v5 = a1;
  while (1)
  {
    v6 = *v5;
    if (*(*v5 + 23) < 0)
    {
      break;
    }

    if (*(*v5 + 23))
    {
      v8 = *v6;
      a3->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a3->__r_.__value_.__l.__data_ = v8;
      goto LABEL_10;
    }

LABEL_7:
    if (++v5 == a2)
    {
      goto LABEL_8;
    }
  }

  v7 = *(v6 + 1);
  if (!v7)
  {
    goto LABEL_7;
  }

  sub_29A008D14(a3, *v6, v7);
LABEL_10:
  v9 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    v11 = a3->__r_.__value_.__r.__words[0];
    size = a3->__r_.__value_.__l.__size_;
    v10 = a3->__r_.__value_.__r.__words[0] + size;
    if (*(v10 - 1) == 93)
    {
LABEL_14:
      while (v10 != v11)
      {
        v13 = *--v10;
        if (v13 != 93)
        {
          v11 = v10 + 1;
          break;
        }
      }

      if (v9 >= 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = a3->__r_.__value_.__r.__words[0];
      }

      size = v11 - v14;
    }
  }

  else
  {
    v10 = a3 + v9;
    v11 = a3;
    if (a3->__r_.__value_.__s.__data_[v9 - 1] == 93)
    {
      goto LABEL_14;
    }

    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  v15 = v5 + 1;
  if (v15 != a2)
  {
    while (2)
    {
      v16 = *v15;
      if ((*(*v15 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 1))
        {
          goto LABEL_40;
        }
      }

      else if (!*(*v15 + 23))
      {
        goto LABEL_40;
      }

      sub_29A1C880C(v16, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17.__i_ = &v21;
      }

      else
      {
        v17.__i_ = v21.__r_.__value_.__r.__words[0];
      }

      std::string::insert(&v21, v17, 91);
      v22 = v21;
      memset(&v21, 0, sizeof(v21));
      std::string::push_back(&v22, 93);
      v23 = v22;
      memset(&v22, 0, sizeof(v22));
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v23;
      }

      else
      {
        v18 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v23.__r_.__value_.__l.__size_;
      }

      std::string::insert(a3, size, v18, v19);
      v20 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v20 = v23.__r_.__value_.__l.__size_;
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      size = size + v20 - 1;
LABEL_40:
      if (++v15 == a2)
      {
        return;
      }

      continue;
    }
  }
}

void sub_29A1C7FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(__int128 *a1@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = a1;
  v3[1] = a2;
  sub_29A1C7DEC(v3, &v4, a3);
}

void pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_12;
    }

    v5 = v6[v7 - 1];
  }

  else
  {
    if (!*(a1 + 23))
    {
      v7 = 0;
      v6 = a1;
LABEL_12:
      v8 = &v6[v7];
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v14 = (a1 + v4);
      if ((a1 + v4) != v8)
      {
        v15 = sub_29A1C7A98(a1, v8);
        if (v14 != v15)
        {
          v13 = v15;
          goto LABEL_16;
        }
      }

      *(&__dst + 7) = 0;
      *&__dst = 0;
      *a2 = *v2;
      *(a2 + 16) = v2[2];
LABEL_21:
      v18 = __dst;
      *(a2 + 24) = 0;
      *(a2 + 32) = v18;
      *(a2 + 39) = *(&__dst + 7);
      *(a2 + 47) = 0;
      return;
    }

    v5 = *(a1 + v4 - 1);
    v6 = a1;
    v7 = *(a1 + 23);
  }

  if (v5 != 93)
  {
    goto LABEL_12;
  }

  v8 = &v6[v7 - 1];
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = (*a1 + v10);
  if (v11 == v8 || (v12 = sub_29A1C7A98(a1, v8), v11 == v12))
  {
    *(&__dst + 7) = 0;
    *&__dst = 0;
    sub_29A008D14(a2, v9, v10);
    goto LABEL_21;
  }

  v13 = v12;
  v2 = v9;
LABEL_16:
  sub_29A0D2BE0(&__dst, v2, v13, v13 - v2);
  sub_29A0D2BE0(__p, (v13 + 1), v8, &v8[-v13 - 1]);
  sub_29A1C82A0(__p, &v19);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v19;
  *__p = v19;
  v17 = v20;
  v22 = v20;
  *a2 = __dst;
  *(a2 + 16) = v24;
  *(a2 + 24) = v16;
  *(a2 + 40) = v17;
}

void sub_29A1C8264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C82A0(void *__src@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__src + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (!*(__src + 23))
    {
      *a2 = *__src;
      *(a2 + 16) = __src[2];
      return;
    }

    v5 = __src + v4;
    v6 = *(__src + v4 - 1);
    v7 = __src;
    goto LABEL_6;
  }

  v7 = *__src;
  v4 = __src[1];
  if (v4)
  {
    v5 = &v7[v4];
    v6 = v7[v4 - 1];
LABEL_6:
    if (v6 == 93)
    {
      v8 = sub_29A1C7A98(__src, v5 - 1);
      if (&v7[v4] != v8)
      {
        v5 = v8;
      }
    }

    sub_29A0D2BE0(&__p, v7, v5, v5 - v7);
    sub_29A008E78(v18, "\\[");
    sub_29A008E78(v16, "[");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&__p, v18, v16, &__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    sub_29A008E78(v18, "\\]");
    sub_29A008E78(v16, "]");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&__p, v18, v16, &__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v9 = *(__src + 23);
    if ((v9 & 0x80u) == 0)
    {
      v10 = __src;
    }

    else
    {
      v10 = *__src;
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = __src[1];
    }

    sub_29A0D2BE0(&__dst, v5, v10 + v9, v10 + v9 - v5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v13 = std::string::insert(&__dst, 0, p_p, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
    *a2 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v15 = *__src;

  sub_29A008D14(a2, v15, 0);
}

void sub_29A1C8508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v28 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *a1;
    v7 = *(a1 + 8);
    if (v7)
    {
      v6 = *a1;
      if (v5[v7 - 1] == 93)
      {
        goto LABEL_7;
      }
    }
  }

  else if (*(a1 + 23))
  {
    if (*(a1 + v4 - 1) == 93)
    {
      v5 = *a1;
      v6 = a1;
      v7 = *(a1 + 23);
LABEL_7:
      v8 = (v6 + v7);
      v9 = v8 + 2;
      do
      {
        if ((v4 & 0x80000000) != 0)
        {
          if (v8 == v5)
          {
            v7 = *(a1 + 8);
            goto LABEL_24;
          }
        }

        else if (v8 == a1)
        {
          goto LABEL_22;
        }

        v11 = *--v8;
        v10 = v11;
        --v9;
      }

      while (v11 == 93);
      if (v10 == 92)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8 + 1;
      }

      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_22:
    v5 = a1;
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = 0;
    v5 = a1;
  }

LABEL_24:
  v12 = &v5[v7];
  if ((v4 & 0x80000000) != 0)
  {
LABEL_17:
    v14 = *a1;
    v13 = *(a1 + 8);
    v15 = (*a1 + v13);
    if (v12 != v15)
    {
      v16 = sub_29A1C7A98(a1, v12);
      if (v15 != v16)
      {
        v17 = v16;
        sub_29A008D14(&__dst, v14, v13);
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        goto LABEL_28;
      }
    }

    *(__dst.__r_.__value_.__r.__words + 7) = 0;
    __dst.__r_.__value_.__r.__words[0] = 0;
    sub_29A008D14(a2, v14, v13);
LABEL_33:
    v22 = __dst.__r_.__value_.__r.__words[0];
    *(a2 + 24) = 0;
    *(a2 + 32) = v22;
    *(a2 + 39) = *(__dst.__r_.__value_.__r.__words + 7);
    *(a2 + 47) = 0;
    return;
  }

LABEL_25:
  v18 = (a1 + v4);
  if (v12 == (a1 + v4) || (v19 = sub_29A1C7A98(a1, v12), v18 == v19))
  {
    *(__dst.__r_.__value_.__r.__words + 7) = 0;
    __dst.__r_.__value_.__r.__words[0] = 0;
    *a2 = *v2;
    *(a2 + 16) = *(v2 + 16);
    goto LABEL_33;
  }

  v17 = v19;
  __dst = *v2;
LABEL_28:
  std::string::erase(&__dst, &v17[-v2], v12 - v17 + 1);
  sub_29A0D2BE0(__p, v17 + 1, v12, v12 - (v17 + 1));
  sub_29A1C82A0(__p, &v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v20 = v23;
  *__p = v23;
  v21 = v24;
  v26 = v24;
  *a2 = __dst;
  *(a2 + 24) = v20;
  *(a2 + 40) = v21;
}

void sub_29A1C880C(void *__src@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__src + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (!*(__src + 23))
    {
      *a2 = *__src;
      *(a2 + 16) = __src[2];
      return;
    }

    v5 = __src + v4;
    v6 = *(__src + v4 - 1);
    v7 = __src;
    goto LABEL_6;
  }

  v7 = *__src;
  v4 = __src[1];
  if (v4)
  {
    v5 = &v7[v4];
    v6 = v7[v4 - 1];
LABEL_6:
    if (v6 == 93)
    {
      v8 = sub_29A1C7A98(__src, v5 - 1);
      if (&v7[v4] != v8)
      {
        v5 = v8;
      }
    }

    sub_29A0D2BE0(&__p, v7, v5, v5 - v7);
    sub_29A008E78(v18, "[");
    sub_29A008E78(v16, "\\[");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&__p, v18, v16, &__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    sub_29A008E78(v18, "]");
    sub_29A008E78(v16, "\\]");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&__p, v18, v16, &__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v9 = *(__src + 23);
    if ((v9 & 0x80u) == 0)
    {
      v10 = __src;
    }

    else
    {
      v10 = *__src;
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = __src[1];
    }

    sub_29A0D2BE0(&__dst, v5, v10 + v9, v10 + v9 - v5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v13 = std::string::insert(&__dst, 0, p_p, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
    *a2 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v15 = *__src;

  sub_29A008D14(a2, v15, 0);
}

void sub_29A1C8A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1C8B08()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_AR_DISABLE_PLUGIN_RESOLVER))
  {
    sub_29B293574();
  }
}

void sub_29A1C8B38()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_AR_DISABLE_PLUGIN_URI_RESOLVERS))
  {
    sub_29B2935A8();
  }
}

std::string *pxrInternal__aapl__pxrReserved__::ArSetPreferredResolver(std::string *__str)
{
  v2 = atomic_load(&qword_2A173F4F0);
  if (!v2)
  {
    v2 = sub_29A1522E4(&qword_2A173F4F0);
  }

  return std::string::operator=(v2, __str);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArResolver::CreateContextFromString@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_29A1C8D7C();

  return sub_29A1C8E1C(a1, a2);
}

void sub_29A1C8D7C()
{
  if ((atomic_load_explicit(&qword_2A173F638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F638))
  {
    sub_29A1CA4D0();
    __cxa_atexit(sub_29A1CBEEC, &qword_2A173F518, &dword_299FE7000);

    __cxa_guard_release(&qword_2A173F638);
  }
}

uint64_t sub_29A1C8E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    result = sub_29A1CF760(qword_2A173F520);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  result = sub_29A1CF600(&qword_2A173F518, a1, 0);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(*result + 80);

  return v5();
}

void pxrInternal__aapl__pxrReserved__::ArResolver::CreateContextFromStrings(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  sub_29A1C8D7C();
  memset(v8, 0, sizeof(v8));
  sub_29A1D22CC(v8, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = v4 + 24;
      sub_29A1C8E1C(v4, v7);
      if (v7[0] != v7[1])
      {
        sub_29A1D144C(v8, v7);
      }

      v9 = v7;
      sub_29A0176E4(&v9);
      v4 = v6 + 24;
    }

    while (v6 + 24 != v5);
  }

  pxrInternal__aapl__pxrReserved__::ArResolverContext::ArResolverContext(a2, v8);
  v7[0] = v8;
  sub_29A03AA70(v7);
}

void sub_29A1C8F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A03AA70(&a10);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::ArResolver::IsRelativePath(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  return v2 && pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2);
}

void pxrInternal__aapl__pxrReserved__::ArResolver::_CreateDefaultContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::ArResolver::_CreateDefaultContextForAsset(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::ArResolver::_CreateContextFromString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::ArResolver::_GetCurrentContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::ArResolver::_GetAssetInfo@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArResolver::_GetInternallyManagedCurrentContext(pxrInternal__aapl__pxrReserved__::ArResolver *this)
{
  sub_29A1C8D7C();
  v4 = 0;
  v1 = sub_29A0ED084(qword_2A173F578, &v4);
  v2 = v1[1];
  if (*v1 == v2)
  {
    return 0;
  }

  else
  {
    return *(v2 - 8);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::ArGetRegisteredURISchemes(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A173F510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F510))
  {
    sub_29A1C8D7C();
    sub_29A1C9334();
    __cxa_atexit(sub_29A1C9440, &qword_2A173F4F8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F510);
  }

  return &qword_2A173F4F8;
}

void sub_29A1C9334()
{
  qword_2A173F4F8 = 0;
  qword_2A173F500 = 0;
  qword_2A173F508 = 0;
  sub_29A0925E4(&qword_2A173F4F8, *(&xmmword_2A173F540 + 1));
  if (xmmword_2A173F540)
  {
    if (qword_2A173F500 < qword_2A173F508)
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>();
    }

    std::vector<std::string>::__emplace_back_slow_path<std::string const&>();
  }

  v0 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((qword_2A173F500 - qword_2A173F4F8) >> 3));
  if (qword_2A173F500 == qword_2A173F4F8)
  {
    v1 = 0;
  }

  else
  {
    v1 = v0;
  }

  sub_29AA89D34(qword_2A173F4F8, qword_2A173F500, v2, v1, 1);
}

void sub_29A1C9424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void **sub_29A1C9440(void **a1)
{
  v3 = a1;
  sub_29A012C90(&v3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArGetUnderlyingResolver(pxrInternal__aapl__pxrReserved__ *this)
{
  sub_29A1C8D7C();
  v1 = qword_2A173F520;

  return sub_29A1CF760(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArGetAvailableResolvers@<X0>(const std::type_info *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A1C9774(a1, v22);
  sub_29A1C9560(v22, v4, v23);
  sub_29A1CA010(v22, v5, v6, v7, v8, v9, v10, v11);
  v19 = v23[0];
  v20 = v23[1];
  while (v19 != v20)
  {
    sub_29A0A71C8(a2, (v19 + 16));
    v19 += 56;
  }

  return sub_29A1CA010(v23, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_29A1C9560@<X0>(uint64_t a1@<X0>, const std::type_info *a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v12 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_AR_DISABLE_PLUGIN_RESOLVER);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v13 = *v12 == 0;
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v13)
  {
    v16 = *a1;
  }

  else
  {
    v16 = v26;
  }

  if (v13)
  {
    v17 = *(a1 + 8);
  }

  else
  {
    v17 = v27;
  }

  if (v16 != v17)
  {
    do
    {
      if (*(v16 + 48) == 1 && v16[2] != v11)
      {
        v18 = atomic_load(&qword_2A173F648);
        if (!v18)
        {
          v18 = sub_29A1D24D0(&qword_2A173F648);
        }

        v19 = *v18;
        v20 = atomic_load(&qword_2A173F648);
        if (!v20)
        {
          v20 = sub_29A1D24D0(&qword_2A173F648);
        }

        v21 = *(v20 + 8);
        if (v19 != v21)
        {
          while (*v19 != v16[2])
          {
            if (++v19 == v21)
            {
              v19 = *(v20 + 8);
              break;
            }
          }
        }

        v22 = atomic_load(&qword_2A173F648);
        if (!v22)
        {
          v22 = sub_29A1D24D0(&qword_2A173F648);
        }

        if (v19 == *(v22 + 8))
        {
          sub_29A1D23A8(a3, v16);
        }
      }

      v16 += 7;
    }

    while (v16 != v17);
    v14 = *a1;
    v15 = *(a1 + 8);
  }

  while (v14 != v15)
  {
    if (v14[2] == v11)
    {
      sub_29A1D23A8(a3, v14);
    }

    v14 += 7;
  }

  if (*(a3[1] - 40) != v11)
  {
    v24[0] = "ar/resolver.cpp";
    v24[1] = "_GetAvailablePrimaryResolvers";
    v24[2] = 325;
    v24[3] = "std::vector<_ResolverInfo> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetAvailablePrimaryResolvers(const std::vector<_ResolverInfo> &)";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v24, "availablePrimaryResolvers.back().type == defaultResolverType", 0);
  }

  return sub_29A1CA010(&v26, v14, v5, v6, v7, v8, v9, v10);
}

void sub_29A1C9744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A1CA010(va, a2, a3, a4, a5, a6, a7, a8);
  sub_29A1CA010(v13, v15, v16, v17, v18, v19, v20, v21);
  _Unwind_Resume(a1);
}

void sub_29A1C9774(const std::type_info *a1@<X1>, uint64_t *a2@<X8>)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  __dst_8[0] = 0;
  __dst_8[1] = 0;
  __dst = __dst_8;
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*v3, &__dst);
  sub_29A1D27B0(&v30, __dst, __dst_8);
  v4 = 126 - 2 * __clz((v31 - v30) >> 3);
  if (v31 == v30)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_29A1D2EA8(v30, v31, v5, 1);
  sub_29A082B84(&__dst, __dst_8[0]);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = v30;
  v7 = v31;
  v8 = v31 - v30;
  if (v31 != v30)
  {
    if ((v8 >> 3) > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    sub_29A1D2538(&__dst, v8 >> 3, 0, a2);
    sub_29A1D25B8(a2, &__dst, v9, v10, v11, v12, v13, v14);
    sub_29A1D2700(&__dst, v15, v16, v17, v18, v19, v20, v21);
    v6 = v30;
    v7 = v31;
  }

  if (v6 != v7)
  {
    do
    {
      sub_29A1D2808(v6, &v29);
      v22 = sub_29B290C20(&v29);
      if (v23 & 1 | v22)
      {
        v27 = 0uLL;
        v28 = 0;
        sub_29A17F138(&v29);
      }

      v24 = *(&v29 + 1);
      if (*(&v29 + 1) && atomic_fetch_add_explicit((*(&v29 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v24 + 8))(v24);
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
    v6 = v30;
  }

  if (v6)
  {
    v31 = v6;
    operator delete(v6);
  }
}

void sub_29A1C9E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A1D2700(va, a2, a3, a4, a5, a6, a7, a8);
  sub_29A1CA010(v10, v13, v14, v15, v16, v17, v18, v19);
  v20 = *(v11 - 152);
  if (v20)
  {
    *(v11 - 144) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A1CA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v9; sub_29B293518(i, a2, a3, a4, a5, a6, a7, a8))
    {
      i -= 56;
    }

    *(a1 + 8) = v9;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A1CA078@<X0>(pxrInternal__aapl__pxrReserved__::TfType *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&qword_2A173F648);
  if (!v6)
  {
    v6 = sub_29A1D24D0(&qword_2A173F648);
  }

  sub_29A0A71C8(v6, a1);
  v26 = &unk_2A2046670;
  v29 = &v26;
  sub_29A117068(v36, &v26);
  sub_29A0FC854(&v26);
  v25 = v8;
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v26);
  if (*a1 == v26)
  {
    v26 = "ar/resolver.cpp";
    v27 = "_CreateResolver";
    v28 = 407;
    v29 = "std::unique_ptr<ArResolver> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CreateResolver(const TfType &, std::string *)";
    LOBYTE(v30) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Invalid resolver type");
LABEL_17:
    if (a2)
    {
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v25);
      if (*(TypeName + 23) >= 0)
      {
        v18 = TypeName;
      }

      else
      {
        v18 = *TypeName;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Using default asset resolver %s", v16, v17, v18);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v21;
      *(a2 + 16) = v22;
    }

    v19 = operator new(0x20uLL);
    *v19 = &unk_2A20457C0;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = 0;
    *a3 = v19;
    return sub_29A1847D4(v36);
  }

  if ((pxrInternal__aapl__pxrReserved__::TfType::IsA(a1, *v10) & 1) == 0)
  {
    v26 = "ar/resolver.cpp";
    v27 = "_CreateResolver";
    v28 = 412;
    v29 = "std::unique_ptr<ArResolver> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CreateResolver(const TfType &, std::string *)";
    LOBYTE(v30) = 0;
    v13 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
    if (*(v13 + 23) >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *v13;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Given type %s does not derive from ArResolver", v14);
    goto LABEL_17;
  }

  if (*a1 == v8)
  {
    goto LABEL_17;
  }

  sub_29A1D2808(a1, &v23);
  v11 = sub_29B290C20(&v23);
  if (v12 & 1 | v11)
  {
    v26 = v23;
    v27 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1u, memory_order_relaxed);
    }

    v28 = *a1;
    LOBYTE(v29) = 0;
    v30 = 850045863;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    sub_29A1CF840(&v26);
  }

  if (sub_29B293620(&v23, a3))
  {
    goto LABEL_17;
  }

  return sub_29A1847D4(v36);
}

void sub_29A1CA3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29B293330(va);
  if (a9 && atomic_fetch_add_explicit(a9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a9 + 8))(a9);
  }

  v13 = *v10;
  *v10 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_29A1847D4(v11 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1CA4D0()
{
  qword_2A173F518 = &unk_2A2046030;
  *&qword_2A173F520 = 0u;
  *&qword_2A173F530 = 0u;
  xmmword_2A173F540 = 0u;
  dword_2A173F550 = 1065353216;
  xmmword_2A173F558 = 0u;
  *&qword_2A173F568 = 0u;
  sub_29A1CE3F0(qword_2A173F578);
  qword_2A173F5D8 = &unk_2A203F6D8;
  __dmb(0xBu);
  qword_2A173F5E0 = 0;
  __dmb(0xBu);
  qword_2A173F5E8 = 0;
  qword_2A173F5D8 = &unk_2A2046208;
  v1 = tbb::internal::allocate_via_handler_v3(8);
  *v1 = &unk_2A2046268;
  qword_2A173F5F0 = v1;
  qword_2A173F620 = 0;
  qword_2A173F628 = 0;
  qword_2A173F630 = 0;
  qword_2A173F610 = 0;
  qword_2A173F608 = 0;
  qword_2A173F618 = &qword_2A173F620;
  qword_2A173F600 = sub_29A1CE928;
  sub_29A1C9774(v2, &v168);
  __dst.__r_.__value_.__r.__words[0] = v178;
  sub_29A1C9560(&v168, v4, &v172);
  if (sub_29A1CE9DC(0))
  {
    v182 = 0uLL;
    *&v183 = 0;
    sub_29A0925E4(&v182, 0x6DB6DB6DB6DB6DB7 * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3));
    if (v172.__r_.__value_.__r.__words[0] != v172.__r_.__value_.__l.__size_)
    {
      pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v172.__r_.__value_.__r.__words[0] + 16));
      sub_29A070BA0(&v182);
    }

    v0 = &v182;
    pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v182, &__p);
    *&v180 = &v182;
    sub_29A012C90(&v180);
    if (v171.__r_.__value_.__s.__data_[15] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Found primary asset resolver types: [%s]\n", v5, v6, p_p);
    if (v171.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }
  }

  v8 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_AR_DISABLE_PLUGIN_RESOLVER);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v8 == 1)
  {
    if (sub_29A1CE9DC(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Plugin asset resolver disabled via PXR_AR_DISABLE_PLUGIN_RESOLVER.\n", v9, v10);
    }

    goto LABEL_46;
  }

  v11 = atomic_load(&qword_2A173F4F0);
  if (!v11)
  {
    v11 = sub_29A1522E4(&qword_2A173F4F0);
  }

  if ((*(v11 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v11 + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(v11 + 23))
  {
LABEL_17:
    v12 = atomic_load(&qword_2A173F4F0);
    if (!v12)
    {
      v12 = sub_29A1522E4(&qword_2A173F4F0);
    }

    __p = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindTypeByName(v12);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v182);
    if (__p == v182)
    {
      *&v182 = "ar/resolver.cpp";
      *(&v182 + 1) = "_InitializePrimaryResolver";
      *&v183 = 1065;
      *(&v183 + 1) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_InitializePrimaryResolver(const std::vector<_ResolverInfo> &)";
      LOBYTE(v184) = 0;
      v26 = atomic_load(&qword_2A173F4F0);
      if (!v26)
      {
        v26 = sub_29A1522E4(&qword_2A173F4F0);
      }

      if (*(v26 + 23) < 0)
      {
        v26 = *v26;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v182, "ArGetResolver(): Preferred resolver %s not found. Using default resolver.", v14, v26);
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::TfType::IsA(&__p, *v15))
      {
        if (sub_29A1CE9DC(0))
        {
          v19 = atomic_load(&qword_2A173F4F0);
          if (!v19)
          {
            v19 = sub_29A1522E4(&qword_2A173F4F0);
          }

          if (*(v19 + 23) < 0)
          {
            v19 = *v19;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Using preferred resolver %s\n", v17, v18, v19);
        }

        __dst.__r_.__value_.__r.__words[0] = __p;
      }

      else
      {
        *&v182 = "ar/resolver.cpp";
        *(&v182 + 1) = "_InitializePrimaryResolver";
        *&v183 = 1071;
        *(&v183 + 1) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_InitializePrimaryResolver(const std::vector<_ResolverInfo> &)";
        LOBYTE(v184) = 0;
        v27 = atomic_load(&qword_2A173F4F0);
        if (!v27)
        {
          v27 = sub_29A1522E4(&qword_2A173F4F0);
        }

        if (*(v27 + 23) < 0)
        {
          v27 = *v27;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v182, "ArGetResolver(): Preferred resolver %s does not derive from ArResolver. Using default resolver.\n", v16, v27);
      }
    }

    goto LABEL_46;
  }

  size = v172.__r_.__value_.__l.__size_;
  v20 = v172.__r_.__value_.__r.__words[0];
  if (v172.__r_.__value_.__r.__words[0] == v172.__r_.__value_.__l.__size_)
  {
    *&v182 = "ar/resolver.cpp";
    *(&v182 + 1) = "_InitializePrimaryResolver";
    *&v183 = 1080;
    *(&v183 + 1) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_InitializePrimaryResolver(const std::vector<_ResolverInfo> &)";
    LOBYTE(v184) = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v182, "!primaryResolvers.empty()", 0))
    {
      goto LABEL_46;
    }

    size = v172.__r_.__value_.__l.__size_;
    v20 = v172.__r_.__value_.__r.__words[0];
  }

  __dst.__r_.__value_.__r.__words[0] = *(v20 + 16);
  if ((0x6DB6DB6DB6DB6DB7 * ((size - v20) >> 3)) >= 3 && sub_29A1CE9DC(0))
  {
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&__dst);
    if (*(TypeName + 23) >= 0)
    {
      v25 = TypeName;
    }

    else
    {
      v25 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Found multiple primary asset resolvers, using %s\n", v23, v24, v25);
  }

LABEL_46:
  v182 = 0uLL;
  *&v183 = 0;
  __p = &qword_2A173F518;
  v171.__r_.__value_.__r.__words[0] = &v172;
  v171.__r_.__value_.__l.__size_ = &v182;
  if ((sub_29A1CEA3C(&__p, &__dst) & 1) == 0)
  {
    sub_29A1CEA3C(&__p, &v178);
  }

  if (sub_29A1CE9DC(0))
  {
    v35 = &v182;
    if (SBYTE7(v183) < 0)
    {
      v35 = v182;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): %s for primary resolver\n", v28, v29, v35);
  }

  if (SBYTE7(v183) < 0)
  {
    operator delete(v182);
  }

  sub_29A1CA010(&v172, v28, v29, v30, v31, v32, v33, v34);
  v36 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_AR_DISABLE_PLUGIN_URI_RESOLVERS);
  if (!v36)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v36 == 1)
  {
    if (sub_29A1CE9DC(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Plugin URI asset resolvers disabled via PXR_AR_DISABLE_PLUGIN_URI_RESOLVERS.\n", v37, v38);
    }

    goto LABEL_261;
  }

  v182 = 0u;
  v183 = 0u;
  LODWORD(v184) = 1065353216;
  v167 = v168;
  v164 = v169;
  if (v168 != v169)
  {
    v39 = 0;
    while (1)
    {
      if (sub_29A1CE9DC(0))
      {
        v40 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v167 + 2));
        if (*(v40 + 23) >= 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = *v40;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Found URI resolver %s\n", v41, v42, v43);
      }

      v178 = 0uLL;
      v179 = 0;
      sub_29A0925E4(&v178, 0xAAAAAAAAAAAAAAABLL * ((v167[4] - v167[3]) >> 3));
      v44 = v167[3];
      v45 = v167[4];
      while (v44 != v45)
      {
        if (*(v44 + 23) < 0)
        {
          sub_29A008D14(&__dst, *v44, *(v44 + 1));
        }

        else
        {
          v46 = *v44;
          __dst.__r_.__value_.__r.__words[2] = *(v44 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v46;
        }

        pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(&__dst, &v172);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v172;
        v47 = sub_29A12A708(&v182, &__dst);
        v48 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
          v0 = v47;
          v49 = vcnt_s8(*(&v182 + 8));
          v49.i16[0] = vaddlv_u8(v49);
          v50 = v49.u32[0];
          if (v49.u32[0] > 1uLL)
          {
            v51 = v47;
            if (v47 >= *(&v182 + 1))
            {
              v51 = v47 % *(&v182 + 1);
            }
          }

          else
          {
            v51 = (*(&v182 + 1) - 1) & v47;
          }

          v52 = *(v182 + 8 * v51);
          if (v52)
          {
            for (i = *v52; i; i = *i)
            {
              v54 = i[1];
              if (v54 == v0)
              {
                if (sub_29A0EC4B8(&v182, i + 2, &__dst.__r_.__value_.__l.__data_))
                {
                  v172.__r_.__value_.__r.__words[0] = "ar/resolver.cpp";
                  v172.__r_.__value_.__l.__size_ = "_InitializeURIResolvers";
                  v172.__r_.__value_.__r.__words[2] = 1157;
                  v173 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_InitializeURIResolvers(const std::vector<_ResolverInfo> &)";
                  v174 = 0;
                  v0 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v167 + 2));
                  v77 = *(v0 + 23);
                  v78 = *v0;
                  v79 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  v80 = __dst.__r_.__value_.__r.__words[0];
                  v81 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((i[5] + 16));
                  p_dst = &__dst;
                  if (v79 < 0)
                  {
                    p_dst = v80;
                  }

                  if (v77 >= 0)
                  {
                    v84 = v0;
                  }

                  else
                  {
                    v84 = v78;
                  }

                  if (*(v81 + 23) >= 0)
                  {
                    v85 = v81;
                  }

                  else
                  {
                    v85 = *v81;
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "ArGetResolver(): %s registered to handle scheme '%s' which is already handled by %s. Ignoring.\n", v82, v84, p_dst, v85);
                  goto LABEL_128;
                }
              }

              else
              {
                if (v50 > 1)
                {
                  if (v54 >= v48)
                  {
                    v54 %= v48;
                  }
                }

                else
                {
                  v54 &= v48 - 1;
                }

                if (v54 != v51)
                {
                  break;
                }
              }
            }
          }
        }

        v55 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v56 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v55 = __dst.__r_.__value_.__l.__size_;
          v56 = __dst.__r_.__value_.__r.__words[0];
        }

        if (v55)
        {
          if (v56->__r_.__value_.__s.__data_[0] - 123 > 0xFFFFFFE5)
          {
            v58 = &__dst;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v58 = __dst.__r_.__value_.__r.__words[0];
            }

            v59 = &v58->__r_.__value_.__s.__data_[1];
            v60 = v56 + v55;
            if (v55 != 1)
            {
              while (1)
              {
                v67 = *v59;
                if ((*v59 - 58) <= 0xF5u && (v67 - 123) <= 0xE5u)
                {
                  v68 = (1 << v67) & 0x680000000000;
                  v69 = *v59 > 0x2Eu || v68 == 0;
                  if (v69)
                  {
                    break;
                  }
                }

                if (++v59 == v60)
                {
                  goto LABEL_115;
                }
              }
            }

            if (v59 != v60)
            {
              v177[0] = v59;
              v177[1] = v60;
              CodePoint = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(v177);
              if (CodePoint - 57344 >= 0xFFFFF800 || CodePoint >= 0x110000)
              {
                v63 = 65533;
              }

              else
              {
                v63 = CodePoint;
              }

              v176 = v63;
              sub_29A1CECCC(&v176);
              v66 = &v180;
              if (v181 < 0)
              {
                v66 = v180;
              }

              pxrInternal__aapl__pxrReserved__::TfStringPrintf("'%s' not allowed in scheme. Characters must be ASCII 'a-z', '-', '+', or '.'", v64, v65, v66);
              LOBYTE(__p) = 0;
              v171 = v172;
              memset(&v172, 0, sizeof(v172));
              if (SHIBYTE(v181) < 0)
              {
                operator delete(v180);
              }

              goto LABEL_117;
            }

LABEL_115:
            LOBYTE(__p) = 1;
            v57 = "";
          }

          else
          {
            LOBYTE(__p) = 0;
            v57 = "Scheme must start with ASCII 'a-z'";
          }
        }

        else
        {
          LOBYTE(__p) = 0;
          v57 = "Scheme cannot be empty";
        }

        sub_29A008E78(&v171, v57);
LABEL_117:
        if (__p)
        {
          sub_29A070BA0(&v178);
        }

        v172.__r_.__value_.__r.__words[0] = "ar/resolver.cpp";
        v172.__r_.__value_.__l.__size_ = "_InitializeURIResolvers";
        v172.__r_.__value_.__r.__words[2] = 1168;
        v173 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_InitializeURIResolvers(const std::vector<_ResolverInfo> &)";
        v174 = 0;
        v70 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v71 = __dst.__r_.__value_.__r.__words[0];
        v72 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v167 + 2));
        v74 = &__dst;
        if (v70 < 0)
        {
          v74 = v71;
        }

        if (*(v72 + 23) >= 0)
        {
          v75 = v72;
        }

        else
        {
          v75 = *v72;
        }

        v76 = &v171;
        if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v76 = v171.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "ArGetResolver(): '%s' for '%s' is not a valid resource identifier scheme: %s. Paths with this prefix will be handled by other resolvers.", v73, v74, v75, v76);
        if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v171.__r_.__value_.__l.__data_);
        }

LABEL_128:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v44 = (v44 + 24);
      }

      if (v178 != *(&v178 + 1))
      {
        break;
      }

LABEL_244:
      v172.__r_.__value_.__r.__words[0] = &v178;
      sub_29A012C90(&v172);
      v167 += 7;
      if (v167 == v164)
      {
        goto LABEL_247;
      }
    }

    if (sub_29A1CE9DC(0))
    {
      v0 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v167 + 2));
      v86 = *(v0 + 23);
      v87 = *v0;
      pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v178, &v172);
      if (v86 >= 0)
      {
        v90 = v0;
      }

      else
      {
        v90 = v87;
      }

      v91 = &v172;
      if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v91 = v172.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Using %s for URI scheme(s) [%s]\n", v88, v89, v90, v91);
      if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v172.__r_.__value_.__l.__data_);
      }
    }

    if (v167[2] != *(qword_2A173F520 + 16))
    {
      v92 = operator new(0xC0uLL);
      v92[1] = 0;
      v92[2] = 0;
      *v92 = &unk_2A2046300;
      *&v172.__r_.__value_.__l.__data_ = 0uLL;
      sub_29B293238(v92 + 3, v167);
    }

    v93 = qword_2A173F528;
    v165 = qword_2A173F520;
    if (qword_2A173F528)
    {
      atomic_fetch_add_explicit((qword_2A173F528 + 8), 1uLL, memory_order_relaxed);
    }

    v94 = *(&v178 + 1);
    v166 = *(&v178 + 1);
    for (j = v178; ; j += 24)
    {
      if (j == v94)
      {
        if (v93)
        {
          sub_29A014BEC(v93);
        }

        goto LABEL_244;
      }

      v96 = *(j + 23);
      if ((v96 & 0x8000000000000000) != 0)
      {
        v96 = *(j + 8);
      }

      if (v96 > v39)
      {
        v39 = v96;
      }

      v97 = sub_29A12A708(&v182, j);
      v98 = v97;
      v99 = *(&v182 + 1);
      if (*(&v182 + 1))
      {
        v100 = vcnt_s8(*(&v182 + 8));
        v100.i16[0] = vaddlv_u8(v100);
        v101 = v100.u32[0];
        if (v100.u32[0] > 1uLL)
        {
          v0 = v97;
          if (v97 >= *(&v182 + 1))
          {
            v0 = v97 % *(&v182 + 1);
          }
        }

        else
        {
          v0 = (*(&v182 + 1) - 1) & v97;
        }

        v102 = *(v182 + 8 * v0);
        if (v102)
        {
          for (k = *v102; k; k = *k)
          {
            v104 = k[1];
            if (v104 == v98)
            {
              if (sub_29A0EC4B8(&v182, k + 2, j))
              {
                goto LABEL_232;
              }
            }

            else
            {
              if (v101 > 1)
              {
                if (v104 >= v99)
                {
                  v104 %= v99;
                }
              }

              else
              {
                v104 &= v99 - 1;
              }

              if (v104 != v0)
              {
                break;
              }
            }
          }
        }
      }

      v105 = operator new(0x38uLL);
      v172.__r_.__value_.__r.__words[0] = v105;
      v172.__r_.__value_.__l.__size_ = &v182;
      v172.__r_.__value_.__r.__words[2] = 1;
      *v105 = 0;
      v105[1] = v98;
      v106 = *(j + 16);
      *(v105 + 1) = *j;
      v105[4] = v106;
      *(j + 8) = 0;
      *(j + 16) = 0;
      *j = 0;
      v105[5] = v165;
      v105[6] = v93;
      if (v93)
      {
        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v107 = (*(&v183 + 1) + 1);
      if (!v99 || (*&v184 * v99) < v107)
      {
        break;
      }

LABEL_223:
      v124 = v182;
      v125 = *(v182 + 8 * v0);
      v126 = v172.__r_.__value_.__r.__words[0];
      if (v125)
      {
        *v172.__r_.__value_.__l.__data_ = *v125;
        *v125 = v126;
      }

      else
      {
        *v172.__r_.__value_.__l.__data_ = v183;
        *&v183 = v126;
        *(v124 + 8 * v0) = &v183;
        if (*v172.__r_.__value_.__l.__data_)
        {
          v127 = *(*v172.__r_.__value_.__l.__data_ + 8);
          if ((v99 & (v99 - 1)) != 0)
          {
            if (v127 >= v99)
            {
              v127 %= v99;
            }
          }

          else
          {
            v127 &= v99 - 1;
          }

          *(v182 + 8 * v127) = v172.__r_.__value_.__r.__words[0];
        }
      }

      v172.__r_.__value_.__r.__words[0] = 0;
      ++*(&v183 + 1);
      sub_29A1CEEEC(&v172);
LABEL_232:
      v94 = v166;
    }

    v108 = (v99 & (v99 - 1)) != 0;
    if (v99 < 3)
    {
      v108 = 1;
    }

    v109 = v108 | (2 * v99);
    v110 = vcvtps_u32_f32(v107 / *&v184);
    if (v109 <= v110)
    {
      prime = v110;
    }

    else
    {
      prime = v109;
    }

    if (*&prime == 1)
    {
      prime = 2;
    }

    else if ((*&prime & (*&prime - 1)) != 0)
    {
      prime = std::__next_prime(*&prime);
    }

    v99 = *(&v182 + 1);
    if (*&prime > *(&v182 + 1))
    {
      goto LABEL_189;
    }

    if (*&prime < *(&v182 + 1))
    {
      v118 = vcvtps_u32_f32(*(&v183 + 1) / *&v184);
      if (*(&v182 + 1) < 3uLL || (v119 = vcnt_s8(*(&v182 + 8)), v119.i16[0] = vaddlv_u8(v119), v119.u32[0] > 1uLL))
      {
        v118 = std::__next_prime(v118);
      }

      else
      {
        v120 = 1 << -__clz(v118 - 1);
        if (v118 >= 2)
        {
          v118 = v120;
        }
      }

      if (*&prime <= v118)
      {
        prime = v118;
      }

      if (*&prime >= v99)
      {
        v99 = *(&v182 + 1);
      }

      else
      {
        if (prime)
        {
LABEL_189:
          if (*&prime >> 61)
          {
            sub_29A00C8B8();
          }

          v112 = operator new(8 * *&prime);
          v113 = v182;
          *&v182 = v112;
          if (v113)
          {
            operator delete(v113);
          }

          v114 = 0;
          *(&v182 + 1) = prime;
          do
          {
            *(v182 + 8 * v114++) = 0;
          }

          while (*&prime != v114);
          v115 = v183;
          if (v183)
          {
            v116 = *(v183 + 8);
            v117 = vcnt_s8(prime);
            v117.i16[0] = vaddlv_u8(v117);
            if (v117.u32[0] > 1uLL)
            {
              if (v116 >= *&prime)
              {
                v116 %= *&prime;
              }
            }

            else
            {
              v116 &= *&prime - 1;
            }

            *(v182 + 8 * v116) = &v183;
            for (m = *v115; m; v116 = v122)
            {
              v122 = m[1];
              if (v117.u32[0] > 1uLL)
              {
                if (v122 >= *&prime)
                {
                  v122 %= *&prime;
                }
              }

              else
              {
                v122 &= *&prime - 1;
              }

              if (v122 != v116)
              {
                v123 = v182;
                if (!*(v182 + 8 * v122))
                {
                  *(v182 + 8 * v122) = v115;
                  goto LABEL_214;
                }

                *v115 = *m;
                *m = **(v123 + 8 * v122);
                **(v123 + 8 * v122) = m;
                m = v115;
              }

              v122 = v116;
LABEL_214:
              v115 = m;
              m = *m;
            }
          }

          v99 = prime;
          goto LABEL_218;
        }

        v128 = v182;
        *&v182 = 0;
        if (v128)
        {
          operator delete(v128);
        }

        v99 = 0;
        *(&v182 + 1) = 0;
      }
    }

LABEL_218:
    if ((v99 & (v99 - 1)) != 0)
    {
      if (v98 >= v99)
      {
        v0 = v98 % v99;
      }

      else
      {
        v0 = v98;
      }
    }

    else
    {
      v0 = (v99 - 1) & v98;
    }

    goto LABEL_223;
  }

  v39 = 0;
LABEL_247:
  if (*(&xmmword_2A173F540 + 1))
  {
    sub_29A1CEF38(xmmword_2A173F540);
    *&xmmword_2A173F540 = 0;
    v129 = qword_2A173F538;
    if (qword_2A173F538)
    {
      v130 = 0;
      do
      {
        *(qword_2A173F530 + 8 * v130++) = 0;
      }

      while (v129 != v130);
    }

    *(&xmmword_2A173F540 + 1) = 0;
  }

  v131 = v182;
  *&v182 = 0;
  v132 = qword_2A173F530;
  qword_2A173F530 = v131;
  if (v132)
  {
    operator delete(v132);
  }

  v133 = *(&v182 + 1);
  *(&v182 + 1) = 0;
  xmmword_2A173F540 = v183;
  dword_2A173F550 = v184;
  qword_2A173F538 = v133;
  if (*(&v183 + 1))
  {
    v134 = *(v183 + 8);
    if ((v133 & (v133 - 1)) != 0)
    {
      if (v134 >= v133)
      {
        v134 %= v133;
      }
    }

    else
    {
      v134 &= v133 - 1;
    }

    *(qword_2A173F530 + 8 * v134) = &xmmword_2A173F540;
    v183 = 0uLL;
  }

  *&xmmword_2A173F558 = v39;
  sub_29A1CBFA8(&v182);
LABEL_261:
  *&v172.__r_.__value_.__r.__words[1] = 0uLL;
  v172.__r_.__value_.__r.__words[0] = &v172.__r_.__value_.__l.__size_;
  AllDerivedTypes = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*v135, &v172);
  v137 = v172.__r_.__value_.__r.__words[2];
  v138 = qword_2A173F570;
  v139 = *(&xmmword_2A173F558 + 1);
  if (v172.__r_.__value_.__r.__words[2] > (qword_2A173F570 - *(&xmmword_2A173F558 + 1)) >> 4)
  {
    if (v172.__r_.__value_.__r.__words[2] >> 60)
    {
      sub_29A00C9A4();
    }

    v140 = qword_2A173F568;
    v184 = &xmmword_2A173F558 + 8;
    v141 = operator new(16 * v172.__r_.__value_.__r.__words[2]);
    memcpy(v141, v139, v140 - v139);
    *(&xmmword_2A173F558 + 1) = v141;
    qword_2A173F568 = v141 + v140 - v139;
    qword_2A173F570 = v141 + 16 * v137;
    *&v183 = v139;
    *(&v183 + 1) = v138;
    *&v182 = v139;
    *(&v182 + 1) = v139;
    AllDerivedTypes = sub_29A1CEF7C(&v182);
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(AllDerivedTypes);
  v142 = v172.__r_.__value_.__r.__words[0];
  if (v172.__r_.__value_.__l.__data_ != &v172.__r_.__value_.__r.__words[1])
  {
    do
    {
      if (sub_29A1CE9DC(0))
      {
        v143 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v142[1].__words[1]);
        if (*(v143 + 23) >= 0)
        {
          v146 = v143;
        }

        else
        {
          v146 = *v143;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("ArGetResolver(): Found package resolver %s\n", v144, v145, v146);
      }

      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(v142[1].__words[1], &__dst);
      v147 = sub_29B290C20(&__dst);
      if (v148 & 1 | v147)
      {
        sub_29A17F138(&__dst);
      }

      if (sub_29A1CE9DC(0))
      {
        v149 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v142[1].__words[1]);
        if (*(v149 + 23) >= 0)
        {
          v152 = v149;
        }

        else
        {
          v152 = *v149;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find plugin for package resolver %s", v150, v151, v152);
      }

      v153 = __dst.__r_.__value_.__l.__size_;
      if (__dst.__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v153 + 8))(v153);
      }

      v154 = v142->__words[1];
      if (v154)
      {
        do
        {
          v155 = v154;
          v154 = v154->__r_.__value_.__r.__words[0];
        }

        while (v154);
      }

      else
      {
        do
        {
          v155 = v142->__words[2];
          v69 = v155->__r_.__value_.__r.__words[0] == v142;
          v142 = v155;
        }

        while (!v69);
      }

      v142 = v155;
    }

    while (v155 != &v172.__r_.__value_.__r.__words[1]);
  }

  sub_29A082B84(&v172, v172.__r_.__value_.__l.__size_);
  return sub_29A1CA010(&v168, v156, v157, v158, v159, v160, v161, v162);
}

void sub_29A1CBBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, char a24, int a25, __int16 a26, char a27, int a28, void *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45)
{
  sub_29A1CA010(&a29, a2, a3, a4, a5, a6, a7, a8);
  sub_29A1CA010(&a19, v46, v47, v48, v49, v50, v51, v52);
  sub_29A1CE730(&qword_2A173F5D8);
  sub_29A1CF350(qword_2A173F578);
  sub_29A1CBF40(&xmmword_2A173F558 + 1);
  sub_29A1CBFA8(&qword_2A173F530);
  if (qword_2A173F528)
  {
    sub_29A014BEC(qword_2A173F528);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A1CBEEC(uint64_t a1)
{
  sub_29A1CE730((a1 + 192));
  sub_29A1CF350((a1 + 96));
  sub_29A1CBF40((a1 + 72));
  sub_29A1CBFA8(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void **sub_29A1CBF40(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          sub_29A014BEC(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_29A1CBFA8(uint64_t a1)
{
  sub_29A1CEF38(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}