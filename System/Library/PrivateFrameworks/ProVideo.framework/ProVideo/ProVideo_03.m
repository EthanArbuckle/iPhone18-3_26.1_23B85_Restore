float64x2_t pv_adjust_intrinsics_for_viewport@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float64x2_t a3@<Q0>, float64x2_t a4@<Q1>)
{
  v4 = 0;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    v23 = a3;
    v7 = *(&v23 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
    v22 = a4;
    if (vabdd_f64(v7, *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)))) >= 0.0001)
    {
      break;
    }

    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v8 = *(a1 + 48);
      a2[2] = *(a1 + 32);
      a2[3] = v8;
      v9 = *(a1 + 80);
      a2[4] = *(a1 + 64);
      a2[5] = v9;
      result = *a1;
      v11 = *(a1 + 16);
      *a2 = *a1;
      a2[1] = v11;
      return result;
    }
  }

  v12 = *a1;
  v13 = *(a1 + 64);
  if (a4.f64[0] / a4.f64[1] >= a3.f64[0] / a3.f64[1])
  {
    a3.f64[0] = vdivq_f64(a4, a3).f64[0];
    v14 = vdupq_lane_s64(*&a3.f64[0], 0);
    v15 = vmulq_n_f64(v13, a3.f64[0]);
    v15.f64[1] = v15.f64[1] + (a3.f64[1] * a3.f64[0] - a4.f64[1]) * -0.5;
  }

  else
  {
    v14 = vdupq_lane_s64(COERCE__INT64(a4.f64[1] / a3.f64[1]), 0);
    v15 = vmulq_n_f64(v13, a4.f64[1] / a3.f64[1]);
    v15.f64[0] = v15.f64[0] + (a3.f64[0] * (a4.f64[1] / a3.f64[1]) - a4.f64[0]) * -0.5;
  }

  v12.f64[1] = *(a1 + 40);
  result = vmulq_f64(v12, v14);
  __asm { FMOV            V1.2D, #1.0 }

  *&v21 = 0;
  *a2 = *&result.f64[0];
  a2[1] = 0u;
  a2[3] = 0u;
  a2[4] = v15;
  *(&v21 + 1) = *&result.f64[1];
  a2[2] = v21;
  a2[5] = _Q1;
  return result;
}

double pv_adjust_transform_orientation(int a1, unsigned int a2, int a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a3 == 1)
  {
    v7 = 0;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (a2 <= 4)
        {
          v8 = &unk_260343128;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a1 == 4)
      {
        if (a2 < 5)
        {
          v8 = &unk_260343100;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (a1 == 1)
      {
        if (a2 < 5)
        {
          v8 = &unk_2603430B0;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a1 == 2)
      {
        if (a2 < 5)
        {
          v8 = &unk_2603430D8;
          goto LABEL_29;
        }

LABEL_30:
        v7 = 0;
      }
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_30;
    }

    v7 = 0;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (a2 < 5)
        {
          v8 = &unk_260343088;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a1 == 4)
      {
        if (a2 < 5)
        {
          v8 = &unk_260343060;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (a1 == 1)
      {
        if (a2 < 5)
        {
          v8 = &unk_260343010;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a1 == 2)
      {
        if (a2 < 5)
        {
          v8 = &unk_260343038;
LABEL_29:
          v7 = v8[a2];
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_31:
  v9 = vrsqrte_f32(1065353216);
  v10 = vmul_f32(v9, vrsqrts_f32(1065353216, vmul_f32(v9, v9)));
  v25 = vmulq_n_f32(xmmword_2603429D0, vmul_f32(v10, vrsqrts_f32(1065353216, vmul_f32(v10, v10))).f32[0]);
  v11 = __sincosf_stret(PVCardinalAnglesFloat[v7]);
  v12 = 0;
  v13 = v25;
  v14 = vmulq_f32(v13, v13).f32[0];
  v15 = (1.0 - v11.__cosval) * vmuls_lane_f32(v13.f32[0], *v13.f32, 1);
  v16 = vmuls_lane_f32(v11.__sinval, v25, 2);
  v17 = (1.0 - v11.__cosval) * vmuls_lane_f32(v13.f32[0], v13, 2);
  v18 = vmuls_lane_f32(v11.__sinval, *v25.f32, 1);
  v19 = (1.0 - v11.__cosval) * vmuls_lane_f32(v25.f32[1], v25, 2);
  v13.f32[0] = v19 - (v11.__sinval * v25.f32[0]);
  *&v20 = (v11.__sinval * v25.f32[0]) + v19;
  *&v21 = v11.__cosval + ((1.0 - v11.__cosval) * v14);
  *(&v21 + 1) = v16 + v15;
  *(&v21 + 1) = COERCE_UNSIGNED_INT(v17 - v18);
  *&v22 = v15 - v16;
  *(&v22 + 1) = v11.__cosval + ((1.0 - v11.__cosval) * vmuls_lane_f32(v25.f32[1], *v25.f32, 1));
  *(&v22 + 1) = v20;
  HIDWORD(v23) = 0;
  *&v23 = v18 + v17;
  DWORD1(v23) = v13.i32[0];
  *(&v23 + 2) = v11.__cosval + ((1.0 - v11.__cosval) * vmuls_lane_f32(v25.f32[2], v25, 2));
  v30[0] = v21;
  v30[1] = v22;
  v30[2] = v23;
  v30[3] = xmmword_2603427D0;
  memset(v31, 0, sizeof(v31));
  do
  {
    v31[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v30[v12])), a5, *&v30[v12], 1), a6, v30[v12], 2), a7, v30[v12], 3);
    ++v12;
  }

  while (v12 != 4);
  return *v31;
}

void pv_adjust_transform_orientation(float64x2_t *a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  if (a4 == 1)
  {
    v7 = 0;
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a3 <= 4)
        {
          v8 = &unk_260343128;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a2 == 4)
      {
        if (a3 < 5)
        {
          v8 = &unk_260343100;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if (a3 < 5)
        {
          v8 = &unk_2603430B0;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a2 == 2)
      {
        if (a3 < 5)
        {
          v8 = &unk_2603430D8;
          goto LABEL_29;
        }

LABEL_30:
        v7 = 0;
      }
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_30;
    }

    v7 = 0;
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a3 < 5)
        {
          v8 = &unk_260343088;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a2 == 4)
      {
        if (a3 < 5)
        {
          v8 = &unk_260343060;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if (a3 < 5)
        {
          v8 = &unk_260343010;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (a2 == 2)
      {
        if (a3 < 5)
        {
          v8 = &unk_260343038;
LABEL_29:
          v7 = v8[a3];
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_31:
  v9 = __sincos_stret(PVCardinalAnglesDouble[v7]);
  v10 = 0;
  v11 = (1.0 - v9.__cosval) * 0.0;
  v12 = v11 - v9.__sinval * 0.0;
  *&v13 = v9.__cosval + v11;
  *&v14 = v11 - v9.__sinval;
  *(&v14 + 1) = v9.__cosval + v11;
  *(&v13 + 1) = v9.__sinval + v11;
  *&v15 = v9.__sinval * 0.0 + v11;
  *(&v15 + 1) = v12;
  v17 = *a1;
  v16 = a1[1];
  v19 = a1[2];
  v18 = a1[3];
  v21 = a1[4];
  v20 = a1[5];
  v23 = a1[6];
  v22 = a1[7];
  v27[0] = v13;
  v27[1] = *&v12;
  v27[2] = v14;
  v27[3] = v15;
  v27[4] = v15;
  v27[5] = COERCE_UNSIGNED_INT64(v9.__cosval + 1.0 - v9.__cosval);
  v28 = 0;
  v29 = 0;
  v30 = xmmword_260342700;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  do
  {
    v25 = v27[v10];
    v24 = v27[v10 + 1];
    v26 = &a5[v10];
    *v26 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v17, v25.f64[0]), v19, v25, 1), v21, v24.f64[0]), v23, v24, 1);
    v26[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v16, v25.f64[0]), v18, v25, 1), v20, v24.f64[0]), v22, v24, 1);
    v10 += 2;
  }

  while (v10 != 8);
}

float pv_projected_pixels_per_unit(int a1, _DWORD *a2, float32x4_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, simd_float4 a14, simd_float4 a15, float32x4_t a16, float32x2_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  _Q1.i64[1] = a24;
  v35 = 0uLL;
  __asm { FMOV            V1.2S, #1.0 }

  if (pv_projected_screen_aligned_bounding_rect_around_point(a1, 0, 0, &v35, a3, _Q1, a4, a5, a6, a7, a10, a11, a12, a13, a14, a15, a14, a15, a16, a17))
  {
    result = *(&v35 + 3);
    *a2 = HIDWORD(v35);
  }

  return result;
}

BOOL pv_projected_screen_aligned_bounding_rect_around_point(int a1, int a2, int a3, _OWORD *a4, float32x4_t a5, float32x4_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, simd_float4 a15, simd_float4 a16, simd_float4 a17, simd_float4 a18, float32x4_t a19, float32x2_t a20)
{
  *&v50[32] = a9;
  *&v50[48] = a10;
  *v50 = a7;
  *&v50[16] = a8;
  v76.columns[2] = a17;
  v76.columns[3] = a18;
  *a6.f32 = vmul_f32(*a6.f32, 0x3F0000003F000000);
  *&v24 = -a6.f32[0];
  v25 = COERCE_UNSIGNED_INT(-a6.f32[0]);
  HIDWORD(v24) = a6.i32[1];
  a6.i32[2] = 0;
  v73 = *MEMORY[0x277D85DE8];
  v26 = vaddq_f32(a5, a6);
  a6.f32[1] = -a6.f32[1];
  v25.f32[1] = a6.f32[1];
  v68[0] = vaddq_f32(a5, v25);
  v68[1] = vaddq_f32(a5, a6);
  v68[2] = v26;
  v68[3] = vaddq_f32(a5, v24);
  v76.columns[0] = a15;
  v76.columns[1] = a16;
  v77 = __invert_f4(v76);
  v27 = 0;
  v64 = *v50;
  v65 = *&v50[16];
  v66 = *&v50[32];
  v67 = *&v50[48];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  do
  {
    *(&v69 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77.columns[0], COERCE_FLOAT(*(&v64 + v27))), v77.columns[1], *(&v64 + v27), 1), v77.columns[2], *(&v64 + v27), 2), v77.columns[3], *(&v64 + v27), 3);
    v27 += 16;
  }

  while (v27 != 64);
  v62 = v70;
  v63 = v69;
  v60 = v72;
  v61 = v71;
  *v28.i64 = pv_simd_matrix_get_rotation_matrix(*v50);
  v28.i32[3] = 0;
  v29.i32[3] = 0;
  v52 = v29;
  v53 = v28;
  v30.i32[3] = 0;
  v51 = v30;
  v78.columns[0] = a15;
  v78.columns[1] = a16;
  v78.columns[2] = a17;
  v78.columns[3] = a18;
  *&v31 = pv_simd_matrix_get_rotation_matrix(v78);
  HIDWORD(v31) = 0;
  HIDWORD(v32) = 0;
  v56 = v32;
  v58 = v31;
  HIDWORD(v33) = 0;
  v54 = v33;
  v74.columns[1] = v52;
  v74.columns[0] = v53;
  v74.columns[2] = v51;
  v75 = __invert_f3(v74);
  v41 = 0;
  v64 = v58;
  v65 = v56;
  v66 = v54;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  do
  {
    *(&v69 + v41) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75.columns[0], COERCE_FLOAT(*(&v64 + v41))), v75.columns[1], *(&v64 + v41), 1), v75.columns[2], *(&v64 + v41), 2);
    v41 += 16;
  }

  while (v41 != 48);
  v42 = 0;
  v43 = 0;
  v57 = v70;
  v59 = v69;
  v55 = v71;
  while (1)
  {
    v44 = v68[v42];
    DWORD2(v64) = 0;
    *&v64 = 0;
    if (!pv_simd_matrix_project(a1, a2, a3, &v64, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v44.f32[0]), v57, *v44.f32, 1), v55, v44, 2), v63, v62, v61, v60, v34, v35, v36, v37, v38, v39, v40, a19, a20))
    {
      break;
    }

    v69.n128_u64[v42] = v64;
    v43 = v42++ > 2;
    if (v42 == 4)
    {
      v45 = 0;
      v46 = 0x80000000800000;
      *&v47 = vneg_f32(0x80000000800000);
      do
      {
        v48 = v69.n128_u64[v45];
        v46 = vbsl_s8(vcgt_f32(v48, v46), v48, v46);
        *&v47 = vbsl_s8(vcgt_f32(*&v47, v48), v48, *&v47);
        ++v45;
      }

      while (v45 != 4);
      *(&v47 + 1) = vsub_f32(v46, *&v47);
      *a4 = v47;
      return 1;
    }
  }

  return v43;
}

BOOL pv_projected_bounding_box_around_point(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x4_t a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, double a15, float32x4_t a16, float32x4_t a17, float32x2_t a18, uint64_t a19, uint64_t a20, int a21, __int32 a22)
{
  v26 = 0;
  v27.i32[3] = a22;
  *v27.f32 = vmul_f32(*a10.f32, 0x3F0000003F000000);
  v29.i64[1] = 0;
  v29.f32[0] = -v27.f32[0];
  v28 = COERCE_UNSIGNED_INT(-v27.f32[0]);
  v29.i32[1] = v27.i32[1];
  v27.i32[2] = 0;
  v30 = vaddq_f32(a9, v27);
  v27.f32[1] = -v27.f32[1];
  v28.f32[1] = v27.f32[1];
  v53 = *MEMORY[0x277D85DE8];
  v52[0] = vaddq_f32(a9, v28);
  v52[1] = vaddq_f32(a9, v27);
  v52[2] = v30;
  v52[3] = vaddq_f32(a9, v29.u64[0]);
  v31 = vmuls_lane_f32(0.5, a10, 2);
  a9.f32[0] = a9.f32[2] + v31;
  v32 = a9.f32[2] - v31;
  do
  {
    v33 = v52[v26];
    v34 = &v51[v26];
    v35 = v33;
    v35.i32[2] = a9.i32[0];
    *v34 = v35;
    v33.f32[2] = v32;
    v34[4] = v33;
    ++v26;
  }

  while (v26 != 4);
  *(v52 + 4) = 0;
  LODWORD(v52[0]) = 0;
  v40 = pv_simd_matrix_project(a1, a2, a3, v52, v51[0], a11, a12, a13, a14, a5, a6, a7, a8, v29, v30, a16, a17, a18);
  result = 0;
  if (v40)
  {
    v45 = 0;
    while (1)
    {
      *(a4 + 16 * v45) = v52[0];
      if (v45 == 7)
      {
        break;
      }

      v46 = v51[v45 + 1];
      *(v52 + 4) = 0;
      LODWORD(v52[0]) = 0;
      ++v45;
      if (!pv_simd_matrix_project(a1, a2, a3, v52, v46, a11, a12, a13, a14, v36, v37, v38, v39, v41, v42, v43, a17, a18))
      {
        return (v45 - 1) > 6;
      }
    }

    return 1;
  }

  return result;
}

BOOL pv_projected_bounding_box_around_point(float64x2_t *a1, float64x2_t *a2, __int128 *a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, float64x2_t a9)
{
  v42 = a9;
  v15 = 0;
  v57 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v27 = a1[1];
  v17 = a2[1].f64[0];
  __asm { FMOV            V4.2D, #0.5 }

  v23 = vmulq_f64(*a2, _Q4);
  _Q4.f64[0] = -v23.f64[0];
  v24.f64[0] = -v23.f64[0];
  v24.f64[1] = -v23.f64[1];
  v49 = vaddq_f64(*a1, v24);
  v50 = vaddq_f64(v27, 0);
  _Q4.f64[1] = v23.f64[1];
  v25 = vaddq_f64(v16, v23);
  v23.f64[1] = -v23.f64[1];
  v51 = vaddq_f64(v16, v23);
  v52 = v50;
  v53 = v25;
  v54 = v50;
  v26 = vaddq_f64(v16, _Q4);
  v55 = v26;
  v56 = v50;
  v26.f64[0] = v27.f64[0] + v17 * 0.5;
  v27.f64[0] = v27.f64[0] - v17 * 0.5;
  do
  {
    v28 = *(&v49 + v15 * 16);
    v29 = &v48[v15];
    *v29 = v28;
    v29[1] = v26;
    v29[8] = v28;
    v29[9] = v27;
    v15 += 2;
  }

  while (v15 != 8);
  v30 = 0;
  v31 = 0;
  while (1)
  {
    v32 = &v48[2 * v30];
    v33 = *v32;
    v34 = v32[1];
    *&v47 = 0;
    v46 = 0uLL;
    v44 = v33;
    v45 = v34;
    v35 = a3[5];
    v53 = a3[4];
    v54 = v35;
    v36 = a3[7];
    v55 = a3[6];
    v56 = v36;
    v37 = a3[1];
    v49 = *a3;
    v50 = v37;
    v38 = a3[3];
    v51 = a3[2];
    v52 = v38;
    if (!pv_simd_matrix_project(&v44, &v49, &v43, a5, a6, a7, &v46, v42, a8, *&v42.f64[0], *&v42.f64[1], *a4, *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 48), *(a4 + 56), *(a4 + 64), *(a4 + 72), *(a4 + 80), *(a4 + 96), *(a4 + 112), v33, v45, 0, v47, v48[0]))
    {
      break;
    }

    v39 = v47;
    v40 = (a8 + 32 * v30);
    *v40 = v46;
    v40[1] = v39;
    v31 = v30++ > 6;
    if (v30 == 8)
    {
      return 1;
    }
  }

  return v31;
}

BOOL pv_projected_bounding_rect_around_point(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x2_t a10, float32x4_t a11, __n128 a12, __n128 a13, __n128 a14, float32x4_t a15, float32x2_t a16)
{
  v22 = a11;
  *a11.f32 = vmul_f32(a10, 0x3F0000003F000000);
  *&v23 = -a11.f32[0];
  v24 = COERCE_UNSIGNED_INT(-a11.f32[0]);
  v44 = *MEMORY[0x277D85DE8];
  HIDWORD(v23) = a11.i32[1];
  a11.i32[2] = 0;
  v25 = vaddq_f32(a9, a11);
  a11.f32[1] = -a11.f32[1];
  v24.f32[1] = a11.f32[1];
  v42 = vaddq_f32(a9, v24);
  v43[0] = vaddq_f32(a9, a11);
  v43[1] = v25;
  v43[2] = vaddq_f32(a9, v23);
  *(&v41 + 4) = 0;
  LODWORD(v41) = 0;
  v37 = v22;
  v39 = a13;
  v40 = a14;
  v30 = pv_simd_matrix_project(a1, a2, a3, &v41, v42, v22, a12, a13, a14, a5, a6, a7, a8, v25, a14, a13, a15, a16);
  result = 0;
  if (v30)
  {
    v35 = 0;
    while (1)
    {
      *(a4 + 16 * v35) = v41;
      if (v35 == 3)
      {
        break;
      }

      v36 = v43[v35];
      *(&v41 + 4) = 0;
      LODWORD(v41) = 0;
      ++v35;
      if (!pv_simd_matrix_project(a1, a2, a3, &v41, v36, v37, a12, v39, v40, v26, v27, v28, v29, v31, v32, v33, a15, a16))
      {
        return (v35 - 1) > 2;
      }
    }

    return 1;
  }

  return result;
}

BOOL pv_projected_bounding_rect_around_point(float64x2_t *a1, __int128 *a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, float64x2_t a9, float64x2_t a10)
{
  v36 = a10;
  v16 = 0;
  v17 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v18 = *a1;
  __asm { FMOV            V3.2D, #0.5 }

  v24 = vmulq_f64(a9, _Q3);
  _Q3.f64[0] = -v24.f64[0];
  v25.f64[0] = -v24.f64[0];
  v25.f64[1] = -v24.f64[1];
  v26 = vaddq_f64(a1[1], 0);
  v46[0] = vaddq_f64(v25, *a1);
  v46[1] = v26;
  v27 = vaddq_f64(v24, v18);
  _Q3.f64[1] = v24.f64[1];
  v24.f64[1] = -v24.f64[1];
  v46[2] = vaddq_f64(v24, v18);
  v46[3] = v26;
  v46[4] = v27;
  v46[5] = v26;
  v46[6] = vaddq_f64(_Q3, v18);
  v46[7] = v26;
  while (1)
  {
    v28 = &v46[2 * v16];
    v29 = *v28;
    v30 = v28[1];
    *&v45 = 0;
    v44 = 0uLL;
    v43[0] = v29;
    v43[1] = v30;
    v31 = a2[5];
    v39 = a2[4];
    v40 = v31;
    v32 = a2[7];
    v41 = a2[6];
    v42 = v32;
    if (!pv_simd_matrix_project(v43, &v38, &v37, a4, a5, a6, &v44, v36, a8, *&v36.f64[0], *&v36.f64[1], *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), *(a3 + 48), *(a3 + 56), *(a3 + 64), *(a3 + 72), *(a3 + 80), *(a3 + 96), *(a3 + 112), *a2, a2[1], a2[2], a2[3], v39))
    {
      break;
    }

    v33 = v45;
    v34 = (a7 + 32 * v16);
    *v34 = v44;
    v34[1] = v33;
    v17 = v16++ > 2;
    if (v16 == 4)
    {
      return 1;
    }
  }

  return v17;
}

double pv_convert_homography_coordinates(simd_float3x3 a1, CGRect a2, CGRect a3)
{
  x = a2.origin.x;
  y = a2.origin.y;
  width = a2.size.width;
  height = a2.size.height;
  if (CGRectEqualToRect(a2, a3))
  {
    return *a1.columns[0].i64;
  }

  *v25.columns[1].i64 = width;
  *&v25.columns[1].i64[1] = height;
  v12 = vcvt_f32_f64(vdivq_f64(a3.size, v25.columns[1]));
  *v25.columns[2].i64 = x;
  *&v25.columns[2].i64[1] = y;
  *v25.columns[2].f32 = vcvt_f32_f64(vsubq_f64(a3.origin, vmulq_f64(v25.columns[2], vcvtq_f64_f32(v12))));
  v25.columns[0] = v12.u32[0];
  v25.columns[1].i32[0] = 0;
  v25.columns[1].i64[1] = 0;
  v25.columns[1].i32[1] = v12.i32[1];
  v25.columns[2].i64[1] = 1065353216;
  v17 = v25.columns[1].u64[0];
  v19 = v12.u32[0];
  v21 = v25.columns[2];
  v26 = __invert_f3(v25);
  v13 = 0;
  v23 = v26;
  memset(&v24, 0, sizeof(v24));
  do
  {
    v24.columns[v13] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(*&v23.columns[v13])), a1.columns[1], *v23.columns[v13].f32, 1), a1.columns[2], v23.columns[v13], 2);
    ++v13;
  }

  while (v13 != 3);
  v14 = 0;
  v23 = v24;
  memset(&v24, 0, sizeof(v24));
  do
  {
    v24.columns[v14] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&v23.columns[v14])), v17, *v23.columns[v14].f32, 1), v21, v23.columns[v14], 2);
    ++v14;
  }

  while (v14 != 3);
  return pv_simd_normalize(v24);
}

void pv_convert_homography_coordinates(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  if (CGRectEqualToRect(*&a3, *&a7))
  {
    v20 = a1[3];
    a2[2] = a1[2];
    a2[3] = v20;
    v21 = a1[5];
    a2[4] = a1[4];
    a2[5] = v21;
    v22 = a1[1];
    *a2 = *a1;
    a2[1] = v22;
  }

  else
  {
    v23.f64[0] = a7 - a3 * (a9 / a5);
    v24.f64[0] = 0.0;
    v24.f64[1] = a10 / a6;
    v23.f64[1] = a8 - a4 * (a10 / a6);
    v54 = COERCE_UNSIGNED_INT64(a9 / a5);
    v55 = 0u;
    v45 = v24;
    v56 = v24;
    v57 = 0u;
    __asm { FMOV            V0.2D, #1.0; simd_double3x3 }

    v44 = _Q0;
    v58 = v23;
    v59 = _Q0;
    v46 = v23;
    __invert_d3();
    v30 = 0;
    v32 = *a1;
    v31 = a1[1];
    v34 = a1[2];
    v33 = a1[3];
    v36 = a1[4];
    v35 = a1[5];
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v54 = v47;
    v55 = v48;
    memset(v53, 0, sizeof(v53));
    do
    {
      v38 = *(&v54 + v30 * 16);
      v37 = *(&v54 + v30 * 16 + 16);
      v39 = &v53[v30];
      *v39 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v32, v38.f64[0]), v34, v38, 1), v36, *&v37);
      v39[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v31, v38.f64[0]), v33, v38, 1), v35, *&v37);
      v30 += 2;
    }

    while (v30 != 6);
    v40 = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    do
    {
      v42 = v53[v40];
      v41 = v53[v40 + 1];
      v43 = (&v54 + v40 * 16);
      *v43 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(COERCE_UNSIGNED_INT64(a9 / a5), v42.f64[0]), v45, v42, 1), v46, *&v41);
      v43[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v42.f64[0]), 0, v42, 1), v44, *&v41);
      v40 += 2;
    }

    while (v40 != 6);
    pv_simd_normalize(&v54, a2);
  }
}

void sub_25F9A4FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(*v22 + 24))(v22);
  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  _Unwind_Resume(a1);
}

void sub_25F9A54E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25F9A5698(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t getDefaultsIntValue(NSDictionary *a1, NSString *a2, uint64_t a3)
{
  v4 = [(NSDictionary *)a1 objectForKey:a2];
  v5 = v4;
  if (v4)
  {
    a3 = [v4 intValue];
  }

  return a3;
}

uint64_t getDefaultsBoolValue(NSDictionary *a1, NSString *a2, uint64_t a3)
{
  v4 = [(NSDictionary *)a1 objectForKey:a2];
  v5 = v4;
  if (v4)
  {
    a3 = [v4 BOOLValue];
  }

  return a3;
}

void sub_25F9A5ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9A609C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_25F9A6D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_25F9A6DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_25F9A6E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_25F9A6F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_25F9A6FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  v11 = v10;

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_25F9A7800(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25F9A79F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVCMSampleBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MakePVFaceDetectionFull(uint64_t a1, uint64_t a2, double a3, uint64_t a4, double a5, CGRect a6, AVCaptureVideoOrientation a7, CMTime *a8, AVMetadataFaceObject *a9)
{
  v11 = *a8;
  v9 = [PVFaceDetection faceDetection:a1];

  return v9;
}

id MakePVFaceDetectionFull(uint64_t a1, uint64_t a2, double a3, uint64_t a4, double a5, CGRect a6, double a7, CMTime *a8, AVMetadataFaceObject *a9)
{
  v11 = *a8;
  v9 = [PVFaceDetection faceDetectionWithAngle:a1];

  return v9;
}

id MakePVFaceDetection(AVMetadataFaceObject *a1, AVCaptureVideoOrientation a2)
{
  v3 = a1;
  v4 = [(AVMetadataFaceObject *)v3 faceID];
  v5 = [(AVMetadataFaceObject *)v3 hasRollAngle];
  [(AVMetadataFaceObject *)v3 rollAngle];
  v7 = v6;
  v8 = [(AVMetadataFaceObject *)v3 hasYawAngle];
  [(AVMetadataFaceObject *)v3 yawAngle];
  v10 = v9;
  [(AVMetadataFaceObject *)v3 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (v3)
  {
    [(AVMetadataFaceObject *)v3 time];
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
  }

  v23 = v21;
  v24 = v22;
  v19 = [PVFaceDetection faceDetection:v4];

  return v19;
}

id MakePVFaceDetection(AVMetadataFaceObject *a1, double a2)
{
  v3 = a1;
  v4 = [(AVMetadataFaceObject *)v3 faceID];
  v5 = [(AVMetadataFaceObject *)v3 hasRollAngle];
  [(AVMetadataFaceObject *)v3 rollAngle];
  v7 = v6;
  v8 = [(AVMetadataFaceObject *)v3 hasYawAngle];
  [(AVMetadataFaceObject *)v3 yawAngle];
  v10 = v9;
  [(AVMetadataFaceObject *)v3 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (v3)
  {
    [(AVMetadataFaceObject *)v3 time];
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
  }

  v23 = v21;
  v24 = v22;
  v19 = [PVFaceDetection faceDetectionWithAngle:v4];

  return v19;
}

void sub_25F9A9B84(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_25F9A9CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = PVLivePlayer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__9(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_25F9AAE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F9AB068(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_25F9AB190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F9AB300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__19(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __copy_helper_block_ea8_56c29_ZTS5HGRefI15PVRenderLinkJobE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_56c29_ZTS5HGRefI15PVRenderLinkJobE(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_25F9AC31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_48c29_ZTS5HGRefI15PVRenderLinkJobE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_48c29_ZTS5HGRefI15PVRenderLinkJobE(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_40c29_ZTS5HGRefI15PVRenderLinkJobE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_40c29_ZTS5HGRefI15PVRenderLinkJobE(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

PVPerfStats *std::unique_ptr<PVPerfStats>::reset[abi:ne200100](PVPerfStats **a1, PVPerfStats *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    PVPerfStats::~PVPerfStats(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void PVRenderLinkJob::PVRenderLinkJob(PVRenderLinkJob *this, PVLivePlayer *a2, CMTime *a3, double a4, PVTaskToken *a5)
{
  v9 = a2;
  v10 = a5;
  HGUserJob::HGUserJob(this);
  *this = &unk_2871CF128;
  v11 = v9;
  *(this + 9) = v11;
  epoch = a3->epoch;
  *(this + 5) = *&a3->value;
  *(this + 12) = epoch;
  *(this + 13) = a4;
  v13 = v10;
  *(this + 14) = v13;
  PVPerfStats::FrameStats::FrameStats(this + 120);
  HGUserJob::SetQueueID(this, 0);
  HGUserJob::SetPriority(this, 5);
  HGUserJob::SetNotifyFunc(this, PVRenderLinkJob::PVPlayerQueueNotificationFunction);
}

void sub_25F9ACCE8(_Unwind_Exception *a1)
{
  HGUserJob::~HGUserJob(v2);

  _Unwind_Resume(a1);
}

void PVRenderLinkJob::PVPlayerQueueNotificationFunction(PVRenderLinkJob *this, HGUserJob *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (this)
  {
    if (v4)
    {
      v5 = v4;
      if (HGGLBlendingInfo::GetRGBOperation(v4) == 3 || HGGLBlendingInfo::GetRGBOperation(v5) == 4)
      {
        PVRenderLinkJob::HandleJob(v5);
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

void PVRenderLinkJob::~PVRenderLinkJob(PVRenderLinkJob *this)
{
  *this = &unk_2871CF128;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  HGUserJob::~HGUserJob(this);
}

{
  *this = &unk_2871CF128;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  HGUserJob::~HGUserJob(this);

  HGObject::operator delete(v3);
}

uint64_t PVRenderLinkJob::HandleJob(PVRenderLinkJob *this)
{
  if (this)
  {
    (*(*this + 16))(this);
  }

  v2 = *(this + 9);
  v4 = this;
  (*(*this + 16))(this);
  [v2 handleRenderLinkJob:&v4];
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return (*(*this + 24))(this);
}

void sub_25F9ACFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_25F9ADB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HGObject::operator delete(v11);
  (*(*v10 + 24))(v10);
  HGTransform::~HGTransform(&a9);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v14 = *(v12 - 96);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(v12 - 88);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F9AF03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F9B045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F9B0EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v11);
  (*(*v12 + 24))(v12);
  if (*v10)
  {
    (*(**v10 + 24))(*v10);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t HMaskAlpha::GetDOD(HMaskAlpha *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v6 = *(this + 104);
  if (!v6)
  {
    return *&a4.var0;
  }

  v7 = HGRectMake4i(-v6, -v6, v6, v6);

  return HGRectGrow(v5, v4, v7);
}

char *HMaskAlpha::RenderPageMetal(HGNode *this, HGPage *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v22, this, a2);
  (*(**a2 + 144))(*a2, 0);
  v4 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPageMetal( [%d %d %d %d])", v4, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v21, "gpu", 1, __str);
  Buffer = HGGPURenderer::CreateBuffer(*a2, *(a2 + 1), 7, 1, (*(this + 4) >> 12) & 1, *(a2 + 248));
  v6 = (*(**a2 + 368))(*a2, *(this + 8), this);
  {
    v8 = v7;
    v9 = (*(*this + 48))(this);
    v10 = strlen(v9);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__dst, v9, v10);
    }

    __dst.__r_.__value_.__s.__data_[v11] = 0;
    HGMetalHandler::SetDebugLabel(v8, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    HGMetalHandler::BindBuffer(v8, Buffer);
    for (i = 0; i != 8; ++i)
    {
      v14 = *(a2 + i + 21);
      if (v14)
      {
        v12 = HGMetalHandler::BindTexture(v8, i, v14);
      }
    }

    (*(*this + 488))(this, a2, 0, v8, v12);
    if (HGNode::IsInPlaceHardwareBlendingEnabled(this))
    {
      HGMetalHandler::EnableBlending(v8);
      v16 = (*(*this + 256))(this);
      v17 = HGMetalHandler::SetBlendingInfo(v8, v16);
      v18 = (*(*this + 272))(this, v17);
      v15 = HGMetalHandler::SetBlendingColor(v8, v18);
    }

    (*(v8->__r_.__value_.__r.__words[0] + 192))(v8, *(a2 + 2), *(a2 + 3), 8, v15);
    (*(*this + 496))(this, a2, 0, v8);
    HGMetalHandler::BindBuffer(v8, 0);
  }

  else
  {
    HGGPURenderer::CopyMetal(*a2, Buffer, *(a2 + 1), *(a2 + 21));
  }

  HGTraceGuard::~HGTraceGuard(v21);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v22);
  return Buffer;
}

void sub_25F9B1580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, HGPage *a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  HGTraceGuard::~HGTraceGuard(&a20);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&a22);
  _Unwind_Resume(a1);
}

void HMaskAlpha::~HMaskAlpha(HGNode *this)
{
  HgcMaskAlpha::~HgcMaskAlpha(this);

  HGObject::operator delete(v1);
}

void HGMPSImageEDT::HGMPSImageEDT(HGMPSImageEDT *this, __int16 a2)
{
  HGNode::HGNode(this);
  *v3 = &unk_2871CF420;
  *(v3 + 408) = 0;
  *(v3 + 416) = a2;
  *(v3 + 16) = *(v3 + 16) & 0xFFFFF9FF | 0x400;
}

void HGMPSImageEDT::~HGMPSImageEDT(HGNode *this)
{
  *this = &unk_2871CF420;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  HGMPSImageEDT::~HGMPSImageEDT(this);

  HGObject::operator delete(v1);
}

uint64_t HGMPSImageEDT::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

unint64_t HGMPSImageEDT::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 416);
    v4 = a4 - v6;
    v5 = (HIDWORD(a4) - v6);
  }

  return v4 | (v5 << 32);
}

uint64_t HGMPSImageEDT::RenderTile(HGNode *this, HGTile *a2)
{
  v4 = HGNode::RenderTile(this, a2);
  v5 = *(a2 + 1);
  v6 = *a2;
  v7 = (*(a2 + 2) - v6);
  v50 = *(a2 + 3) - v5;
  v51 = v4;
  v8 = *(a2 + 6);
  v48 = *(a2 + 10);
  v49 = *(a2 + 22);
  v9 = *(a2 + 2);
  v11 = *(a2 + 52);
  v10 = *(a2 + 53);
  v13 = *(a2 + 54);
  v12 = *(a2 + 55);
  v14 = malloc_type_malloc(16 * (v50 + 2 * *(this + 208)) * v8, 0x1000040451B5BE8uLL);
  v16 = *(this + 208);
  v17 = *(this + 208);
  v18 = -v17;
  if (v50 + v16 > v18)
  {
    v19 = v48 - 16 * *(this + 208) * v49;
    v20 = v14;
    do
    {
      if (v18 + v5 > v10 && v18 + v5 < v12 && v7 >= 1)
      {
        v23 = 0;
        v24 = v6;
        v25 = v19;
        do
        {
          if (*(v48 + 16 * v18 * v49 + 16 * v23) == 1.0)
          {
            *&v20[16 * v23] = xmmword_2603427D0;
          }

          else
          {
            v26 = *(this + 208);
            if (v26 >= 1)
            {
              v27 = -v26;
              v28 = -*(this + 208);
              v29 = ((v13 - v11) * (v13 - v11) + (v12 - v10) * (v12 - v10));
              do
              {
                if (v24 + v27 > v11 && v24 + v27 < v13)
                {
                  if (*(v25 + 16 * v27) == 1.0)
                  {
                    v31 = v28 >= 0 ? v28 : -v28;
                    if (v31 < v29)
                    {
                      v29 = v31;
                    }
                  }

                  *v15.i32 = v29;
                  v15 = vdupq_lane_s32(*v15.i8, 0);
                  v15.i32[3] = 1.0;
                  *&v20[16 * v23] = v15;
                  LOWORD(v26) = *(this + 208);
                }

                ++v27;
                ++v28;
              }

              while (v27 < v26);
            }
          }

          ++v23;
          v25 += 16;
          ++v24;
        }

        while (v23 != v7);
        v17 = *(this + 208);
      }

      v20 += 16 * v8;
      ++v18;
      v19 += 16 * v49;
    }

    while (v18 < v50 + v17);
    v16 = v17;
  }

  if (v50 >= 1)
  {
    v32 = &v14[16 * v16 * v8];
    v33 = 16 * v8;
    v34 = v17;
    for (i = 0; i != v50; ++i)
    {
      if (v7 >= 1)
      {
        v36 = 0;
        v37 = v32;
        do
        {
          if (v36 + v6 > v11 && v36 + v6 < v13 && v34 >= 1)
          {
            v40 = -v34;
            v41 = -v34;
            v42 = &v37[-16 * v8 * v34];
            v43 = ((v13 - v11) * (v13 - v11) + (v12 - v10) * (v12 - v10));
            do
            {
              if (v5 + v41 > v10 && v5 + v41 < v12)
              {
                v45 = vmulq_f32(*v42, *v42).u64[0];
                *v45.i32 = *v45.i32 + (v41 * v41);
                if (*v45.i32 < v43)
                {
                  v43 = *v45.i32;
                }

                *v45.i32 = sqrtf(v43);
                v46 = vdupq_lane_s32(v45, 0);
                v46.i32[3] = 1.0;
                *(v9 + 16 * v36) = v46;
                v17 = *(this + 208);
              }

              ++v40;
              ++v41;
              v42 = (v42 + v33);
              v34 = v17;
            }

            while (v40 < v17);
          }

          ++v36;
          v37 += 16;
        }

        while (v36 != v7);
      }

      v9 += 16 * v8;
      ++v5;
      v32 += v33;
    }
  }

  free(v14);
  return v51;
}

char *HGMPSImageEDT::RenderPageMetal(HGNode *this, HGRect *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v27, this, a2);
  v4 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPageMetal( [%d %d %d %d])", v4, a2[1].var0, a2[1].var1, a2[1].var2, a2[1].var3);
  HGTraceGuard::HGTraceGuard(v26, "gpu", 1, __str);
  Buffer = HGGPURenderer::CreateBuffer(*&a2->var0, a2[1], a2[2].var0, 1, (*(this + 4) >> 12) & 1, 1);
  if (!*(this + 51))
  {
    v6 = *&a2[10].var2;
    v7 = HGGPURenderer::CreateBuffer(*&a2->var0, *(v6 + 20), 7, 1, (*(this + 4) >> 12) & 1, 1, 1);
    v8 = *(this + 51);
    if (v8 == v7)
    {
      if (v7)
      {
        (*(*v7 + 24))(v7);
      }
    }

    else
    {
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      *(this + 51) = v7;
    }

    v9 = HGGPURenderer::CreateBuffer(*&a2->var0, *(v6 + 20), 7, 1, (*(this + 4) >> 12) & 1, 1);
    v10 = *&a2->var0;
    Storage = HGBitmap::GetStorage(v9);
    HGGPURenderer::CopyMetal(v10, Storage, *(v6 + 20), v6);
    HGGPURenderer::FlushMetalCommandBuffer(*&a2->var0);
    MetalContext = HGGPURenderer::GetMetalContext(*&a2->var0);
    v13 = [*(MetalContext + 32) commandBuffer];
    [v13 setLabel:@"MPS EuclideanDistanceTransform Buffer"];
    v14 = *&a2->var0;
    v15 = HGBitmap::GetStorage(*(this + 51));
    v16 = HGGPURenderer::ConvertToMetalTexture(v14, v15);
    v17 = *&a2->var0;
    v18 = HGBitmap::GetStorage(v9);
    v19 = HGGPURenderer::ConvertToMetalTexture(v17, v18);
    v20 = [objc_alloc(MEMORY[0x277CD7518]) initWithDevice:*(*(MetalContext + 16) + 16)];
    [v20 encodeToCommandBuffer:v13 sourceTexture:*(v19 + 18) destinationTexture:*(v16 + 18)];

    [v13 commit];
    [v13 waitUntilScheduled];
    (*(*v19 + 24))(v19);
    (*(*v16 + 24))(v16);
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }
  }

  v21 = *&a2->var0;
  v23 = *&a2[1].var0;
  v22 = *&a2[1].var2;
  v24 = HGBitmap::GetStorage(*(this + 51));
  *&v30.var0 = v23;
  *&v30.var2 = v22;
  HGGPURenderer::BufferCopyMetal(v21, Buffer, v30, v24);
  HGTraceGuard::~HGTraceGuard(v26);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v27);
  return Buffer;
}

void sub_25F9B1D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9B4988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_objecta, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  HGObject::operator delete(v34);
  (*(*v37 + 24))(v37);
  if (v40)
  {
    (*(*v40 + 24))(v40);
  }

  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  (*(*v39 + 24))(v39);
  (*(*v38 + 24))(v38);
  (*(*v36 + 24))(v36);
  (*(*v35 + 24))(v35);
  (*(*a11 + 24))(a11);
  (*(*a12 + 24))(a12);
  (*(*v33 + 24))(v33);
  HGTransform::~HGTransform(&a33);
  if (STACK[0x250])
  {
    (*(*STACK[0x250] + 24))(STACK[0x250]);
  }

  if (STACK[0x258])
  {
    (*(*STACK[0x258] + 24))(STACK[0x258]);
  }

  _Unwind_Resume(a1);
}

void HColorAndGradientStroke::~HColorAndGradientStroke(HGNode *this)
{
  HgcColorAndGradientStroke::~HgcColorAndGradientStroke(this);

  HGObject::operator delete(v1);
}

uint64_t HColorAndGradientStroke::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HOutlineGradientStroke::~HOutlineGradientStroke(HGNode *this)
{
  HgcOutlineGradientStroke::~HgcOutlineGradientStroke(this);

  HGObject::operator delete(v1);
}

void sub_25F9B5BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

uint64_t HConcentricPolygonsGradient::GetROI(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

void HConcentricPolygonsGradient::~HConcentricPolygonsGradient(HGNode *this)
{
  HgcConcentricPolygonsGradient::~HgcConcentricPolygonsGradient(this);

  HGObject::operator delete(v1);
}

HGNode *HPixellate::GetOutput(HGNode *this, HGRenderer *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 5, v5);
  if (v6 == 1.0)
  {
    return HGRenderer::GetInput(a2, this, 0);
  }

  else
  {
    return HgcPixellate::GetOutput(this, a2);
  }
}

unint64_t HPixellate::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0x8000000080000000;
  }

  else
  {
    return a4;
  }
}

unint64_t HPixellate::GetROI(HPixellate *this, HGRenderer *a2, int a3, HGRect a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var0 = a4.var0;
    var1 = a4.var1;
    var2 = a4.var2;
    *&v36 = a4.var3;
    (*(*this + 104))(this, 0, &v38);
    v10 = v38;
    v12 = v39;
    v11 = v40;
    (*(*this + 104))(this, 1, &v38);
    v13 = v40;
    v14 = v11 + (((v10 * var0) + (v12.f32[0] * var1)) + (v12.f32[1] * 0.0));
    v15 = v38 * var0;
    v35 = v14;
    v16 = v38 * var2;
    v33 = v39;
    (*(*this + 104))(this, 2, &v38);
    v17 = v38;
    v18 = v40;
    v19 = vmul_f32(v33, v36);
    v20 = v13 + ((v15 + (var1 * v33.f32[0])) + v19.f32[1]);
    v21 = v13 + ((v16 + v19.f32[0]) + v19.f32[1]);
    v34 = v39;
    (*(*this + 104))(this, 3, &v38);
    v22 = v38;
    v23 = v40;
    v37 = v39;
    (*(*this + 104))(this, 4, &v38);
    v25 = v38;
    v24 = v39.f32[0];
    (*(*this + 104))(this, 5, &v38);
    v26 = vcvtms_s32_f32((v35 - v25) * v38) + 0.5;
    v27 = vcvtms_s32_f32((v20 - v24) * v38) + 0.5;
    v28 = v25 + (v39.f32[0] * v26);
    v29 = v24 + (v39.f32[0] * v27);
    v30 = vcvtms_s32_f32((v21 - v24) * v38) + 0.5;
    *&v31 = v24 + (v39.f32[0] * v30);
    v4 = (floorf(v18 + (COERCE_FLOAT(vmul_f32(v34, v31).i32[1]) + ((v17 * v28) + (v29 * v34.f32[0])))) + -1.0);
    v5 = (floorf(v23 + (COERCE_FLOAT(vmul_f32(v37, v31).i32[1]) + ((v22 * v28) + (v29 * v37.f32[0])))) + -1.0);
  }

  return v4 | (v5 << 32);
}

void HPixellate::~HPixellate(HGNode *this)
{
  HgcPixellate::~HgcPixellate(this);

  HGObject::operator delete(v1);
}

void sub_25F9B67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v9 + 24))(v9);
  v12 = *(v10 - 80);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  _Unwind_Resume(a1);
}

void sub_25F9B7854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HiOSLightTunnel::GetROI(HiOSLightTunnel *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v69 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 0, &v66);
  v6 = *(&v66 + 1);
  LODWORD(v7) = v66;
  v8 = v67;
  v9 = v68;
  *&v70.var0 = v5;
  *&v70.var2 = v4;
  v12 = CGRectFromHGRect(v70);
  v14 = v13;
  v15 = v12;
  v16 = v13;
  v17 = (v15 - v7) * (v15 - v7);
  *&v13 = (v16 - v6) * (v16 - v6);
  v18 = sqrtf(v17 + *&v13);
  v19 = v14 + v11;
  v20 = (v19 - v6) * (v19 - v6);
  v21 = sqrtf(v17 + v20);
  v22 = v12 + v10;
  v23 = (v22 - v7) * (v22 - v7);
  v24 = sqrtf(*&v13 + v23);
  if (sqrtf(v23 + v20) > v8 || v24 > v8 || v21 > v8 || v18 > v8)
  {
    if (fabsf(v9) >= 0.0001)
    {
      return HGRectMake4i(vcvtmd_s64_f64(v7 - v8), vcvtmd_s64_f64(v6 - v8), vcvtpd_s64_f64(v7 + v8), vcvtpd_s64_f64(v6 + v8));
    }

    v49 = *(MEMORY[0x277CBF398] + 8);
    v55 = *MEMORY[0x277CBF398];
    v40 = *(MEMORY[0x277CBF398] + 24);
    r1a = *(MEMORY[0x277CBF398] + 16);
    v61 = v9;
    *&v64 = v12;
    *(&v64 + 1) = v16;
    v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
    v67 = v8;
    v68 = v9;
    v38 = v14 + v11;
    v39 = v12 + v10;
    v62 = v11;
    v63 = v10;
    lightTunnel(&v64, &v66, &v65);
    v90.origin.x = v65.f32[0];
    v90.origin.y = v65.f32[1];
    v90.size.width = 0.0;
    v90.size.height = 0.0;
    v71.origin.y = v49;
    v71.origin.x = v55;
    v71.size.height = v40;
    v71.size.width = r1a;
    v72 = CGRectUnion(v71, v90);
    y = v72.origin.y;
    x = v72.origin.x;
    height = v72.size.height;
    r1b = v72.size.width;
    *&v64 = v12;
    *(&v64 + 1) = v38;
    v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
    v67 = v8;
    v68 = v9;
    lightTunnel(&v64, &v66, &v65);
    v91.origin.x = v65.f32[0];
    v91.origin.y = v65.f32[1];
    v91.size.width = 0.0;
    v91.size.height = 0.0;
    v73.origin.y = y;
    v73.origin.x = x;
    v73.size.height = height;
    v73.size.width = r1b;
    v74 = CGRectUnion(v73, v91);
    v51 = v74.origin.y;
    v57 = v74.origin.x;
    v42 = v74.size.height;
    r1c = v74.size.width;
    v64 = __PAIR64__(LODWORD(v16), LODWORD(v39));
    v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
    v67 = v8;
    v68 = v9;
    lightTunnel(&v64, &v66, &v65);
    v92.origin.x = v65.f32[0];
    v92.origin.y = v65.f32[1];
    v92.size.width = 0.0;
    v92.size.height = 0.0;
    v75.origin.y = v51;
    v75.origin.x = v57;
    v75.size.height = v42;
    v75.size.width = r1c;
    v76 = CGRectUnion(v75, v92);
    v28 = v76.origin.x;
    width = v76.size.width;
    v58 = v76.origin.y;
    r1d = v76.size.height;
    v64 = __PAIR64__(LODWORD(v38), LODWORD(v39));
    v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
    v67 = v8;
    v68 = v61;
    lightTunnel(&v64, &v66, &v65);
    v93.origin.x = v65.f32[0];
    v93.origin.y = v65.f32[1];
    v93.size.width = 0.0;
    v93.size.height = 0.0;
    v77.origin.x = v28;
    v77.size.width = width;
    v77.origin.y = v58;
    v77.size.height = r1d;
    v78 = CGRectUnion(v77, v93);
    v53 = v78.origin.y;
    v59 = v78.origin.x;
    v43 = v78.size.height;
    r1 = v78.size.width;
    v78.origin.x = v12;
    v78.origin.y = v14;
    v78.size.height = v62;
    v78.size.width = v63;
    if (CGRectGetMinX(v78) < v7)
    {
      v79.origin.x = v12;
      v79.origin.y = v14;
      v79.size.width = v63;
      v79.size.height = v62;
      if (CGRectGetMaxX(v79) > v7)
      {
        v64 = __PAIR64__(LODWORD(v16), LODWORD(v7));
        v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
        v67 = v8;
        v68 = v61;
        lightTunnel(&v64, &v66, &v65);
        v94.origin.x = v65.f32[0];
        v94.origin.y = v65.f32[1];
        v94.size.width = 0.0;
        v94.size.height = 0.0;
        v80.origin.y = v53;
        v80.origin.x = v59;
        v80.size.height = v43;
        v80.size.width = r1;
        v81 = CGRectUnion(v80, v94);
        v29 = v81.origin.x;
        v54 = v81.size.width;
        v60 = v81.origin.y;
        v30 = v81.size.height;
        v64 = __PAIR64__(LODWORD(v38), LODWORD(v7));
        v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
        v67 = v8;
        v68 = v61;
        lightTunnel(&v64, &v66, &v65);
        v95.origin.x = v65.f32[0];
        v95.origin.y = v65.f32[1];
        v95.size.width = 0.0;
        v95.size.height = 0.0;
        v82.origin.x = v29;
        v82.size.width = v54;
        v82.origin.y = v60;
        v82.size.height = v30;
        v83 = CGRectUnion(v82, v95);
        v53 = v83.origin.y;
        v59 = v83.origin.x;
        v43 = v83.size.height;
        r1 = v83.size.width;
      }
    }

    v84.origin.x = v12;
    v84.origin.y = v14;
    v84.size.width = v63;
    v84.size.height = v62;
    if (CGRectGetMinY(v84) >= v6 || (v85.origin.x = v12, v85.origin.y = v14, v85.size.width = v63, v85.size.height = v62, CGRectGetMaxY(v85) <= v6))
    {
      v89.origin.y = v53;
      v89.origin.x = v59;
      v89.size.height = v43;
      v89.size.width = r1;
    }

    else
    {
      *&v37 = v12;
      v64 = __PAIR64__(LODWORD(v6), v37);
      v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
      v67 = v8;
      v68 = v61;
      lightTunnel(&v64, &v66, &v65);
      v96.origin.x = v65.f32[0];
      v96.origin.y = v65.f32[1];
      v96.size.width = 0.0;
      v96.size.height = 0.0;
      v86.origin.y = v53;
      v86.origin.x = v59;
      v86.size.height = v43;
      v86.size.width = r1;
      v87 = CGRectUnion(v86, v96);
      v31 = v87.origin.x;
      v32 = v87.origin.y;
      v33 = v87.size.width;
      v34 = v87.size.height;
      v64 = __PAIR64__(LODWORD(v6), LODWORD(v39));
      v66 = __PAIR64__(LODWORD(v6), LODWORD(v7));
      v67 = v8;
      v68 = v61;
      lightTunnel(&v64, &v66, &v65);
      v97.origin.x = v65.f32[0];
      v97.origin.y = v65.f32[1];
      v97.size.width = 0.0;
      v97.size.height = 0.0;
      v88.origin.x = v31;
      v88.origin.y = v32;
      v88.size.width = v33;
      v88.size.height = v34;
      v89 = CGRectUnion(v88, v97);
    }

    return HGRectFromCGRect(v89);
  }

  return v5;
}

float32x2_t lightTunnel@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v4 = a2[1].f32[1];
  v5 = *a2;
  v6 = *a1;
  v7 = vsub_f32(*a1, *a2);
  v16 = a2[1].f32[0] * (1.0 / sqrtf(vaddv_f32(vmul_f32(v7, v7))));
  v8 = logf(v16);
  v9 = __sincosf_stret(v4 * v8);
  v10 = vmul_n_f32(v7, v9.__cosval);
  v11 = vrev64_s32(vmul_n_f32(v7, v9.__sinval));
  v12.i32[0] = vadd_f32(v10, v11).u32[0];
  v12.i32[1] = vsub_f32(v10, v11).i32[1];
  v13 = vadd_f32(v5, vmul_n_f32(v12, v16));
  v14 = 0.0;
  if (v16 >= 1.0)
  {
    v14 = 1.0;
  }

  result = vadd_f32(vmul_n_f32(v13, v14), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v6), 1.0 - v14)));
  *a3 = result;
  return result;
}

void HiOSLightTunnel::~HiOSLightTunnel(HGNode *this)
{
  HgciOSLightTunnel::~HgciOSLightTunnel(this);

  HGObject::operator delete(v1);
}

unint64_t HPoke::GetDOD(HPoke *this, HGRenderer *a2, int a3, HGRect a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a4;
  if (a3)
  {
    v4 = &HGRectNull;
    return *v4;
  }

  (*(*this + 104))(this, 0, &v28);
  v24 = vcvtq_f64_f32(v28);
  v6 = (1.0 / v29);
  v7 = v30;
  if (fabs(v30 + -1.0) < 0.0000001 && fabs(v6) < 0.0000001)
  {
    v4 = &HGRectInfinite;
    return *v4;
  }

  Interval::pixelToFloat(&v25.var0, &v22);
  *&v26 = v22;
  *(&v26 + 1) = v23;
  *&v27 = *(&v22 + 1) - *&v22;
  *(&v27 + 1) = *(&v23 + 1) - *&v23;
  if (PCMatrix44Tmpl<double>::transformRect<double>(this + 68, &v26, &v26))
  {
    v9 = *&v26;
    v10 = *&v26 + *&v27;
    if (v9 > v9 + *&v27)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v11 = *(&v26 + 1);
    v12 = *(&v26 + 1) + *(&v27 + 1);
    if (*(&v26 + 1) > *(&v26 + 1) + *(&v27 + 1))
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }
  }

  else
  {
    v10 = INFINITY;
    v9 = -INFINITY;
    v11 = 0xFFF0000000000000;
    v12 = INFINITY;
  }

  *&v22 = v9;
  *(&v22 + 1) = v10;
  *&v23 = v11;
  *(&v23 + 1) = v12;
  operator-<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,double>(&v22, v24.f64, &v26);
  v22 = v26;
  v23 = v27;
  v21[0] = &unk_2871D0518;
  v21[1] = *&v6;
  v21[2] = *&v7;
  *&v21[3] = sqrt(v6) * v7;
  v26 = 0uLL;
  Interval::eightPointDOD(&v22, &v26, v21, v20);
  operator+<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,double>(v20, v24.f64, v17);
  *&v26 = v17[0];
  *(&v26 + 1) = v18;
  *&v27 = v17[1] - v17[0];
  *(&v27 + 1) = v19 - v18;
  if (PCMatrix44Tmpl<double>::transformRect<double>(this + 52, &v26, &v26))
  {
    v13 = *&v26;
    v14 = *&v26 + *&v27;
    if (v13 > v13 + *&v27)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v15 = *(&v26 + 1);
    v16 = *(&v26 + 1) + *(&v27 + 1);
    if (*(&v26 + 1) > *(&v26 + 1) + *(&v27 + 1))
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }
  }

  else
  {
    v14 = INFINITY;
    v13 = -INFINITY;
    v15 = -INFINITY;
    v16 = INFINITY;
  }

  v20[0] = v13;
  v20[1] = v14;
  v20[2] = v15;
  v20[3] = v16;
  return Interval::floatToPixel(v20);
}

double operator-<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,double>@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = fegetround();
  fesetround(0x400000);
  v7 = *a2 - *a1;
  v8 = a1[1] - *a2;
  fesetround(v6);
  v9 = fegetround();
  fesetround(0x400000);
  v10 = a2[1];
  v11 = v10 - a1[2];
  v12 = a1[3] - v10;
  fesetround(v9);
  result = -v11;
  *a3 = -v7;
  a3[1] = v8;
  a3[2] = -v11;
  a3[3] = v12;
  return result;
}

double operator+<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,double>@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = fegetround();
  fesetround(0x400000);
  v7 = -*a2 - *a1;
  v8 = *a2 + a1[1];
  fesetround(v6);
  v9 = fegetround();
  fesetround(0x400000);
  v10 = a2[1];
  v11 = -v10 - a1[2];
  v12 = v10 + a1[3];
  fesetround(v9);
  result = -v11;
  *a3 = -v7;
  a3[1] = v8;
  a3[2] = -v11;
  a3[3] = v12;
  return result;
}

unint64_t HPoke::GetROI(HPoke *this, HGRenderer *a2, int a3, HGRect a4)
{
  v126 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var1 = a4.var1;
    var3 = a4.var3;
    (*(*this + 104))(this, 0, v123);
    v11 = v123[0];
    v12 = v123[1];
    v13 = var0;
    if (var0 <= var2)
    {
      v18 = *(this + 81);
      v121 = v18 * var1;
      v119 = *(this + 83);
      v19 = *(this + 69);
      v118 = v19 * var1;
      v116 = *(this + 71);
      v20 = *(this + 73);
      v21 = *(this + 75);
      v22 = v124;
      v23 = *(this + 64);
      v24 = *(this + 65);
      v25 = *(this + 67);
      v26 = *(this + 52);
      v27 = *(this + 53);
      v28 = *(this + 55);
      v29 = *(this + 56);
      v30 = *(this + 57);
      v31 = *(this + 59);
      v32 = v125;
      v112 = v18 * var3;
      v114 = v20 * var1;
      v110 = v20 * var3;
      v111 = v19 * var3;
      v16 = -3.40282347e38;
      v17 = 3.40282347e38;
      v14 = 3.40282347e38;
      v15 = -3.40282347e38;
      do
      {
        v34 = *(this + 80) * v13;
        v35 = *(this + 68) * v13;
        v36 = v119 + v34 + v121;
        v37 = *(this + 72) * v13;
        v38 = (v21 + v37 + v114) / v36;
        v39 = (v116 + v35 + v118) / v36 - v11;
        v40 = v38 - v12;
        v41 = sqrt(v39 * v39 + v40 * v40) * v22;
        v42 = sqrt(v41 + 0.00001);
        v43 = v40 / v42;
        v44 = v39 / v42 + v11;
        v45 = v43 + v12;
        v46 = v23 * v44 + v24 * v45;
        v47 = v26 * v44 + v27 * v45;
        v48 = (v31 + v29 * v44 + v30 * v45) / (v25 + v46);
        v49 = ((v28 + v47) / (v25 + v46) - v13) * v32 + v13;
        v50 = (v48 - var1) * v32 + var1;
        v51 = v119 + v34 + v112;
        v52 = (v116 + v35 + v111) / v51;
        if (v49 < v14)
        {
          v14 = v49;
        }

        v53 = v52 - v11;
        v54 = (v21 + v37 + v110) / v51 - v12;
        v55 = sqrt(v53 * v53 + v54 * v54) * v22;
        if (v50 < v17)
        {
          v17 = v50;
        }

        v56 = v55;
        v57 = sqrt(v56 + 0.00001);
        v58 = v53 / v57 + v11;
        v59 = v54 / v57 + v12;
        if (v49 > v15)
        {
          v15 = v49;
        }

        v60 = v23 * v58 + v24 * v59;
        v61 = v26 * v58 + v27 * v59;
        if (v50 > v16)
        {
          v16 = v50;
        }

        v33 = v13;
        v62 = ((v28 + v61) / (v25 + v60) - v33) * v32 + v33;
        v63 = ((v31 + v29 * v58 + v30 * v59) / (v25 + v60) - var3) * v32 + var3;
        if (v62 < v14)
        {
          v14 = ((v28 + v61) / (v25 + v60) - v33) * v32 + v33;
        }

        if (v63 < v17)
        {
          v17 = v63;
        }

        if (v62 > v15)
        {
          v15 = ((v28 + v61) / (v25 + v60) - v33) * v32 + v33;
        }

        if (v63 > v16)
        {
          v16 = v63;
        }

        v13 = v13 + 1.0;
      }

      while (v13 <= var2);
    }

    else
    {
      v14 = 3.40282347e38;
      v15 = -3.40282347e38;
      v16 = -3.40282347e38;
      v17 = 3.40282347e38;
    }

    v64 = var1;
    v65 = var3;
    if (var1 <= var3)
    {
      v66 = *(this + 80);
      v122 = v66 * var0;
      v120 = *(this + 83);
      v67 = *(this + 68);
      v117 = *(this + 71);
      v68 = *(this + 72);
      v69 = *(this + 75);
      v70 = v124;
      v71 = *(this + 64);
      v72 = *(this + 65);
      v73 = *(this + 67);
      v74 = *(this + 52);
      v75 = *(this + 53);
      v76 = *(this + 55);
      v77 = *(this + 56);
      v78 = *(this + 57);
      v79 = *(this + 59);
      v80 = v125;
      v113 = v66 * var2;
      v115 = var2;
      do
      {
        v81 = *(this + 81) * v64;
        v82 = *(this + 69) * v64;
        v83 = v120 + v122 + v81;
        v84 = *(this + 73) * v64;
        v85 = (v117 + v67 * var0 + v82) / v83 - v11;
        v86 = (v69 + v68 * var0 + v84) / v83 - v12;
        v87 = sqrt(v85 * v85 + v86 * v86) * v70;
        v88 = sqrt(v87 + 0.00001);
        v89 = v85 / v88 + v11;
        v90 = v86 / v88 + v12;
        v91 = v71 * v89 + v72 * v90;
        v92 = v65;
        v93 = (v76 + v74 * v89 + v75 * v90) / (v73 + v91);
        v94 = (v79 + v77 * v89 + v78 * v90) / (v73 + v91);
        v95 = (v93 - var0) * v80 + var0;
        v96 = (v94 - v64) * v80 + v64;
        v97 = v120 + v113 + v81;
        if (v95 < v14)
        {
          v14 = v95;
        }

        v98 = (v117 + v67 * var2 + v82) / v97 - v11;
        v99 = (v69 + v68 * var2 + v84) / v97 - v12;
        v100 = sqrt(v98 * v98 + v99 * v99) * v70;
        if (v96 < v17)
        {
          v17 = v96;
        }

        v101 = v100;
        v102 = sqrt(v101 + 0.00001);
        v103 = v98 / v102 + v11;
        v104 = v99 / v102 + v12;
        if (v95 > v15)
        {
          v15 = v95;
        }

        if (v96 > v16)
        {
          v16 = v96;
        }

        v105 = v73 + v71 * v103 + v72 * v104;
        v106 = ((v79 + v77 * v103 + v78 * v104) / v105 - v64) * v80 + v64;
        v107 = (v76 + v74 * v103 + v75 * v104) / v105 - v115;
        v65 = v92;
        v108 = v107 * v80 + v115;
        if (v108 < v14)
        {
          v14 = v108;
        }

        if (v106 < v17)
        {
          v17 = v106;
        }

        if (v108 > v15)
        {
          v15 = v108;
        }

        if (v106 > v16)
        {
          v16 = v106;
        }

        v64 = v64 + 1.0;
      }

      while (v64 <= v92);
    }

    v4 = (v14 + -2.0);
    v5 = (v17 + -2.0);
  }

  return v4 | (v5 << 32);
}

uint64_t HPoke::setPixelTransform(uint64_t a1, double *a2)
{
  v3 = a1 + 416;
  if ((a1 + 416) != a2)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(v3 + i * 8) = v5[i];
      }

      ++v4;
      v3 += 32;
      v5 += 4;
    }

    while (v4 != 4);
  }

  PCMatrix44Tmpl<double>::planarInverseZ(a1 + 544, a2, 0.0);
  v7 = *(a1 + 544);
  v8 = *(a1 + 552);
  v9 = *(a1 + 568);
  (*(*a1 + 96))(a1, 1, v7, v8, 0.0, v9);
  v10 = *(a1 + 576);
  v11 = *(a1 + 584);
  v12 = *(a1 + 600);
  (*(*a1 + 96))(a1, 2, v10, v11, 0.0, v12);
  v13 = *(a1 + 640);
  v14 = *(a1 + 648);
  v15 = *(a1 + 664);
  (*(*a1 + 96))(a1, 3, v13, v14, 0.0, v15);
  v16 = *(a1 + 416);
  v17 = *(a1 + 424);
  v18 = *(a1 + 440);
  (*(*a1 + 96))(a1, 4, v16, v17, 0.0, v18);
  v19 = *(a1 + 448);
  v20 = *(a1 + 456);
  v21 = *(a1 + 472);
  (*(*a1 + 96))(a1, 5, v19, v20, 0.0, v21);
  v22.n128_u64[0] = *(a1 + 512);
  v22.n128_f32[0] = v22.n128_f64[0];
  v23.n128_u64[0] = *(a1 + 520);
  v23.n128_f32[0] = v23.n128_f64[0];
  v24.n128_f32[0] = *(a1 + 536);
  v25 = *(*a1 + 96);
  v26.n128_u64[0] = 0;

  return v25(a1, 6, v22, v23, v26, v24);
}

void HPoke::~HPoke(HGNode *this)
{
  HgcPoke::~HgcPoke(this);

  HGObject::operator delete(v1);
}

BOOL PCMatrix44Tmpl<double>::transformRect<double>(double *a1, double *a2, uint64_t a3)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  if (v4 < 0.0 || (v5 = a2[3], v5 < 0.0))
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(a3 + 16) = _Q0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a2[1];
    v26[0] = *a2;
    v26[1] = v10 + v5;
    v26[2] = v4 + v26[0];
    v26[3] = v10 + v5;
    v26[4] = v4 + v26[0];
    v26[5] = v10;
    v26[6] = v26[0];
    v26[7] = v10;
    v24 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v25 = _Q0;
    v16 = -4;
    v17 = v26;
    do
    {
      v22 = 0u;
      v23 = 0u;
      PCMatrix44Tmpl<double>::transform<double>(a1, v17->f64, v22.f64);
      v18 = *(&v23 + 1) <= 0.0;
      if (*(&v23 + 1) > 0.0)
      {
        if (v8)
        {
          return v7;
        }
      }

      else if (*(&v23 + 1) >= 0.0 || v9)
      {
        return v7;
      }

      v9 = *(&v23 + 1) > 0.0;
      *v17 = vmulq_n_f64(v22, 1.0 / *(&v23 + 1));
      PCRect<double>::operator|=(&v24, v17);
      v7 = (v16 + 4) > 2;
      ++v17;
      v8 = v18;
    }

    while (!__CFADD__(v16++, 1));
    v19 = v25;
    *a3 = v24;
    *(a3 + 16) = v19;
  }

  return 1;
}

double *PCMatrix44Tmpl<double>::transform<double>(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = a1[3] + *a2 * *a1 + v4 * a1[1];
  a3[1] = a1[7] + v3 * a1[4] + v4 * a1[5];
  a3[2] = a1[11] + v3 * a1[8] + v4 * a1[9];
  a3[3] = a1[15] + v3 * a1[12] + v4 * a1[13];
  return a3;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a1[15] + *a2 * a1[12] + v4 * a1[13];
  *a3 = (a1[3] + *a2 * *a1 + v4 * a1[1]) / v5;
  a3[1] = (a1[7] + v3 * a1[4] + v4 * a1[5]) / v5;
  return a3;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *a3 = a1[3] + *a2 * *a1 + v4 * a1[1] + v5 * a1[2];
  a3[1] = a1[7] + v3 * a1[4] + v4 * a1[5] + v5 * a1[6];
  a3[2] = a1[11] + v3 * a1[8] + v4 * a1[9] + v5 * a1[10];
  a3[3] = a1[15] + v3 * a1[12] + v4 * a1[13] + v5 * a1[14];
  return a3;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *a3 = *a2 * *a1 + v4 * a1[1] + v5 * a1[2] + v6 * a1[3];
  a3[1] = v3 * a1[4] + v4 * a1[5] + v5 * a1[6] + v6 * a1[7];
  a3[2] = v3 * a1[8] + v4 * a1[9] + v5 * a1[10] + v6 * a1[11];
  a3[3] = v3 * a1[12] + v4 * a1[13] + v5 * a1[14] + v6 * a1[15];
  return a3;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[15] + *a2 * a1[12] + v4 * a1[13] + v5 * a1[14];
  *a3 = (a1[3] + *a2 * *a1 + v4 * a1[1] + v5 * a1[2]) / v6;
  a3[1] = (a1[7] + v3 * a1[4] + v4 * a1[5] + v5 * a1[6]) / v6;
  a3[2] = (a1[11] + v3 * a1[8] + v4 * a1[9] + v5 * a1[10]) / v6;
  return a3;
}

float64x2_t PCRect<double>::operator|=(float64x2_t *a1, float64x2_t *a2)
{
  v2.f64[0] = a1[1].f64[0];
  if (v2.f64[0] >= 0.0 && a1[1].f64[1] >= 0.0)
  {
    v4 = vbslq_s8(vcgtq_f64(*a1, *a2), *a2, *a1);
    v2.f64[1] = a1[1].f64[1];
    v5 = vaddq_f64(*a1, v2);
    result = vsubq_f64(vbslq_s8(vcgtq_f64(*a2, v5), *a2, v5), v4);
    *a1 = v4;
    a1[1] = result;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    a1[1].f64[0] = 0.0;
    a1[1].f64[1] = 0.0;
  }

  return result;
}

{
  result.f64[0] = a1[1].f64[0];
  if (result.f64[0] >= 0.0 && a1[1].f64[1] >= 0.0)
  {
    v4 = a2[1];
    if (v4.f64[0] >= 0.0 && v4.f64[1] >= 0.0)
    {
      v5 = vbslq_s8(vcgtq_f64(*a1, *a2), *a2, *a1);
      result.f64[1] = a1[1].f64[1];
      v6 = vaddq_f64(*a1, result);
      v7 = vaddq_f64(*a2, v4);
      result = vsubq_f64(vbslq_s8(vcgtq_f64(v7, v6), v7, v6), v5);
      *a1 = v5;
      a1[1] = result;
    }
  }

  else
  {
    result = *a2;
    v3 = a2[1];
    *a1 = *a2;
    a1[1] = v3;
  }

  return result;
}

void boost::numeric::interval_lib::exception_create_empty::operator()()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2666E9930](exception, "boost::interval: empty interval created");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void PokeDistortion::operator()(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  if (fabs(*(a1 + 16) + -1.0) >= 0.0000001)
  {
    Interval::normalized(a2, &v12);
    v9 = *(a1 + 24);
    v10 = 1.0 - *(a1 + 16);
    v11 = sqrt(v9 * v9 + v10 * 4.0 * sqrt(vaddvq_f64(vmulq_f64(*a2, *a2))));
    v8 = vmulq_n_f64(v12, (v11 - v9) / (v10 + v10) * ((v11 - v9) / (v10 + v10)));
  }

  else
  {
    v6 = (a1 + 8);
    v7 = vld1q_dup_f64(v6);
    v8 = vdivq_f64(vmulq_n_f64(*a2, sqrt(vaddvq_f64(vmulq_f64(*a2, *a2)))), v7);
  }

  *a3 = v8;
}

BOOL PCMatrix44Tmpl<double>::planarInverseZ(uint64_t a1, double *a2, double a3)
{
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[15];
  v6 = a2[7];
  v8 = a2[12];
  v7 = a2[13];
  v9 = v3 * v5 - v7 * v6;
  v10 = a2[3];
  v11 = v6 * v8 - v5 * v4;
  v13 = *a2;
  v12 = a2[1];
  v14 = v7 * v4 - v3 * v8;
  v15 = v10 * v14 + v9 * *a2 + v12 * v11;
  v16 = fabs(v15) >= a3 && v15 != 0.0;
  if (v16)
  {
    *a1 = v9 * (1.0 / v15);
    *(a1 + 8) = (v7 * v10 - v5 * v12) * (1.0 / v15);
    *(a1 + 24) = (v6 * v12 - v3 * v10) * (1.0 / v15);
    *(a1 + 32) = v11 * (1.0 / v15);
    *(a1 + 40) = (v5 * v13 - v10 * v8) * (1.0 / v15);
    *(a1 + 56) = (v10 * v4 - v6 * v13) * (1.0 / v15);
    *(a1 + 96) = v14 * (1.0 / v15);
    *(a1 + 104) = (v12 * v8 - v7 * v13) * (1.0 / v15);
    *(a1 + 120) = (v3 * v13 - v12 * v4) * (1.0 / v15);
    *(a1 + 112) = 0;
    *(a1 + 48) = 0;
    *(a1 + 16) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  return v16;
}

unint64_t HHalftone::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0x8000000080000000;
  }

  else
  {
    return a4;
  }
}

uint64_t HHalftone::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HHalftone::~HHalftone(HGNode *this)
{
  HgcHalftone::~HgcHalftone(this);

  HGObject::operator delete(v1);
}

void sub_25F9BA83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

unint64_t HSlicedTile::GetDOD(HSlicedTile *this, HGRenderer *a2, int a3, HGRect a4)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
  }

  else
  {
    (*(*this + 104))(this, 5, &v57, *&a4.var0, *&a4.var2);
    v51 = v57;
    v7 = v58;
    v52 = v59;
    (*(*this + 104))(this, 6, &v57);
    v49 = v57;
    v50 = v59;
    v46 = v7.f32[1] * 0.0;
    v48 = v58;
    (*(*this + 104))(this, 7, &v57);
    v47 = v57;
    v56 = v59;
    v54 = v58;
    (*(*this + 104))(this, 8, &v57);
    v53 = v57;
    v55 = v59;
    v45 = v58;
    (*(*this + 104))(this, 12, &v57);
    v43 = v58.f32[0];
    v44 = v57;
    (*(*this + 104))(this, 10, &v57);
    (*(*this + 104))(this, 9, &v57);
    v9 = v57;
    v8 = v58.f32[0];
    (*(*this + 104))(this, 0, &v57);
    v11 = v57;
    v10 = v58.f32[0];
    (*(*this + 104))(this, 1, &v57);
    v12 = v57;
    (*(*this + 104))(this, 2, &v57);
    v13 = v57;
    (*(*this + 104))(this, 3, &v57);
    v14 = v57;
    (*(*this + 104))(this, 4, &v57);
    v15 = v57;
    (*(*this + 104))(this, 13, &v57);
    if (v12 <= (0.5 - v57))
    {
      v16 = v12;
    }

    else
    {
      v16 = 0.5 - v57;
    }

    if (v14 <= (0.5 - v57))
    {
      v17 = v14;
    }

    else
    {
      v17 = 0.5 - v57;
    }

    if (v13 >= (v57 + -0.5))
    {
      v18 = v13;
    }

    else
    {
      v18 = v57 + -0.5;
    }

    if (v15 >= (v57 + -0.5))
    {
      v19 = v15;
    }

    else
    {
      v19 = v57 + -0.5;
    }

    v22.f32[0] = *(this + 104);
    v20 = *(this + 105);
    v21 = *(this + 106);
    v22.i32[1] = 0;
    v23 = vmul_f32(v48, COERCE_UNSIGNED_INT(*(this + 107)));
    v24 = (v47 * ((v52 + (v46 + ((v51 * v22.f32[0]) + (v7.f32[0] * v20)))) / v9)) - (v18 - (v11 * v18));
    v25 = (((v50 + (v23.f32[1] + ((v49 * v22.f32[0]) + (v20 * v48.f32[0])))) / v8) * v45.f32[0]) - (v19 - (v10 * v19));
    if (v10 <= v57)
    {
      v25 = v43 * v25;
    }

    v26 = ((v10 * v17) - v17) + (((v50 + (v23.f32[1] + ((v49 * v21) + v23.f32[0]))) / v8) * v45.f32[0]);
    if (v10 <= v57)
    {
      v26 = v43 * v26;
    }

    if (v11 <= v57)
    {
      v27 = v44 * v24;
    }

    else
    {
      v27 = v24;
    }

    v28 = v51 * (v9 * v27);
    v29 = (v8 * v25) * v48.f32[0];
    v22.f32[0] = (v8 * v26) * v48.f32[0];
    v30 = vmul_f32(v54, v22);
    v31 = v56 + (v30.f32[1] + ((v47 * v28) + (v29 * v54.f32[0])));
    v32 = vmul_f32(v45, v22);
    v33 = v55 + (v32.f32[1] + ((v53 * v28) + (v29 * v45.f32[0])));
    v34 = ((v11 * v16) - v16) + (v47 * ((v52 + (v46 + ((v51 * v21) + (v7.f32[0] * *(this + 107))))) / v9));
    if (v11 <= v57)
    {
      v34 = v44 * v34;
    }

    v4 = HGRectMake4i(vcvtmd_s64_f64(v31 + -1.0 + 0.0000001), vcvtmd_s64_f64(v33 + -1.0 + 0.0000001), vcvtpd_s64_f64((v56 + (v30.f32[1] + ((v47 * (v51 * (v9 * v34))) + v30.f32[0]))) + 1.0), vcvtpd_s64_f64((v55 + (v32.f32[1] + ((v53 * (v51 * (v9 * v34))) + v32.f32[0]))) + 1.0));
    v5 = HIDWORD(v4);
    if ((v4 - 0x7FFFFFFF) < 3 || (v35 - 0x7FFFFFFF) < 3 || v5 == 0x7FFFFFFF || SHIDWORD(v4) < -2147483646 || HIDWORD(v35) == 0x7FFFFFFF || SHIDWORD(v35) < -2147483646)
    {
      LODWORD(v4) = 0;
      LODWORD(v5) = 0;
    }
  }

  return v4 | (v5 << 32);
}

unint64_t HSlicedTile::GetROI(HSlicedTile *this, HGRenderer *a2, int a3, HGRect a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var3 = a4.var3;
    var1 = a4.var1;
    (*(*this + 104))(this, 5, &v52);
    v51 = v52;
    (*(*this + 104))(this, 6, &v52);
    v50 = v52;
    (*(*this + 104))(this, 7, &v52);
    v49 = v52;
    (*(*this + 104))(this, 8, &v52);
    v48 = v52;
    (*(*this + 104))(this, 12, &v52);
    v47 = v52;
    (*(*this + 104))(this, 10, &v52);
    v37 = *&v52;
    (*(*this + 104))(this, 9, &v52);
    v46 = v52;
    (*(*this + 104))(this, 0, &v52);
    v45 = v52;
    (*(*this + 104))(this, 1, &v52);
    v11 = *&v52;
    (*(*this + 104))(this, 2, &v52);
    v12 = *&v52;
    (*(*this + 104))(this, 3, &v52);
    v13 = *&v52;
    (*(*this + 104))(this, 4, &v52);
    v14 = *&v52;
    (*(*this + 104))(this, 13, &v52);
    if (v11 <= (0.5 - *&v52))
    {
      v15 = v11;
    }

    else
    {
      v15 = 0.5 - *&v52;
    }

    if (v13 <= (0.5 - *&v52))
    {
      v16 = v13;
    }

    else
    {
      v16 = 0.5 - *&v52;
    }

    if (v12 >= (*&v52 + -0.5))
    {
      v17 = v12;
    }

    else
    {
      v17 = *&v52 + -0.5;
    }

    v18 = var0;
    v19 = var1;
    if (v14 >= (*&v52 + -0.5))
    {
      v20 = v14;
    }

    else
    {
      v20 = *&v52 + -0.5;
    }

    v21 = var2;
    v22 = var3;
    v38 = v16;
    v39 = v15;
    v23 = v17;
    if (v18 <= var2)
    {
      v26 = -2147500000.0;
      v27 = 2147500000.0;
      v24 = 2147500000.0;
      v25 = -2147500000.0;
      do
      {
        *&v52 = v18;
        *(&v52 + 1) = var1;
        *(&v52 + 1) = 0x3F80000000000000;
        v42 = v18;
        v43 = v22;
        v44 = 0x3F80000000000000;
        calculateROI(v37 != 0.0, &v45, &v51, &v50, &v49, &v48, &v46, &v47, &v40, v15, v17, v16, v20, &v42);
        if (v40 < v24)
        {
          v24 = v40;
        }

        if (v41 < v27)
        {
          v27 = v41;
        }

        if (v40 > v25)
        {
          v25 = v40;
        }

        if (v41 > v26)
        {
          v26 = v41;
        }

        calculateROI(v37 != 0.0, &v45, &v51, &v50, &v49, &v48, &v46, &v47, &v40, v39, v23, v38, v20, &v52);
        v16 = v38;
        v15 = v39;
        if (v40 < v24)
        {
          v24 = v40;
        }

        if (v41 < v27)
        {
          v27 = v41;
        }

        if (v40 > v25)
        {
          v25 = v40;
        }

        v17 = v23;
        if (v41 > v26)
        {
          v26 = v41;
        }

        v22 = var3;
        v21 = var2;
        v18 = v18 + 1.0;
      }

      while (v18 <= var2);
    }

    else
    {
      v24 = 2147500000.0;
      v25 = -2147500000.0;
      v26 = -2147500000.0;
      v27 = 2147500000.0;
    }

    if (v19 <= v22)
    {
      do
      {
        *&v52 = var0;
        *(&v52 + 1) = v19;
        *(&v52 + 1) = 0x3F80000000000000;
        v42 = v21;
        v43 = v19;
        v44 = 0x3F80000000000000;
        calculateROI(v37 != 0.0, &v45, &v51, &v50, &v49, &v48, &v46, &v47, &v40, v15, v17, v16, v20, &v52);
        if (v40 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = v40;
        }

        if (v41 < v27)
        {
          v27 = v41;
        }

        if (v40 > v25)
        {
          v25 = v40;
        }

        if (v41 > v26)
        {
          v26 = v41;
        }

        calculateROI(v37 != 0.0, &v45, &v51, &v50, &v49, &v48, &v46, &v47, &v40, v39, v23, v38, v20, &v42);
        v16 = v38;
        v15 = v39;
        if (v40 >= v28)
        {
          v24 = v28;
        }

        else
        {
          v24 = v40;
        }

        if (v41 < v27)
        {
          v27 = v41;
        }

        if (v40 > v25)
        {
          v25 = v40;
        }

        v17 = v23;
        if (v41 > v26)
        {
          v26 = v41;
        }

        v19 = v19 + 1.0;
        v21 = var2;
      }

      while (v19 <= var3);
    }

    v4 = HGRectMake4i(vcvtms_s32_f32(v24 + 0.00001), vcvtms_s32_f32(v27 + 0.00001), vcvtps_s32_f32(v25), vcvtps_s32_f32(v26));
    v5 = HIDWORD(v4);
    if ((v4 - 0x7FFFFFFF) < 3 || (v29 - 0x7FFFFFFF) < 3 || v5 == 0x7FFFFFFF || SHIDWORD(v4) < -2147483646 || HIDWORD(v29) == 0x7FFFFFFF || SHIDWORD(v29) < -2147483646)
    {
      LODWORD(v4) = 0;
      LODWORD(v5) = 0;
    }
  }

  return v4 | (v5 << 32);
}

double calculateROI@<D0>(char a1@<W0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X3>, float *a5@<X4>, float *a6@<X5>, float *a7@<X6>, float *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float *a14)
{
  v14 = a14[1];
  v15 = a14[2];
  v16 = a14[3];
  v17 = (((*a14 * *a3) + (v14 * a3[1])) + (v15 * a3[2])) + (v16 * a3[3]);
  v18 = a4[1];
  v19 = (((*a14 * *a4) + (v14 * v18)) + (v15 * a4[2])) + (v16 * a4[3]);
  v20 = a7[1];
  v21 = ((v17 / *a7) * *a5) / *a8;
  v22 = v19 / v20;
  v23 = a6[1];
  v24 = (v22 * v23) / a8[1];
  v26 = *a2;
  v25 = a2[1];
  v27 = *a2 * a10;
  v28 = v25 * a12;
  if (v21 >= v27)
  {
    v30 = v21 - (v27 - a10);
  }

  else
  {
    v29 = v26 * a11;
    if (v21 <= (v26 * a11))
    {
      v30 = v21 + (a11 - v29);
    }

    else
    {
      v30 = 0.0;
      if (v21 < v27)
      {
        if (v21 >= v29)
        {
          v31 = v21;
        }

        else
        {
          v31 = v26 * a11;
        }

        if (v31 > v27)
        {
          v31 = *a2 * a10;
        }

        v32 = (v26 * ((v31 - v29) / (v27 - v29))) + 0.0;
        v33 = v32 - floorf(v32 + 0.00001);
        v34 = v26 * 0.5;
        if ((a1 & 1) != 0 || (v34 - floorf(v34 + 0.00001)) != 0.0)
        {
          v33 = ((v33 - v34) + -0.5) - floorf(((v33 - v34) + -0.5) + 0.00001);
        }

        if (v33 < 0.0)
        {
          v33 = 0.0;
        }

        if (v33 > 1.0)
        {
          v33 = 1.0;
        }

        v30 = ((a10 - a11) * v33) + a11;
      }
    }
  }

  if (v24 >= v28)
  {
    v36 = v24 - (v28 - a12);
  }

  else
  {
    v35 = v25 * a13;
    if (v24 <= (v25 * a13))
    {
      v36 = v24 + (a13 - v35);
    }

    else
    {
      v36 = 0.0;
      if (v24 < v28)
      {
        if (v24 >= v35)
        {
          v37 = v24;
        }

        else
        {
          v37 = v25 * a13;
        }

        if (v37 > v28)
        {
          v37 = v25 * a12;
        }

        v38 = ((v25 * ((v37 - v35) / (v28 - v35))) + 0.0) - floorf(((v25 * ((v37 - v35) / (v28 - v35))) + 0.0) + 0.00001);
        v39 = v25 * 0.5;
        if ((a1 & 1) != 0 || (v39 - floorf(v39 + 0.00001)) != 0.0)
        {
          v38 = ((v38 - v39) + -0.5) - floorf(((v38 - v39) + -0.5) + 0.00001);
        }

        if (v38 < 0.0)
        {
          v38 = 0.0;
        }

        if (v38 > 1.0)
        {
          v38 = 1.0;
        }

        v36 = ((a12 - a13) * v38) + a13;
      }
    }
  }

  v40 = *a3 * (*a7 * v30);
  v41 = v18 * (v20 * v36);
  v42 = a5[3] + ((a5[2] * 0.0) + ((*a5 * v40) + (a5[1] * v41)));
  v43 = (v23 * v41) + (v40 * *a6);
  v44 = a6[3];
  v45 = a6[2] * 0.0;
  *a9 = v42;
  *(a9 + 4) = v44 + (v43 + v45);
  result = 0.0078125;
  *(a9 + 8) = 0x3F80000000000000;
  return result;
}

void HSlicedTile::~HSlicedTile(HGNode *this)
{
  HgcSlicedTile::~HgcSlicedTile(this);

  HGObject::operator delete(v1);
}

uint64_t HEquirectToSinusoidal::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HEquirectToSinusoidal::GetROI(HEquirectToSinusoidal *this, HGRenderer *a2, int a3, HGRect a4)
{
  v81 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return 0;
  }

  var2 = a4.var2;
  var0 = a4.var0;
  var3 = a4.var3;
  var1 = a4.var1;
  (*(*this + 104))(this, 0, v80);
  v10 = v80[1];
  v11 = v80[0];
  v79 = *v80;
  (*(*this + 104))(this, 1, v80);
  v71 = v80[0];
  v78 = *v80;
  (*(*this + 104))(this, 2, v80);
  v77 = *v80;
  (*(*this + 104))(this, 3, v80);
  v76 = *v80;
  (*(*this + 104))(this, 4, v80);
  v69 = v80[0];
  v70 = *&v80[1];
  v72 = v80[3];
  (*(*this + 104))(this, 5, v80);
  v12 = v80[0];
  v13 = *&v80[1];
  v14 = v80[3];
  v15 = var1;
  if (var1 <= var3)
  {
    v63 = v80[0];
    v65 = *&v80[1];
    v67 = v80[3];
    v64 = v10;
    v20 = -3.4028e38;
    v21 = 3.4028e38;
    v17 = 3.4028e38;
    v19 = -3.4028e38;
    do
    {
      v74 = var0;
      v75 = v15;
      processPoint(&v74, &v79, &v78, &v77, &v76, v80);
      v73[0] = var2;
      v73[1] = v15;
      processPoint(v73, &v79, &v78, &v77, &v76, &v74);
      v23 = v80[1];
      v22 = v80[0];
      if (v17 >= v80[0])
      {
        v24 = v80[0];
      }

      else
      {
        v24 = v17;
      }

      if (v21 >= v80[1])
      {
        v25 = v80[1];
      }

      else
      {
        v25 = v21;
      }

      if (v19 > v80[0])
      {
        v22 = v19;
      }

      if (v20 > v80[1])
      {
        v23 = v20;
      }

      if (v24 >= v74)
      {
        v17 = v74;
      }

      else
      {
        v17 = v24;
      }

      if (v25 >= v75)
      {
        v21 = v75;
      }

      else
      {
        v21 = v25;
      }

      if (v22 <= v74)
      {
        v19 = v74;
      }

      else
      {
        v19 = v22;
      }

      if (v23 <= v75)
      {
        v20 = v75;
      }

      else
      {
        v20 = v23;
      }

      v15 = v15 + 1.0;
    }

    while (v15 <= var3);
    v18 = v20;
    v16 = v21;
    v10 = v64;
    v14 = v67;
    v13 = v65;
    v12 = v63;
  }

  else
  {
    v16 = 3.40282347e38;
    v17 = 3.4028e38;
    v18 = -3.40282347e38;
    v19 = -3.4028e38;
  }

  v26 = floor(v17 / 6.28318531);
  v27 = floor(v19 / 6.28318531);
  v28 = 0.0;
  v29 = 6.2832;
  if (v27 == v26)
  {
    v30 = v17;
    v68 = v14;
    v66 = v13;
    v31 = v12;
    v32 = v10;
    v33 = v18;
    v34 = fmodf(v30, 6.2832);
    v28 = v34 >= 0.0 ? v34 : v34 + 6.2832;
    v29 = fmodf(v19, 6.2832);
    v18 = v33;
    v10 = v32;
    v12 = v31;
    v13 = v66;
    v14 = v68;
    if (v29 < 0.0)
    {
      v29 = v29 + 6.2832;
    }
  }

  v35 = v11 * 0.5;
  v36 = (v28 / v71) - v35;
  v37 = (v29 / v71) - v35;
  v38 = v10 * 0.5;
  *&v39 = v18 - v38;
  *&v38 = v16 - v38;
  v40 = v69 * v36;
  v41 = *&v38 * v70.f32[0];
  v42 = (*&v38 * v70.f32[0]) + (v69 * v36);
  v43 = v12 * v36;
  *&v38 = *&v38 * v13.f32[0];
  v44 = v69 * v37;
  v45 = v41 + (v69 * v37);
  v46 = v12 * v37;
  v47 = *&v39;
  v48 = vmul_f32(v70, v39);
  v49 = v72 + (v48.f32[1] + v42);
  v50 = v72 + (v48.f32[1] + v45);
  v51 = v72 + (v48.f32[1] + (v48.f32[0] + v40));
  v52 = vmul_f32(v13, LODWORD(v47));
  v53 = v14 + (v52.f32[1] + (*&v38 + v43));
  v54 = v14 + (v52.f32[1] + (*&v38 + v46));
  v55 = v14 + (v52.f32[1] + (v52.f32[0] + v43));
  v56 = v72 + (v48.f32[1] + (v48.f32[0] + v44));
  v57 = v14 + (v52.f32[1] + (v52.f32[0] + v46));
  if (v53 >= v54)
  {
    v58 = v54;
  }

  else
  {
    v58 = v53;
  }

  if (v53 > v54)
  {
    v54 = v53;
  }

  if (v49 >= v50)
  {
    v59 = v50;
  }

  else
  {
    v59 = v49;
  }

  if (v49 > v50)
  {
    v50 = v49;
  }

  if (v59 >= v51)
  {
    v60 = v51;
  }

  else
  {
    v60 = v59;
  }

  if (v58 >= v55)
  {
    v61 = v55;
  }

  else
  {
    v61 = v58;
  }

  if (v60 >= v56)
  {
    v60 = v56;
  }

  if (v61 >= v57)
  {
    v61 = v57;
  }

  if (v50 > v51)
  {
    v51 = v50;
  }

  if (v54 > v55)
  {
    v55 = v54;
  }

  if (v51 <= v56)
  {
    v62 = v56;
  }

  else
  {
    v62 = v51;
  }

  if (v55 > v57)
  {
    v57 = v55;
  }

  return HGRectMake4i((floorf(v60) + -1.0), (floorf(v61) + -1.0), (ceilf(v62) + 1.0), (ceilf(v57) + 1.0));
}

float processPoint@<S0>(uint64_t a1@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X3>, uint64_t a5@<X4>, float *a6@<X8>)
{
  v7 = vmul_f32(*(a5 + 4), *(a1 + 4));
  v8 = (a4[3] + (((*a1 * *a4) + (*(a1 + 4) * a4[1])) + (a4[2] * 0.0))) + (*a2 * 0.5);
  v9 = (*(a5 + 12) + (((*a1 * *a5) + v7.f32[0]) + v7.f32[1])) + (a2[1] * 0.5);
  a6[1] = v9;
  v10 = (v9 * a3[1]) + -1.57079633;
  v11 = (v8 * *a3) + -3.14159265;
  v12 = cosf(v10);
  if (v12 == 0.0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 / v12;
  }

  result = v13 + 3.14159265;
  *a6 = result;
  return result;
}

void HEquirectToSinusoidal::~HEquirectToSinusoidal(HGNode *this)
{
  HgcEquirectToSinusoidal::~HgcEquirectToSinusoidal(this);

  HGObject::operator delete(v1);
}

uint64_t HBadTVNoise::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 1)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t HBadTVNoise::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v25 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 1)
  {
    if (a3)
    {
      v14 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      ROI = HgcBadTVNoise::GetROI(this, a2, 0, a4);
      v12 = ROI;
      v14 = v16;
      v13 = HIDWORD(ROI);
    }
  }

  else
  {
    (*(*this + 104))(this, 10, v24);
    v7 = *v24;
    (*(*this + 104))(this, 8, v24);
    v8 = *v24;
    (*(*this + 104))(this, 13, v24);
    v9 = *v24;
    (*(*this + 104))(this, 0, v23);
    v24[0] = vcvtq_f64_f32(*&v23[0]);
    v24[1] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 1, v23);
    v24[2] = vcvtq_f64_f32(*&v23[0]);
    v24[3] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 2, v23);
    v24[4] = vcvtq_f64_f32(*&v23[0]);
    v24[5] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 3, v23);
    v24[6] = vcvtq_f64_f32(*&v23[0]);
    v24[7] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 4, &v19);
    v23[0] = vcvtq_f64_f32(*&v19);
    v23[1] = vcvtq_f64_f32(*&v20);
    (*(*this + 104))(this, 5, &v19);
    v23[2] = vcvtq_f64_f32(*&v19);
    v23[3] = vcvtq_f64_f32(*&v20);
    (*(*this + 104))(this, 6, &v19);
    v23[4] = vcvtq_f64_f32(*&v19);
    v23[5] = vcvtq_f64_f32(*&v20);
    (*(*this + 104))(this, 7, &v19);
    v23[6] = vcvtq_f64_f32(*&v19);
    v23[7] = vcvtq_f64_f32(*&v20);
    v19 = v5;
    v20 = SHIDWORD(v5);
    v21 = (v4 - v5);
    v22 = (HIDWORD(v4) - HIDWORD(v5));
    PCMatrix44Tmpl<double>::transformRect<double>(v23, &v19, &v19);
    v10 = v19 + v21 + v7 + v9;
    v11 = v20 + v22 + v8 + 1.9;
    v19 = v19 - v7 - v9 + -1.0;
    v20 = v20 + v8 + -1.0;
    v21 = v10 - v19;
    v22 = v11 - v20;
    PCMatrix44Tmpl<double>::transformRect<double>(v24, &v19, &v19);
    v12 = v19;
    v13 = v20;
    v14 = (v19 + v21) | ((v20 + v22) << 32);
  }

  v17 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v12 | (v13 << 32), v14, v17);
}

void HBadTVNoise::~HBadTVNoise(HGNode *this)
{
  HgcBadTVNoise::~HgcBadTVNoise(this);

  HGObject::operator delete(v1);
}

_anonymous_namespace_::_Private *anonymous namespace::_Private::_Private(_anonymous_namespace_::_Private *this)
{
  return this;
}

void sub_25F9BC3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_2871D0F28;
  *(v10 + 32) = &unk_2871D0F68;
  a10 = (v10 + 56);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<cc::point_t<double,false,false>>::__emplace_back_slow_path<cc::point_t<double,false,false>>(a1, a2);
  }

  else
  {
    *v3 = &unk_2871D0EF8;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_25F9BDA08(_Unwind_Exception *a1)
{
  *(v3 - 136) = v2;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100]((v3 - 136));
  *(v3 - 136) = v1;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100]((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t cc::curve::aspline::hue_t<double>::~hue_t(uint64_t a1)
{
  *a1 = &unk_2871D0F28;
  *(a1 + 32) = &unk_2871D0F68;
  v3 = (a1 + 56);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_2871D0F28;
  *(a1 + 32) = &unk_2871D0F68;
  v3 = (a1 + 56);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](a1, 0x10A1C400ED7C394);
}

void *anonymous namespace::NewCurve@<X0>(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_2871D0F28;
  a1[4] = &unk_2871D0F68;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[6] = &unk_2871D1050;
  a1[10] = &unk_2871D1078;
  a1[11] = cc::curve::aspline::bezier_t<double,true>::evalPeriodic;
  a1[12] = 0;
  result = std::vector<cc::point_t<double,false,false>>::resize(a1 + 7, 4uLL);
  v4 = a1[1];
  if (v4 == a1[2])
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = a1[7];
  v6[1] = 0;
  v6[2] = v5;
  v6[4] = 0x3FD5566CF41F212DLL;
  v6[5] = v5;
  v6[7] = 0x3FE554C985F06F6ALL;
  v6[8] = v5;
  v6[10] = 0x3FF0000000000000;
  v6[11] = v5;
  return result;
}

void sub_25F9BDCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  *v10 = v11;
  v10[4] = v12;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

char *std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a1[1];
    v8 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3)) >= a5)
    {
      v14 = v7 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v7 - a2) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        std::vector<cc::point_t<double,false,false>>::__move_range(a1, a2, v7, a2 + 24 * a5);
        v21 = a3 + 8 * v20;
        v22 = 8;
        do
        {
          *&v5[v22] = *(a3 + 8);
          a3 += 24;
          v22 += 24;
        }

        while (a3 != v21);
      }

      else
      {
        v15 = v14 + a3;
        v16 = a1[1];
        if (v14 + a3 != a4)
        {
          v16 = a1[1];
          v17 = v14 + a3;
          v18 = v16;
          do
          {
            *v18 = &unk_2871D0EF8;
            *(v18 + 8) = *(v17 + 8);
            v17 += 24;
            v18 += 24;
            v16 += 24;
          }

          while (v17 != a4);
        }

        a1[1] = v16;
        if (v14 >= 1)
        {
          std::vector<cc::point_t<double,false,false>>::__move_range(a1, a2, v7, a2 + 24 * a5);
          v19 = 8;
          do
          {
            *&v5[v19] = *(a3 + 8);
            a3 += 24;
            v19 += 24;
          }

          while (a3 != v15);
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 - 0x5555555555555555 * ((v7 - *a1) >> 3);
      if (v10 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v11 = a2 - v9;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
      if (2 * v12 > v10)
      {
        v10 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v10;
      }

      v28[4] = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>>(a1, v13);
      }

      v23 = 8 * (v11 >> 3);
      v28[0] = 0;
      v28[1] = v23;
      v28[3] = 0;
      v24 = (a3 + 8);
      v25 = v23;
      do
      {
        *v25 = &unk_2871D0EF8;
        v26 = *v24;
        v24 = (v24 + 24);
        *(v25 + 8) = v26;
        v25 += 24;
        v23 += 24;
      }

      while (v25 != 8 * (v11 >> 3) + 24 * a5);
      v28[2] = 8 * (v11 >> 3) + 24 * a5;
      v5 = std::vector<cc::point_t<double,false,false>>::__swap_out_circular_buffer(a1, v28, v5);
      std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(v28);
    }
  }

  return v5;
}

void sub_25F9BDF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<cc::point_t<double,false,false>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  if (v6 >= a3)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = v7;
    do
    {
      *v8 = &unk_2871D0EF8;
      result = *(v6 + 8);
      *(v8 + 8) = result;
      v6 += 24;
      v8 += 24;
      v7 += 24;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v8;
  if (v4 != a4)
  {
    v10 = (v4 - 16);
    do
    {
      result = *(a2 - 16 + v5);
      *v10 = result;
      v10 = (v10 - 24);
      v5 -= 24;
    }

    while (v5);
  }

  return result;
}

uint64_t std::vector<cc::point_t<double,false,false>>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>,cc::point_t<double,false,false>*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>,cc::point_t<double,false,false>*>(a1, v7, a3, v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>,cc::point_t<double,false,false>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4;
    v7 = a2;
    do
    {
      *a4 = &unk_2871D0EF8;
      *(a4 + 8) = *(v7 + 1);
      v7 += 3;
      a4 += 24;
      v6 += 24;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v8 = a2;
      v9 = a2;
      do
      {
        v10 = *v9;
        v9 += 3;
        (*v10)(v5);
        v8 += 3;
        v5 = v9;
      }

      while (v9 != a3);
    }
  }
}

uint64_t std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<cc::point_t<double,false,false>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<cc::point_t<double,false,false>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 24;
      v9 = (v3 - 24);
      v10 = (v3 - 24);
      do
      {
        v11 = *v10;
        v10 -= 3;
        result = (*v11)(v9);
        v8 -= 24;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t std::vector<cc::point_t<double,false,false>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      v11 = *(result + 8);
      do
      {
        v4[1] = 0;
        v4[2] = 0;
        *v4 = &unk_2871D0EF8;
        v4 += 3;
        v11 += 24;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v22 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>>(result, v9);
    }

    v12 = 24 * v6;
    v19 = 0;
    v20 = 24 * v6;
    *(&v21 + 1) = 0;
    v13 = 24 * v6;
    v14 = 24 * v6;
    do
    {
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = &unk_2871D0EF8;
      v14 += 24;
      v13 += 24;
    }

    while (v14 != 24 * v6 + 24 * a2);
    *&v21 = v12 + 24 * a2;
    v15 = *(result + 8);
    v16 = v12 + *result - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>,cc::point_t<double,false,false>*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    *(v3 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(&v19);
  }

  return result;
}

void sub_25F9BE480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t cc::curve::aspline::hue_t<double>::insertPointIsolation(unint64_t result, uint64_t *a2, int8x16_t a3, int8x16_t a4, double a5)
{
  v6 = *a4.i64;
  v8 = result;
  v9 = 1.0;
  if (*a3.i64 <= 1.0)
  {
    v9 = *a3.i64;
  }

  if (*a3.i64 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v104 = *&v10;
  v11 = *(result + 8);
  v12 = *(result + 16);
  v13 = (result + 8);
  if (v11 == v12)
  {
LABEL_19:
    v21 = (*(*result + 24))(result, &v104) - *(result + 40);
    v105 = &unk_2871D0EF8;
    *&v106.f64[0] = v104;
    v106.f64[1] = v21;
    result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v105);
    a3.i64[0] = v104;
    v11 = *(v8 + 8);
    v12 = *(v8 + 16);
  }

  else
  {
    v14 = v10 - a5;
    v15 = v10 + a5;
    v16 = v10 - v10;
    if (v10 - v10 < 0.0)
    {
      v16 = -(v10 - v10);
    }

    v17 = *(result + 8);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 > v14 && v18 < v15)
      {
        break;
      }

      if (v18 >= 0.0)
      {
        v20 = v18 - v10;
        if (v20 < 0.0)
        {
          v20 = -v20;
        }

        if (v20 <= v16)
        {
          break;
        }
      }

      v17 += 24;
      if (v17 == v12)
      {
        goto LABEL_19;
      }
    }

    *a3.i64 = v10;
  }

  *a3.i64 = *a3.i64 - v6;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v23 = vbslq_s8(vnegq_f64(v22), a4, a3);
  if (*v23.i64 < 0.0)
  {
    *v23.i64 = *v23.i64 + 1.0;
  }

  v104 = v23.i64[0];
  if (v11 == v12)
  {
LABEL_41:
    v31 = (*(*v8 + 24))(v8, &v104) - *(v8 + 40);
    v105 = &unk_2871D0EF8;
    *&v106.f64[0] = v104;
    v106.f64[1] = v31;
    result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v105);
    v11 = *(v8 + 8);
    v12 = *(v8 + 16);
  }

  else
  {
    v24 = v10 + 1.0;
    if (*v23.i64 <= v10)
    {
      v24 = v10;
    }

    v25 = *v23.i64 - v24;
    if (*v23.i64 - v24 < 0.0)
    {
      v25 = -(*v23.i64 - v24);
    }

    v26 = v11;
    while (1)
    {
      v27 = *(v26 + 8);
      if (v27 > *v23.i64 - a5 && v27 < *v23.i64 + a5)
      {
        break;
      }

      if (v27 >= 0.0)
      {
        v29 = v27 - v24;
        if (v27 - v24 < 0.0)
        {
          v29 = -(v27 - v24);
        }

        if (v29 <= v25)
        {
          v30 = v27 - *v23.i64;
          if (v30 < 0.0)
          {
            v30 = -v30;
          }

          if (v30 <= v25)
          {
            break;
          }
        }
      }

      v26 += 24;
      if (v26 == v12)
      {
        goto LABEL_41;
      }
    }
  }

  *v23.i64 = v10 + v6;
  *a4.i64 = v10 + v6 - trunc(v10 + v6);
  v32.f64[0] = NAN;
  v32.f64[1] = NAN;
  v23.i64[0] = vbslq_s8(vnegq_f64(v32), a4, v23).i64[0];
  if (*v23.i64 < 0.0)
  {
    *v23.i64 = *v23.i64 + 1.0;
  }

  v104 = v23.i64[0];
  if (v11 == v12)
  {
LABEL_61:
    v39 = (*(*v8 + 24))(v8, &v104) - *(v8 + 40);
    v105 = &unk_2871D0EF8;
    *&v106.f64[0] = v104;
    v106.f64[1] = v39;
    result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v105);
  }

  else
  {
    v33 = v10 + -1.0;
    if (*v23.i64 >= v10)
    {
      v33 = v10;
    }

    v34 = *v23.i64 - v33;
    if (*v23.i64 - v33 < 0.0)
    {
      v34 = -(*v23.i64 - v33);
    }

    while (1)
    {
      v35 = *(v11 + 8);
      if (v35 > *v23.i64 - a5 && v35 < *v23.i64 + a5)
      {
        break;
      }

      if (v35 >= 0.0)
      {
        v37 = v35 - v33;
        if (v35 - v33 < 0.0)
        {
          v37 = -(v35 - v33);
        }

        if (v37 <= v34)
        {
          v38 = v35 - *v23.i64;
          if (v38 < 0.0)
          {
            v38 = -v38;
          }

          if (v38 <= v34)
          {
            break;
          }
        }
      }

      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_61;
      }
    }
  }

  for (i = *a2; i != a2[1]; i += 24)
  {
    v41 = *(v8 + 8);
    v42 = *(v8 + 16);
    if (v41 == v42)
    {
LABEL_68:
      result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](v13, i);
    }

    else
    {
      v43 = *(v8 + 8);
      while (*(v43 + 8) < *(i + 8))
      {
        v43 += 24;
        v41 += 24;
        if (v43 == v42)
        {
          goto LABEL_68;
        }
      }

      result = std::vector<cc::point_t<double,false,false>>::insert(v13, v41, i);
    }
  }

  v44 = *(v8 + 8);
  v45 = *(v8 + 16);
  v46 = (v45 - v44);
  v47 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
  if (v47 <= 1)
  {
    result = std::vector<cc::point_t<double,false,false>>::resize((v8 + 56), 4uLL);
    v48 = *(v8 + 8);
    if (v48 == *(v8 + 16))
    {
      v49 = 0;
    }

    else
    {
      v49 = *(v48 + 16);
    }

    v103 = *(v8 + 56);
    v103[1] = 0;
    v103[2] = v49;
    v103[4] = 0x3FD5566CF41F212DLL;
    v103[5] = v49;
    v103[7] = 0x3FE554C985F06F6ALL;
    v103[8] = v49;
    v103[10] = 0x3FF0000000000000;
    v103[11] = v49;
    return result;
  }

  if (v47 > 0x5555555555555554)
  {
    return result;
  }

  v87 = v45 == v44;
  v50 = -24;
  if (v87)
  {
    v50 = 0;
  }

  v51 = &v45[v50];
  v106 = 0uLL;
  v105 = &unk_2871D0EF8;
  result = std::vector<cc::point_t<double,false,false>>::resize((v8 + 56), 3 * v47 + 1);
  v52 = *(v8 + 8);
  if (v52 != v45)
  {
    v53 = 0;
    v54 = 0;
    v55 = *(v8 + 56) + 32;
    while (1)
    {
      v56 = &v52[v54];
      if (&v52[v54] == v51)
      {
        v58.f64[0] = *(v52 + 1) + 1.0;
        v58.f64[1] = *(v52 + 2);
        v57 = v52;
      }

      else
      {
        v57 = &v56[1].f64[1];
        v58 = v56[2];
      }

      v59 = &v52[v54];
      v60 = *&v52[v54 + 8];
      v61 = vcgtq_f64(v60, v58);
      v62 = vsubq_f64(v58, v60);
      v63 = vbslq_s8(v61, vnegq_f64(v62), v62);
      v106 = v63;
      if (v63.f64[0] < 0.0)
      {
        v63.f64[0] = -v63.f64[0];
      }

      *(v55 - 24) = *(v59 + 8);
      v64 = (v59 - 24);
      if (!v54)
      {
        v64 = v51;
      }

      v65 = v64->f64[1];
      v66 = v64[1].f64[0];
      if (!v54)
      {
        v65 = v65 + -1.0;
      }

      v67 = v58.f64[0] - v65;
      v68 = -v67;
      if (v67 >= 0.0)
      {
        v68 = v67;
      }

      v69 = (v58.f64[1] - v66) / v67;
      if (v68 < 0.00000011920929)
      {
        v69 = 0.0;
      }

      v106.f64[1] = v69;
      v106.f64[0] = 1.0;
      v70 = *(v59 + 2);
      v71 = v66 >= v70;
      v72 = v58.f64[1] < v70;
      if (v72 != v71)
      {
        v106.f64[1] = 0.0;
        v69 = 0.0;
      }

      v63.f64[0] = v63.f64[0] * 0.3334;
      v73 = v72 ^ v71;
      v74 = v63.f64[0] * v69 + *(v59 + 2);
      *v55 = v63.f64[0] + *(v59 + 1);
      *(v55 + 8) = v74;
      result = v53-- != 0;
      if ((v73 & result) == 1)
      {
        *(v55 - 40) = v74;
      }

      if (v56 == v51)
      {
        break;
      }

      if (v46 != 48)
      {
        if (v56 != &v51[-2].f64[1])
        {
          v79 = 0;
          v80 = v57 + 24;
LABEL_107:
          v76 = *(v80 + 1);
          v77 = *(v80 + 2);
          if (!v79 && v56 != v51)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        }

        v78 = 0;
LABEL_106:
        v79 = v56 != v51;
        v80 = &v52[v78];
        goto LABEL_107;
      }

      v76 = *(v59 + 1);
      v77 = *(v59 + 2);
LABEL_109:
      v76 = v76 + 1.0;
LABEL_110:
      v81 = v76 - *(v59 + 1);
      v82 = v77 - *(v59 + 2);
      v83 = -v81;
      if (v81 >= 0.0)
      {
        v83 = v81;
      }

      v84 = v82 / v81;
      if (v83 < 0.00000011920929)
      {
        v84 = 0.0;
      }

      v106.f64[1] = v84;
      v106.f64[0] = 1.0;
      v63.f64[1] = v63.f64[0] * v84;
      *(v55 + 24) = vsubq_f64(v58, v63);
      v54 += 24;
      v55 += 72;
      if (&v52[v54] == v45)
      {
        goto LABEL_115;
      }
    }

    v78 = 24;
    goto LABEL_106;
  }

LABEL_115:
  v85 = *(v8 + 64);
  v86 = *(v52 + 2);
  *(v85 - 16) = *(v52 + 1) + 1.0;
  *(v85 - 8) = v86;
  v87 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 16) - v52) >> 3) < 3 || v52 == v45;
  if (!v87)
  {
    v88 = 0;
    v89 = (*(v8 + 56) + 64);
    v90 = v52 + 24;
    do
    {
      v91 = &v52[v88];
      if (&v52[v88] == v51)
      {
        v92.f64[0] = *(v52 + 1) + 1.0;
        v93 = v52;
      }

      else
      {
        v92.f64[0] = *(v90 + 1);
        v93 = v90;
      }

      v94 = *(v91 + 8);
      v92.f64[1] = v93[2];
      v95 = vcgtq_f64(v94, v92);
      v96 = vsubq_f64(v92, v94);
      v97 = vbslq_s8(v95, vnegq_f64(v96), v96);
      v106 = v97;
      v98 = 1.0;
      if (*&v97.i64[1] > 0.00000011920929)
      {
        v98 = 0.0;
        if (*v97.i64 > 0.00000011920929)
        {
          v99 = *&v97.i64[1] / *v97.i64 * -3.0 + 1.0;
          if (v99 >= 0.0)
          {
            v98 = 1.0;
            if (v99 <= 1.0)
            {
              v98 = v99;
            }
          }
        }
      }

      v100 = v98 * *(v89 - 6);
      v101 = 1.0 - v98;
      *(v89 - 3) = v100 + (1.0 - v98) * *(v89 - 3);
      v102 = v98 * v89[3];
      *v89 = v102 + v101 * *v89;
      if (v91 != v51)
      {
        v89[6] = v102 + v101 * v89[6];
      }

      if (v91 != v52)
      {
        *(v89 - 9) = v100 + v101 * *(v89 - 9);
      }

      v90 += 24;
      v89 += 9;
      v88 += 24;
    }

    while (v91 + 24 != v45);
  }

  return result;
}

double cc::curve::aspline::hue_t<double>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  v3 = a1 + (v2 >> 1);
  if (v2)
  {
    v1 = *(*(v3 + 48) + v1);
  }

  return v1(v3 + 48) + *(a1 + 40);
}

BOOL cc::curve::aspline::hue_t<double>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v11 = a1 + 80;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*v11 + 16))(v11, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t cc::curve::aspline::hue_t<double>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*(a1 + 80) + 24);
  v10 = a1 + 80;

  return v9(v10, v8, 1024, a3, a4, a5, a6);
}

void non-virtual thunk tocc::curve::aspline::hue_t<double>::~hue_t(uint64_t a1)
{
  *(a1 - 32) = &unk_2871D0F28;
  *a1 = &unk_2871D0F68;
  v2 = (a1 + 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t non-virtual thunk tocc::curve::aspline::hue_t<double>::~hue_t(uint64_t a1)
{
  v2 = a1 - 32;
  *(a1 - 32) = &unk_2871D0F28;
  *a1 = &unk_2871D0F68;
  v4 = (a1 + 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return MEMORY[0x2666E9F00](v2, 0x10A1C400ED7C394);
}

double non-virtual thunk tocc::curve::aspline::hue_t<double>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = a1 + (v2 >> 1);
  if (v2)
  {
    v1 = *(*(v3 + 16) + v1);
  }

  return v1(v3 + 16) + *(a1 + 8);
}

BOOL non-virtual thunk tocc::curve::aspline::hue_t<double>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v11 = a1 + 48;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*v11 + 16))(v11, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t non-virtual thunk tocc::curve::aspline::hue_t<double>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*(a1 + 48) + 24);
  v10 = a1 + 48;

  return v9(v10, v8, 1024, a3, a4, a5, a6);
}

void std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL cc::curve::evaluator_1d_t<double,1024u>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*a1 + 16))(a1, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t cc::curve::evaluator_1d_t<double,1024u>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*a1 + 24);

  return v9(a1, v8, 1024, a3, a4, a5, a6);
}

double cc::curve::aspline::bezier_t<double,true>::evalPeriodic(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = 0.0;
  if (0xAAAAAAAAAAAAAAABLL * (v3 - v2) < 4)
  {
    return result;
  }

  v5 = *a2;
  v6 = 0x1FFFFFFFFFFFFFFDLL;
  if (v3 == v2)
  {
    v6 = 0;
  }

  v7 = v2[1];
  v8 = v3[v6 + 1];
  v9 = v8 - (v7 - v5);
  if (v7 <= v5)
  {
    v9 = *a2;
  }

  if (v8 >= v5)
  {
    result = v9;
  }

  else
  {
    result = v7 + v5 - v8;
  }

  if (result < v7)
  {
    v10 = v2[2];
    v11 = v2[4] - v7;
    if (v11 != 0.0)
    {
      v12 = v2[5] - v10;
LABEL_16:
      v13 = v12 / v11;
      return v10 + (result - v7) * v13;
    }

    goto LABEL_17;
  }

  v7 = *(v3 - 2);
  if (result > v7)
  {
    v10 = *(v3 - 1);
    v11 = v7 - *(v3 - 5);
    if (v11 != 0.0)
    {
      v12 = v10 - *(v3 - 4);
      goto LABEL_16;
    }

LABEL_17:
    v13 = 0.0;
    return v10 + (result - v7) * v13;
  }

  v14 = v3 - 3;
  if (v2 != v3 - 3)
  {
    for (i = v2 + 6; ; i += 9)
    {
      v16 = v2[1];
      if (result >= v16)
      {
        v17 = i[4];
        if (result <= v17)
        {
          break;
        }
      }

      v2 += 9;
      if (v2 == v14)
      {
        return result;
      }
    }

    v18 = *(i - 2);
    v19 = i[1] * 3.0;
    v20 = v17 + v18 * 3.0 - v16 - v19;
    v21 = v16 * 3.0 + v18 * -6.0 + v19;
    v22 = v18 * 3.0 - v16 * 3.0;
    v23 = 0.0;
    while (1)
    {
      v24 = v23 * (v23 * v23);
      v25 = v16 + v23 * v22 + v23 * v23 * v21 + v24 * v20;
      if (v25 >= result)
      {
        break;
      }

      v23 = v23 + 0.05;
      if (v23 >= 1.05)
      {
        return result;
      }
    }

    v26 = v23 + -0.05;
    v27 = v26 * (v26 * v26);
    v28 = v16 + (v23 + -0.05) * v22 + v26 * v26 * v21 + v27 * v20;
    v29 = v2[2];
    v30 = *(i - 1);
    v31 = i[2] * 3.0;
    v32 = i[5] + v30 * 3.0 - v29 - v31;
    v33 = v29 * 3.0 + v30 * -6.0 + v31;
    v34 = v30 * 3.0 - v29 * 3.0;
    v35 = v29 + (v23 + -0.05) * v34 + v26 * v26 * v33 + v27 * v32;
    v36 = v29 + v23 * v34 + v23 * v23 * v33 + v24 * v32;
    v37 = v25 - v28;
    if (v25 - v28 >= 0.0)
    {
      v38 = v25 - v28;
    }

    else
    {
      v38 = -(v25 - v28);
    }

    v39 = 0.0;
    if (v38 >= 0.00000011920929)
    {
      v39 = (result - v28) / v37;
    }

    return v36 * v39 + v35 * (1.0 - v39);
  }

  return result;
}

uint64_t cc::curve::aspline::bezier_t<double,true>::~bezier_t(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](a1, 0xA1C40D2948F72);
}

uint64_t cc::curve::aspline::bezier_t<double,true>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t non-virtual thunk tocc::curve::aspline::bezier_t<double,true>::~bezier_t(uint64_t a1)
{
  v1 = a1 - 32;
  v3 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](v1, 0xA1C40D2948F72);
}

uint64_t non-virtual thunk tocc::curve::aspline::bezier_t<double,true>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = (a1 + (v2 >> 1) - 32);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

unint64_t std::vector<cc::point_t<double,false,false>>::insert(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v21 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>>(a1, v15);
    }

    v17 = 0;
    v18 = 8 * (v12 >> 3);
    v19 = v18;
    v20 = 0;
    std::__split_buffer<cc::point_t<double,false,false>>::emplace_back<cc::point_t<double,false,false> const&>(&v17, a3);
    v4 = std::vector<cc::point_t<double,false,false>>::__swap_out_circular_buffer(a1, &v17, v4);
    std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(&v17);
  }

  else if (a2 == v6)
  {
    *v6 = &unk_2871D0EF8;
    *(v6 + 8) = *(a3 + 8);
    a1[1] = v6 + 24;
  }

  else
  {
    std::vector<cc::point_t<double,false,false>>::__move_range(a1, a2, v6, a2 + 24);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    *(v4 + 8) = *(a3 + v9 + 8);
  }

  return v4;
}

void sub_25F9BFD80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__split_buffer<cc::point_t<double,false,false>>::emplace_back<cc::point_t<double,false,false> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v7 = v2 - *a1;
      v6 = v7 == 0;
      v8 = 0x5555555555555556 * (v7 >> 3);
      if (v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>>(a1[4], v9);
    }

    v5 = v4 - 24 * ((0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1) >> 63)) >> 1);
    v3 = v5;
    if (v4 != v2)
    {
      v3 = v4 - 24 * ((0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1) >> 63)) >> 1);
      do
      {
        *(v3 + 8) = *(v4 + 8);
        v4 += 24;
        v3 += 24;
      }

      while (v4 != v2);
    }

    a1[1] = v5;
  }

  *v3 = &unk_2871D0EF8;
  result = *(a2 + 8);
  *(v3 + 8) = result;
  a1[2] = v3 + 24;
  return result;
}

uint64_t std::vector<cc::point_t<double,false,false>>::__emplace_back_slow_path<cc::point_t<double,false,false>>(uint64_t *a1, uint64_t a2)
{
  v3 = 0xAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 3) < 0x555555555555555)
  {
    v3 = v7;
  }

  v18 = a1;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>>(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v15 = 0;
  v16 = v9;
  *(&v17 + 1) = 0;
  *v9 = &unk_2871D0EF8;
  *(v9 + 8) = *(a2 + 8);
  *&v17 = v9 + 24;
  v10 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cc::point_t<double,false,false>>,cc::point_t<double,false,false>*>(a1, v4, v5, v9 - v6);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(&v15);
  return v14;
}

void sub_25F9C0050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cc::point_t<double,false,false>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

HgcConvolvePass8tapPoint *HConvolvePass8TapPoint::GetOutput(HConvolvePass8TapPoint *this, HGRenderer *a2)
{
  (*(*this + 136))(this, 0xFFFFFFFFLL, 32);

  return HgcConvolvePass8tapPoint::GetOutput(this, a2);
}

void HConvolvePass8TapPoint::~HConvolvePass8TapPoint(HGNode *this)
{
  HgcConvolvePass8tapPoint::~HgcConvolvePass8tapPoint(this);

  HGObject::operator delete(v1);
}

void sub_25F9C0628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_25F9C0B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void HDirectionalBlur::HDirectionalBlur(HDirectionalBlur *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2871D1370;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(this + 51) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v4);
  *(this + 52) = v4;
}

void sub_25F9C0CA0(_Unwind_Exception *a1)
{
  v3 = v2;
  HGObject::operator delete(v3);
  v5 = *(v1 + 408);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HDirectionalBlur::~HDirectionalBlur(HGNode *this)
{
  *this = &unk_2871D1370;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  HDirectionalBlur::~HDirectionalBlur(this);

  HGObject::operator delete(v1);
}

uint64_t HDirectionalBlur::init(HDirectionalBlur *this, float a2, float a3, float a4, float a5)
{
  v9 = __sincosf_stret(a3);
  v11[0] = a2 * (v9.__cosval * a4);
  v11[1] = a2 * (v9.__sinval * a5);
  return HDirectionalBlur::init(this, v11);
}

uint64_t HDirectionalBlur::init(uint64_t a1, double *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 408);
  if (v4)
  {
    (*(*v4 + 16))(*(a1 + 408));
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = atan(v5 / *a2);
  v8 = v7 + 6.28318531;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  if (v8 >= 3.14159265)
  {
    v9 = v8 + -3.14159265;
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = v10 <= 2.35619449 && v10 >= 0.785398163;
  if (v12)
  {
    v13 = 1.57079633 - v11;
  }

  else if (v11 <= 1.57079633)
  {
    v13 = v10;
  }

  else
  {
    v14 = v11 + -3.14159265;
    v13 = v14;
  }

  v15 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v15);
  (*(*v15 + 120))(v15, 0, v4);
  HGTransform::HGTransform(v31);
  v16 = -v13;
  v32 = 1.0;
  if (v12)
  {
    v17 = v34;
    v18 = tanf(v16);
    v19 = 0.0;
  }

  else
  {
    v17 = v33;
    v19 = tanf(v16);
    v18 = 0.0;
  }

  *v33 = v19;
  v33[1] = 0;
  v33[2] = 0;
  *v34 = v18;
  v34[1] = 0x3FF0000000000000;
  v35 = 0u;
  v36 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0x3FF0000000000000;
  v40 = 0x3FF0000000000000;
  v20 = HGTransform::LoadMatrixd(v31, &v32);
  (*(*v15 + 576))(v15, v31, v20);
  v21 = sin(3.14159265 - (v16 + 1.57079633));
  v22 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v22);
  (*(*v22 + 120))(v22, 0, v15);
  v23 = sqrt(v5 * v5 + v6 * v6);
  v24 = fabs(v21) * v23;
  v25 = 1.0;
  if (v12)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 1.0;
  }

  if (!v12)
  {
    v25 = 0.0;
  }

  HGaussianBlur::init(v22, v24, v26, v25, 0, 0, 0);
  *v17 = -*v17;
  v27 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v27);
  (*(*v27 + 120))(v27, 0, v22);
  HGTransform::HGTransform(v30);
  v28 = HGTransform::LoadMatrixd(v30, &v32);
  (*(*v27 + 576))(v27, v30, v28);
  (*(**(a1 + 416) + 120))(*(a1 + 416), 0, v27);
  HGTransform::~HGTransform(v30);
  (*(*v27 + 24))(v27);
  (*(*v22 + 24))(v22);
  HGTransform::~HGTransform(v31);
  result = (*(*v15 + 24))(v15);
  if (v4)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void sub_25F9C12D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HDirectionalBlur::GetOutput(HDirectionalBlur *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  return *(this + 52);
}

void sub_25F9C1718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v10 + 24))(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F9C2C8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HiOSTwirl::GetDOD(HiOSTwirl *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v19 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 0, v17);
  v6 = (v17[0] - (1.0 / v18));
  v7 = (v17[1] - (1.0 / v18));
  v8 = (1.0 / v18) + (1.0 / v18);
  *&v20.var0 = v5;
  *&v20.var2 = v4;
  v9 = CGRectFromHGRect(v20);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v8;
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  if (CGRectIntersectsRect(v21, v24))
  {
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v25.origin.x = v6;
    v25.origin.y = v7;
    v25.size.width = v8;
    v25.size.height = v8;
    v23 = CGRectUnion(v22, v25);
    return HGRectFromCGRect(v23);
  }

  return v5;
}

uint64_t HiOSTwirl::GetROI(HiOSTwirl *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  v34 = *MEMORY[0x277D85DE8];
  v6 = CGRectFromHGRect(a4);
  rect1.origin.y = v7;
  v9 = v8;
  v11 = v10;
  (*(*this + 104))(this, 0, &rect1.size);
  v12 = *(&rect1.size.height + 1);
  v13 = 1.0 / *&rect1.size.height;
  v31 = *&rect1.size.width;
  v14 = (*&rect1.size.width - (1.0 / *&rect1.size.height));
  v29 = *(&rect1.size.width + 1);
  v15 = (*(&rect1.size.width + 1) - (1.0 / *&rect1.size.height));
  v16 = (1.0 / *&rect1.size.height) + (1.0 / *&rect1.size.height);
  v39.origin.x = v6;
  v39.origin.y = rect1.origin.y;
  v39.size.width = v9;
  v39.size.height = v11;
  v49.origin.x = v14;
  v49.origin.y = v15;
  v49.size.width = v16;
  v49.size.height = v16;
  v40 = CGRectIntersection(v39, v49);
  if (!CGRectIsEmpty(v40))
  {
    v41.origin.x = v6;
    v41.origin.y = rect1.origin.y;
    v41.size.width = v9;
    v41.size.height = v11;
    v50.origin.x = v14;
    v50.origin.y = v15;
    v50.size.width = v16;
    v50.size.height = v16;
    if (!CGRectContainsRect(v41, v50))
    {
      if (v13 >= 500.0)
      {
        v17 = v29;
        v44.origin.x = v6;
        v44.origin.y = rect1.origin.y;
        v44.size.width = v9;
        v44.size.height = v11;
        v45 = CGRectIntegral(v44);
        x = v45.origin.x;
        width = v45.size.width;
        rect1.origin.x = v45.size.width;
        height = v45.size.height;
        v45.size = *(MEMORY[0x277CBF398] + 16);
        rect1.size = *MEMORY[0x277CBF398];
        size = v45.size;
        v21 = 1.0 / v13;
        y = v45.origin.y;
        v30 = v45.origin.y;
        v45.size.width = width;
        rect1.origin.y = CGRectGetMinX(v45);
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        v23 = height;
        MaxX = CGRectGetMaxX(v46);
        v47.origin.x = x;
        v47.origin.y = v30;
        v47.size.width = width;
        v47.size.height = v23;
        MinY = CGRectGetMinY(v47);
        v48.origin.x = x;
        v48.size.width = rect1.origin.x;
        v48.origin.y = v30;
        v48.size.height = v23;
        MaxY = CGRectGetMaxY(v48);
        if (rect1.origin.y <= MaxX)
        {
          v27 = rect1.origin.y;
          do
          {
            v35.x = v31;
            v35.y = v17;
            twirlTracePoint(v27, MinY, v35, v21, v12, &rect1.size);
            v36.x = v31;
            v36.y = v17;
            twirlTracePoint(v27, MaxY, v36, v21, v12, &rect1.size);
            v27 = v27 + 1.0;
          }

          while (v27 <= MaxX);
        }

        for (; MinY <= MaxY; MinY = MinY + 1.0)
        {
          v37.x = v31;
          v37.y = v17;
          twirlTracePoint(rect1.origin.y, MinY, v37, v21, v12, &rect1.size);
          v38.x = v31;
          v38.y = v17;
          twirlTracePoint(MaxX, MinY, v38, v21, v12, &rect1.size);
        }

        v43.origin.x = rect1.size.width;
        v43.origin.y = rect1.size.height;
        v43.size = size;
      }

      else
      {
        v42.origin.x = v6;
        v42.origin.y = rect1.origin.y;
        v42.size.width = v9;
        v42.size.height = v11;
        v51.origin.x = v14;
        v51.origin.y = v15;
        v51.size.width = v16;
        v51.size.height = v16;
        v43 = CGRectUnion(v42, v51);
      }

      return HGRectFromCGRect(v43);
    }
  }

  return v4;
}

void twirlTracePoint(double a1, double a2, CGPoint a3, float a4, float a5, CGRect *a6)
{
  v7 = a2;
  v8 = a1;
  v9 = a1 - a3.x;
  v10 = a2 - a3.y;
  v11 = v9 * v9 + v10 * v10;
  v12 = fminf(sqrtf(v11) * a4, 1.0);
  if (v12 < 1.0)
  {
    y = a3.y;
    x = a3.x;
    v15 = (3.0 - ((1.0 - v12) + (1.0 - v12))) * (1.0 - v12) * (1.0 - v12);
    v16 = __sincosf_stret(v15 * a5);
    v17 = v9 * v16.__cosval + v10 * v16.__sinval;
    v18 = v10 * v16.__cosval - v9 * v16.__sinval;
    v8 = x + v17;
    v7 = y + v18;
  }

  v19.x = v8;
  v19.y = v7;
  if (!CGRectContainsPoint(*a6, v19))
  {
    v20.size.width = 0.0;
    v20.size.height = 0.0;
    v20.origin.x = v8;
    v20.origin.y = v7;
    *a6 = CGRectUnion(*a6, v20);
  }
}

void HiOSTwirl::~HiOSTwirl(HGNode *this)
{
  HgciOSTwirl::~HgciOSTwirl(this);

  HGObject::operator delete(v1);
}

void HPrism::HPrism(HPrism *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2871D1840;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(this + 51) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v4);
  *(this + 52) = v4;
}

void sub_25F9C3768(_Unwind_Exception *a1)
{
  v3 = v2;
  HGObject::operator delete(v3);
  v5 = *(v1 + 408);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HPrism::~HPrism(HGNode *this)
{
  *this = &unk_2871D1840;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  HPrism::~HPrism(this);

  HGObject::operator delete(v1);
}

uint64_t HPrism::init(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = HGObject::operator new(0x1B0uLL);
  HDirectionalBlur::HDirectionalBlur(v6);
  HDirectionalBlur::init(v6, a2);
  (*(*v6 + 120))(v6, 0, *(a1 + 408));
  v7 = HGObject::operator new(0x1A0uLL);
  HgcPrism::HgcPrism(v7);
  HGTransform::HGTransform(v12);
  *&v4 = v4 + v4;
  *&v5 = v5 + v5;
  HGTransform::Translate(v12, *&v4, *&v5, 0.0);
  v8 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v8);
  (*(*v8 + 120))(v8, 0, v6);
  (*(*v8 + 576))(v8, v12);
  (*(*v8 + 160))(v8, 1);
  (*(*v7 + 120))(v7, 0, v8);
  (*(*v7 + 120))(v7, 1, v6);
  HGTransform::HGTransform(v11);
  HGTransform::Translate(v11, -*&v4, -*&v5, 0.0);
  v9 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v9);
  (*(*v9 + 120))(v9, 0, v6);
  (*(*v9 + 576))(v9, v11);
  (*(*v9 + 160))(v9, 1);
  (*(*v7 + 120))(v7, 2, v9);
  (*(**(a1 + 416) + 120))(*(a1 + 416), 0, v7);
  (*(*v9 + 24))(v9);
  HGTransform::~HGTransform(v11);
  (*(*v8 + 24))(v8);
  HGTransform::~HGTransform(v12);
  (*(*v7 + 24))(v7);
  return (*(*v6 + 24))(v6);
}

void sub_25F9C3C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  HGObject::operator delete(v30);
  HGTransform::~HGTransform(&a9);
  (*(*v29 + 24))(v29);
  HGTransform::~HGTransform(&a27);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  (*(*v27 + 24))(v27);
  _Unwind_Resume(a1);
}

uint64_t HPrism::GetOutput(HPrism *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  return *(this + 52);
}

void HSoftFocus::HSoftFocus(HSoftFocus *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2871D1AA8;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(this + 51) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v4);
  *(this + 52) = v4;
}

void sub_25F9C3EA8(_Unwind_Exception *a1)
{
  v3 = v2;
  HGObject::operator delete(v3);
  v5 = *(v1 + 408);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HSoftFocus::~HSoftFocus(HGNode *this)
{
  *this = &unk_2871D1AA8;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  HSoftFocus::~HSoftFocus(this);

  HGObject::operator delete(v1);
}

uint64_t HSoftFocus::init(HSoftFocus *this, float a2, float a3, float a4, float a5, char a6)
{
  v12 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v12);
  HGaussianBlur::init(v12, a2, a4, a5, a6, 0, 0);
  (*(*v12 + 120))(v12, 0, *(this + 51));
  v13 = HGObject::operator new(0x1C0uLL);
  HGLegacyBlend::HGLegacyBlend(v13);
  (*(*v13 + 96))(v13, 0, 8.0, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 1, a3, 0.0, 0.0, 0.0);
  (*(*v13 + 120))(v13, 1, v12);
  (*(*v13 + 120))(v13, 0, *(this + 51));
  (*(**(this + 52) + 120))(*(this + 52), 0, v13);
  (*(*v13 + 24))(v13);
  return (*(*v12 + 24))(v12);
}

void sub_25F9C4220(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t HSoftFocus::GetOutput(HSoftFocus *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  return *(this + 52);
}

uint64_t *anonymous namespace::doMakeZoom@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  v6 = result;
  *a2 = 0;
  if (a3 == 0.0)
  {
    v8 = *result;
    if (*result)
    {
      *a2 = v8;
      return (*(*v8 + 16))(v8);
    }

    return result;
  }

  v12 = a3 * a3;
  v13 = 1.0833;
  if (v12 <= 1.0833)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1.0;
    v15 = 1;
    do
    {
      v16 = v13;
      v14 = v14 * 4.0;
      v13 = v13 + v14;
      ++v15;
    }

    while (v12 > v13);
    v12 = v12 - v16;
    v13 = v13 - v16;
  }

  v17 = v12 / v13;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  do
  {
    if (v18)
    {
      if (v19 != v20)
      {
        if (v19)
        {
          (*(*v19 + 24))(v19);
        }

        if (v20)
        {
          v19 = v20;
          (*(*v20 + 16))(v20);
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      if (v19 == *v6)
      {
        goto LABEL_23;
      }

      if (!v19)
      {
        v19 = *v6;
        if (!*v6)
        {
          goto LABEL_23;
        }

LABEL_22:
        (*(*v19 + 16))(v19);
        goto LABEL_23;
      }

      (*(*v19 + 24))(v19);
      v19 = *v6;
      if (*v6)
      {
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v21 != v20)
    {
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      if (v20)
      {
        v21 = v20;
        (*(*v20 + 16))(v20);
      }

      else
      {
        v21 = 0;
      }
    }

    v22 = powf(a6, (1 << v18));
    v23 = HGObject::operator new(0x1B0uLL);
    HgcZoomBlur::HgcZoomBlur(v23);
    (*(*v23 + 96))(v23, 0, a4, a5, 0.0, 0.0);
    (*(*v23 + 96))(v23, 1, v22, v22 * v22, v22 * (v22 * v22), (v22 * v22) * (v22 * v22));
    (*(*v23 + 120))(v23, 0, v19);
    if (v20 == v23)
    {
      (*(*v23 + 24))(v23);
    }

    else
    {
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      v20 = v23;
    }

    (*(*v20 + 136))(v20, 0xFFFFFFFFLL, 2);
    ++v18;
  }

  while (v15 != v18);
  v25 = v19;
  v26 = v20;
  v27 = v21;
  if (v21)
  {
  }

  else
  {
  }

  if (v24)
  {
    *a2 = v24;
  }

  if (!v19 || (result = (*(*v19 + 24))(v19), (v20 = v26) != 0))
  {
    result = (*(*v20 + 24))(v20);
  }

  if (v21)
  {
    return (*(*v21 + 24))(v21);
  }

  return result;
}

void sub_25F9C47E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v14)
  {
    (*(*v14 + 24))(v14);
    v13 = a11;
  }

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (*v12)
  {
    (*(**v12 + 24))(*v12);
  }

  _Unwind_Resume(exception_object);
}

float anonymous namespace::computeOutputWidthAndHeight(_anonymous_namespace_ *this, unsigned int a2, void *a3, float a4, float a5, float a6, unint64_t *a7, unint64_t *a8, float a9)
{
  v12 = this;
  if (a5 < 0.0)
  {
    a5 = -a5;
  }

  v13 = a5 + (this >> 1);
  if (a6 < 0.0)
  {
    a6 = -a6;
  }

  v14 = a6 + (a2 >> 1);
  *a3 = ((((v13 / Scale) - v13) + ((v13 / Scale) - v13)) + v12);
  result = (((v14 / Scale) - v14) + ((v14 / Scale) - v14)) + a2;
  *a7 = result;
  return result;
}

uint64_t anonymous namespace::blurLerp@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  if (fabsf(a4) >= 0.00001)
  {
    if (fabsf(a4 + -1.0) >= 0.00001)
    {
      v10 = HGObject::operator new(0x1C0uLL);
      HGLegacyBlend::HGLegacyBlend(v10);
      (*(*v10 + 120))(v10, 0, *a2);
      (*(*v10 + 120))(v10, 1, *a1);
      (*(*v10 + 96))(v10, 0, 8.0, 0.0, 0.0, 0.0);
      result = (*(*v10 + 96))(v10, 1, a4, 0.0, 0.0, 0.0);
      *a3 = v10;
      return result;
    }

    result = *a1;
  }

  else
  {
    result = *a2;
  }

  *a3 = result;
  if (result)
  {
    v9 = *(*result + 16);

    return v9();
  }

  return result;
}

float anonymous namespace::findScale(_anonymous_namespace_ *this, float a2, float a3)
{
  v4 = a2 * a2;
  v5 = 1.0833;
  if (v4 <= 1.0833)
  {
    v12 = v4 / 1.0833;
    v10 = (a3 * a3) * (a3 * a3);
    v13 = v10;
  }

  else
  {
    v6 = 1.0;
    v7 = -1;
    do
    {
      v8 = v5;
      v6 = v6 * 4.0;
      v5 = v5 + v6;
      ++v7;
    }

    while (v4 > v5);
    v9 = v4 - v8;
    v10 = (a3 * a3) * (a3 * a3);
    v11 = -1;
    v12 = v9 / (v5 - v8);
    do
    {
      v13 = v10;
      v14 = powf(a3, (1 << (v11 + 2)));
      v10 = v13 * ((v14 * v14) * (v14 * v14));
      ++v11;
    }

    while (v7 != v11);
  }

  return (v12 * v10) + ((1.0 - v12) * v13);
}

void HStyleTransfer_GPUImpl::HStyleTransfer_GPUImpl(HStyleTransfer_GPUImpl *this, EspressoImage2Image *a2)
{
  HGNode::HGNode(this);
  *v4 = &unk_2871D1D10;
  v4[51] = 0;
  {
    HStyleTransfer_GPUImpl::HStyleTransfer_GPUImpl();
  }

  *(this + 4) = *(this + 4) & 0xFFFFF9FF | 0x400;
  (*(*this + 136))(this, 0, 2);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 2);
  *(this + 51) = a2;
}

void HStyleTransfer_GPUImpl::~HStyleTransfer_GPUImpl(id *this)
{
  *this = &unk_2871D1D10;

  HGNode::~HGNode(this);
}

{
  HStyleTransfer_GPUImpl::~HStyleTransfer_GPUImpl(this);

  HGObject::operator delete(v1);
}

uint64_t HStyleTransfer_GPUImpl::_renderPage(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  [*(HGGPURenderer::GetMetalContext(*a2) + 32) commandBuffer];
  if (*(a1 + 408) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    Buffer = HGGPURenderer::CreateBuffer(v6, *(a2 + 36), *(a2 + 32), a3, 0, 0);
    Input = HGRenderer::GetInput(v6, a1, 0);
    NodeBitmap = HGGPURenderer::GetNodeBitmap(v6, Input, *(a2 + 36), Buffer, 1u);
    if (NodeBitmap != Buffer)
    {
      HGGPURenderer::CopyBitmapIntoBuffer(v6, Buffer, *(a2 + 36), NodeBitmap);
    }

    (*(*NodeBitmap + 24))(NodeBitmap);
    (*(*v6 + 144))(v6, 0);
    HGGPURenderer::FlushMetalCommandBuffer(v6);
    v10 = HGGPURenderer::CreateBuffer(*a2, *(a2 + 16), *(a2 + 32), a3, (*(a1 + 16) >> 12) & 1, 0, 1);
    v12[5] = HGGPURenderer::ConvertToMetalTexture(v6, v10);
    v12[4] = HGGPURenderer::ConvertToMetalTexture(v6, Buffer);
    (*(*Buffer + 24))(Buffer);
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    operator new();
  }

  return HGNode::RenderPage(a1, a2);
}

void sub_25F9C52A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  v17 = *(v15 - 112);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  v18 = *(v15 - 104);
  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<HGRef<HGMetalTexture>>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<HGRef<HGMetalTexture>>::__emplace_back_slow_path<HGRef<HGMetalTexture> const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      (*(*v4 + 16))(v4);
    }

    result = (v3 + 1);
    a1[1] = (v3 + 1);
  }

  a1[1] = result;
  return result;
}

void ___ZN22HStyleTransfer_GPUImpl11_renderPageEP6HGPage14HGGPURenderAPI_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 24);
    std::vector<HGRef<HGMetalTexture>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x2666E9F00](v3, 0x20C40960023A9);
  }
}

void HStyleTransfer_GPU::HStyleTransfer_GPU(HStyleTransfer_GPU *this, EspressoImage2Image *a2)
{
  HGNode::HGNode(this);
  *v4 = &unk_2871D1F60;
  *(v4 + 408) = 0;
  *(v4 + 416) = 0;
  *(v4 + 16) = *(v4 + 16) & 0xFFFFF9FF | 0x400;
  v5 = HGObject::operator new(0x1A0uLL);
  HStyleTransfer_GPUImpl::HStyleTransfer_GPUImpl(v5, a2);
  v6 = *(this + 51);
  if (v6 == v5)
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 24))(v6);
    }

    *(this + 51) = v5;
  }
}

void sub_25F9C5518(_Unwind_Exception *a1)
{
  v3 = v2;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(v1 + 416);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(v1 + 408);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

HGXForm *HStyleTransfer_GPU::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v8 = fminf(1920.0 / (v6 - DOD), 1.0);
  v9 = fminf(1920.0 / (v7 - HIDWORD(DOD)), 1.0);
  HGTransform::HGTransform(v15);
  HGTransform::Scale(v15, v8, v9, 1.0);
  HGTransform::HGTransform(v14);
  HGTransform::Scale(v14, (1.0 / v8), (1.0 / v9), 1.0);
  v10 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v10);
  (*(*v10 + 120))(v10, 0, Input);
  (*(*v10 + 576))(v10, v15);
  (*(*v10 + 592))(v10, 6, 1.0);
  (*(**(this + 51) + 120))(*(this + 51), 0, v10);
  v11 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v11);
  (*(*v11 + 120))(v11, 0, *(this + 51));
  (*(*v11 + 576))(v11, v14);
  v12 = *(this + 52);
  if (v12 != v11)
  {
    if (v12)
    {
      (*(*v12 + 24))(*(this + 52));
    }

    *(this + 52) = v11;
    (*(*v11 + 16))(v11);
    v12 = *(this + 52);
  }

  (*(*v11 + 24))(v11);
  (*(*v10 + 24))(v10);
  HGTransform::~HGTransform(v14);
  HGTransform::~HGTransform(v15);
  return v12;
}

void sub_25F9C58E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  HGObject::operator delete(v28);
  (*(*v27 + 24))(v27);
  HGTransform::~HGTransform(&a9);
  HGTransform::~HGTransform(&a27);
  _Unwind_Resume(a1);
}

void HStyleTransfer_GPU::~HStyleTransfer_GPU(HGNode *this)
{
  *this = &unk_2871D1F60;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2871D1F60;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t std::allocator<HGRef<HGMetalTexture>>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGMetalTexture>>,HGRef<HGMetalTexture>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGMetalTexture>>,HGRef<HGMetalTexture>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGMetalTexture>>,HGRef<HGMetalTexture>*>::operator()[abi:ne200100](uint64_t *result)
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
      result = std::allocator<HGRef<HGMetalTexture>>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<HGRef<HGMetalTexture>>::~__split_buffer(void **a1)
{
  std::__split_buffer<HGRef<HGMetalTexture>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HGRef<HGMetalTexture>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = std::allocator<HGRef<HGMetalTexture>>::destroy[abi:ne200100](v4, (v1 - 8));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void std::vector<HGRef<HGMetalTexture>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<HGRef<HGMetalTexture>>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_25F9C6BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  HGObject::operator delete(v35);
  (*(*v34 + 24))(v34);
  v38 = *(v36 - 168);
  if (v38)
  {
    (*(*v38 + 24))(v38);
  }

  _Unwind_Resume(a1);
}

unint64_t HSharpen::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0x8000000080000000;
  }

  else
  {
    return a4;
  }
}

uint64_t HSharpen::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HSharpen::~HSharpen(HGNode *this)
{
  HgcSharpen::~HgcSharpen(this);

  HGObject::operator delete(v1);
}

void sub_25F9C7D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double PCMatrix44Tmpl<double>::rightTranslate(double *a1, double result, double a3, double a4)
{
  if (result != 0.0)
  {
    v4 = a1[4];
    a1[3] = a1[3] + *a1 * result;
    v5 = v4 * result;
    v6 = a1[8];
    a1[7] = a1[7] + v5;
    v7 = v6 * result;
    v8 = a1[12];
    a1[11] = a1[11] + v7;
    result = a1[15] + v8 * result;
    a1[15] = result;
  }

  if (a3 != 0.0)
  {
    a1[3] = a1[3] + a1[1] * a3;
    a1[7] = a1[7] + a1[5] * a3;
    a1[11] = a1[11] + a1[9] * a3;
    result = a1[15] + a1[13] * a3;
    a1[15] = result;
  }

  if (a4 != 0.0)
  {
    a1[3] = a1[3] + a1[2] * a4;
    a1[7] = a1[7] + a1[6] * a4;
    a1[11] = a1[11] + a1[10] * a4;
    result = a1[15] + a1[14] * a4;
    a1[15] = result;
  }

  return result;
}

void sub_25F9C8D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  (*(*v18 + 24))(v18);
  if (a18)
  {
    (*(*a18 + 24))(a18);
  }

  _Unwind_Resume(a1);
}

void HGradientRadial::~HGradientRadial(HGNode *this)
{
  HgcGradientRadial::~HgcGradientRadial(this);

  HGObject::operator delete(v1);
}

uint64_t HGradientRadial::GetROI(HGradientRadial *this, HGRenderer *a2, int a3, HGRect a4)
{
  v8 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 1, v6, *&a4.var0, *&a4.var2);
  result = HGRectMake4i(0, 0, v7, 1u);
  if (a3)
  {
    return 0;
  }

  return result;
}

uint64_t HSoftGradient::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HSoftGradient::~HSoftGradient(HGNode *this)
{
  HgcSoftGradient::~HgcSoftGradient(this);

  HGObject::operator delete(v1);
}

void sub_25F9C99E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(*v11 + 24))(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_25F9CA7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9CB8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9CD6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9CEAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9CF128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  v11 = *(v9 - 24);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(exception_object);
}

double PCMatrix44Tmpl<double>::setRotationFromQuaternion(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = v2 * v2 + v3 * v3 + v4 * v4 + v5 * v5;
  v7 = 2.0 / v6;
  v8 = v6 <= 0.0;
  v9 = 0.0;
  if (!v8)
  {
    v9 = v7;
  }

  v10 = v3 * v9;
  v11 = v4 * v9;
  v12 = v5 * v9;
  v13 = v2 * v10;
  v14 = v2 * v11;
  v15 = v2 * v12;
  v16 = v3 * v10;
  v17 = v3 * v11;
  v18 = v3 * v12;
  v19 = v4 * v11;
  v20 = v4 * v12;
  v21 = v5 * v12;
  *a1 = 1.0 - (v19 + v21);
  *(a1 + 8) = v17 - v15;
  *(a1 + 16) = v18 + v14;
  *(a1 + 24) = 0;
  *(a1 + 32) = v17 + v15;
  *(a1 + 40) = 1.0 - (v16 + v21);
  *(a1 + 48) = v20 - v13;
  *(a1 + 56) = 0;
  *(a1 + 64) = v18 - v14;
  *(a1 + 72) = v20 + v13;
  *(a1 + 80) = 1.0 - (v16 + v19);
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

void sub_25F9D0BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTransform::~HGTransform(va);
  (*(*v12 + 24))(v12);
  if (a8)
  {
    (*(*a8 + 24))(a8);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v11 + 24))(v11);
  (*(*v10 + 24))(v10);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  _Unwind_Resume(a1);
}

double PCQuat<double>::transform<double>(uint64_t a1, uint64_t a2, int64x2_t a3, int64x2_t a4)
{
  a3.i64[0] = *a2;
  v4 = *a1;
  a4.i64[0] = *(a1 + 8);
  v5 = v4 * (v4 + v4) + -1.0;
  v6 = *(a1 + 16);
  v7 = *(a2 + 8);
  v8 = *a4.i64 * *a2 + vmulq_f64(v6, v7).f64[0];
  v9 = *(a1 + 24);
  v10 = vmuld_lane_f64(v9, v7, 1);
  v11 = v8 + v10 + v8 + v10;
  *&v12.f64[0] = vdupq_laneq_s64(v7, 1).u64[0];
  v12.f64[1] = *a2;
  *&v13.f64[0] = vdupq_laneq_s64(v6, 1).u64[0];
  *&v13.f64[1] = a4.i64[0];
  v14 = vaddq_f64(vmulq_n_f64(vsubq_f64(vmulq_f64(v12, v6), vmulq_f64(v13, v7)), v4 + v4), vaddq_f64(vmulq_n_f64(vzip1q_s64(a4, v6), v11), vmulq_n_f64(vzip1q_s64(a3, v7), v5)));
  v15 = (*a4.i64 * v7.f64[0] - *a2 * v6.f64[0]) * (v4 + v4) + vmuld_lane_f64(v11, v6, 1) + vmuld_lane_f64(v5, v7, 1);
  *&v16 = v4 * v4 + *a4.i64 * *a4.i64 + vmulq_f64(v6, v6).f64[0] + vmuld_lane_f64(v9, v6, 1);
  *a2 = vdivq_f64(v14, vdupq_lane_s64(v16, 0));
  result = v15 / *&v16;
  *(a2 + 16) = result;
  return result;
}

void sub_25F9D172C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  v11 = *(v9 - 40);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(exception_object);
}

void HWideScreen::~HWideScreen(HGNode *this)
{
  HgcWideScreen::~HgcWideScreen(this);

  HGObject::operator delete(v1);
}

uint64_t HWideScreen::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

unint64_t HWideScreen::GetROI(HWideScreen *this, HGRenderer *a2, int a3, HGRect a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *&a4.var2;
    v7 = *&a4.var0;
    (*(*this + 104))(this, 3, v66);
    v33 = v66[0];
    (*(*this + 104))(this, 4, &v60);
    v48 = v61;
    v9 = v60;
    v46 = DWORD2(v61);
    (*(*this + 104))(this, 5, &v60);
    v44 = v61;
    v40 = v60;
    v42 = DWORD2(v61);
    (*(*this + 104))(this, 6, &v60);
    v38 = v61;
    v34 = v60;
    v36 = DWORD2(v61);
    (*(*this + 104))(this, 7, &v60);
    *&v10 = v48;
    *(&v10 + 1) = __PAIR64__(v40, v46);
    *&v11 = v44;
    *(&v11 + 1) = __PAIR64__(v34, v42);
    v12 = DWORD2(v61);
    *&v13 = v38;
    *(&v13 + 1) = __PAIR64__(v60, v36);
    v14 = v61;
    v61 = v10;
    v62 = v11;
    v63 = v13;
    v64 = v14;
    v60 = v9;
    v65 = v12;
    (*(*this + 104))(this, 8, &v54);
    v15 = v54;
    v49 = v55;
    v47 = DWORD2(v55);
    (*(*this + 104))(this, 9, &v54);
    v41 = v54;
    v45 = v55;
    v43 = DWORD2(v55);
    (*(*this + 104))(this, 10, &v54);
    v35 = v54;
    v39 = v55;
    v37 = DWORD2(v55);
    (*(*this + 104))(this, 11, &v54);
    v16 = DWORD2(v55);
    *&v17 = v49;
    *(&v17 + 1) = __PAIR64__(v41, v47);
    *&v18 = v45;
    *(&v18 + 1) = __PAIR64__(v35, v43);
    *&v19 = v39;
    *(&v19 + 1) = __PAIR64__(v54, v37);
    v20 = v55;
    v54 = v15;
    v55 = v17;
    v56 = v18;
    v57 = v19;
    v58 = v20;
    v59 = v16;
    *v53.i32 = v7;
    *&v53.i32[1] = SHIDWORD(v7);
    v53.i64[1] = 0x3F80000000000000;
    v52.f32[0] = v6;
    v52.f32[1] = SHIDWORD(v7);
    v52.i64[1] = 0x3F80000000000000;
    v51.f32[0] = v6;
    v51.f32[1] = SHIDWORD(v6);
    v51.i64[1] = 0x3F80000000000000;
    v50.f32[0] = v7;
    v50.f32[1] = SHIDWORD(v6);
    v50.i64[1] = 0x3F80000000000000;
    v53 = *PCMatrix44Tmpl<float>::transform<float>(&v60, v53.i32, v53.i32);
    v21 = vdup_lane_s32(v53.u64[1], 1);
    *v53.i8 = vdiv_f32(*v53.i8, v21);
    v53.u64[1] = vdiv_f32(v53.u64[1], v21);
    v52 = *PCMatrix44Tmpl<float>::transform<float>(&v60, v52.f32, v52.f32);
    v22 = vdup_lane_s32(*&v52.u32[2], 1);
    *v52.f32 = vdiv_f32(*v52.f32, v22);
    *&v52.u32[2] = vdiv_f32(*&v52.u32[2], v22);
    v51 = *PCMatrix44Tmpl<float>::transform<float>(&v60, v51.f32, v51.f32);
    v23 = vdup_lane_s32(*&v51.u32[2], 1);
    *v51.f32 = vdiv_f32(*v51.f32, v23);
    *&v51.u32[2] = vdiv_f32(*&v51.u32[2], v23);
    v50 = *PCMatrix44Tmpl<float>::transform<float>(&v60, v50.f32, v50.f32);
    *&v53.i32[1] = *&v53.i32[1] - v33;
    v52.f32[1] = v52.f32[1] - v33;
    v24 = v50;
    v24.f32[1] = v50.f32[1] / v50.f32[3];
    v25.i32[0] = vdup_lane_s32(*&v50.u32[2], 1).u32[0];
    v25.f32[1] = v33;
    v51.f32[1] = v51.f32[1] - v33;
    v26 = vdivq_f32(v50, vdupq_lane_s32(*v25.f32, 0));
    v26.i32[1] = vsubq_f32(v24, v25).i32[1];
    v50 = v26;
    v53 = *PCMatrix44Tmpl<float>::transform<float>(&v54, v53.i32, v53.i32);
    v53 = vdivq_f32(v53, vdupq_laneq_s32(v53, 3));
    v52 = *PCMatrix44Tmpl<float>::transform<float>(&v54, v52.f32, v52.f32);
    v52 = vdivq_f32(v52, vdupq_laneq_s32(v52, 3));
    v51 = *PCMatrix44Tmpl<float>::transform<float>(&v54, v51.f32, v51.f32);
    v51 = vdivq_f32(v51, vdupq_laneq_s32(v51, 3));
    v50 = *PCMatrix44Tmpl<float>::transform<float>(&v54, v50.f32, v50.f32);
    v27 = *(&v50 | 0xC);
    v28 = v50.f32[0] / v27;
    v29 = v50.f32[1] / v27;
    if (*v53.i32 >= v52.f32[0])
    {
      v30 = v52.f32[0];
    }

    else
    {
      v30 = *v53.i32;
    }

    if (*&v53.i32[1] >= v52.f32[1])
    {
      v31 = v52.f32[1];
    }

    else
    {
      v31 = *&v53.i32[1];
    }

    if (v30 >= v51.f32[0])
    {
      v30 = v51.f32[0];
    }

    if (v31 >= v51.f32[1])
    {
      v31 = v51.f32[1];
    }

    if (v30 >= v28)
    {
      v30 = v28;
    }

    if (v31 >= v29)
    {
      v31 = v29;
    }

    v4 = (v30 + -1.0);
    v5 = (v31 + -1.0);
  }

  return v4 | (v5 << 32);
}

float *PCMatrix44Tmpl<float>::transform<float>(float *a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *a3 = (((*a2 * *a1) + (v4 * a1[1])) + (v5 * a1[2])) + (v6 * a1[3]);
  a3[1] = (((v3 * a1[4]) + (v4 * a1[5])) + (v5 * a1[6])) + (v6 * a1[7]);
  a3[2] = (((v3 * a1[8]) + (v4 * a1[9])) + (v5 * a1[10])) + (v6 * a1[11]);
  a3[3] = (((v3 * a1[12]) + (v4 * a1[13])) + (v5 * a1[14])) + (v6 * a1[15]);
  return a3;
}

void sub_25F9D2668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9D3254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v10 + 24))(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void HGradientColorize::~HGradientColorize(HGNode *this)
{
  HgcGradientColorize::~HgcGradientColorize(this);

  HGObject::operator delete(v1);
}

uint64_t HGradientColorize::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

unint64_t HGradientColorize::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    LODWORD(a4) = 0;
    v4 = 0;
  }

  else
  {
    v4 = a4 & 0xFFFFFFFF00000000;
  }

  return v4 | a4;
}

void sub_25F9D4DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9D563C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  HGObject::operator delete(v40);
  HGTransform::~HGTransform(&a11);
  (*(*v39 + 24))(v39);
  if (a38)
  {
    (*(*a38 + 24))(a38);
  }

  (*(*v39 + 24))(v39);
  (*(*v38 + 24))(v38);
  v43 = *(v41 - 168);
  if (v43)
  {
    (*(*v43 + 24))(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t FracturedUtils::getModeNameStrings(FracturedUtils *this)
{
  result = FracturedUtils::getModeNameStrings(void)::s_modeNames;
  if (!FracturedUtils::getModeNameStrings(void)::s_modeNames)
  {
    result = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Shatter", @"Blast", @"Crumble", @"Swipe", @"Vortex", @"Flip", @"Whirl", @"Shutters", @"Evaporate", @"Explode", @"Pulverize", @"Twirl", @"Spread", @"Rotate", @"Blocks", @"Bars", @"Cube", 0}];
    FracturedUtils::getModeNameStrings(void)::s_modeNames = result;
  }

  return result;
}

uint64_t FracturedUtils::getShapeNameStrings(FracturedUtils *this)
{
  result = FracturedUtils::getShapeNameStrings(void)::s_shapeNames;
  if (!FracturedUtils::getShapeNameStrings(void)::s_shapeNames)
  {
    result = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Point", @"Triangle", @"Quad", @"Circle", @"Glass", @"Brick", @"Glass2", 0}];
    FracturedUtils::getShapeNameStrings(void)::s_shapeNames = result;
  }

  return result;
}

uint64_t FracturedUtils::getAnimationTypeStrings(FracturedUtils *this)
{
  result = FracturedUtils::getAnimationTypeStrings(void)::s_animationNames;
  if (!FracturedUtils::getAnimationTypeStrings(void)::s_animationNames)
  {
    result = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"Explode", @"Reassemble", @"Implode", 0}];
    FracturedUtils::getAnimationTypeStrings(void)::s_animationNames = result;
  }

  return result;
}

uint64_t FracturedUtils::properties(FracturedUtils *this)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v1 dictionaryWithObjectsAndKeys:{v2, @"MayRemapTime", v3, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", 1), @"PixelTransformSupport", 0}];
}

uint64_t FracturedUtils::addParameters(void *a1, void *a2, int a3, uint64_t a4)
{
  v8 = [a2 apiForProtocol:&unk_28735B348];
  v9 = [a2 apiForProtocol:&unk_28735F2C8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0;
  }

  if (*a4)
  {
    return 1;
  }

  v13 = v10;
  v14 = [v8 addFloatSliderWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Density" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:*(a4 + 4) parmFlags:{1.0, 100.0, 1.0, 100.0, 1.0}];
  v15 = v14 & [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::DensityScaleStart" parameterMin:0 parameterMax:0) sliderMin:13 sliderMax:0 delta:*(a4 + 32) parmFlags:{0.00999999978, 2.0, 0.00999999978, 2.0, 0.00999999978}];
  v16 = [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::DensityScaleEnd" parameterMin:0 parameterMax:0) sliderMin:14 sliderMax:0 delta:*(a4 + 36) parmFlags:{0.00999999978, 2.0, 0.00999999978, 2.0, 0.00999999978}];
  v17 = v15 & v16 & [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Extrude" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:0 delta:*(a4 + 20) parmFlags:{0.0, 3.0, 0.0, 3.0, 0.1}];
  v18 = [v13 localizedStringForKey:@"Fractured::Mode" value:0 table:0];
  LODWORD(v18) = [v8 addPopupMenuWithName:v18 parmId:2 defaultValue:*(a4 + 12) menuEntries:FracturedUtils::getModeNameStrings(v18) parmFlags:0];
  v19 = [v13 localizedStringForKey:@"Fractured::AnimationType" value:0 table:0];
  LODWORD(v18) = v18 & [v8 addPopupMenuWithName:v19 parmId:22 defaultValue:*(a4 + 128) menuEntries:FracturedUtils::getAnimationTypeStrings(v19) parmFlags:0];
  LODWORD(v19) = v17 & v18 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Randomize" parmFlags:{0, 0), 3, *(a4 + 8), 0}];
  LODWORD(v18) = [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::FragmentAspect" parameterMin:0 parameterMax:0) sliderMin:28 sliderMax:0 delta:*(a4 + 148) parmFlags:{0.5, 2.0, 0.5, 2.0, 0.01}];
  LODWORD(v18) = v18 & [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Delay" parameterMin:0 parameterMax:0) sliderMin:21 sliderMax:0 delta:*(a4 + 124) parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  LODWORD(v18) = v18 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Lighting" parmFlags:{0, 0), 5, *(a4 + 17), 0}];
  LODWORD(v19) = v19 & v18 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Fog" parmFlags:{0, 0), 6, *(a4 + 18), 0}];
  LODWORD(v18) = [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::FogIntensity" parameterMin:0 parameterMax:0) sliderMin:18 sliderMax:0 delta:*(a4 + 112) parmFlags:{0.0, 2.0, 0.0, 2.0, 0.01}];
  LODWORD(v18) = v18 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Specular" parmFlags:{0, 0), 16, *(a4 + 72), 0}];
  LODWORD(v18) = v18 & [v8 addColorParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultRed:@"Fractured::SpecularColor" defaultGreen:0 defaultBlue:0) parmFlags:{17, 0, *(a4 + 80), *(a4 + 88), *(a4 + 96)}];
  LODWORD(v18) = v18 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::Transparency" parmFlags:{0, 0), 7, *(a4 + 19), 0}];
  v20 = v19 & v18 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::DoubleSided" parmFlags:{0, 0), 4, *(a4 + 16), 0}];
  LODWORD(v18) = [v8 addColorParameterWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultRed:@"Fractured::BackfaceColor" defaultGreen:0 defaultBlue:0) defaultAlpha:15 parmFlags:{0, *(a4 + 40), *(a4 + 48), *(a4 + 56), *(a4 + 64)}];
  v21 = [v13 localizedStringForKey:@"Fractured::FaceShape" value:0 table:0];
  LODWORD(v18) = v18 & [v8 addPopupMenuWithName:v21 parmId:12 defaultValue:*(a4 + 28) menuEntries:FracturedUtils::getShapeNameStrings(v21) parmFlags:0];
  v22 = v20 & v18 & [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::ReassemblePoint" parameterMin:0 parameterMax:0) sliderMin:10 sliderMax:0 delta:*(a4 + 24) parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  if (a3)
  {
    v23 = [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::ReassembleNegateClipBTime" parmFlags:{0, 0), 27, *(a4 + 144), 0}];
  }

  else
  {
    v23 = [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::OutputExpansion" parameterMin:0 parameterMax:0) sliderMin:19 sliderMax:0 delta:*(a4 + 116) parmFlags:{1.0, 10.0, 1.0, 3.0, 0.1}];
  }

  v24 = v23 & [v8 addToggleButtonWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::DissolveInOut" parmFlags:{0, 0), 23, *(a4 + 132), 0}];
  v12 = v22 & v24 & [v8 addFloatSliderWithName:objc_msgSend(v13 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fractured::DissolvePoint" parameterMin:0 parameterMax:0) sliderMin:24 sliderMax:0 delta:*(a4 + 136) parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  if (a3)
  {
    LODWORD(v25) = *(a4 + 140);
    [a1 addEaseParametersWithDefault:0 andFlags:v25];
  }

  return v12;
}

HGFractured::Effect **FracturedUtils::_findReadyEffect(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return 0;
  }

  while (HGFractured::Effect::GetState(**v1))
  {
    if (++v1 == *(a1 + 8))
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t FracturedUtils::_erasePurgableItemsInPool(uint64_t result)
{
  v9 = *(result + 8);
  if ((v9 - *result) >= 0x29)
  {
    v16 = v8;
    v17 = v7;
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v21 = v1;
    v22 = v5;
    v23 = v6;
    v10 = result;
    do
    {
      v11 = *(v9 - 8);
      [*(v11 + 8) timeIntervalSinceNow];
      v13 = v12;
      result = HGFractured::Effect::GetState(*v11);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 < -60.0;
      }

      if (!v14)
      {
        break;
      }

      v15 = v10[1];
      result = *(v15 - 8);
      if (result)
      {
        FracturedUtils::FracturedFXPoolItem::~FracturedFXPoolItem(result);
        result = MEMORY[0x2666E9F00]();
        v15 = v10[1];
      }

      v9 = v15 - 8;
      v10[1] = v9;
    }

    while ((v9 - *v10) > 0x28);
  }

  return result;
}

uint64_t FracturedUtils::getReadyEffect(void *a1, void *a2)
{
  [a2 lock];
  ReadyEffect = FracturedUtils::_findReadyEffect(a1);
  if (!ReadyEffect)
  {
    operator new();
  }

  HGFractured::Effect::SetState(*ReadyEffect, 1);
  FracturedUtils::FracturedFXPoolItem::UpdateLastUsedTime(ReadyEffect);
  if (a1[1] - *a1 >= 0x49uLL)
  {
    FracturedUtils::_erasePurgableItemsInPool(a1);
  }

  [a2 unlock];
  return *ReadyEffect;
}

void sub_25F9D64E0(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t FracturedUtils::renderOutput(void *a1, void *a2, HGFractured::Effect *a3, uint64_t a4, void *a5, void *a6, void *a7, double *a8, float a9, char a10)
{
  v258 = *MEMORY[0x277D85DE8];
  v16 = *a8;
  v17 = [a2 apiForProtocol:&unk_28735B780];
  v251 = 0.0;
  v252 = 0.0;
  v250 = 0.0;
  v249 = 0.0;
  v248 = 0.0;
  v247 = 0.0;
  v246 = 0.0;
  v245 = 0.0;
  *v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0.0;
  if (*a4 == 1)
  {
    v18 = *(a4 + 4);
    v19 = *(a4 + 36);
    v251 = *(a4 + 32);
    v252 = v18;
    v250 = v19;
    v20 = *(a4 + 24);
    v21 = *(a4 + 20);
    v244[1] = *(a4 + 12);
    v243 = *(a4 + 128);
    v22 = *(a4 + 8);
    v245 = *(a4 + 148);
    v247 = *(a4 + 124);
    if (v22)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    v157 = v23;
    if (*(a4 + 16))
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    v155 = *(a4 + 18);
    v156 = *(a4 + 17);
    v25 = *(a4 + 72);
    LOBYTE(v242) = v25;
    v253 = *(a4 + 80);
    v254 = *(a4 + 96);
    v240 = *(a4 + 112);
    HIBYTE(v242) = *(a4 + 19);
    v244[0] = *(a4 + 28);
    v248 = v20;
    LOBYTE(v241) = *(a4 + 144);
    v26 = *(a4 + 56);
    v256 = *(a4 + 40);
    v257 = v26;
    HIBYTE(v241) = *(a4 + 132);
    v246 = *(a4 + 136);
  }

  else
  {
    v27 = v17;
    [v17 getFloatValue:&v252 fromParm:1 atFxTime:*&v16];
    [v27 getFloatValue:&v251 fromParm:13 atFxTime:*&v16];
    [v27 getFloatValue:&v250 fromParm:14 atFxTime:*&v16];
    [v27 getFloatValue:&v249 fromParm:8 atFxTime:*&v16];
    [v27 getIntValue:&v244[1] fromParm:2 atFxTime:*&v16];
    [v27 getIntValue:&v243 fromParm:22 atFxTime:*&v16];
    LOBYTE(v232[0]) = 0;
    [v27 getBoolValue:v232 fromParm:3 atFxTime:*&v16];
    v28 = 0.0;
    if (LOBYTE(v232[0]))
    {
      v28 = 1.0;
    }

    v157 = v28;
    [v27 getFloatValue:&v245 fromParm:28 atFxTime:*&v16];
    [v27 getFloatValue:&v247 fromParm:21 atFxTime:*&v16];
    [v27 getBoolValue:v232 fromParm:4 atFxTime:*&v16];
    if (LOBYTE(v232[0]))
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    [v27 getBoolValue:v232 fromParm:5 atFxTime:*&v16];
    v156 = v232[0];
    [v27 getBoolValue:v232 fromParm:6 atFxTime:*&v16];
    v155 = v232[0];
    [v27 getBoolValue:&v242 fromParm:16 atFxTime:*&v16];
    [v27 getRedValue:&v253 greenValue:&v253 + 8 blueValue:&v254 fromParm:17 atFxTime:*&v16];
    [v27 getFloatValue:&v240 fromParm:18 atFxTime:*&v16];
    [v27 getBoolValue:&v242 + 1 fromParm:7 atFxTime:*&v16];
    [v27 getIntValue:v244 fromParm:12 atFxTime:*&v16];
    [v27 getFloatValue:&v248 fromParm:10 atFxTime:*&v16];
    [v27 getBoolValue:&v241 fromParm:27 atFxTime:*&v16];
    [v27 getRedValue:&v256 greenValue:&v256 + 8 blueValue:&v257 alphaValue:&v257 + 8 fromParm:15 atFxTime:*&v16];
    [v27 getBoolValue:&v241 + 1 fromParm:23 atFxTime:*&v16];
    [v27 getFloatValue:&v246 fromParm:24 atFxTime:*&v16];
    v21 = v249;
    v25 = v242;
  }

  v249 = v21 / 100.0;
  if (v25)
  {
    v29 = 128.0;
  }

  else
  {
    v253 = 0uLL;
    v29 = 1.0;
    v254 = 0.0;
  }

  v255 = v29;
  if (a10)
  {
    v248 = v248 * 0.5 + 0.5;
  }

  v30 = v243;
  if (v243 == 2)
  {
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v31 = 0;
    if (v243 != 1)
    {
      v30 = 0;
    }
  }

  v32 = 0;
  v162 = 0.0;
  if ((v244[1] - 5) >= 2 && v244[1] != 11)
  {
    if (v244[1] == 7)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30;
    }

    v162 = v24;
  }

  v159 = v32;
  [a5 bounds];
  v164 = v33;
  v165 = v34;
  v239[0] = v35;
  v239[1] = v36;
  v239[2] = v33;
  v239[3] = v34;
  if (a1)
  {
    [a1 getPixelTransformForImage:a5];
    [a1 getInversePixelTransformForImage:a5];
  }

  else
  {
    v238 = 0u;
    v237 = 0u;
    v236 = 0u;
    v235 = 0u;
    v234 = 0u;
    v233 = 0u;
    memset(v232, 0, sizeof(v232));
    memset(v231, 0, sizeof(v231));
  }

  v229[1] = 0;
  v229[0] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v230 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(v232, v239, v229);
  v41 = v230;
  v160 = *(&v233 + 1);
  if ((a10 & 1) == 0)
  {
    v42 = [a2 apiForProtocol:&unk_28735F060];
    [v42 durationFxTimeForEffect:v227];
    [v42 frameDuration:v226];
    v43 = *a8 - *&FracturedUtils::_frameTimeOffset;
    if (v43 < 0.0)
    {
      v43 = 0.0;
    }

    v44 = *v226 * v43 / *v227;
    if (v44 > 1.0)
    {
      v44 = 1.0;
    }

    a9 = fmax(v44, 0.0);
    *&v45 = *a8;
    FracturedUtils::_lastFrameTime = v45;
  }

  v46 = HGObject::operator new(0x1C0uLL);
  HGFractured::HGFractured(v46);
  v47 = a6;
  if (a10)
  {
    *&v227[0] = 0;
    [a1 convertTimeFraction:v227 toLocal:0 andDerivative:*&v16 atTime:a9];
    a9 = *v227;
  }

  if (a6)
  {
    [a6 heliumRef];
    if (a1)
    {
LABEL_44:
      [a1 getPixelTransformForImage:a6];
      [a1 getInversePixelTransformForImage:a6];
      goto LABEL_47;
    }
  }

  else
  {
    v228 = 0;
    if (a1)
    {
      goto LABEL_44;
    }
  }

  memset(v227, 0, sizeof(v227));
  memset(v226, 0, sizeof(v226));
LABEL_47:
  [a6 bounds];
  v50 = v49;
  v51 = v48;
  v52 = v49 * 0.5;
  v53 = 1.0;
  v215 = 0;
  if (v160 < 0.0)
  {
    v53 = -1.0;
  }

  v214 = 0x3FF0000000000000uLL;
  v216 = v52;
  v161 = v53;
  v217 = xmmword_260342700;
  v218 = 0;
  v219 = v53 * (v48 * 0.5);
  v221 = 0;
  v220 = 0;
  v223 = 0u;
  v224 = 0u;
  v222 = 0x3FF0000000000000;
  v225 = 0x3FF0000000000000;
  PCMatrix44Tmpl<double>::operator*(v227, &v214, v207);
  PCMatrix44Tmpl<double>::operator*(v207, v226, &v208);
  FxSupport::makeHeliumXForm(&v208, &v228, 1, 0, &v194);
  v54 = v194;
  if (v228 == v194)
  {
    if (v228)
    {
      (*(*v194 + 24))(v194);
    }
  }

  else
  {
    if (v228)
    {
      (*(*v228 + 24))();
      v54 = v194;
    }

    v228 = v54;
  }

  v55 = a9;
  v206 = 0;
  if (a10)
  {
    if (a7)
    {
      [a7 heliumRef];
      v56 = v208;
      if (v206 == v208)
      {
        if (v208)
        {
          (*(*v208 + 24))();
        }
      }

      else
      {
        if (v206)
        {
          (*(*v206 + 24))(v206);
          v56 = v208;
        }

        v206 = v56;
      }
    }

    if (a1)
    {
      [a1 getPixelTransformForImage:a7];
      [a1 getInversePixelTransformForImage:a7];
    }

    else
    {
      v212 = 0u;
      memset(v213, 0, sizeof(v213));
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      memset(v207, 0, sizeof(v207));
    }

    [a7 bounds];
    v62 = v61;
    v64 = v63;
    v195 = 0;
    v194 = 0x3FF0000000000000uLL;
    v196 = v61 * 0.5;
    v197 = xmmword_260342700;
    v198 = 0;
    v199 = v161 * (v63 * 0.5);
    v201 = 0;
    v200 = 0;
    v203 = 0u;
    v204 = 0u;
    v202 = 0x3FF0000000000000;
    v205 = 0x3FF0000000000000;
    PCMatrix44Tmpl<double>::operator*(&v208, &v194, &v170);
    PCMatrix44Tmpl<double>::operator*(&v170, v207, &v182);
    FxSupport::makeHeliumXForm(&v182, &v206, 1, 0, v168);
    v65 = v168[0];
    if (v206 == v168[0])
    {
      if (v206)
      {
        (*(*v168[0] + 24))(v168[0]);
      }
    }

    else
    {
      if (v206)
      {
        (*(*v206 + 24))();
        v65 = v168[0];
      }

      v206 = v65;
    }

    v183 = 0;
    v182 = 0x3FF0000000000000uLL;
    v184 = (v164 - v50) * 0.5;
    v185 = xmmword_260342700;
    v186 = 0;
    v187 = v161 * ((v165 - v51) * 0.5);
    v189 = 0;
    v188 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0x3FF0000000000000;
    v193 = 0x3FF0000000000000;
    v171 = 0;
    v170 = 0x3FF0000000000000uLL;
    v172 = (v164 - v62) * 0.5;
    v173 = xmmword_260342700;
    v174 = 0;
    v175 = v161 * ((v165 - v64) * 0.5);
    v176 = 0;
    v177 = 0;
    v180 = 0u;
    v179 = 0u;
    v178 = 0x3FF0000000000000;
    v181 = 0x3FF0000000000000;
    PCMatrix44Tmpl<double>::operator*(v227, &v182, v167);
    PCMatrix44Tmpl<double>::operator*(v167, v226, v168);
    FxSupport::makeHeliumXForm(v168, &v228, 1, 0, &v169);
    v66 = v169;
    if (v228 == v169)
    {
      if (v228)
      {
        (*(*v169 + 24))(v169);
      }
    }

    else
    {
      if (v228)
      {
        (*(*v228 + 24))();
        v66 = v169;
      }

      v228 = v66;
    }

    PCMatrix44Tmpl<double>::operator*(&v208, &v170, v167);
    PCMatrix44Tmpl<double>::operator*(v167, v207, v168);
    FxSupport::makeHeliumXForm(v168, &v206, 1, 0, &v169);
    v67 = v169;
    if (v206 == v169)
    {
      if (v206)
      {
        (*(*v169 + 24))(v169);
      }
    }

    else
    {
      if (v206)
      {
        (*(*v206 + 24))();
        v67 = v169;
      }

      v206 = v67;
    }

    if ([a1 isFrontGap])
    {
      v68 = HGObject::operator new(0x1A0uLL);
      HGSolidColor::HGSolidColor(v68);
    }

    if ([a1 isEndGap])
    {
      v69 = HGObject::operator new(0x1A0uLL);
      HGSolidColor::HGSolidColor(v69);
    }

    if (v159)
    {
      v70 = 1.0;
      v71 = 1.0 - v248;
      if (v248 <= v55)
      {
        v72 = 1.0;
      }

      else
      {
        v72 = v55 / v248;
      }

      if (v71 < v55)
      {
        v70 = 1.0 - (v55 - v71) / (1.0 - v71);
      }

      if (v244[1] == 7 || v244[1] == 16 || v241 == 1)
      {
        v70 = -v70;
      }

      (*(*v46 + 120))(v46, 0, v228);
      v73 = pow(fabs(v70), 1.04999995);
      if (v70 >= 0.0)
      {
        v60 = v73;
      }

      else
      {
        v60 = -v73;
      }

      v55 = pow(v72, 0.949999988);
      v57 = 1;
      (*(*v46 + 120))(v46, 1, v206);
      goto LABEL_124;
    }

    v74 = v228;
    if (!v31)
    {
      goto LABEL_118;
    }

    v55 = 1.0 - v55;
    v228 = 0;
    if (v206)
    {
      v228 = v206;
      v206 = 0;
      if (!v74)
      {
        goto LABEL_118;
      }
    }

    else if (!v74)
    {
      goto LABEL_118;
    }

    v206 = v74;
LABEL_118:
    (*(*v46 + 120))(v46, 0);
    v75.n128_f64[0] = v162;
    if (v162 != 0.0)
    {
      (*(*v46 + 120))(v46, 1, v228, v162);
    }

    if ((v244[1] - 5) > 8)
    {
      v76 = 2;
    }

    else
    {
      v76 = dword_2603439B8[v244[1] - 5];
    }

    (*(*v46 + 120))(v46, v76, v206, v75);
    v57 = 0;
    v60 = 0.0;
    goto LABEL_124;
  }

  (*(*v46 + 120))(v46, 0, v228);
  if (v162 != 0.0)
  {
    (*(*v46 + 120))(v46, 1, v228, v162);
  }

  if (v159)
  {
    v57 = 0;
    v58 = v248 * 0.5;
    v59 = v248 - v248 * v55;
    if (v248 * v55 < v58)
    {
      v59 = v248 * v55;
    }

    v55 = v59 + v59;
  }

  else
  {
    v57 = 0;
    if (v31)
    {
      v55 = 1.0 - v55;
    }
  }

  v60 = 0.0;
  v47 = a6;
LABEL_124:
  v77 = *&v41;
  if (v77 == 0.0 || (v78 = *(&v41 + 1), v78 == 0.0))
  {
    v81 = 0.0;
    v82 = v244[1];
    goto LABEL_145;
  }

  if (v244[0] == 4)
  {
    v79 = 50.0;
    v80 = 100.0;
  }

  else
  {
    if (v244[0] != 6)
    {
      v137 = v252 / 100.0 * 0.6;
      v138 = v50 * ((v137 * v137) * 0.5) + 2.0;
      v139 = v245 * (v51 * v138 / v50);
      v84 = 1.0;
      v140 = v51;
      v85 = fminf(fmaxf(v139, 1.0), v140);
      if (v244[1] != 13)
      {
        if (v244[1] == 16 || (v141 = v50, v84 = fminf(fmaxf(v138, 1.0), v141), v244[1] == 15))
        {
          v85 = 1.0;
        }
      }

      goto LABEL_132;
    }

    v79 = 40.0;
    v80 = 50.0;
  }

  v83 = v252 / 100.0;
  v84 = (v80 * v83) + 1.0;
  v85 = v245 * (v79 * v83) + 1.0;
LABEL_132:
  HGFractured::Effect::SetOriginPoint(a3, -*(a4 + 152), -*(a4 + 156));
  HGFractured::Effect::SetImpulse(a3, *(a4 + 160), *(a4 + 164));
  v86 = *&v41;
  v87 = *(&v41 + 1);
  if ((a10 & 1) == 0)
  {
    v86 = [v47 width];
    v87 = [v47 height];
  }

  v88 = HGRectMake4i(0, 0, v77, v78);
  v90 = v89;
  *&v259.var0 = v88;
  *&v259.var2 = v90;
  HGFractured::Effect::SetRect(a3, v259);
  v91 = HGRectMake4i(0, 0, v86, v87);
  v93 = v92;
  *&v260.var0 = v91;
  *&v260.var2 = v93;
  HGFractured::Effect::SetImageRect(a3, v260);
  HGFractured::Effect::SetSubdivide(a3, v84, v85);
  v82 = v244[1];
  v95 = (v244[1] & 0xFFFFFFFD) != 4 && (v244[1] - 12) < 0xFFFFFFFC;
  v96 = v155 & v95;
  if (v244[1] == 12)
  {
    v96 = 0;
  }

  if ((v96 & 1) != 0 || (v81 = 0.0, v244[1] == 14))
  {
    v81 = v240 * (fmaxf(v84, v85) * 5.0);
  }

LABEL_145:
  v97 = v82 - 5;
  v98 = (v82 - 5) < 7;
  v99 = v247;
  HGFractured::Effect::SetDelay(a3, v99);
  HGFractured::Effect::SetMode(a3, v244[1]);
  v100 = v249;
  HGFractured::Effect::SetExtrude(a3, v100);
  HGFractured::Effect::SetDual(a3, v57, v162 != 0.0);
  HGFractured::Effect::SetLeftHand(a3, v160 < 0.0);
  v101 = v251;
  v102 = v250;
  HGFractured::Effect::SetScale(a3, v101, v102);
  v103 = v157;
  if ((v98 & (0x47u >> v97)) != 0)
  {
    v103 = 0.0;
  }

  if (v244[0] > 6u)
  {
    HGFractured::Effect::SetShape(a3, 4, v103);
    NSLog(&cfstr_WarningFractur.isa);
  }

  else
  {
    HGFractured::Effect::SetShape(a3, dword_2603439DC[v244[0]], v103);
  }

  v104 = fabs(v55);
  if (v104 == 1.0)
  {
    v105 = 0.0;
  }

  else
  {
    v105 = 1.0;
  }

  v106 = fabs(v60);
  if (v106 == 1.0)
  {
    v107 = 0.0;
  }

  else
  {
    v107 = 1.0;
  }

  if (HIBYTE(v242) == 1)
  {
    v108 = a6;
    if (v244[1] <= 0x10u)
    {
      if (((1 << SLOBYTE(v244[1])) & 0x1F71F) != 0)
      {
        v109 = v104;
        v110 = fminf(fmaxf(v109, 0.0), 1.0);
        v105 = 1.0 - ((v110 * v110) * (3.0 - (v110 + v110)));
        v111 = v106;
        v112 = fminf(fmaxf(v111, 0.0), 1.0);
        v107 = 1.0 - ((v112 * v112) * (3.0 - (v112 + v112)));
      }

      else if (((1 << SLOBYTE(v244[1])) & 0x840) != 0)
      {
        v142 = v104;
        v143 = v142 + -0.5;
        v144 = 2.0;
        if (v55 < 0.5)
        {
          v144 = -2.0;
        }

        v145 = fminf(fmaxf(v143 * v144, 0.0), 1.0);
        v105 = (((v145 * v145) * (3.0 - (v145 + v145))) * 0.5) + 0.5;
        v146 = v106;
        v147 = v146 + -0.5;
        if (v60 >= 0.5)
        {
          v148 = v147 + v147;
        }

        else
        {
          v148 = v147 * -2.0;
        }

        v154 = fminf(fmaxf(v148, 0.0), 1.0);
        v107 = (((v154 * v154) * (3.0 - (v154 + v154))) * 0.5) + 0.5;
      }
    }
  }

  else
  {
    v108 = a6;
  }

  (*(*v46 + 576))(v46, 8);
  HGFractured::SetEffect(v46, a3);
  HGFractured::SetLighting(v46, v156 & 1);
  v113 = v55;
  v114 = v60;
  (*(*v46 + 96))(v46, 0, v113, v105, v114, v107);
  v115 = *&v256;
  v116 = *(&v256 + 1);
  v117 = *&v257;
  v118 = *(&v257 + 1);
  (*(*v46 + 96))(v46, 1, v115, v116, v117, v118);
  (*(*v46 + 96))(v46, 2, 0.0, 0.0, 0.0, 0.0);
  (*(*v46 + 96))(v46, 4, 0.0, 0.0, 1.0, 1.0);
  v119 = *&v253;
  v120 = *(&v253 + 1);
  v121 = v254;
  v122 = v255;
  (*(*v46 + 96))(v46, 5, v119, v120, v121, v122);
  (*(*v46 + 96))(v46, 6, -1.0, 1.0, 1.0, v81);
  *&v182 = v46;
  (*(*v46 + 16))(v46);
  if (HIBYTE(v241) == 1)
  {
    v123 = v246;
    v124 = [a2 apiForProtocol:&unk_28735AEE0];
    if (v124)
    {
      [v124 blendingGamma];
      v126 = v125;
    }

    else
    {
      v126 = 1.0;
    }

    v127 = v123;
    v128 = v127;
    if (v55 >= v127)
    {
      if (a10)
      {
        if (v57)
        {
          v130 = v55;
        }

        else
        {
          v130 = v60;
        }

        v131 = v206;
        if (v206)
        {
          (*(*v206 + 16))(v206);
        }

        v132 = 1.0 - v123;
        v133 = v130;
        if (v133 > v132)
        {
          v134 = (1.0 - v133) / (1.0 - v132);
          if (v57)
          {
            v135 = 1.0 - v134;
          }

          else
          {
            v135 = v134;
          }

          v136 = HGObject::operator new(0x220uLL);
          HGHWBlendFlipped::HGHWBlendFlipped(v136);
          (*(*v136 + 120))(v136, 0, v131);
          (*(*v136 + 120))(v136, 1, v182);
          (*(*v136 + 96))(v136, 0, 8.0, 0.0, 0.0, 0.0);
          (*(*v136 + 96))(v136, 1, v135, 0.0, 0.0, 0.0);
          (*(*v136 + 96))(v136, 5, v126, 0.0, 0.0, 0.0);
          if (v182 != v136)
          {
            if (v182)
            {
              (*(*v182 + 24))();
            }

            *&v182 = v136;
            (*(*v136 + 16))(v136);
          }

          (*(*v136 + 24))(v136);
        }

        if (v131)
        {
          (*(*v131 + 24))(v131);
        }
      }
    }

    else
    {
      v129 = v228;
      if (v228)
      {
        (*(*v228 + 16))(v228);
      }

      if ((a10 & 1) == 0)
      {
        *&v209 = 0;
        v208 = 0x3FF0000000000000uLL;
        *(&v209 + 1) = v164 * 0.5;
        v210 = xmmword_260342700;
        *&v211 = 0;
        *(&v211 + 1) = v165 * 0.5 * v161;
        v212 = 0uLL;
        memset(v213 + 8, 0, 32);
        *&v213[0] = 0x3FF0000000000000;
        *(&v213[2] + 1) = 0x3FF0000000000000;
        PCMatrix44Tmpl<double>::operator*(v232, &v208, &v194);
        PCMatrix44Tmpl<double>::operator*(&v194, v231, v207);
        if (v108)
        {
          [v108 heliumRef];
        }

        else
        {
          v168[0] = 0;
        }

        FxSupport::makeHeliumXForm(v207, v168, 1, 0, &v170);
        v149 = v170;
        if (v129 == v170)
        {
          if (v129)
          {
            (*(*v170 + 24))();
          }
        }

        else
        {
          if (v129)
          {
            (*(*v129 + 24))(v129);
            v149 = v170;
          }

          *&v170 = 0;
          v129 = v149;
        }

        if (v168[0])
        {
          (*(*v168[0] + 24))(v168[0]);
        }
      }

      v150 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v150);
      (*(*v150 + 120))(v150, 0, v129);
      (*(*v150 + 120))(v150, 1, v182);
      (*(*v150 + 96))(v150, 0, 8.0, 0.0, 0.0, 0.0);
      v151 = 1.0 - v55 / v128;
      (*(*v150 + 96))(v150, 1, v151, 0.0, 0.0, 0.0);
      (*(*v150 + 96))(v150, 5, v126, 0.0, 0.0, 0.0);
      if (v182 != v150)
      {
        if (v182)
        {
          (*(*v182 + 24))();
        }

        *&v182 = v150;
        (*(*v150 + 16))(v150);
      }

      (*(*v150 + 24))(v150);
      if (v129)
      {
        (*(*v129 + 24))(v129);
      }
    }
  }

  *&v209 = 0;
  v208 = 0x3FF0000000000000uLL;
  *(&v209 + 1) = v164 * -0.5;
  v210 = xmmword_260342700;
  *&v211 = 0;
  *(&v211 + 1) = v165 * -0.5 * v161;
  v212 = 0uLL;
  memset(v213 + 8, 0, 32);
  *&v213[0] = 0x3FF0000000000000;
  *(&v213[2] + 1) = 0x3FF0000000000000;
  PCMatrix44Tmpl<double>::operator*(v232, &v208, &v194);
  PCMatrix44Tmpl<double>::operator*(&v194, v231, v207);
  FxSupport::makeHeliumXForm(v207, &v182, 1, 0, &v170);
  v152 = v170;
  if (v182 == v170)
  {
    if (v182)
    {
      (*(*v170 + 24))(v170);
    }
  }

  else
  {
    if (v182)
    {
      (*(*v182 + 24))();
      v152 = v170;
    }

    *&v182 = v152;
  }

  [a5 setHeliumRef:&v182];
  if (v182)
  {
    (*(*v182 + 24))(v182);
  }

  if (v206)
  {
    (*(*v206 + 24))(v206);
  }

  if (v228)
  {
    (*(*v228 + 24))(v228);
  }

  (*(*v46 + 24))(v46);
  return 1;
}

void sub_25F9D84FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t PCMatrix44Tmpl<double>::operator*@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v4 = *(a2 + 15);
  v5 = *(a2 + 88);
  v6 = *(a2 + 56);
  v7 = *(a2 + 24);
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[2];
  v12 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v16 = *(a2 + 104);
  v17 = *(a2 + 72);
  v18 = *(a2 + 40);
  v19 = *(a2 + 8);
  do
  {
    v20 = (result + v3);
    v22 = vld4q_f64(v20);
    v23.val[0] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v22.val[0], *&v15), vmulq_n_f64(v22.val[1], *&v13)), vmulq_n_f64(v22.val[2], *&v11)), vmulq_n_f64(v22.val[3], *&v9));
    v23.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v22.val[0], *&v19), vmulq_n_f64(v22.val[1], *&v18)), vmulq_n_f64(v22.val[2], *&v17)), vmulq_n_f64(v22.val[3], *&v16));
    v23.val[2] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v22.val[0], *&v14), vmulq_n_f64(v22.val[1], *&v12)), vmulq_n_f64(v22.val[2], *&v10)), vmulq_n_f64(v22.val[3], *&v8));
    v23.val[3] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v22.val[0], *&v7), vmulq_n_f64(v22.val[1], *&v6)), vmulq_n_f64(v22.val[2], *&v5)), vmulq_n_f64(v22.val[3], v4));
    v21 = (a3 + v3);
    vst4q_f64(v21, v23);
    v3 += 64;
  }

  while (v3 != 128);
  return result;
}

void sub_25F9D9040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void FracturedUtils::FracturedFXPoolItem::~FracturedFXPoolItem(id *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

id FracturedUtils::FracturedFXPoolItem::UpdateLastUsedTime(FracturedUtils::FracturedFXPoolItem *this)
{
  v2 = *(this + 1);
  if (v2)
  {
  }

  result = [MEMORY[0x277CBEAA8] date];
  *(this + 1) = result;
  return result;
}

__n128 FracturedUtils::FracturedParams::FracturedParams(FracturedUtils::FracturedParams *this)
{
  *this = 0;
  *(this + 1) = 1114636288;
  *(this + 8) = 1;
  *(this + 12) = 0x101010100000001;
  *(this + 20) = 0x3F80000000000000;
  *(this + 7) = 2;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 4) = _D0;
  *(this + 72) = 1;
  *(this + 14) = _D0;
  *(this + 120) = 1;
  *(this + 124) = 0x13F800000;
  *(this + 132) = 0;
  *(this + 17) = 1036831949;
  *(this + 144) = 0;
  *(this + 37) = 1065353216;
  *(this + 19) = 0;
  *(this + 20) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(this + 40) = _Q0;
  *(this + 56) = xmmword_260342ED0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 5) = result;
  *(this + 6) = result;
  return result;
}

void sub_25F9DA2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  RandMersenne::~RandMersenne(&a9);
  v11 = *(v9 - 136);
  if (v11)
  {
    *(v9 - 128) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25F9DBB90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

double PAEKeyerDrawAlpha::renderPieEdgeSegment_GL@<D0>(void *a1@<X1>, void *a2@<X2>, float *a3@<X3>, char ***a4@<X4>, double *a5@<X8>)
{
  HGGLNode::hglBegin(*a4, 5);
  if (((a1[1] - *a1) >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (!v11)
      {
        v10.n128_u64[0] = 0;
        HGGLNode::hglColor4f(*a4, v10, 0.0, 0.0, 1.0);
        HGGLNode::hglVertex2f(*a4, *a3 * 256.0, a3[1] * 256.0);
      }

      v10.n128_u64[0] = 0;
      HGGLNode::hglColor4f(*a4, v10, 0.0, 0.0, 1.0);
      HGGLNode::hglVertex2f(*a4, *(*a2 + v11) * 256.0, *(*a2 + v11 + 4) * 256.0);
      v13.n128_u32[0] = 1.0;
      HGGLNode::hglColor4f(*a4, v13, 1.0, 1.0, 1.0);
      HGGLNode::hglVertex2f(*a4, *(*a1 + v11) * 256.0, *(*a1 + v11 + 4) * 256.0);
      ++v12;
      v11 += 8;
    }

    while (v12 < ((a1[1] - *a1) >> 3));
  }

  v10.n128_u64[0] = 0;
  HGGLNode::hglColor4f(*a4, v10, 0.0, 0.0, 1.0);
  HGGLNode::hglVertex2f(*a4, *(*a2 + 8 * v12) * 256.0, *(*a2 + 8 * v12 + 4) * 256.0);
  HGGLNode::hglEnd(*a4);
  result = *(*a2 + 8 * v12);
  *a5 = result;
  return result;
}

void PAEKeyerDrawAlpha::renderPieEdgeSegment_TolSoftQuad(float32x2_t *a1@<X1>, float32x2_t *a2@<X2>, float32x2_t *a3@<X3>, float32x2_t *a4@<X4>, float32x2_t *a5@<X5>, float32x2_t *a6@<X6>, float32x2_t *a7@<X7>, double *a8@<X8>, __n128 a9@<Q0>, float a10@<S1>, float32x2_t *a11, float *a12, float32x2_t **a13, float32x2_t **a14, int a15, char ***a16)
{
  v22 = a9.n128_f32[0];
  v24 = 0;
  v43 = 0;
  v44 = 0;
  a9.n128_u64[0] = 0;
  v36 = a9;
  v45 = 0;
  do
  {
    if (a15 == 2)
    {
      v25 = vadd_f32(*a2, vmul_n_f32(vsub_f32(*a4, *a2), v36.n128_f32[0]));
      __p = v25;
      if (v24 < v45)
      {
LABEL_10:
        *v24 = v25;
        v24[1] = HIDWORD(__p);
        v24 += 2;
        goto LABEL_14;
      }
    }

    else if (a15 == 1)
    {
      OMPie::getArcOut(a13, v36.n128_f32[0], &__p);
      v26 = v44;
      if (v44 < v45)
      {
        goto LABEL_12;
      }
    }

    else if (a15)
    {
      OMPie::getArcIn(a13, 1.0 - v36.n128_f32[0], &__p);
      v26 = v44;
      if (v44 < v45)
      {
LABEL_12:
        *v26 = __p;
        v24 = v26 + 1;
        goto LABEL_14;
      }
    }

    else
    {
      v25 = vadd_f32(*a3, vmul_n_f32(vsub_f32(*a1, *a3), v36.n128_f32[0]));
      __p = v25;
      if (v24 < v45)
      {
        goto LABEL_10;
      }
    }

    v24 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&v43, &__p);
LABEL_14:
    v44 = v24;
    v27 = v36;
    v27.n128_f32[0] = v36.n128_f32[0] + v22;
    v36 = v27;
  }

  while (v27.n128_f32[0] <= 1.0001);
  __p = 0;
  v41 = 0;
  v42 = 0;
  if (a10 < 0.9999)
  {
    v28 = 0;
    v27.n128_f32[0] = a10;
    v37 = v27;
    do
    {
      if (a15 == 2)
      {
        v29 = vadd_f32(*a6, vmul_n_f32(vsub_f32(*a11, *a6), v37.n128_f32[0]));
        v39 = v29;
        if (v28 >= v42)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (a15 == 1)
        {
          OMPie::getArcOut(a14, v37.n128_f32[0], &v39);
          v30 = v41;
          if (v41 >= v42)
          {
            goto LABEL_28;
          }

LABEL_27:
          *v30 = v39;
          v28 = v30 + 1;
          goto LABEL_29;
        }

        if (a15)
        {
          OMPie::getArcIn(a14, 1.0 - v37.n128_f32[0], &v39);
          v30 = v41;
          if (v41 >= v42)
          {
LABEL_28:
            v28 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&__p, &v39);
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        v29 = vadd_f32(*a7, vmul_n_f32(vsub_f32(*a5, *a7), v37.n128_f32[0]));
        v39 = v29;
        if (v28 >= v42)
        {
          goto LABEL_28;
        }
      }

      v28->i32[0] = v29.i32[0];
      v28->i32[1] = v39.i32[1];
      ++v28;
LABEL_29:
      v41 = v28;
      v31 = v37;
      v31.n128_f32[0] = v37.n128_f32[0] + a10;
      v37 = v31;
    }

    while (v31.n128_f32[0] < 0.9999);
  }

  v32 = *a16;
  v38 = v32;
  if (v32)
  {
    (*(*v32 + 2))(v32);
  }

  v33 = PAEKeyerDrawAlpha::renderPieEdgeSegment_GL(&v43, &__p, a12, &v38, a8);
  if (v32)
  {
    (*(*v32 + 3))(v32, v33);
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

void sub_25F9DC138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void PAEKeyerDrawAlpha::renderPieEdgeSegment_TolQuad(float32x2_t *a1@<X1>, float32x2_t *a2@<X2>, float32x2_t *a3@<X3>, float32x2_t *a4@<X4>, float32x2_t *a5@<X5>, float32x2_t *a6@<X6>, float32x2_t *a7@<X7>, double *a8@<X8>, __n128 a9@<Q0>, float a10@<S1>, float *a11, float32x2_t **a12, float32x2_t **a13, int a14, char ***a15)
{
  v22 = a9.n128_f32[0];
  v24 = 0;
  v42 = 0;
  v43 = 0;
  a9.n128_u64[0] = 0;
  v35 = a9;
  v44 = 0;
  do
  {
    if (a14 == 2)
    {
      v25 = vadd_f32(*a2, vmul_n_f32(vsub_f32(*a4, *a2), v35.n128_f32[0]));
      __p = v25;
      if (v24 < v44)
      {
LABEL_10:
        *v24 = v25;
        v24[1] = HIDWORD(__p);
        v24 += 2;
        goto LABEL_14;
      }
    }

    else if (a14 == 1)
    {
      OMPie::getArcOut(a12, v35.n128_f32[0], &__p);
      v26 = v43;
      if (v43 < v44)
      {
        goto LABEL_12;
      }
    }

    else if (a14)
    {
      OMPie::getArcIn(a12, 1.0 - v35.n128_f32[0], &__p);
      v26 = v43;
      if (v43 < v44)
      {
LABEL_12:
        *v26 = __p;
        v24 = v26 + 1;
        goto LABEL_14;
      }
    }

    else
    {
      v25 = vadd_f32(*a3, vmul_n_f32(vsub_f32(*a1, *a3), v35.n128_f32[0]));
      __p = v25;
      if (v24 < v44)
      {
        goto LABEL_10;
      }
    }

    v24 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&v42, &__p);
LABEL_14:
    v43 = v24;
    v27 = v35;
    v27.n128_f32[0] = v35.n128_f32[0] + v22;
    v35 = v27;
  }

  while (v27.n128_f32[0] <= 1.0001);
  __p = 0;
  v40 = 0;
  v41 = 0;
  if (a10 < 0.9999)
  {
    v28 = 0;
    v27.n128_f32[0] = a10;
    v36 = v27;
    while (a14 != 2)
    {
      if (a14 != 1)
      {
        if (a14)
        {
          v29 = vadd_f32(*a7, vmul_n_f32(vsub_f32(*a5, *a7), 1.0 - a10));
          v38 = v29;
          if (v28 >= v41)
          {
LABEL_28:
            v28 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&__p, &v38);
            goto LABEL_29;
          }
        }

        else
        {
          v29 = vadd_f32(*a5, vmul_n_f32(vsub_f32(*a6, *a5), v36.n128_f32[0]));
          v38 = v29;
          if (v28 >= v41)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_27;
      }

      OMPie::getArcOut(a13, v36.n128_f32[0], &v38);
      v30 = v40;
      if (v40 >= v41)
      {
        goto LABEL_28;
      }

      *v40 = v38.i32[0];
      v30[1] = v38.i32[1];
      v28 = v30 + 2;
LABEL_29:
      v40 = v28;
      v31 = v36;
      v31.n128_f32[0] = v36.n128_f32[0] + a10;
      v36 = v31;
      if (v31.n128_f32[0] >= 0.9999)
      {
        goto LABEL_30;
      }
    }

    v29 = vadd_f32(*a7, vmul_n_f32(vsub_f32(*a5, *a7), v36.n128_f32[0]));
    v38 = v29;
    if (v28 >= v41)
    {
      goto LABEL_28;
    }

LABEL_27:
    *v28 = v29.i32[0];
    v28[1] = v38.i32[1];
    v28 += 2;
    goto LABEL_29;
  }

LABEL_30:
  v32 = *a15;
  v37 = v32;
  if (v32)
  {
    (*(*v32 + 2))(v32);
  }

  v33 = PAEKeyerDrawAlpha::renderPieEdgeSegment_GL(&v42, &__p, a11, &v37, a8);
  if (v32)
  {
    (*(*v32 + 3))(v32, v33);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_25F9DC588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void PAEKeyerDrawAlpha::renderPieEdgeSegment_noQuad(float32x2_t *a1@<X1>, float32x2_t *a2@<X2>, float32x2_t *a3@<X3>, float32x2_t *a4@<X4>, float32x2_t *a5@<X5>, float32x2_t *a6@<X6>, float *a7@<X7>, double *a8@<X8>, __n128 a9@<Q0>, float a10@<S1>, float32x2_t **a11, float32x2_t **a12, int a13, char ***a14)
{
  v20 = a9.n128_f32[0];
  v22 = 0;
  v41 = 0;
  v42 = 0;
  a9.n128_u64[0] = 0;
  v34 = a9;
  v43 = 0;
  do
  {
    if (a13 == 1)
    {
      OMPie::getArcOut(a11, v34.n128_f32[0], &__p);
      v24 = v42;
      if (v42 < v43)
      {
        *v42 = __p;
        v24[1] = HIDWORD(__p);
        v22 = v24 + 2;
        goto LABEL_11;
      }
    }

    else if (a13)
    {
      v23 = vadd_f32(*a3, vmul_n_f32(vsub_f32(*a1, *a3), v34.n128_f32[0]));
      __p = v23;
      if (v22 < v43)
      {
LABEL_9:
        *v22 = v23;
        v22[1] = HIDWORD(__p);
        v22 += 2;
        goto LABEL_11;
      }
    }

    else
    {
      v23 = vadd_f32(*a1, vmul_n_f32(vsub_f32(*a2, *a1), v34.n128_f32[0]));
      __p = v23;
      if (v22 < v43)
      {
        goto LABEL_9;
      }
    }

    v22 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&v41, &__p);
LABEL_11:
    v42 = v22;
    v25 = v34;
    v25.n128_f32[0] = v34.n128_f32[0] + v20;
    v34 = v25;
  }

  while (v25.n128_f32[0] <= 1.0001);
  __p = 0;
  v39 = 0;
  v40 = 0;
  if (a10 < 0.9999)
  {
    v26 = 0;
    v25.n128_f32[0] = a10;
    v35 = v25;
    do
    {
      if (a13 == 1)
      {
        OMPie::getArcOut(a12, v35.n128_f32[0], &v37);
        v28 = v39;
        if (v39 >= v40)
        {
          goto LABEL_22;
        }

        *v39 = v37.i32[0];
        v28[1] = v37.i32[1];
        v26 = v28 + 2;
      }

      else
      {
        if (a13)
        {
          v27 = vadd_f32(*a6, vmul_n_f32(vsub_f32(*a4, *a6), v35.n128_f32[0]));
          v37 = v27;
          if (v26 >= v40)
          {
LABEL_22:
            v26 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&__p, &v37);
            goto LABEL_23;
          }
        }

        else
        {
          v27 = vadd_f32(*a4, vmul_n_f32(vsub_f32(*a5, *a4), v35.n128_f32[0]));
          v37 = v27;
          if (v26 >= v40)
          {
            goto LABEL_22;
          }
        }

        *v26 = v27.i32[0];
        v26[1] = v37.i32[1];
        v26 += 2;
      }

LABEL_23:
      v39 = v26;
      v29 = v35;
      v29.n128_f32[0] = v35.n128_f32[0] + a10;
      v35 = v29;
    }

    while (v29.n128_f32[0] < 0.9999);
  }

  v30 = *a14;
  v36 = v30;
  if (v30)
  {
    (*(*v30 + 2))(v30);
  }

  v31 = PAEKeyerDrawAlpha::renderPieEdgeSegment_GL(&v41, &__p, a7, &v36, a8);
  if (v30)
  {
    (*(*v30 + 3))(v30, v31);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_25F9DC93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void PAEKeyerDrawAlpha::drawAlpha_in_HGGLNode(uint64_t a1, uint64_t a2, HGGLNode **a3)
{
  v5 = (*(*a2 + 96))(a2);
  OMPie::computeArc(v5, v6, v7);
  v8 = (*(*a2 + 112))(a2);
  OMPie::computeArc(v8, v9, v10);
  v168 = **((*(*a2 + 96))(a2) + 40);
  v136 = *(*((*(*a2 + 96))(a2) + 40) + 8);
  v167 = v136;
  v166 = *(*((*(*a2 + 96))(a2) + 40) + 16);
  v11 = *((*(*a2 + 96))(a2) + 40);
  v13 = *(v11 + 24);
  v12 = *(v11 + 28);
  v165 = __PAIR64__(LODWORD(v12), LODWORD(v13));
  v14 = *((*(*a2 + 96))(a2) + 40);
  v15 = *(v14 + 32);
  v16 = *(v14 + 36);
  v164 = __PAIR64__(LODWORD(v16), LODWORD(v15));
  v163 = **((*(*a2 + 112))(a2) + 40);
  v17 = (*(*a2 + 112))(a2);
  v18 = *(*a2 + 112);
  v19 = *(*(v17 + 40) + 8);
  v162 = v19;
  v20 = *(*(v18(a2) + 40) + 16);
  v161 = v20;
  v160 = *(*((*(*a2 + 112))(a2) + 40) + 24);
  v159 = *(*((*(*a2 + 112))(a2) + 40) + 32);
  v21 = (*(*a2 + 96))(a2);
  isQuadActive = OMPie::isQuadActive(v21);
  v23 = (*(*a2 + 112))(a2);
  v24 = OMPie::isQuadActive(v23);
  v26 = !v24;
  if (!isQuadActive || (v26 & 1) != 0)
  {
    if (((isQuadActive | v26) & 1) == 0)
    {
      return;
    }

    v135 = v20;
    v65 = !isQuadActive || v24;
    v25.n128_u32[0] = 1.0;
    HGGLNode::hglColor4f(*a3, v25, 1.0, 1.0, 1.0);
    HGGLNode::hglBegin(*a3, 5);
    if (v65)
    {
      v66 = vmuls_lane_f32(256.0, v136, 1);
      v67 = 0.0;
      do
      {
        v68 = (*(*a2 + 96))(a2);
        OMPie::getArcOut(v68, v67, &v152);
        HGGLNode::hglVertex2f(*a3, *&v152 * 256.0, *(&v152 + 1) * 256.0);
        HGGLNode::hglVertex2f(*a3, 256.0 * v136.f32[0], v66);
        v67 = v67 + 0.02;
      }

      while (v67 <= 1.0);
      HGGLNode::hglEnd(*a3);
      v69 = (*(*a2 + 96))(a2);
      OMPie::getArcOut(v69, 0.01, &v152);
      v168 = v152;
      v70 = (*(*a2 + 96))(a2);
      OMPie::getArcOut(v70, 0.99, &v152);
      v71 = vsub_f32(v168, v136);
      v72 = vmul_f32(v71, v71);
      v72.f32[0] = sqrtf(vaddv_f32(v72));
      v73 = vdup_n_s32(0x3F75C28Fu);
      v168 = vadd_f32(v136, vmul_f32(vmul_n_f32(vdiv_f32(v71, vdup_lane_s32(v72, 0)), v72.f32[0]), v73));
      v74 = vsub_f32(*&v152, v136);
      v75 = vmul_f32(v74, v74);
      v75.f32[0] = sqrtf(vaddv_f32(v75));
      v166 = vadd_f32(v136, vmul_f32(vmul_n_f32(vdiv_f32(v74, vdup_lane_s32(v75, 0)), v75.f32[0]), v73));
      v76 = (*(*a2 + 96))(a2);
      OMPie::getArcOut(v76, 0.5, &v158);
      v77 = vsub_f32(v136, v158);
      v78 = vmul_f32(v77, v77);
      v78.f32[0] = sqrtf(vaddv_f32(v78));
      v79 = vdiv_f32(v77, vdup_lane_s32(v78, 0));
      v80 = vsub_f32(v158, v136);
      v81 = vadd_f32(v158, vmul_f32(vmul_n_f32(v79, sqrtf(vaddv_f32(vmul_f32(v80, v80)))), v73));
      v167 = v81;
      v82 = (*(*a2 + 96))(a2);
      v83 = *(v82 + 32);
      v84 = *(v82 + 16);
      v152 = *v82;
      v153 = v84;
      v154 = v83;
      v156 = 0;
      v157 = 0;
      __p = 0;
      std::vector<Vec2f>::__init_with_size[abi:ne200100]<Vec2f*,Vec2f*>(&__p, *(v82 + 40), *(v82 + 48), (*(v82 + 48) - *(v82 + 40)) >> 3);
      v85 = __p;
      *__p = v168;
      v86 = v166;
      v85[1] = v81;
      v85[2] = v86;
      OMPie::computeArc(&v152, v87, v88);
      v151 = vadd_f32(v135, vmul_f32(vsub_f32(v19, v135), vdup_n_s32(0x3F7B2B79u)));
      v89 = (*(*a2 + 112))(a2);
      v91 = *a3;
      v141 = v91;
      if (v91)
      {
        v90 = (*(*v91 + 16))(v91);
      }

      v90.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_noQuad(&v167, &v168, &v166, &v162, &v163, &v161, &v151, &v142, v90, 0.018868, &v152, v89, 0, &v141);
      v151 = v142;
      if (v91)
      {
        (*(*v91 + 24))(v91);
      }

      v92 = (*(*a2 + 112))(a2);
      v94 = *a3;
      v140 = v94;
      if (v94)
      {
        v93 = (*(*v94 + 16))(v94);
      }

      v93.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_noQuad(&v167, &v168, &v166, &v162, &v163, &v161, &v151, &v142, v93, 0.018868, &v152, v92, 1, &v140);
      v151 = v142;
      if (v94)
      {
        (*(*v94 + 24))(v94);
      }

      v95 = (*(*a2 + 112))(a2);
      v97 = *a3;
      v139 = v97;
      if (v97)
      {
        v96 = (*(*v97 + 16))(v97);
      }

      v96.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_noQuad(&v167, &v168, &v166, &v162, &v163, &v161, &v151, &v142, v96, 0.018868, &v152, v95, 2, &v139);
      v151 = v142;
      if (v97)
      {
        (*(*v97 + 24))(v97);
      }
    }

    else
    {
      v138 = v15;
      v98 = 0.0;
      do
      {
        v99 = (*(*a2 + 96))(a2);
        OMPie::getArcIn(v99, v98, &v152);
        v100 = (*(*a2 + 96))(a2);
        OMPie::getArcOut(v100, v98, &v158);
        HGGLNode::hglVertex2f(*a3, v158.f32[0] * 256.0, v158.f32[1] * 256.0);
        HGGLNode::hglVertex2f(*a3, *&v152 * 256.0, *(&v152 + 1) * 256.0);
        v98 = v98 + 0.02;
      }

      while (v98 <= 1.0);
      HGGLNode::hglEnd(*a3);
      *&v152 = 1065353216;
      OMUtil::angle2PI(&v152, &v168, v101);
      v103 = v102;
      *&v152 = 1065353216;
      OMUtil::angle2PI(&v152, &v166, v104);
      v106 = v105;
      v107 = sqrtf((v168.var0[0] * v168.var0[0]) + (v168.var0[1] * v168.var0[1])) * 0.99;
      v108 = __sincosf_stret(v103 + 0.01);
      v168.var0[0] = v108.__cosval * v107;
      v168.var0[1] = v108.__sinval * v107;
      v109 = sqrtf((v13 * v13) + (v12 * v12)) * 1.01;
      v110 = v109 * v108.__cosval;
      v111 = v109 * v108.__sinval;
      *&v165 = v109 * v108.__cosval;
      *(&v165 + 1) = v109 * v108.__sinval;
      v112 = sqrtf((v166.var0[0] * v166.var0[0]) + (v166.var0[1] * v166.var0[1])) * 0.99;
      v113 = __sincosf_stret(v106 + -0.01);
      v166.var0[0] = v113.__cosval * v112;
      v166.var0[1] = v113.__sinval * v112;
      v114 = sqrtf((v138 * v138) + (v16 * v16)) * 1.01;
      v115 = v114 * v113.__cosval;
      v116 = v114 * v113.__sinval;
      *&v164 = v114 * v113.__cosval;
      *(&v164 + 1) = v114 * v113.__sinval;
      v117 = (*(*a2 + 96))(a2);
      v118 = *(v117 + 32);
      v119 = *(v117 + 16);
      v152 = *v117;
      v153 = v119;
      v154 = v118;
      v156 = 0;
      v157 = 0;
      __p = 0;
      std::vector<Vec2f>::__init_with_size[abi:ne200100]<Vec2f*,Vec2f*>(&__p, *(v117 + 40), *(v117 + 48), (*(v117 + 48) - *(v117 + 40)) >> 3);
      v120 = __p;
      *__p = v168;
      v120[3].var0[0] = v110;
      v120[3].var0[1] = v111;
      v120[2] = v166;
      v120[4].var0[0] = v115;
      v120[4].var0[1] = v116;
      OMPie::computeArc(&v152, v121, v122);
      v158 = vadd_f32(v135, vmul_f32(vsub_f32(v19, v135), vdup_n_s32(0x3F7B2B79u)));
      v123 = (*(*a2 + 112))(a2);
      v125 = *a3;
      v146 = v125;
      if (v125)
      {
        v124 = (*(*v125 + 16))(v125);
      }

      v124.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_TolQuad(&v168, &v166, &v165, &v164, &v162, &v163, &v161, &v151, v124, 0.018868, &v158, &v152, v123, 0, &v146);
      v158 = v151;
      if (v125)
      {
        (*(*v125 + 24))(v125);
      }

      v126 = (*(*a2 + 112))(a2);
      v128 = *a3;
      v145 = v128;
      if (v128)
      {
        v127 = (*(*v128 + 16))(v128);
      }

      v127.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_TolQuad(&v168, &v166, &v165, &v164, &v162, &v163, &v161, &v151, v127, 0.018868, &v158, &v152, v126, 1, &v145);
      v158 = v151;
      if (v128)
      {
        (*(*v128 + 24))(v128);
      }

      v129 = (*(*a2 + 112))(a2);
      v131 = *a3;
      v144 = v131;
      if (v131)
      {
        v130 = (*(*v131 + 16))(v131);
      }

      v130.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_TolQuad(&v168, &v166, &v165, &v164, &v162, &v163, &v161, &v151, v130, 0.018868, &v158, &v152, v129, 2, &v144);
      v158 = v151;
      if (v131)
      {
        (*(*v131 + 24))(v131);
      }

      v132 = (*(*a2 + 112))(a2);
      v134 = *a3;
      v143 = v134;
      if (v134)
      {
        v133 = (*(*v134 + 16))(v134);
      }

      v133.n128_u32[0] = 1017370378;
      PAEKeyerDrawAlpha::renderPieEdgeSegment_TolQuad(&v168, &v166, &v165, &v164, &v162, &v163, &v161, &v151, v133, 0.018868, &v158, &v152, v132, 3, &v143);
      v158 = v151;
      if (v134)
      {
        (*(*v134 + 24))(v134);
      }
    }
  }

  else
  {
    v137 = v15;
    v25.n128_u32[0] = 1.0;
    HGGLNode::hglColor4f(*a3, v25, 1.0, 1.0, 1.0);
    HGGLNode::hglBegin(*a3, 5);
    v27 = 0.0;
    do
    {
      v28 = (*(*a2 + 96))(a2);
      OMPie::getArcIn(v28, v27, &v152);
      v29 = (*(*a2 + 96))(a2);
      OMPie::getArcOut(v29, v27, &v158);
      HGGLNode::hglVertex2f(*a3, v158.f32[0] * 256.0, v158.f32[1] * 256.0);
      HGGLNode::hglVertex2f(*a3, *&v152 * 256.0, *(&v152 + 1) * 256.0);
      v27 = v27 + 0.02;
    }

    while (v27 <= 1.0);
    HGGLNode::hglEnd(*a3);
    *&v152 = 1065353216;
    OMUtil::angle2PI(&v152, &v168, v30);
    v32 = v31;
    *&v152 = 1065353216;
    OMUtil::angle2PI(&v152, &v166, v33);
    v35 = v34;
    v36 = sqrtf((v168.var0[0] * v168.var0[0]) + (v168.var0[1] * v168.var0[1])) * 0.99;
    v37 = __sincosf_stret(v32 + 0.01);
    v168.var0[0] = v37.__cosval * v36;
    v168.var0[1] = v37.__sinval * v36;
    v38 = sqrtf((v13 * v13) + (v12 * v12)) * 1.01;
    v39 = v38 * v37.__cosval;
    v40 = v38 * v37.__sinval;
    *&v165 = v38 * v37.__cosval;
    *(&v165 + 1) = v38 * v37.__sinval;
    v41 = sqrtf((v166.var0[0] * v166.var0[0]) + (v166.var0[1] * v166.var0[1])) * 0.99;
    v42 = __sincosf_stret(v35 + -0.01);
    v166.var0[0] = v42.__cosval * v41;
    v166.var0[1] = v42.__sinval * v41;
    v43 = sqrtf((v137 * v137) + (v16 * v16)) * 1.01;
    v44 = v43 * v42.__cosval;
    v45 = v43 * v42.__sinval;
    *&v164 = v43 * v42.__cosval;
    *(&v164 + 1) = v43 * v42.__sinval;
    v46 = (*(*a2 + 96))(a2);
    v47 = *(v46 + 32);
    v48 = *(v46 + 16);
    v152 = *v46;
    v153 = v48;
    v154 = v47;
    v156 = 0;
    v157 = 0;
    __p = 0;
    std::vector<Vec2f>::__init_with_size[abi:ne200100]<Vec2f*,Vec2f*>(&__p, *(v46 + 40), *(v46 + 48), (*(v46 + 48) - *(v46 + 40)) >> 3);
    v49 = __p;
    *__p = v168;
    v49[3].var0[0] = v39;
    v49[3].var0[1] = v40;
    v49[2] = v166;
    v49[4].var0[0] = v44;
    v49[4].var0[1] = v45;
    OMPie::computeArc(&v152, v50, v51);
    v52 = (*(*a2 + 112))(a2);
    OMPie::getArcIn(v52, 0.018868, &v158);
    v53 = (*(*a2 + 112))(a2);
    v55 = *a3;
    v150 = v55;
    if (v55)
    {
      v54 = (*(*v55 + 16))(v55);
    }

    v54.n128_u32[0] = 1017370378;
    PAEKeyerDrawAlpha::renderPieEdgeSegment_TolSoftQuad(&v168, &v166, &v165, &v164, &v163, &v161, &v160, &v151, v54, 0.018868, &v159, &v158, &v152, v53, 0, &v150);
    v158 = v151;
    if (v55)
    {
      (*(*v55 + 24))(v55);
    }

    v56 = (*(*a2 + 112))(a2);
    v58 = *a3;
    v149 = v58;
    if (v58)
    {
      v57 = (*(*v58 + 16))(v58);
    }

    v57.n128_u32[0] = 1017370378;
    PAEKeyerDrawAlpha::renderPieEdgeSegment_TolSoftQuad(&v168, &v166, &v165, &v164, &v163, &v161, &v160, &v151, v57, 0.018868, &v159, &v158, &v152, v56, 1, &v149);
    v158 = v151;
    if (v58)
    {
      (*(*v58 + 24))(v58);
    }

    v59 = (*(*a2 + 112))(a2);
    v61 = *a3;
    v148 = v61;
    if (v61)
    {
      v60 = (*(*v61 + 16))(v61);
    }

    v60.n128_u32[0] = 1017370378;
    PAEKeyerDrawAlpha::renderPieEdgeSegment_TolSoftQuad(&v168, &v166, &v165, &v164, &v163, &v161, &v160, &v151, v60, 0.018868, &v159, &v158, &v152, v59, 2, &v148);
    v158 = v151;
    if (v61)
    {
      (*(*v61 + 24))(v61);
    }

    v62 = (*(*a2 + 112))(a2);
    v64 = *a3;
    v147 = v64;
    if (v64)
    {
      v63 = (*(*v64 + 16))(v64);
    }

    v63.n128_u32[0] = 1017370378;
    PAEKeyerDrawAlpha::renderPieEdgeSegment_TolSoftQuad(&v168, &v166, &v165, &v164, &v163, &v161, &v160, &v151, v63, 0.018868, &v159, &v158, &v152, v62, 3, &v147);
    v158 = v151;
    if (v64)
    {
      (*(*v64 + 24))(v64);
    }
  }

  if (__p)
  {
    v156 = __p;
    operator delete(__p);
  }
}