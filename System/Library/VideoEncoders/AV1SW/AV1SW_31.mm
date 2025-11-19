void *sub_277AE313C(uint64_t *a1, int a2, int a3, int a4)
{
  v8 = 8 * a4;
  v9 = a3 - 1;
  if (a3 >= 1)
  {
    v10 = a3;
    v11 = a1;
    v12 = a3;
    do
    {
      v13 = *v11;
      *(v11 - 2) = *v11;
      *(v11 - 1) = v13;
      v11 = (v11 + v8);
      --v12;
    }

    while (v12);
    v14 = &a1[a2];
    do
    {
      v15 = &v14[-1].f64[1];
      v16 = vld1q_dup_f64(v15);
      *v14 = v16;
      v14 = (v14 + v8);
      --v10;
    }

    while (v10);
  }

  v17 = 8 * a2;
  v18 = &a1[-2 * a4 - 2];
  v19 = 2;
  do
  {
    memcpy(v18, a1 - 2, v17 + 32);
    v18 += v8;
    --v19;
  }

  while (v19);
  v20 = &a1[v9 * a4 - 2];
  v21 = &a1[a4 * a3 - 2];
  v22 = 2;
  do
  {
    result = memcpy(v21, v20, v17 + 32);
    v21 += v8;
    --v22;
  }

  while (v22);
  return result;
}

char *sub_277AE3238(uint64_t a1, int a2, int a3, int a4, double *__src)
{
  if (a3 <= 0)
  {
    v10 = a4;
  }

  else
  {
    v9 = 0;
    v10 = a4;
    v11 = a3;
    v12 = -2;
    v13 = -1;
    do
    {
      if (a2 >= 1)
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        do
        {
          v17 = 0;
          v18 = 0.0;
          v19 = v16;
          do
          {
            v18 = v18 + *(a1 + 8 * v19++) * *&qword_277C2FDE8[v17++];
          }

          while (v17 != 4);
          v20 = 0;
          __src[2 * v14 + v9 * a4] = v18 + v18;
          v21 = 0.0;
          v22 = v15;
          do
          {
            v21 = v21 + *(a1 + 8 * v22) * *&qword_277C2FDE8[v20 + 4];
            ++v20;
            ++v22;
          }

          while (v20 != 4);
          __src[2 * v14++ + 1 + v9 * a4] = v21 + v21;
          ++v16;
          ++v15;
        }

        while (v14 != a2);
      }

      ++v9;
      v12 += a4;
      v13 += a4;
    }

    while (v9 != v11);
  }

  v43 = 2 * a2;
  v23 = 16 * a2;
  v24 = 8 * v10;
  v25 = 2;
  v26 = -16 * v10;
  do
  {
    memcpy(__src + v26, __src, v23);
    v26 += v24;
    --v25;
  }

  while (v25);
  v27 = &__src[(a3 - 1) * a4];
  v28 = &__src[v10 * a3];
  v29 = 2;
  do
  {
    result = memcpy(v28, v27, v23);
    v28 = (v28 + v24);
    --v29;
  }

  while (v29);
  if (a3 >= 1)
  {
    v31 = 0;
    if (v43 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v43;
    }

    v33 = &__src[-2 * v10];
    v34 = &__src[-v10];
    do
    {
      if (a2 >= 1)
      {
        v35 = 0;
        v36 = v34;
        v37 = v33;
        do
        {
          v38 = 0;
          v39 = 0.0;
          v40 = v37;
          do
          {
            v39 = v39 + *v40 * *&qword_277C2FDE8[v38++];
            v40 = (v40 + v24);
          }

          while (v38 != 4);
          result = 0;
          *(a1 + 8 * 2 * v31 * v10 + 8 * v35) = v39;
          v41 = 0.0;
          v42 = v36;
          do
          {
            v41 = v41 + *v42 * *(&qword_277C2FDE8[4] + result);
            result += 8;
            v42 = (v42 + v24);
          }

          while (result != 32);
          *(a1 + 8 * ((2 * (v31 & 0x3FFFFFFFFFFFFFFFLL)) | 1) * v10 + 8 * v35++) = v41;
          ++v37;
          ++v36;
        }

        while (v35 != v32);
      }

      ++v31;
      v33 = (v33 + v24);
      v34 = (v34 + v24);
    }

    while (v31 != a3);
  }

  return result;
}

__int16 sub_277AE34C8@<H0>(int32x4_t *a1@<X0>, uint64_t a2@<X1>, int32x4_t *a3@<X2>, int32x4_t *a4@<X3>, __int16 *a5@<X4>, int16x8_t *a6@<X5>, signed int a7@<W6>, int16x4_t a8@<D0>, int16x4_t a9@<D1>, int16x4_t a10@<D2>, int16x4_t a11@<D3>, int16x4_t a12@<D4>)
{
  v18 = vshl_n_s16(vdup_n_s16(a7 > 0), 0xFuLL);
  v19 = vcltz_s16(v18);
  v68 = vshll_n_s16(a10, 0xFuLL);
  v66 = vmovl_s16(vbsl_s8(v19, vqrdmulh_s16(a8, vdup_n_s16(1 << (15 - a7))), a8));
  v20 = vdupq_lane_s32(*v66.i8, 1);
  v21 = a2;
  v22 = a2;
  do
  {
    if (vaddvq_s32(vcgeq_s32(vabsq_s32(*(a1 + 4 * v21 - 16)), v20)) + vaddvq_s32(vcgeq_s32(vabsq_s32(*(a1 + 4 * v21 - 32)), v20)))
    {
      v23 = 1;
    }

    else
    {
      v21 -= 8;
      v22 -= 8;
      v23 = v21 <= 0;
    }
  }

  while (!v23);
  v18.i32[0] = 1 << (15 - a7);
  v24 = vbsl_s8(v19, vqrdmulh_lane_s16(a9, v18, 0), a9);
  v63 = vshll_n_s16(a11, 0xFuLL);
  v64 = vmovl_s16(a12);
  v25 = 4 * (a2 - v22);
  v67 = v20;
  bzero(a3 + 4 * v22, v25);
  bzero(a4 + 4 * v22, v25);
  v26 = vcltzq_s32(*a1);
  v27 = vabsq_s32(*a1);
  v28 = vcgtq_s32(v66, v27);
  v29 = vdupq_n_s32(a7);
  v30 = vshlq_n_s32(vaddw_s16(v27, v24), 5uLL);
  v31 = vbicq_s8(vshrq_n_s32(vqdmulhq_s32(vshlq_s32(vaddq_s32(v30, vqdmulhq_s32(v30, v68)), v29), v63), 5uLL), v28);
  v32 = vnegq_s32(v29);
  *a3 = vsubq_s32(veorq_s8(v31, v26), v26);
  *a4 = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v31, v64), v32), v26), v26);
  v33 = vdupq_lane_s32(*&vmovl_s16(v24), 1);
  v34 = a1[1];
  v35 = vcltzq_s32(v34);
  v36 = vabsq_s32(v34);
  v37 = vcgtq_s32(v67, v36);
  v38 = vshlq_n_s32(vaddq_s32(v36, v33), 5uLL);
  v39 = vbicq_s8(vshrq_n_s32(vqdmulhq_lane_s32(vshlq_s32(vaddq_s32(v38, vqdmulhq_lane_s32(v38, *v68.i8, 1)), v29), *v63.i8, 1), 5uLL), v37);
  a3[1] = vsubq_s32(veorq_s8(v39, v35), v35);
  a4[1] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v39, vmovl_s16(vdup_lane_s16(a12, 1))), v32), v35), v35);
  v40.i64[0] = 0x1000100010001;
  v40.i64[1] = 0x1000100010001;
  v41 = vandq_s8(vaddq_s16(*a6, v40), vuzp1q_s16(vcgtzq_s32(v31), vcgtzq_s32(v39)));
  v39.i64[0] = -1;
  v39.i64[1] = -1;
  v42 = vmaxq_s16(v41, v39);
  if (v22 >= 9)
  {
    v43 = v22 + 8;
    v44 = vdupq_lane_s32(*v64.i8, 1);
    v45 = a1 + 3;
    v46 = a3 + 3;
    v47 = a4 + 3;
    v48 = a6 + 1;
    do
    {
      v49 = v45[-1];
      v50 = vcltzq_s32(v49);
      v51 = vabsq_s32(v49);
      v52 = vcgtq_s32(v67, v51);
      v53 = vshlq_n_s32(vaddq_s32(v51, v33), 5uLL);
      v54 = vbicq_s8(vshrq_n_s32(vqdmulhq_lane_s32(vshlq_s32(vaddq_s32(v53, vqdmulhq_lane_s32(v53, *v68.i8, 1)), v29), *v63.i8, 1), 5uLL), v52);
      v46[-1] = vsubq_s32(veorq_s8(v54, v50), v50);
      v47[-1] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v54, v44), v32), v50), v50);
      v55 = *v45;
      v45 += 2;
      v56 = vcltzq_s32(v55);
      v57 = vabsq_s32(v55);
      v58 = vcgtq_s32(v67, v57);
      v59 = vshlq_n_s32(vaddq_s32(v57, v33), 5uLL);
      v60 = vbicq_s8(vshrq_n_s32(vqdmulhq_lane_s32(vshlq_s32(vaddq_s32(v59, vqdmulhq_lane_s32(v59, *v68.i8, 1)), v29), *v63.i8, 1), 5uLL), v58);
      *v46 = vsubq_s32(veorq_s8(v60, v56), v56);
      v46 += 2;
      *v47 = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v60, v44), v32), v56), v56);
      v47 += 2;
      v61 = *v48++;
      v43 -= 8;
      v42 = vmaxq_s16(v42, vandq_s8(vaddq_s16(v61, v40), vuzp1q_s16(vcgtzq_s32(v54), vcgtzq_s32(v60))));
    }

    while (v43 > 0x10);
  }

  result = vmaxvq_s16(v42);
  *a5 = result;
  return result;
}

void sub_277AE37D4(int32x4_t *a1, uint64_t a2, int16x4_t *a3, int32x4_t *a4, int32x4_t *a5, int16x4_t *a6, _WORD *a7, uint64_t a8, int16x4_t a9, int16x4_t a10, int16x4_t a11, double a12, int16x4_t a13, int8x16_t *a14, int a15)
{
  v18 = a4;
  v20 = a1;
  v79 = *MEMORY[0x277D85DE8];
  v21 = vcltz_s16(vshl_n_s16(vdup_n_s16(a15 > 0), 0xFuLL));
  a13.i32[0] = 1 << (15 - a15);
  v74 = vmovl_s16(vbsl_s8(v21, vqrdmulh_s16(*a3, vdup_n_s16(a13.u32[0])), *a3));
  v75 = vshll_n_s16(a10, 0xFuLL);
  v76 = vdupq_lane_s32(*v74.i8, 1);
  v22 = vaddq_s32(vdupq_n_s32((325 * HIWORD(a6->u32[0]) + 2048) >> 12), v76);
  v23 = a2;
  v24 = a2;
  do
  {
    if (vaddvq_s32(vcgeq_s32(vabsq_s32(*(a1 + 4 * v23 - 16)), v22)) + vaddvq_s32(vcgeq_s32(vabsq_s32(*(a1 + 4 * v23 - 32)), v22)))
    {
      v25 = 1;
    }

    else
    {
      v23 -= 8;
      v24 -= 8;
      v25 = v23 <= 0;
    }
  }

  while (!v25);
  v26 = vbsl_s8(v21, vqrdmulh_lane_s16(a9, a13, 0), a9);
  v73 = *a6;
  v71 = vshll_n_s16(a11, 0xFuLL);
  v72 = vmovl_s16(*a6);
  v70 = vdupq_n_s16(a2);
  v27 = 4 * (a2 - v24);
  bzero(a4 + 4 * v24, v27);
  bzero(a5 + 4 * v24, v27);
  v28 = vcltzq_s32(*v20);
  v29 = vabsq_s32(*v20);
  v30 = vdupq_n_s32(a15);
  v31 = vcgtq_s32(v74, v29);
  v32 = vshlq_n_s32(vaddw_s16(v29, v26), 5uLL);
  v33 = vbicq_s8(vshrq_n_s32(vqdmulhq_s32(vshlq_s32(vaddq_s32(v32, vqdmulhq_s32(v32, v75)), v30), v71), 5uLL), v31);
  v34 = vnegq_s32(v30);
  *v18 = vsubq_s32(veorq_s8(v33, v28), v28);
  *a5 = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v33, v72), v34), v28), v28);
  v35 = vdupq_lane_s32(*&vmovl_s16(v26), 1);
  v36 = v20[1];
  v37 = vcltzq_s32(v36);
  v38 = vabsq_s32(v36);
  v39 = vcgtq_s32(v76, v38);
  v40 = vshlq_n_s32(vaddq_s32(v38, v35), 5uLL);
  v41 = vbicq_s8(vshrq_n_s32(vqdmulhq_lane_s32(vshlq_s32(vaddq_s32(v40, vqdmulhq_lane_s32(v40, *v75.i8, 1)), v30), *v71.i8, 1), 5uLL), v39);
  v18[1] = vsubq_s32(veorq_s8(v41, v37), v37);
  a5[1] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v41, vmovl_s16(vdup_lane_s16(v73, 1))), v34), v37), v37);
  v42 = vuzp1q_s16(vcgtzq_s32(v33), vcgtzq_s32(v41));
  v43 = vornq_s8(vandq_s8(*a14, v42), v42);
  v44.i64[0] = -1;
  v44.i64[1] = -1;
  v45 = vminq_s16(v70, vbslq_s8(v42, *a14, v70));
  v46 = vmaxq_s16(v43, v44);
  if (v24 >= 9)
  {
    v47 = vdupq_lane_s32(*v72.i8, 1);
    v48 = v24 + 8;
    v49 = a14 + 1;
    do
    {
      v50 = v20[2];
      v20 += 2;
      v51 = vabsq_s32(v50);
      v52 = vshlq_n_s32(vaddq_s32(v51, v35), 5uLL);
      v53 = vbicq_s8(vshrq_n_s32(vqdmulhq_lane_s32(vshlq_s32(vaddq_s32(v52, vqdmulhq_lane_s32(v52, *v75.i8, 1)), v30), *v71.i8, 1), 5uLL), vcgtq_s32(v76, v51));
      v54 = vcltzq_s32(v50);
      v18[2] = vsubq_s32(veorq_s8(v53, v54), v54);
      v18 += 2;
      a5[2] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v53, v47), v34), v54), v54);
      a5 += 2;
      v55 = v20[1];
      v56 = vcltzq_s32(v55);
      v57 = vabsq_s32(v55);
      v58 = vshlq_n_s32(vaddq_s32(v57, v35), 5uLL);
      v59 = vbicq_s8(vshrq_n_s32(vqdmulhq_lane_s32(vshlq_s32(vaddq_s32(v58, vqdmulhq_lane_s32(v58, *v75.i8, 1)), v30), *v71.i8, 1), 5uLL), vcgtq_s32(v76, v57));
      v18[1] = vsubq_s32(veorq_s8(v59, v56), v56);
      a5[1] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v59, v47), v34), v56), v56);
      v60 = vuzp1q_s16(vcgtzq_s32(v53), vcgtzq_s32(v59));
      v61 = *v49++;
      v45 = vminq_s16(v45, vbslq_s8(v60, v61, v70));
      v46 = vmaxq_s16(v46, vornq_s8(vandq_s8(v61, v60), v60));
      v48 -= 8;
    }

    while (v48 > 0x10);
  }

  v62 = vmaxvq_s16(v46);
  if (vminvq_s16(v45) == v62)
  {
    v63 = *(a8 + 2 * v62);
    v64 = v18->i32[v63];
    if (v64 == 1 || v64 == -1)
    {
      v66 = (a3->i16[1] + ((1 << a15) >> 1)) >> a15;
      v78[0] = (a3->i16[0] + ((1 << a15) >> 1)) >> a15;
      v78[1] = v66;
      v77[0] = -v78[0];
      v77[1] = -v66;
      v67 = 32 * v20->i32[v63];
      v68 = (525 * a6->i16[v63 != 0] + 64) >> 7;
      if (v67 < v68 + 32 * v78[v63 != 0] && v67 > 32 * v77[v63 != 0] - v68)
      {
        v18->i32[v63] = 0;
        a5->i32[v63] = 0;
        v62 = -1;
      }
    }
  }

  *a7 = v62 + 1;
}

BOOL sub_277AE3C0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  if (v1 >= 0x17FFF)
  {
    v2 = 98303;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  if (v2 <= 0x8000)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = v2;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  if (v4 >= 0x7FFF)
  {
    v6 = 0x7FFF;
  }

  else
  {
    v6 = *(a1 + 12);
  }

  if (v6 <= -32768)
  {
    v6 = -32768;
  }

  v7 = __clz(v1);
  v8 = (-1 << (v7 ^ 0x1F)) + v1;
  v9 = v8 << (8 - (v7 ^ 0x1F));
  v10 = (v8 + ((1 << (23 - v7)) >> 1)) >> (23 - v7);
  if ((v7 ^ 0x1F) < 9)
  {
    v10 = v9;
  }

  v11 = 45 - v7;
  v12 = word_277C2FE28[v10];
  v13 = (v5 * word_277C2FE28[v10]) << 16;
  v14 = (1 << v11) >> 1;
  if (v13 < 0)
  {
    v15 = -((v14 - v13) >> v11);
  }

  else
  {
    v15 = (v13 + v14) >> v11;
  }

  if (v15 >= 0x7FFF)
  {
    v16 = 0x7FFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= -32768)
  {
    v16 = -32768;
  }

  v17 = v12 * v4 * v5;
  v18 = (v17 + v14) >> v11;
  v19 = (v14 - v17) >> v11;
  if (v17 < 0)
  {
    v20 = -v19;
  }

  else
  {
    LODWORD(v20) = v18;
  }

  v21 = *(a1 + 20) - v20;
  if (v21 >= 98303)
  {
    v22 = 98303;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= 0x8000)
  {
    LOWORD(v22) = 0x8000;
  }

  if (v3 < 0)
  {
    v23 = -((32 - v3) >> 6);
  }

  else
  {
    v23 = (v3 + 32) >> 6;
  }

  LOWORD(v23) = v23 << 6;
  *(a1 + 24) = v23;
  if (v4 < 0)
  {
    v24 = -((32 - v6) >> 6);
  }

  else
  {
    v24 = (v6 + 32) >> 6;
  }

  LOWORD(v25) = v24 << 6;
  *(a1 + 26) = v24 << 6;
  v26 = (v16 + 32) >> 6;
  v27 = -((32 - v16) >> 6);
  if (v15 < 0)
  {
    v26 = v27;
  }

  v28 = v26 << 6;
  *(a1 + 28) = v28;
  if ((v22 & 0x8000) != 0)
  {
    v29 = -((32 - v22) >> 6);
  }

  else
  {
    v29 = (v22 + 32) >> 6;
  }

  v30 = v29 << 6;
  *(a1 + 30) = v30;
  v23 = v23;
  if ((v23 & 0x8000u) != 0)
  {
    v23 = -v23;
  }

  v25 = v25;
  if ((v25 & 0x8000u) != 0)
  {
    v25 = -v25;
  }

  if ((7 * v25 + 4 * v23) >> 16)
  {
    return 0;
  }

  v31 = vabs_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v28, v30), 0x10uLL), 0x10uLL));
  return (v31.i32[0] + v31.i32[1]) < 0x4000;
}

BOOL sub_277AE3E10(int a1, int32x2_t *a2, int32x2_t *a3, int a4, unsigned int a5, unsigned int a6, int *a7, int a8, double a9, int8x8_t a10, int a11)
{
  a10.i8[0] = byte_277C3CAFE[a4];
  a10.i8[4] = byte_277C3CAE8[a4];
  v12 = vsra_n_u32(0xFF000000FFLL, vand_s8(a10, 0xFF000000FFLL), 1uLL);
  if (a1 < 1)
  {
    v27 = 0;
    v17 = 0uLL;
    v18 = 0;
  }

  else
  {
    v13 = 0;
    v14 = vshl_n_s32(vshr_n_s32(vshl_n_s32(v12, 0x18uLL), 0x18uLL), 3uLL);
    v15 = a1;
    v16 = vadd_s32(v14, __PAIR64__(a5, a6));
    v17 = 0uLL;
    v18 = 0;
    do
    {
      *v19.i8 = vsub_s32(*a3, v16);
      *v11.i8 = vsub_s32(*a2, v14);
      v20 = vsub_s32(*v11.i8, *v19.i8);
      v21 = v20.i32[0];
      if (v20.i32[0] < 0)
      {
        v21 = -v20.i32[0];
      }

      if (v21 <= 0xFF)
      {
        v22 = v20.u32[1];
        if (v20.i32[1] < 0)
        {
          v22 = -v20.i32[1];
        }

        if (v22 <= 0xFF)
        {
          v23 = vrev64q_s32(v11);
          v24 = vzip1q_s32(v23, v23);
          v25 = vshl_n_s32(*v11.i8, 2uLL);
          v13 += (v25.i32[0] * v11.i32[1] + 16 * (v11.i32[1] + v11.i32[0]) + 64) >> 4;
          v18 = vsra_n_s32(v18, vmla_s32(0x8000000080, vadd_s32(v25, 0x2000000020), *v11.i8), 4uLL);
          *v26.i8 = vshl_n_s32(*v19.i8, 2uLL);
          v26.i64[1] = v26.i64[0];
          v11 = vrev64q_s32(v26);
          v19.i64[1] = v19.i64[0];
          v17 = vsraq_n_s32(v17, vaddq_s32(vmlaq_s32(vshlq_n_s32(vaddq_s32(v24, vrev64q_s32(v19)), 4uLL), v11, v24), xmmword_277BB79C0), 4uLL);
        }
      }

      ++a2;
      ++a3;
      --v15;
    }

    while (v15);
    v27 = v13;
  }

  v28 = v18.i32[0] * v18.i32[1];
  v29 = v27 * v27;
  v30 = v28 - v29;
  if (v28 == v29)
  {
    return 1;
  }

  if (v30 >= 0)
  {
    v32 = v28 - v29;
  }

  else
  {
    v32 = v29 - v28;
  }

  if (HIDWORD(v32))
  {
    LODWORD(v36) = (__clz(HIDWORD(v32)) ^ 0x1F) + 32;
    v35 = (-1 << v36) + v32;
    v34 = v36;
  }

  else
  {
    v33 = __clz(v32);
    v34 = v33 ^ 0x1F;
    v35 = (-1 << (v33 ^ 0x1F)) + v32;
    if ((v33 ^ 0x1F) < 9)
    {
      v37 = v35 << (8 - (v33 ^ 0x1F));
      LODWORD(v36) = v33 ^ 0x1F;
      goto LABEL_24;
    }

    LODWORD(v36) = v33 ^ 0x1F;
  }

  v37 = (v35 + ((1 << (v34 - 8)) >> 1)) >> (v34 - 8);
LABEL_24:
  v38 = word_277C2FE28[v37];
  if (v30 < 0)
  {
    v38 = -v38;
  }

  v39 = v36 - 2;
  if (v36 >= 2)
  {
    LOWORD(v36) = v38;
  }

  else
  {
    v39 = 0;
    LOWORD(v36) = v38 << (2 - v36);
  }

  v40 = v18.i32[0] * v17.i32[1] - v27 * v17.i32[3];
  v41 = v18.i32[1] * v17.i32[2] - v27 * v17.i32[0];
  v42 = v18.i32[0] * v17.i32[0] - v27 * v17.i32[2];
  v36 = v36;
  v43 = (v18.i32[1] * v17.i32[3] - v27 * v17.i32[1]) * v36;
  v44 = (1 << v39) >> 1;
  if (v43 < 0)
  {
    v45 = -((v44 - v43) >> v39);
  }

  else
  {
    v45 = (v43 + v44) >> v39;
  }

  if (v45 >= 73727)
  {
    v45 = 73727;
  }

  if (v45 <= 57345)
  {
    LODWORD(v45) = 57345;
  }

  v46 = v40 * v36;
  if (v46 < 0)
  {
    v47 = -((v44 - v46) >> v39);
  }

  else
  {
    v47 = (v46 + v44) >> v39;
  }

  if (v47 >= 0x1FFF)
  {
    v47 = 0x1FFFLL;
  }

  if (v47 <= -8191)
  {
    LODWORD(v47) = -8191;
  }

  a7[2] = v45;
  a7[3] = v47;
  v48 = v41 * v36;
  if (v48 < 0)
  {
    v49 = -((v44 - v48) >> v39);
  }

  else
  {
    v49 = (v48 + v44) >> v39;
  }

  if (v49 >= 0x1FFF)
  {
    v49 = 0x1FFFLL;
  }

  if (v49 <= -8191)
  {
    LODWORD(v49) = -8191;
  }

  v50 = v42 * v36;
  v51 = (v50 + v44) >> v39;
  v52 = (v44 - v50) >> v39;
  if (v50 < 0)
  {
    v53 = -v52;
  }

  else
  {
    v53 = v51;
  }

  if (v53 >= 73727)
  {
    v53 = 73727;
  }

  if (v53 <= 57345)
  {
    LODWORD(v53) = 57345;
  }

  a7[4] = v49;
  a7[5] = v53;
  v54 = 4 * a8 + v12.i8[4];
  v55 = 4 * a11 + v12.i8[0];
  v56 = (0x10000 - v45) * v55 + (a6 << 13) - v54 * v47;
  v57 = (0x10000 - v53) * v54 - v55 * v49 + (a5 << 13);
  if (v56 >= 0x7FFFFF)
  {
    v56 = 0x7FFFFF;
  }

  if (v56 <= -8388608)
  {
    v56 = -8388608;
  }

  if (v57 >= 0x7FFFFF)
  {
    v57 = 0x7FFFFF;
  }

  if (v57 <= -8388608)
  {
    v57 = -8388608;
  }

  *a7 = v56;
  a7[1] = v57;
  return !sub_277AE3C0C(a7);
}

_DWORD *sub_277AE41B8(_DWORD *result)
{
  v1 = result;
  if (!result[530])
  {
    sub_2779FB588(result + 10, 6122955);
    result = sub_2779FB588(v1 + 270, 8801531);
    v1[530] = 1;
  }

  *(v1 + 4) = 0;
  return result;
}

void sub_277AE420C(uint64_t *a1)
{
  if (*a1)
  {
    for (i = 0; i != 0x400000; i += 8)
    {
      v3 = *(*a1 + i);
      if (v3)
      {
        free(*(v3 + 24));
        *(v3 + 24) = 0;
        v4 = *a1;
        v5 = *(*a1 + i);
        if (v5)
        {
          free(*(v5 - 8));
          v4 = *a1;
        }

        *(v4 + i) = 0;
      }
    }
  }
}

void sub_277AE4284(uint64_t *a1)
{
  sub_277AE420C(a1);
  if (*a1)
  {
    free(*(*a1 - 8));
  }

  *a1 = 0;
}

BOOL sub_277AE42BC(uint64_t *a1)
{
  if (*a1)
  {
    sub_277AE420C(a1);
    return 1;
  }

  else
  {
    v3 = malloc_type_malloc(0x400017uLL, 0x5F484EBFuLL);
    if (v3)
    {
      v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v4 - 8) = v3;
      if (v4)
      {
        bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), 0x400000uLL);
      }
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4;
    return v4 != 0;
  }
}

uint64_t sub_277AE433C(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = (v4 - 1);
  v6 = *(a2 + 24);
  v7 = v6 - 1;
  if ((*(a2 + 192) & 8) != 0)
  {
    if (v6 >= 2)
    {
      v27 = 0;
      LODWORD(v28) = 0;
      do
      {
        if (v4 >= 2)
        {
          v29 = 0;
          v28 = v28;
          do
          {
            v30 = 0;
            v31 = 0;
            v32 = *(a2 + 32);
            v33 = (2 * *(a2 + 40) + 2 * v32 * v27 + 2 * v29);
            v34 = *v33;
            v35 = v33[1];
            v36 = &v33[v32];
            v37 = *v36;
            v38 = *v36;
            v39 = v36[1];
            v41 = v34 == v35 && v38 == v39;
            *(*a4 + v28) = v41;
            v46 = v34;
            v47 = v35;
            v48 = v37;
            v49 = v39;
            v43 = v34 == v37 && v35 == v39;
            *(a4[1] + v28) = v43;
            do
            {
              v31 = *(result + 52 + 4 * (*(&v46 + v30++) ^ (v31 >> (*(result + 48) - 8)))) ^ (v31 << 8);
            }

            while (v30 != 8);
            v44 = 0;
            v45 = 0;
            *(result + 40) = v31;
            *(*a3 + 4 * v28) = *(result + 1076) & v31;
            do
            {
              v45 = *(result + 1092 + 4 * (*(&v46 + v44++) ^ (v45 >> (*(result + 1088) - 8)))) ^ (v45 << 8);
            }

            while (v44 != 8);
            *(result + 1080) = v45;
            *(a3[1] + 4 * v28++) = *(result + 2116) & v45;
            ++v29;
          }

          while (v29 != v5);
        }

        LODWORD(v28) = v28 + 1;
        ++v27;
      }

      while (v27 != v7);
    }
  }

  else if (v6 >= 2)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      if (v4 >= 2)
      {
        v10 = 0;
        v9 = v9;
        do
        {
          v11 = 0;
          v12 = 0;
          v13 = *(a2 + 32);
          v14 = (*(a2 + 40) + v13 * v8 + v10);
          v15 = *v14;
          v16 = v14[1];
          v17 = &v14[v13];
          v18 = *v17;
          v19 = *v17;
          v20 = v17[1];
          v22 = v15 == v16 && v19 == v20;
          *(*a4 + v9) = v22;
          LOBYTE(v46) = v15;
          HIBYTE(v46) = v16;
          LOBYTE(v47) = v18;
          HIBYTE(v47) = v20;
          v24 = v15 == v18 && v16 == v20;
          *(a4[1] + v9) = v24;
          do
          {
            v12 = *(result + 52 + 4 * (*(&v46 + v11++) ^ (v12 >> (*(result + 48) - 8)))) ^ (v12 << 8);
          }

          while (v11 != 4);
          v25 = 0;
          v26 = 0;
          *(result + 40) = v12;
          *(*a3 + 4 * v9) = *(result + 1076) & v12;
          do
          {
            v26 = *(result + 1092 + 4 * (*(&v46 + v25++) ^ (v26 >> (*(result + 1088) - 8)))) ^ (v26 << 8);
          }

          while (v25 != 4);
          *(result + 1080) = v26;
          *(a3[1] + 4 * v9++) = *(result + 2116) & v26;
          ++v10;
        }

        while (v10 != v5);
      }

      LODWORD(v9) = v9 + 1;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t sub_277AE4640(int a1)
{
  if (a1 > 31)
  {
    if (a1 == 32)
    {
      return 3;
    }

    if (a1 != 64)
    {
      if (a1 == 128)
      {
        return 5;
      }

      return 0xFFFFFFFFLL;
    }

    return 4;
  }

  else
  {
    if (a1 == 4)
    {
      return 0;
    }

    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return 2;
      }

      return 0xFFFFFFFFLL;
    }

    return 1;
  }
}

uint64_t sub_277AE46B0(uint64_t result, uint64_t a2, size_t __n, uint64_t a4, int a5, int a6, uint64_t a7, _DWORD *a8, uint64_t a9, int a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16)
{
  v16 = a7;
  v17 = a5;
  v18 = __n;
  v105 = result;
  v20 = a10;
  v21 = a12;
  v22 = (a13 << a16);
  v23 = a14 << a16;
  v24 = a10 != 0;
  v25 = 3 - a5;
  v114 = 3 - a6;
  if (a8 && (!v22 ? (v26 = v23 == 0) : (v26 = 0), v26))
  {
    if (a12 >= 1)
    {
      v27 = 0;
      if (1 << v114 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = (1 << v114);
      }

      do
      {
        if (a6 != -28)
        {
          v29 = 0;
          v30 = (a4 + 2 * (*(a11 + 2 * v27 + 1) << v25) + 288 * (*(a11 + 2 * v27) << v114));
          do
          {
            result = memcpy((a2 + 2 * ((v29++ << v25) + (v27 << (v114 + v25)))), v30, 2 << v25);
            v30 += 288;
          }

          while (v28 != v29);
        }

        ++v27;
      }

      while (v27 != a12);
    }
  }

  else
  {
    v31 = a9;
    v111 = a13 << a16;
    v110 = a14 << a16;
    v103 = a8;
    if (a10 == 1)
    {
      if (a5 != a6 && a12 >= 1)
      {
        v41 = &unk_277C30090;
        if (!a5)
        {
          v41 = &unk_277C300B0;
        }

        v42 = (a11 + 1);
        v43 = a12;
        do
        {
          v44 = *(v42 - 1);
          v45 = *v42;
          v42 += 2;
          *(a7 + (v44 << 6) + 4 * v45) = v41[*(a7 + (v44 << 6) + 4 * v45)];
          --v43;
        }

        while (v43);
      }
    }

    else if (!a10)
    {
      if (a8)
      {
        if (!*a8)
        {
          v96 = __n;
          if (a12 < 2)
          {
            v40 = 0;
            v34 = a4;
          }

          else
          {
            v94 = a5;
            v32 = 0;
            v33 = (a11 + 3);
            v34 = a4;
            do
            {
              v35 = *(v33 - 3);
              v36 = *(v33 - 2);
              v37 = *(v33 - 1);
              v38 = *v33;
              v33 += 4;
              v39 = v34;
              v107 = (v34 + 2304 * v37 + 16 * v38);
              v98 = (a9 + (v37 << 6) + 4 * v38);
              v101 = a7 + (v37 << 6);
              *(a7 + (v35 << 6) + 4 * v36) = sub_277B1201C((v34 + 2304 * v35 + 16 * v36), (a9 + (v35 << 6) + 4 * v36), a16);
              result = sub_277B1201C(v107, v98, a16);
              v34 = v39;
              *(v101 + 4 * v38) = result;
              v32 += 2;
            }

            while (a12 - 1 > v32);
            v40 = v32 & 0xFFFFFFFE;
            v16 = a7;
            v17 = v94;
            v18 = v96;
            v22 = v111;
            v20 = a10;
            v23 = a14 << a16;
            a8 = v103;
            v31 = a9;
            v24 = a10 != 0;
          }

          if (a12)
          {
            v63 = (a11 + 2 * v40);
            v64 = v16;
            v65 = *v63;
            v66 = v63[1];
            v67 = (v31 + (v65 << 6) + 4 * v66);
            v68 = v24;
            result = sub_277B1201C((v34 + 2304 * v65 + 16 * v66), v67, a16);
            v24 = v68;
            a8 = v103;
            v23 = a14 << a16;
            v22 = v111;
            v20 = a10;
            v69 = v64 + (v65 << 6);
            v16 = v64;
            v18 = v96;
            *(v69 + 4 * v66) = result;
          }

          *a8 = 1;
        }
      }

      else
      {
        v97 = __n;
        if (a12 < 2)
        {
          v55 = 0;
        }

        else
        {
          v95 = a5;
          v46 = 0;
          v47 = (a11 + 3);
          do
          {
            v48 = *(v47 - 3);
            v49 = *(v47 - 2);
            v50 = *(v47 - 1);
            v51 = *v47;
            v47 += 4;
            v108 = (a4 + 2304 * v50 + 16 * v51);
            v52 = (v31 + (v48 << 6) + 4 * v49);
            v53 = v31 + (v50 << 6) + 4 * v51;
            v102 = a7 + (v50 << 6);
            *(a7 + (v48 << 6) + 4 * v49) = sub_277B1201C((a4 + 2304 * v48 + 16 * v49), v52, a16);
            v54 = v53;
            v31 = a9;
            result = sub_277B1201C(v108, v54, a16);
            *(v102 + 4 * v51) = result;
            v46 += 2;
          }

          while (a12 - 1 > v46);
          v55 = v46 & 0xFFFFFFFE;
          v16 = a7;
          v17 = v95;
          v18 = v97;
          v22 = v111;
          v20 = a10;
          v23 = a14 << a16;
          a8 = v103;
          v24 = a10 != 0;
        }

        if (a12)
        {
          v56 = (a11 + 2 * v55);
          v57 = v16;
          v58 = *v56;
          v59 = v56[1];
          v60 = (v31 + (v58 << 6) + 4 * v59);
          v61 = v24;
          result = sub_277B1201C((a4 + 2304 * v58 + 16 * v59), v60, a16);
          v24 = v61;
          a8 = v103;
          v23 = a14 << a16;
          v22 = v111;
          v20 = a10;
          v62 = v57 + (v58 << 6);
          v16 = v57;
          *(v62 + 4 * v59) = result;
          v18 = v97;
        }
      }
    }

    v70 = a15 - v24;
    v109 = 8u >> v17;
    v71 = 8u >> a6;
    if (v105)
    {
      if (a12 >= 1)
      {
        v72 = (a11 + 1);
        v73 = 8 * (v23 == 0);
        do
        {
          v74 = *(v72 - 1);
          v75 = *v72;
          v76 = v22;
          if (!v20)
          {
            v77 = *(a9 + (v74 << 6) + 4 * *v72);
            if (v77 >= 0x40)
            {
              v79 = __clz(v77 >> 6) ^ 0x1F;
              if (v79 >= 0xC)
              {
                v78 = 16;
              }

              else
              {
                v78 = v79 + 4;
              }
            }

            else
            {
              v78 = 4;
            }

            v80 = (v78 * v22 + 8) >> 4;
            if (v77)
            {
              v76 = v80;
            }

            else
            {
              v76 = 0;
            }
          }

          if (v22)
          {
            v81 = *(v16 + (v74 << 6) + 4 * *v72);
          }

          else
          {
            v81 = 0;
          }

          v72 += 2;
          result = (*(off_28866ED18 + (v73 | (16 * (v76 == 0)))))(v105 + (v75 << v25) + (v74 << v114) * v18, v18, a4 + 2 * (((144 * v74) << v114) + (v75 << v25)), v76, v110, v81, (v70 + a16), (v70 + a16), __PAIR64__(v109, a16), v71);
          --v21;
          v22 = v111;
          v20 = a10;
        }

        while (v21);
      }
    }

    else if (a12 >= 1)
    {
      v82 = 0;
      v83 = 1 << v25;
      if (!a8)
      {
        v83 = v18;
      }

      v106 = v83;
      v84 = (a11 + 1);
      v104 = 8 * (v23 == 0);
      do
      {
        v85 = *(v84 - 1);
        v86 = *v84;
        v87 = v22;
        if (!v20)
        {
          v88 = *(a9 + (v85 << 6) + 4 * *v84);
          if (v88 >= 0x40)
          {
            v90 = __clz(v88 >> 6) ^ 0x1F;
            if (v90 >= 0xC)
            {
              v89 = 16;
            }

            else
            {
              v89 = v90 + 4;
            }
          }

          else
          {
            v89 = 4;
          }

          v91 = (v89 * v22 + 8) >> 4;
          if (v88)
          {
            v87 = v91;
          }

          else
          {
            v87 = 0;
          }
        }

        v92 = (v86 << v25) + (v85 << v114) * v18;
        if (a8)
        {
          v92 = v82 << (v114 + v25);
        }

        if (v22)
        {
          v93 = *(v16 + (v85 << 6) + 4 * *v84);
        }

        else
        {
          v93 = 0;
        }

        v84 += 2;
        result = (*(off_28866ED38 + (v104 | (16 * (v87 == 0)))))(a2 + 2 * v92, v106, a4 + 2 * (((144 * v85) << v114) + (v86 << v25)), v87, v110, v93, (v70 + a16), (v70 + a16), __PAIR64__(v109, a16), v71);
        ++v82;
        v22 = v111;
        v20 = a10;
        a8 = v103;
      }

      while (a12 != v82);
    }
  }

  return result;
}

double sub_277AE4D80(uint64_t a1, int a2, _DWORD *a3, int a4, int a5, int a6, unint64_t a7, int a8)
{
  v106 = *MEMORY[0x277D85DE8];
  if (a5 == 4 && (a6 & 3) != 0 || (a5 <= 0 ? (v8 = -(-a5 & 7)) : (v8 = a5 & 7), a6 & 7 | v8))
  {
    if (a6 >= 1)
    {
      v9 = 0;
      v10 = a1 - 3;
      do
      {
        if (a5 >= 1)
        {
          v11 = 0;
          v12 = a7;
          do
          {
            v13 = 0;
            v14 = 0;
            do
            {
              v14 += word_277BEBCC0[8 * ((v12 >> 8) & 0x3F) + v13] * *(v10 + (v12 >> 14) + v13);
              ++v13;
            }

            while (v13 != 8);
            v15 = ((v14 + 64) >> 7) & ~((v14 + 64) >> 31);
            if (v15 >= 255)
            {
              LOBYTE(v15) = -1;
            }

            *(a3 + v11) = v15;
            v12 = (v12 + a8);
            ++v11;
          }

          while (v11 != a5);
        }

        v10 += a2;
        a3 = (a3 + a4);
        ++v9;
      }

      while (v9 != a6);
    }
  }

  else
  {
    v16 = a1 - 3;
    if (a5 == 4)
    {
      do
      {
        v71 = 0;
        v72 = a7;
        do
        {
          v73 = (v16 + (v72 >> 14));
          v74 = *&word_277BEBCC0[(v72 >> 5) & 0x1F8];
          v75 = *v73;
          v76 = (v73 + a2);
          v77 = *v76;
          v78 = (v76 + a2);
          v79 = *(v78 + a2);
          v80 = vtrn1_s8(v75, v77);
          v81 = vtrn2_s8(v75, v77);
          v82 = vtrn1_s8(*v78, v79);
          v83 = vtrn2_s8(*v78, v79);
          v84 = vtrn1_s16(v80, v82);
          v85 = vtrn2_s16(v80, v82);
          v86 = vtrn1_s16(v81, v83);
          v87 = vtrn2_s16(v81, v83);
          v88 = vmovl_u8(v84);
          v89 = vmovl_u8(v86);
          v90 = vmovl_u8(v85);
          v91 = vmovl_u8(v87);
          *v74.i8 = vqadd_s16(vqadd_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmul_lane_s16(*v89.i8, *v74.i8, 1), *v88.i8, *v74.i8, 0), *v90.i8, *v74.i8, 2), *&vextq_s8(v89, v89, 8uLL), v74, 5), *&vextq_s8(v90, v90, 8uLL), v74, 6), *&vextq_s8(v91, v91, 8uLL), v74, 7), vmul_lane_s16(*v91.i8, *v74.i8, 3)), vmul_laneq_s16(*&vextq_s8(v88, v88, 8uLL), v74, 4));
          v98.i32[v71] = vqrshrun_n_s16(v74, 7uLL).u32[0];
          v72 += a8;
          ++v71;
        }

        while (v71 != 4);
        v92 = vtrn1_s16(v98, v99);
        v93 = vtrn2_s16(v98, v99);
        v94 = vzip1_s32(v92, v93);
        v95 = vzip2_s32(v92, v93);
        v96 = vtrn1_s8(v94, v95);
        *v64.i8 = vtrn2_s8(v94, v95);
        *a3 = v96.i32[0];
        *(a3 + 2 * a4) = v96.i32[1];
        *(a3 + a4) = v64.i32[0];
        *(a3 + 2 * a4 + a4) = v64.i32[1];
        a3 += a4;
        v16 += 4 * a2;
        v70 = __OFSUB__(a6, 4);
        a6 -= 4;
      }

      while (!((a6 < 0) ^ v70 | (a6 == 0)));
    }

    else
    {
      v17 = a2;
      v18 = 8 * a2;
      do
      {
        v19 = a5;
        v20 = a3;
        v21 = a7;
        do
        {
          for (i = 0; i != 64; i += 8)
          {
            v23 = *&word_277BEBCC0[(v21 >> 5) & 0x1F8];
            v24 = (v16 + (v21 >> 14));
            v25.i64[0] = *v24;
            v26 = (v24 + v17);
            v27.i64[0] = *v26;
            v28 = (v26 + v17);
            v29.i64[0] = *v28;
            v30 = (v28 + v17);
            v31.i64[0] = *v30;
            v32 = (v30 + v17);
            v33 = *v32;
            v34 = (v32 + v17);
            v35 = *v34;
            v36 = (v34 + v17);
            v25.i64[1] = v33;
            v27.i64[1] = v35;
            v37 = vtrn1q_s8(v25, v27);
            v29.i64[1] = *v36;
            v38 = vtrn2q_s8(v25, v27);
            v31.i64[1] = *(v36 + v17);
            v39 = vtrn1q_s8(v29, v31);
            v40 = vtrn2q_s8(v29, v31);
            v41 = vtrn1q_s16(v37, v39);
            v42 = vtrn2q_s16(v37, v39);
            v43 = vtrn1q_s16(v38, v40);
            v44 = vtrn2q_s16(v38, v40);
            v45 = vuzp1q_s32(v41, v43);
            v46 = vuzp2q_s32(v41, v43);
            v47 = vuzp1q_s32(v42, v44);
            v48 = vuzp2q_s32(v42, v44);
            *(&v98 + i) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(vmovl_high_u8(v45), *v23.i8, 1), vmovl_u8(*v45.i8), *v23.i8, 0), vmovl_u8(*v47.i8), *v23.i8, 2), vmovl_high_u8(v46), v23, 5), vmovl_u8(*v48.i8), v23, 6), vmovl_high_u8(v48), v23, 7), vmulq_lane_s16(vmovl_high_u8(v47), *v23.i8, 3)), vmulq_laneq_s16(vmovl_u8(*v46.i8), v23, 4)), 7uLL);
            v21 += a8;
          }

          *v49.i8 = v98;
          *v50.i8 = v99;
          v51.i64[0] = v100;
          v52.i64[0] = v101;
          v49.i64[1] = v102;
          v50.i64[1] = v103;
          v53 = vtrn1q_s8(v49, v50);
          v54 = vtrn2q_s8(v49, v50);
          v51.i64[1] = v104;
          v52.i64[1] = v105;
          v55 = vtrn1q_s8(v51, v52);
          v56 = vtrn2q_s8(v51, v52);
          v57 = vtrn1q_s16(v53, v55);
          v58 = vtrn2q_s16(v53, v55);
          v59 = vtrn1q_s16(v54, v56);
          v60 = vtrn2q_s16(v54, v56);
          v61 = vuzp1q_s32(v57, v59);
          v62 = vuzp2q_s32(v57, v59);
          v63 = vuzp1q_s32(v58, v60);
          v64 = vuzp2q_s32(v58, v60);
          *v20 = v61.i64[0];
          *(v20 + a4) = vextq_s8(v61, v61, 8uLL).u64[0];
          v65 = (v20 + a4 + a4);
          *v65 = v63.i64[0];
          v66 = (v65 + a4);
          *v66 = vextq_s8(v63, v63, 8uLL).u64[0];
          v67 = (v66 + a4);
          *v67 = v62.i64[0];
          v68 = (v67 + a4);
          *v68 = vextq_s8(v62, v62, 8uLL).u64[0];
          v69 = (v68 + a4);
          *v69 = v64.i64[0];
          *(v69 + a4) = vextq_s8(v64, v64, 8uLL).u64[0];
          ++v20;
          v19 -= 8;
        }

        while (v19);
        a3 += 2 * a4;
        v16 += v18;
        v70 = __OFSUB__(a6, 8);
        a6 -= 8;
      }

      while (!((a6 < 0) ^ v70 | (a6 == 0)));
    }
  }

  return *v64.i64;
}

void sub_277AE51A4(int *a1)
{
  if (a1)
  {
    v2 = *(a1 + 5);
    if (v2)
    {
      if (*a1 >= 1)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          sub_27797ABB4(*(a1 + 5) + v3);
          ++v4;
          v3 += 240;
        }

        while (v4 < *a1);
        v2 = *(a1 + 5);
      }

      free(v2);
    }

    free(a1);
  }
}

_DWORD *sub_277AE522C(signed int a1, signed int a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, signed int a8, int a9, unsigned __int8 a10, unsigned __int8 a11)
{
  if (a6 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a6;
  }

  if (a9 + a6 >= 0x60)
  {
    v18 = 96;
  }

  else
  {
    v18 = a9 + a6;
  }

  if ((a9 + a6) < 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040B215DBEAuLL);
  v21 = v20;
  if (v20)
  {
    v22 = v17;
    v23 = a10 ^ 1;
    v24 = (v19 + v23);
    *v20 = v24;
    v20[12] = 0;
    *(v20 + 52) = v23;
    v20[4] = v19;
    v20[5] = 1;
    if (a9)
    {
      v20[8] = v22;
      v20[9] = 1;
    }

    v25 = malloc_type_calloc(v24, 0xF0uLL, 0x10300403FE9D51FuLL);
    *(v21 + 5) = v25;
    if (!v25)
    {
LABEL_19:
      sub_277AE51A4(v21);
      return 0;
    }

    if (v24)
    {
      v30 = 0;
      v31 = 240 * v24;
      while (!sub_27797AC44(*(v21 + 5) + v30, a1, a2, a3, a4, a5, a7, a8, v26, v27, v28, v29, a11, 0))
      {
        v30 += 240;
        if (v31 == v30)
        {
          return v21;
        }
      }

      goto LABEL_19;
    }
  }

  return v21;
}

uint64_t sub_277AE5390(uint64_t result, int a2, unsigned int a3)
{
  if (result)
  {
    v3 = result + 16 * a3;
    if (a2 < 0)
    {
      if (-a2 <= *(result + 52))
      {
        v6 = *(v3 + 12) + a2;
        if (v6 < 0)
        {
          v6 += *result;
        }

        return *(result + 40) + 240 * v6;
      }
    }

    else if (*(v3 + 8) > a2)
    {
      v4 = *(v3 + 12) + a2;
      v5 = *result;
      if (v4 < *result)
      {
        v5 = 0;
      }

      v6 = v4 - v5;
      return *(result + 40) + 240 * v6;
    }

    return 0;
  }

  return result;
}

int32x4_t sub_277AE5400(int16x4_t *a1, uint64_t a2, int32x4_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = *(a1 + 4 * a2);
  v5 = *(a1 + 6 * a2);
  v6 = vhadd_s16(*a1, v3);
  v7 = vhsub_s16(*a1, v3);
  v8 = vhadd_s16(v4, v5);
  v9 = vhsub_s16(v4, v5);
  v10 = vadd_s16(v8, v6);
  v11 = vadd_s16(v9, v7);
  v12 = vsub_s16(v6, v8);
  v13 = vsub_s16(v7, v9);
  v14 = vtrn1_s16(v10, v11);
  v15 = vtrn2_s16(v10, v11);
  v16 = vtrn1_s16(v12, v13);
  v17 = vtrn2_s16(v12, v13);
  v18 = vzip1_s32(v14, v16);
  v19 = vzip2_s32(v14, v16);
  v20 = vzip1_s32(v15, v17);
  v21 = vzip2_s32(v15, v17);
  v22 = vhadd_s16(v18, v20);
  v23 = vhsub_s16(v18, v20);
  v24 = vhadd_s16(v19, v21);
  v25 = vhsub_s16(v19, v21);
  *a3 = vmovl_s16(vadd_s16(v24, v22));
  a3[1] = vmovl_s16(vadd_s16(v25, v23));
  result = vmovl_s16(vsub_s16(v23, v25));
  a3[2] = vmovl_s16(vsub_s16(v22, v24));
  a3[3] = result;
  return result;
}

int32x4_t sub_277AE549C(int16x8_t *a1, uint64_t a2, int32x4_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = *(a1 + 4 * a2);
  v5 = *(a1 + 6 * a2);
  v6 = *(a1 + 8 * a2);
  v7 = *(a1 + 10 * a2);
  v8 = *(a1 + 12 * a2);
  v9 = vaddq_s16(v3, *a1);
  v10 = vsubq_s16(*a1, v3);
  v11 = vaddq_s16(v5, v4);
  v12 = vsubq_s16(v4, v5);
  v13 = vaddq_s16(v7, v6);
  v14 = vsubq_s16(v6, v7);
  v15 = *(a1 + 14 * a2);
  v16 = vaddq_s16(v15, v8);
  v17 = vsubq_s16(v8, v15);
  v18 = vaddq_s16(v11, v9);
  v19 = vaddq_s16(v12, v10);
  v20 = vsubq_s16(v9, v11);
  v21 = vsubq_s16(v10, v12);
  v22 = vaddq_s16(v16, v13);
  v23 = vaddq_s16(v17, v14);
  v24 = vsubq_s16(v13, v16);
  v25 = vsubq_s16(v14, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v20, v24);
  v28 = vsubq_s16(v18, v22);
  v29 = vaddq_s16(v24, v20);
  v30 = vaddq_s16(v25, v21);
  v31 = vsubq_s16(v21, v25);
  v32 = vsubq_s16(v19, v23);
  v33 = vaddq_s16(v23, v19);
  v34 = vtrn1q_s16(v26, v27);
  v35 = vtrn2q_s16(v26, v27);
  v36 = vtrn1q_s16(v28, v29);
  v37 = vtrn2q_s16(v28, v29);
  v38 = vtrn1q_s16(v30, v31);
  v39 = vtrn2q_s16(v30, v31);
  v40 = vtrn1q_s16(v32, v33);
  v41 = vtrn2q_s16(v32, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vtrn2q_s32(v39, v41);
  v50 = vzip2q_s64(v42, v46);
  v42.i64[1] = v46.i64[0];
  v51 = vzip2q_s64(v44, v48);
  v44.i64[1] = v48.i64[0];
  v52 = vzip2q_s64(v43, v47);
  v43.i64[1] = v47.i64[0];
  v53 = vzip2q_s64(v45, v49);
  v45.i64[1] = v49.i64[0];
  v54 = vaddq_s16(v44, v42);
  v55 = vsubq_s16(v42, v44);
  v56 = vaddq_s16(v45, v43);
  v57 = vsubq_s16(v43, v45);
  v58 = vaddq_s16(v51, v50);
  v59 = vsubq_s16(v50, v51);
  v60 = vaddq_s16(v53, v52);
  v61 = vsubq_s16(v52, v53);
  v62 = vaddq_s16(v56, v54);
  v63 = vaddq_s16(v57, v55);
  v64 = vsubq_s16(v54, v56);
  v65 = vsubq_s16(v55, v57);
  v66 = vaddq_s16(v60, v58);
  v67 = vaddq_s16(v61, v59);
  v68 = vsubq_s16(v58, v60);
  v69 = vaddq_s16(v66, v62);
  *a3 = vmovl_s16(*v69.i8);
  a3[1] = vmovl_high_s16(v69);
  v70 = vsubq_s16(v64, v68);
  v71 = vsubq_s16(v62, v66);
  a3[2] = vmovl_s16(*v70.i8);
  a3[3] = vmovl_high_s16(v70);
  a3[4] = vmovl_s16(*v71.i8);
  a3[5] = vmovl_high_s16(v71);
  v72 = vsubq_s16(v59, v61);
  v73 = vaddq_s16(v68, v64);
  v74 = vaddq_s16(v72, v65);
  v75 = vsubq_s16(v65, v72);
  v76 = vsubq_s16(v63, v67);
  a3[6] = vmovl_s16(*v73.i8);
  a3[7] = vmovl_high_s16(v73);
  a3[8] = vmovl_s16(*v74.i8);
  a3[9] = vmovl_high_s16(v74);
  v77 = vaddq_s16(v67, v63);
  a3[10] = vmovl_s16(*v75.i8);
  a3[11] = vmovl_high_s16(v75);
  a3[12] = vmovl_s16(*v76.i8);
  a3[13] = vmovl_high_s16(v76);
  v78 = vmovl_s16(*v77.i8);
  result = vmovl_high_s16(v77);
  a3[14] = v78;
  a3[15] = result;
  return result;
}

int16x8_t sub_277AE566C(int16x8_t *a1, uint64_t a2, int16x8_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = *(a1 + 4 * a2);
  v5 = *(a1 + 6 * a2);
  v6 = *(a1 + 8 * a2);
  v7 = *(a1 + 10 * a2);
  v8 = *(a1 + 12 * a2);
  v9 = *(a1 + 14 * a2);
  v10 = vaddq_s16(v3, *a1);
  v11 = vsubq_s16(*a1, v3);
  v12 = vaddq_s16(v5, v4);
  v13 = vsubq_s16(v4, v5);
  v14 = vaddq_s16(v7, v6);
  v15 = vsubq_s16(v6, v7);
  v16 = vaddq_s16(v9, v8);
  v17 = vsubq_s16(v8, v9);
  v18 = vaddq_s16(v12, v10);
  v19 = vaddq_s16(v13, v11);
  v20 = vsubq_s16(v10, v12);
  v21 = vsubq_s16(v11, v13);
  v22 = vaddq_s16(v16, v14);
  v23 = vaddq_s16(v17, v15);
  v24 = vsubq_s16(v14, v16);
  v25 = vsubq_s16(v15, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v20, v24);
  v28 = vsubq_s16(v18, v22);
  v29 = vaddq_s16(v24, v20);
  v30 = vaddq_s16(v25, v21);
  v31 = vsubq_s16(v21, v25);
  v32 = vsubq_s16(v19, v23);
  v33 = vaddq_s16(v23, v19);
  v34 = vtrn1q_s16(v26, v27);
  v35 = vtrn2q_s16(v26, v27);
  v36 = vtrn1q_s16(v28, v29);
  v37 = vtrn2q_s16(v28, v29);
  v38 = vtrn1q_s16(v30, v31);
  v39 = vtrn2q_s16(v30, v31);
  v40 = vtrn1q_s16(v32, v33);
  v41 = vtrn2q_s16(v32, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vtrn2q_s32(v39, v41);
  v50 = vzip2q_s64(v42, v46);
  v42.i64[1] = v46.i64[0];
  v51 = vzip2q_s64(v44, v48);
  v44.i64[1] = v48.i64[0];
  v52 = vzip2q_s64(v43, v47);
  v43.i64[1] = v47.i64[0];
  v53 = vzip2q_s64(v45, v49);
  v45.i64[1] = v49.i64[0];
  v54 = vaddq_s16(v44, v42);
  v55 = vsubq_s16(v42, v44);
  v56 = vaddq_s16(v45, v43);
  v57 = vsubq_s16(v43, v45);
  v58 = vaddq_s16(v51, v50);
  v59 = vsubq_s16(v50, v51);
  v60 = vaddq_s16(v53, v52);
  v61 = vsubq_s16(v52, v53);
  v62 = vaddq_s16(v56, v54);
  v63 = vaddq_s16(v57, v55);
  v64 = vsubq_s16(v54, v56);
  v65 = vsubq_s16(v55, v57);
  v66 = vaddq_s16(v60, v58);
  v67 = vaddq_s16(v61, v59);
  v68 = vsubq_s16(v58, v60);
  *a3 = vaddq_s16(v66, v62);
  a3[1] = vsubq_s16(v64, v68);
  v69 = vsubq_s16(v59, v61);
  a3[2] = vsubq_s16(v62, v66);
  a3[3] = vaddq_s16(v68, v64);
  a3[4] = vaddq_s16(v69, v65);
  a3[5] = vsubq_s16(v65, v69);
  result = vaddq_s16(v67, v63);
  a3[6] = vsubq_s16(v63, v67);
  a3[7] = result;
  return result;
}

int32x4_t sub_277AE57EC(int16x8_t *a1, uint64_t a2, int32x4_t *a3)
{
  v3 = a3;
  sub_277AE549C(a1, a2, a3);
  sub_277AE549C(a1 + 1, a2, v3 + 16);
  sub_277AE549C(&a1[a2], a2, v3 + 32);
  sub_277AE549C(&a1[a2 + 1], a2, v3 + 48);
  v6 = -16;
  do
  {
    v7 = v3[1];
    v8 = v3[16];
    v9 = v3[17];
    v10 = vhaddq_s32(*v3, v8);
    v11 = vhsubq_s32(*v3, v8);
    v12 = v3[32];
    v13 = v3[33];
    v14 = v3[48];
    v15 = v3[49];
    v16 = vhaddq_s32(v12, v14);
    v17 = vhsubq_s32(v12, v14);
    v18 = vaddq_s32(v16, v10);
    v19 = vaddq_s32(v17, v11);
    v20 = vsubq_s32(v10, v16);
    result = vsubq_s32(v11, v17);
    v22 = vhaddq_s32(v7, v9);
    v23 = vhsubq_s32(v7, v9);
    v24 = vhaddq_s32(v13, v15);
    v25 = vhsubq_s32(v13, v15);
    v26 = vaddq_s32(v24, v22);
    v27 = vaddq_s32(v25, v23);
    v28 = vsubq_s32(v22, v24);
    v29 = v3[2];
    v30 = v3[3];
    v31 = vsubq_s32(v23, v25);
    v32 = v3[18];
    v33 = v3[19];
    v34 = vhaddq_s32(v29, v32);
    v35 = vhsubq_s32(v29, v32);
    v36 = v3[34];
    v37 = v3[35];
    v38 = v3[50];
    v39 = v3[51];
    v40 = vhaddq_s32(v36, v38);
    v41 = vhsubq_s32(v36, v38);
    v42 = vaddq_s32(v41, v35);
    v43 = vsubq_s32(v35, v41);
    v44 = vhaddq_s32(v30, v33);
    v45 = vhsubq_s32(v30, v33);
    v46 = vhaddq_s32(v37, v39);
    *v3 = v18;
    v3[1] = vaddq_s32(v40, v34);
    v47 = vhsubq_s32(v37, v39);
    v3[2] = v26;
    v3[3] = vaddq_s32(v46, v44);
    v3[16] = v19;
    v3[17] = v42;
    v3[18] = v27;
    v3[19] = vaddq_s32(v47, v45);
    v3[32] = v20;
    v3[33] = vsubq_s32(v34, v40);
    v3[34] = v28;
    v3[35] = vsubq_s32(v44, v46);
    v3[48] = result;
    v3[49] = v43;
    v3[50] = v31;
    v3[51] = vsubq_s32(v45, v47);
    v3 += 4;
    v6 += 16;
  }

  while (v6 < 0x30);
  return result;
}

uint64_t sub_277AE5928(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, double a9, int16x4_t a10, int16x4_t a11, int a12, int a13, int a14, char a15, __int16 a16, char a17, int *a18, __int16 a19, __int16 a20, __int16 a21, __int16 a22)
{
  v362 = result;
  v370[22] = *MEMORY[0x277D85DE8];
  if (a13 >= 1)
  {
    v350 = 0;
    v349 = 0;
    v22 = *(a18 + 1);
    v23 = a18[4];
    v348 = a2 - 7;
    v361 = a7 + 4;
    v358 = a3 + 6;
    v24 = a4 - 1;
    v368 = a3 - 1;
    v364 = 2 * a19;
    v25 = 3 * a19;
    v344 = 7 * a19;
    v345 = 4 * a19;
    v26 = a18[8];
    v27 = a18[9];
    v28 = *a18;
    if (v26)
    {
      v29 = 524352;
    }

    else
    {
      v29 = 525312;
    }

    v30 = vdupq_n_s32(v29);
    a10.i16[0] = *(a18 + 20);
    a11.i16[0] = *(a18 + 22);
    v346 = 66048 - 3 * a20;
    v31 = vdupq_n_s16(0xFE80u);
    v32 = vdupq_n_s16(0xE808u);
    v33.i64[0] = 0x400000004000;
    v33.i64[1] = 0x400000004000;
    v342 = 6 * a19;
    v343 = 5 * a19;
    v34 = 2 * a21;
    v35 = 3 * a21;
    result = (4 * a21);
    v36 = a13;
    while (1)
    {
      v347 = v36 - 8;
      if (v36 >= 8)
      {
        v37 = 8;
      }

      else
      {
        v37 = v36;
      }

      v38 = v37 - 4;
      if (v38 <= -3)
      {
        v38 = -3;
      }

      if (v37 <= -6)
      {
        v37 = -6;
      }

      if (a12 >= 1)
      {
        break;
      }

LABEL_263:
      v349 += 8;
      LODWORD(v350) = v350 + 8 * a14;
      HIDWORD(v350) += 8 * v23;
      v36 = v347;
      if (v349 >= a13)
      {
        return result;
      }
    }

    v39 = 0;
    v360 = v38 + 4;
    v359 = (v37 + 7);
    v363 = (a8 + 4 + v349) << a17;
    v366 = a13 - v349;
    v40 = v350;
    v41 = HIDWORD(v350);
    while (1)
    {
      v42 = (v361 + v39) << a15;
      v43 = v362[5] * v363 + v362[4] * v42 + v362[1];
      v44 = (v362[3] * v363 + v362[2] * v42 + *v362) >> a15;
      result = v43 >> a17;
      v45 = v44 >> 16;
      v46 = (v43 >> a17) >> 16;
      v365 = v43 >> a17;
      if ((v44 >> 16) > -7)
      {
        if (v358 <= v45)
        {
          if (v366 >= -6)
          {
            v71 = v46;
            v72 = v46 - 7;
            v73 = v369;
            result = v359;
            do
            {
              if (v72 >= v24)
              {
                v74 = v24;
              }

              else
              {
                v74 = v72;
              }

              if (v71 < 7)
              {
                v74 = 0;
              }

              *v73++ = vdupq_n_s16(16 * *(a2 + v368 + v74 * a5) + 2048);
              ++v72;
              ++v71;
              --result;
            }

            while (result);
          }
        }

        else
        {
          v51 = ((v44 & 0xFFFC) - 4 * (a20 + a19)) & 0xFFFFFFC0;
          v52 = v51 + 66048;
          v53 = 6 - v45;
          v54 = v45 - a3;
          v367 = v45 - a3 + 8;
          v56 = v45 < 7 || v45 - a3 + 8 >= 0;
          if (a12 == 4)
          {
            if (a20)
            {
              if (a19)
              {
                if (v56)
                {
                  if (v366 < -6)
                  {
                    goto LABEL_87;
                  }

                  v57 = vdupq_n_s8(v53);
                  v58 = vdupq_n_s8(7 - (v45 - a3));
                  v353 = 6 - v54;
                  v59 = v46;
                  v60 = v346 + v51;
                  v61 = v46 - 7;
                  v62 = v369;
                  v63 = v359;
                  do
                  {
                    if (v61 >= v24)
                    {
                      v64 = v24;
                    }

                    else
                    {
                      v64 = v61;
                    }

                    if (v59 < 7)
                    {
                      v64 = 0;
                    }

                    result = v348 + v45 + v64 * a5;
                    v65 = *result;
                    if (v45 <= 6)
                    {
                      v66 = (result + (7 - v45));
                      v67 = vld1q_dup_s8(v66);
                      v65 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v57), v65, v67);
                    }

                    if ((v367 & 0x80000000) == 0)
                    {
                      v68 = (result + v353);
                      v69 = vld1q_dup_s8(v68);
                      v65 = vbslq_s8(vcgtq_u8(v58, xmmword_277BB79D0), v65, v69);
                    }

                    v70 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[v60 >> 10], vmovl_u8(*v65.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v65, v65, 1uLL)), xmmword_277C395F8[(a19 + v60) >> 10]))), vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(v364 + v60) >> 10], vmovl_u8(*&vextq_s8(v65, v65, 2uLL)))), vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(v25 + v60) >> 10], vmovl_u8(*&vextq_s8(v65, v65, 3uLL)))))), v33);
                    *v70.i8 = vqrshrun_n_s32(v70, 3uLL);
                    *v62++ = v70;
                    v60 += a20;
                    ++v61;
                    ++v59;
                    --v63;
                  }

                  while (v63);
                }

                else
                {
                  if (v366 < -6)
                  {
                    goto LABEL_87;
                  }

                  v240 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
                  v241 = v46;
                  LODWORD(result) = v346 + v51;
                  v242 = v46 - 7;
                  v243 = v369;
                  v244 = v359;
                  do
                  {
                    if (v242 >= v24)
                    {
                      v245 = v24;
                    }

                    else
                    {
                      v245 = v242;
                    }

                    if (v241 < 7)
                    {
                      v245 = 0;
                    }

                    v246 = *(v240 + v245 * a5);
                    v247 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[result >> 10], vmovl_u8(*v246.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v246, v246, 1uLL)), xmmword_277C395F8[(a19 + result) >> 10]))), vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(v364 + result) >> 10], vmovl_u8(*&vextq_s8(v246, v246, 2uLL)))), vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(v25 + result) >> 10], vmovl_u8(*&vextq_s8(v246, v246, 3uLL)))))), v33);
                    *v247.i8 = vqrshrun_n_s32(v247, 3uLL);
                    *v243++ = v247;
                    result = (result + a20);
                    ++v242;
                    ++v241;
                    --v244;
                  }

                  while (v244);
                }
              }

              else if (v56)
              {
                if (v366 < -6)
                {
                  goto LABEL_87;
                }

                v211 = vdupq_n_s8(v53);
                v212 = vdupq_n_s8(7 - (v45 - a3));
                v351 = 6 - v54;
                v213 = v46;
                v214 = v346 + v51;
                v215 = v46 - 7;
                v216 = v369;
                v217 = v359;
                do
                {
                  if (v215 >= v24)
                  {
                    v218 = v24;
                  }

                  else
                  {
                    v218 = v215;
                  }

                  if (v213 < 7)
                  {
                    v218 = 0;
                  }

                  result = v348 + v45 + v218 * a5;
                  v219 = *result;
                  if (v45 <= 6)
                  {
                    v220 = (result + (7 - v45));
                    v221 = vld1q_dup_s8(v220);
                    v219 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v211), v219, v221);
                  }

                  if ((v367 & 0x80000000) == 0)
                  {
                    v222 = (result + v351);
                    v223 = vld1q_dup_s8(v222);
                    v219 = vbslq_s8(vcgtq_u8(v212, xmmword_277BB79D0), v219, v223);
                  }

                  v224 = xmmword_277C395F8[v214 >> 10];
                  v225 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v224, vmovl_u8(*v219.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v219, v219, 1uLL)), v224))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v219, v219, 2uLL)), v224)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v219, v219, 3uLL)), v224)))), v33);
                  *v225.i8 = vqrshrun_n_s32(v225, 3uLL);
                  *v216++ = v225;
                  v214 += a20;
                  ++v215;
                  ++v213;
                  --v217;
                }

                while (v217);
              }

              else
              {
                if (v366 < -6)
                {
                  goto LABEL_87;
                }

                v310 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
                v311 = v46;
                LODWORD(result) = v346 + v51;
                v312 = v46 - 7;
                v313 = v369;
                v314 = v359;
                do
                {
                  if (v312 >= v24)
                  {
                    v315 = v24;
                  }

                  else
                  {
                    v315 = v312;
                  }

                  if (v311 < 7)
                  {
                    v315 = 0;
                  }

                  v316 = *(v310 + v315 * a5);
                  v317 = xmmword_277C395F8[result >> 10];
                  v318 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v317, vmovl_u8(*v316.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v316, v316, 1uLL)), v317))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v316, v316, 2uLL)), v317)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v316, v316, 3uLL)), v317)))), v33);
                  *v318.i8 = vqrshrun_n_s32(v318, 3uLL);
                  *v313++ = v318;
                  result = (result + a20);
                  ++v312;
                  ++v311;
                  --v314;
                }

                while (v314);
              }
            }

            else if (a19)
            {
              if (v56)
              {
                if (v366 < -6)
                {
                  goto LABEL_87;
                }

                v173 = vdupq_n_s8(v53);
                v174 = vdupq_n_s8(7 - (v45 - a3));
                v175 = xmmword_277C395F8[v52 >> 10];
                v176 = xmmword_277C395F8[(v52 + a19) >> 10];
                v177 = xmmword_277C395F8[(v52 + v364) >> 10];
                v178 = xmmword_277C395F8[(v52 + v25) >> 10];
                v355 = 6 - v54;
                v179 = v46;
                v180 = v46 - 7;
                v181 = v369;
                v182 = v359;
                do
                {
                  if (v180 >= v24)
                  {
                    v183 = v24;
                  }

                  else
                  {
                    v183 = v180;
                  }

                  if (v179 < 7)
                  {
                    v183 = 0;
                  }

                  result = v348 + v45 + v183 * a5;
                  v184 = *result;
                  if (v45 <= 6)
                  {
                    v185 = (result + (7 - v45));
                    v186 = vld1q_dup_s8(v185);
                    v184 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v173), v184, v186);
                  }

                  if ((v367 & 0x80000000) == 0)
                  {
                    v187 = (result + v355);
                    v188 = vld1q_dup_s8(v187);
                    v184 = vbslq_s8(vcgtq_u8(v174, xmmword_277BB79D0), v184, v188);
                  }

                  v189 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v175, vmovl_u8(*v184.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v184, v184, 1uLL)), v176))), vpaddq_s32(vpaddlq_s16(vmulq_s16(v177, vmovl_u8(*&vextq_s8(v184, v184, 2uLL)))), vpaddlq_s16(vmulq_s16(v178, vmovl_u8(*&vextq_s8(v184, v184, 3uLL)))))), v33);
                  *v189.i8 = vqrshrun_n_s32(v189, 3uLL);
                  *v181++ = v189;
                  ++v180;
                  ++v179;
                  --v182;
                }

                while (v182);
              }

              else
              {
                if (v366 < -6)
                {
                  goto LABEL_87;
                }

                v287 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
                v288 = xmmword_277C395F8[v52 >> 10];
                v289 = xmmword_277C395F8[(v52 + a19) >> 10];
                v290 = xmmword_277C395F8[(v52 + v364) >> 10];
                v291 = v46 - 7;
                v292 = xmmword_277C395F8[(v52 + v25) >> 10];
                result = v369;
                v293 = v359;
                v46 = v46;
                do
                {
                  if (v291 >= v24)
                  {
                    v294 = v24;
                  }

                  else
                  {
                    v294 = v291;
                  }

                  if (v46 < 7)
                  {
                    v294 = 0;
                  }

                  v295 = *(v287 + v294 * a5);
                  v296 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v288, vmovl_u8(*v295.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v295, v295, 1uLL)), v289))), vpaddq_s32(vpaddlq_s16(vmulq_s16(v290, vmovl_u8(*&vextq_s8(v295, v295, 2uLL)))), vpaddlq_s16(vmulq_s16(v292, vmovl_u8(*&vextq_s8(v295, v295, 3uLL)))))), v33);
                  *v296.i8 = vqrshrun_n_s32(v296, 3uLL);
                  *result = v296;
                  result += 16;
                  ++v291;
                  ++v46;
                  --v293;
                }

                while (v293);
              }
            }

            else if (v56)
            {
              if (v366 < -6)
              {
                goto LABEL_87;
              }

              v259 = vdupq_n_s8(v53);
              v260 = xmmword_277C395F8[v52 >> 10];
              v261 = vdupq_n_s8(7 - (v45 - a3));
              v357 = 6 - v54;
              v262 = v46;
              v263 = v46 - 7;
              v264 = v369;
              v265 = v359;
              do
              {
                if (v263 >= v24)
                {
                  v266 = v24;
                }

                else
                {
                  v266 = v263;
                }

                if (v262 < 7)
                {
                  v266 = 0;
                }

                result = v348 + v45 + v266 * a5;
                v267 = *result;
                if (v45 <= 6)
                {
                  v268 = (result + (7 - v45));
                  v269 = vld1q_dup_s8(v268);
                  v267 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v259), v267, v269);
                }

                if ((v367 & 0x80000000) == 0)
                {
                  v270 = (result + v357);
                  v271 = vld1q_dup_s8(v270);
                  v267 = vbslq_s8(vcgtq_u8(v261, xmmword_277BB79D0), v267, v271);
                }

                v272 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v260, vmovl_u8(*v267.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v267, v267, 1uLL)), v260))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v267, v267, 2uLL)), v260)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v267, v267, 3uLL)), v260)))), v33);
                *v272.i8 = vqrshrun_n_s32(v272, 3uLL);
                *v264++ = v272;
                ++v263;
                ++v262;
                --v265;
              }

              while (v265);
            }

            else
            {
              if (v366 < -6)
              {
                goto LABEL_87;
              }

              v327 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
              v328 = xmmword_277C395F8[v52 >> 10];
              v329 = v46;
              v330 = v46 - 7;
              result = v369;
              v331 = v359;
              do
              {
                if (v330 >= v24)
                {
                  v332 = v24;
                }

                else
                {
                  v332 = v330;
                }

                if (v329 < 7)
                {
                  v332 = 0;
                }

                v333 = *(v327 + v332 * a5);
                v334 = vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v328, vmovl_u8(*v333.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v333, v333, 1uLL)), v328))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v333, v333, 2uLL)), v328)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v333, v333, 3uLL)), v328)))), v33);
                *v334.i8 = vqrshrun_n_s32(v334, 3uLL);
                *result = v334;
                result += 16;
                ++v330;
                ++v329;
                --v331;
              }

              while (v331);
            }
          }

          else if (a20)
          {
            if (a19)
            {
              if (v56)
              {
                if (v366 >= -6)
                {
                  v153 = vdupq_n_s8(v53);
                  v154 = vdupq_n_s8(7 - (v45 - a3));
                  v354 = 6 - v54;
                  v46 = v46;
                  v155 = v346 + v51;
                  v156 = v46 - 7;
                  v157 = v369;
                  v158 = v359;
                  do
                  {
                    if (v156 >= v24)
                    {
                      v159 = v24;
                    }

                    else
                    {
                      v159 = v156;
                    }

                    if (v46 < 7)
                    {
                      v159 = 0;
                    }

                    v160 = (v348 + v45 + v159 * a5);
                    v161 = *v160;
                    if (v45 <= 6)
                    {
                      v162 = &v160->i8[(7 - v45)];
                      v163 = vld1q_dup_s8(v162);
                      v161 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v153), v161, v163);
                    }

                    if ((v367 & 0x80000000) == 0)
                    {
                      v164 = &v160->i8[v354];
                      v165 = vld1q_dup_s8(v164);
                      v161 = vbslq_s8(vcgtq_u8(v154, xmmword_277BB79D0), v161, v165);
                    }

                    v166 = a19 + v364 + v155;
                    v167 = xmmword_277C395F8[v166 >> 10];
                    v168 = a19 + v166;
                    v169 = xmmword_277C395F8[v168 >> 10];
                    v170 = a19 + v168;
                    v171 = xmmword_277C395F8[v170 >> 10];
                    v172 = a19 + v170;
                    result = (v172 >> 10);
                    *v157++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[v155 >> 10], vmovl_u8(*v161.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v161, v161, 1uLL)), xmmword_277C395F8[(a19 + v155) >> 10]))), vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(v364 + v155) >> 10], vmovl_u8(*&vextq_s8(v161, v161, 2uLL)))), vpaddlq_s16(vmulq_s16(v167, vmovl_u8(*&vextq_s8(v161, v161, 3uLL)))))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v169, vmovl_u8(*&vextq_s8(v161, v161, 4uLL)))), vpaddlq_s16(vmulq_s16(v171, vmovl_u8(*&vextq_s8(v161, v161, 5uLL))))), vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[result], vmovl_u8(*&vextq_s8(v161, v161, 6uLL)))), vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(a19 + v172) >> 10], vmovl_u8(*&vextq_s8(v161, v161, 7uLL)))))), v33), 3uLL);
                    v155 += a20;
                    ++v156;
                    ++v46;
                    --v158;
                  }

                  while (v158);
                }
              }

              else if (v366 >= -6)
              {
                v248 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
                v46 = v46;
                v249 = v346 + v51;
                LODWORD(result) = v46 - 7;
                v250 = v369;
                v251 = v359;
                do
                {
                  if (result >= v24)
                  {
                    v252 = v24;
                  }

                  else
                  {
                    v252 = result;
                  }

                  if (v46 < 7)
                  {
                    v252 = 0;
                  }

                  v253 = *(v248 + v252 * a5);
                  v254 = a19 + v364 + v249;
                  v255 = xmmword_277C395F8[v254 >> 10];
                  v256 = a19 + v254;
                  v257 = xmmword_277C395F8[v256 >> 10];
                  v258 = a19 + v256;
                  *v250++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[v249 >> 10], vmovl_u8(*v253.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v253, v253, 1uLL)), xmmword_277C395F8[(a19 + v249) >> 10]))), vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(v364 + v249) >> 10], vmovl_u8(*&vextq_s8(v253, v253, 2uLL)))), vpaddlq_s16(vmulq_s16(v255, vmovl_u8(*&vextq_s8(v253, v253, 3uLL)))))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v257, vmovl_u8(*&vextq_s8(v253, v253, 4uLL)))), vpaddlq_s16(vmulq_s16(xmmword_277C395F8[v258 >> 10], vmovl_u8(*&vextq_s8(v253, v253, 5uLL))))), vpaddq_s32(vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(a19 + v258) >> 10], vmovl_u8(*&vextq_s8(v253, v253, 6uLL)))), vpaddlq_s16(vmulq_s16(xmmword_277C395F8[(a19 + a19 + v258) >> 10], vmovl_u8(*&vextq_s8(v253, v253, 7uLL)))))), v33), 3uLL);
                  v249 += a20;
                  result = (result + 1);
                  ++v46;
                  --v251;
                }

                while (v251);
              }
            }

            else if (v56)
            {
              if (v366 >= -6)
              {
                v226 = vdupq_n_s8(v53);
                v227 = vdupq_n_s8(7 - (v45 - a3));
                v356 = 6 - v54;
                v228 = v46;
                v229 = v346 + v51;
                v230 = v46 - 7;
                v231 = v369;
                v232 = v359;
                do
                {
                  if (v230 >= v24)
                  {
                    v233 = v24;
                  }

                  else
                  {
                    v233 = v230;
                  }

                  if (v228 < 7)
                  {
                    v233 = 0;
                  }

                  result = v348 + v45 + v233 * a5;
                  v234 = *result;
                  if (v45 <= 6)
                  {
                    v235 = (result + (7 - v45));
                    v236 = vld1q_dup_s8(v235);
                    v234 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v226), v234, v236);
                  }

                  if ((v367 & 0x80000000) == 0)
                  {
                    v237 = (result + v356);
                    v238 = vld1q_dup_s8(v237);
                    v234 = vbslq_s8(vcgtq_u8(v227, xmmword_277BB79D0), v234, v238);
                  }

                  v239 = xmmword_277C395F8[v229 >> 10];
                  *v231++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v239, vmovl_u8(*v234.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 1uLL)), v239))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 2uLL)), v239)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 3uLL)), v239)))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 4uLL)), v239)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 5uLL)), v239))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 6uLL)), v239)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v234, v234, 7uLL)), v239)))), v33), 3uLL);
                  v229 += a20;
                  ++v230;
                  ++v228;
                  --v232;
                }

                while (v232);
              }
            }

            else if (v366 >= -6)
            {
              v319 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
              v320 = v46;
              LODWORD(result) = v346 + v51;
              v321 = v46 - 7;
              v322 = v369;
              v323 = v359;
              do
              {
                if (v321 >= v24)
                {
                  v324 = v24;
                }

                else
                {
                  v324 = v321;
                }

                if (v320 < 7)
                {
                  v324 = 0;
                }

                v325 = *(v319 + v324 * a5);
                v326 = xmmword_277C395F8[result >> 10];
                *v322++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v326, vmovl_u8(*v325.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 1uLL)), v326))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 2uLL)), v326)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 3uLL)), v326)))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 4uLL)), v326)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 5uLL)), v326))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 6uLL)), v326)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v325, v325, 7uLL)), v326)))), v33), 3uLL);
                result = (result + a20);
                ++v321;
                ++v320;
                --v323;
              }

              while (v323);
            }
          }

          else if (a19)
          {
            if (v56)
            {
              if (v366 >= -6)
              {
                v190 = xmmword_277C395F8[v52 >> 10];
                v191 = vdupq_n_s8(v53);
                v192 = xmmword_277C395F8[(v52 + a19) >> 10];
                v193 = xmmword_277C395F8[(v52 + v364) >> 10];
                v194 = vdupq_n_s8(7 - (v45 - a3));
                v195 = xmmword_277C395F8[(v52 + v25) >> 10];
                v196 = xmmword_277C395F8[(v52 + v345) >> 10];
                v197 = xmmword_277C395F8[(v52 + v343) >> 10];
                v198 = xmmword_277C395F8[(v52 + v342) >> 10];
                v199 = xmmword_277C395F8[(v52 + v344) >> 10];
                v200 = 6 - v54;
                v201 = v46;
                v202 = v46 - 7;
                v203 = v369;
                v204 = v359;
                do
                {
                  if (v202 >= v24)
                  {
                    v205 = v24;
                  }

                  else
                  {
                    v205 = v202;
                  }

                  if (v201 < 7)
                  {
                    v205 = 0;
                  }

                  result = v348 + v45 + v205 * a5;
                  v206 = *result;
                  if (v45 <= 6)
                  {
                    v207 = (result + (7 - v45));
                    v208 = vld1q_dup_s8(v207);
                    v206 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v191), v206, v208);
                  }

                  if ((v367 & 0x80000000) == 0)
                  {
                    v209 = (result + v200);
                    v210 = vld1q_dup_s8(v209);
                    v206 = vbslq_s8(vcgtq_u8(v194, xmmword_277BB79D0), v206, v210);
                  }

                  *v203++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v190, vmovl_u8(*v206.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v206, v206, 1uLL)), v192))), vpaddq_s32(vpaddlq_s16(vmulq_s16(v193, vmovl_u8(*&vextq_s8(v206, v206, 2uLL)))), vpaddlq_s16(vmulq_s16(v195, vmovl_u8(*&vextq_s8(v206, v206, 3uLL)))))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v196, vmovl_u8(*&vextq_s8(v206, v206, 4uLL)))), vpaddlq_s16(vmulq_s16(v197, vmovl_u8(*&vextq_s8(v206, v206, 5uLL))))), vpaddq_s32(vpaddlq_s16(vmulq_s16(v198, vmovl_u8(*&vextq_s8(v206, v206, 6uLL)))), vpaddlq_s16(vmulq_s16(v199, vmovl_u8(*&vextq_s8(v206, v206, 7uLL)))))), v33), 3uLL);
                  ++v202;
                  ++v201;
                  --v204;
                }

                while (v204);
              }
            }

            else if (v366 >= -6)
            {
              v297 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
              v298 = xmmword_277C395F8[v52 >> 10];
              v299 = xmmword_277C395F8[(v52 + a19) >> 10];
              v300 = xmmword_277C395F8[(v52 + v364) >> 10];
              v301 = xmmword_277C395F8[(v52 + v25) >> 10];
              v302 = xmmword_277C395F8[(v52 + v345) >> 10];
              v303 = xmmword_277C395F8[(v52 + v343) >> 10];
              v304 = xmmword_277C395F8[(v52 + v342) >> 10];
              v305 = v46 - 7;
              v306 = xmmword_277C395F8[(v52 + v344) >> 10];
              result = v369;
              v307 = v359;
              v46 = v46;
              do
              {
                if (v305 >= v24)
                {
                  v308 = v24;
                }

                else
                {
                  v308 = v305;
                }

                if (v46 < 7)
                {
                  v308 = 0;
                }

                v309 = *(v297 + v308 * a5);
                *result = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v298, vmovl_u8(*v309.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v309, v309, 1uLL)), v299))), vpaddq_s32(vpaddlq_s16(vmulq_s16(v300, vmovl_u8(*&vextq_s8(v309, v309, 2uLL)))), vpaddlq_s16(vmulq_s16(v301, vmovl_u8(*&vextq_s8(v309, v309, 3uLL)))))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v302, vmovl_u8(*&vextq_s8(v309, v309, 4uLL)))), vpaddlq_s16(vmulq_s16(v303, vmovl_u8(*&vextq_s8(v309, v309, 5uLL))))), vpaddq_s32(vpaddlq_s16(vmulq_s16(v304, vmovl_u8(*&vextq_s8(v309, v309, 6uLL)))), vpaddlq_s16(vmulq_s16(v306, vmovl_u8(*&vextq_s8(v309, v309, 7uLL)))))), v33), 3uLL);
                result += 16;
                ++v305;
                ++v46;
                --v307;
              }

              while (v307);
            }
          }

          else if (v56)
          {
            if (v366 >= -6)
            {
              v273 = vdupq_n_s8(v53);
              v274 = xmmword_277C395F8[v52 >> 10];
              v275 = vdupq_n_s8(7 - (v45 - a3));
              v276 = 6 - v54;
              v277 = v46;
              v278 = v46 - 7;
              v279 = v369;
              v280 = v359;
              do
              {
                if (v278 >= v24)
                {
                  v281 = v24;
                }

                else
                {
                  v281 = v278;
                }

                if (v277 < 7)
                {
                  v281 = 0;
                }

                result = v348 + v45 + v281 * a5;
                v282 = *result;
                if (v45 <= 6)
                {
                  v283 = (result + (7 - v45));
                  v284 = vld1q_dup_s8(v283);
                  v282 = vbslq_s8(vcgtq_u8(xmmword_277BB79D0, v273), v282, v284);
                }

                if ((v367 & 0x80000000) == 0)
                {
                  v285 = (result + v276);
                  v286 = vld1q_dup_s8(v285);
                  v282 = vbslq_s8(vcgtq_u8(v275, xmmword_277BB79D0), v282, v286);
                }

                *v279++ = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v274, vmovl_u8(*v282.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 1uLL)), v274))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 2uLL)), v274)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 3uLL)), v274)))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 4uLL)), v274)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 5uLL)), v274))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 6uLL)), v274)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v282, v282, 7uLL)), v274)))), v33), 3uLL);
                ++v278;
                ++v277;
                --v280;
              }

              while (v280);
            }
          }

          else if (v366 >= -6)
          {
            v335 = v348 + ((v44 >> 16) & 0x7FFFFFFF);
            v336 = xmmword_277C395F8[v52 >> 10];
            v337 = v46;
            v338 = v46 - 7;
            result = v369;
            v339 = v359;
            do
            {
              if (v338 >= v24)
              {
                v340 = v24;
              }

              else
              {
                v340 = v338;
              }

              if (v337 < 7)
              {
                v340 = 0;
              }

              v341 = *(v335 + v340 * a5);
              *result = vqrshrun_high_n_s32(vqrshrun_n_s32(vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(v336, vmovl_u8(*v341.i8))), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 1uLL)), v336))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 2uLL)), v336)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 3uLL)), v336)))), v33), 3uLL), vaddq_s32(vpaddq_s32(vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 4uLL)), v336)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 5uLL)), v336))), vpaddq_s32(vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 6uLL)), v336)), vpaddlq_s16(vmulq_s16(vmovl_u8(*&vextq_s8(v341, v341, 7uLL)), v336)))), v33), 3uLL);
              result += 16;
              ++v338;
              ++v337;
              --v339;
            }

            while (v339);
          }
        }
      }

      else if (v366 >= -6)
      {
        v47 = v46;
        v48 = v46 - 7;
        v49 = v369;
        result = v359;
        do
        {
          if (v48 >= v24)
          {
            v50 = v24;
          }

          else
          {
            v50 = v48;
          }

          if (v47 < 7)
          {
            v50 = 0;
          }

          *v49++ = vdupq_n_s16(16 * *(a2 + v50 * a5) + 2048);
          ++v48;
          ++v47;
          --result;
        }

        while (result);
      }

      v75 = (((v365 & 0xFFFC) - 4 * (a22 + a21)) & 0xFFFFFFC0) + 66048;
      if (a12 <= 4)
      {
        v127 = v370;
        v128 = v360;
        v129 = v41;
        v130 = v40;
        if (v366 >= 1)
        {
          do
          {
            v131 = *v127[-8].i8;
            v132 = *v127[-6].i8;
            v134 = *v127[-4].i8;
            v133 = *v127[-2].i8;
            v135 = v75 >> 10;
            if (a21)
            {
              v131.u64[1] = *v127;
              v132.u64[1] = v127[2];
              v134.u64[1] = v127[4];
              v133.u64[1] = v127[6];
              v136 = vtrn1q_s16(v131, v132);
              v137 = vtrn2q_s16(v131, v132);
              v138 = vtrn1q_s16(v134, v133);
              v139 = vtrn2q_s16(v134, v133);
              v140 = vtrn1q_s32(v136, v138);
              v141 = vtrn2q_s32(v136, v138);
              v142 = vtrn1q_s32(v137, v139);
              v143 = xmmword_277C395F8[(a21 + v75) >> 10];
              v144 = xmmword_277C395F8[(v34 + v75) >> 10];
              v145 = xmmword_277C395F8[(v35 + v75) >> 10];
              v146 = vtrn2q_s32(v137, v139);
              v147 = vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v140.i8, *xmmword_277C395F8[v135].i8), v140, xmmword_277C395F8[v135]), vmlal_high_s16(vmull_s16(*v142.i8, *v143.i8), v142, v143)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v141.i8, *v144.i8), v141, v144), vmlal_high_s16(vmull_s16(*v146.i8, *v145.i8), v146, v145)));
            }

            else
            {
              v148 = xmmword_277C395F8[v135];
              v147 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v132.i8, *v148.i8, 1), *v131.i8, *v148.i8, 0), *v134.i8, *v148.i8, 2), *v133.i8, *v148.i8, 3), *v127, v148, 4), v127[2], v148, 5), v127[4], v148, 6), v127[6], v148, 7);
            }

            v149 = vaddq_s32(v147, v30);
            if (v26)
            {
              v150 = (v22 + 2 * v129);
              v151 = vshrn_n_s32(v149, 7uLL);
              if (v28)
              {
                v152 = *v150;
                if (v27)
                {
                  v149 = vmlal_lane_s16(vmull_lane_s16(v151, a11, 0), v152, a10, 0);
                  *v149.i8 = vshrn_n_s32(v149, 4uLL);
                }

                else
                {
                  *v149.i8 = vhadd_s16(v152, v151);
                }

                *v149.i8 = vadd_s16(*v149.i8, vdup_n_s16(0xE808u));
                *(a6 + v130) = vqshrun_n_s16(v149, 4uLL).u32[0];
              }

              else
              {
                *v150 = v151;
              }
            }

            else
            {
              *v149.i8 = vadd_s16(vshrn_n_s32(v149, 0xBuLL), vdup_n_s16(0xFE80u));
              *(a6 + v130) = vqmovun_s16(v149).u32[0];
            }

            v130 += a14;
            v129 += v23;
            v75 += a22;
            v127 += 2;
            --v128;
          }

          while (v128);
        }
      }

      else
      {
        result = (4 * a21);
        if (v366 >= 1)
        {
          v76 = v370;
          v77 = v360;
          v78 = v41;
          v79 = v40;
          while (1)
          {
            v80 = v76[-4];
            v81 = v76[-3];
            v83 = v76[-2];
            v82 = v76[-1];
            v85 = *v76;
            v84 = v76[1];
            v86 = v75 >> 10;
            v88 = v76[2];
            v87 = v76[3];
            if (a21)
            {
              v89 = vtrn1q_s16(v80, v81);
              v90 = vtrn2q_s16(v80, v81);
              v91 = vtrn1q_s16(v83, v82);
              v92 = vtrn2q_s16(v83, v82);
              v93 = vtrn1q_s16(v85, v84);
              v94 = vtrn2q_s16(v85, v84);
              v95 = vtrn1q_s16(v88, v87);
              v96 = vtrn2q_s16(v88, v87);
              v97 = vtrn1q_s32(v89, v91);
              v98 = vtrn2q_s32(v89, v91);
              v99 = vtrn1q_s32(v90, v92);
              v100 = vtrn2q_s32(v90, v92);
              v101 = vtrn1q_s32(v93, v95);
              v102 = vtrn2q_s32(v93, v95);
              v103 = vtrn1q_s32(v94, v96);
              v104 = vtrn2q_s32(v94, v96);
              v105 = vzip2q_s64(v97, v101);
              v106 = vzip2q_s64(v99, v103);
              v107 = vzip2q_s64(v98, v102);
              v108 = vzip2q_s64(v100, v104);
              v109 = xmmword_277C395F8[(a21 + v75) >> 10];
              v110 = xmmword_277C395F8[(v34 + v75) >> 10];
              v111 = xmmword_277C395F8[(v35 + v75) >> 10];
              v112 = xmmword_277C395F8[(result + v75) >> 10];
              v113 = xmmword_277C395F8[(5 * a21 + v75) >> 10];
              v114 = xmmword_277C395F8[(6 * a21 + v75) >> 10];
              v115 = xmmword_277C395F8[(7 * a21 + v75) >> 10];
              v116 = vpaddq_s32(vpaddq_s32(vmlal_s16(vmull_s16(*v101.i8, *&vextq_s8(xmmword_277C395F8[v86], xmmword_277C395F8[v86], 8uLL)), *v97.i8, *xmmword_277C395F8[v86].i8), vmlal_s16(vmull_s16(*v103.i8, *&vextq_s8(v109, v109, 8uLL)), *v99.i8, *v109.i8)), vpaddq_s32(vmlal_s16(vmull_s16(*v102.i8, *&vextq_s8(v110, v110, 8uLL)), *v98.i8, *v110.i8), vmlal_s16(vmull_s16(*v104.i8, *&vextq_s8(v111, v111, 8uLL)), *v100.i8, *v111.i8)));
              v117 = vpaddq_s32(vpaddq_s32(vmlal_high_s16(vmull_s16(*v105.i8, *v112.i8), v105, v112), vmlal_high_s16(vmull_s16(*v106.i8, *v113.i8), v106, v113)), vpaddq_s32(vmlal_high_s16(vmull_s16(*v107.i8, *v114.i8), v107, v114), vmlal_high_s16(vmull_s16(*v108.i8, *v115.i8), v108, v115)));
            }

            else
            {
              v118 = xmmword_277C395F8[v86];
              v116 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v81.i8, *v118.i8, 1), *v80.i8, *v118.i8, 0), *v83.i8, *v118.i8, 2), *v82.i8, *v118.i8, 3), *v85.i8, v118, 4), *v84.i8, v118, 5), *v88.i8, v118, 6), *v87.i8, v118, 7);
              v117 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v81, *v118.i8, 1), v80, *v118.i8, 0), v83, *v118.i8, 2), v82, *v118.i8, 3), v85, v118, 4), v84, v118, 5), v88, v118, 6), v87, v118, 7);
            }

            v119 = vaddq_s32(v116, v30);
            v120 = vaddq_s32(v117, v30);
            if (!v26)
            {
              break;
            }

            v121 = (v22 + 2 * v78);
            v122 = vshrn_n_s32(v119, 7uLL);
            v123 = vshrn_high_n_s32(v122, v120, 7uLL);
            if (v28)
            {
              v124 = *v121;
              if (v27)
              {
                v125 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v122, a11, 0), *v124.i8, a10, 0), 4uLL), vmlal_high_lane_s16(vmull_lane_s16(vshrn_n_s32(v120, 7uLL), a11, 0), v124, a10, 0), 4uLL);
              }

              else
              {
                v125 = vhaddq_s16(v124, v123);
              }

              v126 = vqshrun_n_s16(vaddq_s16(v125, v32), 4uLL);
              goto LABEL_71;
            }

            *v121 = v123;
LABEL_72:
            v79 += a14;
            v78 += v23;
            v75 += a22;
            ++v76;
            if (!--v77)
            {
              goto LABEL_87;
            }
          }

          v126 = vqmovun_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v119, 0xBuLL), v120, 0xBuLL), v31));
LABEL_71:
          *(a6 + v79) = v126;
          goto LABEL_72;
        }
      }

LABEL_87:
      v39 += 8;
      v40 += 8;
      v41 += 8;
      if (v39 >= a12)
      {
        goto LABEL_263;
      }
    }
  }

  return result;
}

double sub_277AE7520(int a1, int a2, int a3, uint64_t a4, double a5)
{
  v5 = -1.0;
  if (a1 != 1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v5 = 1.0e16;
      do
      {
        if (!*a4)
        {
          if (!*(a4 + 4))
          {
            break;
          }

          v8 = *(a4 + 16);
          if (v8 < v5 && v8 >= 0.0)
          {
            v5 = *(a4 + 16);
          }
        }

        v7 = v6 > 8;
        a4 += 24;
        ++v6;
      }

      while (v6 != 10);
      if (v5 >= 1.0e16)
      {
        v5 = -1.0;
      }

      if (!v7)
      {
        return a5;
      }
    }

    else
    {
      return a3 / 90000.0;
    }
  }

  return v5;
}

void sub_277AE75B4(uint64_t a1)
{
  v2 = 0;
  v23 = (a1 + 245676);
  do
  {
    v3 = *a1 + 8 * v2;
    v4 = *(v3 + 23216);
    if (v4)
    {
      bzero(*(v3 + 23216), 0x107D0uLL);
      *&v5 = -1;
      *(&v5 + 1) = -1;
      v6 = 0;
      *(v4 + 56) = 31;
      *(v4 + 28) = 0x7FFFFFFF;
      *(v4 + 12) = xmmword_277BB79E0;
      *(v4 + 48) = 0x4197D78400000000;
      v7 = v23[3];
      v8 = *v23;
      v9 = *v23 * v7;
      v10 = (v4 + 12560);
      do
      {
        v11 = v4 + 12432 + 1968 * v6;
        v12 = &qword_277C300D0[10 * v6];
        if (v7 <= v12[2] && v8 <= v12[3] && v9 <= v12[1])
        {
          *v11 = 0;
          *(v11 + 3) = v6;
          v13 = *(a1 + 270312);
          if (*v12 < 8u || *(v13 + v2 + 321) == 0)
          {
            v15 = 12;
          }

          else
          {
            v15 = 14;
          }

          if (*(v13 + 69) == 1)
          {
            v16 = 2.0;
          }

          else
          {
            v16 = 3.0;
          }

          if (!*(v13 + 69))
          {
            v16 = 1.0;
          }

          v17 = v16 * (*&v12[v15] * 1000000.0);
          *(v11 + 1) = 0;
          *(v11 + 4) = 300647710740000;
          *(v11 + 1904) = 0;
          *(v11 + 1920) = 0;
          *(v11 + 1912) = 0;
          *(v11 + 1928) = 0xBFF0000000000000;
          *(v11 + 1936) = 0xBFF0000000000000;
          *(v11 + 1944) = 0;
          *(v11 + 1960) = 0;
          *(v11 + 1952) = 0;
          *(v11 + 56) = v17;
          *(v11 + 64) = -1;
          *(v11 + 72) = -1;
          *(v11 + 40) = 0;
          v18 = v10;
          v19 = 10;
          do
          {
            *(v18 - 2) = 0;
            *(v18 - 2) = -1;
            *v18 = 0xBFF0000000000000;
            v18 += 3;
            --v19;
          }

          while (v19);
          *(v11 + 92) = v5;
          *(v11 + 76) = v5;
          *(v11 + 352) = 0;
          *(v11 + 360) = 0;
          if (*(v13 + 248))
          {
            v20 = *(v13 + 264);
            v21 = (*(v13 + 252) / *(v13 + 256));
          }

          else
          {
            v20 = 1;
            v21 = 1.0 / *(a1 + 395376);
          }

          *(v11 + 32) = v21;
          v22 = *(v13 + 48 * v2 + 400);
          *(v11 + 12) = v20;
          *(v11 + 16) = v22;
          *(v11 + 48) = 0xBFF0000000000000;
          *(v11 + 24) = qword_277C300D0[10 * v6 + 5];
        }

        else
        {
          *v11 = 7;
        }

        ++v6;
        v10 += 246;
      }

      while (v6 != 28);
    }

    ++v2;
  }

  while (v2 != 32);
}

uint64_t sub_277AE7828(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  v4 = result + 76;
  do
  {
    if ((a3 >> v3))
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        --*(result + 112 + 24 * v5);
      }

      *(v4 + 4 * v3) = a2;
      ++*(result + 112 + 24 * a2);
    }

    ++v3;
  }

  while (v3 != 8);
  return result;
}

uint64_t sub_277AE7880(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 1968 * a2 + 12432);
  if (v6 != 7 && v6 != 0)
  {
    return 19;
  }

  v8 = &unk_277C300D0 + 80 * a2;
  if (*(a1 + 60) > *(v8 + 1))
  {
    return 0;
  }

  if (*(a1 + 64) > *(v8 + 2))
  {
    return 1;
  }

  if (*(a1 + 68) > *(v8 + 3))
  {
    return 2;
  }

  if (*(a1 + 84) > *(v8 + 7))
  {
    return 5;
  }

  v10 = *(v8 + 6);
  if (*(a1 + 80) > v10)
  {
    return 6;
  }

  v11 = *(a1 + 72);
  if (v11 > *(v8 + 4))
  {
    return 13;
  }

  v12 = *(v8 + 4);
  if (*(a1 + 1968 * a2 + 14384) > v12)
  {
    return 14;
  }

  v13 = *(a1 + 96);
  if (v13 > *(v8 + 5))
  {
    return 15;
  }

  if (*(a1 + 76) > 120 * v10)
  {
    return 7;
  }

  v14 = *(a1 + 4);
  if (v14 > 9437184)
  {
    return 8;
  }

  if (*(a1 + 8) > 4096)
  {
    return 9;
  }

  if (*(a1 + 12) < 8)
  {
    return 10;
  }

  if (*(a1 + 16) < 8)
  {
    return 11;
  }

  if (*(a1 + 24) < 16)
  {
    return 3;
  }

  if (*(a1 + 28) < 16)
  {
    return 4;
  }

  if (!*(a1 + 20))
  {
    return 12;
  }

  if (a4)
  {
    v15 = 0.8;
  }

  else
  {
    v16 = *v8 < 8u || a3 == 0;
    v17 = 72;
    if (v16)
    {
      v17 = 64;
    }

    v15 = fmax(v13 / v12 * *&v8[v17], 0.8);
  }

  if (*(a1 + 48) < v15)
  {
    return 16;
  }

  v18 = *v8;
  if (a6)
  {
    v19 = v18 < 8 || a3 == 0;
    v20 = 56;
    if (v19)
    {
      v20 = 48;
    }

    v21 = 3.0;
    if (a5 == 1)
    {
      v21 = 2.0;
    }

    if (!a5)
    {
      v21 = 1.0;
    }

    if (*(a1 + 32) * 8.0 / *(a1 + 40) > v21 * (*&v8[v20] * 1000000.0))
    {
      return 18;
    }
  }

  result = 21;
  if (v18 >= 0xE)
  {
    if (v14 * v11 >= 588251137)
    {
      return 17;
    }

    else
    {
      return 21;
    }
  }

  return result;
}

unsigned __int16 *sub_277AE7B0C(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, double a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = a2 + 245760;
  v10 = *(a2 + 246148);
  if (v10 > a3)
  {
    v12 = a3;
    v14 = result;
    do
    {
      v15 = *(v9 + 392);
      if (v15 <= a4 || v10 <= v12)
      {
        return result;
      }

      v17 = *(v9 + 436);
      v18 = (*(v9 + 424) + 8 * (a4 + v17 * v12));
      v19 = **v18;
      if (v19 == a5)
      {
        v20 = 0;
      }

      else
      {
        v21 = byte_277C36D60[a5];
        v22 = byte_277C3F990[a5];
        v23 = byte_277C36D60[v19];
        v24 = byte_277C3F990[v19];
        if (a5 >= 4u && ((result = ((v22 >> 1) + v12), result < v10) ? (v25 = (a4 + (v21 >> 1)) < v15) : (v25 = 0), v25))
        {
          v31 = v18[(v21 >> 1) * v17];
          if (v24 == v22)
          {
            if (v21 == 4 * v23)
            {
              v20 = 8;
            }

            else if (*v31 == v19)
            {
              v20 = 1;
            }

            else
            {
              v20 = 5;
            }
          }

          else
          {
            v32 = v18[v22 >> 1];
            if (v23 == v21)
            {
              if (v22 == 4 * v24)
              {
                v20 = 9;
              }

              else if (*v32 == v19)
              {
                v20 = 2;
              }

              else
              {
                v20 = 7;
              }
            }

            else if (v22 == 2 * v24 && 2 * v23 == v21)
            {
              if (byte_277C3F990[*v31] == v22)
              {
                v20 = 4;
              }

              else if (byte_277C36D60[*v32] == v21)
              {
                v20 = 6;
              }

              else
              {
                v20 = 3;
              }
            }

            else
            {
              v20 = 3;
            }
          }
        }

        else
        {
          v26 = (v23 < v21) | (2 * (v24 < v22));
          if (!v26)
          {
            return result;
          }

          v20 = byte_277C31424[v26];
        }
      }

      v27 = 255;
      if (a5 > 8u)
      {
        switch(a5)
        {
          case 9u:
            v28 = 3;
            break;
          case 0xCu:
            v28 = 4;
            break;
          case 0xFu:
            v28 = 5;
            break;
          default:
            goto LABEL_30;
        }
      }

      else if (a5)
      {
        if (a5 == 3)
        {
          v28 = 1;
        }

        else
        {
          if (a5 != 6)
          {
            goto LABEL_30;
          }

          v28 = 2;
        }
      }

      else
      {
        v28 = a5;
      }

      v27 = *(&unk_277C31428 + 6 * v20 + v28);
LABEL_30:
      v29 = byte_277C3F990[a5];
      v30 = v29 >> 1;
      if (v20 != 3)
      {
        if (v20 > 4)
        {
          if (v20 > 6)
          {
            if (v20 != 7)
            {
              if (v20 == 8)
              {
                v55 = v29 >> 2;
                v56 = 4;
                do
                {
                  result = sub_277AE7FAC(v14, a2, v12, a4, a6, a7, a8, a9);
                  LODWORD(v12) = v12 + v55;
                  --v56;
                }

                while (v56);
              }

              else if (v20 == 9)
              {
                v34 = v29 >> 2;
                v35 = 4;
                do
                {
                  result = sub_277AE7FAC(v14, a2, v12, a4, a6, a7, a8, a9);
                  LODWORD(a4) = a4 + v34;
                  --v35;
                }

                while (v35);
              }

              return result;
            }

            sub_277AE7FAC(v14, a2, v12, a4, a6, a7, a8, a9);
            v51 = v30 + a4;
            v52 = v14;
            v53 = a2;
            v54 = v12;
LABEL_77:
            sub_277AE7FAC(v52, v53, v54, v51, v47, v48, v49, v50);
            v40 = v30 + v12;
            v46 = v30 + a4;
            v41 = v14;
            v42 = a2;
LABEL_78:

            return sub_277AE7FAC(v41, v42, v40, v46, a6, a7, a8, a9);
          }

          if (v20 == 5)
          {
            sub_277AE7FAC(v14, a2, v12, a4, a6, a7, a8, a9);
            v54 = v30 + v12;
            v52 = v14;
            v53 = a2;
            v51 = a4;
            goto LABEL_77;
          }

          sub_277AE7FAC(v14, a2, v12, a4, a6, a7, a8, a9);
          v43 = v30 + v12;
          v44 = v14;
          v45 = a2;
LABEL_74:
          sub_277AE7FAC(v44, v45, v43, a4, a6, a7, a8, a9);
          v46 = v30 + a4;
          v41 = v14;
          v42 = a2;
          v40 = v12;
          goto LABEL_78;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v44 = v14;
            v45 = a2;
            v43 = v12;
            goto LABEL_74;
          }

          sub_277AE7FAC(v14, a2, v12, a4, a6, a7, a8, a9);
          v39 = v30 + a4;
          v36 = v14;
          v37 = a2;
          v38 = v12;
LABEL_68:
          sub_277AE7FAC(v36, v37, v38, v39, a6, a7, a8, a9);
          v40 = v30 + v12;
          v41 = v14;
          v42 = a2;
        }

        else
        {
          if (v20)
          {
            v36 = v14;
            v37 = a2;
            v38 = v12;
            v39 = a4;
            goto LABEL_68;
          }

          v41 = v14;
          v42 = a2;
          v40 = v12;
        }

        v46 = a4;
        goto LABEL_78;
      }

      sub_277AE7B0C(v14, a2, v12, a4, v27);
      sub_277AE7B0C(v14, a2, v12, v30 + a4, v27);
      v12 = v30 + v12;
      result = sub_277AE7B0C(v14, a2, v12, a4, v27);
      v10 = *(v9 + 388);
      a5 = v27;
      a4 = v30 + a4;
    }

    while (v10 > v12);
  }

  return result;
}

unsigned __int16 *sub_277AE7FAC(unsigned __int16 *result, uint64_t a2, int a3, int a4, double a5, double a6, int8x8_t a7, int8x8_t a8)
{
  v8 = a2 + 245568;
  if (*(a2 + 246148) > a3 && *(a2 + 246152) > a4)
  {
    v10 = result;
    v11 = *(*(a2 + 246184) + 8 * (a4 + *(a2 + 246196) * a3));
    if ((*(v11 + 167) & 0x80) != 0 || v11[16] > 0)
    {
      v61 = (a2 + 270312);
      v12 = byte_277C3F990[*(a2 + 246176)];
      v13 = *v8 + 84 * (a4 / v12 + a3 / v12 * *(a2 + 245580));
      ++*(result + 3);
      v14 = v11[2];
      v15 = v11[17];
      if ((v14 & 0xFFFFFFF7) == 0x10)
      {
        v16 = 0;
        v17 = 1;
        do
        {
          if (v11[2] - 21 >= 2)
          {
            v18 = (*(v11 + 167) >> 4) & 3;
          }

          else
          {
            v18 = ((*(v11 + 167) >> 4) & 3) + 1;
          }

          v19 = (v13 + 8 * v18);
          if (v11[17] < 1)
          {
            if (v18 >= *(v13 + 40))
            {
              v19 = (v13 + 44 + 4 * v11[16]);
            }
          }

          else if ((v17 & 1) == 0)
          {
            ++v19;
          }

          sub_277AE8390(v10, *v19, HIWORD(*v19), *&v11[4 * v16 + 8], HIWORD(*&v11[4 * v16 + 8]), *(a2 + 97128), *(v8 + 541));
          v20 = v17 & (v15 > 0);
          v16 = 1;
          v17 = 0;
        }

        while ((v20 & 1) != 0);
      }

      else
      {
        v22 = v14 == 19 || v14 == 21;
        if ((v14 - 19) > 3)
        {
          if (v15 <= 0)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          *(result + 5) += v25;
        }

        else
        {
          ++*(result + 5);
          if ((v14 - 21) >= 2)
          {
            v23 = (*(v11 + 167) >> 4) & 3;
          }

          else
          {
            v23 = ((*(v11 + 167) >> 4) & 3) + 1;
          }

          if (v11[17] < 1)
          {
            if (v23 >= *(v13 + 40))
            {
              v24 = (v13 + 4 * v11[16] + 44);
            }

            else
            {
              v24 = (v13 + 8 * v23);
            }
          }

          else
          {
            v24 = (v13 + 8 * v23);
            if (v22)
            {
              ++v24;
            }
          }

          v26 = *&v11[4 * v22 + 8];
          sub_277AE8390(result, *v24, HIWORD(*v24), v26, HIWORD(v26), *(a2 + 97128), *(a2 + 246109));
        }
      }

      v27 = *v11;
      v28 = byte_277C3CAE8[v27];
      v29 = byte_277C3CAFE[v27];
      v30 = v61[244];
      v31 = *(v30 + 32);
      v32 = 4 * a3;
      v33 = 4 * a4;
      v34 = *(v30 + 40);
      if ((*(v30 + 192) & 8) != 0)
      {
        v48 = 0;
        v49 = 2 * v34 + 2 * v31 * v32 + 2 * v33;
        if (v29 <= 2)
        {
          v29 = 2;
        }

        v50 = v29 - 1;
        if (v28 <= 2)
        {
          v28 = 2;
        }

        v51 = v28 - 1;
        v52 = *(v10 + 30);
        v53 = *(v10 + 17);
        v54 = v31;
        v55 = vneg_s32(vdup_n_s32(*(*v61 + 72) - 8));
        do
        {
          v56 = v49;
          v57 = v50;
          v58 = v49;
          do
          {
            v59 = v58[1];
            ++v58;
            result = &v56[v54];
            a8.i32[0] = v59;
            a8.i16[2] = v56[v54];
            v60 = vshl_u32(vabd_u32(vdup_n_s32(*v56), vand_s8(a8, 0xFFFF0000FFFFLL)), v55);
            v52 = vadd_s32(v60, v52);
            a8 = vmul_lane_s32(v60, v60, 1);
            v53 += a8.i32[0];
            v56 = v58;
            --v57;
          }

          while (v57);
          ++v48;
          v49 += v54 * 2;
        }

        while (v48 != v51);
        *(v10 + 30) = v52;
        *(v10 + 17) = v53;
      }

      else
      {
        v35 = 0;
        v36 = (v34 + v31 * v32 + v33);
        if (v29 <= 2)
        {
          v29 = 2;
        }

        v37 = v29 - 1;
        if (v28 <= 2)
        {
          v28 = 2;
        }

        v38 = v28 - 1;
        v39 = *(v10 + 30);
        v40 = *(v10 + 17);
        do
        {
          v41 = v36;
          v42 = v37;
          v43 = v36;
          do
          {
            v44 = *++v43;
            result = *v41;
            a7.i32[0] = v44;
            a7.i8[4] = v41[v31];
            v45 = vand_s8(a7, 0xFF000000FFLL);
            v46 = vdup_n_s32(result);
            v47 = vabd_u32(v46, v45);
            v39 = vaba_u32(v39, v46, v45);
            *(v10 + 30) = v39;
            a7 = vmul_lane_s32(v47, v47, 1);
            v40 += a7.i32[0];
            *(v10 + 17) = v40;
            v41 = v43;
            --v42;
          }

          while (v42);
          ++v35;
          v36 += v31;
        }

        while (v35 != v38);
      }
    }

    else
    {
      ++*(result + 4);
    }
  }

  return result;
}

_DWORD *sub_277AE8390(_DWORD *result, int a2, int a3, int a4, int a5, uint64_t a6, char a7)
{
  v154 = result;
  v7 = a6 + 11912;
  v8 = (a5 != a3) | (2 * (a4 != a2));
  v9 = ((a5 - a3) != 0) | (2 * (a4 != a2));
  v10 = (a5 - a3 + (((a5 - a3) & 0x8000u) >> 15)) & 0xFFFFFFFE;
  v11 = (a4 - a2 + (((a4 - a2) & 0x8000u) >> 15)) & 0xFFFFFFFE;
  v157 = a5 - a3;
  v158 = a4 - a2;
  if ((a7 & 1) == 0)
  {
    LOWORD(v10) = a5 - a3;
    LOWORD(v11) = a4 - a2;
  }

  v155 = v11;
  v156 = v10;
  v12 = (v10 != 0) | (2 * (v11 != 0));
  v13 = (v7 + 2 * v8);
  v14 = *v13;
  if (v8)
  {
    v15 = (0x8000 - *(v13 - 1));
  }

  else
  {
    v15 = 0;
  }

  v16 = (0x8000 - v14) - v15;
  if (v16 <= 4)
  {
    LOWORD(v16) = 4;
  }

  v16 = v16;
  if (v16 >= 0x7FFFu)
  {
    v16 = 0x7FFF;
  }

  v17 = __clz(v16);
  v18 = 14 - (v17 ^ 0x1F);
  v19 = &word_277C31464[(((v16 << (14 - (v17 ^ 0x1F))) < 0x40) | ((255 - ((((v16 << (14 - (v17 ^ 0x1F))) << 8) + 0x4000) >> 15)) >> 23) | ((((v16 << (14 - (v17 ^ 0x1F))) << 8) + 0x4000) >> 15))];
  v20 = (v7 + 2 * v9);
  v21 = *v20;
  if (v9)
  {
    v9 = (0x8000 - *(v20 - 1));
  }

  v22 = *(v19 - 128);
  v23 = (0x8000 - v21) - v9;
  if (v23 <= 4)
  {
    LOWORD(v23) = 4;
  }

  v23 = v23;
  if (v23 >= 0x7FFFu)
  {
    v23 = 0x7FFF;
  }

  v24 = __clz(v23);
  v25 = 14 - (v24 ^ 0x1F);
  v26 = word_277C31464[(((v23 << (14 - (v24 ^ 0x1F))) < 0x40) | ((255 - ((((v23 << (14 - (v24 ^ 0x1F))) << 8) + 0x4000) >> 15)) >> 23) | ((((v23 << (14 - (v24 ^ 0x1F))) << 8) + 0x4000) >> 15)) - 128];
  v27 = (v7 + 2 * v12);
  v28 = *v27;
  if (v12)
  {
    v29 = (0x8000 - *(v27 - 1));
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  v31 = v22 + (v18 << 9);
  v32 = v26 + (v25 << 9);
  v33 = (0x8000 - v28) - v29;
  if (v33 <= 4)
  {
    LOWORD(v33) = 4;
  }

  v33 = v33;
  if (v33 >= 0x7FFFu)
  {
    v33 = 0x7FFF;
  }

  v34 = __clz(v33);
  v35 = 14 - (v34 ^ 0x1F);
  v36 = word_277C31464[(((v33 << (14 - (v34 ^ 0x1F))) < 0x40) | ((255 - ((((v33 << (14 - (v34 ^ 0x1F))) << 8) + 0x4000) >> 15)) >> 23) | ((((v33 << (14 - (v34 ^ 0x1F))) << 8) + 0x4000) >> 15)) - 128];
  v37 = *(a6 + 11920);
  v38 = (v37 >> 4) + 5;
  do
  {
    v39 = *(v7 + 2 * v30);
    v40 = v39 - (v39 >> v38);
    v41 = v39 + ((0x8000 - v39) >> v38);
    if (v30 >= v8)
    {
      LOWORD(v41) = v40;
    }

    *(v7 + 2 * v30++) = v41;
  }

  while (v30 != 3);
  v42 = 0;
  v43 = v36 + (v35 << 9);
  v44 = *(a6 + 11920);
  if (v37 < 0x20)
  {
    ++v44;
  }

  *(a6 + 11920) = v44;
  v45 = v31 + result[12];
  v46 = v32 + result[13];
  v47 = v43 + result[14];
  ++result[v8 + 6];
  v152 = a6 + 11922;
  v151 = a6 + 11998;
  v48 = 1;
  do
  {
    v49 = v48;
    LOWORD(v50) = v158;
    if ((v48 & 1) == 0)
    {
      LOWORD(v50) = v157;
    }

    v51 = v50;
    if (v48)
    {
      v52 = v155;
    }

    else
    {
      v52 = v156;
    }

    v50 = v50;
    if (v50)
    {
      v160 = v52;
      v53 = 0;
      if ((v50 & 0x8000u) == 0)
      {
        v54 = v50;
      }

      else
      {
        v54 = -v50;
      }

      v55 = v54 - 1;
      v56 = __clz((v54 - 1) >> 3) ^ 0x1F;
      if (v54 >= 9)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      v58 = -8 << v57;
      if (!v57)
      {
        v58 = 0;
      }

      v59 = v58 + v55;
      v60 = (v152 + 138 * v42);
      v61 = &v60[v50 >> 31];
      if (v57)
      {
        v62 = (v60 + 22);
      }

      else
      {
        v62 = &v60[5 * (v59 >> 3) + 12];
      }

      v63 = 30;
      if (v57)
      {
        v63 = 33;
      }

      v66 = v61[27];
      v65 = v61 + 27;
      v64 = v66;
      if (v51 < 0)
      {
        v53 = (0x8000 - *(v65 - 1));
      }

      v67 = (0x8000 - v64) - v53;
      if (v67 <= 4)
      {
        LOWORD(v67) = 4;
      }

      v67 = v67;
      if (v67 >= 0x7FFFu)
      {
        v67 = 0x7FFF;
      }

      v68 = __clz(v67) ^ 0x1F;
      v69 = 14 - v68;
      v70 = v67 << (14 - v68);
      v71 = v60[29];
      v72 = (v71 >> 4) + 4;
      v73 = v60[27];
      if (v51 < 0)
      {
        v74 = v73 + ((0x8000 - v73) >> v72);
      }

      else
      {
        v74 = v73 - (v73 >> v72);
      }

      v77 = word_277C31464[((v70 < 0x40) | ((255 - (((v70 << 8) + 0x4000) >> 15)) >> 23) | (((v70 << 8) + 0x4000) >> 15)) - 128];
      v60[27] = v74;
      if (v71 >= 0x20)
      {
        v78 = v71;
      }

      else
      {
        v78 = v71 + 1;
      }

      v60[29] = v78;
      v79 = &v60[v57];
      if (v57)
      {
        v80 = (0x8000 - *(v79 - 1));
      }

      else
      {
        v80 = 0;
      }

      v81 = 0;
      v82 = (v55 >> 1) & 3;
      v83 = v55 & 1;
      v84 = v59 >> 3;
      v85 = &v60[v63];
      v159 = v77 + (v69 << 9);
      v86 = (0x8000 - *v79) - v80;
      if (v86 <= 4)
      {
        LOWORD(v86) = 4;
      }

      v86 = v86;
      if (v86 >= 0x7FFFu)
      {
        v86 = 0x7FFF;
      }

      v87 = __clz(v86);
      v88 = 14 - (v87 ^ 0x1F);
      v89 = word_277C31464[(((v86 << (14 - (v87 ^ 0x1F))) < 0x40) | ((255 - ((((v86 << (14 - (v87 ^ 0x1F))) << 8) + 0x4000) >> 15)) >> 23) | ((((v86 << (14 - (v87 ^ 0x1F))) << 8) + 0x4000) >> 15)) - 128];
      v90 = v60[11];
      v91 = (v90 >> 4) + 5;
      do
      {
        v92 = v60[v81];
        v93 = v92 + ((0x8000 - v92) >> v91);
        if (v81 >= v57)
        {
          LOWORD(v93) = v92 - (v92 >> v91);
        }

        v60[v81++] = v93;
      }

      while (v81 != 10);
      v94 = v90 >= 0x20;
      v95 = v60[11];
      if (!v94)
      {
        ++v95;
      }

      v60[11] = v95;
      if (v57)
      {
        v96 = 0;
        v97 = 0;
        v98 = v151 + 138 * v42;
        do
        {
          v99 = (v84 >> v96) & 1;
          if ((v84 >> v96))
          {
            v100 = (0x8000 - *(v98 + 2 * v99));
          }

          else
          {
            v100 = 0;
          }

          v101 = (0x8000 - *(v98 + 2 * v99 + 2)) - v100;
          if (v101 <= 4)
          {
            LOWORD(v101) = 4;
          }

          v101 = v101;
          if (v101 >= 0x7FFFu)
          {
            v101 = 0x7FFF;
          }

          v102 = 14 - (__clz(v101) ^ 0x1F);
          v97 += word_277C31464[(((v101 << v102) < 0x40) | ((255 - ((((v101 << v102) << 8) + 0x4000) >> 15)) >> 23) | ((((v101 << v102) << 8) + 0x4000) >> 15)) - 128] + (v102 << 9);
          v103 = *(v98 + 6);
          LOBYTE(v102) = (v103 >> 4) + 4;
          v104 = *(v98 + 2);
          v105 = v104 - (v104 >> v102);
          v106 = v104 + ((0x8000 - v104) >> v102);
          if (!v99)
          {
            LOWORD(v106) = v105;
          }

          if (v103 < 0x20)
          {
            LOWORD(v103) = v103 + 1;
          }

          *(v98 + 6) = v103;
          v98 += 6;
          *(v98 - 4) = v106;
          ++v96;
        }

        while (v57 != v96);
      }

      else
      {
        v107 = &v60[v84];
        v110 = v107[36];
        v109 = v107 + 36;
        v108 = v110;
        if (v59 >= 8)
        {
          v111 = (0x8000 - *(v109 - 1));
        }

        else
        {
          v111 = 0;
        }

        v112 = (0x8000 - v108) - v111;
        if (v112 <= 4)
        {
          LOWORD(v112) = 4;
        }

        v112 = v112;
        if (v112 >= 0x7FFFu)
        {
          v112 = 0x7FFF;
        }

        v113 = __clz(v112) ^ 0x1F;
        v114 = 14 - v113;
        v115 = v112 << (14 - v113);
        v116 = v60[38];
        v117 = (v116 >> 4) + 4;
        v118 = v59 << 21 >> 24;
        v119 = v60[36];
        if (v118 < 1)
        {
          v120 = v119 - (v119 >> v117);
        }

        else
        {
          v120 = v119 + ((0x8000 - v119) >> v117);
        }

        v97 = word_277C31464[((v115 < 0x40) | ((255 - (((v115 << 8) + 0x4000) >> 15)) >> 23) | (((v115 << 8) + 0x4000) >> 15)) - 128] + (v114 << 9);
        v60[36] = v120;
        if (v116 >= 0x20)
        {
          v121 = v116;
        }

        else
        {
          v121 = v116 + 1;
        }

        v60[38] = v121;
      }

      v122 = (v62 + 2 * v82);
      v123 = *v122;
      if (v82)
      {
        v124 = (0x8000 - *(v122 - 1));
      }

      else
      {
        v124 = 0;
      }

      v125 = 0;
      v126 = v89 + (v88 << 9);
      v127 = (0x8000 - v123) - v124;
      if (v127 <= 4)
      {
        LOWORD(v127) = 4;
      }

      v127 = v127;
      if (v127 >= 0x7FFFu)
      {
        v127 = 0x7FFF;
      }

      v128 = __clz(v127);
      v129 = 14 - (v128 ^ 0x1F);
      v130 = word_277C31464[(((v127 << (14 - (v128 ^ 0x1F))) < 0x40) | ((255 - ((((v127 << (14 - (v128 ^ 0x1F))) << 8) + 0x4000) >> 15)) >> 23) | ((((v127 << (14 - (v128 ^ 0x1F))) << 8) + 0x4000) >> 15)) - 128];
      v131 = *(v62 + 8);
      v132 = (v131 >> 4) + 5;
      do
      {
        v133 = *(v62 + 2 * v125);
        v134 = v133 - (v133 >> v132);
        v135 = v133 + ((0x8000 - v133) >> v132);
        if (v125 >= v82)
        {
          LOWORD(v135) = v134;
        }

        *(v62 + 2 * v125++) = v135;
      }

      while (v125 != 3);
      v94 = v131 >= 0x20;
      v136 = *(v62 + 8);
      if (!v94)
      {
        ++v136;
      }

      *(v62 + 8) = v136;
      if (a7)
      {
        v137 = &v85[v83];
        if (v83)
        {
          v138 = (0x8000 - *(v137 - 1));
        }

        else
        {
          v138 = 0;
        }

        v139 = (0x8000 - *v137) - v138;
        if (v139 <= 4)
        {
          LOWORD(v139) = 4;
        }

        v139 = v139;
        if (v139 >= 0x7FFFu)
        {
          v139 = 0x7FFF;
        }

        v140 = __clz(v139) ^ 0x1F;
        v141 = 14 - v140;
        v142 = v139 << (14 - v140);
        v143 = v85[2];
        v144 = (v143 >> 4) + 4;
        v145 = *v85;
        if (v83)
        {
          v146 = v145 + ((0x8000 - v145) >> v144);
        }

        else
        {
          v146 = v145 - (v145 >> v144);
        }

        v75 = word_277C31464[((v142 < 0x40) | ((255 - (((v142 << 8) + 0x4000) >> 15)) >> 23) | (((v142 << 8) + 0x4000) >> 15)) - 128] + (v141 << 9);
        *v85 = v146;
        if (v143 >= 0x20)
        {
          v147 = v143;
        }

        else
        {
          v147 = v143 + 1;
        }

        v85[2] = v147;
      }

      else
      {
        v75 = 0;
      }

      v148 = v130 + (v129 << 9);
      result = v154;
      v149 = v154[11];
      v154[10] += v83 ^ 1;
      v154[11] = v149 + v83;
      v52 = v160;
      v76 = v126 + v159 + v97 + v148;
      v50 = v76 + v75;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v48 = 0;
    v150 = v76 + v75;
    if (!v51)
    {
      v150 = 0;
    }

    if (!v52)
    {
      v76 = 0;
    }

    v45 += v50;
    v46 += v150;
    v47 += v76;
    v42 = 1;
  }

  while ((v49 & 1) != 0);
  v154[12] = v45;
  v154[13] = v46;
  v154[14] = v47;
  return result;
}

float32x4_t *sub_277AE8CB0(float32x4_t *result, int a2, double a3)
{
  v3 = result;
  v23 = *MEMORY[0x277D85DE8];
  v4 = result + 15351;
  v5 = a2 < 128;
  if (result[24712].i8[12] == 2)
  {
    v5 = 0;
  }

  else if (!result[24712].i8[12])
  {
    v6 = (v4->i8[0] & 0xFD) == 0 || (*(result->i64[0] + result[28966].u8[0] + 400) & 0xFE) == 4;
    if (!v6 && result[40278].i32[0])
    {
      v7 = 0;
      v8 = result[15351].i32[1] - result[40274].i32[0];
      *&a3 = (result[15354].i32[3] * result[15354].i32[2]);
      v9 = result[40273].i32[3];
      v17[0] = a2;
      v17[1] = v9;
      v17[2] = v8;
      v10 = vdupq_lane_s32(*&a3, 0);
      v18 = vdivq_f32(vcvtq_f32_s32(*(&result[40274] + 4)), v10);
      v19 = vdivq_f32(vcvtq_f32_s32(*(&result[40275] + 4)), v10);
      v20 = vdivq_f32(vcvtq_f32_s32(*(&result[40276] + 4)), v10);
      v21 = vdiv_f32(vcvt_f32_s32(*&result[40277].i32[1]), *v10.f32);
      v22 = result[40277].i32[3] / *&a3;
      do
      {
        v17[v7] = (v17[v7] - *&dword_277C30990[v7]) / *&dword_277C309D8[v7];
        ++v7;
      }

      while (v7 != 18);
      v16 = 0.0;
      result = sub_2779D28B0(v17, dword_27A722038, &v16);
      v5 = v16 >= 0.0;
    }
  }

  v11 = v3[8351].i64[1];
  if (v11)
  {
    v12 = v11 + 0x10000;
    v13 = v5 && v4[30].i8[14] == 0;
    v6 = v13 == 0;
    v4[30].i8[13] = v13;
    v11[0x10000] = v11 + 65548;
    v11[65537] = v11 + 24577;
    v11[65538] = v11 + 327684;
    v14 = v11 + 57344;
    if (v6)
    {
      v15 = v11 + 0x10000;
    }

    else
    {
      v15 = v11 + 65538;
    }

    v12[3] = v14;
    v12[4] = v15;
  }

  return result;
}

double sub_277AE8EB8(int32x4_t *a1, uint16x4_t *a2, uint64_t a3, int a4, int a5, double result)
{
  v146 = *MEMORY[0x277D85DE8];
  v7 = a3;
  switch(a4)
  {
    case 0:
      v9 = a1[1];
      v142 = *a1;
      v143 = v9;
      v10 = a1[3];
      v144 = a1[2];
      v145 = v10;
      sub_277AE984C(&v142, &v142, 12, 0, a5, 0);
      v11 = vtrn1q_s32(v142, v143);
      v12 = vtrn2q_s32(v142, v143);
      v13 = vtrn1q_s32(v144, v145);
      v14 = vtrn2q_s32(v144, v145);
      v15 = vzip2q_s64(v11, v13);
      v11.i64[1] = v13.i64[0];
      v16 = vzip2q_s64(v12, v14);
      v12.i64[1] = v14.i64[0];
      v142 = v11;
      v143 = v12;
      v144 = v15;
      v145 = v16;
      sub_277AE984C(&v142, &v142, 12, 1, a5, 0);
      v17 = 2 * v7;
      v18 = 4 * v7;
      v19 = 6 * v7;
      v20 = vdupq_n_s16(~(-1 << a5));
      v21 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vrsraq_n_s32(vmovl_u16(*a2), v142, 4uLL)), vrsraq_n_s32(vmovl_u16(*(a2 + v17)), v143, 4uLL)), v20), 0);
      v22 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vrsraq_n_s32(vmovl_u16(*(a2 + v18)), v144, 4uLL)), vrsraq_n_s32(vmovl_u16(*(a2 + v19)), v145, 4uLL)), v20);
      *a2 = *v21.i8;
      *(a2 + v17) = vextq_s8(v21, v21, 8uLL).u64[0];
      v23 = vmaxq_s16(v22, 0);
      *(a2 + v18) = *v23.i8;
      goto LABEL_33;
    case 1:
      v78 = a1[1];
      v142 = *a1;
      v143 = v78;
      v79 = a1[3];
      v144 = a1[2];
      v145 = v79;
      sub_277AE984C(&v142, &v142, 12, 0, a5, 0);
      goto LABEL_19;
    case 2:
      v54 = a1[1];
      v142 = *a1;
      v143 = v54;
      v55 = a1[3];
      v144 = a1[2];
      v145 = v55;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      goto LABEL_28;
    case 3:
      v68 = a1[1];
      v142 = *a1;
      v143 = v68;
      v69 = a1[3];
      v144 = a1[2];
      v145 = v69;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      goto LABEL_19;
    case 4:
      v38 = a1[1];
      v142 = *a1;
      v143 = v38;
      v39 = a1[3];
      v144 = a1[2];
      v145 = v39;
      sub_277AE984C(&v142, &v142, 12, 0, a5, 0);
      goto LABEL_31;
    case 5:
      v86 = a1[1];
      v142 = *a1;
      v143 = v86;
      v87 = a1[3];
      v144 = a1[2];
      v145 = v87;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      v88 = vtrn1q_s32(v142, v143);
      v89 = vtrn2q_s32(v142, v143);
      v90 = vtrn1q_s32(v144, v145);
      v91 = vtrn2q_s32(v144, v145);
      v92 = vzip2q_s64(v88, v90);
      v88.i64[1] = v90.i64[0];
      v93 = vzip2q_s64(v89, v91);
      v89.i64[1] = v91.i64[0];
      v142 = v88;
      v143 = v89;
      v144 = v92;
      v145 = v93;
      sub_277AE984C(&v142, &v142, 12, 1, a5, 0);
      goto LABEL_21;
    case 6:
      v109 = a1[1];
      v142 = *a1;
      v143 = v109;
      v110 = a1[3];
      v144 = a1[2];
      v145 = v110;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      v111 = vtrn1q_s32(v142, v143);
      v112 = vtrn2q_s32(v142, v143);
      v113 = vtrn1q_s32(v144, v145);
      v114 = vtrn2q_s32(v144, v145);
      v115 = vzip2q_s64(v111, v113);
      v111.i64[1] = v113.i64[0];
      v116 = vzip2q_s64(v112, v114);
      v112.i64[1] = v114.i64[0];
      v142 = v111;
      v143 = v112;
      v144 = v115;
      v145 = v116;
      sub_277AE9ABC(&v142, &v142, 12, 1, a5, 0);
      v94 = a2;
      v95 = v7;
      v96 = 1;
      goto LABEL_26;
    case 7:
      v70 = a1[1];
      v142 = *a1;
      v143 = v70;
      v71 = a1[3];
      v144 = a1[2];
      v145 = v71;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      v72 = vtrn1q_s32(v142, v143);
      v73 = vtrn2q_s32(v142, v143);
      v74 = vtrn1q_s32(v144, v145);
      v75 = vtrn2q_s32(v144, v145);
      v76 = vzip2q_s64(v72, v74);
      v72.i64[1] = v74.i64[0];
      v77 = vzip2q_s64(v73, v75);
      v73.i64[1] = v75.i64[0];
      v142 = v72;
      v143 = v73;
      v144 = v76;
      v145 = v77;
      sub_277AE9ABC(&v142, &v142, 12, 1, a5, 0);
      goto LABEL_21;
    case 8:
      v130 = a1[1];
      v142 = *a1;
      v143 = v130;
      v131 = a1[3];
      v144 = a1[2];
      v145 = v131;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      goto LABEL_31;
    case 9:
      v42 = a1[1];
      v142 = *a1;
      v143 = v42;
      v43 = a1[3];
      v144 = a1[2];
      v145 = v43;
      sub_277AE9C7C(&v142, &v142, v144, a3, 0, a5, 0);
      v44 = 0;
      v45 = vtrn1q_s32(v142, v143);
      v46 = vtrn2q_s32(v142, v143);
      v47 = vtrn1q_s32(v144, v145);
      v48 = vtrn2q_s32(v144, v145);
      v49 = vzip2q_s64(v45, v47);
      v45.i64[1] = v47.i64[0];
      v50 = vzip2q_s64(v46, v48);
      v51.i64[0] = v46.i64[0];
      v51.i64[1] = v48.i64[0];
      v52 = vdup_n_s32(0x16A1u);
      v53 = vdupq_n_s64(0x800uLL);
      v142 = v45;
      v143 = v51;
      v144 = v49;
      v145 = v50;
      do
      {
        *(&v142 + v44) = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v53, vmovn_s64(*(&v142 + v44)), v52), 0xCuLL), vshrq_n_u64(vmlal_s32(v53, vmovn_s64(vrev64q_s32(*(&v142 + v44))), v52), 0xCuLL));
        v44 += 16;
      }

      while (v44 != 64);
      goto LABEL_29;
    case 10:
      v117 = a1[1];
      v142 = *a1;
      v143 = v117;
      v118 = a1[3];
      v144 = a1[2];
      v145 = v118;
      sub_277AE9C7C(&v142, &v142, v144, a3, 0, a5, 0);
LABEL_28:
      v119 = vtrn1q_s32(v142, v143);
      v120 = vtrn2q_s32(v142, v143);
      v121 = vtrn1q_s32(v144, v145);
      v122 = vtrn2q_s32(v144, v145);
      v123 = vzip2q_s64(v119, v121);
      v119.i64[1] = v121.i64[0];
      v124 = vzip2q_s64(v120, v122);
      v120.i64[1] = v122.i64[0];
      v142 = v119;
      v143 = v120;
      v144 = v123;
      v145 = v124;
      sub_277AE984C(&v142, &v142, 12, 1, a5, 0);
      goto LABEL_29;
    case 11:
      v26 = a1[1];
      v142 = *a1;
      v143 = v26;
      v27 = a1[3];
      v144 = a1[2];
      v145 = v27;
      sub_277AE984C(&v142, &v142, 12, 0, a5, 0);
      v28 = 0;
      v29 = vtrn1q_s32(v142, v143);
      v30 = vtrn2q_s32(v142, v143);
      v31 = vtrn1q_s32(v144, v145);
      v32 = vtrn2q_s32(v144, v145);
      v33 = vzip2q_s64(v29, v31);
      v29.i64[1] = v31.i64[0];
      v34 = vzip2q_s64(v30, v32);
      v35.i64[0] = v30.i64[0];
      v35.i64[1] = v32.i64[0];
      v36 = vdup_n_s32(0x16A1u);
      v37 = vdupq_n_s64(0x800uLL);
      v142 = v29;
      v143 = v35;
      v144 = v33;
      v145 = v34;
      do
      {
        *(&v142 + v28) = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v37, vmovn_s64(*(&v142 + v28)), v36), 0xCuLL), vshrq_n_u64(vmlal_s32(v37, vmovn_s64(vrev64q_s32(*(&v142 + v28))), v36), 0xCuLL));
        v28 += 16;
      }

      while (v28 != 64);
      goto LABEL_29;
    case 12:
      v40 = a1[1];
      v142 = *a1;
      v143 = v40;
      v41 = a1[3];
      v144 = a1[2];
      v145 = v41;
      sub_277AE9C7C(&v142, &v142, v144, a3, 0, a5, 0);
LABEL_19:
      v80 = vtrn1q_s32(v142, v143);
      v81 = vtrn2q_s32(v142, v143);
      v82 = vtrn1q_s32(v144, v145);
      v83 = vtrn2q_s32(v144, v145);
      v84 = vzip2q_s64(v80, v82);
      v80.i64[1] = v82.i64[0];
      v85 = vzip2q_s64(v81, v83);
      v81.i64[1] = v83.i64[0];
      v142 = v80;
      v143 = v81;
      v144 = v84;
      v145 = v85;
      sub_277AE9ABC(&v142, &v142, 12, 1, a5, 0);
      goto LABEL_29;
    case 13:
      v97 = a1[1];
      v142 = *a1;
      v143 = v97;
      v98 = a1[3];
      v144 = a1[2];
      v145 = v98;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      v99 = 0;
      v100 = vtrn1q_s32(v142, v143);
      v101 = vtrn2q_s32(v142, v143);
      v102 = vtrn1q_s32(v144, v145);
      v103 = vtrn2q_s32(v144, v145);
      v104 = vzip2q_s64(v100, v102);
      v100.i64[1] = v102.i64[0];
      v105 = vzip2q_s64(v101, v103);
      v106.i64[0] = v101.i64[0];
      v106.i64[1] = v103.i64[0];
      v107 = vdup_n_s32(0x16A1u);
      v108 = vdupq_n_s64(0x800uLL);
      v142 = v100;
      v143 = v106;
      v144 = v104;
      v145 = v105;
      do
      {
        *(&v142 + v99) = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v108, vmovn_s64(*(&v142 + v99)), v107), 0xCuLL), vshrq_n_u64(vmlal_s32(v108, vmovn_s64(vrev64q_s32(*(&v142 + v99))), v107), 0xCuLL));
        v99 += 16;
      }

      while (v99 != 64);
LABEL_29:
      v125 = 2 * v7;
      v126 = 4 * v7;
      v19 = 6 * v7;
      v127 = vdupq_n_s16(~(-1 << a5));
      v128 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vrsraq_n_s32(vmovl_u16(*a2), v142, 4uLL)), vrsraq_n_s32(vmovl_u16(*(a2 + v125)), v143, 4uLL)), v127), 0);
      v129 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vrsraq_n_s32(vmovl_u16(*(a2 + v126)), v144, 4uLL)), vrsraq_n_s32(vmovl_u16(*(a2 + v19)), v145, 4uLL)), v127);
      *a2 = *v128.i8;
      *(a2 + v125) = vextq_s8(v128, v128, 8uLL).u64[0];
      v23 = vmaxq_s16(v129, 0);
      goto LABEL_32;
    case 14:
      v24 = a1[1];
      v142 = *a1;
      v143 = v24;
      v25 = a1[3];
      v144 = a1[2];
      v145 = v25;
      sub_277AE9C7C(&v142, &v142, v144, a3, 0, a5, 0);
LABEL_31:
      v132 = vtrn1q_s32(v142, v143);
      v133 = vtrn2q_s32(v142, v143);
      v134 = vtrn1q_s32(v144, v145);
      v135 = vtrn2q_s32(v144, v145);
      v136 = vzip2q_s64(v132, v134);
      v132.i64[1] = v134.i64[0];
      v137 = vzip2q_s64(v133, v135);
      v133.i64[1] = v135.i64[0];
      v142 = v132;
      v143 = v133;
      v144 = v136;
      v145 = v137;
      sub_277AE9ABC(&v142, &v142, 12, 1, a5, 0);
      v138 = 2 * v7;
      v126 = 4 * v7;
      v19 = 6 * v7;
      v139 = vdupq_n_s16(~(-1 << a5));
      v140 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vrsraq_n_s32(vmovl_u16(*a2), v145, 4uLL)), vrsraq_n_s32(vmovl_u16(*(a2 + v138)), v144, 4uLL)), v139), 0);
      v141 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vrsraq_n_s32(vmovl_u16(*(a2 + v126)), v143, 4uLL)), vrsraq_n_s32(vmovl_u16(*(a2 + v19)), v142, 4uLL)), v139);
      *a2 = *v140.i8;
      *(a2 + v138) = vextq_s8(v140, v140, 8uLL).u64[0];
      v23 = vmaxq_s16(v141, 0);
LABEL_32:
      *(a2 + v126) = *v23.i8;
LABEL_33:
      *&result = vextq_s8(v23, v23, 8uLL).u64[0];
      *(a2 + v19) = result;
      break;
    case 15:
      v56 = a1[1];
      v142 = *a1;
      v143 = v56;
      v57 = a1[3];
      v144 = a1[2];
      v145 = v57;
      sub_277AE9ABC(&v142, &v142, 12, 0, a5, 0);
      v58 = 0;
      v59 = vtrn1q_s32(v142, v143);
      v60 = vtrn2q_s32(v142, v143);
      v61 = vtrn1q_s32(v144, v145);
      v62 = vtrn2q_s32(v144, v145);
      v63 = vzip2q_s64(v59, v61);
      v59.i64[1] = v61.i64[0];
      v64 = vzip2q_s64(v60, v62);
      v65.i64[0] = v60.i64[0];
      v65.i64[1] = v62.i64[0];
      v66 = vdup_n_s32(0x16A1u);
      v67 = vdupq_n_s64(0x800uLL);
      v142 = v59;
      v143 = v65;
      v144 = v63;
      v145 = v64;
      do
      {
        *(&v142 + v58) = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v67, vmovn_s64(*(&v142 + v58)), v66), 0xCuLL), vshrq_n_u64(vmlal_s32(v67, vmovn_s64(vrev64q_s32(*(&v142 + v58))), v66), 0xCuLL));
        v58 += 16;
      }

      while (v58 != 64);
LABEL_21:
      v94 = a2;
      v95 = v7;
      v96 = 0;
LABEL_26:
      result = sub_277AE99B0(&v142, v94, v95, 1, v96, 4, a5);
      break;
    default:
      return result;
  }

  return result;
}

int32x4_t sub_277AE984C(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(1 << (a3 - 1));
  v12 = a1[1];
  v13 = a1[3];
  v14 = vdupq_n_s32(-a3);
  v15 = &dword_277C42240[64 * a3 - 608];
  v16 = vld1q_dup_f32(v15);
  v17 = vmlaq_s32(v11, v16, *a1);
  v18 = vmulq_s32(v16, a1[2]);
  v19 = vshlq_s32(vaddq_s32(v17, v18), v14);
  v20 = vshlq_s32(vsubq_s32(v17, v18), v14);
  v21 = &dword_277C42240[64 * a3 - 592];
  v22 = vld1q_dup_f32(v21);
  v23 = &dword_277C42240[64 * a3 - 624];
  v24 = vld1q_dup_f32(v23);
  v25 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v22, v12), v13, v24), v14);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v22, v13), v24, v12), v14);
  v27 = vaddq_s32(v26, v19);
  v28 = vsubq_s32(v19, v26);
  result = vminq_s32(vmaxq_s32(v27, v9), v10);
  v30 = vminq_s32(vmaxq_s32(v28, v9), v10);
  v31 = vsubq_s32(v20, v25);
  v32 = vminq_s32(vmaxq_s32(vaddq_s32(v25, v20), v9), v10);
  *a2 = result;
  a2[1] = v32;
  v33 = vminq_s32(vmaxq_s32(v31, v9), v10);
  a2[2] = v33;
  a2[3] = v30;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v34 = 10;
    }

    else
    {
      v34 = a5;
    }

    v35 = 32 << v34;
    v36 = vdupq_n_s32(-v35);
    v37 = vdupq_n_s32(v35 - 1);
    v38 = vdupq_n_s32(-a6);
    *a2 = vminq_s32(vmaxq_s32(vrshlq_s32(result, v38), v36), v37);
    a2[1] = vminq_s32(vmaxq_s32(vrshlq_s32(v32, v38), v36), v37);
    result = vminq_s32(vmaxq_s32(vrshlq_s32(v33, v38), v36), v37);
    a2[2] = result;
    a2[3] = vminq_s32(vmaxq_s32(vrshlq_s32(v30, v38), v36), v37);
  }

  return result;
}

double sub_277AE99B0(int32x4_t *a1, uint16x4_t *a2, int a3, int a4, int a5, int a6, char a7)
{
  if (a6)
  {
    v7 = vdupq_n_s32(-a6);
    v8 = vrshlq_s32(a1[1], v7);
    *a1 = vrshlq_s32(*a1, v7);
    a1[1] = v8;
    v9 = vrshlq_s32(a1[2], v7);
    v10 = vrshlq_s32(a1[3], v7);
    a1[2] = v9;
    a1[3] = v10;
  }

  v11 = *a2;
  v12 = (a2 + 2 * a3);
  v13 = *v12;
  v14 = (a2 + 4 * a3);
  v15 = *v14;
  v16 = (a2 + 6 * a3);
  v17 = *v16;
  if (a4)
  {
    v18 = vrev64q_s32(*a1);
    v19 = vrev64q_s32(a1[1]);
    *a1 = vextq_s8(v18, v18, 8uLL);
    a1[1] = vextq_s8(v19, v19, 8uLL);
    v20 = vrev64q_s32(a1[2]);
    v21 = vrev64q_s32(a1[3]);
    a1[2] = vextq_s8(v20, v20, 8uLL);
    a1[3] = vextq_s8(v21, v21, 8uLL);
  }

  if (a5)
  {
    v22 = vaddw_u16(a1[3], v11);
    v23 = vaddw_u16(a1[2], v13);
    v24 = vaddw_u16(a1[1], v15);
  }

  else
  {
    v22 = vaddw_u16(*a1, v11);
    v23 = vaddw_u16(a1[1], v13);
    v24 = vaddw_u16(a1[2], v15);
    a1 += 3;
  }

  v25 = vqmovn_high_u32(vqmovn_u32(v22), v23);
  v26 = vdupq_n_s16(~(-1 << a7));
  v27 = vqmovn_high_u32(vqmovn_u32(v24), vaddw_u16(*a1, v17));
  v28 = vmaxq_s16(vminq_s16(v25, v26), 0);
  v29 = vmaxq_s16(vminq_s16(v27, v26), 0);
  *a2 = *v28.i8;
  *v12 = vextq_s8(v28, v28, 8uLL).u64[0];
  *v14 = *v29.i8;
  *&result = vextq_s8(v29, v29, 8uLL).u64[0];
  *v16 = result;
  return result;
}

int32x4_t sub_277AE9ABC(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = (&unk_277C42640 + 20 * a3);
  v7 = vdupq_n_s64(1 << (a3 + 3));
  v8 = a1[2];
  v9 = a1[3];
  v10 = v6 - 49;
  v11 = vld1q_dup_f32(v10);
  v12 = v6 - 48;
  v13 = vld1q_dup_f32(v12);
  v14 = v6 - 47;
  v15 = vld1q_dup_f32(v14);
  v16 = vmulq_s32(v15, a1[1]);
  v6 -= 46;
  v17 = vld1q_dup_f32(v6);
  v18 = vmlaq_s32(vmlaq_s32(vmulq_s32(v11, *a1), v13, v9), v17, v8);
  v19 = vmlsq_s32(vmlsq_s32(vmulq_s32(v13, *a1), v17, v9), v11, v8);
  v20 = vmulq_s32(v15, vaddq_s32(vsubq_s32(*a1, v8), v9));
  v21 = vaddq_s32(v18, v16);
  v22 = vaddq_s32(v19, v16);
  v23 = vsubq_s32(v19, v16);
  v24 = vextq_s8(vmlal_s32(v7, vmovn_s64(v21), 0x1000000010), 0, 2uLL);
  v25 = vextq_s8(vmlal_s32(v7, vmovn_s64(vrev64q_s32(v21)), 0x1000000010), 0, 2uLL);
  result.i64[0] = vzip1q_s32(v24, v25).u64[0];
  result.i64[1] = vzip2q_s32(v24, v25).u64[0];
  v27 = vextq_s8(vmlal_s32(v7, vmovn_s64(v22), 0x1000000010), 0, 2uLL);
  v28 = vextq_s8(vmlal_s32(v7, vmovn_s64(vrev64q_s32(v22)), 0x1000000010), 0, 2uLL);
  v29.i64[0] = vzip1q_s32(v27, v28).u64[0];
  v29.i64[1] = vzip2q_s32(v27, v28).u64[0];
  v30 = vaddq_s32(v23, v18);
  v31 = vextq_s8(vmlal_s32(v7, vmovn_s64(v20), 0x1000000010), 0, 2uLL);
  v32 = vextq_s8(vmlal_s32(v7, vmovn_s64(vrev64q_s32(v20)), 0x1000000010), 0, 2uLL);
  v33.i64[0] = vzip1q_s32(v31, v32).u64[0];
  v33.i64[1] = vzip2q_s32(v31, v32).u64[0];
  v34 = vmlal_s32(v7, vmovn_s64(v30), 0x1000000010);
  v35 = vmlal_s32(v7, vmovn_s64(vrev64q_s32(v30)), 0x1000000010);
  v36 = vextq_s8(v34, 0, 2uLL);
  v37 = vextq_s8(v35, 0, 2uLL);
  v38.i64[0] = vzip1q_s32(v36, v37).u64[0];
  v38.i64[1] = vzip2q_s32(v36, v37).u64[0];
  *a2 = result;
  a2[1] = v29;
  a2[2] = v33;
  a2[3] = v38;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v39 = 10;
    }

    else
    {
      v39 = a5;
    }

    v40 = 32 << v39;
    v41 = vdupq_n_s32(-v40);
    v42 = vdupq_n_s32(v40 - 1);
    if (a6)
    {
      v43 = vdupq_n_s32(-a6);
      result = vrshlq_s32(result, v43);
      v29 = vrshlq_s32(v29, v43);
      v33 = vrshlq_s32(v33, v43);
      v38 = vrshlq_s32(v38, v43);
    }

    *a2 = vminq_s32(vmaxq_s32(result, v41), v42);
    a2[1] = vminq_s32(vmaxq_s32(v29, v41), v42);
    result = vminq_s32(vmaxq_s32(v33, v41), v42);
    a2[2] = result;
    a2[3] = vminq_s32(vmaxq_s32(v38, v41), v42);
  }

  return result;
}

int32x4_t sub_277AE9C7C(uint64_t a1, int32x4_t *a2, int32x4_t result, uint64_t a4, int a5, int a6, int a7)
{
  v7 = 0;
  *result.i8 = vdup_n_s32(0x16A1u);
  v8 = vdupq_n_s64(0x800uLL);
  do
  {
    a2[v7] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v8, vmovn_s64(*(a1 + v7 * 16)), *result.i8), 0xCuLL), vshrq_n_u64(vmlal_s32(v8, vmovn_s64(vrev64q_s32(*(a1 + v7 * 16))), *result.i8), 0xCuLL));
    ++v7;
  }

  while (v7 != 4);
  if (!a5)
  {
    if (a6 <= 10)
    {
      v9 = 10;
    }

    else
    {
      v9 = a6;
    }

    v10 = 32 << v9;
    v11 = vdupq_n_s32(-v10);
    v12 = vdupq_n_s32(v10 - 1);
    v13 = *a2;
    if (a7)
    {
      v14 = vdupq_n_s32(-a7);
      v13 = vrshlq_s32(v13, v14);
      v15 = vrshlq_s32(a2[1], v14);
      v16 = vrshlq_s32(a2[2], v14);
      v17 = vrshlq_s32(a2[3], v14);
    }

    else
    {
      v15 = a2[1];
      v16 = a2[2];
      v17 = a2[3];
    }

    *a2 = vminq_s32(vmaxq_s32(v13, v11), v12);
    a2[1] = vminq_s32(vmaxq_s32(v15, v11), v12);
    v18 = vminq_s32(vmaxq_s32(v16, v11), v12);
    result = vminq_s32(vmaxq_s32(v17, v11), v12);
    a2[2] = v18;
    a2[3] = result;
  }

  return result;
}

void sub_277AE9D58(uint64_t a1, int32x4_t *a2, int a3, int a4, int a5)
{
  v6 = 0;
  if (a3)
  {
    v7 = 6;
  }

  else
  {
    v7 = 8;
  }

  v8 = v7 + a4;
  v9 = 1;
  if (v8 <= 15)
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = 1 << (v8 - 1);
  }

  v11 = vdupq_n_s32(-v10);
  v12 = vdupq_n_s32(v10 - 1);
  v13 = vdupq_n_s32(0x31Fu);
  v14 = vdupq_n_s32(0xFFFFF04F);
  v15 = vdupq_n_s32(0xFB1u);
  v16 = vdupq_n_s32(0xD4Eu);
  v17 = vdupq_n_s32(0xFFFFF71C);
  v18 = vdupq_n_s32(0x8E4u);
  v19 = vdupq_n_s32(0xB50u);
  v20 = vdupq_n_s32(0x61Fu);
  v21 = vdupq_n_s32(0xFFFFF138);
  v22 = vdupq_n_s32(0xEC8u);
  v23.i64[0] = 0x80000000800;
  v23.i64[1] = 0x80000000800;
  do
  {
    v24 = v9;
    v25 = (a1 + 16 * v6);
    v26 = v25[4];
    v27 = v25[12];
    v28 = v25[2];
    v29 = v25[14];
    v30 = vaddq_s32(vmlaq_s32(vmulq_s32(v29, v14), v28, v13), v23);
    v31 = vaddq_s32(vmlaq_s32(vmulq_s32(v28, v15), v29, v13), v23);
    v32 = v25[10];
    v33 = v25[6];
    v34 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v33, v17), v32, v16), v23), 0xCuLL);
    v35 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v32, v18), v33, v16), v23), 0xCuLL);
    v36 = vmulq_s32(*v25, v19);
    v37 = vmulq_s32(v25[8], v19);
    v38 = vaddq_s32(vaddq_s32(v37, v36), v23);
    v39 = vaddq_s32(vsubq_s32(v36, v37), v23);
    v40 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v27, v21), v26, v20), v23), 0xCuLL);
    v41 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v26, v22), v27, v20), v23), 0xCuLL);
    v42 = vsubq_s32(vshrq_n_s32(v30, 0xCuLL), v34);
    v43 = vminq_s32(vmaxq_s32(vsraq_n_s32(v34, v30, 0xCuLL), v11), v12);
    v44 = vsubq_s32(vshrq_n_s32(v31, 0xCuLL), v35);
    v45 = vminq_s32(vmaxq_s32(vsraq_n_s32(v35, v31, 0xCuLL), v11), v12);
    v46 = vsubq_s32(vshrq_n_s32(v38, 0xCuLL), v41);
    v47 = vminq_s32(vmaxq_s32(vsraq_n_s32(v41, v38, 0xCuLL), v11), v12);
    v48 = vminq_s32(vmaxq_s32(v46, v11), v12);
    v49 = vsubq_s32(vshrq_n_s32(v39, 0xCuLL), v40);
    v50 = vminq_s32(vmaxq_s32(vsraq_n_s32(v40, v39, 0xCuLL), v11), v12);
    v51 = vminq_s32(vmaxq_s32(v49, v11), v12);
    v52 = vmulq_s32(vminq_s32(vmaxq_s32(v42, v11), v12), v19);
    v53 = vmulq_s32(vminq_s32(vmaxq_s32(v44, v11), v12), v19);
    v54 = vaddq_s32(vaddq_s32(v52, v53), v23);
    v55 = vaddq_s32(vsubq_s32(v53, v52), v23);
    a2[v6] = vminq_s32(vmaxq_s32(vaddq_s32(v47, v45), v11), v12);
    a2[v6 + 14] = vminq_s32(vmaxq_s32(vsubq_s32(v47, v45), v11), v12);
    a2[v6 + 2] = vminq_s32(vmaxq_s32(vsraq_n_s32(v50, v54, 0xCuLL), v11), v12);
    a2[v6 + 12] = vminq_s32(vmaxq_s32(vsubq_s32(v50, vshrq_n_s32(v54, 0xCuLL)), v11), v12);
    a2[v6 + 4] = vminq_s32(vmaxq_s32(vsraq_n_s32(v51, v55, 0xCuLL), v11), v12);
    a2[v6 + 10] = vminq_s32(vmaxq_s32(vsubq_s32(v51, vshrq_n_s32(v55, 0xCuLL)), v11), v12);
    a2[v6 + 6] = vminq_s32(vmaxq_s32(vaddq_s32(v48, v43), v11), v12);
    a2[v6 + 8] = vminq_s32(vmaxq_s32(vsubq_s32(v48, v43), v11), v12);
    v6 = 1;
    v9 = 0;
  }

  while ((v24 & 1) != 0);
  if (!a3)
  {
    if (a4 <= 10)
    {
      v56 = 10;
    }

    else
    {
      v56 = a4;
    }

    v57 = 32 << v56;
    v62 = vdupq_n_s32(v57 - 1);
    v63 = vdupq_n_s32(-v57);
    sub_277AEAB84(a2, a5);
    v58 = a2 + 2;
    v59 = -4;
    do
    {
      v60 = vminq_s32(vmaxq_s32(v58[-1], v63), v62);
      v58[-2] = vminq_s32(vmaxq_s32(v58[-2], v63), v62);
      v58[-1] = v60;
      v61 = vminq_s32(vmaxq_s32(v58[1], v63), v62);
      *v58 = vminq_s32(vmaxq_s32(*v58, v63), v62);
      v58[1] = v61;
      v58 += 4;
      v59 += 4;
    }

    while (v59 < 0xC);
  }
}

int16x8_t sub_277AEA06C(uint64_t a1, int16x8_t *a2, int a3, __int32 a4, int a5, int a6, char a7)
{
  sub_277AEAB84(a1, a6);
  v13 = *a2;
  v14 = (a2 + 2 * a3);
  v15 = *v14;
  v16 = (a2 + 4 * a3);
  v17 = *v16;
  v18 = (a2 + 6 * a3);
  v19 = *v18;
  v20 = (a2 + 8 * a3);
  v21 = *v20;
  v22 = (a2 + 10 * a3);
  v23 = *v22;
  v24 = (a2 + 12 * a3);
  v25 = *v24;
  v26 = (a2 + 14 * a3);
  v27.i32[0] = 0;
  v28.i32[0] = a4;
  v29 = vdupq_lane_s32(*&vceqq_s32(v28, v27), 0);
  if (a5)
  {
    v30 = *(a1 + 32);
    v31 = *(a1 + 48);
    v32 = vrev64q_s32(v30);
    v33 = vbslq_s8(v29, v31, vextq_s8(v32, v32, 8uLL));
    v34 = vrev64q_s32(v31);
    v35 = vbslq_s8(v29, v30, vextq_s8(v34, v34, 8uLL));
    v36 = *(a1 + 64);
    v37 = *(a1 + 80);
    v38 = vrev64q_s32(v36);
    v39 = *(a1 + 224);
    v40 = *(a1 + 240);
    v41 = vbslq_s8(v29, v37, vextq_s8(v38, v38, 8uLL));
    v42 = vrev64q_s32(v37);
    v43 = vbslq_s8(v29, v36, vextq_s8(v42, v42, 8uLL));
    v44 = *(a1 + 96);
    v45 = *(a1 + 112);
    v46 = vrev64q_s32(v44);
    v47 = vbslq_s8(v29, v45, vextq_s8(v46, v46, 8uLL));
    v48 = vrev64q_s32(v45);
    v49 = vbslq_s8(v29, v44, vextq_s8(v48, v48, 8uLL));
    v50 = *(a1 + 128);
    v51 = *(a1 + 144);
    v52 = vrev64q_s32(v50);
    v53 = vbslq_s8(v29, v51, vextq_s8(v52, v52, 8uLL));
    v54 = vrev64q_s32(v51);
    v55 = vbslq_s8(v29, v50, vextq_s8(v54, v54, 8uLL));
    v56 = *(a1 + 160);
    v57 = *(a1 + 176);
    v58 = vrev64q_s32(v56);
    v59 = vbslq_s8(v29, v57, vextq_s8(v58, v58, 8uLL));
    v60 = vrev64q_s32(v57);
    v61 = vbslq_s8(v29, v56, vextq_s8(v60, v60, 8uLL));
    v62 = *(a1 + 192);
    v63 = *(a1 + 208);
    v64 = vrev64q_s32(v62);
    v65 = vbslq_s8(v29, v63, vextq_s8(v64, v64, 8uLL));
    v66 = vrev64q_s32(v63);
    v67 = vbslq_s8(v29, v62, vextq_s8(v66, v66, 8uLL));
    v68 = vrev64q_s32(v39);
    v69 = vbslq_s8(v29, v40, vextq_s8(v68, v68, 8uLL));
    v70 = vrev64q_s32(v40);
    v71 = vbslq_s8(v29, v39, vextq_s8(v70, v70, 8uLL));
    v72 = a4 == 0;
    v73 = vaddw_high_s16(v69, v13);
    *v71.i8 = vqmovn_u32(vaddw_s16(v71, *v13.i8));
    v74 = vdupq_n_s16(~(-1 << a7));
    v75 = vminq_s16(vqmovn_high_u32(*v71.i8, v73), v74);
    v76 = 0uLL;
    v77 = vmaxq_s16(v75, 0);
    v78 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v67, *v15.i8)), vaddw_high_s16(v65, v15)), v74), 0);
    v79 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v61, *v17.i8)), vaddw_high_s16(v59, v17)), v74), 0);
    v80 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v55, *v19.i8)), vaddw_high_s16(v53, v19)), v74), 0);
    v81 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v49, *v21.i8)), vaddw_high_s16(v47, v21)), v74), 0);
    v82 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v43, *v23.i8)), vaddw_high_s16(v41, v23)), v74), 0);
    v83 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v35, *v25.i8)), vaddw_high_s16(v33, v25)), v74);
    v84 = 16;
    v85 = a1;
  }

  else
  {
    v86 = *(a1 + 192);
    v87 = *(a1 + 208);
    v88 = vrev64q_s32(v86);
    v89 = vbslq_s8(v29, v87, vextq_s8(v88, v88, 8uLL));
    v90 = vrev64q_s32(v87);
    v91 = vbslq_s8(v29, v86, vextq_s8(v90, v90, 8uLL));
    v92 = *(a1 + 160);
    v93 = *(a1 + 176);
    v94 = vrev64q_s32(v92);
    v95 = *(a1 + 16);
    v96 = vbslq_s8(v29, v93, vextq_s8(v94, v94, 8uLL));
    v97 = vrev64q_s32(v93);
    v98 = vbslq_s8(v29, v92, vextq_s8(v97, v97, 8uLL));
    v99 = *(a1 + 128);
    v100 = *(a1 + 144);
    v101 = vrev64q_s32(v99);
    v102 = vbslq_s8(v29, v100, vextq_s8(v101, v101, 8uLL));
    v103 = vrev64q_s32(v100);
    v104 = vbslq_s8(v29, v99, vextq_s8(v103, v103, 8uLL));
    v105 = *(a1 + 96);
    v106 = *(a1 + 112);
    v107 = vrev64q_s32(v105);
    v108 = vbslq_s8(v29, v106, vextq_s8(v107, v107, 8uLL));
    v109 = vrev64q_s32(v106);
    v110 = vbslq_s8(v29, v105, vextq_s8(v109, v109, 8uLL));
    v111 = *(a1 + 64);
    v112 = *(a1 + 80);
    v113 = vrev64q_s32(v111);
    v114 = vbslq_s8(v29, v112, vextq_s8(v113, v113, 8uLL));
    v115 = vrev64q_s32(v112);
    v116 = vbslq_s8(v29, v111, vextq_s8(v115, v115, 8uLL));
    v117 = *(a1 + 32);
    v118 = *(a1 + 48);
    v119 = vrev64q_s32(v117);
    v120 = vbslq_s8(v29, v118, vextq_s8(v119, v119, 8uLL));
    v121 = vrev64q_s32(v118);
    v122 = vbslq_s8(v29, v117, vextq_s8(v121, v121, 8uLL));
    v123 = vrev64q_s32(*a1);
    v124 = vbslq_s8(v29, v95, vextq_s8(v123, v123, 8uLL));
    v125 = vrev64q_s32(v95);
    v72 = a4 == 0;
    v126 = vaddw_high_s16(v124, v13);
    v127 = vqmovn_u32(vaddw_s16(vbslq_s8(v29, *a1, vextq_s8(v125, v125, 8uLL)), *v13.i8));
    v74 = vdupq_n_s16(~(-1 << a7));
    v128 = vminq_s16(vqmovn_high_u32(v127, v126), v74);
    v76 = 0uLL;
    v77 = vmaxq_s16(v128, 0);
    v78 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v122, *v15.i8)), vaddw_high_s16(v120, v15)), v74), 0);
    v79 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v116, *v17.i8)), vaddw_high_s16(v114, v17)), v74), 0);
    v80 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v110, *v19.i8)), vaddw_high_s16(v108, v19)), v74), 0);
    v81 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v104, *v21.i8)), vaddw_high_s16(v102, v21)), v74), 0);
    v82 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v98, *v23.i8)), vaddw_high_s16(v96, v23)), v74), 0);
    v83 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v91, *v25.i8)), vaddw_high_s16(v89, v25)), v74);
    v85 = (a1 + 224);
    v84 = 240;
  }

  v129 = vmaxq_s16(v83, v76);
  v130 = *(a1 + v84);
  v131 = vrev64q_s32(*v85);
  v132 = vextq_s8(v131, v131, 8uLL);
  v133 = vrev64q_s32(v130);
  if (v72)
  {
    v134 = -1;
  }

  else
  {
    v134 = 0;
  }

  v135 = vdupq_n_s32(v134);
  v136 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vbslq_s8(v135, *v85, vextq_s8(v133, v133, 8uLL)), *v26)), vaddw_high_s16(vbslq_s8(v135, v130, v132), *v26->i8)), v74);
  *a2 = v77;
  *v14 = v78;
  *v16 = v79;
  *v18 = v80;
  *v20 = v81;
  *v22 = v82;
  result = vmaxq_s16(v136, 0);
  *v24 = v129;
  *v26->i8 = result;
  return result;
}

int32x4_t *sub_277AEA4A0(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5)
{
  if (a3)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8;
  }

  if (v5 + a4 <= 15)
  {
    v6 = 0x8000;
  }

  else
  {
    v6 = 1 << (v5 + a4 - 1);
  }

  v7 = vdupq_n_s32(-v6);
  v8 = vdupq_n_s32(v6 - 1);
  v9 = result[14];
  v10 = vdupq_n_s32(0x191u);
  v11.i64[0] = 0x80000000800;
  v11.i64[1] = 0x80000000800;
  v12 = vaddq_s32(vmlaq_s32(vmulq_s32(*result, v10), v9, vdupq_n_s32(0xFECu)), v11);
  v13 = vaddq_s32(vmlaq_s32(vmulq_s32(v9, v10), *result, vdupq_n_s32(0xFFFFF014)), v11);
  v14 = result[10];
  v15 = result[4];
  v16 = vdupq_n_s32(0x78Bu);
  v17 = vaddq_s32(vmlaq_s32(vmulq_s32(v15, v16), v14, vdupq_n_s32(0xE1Cu)), v11);
  v18 = vaddq_s32(vmlaq_s32(vmulq_s32(v14, v16), v15, vdupq_n_s32(0xFFFFF1E4)), v11);
  v19 = result[6];
  v20 = result[8];
  v21 = vdupq_n_s32(0xC5Eu);
  v22 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v20, v21), v19, vdupq_n_s32(0xA26u)), v11), 0xCuLL);
  v23 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v19, v21), v20, vdupq_n_s32(0xFFFFF5DA)), v11), 0xCuLL);
  v24 = result[2];
  v25 = result[12];
  v26 = vdupq_n_s32(0xF50u);
  v27 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v25, v26), v24, vdupq_n_s32(0x4A5u)), v11), 0xCuLL);
  v28 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v24, v26), v25, vdupq_n_s32(0xFFFFFB5B)), v11), 0xCuLL);
  v29 = vsubq_s32(vshrq_n_s32(v12, 0xCuLL), v22);
  v30 = vminq_s32(vmaxq_s32(vsraq_n_s32(v22, v12, 0xCuLL), v7), v8);
  v31 = vminq_s32(vmaxq_s32(v29, v7), v8);
  v32 = vsubq_s32(vshrq_n_s32(v13, 0xCuLL), v23);
  v33 = vminq_s32(vmaxq_s32(vsraq_n_s32(v23, v13, 0xCuLL), v7), v8);
  v34 = vminq_s32(vmaxq_s32(v32, v7), v8);
  v35 = vsubq_s32(vshrq_n_s32(v17, 0xCuLL), v27);
  v36 = vminq_s32(vmaxq_s32(vsraq_n_s32(v27, v17, 0xCuLL), v7), v8);
  v37 = vminq_s32(vmaxq_s32(v35, v7), v8);
  v38 = vsubq_s32(vshrq_n_s32(v18, 0xCuLL), v28);
  v39 = vminq_s32(vmaxq_s32(vsraq_n_s32(v28, v18, 0xCuLL), v7), v8);
  v40 = vdupq_n_s32(0xEC8u);
  v41 = vminq_s32(vmaxq_s32(v38, v7), v8);
  v42 = vdupq_n_s32(0x61Fu);
  v43 = vaddq_s32(vmlaq_s32(vmulq_s32(v34, v42), v31, v40), v11);
  v44 = vaddq_s32(vmlaq_s32(vmulq_s32(v31, v42), v34, vdupq_n_s32(0xFFFFF138)), v11);
  v45 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v37, vdupq_n_s32(0xFFFFF9E1)), v41, v40), v11), 0xCuLL);
  v46 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, v42), v37, v40), v11), 0xCuLL);
  v47 = vaddq_s32(v36, v30);
  v48 = vsubq_s32(v30, v36);
  v49 = vminq_s32(vmaxq_s32(v47, v7), v8);
  v50 = vminq_s32(vmaxq_s32(v48, v7), v8);
  v51 = vminq_s32(vmaxq_s32(vaddq_s32(v39, v33), v7), v8);
  v52 = vminq_s32(vmaxq_s32(vsubq_s32(v33, v39), v7), v8);
  v53 = vminq_s32(vmaxq_s32(vsraq_n_s32(v45, v43, 0xCuLL), v7), v8);
  v54 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v43, 0xCuLL), v45), v7), v8);
  v55 = vminq_s32(vmaxq_s32(vsraq_n_s32(v46, v44, 0xCuLL), v7), v8);
  v56 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v44, 0xCuLL), v46), v7), v8);
  v57 = vdupq_n_s32(0xB50u);
  v44.i64[0] = 0x80000000800;
  v44.i64[1] = 0x80000000800;
  v58 = vmlaq_s32(v44, v50, v57);
  v59 = vmulq_s32(v52, v57);
  v60 = vshrq_n_s32(vaddq_s32(v58, v59), 0xCuLL);
  v61 = vshrq_n_s32(vsubq_s32(v58, v59), 0xCuLL);
  v62 = vmlaq_s32(v11, v54, v57);
  v63 = vmulq_s32(v56, v57);
  v64 = vshrq_n_s32(vaddq_s32(v62, v63), 0xCuLL);
  v65 = vshrq_n_s32(vsubq_s32(v62, v63), 0xCuLL);
  if (a3)
  {
    v66 = vnegq_s32(v53);
    v67 = vnegq_s32(v60);
    v68 = vnegq_s32(v65);
    v69 = vnegq_s32(v51);
  }

  else
  {
    if (a4 <= 10)
    {
      v70 = 10;
    }

    else
    {
      v70 = a4;
    }

    v71 = 32 << v70;
    v72 = vdupq_n_s32(-v71);
    v73 = vdupq_n_s32(v71 - 1);
    v74 = vdupq_n_s32(-a5);
    v75 = vdupq_n_s32(1 << a5 >> 1);
    v49 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v49, v75), v74), v72), v73);
    v66 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v75, v53), v74), v72), v73);
    v64 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v64, v75), v74), v72), v73);
    v67 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v75, v60), v74), v72), v73);
    v61 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v61, v75), v74), v72), v73);
    v68 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v75, v65), v74), v72), v73);
    v55 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v55, v75), v74), v72), v73);
    v69 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v75, v51), v74), v72), v73);
  }

  *a2 = v49;
  a2[2] = v66;
  a2[4] = v64;
  a2[6] = v67;
  a2[8] = v61;
  a2[10] = v68;
  a2[12] = v55;
  a2[14] = v69;
  v76 = result[15];
  v77 = vdupq_n_s32(0x191u);
  v78 = result[1];
  v79.i64[0] = 0x80000000800;
  v79.i64[1] = 0x80000000800;
  v80 = vaddq_s32(vmlaq_s32(vmulq_s32(v78, v77), v76, vdupq_n_s32(0xFECu)), v79);
  v81 = vaddq_s32(vmlaq_s32(vmulq_s32(v78, vdupq_n_s32(0xFFFFF014)), v76, v77), v79);
  v82 = result[11];
  v83 = result[5];
  v84 = vdupq_n_s32(0x78Bu);
  v85 = vaddq_s32(vmlaq_s32(vmulq_s32(v83, v84), v82, vdupq_n_s32(0xE1Cu)), v79);
  v86 = vaddq_s32(vmlaq_s32(vmulq_s32(v83, vdupq_n_s32(0xFFFFF1E4)), v82, v84), v79);
  v87 = result[7];
  v88 = result[9];
  v89 = vdupq_n_s32(0xC5Eu);
  v90 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v88, v89), v87, vdupq_n_s32(0xA26u)), v79), 0xCuLL);
  v91 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v88, vdupq_n_s32(0xFFFFF5DA)), v87, v89), v79), 0xCuLL);
  v92 = result[3];
  v93 = result[13];
  v94 = vdupq_n_s32(0xF50u);
  v95 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v93, v94), v92, vdupq_n_s32(0x4A5u)), v79), 0xCuLL);
  v96 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v93, vdupq_n_s32(0xFFFFFB5B)), v92, v94), v79), 0xCuLL);
  v97 = vsubq_s32(vshrq_n_s32(v80, 0xCuLL), v90);
  v98 = vminq_s32(vmaxq_s32(vsraq_n_s32(v90, v80, 0xCuLL), v7), v8);
  v99 = vminq_s32(vmaxq_s32(v97, v7), v8);
  v100 = vsubq_s32(vshrq_n_s32(v81, 0xCuLL), v91);
  v101 = vminq_s32(vmaxq_s32(vsraq_n_s32(v91, v81, 0xCuLL), v7), v8);
  v102 = vminq_s32(vmaxq_s32(v100, v7), v8);
  v103 = vsubq_s32(vshrq_n_s32(v85, 0xCuLL), v95);
  v104 = vminq_s32(vmaxq_s32(vsraq_n_s32(v95, v85, 0xCuLL), v7), v8);
  v105 = vminq_s32(vmaxq_s32(v103, v7), v8);
  v106 = vsubq_s32(vshrq_n_s32(v86, 0xCuLL), v96);
  v107 = vminq_s32(vmaxq_s32(vsraq_n_s32(v96, v86, 0xCuLL), v7), v8);
  v108 = vdupq_n_s32(0xEC8u);
  v109 = vminq_s32(vmaxq_s32(v106, v7), v8);
  v110 = vdupq_n_s32(0x61Fu);
  v111 = vaddq_s32(vmlaq_s32(vmulq_s32(v102, v110), v99, v108), v79);
  v112 = vaddq_s32(vmlaq_s32(vmulq_s32(v102, vdupq_n_s32(0xFFFFF138)), v99, v110), v79);
  v113 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v109, v108), v105, vdupq_n_s32(0xFFFFF9E1)), v79), 0xCuLL);
  v114 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v109, v110), v105, v108), v79), 0xCuLL);
  v115 = vaddq_s32(v104, v98);
  v116 = vsubq_s32(v98, v104);
  v117 = vminq_s32(vmaxq_s32(v115, v7), v8);
  v118 = vminq_s32(vmaxq_s32(v116, v7), v8);
  v119 = vminq_s32(vmaxq_s32(vaddq_s32(v107, v101), v7), v8);
  v120 = vminq_s32(vmaxq_s32(vsubq_s32(v101, v107), v7), v8);
  v121 = vminq_s32(vmaxq_s32(vsraq_n_s32(v113, v111, 0xCuLL), v7), v8);
  v122 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v111, 0xCuLL), v113), v7), v8);
  v123 = vminq_s32(vmaxq_s32(vsraq_n_s32(v114, v112, 0xCuLL), v7), v8);
  v124 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v112, 0xCuLL), v114), v7), v8);
  v125 = vdupq_n_s32(0xB50u);
  v126.i64[0] = 0x80000000800;
  v126.i64[1] = 0x80000000800;
  v127 = vmlaq_s32(v126, v118, v125);
  v128 = vmulq_s32(v120, v125);
  v129 = vshrq_n_s32(vaddq_s32(v128, v127), 0xCuLL);
  v130 = vshrq_n_s32(vsubq_s32(v127, v128), 0xCuLL);
  v131 = vmlaq_s32(v79, v122, v125);
  v132 = vmulq_s32(v124, v125);
  v133 = vshrq_n_s32(vaddq_s32(v132, v131), 0xCuLL);
  v134 = vshrq_n_s32(vsubq_s32(v131, v132), 0xCuLL);
  if (a3)
  {
    v135 = vnegq_s32(v121);
    v136 = vnegq_s32(v129);
    v137 = vnegq_s32(v134);
    v138 = vnegq_s32(v119);
  }

  else
  {
    if (a4 <= 10)
    {
      v139 = 10;
    }

    else
    {
      v139 = a4;
    }

    v140 = 32 << v139;
    v141 = vdupq_n_s32(-v140);
    v142 = vdupq_n_s32(v140 - 1);
    v143 = vdupq_n_s32(-a5);
    v144 = vdupq_n_s32(1 << a5 >> 1);
    v117 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v117, v144), v143), v141), v142);
    v135 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v144, v121), v143), v141), v142);
    v133 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v133, v144), v143), v141), v142);
    v136 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v144, v129), v143), v141), v142);
    v130 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v130, v144), v143), v141), v142);
    v137 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v144, v134), v143), v141), v142);
    v123 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v123, v144), v143), v141), v142);
    v138 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v144, v119), v143), v141), v142);
  }

  a2[1] = v117;
  a2[3] = v135;
  a2[5] = v133;
  a2[7] = v136;
  a2[9] = v130;
  a2[11] = v137;
  a2[13] = v123;
  a2[15] = v138;
  return result;
}

int32x4_t sub_277AEAB84(int32x4_t *a1, int a2)
{
  v2 = vdupq_n_s32(-a2);
  v3 = vrshlq_s32(a1[1], v2);
  *a1 = vrshlq_s32(*a1, v2);
  a1[1] = v3;
  v4 = vrshlq_s32(a1[3], v2);
  a1[2] = vrshlq_s32(a1[2], v2);
  a1[3] = v4;
  v5 = vrshlq_s32(a1[5], v2);
  a1[4] = vrshlq_s32(a1[4], v2);
  a1[5] = v5;
  v6 = vrshlq_s32(a1[7], v2);
  a1[6] = vrshlq_s32(a1[6], v2);
  a1[7] = v6;
  v7 = vrshlq_s32(a1[9], v2);
  a1[8] = vrshlq_s32(a1[8], v2);
  a1[9] = v7;
  v8 = vrshlq_s32(a1[11], v2);
  a1[10] = vrshlq_s32(a1[10], v2);
  a1[11] = v8;
  v9 = vrshlq_s32(a1[13], v2);
  a1[12] = vrshlq_s32(a1[12], v2);
  a1[13] = v9;
  v10 = vrshlq_s32(a1[14], v2);
  result = vrshlq_s32(a1[15], v2);
  a1[14] = v10;
  a1[15] = result;
  return result;
}

int32x4_t *sub_277AEAC10(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v464 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s32(-a3);
  v8 = vdupq_n_s32(1 << (a3 - 1));
  if (a4)
  {
    v9 = 6;
  }

  else
  {
    v9 = 8;
  }

  v10 = v9 + a5;
  if (v10 <= 15)
  {
    v11 = 0x8000;
  }

  else
  {
    v11 = 1 << (v10 - 1);
  }

  v12 = vdupq_n_s32(-v11);
  v336 = a1[2];
  v14 = a1[18];
  v13 = a1[19];
  v448 = a1[3];
  v15 = a1[10];
  v16 = a1[11];
  v17 = a1[26];
  v18 = a1[27];
  v19 = a1[6];
  v20 = a1[7];
  v21 = &dword_277C42240[64 * a3 - 640];
  v22 = a1[22];
  v23 = a1[23];
  v24 = a1[14];
  v25 = a1[15];
  v26 = a1[30];
  v27 = a1[31];
  v28 = a1[5];
  v29 = a1[20];
  v30 = a1[21];
  v408 = a1[4];
  v410 = v29;
  v31 = a1[13];
  v32 = a1[28];
  v412 = a1[12];
  v414 = v32;
  v33 = a1[9];
  v34 = a1[24];
  v35 = a1[25];
  v342 = a1[8];
  v344 = v34;
  v36 = a1[1];
  v37 = a1[16];
  v38 = a1[17];
  v401[0] = *a1;
  v402 = v37;
  v39 = &dword_277C42240[64 * a3 - 577];
  v40 = vld1q_dup_f32(v39);
  LODWORD(v39) = dword_277C42240[64 * a3 - 606];
  v41 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 607]), v27), v7);
  v42 = &dword_277C42240[64 * a3 - 593];
  v43 = vld1q_dup_f32(v42);
  v369 = vshlq_s32(vmlaq_s32(v8, v40, v36), v7);
  v370 = v41;
  v44 = dword_277C42240[64 * a3 - 590];
  v45 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 591]), v25), v7);
  v371 = vshlq_s32(vmlaq_s32(v8, v43, v38), v7);
  v372 = v45;
  v46 = &dword_277C42240[64 * a3 - 585];
  v47 = vld1q_dup_f32(v46);
  v48 = vmlaq_s32(v8, v47, v33);
  v49 = dword_277C42240[64 * a3 - 598];
  v50 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 599]), v23), v7);
  v373 = vshlq_s32(v48, v7);
  v374 = v50;
  v51 = &dword_277C42240[64 * a3 - 601];
  v52 = vld1q_dup_f32(v51);
  LODWORD(v51) = dword_277C42240[64 * a3 - 582];
  v53 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 583]), v20), v7);
  v54 = &dword_277C42240[64 * a3 - 581];
  v55 = vld1q_dup_f32(v54);
  v375 = vshlq_s32(vmlaq_s32(v8, v52, v35), v7);
  v376 = v53;
  v56 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 603]), v18), v7);
  v377 = vshlq_s32(vmlaq_s32(v8, v55, v28), v7);
  v378 = v56;
  v57 = &dword_277C42240[64 * a3 - 597];
  v58 = vld1q_dup_f32(v57);
  v59 = vmlaq_s32(v8, v58, v30);
  v60 = &dword_277C42240[64 * a3 - 589];
  v61 = vld1q_dup_f32(v60);
  v62 = &dword_277C42240[64 * a3 - 637];
  v63 = vld1q_dup_f32(v62);
  v64 = vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 579]), v448);
  v65 = vmlaq_s32(v8, v63, v448);
  v66 = vdupq_n_s32(-dword_277C42240[64 * a3 - 595]);
  v67 = &dword_277C42240[64 * a3 - 605];
  v68 = vld1q_dup_f32(v67);
  v69 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-dword_277C42240[64 * a3 - 587]), v16), v7);
  v379 = vshlq_s32(v59, v7);
  v380 = v69;
  v70 = a1[29];
  v71 = vmlaq_s32(v8, v61, v31);
  v72 = vmlaq_s32(v8, v66, v13);
  v73 = vdupq_n_s32(v11 - 1);
  v432 = v36;
  v434 = v38;
  v436 = v33;
  v438 = v35;
  v440 = v28;
  v442 = v30;
  v444 = v31;
  v446 = v70;
  v450 = v13;
  v74 = vshlq_s32(vmlaq_s32(v8, v68, v70), v7);
  v75 = &dword_277C42240[64 * a3 - 611];
  v452 = v16;
  v454 = v18;
  v381 = vshlq_s32(v71, v7);
  v382 = vshlq_s32(v72, v7);
  v76 = vld1q_dup_f32(v75);
  v77 = vshlq_s32(v64, v7);
  v78 = vmlaq_s32(v8, v76, v70);
  v79 = &dword_277C42240[64 * a3 - 621];
  v80 = vld1q_dup_f32(v79);
  v81 = vmlaq_s32(v8, v80, v13);
  v82 = &dword_277C42240[64 * a3 - 627];
  v83 = vld1q_dup_f32(v82);
  v84 = vmlaq_s32(v8, v83, v31);
  v85 = &dword_277C42240[64 * a3 - 629];
  v86 = vld1q_dup_f32(v85);
  v87 = &dword_277C42240[64 * a3 - 619];
  v456 = v20;
  v458 = v23;
  v383 = v74;
  v384 = v77;
  v88 = vld1q_dup_f32(v87);
  v89 = vmlaq_s32(v8, v86, v16);
  v90 = vmlaq_s32(v8, v88, v30);
  v91 = &dword_277C42240[64 * a3 - 613];
  v92 = vld1q_dup_f32(v91);
  v93 = vmlaq_s32(v8, v92, v18);
  v94 = &dword_277C42240[64 * a3 - 635];
  v95 = vld1q_dup_f32(v94);
  v96 = vmlaq_s32(v8, v95, v28);
  v97 = &dword_277C42240[64 * a3 - 633];
  v98 = vld1q_dup_f32(v97);
  v99 = vmlaq_s32(v8, v98, v20);
  v100 = &dword_277C42240[64 * a3 - 615];
  v101 = vld1q_dup_f32(v100);
  v102 = vmlaq_s32(v8, v101, v35);
  v103 = &dword_277C42240[64 * a3 - 617];
  v104 = vld1q_dup_f32(v103);
  v105 = &dword_277C42240[64 * a3 - 631];
  v106 = vld1q_dup_f32(v105);
  v107 = vmlaq_s32(v8, v104, v23);
  v108 = vmlaq_s32(v8, v106, v33);
  v109 = &dword_277C42240[64 * a3 - 625];
  v110 = vld1q_dup_f32(v109);
  v111 = &dword_277C42240[64 * a3 - 623];
  v112 = vld1q_dup_f32(v111);
  v113 = vmlaq_s32(v8, v112, v38);
  v114 = &dword_277C42240[64 * a3 - 609];
  v115 = vld1q_dup_f32(v114);
  v116 = &dword_277C42240[64 * a3 - 639];
  v117 = vld1q_dup_f32(v116);
  v118 = &dword_277C42240[64 * a3 - 578];
  v119 = vld1q_dup_f32(v118);
  v385 = vshlq_s32(v65, v7);
  v386 = vshlq_s32(v78, v7);
  v120 = vmlaq_s32(v8, v110, v25);
  v121 = vdupq_n_s32(-v39);
  v122 = &dword_277C42240[64 * a3 - 594];
  v460 = v25;
  v123 = vld1q_dup_f32(v122);
  v462 = v27;
  v124 = vmlaq_s32(v8, v115, v27);
  v125 = &dword_277C42240[64 * a3 - 586];
  v126 = vld1q_dup_f32(v125);
  v354 = v336;
  v356 = v14;
  v358 = v15;
  v360 = v17;
  v387 = vshlq_s32(v81, v7);
  v388 = vshlq_s32(v84, v7);
  v127 = vmlaq_s32(v8, v117, v36);
  v128 = &dword_277C42240[64 * a3 - 602];
  v129 = vld1q_dup_f32(v128);
  v362 = v19;
  v364 = v22;
  v366 = v24;
  v368 = v26;
  v389 = vshlq_s32(v89, v7);
  v390 = vshlq_s32(v90, v7);
  v391 = vshlq_s32(v93, v7);
  v392 = vshlq_s32(v96, v7);
  v393 = vshlq_s32(v99, v7);
  v394 = vshlq_s32(v102, v7);
  v395 = vshlq_s32(v107, v7);
  v396 = vshlq_s32(v108, v7);
  v397 = vshlq_s32(v120, v7);
  v398 = vshlq_s32(v113, v7);
  v399 = vshlq_s32(v124, v7);
  v400 = vshlq_s32(v127, v7);
  v416 = vshlq_s32(vmlaq_s32(v8, v119, v336), v7);
  v417 = vshlq_s32(vmlaq_s32(v8, v121, v26), v7);
  v418 = vshlq_s32(vmlaq_s32(v8, v123, v14), v7);
  v419 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-v44), v24), v7);
  v130 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-v51), v19), v7);
  v131 = &dword_277C42240[64 * a3 - 634];
  v132 = vld1q_dup_f32(v131);
  v133 = &dword_277C42240[64 * a3 - 614];
  v420 = vshlq_s32(vmlaq_s32(v8, v126, v15), v7);
  v421 = vshlq_s32(vmlaq_s32(v8, vdupq_n_s32(-v49), v22), v7);
  v422 = vshlq_s32(vmlaq_s32(v8, v129, v17), v7);
  v423 = v130;
  v134 = vld1q_dup_f32(v133);
  v135 = vshlq_s32(vmlaq_s32(v8, v134, v17), v7);
  v136 = &dword_277C42240[64 * a3 - 618];
  v137 = vld1q_dup_f32(v136);
  v138 = &dword_277C42240[64 * a3 - 630];
  v139 = vld1q_dup_f32(v138);
  v424 = vshlq_s32(vmlaq_s32(v8, v132, v19), v7);
  v425 = v135;
  v426 = vshlq_s32(vmlaq_s32(v8, v137, v22), v7);
  v427 = vshlq_s32(vmlaq_s32(v8, v139, v15), v7);
  v140 = &dword_277C42240[64 * a3 - 626];
  v141 = vld1q_dup_f32(v140);
  v142 = vshlq_s32(vmlaq_s32(v8, v141, v24), v7);
  v143 = &dword_277C42240[64 * a3 - 622];
  v144 = vld1q_dup_f32(v143);
  v145 = vshlq_s32(vmlaq_s32(v8, v144, v14), v7);
  v146 = &dword_277C42240[64 * a3 - 610];
  v147 = vld1q_dup_f32(v146);
  v428 = v142;
  v429 = v145;
  v148 = &dword_277C42240[64 * a3 - 638];
  v149 = vld1q_dup_f32(v148);
  v150 = 28;
  v430 = vshlq_s32(vmlaq_s32(v8, v147, v26), v7);
  v431 = vshlq_s32(vmlaq_s32(v8, v149, v336), v7);
  do
  {
    v151 = *(&v369 + v6);
    v152 = *(&v370 + v6);
    v153 = &v401[v6 / 0x10];
    v153[32] = vminq_s32(vmaxq_s32(vaddq_s32(v152, v151), v12), v73);
    v153[33] = vminq_s32(vmaxq_s32(vsubq_s32(v151, v152), v12), v73);
    v155 = *(&v371 + v6);
    v154 = *(&v372 + v6);
    v153[34] = vminq_s32(vmaxq_s32(vsubq_s32(v154, v155), v12), v73);
    v153[35] = vminq_s32(vmaxq_s32(vaddq_s32(v155, v154), v12), v73);
    v150 += 4;
    v6 += 64;
  }

  while (v150 < 0x3C);
  v156 = 0;
  v157 = dword_277C42240[64 * a3 - 580];
  v158 = vdupq_n_s32(v157);
  v159 = dword_277C42240[64 * a3 - 604];
  v160 = vdupq_n_s32(-v159);
  v346 = vshlq_s32(vmlaq_s32(v8, v158, v408), v7);
  v347 = vshlq_s32(vmlaq_s32(v8, v160, v414), v7);
  v161 = dword_277C42240[64 * a3 - 596];
  v162 = vdupq_n_s32(v161);
  v163 = dword_277C42240[64 * a3 - 588];
  v164 = vdupq_n_s32(-v163);
  v348 = vshlq_s32(vmlaq_s32(v8, v162, v410), v7);
  v349 = vshlq_s32(vmlaq_s32(v8, v164, v412), v7);
  v165 = dword_277C42240[64 * a3 - 628];
  v166 = vdupq_n_s32(v165);
  v167 = dword_277C42240[64 * a3 - 620];
  v168 = vdupq_n_s32(v167);
  v350 = vshlq_s32(vmlaq_s32(v8, v166, v412), v7);
  v351 = vshlq_s32(vmlaq_s32(v8, v168, v410), v7);
  v169 = dword_277C42240[64 * a3 - 612];
  v170 = vdupq_n_s32(v169);
  v171 = dword_277C42240[64 * a3 - 636];
  v172 = vdupq_n_s32(v171);
  v352 = vshlq_s32(vmlaq_s32(v8, v170, v414), v7);
  v353 = vshlq_s32(vmlaq_s32(v8, v172, v408), v7);
  for (i = 12; i < 0x1C; i += 4)
  {
    v174 = *(&v416 + v156);
    v175 = *(&v417 + v156);
    v176 = (&v338 + v156);
    v176[16] = vminq_s32(vmaxq_s32(vaddq_s32(v175, v174), v12), v73);
    v176[17] = vminq_s32(vmaxq_s32(vsubq_s32(v174, v175), v12), v73);
    v178 = *(&v418 + v156);
    v177 = *(&v419 + v156);
    v176[18] = vminq_s32(vmaxq_s32(vsubq_s32(v177, v178), v12), v73);
    v176[19] = vminq_s32(vmaxq_s32(vaddq_s32(v178, v177), v12), v73);
    v156 += 64;
  }

  v179 = 28;
  v180 = 32;
  do
  {
    v181 = (&v338 + v180 * 16);
    *v181 = v401[v180];
    v181[3] = *(&v403 + v180 * 16);
    v179 += 4;
    v180 += 4;
  }

  while (v179 < 0x3C);
  v182 = 0;
  v370 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v462, v158), v172, v433), v7);
  v371 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v434, vdupq_n_s32(-v157)), v461, vdupq_n_s32(-v171)), v7);
  v183 = vdupq_n_s32(v159);
  v374 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v458, v170), v183, v437), v7);
  v375 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v438, vdupq_n_s32(-v169)), v457, v160), v7);
  v378 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v454, v162), v168, v441), v7);
  v379 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v442, vdupq_n_s32(-v161)), v453, vdupq_n_s32(-v167)), v7);
  v184 = vmlaq_s32(vmlaq_s32(v8, v446, vdupq_n_s32(-v165)), v449, v164);
  v185 = vdupq_n_s32(v163);
  v382 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v450, v166), v185, v445), v7);
  v383 = vshlq_s32(v184, v7);
  v386 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v185, v446), v449, v166), v7);
  v387 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v450, v185), v445, v166), v7);
  v390 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v168, v442), v453, v162), v7);
  v391 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v454, v168), v441, v162), v7);
  v394 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v183, v438), v457, v170), v7);
  v395 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v458, v183), v437, v170), v7);
  v398 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v172, v434), v461, v158), v7);
  v399 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v462, v172), v433, v158), v7);
  v186 = v21[56];
  v187 = vdupq_n_s32(v186);
  v188 = v21[40];
  v189 = vdupq_n_s32(-v188);
  v404 = vshlq_s32(vmlaq_s32(v8, v187, v342), v7);
  v405 = vshlq_s32(vmlaq_s32(v8, v189, v344), v7);
  v190 = v21[24];
  v191 = vdupq_n_s32(v190);
  v192 = v21[8];
  v193 = vdupq_n_s32(v192);
  v194 = 4;
  v406 = vshlq_s32(vmlaq_s32(v8, v191, v344), v7);
  v407 = vshlq_s32(vmlaq_s32(v8, v193, v342), v7);
  do
  {
    v195 = *(&v346 + v182);
    v196 = *(&v347 + v182);
    v197 = &v401[v182 / 0x10];
    v197[8] = vminq_s32(vmaxq_s32(vaddq_s32(v196, v195), v12), v73);
    v197[9] = vminq_s32(vmaxq_s32(vsubq_s32(v195, v196), v12), v73);
    v199 = *(&v348 + v182);
    v198 = *(&v349 + v182);
    v197[10] = vminq_s32(vmaxq_s32(vsubq_s32(v198, v199), v12), v73);
    v197[11] = vminq_s32(vmaxq_s32(vaddq_s32(v199, v198), v12), v73);
    v194 += 4;
    v182 += 64;
  }

  while (v194 < 0xC);
  v200 = 12;
  v201 = 16;
  result = v401;
  do
  {
    v203 = &v401[v201];
    *v203 = *(&v338 + v201 * 16);
    v203[3] = *(&v341 + v201 * 16);
    v200 += 4;
    v201 += 4;
  }

  while (v200 < 0x1C);
  v204 = vdupq_n_s32(-v186);
  v205 = vdupq_n_s32(-v192);
  v417 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v368, v187), v193, v355), v7);
  v418 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v356, v204), v367, v205), v7);
  v206 = vdupq_n_s32(v188);
  v207 = vdupq_n_s32(-v190);
  v421 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v364, v191), v206, v359), v7);
  v422 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v360, v207), v363, v189), v7);
  v425 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v206, v360), v363, v191), v7);
  v426 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v364, v206), v359, v191), v7);
  v429 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v193, v356), v367, v187), v7);
  v430 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v368, v193), v355, v187), v7);
  v208 = 24;
  v209 = 624;
  do
  {
    v210 = &v401[v209 / 0x10];
    v211 = *(&v338 + v209 - 112);
    v212 = *(&v338 + v209 - 96);
    v214 = *(&v338 + v209 - 80);
    v213 = *(&v338 + v209 - 64);
    v210[-7] = vminq_s32(vmaxq_s32(vaddq_s32(v213, v211), v12), v73);
    v210[-6] = vminq_s32(vmaxq_s32(vaddq_s32(v214, v212), v12), v73);
    v210[-5] = vminq_s32(vmaxq_s32(vsubq_s32(v212, v214), v12), v73);
    v210[-4] = vminq_s32(vmaxq_s32(vsubq_s32(v211, v213), v12), v73);
    v216 = *(&v338 + v209 - 16);
    v215 = *(&v338 + v209);
    v217 = *(&v338 + v209 - 48);
    v218 = *(&v338 + v209 - 32);
    v210[-1] = vminq_s32(vmaxq_s32(vaddq_s32(v218, v216), v12), v73);
    *v210 = vminq_s32(vmaxq_s32(vaddq_s32(v217, v215), v12), v73);
    v210[-3] = vminq_s32(vmaxq_s32(vsubq_s32(v215, v217), v12), v73);
    v210[-2] = vminq_s32(vmaxq_s32(vsubq_s32(v216, v218), v12), v73);
    v208 += 8;
    v209 += 128;
  }

  while (v208 < 0x38);
  v219 = (v21 + 32);
  v220 = vld1q_dup_f32(v219);
  LODWORD(v219) = v21[48];
  v221 = vdupq_n_s32(v219);
  v222 = v21[16];
  v223 = vdupq_n_s32(v222);
  v340 = vshlq_s32(vmlaq_s32(v8, v221, v402), v7);
  v341 = vshlq_s32(vmlaq_s32(v8, v223, v402), v7);
  v342 = vminq_s32(vmaxq_s32(vaddq_s32(v405, v404), v12), v73);
  v343 = vminq_s32(vmaxq_s32(vsubq_s32(v404, v405), v12), v73);
  v344 = vminq_s32(vmaxq_s32(vsubq_s32(v407, v406), v12), v73);
  v345 = vminq_s32(vmaxq_s32(vaddq_s32(v406, v407), v12), v73);
  v346 = v408;
  v347 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v414, v221), v223, v409), v7);
  v224 = vdupq_n_s32(-v219);
  v335 = vdupq_n_s32(-v222);
  v348 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v410, v224), v413, v335), v7);
  v349 = v411;
  v225 = vshlq_s32(vmlaq_s32(v8, v220, v401[0]), v7);
  v338 = v225;
  v339 = v225;
  v350 = v412;
  v351 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v410), v413, v221), v7);
  v352 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v414, v223), v409, v221), v7);
  v353 = v415;
  v226 = 8;
  v227 = 368;
  do
  {
    v228 = (&v338 + v227);
    v229 = *(&v394 + v227);
    v230 = *(&v395 + v227);
    v232 = *(&v396 + v227);
    v231 = *(&v397 + v227);
    v228[-7] = vminq_s32(vmaxq_s32(vaddq_s32(v231, v229), v12), v73);
    v228[-6] = vminq_s32(vmaxq_s32(vaddq_s32(v232, v230), v12), v73);
    v228[-5] = vminq_s32(vmaxq_s32(vsubq_s32(v230, v232), v12), v73);
    v228[-4] = vminq_s32(vmaxq_s32(vsubq_s32(v229, v231), v12), v73);
    v234 = *(&v400 + v227);
    v233 = v401[v227 / 0x10];
    v235 = *(&v398 + v227);
    v236 = *(&v399 + v227);
    v228[-1] = vminq_s32(vmaxq_s32(vaddq_s32(v236, v234), v12), v73);
    *v228 = vminq_s32(vmaxq_s32(vaddq_s32(v235, v233), v12), v73);
    v228[-3] = vminq_s32(vmaxq_s32(vsubq_s32(v233, v235), v12), v73);
    v228[-2] = vminq_s32(vmaxq_s32(vsubq_s32(v234, v236), v12), v73);
    v226 += 8;
    v227 += 128;
  }

  while (v226 < 0x18);
  v337 = v224;
  v237 = 24;
  v238 = 32;
  do
  {
    v239 = (&v338 + v238 * 16);
    v240 = v401[v238 + 1];
    *v239 = v401[v238];
    v239[1] = v240;
    v241 = *(&v407 + v238 * 16);
    v239[6] = *(&v406 + v238 * 16);
    v239[7] = v241;
    v237 += 8;
    v238 += 8;
  }

  while (v237 < 0x38);
  v371 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v461, v187), v193, v434), v7);
  v372 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v460, v187), v193, v435), v7);
  v373 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v436, v204), v459, v205), v7);
  v374 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v437, v204), v458, v205), v7);
  v379 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v453, v191), v206, v442), v7);
  v380 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v452, v191), v206, v443), v7);
  v381 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v444, v207), v451, v189), v7);
  v382 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v445, v207), v450, v189), v7);
  v387 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v206, v445), v450, v191), v7);
  v388 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v206, v444), v451, v191), v7);
  v389 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v452, v206), v443, v191), v7);
  v390 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v453, v206), v442, v191), v7);
  v395 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v193, v437), v458, v187), v7);
  v396 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v193, v436), v459, v187), v7);
  v397 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v460, v193), v435, v187), v7);
  v398 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v461, v193), v434, v187), v7);
  v401[0] = vminq_s32(vmaxq_s32(vaddq_s32(v341, v225), v12), v73);
  v401[1] = vminq_s32(vmaxq_s32(vaddq_s32(v340, v339), v12), v73);
  v403 = vminq_s32(vmaxq_s32(vsubq_s32(v225, v341), v12), v73);
  v402 = vminq_s32(vmaxq_s32(vsubq_s32(v339, v340), v12), v73);
  v242 = vmlaq_s32(v8, v344, v220);
  v243 = vmulq_s32(v343, v220);
  v404 = v342;
  v405 = vshlq_s32(vsubq_s32(v242, v243), v7);
  v407 = v345;
  v406 = vshlq_s32(vaddq_s32(v242, v243), v7);
  v408 = vminq_s32(vmaxq_s32(vaddq_s32(v349, v346), v12), v73);
  v409 = vminq_s32(vmaxq_s32(vaddq_s32(v348, v347), v12), v73);
  v411 = vminq_s32(vmaxq_s32(vsubq_s32(v346, v349), v12), v73);
  v410 = vminq_s32(vmaxq_s32(vsubq_s32(v347, v348), v12), v73);
  v415 = vminq_s32(vmaxq_s32(vaddq_s32(v350, v353), v12), v73);
  v414 = vminq_s32(vmaxq_s32(vaddq_s32(v351, v352), v12), v73);
  v244 = 8;
  v245 = 256;
  v412 = vminq_s32(vmaxq_s32(vsubq_s32(v353, v350), v12), v73);
  v413 = vminq_s32(vmaxq_s32(vsubq_s32(v352, v351), v12), v73);
  do
  {
    v246 = &v401[v245 / 0x10];
    v247 = *(&v338 + v245 + 16);
    *v246 = *(&v338 + v245);
    v246[1] = v247;
    v248 = *(&v345 + v245);
    v246[6] = *(&v344 + v245);
    v246[7] = v248;
    v244 += 8;
    v245 += 128;
  }

  while (v244 < 0x18);
  v418 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v367, v221), v223, v356), v7);
  v419 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v366, v221), v223, v357), v7);
  v420 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v358, v337), v365, v335), v7);
  v421 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v359, v337), v364, v335), v7);
  v426 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v359), v364, v221), v7);
  v427 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v358), v365, v221), v7);
  v428 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v366, v223), v357, v221), v7);
  v429 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v367, v223), v356, v221), v7);
  v249 = 32;
  do
  {
    v250 = 4;
    v251 = v249;
    do
    {
      v252 = *(&v338 + v251);
      v253 = (16 * v251) ^ 0x70;
      v254 = *(&v338 + v253);
      v401[v251] = vminq_s32(vmaxq_s32(vaddq_s32(v254, v252), v12), v73);
      *(v401 + v253) = vminq_s32(vmaxq_s32(vsubq_s32(v252, v254), v12), v73);
      v255 = (16 * v251) ^ 0xF0;
      v256 = *(&v338 + v255);
      v257 = (16 * v251) ^ 0x80;
      v258 = *(&v338 + v257);
      *(v401 + v255) = vminq_s32(vmaxq_s32(vaddq_s32(v258, v256), v12), v73);
      *(v401 + v257) = vminq_s32(vmaxq_s32(vsubq_s32(v256, v258), v12), v73);
      ++v251;
      --v250;
    }

    while (v250);
    v259 = v249 >= 0x30;
    v249 += 16;
  }

  while (!v259);
  v260 = 0;
  for (j = 7; j != 3; --j)
  {
    v262 = v401[v260];
    v263 = v401[j];
    *(&v338 + v260 * 16) = vminq_s32(vmaxq_s32(vaddq_s32(v263, v262), v12), v73);
    *(&v338 + j * 16) = vminq_s32(vmaxq_s32(vsubq_s32(v262, v263), v12), v73);
    ++v260;
  }

  v346 = v408;
  v347 = v409;
  v352 = v414;
  v353 = v415;
  v264 = vmlaq_s32(v8, v413, v220);
  v265 = vmulq_s32(v410, v220);
  v266 = vmlaq_s32(v8, v412, v220);
  v267 = vmulq_s32(v411, v220);
  v348 = vshlq_s32(vsubq_s32(v264, v265), v7);
  v349 = vshlq_s32(vsubq_s32(v266, v267), v7);
  v350 = vshlq_s32(vaddq_s32(v266, v267), v7);
  v351 = vshlq_s32(vaddq_s32(v264, v265), v7);
  for (k = 16; k != 20; ++k)
  {
    v269 = v401[k];
    v270 = (16 * k) ^ 0x70;
    v271 = *(v401 + v270);
    *(&v338 + k) = vminq_s32(vmaxq_s32(vaddq_s32(v271, v269), v12), v73);
    *(&v338 + v270) = vminq_s32(vmaxq_s32(vsubq_s32(v269, v271), v12), v73);
    v272 = (16 * k) ^ 0xF0;
    v273 = *(v401 + v272);
    v274 = (16 * k) ^ 0x80;
    v275 = *(v401 + v274);
    *(&v338 + v272) = vminq_s32(vmaxq_s32(vaddq_s32(v275, v273), v12), v73);
    *(&v338 + v274) = vminq_s32(vmaxq_s32(vsubq_s32(v273, v275), v12), v73);
  }

  for (m = 512; m != 576; m += 16)
  {
    v277 = (&v338 + m);
    *v277 = v401[m / 0x10];
    v277[12] = *(&v412 + m);
    v277[16] = *(&v416 + m);
    v277[28] = *(&v428 + m);
  }

  v278 = 0;
  v373 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v459, v221), v223, v436), v7);
  v374 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v458, v221), v223, v437), v7);
  v375 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v457, v221), v223, v438), v7);
  v376 = vshlq_s32(vmlsq_s32(vmlaq_s32(v8, v456, v221), v223, v439), v7);
  v377 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v440, v337), v455, v335), v7);
  v378 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v441, v337), v454, v335), v7);
  v379 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v442, v337), v453, v335), v7);
  v380 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v443, v337), v452, v335), v7);
  v389 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v443), v452, v221), v7);
  v390 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v442), v453, v221), v7);
  v391 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v441), v454, v221), v7);
  v392 = vshlq_s32(vmlaq_s32(vmlsq_s32(v8, v223, v440), v455, v221), v7);
  v393 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v456, v223), v439, v221), v7);
  v394 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v457, v223), v438, v221), v7);
  v395 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v458, v223), v437, v221), v7);
  v396 = vshlq_s32(vmlaq_s32(vmlaq_s32(v8, v459, v223), v436, v221), v7);
  for (n = 15; n != 7; --n)
  {
    v280 = *(&v338 + v278 * 16);
    v281 = *(&v338 + n * 16);
    v401[v278] = vminq_s32(vmaxq_s32(vaddq_s32(v281, v280), v12), v73);
    v401[n] = vminq_s32(vmaxq_s32(vsubq_s32(v280, v281), v12), v73);
    ++v278;
  }

  for (ii = 16; ii != 20; ++ii)
  {
    v283 = &v401[ii];
    *v283 = *(&v338 + ii * 16);
    v283[12] = *(&v350 + ii * 16);
  }

  v284 = vmlaq_s32(v8, v365, v220);
  v285 = vmulq_s32(v358, v220);
  v286 = vmlaq_s32(v8, v364, v220);
  v287 = vmulq_s32(v359, v220);
  v420 = vshlq_s32(vsubq_s32(v284, v285), v7);
  v421 = vshlq_s32(vsubq_s32(v286, v287), v7);
  v288 = vmlaq_s32(v8, v363, v220);
  v289 = vmulq_s32(v360, v220);
  v290 = vmlaq_s32(v8, v362, v220);
  v291 = vmulq_s32(v361, v220);
  v422 = vshlq_s32(vsubq_s32(v288, v289), v7);
  v423 = vshlq_s32(vsubq_s32(v290, v291), v7);
  v424 = vshlq_s32(vaddq_s32(v290, v291), v7);
  v425 = vshlq_s32(vaddq_s32(v288, v289), v7);
  v426 = vshlq_s32(vaddq_s32(v286, v287), v7);
  v427 = vshlq_s32(vaddq_s32(v284, v285), v7);
  for (jj = 32; jj != 40; ++jj)
  {
    v293 = *(&v338 + jj);
    v294 = (16 * jj) ^ 0xF0;
    v295 = *(&v338 + v294);
    v401[jj] = vminq_s32(vmaxq_s32(vaddq_s32(v295, v293), v12), v73);
    *(v401 + v294) = vminq_s32(vmaxq_s32(vsubq_s32(v293, v295), v12), v73);
  }

  for (kk = 48; kk != 56; ++kk)
  {
    v297 = (16 * kk) ^ 0xF0;
    v298 = *(&v338 + v297);
    v299 = *(&v338 + kk);
    *(v401 + v297) = vminq_s32(vmaxq_s32(vaddq_s32(v299, v298), v12), v73);
    v401[kk] = vminq_s32(vmaxq_s32(vsubq_s32(v298, v299), v12), v73);
  }

  v300 = 0;
  for (mm = 31; mm != 15; --mm)
  {
    v302 = v401[v300];
    v303 = v401[mm];
    *(&v338 + v300 * 16) = vminq_s32(vmaxq_s32(vaddq_s32(v303, v302), v12), v73);
    *(&v338 + mm * 16) = vminq_s32(vmaxq_s32(vsubq_s32(v302, v303), v12), v73);
    ++v300;
  }

  v304 = 0;
  v373 = v436;
  v374 = v437;
  v375 = v438;
  v376 = v439;
  v369 = v432;
  v370 = v433;
  v371 = v434;
  v372 = v435;
  v305 = vmlaq_s32(v8, v455, v220);
  v306 = vmulq_s32(v440, v220);
  v307 = vmlaq_s32(v8, v454, v220);
  v308 = vmulq_s32(v441, v220);
  v377 = vshlq_s32(vsubq_s32(v305, v306), v7);
  v378 = vshlq_s32(vsubq_s32(v307, v308), v7);
  v309 = vmlaq_s32(v8, v453, v220);
  v310 = vmulq_s32(v442, v220);
  v311 = vmlaq_s32(v8, v452, v220);
  v312 = vmulq_s32(v443, v220);
  v379 = vshlq_s32(vsubq_s32(v309, v310), v7);
  v380 = vshlq_s32(vsubq_s32(v311, v312), v7);
  v313 = vmlaq_s32(v8, v451, v220);
  v314 = vmulq_s32(v444, v220);
  v315 = vmlaq_s32(v8, v450, v220);
  v316 = vmulq_s32(v445, v220);
  v381 = vshlq_s32(vsubq_s32(v313, v314), v7);
  v382 = vshlq_s32(vsubq_s32(v315, v316), v7);
  v317 = vmlaq_s32(v8, v449, v220);
  v318 = vmulq_s32(v446, v220);
  v319 = vmlaq_s32(v8, v448, v220);
  v320 = vmulq_s32(v447, v220);
  v383 = vshlq_s32(vsubq_s32(v317, v318), v7);
  v384 = vshlq_s32(vsubq_s32(v319, v320), v7);
  v385 = vshlq_s32(vaddq_s32(v319, v320), v7);
  v386 = vshlq_s32(vaddq_s32(v317, v318), v7);
  v387 = vshlq_s32(vaddq_s32(v315, v316), v7);
  v388 = vshlq_s32(vaddq_s32(v313, v314), v7);
  v389 = vshlq_s32(vaddq_s32(v311, v312), v7);
  v390 = vshlq_s32(vaddq_s32(v309, v310), v7);
  v395 = v458;
  v396 = v459;
  v393 = v456;
  v394 = v457;
  v399 = v462;
  v400 = v463;
  v397 = v460;
  v398 = v461;
  v321 = 63;
  v391 = vshlq_s32(vaddq_s32(v307, v308), v7);
  v392 = vshlq_s32(vaddq_s32(v305, v306), v7);
  do
  {
    v322 = *(&v338 + v304 * 16);
    v323 = *(&v338 + v321 * 16);
    a2[v304] = vminq_s32(vmaxq_s32(vaddq_s32(v323, v322), v12), v73);
    a2[v321--] = vminq_s32(vmaxq_s32(vsubq_s32(v322, v323), v12), v73);
    ++v304;
  }

  while (v321 != 31);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v324 = 10;
    }

    else
    {
      v324 = a5;
    }

    v325 = 32 << v324;
    v326 = vdupq_n_s32(-v325);
    v327 = vdupq_n_s32(v325 - 1);
    v328 = vdupq_n_s32(-a6);
    v329 = a2 + 2;
    v330 = -4;
    do
    {
      v331 = v329[-2];
      if (a6)
      {
        v331 = vrshlq_s32(v331, v328);
        v332 = vrshlq_s32(v329[-1], v328);
        v333 = vrshlq_s32(*v329, v328);
        v334 = vrshlq_s32(v329[1], v328);
      }

      else
      {
        v332 = v329[-1];
        v333 = *v329;
        v334 = v329[1];
      }

      v329[-2] = vminq_s32(vmaxq_s32(v331, v326), v327);
      v329[-1] = vminq_s32(vmaxq_s32(v332, v326), v327);
      *v329 = vminq_s32(vmaxq_s32(v333, v326), v327);
      v329[1] = vminq_s32(vmaxq_s32(v334, v326), v327);
      v329 += 4;
      v330 += 4;
    }

    while (v330 < 0x3C);
  }

  return result;
}

void sub_277AEC50C(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v313 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v10 = 6;
  }

  else
  {
    v10 = 8;
  }

  v11 = v10 + a5;
  if (v11 <= 15)
  {
    v12 = 0x8000;
  }

  else
  {
    v12 = 1 << (v11 - 1);
  }

  v247 = vdupq_n_s32(v12 - 1);
  v248 = vdupq_n_s32(-v12);
  v13 = vdupq_n_s32(-a3);
  v14 = vdupq_n_s32(1 << (a3 - 1));
  v16 = a1[1];
  v15 = a1[2];
  v17 = a1[10];
  v18 = a1[11];
  v19 = a1[6];
  v20 = a1[7];
  v21 = a1[14];
  v22 = a1[15];
  v23 = a1[9];
  v24 = a1[5];
  v25 = a1[3];
  v242 = a1[4];
  v26 = a1[13];
  v243 = a1[12];
  v244 = a1[8];
  v27 = &dword_277C42240[64 * a3 - 639];
  v28 = vld1q_dup_f32(v27);
  v29 = vmlaq_s32(v14, v28, v16);
  v30 = &dword_277C42240[64 * a3 - 577];
  v31 = vld1q_dup_f32(v30);
  v32 = vmlaq_s32(v14, v31, v16);
  LODWORD(v30) = dword_277C42240[64 * a3 - 590];
  v33 = vshlq_s32(vmlaq_s32(v14, vdupq_n_s32(-dword_277C42240[64 * a3 - 591]), v22), v13);
  v34 = &dword_277C42240[64 * a3 - 625];
  v35 = vld1q_dup_f32(v34);
  v36 = vshlq_s32(vmlaq_s32(v14, v35, v22), v13);
  v37 = &dword_277C42240[64 * a3 - 631];
  v38 = vld1q_dup_f32(v37);
  v308 = vshlq_s32(vmlaq_s32(v14, v38, v23), v13);
  v39 = &dword_277C42240[64 * a3 - 585];
  v40 = vld1q_dup_f32(v39);
  v284 = v33;
  v285 = vshlq_s32(vmlaq_s32(v14, v40, v23), v13);
  LODWORD(v39) = dword_277C42240[64 * a3 - 584];
  v41 = &dword_277C42240[64 * a3 - 633];
  v42 = vld1q_dup_f32(v41);
  v43 = vmlaq_s32(v14, vdupq_n_s32(-dword_277C42240[64 * a3 - 583]), v20);
  v44 = vmlaq_s32(v14, v42, v20);
  v45 = &dword_277C42240[64 * a3 - 635];
  v46 = vld1q_dup_f32(v45);
  v47 = vshlq_s32(v44, v13);
  v48 = vmlaq_s32(v14, v46, v24);
  v49 = &dword_277C42240[64 * a3 - 581];
  v50 = vld1q_dup_f32(v49);
  LODWORD(v49) = dword_277C42240[64 * a3 - 588];
  v51 = vmlaq_s32(v14, v50, v24);
  v52 = vmlaq_s32(v14, vdupq_n_s32(-dword_277C42240[64 * a3 - 587]), v18);
  v53 = &dword_277C42240[64 * a3 - 629];
  v54 = vld1q_dup_f32(v53);
  v55 = dword_277C42240[64 * a3 - 580];
  v56 = vmlaq_s32(v14, v54, v18);
  v57 = vmlaq_s32(v14, vdupq_n_s32(-dword_277C42240[64 * a3 - 579]), v25);
  v58 = &dword_277C42240[64 * a3 - 637];
  v59 = vld1q_dup_f32(v58);
  v60 = vmlaq_s32(v14, v59, v25);
  v61 = &dword_277C42240[64 * a3 - 627];
  v62 = vld1q_dup_f32(v61);
  v63 = &dword_277C42240[64 * a3 - 589];
  v64 = vld1q_dup_f32(v63);
  v65 = &dword_277C42240[64 * a3 - 638];
  v66 = vld1q_dup_f32(v65);
  v67 = vmlaq_s32(v14, v62, v26);
  v68 = &dword_277C42240[64 * a3 - 578];
  v69 = vld1q_dup_f32(v68);
  LODWORD(v68) = dword_277C42240[64 * a3 - 636];
  v70 = vmlaq_s32(v14, v64, v26);
  v71 = -v30;
  v72 = dword_277C42240[64 * a3 - 612];
  v73 = vdupq_n_s32(v72);
  v74 = vmlaq_s32(vmlaq_s32(v14, vdupq_n_s32(-v68), v36), vdupq_n_s32(-v55), v33);
  LODWORD(v30) = dword_277C42240[64 * a3 - 604];
  v75 = vdupq_n_s32(v30);
  v76 = vmlsq_s32(vmlaq_s32(v14, v73, v308), v285, v75);
  v77 = vdupq_n_s32(v71);
  v78 = &dword_277C42240[64 * a3 - 626];
  v79 = vmlaq_s32(vmlaq_s32(v14, v73, v285), v75, v308);
  v80 = vld1q_dup_f32(v78);
  v309 = v36;
  v81 = vshlq_s32(v43, v13);
  v82 = vmlsq_s32(vmlaq_s32(v14, v73, v47), v81, v75);
  v83 = vdupq_n_s32(v68);
  v306 = vshlq_s32(v82, v13);
  v84 = vdupq_n_s32(v55);
  v307 = vshlq_s32(v79, v13);
  v85 = vshlq_s32(v32, v13);
  v310 = vshlq_s32(vmlaq_s32(vmlsq_s32(v14, v33, v83), v84, v36), v13);
  v86 = &dword_277C42240[64 * a3 - 630];
  v87 = vmlaq_s32(v14, vdupq_n_s32(-v72), v81);
  v88 = vld1q_dup_f32(v86);
  v312 = vshlq_s32(v29, v13);
  v89 = &dword_277C42240[64 * a3 - 586];
  v288 = v81;
  v289 = vshlq_s32(v51, v13);
  v90 = vld1q_dup_f32(v89);
  LODWORD(v89) = dword_277C42240[64 * a3 - 582];
  v311 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v83, v312), v84, v85), v13);
  v91 = vdupq_n_s32(-v89);
  v92 = &dword_277C42240[64 * a3 - 634];
  v282 = vshlq_s32(vmlaq_s32(vmlsq_s32(v14, v85, v83), v84, v312), v13);
  v283 = vshlq_s32(v74, v13);
  v93 = vld1q_dup_f32(v92);
  v94 = vmlaq_s32(v14, v66, v15);
  v296 = vshlq_s32(v57, v13);
  v297 = vshlq_s32(v60, v13);
  v95 = vmlaq_s32(v87, vdupq_n_s32(-v30), v47);
  v96 = vdupq_n_s32(-v49);
  LODWORD(v30) = dword_277C42240[64 * a3 - 628];
  v286 = vshlq_s32(v76, v13);
  v287 = vshlq_s32(v95, v13);
  v97 = vdupq_n_s32(v30);
  v98 = vmlaq_s32(v14, v69, v15);
  LODWORD(v92) = dword_277C42240[64 * a3 - 596];
  v99 = vdupq_n_s32(v92);
  v100 = vmlaq_s32(v14, v77, v21);
  v101 = vmlaq_s32(v14, v80, v21);
  v102 = vmlaq_s32(v14, v88, v17);
  v103 = vmlaq_s32(v14, v90, v17);
  v104 = vdupq_n_s32(v49);
  LODWORD(v49) = dword_277C42240[64 * a3 - 620];
  v105 = vmlaq_s32(v14, v91, v19);
  v106 = vmlaq_s32(v14, v93, v19);
  v107 = vshlq_s32(v48, v13);
  v108 = vshlq_s32(v67, v13);
  v109 = vdupq_n_s32(v49);
  v305 = v47;
  v292 = vshlq_s32(v52, v13);
  v293 = vshlq_s32(v70, v13);
  v298 = vshlq_s32(vmlaq_s32(vmlsq_s32(v14, v296, v104), v97, v297), v13);
  v299 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v104, v108), v97, v293), v13);
  v301 = vshlq_s32(v56, v13);
  v302 = vshlq_s32(vmlsq_s32(vmlaq_s32(v14, v99, v301), v292, v109), v13);
  v303 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v99, v289), v109, v107), v13);
  v304 = v107;
  v290 = vshlq_s32(vmlsq_s32(vmlaq_s32(v14, v99, v107), v289, v109), v13);
  v291 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, vdupq_n_s32(-v92), v292), vdupq_n_s32(-v49), v301), v13);
  v300 = v108;
  v294 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v104, v293), v97, v108), v13);
  v295 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v96, v297), vdupq_n_s32(-v30), v296), v13);
  v110 = vmlaq_s32(v14, v84, v242);
  LODWORD(v30) = dword_277C42240[64 * a3 - 632];
  v111 = vdupq_n_s32(v30);
  v256 = vshlq_s32(vmlaq_s32(v14, v111, v244), v13);
  v112 = vdupq_n_s32(v39);
  v113 = *a1;
  v257 = vshlq_s32(v110, v13);
  v276 = vshlq_s32(v102, v13);
  v268 = vshlq_s32(v100, v13);
  v269 = vshlq_s32(v103, v13);
  v272 = vshlq_s32(v105, v13);
  v273 = vshlq_s32(v106, v13);
  v263 = vshlq_s32(vmlaq_s32(v14, v83, v242), v13);
  v264 = v263;
  v260 = vshlq_s32(vmlaq_s32(v14, v96, v243), v13);
  v261 = vshlq_s32(vmlaq_s32(v14, v97, v243), v13);
  v249 = v113;
  v253 = vshlq_s32(vmlaq_s32(v14, v112, v244), v13);
  v258 = v257;
  v259 = v260;
  v262 = v261;
  LODWORD(v49) = dword_277C42240[64 * a3 - 616];
  v114 = vdupq_n_s32(v49);
  LODWORD(v92) = dword_277C42240[64 * a3 - 600];
  v115 = vdupq_n_s32(-v49);
  v116 = vdupq_n_s32(-v92);
  v117 = vdupq_n_s32(v92);
  v118 = vdupq_n_s32(-v39);
  v119 = vdupq_n_s32(-v30);
  v274 = vshlq_s32(vmlsq_s32(vmlaq_s32(v14, v114, v273), v272, v117), v13);
  v275 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v114, v269), v117, v276), v13);
  v280 = vshlq_s32(v94, v13);
  v281 = v85;
  v277 = vshlq_s32(v101, v13);
  v245 = v14;
  v246 = v13;
  v265 = vshlq_s32(v98, v13);
  v278 = vshlq_s32(vmlaq_s32(vmlsq_s32(v14, v268, v111), v112, v277), v13);
  v279 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v111, v280), v112, v265), v13);
  v266 = vshlq_s32(vmlaq_s32(vmlsq_s32(v14, v265, v111), v112, v280), v13);
  v267 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v119, v277), v118, v268), v13);
  v120 = &v288;
  v270 = vshlq_s32(vmlsq_s32(vmlaq_s32(v14, v114, v276), v269, v117), v13);
  v271 = vshlq_s32(vmlaq_s32(vmlaq_s32(v14, v115, v272), v116, v273), v13);
  v122 = v247;
  v121 = v248;
  for (i = 24; i < 0x38; i += 8)
  {
    v124 = v120[-7];
    v125 = v120[-6];
    v127 = v120[-5];
    v126 = v120[-4];
    v120[-7] = vminq_s32(vmaxq_s32(vaddq_s32(v126, v124), v121), v122);
    v120[-6] = vminq_s32(vmaxq_s32(vaddq_s32(v127, v125), v121), v122);
    v120[-5] = vminq_s32(vmaxq_s32(vsubq_s32(v125, v127), v121), v122);
    v120[-4] = vminq_s32(vmaxq_s32(vsubq_s32(v124, v126), v121), v122);
    v128 = v120[-1];
    v129 = v120[-3];
    v130 = v120[-2];
    v131 = vaddq_s32(v129, *v120);
    v132 = vsubq_s32(*v120, v129);
    v120[-1] = vminq_s32(vmaxq_s32(vaddq_s32(v130, v128), v121), v122);
    *v120 = vminq_s32(vmaxq_s32(v131, v121), v122);
    v120[-3] = vminq_s32(vmaxq_s32(v132, v121), v122);
    v120[-2] = vminq_s32(vmaxq_s32(vsubq_s32(v128, v130), v121), v122);
    v120 += 8;
  }

  v133 = &dword_277C42240[64 * a3 - 608];
  v134 = v245;
  v135 = vld1q_dup_f32(v133);
  v254 = v253;
  v255 = v256;
  v136 = dword_277C42240[64 * a3 - 592];
  v137 = vdupq_n_s32(v136);
  v138 = dword_277C42240[64 * a3 - 624];
  v139 = vdupq_n_s32(v138);
  v140 = v246;
  v141 = vshlq_s32(vmlaq_s32(v245, v135, v249), v246);
  v249 = v141;
  v250 = v141;
  v142 = vshlq_s32(vmlsq_s32(vmlaq_s32(v245, v137, v263), v258, v139), v246);
  v143 = vshlq_s32(vmlsq_s32(vmlaq_s32(v245, v259, v137), v139, v262), v246);
  v262 = vshlq_s32(vmlaq_s32(vmlsq_s32(v245, v139, v259), v262, v137), v246);
  v263 = vshlq_s32(vmlaq_s32(vmlaq_s32(v245, v137, v258), v139, v263), v246);
  v258 = v142;
  v259 = v143;
  v144 = &v272;
  for (j = 8; j < 0x18; j += 8)
  {
    v146 = v144[-7];
    v147 = v144[-6];
    v149 = v144[-5];
    v148 = v144[-4];
    v144[-7] = vminq_s32(vmaxq_s32(vaddq_s32(v148, v146), v121), v122);
    v144[-6] = vminq_s32(vmaxq_s32(vaddq_s32(v149, v147), v121), v122);
    v144[-5] = vminq_s32(vmaxq_s32(vsubq_s32(v147, v149), v121), v122);
    v144[-4] = vminq_s32(vmaxq_s32(vsubq_s32(v146, v148), v121), v122);
    v150 = v144[-1];
    v151 = v144[-3];
    v152 = v144[-2];
    v153 = vaddq_s32(v151, *v144);
    v154 = vsubq_s32(*v144, v151);
    v144[-1] = vminq_s32(vmaxq_s32(vaddq_s32(v152, v150), v121), v122);
    *v144 = vminq_s32(vmaxq_s32(v153, v121), v122);
    v144[-3] = vminq_s32(vmaxq_s32(v154, v121), v122);
    v144[-2] = vminq_s32(vmaxq_s32(vsubq_s32(v150, v152), v121), v122);
    v144 += 8;
  }

  v155 = vmlsq_s32(vmlaq_s32(v134, v310, v112), v111, v283);
  v156 = vmlsq_s32(vmlaq_s32(v134, v309, v112), v111, v284);
  v157 = vmlaq_s32(vmlaq_s32(v134, v285, v118), v308, v119);
  v158 = vmlsq_s32(v134, v111, v286);
  v159 = vmlaq_s32(vmlsq_s32(v134, v111, v285), v308, v112);
  v160 = vmlaq_s32(v134, v309, v111);
  v161 = vmlaq_s32(v134, v310, v111);
  v162 = v307;
  v307 = vshlq_s32(vmlaq_s32(v158, v307, v112), v140);
  v308 = vshlq_s32(v159, v140);
  v309 = vshlq_s32(vmlaq_s32(v160, v284, v112), v140);
  v310 = vshlq_s32(vmlaq_s32(v161, v283, v112), v140);
  v283 = vshlq_s32(v155, v140);
  v284 = vshlq_s32(v156, v140);
  v285 = vshlq_s32(v157, v140);
  v286 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v286, v118), v162, v119), v140);
  v163 = vshlq_s32(vmlsq_s32(vmlaq_s32(v134, v302, v114), v117, v291), v140);
  v164 = v300;
  v165 = vshlq_s32(vmlsq_s32(vmlaq_s32(v134, v301, v114), v117, v292), v140);
  v166 = v299;
  v299 = vshlq_s32(vmlaq_s32(vmlsq_s32(v134, v117, v294), v299, v114), v140);
  v300 = vshlq_s32(vmlaq_s32(vmlsq_s32(v134, v117, v293), v300, v114), v140);
  v301 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v301, v117), v292, v114), v140);
  v302 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v302, v117), v291, v114), v140);
  v291 = v163;
  v292 = v165;
  v293 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v293, v115), v164, v116), v140);
  v294 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v294, v115), v166, v116), v140);
  v167 = vmlaq_s32(v134, v255, v135);
  v251 = v250;
  v252 = v141;
  v168 = vmulq_s32(v254, v135);
  v169 = vshlq_s32(vsubq_s32(v167, v168), v140);
  v170 = vshlq_s32(vaddq_s32(v167, v168), v140);
  v171 = v247;
  v172 = v248;
  v173 = vminq_s32(vmaxq_s32(vsubq_s32(v257, v260), v248), v247);
  v254 = v169;
  v255 = v170;
  v174 = vminq_s32(vmaxq_s32(vsubq_s32(v258, v259), v248), v247);
  v257 = vminq_s32(vmaxq_s32(vaddq_s32(v260, v257), v248), v247);
  v258 = vminq_s32(vmaxq_s32(vaddq_s32(v259, v258), v248), v247);
  v175 = vminq_s32(vmaxq_s32(vsubq_s32(v264, v261), v248), v247);
  v259 = v174;
  v260 = v173;
  v176 = vminq_s32(vmaxq_s32(vsubq_s32(v263, v262), v248), v247);
  v263 = vminq_s32(vmaxq_s32(vaddq_s32(v262, v263), v248), v247);
  v264 = vminq_s32(vmaxq_s32(vaddq_s32(v261, v264), v248), v247);
  v177 = vshlq_s32(vmlsq_s32(vmlaq_s32(v134, v278, v137), v139, v267), v140);
  v178 = vdupq_n_s32(-v136);
  v179 = vshlq_s32(vmlsq_s32(vmlaq_s32(v134, v277, v137), v139, v268), v140);
  v180 = vdupq_n_s32(-v138);
  v181 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v269, v178), v276, v180), v140);
  v261 = v175;
  v262 = v176;
  v182 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v270, v178), v275, v180), v140);
  v275 = vshlq_s32(vmlaq_s32(vmlsq_s32(v134, v139, v270), v275, v137), v140);
  v276 = vshlq_s32(vmlaq_s32(vmlsq_s32(v134, v139, v269), v276, v137), v140);
  v277 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v277, v139), v268, v137), v140);
  v278 = vshlq_s32(vmlaq_s32(vmlaq_s32(v134, v278, v139), v267, v137), v140);
  v267 = v177;
  v268 = v179;
  v183 = 32;
  v269 = v181;
  v270 = v182;
  do
  {
    v184 = 4;
    v185 = v183;
    do
    {
      v186 = *(&v249 + v185);
      v187 = *(&v249 + (v185 ^ 7));
      *(&v249 + v185) = vminq_s32(vmaxq_s32(vaddq_s32(v187, v186), v172), v171);
      *(&v249 + (v185 ^ 7)) = vminq_s32(vmaxq_s32(vsubq_s32(v186, v187), v172), v171);
      v188 = *(&v249 + (v185 ^ 0xF));
      v189 = *(&v249 + (v185 ^ 8));
      *(&v249 + (v185 ^ 0xF)) = vminq_s32(vmaxq_s32(vaddq_s32(v189, v188), v172), v171);
      *(&v249 + (v185++ ^ 8)) = vminq_s32(vmaxq_s32(vsubq_s32(v188, v189), v172), v171);
      --v184;
    }

    while (v184);
    v190 = v183 >= 0x30;
    v183 += 16;
  }

  while (!v190);
  v191 = 0;
  for (k = 112; k != 48; k -= 16)
  {
    v193 = *(&v249 + v191);
    v194 = *(&v249 + k);
    *(&v249 + v191) = vminq_s32(vmaxq_s32(vaddq_s32(v194, v193), v172), v171);
    *(&v249 + k) = vminq_s32(vmaxq_s32(vsubq_s32(v193, v194), v172), v171);
    v191 += 16;
  }

  v240 = v172;
  v241 = v171;
  sub_277AED48C(&v249, &dword_277C42240[64 * a3 - 640], &v248, &v247, &v246, &v245);
  v195 = 0;
  for (m = 240; m != 112; m -= 16)
  {
    v197 = *(&v249 + v195);
    v198 = *(&v249 + m);
    *(&v249 + v195) = vminq_s32(vmaxq_s32(vaddq_s32(v198, v197), v240), v241);
    *(&v249 + m) = vminq_s32(vmaxq_s32(vsubq_s32(v197, v198), v240), v241);
    v195 += 16;
  }

  v199 = vshlq_s32(vmlaq_s32(v134, vsubq_s32(v276, v269), v135), v140);
  v200 = vshlq_s32(vmlaq_s32(v134, vsubq_s32(v275, v270), v135), v140);
  v201 = vshlq_s32(vmlaq_s32(v134, vsubq_s32(v274, v271), v135), v140);
  v202 = vmlaq_s32(v134, v273, v135);
  v203 = vmulq_s32(v272, v135);
  v273 = vshlq_s32(vaddq_s32(v202, v203), v140);
  v274 = vshlq_s32(vmlaq_s32(v134, vaddq_s32(v271, v274), v135), v140);
  v275 = vshlq_s32(vmlaq_s32(v134, vaddq_s32(v270, v275), v135), v140);
  v276 = vshlq_s32(vmlaq_s32(v134, vaddq_s32(v269, v276), v135), v140);
  v269 = v199;
  v270 = v200;
  v271 = v201;
  v272 = vshlq_s32(vsubq_s32(v202, v203), v140);
  for (n = 32; n != 40; ++n)
  {
    v205 = *(&v249 + n);
    v206 = *(&v249 + (n ^ 0xF));
    *(&v249 + n) = vminq_s32(vmaxq_s32(vaddq_s32(v206, v205), v240), v241);
    *(&v249 + (n ^ 0xF)) = vminq_s32(vmaxq_s32(vsubq_s32(v205, v206), v240), v241);
  }

  for (ii = 48; ii != 56; ++ii)
  {
    v208 = *(&v249 + (ii ^ 0xF));
    v209 = *(&v249 + ii);
    *(&v249 + (ii ^ 0xF)) = vminq_s32(vmaxq_s32(vaddq_s32(v209, v208), v240), v241);
    *(&v249 + ii) = vminq_s32(vmaxq_s32(vsubq_s32(v208, v209), v240), v241);
  }

  v210 = 0;
  for (jj = 496; jj != 240; jj -= 16)
  {
    v212 = *(&v249 + v210);
    v213 = *(&v249 + jj);
    *(&v249 + v210) = vminq_s32(vmaxq_s32(vaddq_s32(v213, v212), v240), v241);
    *(&v249 + jj) = vminq_s32(vmaxq_s32(vsubq_s32(v212, v213), v240), v241);
    v210 += 16;
  }

  v214 = 0;
  v215 = vshlq_s32(vmlaq_s32(v134, vsubq_s32(v304, v289), v135), v140);
  v216 = vshlq_s32(vmlaq_s32(v134, vsubq_s32(v303, v290), v135), v140);
  v217 = vshlq_s32(vmlaq_s32(v134, vsubq_s32(v302, v291), v135), v140);
  v218 = vmlaq_s32(v134, v301, v135);
  v219 = vmulq_s32(v292, v135);
  v301 = vshlq_s32(vaddq_s32(v218, v219), v140);
  v302 = vshlq_s32(vmlaq_s32(v245, vaddq_s32(v291, v302), v135), v246);
  v303 = vshlq_s32(vmlaq_s32(v245, vaddq_s32(v290, v303), v135), v246);
  v304 = vshlq_s32(vmlaq_s32(v245, vaddq_s32(v289, v304), v135), v246);
  v289 = v215;
  v290 = v216;
  v291 = v217;
  v292 = vshlq_s32(vsubq_s32(v218, v219), v140);
  v220 = vshlq_s32(vmlaq_s32(v245, vsubq_s32(v300, v293), v135), v246);
  v221 = vshlq_s32(vmlaq_s32(v245, vsubq_s32(v299, v294), v135), v246);
  v222 = vmlaq_s32(v245, vsubq_s32(v298, v295), v135);
  v223 = vmlaq_s32(v245, v297, v135);
  v224 = vmulq_s32(v296, v135);
  v297 = vshlq_s32(vaddq_s32(v223, v224), v246);
  v298 = vshlq_s32(vmlaq_s32(v245, vaddq_s32(v295, v298), v135), v246);
  v299 = vshlq_s32(vmlaq_s32(v245, vaddq_s32(v294, v299), v135), v246);
  v300 = vshlq_s32(vmlaq_s32(v245, vaddq_s32(v293, v300), v135), v246);
  v293 = v220;
  v294 = v221;
  v295 = vshlq_s32(v222, v246);
  v296 = vshlq_s32(vsubq_s32(v223, v224), v246);
  v225 = 63;
  v226 = v248;
  do
  {
    v227 = *(&v249 + v214 * 16);
    v228 = *(&v249 + v225 * 16);
    a2[v214] = vminq_s32(vmaxq_s32(vaddq_s32(v228, v227), v226), v241);
    a2[v225--] = vminq_s32(vmaxq_s32(vsubq_s32(v227, v228), v226), v241);
    ++v214;
  }

  while (v225 != 31);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v229 = 10;
    }

    else
    {
      v229 = a5;
    }

    v230 = 32 << v229;
    v231 = vdupq_n_s32(-v230);
    v232 = vdupq_n_s32(v230 - 1);
    v233 = vdupq_n_s32(-a6);
    v234 = a2 + 2;
    v235 = -4;
    do
    {
      v236 = v234[-2];
      if (a6)
      {
        v236 = vrshlq_s32(v236, v233);
        v237 = vrshlq_s32(v234[-1], v233);
        v238 = vrshlq_s32(*v234, v233);
        v239 = vrshlq_s32(v234[1], v233);
      }

      else
      {
        v237 = v234[-1];
        v238 = *v234;
        v239 = v234[1];
      }

      v234[-2] = vminq_s32(vmaxq_s32(v236, v231), v232);
      v234[-1] = vminq_s32(vmaxq_s32(v237, v231), v232);
      *v234 = vminq_s32(vmaxq_s32(v238, v231), v232);
      v234[1] = vminq_s32(vmaxq_s32(v239, v231), v232);
      v234 += 4;
      v235 += 4;
    }

    while (v235 < 0x3C);
  }
}

int32x4_t sub_277AED48C(int32x4_t *a1, const float *a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, int32x4_t *a6)
{
  v6 = a2 + 32;
  v7 = vld1q_dup_f32(v6);
  v8 = a1[12];
  v9 = vmlaq_s32(*a6, v7, a1[13]);
  v10 = a1[11];
  v11 = vmulq_s32(v7, a1[10]);
  v12 = vshlq_s32(vsubq_s32(v9, v11), *a5);
  a1[13] = vshlq_s32(vaddq_s32(v9, v11), *a5);
  a1[10] = v12;
  v13 = vld1q_dup_f32(v6);
  v14 = vmlaq_s32(*a6, v13, v8);
  v15 = vmulq_s32(v13, v10);
  v16 = vshlq_s32(vsubq_s32(v14, v15), *a5);
  v17 = vshlq_s32(vaddq_s32(v14, v15), *a5);
  a1[11] = v16;
  a1[12] = v17;
  for (i = 16; i != 20; ++i)
  {
    v19 = a1[i];
    v20 = a1[i ^ 7];
    v21 = vaddq_s32(v20, v19);
    v22 = *a4;
    v23 = vmaxq_s32(vsubq_s32(v19, v20), *a3);
    a1[i] = vminq_s32(vmaxq_s32(v21, *a3), *a4);
    a1[i ^ 7] = vminq_s32(v23, v22);
    v24 = a1[i ^ 0xF];
    v25 = a1[i ^ 8];
    v26 = vaddq_s32(v25, v24);
    v27 = vminq_s32(vmaxq_s32(vsubq_s32(v24, v25), *a3), *a4);
    a1[i ^ 0xF] = vminq_s32(vmaxq_s32(v26, *a3), *a4);
    a1[i ^ 8] = v27;
  }

  v28 = a2 + 16;
  v29 = a2 + 48;
  v30 = vld1q_dup_f32(v29);
  v32 = a1[58];
  v31 = a1[59];
  v33 = vld1q_dup_f32(v28);
  v34 = a1[36];
  v35 = a1[37];
  v36 = vshlq_s32(vmlsq_s32(vmlaq_s32(*a6, v30, v31), v34, v33), *a5);
  v37 = vshlq_s32(vmlsq_s32(vmlaq_s32(*a6, v32, v30), v33, v35), *a5);
  v39 = a1[56];
  v38 = a1[57];
  v40 = a1[38];
  v41 = a1[39];
  v42 = vshlq_s32(vmlsq_s32(vmlaq_s32(*a6, v38, v30), v33, v40), *a5);
  v43 = vshlq_s32(vmlsq_s32(vmlaq_s32(*a6, v39, v30), v33, v41), *a5);
  a1[56] = vshlq_s32(vmlaq_s32(vmlaq_s32(*a6, v39, v33), v41, v30), *a5);
  v44 = vld1q_dup_f32(v29);
  v45 = vmlaq_s32(*a6, v44, v40);
  v46 = vld1q_dup_f32(v28);
  a1[57] = vshlq_s32(vmlaq_s32(v45, v46, v38), *a5);
  v47 = vld1q_dup_f32(v29);
  v48 = vmlaq_s32(*a6, v47, v35);
  v49 = vld1q_dup_f32(v28);
  a1[58] = vshlq_s32(vmlaq_s32(v48, v49, v32), *a5);
  v50 = vld1q_dup_f32(v29);
  v51 = vmlaq_s32(*a6, v50, v34);
  v52 = vld1q_dup_f32(v28);
  a1[59] = vshlq_s32(vmlaq_s32(v51, v52, v31), *a5);
  a1[36] = v36;
  a1[37] = v37;
  a1[38] = v42;
  a1[39] = v43;
  v53 = *(a2 + 48);
  v54 = vdupq_n_s32(-v53);
  v55 = a1[40];
  v56 = a1[41];
  v57 = vdupq_n_s32(-*(a2 + 16));
  v59 = a1[54];
  v58 = a1[55];
  v60 = vshlq_s32(vmlaq_s32(vmlaq_s32(*a6, v54, v55), v57, v58), *a5);
  v61 = vshlq_s32(vmlaq_s32(vmlaq_s32(*a6, v56, v54), v59, v57), *a5);
  v62 = a1[42];
  v63 = a1[43];
  v65 = a1[52];
  v64 = a1[53];
  v66 = vshlq_s32(vmlaq_s32(vmlaq_s32(*a6, v62, v54), v64, v57), *a5);
  v67 = vmlaq_s32(vmlaq_s32(*a6, v63, v54), v65, v57);
  v68 = vshlq_s32(v67, *a5);
  *v67.i32 = a2[16];
  a1[52] = vshlq_s32(vmlaq_s32(vmlaq_lane_s32(*a6, v63, *&vnegq_s32(v67), 0), v65, vdupq_n_s32(v53)), *a5);
  v69 = vld1q_dup_f32(v29);
  v70 = vmlaq_s32(*a6, v69, v64);
  v71 = vld1q_dup_f32(v28);
  a1[53] = vshlq_s32(vmlsq_s32(v70, v62, v71), *a5);
  v72 = vld1q_dup_f32(v29);
  v73 = vmlaq_s32(*a6, v72, v59);
  v74 = vld1q_dup_f32(v28);
  a1[54] = vshlq_s32(vmlsq_s32(v73, v56, v74), *a5);
  v75 = vld1q_dup_f32(v29);
  v76 = vmlaq_s32(*a6, v75, v58);
  v77 = vld1q_dup_f32(v28);
  result = vshlq_s32(vmlsq_s32(v76, v55, v77), *a5);
  a1[55] = result;
  a1[40] = v60;
  a1[41] = v61;
  a1[42] = v66;
  a1[43] = v68;
  return result;
}

void sub_277AED740(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v276 = *MEMORY[0x277D85DE8];
  v10 = &dword_277C42240[64 * a3];
  if (a4)
  {
    v11 = 6;
  }

  else
  {
    v11 = 8;
  }

  v12 = v11 + a5;
  if (v12 <= 15)
  {
    v13 = 0x8000;
  }

  else
  {
    v13 = 1 << (v12 - 1);
  }

  v14 = vdupq_n_s32(-v13);
  v15 = vdupq_n_s32(v13 - 1);
  v16 = vdupq_n_s32(-a3);
  v17 = vdupq_n_s32(1 << (a3 - 1));
  v18 = (v10 - 640);
  v20 = a1[1];
  v19 = a1[2];
  v22 = a1[4];
  v21 = a1[5];
  v23 = a1[3];
  v25 = a1[6];
  v24 = a1[7];
  v26 = (v10 - 639);
  v27 = vld1q_dup_f32(v26);
  v28 = vshlq_s32(vmlaq_s32(v17, v27, v20), v16);
  v29 = v18 + 63;
  v30 = vld1q_dup_f32(v29);
  *&v29 = v18[56];
  v31 = vshlq_s32(vmlaq_s32(v17, v30, v20), v16);
  v32 = v18 + 7;
  v33 = vld1q_dup_f32(v32);
  v34 = vshlq_s32(vmlaq_s32(v17, vdupq_n_s32(-*(v18 + 57)), v24), v16);
  v35 = vmlaq_s32(v17, v33, v24);
  v36 = v18 + 5;
  v37 = vld1q_dup_f32(v36);
  v38 = vshlq_s32(v35, v16);
  v39 = v18 + 59;
  v40 = vld1q_dup_f32(v39);
  v41 = vshlq_s32(vmlaq_s32(v17, v37, v21), v16);
  v42 = vshlq_s32(vmlaq_s32(v17, v40, v21), v16);
  v43 = vshlq_s32(vmlaq_s32(v17, vdupq_n_s32(-*(v18 + 61)), v23), v16);
  v44 = v18 + 3;
  v45 = vld1q_dup_f32(v44);
  v46 = vshlq_s32(vmlaq_s32(v17, v45, v23), v16);
  v47 = v18 + 2;
  v48 = vld1q_dup_f32(v47);
  v49 = v18 + 62;
  v50 = vld1q_dup_f32(v49);
  v51 = vmlaq_s32(v17, v48, v19);
  v52 = vmlaq_s32(v17, v50, v19);
  v53 = vmlaq_s32(v17, vdupq_n_s32(-*(v18 + 58)), v25);
  v54 = v18 + 6;
  v55 = vld1q_dup_f32(v54);
  v56 = vmlaq_s32(v17, v55, v25);
  v57 = v18 + 4;
  v58 = vld1q_dup_f32(v57);
  v204 = vmlaq_s32(v17, v58, v22);
  v59 = v18 + 60;
  v60 = vld1q_dup_f32(v59);
  v202 = vmlaq_s32(v17, v60, v22);
  *&v59 = v18[28];
  v61 = vdupq_n_s32(v59);
  v62 = vshlq_s32(vmlaq_s32(vmlsq_s32(v17, v31, v58), v60, v28), v16);
  v63 = *(v18 + 36);
  v64 = vdupq_n_s32(-v59);
  v65 = vdupq_n_s32(-v63);
  v66 = vmlaq_s32(vmlaq_s32(v17, v58, v28), v60, v31);
  v67 = v18 + 44;
  v68 = vld1q_dup_f32(v67);
  v69 = vshlq_s32(v66, v16);
  v70 = v18 + 20;
  v71 = vld1q_dup_f32(v70);
  *&v70 = v18[12];
  v72 = vmlsq_s32(vmlaq_s32(v17, v61, v38), v34, vdupq_n_s32(v63));
  v73 = vdupq_n_s32(-v70);
  v74 = *(v18 + 52);
  v75 = vmlaq_s32(vmlaq_s32(v17, v64, v34), v65, v38);
  v76 = vdupq_n_s32(-v74);
  v77 = vdupq_n_s32(v70);
  v200 = v41;
  v78 = vmlaq_s32(v17, v68, v41);
  v79 = vdupq_n_s32(v74);
  v206 = v42;
  v80 = vmlaq_s32(v17, v68, v42);
  v81 = vdupq_n_s32(v29);
  *&v70 = v18[24];
  v82 = vdupq_n_s32(-v70);
  v83 = vmlsq_s32(v78, v42, v71);
  v84 = vmlaq_s32(v80, v71, v41);
  v85 = vmlaq_s32(v17, v73, v43);
  v86 = *(v18 + 40);
  v87 = vdupq_n_s32(-v86);
  v88 = vmlaq_s32(v85, v76, v46);
  v89 = *(v18 + 8);
  v90 = vdupq_n_s32(v89);
  v91 = vmlsq_s32(vmlaq_s32(v17, v77, v46), v43, v79);
  v92 = vmlaq_s32(v17, v81, v69);
  v210 = v15;
  v211 = v14;
  v93 = vmlaq_s32(vmlaq_s32(v17, v81, v62), v90, v69);
  v94 = vmlaq_s32(v17, v81, v28);
  v275 = v28;
  v274 = v69;
  v95 = vmlaq_s32(vmlaq_s32(v17, v81, v31), v90, v28);
  v96 = vdupq_n_s32(-v29);
  v97 = vshlq_s32(v72, v16);
  v244 = v31;
  v245 = v62;
  v98 = vdupq_n_s32(-v89);
  v268 = v38;
  v99 = vshlq_s32(vmlsq_s32(v94, v31, v90), v16);
  v246 = vshlq_s32(vmlsq_s32(v92, v62, v90), v16);
  v100 = vmlaq_s32(vmlaq_s32(v17, v96, v34), v98, v38);
  v101 = vmlaq_s32(v17, v81, v38);
  v102 = vshlq_s32(v95, v16);
  v273 = vshlq_s32(v93, v16);
  v103 = vdupq_n_s32(v70);
  v272 = v102;
  v104 = vdupq_n_s32(v86);
  v105 = vshlq_s32(v51, v16);
  v106 = vshlq_s32(v52, v16);
  v250 = vshlq_s32(v75, v16);
  v251 = v34;
  v107 = vshlq_s32(v53, v16);
  v108 = vshlq_s32(v56, v16);
  v269 = v97;
  v266 = vshlq_s32(v84, v16);
  v109 = vshlq_s32(v83, v16);
  v110 = vshlq_s32(v88, v16);
  v253 = v109;
  v247 = v99;
  v111 = vmlaq_s32(v17, v96, v250);
  v112 = vmlsq_s32(vmlaq_s32(v17, v81, v105), v106, v90);
  v260 = v46;
  v261 = vshlq_s32(v91, v16);
  v113 = vmlaq_s32(v111, v98, v97);
  v114 = vmlaq_s32(vmlaq_s32(v17, v81, v106), v90, v105);
  v115 = vmlaq_s32(vmlaq_s32(v17, v82, v107), v87, v108);
  v116 = vmlsq_s32(v101, v34, v90);
  v117 = vmlsq_s32(vmlaq_s32(v17, v81, v97), v250, v90);
  v118 = vmlsq_s32(vmlaq_s32(v17, v103, v266), v109, v104);
  v119 = vmlaq_s32(vmlaq_s32(v17, v82, v43), v87, v46);
  v120 = vmlaq_s32(vmlaq_s32(v17, v82, v110), v87, v261);
  v252 = v206;
  v121 = vmlsq_s32(vmlaq_s32(v17, v103, v200), v206, v104);
  v267 = v200;
  v122 = vmlaq_s32(vmlaq_s32(v17, v103, v206), v104, v200);
  v123 = vmlsq_s32(vmlaq_s32(v17, v103, v46), v43, v104);
  v258 = v110;
  v259 = v43;
  v124 = v18 + 32;
  v125 = vld1q_dup_f32(v124);
  v207 = v125;
  v126 = vmlaq_s32(v17, v125, *a1);
  v271 = vshlq_s32(v116, v16);
  v270 = vshlq_s32(v117, v16);
  v248 = vshlq_s32(v100, v16);
  v249 = vshlq_s32(v113, v16);
  v209 = v16;
  *&v124 = v18[48];
  v264 = vshlq_s32(v122, v16);
  v265 = vshlq_s32(vmlaq_s32(vmlaq_s32(v17, v103, v109), v104, v266), v16);
  v127 = vdupq_n_s32(v124);
  *&v70 = v18[16];
  v128 = vdupq_n_s32(v70);
  v129 = vshlq_s32(v204, v16);
  v130 = vshlq_s32(v202, v16);
  v131 = vshlq_s32(v115, v16);
  v132 = vshlq_s32(vmlsq_s32(vmlaq_s32(v17, v103, v108), v107, v104), v16);
  v254 = vshlq_s32(v118, v16);
  v255 = vshlq_s32(v121, v16);
  v262 = vshlq_s32(vmlsq_s32(vmlaq_s32(v17, v103, v261), v110, v104), v16);
  v263 = vshlq_s32(v123, v16);
  v256 = vshlq_s32(v119, v16);
  v257 = vshlq_s32(v120, v16);
  v212 = vshlq_s32(v126, v16);
  v213 = v212;
  v214 = v212;
  v215 = v212;
  v222 = vshlq_s32(vmlsq_s32(vmlaq_s32(v17, v127, v129), v130, v128), v16);
  v223 = v130;
  v220 = v130;
  v221 = v222;
  v208 = v17;
  v242 = vshlq_s32(v114, v16);
  v243 = v105;
  v228 = v106;
  v229 = vshlq_s32(v112, v16);
  v226 = vshlq_s32(vmlaq_s32(vmlaq_s32(v17, v127, v130), v128, v129), v16);
  v227 = v129;
  v224 = v129;
  v225 = v226;
  v133 = vmlsq_s32(vmlaq_s32(v17, v127, v242), v229, v128);
  v134 = vmlaq_s32(vmlaq_s32(v17, v127, v229), v128, v242);
  v135 = vmlaq_s32(vnegq_s32(vmulq_s32(v106, v128)), v127, v105);
  v136 = vmlaq_s32(vmulq_s32(v127, v106), v128, v105);
  v137 = vdupq_n_s32(-v124);
  v138 = vdupq_n_s32(-v70);
  v139 = vmlaq_s32(vmulq_s32(v137, v107), v138, v108);
  v140 = vmlaq_s32(vmulq_s32(v137, v131), v138, v132);
  v236 = v108;
  v237 = v132;
  v141 = vmlsq_s32(vmulq_s32(v127, v108), v107, v128);
  v234 = v131;
  v235 = v107;
  v142 = vmlsq_s32(vmulq_s32(v127, v132), v131, v128);
  v144 = v208;
  v143 = v209;
  v240 = vshlq_s32(vaddq_s32(v136, v208), v209);
  v241 = vshlq_s32(v134, v209);
  v230 = vshlq_s32(v133, v209);
  v231 = vshlq_s32(vaddq_s32(v135, v208), v209);
  v238 = vshlq_s32(vaddq_s32(v142, v208), v209);
  v239 = vshlq_s32(vaddq_s32(v141, v208), v209);
  v232 = vshlq_s32(vaddq_s32(v139, v208), v209);
  v233 = vshlq_s32(vaddq_s32(v140, v208), v209);
  v146 = v210;
  v145 = v211;
  v147 = 32;
  do
  {
    v148 = 4;
    v149 = v147;
    do
    {
      v150 = *(&v212 + v149);
      v151 = *(&v212 + (v149 ^ 7));
      *(&v212 + v149) = vminq_s32(vmaxq_s32(vaddq_s32(v151, v150), v145), v146);
      *(&v212 + (v149 ^ 7)) = vminq_s32(vmaxq_s32(vsubq_s32(v150, v151), v145), v146);
      v152 = *(&v212 + (v149 ^ 0xF));
      v153 = *(&v212 + (v149 ^ 8));
      *(&v212 + (v149 ^ 0xF)) = vminq_s32(vmaxq_s32(vaddq_s32(v153, v152), v145), v146);
      *(&v212 + (v149++ ^ 8)) = vminq_s32(vmaxq_s32(vsubq_s32(v152, v153), v145), v146);
      --v148;
    }

    while (v148);
    v154 = v147 >= 0x30;
    v147 += 16;
  }

  while (!v154);
  v199 = v144;
  v201 = v143;
  v218 = v213;
  v219 = v212;
  v216 = v215;
  v217 = v214;
  v203 = v146;
  v205 = v145;
  sub_277AED48C(&v212, v18, &v211, &v210, &v209, &v208);
  v155 = 0;
  for (i = 240; i != 112; i -= 16)
  {
    v157 = *(&v212 + v155);
    v158 = *(&v212 + i);
    *(&v212 + v155) = vminq_s32(vmaxq_s32(vaddq_s32(v158, v157), v205), v203);
    *(&v212 + i) = vminq_s32(vmaxq_s32(vsubq_s32(v157, v158), v205), v203);
    v155 += 16;
  }

  v159 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v239, v232), v207), v201);
  v160 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v238, v233), v207), v201);
  v161 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v237, v234), v207), v201);
  v162 = vmlaq_s32(v199, v236, v207);
  v163 = vmulq_s32(v235, v207);
  v236 = vshlq_s32(vaddq_s32(v162, v163), v201);
  v237 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v234, v237), v207), v201);
  v238 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v233, v238), v207), v201);
  v239 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v232, v239), v207), v201);
  v232 = v159;
  v233 = v160;
  v234 = v161;
  v235 = vshlq_s32(vsubq_s32(v162, v163), v201);
  for (j = 32; j != 40; ++j)
  {
    v165 = *(&v212 + j);
    v166 = *(&v212 + (j ^ 0xF));
    *(&v212 + j) = vminq_s32(vmaxq_s32(vaddq_s32(v166, v165), v205), v203);
    *(&v212 + (j ^ 0xF)) = vminq_s32(vmaxq_s32(vsubq_s32(v165, v166), v205), v203);
  }

  for (k = 48; k != 56; ++k)
  {
    v168 = *(&v212 + (k ^ 0xF));
    v169 = *(&v212 + k);
    *(&v212 + (k ^ 0xF)) = vminq_s32(vmaxq_s32(vaddq_s32(v169, v168), v205), v203);
    *(&v212 + k) = vminq_s32(vmaxq_s32(vsubq_s32(v168, v169), v205), v203);
  }

  v170 = 0;
  for (m = 496; m != 240; m -= 16)
  {
    v172 = *(&v212 + v170);
    v173 = *(&v212 + m);
    *(&v212 + v170) = vminq_s32(vmaxq_s32(vaddq_s32(v173, v172), v205), v203);
    *(&v212 + m) = vminq_s32(vmaxq_s32(vsubq_s32(v172, v173), v205), v203);
    v170 += 16;
  }

  v174 = 0;
  v175 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v267, v252), v207), v201);
  v176 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v266, v253), v207), v201);
  v177 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v265, v254), v207), v201);
  v178 = vmlaq_s32(v199, v264, v207);
  v179 = vmulq_s32(v255, v207);
  v264 = vshlq_s32(vaddq_s32(v178, v179), v201);
  v265 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v254, v265), v207), v201);
  v266 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v253, v266), v207), v201);
  v267 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v252, v267), v207), v201);
  v252 = v175;
  v253 = v176;
  v254 = v177;
  v255 = vshlq_s32(vsubq_s32(v178, v179), v201);
  v180 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v263, v256), v207), v201);
  v181 = vmlaq_s32(v199, vsubq_s32(v262, v257), v207);
  v182 = v261;
  v183 = vmlaq_s32(v199, v260, v207);
  v184 = vmulq_s32(v259, v207);
  v260 = vshlq_s32(vaddq_s32(v183, v184), v201);
  v261 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v258, v261), v207), v201);
  v262 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v257, v262), v207), v201);
  v263 = vshlq_s32(vmlaq_s32(v199, vaddq_s32(v256, v263), v207), v201);
  v256 = v180;
  v257 = vshlq_s32(v181, v201);
  v185 = 63;
  v258 = vshlq_s32(vmlaq_s32(v199, vsubq_s32(v182, v258), v207), v201);
  v259 = vshlq_s32(vsubq_s32(v183, v184), v201);
  do
  {
    v186 = *(&v212 + v174 * 16);
    v187 = *(&v212 + v185 * 16);
    a2[v174] = vminq_s32(vmaxq_s32(vaddq_s32(v187, v186), v205), v203);
    a2[v185--] = vminq_s32(vmaxq_s32(vsubq_s32(v186, v187), v205), v203);
    ++v174;
  }

  while (v185 != 31);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v188 = 10;
    }

    else
    {
      v188 = a5;
    }

    v189 = 32 << v188;
    v190 = vdupq_n_s32(-v189);
    v191 = vdupq_n_s32(v189 - 1);
    v192 = vdupq_n_s32(-a6);
    v193 = a2 + 2;
    v194 = -4;
    do
    {
      v195 = v193[-2];
      if (a6)
      {
        v195 = vrshlq_s32(v195, v192);
        v196 = vrshlq_s32(v193[-1], v192);
        v197 = vrshlq_s32(*v193, v192);
        v198 = vrshlq_s32(v193[1], v192);
      }

      else
      {
        v196 = v193[-1];
        v197 = *v193;
        v198 = v193[1];
      }

      v193[-2] = vminq_s32(vmaxq_s32(v195, v190), v191);
      v193[-1] = vminq_s32(vmaxq_s32(v196, v190), v191);
      *v193 = vminq_s32(vmaxq_s32(v197, v190), v191);
      v193[1] = vminq_s32(vmaxq_s32(v198, v190), v191);
      v193 += 4;
      v194 += 4;
    }

    while (v194 < 0x3C);
  }
}

int32x4_t sub_277AEE1D0(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = &dword_277C42240[64 * a3 - 608];
  v10 = vld1q_dup_f32(v9);
  v11 = vshlq_s32(vmlaq_s32(vdupq_n_s32(1 << (a3 - 1)), v10, *a1), vdupq_n_s32(-a3));
  if (a4)
  {
    v12 = vdupq_n_s32(-v8);
    v13 = vdupq_n_s32(v8 - 1);
  }

  else
  {
    if (a5 <= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = a5;
    }

    v15 = 32 << v14;
    v12 = vdupq_n_s32(-v15);
    v13 = vdupq_n_s32(v15 - 1);
    if (a6)
    {
      v11 = vshlq_s32(vaddq_s32(v11, vdupq_n_s32(1 << a6 >> 1)), vdupq_n_s32(-a6));
    }
  }

  result = vminq_s32(vmaxq_s32(v11, v12), v13);
  *a2 = result;
  a2[1] = result;
  a2[2] = result;
  a2[3] = result;
  a2[4] = result;
  a2[5] = result;
  a2[6] = result;
  a2[7] = result;
  a2[8] = result;
  a2[9] = result;
  a2[10] = result;
  a2[11] = result;
  a2[12] = result;
  a2[13] = result;
  a2[14] = result;
  a2[15] = result;
  a2[16] = result;
  a2[17] = result;
  a2[18] = result;
  a2[19] = result;
  a2[20] = result;
  a2[21] = result;
  a2[22] = result;
  a2[23] = result;
  a2[24] = result;
  a2[25] = result;
  a2[26] = result;
  a2[27] = result;
  a2[28] = result;
  a2[29] = result;
  a2[30] = result;
  a2[31] = result;
  a2[32] = result;
  a2[33] = result;
  a2[34] = result;
  a2[35] = result;
  a2[36] = result;
  a2[37] = result;
  a2[38] = result;
  a2[39] = result;
  a2[40] = result;
  a2[41] = result;
  a2[42] = result;
  a2[43] = result;
  a2[44] = result;
  a2[45] = result;
  a2[46] = result;
  a2[47] = result;
  a2[48] = result;
  a2[49] = result;
  a2[50] = result;
  a2[51] = result;
  a2[52] = result;
  a2[53] = result;
  a2[54] = result;
  a2[55] = result;
  a2[56] = result;
  a2[57] = result;
  a2[58] = result;
  a2[59] = result;
  a2[60] = result;
  a2[61] = result;
  a2[62] = result;
  a2[63] = result;
  return result;
}

int32x4_t sub_277AEE320(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v8 = 0;
  v9 = 1;
  do
  {
    a2[v8] = vshlq_n_s32(*(a1 + 16 * v8), 2uLL);
    *(a2 + ((16 * v8) | 0x10)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x10)), 2uLL);
    *(a2 + ((16 * v8) | 0x20)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x20)), 2uLL);
    *(a2 + ((16 * v8) | 0x30)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x30)), 2uLL);
    *(a2 + ((16 * v8) | 0x40)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x40)), 2uLL);
    *(a2 + ((16 * v8) | 0x50)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x50)), 2uLL);
    *(a2 + ((16 * v8) | 0x60)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x60)), 2uLL);
    *(a2 + ((16 * v8) | 0x70)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x70)), 2uLL);
    *(a2 + ((16 * v8) | 0x80)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x80)), 2uLL);
    *(a2 + ((16 * v8) | 0x90)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0x90)), 2uLL);
    *(a2 + ((16 * v8) | 0xA0)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0xA0)), 2uLL);
    *(a2 + ((16 * v8) | 0xB0)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0xB0)), 2uLL);
    *(a2 + ((16 * v8) | 0xC0)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0xC0)), 2uLL);
    *(a2 + ((16 * v8) | 0xD0)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0xD0)), 2uLL);
    *(a2 + ((16 * v8) | 0xE0)) = vshlq_n_s32(*(a1 + ((16 * v8) | 0xE0)), 2uLL);
    v10 = v9;
    result = vshlq_n_s32(*(a1 + ((16 * v8) | 0xF0)), 2uLL);
    *(a2 + ((16 * v8) | 0xF0)) = result;
    v8 = 16;
    v9 = 0;
  }

  while ((v10 & 1) != 0);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v12 = 10;
    }

    else
    {
      v12 = a5;
    }

    v13 = 32 << v12;
    v18 = vdupq_n_s32(v13 - 1);
    v19 = vdupq_n_s32(-v13);
    sub_277AEAB84(a2, a6);
    sub_277AEAB84(a2 + 16, a6);
    v14 = a2 + 2;
    v15 = -4;
    do
    {
      v16 = vminq_s32(vmaxq_s32(v14[-1], v19), v18);
      v14[-2] = vminq_s32(vmaxq_s32(v14[-2], v19), v18);
      v14[-1] = v16;
      result = vminq_s32(vmaxq_s32(*v14, v19), v18);
      v17 = vminq_s32(vmaxq_s32(v14[1], v19), v18);
      *v14 = result;
      v14[1] = v17;
      v14 += 4;
      v15 += 4;
    }

    while (v15 < 0x1C);
  }

  return result;
}

void sub_277AEE504(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  v8 = 1 << (v7 - 1);
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(1 << (a3 - 1));
  v11 = &dword_277C42240[64 * a3 - 578];
  v12 = vld1q_dup_f32(v11);
  v13 = a1[1];
  v14 = &dword_277C42240[64 * a3 - 638];
  v15 = vld1q_dup_f32(v14);
  v16 = &dword_277C42240[64 * a3 - 610];
  v17 = vld1q_dup_f32(v16);
  v18 = a1[17];
  v19 = vmlaq_s32(v10, v17, v18);
  v20 = &dword_277C42240[64 * a3 - 594];
  v21 = vld1q_dup_f32(v20);
  v22 = a1[9];
  v23 = &dword_277C42240[64 * a3 - 626];
  v24 = vld1q_dup_f32(v23);
  v25 = a1[25];
  v26 = &dword_277C42240[64 * a3 - 586];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[5];
  v29 = vmlaq_s32(v10, v27, v28);
  v30 = &dword_277C42240[64 * a3 - 618];
  v31 = vld1q_dup_f32(v30);
  v32 = a1[21];
  v33 = vmlaq_s32(v10, v31, v32);
  v34 = &dword_277C42240[64 * a3 - 602];
  v35 = vld1q_dup_f32(v34);
  v36 = a1[13];
  v37 = vmlaq_s32(v10, v35, v36);
  v38 = &dword_277C42240[64 * a3 - 634];
  v39 = vld1q_dup_f32(v38);
  v40 = a1[29];
  v41 = vmlaq_s32(v10, v39, v40);
  v42 = a1[2];
  v43 = a1[3];
  v44 = vmlaq_s32(v10, v39, v43);
  v45 = &dword_277C42240[64 * a3 - 582];
  v46 = vld1q_dup_f32(v45);
  v47 = vmlsq_s32(v41, v43, v46);
  v48 = vmlaq_s32(v44, v46, v40);
  v50 = a1[18];
  v49 = a1[19];
  v51 = vmlaq_s32(v10, v35, v49);
  v52 = &dword_277C42240[64 * a3 - 614];
  v53 = vld1q_dup_f32(v52);
  v54 = vmlsq_s32(v37, v49, v53);
  v55 = vmlaq_s32(v51, v53, v36);
  v56 = a1[10];
  v57 = a1[11];
  v58 = vmlaq_s32(v10, v31, v57);
  v59 = &dword_277C42240[64 * a3 - 598];
  v60 = vld1q_dup_f32(v59);
  v429 = vmlsq_s32(v33, v57, v60);
  v61 = vmlaq_s32(v58, v60, v32);
  v63 = a1[26];
  v62 = a1[27];
  v64 = vmlaq_s32(v10, v27, v62);
  v65 = &dword_277C42240[64 * a3 - 630];
  v66 = vld1q_dup_f32(v65);
  v67 = vmlsq_s32(v29, v62, v66);
  v68 = vmlaq_s32(v64, v66, v28);
  v69 = a1[6];
  v70 = a1[7];
  v71 = &dword_277C42240[64 * a3 - 590];
  v72 = vld1q_dup_f32(v71);
  v408 = vmlsq_s32(vmlaq_s32(v10, v24, v25), v70, v72);
  v73 = vmlaq_s32(vmlaq_s32(v10, v24, v70), v72, v25);
  v75 = a1[22];
  v74 = a1[23];
  v76 = &dword_277C42240[64 * a3 - 622];
  v77 = vld1q_dup_f32(v76);
  v78 = vmlsq_s32(vmlaq_s32(v10, v21, v22), v74, v77);
  v79 = vmlaq_s32(vmlaq_s32(v10, v21, v74), v77, v22);
  v80 = a1[14];
  v81 = a1[15];
  v82 = vmlaq_s32(v10, v17, v81);
  v83 = &dword_277C42240[64 * a3 - 606];
  v84 = vld1q_dup_f32(v83);
  v411 = vmlsq_s32(v19, v81, v84);
  v414 = v73;
  v402 = vmlaq_s32(v82, v84, v18);
  v86 = a1[30];
  v85 = a1[31];
  v87 = vmlsq_s32(vmlaq_s32(v10, v12, v13), v85, v15);
  v88 = &dword_277C42240[64 * a3 - 580];
  v89 = vld1q_dup_f32(v88);
  v391 = vmlaq_s32(vmlaq_s32(v10, v12, v85), v15, v13);
  v90 = &dword_277C42240[64 * a3 - 628];
  v91 = vld1q_dup_f32(v90);
  v92 = vmlaq_s32(v10, v91, v63);
  v93 = vmlaq_s32(v10, v91, v69);
  v94 = &dword_277C42240[64 * a3 - 588];
  v95 = vld1q_dup_f32(v94);
  v405 = vmlsq_s32(v92, v69, v95);
  v96 = &dword_277C42240[64 * a3 - 596];
  v97 = vld1q_dup_f32(v96);
  v396 = v87;
  v399 = vmlaq_s32(v93, v95, v63);
  v98 = vmlaq_s32(v10, v97, v75);
  v99 = &dword_277C42240[64 * a3 - 620];
  v100 = vld1q_dup_f32(v99);
  v393 = vmlsq_s32(vmlaq_s32(v10, v97, v56), v75, v100);
  v101 = &dword_277C42240[64 * a3 - 612];
  v102 = vld1q_dup_f32(v101);
  v389 = vmlaq_s32(v98, v100, v56);
  v103 = &dword_277C42240[64 * a3 - 604];
  v104 = vld1q_dup_f32(v103);
  v424 = vmlsq_s32(vmlaq_s32(v10, v102, v50), v80, v104);
  v105 = vmlaq_s32(vmlaq_s32(v10, v102, v80), v104, v50);
  v106 = &dword_277C42240[64 * a3 - 636];
  v107 = vld1q_dup_f32(v106);
  v417 = vmlsq_s32(vmlaq_s32(v10, v89, v42), v86, v107);
  v420 = v105;
  v108 = dword_277C42240[64 * a3 - 616];
  v109 = vdupq_n_s32(v108);
  v387 = vmlaq_s32(vmlaq_s32(v10, v89, v86), v107, v42);
  v110 = a1[20];
  LODWORD(v106) = dword_277C42240[64 * a3 - 600];
  v111 = vdupq_n_s32(v106);
  v112 = a1[12];
  v435 = vmlsq_s32(vmlaq_s32(v10, v109, v110), v112, v111);
  v113 = vdupq_n_s32(-a3);
  v385 = vshlq_s32(v54, v113);
  v114 = vshlq_s32(v47, v113);
  v432 = vmlaq_s32(vmlaq_s32(v10, v109, v112), v111, v110);
  v115 = vdupq_n_s32(v8 - 1);
  v116 = vminq_s32(vmaxq_s32(vsubq_s32(v114, v385), v9), v115);
  v117 = vshlq_s32(v48, v113);
  v118 = vshlq_s32(v55, v113);
  v119 = vminq_s32(vmaxq_s32(vsubq_s32(v117, v118), v9), v115);
  v120 = vmlaq_s32(vmlaq_s32(v10, vdupq_n_s32(-v108), v116), vdupq_n_s32(-v106), v119);
  v121 = vshlq_s32(v67, v113);
  v122 = vshlq_s32(v429, v113);
  v123 = vshlq_s32(v61, v113);
  v124 = vshlq_s32(v68, v113);
  v125 = vminq_s32(vmaxq_s32(vsubq_s32(v121, v122), v9), v115);
  v126 = vminq_s32(vmaxq_s32(vsubq_s32(v124, v123), v9), v115);
  v127 = vmlaq_s32(v10, v109, v125);
  v128 = vmlsq_s32(vmlaq_s32(v10, v109, v126), v125, v111);
  v129 = vmlsq_s32(vmlaq_s32(v10, v109, v119), v116, v111);
  v130 = vmlaq_s32(v127, v111, v126);
  v131 = dword_277C42240[64 * a3 - 584];
  v132 = a1[4];
  v133 = vdupq_n_s32(v131);
  LODWORD(v106) = dword_277C42240[64 * a3 - 632];
  v134 = a1[28];
  v135 = vdupq_n_s32(v106);
  v427 = vmlsq_s32(vmlaq_s32(v10, v133, v132), v134, v135);
  v430 = vmlaq_s32(vmlaq_s32(v10, v133, v134), v135, v132);
  v136 = vshlq_s32(v78, v113);
  v137 = vshlq_s32(v408, v113);
  v138 = vminq_s32(vmaxq_s32(vsubq_s32(v137, v136), v9), v115);
  v139 = vshlq_s32(v414, v113);
  v140 = vshlq_s32(v79, v113);
  v141 = vminq_s32(vmaxq_s32(vsubq_s32(v139, v140), v9), v115);
  v142 = vmlaq_s32(vmlaq_s32(v10, vdupq_n_s32(-v131), v138), vdupq_n_s32(-v106), v141);
  v143 = vshlq_s32(v396, v113);
  v144 = vshlq_s32(v411, v113);
  v145 = vshlq_s32(v402, v113);
  v146 = vshlq_s32(v391, v113);
  v147 = vminq_s32(vmaxq_s32(vsubq_s32(v143, v144), v9), v115);
  v148 = vminq_s32(vmaxq_s32(vsubq_s32(v146, v145), v9), v115);
  v149 = vmlsq_s32(vmlaq_s32(v10, v133, v148), v147, v135);
  v409 = vmlsq_s32(vmlaq_s32(v10, v133, v141), v138, v135);
  v150 = vmlaq_s32(vmlaq_s32(v10, v133, v147), v135, v148);
  v392 = vaddq_s32(v144, v143);
  v151 = vaddq_s32(v137, v136);
  v152 = vaddq_s32(v122, v121);
  v153 = vaddq_s32(v114, v385);
  v154 = vaddq_s32(v118, v117);
  v155 = vaddq_s32(v124, v123);
  v397 = vaddq_s32(v140, v139);
  v156 = vaddq_s32(v146, v145);
  v157 = dword_277C42240[64 * a3 - 592];
  v158 = a1[8];
  v159 = vdupq_n_s32(v157);
  LODWORD(v106) = dword_277C42240[64 * a3 - 624];
  v160 = a1[24];
  v161 = vdupq_n_s32(v106);
  v415 = vmlsq_s32(vmlaq_s32(v10, v159, v158), v160, v161);
  v412 = vmlaq_s32(vmlaq_s32(v10, v159, v160), v161, v158);
  v162 = vshlq_s32(v393, v113);
  v394 = vshlq_s32(v405, v113);
  v384 = v162;
  v386 = vshlq_s32(v399, v113);
  v400 = vshlq_s32(v389, v113);
  v163 = vminq_s32(vmaxq_s32(vsubq_s32(v394, v162), v9), v115);
  v164 = vminq_s32(vmaxq_s32(vsubq_s32(v386, v400), v9), v115);
  v165 = vdupq_n_s32(-v157);
  v166 = vdupq_n_s32(-v106);
  v403 = vmlaq_s32(vmlaq_s32(v10, v165, v163), v166, v164);
  v406 = vmlsq_s32(vmlaq_s32(v10, v159, v164), v163, v161);
  v167 = vshlq_s32(v417, v113);
  v381 = vshlq_s32(v424, v113);
  v168 = vshlq_s32(v420, v113);
  v382 = vshlq_s32(v387, v113);
  v169 = vminq_s32(vmaxq_s32(vsubq_s32(v167, v381), v9), v115);
  v170 = vminq_s32(vmaxq_s32(vsubq_s32(v382, v168), v9), v115);
  v421 = vmlsq_s32(vmlaq_s32(v10, v159, v170), v169, v161);
  v425 = vmlaq_s32(vmlaq_s32(v10, v159, v169), v161, v170);
  v379 = vminq_s32(vmaxq_s32(v152, v9), v115);
  v380 = vminq_s32(vmaxq_s32(v153, v9), v115);
  v377 = vshlq_s32(v128, v113);
  v378 = vshlq_s32(v120, v113);
  v171 = vminq_s32(vmaxq_s32(vsubq_s32(v380, v379), v9), v115);
  v172 = vminq_s32(vmaxq_s32(vsubq_s32(v378, v377), v9), v115);
  v173 = vminq_s32(vmaxq_s32(v154, v9), v115);
  v174 = vminq_s32(vmaxq_s32(v155, v9), v115);
  v175 = vshlq_s32(v129, v113);
  v176 = vshlq_s32(v130, v113);
  v177 = vminq_s32(vmaxq_s32(vsubq_s32(v173, v174), v9), v115);
  v178 = vminq_s32(vmaxq_s32(vsubq_s32(v175, v176), v9), v115);
  v388 = vmlaq_s32(vmlaq_s32(v10, v171, v165), v177, v166);
  v383 = vmlaq_s32(vmlaq_s32(v10, v172, v165), v178, v166);
  v390 = vmlaq_s32(vmlsq_s32(v10, v161, v172), v178, v159);
  v418 = vmlaq_s32(vmlsq_s32(v10, v161, v171), v177, v159);
  v179 = vminq_s32(vmaxq_s32(v392, v9), v115);
  v180 = vminq_s32(vmaxq_s32(v151, v9), v115);
  v181 = vminq_s32(vmaxq_s32(vsubq_s32(v179, v180), v9), v115);
  v182 = vshlq_s32(v149, v113);
  v183 = vshlq_s32(v142, v113);
  v184 = vminq_s32(vmaxq_s32(vsubq_s32(v182, v183), v9), v115);
  v185 = vminq_s32(vmaxq_s32(v397, v9), v115);
  v186 = vminq_s32(vmaxq_s32(v156, v9), v115);
  v187 = vshlq_s32(v409, v113);
  v188 = vshlq_s32(v150, v113);
  v189 = vminq_s32(vmaxq_s32(vsubq_s32(v186, v185), v9), v115);
  v190 = vminq_s32(vmaxq_s32(vsubq_s32(v188, v187), v9), v115);
  v191 = vmlaq_s32(vmlsq_s32(v10, v161, v184), v190, v159);
  v192 = vmlaq_s32(vmlsq_s32(v10, v161, v181), v189, v159);
  v193 = vmlaq_s32(vmlaq_s32(v10, v181, v159), v189, v161);
  v194 = vmlaq_s32(vmlaq_s32(v10, v184, v159), v190, v161);
  v195 = vaddq_s32(v381, v167);
  v196 = vaddq_s32(v394, v384);
  v197 = vaddq_s32(v382, v168);
  v198 = &dword_277C42240[64 * a3 - 608];
  v199 = vld1q_dup_f32(v198);
  v200 = vmlaq_s32(v10, v199, *a1);
  v201 = vmulq_s32(v199, a1[16]);
  v202 = vaddq_s32(v200, v201);
  v203 = vsubq_s32(v200, v201);
  v204 = vshlq_s32(v427, v113);
  v205 = vshlq_s32(v435, v113);
  v206 = vaddq_s32(v205, v204);
  v207 = vsubq_s32(v204, v205);
  v208 = vshlq_s32(v432, v113);
  v209 = vshlq_s32(v430, v113);
  v210 = vaddq_s32(v209, v208);
  v211 = vsubq_s32(v209, v208);
  v212 = vaddq_s32(v183, v182);
  v213 = vaddq_s32(v174, v173);
  v214 = vaddq_s32(v176, v175);
  v215 = vaddq_s32(v186, v185);
  v395 = v213;
  v398 = vaddq_s32(v188, v187);
  v216 = vshlq_s32(v202, v113);
  v217 = vshlq_s32(v412, v113);
  v218 = vaddq_s32(v217, v216);
  v219 = vsubq_s32(v216, v217);
  v220 = vshlq_s32(v203, v113);
  v221 = vshlq_s32(v415, v113);
  v222 = vaddq_s32(v221, v220);
  v223 = vsubq_s32(v220, v221);
  v224 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v211, v9), v115), v199);
  v225 = vmulq_s32(vminq_s32(vmaxq_s32(v207, v9), v115), v199);
  v226 = vsubq_s32(v224, v225);
  v227 = vaddq_s32(v224, v225);
  v228 = vminq_s32(vmaxq_s32(v195, v9), v115);
  v229 = vminq_s32(vmaxq_s32(v196, v9), v115);
  v416 = vaddq_s32(v229, v228);
  v230 = vsubq_s32(v228, v229);
  v231 = vshlq_s32(v421, v113);
  v232 = vshlq_s32(v403, v113);
  v413 = vaddq_s32(v232, v231);
  v233 = vsubq_s32(v231, v232);
  v234 = vminq_s32(vmaxq_s32(vaddq_s32(v400, v386), v9), v115);
  v235 = vminq_s32(vmaxq_s32(v197, v9), v115);
  v236 = vaddq_s32(v235, v234);
  v237 = vsubq_s32(v235, v234);
  v238 = vshlq_s32(v406, v113);
  v239 = vshlq_s32(v425, v113);
  v422 = vaddq_s32(v239, v238);
  v240 = vsubq_s32(v239, v238);
  v241 = vminq_s32(vmaxq_s32(v210, v9), v115);
  v242 = vminq_s32(vmaxq_s32(v218, v9), v115);
  v243 = vaddq_s32(v242, v241);
  v410 = vsubq_s32(v242, v241);
  v244 = vminq_s32(vmaxq_s32(v222, v9), v115);
  v245 = vshlq_s32(v227, v113);
  v246 = vaddq_s32(v245, v244);
  v404 = vsubq_s32(v244, v245);
  v247 = vminq_s32(vmaxq_s32(v223, v9), v115);
  v248 = vshlq_s32(v226, v113);
  v249 = vaddq_s32(v248, v247);
  v401 = vsubq_s32(v247, v248);
  v250 = vminq_s32(vmaxq_s32(v206, v9), v115);
  v251 = vminq_s32(vmaxq_s32(v219, v9), v115);
  v252 = vaddq_s32(v251, v250);
  v253 = vsubq_s32(v251, v250);
  v254 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v240, v9), v115), v199);
  v255 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v237, v9), v115), v199);
  v256 = vmulq_s32(vminq_s32(vmaxq_s32(v230, v9), v115), v199);
  v257 = vsubq_s32(v255, v256);
  v258 = vaddq_s32(v255, v256);
  v259 = vmulq_s32(vminq_s32(vmaxq_s32(v233, v9), v115), v199);
  v260 = vsubq_s32(v254, v259);
  v261 = vaddq_s32(v254, v259);
  v262 = vminq_s32(vmaxq_s32(vaddq_s32(v180, v179), v9), v115);
  v263 = vminq_s32(vmaxq_s32(vaddq_s32(v380, v379), v9), v115);
  v264 = vaddq_s32(v263, v262);
  v265 = vsubq_s32(v262, v263);
  v266 = vminq_s32(vmaxq_s32(v212, v9), v115);
  v267 = vminq_s32(vmaxq_s32(vaddq_s32(v378, v377), v9), v115);
  v433 = vaddq_s32(v267, v266);
  v436 = v264;
  v268 = vsubq_s32(v266, v267);
  v269 = vshlq_s32(v191, v113);
  v270 = vshlq_s32(v383, v113);
  v431 = vaddq_s32(v270, v269);
  v271 = vsubq_s32(v269, v270);
  v272 = vshlq_s32(v192, v113);
  v273 = vshlq_s32(v388, v113);
  v428 = vaddq_s32(v273, v272);
  v274 = vsubq_s32(v272, v273);
  v275 = vminq_s32(vmaxq_s32(v395, v9), v115);
  v276 = vminq_s32(vmaxq_s32(v215, v9), v115);
  v277 = vaddq_s32(v276, v275);
  v278 = vsubq_s32(v276, v275);
  v279 = vminq_s32(vmaxq_s32(v214, v9), v115);
  v280 = vminq_s32(vmaxq_s32(v398, v9), v115);
  v281 = vaddq_s32(v280, v279);
  v282 = vsubq_s32(v280, v279);
  v283 = vshlq_s32(v390, v113);
  v284 = vshlq_s32(v194, v113);
  v407 = vaddq_s32(v284, v283);
  v285 = vsubq_s32(v284, v283);
  v286 = vshlq_s32(v418, v113);
  v287 = vshlq_s32(v193, v113);
  v288 = vaddq_s32(v287, v286);
  v289 = vsubq_s32(v287, v286);
  v290 = vminq_s32(vmaxq_s32(v236, v9), v115);
  v291 = vminq_s32(vmaxq_s32(v243, v9), v115);
  v292 = vaddq_s32(v291, v290);
  v426 = vsubq_s32(v291, v290);
  v293 = vminq_s32(vmaxq_s32(v422, v9), v115);
  v294 = vminq_s32(vmaxq_s32(v246, v9), v115);
  v295 = vaddq_s32(v294, v293);
  v423 = vsubq_s32(v294, v293);
  v296 = vminq_s32(vmaxq_s32(v249, v9), v115);
  v297 = vshlq_s32(v261, v113);
  v298 = vaddq_s32(v297, v296);
  v419 = vsubq_s32(v296, v297);
  v299 = vminq_s32(vmaxq_s32(v252, v9), v115);
  v300 = vshlq_s32(v258, v113);
  v301 = vaddq_s32(v300, v299);
  v302 = vsubq_s32(v299, v300);
  v303 = vminq_s32(vmaxq_s32(v253, v9), v115);
  v304 = vshlq_s32(v257, v113);
  v305 = vaddq_s32(v304, v303);
  v306 = vsubq_s32(v303, v304);
  v307 = vminq_s32(vmaxq_s32(v401, v9), v115);
  v308 = vshlq_s32(v260, v113);
  v309 = vaddq_s32(v308, v307);
  v310 = vsubq_s32(v307, v308);
  v311 = vminq_s32(vmaxq_s32(v413, v9), v115);
  v312 = vminq_s32(vmaxq_s32(v404, v9), v115);
  v313 = vaddq_s32(v312, v311);
  v314 = vsubq_s32(v312, v311);
  v315 = vminq_s32(vmaxq_s32(v416, v9), v115);
  v316 = vminq_s32(vmaxq_s32(v410, v9), v115);
  v317 = vaddq_s32(v316, v315);
  v318 = vsubq_s32(v316, v315);
  v319 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v289, v9), v115), v199);
  v320 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v285, v9), v115), v199);
  v321 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v282, v9), v115), v199);
  v322 = vmlaq_s32(v10, vminq_s32(vmaxq_s32(v278, v9), v115), v199);
  v323 = vmulq_s32(vminq_s32(vmaxq_s32(v274, v9), v115), v199);
  v324 = vmulq_s32(vminq_s32(vmaxq_s32(v271, v9), v115), v199);
  v325 = vmulq_s32(vminq_s32(vmaxq_s32(v268, v9), v115), v199);
  v326 = vmulq_s32(vminq_s32(vmaxq_s32(v265, v9), v115), v199);
  v327 = vsubq_s32(v322, v326);
  v328 = vaddq_s32(v322, v326);
  v329 = vsubq_s32(v321, v325);
  v330 = vaddq_s32(v321, v325);
  v331 = vsubq_s32(v320, v324);
  v332 = vaddq_s32(v320, v324);
  v333 = vsubq_s32(v319, v323);
  v334 = vaddq_s32(v319, v323);
  v335 = vshlq_s32(v333, v113);
  v336 = vshlq_s32(v331, v113);
  v337 = vshlq_s32(v329, v113);
  v338 = vshlq_s32(v327, v113);
  v339 = vshlq_s32(v328, v113);
  v340 = vshlq_s32(v330, v113);
  v341 = vshlq_s32(v332, v113);
  v342 = vshlq_s32(v334, v113);
  v343 = vminq_s32(vmaxq_s32(v277, v9), v115);
  v344 = vminq_s32(vmaxq_s32(v292, v9), v115);
  v345 = vaddq_s32(v344, v343);
  v346 = vsubq_s32(v344, v343);
  v347 = vminq_s32(vmaxq_s32(v281, v9), v115);
  v348 = vminq_s32(vmaxq_s32(v295, v9), v115);
  *a2 = vminq_s32(vmaxq_s32(v345, v9), v115);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v348, v347), v9), v115);
  a2[30] = vminq_s32(vmaxq_s32(vsubq_s32(v348, v347), v9), v115);
  a2[31] = vminq_s32(vmaxq_s32(v346, v9), v115);
  v349 = vminq_s32(vmaxq_s32(v407, v9), v115);
  v350 = vminq_s32(vmaxq_s32(v288, v9), v115);
  v351 = vminq_s32(vmaxq_s32(v298, v9), v115);
  v352 = vminq_s32(vmaxq_s32(v301, v9), v115);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v351, v349), v9), v115);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v352, v350), v9), v115);
  a2[28] = vminq_s32(vmaxq_s32(vsubq_s32(v352, v350), v9), v115);
  a2[29] = vminq_s32(vmaxq_s32(vsubq_s32(v351, v349), v9), v115);
  v353 = vminq_s32(vmaxq_s32(v305, v9), v115);
  v354 = vminq_s32(vmaxq_s32(v309, v9), v115);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v342, v353), v9), v115);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v341, v354), v9), v115);
  a2[26] = vminq_s32(vmaxq_s32(vsubq_s32(v354, v341), v9), v115);
  a2[27] = vminq_s32(vmaxq_s32(vsubq_s32(v353, v342), v9), v115);
  v355 = vminq_s32(vmaxq_s32(v313, v9), v115);
  v356 = vminq_s32(vmaxq_s32(v317, v9), v115);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v340, v355), v9), v115);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v339, v356), v9), v115);
  a2[24] = vminq_s32(vmaxq_s32(vsubq_s32(v356, v339), v9), v115);
  a2[25] = vminq_s32(vmaxq_s32(vsubq_s32(v355, v340), v9), v115);
  v357 = vminq_s32(vmaxq_s32(v314, v9), v115);
  v358 = vminq_s32(vmaxq_s32(v318, v9), v115);
  a2[8] = vminq_s32(vmaxq_s32(vaddq_s32(v338, v358), v9), v115);
  a2[9] = vminq_s32(vmaxq_s32(vaddq_s32(v337, v357), v9), v115);
  a2[22] = vminq_s32(vmaxq_s32(vsubq_s32(v357, v337), v9), v115);
  a2[23] = vminq_s32(vmaxq_s32(vsubq_s32(v358, v338), v9), v115);
  v359 = vminq_s32(vmaxq_s32(v306, v9), v115);
  v360 = vminq_s32(vmaxq_s32(v310, v9), v115);
  a2[10] = vminq_s32(vmaxq_s32(vaddq_s32(v336, v360), v9), v115);
  a2[11] = vminq_s32(vmaxq_s32(vaddq_s32(v335, v359), v9), v115);
  a2[20] = vminq_s32(vmaxq_s32(vsubq_s32(v359, v335), v9), v115);
  a2[21] = vminq_s32(vmaxq_s32(vsubq_s32(v360, v336), v9), v115);
  v361 = vminq_s32(vmaxq_s32(v431, v9), v115);
  v362 = vminq_s32(vmaxq_s32(v428, v9), v115);
  v363 = vminq_s32(vmaxq_s32(v419, v9), v115);
  v364 = vminq_s32(vmaxq_s32(v302, v9), v115);
  a2[12] = vminq_s32(vmaxq_s32(vaddq_s32(v364, v362), v9), v115);
  a2[13] = vminq_s32(vmaxq_s32(vaddq_s32(v363, v361), v9), v115);
  a2[18] = vminq_s32(vmaxq_s32(vsubq_s32(v363, v361), v9), v115);
  a2[19] = vminq_s32(vmaxq_s32(vsubq_s32(v364, v362), v9), v115);
  v365 = vminq_s32(vmaxq_s32(v436, v9), v115);
  v366 = vminq_s32(vmaxq_s32(v433, v9), v115);
  v367 = vminq_s32(vmaxq_s32(v426, v9), v115);
  v368 = vminq_s32(vmaxq_s32(v423, v9), v115);
  a2[14] = vminq_s32(vmaxq_s32(vaddq_s32(v368, v366), v9), v115);
  a2[15] = vminq_s32(vmaxq_s32(vaddq_s32(v367, v365), v9), v115);
  a2[16] = vminq_s32(vmaxq_s32(vsubq_s32(v367, v365), v9), v115);
  a2[17] = vminq_s32(vmaxq_s32(vsubq_s32(v368, v366), v9), v115);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v371 = 10;
    }

    else
    {
      v371 = a5;
    }

    v372 = 32 << v371;
    v434 = vdupq_n_s32(v372 - 1);
    v437 = vdupq_n_s32(-v372);
    sub_277AEAB84(a2, a6);
    sub_277AEAB84(a2 + 16, a6);
    v373 = a2 + 2;
    v374 = -4;
    do
    {
      v375 = vminq_s32(vmaxq_s32(v373[-1], v437), v434);
      v373[-2] = vminq_s32(vmaxq_s32(v373[-2], v437), v434);
      v373[-1] = v375;
      v376 = vminq_s32(vmaxq_s32(v373[1], v437), v434);
      *v373 = vminq_s32(vmaxq_s32(*v373, v437), v434);
      v373[1] = v376;
      v373 += 4;
      v374 += 4;
    }

    while (v374 < 0x1C);
  }
}

int32x4_t *sub_277AEF3C8(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  v8 = 1 << (v7 - 1);
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(-a3);
  v11 = vdupq_n_s32(1 << (a3 - 1));
  v12 = &dword_277C42240[64 * a3 - 638];
  v13 = vld1q_dup_f32(v12);
  v14 = result[1];
  v15 = vmlaq_s32(v11, v13, v14);
  v16 = &dword_277C42240[64 * a3 - 578];
  v17 = vld1q_dup_f32(v16);
  v18 = vmlaq_s32(v11, v17, v14);
  v20 = result[14];
  v19 = result[15];
  v21 = vmlaq_s32(v11, vdupq_n_s32(-dword_277C42240[64 * a3 - 606]), v19);
  v22 = &dword_277C42240[64 * a3 - 610];
  v23 = vld1q_dup_f32(v22);
  v24 = vmlaq_s32(v11, v23, v19);
  v25 = &dword_277C42240[64 * a3 - 622];
  v26 = vld1q_dup_f32(v25);
  v27 = result[9];
  v28 = vshlq_s32(vmlaq_s32(v11, v26, v27), v10);
  v29 = &dword_277C42240[64 * a3 - 594];
  v30 = vld1q_dup_f32(v29);
  v31 = vmlaq_s32(v11, v30, v27);
  v33 = result[6];
  v32 = result[7];
  v34 = vmlaq_s32(v11, vdupq_n_s32(-dword_277C42240[64 * a3 - 590]), v32);
  v35 = &dword_277C42240[64 * a3 - 626];
  v36 = vld1q_dup_f32(v35);
  v356 = v28;
  v358 = vshlq_s32(vmlaq_s32(v11, v36, v32), v10);
  v37 = &dword_277C42240[64 * a3 - 630];
  v38 = vld1q_dup_f32(v37);
  v39 = result[4];
  v40 = result[5];
  v387 = vmlaq_s32(v11, v38, v40);
  v41 = &dword_277C42240[64 * a3 - 586];
  v42 = vld1q_dup_f32(v41);
  v381 = vmlaq_s32(v11, v42, v40);
  v43 = &dword_277C42240[64 * a3 - 618];
  v44 = vld1q_dup_f32(v43);
  v45 = result[10];
  v46 = result[11];
  v47 = vmlaq_s32(v11, vdupq_n_s32(-dword_277C42240[64 * a3 - 598]), v46);
  v48 = vmlaq_s32(v11, v44, v46);
  v49 = &dword_277C42240[64 * a3 - 614];
  v50 = vld1q_dup_f32(v49);
  v51 = result[13];
  v52 = vmlaq_s32(v11, v50, v51);
  v53 = &dword_277C42240[64 * a3 - 602];
  v54 = vld1q_dup_f32(v53);
  v55 = vmlaq_s32(v11, v54, v51);
  v56 = &dword_277C42240[64 * a3 - 634];
  v57 = vld1q_dup_f32(v56);
  v58 = result[2];
  v59 = result[3];
  v60 = vmlaq_s32(v11, vdupq_n_s32(-dword_277C42240[64 * a3 - 582]), v59);
  v61 = vmlaq_s32(v11, v57, v59);
  v62 = &dword_277C42240[64 * a3 - 636];
  v63 = vld1q_dup_f32(v62);
  v378 = vmlaq_s32(v11, v63, v58);
  v64 = &dword_277C42240[64 * a3 - 580];
  v65 = vld1q_dup_f32(v64);
  v372 = vmlaq_s32(v11, v65, v58);
  v366 = vmlaq_s32(v11, vdupq_n_s32(-dword_277C42240[64 * a3 - 604]), v20);
  v66 = &dword_277C42240[64 * a3 - 612];
  v67 = vld1q_dup_f32(v66);
  v68 = vmlaq_s32(v11, v67, v20);
  v69 = &dword_277C42240[64 * a3 - 620];
  v70 = vld1q_dup_f32(v69);
  v390 = vmlaq_s32(v11, v70, v45);
  v71 = &dword_277C42240[64 * a3 - 596];
  v72 = vld1q_dup_f32(v71);
  v384 = vmlaq_s32(v11, v72, v45);
  v73 = &dword_277C42240[64 * a3 - 628];
  v74 = vld1q_dup_f32(v73);
  v375 = vmlaq_s32(v11, vdupq_n_s32(-dword_277C42240[64 * a3 - 588]), v33);
  v369 = vmlaq_s32(v11, v74, v33);
  v75 = dword_277C42240[64 * a3 - 632];
  v76 = vdupq_n_s32(v75);
  v399 = vmlaq_s32(v11, v76, v39);
  LODWORD(v73) = dword_277C42240[64 * a3 - 584];
  v77 = vdupq_n_s32(v73);
  v397 = vmlaq_s32(v11, v77, v39);
  v78 = vdupq_n_s32(v8 - 1);
  v79 = vminq_s32(vmaxq_s32(vsubq_s32(v358, v28), v9), v78);
  v80 = vshlq_s32(v31, v10);
  v81 = vshlq_s32(v34, v10);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v81, v80), v9), v78);
  v83 = vmlaq_s32(vmlaq_s32(v11, vdupq_n_s32(-v75), v79), vdupq_n_s32(-v73), v82);
  v84 = vshlq_s32(v15, v10);
  v85 = vshlq_s32(v18, v10);
  v86 = vshlq_s32(v21, v10);
  v87 = vshlq_s32(v24, v10);
  v88 = vminq_s32(vmaxq_s32(vsubq_s32(v85, v86), v9), v78);
  v89 = vminq_s32(vmaxq_s32(vsubq_s32(v84, v87), v9), v78);
  v90 = vmlaq_s32(vmlsq_s32(v11, v88, v76), v77, v89);
  v91 = vmlaq_s32(vmlaq_s32(v11, v76, v89), v77, v88);
  v92 = vmlaq_s32(vmlsq_s32(v11, v82, v76), v77, v79);
  v93 = dword_277C42240[64 * a3 - 600];
  v94 = result[12];
  v95 = vdupq_n_s32(-v93);
  v395 = vmlaq_s32(v11, v95, v94);
  LODWORD(v73) = dword_277C42240[64 * a3 - 616];
  v96 = vdupq_n_s32(v73);
  v393 = vmlaq_s32(v11, v96, v94);
  v97 = vshlq_s32(v52, v10);
  v98 = vshlq_s32(v61, v10);
  v99 = vminq_s32(vmaxq_s32(vsubq_s32(v98, v97), v9), v78);
  v100 = vmlaq_s32(v11, v95, v99);
  v101 = vshlq_s32(v55, v10);
  v102 = vshlq_s32(v60, v10);
  v103 = vminq_s32(vmaxq_s32(vsubq_s32(v102, v101), v9), v78);
  v104 = vmlaq_s32(v100, vdupq_n_s32(-v73), v103);
  v105 = vdupq_n_s32(v93);
  v106 = vmlsq_s32(v11, v103, v105);
  v107 = vshlq_s32(v387, v10);
  v108 = vshlq_s32(v381, v10);
  v109 = vshlq_s32(v47, v10);
  v110 = vshlq_s32(v48, v10);
  v111 = vminq_s32(vmaxq_s32(vsubq_s32(v108, v109), v9), v78);
  v112 = vminq_s32(vmaxq_s32(vsubq_s32(v107, v110), v9), v78);
  v113 = vmlaq_s32(vmlsq_s32(v11, v111, v105), v96, v112);
  v363 = vmlaq_s32(v106, v96, v99);
  v364 = vmlaq_s32(vmlaq_s32(v11, v105, v112), v96, v111);
  v114 = vaddq_s32(v86, v85);
  v115 = vaddq_s32(v81, v80);
  v116 = vaddq_s32(v109, v108);
  v117 = vaddq_s32(v102, v101);
  v360 = vaddq_s32(v98, v97);
  v361 = vaddq_s32(v110, v107);
  v118 = vaddq_s32(v358, v356);
  v119 = vaddq_s32(v87, v84);
  v120 = dword_277C42240[64 * a3 - 624];
  v121 = result[8];
  v122 = vdupq_n_s32(v120);
  v388 = vmlaq_s32(v11, v122, v121);
  LODWORD(v73) = dword_277C42240[64 * a3 - 592];
  v123 = vdupq_n_s32(v73);
  v382 = vmlaq_s32(v11, v123, v121);
  v124 = vshlq_s32(v378, v10);
  v125 = vshlq_s32(v372, v10);
  v367 = vshlq_s32(v366, v10);
  v126 = vshlq_s32(v68, v10);
  v127 = vminq_s32(vmaxq_s32(vsubq_s32(v125, v367), v9), v78);
  v128 = vminq_s32(vmaxq_s32(vsubq_s32(v124, v126), v9), v78);
  v373 = vmlaq_s32(vmlsq_s32(v11, v127, v122), v123, v128);
  v379 = vmlaq_s32(vmlaq_s32(v11, v122, v128), v123, v127);
  v354 = vshlq_s32(v390, v10);
  v357 = vshlq_s32(v375, v10);
  v359 = vshlq_s32(v384, v10);
  v370 = vshlq_s32(v369, v10);
  v129 = vminq_s32(vmaxq_s32(vsubq_s32(v357, v359), v9), v78);
  v130 = vminq_s32(vmaxq_s32(vsubq_s32(v370, v354), v9), v78);
  v131 = vdupq_n_s32(-v120);
  v132 = vdupq_n_s32(-v73);
  v376 = vmlaq_s32(vmlaq_s32(v11, v131, v130), v132, v129);
  v385 = vmlaq_s32(vmlsq_s32(v11, v129, v122), v123, v130);
  v352 = vshlq_s32(v90, v10);
  v353 = vshlq_s32(v83, v10);
  v133 = vminq_s32(vmaxq_s32(vsubq_s32(v352, v353), v9), v78);
  v350 = vshlq_s32(v91, v10);
  v351 = vshlq_s32(v92, v10);
  v134 = vminq_s32(vmaxq_s32(vsubq_s32(v350, v351), v9), v78);
  v135 = vmlaq_s32(vmlsq_s32(v11, v122, v133), v134, v123);
  v391 = vmlaq_s32(vmlaq_s32(v11, v133, v123), v134, v122);
  v136 = vminq_s32(vmaxq_s32(v114, v9), v78);
  v137 = vminq_s32(vmaxq_s32(v115, v9), v78);
  v138 = vminq_s32(vmaxq_s32(vsubq_s32(v136, v137), v9), v78);
  v139 = vmlsq_s32(v11, v122, v138);
  v140 = vmlaq_s32(v11, v138, v123);
  v141 = vminq_s32(vmaxq_s32(v116, v9), v78);
  v142 = vminq_s32(vmaxq_s32(v117, v9), v78);
  v143 = vminq_s32(vmaxq_s32(vsubq_s32(v142, v141), v9), v78);
  v144 = vmlaq_s32(v11, v143, v132);
  v145 = vmlsq_s32(v11, v122, v143);
  v146 = vshlq_s32(v113, v10);
  v147 = vshlq_s32(v104, v10);
  v148 = vminq_s32(vmaxq_s32(vsubq_s32(v147, v146), v9), v78);
  v149 = vmlaq_s32(v11, v148, v132);
  v150 = vmlsq_s32(v11, v122, v148);
  v151 = vminq_s32(vmaxq_s32(v118, v9), v78);
  v152 = vminq_s32(vmaxq_s32(v119, v9), v78);
  v153 = vminq_s32(vmaxq_s32(vsubq_s32(v152, v151), v9), v78);
  v355 = vmlaq_s32(v140, v153, v122);
  v154 = vmlaq_s32(v139, v153, v123);
  v155 = vminq_s32(vmaxq_s32(v360, v9), v78);
  v156 = vminq_s32(vmaxq_s32(v361, v9), v78);
  v157 = vminq_s32(vmaxq_s32(vsubq_s32(v155, v156), v9), v78);
  v158 = vmlaq_s32(v144, v157, v131);
  v362 = vmlaq_s32(v145, v157, v123);
  v159 = vshlq_s32(v364, v10);
  v160 = vshlq_s32(v363, v10);
  v161 = vminq_s32(vmaxq_s32(vsubq_s32(v160, v159), v9), v78);
  v162 = vmlaq_s32(v149, v161, v131);
  v163 = vmlaq_s32(v150, v161, v123);
  v164 = vaddq_s32(v367, v125);
  v165 = vaddq_s32(v126, v124);
  v166 = &dword_277C42240[64 * a3 - 608];
  v167 = vld1q_dup_f32(v166);
  v168 = vshlq_s32(v397, v10);
  v169 = vshlq_s32(v395, v10);
  v170 = vaddq_s32(v169, v168);
  v171 = vsubq_s32(v168, v169);
  v172 = vshlq_s32(v399, v10);
  v173 = vshlq_s32(v393, v10);
  v174 = vaddq_s32(v173, v172);
  v175 = vsubq_s32(v172, v173);
  v400 = vaddq_s32(v137, v136);
  v176 = vaddq_s32(v142, v141);
  v177 = vaddq_s32(v147, v146);
  v368 = vaddq_s32(v156, v155);
  v178 = vaddq_s32(v160, v159);
  v365 = vaddq_s32(v152, v151);
  v179 = vshlq_s32(vmlaq_s32(v11, v167, *result), v10);
  v180 = vshlq_s32(v388, v10);
  v181 = vshlq_s32(v382, v10);
  v182 = vaddq_s32(v180, v179);
  v183 = vsubq_s32(v179, v180);
  v184 = vaddq_s32(v181, v179);
  v185 = vsubq_s32(v179, v181);
  v186 = vmlaq_s32(v11, vminq_s32(vmaxq_s32(v175, v9), v78), v167);
  v187 = vmulq_s32(vminq_s32(vmaxq_s32(v171, v9), v78), v167);
  v188 = vsubq_s32(v186, v187);
  v189 = vaddq_s32(v186, v187);
  v190 = vminq_s32(vmaxq_s32(v164, v9), v78);
  v191 = vminq_s32(vmaxq_s32(vaddq_s32(v357, v359), v9), v78);
  v383 = vaddq_s32(v191, v190);
  v192 = vsubq_s32(v190, v191);
  v193 = vshlq_s32(v373, v10);
  v194 = vshlq_s32(v376, v10);
  v377 = vaddq_s32(v194, v193);
  v195 = vsubq_s32(v193, v194);
  v196 = vminq_s32(vmaxq_s32(vaddq_s32(v370, v354), v9), v78);
  v197 = vminq_s32(vmaxq_s32(v165, v9), v78);
  v198 = vaddq_s32(v197, v196);
  v199 = vsubq_s32(v197, v196);
  v200 = vshlq_s32(v379, v10);
  v201 = vshlq_s32(v385, v10);
  v202 = vaddq_s32(v201, v200);
  v203 = vsubq_s32(v200, v201);
  v204 = vminq_s32(vmaxq_s32(v174, v9), v78);
  v205 = vminq_s32(vmaxq_s32(v182, v9), v78);
  v206 = vaddq_s32(v205, v204);
  v207 = vsubq_s32(v205, v204);
  v208 = vminq_s32(vmaxq_s32(v184, v9), v78);
  v209 = vshlq_s32(v189, v10);
  v210 = vaddq_s32(v209, v208);
  v374 = vsubq_s32(v208, v209);
  v211 = vminq_s32(vmaxq_s32(v185, v9), v78);
  v212 = vshlq_s32(v188, v10);
  v213 = vaddq_s32(v212, v211);
  v371 = vsubq_s32(v211, v212);
  v214 = vminq_s32(vmaxq_s32(v170, v9), v78);
  v215 = vminq_s32(vmaxq_s32(v183, v9), v78);
  v216 = vaddq_s32(v215, v214);
  v217 = vsubq_s32(v215, v214);
  v218 = vmlaq_s32(v11, vminq_s32(vmaxq_s32(v203, v9), v78), v167);
  v219 = vmulq_s32(vminq_s32(vmaxq_s32(v195, v9), v78), v167);
  v220 = vsubq_s32(v218, v219);
  v221 = vaddq_s32(v218, v219);
  v222 = vmlaq_s32(v11, vminq_s32(vmaxq_s32(v199, v9), v78), v167);
  v223 = vmulq_s32(vminq_s32(vmaxq_s32(v192, v9), v78), v167);
  v224 = vsubq_s32(v222, v223);
  v225 = vaddq_s32(v222, v223);
  v226 = vminq_s32(vmaxq_s32(v400, v9), v78);
  v227 = vminq_s32(vmaxq_s32(v176, v9), v78);
  v228 = vaddq_s32(v227, v226);
  v229 = vsubq_s32(v226, v227);
  v230 = vminq_s32(vmaxq_s32(vaddq_s32(v353, v352), v9), v78);
  v231 = vminq_s32(vmaxq_s32(v177, v9), v78);
  v398 = vaddq_s32(v231, v230);
  v401 = v228;
  v380 = vsubq_s32(v230, v231);
  v232 = vshlq_s32(v135, v10);
  v233 = vshlq_s32(v162, v10);
  v234 = vaddq_s32(v233, v232);
  v235 = vsubq_s32(v232, v233);
  v236 = vshlq_s32(v154, v10);
  v237 = vshlq_s32(v158, v10);
  v396 = vaddq_s32(v237, v236);
  v238 = vsubq_s32(v236, v237);
  v239 = vminq_s32(vmaxq_s32(v368, v9), v78);
  v240 = vminq_s32(vmaxq_s32(v365, v9), v78);
  v241 = vaddq_s32(v240, v239);
  v242 = vsubq_s32(v240, v239);
  v243 = vminq_s32(vmaxq_s32(v178, v9), v78);
  v244 = vminq_s32(vmaxq_s32(vaddq_s32(v351, v350), v9), v78);
  v245 = vaddq_s32(v244, v243);
  v246 = vsubq_s32(v244, v243);
  v247 = vshlq_s32(v391, v10);
  v248 = vshlq_s32(v163, v10);
  v249 = vaddq_s32(v248, v247);
  v250 = vsubq_s32(v247, v248);
  v251 = vshlq_s32(v355, v10);
  v252 = vshlq_s32(v362, v10);
  v253 = vaddq_s32(v252, v251);
  v254 = vsubq_s32(v251, v252);
  v255 = vminq_s32(vmaxq_s32(v198, v9), v78);
  v256 = vminq_s32(vmaxq_s32(v206, v9), v78);
  v257 = vaddq_s32(v256, v255);
  v394 = vsubq_s32(v256, v255);
  v258 = vminq_s32(vmaxq_s32(v202, v9), v78);
  v259 = vminq_s32(vmaxq_s32(v210, v9), v78);
  v260 = vaddq_s32(v259, v258);
  v261 = vminq_s32(vmaxq_s32(v213, v9), v78);
  v262 = vshlq_s32(v221, v10);
  v263 = vaddq_s32(v262, v261);
  v389 = vsubq_s32(v261, v262);
  v392 = vsubq_s32(v259, v258);
  v264 = vminq_s32(vmaxq_s32(v216, v9), v78);
  v265 = vshlq_s32(v225, v10);
  v266 = vaddq_s32(v265, v264);
  v386 = vsubq_s32(v264, v265);
  v267 = vminq_s32(vmaxq_s32(v217, v9), v78);
  v268 = vshlq_s32(v224, v10);
  v269 = vaddq_s32(v268, v267);
  v270 = vsubq_s32(v267, v268);
  v271 = vminq_s32(vmaxq_s32(v371, v9), v78);
  v272 = vshlq_s32(v220, v10);
  v273 = vaddq_s32(v272, v271);
  v274 = vsubq_s32(v271, v272);
  v275 = vminq_s32(vmaxq_s32(v377, v9), v78);
  v276 = vminq_s32(vmaxq_s32(v374, v9), v78);
  v277 = vaddq_s32(v276, v275);
  v278 = vsubq_s32(v276, v275);
  v279 = vminq_s32(vmaxq_s32(v383, v9), v78);
  v280 = vminq_s32(vmaxq_s32(v207, v9), v78);
  v281 = vaddq_s32(v280, v279);
  v282 = vsubq_s32(v280, v279);
  v283 = vmlaq_s32(v11, vminq_s32(vmaxq_s32(v254, v9), v78), v167);
  v284 = vmulq_s32(vminq_s32(vmaxq_s32(v238, v9), v78), v167);
  v285 = vsubq_s32(v283, v284);
  v286 = vaddq_s32(v283, v284);
  v287 = vmlaq_s32(v11, vminq_s32(vmaxq_s32(v250, v9), v78), v167);
  v288 = vmulq_s32(vminq_s32(vmaxq_s32(v235, v9), v78), v167);
  v289 = vsubq_s32(v287, v288);
  v290 = vaddq_s32(v287, v288);
  v291 = vmlaq_s32(v11, vminq_s32(vmaxq_s32(v246, v9), v78), v167);
  v292 = vminq_s32(vmaxq_s32(v229, v9), v78);
  v293 = vminq_s32(vmaxq_s32(v242, v9), v78);
  v294 = vmlaq_s32(v11, vsubq_s32(v293, v292), v167);
  v295 = vmlaq_s32(v11, vaddq_s32(v293, v292), v167);
  v296 = vmulq_s32(vminq_s32(vmaxq_s32(v380, v9), v78), v167);
  v297 = vsubq_s32(v291, v296);
  v298 = vaddq_s32(v291, v296);
  v299 = vshlq_s32(v285, v10);
  v300 = vshlq_s32(v286, v10);
  v301 = vshlq_s32(v289, v10);
  v302 = vshlq_s32(v290, v10);
  v303 = vshlq_s32(v297, v10);
  v304 = vshlq_s32(v298, v10);
  v305 = vshlq_s32(v294, v10);
  v306 = vshlq_s32(v295, v10);
  v307 = vminq_s32(vmaxq_s32(v241, v9), v78);
  v308 = vminq_s32(vmaxq_s32(v257, v9), v78);
  v309 = vaddq_s32(v308, v307);
  v310 = vsubq_s32(v308, v307);
  v311 = vminq_s32(vmaxq_s32(v245, v9), v78);
  v312 = vminq_s32(vmaxq_s32(v260, v9), v78);
  *a2 = vminq_s32(vmaxq_s32(v309, v9), v78);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v312, v311), v9), v78);
  a2[30] = vminq_s32(vmaxq_s32(vsubq_s32(v312, v311), v9), v78);
  a2[31] = vminq_s32(vmaxq_s32(v310, v9), v78);
  v313 = vminq_s32(vmaxq_s32(v249, v9), v78);
  v314 = vminq_s32(vmaxq_s32(v253, v9), v78);
  v315 = vminq_s32(vmaxq_s32(v263, v9), v78);
  v316 = vminq_s32(vmaxq_s32(v266, v9), v78);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v315, v313), v9), v78);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v316, v314), v9), v78);
  a2[28] = vminq_s32(vmaxq_s32(vsubq_s32(v316, v314), v9), v78);
  a2[29] = vminq_s32(vmaxq_s32(vsubq_s32(v315, v313), v9), v78);
  v317 = vminq_s32(vmaxq_s32(v269, v9), v78);
  v318 = vminq_s32(vmaxq_s32(v273, v9), v78);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v300, v317), v9), v78);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v302, v318), v9), v78);
  a2[26] = vminq_s32(vmaxq_s32(vsubq_s32(v318, v302), v9), v78);
  a2[27] = vminq_s32(vmaxq_s32(vsubq_s32(v317, v300), v9), v78);
  v319 = vminq_s32(vmaxq_s32(v277, v9), v78);
  v320 = vminq_s32(vmaxq_s32(v281, v9), v78);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v304, v319), v9), v78);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v306, v320), v9), v78);
  a2[24] = vminq_s32(vmaxq_s32(vsubq_s32(v320, v306), v9), v78);
  a2[25] = vminq_s32(vmaxq_s32(vsubq_s32(v319, v304), v9), v78);
  v321 = vminq_s32(vmaxq_s32(v278, v9), v78);
  v322 = vminq_s32(vmaxq_s32(v282, v9), v78);
  a2[8] = vminq_s32(vmaxq_s32(vaddq_s32(v305, v322), v9), v78);
  a2[9] = vminq_s32(vmaxq_s32(vaddq_s32(v303, v321), v9), v78);
  a2[22] = vminq_s32(vmaxq_s32(vsubq_s32(v321, v303), v9), v78);
  a2[23] = vminq_s32(vmaxq_s32(vsubq_s32(v322, v305), v9), v78);
  v323 = vminq_s32(vmaxq_s32(v270, v9), v78);
  v324 = vminq_s32(vmaxq_s32(v274, v9), v78);
  a2[10] = vminq_s32(vmaxq_s32(vaddq_s32(v301, v324), v9), v78);
  a2[11] = vminq_s32(vmaxq_s32(vaddq_s32(v299, v323), v9), v78);
  a2[20] = vminq_s32(vmaxq_s32(vsubq_s32(v323, v299), v9), v78);
  a2[21] = vminq_s32(vmaxq_s32(vsubq_s32(v324, v301), v9), v78);
  v325 = vminq_s32(vmaxq_s32(v234, v9), v78);
  v326 = vminq_s32(vmaxq_s32(v396, v9), v78);
  v327 = vminq_s32(vmaxq_s32(v389, v9), v78);
  v328 = vminq_s32(vmaxq_s32(v386, v9), v78);
  a2[12] = vminq_s32(vmaxq_s32(vaddq_s32(v328, v326), v9), v78);
  a2[13] = vminq_s32(vmaxq_s32(vaddq_s32(v327, v325), v9), v78);
  a2[18] = vminq_s32(vmaxq_s32(vsubq_s32(v327, v325), v9), v78);
  a2[19] = vminq_s32(vmaxq_s32(vsubq_s32(v328, v326), v9), v78);
  v329 = vminq_s32(vmaxq_s32(v401, v9), v78);
  v330 = vminq_s32(vmaxq_s32(v398, v9), v78);
  v331 = vminq_s32(vmaxq_s32(v394, v9), v78);
  v332 = vminq_s32(vmaxq_s32(v392, v9), v78);
  a2[14] = vminq_s32(vmaxq_s32(vaddq_s32(v332, v330), v9), v78);
  a2[15] = vminq_s32(vmaxq_s32(vaddq_s32(v331, v329), v9), v78);
  a2[16] = vminq_s32(vmaxq_s32(vsubq_s32(v331, v329), v9), v78);
  a2[17] = vminq_s32(vmaxq_s32(vsubq_s32(v332, v330), v9), v78);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v333 = 10;
    }

    else
    {
      v333 = a5;
    }

    v334 = 32 << v333;
    v335 = -(32 << v333);
    v336 = v334 - 1;
    v337 = vdupq_n_s32(-a6);
    v338 = a2 + 4;
    v339 = -8;
    do
    {
      if (a6)
      {
        v340 = vrshlq_s32(v338[-3], v337);
        v338[-4] = vrshlq_s32(v338[-4], v337);
        v338[-3] = v340;
        v341 = vrshlq_s32(v338[-1], v337);
        v338[-2] = vrshlq_s32(v338[-2], v337);
        v338[-1] = v341;
        v342 = vrshlq_s32(v338[1], v337);
        *v338 = vrshlq_s32(*v338, v337);
        v338[1] = v342;
        v343 = vrshlq_s32(v338[3], v337);
        v338[2] = vrshlq_s32(v338[2], v337);
        v338[3] = v343;
      }

      v339 += 8;
      v338 += 8;
    }

    while (v339 < 0x18);
    v344 = vdupq_n_s32(v335);
    v345 = vdupq_n_s32(v336);
    v346 = a2 + 2;
    v347 = -4;
    do
    {
      v348 = vminq_s32(vmaxq_s32(v346[-1], v344), v345);
      v346[-2] = vminq_s32(vmaxq_s32(v346[-2], v344), v345);
      v346[-1] = v348;
      v349 = vminq_s32(vmaxq_s32(v346[1], v344), v345);
      *v346 = vminq_s32(vmaxq_s32(*v346, v344), v345);
      v346[1] = v349;
      v346 += 4;
      v347 += 4;
    }

    while (v347 < 0x1C);
  }

  return result;
}

int32x4_t *sub_277AF01B4(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = &dword_277C42240[64 * a3 - 638];
  v14 = vld1q_dup_f32(v13);
  v15 = result[1];
  v16 = vmlaq_s32(v12, v14, v15);
  v17 = &dword_277C42240[64 * a3 - 578];
  v18 = vld1q_dup_f32(v17);
  v19 = vshlq_s32(v16, v11);
  v20 = vshlq_s32(vmlaq_s32(v12, v18, v15), v11);
  v21 = result[6];
  v22 = result[7];
  v23 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 590]), v22), v11);
  v24 = &dword_277C42240[64 * a3 - 626];
  v25 = vld1q_dup_f32(v24);
  v26 = vshlq_s32(vmlaq_s32(v12, v25, v22), v11);
  v27 = &dword_277C42240[64 * a3 - 630];
  v28 = vld1q_dup_f32(v27);
  v29 = result[4];
  v30 = result[5];
  v31 = vshlq_s32(vmlaq_s32(v12, v28, v30), v11);
  v32 = &dword_277C42240[64 * a3 - 586];
  v33 = vld1q_dup_f32(v32);
  v34 = vshlq_s32(vmlaq_s32(v12, v33, v30), v11);
  v35 = result[2];
  v36 = result[3];
  v37 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 582]), v36), v11);
  v38 = &dword_277C42240[64 * a3 - 634];
  v39 = vld1q_dup_f32(v38);
  v40 = vshlq_s32(vmlaq_s32(v12, v39, v36), v11);
  v41 = &dword_277C42240[64 * a3 - 636];
  v42 = vld1q_dup_f32(v41);
  v43 = vmlaq_s32(v12, v42, v35);
  v44 = &dword_277C42240[64 * a3 - 580];
  v45 = vld1q_dup_f32(v44);
  v46 = vmlaq_s32(v12, v45, v35);
  v47 = &dword_277C42240[64 * a3 - 628];
  v48 = vld1q_dup_f32(v47);
  v49 = vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 588]), v21);
  v50 = vmlaq_s32(v12, v48, v21);
  LODWORD(v47) = dword_277C42240[64 * a3 - 632];
  v51 = vdupq_n_s32(v47);
  v296 = vmlaq_s32(v12, v51, v29);
  v52 = dword_277C42240[64 * a3 - 584];
  v53 = vdupq_n_s32(v52);
  v292 = v46;
  v294 = vmlaq_s32(v12, v53, v29);
  v290 = v19;
  v54 = vmlaq_s32(vmlaq_s32(v12, v51, v19), v53, v20);
  v275 = v20;
  v277 = v23;
  v286 = v26;
  v279 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v20, v51), v53, v19), v11);
  v281 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v47), v26), vdupq_n_s32(-v52), v23), v11);
  v55 = v23;
  v56 = vmlaq_s32(vmlsq_s32(v12, v23, v51), v53, v26);
  LODWORD(v47) = dword_277C42240[64 * a3 - 616];
  v57 = vdupq_n_s32(v47);
  v58 = dword_277C42240[64 * a3 - 600];
  v59 = vdupq_n_s32(v58);
  v60 = vmlsq_s32(vmlaq_s32(v12, v57, v31), v34, v59);
  v268 = v40;
  v270 = v34;
  v61 = vmlaq_s32(vmlaq_s32(v12, v57, v34), v59, v31);
  v266 = v31;
  v62 = vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v47), v37), vdupq_n_s32(-v58), v40);
  v63 = v40;
  v64 = vmlsq_s32(vmlaq_s32(v12, v57, v40), v37, v59);
  v65 = v37;
  v272 = v37;
  v66 = &dword_277C42240[64 * a3 - 608];
  v67 = vld1q_dup_f32(v66);
  LODWORD(v66) = dword_277C42240[64 * a3 - 592];
  v68 = vdupq_n_s32(v66);
  v69 = dword_277C42240[64 * a3 - 624];
  v70 = vdupq_n_s32(v69);
  v71 = vminq_s32(vmaxq_s32(vsubq_s32(v279, v281), v9), v10);
  v72 = vshlq_s32(v54, v11);
  v73 = vshlq_s32(v56, v11);
  v74 = vminq_s32(vmaxq_s32(vsubq_s32(v72, v73), v9), v10);
  v75 = vmlaq_s32(vmlsq_s32(v12, v70, v71), v74, v68);
  v284 = vmlaq_s32(vmlaq_s32(v12, v71, v68), v74, v70);
  v76 = vminq_s32(vmaxq_s32(vsubq_s32(v20, v55), v9), v10);
  v77 = vmlsq_s32(v12, v70, v76);
  v78 = vmlaq_s32(v12, v76, v68);
  v79 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v34), v9), v10);
  v80 = vdupq_n_s32(-v66);
  v81 = vmlaq_s32(v12, v79, v80);
  v82 = vmlsq_s32(v12, v70, v79);
  v83 = vminq_s32(vmaxq_s32(vsubq_s32(v63, v31), v9), v10);
  v84 = vdupq_n_s32(-v69);
  v85 = vmlaq_s32(v81, v83, v84);
  v86 = vmlaq_s32(v82, v83, v68);
  v87 = vshlq_s32(v49, v11);
  v88 = vshlq_s32(v60, v11);
  v89 = vshlq_s32(v62, v11);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v89, v88), v9), v10);
  v91 = vmlaq_s32(v12, v90, v80);
  v92 = vshlq_s32(v50, v11);
  v93 = vshlq_s32(v61, v11);
  v94 = vshlq_s32(v64, v11);
  v95 = vmlaq_s32(vmlaq_s32(v12, v80, v87), v84, v92);
  v96 = vminq_s32(vmaxq_s32(vsubq_s32(v94, v93), v9), v10);
  v97 = vmlaq_s32(v91, v96, v84);
  v98 = vmlaq_s32(vmlsq_s32(v12, v70, v90), v96, v68);
  v99 = vshlq_s32(v43, v11);
  v100 = vshlq_s32(v292, v11);
  v101 = vminq_s32(vmaxq_s32(vsubq_s32(v290, v286), v9), v10);
  v102 = vmlaq_s32(v77, v101, v68);
  v103 = vmlaq_s32(v78, v101, v70);
  v104 = vmlsq_s32(vmlaq_s32(v12, v68, v99), v100, v70);
  v105 = vmlaq_s32(vmlaq_s32(v12, v68, v100), v70, v99);
  v106 = vmlsq_s32(vmlaq_s32(v12, v68, v92), v87, v70);
  v107 = vaddq_s32(v277, v275);
  v108 = vaddq_s32(v281, v279);
  v109 = vaddq_s32(v272, v270);
  v110 = vaddq_s32(v89, v88);
  v273 = vaddq_s32(v268, v266);
  v282 = vaddq_s32(v94, v93);
  v264 = vaddq_s32(v286, v290);
  v287 = vaddq_s32(v73, v72);
  v111 = vshlq_s32(v296, v11);
  v112 = vshlq_s32(v294, v11);
  v113 = vmlaq_s32(v12, v67, v111);
  v114 = vmulq_s32(v67, v112);
  v115 = vsubq_s32(v113, v114);
  v116 = vaddq_s32(v113, v114);
  v117 = vaddq_s32(v87, v100);
  v118 = vsubq_s32(v100, v87);
  v119 = vshlq_s32(v104, v11);
  v120 = vshlq_s32(v95, v11);
  v278 = vaddq_s32(v120, v119);
  v280 = v117;
  v121 = vsubq_s32(v119, v120);
  v122 = vaddq_s32(v92, v99);
  v123 = vshlq_s32(v105, v11);
  v124 = vshlq_s32(v106, v11);
  v125 = vaddq_s32(v124, v123);
  v126 = vsubq_s32(v123, v124);
  v127 = vshlq_s32(vmlaq_s32(v12, v67, *result), v11);
  v128 = vshlq_s32(v115, v11);
  v129 = vshlq_s32(v116, v11);
  v130 = vaddq_s32(v127, v111);
  v276 = vsubq_s32(v127, v111);
  v131 = vaddq_s32(v129, v127);
  v132 = vsubq_s32(v127, v129);
  v133 = vaddq_s32(v128, v127);
  v134 = vsubq_s32(v127, v128);
  v135 = vaddq_s32(v127, v112);
  v267 = vsubq_s32(v127, v112);
  v269 = v132;
  v136 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v126, v9), v10), v67);
  v137 = vmulq_s32(vminq_s32(vmaxq_s32(v121, v9), v10), v67);
  v265 = vsubq_s32(v136, v137);
  v138 = vaddq_s32(v136, v137);
  v139 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(vsubq_s32(v99, v92), v9), v10), v67);
  v140 = vmulq_s32(vminq_s32(vmaxq_s32(v118, v9), v10), v67);
  v141 = vsubq_s32(v139, v140);
  v142 = vaddq_s32(v139, v140);
  v143 = vminq_s32(vmaxq_s32(v107, v9), v10);
  v144 = vminq_s32(vmaxq_s32(v109, v9), v10);
  v297 = vaddq_s32(v144, v143);
  v271 = vsubq_s32(v143, v144);
  v145 = vminq_s32(vmaxq_s32(v108, v9), v10);
  v146 = vminq_s32(vmaxq_s32(v110, v9), v10);
  v295 = vaddq_s32(v146, v145);
  v147 = vsubq_s32(v145, v146);
  v148 = vshlq_s32(v75, v11);
  v149 = vshlq_s32(v97, v11);
  v293 = vaddq_s32(v149, v148);
  v150 = vsubq_s32(v148, v149);
  v151 = vshlq_s32(v102, v11);
  v152 = vshlq_s32(v85, v11);
  v291 = vaddq_s32(v152, v151);
  v153 = vsubq_s32(v151, v152);
  v154 = vminq_s32(vmaxq_s32(v273, v9), v10);
  v155 = vminq_s32(vmaxq_s32(v264, v9), v10);
  v156 = vaddq_s32(v155, v154);
  v157 = vsubq_s32(v155, v154);
  v158 = vminq_s32(vmaxq_s32(v282, v9), v10);
  v159 = vminq_s32(vmaxq_s32(v287, v9), v10);
  v160 = vaddq_s32(v159, v158);
  v161 = vsubq_s32(v159, v158);
  v162 = vshlq_s32(v284, v11);
  v163 = vshlq_s32(v98, v11);
  v274 = vaddq_s32(v163, v162);
  v164 = vsubq_s32(v162, v163);
  v165 = vshlq_s32(v103, v11);
  v166 = vshlq_s32(v86, v11);
  v167 = vaddq_s32(v166, v165);
  v168 = vsubq_s32(v165, v166);
  v169 = vminq_s32(vmaxq_s32(v122, v9), v10);
  v170 = vminq_s32(vmaxq_s32(v130, v9), v10);
  v171 = vaddq_s32(v170, v169);
  v289 = vsubq_s32(v170, v169);
  v172 = vminq_s32(vmaxq_s32(v125, v9), v10);
  v173 = vminq_s32(vmaxq_s32(v131, v9), v10);
  v174 = vaddq_s32(v173, v172);
  v288 = vsubq_s32(v173, v172);
  v175 = vminq_s32(vmaxq_s32(v133, v9), v10);
  v176 = vshlq_s32(v138, v11);
  v177 = vaddq_s32(v176, v175);
  v285 = vsubq_s32(v175, v176);
  v178 = vminq_s32(vmaxq_s32(v135, v9), v10);
  v179 = vshlq_s32(v142, v11);
  v180 = vaddq_s32(v179, v178);
  v283 = vsubq_s32(v178, v179);
  v181 = vminq_s32(vmaxq_s32(v267, v9), v10);
  v182 = vshlq_s32(v141, v11);
  v183 = vaddq_s32(v182, v181);
  v184 = vsubq_s32(v181, v182);
  v185 = vminq_s32(vmaxq_s32(v134, v9), v10);
  v186 = vshlq_s32(v265, v11);
  v187 = vaddq_s32(v186, v185);
  v188 = vsubq_s32(v185, v186);
  v189 = vminq_s32(vmaxq_s32(v278, v9), v10);
  v190 = vminq_s32(vmaxq_s32(v269, v9), v10);
  v191 = vaddq_s32(v190, v189);
  v192 = vsubq_s32(v190, v189);
  v193 = vminq_s32(vmaxq_s32(v280, v9), v10);
  v194 = vminq_s32(vmaxq_s32(v276, v9), v10);
  v195 = vaddq_s32(v194, v193);
  v196 = vsubq_s32(v194, v193);
  v197 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v168, v9), v10), v67);
  v198 = vmulq_s32(vminq_s32(vmaxq_s32(v153, v9), v10), v67);
  v199 = vsubq_s32(v197, v198);
  v200 = vaddq_s32(v197, v198);
  v201 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v164, v9), v10), v67);
  v202 = vmulq_s32(vminq_s32(vmaxq_s32(v150, v9), v10), v67);
  v203 = vsubq_s32(v201, v202);
  v204 = vaddq_s32(v201, v202);
  v205 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v161, v9), v10), v67);
  v206 = vminq_s32(vmaxq_s32(v271, v9), v10);
  v207 = vminq_s32(vmaxq_s32(v157, v9), v10);
  v208 = vmlaq_s32(v12, vsubq_s32(v207, v206), v67);
  v209 = vmlaq_s32(v12, vaddq_s32(v207, v206), v67);
  v210 = vmulq_s32(vminq_s32(vmaxq_s32(v147, v9), v10), v67);
  v211 = vsubq_s32(v205, v210);
  v212 = vaddq_s32(v205, v210);
  v213 = vshlq_s32(v199, v11);
  v214 = vshlq_s32(v200, v11);
  v215 = vshlq_s32(v203, v11);
  v216 = vshlq_s32(v204, v11);
  v217 = vshlq_s32(v211, v11);
  v218 = vshlq_s32(v212, v11);
  v219 = vshlq_s32(v208, v11);
  v220 = vshlq_s32(v209, v11);
  v221 = vminq_s32(vmaxq_s32(v156, v9), v10);
  v222 = vminq_s32(vmaxq_s32(v171, v9), v10);
  v223 = vaddq_s32(v222, v221);
  v224 = vsubq_s32(v222, v221);
  v225 = vminq_s32(vmaxq_s32(v160, v9), v10);
  v226 = vminq_s32(vmaxq_s32(v174, v9), v10);
  *a2 = vminq_s32(vmaxq_s32(v223, v9), v10);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v226, v225), v9), v10);
  a2[30] = vminq_s32(vmaxq_s32(vsubq_s32(v226, v225), v9), v10);
  a2[31] = vminq_s32(vmaxq_s32(v224, v9), v10);
  v227 = vminq_s32(vmaxq_s32(v274, v9), v10);
  v228 = vminq_s32(vmaxq_s32(v167, v9), v10);
  v229 = vminq_s32(vmaxq_s32(v177, v9), v10);
  v230 = vminq_s32(vmaxq_s32(v180, v9), v10);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v229, v227), v9), v10);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v230, v228), v9), v10);
  a2[28] = vminq_s32(vmaxq_s32(vsubq_s32(v230, v228), v9), v10);
  a2[29] = vminq_s32(vmaxq_s32(vsubq_s32(v229, v227), v9), v10);
  v231 = vminq_s32(vmaxq_s32(v183, v9), v10);
  v232 = vminq_s32(vmaxq_s32(v187, v9), v10);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v214, v231), v9), v10);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v216, v232), v9), v10);
  a2[26] = vminq_s32(vmaxq_s32(vsubq_s32(v232, v216), v9), v10);
  a2[27] = vminq_s32(vmaxq_s32(vsubq_s32(v231, v214), v9), v10);
  v233 = vminq_s32(vmaxq_s32(v191, v9), v10);
  v234 = vminq_s32(vmaxq_s32(v195, v9), v10);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v218, v233), v9), v10);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v220, v234), v9), v10);
  a2[24] = vminq_s32(vmaxq_s32(vsubq_s32(v234, v220), v9), v10);
  a2[25] = vminq_s32(vmaxq_s32(vsubq_s32(v233, v218), v9), v10);
  v235 = vminq_s32(vmaxq_s32(v192, v9), v10);
  v236 = vminq_s32(vmaxq_s32(v196, v9), v10);
  a2[8] = vminq_s32(vmaxq_s32(vaddq_s32(v219, v236), v9), v10);
  a2[9] = vminq_s32(vmaxq_s32(vaddq_s32(v217, v235), v9), v10);
  a2[22] = vminq_s32(vmaxq_s32(vsubq_s32(v235, v217), v9), v10);
  a2[23] = vminq_s32(vmaxq_s32(vsubq_s32(v236, v219), v9), v10);
  v237 = vminq_s32(vmaxq_s32(v184, v9), v10);
  v238 = vminq_s32(vmaxq_s32(v188, v9), v10);
  a2[10] = vminq_s32(vmaxq_s32(vaddq_s32(v215, v238), v9), v10);
  a2[11] = vminq_s32(vmaxq_s32(vaddq_s32(v213, v237), v9), v10);
  a2[20] = vminq_s32(vmaxq_s32(vsubq_s32(v237, v213), v9), v10);
  a2[21] = vminq_s32(vmaxq_s32(vsubq_s32(v238, v215), v9), v10);
  v239 = vminq_s32(vmaxq_s32(v293, v9), v10);
  v240 = vminq_s32(vmaxq_s32(v291, v9), v10);
  v241 = vminq_s32(vmaxq_s32(v285, v9), v10);
  v242 = vminq_s32(vmaxq_s32(v283, v9), v10);
  a2[12] = vminq_s32(vmaxq_s32(vaddq_s32(v242, v240), v9), v10);
  a2[13] = vminq_s32(vmaxq_s32(vaddq_s32(v241, v239), v9), v10);
  a2[18] = vminq_s32(vmaxq_s32(vsubq_s32(v241, v239), v9), v10);
  a2[19] = vminq_s32(vmaxq_s32(vsubq_s32(v242, v240), v9), v10);
  v243 = vminq_s32(vmaxq_s32(v297, v9), v10);
  v244 = vminq_s32(vmaxq_s32(v295, v9), v10);
  v245 = vminq_s32(vmaxq_s32(v289, v9), v10);
  v246 = vminq_s32(vmaxq_s32(v288, v9), v10);
  a2[14] = vminq_s32(vmaxq_s32(vaddq_s32(v246, v244), v9), v10);
  a2[15] = vminq_s32(vmaxq_s32(vaddq_s32(v245, v243), v9), v10);
  a2[16] = vminq_s32(vmaxq_s32(vsubq_s32(v245, v243), v9), v10);
  a2[17] = vminq_s32(vmaxq_s32(vsubq_s32(v246, v244), v9), v10);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v247 = 10;
    }

    else
    {
      v247 = a5;
    }

    v248 = 32 << v247;
    v249 = -(32 << v247);
    v250 = v248 - 1;
    v251 = vdupq_n_s32(-a6);
    v252 = a2 + 4;
    v253 = -8;
    do
    {
      if (a6)
      {
        v254 = vrshlq_s32(v252[-3], v251);
        v252[-4] = vrshlq_s32(v252[-4], v251);
        v252[-3] = v254;
        v255 = vrshlq_s32(v252[-1], v251);
        v252[-2] = vrshlq_s32(v252[-2], v251);
        v252[-1] = v255;
        v256 = vrshlq_s32(v252[1], v251);
        *v252 = vrshlq_s32(*v252, v251);
        v252[1] = v256;
        v257 = vrshlq_s32(v252[3], v251);
        v252[2] = vrshlq_s32(v252[2], v251);
        v252[3] = v257;
      }

      v253 += 8;
      v252 += 8;
    }

    while (v253 < 0x18);
    v258 = vdupq_n_s32(v249);
    v259 = vdupq_n_s32(v250);
    v260 = a2 + 2;
    v261 = -4;
    do
    {
      v262 = vminq_s32(vmaxq_s32(v260[-1], v258), v259);
      v260[-2] = vminq_s32(vmaxq_s32(v260[-2], v258), v259);
      v260[-1] = v262;
      v263 = vminq_s32(vmaxq_s32(v260[1], v258), v259);
      *v260 = vminq_s32(vmaxq_s32(*v260, v258), v259);
      v260[1] = v263;
      v260 += 4;
      v261 += 4;
    }

    while (v261 < 0x1C);
  }

  return result;
}

int32x4_t *sub_277AF0C58(int32x4_t *result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v6 = &dword_277C42240[64 * a3 - 608];
  v7 = vld1q_dup_f32(v6);
  v8 = vshlq_s32(vmlaq_s32(vdupq_n_s32(1 << (a3 - 1)), v7, *result), vdupq_n_s32(-a3));
  if (a4)
  {
    v9 = 32 << a5;
    if (a5 <= 9)
    {
      v9 = 0x8000;
    }

    v10 = vdupq_n_s32(v9 - 1);
    v11 = vdupq_n_s32(-v9);
    v8 = vminq_s32(vmaxq_s32(v8, v11), v10);
  }

  else
  {
    if (a5 <= 10)
    {
      v12 = 10;
    }

    else
    {
      v12 = a5;
    }

    v13 = 32 << v12;
    v11 = vdupq_n_s32(-v13);
    v10 = vdupq_n_s32(v13 - 1);
    if (a6)
    {
      v8 = vrshlq_s32(v8, vdupq_n_s32(-a6));
    }
  }

  v14 = 0;
  v15 = vminq_s32(vmaxq_s32(v8, v11), v10);
  do
  {
    *(a2 + v14) = v15;
    v14 += 16;
  }

  while (v14 != 512);
  return result;
}

int32x4_t sub_277AF0D1C(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v7 = 0;
  *result.i8 = vdup_n_s32(0x2D42u);
  v9 = vdupq_n_s64(0x800uLL);
  do
  {
    a2[v7] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v9, vmovn_s64(*(a1 + v7 * 16)), *result.i8), 0xCuLL), vshrq_n_u64(vmlal_s32(v9, vmovn_s64(vrev64q_s32(*(a1 + v7 * 16))), *result.i8), 0xCuLL));
    ++v7;
  }

  while (v7 != 16);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v10 = 10;
    }

    else
    {
      v10 = a5;
    }

    v11 = 32 << v10;
    v16 = vdupq_n_s32(v11 - 1);
    v17 = vdupq_n_s32(-v11);
    sub_277AEAB84(a2, a6);
    v12 = a2 + 2;
    v13 = -4;
    do
    {
      v14 = vminq_s32(vmaxq_s32(v12[-1], v17), v16);
      v12[-2] = vminq_s32(vmaxq_s32(v12[-2], v17), v16);
      v12[-1] = v14;
      result = vminq_s32(vmaxq_s32(*v12, v17), v16);
      v15 = vminq_s32(vmaxq_s32(v12[1], v17), v16);
      *v12 = result;
      v12[1] = v15;
      v12 += 4;
      v13 += 4;
    }

    while (v13 < 0xC);
  }

  return result;
}

int32x4_t *sub_277AF0E14(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (v6 + a5 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 + a5 - 1);
  }

  v8 = vdupq_n_s32(-v7);
  v9 = vdupq_n_s32(v7 - 1);
  v10 = vdupq_n_s32(-a3);
  v11 = vdupq_n_s32(1 << (a3 - 1));
  v12 = &dword_277C42240[64 * a3 - 638];
  v13 = vld1q_dup_f32(v12);
  v14 = &dword_277C42240[64 * a3 - 578];
  v15 = vld1q_dup_f32(v14);
  v17 = result[14];
  v16 = result[15];
  v18 = result[1];
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v13, v16), v15, *result), v10);
  v20 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, *result, v13), v15, v16), v10);
  v21 = &dword_277C42240[64 * a3 - 630];
  v22 = vld1q_dup_f32(v21);
  v23 = &dword_277C42240[64 * a3 - 586];
  v24 = vld1q_dup_f32(v23);
  v26 = result[12];
  v25 = result[13];
  v27 = result[2];
  v28 = result[3];
  v29 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v22, v25), v24, v27), v10);
  v30 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v27, v22), v24, v25), v10);
  v31 = &dword_277C42240[64 * a3 - 622];
  v32 = vld1q_dup_f32(v31);
  v33 = &dword_277C42240[64 * a3 - 594];
  v34 = vld1q_dup_f32(v33);
  v36 = result[10];
  v35 = result[11];
  v37 = result[4];
  v38 = result[5];
  v39 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v32, v35), v34, v37), v10);
  v40 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v37, v32), v34, v35), v10);
  v41 = &dword_277C42240[64 * a3 - 614];
  v42 = vld1q_dup_f32(v41);
  v43 = &dword_277C42240[64 * a3 - 602];
  v44 = vld1q_dup_f32(v43);
  v46 = result[8];
  v45 = result[9];
  v47 = result[6];
  v48 = result[7];
  v49 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v42, v45), v44, v47), v10);
  v50 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v47, v42), v44, v45), v10);
  v51 = &dword_277C42240[64 * a3 - 606];
  v52 = vld1q_dup_f32(v51);
  v53 = &dword_277C42240[64 * a3 - 610];
  v54 = vld1q_dup_f32(v53);
  v55 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v52, v48), v54, v46), v10);
  v56 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v46, v52), v54, v48), v10);
  v57 = &dword_277C42240[64 * a3 - 598];
  v58 = vld1q_dup_f32(v57);
  v59 = &dword_277C42240[64 * a3 - 618];
  v60 = vld1q_dup_f32(v59);
  v61 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v58, v38), v60, v36), v10);
  v62 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v36, v58), v60, v38), v10);
  v63 = &dword_277C42240[64 * a3 - 590];
  v64 = vld1q_dup_f32(v63);
  v65 = &dword_277C42240[64 * a3 - 626];
  v66 = vld1q_dup_f32(v65);
  v67 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v64, v28), v66, v26), v10);
  v68 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v26, v64), v66, v28), v10);
  v69 = &dword_277C42240[64 * a3 - 582];
  v70 = vld1q_dup_f32(v69);
  v71 = &dword_277C42240[64 * a3 - 634];
  v72 = vld1q_dup_f32(v71);
  v73 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v70, v18), v72, v17), v10);
  v74 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v17, v70), v72, v18), v10);
  v75 = vsubq_s32(v19, v55);
  v76 = vminq_s32(vmaxq_s32(vaddq_s32(v55, v19), v8), v9);
  v77 = vminq_s32(vmaxq_s32(v75, v8), v9);
  v78 = vsubq_s32(v20, v56);
  v79 = vminq_s32(vmaxq_s32(vaddq_s32(v56, v20), v8), v9);
  v80 = vminq_s32(vmaxq_s32(v78, v8), v9);
  v81 = vsubq_s32(v29, v61);
  v82 = vminq_s32(vmaxq_s32(vaddq_s32(v61, v29), v8), v9);
  v83 = vminq_s32(vmaxq_s32(v81, v8), v9);
  v84 = vsubq_s32(v30, v62);
  v85 = vminq_s32(vmaxq_s32(vaddq_s32(v62, v30), v8), v9);
  v86 = vminq_s32(vmaxq_s32(v84, v8), v9);
  v87 = vminq_s32(vmaxq_s32(vaddq_s32(v67, v39), v8), v9);
  v88 = vminq_s32(vmaxq_s32(vsubq_s32(v39, v67), v8), v9);
  v89 = vminq_s32(vmaxq_s32(vaddq_s32(v68, v40), v8), v9);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v40, v68), v8), v9);
  v91 = vminq_s32(vmaxq_s32(vaddq_s32(v73, v49), v8), v9);
  v92 = vminq_s32(vmaxq_s32(vsubq_s32(v49, v73), v8), v9);
  v93 = vminq_s32(vmaxq_s32(vaddq_s32(v74, v50), v8), v9);
  v94 = vminq_s32(vmaxq_s32(vsubq_s32(v50, v74), v8), v9);
  v95 = &dword_277C42240[64 * a3 - 632];
  v96 = vld1q_dup_f32(v95);
  LODWORD(v95) = dword_277C42240[64 * a3 - 584];
  v97 = vdupq_n_s32(v95);
  v98 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v96, v77), v97, v80), v10);
  v99 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v80, v96), v97, v77), v10);
  v100 = &dword_277C42240[64 * a3 - 600];
  v101 = vld1q_dup_f32(v100);
  LODWORD(v100) = dword_277C42240[64 * a3 - 616];
  v102 = vdupq_n_s32(v100);
  v103 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v101, v83), v102, v86), v10);
  v104 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v86, v101), v102, v83), v10);
  v105 = vdupq_n_s32(-v95);
  v106 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v96, v90), v105, v88), v10);
  v107 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v96, v88), v90, v105), v10);
  v108 = vdupq_n_s32(-v100);
  v109 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v101, v94), v108, v92), v10);
  v110 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v101, v92), v94, v108), v10);
  v111 = vaddq_s32(v87, v76);
  v112 = vsubq_s32(v76, v87);
  v113 = vminq_s32(vmaxq_s32(v111, v8), v9);
  v114 = vminq_s32(vmaxq_s32(v112, v8), v9);
  v115 = vaddq_s32(v89, v79);
  v116 = vsubq_s32(v79, v89);
  v117 = vminq_s32(vmaxq_s32(v115, v8), v9);
  v118 = vminq_s32(vmaxq_s32(v116, v8), v9);
  v119 = vminq_s32(vmaxq_s32(vaddq_s32(v91, v82), v8), v9);
  v120 = vminq_s32(vmaxq_s32(vsubq_s32(v82, v91), v8), v9);
  v121 = vminq_s32(vmaxq_s32(vaddq_s32(v93, v85), v8), v9);
  v122 = vminq_s32(vmaxq_s32(vsubq_s32(v85, v93), v8), v9);
  v123 = vminq_s32(vmaxq_s32(vaddq_s32(v106, v98), v8), v9);
  v124 = vminq_s32(vmaxq_s32(vsubq_s32(v98, v106), v8), v9);
  v125 = vminq_s32(vmaxq_s32(vaddq_s32(v107, v99), v8), v9);
  v126 = vminq_s32(vmaxq_s32(vsubq_s32(v99, v107), v8), v9);
  v127 = vminq_s32(vmaxq_s32(vaddq_s32(v109, v103), v8), v9);
  v128 = vminq_s32(vmaxq_s32(vsubq_s32(v103, v109), v8), v9);
  v129 = vminq_s32(vmaxq_s32(vaddq_s32(v110, v104), v8), v9);
  v130 = vminq_s32(vmaxq_s32(vsubq_s32(v104, v110), v8), v9);
  v131 = &dword_277C42240[64 * a3 - 624];
  v132 = vld1q_dup_f32(v131);
  LODWORD(v131) = dword_277C42240[64 * a3 - 592];
  v133 = vdupq_n_s32(v131);
  v134 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v132, v114), v133, v118), v10);
  v135 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v118, v132), v133, v114), v10);
  v136 = vdupq_n_s32(-v131);
  v137 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v132, v122), v136, v120), v10);
  v138 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v132, v120), v122, v136), v10);
  v139 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v132, v124), v133, v126), v10);
  v140 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v126, v132), v133, v124), v10);
  v141 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v132, v130), v136, v128), v10);
  v142 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v132, v128), v130, v136), v10);
  v143 = vminq_s32(vmaxq_s32(vaddq_s32(v119, v113), v8), v9);
  v144 = vminq_s32(vmaxq_s32(vsubq_s32(v113, v119), v8), v9);
  v145 = vminq_s32(vmaxq_s32(vaddq_s32(v121, v117), v8), v9);
  v146 = vminq_s32(vmaxq_s32(vsubq_s32(v117, v121), v8), v9);
  v147 = vminq_s32(vmaxq_s32(vaddq_s32(v137, v134), v8), v9);
  v148 = vminq_s32(vmaxq_s32(vsubq_s32(v134, v137), v8), v9);
  v149 = vminq_s32(vmaxq_s32(vaddq_s32(v138, v135), v8), v9);
  v150 = vminq_s32(vmaxq_s32(vsubq_s32(v135, v138), v8), v9);
  v151 = vminq_s32(vmaxq_s32(vaddq_s32(v127, v123), v8), v9);
  v152 = vminq_s32(vmaxq_s32(vsubq_s32(v123, v127), v8), v9);
  v153 = vminq_s32(vmaxq_s32(vaddq_s32(v129, v125), v8), v9);
  v154 = vminq_s32(vmaxq_s32(vsubq_s32(v125, v129), v8), v9);
  v155 = vminq_s32(vmaxq_s32(vaddq_s32(v141, v139), v8), v9);
  v156 = vminq_s32(vmaxq_s32(vsubq_s32(v139, v141), v8), v9);
  v157 = vminq_s32(vmaxq_s32(vaddq_s32(v142, v140), v8), v9);
  v158 = vminq_s32(vmaxq_s32(vsubq_s32(v140, v142), v8), v9);
  v159 = &dword_277C42240[64 * a3 - 608];
  v160 = vld1q_dup_f32(v159);
  v161 = vmlaq_s32(v11, v160, v144);
  v162 = vmulq_s32(v160, v146);
  v163 = vshlq_s32(vaddq_s32(v161, v162), v10);
  v164 = vshlq_s32(vsubq_s32(v161, v162), v10);
  v165 = vmlaq_s32(v11, v160, v148);
  v166 = vmulq_s32(v160, v150);
  v167 = vshlq_s32(vaddq_s32(v165, v166), v10);
  v168 = vshlq_s32(vsubq_s32(v165, v166), v10);
  v169 = vmlaq_s32(v11, v160, v152);
  v170 = vmulq_s32(v160, v154);
  v171 = vshlq_s32(vaddq_s32(v169, v170), v10);
  v172 = vshlq_s32(vsubq_s32(v169, v170), v10);
  v173 = vmlaq_s32(v11, v160, v156);
  v174 = vmulq_s32(v160, v158);
  v175 = vshlq_s32(vaddq_s32(v173, v174), v10);
  v176 = vshlq_s32(vsubq_s32(v173, v174), v10);
  if (a4)
  {
    v177 = vnegq_s32(v147);
    *a2 = v143;
    a2[1] = vnegq_s32(v151);
    v178 = vnegq_s32(v175);
    v179 = vnegq_s32(v163);
    v180 = vnegq_s32(v172);
    v181 = vnegq_s32(v168);
    v182 = vnegq_s32(v157);
    v183 = vnegq_s32(v145);
  }

  else
  {
    if (a5 <= 10)
    {
      v184 = 10;
    }

    else
    {
      v184 = a5;
    }

    v185 = 32 << v184;
    v186 = vdupq_n_s32(-v185);
    v187 = vdupq_n_s32(v185 - 1);
    v188 = vdupq_n_s32(-a6);
    v189 = vdupq_n_s32(1 << a6 >> 1);
    *a2 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v143, v189), v188), v186), v187);
    a2[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v151), v188), v186), v187);
    v155 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v155, v189), v188), v186), v187);
    v177 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v147), v188), v186), v187);
    v167 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v167, v189), v188), v186), v187);
    v178 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v175), v188), v186), v187);
    v171 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v171, v189), v188), v186), v187);
    v179 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v163), v188), v186), v187);
    v164 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v164, v189), v188), v186), v187);
    v180 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v172), v188), v186), v187);
    v176 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v176, v189), v188), v186), v187);
    v181 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v168), v188), v186), v187);
    v149 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v149, v189), v188), v186), v187);
    v182 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v157), v188), v186), v187);
    v153 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v153, v189), v188), v186), v187);
    v183 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v189, v145), v188), v186), v187);
  }

  a2[2] = v155;
  a2[3] = v177;
  a2[4] = v167;
  a2[5] = v178;
  a2[6] = v171;
  a2[7] = v179;
  a2[8] = v164;
  a2[9] = v180;
  a2[10] = v176;
  a2[11] = v181;
  a2[12] = v149;
  a2[13] = v182;
  a2[14] = v153;
  a2[15] = v183;
  return result;
}

int32x4_t *sub_277AF15A4(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (v6 + a5 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 + a5 - 1);
  }

  v8 = vdupq_n_s32(-v7);
  v9 = vdupq_n_s32(v7 - 1);
  v10 = vdupq_n_s32(-a3);
  v11 = vdupq_n_s32(1 << (a3 - 1));
  v12 = &dword_277C42240[64 * a3 - 578];
  v13 = vld1q_dup_f32(v12);
  v14 = result[1];
  v15 = vshlq_s32(vmlaq_s32(v11, v13, *result), v10);
  v16 = &dword_277C42240[64 * a3 - 638];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlsq_s32(v11, v17, *result), v10);
  v19 = &dword_277C42240[64 * a3 - 586];
  v20 = vld1q_dup_f32(v19);
  v21 = result[2];
  v22 = result[3];
  v23 = vshlq_s32(vmlaq_s32(v11, v20, v21), v10);
  v24 = &dword_277C42240[64 * a3 - 630];
  v25 = vld1q_dup_f32(v24);
  v26 = vshlq_s32(vmlsq_s32(v11, v25, v21), v10);
  v27 = &dword_277C42240[64 * a3 - 594];
  v28 = vld1q_dup_f32(v27);
  v29 = result[4];
  v30 = result[5];
  v31 = vshlq_s32(vmlaq_s32(v11, v28, v29), v10);
  v32 = &dword_277C42240[64 * a3 - 622];
  v33 = vld1q_dup_f32(v32);
  v34 = vshlq_s32(vmlsq_s32(v11, v33, v29), v10);
  v35 = &dword_277C42240[64 * a3 - 602];
  v36 = vld1q_dup_f32(v35);
  v37 = result[6];
  v38 = result[7];
  v39 = vshlq_s32(vmlaq_s32(v11, v36, v37), v10);
  v40 = &dword_277C42240[64 * a3 - 614];
  v41 = vld1q_dup_f32(v40);
  v42 = vshlq_s32(vmlsq_s32(v11, v41, v37), v10);
  v43 = &dword_277C42240[64 * a3 - 606];
  v44 = vld1q_dup_f32(v43);
  v45 = vshlq_s32(vmlaq_s32(v11, v44, v38), v10);
  v46 = &dword_277C42240[64 * a3 - 610];
  v47 = vld1q_dup_f32(v46);
  v48 = vshlq_s32(vmlaq_s32(v11, v47, v38), v10);
  v49 = &dword_277C42240[64 * a3 - 598];
  v50 = vld1q_dup_f32(v49);
  v51 = vshlq_s32(vmlaq_s32(v11, v50, v30), v10);
  v52 = &dword_277C42240[64 * a3 - 618];
  v53 = vld1q_dup_f32(v52);
  v54 = vshlq_s32(vmlaq_s32(v11, v53, v30), v10);
  v55 = &dword_277C42240[64 * a3 - 590];
  v56 = vld1q_dup_f32(v55);
  v57 = vshlq_s32(vmlaq_s32(v11, v56, v22), v10);
  v58 = &dword_277C42240[64 * a3 - 626];
  v59 = vld1q_dup_f32(v58);
  v60 = vshlq_s32(vmlaq_s32(v11, v59, v22), v10);
  v61 = &dword_277C42240[64 * a3 - 582];
  v62 = vld1q_dup_f32(v61);
  v63 = vshlq_s32(vmlaq_s32(v11, v62, v14), v10);
  v64 = &dword_277C42240[64 * a3 - 634];
  v65 = vld1q_dup_f32(v64);
  v66 = vshlq_s32(vmlaq_s32(v11, v65, v14), v10);
  v67 = vaddq_s32(v45, v15);
  v68 = vsubq_s32(v15, v45);
  v69 = vminq_s32(vmaxq_s32(v67, v8), v9);
  v70 = vminq_s32(vmaxq_s32(v68, v8), v9);
  v71 = vaddq_s32(v48, v18);
  v72 = vsubq_s32(v18, v48);
  v73 = vminq_s32(vmaxq_s32(v71, v8), v9);
  v74 = vminq_s32(vmaxq_s32(v72, v8), v9);
  v75 = vaddq_s32(v51, v23);
  v76 = vsubq_s32(v23, v51);
  v77 = vminq_s32(vmaxq_s32(v75, v8), v9);
  v78 = vminq_s32(vmaxq_s32(v76, v8), v9);
  v79 = vaddq_s32(v54, v26);
  v80 = vsubq_s32(v26, v54);
  v81 = vminq_s32(vmaxq_s32(v79, v8), v9);
  v82 = vminq_s32(vmaxq_s32(v80, v8), v9);
  v83 = vaddq_s32(v57, v31);
  v84 = vsubq_s32(v31, v57);
  v85 = vminq_s32(vmaxq_s32(v83, v8), v9);
  v86 = vminq_s32(vmaxq_s32(v84, v8), v9);
  v87 = vaddq_s32(v60, v34);
  v88 = vsubq_s32(v34, v60);
  v89 = vminq_s32(vmaxq_s32(v87, v8), v9);
  v90 = vminq_s32(vmaxq_s32(v88, v8), v9);
  v91 = vaddq_s32(v63, v39);
  v92 = vsubq_s32(v39, v63);
  v93 = vminq_s32(vmaxq_s32(v91, v8), v9);
  v94 = vminq_s32(vmaxq_s32(v92, v8), v9);
  v95 = vaddq_s32(v66, v42);
  v96 = vsubq_s32(v42, v66);
  v97 = vminq_s32(vmaxq_s32(v95, v8), v9);
  v98 = vminq_s32(vmaxq_s32(v96, v8), v9);
  v99 = &dword_277C42240[64 * a3 - 584];
  v100 = vld1q_dup_f32(v99);
  v101 = vmlaq_s32(v11, v100, v70);
  v102 = &dword_277C42240[64 * a3 - 632];
  v103 = vld1q_dup_f32(v102);
  v104 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v100, v74), v103, v70), v10);
  v105 = vshlq_s32(vmlsq_s32(v101, v74, v103), v10);
  v106 = &dword_277C42240[64 * a3 - 616];
  v107 = vld1q_dup_f32(v106);
  v108 = &dword_277C42240[64 * a3 - 600];
  v109 = vld1q_dup_f32(v108);
  v110 = vmlaq_s32(v11, v107, v78);
  v111 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v107, v82), v109, v78), v10);
  v112 = vshlq_s32(vmlsq_s32(v110, v82, v109), v10);
  v113 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v86, v100), v103, v90), v10);
  v114 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v100, v90), v103, v86), v10);
  v115 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v94, v107), v109, v98), v10);
  v116 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v107, v98), v109, v94), v10);
  v117 = vaddq_s32(v85, v69);
  v118 = vsubq_s32(v69, v85);
  v119 = vminq_s32(vmaxq_s32(v117, v8), v9);
  v120 = vminq_s32(vmaxq_s32(v118, v8), v9);
  v121 = vaddq_s32(v89, v73);
  v122 = vsubq_s32(v73, v89);
  v123 = vminq_s32(vmaxq_s32(v121, v8), v9);
  v124 = vminq_s32(vmaxq_s32(v122, v8), v9);
  v125 = vminq_s32(vmaxq_s32(vaddq_s32(v93, v77), v8), v9);
  v126 = vminq_s32(vmaxq_s32(vsubq_s32(v77, v93), v8), v9);
  v127 = vsubq_s32(v81, v97);
  v128 = vminq_s32(vmaxq_s32(vaddq_s32(v97, v81), v8), v9);
  v129 = vminq_s32(vmaxq_s32(v127, v8), v9);
  v130 = vminq_s32(vmaxq_s32(vaddq_s32(v113, v104), v8), v9);
  v131 = vminq_s32(vmaxq_s32(vsubq_s32(v104, v113), v8), v9);
  v132 = vminq_s32(vmaxq_s32(vaddq_s32(v114, v105), v8), v9);
  v133 = vminq_s32(vmaxq_s32(vsubq_s32(v105, v114), v8), v9);
  v134 = vminq_s32(vmaxq_s32(vaddq_s32(v115, v111), v8), v9);
  v135 = vminq_s32(vmaxq_s32(vsubq_s32(v111, v115), v8), v9);
  v136 = vminq_s32(vmaxq_s32(vaddq_s32(v116, v112), v8), v9);
  v137 = vminq_s32(vmaxq_s32(vsubq_s32(v112, v116), v8), v9);
  v138 = &dword_277C42240[64 * a3 - 592];
  v139 = vld1q_dup_f32(v138);
  v140 = &dword_277C42240[64 * a3 - 624];
  v141 = vld1q_dup_f32(v140);
  v142 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v139, v124), v141, v120), v10);
  v143 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v139, v120), v124, v141), v10);
  v144 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v126, v139), v141, v129), v10);
  v145 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v139, v129), v141, v126), v10);
  v146 = vmlaq_s32(v11, v139, v131);
  v147 = vshlq_s32(vmlaq_s32(vmulq_s32(v139, v133), v141, v131), v10);
  v148 = vshlq_s32(vmlsq_s32(v146, v133, v141), v10);
  v149 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v135, v139), v141, v137), v10);
  v150 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v139, v137), v141, v135), v10);
  v151 = vminq_s32(vmaxq_s32(vaddq_s32(v125, v119), v8), v9);
  v152 = vminq_s32(vmaxq_s32(vsubq_s32(v119, v125), v8), v9);
  v153 = vaddq_s32(v128, v123);
  v154 = vsubq_s32(v123, v128);
  v155 = vminq_s32(vmaxq_s32(v153, v8), v9);
  v156 = vminq_s32(vmaxq_s32(v154, v8), v9);
  v157 = vminq_s32(vmaxq_s32(vaddq_s32(v144, v142), v8), v9);
  v158 = vminq_s32(vmaxq_s32(vsubq_s32(v142, v144), v8), v9);
  v159 = vminq_s32(vmaxq_s32(vaddq_s32(v145, v143), v8), v9);
  v160 = vminq_s32(vmaxq_s32(vsubq_s32(v143, v145), v8), v9);
  v161 = vminq_s32(vmaxq_s32(vaddq_s32(v134, v130), v8), v9);
  v162 = vminq_s32(vmaxq_s32(vsubq_s32(v130, v134), v8), v9);
  v163 = vminq_s32(vmaxq_s32(vaddq_s32(v136, v132), v8), v9);
  v164 = vminq_s32(vmaxq_s32(vsubq_s32(v132, v136), v8), v9);
  v165 = vminq_s32(vmaxq_s32(vaddq_s32(v149, v147), v8), v9);
  v166 = vminq_s32(vmaxq_s32(vsubq_s32(v147, v149), v8), v9);
  v167 = vminq_s32(vmaxq_s32(vaddq_s32(v150, v148), v8), v9);
  v168 = vminq_s32(vmaxq_s32(vsubq_s32(v148, v150), v8), v9);
  v169 = &dword_277C42240[64 * a3 - 608];
  v170 = vld1q_dup_f32(v169);
  v171 = vmlaq_s32(v11, v170, v152);
  v172 = vmulq_s32(v170, v156);
  v173 = vshlq_s32(vaddq_s32(v171, v172), v10);
  v174 = vshlq_s32(vsubq_s32(v171, v172), v10);
  v175 = vmlaq_s32(v11, v170, v158);
  v176 = vmulq_s32(v170, v160);
  v177 = vshlq_s32(vaddq_s32(v175, v176), v10);
  v178 = vshlq_s32(vsubq_s32(v175, v176), v10);
  v179 = vmlaq_s32(v11, v170, v162);
  v180 = vmulq_s32(v170, v164);
  v181 = vshlq_s32(vaddq_s32(v179, v180), v10);
  v182 = vshlq_s32(vsubq_s32(v179, v180), v10);
  v183 = vmlaq_s32(v11, v170, v166);
  v184 = vmulq_s32(v170, v168);
  v185 = vshlq_s32(vaddq_s32(v183, v184), v10);
  v186 = vshlq_s32(vsubq_s32(v183, v184), v10);
  if (a4)
  {
    v187 = vnegq_s32(v157);
    *a2 = v151;
    a2[1] = vnegq_s32(v161);
    v188 = vnegq_s32(v185);
    v189 = vnegq_s32(v173);
    v190 = vnegq_s32(v182);
    v191 = vnegq_s32(v178);
    v192 = vnegq_s32(v167);
    v193 = vnegq_s32(v155);
  }

  else
  {
    if (a5 <= 10)
    {
      v194 = 10;
    }

    else
    {
      v194 = a5;
    }

    v195 = 32 << v194;
    v196 = vdupq_n_s32(-v195);
    v197 = vdupq_n_s32(v195 - 1);
    v198 = vdupq_n_s32(-a6);
    v199 = vdupq_n_s32(1 << a6 >> 1);
    *a2 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v151, v199), v198), v196), v197);
    a2[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v161), v198), v196), v197);
    v165 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v165, v199), v198), v196), v197);
    v187 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v157), v198), v196), v197);
    v177 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v177, v199), v198), v196), v197);
    v188 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v185), v198), v196), v197);
    v181 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v181, v199), v198), v196), v197);
    v189 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v173), v198), v196), v197);
    v174 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v174, v199), v198), v196), v197);
    v190 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v182), v198), v196), v197);
    v186 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v186, v199), v198), v196), v197);
    v191 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v178), v198), v196), v197);
    v159 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v159, v199), v198), v196), v197);
    v192 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v167), v198), v196), v197);
    v163 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v163, v199), v198), v196), v197);
    v193 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v199, v155), v198), v196), v197);
  }

  a2[2] = v165;
  a2[3] = v187;
  a2[4] = v177;
  a2[5] = v188;
  a2[6] = v181;
  a2[7] = v189;
  a2[8] = v174;
  a2[9] = v190;
  a2[10] = v186;
  a2[11] = v191;
  a2[12] = v159;
  a2[13] = v192;
  a2[14] = v163;
  a2[15] = v193;
  return result;
}