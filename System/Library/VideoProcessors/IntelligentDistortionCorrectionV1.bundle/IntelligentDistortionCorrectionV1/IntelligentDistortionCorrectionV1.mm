uint64_t idcComputeInverseDistortionPolynomial(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v8 = hypot(*(a2 + 16), *(a2 + 20));
  v9 = 0;
  v10 = v8 * a5;
  do
  {
    *(&v80 + v9) = *(a1 + 4 * v9);
    ++v9;
  }

  while (v9 != 7);
  v11 = 0;
  v12 = (a4 / 100.0 + 1.0) * (v10 * 0.5);
  v13 = a4 / (*&v80 + (*&v81 + (*&v82 + (*&v83 + (*&v84 + (*&v85 + *&v86 * v12) * v12) * v12) * v12) * v12) * v12);
  do
  {
    *(&v80 + v11) = v13 * *(&v80 + v11);
    v11 += 8;
  }

  while (v11 != 56);
  v14 = 0;
  memset(v87, 0, 512);
  v15 = vdupq_lane_s64(v86, 0);
  v16 = vdupq_lane_s64(v85, 0);
  v17 = vdupq_lane_s64(v84, 0);
  v18 = vdupq_lane_s64(v83, 0);
  v19 = 0x100000000;
  v20 = vdupq_n_s64(0x4058C00000000000uLL);
  v21 = vdupq_lane_s64(v82, 0);
  v22 = vdupq_n_s64(0x4059000000000000uLL);
  __asm { FMOV            V17.2D, #1.0 }

  v27 = vdupq_lane_s64(v81, 0);
  v28 = vdupq_lane_s64(v80, 0);
  do
  {
    v29.i64[0] = v19.u32[0];
    v29.i64[1] = v19.u32[1];
    v30 = vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v29), v12), v20);
    v31 = vdivq_f64(v30, vaddq_f64(vdivq_f64(vmlaq_f64(v28, v30, vmlaq_f64(v27, v30, vmlaq_f64(v21, v30, vmlaq_f64(v18, v30, vmlaq_f64(v17, v30, vmlaq_f64(v16, v30, v15)))))), v22), _Q17));
    v32 = &v87[v14];
    *v32 = v31;
    v32[50] = vbicq_s8(vmulq_f64(vdivq_f64(vsubq_f64(v31, v30), v30), v22), vceqzq_f64(v30));
    v19 = vadd_s32(v19, 0x200000002);
    ++v14;
  }

  while (v14 != 50);
  sub_2957B2098(v87, &v88, __src, &v96);
  v34 = v33;
  v35 = 0;
  v36 = 0;
  v99 = v88;
  v100 = v89;
  v101 = v90;
  v37 = 0.0001;
  while (2)
  {
    v78 = v36;
    v79 = v35;
    memcpy(__dst, __src, sizeof(__dst));
    v38 = 0;
    v93 = v96;
    v94 = v97;
    v95 = v98;
    do
    {
      __dst[v38] = (v37 + 1.0) * *&__src[v38 * 8];
      v38 += 7;
    }

    while (v38 != 42);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    memset(v102, 0, 24);
    do
    {
      v42 = 0;
      v43 = 0.0;
      v44 = __dst;
      do
      {
        if (*(v102 + v42) != 1)
        {
          for (i = 0; i != 6; ++i)
          {
            if (!*(v102 + i))
            {
              v46 = fabs(v44[i]);
              if (v46 >= v43)
              {
                v41 = i;
                v40 = v42;
                v43 = v46;
              }
            }
          }
        }

        ++v42;
        v44 += 6;
      }

      while (v42 != 6);
      ++*(v102 + v41);
      if (v40 == v41)
      {
        v47 = 6 * v41;
      }

      else
      {
        v48 = 0;
        v47 = 6 * v41;
        v49 = &__dst[6 * v40];
        v50 = &__dst[6 * v41];
        do
        {
          v51 = v49[v48];
          v49[v48] = v50[v48];
          v50[v48++] = v51;
        }

        while (v48 != 6);
        v52 = *(&v93 + v40);
        *(&v93 + v40) = *(&v93 + v41);
        *(&v93 + v41) = v52;
      }

      *(&v102[3] + v39) = v40;
      *(&v102[6] + v39) = v41;
      v53 = __dst[7 * v41];
      if (fabs(v53) < 1.0e-40)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        fig_log_get_emitter();
        v75 = 4294954513;
        FigDebugAssert3();
        fig_log_get_emitter();
        FigDebugAssert3();
        return v75;
      }

      v54 = 0;
      __dst[7 * v41] = 1.0;
      v55 = &__dst[v47];
      v56 = 1.0 / v53;
      do
      {
        *&v55[v54] = vmulq_n_f64(*&v55[v54], v56);
        v54 += 2;
      }

      while (v54 != 6);
      v57 = 0;
      *(&v93 + v41) = v56 * *(&v93 + v41);
      v58 = __dst;
      v59 = &__dst[v41];
      do
      {
        if (v57 != v41)
        {
          v60 = 0;
          v61 = v59[6 * v57];
          v59[6 * v57] = 0.0;
          do
          {
            v58[v60] = v58[v60] - v55[v60] * v61;
            ++v60;
          }

          while (v60 != 6);
          *(&v93 + v57) = *(&v93 + v57) - *(&v93 + v41) * v61;
        }

        ++v57;
        v58 += 6;
      }

      while (v57 != 6);
      ++v39;
    }

    while (v39 != 6);
    v62 = 5;
    do
    {
      v63 = v62;
      v64 = *(&v102[3] + v62);
      v65 = *(&v102[6] + v63);
      if (v64 != v65)
      {
        v66 = 6;
        do
        {
          v67 = __dst[v64];
          __dst[v64] = __dst[v65];
          __dst[v65] = v67;
          v65 += 6;
          v64 += 6;
          --v66;
        }

        while (v66);
      }

      v62 = v63 - 1;
    }

    while (v63);
    do
    {
      *(&v99 + v63) = vaddq_f64(*(&v87[100] + v63), *(&v93 + v63));
      v63 += 16;
    }

    while (v63 != 48);
    sub_2957B2098(v87, &v99, __dst, &v93);
    v69 = vabdd_f64(v68, v34);
    if (v69 >= 1.00000001e-10 && v68 >= v34)
    {
      v36 = 0;
      v37 = v37 * 10.0;
      v72 = v79;
      goto LABEL_50;
    }

    v71 = v68;
    memcpy(__src, __dst, sizeof(__src));
    v96 = v93;
    v97 = v94;
    v98 = v95;
    v88 = v99;
    v89 = v100;
    v36 = v78;
    v72 = v79;
    if (v69 < 1.00000001e-10)
    {
      v36 = v78 + 1;
    }

    v90 = v101;
    if (v71 > 0.000000248015873 && v36 < 3)
    {
      v37 = v37 * 0.1;
      v34 = v71;
LABEL_50:
      v35 = v72 + 1;
      if (v35 != 20)
      {
        continue;
      }
    }

    break;
  }

  for (j = 0; j != 6; ++j)
  {
    v74 = *(&v88 + j);
    *(a3 + 4 * j) = v74;
  }

  return 0;
}

double *sub_2957B2098(double *result, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *result * *result;
  v27 = v5 * (v5 * v5);
  v28 = v5 * v5 * (v5 * v5);
  v29 = v5 * v5 * v27;
  v30 = v27 * v27;
  v6 = result[100] - (v5 * v5 * a2[1] + *a2 * v5 + a2[2] * v27 + a2[3] * v28 + a2[4] * v29 + a2[5] * (v27 * v27));
  v7 = 1;
  v8 = a3;
  do
  {
    v9 = 0;
    v10 = *(&v25 + v4);
    do
    {
      *(v8 + 8 * v9) = v10 * *(&v25 + v9);
      ++v9;
    }

    while (v7 != v9);
    *(a4 + 8 * v4++) = v6 * v10;
    ++v7;
    v8 += 48;
  }

  while (v4 != 6);
  v11 = v6 * v6;
  for (i = 1; i != 100; ++i)
  {
    v13 = 0;
    v25 = result[i] * result[i];
    v14 = v25;
    v26 = v14 * v14;
    v27 = v14 * (v14 * v14);
    v28 = v26 * v26;
    v29 = v14 * v14 * v27;
    v30 = v27 * v27;
    v15 = result[i + 100] - (v14 * v14 * a2[1] + *a2 * v14 + a2[2] * v27 + a2[3] * (v26 * v26) + a2[4] * v29 + a2[5] * (v27 * v27));
    v16 = a3;
    v17 = 1;
    do
    {
      v18 = 0;
      v19 = *(&v25 + v13);
      do
      {
        *(v16 + 8 * v18) = *(v16 + 8 * v18) + v19 * *(&v25 + v18);
        ++v18;
      }

      while (v17 != v18);
      *(a4 + 8 * v13) = *(a4 + 8 * v13) + v15 * v19;
      ++v13;
      ++v17;
      v16 += 48;
    }

    while (v13 != 6);
    v11 = v11 + v15 * v15;
  }

  v20 = a3 + 48;
  v21 = (a3 + 8);
  for (j = 1; j != 6; ++j)
  {
    v23 = 0;
    v24 = v21;
    do
    {
      *v24 = *(v20 + 8 * v23);
      v24 += 6;
      ++v23;
    }

    while (j != v23);
    v20 += 48;
    ++v21;
  }

  return result;
}

float32x2_t forwardDistort(int a1, int a2, float32x2_t *a3)
{
  v3 = vadd_f32(a3[2], a3[12]);
  v4.f32[0] = a1;
  v4.f32[1] = a2;
  v5 = vmla_f32(vneg_f32(v3), *a3, v4);
  v6 = vmul_f32(v5, v5);
  v7 = 1.0;
  if (a3[30].i8[2] == 1)
  {
    LODWORD(v7) = vmul_lane_f32(a3[10], a3[10], 1).u32[0];
  }

  v8 = (a3[13].f32[0] * (v6.f32[1] + (v5.f32[0] * v5.f32[0]))) / v7;
  if (v8 >= 1.0)
  {
    v10 = v8 * v8;
    v9 = ((((((a3[18].f32[0] + (a3[18].f32[1] * v8)) + (a3[19].f32[0] * (v8 * v8))) + (a3[19].f32[1] * (v8 * (v8 * v8)))) + (a3[20].f32[0] * (v10 * v10))) + (((v10 * v10) * a3[20].f32[1]) * v8)) + (((v10 * v10) * a3[21].f32[0]) * v10)) + (((v10 * v10) * a3[21].f32[1]) * (v8 * (v8 * v8)));
  }

  else
  {
    v9 = a3[18].f32[0] + ((a3[18].f32[1] + ((a3[19].f32[0] + ((a3[19].f32[1] + ((a3[20].f32[0] + ((a3[20].f32[1] + ((a3[21].f32[0] + (a3[21].f32[1] * v8)) * v8)) * v8)) * v8)) * v8)) * v8)) * v8);
  }

  return vdiv_f32(vmla_n_f32(v3, v5, 1.0 / ((v9 * 0.01) + 1.0)), *a3);
}

float32x2_t inverseDistort(int a1, int a2, float32x2_t *a3)
{
  v3 = vadd_f32(a3[2], a3[12]);
  v4.f32[0] = a1;
  v4.f32[1] = a2;
  v5 = vmla_f32(vneg_f32(v3), *a3, v4);
  v6 = vmul_f32(v5, v5);
  v7 = 1.0;
  if (a3[30].i8[2] == 1)
  {
    LODWORD(v7) = vmul_lane_f32(a3[10], a3[10], 1).u32[0];
  }

  v8 = (a3[13].f32[0] * (v6.f32[1] + (v5.f32[0] * v5.f32[0]))) / v7;
  if (v8 >= 1.0)
  {
    v10 = v8 * v8;
    v9 = ((((((a3[14].f32[0] + (a3[14].f32[1] * v8)) + (a3[15].f32[0] * (v8 * v8))) + (a3[15].f32[1] * (v8 * (v8 * v8)))) + (a3[16].f32[0] * (v10 * v10))) + (((v10 * v10) * a3[16].f32[1]) * v8)) + (((v10 * v10) * a3[17].f32[0]) * v10)) + (((v10 * v10) * a3[17].f32[1]) * (v8 * (v8 * v8)));
  }

  else
  {
    v9 = a3[14].f32[0] + ((a3[14].f32[1] + ((a3[15].f32[0] + ((a3[15].f32[1] + ((a3[16].f32[0] + ((a3[16].f32[1] + ((a3[17].f32[0] + (a3[17].f32[1] * v8)) * v8)) * v8)) * v8)) * v8)) * v8)) * v8);
  }

  return vdiv_f32(vmla_n_f32(v3, v5, 1.0 / ((v9 * 0.01) + 1.0)), *a3);
}

void sub_2957B5930(uint64_t a1)
{
  v2 = *(a1 + 120);
}

uint64_t sub_2957B5C3C()
{

  return fig_log_get_emitter();
}

double rectangleC1toC0(int a1, double a2, double a3, double a4, double a5)
{
  v6 = a2 + a4;
  v7 = a3 + a5;
  v8 = sub_2957B5CDC(a1, a2, a3);
  v9 = sub_2957B5CDC(a1, v6, v7);
  if (v8 >= v9)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

double sub_2957B5CDC(int a1, double result, double a3)
{
  v3 = 1.0 - a3;
  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      return 1.0 - result;
    }

    else if (a1 == 3)
    {
      return 1.0 - result;
    }
  }

  else if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 1.0 - v3;
    }

    else if (a1 == 8)
    {
      return 1.0 - v3;
    }
  }

  else
  {
    if (a1 == 6)
    {
      result = v3;
    }

    if (a1 == 5)
    {
      return v3;
    }
  }

  return result;
}

double rectangleC0toC1(int a1, double a2, double a3, double a4, double a5)
{
  v6 = a2 + a4;
  v7 = a3 + a5;
  v8 = sub_2957B5E00(a1, a2, a3);
  v9 = sub_2957B5E00(a1, v6, v7);
  if (v8 >= v9)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

double sub_2957B5E00(int a1, double result, double a3)
{
  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      return 1.0 - result;
    }

    else if (a1 == 3)
    {
      return 1.0 - result;
    }
  }

  else if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 1.0 - a3;
    }

    else if (a1 == 8)
    {
      return a3;
    }
  }

  else
  {
    v3 = a3;
    v4 = (1.0 - v3);
    if (a1 != 6)
    {
      v4 = result;
    }

    if (a1 == 5)
    {
      return a3;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t utlIntToOrientation(int a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = (a1 - 1) >= 8;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v3 == 1)
  {
    *a2 = a1;
  }

  return v3;
}

uint64_t cubicRegression()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v5 = &v52 - v4;
  v6 = 0;
  if (v0 && v1)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    if (v2 < 1)
    {
      v12 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = 0.0;
      v9 = v2;
      v10 = v0;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0;
      do
      {
        v14 = *v10++;
        v15.f32[0] = v14;
        v15.f32[1] = v14 * v14;
        v11 = v14 + v11;
        v16 = vmul_n_f32(v15, v14 * v14);
        v15.i32[1] = vdup_lane_s32(v16, 0).u32[0];
        v15.f32[0] = v14 * v14;
        v12 = v12 + 1.0;
        v8 = (v14 * v14) + v8;
        v7 = vadd_f32(v16, v7);
        v13 = vadd_f32(vmul_n_f32(v15, v16.f32[0]), v13);
        --v9;
      }

      while (v9);
      v56 = __PAIR64__(LODWORD(v8), LODWORD(v11));
      v57 = v7;
      v58 = v13;
    }

    v17 = 0;
    v55 = v12;
    v18 = &v55;
    do
    {
      v19 = *v18++;
      *(&v60 + v17) = v19;
      v17 += 16;
    }

    while (v17 != 64);
    v20 = (v60 * v65) - (v64 * v61);
    v21 = (v60 * v66) - (v64 * v62);
    v22 = (v60 * v67) - (v64 * v63);
    v23 = (v61 * v66) - (v65 * v62);
    v24 = (v61 * v67) - (v65 * v63);
    v25 = (v62 * v67) - (v66 * v63);
    v26 = (v70 * v75) - (v74 * v71);
    v27 = (v69 * v75) - (v73 * v71);
    v28 = (v69 * v74) - (v73 * v70);
    v29 = (v68 * v75) - (v72 * v71);
    v30 = (v68 * v74) - (v72 * v70);
    v31 = (v68 * v73) - (v72 * v69);
    if (fabsf((((((v20 * v26) - (v21 * v27)) + (v22 * v28)) + (v23 * v29)) - (v24 * v30)) + (v25 * v31)) < 0.000001)
    {
      return 0;
    }

    else
    {
      v32 = 0;
      v53 = (v27 * -v66) + (v65 * v26);
      v54 = (((((v20 * v26) - (v21 * v27)) + (v22 * v28)) + (v23 * v29)) - (v24 * v30)) + (v25 * v31);
      v59[0] = (v53 + (v67 * v28)) * (1.0 / v54);
      v59[1] = (((v62 * v27) - (v61 * v26)) - (v63 * v28)) * (1.0 / v54);
      v59[2] = (((v24 * -v74) + (v73 * v25)) + (v75 * v23)) * (1.0 / v54);
      v59[3] = (((v70 * v24) - (v69 * v25)) - (v71 * v23)) * (1.0 / v54);
      v59[4] = (((v66 * v29) + (-v64 * v26)) - (v67 * v30)) * (1.0 / v54);
      v59[5] = (((v60 * v26) - (v62 * v29)) + (v63 * v30)) * (1.0 / v54);
      v59[6] = (((v22 * v74) + (-v72 * v25)) - (v75 * v21)) * (1.0 / v54);
      v59[7] = (((v68 * v25) - (v70 * v22)) + (v71 * v21)) * (1.0 / v54);
      v59[8] = (((v29 * -v65) + (v64 * v27)) + (v67 * v31)) * (1.0 / v54);
      v59[9] = (((v61 * v29) - (v60 * v27)) - (v63 * v31)) * (1.0 / v54);
      v59[10] = (((v22 * -v73) + (v72 * v24)) + (v75 * v20)) * (1.0 / v54);
      v59[11] = (((v22 * v69) - (v68 * v24)) - (v71 * v20)) * (1.0 / v54);
      v59[12] = (((v65 * v30) + (-v64 * v28)) + (-v66 * v31)) * (1.0 / v54);
      v59[13] = (((v60 * v28) - (v61 * v30)) + (v62 * v31)) * (1.0 / v54);
      v59[14] = (((v21 * v73) + (-v72 * v23)) + (-v74 * v20)) * (1.0 / v54);
      v59[15] = (((v68 * v23) - (v69 * v21)) + (v70 * v20)) * (1.0 / v54);
      v33 = v5;
      do
      {
        if (v2 >= 1)
        {
          v34 = &v59[4 * v32];
          v35 = *v34;
          v36 = v34[1];
          v37 = v34[2];
          v38 = v34[3];
          v39 = v2;
          v40 = v0;
          v41 = v33;
          do
          {
            v42 = *v40++;
            *v41++ = ((v35 + (v36 * v42)) + (v37 * (v42 * v42))) + (v38 * (v42 * (v42 * v42)));
            --v39;
          }

          while (v39);
        }

        ++v32;
        v33 += v2;
      }

      while (v32 != 4);
      for (i = 0; i != 4; ++i)
      {
        v44 = 0.0;
        if (v2 >= 1)
        {
          v45 = v2;
          v46 = v1;
          v47 = v5;
          do
          {
            v48 = *v47++;
            v49 = v48;
            v50 = *v46++;
            v44 = v44 + (v49 * v50);
            --v45;
          }

          while (v45);
        }

        *(v3 + 4 * i) = v44;
        v5 += v2;
      }

      return 1;
    }
  }

  return v6;
}

void sub_2957B89A0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_2957B89FC(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_2957B8FD4(uint64_t a1)
{
  v7 = [MEMORY[0x29EDBB7C8] matrixDescriptorWithRows:216 columns:216 rowBytes:864 dataType:268435488];
  if (v7)
  {
    v2 = objc_alloc(MEMORY[0x29EDBB7C0]);
    v3 = [*(*(a1 + 32) + 8) device];
    v4 = [v2 initWithDevice:v3 descriptor:v7];

    if (v4)
    {
      v5 = [*(*(a1 + 32) + 8) commandQueue];
      v6 = [v5 commandBuffer];

      if (v6)
      {
        [*(*(a1 + 32) + 296) encodeToCommandBuffer:v6 sourceMatrix:v4 resultMatrix:v4 status:0];
        [v6 commit];
      }

      else
      {
        sub_2957C3288(a1, v4);
      }
    }

    else
    {
      sub_2957C3320();
    }
  }

  else
  {
    sub_2957C33A0();
  }
}

uint64_t sub_2957BA50C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 8) = result;
  return result;
}

uint64_t sub_2957BA53C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 12) = result;
  return result;
}

uint64_t sub_2957BA56C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 16) = result;
  return result;
}

uint64_t sub_2957BA59C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 20) = result;
  return result;
}

void sub_2957BDF58(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_2957BDFA4(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t sub_2957BDFE8()
{

  return [v0 translateError:v1];
}

uint64_t sub_2957BE000()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BE078()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BE0F0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BE168()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BE1E0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BE258()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

void sub_2957BEA5C(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

uint64_t sub_2957BEADC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

void sub_2957BEB54(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

uint64_t sub_2957BEBE4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BEC5C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BECD4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BED4C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BEDC4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BEE3C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BEEB4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BEF2C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BEFA4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF01C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF094()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF10C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF184()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF1FC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF274()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF2EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF364()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF3DC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF454()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF4CC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF544()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF5BC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF634()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF6AC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF724()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF79C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF814()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957BF88C()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BF904()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BF97C()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BF9F4()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFA6C()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFAE4()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFB5C()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFBD4()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFC4C()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFCC4()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFD40()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFDB8()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFE30(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  result = FigDebugAssert3();
  *a2 = -12780;
  return result;
}

uint64_t sub_2957BFEC0(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  result = FigDebugAssert3();
  *a2 = -12780;
  return result;
}

uint64_t sub_2957BFF50()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957BFFC8()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0040()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C00B8()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0130()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C01A8()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0220()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0298()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0310()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0388()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0404()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C0480()
{
  fig_log_get_emitter();
  sub_2957B5BC4();
  return FigDebugAssert3();
}

uint64_t sub_2957C04FC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0574()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C05EC(_DWORD *a1)
{
  sub_2957B5C3C();
  sub_2957B5C04();
  FigDebugAssert3();
  sub_2957B5C3C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957C069C(_DWORD *a1)
{
  sub_2957B5C3C();
  sub_2957B5C04();
  FigDebugAssert3();
  sub_2957B5C3C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957C074C(_DWORD *a1)
{
  sub_2957B5C3C();
  sub_2957B5C04();
  FigDebugAssert3();
  sub_2957B5C3C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957C07FC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0874()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C08EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0964()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C09DC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0A54()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0ACC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

void sub_2957C0B44(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C0BEC(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

uint64_t sub_2957C0C7C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0CF4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0D6C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0DE4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0E5C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0ED4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0F4C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C0FC4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C103C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C10B4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C112C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C11A4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C121C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1294()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C130C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1384()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C13FC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1474()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C14EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1564()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C15E0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1658()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C16D0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1748()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C17C0()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C183C()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C18B8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1930()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C19A8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1A20()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1A98()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1B10()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1B88()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1C00()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1C78()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1CF0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1D68()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1DE0()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C1E5C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1ED4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1F4C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C1FC4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C203C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C20B4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C212C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C21A4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C221C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2294()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C230C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2384()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C23FC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2474()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C24EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

void sub_2957C2564(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C25F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

uint64_t sub_2957C269C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2714()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C278C()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C2808()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2880()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C28F8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

void sub_2957C2970(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C2A00(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

uint64_t sub_2957C2A90()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2B08()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2B80()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2BF8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2C70()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2CE8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2D60()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2DD8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2E50()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2EC8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2F40()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C2FB8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3030()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C30A8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3120()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3198()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3210()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

void sub_2957C3288(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
  sub_2957BAC18();
}

void sub_2957C3320()
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
  sub_2957BAC18();
}

void sub_2957C33A0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
  sub_2957BAC18();
}

uint64_t sub_2957C3420()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C349C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3514()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C358C()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

void sub_2957C3608()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C3694()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C3720()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C37AC()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C3838()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
}

void sub_2957C38C4(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C3944(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C39C4(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C3A44(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C3AC4(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C3B44(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

uint64_t sub_2957C3BC4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3C3C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3CB4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3D2C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3DA4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3E1C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3E94()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3F0C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3F84()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C3FFC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4074()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C40EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4164()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C41DC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4254()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C42CC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4344()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C43BC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4434()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C44AC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4524()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C459C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4614()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C468C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4704()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C477C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C47F4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C486C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C48E4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C495C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C49D4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4A4C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4AC4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4B38()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C4BB4()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C4C30()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C4CAC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4D24()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C4DB0()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C4E3C()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C4EC8()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4F40()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C4FB8(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  sub_2957B1984();
  result = FigDebugAssert3();
  *a3 = *a2;
  *a4 = *(a1 + 1092);
  return result;
}

uint64_t sub_2957C505C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C50D0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5148()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C51D4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C524C()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C52D8()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C5364()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void sub_2957C53F0(void *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3();
}

void sub_2957C546C(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  LODWORD(v8) = a1;
  FigDebugAssert3();
  *a4 = [a2 translateError:{a1, v8}];
}

uint64_t sub_2957C5518()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5590()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5604()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5678()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C56EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5764()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C57DC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5854()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C58CC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5944()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C59D0()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C5A5C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5AD4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5B4C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5BC4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5C3C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5CB4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5D2C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5DA4()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5E1C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5E94()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5F0C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5F84()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C5FFC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6074()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C60EC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6164()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C61DC()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6254()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C62CC()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C6348()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C63C0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6438()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C64B0()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6524()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6598()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6610()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6688()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C6704()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C677C()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C6808()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C6894()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  FigDebugAssert3();
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C6920()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6998()
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  return FigDebugAssert3();
}

uint64_t sub_2957C6A14()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6A8C()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

uint64_t sub_2957C6B04()
{
  fig_log_get_emitter();
  sub_2957B1984();
  return FigDebugAssert3();
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2A1C76640](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}