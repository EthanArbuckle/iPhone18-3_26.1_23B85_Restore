double sub_299DF7CBC(int8x16_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = (0xC90FDAA22168C235 * a3) >> 64;
  a1.i64[0] = COERCE__INT64(vcvtd_n_f64_u64(v5, 0x3DuLL)) - (a4 << 52);
  *a1.i64 = COERCE_DOUBLE(COERCE__INT64(vcvtd_n_f64_u64(v5 & 0xFFFFFFFFFFFFLL, 0x3DuLL)) - (a4 << 52)) + *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (loc_299DF7C88 + *a1.i64 * *a1.i64 * loc_299DF7C80) + 0.00000275573136) + -0.000198412698) + 0.00833333333) + -0.166666667)) + COERCE_DOUBLE(COERCE__INT64(vcvtd_n_f64_u64(v5 & 0xFFFF000000000000, 0x3DuLL)) - (a4 << 52));
  a1.i64[0] = veorq_s8(a1, vdupq_n_s64(v4)).u64[0];
  return *a1.i64;
}

double sub_299DF7D30(int8x16_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *a1.i64 = a7 + a8;
  *a1.i64 = a8 + (a7 + a8) * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (*a1.i64 * *a1.i64 * (loc_299DF7C88 + *a1.i64 * *a1.i64 * loc_299DF7C80) + 0.00000275573136) + -0.000198412698) + 0.00833333333) + -0.166666667)) + a7;
  a1.i64[0] = veorq_s8(a1, vdupq_n_s64(v8)).u64[0];
  return *a1.i64;
}

double sub_299DF7DD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *&v4 = COERCE__INT64(vcvtd_n_f64_u64((((0xC90FDAA22168C235 * a2) >> 64) * ((0xC90FDAA22168C235 * a2) >> 64)) >> 64, 0x3AuLL)) - (a3 << 53);
  *&result = COERCE__INT64(v4 * (v4 * (v4 * (v4 * (v4 * (v4 * (v4 * -1.13585365e-11 + 0.00000000208757008) + -0.000000275573142) + 0.0000248015873) + -0.00138888889) + 0.0416666667) + -0.5) + 1.0) + v3;
  return result;
}

long double nexttoward(long double __x, long double __y)
{
  if (__x < __y)
  {
    v2 = INFINITY;
    return nexttowardl(__x, v2);
  }

  if (__x > __y)
  {
    v2 = -INFINITY;
    return nexttowardl(__x, v2);
  }

  v4 = __x == __y;
  result = __y + __y;
  if (v4)
  {
    return __y;
  }

  return result;
}

long double nexttowardl(long double __x, long double __y)
{
  if (__y <= __x)
  {
    if (__y == __x)
    {
      return __y;
    }

    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (__x == 0.0)
  {
    *&__y = *&__y & 0x8000000000000000 | 1;
  }

  else
  {
    *&__y = (v2 ^ (*&__x >> 63)) - (*&__x >> 63) + *&__x;
  }

  return __y;
}

float cosf(float a1)
{
  v1 = fabsf(a1);
  if (LODWORD(v1) >= 0x42F00000)
  {
    if (LODWORD(v1) >= 0x4C800000)
    {
      if (LODWORD(v1) < 0x7F800000)
      {
        v2 = &loc_299DF83B4 + 16 * (HIBYTE(LODWORD(v1)) - 64);
        v3 = *(v2 + 1);
        v4 = v1 * *v2 + 0.5;
        JUMPOUT(0x299DF8140);
      }

      JUMPOUT(0x299DF81ECLL);
    }

    JUMPOUT(0x299DF8094);
  }

  if (LODWORD(v1) >= 0x3F490FDB)
  {
    JUMPOUT(0x299DF808CLL);
  }

  if (LODWORD(v1) < 0x39800000)
  {
    return (67109000.0 - v1) * 0.000000014901;
  }

  else
  {
    return v1 * v1 * (v1 * v1 * 0.0416666204 + -0.499999997 + v1 * v1 * (v1 * v1) * (v1 * v1 * 0.0000243835673 + -0.00138866816)) + 1.0;
  }
}

float sinf(float a1)
{
  v2 = LODWORD(a1) & 0x7FFFFFFF;
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x42F00000)
  {
    if (v2 >= 0x7F800000)
    {
      return a1 - a1;
    }

    else
    {
      v9 = a1;
      v10 = (&loc_299DF83B4 + 16 * HIBYTE(v2) - 1024);
      v1.f64[0] = v9 * *v10;
      *&v11 = v1.f64[0] - vrndnd_f64(v1.f64[0]) + v9 * v10[1];
      return COERCE_DOUBLE(veor_s8(v11, *&vshlq_n_s64(vcvtnq_s64_f64(v1), 0x3FuLL))) * (*&v11 * *&v11 * (*&v11 * *&v11 + -4.16477198) + 15.4854663) * (0.0764924806 * (*&v11 * *&v11 * (*&v11 * *&v11 + -3.64939237) + 2.65220347));
    }
  }

  else if (v2 < 0x3F490FDB)
  {
    if (v2 < 0x39800000)
    {
      return (a1 + (a1 * 67109000.0)) * 0.000000014901;
    }

    else
    {
      return a1 + a1 * (a1 * a1) * -0.166666546 + a1 * a1 * (a1 * (a1 * a1)) * (a1 * a1 * -0.000195152832 + 0.00833216076);
    }
  }

  else
  {
    v3 = a1;
    v4 = vcvtnd_s64_f64(v3 * 0.636619772);
    v5 = v3 - vrndnd_f64(v3 * 0.636619772) * 1.57079633;
    v6 = (v4 & 1) == 0;
    v7 = (v4 >> 1 << 63);
    if (v6)
    {
      return *veor_s8(COERCE_INT8X8_T(v5 + v5 * (v5 * v5) * -0.166666546 + v5 * v5 * (v5 * (v5 * v5)) * (v5 * v5 * -0.000195152832 + 0.00833216076)), v7).i32;
    }

    else
    {
      return *veor_s8(COERCE_INT8X8_T(v5 * v5 * (v5 * v5 * 0.0416666204 + -0.499999997 + v5 * v5 * (v5 * v5) * (v5 * v5 * 0.0000243835673 + -0.00138866816)) + 1.0), v7).i32;
    }
  }
}

__float2 __sincosf_stret(float a1)
{
  v1 = LODWORD(a1) & 0x7FFFFFFF;
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x42F00000)
  {
    if (v1 >= 0x7F800000)
    {
      v7.f32[0] = a1 - a1;
      v8 = v7.f32[0];
      goto LABEL_13;
    }

    v9 = a1 + a1;
    v10 = (&loc_299DF83B4 + 16 * HIBYTE(v1) - 1024);
    v11 = v9 * *v10;
    v12 = v9 * v10[1];
    v3 = vcvtnd_s64_f64(v11);
    v4 = v11 - vrndnd_f64(v11) + v12;
  }

  else
  {
    if (v1 < 0x39800000)
    {
      v8 = (67109000.0 - fabsf(a1)) * 0.000000014901;
      v7.f32[0] = (a1 + (a1 * 67109000.0)) * 0.000000014901;
      goto LABEL_13;
    }

    v2 = a1 * 0.636619772;
    v3 = vcvtnd_s64_f64(v2);
    v4 = v2 - vrndnd_f64(v2);
  }

  v5 = vdupq_lane_s64(COERCE__INT64(v4 * v4), 0);
  v6.f64[0] = v4 * 0.000158206744;
  v6.f64[1] = 0.000903631703;
  v7 = vcvt_f32_f64(vmulq_f64(vmulq_f64(v6, vmlaq_f64(*(&qword_299DF87B8[5] + 4), v5, vaddq_f64(v5, *&dword_299DF87B4))), vmlaq_f64(*(&qword_299DF87B8[7] + 4), v5, vaddq_f64(v5, *(&qword_299DF87B8[1] + 4)))));
  if ((v3 & 2) != 0)
  {
    v7 = vneg_f32(v7);
  }

  if (v3)
  {
    v8 = -v7.f32[0];
    v7.i32[0] = v7.i32[1];
  }

  else
  {
    v8 = v7.f32[1];
  }

LABEL_13:
  result.__sinval = v7.f32[0];
  result.__cosval = v8;
  return result;
}

long double remainderl(long double __x, long double __y)
{
  v2 = __x;
  v3 = fabs(__x);
  if (v3 == INFINITY || __y == 0.0)
  {
    return INFINITY - INFINITY;
  }

  v5 = fabs(__y);
  if (v5 != INFINITY && __x != 0.0)
  {
    v6 = v3;
    if (*&v3 >> 52)
    {
      v7 = -1023;
    }

    else
    {
      v6 = COERCE_DOUBLE(*&v3 | 0x3FF0000000000000) - 1.0;
      v7 = -2045;
    }

    v8 = *&v6 >> 52;
    v9 = v7 + (*&v6 >> 52);
    v10 = v5;
    if (*&v5 >> 52)
    {
      v11 = -1023;
    }

    else
    {
      v10 = COERCE_DOUBLE(*&v5 | 0x3FF0000000000000) - 1.0;
      v11 = -2045;
    }

    v12 = *&v10 >> 52;
    v13 = v11 + (*&v10 >> 52);
    if (v9 - v13 < 0)
    {
      v19 = 0;
    }

    else
    {
      if (v9 == v13)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        v14 = sub_299DF8A70(-v13, v5);
        v15 = sub_299DF8A70(-v9, v3);
        v16 = 0;
        v17 = v11 + v12 - v7 - v8;
        do
        {
          if (v15 >= v14)
          {
            v15 = v15 - v14;
            v16 |= 1u;
          }

          v16 *= 2;
          v15 = v15 + v15;
        }

        while (!__CFADD__(v17++, 1));
        v3 = sub_299DF8A70(v13, v15);
      }

      if (v3 >= v5)
      {
        v3 = v3 - v5;
        LOBYTE(v16) = 1;
      }

      v19 = v16 & 1;
    }

    if (v3 >= 4.49423284e307)
    {
      if (v3 <= 0.5 * v5 && ((v3 == 0.5 * v5) & v19) != 1)
      {
        goto LABEL_30;
      }
    }

    else if (v3 + v3 <= v5 && ((v3 + v3 == v5) & v19) == 0)
    {
      goto LABEL_30;
    }

    v3 = v3 - v5;
LABEL_30:
    if (v2 >= 0)
    {
      return v3;
    }

    else
    {
      return -v3;
    }
  }

  return v2;
}

double sub_299DF8A70(uint64_t a1, double a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (v2 >= 0x3FF)
  {
    v3 = ((a1 >> 31) ^ 0x3FE) - (a1 >> 31);
    *&v4 = (v3 + 1023) << 52;
    if ((a1 & 0x80000000) != 0)
    {
      do
      {
        a2 = a2 * v4;
        a1 = (a1 - v3);
      }

      while (a1 < -1022);
    }

    else
    {
      do
      {
        a2 = a2 * v4;
        a1 = (a1 - v3);
      }

      while (a1 > 1022);
    }
  }

  return a2 * COERCE_DOUBLE((a1 << 52) + 0x3FF0000000000000);
}

long double expl(long double __x)
{
  if (*&__x < 0x40862E42FEFA39F0uLL || *&__x < 0xC0874A0000000000)
  {
    v1 = vcvtmd_s64_f64(__x * 184.664965);
    v2 = __x * 184.664965 - v1;
    v3 = -(__x * 184.664965 - __x * 184.664965 - __x * 2.60547504e-15);
    v4 = &qword_299DF8C80[2 * (v1 & 0x7F)];
    v5 = *v4;
    v6 = (v2 + v4[1] + v3) * 3.88934341e-14 * ((v2 + v4[1] + v3) * (v2 + 990.168112) + 344055.622) * ((v2 + v4[1] + v3) * (v2 + -68.926592) + 404678.883);
    v7 = v1 >> 7;
    if (v7 + 1022 < 0)
    {
      return (COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) + 1.0 + COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) - (COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) + 1.0 - 1.0) + COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) * v6 - 1.0) * 2.22507386e-308;
    }

    else
    {
      *&result = COERCE__INT64(v5 + v6 * v5) + (v7 << 52);
    }
  }

  else if (__x >= 0.0)
  {
    return __x * 1.79769313e308;
  }

  else
  {
    v9 = 2.22507386e-308;
    if (*&__x >= 0xFFF0000000000000)
    {
      v9 = 0.0;
    }

    return v9 * v9;
  }

  return result;
}

long double hypotl(long double __x, long double __y)
{
  v2 = fabs(__x);
  v3 = fabs(__y);
  result = fmax(v2, v3);
  v5 = (*&result >> 52) & 0x7FFLL;
  if (v5 == 2047)
  {
    return result + result;
  }

  v6 = fmin(v2, v3);
  if (v6 != 0.0)
  {
    if (v5 - ((*&v6 >> 52) & 0x7FFLL) > 0x1B)
    {
      v6 = 0.0;
    }

    if (v5 >= 0x5FE)
    {
      v7 = 1.55251809e231;
      result = result * 6.44114877e-232;
      v6 = v6 * 6.44114877e-232;
    }

    else if (v5 < 0x21B)
    {
      v7 = 6.44114877e-232;
      result = result * 1.55251809e231;
      v6 = v6 * 1.55251809e231;
    }

    else
    {
      v7 = 1.0;
    }

    return sqrt(result * result + v6 * v6) * v7;
  }

  return result;
}

long double fmodl(long double __x, long double __y)
{
  v2 = *&__x & 0x7FFFFFFFFFFFFFFFLL;
  v3 = *&__y & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&__x & 0x7FFFFFFFFFFFFFFFuLL) - 0x7FF0000000000000 < 0x8010000000000001 || (*&__y & 0x7FFFFFFFFFFFFFFFuLL) - 0x7FF0000000000000 < 0x8010000000000001)
  {
    v5 = NAN;
    if (fabs(__x) == INFINITY || __y == 0.0)
    {
      return v5;
    }

    v6 = fabs(__y) != INFINITY;
    if (__x == 0.0 || !v6)
    {
      return __x;
    }
  }

  if (v3 >= v2)
  {
    if (v3 == v2)
    {
      *&v5 = v2 ^ *&__x;
    }

    else
    {
      return __x;
    }
  }

  else
  {
    v7 = 0;
    v8 = v2 >> 52;
    v9 = v3 >> 52;
    v10 = __clz(v2);
    v11 = 12 - v10;
    v12 = v8 == 0;
    if (v8)
    {
      v11 = v8;
    }

    v13 = *&__y & 0xFFFFFFFFFFFFFLL;
    v14 = (*&__x & 0xFFFFFFFFFFFFFLL) << (v10 - 11);
    if (!v12)
    {
      v14 = *&__x & 0xFFFFFFFFFFFFFLL;
    }

    v15 = __clz(v3);
    v16 = v13 << (v15 - 11);
    v17 = 12 - v15;
    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v13 = v16;
    }

    v18 = v14 | 0x10000000000000;
    v19 = v13 | 0x10000000000000;
    v20 = v11 - v17;
    do
    {
      v20 += ~v7;
      v21 = (v18 << v7) - v19;
      v22 = v19 & (v21 >> 63);
      v18 = v22 + 2 * v21;
      v7 = __clz(v18) - 11;
      if (v18)
      {
        v23 = v20 < v7;
      }

      else
      {
        v23 = 1;
      }
    }

    while (!v23);
    v24 = (v18 + v22) >> 1;
    if (v20 >= 0)
    {
      v24 = v18;
    }

    v25 = v24 << (v20 & ~(v20 >> 31));
    if (v25)
    {
      v26 = __clz(v25) - 11;
      v27 = (v17 - v26);
      v28 = *&__x & 0x8000000000000000 | (v25 << v26) & 0xFFFFFFFFFFFFFLL;
      if (v27 < 1)
      {
        return COERCE_DOUBLE(v28 | ((v27 + 1022) << 52)) * 2.22507386e-308;
      }

      v29 = v28 | (v27 << 52);
    }

    else
    {
      v29 = *&__x & 0x8000000000000000;
    }

    return *&v29;
  }

  return v5;
}

long double atan2l(long double __y, long double __x)
{
  v2 = fabs(__y);
  v3 = 1.0;
  if (__y < 0.0)
  {
    v3 = -1.0;
  }

  v4 = -0.0;
  if (__y < 0.0)
  {
    v5 = v2;
  }

  else
  {
    v4 = 0.0;
    v5 = __y;
  }

  if ((*&__x & 0x8000000000000000) != 0)
  {
    v6 = v4 + v3 * 3.14159265;
    v4 = v4 + v3 * 5.1266883e-12;
    v3 = -v3;
    __x = fabs(__x);
  }

  else
  {
    v6 = v4;
  }

  if (__x == v5)
  {
    if (v5 != 0.0)
    {
      v6 = v6 + v3 * 0.785398163;
      v4 = v4 + v3 * 1.28167208e-12;
    }

    return v4 + v6;
  }

  if (__x < v5)
  {
    v6 = v6 + v3 * 1.57079633;
    v4 = v4 + v3 * 2.56334415e-12;
    v3 = -v3;
    v8 = v5;
  }

  else
  {
    v8 = __x;
    __x = v5;
  }

  v9 = (*&v8 >> 52) & 0x7FFLL;
  if ((v9 - 1535) <= 0xFFFFFC00)
  {
    if (v9 > 0x1FF)
    {
      v11 = 0.0;
      if (((*&__x >> 52) & 0x7FFuLL) < 0x5FB)
      {
        goto LABEL_28;
      }

      v10 = 8.63616856e-78;
    }

    else
    {
      v10 = 1.15792089e77;
    }

    v8 = v8 * v10;
    __x = __x * v10;
  }

  v11 = 0.0;
  if (__x >= v8 * 0.5)
  {
    v12 = v8 + __x * 0.5;
    v13 = v8 - v12 + __x * 0.5;
    __x = __x + v8 * -0.5;
    v11 = v13 + 0.0;
    v6 = v6 + v3 * 0.463647609;
    v4 = v4 + v3 * 6.29981672e-12;
    v8 = v12;
  }

  if (__x >= v8 * 0.25)
  {
    v14 = v8 + __x * 0.25;
    v15 = v8 - v14 + __x * 0.25;
    __x = __x + v8 * -0.25;
    v11 = v11 + v15;
    v6 = v6 + v3 * 0.244978663;
    v4 = v4 + v3 * 9.15639383e-13;
    v8 = v14;
  }

  if (__x >= v8 * 0.125)
  {
    v16 = v8 + __x * 0.125;
    v17 = v8 - v16 + __x * 0.125;
    __x = __x + v8 * -0.125;
    v11 = v11 + v17;
    v6 = v6 + v3 * 0.124354995;
    v4 = v4 + v3 * 1.68500974e-13;
    v8 = v16;
  }

LABEL_28:
  v18 = ((*&v8 >> 52) & 0x7FF) - ((*&__x >> 52) & 0x7FF);
  if (v18 > 0x1E)
  {
    if (v18 < 0x3D || v6 == 0.0)
    {
      v26 = v3 * __x / v8 * 3.40282367e38;
      if (v26 != 0.0)
      {
        v4 = v4 + (v26 + v26 * -5.42101086e-20) * 2.93873588e-39;
      }
    }

    return v4 + v6;
  }

  v19 = v3 * __x;
  v20 = v19 / v8;
  v21 = (v19 - v19 / v8 * v8 - v11 * (v19 / v8)) / v8;
  v22 = v20 * v20 * -0.333333333;
  v23 = v20 * (v22 + 1.0);
  v24 = v20 * (v22 + 1.0 - (v22 + 1.0) + -1.75165416e-18) - (v23 - v23) + v21 * (v22 + 1.0);
  v25 = vmulq_n_f64(vmlaq_n_f64(xmmword_299E2DE10, vaddq_f64(vdupq_lane_s64(COERCE__INT64(v20 * v20), 0), xmmword_299E2DE00), v20 * v20), v20 * v20);
  return v6 + v23 + v23 + v6 - (v6 + v23) + v4 + vmuld_lane_f64(v20 * 0.0733832886, v25, 1) * v25.f64[0] + v24;
}

long double acosl(long double __x)
{
  if (__x < -0.4)
  {
    if (__x < -0.6)
    {
      if (__x > -1.0)
      {
        v1 = sqrt(__x + 1.0) * (((((((((((__x * 0.0000167040296 + 0.000179640775) * __x + 0.000915701939) * __x + 0.00297267014) * __x + 0.0070163077) * __x + 0.013174238) * __x + 0.0213350155) * __x + 0.0323969858) * __x + 0.0503948885) * __x + 0.0889636944) * __x + 0.2145907) * __x + 1.57079565);
        return 3.14159265 - v1 + 3.14159265 - (3.14159265 - v1) - v1 + 1.2246468e-16;
      }

      if (__x == -1.0)
      {
        v10 = 3.14159265;
        return v10 + 2.22507386e-308;
      }

      return INFINITY - INFINITY;
    }

    return sub_299E1C890(__x);
  }

  if (__x <= 0.4)
  {
    if (fabs(__x) > 1.72254642e-16)
    {
      return 1.57079633 - (__x + __x * __x * (((((((((__x * __x * 0.0195135077 + 0.00467347315) * (__x * __x) + 0.01277871) * (__x * __x) + 0.0137852767) * (__x * __x) + 0.017369533) * (__x * __x) + 0.0223711522) * (__x * __x) + 0.0303819824) * (__x * __x) + 0.0446428563) * (__x * __x) + 0.075) * (__x * __x) + 0.166666667) * __x);
    }

    v10 = 1.57079633;
    return v10 + 2.22507386e-308;
  }

  if (__x <= 0.6)
  {
    return sub_299E1C890(__x);
  }

  v3 = __x == 1.0;
  if (__x < 1.0)
  {
    v4 = ((((((((((__x * -0.0000159486667 + 0.000173088354) * __x + -0.00088994591) * __x + 0.00291211469) * __x + -0.00692168921) * __x + 0.0130710732) * __x + -0.0212549234) * __x + 0.0323527118) * __x + -0.0503778106) * __x + 0.0889593166) * __x + -0.214590029) * __x;
    v5 = 1.0 - __x;
    v6 = 1.0 / sqrt(v5);
    v7 = v5 * v6;
    v8 = -(v5 * v6 - v6 * v5);
    v9 = v7 * -0.5 * (v6 * v7 + -1.0 + v6 * v8);
    return (v8 + v9 + v7 - (v7 + v9)) * (v4 + 1.5707956) + (v7 + v9) * (v4 + 1.5707956 - (v4 + 1.5707956) + 2.95874534e-18) + (v7 + v9) * (v4 + 1.5707956);
  }

  result = 0.0;
  if (!v3)
  {
    return INFINITY - INFINITY;
  }

  return result;
}

long double asinl(long double __x)
{
  if (__x < -0.5)
  {
    return -sub_299DF9E68(-__x);
  }

  if (__x <= 0.5)
  {
    v3 = fabs(__x);
    if (v3 <= 0.0000000214911933)
    {
      if (v3 >= 2.22507386e-308)
      {
        return (2.22507386e-308 + 1.0) * __x;
      }

      else
      {
        return __x - __x * __x;
      }
    }

    else
    {
      return __x + __x * __x * (((((((((((__x * __x * 0.0316658386 + -0.0158620441) * (__x * __x) + 0.0192942787) * (__x * __x) + 0.00661531652) * (__x * __x) + 0.0121483893) * (__x * __x) + 0.013888541) * (__x * __x) + 0.0173593517) * (__x * __x) + 0.0223717831) * (__x * __x) + 0.030381958) * (__x * __x) + 0.0446428569) * (__x * __x) + 0.075) * (__x * __x) + 0.166666667) * __x;
    }
  }

  else
  {

    return sub_299DF9E68(__x);
  }
}

double sub_299DF9E68(double a1)
{
  if (a1 >= 1.0)
  {
    if (a1 == 1.0)
    {
      return 2.22507386e-308 + 1.57079633;
    }

    else
    {
      return INFINITY - INFINITY;
    }
  }

  else
  {
    v1 = (((((((((((a1 * -0.000012118982 + 0.000130756419) * a1 + -0.000670248512) * a1 + 0.0021912256) * a1 + -0.00520497316) * a1 + 0.00978682936) * a1 + -0.0156746039) * a1 + 0.022988348) * a1 + -0.0331919619) * a1 + 0.0506659694) * a1 + -0.0890259194) * a1 + 0.214599334) * a1;
    v2 = 1.0 - a1;
    v3 = 1.0 / sqrt(v2);
    v4 = v2 * v3;
    v5 = -(v2 * v3 - v3 * v2);
    v6 = v4 * -0.5 * (v3 * v4 + -1.0 + v3 * v5);
    v7 = v4 + v6;
    v8 = v5 + v6 + v4 - (v4 + v6);
    v9 = v1 + -1.5707962;
    return v7 * v9 + 1.57079633 + v7 * v9 + 1.57079633 - (v7 * v9 + 1.57079633) + v7 * (v1 + -1.5707962 - (v1 + -1.5707962) + 1.06407195e-16) - (v7 * v9 - v7 * v9) + v8 * v9 + 6.123234e-17;
  }
}

double sub_299DF9FCC(double a1)
{
  if (a1 >= 9.00719925e15)
  {
    v2 = 2.22507386e-308;
  }

  else
  {
    v1 = 1.0 / a1;
    v2 = 6.123234e-17 - (v1 + v1 * v1 * ((((((((((v1 * v1 * -0.0118364085 + 0.0313068402) * (v1 * v1) + -0.0470977989) * (v1 * v1) + 0.0575572606) * (v1 * v1) + -0.0664685022) * (v1 * v1) + 0.0769018905) * (v1 * v1) + -0.0909075706) * (v1 * v1) + 0.111111041) * (v1 * v1) + -0.142857141) * (v1 * v1) + 0.2) * (v1 * v1) + -0.333333333) * v1);
  }

  return v2 + 1.57079633;
}

long double log2l(long double __x)
{
  v1 = __x;
  if ((*&__x - 0x10000000000000) >= 0x7FE0000000000000)
  {
    if (__x == 0.0)
    {
      return -1.0 / 0.0;
    }

    if (__x < 0.0)
    {
      return INFINITY - INFINITY;
    }

    if (*&__x - 0x10000000000000 >= 0)
    {
      return __x;
    }

    *&v1 = COERCE__INT64(COERCE_DOUBLE(vorr_s8(*&__x, COERCE_INT8X8_T(1.0))) - 1.0) - 0x3FE0000000000000;
  }

  v2 = (*&v1 - 0x3FE7F00000000000) >> 52;
  v3 = *&v1 & 0xFFFFFFFFFFFFFLL;
  v4 = COERCE_DOUBLE(vorr_s8(v3, COERCE_INT8X8_T(1.0)));
  v5 = &qword_299DFA268[2 * ((v3 + 0x100000000000) >> 45) + 1];
  v6 = *v5;
  v7 = v5[1];
  v8 = -(1.0 - v4 * *v5);
  v9 = v8 * v8 * (v8 * 0.206104795 + -0.267180584) * (v8 * (1.37739687 - (1.0 - v4 * v6)) + 1.61679209) * (v8 * (-1.24772208 - (1.0 - v4 * v6)) + 1.66988081);
  if (v2)
  {
    v10 = COERCE_DOUBLE(vand_s8(-134217728, *&v7));
    return v2 + v10 + v7 - v10 + v9 + v8 * 1.44269504;
  }

  else
  {
    v11 = v6 * v4 - 1.0;
    v12 = -(v6 * v4 - v6 * v4);
    v13 = v8 * 0.0000000192596299;
    v14 = COERCE_DOUBLE(vand_s8(*&v8, -134217728));
    return v13 + (v12 + v11 - v14) * 1.44269502 + v14 * 1.44269502 - (v7 + v14 * 1.44269502 - v7) + v9 + v7 + v14 * 1.44269502;
  }
}

float expf(float a1)
{
  if ((LODWORD(a1) >> 23) >= 0x86u)
  {
    if (a1 >= 0.0)
    {
      return a1 * 3.4028e38;
    }

    else
    {
      if (LODWORD(a1) < 0xFF800000)
      {
        v5 = 1.1755e-38;
      }

      else
      {
        v5 = 0.0;
      }

      return v5 * v5;
    }
  }

  else
  {
    v1 = a1;
    v2 = 184.664965 * v1 + 6.75539944e15;
    *&v3 = qword_299E24530[LOBYTE(v2) & 0x7F] + (*&v2 << 45);
    return v3 + (0.0000146622624 * -(v2 - 6.75539944e15 - 184.664965 * v1) + 0.00541521731) * -(v2 - 6.75539944e15 - 184.664965 * v1) * v3;
  }
}

float atan2f(float result, float a2)
{
  if (result < a2)
  {
    if (-a2 >= result)
    {
      if (-a2 == result)
      {
        return -0.785398163;
      }

      else
      {
        v8 = a2 / result;
        v9 = vdupq_lane_s64(COERCE__INT64(v8 * v8), 0);
        v10 = &qword_299DFB9D0;
        *&v11.f64[0] = *&vld1q_dup_f64(v10);
        v11.f64[1] = v8;
        v12 = vmulq_f64(vmulq_f64(vmlaq_n_f64(xmmword_299DFB9A0, vaddq_f64(v9, xmmword_299DFB990), v8 * v8), vmlaq_n_f64(xmmword_299DFB9C0, vaddq_f64(v9, xmmword_299DFB9B0), v8 * v8)), v11);
        return -1.57079633 - vmulq_laneq_f64(v12, v12, 1).f64[0];
      }
    }

    else
    {
      v2 = result / a2;
      v3 = vdupq_lane_s64(COERCE__INT64(v2 * v2), 0);
      v4 = &qword_299DFB9D0;
      *&v5.f64[0] = *&vld1q_dup_f64(v4);
      v5.f64[1] = v2;
      v6 = vmulq_f64(vmulq_f64(vmlaq_n_f64(xmmword_299DFB9A0, vaddq_f64(v3, xmmword_299DFB990), v2 * v2), vmlaq_n_f64(xmmword_299DFB9C0, vaddq_f64(v3, xmmword_299DFB9B0), v2 * v2)), v5);
      *&v7 = *&vmulq_laneq_f64(v6, v6, 1);
    }

    return v7;
  }

  if (result != a2)
  {
    if (-a2 < result)
    {
      v13 = a2 / result;
      v14 = vdupq_lane_s64(COERCE__INT64(v13 * v13), 0);
      v15 = &qword_299DFB9D0;
      *&v16.f64[0] = *&vld1q_dup_f64(v15);
      v16.f64[1] = v13;
      v17 = vmulq_f64(vmulq_f64(vmlaq_n_f64(xmmword_299DFB9A0, vaddq_f64(v14, xmmword_299DFB990), v13 * v13), vmlaq_n_f64(xmmword_299DFB9C0, vaddq_f64(v14, xmmword_299DFB9B0), v13 * v13)), v16);
      return 1.57079633 - vmulq_laneq_f64(v17, v17, 1).f64[0];
    }

    if (-a2 == result)
    {
      return 2.35619449;
    }

    v18 = result;
    v19 = result / a2;
    if (fabs(v19) >= 0.000000238418579)
    {
      v20 = vdupq_lane_s64(COERCE__INT64(v19 * v19), 0);
      v21 = &qword_299DFB9D0;
      *&v22.f64[0] = *&vld1q_dup_f64(v21);
      v22.f64[1] = v19;
      v23 = vmulq_f64(vmulq_f64(vmlaq_n_f64(xmmword_299DFB9A0, vaddq_f64(v20, xmmword_299DFB990), v19 * v19), vmlaq_n_f64(xmmword_299DFB9C0, vaddq_f64(v20, xmmword_299DFB9B0), v19 * v19)), v22);
      return vmulq_laneq_f64(v23, v23, 1).f64[0] + *&qword_299DFB9E0[LODWORD(v18) >> 31];
    }

LABEL_22:
    v7 = 3.1415925;
    if (v18 < 0.0)
    {
      return -3.1415925;
    }

    return v7;
  }

  if (result < 0.0)
  {
    return -2.35619449;
  }

  if (result != 0.0)
  {
    return 0.785398163;
  }

  if ((LODWORD(a2) & 0x80000000) != 0)
  {
    v18 = result;
    goto LABEL_22;
  }

  return result;
}

float hypotf(float a1, float a2)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    return sqrt(a1 * a1 + a2 * a2);
  }

  if ((LODWORD(a1) & 0x7FFFFFFF) == 0x7F800000 || (LODWORD(a2) & 0x7FFFFFFF) == 0x7F800000)
  {
    a1 = INFINITY;
  }

  return a1 * 1.0;
}

long double erfl(long double __x)
{
  v1 = *&__x & 0x8000000000000000;
  v2 = fabs(__x);
  if ((*&v2 - 0x7FF0000000000000) > 0x8010000000000000)
  {
    if (v2 <= 0.46875)
    {
      if (v2 <= 1.11e-16)
      {
        v14 = v2 * 3209.37759;
        v15 = 2844.23683;
      }

      else
      {
        v10 = 0;
        v11 = __x * __x;
        v12 = v11 * 0.185777706;
        v13 = v11;
        do
        {
          v12 = v11 * (v12 + *&qword_299E2BE98[v10]);
          v13 = v11 * (v13 + *&qword_299E2BEC0[v10++]);
        }

        while (v10 != 3);
        v14 = v2 * (v12 + 3209.37759);
        v15 = v13 + 2844.23683;
      }

      v4 = v14 / v15;
      goto LABEL_20;
    }

    if (v2 <= 4.0)
    {
      v16 = 0;
      v17 = v2 * 0.0000000215311535;
      v18 = v2;
      do
      {
        v17 = v2 * (v17 + *&qword_299E2BEE0[v16]);
        v18 = v2 * (v18 + *&qword_299E2BF28[v16++]);
      }

      while (v16 != 7);
      v9 = (v17 + 1230.33935) / (v18 + 1230.33935);
    }

    else
    {
      v4 = 1.0;
      if (v2 >= 27.2)
      {
LABEL_20:
        v3 = v1 ^ *&v4;
        return *&v3;
      }

      v5 = 0;
      v6 = 1.0 / (__x * __x);
      v7 = v6 * 0.0163153871;
      v8 = v6;
      do
      {
        v7 = v6 * (v7 + *&qword_299E2BF68[v5]);
        v8 = v6 * (v8 + *&qword_299E2BF98[v5++]);
      }

      while (v5 != 4);
      v9 = (0.564189584 - v6 * (v7 + 0.000658749162) / (v8 + 0.00233520498)) / v2;
    }

    v19 = trunc(v2 * 16.0) * 0.0625;
    v20 = v2 - v19;
    v21 = v2 + v19;
    v22 = expl(-(v19 * v19));
    v4 = 0.5 - v22 * expl(-(v20 * v21)) * v9 + 0.5;
    goto LABEL_20;
  }

  if (__x == 0.0)
  {
    return __x;
  }

  v3 = v1 | 0x3FF0000000000000;
  return *&v3;
}

long double logl(long double __x)
{
  v1 = __x;
  if ((*&__x - 0x10000000000000) >= 0x7FE0000000000000)
  {
    if (__x == 0.0)
    {
      return -1.0 / 0.0;
    }

    if (__x < 0.0)
    {
      return INFINITY - INFINITY;
    }

    if (*&__x - 0x10000000000000 >= 0)
    {
      return __x;
    }

    *&v1 = COERCE__INT64(COERCE_DOUBLE(vorr_s8(*&__x, COERCE_INT8X8_T(1.0))) - 1.0) - 0x3FE0000000000000;
  }

  v2 = (*&v1 - 0x3FE7F00000000000) >> 52;
  v3 = *&v1 & 0xFFFFFFFFFFFFFLL;
  v4 = COERCE_DOUBLE(vorr_s8(v3, COERCE_INT8X8_T(1.0)));
  v5 = (&unk_299E259C0 + 32 * ((v3 + 0x100000000000) >> 45));
  v7 = *v5;
  v8 = v5[1];
  v6 = v5 + 2;
  v9 = -(1.0 - v4 * v7);
  v10 = v9 * v9 * (v9 * 0.142860958 + -0.185195468) * (v9 * (1.37739687 - (1.0 - v4 * v7)) + 1.61679209) * (v9 * (-1.24772208 - (1.0 - v4 * v7)) + 1.66988081);
  if (v2)
  {
    return v8 + v2 * 0.693147153 + *v6 + v2 * 0.0000000278976681 + v10 - (1.0 - v4 * v7);
  }

  *&v11 = v7 * v4 - 1.0;
  v12 = COERCE_DOUBLE(vand_s8(v11, -134217728));
  return v12 + v8 + *&v11 - v12 - (v7 * v4 - v7 * v4) + *v6 + v10;
}

long double log10l(long double __x)
{
  v1 = __x;
  if ((*&__x - 0x10000000000000) >= 0x7FE0000000000000)
  {
    if (__x == 0.0)
    {
      return -1.0 / 0.0;
    }

    if (__x < 0.0)
    {
      return INFINITY - INFINITY;
    }

    if (*&__x - 0x10000000000000 >= 0)
    {
      return __x;
    }

    *&v1 = COERCE__INT64(COERCE_DOUBLE(vorr_s8(*&__x, COERCE_INT8X8_T(1.0))) - 1.0) - 0x3FE0000000000000;
  }

  v2 = (*&v1 - 0x3FE7F00000000000) >> 52;
  v3 = *&v1 & 0xFFFFFFFFFFFFFLL;
  v4 = COERCE_DOUBLE(vorr_s8(v3, COERCE_INT8X8_T(1.0)));
  v5 = &qword_299DFC380[2 * ((v3 + 0x100000000000) >> 45) + 1];
  v6 = *v5;
  v7 = v5[1];
  v8 = -(1.0 - v4 * *v5);
  v9 = v8 * v8 * (v8 * 0.0620437255 + -0.08042937) * (v8 * (1.37739687 - (1.0 - v4 * v6)) + 1.61679209) * (v8 * (-1.24772208 - (1.0 - v4 * v6)) + 1.66988081);
  if (v2)
  {
    v10 = COERCE_DOUBLE(vand_s8(-134217728, *&v7));
    return v2 * 5.80172296e-10 + v8 * 0.434294482 + v7 - v10 + v9 + v10 + v2 * 0.301029995;
  }

  else
  {
    v11 = v6 * v4 - 1.0;
    v12 = -(v6 * v4 - v6 * v4);
    v13 = v8 * -0.00000000265246946;
    v14 = COERCE_DOUBLE(vand_s8(*&v8, -134217728));
    return v13 + (v12 + v11 - v14) * loc_299DFC348 + v14 * loc_299DFC348 - (v7 + v14 * loc_299DFC348 - v7) + v9 + v7 + v14 * loc_299DFC348;
  }
}

double __exp10(double a1)
{
  if (*&a1 < 0x40734413509F79FFuLL || *&a1 < 0xC07439B746E36B53)
  {
    v1 = vcvtmd_s64_f64(a1 * 425.206796);
    v2 = a1 * 425.206796 - v1;
    v3 = -(a1 * 425.206796 - a1 * 425.206796 - a1 * loc_299DFCD08);
    v4 = &qword_299DFCD40[2 * (v1 & 0x7F)];
    v5 = *v4;
    v6 = (v2 + v4[1] + v3) * 3.88934341e-14 * ((v2 + v4[1] + v3) * (v2 + 990.168112) + 344055.622) * ((v2 + v4[1] + v3) * (v2 + -68.926592) + 404678.883);
    v7 = v1 >> 7;
    if (v7 + 1022 < 0)
    {
      return (COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) + 1.0 + COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) - (COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) + 1.0 - 1.0) + COERCE_DOUBLE(*&v5 + ((v7 + 1022) << 52)) * v6 - 1.0) * 2.22507386e-308;
    }

    else
    {
      *&result = COERCE__INT64(v5 + v6 * v5) + (v7 << 52);
    }
  }

  else if (a1 >= 0.0)
  {
    return a1 * 1.79769313e308;
  }

  else
  {
    v9 = 2.22507386e-308;
    if (*&a1 >= 0xFFF0000000000000)
    {
      v9 = 0.0;
    }

    return v9 * v9;
  }

  return result;
}

long double atanl(long double __x)
{
  if (__x < 0.0)
  {
    if (__x < -1.0)
    {
      if (__x >= -1.66666667)
      {
        if (__x >= -1.33333333)
        {
          v2 = -1.16666667 - __x;
          v3 = ((((((((((v2 * -0.000374069573 + 0.000809804682) * v2 + -0.000980867423) * v2 + 0.000219264283) * v2 + 0.00231783614) * v2 + -0.00684699873) * v2 + 0.0113421914) * v2 + -0.00912499259) * v2 + -0.0135556998) * v2 + 0.0780818237) * v2 + -0.209273356) * v2 + 0.423529412;
          v4 = 0.862170055;
        }

        else
        {
          v2 = -1.5 - __x;
          v3 = (((((((((v2 * 0.0000308157532 + 0.000104161958) * v2 + -0.000462468541) * v2 + 0.0011204903) * v2 + -0.00190991275) * v2 + 0.00182977869) * v2 + 0.00210292135) * v2 + -0.0168061342) * v2 + 0.0558337126) * v2 + -0.142011834) * v2 + 0.307692308;
          v4 = 0.982793723;
        }
      }

      else
      {
        if (__x < -2.0)
        {
          return -sub_299DF9FCC(-__x);
        }

        v2 = -1.83333333 - __x;
        v3 = ((((((((v2 * 0.000061205255 + -0.000145088351) * v2 + 0.00026032522) * v2 + -0.00028572536) * v2 + -0.000291355443) * v2 + 0.0030267288) * v2 + -0.0119665581) * v2 + 0.0365033349) * v2 + -0.0963933628) * v2 + 0.229299363;
        v4 = 1.07144961;
      }

      return -(v4 + v3 * v2);
    }

    if (__x < -0.5)
    {
      if (__x >= -0.75)
      {
        v2 = -0.625 - __x;
        v3 = ((((((((((v2 * 0.00416492719 + -0.0144211285) * v2 + 0.0123613374) * v2 + 0.00780078683) * v2 + -0.0324382982) * v2 + 0.0323836333) * v2 + 0.012919563) * v2 + -0.0824261347) * v2 + 0.101841437) * v2 + 0.0213040101) * v2 + -0.323191516) * v2 + 0.719101124;
        v4 = 0.558599315;
      }

      else
      {
        v2 = -0.875 - __x;
        v3 = (((((((((v2 * 0.000109312002 + -0.00449174389) * v2 + 0.0084575497) * v2 + -0.00653208919) * v2 + -0.00613354953) * v2 + 0.0278965409) * v2 + -0.043421395) * v2 + 0.0211020894) * v2 + 0.0785382925) * v2 + -0.280679771) * v2 + 0.566371681;
        v4 = 0.71883;
      }

      return -(v4 + v3 * v2);
    }

    if (__x >= -0.0000000135386034)
    {
      if (__x <= -2.22507386e-308)
      {
        return (2.22507386e-308 + 1.0) * __x;
      }

      return __x + __x * 2.22507386e-308;
    }

    return __x + __x * __x * (((((((((((__x * __x * 0.010089798 + -0.0273999031) * (__x * __x) + 0.0418461372) * (__x * __x) + -0.0512146755) * (__x * __x) + 0.0585821744) * (__x * __x) + -0.0666380617) * (__x * __x) + 0.0769207444) * (__x * __x) + -0.0909089636) * (__x * __x) + 0.111111107) * (__x * __x) + -0.142857143) * (__x * __x) + 0.2) * (__x * __x) + -0.333333333) * __x;
  }

  if (__x > 1.0)
  {
    if (__x <= 1.66666667)
    {
      if (__x <= 1.33333333)
      {
        v5 = __x + -1.16666667;
        v6 = ((((((((((v5 * -0.000374069573 + 0.000809804682) * v5 + -0.000980867423) * v5 + 0.000219264283) * v5 + 0.00231783614) * v5 + -0.00684699873) * v5 + 0.0113421914) * v5 + -0.00912499259) * v5 + -0.0135556998) * v5 + 0.0780818237) * v5 + -0.209273356) * v5 + 0.423529412;
        v7 = 0.862170055;
      }

      else
      {
        v5 = __x + -1.5;
        v6 = (((((((((v5 * 0.0000308157532 + 0.000104161958) * v5 + -0.000462468541) * v5 + 0.0011204903) * v5 + -0.00190991275) * v5 + 0.00182977869) * v5 + 0.00210292135) * v5 + -0.0168061342) * v5 + 0.0558337126) * v5 + -0.142011834) * v5 + 0.307692308;
        v7 = 0.982793723;
      }
    }

    else
    {
      if (__x > 2.0)
      {

        return sub_299DF9FCC(__x);
      }

      v5 = __x + -1.83333333;
      v6 = ((((((((v5 * 0.000061205255 + -0.000145088351) * v5 + 0.00026032522) * v5 + -0.00028572536) * v5 + -0.000291355443) * v5 + 0.0030267288) * v5 + -0.0119665581) * v5 + 0.0365033349) * v5 + -0.0963933628) * v5 + 0.229299363;
      v7 = 1.07144961;
    }

    return v7 + v6 * v5;
  }

  if (__x > 0.5)
  {
    if (__x <= 0.75)
    {
      v5 = __x + -0.625;
      v6 = ((((((((((v5 * 0.00416492719 + -0.0144211285) * v5 + 0.0123613374) * v5 + 0.00780078683) * v5 + -0.0324382982) * v5 + 0.0323836333) * v5 + 0.012919563) * v5 + -0.0824261347) * v5 + 0.101841437) * v5 + 0.0213040101) * v5 + -0.323191516) * v5 + 0.719101124;
      v7 = 0.558599315;
    }

    else
    {
      v5 = __x + -0.875;
      v6 = (((((((((v5 * 0.000109312002 + -0.00449174389) * v5 + 0.0084575497) * v5 + -0.00653208919) * v5 + -0.00613354953) * v5 + 0.0278965409) * v5 + -0.043421395) * v5 + 0.0211020894) * v5 + 0.0785382925) * v5 + -0.280679771) * v5 + 0.566371681;
      v7 = 0.71883;
    }

    return v7 + v6 * v5;
  }

  if (__x > 0.0000000135386034)
  {
    return __x + __x * __x * (((((((((((__x * __x * 0.010089798 + -0.0273999031) * (__x * __x) + 0.0418461372) * (__x * __x) + -0.0512146755) * (__x * __x) + 0.0585821744) * (__x * __x) + -0.0666380617) * (__x * __x) + 0.0769207444) * (__x * __x) + -0.0909089636) * (__x * __x) + 0.111111107) * (__x * __x) + -0.142857143) * (__x * __x) + 0.2) * (__x * __x) + -0.333333333) * __x;
  }

  if (__x >= 2.22507386e-308)
  {
    return (2.22507386e-308 + 1.0) * __x;
  }

  if (__x != 0.0)
  {
    return __x + __x * 2.22507386e-308;
  }

  return __x;
}

float acosf(float a1)
{
  v1 = fabsf(a1);
  if (v1 >= 1.0)
  {
    if (v1 == 1.0 || v1 <= 1.0)
    {
      if (a1 <= 0.0)
      {
        return 3.14159253;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      return INFINITY - INFINITY;
    }
  }

  else if (v1 > 0.5)
  {
    v3 = (1.0 - v1);
    v4 = sqrt(v3);
    v5 = v3 * 0.117852018 + 1.41421356 + v3 * v3 * (v3 * 0.00805353841 + 0.0264965904 + v3 * v3 * (v3 * 0.00188666275 + 0.00210575839));
    if (a1 > 0.0)
    {
      return v5 * v4;
    }

    else
    {
      return 3.14159265 - v5 * v4;
    }
  }

  else if (v1 >= 0.0019531)
  {
    return 1.57079633 - (a1 + a1 * (a1 * a1 * (a1 * a1 * 0.0750010316 + 0.166666663 + a1 * a1 * (a1 * a1) * (a1 * a1 * 0.0311319185 + 0.0445966252 + a1 * a1 * (a1 * a1) * (a1 * a1 * 0.033921071 + 0.0170057923)))));
  }

  else
  {
    return 1.57079633 - a1;
  }
}

float fmodf(float a1, float a2)
{
  v2 = LODWORD(a1) & 0x7FFFFFFF;
  v3 = LODWORD(a2) & 0x7FFFFFFF;
  if ((LODWORD(a1) & 0x7FFFFFFFu) - 2139095040 < 0x80800001 || (LODWORD(a2) & 0x7FFFFFFFu) - 2139095040 < 0x80800001)
  {
    v5 = NAN;
    if (fabsf(a1) == INFINITY || a2 == 0.0)
    {
      return v5;
    }

    v6 = fabsf(a2) != INFINITY;
    if (a1 == 0.0 || !v6)
    {
      return a1;
    }
  }

  if (v3 >= v2)
  {
    if (v3 == v2)
    {
      LODWORD(v5) = LODWORD(a1) & 0x80000000;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v7 = 0;
    v8 = __clz(v2);
    v9 = v8 - 8;
    v10 = 9 - v8;
    if (v2 < 0x800000)
    {
      v11 = v9;
    }

    else
    {
      v10 = v2 >> 23;
      v11 = 0;
    }

    v12 = (LODWORD(a1) & 0x7FFFFF) << v11;
    v13 = __clz(v3);
    v14 = v3 >= 0x800000;
    if (v3 >= 0x800000)
    {
      v15 = v3 >> 23;
    }

    else
    {
      v15 = 9 - v13;
    }

    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13 - 8;
    }

    v17 = v12 | 0x800000;
    v18 = ((LODWORD(a2) & 0x7FFFFF) << v16) | 0x800000;
    v19 = v10 - v15;
    do
    {
      v19 += ~v7;
      v20 = (v17 << v7) - v18;
      v21 = v18 & (v20 >> 31);
      v17 = v21 + 2 * v20;
      v7 = __clz(v17) - 40;
      if (v17)
      {
        v22 = v19 < v7;
      }

      else
      {
        v22 = 1;
      }
    }

    while (!v22);
    v23 = (v17 + v21) >> 1;
    if (v19 >= 0)
    {
      v23 = v17;
    }

    v24 = v23 << (v19 & ~(v19 >> 31));
    if (v24)
    {
      v25 = __clz(v24) - 40;
      v26 = v24 << v25;
      v27 = v15 - v25;
      v28 = LODWORD(a1) & 0x80000000 | v26 & 0x7FFFFF;
      v29 = v27 << 23;
      if (v27 < 1)
      {
        return COERCE_FLOAT(v28 | (v29 + 1056964608)) * 1.1755e-38;
      }

      v30 = v28 | v29;
    }

    else
    {
      v30 = LODWORD(a1) & 0x80000000;
    }

    return *&v30;
  }

  return v5;
}

float tanf(float a1)
{
  v1 = LODWORD(a1) & 0x7FFFFFFF;
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x4C800000)
  {
    if (v1 >= 0x7F800000)
    {
      return a1 - a1;
    }

    v5 = a1;
    v6 = HIBYTE(v1);
    v7 = v6 >= 0x4B;
    LODWORD(v8) = v6 - 75;
    if (v7)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = (&loc_299DFE4E0 + 16 * v8);
    v10 = v5 * *v9;
    v11 = v10 + 6.75539944e15;
    v3 = LOBYTE(v11);
    v4 = v10 - (v10 + 6.75539944e15 - 6.75539944e15) + v5 * v9[1];
  }

  else
  {
    if (v1 < 0x3F490FDB)
    {
      if (v1 < 0x39800000)
      {
        return (a1 + (a1 * 67109000.0)) * 0.000000014901;
      }

      v14 = a1;
      v15 = v14 * v14;
      return v14 + v14 * (v14 * v14 * (v14 * v14 * 0.133332166 + 0.333333341 + v15 * v15 * (v14 * v14 * loc_299DFE478 + 0.0539972382) + v15 * v15 * (v15 * v15) * (v14 * v14 * 0.00109333594 + 0.0100247457 + v15 * v15 * 0.00389378239)));
    }

    v2 = a1;
    v3 = vcvtnd_s64_f64(v2 * 0.636619773);
    v4 = v2 * 0.636619773 - vrndnd_f64(v2 * 0.636619773) + v2 * -3.94478822e-10;
  }

  v12 = v4 * (v4 * v4 * 5.27860262 + 3.82127246) * (v4 * v4 * (v4 * v4 + *sub_299DFE4B0) + 0.75337416) * ((v4 * v4 * (v4 * v4 + loc_299DFE4B8) + 0.927836296) * (loc_299DFE4D8 + v4 * v4 * (v4 * v4 + 0.913011791)));
  if (v3)
  {
    return -1.0 / v12;
  }

  return v12;
}

void sub_299DFE4B0()
{
  v2 = *v0;
  v1 = v0[1];
  JUMPOUT(0x299DFE4C0);
}

float erff(float a1)
{
  v1 = LODWORD(a1) & 0x80000000;
  v2 = fabsf(a1);
  if (LODWORD(v2) >> 23 > 0xFE)
  {
    result = a1 + a1;
    if (v2 == INFINITY)
    {
      LODWORD(result) = v1 | 0x3F800000;
    }
  }

  else if (LODWORD(v2) > 0x3E620000)
  {
    if (LODWORD(v2) > 0x407AD4FF)
    {
      v8 = 1.0 - 1.1755e-38;
    }

    else
    {
      v4 = v2 + 1572900.0;
      v5 = LOBYTE(v4) & 0x1F;
      v6 = v2 - ((v2 + 1572900.0) + -1572900.0);
      v7 = (&unk_299E2C230 + 32 * v5);
      v8 = *v7 + ((v7[1] + (v6 * (v7[3] + (v6 * ((v7[4] + (v6 * v7[5])) + ((v6 * v6) * (v7[6] + (v6 * v7[7])))))))) + (v6 * v7[2]));
    }

    LODWORD(result) = v1 | LODWORD(v8);
  }

  else if (LODWORD(v2) > 0x24E69594)
  {
    return ((((a1 * a1) * (((a1 * a1) * (((a1 * a1) * -0.026356) + 0.11282)) + -0.37613)) + -0.000000058899) * a1) + (a1 * 1.1284);
  }

  else
  {
    return a1 * 1.12837917;
  }

  return result;
}

long double exp2l(long double __x)
{
  if ((*&__x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x4090000000000000 - (*&__x >> 63 << 48))
  {
    if (__x >= 0.0)
    {
      return __x * 1.79769313e308;
    }

    else
    {
      v8 = 2.22507386e-308;
      if (*&__x >= 0xFFF0000000000000)
      {
        v8 = 0.0;
      }

      return v8 * v8;
    }
  }

  else
  {
    v1 = vcvtd_n_s64_f64(__x, 7uLL) + (*&__x >> 63);
    v2 = __x - vcvtd_n_f64_s64(v1, 7uLL);
    v3 = (&unk_299E24970 + 16 * (v1 & 0x7F));
    v4 = *v3;
    v5 = (v2 + v3[1]) * 0.00133636822 * ((v2 + v3[1]) * (v2 + 7.73568837) + 20.9994886) * ((v2 + v3[1]) * (v2 + -0.538489) + 24.6996388);
    v6 = v1 >> 7;
    if (v6 + 1022 < 0)
    {
      return (COERCE_DOUBLE(*&v4 + ((v6 + 1022) << 52)) + 1.0 + COERCE_DOUBLE(*&v4 + ((v6 + 1022) << 52)) - (COERCE_DOUBLE(*&v4 + ((v6 + 1022) << 52)) + 1.0 - 1.0) + COERCE_DOUBLE(*&v4 + ((v6 + 1022) << 52)) * v5 - 1.0) * 2.22507386e-308;
    }

    else
    {
      *&result = COERCE__INT64(v4 + v5 * v4) + (v6 << 52);
    }
  }

  return result;
}

float __exp10f(float a1)
{
  if ((LODWORD(a1) >> 23) >= 0x85u)
  {
    if (a1 >= 0.0)
    {
      return a1 * 3.4028e38;
    }

    else
    {
      if (LODWORD(a1) < 0xFF800000)
      {
        v5 = 1.1755e-38;
      }

      else
      {
        v5 = 0.0;
      }

      return v5 * v5;
    }
  }

  else
  {
    v1 = 425.206796 * a1;
    v2 = round(v1);
    *&v3 = qword_299E24530[v2 & 0x7F] + (v2 << 45);
    return v3 + (0.0000146622624 * (v1 - v2) + 0.00541521731) * (v1 - v2) * v3;
  }
}

long double expm1l(long double __x)
{
  v1 = *&__x & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&__x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x40862E42FEFA39F0 || *&__x >= 0xC0430FC100000000)
  {
    if (__x >= 0.0)
    {
      return __x * 1.79769313e308;
    }

    else
    {
      return -1.0 + 2.22507386e-308;
    }
  }

  else if (v1 < 0x3FA0000000000000)
  {
    if (v1 >= 0x3CA0000000000000)
    {
      return __x + __x * __x * (__x * (__x * (__x * (loc_299DFF090 + __x * (__x * 0.000198418483 + 0.00138893128)) + 0.0416666666) + 0.166666667) + 0.5);
    }
  }

  else
  {
    v2 = vcvtmd_s64_f64(__x * 184.664965);
    v3 = __x * 184.664965 - v2;
    v4 = -(__x * 184.664965 - __x * 184.664965 - __x * 2.60547504e-15);
    v5 = &qword_299DFF0F0[2 * (v2 & 0x7F)];
    v6 = *v5;
    v7 = (v3 + v5[1] + v4) * ((v3 + v5[1] + v4) * ((v3 + v5[1] + v4) * (v3 * (v3 * 3.88824685e-14 + 3.58302698e-11) + 0.0000000264664215) + 0.0000146622624) + 0.00541521235);
    v8 = v2 >> 7;
    v9 = v8 << 52;
    v10 = COERCE_DOUBLE(vqsubd_s64(COERCE__INT64(-1.0), v8 << 52));
    if (v8 < -1)
    {
      *&__x = COERCE__INT64(v6 - (v6 + v10 - v10) + v6 * v7 + v6 + v10) + v9;
    }

    else if (v8 > 52)
    {
      *&__x = COERCE__INT64(v6 + v10 + v6 * v7) + v9;
    }

    else
    {
      *&__x = COERCE__INT64(v6 + v10 + v6 * v7) + v9;
    }
  }

  return __x;
}

double __tanpi(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x4340000000000000)
  {
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return a1 - a1;
    }

    else
    {
      return a1 * 0.0;
    }
  }

  else
  {
    v1 = a1 + a1;
    v2 = vcvtnd_s64_f64(v1 + v1);
    if (v1 + v1 == vrndnd_f64(v1 + v1))
    {
      if ((v2 & 3) != 0)
      {
        if (v2)
        {
          *&result = (v2 << 62) ^ 0x7FF0000000000000;
        }

        else
        {
          return COERCE_DOUBLE((v2 << 61) ^ 0x7FF0000000000000) / 0.0;
        }
      }

      else
      {
        return COERCE_DOUBLE(veor_s8(COERCE_INT8X8_T(v1 * 0.0), (v2 << 61)));
      }
    }

    else
    {
      v3 = vcvtnd_s64_f64(v1);
      v4 = vdupq_lane_s64(COERCE__INT64(v1 - vrndnd_f64(v1)), 0);
      v5 = vmulq_f64(v4, v4);
      v6 = vmlaq_f64(*(qword_299DFFAA8 + 4), v5, vmlaq_f64(loc_299DFFA9C, v5, vmlaq_f64(*&dword_299DFFA8C, v5, vmlaq_f64(*(&qword_299DFFA50[5] + 4), v5, vmlaq_f64(*(&qword_299DFFA50[3] + 4), v5, vmlaq_f64(*(&qword_299DFFA50[1] + 4), v5, *&dword_299DFFA4C))))));
      v5.f64[1] = v4.f64[0];
      v4.f64[0] = 1.0;
      v7 = vaddq_f64(vmulq_f64(v5, v6), v4);
      if (v3)
      {
        return -v7.f64[0] / v7.f64[1];
      }

      else
      {
        return v7.f64[1] / v7.f64[0];
      }
    }
  }

  return result;
}

double __copysignf16(int8x16_t a1, int8x16_t a2)
{
  v2.i64[0] = 0x8000800080008000;
  v2.i64[1] = 0x8000800080008000;
  *&result = vbslq_s8(v2, a2, a1).u64[0];
  return result;
}

float nextafterf(float a1, float a2)
{
  if (a2 <= a1)
  {
    if (a2 == a1)
    {
      return a2;
    }

    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (a1 == 0.0)
  {
    LODWORD(a2) = LODWORD(a2) & 0x80000000 | 1;
  }

  else
  {
    LODWORD(a2) = (v2 ^ (SLODWORD(a1) >> 31)) - (SLODWORD(a1) >> 31) + LODWORD(a1);
  }

  return a2;
}

long double acoshl(long double __x)
{
  if (__x < 1.0)
  {
    return NAN;
  }

  if (__x >= 1.25)
  {
    if (__x >= 134217728.0)
    {
      return logl(__x) + 0.693147181;
    }

    else
    {
      v4 = __x + __x + -1.0 / (sqrt(__x * __x + -1.0) + __x);

      return logl(v4);
    }
  }

  else
  {
    v3 = __x + -1.0 + sqrt(__x + -1.0 + __x + -1.0 + (__x + -1.0) * (__x + -1.0));

    return log1pl(v3);
  }
}

int fegetenv(fenv_t *a1)
{
  a1->__fpsr = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 1));
  a1->__fpcr = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  return 0;
}

int feholdexcept(fenv_t *a1)
{
  a1->__fpsr = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 1));
  a1->__fpcr = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 1), a1->__fpsr & 0xFFFFFFFFFFFFFF60);
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), a1->__fpcr & 0xFFFFFFFFFFFF60FFLL);
  return 0;
}

int feraiseexcept(int a1)
{
  if ((a1 & 0x80) != 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
    if ((StatusReg & 0x1000000) == 0)
    {
      _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
      _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0)) & 0xFFFFFFFFFEFFFFFFLL);
    }
  }

  return 0;
}

int fesetenv(const fenv_t *a1)
{
  fpcr = a1->__fpcr;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 1), a1->__fpsr);
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), fpcr);
  return 0;
}

int fesetround(int result)
{
  if ((result & 0xFF3FFFFF) == 0)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0)) & 0xFFFFFFFFFF3FFFFFLL | result);
    return 0;
  }

  return result;
}

int feupdateenv(const fenv_t *a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 1));
  fesetenv(a1);
  feraiseexcept(StatusReg & 0x9F);
  return 0;
}

float exp2f(float a1)
{
  if ((LODWORD(a1) >> 23) >= 0x87u)
  {
    if (a1 >= 0.0)
    {
      return a1 * 3.4028e38;
    }

    else
    {
      if (LODWORD(a1) < 0xFF800000)
      {
        v4 = 1.1755e-38;
      }

      else
      {
        v4 = 0.0;
      }

      return v4 * v4;
    }
  }

  else
  {
    v1 = a1;
    *&v2 = qword_299E24530[COERCE_UNSIGNED_INT64(v1 + 5.27765581e13) & 0x7F] + (COERCE__INT64(v1 + 5.27765581e13) << 45);
    return v2 + (0.240226507 * (v1 - (v1 + 5.27765581e13 - 5.27765581e13)) + 0.693147816) * (v1 - (v1 + 5.27765581e13 - 5.27765581e13)) * v2;
  }
}

float expm1f(float result)
{
  v3 = LODWORD(result) & 0x7FFFFFFF;
  if (SLODWORD(result) >= 1118925336 || LODWORD(result) >= 0xC18AA123)
  {
    if (result >= 0.0)
    {
      return result * 3.4028e38;
    }

    else
    {
      return -1.0 + 1.1755e-38;
    }
  }

  else if (v3 < 0x3E000000)
  {
    if (v3 >= 0x33800000)
    {
      return result + ((result * result) * ((result * ((result * ((result * 0.0083387) + 0.041694)) + 0.16667)) + 0.5));
    }
  }

  else
  {
    v4 = vcvts_n_s32_f32(result * 1.4427, 5uLL);
    v5 = (result * 1.4427) - vcvts_n_f32_s64(v4, 5uLL);
    v6 = -(((result * 1.4427) - (result * 1.4427)) - (result * 0.00000001926));
    v7 = (&loc_299E00898 + 8 * (v4 & 0x1F));
    v8 = *v7;
    v9 = ((v5 + (v7[1] + v6)) * (((v5 + (v7[1] + v6)) * ((v5 * ((v5 * 0.0096184) + 0.055506)) + 0.24023)) + -0.000000002302)) + ((v5 + (v7[1] + v6)) * 0.69315);
    v2.i32[0] = v4 >> 5 << 23;
    v1.i32[0] = -1082130432 - v2.i32[0];
    if (v4 >> 5 < -1)
    {
      *v1.i32 = ((v8 - ((v8 + *v1.i32) - *v1.i32)) + (v8 * v9)) + (v8 + *v1.i32);
      LODWORD(result) = vadd_s32(v1, v2).u32[0];
    }

    else
    {
      if (v4 >> 5 > 23)
      {
        *v1.i32 = v8 + (*v1.i32 + (v8 * v9));
      }

      else
      {
        *v1.i32 = (v8 + *v1.i32) + (v8 * v9);
      }

      LODWORD(result) = vadd_s32(v1, v2).u32[0];
    }
  }

  return result;
}

double __sinpi(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x4340000000000000)
  {
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return a1 - a1;
    }

    return a1 * 0.0;
  }

  a1 = a1 + a1;
  v1 = vrndnd_f64(a1);
  v2 = vcvtnd_s64_f64(a1);
  if (a1 == v1)
  {
    if (v2)
    {
      *&result = (v2 << 62) ^ 0x7FF0000000000000;
      return result;
    }

    return a1 * 0.0;
  }

  v3 = vdupq_lane_s64(COERCE__INT64(a1 - v1), 0);
  v4 = vmulq_f64(v3, v3);
  v5 = vmlaq_f64(*&qword_299E00D20, v4, vmlaq_f64(loc_299E00D10, v4, vmlaq_f64(unk_299E00D00, v4, vmlaq_f64(*byte_299E00CF0, v4, vmlaq_f64(*&qword_299E00CC8[3], v4, vmlaq_f64(*&qword_299E00CC8[1], v4, unk_299E00CC0))))));
  v3.f64[0] = v4.f64[0];
  v4.f64[0] = 1.0;
  v6 = vmlaq_f64(v4, v3, v5);
  if ((v2 & 1) == 0)
  {
    v6.f64[0] = v6.f64[1];
  }

  return COERCE_DOUBLE(veor_s8(*&v6.f64[0], ((v2 << 62) & 0x8000000000000000)));
}

double __cospi(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x4340000000000000)
  {
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      JUMPOUT(0x299E00A94);
    }

    return 1.0;
  }

  else
  {
    v1 = a1 + a1;
    v2 = vrndnd_f64(v1);
    v3 = vcvtnd_s64_f64(v1);
    if (v1 == v2)
    {
      if (v3)
      {
        return 0.0;
      }

      else
      {
        return COERCE_DOUBLE(veor_s8((v3 << 62), COERCE_INT8X8_T(1.0)));
      }
    }

    else
    {
      v4 = vdupq_lane_s64(COERCE__INT64(v1 - v2), 0);
      v5 = vmulq_f64(v4, v4);
      v6 = vmlaq_f64(*&qword_299E00D20, v5, vmlaq_f64(loc_299E00D10, v5, vmlaq_f64(unk_299E00D00, v5, vmlaq_f64(*byte_299E00CF0, v5, vmlaq_f64(*&qword_299E00CC8[3], v5, vmlaq_f64(*&qword_299E00CC8[1], v5, unk_299E00CC0))))));
      v4.f64[0] = v5.f64[0];
      v5.f64[0] = 1.0;
      v7 = vmlaq_f64(v5, v4, v6);
      v8 = v3 + 1;
      if ((v8 & 1) == 0)
      {
        v7.f64[0] = v7.f64[1];
      }

      return COERCE_DOUBLE(veor_s8(*&v7.f64[0], ((v8 << 62) & 0x8000000000000000)));
    }
  }
}

__double2 __sincospi_stret(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x4340000000000000)
  {
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v9 = a1 - a1;
      *v8.i64 = v9;
    }

    else
    {
      v9 = a1 * 0.0;
      v8.i64[0] = 1.0;
    }
  }

  else
  {
    v1 = a1 + a1;
    v2 = vrndnd_f64(v1);
    v3 = vcvtnd_s64_f64(v1);
    if (v1 == v2)
    {
      if (v3)
      {
        *&v9 = (v3 << 62) ^ 0x7FF0000000000000;
        v8.i64[0] = 0;
      }

      else
      {
        v9 = v1 * 0.0;
        v8.i64[0] = (v3 << 62) | 0x3FF0000000000000;
      }
    }

    else
    {
      v4 = vdupq_lane_s64(COERCE__INT64(v1 - v2), 0);
      v5 = vmulq_f64(v4, v4);
      v6 = vmlaq_f64(*&qword_299E00D20, v5, vmlaq_f64(loc_299E00D10, v5, vmlaq_f64(unk_299E00D00, v5, vmlaq_f64(*byte_299E00CF0, v5, vmlaq_f64(*&qword_299E00CC8[3], v5, vmlaq_f64(*&qword_299E00CC8[1], v5, unk_299E00CC0))))));
      v4.f64[0] = v5.f64[0];
      v5.f64[0] = 1.0;
      v7 = vmlaq_f64(v5, v4, v6);
      if (v3)
      {
        v7 = vextq_s8(vnegq_f64(v7), v7, 8uLL);
      }

      v8 = veorq_s8(v7, vdupq_n_s64((v3 << 62) & 0x8000000000000000));
      v9 = *&v8.i64[1];
    }
  }

  result.__cosval = *v8.i64;
  result.__sinval = v9;
  return result;
}

long double log1pl(long double __x)
{
  if (__x != INFINITY)
  {
    if (__x == -1.0)
    {
      return -1.0 / 0.0;
    }

    else if (__x < -1.0)
    {
      return INFINITY - INFINITY;
    }

    else
    {
      v1 = fabs(__x);
      if (v1 <= 0.0000000074505806)
      {
        v19 = HIDWORD(v1);
        v20 = __x;
        if (v19 >= 0x200000)
        {
          v20 = __x * 0.5;
        }

        return __x - __x * v20;
      }

      else
      {
        v2 = __x;
        v3 = __x + 1.0;
        v4 = (*&v3 - 0x3FE7F00000000000) >> 52;
        v5 = *&v3 & 0xFFFFFFFFFFFFFLL;
        v6 = v3 - 1.0;
        v7 = COERCE_DOUBLE(vorr_s8((*&v3 & 0xFFFFFFFFFFFFFLL), COERCE_INT8X8_T(1.0)));
        v8 = (&unk_299E259C0 + 32 * ((v5 + 0x100000000000) >> 45));
        v10 = *v8;
        v11 = v8[1];
        v9 = v8 + 2;
        v12 = (v2 - v6) * v10;
        v13 = 1024 - (v4 + (v5 < 0x7F00000000000));
        if (v13 < 0)
        {
          v13 = 0;
        }

        v14 = v12 * COERCE_DOUBLE(v13 << 52);
        v15 = v14 - (1.0 - v7 * v10);
        v16 = v15 * v15 * (-(1.0 - v7 * v10) * 0.142860958 + -0.185195468) * (v15 * (1.37739687 - (1.0 - v7 * v10)) + 1.61679209) * (v15 * (-1.24772208 - (1.0 - v7 * v10)) + 1.66988081);
        if (v4)
        {
          return v11 + v4 * 0.693147153 + v15 + *v9 + v4 * 0.0000000278976681 + v16;
        }

        else
        {
          *&v17 = v10 * v7 - 1.0;
          v18 = COERCE_DOUBLE(vand_s8(v17, -134217728));
          return v18 + v11 + *&v17 - v18 - (v10 * v7 - v10 * v7) + v14 + *v9 + v16;
        }
      }
    }
  }

  return __x;
}

__int16 __hypotf16@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>)
{
  v2 = _Q0.n128_u16[0] & 0x7FFF;
  if (v2 >= 0x7C00)
  {
    if (v2 == 31744 || (_Q1.n128_u16[0] & 0x7FFF) == 0x7C00)
    {
      _Q0.n128_u16[0] = 31744;
    }

    *&result = *_Q0.n128_u16 * COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
  }

  else
  {
    __asm
    {
      FCVT            S0, H0
      FCVT            S1, H1
    }

    _S0 = sqrtf((_S0 * _S0) + (_S1 * _S1));
    __asm { FCVT            H0, S0 }
  }

  return result;
}

float log1pf(float result)
{
  if (result != INFINITY)
  {
    if (result == -1.0)
    {
      return -1.0 / 0.0;
    }

    else if (result < -1.0)
    {
      return INFINITY - INFINITY;
    }

    else
    {
      v1 = fabsf(result);
      if (v1 <= 0.000030518)
      {
        v6 = LODWORD(v1);
        v7 = result;
        if (v6 >= 0x1000000)
        {
          v7 = result * 0.5;
        }

        return result - (result * v7);
      }

      else
      {
        *&v2 = result + 1.0;
        v3 = (*&v2 - 0x3FE7F00000000000) >> 52;
        *&v2 &= 0xFFFFFFFFFFFFFuLL;
        v4 = (&unk_299E26A00 + 16 * ((*&v2 + 0x100000000000) >> 45));
        v5 = -(1.0 - COERCE_DOUBLE(vorr_s8(v2, COERCE_INT8X8_T(1.0))) * *v4);
        return v4[1] + v3 * 0.693147181 + v5 * 1.0 + v5 * v5 * (v5 * 0.333336194 + -0.500002861);
      }
    }
  }

  return result;
}

long double coshl(long double __x)
{
  v1 = fabs(__x);
  if (v1 >= 21.0)
  {
    if (v1 >= 710.47586)
    {
      return v1 * 1.79769313e308;
    }

    else
    {
      v13 = vcvtd_n_s64_f64(v1 * 1.44269504, 7uLL);
      v14 = v1 * 1.44269504 - vcvtd_n_f64_s64(v13, 7uLL);
      v15 = (&unk_299E24970 + 16 * (v13 & 0x7F));
      v16 = v14 + 7.73568837;
      v17 = v14 + -0.538489;
      v18 = v14 + v15[1] - (v1 * 1.44269504 - v1 * 1.44269504 - v1 * 2.03552737e-17);
      return (*v15 + v18 * 0.00133636822 * (v18 * v16 + 20.9994886) * (v18 * v17 + 24.6996388) * *v15) * COERCE_DOUBLE((v13 >> 7 << 52) + 0x3FE0000000000000);
    }
  }

  else if (v1 < 0.346573353)
  {
    if (v1 < 9.31322575e-10)
    {
      return (v1 * v1 + 2.0) * 0.5;
    }

    else
    {
      return v1 * (v1 * 0.5 + v1 * (v1 * v1 * (v1 * v1 * (v1 * v1 * (v1 * v1 * (v1 * v1 * 0.00000000209181303 + 0.000000275572633) + 0.0000248015873) + 0.00138888889) + 0.0416666667))) + 1.0;
    }
  }

  else
  {
    v2 = vcvtd_n_s64_f64(v1 * 1.44269504, 7uLL);
    v3 = v1 * 1.44269504 - vcvtd_n_f64_s64(v2, 7uLL);
    v4 = -(v1 * 1.44269504 - v1 * 1.44269504 - v1 * 2.03552737e-17);
    v5 = (&unk_299E24970 + 16 * (v2 & 0x7F));
    v6 = *v5;
    v7 = v5[1];
    v8 = (&unk_299E24970 - 16 * (v2 & 0x7F) + 2032);
    v9 = 0.0078125 - v3;
    v2 >>= 7;
    *&v10 = v6 + ((v2 - 1) << 52);
    *&v11 = *v8 - ((v2 + 2) << 52);
    return v10 + v11 + v10 * ((v3 + v7 + v4) * 0.00133636822 * ((v3 + v7 + v4) * (v3 + 7.73568837) + 20.9994886) * ((v3 + v7 + v4) * (v3 + -0.538489) + 24.6996388)) - (v10 + v11 - v10 - v11 - v11 * ((v9 + v8[1] - v4) * 0.00133636822 * ((v9 + v8[1] - v4) * (0.0078125 - v3 + 7.73568837) + 20.9994886) * ((v9 + v8[1] - v4) * (0.0078125 - v3 + -0.538489) + 24.6996388)));
  }
}

float coshf(float a1)
{
  v1 = fabsf(a1);
  if (v1 >= 9.7039)
  {
    if (v1 >= 89.416)
    {
      return 3.4028e38 * v1;
    }

    else
    {
      v8 = 184.664965 * v1;
      v9 = round(v8);
      *&v10 = qword_299E24530[v9 & 0x7F] + ((v9 - 128) << 45);
      return v10 + (0.0000146622624 * (v8 - v9) + 0.00541521731) * (v8 - v9) * v10;
    }
  }

  else if (v1 < 1.4375)
  {
    if (v1 < 0.00024414)
    {
      return ((a1 * a1) + 2.0) * 0.5;
    }

    else
    {
      return a1 * (a1 * 0.5 + a1 * (a1 * a1 * (a1 * a1 * (a1 * a1 * (a1 * a1 * 0.000000281911528 + 0.0000247956191) + 0.00138889068) + 0.0416666666))) + 1.0;
    }
  }

  else
  {
    v2 = 184.664965 * a1;
    v3 = round(v2);
    v4.f64[0] = v2 - v3;
    v4.f64[1] = -v4.f64[0];
    *&v5.f64[0] = qword_299E24530[v3 & 0x7F] + (v3 << 45);
    *&v5.f64[1] = qword_299E24530[-v3 & 0x7F] - (v3 << 45);
    v6 = vmlaq_f64(v5, vmulq_f64(vmlaq_f64(vdupq_lane_s64(0x3F762E4453E10DAELL, 0), vdupq_lane_s64(0x3EEEBFBDFF30D656, 0), v4), v4), v5);
    return (v6.f64[0] + v6.f64[1]) * 0.5;
  }
}

double __fabsf16(int8x16_t a1)
{
  v1.i64[0] = 0x8000800080008000;
  v1.i64[1] = 0x8000800080008000;
  *&result = vandq_s8(a1, v1).u64[0];
  return result;
}

float acoshf(float result)
{
  if (result != INFINITY)
  {
    if (result < 4.0)
    {
      if (result < 1.0)
      {
        return INFINITY - INFINITY;
      }

      else if (result == 1.0)
      {
        return 0.0;
      }

      else
      {
        return sqrt((result - 1.0)) * 0.397634266 * ((result * (result + 96.6951199) + 872.568894) * (result * (result + 4.54380468) + 4.401926)) / ((result * (result + 43.5372573) + 268.174951) * (result * (result + 4.05093591) + 3.62568427));
      }
    }

    else
    {
      v1 = (LODWORD(result) - 1052737536) >> 23;
      v2 = ((LODWORD(result) & 0x7FFFFFu) + 0x8000) >> 16;
      v3 = COERCE_FLOAT(LODWORD(result) & 0x7FFFFF | 0x3F800000);
      v4 = 1.0 / (result * result);
      v5 = (&unk_299E26A00 + 16 * v2);
      v6 = -(1.0 - v3 * *v5);
      return v5[1] + v1 * 0.693147181 + v6 * 1.0 + v6 * v6 * (v6 * 0.333336194 + -0.500002861) - v4 * ((v4 * 0.0374810702 + 0.0715021165) * (v4 * (v4 + -0.521622935) + 3.4964));
    }
  }

  return result;
}

float logbf(float a1)
{
  v1 = (LODWORD(a1) >> 23);
  if ((v1 - 1) < 0xFE)
  {
    return (v1 - 127);
  }

  if (v1 - 1 >= 254)
  {
    return a1 * a1;
  }

  if ((LODWORD(a1) & 0x7FFFFFFF) != 0)
  {
    return -(__clz(LODWORD(a1) & 0x7FFFFFFF) + 118);
  }

  return -1.0 / 0.0;
}

long double logbl(long double __x)
{
  v1 = (*&__x >> 52) & 0x7FFLL;
  if ((v1 - 1) < 0x7FE)
  {
    return (v1 - 1023);
  }

  if (v1 - 1 >= 2046)
  {
    return __x * __x;
  }

  if ((*&__x & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return -(__clz(*&__x & 0x7FFFFFFFFFFFFFFFLL) + 1011);
  }

  return -1.0 / 0.0;
}

int ilogbf(float a1)
{
  v1 = (LODWORD(a1) >> 23);
  if ((v1 - 1) < 0xFE)
  {
    return v1 - 127;
  }

  if (v1 == 255)
  {
    if ((LODWORD(a1) & 0x7FFFFF) == 0)
    {
      return 0x7FFFFFFF;
    }
  }

  else if ((LODWORD(a1) & 0x7FFFFFFF) != 0)
  {
    return -(__clz(LODWORD(a1) & 0x7FFFFFFF) + 118);
  }

  return 0x80000000;
}

int ilogbl(long double __x)
{
  v1 = (*&__x >> 52) & 0x7FFLL;
  if ((v1 - 1) >= 0x7FE)
  {
    if (v1 == 2047)
    {
      if ((*&__x & 0xFFFFFFFFFFFFFLL) == 0)
      {
        LODWORD(v2) = 0x7FFFFFFF;
        return v2;
      }
    }

    else if ((*&__x & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      return -(__clz(*&__x & 0x7FFFFFFFFFFFFFFFLL) + 1011);
    }

    LODWORD(v2) = 0x80000000;
    return v2;
  }

  LODWORD(v2) = v1 - 1023;
  return v2;
}

simd_float4 _simd_sin_f4(simd_float4 x)
{
  v1 = vabsq_f32(x);
  if ((vminvq_u32(vcgeq_f32(vdupq_n_s32(0x49742400u), v1)) & 0x80000000) != 0)
  {
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v22 = vandq_s8(x, v21);
    v23 = vcvtnq_s32_f32(vmulq_f32(v1, vdupq_n_s32(0x3EA2F983u)));
    v24 = vcvtq_f32_s32(v23);
    v25 = veorq_s8(vshlq_n_s32(v23, 0x1FuLL), vmlaq_f32(vmlaq_f32(vmlaq_f32(v1, vdupq_n_s32(0xC0490FDB), v24), vdupq_n_s32(0x33BBBD2Eu), v24), vdupq_n_s32(0x27772CEDu), v24));
    v26 = vmulq_f32(v25, v25);
    return veorq_s8(v22, vmlaq_f32(v25, vmlaq_f32(vdupq_n_s32(0xBE2AAAA6), vmlaq_f32(vdupq_n_s32(0x3C088766u), vmlaq_f32(vdupq_n_s32(0xB94FB7FF), vdupq_n_s32(0x362EDEF8u), v26), v26), v26), vmulq_f32(v26, v25)));
  }

  else
  {
    v2.i64[0] = 0xFE000000FELL;
    v2.i64[1] = 0xFE000000FELL;
    v3 = vandq_s8(vshrq_n_u32(x, 0x17uLL), v2);
    v4 = LODWORD(v3.f64[1]);
    v5 = HIDWORD(v3.f64[0]);
    v6 = HIDWORD(v3.f64[1]);
    v7 = LODWORD(v3.f64[0]);
    v8 = &qword_299E282B0[HIDWORD(v3.f64[0])];
    v9 = &qword_299E282B0[HIDWORD(v3.f64[1])];
    *&v3.f64[0] = qword_299E282B0[LODWORD(v3.f64[0])];
    v3.f64[1] = *v8;
    v2.i64[0] = qword_299E282B0[v4];
    v2.i64[1] = *v9;
    *&v10.f64[0] = qword_299E282B0[v4 + 1];
    *&v10.f64[1] = qword_299E282B0[v6 + 1];
    *&v11.f64[0] = qword_299E282B0[v7 + 1];
    *&v11.f64[1] = qword_299E282B0[v5 + 1];
    v12 = vcvtq_f64_f32(*x.f32);
    v13 = vcvt_hight_f64_f32(x);
    v14 = vmlaq_f64(0, v2, v13);
    v15 = vmlaq_f64(0, v3, v12);
    v16 = vcvtnq_s64_f64(v15);
    v17 = vcvtnq_s64_f64(v14);
    v18 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(veorq_s8(vshlq_n_s64(v16, 0x3FuLL), vmlaq_f64(vsubq_f64(v15, vcvtq_f64_s64(v16)), v11, v12))), veorq_s8(vshlq_n_s64(v17, 0x3FuLL), vmlaq_f64(vsubq_f64(v14, vcvtq_f64_s64(v17)), v10, v13))), vdupq_n_s32(0x40490FDBu));
    v19 = vmulq_f32(v18, v18);
    return vmlaq_f32(v18, vmulq_f32(v19, vmlaq_f32(vdupq_n_s32(0xBE2AAAA6), vmlaq_f32(vdupq_n_s32(0x3C088767u), vmlaq_f32(vdupq_n_s32(0xB94FB6C5), vdupq_n_s32(0x362EC33Bu), v19), v19), v19)), v18);
  }
}

simd_float4 _simd_cos_f4(simd_float4 x)
{
  v1 = vabsq_f32(x);
  if ((vminvq_u32(vcgeq_f32(vdupq_n_s32(0x49742400u), v1)) & 0x80000000) != 0)
  {
    v26 = vcvtnq_s32_f32(vmulq_f32(vaddq_f32(v1, vdupq_n_s32(0x3FC90FDBu)), vdupq_n_s32(0x3EA2F983u)));
    v27.i64[0] = 0xBF000000BF000000;
    v27.i64[1] = 0xBF000000BF000000;
    v28 = vaddq_f32(vcvtq_f32_s32(v26), v27);
    v29 = veorq_s8(vshlq_n_s32(v26, 0x1FuLL), vmlaq_f32(vmlaq_f32(vmlaq_f32(v1, vdupq_n_s32(0xC0490FDB), v28), vdupq_n_s32(0x33BBBD2Eu), v28), vdupq_n_s32(0x27772CEDu), v28));
    v30 = vmulq_f32(v29, v29);
    return vmlaq_f32(v29, vmlaq_f32(vdupq_n_s32(0xBE2AAAA6), vmlaq_f32(vdupq_n_s32(0x3C088764u), vmlaq_f32(vdupq_n_s32(0xB94FB6CF), vdupq_n_s32(0x362EC335u), v30), v30), v30), vmulq_f32(v30, v29));
  }

  else
  {
    v2.i64[0] = 0xFE000000FELL;
    v2.i64[1] = 0xFE000000FELL;
    v3 = vandq_s8(vshrq_n_u32(x, 0x17uLL), v2);
    v4 = LODWORD(v3.f64[1]);
    v5 = HIDWORD(v3.f64[0]);
    v6 = HIDWORD(v3.f64[1]);
    v7 = LODWORD(v3.f64[0]);
    v8 = &qword_299E282B0[HIDWORD(v3.f64[0])];
    v9 = &qword_299E282B0[HIDWORD(v3.f64[1])];
    *&v3.f64[0] = qword_299E282B0[LODWORD(v3.f64[0])];
    v3.f64[1] = *v8;
    v2.i64[0] = qword_299E282B0[v4];
    v2.i64[1] = *v9;
    *&v10.f64[0] = qword_299E282B0[v4 + 1];
    *&v10.f64[1] = qword_299E282B0[v6 + 1];
    *&v11.f64[0] = qword_299E282B0[v7 + 1];
    *&v11.f64[1] = qword_299E282B0[v5 + 1];
    v12 = vcvtq_f64_f32(*x.f32);
    v13 = vcvt_hight_f64_f32(x);
    __asm { FMOV            V6.2D, #0.5 }

    v19 = vmlaq_f64(_Q6, v2, v13);
    v20 = vmlaq_f64(_Q6, v3, v12);
    v21 = vcvtnq_s64_f64(v20);
    v22 = vcvtnq_s64_f64(v19);
    v23 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(veorq_s8(vshlq_n_s64(v21, 0x3FuLL), vmlaq_f64(vsubq_f64(v20, vcvtq_f64_s64(v21)), v11, v12))), veorq_s8(vshlq_n_s64(v22, 0x3FuLL), vmlaq_f64(vsubq_f64(v19, vcvtq_f64_s64(v22)), v10, v13))), vdupq_n_s32(0x40490FDBu));
    v24 = vmulq_f32(v23, v23);
    return vmlaq_f32(v23, vmulq_f32(v24, vmlaq_f32(vdupq_n_s32(0xBE2AAAA6), vmlaq_f32(vdupq_n_s32(0x3C088767u), vmlaq_f32(vdupq_n_s32(0xB94FB6C5), vdupq_n_s32(0x362EC33Bu), v24), v24), v24)), v23);
  }
}

simd_float4 _simd_tan_f4(simd_float4 x)
{
  if ((vminvq_u32(vcgeq_f32(vdupq_n_s32(0x42C80000u), vabsq_f32(x))) & 0x80000000) != 0)
  {
    v37 = vcvtnq_s32_f32(vmulq_f32(x, vdupq_n_s32(0x3F22F983u)));
    v38 = vcvtq_f32_s32(v37);
    v39 = vmlaq_f32(vmlaq_f32(vmlaq_f32(x, vdupq_n_s32(0xBFC90FDB), v38), vdupq_n_s32(0x333BBD2Eu), v38), vdupq_n_s32(0x26F72CEDu), v38);
    v40 = vmulq_f32(v39, v39);
    v41 = vmlaq_f32(v39, vmulq_f32(v40, vmlaq_f32(vdupq_n_s32(0xBE2AAAA4), vmlaq_f32(vdupq_n_s32(0x3C088406u), vdupq_n_s32(0xB94CBDF7), v40), v40)), v39);
    __asm { FMOV            V3.4S, #1.0 }

    v43 = vmlaq_f32(_Q3, vmlaq_f32(vdupq_n_s32(0xBEFFFFDA), vmlaq_f32(vdupq_n_s32(0x3D2A9F58u), vdupq_n_s32(0xBAB229F6), v40), v40), v40);
    v40.i64[0] = 0x100000001;
    v40.i64[1] = 0x100000001;
    v44 = vnegq_s32(vandq_s8(v37, v40));
    return vdivq_f32(vbslq_s8(v44, v43, v41), vbslq_s8(v44, vnegq_f32(v41), v43));
  }

  else
  {
    v1.i64[0] = 0xFE000000FELL;
    v1.i64[1] = 0xFE000000FELL;
    v2 = vandq_s8(vshrq_n_u32(x, 0x17uLL), v1);
    v3 = LODWORD(v2.f64[1]);
    v4 = HIDWORD(v2.f64[0]);
    v5 = HIDWORD(v2.f64[1]);
    v6 = LODWORD(v2.f64[0]);
    v7 = &qword_299E282B0[HIDWORD(v2.f64[0])];
    v8 = &qword_299E282B0[HIDWORD(v2.f64[1])];
    *&v2.f64[0] = qword_299E282B0[LODWORD(v2.f64[0])];
    v2.f64[1] = *v7;
    v1.i64[0] = qword_299E282B0[v3];
    v1.i64[1] = *v8;
    *&v9.f64[0] = qword_299E282B0[v3 + 1];
    *&v9.f64[1] = qword_299E282B0[v5 + 1];
    *&v10.f64[0] = qword_299E282B0[v6 + 1];
    *&v10.f64[1] = qword_299E282B0[v4 + 1];
    v11 = vcvtq_f64_f32(*x.f32);
    v12 = vcvt_hight_f64_f32(x);
    __asm { FMOV            V6.2D, #0.5 }

    v18 = vmlaq_f64(_Q6, v1, v12);
    v19 = vmlaq_f64(_Q6, v2, v11);
    v20 = vcvtnq_s64_f64(v19);
    v21 = vcvtnq_s64_f64(v18);
    v22 = vcvt_hight_f32_f64(vcvt_f32_f64(veorq_s8(vshlq_n_s64(v20, 0x3FuLL), vmlaq_f64(vsubq_f64(v19, vcvtq_f64_s64(v20)), v10, v11))), veorq_s8(vshlq_n_s64(v21, 0x3FuLL), vmlaq_f64(vsubq_f64(v18, vcvtq_f64_s64(v21)), v9, v12)));
    v23 = vmlaq_f64(0, v1, v12);
    v24 = vmlaq_f64(0, v2, v11);
    v25 = vcvtnq_s64_f64(v24);
    v26 = vcvtnq_s64_f64(v23);
    v27 = vcvt_hight_f32_f64(vcvt_f32_f64(veorq_s8(vshlq_n_s64(v25, 0x3FuLL), vmlaq_f64(vsubq_f64(v24, vcvtq_f64_s64(v25)), v10, v11))), veorq_s8(vshlq_n_s64(v26, 0x3FuLL), vmlaq_f64(vsubq_f64(v23, vcvtq_f64_s64(v26)), v9, v12)));
    v28 = vabsq_f32(v27);
    v29 = vabsq_f32(v22);
    v30 = vminnmq_f32(v28, v29);
    v31 = vceqq_s32(v29, v30);
    v32 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(v22, v27), v28), v29), v30);
    v33 = vmulq_f32(v32, v32);
    v34 = vmulq_f32(vmlaq_f32(vdupq_n_s32(0x40490FD7u), vdupq_n_s32(0xC03E1BF0), v33), v32);
    v35 = vmlaq_f32(vdupq_n_s32(0x3F7FFFFCu), vmlaq_f32(vdupq_n_s32(0xC0878864), vdupq_n_s32(0x3F724E71u), v33), v33);
    return vdivq_f32(vbslq_s8(v31, v35, v34), vbslq_s8(v31, v34, v35));
  }
}

void _simd_sincos_f4(simd_float4 x, simd_float4 *sinp, simd_float4 *cosp)
{
  v3 = vabsq_f32(x);
  if ((vminvq_u32(vcgeq_f32(vdupq_n_s32(0x49742400u), v3)) & 0x80000000) != 0)
  {
    v41.i64[0] = 0x8000000080000000;
    v41.i64[1] = 0x8000000080000000;
    v42 = vandq_s8(x, v41);
    v43 = vdupq_n_s32(0x3EA2F983u);
    v44 = vmulq_f32(vaddq_f32(v3, vdupq_n_s32(0x3FC90FDBu)), v43);
    v45 = vcvtnq_s32_f32(vmulq_f32(v3, v43));
    v46 = vcvtnq_s32_f32(v44);
    v47 = vcvtq_f32_s32(v45);
    v48.i64[0] = 0xBF000000BF000000;
    v48.i64[1] = 0xBF000000BF000000;
    v49 = vaddq_f32(vcvtq_f32_s32(v46), v48);
    v50 = vdupq_n_s32(0x40490FDBu);
    v51 = vdupq_n_s32(0xB3BBBD2E);
    v52 = vdupq_n_s32(0xA7772CED);
    v53 = veorq_s8(vshlq_n_s32(v45, 0x1FuLL), vmlsq_f32(vmlsq_f32(vmlsq_f32(v3, v50, v47), v51, v47), v52, v47));
    v54 = veorq_s8(vshlq_n_s32(v46, 0x1FuLL), vmlsq_f32(vmlsq_f32(vmlsq_f32(v3, v50, v49), v51, v49), v52, v49));
    v55 = vmulq_f32(v53, v53);
    v56 = vmulq_f32(v54, v54);
    v57 = vdupq_n_s32(0x362EDEF8u);
    v58 = vdupq_n_s32(0xB94FB7FF);
    v59 = vdupq_n_s32(0x3C088766u);
    v60 = vdupq_n_s32(0xBE2AAAA6);
    v40 = vmlaq_f32(v54, vmlaq_f32(v60, vmlaq_f32(v59, vmlaq_f32(v58, v57, v56), v56), v56), vmulq_f32(v56, v54));
    v37 = veorq_s8(v42, vmlaq_f32(v53, vmlaq_f32(v60, vmlaq_f32(v59, vmlaq_f32(v58, v57, v55), v55), v55), vmulq_f32(v55, v53)));
  }

  else
  {
    v4.i64[0] = 0xFE000000FELL;
    v4.i64[1] = 0xFE000000FELL;
    v5 = vandq_s8(vshrq_n_u32(x, 0x17uLL), v4);
    v6 = LODWORD(v5.f64[1]);
    v7 = HIDWORD(v5.f64[0]);
    v8 = HIDWORD(v5.f64[1]);
    v9 = LODWORD(v5.f64[0]);
    v10 = &qword_299E282B0[HIDWORD(v5.f64[0])];
    *&v5.f64[0] = qword_299E282B0[LODWORD(v5.f64[0])];
    v5.f64[1] = *v10;
    v4.i64[0] = qword_299E282B0[v6];
    v4.i64[1] = qword_299E282B0[v8];
    *&v11.f64[0] = qword_299E282B0[v6 + 1];
    *&v11.f64[1] = qword_299E282B0[v8 + 1];
    *&v12.f64[0] = qword_299E282B0[v9 + 1];
    *&v12.f64[1] = qword_299E282B0[v7 + 1];
    v13 = vcvtq_f64_f32(*x.f32);
    v14 = vcvt_hight_f64_f32(x);
    __asm { FMOV            V6.2D, #0.5 }

    v20 = vmlaq_f64(_Q6, v4, v14);
    v21 = vmlaq_f64(_Q6, v5, v13);
    v22 = vcvtnq_s64_f64(v21);
    v23 = vcvtnq_s64_f64(v20);
    v24 = vcvt_hight_f32_f64(vcvt_f32_f64(veorq_s8(vshlq_n_s64(v22, 0x3FuLL), vmlaq_f64(vsubq_f64(v21, vcvtq_f64_s64(v22)), v12, v13))), veorq_s8(vshlq_n_s64(v23, 0x3FuLL), vmlaq_f64(vsubq_f64(v20, vcvtq_f64_s64(v23)), v11, v14)));
    v25 = vmlaq_f64(0, v4, v14);
    v26 = vmlaq_f64(0, v5, v13);
    v27 = vcvtnq_s64_f64(v26);
    v28 = vcvtnq_s64_f64(v25);
    v29 = veorq_s8(vshlq_n_s64(v28, 0x3FuLL), vmlaq_f64(vsubq_f64(v25, vcvtq_f64_s64(v28)), v11, v14));
    v30 = vdupq_n_s32(0x40490FDBu);
    v31 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(veorq_s8(vshlq_n_s64(v27, 0x3FuLL), vmlaq_f64(vsubq_f64(v26, vcvtq_f64_s64(v27)), v12, v13))), v29), v30);
    v32 = vmulq_f32(v31, v31);
    v33 = vdupq_n_s32(0x362EC33Bu);
    v34 = vdupq_n_s32(0xB94FB6C5);
    v35 = vdupq_n_s32(0x3C088767u);
    v36 = vdupq_n_s32(0xBE2AAAA6);
    v37 = vmlaq_f32(v31, vmulq_f32(v32, vmlaq_f32(v36, vmlaq_f32(v35, vmlaq_f32(v34, v33, v32), v32), v32)), v31);
    v38 = vmulq_f32(v24, v30);
    v39 = vmulq_f32(v38, v38);
    v40 = vmlaq_f32(v38, vmulq_f32(v39, vmlaq_f32(v36, vmlaq_f32(v35, vmlaq_f32(v34, v33, v39), v39), v39)), v38);
  }

  *sinp = v37;
  *cosp = v40;
}

simd_float4 _simd_cospi_f4(simd_float4 x)
{
  v1 = vabsq_f32(x);
  v2 = vrndnq_f32(v1);
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmulq_f32(veorq_s8(vshlq_n_s32(vcvtq_s32_f32(vminnmq_f32(v2, vdupq_n_s32(0x4B800000u))), 0x1FuLL), vsubq_f32(v3, vabdq_f32(v1, v2))), vdupq_n_s32(0x40490FDBu));
  v5 = vmulq_f32(v4, v4);
  return vmlaq_f32(v4, vmulq_f32(v5, vmlaq_f32(vdupq_n_s32(0xBE2AAAA6), vmlaq_f32(vdupq_n_s32(0x3C088767u), vmlaq_f32(vdupq_n_s32(0xB94FB6C5), vdupq_n_s32(0x362EC33Bu), v5), v5), v5)), v4);
}

simd_float4 _simd_sinpi_f4(simd_float4 x)
{
  v1.i64[0] = 0x8000000080000000;
  v1.i64[1] = 0x8000000080000000;
  v2 = vandq_s8(x, v1);
  v3 = vabsq_f32(x);
  v4 = vrndnq_f32(v3);
  v5 = vmulq_f32(veorq_s8(veorq_s8(v2, vsubq_f32(v3, v4)), vshlq_n_s32(vcvtq_s32_f32(vminnmq_f32(v4, vdupq_n_s32(0x4B800000u))), 0x1FuLL)), vdupq_n_s32(0x40490FDBu));
  v6 = vmulq_f32(v5, v5);
  return vmlaq_f32(v5, vmulq_f32(v6, vmlaq_f32(vdupq_n_s32(0xBE2AAAA6), vmlaq_f32(vdupq_n_s32(0x3C088767u), vmlaq_f32(vdupq_n_s32(0xB94FB6C5), vdupq_n_s32(0x362EC33Bu), v6), v6), v6)), v5);
}

simd_float4 _simd_tanpi_f4(simd_float4 x)
{
  v1 = vrndnq_f32(x);
  v2 = vdupq_n_s32(0x40490FDBu);
  v3 = vmulq_f32(vsubq_f32(x, v1), v2);
  v4 = vdupq_n_s32(0x362EC33Bu);
  v5 = vmulq_f32(v3, v3);
  v6 = vdupq_n_s32(0xB94FB6C5);
  v7 = vdupq_n_s32(0x3C088767u);
  v8 = vdupq_n_s32(0xBE2AAAA6);
  v9 = vabdq_f32(x, v1);
  v1.i64[0] = 0x3F0000003F000000;
  v1.i64[1] = 0x3F0000003F000000;
  v10 = vmulq_f32(vsubq_f32(v1, v9), v2);
  v11 = vmulq_f32(v10, v10);
  return vdivq_f32(vmlaq_f32(v3, vmulq_f32(v5, vmlaq_f32(v8, vmlaq_f32(v7, vmlaq_f32(v6, v4, v5), v5), v5)), v3), vmlaq_f32(v10, vmulq_f32(v11, vmlaq_f32(v8, vmlaq_f32(v7, vmlaq_f32(v6, v4, v11), v11), v11)), v10));
}

void _simd_sincospi_f4(simd_float4 x, simd_float4 *sinp, simd_float4 *cosp)
{
  v3.i64[0] = 0x8000000080000000;
  v3.i64[1] = 0x8000000080000000;
  v4 = vandq_s8(x, v3);
  v5 = vabsq_f32(x);
  v6 = vrndnq_f32(v5);
  v7 = vsubq_f32(v5, v6);
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vsubq_f32(v8, vabdq_f32(v5, v6));
  v10 = vshlq_n_s32(vcvtq_s32_f32(vminnmq_f32(v6, vdupq_n_s32(0x4B800000u))), 0x1FuLL);
  v11 = veorq_s8(veorq_s8(v4, v7), v10);
  v12 = veorq_s8(v10, v9);
  v13 = vdupq_n_s32(0x40490FDBu);
  v14 = vmulq_f32(v11, v13);
  v15 = vdupq_n_s32(0x362EC33Bu);
  v16 = vdupq_n_s32(0xB94FB6C5);
  v17 = vmulq_f32(v14, v14);
  v18 = vdupq_n_s32(0x3C088767u);
  v19 = vdupq_n_s32(0xBE2AAAA6);
  *sinp = vmlaq_f32(v14, vmulq_f32(v17, vmlaq_f32(v19, vmlaq_f32(v18, vmlaq_f32(v16, v15, v17), v17), v17)), v14);
  v20 = vmulq_f32(v12, v13);
  v21 = vmulq_f32(v20, v20);
  *cosp = vmlaq_f32(v20, vmulq_f32(v21, vmlaq_f32(v19, vmlaq_f32(v18, vmlaq_f32(v16, v15, v21), v21), v21)), v20);
}

__complex_double casinl(__complex_double a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = casinhl(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

__complex_float casinf(__complex_float a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = casinhf(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

simd_float4 _simd_exp2_f4(simd_float4 x)
{
  v1.i64[0] = 0x4300000043000000;
  v1.i64[1] = 0x4300000043000000;
  v2 = vminq_f32(vmaxq_f32(x, vdupq_n_s32(0xC3160000)), v1);
  v3 = vcvtnq_s32_f32(v2);
  v4 = vcltzq_s32(v2);
  v5.i64[0] = 0x7E0000007ELL;
  v5.i64[1] = 0x7E0000007ELL;
  v6.i64[0] = 0xA0000000A0;
  v6.i64[1] = 0xA0000000A0;
  v7 = vshlq_n_s32(vaddq_s32(vbslq_s8(v4, v6, v5), v3), 0x17uLL);
  v8 = vsubq_f32(v2, vcvtq_f32_s32(v3));
  v6.i64[0] = 0x6F0000006F000000;
  v6.i64[1] = 0x6F0000006F000000;
  v9 = vandq_s8(v4, v6);
  v6.i64[0] = 0x4000000040000000;
  v6.i64[1] = 0x4000000040000000;
  v10 = veorq_s8(v9, v6);
  __asm { FMOV            V4.4S, #1.0 }

  return vmulq_f32(vmulq_f32(vmlaq_f32(_Q4, v8, vmlaq_f32(vdupq_n_s32(0x3F317218u), vmlaq_f32(vdupq_n_s32(0x3E75FDF0u), vmlaq_f32(vdupq_n_s32(0x3D6357B6u), vmlaq_f32(vdupq_n_s32(0x3C1D94F2u), vmlaq_f32(vdupq_n_s32(0x3AAF844Eu), vdupq_n_s32(0x39223642u), v8), v8), v8), v8), v8)), v7), v10);
}

__complex_double catanl(__complex_double a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = catanhl(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

__complex_float catanf(__complex_float a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = catanhf(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

__complex_double ccosl(__complex_double a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v4 = ccoshl(v5);
  v3 = v4.c[1];
  v2 = v4.c[0];
  result.c[1] = v3;
  result.c[0] = v2;
  return result;
}

__complex_float ccosf(__complex_float a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v4 = ccoshf(v5);
  v3 = v4.c[1];
  v2 = v4.c[0];
  result.c[1] = v3;
  result.c[0] = v2;
  return result;
}

double _simd_orient_vd2(simd_double2 a1, simd_double2 a2)
{
  v3 = vextq_s8(a2, a2, 8uLL);
  v4 = vmulq_f64(v3, a1);
  result = v4.f64[0] - v4.f64[1];
  if (v4.f64[0] <= 0.0)
  {
    if (v4.f64[0] >= 0.0 || v4.f64[1] >= 0.0)
    {
      return result;
    }

    v6 = -v4.f64[0] - v4.f64[1];
  }

  else
  {
    if (v4.f64[1] <= 0.0)
    {
      return result;
    }

    v6 = v4.f64[0] + v4.f64[1];
  }

  v7 = v6 * 3.33066907e-16;
  if (result < v7 && v7 > -result)
  {
    v9 = vdupq_n_s64(0x41A0000000000000uLL);
    v10 = vmulq_f64(a1, v9);
    v11 = vmulq_f64(v3, v9);
    v12 = vsubq_f64(v10, vsubq_f64(v10, a1));
    v13 = vsubq_f64(a1, v12);
    v14 = vsubq_f64(v11, vsubq_f64(v11, v3));
    v15 = vsubq_f64(v3, v14);
    v16 = vmlaq_f64(vnegq_f64(vmlsq_f64(vmlsq_f64(vmlsq_f64(v4, v14, v12), v14, v13), v15, v12)), v15, v13);
    v15.f64[0] = v16.f64[0] - v16.f64[1];
    result = v16.f64[0] - (v16.f64[0] - v16.f64[1]) - v16.f64[1] + v16.f64[0] - (v16.f64[0] - v16.f64[1] + v16.f64[0] - (v16.f64[0] - v16.f64[1]));
    v13.f64[0] = v4.f64[0] + v15.f64[0];
    v4.f64[0] = v15.f64[0] - (v4.f64[0] + v15.f64[0] - v4.f64[0]) + v4.f64[0] - (v4.f64[0] + v15.f64[0] - (v4.f64[0] + v15.f64[0] - v4.f64[0]));
    v21 = v13.f64[0] + v4.f64[0] - v4.f64[1];
    v19 = v4.f64[0] - (v4.f64[0] - v4.f64[1]) - v4.f64[1] + v4.f64[0] - (v4.f64[0] - v4.f64[1] + v4.f64[0] - (v4.f64[0] - v4.f64[1]));
    v20 = v4.f64[0] - v4.f64[1] - (v21 - v13.f64[0]) + v13.f64[0] - (v21 - (v21 - v13.f64[0]));
    for (i = 8; i != 32; i += 8)
    {
      result = result + *&v18[i];
    }
  }

  return result;
}

double _simd_orient_pd2(simd_double2 a1, simd_double2 a2, simd_double2 a3)
{
  v13 = vsubq_f64(a1, a3);
  v14 = vsubq_f64(a2, a3);
  v15 = vmulq_laneq_f64(v13, v14, 1);
  v16 = vmulq_laneq_f64(v14, v13, 1);
  *&v17 = *&vsubq_f64(v15, v16);
  if (v15.f64[0] <= 0.0)
  {
    if (v15.f64[0] >= 0.0 || v16.f64[0] >= 0.0)
    {
      return v17;
    }

    v18 = -v15.f64[0] - v16.f64[0];
  }

  else
  {
    if (v16.f64[0] <= 0.0)
    {
      return v17;
    }

    *&v18 = *&vaddq_f64(v15, v16);
  }

  if (v17 < v18 * 3.33066907e-16 && v18 * 3.33066907e-16 > -v17)
  {
    v106[4] = v12;
    v106[5] = v11;
    v106[6] = v10;
    v106[7] = v9;
    v106[8] = v8;
    v106[9] = v7;
    v106[10] = v6;
    v106[11] = v5;
    v106[14] = v3;
    v106[15] = v4;
    v20 = vextq_s8(v14, v14, 8uLL);
    v21 = vmulq_f64(v20, v13);
    v22 = vdupq_n_s64(0x41A0000000000000uLL);
    v23 = vmulq_f64(v13, v22);
    v24 = vsubq_f64(v23, vsubq_f64(v23, v13));
    v25 = vsubq_f64(v13, v24);
    v26 = vmulq_f64(v14, v22);
    v27 = vextq_s8(v26, v26, 8uLL);
    v28 = vsubq_f64(v27, vsubq_f64(v27, v20));
    v29 = vsubq_f64(v20, v28);
    v30 = vnegq_f64(v24);
    v31 = vnegq_f64(v25);
    v32 = vmlaq_f64(vnegq_f64(vmlsq_f64(vmlsq_f64(vmlsq_f64(v21, v28, v24), v28, v25), v29, v24)), v29, v25);
    v24.f64[0] = v32.f64[0] - v32.f64[1];
    v17 = v32.f64[0] - (v32.f64[0] - v32.f64[1]) - v32.f64[1] + v32.f64[0] - (v32.f64[0] - v32.f64[1] + v32.f64[0] - (v32.f64[0] - v32.f64[1]));
    v32.f64[0] = v21.f64[0] + v32.f64[0] - v32.f64[1];
    v27.f64[0] = v24.f64[0] - (v32.f64[0] - v21.f64[0]) + v21.f64[0] - (v32.f64[0] - (v32.f64[0] - v21.f64[0]));
    v106[0] = v17;
    v106[1] = v27.f64[0] - (v27.f64[0] - v21.f64[1]) - v21.f64[1] + v27.f64[0] - (v27.f64[0] - v21.f64[1] + v27.f64[0] - (v27.f64[0] - v21.f64[1]));
    v106[2] = v27.f64[0] - v21.f64[1] - (v32.f64[0] + v27.f64[0] - v21.f64[1] - v32.f64[0]) + v32.f64[0] - (v32.f64[0] + v27.f64[0] - v21.f64[1] - (v32.f64[0] + v27.f64[0] - v21.f64[1] - v32.f64[0]));
    v106[3] = v32.f64[0] + v27.f64[0] - v21.f64[1];
    for (i = 1; i != 4; ++i)
    {
      v17 = v17 + v106[i];
    }

    if (v17 < v18 * 2.22044605e-16 && v18 * 2.22044605e-16 > -v17)
    {
      v35 = vsubq_f64(a1, v13);
      v36 = vsubq_f64(a2, v14);
      v37 = vaddq_f64(v13, v35);
      v38 = vsubq_f64(v35, a3);
      v39 = vaddq_f64(vsubq_f64(v36, a3), vsubq_f64(a2, vaddq_f64(v14, v36)));
      v40 = vaddq_f64(v38, vsubq_f64(a1, v37));
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v40), vceqzq_f64(v39))))))
      {
        v89 = v28;
        v90 = v29;
        v91 = v31;
        v92 = v30;
        v93 = v25;
        v97 = v13;
        v98 = v39;
        v95 = v17;
        v96 = v40;
        v94 = v14;
        v41 = fabsl(v17) * 3.33066907e-16 + v18 * 1.10933565e-31;
        v42 = vmuld_lane_f64(v96.f64[0], v94, 1);
        v43 = vmuld_lane_f64(v94.f64[0], v96, 1);
        v17 = v42 + v97.f64[0] * v98.f64[1] - (v43 + v97.f64[1] * v98.f64[0]) + v95;
        if (v17 < v41 && v41 > -v17)
        {
          v45 = v96.f64[0] * 134217728.0 - (v96.f64[0] * 134217728.0 - v96.f64[0]);
          _V17.D[1] = v89.f64[1];
          _V16.D[1] = v90.f64[1];
          v48 = -(v42 - v89.f64[0] * v45 - v89.f64[0] * (v96.f64[0] - v45) - v90.f64[0] * v45 - (v96.f64[0] - v45) * v90.f64[0]);
          _D12 = v96.f64[1] * 134217728.0 - (v96.f64[1] * 134217728.0 - v96.f64[1]);
          _D13 = v96.f64[1] - _D12;
          __asm
          {
            FMLS            D4, D12, V17.D[1]
            FMLS            D4, D13, V17.D[1]
            FMLA            D3, D13, V16.D[1]
          }

          v58 = v48 - _D3;
          v59 = v48 - (v48 - _D3) - _D3 + v48 - (v48 - _D3 + v48 - (v48 - _D3));
          v60 = v42 + v58;
          v61 = v58 - (v42 + v58 - v42) + v42 - (v42 + v58 - (v42 + v58 - v42));
          v62 = v61 - v43;
          v99 = v59;
          v100 = v61 - (v61 - v43) - v43 + v61 - (v61 - v43 + v61 - (v61 - v43));
          v63 = v60 + v61 - v43;
          v101 = v62 - (v63 - v60) + v60 - (v63 - (v63 - v60));
          v102 = v63;
          v64 = sub_299E0BFB4(4, v106, 4, &v99, v105);
          v65 = v98.f64[1] * 134217728.0 - (v98.f64[1] * 134217728.0 - v98.f64[1]);
          _V7.D[1] = v91.f64[1];
          _V6.D[1] = v92.f64[1];
          _V5.D[1] = v93.f64[1];
          v69 = -(v97.f64[0] * v98.f64[1] + v92.f64[0] * v65 + v91.f64[0] * v65 + v92.f64[0] * (v98.f64[1] - v65) - v93.f64[0] * (v98.f64[1] - v65));
          _D14 = v98.f64[0] * 134217728.0 - (v98.f64[0] * 134217728.0 - v98.f64[0]);
          _D15 = v98.f64[0] - _D14;
          __asm
          {
            FMLA            D4, D14, V6.D[1]
            FMLA            D4, D14, V7.D[1]
            FMLA            D3, D15, V5.D[1]
          }

          v75 = v69 - _D3;
          v76 = v69 - (v69 - _D3) - _D3 + v69 - (v69 - _D3 + v69 - (v69 - _D3));
          v77 = v97.f64[0] * v98.f64[1] + v75;
          v78 = v75 - (v77 - v97.f64[0] * v98.f64[1]) + v97.f64[0] * v98.f64[1] - (v77 - (v77 - v97.f64[0] * v98.f64[1]));
          v79 = v78 - v97.f64[1] * v98.f64[0];
          v99 = v76;
          v100 = v78 - v79 - v97.f64[1] * v98.f64[0] + v78 - (v79 + v78 - v79);
          v101 = v79 - (v77 + v79 - v77) + v77 - (v77 + v79 - (v77 + v79 - v77));
          v102 = v77 + v79;
          v80 = sub_299E0BFB4(v64, v105, 4, &v99, v104);
          v81 = -(v96.f64[0] * v98.f64[1] - v45 * v65 - (v96.f64[0] - v45) * v65 - v45 * (v98.f64[1] - v65) - (v96.f64[0] - v45) * (v98.f64[1] - v65));
          v82 = -(v98.f64[0] * v96.f64[1] - _D12 * _D14 - _D13 * _D14 - _D12 * _D15 - _D13 * _D15);
          v83 = v81 - v82;
          v84 = v81 - (v81 - v82) - v82 + v81 - (v81 - v82 + v81 - (v81 - v82));
          v85 = v96.f64[0] * v98.f64[1] + v83;
          v86 = v83 - (v85 - v96.f64[0] * v98.f64[1]) + v96.f64[0] * v98.f64[1] - (v85 - (v85 - v96.f64[0] * v98.f64[1]));
          v87 = v86 - v98.f64[0] * v96.f64[1];
          v99 = v84;
          v100 = v86 - v87 - v98.f64[0] * v96.f64[1] + v86 - (v87 + v86 - v87);
          v101 = v87 - (v85 + v87 - v85) + v85 - (v85 + v87 - (v85 + v87 - v85));
          v102 = v85 + v87;
          return v103[sub_299E0BFB4(v80, v104, 4, &v99, v103) - 1];
        }
      }
    }
  }

  return v17;
}

double _simd_orient_vd3(const double *a1)
{
  v12 = *a1;
  v11 = *(a1 + 2);
  v14 = *(a1 + 4);
  v13 = *(a1 + 6);
  v16 = *(a1 + 8);
  v15 = *(a1 + 10);
  v17 = vextq_s8(v16, v15, 8uLL);
  v15.f64[1] = a1[8];
  v18 = vmulq_f64(vextq_s8(v14, v13, 8uLL), v15);
  v19 = vmulq_laneq_f64(v14, v16, 1);
  v13.f64[1] = a1[4];
  v20 = vmulq_f64(v13, v17);
  v21 = vmulq_laneq_f64(v16, v14, 1);
  v22 = vmulq_f64(v11, vsubq_f64(v19, v21)).f64[0] + vaddvq_f64(vmulq_f64(*a1, vsubq_f64(v18, v20)));
  v23 = (vmulq_f64(vabsq_f64(v11), vaddq_f64(vabsq_f64(v19), vabsq_f64(v21))).f64[0] + vaddvq_f64(vmulq_f64(vabsq_f64(*a1), vaddq_f64(vabsq_f64(v18), vabsq_f64(v20))))) * 7.77156117e-16;
  if (v22 <= v23 && v23 >= -v22)
  {
    v89[4] = v10;
    v89[5] = v9;
    v89[6] = v8;
    v89[7] = v7;
    v89[8] = v6;
    v89[9] = v5;
    v89[10] = v4;
    v89[11] = v3;
    v89[16] = v1;
    v89[17] = v2;
    v25 = a1;
    v26 = v12.f64[1];
    v27 = vmuld_lane_f64(v14.f64[0], v16, 1);
    v28 = 134217728.0 * v14.f64[0] - (134217728.0 * v14.f64[0] - v14.f64[0]);
    v29 = vmuld_lane_f64(134217728.0, v16, 1);
    v30 = v29 - (v29 - v16.f64[1]);
    v31 = v16.f64[1] - v30;
    v78 = v14.f64[0] - v28;
    v79 = v28;
    v32 = -(v27 - v28 * v30 - (v14.f64[0] - v28) * v30 - v28 * (v16.f64[1] - v30) - (v14.f64[0] - v28) * (v16.f64[1] - v30));
    v33 = vmuld_lane_f64(v16.f64[0], v14, 1);
    v34 = 134217728.0 * v16.f64[0] - (134217728.0 * v16.f64[0] - v16.f64[0]);
    v35 = v16.f64[0] - v34;
    v36 = vmuld_lane_f64(134217728.0, v14, 1);
    v37 = v36 - (v36 - v14.f64[1]);
    v77 = v14.f64[1] - v37;
    v38 = -(v33 - v34 * v37 - (v16.f64[0] - v34) * v37 - v34 * (v14.f64[1] - v37) - (v16.f64[0] - v34) * (v14.f64[1] - v37));
    v39 = v32 - v38;
    v40 = v32 - (v32 - v38) - v38 + v32 - (v32 - v38 + v32 - (v32 - v38));
    v41 = v27 + v39;
    v42 = v39 - (v27 + v39 - v27) + v27 - (v27 + v39 - (v27 + v39 - v27));
    v89[0] = v40;
    v89[1] = v42 - (v42 - v33) - v33 + v42 - (v42 - v33 + v42 - (v42 - v33));
    v89[2] = v42 - v33 - (v41 + v42 - v33 - v41) + v41 - (v41 + v42 - v33 - (v41 + v42 - v33 - v41));
    v89[3] = v41 + v42 - v33;
    v80 = v12;
    v75 = v16;
    v76 = v14;
    v43 = sub_299E0C1CC(4, v89, v86, v11.f64[0]);
    v44 = vmuld_lane_f64(v75.f64[0], v80, 1);
    v45 = vmuld_lane_f64(134217728.0, v80, 1);
    v46 = v45 - (v45 - v26);
    v47 = v26 - v46;
    v48 = -(v44 - v34 * v46 - v35 * v46 - v34 * v47 - v35 * v47);
    v49 = vmuld_lane_f64(v80.f64[0], v75, 1);
    v50 = 134217728.0 * v80.f64[0] - (134217728.0 * v80.f64[0] - v80.f64[0]);
    v51 = -(v49 - v50 * v30 - (v80.f64[0] - v50) * v30 - v50 * v31 - (v80.f64[0] - v50) * v31);
    v52 = v48 - v51;
    v53 = v48 - (v48 - v51) - v51 + v48 - (v48 - v51 + v48 - (v48 - v51));
    v54 = v44 + v52;
    v55 = v52 - (v44 + v52 - v44) + v44 - (v44 + v52 - (v44 + v52 - v44));
    v56 = v55 - v49;
    v88[0] = v53;
    v88[1] = v55 - (v55 - v49) - v49 + v55 - (v55 - v49 + v55 - (v55 - v49));
    v57 = v54 + v55 - v49;
    v88[2] = v56 - (v57 - v54) + v54 - (v57 - (v57 - v54));
    v88[3] = v57;
    v58 = sub_299E0C1CC(4, v88, v85, v25[6]);
    v59 = vmuld_lane_f64(v80.f64[0], v76, 1);
    v60 = -(v59 - v50 * v37 - (v80.f64[0] - v50) * v37 - v50 * v77 - (v80.f64[0] - v50) * v77);
    v61 = vmuld_lane_f64(v76.f64[0], v80, 1);
    v62 = -(v61 - v79 * v46 - v78 * v46 - v79 * v47 - v78 * v47);
    v63 = v60 - v62;
    v64 = v60 - (v60 - v62) - v62 + v60 - (v60 - v62 + v60 - (v60 - v62));
    v65 = v59 + v63;
    v66 = v63 - (v59 + v63 - v59) + v59 - (v59 + v63 - (v59 + v63 - v59));
    v67 = v66 - v61;
    v87[0] = v64;
    v87[1] = v66 - (v66 - v61) - v61 + v66 - (v66 - v61 + v66 - (v66 - v61));
    v68 = v65 + v66 - v61;
    v87[2] = v67 - (v68 - v65) + v65 - (v68 - (v68 - v65));
    v87[3] = v68;
    LODWORD(v25) = sub_299E0C1CC(4, v87, v84, v25[10]);
    v69 = sub_299E0BFB4(v43, v86, v58, v85, v83);
    v70 = sub_299E0BFB4(v69, v83, v25, v84, &v81);
    v22 = v81;
    if (v70 >= 2)
    {
      v71 = v70 - 1;
      v72 = &v82;
      do
      {
        v73 = *v72++;
        v22 = v22 + v73;
        --v71;
      }

      while (v71);
    }
  }

  return v22;
}

double _simd_orient_pd3(const double *a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = *(v1 + 112);
  v9 = vsubq_f64(v4, v8);
  v10 = vsubq_f64(v3, v7);
  v11 = vsubq_f64(v5, v7);
  v12 = vsubq_f64(v6, v8);
  v13 = vextq_s8(v11, v12, 8uLL);
  v12.f64[1] = v11.f64[0];
  v14 = vmulq_f64(vextq_s8(v10, v9, 8uLL), v12);
  v15 = vmulq_laneq_f64(v10, v11, 1);
  v9.f64[1] = v10.f64[0];
  v16 = vmulq_f64(v9, v13);
  v17 = vmulq_laneq_f64(v11, v10, 1);
  v18 = vmulq_f64(vsubq_f64(v2, v8), vsubq_f64(v15, v17)).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(*v1, v7), vsubq_f64(v14, v16)));
  v19 = vmulq_f64(vabdq_f64(v2, v8), vaddq_f64(vabsq_f64(v15), vabsq_f64(v17))).f64[0] + vaddvq_f64(vmulq_f64(vabdq_f64(*v1, v7), vaddq_f64(vabsq_f64(v14), vabsq_f64(v16))));
  if (v18 <= v19 * 7.77156117e-16 && v19 * 7.77156117e-16 >= -v18)
  {
    v307 = v19;
    v21.f64[0] = *(v1 + 64);
    v21.f64[1] = *(v1 + 8);
    v22 = vzip1q_s64(v4, v2);
    v305 = *(v1 + 96);
    v297 = vzip1q_s64(*v1, v3);
    v299 = v21;
    v295 = vzip2q_s64(v3, v5);
    v291 = vdupq_laneq_s64(v7, 1);
    v292 = vdupq_lane_s64(*&v7.f64[0], 0);
    v314 = vsubq_f64(v295, v291);
    v23 = vsubq_f64(v297, v292);
    v316 = v23;
    v24 = vmuld_lane_f64(v23.f64[1], v314, 1);
    v23.f64[0] = vmuld_lane_f64(134217728.0, v23, 1);
    v309 = v23.f64[0] - (v23.f64[0] - v23.f64[1]);
    v23.f64[0] = vmuld_lane_f64(134217728.0, v314, 1);
    v25 = v23.f64[0] - (v23.f64[0] - v314.f64[1]);
    v310 = v23.f64[1] - v309;
    v311 = v23.f64[1];
    v23.f64[0] = -(v24 - v309 * v25 - (v23.f64[1] - v309) * v25 - v309 * (v314.f64[1] - v25) - (v23.f64[1] - v309) * (v314.f64[1] - v25));
    v315 = vsubq_f64(v21, v7);
    v26 = vmuld_n_f64(v315.f64[0], v314.f64[0]);
    v27 = 134217728.0 * v315.f64[0] - (134217728.0 * v315.f64[0] - v315.f64[0]);
    v28 = 134217728.0 * v314.f64[0] - (134217728.0 * v314.f64[0] - v314.f64[0]);
    v29 = v314.f64[0] - v28;
    v30 = -(v26 - v27 * v28 - (v315.f64[0] - v27) * v28 - v27 * (v314.f64[0] - v28) - (v315.f64[0] - v27) * (v314.f64[0] - v28));
    v31 = v23.f64[0] - v30;
    v23.f64[0] = v23.f64[0] - (v23.f64[0] - v30) - v30 + v23.f64[0] - (v23.f64[0] - v30 + v23.f64[0] - (v23.f64[0] - v30));
    v32 = v24 + v31;
    v33 = v31 - (v24 + v31 - v24) + v24 - (v24 + v31 - (v24 + v31 - v24));
    v34 = v33 - v26;
    v289 = v26;
    v359[0] = v23.f64[0];
    v359[1] = v33 - (v33 - v26) - v26 + v33 - (v33 - v26 + v33 - (v33 - v26));
    v35 = v32 + v33 - v26;
    v293 = v22;
    v290 = vdupq_lane_s64(*&v8.f64[0], 0);
    v313 = vsubq_f64(v22, v290);
    v359[2] = v34 - (v35 - v32) + v32 - (v35 - (v35 - v32));
    v359[3] = v35;
    v301 = v8.f64[0];
    v303 = v6.f64[0];
    v312 = v6.f64[0] - v8.f64[0];
    v36 = sub_299E0C1CC(4, v359, v356, v313.f64[1]);
    v37 = vmuld_lane_f64(v315.f64[0], v315, 1);
    v38 = vmuld_lane_f64(134217728.0, v315, 1);
    v39 = v38 - (v38 - v315.f64[1]);
    v40 = v315.f64[1] - v39;
    v284 = v27;
    v285 = v315.f64[0] - v27;
    v41 = v37 - v27 * v39 - (v315.f64[0] - v27) * v39 - v27 * (v315.f64[1] - v39);
    v42 = v314.f64[1] - v25;
    v43 = -(v41 - v285 * (v315.f64[1] - v39));
    v44 = vmuld_lane_f64(v316.f64[0], v314, 1);
    v45 = 134217728.0 * v316.f64[0] - (134217728.0 * v316.f64[0] - v316.f64[0]);
    v283 = v25;
    v46 = v44 - v45 * v25 - (v316.f64[0] - v45) * v25;
    v47 = v44;
    v48 = -(v46 - v45 * v42 - (v316.f64[0] - v45) * v42);
    v49 = v43 - v48;
    v50 = v43 - (v43 - v48) - v48 + v43 - (v43 - v48 + v43 - (v43 - v48));
    v51 = v37 + v49;
    v52 = v49 - (v37 + v49 - v37) + v37 - (v37 + v49 - (v37 + v49 - v37));
    v358[0] = v50;
    v358[1] = v52 - (v52 - v44) - v44 + v52 - (v52 - v44 + v52 - (v52 - v44));
    v358[2] = v52 - v44 - (v51 + v52 - v44 - v51) + v51 - (v51 + v52 - v44 - (v51 + v52 - v44 - v51));
    v358[3] = v51 + v52 - v44;
    v53 = sub_299E0C1CC(4, v358, v355, v313.f64[0]);
    v54 = vmuld_n_f64(v316.f64[0], v314.f64[0]);
    v286 = v45;
    v287 = v28;
    v55 = v54 - v45 * v28 - (v316.f64[0] - v45) * v28;
    v56 = v316.f64[0] - v45;
    v288 = v29;
    v57 = -(v55 - v45 * v29 - (v316.f64[0] - v45) * v29);
    v58 = vmuld_lane_f64(v311, v315, 1);
    v59 = -(v58 - v309 * v39 - v310 * v39 - v309 * v40 - v310 * v40);
    v60 = v57 - v59;
    v61 = v57 - (v57 - v59) - v59 + v57 - (v57 - v59 + v57 - (v57 - v59));
    v62 = v54 + v60;
    v63 = v60 - (v54 + v60 - v54) + v54 - (v54 + v60 - (v54 + v60 - v54));
    v64 = v63 - v58;
    v357[0] = v61;
    v357[1] = v63 - (v63 - v58) - v58 + v63 - (v63 - v58 + v63 - (v63 - v58));
    v65 = v62 + v63 - v58;
    v357[2] = v64 - (v65 - v62) + v62 - (v65 - (v65 - v62));
    v357[3] = v65;
    v66 = sub_299E0C1CC(4, v357, v354, v312);
    v67 = sub_299E0BFB4(v36, v356, v53, v355, v353);
    v68 = sub_299E0BFB4(v67, v353, v66, v354, &v351);
    v69 = v68;
    v18 = v351;
    if (v68 < 2)
    {
      v72 = v307;
    }

    else
    {
      v70 = v68 - 1;
      v71 = &v352;
      v72 = v307;
      do
      {
        v73 = *v71++;
        v18 = v18 + v73;
        --v70;
      }

      while (v70);
    }

    if (v18 < v72 * 3.33066907e-16 && v72 * 3.33066907e-16 > -v18)
    {
      v75 = vsubq_f64(v293, v313);
      v76 = vsubq_f64(v295, v314);
      v77 = vsubq_f64(v297, v316);
      v78 = vsubq_f64(v299, v315);
      v79 = vaddq_f64(vsubq_f64(v78, v305), vsubq_f64(v299, vaddq_f64(v315, v78)));
      v80 = vaddq_f64(vsubq_f64(v77, v292), vsubq_f64(v297, vaddq_f64(v316, v77)));
      v81 = vaddq_f64(vsubq_f64(v76, v291), vsubq_f64(v295, vaddq_f64(v314, v76)));
      v82 = vaddq_f64(vsubq_f64(v75, v290), vsubq_f64(v293, vaddq_f64(v313, v75)));
      v83 = vceqzq_f64(v79);
      v84 = vceqzq_f64(v80);
      v85 = vceqzq_f64(v81);
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(v83, v84), vuzp1q_s32(v85, vceqzq_f64(v82))))) & 1) == 0 || v303 - v312 - v301 + v303 - (v312 + v303 - v312) != 0.0)
      {
        v294 = v84;
        v296 = v85;
        v298 = v83;
        v300 = v80;
        v304 = v303 - v312 - v301 + v303 - (v312 + v303 - v312);
        v302 = v82;
        v308 = v81;
        v306 = v79;
        v86 = fabsl(v18);
        _V28.D[1] = v300.f64[1];
        _V27.D[1] = v306.f64[1];
        _V26.D[1] = v308.f64[1];
        v90 = v86 * 3.33066907e-16 + v72 * 3.20474743e-31;
        _D30 = v315.f64[1];
        v92 = vmuld_lane_f64(v314.f64[1], v300, 1);
        _D29 = v311;
        __asm { FMLA            D0, D29, V26.D[1] }

        _D16 = v315.f64[0];
        v99 = v315.f64[0] * v308.f64[0];
        v100 = vmuld_lane_f64(-(v289 - v311 * v314.f64[1]), v302, 1) + v313.f64[1] * (_D0 - (v315.f64[0] * v308.f64[0] + v314.f64[0] * v306.f64[0]));
        v101 = v315.f64[1] * v306.f64[0];
        __asm { FMLA            D6, D16, V27.D[1] }

        v103 = vmuld_lane_f64(v316.f64[0], v308, 1);
        v104 = v100 + -(v47 - v315.f64[0] * v315.f64[1]) * v302.f64[0] + v313.f64[0] * (_D6 - (v103 + v314.f64[1] * v300.f64[0]));
        v105 = v314.f64[0] * v300.f64[0];
        v106 = vmuld_lane_f64(v311, v306, 1);
        __asm { FMLA            D17, D30, V28.D[1] }

        v18 = v104 + -(v58 - v316.f64[0] * v314.f64[0]) * v304 + v312 * (v314.f64[0] * v300.f64[0] + v316.f64[0] * v308.f64[0] - _D17) + v18;
        if (v18 < v90 && v90 > -v18)
        {
          v109 = vmovn_s64(v294);
          if (vuzp1_s8(vuzp1_s16(*&v101, v109), *&v101).i8[2])
          {
            v110 = v296;
            v111 = v298;
            if (vuzp1_s8(vuzp1_s16(vmovn_s64(v298), *&v101), *&v101).i8[1])
            {
              v346 = 0.0;
              v342 = 0.0;
              v112 = 1;
            }

            else
            {
              v346 = -(-(v306.f64[1] * v311) - (v306.f64[1] * -134217728.0 - (v306.f64[1] + v306.f64[1] * -134217728.0)) * v309 - (-v306.f64[1] - (v306.f64[1] * -134217728.0 - (v306.f64[1] + v306.f64[1] * -134217728.0))) * v309 - (v306.f64[1] * -134217728.0 - (v306.f64[1] + v306.f64[1] * -134217728.0)) * v310 - (-v306.f64[1] - (v306.f64[1] * -134217728.0 - (v306.f64[1] + v306.f64[1] * -134217728.0))) * v310);
              v347 = -(v306.f64[1] * v311);
              v342 = -(v315.f64[0] * v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1])) * v284 - (v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]))) * v284 - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1])) * v285 - (v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]))) * v285);
              v343 = v315.f64[0] * v306.f64[1];
              v112 = 2;
            }
          }

          else
          {
            v111 = v298;
            v113 = v300.f64[0] * 134217728.0 - (v300.f64[0] * 134217728.0 - v300.f64[0]);
            v114 = -(v105 - v113 * v287 - (v300.f64[0] - v113) * v287 - v113 * v288 - (v300.f64[0] - v113) * v288);
            if (vuzp1_s8(vuzp1_s16(vmovn_s64(v298), *&v101), *&v101).i8[1])
            {
              v346 = -(v105 - v113 * v287 - (v300.f64[0] - v113) * v287 - v113 * v288 - (v300.f64[0] - v113) * v288);
              v347 = v314.f64[0] * v300.f64[0];
              v342 = -(-(v300.f64[0] * v314.f64[1]) - (v300.f64[0] * -134217728.0 - (v300.f64[0] + v300.f64[0] * -134217728.0)) * v283 - (-v300.f64[0] - (v300.f64[0] * -134217728.0 - (v300.f64[0] + v300.f64[0] * -134217728.0))) * v283 - (v300.f64[0] * -134217728.0 - (v300.f64[0] + v300.f64[0] * -134217728.0)) * v42 - (-v300.f64[0] - (v300.f64[0] * -134217728.0 - (v300.f64[0] + v300.f64[0] * -134217728.0))) * v42);
              v343 = -(v300.f64[0] * v314.f64[1]);
              v112 = 2;
            }

            else
            {
              v115 = v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]);
              v116 = -(v106 - v115 * v309 - (v306.f64[1] - v115) * v309 - v115 * v310 - (v306.f64[1] - v115) * v310);
              v117 = v114 - v116;
              v118 = v114 - (v114 - v116) - v116 + v114 - (v114 - v116 + v114 - (v114 - v116));
              v119 = v105 + v117;
              v120 = v117 - (v105 + v117 - v105) + v105 - (v105 + v117 - (v105 + v117 - v105));
              v121 = v120 - v106;
              v122 = v120 - (v120 - v106);
              v123 = v120 - v106 + v122;
              v124 = v122 - v106;
              v111 = v298;
              v346 = v118;
              v347 = v124 + v120 - v123;
              v348 = v121 - (v119 + v121 - v119) + v119 - (v119 + v121 - (v119 + v121 - v119));
              v349 = v119 + v121;
              v125 = -(v315.f64[0] * v306.f64[1] - v115 * v284 - (v306.f64[1] - v115) * v284 - v115 * v285 - (v306.f64[1] - v115) * v285);
              v126 = -(v300.f64[0] * v314.f64[1] + -v113 * v283 + -(v300.f64[0] - v113) * v283 + -v113 * v42 - (v300.f64[0] - v113) * v42);
              v127 = v125 - v126;
              v128 = v125 - (v125 - v126) - v126 + v125 - (v125 - v126 + v125 - (v125 - v126));
              v129 = v315.f64[0] * v306.f64[1] + v127;
              v130 = v127 - (v129 - v315.f64[0] * v306.f64[1]) + v315.f64[0] * v306.f64[1] - (v129 - (v129 - v315.f64[0] * v306.f64[1]));
              v131 = v130 - v300.f64[0] * v314.f64[1];
              v342 = v128;
              v343 = v130 - v131 - v300.f64[0] * v314.f64[1] + v130 - (v131 + v130 - v131);
              v344 = v131 - (v129 + v131 - v129) + v129 - (v129 + v131 - (v129 + v131 - v129));
              v345 = v129 + v131;
              v112 = 4;
            }

            v110 = v296;
          }

          v132 = v300.f64[1];
          if (vuzp1_s8(vuzp1_s16(*&v101, v109), *&v101).i8[3])
          {
            if (vuzp1_s8(*&v101, vuzp1_s16(vmovn_s64(v110), *&v101)).i32[1])
            {
              v338 = 0.0;
              v334 = 0.0;
              v133 = 1;
              goto LABEL_38;
            }

            v338 = -(-(v308.f64[0] * v315.f64[0]) - (v308.f64[0] * -134217728.0 - (v308.f64[0] + v308.f64[0] * -134217728.0)) * v284 - (-v308.f64[0] - (v308.f64[0] * -134217728.0 - (v308.f64[0] + v308.f64[0] * -134217728.0))) * v284 - (v308.f64[0] * -134217728.0 - (v308.f64[0] + v308.f64[0] * -134217728.0)) * v285 - (-v308.f64[0] - (v308.f64[0] * -134217728.0 - (v308.f64[0] + v308.f64[0] * -134217728.0))) * v285);
            v339 = -(v308.f64[0] * v315.f64[0]);
            v334 = -(v316.f64[0] * v308.f64[0] - (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0])) * v286 - (v308.f64[0] - (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0]))) * v286 - (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0])) * v56 - (v308.f64[0] - (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0]))) * v56);
            v335 = v316.f64[0] * v308.f64[0];
          }

          else
          {
            v134 = v300.f64[1] * 134217728.0 - (v300.f64[1] * 134217728.0 - v300.f64[1]);
            v135 = -(v92 - v134 * v283 - (v300.f64[1] - v134) * v283 - v134 * v42 - (v300.f64[1] - v134) * v42);
            if ((vuzp1_s8(*&v101, vuzp1_s16(vmovn_s64(v110), *&v101)).i32[1] & 1) == 0)
            {
              v136 = v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0]);
              v137 = -(v99 - v136 * v284 - (v308.f64[0] - v136) * v284 - v136 * v285 - (v308.f64[0] - v136) * v285);
              v138 = v135 - v137;
              v139 = v135 - (v135 - v137) - v137 + v135 - (v135 - v137 + v135 - (v135 - v137));
              v140 = v92 + v138;
              v141 = v138 - (v92 + v138 - v92) + v92 - (v92 + v138 - (v92 + v138 - v92));
              v142 = v141 - v99;
              v338 = v139;
              v339 = v141 - (v141 - v99) - v99 + v141 - (v141 - v99 + v141 - (v141 - v99));
              v143 = v140 + v141 - v99;
              v340 = v142 - (v143 - v140) + v140 - (v143 - (v143 - v140));
              v341 = v143;
              v144 = -(v316.f64[0] * v308.f64[0] - v136 * v286 - (v308.f64[0] - v136) * v286 - v136 * v56 - (v308.f64[0] - v136) * v56);
              v145 = -(v315.f64[1] * v300.f64[1] + -v134 * v39 + -(v300.f64[1] - v134) * v39 + -v134 * v40 - (v300.f64[1] - v134) * v40);
              v146 = v144 - v145;
              v147 = v144 - (v144 - v145) - v145 + v144 - (v144 - v145 + v144 - (v144 - v145));
              v148 = v316.f64[0] * v308.f64[0] + v146;
              v149 = v146 - (v148 - v316.f64[0] * v308.f64[0]) + v316.f64[0] * v308.f64[0] - (v148 - (v148 - v316.f64[0] * v308.f64[0]));
              v150 = v149 - v315.f64[1] * v300.f64[1];
              v334 = v147;
              v335 = v149 - v150 - v315.f64[1] * v300.f64[1] + v149 - (v150 + v149 - v150);
              v336 = v150 - (v148 + v150 - v148) + v148 - (v148 + v150 - (v148 + v150 - v148));
              v337 = v148 + v150;
              v133 = 4;
LABEL_38:
              v151 = v302.f64[1];
              if (vuzp1_s8(vuzp1_s16(vmovn_s64(v111), *&v101), *&v101).u8[0])
              {
                v152 = vmovn_s64(v110);
                v153 = vuzp1_s16(v152, v152);
                if (vuzp1_s8(v153, v153).i8[5])
                {
                  v330 = 0.0;
                  v326 = 0.0;
                  v154 = 1;
                  goto LABEL_46;
                }

                v330 = -(-(v308.f64[1] * v316.f64[0]) - (v308.f64[1] * -134217728.0 - (v308.f64[1] + v308.f64[1] * -134217728.0)) * v286 - (-v308.f64[1] - (v308.f64[1] * -134217728.0 - (v308.f64[1] + v308.f64[1] * -134217728.0))) * v286 - (v308.f64[1] * -134217728.0 - (v308.f64[1] + v308.f64[1] * -134217728.0)) * v56 - (-v308.f64[1] - (v308.f64[1] * -134217728.0 - (v308.f64[1] + v308.f64[1] * -134217728.0))) * v56);
                v331 = -(v308.f64[1] * v316.f64[0]);
                v326 = -(v311 * v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1])) * v309 - (v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]))) * v309 - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1])) * v310 - (v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]))) * v310);
                v327 = v311 * v308.f64[1];
              }

              else
              {
                v155 = v306.f64[0] * 134217728.0 - (v306.f64[0] * 134217728.0 - v306.f64[0]);
                v156 = -(v101 - v155 * v39 - (v306.f64[0] - v155) * v39 - v155 * v40 - (v306.f64[0] - v155) * v40);
                if ((vuzp1_s8(*&v101, vuzp1_s16(vmovn_s64(v110), *&v101)).i8[5] & 1) == 0)
                {
                  v157 = v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]);
                  v158 = -(v103 - v157 * v286 - (v308.f64[1] - v157) * v286 - v157 * v56 - (v308.f64[1] - v157) * v56);
                  v159 = v156 - v158;
                  v160 = v156 - (v156 - v158) - v158 + v156 - (v156 - v158 + v156 - (v156 - v158));
                  v161 = v101 + v159;
                  v162 = v159 - (v101 + v159 - v101) + v101 - (v101 + v159 - (v101 + v159 - v101));
                  v163 = v162 - v103;
                  v330 = v160;
                  v331 = v162 - (v162 - v103) - v103 + v162 - (v162 - v103 + v162 - (v162 - v103));
                  v164 = v161 + v162 - v103;
                  v332 = v163 - (v164 - v161) + v161 - (v164 - (v164 - v161));
                  v333 = v164;
                  v165 = -(v311 * v308.f64[1] - v157 * v309 - (v308.f64[1] - v157) * v309 - v157 * v310 - (v308.f64[1] - v157) * v310);
                  v166 = -(v314.f64[0] * v306.f64[0] + -v155 * v287 + -(v306.f64[0] - v155) * v287 + -v155 * v288 - (v306.f64[0] - v155) * v288);
                  v167 = v165 - v166;
                  v168 = v165 - (v165 - v166) - v166 + v165 - (v165 - v166 + v165 - (v165 - v166));
                  v169 = v311 * v308.f64[1] + v167;
                  v170 = v167 - (v169 - v311 * v308.f64[1]) + v311 * v308.f64[1] - (v169 - (v169 - v311 * v308.f64[1]));
                  v171 = v170 - v314.f64[0] * v306.f64[0];
                  v326 = v168;
                  v327 = v170 - v171 - v314.f64[0] * v306.f64[0] + v170 - (v171 + v170 - v171);
                  v328 = v171 - (v169 + v171 - v169) + v169 - (v169 + v171 - (v169 + v171 - v169));
                  v329 = v169 + v171;
                  v154 = 4;
LABEL_46:
                  v172 = sub_299E0BFB4(v133, &v338, v154, &v326, v325);
                  v173 = sub_299E0C1CC(v172, v325, v317, v313.f64[1]);
                  v174 = &v351;
                  v175 = v350;
                  v176 = sub_299E0BFB4(v69, &v351, v173, v317, v350);
                  v177 = sub_299E0BFB4(v154, &v330, v112, &v342, v324);
                  v178 = sub_299E0C1CC(v177, v324, v317, v313.f64[0]);
                  v179 = sub_299E0BFB4(v176, v350, v178, v317, &v351);
                  v180 = sub_299E0BFB4(v112, &v346, v133, &v334, v323);
                  v181 = sub_299E0C1CC(v180, v323, v317, v312);
                  v182 = sub_299E0BFB4(v179, &v351, v181, v317, v350);
                  if (v302.f64[1] != 0.0)
                  {
                    v183 = sub_299E0C1CC(4, v359, v318, v302.f64[1]);
                    v174 = v350;
                    v175 = &v351;
                    v182 = sub_299E0BFB4(v182, v350, v183, v318, &v351);
                  }

                  if (v302.f64[0] == 0.0)
                  {
                    v185 = v174;
                    v174 = v175;
                  }

                  else
                  {
                    v184 = sub_299E0C1CC(4, v358, v318, v302.f64[0]);
                    v182 = sub_299E0BFB4(v182, v175, v184, v318, v174);
                    v185 = v175;
                  }

                  if (v304 == 0.0)
                  {
                    v187 = v185;
                    v185 = v174;
                  }

                  else
                  {
                    v186 = sub_299E0C1CC(4, v357, v318, v304);
                    v182 = sub_299E0BFB4(v182, v174, v186, v318, v185);
                    v187 = v174;
                  }

                  v188 = v308.f64[0];
                  v189 = v306.f64[0];
                  v190 = v300.f64[0];
                  if (v300.f64[0] != 0.0)
                  {
                    if (v308.f64[0] == 0.0)
                    {
                      v205 = v187;
                    }

                    else
                    {
                      v191 = v300.f64[0] * v308.f64[0];
                      v192 = v300.f64[0] * 134217728.0 - (v300.f64[0] * 134217728.0 - v300.f64[0]);
                      v193 = -(v300.f64[0] * v308.f64[0] - v192 * (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0])) - (v300.f64[0] - v192) * (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0])) - v192 * (v308.f64[0] - (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0]))) - (v300.f64[0] - v192) * (v308.f64[0] - (v308.f64[0] * 134217728.0 - (v308.f64[0] * 134217728.0 - v308.f64[0]))));
                      v194 = v312 * 134217728.0 - (v312 * 134217728.0 - v312);
                      v195 = v193 * 134217728.0 - (v193 * 134217728.0 - v193);
                      v196 = -(v312 * v193 - v195 * v194 - (v193 - v195) * v194 - v195 * (v312 - v194) - (v193 - v195) * (v312 - v194));
                      v197 = v300.f64[0] * v308.f64[0] * 134217728.0 - (v191 * 134217728.0 - v191);
                      v198 = v300.f64[0] * v308.f64[0] - v197;
                      v199 = -(v191 * v312 - v197 * v194 - (v191 - v197) * v194 - v197 * (v312 - v194) - (v191 - v197) * (v312 - v194));
                      v200 = v312 * v193 - (v191 * v312 - v197 * v194 - (v191 - v197) * v194 - v197 * (v312 - v194) - (v191 - v197) * (v312 - v194));
                      v319 = v196;
                      v320 = v199 - (v200 - v312 * v193) + v312 * v193 - (v200 - (v200 - v312 * v193));
                      v321 = v200 - (v300.f64[0] * v308.f64[0] * v312 + v200 - v300.f64[0] * v308.f64[0] * v312);
                      v322 = v300.f64[0] * v308.f64[0] * v312 + v200;
                      v201 = sub_299E0BFB4(v182, v185, 4, &v319, v187);
                      v182 = v201;
                      if (v304 == 0.0)
                      {
                        v205 = v185;
                        v185 = v187;
                      }

                      else
                      {
                        v202 = v304 * 134217728.0 - (v304 * 134217728.0 - v304);
                        v203 = v191 * v304 + -v197 * v202;
                        v204 = v304 * v193 - (v203 + -v198 * v202 + -v197 * (v304 - v202) - v198 * (v304 - v202));
                        v319 = -(v304 * v193 + -v195 * v202 + -(v193 - v195) * v202 + -v195 * (v304 - v202) - (v193 - v195) * (v304 - v202));
                        v320 = -(v203 + -v198 * v202 + -v197 * (v304 - v202) - v198 * (v304 - v202)) - (v204 - v304 * v193) + v304 * v193 - (v204 - (v204 - v304 * v193));
                        v321 = v204 - (v191 * v304 + v204 - v191 * v304);
                        v322 = v191 * v304 + v204;
                        v182 = sub_299E0BFB4(v201, v187, 4, &v319, v185);
                        v205 = v187;
                      }

                      v188 = v308.f64[0];
                      v189 = v306.f64[0];
                      v151 = v302.f64[1];
                      v190 = v300.f64[0];
                    }

                    if (v308.f64[1] == 0.0)
                    {
                      v187 = v205;
                    }

                    else
                    {
                      v206 = -(v190 * v308.f64[1]);
                      v207 = v190 * -134217728.0 - (v190 + v190 * -134217728.0);
                      v208 = -(v206 - v207 * (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1])) - (-v190 - v207) * (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1])) - v207 * (v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]))) - (-v190 - v207) * (v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]))));
                      v209 = v313.f64[0] * 134217728.0 - (v313.f64[0] * 134217728.0 - v313.f64[0]);
                      v210 = v208 * 134217728.0 - (v208 * 134217728.0 - v208);
                      v211 = -(v313.f64[0] * v208 - v210 * v209 - (v208 - v210) * v209 - v210 * (v313.f64[0] - v209) - (v208 - v210) * (v313.f64[0] - v209));
                      v212 = v206 * 134217728.0 - (v206 * 134217728.0 - v206);
                      v213 = v206 - v212;
                      v214 = -(v313.f64[0] * v206 - v212 * v209 - (v206 - v212) * v209 - v212 * (v313.f64[0] - v209) - (v206 - v212) * (v313.f64[0] - v209));
                      v215 = v313.f64[0] * v208 + v214;
                      v319 = v211;
                      v320 = v214 - (v215 - v313.f64[0] * v208) + v313.f64[0] * v208 - (v215 - (v215 - v313.f64[0] * v208));
                      v321 = v215 - (v313.f64[0] * v206 + v215 - v313.f64[0] * v206);
                      v322 = v313.f64[0] * v206 + v215;
                      v216 = sub_299E0BFB4(v182, v185, 4, &v319, v205);
                      v182 = v216;
                      if (v302.f64[0] == 0.0)
                      {
                        v187 = v185;
                        v185 = v205;
                      }

                      else
                      {
                        v217 = v302.f64[0] * 134217728.0 - (v302.f64[0] * 134217728.0 - v302.f64[0]);
                        v218 = v206 * v302.f64[0] + -v212 * v217;
                        v219 = v302.f64[0] * v208 - (v218 + -v213 * v217 + -v212 * (v302.f64[0] - v217) - v213 * (v302.f64[0] - v217));
                        v319 = -(v302.f64[0] * v208 + -v210 * v217 + -(v208 - v210) * v217 + -v210 * (v302.f64[0] - v217) - (v208 - v210) * (v302.f64[0] - v217));
                        v320 = -(v218 + -v213 * v217 + -v212 * (v302.f64[0] - v217) - v213 * (v302.f64[0] - v217)) - (v219 - v302.f64[0] * v208) + v302.f64[0] * v208 - (v219 - (v219 - v302.f64[0] * v208));
                        v321 = v219 - (v206 * v302.f64[0] + v219 - v206 * v302.f64[0]);
                        v322 = v206 * v302.f64[0] + v219;
                        v182 = sub_299E0BFB4(v216, v205, 4, &v319, v185);
                        v187 = v205;
                      }

                      v188 = v308.f64[0];
                      v189 = v306.f64[0];
                      v151 = v302.f64[1];
                      v132 = v300.f64[1];
                    }
                  }

                  if (v132 != 0.0)
                  {
                    if (v308.f64[1] == 0.0)
                    {
                      v234 = v187;
                    }

                    else
                    {
                      v220 = v132 * v308.f64[1];
                      v221 = v132 * 134217728.0 - (v132 * 134217728.0 - v132);
                      v222 = -(v132 * v308.f64[1] - v221 * (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1])) - (v132 - v221) * (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1])) - v221 * (v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]))) - (v132 - v221) * (v308.f64[1] - (v308.f64[1] * 134217728.0 - (v308.f64[1] * 134217728.0 - v308.f64[1]))));
                      v223 = v313.f64[1] * 134217728.0 - (v313.f64[1] * 134217728.0 - v313.f64[1]);
                      v224 = v222 * 134217728.0 - (v222 * 134217728.0 - v222);
                      v225 = -(v313.f64[1] * v222 - v224 * v223 - (v222 - v224) * v223 - v224 * (v313.f64[1] - v223) - (v222 - v224) * (v313.f64[1] - v223));
                      v226 = v132 * v308.f64[1] * 134217728.0 - (v220 * 134217728.0 - v220);
                      v227 = v132 * v308.f64[1] - v226;
                      v228 = -(v313.f64[1] * v220 - v226 * v223 - (v220 - v226) * v223 - v226 * (v313.f64[1] - v223) - (v220 - v226) * (v313.f64[1] - v223));
                      v229 = v313.f64[1] * v222 - (v313.f64[1] * v220 - v226 * v223 - (v220 - v226) * v223 - v226 * (v313.f64[1] - v223) - (v220 - v226) * (v313.f64[1] - v223));
                      v319 = v225;
                      v320 = v228 - (v229 - v313.f64[1] * v222) + v313.f64[1] * v222 - (v229 - (v229 - v313.f64[1] * v222));
                      v321 = v229 - (v313.f64[1] * v220 + v229 - v313.f64[1] * v220);
                      v322 = v313.f64[1] * (v132 * v308.f64[1]) + v229;
                      v230 = sub_299E0BFB4(v182, v185, 4, &v319, v187);
                      v182 = v230;
                      if (v151 == 0.0)
                      {
                        v234 = v185;
                        v185 = v187;
                      }

                      else
                      {
                        v231 = v151 * 134217728.0 - (v151 * 134217728.0 - v151);
                        v232 = v220 * v151 + -v226 * v231;
                        v233 = v151 * v222 - (v232 + -v227 * v231 + -v226 * (v151 - v231) - v227 * (v151 - v231));
                        v319 = -(v151 * v222 + -v224 * v231 + -(v222 - v224) * v231 + -v224 * (v151 - v231) - (v222 - v224) * (v151 - v231));
                        v320 = -(v232 + -v227 * v231 + -v226 * (v151 - v231) - v227 * (v151 - v231)) - (v233 - v151 * v222) + v151 * v222 - (v233 - (v233 - v151 * v222));
                        v321 = v233 - (v220 * v151 + v233 - v220 * v151);
                        v322 = v220 * v151 + v233;
                        v182 = sub_299E0BFB4(v230, v187, 4, &v319, v185);
                        v234 = v187;
                      }

                      v188 = v308.f64[0];
                      v132 = v300.f64[1];
                    }

                    if (v306.f64[1] == 0.0)
                    {
                      v187 = v234;
                    }

                    else
                    {
                      v235 = -(v132 * v306.f64[1]);
                      v236 = v132 * -134217728.0 - (v132 + v132 * -134217728.0);
                      v237 = -(v235 - v236 * (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1])) - (-v132 - v236) * (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1])) - v236 * (v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]))) - (-v132 - v236) * (v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]))));
                      v238 = v312 * 134217728.0 - (v312 * 134217728.0 - v312);
                      v239 = v237 * 134217728.0 - (v237 * 134217728.0 - v237);
                      v240 = -(v312 * v237 - v239 * v238 - (v237 - v239) * v238 - v239 * (v312 - v238) - (v237 - v239) * (v312 - v238));
                      v241 = v235 * 134217728.0 - (v235 * 134217728.0 - v235);
                      v242 = v235 - v241;
                      v243 = -(v235 * v312 - v241 * v238 - (v235 - v241) * v238 - v241 * (v312 - v238) - (v235 - v241) * (v312 - v238));
                      v244 = v312 * v237 + v243;
                      v319 = v240;
                      v320 = v243 - (v244 - v312 * v237) + v312 * v237 - (v244 - (v244 - v312 * v237));
                      v321 = v244 - (v235 * v312 + v244 - v235 * v312);
                      v322 = v235 * v312 + v244;
                      v245 = sub_299E0BFB4(v182, v185, 4, &v319, v234);
                      v182 = v245;
                      if (v304 == 0.0)
                      {
                        v187 = v185;
                        v185 = v234;
                      }

                      else
                      {
                        v246 = v304 * 134217728.0 - (v304 * 134217728.0 - v304);
                        v247 = v235 * v304 + -v241 * v246;
                        v248 = v304 * v237 - (v247 + -v242 * v246 + -v241 * (v304 - v246) - v242 * (v304 - v246));
                        v319 = -(v304 * v237 + -v239 * v246 + -(v237 - v239) * v246 + -v239 * (v304 - v246) - (v237 - v239) * (v304 - v246));
                        v320 = -(v247 + -v242 * v246 + -v241 * (v304 - v246) - v242 * (v304 - v246)) - (v248 - v304 * v237) + v304 * v237 - (v248 - (v248 - v304 * v237));
                        v321 = v248 - (v235 * v304 + v248 - v235 * v304);
                        v322 = v235 * v304 + v248;
                        v182 = sub_299E0BFB4(v245, v234, 4, &v319, v185);
                        v187 = v234;
                      }

                      v188 = v308.f64[0];
                    }

                    v189 = v306.f64[0];
                  }

                  if (v189 == 0.0)
                  {
                    v263 = v187;
                  }

                  else
                  {
                    if (v306.f64[1] == 0.0)
                    {
                      v263 = v187;
                    }

                    else
                    {
                      v249 = v189 * v306.f64[1];
                      v250 = v189 * 134217728.0 - (v189 * 134217728.0 - v189);
                      v251 = -(v189 * v306.f64[1] - v250 * (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1])) - (v189 - v250) * (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1])) - v250 * (v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]))) - (v189 - v250) * (v306.f64[1] - (v306.f64[1] * 134217728.0 - (v306.f64[1] * 134217728.0 - v306.f64[1]))));
                      v252 = v313.f64[0] * 134217728.0 - (v313.f64[0] * 134217728.0 - v313.f64[0]);
                      v253 = v251 * 134217728.0 - (v251 * 134217728.0 - v251);
                      v254 = -(v313.f64[0] * v251 - v253 * v252 - (v251 - v253) * v252 - v253 * (v313.f64[0] - v252) - (v251 - v253) * (v313.f64[0] - v252));
                      v255 = v249 * 134217728.0 - (v249 * 134217728.0 - v249);
                      v256 = -(v249 * v313.f64[0] - v255 * v252 - (v249 - v255) * v252 - v255 * (v313.f64[0] - v252) - (v249 - v255) * (v313.f64[0] - v252));
                      v257 = v313.f64[0] * v251 - (v249 * v313.f64[0] - v255 * v252 - (v249 - v255) * v252 - v255 * (v313.f64[0] - v252) - (v249 - v255) * (v313.f64[0] - v252));
                      v319 = v254;
                      v320 = v256 - (v257 - v313.f64[0] * v251) + v313.f64[0] * v251 - (v257 - (v257 - v313.f64[0] * v251));
                      v321 = v257 - (v189 * v306.f64[1] * v313.f64[0] + v257 - v189 * v306.f64[1] * v313.f64[0]);
                      v322 = v189 * v306.f64[1] * v313.f64[0] + v257;
                      v258 = sub_299E0BFB4(v182, v185, 4, &v319, v187);
                      v182 = v258;
                      if (v302.f64[0] == 0.0)
                      {
                        v263 = v185;
                        v185 = v187;
                      }

                      else
                      {
                        v259 = v302.f64[0] * 134217728.0 - (v302.f64[0] * 134217728.0 - v302.f64[0]);
                        v260 = v302.f64[0] - v259;
                        v261 = v302.f64[0] * v251;
                        v262 = -(v249 * v302.f64[0] + -v255 * v259 + -(v249 - v255) * v259 + -v255 * v260 - (v249 - v255) * v260);
                        v319 = -(v302.f64[0] * v251 + -v253 * v259 + -(v251 - v253) * v259 + -v253 * v260 - (v251 - v253) * v260);
                        v320 = v262 - (v261 + v262 - v261) + v261 - (v261 + v262 - (v261 + v262 - v261));
                        v321 = v261 + v262 - (v249 * v302.f64[0] + v261 + v262 - v249 * v302.f64[0]);
                        v322 = v249 * v302.f64[0] + v302.f64[0] * v251 - (v249 * v302.f64[0] + -v255 * v259 + -(v249 - v255) * v259 + -v255 * v260 - (v249 - v255) * v260);
                        v182 = sub_299E0BFB4(v258, v187, 4, &v319, v185);
                        v263 = v187;
                      }

                      v188 = v308.f64[0];
                      v189 = v306.f64[0];
                    }

                    if (v188 != 0.0)
                    {
                      v264 = -(v189 * v188);
                      v265 = v189 * -134217728.0 - (v189 + v189 * -134217728.0);
                      v266 = -(v264 - v265 * (v188 * 134217728.0 - (v188 * 134217728.0 - v188)) - (-v189 - v265) * (v188 * 134217728.0 - (v188 * 134217728.0 - v188)) - v265 * (v188 - (v188 * 134217728.0 - (v188 * 134217728.0 - v188))) - (-v189 - v265) * (v188 - (v188 * 134217728.0 - (v188 * 134217728.0 - v188))));
                      v267 = v313.f64[1] * 134217728.0 - (v313.f64[1] * 134217728.0 - v313.f64[1]);
                      v268 = v266 * 134217728.0 - (v266 * 134217728.0 - v266);
                      v269 = -(v313.f64[1] * v266 - v268 * v267 - (v266 - v268) * v267 - v268 * (v313.f64[1] - v267) - (v266 - v268) * (v313.f64[1] - v267));
                      v270 = v264 * 134217728.0 - (v264 * 134217728.0 - v264);
                      v271 = v264 - v270;
                      v272 = -(v313.f64[1] * v264 - v270 * v267 - (v264 - v270) * v267 - v270 * (v313.f64[1] - v267) - (v264 - v270) * (v313.f64[1] - v267));
                      v273 = v313.f64[1] * v266 + v272;
                      v319 = v269;
                      v320 = v272 - (v273 - v313.f64[1] * v266) + v313.f64[1] * v266 - (v273 - (v273 - v313.f64[1] * v266));
                      v321 = v273 - (v313.f64[1] * v264 + v273 - v313.f64[1] * v264);
                      v322 = v313.f64[1] * v264 + v273;
                      v274 = sub_299E0BFB4(v182, v185, 4, &v319, v263);
                      v182 = v274;
                      if (v151 == 0.0)
                      {
LABEL_95:
                        v187 = v185;
                        v185 = v263;
                        goto LABEL_96;
                      }

                      v275 = v151 * 134217728.0 - (v151 * 134217728.0 - v151);
                      v276 = v264 * v151 + -v270 * v275;
                      v277 = v151 * v266 - (v276 + -v271 * v275 + -v270 * (v151 - v275) - v271 * (v151 - v275));
                      v319 = -(v151 * v266 + -v268 * v275 + -(v266 - v268) * v275 + -v268 * (v151 - v275) - (v266 - v268) * (v151 - v275));
                      v320 = -(v276 + -v271 * v275 + -v270 * (v151 - v275) - v271 * (v151 - v275)) - (v277 - v151 * v266) + v151 * v266 - (v277 - (v277 - v151 * v266));
                      v321 = v277 - (v264 * v151 + v277 - v264 * v151);
                      v322 = v264 * v151 + v277;
                      v182 = sub_299E0BFB4(v274, v263, 4, &v319, v185);
LABEL_94:
                      v278 = sub_299E0C1CC(v172, v325, v317, v151);
                      v182 = sub_299E0BFB4(v182, v185, v278, v317, v263);
                      goto LABEL_95;
                    }

                    v187 = v263;
                  }

                  if (v151 == 0.0)
                  {
LABEL_96:
                    if (v302.f64[0] == 0.0)
                    {
                      v280 = v187;
                      v187 = v185;
                    }

                    else
                    {
                      v279 = sub_299E0C1CC(v177, v324, v317, v302.f64[0]);
                      v182 = sub_299E0BFB4(v182, v185, v279, v317, v187);
                      v280 = v185;
                    }

                    if (v304 == 0.0)
                    {
                      v280 = v187;
                    }

                    else
                    {
                      v281 = sub_299E0C1CC(v180, v323, v317, v304);
                      v182 = sub_299E0BFB4(v182, v187, v281, v317, v280);
                    }

                    return v280[v182 - 1];
                  }

                  goto LABEL_94;
                }

                v330 = -(v101 - v155 * v39 - (v306.f64[0] - v155) * v39 - v155 * v40 - (v306.f64[0] - v155) * v40);
                v331 = v315.f64[1] * v306.f64[0];
                v326 = -(-(v306.f64[0] * v314.f64[0]) - (v306.f64[0] * -134217728.0 - (v306.f64[0] + v306.f64[0] * -134217728.0)) * v287 - (-v306.f64[0] - (v306.f64[0] * -134217728.0 - (v306.f64[0] + v306.f64[0] * -134217728.0))) * v287 - (v306.f64[0] * -134217728.0 - (v306.f64[0] + v306.f64[0] * -134217728.0)) * v288 - (-v306.f64[0] - (v306.f64[0] * -134217728.0 - (v306.f64[0] + v306.f64[0] * -134217728.0))) * v288);
                v327 = -(v306.f64[0] * v314.f64[0]);
              }

              v154 = 2;
              goto LABEL_46;
            }

            v338 = -(v92 - v134 * v283 - (v300.f64[1] - v134) * v283 - v134 * v42 - (v300.f64[1] - v134) * v42);
            v339 = v92;
            v334 = -(-(v300.f64[1] * v315.f64[1]) - (v300.f64[1] * -134217728.0 - (v300.f64[1] + v300.f64[1] * -134217728.0)) * v39 - (-v300.f64[1] - (v300.f64[1] * -134217728.0 - (v300.f64[1] + v300.f64[1] * -134217728.0))) * v39 - (v300.f64[1] * -134217728.0 - (v300.f64[1] + v300.f64[1] * -134217728.0)) * v40 - (-v300.f64[1] - (v300.f64[1] * -134217728.0 - (v300.f64[1] + v300.f64[1] * -134217728.0))) * v40);
            v335 = -(v300.f64[1] * v315.f64[1]);
          }

          v133 = 2;
          goto LABEL_38;
        }
      }
    }
  }

  return v18;
}

double _simd_incircle_pd2(simd_double2 a1, simd_double2 a2, simd_double2 a3, simd_double2 a4)
{
  v4.f64[0] = (MEMORY[0x2A1C7C4A8])();
  v8 = v7;
  v9 = vsubq_f64(v7, v4);
  v10 = vsubq_f64(v5, v4);
  v11 = vsubq_f64(v6, v4);
  v12 = vmulq_f64(v9, v9);
  v13 = vaddq_f64(v12, vdupq_laneq_s64(v12, 1));
  v14 = vmulq_f64(v10, v10);
  v15 = vmulq_f64(v11, v11);
  v16 = vaddq_f64(v14, vdupq_laneq_s64(v14, 1));
  v17 = vaddq_f64(v15, vdupq_laneq_s64(v15, 1));
  v18 = vextq_s8(v11, v17, 8uLL);
  v17.f64[1] = v11.f64[0];
  v19 = vmulq_f64(vextq_s8(v10, v16, 8uLL), v17);
  v20 = vmulq_laneq_f64(v10, v11, 1);
  v16.f64[1] = v10.f64[0];
  v21 = vmulq_f64(v16, v18);
  v22 = vmulq_laneq_f64(v11, v10, 1);
  v23 = vmulq_f64(v13, vsubq_f64(v20, v22)).f64[0] + vaddvq_f64(vmulq_f64(v9, vsubq_f64(v19, v21)));
  v24 = vmulq_f64(vabsq_f64(v13), vaddq_f64(vabsq_f64(v20), vabsq_f64(v22))).f64[0] + vaddvq_f64(vmulq_f64(vabdq_f64(v8, v4), vaddq_f64(vabsq_f64(v19), vabsq_f64(v21))));
  if (v23 <= v24 * 1.11022302e-15 && v24 * 1.11022302e-15 >= -v23)
  {
    v403 = v24;
    v397 = v5;
    v399 = v6;
    v377 = v12.f64[0];
    v393 = v8;
    v395 = v4;
    v389 = v4.f64[1];
    v391 = v8.f64[1];
    v26 = v8.f64[1] - v4.f64[1];
    v27 = vmuld_lane_f64(v10.f64[0], v11, 1);
    v401 = 134217728.0 * v10.f64[0] - (134217728.0 * v10.f64[0] - v10.f64[0]);
    v28 = vmuld_lane_f64(134217728.0, v11, 1);
    v29 = v28 - (v28 - v11.f64[1]);
    v30 = v11.f64[1] - v29;
    v408 = v10.f64[0] - v401;
    v409 = v11.f64[1];
    v31 = -(v27 - v401 * v29 - (v10.f64[0] - v401) * v29 - v401 * (v11.f64[1] - v29) - (v10.f64[0] - v401) * (v11.f64[1] - v29));
    v410 = v10.f64[1];
    v32 = vmuld_lane_f64(v11.f64[0], v10, 1);
    v33 = 134217728.0 * v11.f64[0] - (134217728.0 * v11.f64[0] - v11.f64[0]);
    v34 = v11.f64[0] - v33;
    v35 = vmuld_lane_f64(134217728.0, v10, 1);
    v406 = v35 - (v35 - v10.f64[1]);
    v407 = v10.f64[1] - v406;
    v36 = -(v32 - v33 * v406 - (v11.f64[0] - v33) * v406 - v33 * (v10.f64[1] - v406) - (v11.f64[0] - v33) * (v10.f64[1] - v406));
    v37 = v31 - v36;
    v38 = v31 - (v31 - v36) - v36 + v31 - (v31 - v36 + v31 - (v31 - v36));
    v39 = v27 + v37;
    v40 = v37 - (v27 + v37 - v27) + v27 - (v27 + v37 - (v27 + v37 - v27));
    v41 = v40 - v32;
    v386 = v32;
    v490[0] = v38;
    v490[1] = v40 - (v40 - v32) - v32 + v40 - (v40 - v32 + v40 - (v40 - v32));
    v42 = v39 + v40 - v32;
    v490[2] = v41 - (v42 - v39) + v39 - (v42 - (v42 - v39));
    v490[3] = v42;
    v412 = v9;
    v413 = v11;
    v411 = v10;
    v43 = sub_299E0C1CC(4, v490, v487, v9.f64[0]);
    v44 = sub_299E0C1CC(v43, v487, v486, v412.f64[0]);
    v45 = sub_299E0C1CC(4, v490, v485, v26);
    v46 = sub_299E0C1CC(v45, v485, v484, v26);
    v47 = sub_299E0BFB4(v44, v486, v46, v484, v483);
    v48 = v26 * 134217728.0 - (v26 * 134217728.0 - v26);
    v382 = v30;
    v384 = v33;
    v388 = v34;
    v49 = -(v26 * v413.f64[0] - v33 * v48 - v34 * v48 - v33 * (v26 - v48) - v34 * (v26 - v48));
    v50 = vmuld_lane_f64(v412.f64[0], v413, 1);
    v51 = 134217728.0 * v412.f64[0] - (134217728.0 * v412.f64[0] - v412.f64[0]);
    v381 = v29;
    v52 = v50 - v51 * v29 - (v412.f64[0] - v51) * v29;
    v53 = v401;
    v54 = -(v52 - v51 * v30 - (v412.f64[0] - v51) * v30);
    v55 = v50;
    v56 = v49 - v54;
    v57 = v49 - (v49 - v54) - v54 + v49 - (v49 - v54 + v49 - (v49 - v54));
    v58 = v26 * v413.f64[0] + v56;
    v59 = v56 - (v58 - v26 * v413.f64[0]) + v26 * v413.f64[0] - (v58 - (v58 - v26 * v413.f64[0]));
    v489[0] = v57;
    v489[1] = v59 - (v59 - v50) - v50 + v59 - (v59 - v50 + v59 - (v59 - v50));
    v489[2] = v59 - v50 - (v58 + v59 - v50 - v58) + v58 - (v58 + v59 - v50 - (v58 + v59 - v50 - v58));
    v489[3] = v58 + v59 - v50;
    v60 = sub_299E0C1CC(4, v489, v482, v411.f64[0]);
    v61 = sub_299E0C1CC(v60, v482, v481, v411.f64[0]);
    v62 = sub_299E0C1CC(4, v489, v480, v410);
    v63 = sub_299E0C1CC(v62, v480, v479, v410);
    v64 = sub_299E0BFB4(v61, v481, v63, v479, v478);
    v65 = vmuld_lane_f64(v412.f64[0], v411, 1);
    v387 = v412.f64[0] - v51;
    v66 = -(v65 - v51 * v406 - v387 * v406 - v51 * v407 - v387 * v407);
    v405 = v26;
    v67 = v26 * v411.f64[0];
    v379 = v48;
    v380 = v26 - v48;
    v68 = -(v26 * v411.f64[0] - v53 * v48 - v408 * v48 - v53 * (v26 - v48) - v408 * (v26 - v48));
    v69 = v66 - v68;
    v70 = v66 - (v66 - v68) - v68 + v66 - (v66 - v68 + v66 - (v66 - v68));
    v71 = v65 + v69;
    v72 = v69 - (v65 + v69 - v65) + v65 - (v65 + v69 - (v65 + v69 - v65));
    v73 = v72 - v26 * v411.f64[0];
    v488[0] = v70;
    v488[1] = v72 - v73 - v26 * v411.f64[0] + v72 - (v73 + v72 - v73);
    v488[2] = v73 - (v71 + v73 - v71) + v71 - (v71 + v73 - (v71 + v73 - v71));
    v488[3] = v71 + v73;
    v74 = sub_299E0C1CC(4, v488, v477, v413.f64[0]);
    v75 = sub_299E0C1CC(v74, v477, v476, v413.f64[0]);
    v76 = sub_299E0C1CC(4, v488, v475, v409);
    v77 = sub_299E0C1CC(v76, v475, v474, v409);
    v78 = sub_299E0BFB4(v75, v476, v77, v474, v473);
    v79 = sub_299E0BFB4(v47, v483, v64, v478, v472);
    v80 = sub_299E0BFB4(v79, v472, v78, v473, &v470);
    v81 = v80;
    v23 = v470;
    if (v80 < 2)
    {
      v84 = v403;
    }

    else
    {
      v82 = v80 - 1;
      v83 = &v471;
      v84 = v403;
      do
      {
        v85 = *v83++;
        v23 = v23 + v85;
        --v82;
      }

      while (v82);
    }

    if (v23 < v84 * 4.4408921e-16 && v84 * 4.4408921e-16 > -v23)
    {
      v87 = vsubq_f64(v393, v412);
      *&v88 = *&vaddq_f64(vsubq_f64(v87, v395), vsubq_f64(v393, vaddq_f64(v412, v87)));
      v89 = vsubq_f64(v397, v411);
      v90 = vsubq_f64(v399, v413);
      v91 = vaddq_f64(vsubq_f64(v90, v395), vsubq_f64(v399, vaddq_f64(v413, v90)));
      v92 = vaddq_f64(vsubq_f64(v89, v395), vsubq_f64(v397, vaddq_f64(v411, v89)));
      v89.f64[0] = v92.f64[0];
      v89.f64[1] = v91.f64[0];
      v87.f64[1] = v92.f64[1];
      v87.f64[0] = v391 - v26 - v389 + v391 - (v26 + v391 - v26);
      v404 = v91.f64[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v89), vceqzq_f64(v87))))) & 1) != 0 || v88 != 0.0 || v91.f64[1] != 0.0)
      {
        v394 = v88;
        v396 = v91;
        v398 = v92;
        v400 = v391 - v26 - v389 + v391 - (v26 + v391 - v26);
        v93 = fabsl(v23);
        _V26.D[1] = v398.f64[1];
        v94 = v400;
        v96 = v93 * 3.33066907e-16 + v84 * 5.42341872e-31;
        v97 = v26 * v26;
        _D20 = v412.f64[0];
        v99 = v409 * v398.f64[0];
        v100 = v410 * v410;
        v101 = v26 * v396.f64[0];
        v102 = vmuld_lane_f64(v410, v398, 1);
        v103 = -(v386 - v411.f64[0] * v409) * (v405 * v400 + v412.f64[0] * v394 + v405 * v400 + v412.f64[0] * v394) + (v405 * v405 + _D20 * _D20) * (v409 * v398.f64[0] + v411.f64[0] * v404 - (vmuld_lane_f64(v413.f64[0], v398, 1) + v410 * v396.f64[0])) + -(v55 - v413.f64[0] * v405) * (v102 + v411.f64[0] * v398.f64[0] + v102 + v411.f64[0] * v398.f64[0]) + (v410 * v410 + v411.f64[0] * v411.f64[0]) * (v405 * v396.f64[0] + v413.f64[0] * v400 - (v412.f64[0] * v404 + v409 * v394));
        v104 = v409 * v409;
        v105 = v410 * v394;
        __asm { FMLA            D6, D20, V26.D[1] }

        v23 = v103 + -(v67 - v412.f64[0] * v410) * (v409 * v404 + v413.f64[0] * v396.f64[0] + v409 * v404 + v413.f64[0] * v396.f64[0]) + (v409 * v409 + v413.f64[0] * v413.f64[0]) * (_D6 - (v411.f64[0] * v400 + v405 * v398.f64[0])) + v23;
        if (v23 < v96 && v96 > -v23)
        {
          v111 = -v51;
          v112 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v396), vceqzq_f64(v398))));
          v113 = v112.i8[4];
          v114 = v112.i8[6];
          v115 = v112.u16[0];
          v392 = v112.u16[1];
          v376 = v112.i8[4] | v112.i8[6];
          v368 = v112.i8[2] | v112.i8[0] | v112.i8[4] | v112.i8[6];
          if (v112.i8[2] & 1 | v112.i8[0] & 1 | v112.i8[4] & 1 | v112.i8[6] & 1)
          {
            v116 = -(v377 + v111 * v51 - (v51 + v51) * v387 - v387 * v387);
            v117 = v116 - (v97 - v379 * v379 - (v379 + v379) * v380 - v380 * v380);
            v118 = -(v97 - v379 * v379 - (v379 + v379) * v380 - v380 * v380) - (v117 - v116) + v116 + v117 - v116 - v117;
            v119 = v377 + v117;
            v120 = v117 - (v377 + v117 - v377) + v377 + v377 + v117 - v377 - (v377 + v117);
            v468[0] = v118;
            v468[1] = v97 - (v97 + v120 - v120) + v120 + v97 + v120 - v120 - (v97 + v120);
            v468[2] = v97 + v120 - (v119 + v97 + v120 - v119) + v119 + v119 + v97 + v120 - v119 - (v119 + v97 + v120);
            v468[3] = v119 + v97 + v120;
          }

          v378 = v115 | v392;
          v370 = (v400 != 0.0 || v394 != 0.0) | v115 | v392;
          if ((v400 != 0.0 || v394 != 0.0) | (v115 | v392) & 1)
          {
            v121 = -(v411.f64[0] * v411.f64[0] + -v401 * v401 - (v401 + v401) * v408 - v408 * v408);
            v122 = v121 - (v100 - v406 * v406 - (v406 + v406) * v407 - v407 * v407);
            v123 = v411.f64[0] * v411.f64[0] + v122;
            v124 = v122 - (v123 - v411.f64[0] * v411.f64[0]) + v411.f64[0] * v411.f64[0] + v123 - v411.f64[0] * v411.f64[0] - v123;
            v467[0] = -(v100 - v406 * v406 - (v406 + v406) * v407 - v407 * v407) - (v122 - v121) + v121 + v122 - v121 - v122;
            v467[1] = v100 - (v100 + v124 - v124) + v124 + v100 + v124 - v124 - (v100 + v124);
            v467[2] = v100 + v124 - (v123 + v100 + v124 - v123) + v123 + v123 + v100 + v124 - v123 - (v123 + v100 + v124);
            v467[3] = v123 + v100 + v124;
          }

          v125 = -v384;
          v126 = v400 != 0.0 || v394 != 0.0;
          v371 = v114 | v113 | v126;
          if (v371)
          {
            v127 = -(v413.f64[0] * v413.f64[0] + v125 * v384 - (v384 + v384) * v388 - v388 * v388);
            v128 = v127 - (v104 - v381 * v381 - (v381 + v381) * v382 - v382 * v382);
            v129 = v413.f64[0] * v413.f64[0] + v128;
            v130 = v128 - (v129 - v413.f64[0] * v413.f64[0]) + v413.f64[0] * v413.f64[0] + v129 - v413.f64[0] * v413.f64[0] - v129;
            v466[0] = -(v104 - v381 * v381 - (v381 + v381) * v382 - v382 * v382) - (v128 - v127) + v127 + v128 - v127 - v128;
            v466[1] = v104 - (v104 + v130 - v130) + v130 + v104 + v130 - v130 - (v104 + v130);
            v466[2] = v104 + v130 - (v129 + v104 + v130 - v129) + v129 + v129 + v104 + v130 - v129 - (v129 + v104 + v130);
            v466[3] = v129 + v104 + v130;
          }

          v374 = v111;
          if (v394 == 0.0)
          {
            v139 = &v470;
            v138 = v469;
          }

          else
          {
            v366 = sub_299E0C1CC(4, v490, v437, v394);
            v131 = sub_299E0C1CC(v366, v437, v456, v412.f64[0] + v412.f64[0]);
            v132 = sub_299E0C1CC(4, v466, v448, v394);
            v133 = sub_299E0C1CC(v132, v448, v455, v410);
            v134 = sub_299E0C1CC(4, v467, v449, v394);
            v135 = sub_299E0C1CC(v134, v449, v454, -v409);
            v136 = sub_299E0BFB4(v131, v456, v133, v455, v453);
            v137 = sub_299E0BFB4(v135, v454, v136, v453, v451);
            v138 = &v470;
            v139 = v469;
            v140 = sub_299E0BFB4(v81, &v470, v137, v451, v469);
            v94 = v400;
            v81 = v140;
          }

          if (v94 == 0.0)
          {
            v149 = v138;
          }

          else
          {
            v367 = sub_299E0C1CC(4, v490, v436, v94);
            v141 = sub_299E0C1CC(v367, v436, v456, v405 + v405);
            v142 = sub_299E0C1CC(4, v467, v447, v400);
            v143 = v115;
            v115 = sub_299E0C1CC(v142, v447, v455, v413.f64[0]);
            v144 = sub_299E0C1CC(4, v466, v446, v400);
            v145 = sub_299E0C1CC(v144, v446, v454, -v411.f64[0]);
            v146 = v115;
            LOBYTE(v115) = v143;
            v147 = sub_299E0BFB4(v141, v456, v146, v455, v453);
            v148 = sub_299E0BFB4(v145, v454, v147, v453, v451);
            v81 = sub_299E0BFB4(v81, v139, v148, v451, v138);
            v149 = v139;
            v139 = v138;
          }

          v150 = v398.f64[1];
          v372 = v113;
          if (v113)
          {
            v363 = sub_299E0C1CC(4, v489, v435, v398.f64[0]);
            v151 = sub_299E0C1CC(v363, v435, v456, v411.f64[0] + v411.f64[0]);
            v152 = sub_299E0C1CC(4, v468, v445, v398.f64[0]);
            v153 = sub_299E0C1CC(v152, v445, v455, v409);
            v154 = sub_299E0C1CC(4, v466, v444, v398.f64[0]);
            v155 = sub_299E0C1CC(v154, v444, v454, -v405);
            v156 = sub_299E0BFB4(v151, v456, v153, v455, v453);
            v157 = sub_299E0BFB4(v155, v454, v156, v453, v451);
            v158 = sub_299E0BFB4(v81, v139, v157, v451, v149);
            v150 = v398.f64[1];
            v81 = v158;
            v159 = v139;
          }

          else
          {
            v159 = v149;
            v149 = v139;
          }

          v160 = v150;
          v390 = v114;
          if (v114)
          {
            v361 = sub_299E0C1CC(4, v489, v434, v150);
            v161 = sub_299E0C1CC(v361, v434, v456, v410 + v410);
            v162 = sub_299E0C1CC(4, v466, v442, v160);
            v163 = sub_299E0C1CC(v162, v442, v455, v412.f64[0]);
            v164 = sub_299E0C1CC(4, v468, v443, v160);
            v165 = sub_299E0C1CC(v164, v443, v454, -v413.f64[0]);
            v166 = sub_299E0BFB4(v161, v456, v163, v455, v453);
            v167 = sub_299E0BFB4(v165, v454, v166, v453, v451);
            v81 = sub_299E0BFB4(v81, v149, v167, v451, v159);
            v168 = v149;
          }

          else
          {
            v168 = v159;
            v159 = v149;
          }

          if (v115)
          {
            v364 = sub_299E0C1CC(4, v488, v433, v396.f64[0]);
            v169 = sub_299E0C1CC(v364, v433, v456, v413.f64[0] + v413.f64[0]);
            v170 = sub_299E0C1CC(4, v467, v440, v396.f64[0]);
            v171 = sub_299E0C1CC(v170, v440, v455, v405);
            v172 = sub_299E0C1CC(4, v468, v441, v396.f64[0]);
            v173 = sub_299E0C1CC(v172, v441, v454, -v410);
            v174 = sub_299E0BFB4(v169, v456, v171, v455, v453);
            v175 = sub_299E0BFB4(v173, v454, v174, v453, v451);
            v81 = sub_299E0BFB4(v81, v159, v175, v451, v168);
            v176 = v159;
          }

          else
          {
            v176 = v168;
            v168 = v159;
          }

          v385 = -v408;
          v402 = -v388;
          v373 = -v387;
          v375 = -v53;
          if (v392)
          {
            v362 = sub_299E0C1CC(4, v488, v432, v404);
            v177 = sub_299E0C1CC(v362, v432, v456, v409 + v409);
            v178 = sub_299E0C1CC(4, v468, v439, v404);
            v179 = sub_299E0C1CC(v178, v439, v455, v411.f64[0]);
            v180 = sub_299E0C1CC(4, v467, v438, v404);
            v181 = sub_299E0C1CC(v180, v438, v454, -v412.f64[0]);
            v182 = sub_299E0BFB4(v177, v456, v179, v455, v453);
            v183 = sub_299E0BFB4(v181, v454, v182, v453, v451);
            v81 = sub_299E0BFB4(v81, v168, v183, v451, v176);
            v184 = v168;
            v185 = v168;
            v187 = v396.f64[0];
            v186 = v398.f64[0];
            if (!v126)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (!v126)
            {
              v185 = v176;
              v176 = v168;
              v187 = v396.f64[0];
              v186 = v398.f64[0];
              goto LABEL_69;
            }

            if ((v368 & 1) == 0)
            {
              v383 = v125;
              v369 = v101;
              v418[0] = 0.0;
              v209 = 1;
              v213 = 0.0;
              v208 = 1;
              goto LABEL_56;
            }

            v184 = v176;
            v176 = v168;
            v187 = v396.f64[0];
            v186 = v398.f64[0];
          }

          v369 = v101;
          v168 = v176;
          v188 = v125;
          v189 = v186 * 134217728.0 - (v186 * 134217728.0 - v186);
          v190 = v186 - v189;
          v191 = -(v99 - v189 * v381 - (v186 - v189) * v381 - v189 * v382 - (v186 - v189) * v382);
          v192 = v160;
          v193 = v404 * 134217728.0 - (v404 * 134217728.0 - v404);
          v194 = v191 - (v411.f64[0] * v404 + v375 * v193 + v385 * v193 + v375 * (v404 - v193) - v408 * (v404 - v193));
          v195 = -(v411.f64[0] * v404 + v375 * v193 + v385 * v193 + v375 * (v404 - v193) - v408 * (v404 - v193)) - (v194 - v191) + v191 - (v194 - (v194 - v191));
          v196 = v99 + v194;
          v197 = v194 - (v99 + v194 - v99) + v99 - (v99 + v194 - (v99 + v194 - v99));
          v198 = v411.f64[0] * v404 + v197;
          v462 = v195;
          v463 = v411.f64[0] * v404 - (v198 - v197) + v197 - (v198 - (v198 - v197));
          v464 = v198 - (v196 + v198 - v196) + v196 - (v196 + v198 - (v196 + v198 - v196));
          v465 = v196 + v198;
          v199 = -(v410 * v187);
          v200 = v187 * 134217728.0 - (v187 * 134217728.0 - v187);
          v201 = v187 - v200;
          v202 = -(v199 - v200 * (v410 * -134217728.0 - (v410 + v410 * -134217728.0)) - (v187 - v200) * (v410 * -134217728.0 - (v410 + v410 * -134217728.0)) - v200 * (-v410 - (v410 * -134217728.0 - (v410 + v410 * -134217728.0))) - (v187 - v200) * (-v410 - (v410 * -134217728.0 - (v410 + v410 * -134217728.0))));
          v383 = v188;
          v203 = v202 - (v188 * (v192 * -134217728.0 - (v192 + v192 * -134217728.0)) - v192 * v413.f64[0] + v402 * (v192 * -134217728.0 - (v192 + v192 * -134217728.0)) + v188 * (-v192 - (v192 * -134217728.0 - (v192 + v192 * -134217728.0))) - v388 * (-v192 - (v192 * -134217728.0 - (v192 + v192 * -134217728.0))));
          v204 = -(v188 * (v192 * -134217728.0 - (v192 + v192 * -134217728.0)) - v192 * v413.f64[0] + v402 * (v192 * -134217728.0 - (v192 + v192 * -134217728.0)) + v188 * (-v192 - (v192 * -134217728.0 - (v192 + v192 * -134217728.0))) - v388 * (-v192 - (v192 * -134217728.0 - (v192 + v192 * -134217728.0)))) - (v203 - v202) + v202 - (v203 - (v203 - v202));
          v205 = v203 - v410 * v187;
          v206 = v203 - (v205 - v199) + v199 - (v205 - (v205 - v199));
          v207 = v206 - v160 * v413.f64[0];
          v458 = v204;
          v459 = -(v160 * v413.f64[0]) - (v207 - v206) + v206 - (v207 - (v207 - v206));
          v460 = v207 - (v205 + v207 - v205) + v205 - (v205 + v207 - (v205 + v207 - v205));
          v461 = v205 + v207;
          v208 = 4;
          v209 = sub_299E0BFB4(4, &v462, 4, &v458, v418);
          v210 = -(v398.f64[0] * v404 - v189 * v193 - v190 * v193 - v189 * (v404 - v193) - v190 * (v404 - v193));
          v211 = -(v192 * v396.f64[0] - v200 * (v192 * 134217728.0 - (v192 * 134217728.0 - v192)) - v201 * (v192 * 134217728.0 - (v192 * 134217728.0 - v192)) - v200 * (v192 - (v192 * 134217728.0 - (v192 * 134217728.0 - v192))) - v201 * (v192 - (v192 * 134217728.0 - (v192 * 134217728.0 - v192))));
          v212 = v210 - v211;
          v213 = v210 - (v210 - v211) - v211 + v210 - (v210 - v211 + v210 - (v210 - v211));
          v214 = v398.f64[0] * v404 + v210 - v211;
          v215 = v212 - (v398.f64[0] * v404 + v212 - v398.f64[0] * v404) + v398.f64[0] * v404 - (v398.f64[0] * v404 + v212 - (v398.f64[0] * v404 + v212 - v398.f64[0] * v404));
          v216 = v215 - v160 * v396.f64[0];
          v415[1] = v215 - v216 - v160 * v396.f64[0] + v215 - (v216 + v215 - v216);
          v415[2] = v216 - (v214 + v216 - v214) + v214 - (v214 + v216 - (v214 + v216 - v214));
          v415[3] = v214 + v216;
          v176 = v184;
LABEL_56:
          v415[0] = v213;
          if (v394 == 0.0)
          {
            v185 = v176;
            v105 = v410 * v394;
            v101 = v369;
          }

          else
          {
            v217 = sub_299E0C1CC(v366, v437, v456, v394);
            v218 = sub_299E0C1CC(v209, v418, v431, v394);
            v219 = sub_299E0C1CC(v218, v431, v453, v412.f64[0] + v412.f64[0]);
            v220 = sub_299E0BFB4(v217, v456, v219, v453, v451);
            v221 = sub_299E0BFB4(v81, v168, v220, v451, v176);
            v105 = v410 * v394;
            v101 = v369;
            if (v390)
            {
              v222 = sub_299E0C1CC(4, v466, v457, v394);
              v223 = sub_299E0C1CC(v222, v457, v456, v160);
              v221 = sub_299E0BFB4(v221, v176, v223, v456, v168);
              v185 = v176;
            }

            else
            {
              v185 = v168;
              v168 = v176;
            }

            v224 = v115;
            if (v392)
            {
              v225 = sub_299E0C1CC(4, v467, v457, -v394);
              v226 = sub_299E0C1CC(v225, v457, v456, v404);
              v227 = sub_299E0BFB4(v221, v168, v226, v456, v185);
              v228 = v394;
              v221 = v227;
              v229 = v168;
            }

            else
            {
              v229 = v185;
              v185 = v168;
              v168 = v229;
              v228 = v394;
            }

            v230 = sub_299E0C1CC(v218, v431, v453, v228);
            v231 = sub_299E0C1CC(v208, v415, v425, v394);
            v115 = sub_299E0C1CC(v231, v425, v456, v412.f64[0] + v412.f64[0]);
            v232 = sub_299E0C1CC(v231, v425, v455, v394);
            v233 = sub_299E0BFB4(v115, v456, v232, v455, v452);
            v234 = sub_299E0BFB4(v230, v453, v233, v452, v450);
            v81 = sub_299E0BFB4(v221, v185, v234, v450, v229);
            LOBYTE(v115) = v224;
          }

          if (v400 != 0.0)
          {
            v235 = sub_299E0C1CC(v367, v436, v456, v400);
            v236 = sub_299E0C1CC(v209, v418, v430, v400);
            v237 = sub_299E0C1CC(v236, v430, v453, v405 + v405);
            v238 = sub_299E0BFB4(v235, v456, v237, v453, v451);
            v239 = sub_299E0BFB4(v81, v168, v238, v451, v185);
            v240 = sub_299E0C1CC(v236, v430, v453, v400);
            v241 = sub_299E0C1CC(v208, v415, v424, v400);
            v242 = sub_299E0C1CC(v241, v424, v456, v405 + v405);
            v243 = sub_299E0C1CC(v241, v424, v455, v400);
            v244 = sub_299E0BFB4(v242, v456, v243, v455, v452);
            v245 = sub_299E0BFB4(v240, v453, v244, v452, v450);
            v246 = sub_299E0BFB4(v239, v185, v245, v450, v168);
            v247 = v400;
            v81 = v246;
            v187 = v396.f64[0];
            if ((v376 & 1) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_72;
          }

          v176 = v168;
          v187 = v396.f64[0];
          v186 = v398.f64[0];
          v125 = v383;
LABEL_69:
          v247 = v400;
          if ((v376 & 1) == 0)
          {
            v168 = v176;
            goto LABEL_88;
          }

          if ((v370 & 1) == 0)
          {
            v365 = v160;
            v417[0] = 0.0;
            v268 = 1;
            v272 = 0.0;
            v267 = 1;
            goto LABEL_75;
          }

          v383 = v125;
          v168 = v176;
LABEL_72:
          v365 = v160;
          v248 = v187 * 134217728.0 - (v187 * 134217728.0 - v187);
          v249 = v187 - v248;
          v250 = -(v101 - v248 * v379 - (v187 - v248) * v379 - v248 * v380 - (v187 - v248) * v380);
          v251 = v413.f64[0] * v247;
          v252 = v247 * 134217728.0 - (v247 * 134217728.0 - v247);
          v253 = v247 - v252;
          v254 = v250 - (v413.f64[0] * v247 + v383 * v252 + v402 * v252 + v383 * (v247 - v252) - v388 * (v247 - v252));
          v255 = -(v413.f64[0] * v247 + v383 * v252 + v402 * v252 + v383 * (v247 - v252) - v388 * (v247 - v252)) - (v254 - v250) + v250 - (v254 - (v254 - v250));
          v256 = v101 + v254;
          v257 = v254 - (v101 + v254 - v101) + v101 - (v101 + v254 - (v101 + v254 - v101));
          v258 = v413.f64[0] * v247 + v257;
          v462 = v255;
          v463 = v251 - (v258 - v257) + v257 - (v258 - (v258 - v257));
          v464 = v258 - (v256 + v258 - v256) + v256 - (v256 + v258 - (v256 + v258 - v256));
          v465 = v256 + v258;
          v259 = -(v409 * v394);
          v260 = v394 * 134217728.0 - (v394 * 134217728.0 - v394);
          v261 = -(v259 - v260 * (v409 * -134217728.0 - (v409 + v409 * -134217728.0)) - (v394 - v260) * (v409 * -134217728.0 - (v409 + v409 * -134217728.0)) - v260 * (-v409 - (v409 * -134217728.0 - (v409 + v409 * -134217728.0))) - (v394 - v260) * (-v409 - (v409 * -134217728.0 - (v409 + v409 * -134217728.0))));
          v262 = v261 - (v374 * (v404 * -134217728.0 - (v404 + v404 * -134217728.0)) - v404 * v412.f64[0] + v373 * (v404 * -134217728.0 - (v404 + v404 * -134217728.0)) + v374 * (-v404 - (v404 * -134217728.0 - (v404 + v404 * -134217728.0))) - v387 * (-v404 - (v404 * -134217728.0 - (v404 + v404 * -134217728.0))));
          v263 = -(v374 * (v404 * -134217728.0 - (v404 + v404 * -134217728.0)) - v404 * v412.f64[0] + v373 * (v404 * -134217728.0 - (v404 + v404 * -134217728.0)) + v374 * (-v404 - (v404 * -134217728.0 - (v404 + v404 * -134217728.0))) - v387 * (-v404 - (v404 * -134217728.0 - (v404 + v404 * -134217728.0)))) - (v262 - v261) + v261 - (v262 - (v262 - v261));
          v264 = v262 - v409 * v394;
          v265 = v262 - (v264 - v259) + v259 - (v264 - (v264 - v259));
          v266 = v265 - v404 * v412.f64[0];
          v458 = v263;
          v459 = -(v404 * v412.f64[0]) - (v266 - v265) + v265 - (v266 - (v266 - v265));
          v460 = v266 - (v264 + v266 - v264) + v264 - (v264 + v266 - (v264 + v266 - v264));
          v461 = v264 + v266;
          v267 = 4;
          v268 = sub_299E0BFB4(4, &v462, 4, &v458, v417);
          v269 = -(v400 * v396.f64[0] - v248 * v252 - v249 * v252 - v248 * v253 - v249 * v253);
          v270 = -(v394 * v404 - v260 * (v404 * 134217728.0 - (v404 * 134217728.0 - v404)) - (v394 - v260) * (v404 * 134217728.0 - (v404 * 134217728.0 - v404)) - v260 * (v404 - (v404 * 134217728.0 - (v404 * 134217728.0 - v404))) - (v394 - v260) * (v404 - (v404 * 134217728.0 - (v404 * 134217728.0 - v404))));
          v271 = v269 - v270;
          v272 = v269 - (v269 - v270) - v270 + v269 - (v269 - v270 + v269 - (v269 - v270));
          v273 = v400 * v396.f64[0] + v269 - v270;
          v274 = v271 - (v273 - v400 * v396.f64[0]) + v400 * v396.f64[0] - (v273 - (v273 - v400 * v396.f64[0]));
          v275 = v274 - v394 * v404;
          v414[1] = v274 - v275 - v394 * v404 + v274 - (v275 + v274 - v275);
          v414[2] = v275 - (v273 + v275 - v273) + v273 - (v273 + v275 - (v273 + v275 - v273));
          v414[3] = v273 + v275;
          v176 = v168;
          v186 = v398.f64[0];
LABEL_75:
          v414[0] = v272;
          if (v372)
          {
            v276 = v115;
            v277 = sub_299E0C1CC(v363, v435, v456, v186);
            v278 = sub_299E0C1CC(v268, v417, v429, v398.f64[0]);
            v279 = sub_299E0C1CC(v278, v429, v453, v411.f64[0] + v411.f64[0]);
            v280 = sub_299E0BFB4(v277, v456, v279, v453, v451);
            v281 = sub_299E0BFB4(v81, v176, v280, v451, v185);
            v105 = v410 * v394;
            v160 = v365;
            if (v392)
            {
              v282 = sub_299E0C1CC(4, v468, v457, v398.f64[0]);
              v283 = sub_299E0C1CC(v282, v457, v456, v404);
              v281 = sub_299E0BFB4(v281, v185, v283, v456, v176);
              v284 = v185;
            }

            else
            {
              v284 = v176;
              v176 = v185;
            }

            if (v400 == 0.0)
            {
              v289 = v284;
              v284 = v176;
              v176 = v289;
              v288 = v398.f64[0];
            }

            else
            {
              v285 = sub_299E0C1CC(4, v466, v457, -v398.f64[0]);
              v286 = sub_299E0C1CC(v285, v457, v456, v400);
              v287 = sub_299E0BFB4(v281, v176, v286, v456, v284);
              v288 = v398.f64[0];
              v281 = v287;
              v289 = v176;
            }

            v290 = sub_299E0C1CC(v278, v429, v453, v288);
            v115 = sub_299E0C1CC(v267, v414, v423, v398.f64[0]);
            v291 = sub_299E0C1CC(v115, v423, v456, v411.f64[0] + v411.f64[0]);
            v292 = sub_299E0C1CC(v115, v423, v455, v398.f64[0]);
            v293 = sub_299E0BFB4(v291, v456, v292, v455, v452);
            v294 = sub_299E0BFB4(v290, v453, v293, v452, v450);
            v81 = sub_299E0BFB4(v281, v284, v294, v450, v289);
            v185 = v284;
            LOBYTE(v115) = v276;
          }

          else
          {
            v105 = v410 * v394;
            v160 = v365;
          }

          if (v390)
          {
            v295 = sub_299E0C1CC(v361, v434, v456, v160);
            v296 = sub_299E0C1CC(v268, v417, v428, v160);
            v297 = sub_299E0C1CC(v296, v428, v453, v410 + v410);
            v298 = sub_299E0BFB4(v295, v456, v297, v453, v451);
            v299 = sub_299E0BFB4(v81, v176, v298, v451, v185);
            v300 = sub_299E0C1CC(v296, v428, v453, v160);
            v301 = sub_299E0C1CC(v267, v414, v422, v160);
            v302 = sub_299E0C1CC(v301, v422, v456, v410 + v410);
            v303 = sub_299E0C1CC(v301, v422, v455, v160);
            v304 = sub_299E0BFB4(v302, v456, v303, v455, v452);
            v305 = sub_299E0BFB4(v300, v453, v304, v452, v450);
            v81 = sub_299E0BFB4(v299, v185, v305, v450, v176);
            if ((v378 & 1) == 0)
            {
              return v176[v81 - 1];
            }

            goto LABEL_91;
          }

          v168 = v176;
          v187 = v396.f64[0];
LABEL_88:
          if ((v378 & 1) == 0)
          {
            v176 = v168;
            return v176[v81 - 1];
          }

          if ((v371 & 1) == 0)
          {
            v419[0] = 0.0;
            v323 = 1;
            v327 = 0.0;
            v322 = 1;
            goto LABEL_94;
          }

          v176 = v168;
LABEL_91:
          v306 = v394 * 134217728.0 - (v394 * 134217728.0 - v394);
          v307 = -(v105 - v306 * v406 - (v394 - v306) * v406 - v306 * v407 - (v394 - v306) * v407);
          v308 = v160 * 134217728.0 - (v160 * 134217728.0 - v160);
          v309 = v307 - (v412.f64[0] * v160 + v374 * v308 + v373 * v308 + v374 * (v160 - v308) - v387 * (v160 - v308));
          v310 = -(v412.f64[0] * v160 + v374 * v308 + v373 * v308 + v374 * (v160 - v308) - v387 * (v160 - v308)) - (v309 - v307) + v307 - (v309 - (v309 - v307));
          v311 = v105 + v309;
          v312 = v309 - (v105 + v309 - v105) + v105 - (v105 + v309 - (v105 + v309 - v105));
          v313 = v412.f64[0] * v160 + v312;
          v462 = v310;
          v463 = v412.f64[0] * v160 - (v313 - v312) + v312 - (v313 - (v313 - v312));
          v464 = v313 - (v311 + v313 - v311) + v311 - (v311 + v313 - (v311 + v313 - v311));
          v465 = v311 + v313;
          v314 = -(v405 * v398.f64[0]);
          v315 = v398.f64[0] * 134217728.0 - (v398.f64[0] * 134217728.0 - v398.f64[0]);
          v316 = -(v314 - v315 * (v405 * -134217728.0 - (v405 + v405 * -134217728.0)) - (v398.f64[0] - v315) * (v405 * -134217728.0 - (v405 + v405 * -134217728.0)) - v315 * (-v405 - (v405 * -134217728.0 - (v405 + v405 * -134217728.0))) - (v398.f64[0] - v315) * (-v405 - (v405 * -134217728.0 - (v405 + v405 * -134217728.0))));
          v317 = v316 - (v375 * (v400 * -134217728.0 - (v400 + v400 * -134217728.0)) - v400 * v411.f64[0] + v385 * (v400 * -134217728.0 - (v400 + v400 * -134217728.0)) + v375 * (-v400 - (v400 * -134217728.0 - (v400 + v400 * -134217728.0))) - v408 * (-v400 - (v400 * -134217728.0 - (v400 + v400 * -134217728.0))));
          v318 = -(v375 * (v400 * -134217728.0 - (v400 + v400 * -134217728.0)) - v400 * v411.f64[0] + v385 * (v400 * -134217728.0 - (v400 + v400 * -134217728.0)) + v375 * (-v400 - (v400 * -134217728.0 - (v400 + v400 * -134217728.0))) - v408 * (-v400 - (v400 * -134217728.0 - (v400 + v400 * -134217728.0)))) - (v317 - v316) + v316 - (v317 - (v317 - v316));
          v319 = v317 - v405 * v398.f64[0];
          v320 = v317 - (v319 - v314) + v314 - (v319 - (v319 - v314));
          v321 = v320 - v400 * v411.f64[0];
          v458 = v318;
          v459 = -(v400 * v411.f64[0]) - (v321 - v320) + v320 - (v321 - (v321 - v320));
          v460 = v321 - (v319 + v321 - v319) + v319 - (v319 + v321 - (v319 + v321 - v319));
          v461 = v319 + v321;
          v322 = 4;
          v323 = sub_299E0BFB4(4, &v462, 4, &v458, v419);
          v324 = -(v394 * v160 - v306 * v308 - (v394 - v306) * v308 - v306 * (v160 - v308) - (v394 - v306) * (v160 - v308));
          v325 = -(v400 * v398.f64[0] - v315 * (v400 * 134217728.0 - (v400 * 134217728.0 - v400)) - (v398.f64[0] - v315) * (v400 * 134217728.0 - (v400 * 134217728.0 - v400)) - v315 * (v400 - (v400 * 134217728.0 - (v400 * 134217728.0 - v400))) - (v398.f64[0] - v315) * (v400 - (v400 * 134217728.0 - (v400 * 134217728.0 - v400))));
          v326 = v324 - v325;
          v327 = v324 - (v324 - v325) - v325 + v324 - (v324 - v325 + v324 - (v324 - v325));
          v328 = v394 * v160 + v326;
          v329 = v326 - (v328 - v394 * v160) + v394 * v160 - (v328 - (v328 - v394 * v160));
          v330 = v329 - v400 * v398.f64[0];
          v416[1] = v329 - v330 - v400 * v398.f64[0] + v329 - (v330 + v329 - v330);
          v416[2] = v330 - (v328 + v330 - v328) + v328 - (v328 + v330 - (v328 + v330 - v328));
          v416[3] = v328 + v330;
          v168 = v176;
          v187 = v396.f64[0];
LABEL_94:
          v416[0] = v327;
          if (v115)
          {
            v331 = sub_299E0C1CC(v364, v433, v456, v187);
            v332 = sub_299E0C1CC(v323, v419, v427, v396.f64[0]);
            v333 = sub_299E0C1CC(v332, v427, v453, v413.f64[0] + v413.f64[0]);
            v334 = sub_299E0BFB4(v331, v456, v333, v453, v451);
            v335 = sub_299E0BFB4(v81, v168, v334, v451, v185);
            if (v400 == 0.0)
            {
              v338 = v168;
              v168 = v185;
            }

            else
            {
              v336 = sub_299E0C1CC(4, v467, v457, v396.f64[0]);
              v337 = sub_299E0C1CC(v336, v457, v456, v400);
              v335 = sub_299E0BFB4(v335, v185, v337, v456, v168);
              v338 = v185;
            }

            if (v390)
            {
              v339 = sub_299E0C1CC(4, v468, v457, -v396.f64[0]);
              v340 = sub_299E0C1CC(v339, v457, v456, v160);
              v341 = sub_299E0BFB4(v335, v168, v340, v456, v338);
              v342 = v396.f64[0];
              v335 = v341;
              v176 = v168;
            }

            else
            {
              v176 = v338;
              v338 = v168;
              v342 = v396.f64[0];
            }

            v343 = sub_299E0C1CC(v332, v427, v453, v342);
            v344 = sub_299E0C1CC(v322, v416, v421, v396.f64[0]);
            v345 = sub_299E0C1CC(v344, v421, v456, v413.f64[0] + v413.f64[0]);
            v346 = sub_299E0C1CC(v344, v421, v455, v396.f64[0]);
            v347 = sub_299E0BFB4(v345, v456, v346, v455, v452);
            v348 = sub_299E0BFB4(v343, v453, v347, v452, v450);
            v81 = sub_299E0BFB4(v335, v338, v348, v450, v176);
            v185 = v338;
          }

          else
          {
            v176 = v168;
          }

          if (v392)
          {
            v349 = sub_299E0C1CC(v362, v432, v456, v404);
            v350 = sub_299E0C1CC(v323, v419, v426, v404);
            v351 = sub_299E0C1CC(v350, v426, v453, v409 + v409);
            v352 = sub_299E0BFB4(v349, v456, v351, v453, v451);
            v353 = sub_299E0BFB4(v81, v176, v352, v451, v185);
            v354 = sub_299E0C1CC(v350, v426, v453, v404);
            v355 = sub_299E0C1CC(v322, v416, v420, v404);
            v356 = sub_299E0C1CC(v355, v420, v456, v409 + v409);
            v357 = sub_299E0C1CC(v355, v420, v455, v404);
            v358 = sub_299E0BFB4(v356, v456, v357, v455, v452);
            v359 = sub_299E0BFB4(v354, v453, v358, v452, v450);
            v81 = sub_299E0BFB4(v353, v185, v359, v450, v176);
          }

          return v176[v81 - 1];
        }
      }
    }
  }

  return v23;
}

double _simd_insphere_pd3(const double *a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  v6 = *(v2 + 96);
  v7 = *(v2 + 128);
  v8 = vsubq_f64(v4, *v2);
  v9 = vsubq_f64(*(v2 + 48), v3);
  v9.f64[1] = vmulq_f64(v9, v9).f64[0] + vaddvq_f64(vmulq_f64(v8, v8));
  v10 = vsubq_f64(v5, *v2);
  v11 = vsubq_f64(*(v2 + 80), v3);
  v11.f64[1] = vmulq_f64(v11, v11).f64[0] + vaddvq_f64(vmulq_f64(v10, v10));
  v12 = vsubq_f64(v6, *v2);
  v13 = vsubq_f64(*(v2 + 112), v3);
  v13.f64[1] = vmulq_f64(v13, v13).f64[0] + vaddvq_f64(vmulq_f64(v12, v12));
  v14 = vsubq_f64(v7, *v2);
  v15 = vsubq_f64(*(v2 + 144), v3);
  v15.f64[1] = vmulq_f64(v15, v15).f64[0] + vaddvq_f64(vmulq_f64(v14, v14));
  v16 = vextq_s8(v10, v11, 8uLL);
  v17 = vextq_s8(v11, v10, 8uLL);
  v18 = vextq_s8(v12, v13, 8uLL);
  v19 = vextq_s8(v13, v12, 8uLL);
  v20 = vextq_s8(v14, v15, 8uLL);
  v21 = vextq_s8(v15, v14, 8uLL);
  v22 = vmulq_f64(v19, v15);
  v23 = vmulq_f64(v18, v14);
  v24 = vmulq_f64(v18, v21);
  v25 = vmulq_f64(v19, v20);
  v26 = vmulq_f64(v13, v20);
  v27 = vmulq_f64(v12, v21);
  v28 = vmulq_f64(v9, vmlaq_f64(vmlaq_f64(vmulq_f64(v10, vmlaq_f64(vnegq_f64(v25), v21, v18)), vmlaq_f64(vnegq_f64(v23), v20, v12), v17), vmlaq_f64(vnegq_f64(v27), v14, v19), v16));
  v29 = vmulq_f64(v8, vmlaq_f64(vmlaq_f64(vmulq_f64(v11, vmlaq_f64(vnegq_f64(v24), v20, v19)), vmlaq_f64(vnegq_f64(v22), v21, v13), v16), vmlaq_f64(vnegq_f64(v26), v15, v18), v17));
  v30 = vaddvq_f64(vsubq_f64(vzip1q_s64(v29, v28), vzip2q_s64(v29, v28)));
  v31 = vabsq_f64(v17);
  v32 = vabsq_f64(v16);
  v33 = vabdq_f64(v5, *v2);
  v34 = vaddq_f64(vabsq_f64(v25), vabsq_f64(v24));
  v35 = vaddvq_f64(vaddq_f64(vmulq_f64(vabdq_f64(v4, *v2), vmlaq_f64(vmlaq_f64(vmulq_f64(vabsq_f64(v11), v34), vaddq_f64(vabsq_f64(vmulq_f64(v13, v21)), vabsq_f64(v22)), v32), vaddq_f64(vabsq_f64(vmulq_f64(v18, v15)), vabsq_f64(v26)), v31)), vmulq_f64(vabsq_f64(v9), vmlaq_f64(vmlaq_f64(vmulq_f64(v33, v34), vaddq_f64(vabsq_f64(vmulq_f64(v12, v20)), vabsq_f64(v23)), v31), vaddq_f64(vabsq_f64(vmulq_f64(v19, v14)), vabsq_f64(v27)), v32))));
  if (v30 <= v35 * 1.77635684e-15 && v35 * 1.77635684e-15 >= -v30)
  {
    v37 = v2;
    v465 = v35;
    v38 = *v2;
    v39.f64[0] = *(v2 + 48);
    v1.i64[0] = *(v2 + 16);
    v4.f64[1] = *(v2 + 40);
    v39.f64[1] = *(v2 + 64);
    v6.f64[1] = *(v2 + 104);
    *&v40.f64[0] = v1.i64[0];
    v40.f64[1] = *v2;
    v450 = *(v2 + 72);
    v452 = v39;
    v446 = vextq_s8(*v2, v1, 8uLL);
    v447 = v40;
    v41 = vsubq_f64(v39, v40);
    v458 = v6;
    v460 = v4;
    v91 = vsubq_f64(v6, *v2);
    v42 = vsubq_f64(v450, v446);
    _Q8 = vsubq_f64(v4, *v2);
    v40.f64[0] = vmuld_n_f64(_Q8.f64[0], v42.f64[0]);
    v44 = 134217728.0 * _Q8.f64[0] - (134217728.0 * _Q8.f64[0] - _Q8.f64[0]);
    v45 = 134217728.0 * v42.f64[0] - (134217728.0 * v42.f64[0] - v42.f64[0]);
    v46 = v42.f64[0] - v45;
    v103 = v42;
    v47 = -(v40.f64[0] - v44 * v45 - (_Q8.f64[0] - v44) * v45 - v44 * (v42.f64[0] - v45) - (_Q8.f64[0] - v44) * (v42.f64[0] - v45));
    v48 = v41.f64[1];
    v49 = vmuld_lane_f64(v41.f64[1], _Q8, 1);
    v42.f64[0] = vmuld_lane_f64(134217728.0, v41, 1);
    v50 = v41;
    v477 = v41;
    v51 = v42.f64[0] - (v42.f64[0] - v41.f64[1]);
    v42.f64[0] = vmuld_lane_f64(134217728.0, _Q8, 1);
    v467 = _Q8.f64[1];
    v41.f64[0] = v42.f64[0] - (v42.f64[0] - _Q8.f64[1]);
    v42.f64[0] = _Q8.f64[1] - v41.f64[0];
    v52 = -(v49 - v51 * v41.f64[0] - (v41.f64[1] - v51) * v41.f64[0] - v51 * (_Q8.f64[1] - v41.f64[0]) - (v41.f64[1] - v51) * (_Q8.f64[1] - v41.f64[0]));
    v53 = v47 - v52;
    v54 = v47 - (v47 - v52) - v52 + v47 - (v47 - v52 + v47 - (v47 - v52));
    v55 = v40.f64[0] + v53;
    v40.f64[0] = v53 - (v40.f64[0] + v53 - v40.f64[0]) + v40.f64[0] - (v40.f64[0] + v53 - (v40.f64[0] + v53 - v40.f64[0]));
    v503[0] = v54;
    v503[1] = v40.f64[0] - (v40.f64[0] - v49) - v49 + v40.f64[0] - (v40.f64[0] - v49 + v40.f64[0] - (v40.f64[0] - v49));
    v56 = v55 + v40.f64[0] - v49;
    v463 = v40.f64[0] - v49 - (v56 - v55) + v55 - (v56 - (v56 - v55));
    v57 = vmuld_lane_f64(v41.f64[1], v91, 1);
    v58 = vmuld_lane_f64(134217728.0, v91, 1);
    v59 = v58 - (v58 - v91.f64[1]);
    v60 = -(v57 - v51 * v59 - (v41.f64[1] - v51) * v59 - v51 * (v91.f64[1] - v59) - (v41.f64[1] - v51) * (v91.f64[1] - v59));
    v61 = vmuld_n_f64(v91.f64[0], v103.f64[0]);
    v62 = 134217728.0 * v91.f64[0] - (134217728.0 * v91.f64[0] - v91.f64[0]);
    v63 = v91.f64[0] - v62;
    v64 = -(v61 - v62 * v45 - (v91.f64[0] - v62) * v45 - v62 * v46 - (v91.f64[0] - v62) * v46);
    v65 = v60 - v64;
    v66 = v60 - (v60 - v64) - v64 + v60 - (v60 - v64 + v60 - (v60 - v64));
    v67 = v57 + v65;
    v68 = v65 - (v57 + v65 - v57) + v57 - (v57 + v65 - (v57 + v65 - v57));
    v502[0] = v66;
    v502[1] = v68 - (v68 - v61) - v61 + v68 - (v68 - v61 + v68 - (v68 - v61));
    v69 = v67 + v68 - v61;
    v502[2] = v68 - v61 - (v69 - v67) + v67 - (v69 - (v69 - v67));
    v40.f64[0] = *(v2 + 144);
    v443 = *(v2 + 136);
    v444 = v38.f64[1];
    v70 = (v443 - v38.f64[1]) * 134217728.0 - ((v443 - v38.f64[1]) * 134217728.0 - (v443 - v38.f64[1]));
    v454 = v38;
    v456 = v7.f64[0];
    _D12 = v7.f64[0] - v38.f64[0];
    v72 = _D12 * 134217728.0 - (_D12 * 134217728.0 - _D12);
    v73 = (v443 - v38.f64[1]) * v91.f64[0];
    v74 = v73 - v62 * v70 - (v91.f64[0] - v62) * v70;
    v75 = (v443 - v38.f64[1]) * _Q8.f64[0];
    v76 = v75 - v44 * v70 - (_Q8.f64[0] - v44) * v70;
    v77 = vmuld_lane_f64(v443 - v38.f64[1], v50, 1);
    v38.f64[0] = v77 - v51 * v70 - (v41.f64[1] - v51) * v70;
    v78 = v443 - v38.f64[1] - v70;
    v79 = -(v38.f64[0] - v51 * v78 - (v41.f64[1] - v51) * v78);
    v80 = -(v74 - v62 * v78 - (v91.f64[0] - v62) * v78);
    v81 = -(v76 - v44 * v78 - (_Q8.f64[0] - v44) * v78);
    v38.f64[0] = vmuld_lane_f64(_D12, v91, 1);
    v82 = vmuld_lane_f64(_Q8.f64[0], v91, 1);
    v474 = v91;
    v83 = -(v82 - v44 * v59 - (_Q8.f64[0] - v44) * v59 - v44 * (v91.f64[1] - v59) - (_Q8.f64[0] - v44) * (v91.f64[1] - v59));
    v84 = -(v38.f64[0] - v72 * v59 - (_D12 - v72) * v59 - v72 * (v91.f64[1] - v59) - (_D12 - v72) * (v91.f64[1] - v59));
    v85 = v73 + v80 - v84;
    v86 = v80 - v84 - (v85 - v73) + v73 - (v85 - (v85 - v73));
    v501[0] = v80 - (v80 - v84) - v84 + v80 - (v80 - v84 + v80 - (v80 - v84));
    v501[1] = v86 - (v86 - v38.f64[0]) - v38.f64[0] + v86 - (v86 - v38.f64[0] + v86 - (v86 - v38.f64[0]));
    v87 = v85 + v86 - v38.f64[0];
    v501[2] = v86 - v38.f64[0] - (v87 - v85) + v85 - (v87 - (v87 - v85));
    v88 = vmuld_lane_f64(_D12, _Q8, 1);
    v89 = v88 - v72 * v41.f64[0] - (_D12 - v72) * v41.f64[0];
    v90 = vmuld_lane_f64(v91.f64[0], _Q8, 1);
    v91.f64[0] = v443 - v38.f64[1];
    v41.f64[0] = -(v90 - v62 * v41.f64[0] - v63 * v41.f64[0] - v62 * (_Q8.f64[1] - v41.f64[0]) - v63 * (_Q8.f64[1] - v41.f64[0]));
    v42.f64[0] = -(v89 - v72 * v42.f64[0] - (_D12 - v72) * v42.f64[0]);
    v92 = v88 + v42.f64[0] - v81;
    v93 = v42.f64[0] - v81 - (v92 - v88) + v88 - (v92 - (v92 - v88));
    v500[0] = v42.f64[0] - (v42.f64[0] - v81) - v81 + v42.f64[0] - (v42.f64[0] - v81 + v42.f64[0] - (v42.f64[0] - v81));
    v500[1] = v93 - (v93 - v75) - v75 + v93 - (v93 - v75 + v93 - (v93 - v75));
    v94 = v92 + v93 - v75;
    v42.f64[0] = v93 - v75 - (v94 - v92) + v92 - (v94 - (v94 - v92));
    v95 = v83 - v41.f64[0];
    v41.f64[0] = v83 - (v83 - v41.f64[0]) - v41.f64[0] + v83 - (v83 - v41.f64[0] + v83 - (v83 - v41.f64[0]));
    v96 = v82 + v95;
    v97 = v95 - (v82 + v95 - v82) + v82 - (v82 + v95 - (v82 + v95 - v82));
    v499[0] = v41.f64[0];
    v499[1] = v97 - (v97 - v90) - v90 + v97 - (v97 - v90 + v97 - (v97 - v90));
    v98 = v96 + v97 - v90;
    v499[2] = v97 - v90 - (v98 - v96) + v96 - (v98 - (v98 - v96));
    v470 = v103;
    v39.f64[0] = -(_D12 * v103.f64[0] - v72 * v45 - (_D12 - v72) * v45 - v72 * v46 - (_D12 - v72) * v46);
    v99 = v77 + v79 - v39.f64[0];
    v100 = v79 - v39.f64[0] - (v99 - v77) + v77 - (v99 - (v99 - v77));
    v101 = v100 - _D12 * v103.f64[0];
    v498[0] = v79 - (v79 - v39.f64[0]) - v39.f64[0] + v79 - (v79 - v39.f64[0] + v79 - (v79 - v39.f64[0]));
    v498[1] = v100 - v101 - _D12 * v103.f64[0] + v100 - (v101 + v100 - v101);
    v102 = *(v2 + 112);
    v503[2] = v463;
    v441 = v56;
    v442 = v102;
    v103.f64[0] = v102 - *v1.i64;
    v503[3] = v56;
    v436 = v69;
    v437 = v99 + v101;
    v502[3] = v69;
    v439 = v94;
    v440 = v87;
    v501[3] = v87;
    v500[2] = v42.f64[0];
    v448 = *v1.i64;
    v445 = v40.f64[0];
    *v1.i64 = v40.f64[0] - *v1.i64;
    v500[3] = v94;
    v438 = v98;
    v499[3] = v98;
    v498[2] = v101 - (v99 + v101 - v99) + v99 - (v99 + v101 - (v99 + v101 - v99));
    v498[3] = v99 + v101;
    v104 = sub_299E0C1CC(4, v501, v497, v103.f64[1]);
    v105 = sub_299E0C1CC(4, v498, v496, -v103.f64[0]);
    v106 = sub_299E0C1CC(4, v502, v495, *v1.i64);
    v107 = sub_299E0BFB4(v104, v497, v105, v496, v494);
    v108 = sub_299E0BFB4(v106, v495, v107, v494, v493);
    v109 = sub_299E0C1CC(v108, v493, v492, _Q8.f64[0]);
    v110 = sub_299E0C1CC(v109, v492, v491, -_Q8.f64[0]);
    v111 = sub_299E0C1CC(v108, v493, v492, _Q8.f64[1]);
    v112 = sub_299E0C1CC(v111, v492, v490, -_Q8.f64[1]);
    v113 = sub_299E0C1CC(v108, v493, v492, v477.f64[0]);
    v114 = sub_299E0C1CC(v113, v492, v489, -v477.f64[0]);
    v115 = sub_299E0BFB4(v110, v491, v112, v490, v488);
    v116 = sub_299E0BFB4(v115, v488, v114, v489, v487);
    v117 = sub_299E0C1CC(4, v500, v497, v103.f64[0]);
    v118 = sub_299E0C1CC(4, v499, v496, *v1.i64);
    v119 = sub_299E0C1CC(4, v501, v495, v477.f64[0]);
    v120 = sub_299E0BFB4(v117, v497, v118, v496, v494);
    v121 = sub_299E0BFB4(v119, v495, v120, v494, v493);
    v122 = sub_299E0C1CC(v121, v493, v492, v48);
    v123 = sub_299E0C1CC(v122, v492, v491, v48);
    v124 = sub_299E0C1CC(v121, v493, v492, v470.f64[0]);
    v125 = sub_299E0C1CC(v124, v492, v490, v470.f64[0]);
    v126 = sub_299E0C1CC(v121, v493, v492, v103.f64[1]);
    v127 = sub_299E0C1CC(v126, v492, v489, v103.f64[1]);
    v128 = sub_299E0BFB4(v123, v491, v125, v490, v488);
    v129 = sub_299E0BFB4(v128, v488, v127, v489, v486);
    v130 = sub_299E0C1CC(4, v503, v497, *v1.i64);
    v131 = sub_299E0C1CC(4, v498, v496, v477.f64[0]);
    v132 = sub_299E0C1CC(4, v500, v495, v103.f64[1]);
    v133 = sub_299E0BFB4(v130, v497, v131, v496, v494);
    v134 = sub_299E0BFB4(v132, v495, v133, v494, v493);
    v135 = sub_299E0C1CC(v134, v493, v492, v474.f64[0]);
    v136 = sub_299E0C1CC(v135, v492, v491, -v474.f64[0]);
    v137 = sub_299E0C1CC(v134, v493, v492, v91.f64[1]);
    v138 = sub_299E0C1CC(v137, v492, v490, -v91.f64[1]);
    v139 = sub_299E0C1CC(v134, v493, v492, v103.f64[0]);
    v435 = -v103.f64[0];
    v140 = sub_299E0C1CC(v139, v492, v489, -v103.f64[0]);
    v141 = sub_299E0BFB4(v136, v491, v138, v490, v488);
    v142 = sub_299E0BFB4(v141, v488, v140, v489, v485);
    v143 = sub_299E0C1CC(4, v502, v497, v477.f64[0]);
    v144 = sub_299E0C1CC(4, v499, v496, -v103.f64[1]);
    v464 = v103.f64[0];
    v145 = sub_299E0C1CC(4, v503, v495, v103.f64[0]);
    v146 = sub_299E0BFB4(v143, v497, v144, v496, v494);
    v147 = sub_299E0BFB4(v145, v495, v146, v494, v493);
    v148 = sub_299E0C1CC(v147, v493, v492, _D12);
    v149 = sub_299E0C1CC(v148, v492, v491, _D12);
    v150 = sub_299E0C1CC(v147, v493, v492, v91.f64[0]);
    v462 = v91.f64[0];
    v151 = sub_299E0C1CC(v150, v492, v490, v91.f64[0]);
    v152 = sub_299E0C1CC(v147, v493, v492, *v1.i64);
    v153 = sub_299E0C1CC(v152, v492, v489, *v1.i64);
    v154 = sub_299E0BFB4(v149, v491, v151, v490, v488);
    v155 = sub_299E0BFB4(v154, v488, v153, v489, v484);
    v156 = sub_299E0BFB4(v116, v487, v129, v486, v483);
    v157 = sub_299E0BFB4(v142, v485, v155, v484, v482);
    v158 = sub_299E0BFB4(v156, v483, v157, v482, &v480);
    v30 = v480;
    if (v158 < 2)
    {
      v103.f64[0] = v465;
    }

    else
    {
      v159 = v158 - 1;
      v160 = &v481;
      v103.f64[0] = v465;
      do
      {
        v161 = *v160++;
        v30 = v30 + v161;
        --v159;
      }

      while (v159);
    }

    if (v30 < v103.f64[0] * 5.55111512e-16 && v103.f64[0] * 5.55111512e-16 > -v30)
    {
      v466 = -v103.f64[1];
      v434 = v48;
      v163 = vsubq_f64(v458, v474);
      v164 = vsubq_f64(v450, v470);
      v165 = vsubq_f64(v452, v477);
      v166 = vsubq_f64(v460, _Q8);
      v167 = v456 - _D12 - v454.f64[0] + v456 - (_D12 + v456 - _D12);
      v168 = v443 - v91.f64[0] - v444 + v443 - (v91.f64[0] + v443 - v91.f64[0]);
      v169 = v445 - *v1.i64 - v448 + v445 - (*v1.i64 + v445 - *v1.i64);
      v170 = vaddq_f64(vsubq_f64(v166, v454), vsubq_f64(v460, vaddq_f64(_Q8, v166)));
      v171 = vaddq_f64(vsubq_f64(v165, v447), vsubq_f64(v452, vaddq_f64(v477, v165)));
      v172 = vaddq_f64(vsubq_f64(v164, v446), vsubq_f64(v450, vaddq_f64(v470, v164)));
      v173 = vaddq_f64(vsubq_f64(v163, v454), vsubq_f64(v458, vaddq_f64(v474, v163)));
      if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_f64(v170), vceqzq_f64(v171)), vuzp1q_s32(vceqzq_f64(v172), vceqzq_f64(v173)))))) & 1) != 0 || v442 - v464 - v448 + v442 - (v464 + v442 - v464) != 0.0 || v167 != 0.0 || v168 != 0.0 || v169 != 0.0)
      {
        v455 = v442 - v464 - v448 + v442 - (v464 + v442 - v464);
        v451 = v171;
        v453 = v173;
        v461 = v170;
        v449 = v172;
        v91.f64[0] = v169;
        v459 = fabsl(v30) * 3.33066907e-16 + v103.f64[0] * 8.75142567e-31;
        _D18 = _Q8.f64[0];
        _V6.D[1] = v461.f64[1];
        _Q8.f64[1] = v449.f64[1];
        _V0.D[1] = v451.f64[1];
        _D21 = v434;
        _D20 = v467;
        __asm { FMLA            D2, D20, V0.D[1] }

        v183 = v470.f64[0] * v461.f64[0] + _Q8.f64[0] * v449.f64[0] - _D2;
        _V30.D[1] = v453.f64[1];
        __asm { FMLA            D2, D21, V30.D[1] }

        v186 = _D2 - (v474.f64[0] * v449.f64[0] + v470.f64[0] * v453.f64[0]);
        v187 = v462 * v453.f64[0] + v474.f64[0] * v168 - (vmuld_lane_f64(_D12, v453, 1) + v91.f64[1] * v167);
        __asm { FMLA            D2, D12, V6.D[1] }

        v189 = _D2 - (_Q8.f64[0] * v168 + v462 * v461.f64[0]);
        __asm { FMLA            D2, D18, V30.D[1] }

        v191 = vmuld_lane_f64(v474.f64[0], v461, 1);
        _D25 = v439;
        _D24 = v440;
        _D28 = v103.f64[1];
        v457 = (v462 * v462 + _D12 * _D12 + *v1.i64 * *v1.i64) * ((_D2 - (v191 + v467 * v453.f64[0])) * v466 + v477.f64[0] * v186 + v464 * v183 + v451.f64[0] * v436 - v449.f64[1] * v438 + v455 * v441) + (v470.f64[0] * v470.f64[0] + _D21 * _D21 + _D28 * _D28) * (*v1.i64 * (_D2 - (v191 + v467 * v453.f64[0])) + v464 * v189 + v477.f64[0] * v187 + v91.f64[0] * v438 + v455 * v439 + v451.f64[0] * v440);
        v195 = vmuld_lane_f64(v462, v451, 1) + v434 * v168 - (_D12 * v449.f64[0] + v470.f64[0] * v167);
        v196 = v195 * v435 + v103.f64[1] * v187 + *v1.i64 * v186;
        __asm { FMLA            D5, D24, V8.D[1] }

        v198 = v477.f64[0] * v195 + *v1.i64 * v183 + v103.f64[1] * v189;
        __asm { FMLA            D4, D25, V8.D[1] }

        v200 = (v91.f64[1] * v91.f64[1] + v474.f64[0] * v474.f64[0] + v464 * v464) * (v198 + _D4) + (_D20 * _D20 + _D18 * _D18 + v477.f64[0] * v477.f64[0]) * (v196 + _D5 + v91.f64[0] * v436);
        __asm
        {
          FMLA            D4, D21, V0.D[1]
          FMLA            D4, D28, V8.D[1]
        }

        v30 = v457 - v200 + ((v462 * v168 + _D12 * v167 + *v1.i64 * v91.f64[0]) * (v438 * v466 + v477.f64[0] * v436 + v464 * v441) + _D4 * (*v1.i64 * v438 + v464 * v439 + v477.f64[0] * v440) - ((vmuld_lane_f64(v91.f64[1], v453, 1) + v474.f64[0] * v453.f64[0] + v464 * v455) * (v477.f64[0] * v437 + *v1.i64 * v441 + v103.f64[1] * v439) + (vmuld_lane_f64(v467, v461, 1) + _Q8.f64[0] * v461.f64[0] + v477.f64[0] * v451.f64[0]) * (v437 * v435 + v103.f64[1] * v440 + *v1.i64 * v436))) * 2.0 + v30;
        if (v30 < v459 && v459 > -v30)
        {
          v205 = v37[8];
          v204 = v37[9];
          v207 = v37[4];
          v206 = v37[5];
          v208 = v207 * 134217728.0 - (v207 * 134217728.0 - v207);
          v209 = v204 * 134217728.0 - (v204 * 134217728.0 - v204);
          v475 = v204;
          v210 = -(v207 * v204 - v208 * v209 - (v207 - v208) * v209 - v208 * (v204 - v209) - (v207 - v208) * (v204 - v209));
          v211 = v205 * 134217728.0 - (v205 * 134217728.0 - v205);
          v212 = v205 - v211;
          v478 = v205;
          v213 = v206 * 134217728.0 - (v206 * 134217728.0 - v206);
          v214 = -(v205 * v206 - v211 * v213 - (v205 - v211) * v213 - v211 * (v206 - v213) - (v205 - v211) * (v206 - v213));
          v215 = v210 - v214;
          v216 = v210 - (v210 - v214) - v214 + v210 - (v210 - v214 + v210 - (v210 - v214));
          v217 = v207 * v204 + v215;
          v218 = v215 - (v217 - v207 * v204) + v207 * v204 - (v217 - (v217 - v207 * v204));
          v219 = v218 - v205 * v206;
          v547[0] = v216;
          v547[1] = v218 - v219 - v205 * v206 + v218 - (v219 + v218 - v219);
          v547[2] = v219 - (v217 + v219 - v217) + v217 - (v217 + v219 - (v217 + v219 - v217));
          v547[3] = v217 + v219;
          v221 = v37[12];
          v220 = v37[13];
          v222 = v220 * 134217728.0 - (v220 * 134217728.0 - v220);
          v223 = v220 - v222;
          v468 = v204 - v209;
          v471 = v211;
          v224 = -(v205 * v220 - v211 * v222 - (v205 - v211) * v222 - v211 * (v220 - v222) - (v205 - v211) * (v220 - v222));
          v225 = v221 * 134217728.0 - (v221 * 134217728.0 - v221);
          v226 = -(v204 * v221 - v225 * v209 - (v221 - v225) * v209 - v225 * (v204 - v209) - (v221 - v225) * (v204 - v209));
          v227 = v224 - v226;
          v228 = v224 - (v224 - v226) - v226 + v224 - (v224 - v226 + v224 - (v224 - v226));
          v229 = v205 * v220 + v227;
          v230 = v227 - (v229 - v205 * v220) + v205 * v220 - (v229 - (v229 - v205 * v220));
          v231 = v230 - v204 * v221;
          v546[0] = v228;
          v546[1] = v230 - v231 - v204 * v221 + v230 - (v231 + v230 - v231);
          v546[2] = v231 - (v229 + v231 - v229) + v229 - (v229 + v231 - (v229 + v231 - v229));
          v546[3] = v229 + v231;
          v233 = v37[16];
          v232 = v37[17];
          v234 = v232 * 134217728.0 - (v232 * 134217728.0 - v232);
          v235 = -(v221 * v232 - v225 * v234 - (v221 - v225) * v234 - v225 * (v232 - v234) - (v221 - v225) * (v232 - v234));
          v236 = v233 * 134217728.0 - (v233 * 134217728.0 - v233);
          v237 = -(v220 * v233 - v236 * v222 - (v233 - v236) * v222 - v236 * (v220 - v222) - (v233 - v236) * (v220 - v222));
          v238 = v235 - v237;
          v239 = v235 - (v235 - v237) - v237 + v235 - (v235 - v237 + v235 - (v235 - v237));
          v240 = v221 * v232 + v238;
          v241 = v238 - (v240 - v221 * v232) + v221 * v232 - (v240 - (v240 - v221 * v232));
          v242 = v241 - v220 * v233;
          v545[0] = v239;
          v545[1] = v241 - v242 - v220 * v233 + v241 - (v242 + v241 - v242);
          v545[2] = v242 - (v240 + v242 - v240) + v240 - (v240 + v242 - (v240 + v242 - v240));
          v545[3] = v240 + v242;
          v244 = *v37;
          v243 = v37[1];
          v245 = v243 * 134217728.0 - (v243 * 134217728.0 - v243);
          v246 = -(v233 * v243 - v236 * v245 - (v233 - v236) * v245 - v236 * (v243 - v245) - (v233 - v236) * (v243 - v245));
          v247 = *v37 * 134217728.0 - (*v37 * 134217728.0 - *v37);
          v248 = v232 * *v37;
          v249 = *v37 - v247;
          v250 = -(v248 - v247 * v234 - v249 * v234 - v247 * (v232 - v234) - v249 * (v232 - v234));
          v251 = v246 - v250;
          v252 = v246 - (v246 - v250) - v250 + v246 - (v246 - v250 + v246 - (v246 - v250));
          v253 = v233 * v243 + v246 - v250;
          v254 = v251 - (v253 - v233 * v243) + v233 * v243 - (v253 - (v253 - v233 * v243));
          v255 = v254 - v248;
          v544[0] = v252;
          v544[1] = v254 - (v254 - v248) - v248 + v254 - (v254 - v248 + v254 - (v254 - v248));
          v256 = v253 + v254 - v248;
          v544[2] = v255 - (v256 - v253) + v253 - (v256 - (v256 - v253));
          v544[3] = v256;
          v257 = -(v206 * v244 - v247 * v213 - v249 * v213 - v247 * (v206 - v213) - v249 * (v206 - v213));
          v258 = -(v207 * v243 - v208 * v245 - (v207 - v208) * v245 - v208 * (v243 - v245) - (v207 - v208) * (v243 - v245));
          v259 = v257 - v258;
          v260 = v257 - (v257 - v258) - v258 + v257 - (v257 - v258 + v257 - (v257 - v258));
          v261 = v206 * v244 + v259;
          v262 = v259 - (v261 - v206 * v244) + v206 * v244 - (v261 - (v261 - v206 * v244));
          v263 = v262 - v207 * v243;
          v543[0] = v260;
          v543[1] = v262 - v263 - v207 * v243 + v262 - (v263 + v262 - v263);
          v543[2] = v263 - (v261 + v263 - v261) + v261 - (v261 + v263 - (v261 + v263 - v261));
          v543[3] = v261 + v263;
          v264 = -(v207 * v220 - v208 * v222 - (v207 - v208) * v222 - v208 * (v220 - v222) - (v207 - v208) * (v220 - v222));
          v265 = -(v206 * v221 - v225 * v213 - (v221 - v225) * v213 - v225 * (v206 - v213) - (v221 - v225) * (v206 - v213));
          v266 = v264 - v265;
          v267 = v264 - (v264 - v265) - v265 + v264 - (v264 - v265 + v264 - (v264 - v265));
          v268 = v207 * v220 + v266;
          v269 = v266 - (v268 - v207 * v220) + v207 * v220 - (v268 - (v268 - v207 * v220));
          v270 = v269 - v206 * v221;
          v542[0] = v267;
          v542[1] = v269 - v270 - v206 * v221 + v269 - (v270 + v269 - v270);
          v542[2] = v270 - (v268 + v270 - v268) + v268 - (v268 + v270 - (v268 + v270 - v268));
          v542[3] = v268 + v270;
          v271 = -(v478 * v232 - v471 * v234 - v212 * v234 - v471 * (v232 - v234) - v212 * (v232 - v234));
          v272 = -(v475 * v233 - v236 * v209 - (v233 - v236) * v209 - v236 * v468 - (v233 - v236) * v468);
          v273 = v271 - v272;
          v274 = v271 - (v271 - v272) - v272 + v271 - (v271 - v272 + v271 - (v271 - v272));
          v275 = v478 * v232 + v273;
          v276 = v273 - (v275 - v478 * v232) + v478 * v232 - (v275 - (v275 - v478 * v232));
          v277 = v276 - v475 * v233;
          v541[0] = v274;
          v541[1] = v276 - v277 - v475 * v233 + v276 - (v277 + v276 - v277);
          v278 = v275 + v277;
          v279 = v275 + v277 - v275;
          v280 = v277 - v279;
          v281 = v275 - (v275 + v277 - v279);
          v282 = v207;
          v283 = v280 + v281;
          v284 = v206;
          v541[2] = v283;
          v541[3] = v278;
          v285 = -(v221 * v243 - v225 * v245 - (v221 - v225) * v245 - v225 * (v243 - v245) - (v221 - v225) * (v243 - v245));
          v286 = v220 * v244;
          v287 = -(v286 - v247 * v222 - v249 * v222 - v247 * v223 - v249 * v223);
          v288 = v285 - v287;
          v289 = v285 - (v285 - v287) - v287 + v285 - (v285 - v287 + v285 - (v285 - v287));
          v290 = v221 * v243 + v288;
          v291 = v288 - (v290 - v221 * v243) + v221 * v243 - (v290 - (v290 - v221 * v243));
          v540[0] = v289;
          v540[1] = v291 - (v291 - v286) - v286 + v291 - (v291 - v286 + v291 - (v291 - v286));
          v292 = -(v206 * v233 - v236 * v213 - (v233 - v236) * v213 - v236 * (v206 - v213) - (v233 - v236) * (v206 - v213));
          v540[2] = v291 - v286 - (v290 + v291 - v286 - v290) + v290 - (v290 + v291 - v286 - (v290 + v291 - v286 - v290));
          v540[3] = v290 + v291 - v286;
          v293 = v207 * v232;
          v294 = -(v207 * v232 - v208 * v234 - (v207 - v208) * v234 - v208 * (v232 - v234) - (v207 - v208) * (v232 - v234));
          v295 = v292 - v294;
          v296 = v292 - (v292 - v294) - v294 + v292 - (v292 - v294 + v292 - (v292 - v294));
          v297 = v206 * v233 + v295;
          v298 = v295 - (v297 - v206 * v233) + v206 * v233 - (v297 - (v297 - v206 * v233));
          v539[0] = v296;
          v539[1] = v298 - (v298 - v293) - v293 + v298 - (v298 - v293 + v298 - (v298 - v293));
          v299 = -(v475 * v244 - v247 * v209 - v249 * v209 - v247 * v468 - v249 * v468);
          v539[2] = v298 - v293 - (v297 + v298 - v293 - v297) + v297 - (v297 + v298 - v293 - (v297 + v298 - v293 - v297));
          v539[3] = v297 + v298 - v293;
          v300 = -(v478 * v243 - v471 * v245 - v212 * v245 - v471 * (v243 - v245) - v212 * (v243 - v245));
          v301 = v299 - v300;
          v302 = v299 - (v299 - v300) - v300 + v299 - (v299 - v300 + v299 - (v299 - v300));
          v303 = v475 * v244 + v301;
          v304 = v301 - (v303 - v475 * v244) + v475 * v244 - (v303 - (v303 - v475 * v244));
          v305 = v304 - v478 * v243;
          v538[0] = v302;
          v538[1] = v304 - v305 - v478 * v243 + v304 - (v305 + v304 - v305);
          v538[2] = v305 - (v303 + v305 - v303) + v303 - (v303 + v305 - (v303 + v305 - v303));
          v538[3] = v303 + v305;
          v306 = v37[6];
          v307 = sub_299E0C1CC(4, v546, v537, v306);
          v308 = v37[10];
          v309 = sub_299E0C1CC(4, v542, v536, -v308);
          v310 = sub_299E0BFB4(v307, v537, v309, v536, v535);
          v311 = v37[14];
          v312 = sub_299E0C1CC(4, v547, v537, v311);
          v476 = sub_299E0BFB4(v312, v537, v310, v535, v534);
          v313 = sub_299E0C1CC(4, v545, v537, v308);
          v314 = sub_299E0C1CC(4, v541, v536, -v311);
          v315 = sub_299E0BFB4(v313, v537, v314, v536, v535);
          v316 = v37[18];
          v317 = sub_299E0C1CC(4, v546, v537, v316);
          v318 = sub_299E0BFB4(v317, v537, v315, v535, v533);
          v319 = sub_299E0C1CC(4, v544, v537, v311);
          v320 = sub_299E0C1CC(4, v540, v536, -v316);
          v321 = sub_299E0BFB4(v319, v537, v320, v536, v535);
          v322 = v37[2];
          v323 = sub_299E0C1CC(4, v545, v537, v322);
          v324 = sub_299E0BFB4(v323, v537, v321, v535, v532);
          v325 = sub_299E0C1CC(4, v543, v537, v316);
          v326 = sub_299E0C1CC(4, v539, v536, -v322);
          v327 = sub_299E0BFB4(v325, v537, v326, v536, v535);
          v328 = sub_299E0C1CC(4, v544, v537, v306);
          v329 = sub_299E0BFB4(v328, v537, v327, v535, v531);
          v330 = sub_299E0C1CC(4, v547, v537, v322);
          v331 = sub_299E0C1CC(4, v538, v536, -v306);
          v332 = sub_299E0BFB4(v330, v537, v331, v536, v535);
          v333 = sub_299E0C1CC(4, v543, v537, v308);
          v334 = sub_299E0BFB4(v333, v537, v332, v535, v530);
          v335 = sub_299E0C1CC(4, v541, v537, v306);
          v336 = sub_299E0C1CC(4, v539, v536, v308);
          v337 = sub_299E0BFB4(v335, v537, v336, v536, v535);
          v338 = sub_299E0C1CC(4, v547, v537, v316);
          v472 = sub_299E0BFB4(v338, v537, v337, v535, v529);
          v339 = sub_299E0C1CC(4, v540, v537, v308);
          v340 = sub_299E0C1CC(4, v538, v536, v311);
          v341 = sub_299E0BFB4(v339, v537, v340, v536, v535);
          v342 = sub_299E0C1CC(4, v546, v537, v322);
          v343 = sub_299E0BFB4(v342, v537, v341, v535, v528);
          v344 = sub_299E0C1CC(4, v539, v537, v311);
          v345 = sub_299E0C1CC(4, v542, v536, v316);
          v346 = sub_299E0BFB4(v344, v537, v345, v536, v535);
          v347 = sub_299E0C1CC(4, v545, v537, v306);
          v479 = sub_299E0BFB4(v347, v537, v346, v535, v527);
          v348 = sub_299E0C1CC(4, v538, v537, v316);
          v349 = sub_299E0C1CC(4, v541, v536, v322);
          v350 = sub_299E0BFB4(v348, v537, v349, v536, v535);
          v351 = sub_299E0C1CC(4, v544, v537, v308);
          v352 = sub_299E0BFB4(v351, v537, v350, v535, v526);
          v353 = sub_299E0C1CC(4, v542, v537, v322);
          v354 = sub_299E0C1CC(4, v540, v536, v306);
          v355 = sub_299E0BFB4(v353, v537, v354, v536, v535);
          v356 = sub_299E0C1CC(4, v543, v537, v311);
          v357 = sub_299E0BFB4(v356, v537, v355, v535, v525);
          v358 = sub_299E0BFB4(v324, v532, v343, v528, v524);
          v473 = v318;
          v359 = sub_299E0BFB4(v352, v526, v318, v533, v523);
          if (v359 >= 1)
          {
            v360 = v359;
            v361 = v523;
            do
            {
              *v361 = -*v361;
              ++v361;
              --v360;
            }

            while (v360);
          }

          v362 = sub_299E0BFB4(v358, v524, v359, v523, v521);
          v363 = sub_299E0C1CC(v362, v521, v517, v282);
          v364 = sub_299E0C1CC(v363, v517, v516, v282);
          v365 = sub_299E0C1CC(v362, v521, v517, v284);
          v366 = sub_299E0C1CC(v365, v517, v515, v284);
          v367 = sub_299E0C1CC(v362, v521, v517, v306);
          v368 = sub_299E0C1CC(v367, v517, v514, v306);
          v369 = sub_299E0BFB4(v364, v516, v366, v515, v513);
          v469 = sub_299E0BFB4(v369, v513, v368, v514, v512);
          v370 = sub_299E0BFB4(v329, v531, v479, v527, v524);
          v371 = sub_299E0BFB4(v357, v525, v324, v532, v523);
          if (v371 >= 1)
          {
            v372 = v371;
            v373 = v523;
            do
            {
              *v373 = -*v373;
              ++v373;
              --v372;
            }

            while (v372);
          }

          v374 = sub_299E0BFB4(v370, v524, v371, v523, v520);
          v375 = v37[8];
          v376 = sub_299E0C1CC(v374, v520, v517, v375);
          v377 = sub_299E0C1CC(v376, v517, v516, v375);
          v378 = v37[9];
          v379 = sub_299E0C1CC(v374, v520, v517, v378);
          v380 = sub_299E0C1CC(v379, v517, v515, v378);
          v381 = sub_299E0C1CC(v374, v520, v517, v308);
          v382 = sub_299E0C1CC(v381, v517, v514, v308);
          v383 = sub_299E0BFB4(v377, v516, v380, v515, v513);
          v384 = sub_299E0BFB4(v383, v513, v382, v514, v511);
          v385 = sub_299E0BFB4(v334, v530, v352, v526, v524);
          v386 = sub_299E0BFB4(v472, v529, v329, v531, v523);
          if (v386 >= 1)
          {
            v387 = v386;
            v388 = v523;
            do
            {
              *v388 = -*v388;
              ++v388;
              --v387;
            }

            while (v387);
          }

          v389 = sub_299E0BFB4(v385, v524, v386, v523, v519);
          v390 = v37[12];
          v391 = sub_299E0C1CC(v389, v519, v517, v390);
          v392 = sub_299E0C1CC(v391, v517, v516, v390);
          v393 = v37[13];
          v394 = sub_299E0C1CC(v389, v519, v517, v393);
          v395 = sub_299E0C1CC(v394, v517, v515, v393);
          v396 = sub_299E0C1CC(v389, v519, v517, v311);
          v397 = sub_299E0C1CC(v396, v517, v514, v311);
          v398 = sub_299E0BFB4(v392, v516, v395, v515, v513);
          v399 = sub_299E0BFB4(v398, v513, v397, v514, v510);
          v400 = sub_299E0BFB4(v476, v534, v357, v525, v524);
          v401 = sub_299E0BFB4(v343, v528, v334, v530, v523);
          if (v401 >= 1)
          {
            v402 = v401;
            v403 = v523;
            do
            {
              *v403 = -*v403;
              ++v403;
              --v402;
            }

            while (v402);
          }

          v404 = sub_299E0BFB4(v400, v524, v401, v523, v518);
          v405 = v37[16];
          v406 = sub_299E0C1CC(v404, v518, v517, v405);
          v407 = sub_299E0C1CC(v406, v517, v516, v405);
          v408 = v37[17];
          v409 = sub_299E0C1CC(v404, v518, v517, v408);
          v410 = sub_299E0C1CC(v409, v517, v515, v408);
          v411 = sub_299E0C1CC(v404, v518, v517, v316);
          v412 = sub_299E0C1CC(v411, v517, v514, v316);
          v413 = sub_299E0BFB4(v407, v516, v410, v515, v513);
          v414 = sub_299E0BFB4(v413, v513, v412, v514, v509);
          v415 = sub_299E0BFB4(v473, v533, v472, v529, v524);
          v416 = sub_299E0BFB4(v479, v527, v476, v534, v523);
          if (v416 >= 1)
          {
            v417 = v416;
            v418 = v523;
            do
            {
              *v418 = -*v418;
              ++v418;
              --v417;
            }

            while (v417);
          }

          v419 = sub_299E0BFB4(v415, v524, v416, v523, v522);
          v420 = *v37;
          v421 = sub_299E0C1CC(v419, v522, v517, *v37);
          v422 = sub_299E0C1CC(v421, v517, v516, v420);
          v423 = v37[1];
          v424 = sub_299E0C1CC(v419, v522, v517, v423);
          v425 = sub_299E0C1CC(v424, v517, v515, v423);
          v426 = sub_299E0C1CC(v419, v522, v517, v322);
          v427 = sub_299E0C1CC(v426, v517, v514, v322);
          v428 = sub_299E0BFB4(v422, v516, v425, v515, v513);
          v429 = sub_299E0BFB4(v428, v513, v427, v514, v508);
          v430 = sub_299E0BFB4(v469, v512, v384, v511, v507);
          v431 = sub_299E0BFB4(v399, v510, v414, v509, v506);
          v432 = sub_299E0BFB4(v431, v506, v429, v508, v505);
          return v504[sub_299E0BFB4(v430, v507, v432, v505, v504) - 1];
        }
      }
    }
  }

  return v30;
}

uint64_t sub_299E0BFB4(int a1, double *a2, int a3, double *a4, double *a5)
{
  v6 = *a2;
  v7 = *a4;
  if (*a4 > *a2 == *a4 <= -*a2)
  {
    v10 = 0;
    v9 = *a4;
    v7 = a4[1];
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v9 = *a2;
    v6 = a2[1];
    v10 = 1;
  }

  result = 0;
  if (v10 >= a1 || v8 >= a3)
  {
    v12 = v9;
  }

  else
  {
    if (v7 > v6 == v7 <= -v6)
    {
      v12 = v9 + v7;
      v13 = v9 + v7 - v7;
      v7 = a4[++v8];
    }

    else
    {
      v12 = v9 + v6;
      v13 = v9 + v6 - v6;
      v6 = a2[++v10];
    }

    v23 = v9 - v13;
    if (v23 == 0.0)
    {
      result = 0;
    }

    else
    {
      *a5 = v23;
      result = 1;
    }

    if (v10 < a1 && v8 < a3)
    {
      do
      {
        if (v7 > v6 == v7 <= -v6)
        {
          v24 = v12 + v7;
          v25 = v7 - (v12 + v7 - v12) + v12 - (v12 + v7 - (v12 + v7 - v12));
          v7 = a4[++v8];
        }

        else
        {
          v24 = v12 + v6;
          v25 = v6 - (v12 + v6 - v12) + v12 - (v12 + v6 - (v12 + v6 - v12));
          v6 = a2[++v10];
        }

        v12 = v24;
        if (v25 != 0.0)
        {
          a5[result] = v25;
          result = (result + 1);
        }
      }

      while (v10 < a1 && v8 < a3);
    }
  }

  if (v10 < a1)
  {
    v14 = a1 - v10;
    v15 = &a2[v10 + 1];
    do
    {
      v16 = v12;
      v12 = v12 + v6;
      v17 = v6 - (v12 - v16) + v16 - (v12 - (v12 - v16));
      v6 = *v15;
      if (v17 != 0.0)
      {
        a5[result] = v17;
        result = (result + 1);
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  if (v8 < a3)
  {
    v18 = a3 - v8;
    v19 = &a4[v8 + 1];
    do
    {
      v20 = v12;
      v12 = v12 + v7;
      v21 = v7 - (v12 - v20) + v20 - (v12 - (v12 - v20));
      v7 = *v19;
      if (v21 != 0.0)
      {
        a5[result] = v21;
        result = (result + 1);
      }

      ++v19;
      --v18;
    }

    while (v18);
  }

  if (v12 != 0.0 || result == 0)
  {
    a5[result] = v12;
    return (result + 1);
  }

  return result;
}

uint64_t sub_299E0C1CC(int a1, double *a2, double *a3, double a4)
{
  v5 = a4 * 134217728.0 - (a4 * 134217728.0 - a4);
  v6 = *a2 * a4;
  v7 = *a2 * 134217728.0 - (*a2 * 134217728.0 - *a2);
  v8 = -(v6 - v7 * v5 - (*a2 - v7) * v5 - v7 * (a4 - v5) - (*a2 - v7) * (a4 - v5));
  if (v8 == 0.0)
  {
    result = 0;
  }

  else
  {
    *a3 = v8;
    result = 1;
  }

  if (a1 >= 2)
  {
    v10 = a1;
    v11 = a2 + 1;
    v12 = v10 - 1;
    do
    {
      v13 = *v11 * a4;
      v14 = *v11 * 134217728.0 - (*v11 * 134217728.0 - *v11);
      v15 = -(v13 - v14 * v5 - (*v11 - v14) * v5 - v14 * (a4 - v5) - (*v11 - v14) * (a4 - v5));
      v16 = v6 + v15;
      v17 = v15 - (v6 + v15 - v6) + v6 - (v6 + v15 - (v6 + v15 - v6));
      if (v17 != 0.0)
      {
        a3[result] = v17;
        result = (result + 1);
      }

      v6 = v13 + v16;
      v18 = v16 - (v13 + v16 - v13);
      if (v18 != 0.0)
      {
        a3[result] = v18;
        result = (result + 1);
      }

      ++v11;
      --v12;
    }

    while (v12);
  }

  if (v6 != 0.0 || result == 0)
  {
    a3[result] = v6;
    return (result + 1);
  }

  return result;
}

simd_float4 _simd_atan2_f4(simd_float4 y, simd_float4 x)
{
  v2.i64[0] = 0x8000000080000000;
  v2.i64[1] = 0x8000000080000000;
  v3 = vcageq_f32(x, y);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v4);
  v6 = vcltzq_s32(x);
  v7 = vdupq_n_s32(0x3F490FDBu);
  v8.i64[0] = 0x3F0000003FLL;
  v8.i64[1] = 0x3F0000003FLL;
  v9 = vbslq_s8(vorrq_s8(vcgtq_f32(y, x), vcgeq_f32(x, y)), vorrq_s8(vbslq_s8(vandq_s8(vceqq_f32(vabsq_f32(x), v5), vceqq_f32(vabsq_f32(y), v5)), vbslq_s8(v6, vdupq_n_s32(0x4016CBE4u), v7), vorrq_s8(vandq_s8(vandq_s8(v6, v3), vdupq_n_s32(0x40490FDBu)), vbicq_s8(vdupq_n_s32(0x3FC90FDBu), v3))), vandq_s8(y, v2)), vnegq_f32(v8));
  v10 = vdivq_f32(vbslq_s8(v3, y, vnegq_f32(x)), vbslq_s8(v3, x, y));
  v11 = vceqq_f32(v10, v10);
  v12 = vabsq_f32(v10);
  v13 = vandq_s8(v10, v2);
  v2.i64[0] = 0x2000000020000000;
  v2.i64[1] = 0x2000000020000000;
  v14 = vcgeq_f32(v12, v2);
  v15 = vcgtq_f32(v12, vdupq_n_s32(0x3ED413CDu));
  __asm
  {
    FMOV            V6.4S, #-1.0
    FMOV            V7.4S, #1.0
  }

  v22 = vbslq_s8(v15, vdivq_f32(vaddq_f32(v12, _Q6), vaddq_f32(v12, _Q7)), v12);
  v23 = vandq_s8(vmulq_f32(v22, v22), v14);
  return vbslq_s8(v11, vaddq_f32(v9, vorrq_s8(v13, vaddq_f32(vandq_s8(v7, v15), vmlaq_f32(v22, vmlaq_f32(vdupq_n_s32(0xBEAAAA2A), vmlaq_f32(vdupq_n_s32(0x3E4C925Fu), vmlaq_f32(vdupq_n_s32(0xBE0E1B85), vdupq_n_s32(0x3DA4F0D1u), v23), v23), v23), vmulq_f32(v22, v23))))), v9);
}

__complex_double clogl(__complex_double a1)
{
  v9 = a1.c[1];
  v10 = a1.c[0];
  v1 = cargl(a1);
  v2 = fabs(v10);
  v3 = INFINITY;
  if (v2 != INFINITY)
  {
    v4 = fabs(v9);
    v3 = INFINITY;
    if (v4 != INFINITY)
    {
      v11 = v1;
      if (v2 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v2;
      }

      if (v2 >= v4)
      {
        v6 = v2;
      }

      else
      {
        v6 = v4;
      }

      v3 = logl(v6);
      if (v6 == 0.0)
      {
        if (v6 != 1.0)
        {
LABEL_15:
          v1 = v11;
          goto LABEL_16;
        }
      }

      else if (v6 != 1.0 && (*&v6 >> 52) - (*&v5 >> 52) >= 0x35)
      {
        goto LABEL_15;
      }

      v3 = v3 + log1pl(v5 / v6 * (v5 / v6)) * 0.5;
      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = v3;
  v8 = v1;
  result.c[1] = v8;
  result.c[0] = v7;
  return result;
}

__complex_float clogf(__complex_float a1)
{
  v10 = a1.c[1];
  v11 = a1.c[0];
  v1 = cargf(a1);
  v2 = fabsf(v11);
  v3 = INFINITY;
  if (v2 != INFINITY)
  {
    v4 = fabsf(v10);
    v3 = INFINITY;
    if (v4 != INFINITY)
    {
      v12 = v1;
      if (v2 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v2;
      }

      if (v2 >= v4)
      {
        v6 = v2;
      }

      else
      {
        v6 = v4;
      }

      v3 = logf(v6);
      if (v6 == 0.0)
      {
        if (v6 != 1.0)
        {
          goto LABEL_15;
        }
      }

      else if (v6 != 1.0 && ((LODWORD(v6) >> 23) - (LODWORD(v5) >> 23)) >= 0x18)
      {
        goto LABEL_15;
      }

      v3 = v3 + (log1pf((v5 / v6) * (v5 / v6)) * 0.5);
LABEL_15:
      v1 = v12;
    }
  }

  v8 = v3;
  v9 = v1;
  result.c[1] = v9;
  result.c[0] = v8;
  return result;
}

__complex_double conjl(__complex_double result)
{
  v1 = -result.c[1];
  result.c[1] = v1;
  return result;
}

simd_float4 _simd_log2_f4(simd_float4 x)
{
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  v2.i64[0] = 0x100000001000000;
  v2.i64[1] = 0x100000001000000;
  v3 = vmaxvq_u32(vcgtq_s32(v2, vaddq_s32(x, v1)));
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  if ((v3 & 0x80000000) != 0)
  {
    v12 = vceqzq_s32(vandq_s8(x, vnegq_f32(v4)));
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    v14 = vandq_s8(x, v13);
    __asm { FMOV            V4.4S, #-6.25 }

    v16 = vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(x, _Q4), 0x17uLL));
    v17 = vclzq_s32(v14);
    v18.i64[0] = 0x700000007;
    v18.i64[1] = 0x700000007;
    v19 = vandq_s8(vshlq_u32(x, vaddq_s32(v17, v18)), v13);
    v18.i64[0] = 0x800000008;
    v18.i64[1] = 0x800000008;
    v20 = vsubq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(v19, _Q4), 0x17uLL)), vcvtq_f32_u32(vaddq_s32(v17, v18)));
    v5 = vbslq_s8(v12, v19, v14);
    v11 = vbslq_s8(v12, v20, v16);
  }

  else
  {
    v5 = vandq_s8(x, v4);
    __asm { FMOV            V1.4S, #-6.25 }

    v11 = vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(x, _Q1), 0x17uLL));
  }

  v21.i64[0] = 0x8000000080000;
  v21.i64[1] = 0x8000000080000;
  v22 = vshrq_n_u32(vaddq_s32(v5, v21), 0x14uLL);
  __asm { FMOV            V4.4S, #1.0 }

  v24 = vorrq_s8(v5, _Q4);
  _Q4.i64[0] = 0x404040404040404;
  _Q4.i64[1] = 0x404040404040404;
  v25 = vmlaq_s32(vdupq_n_s32(0x3020100u), v22, _Q4);
  v37.val[1] = xmmword_299E28B60;
  v37.val[0] = xmmword_299E28B70;
  v37.val[2].i64[0] = 0x3F0000003F000000;
  v37.val[2].i64[1] = 0x3F0000003F000000;
  v26 = vqtbl3q_s8(v37, v25);
  v37.val[1] = xmmword_299E28B80;
  v37.val[0] = xmmword_299E28B90;
  v37.val[2] = 0uLL;
  v27 = vqtbl3q_s8(v37, v25);
  __asm { FMOV            V5.4S, #-1.0 }

  v29 = vmlaq_f32(_Q5, v26, v24);
  v30 = vmulq_f32(v29, v29);
  v31 = vaddq_f32(vmlaq_f32(vaddq_f32(v11, v27), vmulq_f32(v30, v30), vmulq_f32(v29, vdupq_n_s32(0x3E920AA5u))), vmulq_f32(v29, vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3FB8AA3Bu), vdupq_n_s32(0xBF38AA2D), v29), v30, vmlaq_f32(vdupq_n_s32(0x3EF63993u), vdupq_n_s32(0xBEB92E1D), v29))));
  if ((v3 & 0x80000000) != 0)
  {
    v32.i64[0] = 0x7F0000007FLL;
    v32.i64[1] = 0x7F0000007FLL;
    v33 = vnegq_f32(v32);
    v34 = vbslq_s8(vceqzq_f32(x), v32, vbslq_s8(vceqq_f32(x, v33), v33, v31));
    v32.i64[0] = 0x3F0000003FLL;
    v32.i64[1] = 0x3F0000003FLL;
    v35 = vnegq_f32(v32);
    return vbslq_s8(vceqq_f32(x, x), vbslq_s8(vcltzq_f32(x), v35, v34), v35);
  }

  return v31;
}

__complex_float conjf(__complex_float result)
{
  v1 = -result.c[1];
  result.c[1] = v1;
  return result;
}

simd_float4 _simd_acos_f4(simd_float4 x)
{
  v1.i64[0] = 0xBF000000BF000000;
  v1.i64[1] = 0xBF000000BF000000;
  v2 = vcgtq_f32(v1, x);
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vcgtq_f32(x, v3);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v7 = vbslq_s8(vorrq_s8(v2, v4), vsqrtq_f32(vbslq_s8(v2, vmlaq_f32(v5, v5, x), vmlaq_f32(v6, v1, x))), x);
  v8 = vbicq_s8(vbslq_s8(v2, vdupq_n_s32(0x40490FDBu), vdupq_n_s32(0x3FC90FDBu)), v4);
  __asm { FMOV            V5.4S, #-1.0 }

  v5.i64[0] = 0xC0000000C0000000;
  v5.i64[1] = 0xC0000000C0000000;
  v14 = vbslq_s8(v2, v5, _Q5);
  _Q5.i64[0] = 0x4000000040000000;
  _Q5.i64[1] = 0x4000000040000000;
  v15 = vbslq_s8(v4, _Q5, v14);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v16 = vandq_s8(v7, v4);
  v17 = vabsq_f32(v7);
  v18 = vandq_s8(v17, vcgeq_f32(v17, vdupq_n_s32(0x38D1B717u)));
  v19 = vmulq_f32(v18, v18);
  v20 = vcgeq_f32(v3, v17);
  v21 = veorq_s8(v16, vmlaq_f32(v17, v17, vmulq_f32(v19, vmlaq_f32(vdupq_n_s32(0x3E2AAAE4u), vmlaq_f32(vdupq_n_s32(0x3D9980F6u), vmlaq_f32(vdupq_n_s32(0x3D3A3EC7u), vmlaq_f32(vdupq_n_s32(0x3CC617E3u), vdupq_n_s32(0x3D2CB352u), v19), v19), v19), v19))));
  v16.i64[0] = 0x3F0000003FLL;
  v16.i64[1] = 0x3F0000003FLL;
  return vmlaq_f32(v8, vbslq_s8(v20, v21, vnegq_f32(v16)), v15);
}

__complex_double cpowl(__complex_double a1, __complex_double a2)
{
  v2 = a2.c[1];
  v3 = a2.c[0];
  v4 = clogl(a1);

  v9.c[0] = v3 * v4.c[0] - v2 * v4.c[1];
  v9.c[1] = v3 * v4.c[1] + v2 * v4.c[0];
  v7 = cexpl(v9);
  v6 = v7.c[1];
  v5 = v7.c[0];
  result.c[1] = v6;
  result.c[0] = v5;
  return result;
}

__complex_float cpowf(__complex_float a1, __complex_float a2)
{
  v2 = a2.c[1];
  v3 = a2.c[0];
  v4 = clogf(a1);

  v9.c[0] = (v3 * v4.c[0]) - (v2 * v4.c[1]);
  v9.c[1] = (v3 * v4.c[1]) + (v2 * v4.c[0]);
  v7 = cexpf(v9);
  v6 = v7.c[1];
  v5 = v7.c[0];
  result.c[1] = v6;
  result.c[0] = v5;
  return result;
}

__complex_double csinl(__complex_double a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = csinhl(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

simd_double2 _simd_asin_d2(simd_double2 x)
{
  v1 = vabsq_f64(x);
  v2 = vandq_s8(x, vnegq_f64(0));
  __asm { FMOV            V1.2D, #1.0 }

  v8 = vcgtq_f64(v1, _Q1);
  __asm
  {
    FMOV            V4.2D, #-0.5
    FMOV            V5.2D, #0.5
  }

  v11 = vcgeq_f64(v1, _Q5);
  v12 = vmlaq_f64(_Q5, _Q4, v1);
  v13 = vminnmq_f64(vmulq_f64(x, x), v12);
  v14 = vsqrtq_f64(v12);
  __asm { FMOV            V5.2D, #-2.0 }

  v16 = vmulq_f64(v14, _Q5);
  v17 = vmulq_f64(v13, v13);
  v18 = vmulq_f64(v17, v17);
  v19 = vbslq_s8(v11, v16, v1);
  return vbslq_s8(v8, vdupq_n_s64(0x7FF8000000000000uLL), veorq_s8(v2, vaddq_f64(vandq_s8(vdupq_n_s64(0x3FF921FB54442D18uLL), v11), vmlaq_f64(v19, v19, vmulq_f64(v13, vmlaq_f64(vmlaq_f64(vmlaq_f64(vdupq_n_s64(0x3FC555555555529CuLL), vdupq_n_s64(0x3FB333333337E0DEuLL), v13), v17, vmlaq_f64(vdupq_n_s64(0x3FA6DB6DB3B445F8uLL), vdupq_n_s64(0x3F9F1C72E13AD8BEuLL), v13)), v18, vmlaq_f64(vmlaq_f64(vmlaq_f64(vdupq_n_s64(0x3F96E89CEBDEFADDuLL), vdupq_n_s64(0x3F91C6DCF538AD2EuLL), v13), v17, vmlaq_f64(vdupq_n_s64(0x3F8C6DBBCB88BD57uLL), vdupq_n_s64(0x3F88F8DC2AFCCAD6uLL), v13)), v18, vmlaq_f64(vmlaq_f64(vdupq_n_s64(0x3F7A583395D45ED5uLL), vdupq_n_s64(0x3F943F44BFBC3BAEuLL), v13), v17, vmlaq_f64(vdupq_n_s64(0xBF90FB17F7DBB0EDLL), vdupq_n_s64(0x3FA07520C70EB909uLL), v13)))))))));
}

simd_double2 _simd_acos_d2(simd_double2 x)
{
  v1 = vabsq_f64(x);
  v2 = vnegq_f64(v1);
  __asm { FMOV            V1.2D, #1.0 }

  v8 = vcgeq_f64(_Q1, v1);
  __asm { FMOV            V5.2D, #0.5 }

  v10 = vmlsq_f64(_Q5, _Q5, v1);
  v11 = vminnmq_f64(vmulq_f64(x, x), v10);
  v12 = vsqrtq_f64(v10);
  v13 = vmulq_f64(v11, v11);
  v14 = vmlaq_f64(vmlaq_f64(vdupq_n_s64(0x3F7A583395D45ED5uLL), vdupq_n_s64(0x3F943F44BFBC3BAEuLL), v11), v13, vmlaq_f64(vdupq_n_s64(0xBF90FB17F7DBB0EDLL), vdupq_n_s64(0x3FA07520C70EB909uLL), v11));
  v15 = vmlaq_f64(vmlaq_f64(vdupq_n_s64(0x3F96E89CEBDEFADDuLL), vdupq_n_s64(0x3F91C6DCF538AD2EuLL), v11), v13, vmlaq_f64(vdupq_n_s64(0x3F8C6DBBCB88BD57uLL), vdupq_n_s64(0x3F88F8DC2AFCCAD6uLL), v11));
  v16 = vmlaq_f64(vmlaq_f64(vdupq_n_s64(0x3FC555555555529CuLL), vdupq_n_s64(0x3FB333333337E0DEuLL), v11), v13, vmlaq_f64(vdupq_n_s64(0x3FA6DB6DB3B445F8uLL), vdupq_n_s64(0x3F9F1C72E13AD8BEuLL), v11));
  v17 = vmulq_f64(v13, v13);
  v18 = vmulq_f64(v11, vmlaq_f64(v16, v17, vmlaq_f64(v15, v17, v14)));
  v19 = vcgeq_f64(v11, v10);
  v20 = veorq_s8(vandq_s8(x, vnegq_f64(0)), vbslq_s8(v19, vaddq_f64(v12, v12), v2));
  return vbslq_s8(v8, vaddq_f64(vaddq_f64(vbicq_s8(vdupq_n_s64(0x3FF921FB54442D18uLL), v19), vandq_s8(vandq_s8(vdupq_n_s64(0x400921FB54442D18uLL), vclezq_f64(x)), v19)), vmlaq_f64(v20, v20, v18)), vdupq_n_s64(0x7FF8000000000000uLL));
}

__complex_float csinf(__complex_float a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = csinhf(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

simd_float4 _simd_sinh_f4(simd_float4 x)
{
  v2.i64[0] = 0x8000000080000000;
  v2.i64[1] = 0x8000000080000000;
  v3 = vabsq_f32(x);
  v4 = vcgtq_u32(v3, vdupq_n_s32(0x42AEAC4Eu));
  v5 = vmlaq_f32(vdupq_n_s32(0x4B400000u), vdupq_n_s32(0x3FB8AA3Bu), v3);
  v6 = vaddq_f32(v5, vdupq_n_s32(0xCB400000));
  v7 = vmlaq_f32(vmlaq_f32(v3, vdupq_n_s32(0xBF317000), v6), vdupq_n_s32(0xB805FDF4), v6);
  v8 = vshlq_n_s32(v5, 0x17uLL);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v9 = vaddq_s32(v8, v6);
  v10 = vsubq_s32(v6, v8);
  v11 = vaddq_f32(v9, v10);
  v12 = vsubq_f32(v9, v10);
  v13 = vmulq_f32(v7, v7);
  v14 = vorrq_s8(vandq_s8(x, v2), vaddq_f32(v12, vmlaq_f32(vmulq_f32(v12, vmulq_f32(v13, vmlaq_f32(v6, v13, vmlaq_f32(vdupq_n_s32(0x3D2AAA72u), vdupq_n_s32(0x3AB6A8A3u), v13)))), v11, vmlaq_f32(v7, v7, vmulq_f32(v13, vmlaq_f32(vdupq_n_s32(0x3E2AAA57u), vdupq_n_s32(0x3C091461u), v13))))));
  if ((vmaxvq_u32(v4) & 0x80000000) != 0)
  {
    v15 = 0;
    v18 = v4;
    v19 = x;
    do
    {
      v23 = v4;
      if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))))
      {
        v21 = x;
        v20 = v14;
        v16 = sinhf(*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))));
        v4 = v18;
        x = v19;
        v22 = v20;
        *(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) = v16;
        v14 = v22;
      }

      ++v15;
    }

    while (v15 != 4);
  }

  return v14;
}

simd_float4 _simd_cosh_f4(simd_float4 x)
{
  v1 = x;
  v2 = vabsq_f32(x);
  v3 = vcgtq_u32(v2, vdupq_n_s32(0x42AEAC4Eu));
  v4 = vmlaq_f32(vdupq_n_s32(0x4B400000u), vdupq_n_s32(0x3FB8AA3Bu), v2);
  v5 = vaddq_f32(v4, vdupq_n_s32(0xCB400000));
  v6 = vmlaq_f32(vmlaq_f32(v2, vdupq_n_s32(0xBF317000), v5), vdupq_n_s32(0xB805FDF4), v5);
  v7 = vshlq_n_s32(v4, 0x17uLL);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v8 = vaddq_s32(v7, v4);
  v9 = vsubq_s32(v4, v7);
  v10 = vaddq_f32(v8, v9);
  v11 = vmulq_f32(v6, v6);
  v12 = vaddq_f32(v10, vmlaq_f32(vmulq_f32(v10, vmulq_f32(v11, vmlaq_f32(v4, v11, vmlaq_f32(vdupq_n_s32(0x3D2AAA72u), vdupq_n_s32(0x3AB6A8A3u), v11)))), vsubq_f32(v8, v9), vmlaq_f32(v6, v6, vmulq_f32(v11, vmlaq_f32(vdupq_n_s32(0x3E2AAA57u), vdupq_n_s32(0x3C091461u), v11)))));
  if ((vmaxvq_u32(v3) & 0x80000000) != 0)
  {
    v13 = 0;
    v16 = v3;
    v17 = v1;
    do
    {
      v21 = v3;
      if (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3))))
      {
        v19 = v1;
        v18 = v12;
        v14 = coshf(*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3))));
        v3 = v16;
        v1 = v17;
        v20 = v18;
        *(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3))) = v14;
        v12 = v20;
      }

      ++v13;
    }

    while (v13 != 4);
  }

  return v12;
}

simd_float4 _simd_tanh_f4(simd_float4 x)
{
  v1.i64[0] = 0x8000000080000000;
  v1.i64[1] = 0x8000000080000000;
  v2 = vandq_s8(x, v1);
  v3 = vabsq_f32(x);
  v4 = vminq_f32(vaddq_f32(v3, v3), vdupq_n_s32(0x42B17217u));
  v5 = vcvtnq_s32_f32(vmulq_f32(v4, vdupq_n_s32(0x3FB8AA3Bu)));
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v7 = vaddq_s32(vshlq_n_s32(v5, 0x17uLL), v6);
  v8 = vcvtq_f32_s32(v5);
  v9 = vmlaq_f32(vmlaq_f32(v4, vdupq_n_s32(0xBF318000), v8), vdupq_n_s32(0x395E8083u), v8);
  v10 = vcvtq_f32_s32(vtstq_s32(v5, v5));
  v11 = vmulq_f32(vsubq_f32(vmlaq_f32(v9, vmulq_f32(v9, v9), vmlaq_f32(v6, vmlaq_f32(vdupq_n_s32(0x3E2AAAAAu), vmlaq_f32(vdupq_n_s32(0x3D2AA9C1u), vmlaq_f32(vdupq_n_s32(0x3C088908u), vmlaq_f32(vdupq_n_s32(0x3AB743CEu), vdupq_n_s32(0x39506967u), v9), v9), v9), v9), v9)), v10), v7);
  v12 = vaddq_f32(vaddq_f32(v11, v11), v10);
  v10.i64[0] = 0x4000000040000000;
  v10.i64[1] = 0x4000000040000000;
  return vorrq_s8(v2, vdivq_f32(v12, vaddq_f32(v12, v10)));
}

__complex_double ctanl(__complex_double a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = ctanhl(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

__complex_float ctanf(__complex_float a1)
{
  v1 = a1.c[0];
  v5.c[0] = -a1.c[1];
  v5.c[1] = v1;
  v2 = ctanhf(v5);
  v3 = -v2.c[0];
  v4 = v2.c[1];
  result.c[1] = v3;
  result.c[0] = v4;
  return result;
}

__int16 _simd_orient_vh2@<H0>(__int32 a1@<W0>, __int32 a2@<W1>, float16x4_t a3@<D0>, float16x4_t a4@<D1>)
{
  a3.i32[0] = a1;
  a4.i32[0] = a2;
  _D0 = vmul_f32(vrev64_s32(*&vcvtq_f32_f16(a4)), *&vcvtq_f32_f16(a3));
  _D0.i32[0] = vsub_f32(_D0, vdup_lane_s32(_D0, 1)).u32[0];
  __asm { FCVT            H0, S0 }

  return result;
}

__int16 _simd_orient_ph2@<H0>(__int32 a1@<W0>, __int32 a2@<W1>, __int32 a3@<W2>, float16x4_t a4@<D0>)
{
  a4.i32[0] = a1;
  v14 = vcvtq_f32_f16(a4).u64[0];
  a4.i32[0] = a2;
  v15 = vcvtq_f32_f16(a4).u64[0];
  a4.i32[0] = a3;
  v16 = vcvtq_f32_f16(a4).u64[0];
  v17 = vsub_f32(v14, v16);
  v18 = vsub_f32(v15, v16);
  v19 = vmul_lane_f32(v17, v18, 1);
  v20 = vmul_lane_f32(v18, v17, 1);
  LODWORD(_S1) = vsub_f32(v19, v20).u32[0];
  if (v19.f32[0] <= 0.0)
  {
    if (v19.f32[0] >= 0.0 || v20.f32[0] >= 0.0)
    {
      goto LABEL_26;
    }

    v22 = -v19.f32[0] - v20.f32[0];
  }

  else
  {
    if (v20.f32[0] <= 0.0)
    {
      goto LABEL_26;
    }

    LODWORD(v22) = vadd_f32(v19, v20).u32[0];
  }

  if (_S1 < (v22 * 0.0014687) && (v22 * 0.0014687) > -_S1)
  {
    v112 = v13;
    v113 = v12;
    v114 = v11;
    v115 = v10;
    v116 = v9;
    v117 = v8;
    v118 = v7;
    v119 = v6;
    v120 = v4;
    v121 = v5;
    v24 = vrev64_s32(v14);
    v25 = vrev64_s32(v16);
    v26 = vsub_f32(v24, v25);
    v27 = vmul_f32(v26, v18);
    v28 = vdup_n_s32(0x45800001u);
    v29 = vmul_f32(v26, v28);
    v30 = vsub_f32(v29, vsub_f32(v29, v26));
    v31 = vsub_f32(v26, v30);
    v32 = vmul_f32(v18, v28);
    _D3 = vsub_f32(v32, vsub_f32(v32, v18));
    _D2 = vsub_f32(v18, _D3);
    v35 = vneg_f32(v30);
    v36 = vneg_f32(v31);
    v37 = vmla_f32(vneg_f32(vmls_f32(vmls_f32(vmls_f32(v27, _D3, v30), _D3, v31), _D2, v30)), _D2, v31);
    v38 = v37.f32[1] - v37.f32[0];
    _S1 = ((v37.f32[1] - (v37.f32[1] - v37.f32[0])) - v37.f32[0]) + (v37.f32[1] - ((v37.f32[1] - v37.f32[0]) + (v37.f32[1] - (v37.f32[1] - v37.f32[0]))));
    v39 = v27.f32[1] + v38;
    v30.f32[0] = (v38 - ((v27.f32[1] + v38) - v27.f32[1])) + (v27.f32[1] - ((v27.f32[1] + v38) - ((v27.f32[1] + v38) - v27.f32[1])));
    v40 = v30.f32[0] - v27.f32[0];
    v111[0] = _S1;
    v111[1] = ((v30.f32[0] - (v30.f32[0] - v27.f32[0])) - v27.f32[0]) + (v30.f32[0] - ((v30.f32[0] - v27.f32[0]) + (v30.f32[0] - (v30.f32[0] - v27.f32[0]))));
    v27.f32[0] = v39 + (v30.f32[0] - v27.f32[0]);
    v111[2] = (v40 - (v27.f32[0] - v39)) + (v39 - (v27.f32[0] - (v27.f32[0] - v39)));
    v111[3] = v27.f32[0];
    for (i = 1; i != 4; ++i)
    {
      _S1 = _S1 + v111[i];
    }

    if (_S1 < (v22 * 0.00097942) && (v22 * 0.00097942) > -_S1)
    {
      v43 = vsub_f32(v24, v26);
      v44 = vsub_f32(v15, v18);
      v45 = vadd_f32(vsub_f32(v43, v25), vsub_f32(v24, vadd_f32(v26, v43)));
      v46 = vadd_f32(vsub_f32(v44, v16), vsub_f32(v15, vadd_f32(v18, v44)));
      *v47.f32 = vrev64_s32(v45);
      *&v47.u32[2] = v46;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v47)))))
      {
        v48 = vmul_f32(v18, v45);
        v49 = vmla_f32(v48, v46, v26);
        v50 = (fabsf(_S1) * 0.0014668) + (v22 * 0.0000021532);
        _S1 = vsub_f32(vdup_lane_s32(v49, 1), v49).f32[0] + _S1;
        if (_S1 < v50 && v50 > -_S1)
        {
          v102 = v45.f32[1];
          v52 = vmuls_lane_f32(4096.0, v45, 1);
          _S10 = v52 - (v52 - v45.f32[1]);
          _S11 = v45.f32[1] - _S10;
          __asm
          {
            FMLS            S5, S10, V3.S[1]
            FMLS            S5, S11, V3.S[1]
            FMLA            S1, S11, V2.S[1]
          }

          v62 = (4096.0 * v45.f32[0]) - ((4096.0 * v45.f32[0]) - v45.f32[0]);
          v63 = v45.f32[0] - v62;
          v64 = -((((v48.f32[0] - (_D3.f32[0] * v62)) - (_D3.f32[0] * (v45.f32[0] - v62))) - (_D2.f32[0] * v62)) - ((v45.f32[0] - v62) * _D2.f32[0]));
          v65 = _S1 - v64;
          v66 = ((_S1 - (_S1 - v64)) - v64) + (_S1 - ((_S1 - v64) + (_S1 - (_S1 - v64))));
          v67 = v48.f32[1] + v65;
          v68 = (v65 - ((v48.f32[1] + v65) - v48.f32[1])) + (v48.f32[1] - ((v48.f32[1] + v65) - ((v48.f32[1] + v65) - v48.f32[1])));
          v69 = v68 - v48.f32[0];
          v104 = v66;
          v105 = ((v68 - (v68 - v48.f32[0])) - v48.f32[0]) + (v68 - ((v68 - v48.f32[0]) + (v68 - (v68 - v48.f32[0]))));
          v70 = v67 + (v68 - v48.f32[0]);
          v106 = (v69 - (v70 - v67)) + (v67 - (v70 - (v70 - v67)));
          v107 = v70;
          v99 = v36;
          v100 = v31;
          v98 = v35;
          v101 = v45;
          v103 = v46;
          v71 = sub_299E14DE8(4, v111, 4, &v104, v110);
          v72 = vmul_f32(v26, v103);
          v73 = vmuls_lane_f32(4096.0, v103, 1);
          _S15 = v73 - (v73 - v103.f32[1]);
          _S8 = v103.f32[1] - _S15;
          _V4.S[1] = v98.i32[1];
          _V16.S[1] = v99.i32[1];
          __asm
          {
            FMLA            S3, S15, V4.S[1]
            FMLA            S3, S15, V16.S[1]
          }

          _V6.S[1] = v100.i32[1];
          __asm { FMLA            S0, S8, V6.S[1] }

          v82 = (4096.0 * v103.f32[0]) - ((4096.0 * v103.f32[0]) - v103.f32[0]);
          v83 = -((((v72.f32[0] + (v98.f32[0] * v82)) + (v99.f32[0] * v82)) + (v98.f32[0] * (v103.f32[0] - v82))) - (v100.f32[0] * (v103.f32[0] - v82)));
          v84 = _S0 - v83;
          v85 = (v84 - ((v72.f32[1] + v84) - v72.f32[1])) + (v72.f32[1] - ((v72.f32[1] + v84) - ((v72.f32[1] + v84) - v72.f32[1])));
          v104 = ((_S0 - (_S0 - v83)) - v83) + (_S0 - ((_S0 - v83) + (_S0 - (_S0 - v83))));
          v105 = ((v85 - (v85 - v72.f32[0])) - v72.f32[0]) + (v85 - ((v85 - v72.f32[0]) + (v85 - (v85 - v72.f32[0]))));
          v106 = ((v85 - v72.f32[0]) - (((v72.f32[1] + v84) + (v85 - v72.f32[0])) - (v72.f32[1] + v84))) + ((v72.f32[1] + v84) - (((v72.f32[1] + v84) + (v85 - v72.f32[0])) - (((v72.f32[1] + v84) + (v85 - v72.f32[0])) - (v72.f32[1] + v84))));
          v107 = (v72.f32[1] + (_S0 - v83)) + (v85 - v72.f32[0]);
          v86 = sub_299E14DE8(v71, v110, 4, &v104, v109);
          v87 = vmuls_lane_f32(v102, v103, 1);
          v88 = -((((v87 - (_S10 * _S15)) - (_S11 * _S15)) - (_S10 * _S8)) - (_S11 * _S8));
          v89 = vmul_f32(v101, v103).f32[0];
          v90 = -((((v89 - (v62 * v82)) - (v63 * v82)) - (v62 * (v103.f32[0] - v82))) - (v63 * (v103.f32[0] - v82)));
          v91 = v88 - v90;
          v92 = ((v88 - (v88 - v90)) - v90) + (v88 - ((v88 - v90) + (v88 - (v88 - v90))));
          v93 = v87 + v91;
          v94 = (v91 - ((v87 + v91) - v87)) + (v87 - ((v87 + v91) - ((v87 + v91) - v87)));
          v95 = v94 - v89;
          v104 = v92;
          v105 = ((v94 - (v94 - v89)) - v89) + (v94 - ((v94 - v89) + (v94 - (v94 - v89))));
          v96 = v93 + (v94 - v89);
          v106 = (v95 - (v96 - v93)) + (v93 - (v96 - (v96 - v93)));
          v107 = v96;
          _S1 = v108[sub_299E14DE8(v86, v109, 4, &v104, v108) - 1];
        }
      }
    }
  }

LABEL_26:
  __asm { FCVT            H0, S1 }

  return result;
}

__int16 _simd_orient_vh3@<H0>(float16x4_t a1@<D0>, float16x4_t a2@<D1>, float16x4_t a3@<D2>)
{
  v3 = vcvtq_f32_f16(a1);
  v4 = vcvtq_f32_f16(a2);
  v5 = vcvtq_f32_f16(a3);
  v6 = vmulq_f32(vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v7 = vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL));
  v8 = vmulq_f32(vsubq_f32(v6, v7), v3);
  _S2 = v8.f32[2] + vaddv_f32(*v8.f32);
  v10 = vmulq_f32(vabsq_f32(v3), vaddq_f32(vabsq_f32(v6), vabsq_f32(v7)));
  v11 = (v10.f32[2] + vaddv_f32(*v10.f32)) * 0.0034313;
  if (_S2 > v11 || v11 < -_S2)
  {
    __asm { FCVT            H0, S2 }
  }

  else
  {
    _D0 = (vmuls_lane_f32(v3.f32[0], *v4.i8, 1) - vmuls_lane_f32(*v4.i32, *v3.f32, 1)) * *&v5.i32[2] + (vmuls_lane_f32(*v4.i32, *v5.i8, 1) - vmuls_lane_f32(*v5.i32, *v4.i8, 1)) * v3.f32[2] + (vmuls_lane_f32(*v5.i32, *v3.f32, 1) - vmuls_lane_f32(v3.f32[0], *v5.i8, 1)) * *&v4.i32[2];
    __asm { FCVT            H0, D0 }
  }

  return result;
}

__int16 _simd_orient_ph3@<H0>(float16x4_t a1@<D0>, float16x4_t a2@<D1>, float16x4_t a3@<D2>, float16x4_t a4@<D3>)
{
  v14 = vcvtq_f32_f16(a1);
  v15 = vcvtq_f32_f16(a2);
  v16 = vcvtq_f32_f16(a3);
  v17 = vcvtq_f32_f16(a4);
  v18 = vsubq_f32(v14, v17);
  v19 = vsubq_f32(v15, v17);
  v20 = vsubq_f32(v16, v17);
  v21 = vmulq_f32(vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL), vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
  v22 = vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL));
  v23 = vmulq_f32(v18, vsubq_f32(v21, v22));
  _S4 = v23.f32[2] + vaddv_f32(*v23.f32);
  v25 = vmulq_f32(vabdq_f32(v14, v17), vaddq_f32(vabsq_f32(v21), vabsq_f32(v22)));
  v26 = v25.f32[2] + vaddv_f32(*v25.f32);
  if (_S4 <= (v26 * 0.0034313) && (v26 * 0.0034313) >= -_S4)
  {
    v360 = v13;
    v361 = v12;
    v362 = v11;
    v363 = v10;
    v364 = v9;
    v365 = v8;
    v366 = v7;
    v367 = v6;
    v368 = v4;
    v369 = v5;
    v304 = v26;
    v287 = v14.f32[1];
    v28 = v14.f32[1] - v17.f32[1];
    v288 = v15.f32[1];
    v291 = v17.f32[1];
    v289 = v16.f32[1];
    v29 = v16.f32[1] - v17.f32[1];
    v292 = v14;
    v30 = (v16.f32[1] - v17.f32[1]) * *v19.i32;
    v31 = (4096.0 * *v19.i32) - ((4096.0 * *v19.i32) - *v19.i32);
    v32 = ((v16.f32[1] - v17.f32[1]) * 4096.0) - (((v16.f32[1] - v17.f32[1]) * 4096.0) - (v16.f32[1] - v17.f32[1]));
    v33 = (v16.f32[1] - v17.f32[1]) - v32;
    v307 = v31;
    v308 = *v19.i32 - v31;
    v34 = -((((v30 - (v31 * v32)) - ((*v19.i32 - v31) * v32)) - (v31 * v33)) - ((*v19.i32 - v31) * v33));
    v309 = v15.f32[1] - v17.f32[1];
    v35 = (v15.f32[1] - v17.f32[1]) * *v20.i32;
    v36 = (4096.0 * *v20.i32) - ((4096.0 * *v20.i32) - *v20.i32);
    v37 = *v20.i32 - v36;
    v306 = ((v15.f32[1] - v17.f32[1]) * 4096.0) - (((v15.f32[1] - v17.f32[1]) * 4096.0) - (v15.f32[1] - v17.f32[1]));
    v303 = (v15.f32[1] - v17.f32[1]) - v306;
    v38 = -((((v35 - (v36 * v306)) - ((*v20.i32 - v36) * v306)) - (v36 * v303)) - ((*v20.i32 - v36) * v303));
    v39 = v34 - v38;
    v40 = ((v34 - (v34 - v38)) - v38) + (v34 - ((v34 - v38) + (v34 - (v34 - v38))));
    v41 = v30 + v39;
    v42 = (v39 - ((v30 + v39) - v30)) + (v30 - ((v30 + v39) - ((v30 + v39) - v30)));
    v294 = v15;
    v296 = v17;
    v290 = v14.f32[2];
    v359[0] = v40;
    v359[1] = ((v42 - (v42 - v35)) - v35) + (v42 - ((v42 - v35) + (v42 - (v42 - v35))));
    v283 = v35;
    v284 = v15.f32[2];
    v359[2] = ((v42 - v35) - ((v41 + (v42 - v35)) - v41)) + (v41 - ((v41 + (v42 - v35)) - ((v41 + (v42 - v35)) - v41)));
    v359[3] = v41 + (v42 - v35);
    v298 = v16;
    v285 = v16.f32[2];
    v286 = v17.f32[2];
    v310 = v16.f32[2] - v17.f32[2];
    v311 = v15.f32[2] - v17.f32[2];
    v300 = v14.f32[2] - v17.f32[2];
    v312 = v19;
    v314 = v20;
    v316 = v18;
    v43 = sub_299E15000(4, v359, v356, v14.f32[2] - v17.f32[2]);
    v301 = v28;
    v44 = v28 * v314.f32[0];
    v45 = (v28 * 4096.0) - ((v28 * 4096.0) - v28);
    v46 = v28 - v45;
    v279 = v36;
    v280 = v37;
    v47 = -((((v44 - (v36 * v45)) - (v37 * v45)) - (v36 * v46)) - (v37 * v46));
    v48 = v29;
    v49 = (4096.0 * v316.f32[0]) - ((4096.0 * v316.f32[0]) - v316.f32[0]);
    v278 = v32;
    v50 = -(((((v29 * v316.f32[0]) - (v49 * v32)) - ((v316.f32[0] - v49) * v32)) - (v49 * v33)) - ((v316.f32[0] - v49) * v33));
    v51 = v47 - v50;
    v52 = ((v47 - (v47 - v50)) - v50) + (v47 - ((v47 - v50) + (v47 - (v47 - v50))));
    v53 = v44 + v51;
    v54 = (v51 - ((v44 + v51) - v44)) + (v44 - ((v44 + v51) - ((v44 + v51) - v44)));
    v55 = v54 - (v29 * v316.f32[0]);
    v56 = v29 * v316.f32[0];
    v358[0] = v52;
    v358[1] = ((v54 - v55) - (v29 * v316.f32[0])) + (v54 - (v55 + (v54 - v55)));
    v358[2] = (v55 - ((v53 + v55) - v53)) + (v53 - ((v53 + v55) - ((v53 + v55) - v53)));
    v358[3] = v53 + v55;
    v57 = sub_299E15000(4, v358, v355, v311);
    v281 = v49;
    v282 = v316.f32[0] - v49;
    v58 = (((v309 * v316.f32[0]) - (v49 * v306)) - ((v316.f32[0] - v49) * v306)) - (v49 * v303);
    v59 = v45;
    v60 = -(v58 - (v282 * v303));
    v61 = v301;
    v62 = -(((((v301 * v312.f32[0]) - (v307 * v45)) - (v308 * v45)) - (v307 * v46)) - (v308 * v46));
    v63 = v60 - v62;
    v64 = ((v60 - (v60 - v62)) - v62) + (v60 - ((v60 - v62) + (v60 - (v60 - v62))));
    v65 = (v309 * v316.f32[0]) + v63;
    v66 = (v63 - (v65 - (v309 * v316.f32[0]))) + ((v309 * v316.f32[0]) - (v65 - (v65 - (v309 * v316.f32[0]))));
    v67 = v66 - (v301 * v312.f32[0]);
    v357[0] = v64;
    v357[1] = ((v66 - v67) - (v301 * v312.f32[0])) + (v66 - (v67 + (v66 - v67)));
    v357[2] = (v67 - ((v65 + v67) - v65)) + (v65 - ((v65 + v67) - ((v65 + v67) - v65)));
    v357[3] = v65 + v67;
    v68 = sub_299E15000(4, v357, v354, v310);
    v69 = sub_299E14DE8(v43, v356, v57, v355, v353);
    v70 = sub_299E14DE8(v69, v353, v68, v354, &v351);
    v71 = v70;
    _S4 = v351;
    if (v70 < 2)
    {
      v74 = v304;
    }

    else
    {
      v72 = v70 - 1;
      v73 = &v352;
      v74 = v304;
      do
      {
        v75 = *v73++;
        _S4 = _S4 + v75;
        --v72;
      }

      while (v72);
    }

    v76 = _S4 < (v74 * 0.0014715) && (v74 * 0.0014715) > -_S4;
    v77 = v314.f32[0];
    if (v76)
    {
      v78 = vsubq_f32(v292, v316);
      v79 = vaddq_f32(vsubq_f32(v78, v296), vsubq_f32(v292, vaddq_f32(v316, v78))).f32[0];
      v80 = vsubq_f32(v294, v312);
      LODWORD(v81) = vaddq_f32(vsubq_f32(v80, v296), vsubq_f32(v294, vaddq_f32(v312, v80))).u32[0];
      v82 = vsubq_f32(v298, v314);
      LODWORD(v83) = vaddq_f32(vsubq_f32(v82, v296), vsubq_f32(v298, vaddq_f32(v314, v82))).u32[0];
      v84 = ((v287 - v301) - v291) + (v287 - (v301 + (v287 - v301)));
      v85 = ((v288 - v309) - v291) + (v288 - (v309 + (v288 - v309)));
      v86 = ((v289 - v48) - v291) + (v289 - (v48 + (v289 - v48)));
      v87 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
      v88 = ((v284 - v311) - v286) + (v284 - (v311 + (v284 - v311)));
      v89 = ((v285 - v310) - v286) + (v285 - (v310 + (v285 - v310)));
      if (v79 != 0.0 || v81 != 0.0 || v83 != 0.0 || v84 != 0.0 || v85 != 0.0 || v86 != 0.0 || v87 != 0.0 || v88 != 0.0 || v89 != 0.0)
      {
        v90 = (fabsf(_S4) * 0.0014668) + (v74 * 0.0000062324);
        v91 = v48 * v81;
        v92 = v314.f32[0] * v85;
        v93 = v301 * v83;
        v94 = v316.f32[0] * v86;
        v95 = v309 * v79;
        v96 = v312.f32[0] * v84;
        _S4 = (((-((v301 * v312.f32[0]) - (v316.f32[0] * v309)) * v89) + (v310 * (((v309 * v79) + (v316.f32[0] * v85)) - ((v312.f32[0] * v84) + (v301 * v81))))) + (((-(v283 - (v312.f32[0] * v48)) * v87) + (v300 * (((v48 * v81) + (v312.f32[0] * v86)) - ((v314.f32[0] * v85) + (v309 * v83))))) + ((-(v56 - (v314.f32[0] * v301)) * v88) + (v311 * (((v301 * v83) + (v314.f32[0] * v84)) - ((v316.f32[0] * v86) + (v48 * v79))))))) + _S4;
        if (_S4 < v90 && v90 > -_S4)
        {
          v299 = ((v285 - v310) - v286) + (v285 - (v310 + (v285 - v310)));
          if (v79 == 0.0)
          {
            if (v84 == 0.0)
            {
              v346 = 0.0;
              v342 = 0.0;
              v98 = 1;
              goto LABEL_37;
            }

            v346 = -((((-(v84 * v312.f32[0]) - (((v84 * -4096.0) - (v84 + (v84 * -4096.0))) * v307)) - ((-v84 - ((v84 * -4096.0) - (v84 + (v84 * -4096.0)))) * v307)) - (((v84 * -4096.0) - (v84 + (v84 * -4096.0))) * v308)) - ((-v84 - ((v84 * -4096.0) - (v84 + (v84 * -4096.0)))) * v308));
            v347 = -(v84 * v312.f32[0]);
            v342 = -(((((v314.f32[0] * v84) - (((v84 * 4096.0) - ((v84 * 4096.0) - v84)) * v279)) - ((v84 - ((v84 * 4096.0) - ((v84 * 4096.0) - v84))) * v279)) - (((v84 * 4096.0) - ((v84 * 4096.0) - v84)) * v280)) - ((v84 - ((v84 * 4096.0) - ((v84 * 4096.0) - v84))) * v280));
            v343 = v314.f32[0] * v84;
          }

          else
          {
            v99 = (v79 * 4096.0) - ((v79 * 4096.0) - v79);
            v100 = -((((v95 - (v99 * v306)) - ((v79 - v99) * v306)) - (v99 * v303)) - ((v79 - v99) * v303));
            if (v84 != 0.0)
            {
              v101 = (v84 * 4096.0) - ((v84 * 4096.0) - v84);
              v102 = -((((v96 - (v101 * v307)) - ((v84 - v101) * v307)) - (v101 * v308)) - ((v84 - v101) * v308));
              v103 = v100 - v102;
              v104 = ((v100 - (v100 - v102)) - v102) + (v100 - ((v100 - v102) + (v100 - (v100 - v102))));
              v105 = v95 + v103;
              v106 = (v103 - ((v95 + v103) - v95)) + (v95 - ((v95 + v103) - ((v95 + v103) - v95)));
              v107 = v106 - v96;
              v346 = v104;
              v347 = ((v106 - (v106 - v96)) - v96) + (v106 - ((v106 - v96) + (v106 - (v106 - v96))));
              v108 = v105 + (v106 - v96);
              v109 = (v105 + v107) - v105;
              v110 = (v105 + v107) - v109;
              v111 = v107 - v109;
              v77 = v314.f32[0];
              v348 = v111 + (v105 - v110);
              v349 = v108;
              v112 = -(((((v314.f32[0] * v84) - (v101 * v279)) - ((v84 - v101) * v279)) - (v101 * v280)) - ((v84 - v101) * v280));
              v113 = -(((((v48 * v79) + (-v99 * v278)) + (-(v79 - v99) * v278)) + (-v99 * v33)) - ((v79 - v99) * v33));
              v114 = v112 - v113;
              v115 = ((v112 - (v112 - v113)) - v113) + (v112 - ((v112 - v113) + (v112 - (v112 - v113))));
              v116 = (v314.f32[0] * v84) + v114;
              v117 = (v114 - (v116 - (v314.f32[0] * v84))) + ((v314.f32[0] * v84) - (v116 - (v116 - (v314.f32[0] * v84))));
              v118 = v117 - (v48 * v79);
              v342 = v115;
              v343 = ((v117 - v118) - (v48 * v79)) + (v117 - (v118 + (v117 - v118)));
              v344 = (v118 - ((v116 + v118) - v116)) + (v116 - ((v116 + v118) - ((v116 + v118) - v116)));
              v345 = v116 + v118;
              v98 = 4;
LABEL_37:
              if (v81 == 0.0)
              {
                if (v85 == 0.0)
                {
                  v338 = 0.0;
                  v334 = 0.0;
                  v119 = 1;
                  goto LABEL_45;
                }

                v338 = -((((-(v85 * v77) - (((v85 * -4096.0) - (v85 + (v85 * -4096.0))) * v279)) - ((-v85 - ((v85 * -4096.0) - (v85 + (v85 * -4096.0)))) * v279)) - (((v85 * -4096.0) - (v85 + (v85 * -4096.0))) * v280)) - ((-v85 - ((v85 * -4096.0) - (v85 + (v85 * -4096.0)))) * v280));
                v339 = -(v85 * v77);
                v334 = -(((((v316.f32[0] * v85) - (((v85 * 4096.0) - ((v85 * 4096.0) - v85)) * v281)) - ((v85 - ((v85 * 4096.0) - ((v85 * 4096.0) - v85))) * v281)) - (((v85 * 4096.0) - ((v85 * 4096.0) - v85)) * v282)) - ((v85 - ((v85 * 4096.0) - ((v85 * 4096.0) - v85))) * v282));
                v335 = v316.f32[0] * v85;
              }

              else
              {
                v120 = (v81 * 4096.0) - ((v81 * 4096.0) - v81);
                v121 = -((((v91 - (v120 * v278)) - ((v81 - v120) * v278)) - (v120 * v33)) - ((v81 - v120) * v33));
                if (v85 != 0.0)
                {
                  v122 = (v85 * 4096.0) - ((v85 * 4096.0) - v85);
                  v123 = -((((v92 - (v122 * v279)) - ((v85 - v122) * v279)) - (v122 * v280)) - ((v85 - v122) * v280));
                  v124 = v121 - v123;
                  v125 = ((v121 - (v121 - v123)) - v123) + (v121 - ((v121 - v123) + (v121 - (v121 - v123))));
                  v126 = v91 + v124;
                  v127 = (v124 - ((v91 + v124) - v91)) + (v91 - ((v91 + v124) - ((v91 + v124) - v91)));
                  v128 = v127 - v92;
                  v338 = v125;
                  v339 = ((v127 - (v127 - v92)) - v92) + (v127 - ((v127 - v92) + (v127 - (v127 - v92))));
                  v129 = v126 + (v127 - v92);
                  v340 = (v128 - (v129 - v126)) + (v126 - (v129 - (v129 - v126)));
                  v341 = v129;
                  v130 = -(((((v316.f32[0] * v85) - (v122 * v281)) - ((v85 - v122) * v281)) - (v122 * v282)) - ((v85 - v122) * v282));
                  v131 = -(((((v301 * v81) + (-v120 * v59)) + (-(v81 - v120) * v59)) + (-v120 * v46)) - ((v81 - v120) * v46));
                  v132 = v130 - v131;
                  v133 = ((v130 - (v130 - v131)) - v131) + (v130 - ((v130 - v131) + (v130 - (v130 - v131))));
                  v134 = (v316.f32[0] * v85) + v132;
                  v135 = (v132 - (v134 - (v316.f32[0] * v85))) + ((v316.f32[0] * v85) - (v134 - (v134 - (v316.f32[0] * v85))));
                  v136 = v135 - (v301 * v81);
                  v334 = v133;
                  v335 = ((v135 - v136) - (v301 * v81)) + (v135 - (v136 + (v135 - v136)));
                  v336 = (v136 - ((v134 + v136) - v134)) + (v134 - ((v134 + v136) - ((v134 + v136) - v134)));
                  v337 = v134 + v136;
                  v119 = 4;
LABEL_45:
                  v302 = ((v284 - v311) - v286) + (v284 - (v311 + (v284 - v311)));
                  v315 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                  v305 = v83;
                  v297 = v81;
                  v295 = ((v289 - v48) - v291) + (v289 - (v48 + (v289 - v48)));
                  v293 = v79;
                  if (v83 == 0.0)
                  {
                    v137 = ((v287 - v61) - v291) + (v287 - (v61 + (v287 - v61)));
                    if (v86 == 0.0)
                    {
                      v330 = 0.0;
                      v326 = 0.0;
                      v138 = 1;
                    }

                    else
                    {
                      v330 = -((((-(v86 * v316.f32[0]) - (((v86 * -4096.0) - (v86 + (v86 * -4096.0))) * v281)) - ((-v86 - ((v86 * -4096.0) - (v86 + (v86 * -4096.0)))) * v281)) - (((v86 * -4096.0) - (v86 + (v86 * -4096.0))) * v282)) - ((-v86 - ((v86 * -4096.0) - (v86 + (v86 * -4096.0)))) * v282));
                      v331 = -(v86 * v316.f32[0]);
                      v326 = -(((((v312.f32[0] * v86) - (((v86 * 4096.0) - ((v86 * 4096.0) - v86)) * v307)) - ((v86 - ((v86 * 4096.0) - ((v86 * 4096.0) - v86))) * v307)) - (((v86 * 4096.0) - ((v86 * 4096.0) - v86)) * v308)) - ((v86 - ((v86 * 4096.0) - ((v86 * 4096.0) - v86))) * v308));
                      v327 = v312.f32[0] * v86;
                      v138 = 2;
                    }
                  }

                  else
                  {
                    v139 = (v83 * 4096.0) - ((v83 * 4096.0) - v83);
                    v140 = -((((v93 - (v139 * v59)) - ((v83 - v139) * v59)) - (v139 * v46)) - ((v83 - v139) * v46));
                    v137 = ((v287 - v61) - v291) + (v287 - (v61 + (v287 - v61)));
                    if (v86 == 0.0)
                    {
                      v330 = -((((v93 - (v139 * v59)) - ((v83 - v139) * v59)) - (v139 * v46)) - ((v83 - v139) * v46));
                      v331 = v93;
                      v326 = -((((-(v83 * v309) - (((v83 * -4096.0) - (v83 + (v83 * -4096.0))) * v306)) - ((-v83 - ((v83 * -4096.0) - (v83 + (v83 * -4096.0)))) * v306)) - (((v83 * -4096.0) - (v83 + (v83 * -4096.0))) * v303)) - ((-v83 - ((v83 * -4096.0) - (v83 + (v83 * -4096.0)))) * v303));
                      v327 = -(v83 * v309);
                      v138 = 2;
                    }

                    else
                    {
                      v141 = (v86 * 4096.0) - ((v86 * 4096.0) - v86);
                      v142 = -((((v94 - (v141 * v281)) - ((v86 - v141) * v281)) - (v141 * v282)) - ((v86 - v141) * v282));
                      v143 = v140 - v142;
                      v144 = ((v140 - (v140 - v142)) - v142) + (v140 - ((v140 - v142) + (v140 - (v140 - v142))));
                      v145 = v93 + v143;
                      v146 = (v143 - ((v93 + v143) - v93)) + (v93 - ((v93 + v143) - ((v93 + v143) - v93)));
                      v147 = v146 - v94;
                      v330 = v144;
                      v331 = ((v146 - (v146 - v94)) - v94) + (v146 - ((v146 - v94) + (v146 - (v146 - v94))));
                      v148 = v145 + (v146 - v94);
                      v332 = (v147 - (v148 - v145)) + (v145 - (v148 - (v148 - v145)));
                      v333 = v148;
                      v149 = -(((((v312.f32[0] * v86) - (v141 * v307)) - ((v86 - v141) * v307)) - (v141 * v308)) - ((v86 - v141) * v308));
                      v150 = -(((((v309 * v83) + (-v139 * v306)) + (-(v83 - v139) * v306)) + (-v139 * v303)) - ((v83 - v139) * v303));
                      v151 = v149 - v150;
                      v152 = ((v149 - (v149 - v150)) - v150) + (v149 - ((v149 - v150) + (v149 - (v149 - v150))));
                      v153 = (v312.f32[0] * v86) + v151;
                      v154 = (v151 - (v153 - (v312.f32[0] * v86))) + ((v312.f32[0] * v86) - (v153 - (v153 - (v312.f32[0] * v86))));
                      v155 = v154 - (v309 * v83);
                      v326 = v152;
                      v327 = ((v154 - v155) - (v309 * v83)) + (v154 - (v155 + (v154 - v155)));
                      v328 = (v155 - ((v153 + v155) - v153)) + (v153 - ((v153 + v155) - ((v153 + v155) - v153)));
                      v329 = v153 + v155;
                      v138 = 4;
                    }
                  }

                  v156 = sub_299E14DE8(v119, &v338, v138, &v326, v325);
                  v157 = sub_299E15000(v156, v325, v317, v300);
                  v158 = &v351;
                  v159 = v350;
                  v160 = sub_299E14DE8(v71, &v351, v157, v317, v350);
                  v161 = sub_299E14DE8(v138, &v330, v98, &v342, v324);
                  v162 = sub_299E15000(v161, v324, v317, v311);
                  v163 = sub_299E14DE8(v160, v350, v162, v317, &v351);
                  v164 = sub_299E14DE8(v98, &v346, v119, &v334, v323);
                  v165 = sub_299E15000(v164, v323, v317, v310);
                  v166 = sub_299E14DE8(v163, &v351, v165, v317, v350);
                  if (v315 != 0.0)
                  {
                    v167 = sub_299E15000(4, v359, v318, v315);
                    v158 = v350;
                    v159 = &v351;
                    v166 = sub_299E14DE8(v166, v350, v167, v318, &v351);
                  }

                  if (v302 == 0.0)
                  {
                    v169 = v159;
                    v159 = v158;
                  }

                  else
                  {
                    v168 = sub_299E15000(4, v358, v318, v302);
                    v166 = sub_299E14DE8(v166, v159, v168, v318, v158);
                    v169 = v158;
                  }

                  if (v299 == 0.0)
                  {
                    v171 = v169;
                    v169 = v159;
                  }

                  else
                  {
                    v170 = sub_299E15000(4, v357, v318, v299);
                    v166 = sub_299E14DE8(v166, v169, v170, v318, v159);
                    v171 = v159;
                  }

                  v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                  v173 = v305;
                  v174 = v297;
                  v175 = v300;
                  v176 = v293;
                  v313 = v137;
                  if (v293 != 0.0)
                  {
                    if (v85 == 0.0)
                    {
                      v192 = v171;
                    }

                    else
                    {
                      v177 = v293 * v85;
                      v178 = (v293 * 4096.0) - ((v293 * 4096.0) - v293);
                      v179 = -(((((v293 * v85) - (v178 * ((v85 * 4096.0) - ((v85 * 4096.0) - v85)))) - ((v293 - v178) * ((v85 * 4096.0) - ((v85 * 4096.0) - v85)))) - (v178 * (v85 - ((v85 * 4096.0) - ((v85 * 4096.0) - v85))))) - ((v293 - v178) * (v85 - ((v85 * 4096.0) - ((v85 * 4096.0) - v85)))));
                      v180 = (v310 * 4096.0) - ((v310 * 4096.0) - v310);
                      v181 = (v179 * 4096.0) - ((v179 * 4096.0) - v179);
                      v182 = -(((((v310 * v179) - (v181 * v180)) - ((v179 - v181) * v180)) - (v181 * (v310 - v180))) - ((v179 - v181) * (v310 - v180)));
                      v183 = v310 * (v293 * v85);
                      v184 = ((v293 * v85) * 4096.0) - (((v293 * v85) * 4096.0) - (v293 * v85));
                      v185 = v177 - v184;
                      v186 = -((((v183 - (v184 * v180)) - ((v177 - v184) * v180)) - (v184 * (v310 - v180))) - ((v177 - v184) * (v310 - v180)));
                      v187 = (v310 * v179) + v186;
                      v319 = v182;
                      v320 = (v186 - (v187 - (v310 * v179))) + ((v310 * v179) - (v187 - (v187 - (v310 * v179))));
                      v321 = v187 - ((v183 + v187) - v183);
                      v322 = v183 + v187;
                      v188 = sub_299E14DE8(v166, v171, 4, &v319, v169);
                      v166 = v188;
                      if (v299 == 0.0)
                      {
                        v192 = v169;
                        v169 = v171;
                      }

                      else
                      {
                        v189 = (v299 * 4096.0) - ((v299 * 4096.0) - v299);
                        v190 = (v299 * v177) + (-v184 * v189);
                        v191 = (v299 * v179) - (((v190 + (-v185 * v189)) + (-v184 * (v299 - v189))) - (v185 * (v299 - v189)));
                        v319 = -(((((v299 * v179) + (-v181 * v189)) + (-(v179 - v181) * v189)) + (-v181 * (v299 - v189))) - ((v179 - v181) * (v299 - v189)));
                        v320 = (-(((v190 + (-v185 * v189)) + (-v184 * (v299 - v189))) - (v185 * (v299 - v189))) - (v191 - (v299 * v179))) + ((v299 * v179) - (v191 - (v191 - (v299 * v179))));
                        v321 = v191 - (((v299 * v177) + v191) - (v299 * v177));
                        v322 = (v299 * v177) + v191;
                        v166 = sub_299E14DE8(v188, v169, 4, &v319, v171);
                        v192 = v171;
                      }

                      v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                      v173 = v305;
                      v85 = ((v288 - v309) - v291) + (v288 - (v309 + (v288 - v309)));
                      v137 = v313;
                      v176 = v293;
                    }

                    v193 = ((v289 - v48) - v291) + (v289 - (v48 + (v289 - v48)));
                    if (v295 == 0.0)
                    {
                      v171 = v192;
                      v175 = v300;
                      v174 = v297;
                      goto LABEL_74;
                    }

                    v194 = -(v176 * v295);
                    v195 = (v176 * -4096.0) - (v176 + (v176 * -4096.0));
                    v196 = -((((v194 - (v195 * ((v295 * 4096.0) - ((v295 * 4096.0) - v295)))) - ((-v176 - v195) * ((v295 * 4096.0) - ((v295 * 4096.0) - v295)))) - (v195 * (v295 - ((v295 * 4096.0) - ((v295 * 4096.0) - v295))))) - ((-v176 - v195) * (v295 - ((v295 * 4096.0) - ((v295 * 4096.0) - v295)))));
                    v197 = (v311 * 4096.0) - ((v311 * 4096.0) - v311);
                    v198 = (v196 * 4096.0) - ((v196 * 4096.0) - v196);
                    v199 = -(((((v311 * v196) - (v198 * v197)) - ((v196 - v198) * v197)) - (v198 * (v311 - v197))) - ((v196 - v198) * (v311 - v197)));
                    v200 = (v194 * 4096.0) - ((v194 * 4096.0) - v194);
                    v201 = v194 - v200;
                    v202 = -(((((v311 * v194) - (v200 * v197)) - ((v194 - v200) * v197)) - (v200 * (v311 - v197))) - ((v194 - v200) * (v311 - v197)));
                    v203 = (v311 * v196) + v202;
                    v319 = v199;
                    v320 = (v202 - (v203 - (v311 * v196))) + ((v311 * v196) - (v203 - (v203 - (v311 * v196))));
                    v321 = v203 - (((v311 * v194) + v203) - (v311 * v194));
                    v322 = (v311 * v194) + v203;
                    v204 = sub_299E14DE8(v166, v192, 4, &v319, v169);
                    v166 = v204;
                    if (v302 == 0.0)
                    {
                      v171 = v169;
                      v169 = v192;
                    }

                    else
                    {
                      v205 = (v302 * 4096.0) - ((v302 * 4096.0) - v302);
                      v206 = (v302 * v194) + (-v200 * v205);
                      v207 = (v302 * v196) - (((v206 + (-v201 * v205)) + (-v200 * (v302 - v205))) - (v201 * (v302 - v205)));
                      v319 = -(((((v302 * v196) + (-v198 * v205)) + (-(v196 - v198) * v205)) + (-v198 * (v302 - v205))) - ((v196 - v198) * (v302 - v205)));
                      v320 = (-(((v206 + (-v201 * v205)) + (-v200 * (v302 - v205))) - (v201 * (v302 - v205))) - (v207 - (v302 * v196))) + ((v302 * v196) - (v207 - (v207 - (v302 * v196))));
                      v321 = v207 - (((v302 * v194) + v207) - (v302 * v194));
                      v322 = (v302 * v194) + v207;
                      v166 = sub_299E14DE8(v204, v169, 4, &v319, v192);
                      v171 = v192;
                    }

                    v175 = v300;
                    v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                    v173 = v305;
                    v85 = ((v288 - v309) - v291) + (v288 - (v309 + (v288 - v309)));
                    v137 = v313;
                    v174 = v297;
                  }

                  v193 = ((v289 - v48) - v291) + (v289 - (v48 + (v289 - v48)));
LABEL_74:
                  if (v174 != 0.0)
                  {
                    if (v193 == 0.0)
                    {
                      v223 = v171;
                    }

                    else
                    {
                      v208 = v174 * v193;
                      v209 = (v174 * 4096.0) - ((v174 * 4096.0) - v174);
                      v210 = -(((((v174 * v193) - (v209 * ((v193 * 4096.0) - ((v193 * 4096.0) - v193)))) - ((v174 - v209) * ((v193 * 4096.0) - ((v193 * 4096.0) - v193)))) - (v209 * (v193 - ((v193 * 4096.0) - ((v193 * 4096.0) - v193))))) - ((v174 - v209) * (v193 - ((v193 * 4096.0) - ((v193 * 4096.0) - v193)))));
                      v211 = (v175 * 4096.0) - ((v175 * 4096.0) - v175);
                      v212 = (v210 * 4096.0) - ((v210 * 4096.0) - v210);
                      v213 = -(((((v175 * v210) - (v212 * v211)) - ((v210 - v212) * v211)) - (v212 * (v175 - v211))) - ((v210 - v212) * (v175 - v211)));
                      v214 = (v208 * 4096.0) - ((v208 * 4096.0) - v208);
                      v215 = v208 - v214;
                      v216 = -(((((v175 * v208) - (v214 * v211)) - ((v208 - v214) * v211)) - (v214 * (v175 - v211))) - ((v208 - v214) * (v175 - v211)));
                      v217 = (v175 * v210) + v216;
                      v319 = v213;
                      v320 = (v216 - (v217 - (v175 * v210))) + ((v175 * v210) - (v217 - (v217 - (v175 * v210))));
                      v321 = v217 - (((v175 * v208) + v217) - (v175 * v208));
                      v322 = (v175 * v208) + v217;
                      v218 = sub_299E14DE8(v166, v171, 4, &v319, v169);
                      v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                      v166 = v218;
                      if (v315 == 0.0)
                      {
                        v223 = v169;
                        v169 = v171;
                      }

                      else
                      {
                        v219 = (v315 * 4096.0) - ((v315 * 4096.0) - v315);
                        v220 = (v315 * v208) + (-v214 * v219);
                        v221 = (v315 * v210) - (((v220 + (-v215 * v219)) + (-v214 * (v315 - v219))) - (v215 * (v315 - v219)));
                        v319 = -(((((v315 * v210) + (-v212 * v219)) + (-(v210 - v212) * v219)) + (-v212 * (v315 - v219))) - ((v210 - v212) * (v315 - v219)));
                        v320 = (-(((v220 + (-v215 * v219)) + (-v214 * (v315 - v219))) - (v215 * (v315 - v219))) - (v221 - (v315 * v210))) + ((v315 * v210) - (v221 - (v221 - (v315 * v210))));
                        v321 = v221 - (((v315 * v208) + v221) - (v315 * v208));
                        v322 = (v315 * v208) + v221;
                        v222 = sub_299E14DE8(v218, v169, 4, &v319, v171);
                        v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                        v166 = v222;
                        v223 = v171;
                      }

                      v175 = v300;
                      v85 = ((v288 - v309) - v291) + (v288 - (v309 + (v288 - v309)));
                      v137 = v313;
                      v174 = v297;
                    }

                    if (v137 == 0.0)
                    {
                      v171 = v223;
                      v173 = v305;
                    }

                    else
                    {
                      v224 = v137;
                      v225 = -(v174 * v137);
                      v226 = (v174 * -4096.0) - (v174 + (v174 * -4096.0));
                      v227 = -((((v225 - (v226 * ((v224 * 4096.0) - ((v224 * 4096.0) - v224)))) - ((-v174 - v226) * ((v224 * 4096.0) - ((v224 * 4096.0) - v224)))) - (v226 * (v224 - ((v224 * 4096.0) - ((v224 * 4096.0) - v224))))) - ((-v174 - v226) * (v224 - ((v224 * 4096.0) - ((v224 * 4096.0) - v224)))));
                      v228 = (v310 * 4096.0) - ((v310 * 4096.0) - v310);
                      v229 = (v227 * 4096.0) - ((v227 * 4096.0) - v227);
                      v230 = -(((((v310 * v227) - (v229 * v228)) - ((v227 - v229) * v228)) - (v229 * (v310 - v228))) - ((v227 - v229) * (v310 - v228)));
                      v231 = (v225 * 4096.0) - ((v225 * 4096.0) - v225);
                      v232 = v225 - v231;
                      v233 = -(((((v310 * v225) - (v231 * v228)) - ((v225 - v231) * v228)) - (v231 * (v310 - v228))) - ((v225 - v231) * (v310 - v228)));
                      v234 = (v310 * v227) + v233;
                      v319 = v230;
                      v320 = (v233 - (v234 - (v310 * v227))) + ((v310 * v227) - (v234 - (v234 - (v310 * v227))));
                      v321 = v234 - (((v310 * v225) + v234) - (v310 * v225));
                      v322 = (v310 * v225) + v234;
                      v235 = sub_299E14DE8(v166, v223, 4, &v319, v169);
                      v166 = v235;
                      if (v299 == 0.0)
                      {
                        v171 = v169;
                        v169 = v223;
                      }

                      else
                      {
                        v236 = (v299 * 4096.0) - ((v299 * 4096.0) - v299);
                        v237 = (v299 * v225) + (-v231 * v236);
                        v238 = (v299 * v227) - (((v237 + (-v232 * v236)) + (-v231 * (v299 - v236))) - (v232 * (v299 - v236)));
                        v319 = -(((((v299 * v227) + (-v229 * v236)) + (-(v227 - v229) * v236)) + (-v229 * (v299 - v236))) - ((v227 - v229) * (v299 - v236)));
                        v320 = (-(((v237 + (-v232 * v236)) + (-v231 * (v299 - v236))) - (v232 * (v299 - v236))) - (v238 - (v299 * v227))) + ((v299 * v227) - (v238 - (v238 - (v299 * v227))));
                        v321 = v238 - (((v299 * v225) + v238) - (v299 * v225));
                        v322 = (v299 * v225) + v238;
                        v166 = sub_299E14DE8(v235, v169, 4, &v319, v223);
                        v171 = v223;
                      }

                      v175 = v300;
                      v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                      v173 = v305;
                      v85 = ((v288 - v309) - v291) + (v288 - (v309 + (v288 - v309)));
                      v137 = v313;
                    }
                  }

                  if (v173 == 0.0)
                  {
                    v254 = v171;
                  }

                  else
                  {
                    if (v137 == 0.0)
                    {
                      v254 = v171;
                    }

                    else
                    {
                      v239 = v137;
                      v240 = v173 * v137;
                      v241 = (v173 * 4096.0) - ((v173 * 4096.0) - v173);
                      v242 = -((((v240 - (v241 * ((v239 * 4096.0) - ((v239 * 4096.0) - v239)))) - ((v173 - v241) * ((v239 * 4096.0) - ((v239 * 4096.0) - v239)))) - (v241 * (v239 - ((v239 * 4096.0) - ((v239 * 4096.0) - v239))))) - ((v173 - v241) * (v239 - ((v239 * 4096.0) - ((v239 * 4096.0) - v239)))));
                      v243 = (v311 * 4096.0) - ((v311 * 4096.0) - v311);
                      v244 = (v242 * 4096.0) - ((v242 * 4096.0) - v242);
                      v245 = -(((((v311 * v242) - (v244 * v243)) - ((v242 - v244) * v243)) - (v244 * (v311 - v243))) - ((v242 - v244) * (v311 - v243)));
                      v246 = (v240 * 4096.0) - ((v240 * 4096.0) - v240);
                      v247 = v240 - v246;
                      v248 = -(((((v311 * v240) - (v246 * v243)) - ((v240 - v246) * v243)) - (v246 * (v311 - v243))) - ((v240 - v246) * (v311 - v243)));
                      v249 = (v311 * v242) + v248;
                      v319 = v245;
                      v320 = (v248 - (v249 - (v311 * v242))) + ((v311 * v242) - (v249 - (v249 - (v311 * v242))));
                      v321 = v249 - (((v311 * v240) + v249) - (v311 * v240));
                      v322 = (v311 * v240) + v249;
                      v250 = sub_299E14DE8(v166, v171, 4, &v319, v169);
                      v166 = v250;
                      if (v302 == 0.0)
                      {
                        v254 = v169;
                        v169 = v171;
                      }

                      else
                      {
                        v251 = (v302 * 4096.0) - ((v302 * 4096.0) - v302);
                        v252 = (v302 * v240) + (-v246 * v251);
                        v253 = (v302 * v242) - (((v252 + (-v247 * v251)) + (-v246 * (v302 - v251))) - (v247 * (v302 - v251)));
                        v319 = -(((((v302 * v242) + (-v244 * v251)) + (-(v242 - v244) * v251)) + (-v244 * (v302 - v251))) - ((v242 - v244) * (v302 - v251)));
                        v320 = (-(((v252 + (-v247 * v251)) + (-v246 * (v302 - v251))) - (v247 * (v302 - v251))) - (v253 - (v302 * v242))) + ((v302 * v242) - (v253 - (v253 - (v302 * v242))));
                        v321 = v253 - (((v302 * v240) + v253) - (v302 * v240));
                        v322 = (v302 * v240) + v253;
                        v166 = sub_299E14DE8(v250, v169, 4, &v319, v171);
                        v254 = v171;
                      }

                      v175 = v300;
                      v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                      v173 = v305;
                      v85 = ((v288 - v309) - v291) + (v288 - (v309 + (v288 - v309)));
                    }

                    if (v85 != 0.0)
                    {
                      v255 = -(v173 * v85);
                      v256 = (v173 * -4096.0) - (v173 + (v173 * -4096.0));
                      v257 = -((((v255 - (v256 * ((v85 * 4096.0) - ((v85 * 4096.0) - v85)))) - ((-v173 - v256) * ((v85 * 4096.0) - ((v85 * 4096.0) - v85)))) - (v256 * (v85 - ((v85 * 4096.0) - ((v85 * 4096.0) - v85))))) - ((-v173 - v256) * (v85 - ((v85 * 4096.0) - ((v85 * 4096.0) - v85)))));
                      v258 = (v175 * 4096.0) - ((v175 * 4096.0) - v175);
                      v259 = (v257 * 4096.0) - ((v257 * 4096.0) - v257);
                      v260 = -(((((v175 * v257) - (v259 * v258)) - ((v257 - v259) * v258)) - (v259 * (v175 - v258))) - ((v257 - v259) * (v175 - v258)));
                      v261 = (v255 * 4096.0) - ((v255 * 4096.0) - v255);
                      v262 = v255 - v261;
                      v263 = -(((((v175 * v255) - (v261 * v258)) - ((v255 - v261) * v258)) - (v261 * (v175 - v258))) - ((v255 - v261) * (v175 - v258)));
                      v264 = (v175 * v257) + v263;
                      v319 = v260;
                      v320 = (v263 - (v264 - (v175 * v257))) + ((v175 * v257) - (v264 - (v264 - (v175 * v257))));
                      v321 = v264 - (((v175 * v255) + v264) - (v175 * v255));
                      v322 = (v175 * v255) + v264;
                      v265 = sub_299E14DE8(v166, v254, 4, &v319, v169);
                      v166 = v265;
                      if (v315 == 0.0)
                      {
LABEL_101:
                        v171 = v169;
                        v169 = v254;
                        goto LABEL_102;
                      }

                      v266 = (v315 * 4096.0) - ((v315 * 4096.0) - v315);
                      v267 = (v315 * v255) + (-v261 * v266);
                      v268 = (v315 * v257) - (((v267 + (-v262 * v266)) + (-v261 * (v315 - v266))) - (v262 * (v315 - v266)));
                      v319 = -(((((v315 * v257) + (-v259 * v266)) + (-(v257 - v259) * v266)) + (-v259 * (v315 - v266))) - ((v257 - v259) * (v315 - v266)));
                      v320 = (-(((v267 + (-v262 * v266)) + (-v261 * (v315 - v266))) - (v262 * (v315 - v266))) - (v268 - (v315 * v257))) + ((v315 * v257) - (v268 - (v268 - (v315 * v257))));
                      v321 = v268 - (((v315 * v255) + v268) - (v315 * v255));
                      v322 = (v315 * v255) + v268;
                      v269 = sub_299E14DE8(v265, v169, 4, &v319, v254);
                      v172 = ((v290 - v300) - v286) + (v290 - (v300 + (v290 - v300)));
                      v166 = v269;
LABEL_100:
                      v270 = sub_299E15000(v156, v325, v317, v172);
                      v166 = sub_299E14DE8(v166, v254, v270, v317, v169);
                      goto LABEL_101;
                    }

                    v171 = v254;
                  }

                  if (v172 == 0.0)
                  {
LABEL_102:
                    if (v302 == 0.0)
                    {
                      v272 = v171;
                      v171 = v169;
                    }

                    else
                    {
                      v271 = sub_299E15000(v161, v324, v317, v302);
                      v166 = sub_299E14DE8(v166, v171, v271, v317, v169);
                      v272 = v169;
                    }

                    if (v299 == 0.0)
                    {
                      v171 = v272;
                    }

                    else
                    {
                      v273 = sub_299E15000(v164, v323, v317, v299);
                      v166 = sub_299E14DE8(v166, v272, v273, v317, v171);
                    }

                    _S4 = v171[v166 - 1];
                    goto LABEL_109;
                  }

                  goto LABEL_100;
                }

                v338 = -((((v91 - (v120 * v278)) - ((v81 - v120) * v278)) - (v120 * v33)) - ((v81 - v120) * v33));
                v339 = v48 * v81;
                v334 = -((((-(v81 * v301) - (((v81 * -4096.0) - (v81 + (v81 * -4096.0))) * v59)) - ((-v81 - ((v81 * -4096.0) - (v81 + (v81 * -4096.0)))) * v59)) - (((v81 * -4096.0) - (v81 + (v81 * -4096.0))) * v46)) - ((-v81 - ((v81 * -4096.0) - (v81 + (v81 * -4096.0)))) * v46));
                v335 = -(v81 * v301);
              }

              v119 = 2;
              goto LABEL_45;
            }

            v346 = -((((v95 - (v99 * v306)) - ((v79 - v99) * v306)) - (v99 * v303)) - ((v79 - v99) * v303));
            v347 = v309 * v79;
            v342 = -((((-(v79 * v48) - (((v79 * -4096.0) - (v79 + (v79 * -4096.0))) * v278)) - ((-v79 - ((v79 * -4096.0) - (v79 + (v79 * -4096.0)))) * v278)) - (((v79 * -4096.0) - (v79 + (v79 * -4096.0))) * v33)) - ((-v79 - ((v79 * -4096.0) - (v79 + (v79 * -4096.0)))) * v33));
            v343 = -(v79 * v48);
          }

          v98 = 2;
          goto LABEL_37;
        }
      }
    }
  }

LABEL_109:
  __asm { FCVT            H0, S4 }

  return result;
}

__int16 _simd_incircle_ph2@<H0>(uint64_t a1@<X0>, __int32 a2@<W1>, __int32 a3@<W2>, __int32 a4@<W3>, float16x4_t a5@<D0>, float16x4_t a6@<D1>)
{
  a5.i32[0] = a1;
  v18 = vcvtq_f32_f16(a5).u64[0];
  a5.i32[0] = a2;
  a6.i32[0] = a3;
  v19 = vcvtq_f32_f16(a6).u64[0];
  a6.i32[0] = a4;
  v20 = vcvtq_f32_f16(a6).u64[0];
  *v21.f32 = vsub_f32(*&vcvtq_f32_f16(a5), v18);
  *v22.i8 = vsub_f32(v19, v18);
  v23 = vsub_f32(v20, v18);
  v24 = vmul_f32(*v21.f32, *v21.f32);
  *&v21.u32[2] = vadd_f32(v24, vdup_lane_s32(v24, 1));
  v25 = vmul_f32(*v22.i8, *v22.i8);
  v22.u64[1] = vadd_f32(v25, vdup_lane_s32(v25, 1));
  v26 = vmul_f32(v23, v23);
  *v27.i8 = v23;
  v27.u64[1] = vadd_f32(v26, vdup_lane_s32(v26, 1));
  v28 = vmulq_f32(vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL), vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
  v29 = vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL));
  v30 = vmulq_f32(v21, vsubq_f32(v28, v29));
  _S1 = v30.f32[2] + vaddv_f32(*v30.f32);
  v32 = vmulq_f32(vabsq_f32(v21), vaddq_f32(vabsq_f32(v28), vabsq_f32(v29)));
  v33 = (v32.f32[2] + vaddv_f32(*v32.f32)) * 0.0049057;
  if (_S1 <= v33 && v33 >= -_S1)
  {
    v534 = v17;
    v535 = v16;
    v536 = v15;
    v537 = v14;
    v538 = v13;
    v539 = v12;
    v540 = v11;
    v541 = v10;
    v542 = v8;
    v543 = v9;
    v533 = v6;
    v531 = v7;
    v35 = MEMORY[0x2A1C7C4A8](a1);
    v440 = v36;
    v433 = v38;
    v435 = v37;
    v415 = v39;
    v41 = vdup_lane_s32(v37, 0);
    v431 = vzip1_s32(v40, *&v35);
    v42 = vsub_f32(v431, v41);
    v427 = v41;
    v429 = vzip2_s32(v40, *&v35);
    v425 = vdup_lane_s32(v37, 1);
    v43 = vsub_f32(v429, v425);
    v447 = v44.f32[1];
    *&v35 = vmuls_lane_f32(v42.f32[0], v44, 1);
    v437 = (4096.0 * v42.f32[0]) - ((4096.0 * v42.f32[0]) - v42.f32[0]);
    v45 = vmuls_lane_f32(4096.0, v44, 1);
    v46 = v45 - (v45 - v44.f32[1]);
    v47 = v44.f32[1] - v46;
    v446 = v42.f32[0] - v437;
    v48 = -((((*&v35 - (v437 * v46)) - ((v42.f32[0] - v437) * v46)) - (v437 * (v44.f32[1] - v46))) - ((v42.f32[0] - v437) * (v44.f32[1] - v46)));
    v49 = (4096.0 * v44.f32[0]) - ((4096.0 * v44.f32[0]) - v44.f32[0]);
    v50 = v44.f32[0] - v49;
    v449 = v44;
    v450 = v43;
    v448 = v42;
    v444 = vmul_f32(__PAIR64__(v42.u32[1], v43.u32[0]), v44);
    v442 = (4096.0 * v43.f32[0]) - ((4096.0 * v43.f32[0]) - v43.f32[0]);
    v443 = v43.f32[0] - v442;
    *v40.i32 = -((((*v444.i32 - (v49 * v442)) - ((v44.f32[0] - v49) * v442)) - (v49 * (v43.f32[0] - v442))) - ((v44.f32[0] - v49) * (v43.f32[0] - v442)));
    v41.f32[0] = v48 - *v40.i32;
    v51 = ((v48 - (v48 - *v40.i32)) - *v40.i32) + (v48 - ((v48 - *v40.i32) + (v48 - (v48 - *v40.i32))));
    *v40.i32 = *&v35 + v41.f32[0];
    *&v35 = (v41.f32[0] - ((*&v35 + v41.f32[0]) - *&v35)) + (*&v35 - ((*&v35 + v41.f32[0]) - ((*&v35 + v41.f32[0]) - *&v35)));
    v41.f32[0] = *&v35 - *v444.i32;
    v532[0] = v51;
    v532[1] = ((*&v35 - (*&v35 - *v444.i32)) - *v444.i32) + (*&v35 - ((*&v35 - *v444.i32) + (*&v35 - (*&v35 - *v444.i32))));
    *&v35 = *v40.i32 + (*&v35 - *v444.i32);
    v532[2] = (v41.f32[0] - (*&v35 - *v40.i32)) + (*v40.i32 - (*&v35 - (*&v35 - *v40.i32)));
    v532[3] = *&v35;
    v52 = v42.f32[1];
    v53 = sub_299E15000(4, v532, v528, v42.f32[1]);
    v54 = sub_299E15000(v53, v528, v527, v52);
    v55 = sub_299E15000(4, v532, v526, *&v450.i32[1]);
    v56 = sub_299E15000(v55, v526, v525, *&v450.i32[1]);
    v57 = sub_299E14DE8(v54, v527, v56, v525, v524);
    v58 = vmuls_lane_f32(v449.f32[0], v450, 1);
    v59 = vmuls_lane_f32(4096.0, v450, 1);
    v60 = v59 - (v59 - *&v450.i32[1]);
    v423 = v50;
    v61 = *&v450.i32[1] - v60;
    v62 = -((((v58 - (v49 * v60)) - (v50 * v60)) - (v49 * v61)) - (v50 * v61));
    v63 = vmuls_lane_f32(4096.0, v448, 1);
    v64 = v63 - (v63 - v52);
    v424 = v52;
    v65 = v52 - v64;
    v419 = v46;
    v420 = v47;
    v66 = -((((*&v444.i32[1] - (v64 * v46)) - (v65 * v46)) - (v64 * v47)) - (v65 * v47));
    v67 = v62 - v66;
    v68 = ((v62 - (v62 - v66)) - v66) + (v62 - ((v62 - v66) + (v62 - (v62 - v66))));
    v69 = v58 + v67;
    v70 = (v67 - ((v58 + v67) - v58)) + (v58 - ((v58 + v67) - ((v58 + v67) - v58)));
    v530[0] = v68;
    v530[1] = ((v70 - (v70 - *&v444.i32[1])) - *&v444.i32[1]) + (v70 - ((v70 - *&v444.i32[1]) + (v70 - (v70 - *&v444.i32[1]))));
    *&v531 = ((v70 - *&v444.i32[1]) - ((v69 + (v70 - *&v444.i32[1])) - v69)) + (v69 - ((v69 + (v70 - *&v444.i32[1])) - ((v69 + (v70 - *&v444.i32[1])) - v69)));
    *(&v531 + 1) = v69 + (v70 - *&v444.i32[1]);
    v71 = sub_299E15000(4, v530, v523, v448.f32[0]);
    v72 = sub_299E15000(v71, v523, v522, v448.f32[0]);
    v73 = sub_299E15000(4, v530, v521, *v450.i32);
    v74 = sub_299E15000(v73, v521, v520, *v450.i32);
    v75 = sub_299E14DE8(v72, v522, v74, v520, v519);
    v76 = vmuls_lane_f32(*v450.i32, v448, 1);
    v77 = -((((v76 - (v64 * v442)) - (v65 * v442)) - (v64 * v443)) - (v65 * v443));
    v78 = vmuls_lane_f32(v448.f32[0], v450, 1);
    v417 = v60;
    v418 = *&v450.i32[1] - v60;
    v79 = -((((v78 - (v437 * v60)) - (v446 * v60)) - (v437 * v61)) - (v446 * v61));
    v80 = v77 - v79;
    v81 = ((v77 - (v77 - v79)) - v79) + (v77 - ((v77 - v79) + (v77 - (v77 - v79))));
    v82 = v76 + v80;
    v83 = (v80 - ((v76 + v80) - v76)) + (v76 - ((v76 + v80) - ((v76 + v80) - v76)));
    v84 = v83 - v78;
    v529[0] = v81;
    v529[1] = ((v83 - (v83 - v78)) - v78) + (v83 - ((v83 - v78) + (v83 - (v83 - v78))));
    v85 = v82 + (v83 - v78);
    v529[2] = (v84 - (v85 - v82)) + (v82 - (v85 - (v85 - v82)));
    v529[3] = v85;
    v86 = sub_299E15000(4, v529, v518, v449.f32[0]);
    v87 = sub_299E15000(v86, v518, v517, v449.f32[0]);
    v88 = sub_299E15000(4, v529, v516, v447);
    v89 = sub_299E15000(v88, v516, v515, v447);
    v90 = sub_299E14DE8(v87, v517, v89, v515, v514);
    v91 = sub_299E14DE8(v57, v524, v75, v519, v513);
    v92 = sub_299E14DE8(v91, v513, v90, v514, &v511);
    v93 = v92;
    _S1 = v511;
    if (v92 < 2)
    {
      v96 = v440;
    }

    else
    {
      v94 = v92 - 1;
      v95 = &v512;
      v96 = v440;
      do
      {
        v97 = *v95++;
        _S1 = _S1 + v97;
        --v94;
      }

      while (v94);
    }

    if (_S1 < (v96 * 0.0019646) && (v96 * 0.0019646) > -_S1)
    {
      v99 = vsub_f32(v431, v448);
      v100 = vsub_f32(v429, v450);
      v101 = vadd_f32(vsub_f32(v99, v427), vsub_f32(v431, vadd_f32(v448, v99)));
      v102 = vadd_f32(vsub_f32(v100, v425), vsub_f32(v429, vadd_f32(v450, v100)));
      v103 = vsub_f32(v433, v449);
      v104 = vadd_f32(vsub_f32(v103, v435), vsub_f32(v433, vadd_f32(v449, v103)));
      *v105.f32 = vrev64_s32(v101);
      v105.i64[1] = __PAIR64__(v102.u32[1], v104.u32[0]);
      v106 = v104.f32[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v105)))) & 1) != 0 || v102.f32[0] != 0.0 || v104.f32[1] != 0.0)
      {
        v107 = (fabsf(_S1) * 0.0014668) + (v96 * 0.000010557);
        v108 = vmul_f32(v450, v450);
        v109 = vdup_lane_s32(v101, 0);
        v109.i32[0] = v104.i32[0];
        v110 = vmul_f32(vzip2_s32(v450, v449), v109);
        v111 = vdup_lane_s32(v102, 0);
        v111.i32[0] = v104.i32[1];
        v112 = vcvtq_f64_f32(vmul_f32(vmla_f32(v108, v448, v448), vsub_f32(vmla_f32(v110, vext_s8(v102, v111, 4uLL), vzip1_s32(v449, v448)), vmla_f32(vmul_f32(vext_s8(v448, v449, 4uLL), v111), vext_s8(v101, v109, 4uLL), vext_s8(v449, v450, 4uLL)))));
        v113 = vcvtq_f64_f32(vmla_f32(vmul_f32(v450, v102), v101, v448));
        v113.f64[0] = vaddvq_f64(vmlaq_f64(v112, vcvtq_f64_f32(vmla_f32(vneg_f32(vrev64_s32(v444)), vext_s8(v450, v448, 4uLL), v449)), vaddq_f64(v113, v113)));
        v114 = v447;
        v115 = v114 * v114;
        v116 = vmul_f32(vzip1_s32(v450, v448), vzip2_s32(v101, v102));
        v117 = vmla_f32(v116, vzip1_s32(v102, v101), vzip2_s32(v448, v450));
        _S1 = (((v114 * v114) + (v449.f32[0] * v449.f32[0])) * vsub_f32(v117, vdup_lane_s32(v117, 1)).f32[0]) + (((v447 * v104.f32[1]) + (v449.f32[0] * v104.f32[0])) + ((v447 * v104.f32[1]) + (v449.f32[0] * v104.f32[0]))) * -(v78 - (v424 * *v450.i32)) + v113.f64[0] + _S1;
        if (v107 > _S1 && v107 > -_S1)
        {
          v119 = v424;
          v120 = v101.f32[0] != 0.0;
          if (v102.f32[0] != 0.0)
          {
            v120 = 1;
          }

          v121 = vmvn_s8(vceqz_f32(v104));
          v122 = v121.i8[4];
          v123 = v121.i8[0];
          v428 = v120;
          v403 = v121.i8[4] | v121.i8[0] | v120;
          if (v403)
          {
            v124.f32[0] = -((((v424 * v424) + (-v64 * v64)) - ((v64 + v64) * v65)) - (v65 * v65));
            v125.f32[0] = v124.f32[0] - (((v108.f32[1] - (v60 * v60)) - ((v60 + v60) * v418)) - (v418 * v418));
            v126 = (v424 * v424) + v125.f32[0];
            v127 = v126 - (v424 * v424);
            v125.f32[1] = v108.f32[1] + ((v125.f32[0] - v127) + ((v424 * v424) + (v127 - v126)));
            v124.f32[1] = (v125.f32[0] - v127) + ((v424 * v424) + (v127 - v126));
            v128 = vsub_f32(v125, v124);
            v129.i32[1] = v108.i32[1];
            v129.f32[0] = -(((v108.f32[1] - (v60 * v60)) - ((v60 + v60) * v418)) - (v418 * v418));
            v507 = vadd_f32(vsub_f32(v129, v128), vadd_f32(v124, vsub_f32(v128, v125)));
            v508 = (v125.f32[1] - ((v126 + v125.f32[1]) - v126)) + (v126 + (((v126 + v125.f32[1]) - v126) - (v126 + v125.f32[1])));
            v509 = v126 + v125.f32[1];
          }

          v130 = vmvn_s8(vceqz_f32(vzip2_s32(v102, v101)));
          v131 = v130.i32[1];
          v132 = v130.i32[0];
          v430 = v123 | v122;
          v409 = v130.i8[0] | v123 | v122 | v130.i8[4];
          if (v409)
          {
            v133 = vmul_f32(v448, v448).f32[0];
            v134.f32[0] = -(((v133 + (-v437 * v437)) - ((v437 + v437) * v446)) - (v446 * v446));
            v135 = -(((v108.f32[0] - (v442 * v442)) - ((v442 + v442) * v443)) - (v443 * v443));
            v136.f32[0] = v134.f32[0] - (((v108.f32[0] - (v442 * v442)) - ((v442 + v442) * v443)) - (v443 * v443));
            v137 = v133 + v136.f32[0];
            v138 = (v136.f32[0] - ((v133 + v136.f32[0]) - v133)) + (v133 + (((v133 + v136.f32[0]) - v133) - (v133 + v136.f32[0])));
            v136.f32[1] = v108.f32[0] + v138;
            v134.f32[1] = v138;
            v139 = vsub_f32(v136, v134);
            v140 = vdup_lane_s32(v108, 0);
            v140.f32[0] = v135;
            v504 = vadd_f32(vsub_f32(v140, v139), vadd_f32(v134, vsub_f32(v139, v136)));
            v505 = (v136.f32[1] - ((v137 + v136.f32[1]) - v137)) + (v137 + (((v137 + v136.f32[1]) - v137) - (v137 + v136.f32[1])));
            v506 = v137 + v136.f32[1];
          }

          v141 = -v49;
          v142 = v131 | v132;
          v408 = (v102.f32[0] != 0.0 || v101.f32[0] != 0.0) | v131 | v132;
          if ((v102.f32[0] != 0.0 || v101.f32[0] != 0.0) | (v131 | v132) & 1)
          {
            v143 = -(((v415 + (v141 * v49)) - ((v49 + v49) * v423)) - (v423 * v423));
            v144 = v143 - (((v115 - (v419 * v419)) - ((v419 + v419) * v420)) - (v420 * v420));
            v145 = (-(((v115 - (v419 * v419)) - ((v419 + v419) * v420)) - (v420 * v420)) - (v144 - v143)) + (v143 + ((v144 - v143) - v144));
            v146 = v415 + v144;
            v147 = (v144 - ((v415 + v144) - v415)) + (v415 + (((v415 + v144) - v415) - (v415 + v144)));
            v503[0] = v145;
            v503[1] = (v115 - ((v115 + v147) - v147)) + (v147 + (((v115 + v147) - v147) - (v115 + v147)));
            v503[2] = ((v115 + v147) - ((v146 + (v115 + v147)) - v146)) + (v146 + (((v146 + (v115 + v147)) - v146) - (v146 + (v115 + v147))));
            v503[3] = v146 + (v115 + v147);
          }

          v436 = v104;
          v441 = v102;
          v432 = v101;
          v412 = -v64;
          v422 = -v437;
          v407 = v116.f32[0];
          v414 = v110;
          if (v131)
          {
            v148 = v101.f32[1];
            v400 = sub_299E15000(4, v532, v474, v101.f32[1]);
            v149 = sub_299E15000(v400, v474, v493, v424 + v424);
            v150 = sub_299E15000(4, v503, v485, v148);
            v151 = sub_299E15000(v150, v485, v492, *v450.i32);
            v152 = sub_299E15000(4, &v504, v486, v148);
            v153 = sub_299E15000(v152, v486, v491, -v447);
            v154 = sub_299E14DE8(v149, v493, v151, v492, v490);
            v155 = sub_299E14DE8(v153, v491, v154, v490, v488);
            v156 = &v511;
            v157 = v510;
            v158 = sub_299E14DE8(v93, &v511, v155, v488, v510);
            v102.i32[1] = v441.i32[1];
            v93 = v158;
          }

          else
          {
            v400 = 0;
            v156 = v510;
            v157 = &v511;
          }

          v159 = v102.f32[1];
          v445 = v122;
          if (v132)
          {
            v401 = sub_299E15000(4, v532, v473, v102.f32[1]);
            v160 = sub_299E15000(v401, v473, v493, *&v450.i32[1] + *&v450.i32[1]);
            v161 = sub_299E15000(4, &v504, v484, v159);
            v162 = sub_299E15000(v161, v484, v492, v449.f32[0]);
            v163 = sub_299E15000(4, v503, v483, v159);
            v164 = sub_299E15000(v163, v483, v491, -v448.f32[0]);
            v165 = sub_299E14DE8(v160, v493, v162, v492, v490);
            v166 = v164;
            v122 = v445;
            v167 = sub_299E14DE8(v166, v491, v165, v490, v488);
            v93 = sub_299E14DE8(v93, v157, v167, v488, v156);
            v168 = v156;
            v156 = v157;
          }

          else
          {
            v401 = 0;
            v168 = v157;
          }

          v434 = v132;
          if (v432.f32[0] == 0.0)
          {
            v405 = 0;
            v176 = v168;
          }

          else
          {
            v405 = sub_299E15000(4, v530, v472, v432.f32[0]);
            v169 = sub_299E15000(v405, v472, v493, v448.f32[0] + v448.f32[0]);
            v170 = sub_299E15000(4, &v507, v482, v432.f32[0]);
            v171 = sub_299E15000(v170, v482, v492, v447);
            v172 = sub_299E15000(4, v503, v481, v432.f32[0]);
            v173 = sub_299E15000(v172, v481, v491, -*&v450.i32[1]);
            v174 = sub_299E14DE8(v169, v493, v171, v492, v490);
            v175 = sub_299E14DE8(v173, v491, v174, v490, v488);
            v93 = sub_299E14DE8(v93, v168, v175, v488, v156);
            v176 = v156;
            v156 = v168;
          }

          if (v441.f32[0] == 0.0)
          {
            v406 = 0;
            v186 = v176;
          }

          else
          {
            v406 = sub_299E15000(4, v530, v471, v441.f32[0]);
            v177 = sub_299E15000(v406, v471, v493, *v450.i32 + *v450.i32);
            v178 = sub_299E15000(4, v503, v479, v441.f32[0]);
            v179 = sub_299E15000(v178, v479, v492, v424);
            v180 = sub_299E15000(4, &v507, v480, v441.f32[0]);
            v181 = v123;
            v182 = sub_299E15000(v180, v480, v491, -v449.f32[0]);
            v183 = sub_299E14DE8(v177, v493, v179, v492, v490);
            v184 = v182;
            v123 = v181;
            v185 = sub_299E14DE8(v184, v491, v183, v490, v488);
            v93 = sub_299E14DE8(v93, v176, v185, v488, v156);
            v186 = v156;
            v156 = v176;
          }

          v410 = v123;
          if (v123)
          {
            v402 = sub_299E15000(4, v529, v470, v436.f32[0]);
            v187 = sub_299E15000(v402, v470, v493, v449.f32[0] + v449.f32[0]);
            v188 = sub_299E15000(4, &v504, v477, v436.f32[0]);
            v189 = sub_299E15000(v188, v477, v492, *&v450.i32[1]);
            v190 = sub_299E15000(4, &v507, v478, v436.f32[0]);
            v191 = sub_299E15000(v190, v478, v491, -*v450.i32);
            v192 = sub_299E14DE8(v187, v493, v189, v492, v490);
            v193 = sub_299E14DE8(v191, v491, v192, v490, v488);
            v93 = sub_299E14DE8(v93, v186, v193, v488, v156);
            v194 = v156;
            v156 = v186;
          }

          else
          {
            v402 = 0;
            v194 = v186;
          }

          v416 = -v446;
          v413 = -v423;
          v411 = -v65;
          v426 = v65;
          if (v122)
          {
            v404 = sub_299E15000(4, v529, v469, v106);
            v195 = sub_299E15000(v404, v469, v493, v447 + v447);
            v196 = sub_299E15000(4, &v507, v476, v106);
            v197 = sub_299E15000(v196, v476, v492, v448.f32[0]);
            v198 = sub_299E15000(4, &v504, v475, v106);
            v199 = sub_299E15000(v198, v475, v491, -v424);
            v200 = sub_299E14DE8(v195, v493, v197, v492, v490);
            v201 = sub_299E14DE8(v199, v491, v200, v490, v488);
            v93 = sub_299E14DE8(v93, v194, v201, v488, v156);
            v202 = v156;
            v203 = v156;
            v204 = v432;
            if ((v142 & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v204 = v432;
            if ((v142 & 1) == 0)
            {
              v404 = 0;
              v203 = v194;
              v194 = v156;
              goto LABEL_67;
            }

            if ((v403 & 1) == 0)
            {
              v421 = v141;
              v438 = v159;
              v404 = 0;
              v455[0] = 0.0;
              v452[0] = 0.0;
              v224 = 1;
              v222 = 1;
              if (v131)
              {
                goto LABEL_53;
              }

              goto LABEL_57;
            }

            v404 = 0;
            v202 = v194;
            v194 = v156;
          }

          v438 = v159;
          v156 = v194;
          v205 = (v204.f32[0] * 4096.0) - ((v204.f32[0] * 4096.0) - v204.f32[0]);
          v206 = v204.f32[0] - v205;
          v207 = -((((v414.f32[1] - (v205 * v419)) - ((v204.f32[0] - v205) * v419)) - (v205 * v420)) - ((v204.f32[0] - v205) * v420));
          v208 = (v106 * 4096.0) - ((v106 * 4096.0) - v106);
          v209 = v207 - (((((v448.f32[0] * v106) + (v422 * v208)) + (v416 * v208)) + (v422 * (v106 - v208))) - (v446 * (v106 - v208)));
          v210 = (-(((((v448.f32[0] * v106) + (v422 * v208)) + (v416 * v208)) + (v422 * (v106 - v208))) - (v446 * (v106 - v208))) - (v209 - v207)) + (v207 - (v209 - (v209 - v207)));
          v211 = v414.f32[1] + v209;
          v212 = (v209 - ((v414.f32[1] + v209) - v414.f32[1])) + (v414.f32[1] - ((v414.f32[1] + v209) - ((v414.f32[1] + v209) - v414.f32[1])));
          v213 = (v448.f32[0] * v106) + v212;
          v499 = v210;
          v500 = ((v448.f32[0] * v106) - (v213 - v212)) + (v212 - (v213 - (v213 - v212)));
          v501 = (v213 - ((v211 + v213) - v211)) + (v211 - ((v211 + v213) - ((v211 + v213) - v211)));
          v502 = v211 + v213;
          v214 = -(*v450.i32 * v436.f32[0]);
          v215 = (v436.f32[0] * 4096.0) - ((v436.f32[0] * 4096.0) - v436.f32[0]);
          v216 = -((((v214 - (v215 * ((*v450.i32 * -4096.0) - (*v450.i32 + (*v450.i32 * -4096.0))))) - ((v436.f32[0] - v215) * ((*v450.i32 * -4096.0) - (*v450.i32 + (*v450.i32 * -4096.0))))) - (v215 * (-*v450.i32 - ((*v450.i32 * -4096.0) - (*v450.i32 + (*v450.i32 * -4096.0)))))) - ((v436.f32[0] - v215) * (-*v450.i32 - ((*v450.i32 * -4096.0) - (*v450.i32 + (*v450.i32 * -4096.0))))));
          v421 = v141;
          v217 = v216 - (((((v421 * ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0)))) - (v441.f32[0] * v449.f32[0])) + (v413 * ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0))))) + (v421 * (-v441.f32[0] - ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0)))))) - (v423 * (-v441.f32[0] - ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0))))));
          v218 = (-(((((v421 * ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0)))) - (v441.f32[0] * v449.f32[0])) + (v413 * ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0))))) + (v421 * (-v441.f32[0] - ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0)))))) - (v423 * (-v441.f32[0] - ((v441.f32[0] * -4096.0) - (v441.f32[0] + (v441.f32[0] * -4096.0)))))) - (v217 - v216)) + (v216 - (v217 - (v217 - v216)));
          v219 = v217 - (*v450.i32 * v436.f32[0]);
          v220 = (v217 - (v219 - v214)) + (v214 - (v219 - (v219 - v214)));
          v221 = v220 - (v441.f32[0] * v449.f32[0]);
          v495 = v218;
          v496 = (-(v441.f32[0] * v449.f32[0]) - (v221 - v220)) + (v220 - (v221 - (v221 - v220)));
          v497 = (v221 - ((v219 + v221) - v219)) + (v219 - ((v219 + v221) - ((v219 + v221) - v219)));
          v498 = v219 + v221;
          v222 = 4;
          v223 = sub_299E14DE8(4, &v499, 4, &v495, v455);
          v204 = v432;
          v224 = v223;
          v225 = (((v432.f32[0] * v106) - (v205 * v208)) - (v206 * v208)) - (v205 * (v106 - v208));
          v119 = v424;
          v226 = -(v225 - (v206 * (v106 - v208)));
          v227 = vmul_f32(v441, v436).f32[0];
          v228 = -((((v227 - (v215 * ((v441.f32[0] * 4096.0) - ((v441.f32[0] * 4096.0) - v441.f32[0])))) - ((v436.f32[0] - v215) * ((v441.f32[0] * 4096.0) - ((v441.f32[0] * 4096.0) - v441.f32[0])))) - (v215 * (v441.f32[0] - ((v441.f32[0] * 4096.0) - ((v441.f32[0] * 4096.0) - v441.f32[0]))))) - ((v436.f32[0] - v215) * (v441.f32[0] - ((v441.f32[0] * 4096.0) - ((v441.f32[0] * 4096.0) - v441.f32[0])))));
          v229 = v226 - v228;
          v230 = ((v226 - (v226 - v228)) - v228) + (v226 - ((v226 - v228) + (v226 - (v226 - v228))));
          v231 = (v432.f32[0] * v106) + v229;
          v232 = (v229 - (v231 - (v432.f32[0] * v106))) + ((v432.f32[0] * v106) - (v231 - (v231 - (v432.f32[0] * v106))));
          v233 = v232 - v227;
          v452[0] = v230;
          v452[1] = ((v232 - (v232 - v227)) - v227) + (v232 - ((v232 - v227) + (v232 - (v232 - v227))));
          v234 = v231 + (v232 - v227);
          v452[2] = (v233 - (v234 - v231)) + (v231 - (v234 - (v234 - v231)));
          v452[3] = v234;
          v194 = v202;
          if (v131)
          {
LABEL_53:
            v235 = v204.f32[1];
            v236 = sub_299E15000(v400, v474, v493, v204.f32[1]);
            v237 = sub_299E15000(v224, v455, v468, v235);
            v238 = sub_299E15000(v237, v468, v490, v119 + v119);
            v239 = sub_299E14DE8(v236, v493, v238, v490, v488);
            v240 = sub_299E14DE8(v93, v194, v239, v488, v156);
            v114 = v447;
            v159 = v438;
            if (v441.f32[0] == 0.0)
            {
              v203 = v156;
              v156 = v194;
            }

            else
            {
              v241 = sub_299E15000(4, v503, v494, v235);
              v242 = sub_299E15000(v241, v494, v493, v441.f32[0]);
              v240 = sub_299E14DE8(v240, v156, v242, v493, v194);
              v203 = v194;
            }

            if (v122)
            {
              v243 = sub_299E15000(4, &v504, v494, -v235);
              v244 = sub_299E15000(v243, v494, v493, v106);
              v240 = sub_299E14DE8(v240, v203, v244, v493, v156);
              v245 = v156;
            }

            else
            {
              v245 = v203;
              v203 = v156;
              v156 = v245;
            }

            v246 = sub_299E15000(v237, v468, v490, v235);
            v247 = sub_299E15000(v222, v452, v462, v235);
            v248 = sub_299E15000(v247, v462, v493, v119 + v119);
            v249 = sub_299E15000(v247, v462, v492, v235);
            v250 = sub_299E14DE8(v248, v493, v249, v492, v489);
            v251 = sub_299E14DE8(v246, v490, v250, v489, v487);
            v93 = sub_299E14DE8(v240, v245, v251, v487, v203);
            v204 = v432;
            goto LABEL_63;
          }

LABEL_57:
          v203 = v194;
          v114 = v447;
          v159 = v438;
LABEL_63:
          if (v434)
          {
            v252 = sub_299E15000(v401, v473, v493, v159);
            v253 = sub_299E15000(v224, v455, v467, v159);
            v254 = sub_299E15000(v253, v467, v490, *&v450.i32[1] + *&v450.i32[1]);
            v255 = sub_299E14DE8(v252, v493, v254, v490, v488);
            v256 = sub_299E14DE8(v93, v203, v255, v488, v156);
            v257 = sub_299E15000(v253, v467, v490, v159);
            v258 = sub_299E15000(v222, v452, v461, v159);
            v259 = sub_299E15000(v258, v461, v493, *&v450.i32[1] + *&v450.i32[1]);
            v260 = sub_299E15000(v258, v461, v492, v159);
            v261 = sub_299E14DE8(v259, v493, v260, v492, v489);
            v262 = sub_299E14DE8(v257, v490, v261, v489, v487);
            v263 = sub_299E14DE8(v256, v156, v262, v487, v203);
            v204 = v432;
            v93 = v263;
            v264 = v449.f32[0];
            v265 = v436.f32[0];
            v266 = v441.f32[0];
            v122 = v445;
            if (!v428)
            {
              goto LABEL_86;
            }

            goto LABEL_70;
          }

          v194 = v156;
          v122 = v445;
          v141 = v421;
LABEL_67:
          if (!v428)
          {
            v156 = v194;
            v265 = v436.f32[0];
            v266 = v441.f32[0];
            goto LABEL_86;
          }

          if ((v409 & 1) == 0)
          {
            v454[0] = 0.0;
            v451[0] = 0.0;
            v291 = 1;
            v289 = 1;
            goto LABEL_73;
          }

          v421 = v141;
          v156 = v194;
          v264 = v449.f32[0];
          v265 = v436.f32[0];
LABEL_70:
          v439 = v159;
          v267 = v119;
          v268 = (v265 * 4096.0) - ((v265 * 4096.0) - v265);
          v269 = v114;
          v270 = v265 - v268;
          v271 = -((((v414.f32[0] - (v268 * v417)) - ((v265 - v268) * v417)) - (v268 * v418)) - ((v265 - v268) * v418));
          v272 = v264 * v159;
          v273 = (v159 * 4096.0) - ((v159 * 4096.0) - v159);
          v274 = v439 - v273;
          v275 = v271 - ((((v272 + (v421 * v273)) + (v413 * v273)) + (v421 * (v439 - v273))) - (v423 * (v439 - v273)));
          v276 = (-((((v272 + (v421 * v273)) + (v413 * v273)) + (v421 * (v439 - v273))) - (v423 * (v439 - v273))) - (v275 - v271)) + (v271 - (v275 - (v275 - v271)));
          v277 = v414.f32[0] + v275;
          v278 = (v275 - ((v414.f32[0] + v275) - v414.f32[0])) + (v414.f32[0] - ((v414.f32[0] + v275) - ((v414.f32[0] + v275) - v414.f32[0])));
          v499 = v276;
          v500 = (v272 - ((v272 + v278) - v278)) + (v278 - ((v272 + v278) - ((v272 + v278) - v278)));
          v501 = ((v272 + v278) - ((v277 + (v272 + v278)) - v277)) + (v277 - ((v277 + (v272 + v278)) - ((v277 + (v272 + v278)) - v277)));
          v502 = v277 + (v272 + v278);
          v279 = vmuls_lane_f32(-v269, v204, 1);
          v280 = vmuls_lane_f32(4096.0, v204, 1);
          v281 = v280 - (v280 - v204.f32[1]);
          v282 = v204.f32[1] - v281;
          v283 = -((((v279 - (v281 * ((v269 * -4096.0) - (v269 + (v269 * -4096.0))))) - ((v204.f32[1] - v281) * ((v269 * -4096.0) - (v269 + (v269 * -4096.0))))) - (v281 * (-v269 - ((v269 * -4096.0) - (v269 + (v269 * -4096.0)))))) - ((v204.f32[1] - v281) * (-v269 - ((v269 * -4096.0) - (v269 + (v269 * -4096.0))))));
          v284 = v283 - (((((v412 * ((v106 * -4096.0) - (v106 + (v106 * -4096.0)))) - (v106 * v267)) + (v411 * ((v106 * -4096.0) - (v106 + (v106 * -4096.0))))) + (v412 * (-v106 - ((v106 * -4096.0) - (v106 + (v106 * -4096.0)))))) - (v426 * (-v106 - ((v106 * -4096.0) - (v106 + (v106 * -4096.0))))));
          v285 = (-(((((v412 * ((v106 * -4096.0) - (v106 + (v106 * -4096.0)))) - (v106 * v267)) + (v411 * ((v106 * -4096.0) - (v106 + (v106 * -4096.0))))) + (v412 * (-v106 - ((v106 * -4096.0) - (v106 + (v106 * -4096.0)))))) - (v426 * (-v106 - ((v106 * -4096.0) - (v106 + (v106 * -4096.0)))))) - (v284 - v283)) + (v283 - (v284 - (v284 - v283)));
          v286 = v279 + v284;
          v287 = (v284 - ((v279 + v284) - v279)) + (v279 - ((v279 + v284) - ((v279 + v284) - v279)));
          v288 = v287 - (v106 * v267);
          v495 = v285;
          v496 = (-(v106 * v267) - (v288 - v287)) + (v287 - (v288 - (v288 - v287)));
          v497 = (v288 - ((v286 + v288) - v286)) + (v286 - ((v286 + v288) - ((v286 + v288) - v286)));
          v498 = v286 + v288;
          v289 = 4;
          v290 = sub_299E14DE8(4, &v499, 4, &v495, v454);
          v204.i32[0] = v432.i32[0];
          v291 = v290;
          v292 = ((v439 * v436.f32[0]) - (v268 * v273)) - (v270 * v273);
          v159 = v439;
          v293 = -((v292 - (v268 * v274)) - (v270 * v274));
          v294 = vmuls_lane_f32(v106, v432, 1);
          v295 = -((((v294 - (v281 * ((v106 * 4096.0) - ((v106 * 4096.0) - v106)))) - (v282 * ((v106 * 4096.0) - ((v106 * 4096.0) - v106)))) - (v281 * (v106 - ((v106 * 4096.0) - ((v106 * 4096.0) - v106))))) - (v282 * (v106 - ((v106 * 4096.0) - ((v106 * 4096.0) - v106)))));
          v296 = v293 - v295;
          v297 = ((v293 - (v293 - v295)) - v295) + (v293 - ((v293 - v295) + (v293 - (v293 - v295))));
          v298 = (v439 * v436.f32[0]) + v296;
          v299 = (v296 - (v298 - (v439 * v436.f32[0]))) + ((v439 * v436.f32[0]) - (v298 - (v298 - (v439 * v436.f32[0]))));
          v300 = v299 - v294;
          v451[0] = v297;
          v451[1] = ((v299 - (v299 - v294)) - v294) + (v299 - ((v299 - v294) + (v299 - (v299 - v294))));
          v301 = v298 + (v299 - v294);
          v451[2] = (v300 - (v301 - v298)) + (v298 - (v301 - (v301 - v298)));
          v451[3] = v301;
          v194 = v156;
LABEL_73:
          if (v204.f32[0] == 0.0)
          {
            v114 = v447;
            v307 = v426;
          }

          else
          {
            v302 = sub_299E15000(v405, v472, v493, v204.f32[0]);
            v303 = sub_299E15000(v291, v454, v466, v432.f32[0]);
            v304 = sub_299E15000(v303, v466, v490, v448.f32[0] + v448.f32[0]);
            v305 = sub_299E14DE8(v302, v493, v304, v490, v488);
            v306 = sub_299E14DE8(v93, v203, v305, v488, v194);
            v114 = v447;
            v307 = v426;
            if (v122)
            {
              v308 = sub_299E15000(4, &v507, v494, v432.f32[0]);
              v309 = sub_299E15000(v308, v494, v493, v106);
              v306 = sub_299E14DE8(v306, v194, v309, v493, v203);
              v310 = v203;
            }

            else
            {
              v310 = v194;
              v194 = v203;
            }

            if (v434)
            {
              v311 = sub_299E15000(4, v503, v494, -v432.f32[0]);
              v312 = sub_299E15000(v311, v494, v493, v159);
              v313 = sub_299E14DE8(v306, v310, v312, v493, v194);
              v314 = v432.f32[0];
              v306 = v313;
              v315 = v194;
            }

            else
            {
              v315 = v310;
              v310 = v194;
              v194 = v315;
              v314 = v432.f32[0];
            }

            v316 = sub_299E15000(v303, v466, v490, v314);
            v317 = sub_299E15000(v289, v451, v460, v432.f32[0]);
            v318 = sub_299E15000(v317, v460, v493, v448.f32[0] + v448.f32[0]);
            v319 = sub_299E15000(v317, v460, v492, v432.f32[0]);
            v320 = sub_299E14DE8(v318, v493, v319, v492, v489);
            v321 = sub_299E14DE8(v316, v490, v320, v489, v487);
            v93 = sub_299E14DE8(v306, v315, v321, v487, v310);
            v203 = v310;
            v122 = v445;
          }

          v266 = v441.f32[0];
          if (v441.f32[0] != 0.0)
          {
            v322 = sub_299E15000(v406, v471, v493, v441.f32[0]);
            v323 = sub_299E15000(v291, v454, v465, v441.f32[0]);
            v324 = sub_299E15000(v323, v465, v490, *v450.i32 + *v450.i32);
            v325 = sub_299E14DE8(v322, v493, v324, v490, v488);
            v326 = sub_299E14DE8(v93, v203, v325, v488, v194);
            v327 = sub_299E15000(v323, v465, v490, v441.f32[0]);
            v328 = sub_299E15000(v289, v451, v459, v441.f32[0]);
            v329 = sub_299E15000(v328, v459, v493, *v450.i32 + *v450.i32);
            v330 = sub_299E15000(v328, v459, v492, v441.f32[0]);
            v331 = sub_299E14DE8(v329, v493, v330, v492, v489);
            v332 = sub_299E14DE8(v327, v490, v331, v489, v487);
            v333 = sub_299E14DE8(v326, v194, v332, v487, v203);
            v266 = v441.f32[0];
            v93 = v333;
            v204 = v432;
            if ((v430 & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_89;
          }

          v156 = v194;
          v265 = v436.f32[0];
          v204 = v432;
LABEL_86:
          if ((v430 & 1) == 0)
          {
LABEL_101:
            _S1 = v203[v93 - 1];
            goto LABEL_102;
          }

          if ((v408 & 1) == 0)
          {
            v456[0] = 0.0;
            v453[0] = 0.0;
            v357 = 1;
            v356 = 1;
            goto LABEL_91;
          }

          v194 = v156;
          v307 = v426;
LABEL_89:
          v399 = v106;
          v334 = vmuls_lane_f32(4096.0, v204, 1);
          v335 = v334 - (v334 - v204.f32[1]);
          v336 = v204.f32[1] - v335;
          v337 = -((((v407 - (v335 * v442)) - ((v204.f32[1] - v335) * v442)) - (v335 * v443)) - ((v204.f32[1] - v335) * v443));
          v338 = v424 * v266;
          v339 = v159;
          v340 = (v266 * 4096.0) - ((v266 * 4096.0) - v266);
          v341 = v266 - v340;
          v342 = v337 - (((((v424 * v266) + (v412 * v340)) + (v411 * v340)) + (v412 * (v266 - v340))) - (v307 * (v266 - v340)));
          v343 = (-(((((v424 * v266) + (v412 * v340)) + (v411 * v340)) + (v412 * (v266 - v340))) - (v307 * (v266 - v340))) - (v342 - v337)) + (v337 - (v342 - (v342 - v337)));
          v344 = v407 + v342;
          v345 = (v342 - ((v407 + v342) - v407)) + (v407 - ((v407 + v342) - ((v407 + v342) - v407)));
          v346 = (v424 * v266) + v345;
          v499 = v343;
          v500 = (v338 - (v346 - v345)) + (v345 - (v346 - (v346 - v345)));
          v501 = (v346 - ((v344 + v346) - v344)) + (v344 - ((v344 + v346) - ((v344 + v346) - v344)));
          v502 = v344 + v346;
          v347 = -(*&v450.i32[1] * v204.f32[0]);
          v348 = (v204.f32[0] * 4096.0) - ((v204.f32[0] * 4096.0) - v204.f32[0]);
          v349 = v204.f32[0] - v348;
          v350 = -((((v347 - (v348 * ((*&v450.i32[1] * -4096.0) - (*&v450.i32[1] + (*&v450.i32[1] * -4096.0))))) - ((v204.f32[0] - v348) * ((*&v450.i32[1] * -4096.0) - (*&v450.i32[1] + (*&v450.i32[1] * -4096.0))))) - (v348 * (-*&v450.i32[1] - ((*&v450.i32[1] * -4096.0) - (*&v450.i32[1] + (*&v450.i32[1] * -4096.0)))))) - ((v204.f32[0] - v348) * (-*&v450.i32[1] - ((*&v450.i32[1] * -4096.0) - (*&v450.i32[1] + (*&v450.i32[1] * -4096.0))))));
          v351 = v350 - (((((v422 * ((v339 * -4096.0) - (v339 + (v339 * -4096.0)))) - (v339 * v448.f32[0])) + (v416 * ((v339 * -4096.0) - (v339 + (v339 * -4096.0))))) + (v422 * (-v339 - ((v339 * -4096.0) - (v339 + (v339 * -4096.0)))))) - (v446 * (-v339 - ((v339 * -4096.0) - (v339 + (v339 * -4096.0))))));
          v352 = (-(((((v422 * ((v339 * -4096.0) - (v339 + (v339 * -4096.0)))) - (v339 * v448.f32[0])) + (v416 * ((v339 * -4096.0) - (v339 + (v339 * -4096.0))))) + (v422 * (-v339 - ((v339 * -4096.0) - (v339 + (v339 * -4096.0)))))) - (v446 * (-v339 - ((v339 * -4096.0) - (v339 + (v339 * -4096.0)))))) - (v351 - v350)) + (v350 - (v351 - (v351 - v350)));
          v353 = v351 - (*&v450.i32[1] * v204.f32[0]);
          v354 = (v351 - (v353 - v347)) + (v347 - (v353 - (v353 - v347)));
          v355 = v354 - (v339 * v448.f32[0]);
          v495 = v352;
          v496 = (-(v339 * v448.f32[0]) - (v355 - v354)) + (v354 - (v355 - (v355 - v354)));
          v497 = (v355 - ((v353 + v355) - v353)) + (v353 - ((v353 + v355) - ((v353 + v355) - v353)));
          v498 = v353 + v355;
          v356 = 4;
          v357 = sub_299E14DE8(4, &v499, 4, &v495, v456);
          v358 = vmuls_lane_f32(v441.f32[0], v432, 1);
          v359 = (v358 - (v335 * v340)) - (v336 * v340);
          v159 = v339;
          v106 = v399;
          v360 = -((v359 - (v335 * v341)) - (v336 * v341));
          v114 = v447;
          v361 = -(((((v159 * v432.f32[0]) - (v348 * ((v159 * 4096.0) - ((v159 * 4096.0) - v159)))) - (v349 * ((v159 * 4096.0) - ((v159 * 4096.0) - v159)))) - (v348 * (v159 - ((v159 * 4096.0) - ((v159 * 4096.0) - v159))))) - (v349 * (v159 - ((v159 * 4096.0) - ((v159 * 4096.0) - v159)))));
          v362 = v360 - v361;
          v363 = ((v360 - (v360 - v361)) - v361) + (v360 - ((v360 - v361) + (v360 - (v360 - v361))));
          v364 = v358 + v362;
          v365 = (v362 - ((v358 + v362) - v358)) + (v358 - ((v358 + v362) - ((v358 + v362) - v358)));
          v366 = v365 - (v159 * v432.f32[0]);
          v453[0] = v363;
          v453[1] = ((v365 - v366) - (v159 * v432.f32[0])) + (v365 - (v366 + (v365 - v366)));
          v453[2] = (v366 - ((v364 + v366) - v364)) + (v364 - ((v364 + v366) - ((v364 + v366) - v364)));
          v453[3] = v364 + v366;
          v156 = v194;
          v265 = v436.f32[0];
LABEL_91:
          if (v410)
          {
            v367 = sub_299E15000(v402, v470, v493, v265);
            v368 = sub_299E15000(v357, v456, v464, v436.f32[0]);
            v369 = sub_299E15000(v368, v464, v490, v449.f32[0] + v449.f32[0]);
            v370 = sub_299E14DE8(v367, v493, v369, v490, v488);
            v371 = sub_299E14DE8(v93, v203, v370, v488, v156);
            if (v434)
            {
              v372 = sub_299E15000(4, &v504, v494, v436.f32[0]);
              v373 = sub_299E15000(v372, v494, v493, v159);
              v371 = sub_299E14DE8(v371, v156, v373, v493, v203);
              v374 = v203;
            }

            else
            {
              v374 = v156;
              v156 = v203;
            }

            if (v441.f32[0] == 0.0)
            {
              v377 = v374;
              v374 = v156;
              v156 = v377;
            }

            else
            {
              v375 = sub_299E15000(4, &v507, v494, -v436.f32[0]);
              v376 = sub_299E15000(v375, v494, v493, v441.f32[0]);
              v371 = sub_299E14DE8(v371, v374, v376, v493, v156);
              v377 = v156;
            }

            v378 = sub_299E15000(v368, v464, v490, v436.f32[0]);
            v379 = sub_299E15000(v356, v453, v458, v436.f32[0]);
            v380 = sub_299E15000(v379, v458, v493, v449.f32[0] + v449.f32[0]);
            v381 = sub_299E15000(v379, v458, v492, v436.f32[0]);
            v382 = sub_299E14DE8(v380, v493, v381, v492, v489);
            v383 = sub_299E14DE8(v378, v490, v382, v489, v487);
            v93 = sub_299E14DE8(v371, v377, v383, v487, v374);
            v203 = v374;
            v122 = v445;
          }

          if (v122)
          {
            v384 = sub_299E15000(v404, v469, v493, v106);
            v385 = sub_299E15000(v357, v456, v463, v106);
            v386 = sub_299E15000(v385, v463, v490, v114 + v114);
            v387 = sub_299E14DE8(v384, v493, v386, v490, v488);
            v388 = sub_299E14DE8(v93, v203, v387, v488, v156);
            v389 = sub_299E15000(v385, v463, v490, v106);
            v390 = sub_299E15000(v356, v453, v457, v106);
            v391 = sub_299E15000(v390, v457, v493, v114 + v114);
            v392 = sub_299E15000(v390, v457, v492, v106);
            v393 = sub_299E14DE8(v391, v493, v392, v492, v489);
            v394 = sub_299E14DE8(v389, v490, v393, v489, v487);
            v93 = sub_299E14DE8(v388, v156, v394, v487, v203);
          }

          goto LABEL_101;
        }
      }
    }
  }

LABEL_102:
  __asm { FCVT            H0, S1 }

  return result;
}

__int16 _simd_insphere_ph3@<H0>(uint64_t a1@<X0>)
{
  v1 = vcvtq_f32_f16(COERCE_FLOAT16X4_T(MEMORY[0x2A1C7C4A8](a1)));
  v3 = vcvtq_f32_f16(v2);
  v5 = vcvtq_f32_f16(v4);
  v7 = vcvtq_f32_f16(v6);
  v9 = vcvtq_f32_f16(v8);
  v10 = vsubq_f32(v3, v1);
  v11 = vmulq_f32(v10, v10);
  v12 = v10;
  v12.f32[3] = v11.f32[2] + vaddv_f32(*v11.f32);
  v13 = vsubq_f32(v5, v1);
  v14 = vmulq_f32(v13, v13);
  v15 = v13;
  *&v15.i32[3] = v14.f32[2] + vaddv_f32(*v14.f32);
  v16 = vsubq_f32(v7, v1);
  v17 = vmulq_f32(v16, v16);
  v18 = v16;
  *&v18.i32[3] = v17.f32[2] + vaddv_f32(*v17.f32);
  v19 = vsubq_f32(v9, v1);
  v20 = vmulq_f32(v19, v19);
  v21 = v19;
  *&v21.i32[3] = v20.f32[2] + vaddv_f32(*v20.f32);
  v22 = vextq_s8(v15, v15, 4uLL);
  v23 = vextq_s8(v15, v15, 8uLL);
  v24 = vextq_s8(v15, v15, 0xCuLL);
  v25 = vextq_s8(v18, v18, 4uLL);
  v26 = vextq_s8(v18, v18, 8uLL);
  v27 = vextq_s8(v18, v18, 0xCuLL);
  v28 = vextq_s8(v21, v21, 4uLL);
  v29 = vextq_s8(v21, v21, 8uLL);
  v30 = vextq_s8(v21, v21, 0xCuLL);
  v31 = vmulq_f32(v27, v29);
  v32 = vmulq_f32(v25, v30);
  v33 = vmulq_f32(v26, v28);
  v34 = vmulq_f32(v12, vmlaq_f32(vmlaq_f32(vmulq_f32(v23, vmlaq_f32(vnegq_f32(v32), v28, v27)), vmlaq_f32(vnegq_f32(v31), v30, v26), v22), vmlaq_f32(vnegq_f32(v33), v29, v25), v24));
  v35 = vextq_s8(v34, v34, 8uLL).u64[0];
  _S0 = vaddv_f32(vsub_f32(vzip1_s32(*v34.i8, v35), vzip2_s32(*v34.i8, v35)));
  v37 = vmulq_f32(vabsq_f32(v12), vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v23), vaddq_f32(vabsq_f32(vmulq_f32(v27, v28)), vabsq_f32(v32))), vaddq_f32(vabsq_f32(vmulq_f32(v26, v30)), vabsq_f32(v31)), vabsq_f32(v22)), vaddq_f32(vabsq_f32(vmulq_f32(v25, v29)), vabsq_f32(v33)), vabsq_f32(v24)));
  v38 = vaddv_f32(vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)));
  if (_S0 <= (v38 * 0.0078659) && (v38 * 0.0078659) >= -_S0)
  {
    v393 = v3.f32[1];
    v40 = v3.f32[1] - v1.f32[1];
    v400 = v38;
    v402 = v5.f32[1];
    v41 = v5.f32[1] - v1.f32[1];
    v394 = v7.f32[1];
    v42 = v7.f32[1] - v1.f32[1];
    v395 = v9.f32[1];
    v396 = v1.f32[1];
    v43 = v9.f32[1] - v1.f32[1];
    v44 = (v5.f32[1] - v1.f32[1]) * v10.f32[0];
    v408 = v5;
    v45 = (4096.0 * v10.f32[0]) - ((4096.0 * v10.f32[0]) - v10.f32[0]);
    v46 = ((v5.f32[1] - v1.f32[1]) * 4096.0) - (((v5.f32[1] - v1.f32[1]) * 4096.0) - (v5.f32[1] - v1.f32[1]));
    v47 = (v5.f32[1] - v1.f32[1]) - v46;
    v48 = -((((v44 - (v45 * v46)) - ((v10.f32[0] - v45) * v46)) - (v45 * v47)) - ((v10.f32[0] - v45) * v47));
    v49 = (v3.f32[1] - v1.f32[1]) * v13.f32[0];
    v50 = (4096.0 * v13.f32[0]) - ((4096.0 * v13.f32[0]) - v13.f32[0]);
    v51 = v13.f32[0] - v50;
    v52 = ((v3.f32[1] - v1.f32[1]) * 4096.0) - (((v3.f32[1] - v1.f32[1]) * 4096.0) - (v3.f32[1] - v1.f32[1]));
    v53 = (v3.f32[1] - v1.f32[1]) - v52;
    v54 = -((((v49 - (v50 * v52)) - ((v13.f32[0] - v50) * v52)) - (v50 * v53)) - ((v13.f32[0] - v50) * v53));
    v55 = v48 - v54;
    v56 = ((v48 - (v48 - v54)) - v54) + (v48 - ((v48 - v54) + (v48 - (v48 - v54))));
    v57 = v44 + v55;
    v58 = (v55 - ((v44 + v55) - v44)) + (v44 - ((v44 + v55) - ((v44 + v55) - v44)));
    v439[0] = v56;
    v439[1] = ((v58 - (v58 - v49)) - v49) + (v58 - ((v58 - v49) + (v58 - (v58 - v49))));
    v403 = v57 + (v58 - v49);
    v398 = ((v58 - v49) - (v403 - v57)) + (v57 - (v403 - (v403 - v57)));
    v59 = (v7.f32[1] - v1.f32[1]) * v13.f32[0];
    v60 = ((v7.f32[1] - v1.f32[1]) * 4096.0) - (((v7.f32[1] - v1.f32[1]) * 4096.0) - (v7.f32[1] - v1.f32[1]));
    v61 = (v7.f32[1] - v1.f32[1]) - v60;
    v62 = -((((v59 - (v50 * v60)) - ((v13.f32[0] - v50) * v60)) - (v50 * v61)) - ((v13.f32[0] - v50) * v61));
    v63 = (v5.f32[1] - v1.f32[1]) * v16.f32[0];
    v64 = (4096.0 * v16.f32[0]) - ((4096.0 * v16.f32[0]) - v16.f32[0]);
    v414 = v13;
    v65 = -((((v63 - (v64 * v46)) - ((v16.f32[0] - v64) * v46)) - (v64 * v47)) - ((v16.f32[0] - v64) * v47));
    v406 = v9;
    v407 = v3;
    v66 = v19;
    v67 = v62 - v65;
    v405 = v7;
    v68 = ((v62 - (v62 - v65)) - v65) + (v62 - ((v62 - v65) + (v62 - (v62 - v65))));
    v69 = v59 + v67;
    v70 = (v67 - ((v59 + v67) - v59)) + (v59 - ((v59 + v67) - ((v59 + v67) - v59)));
    v438[0] = v68;
    v438[1] = ((v70 - (v70 - v63)) - v63) + (v70 - ((v70 - v63) + (v70 - (v70 - v63))));
    v71 = v69 + (v70 - v63);
    v438[2] = ((v70 - v63) - (v71 - v69)) + (v69 - (v71 - (v71 - v69)));
    v72 = (v9.f32[1] - v1.f32[1]) * v16.f32[0];
    v73 = ((v9.f32[1] - v1.f32[1]) * 4096.0) - (((v9.f32[1] - v1.f32[1]) * 4096.0) - (v9.f32[1] - v1.f32[1]));
    v74 = (v9.f32[1] - v1.f32[1]) - v73;
    v9.f32[0] = -((((v72 - (v64 * v73)) - ((v16.f32[0] - v64) * v73)) - (v64 * v74)) - ((v16.f32[0] - v64) * v74));
    v7.f32[0] = (v7.f32[1] - v1.f32[1]) * v66.f32[0];
    v75 = (4096.0 * v66.f32[0]) - ((4096.0 * v66.f32[0]) - v66.f32[0]);
    v5.f32[0] = -((((v7.f32[0] - (v75 * v60)) - ((v66.f32[0] - v75) * v60)) - (v75 * v61)) - ((v66.f32[0] - v75) * v61));
    v76 = v9.f32[0] - v5.f32[0];
    v410 = v16;
    v9.f32[0] = ((v9.f32[0] - (v9.f32[0] - v5.f32[0])) - v5.f32[0]) + (v9.f32[0] - ((v9.f32[0] - v5.f32[0]) + (v9.f32[0] - (v9.f32[0] - v5.f32[0]))));
    v5.f32[0] = v72 + v76;
    v77 = (v76 - ((v72 + v76) - v72)) + (v72 - ((v72 + v76) - ((v72 + v76) - v72)));
    v437[0] = v9.f32[0];
    v437[1] = ((v77 - (v77 - v7.f32[0])) - v7.f32[0]) + (v77 - ((v77 - v7.f32[0]) + (v77 - (v77 - v7.f32[0]))));
    v78 = v5.f32[0] + (v77 - v7.f32[0]);
    v437[2] = ((v77 - v7.f32[0]) - (v78 - v5.f32[0])) + (v5.f32[0] - (v78 - (v78 - v5.f32[0])));
    v409 = v66.f32[0];
    v9.f32[0] = -(((((v40 * v66.f32[0]) - (v75 * v52)) - ((v66.f32[0] - v75) * v52)) - (v75 * v53)) - ((v66.f32[0] - v75) * v53));
    v412 = v10;
    v7.f32[0] = (v9.f32[1] - v1.f32[1]) * v10.f32[0];
    v5.f32[0] = -((((v7.f32[0] - (v45 * v73)) - ((v10.f32[0] - v45) * v73)) - (v45 * v74)) - ((v10.f32[0] - v45) * v74));
    v79 = v9.f32[0] - v5.f32[0];
    v9.f32[0] = ((v9.f32[0] - (v9.f32[0] - v5.f32[0])) - v5.f32[0]) + (v9.f32[0] - ((v9.f32[0] - v5.f32[0]) + (v9.f32[0] - (v9.f32[0] - v5.f32[0]))));
    v5.f32[0] = (v40 * v66.f32[0]) + v79;
    v80 = (v79 - (v5.f32[0] - (v40 * v66.f32[0]))) + ((v40 * v66.f32[0]) - (v5.f32[0] - (v5.f32[0] - (v40 * v66.f32[0]))));
    v81 = v80 - v7.f32[0];
    v436[0] = v9.f32[0];
    v436[1] = ((v80 - (v80 - v7.f32[0])) - v7.f32[0]) + (v80 - ((v80 - v7.f32[0]) + (v80 - (v80 - v7.f32[0]))));
    v436[2] = (v81 - ((v5.f32[0] + v81) - v5.f32[0])) + (v5.f32[0] - ((v5.f32[0] + v81) - ((v5.f32[0] + v81) - v5.f32[0])));
    v82 = (v7.f32[1] - v1.f32[1]) * v10.f32[0];
    v83 = -((((v82 - (v45 * v60)) - ((v10.f32[0] - v45) * v60)) - (v45 * v61)) - ((v10.f32[0] - v45) * v61));
    v84 = -(((((v40 * v16.f32[0]) - (v64 * v52)) - ((v16.f32[0] - v64) * v52)) - (v64 * v53)) - ((v16.f32[0] - v64) * v53));
    v85 = v83 - v84;
    v86 = ((v83 - (v83 - v84)) - v84) + (v83 - ((v83 - v84) + (v83 - (v83 - v84))));
    v87 = v82 + v85;
    v88 = (v85 - ((v82 + v85) - v82)) + (v82 - ((v82 + v85) - ((v82 + v85) - v82)));
    v89 = v88 - (v40 * v16.f32[0]);
    v435[0] = v86;
    v435[1] = ((v88 - v89) - (v40 * v16.f32[0])) + (v88 - (v89 + (v88 - v89)));
    v90 = (v9.f32[1] - v1.f32[1]) * v414.f32[0];
    v91 = -((((v90 - (v50 * v73)) - (v51 * v73)) - (v50 * v74)) - (v51 * v74));
    v92 = (v5.f32[1] - v1.f32[1]) * v66.f32[0];
    v404 = v1;
    v93 = -((((v92 - (v75 * v46)) - ((v66.f32[0] - v75) * v46)) - (v75 * v47)) - ((v66.f32[0] - v75) * v47));
    v94 = v91 - v93;
    v95 = ((v91 - (v91 - v93)) - v93) + (v91 - ((v91 - v93) + (v91 - (v91 - v93))));
    v96 = v90 + v94;
    v97 = (v94 - ((v90 + v94) - v90)) + (v90 - ((v90 + v94) - ((v90 + v94) - v90)));
    v397 = v407.f32[2] - v1.f32[2];
    v434[0] = v95;
    v434[1] = ((v97 - (v97 - v92)) - v92) + (v97 - ((v97 - v92) + (v97 - (v97 - v92))));
    v98 = v408.f32[2] - v1.f32[2];
    v434[2] = ((v97 - v92) - ((v96 + (v97 - v92)) - v96)) + (v96 - ((v96 + (v97 - v92)) - ((v96 + (v97 - v92)) - v96)));
    v99 = v405.f32[2] - v1.f32[2];
    v439[2] = v398;
    v439[3] = v403;
    v391 = v78;
    v392 = v71;
    v438[3] = v71;
    v437[3] = v78;
    v389 = v87 + v89;
    v390 = v5.f32[0] + v81;
    v436[3] = v5.f32[0] + v81;
    v435[2] = (v89 - ((v87 + v89) - v87)) + (v87 - ((v87 + v89) - ((v87 + v89) - v87)));
    v399 = v1.f32[2];
    v100 = v406.f32[2] - v1.f32[2];
    v435[3] = v87 + v89;
    v388 = v96 + (v97 - v92);
    v434[3] = v388;
    v101 = sub_299E15000(4, v437, v433, v408.f32[2] - v1.f32[2]);
    v103 = sub_299E15000(4, v434, v432, -v99);
    v104 = sub_299E15000(4, v438, v431, v100);
    v105 = sub_299E14DE8(v101, v433, v103, v432, v430);
    v106 = sub_299E14DE8(v104, v431, v105, v430, v429);
    v107 = sub_299E15000(v106, v429, v428, v412.f32[0]);
    v108 = sub_299E15000(v107, v428, v427, -v412.f32[0]);
    v109 = sub_299E15000(v106, v429, v428, v40);
    v110 = sub_299E15000(v109, v428, v426, -v40);
    v111 = sub_299E15000(v106, v429, v428, v397);
    v112 = sub_299E15000(v111, v428, v425, -v397);
    v113 = sub_299E14DE8(v108, v427, v110, v426, v424);
    v114 = sub_299E14DE8(v113, v424, v112, v425, v423);
    v115 = sub_299E15000(4, v436, v433, v99);
    v116 = sub_299E15000(4, v435, v432, v100);
    v117 = sub_299E15000(4, v437, v431, v397);
    v118 = sub_299E14DE8(v115, v433, v116, v432, v430);
    v119 = sub_299E14DE8(v117, v431, v118, v430, v429);
    v120 = sub_299E15000(v119, v429, v428, v414.f32[0]);
    v121 = sub_299E15000(v120, v428, v427, v414.f32[0]);
    v122 = sub_299E15000(v119, v429, v428, v41);
    v123 = sub_299E15000(v122, v428, v426, v41);
    v124 = sub_299E15000(v119, v429, v428, v98);
    v125 = sub_299E15000(v124, v428, v425, v98);
    v126 = sub_299E14DE8(v121, v427, v123, v426, v424);
    v127 = sub_299E14DE8(v126, v424, v125, v425, v422);
    v128 = sub_299E15000(4, v439, v433, v100);
    v129 = sub_299E15000(4, v434, v432, v397);
    v130 = sub_299E15000(4, v436, v431, v98);
    v131 = sub_299E14DE8(v128, v433, v129, v432, v430);
    v132 = sub_299E14DE8(v130, v431, v131, v430, v429);
    v133 = sub_299E15000(v132, v429, v428, v410.f32[0]);
    v134 = sub_299E15000(v133, v428, v427, -v410.f32[0]);
    v135 = sub_299E15000(v132, v429, v428, v42);
    v136 = sub_299E15000(v135, v428, v426, -v42);
    v137 = sub_299E15000(v132, v429, v428, v99);
    v138 = sub_299E15000(v137, v428, v425, -v99);
    v139 = sub_299E14DE8(v134, v427, v136, v426, v424);
    v140 = sub_299E14DE8(v139, v424, v138, v425, v421);
    v141 = sub_299E15000(4, v438, v433, v397);
    v142 = sub_299E15000(4, v435, v432, -v98);
    v143 = sub_299E15000(4, v439, v431, v99);
    v144 = sub_299E14DE8(v141, v433, v142, v432, v430);
    v145 = sub_299E14DE8(v143, v431, v144, v430, v429);
    v146 = sub_299E15000(v145, v429, v428, v66.f32[0]);
    v147 = sub_299E15000(v146, v428, v427, v66.f32[0]);
    v148 = sub_299E15000(v145, v429, v428, v43);
    v149 = sub_299E15000(v148, v428, v426, v43);
    v150 = sub_299E15000(v145, v429, v428, v100);
    v151 = sub_299E15000(v150, v428, v425, v100);
    v152 = sub_299E14DE8(v147, v427, v149, v426, v424);
    v153 = sub_299E14DE8(v152, v424, v151, v425, v420);
    v154 = sub_299E14DE8(v114, v423, v127, v422, v419);
    v155 = sub_299E14DE8(v140, v421, v153, v420, v418);
    v156 = sub_299E14DE8(v154, v419, v155, v418, &v416);
    _S0 = v416;
    if (v156 < 2)
    {
      v159 = v400;
    }

    else
    {
      v157 = v156 - 1;
      v158 = &v417;
      v159 = v400;
      do
      {
        v160 = *v158++;
        _S0 = _S0 + v160;
        --v157;
      }

      while (v157);
    }

    if (_S0 < (v159 * 0.0024586) && (v159 * 0.0024586) > -_S0)
    {
      v162 = vsubq_f32(v407, v412);
      v163 = vaddq_f32(vsubq_f32(v162, v404), vsubq_f32(v407, vaddq_f32(v412, v162))).f32[0];
      v164 = ((v393 - v40) - v396) + (v393 - (v40 + (v393 - v40)));
      v165 = ((v407.f32[2] - v397) - v399) + (v407.f32[2] - (v397 + (v407.f32[2] - v397)));
      v166 = vsubq_f32(v408, v414);
      LODWORD(v167) = vaddq_f32(vsubq_f32(v166, v404), vsubq_f32(v408, vaddq_f32(v414, v166))).u32[0];
      v168 = ((v402 - v41) - v396) + (v402 - (v41 + (v402 - v41)));
      v169 = ((v408.f32[2] - v98) - v399) + (v408.f32[2] - (v98 + (v408.f32[2] - v98)));
      v170 = vsubq_f32(v405, v410);
      LODWORD(v171) = vaddq_f32(vsubq_f32(v170, v404), vsubq_f32(v405, vaddq_f32(v410, v170))).u32[0];
      v172 = ((v394 - v42) - v396) + (v394 - (v42 + (v394 - v42)));
      v173 = ((v405.f32[2] - v99) - v399) + (v405.f32[2] - (v99 + (v405.f32[2] - v99)));
      v174 = vsubq_f32(v406, v66);
      LODWORD(v175) = vaddq_f32(vsubq_f32(v174, v404), vsubq_f32(v406, vaddq_f32(v66, v174))).u32[0];
      v176 = ((v395 - v43) - v396) + (v395 - (v43 + (v395 - v43)));
      v177 = ((v406.f32[2] - v100) - v399) + (v406.f32[2] - (v100 + (v406.f32[2] - v100)));
      if (v163 != 0.0 || v164 != 0.0 || v165 != 0.0 || v167 != 0.0 || v168 != 0.0 || v169 != 0.0 || v171 != 0.0 || v172 != 0.0 || v173 != 0.0 || v175 != 0.0 || v176 != 0.0 || v177 != 0.0)
      {
        v401 = (fabsf(_S0) * 0.0014668) + (v159 * 0.000017092);
        v178 = ((v41 * v163) + (v412.f32[0] * v168)) - ((v414.f32[0] * v164) + (v40 * v167));
        v179 = ((v394 - v42) - v396) + (v394 - (v42 + (v394 - v42)));
        v180 = ((v42 * v167) + (v414.f32[0] * v172)) - ((v410.f32[0] * v168) + (v41 * v171));
        v181 = ((v393 - v40) - v396) + (v393 - (v40 + (v393 - v40)));
        v182 = ((v43 * v171) + (v410.f32[0] * v176)) - ((v66.f32[0] * v179) + (v42 * v175));
        v183 = ((v40 * v175) + (v66.f32[0] * v181)) - ((v412.f32[0] * v176) + (v43 * v163));
        v184 = ((v42 * v163) + (v412.f32[0] * v179)) - ((v410.f32[0] * v181) + (v40 * v171));
        v185 = ((((v43 * v43) + (v66.f32[0] * v66.f32[0])) + (v100 * v100)) * ((((v184 * -v98) + (v397 * v180)) + (v99 * v178)) + (((v165 * v392) - (v169 * v389)) + (v173 * v403)))) + ((((v41 * v41) + (v414.f32[0] * v414.f32[0])) + (v98 * v98)) * ((((v100 * v184) + (v99 * v183)) + (v397 * v182)) + (((v177 * v389) + (v173 * v390)) + (v165 * v391))));
        v186 = ((v43 * v167) + (v414.f32[0] * v176)) - ((v66.f32[0] * v168) + (v41 * v175));
        v102 = -v99;
        _S0 = (v185 - (((((v42 * v42) + (v410.f32[0] * v410.f32[0])) + (v99 * v99)) * ((((v397 * v186) + (v100 * v178)) + (v98 * v183)) + (((v165 * v388) + (v177 * v403)) + (v169 * v390)))) + ((((v40 * v40) + (v412.f32[0] * v412.f32[0])) + (v397 * v397)) * ((((v186 * v102) + (v98 * v182)) + (v100 * v180)) + (((v169 * v391) - (v173 * v388)) + (v177 * v392)))))) + ((((((v43 * v176) + (v409 * v175)) + (v100 * v177)) * (((v389 * -v98) + (v397 * v392)) + (v99 * v403))) + ((((v41 * v168) + (v414.f32[0] * v167)) + (v98 * v169)) * (((v100 * v389) + (v99 * v390)) + (v397 * v391)))) - (((((v42 * v179) + (v410.f32[0] * v171)) + (v99 * (((v405.f32[2] - v99) - v399) + (v405.f32[2] - (v99 + (v405.f32[2] - v99)))))) * (((v397 * v388) + (v100 * v403)) + (v98 * v390))) + ((((v40 * v181) + (v412.f32[0] * v163)) + (v397 * v165)) * (((v388 * v102) + (v98 * v391)) + (v100 * v392))))) * 2.0 + _S0;
        if (v401 > _S0 && v401 > -_S0)
        {
          v188 = (v407.f32[0] * 4096.0) - ((v407.f32[0] * 4096.0) - v407.f32[0]);
          v189 = (v402 * 4096.0) - ((v402 * 4096.0) - v402);
          v190 = -(((((v407.f32[0] * v402) - (v188 * v189)) - ((v407.f32[0] - v188) * v189)) - (v188 * (v402 - v189))) - ((v407.f32[0] - v188) * (v402 - v189)));
          v191 = (v408.f32[0] * 4096.0) - ((v408.f32[0] * 4096.0) - v408.f32[0]);
          v192 = (v393 * 4096.0) - ((v393 * 4096.0) - v393);
          v193 = -(((((v393 * v408.f32[0]) - (v191 * v192)) - ((v408.f32[0] - v191) * v192)) - (v191 * (v393 - v192))) - ((v408.f32[0] - v191) * (v393 - v192)));
          v194 = v190 - v193;
          v195 = ((v190 - (v190 - v193)) - v193) + (v190 - ((v190 - v193) + (v190 - (v190 - v193))));
          v196 = (v407.f32[0] * v402) + v194;
          v197 = (v194 - (v196 - (v407.f32[0] * v402))) + ((v407.f32[0] * v402) - (v196 - (v196 - (v407.f32[0] * v402))));
          v198 = v197 - (v393 * v408.f32[0]);
          v483[0] = v195;
          v483[1] = ((v197 - v198) - (v393 * v408.f32[0])) + (v197 - (v198 + (v197 - v198)));
          v483[2] = (v198 - ((v196 + v198) - v196)) + (v196 - ((v196 + v198) - ((v196 + v198) - v196)));
          v483[3] = v196 + v198;
          v199 = (v394 * 4096.0) - ((v394 * 4096.0) - v394);
          v200 = -(((((v408.f32[0] * v394) - (v191 * v199)) - ((v408.f32[0] - v191) * v199)) - (v191 * (v394 - v199))) - ((v408.f32[0] - v191) * (v394 - v199)));
          v201 = (v405.f32[0] * 4096.0) - ((v405.f32[0] * 4096.0) - v405.f32[0]);
          v202 = -(((((v402 * v405.f32[0]) - (v201 * v189)) - ((v405.f32[0] - v201) * v189)) - (v201 * (v402 - v189))) - ((v405.f32[0] - v201) * (v402 - v189)));
          v203 = v200 - v202;
          v204 = ((v200 - (v200 - v202)) - v202) + (v200 - ((v200 - v202) + (v200 - (v200 - v202))));
          v205 = (v408.f32[0] * v394) + v203;
          v206 = (v203 - (v205 - (v408.f32[0] * v394))) + ((v408.f32[0] * v394) - (v205 - (v205 - (v408.f32[0] * v394))));
          v207 = v206 - (v402 * v405.f32[0]);
          v482[0] = v204;
          v482[1] = ((v206 - v207) - (v402 * v405.f32[0])) + (v206 - (v207 + (v206 - v207)));
          v482[2] = (v207 - ((v205 + v207) - v205)) + (v205 - ((v205 + v207) - ((v205 + v207) - v205)));
          v482[3] = v205 + v207;
          v208 = (v395 * 4096.0) - ((v395 * 4096.0) - v395);
          v209 = -(((((v405.f32[0] * v395) - (v201 * v208)) - ((v405.f32[0] - v201) * v208)) - (v201 * (v395 - v208))) - ((v405.f32[0] - v201) * (v395 - v208)));
          v210 = (v406.f32[0] * 4096.0) - ((v406.f32[0] * 4096.0) - v406.f32[0]);
          v211 = -(((((v394 * v406.f32[0]) - (v210 * v199)) - ((v406.f32[0] - v210) * v199)) - (v210 * (v394 - v199))) - ((v406.f32[0] - v210) * (v394 - v199)));
          v212 = v209 - v211;
          v213 = ((v209 - (v209 - v211)) - v211) + (v209 - ((v209 - v211) + (v209 - (v209 - v211))));
          v214 = (v405.f32[0] * v395) + v212;
          v215 = (v212 - (v214 - (v405.f32[0] * v395))) + ((v405.f32[0] * v395) - (v214 - (v214 - (v405.f32[0] * v395))));
          v216 = v215 - (v394 * v406.f32[0]);
          v481[0] = v213;
          v481[1] = ((v215 - v216) - (v394 * v406.f32[0])) + (v215 - (v216 + (v215 - v216)));
          v481[2] = (v216 - ((v214 + v216) - v214)) + (v214 - ((v214 + v216) - ((v214 + v216) - v214)));
          v481[3] = v214 + v216;
          v217 = (v396 * 4096.0) - ((v396 * 4096.0) - v396);
          v218 = -(((((v396 * v406.f32[0]) - (v210 * v217)) - ((v406.f32[0] - v210) * v217)) - (v210 * (v396 - v217))) - ((v406.f32[0] - v210) * (v396 - v217)));
          v219 = (v404.f32[0] * 4096.0) - ((v404.f32[0] * 4096.0) - v404.f32[0]);
          v220 = -(((((v404.f32[0] * v395) - (v219 * v208)) - ((v404.f32[0] - v219) * v208)) - (v219 * (v395 - v208))) - ((v404.f32[0] - v219) * (v395 - v208)));
          v221 = v218 - v220;
          v222 = ((v218 - (v218 - v220)) - v220) + (v218 - ((v218 - v220) + (v218 - (v218 - v220))));
          v223 = (v396 * v406.f32[0]) + v221;
          v224 = (v221 - (v223 - (v396 * v406.f32[0]))) + ((v396 * v406.f32[0]) - (v223 - (v223 - (v396 * v406.f32[0]))));
          v225 = v224 - (v404.f32[0] * v395);
          v480[0] = v222;
          v480[1] = ((v224 - v225) - (v404.f32[0] * v395)) + (v224 - (v225 + (v224 - v225)));
          v480[2] = (v225 - ((v223 + v225) - v223)) + (v223 - ((v223 + v225) - ((v223 + v225) - v223)));
          v480[3] = v223 + v225;
          v226 = -(((((v404.f32[0] * v393) - (v219 * v192)) - ((v404.f32[0] - v219) * v192)) - (v219 * (v393 - v192))) - ((v404.f32[0] - v219) * (v393 - v192)));
          v227 = -(((((v396 * v407.f32[0]) - (v188 * v217)) - ((v407.f32[0] - v188) * v217)) - (v188 * (v396 - v217))) - ((v407.f32[0] - v188) * (v396 - v217)));
          v228 = v226 - v227;
          v229 = ((v226 - (v226 - v227)) - v227) + (v226 - ((v226 - v227) + (v226 - (v226 - v227))));
          v230 = (v404.f32[0] * v393) + v228;
          v231 = (v228 - (v230 - (v404.f32[0] * v393))) + ((v404.f32[0] * v393) - (v230 - (v230 - (v404.f32[0] * v393))));
          v232 = v231 - (v396 * v407.f32[0]);
          v479[0] = v229;
          v479[1] = ((v231 - v232) - (v396 * v407.f32[0])) + (v231 - (v232 + (v231 - v232)));
          v479[2] = (v232 - ((v230 + v232) - v230)) + (v230 - ((v230 + v232) - ((v230 + v232) - v230)));
          v479[3] = v230 + v232;
          v233 = -(((((v407.f32[0] * v394) - (v188 * v199)) - ((v407.f32[0] - v188) * v199)) - (v188 * (v394 - v199))) - ((v407.f32[0] - v188) * (v394 - v199)));
          v234 = -(((((v393 * v405.f32[0]) - (v201 * v192)) - ((v405.f32[0] - v201) * v192)) - (v201 * (v393 - v192))) - ((v405.f32[0] - v201) * (v393 - v192)));
          v235 = v233 - v234;
          v236 = ((v233 - (v233 - v234)) - v234) + (v233 - ((v233 - v234) + (v233 - (v233 - v234))));
          v237 = (v407.f32[0] * v394) + v235;
          v238 = (v235 - (v237 - (v407.f32[0] * v394))) + ((v407.f32[0] * v394) - (v237 - (v237 - (v407.f32[0] * v394))));
          v239 = v238 - (v393 * v405.f32[0]);
          v478[0] = v236;
          v478[1] = ((v238 - v239) - (v393 * v405.f32[0])) + (v238 - (v239 + (v238 - v239)));
          v478[2] = (v239 - ((v237 + v239) - v237)) + (v237 - ((v237 + v239) - ((v237 + v239) - v237)));
          v478[3] = v237 + v239;
          v240 = -(((((v408.f32[0] * v395) - (v191 * v208)) - ((v408.f32[0] - v191) * v208)) - (v191 * (v395 - v208))) - ((v408.f32[0] - v191) * (v395 - v208)));
          v241 = -(((((v402 * v406.f32[0]) - (v210 * v189)) - ((v406.f32[0] - v210) * v189)) - (v210 * (v402 - v189))) - ((v406.f32[0] - v210) * (v402 - v189)));
          v242 = v240 - v241;
          v243 = ((v240 - (v240 - v241)) - v241) + (v240 - ((v240 - v241) + (v240 - (v240 - v241))));
          v244 = (v408.f32[0] * v395) + v242;
          v245 = (v242 - (v244 - (v408.f32[0] * v395))) + ((v408.f32[0] * v395) - (v244 - (v244 - (v408.f32[0] * v395))));
          v246 = v245 - (v402 * v406.f32[0]);
          v477[0] = v243;
          v477[1] = ((v245 - v246) - (v402 * v406.f32[0])) + (v245 - (v246 + (v245 - v246)));
          v477[2] = (v246 - ((v244 + v246) - v244)) + (v244 - ((v244 + v246) - ((v244 + v246) - v244)));
          v477[3] = v244 + v246;
          v247 = -(((((v396 * v405.f32[0]) - (v201 * v217)) - ((v405.f32[0] - v201) * v217)) - (v201 * (v396 - v217))) - ((v405.f32[0] - v201) * (v396 - v217)));
          v248 = -(((((v404.f32[0] * v394) - (v219 * v199)) - ((v404.f32[0] - v219) * v199)) - (v219 * (v394 - v199))) - ((v404.f32[0] - v219) * (v394 - v199)));
          v249 = v247 - v248;
          v250 = ((v247 - (v247 - v248)) - v248) + (v247 - ((v247 - v248) + (v247 - (v247 - v248))));
          v251 = (v396 * v405.f32[0]) + v249;
          v252 = (v249 - (v251 - (v396 * v405.f32[0]))) + ((v396 * v405.f32[0]) - (v251 - (v251 - (v396 * v405.f32[0]))));
          v253 = v252 - (v404.f32[0] * v394);
          v476[0] = v250;
          v476[1] = ((v252 - v253) - (v404.f32[0] * v394)) + (v252 - (v253 + (v252 - v253)));
          v476[2] = (v253 - ((v251 + v253) - v251)) + (v251 - ((v251 + v253) - ((v251 + v253) - v251)));
          v476[3] = v251 + v253;
          v254 = -(((((v393 * v406.f32[0]) - (v210 * v192)) - ((v406.f32[0] - v210) * v192)) - (v210 * (v393 - v192))) - ((v406.f32[0] - v210) * (v393 - v192)));
          v255 = -(((((v407.f32[0] * v395) - (v188 * v208)) - ((v407.f32[0] - v188) * v208)) - (v188 * (v395 - v208))) - ((v407.f32[0] - v188) * (v395 - v208)));
          v256 = v254 - v255;
          v257 = ((v254 - (v254 - v255)) - v255) + (v254 - ((v254 - v255) + (v254 - (v254 - v255))));
          v258 = (v393 * v406.f32[0]) + v256;
          v259 = (v256 - (v258 - (v393 * v406.f32[0]))) + ((v393 * v406.f32[0]) - (v258 - (v258 - (v393 * v406.f32[0]))));
          v260 = v259 - (v407.f32[0] * v395);
          v475[0] = v257;
          v475[1] = ((v259 - v260) - (v407.f32[0] * v395)) + (v259 - (v260 + (v259 - v260)));
          v475[2] = (v260 - ((v258 + v260) - v258)) + (v258 - ((v258 + v260) - ((v258 + v260) - v258)));
          v475[3] = v258 + v260;
          v261 = -(((((v404.f32[0] * v402) - (v219 * v189)) - ((v404.f32[0] - v219) * v189)) - (v219 * (v402 - v189))) - ((v404.f32[0] - v219) * (v402 - v189)));
          v262 = -(((((v396 * v408.f32[0]) - (v191 * v217)) - ((v408.f32[0] - v191) * v217)) - (v191 * (v396 - v217))) - ((v408.f32[0] - v191) * (v396 - v217)));
          v263 = v261 - v262;
          v264 = ((v261 - (v261 - v262)) - v262) + (v261 - ((v261 - v262) + (v261 - (v261 - v262))));
          v265 = (v404.f32[0] * v402) + v263;
          v266 = (v263 - (v265 - (v404.f32[0] * v402))) + ((v404.f32[0] * v402) - (v265 - (v265 - (v404.f32[0] * v402))));
          v267 = v266 - (v396 * v408.f32[0]);
          v474[0] = v264;
          v474[1] = ((v266 - v267) - (v396 * v408.f32[0])) + (v266 - (v267 + (v266 - v267)));
          v474[2] = (v267 - ((v265 + v267) - v265)) + (v265 - ((v265 + v267) - ((v265 + v267) - v265)));
          v474[3] = v265 + v267;
          v268 = sub_299E15000(4, v482, v473, v407.f32[2]);
          v269 = sub_299E15000(4, v478, v472, -v408.f32[2]);
          v270 = sub_299E14DE8(v268, v473, v269, v472, v471);
          v271 = sub_299E15000(4, v483, v473, v405.f32[2]);
          v415 = sub_299E14DE8(v271, v473, v270, v471, v470);
          v272 = sub_299E15000(4, v481, v473, v408.f32[2]);
          v273 = sub_299E15000(4, v477, v472, -v405.f32[2]);
          v274 = sub_299E14DE8(v272, v473, v273, v472, v471);
          v275 = sub_299E15000(4, v482, v473, v406.f32[2]);
          v276 = sub_299E14DE8(v275, v473, v274, v471, v469);
          v277 = sub_299E15000(4, v480, v473, v405.f32[2]);
          v278 = sub_299E15000(4, v476, v472, -v406.f32[2]);
          v279 = sub_299E14DE8(v277, v473, v278, v472, v471);
          v280 = sub_299E15000(4, v481, v473, v399);
          v281 = sub_299E14DE8(v280, v473, v279, v471, v468);
          v282 = sub_299E15000(4, v479, v473, v406.f32[2]);
          v283 = sub_299E15000(4, v475, v472, -v399);
          v284 = sub_299E14DE8(v282, v473, v283, v472, v471);
          v285 = sub_299E15000(4, v480, v473, v407.f32[2]);
          v286 = sub_299E14DE8(v285, v473, v284, v471, v467);
          v287 = sub_299E15000(4, v483, v473, v399);
          v288 = sub_299E15000(4, v474, v472, -v407.f32[2]);
          v289 = sub_299E14DE8(v287, v473, v288, v472, v471);
          v290 = sub_299E15000(4, v479, v473, v408.f32[2]);
          v291 = sub_299E14DE8(v290, v473, v289, v471, v466);
          v292 = sub_299E15000(4, v477, v473, v407.f32[2]);
          v293 = sub_299E15000(4, v475, v472, v408.f32[2]);
          v294 = sub_299E14DE8(v292, v473, v293, v472, v471);
          v295 = sub_299E15000(4, v483, v473, v406.f32[2]);
          v413 = sub_299E14DE8(v295, v473, v294, v471, v465);
          v296 = sub_299E15000(4, v476, v473, v408.f32[2]);
          v297 = sub_299E15000(4, v474, v472, v405.f32[2]);
          v298 = sub_299E14DE8(v296, v473, v297, v472, v471);
          v299 = sub_299E15000(4, v482, v473, v399);
          v300 = sub_299E14DE8(v299, v473, v298, v471, v464);
          v301 = sub_299E15000(4, v475, v473, v405.f32[2]);
          v302 = sub_299E15000(4, v478, v472, v406.f32[2]);
          v303 = sub_299E14DE8(v301, v473, v302, v472, v471);
          v304 = sub_299E15000(4, v481, v473, v407.f32[2]);
          v305 = sub_299E14DE8(v304, v473, v303, v471, v463);
          v306 = sub_299E15000(4, v474, v473, v406.f32[2]);
          v307 = sub_299E15000(4, v477, v472, v399);
          v308 = sub_299E14DE8(v306, v473, v307, v472, v471);
          v309 = sub_299E15000(4, v480, v473, v408.f32[2]);
          v310 = sub_299E14DE8(v309, v473, v308, v471, v462);
          v311 = sub_299E15000(4, v478, v473, v399);
          v312 = sub_299E15000(4, v476, v472, v407.f32[2]);
          v313 = sub_299E14DE8(v311, v473, v312, v472, v471);
          v314 = sub_299E15000(4, v479, v473, v405.f32[2]);
          v315 = sub_299E14DE8(v314, v473, v313, v471, v461);
          v316 = sub_299E14DE8(v281, v468, v300, v464, v460);
          v411 = v276;
          v317 = sub_299E14DE8(v310, v462, v276, v469, v459);
          if (v317 >= 1)
          {
            v318 = v317;
            v319 = v459;
            do
            {
              *v319 = -*v319;
              ++v319;
              --v318;
            }

            while (v318);
          }

          v320 = sub_299E14DE8(v316, v460, v317, v459, v457);
          v321 = sub_299E15000(v320, v457, v453, v407.f32[0]);
          v322 = sub_299E15000(v321, v453, v452, v407.f32[0]);
          v323 = sub_299E15000(v320, v457, v453, v393);
          v324 = sub_299E15000(v323, v453, v451, v393);
          v325 = sub_299E15000(v320, v457, v453, v407.f32[2]);
          v326 = sub_299E15000(v325, v453, v450, v407.f32[2]);
          v327 = sub_299E14DE8(v322, v452, v324, v451, v449);
          v328 = sub_299E14DE8(v327, v449, v326, v450, v448);
          v329 = sub_299E14DE8(v286, v467, v305, v463, v460);
          v330 = sub_299E14DE8(v315, v461, v281, v468, v459);
          if (v330 >= 1)
          {
            v331 = v330;
            v332 = v459;
            do
            {
              *v332 = -*v332;
              ++v332;
              --v331;
            }

            while (v331);
          }

          v333 = sub_299E14DE8(v329, v460, v330, v459, v456);
          v334 = sub_299E15000(v333, v456, v453, v408.f32[0]);
          v335 = sub_299E15000(v334, v453, v452, v408.f32[0]);
          v336 = sub_299E15000(v333, v456, v453, v402);
          v337 = sub_299E15000(v336, v453, v451, v402);
          v338 = sub_299E15000(v333, v456, v453, v408.f32[2]);
          v339 = sub_299E15000(v338, v453, v450, v408.f32[2]);
          v340 = sub_299E14DE8(v335, v452, v337, v451, v449);
          v341 = sub_299E14DE8(v340, v449, v339, v450, v447);
          v342 = sub_299E14DE8(v291, v466, v310, v462, v460);
          v343 = sub_299E14DE8(v413, v465, v286, v467, v459);
          if (v343 >= 1)
          {
            v344 = v343;
            v345 = v459;
            do
            {
              *v345 = -*v345;
              ++v345;
              --v344;
            }

            while (v344);
          }

          v346 = sub_299E14DE8(v342, v460, v343, v459, v455);
          v347 = sub_299E15000(v346, v455, v453, v405.f32[0]);
          v348 = sub_299E15000(v347, v453, v452, v405.f32[0]);
          v349 = sub_299E15000(v346, v455, v453, v394);
          v350 = sub_299E15000(v349, v453, v451, v394);
          v351 = sub_299E15000(v346, v455, v453, v405.f32[2]);
          v352 = sub_299E15000(v351, v453, v450, v405.f32[2]);
          v353 = sub_299E14DE8(v348, v452, v350, v451, v449);
          v354 = sub_299E14DE8(v353, v449, v352, v450, v446);
          v355 = sub_299E14DE8(v415, v470, v315, v461, v460);
          v356 = sub_299E14DE8(v300, v464, v291, v466, v459);
          if (v356 >= 1)
          {
            v357 = v356;
            v358 = v459;
            do
            {
              *v358 = -*v358;
              ++v358;
              --v357;
            }

            while (v357);
          }

          v359 = sub_299E14DE8(v355, v460, v356, v459, v454);
          v360 = sub_299E15000(v359, v454, v453, v406.f32[0]);
          v361 = sub_299E15000(v360, v453, v452, v406.f32[0]);
          v362 = sub_299E15000(v359, v454, v453, v395);
          v363 = sub_299E15000(v362, v453, v451, v395);
          v364 = sub_299E15000(v359, v454, v453, v406.f32[2]);
          v365 = sub_299E15000(v364, v453, v450, v406.f32[2]);
          v366 = sub_299E14DE8(v361, v452, v363, v451, v449);
          v367 = sub_299E14DE8(v366, v449, v365, v450, v445);
          v368 = sub_299E14DE8(v411, v469, v413, v465, v460);
          v369 = sub_299E14DE8(v305, v463, v415, v470, v459);
          if (v369 >= 1)
          {
            v370 = v369;
            v371 = v459;
            do
            {
              *v371 = -*v371;
              ++v371;
              --v370;
            }

            while (v370);
          }

          v372 = sub_299E14DE8(v368, v460, v369, v459, v458);
          v373 = sub_299E15000(v372, v458, v453, v404.f32[0]);
          v374 = sub_299E15000(v373, v453, v452, v404.f32[0]);
          v375 = sub_299E15000(v372, v458, v453, v396);
          v376 = sub_299E15000(v375, v453, v451, v396);
          v377 = sub_299E15000(v372, v458, v453, v399);
          v378 = sub_299E15000(v377, v453, v450, v399);
          v379 = sub_299E14DE8(v374, v452, v376, v451, v449);
          v380 = sub_299E14DE8(v379, v449, v378, v450, v444);
          v381 = sub_299E14DE8(v328, v448, v341, v447, v443);
          v382 = sub_299E14DE8(v354, v446, v367, v445, v442);
          v383 = sub_299E14DE8(v382, v442, v380, v444, v441);
          _S0 = v440[sub_299E14DE8(v381, v443, v383, v441, v440) - 1];
        }
      }
    }
  }

  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t sub_299E14DE8(int a1, float *a2, int a3, float *a4, float *a5)
{
  v6 = *a2;
  v7 = *a4;
  if (*a4 > *a2 == *a4 <= -*a2)
  {
    v10 = 0;
    v9 = *a4;
    v7 = a4[1];
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v9 = *a2;
    v6 = a2[1];
    v10 = 1;
  }

  result = 0;
  if (v10 >= a1 || v8 >= a3)
  {
    v12 = v9;
  }

  else
  {
    if (v7 > v6 == v7 <= -v6)
    {
      v12 = v9 + v7;
      v13 = (v9 + v7) - v7;
      v7 = a4[++v8];
    }

    else
    {
      v12 = v9 + v6;
      v13 = (v9 + v6) - v6;
      v6 = a2[++v10];
    }

    v23 = v9 - v13;
    if (v23 == 0.0)
    {
      result = 0;
    }

    else
    {
      *a5 = v23;
      result = 1;
    }

    if (v10 < a1 && v8 < a3)
    {
      do
      {
        if (v7 > v6 == v7 <= -v6)
        {
          v24 = v12 + v7;
          v25 = (v7 - ((v12 + v7) - v12)) + (v12 - ((v12 + v7) - ((v12 + v7) - v12)));
          v7 = a4[++v8];
        }

        else
        {
          v24 = v12 + v6;
          v25 = (v6 - ((v12 + v6) - v12)) + (v12 - ((v12 + v6) - ((v12 + v6) - v12)));
          v6 = a2[++v10];
        }

        v12 = v24;
        if (v25 != 0.0)
        {
          a5[result] = v25;
          result = (result + 1);
        }
      }

      while (v10 < a1 && v8 < a3);
    }
  }

  if (v10 < a1)
  {
    v14 = a1 - v10;
    v15 = &a2[v10 + 1];
    do
    {
      v16 = v12;
      v12 = v12 + v6;
      v17 = (v6 - (v12 - v16)) + (v16 - (v12 - (v12 - v16)));
      v6 = *v15;
      if (v17 != 0.0)
      {
        a5[result] = v17;
        result = (result + 1);
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  if (v8 < a3)
  {
    v18 = a3 - v8;
    v19 = &a4[v8 + 1];
    do
    {
      v20 = v12;
      v12 = v12 + v7;
      v21 = (v7 - (v12 - v20)) + (v20 - (v12 - (v12 - v20)));
      v7 = *v19;
      if (v21 != 0.0)
      {
        a5[result] = v21;
        result = (result + 1);
      }

      ++v19;
      --v18;
    }

    while (v18);
  }

  if (v12 != 0.0 || result == 0)
  {
    a5[result] = v12;
    return (result + 1);
  }

  return result;
}

uint64_t sub_299E15000(int a1, float *a2, float *a3, float a4)
{
  v5 = (a4 * 4096.0) - ((a4 * 4096.0) - a4);
  v6 = *a2 * a4;
  v7 = (*a2 * 4096.0) - ((*a2 * 4096.0) - *a2);
  v8 = -((((v6 - (v7 * v5)) - ((*a2 - v7) * v5)) - (v7 * (a4 - v5))) - ((*a2 - v7) * (a4 - v5)));
  if (v8 == 0.0)
  {
    result = 0;
  }

  else
  {
    *a3 = v8;
    result = 1;
  }

  if (a1 >= 2)
  {
    v10 = a1;
    v11 = a2 + 1;
    v12 = v10 - 1;
    do
    {
      v13 = *v11 * a4;
      v14 = (*v11 * 4096.0) - ((*v11 * 4096.0) - *v11);
      v15 = -((((v13 - (v14 * v5)) - ((*v11 - v14) * v5)) - (v14 * (a4 - v5))) - ((*v11 - v14) * (a4 - v5)));
      v16 = v6 + v15;
      v17 = (v15 - ((v6 + v15) - v6)) + (v6 - ((v6 + v15) - ((v6 + v15) - v6)));
      if (v17 != 0.0)
      {
        a3[result] = v17;
        result = (result + 1);
      }

      v6 = v13 + v16;
      v18 = v16 - ((v13 + v16) - v13);
      if (v18 != 0.0)
      {
        a3[result] = v18;
        result = (result + 1);
      }

      ++v11;
      --v12;
    }

    while (v12);
  }

  if (v6 != 0.0 || result == 0)
  {
    a3[result] = v6;
    return (result + 1);
  }

  return result;
}

float _simd_orient_vf2(simd_float2 a1, simd_float2 a2)
{
  v3 = vrev64_s32(a2);
  v4 = vmul_f32(v3, a1);
  result = v4.f32[0] - v4.f32[1];
  if (v4.f32[0] <= 0.0)
  {
    if (v4.f32[0] >= 0.0 || v4.f32[1] >= 0.0)
    {
      return result;
    }

    v6 = -v4.f32[0] - v4.f32[1];
  }

  else
  {
    if (v4.f32[1] <= 0.0)
    {
      return result;
    }

    v6 = v4.f32[0] + v4.f32[1];
  }

  v7 = v6 * 0.00000017881;
  if (result < v7 && v7 > -result)
  {
    v9 = vdup_n_s32(0x45800001u);
    v10 = vmul_f32(a1, v9);
    v11 = vmul_f32(v3, v9);
    v12 = vsub_f32(v10, vsub_f32(v10, a1));
    v13 = vsub_f32(a1, v12);
    v14 = vsub_f32(v11, vsub_f32(v11, v3));
    v15 = vsub_f32(v3, v14);
    v16 = vmla_f32(vneg_f32(vmls_f32(vmls_f32(vmls_f32(v4, v14, v12), v14, v13), v15, v12)), v15, v13);
    v15.f32[0] = v16.f32[0] - v16.f32[1];
    result = ((v16.f32[0] - (v16.f32[0] - v16.f32[1])) - v16.f32[1]) + (v16.f32[0] - ((v16.f32[0] - v16.f32[1]) + (v16.f32[0] - (v16.f32[0] - v16.f32[1]))));
    v13.f32[0] = v4.f32[0] + v15.f32[0];
    v4.f32[0] = (v15.f32[0] - ((v4.f32[0] + v15.f32[0]) - v4.f32[0])) + (v4.f32[0] - ((v4.f32[0] + v15.f32[0]) - ((v4.f32[0] + v15.f32[0]) - v4.f32[0])));
    v21 = v13.f32[0] + (v4.f32[0] - v4.f32[1]);
    v19 = ((v4.f32[0] - (v4.f32[0] - v4.f32[1])) - v4.f32[1]) + (v4.f32[0] - ((v4.f32[0] - v4.f32[1]) + (v4.f32[0] - (v4.f32[0] - v4.f32[1]))));
    v20 = ((v4.f32[0] - v4.f32[1]) - (v21 - v13.f32[0])) + (v13.f32[0] - (v21 - (v21 - v13.f32[0])));
    for (i = 4; i != 16; i += 4)
    {
      result = result + *&v18[i];
    }
  }

  return result;
}

float _simd_orient_pf2(simd_float2 a1, simd_float2 a2, simd_float2 a3)
{
  v14 = vsub_f32(a1, a3);
  v15 = vsub_f32(a2, a3);
  v16 = vmul_lane_f32(v14, v15, 1);
  v17 = vmul_lane_f32(v15, v14, 1);
  LODWORD(result) = vsub_f32(v16, v17).u32[0];
  if (v16.f32[0] <= 0.0)
  {
    if (v16.f32[0] >= 0.0 || v17.f32[0] >= 0.0)
    {
      return result;
    }

    v19 = -v16.f32[0] - v17.f32[0];
  }

  else
  {
    if (v17.f32[0] <= 0.0)
    {
      return result;
    }

    LODWORD(v19) = vadd_f32(v16, v17).u32[0];
  }

  if (result < (v19 * 0.00000017881) && (v19 * 0.00000017881) > -result)
  {
    v104 = v12;
    v105 = v11;
    v106 = v10;
    v107 = v9;
    v108 = v8;
    v109 = v7;
    v110 = v6;
    v111 = v5;
    v112 = v3;
    v113 = v4;
    v21 = vrev64_s32(a1);
    v22 = vrev64_s32(a3);
    v23 = vsub_f32(v21, v22);
    v24 = vmul_f32(v15, v23);
    v25 = vdup_n_s32(0x45800001u);
    v26 = vmul_f32(v23, v25);
    v27 = vsub_f32(v26, vsub_f32(v26, v23));
    v28 = vsub_f32(v23, v27);
    v29 = vmul_f32(v15, v25);
    _D5 = vsub_f32(v29, vsub_f32(v29, v15));
    _D3 = vsub_f32(v15, _D5);
    v32 = vneg_f32(v27);
    v33 = vneg_f32(v28);
    v34 = vmla_f32(vneg_f32(vmls_f32(vmls_f32(vmls_f32(v24, _D5, v27), _D5, v28), _D3, v27)), _D3, v28);
    v35 = v34.f32[1] - v34.f32[0];
    result = ((v34.f32[1] - (v34.f32[1] - v34.f32[0])) - v34.f32[0]) + (v34.f32[1] - ((v34.f32[1] - v34.f32[0]) + (v34.f32[1] - (v34.f32[1] - v34.f32[0]))));
    v36 = v24.f32[1] + v35;
    v27.f32[0] = (v35 - ((v24.f32[1] + v35) - v24.f32[1])) + (v24.f32[1] - ((v24.f32[1] + v35) - ((v24.f32[1] + v35) - v24.f32[1])));
    v37 = v27.f32[0] - v24.f32[0];
    v103[0] = result;
    v103[1] = ((v27.f32[0] - (v27.f32[0] - v24.f32[0])) - v24.f32[0]) + (v27.f32[0] - ((v27.f32[0] - v24.f32[0]) + (v27.f32[0] - (v27.f32[0] - v24.f32[0]))));
    v24.f32[0] = v36 + (v27.f32[0] - v24.f32[0]);
    v103[2] = (v37 - (v24.f32[0] - v36)) + (v36 - (v24.f32[0] - (v24.f32[0] - v36)));
    v103[3] = v24.f32[0];
    for (i = 1; i != 4; ++i)
    {
      result = result + v103[i];
    }

    if (result < (v19 * 0.00000011921) && (v19 * 0.00000011921) > -result)
    {
      v40 = vsub_f32(v21, v23);
      v41 = vsub_f32(a2, v15);
      v42 = vadd_f32(vsub_f32(v40, v22), vsub_f32(v21, vadd_f32(v23, v40)));
      v43 = vadd_f32(vsub_f32(v41, a3), vsub_f32(a2, vadd_f32(v15, v41)));
      *v44.f32 = vrev64_s32(v42);
      *&v44.u32[2] = v43;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v44)))))
      {
        v45 = vmul_f32(v15, v42);
        v46 = vmla_f32(v45, v43, v23);
        v47 = (fabsf(result) * 0.00000017881) + (v19 * 3.1974e-14);
        result = vsub_f32(vdup_lane_s32(v46, 1), v46).f32[0] + result;
        if (result < v47 && v47 > -result)
        {
          v94 = v42.f32[1];
          v49 = vmuls_lane_f32(4096.0, v42, 1);
          _S10 = v49 - (v49 - v42.f32[1]);
          _S11 = v42.f32[1] - _S10;
          __asm
          {
            FMLS            S4, S10, V5.S[1]
            FMLS            S4, S11, V5.S[1]
            FMLA            S0, S11, V3.S[1]
          }

          v59 = (4096.0 * v42.f32[0]) - ((4096.0 * v42.f32[0]) - v42.f32[0]);
          v60 = v42.f32[0] - v59;
          v61 = -((((v45.f32[0] - (_D5.f32[0] * v59)) - (_D5.f32[0] * (v42.f32[0] - v59))) - (_D3.f32[0] * v59)) - ((v42.f32[0] - v59) * _D3.f32[0]));
          v62 = _S0 - v61;
          v63 = (v62 - ((v45.f32[1] + v62) - v45.f32[1])) + (v45.f32[1] - ((v45.f32[1] + v62) - ((v45.f32[1] + v62) - v45.f32[1])));
          v96 = ((_S0 - (_S0 - v61)) - v61) + (_S0 - ((_S0 - v61) + (_S0 - (_S0 - v61))));
          v97 = ((v63 - (v63 - v45.f32[0])) - v45.f32[0]) + (v63 - ((v63 - v45.f32[0]) + (v63 - (v63 - v45.f32[0]))));
          v98 = ((v63 - v45.f32[0]) - (((v45.f32[1] + v62) + (v63 - v45.f32[0])) - (v45.f32[1] + v62))) + ((v45.f32[1] + v62) - (((v45.f32[1] + v62) + (v63 - v45.f32[0])) - (((v45.f32[1] + v62) + (v63 - v45.f32[0])) - (v45.f32[1] + v62))));
          v99 = (v45.f32[1] + (_S0 - v61)) + (v63 - v45.f32[0]);
          v91 = v33;
          v92 = v28;
          v90 = v32;
          v93 = v42;
          v95 = v43;
          v64 = sub_299E14DE8(4, v103, 4, &v96, v102);
          v65 = vmul_f32(v23, v95);
          v66 = vmuls_lane_f32(4096.0, v95, 1);
          _S15 = v66 - (v66 - v95.f32[1]);
          _S8 = v95.f32[1] - _S15;
          _V4.S[1] = v90.i32[1];
          _V16.S[1] = v91.i32[1];
          __asm
          {
            FMLA            S3, S15, V4.S[1]
            FMLA            S3, S15, V16.S[1]
          }

          _V6.S[1] = v92.i32[1];
          __asm { FMLA            S0, S8, V6.S[1] }

          v75 = (4096.0 * v95.f32[0]) - ((4096.0 * v95.f32[0]) - v95.f32[0]);
          v76 = -((((v65.f32[0] + (v90.f32[0] * v75)) + (v91.f32[0] * v75)) + (v90.f32[0] * (v95.f32[0] - v75))) - (v92.f32[0] * (v95.f32[0] - v75)));
          v77 = _S0 - v76;
          v78 = (v77 - ((v65.f32[1] + v77) - v65.f32[1])) + (v65.f32[1] - ((v65.f32[1] + v77) - ((v65.f32[1] + v77) - v65.f32[1])));
          v96 = ((_S0 - (_S0 - v76)) - v76) + (_S0 - ((_S0 - v76) + (_S0 - (_S0 - v76))));
          v97 = ((v78 - (v78 - v65.f32[0])) - v65.f32[0]) + (v78 - ((v78 - v65.f32[0]) + (v78 - (v78 - v65.f32[0]))));
          v98 = ((v78 - v65.f32[0]) - (((v65.f32[1] + v77) + (v78 - v65.f32[0])) - (v65.f32[1] + v77))) + ((v65.f32[1] + v77) - (((v65.f32[1] + v77) + (v78 - v65.f32[0])) - (((v65.f32[1] + v77) + (v78 - v65.f32[0])) - (v65.f32[1] + v77))));
          v99 = (v65.f32[1] + (_S0 - v76)) + (v78 - v65.f32[0]);
          v79 = sub_299E14DE8(v64, v102, 4, &v96, v101);
          v80 = vmuls_lane_f32(v94, v95, 1);
          v81 = -((((v80 - (_S10 * _S15)) - (_S11 * _S15)) - (_S10 * _S8)) - (_S11 * _S8));
          v82 = vmul_f32(v95, v93).f32[0];
          v83 = -((((v82 - (v59 * v75)) - (v60 * v75)) - (v59 * (v95.f32[0] - v75))) - (v60 * (v95.f32[0] - v75)));
          v84 = v81 - v83;
          v85 = ((v81 - (v81 - v83)) - v83) + (v81 - ((v81 - v83) + (v81 - (v81 - v83))));
          v86 = v80 + v84;
          v87 = (v84 - ((v80 + v84) - v80)) + (v80 - ((v80 + v84) - ((v80 + v84) - v80)));
          v88 = v87 - v82;
          v96 = v85;
          v97 = ((v87 - (v87 - v82)) - v82) + (v87 - ((v87 - v82) + (v87 - (v87 - v82))));
          v89 = v86 + (v87 - v82);
          v98 = (v88 - (v89 - v86)) + (v86 - (v89 - (v89 - v86)));
          v99 = v89;
          return v100[sub_299E14DE8(v79, v101, 4, &v96, v100) - 1];
        }
      }
    }
  }

  return result;
}

float _simd_orient_vf3(simd_float3 a1, simd_float3 a2, simd_float3 a3)
{
  v16 = vmulq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL), vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v17 = vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL));
  v18 = vmulq_f32(a1, vsubq_f32(v16, v17));
  result = v18.f32[2] + vaddv_f32(*v18.f32);
  v20 = vmulq_f32(vabsq_f32(a1), vaddq_f32(vabsq_f32(v16), vabsq_f32(v17)));
  v21 = (v20.f32[2] + vaddv_f32(*v20.f32)) * 0.00000041723;
  if (result <= v21 && v21 >= -result)
  {
    v83 = v12;
    v84 = v11;
    v85 = v10;
    v86 = v9;
    v87 = v8;
    v88 = v7;
    v89 = v6;
    v90 = v5;
    v91 = v3;
    v92 = v4;
    v23 = vmuls_lane_f32(a2.f32[0], *a3.f32, 1);
    v24 = (4096.0 * a2.f32[0]) - ((4096.0 * a2.f32[0]) - a2.f32[0]);
    v25 = vmuls_lane_f32(4096.0, *a3.f32, 1);
    v26 = v25 - (v25 - a3.f32[1]);
    v27 = a3.f32[1] - v26;
    v69 = a2.f32[0] - v24;
    v70 = v24;
    v28 = -((((v23 - (v24 * v26)) - ((a2.f32[0] - v24) * v26)) - (v24 * (a3.f32[1] - v26))) - ((a2.f32[0] - v24) * (a3.f32[1] - v26)));
    v29 = vmuls_lane_f32(a3.f32[0], *a2.f32, 1);
    v72 = a3;
    v73 = a2;
    v30 = (4096.0 * a3.f32[0]) - ((4096.0 * a3.f32[0]) - a3.f32[0]);
    v31 = a3.f32[0] - v30;
    v32 = vmuls_lane_f32(4096.0, *a2.f32, 1);
    v33 = v32 - (v32 - a2.f32[1]);
    v68 = a2.f32[1] - v33;
    v34 = -((((v29 - (v30 * v33)) - (v31 * v33)) - (v30 * (a2.f32[1] - v33))) - (v31 * (a2.f32[1] - v33)));
    v35 = v28 - v34;
    v36 = ((v28 - (v28 - v34)) - v34) + (v28 - ((v28 - v34) + (v28 - (v28 - v34))));
    v37 = v23 + v35;
    v38 = (v35 - ((v23 + v35) - v23)) + (v23 - ((v23 + v35) - ((v23 + v35) - v23)));
    v82[0] = v36;
    v82[1] = ((v38 - (v38 - v29)) - v29) + (v38 - ((v38 - v29) + (v38 - (v38 - v29))));
    v82[2] = ((v38 - v29) - ((v37 + (v38 - v29)) - v37)) + (v37 - ((v37 + (v38 - v29)) - ((v37 + (v38 - v29)) - v37)));
    v82[3] = v37 + (v38 - v29);
    v71 = *a1.f32;
    v39 = sub_299E15000(4, v82, v79, a1.f32[2]);
    v40 = vmuls_lane_f32(v72.f32[0], v71, 1);
    v41 = vmuls_lane_f32(4096.0, v71, 1);
    v42 = v41 - (v41 - v71.f32[1]);
    v43 = -((((v40 - (v30 * v42)) - (v31 * v42)) - (v30 * (v71.f32[1] - v42))) - (v31 * (v71.f32[1] - v42)));
    v44 = vmuls_lane_f32(v71.f32[0], *v72.f32, 1);
    v45 = (4096.0 * v71.f32[0]) - ((4096.0 * v71.f32[0]) - v71.f32[0]);
    v46 = -((((v44 - (v45 * v26)) - ((v71.f32[0] - v45) * v26)) - (v45 * v27)) - ((v71.f32[0] - v45) * v27));
    v47 = v43 - v46;
    v48 = ((v43 - (v43 - v46)) - v46) + (v43 - ((v43 - v46) + (v43 - (v43 - v46))));
    v49 = v40 + v47;
    v50 = (v47 - ((v40 + v47) - v40)) + (v40 - ((v40 + v47) - ((v40 + v47) - v40)));
    v81[0] = v48;
    v81[1] = ((v50 - (v50 - v44)) - v44) + (v50 - ((v50 - v44) + (v50 - (v50 - v44))));
    v81[2] = ((v50 - v44) - ((v49 + (v50 - v44)) - v49)) + (v49 - ((v49 + (v50 - v44)) - ((v49 + (v50 - v44)) - v49)));
    v81[3] = v49 + (v50 - v44);
    v51 = sub_299E15000(4, v81, v78, v73.f32[2]);
    v52 = vmuls_lane_f32(v71.f32[0], *v73.f32, 1);
    v53 = -((((v52 - (v45 * v33)) - ((v71.f32[0] - v45) * v33)) - (v45 * v68)) - ((v71.f32[0] - v45) * v68));
    v54 = vmuls_lane_f32(v73.f32[0], v71, 1);
    v55 = -((((v54 - (v70 * v42)) - (v69 * v42)) - (v70 * (v71.f32[1] - v42))) - (v69 * (v71.f32[1] - v42)));
    v56 = v53 - v55;
    v57 = ((v53 - (v53 - v55)) - v55) + (v53 - ((v53 - v55) + (v53 - (v53 - v55))));
    v58 = v52 + v56;
    v59 = (v56 - ((v52 + v56) - v52)) + (v52 - ((v52 + v56) - ((v52 + v56) - v52)));
    v60 = v59 - v54;
    v80[0] = v57;
    v80[1] = ((v59 - (v59 - v54)) - v54) + (v59 - ((v59 - v54) + (v59 - (v59 - v54))));
    v61 = v58 + (v59 - v54);
    v80[2] = (v60 - (v61 - v58)) + (v58 - (v61 - (v61 - v58)));
    v80[3] = v61;
    v62 = sub_299E15000(4, v80, v77, v72.f32[2]);
    v63 = sub_299E14DE8(v39, v79, v51, v78, v76);
    v64 = sub_299E14DE8(v63, v76, v62, v77, &v74);
    result = v74;
    if (v64 >= 2)
    {
      v65 = v64 - 1;
      v66 = &v75;
      do
      {
        v67 = *v66++;
        result = result + v67;
        --v65;
      }

      while (v65);
    }
  }

  return result;
}

float _simd_orient_pf3(simd_float3 a1, simd_float3 a2, simd_float3 a3, simd_float3 a4)
{
  v16 = vsubq_f32(a1, a4);
  v17 = vsubq_f32(a2, a4);
  v18 = vsubq_f32(a3, a4);
  v19 = vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v20 = vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL));
  v21 = vmulq_f32(v16, vsubq_f32(v19, v20));
  result = v21.f32[2] + vaddv_f32(*v21.f32);
  v23 = vmulq_f32(vabdq_f32(a1, a4), vaddq_f32(vabsq_f32(v19), vabsq_f32(v20)));
  v24 = v23.f32[2] + vaddv_f32(*v23.f32);
  if (result <= (v24 * 0.00000041723) && (v24 * 0.00000041723) >= -result)
  {
    v370 = v13;
    v371 = v12;
    v372 = v11;
    v373 = v10;
    v374 = v9;
    v375 = v8;
    v376 = v7;
    v377 = v6;
    v378 = v4;
    v379 = v5;
    v312 = v24;
    v305 = vdup_lane_s32(*a4.f32, 0);
    v306 = vzip1_s32(*a3.f32, *a2.f32);
    v26 = vsub_f32(v306, v305);
    v27 = vsub_f32(__PAIR64__(a2.u32[1], a1.u32[0]), *a4.f32);
    v303 = vdup_lane_s32(*a4.f32, 1);
    v304 = vzip2_s32(*a1.f32, *a3.f32);
    v28 = vsub_f32(v304, v303);
    v308 = a2.f32[1];
    v309 = a1.f32[0];
    v29 = vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a1, a1, 8uLL));
    v30 = vmuls_lane_f32(v26.f32[1], v28, 1);
    v31 = vmuls_lane_f32(4096.0, v26, 1);
    v32 = v31 - (v31 - v26.f32[1]);
    v298 = v26.f32[1];
    v33 = vmuls_lane_f32(4096.0, v28, 1);
    v322 = v28;
    v324 = v26;
    v34 = v33 - (v33 - v28.f32[1]);
    v289 = v28.f32[1];
    v35 = v28.f32[1] - v34;
    v315 = v32;
    v316 = v26.f32[1] - v32;
    v36 = -((((v30 - (v32 * v34)) - ((v26.f32[1] - v32) * v34)) - (v32 * (v28.f32[1] - v34))) - ((v26.f32[1] - v32) * (v28.f32[1] - v34)));
    v37 = (4096.0 * v26.f32[0]) - ((4096.0 * v26.f32[0]) - v26.f32[0]);
    v38 = v26.f32[0] - v37;
    v326 = v27;
    v28.f32[0] = vmuls_lane_f32(4096.0, v27, 1);
    v39 = v28.f32[0] - (v28.f32[0] - v27.f32[1]);
    v311 = v27.f32[1];
    v297 = vext_s8(v322, v26, 4uLL);
    v317 = vmul_f32(v27, v297);
    v314 = v27.f32[1] - v39;
    v40 = -((((v317.f32[1] - (v37 * v39)) - ((v26.f32[0] - v37) * v39)) - (v37 * (v27.f32[1] - v39))) - ((v26.f32[0] - v37) * (v27.f32[1] - v39)));
    v41 = v36 - v40;
    v42 = ((v36 - (v36 - v40)) - v40) + (v36 - ((v36 - v40) + (v36 - (v36 - v40))));
    v43 = v30 + v41;
    v44 = (v41 - ((v30 + v41) - v30)) + (v30 - ((v30 + v41) - ((v30 + v41) - v30)));
    v45 = v44 - v317.f32[1];
    v369[0] = v42;
    v369[1] = ((v44 - (v44 - v317.f32[1])) - v317.f32[1]) + (v44 - ((v44 - v317.f32[1]) + (v44 - (v44 - v317.f32[1]))));
    v46 = v43 + (v44 - v317.f32[1]);
    v300 = a3.f32[2];
    v301 = a4.f32[2];
    v319 = a3.f32[2] - a4.f32[2];
    v310 = a4.i64[0];
    v369[2] = (v45 - (v46 - v43)) + (v43 - (v46 - (v46 - v43)));
    v369[3] = v46;
    v302 = v29;
    v299 = vdup_laneq_s32(a4, 2);
    v320 = vsub_f32(v29, v299);
    v296 = v320.f32[1];
    v47 = sub_299E15000(4, v369, v366, v320.f32[1]);
    v48 = vmul_f32(v324, v322).f32[0];
    v49 = (4096.0 * v322.f32[0]) - ((4096.0 * v322.f32[0]) - v322.f32[0]);
    v294 = v37;
    v295 = v38;
    v50 = -((((v48 - (v37 * v49)) - (v38 * v49)) - (v37 * (v322.f32[0] - v49))) - (v38 * (v322.f32[0] - v49)));
    v51 = (4096.0 * v326.f32[0]) - ((4096.0 * v326.f32[0]) - v326.f32[0]);
    v290 = v34;
    v291 = v35;
    v52 = -((((v317.f32[0] - (v51 * v34)) - ((v326.f32[0] - v51) * v34)) - (v51 * v35)) - ((v326.f32[0] - v51) * v35));
    v53 = v50 - v52;
    v54 = ((v50 - (v50 - v52)) - v52) + (v50 - ((v50 - v52) + (v50 - (v50 - v52))));
    v55 = v48 + v53;
    v56 = (v53 - ((v48 + v53) - v48)) + (v48 - ((v48 + v53) - ((v48 + v53) - v48)));
    v368[0] = v54;
    v368[1] = ((v56 - (v56 - v317.f32[0])) - v317.f32[0]) + (v56 - ((v56 - v317.f32[0]) + (v56 - (v56 - v317.f32[0]))));
    v368[2] = ((v56 - v317.f32[0]) - ((v55 + (v56 - v317.f32[0])) - v55)) + (v55 - ((v55 + (v56 - v317.f32[0])) - ((v55 + (v56 - v317.f32[0])) - v55)));
    v368[3] = v55 + (v56 - v317.f32[0]);
    v57 = sub_299E15000(4, v368, v365, v320.f32[0]);
    v58 = vmuls_lane_f32(v326.f32[0], v326, 1);
    v292 = v322.f32[0] - v49;
    v293 = v39;
    v59 = -((((v58 - (v51 * v39)) - ((v326.f32[0] - v51) * v39)) - (v51 * v314)) - ((v326.f32[0] - v51) * v314));
    v60 = v326.f32[0] - v51;
    v61 = vmuls_lane_f32(v322.f32[0], v324, 1);
    v62 = -((((v61 - (v315 * v49)) - (v316 * v49)) - (v315 * v292)) - (v316 * v292));
    v63 = v59 - v62;
    v64 = ((v59 - (v59 - v62)) - v62) + (v59 - ((v59 - v62) + (v59 - (v59 - v62))));
    v65 = v58 + v63;
    v66 = (v63 - ((v58 + v63) - v58)) + (v58 - ((v58 + v63) - ((v58 + v63) - v58)));
    v67 = v66 - v61;
    v367[0] = v64;
    v367[1] = ((v66 - (v66 - v61)) - v61) + (v66 - ((v66 - v61) + (v66 - (v66 - v61))));
    v68 = v65 + (v66 - v61);
    v367[2] = (v67 - (v68 - v65)) + (v65 - (v68 - (v68 - v65)));
    v367[3] = v68;
    v69 = sub_299E15000(4, v367, v364, v319);
    v70 = sub_299E14DE8(v47, v366, v57, v365, v363);
    v71 = sub_299E14DE8(v70, v363, v69, v364, &v361);
    v74 = v71;
    result = v361;
    if (v71 < 2)
    {
      v77 = v312;
    }

    else
    {
      v75 = v71 - 1;
      v76 = &v362;
      v77 = v312;
      do
      {
        v78 = *v76++;
        result = result + v78;
        --v75;
      }

      while (v75);
    }

    if (result < (v77 * 0.00000017881) && (v77 * 0.00000017881) > -result)
    {
      v80 = ((v309 - v326.f32[0]) - *&v310) + (v309 - (v326.f32[0] + (v309 - v326.f32[0])));
      v81 = vsub_f32(v306, v324);
      v82 = vsub_f32(v304, v322);
      v83 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
      v84 = vsub_f32(v302, v320);
      v85 = vadd_f32(vsub_f32(v81, v305), vsub_f32(v306, vadd_f32(v324, v81)));
      *v73.i8 = vadd_f32(vsub_f32(v82, v303), vsub_f32(v304, vadd_f32(v322, v82)));
      *v72.i8 = vadd_f32(vsub_f32(v84, v299), vsub_f32(v302, vadd_f32(v320, v84)));
      v86 = v319;
      v87 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
      v88 = v85.f32[1];
      v89 = vextq_s8(vzip1q_s32(v73, v72), v72, 4uLL);
      v89.f32[0] = v83;
      v90 = vceqzq_f32(v89);
      if (v85.f32[0] != 0.0 || (~vaddvq_s32(vandq_s8(v90, xmmword_299E28C20)) & 0xF) != 0 || v85.f32[1] != 0.0 || v80 != 0.0 || *v73.i32 != 0.0 || v87 != 0.0)
      {
        v91 = (fabsf(result) * 0.00000017881) + (v77 * 9.2371e-14);
        v92 = vmul_f32(v322, v85);
        v93.i32[0] = vdup_lane_s32(*v73.i8, 1).u32[0];
        v93.f32[1] = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
        v94 = vmul_f32(vzip1_s32(v326, v324), v93);
        v95 = vdup_lane_s32(v85, 0);
        v95.f32[0] = ((v309 - v326.f32[0]) - *&v310) + (v309 - (v326.f32[0] + (v309 - v326.f32[0])));
        v96 = v311 * v80;
        v97 = v298 * *v73.i32;
        result = (((-(v61 - (v326.f32[0] * v311)) * v87) + (v319 * (((v311 * v80) + (v326.f32[0] * v83)) - ((v298 * *v73.i32) + (v322.f32[0] * v85.f32[1]))))) + vaddv_f32(vmla_f32(vmul_f32(vmla_f32(vneg_f32(v317), __PAIR64__(v324.u32[1], v322.u32[0]), vrev64_s32(v297)), *v72.i8), vsub_f32(vmla_f32(v92, *v73.i8, v324), vmla_f32(v94, v95, vzip2_s32(v322, v326))), v320))) + result;
        if (result < v91 && v91 > -result)
        {
          if (v80 == 0.0)
          {
            if (*v73.i32 == 0.0)
            {
              v356 = 0.0;
              v352 = 0.0;
              v99 = 1;
              goto LABEL_34;
            }

            v356 = -((((-(*v73.i32 * v298) - (((*v73.i32 * -4096.0) - (*v73.i32 + (*v73.i32 * -4096.0))) * v315)) - ((-*v73.i32 - ((*v73.i32 * -4096.0) - (*v73.i32 + (*v73.i32 * -4096.0)))) * v315)) - (((*v73.i32 * -4096.0) - (*v73.i32 + (*v73.i32 * -4096.0))) * v316)) - ((-*v73.i32 - ((*v73.i32 * -4096.0) - (*v73.i32 + (*v73.i32 * -4096.0)))) * v316));
            v357 = -(*v73.i32 * v298);
            v102 = vmul_f32(v324, *v73.i8).f32[0];
            v352 = -((((v102 - (((*v73.i32 * 4096.0) - ((*v73.i32 * 4096.0) - *v73.i32)) * v294)) - ((*v73.i32 - ((*v73.i32 * 4096.0) - ((*v73.i32 * 4096.0) - *v73.i32))) * v294)) - (((*v73.i32 * 4096.0) - ((*v73.i32 * 4096.0) - *v73.i32)) * v295)) - ((*v73.i32 - ((*v73.i32 * 4096.0) - ((*v73.i32 * 4096.0) - *v73.i32))) * v295));
            v353 = v102;
          }

          else
          {
            v100 = (v80 * 4096.0) - ((v80 * 4096.0) - v80);
            v101 = -((((v96 - (v100 * v293)) - ((v80 - v100) * v293)) - (v100 * v314)) - ((v80 - v100) * v314));
            if (*v73.i32 != 0.0)
            {
              v103 = (*v73.i32 * 4096.0) - ((*v73.i32 * 4096.0) - *v73.i32);
              v104 = -((((v97 - (v103 * v315)) - ((*v73.i32 - v103) * v315)) - (v103 * v316)) - ((*v73.i32 - v103) * v316));
              v105 = v101 - v104;
              v106 = ((v101 - (v101 - v104)) - v104) + (v101 - ((v101 - v104) + (v101 - (v101 - v104))));
              v107 = v96 + v105;
              v108 = (v105 - ((v96 + v105) - v96)) + (v96 - ((v96 + v105) - ((v96 + v105) - v96)));
              v109 = v108 - v97;
              v356 = v106;
              v357 = ((v108 - (v108 - v97)) - v97) + (v108 - ((v108 - v97) + (v108 - (v108 - v97))));
              v110 = v107 + (v108 - v97);
              v358 = (v109 - (v110 - v107)) + (v107 - (v110 - (v110 - v107)));
              v359 = v110;
              v111 = vmul_f32(v324, *v73.i8).f32[0];
              v112 = -((((v111 - (v103 * v294)) - ((*v73.i32 - v103) * v294)) - (v103 * v295)) - ((*v73.i32 - v103) * v295));
              v113 = -(((((v289 * v80) + (-v100 * v290)) + (-(v80 - v100) * v290)) + (-v100 * v291)) - ((v80 - v100) * v291));
              v114 = v112 - v113;
              v115 = ((v112 - (v112 - v113)) - v113) + (v112 - ((v112 - v113) + (v112 - (v112 - v113))));
              v116 = v111 + v114;
              v117 = (v114 - ((v111 + v114) - v111)) + (v111 - ((v111 + v114) - ((v111 + v114) - v111)));
              v118 = v117 - (v289 * v80);
              v352 = v115;
              v353 = ((v117 - v118) - (v289 * v80)) + (v117 - (v118 + (v117 - v118)));
              v354 = (v118 - ((v116 + v118) - v116)) + (v116 - ((v116 + v118) - ((v116 + v118) - v116)));
              v355 = v116 + v118;
              v99 = 4;
LABEL_34:
              if (v85.f32[1] == 0.0)
              {
                if (vmovn_s32(v90).u8[0])
                {
                  v348 = 0.0;
                  v344 = 0.0;
                  v119 = 1;
                  goto LABEL_42;
                }

                v348 = -((((-(v83 * v324.f32[0]) - (((v83 * -4096.0) - (v83 + (v83 * -4096.0))) * v294)) - ((-v83 - ((v83 * -4096.0) - (v83 + (v83 * -4096.0)))) * v294)) - (((v83 * -4096.0) - (v83 + (v83 * -4096.0))) * v295)) - ((-v83 - ((v83 * -4096.0) - (v83 + (v83 * -4096.0)))) * v295));
                v349 = -(v83 * v324.f32[0]);
                v344 = -(((((v326.f32[0] * v83) - (((v83 * 4096.0) - ((v83 * 4096.0) - v83)) * v51)) - ((v83 - ((v83 * 4096.0) - ((v83 * 4096.0) - v83))) * v51)) - (((v83 * 4096.0) - ((v83 * 4096.0) - v83)) * v60)) - ((v83 - ((v83 * 4096.0) - ((v83 * 4096.0) - v83))) * v60));
                v345 = v326.f32[0] * v83;
              }

              else
              {
                v120 = (v85.f32[1] * 4096.0) - ((v85.f32[1] * 4096.0) - v85.f32[1]);
                v121 = -((((v92.f32[1] - (v120 * v290)) - ((v85.f32[1] - v120) * v290)) - (v120 * v291)) - ((v85.f32[1] - v120) * v291));
                if ((vmovn_s32(v90).u8[0] & 1) == 0)
                {
                  v122 = (v83 * 4096.0) - ((v83 * 4096.0) - v83);
                  v123 = -((((v94.f32[1] - (v122 * v294)) - ((v83 - v122) * v294)) - (v122 * v295)) - ((v83 - v122) * v295));
                  v124 = v121 - v123;
                  v125 = ((v121 - (v121 - v123)) - v123) + (v121 - ((v121 - v123) + (v121 - (v121 - v123))));
                  v126 = v92.f32[1] + v124;
                  v127 = (v124 - ((v92.f32[1] + v124) - v92.f32[1])) + (v92.f32[1] - ((v92.f32[1] + v124) - ((v92.f32[1] + v124) - v92.f32[1])));
                  v128 = v127 - v94.f32[1];
                  v348 = v125;
                  v349 = ((v127 - (v127 - v94.f32[1])) - v94.f32[1]) + (v127 - ((v127 - v94.f32[1]) + (v127 - (v127 - v94.f32[1]))));
                  v129 = v126 + (v127 - v94.f32[1]);
                  v350 = (v128 - (v129 - v126)) + (v126 - (v129 - (v129 - v126)));
                  v351 = v129;
                  v130 = -(((((v326.f32[0] * v83) - (v122 * v51)) - ((v83 - v122) * v51)) - (v122 * v60)) - ((v83 - v122) * v60));
                  v131 = -(((((v322.f32[0] * v85.f32[1]) + (-v120 * v49)) + (-(v85.f32[1] - v120) * v49)) + (-v120 * v292)) - ((v85.f32[1] - v120) * v292));
                  v132 = v130 - v131;
                  v133 = ((v130 - (v130 - v131)) - v131) + (v130 - ((v130 - v131) + (v130 - (v130 - v131))));
                  v134 = (v326.f32[0] * v83) + v132;
                  v135 = (v132 - (v134 - (v326.f32[0] * v83))) + ((v326.f32[0] * v83) - (v134 - (v134 - (v326.f32[0] * v83))));
                  v136 = v135 - (v322.f32[0] * v85.f32[1]);
                  v344 = v133;
                  v345 = ((v135 - v136) - (v322.f32[0] * v85.f32[1])) + (v135 - (v136 + (v135 - v136)));
                  v346 = (v136 - ((v134 + v136) - v134)) + (v134 - ((v134 + v136) - ((v134 + v136) - v134)));
                  v347 = v134 + v136;
                  v119 = 4;
LABEL_42:
                  v323 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                  v325 = *v72.i8;
                  v318 = v85;
                  v313 = *v73.i8;
                  *&v310 = ((v309 - v326.f32[0]) - *&v310) + (v309 - (v326.f32[0] + (v309 - v326.f32[0])));
                  if (v85.f32[0] == 0.0)
                  {
                    if (vmovn_s32(v90).i8[2])
                    {
                      v340 = 0.0;
                      v336 = 0.0;
                      v137 = 1;
                      goto LABEL_50;
                    }

                    v146 = vmuls_lane_f32(-4096.0, *v73.i8, 1);
                    v340 = -((((-(*&v73.i32[1] * v326.f32[0]) - ((v146 - (*&v73.i32[1] + v146)) * v51)) - ((-*&v73.i32[1] - (v146 - (*&v73.i32[1] + v146))) * v51)) - ((v146 - (*&v73.i32[1] + v146)) * v60)) - ((-*&v73.i32[1] - (v146 - (*&v73.i32[1] + v146))) * v60));
                    v341 = -(*&v73.i32[1] * v326.f32[0]);
                    v141 = vmuls_lane_f32(v298, *v73.i8, 1);
                    v147 = vmuls_lane_f32(4096.0, *v73.i8, 1);
                    v142 = v147 - (v147 - *&v73.i32[1]);
                    v143 = *&v73.i32[1] - v142;
                    v145 = v316;
                    v144 = (v141 - (v142 * v315)) - ((*&v73.i32[1] - v142) * v315);
                  }

                  else
                  {
                    v138 = vmovn_s32(v90);
                    v139 = (v85.f32[0] * 4096.0) - ((v85.f32[0] * 4096.0) - v85.f32[0]);
                    v140 = -((((v92.f32[0] - (v139 * v49)) - ((v85.f32[0] - v139) * v49)) - (v139 * v292)) - ((v85.f32[0] - v139) * v292));
                    if ((v138.i8[2] & 1) == 0)
                    {
                      v148 = vmuls_lane_f32(4096.0, *v73.i8, 1);
                      v149 = v148 - (v148 - *&v73.i32[1]);
                      v150 = -((((v94.f32[0] - (v149 * v51)) - ((*&v73.i32[1] - v149) * v51)) - (v149 * v60)) - ((*&v73.i32[1] - v149) * v60));
                      v151 = v140 - v150;
                      v152 = ((v140 - (v140 - v150)) - v150) + (v140 - ((v140 - v150) + (v140 - (v140 - v150))));
                      v153 = v92.f32[0] + v151;
                      v154 = (v151 - ((v92.f32[0] + v151) - v92.f32[0])) + (v92.f32[0] - ((v92.f32[0] + v151) - ((v92.f32[0] + v151) - v92.f32[0])));
                      v155 = v154 - v94.f32[0];
                      v340 = v152;
                      v341 = ((v154 - (v154 - v94.f32[0])) - v94.f32[0]) + (v154 - ((v154 - v94.f32[0]) + (v154 - (v154 - v94.f32[0]))));
                      v156 = v153 + (v154 - v94.f32[0]);
                      v342 = (v155 - (v156 - v153)) + (v153 - (v156 - (v156 - v153)));
                      v343 = v156;
                      v157 = vmuls_lane_f32(v298, *v73.i8, 1);
                      v158 = -((((v157 - (v149 * v315)) - ((*&v73.i32[1] - v149) * v315)) - (v149 * v316)) - ((*&v73.i32[1] - v149) * v316));
                      v159 = -(((((v311 * v85.f32[0]) + (-v139 * v293)) + (-(v85.f32[0] - v139) * v293)) + (-v139 * v314)) - ((v85.f32[0] - v139) * v314));
                      v160 = v158 - v159;
                      v161 = ((v158 - (v158 - v159)) - v159) + (v158 - ((v158 - v159) + (v158 - (v158 - v159))));
                      v162 = v157 + v160;
                      v163 = (v160 - ((v157 + v160) - v157)) + (v157 - ((v157 + v160) - ((v157 + v160) - v157)));
                      v164 = v163 - (v311 * v85.f32[0]);
                      v336 = v161;
                      v337 = ((v163 - v164) - (v311 * v85.f32[0])) + (v163 - (v164 + (v163 - v164)));
                      v338 = (v164 - ((v162 + v164) - v162)) + (v162 - ((v162 + v164) - ((v162 + v164) - v162)));
                      v339 = v162 + v164;
                      v137 = 4;
LABEL_50:
                      v165 = sub_299E14DE8(v119, &v348, v137, &v336, v335);
                      v166 = sub_299E15000(v165, v335, v327, v320.f32[1]);
                      v167 = &v361;
                      v168 = v360;
                      v169 = sub_299E14DE8(v74, &v361, v166, v327, v360);
                      v170 = sub_299E14DE8(v137, &v340, v99, &v352, v334);
                      v171 = sub_299E15000(v170, v334, v327, v320.f32[0]);
                      v172 = sub_299E14DE8(v169, v360, v171, v327, &v361);
                      v173 = sub_299E14DE8(v99, &v356, v119, &v344, v333);
                      v174 = sub_299E15000(v173, v333, v327, v319);
                      v175 = sub_299E14DE8(v172, &v361, v174, v327, v360);
                      v176 = v325.f32[0];
                      if (v325.f32[1] != 0.0)
                      {
                        v177 = sub_299E15000(4, v369, v328, v325.f32[1]);
                        v167 = v360;
                        v168 = &v361;
                        v178 = sub_299E14DE8(v175, v360, v177, v328, &v361);
                        v176 = v325.f32[0];
                        v175 = v178;
                      }

                      if (v176 == 0.0)
                      {
                        v180 = v167;
                        v167 = v168;
                      }

                      else
                      {
                        v179 = sub_299E15000(4, v368, v328, v176);
                        v175 = sub_299E14DE8(v175, v168, v179, v328, v167);
                        v180 = v168;
                      }

                      if (v87 == 0.0)
                      {
                        v182 = v180;
                        v180 = v167;
                      }

                      else
                      {
                        v181 = sub_299E15000(4, v367, v328, v87);
                        v175 = sub_299E14DE8(v175, v167, v181, v328, v180);
                        v182 = v167;
                      }

                      v183 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                      v184 = v318;
                      v185 = v313;
                      v186 = *&v310;
                      v307 = v88;
                      if (*&v310 != 0.0)
                      {
                        if (v323 == 0.0)
                        {
                          v203 = v182;
                        }

                        else
                        {
                          v187 = *&v310 * v323;
                          v188 = (*&v310 * 4096.0) - ((*&v310 * 4096.0) - *&v310);
                          v189 = -(((((*&v310 * v323) - (v188 * ((v323 * 4096.0) - ((v323 * 4096.0) - v323)))) - ((*&v310 - v188) * ((v323 * 4096.0) - ((v323 * 4096.0) - v323)))) - (v188 * (v323 - ((v323 * 4096.0) - ((v323 * 4096.0) - v323))))) - ((*&v310 - v188) * (v323 - ((v323 * 4096.0) - ((v323 * 4096.0) - v323)))));
                          v190 = (v319 * 4096.0) - ((v319 * 4096.0) - v319);
                          v191 = v319 * v189;
                          v192 = (v189 * 4096.0) - ((v189 * 4096.0) - v189);
                          v193 = -(((((v319 * v189) - (v192 * v190)) - ((v189 - v192) * v190)) - (v192 * (v319 - v190))) - ((v189 - v192) * (v319 - v190)));
                          v194 = v319 * (*&v310 * v323);
                          v195 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
                          v196 = ((*&v310 * v323) * 4096.0) - ((v187 * 4096.0) - v187);
                          v197 = (*&v310 * v323) - v196;
                          v198 = -((((v194 - (v196 * v190)) - ((v187 - v196) * v190)) - (v196 * (v319 - v190))) - ((v187 - v196) * (v319 - v190)));
                          v329 = v193;
                          v330 = (v198 - ((v191 + v198) - v191)) + (v191 - ((v191 + v198) - ((v191 + v198) - v191)));
                          v331 = (v191 + v198) - ((v194 + (v191 + v198)) - v194);
                          v332 = v194 + ((v319 * v189) + v198);
                          v199 = sub_299E14DE8(v175, v180, 4, &v329, v182);
                          v175 = v199;
                          if (v195 == 0.0)
                          {
                            v203 = v180;
                            v180 = v182;
                          }

                          else
                          {
                            v200 = (v195 * 4096.0) - ((v195 * 4096.0) - v195);
                            v201 = (v195 * v187) + (-v196 * v200);
                            v202 = (v195 * v189) - (((v201 + (-v197 * v200)) + (-v196 * (v195 - v200))) - (v197 * (v195 - v200)));
                            v329 = -(((((v195 * v189) + (-v192 * v200)) + (-(v189 - v192) * v200)) + (-v192 * (v195 - v200))) - ((v189 - v192) * (v195 - v200)));
                            v330 = (-(((v201 + (-v197 * v200)) + (-v196 * (v195 - v200))) - (v197 * (v195 - v200))) - (v202 - (v195 * v189))) + ((v195 * v189) - (v202 - (v202 - (v195 * v189))));
                            v331 = v202 - (((v195 * v187) + v202) - (v195 * v187));
                            v332 = (v195 * v187) + v202;
                            v175 = sub_299E14DE8(v199, v182, 4, &v329, v180);
                            v203 = v182;
                          }

                          v87 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
                          v183 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                          v184 = v318;
                          v86 = v319;
                          v185 = v313;
                          v186 = *&v310;
                        }

                        if (v185.f32[1] == 0.0)
                        {
                          v182 = v203;
                        }

                        else
                        {
                          v204 = -(v186 * v185.f32[1]);
                          v205 = (v186 * -4096.0) - (v186 + (v186 * -4096.0));
                          v206 = -((((v204 - (v205 * ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1])))) - ((-v186 - v205) * ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1])))) - (v205 * (v185.f32[1] - ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1]))))) - ((-v186 - v205) * (v185.f32[1] - ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1])))));
                          v207 = (v320.f32[0] * 4096.0) - ((v320.f32[0] * 4096.0) - v320.f32[0]);
                          v208 = (v206 * 4096.0) - ((v206 * 4096.0) - v206);
                          v209 = -(((((v320.f32[0] * v206) - (v208 * v207)) - ((v206 - v208) * v207)) - (v208 * (v320.f32[0] - v207))) - ((v206 - v208) * (v320.f32[0] - v207)));
                          v210 = (v204 * 4096.0) - ((v204 * 4096.0) - v204);
                          v211 = v204 - v210;
                          v212 = -(((((v320.f32[0] * v204) - (v210 * v207)) - ((v204 - v210) * v207)) - (v210 * (v320.f32[0] - v207))) - ((v204 - v210) * (v320.f32[0] - v207)));
                          v213 = (v320.f32[0] * v206) + v212;
                          v329 = v209;
                          v330 = (v212 - (v213 - (v320.f32[0] * v206))) + ((v320.f32[0] * v206) - (v213 - (v213 - (v320.f32[0] * v206))));
                          v331 = v213 - (((v320.f32[0] * v204) + v213) - (v320.f32[0] * v204));
                          v332 = (v320.f32[0] * v204) + v213;
                          v214 = sub_299E14DE8(v175, v180, 4, &v329, v203);
                          v175 = v214;
                          if (v325.f32[0] == 0.0)
                          {
                            v182 = v180;
                            v180 = v203;
                          }

                          else
                          {
                            v215 = (v325.f32[0] * 4096.0) - ((v325.f32[0] * 4096.0) - v325.f32[0]);
                            v216 = (v325.f32[0] * v204) + (-v210 * v215);
                            v217 = (v325.f32[0] * v206) - (((v216 + (-v211 * v215)) + (-v210 * (v325.f32[0] - v215))) - (v211 * (v325.f32[0] - v215)));
                            v329 = -(((((v325.f32[0] * v206) + (-v208 * v215)) + (-(v206 - v208) * v215)) + (-v208 * (v325.f32[0] - v215))) - ((v206 - v208) * (v325.f32[0] - v215)));
                            v330 = (-(((v216 + (-v211 * v215)) + (-v210 * (v325.f32[0] - v215))) - (v211 * (v325.f32[0] - v215))) - (v217 - (v325.f32[0] * v206))) + ((v325.f32[0] * v206) - (v217 - (v217 - (v325.f32[0] * v206))));
                            v331 = v217 - (((v325.f32[0] * v204) + v217) - (v325.f32[0] * v204));
                            v332 = (v325.f32[0] * v204) + v217;
                            v175 = sub_299E14DE8(v214, v203, 4, &v329, v180);
                            v182 = v203;
                          }

                          v87 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
                          v183 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                          v184 = v318;
                          v185 = v313;
                        }

                        v88 = v307;
                      }

                      if (v88 != 0.0)
                      {
                        if (v185.f32[1] == 0.0)
                        {
                          v233 = v182;
                        }

                        else
                        {
                          v218 = v88 * v185.f32[1];
                          v219 = (v88 * 4096.0) - ((v88 * 4096.0) - v88);
                          v220 = -(((((v88 * v185.f32[1]) - (v219 * ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1])))) - ((v88 - v219) * ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1])))) - (v219 * (v185.f32[1] - ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1]))))) - ((v88 - v219) * (v185.f32[1] - ((v185.f32[1] * 4096.0) - ((v185.f32[1] * 4096.0) - v185.f32[1])))));
                          v221 = (v320.f32[1] * 4096.0) - ((v320.f32[1] * 4096.0) - v320.f32[1]);
                          v222 = (v220 * 4096.0) - ((v220 * 4096.0) - v220);
                          v223 = -(((((v320.f32[1] * v220) - (v222 * v221)) - ((v220 - v222) * v221)) - (v222 * (v320.f32[1] - v221))) - ((v220 - v222) * (v320.f32[1] - v221)));
                          v224 = ((v88 * v185.f32[1]) * 4096.0) - ((v218 * 4096.0) - v218);
                          v225 = (v88 * v185.f32[1]) - v224;
                          v226 = -(((((v320.f32[1] * v218) - (v224 * v221)) - ((v218 - v224) * v221)) - (v224 * (v320.f32[1] - v221))) - ((v218 - v224) * (v320.f32[1] - v221)));
                          v227 = (v320.f32[1] * v220) + v226;
                          v329 = v223;
                          v330 = (v226 - (v227 - (v320.f32[1] * v220))) + ((v320.f32[1] * v220) - (v227 - (v227 - (v320.f32[1] * v220))));
                          v331 = v227 - (((v320.f32[1] * v218) + v227) - (v320.f32[1] * v218));
                          v332 = (v320.f32[1] * v218) + v227;
                          v228 = sub_299E14DE8(v175, v180, 4, &v329, v182);
                          v175 = v228;
                          if (v325.f32[1] == 0.0)
                          {
                            v233 = v180;
                            v180 = v182;
                          }

                          else
                          {
                            v229 = v325.f32[1];
                            v230 = (v325.f32[1] * 4096.0) - ((v325.f32[1] * 4096.0) - v325.f32[1]);
                            v231 = (v325.f32[1] * v218) + (-v224 * v230);
                            v232 = (v229 * v220) - (((v231 + (-v225 * v230)) + (-v224 * (v229 - v230))) - (v225 * (v229 - v230)));
                            v329 = -(((((v229 * v220) + (-v222 * v230)) + (-(v220 - v222) * v230)) + (-v222 * (v229 - v230))) - ((v220 - v222) * (v229 - v230)));
                            v330 = (-(((v231 + (-v225 * v230)) + (-v224 * (v229 - v230))) - (v225 * (v229 - v230))) - (v232 - (v325.f32[1] * v220))) + ((v325.f32[1] * v220) - (v232 - (v232 - (v325.f32[1] * v220))));
                            v331 = v232 - (((v325.f32[1] * v218) + v232) - (v325.f32[1] * v218));
                            v332 = (v325.f32[1] * v218) + v232;
                            v175 = sub_299E14DE8(v228, v182, 4, &v329, v180);
                            v233 = v182;
                          }

                          v87 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
                          v183 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                          v185 = v313;
                          v88 = v307;
                        }

                        if (v185.f32[0] == 0.0)
                        {
                          v182 = v233;
                          v184 = v318;
                        }

                        else
                        {
                          v234 = -(v88 * v185.f32[0]);
                          v235 = (v88 * -4096.0) - (v88 + (v88 * -4096.0));
                          v236 = -((((v234 - (v235 * ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0])))) - ((-v88 - v235) * ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0])))) - (v235 * (v185.f32[0] - ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0]))))) - ((-v88 - v235) * (v185.f32[0] - ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0])))));
                          v237 = (v86 * 4096.0) - ((v86 * 4096.0) - v86);
                          v238 = v86 - v237;
                          v239 = v86 * v236;
                          v240 = (v236 * 4096.0) - ((v236 * 4096.0) - v236);
                          v241 = -(((((v86 * v236) - (v240 * v237)) - ((v236 - v240) * v237)) - (v240 * (v86 - v237))) - ((v236 - v240) * (v86 - v237)));
                          v242 = v86 * v234;
                          v243 = v87;
                          v244 = (v234 * 4096.0) - ((v234 * 4096.0) - v234);
                          v245 = v234 - v244;
                          v246 = -((((v242 - (v244 * v237)) - ((v234 - v244) * v237)) - (v244 * v238)) - ((v234 - v244) * v238));
                          v329 = v241;
                          v330 = (v246 - ((v239 + v246) - v239)) + (v239 - ((v239 + v246) - ((v239 + v246) - v239)));
                          v331 = (v239 + v246) - ((v242 + (v239 + v246)) - v242);
                          v332 = v242 + (v239 + v246);
                          v247 = sub_299E14DE8(v175, v180, 4, &v329, v233);
                          v175 = v247;
                          if (v243 == 0.0)
                          {
                            v182 = v180;
                            v180 = v233;
                          }

                          else
                          {
                            v248 = (v243 * 4096.0) - ((v243 * 4096.0) - v243);
                            v249 = (v243 * v234) + (-v244 * v248);
                            v250 = (v243 * v236) - (((v249 + (-v245 * v248)) + (-v244 * (v243 - v248))) - (v245 * (v243 - v248)));
                            v329 = -(((((v243 * v236) + (-v240 * v248)) + (-(v236 - v240) * v248)) + (-v240 * (v243 - v248))) - ((v236 - v240) * (v243 - v248)));
                            v330 = (-(((v249 + (-v245 * v248)) + (-v244 * (v243 - v248))) - (v245 * (v243 - v248))) - (v250 - (v243 * v236))) + ((v243 * v236) - (v250 - (v250 - (v243 * v236))));
                            v331 = v250 - (((v243 * v234) + v250) - (v243 * v234));
                            v332 = (v243 * v234) + v250;
                            v175 = sub_299E14DE8(v247, v233, 4, &v329, v180);
                            v182 = v233;
                          }

                          v87 = v243;
                          v183 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                          v184 = v318;
                          v185 = v313;
                        }
                      }

                      if (v184.f32[0] == 0.0)
                      {
                        v268 = v182;
                      }

                      else
                      {
                        if (v185.f32[0] == 0.0)
                        {
                          v268 = v182;
                        }

                        else
                        {
                          v251 = vmul_f32(v184, v185);
                          v252 = (v184.f32[0] * 4096.0) - ((v184.f32[0] * 4096.0) - v184.f32[0]);
                          v253 = -((((v251.f32[0] - (v252 * ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0])))) - ((v184.f32[0] - v252) * ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0])))) - (v252 * (v185.f32[0] - ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0]))))) - ((v184.f32[0] - v252) * (v185.f32[0] - ((v185.f32[0] * 4096.0) - ((v185.f32[0] * 4096.0) - v185.f32[0])))));
                          v254 = (v320.f32[0] * 4096.0) - ((v320.f32[0] * 4096.0) - v320.f32[0]);
                          v255 = v320.f32[0] - v254;
                          v256 = v320.f32[0] * v253;
                          v257 = (v253 * 4096.0) - ((v253 * 4096.0) - v253);
                          v258 = -(((((v320.f32[0] * v253) - (v257 * v254)) - ((v253 - v257) * v254)) - (v257 * (v320.f32[0] - v254))) - ((v253 - v257) * (v320.f32[0] - v254)));
                          v259 = vmul_f32(v320, v251).f32[0];
                          v260 = (4096.0 * v251.f32[0]) - ((4096.0 * v251.f32[0]) - v251.f32[0]);
                          v321 = v251;
                          v261 = v251.f32[0] - v260;
                          v262 = -((((v259 - (v260 * v254)) - ((v251.f32[0] - v260) * v254)) - (v260 * v255)) - ((v251.f32[0] - v260) * v255));
                          v329 = v258;
                          v330 = (v262 - ((v256 + v262) - v256)) + (v256 - ((v256 + v262) - ((v256 + v262) - v256)));
                          v331 = (v256 + v262) - ((v259 + (v256 + v262)) - v259);
                          v332 = v259 + (v256 + v262);
                          v263 = sub_299E14DE8(v175, v180, 4, &v329, v182);
                          v175 = v263;
                          if (v325.f32[0] == 0.0)
                          {
                            v268 = v180;
                            v180 = v182;
                          }

                          else
                          {
                            v264 = (v325.f32[0] * 4096.0) - ((v325.f32[0] * 4096.0) - v325.f32[0]);
                            v265 = vmul_f32(v325, v321).f32[0];
                            v266 = v265 + (-v260 * v264);
                            v267 = (v325.f32[0] * v253) - (((v266 + (-v261 * v264)) + (-v260 * (v325.f32[0] - v264))) - (v261 * (v325.f32[0] - v264)));
                            v329 = -(((((v325.f32[0] * v253) + (-v257 * v264)) + (-(v253 - v257) * v264)) + (-v257 * (v325.f32[0] - v264))) - ((v253 - v257) * (v325.f32[0] - v264)));
                            v330 = (-(((v266 + (-v261 * v264)) + (-v260 * (v325.f32[0] - v264))) - (v261 * (v325.f32[0] - v264))) - (v267 - (v325.f32[0] * v253))) + ((v325.f32[0] * v253) - (v267 - (v267 - (v325.f32[0] * v253))));
                            v331 = v267 - ((v265 + v267) - v265);
                            v332 = v265 + v267;
                            v175 = sub_299E14DE8(v263, v182, 4, &v329, v180);
                            v268 = v182;
                          }

                          v183 = ((v308 - v311) - *(&v310 + 1)) + (v308 - (v311 + (v308 - v311)));
                          v184.i32[0] = v318.i32[0];
                        }

                        if (v183 != 0.0)
                        {
                          v269 = -(v184.f32[0] * v183);
                          v270 = (v184.f32[0] * -4096.0) - (v184.f32[0] + (v184.f32[0] * -4096.0));
                          v271 = -((((v269 - (v270 * ((v183 * 4096.0) - ((v183 * 4096.0) - v183)))) - ((-v184.f32[0] - v270) * ((v183 * 4096.0) - ((v183 * 4096.0) - v183)))) - (v270 * (v183 - ((v183 * 4096.0) - ((v183 * 4096.0) - v183))))) - ((-v184.f32[0] - v270) * (v183 - ((v183 * 4096.0) - ((v183 * 4096.0) - v183)))));
                          v272 = (v296 * 4096.0) - ((v296 * 4096.0) - v296);
                          v273 = (v271 * 4096.0) - ((v271 * 4096.0) - v271);
                          v274 = -(((((v296 * v271) - (v273 * v272)) - ((v271 - v273) * v272)) - (v273 * (v296 - v272))) - ((v271 - v273) * (v296 - v272)));
                          v275 = (v269 * 4096.0) - ((v269 * 4096.0) - v269);
                          v276 = v269 - v275;
                          v277 = -(((((v296 * v269) - (v275 * v272)) - ((v269 - v275) * v272)) - (v275 * (v296 - v272))) - ((v269 - v275) * (v296 - v272)));
                          v278 = (v296 * v271) + v277;
                          v329 = v274;
                          v330 = (v277 - (v278 - (v296 * v271))) + ((v296 * v271) - (v278 - (v278 - (v296 * v271))));
                          v331 = v278 - (((v296 * v269) + v278) - (v296 * v269));
                          v332 = (v296 * v269) + v278;
                          v279 = sub_299E14DE8(v175, v180, 4, &v329, v268);
                          v175 = v279;
                          if (v325.f32[1] == 0.0)
                          {
                            v182 = v180;
                            v180 = v268;
                            v87 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
                            goto LABEL_99;
                          }

                          v280 = (v325.f32[1] * 4096.0) - ((v325.f32[1] * 4096.0) - v325.f32[1]);
                          v281 = (v325.f32[1] * v269) + (-v275 * v280);
                          v282 = (v325.f32[1] * v271) - (((v281 + (-v276 * v280)) + (-v275 * (v325.f32[1] - v280))) - (v276 * (v325.f32[1] - v280)));
                          v329 = -(((((v325.f32[1] * v271) + (-v273 * v280)) + (-(v271 - v273) * v280)) + (-v273 * (v325.f32[1] - v280))) - ((v271 - v273) * (v325.f32[1] - v280)));
                          v330 = (-(((v281 + (-v276 * v280)) + (-v275 * (v325.f32[1] - v280))) - (v276 * (v325.f32[1] - v280))) - (v282 - (v325.f32[1] * v271))) + ((v325.f32[1] * v271) - (v282 - (v282 - (v325.f32[1] * v271))));
                          v331 = v282 - (((v325.f32[1] * v269) + v282) - (v325.f32[1] * v269));
                          v332 = (v325.f32[1] * v269) + v282;
                          v283 = sub_299E14DE8(v279, v268, 4, &v329, v180);
                          v284 = v325.f32[1];
                          v175 = v283;
                          v87 = ((v300 - v319) - v301) + (v300 - (v319 + (v300 - v319)));
                          goto LABEL_98;
                        }

                        v182 = v268;
                      }

                      v284 = v325.f32[1];
                      if (v325.f32[1] == 0.0)
                      {
LABEL_99:
                        if (v325.f32[0] == 0.0)
                        {
                          v287 = v182;
                          v182 = v180;
                        }

                        else
                        {
                          v286 = sub_299E15000(v170, v334, v327, v325.f32[0]);
                          v175 = sub_299E14DE8(v175, v180, v286, v327, v182);
                          v287 = v180;
                        }

                        if (v87 == 0.0)
                        {
                          v287 = v182;
                        }

                        else
                        {
                          v288 = sub_299E15000(v173, v333, v327, v87);
                          v175 = sub_299E14DE8(v175, v182, v288, v327, v287);
                        }

                        return v287[v175 - 1];
                      }

LABEL_98:
                      v285 = sub_299E15000(v165, v335, v327, v284);
                      v175 = sub_299E14DE8(v175, v180, v285, v327, v268);
                      v182 = v180;
                      v180 = v268;
                      goto LABEL_99;
                    }

                    v340 = -((((v92.f32[0] - (v139 * v49)) - ((v85.f32[0] - v139) * v49)) - (v139 * v292)) - ((v85.f32[0] - v139) * v292));
                    v341 = v92.f32[0];
                    v141 = -(v85.f32[0] * v311);
                    v142 = (v85.f32[0] * -4096.0) - (v85.f32[0] + (v85.f32[0] * -4096.0));
                    v143 = -v85.f32[0] - v142;
                    v144 = (v141 - (v142 * v293)) - (v143 * v293);
                    v145 = v314;
                  }

                  v336 = -((v144 - (v142 * v145)) - (v143 * v145));
                  v337 = v141;
                  v137 = 2;
                  goto LABEL_50;
                }

                v348 = -((((v92.f32[1] - (v120 * v290)) - ((v85.f32[1] - v120) * v290)) - (v120 * v291)) - ((v85.f32[1] - v120) * v291));
                v349 = v92.f32[1];
                v344 = -((((-(v85.f32[1] * v322.f32[0]) - (((v85.f32[1] * -4096.0) - (v85.f32[1] + (v85.f32[1] * -4096.0))) * v49)) - ((-v85.f32[1] - ((v85.f32[1] * -4096.0) - (v85.f32[1] + (v85.f32[1] * -4096.0)))) * v49)) - (((v85.f32[1] * -4096.0) - (v85.f32[1] + (v85.f32[1] * -4096.0))) * v292)) - ((-v85.f32[1] - ((v85.f32[1] * -4096.0) - (v85.f32[1] + (v85.f32[1] * -4096.0)))) * v292));
                v345 = -(v85.f32[1] * v322.f32[0]);
              }

              v119 = 2;
              goto LABEL_42;
            }

            v356 = -((((v96 - (v100 * v293)) - ((v80 - v100) * v293)) - (v100 * v314)) - ((v80 - v100) * v314));
            v357 = v311 * v80;
            v352 = -((((-(v80 * v289) - (((v80 * -4096.0) - (v80 + (v80 * -4096.0))) * v290)) - ((-v80 - ((v80 * -4096.0) - (v80 + (v80 * -4096.0)))) * v290)) - (((v80 * -4096.0) - (v80 + (v80 * -4096.0))) * v291)) - ((-v80 - ((v80 * -4096.0) - (v80 + (v80 * -4096.0)))) * v291));
            v353 = -(v80 * v289);
          }

          v99 = 2;
          goto LABEL_34;
        }
      }
    }
  }

  return result;
}