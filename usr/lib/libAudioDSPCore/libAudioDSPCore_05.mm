short float *vDSP_vrampmul_fp16(short float *result, uint64_t a2, short float *a3, short float *a4, short float *a5, uint64_t a6, uint64_t a7)
{
  if (a2 == 1 && a6 == 1)
  {
    if (a7)
    {
      v7 = *a3;
      do
      {
        v8 = *result++;
        *a5++ = v7 * v8;
        v7 = *a3 + *a4;
        *a3 = v7;
        --a7;
      }

      while (a7);
    }
  }

  else if (a7)
  {
    v9 = *a3;
    do
    {
      *a5 = v9 * *result;
      v9 = *a3 + *a4;
      *a3 = v9;
      a5 += a6;
      result += a2;
      --a7;
    }

    while (a7);
  }

  return result;
}

short float *vDSP_vrampmuladd_fp16(short float *result, uint64_t a2, short float *a3, short float *a4, short float *a5, uint64_t a6, uint64_t a7)
{
  if (a2 == 1 && a6 == 1)
  {
    if (a7)
    {
      v7 = *a3;
      do
      {
        v8 = *result++;
        *a5 = *a5 + (v7 * v8);
        ++a5;
        v7 = *a3 + *a4;
        *a3 = v7;
        --a7;
      }

      while (a7);
    }
  }

  else if (a7)
  {
    v9 = *a3;
    do
    {
      *a5 = *a5 + (v9 * *result);
      v9 = *a3 + *a4;
      *a3 = v9;
      a5 += a6;
      result += a2;
      --a7;
    }

    while (a7);
  }

  return result;
}

float32x4_t vDSP_vhpsp(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1 || a4 != 1)
  {
    if (!a5)
    {
      return result;
    }

    if (a5 < 4)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v6 = 0;
    if (a2 != 1 || a4 != 1)
    {
      goto LABEL_9;
    }

    if (a5 >= 0x10)
    {
      v6 = a5 & 0xFFFFFFFFFFFFFFF0;
      v29 = (a1 + 16);
      v30 = a3 + 2;
      v31 = a5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v32 = *v29[-2].i8;
        v33 = vcvtq_f32_f16(*v32.i8);
        result = vcvt_hight_f32_f16(v32);
        v34 = vcvtq_f32_f16(*v29);
        v35 = vcvt_hight_f32_f16(*v29->i8);
        v30[-2] = v33;
        v30[-1] = result;
        *v30 = v34;
        v30[1] = v35;
        v30 += 4;
        v29 += 4;
        v31 -= 16;
      }

      while (v31);
      if (v6 == a5)
      {
        return result;
      }

      if ((a5 & 0xC) == 0)
      {
LABEL_9:
        v7 = a5 - v6;
        v8 = &a3->i32[v6 * a4];
        v9 = (a1 + 2 * v6 * a2);
        do
        {
          _H0 = *v9;
          __asm { FCVT            S0, H0 }

          *v8 = result.i32[0];
          v8 += a4;
          v9 += a2;
          --v7;
        }

        while (v7);
        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v36 = v6;
    v6 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = (a1 + 2 * v36);
    v38 = (a3 + 4 * v36);
    v39 = v36 - (a5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v40 = *v37++;
      result = vcvtq_f32_f16(v40);
      *v38++ = result;
      v39 += 4;
    }

    while (v39);
    if (v6 == a5)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
    return result;
  }

  if (a5 < 0x20)
  {
    v5 = 0;
LABEL_19:
    v24 = a5 - v5;
    v25 = &a3->i32[v5];
    v26 = (a1 + 2 * v5);
    do
    {
      v27 = *v26++;
      _H0 = v27;
      __asm { FCVT            S0, H0 }

      *v25++ = result.i32[0];
      --v24;
    }

    while (v24);
    return result;
  }

  v5 = a5 & 0xFFFFFFFFFFFFFFE0;
  v16 = (a1 + 32);
  v17 = a3 + 4;
  v18 = a5 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v20 = v16[-2];
    v19 = v16[-1];
    v22 = *v16;
    v21 = v16[1];
    v16 += 4;
    v23 = vcvtq_f32_f16(*v19.i8);
    result = vcvt_hight_f32_f16(v19);
    v17[-2] = v23;
    v17[-1] = result;
    v17[-4] = vcvtq_f32_f16(*v20.i8);
    v17[-3] = vcvt_hight_f32_f16(v20);
    v17[2] = vcvtq_f32_f16(*v21.i8);
    v17[3] = vcvt_hight_f32_f16(v21);
    *v17 = vcvtq_f32_f16(*v22.i8);
    v17[1] = vcvt_hight_f32_f16(v22);
    v17 += 8;
    v18 -= 32;
  }

  while (v18);
  if (v5 != a5)
  {
    goto LABEL_19;
  }

  return result;
}

double vDSP_vsphp(float32x4_t *a1, uint64_t a2, float16x8_t *a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1 || a4 != 1)
  {
    if (!a5)
    {
      return *_Q0.i64;
    }

    if (a5 < 4)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v6 = 0;
    if (a2 != 1 || a4 != 1)
    {
      goto LABEL_9;
    }

    if (a5 >= 0x10)
    {
      v6 = a5 & 0xFFFFFFFFFFFFFFF0;
      v31 = a1 + 2;
      v32 = a3 + 1;
      v33 = a5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v35 = v31[-2];
        v34 = v31[-1];
        v37 = *v31;
        v36 = v31[1];
        v31 += 4;
        v38 = vcvt_hight_f16_f32(vcvt_f16_f32(v35), v34);
        _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(v37), v36);
        v32[-1] = v38;
        *v32 = _Q0;
        v32 += 2;
        v33 -= 16;
      }

      while (v33);
      if (v6 == a5)
      {
        return *_Q0.i64;
      }

      if ((a5 & 0xC) == 0)
      {
LABEL_9:
        v7 = a5 - v6;
        v8 = &a3->i16[v6 * a4];
        v9 = &a1->i32[v6 * a2];
        do
        {
          _Q0.i32[0] = *v9;
          __asm { FCVT            H0, S0 }

          *v8 = _Q0.i16[0];
          v8 += a4;
          v9 += a2;
          --v7;
        }

        while (v7);
        return *_Q0.i64;
      }
    }

    else
    {
      v6 = 0;
    }

    v39 = v6;
    v6 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = (a1 + 4 * v39);
    v41 = (a3->i64 + 2 * v39);
    v42 = v39 - (a5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v43 = *v40++;
      *_Q0.i8 = vcvt_f16_f32(v43);
      *v41++ = _Q0.i64[0];
      v42 += 4;
    }

    while (v42);
    if (v6 == a5)
    {
      return *_Q0.i64;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
    return *_Q0.i64;
  }

  if (a5 < 0x20)
  {
    v5 = 0;
LABEL_19:
    v27 = a5 - v5;
    v28 = &a3->i16[v5];
    v29 = &a1->i32[v5];
    do
    {
      v30 = *v29++;
      _Q0.i32[0] = v30;
      __asm { FCVT            H0, S0 }

      *v28++ = _Q0.i16[0];
      --v27;
    }

    while (v27);
    return *_Q0.i64;
  }

  v5 = a5 & 0xFFFFFFFFFFFFFFE0;
  v15 = a1 + 4;
  v16 = a3 + 2;
  v17 = a5 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v19 = v15[-2];
    v18 = v15[-1];
    v21 = v15[-4];
    v20 = v15[-3];
    v23 = v15[2];
    v22 = v15[3];
    v25 = *v15;
    v24 = v15[1];
    v15 += 8;
    v26 = vcvt_hight_f16_f32(vcvt_f16_f32(v19), v18);
    _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(v25), v24);
    v16[-2] = vcvt_hight_f16_f32(vcvt_f16_f32(v21), v20);
    v16[-1] = v26;
    *v16 = _Q0;
    v16[1] = vcvt_hight_f16_f32(vcvt_f16_f32(v23), v22);
    v16 += 4;
    v17 -= 32;
  }

  while (v17);
  if (v5 != a5)
  {
    goto LABEL_19;
  }

  return *_Q0.i64;
}

double vDSP_ctoz_fp16(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 2 || a4 != 1)
  {
    if (!a5)
    {
      return *&v12;
    }

    v13 = *a3;
    v14 = a3[1];
    if (a5 < 4)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 0;
    if (a4 != 1 || a2 != 1)
    {
      goto LABEL_12;
    }

    v15 = 0;
    v19 = v13 + 2 * a5;
    v20 = v14 + 2 * a5;
    v21 = a1 + 2 * a5 + 2;
    v22 = v13 < v21 && v19 > a1;
    v23 = v22;
    v24 = v14 < v21 && v20 > a1;
    v25 = v24;
    v26 = v14 >= v19 || v13 >= v20;
    if (!v26 || v23 || v25)
    {
      goto LABEL_12;
    }

    if (a5 >= 0x10)
    {
      v15 = a5 & 0xFFFFFFFFFFFFFFF0;
      v42 = (a1 + 18);
      v43 = (v14 + 16);
      v44 = (v13 + 16);
      v45 = a5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v46 = *(v42 - 2);
        *(v44 - 1) = *(v42 - 18);
        *v44 = v46;
        v12 = *(v42 - 1);
        v47 = *v42;
        *(v43 - 1) = v12;
        *v43 = v47;
        v42 += 2;
        v43 += 2;
        v44 += 2;
        v45 -= 16;
      }

      while (v45);
      if (v15 == a5)
      {
        return *&v12;
      }

      if ((a5 & 0xC) == 0)
      {
LABEL_12:
        v16 = a5 - v15;
        v17 = 2 * v15 * a4;
        v18 = (a1 + 2 * v15 * a2 + 2);
        do
        {
          *(v13 + v17) = *(v18 - 1);
          LOWORD(v12) = *v18;
          *(v14 + v17) = *v18;
          v17 += 2 * a4;
          v18 += a2;
          --v16;
        }

        while (v16);
        return *&v12;
      }
    }

    else
    {
      v15 = 0;
    }

    v48 = v15;
    v15 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = (2 * v48 + a1 + 2);
    v50 = (v13 + 2 * v48);
    v51 = (v14 + 2 * v48);
    v52 = v48 - (a5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v50++ = *(v49 - 2);
      v53 = *v49++;
      *&v12 = v53;
      *v51++ = v53;
      v52 += 4;
    }

    while (v52);
    if (v15 == a5)
    {
      return *&v12;
    }

    goto LABEL_12;
  }

  if (!a5)
  {
    return *&v12;
  }

  v5 = *a3;
  v6 = a3[1];
  if (a5 < 0x10)
  {
    v7 = 0;
LABEL_6:
    v8 = a5 - v7;
    v9 = (v6 + 2 * v7);
    v10 = (v5 + 2 * v7);
    v11 = (a1 + 4 * v7 + 2);
    do
    {
      *v10++ = *(v11 - 1);
      LOWORD(v12) = *v11;
      *v9++ = *v11;
      v11 += 2;
      --v8;
    }

    while (v8);
    return *&v12;
  }

  v7 = 0;
  v27 = v5 + 2 * a5;
  v28 = v6 + 2 * a5;
  v29 = a1 + 4 * a5;
  v31 = v5 < v29 && v27 > a1;
  v33 = v6 < v29 && v28 > a1;
  if (v6 < v27 && v5 < v28)
  {
    goto LABEL_6;
  }

  if (v31)
  {
    goto LABEL_6;
  }

  if (v33)
  {
    goto LABEL_6;
  }

  v7 = a5 & 0xFFFFFFFFFFFFFFF0;
  v35 = a5 & 0xFFFFFFFFFFFFFFF0;
  v36 = a3[1];
  v37 = *a3;
  v38 = a1;
  do
  {
    v39 = v38 + 32;
    *&v12 = vld2q_s16(v38);
    v40 = v38 + 16;
    v55 = vld2q_s16(v40);
    *v37 = v12;
    *(v37 + 16) = v55.val[0];
    v37 += 32;
    *v36 = v41;
    *(v36 + 16) = v55.val[1];
    v36 += 32;
    v38 = v39;
    v35 -= 16;
  }

  while (v35);
  if (v7 != a5)
  {
    goto LABEL_6;
  }

  return *&v12;
}

unint64_t *vDSP_ztoc_fp16(unint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 == 1 && a4 == 2)
  {
    if (!a5)
    {
      return result;
    }

    v5 = *result;
    v6 = result[1];
    if (a5 < 0x10)
    {
      v7 = 0;
LABEL_6:
      v8 = a5 - v7;
      v9 = (v6 + 2 * v7);
      v10 = (v5 + 2 * v7);
      v11 = (a3 + 4 * v7 + 2);
      do
      {
        v12 = *v10++;
        *(v11 - 1) = v12;
        v13 = *v9++;
        *v11 = v13;
        v11 += 2;
        --v8;
      }

      while (v8);
      return result;
    }

    v7 = 0;
    v18 = a3 + 4 * (a5 - 1);
    if (v18 < a3 || v18 + 2 < a3 + 2 || (a5 - 1) >> 62)
    {
      goto LABEL_6;
    }

    v7 = 0;
    v19 = a3 + 4 * a5;
    v20 = v6 + 2 * a5 <= a3 || v6 >= v19;
    v21 = !v20;
    if (v5 < v19 && v5 + 2 * a5 > a3)
    {
      goto LABEL_6;
    }

    if (v21)
    {
      goto LABEL_6;
    }

    v7 = a5 & 0x7FFFFFFFFFFFFFF0;
    v23 = a5 & 0x7FFFFFFFFFFFFFF0;
    v24 = result[1];
    v25 = *result;
    v26 = a3;
    do
    {
      v30.val[0] = *v25;
      v29.val[0] = *(v25 + 16);
      v25 += 32;
      v30.val[1] = *v24;
      v29.val[1] = *(v24 + 16);
      v24 += 32;
      v27 = v26 + 32;
      vst2q_s16(v26, v30);
      v28 = v26 + 16;
      vst2q_s16(v28, v29);
      v26 = v27;
      v23 -= 16;
    }

    while (v23);
    if (v7 != a5)
    {
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    v14 = 0;
    v15 = *result;
    v16 = result[1];
    v17 = (a3 + 2);
    do
    {
      *(v17 - 1) = *(v15 + v14);
      *v17 = *(v16 + v14);
      v17 += a4;
      v14 += 2 * a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

double vDSP_zvadd_fp16(float16x8_t **a1, uint64_t a2, float16x8_t **a3, uint64_t a4, float16x8_t **a5, uint64_t a6, unint64_t a7)
{
  v7 = *a1;
  v8 = *a3;
  v9 = *a5;
  v11 = a2 == 1 && a4 == 1 && a6 == 1;
  v12 = v11;
  if (v11)
  {
    if (!a7)
    {
      return *v39.i64;
    }

    if (a7 >= 0x20)
    {
      v13 = 0;
      if ((v9 - v7) >= 0x40 && (v9 - v8) >= 0x40)
      {
        v13 = a7 & 0xFFFFFFFFFFFFFFE0;
        v45 = v7 + 2;
        v46 = v8 + 2;
        v47 = v9 + 2;
        v48 = a7 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v49 = v45[-2];
          v50 = v45[-1];
          v51 = *v45;
          v52 = v45[1];
          v45 += 4;
          v53 = v46[-2];
          v54 = v46[-1];
          v55 = *v46;
          v56 = v46[1];
          v46 += 4;
          v39 = vaddq_f16(v53, v49);
          v47[-2] = v39;
          v47[-1] = vaddq_f16(v54, v50);
          *v47 = vaddq_f16(v55, v51);
          v47[1] = vaddq_f16(v56, v52);
          v47 += 4;
          v48 -= 32;
        }

        while (v48);
        if (v13 == a7)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = a7 - v13;
    v15 = v13;
    v16 = &v9->i16[v15];
    v17 = &v8->i16[v15];
    v18 = &v7->i16[v15];
    do
    {
      v19 = *v18++;
      v20 = v19;
      v21 = *v17++;
      *v16++ = v21 + v20;
      --v14;
    }

    while (v14);
    goto LABEL_23;
  }

  if (!a7)
  {
    return *v39.i64;
  }

  if (a7 < 4)
  {
    v22 = 0;
    goto LABEL_21;
  }

  v22 = 0;
  if (a6 != 1)
  {
    goto LABEL_21;
  }

  if (a2 != 1)
  {
    goto LABEL_21;
  }

  if (a4 != 1)
  {
    goto LABEL_21;
  }

  v22 = 0;
  if ((v9 - v7) < 0x20 || (v9 - v8) < 0x20)
  {
    goto LABEL_21;
  }

  if (a7 >= 0x10)
  {
    v22 = a7 & 0xFFFFFFFFFFFFFFF0;
    v69 = v7 + 1;
    v70 = v8 + 1;
    v71 = v9 + 1;
    v72 = a7 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v39 = vaddq_f16(v70[-1], v69[-1]);
      v73 = vaddq_f16(*v70, *v69);
      v71[-1] = v39;
      *v71 = v73;
      v69 += 2;
      v70 += 2;
      v71 += 2;
      v72 -= 16;
    }

    while (v72);
    if (v22 == a7)
    {
      goto LABEL_23;
    }

    if ((a7 & 0xC) == 0)
    {
LABEL_21:
      v23 = a7 - v22;
      v24 = &v9->i16[v22 * a6];
      v25 = &v8->i16[v22 * a4];
      v26 = &v7->i16[v22 * a2];
      do
      {
        *v24 = *v25 + *v26;
        v24 += a6;
        v25 += a4;
        v26 += a2;
        --v23;
      }

      while (v23);
      goto LABEL_23;
    }
  }

  else
  {
    v22 = 0;
  }

  v74 = v22;
  v22 = a7 & 0xFFFFFFFFFFFFFFFCLL;
  v75 = (v7 + 2 * v74);
  v76 = (v8 + 2 * v74);
  v77 = (v9->i64 + 2 * v74);
  v78 = v74 - (a7 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v79 = *v75++;
    v80 = v79;
    v81 = *v76++;
    *v39.i8 = vadd_f16(v81, v80);
    *v77++ = v39.i64[0];
    v78 += 4;
  }

  while (v78);
  if (v22 != a7)
  {
    goto LABEL_21;
  }

LABEL_23:
  v27 = a1[1];
  v28 = a3[1];
  v29 = a5[1];
  if ((v12 & 1) == 0)
  {
    if (a7 < 4)
    {
      v40 = 0;
      goto LABEL_31;
    }

    v40 = 0;
    if (a6 != 1)
    {
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      goto LABEL_31;
    }

    if (a4 != 1)
    {
      goto LABEL_31;
    }

    v40 = 0;
    if ((v29 - v27) < 0x20 || (v29 - v28) < 0x20)
    {
      goto LABEL_31;
    }

    if (a7 >= 0x10)
    {
      v40 = a7 & 0xFFFFFFFFFFFFFFF0;
      v82 = v27 + 1;
      v83 = v28 + 1;
      v84 = v29 + 1;
      v85 = a7 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v39 = vaddq_f16(v83[-1], v82[-1]);
        v86 = vaddq_f16(*v83, *v82);
        v84[-1] = v39;
        *v84 = v86;
        v82 += 2;
        v83 += 2;
        v84 += 2;
        v85 -= 16;
      }

      while (v85);
      if (v40 == a7)
      {
        return *v39.i64;
      }

      if ((a7 & 0xC) == 0)
      {
LABEL_31:
        v41 = a7 - v40;
        v42 = &v29->i16[v40 * a6];
        v43 = &v28->i16[v40 * a4];
        v44 = &v27->i16[v40 * a2];
        do
        {
          *v39.i16 = *v43 + *v44;
          *v42 = v39.i16[0];
          v42 += a6;
          v43 += a4;
          v44 += a2;
          --v41;
        }

        while (v41);
        return *v39.i64;
      }
    }

    else
    {
      v40 = 0;
    }

    v87 = v40;
    v40 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v88 = (v27 + 2 * v87);
    v89 = (v28 + 2 * v87);
    v90 = (v29->i64 + 2 * v87);
    v91 = v87 - (a7 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v92 = *v88++;
      v93 = v92;
      v94 = *v89++;
      *v39.i8 = vadd_f16(v94, v93);
      *v90++ = v39.i64[0];
      v91 += 4;
    }

    while (v91);
    if (v40 == a7)
    {
      return *v39.i64;
    }

    goto LABEL_31;
  }

  if (a7 < 0x20)
  {
    v30 = 0;
LABEL_26:
    v31 = a7 - v30;
    v32 = v30;
    v33 = &v29->i16[v30];
    v34 = &v28->i16[v32];
    v35 = &v27->i16[v32];
    do
    {
      v36 = *v35++;
      v37 = v36;
      v38 = *v34++;
      *v39.i16 = v38 + v37;
      *v33++ = v39.i16[0];
      --v31;
    }

    while (v31);
    return *v39.i64;
  }

  v30 = 0;
  if ((v29 - v27) < 0x40)
  {
    goto LABEL_26;
  }

  if ((v29 - v28) < 0x40)
  {
    goto LABEL_26;
  }

  v30 = a7 & 0xFFFFFFFFFFFFFFE0;
  v57 = v27 + 2;
  v58 = v28 + 2;
  v59 = v29 + 2;
  v60 = a7 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v61 = v57[-2];
    v62 = v57[-1];
    v63 = *v57;
    v64 = v57[1];
    v57 += 4;
    v65 = v58[-2];
    v66 = v58[-1];
    v67 = *v58;
    v68 = v58[1];
    v58 += 4;
    v39 = vaddq_f16(v65, v61);
    v59[-2] = v39;
    v59[-1] = vaddq_f16(v66, v62);
    *v59 = vaddq_f16(v67, v63);
    v59[1] = vaddq_f16(v68, v64);
    v59 += 4;
    v60 -= 32;
  }

  while (v60);
  if (v30 != a7)
  {
    goto LABEL_26;
  }

  return *v39.i64;
}

float16x8_t vDSP_zvmul_fp16(float16x8_t **a1, uint64_t a2, float16x8_t **a3, uint64_t a4, float16x8_t **a5, uint64_t a6, unint64_t a7, int a8, float16x8_t result)
{
  if (a2 == 1 && a4 == 1 && a6 == 1)
  {
    if (a8 != 1)
    {
      if (!a7)
      {
        return result;
      }

      v37 = *a1;
      v38 = a1[1];
      v39 = *a3;
      v40 = a3[1];
      v41 = *a5;
      v42 = a5[1];
      if (a7 > 0xF)
      {
        v43 = 0;
        v129 = (v41 + 2 * a7);
        v130 = (v42 + 2 * a7);
        v131 = (v37 + 2 * a7);
        v132 = (v39 + 2 * a7);
        v133 = (v38 + 2 * a7);
        v134 = (v40 + 2 * a7);
        v136 = v41 < v131 && v37 < v129;
        v138 = v41 < v132 && v39 < v129;
        v140 = v41 < v133 && v38 < v129;
        v142 = v41 < v134 && v40 < v129;
        v144 = v42 < v131 && v37 < v130;
        v146 = v42 < v132 && v39 < v130;
        v148 = v42 < v133 && v38 < v130;
        v150 = v42 < v134 && v40 < v130;
        if ((v42 >= v129 || v41 >= v130) && !v136 && !v138 && !v140 && !v142 && !v144 && !v146 && !v148 && !v150)
        {
          v43 = a7 & 0xFFFFFFFFFFFFFFF0;
          v152 = a7 & 0xFFFFFFFFFFFFFFF0;
          v153 = v42;
          v154 = v41;
          v155 = v40;
          v156 = v38;
          v157 = v39;
          v158 = v37;
          do
          {
            v159 = *v158;
            v160 = v158[1];
            v158 += 2;
            v161 = *v157;
            v162 = v157[1];
            v157 += 2;
            v163 = *v156;
            v164 = v156[1];
            v156 += 2;
            v165 = *v155;
            v166 = v155[1];
            v155 += 2;
            *v154 = vmlaq_f16(vmulq_f16(v161, v159), v165, v163);
            v154[1] = vmlaq_f16(vmulq_f16(v162, v160), v166, v164);
            v154 += 2;
            result = vmlsq_f16(vmulq_f16(v165, v159), v161, v163);
            *v153 = result;
            v153[1] = vmlsq_f16(vmulq_f16(v166, v160), v162, v164);
            v153 += 2;
            v152 -= 16;
          }

          while (v152);
          if (v43 == a7)
          {
            return result;
          }
        }
      }

      else
      {
        v43 = 0;
      }

      v44 = 0;
      v45 = a7 - v43;
      v46 = 2 * v43;
      v47 = &v42->i8[v46];
      v48 = &v41->i8[v46];
      v49 = &v40->i8[v46];
      v50 = &v38->i8[v46];
      v51 = &v39->i8[v46];
      v52 = &v37->i8[v46];
      do
      {
        *&v48[2 * v44] = (*&v51[2 * v44] * *&v52[2 * v44]) + (*&v49[2 * v44] * *&v50[2 * v44]);
        *result.i16 = -((*&v51[2 * v44] * *&v50[2 * v44]) - (*&v49[2 * v44] * *&v52[2 * v44]));
        *&v47[2 * v44++] = result.i16[0];
      }

      while (v45 != v44);
      return result;
    }

    if (!a7)
    {
      return result;
    }

    v9 = *a1;
    v10 = a1[1];
    v11 = *a3;
    v12 = a3[1];
    v13 = *a5;
    v14 = a5[1];
    if (a7 < 0x10)
    {
      v15 = 0;
LABEL_8:
      v16 = 0;
      v17 = a7 - v15;
      v18 = 2 * v15;
      v19 = &v14->i8[v18];
      v20 = &v13->i8[v18];
      v21 = &v12->i8[v18];
      v22 = &v10->i8[v18];
      v23 = &v11->i8[v18];
      v24 = &v9->i8[v18];
      do
      {
        *&v20[2 * v16] = -((*&v21[2 * v16] * *&v22[2 * v16]) - (*&v23[2 * v16] * *&v24[2 * v16]));
        *result.i16 = (*&v21[2 * v16] * *&v24[2 * v16]) + (*&v23[2 * v16] * *&v22[2 * v16]);
        *&v19[2 * v16++] = result.i16[0];
      }

      while (v17 != v16);
      return result;
    }

    v15 = 0;
    v91 = (v13 + 2 * a7);
    v92 = (v14 + 2 * a7);
    v93 = (v9 + 2 * a7);
    v94 = (v11 + 2 * a7);
    v95 = (v10 + 2 * a7);
    v96 = (v12 + 2 * a7);
    v98 = v13 < v93 && v9 < v91;
    v100 = v13 < v94 && v11 < v91;
    v102 = v13 < v95 && v10 < v91;
    v104 = v13 < v96 && v12 < v91;
    v106 = v14 < v93 && v9 < v92;
    v108 = v14 < v94 && v11 < v92;
    v110 = v14 < v95 && v10 < v92;
    v112 = v14 < v96 && v12 < v92;
    if (v14 < v91 && v13 < v92)
    {
      goto LABEL_8;
    }

    if (v98)
    {
      goto LABEL_8;
    }

    if (v100)
    {
      goto LABEL_8;
    }

    if (v102)
    {
      goto LABEL_8;
    }

    if (v104)
    {
      goto LABEL_8;
    }

    if (v106)
    {
      goto LABEL_8;
    }

    if (v108)
    {
      goto LABEL_8;
    }

    if (v110)
    {
      goto LABEL_8;
    }

    if (v112)
    {
      goto LABEL_8;
    }

    v15 = a7 & 0xFFFFFFFFFFFFFFF0;
    v114 = a7 & 0xFFFFFFFFFFFFFFF0;
    v115 = v14;
    v116 = v13;
    v117 = v12;
    v118 = v10;
    v119 = v11;
    v120 = v9;
    do
    {
      v121 = *v120;
      v122 = v120[1];
      v120 += 2;
      v123 = *v119;
      v124 = v119[1];
      v119 += 2;
      v125 = *v118;
      v126 = v118[1];
      v118 += 2;
      v127 = *v117;
      v128 = v117[1];
      v117 += 2;
      *v116 = vmlsq_f16(vmulq_f16(v123, v121), v127, v125);
      v116[1] = vmlsq_f16(vmulq_f16(v124, v122), v128, v126);
      v116 += 2;
      result = vmlaq_f16(vmulq_f16(v127, v121), v123, v125);
      *v115 = result;
      v115[1] = vmlaq_f16(vmulq_f16(v128, v122), v124, v126);
      v115 += 2;
      v114 -= 16;
    }

    while (v114);
    if (v15 != a7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result.i16[0] = COERCE_UNSIGNED_INT(-1.0);
    if (a8 == 1)
    {
      result.i16[0] = COERCE_UNSIGNED_INT(1.0);
    }

    if (a7)
    {
      v25 = *a1;
      v26 = a1[1];
      v27 = *a3;
      v28 = a3[1];
      v29 = *a5;
      v30 = a5[1];
      if (a7 >= 0x10)
      {
        v31 = 0;
        if (a2 == 1 && a4 == 1 && a6 == 1)
        {
          v31 = 0;
          v53 = (v29 + 2 * a7);
          v54 = (v30 + 2 * a7);
          v55 = (v25 + 2 * a7);
          v56 = (v27 + 2 * a7);
          v57 = (v26 + 2 * a7);
          v58 = (v28 + 2 * a7);
          v59 = v29 >= v55 || v25 >= v53;
          v60 = !v59;
          v61 = v29 >= v56 || v27 >= v53;
          v62 = !v61;
          v63 = v29 >= v57 || v26 >= v53;
          v64 = !v63;
          v65 = v29 >= v58 || v28 >= v53;
          v66 = !v65;
          v67 = v30 >= v55 || v25 >= v54;
          v68 = !v67;
          v69 = v30 >= v56 || v27 >= v54;
          v70 = !v69;
          v71 = v30 >= v57 || v26 >= v54;
          v72 = !v71;
          v73 = v30 >= v58 || v28 >= v54;
          v74 = !v73;
          if ((v30 >= v53 || v29 >= v54) && !v60 && !v62 && !v64 && !v66 && !v68 && !v70 && !v72 && !v74)
          {
            v31 = a7 & 0xFFFFFFFFFFFFFFF8;
            v76 = a7 & 0xFFFFFFFFFFFFFFF8;
            v77 = v30;
            v78 = v29;
            v79 = v28;
            v80 = v26;
            v81 = v27;
            v82 = v25;
            do
            {
              v83 = *v82++;
              v84 = v83;
              v85 = *v81++;
              v86 = v85;
              v87 = vmulq_f16(v85, v84);
              v88 = *v80++;
              v89 = vmulq_n_f16(v88, *result.i16);
              v90 = *v79++;
              *v78++ = vmlsq_f16(v87, v89, v90);
              *v77++ = vmlaq_f16(vmulq_f16(v90, v84), v89, v86);
              v76 -= 8;
            }

            while (v76);
            if (v31 == a7)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v31 = 0;
      }

      v32 = a7 - v31;
      v33 = v31 * a6;
      v34 = v31 * a4;
      v35 = 2 * v31 * a2;
      v36 = 2 * a2;
      do
      {
        *&v29->i16[v33] = -(((*(v26->i16 + v35) * *result.i16) * *&v28->i16[v34]) - (*&v27->i16[v34] * *(v25->i16 + v35)));
        *&v30->i16[v33] = (*&v28->i16[v34] * *(v25->i16 + v35)) + ((*(v26->i16 + v35) * *result.i16) * *&v27->i16[v34]);
        v33 += a6;
        v34 += a4;
        v35 += v36;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

unint64_t vDSP_zvma_fp16(unint64_t result, uint64_t a2, float16x8_t **a3, uint64_t a4, float16x8_t **a5, uint64_t a6, float16x8_t **a7, uint64_t a8, unint64_t a9)
{
  if (a2 != 1 || a4 != 1 || a6 != 1 || a8 != 1)
  {
    if (!a9)
    {
      return result;
    }

    v28 = *result;
    v29 = *(result + 8);
    v30 = *a3;
    v31 = a3[1];
    v32 = *a5;
    v33 = a5[1];
    v34 = *a7;
    v35 = a7[1];
    if (a9 > 0xF)
    {
      v36 = 0;
      if (a2 == 1 && a4 == 1 && a8 == 1 && a6 == 1)
      {
        v36 = 0;
        v45 = (v34 + 2 * a9);
        v46 = (v35 + 2 * a9);
        v47 = (v28 + 2 * a9);
        v48 = (v30 + 2 * a9);
        v49 = (v29 + 2 * a9);
        v50 = (v31 + 2 * a9);
        v51 = (v32 + 2 * a9);
        v52 = (v33 + 2 * a9);
        v53 = v34 >= v47 || v28 >= v45;
        v54 = !v53;
        v55 = v34 >= v48 || v30 >= v45;
        v56 = !v55;
        v57 = v34 >= v49 || v29 >= v45;
        v58 = !v57;
        v59 = v34 >= v50 || v31 >= v45;
        v60 = !v59;
        v61 = v34 >= v51 || v32 >= v45;
        v62 = !v61;
        v63 = v34 >= v52 || v33 >= v45;
        v64 = !v63;
        v65 = v35 >= v47 || v28 >= v46;
        v66 = !v65;
        v67 = v35 >= v48 || v30 >= v46;
        v68 = !v67;
        v69 = v35 >= v49 || v29 >= v46;
        v70 = !v69;
        v71 = v35 >= v50 || v31 >= v46;
        v72 = !v71;
        v73 = v35 >= v51 || v32 >= v46;
        v74 = !v73;
        v75 = v35 >= v52 || v33 >= v46;
        v76 = !v75;
        if ((v35 >= v45 || v34 >= v46) && !v54 && !v56 && !v58 && !v60 && !v62 && !v64 && !v66 && !v68 && !v70 && !v72 && !v74 && !v76)
        {
          v36 = a9 & 0xFFFFFFFFFFFFFFF8;
          result = a9 & 0xFFFFFFFFFFFFFFF8;
          v78 = v35;
          v79 = v33;
          v80 = v34;
          v81 = v32;
          v82 = v31;
          v83 = v29;
          v84 = v30;
          v85 = v28;
          do
          {
            v86 = *v85++;
            v87 = v86;
            v88 = *v84++;
            v89 = v88;
            v90 = vmulq_f16(v88, v87);
            v91 = *v83++;
            v92 = v91;
            v93 = *v82++;
            v94 = v93;
            v95 = *v81++;
            *v80++ = vaddq_f16(vmlsq_f16(v90, v94, v92), v95);
            v96 = *v79++;
            *v78++ = vaddq_f16(vmlaq_f16(vmulq_f16(v94, v87), v89, v92), v96);
            result -= 8;
          }

          while (result);
          if (v36 == a9)
          {
            return result;
          }
        }
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = a9 - v36;
    result = v36 * a8;
    v38 = 2 * a8;
    v39 = 2 * v36 * a6;
    v40 = 2 * a6;
    v41 = 2 * v36 * a4;
    v42 = 2 * a4;
    v43 = 2 * v36 * a2;
    v44 = 2 * a2;
    do
    {
      *&v34->i16[result] = *(v32->i16 + v39) - ((*(v31->i16 + v41) * *(v29->i16 + v43)) - (*(v30->i16 + v41) * *(v28->i16 + v43)));
      *&v35->i16[result] = ((*(v31->i16 + v41) * *(v28->i16 + v43)) + (*(v30->i16 + v41) * *(v29->i16 + v43))) + *(v33->i16 + v39);
      v35 = (v35 + v38);
      v34 = (v34 + v38);
      v39 += v40;
      v41 += v42;
      v43 += v44;
      --v37;
    }

    while (v37);
    return result;
  }

  if (!a9)
  {
    return result;
  }

  v9 = *result;
  v10 = *(result + 8);
  v11 = *a3;
  v12 = a3[1];
  v13 = *a5;
  v14 = a5[1];
  v15 = *a7;
  v16 = a7[1];
  if (a9 < 0x10)
  {
    v17 = 0;
LABEL_8:
    result = 0;
    v18 = a9 - v17;
    v19 = 2 * v17;
    v20 = &v16->i8[v19];
    v21 = &v14->i8[v19];
    v22 = &v15->i8[v19];
    v23 = &v13->i8[v19];
    v24 = &v12->i8[v19];
    v25 = &v10->i8[v19];
    v26 = &v11->i8[v19];
    v27 = &v9->i8[v19];
    do
    {
      *&v22[2 * result] = *&v23[2 * result] - ((*&v24[2 * result] * *&v25[2 * result]) - (*&v26[2 * result] * *&v27[2 * result]));
      *&v20[2 * result] = ((*&v24[2 * result] * *&v27[2 * result]) + (*&v26[2 * result] * *&v25[2 * result])) + *&v21[2 * result];
      ++result;
    }

    while (v18 != result);
    return result;
  }

  v17 = 0;
  v97 = (v15 + 2 * a9);
  v98 = (v16 + 2 * a9);
  v99 = (v9 + 2 * a9);
  v100 = (v11 + 2 * a9);
  v101 = (v10 + 2 * a9);
  v102 = (v12 + 2 * a9);
  v103 = (v13 + 2 * a9);
  v104 = (v14 + 2 * a9);
  v106 = v15 < v99 && v9 < v97;
  v108 = v15 < v100 && v11 < v97;
  v110 = v15 < v101 && v10 < v97;
  v112 = v15 < v102 && v12 < v97;
  v114 = v15 < v103 && v13 < v97;
  v116 = v15 < v104 && v14 < v97;
  v118 = v16 < v99 && v9 < v98;
  v120 = v16 < v100 && v11 < v98;
  v122 = v16 < v101 && v10 < v98;
  v124 = v16 < v102 && v12 < v98;
  v126 = v16 < v103 && v13 < v98;
  v128 = v16 < v104 && v14 < v98;
  if (v16 < v97 && v15 < v98)
  {
    goto LABEL_8;
  }

  if (v106)
  {
    goto LABEL_8;
  }

  if (v108)
  {
    goto LABEL_8;
  }

  if (v110)
  {
    goto LABEL_8;
  }

  if (v112)
  {
    goto LABEL_8;
  }

  if (v114)
  {
    goto LABEL_8;
  }

  if (v116)
  {
    goto LABEL_8;
  }

  if (v118)
  {
    goto LABEL_8;
  }

  if (v120)
  {
    goto LABEL_8;
  }

  if (v122)
  {
    goto LABEL_8;
  }

  if (v124)
  {
    goto LABEL_8;
  }

  if (v126)
  {
    goto LABEL_8;
  }

  if (v128)
  {
    goto LABEL_8;
  }

  v17 = a9 & 0xFFFFFFFFFFFFFFF0;
  result = a9 & 0xFFFFFFFFFFFFFFF0;
  v130 = v16;
  v131 = v14;
  v132 = v15;
  v133 = v13;
  v134 = v12;
  v135 = v10;
  v136 = v11;
  v137 = v9;
  do
  {
    v139 = *v137;
    v138 = v137[1];
    v137 += 2;
    v141 = *v136;
    v140 = v136[1];
    v136 += 2;
    v143 = *v135;
    v142 = v135[1];
    v135 += 2;
    v145 = *v134;
    v144 = v134[1];
    v134 += 2;
    v147 = *v133;
    v146 = v133[1];
    v133 += 2;
    *v132 = vaddq_f16(vmlsq_f16(vmulq_f16(v141, v139), v145, v143), v147);
    v132[1] = vaddq_f16(vmlsq_f16(vmulq_f16(v140, v138), v144, v142), v146);
    v132 += 2;
    v148 = vmlaq_f16(vmulq_f16(v144, v138), v140, v142);
    v149 = vmlaq_f16(vmulq_f16(v145, v139), v141, v143);
    v151 = *v131;
    v150 = v131[1];
    v131 += 2;
    *v130 = vaddq_f16(v149, v151);
    v130[1] = vaddq_f16(v148, v150);
    v130 += 2;
    result -= 16;
  }

  while (result);
  if (v17 != a9)
  {
    goto LABEL_8;
  }

  return result;
}

short float *vDSP_zvmmaa_fp16(short float *result, uint64_t a2, float16x8_t **a3, uint64_t a4, float16x8_t **a5, uint64_t a6, float16x8_t **a7, uint64_t a8, float16x8_t **a9, uint64_t a10, unint64_t *a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v13 = a13;
  if (a2 != 1 || a4 != 1 || a6 != 1 || a8 != 1 || a10 != 1 || a12 != 1)
  {
    if (!a13)
    {
      return result;
    }

    v41 = *result;
    v42 = *(result + 1);
    v44 = *a3;
    v43 = a3[1];
    v45 = *a5;
    v46 = a5[1];
    v47 = *a7;
    v48 = a7[1];
    v49 = *a9;
    result = a9[1];
    v50 = *a11;
    v51 = a11[1];
    if (a13 > 0xF)
    {
      v52 = 0;
      if (a2 == 1 && a4 == 1 && a6 == 1 && a8 == 1 && a12 == 1 && a10 == 1)
      {
        v52 = 0;
        v66 = v50 + 2 * a13;
        v67 = v51 + 2 * a13;
        v68 = v41 + 2 * a13;
        v69 = v44 + 2 * a13;
        v70 = v42 + 2 * a13;
        v265 = v42;
        v263 = v49 + 2 * a13;
        v256 = &result[a13];
        v73 = v50 >= v68 || v41 >= v66;
        v74 = !v73;
        v254 = v74;
        v76 = v50 < v69 && v44 < v66;
        v252 = v76;
        v78 = v50 < v70 && v42 < v66;
        v250 = v78;
        v80 = v50 < v43 + 2 * a13 && v43 < v66;
        v248 = v80;
        v71 = v45 + 2 * a13;
        v82 = v50 < v71 && v45 < v66;
        v247 = v82;
        v84 = v50 < v47 + 2 * a13 && v47 < v66;
        v246 = v84;
        v72 = v46 + 2 * a13;
        v86 = v50 < v72 && v46 < v66;
        v245 = v86;
        v88 = v50 < v48 + 2 * a13 && v48 < v66;
        v244 = v88;
        v90 = v50 < v263 && v49 < v66;
        v243 = v90;
        v92 = v50 < v256 && result < v66;
        v242 = v92;
        v259 = v44;
        v261 = v41;
        v94 = v51 < v68 && v41 < v67;
        v96 = v51 < v69 && v44 < v67;
        v98 = v51 < v70 && v42 < v67;
        v100 = v51 < v43 + 2 * a13 && v43 < v67;
        v102 = v51 < v71 && v45 < v67;
        v104 = v51 < v47 + 2 * a13 && v47 < v67;
        v106 = v51 < v72 && v46 < v67;
        v108 = v51 < v48 + 2 * a13 && v48 < v67;
        v110 = v51 < v263 && v49 < v67;
        v112 = v51 < v256 && result < v67;
        v113 = v51 >= v66 || v50 >= v67;
        if (!v113 || (v254 & 1) != 0)
        {
          v41 = v261;
          v13 = a13;
          v42 = v265;
          v14 = a12;
          v44 = v259;
        }

        else
        {
          v114 = v98;
          v115 = v96;
          v42 = v265;
          v14 = a12;
          v44 = v259;
          if (v252 || v250 || v248 || v247 || v246 || v245 || v244 || v243 || v242 || v94 || v115 || v114 || v100)
          {
            v41 = v261;
            v13 = a13;
          }

          else
          {
            v13 = a13;
            if (v102 || v104 || v106 || v108 || v110)
            {
              v41 = v261;
            }

            else
            {
              v41 = v261;
              if (!v112)
              {
                v52 = a13 & 0xFFFFFFFFFFFFFFF8;
                v116 = a13 & 0xFFFFFFFFFFFFFFF8;
                v117 = a11[1];
                v118 = a9[1];
                v119 = *a11;
                v120 = *a9;
                v121 = v261;
                v122 = v48;
                v123 = v265;
                v124 = v46;
                v125 = v259;
                v126 = v47;
                v127 = v45;
                v128 = v43;
                do
                {
                  v129 = *v121++;
                  v130 = v129;
                  v131 = *v125++;
                  v132 = v131;
                  v133 = *v123++;
                  v134 = v133;
                  v135 = *v128++;
                  v136 = v135;
                  v137 = vmulq_f16(v135, v134);
                  v138 = *v127++;
                  v139 = v138;
                  v140 = *v126++;
                  v141 = v140;
                  v142 = *v124++;
                  v143 = v142;
                  v144 = *v122++;
                  v145 = v144;
                  v146 = *v120++;
                  *v119++ = vsubq_f16(vaddq_f16(vmlaq_f16(vmulq_f16(v132, v130), v141, v139), v146), vmlaq_f16(v137, v145, v143));
                  v147 = *v118++;
                  *v117++ = vaddq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(vmulq_f16(v136, v130), v132, v134), v145, v139), v141, v143), v147);
                  v116 -= 8;
                }

                while (v116);
                v41 = v261;
                v13 = a13;
                v42 = v265;
                v44 = v259;
                if (v52 == a13)
                {
                  return result;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = v13 - v52;
    v54 = v52 * v14;
    v55 = 2 * v14;
    v56 = v52 * a10;
    v57 = 2 * a10;
    v58 = v52 * a8;
    v59 = 2 * a8;
    v60 = 2 * v52 * a6;
    v61 = 2 * a6;
    v62 = 2 * v52 * a4;
    v63 = 2 * a4;
    v64 = 2 * v52 * a2;
    v65 = 2 * a2;
    do
    {
      *(v50 + 2 * v54) = (((*(v44->i16 + v62) * *(v41->i16 + v64)) + (*&v47->i16[v58] * *(v45->i16 + v60))) + *&v49->i16[v56]) - ((*(v43->i16 + v62) * *(v42->i16 + v64)) + (*&v48->i16[v58] * *(v46->i16 + v60)));
      *(v51 + 2 * v54) = ((((*(v43->i16 + v62) * *(v41->i16 + v64)) + (*(v44->i16 + v62) * *(v42->i16 + v64))) + (*&v48->i16[v58] * *(v45->i16 + v60))) + (*&v47->i16[v58] * *(v46->i16 + v60))) + result[v56];
      v51 += v55;
      v50 += v55;
      result = (result + v57);
      v49 = (v49 + v57);
      v48 = (v48 + v59);
      v47 = (v47 + v59);
      v60 += v61;
      v62 += v63;
      v64 += v65;
      --v53;
    }

    while (v53);
    return result;
  }

  if (!a13)
  {
    return result;
  }

  v16 = *result;
  v15 = *(result + 1);
  v18 = *a3;
  v17 = a3[1];
  v19 = *a5;
  v20 = a5[1];
  v22 = *a7;
  v21 = a7[1];
  v23 = *a9;
  v24 = a9[1];
  result = *a11;
  v25 = a11[1];
  if (a13 < 0x10)
  {
    v26 = 0;
    goto LABEL_10;
  }

  v148 = &result[a13];
  v149 = v25 + 2 * a13;
  v150 = v16 + 2 * a13;
  v151 = v18 + 2 * a13;
  v152 = v15 + 2 * a13;
  v153 = v17 + 2 * a13;
  v154 = v19 + 2 * a13;
  v155 = v22 + 2 * a13;
  v156 = v20 + 2 * a13;
  v157 = v21 + 2 * a13;
  v158 = v23 + 2 * a13;
  v266 = v17;
  v159 = v15;
  v160 = v24 + 2 * a13;
  v162 = result < v150 && v16 < v148;
  v255 = v162;
  v164 = result < v151 && v18 < v148;
  v253 = v164;
  v166 = result < v152 && v159 < v148;
  v251 = v166;
  v168 = result < v153 && v266 < v148;
  v249 = v168;
  v170 = result < v154 && v19 < v148;
  v172 = result < v155 && v22 < v148;
  v173 = result >= v156 || v20 >= v148;
  v264 = a9[1];
  v174 = a7[1];
  v175 = !v173;
  v177 = result < v157 && v174 < v148;
  v179 = result < v158 && *a9 < v148;
  v180 = result >= v160 || v264 >= v148;
  v181 = v19;
  v182 = !v180;
  v257 = v18;
  v258 = v16;
  v183 = v25 >= v150 || v16 >= v149;
  v184 = *a7;
  v185 = !v183;
  v186 = v25 >= v151 || v18 >= v149;
  v187 = v20;
  v188 = !v186;
  v189 = v159;
  v190 = v25 >= v152 || v159 >= v149;
  v17 = v266;
  v191 = !v190;
  v193 = v25 < v153 && v266 < v149;
  v260 = v187;
  v262 = v181;
  v195 = v25 < v154 && v181 < v149;
  v73 = v25 >= v155;
  v196 = v184;
  v198 = !v73 && v184 < v149;
  v200 = v25 < v156 && v187 < v149;
  v201 = v174;
  v202 = v25 >= v157 || v174 >= v149;
  v23 = *a9;
  v24 = a9[1];
  v203 = !v202;
  v205 = v25 < v158 && v23 < v149;
  v207 = v25 < v160 && v264 < v149;
  v208 = v25 >= v148 || result >= v149;
  if (!v208 || v255)
  {
    v13 = a13;
    v18 = v257;
    v16 = v258;
    v15 = v189;
    goto LABEL_336;
  }

  v15 = v189;
  if (v253 || v251 || v249 || v170 || v172 || (v175 & 1) != 0 || v177)
  {
    v13 = a13;
    v18 = v257;
    v16 = v258;
LABEL_336:
    v20 = v260;
    v19 = v262;
    v22 = v196;
    v21 = v201;
    v26 = 0;
LABEL_10:
    v27 = 0;
    v28 = v13 - v26;
    v29 = 2 * v26;
    v30 = v25 + 2 * v26;
    v31 = v24->i64 + 2 * v26;
    result += v26;
    v32 = v23->i64 + 2 * v26;
    v33 = v21->i64 + 2 * v26;
    v34 = v20->i64 + 2 * v26;
    v35 = v22->i64 + 2 * v26;
    v36 = v19->i64 + 2 * v26;
    v37 = v17->i64 + 2 * v26;
    v38 = &v15->i8[2 * v26];
    v39 = v18->i64 + v29;
    v40 = v16->i64 + v29;
    do
    {
      result[v27] = (((*(v39 + 2 * v27) * *(v40 + 2 * v27)) + (*(v35 + 2 * v27) * *(v36 + 2 * v27))) + *(v32 + 2 * v27)) - ((*(v37 + 2 * v27) * *&v38[2 * v27]) + (*(v33 + 2 * v27) * *(v34 + 2 * v27)));
      *(v30 + 2 * v27) = ((((*(v37 + 2 * v27) * *(v40 + 2 * v27)) + (*(v39 + 2 * v27) * *&v38[2 * v27])) + (*(v33 + 2 * v27) * *(v36 + 2 * v27))) + (*(v35 + 2 * v27) * *(v34 + 2 * v27))) + *(v31 + 2 * v27);
      ++v27;
    }

    while (v28 != v27);
    return result;
  }

  v21 = v201;
  if (v179 || (v182 & 1) != 0 || (v185 & 1) != 0)
  {
    v19 = v262;
    v13 = a13;
    goto LABEL_333;
  }

  v19 = v262;
  if (v188)
  {
    v13 = a13;
LABEL_333:
    v18 = v257;
    v16 = v258;
    v22 = v196;
    goto LABEL_334;
  }

  v22 = v196;
  if (v191)
  {
    v13 = a13;
    v18 = v257;
    v16 = v258;
LABEL_334:
    v20 = v260;
    v26 = 0;
    goto LABEL_10;
  }

  v20 = v260;
  if (v193)
  {
    v13 = a13;
    v16 = v258;
    goto LABEL_328;
  }

  v16 = v258;
  if (v195)
  {
    v13 = a13;
LABEL_328:
    v26 = 0;
    v18 = v257;
    goto LABEL_10;
  }

  v18 = v257;
  if (v198)
  {
    v13 = a13;
    v26 = 0;
    goto LABEL_10;
  }

  v26 = 0;
  if (v200 || (v203 & 1) != 0 || v205)
  {
    v13 = a13;
    goto LABEL_10;
  }

  v13 = a13;
  if (v207)
  {
    goto LABEL_10;
  }

  v26 = a13 & 0xFFFFFFFFFFFFFFF0;
  v209 = a13 & 0xFFFFFFFFFFFFFFF0;
  v210 = v266;
  v211 = a11[1];
  v212 = a9[1];
  v213 = *a11;
  v214 = *a9;
  v215 = v201;
  v216 = v260;
  v217 = v196;
  v218 = v262;
  v219 = v15;
  v220 = v257;
  v221 = v258;
  do
  {
    v222 = *v221;
    v223 = v221[1];
    v221 += 2;
    v224 = *v220;
    v225 = v220[1];
    v220 += 2;
    v227 = *v219;
    v226 = v219[1];
    v219 += 2;
    v229 = *v210;
    v228 = v210[1];
    v210 += 2;
    v230 = *v218;
    v231 = v218[1];
    v218 += 2;
    v232 = *v217;
    v233 = v217[1];
    v217 += 2;
    v235 = *v216;
    v234 = v216[1];
    v216 += 2;
    v237 = *v215;
    v236 = v215[1];
    v215 += 2;
    v238 = *v214;
    v239 = v214[1];
    v214 += 2;
    *v213 = vsubq_f16(vaddq_f16(vmlaq_f16(vmulq_f16(v224, v222), v232, v230), v238), vmlaq_f16(vmulq_f16(v229, v227), v237, v235));
    v213[1] = vsubq_f16(vaddq_f16(vmlaq_f16(vmulq_f16(v225, v223), v233, v231), v239), vmlaq_f16(vmulq_f16(v228, v226), v236, v234));
    v213 += 2;
    v241 = *v212;
    v240 = v212[1];
    v212 += 2;
    *v211 = vaddq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(vmulq_f16(v229, v222), v224, v227), v237, v230), v232, v235), v241);
    v211[1] = vaddq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(vmulq_f16(v228, v223), v225, v226), v236, v231), v233, v234), v240);
    v211 += 2;
    v209 -= 16;
  }

  while (v209);
  v24 = v264;
  v17 = v266;
  v20 = v260;
  v19 = v262;
  v22 = v196;
  v21 = v201;
  if (v26 != a13)
  {
    goto LABEL_10;
  }

  return result;
}

double vDSP_zvmags_fp16(float16x8_t **a1, uint64_t a2, float16x8_t *a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1 || a4 != 1)
  {
    if (!a5)
    {
      return *v16.i64;
    }

    v17 = *a1;
    v18 = a1[1];
    if (a5 < 4)
    {
      v19 = 0;
      goto LABEL_12;
    }

    v19 = 0;
    if (a4 != 1)
    {
      goto LABEL_12;
    }

    if (a2 != 1)
    {
      goto LABEL_12;
    }

    v19 = 0;
    if ((a3 - v17) < 0x20 || (a3 - v18) < 0x20)
    {
      goto LABEL_12;
    }

    if (a5 >= 0x10)
    {
      v19 = a5 & 0xFFFFFFFFFFFFFFF0;
      v35 = v17 + 1;
      v36 = v18 + 1;
      v37 = a3 + 1;
      v38 = a5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v16 = vmlaq_f16(vmulq_f16(v35[-1], v35[-1]), v36[-1], v36[-1]);
        v39 = vmlaq_f16(vmulq_f16(*v35, *v35), *v36, *v36);
        v37[-1] = v16;
        *v37 = v39;
        v35 += 2;
        v36 += 2;
        v37 += 2;
        v38 -= 16;
      }

      while (v38);
      if (v19 == a5)
      {
        return *v16.i64;
      }

      if ((a5 & 0xC) == 0)
      {
LABEL_12:
        v20 = a5 - v19;
        v21 = &a3->i16[v19 * a4];
        v22 = v19 * a2;
        do
        {
          *v16.i16 = (*&v17->i16[v22] * *&v17->i16[v22]) + (*&v18->i16[v22] * *&v18->i16[v22]);
          *v21 = v16.i16[0];
          v21 += a4;
          v22 += a2;
          --v20;
        }

        while (v20);
        return *v16.i64;
      }
    }

    else
    {
      v19 = 0;
    }

    v40 = v19;
    v19 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v41 = (v17 + 2 * v40);
    v42 = (v18 + 2 * v40);
    v43 = (a3->i64 + 2 * v40);
    v44 = v40 - (a5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v45 = *v41++;
      v46 = vmul_f16(v45, v45);
      v47 = *v42++;
      *v16.i8 = vmla_f16(v46, v47, v47);
      *v43++ = v16.i64[0];
      v44 += 4;
    }

    while (v44);
    if (v19 == a5)
    {
      return *v16.i64;
    }

    goto LABEL_12;
  }

  if (!a5)
  {
    return *v16.i64;
  }

  v5 = *a1;
  v6 = a1[1];
  if (a5 < 0x20)
  {
    v7 = 0;
LABEL_6:
    v8 = a5 - v7;
    v9 = v7;
    v10 = &a3->i16[v7];
    v11 = &v6->i16[v9];
    v12 = &v5->i16[v9];
    do
    {
      v13 = *v12++;
      v14 = v13 * v13;
      v15 = *v11++;
      *v16.i16 = v14 + (v15 * v15);
      *v10++ = v16.i16[0];
      --v8;
    }

    while (v8);
    return *v16.i64;
  }

  v7 = 0;
  if ((a3 - v5) < 0x40)
  {
    goto LABEL_6;
  }

  if ((a3 - v6) < 0x40)
  {
    goto LABEL_6;
  }

  v7 = a5 & 0xFFFFFFFFFFFFFFE0;
  v23 = v5 + 2;
  v24 = v6 + 2;
  v25 = a3 + 2;
  v26 = a5 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v28 = v23[-2];
    v27 = v23[-1];
    v30 = *v23;
    v29 = v23[1];
    v23 += 4;
    v32 = v24[-2];
    v31 = v24[-1];
    v34 = *v24;
    v33 = v24[1];
    v24 += 4;
    v16 = vmlaq_f16(vmulq_f16(v27, v27), v31, v31);
    v25[-2] = vmlaq_f16(vmulq_f16(v28, v28), v32, v32);
    v25[-1] = v16;
    *v25 = vmlaq_f16(vmulq_f16(v30, v30), v34, v34);
    v25[1] = vmlaq_f16(vmulq_f16(v29, v29), v33, v33);
    v25 += 4;
    v26 -= 32;
  }

  while (v26);
  if (v7 != a5)
  {
    goto LABEL_6;
  }

  return *v16.i64;
}

void IR::ComplexDataCircBuffer::Implementation::cleanup(IR::ComplexDataCircBuffer::Implementation *this)
{
  *(this + 4) = *(this + 3);
  std::vector<std::vector<float>>::clear[abi:ne200100](this);
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 9);
  v2 = *(this + 8);
  *(this + 13) = *(this + 12);
  *(this + 16) = *(this + 15);
  *(this + 8) = 0;
  if (v2)
  {
    std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](this + 64, v2);
  }

  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 144) = 0;
}

uint64_t IR::ComplexDataCircBuffer::Implementation::initialize(IR::ComplexDataCircBuffer::Implementation *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int16x4_t a6)
{
  *(this + 144) = 0;
  result = 4294956418;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v10 = a5;
        if (a5)
        {
          if (*(this + 3) != *(this + 4) && *(this + 13) == a4 && 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) == a2)
          {
            v12 = a2;
            std::vector<float>::vector[abi:ne200100](&__p, 2 * a3 * a2 * a4);
            v13 = 0;
            v14 = 0;
            v15 = *this;
            if (((*(*this + 8) - **this) >> 4) >= a3)
            {
              v16 = a3;
            }

            else
            {
              v16 = (*(*this + 8) - **this) >> 4;
            }

            do
            {
              if (v16)
              {
                v17 = *(this + 12);
                v18 = v16;
                do
                {
                  memcpy(__p + 4 * v14, *(*(v15 + 24 * v13) + 16 * v17), 4 * a4);
                  v19 = v14 + a4;
                  memcpy(__p + 4 * v19, *(*(*this + 24 * v13) + 16 * v17 + 8), 4 * a4);
                  v14 = v19 + a4;
                  v15 = *this;
                  if (v17 + 1 < ((*(*this + 8) - **this) >> 4))
                  {
                    ++v17;
                  }

                  else
                  {
                    v17 = 0;
                  }

                  --v18;
                }

                while (v18);
              }

              ++v13;
            }

            while (v13 != v12);
            std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 3, __p, v32, (v32 - __p) >> 2);
            v10 = a5;
            if (__p)
            {
              v32 = __p;
              operator delete(__p);
            }
          }

          else
          {
            LODWORD(__p) = 0;
            std::vector<float>::assign(this + 3, 2 * a3 * a2 * a4, &__p, a6);
            v12 = a2;
          }

          std::vector<std::vector<DSPSplitComplex>>::resize(this, v12);
          __p = 0;
          std::vector<float *>::assign(this + 15, v12, &__p);
          v20 = 0;
          v21 = 0;
          do
          {
            std::vector<DSPSplitComplex>::resize((*this + 24 * v20), a3);
            v22 = *(this + 3);
            v23 = (*(*this + 24 * v20) + 8);
            v24 = a3;
            do
            {
              *(v23 - 1) = v22 + 4 * v21;
              *v23 = v22 + 4 * (v21 + a4);
              v21 += a4 + a4;
              v23 += 2;
              --v24;
            }

            while (v24);
            ++v20;
          }

          while (v20 != v12);
          *(this + 13) = a4;
          *(this + 14) = 0;
          *(this + 12) = 0;
          std::vector<std::vector<float>>::resize(this + 9, v12);
          v26 = 0;
          v27 = 2 * a4;
          do
          {
            v28 = *(this + 9);
            LODWORD(__p) = 0;
            std::vector<float>::resize((v28 + v26), v27, &__p, v25);
            v26 += 24;
            --v12;
          }

          while (v12);
          std::vector<float>::resize(this + 4, (v27 + v10));
          v29 = *(this + 8);
          if (!v29)
          {
            operator new();
          }

          if (MultiRadixRealFFT::Size(v29) != v27)
          {
            if (MultiRadixRealFFT::Initialize(*(this + 8), v27))
            {
              IR::ComplexDataCircBuffer::Implementation::initialize();
            }
          }

          result = 0;
          *(this + 144) = 1;
        }
      }
    }
  }

  return result;
}

void sub_296BF0FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IR::ComplexDataCircBuffer::Implementation::inverseFFTOverlapAdd(IR::ComplexDataCircBuffer::Implementation *this, unsigned int a2)
{
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    v27 = v2;
    v28 = v3;
    v6 = a2;
    v8 = 0;
    v9 = 1;
    while (*(*(this + 15) + 8 * v8))
    {
      v8 = v9;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v5 - v4) > v9++;
      if (!v10)
      {
        if (v4[1] != *v4 && a2 != 0)
        {
          v12 = 0;
          v13 = *(this + 14);
          v14 = v5;
          do
          {
            v15 = *(this + 13);
            if (v15 - v13 >= v6)
            {
              v16 = v6;
            }

            else
            {
              v16 = v15 - v13;
            }

            if (v14 == v4)
            {
              v14 = v4;
            }

            else
            {
              v17 = 0;
              v18 = 1;
              do
              {
                v19 = *(*(this + 15) + 8 * v17) + 4 * v12;
                MEMORY[0x29C2603D0](*(*(this + 9) + 24 * v17) + 4 * *(this + 14), 1, v19, 1, v19, 1, v16);
                v17 = v18;
                v4 = *this;
                v5 = *(this + 1);
                v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *this) >> 3) > v18++;
              }

              while (v10);
              v15 = *(this + 13);
              v13 = *(this + 14);
              v14 = *(this + 1);
            }

            v13 += v16;
            *(this + 14) = v13;
            if (v13 >= v15)
            {
              if (v5 == v4)
              {
                v5 = v4;
              }

              else
              {
                v20 = 0;
                v21 = 1;
                do
                {
                  v22 = 3 * v20;
                  *v26 = *(v4[3 * v20] + 16 * *(this + 12));
                  v23 = *(this + 12);
                  MultiRadixRealFFT::RealInPlaceTransform(*(this + 8), v26, -1, 1.0);
                  vDSP_ztoc(v26, 1, v23, 2, *(this + 13));
                  v24 = *(*(this + 9) + 8 * v22);
                  MEMORY[0x29C2603D0](*(this + 12), 1, v24 + 4 * *(this + 13), 1, v24, 1);
                  memmove((*(*(this + 9) + 8 * v22) + 4 * *(this + 13)), (*(this + 12) + 4 * *(this + 13)), 4 * *(this + 13));
                  bzero(v26[0], 4 * *(this + 13));
                  bzero(v26[1], 4 * *(this + 13));
                  v20 = v21;
                  v4 = *this;
                  v5 = *(this + 1);
                  v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *this) >> 3) > v21++;
                }

                while (v10);
              }

              v25 = (*(this + 12) + 1);
              *(this + 12) = v25;
              if (v25 == (v4[1] - *v4) >> 4)
              {
                *(this + 12) = 0;
              }

              v13 = 0;
              *(this + 14) = 0;
              v14 = v5;
            }

            v12 += v16;
            v6 -= v16;
          }

          while (v6);
        }

        return;
      }
    }
  }
}

void *IR::ComplexDataCircBuffer::Implementation::getFFTBufferVec(IR::ComplexDataCircBuffer::Implementation *this, unsigned int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) > a2)
  {
    return (*this + 24 * a2);
  }

  if (atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire))
  {
    return &unk_2A18B8290;
  }

  v5[1] = v2;
  v5[2] = v3;
  IR::ComplexDataCircBuffer::Implementation::getFFTBufferVec(v5);
  return v5[0];
}

uint64_t std::vector<DSPSplitComplex>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void *IR::ComplexDataCircBuffer::ComplexDataCircBuffer(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void IR::ComplexDataCircBuffer::ComplexDataCircBuffer(IR::ComplexDataCircBuffer *this)
{
  operator new();
}

{
  operator new();
}

uint64_t *std::unique_ptr<IR::ComplexDataCircBuffer::Implementation>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 96);
    if (v4)
    {
      *(v2 + 104) = v4;
      operator delete(v4);
    }

    v8 = (v2 + 72);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    v5 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v5)
    {
      std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v2 + 64, v5);
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      *(v2 + 32) = v6;
      operator delete(v6);
    }

    v8 = v2;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x29C25FC20](v2, 0x10A0C40DBD9303ALL);
  }

  return a1;
}

uint64_t IR::ComplexDataCircBuffer::initialize(IR::ComplexDataCircBuffer::Implementation **this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int16x4_t a6)
{
  v6 = *this;
  if (v6)
  {
    return IR::ComplexDataCircBuffer::Implementation::initialize(v6, a2, a3, a4, a5, a6);
  }

  else
  {
    return 4294956429;
  }
}

void IR::ComplexDataCircBuffer::cleanup(IR::ComplexDataCircBuffer::Implementation **this)
{
  v1 = *this;
  if (v1)
  {
    IR::ComplexDataCircBuffer::Implementation::cleanup(v1);
  }
}

void IR::ComplexDataCircBuffer::inverseFFTOverlapAdd(IR::ComplexDataCircBuffer::Implementation **this, unsigned int a2)
{
  v2 = *this;
  if (v2)
  {
    IR::ComplexDataCircBuffer::Implementation::inverseFFTOverlapAdd(v2, a2);
  }
}

uint64_t IR::ComplexDataCircBuffer::getNumOutputChannels(IR::ComplexDataCircBuffer *this)
{
  if (*this)
  {
    return -1431655765 * ((*(*this + 8) - **this) >> 3);
  }

  else
  {
    return 0;
  }
}

uint64_t IR::ComplexDataCircBuffer::getNumFFTBuffers(IR::ComplexDataCircBuffer *this)
{
  v1 = *this;
  if (!*this || *v1 == v1[1])
  {
    return 0;
  }

  else
  {
    return (*(*v1 + 8) - **v1) >> 4;
  }
}

uint64_t IR::ComplexDataCircBuffer::getFFTPartitionLength(IR::ComplexDataCircBuffer *this)
{
  if (*this)
  {
    return *(*this + 52);
  }

  else
  {
    return 0;
  }
}

uint64_t IR::ComplexDataCircBuffer::getCircularIndex(IR::ComplexDataCircBuffer *this)
{
  if (*this)
  {
    return *(*this + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t IR::ComplexDataCircBuffer::getFFTProcPos(IR::ComplexDataCircBuffer *this)
{
  if (*this)
  {
    return *(*this + 56);
  }

  else
  {
    return 0;
  }
}

void *IR::ComplexDataCircBuffer::getFFTBufferVec(IR::ComplexDataCircBuffer::Implementation **this, unsigned int a2)
{
  v4 = *this;
  if (v4)
  {

    return IR::ComplexDataCircBuffer::Implementation::getFFTBufferVec(v4, a2);
  }

  else if (atomic_load_explicit(&qword_2A18B8280, memory_order_acquire))
  {
    return &unk_2A18B82A8;
  }

  else
  {
    v6[1] = v2;
    v6[2] = v3;
    IR::ComplexDataCircBuffer::getFFTBufferVec(v6);
    return v6[0];
  }
}

void *IR::ComplexDataCircBuffer::getSampleDataPtrs(IR::ComplexDataCircBuffer *this)
{
  if (*this)
  {
    return (*this + 120);
  }

  if (atomic_load_explicit(&qword_2A18B8288, memory_order_acquire))
  {
    return &unk_2A18B82C0;
  }

  v4[1] = v1;
  v4[2] = v2;
  IR::ComplexDataCircBuffer::getSampleDataPtrs(v4);
  return v4[0];
}

uint64_t std::vector<float *>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

double IR::MPResampler<float>::MPResampler(uint64_t a1, int a2, float a3, float a4)
{
  IR::DataResampler<float>::DataResampler(a1, a2, a3, a4);
  *v4 = &unk_2A1DECF60;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = 0.0;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  return result;
}

uint64_t IR::MPResampler<float>::~MPResampler(void *a1)
{
  *a1 = &unk_2A1DECF60;
  IR::MPResampler<float>::CleanUp(a1);
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    a1[22] = v3;
    operator delete(v3);
  }

  v4 = a1[18];
  if (v4)
  {
    a1[19] = v4;
    operator delete(v4);
  }

  v5 = a1[15];
  if (v5)
  {
    a1[16] = v5;
    operator delete(v5);
  }

  v6 = a1[12];
  if (v6)
  {
    a1[13] = v6;
    operator delete(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    a1[10] = v7;
    operator delete(v7);
  }

  return IR::DataResampler<float>::~DataResampler(a1);
}

void IR::MPResampler<float>::~MPResampler(void *a1)
{
  IR::MPResampler<float>::~MPResampler(a1);

  JUMPOUT(0x29C25FC20);
}

void IR::MPResampler<float>::Initialize(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 20) = 0;
  if ((a2 - 4) <= 0xFFFFFFFC)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid Quality index");
    goto LABEL_17;
  }

  if ((a3 - 3) <= 0xFFFFFFFD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid ExtrapolationMethod");
    goto LABEL_17;
  }

  if (a4 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid InterpolationMethod");
LABEL_17:
  }

  *(a1 + 224) = a3;
  *(a1 + 228) = 1;
  if (a2 == 2)
  {
    v5 = 128;
  }

  else
  {
    v5 = 512;
  }

  v6 = *(a1 + 8);
  if (a2 == 1)
  {
    v5 = 32;
  }

  v7 = vcvtps_u32_f32(fmaxf((*(a1 + 16) / *(a1 + 12)) * v6, 1.0));
  if (v6 > v7)
  {
    v7 = *(a1 + 8);
  }

  v8 = 1 << -__clz(v7 - 1);
  if (v5 <= v8)
  {
    v5 = v8;
  }

  v9 = (v5 >> 1) + 1;
  *(a1 + 216) = v5;
  *(a1 + 220) = v9;
  std::vector<float>::resize((a1 + 168), v9);
  std::vector<float>::resize((a1 + 192), *(a1 + 220));
  v26 = 0.0;
  std::vector<float>::assign((a1 + 72), *(a1 + 220), &v26, v10);
  std::vector<float>::assign((a1 + 96), *(a1 + 220), &v26, v11);
  std::vector<float>::assign((a1 + 120), *(a1 + 216), &v26, v12);
  std::vector<float>::assign((a1 + 144), *(a1 + 216), &v26, v13);
  v14 = *(a1 + 144);
  *v14 = 1065353216;
  v15 = ((*(a1 + 216) >> 1) - 1);
  __A = 2.0;
  vDSP_vfill(&__A, (v14 + 4), 1, v15);
  v16 = *(a1 + 216);
  *(*(a1 + 144) + ((2 * v16) & 0x1FFFFFFFCLL)) = 1065353216;
  v17 = *(a1 + 96);
  *(a1 + 56) = *(a1 + 72);
  *(a1 + 64) = v17;
  v18 = *(a1 + 12) / v16;
  v19 = *(a1 + 16) / v16;
  vDSP_DFT_DestroySetup(*(a1 + 40));
  vDSP_DFT_DestroySetup(*(a1 + 48));
  Setup = vDSP_DFT_zrop_CreateSetup(0, *(a1 + 216), vDSP_DFT_FORWARD);
  *(a1 + 40) = Setup;
  *(a1 + 48) = vDSP_DFT_zrop_CreateSetup(Setup, *(a1 + 216), vDSP_DFT_INVERSE);
  v21 = *(a1 + 168);
  v22 = (*(a1 + 176) - v21) >> 2;
  __B = v18;
  __A = v26;
  vDSP_vramp(&__A, &__B, v21, 1, v22);
  v23 = *(a1 + 192);
  v24 = (*(a1 + 200) - v23) >> 2;
  __B = v19;
  __A = v26;
  vDSP_vramp(&__A, &__B, v23, 1, v24);
  *(a1 + 20) = 1;
}

unsigned int IR::MPResampler<float>::Initialize(uint64_t a1, const __CFDictionary **a2)
{
  v3 = 2;
  if (*a2)
  {
    v5 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(*a2, &IR::kIRDataResamplerConfigQualityKey);
    if ((v5 - 4) < 0xFFFFFFFD || (v5 & 0x100000000) == 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = v5;
    }

    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
    }

    v7 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(*a2, &IR::kMPResamplerConfigExtrapMethodKey);
    v8 = *a2;
    if (!*a2)
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(v13);
    }

    if ((v7 - 3) < 0xFFFFFFFE || (v7 & 0x100000000) == 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(v8, &IR::kMPResamplerConfigInterpMethodKey);
  }

  else
  {
    v10 = 1;
  }

  IR::MPResampler<float>::Initialize(a1, v3, v10, 1);
  return vcvtps_u32_f32(fmaxf((*(a1 + 16) / *(a1 + 12)) * *(a1 + 8), 1.0));
}

void IR::MPResampler<float>::CleanUp(uint64_t a1)
{
  *(a1 + 20) = 0;
  vDSP_DFT_DestroySetup(*(a1 + 40));
  vDSP_DFT_DestroySetup(*(a1 + 48));
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 176) = *(a1 + 168);
  *(a1 + 200) = *(a1 + 192);
}

uint64_t IR::MPResampler<float>::Process(uint64_t a1, const DSPComplex *a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  if (!*(a1 + 20))
  {
    return 103;
  }

  if (*(a1 + 8) < a3 || vcvtps_u32_f32(fmaxf((*(a1 + 16) / *(a1 + 12)) * a3, 1.0)) != a5)
  {
    return 104;
  }

  v10 = *(a1 + 120);
  vDSP_vclr(*(a1 + 72), 1, (*(a1 + 80) - *(a1 + 72)) >> 2);
  vDSP_vclr(*(a1 + 96), 1, (*(a1 + 104) - *(a1 + 96)) >> 2);
  vDSP_ctoz(a2, 2, (a1 + 56), 1, a3 >> 1);
  v11 = *(a1 + 72);
  if (a3)
  {
    v11[a3 >> 1] = *(a2 + a3 - 1);
  }

  *&v12 = 1.0 / *(a1 + 216);
  vDSP_DFT_Execute(*(a1 + 40), v11, *(a1 + 96), v11, *(a1 + 96));
  v13 = *(a1 + 96);
  v14 = *(a1 + 220);
  v15 = v14 - 1;
  *(*(a1 + 72) + 4 * v15) = *v13;
  *v13 = 0;
  v13[v15] = 0;
  vDSP_zvmags((a1 + 56), 1, *(a1 + 120), 1, v14);
  v16 = *(a1 + 120);
  v39 = *(a1 + 220);
  vvsqrtf(v16, v16, &v39);
  v17 = *(a1 + 120);
  v18 = *(a1 + 220);
  *&v39 = 0.5;
  MEMORY[0x29C260530](v17, 1, &v39, v17, 1, v18);
  IR::MPResampler<float>::Interpolate(a1, a1 + 120, (a1 + 72));
  v19 = *(a1 + 72);
  v39 = *(a1 + 220);
  vvlogf(v19, v19, &v39);
  vDSP_vclr(*(a1 + 96), 1, (*(a1 + 104) - *(a1 + 96)) >> 2);
  v20 = *(a1 + 72);
  v21 = *(a1 + 96);
  *v21 = v20[*(a1 + 220) - 1];
  vDSP_DFT_Execute(*(a1 + 48), v20, v21, v20, v21);
  vDSP_ztoc((a1 + 56), 1, v10, 2, *(a1 + 216) >> 1);
  v22 = *(a1 + 120);
  v23 = (*(a1 + 128) - v22) >> 2;
  *&v39 = *&v12 * 0.5;
  MEMORY[0x29C260530](v22, 1, &v39, v22, 1, v23);
  v24 = *(a1 + 120);
  v25 = *(a1 + 128) - v24;
  v26 = *(a1 + 144);
  if ((*(a1 + 152) - v26) >> 2 >= (v25 >> 2))
  {
    v27 = v25 >> 2;
  }

  else
  {
    v27 = (*(a1 + 152) - v26) >> 2;
  }

  MEMORY[0x29C260480](v24, 1, v26, 1, *(a1 + 120), 1, v27);
  vDSP_ctoz(v10, 2, (a1 + 56), 1, *(a1 + 216) >> 1);
  vDSP_DFT_Execute(*(a1 + 40), *(a1 + 72), *(a1 + 96), *(a1 + 72), *(a1 + 96));
  v28 = *(a1 + 96);
  v29 = *(a1 + 220);
  v30 = v29 - 1;
  v31 = *(a1 + 72);
  v31[v30] = *v28;
  *v28 = 0.0;
  v28[v30] = 0.0;
  v32 = *(a1 + 120);
  v39 = v29;
  vvexpf(v32, v31, &v39);
  v33 = *(a1 + 96);
  v34 = *(a1 + 72);
  v39 = *(a1 + 220);
  vvsincosf(v33, v34, v33, &v39);
  MEMORY[0x29C260480](*(a1 + 120), 1, *(a1 + 72), 1, *(a1 + 72), 1, *(a1 + 220));
  MEMORY[0x29C260480](*(a1 + 120), 1, *(a1 + 96), 1, *(a1 + 96), 1, *(a1 + 220));
  v35 = *(a1 + 72);
  v36 = *(a1 + 96);
  *v36 = v35[*(a1 + 220) - 1];
  vDSP_DFT_Execute(*(a1 + 48), v35, v36, v35, v36);
  vDSP_ztoc((a1 + 56), 1, v10, 2, *(a1 + 216) >> 1);
  v37 = *(a1 + 120);
  v39 = v12;
  MEMORY[0x29C260530](v37, 1, &v39, a4, 1, a5);
  return 0;
}

void IR::MPResampler<float>::Interpolate(uint64_t a1, uint64_t a2, float **a3)
{
  v3 = *(a1 + 220);
  if (v3 > (*(a2 + 8) - *a2) >> 2)
  {
    IR::MPResampler<float>::Interpolate();
  }

  if (v3 > a3[1] - *a3)
  {
    IR::MPResampler<float>::Interpolate();
  }

  **a3 = fmaxf(**a2, 1.0e-10);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = *(a1 + 192);
    v6 = (v3 - 1);
    v7 = *(a1 + 168);
    v8 = *a2;
    v9 = *a3;
    v10 = (*a3 + 1);
    v11 = -4;
    v12 = *(a1 + 16) / *(a1 + 12);
    while (1)
    {
      v13 = *(v5 + 4 + 4 * v4);
      if (v13 > *(v7 + 4 * v6))
      {
        break;
      }

      v14 = vcvtps_u32_f32(v12 * (v4 + 1));
      v15 = v14 - 1;
      *(v10 + 4 * v4) = fmaxf(v8[v15] + (((v13 - *(v7 + 4 * v15)) * (v8[v14] - v8[v15])) / (*(v7 + 4 * v14) - *(v7 + 4 * v15))), 1.0e-10);
      v11 -= 4;
      if (v3 - 1 == ++v4)
      {
        return;
      }
    }

    if (*(a1 + 224) == 1)
    {
      v16 = fmaxf(*(*a2 + 4 * v6), 1.0e-10);
      v17 = &(*a3)[v11 / 0xFFFFFFFFFFFFFFFCLL];
      __A = v16;
      vDSP_vfill(&__A, v17, 1, (v6 - v4));
    }

    else
    {
      v18 = v8[v6];
      v9[v4 + 1] = fmaxf(v18, 1.0e-10);
      v19 = (*(a1 + 200) - v5) >> 2;
      v20 = v4 + 2;
      if (v19 > v4 + 2)
      {
        v21 = 0;
        v22 = v4 + 3;
        v23 = (3.1416 / ((v3 - v4 - 2) + -1.0)) * 0.5;
        do
        {
          v9[v20] = fmaxf(v18 * cosf(v23 * v21), 1.0e-10);
          v20 = v22;
          ++v21;
        }

        while (v19 > v22++);
      }
    }
  }
}

uint64_t IR::MPResampler<float>::GetRequiredNumberOfInputFrames(uint64_t a1, unsigned int a2)
{
  v2 = vcvtms_u32_f32(fmaxf((*(a1 + 12) / *(a1 + 16)) * a2, 1.0));
  v3 = *(a1 + 8);
  if (v3 >= v2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<double>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

CFStringRef PlatformUtilities::CopyHardwareModelShortName(PlatformUtilities *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  caulk::product::short_hardware_model_name(__p, this);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_296BF2490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PlatformUtilities_iOS::ProductIsMuseDevice(PlatformUtilities_iOS *this)
{
  {
    v2 = MGGetBoolAnswer();
    v4 = (v2 & 1) != 0 || (ProductType = PlatformUtilities_iOS::GetProductType(v2), ProductType == 173) || PlatformUtilities_iOS::GetProductType(ProductType) == 188;
    PlatformUtilities_iOS::ProductIsMuseDevice(void)::isMuseDevice = v4;
  }

  return PlatformUtilities_iOS::ProductIsMuseDevice(void)::isMuseDevice;
}

uint64_t PlatformUtilities_iOS::GetProductType(PlatformUtilities_iOS *this)
{
  if (PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck == 1)
  {
    return PlatformUtilities_iOS::GetProductType(void)::sType;
  }

  PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck = 1;
  v2 = MGGetProductType();
  if (v2 > 2158787295)
  {
    if (v2 > 3196158496)
    {
      if (v2 > 3711192743)
      {
        if (v2 > 3885279869)
        {
          if (v2 <= 4068102501)
          {
            if (v2 > 3953847431)
            {
              if (v2 > 4055323050)
              {
                if (v2 == 4055323051)
                {
                  result = 58;
                  goto LABEL_483;
                }

                if (v2 == 4067129264)
                {
                  result = 139;
                  goto LABEL_483;
                }
              }

              else
              {
                if (v2 == 3953847432)
                {
                  result = 170;
                  goto LABEL_483;
                }

                if (v2 == 4025247511)
                {
                  result = 133;
                  goto LABEL_483;
                }
              }

              goto LABEL_482;
            }

            if (v2 == 3885279870)
            {
              result = 32;
              goto LABEL_483;
            }

            if (v2 != 3933865620)
            {
              if (v2 == 3933982784)
              {
                result = 53;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_373;
          }

          if (v2 <= 4231109336)
          {
            switch(v2)
            {
              case 4068102502:
                result = 168;
                goto LABEL_483;
              case 4172444931:
                result = 132;
                goto LABEL_483;
              case 4201643249:
                result = 35;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 > 4240173201)
          {
            if (v2 == 4240173202)
            {
              result = 2;
              goto LABEL_483;
            }

            if (v2 == 4242862982)
            {
              result = 80;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 4231109337)
          {
            if (v2 == 4232256925)
            {
              result = 114;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_391:
          result = 198;
          goto LABEL_483;
        }

        if (v2 <= 3825599859)
        {
          if (v2 <= 3767261005)
          {
            switch(v2)
            {
              case 3711192744:
                result = 84;
                goto LABEL_483;
              case 3742999858:
                result = 159;
                goto LABEL_483;
              case 3743999268:
                result = 24;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 3767261006)
          {
            result = 153;
            goto LABEL_483;
          }

          if (v2 != 3801472101)
          {
            if (v2 == 3819635030)
            {
              result = 160;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_346;
        }

        if (v2 <= 3863625341)
        {
          switch(v2)
          {
            case 3825599860:
              result = 20;
              goto LABEL_483;
            case 3839750255:
              result = 169;
              goto LABEL_483;
            case 3856877970:
              result = 110;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 3865922941)
        {
          if (v2 == 3865922942)
          {
            result = 56;
            goto LABEL_483;
          }

          if (v2 == 3867318491)
          {
            result = 162;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 3863625342)
        {
          if (v2 == 3865897231)
          {
            result = 79;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_392;
      }

      if (v2 > 3455223060)
      {
        if (v2 <= 3637438249)
        {
          if (v2 <= 3571532205)
          {
            if (v2 == 3455223061)
            {
              result = 83;
              goto LABEL_483;
            }

            if (v2 == 3540156652)
            {
              result = 93;
              goto LABEL_483;
            }

            v8 = 3543203160;
            goto LABEL_276;
          }

          if (v2 <= 3599094682)
          {
            if (v2 == 3571532206)
            {
              result = 151;
              goto LABEL_483;
            }

            if (v2 == 3585085679)
            {
              result = 10;
              goto LABEL_483;
            }

LABEL_482:
            result = 0;
            goto LABEL_483;
          }

          if (v2 != 3599094683)
          {
            if (v2 != 3636345305)
            {
              goto LABEL_482;
            }

            goto LABEL_355;
          }

LABEL_392:
          result = 97;
          goto LABEL_483;
        }

        if (v2 <= 3670339450)
        {
          if (v2 == 3637438250)
          {
            result = 52;
            goto LABEL_483;
          }

          if (v2 != 3645319985)
          {
            if (v2 == 3663011141)
            {
              result = 156;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_400;
        }

        if (v2 > 3683904381)
        {
          if (v2 == 3683904382)
          {
            result = 137;
            goto LABEL_483;
          }

          v4 = 3707345671;
          goto LABEL_367;
        }

        if (v2 == 3670339451)
        {
          goto LABEL_373;
        }

        if (v2 != 3677894691)
        {
          goto LABEL_482;
        }

LABEL_390:
        result = 102;
        goto LABEL_483;
      }

      if (v2 > 3242623366)
      {
        if (v2 <= 3361025852)
        {
          switch(v2)
          {
            case 3242623367:
              result = 15;
              goto LABEL_483;
            case 3300281076:
              result = 54;
              goto LABEL_483;
            case 3348380076:
              result = 4;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3402870383)
        {
          if (v2 != 3361025853)
          {
            if (v2 == 3397214291)
            {
              result = 74;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_397;
        }

        if (v2 == 3402870384)
        {
          result = 70;
          goto LABEL_483;
        }

        v6 = 3417429877;
LABEL_371:
        if (v2 != v6)
        {
          goto LABEL_482;
        }

        goto LABEL_372;
      }

      if (v2 <= 3217792189)
      {
        if (v2 != 3196158497)
        {
          if (v2 == 3196805751)
          {
            result = 7;
            goto LABEL_483;
          }

          if (v2 == 3215673114)
          {
            result = 75;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_355;
      }

      if (v2 == 3217792190)
      {
        goto LABEL_373;
      }

      if (v2 == 3228373941)
      {
        goto LABEL_393;
      }

      if (v2 != 3241053352)
      {
        goto LABEL_482;
      }

LABEL_405:
      result = 107;
      goto LABEL_483;
    }

    if (v2 > 2673319455)
    {
      if (v2 > 2903084587)
      {
        if (v2 <= 3054476160)
        {
          if (v2 <= 2943112656)
          {
            switch(v2)
            {
              case 2903084588:
                result = 85;
                goto LABEL_483;
              case 2940697645:
                result = 38;
                goto LABEL_483;
              case 2941181571:
                result = 41;
                goto LABEL_483;
            }
          }

          else if (v2 > 2979575959)
          {
            if (v2 == 2979575960)
            {
              result = 155;
              goto LABEL_483;
            }

            if (v2 == 3001488778)
            {
              result = 34;
              goto LABEL_483;
            }
          }

          else
          {
            if (v2 == 2943112657)
            {
              result = 149;
              goto LABEL_483;
            }

            if (v2 == 2959111092)
            {
              result = 95;
              goto LABEL_483;
            }
          }

          goto LABEL_482;
        }

        if (v2 <= 3128362814)
        {
          if (v2 == 3054476161)
          {
            goto LABEL_252;
          }

          if (v2 == 3101941570)
          {
            goto LABEL_282;
          }

          v10 = 3104290450;
LABEL_322:
          if (v2 == v10)
          {
            result = 197;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 3143587591)
        {
          if (v2 != 3128362815)
          {
            if (v2 == 3133873109)
            {
              result = 62;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_372:
          result = 196;
          goto LABEL_483;
        }

        if (v2 == 3143587592)
        {
          result = 166;
          goto LABEL_483;
        }

        v9 = 3184375231;
LABEL_336:
        if (v2 == v9)
        {
          result = 77;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 > 2751865417)
      {
        if (v2 <= 2795618602)
        {
          switch(v2)
          {
            case 2751865418:
              result = 143;
              goto LABEL_483;
            case 2781508713:
              result = 6;
              goto LABEL_483;
            case 2793418701:
              result = 19;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 <= 2823174121)
        {
          if (v2 == 2795618603)
          {
            result = 42;
            goto LABEL_483;
          }

          if (v2 == 2797549163)
          {
            result = 113;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 2823174122)
        {
          v4 = 2880863278;
          goto LABEL_367;
        }

        goto LABEL_394;
      }

      if (v2 > 2702125346)
      {
        switch(v2)
        {
          case 2702125347:
            result = 3;
            goto LABEL_483;
          case 2722529672:
            result = 28;
            goto LABEL_483;
          case 2730762296:
            result = 112;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 2673319456)
      {
        if (v2 == 2688879999)
        {
          result = 39;
          goto LABEL_483;
        }

        v7 = 2692844695;
LABEL_298:
        if (v2 == v7)
        {
          result = 199;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_403;
    }

    if (v2 > 2454275342)
    {
      if (v2 > 2614323574)
      {
        if (v2 > 2625074842)
        {
          if (v2 <= 2634105756)
          {
            if (v2 == 2625074843)
            {
              result = 161;
              goto LABEL_483;
            }

            v5 = 2628394914;
LABEL_208:
            if (v2 != v5)
            {
              goto LABEL_482;
            }

LABEL_252:
            result = 101;
            goto LABEL_483;
          }

          if (v2 != 2634105757)
          {
            if (v2 == 2644487444)
            {
              result = 92;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_390;
        }

        if (v2 != 2614323575)
        {
          if (v2 != 2619317134)
          {
            if (v2 != 2622433984)
            {
              goto LABEL_482;
            }

            goto LABEL_319;
          }

          goto LABEL_402;
        }

LABEL_399:
        result = 50;
        goto LABEL_483;
      }

      if (v2 > 2487868871)
      {
        if (v2 == 2487868872)
        {
          goto LABEL_405;
        }

        if (v2 != 2516717268)
        {
          if (v2 == 2566016329)
          {
            result = 94;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_403:
        result = 73;
        goto LABEL_483;
      }

      if (v2 == 2454275343)
      {
        result = 63;
        goto LABEL_483;
      }

      if (v2 != 2458172802)
      {
        v3 = 2468178735;
LABEL_187:
        if (v2 == v3)
        {
          result = 120;
          goto LABEL_483;
        }

        goto LABEL_482;
      }
    }

    else
    {
      if (v2 > 2288107368)
      {
        if (v2 <= 2336512886)
        {
          if (v2 != 2288107369)
          {
            if (v2 == 2309863438)
            {
              result = 37;
              goto LABEL_483;
            }

            if (v2 == 2311900306)
            {
              result = 14;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_406;
        }

        if (v2 > 2418348557)
        {
          if (v2 == 2418348558)
          {
            result = 135;
            goto LABEL_483;
          }

          if (v2 == 2445473385)
          {
            result = 124;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 == 2336512887)
        {
          goto LABEL_398;
        }

        if (v2 != 2385671069)
        {
          goto LABEL_482;
        }

        goto LABEL_399;
      }

      if (v2 <= 2236272847)
      {
        if (v2 != 2158787296)
        {
          if (v2 == 2159747553)
          {
            result = 26;
            goto LABEL_483;
          }

          if (v2 != 2162679683)
          {
            goto LABEL_482;
          }

          goto LABEL_401;
        }

LABEL_232:
        result = 69;
        goto LABEL_483;
      }

      if (v2 != 2236272848)
      {
        if (v2 != 2262113699)
        {
          if (v2 == 2270970153)
          {
            result = 21;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_404;
      }
    }

LABEL_355:
    result = 87;
    goto LABEL_483;
  }

  if (v2 <= 1302273957)
  {
    if (v2 > 676119127)
    {
      if (v2 > 952317140)
      {
        if (v2 <= 1169082143)
        {
          if (v2 > 1085318933)
          {
            if (v2 <= 1114644380)
            {
              if (v2 == 1085318934)
              {
                result = 131;
                goto LABEL_483;
              }

              if (v2 == 1110205732)
              {
                result = 48;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            if (v2 == 1114644381)
            {
              result = 82;
              goto LABEL_483;
            }

            v4 = 1119807502;
LABEL_367:
            if (v2 == v4)
            {
              result = 51;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 952317141)
          {
            if (v2 != 1036038801)
            {
              if (v2 == 1060988941)
              {
                result = 9;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_290;
          }

LABEL_398:
          result = 121;
          goto LABEL_483;
        }

        if (v2 <= 1280441782)
        {
          switch(v2)
          {
            case 1169082144:
              result = 33;
              goto LABEL_483;
            case 1234705395:
              result = 125;
              goto LABEL_483;
            case 1260109173:
              result = 45;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 > 1293446024)
        {
          if (v2 != 1293446025)
          {
            if (v2 == 1294429942)
            {
              result = 147;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_389;
        }

        if (v2 != 1280441783)
        {
          if (v2 == 1280909812)
          {
            result = 152;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_396:
        result = 78;
        goto LABEL_483;
      }

      if (v2 > 776033018)
      {
        if (v2 > 851437780)
        {
          if (v2 <= 910181309)
          {
            if (v2 == 851437781)
            {
              result = 29;
              goto LABEL_483;
            }

            if (v2 == 896202454)
            {
              result = 71;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 == 910181310)
          {
            goto LABEL_395;
          }

          v10 = 910313402;
          goto LABEL_322;
        }

        if (v2 == 776033019)
        {
          result = 57;
          goto LABEL_483;
        }

        if (v2 != 810906663)
        {
          if (v2 != 820711327)
          {
            goto LABEL_482;
          }

          goto LABEL_232;
        }

LABEL_319:
        result = 98;
        goto LABEL_483;
      }

      if (v2 <= 746003605)
      {
        if (v2 == 676119128)
        {
          result = 146;
          goto LABEL_483;
        }

        if (v2 == 689804742)
        {
          result = 36;
          goto LABEL_483;
        }

        v6 = 698697055;
        goto LABEL_371;
      }

      if (v2 == 746003606)
      {
        goto LABEL_252;
      }

      if (v2 == 749116821)
      {
        result = 165;
        goto LABEL_483;
      }

      if (v2 != 761631964)
      {
        goto LABEL_482;
      }

LABEL_394:
      result = 109;
      goto LABEL_483;
    }

    if (v2 <= 337183580)
    {
      if (v2 > 133314239)
      {
        if (v2 <= 228444037)
        {
          if (v2 == 133314240)
          {
            result = 40;
            goto LABEL_483;
          }

          if (v2 != 157833461)
          {
            if (v2 == 173258742)
            {
              result = 59;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_396;
        }

        if (v2 > 262180326)
        {
          if (v2 == 262180327)
          {
            result = 123;
            goto LABEL_483;
          }

          if (v2 == 330877086)
          {
            result = 43;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v2 != 228444038)
        {
          v3 = 253148925;
          goto LABEL_187;
        }

LABEL_400:
        result = 72;
        goto LABEL_483;
      }

      if (v2 <= 42878381)
      {
        switch(v2)
        {
          case 23433786:
            result = 61;
            goto LABEL_483;
          case 33245053:
            result = 68;
            goto LABEL_483;
          case 40511012:
            result = 134;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 42878382)
      {
        result = 12;
        goto LABEL_483;
      }

      if (v2 != 79936591)
      {
        v9 = 88647037;
        goto LABEL_336;
      }

LABEL_404:
      result = 76;
      goto LABEL_483;
    }

    if (v2 <= 363237282)
    {
      if (v2 > 344862119)
      {
        switch(v2)
        {
          case 344862120:
            result = 115;
            goto LABEL_483;
          case 355234908:
            result = 129;
            goto LABEL_483;
          case 358923952:
            result = 126;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 == 337183581)
      {
        result = 11;
        goto LABEL_483;
      }

      if (v2 == 340218669)
      {
        result = 111;
        goto LABEL_483;
      }

      if (v2 != 341800273)
      {
        goto LABEL_482;
      }

      goto LABEL_346;
    }

    if (v2 <= 502329936)
    {
      if (v2 != 363237283)
      {
        if (v2 == 425046865)
        {
          result = 157;
          goto LABEL_483;
        }

        if (v2 == 445396642)
        {
          result = 117;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 <= 555503453)
    {
      if (v2 == 502329937)
      {
        result = 22;
        goto LABEL_483;
      }

      v4 = 551446205;
      goto LABEL_367;
    }

    if (v2 != 555503454)
    {
      if (v2 == 574536383)
      {
        result = 30;
        goto LABEL_483;
      }

      goto LABEL_482;
    }

LABEL_402:
    result = 106;
    goto LABEL_483;
  }

  if (v2 > 1733600852)
  {
    if (v2 > 2023824666)
    {
      if (v2 <= 2085054104)
      {
        if (v2 > 2078329140)
        {
          if (v2 <= 2081274471)
          {
            if (v2 == 2078329141)
            {
              result = 31;
              goto LABEL_483;
            }

            if (v2 == 2080700391)
            {
              result = 46;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v2 != 2081274472)
          {
            if (v2 == 2084894489)
            {
              result = 164;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_401:
          result = 122;
          goto LABEL_483;
        }

        if (v2 == 2023824667)
        {
          goto LABEL_282;
        }

        if (v2 != 2032616841)
        {
          if (v2 == 2048538371)
          {
            result = 60;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_395:
        result = 25;
        goto LABEL_483;
      }

      if (v2 > 2103978417)
      {
        if (v2 <= 2141052861)
        {
          if (v2 != 2103978418)
          {
            if (v2 == 2132302344)
            {
              result = 148;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_389:
          result = 96;
          goto LABEL_483;
        }

        if (v2 != 2141052862)
        {
          v6 = 2144123136;
          goto LABEL_371;
        }

LABEL_373:
        result = 195;
        goto LABEL_483;
      }

      if (v2 == 2085054105)
      {
        result = 158;
        goto LABEL_483;
      }

      if (v2 != 2089455188)
      {
        v7 = 2095883268;
        goto LABEL_298;
      }

LABEL_397:
      result = 105;
      goto LABEL_483;
    }

    if (v2 > 1868379042)
    {
      if (v2 <= 1908832378)
      {
        if (v2 != 1868379043)
        {
          if (v2 == 1878257790)
          {
            result = 81;
            goto LABEL_483;
          }

          if (v2 == 1895344378)
          {
            result = 86;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_282;
      }

      if (v2 > 2001966016)
      {
        if (v2 != 2001966017)
        {
          if (v2 == 2021146989)
          {
            result = 18;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_346;
      }

      if (v2 != 1908832379)
      {
        if (v2 == 1990293942)
        {
          result = 140;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_391;
    }

    if (v2 <= 1756509289)
    {
      if (v2 == 1733600853)
      {
        result = 128;
        goto LABEL_483;
      }

      if (v2 == 1737882206)
      {
        result = 116;
        goto LABEL_483;
      }

      v8 = 1744899922;
LABEL_276:
      if (v2 != v8)
      {
        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v2 == 1756509290)
    {
      result = 144;
      goto LABEL_483;
    }

    if (v2 == 1770142589)
    {
      result = 163;
      goto LABEL_483;
    }

    v5 = 1834147427;
    goto LABEL_208;
  }

  if (v2 <= 1429914405)
  {
    if (v2 > 1373516432)
    {
      if (v2 > 1408738133)
      {
        if (v2 > 1415625991)
        {
          if (v2 == 1415625992)
          {
            result = 136;
            goto LABEL_483;
          }

          if (v2 == 1419435331)
          {
            result = 142;
            goto LABEL_483;
          }
        }

        else
        {
          if (v2 == 1408738134)
          {
            result = 150;
            goto LABEL_483;
          }

          if (v2 == 1412429328)
          {
            result = 65;
            goto LABEL_483;
          }
        }

        goto LABEL_482;
      }

      if (v2 != 1373516433)
      {
        if (v2 == 1380747801)
        {
          result = 127;
          goto LABEL_483;
        }

        if (v2 == 1402208364)
        {
          result = 130;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_282:
      result = 100;
      goto LABEL_483;
    }

    if (v2 <= 1353145732)
    {
      if (v2 != 1302273958)
      {
        if (v2 == 1309571158)
        {
          result = 141;
          goto LABEL_483;
        }

        if (v2 == 1325975682)
        {
          result = 67;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_406:
      result = 108;
      goto LABEL_483;
    }

    if (v2 != 1353145733)
    {
      if (v2 != 1364038516)
      {
        if (v2 == 1371389549)
        {
          result = 27;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_372;
    }

LABEL_346:
    result = 88;
    goto LABEL_483;
  }

  if (v2 > 1573906121)
  {
    if (v2 > 1625227433)
    {
      if (v2 > 1701146936)
      {
        if (v2 == 1701146937)
        {
          result = 49;
          goto LABEL_483;
        }

        if (v2 == 1721691077)
        {
          result = 16;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v2 != 1625227434)
      {
        if (v2 == 1644180312)
        {
          result = 145;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_393:
      result = 104;
      goto LABEL_483;
    }

    if (v2 == 1573906122)
    {
      result = 138;
      goto LABEL_483;
    }

    if (v2 == 1602181456)
    {
      result = 154;
      goto LABEL_483;
    }

    if (v2 != 1608945770)
    {
      goto LABEL_482;
    }

LABEL_290:
    result = 192;
    goto LABEL_483;
  }

  if (v2 <= 1540760352)
  {
    switch(v2)
    {
      case 1429914406:
        result = 23;
        goto LABEL_483;
      case 1434404433:
        result = 17;
        goto LABEL_483;
      case 1517755655:
        result = 171;
        goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 > 1554479184)
  {
    if (v2 == 1554479185)
    {
      result = 167;
      goto LABEL_483;
    }

    if (v2 == 1559256613)
    {
      result = 55;
      goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v2 == 1540760353)
  {
    result = 5;
    goto LABEL_483;
  }

  if (v2 != 1549248876)
  {
    goto LABEL_482;
  }

  result = 172;
LABEL_483:
  PlatformUtilities_iOS::GetProductType(void)::sType = result;
  return result;
}

CFStringRef PlatformUtilities_iOS::CopyAcousticIDFilePrefix(PlatformUtilities_iOS *this)
{
  if (MGIsQuestionValid())
  {
    v1 = MGGetSInt32Answer();
  }

  else
  {
    v1 = 0;
  }

  v21 = 0;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *__p = 0u;
  v18 = 0u;
  v15 = 0u;
  *__src = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v12);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "AID", 3);
  MEMORY[0x29C25FA00](v2, v1);
  if ((BYTE8(v19) & 0x10) != 0)
  {
    v4 = v19;
    if (v19 < __src[1])
    {
      *&v19 = __src[1];
      v4 = __src[1];
    }

    v5 = __src[0];
  }

  else
  {
    if ((BYTE8(v19) & 8) == 0)
    {
      v3 = 0;
      v11 = 0;
      goto LABEL_17;
    }

    v5 = *(&v14 + 1);
    v4 = *(&v15 + 1);
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v11 = v4 - v5;
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

LABEL_17:
  *(&__dst + v3) = 0;
  if (v11 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v7 = CFStringCreateWithCString(0, p_dst, 0x600u);
  if (v11 < 0)
  {
    operator delete(__dst);
  }

  *&v12 = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v13 = v8;
  *(&v13 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v14);
  std::iostream::~basic_iostream();
  MEMORY[0x29C25FBA0](v20);
  return v7;
}

void sub_296BF4038(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C25FBA0](va);
  _Unwind_Resume(a1);
}

CFStringRef PlatformUtilities_iOS::CopyProductTypeFilePrefix(int a1)
{
  v31 = *MEMORY[0x29EDCA608];
  *__str = 0;
  v29 = 0;
  v30 = 0;
  switch(a1)
  {
    case 1:
      v27 = 0;
      v1 = 184;
      goto LABEL_218;
    case 2:
      v27 = 0;
      goto LABEL_217;
    case 3:
      v27 = 97;
LABEL_217:
      v1 = 238;
      goto LABEL_218;
    case 4:
      v27 = 0;
      v1 = 520;
      goto LABEL_218;
    case 5:
      v27 = 0;
      v1 = 620;
LABEL_218:
      v24 = 98;
      goto LABEL_242;
    case 6:
      v27 = 0;
      v1 = 10;
      goto LABEL_241;
    case 7:
      v27 = 0;
      v1 = 11;
      goto LABEL_241;
    case 8:
      v27 = 0;
      v1 = 12;
      goto LABEL_241;
    case 9:
      v27 = 0;
      v1 = 16;
      goto LABEL_241;
    case 10:
      v27 = 0;
      v1 = 17;
      goto LABEL_241;
    case 11:
      v27 = 0;
      v1 = 101;
      goto LABEL_241;
    case 12:
      v27 = 0;
      v1 = 111;
      goto LABEL_241;
    case 13:
      v27 = 0;
      v1 = 121;
      goto LABEL_241;
    case 14:
      v27 = 0;
      v1 = 20;
      goto LABEL_241;
    case 15:
      v27 = 0;
      v1 = 21;
      goto LABEL_241;
    case 16:
      v27 = 0;
      v1 = 22;
      goto LABEL_241;
    case 17:
      v27 = 0;
      goto LABEL_228;
    case 18:
      v27 = 0;
      v1 = 28;
      goto LABEL_241;
    case 19:
      v27 = 0;
      v1 = 37;
      goto LABEL_241;
    case 20:
      v27 = 0;
      v1 = 38;
      goto LABEL_241;
    case 21:
      v27 = 0;
      v1 = 201;
      goto LABEL_241;
    case 22:
      v27 = 0;
      v1 = 211;
      goto LABEL_241;
    case 23:
      v27 = 0;
      v1 = 221;
      goto LABEL_241;
    case 24:
      v27 = 0;
      v1 = 32;
      goto LABEL_241;
    case 25:
      v27 = 0;
      v1 = 33;
      goto LABEL_241;
    case 26:
      v27 = 0;
      v1 = 79;
      goto LABEL_241;
    case 27:
      v27 = 0;
      v1 = 42;
      goto LABEL_241;
    case 28:
      v27 = 0;
      v1 = 43;
      goto LABEL_241;
    case 29:
      v27 = 0;
      v1 = 47;
      goto LABEL_241;
    case 30:
      v27 = 0;
      v1 = 48;
      goto LABEL_241;
    case 31:
      v27 = 0;
      v1 = 49;
      goto LABEL_241;
    case 32:
      v27 = 103;
      v1 = 52;
      goto LABEL_241;
    case 33:
      v2 = 103;
      goto LABEL_240;
    case 34:
      v2 = 112;
LABEL_240:
      v27 = v2;
      v1 = 53;
      goto LABEL_241;
    case 35:
      v27 = 112;
      v1 = 54;
      goto LABEL_241;
    case 36:
      v27 = 0;
      v1 = 63;
      goto LABEL_241;
    case 37:
      v27 = 0;
      v1 = 64;
      goto LABEL_241;
    case 38:
      v27 = 0;
      v1 = 73;
      goto LABEL_241;
    case 39:
      v27 = 0;
      v1 = 74;
      goto LABEL_241;
    case 40:
      v27 = 0;
      v1 = 83;
      goto LABEL_241;
    case 41:
      v27 = 0;
      v1 = 84;
      goto LABEL_241;
    case 42:
      v27 = 0;
      v1 = 93;
      goto LABEL_241;
    case 43:
      v27 = 0;
      v1 = 94;
      goto LABEL_241;
    case 44:
      v27 = 117;
LABEL_228:
      v1 = 27;
LABEL_241:
      v24 = 100;
      goto LABEL_242;
    case 45:
      v27 = 0;
      v1 = 59;
      goto LABEL_206;
    case 46:
      v27 = 0;
      v1 = 104;
      goto LABEL_213;
    case 47:
      v27 = 0;
      goto LABEL_53;
    case 48:
      v27 = 100;
LABEL_53:
      v1 = 42;
      goto LABEL_235;
    case 49:
      v27 = 0;
      goto LABEL_112;
    case 50:
      v3 = 98;
      goto LABEL_74;
    case 51:
      v3 = 115;
LABEL_74:
      v27 = v3;
LABEL_112:
      v1 = 71;
      goto LABEL_235;
    case 52:
      v27 = 0;
      v1 = 72;
      goto LABEL_235;
    case 53:
      v27 = 0;
      v1 = 73;
      goto LABEL_235;
    case 54:
      v27 = 0;
      v1 = 81;
      goto LABEL_235;
    case 55:
      v27 = 0;
      v1 = 82;
      goto LABEL_235;
    case 56:
      v27 = 0;
      goto LABEL_194;
    case 57:
      v27 = 109;
LABEL_194:
      v1 = 85;
      goto LABEL_235;
    case 58:
      v27 = 0;
      goto LABEL_234;
    case 59:
      v27 = 109;
LABEL_234:
      v1 = 86;
      goto LABEL_235;
    case 60:
      v27 = 0;
      goto LABEL_72;
    case 61:
      v27 = 109;
LABEL_72:
      v1 = 87;
      goto LABEL_235;
    case 62:
      v27 = 0;
      v1 = 96;
      goto LABEL_235;
    case 63:
      v27 = 0;
      v1 = 97;
      goto LABEL_235;
    case 64:
      v27 = 0;
      goto LABEL_210;
    case 65:
      v27 = 97;
LABEL_210:
      v1 = 98;
      goto LABEL_235;
    case 66:
      v27 = 0;
      goto LABEL_224;
    case 67:
      v27 = 97;
LABEL_224:
      v1 = 99;
      goto LABEL_235;
    case 68:
      v27 = 97;
      v1 = 105;
      goto LABEL_235;
    case 69:
      v27 = 0;
      v1 = 120;
      goto LABEL_235;
    case 70:
      v27 = 0;
      v1 = 127;
      goto LABEL_235;
    case 71:
      v27 = 0;
      v1 = 128;
      goto LABEL_235;
    case 72:
      v27 = 0;
      goto LABEL_152;
    case 73:
      v27 = 97;
LABEL_152:
      v1 = 171;
      goto LABEL_235;
    case 74:
      v27 = 0;
      v1 = 181;
      goto LABEL_235;
    case 75:
      v27 = 0;
      v1 = 182;
      goto LABEL_235;
    case 76:
      v27 = 0;
      v1 = 207;
      goto LABEL_235;
    case 77:
      v27 = 0;
      v1 = 210;
      goto LABEL_235;
    case 78:
      v27 = 0;
      v1 = 217;
      goto LABEL_235;
    case 79:
      v27 = 0;
      v1 = 255;
      goto LABEL_235;
    case 80:
      v27 = 0;
      v1 = 271;
      goto LABEL_235;
    case 81:
      v27 = 0;
      v1 = 272;
      goto LABEL_235;
    case 82:
      v27 = 0;
      v1 = 305;
      goto LABEL_235;
    case 83:
      v27 = 0;
      v1 = 307;
      goto LABEL_235;
    case 84:
      v27 = 0;
      v1 = 308;
      goto LABEL_235;
    case 85:
      v27 = 0;
      v1 = 310;
      goto LABEL_235;
    case 86:
      v27 = 0;
      v1 = 311;
      goto LABEL_235;
    case 87:
      v27 = 0;
      v1 = 317;
      goto LABEL_235;
    case 88:
      v27 = 0;
      v1 = 320;
      goto LABEL_235;
    case 89:
      v27 = 0;
      v1 = 348;
      goto LABEL_235;
    case 90:
      v27 = 0;
      v1 = 381;
      goto LABEL_235;
    case 91:
      v27 = 0;
      v1 = 382;
      goto LABEL_235;
    case 92:
      v27 = 0;
      v1 = 407;
      goto LABEL_235;
    case 93:
      v27 = 0;
      v1 = 408;
      goto LABEL_235;
    case 94:
      v27 = 0;
      v1 = 410;
      goto LABEL_235;
    case 95:
      v27 = 0;
      v1 = 411;
      goto LABEL_235;
    case 96:
      v27 = 0;
      v1 = 417;
      goto LABEL_235;
    case 97:
      v27 = 0;
      v1 = 420;
      goto LABEL_235;
    case 98:
      v27 = 0;
      v1 = 507;
      goto LABEL_235;
    case 99:
      v27 = 0;
      v1 = 508;
      goto LABEL_235;
    case 100:
      v27 = 0;
      v1 = 517;
      goto LABEL_235;
    case 101:
      v27 = 0;
      v1 = 522;
      goto LABEL_235;
    case 102:
      v27 = 0;
      v1 = 537;
      goto LABEL_235;
    case 103:
      v27 = 0;
      v1 = 538;
      goto LABEL_235;
    case 104:
      v27 = 0;
      v1 = 617;
      goto LABEL_235;
    case 105:
      v27 = 0;
      v1 = 620;
      goto LABEL_235;
    case 106:
      v27 = 0;
      v1 = 717;
      goto LABEL_235;
    case 107:
      v27 = 0;
      v1 = 720;
LABEL_235:
      v24 = 106;
      goto LABEL_242;
    case 108:
      v27 = 97;
      v1 = 27;
      goto LABEL_213;
    case 109:
      v27 = 97;
      v1 = 28;
      goto LABEL_213;
    case 110:
      v27 = 0;
      v1 = 41;
      goto LABEL_213;
    case 111:
      v27 = 0;
      v1 = 42;
      goto LABEL_213;
    case 112:
      v27 = 0;
      v1 = 48;
      goto LABEL_213;
    case 113:
      v27 = 0;
      v1 = 49;
      goto LABEL_213;
    case 114:
      v27 = 0;
      v1 = 51;
      goto LABEL_213;
    case 115:
      v27 = 0;
      v1 = 53;
      goto LABEL_213;
    case 116:
      v27 = 0;
      v1 = 56;
      goto LABEL_213;
    case 117:
      v27 = 0;
      v1 = 61;
      goto LABEL_213;
    case 118:
      v27 = 0;
      v1 = 64;
      goto LABEL_213;
    case 119:
      v27 = 0;
      v1 = 65;
      goto LABEL_213;
    case 120:
      v27 = 0;
      v1 = 66;
      goto LABEL_213;
    case 121:
      v27 = 0;
      v1 = 69;
      goto LABEL_213;
    case 122:
      v27 = 0;
      v1 = 71;
      goto LABEL_213;
    case 123:
      v27 = 0;
      v1 = 74;
      goto LABEL_213;
    case 124:
      v27 = 0;
      v1 = 75;
      goto LABEL_213;
    case 125:
      v27 = 0;
      v1 = 841;
      goto LABEL_213;
    case 126:
      v27 = 0;
      v1 = 102;
      goto LABEL_213;
    case 127:
      v27 = 0;
      v1 = 112;
      goto LABEL_213;
    case 128:
      v4 = 115;
      goto LABEL_61;
    case 129:
      v4 = 98;
LABEL_61:
      v27 = v4;
      v1 = 111;
      goto LABEL_213;
    case 130:
      v13 = 115;
      goto LABEL_204;
    case 131:
      v13 = 98;
LABEL_204:
      v27 = v13;
      v1 = 121;
      goto LABEL_213;
    case 132:
      v7 = 115;
      goto LABEL_82;
    case 133:
      v7 = 98;
LABEL_82:
      v27 = v7;
      v1 = 131;
      goto LABEL_213;
    case 134:
      v20 = 115;
      goto LABEL_133;
    case 135:
      v20 = 98;
LABEL_133:
      v27 = v20;
      v1 = 140;
      goto LABEL_213;
    case 136:
      v22 = 115;
      goto LABEL_135;
    case 137:
      v22 = 98;
LABEL_135:
      v27 = v22;
      v1 = 141;
      goto LABEL_213;
    case 138:
      v19 = 115;
      goto LABEL_130;
    case 139:
      v19 = 98;
LABEL_130:
      v27 = v19;
      v1 = 142;
      goto LABEL_213;
    case 140:
      v17 = 98;
      goto LABEL_168;
    case 141:
      v17 = 115;
LABEL_168:
      v27 = v17;
      v1 = 143;
      goto LABEL_213;
    case 142:
      v11 = 115;
      goto LABEL_164;
    case 143:
      v11 = 98;
LABEL_164:
      v27 = v11;
      v1 = 144;
      goto LABEL_213;
    case 144:
      v25 = 115;
      goto LABEL_185;
    case 145:
      v25 = 98;
LABEL_185:
      v27 = v25;
      v1 = 146;
      goto LABEL_213;
    case 146:
      v9 = 98;
      goto LABEL_189;
    case 147:
      v9 = 115;
LABEL_189:
      v27 = v9;
      v1 = 149;
      goto LABEL_213;
    case 148:
      v5 = 115;
      goto LABEL_199;
    case 149:
      v5 = 98;
LABEL_199:
      v27 = v5;
      v1 = 157;
      goto LABEL_213;
    case 150:
      v16 = 115;
      goto LABEL_97;
    case 151:
      v16 = 98;
LABEL_97:
      v27 = v16;
      v1 = 158;
      goto LABEL_213;
    case 152:
      v10 = 115;
      goto LABEL_191;
    case 153:
      v10 = 98;
LABEL_191:
      v27 = v10;
      v1 = 187;
      goto LABEL_213;
    case 154:
      v15 = 115;
      goto LABEL_148;
    case 155:
      v15 = 98;
LABEL_148:
      v27 = v15;
      v1 = 188;
      goto LABEL_213;
    case 156:
      v6 = 115;
      goto LABEL_166;
    case 157:
      v6 = 98;
LABEL_166:
      v27 = v6;
      v1 = 197;
      goto LABEL_213;
    case 158:
      v18 = 115;
      goto LABEL_126;
    case 159:
      v18 = 98;
LABEL_126:
      v27 = v18;
      v1 = 198;
      goto LABEL_213;
    case 160:
      v27 = 0;
      v1 = 199;
      goto LABEL_213;
    case 161:
      v8 = 115;
      goto LABEL_175;
    case 162:
      v8 = 98;
LABEL_175:
      v27 = v8;
      v1 = 207;
      goto LABEL_213;
    case 163:
      v12 = 115;
      goto LABEL_70;
    case 164:
      v12 = 98;
LABEL_70:
      v27 = v12;
      v1 = 208;
      goto LABEL_213;
    case 165:
      v14 = 115;
      goto LABEL_86;
    case 166:
      v14 = 98;
LABEL_86:
      v27 = v14;
      v1 = 217;
      goto LABEL_213;
    case 167:
      v23 = 115;
      goto LABEL_145;
    case 168:
      v23 = 98;
LABEL_145:
      v27 = v23;
      v1 = 218;
      goto LABEL_213;
    case 169:
      v27 = 0;
      v1 = 210;
      goto LABEL_213;
    case 170:
      v27 = 0;
      v1 = 101;
      goto LABEL_172;
    case 171:
      v27 = 0;
      v1 = 102;
      goto LABEL_172;
    case 172:
      v27 = 0;
      v1 = 103;
LABEL_172:
      v24 = 112;
      goto LABEL_242;
    case 173:
      v21 = 110;
      goto LABEL_177;
    case 174:
      v21 = 112;
LABEL_177:
      v27 = v21;
      v1 = 398;
      goto LABEL_178;
    case 175:
      v27 = 0;
      v1 = 456;
      goto LABEL_178;
    case 176:
      v27 = 112;
      v1 = 698;
      goto LABEL_178;
    case 177:
      v27 = 0;
      v1 = 720;
      goto LABEL_178;
    case 178:
      v27 = 0;
      v1 = 721;
      goto LABEL_178;
    case 179:
      v27 = 0;
      v1 = 734;
      goto LABEL_178;
    case 180:
      v27 = 0;
      v1 = 742;
      goto LABEL_178;
    case 181:
      v27 = 0;
      v1 = 1125;
      goto LABEL_178;
    case 182:
      v27 = 0;
      v1 = 1153;
      goto LABEL_178;
    case 183:
      v27 = 0;
      v1 = 1232;
      goto LABEL_178;
    case 184:
      v27 = 0;
      v1 = 1250;
      goto LABEL_178;
    case 185:
      v27 = 0;
      v1 = 1251;
      goto LABEL_178;
    case 186:
      v27 = 0;
      v1 = 1252;
      goto LABEL_178;
    case 187:
      v27 = 0;
      v1 = 1253;
      goto LABEL_178;
    case 188:
      snprintf(__str, 0x18uLL, "%c%d%c", 116, 698, 116);
      goto LABEL_243;
    case 189:
      v27 = 0;
      v1 = 6502;
      goto LABEL_178;
    case 190:
      v27 = 0;
      v1 = 6809;
LABEL_178:
      v24 = 116;
      goto LABEL_242;
    case 191:
      v27 = 0;
      v1 = 100;
      v24 = 113;
      goto LABEL_242;
    case 192:
      v27 = 0;
      v1 = 301;
LABEL_213:
      v24 = 110;
      goto LABEL_242;
    case 193:
      v27 = 0;
      v1 = 314;
      goto LABEL_139;
    case 194:
      v27 = 0;
      v1 = 317;
LABEL_139:
      v24 = 122;
      goto LABEL_242;
    case 195:
      v27 = 0;
      v1 = 101;
      goto LABEL_206;
    case 196:
      v27 = 0;
      v1 = 201;
      goto LABEL_206;
    case 197:
      v27 = 0;
      v1 = 301;
      goto LABEL_206;
    case 198:
      v27 = 0;
      v1 = 401;
      goto LABEL_206;
    case 199:
      v27 = 0;
      v1 = 501;
LABEL_206:
      v24 = 118;
LABEL_242:
      snprintf(__str, 0x18uLL, "%c%d%c", v24, v1, v27);
LABEL_243:
      if (!__str[0])
      {
        goto LABEL_245;
      }

      result = CFStringCreateWithCString(0, __str, 0x600u);
      break;
    default:
LABEL_245:
      result = 0;
      break;
  }

  return result;
}

uint64_t *CASmartPreferences::instance(CASmartPreferences *this)
{
  {
    if (v2)
    {
      CASmartPreferences::CASmartPreferences(v2);
    }
  }

  return &CASmartPreferences::instance(void)::global;
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  CASmartPreferences::instance(void)::global = 850045863;
  unk_2A18B8170 = 0u;
  unk_2A18B8180 = 0u;
  unk_2A18B8190 = 0u;
  qword_2A18B81A0 = 0;
  qword_2A18B81A8 = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
  global_queue = dispatch_get_global_queue(0, 0);
  unk_2A18B81B0 = 0u;
  unk_2A18B81C0 = 0u;
  qword_2A18B81C8 = dispatch_source_create(MEMORY[0x29EDCA5C0], 1uLL, 0, global_queue);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_2;
  handler[4] = &CASmartPreferences::instance(void)::global;
  dispatch_source_set_event_handler(qword_2A18B81C8, handler);
  dispatch_resume(qword_2A18B81C8);
}

void ___ZN18CASmartPreferencesC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  CFSetApplyFunction(*(v1 + 64), SynchronizePrefDomain, 0);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(v1);
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {
    v4 = result;
    v3 = this[5];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(v3->isa + 6))(v3, &v4);
  }

  return result;
}

BOOL CASmartPreferences::InterpretBoolean(CASmartPreferences *this, _BYTE *a2, BOOL *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      LODWORD(this) = CFBooleanGetValue(v4);
LABEL_6:
      *a2 = 1;
      return this != 0;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      LODWORD(this) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v5 != CFStringGetTypeID())
    {
      LODWORD(this) = 0;
      return this != 0;
    }

    v14 = 0u;
    v15 = 0u;
    *buffer = 0u;
    v13 = 0u;
    CFStringGetCString(v4, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(this) = valuePtr != 0;
      return this != 0;
    }

    v7 = buffer[0];
    if (buffer[0])
    {
      v8 = &buffer[1];
      do
      {
        *(v8 - 1) = __tolower(v7);
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v10 = *&buffer[4] == 101) : (v10 = 0), v10))
    {
      LODWORD(this) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | buffer[4]))
    {
      LODWORD(this) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(this) = valuePtr;
    }
  }

  return this != 0;
}

void CASmartPreferences::_RegisterFirstHandler(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  std::mutex::lock(a1);
  v8 = *(a1 + 72);
  v10 = *(a1 + 80);
  v9 = (a1 + 72);
  while (v8 != v10)
  {
    if (CFEqual(a2, *v8) && CFEqual(a3, v8[1]))
    {
      goto LABEL_29;
    }

    v8 += 6;
  }

  CFRetain(a2);
  CFRetain(a3);
  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (v12 >= v11)
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *v9) >> 4);
    if (v14 + 1 > 0x555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v9) >> 4);
    v16 = 2 * v15;
    if (2 * v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v17 = 0x555555555555555;
    }

    else
    {
      v17 = v16;
    }

    v33 = a1 + 72;
    if (v17)
    {
      if (v17 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = 0;
    v31 = 48 * v14;
    v32 = 48 * v14;
    std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>((48 * v14), a2, a3, a4);
    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    v20 = 48 * v14 - (v18 - v19);
    *&v32 = v32 + 48;
    if (v18 == v19)
    {
LABEL_27:
      v27 = *(a1 + 72);
      *(a1 + 72) = v20;
      v28 = *(a1 + 88);
      v29 = v32;
      *(a1 + 80) = v32;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v30 = v27;
      v31 = v27;
      std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(&v30);
      v13 = v29;
      goto LABEL_28;
    }

    v21 = (v31 - 16 * ((v18 - v19) >> 4) + 40);
    v22 = v19 + 40;
    v23 = v31 - (v18 - v19);
    while (1)
    {
      *(v21 - 5) = *(v22 - 5);
      v24 = *v22;
      if (*v22)
      {
        if (v22 - 3 == v24)
        {
          *v21 = v21 - 3;
          (*(**v22 + 24))();
          goto LABEL_25;
        }

        *v21 = v24;
        v25 = v22;
      }

      else
      {
        v25 = (v23 + 40);
      }

      *v25 = 0;
LABEL_25:
      v23 += 48;
      v21 += 6;
      v26 = (v22 + 1);
      v22 += 6;
      if (v26 == v18)
      {
        do
        {
          std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100]((v19 + 16));
          v19 += 48;
        }

        while (v19 != v18);
        goto LABEL_27;
      }
    }
  }

  std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(*(a1 + 80), a2, a3, a4);
  v13 = v12 + 48;
  *(a1 + 80) = v12 + 48;
LABEL_28:
  *(a1 + 80) = v13;
  CFSetAddValue(*(a1 + 64), a3);
  CASmartPreferences::Pref::Load((*(a1 + 80) - 48));
LABEL_29:
  std::mutex::unlock(a1);
}

void sub_296BF51D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(va);
  std::mutex::unlock(v4);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v8, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v8);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_296BF5298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_296BF5490(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::list<int>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void CDelaunayTriangles3D::~CDelaunayTriangles3D(CDelaunayTriangles3D *this)
{
  if (*(this + 5))
  {
    v2 = this + 24;
    v3 = *(this + 4);
    v4 = *(*(this + 3) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 5) = 0;
    if (v3 != this + 24)
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(this + 2))
  {
    v7 = *(this + 1);
    v8 = *(*this + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 2) = 0;
    if (v7 != this)
    {
      do
      {
        v10 = *(v7 + 1);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != this);
    }
  }
}

void *std::list<int>::remove(void *result, int a2)
{
  v22 = &v22;
  __p = &v22;
  v2 = result[1];
  if (v2 == result)
  {
    return result;
  }

  v24 = 0;
  if (&v22 == result)
  {
    while (1)
    {
      v16 = v2[1];
      if (*(v2 + 4) == a2)
      {
        break;
      }

LABEL_24:
      v2 = v16;
      if (v16 == result)
      {
        return result;
      }
    }

    if (v16 == result)
    {
      v17 = 1;
    }

    else
    {
      if (*(v16 + 4) != a2)
      {
LABEL_30:
        v17 = 0;
        if (v2 == v16)
        {
LABEL_35:
          if (!v17)
          {
            v16 = v16[1];
          }

          goto LABEL_24;
        }

LABEL_34:
        v18 = *v16;
        v19 = *(*v16 + 8);
        v20 = *v2;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = v22;
        v22[1] = v2;
        *v2 = v21;
        v22 = v18;
        v18[1] = &v22;
        goto LABEL_35;
      }

      while (1)
      {
        v16 = v16[1];
        v17 = v16 == result;
        if (v16 == result)
        {
          break;
        }

        if (*(v16 + 4) != a2)
        {
          goto LABEL_30;
        }
      }
    }

    if (v2 == v16)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v3 = 0;
  v4 = &v22;
  do
  {
    v5 = v2[1];
    if (*(v2 + 4) == a2)
    {
      if (v5 == result)
      {
LABEL_9:
        v6 = 1;
      }

      else
      {
        while (1)
        {
          v6 = *(v5 + 16) == a2;
          if (*(v5 + 16) != a2)
          {
            break;
          }

          v5 = *(v5 + 8);
          if (v5 == result)
          {
            goto LABEL_9;
          }
        }
      }

      if (v2 != v5)
      {
        v4 = *v5;
        if (*v5 == v2)
        {
          v9 = 1;
        }

        else
        {
          v7 = -1;
          v8 = v2;
          do
          {
            v8 = v8[1];
            ++v7;
          }

          while (v8 != v4);
          v9 = v7 + 2;
        }

        result[2] -= v9;
        v3 += v9;
        v10 = v4[1];
        v11 = *v2;
        *(v11 + 8) = v10;
        *v10 = v11;
        v12 = v22;
        v22[1] = v2;
        *v2 = v12;
        v22 = v4;
        v4[1] = &v22;
      }

      if (!v6)
      {
        v5 = *(v5 + 8);
      }
    }

    v2 = v5;
  }

  while (v5 != result);
  if (v3)
  {
    result = __p;
    v13 = v4[1];
    v14 = *__p;
    *(v14 + 8) = v13;
    *v13 = v14;
    v24 = 0;
    if (result != &v22)
    {
      do
      {
        v15 = result[1];
        operator delete(result);
        result = v15;
      }

      while (v15 != &v22);
    }
  }

  return result;
}

void *std::list<std::array<int,2ul>>::remove(void *result, uint64_t *a2)
{
  v24 = &v24;
  __p = &v24;
  v26 = 0;
  v2 = result[1];
  if (v2 != result)
  {
    if (&v24 == result)
    {
      do
      {
        v17 = v2[1];
        if (v2[2] == *a2)
        {
          if (v17 == result)
          {
LABEL_31:
            v19 = 1;
          }

          else
          {
            v18 = *a2;
            while (1)
            {
              v19 = v17[2] == v18;
              if (v17[2] != v18)
              {
                break;
              }

              v17 = v17[1];
              if (v17 == result)
              {
                goto LABEL_31;
              }
            }
          }

          if (v2 != v17)
          {
            v20 = *v17;
            v21 = *(*v17 + 8);
            v22 = *v2;
            *(v22 + 8) = v21;
            *v21 = v22;
            v23 = v24;
            v24[1] = v2;
            *v2 = v23;
            v24 = v20;
            v20[1] = &v24;
          }

          if (!v19)
          {
            v17 = v17[1];
          }
        }

        v2 = v17;
      }

      while (v17 != result);
    }

    else
    {
      v3 = 0;
      v4 = &v24;
      do
      {
        v5 = v2[1];
        if (v2[2] == *a2)
        {
          if (v5 == result)
          {
LABEL_10:
            v7 = 1;
          }

          else
          {
            v6 = *a2;
            while (1)
            {
              v7 = v5[2] == v6;
              if (v5[2] != v6)
              {
                break;
              }

              v5 = v5[1];
              if (v5 == result)
              {
                goto LABEL_10;
              }
            }
          }

          if (v2 != v5)
          {
            v4 = *v5;
            if (*v5 == v2)
            {
              v10 = 1;
            }

            else
            {
              v8 = -1;
              v9 = v2;
              do
              {
                v9 = v9[1];
                ++v8;
              }

              while (v9 != v4);
              v10 = v8 + 2;
            }

            result[2] -= v10;
            v3 += v10;
            v11 = v4[1];
            v12 = *v2;
            *(v12 + 8) = v11;
            *v11 = v12;
            v13 = v24;
            v24[1] = v2;
            *v2 = v13;
            v26 = v3;
            v24 = v4;
            v4[1] = &v24;
          }

          if (!v7)
          {
            v5 = v5[1];
          }
        }

        v2 = v5;
      }

      while (v5 != result);
      if (v3)
      {
        result = __p;
        v14 = v4[1];
        v15 = *__p;
        *(v15 + 8) = v14;
        *v14 = v15;
        v26 = 0;
        if (result != &v24)
        {
          do
          {
            v16 = result[1];
            operator delete(result);
            result = v16;
          }

          while (v16 != &v24);
        }
      }
    }
  }

  return result;
}

uint64_t CDelaunayTriangles3D::find_one_delaunay3(CDelaunayTriangles3D *this, const double *a2, const double *a3, const double *a4, int *a5, int a6)
{
  v6 = *(this + 5);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 != 1)
  {
    v12 = this + 24;
    v13 = *(this + 4);
    if (v13 != (this + 24))
    {
      v14 = 0;
      v15 = *(this + 4);
      do
      {
        result = *(v15 + 16);
        if (result != a5 && result != a6)
        {
          v17.f64[0] = a2[a5];
          v18 = a2[a6];
          v19 = a2[result];
          v20.f64[0] = a3[a5];
          v21 = a3[a6];
          v22 = a3[result];
          v23.f64[0] = a4[a5];
          v24 = a4[a6];
          v25 = a4[result];
          if (-(v21 * v19 - v22 * v18) * v23.f64[0] + -(v24 * v22 - v25 * v21) * v17.f64[0] + -(v25 * v18 - v24 * v19) * v20.f64[0] > 0.0)
          {
            v26.f64[0] = v17.f64[0] * v17.f64[0] + v20.f64[0] * v20.f64[0] + v23.f64[0] * v23.f64[0];
            v26.f64[1] = v18 * v18 + v21 * v21 + v24 * v24;
            v17.f64[1] = a2[a6];
            v20.f64[1] = a3[a6];
            v23.f64[1] = a4[a6];
            v27 = v14;
            v28 = v13;
            while (1)
            {
              if (v27)
              {
                v29 = *(v28 + 4);
                if (v29 != a5 && v29 != a6)
                {
                  v31.f64[0] = v19 * v19 + v22 * v22 + v25 * v25;
                  v31.f64[1] = a2[v29] * a2[v29] + a3[v29] * a3[v29] + a4[v29] * a4[v29];
                  v32.f64[0] = a2[result];
                  v32.f64[1] = a2[v29];
                  *v33.i64 = a3[result];
                  *&v33.i64[1] = a3[v29];
                  *v34.i64 = a4[result];
                  *&v34.i64[1] = a4[v29];
                  v35 = vextq_s8(v33, v20, 8uLL);
                  v36 = vextq_s8(v20, v33, 8uLL);
                  v37 = vextq_s8(v34, v23, 8uLL);
                  v38 = vextq_s8(v23, v34, 8uLL);
                  v39 = vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v36, v37)), v38, v35), v32);
                  v40 = vextq_s8(v32, v17, 8uLL);
                  v41 = vextq_s8(v17, v32, 8uLL);
                  v42 = vmlaq_f64(vmlaq_f64(v39, v41, vmlaq_f64(vnegq_f64(vmulq_f64(v35, v34)), v37, v33)), v40, vmlaq_f64(vnegq_f64(vmulq_f64(v33, v38)), v34, v36));
                  v43 = vmulq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v35, v38)), v37, v36), v17), v40, vmlaq_f64(vnegq_f64(vmulq_f64(v36, v23)), v38, v20)), v41, vmlaq_f64(vnegq_f64(vmulq_f64(v20, v37)), v23, v35)), v31);
                  v44 = vmulq_f64(v42, v26);
                  if (vaddvq_f64(vsubq_f64(vzip1q_s64(v44, v43), vzip2q_s64(v44, v43))) > 1.0e-13)
                  {
                    break;
                  }
                }
              }

              v28 = *(v28 + 1);
              --v27;
              if (v28 == v12)
              {
                return result;
              }
            }
          }
        }

        v15 = *(v15 + 8);
        ++v14;
      }

      while (v15 != v12);
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(*(this + 4) + 16);
  if (v7 == a5 || v7 == a6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[a6];
  v10 = a2[v7];
  if (-(a3[a6] * v10 - a3[v7] * v9) * a4[a5] + -(a4[a6] * a3[v7] - a4[v7] * a3[a6]) * a2[a5] + -(a4[v7] * v9 - a4[a6] * v10) * a3[a5] <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

uint64_t CDelaunayTriangles3D::find_subtriangle_containment(unint64_t this, double a2, double a3, double a4)
{
  v43 = *MEMORY[0x29EDCA608];
  if ((this & 0x8000000000000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 <= -0.00000011920929)
  {
    v4 = 4 * (a2 > -0.00000011920929);
  }

  else
  {
    v4 = (4 * (a2 > -0.00000011920929)) | 2;
  }

  if (a4 <= -0.00000011920929)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (this)
  {
    v5 = (v5 << (2 * this));
    v6 = fabs(a4);
    v7 = fabs(a3);
    v8 = fabs(a2);
    v9 = (this + 1);
    v10 = 2 * this - 2;
    v11 = MEMORY[0x29EDCA988];
    do
    {
      v13 = v7 + v7;
      v12 = v8 + v8;
      v14 = v6 - (v7 + v8);
      v15 = fmin(v6 + v6, fmin(v7 + v7, v8 - (v6 + v7)));
      v16 = fmin(v14, fmin(v7 + v7, v8 + v8));
      v17 = v15 < v16;
      v18 = v15 < v16;
      v31 = v15;
      v32 = v16;
      v19 = fmin(v6 + v6, fmin(v7 - (v8 + v6), v8 + v8));
      v20 = fmin(v7 + v8 - v6, fmin(v8 - v7 + v6, v6 + v7 - v8));
      v33 = v19;
      v34 = v20;
      v21 = fmax(v15, v16);
      v22 = 8 * v18;
      if (v17)
      {
        v23 = &v32;
      }

      else
      {
        v23 = &v31;
      }

      v24 = fmax(v21, v19);
      if (v21 < v19)
      {
        v22 = 16;
        v23 = &v33;
      }

      if (v24 >= v20)
      {
        v25 = v22;
      }

      else
      {
        v25 = 24;
      }

      if (v24 >= v20)
      {
        v26 = v23;
      }

      else
      {
        v26 = &v34;
      }

      v27 = *(&v31 + v25);
      if (v27 > -0.00000011920929)
      {
        v28 = v26 - &v31;
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            LODWORD(v29) = 2;
LABEL_43:
            v5 = ((v29 << v10) + v5);
            v13 = v7 - (v8 + v6);
LABEL_44:
            v14 = v6 + v6;
            goto LABEL_11;
          }

          if (v28 == 3)
          {
            LODWORD(v29) = 3;
LABEL_39:
            v5 = ((v29 << v10) + v5);
            v12 = v6 + v7 - v8;
            v13 = v8 - v7 + v6;
            v14 = v7 + v8 - v6;
            goto LABEL_11;
          }
        }

        else
        {
          if (!v28)
          {
            goto LABEL_36;
          }

          if (v28 == 1)
          {
            LODWORD(v29) = 1;
            goto LABEL_35;
          }
        }
      }

      if (v27 <= -0.0000011920929)
      {
        goto LABEL_40;
      }

      v29 = v26 - &v31;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          goto LABEL_43;
        }

        if (v29 != 3)
        {
LABEL_40:
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v36 = "DelaunayTriangles3D.cpp";
            v37 = 1024;
            v38 = 477;
            v39 = 2080;
            v40 = "find_subtriangle_containment";
            v41 = 1024;
            v42 = 477;
            _os_log_impl(&dword_296B9D000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: subtriangle still not found in computing rank with relaxed test!", buf, 0x22u);
          }

          v12 = v8;
          v13 = v7;
          v14 = v6;
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      if (!v29)
      {
LABEL_36:
        v12 = v8 - (v6 + v7);
        goto LABEL_44;
      }

      if (v29 != 1)
      {
        goto LABEL_40;
      }

LABEL_35:
      v5 = ((v29 << v10) + v5);
LABEL_11:
      --v9;
      v10 -= 2;
      v6 = v14;
      v7 = v13;
      v8 = v12;
    }

    while (v9 > 1);
  }

  return v5;
}

uint64_t std::list<int>::__sort<std::__less<void,void>>(uint64_t result, uint64_t **a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v4 = *a2;
    if (*(*a2 + 4) < *(result + 16))
    {
      v6 = *v4;
      v5 = v4[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      v7 = *result;
      *(v7 + 8) = v4;
      *v4 = v7;
      *result = v4;
      v4[1] = result;
      return v4;
    }
  }

  else
  {
    v9 = a3 >> 1;
    v10 = (a3 >> 1) + 1;
    v11 = result;
    do
    {
      v11 = *(v11 + 8);
      --v10;
    }

    while (v10 > 1);
    v12 = std::list<int>::__sort<std::__less<void,void>>(result, v11, a3 >> 1);
    result = std::list<int>::__sort<std::__less<void,void>>(v11, a2, a3 - v9);
    v13 = *(v12 + 16);
    if (*(result + 16) >= v13)
    {
      v18 = *(v12 + 8);
      i = result;
      result = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    else
    {
      for (i = *(result + 8); i != a2; i = *(i + 8))
      {
        if (*(i + 16) >= v13)
        {
          break;
        }
      }

      v15 = *i;
      v16 = *(*i + 8);
      v17 = *result;
      *(v17 + 8) = v16;
      *v16 = v17;
      v19 = *v12;
      v18 = *(v12 + 8);
      *(v19 + 8) = result;
      *result = v19;
      *v12 = v15;
      *(v15 + 8) = v12;
      if (v18 == i)
      {
        return result;
      }
    }

    if (i != a2)
    {
      v20 = i;
      do
      {
        v21 = *(v18 + 4);
        if (*(i + 16) >= v21)
        {
          v18 = v18[1];
          if (v18 == v20)
          {
            return result;
          }
        }

        else
        {
          for (j = *(i + 8); j != a2; j = *(j + 8))
          {
            if (*(j + 16) >= v21)
            {
              break;
            }
          }

          v23 = *j;
          v24 = *(*j + 8);
          v25 = *i;
          *(v25 + 8) = v24;
          *v24 = v25;
          if (v20 == i)
          {
            v20 = j;
          }

          v27 = *v18;
          v26 = v18[1];
          *(v27 + 8) = i;
          *i = v27;
          *v18 = v23;
          *(v23 + 8) = v18;
          v18 = v26;
          i = j;
          if (v26 == v20)
          {
            return result;
          }
        }
      }

      while (i != a2);
    }
  }

  return result;
}

BOOL CDelaunayTriangles3D::is_origin_inside_hull(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int16x4_t a6, double a7, float64x2_t a8, float64x2_t a9, double a10, float64x2_t a11, float64x2_t a12)
{
  v17 = a4[1] - *a4;
  __A.i32[0] = 0;
  v18 = *a5;
  v19 = a5[1];
  v20 = (v19 - *a5) >> 2;
  if (v17 >> 2 <= v20)
  {
    if (v17 >> 2 < v20)
    {
      v19 = v18 + v17;
      a5[1] = v18 + v17;
    }
  }

  else
  {
    std::vector<float>::__append(a5, (v17 >> 2) - v20, &__A, a6);
    v18 = *a5;
    v19 = a5[1];
  }

  v21 = (v19 - v18) >> 2;
  if (v21 >= 3)
  {
    v22 = v21 / 3;
    v23 = *a4;
    v24 = 1;
    v25 = 2;
    do
    {
      v26 = 4 * (v25 - 2);
      v27 = *(v23 + v26);
      v28 = *(a1 + 8 * v27);
      a8.f64[0] = *(a2 + 8 * v27);
      v29 = *(v23 + 4 * (v25 - 1));
      a9.f64[0] = *(a3 + 8 * v27);
      v30 = *(a1 + 8 * v29);
      *a11.f64 = *(a2 + 8 * v29);
      v31 = *(v23 + 4 * v25);
      *a8.f64 = a8.f64[0];
      *a12.f64 = *(a3 + 8 * v29);
      *a9.f64 = a9.f64[0];
      v32 = *(a1 + 8 * v31);
      v33 = *(a2 + 8 * v31);
      v34 = *(a3 + 8 * v31);
      *&v28 = v28;
      v35.f64[0] = (v30 - *&v28);
      a11.f64[0] = (*a11.f64 - *a8.f64);
      a12.f64[0] = (*a12.f64 - *a9.f64);
      v36.f64[0] = (v32 - *&v28);
      a8.f64[0] = (v33 - *a8.f64);
      a9.f64[0] = (v34 - *a9.f64);
      v37 = vmulq_f64(a8, a12);
      a12.f64[1] = v35.f64[0];
      v35.f64[1] = a11.f64[0];
      v38 = vmlaq_f64(vnegq_f64(v37), a11, a9);
      a9.f64[1] = v36.f64[0];
      v39 = (v18 + v26);
      v36.f64[1] = a8.f64[0];
      v40 = vmlaq_f64(vnegq_f64(vmulq_f64(a9, v35)), a12, v36);
      v41 = vmulq_f64(v40, v40);
      a9 = vmulq_f64(v38, v38);
      v38.f64[1] = v40.f64[0];
      v41.f64[0] = 1.0 / sqrt(a9.f64[0] + v41.f64[0] + v41.f64[1]);
      a8 = vmulq_laneq_f64(v41, v40, 1);
      *v39 = vcvt_f32_f64(vmulq_n_f64(v38, v41.f64[0]));
      *v41.f64 = a8.f64[0];
      v42 = v22 > v24++;
      v25 += 3;
      v39[1].i32[0] = LODWORD(v41.f64[0]);
    }

    while (v42);
  }

  if ((v19 - v18) < 9)
  {
    return 1;
  }

  v43 = 2;
  for (i = 1; ; ++i)
  {
    v59 = 0;
    __A = 0;
    v45 = 4 * (v43 - 2);
    v46 = 8 * *(*a4 + v45);
    v47 = *(a3 + v46);
    v48 = 8 * *(*a4 + 4 * (v43 - 1));
    v49 = *(a3 + v48) + v47;
    v50 = 8 * *(*a4 + 4 * v43);
    v51 = *(a3 + v50) + v49;
    v52.f64[0] = *(a1 + v46);
    v52.f64[1] = *(a2 + v46);
    v53.f64[0] = *(a1 + v48);
    v53.f64[1] = *(a2 + v48);
    v54 = vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v53, vcvtq_f64_f32(vcvt_f32_f64(v52)))));
    v53.f64[0] = *(a1 + v50);
    v53.f64[1] = *(a2 + v50);
    __A = vcvt_f32_f64(vaddq_f64(v53, v54));
    *&v51 = v51;
    v59 = LODWORD(v51);
    __C = 0.0;
    vDSP_dotpr(&__A, 1, (v18 + v45), 1, &__C, 3uLL);
    result = __C > 0.0;
    if (__C <= 0.0)
    {
      break;
    }

    v56 = i;
    v18 = *a5;
    v43 += 3;
    if (v56 >= ((a5[1] - *a5) >> 2) / 3uLL)
    {
      return 1;
    }
  }

  return result;
}

uint64_t VBAP::initialize(uint64_t a1, uint64_t *a2, uint64_t *a3, char **a4, uint64_t *a5)
{
  v5 = a1;
  v147 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  *(a1 + 16) = v6;
  if (*(a1 + 4))
  {
    v9 = 0;
    v10 = 0;
    v11 = *a2;
    v12 = *a3;
    do
    {
      v21 = *(v11 + 4 * v10);
      v22 = *(v12 + 4 * v10);
      v23 = v5[3];
      if (v6 < v23)
      {
        *v6 = v21;
        *(v6 + 1) = v22;
        v6 += 8;
      }

      else
      {
        v24 = v5[1];
        v25 = v6 - v24;
        v26 = (v6 - v24) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v28 = v23 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (!(v29 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v30 = v26;
        v31 = v5;
        v32 = (8 * v26);
        *v32 = v21;
        v32[1] = v22;
        v6 = (8 * v26 + 8);
        v33 = &v32[-2 * v30];
        memcpy(v33, v24, v25);
        v31[1] = v33;
        v31[2] = v6;
        v31[3] = 0;
        v5 = v31;
        if (v24)
        {
          operator delete(v24);
        }
      }

      v5[2] = v6;
      v11 = *a2;
      v12 = *a3;
      v13 = v5[7];
      v14 = (v13 + 4 * v9);
      v15 = *(*a2 + 4 * v10) * 0.0174532925;
      v16 = __sincos_stret(*(*a3 + 4 * v10) * 0.0174532925);
      v17 = __sincos_stret(v15);
      v18 = v16.__cosval * v17.__cosval;
      v19 = v16.__cosval * v17.__sinval;
      *v14 = v18;
      v14[1] = v19;
      sinval = v16.__sinval;
      v14[2] = sinval;
      ++v10;
      v9 += 3;
    }

    while (v10 < *(v5 + 1));
  }

  else
  {
    v13 = *(a1 + 56);
  }

  v34 = (v5[8] - v13) >> 2;
  if (v34 >= 3)
  {
    if (v34 >> 62 != 3)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (VBAP::find_duplicate_vertex(0, 0, 0, (v34 / 3)))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      v143 = 2080;
      v144 = "initialize";
      v145 = 1024;
      v146 = 121;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Duplicate vertices were found", buf, 0x22u);
    }

    return 4294967246;
  }

  if (v5[2] - v5[1] == 16)
  {
    LODWORD(__C) = 0;
    vDSP_distancesq(v5[7], 1, (v5[7] + 12), 1, &__C, 3uLL);
    if (fabsf(*&__C + -4.0) < 0.00001)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 130;
        v143 = 2080;
        v144 = "initialize";
        v145 = 1024;
        v146 = 130;
        _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%25s:%-5d CADSPUtility:%s:%d: Diametrically opposed speakers; No need to generate convex hull", buf, 0x22u);
      }

      v35 = 0;
      *(v5 + 313) = 1;
      return v35;
    }

    *(v5 + 313) = 0;
  }

  if (*(v5 + 1) == 1)
  {
    *(v5 + 312) = 1;
    v36 = v5[10];
    if (v5[11] != v36)
    {
      v5[11] = v36;
    }

    return 0;
  }

  if (((v5[8] - v5[7]) >> 2) > 2)
  {
    operator new();
  }

  *(v5 + 312) = 1;
  *v5 = 0;
  *&buf[8] = 0;
  *buf = 0;
  LODWORD(v139) = 0;
  __C = 0;
  v141 = 0.0;
  __A = 0;
  v137 = 0.0;
  v136 = 0;
  v37 = *(v5 + 1);
  __B = 0.0;
  v134 = 0.0;
  v135 = 0.0;
  if (v37 != -1)
  {
    operator new();
  }

  v38 = v5[7];
  v39 = 0;
  v40 = 0;
  do
  {
    *(8 * v39) = *(v38 + 4 * v40);
    *(8 * v39) = *(v38 + 4 * (v40 + 1));
    *(8 * v39++) = *(v38 + 4 * (v40 + 2));
    v40 += 3;
  }

  while (v39 != 0xFFFFFFFFLL);
  vDSP_meanvD(0, 1, &__B, 0);
  vDSP_meanvD(0, 1, &v135, (*(v5 + 1) + 1));
  vDSP_meanvD(0, 1, &v134, (*(v5 + 1) + 1));
  __B = -__B;
  v134 = -v134;
  v135 = -v135;
  vDSP_vsaddD(0, 1, &__B, 0, 1, (*(v5 + 1) + 1));
  vDSP_vsaddD(0, 1, &v135, 0, 1, (*(v5 + 1) + 1));
  vDSP_vsaddD(0, 1, &v134, 0, 1, (*(v5 + 1) + 1));
  v43 = *(v5 + 1);
  v44 = (v43 + 1);
  if (v44 >= 4)
  {
    v52 = 0;
    v53 = 2;
    v54 = 1;
    v45 = 1;
    do
    {
      if (v52 + 2 < v44)
      {
        v55.f64[0] = *(8 * v52);
        v55.f64[1] = v55.f64[0];
        v41.f64[0] = v55.f64[0];
        v56.f64[0] = v55.f64[0];
        *&v56.f64[1] = vextq_s8(v55, v55, 8uLL).u64[0];
        v57 = v54;
        v58 = v53;
        while (2)
        {
          v59 = (8 * v58);
          v60 = v59;
          v61 = v59;
          v62.f64[0] = *(8 * v57);
          v62.f64[1] = v62.f64[0];
          v42.f64[0] = v62.f64[0];
          v65 = vsubq_f64(v62, v56);
          v63 = vextq_s8(v65, v65, 8uLL);
          v64 = vsubq_f64(v42, v41);
          v66.f64[0] = v64.f64[0];
          v66.f64[1] = v65.f64[0];
          v65.f64[1] = v63.f64[0];
          *&v66.f64[1] = vextq_s8(v66, v66, 8uLL).u64[0];
          v67 = v58;
          do
          {
            v68.f64[0] = *v61;
            v42.f64[0] = *v59;
            v68.f64[1] = *v60;
            v69 = vsubq_f64(v68, __PAIR128__(*&v56.f64[1], *&v55.f64[0]));
            v70 = vsubq_f64(v42, v41);
            v71 = vmulq_f64(v70, v63);
            v70.f64[1] = v69.f64[0];
            v72 = vmlaq_f64(vnegq_f64(vmulq_f64(v69, v66)), v65, v70);
            v73 = vmlaq_laneq_f64(vnegq_f64(v71), v64, v69, 1);
            v42.f64[0] = v73.f64[0];
            v42.f64[1] = v72.f64[0];
            if (vaddvq_f64(vabsq_f64(v42)) + vabsq_f64(vdupq_laneq_s64(v72, 1)).f64[0] > 0.05)
            {
              v74 = 0;
              v75.f64[0] = v72.f64[0];
              *&v75.f64[1] = vextq_s8(v72, v72, 8uLL).u64[0];
              v76 = vmulq_f64(v75, v75);
              *v76.f64 = sqrt(vmulq_f64(v73, v73).f64[0] + v76.f64[0] + v76.f64[1]);
              v77 = 1.0 / *v76.f64;
              while (1)
              {
                if (v52 != v74 && v57 != v74 && v67 != v74)
                {
                  v78.f64[0] = *(8 * v74);
                  v78.f64[1] = v78.f64[0];
                  v65.f64[0] = v78.f64[0];
                  v65 = vmulq_laneq_f64(vsubq_f64(v65, v41), v72, 1);
                  if (fabs((vaddvq_f64(vmulq_f64(vsubq_f64(v78, v55), v42)) + v65.f64[0]) * v77) > 0.01)
                  {
                    break;
                  }
                }

                if (v44 == ++v74)
                {
                  goto LABEL_43;
                }
              }

              v45 = 0;
              goto LABEL_44;
            }

            ++v67;
            ++v59;
            ++v60;
            ++v61;
          }

          while (v44 > v67);
          ++v57;
          ++v58;
          if (v57 != v43)
          {
            continue;
          }

          break;
        }
      }

      ++v52;
      ++v53;
      ++v54;
    }

    while (v52 != v43 - 1);
  }

  else
  {
LABEL_43:
    v45 = 1;
  }

LABEL_44:
  operator delete(0);
  operator delete(0);
  operator delete(0);
  v46 = *(v5 + 1);
  if (v45)
  {
    if (v46 >= 3)
    {
      operator new();
    }

    v79 = v5;
    vDSP_meanv(v5[7], 3, buf, v46);
    vDSP_meanv((v79[7] + 4), 3, &buf[4], *(v79 + 1));
    vDSP_meanv((v79[7] + 8), 3, &buf[8], *(v79 + 1));
    v100 = vnegq_f32(*buf);
    LODWORD(v139) = v100.i32[2];
    __C = v100.i64[0];
    v101 = *(v5 + 1);
    if (v101 < 2)
    {
      v82.f64[0] = 0.0;
      v114 = 0.0;
    }

    else
    {
      v102 = v5[7];
      v107 = vcvtq_f64_f32(vadd_f32(*v102, *buf));
      v106.f64[0] = (v102[1].f32[0] + *&buf[8]);
      v106.f64[1] = v107.f64[0];
      v103 = vextq_s8(v107, v107, 8uLL);
      v104 = v101 - 2;
      v105 = 5;
      *&v106.f64[1] = vextq_s8(v106, v106, 8uLL).u64[0];
      v107.f64[1] = v103.f64[0];
      v108 = vdup_n_s32(0x3727C5ACu);
      do
      {
        v109 = v104;
        v110.i32[0] = v102[-1].i32[v105];
        v110.i32[1] = v102->i32[v105 - 1];
        v111 = vcvtq_f64_f32(vadd_f32(v110, *buf));
        v82.f64[0] = (v102->f32[v105] + *&buf[8]);
        v81.f64[0] = (v102[1].f32[0] + *&buf[8]);
        v112 = vmlaq_f64(vnegq_f64(vmulq_laneq_f64(v81, v111, 1)), v103, v82);
        v82.f64[1] = v111.f64[0];
        v82 = vmulq_f64(v82, v107);
        v113 = vmlaq_f64(vnegq_f64(v82), v106, v111);
        *&v82.f64[0] = vcvt_f32_f64(vzip1q_s64(v112, v113));
        v114 = *&v113.i64[1];
        if (fabsf(*v82.f64) >= 0.00001)
        {
          break;
        }

        v115.i32[1] = HIDWORD(v82.f64[0]);
        v115.f32[0] = *&v113.i64[1];
        v116 = vcge_f32(vabs_f32(v115), v108);
        if (v116.i8[4])
        {
          break;
        }

        if (v116.i8[0])
        {
          break;
        }

        --v104;
        v105 += 3;
      }

      while (v109);
    }

    __A = vadd_f32(*&v82.f64[0], *v100.f32);
    v136 = vsub_f32(*v100.f32, *&v82.f64[0]);
    v141 = v114 + v100.f32[2];
    v137 = v100.f32[2] - v114;
    VBAP::lineUnitSphereIntersection(&__A, &v136, v5[10], v80);
    goto LABEL_102;
  }

  vDSP_meanv(v5[7], 3, buf, v46);
  vDSP_meanv((v5[7] + 4), 3, &buf[4], *(v5 + 1));
  vDSP_meanv((v5[7] + 8), 3, &buf[8], *(v5 + 1));
  if ((vaddv_f32(vabs_f32(*buf)) + fabsf(*&buf[8])) >= 0.00003)
  {
    v49 = vnegq_f32(*buf);
    LODWORD(v139) = v49.i32[2];
    __C = v49.i64[0];
    VBAP::lineUnitSphereIntersection(buf, &__C, v5[10], v47);
    if (v5[39])
    {
      goto LABEL_71;
    }

    v50 = v5[10];
    v51 = v5[11] - v50;
    if ((v51 >> 2) <= 2)
    {
      std::vector<float>::__append((v5 + 10), 3 - (v51 >> 2));
      goto LABEL_71;
    }

    if (v51 == 12)
    {
      goto LABEL_71;
    }

    v48 = v50 + 12;
    goto LABEL_49;
  }

  v48 = v5[10];
  if (v5[11] != v48)
  {
LABEL_49:
    v5[11] = v48;
  }

LABEL_71:
  v83 = (v5[11] - v5[10]) >> 2;
  if (v83 >= 3)
  {
    v84 = *(v5 + 1);
    if (v84)
    {
      LODWORD(v85) = 0;
      v86 = 0;
      v87 = v83 / 3;
LABEL_75:
      v88 = 0;
      v91 = 3 * v84;
      while (1)
      {
        v90 = v5[7];
        v89 = v5[10];
        if (((vabds_f32(*(v89 + 4 * (3 * v85 + 1)), *(v90 + 4 * (v88 + 1))) + vabds_f32(*(v89 + 4 * (3 * v85)), *(v90 + 4 * v88))) + vabds_f32(*(v89 + 4 * (3 * v85 + 2)), *(v90 + 4 * (v88 + 2)))) < 0.00000035763)
        {
          break;
        }

        v88 += 3;
        if (v91 == v88)
        {
          goto LABEL_84;
        }
      }

      v92 = v86;
      v93 = v86 >> 2;
      if (((v86 >> 2) + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if (v86 >> 2 != -1)
      {
        if (!(((v86 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v93) = v85;
      v86 = 4 * v93 + 4;
      memcpy(0, 0, v92);
LABEL_84:
      while (1)
      {
        v85 = (v85 + 1);
        if (v87 <= v85)
        {
          break;
        }

        v84 = *(v5 + 1);
        if (*(v5 + 1))
        {
          goto LABEL_75;
        }
      }

      if (v86)
      {
        v94 = 0;
        v95 = v86 >> 2;
        v96 = v5[11];
        v97 = 1;
        do
        {
          v98 = v5[10] + 12 * *(4 * v94);
          v99 = v96 - (v98 + 12);
          if (v96 != v98 + 12)
          {
            memmove((v5[10] + 12 * *(4 * v94)), (v98 + 12), v96 - (v98 + 12));
          }

          v96 = v98 + v99;
          v5[11] = v98 + v99;
          v94 = v97++;
        }

        while (v95 > v94);
        operator delete(0);
      }
    }
  }

LABEL_102:
  v117 = ((v5[11] - v5[10]) >> 2) / 3uLL;
  v5[38] = v117;
  v118 = v5[16];
  v119 = (v5[17] - v118) >> 2;
  if (v117 <= v119)
  {
    v120 = v5;
    if (v117 < v119)
    {
      v5[17] = v118 + 4 * v117;
    }
  }

  else
  {
    std::vector<float>::__append((v5 + 16), v117 - v119);
    v120 = v5;
  }

  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v120 + 32), *(v120 + 56), *(v120 + 64), (*(v120 + 64) - *(v120 + 56)) >> 2);
  v129 = *(v120 + 80);
  for (i = *(v120 + 88); v129 != i; ++v129)
  {
    std::vector<float>::push_back[abi:ne200100]((v120 + 32), v129);
  }

  v35 = VBAP::delaunayTriangulation(v120, (v120 + 32), a4, a5, v121, v122, v123, v124, v125, v126, v127);
  if (v35 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 203;
    v143 = 2080;
    v144 = "initialize";
    v145 = 1024;
    v146 = 203;
    _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP error; Delaunay triangulation issue", buf, 0x22u);
  }

  if (!v35)
  {
    return 0;
  }

  return v35;
}

void sub_296BF9DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100]((v31 - 176));
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](&a15);
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](&a18);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a22 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void **std::vector<std::list<int>>::~vector[abi:ne200100](void **a1)
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
        v5 = v3 - 3;
        if (*(v3 - 1))
        {
          v6 = *(v3 - 2);
          v7 = *(*(v3 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v3 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = v6[1];
              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t VBAP::delaunayTriangulation(uint64_t a1, void *a2, char **a3, uint64_t *a4, double a5, float64x2_t a6, double a7, double a8, double a9, double a10, float64x2_t a11)
{
  v205 = *MEMORY[0x29EDCA608];
  v11 = ((a2[1] - *a2) >> 2) / 3uLL;
  if (v11 << 32)
  {
    if (((v11 << 32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = (v11 - 1);
  if (v11 >= 1)
  {
    v13 = (((a2[1] - *a2) >> 2) / 3uLL) & 0x7FFFFFFF;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (*a2 + 4);
    do
    {
      *v16++ = *(v17 - 1);
      *v15++ = *v17;
      *v14++ = v17[1];
      v17 += 3;
      --v13;
    }

    while (v13);
  }

  if (v11 < 4)
  {
LABEL_8:
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 768;
      *&buf[18] = 2080;
      *&buf[20] = "delaunayTriangulation";
      *&buf[28] = 1024;
      *&buf[30] = 768;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: Delaunay Triangulation Error: Convex hull could not be created. Check for overlapping speakers. ", buf, 0x22u);
    }

    return 4294967246;
  }

  v20 = 0;
  v21 = v11;
  v22 = 2;
  v23 = 1;
LABEL_13:
  if (v20 + 2 >= v11)
  {
    goto LABEL_19;
  }

  v24.f64[0] = *(8 * v20);
  v24.f64[1] = v24.f64[0];
  a6.f64[0] = v24.f64[0];
  v25.f64[0] = v24.f64[0];
  *&v25.f64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
  v26 = v23;
  v27 = v22;
LABEL_15:
  v28 = (8 * v27);
  v29.f64[0] = *(8 * v26);
  v29.f64[1] = v29.f64[0];
  a11.f64[0] = v29.f64[0];
  v32 = vsubq_f64(v29, v25);
  v30 = vextq_s8(v32, v32, 8uLL);
  v31 = vsubq_f64(a11, a6);
  v33.f64[0] = v31.f64[0];
  v33.f64[1] = v32.f64[0];
  v32.f64[1] = v30.f64[0];
  *&v33.f64[1] = vextq_s8(v33, v33, 8uLL).u64[0];
  v34 = v27;
  while (1)
  {
    v35.f64[0] = *v28;
    v35.f64[1] = *v28;
    a11.f64[0] = *v28;
    v36 = vsubq_f64(v35, __PAIR128__(*&v25.f64[1], *&v24.f64[0]));
    v37 = vsubq_f64(a11, a6);
    v38 = vmulq_f64(v37, v30);
    v37.f64[1] = v36.f64[0];
    v39 = vmlaq_f64(vnegq_f64(vmulq_f64(v36, v33)), v32, v37);
    v40 = vmlaq_laneq_f64(vnegq_f64(v38), v31, v36, 1);
    a11.f64[0] = v40.f64[0];
    a11.f64[1] = v39.f64[0];
    if (vaddvq_f64(vabsq_f64(a11)) + vabsq_f64(vdupq_laneq_s64(v39, 1)).f64[0] > 0.05)
    {
      break;
    }

    ++v34;
    ++v28;
    if (v34 >= v11)
    {
      ++v26;
      ++v27;
      if (v26 != v11 - 1)
      {
        goto LABEL_15;
      }

LABEL_19:
      ++v20;
      ++v22;
      ++v23;
      if (v20 == v11 - 2)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  v41 = 0;
  v42.f64[0] = v39.f64[0];
  *&v42.f64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
  v43 = vmulq_f64(v42, v42);
  *v43.f64 = sqrt(vmulq_f64(v40, v40).f64[0] + v43.f64[0] + v43.f64[1]);
  v44 = 1.0 / *v43.f64;
  v45 = 8 * v20;
  while (1)
  {
    if (v45 != v41 && (8 * v26) != v41 && (8 * v34) != v41)
    {
      v46.f64[0] = *v41;
      v46.f64[1] = *v41;
      v32.f64[0] = *v41;
      v32 = vmulq_laneq_f64(vsubq_f64(v32, a6), v39, 1);
      if (fabs((vaddvq_f64(vmulq_f64(vsubq_f64(v46, v24), a11)) + v32.f64[0]) * v44) > 0.01)
      {
        break;
      }
    }

    if ((8 * v11) == ++v41)
    {
      goto LABEL_8;
    }
  }

  v48 = *a3;
  v47 = a3[1];
  v49 = v47 - *a3;
  v50 = v49 >> 2;
  v51 = 2 * v11 - 4;
  v185 = (v49 >> 2) / 3uLL;
  v187 = v51;
  if (v185 != v51)
  {
    v52 = (3 * v51);
    v53 = *(a1 + 224);
    v54 = *(a1 + 232);
    v55 = a1 + 224;
    v56 = (v54 - v53) >> 2;
    if (v52 <= v56)
    {
      if (v52 < v56)
      {
        v54 = &v53[4 * v52];
        *(a1 + 232) = v54;
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 224), v52 - v56);
      v53 = *(a1 + 224);
      v54 = *(a1 + 232);
      v55 = a1 + 224;
    }

    if (v54 - v53 >= 1)
    {
      bzero(v53, v54 - v53);
    }

    v62 = (v55 - 48);
    if (*(a1 + 192))
    {
      v63 = *(a1 + 184);
      v64 = *(*(a1 + 176) + 8);
      v65 = *v63;
      *(v65 + 8) = v64;
      *v64 = v65;
      *(a1 + 192) = 0;
      if (v63 != v62)
      {
        do
        {
          v66 = v63[1];
          operator delete(v63);
          v63 = v66;
        }

        while (v66 != v62);
      }
    }

    v67 = (a1 + 200);
    v68 = *(a1 + 216);
    v69 = v68 - v21;
    if (v68 <= v21)
    {
      v71 = a1;
      if (v68 < v21)
      {
        operator new();
      }
    }

    else
    {
      if (v21 <= v68 >> 1)
      {
        v70 = *(a1 + 208);
        v76 = v21 + 1;
        do
        {
          v70 = v70[1];
          --v76;
        }

        while (v76 > 1);
      }

      else if (v69 < 1)
      {
        v78 = v21 - v68 + 1;
        v70 = (a1 + 200);
        do
        {
          v70 = v70[1];
          --v78;
        }

        while (v78 > 1);
      }

      else
      {
        v70 = (a1 + 200);
        do
        {
          v70 = *v70;
          --v69;
        }

        while (v69);
      }

      v71 = a1;
      if (v70 != v67)
      {
        v79 = *(*v67 + 8);
        v80 = *v70;
        v80[1] = v79;
        *v79 = v80;
        do
        {
          v81 = v70[1];
          --*(a1 + 216);
          operator delete(v70);
          v70 = v81;
        }

        while (v81 != v67);
      }
    }

    v82 = *(v71 + 208);
    if (v82 != v67)
    {
      v83 = 0;
      do
      {
        *(v82 + 16) = v83;
        v82 = *(v82 + 8);
        ++v83;
      }

      while (v82 != v67);
    }

    if (v12 >= 2)
    {
      v84 = 0;
      v85 = (MEMORY[0] - MEMORY[8]) * (MEMORY[0] - MEMORY[8]) + (MEMORY[0] - MEMORY[8]) * (MEMORY[0] - MEMORY[8]) + (MEMORY[0] - MEMORY[8]) * (MEMORY[0] - MEMORY[8]);
      do
      {
        v86 = (MEMORY[0] - *(8 * v84 + 0x10)) * (MEMORY[0] - *(8 * v84 + 0x10)) + (MEMORY[0] - *(8 * v84 + 0x10)) * (MEMORY[0] - *(8 * v84 + 0x10)) + (MEMORY[0] - *(8 * v84 + 0x10)) * (MEMORY[0] - *(8 * v84 + 0x10));
        ++v84;
        v85 = fmin(v86, v85);
      }

      while (v12 - 1 != v84);
    }

    operator new();
  }

  v57 = a1;
  if ((a1 + 224) != a3)
  {
    v58 = *(a1 + 240);
    v59 = *(a1 + 224);
    if (v58 - v59 < v49)
    {
      if (v59)
      {
        *(a1 + 232) = v59;
        operator delete(v59);
        v58 = 0;
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 240) = 0;
      }

      if (!(v50 >> 62))
      {
        v60 = v58 >> 1;
        if (v58 >> 1 <= v50)
        {
          v60 = v49 >> 2;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v61 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v60;
        }

        if (!(v61 >> 62))
        {
          operator new();
        }
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v72 = *(a1 + 232);
    v73 = v72 - v59;
    if (v72 - v59 >= v49)
    {
      if (v47 != v48)
      {
        v77 = *(a1 + 224);
        memmove(v59, v48, v49);
        v59 = v77;
      }

      *(a1 + 232) = &v59[v49];
    }

    else
    {
      if (v72 != v59)
      {
        memmove(v59, v48, v72 - v59);
        v72 = *(a1 + 232);
      }

      v74 = &v48[v73];
      v75 = v47 - &v48[v73];
      if (v75)
      {
        memmove(v72, v74, v75);
      }

      *(a1 + 232) = &v72[v75];
    }
  }

  if (*a1 == 1 && *(a1 + 304) >= 2uLL)
  {
    v87 = *(a1 + 224);
    if ((*(a1 + 232) - v87) >= 9)
    {
      LODWORD(v88) = 0;
      v89 = 0;
      v189 = 0;
      v188 = 0;
      v90 = 0;
      v91 = 2;
      while (1)
      {
        *&buf[8] = 0;
        *buf = 0;
        v92 = ((v57[8] - v57[7]) >> 2) / 3uLL;
        v93 = *(v87 + 4 * (v91 - 2));
        if (v93 >= v92)
        {
          *buf = *(v87 + 4 * (v91 - 2));
          v94 = 1;
          v93 = 0;
        }

        else
        {
          v94 = 0;
        }

        v95 = *(v87 + 4 * (v91 - 1));
        if (v95 >= v92)
        {
          *(buf | (4 * v94++)) = v95;
        }

        else
        {
          v93 = *(v87 + 4 * (v91 - 1));
        }

        v96 = *(v87 + 4 * v91);
        if (v96 >= v92)
        {
          *&buf[4 * v94] = v96;
          if (v94 == 1)
          {
LABEL_97:
            v190 = v90;
            v97 = v189;
            v98 = v189 >> 2;
            if (((v189 >> 2) + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            if (v189 >> 2 != -1)
            {
              if (!(((v189 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v98) = v93;
            v189 = 4 * v98 + 4;
            memcpy(0, 0, v97);
            if (*&buf[4] >= *buf)
            {
              v99 = *buf;
            }

            else
            {
              v99 = *&buf[4];
            }

            if (*buf <= *&buf[4])
            {
              v100 = *&buf[4];
            }

            else
            {
              v100 = *buf;
            }

            v101 = v89;
            v102 = v89 >> 3;
            if (((v89 >> 3) + 1) >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            if (v89 >> 3 != -1)
            {
              if (!(((v89 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v102) = v99 | (v100 << 32);
            v89 = 8 * v102 + 8;
            memcpy(0, 0, v101);
            v57 = a1;
            v90 = v190;
            if (v188 < v190)
            {
              *v188 = v88;
              v188 += 4;
            }

            else
            {
              v103 = v188;
              v104 = v188 >> 2;
              v105 = (v188 >> 2) + 1;
              if (v105 >> 62)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              if (v190 >> 1 > v105)
              {
                v105 = v190 >> 1;
              }

              if (v105)
              {
                if (!(v105 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v90 = 0;
              *(4 * v104) = v88;
              v188 = 4 * v104 + 4;
              memcpy(0, 0, v103);
            }
          }
        }

        else
        {
          v93 = v96;
          if (v94 == 2)
          {
            goto LABEL_97;
          }
        }

        v88 = (v88 + 1);
        v87 = v57[28];
        v91 += 3;
        if (v88 >= ((v57[29] - v87) >> 2) / 3uLL)
        {
          if (v89)
          {
            v106 = 0;
            v107 = 0;
            do
            {
              v108 = v106;
              v106 = ++v107;
              v109 = v89 >> 3;
              if (v89 >> 3 > v107)
              {
                v110 = v107;
                do
                {
                  v111 = vceq_s32(*(8 * v108), *(8 * v106));
                  if (v111.i32[0] & v111.i32[1])
                  {
                    if ((*(a1 + 232) - *(a1 + 224)) >= 0)
                    {
                      operator new();
                    }

                    std::vector<float>::__throw_length_error[abi:ne200100]();
                  }

                  v106 = ++v110;
                }

                while (v109 > v110);
                v57 = a1;
                v106 = v107;
              }
            }

            while (v109 > v106);
          }

          break;
        }
      }
    }
  }

  v112 = v57[31];
  v113 = v57[29] - v57[28];
  v114 = (v113 >> 1) + (v113 >> 2);
  v115 = v57[32];
  v116 = v115 - v112;
  if (v114 <= v116)
  {
    if (v114 < v116)
    {
      v115 = &v112[v114];
      v57[32] = v115;
    }
  }

  else
  {
    std::vector<double>::__append((v57 + 31), v114 - v116);
    v112 = *(a1 + 248);
    v115 = *(a1 + 256);
  }

  vDSP_vclrD(v112, 1, v115 - v112);
  v124 = a1;
  v126 = *(a1 + 224);
  v125 = *(a1 + 232);
  v127 = 0.0;
  if ((v125 - v126) >= 9)
  {
    v128 = 1;
    v129 = 8;
    v130 = 2;
    do
    {
      v133.f64[0] = *(8 * *(v126 + 4 * (v130 - 2)));
      v133.f64[1] = v133.f64[0];
      v117.f64[0] = v133.f64[0];
      v118.f64[0] = *(8 * *(v126 + 4 * (v130 - 1)));
      v121.f64[0] = v118.f64[0];
      *&v119 = v118.f64[0];
      v134 = *(v126 + 4 * v130);
      v120.f64[0] = *(8 * v134);
      v123.f64[0] = v120.f64[0];
      *&v122 = v120.f64[0];
      v135.f64[0] = v118.f64[0];
      v135.f64[1] = v118.f64[0];
      v136.f64[0] = v120.f64[0];
      v136.f64[1] = v120.f64[0];
      v137.f64[0] = v118.f64[0];
      v137.f64[1] = v118.f64[0];
      v138.f64[0] = v120.f64[0];
      v138.f64[1] = v120.f64[0];
      if (fabs(vaddvq_f64(vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v138, v137)), v135, v136), v133)) + vmulq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(v120, v121)), v118, v123), v117).f64[0]) > 0.00000011920929)
      {
        v118.f64[1] = *(8 * *(v126 + 4 * (v130 - 1)));
        v120.f64[1] = *(8 * v134);
        *buf = v133;
        *&buf[16] = v117;
        *&buf[32] = v118;
        v202 = v119;
        v203 = v120;
        v204 = v122;
        __invert_d3();
        v117.f64[1] = v196;
        v118.f64[1] = v199;
        v139 = *(a1 + 248);
        *(v139 + 8 * (v129 - 8)) = v192;
        *(v139 + 8 * (v129 - 7)) = v195;
        *(v139 + 8 * (v129 - 6)) = v198;
        *(v139 + 8 * (v129 - 5)) = v193;
        *(v139 + 8 * (v129 - 4)) = v196;
        *(v139 + 8 * (v129 - 3)) = v199;
        *(v139 + 8 * (v129 - 2)) = v194;
        *(v139 + 8 * (v129 - 1)) = v197;
        *(v139 + 8 * v129) = v200;
        v126 = *(a1 + 224);
        v125 = *(a1 + 232);
      }

      v131 = ((v125 - v126) >> 2) / 3uLL;
      v132 = v131 > v128++;
      v129 += 9;
      v130 += 3;
    }

    while (v132);
    v127 = v131 * 0.125;
    v124 = a1;
  }

  v140 = vcvtmd_s64_f64(log(v127) * 0.72134752);
  if (v140 >= 6)
  {
    v140 = 6;
  }

  v141 = (v124 + 272);
  if (v185 != v187 || (v142 = v140 & ~(v140 >> 31), v143 = (8 << (2 * (v140 & ~(v140 >> 31)))), v145 = *a4, v144 = a4[1], 0xAAAAAAAAAAAAAAABLL * ((v144 - *a4) >> 3) != v143))
  {
    v156 = *(a1 + 272);
    v155 = *(a1 + 280);
    if (v155 != v156)
    {
      do
      {
        v157 = v155 - 3;
        if (*(v155 - 1))
        {
          v158 = *(v155 - 2);
          v159 = *(*(v155 - 3) + 8);
          v160 = *v158;
          *(v160 + 8) = v159;
          *v159 = v160;
          *(v155 - 1) = 0;
          if (v158 != v157)
          {
            do
            {
              v161 = v158[1];
              operator delete(v158);
              v158 = v161;
            }

            while (v161 != v157);
          }
        }

        v155 = v157;
      }

      while (v157 != v156);
      v126 = *(a1 + 224);
      v125 = *(a1 + 232);
    }

    *(a1 + 280) = v156;
    log((((v125 - v126) >> 2) / 3uLL) * 0.125);
    operator new();
  }

  if (v141 != a4)
  {
    v146 = *(a1 + 288);
    v147 = *(a1 + 272);
    if (0xAAAAAAAAAAAAAAABLL * ((v146 - v147) >> 3) < v143)
    {
      if (v147)
      {
        v148 = *(a1 + 280);
        v149 = *(a1 + 272);
        if (v148 != v147)
        {
          do
          {
            v150 = v148 - 24;
            if (*(v148 - 1))
            {
              v151 = *(v148 - 2);
              v152 = *(*(v148 - 3) + 8);
              v153 = *v151;
              *(v153 + 8) = v152;
              *v152 = v153;
              *(v148 - 1) = 0;
              if (v151 != v150)
              {
                do
                {
                  v154 = *(v151 + 1);
                  operator delete(v151);
                  v151 = v154;
                }

                while (v154 != v150);
              }
            }

            v148 = v150;
          }

          while (v150 != v147);
          v149 = *v141;
        }

        *(a1 + 280) = v147;
        operator delete(v149);
        v146 = 0;
        *v141 = 0;
        v141[1] = 0;
        v141[2] = 0;
      }

      v177 = 0xAAAAAAAAAAAAAAABLL * (v146 >> 3);
      v178 = 2 * v177;
      if (2 * v177 <= v143)
      {
        v178 = v143;
      }

      if (v177 >= 0x555555555555555)
      {
        v179 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v179 = v178;
      }

      if (v179 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v162 = *(a1 + 280);
    if (0xAAAAAAAAAAAAAAABLL * ((v162 - v147) >> 3) >= v143)
    {
      if (v145 == v144)
      {
        v170 = a1;
      }

      else
      {
        v170 = a1;
        do
        {
          if (v147 != v145)
          {
            v171 = *(v145 + 8);
            for (i = *(v147 + 1); v171 != v145 && i != v147; i = *(i + 1))
            {
              *(i + 4) = *(v171 + 16);
              v171 = *(v171 + 8);
            }

            if (i == v147)
            {
              std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v147, v147, v171, v145);
            }

            else
            {
              v174 = *(*v147 + 8);
              v175 = *i;
              *(v175 + 8) = v174;
              *v174 = v175;
              do
              {
                v176 = *(i + 1);
                --*(v147 + 2);
                operator delete(i);
                i = v176;
              }

              while (v176 != v147);
            }
          }

          v145 += 24;
          v147 += 24;
        }

        while (v145 != v144);
        v162 = *(a1 + 280);
      }

      if (v162 != v147)
      {
        do
        {
          v180 = v162 - 24;
          if (*(v162 - 1))
          {
            v181 = *(v162 - 2);
            v182 = *(*(v162 - 3) + 8);
            v183 = *v181;
            *(v183 + 8) = v182;
            *v182 = v183;
            *(v162 - 1) = 0;
            if (v181 != v180)
            {
              do
              {
                v184 = *(v181 + 1);
                operator delete(v181);
                v181 = v184;
              }

              while (v184 != v180);
            }
          }

          v162 = v180;
        }

        while (v180 != v147);
      }

      *(v170 + 280) = v147;
    }

    else
    {
      if (v162 != v147)
      {
        v163 = v145 + v162 - v147;
        do
        {
          if (v147 != v145)
          {
            v164 = *(v145 + 8);
            for (j = *(v147 + 1); v164 != v145 && j != v147; j = *(j + 1))
            {
              *(j + 4) = *(v164 + 16);
              v164 = *(v164 + 8);
            }

            if (j == v147)
            {
              std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v147, v147, v164, v145);
            }

            else
            {
              v167 = *(*v147 + 8);
              v168 = *j;
              *(v168 + 8) = v167;
              *v167 = v168;
              do
              {
                v169 = *(j + 1);
                --*(v147 + 2);
                operator delete(j);
                j = v169;
              }

              while (v169 != v147);
            }
          }

          v145 += 24;
          v147 += 24;
        }

        while (v145 != v163);
        v145 = v163;
      }

      std::vector<std::list<int>>::__construct_at_end<std::list<int>*,std::list<int>*>(v141, v145, v144);
    }
  }

  v18 = 0;
  *(a1 + 296) = v142;
  return v18;
}

void sub_296BFD274(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x296BFD39CLL);
}

void sub_296BFD2AC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296BFD39CLL);
}

void sub_296BFD2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72)
  {
    operator delete(a72);
    if (!STACK[0x228])
    {
LABEL_3:
      if (!STACK[0x220])
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!STACK[0x228])
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x228]);
  if (!STACK[0x220])
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(STACK[0x220]);
  goto LABEL_5;
}

void VBAP::lineUnitSphereIntersection(VBAP *this, const float *a2, const float *a3, float *a4)
{
  v16 = 0;
  __C = 0;
  __B = 0;
  v13 = 0.0;
  MEMORY[0x29C260560](this, 1, a2, 1, &__B, 1, 3);
  vDSP_dotpr(&__B, 1, &__B, 1, &__C + 1, 3uLL);
  vDSP_dotpr(this, 1, &__B, 1, &__C, 3uLL);
  *&__C = *&__C + *&__C;
  vDSP_dotpr(this, 1, this, 1, &v13, 3uLL);
  v13 = v13 + -1.0;
  v7 = (v13 * (-4.0 * *(&__C + 1))) + (*&__C * *&__C);
  if (v7 >= 0.0)
  {
    v8 = sqrtf(v7);
    v9 = (v8 - *&__C) / (*(&__C + 1) + *(&__C + 1));
    v10 = -(v8 + *&__C) / (*(&__C + 1) + *(&__C + 1));
    v11 = 1.0 - v9;
    v12 = 1.0 - v10;
    MEMORY[0x29C260520](this, 1, &v12, a2, 1, &v10, a3 + 3, 1, 3);
    MEMORY[0x29C260520](this, 1, &v11, a2, 1, &v9, a3, 1, 3);
  }
}

uint64_t std::__split_buffer<std::vector<unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::vector<unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_296BFD838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t std::vector<std::list<int>>::__construct_at_end<std::list<int>*,std::list<int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v4 = *(result + 8);
  }

  else
  {
    v3 = a2;
    v4 = *(result + 8);
    do
    {
      *v4 = v4;
      v4[1] = v4;
      v4[2] = 0;
      if (*(v3 + 8) != v3)
      {
        operator new();
      }

      v3 += 24;
      v4 += 3;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4;
  return result;
}

void sub_296BFD9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__list_imp<int>::clear(v10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::list<int>>,std::list<int>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::list<int>>,std::list<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v5 = v2 - 3;
        if (*(v2 - 1))
        {
          v6 = *(v2 - 2);
          v7 = *(*(v2 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v2 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = v6[1];
              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v2 = v5;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

BOOL VBAP::find_duplicate_vertex(VBAP *this, const float *a2, const float *a3, const float *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8]();
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v10 < 2)
  {
    return 0;
  }

  bzero(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v11 = 2;
  v12 = 1;
  do
  {
    MEMORY[0x29C260530](this, 1, this + 4 * v12, v9, 1, v12);
    MEMORY[0x29C260500](a2, 1, &a2[v12], v9, 1, v9, 1, v12);
    MEMORY[0x29C260500](a3, 1, &a3[v12], v9, 1, v9, 1, v12);
    __C = 0.0;
    vDSP_maxv(v9, 1, &__C, v12);
    result = __C > 1.0;
    v12 = v11++;
  }

  while (__C <= 1.0 && v12 < a4);
  return result;
}

void VBAP::VBAP(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  *a1 = a4;
  v4 = a3[1] - *a3;
  *(a1 + 8) = 0u;
  v4 >>= 2;
  *(a1 + 4) = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (3 * v4)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  operator new();
}

void sub_296BFDE98(_Unwind_Exception *a1)
{
  std::vector<std::list<int>>::~vector[abi:ne200100](v6 + 21);
  v8 = v1[31];
  if (v8)
  {
    v1[32] = v8;
    operator delete(v8);
  }

  v9 = v1[28];
  if (v9)
  {
    v1[29] = v9;
    operator delete(v9);
  }

  CDelaunayTriangles3D::~CDelaunayTriangles3D(v3);
  std::vector<std::vector<unsigned int>>::~vector[abi:ne200100](v2);
  v10 = v1[16];
  if (v10)
  {
    v1[17] = v10;
    operator delete(v10);
    v11 = *v6;
    if (!*v6)
    {
LABEL_7:
      v12 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = *v6;
    if (!*v6)
    {
      goto LABEL_7;
    }
  }

  v1[14] = v11;
  operator delete(v11);
  v12 = *v5;
  if (!*v5)
  {
LABEL_8:
    v13 = v1[7];
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[11] = v12;
  operator delete(v12);
  v13 = v1[7];
  if (!v13)
  {
LABEL_9:
    v14 = v1[4];
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v1[8] = v13;
  operator delete(v13);
  v14 = v1[4];
  if (!v14)
  {
LABEL_10:
    v15 = *v4;
    if (!*v4)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v1[5] = v14;
  operator delete(v14);
  v15 = *v4;
  if (!*v4)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_17:
  v1[2] = v15;
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t VBAP::changeSpeakerLocations(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  *(a1 + 314) = 0;
  v3 = (a3[1] - *a3) >> 2;
  if (*(a1 + 4) == v3 && (a2[1] - *a2) >> 2 == v3)
  {
    vDSP_vclr(*(a1 + 80), 1, (*(a1 + 88) - *(a1 + 80)) >> 2);
    memset(buf, 0, 24);
    __p = 0;
    v18 = 0;
    v19 = 0;
    result = VBAP::initialize(a1, a2, a3, buf, &__p);
    v8 = __p;
    v9 = result;
    if (__p)
    {
      v10 = v18;
      v11 = __p;
      if (v18 != __p)
      {
        do
        {
          v12 = v10 - 3;
          if (*(v10 - 1))
          {
            v13 = *(v10 - 2);
            v14 = *(*(v10 - 3) + 8);
            v15 = *v13;
            *(v15 + 8) = v14;
            *v14 = v15;
            *(v10 - 1) = 0;
            if (v13 != v12)
            {
              do
              {
                v16 = v13[1];
                operator delete(v13);
                v13 = v16;
              }

              while (v16 != v12);
            }
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = __p;
      }

      v18 = v8;
      operator delete(v11);
      result = v9;
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
      result = v9;
    }

    if (result)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 59;
        *&buf[18] = 2080;
        *&buf[20] = "changeSpeakerLocations";
        v21 = 1024;
        v22 = 59;
        _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Unable to change speaker locations", buf, 0x22u);
      }

      return v9;
    }

    else
    {
      *(a1 + 314) = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 51;
      *&buf[18] = 2080;
      *&buf[20] = "changeSpeakerLocations";
      v21 = 1024;
      v22 = 51;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Unable to change speaker locations, azimuth and elevation have different sizes", buf, 0x22u);
    }

    return 4294967246;
  }

  return result;
}

void sub_296BFE228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  std::vector<std::list<int>>::~vector[abi:ne200100](&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float VBAP::convertSphericalDegreesToCartesian(VBAP *this, float a2, float a3, float *a4)
{
  v5 = a2 * 0.0174532925;
  v6 = __sincos_stret(a3 * 0.0174532925);
  v8 = __sincos_stret(v5);
  v7.f64[0] = v8.__cosval;
  v7.f64[1] = v8.__sinval;
  *this = vcvt_f32_f64(vmulq_n_f64(v7, v6.__cosval));
  result = v6.__sinval;
  *(this + 2) = result;
  return result;
}

uint64_t VBAP::triangleLookup(VBAP *this, float32x2_t *a2, int *a3, float *a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((*(this + 314) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *__C = 136315906;
      *&__C[4] = "VBAP.cpp";
      v26 = 1024;
      v27 = 322;
      v28 = 2080;
      v29 = "triangleLookup";
      v30 = 1024;
      v31 = 322;
      v19 = MEMORY[0x29EDCA988];
      v20 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; VBAP object not initialized";
LABEL_15:
      _os_log_impl(&dword_296B9D000, v19, OS_LOG_TYPE_ERROR, v20, __C, 0x22u);
    }

    return 4294967246;
  }

  subtriangle_containment = CDelaunayTriangles3D::find_subtriangle_containment(*(this + 74), a2->f32[0], a2->f32[1], a2[1].f32[0]);
  if ((subtriangle_containment & 0x80000000) != 0 || (v9 = *(this + 34), 0xAAAAAAAAAAAAAAABLL * ((*(this + 35) - v9) >> 3) <= subtriangle_containment))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *__C = 136315906;
      *&__C[4] = "VBAP.cpp";
      v26 = 1024;
      v27 = 328;
      v28 = 2080;
      v29 = "triangleLookup";
      v30 = 1024;
      v31 = 328;
      v19 = MEMORY[0x29EDCA988];
      v20 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error";
      goto LABEL_15;
    }

    return 4294967246;
  }

  *a3 = -1;
  __B = vcvtq_f64_f32(*a2);
  v24 = a2[1].f32[0];
  v10 = v9 + 24 * subtriangle_containment;
  v11 = *(v10 + 8);
  if (v11 == v10)
  {
LABEL_18:
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *__C = 136315906;
      *&__C[4] = "VBAP.cpp";
      v26 = 1024;
      v27 = 355;
      v28 = 2080;
      v29 = "triangleLookup";
      v30 = 1024;
      v31 = 355;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error", __C, 0x22u);
    }

    return 4294964151;
  }

  else
  {
    while (1)
    {
      v12 = *(v11 + 16);
      *__C = 0;
      v13 = 9 * v12;
      vDSP_dotprD((*(this + 31) + 72 * v12), 1, __B.f64, 1, __C, 3uLL);
      if (*__C > -0.00000011920929)
      {
        v22 = 0.0;
        vDSP_dotprD((*(this + 31) + 8 * v13 + 24), 1, __B.f64, 1, &v22, 3uLL);
        if (v22 > -0.00000011920929)
        {
          v21 = 0.0;
          vDSP_dotprD((*(this + 31) + 8 * v13 + 48), 1, __B.f64, 1, &v21, 3uLL);
          v14 = v21;
          if (v21 > -0.00000011920929)
          {
            break;
          }
        }
      }

      v11 = *(v11 + 8);
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }

    result = 0;
    v16 = *__C;
    v17 = v22;
    *a4 = v16;
    a4[1] = v17;
    v18 = v14;
    a4[2] = v18;
    *a3 = v12;
  }

  return result;
}