uint64_t sub_1AF1C0B60(uint64_t a1)
{
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C0BD8(_DWORD *a1, _DWORD *a2)
{
  *a2 = 4;
  a2[1] = a1[69];
  a2[2] = a1[55];
  a2[3] = a1[53];
  a2[4] = a1[66];
  a2[5] = a1[63];
  a2[6] = a1[60];
  a2[7] = a1[71];
  return 32;
}

__n64 sub_1AF1C0C40(uint64_t a1, __n64 *a2, __n64 result, float a4, float a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (result.n64_f32[0] <= a4)
    {
      result.n64_f32[0] = a4;
    }

    *&v6 = -result.n64_f32[0];
    *(a1 + 8) = -result.n64_f32[0];
    *(&v6 + 1) = a5 * -0.5;
    *a1 = v6;
    a2[1].n64_u32[0] = result.n64_u32[0];
    result.n64_f32[1] = a5 * 0.5;
    a2->n64_u64[0] = result.n64_u64[0];
  }

  return result;
}

uint64_t sub_1AF1C0C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF1C0D24(a1);
  v7 = sub_1AF1C07E4(a1);
  v8 = sub_1AF1BF9CC(a1);
  if (a2)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  result = !v9;
  if (!v9)
  {
    if (v6 <= v7)
    {
      *&v11 = v7;
    }

    else
    {
      *&v11 = v6;
    }

    *&v12 = -*&v11;
    *(a2 + 8) = -*&v11;
    *(&v12 + 1) = v8 * -0.5;
    *a2 = v12;
    *(a3 + 8) = v11;
    *(&v11 + 1) = v8 * 0.5;
    *a3 = v11;
  }

  return result;
}

float sub_1AF1C0D24(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

BOOL sub_1AF1C0D6C(_OWORD *a1, float a2, float a3, float a4)
{
  if (a1)
  {
    if (a2 <= a3)
    {
      a2 = a3;
    }

    v4 = sqrt((a2 * a2) + a4 * 0.25 * a4);
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL sub_1AF1C0DB0(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1AF1C0D24(a1);
  v5 = sub_1AF1C07E4(a1);
  v6 = sub_1AF1BF9CC(a1);
  if (a2)
  {
    if (v4 <= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = sqrt((v7 * v7) + v6 * 0.25 * v6);
    *&v9 = 0;
    DWORD2(v9) = 0;
    *(&v9 + 3) = v8;
    *a2 = v9;
  }

  return a2 != 0;
}

void sub_1AF1C0E38(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v12 = sub_1AF1C0D24(a1);
  v13 = sub_1AF1C07E4(a1);
  v14 = sub_1AF1BF9CC(a1);
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v15 = v12 - v13;
      v16 = a5;
      do
      {
        v17 = 214013 * *a3 + 2531011;
        v18 = HIWORD(v17) * 0.0000152590219;
        v19 = __sincos_stret((v18 + v18) * 3.14159265);
        sinval = v19.__sinval;
        cosval = v19.__cosval;
        v22 = 214013 * v17 + 2531011;
        v23 = HIWORD(v22) * 0.0000152590219;
        v24 = 214013 * v22 + 2531011;
        *a3 = v24;
        v25 = HIWORD(v24) * 0.0000152590219;
        v26 = (v13 + (v23 * v15)) * v25;
        *&v27 = v26 * cosval;
        v28 = (v14 * v23) + -v14 * 0.5;
        *(&v27 + 1) = v28;
        *(&v27 + 2) = v26 * sinval;
        *a4 = v27;
        if (a5)
        {
          *&v29 = LODWORD(cosval);
          *(&v29 + 1) = LODWORD(sinval);
          *v16 = v29;
        }

        ++v16;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v30 = v12 - v13;
    v31 = a5;
    do
    {
      v32 = 214013 * *a3 + 2531011;
      v33 = HIWORD(v32) * 0.0000152590219;
      v34 = __sincos_stret((v33 + v33) * 3.14159265);
      v35 = v34.__sinval;
      v36 = v34.__cosval;
      v37 = 214013 * v32 + 2531011;
      *a3 = v37;
      v38 = HIWORD(v37) * 0.0000152590219;
      v39 = v13 + (v38 * v30);
      *&v40 = v39 * v36;
      v41 = (v14 * v38) + -v14 * 0.5;
      *(&v40 + 1) = v41;
      *(&v40 + 2) = v39 * v35;
      *a4 = v40;
      if (a5)
      {
        *&v42 = LODWORD(v36);
        *(&v42 + 1) = LODWORD(v35);
        *v31 = v42;
      }

      ++v31;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

uint64_t sub_1AF1C10E4(uint64_t a1)
{
  sub_1AF1C236C(a1, 5, 0.0);
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C213C(a1, 13, 48);

  return sub_1AF1C213C(a1, 10, 1);
}

uint64_t sub_1AF1C115C(_DWORD *a1, _DWORD *a2)
{
  *a2 = 5;
  a2[1] = a1[69];
  a2[2] = a1[57];
  a2[3] = a1[55];
  a2[4] = a1[53];
  a2[5] = a1[66];
  a2[6] = a1[63];
  a2[7] = a1[71];
  return 32;
}

float sub_1AF1C11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 212);
    LODWORD(v5) = *(a1 + 220);
    *&v6 = -*&v5;
    *(a2 + 8) = -*&v5;
    *(&v6 + 1) = v4 * -0.5;
    *a2 = v6;
    result = v4 * 0.5;
    *(a3 + 8) = v5;
    *(&v5 + 1) = result;
    *a3 = v5;
  }

  return result;
}

BOOL sub_1AF1C1214(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt((*(a1 + 220) * *(a1 + 220)) + *(a1 + 212) * 0.25 * *(a1 + 212));
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void sub_1AF1C1258(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v12 = sub_1AF1C07E4(a1);
  v13 = sub_1AF1C1544(a1);
  v14 = sub_1AF1BF9CC(a1);
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v15 = v12 - v13;
      v16 = a5;
      do
      {
        v17 = 214013 * *a3 + 2531011;
        v18 = HIWORD(v17) * 0.0000152590219;
        v19 = __sincos_stret((v18 + v18) * 3.14159265);
        sinval = v19.__sinval;
        cosval = v19.__cosval;
        v22 = 214013 * v17 + 2531011;
        v23 = HIWORD(v22) * 0.0000152590219;
        v24 = v13 + (v15 * v23);
        *&v25 = v24 * cosval;
        v26 = 214013 * v22 + 2531011;
        *a3 = v26;
        v27 = HIWORD(v26) * 0.0000152590219;
        v28 = (v14 * v27) + -v14 * 0.5;
        *(&v25 + 1) = v28;
        *(&v25 + 2) = v24 * sinval;
        *a4 = v25;
        if (a5)
        {
          if (v23 > 0.5)
          {
            cosval = -cosval;
            sinval = -sinval;
          }

          *&v29 = LODWORD(cosval);
          *(&v29 + 1) = LODWORD(sinval);
          *v16 = v29;
        }

        ++v16;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v30 = a5;
    do
    {
      v31 = 214013 * *a3 + 2531011;
      v32 = HIWORD(v31) * 0.0000152590219;
      v34 = __sincos_stret((v32 + v32) * 3.14159265);
      v35 = v34.__sinval;
      v36 = v34.__cosval;
      v37 = 214013 * v31 + 2531011;
      v38 = HIWORD(v37) * 0.0000152590219;
      if (v38 <= 0.5)
      {
        v39 = v12;
      }

      else
      {
        v39 = v13;
      }

      *&v33.__sinval = v39 * v36;
      v40 = 214013 * v37 + 2531011;
      *a3 = v40;
      v41 = HIWORD(v40) * 0.0000152590219;
      v42 = (v14 * v41) + -v14 * 0.5;
      *(&v33.__sinval + 1) = v42;
      *&v33.__cosval = v39 * v35;
      *a4 = v33;
      if (a5)
      {
        if (v38 > 0.5)
        {
          v36 = -v36;
          v35 = -v35;
        }

        *&v43 = LODWORD(v36);
        *(&v43 + 1) = LODWORD(v35);
        *v30 = v43;
      }

      ++v30;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

float sub_1AF1C1544(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 232);
}

uint64_t sub_1AF1C158C(uint64_t a1)
{
  sub_1AF1C236C(a1, 6, 0.25);
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C1614(_DWORD *a1, _DWORD *a2)
{
  *a2 = 6;
  a2[1] = a1[69];
  a2[2] = a1[58];
  a2[3] = a1[55];
  a2[4] = a1[53];
  a2[5] = a1[66];
  a2[6] = a1[63];
  a2[7] = a1[60];
  a2[8] = a1[71];
  return 36;
}

float sub_1AF1C1684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1AF1C07E4(a1);
  result = sub_1AF1BF9CC(a1);
  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *&v8 = -v9;
    *(a2 + 8) = -v9;
    *(&v8 + 1) = result * -0.5;
    *a2 = v8;
    result = result * 0.5;
    *(a3 + 8) = v9;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(v9));
  }

  return result;
}

BOOL sub_1AF1C1710(_OWORD *a1, double a2, float a3)
{
  if (a1)
  {
    v3 = a3 * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1C1734(uint64_t a1, _OWORD *a2)
{
  sub_1AF1C07E4(a1);
  v4 = sub_1AF1BF9CC(a1);
  if (a2)
  {
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4 * 0.5;
    *a2 = v5;
  }

  return a2 != 0;
}

void sub_1AF1C1784(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, __double2 *a5, int a6)
{
  v12 = sub_1AF1C07E4(a1);
  v13 = sub_1AF1BF9CC(a1);
  v14 = v13 * 0.5;
  *v15.i32 = (v13 * 0.5) - v12;
  v50 = v15;
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v16 = -v14;
      v17 = a5;
      do
      {
        v18 = 214013 * *a3 + 2531011;
        v19 = HIWORD(v18) * 0.0000152590219;
        v21 = __sincos_stret((v19 + v19) * 3.14159265);
        sinval = v21.__sinval;
        *&v23 = v21.__cosval;
        v24 = 214013 * v18 + 2531011;
        v25 = HIWORD(v24) * 0.0000152590219;
        *v26.i32 = v16 + (v25 * v13);
        v27 = 214013 * v24 + 2531011;
        *a3 = v27;
        v28 = HIWORD(v27) * 0.0000152590219;
        v29 = v12 * v28;
        *v30.i32 = fabsf(*v26.i32) - *v50.i32;
        if (*v30.i32 <= 0.0)
        {
          *&v34.__sinval = v23;
          *&v34.__cosval = LODWORD(sinval);
          *&v23 = v29 * *&v23;
        }

        else
        {
          *v30.i32 = *v30.i32 / v12;
          v31.i64[0] = 0x8000000080000000;
          v31.i64[1] = 0x8000000080000000;
          v32 = *vbslq_s8(v31, v30, v26).i32;
          v33 = sqrtf(1.0 - (v32 * v32));
          *&v20.__sinval = v33 * *&v23;
          sinval = v33 * sinval;
          *&v23 = v29 * (v33 * *&v23);
          v34 = v20;
          *(&v34.__sinval + 1) = v32;
          *&v34.__cosval = sinval;
          *v26.i32 = *vbslq_s8(v31, v50, v26).i32 + (v32 * v29);
        }

        DWORD1(v23) = v26.i32[0];
        *(&v23 + 2) = v29 * sinval;
        *a4 = v23;
        if (a5)
        {
          *v17 = v34;
        }

        ++v17;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v35 = -v14;
    v36 = a5;
    do
    {
      v37 = 214013 * *a3 + 2531011;
      v38 = HIWORD(v37) * 0.0000152590219;
      v40 = __sincos_stret((v38 + v38) * 3.14159265);
      v41 = v40.__sinval;
      *&v42 = v40.__cosval;
      v43 = 214013 * v37 + 2531011;
      *a3 = v43;
      *v44.i64 = HIWORD(v43) * 0.0000152590219;
      *v44.i32 = *v44.i64;
      *v44.i32 = v35 + (*v44.i32 * v13);
      *v45.i32 = fabsf(*v44.i32) - *v50.i32;
      if (*v45.i32 <= 0.0)
      {
        *&v49.__sinval = v42;
        *&v49.__cosval = LODWORD(v41);
        *&v42 = v12 * *&v42;
      }

      else
      {
        *v45.i32 = *v45.i32 / v12;
        v46.i64[0] = 0x8000000080000000;
        v46.i64[1] = 0x8000000080000000;
        v47 = *vbslq_s8(v46, v45, v44).i32;
        v48 = sqrtf(1.0 - (v47 * v47));
        *&v39.__sinval = v48 * *&v42;
        v41 = v48 * v41;
        *&v42 = v12 * (v48 * *&v42);
        v49 = v39;
        *(&v49.__sinval + 1) = v47;
        *&v49.__cosval = v41;
        *v44.i32 = *vbslq_s8(v46, v50, v44).i32 + (v47 * v12);
      }

      DWORD1(v42) = v44.i32[0];
      *(&v42 + 2) = v12 * v41;
      *a4 = v42;
      if (a5)
      {
        *v36 = v49;
      }

      ++v36;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

uint64_t sub_1AF1C1AA4(uint64_t a1)
{
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 2.0);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 8, 24);

  return sub_1AF1C213C(a1, 10, 1);
}

uint64_t sub_1AF1C1B1C(_DWORD *a1, _DWORD *a2)
{
  *a2 = 7;
  a2[1] = a1[69];
  a2[2] = a1[55];
  a2[3] = a1[53];
  a2[4] = a1[66];
  a2[5] = a1[68];
  a2[6] = a1[63];
  a2[7] = a1[71];
  return 32;
}

float sub_1AF1C1B7C(uint64_t a1, uint64_t a2, float result, float a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = result + a4;
    v5 = __PAIR64__(LODWORD(a4), LODWORD(result));
    v6 = vnegq_f32(vdupq_lane_s64(__SPAIR64__(LODWORD(a4), LODWORD(result)), 0));
    *(a1 + 8) = v6.i32[2];
    *a1 = v6.i64[0];
    *(a2 + 8) = result;
    *a2 = v5;
  }

  return result;
}

float32x4_t sub_1AF1C1BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    *&v4 = *(a1 + 236) + *(a1 + 220);
    HIDWORD(v4) = *(a1 + 236);
    result = vnegq_f32(vdupq_lane_s64(v4, 0));
    *(a2 + 8) = result.i32[2];
    *a2 = result.i64[0];
    *(a3 + 8) = v4;
    *a3 = v4;
  }

  return result;
}

BOOL sub_1AF1C1C04(_OWORD *a1, float a2, float a3)
{
  if (a1)
  {
    v3 = a2 + a3;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1C1C24(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = *(a1 + 236) + *(a1 + 220);
    *a2 = v2;
  }

  return a2 != 0;
}

void sub_1AF1C1C4C(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, float64x2_t *a5, int a6)
{
  v12 = sub_1AF1C07E4(a1);
  *&v13 = sub_1AF1C1F08(a1);
  v42 = v13;
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v14 = a5;
      do
      {
        v15 = 214013 * *a3 + 2531011;
        v16 = HIWORD(v15) * 0.0000152590219;
        v17 = __sincos_stret((v16 + v16) * 3.14159265);
        cosval = v17.__cosval;
        v19 = 214013 * v15 + 2531011;
        *&v20 = HIWORD(v19) * 0.0000152590219;
        *&v20 = *&v20;
        *&v20 = *&v42 * sqrtf(*&v20);
        v40 = v20;
        *&v39 = v12 + (cosval * *&v20);
        v21 = 214013 * v19 + 2531011;
        *a3 = v21;
        *&v20 = HIWORD(v21) * 0.0000152590219;
        v23 = __sincos_stret((*&v20 + *&v20) * 3.14159265);
        v22 = v23.__cosval;
        sinval = v23.__sinval;
        HIDWORD(v25) = HIDWORD(v40);
        v26.f64[1] = v17.__sinval;
        *&v26.f64[0] = vcvt_f32_f64(v26);
        *&v25 = vmul_f32(__PAIR64__(v40, v39), *&v26.f64[0]);
        *(&v25 + 2) = *&v39 * sinval;
        *a4 = v25;
        if (a5)
        {
          *v26.f64 = cosval * *v26.f64;
          *&v26.f64[1] = cosval * sinval;
          *v14 = v26;
        }

        ++v14;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v27 = a5;
    do
    {
      v28 = 214013 * *a3 + 2531011;
      v29 = HIWORD(v28) * 0.0000152590219;
      v30 = __sincos_stret((v29 + v29) * 3.14159265);
      v31 = v30.__cosval;
      v32 = v42;
      *&v32 = v12 + (v31 * *&v42);
      v41 = v32;
      v33 = 214013 * v28 + 2531011;
      *a3 = v33;
      *&v32 = HIWORD(v33) * 0.0000152590219;
      v35 = __sincos_stret((*&v32 + *&v32) * 3.14159265);
      v34 = v35.__cosval;
      v36 = v35.__sinval;
      v37 = v41;
      v38.f64[1] = v30.__sinval;
      *&v38.f64[0] = vcvt_f32_f64(v38);
      DWORD1(v37) = v42;
      *&v37 = vmul_f32(*&v37, *&v38.f64[0]);
      *(&v37 + 2) = *&v41 * v36;
      *a4 = v37;
      if (a5)
      {
        *v38.f64 = v31 * *v38.f64;
        *&v38.f64[1] = v31 * v36;
        *v27 = v38;
      }

      ++v27;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

float sub_1AF1C1F08(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 236);
}

uint64_t sub_1AF1C1F50(uint64_t a1)
{
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 7, 0.25);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 15, 24);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C1FC8(_DWORD *a1, _DWORD *a2)
{
  *a2 = 8;
  a2[1] = a1[69];
  a2[2] = a1[55];
  a2[3] = a1[59];
  a2[4] = a1[66];
  a2[5] = a1[67];
  a2[6] = a1[60];
  a2[7] = a1[71];
  return 32;
}

uint64_t sub_1AF1C2020(_OWORD *a1, __int128 *a2)
{
  if (qword_1ED73ABC8 != -1)
  {
    sub_1AFDDE030();
  }

  v4 = sub_1AF0D160C(qword_1ED73ABC0, 0x148uLL);
  sub_1AF1B2AF0(v4);
  __asm { FMOV            V0.4S, #1.0 }

  *(v4 + 208) = _Q0;
  *(v4 + 224) = xmmword_1AFE21CA0;
  *(v4 + 244) = xmmword_1AFE21CB0;
  *(v4 + 260) = xmmword_1AFE21CC0;
  *(v4 + 240) = 1065353216;
  *(v4 + 280) = 0;
  *(v4 + 120) = &off_1F24E8078;
  if (!a2)
  {
    *(v4 + 304) = 0u;
    *(v4 + 320) = 0u;
    *(v4 + 288) = 0u;
    sub_1AF1C213C(v4, 17, 0);
    if (!a1)
    {
      return v4;
    }

LABEL_7:
    *(v4 + 208) = *a1;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[4];
    *(v4 + 256) = a1[3];
    *(v4 + 272) = v14;
    *(v4 + 224) = v12;
    *(v4 + 240) = v13;
    return v4;
  }

  v10 = *a2;
  v11 = a2[2];
  *(v4 + 304) = a2[1];
  *(v4 + 320) = v11;
  *(v4 + 288) = v10;
  sub_1AF1C213C(v4, 17, 0);
  if (a1)
  {
    goto LABEL_7;
  }

  (*(v4 + 312))(v4);
  return v4;
}

uint64_t sub_1AF1C213C(uint64_t a1, int a2, uint64_t a3)
{
  result = sub_1AF1C23C8(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      sub_1AF1BE6FC(a1);
      *v6 = a3;
      return 1;
    }
  }

  return result;
}

void sub_1AF1C2198(uint64_t a1, uint64_t a2)
{
  sub_1AF1B2C84(a1, a2);
  if (*(a1 + 288))
  {
    v4 = *(a1 + 288);
    v5 = *(a1 + 320);
    *(a2 + 304) = *(a1 + 304);
    *(a2 + 320) = v5;
    *(a2 + 288) = v4;
  }

  *(a2 + 208) = *(a1 + 208);
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 272);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 272) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  os_unfair_lock_lock(&unk_1EB654CD8);
  v9 = *(a1 + 64);
  v10 = *(a1 + 336);
  if ((v9 != 0) == (v10 == 0))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE0BC(v11, v12, v13, v14, v15, v16, v17, v18);
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v9)
  {
LABEL_6:
    sub_1AF1B2C80(a2, v9);
    v19 = CFRetain(v10);
    *(a2 + 336) = v19;
    sub_1AF1C2274(v19);
  }

LABEL_7:
  os_unfair_lock_unlock(&unk_1EB654CD8);
}

void sub_1AF1C2274(void *key)
{
  Value = CFDictionaryGetValue(qword_1ED731B00, key);
  if (!Value)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE134(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  CFDictionarySetValue(qword_1ED731B00, key, Value + 1);
}

uint64_t sub_1AF1C22E4(uint64_t a1, int a2)
{
  v2 = a1 + 232;
  v3 = a1 + 236;
  v4 = a1 + 240;
  if (a2 != 18)
  {
    v4 = 0;
  }

  if (a2 != 7)
  {
    v3 = v4;
  }

  if (a2 != 6)
  {
    v2 = v3;
  }

  v5 = a1 + 220;
  v6 = a1 + 228;
  if (a2 != 5)
  {
    v6 = 0;
  }

  if (a2 != 4)
  {
    v5 = v6;
  }

  if (a2 <= 5)
  {
    v2 = v5;
  }

  v7 = a1 + 216;
  v8 = a1 + 224;
  if (a2 != 3)
  {
    v8 = 0;
  }

  if (a2 != 2)
  {
    v7 = v8;
  }

  v9 = a1 + 208;
  v10 = a1 + 212;
  if (a2 != 1)
  {
    v10 = 0;
  }

  if (a2)
  {
    v9 = v10;
  }

  if (a2 <= 1)
  {
    v7 = v9;
  }

  if (a2 <= 3)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF1C236C(uint64_t a1, int a2, float a3)
{
  result = sub_1AF1C22E4(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      sub_1AF1BE6FC(a1);
      *v6 = a3;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF1C23C8(uint64_t a1, int a2)
{
  v2 = a1 + 268;
  v3 = a1 + 276;
  v4 = a1 + 280;
  if (a2 != 19)
  {
    v4 = 0;
  }

  if (a2 != 17)
  {
    v3 = v4;
  }

  if (a2 != 15)
  {
    v2 = v3;
  }

  v5 = a1 + 260;
  v6 = a1 + 264;
  if (a2 != 13)
  {
    v6 = 0;
  }

  if (a2 != 12)
  {
    v5 = v6;
  }

  if (a2 <= 14)
  {
    v2 = v5;
  }

  v7 = a1 + 252;
  v8 = a1 + 256;
  if (a2 != 11)
  {
    v8 = 0;
  }

  if (a2 != 10)
  {
    v7 = v8;
  }

  v9 = a1 + 244;
  v10 = a1 + 248;
  if (a2 != 9)
  {
    v10 = 0;
  }

  if (a2 != 8)
  {
    v9 = v10;
  }

  if (a2 <= 9)
  {
    v7 = v9;
  }

  if (a2 <= 11)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

int *sub_1AF1C2450(uint64_t a1, int a2)
{
  result = sub_1AF1C23C8(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

BOOL sub_1AF1C2470(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 280) == 2;
}

uint64_t sub_1AF1C24C0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 280) = v12;
  return sub_1AF1BE6FC(a1);
}

BOOL sub_1AF1C2528(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 280) == 1;
}

uint64_t sub_1AF1C2578(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 280) = a2;
  return sub_1AF1BE6FC(a1);
}

void sub_1AF1C25D4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 224) != a2)
  {
    *(a1 + 224) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C263C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 260);
}

void sub_1AF1C2684(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 260) != a2)
  {
    *(a1 + 260) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C26EC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 212) != a2)
  {
    *(a1 + 212) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C2754(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 252);
}

void sub_1AF1C279C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 252) != a2)
  {
    *(a1 + 252) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C2804(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 216) != a2)
  {
    *(a1 + 216) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C286C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 256);
}

void sub_1AF1C28B4(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 256) != a2)
  {
    *(a1 + 256) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C291C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 276);
}

void sub_1AF1C2964(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 276) != a2)
  {
    *(a1 + 276) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C29CC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 208) != a2)
  {
    *(a1 + 208) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C2A34(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 248);
}

void sub_1AF1C2A7C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 248) != a2)
  {
    *(a1 + 248) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C2AE4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 272);
}

void sub_1AF1C2B2C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a2 & ~(a2 >> 31);
  if (v12 != *(a1 + 272))
  {
    *(a1 + 272) = v12;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C2B98(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 264);
}

void sub_1AF1C2BE0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 264) != a2)
  {
    *(a1 + 264) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C2C48(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 228) != a2)
  {
    *(a1 + 228) = a2;
    sub_1AF1BE6FC(a1);
  }
}

float sub_1AF1C2CB0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

void sub_1AF1C2CF8(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 240) != a2)
  {
    *(a1 + 240) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C2D60(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 220) != a2)
  {
    *(a1 + 220) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C2DC8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 244);
}

void sub_1AF1C2E10(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 244) != a2)
  {
    *(a1 + 244) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C2E78(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 236) != a2)
  {
    *(a1 + 236) = a2;
    sub_1AF1BE6FC(a1);
  }
}

uint64_t sub_1AF1C2EE0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 268);
}

void sub_1AF1C2F28(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 268) != a2)
  {
    *(a1 + 268) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C2F90(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 232) != a2)
  {
    *(a1 + 232) = a2;
    sub_1AF1BE6FC(a1);
  }
}

void sub_1AF1C2FF8()
{
  if (!qword_1ED731AF8)
  {
    v0 = *MEMORY[0x1E695E480];
    v1 = MEMORY[0x1E695E9D8];
    qword_1ED731AF8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    qword_1ED731B00 = CFDictionaryCreateMutable(v0, 0, v1, 0);
  }
}

void sub_1AF1C3074(uint64_t a1)
{
  sub_1AF1C2FF8();
  v2 = *(a1 + 336);
  if (v2)
  {
    Value = CFDictionaryGetValue(qword_1ED731B00, *(a1 + 336));
    v4 = Value;
    if (Value)
    {
      if (Value == 1)
      {
        CFDictionaryRemoveValue(qword_1ED731AF8, v2);
        CFDictionaryRemoveValue(qword_1ED731B00, v2);
LABEL_8:
        CFRelease(*(a1 + 336));
        *(a1 + 336) = 0;
        return;
      }
    }

    else
    {
      v5 = sub_1AF0D5194();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDE224(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    CFDictionarySetValue(qword_1ED731B00, v2, v4 - 1);
    goto LABEL_8;
  }
}

id sub_1AF1C3130(void *a1)
{
  if (a1[42])
  {
    os_unfair_lock_lock(&unk_1EB654CD8);
    sub_1AF1C3074(a1);
    os_unfair_lock_unlock(&unk_1EB654CD8);
  }

  return sub_1AF1B1D5C(a1);
}

__CFString *sub_1AF1C3190(const void *a1)
{
  memset(__s1, 0, sizeof(__s1));
  sub_1AF1BE95C(a1, __s1);
  if (!memcmp(__s1, &xmmword_1F24E80B0, 0x30uLL))
  {
    v2 = @"Box";
  }

  else if (!memcmp(__s1, &xmmword_1F24E80E0, 0x30uLL))
  {
    v2 = @"Pyramid";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8140, 0x30uLL))
  {
    v2 = @"Cylinder";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8170, 0x30uLL))
  {
    v2 = @"Cone";
  }

  else if (!memcmp(__s1, &xmmword_1F24E81A0, 0x30uLL))
  {
    v2 = @"Tube";
  }

  else if (!memcmp(__s1, &xmmword_1F24E81D0, 0x30uLL))
  {
    v2 = @"Capsule";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8200, 0x30uLL))
  {
    v2 = @"Torus";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8110, 0x30uLL))
  {
    v2 = @"Sphere";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8080, 0x30uLL))
  {
    v2 = @"Plane";
  }

  else
  {
    v2 = @"Unknown";
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = sub_1AF3753A8(a1);
  v5 = sub_1AF1B1F38(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s(%@) %p | %@\n", v4, v2, a1, v5);
  v6 = sub_1AF1B2C1C(a1);
  CFStringAppendFormat(Mutable, 0, @"  mesh: %@\n", v6);
  if (sub_1AF1B1FE0(a1) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1AF1B2030(a1, v7);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v7++, v8);
    }

    while (v7 < sub_1AF1B1FE0(a1));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1C33EC(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a3 = vsubq_f32(*v4, v4[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    v6 = *(a1 + 296);
    if (v6)
    {
      return v6();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1AF1C3434(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1C344C(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  return sub_1AF1BE6FC(a1);
}

uint64_t sub_1AF1C3494(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAF5C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C2020((a1 + 208), 0);
  sub_1AF1C2198(a1, v10);
  return v10;
}

void *sub_1AF1C34F8(CFTypeRef cf, const void *a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v21 = ClassWithTypeID[13]) != 0)
  {
    return v21(cf, a2, a3, a4, a5, a6);
  }

  else
  {
    return memcpy(a3, a2, a4);
  }
}

void *sub_1AF1C35C0(CFTypeRef cf, void *a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v21 = ClassWithTypeID[12]) != 0)
  {
    return v21(cf, a2, a3, a4, a5, a6);
  }

  else
  {
    return memcpy(a2, a3, a4);
  }
}

void *(*sub_1AF1C3688(const void *a1))(int a1, const void *a2, void *__dst, size_t __n)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return sub_1AF1C36D0;
  }

  result = ClassWithTypeID[13];
  if (!result)
  {
    return sub_1AF1C36D0;
  }

  return result;
}

void *(*sub_1AF1C36DC(const void *a1))(int a1, void *__dst, void *__src, size_t __n)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return sub_1AF1C3724;
  }

  result = ClassWithTypeID[12];
  if (!result)
  {
    return sub_1AF1C3724;
  }

  return result;
}

uint64_t sub_1AF1C3734(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696)
  {
    v11 = ClassWithTypeID[23];
    if (v11)
    {
      return v11(cf);
    }
  }

  v13 = sub_1AF0D5194();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDE314(cf, v13);
  }

  return 0;
}

void *sub_1AF1C37D4(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFGetTypeID(cf);
  result = _CFRuntimeGetClassWithTypeID();
  if (*result == 749405696)
  {
    v13 = result[24];
    if (v13)
    {
      return v13(cf, a2);
    }
  }

  return result;
}

uint64_t sub_1AF1C3858(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v11 = ClassWithTypeID[25]) != 0)
  {
    return v11(cf);
  }

  else
  {
    return 0;
  }
}

void *sub_1AF1C38D4(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFGetTypeID(cf);
  result = _CFRuntimeGetClassWithTypeID();
  if (*result == 749405696)
  {
    v13 = result[26];
    if (v13)
    {
      return v13(cf, a2);
    }
  }

  return result;
}

uint64_t sub_1AF1C3958(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!cf)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v17 = ClassWithTypeID[15]) != 0)
  {
    return v17(cf, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1C39FC(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (!cf)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v15 = ClassWithTypeID[16]) != 0)
  {
    return v15(cf, a2, a3);
  }

  else
  {
    return 0;
  }
}

void sub_1AF1C3A90(void *cf, uint64_t a2)
{
  if (!cf && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_1ED737C18 != -1)
  {
    sub_1AFDDE38C();
  }

  v12 = qword_1ED737C10;
  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  v14 = *ClassWithTypeID;
  if (*ClassWithTypeID == 749405696)
  {
    v15 = ClassWithTypeID;
  }

  else
  {
    v15 = 0;
  }

  if (*(cf + 6) == a2)
  {
    v16 = *(cf + 7);
    if (v16)
    {
      v17 = v16 - 1;
      *(cf + 7) = v17;
      if (!v17)
      {
        if (v14 == 749405696)
        {
          v18 = v15[19];
          if (v18)
          {
            v18(cf, a2);
          }
        }

        v19 = *(v12 + 16);
        if (v19)
        {
          v19(cf, a2);
        }

        if (v14 == 749405696)
        {
          v20 = v15[17];
          if (v20)
          {
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = sub_1AF1C3C48;
            v22[3] = &unk_1E7A7B8C0;
            v22[4] = a2;
            v20(cf, v22);
          }
        }

        sub_1AF1C3C58(cf, a2);
        *(cf + 6) = 0;
      }
    }

    else if ((byte_1EB658620 & 1) == 0)
    {
      byte_1EB658620 = 1;
      v21 = sub_1AF0D5194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDE3B4(cf, v21);
      }
    }
  }
}

void sub_1AF1C3C58(void *a1, uint64_t a2)
{
  v3 = sub_1AF1CF830(a2);
  if (v3)
  {
    v4 = v3;
    sub_1AF1183E0(v3, a1);

    sub_1AF11960C(v4, a1);
  }
}

void sub_1AF1C3CB4(uint64_t *cf, uint64_t a2)
{
  if (!cf && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_1ED737C18 != -1)
  {
    sub_1AFDDE38C();
  }

  v12 = qword_1ED737C10;
  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  v14 = *ClassWithTypeID;
  if (*ClassWithTypeID == 749405696)
  {
    v15 = ClassWithTypeID;
  }

  else
  {
    v15 = 0;
  }

  v16 = cf[6];
  if (!v16 || v16 == a2)
  {
    ++cf[7];
    if (v16)
    {
      return;
    }
  }

  else
  {
    if (v14 == 749405696)
    {
      v17 = v15[19];
      if (v17)
      {
        v17(cf, cf[6]);
      }
    }

    v18 = v12[2];
    if (v18)
    {
      v18(cf, v16);
    }

    if (v14 == 749405696)
    {
      v19 = v15[17];
      if (v19)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1AF1C3F44;
        v28[3] = &unk_1E7A7B8C0;
        v28[4] = v16;
        v19(cf, v28);
      }
    }

    sub_1AF1C3C58(cf, v16);
    cf[7] = 1;
  }

  cf[6] = a2;
  v20 = v12[1];
  if (v20)
  {
    v20(cf, a2);
  }

  if (v14 == 749405696)
  {
    v21 = v15[18];
    if (v21)
    {
      v21(cf, a2);
    }

    v22 = v15[17];
    if (v22)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1AF1C3F54;
      v27[3] = &unk_1E7A7B8C0;
      v27[4] = a2;
      v22(cf, v27);
    }
  }

  if (v16)
  {
    v23 = v12[4];
    if (v23)
    {
      v23(cf, v16);
    }

    if (v14 == 749405696)
    {
      v24 = v15[21];
      if (v24)
      {
        v24(cf, v16);
      }
    }
  }

  v25 = v12[3];
  if (v25)
  {
    v25(cf, a2);
  }

  if (v14 == 749405696)
  {
    v26 = v15[20];
    if (v26)
    {
      v26(cf, a2);
    }
  }
}

uint64_t sub_1AF1C3F64(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF1C3FAC(void *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((sub_1AF16D234(a1) & 1) == 0)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE42C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return a1[6];
}

uint64_t sub_1AF1C4020(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return 0;
  }

  v5 = ClassWithTypeID[22];
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

uint64_t sub_1AF1C4094()
{
  sub_1AF16CB64();
  result = _CFRuntimeGetClassWithTypeID();
  qword_1ED737C10 = result + 136;
  return result;
}

double sub_1AF1C40BC@<D0>(uint64_t a1@<X8>)
{
  result = 7.29115681e-304;
  *a1 = xmmword_1AFE21D20;
  *(a1 + 13) = 4294902016;
  return result;
}

unint64_t sub_1AF1C40D8(unsigned __int8 *a1, int8x16_t a2)
{
  a2.i32[0] = *(a1 + 7);
  a2.i16[2] = *(a1 + 11);
  a2.i8[6] = a1[13];
  a2.i32[2] = *(a1 + 14);
  a2.i16[6] = *(a1 + 9);
  a2.i8[14] = a1[20];
  v2.i64[0] = 0xFFFFFFFFFFFFFFLL;
  v2.i64[1] = 0xFFFFFFFFFFFFFFLL;
  v3 = vandq_s8(a2, v2);
  v4.i64[0] = 255;
  v4.i64[1] = 255;
  v3.i64[0] = (a2.i64[0] >> 23);
  v3.i64[1] = v3.i64[1] >> 23;
  v5 = vshlq_u64(vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vshrq_n_u64(a2, 5uLL), vdupq_n_s64(0x7FFF8uLL)), vandq_s8(a2, v4)), vorrq_s8(vandq_s8(vshrq_n_u64(a2, 0xDuLL), vdupq_n_s64(0x7F80000uLL)), vandq_s8(vshrq_n_u64(a2, 0x12uLL), xmmword_1AFE21CF0))), vandq_s8(v3, xmmword_1AFE21D00)), xmmword_1AFE21D10);
  return a1[2] | (2 * a1[3]) | (4 * a1[4]) | (32 * a1[5]) | (a1[6] << 6) | *a1 | v5.i64[0] | v5.i64[1];
}

void sub_1AF1C41C8(_BYTE *a1)
{
  if (a1[37] == 1)
  {
    if (os_unfair_lock_trylock(&unk_1ED7398B0))
    {
      v2 = sub_1AF0D5194();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDE4A4(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    if (!CFSetContainsValue(qword_1ED739A90, a1))
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDE51C(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    CFSetRemoveValue(qword_1ED739A90, a1);
    sub_1AF1BE334(@"kCFXNotificationRasterizerStatesDidDie", a1, 0, 1u);
  }
}

CFStringRef sub_1AF1C42BC(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | ZRead:%d ZWrite:%d ZFunc:%d cull:%d fill:%d>", v3, a1, a1[18], a1[19], a1[20], a1[16], a1[17]);
}

uint64_t sub_1AF1C432C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739908 = result;
  return result;
}

uint64_t sub_1AF1C4354(uint64_t a1)
{
  if (qword_1ED73ABB8 != -1)
  {
    sub_1AFDDE594();
  }

  if ((*(a1 + 2) & 1) == 0)
  {
    *(a1 + 4) = 1;
  }

  if ((*(a1 + 5) & 1) == 0)
  {
    *(a1 + 10) = 0;
    *(a1 + 7) = 16776961;
    *(a1 + 6) = 0;
    goto LABEL_9;
  }

  if ((*(a1 + 6) & 1) == 0)
  {
LABEL_9:
    *(a1 + 17) = 0;
    *(a1 + 14) = 16776961;
  }

  os_unfair_lock_lock(&unk_1ED7398B0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF1C4554;
  v9[3] = &unk_1E7A79CA8;
  v9[4] = &v10;
  v9[5] = a1;
  sub_1AF28A5A0(qword_1ED739A90, v9);
  v2 = v11[3];
  if (v2)
  {
    CFRetain(v2);
  }

  else
  {
    if (qword_1ED739910 != -1)
    {
      sub_1AFDDE5A8();
    }

    v3 = sub_1AF0D160C(qword_1ED739908, 0x18uLL);
    v4 = v11;
    v11[3] = v3;
    v5 = *(a1 + 13);
    *(v3 + 16) = *a1;
    *(v3 + 29) = v5;
    v6 = v4[3];
    v6[37] = 1;
    CFSetSetValue(qword_1ED739A90, v6);
  }

  os_unfair_lock_unlock(&unk_1ED7398B0);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1AF1C44E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFMutableSetRef sub_1AF1C44FC()
{
  v0 = *(MEMORY[0x1E695E9F8] + 16);
  *&v2.version = *MEMORY[0x1E695E9F8];
  *&v2.release = v0;
  *&v2.equal = *(MEMORY[0x1E695E9F8] + 32);
  v2.retain = 0;
  v2.release = 0;
  result = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v2);
  qword_1ED739A90 = result;
  return result;
}

uint64_t sub_1AF1C4554(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 13);
  if (v3 == a2[2] && v4 == a2[3] && v5 == *(a2 + 29))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

__n128 sub_1AF1C458C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  *a2 = result;
  *(a2 + 13) = *(a1 + 29);
  return result;
}

uint64_t sub_1AF1C45EC()
{
  result = qword_1EB658628;
  if (!qword_1EB658628)
  {
    v1[0] = xmmword_1AFE21D20;
    *(v1 + 13) = 4294902016;
    result = sub_1AF1C4354(v1);
    qword_1EB658628 = result;
  }

  return result;
}

void sub_1AF1C4640(CFTypeRef cf)
{
  if (cf)
  {
    if (*(cf + 37) == 1)
    {
      os_unfair_lock_lock(&unk_1ED7398B0);
      CFRelease(cf);

      os_unfair_lock_unlock(&unk_1ED7398B0);
    }

    else
    {

      CFRelease(cf);
    }
  }
}

unint64_t sub_1AF1C46C8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_stencilCompareFunction(a1, a2, a3, a4);
  v7 = sub_1AF1F13F4(v6);
  Mask = objc_msgSend_readMask(a1, v8, v9, v10);
  v15 = objc_msgSend_writeMask(a1, v12, v13, v14);
  v19 = objc_msgSend_depthStencilPassOperation(a1, v16, v17, v18);
  v20 = sub_1AF1F14F0(v19);
  v24 = objc_msgSend_depthFailureOperation(a1, v21, v22, v23);
  v25 = sub_1AF1F14F0(v24);
  v29 = objc_msgSend_stencilFailureOperation(a1, v26, v27, v28);
  return (v25 << 40) | (sub_1AF1F14F0(v29) << 48) | (v20 << 32) | (a2 << 24) | (v15 << 16) | (Mask << 8) | v7;
}

void sub_1AF1C4780(void *a1)
{
  if (qword_1ED731620 == a1)
  {
    qword_1ED731620 = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"kCFXNotificationImageProxyWillDie", 0);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"kCFXNotificationImageWillDie", 0);
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

uint64_t sub_1AF1C4824()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654CF8 = result;
  return result;
}

uint64_t sub_1AF1C484C()
{
  if (qword_1EB654D00 != -1)
  {
    sub_1AFDDE5D0();
  }

  v0 = sub_1AF0D160C(qword_1EB654CF8, 0x20uLL);
  if (!v0)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE5E4(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  *(v0 + 16) = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E9D8];
  v11 = MEMORY[0x1E695E9E8];
  *(v0 + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v0 + 32) = CFDictionaryCreateMutable(v9, 0, 0, v11);
  *(v0 + 40) = CFDictionaryCreateMutable(v9, 0, v10, v11);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v0, sub_1AF1C4984, @"kCFXNotificationImageWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v13 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v13, v0, sub_1AF1C4984, @"kCFXNotificationImageProxyWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return v0;
}

uint64_t sub_1AF1C4990()
{
  if (qword_1ED731B48 != -1)
  {
    sub_1AFDDE65C();
  }

  return qword_1ED731620;
}

uint64_t sub_1AF1C49C8()
{
  result = sub_1AF1C484C();
  qword_1ED731620 = result;
  return result;
}

double sub_1AF1C49E8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF37113C(a1, a2, a3, a4);
  if (v5 != 0.0)
  {
    return v5;
  }

  v6 = VFXHasSpecialResourceBundle();
  if (!v6)
  {
    return v5;
  }

  v10 = VFXGetResourceBundle(v6, v7, v8, v9);
  v14 = objc_msgSend_bundlePath(v10, v11, v12, v13);
  v17 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, a1, v16);

  return sub_1AF37113C(v17, v18, v19, v20);
}

uint64_t sub_1AF1C4A5C(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE670(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDE6E8(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  os_unfair_lock_lock((a1 + 16));
  v56 = 0;
  v24 = sub_1AF1C4D84(a2, &v56);
  v55 = 0.0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(*(a1 + 24), v24);
  v29 = 0.0;
  if (Value)
  {
    v30 = objc_msgSend_copyWeakRef(Value, v26, v27, v28);
    if (v30)
    {
      v31 = v30;
      if (v56 == 1)
      {
        v32 = VFXHasSpecialResourceBundle();
        v29 = sub_1AF1C49E8(v24, v33, v34, v35);
        v55 = v29;
        if (v29 != 0.0)
        {
          v36 = CFDictionaryGetValue(*(a1 + 40), v24);
          if (v36)
          {
            CFNumberGetValue(v36, kCFNumberDoubleType, &valuePtr);
            v37 = valuePtr;
          }

          else
          {
            v37 = 0.0;
          }

          if (v37 == v29)
          {
            goto LABEL_26;
          }

LABEL_22:
          CFDictionaryRemoveValue(*(a1 + 40), v24);
          CFDictionaryRemoveValue(*(a1 + 24), v24);
          CFDictionaryRemoveValue(*(a1 + 32), v31);
          CFRelease(v31);
          v40 = 1;
          if (!a4)
          {
            goto LABEL_23;
          }

          goto LABEL_14;
        }

        if (v32)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      os_unfair_lock_unlock((a1 + 16));
      return v31;
    }

    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v38 = *(MEMORY[0x1E695E9E8] + 32);
    v39 = *(a1 + 32);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1AF1C4E6C;
    v49[3] = &unk_1E7A7B8E8;
    v49[5] = v38;
    v49[6] = v24;
    v49[4] = &v50;
    sub_1AF28A67C(v39, v49);
    CFDictionaryRemoveValue(*(a1 + 40), v24);
    CFDictionaryRemoveValue(*(a1 + 24), v24);
    CFDictionaryRemoveValue(*(a1 + 32), v51[3]);
    _Block_object_dispose(&v50, 8);
  }

  v40 = 0;
  if (!a4)
  {
LABEL_23:
    os_unfair_lock_unlock((a1 + 16));
    return 0;
  }

LABEL_14:
  if (a3)
  {
    v31 = (*(a4 + 16))(a4);
    v41 = objc_alloc_init(VFXWeakPointer);
    objc_msgSend_setWeakRef_(v41, v42, v31, v43);
    CFDictionarySetValue(*(a1 + 24), v24, v41);
    CFDictionarySetValue(*(a1 + 32), v31, v24);

    if (v56 == 1)
    {
      if ((v40 & 1) == 0)
      {
        v29 = sub_1AF1C49E8(v24, v44, v45, v46);
        v55 = v29;
      }

      if (v29 != 0.0)
      {
        v47 = CFNumberCreate(0, kCFNumberDoubleType, &v55);
        CFDictionarySetValue(*(a1 + 40), v24, v47);
        CFRelease(v47);
      }
    }

    goto LABEL_26;
  }

  os_unfair_lock_unlock((a1 + 16));
  return (*(a4 + 16))(a4);
}

void sub_1AF1C4D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF1C4D84(void *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFURLGetTypeID())
  {
    if (!objc_msgSend_query(a1, v5, v6, v7))
    {
      *a2 = 1;
      if (objc_msgSend_isFileURL(a1, v8, v9, v10))
      {

        return objc_msgSend_relativePath(a1, v11, v12, v13);
      }

      else
      {

        return objc_msgSend_path(a1, v11, v12, v13);
      }
    }

LABEL_11:
    *a2 = 0;
    return a1;
  }

  if (v4 != CFStringGetTypeID())
  {
    goto LABEL_11;
  }

  *a2 = 1;

  return objc_msgSend_stringByStandardizingPath(a1, v15, v16, v17);
}

uint64_t sub_1AF1C4E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 40))(a3, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return result;
}

void sub_1AF1C4EAC(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE670(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDE760(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  os_unfair_lock_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v21 = Value;
    CFDictionaryRemoveValue(*(a1 + 40), Value);
    CFDictionaryRemoveValue(*(a1 + 24), v21);
    CFDictionaryRemoveValue(*(a1 + 32), a2);
  }

  os_unfair_lock_unlock((a1 + 16));
}

const void *sub_1AF1C4FA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = *(a1 + 64);
  if (!result || (*a2 == *a3 ? (v8 = *(a2 + 8) == a3[1]) : (v8 = 0), v8 ? (v9 = *(a2 + 16) == a3[2]) : (v9 = 0), v9 ? (v10 = *(a2 + 24) == a3[3]) : (v10 = 0), !v10))
  {
    result = *(a1 + 264);
    if (*a2 != *(a1 + 272) || *(a2 + 8) != *(a1 + 280) || *(a2 + 16) != *(a1 + 288) || *(a2 + 24) != *(a1 + 296))
    {
      if (result)
      {
        CFRelease(result);
      }

      v14 = *(a2 + 16);
      *(a1 + 272) = *a2;
      *(a1 + 288) = v14;
      result = (*(a4 + 16))(a4);
      *(a1 + 264) = result;
    }
  }

  return result;
}

double sub_1AF1C504C(void *a1, void *a2)
{
  if (!a1[8])
  {
    v3 = a1[33];
    if (v3)
    {
      if (*a2 == a1[34] && a2[1] == a1[35] && a2[2] == a1[36] && a2[3] == a1[37])
      {
        a1[8] = CFRetain(v3);
        v3 = a1[33];
      }

      CFRelease(v3);
      a1[33] = 0;
      result = 0.0;
      *(a1 + 17) = 0u;
      *(a1 + 18) = 0u;
    }
  }

  return result;
}

void sub_1AF1C50BC(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  *md = 0u;
  v30 = 0u;
  sub_1AF1C5230(a1, &data);
  CC_SHA256(&data, 0x28u, md);
  sub_1AF1C504C(a1, md);
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 208);
    v4 = *(a1 + 216);
    v3 = *(a1 + 220);
    v5 = *(a1 + 240);
    v26 = *(a1 + 224);
    v27 = v5;
    v28 = *(a1 + 256);
    v6 = v4 * 0.5;
    v7 = v6 <= v3;
    v8 = v6;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    *&data = v2;
    *(&data + 1) = __PAIR64__(LODWORD(v9), LODWORD(v4));
    v10 = *(a1 + 240);
    v23 = *(a1 + 224);
    v24 = v10;
    v25 = *(a1 + 256);
    v11 = sub_1AF21DA64(&data);
    *&data = v2;
    *(&data + 1) = __PAIR64__(LODWORD(v9), LODWORD(v4));
    v23 = v26;
    v24 = v27;
    v25 = v28;
    v12 = sub_1AF22AD8C(v11, &data);
    if (v12)
    {
      v13 = v12;
      sub_1AF1B2C80(a1, v12);
      CFRelease(v13);
      if (!v11)
      {
        return;
      }

      goto LABEL_7;
    }

    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE7D8(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    sub_1AF1B2C80(a1, 0);
    if (v11)
    {
LABEL_7:
      CFRelease(v11);
    }
  }
}

void sub_1AF1C5230(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = sub_1AF1C5A20(a1);
  *(a2 + 4) = sub_1AF1C596C(a1);
  *(a2 + 8) = sub_1AF1C5804(a1);
  *(a2 + 16) = sub_1AF1C58B8(a1);
  v4 = *(a1 + 256);
  *(a2 + 24) = *(a1 + 240);
  *(a2 + 32) = v4;
}

void sub_1AF1C5294(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  memset(md, 0, sizeof(md));
  sub_1AF1C547C(a1, &data);
  CC_SHA256(&data, 0x70u, md);
  sub_1AF1C504C(a1, md);
  if (!*(a1 + 64))
  {
    sub_1AF1C54E8(a1);
    v2 = (a1 + 344);
    if (*(a1 + 337))
    {
      v3 = (a1 + 352);
    }

    else
    {
      v3 = (MEMORY[0x1E695EFF8] + 8);
    }

    if (!*(a1 + 337))
    {
      v2 = MEMORY[0x1E695EFF8];
    }

    v4 = *v2;
    v5 = *v3;
    v6 = *(a1 + 208);
    v8 = *(a1 + 216);
    v7 = *(a1 + 220);
    v9 = *(a1 + 240);
    v10 = *(a1 + 224);
    v31 = v10;
    v32 = v9;
    v33 = *(a1 + 256);
    v11 = v8 * 0.5;
    v12 = v11 <= v7;
    v13 = v11;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v7;
    }

    v15 = *(a1 + 304);
    *&data = v6;
    *(&data + 1) = __PAIR64__(LODWORD(v14), LODWORD(v8));
    v35 = v10;
    v36 = *(a1 + 240);
    *&v37 = *(a1 + 256);
    v16 = sub_1AF22B3D4(v15, &data);
    *&v29[0] = v6;
    *(&v29[0] + 1) = __PAIR64__(LODWORD(v14), LODWORD(v8));
    v29[1] = v31;
    v29[2] = v32;
    v30 = v33;
    v17 = *(a1 + 352);
    v36 = *(a1 + 336);
    v37 = v17;
    v38 = *(a1 + 368);
    v18 = *(a1 + 320);
    data = *(a1 + 304);
    v35 = v18;
    v19 = sub_1AF22AEF0(v16, v29, &data, v4, v5);
    if (v19)
    {
      v20 = v19;
      sub_1AF1B2C80(a1, v19);
      CFRelease(v20);
      if (!v16)
      {
        return;
      }

      goto LABEL_12;
    }

    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE7D8(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    sub_1AF1B2C80(a1, 0);
    if (v16)
    {
LABEL_12:
      CFRelease(v16);
    }
  }
}

float sub_1AF1C547C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 312);
  sub_1AF1C5230(a1, a2);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 40) = *v4;
  *(a2 + 56) = *(a1 + 328);
  v5 = v4[3];
  *(a2 + 72) = v4[2];
  *(a2 + 64) = *(a1 + 336);
  *(a2 + 88) = v5;
  result = *(a1 + 212);
  *(a2 + 104) = result;
  return result;
}

void sub_1AF1C54E8(uint64_t a1)
{
  if (*(a1 + 304))
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v7 = v4;
    if (*(a1 + 336) == 1)
    {
      if (*(a1 + 337) && (v8 = *(a1 + 328) - 1, v8 <= 3))
      {
        objc_msgSend_setAlignment_(v4, v5, qword_1AFE21D38[v8], v6);
      }

      else
      {
        objc_msgSend_setAlignment_(v4, v5, 4, v6);
      }
    }

    else
    {
      if (*(a1 + 337))
      {
        v9 = (*(a1 + 332) - 1);
        if (v9 >= 3)
        {
          v10 = 2;
        }

        else
        {
          v10 = v9 + 3;
        }
      }

      else
      {
        v10 = 2;
      }

      objc_msgSend_setLineBreakMode_(v4, v5, v10, v6);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = MEMORY[0x1E69DB648];
    if (isKindOfClass)
    {
      v15 = objc_msgSend_attribute_atIndex_effectiveRange_(*(a1 + 312), v12, *MEMORY[0x1E69DB648], 0, 0);
    }

    else
    {
      v16 = *(a1 + 320);
      if (v16)
      {
LABEL_21:
        v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v12, v16, v13, *v14, v7, *MEMORY[0x1E69DB688], 0);
        v18 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (*(a1 + 312))
        {
          v20 = objc_msgSend_initWithString_attributes_(v18, v19, *(a1 + 312), v17);
        }

        else
        {
          v20 = objc_msgSend_initWithString_attributes_(v18, v19, &stru_1F2575650, v17);
        }

        v3 = v20;
        goto LABEL_25;
      }

      v15 = objc_msgSend_fontWithName_size_(MEMORY[0x1E69DB878], v12, @"Helvetica", v13, 12.0);
    }

    v16 = v15;
    goto LABEL_21;
  }

  v3 = *(a1 + 312);
LABEL_25:
  v21 = CTFramesetterCreateWithAttributedString(v3);
  v22 = v21;
  if (*(a1 + 337) == 1)
  {
    v23 = *(a1 + 344);
    v24 = *(a1 + 352);
    width = *(a1 + 360);
    height = *(a1 + 368);
  }

  else
  {
    v32.width = 1.79769313e308;
    v30.location = 0;
    v30.length = 0;
    v32.height = 1.79769313e308;
    v27 = CTFramesetterSuggestFrameSizeWithConstraints(v21, v30, 0, v32, 0);
    width = v27.width;
    height = v27.height;
    v23 = 0;
    v24 = 0;
  }

  v28 = CGPathCreateWithRect(*&v23, 0);
  v31.location = 0;
  v31.length = 0;
  Frame = CTFramesetterCreateFrame(v22, v31, v28, 0);
  sub_1AF1C6068(a1, Frame);
  CFRelease(v22);
  CFRelease(Frame);

  CFRelease(v28);
}

uint64_t sub_1AF1C5750(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void sub_1AF1C5798(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 224) != a2)
  {
    *(a1 + 224) = a2;
    sub_1AF1B2C80(a1, 0);
  }
}

float sub_1AF1C5804(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 220);
}

void sub_1AF1C584C(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 220) != a2)
  {
    *(a1 + 220) = a2;
    sub_1AF1B2C80(a1, 0);
  }
}

float sub_1AF1C58B8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

void sub_1AF1C5900(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 228) != a2)
  {
    *(a1 + 228) = a2;
    sub_1AF1B2C80(a1, 0);
  }
}

float sub_1AF1C596C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void sub_1AF1C59B4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 216) != a2)
  {
    *(a1 + 216) = a2;
    sub_1AF1B2C80(a1, 0);
  }
}

uint64_t sub_1AF1C5A20(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

void sub_1AF1C5A68(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 208) != a2)
  {
    *(a1 + 208) = a2;
    sub_1AF1B2C80(a1, 0);
  }
}

uint64_t sub_1AF1C5ADC(uint64_t a1, unsigned __int8 *a2)
{
  sub_1AF1C5A68(a1, *a2);
  sub_1AF1C59B4(a1, *(a2 + 1));
  sub_1AF1C584C(a1, *(a2 + 2));
  sub_1AF1C5900(a1, *(a2 + 4));
  sub_1AF1C5B50(a1, *(a2 + 3));
  v4 = *(a2 + 4);

  return sub_1AF1C5BF8(a1, v4);
}

uint64_t sub_1AF1C5B50(uint64_t result, void *a2)
{
  v8 = *(result + 240);
  if (v8 != a2)
  {
    v24 = v4;
    v25 = v3;
    v26 = v2;
    v10 = result;

    *(v10 + 240) = a2;
    objc_msgSend_flatness(a2, v11, v12, v13);
    *&v14 = v14;
    *(v10 + 212) = LODWORD(v14);
    v15 = *(v10 + 232);
    if (v15 != objc_msgSend_CGPath(a2, v16, v17, v18))
    {
      v22 = *(v10 + 232);
      if (v22)
      {
        CFRelease(v22);
        *(v10 + 232) = 0;
      }

      v23 = objc_msgSend_CGPath(a2, v19, v20, v21, v5, v24, v25, v26, v6);
      if (v23)
      {
        v23 = CFRetain(v23);
      }

      *(v10 + 232) = v23;
    }

    return sub_1AF1B2C80(v10, 0);
  }

  return result;
}

uint64_t sub_1AF1C5BF8(uint64_t result, void *a2)
{
  v8 = *(result + 256);
  if (v8 != a2)
  {
    v20 = v4;
    v21 = v3;
    v22 = v2;
    v10 = result;

    *(v10 + 256) = a2;
    v11 = *(v10 + 248);
    if (v11 != objc_msgSend_CGPath(a2, v12, v13, v14))
    {
      v18 = *(v10 + 248);
      if (v18)
      {
        CFRelease(v18);
        *(v10 + 248) = 0;
      }

      v19 = objc_msgSend_CGPath(a2, v15, v16, v17, v5, v20, v21, v22, v6);
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      *(v10 + 248) = v19;
    }

    return sub_1AF1B2C80(v10, 0);
  }

  return result;
}

uint64_t sub_1AF1C5C98(uint64_t result, float a2)
{
  if (a2 <= 0.0)
  {
    a2 = 0.1;
  }

  if (*(result + 212) != a2)
  {
    *(result + 212) = a2;
    return sub_1AF1B2C80();
  }

  return result;
}

double sub_1AF1C5CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v8 = *(a2 + 32);
  sub_1AF1C5ADC(a1, v7);
  sub_1AF1C5DE8(a1, *(a2 + 40));
  sub_1AF1C5E4C(a1, *(a2 + 48));
  sub_1AF1C5EB0(a1, *(a2 + 56));
  sub_1AF1C5F04(a1, *(a2 + 60));
  sub_1AF1C5F58(a1, *(a2 + 64));
  v5 = *(a2 + 65);
  if (*(a1 + 337) != v5)
  {
    *(a1 + 337) = v5;
    sub_1AF1B2C80(a1, 0);
  }

  sub_1AF1C5FC8(a1, *(a2 + 72), *(a2 + 80), *(a2 + 88), *(a2 + 96));
  LODWORD(result) = *(a2 + 104);
  if (*&result <= 0.0)
  {
    *&result = 0.1;
  }

  if (*(a1 + 212) != *&result)
  {
    *(a1 + 212) = LODWORD(result);

    *&result = sub_1AF1B2C80(a1, 0).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AF1C5DE8(uint64_t result, void *a2)
{
  v3 = *(result + 312);
  if (v3 != a2)
  {
    v5 = result;

    *(v5 + 312) = a2;
    sub_1AF1C6068(v5, 0);

    return sub_1AF1B2C80(v5, 0);
  }

  return result;
}

uint64_t sub_1AF1C5E4C(uint64_t result, void *a2)
{
  v3 = *(result + 320);
  if (v3 != a2)
  {
    v5 = result;

    *(v5 + 320) = a2;
    sub_1AF1C6068(v5, 0);

    return sub_1AF1B2C80(v5, 0);
  }

  return result;
}

uint64_t sub_1AF1C5EB0(uint64_t result, int a2)
{
  if (*(result + 328) != a2)
  {
    v3 = result;
    *(result + 328) = a2;
    sub_1AF1C6068(result, 0);

    return sub_1AF1B2C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AF1C5F04(uint64_t result, int a2)
{
  if (*(result + 332) != a2)
  {
    v3 = result;
    *(result + 332) = a2;
    sub_1AF1C6068(result, 0);

    return sub_1AF1B2C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AF1C5F58(uint64_t result, int a2)
{
  if (*(result + 336) != a2)
  {
    v3 = result;
    *(result + 336) = a2;
    sub_1AF1C6068(result, 0);

    return sub_1AF1B2C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AF1C5FAC(uint64_t result, int a2)
{
  if (*(result + 337) != a2)
  {
    *(result + 337) = a2;
    return sub_1AF1B2C80();
  }

  return result;
}

uint64_t sub_1AF1C5FC8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  result = CGRectEqualToRect(*(a1 + 344), v12);
  if ((result & 1) == 0)
  {
    *(a1 + 344) = a2;
    *(a1 + 352) = a3;
    *(a1 + 360) = a4;
    *(a1 + 368) = a5;
    sub_1AF1C6068(a1, 0);

    return sub_1AF1B2C80(a1, 0);
  }

  return result;
}

CFTypeRef sub_1AF1C6068(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 304);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 304) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 304) = v5;

    return sub_1AF1B2C80(a1, 0);
  }

  return result;
}

uint64_t sub_1AF1C6100(uint64_t result, int a2)
{
  if (*(result + 338) != a2)
  {
    *(result + 338) = a2;
    return sub_1AF1B2C80();
  }

  return result;
}

uint64_t sub_1AF1C611C()
{
  if (qword_1ED73ABB0 != -1)
  {
    sub_1AFDDE8C8();
  }

  return qword_1ED73ABA8;
}

double sub_1AF1C6154()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ABA8 = v0;
  v1 = sub_1AF1B2A04();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"chamferRadius", 0xDCu, 1, 0);
  sub_1AF1DD02C(@"extrusionDepth", 0xD8u, 1, 0);
  sub_1AF1DD018();
  unk_1ED72E618 = xmmword_1F24E8388;
  xmmword_1ED72E600 = xmmword_1F24E8398;
  result = *&xmmword_1F24E83A8;
  unk_1ED72E628 = xmmword_1F24E83A8;
  unk_1ED72E638 = unk_1F24E83B8;
  qword_1ED72E648 = qword_1F24E83C8;
  qword_1ED72E658 = sub_1AF1C6C34;
  return result;
}

uint64_t sub_1AF1C621C()
{
  if (qword_1ED73AB80 != -1)
  {
    sub_1AFDDE8DC();
  }

  return qword_1ED73AB78;
}

double sub_1AF1C6254()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AB78 = v0;
  if (qword_1ED73ABB0 != -1)
  {
    sub_1AFDDE8C8();
  }

  sub_1AF1DCFAC(v0, qword_1ED73ABA8);
  sub_1AF1DD018();
  *&algn_1ED72E388[8] = xmmword_1F24E83D0;
  xmmword_1ED72E378 = xmmword_1F24E83E0;
  result = *&xmmword_1F24E83F0;
  *&algn_1ED72E388[24] = xmmword_1F24E83F0;
  *&algn_1ED72E388[40] = unk_1F24E8400;
  qword_1ED72E3C0 = qword_1F24E8410;
  qword_1ED72E3D0 = sub_1AF1C6D74;
  return result;
}

uint64_t sub_1AF1C638C(uint64_t a1, uint64_t a2)
{
  sub_1AF1B2C84(a1, a2);
  v4 = sub_1AF1C5A20(a1);
  sub_1AF1C5A68(a2, v4);
  v5 = *(a1 + 212);
  if (v5 <= 0.0)
  {
    v5 = 0.1;
  }

  if (*(a2 + 212) != v5)
  {
    *(a2 + 212) = v5;
    sub_1AF1B2C80(a2, 0);
  }

  v6 = sub_1AF1C596C(a1);
  sub_1AF1C59B4(a2, v6);
  v7 = sub_1AF1C5804(a1);
  sub_1AF1C584C(a2, v7);
  v8 = sub_1AF1C58B8(a1);
  sub_1AF1C5900(a2, v8);
  sub_1AF1C5B50(a2, *(a1 + 240));
  v9 = *(a1 + 256);

  return sub_1AF1C5BF8(a2, v9);
}

void sub_1AF1C644C(uint64_t a1)
{
  sub_1AF1C5B50(a1, 0);
  sub_1AF1C5BF8(a1, 0);
  v2 = *(a1 + 264);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 264) = 0;
  }
}

uint64_t sub_1AF1C6534(uint64_t a1, uint64_t a2)
{
  sub_1AF1C638C(a1, a2);
  sub_1AF1C6068(a2, *(a1 + 304));
  sub_1AF1C5DE8(a2, *(a1 + 312));
  sub_1AF1C5E4C(a2, *(a1 + 320));
  sub_1AF1C5EB0(a2, *(a1 + 328));
  sub_1AF1C5F04(a2, *(a1 + 332));
  sub_1AF1C5F58(a2, *(a1 + 336));
  v4 = *(a1 + 337);
  if (*(a2 + 337) != v4)
  {
    *(a2 + 337) = v4;
    sub_1AF1B2C80(a2, 0);
  }

  v5 = *(a1 + 344);
  v6 = *(a1 + 352);
  v7 = *(a1 + 360);
  v8 = *(a1 + 368);

  return sub_1AF1C5FC8(a2, v5, v6, v7, v8);
}

void sub_1AF1C65E0(uint64_t a1)
{
  sub_1AF1C6068(a1, 0);
  sub_1AF1C5DE8(a1, 0);
  sub_1AF1C5E4C(a1, 0);

  sub_1AF1C644C(a1);
}

const void *sub_1AF1C6634(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(md, 0, sizeof(md));
  v14 = 0u;
  *v13 = 0u;
  sub_1AF1C5230(a1, data);
  CC_SHA256(data, 0x28u, md);
  v4 = a2[1];
  data[0] = *a2;
  data[1] = v4;
  v12 = *(a2 + 4);
  CC_SHA256(data, 0x28u, v13);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF1C6744;
  v7[3] = &unk_1E7A7B908;
  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  v10 = *(a2 + 4);
  return sub_1AF1C4FA4(a1, v13, md, v7);
}

const void *sub_1AF1C6744(uint64_t a1)
{
  v2 = [VFXShape __createCFObject]_0();
  v3 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v3;
  v7 = *(a1 + 64);
  sub_1AF1C5ADC(v2, v6);
  v4 = sub_1AF1B2C1C(v2);
  CFRetain(v4);
  CFRelease(v2);
  return v4;
}

uint64_t sub_1AF1C67A8(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v6;
  v10 = *(a4 + 32);
  v7 = sub_1AF1C6634(a1, v9);

  return sub_1AF1A3234(v7, a2, a3);
}

uint64_t sub_1AF1C6804(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v4;
  v8 = *(a3 + 32);
  v5 = sub_1AF1C6634(a1, v7);

  return sub_1AF1A33B8(v5, a2);
}

const void *sub_1AF1C6858(uint64_t a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *md = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  sub_1AF1C547C(a1, data);
  CC_SHA256(data, 0x70u, md);
  v4 = a2[5];
  data[4] = a2[4];
  data[5] = v4;
  data[6] = a2[6];
  v5 = a2[1];
  data[0] = *a2;
  data[1] = v5;
  v6 = a2[3];
  data[2] = a2[2];
  data[3] = v6;
  CC_SHA256(data, 0x70u, v20);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF1C6984;
  v11[3] = &unk_1E7A7B928;
  v7 = a2[5];
  v16 = a2[4];
  v17 = v7;
  v18 = a2[6];
  v8 = a2[1];
  v12 = *a2;
  v13 = v8;
  v9 = a2[3];
  v14 = a2[2];
  v15 = v9;
  return sub_1AF1C4FA4(a1, v20, md, v11);
}

const void *sub_1AF1C6984(_OWORD *a1)
{
  v2 = [VFXText __createCFObject]_0();
  v3 = a1[7];
  v8[4] = a1[6];
  v8[5] = v3;
  v8[6] = a1[8];
  v4 = a1[3];
  v8[0] = a1[2];
  v8[1] = v4;
  v5 = a1[5];
  v8[2] = a1[4];
  v8[3] = v5;
  sub_1AF1C5CEC(v2, v8);
  v6 = sub_1AF1B2C1C(v2);
  CFRetain(v6);
  CFRelease(v2);
  return v6;
}

uint64_t sub_1AF1C69F8(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v6 = a4[5];
  v11[4] = a4[4];
  v11[5] = v6;
  v11[6] = a4[6];
  v7 = a4[1];
  v11[0] = *a4;
  v11[1] = v7;
  v8 = a4[3];
  v11[2] = a4[2];
  v11[3] = v8;
  v9 = sub_1AF1C6858(a1, v11);

  return sub_1AF1A3234(v9, a2, a3);
}

uint64_t sub_1AF1C6A64(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a3[5];
  v9[4] = a3[4];
  v9[5] = v4;
  v9[6] = a3[6];
  v5 = a3[1];
  v9[0] = *a3;
  v9[1] = v5;
  v6 = a3[3];
  v9[2] = a3[2];
  v9[3] = v6;
  v7 = sub_1AF1C6858(a1, v9);

  return sub_1AF1A33B8(v7, a2);
}

id sub_1AF1C6ACC(void *a1)
{
  sub_1AF1C644C(a1);

  return sub_1AF1B1D5C(a1);
}

id sub_1AF1C6B10(void *a1)
{
  sub_1AF1C65E0(a1);

  return sub_1AF1B1D5C(a1);
}

const void *sub_1AF1C6B50(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = sub_1AF1B2C1C(a1);
  if (result)
  {

    return sub_1AF1A3234(result, a3, a4);
  }

  return result;
}

const void *sub_1AF1C6BA0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_1AF1B2C1C(a1);
  if (result)
  {

    return sub_1AF1A33B8(result, a3);
  }

  return result;
}

uint64_t sub_1AF1C6BE8(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  return sub_1AF1B2C80(a1, 0);
}

uint64_t sub_1AF1C6C34(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAF5C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = [VFXShape __createCFObject]_0();
  sub_1AF1C638C(a1, v10);
  return v10;
}

const void *sub_1AF1C6C90(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = sub_1AF1B2C1C(a1);
  if (result)
  {

    return sub_1AF1A3234(result, a3, a4);
  }

  return result;
}

const void *sub_1AF1C6CE0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_1AF1B2C1C(a1);
  if (result)
  {

    return sub_1AF1A33B8(result, a3);
  }

  return result;
}

uint64_t sub_1AF1C6D28(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  return sub_1AF1B2C80(a1, 0);
}

uint64_t sub_1AF1C6D74(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAF5C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = [VFXText __createCFObject]_0();
  sub_1AF1C6534(a1, v10);
  return v10;
}

void sub_1AF1C6DD0(__CFString *a1, const __CFString *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  CFStringAppend(a1, a2);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a3.n128_f32[0], a3.n128_f32[1], a3.n128_f32[2], a3.n128_f32[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a4.n128_f32[0], a4.n128_f32[1], a4.n128_f32[2], a4.n128_f32[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a5.n128_f32[0], a5.n128_f32[1], a5.n128_f32[2], a5.n128_f32[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a6.n128_f32[0], a6.n128_f32[1], a6.n128_f32[2], a6.n128_f32[3]);
}

uint64_t sub_1AF1C6EF0()
{
  if (qword_1ED73ABA0 != -1)
  {
    sub_1AFDDE8F0();
  }

  return qword_1ED73AB98;
}

double sub_1AF1C6F28()
{
  qword_1ED73AB98 = _CFRuntimeRegisterClass();
  qword_1ED72E538 = sub_1AF1C8060;
  result = *&xmmword_1F24E8438;
  unk_1ED72E550 = xmmword_1F24E8438;
  unk_1ED72E560 = unk_1F24E8448;
  qword_1ED72E570 = qword_1F24E8458;
  unk_1ED72E578 = sub_1AF1C8A20;
  return result;
}

double sub_1AF1C6F94()
{
  if (qword_1ED73ABA0 != -1)
  {
    sub_1AFDDE8F0();
  }

  v0 = sub_1AF0D160C(qword_1ED73AB98, 0xC0uLL);
  v0[6] = xmmword_1AFE20150;
  v0[7] = xmmword_1AFE20160;
  result = 0.0;
  v0[8] = xmmword_1AFE20180;
  v0[9] = xmmword_1AFE201A0;
  return result;
}

uint64_t sub_1AF1C6FF8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1AF1C6F94();
  v9 = v8;
  if (a4)
  {
    v10 = sub_1AF16CBEC(a4);
    sub_1AF16CC34(v9, v10);
  }

  *(v9 + 64) = a2;
  *(v9 + 72) = a1;
  v11 = a2 << 6;
  *(v9 + 80) = malloc_type_malloc(v11, 0x1000040FA0F61DDuLL);
  *(v9 + 88) = malloc_type_malloc(v11, 0x1000040FA0F61DDuLL);
  if (*(v9 + 64) == 1)
  {
    *(v9 + 68) = 0;
    *(v9 + 168) = 0;
    *(v9 + 176) = 0;
    *(v9 + 160) = 0;
  }

  else
  {
    v12 = 4 * a1;
    if (a3)
    {
      *(v9 + 68) = a3;
      *(v9 + 160) = malloc_type_malloc(v12 + 4, 0x100004052888210uLL);
      *(v9 + 168) = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
      *(v9 + 176) = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    }

    else
    {
      *(v9 + 68) = 0;
      *(v9 + 160) = malloc_type_malloc(v12 + 4, 0x100004052888210uLL);
      *(v9 + 168) = malloc_type_malloc(0, 0x1000040BDFB0063uLL);
      *(v9 + 176) = 0;
    }
  }

  return v9;
}

uint64_t sub_1AF1C7134(uint64_t a1, int a2)
{
  v4 = sub_1AF1A4CE8(a1, 1);
  v5 = sub_1AF1AE6EC(v4);
  v6 = sub_1AF1A4604(a1, 5, 0, 1);
  if (!v6)
  {
    return 0;
  }

  v48 = 0u;
  v49 = 0u;
  sub_1AF1AE1A8(v6, &v48);
  sub_1AF1C6F94();
  v8 = v7;
  v9 = sub_1AF1A4604(a1, 6, 0, 1);
  v10 = v9;
  if (v9)
  {
    v46 = 0u;
    v47 = 0u;
    sub_1AF1AE1A8(v9, &v46);
    v11 = BYTE7(v47);
    if (BYTE7(v47) == 1 || BYTE7(v47) == 20)
    {
      if (v49)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v16 = (v46 + v12);
          if (BYTE7(v47) == 1)
          {
            if (BYTE8(v47))
            {
              v17 = 0;
              v18 = BYTE8(v47);
              do
              {
                v19 = *v16++;
                if (v19 > 0.0)
                {
                  ++v17;
                }

                --v18;
              }

              while (v18);
              goto LABEL_21;
            }
          }

          else if (BYTE8(v47))
          {
            v17 = 0;
            v20 = BYTE8(v47);
            do
            {
              v21 = *v16;
              v16 = (v16 + 1);
              if (v21)
              {
                ++v17;
              }

              --v20;
            }

            while (v20);
            goto LABEL_21;
          }

          v17 = 0;
LABEL_21:
          if (v15 <= v17)
          {
            v15 = v17;
          }

          v14 += v17;
          ++v13;
          v12 += BYTE6(v47);
          if (v13 == v49)
          {
            goto LABEL_30;
          }
        }
      }

      LOBYTE(v15) = 0;
      v14 = 0;
LABEL_30:
      *(v8 + 184) = v15;
    }

    else
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDE904(v22);
      }

      CFRelease(v8);
      v14 = 0;
    }

    if (v11 == 1 || v11 == 20)
    {
      goto LABEL_33;
    }

    return 0;
  }

  *(v8 + 184) = 1;
  v14 = v5;
LABEL_33:
  *(v8 + 160) = malloc_type_malloc(4 * v5 + 4, 0x100004052888210uLL);
  *(v8 + 64) = a2;
  *(v8 + 68) = v14;
  *(v8 + 72) = v5;
  v23 = a2 << 6;
  *(v8 + 80) = malloc_type_malloc(v23, 0x1000040FA0F61DDuLL);
  *(v8 + 88) = malloc_type_malloc(v23, 0x1000040FA0F61DDuLL);
  *(v8 + 168) = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
  v24 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  *(v8 + 176) = v24;
  if (v10)
  {
    v46 = 0u;
    v47 = 0u;
    sub_1AF1AE1A8(v10, &v46);
    v26 = *(v8 + 160);
    if (v5 < 1)
    {
      LODWORD(v27) = 0;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = v48;
      v30 = BYTE6(v49);
      v31 = BYTE7(v47);
      v32 = v46;
      v33 = BYTE6(v47);
      v34 = BYTE8(v47);
      do
      {
        *(v26 + 4 * v28) = v27;
        if (v31 == 1)
        {
          if (v34)
          {
            for (i = 0; i != v34; ++i)
            {
              LODWORD(v25) = *&v32[4 * i];
              if (*&v25 > 0.0)
              {
                *(*(v8 + 168) + 2 * v27) = v29[i];
                *(*(v8 + 176) + 4 * v27++) = LODWORD(v25);
              }
            }
          }
        }

        else if (v34)
        {
          v36 = v34;
          v37 = v29;
          v38 = v32;
          do
          {
            if (*v38)
            {
              *(*(v8 + 168) + 2 * v27) = *v37;
              LOBYTE(v25) = *v38;
              v25 = *&v25 / 255.0;
              *&v25 = v25;
              *(*(v8 + 176) + 4 * v27++) = LODWORD(v25);
            }

            ++v38;
            ++v37;
            --v36;
          }

          while (v36);
        }

        ++v28;
        v32 += v33;
        v29 += v30;
      }

      while (v28 != v5);
    }

    *(v26 + 4 * v5) = v27;
  }

  else
  {
    v39 = *(v8 + 160);
    if (v5 < 1)
    {
      v44 = 0;
    }

    else
    {
      v40 = 0;
      v41 = v48;
      v42 = BYTE6(v49);
      v43 = *(v8 + 168);
      do
      {
        *(v39 + 4 * v40) = v40;
        *(v43 + 2 * v40) = *v41;
        v24[v40] = 1065353216;
        v41 += v42;
        ++v40;
      }

      while (v5 != v40);
      v44 = v5;
    }

    *(v39 + 4 * v5) = v44;
  }

  return v8;
}

uint64_t sub_1AF1C74F0(uint64_t result)
{
  if (*(result + 88) && *(result + 64) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = 0;
      v3 = *(result + 88);
      v4 = (*(result + 80) + (v1 << 6));
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = *(result + 112);
      v10 = *(result + 128);
      v11 = *(result + 144);
      v16[0] = *(result + 96);
      v16[1] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        *(&v17 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v16[v2])), v6, *&v16[v2], 1), v7, v16[v2], 2), v8, v16[v2], 3);
        ++v2;
      }

      while (v2 != 4);
      v12 = (v3 + (v1 << 6));
      v13 = v18;
      v14 = v19;
      v15 = v20;
      *v12 = v17;
      v12[1] = v13;
      v12[2] = v14;
      v12[3] = v15;
      ++v1;
    }

    while (v1 < *(result + 64));
  }

  return result;
}

uint64_t sub_1AF1C759C(uint64_t a1, void *__src)
{
  if (!*(a1 + 80))
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE948(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  memcpy(*(a1 + 80), __src, *(a1 + 64) << 6);
  return sub_1AF1C74F0(a1);
}

void sub_1AF1C760C(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 68);
  if (v1)
  {
    v3 = *(a1 + 72);
    if (v3 != v1)
    {
      v4 = *(a1 + 160);
      v5 = *(a1 + 168);
      v6 = *(a1 + 176);
      v30 = malloc_type_calloc(2uLL, v1, 0xF73A1695uLL);
      v31 = malloc_type_calloc(4uLL, *(a1 + 68), 0xFEA01EAEuLL);
      v26[1] = v26;
      v27 = a1;
      v7 = *v4;
      MEMORY[0x1EEE9AC00](v31, v8);
      v10 = v26 - v9;
      if (v3 < 1)
      {
        v12 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v28 = v4;
        v29 = v3;
        do
        {
          v13 = v4[++v11];
          v14 = (v13 - v7);
          if (v13 != v7)
          {
            v32 = (v13 - v7);
            v33 = v13;
            v15 = 0;
            do
            {
              v16 = 0;
              if (v15)
              {
                while (*(v6 + 4 * v7 + 4 * v15) <= *(v6 + 4 * (*&v10[4 * v16] + v7)))
                {
                  if (v15 == ++v16)
                  {
                    v16 = v15;
                    goto LABEL_14;
                  }
                }
              }

              if (v15 != v16)
              {
                memmove(&v10[4 * v16 + 4], &v10[4 * v16], 4 * (v15 - v16));
              }

LABEL_14:
              *&v10[4 * v16] = v15++;
            }

            while (v15 != v14);
            v17 = 0;
            v18 = v32;
            v19 = &v31[4 * v12];
            v3 = v29;
            v20 = &v30[2 * v12];
            v4 = v28;
            v13 = v33;
            do
            {
              v21 = *&v10[4 * v17] + v7;
              v22 = *(v6 + 4 * v21);
              if (v22 <= 0.00000011921)
              {
                break;
              }

              v23 = *(v5 + 2 * v21);
              *v19++ = v22;
              *v20 = v23;
              v20 += 2;
              ++v12;
              ++v17;
            }

            while (v17 < v18);
          }

          v4[v11] = v12;
          v7 = v13;
        }

        while (v11 != v3);
      }

      v24 = v27;
      if (v12 >= *(v27 + 68))
      {
        free(v30);
        free(v31);
      }

      else
      {
        free(*(v27 + 168));
        free(*(v24 + 176));
        if (v12)
        {
          *(v24 + 168) = malloc_type_realloc(v30, 2 * v12, 0x1000040BDFB0063uLL);
          v25 = malloc_type_realloc(v31, 4 * v12, 0x100004052888210uLL);
        }

        else
        {
          free(v30);
          free(v31);
          v25 = 0;
          *(v24 + 168) = 0;
        }

        *(v24 + 176) = v25;
        *(v24 + 68) = v12;
      }
    }
  }
}

void *sub_1AF1C78C4(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[20];
  }

  if (a3)
  {
    *a3 = result[21];
  }

  if (a4)
  {
    *a4 = result[22];
  }

  return result;
}

uint64_t sub_1AF1C78EC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 68);
}

uint64_t sub_1AF1C7934(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *(result + 96) = a2;
  *(result + 112) = a3;
  *(result + 128) = a4;
  *(result + 144) = a5;
  return sub_1AF1C74F0(result);
}

void sub_1AF1C7948(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(a1 + 200))
  {
    v10 = *(a1 + 72);
    v11 = sub_1AF1B6A14(0, 5, v10, 4, 15);
    sub_1AF1ADBE0(v11);
    v12 = 0;
    if (*(a1 + 184) >= 2u)
    {
      v12 = sub_1AF1B6A14(0, 6, v10, 4, 20);
      sub_1AF1ADBE0(v12);
    }

    v17 = 0u;
    v18 = 0u;
    sub_1AF1AE1A8(v11, &v17);
    v15 = 0u;
    v16 = 0u;
    if (v12)
    {
      sub_1AF1AE1A8(v12, &v15);
    }

    v14[0] = v17;
    v14[1] = v18;
    v13[0] = v15;
    v13[1] = v16;
    sub_1AF1C7A48(a1, v14, v13);
    *(a1 + 192) = v12;
    *(a1 + 200) = v11;
  }
}

void sub_1AF1C7A48(uint64_t a1, void **a2, uint64_t *a3)
{
  v4 = a2;
  v69 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 72);
  memset(*a2, 255, 4 * (v5 & 0x3FFFFFFF));
  if (*a3)
  {
    bzero(*a3, v5 * *(a3 + 22));
  }

  if (*(v4 + 4) != v5 || *a3 && *(a3 + 4) != v5)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEA38(v6);
    }
  }

  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v67[0] = 0;
  v67[1] = 0;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v53 = v5;
    v49 = v4;
    v50 = a3;
    v54 = v7;
    while (1)
    {
      v58 = v10;
      v13 = *(v7 + 4 * v11);
      if ((v13 & 0x80000000) != 0 || ((v14 = *(v7 + 4 * (v11 + 1)), v15 = *(a1 + 68), v13 <= v15) ? (v16 = v14 <= v15) : (v16 = 0), !v16))
      {
        if ((byte_1EB658630 & 1) == 0)
        {
          byte_1EB658630 = 1;
          v48 = sub_1AF0D5194();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDEAD0(v48);
          }
        }

        return;
      }

      v57 = v11 + 1;
      v17 = *v4;
      v18 = v11 * *(v4 + 22);
      if (v13 >= v14)
      {
        break;
      }

      v19 = 0;
      v20 = &v17[v18];
      v51 = v14 - v13;
      v52 = v11;
      v21 = 0.0;
      v56 = v11 * *(v4 + 22);
      do
      {
        v22 = *(v8 + 2 * v13);
        if (v22 <= 255)
        {
          v23 = *(v9 + 4 * v13);
          if (v23 > 0.0039216)
          {
            if (v19 < 4)
            {
              v20[v19] = v22;
              v68[v19] = v23;
              v21 = v21 + v23;
              ++v19;
            }

            else
            {
              if ((v12 & 1) == 0)
              {
                v24 = v17;
                v25 = v20;
                v26 = sub_1AF0D5194();
                v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
                v20 = v25;
                v17 = v24;
                v18 = v56;
                if (v27)
                {
                  *buf = 134218752;
                  v60 = v51;
                  v61 = 1024;
                  v62 = 4;
                  v63 = 1024;
                  v64 = v52;
                  v65 = 1024;
                  v66 = 4;
                  _os_log_impl(&dword_1AF0CE000, v26, OS_LOG_TYPE_INFO, "Info: Too many influencing joints (%ld > %d) on the vertex #%u, will cap to %d and renormalize", buf, 0x1Eu);
                  v20 = v25;
                  v17 = v24;
                  v18 = v56;
                }
              }

              v28 = 0;
              v29 = v68[0];
              for (i = 1; i != 4; ++i)
              {
                if (v29 > v68[i])
                {
                  v28 = i;
                  v29 = v68[i];
                }
              }

              if (v23 > v29)
              {
                v21 = v23 + (v21 - v29);
                v68[v28] = v23;
                v20[v28] = v22;
              }

              v12 = 1;
            }
          }
        }

        ++v13;
      }

      while (v13 != v14);
      if (v21 > 0.0 && v21 != 1.0 && v19 >= 1)
      {
        v33 = v68;
        v34 = v19;
        do
        {
          *v33 = *v33 / v21;
          ++v33;
          --v34;
        }

        while (v34);
      }

      v4 = v49;
      v35 = v58;
      if (v19 >= 1)
      {
        v36 = *v50;
        if (!*v50)
        {
          goto LABEL_60;
        }

        v37 = 0;
        v38 = 0;
        v39 = v58 * *(v50 + 22);
        do
        {
          v40 = rintf(v68[v37] * 255.0);
          if (v40 >= 255)
          {
            v40 = 255;
          }

          v41 = v40 & ~(v40 >> 31);
          *(v36 + v39 + v37) = v41;
          v38 += v41;
          ++v37;
        }

        while (v19 != v37);
        if (v38 == 255)
        {
          goto LABEL_60;
        }

        v42 = (v36 + v39);
        while (1)
        {
          v43 = v19;
          v44 = v42;
          while (1)
          {
            v45 = *v44;
            if (v38 > 254)
            {
              break;
            }

            if (v45 != 255)
            {
              v46 = 1;
              v47 = 1;
              goto LABEL_58;
            }

LABEL_55:
            ++v44;
            if (!--v43)
            {
              goto LABEL_59;
            }
          }

          if (!*v44)
          {
            goto LABEL_55;
          }

          v47 = -1;
          v46 = -1;
LABEL_58:
          *v44 = v45 + v46;
          v38 += v47;
LABEL_59:
          if (v38 == 255)
          {
LABEL_60:
            ++*(v67 + v19 - 1);
            break;
          }
        }
      }

      if (v19 <= 3)
      {
        goto LABEL_64;
      }

LABEL_65:
      v10 = v35 + 1;
      v11 = v57;
      v7 = v54;
      if (v57 == v53)
      {
        return;
      }
    }

    v19 = 0;
    v35 = v58;
LABEL_64:
    bzero(&v17[v19 + v18], 4 - v19);
    bzero(&v68[v19], 16 - 4 * v19);
    goto LABEL_65;
  }
}

id sub_1AF1C7EC0(void *a1)
{
  sub_1AF1BE334(@"kCFXNotificationSkinWillDie", a1, 0, 1u);
  v2 = a1[10];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[20];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[21];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[25];
  if (v7)
  {
    CFRelease(v7);
    a1[25] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    CFRelease(v8);
    a1[24] = 0;
  }

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1C7F70(__n128 *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = sub_1AF16CBEC(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | name:%@ joint:%d weight:%d vertexCount:%d\n", v3, a1, v4, a1[4].n128_i16[0], a1[4].n128_u32[1], a1[4].n128_u64[1]);
  CFStringAppendFormat(Mutable, 0, @"  maxInf:%d\n", a1[11].n128_u8[8]);
  sub_1AF1C6DD0(Mutable, @"defaultShapeMatrix\n", a1[6], a1[7], a1[8], a1[9]);
  v5 = a1[5].n128_u64[0];
  if (v5)
  {
    sub_1AF1C6DD0(Mutable, @"inverseBindMatrix", *v5, v5[1], v5[2], v5[3]);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1C8060(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 13;
  v56 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v4, @"name", @"jointsCount");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 2;
  v56 = a1 + 68;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v8, @"name", @"influenceCount");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 2;
  v56 = a1 + 72;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v12, @"name", @"vertexCount");
  v16 = Mutable;
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  if (*(a1 + 80))
  {
    v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v57 = 0;
    valuePtr = 10;
    v56 = *(a1 + 80);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
    v20 = CFNumberCreate(0, kCFNumberLongType, &v56);
    CFDictionarySetValue(v17, @"name", @"inverseBindMatrices");
    CFDictionarySetValue(v17, @"type", v18);
    CFDictionarySetValue(v17, @"address", v20);
    CFDictionarySetValue(v17, @"semantic", v19);
    CFArrayAppendValue(v16, v17);
    CFRelease(v19);
    CFRelease(v17);
    CFRelease(v20);
    CFRelease(v18);
  }

  v21 = MEMORY[0x1E695E9E8];
  v54 = a1;
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 10;
  v56 = a1 + 96;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v22, @"name", @"defaultShapeMatrix");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(v16, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v21);
  v57 = 0;
  valuePtr = 13;
  v56 = a1 + 184;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v26, @"name", @"maxInfluencesPerVertex");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  theArray = v16;
  CFArrayAppendValue(v16, v26);
  CFRelease(v28);
  CFRelease(v26);
  v30 = v29;
  v31 = a1;
  CFRelease(v30);
  CFRelease(v27);
  if (*(a1 + 160) && *(a1 + 72) >= 1)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = CFStringCreateWithFormat(0, 0, @"influenceOffsets[%d]", v33);
      v35 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v57 = 0;
      valuePtr = 2;
      v56 = *(a1 + 160) + v32;
      v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      v38 = CFNumberCreate(0, kCFNumberLongType, &v56);
      CFDictionarySetValue(v35, @"name", v34);
      CFDictionarySetValue(v35, @"type", v36);
      CFDictionarySetValue(v35, @"address", v38);
      CFDictionarySetValue(v35, @"semantic", v37);
      CFArrayAppendValue(theArray, v35);
      CFRelease(v37);
      CFRelease(v35);
      CFRelease(v38);
      CFRelease(v36);
      CFRelease(v34);
      ++v33;
      v32 += 4;
    }

    while (v33 < *(a1 + 72));
  }

  if (*(a1 + 176) && *(a1 + 168) && *(a1 + 68) >= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = CFStringCreateWithFormat(0, 0, @"jointWeights[%d]", v41);
      v43 = MEMORY[0x1E695E9D8];
      v44 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v57 = 0;
      valuePtr = 1;
      v56 = *(v31 + 176) + v39;
      v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v46 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      v47 = CFNumberCreate(0, kCFNumberLongType, &v56);
      CFDictionarySetValue(v44, @"name", v42);
      CFDictionarySetValue(v44, @"type", v45);
      CFDictionarySetValue(v44, @"address", v47);
      CFDictionarySetValue(v44, @"semantic", v46);
      CFArrayAppendValue(theArray, v44);
      CFRelease(v46);
      CFRelease(v44);
      CFRelease(v47);
      CFRelease(v45);
      CFRelease(v42);
      v48 = CFStringCreateWithFormat(0, 0, @"jointIndices[%d]", v41);
      v49 = CFDictionaryCreateMutable(0, 4, v43, MEMORY[0x1E695E9E8]);
      v57 = 0;
      valuePtr = 13;
      v56 = *(v54 + 168) + v40;
      v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v51 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      v52 = CFNumberCreate(0, kCFNumberLongType, &v56);
      CFDictionarySetValue(v49, @"name", v48);
      CFDictionarySetValue(v49, @"type", v50);
      CFDictionarySetValue(v49, @"address", v52);
      CFDictionarySetValue(v49, @"semantic", v51);
      v31 = v54;
      CFArrayAppendValue(theArray, v49);
      CFRelease(v51);
      CFRelease(v49);
      CFRelease(v52);
      CFRelease(v50);
      CFRelease(v48);
      ++v41;
      v40 += 2;
      v39 += 4;
    }

    while (v41 < *(v54 + 68));
  }

  return theArray;
}

uint64_t sub_1AF1C8A20(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1C8A58(uint64_t result)
{
  if (*(result + 104))
  {
    v1 = result;
    free(*(result + 96));
    *(v1 + 96) = malloc_type_malloc(4 * *(v1 + 104), 0x100004052888210uLL);
    result = sub_1AF1C3FAC(v1);
    if (*(v1 + 104) >= 1)
    {
      v2 = result;
      v3 = 0;
      do
      {
        result = CFArrayGetValueAtIndex(*(v1 + 88), v3);
        if (result && (v4 = result, result = sub_1AF1C3FAC(result), result == v2))
        {
          v5 = *(v4 + 88);
        }

        else
        {
          v5 = -1;
        }

        v6 = *(v1 + 104);
        *(*(v1 + 96) + 4 * v3++) = v5;
      }

      while (v3 < v6);
    }
  }

  return result;
}

uint64_t sub_1AF1C8B10()
{
  if (qword_1ED73AB90 != -1)
  {
    sub_1AFDDEB14();
  }

  return qword_1ED73AB88;
}

double sub_1AF1C8B48()
{
  qword_1ED73AB88 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E8480;
  unk_1ED72E478 = xmmword_1F24E8480;
  qword_1ED72E460 = sub_1AF1CA6E0;
  unk_1ED72E488 = *&off_1F24E8490;
  qword_1ED72E498 = qword_1F24E84A0;
  unk_1ED72E4A0 = sub_1AF1CAD7C;
  return result;
}

double sub_1AF1C8BB4()
{
  if (qword_1ED73AB90 != -1)
  {
    sub_1AFDDEB14();
  }

  v0 = sub_1AF0D160C(qword_1ED73AB88, 0xB0uLL);
  *(v0 + 176) = 1;
  result = 0.0;
  *(v0 + 144) = xmmword_1AFE201A0;
  *(v0 + 160) = xmmword_1AFE20B70;
  return result;
}

uint64_t sub_1AF1C8C0C(void *a1)
{
  sub_1AF1C8BB4();
  v3 = v2;
  sub_1AF1C8C40(v2, a1);
  return v3;
}

double sub_1AF1C8C40(uint64_t a1, void *cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (v3)
    {
      sub_1AF1C3A90(v3, *(a1 + 48));
      v5 = *(a1 + 72);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    *(a1 + 72) = cf;
    if (cf)
    {
      CFRetain(cf);
      sub_1AF1C3CB4(cf, *(a1 + 48));
    }

    *(a1 + 176) = 1;
    result = 0.0;
    *(a1 + 144) = xmmword_1AFE201A0;
    *(a1 + 160) = xmmword_1AFE20B70;
  }

  return result;
}

CFTypeRef *sub_1AF1C8CC0(uint64_t a1)
{
  v2 = *(a1 + 72);
  sub_1AF1C8BB4();
  v4 = v3;
  sub_1AF1C8C40(v3, v2);
  sub_1AF1C8D3C(v4, *(a1 + 80));
  Copy = CFArrayCreateCopy(0, *(a1 + 88));
  sub_1AF1C8DC8(v4, Copy);
  CFRelease(Copy);
  sub_1AF16D160(a1, v4);
  return v4;
}

double sub_1AF1C8D3C(uint64_t a1, void *cf)
{
  v2 = cf;
  if (!cf)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v2 = sub_1AF1BAB68(v4);
    }

    else
    {
      v2 = 0;
    }
  }

  v5 = *(a1 + 80);
  if (v5 != v2)
  {
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }

    if (v2)
    {
      v6 = CFRetain(v2);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 80) = v6;
  }

  *(a1 + 176) = 1;
  result = 0.0;
  *(a1 + 144) = xmmword_1AFE201A0;
  *(a1 + 160) = xmmword_1AFE20B70;
  return result;
}

void sub_1AF1C8DC8(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 88);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      *(a1 + 88) = CFRetain(cf);
      Count = CFArrayGetCount(cf);
      *(a1 + 104) = Count;
      v6 = Count > 0;
      if (Count < 1)
      {
        v6 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
          sub_1AF1BB008(ValueAtIndex, 1);
        }
      }
    }

    else
    {
      v6 = 0;
      Count = 0;
      *(a1 + 88) = 0;
      *(a1 + 104) = 0;
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 128);
    if (v11)
    {
      free(v11);
    }

    if (Count)
    {
      *(a1 + 112) = sub_1AF288058(Count << 6);
      *(a1 + 120) = sub_1AF288058(48 * Count);
      v12 = sub_1AF288058(32 * Count);
    }

    else
    {
      v12 = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    *(a1 + 128) = v12;
    if (v6)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (*(a1 + 112) + v13);
        *v15 = xmmword_1AFE20150;
        v15[1] = xmmword_1AFE20160;
        v15[2] = xmmword_1AFE20180;
        v15[3] = xmmword_1AFE201A0;
        v16 = (*(a1 + 128) + v14);
        *v16 = xmmword_1AFE201A0;
        v16[1] = xmmword_1AFE20B70;
        v14 += 32;
        v13 += 64;
        --Count;
      }

      while (Count);
    }

    *(a1 + 176) = 1;
    *(a1 + 144) = xmmword_1AFE201A0;
    *(a1 + 160) = xmmword_1AFE20B70;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
  }
}

void sub_1AF1C8F60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEB28(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 64) = a2;
}

BOOL sub_1AF1C8FB4(uint64_t a1, void *a2)
{
  Count = CFArrayGetCount(*(a1 + 88));
  MutableCopy = CFArrayCreateMutableCopy(0, Count, *(a1 + 88));
  v13 = 0;
  if (sub_1AF1C90B0(a1, MutableCopy, *(a1 + 80), a2, &v13))
  {
    v6 = v13;
    v7 = CFArrayGetCount(MutableCopy) == v6;
    v8 = v7;
    if (v7)
    {
      sub_1AF1C8DC8(a1, MutableCopy);
      sub_1AF1C8D3C(a1, a2);
    }

    else
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 0;
        _os_log_impl(&dword_1AF0CE000, v9, OS_LOG_TYPE_DEFAULT, "Warning: CFXSkinnerTransposeSkeleton - unable to transpose every joints", v12, 2u);
      }
    }

    CFRelease(MutableCopy);
  }

  else
  {
    CFRelease(MutableCopy);
    return 0;
  }

  return v8;
}

uint64_t sub_1AF1C90B0(uint64_t a1, __CFArray *a2, const void *a3, const void *a4, _DWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  if (CFArrayGetCount(*(a1 + 88)) >= 1)
  {
    Count = 0;
    do
    {
      if (CFArrayGetValueAtIndex(*(a1 + 88), Count) == a3)
      {
        CFArraySetValueAtIndex(a2, Count, a4);
        ++*a5;
        Count = CFArrayGetCount(*(a1 + 88));
      }

      ++Count;
    }

    while (Count < CFArrayGetCount(*(a1 + 88)));
  }

  free(*(a1 + 96));
  *(a1 + 96) = 0;
  v11 = sub_1AF167434(a3);
  v12 = sub_1AF167434(a4);
  v13 = v12;
  result = v11 ^ v12 ^ 1u;
  if (v11 && v13)
  {
    v15 = sub_1AF1B9410(a3);
    if (v15 == sub_1AF1B9410(a4))
    {
      v16 = v15;
      if (v15)
      {
        v17 = 0;
        v18 = v16 - 1;
        do
        {
          v19 = sub_1AF1B963C(a3, v17);
          v20 = sub_1AF1B963C(a4, v17);
          result = sub_1AF1C90B0(a1, a2, v19, v20, a5);
          if (!result)
          {
            break;
          }
        }

        while (v18 != v17++);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFIndex sub_1AF1C9224(uint64_t a1, uint64_t a2)
{
  result = CFArrayGetCount(*(a1 + 88));
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), 0);
    return ValueAtIndex != a2 && !sub_1AF1BAAD8(ValueAtIndex, a2);
  }

  return result;
}

BOOL sub_1AF1C9280(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*(a1 + 88));
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  if (Count < 1)
  {
    v6 = 1;
LABEL_8:
    sub_1AF1C8DC8(a1, Mutable);
    sub_1AF1C8D3C(a1, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v7);
      v9 = sub_1AF1B955C(ValueAtIndex);
      if (!v9)
      {
        v12 = sub_1AF0D5194();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        LOWORD(v18) = 0;
        v13 = "Warning: Cannot update the joints using node names: unammed joint found";
        v14 = v12;
        v15 = 2;
        goto LABEL_13;
      }

      v10 = v9;
      v11 = sub_1AF1BA38C(a2, v9);
      if (!v11)
      {
        break;
      }

      CFArrayAppendValue(Mutable, v11);
      v6 = ++v7 >= Count;
      if (Count == v7)
      {
        goto LABEL_8;
      }
    }

    v16 = sub_1AF0D5194();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v18 = 138412290;
    v19 = v10;
    v13 = "Warning: Cannot update the joints using node names: can't find node named %@";
    v14 = v16;
    v15 = 12;
LABEL_13:
    _os_log_impl(&dword_1AF0CE000, v14, OS_LOG_TYPE_DEFAULT, v13, &v18, v15);
  }

LABEL_14:
  CFRelease(Mutable);
  return v6;
}

void sub_1AF1C9430(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  if (!v2)
  {
    return;
  }

  v4 = sub_1AF1B75A0(a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 88);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
    }

    else
    {
      Count = 0;
    }

    v9 = sub_1AF1C7940(v2);
    if (Count && Count == v9)
    {
      v74 = 0;
      v75 = 0;
      v73 = 0;
      v10 = sub_1AF1C78C4(v2, &v75, &v74, &v73);
      MEMORY[0x1EEE9AC00](v10, v11);
      v12 = &v71 - Count;
      MEMORY[0x1EEE9AC00](v13, v14);
      v15 = v12;
      if (Count >= 1)
      {
        memset_pattern16(&v71 - Count, &xmmword_1AFE21D80, 16 * Count);
        memset_pattern16(&v71 - Count, &xmmword_1AFE21D90, 16 * Count);
      }

      v16 = sub_1AF1BA1FC(v2);
      v17 = sub_1AF15B364(v2);
      if (Count == 1)
      {
        v72.i32[2] = 0;
        v72.i64[0] = 0;
        v71.i32[2] = 0;
        v71.i64[0] = 0;
        v18 = sub_1AF1B1F84(v5);
        if (sub_1AF170774(v18))
        {
          sub_1AF1C3958(v5, 0, &v72, &v71);
        }

        else
        {
          v42 = sub_1AF1B329C(v5);
          sub_1AF1A3234(v42, &v72, &v71);
        }

        v43 = 0;
        v44 = v72;
        v44.i32[3] = 1.0;
        v45 = v71;
        v45.i32[3] = 1.0;
        v46 = vaddq_f32(v44, v45);
        v47 = vsubq_f32(v45, v44);
        v48 = *v17;
        v49 = *(v17 + 16);
        v50 = *(v17 + 32);
        v51 = *(v17 + 48);
        v52 = v16[1];
        v53 = v16[2];
        v54 = v16[3];
        v76[0] = *v16;
        v76[1] = v52;
        v76[2] = v53;
        v76[3] = v54;
        *buf = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        do
        {
          *&buf[v43 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(v76[v43])), v49, *&v76[v43], 1), v50, v76[v43], 2), v51, v76[v43], 3);
          ++v43;
        }

        while (v43 != 4);
        v55.i64[0] = 0x3F0000003F000000;
        v55.i64[1] = 0x3F0000003F000000;
        v56 = vmulq_f32(v46, v55);
        v57 = vmulq_f32(v47, v55);
        v58 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v80, v79, v56, 2), v78, *v56.f32, 1), *buf, v56.f32[0]);
        v58.i32[3] = v56.i32[3];
        v59 = v57;
        v59.i32[1] = v57.i32[0];
        v59.i32[2] = v57.i32[0];
        v60 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v57.i8, 1), v57), vabsq_f32(v78)), v59, vabsq_f32(*buf)), vzip2q_s32(vtrn1q_s32(v57, v57), v57), vabsq_f32(v79));
        *v12 = vsubq_f32(v58, v60);
        *v12 = vaddq_f32(v60, v58);
LABEL_44:
        if (Count >= 1)
        {
          v61 = 0;
          v62.i64[0] = 0x3F0000003F000000;
          v62.i64[1] = 0x3F0000003F000000;
          do
          {
            v63 = (*(a1 + 128) + v61);
            v64 = *v12++;
            v65 = v64;
            v66 = *v15++;
            v67 = v66;
            v65.i32[3] = 1.0;
            v67.i32[3] = 1.0;
            *v63 = vmulq_f32(vaddq_f32(v65, v67), v62);
            v63[1] = vmulq_f32(vsubq_f32(v67, v65), v62);
            v61 += 32;
            --Count;
          }

          while (Count);
        }

        *(a1 + 176) = 0;
        return;
      }

      v20 = sub_1AF1B329C(v5);
      if (v20)
      {
        v21 = sub_1AF1A4CE8(v20, 0);
        if (v21)
        {
          *buf = 0u;
          v78 = 0u;
          sub_1AF1AE1A8(v21, buf);
          if (v78.i8[6])
          {
            v22 = v78.i32[0];
            if (v22 <= sub_1AF15B294(v2) && v78.i32[0])
            {
              v26 = 0;
              do
              {
                *v23.i64 = sub_1AF279750(v78.u8[4], (*buf + v26 * v78.u8[6]), v23, v24.f32[0], v25.f32[0]);
                v24 = *v16;
                v25 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v16[3], v16[2], v23, 2), v16[1], *v23.f32, 1), *v16, v23.f32[0]);
                if (v75)
                {
                  v27 = Count < 2;
                }

                else
                {
                  v27 = 1;
                }

                if (v27)
                {
                  v24 = *(v17 + 16);
                  v28 = *v12;
                  v29 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v17 + 48), *(v17 + 32), v25, 2), v24, *v25.f32, 1), *v17, v25.f32[0]);
                  v29.i32[3] = 0;
                  v28.i32[3] = 0;
                  *v12 = vminnmq_f32(v29, v28);
                  v30 = *v12;
                  v30.i32[3] = 0;
                  v23 = vmaxnmq_f32(v29, v30);
                  *v12 = v23;
                  ++v26;
                }

                else
                {
                  v31 = *(v75 + 4 * v26++);
                  v32 = *(v75 + 4 * v26);
                  if (v31 < v32)
                  {
                    v33 = v73;
                    v23 = vdupq_lane_s32(*v25.f32, 0);
                    v24 = vdupq_lane_s32(*v25.f32, 1);
                    v25 = vdupq_laneq_s32(v25, 2);
                    v34 = (v74 + 2 * v31);
                    v35 = (v73 + 4 * v31);
                    v36 = v32 - v31;
                    do
                    {
                      v38 = *v34++;
                      v37 = v38;
                      if ((v38 & 0x8000000000000000) == 0 && (!v33 || *v35 > 0.0) && Count > v37)
                      {
                        v39 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v17 + (v37 << 6) + 48), *(v17 + (v37 << 6) + 32), v25), *(v17 + (v37 << 6) + 16), v24), *(v17 + (v37 << 6)), v23);
                        v40 = v12[v37];
                        v39.i32[3] = 0;
                        v40.i32[3] = 0;
                        v12[v37] = vminnmq_f32(v39, v40);
                        v41 = v12[v37];
                        v41.i32[3] = 0;
                        v12[v37] = vmaxnmq_f32(v39, v41);
                      }

                      ++v35;
                      --v36;
                    }

                    while (v36);
                  }
                }
              }

              while (v26 < v78.u32[0]);
            }
          }

          else
          {
            v70 = sub_1AF0D5194();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDEBD4();
            }
          }

          goto LABEL_44;
        }

        v69 = sub_1AF0D5194();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDEC08();
        }
      }

      else
      {
        v68 = sub_1AF0D5194();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDEC3C();
        }
      }
    }

    else if ((byte_1EB658638 & 1) == 0)
    {
      byte_1EB658638 = 1;
      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDEBA0();
      }
    }
  }

  else
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: _CFXSkinnerUpdateBoundingBox - skinned node has no model", buf, 2u);
    }
  }
}

double sub_1AF1C9978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  v59.columns[2] = a7;
  v59.columns[3] = a8;
  v59.columns[0] = a5;
  v59.columns[1] = a6;
  *&v61[5] = *MEMORY[0x1E69E9840];
  v11 = sub_1AF1C7594(a2);
  v62 = __invert_f4(v59);
  v59.columns[2] = v62.columns[1];
  v59.columns[3] = v62.columns[0];
  v59.columns[0] = v62.columns[3];
  v59.columns[1] = v62.columns[2];
  v12 = sub_1AF1C3F64(a3);
  if (v12)
  {
    v13 = sub_1AF1D0218(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = sub_1AF1C3FAC(v14);
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_1AF1C3FAC(a1);
  v18 = *(a1 + 96);
  if (v15 == v17)
  {
    if (!v18)
    {
      v18 = sub_1AF1C8A58(a1);
    }
  }

  else
  {
    free(v18);
    *(a1 + 96) = 0;
  }

  MEMORY[0x1EEE9AC00](v18, v16);
  if (a4 < 1)
  {
    v55 = sub_1AF1B7B8C(a3);
    v38 = v59.columns[2];
    v37 = v59.columns[3];
    v40 = v59.columns[0];
    v39 = v59.columns[1];
    if ((v55 & 1) == 0)
    {
      v43 = xmmword_1AFE20B70;
      v42 = xmmword_1AFE201A0;
LABEL_30:
      v56 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v40, v39, v42, 2), v38, *v42.f32, 1), v37, v42.f32[0]);
      v56.i32[3] = v42.i32[3];
      v57 = v43;
      v57.i32[1] = v43.i32[0];
      v57.i32[2] = v43.i32[0];
      *(a1 + 144) = v56;
      *(a1 + 160) = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v38), vuzp2q_s32(vdupq_lane_s32(*v43.f32, 1), v43)), v57, vabsq_f32(v37)), vzip2q_s32(vtrn1q_s32(v43, v43), v43), vabsq_f32(v39));
    }
  }

  else
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E9B18];
    v21 = &v59 - a4;
    do
    {
      v22 = *(a1 + 96);
      if (!v22 || (v23 = *(v22 + 4 * v19), v23 == -1))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v19);
        if (ValueAtIndex)
        {
          v29 = sub_1AF1B9B04(ValueAtIndex);
          v30 = v29[1];
          v31 = v29[2];
          v32 = v29[3];
          v21->columns[0] = *v29;
          v21->columns[1] = v30;
          v21->columns[2] = v31;
          v21->columns[3] = v32;
        }

        else
        {
          v33 = sub_1AF0D5194();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDEC70(buf, v61, v33);
          }

          v34 = v20[1];
          v21->columns[0] = *v20;
          v21->columns[1] = v34;
          v35 = v20[3];
          v21->columns[2] = v20[2];
          v21->columns[3] = v35;
        }
      }

      else
      {
        v24 = sub_1AF14CD4C(v13, v23);
        v25 = v24[3];
        v27 = *v24;
        v26 = v24[1];
        v21->columns[2] = v24[2];
        v21->columns[3] = v25;
        v21->columns[0] = v27;
        v21->columns[1] = v26;
      }

      ++v19;
      ++v21;
    }

    while (a4 != v19);
    v36 = sub_1AF1B7B8C(a3);
    v38 = v59.columns[2];
    v37 = v59.columns[3];
    v40 = v59.columns[0];
    v39 = v59.columns[1];
    if ((v36 & 1) == 0)
    {
      v41 = &v59.columns[-4 * a4 + 2];
      v42 = xmmword_1AFE201A0;
      v43 = xmmword_1AFE20B70;
      v44 = (*(a1 + 128) + 16);
      v45.i64[0] = 0x3F0000003F000000;
      v45.i64[1] = 0x3F0000003F000000;
      v46 = a4;
      do
      {
        if ((vminvq_u32(vcgezq_f32(*v44->i8)) & 0x80000000) != 0)
        {
          v47 = v41[-2];
          v48 = v41[-1];
          v49 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v41[1], *v41, *v44[-2].i8, 2), v48, v44[-2], 1), v47, COERCE_FLOAT(*v44[-2].i8));
          v49.i32[3] = HIDWORD(*v44[-2].i8);
          v50 = vabsq_f32(v47);
          v51 = *v44->i8;
          v51.i32[1] = *v44->i8;
          v51.i32[2] = v51.i32[1];
          v52 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v44, 1), *v44->i8), vabsq_f32(v48)), v51, v50), vzip2q_s32(vtrn1q_s32(*v44->i8, *v44->i8), *v44->i8), vabsq_f32(*v41));
          v53 = vminnmq_f32(vsubq_f32(v42, v43), vsubq_f32(v49, v52));
          v54 = vmaxnmq_f32(vaddq_f32(v42, v43), vaddq_f32(v52, v49));
          v42 = vmulq_f32(vaddq_f32(v53, v54), v45);
          v43 = vmulq_f32(vsubq_f32(v54, v53), v45);
        }

        v41 += 4;
        v44 += 4;
        --v46;
      }

      while (v46);
      goto LABEL_30;
    }
  }

  sub_1AF1DAB80(&v59 - 4 * a4, (&v59 - a4), a4, v37, v38, v39, v40);
  sub_1AF1DAAEC(*(a1 + 112), &v59 - 4 * a4, v11, a4);
  *&result = sub_1AF1DAC14(*(a1 + 120), *(a1 + 112), a4).u64[0];
  return result;
}

void sub_1AF1C9CD8(uint64_t a1, float32x4_t *a2)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a2);
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = sub_1AF1C7940(v4);
  if (*(a1 + 88) && (v14 = *(a1 + 104)) != 0 && (v15 = v13, v14 == v13))
  {
    v16 = sub_1AF1B9B04(a2);
    sub_1AF1C9978(a1, v4, a2, v15, *v16, v16[1], v16[2], v16[3]);
    sub_1AF1B78DC(a2);
  }

  else if ((byte_1EB658639 & 1) == 0)
  {
    byte_1EB658639 = 1;
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEBA0();
    }
  }
}

uint64_t sub_1AF1C9DCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 3 * *(a1 + 104);
  }

  return *(a1 + 120);
}

uint64_t sub_1AF1C9DE4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a2);
  }

  if ((vminvq_u32(vcgezq_f32(*(a1 + 160))) & 0x80000000) != 0)
  {
    v10 = 1;
LABEL_22:
    v33 = *(a1 + 160);
    *a3 = *(a1 + 144);
    a3[1] = v33;
    return v10 & 1;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count)
    {
      v8 = Count;
      if (Count < 1)
      {
        v10 = 0;
        v36 = xmmword_1AFE20B70;
        v35 = xmmword_1AFE201A0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v35 = xmmword_1AFE201A0;
        v36 = xmmword_1AFE20B70;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v11);
          v13 = sub_1AF1C3FAC(ValueAtIndex);
          v14 = v13;
          if (v13)
          {
            sub_1AF1CEA20(v13);
          }

          v15 = sub_1AF1B9B04(ValueAtIndex);
          v16 = *v15;
          v17 = v15[1];
          v19 = v15[2];
          v18 = v15[3];
          if (v14)
          {
            v39 = v15[2];
            v40 = v15[3];
            v37 = *v15;
            v38 = v15[1];
            sub_1AF1CEA9C(v14);
            v16 = v37;
            v17 = v38;
            v19 = v39;
            v18 = v40;
          }

          v20 = *(a1 + 128);
          v21 = *(v20 + v9 + 16);
          if ((vminvq_u32(vcgezq_f32(v21)) & 0x80000000) != 0)
          {
            v22 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v18, v19, *(v20 + v9), 2), v17, *(v20 + v9), 1), v16, COERCE_FLOAT(*(v20 + v9)));
            v22.i32[3] = HIDWORD(*(v20 + v9));
            v23 = *(v20 + v9 + 16);
            v23.i32[1] = v23.i32[0];
            v23.i32[2] = *(v20 + v9 + 16);
            v24 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v17), vuzp2q_s32(vdupq_lane_s32(*v21.f32, 1), v21)), v23, vabsq_f32(v16)), vzip2q_s32(vtrn1q_s32(v21, v21), v21), vabsq_f32(v19));
            v25 = vminnmq_f32(vsubq_f32(v35, v36), vsubq_f32(v22, v24));
            v26 = vmaxnmq_f32(vaddq_f32(v35, v36), vaddq_f32(v24, v22));
            v24.i64[0] = 0x3F0000003F000000;
            v24.i64[1] = 0x3F0000003F000000;
            v35 = vmulq_f32(vaddq_f32(v25, v26), v24);
            v36 = vmulq_f32(vsubq_f32(v26, v25), v24);
            v10 = 1;
          }

          ++v11;
          v9 += 32;
        }

        while (v8 != v11);
      }

      v43 = *sub_1AF1B9B04(a2);
      v44 = __invert_f4(v43);
      v44.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v44.columns[3], v44.columns[2], v35, 2), v44.columns[1], *v35.f32, 1), v44.columns[0], v35.f32[0]);
      v44.columns[3].i32[3] = v35.i32[3];
      v32 = v36;
      v32.i32[1] = v36.i32[0];
      v32.i32[2] = v36.i32[0];
      *(a1 + 144) = v44.columns[3];
      *(a1 + 160) = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v36.f32, 1), v36), vabsq_f32(v44.columns[1])), v32, vabsq_f32(v44.columns[0])), vzip2q_s32(vtrn1q_s32(v36, v36), v36), vabsq_f32(v44.columns[2]));
      goto LABEL_22;
    }
  }

  v27 = sub_1AF1B75A0(a2);
  if (v27)
  {
    v28 = sub_1AF1B329C(v27);
    v42.i32[2] = 0;
    v42.i64[0] = 0;
    v41.i32[2] = 0;
    v41.i64[0] = 0;
    v10 = sub_1AF1A3234(v28, &v42, &v41);
    v29 = v42;
    v30 = v41;
    v29.i32[3] = 1.0;
    v30.i32[3] = 1.0;
    v31.i64[0] = 0x3F0000003F000000;
    v31.i64[1] = 0x3F0000003F000000;
    *a3 = vmulq_f32(vaddq_f32(v29, v30), v31);
    a3[1] = vmulq_f32(vsubq_f32(v30, v29), v31);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1AF1CA094(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEB28(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a2);
  }

  return *(a1 + 128);
}

void sub_1AF1CA100(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a3);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = sub_1AF167434(v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = sub_1AF1CA1D4;
    v9[3] = &unk_1E7A7B988;
    v10 = a4;
    v9[4] = v7;
    v9[5] = a2;
    v9[6] = &unk_1AFE20460;
    v11 = 1;
    v12 = !v8;
    sub_1AF1B94AC(v7, v9);
  }
}

uint64_t sub_1AF1CA1D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) != a2)
  {
    *v6.i64 = sub_1AF1B7F84(a2);
    v19 = v7;
    v20 = v6;
    v17 = v9;
    v18 = v8;
    v10 = sub_1AF1B9B04(a2);
    v23.columns[1] = v19;
    v23.columns[0] = v20;
    v23.columns[3] = v17;
    v23.columns[2] = v18;
    v11 = __invert_f4(v23);
    v22 = 0uLL;
    v11.columns[0] = vmulq_f32(v11.columns[3], v11.columns[3]);
    v11.columns[1].f32[0] = v11.columns[0].f32[2] + vaddv_f32(*v11.columns[0].f32);
    v11.columns[0].f32[0] = sqrtf(v11.columns[1].f32[0]);
    if (v11.columns[0].f32[0] <= 0.0)
    {
      v11.columns[2] = xmmword_1AFE20160;
      v11.columns[1].i32[0] = *(a1 + 56);
      v11.columns[0].i32[0] = v11.columns[1].i32[0];
    }

    else
    {
      v11.columns[2].i32[0] = v11.columns[1].i32[0];
      *v11.columns[1].f32 = vrsqrte_f32(v11.columns[1].u32[0]);
      *v11.columns[1].f32 = vmul_f32(*v11.columns[1].f32, vrsqrts_f32(v11.columns[2].u32[0], vmul_f32(*v11.columns[1].f32, *v11.columns[1].f32)));
      v11.columns[2] = vmulq_n_f32(v11.columns[3], vmul_f32(*v11.columns[1].f32, vrsqrts_f32(v11.columns[2].u32[0], vmul_f32(*v11.columns[1].f32, *v11.columns[1].f32))).f32[0]);
      v11.columns[1].i32[0] = *(a1 + 56);
    }

    v21 = v11.columns[2];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 60);
    v12 = v10;
    goto LABEL_8;
  }

  if (*(a1 + 61) == 1)
  {
    v12 = sub_1AF1B9B04(a2);
    v22 = 0uLL;
    v21 = xmmword_1AFE20160;
    v11.columns[0].i32[0] = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 60);
    v11.columns[1].i32[0] = v11.columns[0].i32[0];
LABEL_8:
    sub_1AF100944(v13, &v22, &v21, v12, v14, v15, v11.columns[0].f32[0], v11.columns[1].f32[0]);
  }

  sub_1AF0FC634(*(a1 + 40), a2, a3, a4);
  return 0;
}

void sub_1AF1CA30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a3);
  }

  v11 = xmmword_1AFE21170;
  Count = CFArrayGetCount(*(a1 + 88));
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if ((vminvq_u32(vcgezq_f32(*(*(a1 + 128) + v7 + 16))) & 0x80000000) != 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
        v10 = sub_1AF1B9B04(ValueAtIndex);
        sub_1AF0FEDA4(a2, (*(a1 + 128) + v7), v10, &v11);
      }

      v7 += 32;
    }
  }
}

double sub_1AF1CA3E8(uint64_t a1, int a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  if (a2 == 1)
  {
    v31[10] = v6;
    v31[11] = v7;
    v8 = *(a1 + 120);
    if (*(a1 + 104) != 1)
    {
      v28 = a5;
      v29 = a6;
      v26 = a3;
      v27 = a4;
      v9 = sub_1AF0D5194();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      a3 = v26;
      a4 = v27;
      a5 = v28;
      a6 = v29;
      if (v10)
      {
        sub_1AFDDECC0(v9, v11, v12, v13, v14, v15, v16, v17);
        a3 = v26;
        a4 = v27;
        a5 = v28;
        a6 = v29;
      }
    }

    v18 = 0;
    v19 = v8[1];
    v20 = v8[2];
    v21 = vzip1q_s32(*v8, v20);
    v22 = vzip2q_s32(*v8, v20);
    v23 = vzip1q_s32(v19, 0);
    v24 = vzip2q_s32(v19, xmmword_1AFE201A0);
    v30[0] = vzip1q_s32(v21, v23);
    v30[1] = vzip2q_s32(v21, v23);
    v30[2] = vzip1q_s32(v22, v24);
    v30[3] = vzip2q_s32(v22, v24);
    memset(v31, 0, 64);
    do
    {
      *&v31[v18 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v30[v18 / 0x10])), a4, *&v30[v18 / 0x10], 1), a5, v30[v18 / 0x10], 2), a6, v30[v18 / 0x10], 3);
      v18 += 16;
    }

    while (v18 != 64);
    a3.i64[0] = v31[0];
  }

  return *a3.i64;
}

double sub_1AF1CA4DC(uint64_t a1)
{
  *(a1 + 176) = 1;
  result = 0.0;
  *(a1 + 144) = xmmword_1AFE201A0;
  *(a1 + 160) = xmmword_1AFE20B70;
  return result;
}

id sub_1AF1CA500(void *a1)
{
  if (a1[9])
  {
    sub_1AF1C8C40(a1, 0);
  }

  v2 = a1[15];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[16];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[12];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1CA598(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | skeleton:%p jointCount:%d\n", v5, a1, a1[10], Count);
  CFStringAppendFormat(Mutable, 0, @"  skin:%p\n", a1[9]);
  if (a1[13] >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a1[16];
      if (!v8)
      {
        break;
      }

      v9 = v8 + v6;
      CFStringAppendFormat(Mutable, 0, @"  JointBbox[%d] {%f,%f,%f} {%f,%f,%f}\n", v7++, COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9)), COERCE_FLOAT(*(v9 + 8)), COERCE_FLOAT(*(v9 + 16)), COERCE_FLOAT(HIDWORD(*(v9 + 16))), COERCE_FLOAT(*(v9 + 24)));
      v6 += 32;
    }

    while (v7 < a1[13]);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1CA6E0(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v39 = 1;
  valuePtr = 5;
  v38 = sub_1AF16CE58(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v5, @"name", @"attributes");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v9, @"name", @"skin");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 80;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v13, @"name", @"skeleton");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 88;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v17, @"name", @"joints");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v39 = 0;
  valuePtr = 3;
  v38 = a1 + 176;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v21, @"name", @"bboxDirty");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  v25 = Mutable;
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  v26 = a1;
  CFRelease(v24);
  CFRelease(v22);
  v27 = *(a1 + 88);
  if (v27)
  {
    Count = CFArrayGetCount(v27);
    if (Count >= 1)
    {
      v29 = Count;
      v30 = 0;
      for (i = 0; i != v29; ++i)
      {
        v32 = CFStringCreateWithFormat(0, 0, @"verticesJointsMatrices[%d]", i);
        v33 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v39 = 0;
        valuePtr = 10;
        v38 = *(v26 + 112) + v30;
        v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v35 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
        v36 = CFNumberCreate(0, kCFNumberLongType, &v38);
        CFDictionarySetValue(v33, @"name", v32);
        CFDictionarySetValue(v33, @"type", v34);
        CFDictionarySetValue(v33, @"address", v36);
        CFDictionarySetValue(v33, @"semantic", v35);
        CFArrayAppendValue(v25, v33);
        CFRelease(v35);
        CFRelease(v33);
        CFRelease(v36);
        CFRelease(v34);
        CFRelease(v32);
        v30 += 64;
      }
    }
  }

  return v25;
}

uint64_t sub_1AF1CAD2C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

uint64_t sub_1AF1CAD7C(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return sub_1AF1C4020(v6, a2);
}

uint64_t sub_1AF1CADD8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED731B18 = result;
  qword_1ED721A40 = sub_1AF1CB70C;
  return result;
}

uint64_t sub_1AF1CAE1C()
{
  if (qword_1ED731B20 != -1)
  {
    sub_1AFDDED38();
  }

  v1 = qword_1ED731B18;

  return sub_1AF0D160C(v1, 0x30uLL);
}

uint64_t sub_1AF1CAE64(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AF1CAE1C();
  *(v10 + 24) = a1;
  *(v10 + 26) = a2;
  if (!a4)
  {
    a4 = sub_1AF288070(a1) * a2;
  }

  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = 0;
  return v10;
}

void *sub_1AF1CAEF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v5, a2, a3, a4, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    return sub_1AF17017C(result, a2, a3, a4);
  }

  return result;
}

const UInt8 *sub_1AF1CAF40(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1[4] <= a2)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDED4C();
    }
  }

  else
  {
    v6 = sub_1AF1CAEF0(a1, a2, a3, a4);
    if (v6)
    {
      return &CFDataGetBytePtr(v6)[a1[5] * a2 + a1[6]];
    }

    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEDB8(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return 0;
}

__CFData *sub_1AF1CAFE0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1[4] <= a2)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEDF0();
    }

    return 0;
  }

  else
  {
    result = sub_1AF1CAEF0(a1, a2, a3, a4);
    if (result)
    {
      return &CFDataGetMutableBytePtr(result)[a1[5] * a2 + a1[6]];
    }
  }

  return result;
}

uint64_t sub_1AF1CB064(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEE60();
    }

    return 0;
  }

  v2 = a1[2];
  if ((*(v2 + 88) & 4) == 0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEED0(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v13 = *(v2 + 72);
  if (!v13)
  {
    return 0;
  }

  return v13 + a1[5] * a2;
}

void sub_1AF1CB108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = a2;
  if (a2)
  {
    v6 = sub_1AF17017C(a2, a2, a3, a4);
    if (v6)
    {
      Length = CFDataGetLength(v6);
      if (Length || *(a1 + 32) && (sub_1AF170374(a2) & 1) == 0)
      {
        if (*(a1 + 48) >= Length)
        {
          v13 = sub_1AF0D5194();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 48);
            v15 = *(a1 + 32);
            v19 = 134218496;
            v20 = Length;
            v21 = 2048;
            v22 = v14;
            v23 = 1024;
            v24 = v15;
            _os_log_error_impl(&dword_1AF0CE000, v13, OS_LOG_TYPE_ERROR, "Error: CFXSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu) ; count capped to 0 (was %d)", &v19, 0x1Cu);
          }

          *(a1 + 32) = 0;
        }

        else
        {
          v8 = sub_1AF288070(*(a1 + 24)) * *(a1 + 26);
          v9 = Length - *(a1 + 48);
          v10 = v9 / v8;
          if (v9 % *(a1 + 40) < v8)
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 + 1;
          }

          if (*(a1 + 32) > v11)
          {
            v12 = sub_1AF0D5194();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v16 = *(a1 + 32);
              v18 = *(a1 + 40);
              v17 = *(a1 + 48);
              v19 = 134219264;
              v20 = Length;
              v21 = 2048;
              v22 = v17;
              v23 = 1024;
              v24 = v16;
              v25 = 2048;
              v26 = v18;
              v27 = 1024;
              v28 = v11;
              v29 = 1024;
              v30 = v16;
              _os_log_error_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_ERROR, "Error: CFXSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu, count %d and stride %zu) ; count capped to %d (was %d)", &v19, 0x32u);
            }

            *(a1 + 32) = v11;
          }
        }
      }
    }
  }
}

uint64_t sub_1AF1CB2E4(uint64_t a1)
{
  v2 = sub_1AF1CAE64(*(a1 + 24), *(a1 + 26), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  sub_1AF1CB108(v2, *(a1 + 16), v3, v4);
  return v2;
}

BOOL sub_1AF1CB35C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 26);
  return v1 != *(a1 + 56) + sub_1AF288070(*(a1 + 24)) * v2;
}

BOOL sub_1AF1CB3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 26);
  v7 = *(a2 + 26);
  if (v6 > v7)
  {
    return 0;
  }

  v8 = *(a2 + 40) * *(a1 + 32);
  if (!v8)
  {
    return 0;
  }

  v10 = sub_1AF1CAEF0(a2, a2, a3, a4);
  if (v8 > CFDataGetLength(v10) - *(a2 + 40) * a3)
  {
    v13 = sub_1AF0D5194();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1AFDDEF80(v13, v15, v16, v17, v18, v19, v20, v21);
    return 0;
  }

  v22 = sub_1AF1CAFE0(a2, a3, v11, v12);
  if (!v22)
  {
    v37 = sub_1AF0D5194();
    result = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1AFDDEF48(v37, v38, v39, v40, v41, v42, v43, v44);
    return 0;
  }

  v23 = v22;
  v24 = *(a1 + 40);
  v25 = *(a1 + 26);
  if (v24 == *(a1 + 56) + sub_1AF288070(*(a1 + 24)) * v25)
  {
    v28 = *(a2 + 40);
    v29 = *(a2 + 26);
    v30 = sub_1AF288070(*(a2 + 24));
    if (v7 <= v6 && v28 == *(a2 + 56) + v30 * v29)
    {
      v31 = sub_1AF1CAF40(a1, 0, v26, v27);
      memcpy(v23, v31, v8);
      return 1;
    }
  }

  v32 = sub_1AF1CAF40(a1, 0, v26, v27);
  v33 = *(a1 + 26);
  v34 = sub_1AF288070(*(a1 + 24));
  if (*(a1 + 32) < 1)
  {
    return 1;
  }

  v35 = 0;
  v36 = v34 * v33;
  do
  {
    memcpy(v23, v32, v36);
    v32 += *(a1 + 40);
    v23 = (v23 + *(a2 + 40));
    ++v35;
    result = 1;
  }

  while (v35 < *(a1 + 32));
  return result;
}

uint64_t sub_1AF1CB564(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

void sub_1AF1CB5AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 48) = a2;
}

void sub_1AF1CB600(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 40) = a2;
}

uint64_t sub_1AF1CB65C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32) * *(a1 + 40);
}

uint64_t sub_1AF1CB6A8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF288070(*(a1 + 24)) * *(a1 + 26);
}

__CFArray *sub_1AF1CB70C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 5;
  v43 = *(a1 + 16) + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"accessor");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 2;
  valuePtr = 5;
  v43 = *(a1 + 16) + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"data");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 24;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x1E695E9D8];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 26;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"componentsCountPerValue");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 32;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"count");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  v27 = Mutable;
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v28 = MEMORY[0x1E695E9D8];
  v29 = MEMORY[0x1E695E9E8];
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 40;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v30, @"name", @"stride");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(v27, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 48;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v34, @"name", @"offset");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(v27, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 56;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v38, @"name", @"padding");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(v27, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  return v27;
}

void sub_1AF1CBED8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

__n128 sub_1AF1CBF04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 92) = 8;
  return result;
}

__n128 sub_1AF1CBF20(_BYTE *a1)
{
  if ((a1[92] & 8) == 0)
  {
    sub_1AF1CBF58(a1);
  }

  return *a1;
}

__n128 sub_1AF1CBF58(uint64_t a1)
{
  if ((*(a1 + 92) & 4) == 0)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEFB8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 92) & 8) != 0)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF030(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 64);
  if ((*(a1 + 92) & 3) != 0)
  {
    if ((*(a1 + 92) & 3) == 2)
    {
      v19 = vmulq_f32(v18, v18);
      v19.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
      v20 = vdupq_lane_s32(*v19.f32, 0);
      v20.i32[3] = 0;
      v21 = vrsqrteq_f32(v20);
      v22 = vmulq_f32(v21, vrsqrtsq_f32(v20, vmulq_f32(v21, v21)));
      v23 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v19.f32[0] != 0.0)), 0x1FuLL));
      v23.i32[3] = 0;
      v48 = vbslq_s8(vcltzq_s32(v23), vmulq_f32(v18, vmulq_f32(v22, vrsqrtsq_f32(v20, vmulq_f32(v22, v22)))), v18);
      v24 = __sincosf_stret(vmuls_lane_f32(0.5, v18, 3));
      v18 = vmulq_n_f32(v48, v24.__sinval);
      v18.i32[3] = LODWORD(v24.__cosval);
    }

    else
    {
      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      v26 = vmulq_f32(v18, v25);
      v26.i32[3] = 0;
      x = v26;
      v49 = _simd_cos_f4(v26);
      v27 = _simd_sin_f4(x);
      v28 = vextq_s8(v49, v49, 4uLL);
      v29 = vmulq_f32(vzip1q_s32(vrev64q_s32(v49), v49), vextq_s8(vzip1q_s32(v28, v27), v28, 8uLL));
      v30 = vzip2q_s32(vzip1q_s32(v49, v27), v27);
      v30.f32[3] = -v27.f32[0];
      v31 = vextq_s8(v27, v27, 8uLL);
      v32 = vtrn1q_s32(v27, vextq_s8(v49, v49, 8uLL));
      v27.i32[3] = v27.i32[1];
      v33 = vtrn1q_s32(v31, v49);
      v33.f32[1] = -v49.f32[0];
      v18 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v27, v30), v33)), v32, v29);
    }
  }

  result = *(a1 + 80);
  v35 = vabsq_f32(result);
  v35.i32[3] = 0;
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  v37 = vorrq_s8(vandq_s8(result, v36), vabsq_f32(vmaxnmq_f32(v35, xmmword_1AFE20A30)));
  v38 = vmulq_f32(v18, v18);
  v39 = vmulq_laneq_f32(v18, v18, 3);
  v40 = vmuls_lane_f32(v18.f32[0], *v18.f32, 1);
  v41 = vmuls_lane_f32(v18.f32[1], v18, 2);
  v42 = vmuls_lane_f32(v18.f32[0], v18, 2);
  v43 = vaddq_f32(v37, v37);
  v44.i32[3] = 0;
  v44.f32[0] = (0.5 - v38.f32[1]) - v38.f32[2];
  v44.f32[1] = v40 + v39.f32[2];
  v44.f32[2] = v42 - v39.f32[1];
  v38.f32[0] = 0.5 - v38.f32[0];
  v45.i32[3] = 0;
  v45.f32[0] = v40 - v39.f32[2];
  v45.f32[1] = v38.f32[0] - v38.f32[2];
  v45.f32[2] = v41 + v39.f32[0];
  v46.f32[0] = v42 + v39.f32[1];
  v46.f32[1] = v41 - v39.f32[0];
  v46.i64[1] = COERCE_UNSIGNED_INT(v38.f32[0] - v38.f32[1]);
  *a1 = vmulq_n_f32(v44, v43.f32[0]);
  *(a1 + 16) = vmulq_lane_f32(v45, *v43.f32, 1);
  *(a1 + 32) = vmulq_laneq_f32(v46, v43, 2);
  *(a1 + 60) = 1065353216;
  *(a1 + 92) = result.n128_u32[3] | 8;
  return result;
}

uint64_t sub_1AF1CC1BC(uint64_t a1)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    sub_1AF1CBF58(a1);
  }

  return a1;
}

double sub_1AF1CC1F0(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v9 = *(a1 + 92);
  if ((v9 & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = *(a1 + 92);
  }

  v10 = *(a1 + 64);
  v11 = v9 & 3;
  if (v11)
  {
    if (v11 == 2)
    {
      v12 = vmulq_f32(v10, v10);
      v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
      v13 = vdupq_lane_s32(*v12.f32, 0);
      v13.i32[3] = 0;
      v14 = vrsqrteq_f32(v13);
      v15 = vmulq_f32(v14, vrsqrtsq_f32(v13, vmulq_f32(v14, v14)));
      v16 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12.f32[0] != 0.0)), 0x1FuLL));
      v16.i32[3] = 0;
      v10.i64[0] = vmulq_n_f32(vbslq_s8(vcltzq_s32(v16), vmulq_f32(v10, vmulq_f32(v15, vrsqrtsq_f32(v13, vmulq_f32(v15, v15)))), v10), __sincosf_stret(vmuls_lane_f32(0.5, v10, 3)).__sinval).u64[0];
    }

    else
    {
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      v18 = vmulq_f32(v10, v17);
      v18.i32[3] = 0;
      x = v18;
      v27 = _simd_cos_f4(v18);
      v10 = _simd_sin_f4(x);
      v19 = vextq_s8(v27, v27, 4uLL);
      v20 = vmulq_f32(vzip1q_s32(vrev64q_s32(v27), v27), vextq_s8(vzip1q_s32(v19, v10), v19, 8uLL));
      v21 = vzip2q_s32(vzip1q_s32(v27, v10), v10);
      v21.f32[3] = -v10.f32[0];
      v22 = vextq_s8(v10, v10, 8uLL);
      v23 = vtrn1q_s32(v10, vextq_s8(v27, v27, 8uLL));
      v10.i32[3] = v10.i32[1];
      v24 = vtrn1q_s32(v22, v27);
      v24.f32[1] = -v27.f32[0];
      v10.i64[0] = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v10, v21), v24)), v23, v20).u64[0];
    }
  }

  return *v10.i64;
}

void sub_1AF1CC338(float32x4_t *a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  if ((a1[5].i8[12] & 8) == 0)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF0A8(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if ((a1[5].i8[12] & 4) != 0)
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF120(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vnegq_f32(v26)), v27, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
  v29 = vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), *a1);
  v60 = (v29.f32[2] + vaddv_f32(*v29.f32)) < 0.0;
  v30 = 1.0;
  if (v60)
  {
    v30 = -1.0;
  }

  v31 = vmulq_f32(v25, v25);
  v32 = vmulq_f32(v26, v26);
  *a8.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8))));
  v33 = vmulq_f32(v27, v27);
  a8.i32[2] = sqrtf(*&v33.i32[2] + vaddv_f32(*v33.i8));
  v34 = vmulq_n_f32(a8, v30);
  v34.i32[3] = a1[5].i32[3];
  a1[5] = v34;
  v35 = vzip2q_s32(v31, v33);
  v36 = vzip1q_s32(vzip1q_s32(v31, v33), v32);
  v37 = vtrn2q_s32(v31, v32);
  v37.i32[2] = v33.i32[1];
  v38 = vaddq_f32(vzip1q_s32(v35, vdupq_laneq_s32(v32, 2)), vaddq_f32(v36, v37));
  v37.i64[0] = 0x80000000800000;
  v37.i64[1] = 0x80000000800000;
  v39 = vcgeq_f32(v37, v38);
  v38.i32[3] = 0;
  v40 = vrsqrteq_f32(v38);
  v41 = vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)));
  v42 = v39;
  v42.i32[3] = 0;
  v43 = vbslq_s8(vcltzq_s32(v42), v38, vmulq_f32(v41, vrsqrtsq_f32(v38, vmulq_f32(v41, v41))));
  v44 = vmulq_n_f32(v25, v43.f32[0]);
  v45 = vmulq_lane_f32(v26, *v43.f32, 1);
  v46 = vmulq_laneq_f32(v27, v43, 2);
  v47 = vuzp1q_s32(v46, v46);
  v48 = vuzp1q_s32(v45, v45);
  v49 = v44;
  if (v39.i32[0])
  {
    v50 = vmlaq_f32(vmulq_f32(vextq_s8(v47, v46, 0xCuLL), vnegq_f32(v45)), v46, vextq_s8(v48, v45, 0xCuLL));
    v49 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
  }

  v51 = vuzp1q_s32(v44, v44);
  v52 = v45;
  if (v39.i32[1])
  {
    v53 = vmlaq_f32(vmulq_f32(vextq_s8(v51, v44, 0xCuLL), vnegq_f32(v46)), v44, vextq_s8(v47, v46, 0xCuLL));
    v52 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
  }

  if (v39.i32[2])
  {
    v54 = vmlaq_f32(vmulq_f32(vextq_s8(v48, v45, 0xCuLL), vnegq_f32(v44)), v45, vextq_s8(v51, v44, 0xCuLL));
    v46 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
  }

  v55 = (*v49.i32 + *&v52.i32[1]) + v46.f32[2];
  if (v55 <= 0.0)
  {
    v60 = *v49.i32 < *&v52.i32[1] || *v49.i32 < v46.f32[2];
    if (v60)
    {
      if (*&v52.i32[1] <= v46.f32[2])
      {
        v67 = vzip2q_s32(v49, v52).u64[0];
        v68 = __PAIR64__(v49.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v46.f32[2] + 1.0) - *v49.i32) - *&v52.i32[1])));
        v69 = vdup_lane_s32(*v52.i8, 0);
        v70 = vsub_f32(*v49.i8, v69);
        v69.i32[0] = v68.i32[0];
        v69.i32[0] = vmul_f32(v68, v69).u32[0];
        v69.i32[1] = v70.i32[1];
        *v57.f32 = vadd_f32(v67, *v46.f32);
        *&v57.u32[2] = v69;
        v58 = 0.5 / v68.f32[0];
        goto LABEL_17;
      }

      v62 = sqrtf(((*&v52.i32[1] + 1.0) - *v49.i32) - v46.f32[2]);
      v66.f32[0] = *&v49.i32[1] + *v52.i32;
      v61 = vzip2q_s32(v49, v52).u64[0];
      v66.f32[1] = v62 * v62;
      *&v66.u32[2] = vext_s8(vadd_f32(*v46.f32, v61), vsub_f32(*v46.f32, v61), 4uLL);
    }

    else
    {
      v62 = sqrtf(((*v49.i32 + 1.0) - *&v52.i32[1]) - v46.f32[2]);
      v66.f32[0] = v62 * v62;
      v63 = *&v49.i32[1] + *v52.i32;
      v64 = vzip2q_s32(v49, v52).u64[0];
      LODWORD(v65) = vadd_f32(v64, *v46.f32).u32[0];
      HIDWORD(v65) = vsub_f32(v64, *&v46).i32[1];
      v66.f32[1] = v63;
      v66.i64[1] = v65;
    }

    v59 = vmulq_n_f32(v66, 0.5 / v62);
    goto LABEL_26;
  }

  v56 = sqrtf(v55 + 1.0);
  *v57.f32 = vsub_f32(*&vzip2q_s32(v52, vuzp1q_s32(v52, v46)), *&vtrn2q_s32(v46, vzip2q_s32(v46, v49)));
  v57.f32[2] = *&v49.i32[1] - *v52.i32;
  v57.f32[3] = v56 * v56;
  v58 = 0.5 / v56;
LABEL_17:
  v59 = vmulq_n_f32(v57, v58);
LABEL_26:
  a1[4] = v59;
  a1[5].i32[3] = v34.i32[3] & 0xFFFFFFF8 | 4;
}

void sub_1AF1CC674(__n128 *a1, __n128 a2)
{
  v3 = a1[5].n128_u32[3];
  if ((v3 & 4) == 0)
  {
    v4 = a2;
    sub_1AF1CC6C8(a1);
    a2 = v4;
    v3 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v3 & 0xFFFFFFF4;
  a1[4] = a2;
}

__n128 sub_1AF1CC6C8(uint64_t a1)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF198(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 92) & 4) != 0)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF210(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v21 = vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), *a1);
  v22 = (v21.f32[2] + vaddv_f32(*v21.f32)) < 0.0;
  v23 = 1.0;
  if (v22)
  {
    v23 = -1.0;
  }

  v24 = vmulq_f32(*a1, *a1);
  v25 = vmulq_f32(v18, v18);
  v26 = vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8));
  v27 = vextq_s8(v24, v24, 8uLL);
  *v27.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v27.f32, *&vextq_s8(v25, v25, 8uLL)), v26));
  v28 = vmulq_f32(v19, v19);
  v27.i32[2] = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
  result = vmulq_n_f32(v27, v23);
  result.n128_u32[3] = HIDWORD(*(a1 + 80));
  *(a1 + 80) = result;
  *(a1 + 92) = result.n128_u32[3] | 4;
  return result;
}

double sub_1AF1CC7E0(float32x4_t *a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v9 = a1[5].i32[3];
  if ((v9 & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = a1[5].i32[3];
  }

  v10 = v9 & 3;
  if (v10 > 1)
  {
    v14.i64[0] = 0;
    if (v10 == 2)
    {
      sub_1AF1DAEC4(a1[4]);
      v14.i64[0] = v27;
    }
  }

  else if (v10)
  {
    v14 = a1[4];
  }

  else
  {
    _Q2 = a1[4];
    v12 = vmulq_f32(_Q2, _Q2);
    v13 = vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
    v14.i64[0] = 0;
    if (v13 != 0.0)
    {
      LODWORD(v15) = HIDWORD(*&a1[4]);
      LODWORD(_S9) = HIDWORD(a1[4].i64[0]);
      LODWORD(v17) = a1[4].i64[1];
      __asm { FMLA            S1, S9, V2.S[3] }

      v23 = _S1 / v13;
      v24 = (_S1 / v13);
      if (v24 <= 0.4999)
      {
        if (v24 >= -0.4999)
        {
          v29 = *&v12.i32[1];
          v30 = v12.i64[1];
          v32 = a1[4];
          v33 = *v12.i32;
          v35 = atan2f(((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])) + ((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])), *&v12.i32[3] + (*&v12.i32[2] + (-*v12.i32 - *&v12.i32[1])));
          v34 = asinf(v23 + v23);
          atan2f(((v17 * v15) + (v32.f32[0] * _S9)) + ((v17 * v15) + (v32.f32[0] * _S9)), *(&v30 + 1) + ((v33 - v29) - *&v30));
          v14.i64[0] = __PAIR64__(LODWORD(v34), LODWORD(v35));
          return *v14.i64;
        }

        v28 = atan2f(COERCE_FLOAT(*&a1[4]), _Q2.f32[3]);
        v14.f32[0] = v28 + v28;
        v26 = &dword_1AFE21DB8;
      }

      else
      {
        v25 = atan2f(COERCE_FLOAT(*&a1[4]), _Q2.f32[3]);
        v14.f32[0] = v25 + v25;
        v26 = &dword_1AFE21AFC;
      }

      v14.i32[1] = *v26;
    }
  }

  return *v14.i64;
}

void sub_1AF1CC980(__n128 *a1, __n128 a2)
{
  v3 = a1[5].n128_u32[3];
  if ((v3 & 4) == 0)
  {
    v4 = a2;
    sub_1AF1CC6C8(a1);
    a2 = v4;
    v3 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v3 & 0xFFFFFFF4 | 1;
  a1[4] = a2;
}

void sub_1AF1CC9D8(float32x4_t *a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v9 = a1[5].i32[3];
  if ((v9 & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = a1[5].i32[3];
  }

  if ((v9 & 3u) <= 1)
  {
    if ((v9 & 3) != 0)
    {
      *v19.i64 = sub_1AF1DADD0(a1[4]);
      v9 = a1[5].i32[3];
    }

    else
    {
      v10 = a1[4];
      v11 = vmulq_f32(v10, v10);
      v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
      v12 = vdupq_lane_s32(*v11.f32, 0);
      v12.i32[3] = 0;
      v13 = vrsqrteq_f32(v12);
      v14 = vmulq_f32(v13, vrsqrtsq_f32(v12, vmulq_f32(v13, v13)));
      v15 = vmulq_f32(v10, vmulq_f32(v14, vrsqrtsq_f32(v12, vmulq_f32(v14, v14))));
      v16 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v11.f32[0] != 0.0)), 0x1FuLL));
      v16.i32[3] = 0;
      v20 = vbslq_s8(vcltzq_s32(v16), v15, v10);
      v17 = atan2f(sqrtf(v11.f32[0]), v10.f32[3]);
      v18 = v20;
      *&v18.i32[3] = v17 + v17;
      v19 = v18;
    }

    goto LABEL_9;
  }

  v19 = 0uLL;
  if ((v9 & 3) != 2)
  {
LABEL_9:
    a1[4] = v19;
    a1[5].i32[3] = v9 & 0xFFFFFFFC | 2;
  }
}

void sub_1AF1CCAD8(__n128 *a1, __n128 a2)
{
  v3 = a1[5].n128_u32[3];
  if ((v3 & 4) == 0)
  {
    v4 = a2;
    sub_1AF1CC6C8(a1);
    a2 = v4;
    v3 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v3 & 0xFFFFFFF4 | 2;
  a1[4] = a2;
}

__n128 sub_1AF1CCB38(__n128 *a1, __n128 result)
{
  result.n128_u32[3] = 1.0;
  a1[3] = result;
  return result;
}

__n128 sub_1AF1CCB48(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  if ((*(a1 + 92) & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 80);
}

__n128 sub_1AF1CCB7C(uint64_t a1, __n128 result)
{
  v3 = *(a1 + 92);
  if ((v3 & 4) == 0)
  {
    v61 = result;
    if ((v3 & 8) == 0)
    {
      v4 = sub_1AF0D5194();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDF288(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    if ((*(a1 + 92) & 4) != 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDF300(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = vmulq_f32(*a1, *a1);
    v23 = vmulq_f32(v20, v20);
    v24 = vmulq_f32(v21, v21);
    v25 = vzip2q_s32(v22, v24);
    v26 = vzip1q_s32(vzip1q_s32(v22, v24), v23);
    v27 = vtrn2q_s32(v22, v23);
    v27.i32[2] = v24.i32[1];
    v28 = vaddq_f32(vzip1q_s32(v25, vdupq_laneq_s32(v23, 2)), vaddq_f32(v26, v27));
    v27.i64[0] = 0x80000000800000;
    v27.i64[1] = 0x80000000800000;
    v29 = vcgeq_f32(v27, v28);
    v28.i32[3] = 0;
    v30 = vrsqrteq_f32(v28);
    v31 = vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)));
    v32 = v29;
    v32.i32[3] = 0;
    v33 = vbslq_s8(vcltzq_s32(v32), v28, vmulq_f32(v31, vrsqrtsq_f32(v28, vmulq_f32(v31, v31))));
    v34 = vmulq_n_f32(*a1, v33.f32[0]);
    v35 = vmulq_lane_f32(v20, *v33.f32, 1);
    v36 = vmulq_laneq_f32(v21, v33, 2);
    v37 = vuzp1q_s32(v36, v36);
    v38 = vuzp1q_s32(v35, v35);
    v39 = v34;
    if (v29.i32[0])
    {
      v40 = vmlaq_f32(vmulq_f32(vextq_s8(v37, v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(v38, v35, 0xCuLL));
      v39 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    }

    v41 = vuzp1q_s32(v34, v34);
    v42 = v35;
    if (v29.i32[1])
    {
      v43 = vmlaq_f32(vmulq_f32(vextq_s8(v41, v34, 0xCuLL), vnegq_f32(v36)), v34, vextq_s8(v37, v36, 0xCuLL));
      v42 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
    }

    if (v29.i32[2])
    {
      v44 = vmlaq_f32(vmulq_f32(vextq_s8(v38, v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(v41, v34, 0xCuLL));
      v36 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
    }

    v45 = (*v39.i32 + *&v42.i32[1]) + v36.f32[2];
    if (v45 > 0.0)
    {
      v46 = sqrtf(v45 + 1.0);
      *v47.f32 = vsub_f32(*&vzip2q_s32(v42, vuzp1q_s32(v42, v36)), *&vtrn2q_s32(v36, vzip2q_s32(v36, v39)));
      v47.f32[2] = *&v39.i32[1] - *v42.i32;
      v47.f32[3] = v46 * v46;
      v48 = 0.5 / v46;
LABEL_16:
      v49 = vmulq_n_f32(v47, v48);
LABEL_25:
      *(a1 + 64) = v49;
      v3 = *(a1 + 92) & 0xFFFFFFF8 | 4;
      result = v61;
      goto LABEL_26;
    }

    if (*v39.i32 < *&v42.i32[1] || *v39.i32 < v36.f32[2])
    {
      if (*&v42.i32[1] <= v36.f32[2])
      {
        v57 = vzip2q_s32(v39, v42).u64[0];
        v58 = __PAIR64__(v39.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v36.f32[2] + 1.0) - *v39.i32) - *&v42.i32[1])));
        v59 = vdup_lane_s32(*v42.i8, 0);
        v60 = vsub_f32(*v39.i8, v59);
        v59.i32[0] = v58.i32[0];
        v59.i32[0] = vmul_f32(v58, v59).u32[0];
        v59.i32[1] = v60.i32[1];
        *v47.f32 = vadd_f32(v57, *v36.f32);
        *&v47.u32[2] = v59;
        v48 = 0.5 / v58.f32[0];
        goto LABEL_16;
      }

      v52 = sqrtf(((*&v42.i32[1] + 1.0) - *v39.i32) - v36.f32[2]);
      v56.f32[0] = *&v39.i32[1] + *v42.i32;
      v51 = vzip2q_s32(v39, v42).u64[0];
      v56.f32[1] = v52 * v52;
      *&v56.u32[2] = vext_s8(vadd_f32(*v36.f32, v51), vsub_f32(*v36.f32, v51), 4uLL);
    }

    else
    {
      v52 = sqrtf(((*v39.i32 + 1.0) - *&v42.i32[1]) - v36.f32[2]);
      v56.f32[0] = v52 * v52;
      v53 = *&v39.i32[1] + *v42.i32;
      v54 = vzip2q_s32(v39, v42).u64[0];
      LODWORD(v55) = vadd_f32(v54, *v36.f32).u32[0];
      HIDWORD(v55) = vsub_f32(v54, *&v36).i32[1];
      v56.f32[1] = v53;
      v56.i64[1] = v55;
    }

    v49 = vmulq_n_f32(v56, 0.5 / v52);
    goto LABEL_25;
  }

LABEL_26:
  *(a1 + 92) = v3 & 0xFFFFFFF7;
  result.n128_u32[3] = *(a1 + 92);
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AF1CCE54(float32x4_t *a1)
{
  if ((a1[5].i8[12] & 8) == 0)
  {
    sub_1AF1CBF58(a1);
  }

  v2 = vdupq_n_s32(0x3727C5ACu);
  return vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v2, vabdq_f32(a1[1], *(MEMORY[0x1E69E9B18] + 16))), vcgeq_f32(v2, vabdq_f32(*a1, *MEMORY[0x1E69E9B18]))), vandq_s8(vcgeq_f32(v2, vabdq_f32(a1[2], *(MEMORY[0x1E69E9B18] + 32))), vcgeq_f32(v2, vabdq_f32(a1[3], *(MEMORY[0x1E69E9B18] + 48)))))) >> 31;
}

double sub_1AF1CCEE0(uint64_t a1)
{
  *(a1 + 92) = *(a1 + 92) & 0xFFFFFFF3 | 8;
  *a1 = xmmword_1AFE20150;
  *(a1 + 16) = xmmword_1AFE20160;
  result = 0.0;
  *(a1 + 32) = xmmword_1AFE20180;
  *(a1 + 48) = xmmword_1AFE201A0;
  return result;
}

double sub_1AF1CCF1C(uint64_t a1)
{
  *(a1 + 92) |= 8u;
  *a1 = xmmword_1AFE20150;
  *(a1 + 16) = xmmword_1AFE20160;
  result = 0.0;
  *(a1 + 32) = xmmword_1AFE20180;
  *(a1 + 48) = xmmword_1AFE201A0;
  return result;
}

void sub_1AF1CCF54(uint64_t a1, void *__dst, size_t __n, int a4, unsigned int a5, double a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  if (a5 >= 4)
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF378(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  if (a4 > 5)
  {
    switch(a4)
    {
      case 6:
        v25 = *(a1 + 48);
        goto LABEL_23;
      case 7:
        if ((*(a1 + 92) & 4) == 0)
        {
          sub_1AF1CC338(a1, a6, a7, a8, a9, a10, a11, a12);
        }

        v25 = *(a1 + 80);
        goto LABEL_23;
      case 8:
        if ((*(a1 + 92) & 8) == 0)
        {
          sub_1AF1CBF58(a1);
        }

        v26 = *(a1 + 16);
        v27 = *(a1 + 32);
        v28 = *(a1 + 48);
        v30[0] = *a1;
        v30[1] = v26;
        v30[2] = v27;
        v30[3] = v28;
        goto LABEL_24;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        *&v25 = sub_1AF1CC1F0(a1, a6, a7, a8, a9, a10, a11, a12);
        goto LABEL_23;
      case 4:
        sub_1AF1CC9D8(a1, a6, a7, a8, a9, a10, a11, a12);
        goto LABEL_23;
      case 5:
        *&v25 = sub_1AF1CC7E0(a1, a6, a7, a8, a9, a10, a11, a12);
LABEL_23:
        v30[0] = v25;
LABEL_24:
        memcpy(__dst, v30 + 4 * a5, __n);
        return;
    }
  }

  v29 = sub_1AF0D5194();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF3F0(v29);
  }
}

void sub_1AF1CD098(uint64_t a1, __int128 *a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v14 = *a2;
      goto LABEL_18;
    }

    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF434(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  *&v14 = sub_1AF1CC1F0(a1, a5, a6, a7, a8, a9, a10, a11);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      DWORD2(v14) = *a2;
      goto LABEL_18;
    }

    if (a4 == 3)
    {
      HIDWORD(v14) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!a4)
    {
      LODWORD(v14) = *a2;
      goto LABEL_18;
    }

    if (a4 == 1)
    {
      DWORD1(v14) = *a2;
      goto LABEL_18;
    }
  }

  v25 = v14;
  v23 = sub_1AF0D5194();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF4AC();
  }

  v14 = v25;
LABEL_18:
  v24 = *(a1 + 92);
  if ((v24 & 4) == 0)
  {
    v26 = v14;
    sub_1AF1CC6C8(a1);
    v24 = *(a1 + 92);
    v14 = v26;
  }

  *(a1 + 92) = v24 & 0xFFFFFFF4;
  *(a1 + 64) = v14;
}

void sub_1AF1CD1B0(uint64_t a1, __int128 *a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v14 = *a2;
      goto LABEL_18;
    }

    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF434(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  sub_1AF1CC9D8(a1, a5, a6, a7, a8, a9, a10, a11);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      DWORD2(v14) = *a2;
      goto LABEL_18;
    }

    if (a4 == 3)
    {
      HIDWORD(v14) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!a4)
    {
      LODWORD(v14) = *a2;
      goto LABEL_18;
    }

    if (a4 == 1)
    {
      DWORD1(v14) = *a2;
      goto LABEL_18;
    }
  }

  v25 = v14;
  v23 = sub_1AF0D5194();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF514();
  }

  v14 = v25;
LABEL_18:
  v24 = *(a1 + 92);
  if ((v24 & 4) == 0)
  {
    v26 = v14;
    sub_1AF1CC6C8(a1);
    v24 = *(a1 + 92);
    v14 = v26;
  }

  *(a1 + 92) = v24 & 0xFFFFFFF4 | 2;
  *(a1 + 64) = v14;
}

void sub_1AF1CD2CC(uint64_t a1, uint64_t a2, unint64_t a3, int a4, __n128 a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  if (a3 >= 0xC)
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = *(a2 + 8);
    goto LABEL_17;
  }

  if (a3 != 4)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF434(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22.n128_f64[0] = sub_1AF1CC7E0(a1, a5.n128_f64[0], a6, a7, a8, a9, a10, a11);
  switch(a4)
  {
    case 2:
      v23.n128_u64[0] = v22.n128_u64[0];
      v23.n128_u32[2] = *a2;
      goto LABEL_13;
    case 1:
      v23.n128_u32[0] = v22.n128_u32[0];
      v23.n128_u32[1] = *a2;
      goto LABEL_11;
    case 0:
      v23.n128_u32[0] = *a2;
      v23.n128_u32[1] = v22.n128_u32[1];
LABEL_11:
      v23.n128_u32[2] = v22.n128_u32[2];
LABEL_13:
      v23.n128_u32[3] = v22.n128_u32[3];
      a5 = v23;
      goto LABEL_17;
  }

  v26 = v22;
  v24 = sub_1AF0D5194();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF57C();
  }

  a5 = v26;
LABEL_17:
  v25 = *(a1 + 92);
  if ((v25 & 4) == 0)
  {
    v27 = a5;
    sub_1AF1CC6C8(a1);
    a5 = v27;
    v25 = *(a1 + 92);
  }

  *(a1 + 92) = v25 & 0xFFFFFFF4 | 1;
  *(a1 + 64) = a5;
}

float sub_1AF1CD3EC(__n128 *a1, unsigned __int32 *a2, unint64_t a3, int a4, __n128 a5)
{
  if (a3 < 0xC)
  {
    if (a3 != 4)
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDF434(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v17 = a1[3];
    if (a4 == 2)
    {
      v17.n128_u32[2] = *a2;
    }

    else
    {
      if (a4 == 1)
      {
        a5 = a1[3];
        a5.n128_u32[1] = *a2;
      }

      else
      {
        if (a4)
        {
          v20 = a1[3];
          v18 = sub_1AF0D5194();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDF5E4();
          }

          v17 = v20;
          goto LABEL_16;
        }

        a5.n128_u32[0] = *a2;
        a5.n128_u32[1] = HIDWORD(a1[3].n128_u64[0]);
      }

      a5.n128_u32[2] = a1[3].n128_u64[1];
      v17 = a5;
    }

LABEL_16:
    v7.n128_u32[0] = 1.0;
    v17.n128_u32[3] = 1.0;
    a1[3] = v17;
    return v7.n128_f32[0];
  }

  v7.n128_u64[0] = *a2;
  v7.n128_u32[2] = a2[2];
  v7.n128_u32[3] = 1.0;
  a1[3] = v7;
  return v7.n128_f32[0];
}

void sub_1AF1CD4E8(float32x4_t *a1, __int32 *a2, unint64_t a3, int a4, __n128 a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  if (a3 < 0xC)
  {
    if (a3 != 4)
    {
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDF434(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    if ((a1[5].i8[12] & 4) == 0)
    {
      sub_1AF1CC338(a1, a5.n128_f64[0], a6, a7, a8, a9, a10, a11);
    }

    if (a4 == 2)
    {
      a1[5].i32[2] = *a2;
    }

    else if (a4 == 1)
    {
      a1[5].i32[1] = *a2;
    }

    else if (a4)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDF64C();
      }
    }

    else
    {
      a1[5].i32[0] = *a2;
    }

    a1[5].i32[3] &= ~8u;
  }

  else
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = a2[2];

    sub_1AF1CCB7C(a1, a5);
  }
}

_OWORD *sub_1AF1CD5F0(_OWORD *result, _OWORD *a2, size_t a3, unsigned int a4)
{
  v4 = result;
  if (a3 == 96)
  {
    v8 = a2[1];
    *result = *a2;
    result[1] = v8;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[5];
    result[4] = a2[4];
    result[5] = v11;
    result[2] = v9;
    result[3] = v10;
  }

  else
  {
    if (a3 == 64)
    {
      v5 = a2[1];
      v6 = a2[2];
      v7 = a2[3];
      *result = *a2;
      result[1] = v5;
      result[2] = v6;
      result[3] = v7;
    }

    else
    {
      result = memcpy(result + 4 * a4, a2, a3);
    }

    *(v4 + 23) = 8;
  }

  return result;
}

void sub_1AF1CD660()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF6B4(v0);
  }
}

void sub_1AF1CD69C(__n128 *a1, unsigned __int32 *a2, unint64_t a3, int a4, unsigned int a5, __n128 a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  if (a4 > 5)
  {
    switch(a4)
    {
      case 6:
        if (a5 >= 3)
        {
          v40 = sub_1AF0D5194();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF770(v40, v41, v42, v43, v44, v45, v46, v47);
          }
        }

        sub_1AF1CD3EC(a1, a2, a3, a5, a6);
        break;
      case 7:
        if (a5 >= 3)
        {
          v56 = sub_1AF0D5194();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF6F8(v56, v57, v58, v59, v60, v61, v62, v63);
          }
        }

        sub_1AF1CD4E8(a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12);
        break;
      case 8:
        if (a5 >= 0x10)
        {
          v24 = sub_1AF0D5194();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF950(v24, v25, v26, v27, v28, v29, v30, v31);
          }
        }

        sub_1AF1CD5F0(a1, a2, a3, a5);
        break;
      default:
LABEL_24:

        sub_1AF1CD660();
        return;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        if (a5 >= 4)
        {
          v32 = sub_1AF0D5194();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF8D8(v32, v33, v34, v35, v36, v37, v38, v39);
          }
        }

        sub_1AF1CD098(a1, a2, a3, a5, a6.n128_f64[0], a7, a8, a9, a10, a11, a12);
        break;
      case 4:
        if (a5 >= 4)
        {
          v48 = sub_1AF0D5194();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF860(v48, v49, v50, v51, v52, v53, v54, v55);
          }
        }

        sub_1AF1CD1B0(a1, a2, a3, a5, a6.n128_f64[0], a7, a8, a9, a10, a11, a12);
        break;
      case 5:
        if (a5 >= 3)
        {
          v16 = sub_1AF0D5194();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF7E8(v16, v17, v18, v19, v20, v21, v22, v23);
          }
        }

        sub_1AF1CD2CC(a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12);
        return;
      default:
        goto LABEL_24;
    }
  }
}

void sub_1AF1CD8B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_1AF1CD8D8()
{
  if (qword_1ED734678 != -1)
  {
    sub_1AFDDF9C8();
  }

  return qword_1ED734670;
}

uint64_t sub_1AF1CD910()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734670 = result;
  qword_1ED722C70 = sub_1AF1CE61C;
  return result;
}

uint64_t sub_1AF1CD954(int a1)
{
  v2 = sub_1AF288070(a1);
  v3 = v2;
  if (!a1 || v2)
  {
    v6 = (v2 + 19) & -v2;
    v7 = ((v2 + 19) & -v2);
    if (qword_1ED734678 != -1)
    {
      sub_1AFDDF9C8();
    }

    result = sub_1AF0D160C(qword_1ED734670, v3 + v7 - 12);
    *(result + 19) = v6;
    *(result + 18) = 0;
    *(result + 16) = a1;
  }

  else
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDF9DC(v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF1CD9FC(int a1)
{
  v2 = sub_1AF1CD954(a1);
  v3 = v2;
  if (a1 == 10)
  {
    v4 = sub_1AF1CDA60(v2);
    *v4 = xmmword_1AFE20150;
    v4[1] = xmmword_1AFE20160;
    v4[2] = xmmword_1AFE20180;
    v4[3] = xmmword_1AFE201A0;
  }

  return v3;
}

uint64_t sub_1AF1CDA60(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + *(a1 + 19);
}

uint64_t sub_1AF1CDAAC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF1CDAF4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 18);
}

uint64_t sub_1AF1CDB3C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF288070(*(a1 + 16));
}

CFTypeRef sub_1AF1CDB88(uint64_t a1, const void *a2)
{
  if (sub_1AF1CDAF4(a1) == 1)
  {
    v4 = sub_1AF1CDA60(a1);
    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *v4 = result;
  }

  else
  {
    v6 = sub_1AF1CDB3C(a1);
    v7 = sub_1AF1CDA60(a1);

    return memcpy(v7, a2, v6);
  }

  return result;
}

size_t sub_1AF1CDC30(uint64_t a1, void *a2)
{
  v4 = sub_1AF1CDB3C(a1);
  v5 = sub_1AF1CDA60(a1);
  memcpy(a2, v5, v4);
  return v4;
}

void sub_1AF1CDC80(const char *a1, int *a2, int a3)
{
  if (a3)
  {
    v5 = sub_1AF2891EC(a1);
    if (a3 >= 1)
    {
      v6 = v5;
      v7 = 0;
      v8 = MEMORY[0x1E69E9830];
      while (1)
      {
        v19 = 0;
        v9 = strtod(v6, &v19);
        *&v9 = v9;
        a2[v7] = LODWORD(v9);
        if (v6 == v19)
        {
          break;
        }

        v10 = v19 - 1;
        do
        {
          v11 = v10[1];
          if ((v11 & 0x80000000) != 0)
          {
            v12 = __maskrune(v10[1], 0x4000uLL);
          }

          else
          {
            v12 = *(v8 + 4 * v11 + 60) & 0x4000;
          }

          ++v10;
        }

        while (v12);
        if (v11 == 44)
        {
          v6 = v10 + 1;
        }

        else
        {
          v6 = v10;
        }

        if (++v7 == a3)
        {
          return;
        }
      }

      if (v7 == 1 && a3 != 1)
      {
        v13 = 0;
        v15 = *a2;
        v14 = a2 + 2;
        LODWORD(v9) = v15;
        v16 = vdupq_n_s64(a3 - 2);
        do
        {
          v17 = vdupq_n_s64(v13);
          v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_1AFE21110)));
          if (vuzp1_s16(v18, *&v9).u8[0])
          {
            *(v14 - 1) = LODWORD(v9);
          }

          if (vuzp1_s16(v18, *&v9).i8[2])
          {
            *v14 = LODWORD(v9);
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_1AFE21100)))).i32[1])
          {
            v14[1] = LODWORD(v9);
            v14[2] = LODWORD(v9);
          }

          v13 += 4;
          v14 += 4;
        }

        while (((a3 + 2) & 0xFFFFFFFC) != v13);
      }
    }
  }
}

char *sub_1AF1CDDFC(char *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    return result;
  }

  result = sub_1AF2891EC(result);
  v10 = result;
  if (a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = a3;
  v7 = MEMORY[0x1E69E9830];
  do
  {
    *(a2 + 8 * v5) = strtod(v10, &v10);
    for (i = v10 + 1; ; ++i)
    {
      v9 = *(i - 1);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      result = (*(v7 + 4 * v9 + 60) & 0x4000);
      if (!result)
      {
        goto LABEL_10;
      }

LABEL_9:
      v10 = i;
    }

    result = __maskrune(*(i - 1), 0x4000uLL);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v9 == 44)
    {
      v10 = i;
    }

    ++v5;
  }

  while (v5 != v6);
  return result;
}

CFStringRef sub_1AF1CDEC8(const __CFString *a1, const __CFString *a2)
{
  v3 = CFStringFind(a1, a2, 0);
  if (v3.location == -1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1) - (v3.location + v3.length);
  if (v4.length < 1)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];

  v4.location = v3.location + v3.length;
  return CFStringCreateWithSubstring(v5, a1, v4);
}

BOOL sub_1AF1CDF54(uint64_t a1, const __CFString *a2)
{
  v4 = sub_1AF1CDA60(a1);
  v5 = *(a1 + 16);
  if (v5 <= 6)
  {
    switch(v5)
    {
      case 1u:
        DoubleValue = CFStringGetDoubleValue(a2);
        *v4 = DoubleValue;
        break;
      case 2u:
        *v4 = CFStringGetIntValue(a2);
        break;
      case 3u:
        if (CFStringCompare(a2, @"true", 0))
        {
          v8 = 1;
        }

        else if (CFStringCompare(a2, @"false", 0))
        {
          v8 = 0;
        }

        else
        {
          v8 = CFStringGetIntValue(a2) != 0;
        }

        *v4 = v8;
        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (*(a1 + 16) > 8u)
  {
    if (v5 == 9)
    {
      v24 = 0uLL;
      v22 = sub_1AF1CDEC8(a2, @"vec4(");
      if (v22)
      {
        v23 = v22;
        sub_1AF1CDC80(v22, &v24, 4);
        CFRelease(v23);
      }

      *v4 = v24;
      return 1;
    }

    if (v5 != 45)
    {
      goto LABEL_17;
    }

    *v4 = CFStringGetIntValue(a2);
    return 1;
  }

  if (v5 == 7)
  {
    v19 = 0;
    *&v24 = 0;
    v20 = sub_1AF1CDEC8(a2, @"vec2(");
    if (v20)
    {
      v21 = v20;
      sub_1AF1CDC80(v20, &v24, 2);
      CFRelease(v21);
      v19 = v24;
    }

    *v4 = v19;
    return 1;
  }

  if (v5 == 8)
  {
    v24 = 0uLL;
    v6 = sub_1AF1CDEC8(a2, @"vec3(");
    if (v6)
    {
      v7 = v6;
      sub_1AF1CDC80(v6, &v24, 3);
      CFRelease(v7);
    }

    *v4 = v24;
    *(v4 + 8) = DWORD2(v24);
    return 1;
  }

LABEL_17:
  v10 = sub_1AF0D5194();
  result = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1AFDDFA98(v10, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  return result;
}

float32_t sub_1AF1CE158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFB10(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDFB88(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFC00(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF1CDAAC(a1);
  if (v30 != sub_1AF1CDAAC(a2))
  {
    v31 = sub_1AF0D5194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFC78(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  if (v30 != sub_1AF1CDAAC(a3))
  {
    v39 = sub_1AF0D5194();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFCF0(v39, v40, v41, v42, v43, v44, v45, v46);
    }
  }

  v47 = sub_1AF1CDA60(a1);
  v48 = sub_1AF1CDA60(a2);
  v49 = sub_1AF1CDA60(a3);
  return sub_1AF288EA0(v30, v47, v48, v49, v50);
}

CFStringRef sub_1AF1CE2AC(__int16 *a1)
{
  v2 = sub_1AF3753A8(a1);
  v3 = sub_1AF2883D8(a1[8]);
  switch(a1[8])
  {
    case 1:
      v12 = *MEMORY[0x1E695E480];
      v13 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v12, 0, @"<%s %p | %@ %f>", v2, a1, v3, v13);
    case 2:
      v4 = *MEMORY[0x1E695E480];
      v5 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v4, 0, @"<%s %p | %@ %d>", v2, a1, v3, v5);
    case 3:
    case 15:
      v4 = *MEMORY[0x1E695E480];
      v5 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v4, 0, @"<%s %p | %@ %d>", v2, a1, v3, v5);
    case 4:
      v4 = *MEMORY[0x1E695E480];
      v5 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v4, 0, @"<%s %p | %@ %d>", v2, a1, v3, v5);
    case 5:
      v11 = *MEMORY[0x1E695E480];
      v28 = sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v11, 0, @"<%s %p | %@ %p>", v2, a1, v3, v28);
    case 6:
      v12 = *MEMORY[0x1E695E480];
      v13 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v12, 0, @"<%s %p | %@ %f>", v2, a1, v3, v13);
    case 7:
      v15 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s %p | %@ [%f %f]>", v2, a1, v3, *&v15, *(&v15 + 1));
    case 8:
      v14 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s %p | %@ [%f %f %f]>", v2, a1, v3, *&v14, *(&v14 + 1), *(&v14 + 2));
    case 9:
    case 12:
      v6 = *sub_1AF1CDA60(a1);
      v7 = *MEMORY[0x1E695E480];
      v30 = *(&v6 + 2);
      v31 = *(&v6 + 3);
      v26 = *&v6;
      v29 = *(&v6 + 1);
      v8 = @"<%s %p | %@ [%f %f %f %f]>";
      v25 = v3;
      return CFStringCreateWithFormat(v7, 0, v8, v2, a1, v25, *&v26, *&v29, *&v30, *&v31, *&v32, *&v33, *&v34, *&v35, *&v36, *&v37, *&v38, *&v39, *&v40, *&v41, *&v42, *&v43);
    case 10:
      v16 = sub_1AF1CDA60(a1);
      v17 = *(v16 + 16);
      v18 = COERCE_FLOAT(*v16);
      v19 = *(v16 + 32);
      v20 = *(v16 + 48);
      v21 = COERCE_FLOAT(HIDWORD(*v16));
      v22 = COERCE_FLOAT(*(v16 + 8));
      v23 = COERCE_FLOAT(HIDWORD(*v16));
      LODWORD(v24) = HIDWORD(*(v16 + 16));
      v7 = *MEMORY[0x1E695E480];
      v42 = *(&v20 + 2);
      v43 = *(&v20 + 3);
      v40 = *&v20;
      v41 = *(&v20 + 1);
      v38 = *(&v19 + 2);
      v39 = *(&v19 + 3);
      v36 = *&v19;
      v37 = *(&v19 + 1);
      v34 = *(&v17 + 2);
      v35 = *(&v17 + 3);
      v32 = *&v17;
      v33 = v24;
      v30 = v22;
      v31 = v23;
      v25 = v3;
      v8 = @"<%s %p | %@ [%f %f %f %f][%f %f %f %f][%f %f %f %f][%f %f %f %f]>";
      v26 = v18;
      v29 = v21;
      return CFStringCreateWithFormat(v7, 0, v8, v2, a1, v25, *&v26, *&v29, *&v30, *&v31, *&v32, *&v33, *&v34, *&v35, *&v36, *&v37, *&v38, *&v39, *&v40, *&v41, *&v42, *&v43);
    case 11:
    case 14:
      goto LABEL_6;
    case 13:
      v4 = *MEMORY[0x1E695E480];
      v5 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v4, 0, @"<%s %p | %@ %d>", v2, a1, v3, v5);
    case 16:
      v4 = *MEMORY[0x1E695E480];
      v5 = *sub_1AF1CDA60(a1);
      return CFStringCreateWithFormat(v4, 0, @"<%s %p | %@ %d>", v2, a1, v3, v5);
    default:
      if (a1[8] == 45)
      {
        v4 = *MEMORY[0x1E695E480];
        v5 = *sub_1AF1CDA60(a1);
        return CFStringCreateWithFormat(v4, 0, @"<%s %p | %@ %d>", v2, a1, v3, v5);
      }

      else
      {
LABEL_6:
        v9 = *MEMORY[0x1E695E480];
        v27 = sub_1AF1CDA60(a1);
        return CFStringCreateWithFormat(v9, 0, @"<%s %p | %@ ptr:%p>", v2, a1, v3, v27);
      }
  }
}

__CFArray *sub_1AF1CE61C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = 0;
  valuePtr = 2;
  v13 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v14);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v13);
  CFDictionarySetValue(v3, @"name", @"baseType");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = *(a1 + 16);
  v14 = 0;
  valuePtr = v8;
  v13 = sub_1AF1CDA60(a1);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v14);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v13);
  CFDictionarySetValue(v7, @"name", @"value");
  CFDictionarySetValue(v7, @"type", v9);
  CFDictionarySetValue(v7, @"address", v11);
  CFDictionarySetValue(v7, @"semantic", v10);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v10);
  CFRelease(v7);
  CFRelease(v11);
  CFRelease(v9);
  return Mutable;
}

const __CFDictionary *sub_1AF1CE864(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1CE8BC(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1CE864(a1);
  if (v12)
  {
    sub_1AF1C3A90(v12, a1);
  }

  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, 1);
  if (a2)
  {
    sub_1AF1C3CB4(a2, a1);
  }
}

uint64_t sub_1AF1CE94C(uint64_t a1, uint64_t a2)
{
  sub_1AF1CEA20(a1);
  v4 = *(a1 + 200);
  if (v4 == 1)
  {
    v5 = *(a1 + 192);
    v6 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
    *(a1 + 192) = v6;
    *v6 = v5;
    *(*(a1 + 192) + 8) = a2;
    *(a1 + 200) = 2;
  }

  else if (*(a1 + 200))
  {
    v7 = v4 + 1;
    *(a1 + 200) = v7;
    v8 = malloc_type_realloc(*(a1 + 192), 8 * v7, 0x2004093837F09uLL);
    *(a1 + 192) = v8;
    v8[*(a1 + 200) - 1] = a2;
  }

  else
  {
    *(a1 + 200) = 1;
    *(a1 + 192) = a2;
  }

  return sub_1AF1CEA9C(a1);
}

void sub_1AF1CEA20(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  prof_beginFlame("CFXWorldLock", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Core/CFXWorld.m", 892);
  pthread_mutex_lock((a1 + 264));
  prof_endFlame();
}

uint64_t sub_1AF1CEA9C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return pthread_mutex_unlock((a1 + 264));
}

uint64_t sub_1AF1CEAE8(uint64_t result, uint64_t a2)
{
  if (*(result + 200))
  {
    v3 = result;
    sub_1AF1CEA20(result);
    v4 = *(v3 + 200);
    if (*(v3 + 200))
    {
      if (v4 == 1)
      {
        if (*(v3 + 192) == a2)
        {
          *(v3 + 200) = 0;
          *(v3 + 192) = 0;
        }
      }

      else
      {
        v5 = 0;
        v6 = 8;
        do
        {
          v7 = *(v3 + 192);
          if (*&v7[8 * v5] == a2)
          {
            if (v4 == 2)
            {
              v8 = *&v7[v6];
              free(v7);
              *(v3 + 192) = v8;
              LOWORD(v4) = 1;
              *(v3 + 200) = 1;
            }

            else
            {
              LOWORD(v4) = v4 - 1;
              *(v3 + 200) = v4;
              *&v7[8 * v5] = *&v7[8 * v4];
            }
          }

          ++v5;
          v6 -= 8;
        }

        while (v5 < v4);
      }
    }

    return sub_1AF1CEA9C(v3);
  }

  return result;
}

uint64_t sub_1AF1CEBC8(uint64_t a1, uint64_t a2)
{
  sub_1AF1CEA20(a1);
  if (*(a1 + 200))
  {
    if (*(a1 + 200) == 1)
    {
      (*(a2 + 16))(a2, *(a1 + 192));
    }

    else
    {
      v4 = 0;
      do
      {
        (*(a2 + 16))(a2, *(*(a1 + 192) + 8 * v4++));
      }

      while (v4 < *(a1 + 200));
    }
  }

  return sub_1AF1CEA9C(a1);
}

void sub_1AF1CEC60(uint64_t a1, void *a2)
{
  v4 = sub_1AF1BBBCC(a2);
  v5 = sub_1AF1CECF0(a1);
  v6 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
  sub_1AF158F5C(v5, v4, a2, v6);

  CFRelease(v6);
}

uint64_t sub_1AF1CECF0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void sub_1AF1CED38(uint64_t a1, void *a2)
{
  if (!*(a1 + 184))
  {
    *(a1 + 184) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  v4 = sub_1AF1BC054(a2);
  if (v4)
  {
    CFDictionarySetValue(*(a1 + 184), a2, v4);
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDFDE0(v5);
    }
  }

  sub_1AF133EE8(*(a1 + 120), a2);
}

void sub_1AF1CEDD4(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    CFDictionaryRemoveValue(v2, a2);
  }
}

uint64_t sub_1AF1CEDE4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

void sub_1AF1CEE2C(uint64_t a1, void *value)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFE24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDFE9C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  sub_1AF13407C(*(a1 + 120), value);
}

void sub_1AF1CEEB0(uint64_t a1, void *value)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFE24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDFE9C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  sub_1AF134150(*(a1 + 120), value);
}