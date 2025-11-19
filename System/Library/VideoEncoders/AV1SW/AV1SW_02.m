void *sub_27795D7CC(uint64_t a1, int *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = (a5 - 2);
  v8 = (a6 - 2);
  v9 = (a1 - 18);
  v10 = *(v7 + a3);
  *v9 = *v7;
  v9[1] = v10;
  v11 = v9 + 2;
  do
  {
    v12 = *a4++;
    v13 = *(a2 + 2);
    v14 = *a2;
    a2 = (a2 + a3);
    v15 = __OFSUB__(a7--, 1);
    *v11 = v12;
    *(v11 + 2) = v14;
    *(v11++ + 3) = v13;
  }

  while (!((a7 < 0) ^ v15 | (a7 == 0)));
  v16 = *(v8 + a3);
  *v11 = *v8;
  v11[1] = v16;
  return v11 + 2;
}

void *sub_27795D818(void *result, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a9 == 15)
  {
    return sub_27795E6CC(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = &unk_27A718F90 + 2 * (a4 & 1);
  v11 = &unk_27A718F58 + 2 * a6;
  v12 = vdupq_n_s16(a4);
  v13 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v12.i8, v9))))), 0);
  do
  {
    v14 = *a3;
    v15 = 0uLL;
    v16 = 2;
    do
    {
      v17 = *(a3 + 2 * *v11);
      v18 = *(a3 - 2 * *v11);
      v19 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v14, v17), v13));
      v20 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v14, v18), v13));
      v21 = vdupq_n_s16(*v10);
      v15 = vmlaq_s16(vmlaq_s16(v15, vmaxq_s16(vminq_s16(vsubq_s16(v17, v14), v19), vnegq_s16(v19)), v21), vmaxq_s16(vminq_s16(vsubq_s16(v18, v14), v20), vnegq_s16(v20)), v21);
      ++v11;
      --v16;
      ++v10;
    }

    while (v16);
    a3 += 4;
    v22 = __OFSUB__(a8--, 1);
    *result = vmovn_s16(vaddq_s16(v14, vrshrq_n_s16(vaddq_s16(v15, vcltzq_s16(v15)), 4uLL)));
    result = (result + a2);
    v11 -= 2;
    v10 -= 2;
  }

  while (!((a8 < 0) ^ v22 | (a8 == 0)));
  return result;
}

void *sub_27795D90C(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a9 == 15)
  {
    return sub_27795E7D8(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = &unk_27A718F58 + 2 * a6;
  v11 = vdupq_n_s16(a5);
  v12 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(v9, *v11.i8))))), 1);
  do
  {
    v13 = *a3;
    v14 = 0uLL;
    v15 = 2;
    do
    {
      v16 = v10 + 4;
      v17 = *(a3 + 2 * *v16);
      v18 = *(a3 - 2 * *v16);
      v16 += 8;
      v19 = *(a3 + 2 * *v16);
      v20 = *(a3 - 2 * *v16);
      v21 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v17), v12));
      v22 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v18), v12));
      v23 = vdupq_n_s16(v15);
      v24 = vmlaq_s16(vmlaq_s16(v14, vmaxq_s16(vminq_s16(vsubq_s16(v17, v13), v21), vnegq_s16(v21)), v23), vmaxq_s16(vminq_s16(vsubq_s16(v18, v13), v22), vnegq_s16(v22)), v23);
      v25 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v19), v12));
      v26 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v20), v12));
      v14 = vmlaq_s16(vmlaq_s16(v24, vmaxq_s16(vminq_s16(vsubq_s16(v19, v13), v25), vnegq_s16(v25)), v23), vmaxq_s16(vminq_s16(vsubq_s16(v20, v13), v26), vnegq_s16(v26)), v23);
      v10 = v16 - 11;
      --v15;
    }

    while (v15);
    a3 += 4;
    v27 = __OFSUB__(a8--, 1);
    *result = vmovn_s16(vaddq_s16(v13, vrshrq_n_s16(vaddq_s16(v14, vcltzq_s16(v14)), 4uLL)));
    result = (result + a2);
    v10 -= 2;
  }

  while (!((a8 < 0) ^ v27 | (a8 == 0)));
  return result;
}

void *sub_27795DA44(void *result, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a9 == 15)
  {
    return sub_27795E938(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = &unk_27A718F90 + 2 * (a4 & 1);
  v10 = &unk_27A718F58 + 2 * a6;
  v11 = vdupq_n_s16(a4);
  v12 = vdupq_n_s16(a5);
  v13 = vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v11.i8, *v12.i8)))));
  v14 = vdupq_lane_s16(v13, 1);
  v15 = vdupq_lane_s16(v13, 0);
  do
  {
    v16 = *a3;
    v17 = 0uLL;
    v18 = *a3;
    v19 = *a3;
    v20 = 2;
    do
    {
      v21 = *(a3 + 2 * *v10);
      v22 = *(a3 - 2 * *v10);
      v23 = v10 + 4;
      v24 = *(a3 + 2 * *v23);
      v25 = *(a3 - 2 * *v23);
      v26 = vminq_u16(vminq_u16(v18, v21), v22);
      v27 = vmaxq_s16(vmaxq_s16(v19, v21), v22);
      v28 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v16, v21), v15));
      v29 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v16, v22), v15));
      v30 = vdupq_n_s16(*v9);
      v31 = vmlaq_s16(vmlaq_s16(v17, vmaxq_s16(vminq_s16(vsubq_s16(v21, v16), v28), vnegq_s16(v28)), v30), vmaxq_s16(vminq_s16(vsubq_s16(v22, v16), v29), vnegq_s16(v29)), v30);
      v23 += 8;
      v32 = *(a3 + 2 * *v23);
      v33 = *(a3 - 2 * *v23);
      v34 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v24), v14));
      v35 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v25), v14));
      v36 = vdupq_n_s16(v20);
      v37 = vmlaq_s16(vmlaq_s16(v31, vmaxq_s16(vminq_s16(vsubq_s16(v24, v16), v34), vnegq_s16(v34)), v36), vmaxq_s16(vminq_s16(vsubq_s16(v25, v16), v35), vnegq_s16(v35)), v36);
      v18 = vminq_u16(vminq_u16(vminq_u16(vminq_u16(v26, v24), v25), v32), v33);
      v19 = vmaxq_s16(vmaxq_s16(vmaxq_s16(vmaxq_s16(v27, v24), v25), v32), v33);
      v38 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v32), v14));
      v39 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v33), v14));
      v17 = vmlaq_s16(vmlaq_s16(v37, vmaxq_s16(vminq_s16(vsubq_s16(v32, v16), v38), vnegq_s16(v38)), v36), vmaxq_s16(vminq_s16(vsubq_s16(v33, v16), v39), vnegq_s16(v39)), v36);
      v10 = v23 - 11;
      --v20;
      ++v9;
    }

    while (v20);
    a3 += 4;
    v40 = __OFSUB__(a8--, 1);
    *result = vmovn_s16(vmaxq_s16(vminq_s16(vaddq_s16(v16, vrshrq_n_s16(vaddq_s16(v17, vcltzq_s16(v17)), 4uLL)), v19), v18));
    result = (result + a2);
    v10 -= 2;
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v40 | (a8 == 0)));
  return result;
}

void *sub_27795DC38(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (!a4)
  {
    return sub_27795D90C(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  if (a5)
  {
    return sub_27795DA44(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return sub_27795D818(result, a2, a3, a4, a5, a6, a7, a8, a9);
}

_DWORD *sub_27795DC4C(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a9 == 15)
  {
    return sub_27795EB64(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = &unk_27A718F90 + 2 * (a4 & 1);
  v11 = &unk_27A718F74 + 2 * a6;
  v12 = vdupq_n_s16(a4);
  v13 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v12.i8, v9))))), 0);
  do
  {
    v14.i64[0] = *a3;
    v14.i64[1] = *(a3 + 16);
    v15 = 0uLL;
    v16 = 2;
    do
    {
      v17 = (a3 + 2 * *v11);
      v18 = (a3 - 2 * *v11);
      v19.i64[0] = *v17;
      v20.i64[0] = *v18;
      v19.i64[1] = v17[2];
      v20.i64[1] = v18[2];
      v21 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v14, v19), v13));
      v22 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v14, v20), v13));
      v23 = vdupq_n_s16(*v10);
      v15 = vmlaq_s16(vmlaq_s16(v15, vmaxq_s16(vminq_s16(vsubq_s16(v19, v14), v21), vnegq_s16(v21)), v23), vmaxq_s16(vminq_s16(vsubq_s16(v20, v14), v22), vnegq_s16(v22)), v23);
      ++v11;
      --v16;
      ++v10;
    }

    while (v16);
    v24 = vmovn_s16(vaddq_s16(v14, vrshrq_n_s16(vaddq_s16(v15, vcltzq_s16(v15)), 4uLL)));
    *result = v24.i32[0];
    v25 = (result + a2);
    a3 += 32;
    v26 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v25 = v24.i32[1];
    result = (v25 + a2);
    v11 -= 2;
    v10 -= 2;
  }

  while (!((a8 < 0) ^ v26 | (a8 == 0)));
  return result;
}

_DWORD *sub_27795DD5C(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a9 == 15)
  {
    return sub_27795ECA8(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = &unk_27A718F74 + 2 * a6;
  v11 = vdupq_n_s16(a5);
  v12 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(v9, *v11.i8))))), 1);
  do
  {
    v13.i64[0] = *a3;
    v13.i64[1] = *(a3 + 16);
    v14 = 0uLL;
    v15 = 2;
    do
    {
      v16 = v10 + 4;
      v17 = (a3 + 2 * *v16);
      v18 = (a3 - 2 * *v16);
      v19.i64[0] = *v17;
      v20.i64[0] = *v18;
      v19.i64[1] = v17[2];
      v20.i64[1] = v18[2];
      v16 += 8;
      v21 = (a3 + 2 * *v16);
      v22 = (a3 - 2 * *v16);
      v23.i64[0] = *v21;
      v24.i64[0] = *v22;
      v23.i64[1] = v21[2];
      v24.i64[1] = v22[2];
      v25 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v19), v12));
      v26 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v20), v12));
      v27 = vdupq_n_s16(v15);
      v28 = vmlaq_s16(vmlaq_s16(v14, vmaxq_s16(vminq_s16(vsubq_s16(v19, v13), v25), vnegq_s16(v25)), v27), vmaxq_s16(vminq_s16(vsubq_s16(v20, v13), v26), vnegq_s16(v26)), v27);
      v29 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v23), v12));
      v30 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v13, v24), v12));
      v14 = vmlaq_s16(vmlaq_s16(v28, vmaxq_s16(vminq_s16(vsubq_s16(v23, v13), v29), vnegq_s16(v29)), v27), vmaxq_s16(vminq_s16(vsubq_s16(v24, v13), v30), vnegq_s16(v30)), v27);
      v10 = v16 - 11;
      --v15;
    }

    while (v15);
    v31 = vmovn_s16(vaddq_s16(v13, vrshrq_n_s16(vaddq_s16(v14, vcltzq_s16(v14)), 4uLL)));
    *result = v31.i32[0];
    v32 = (result + a2);
    a3 += 32;
    v33 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v32 = v31.i32[1];
    result = (v32 + a2);
    v10 -= 2;
  }

  while (!((a8 < 0) ^ v33 | (a8 == 0)));
  return result;
}

_DWORD *sub_27795DEC0(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a9 == 15)
  {
    return sub_27795EE60(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = &unk_27A718F90 + 2 * (a4 & 1);
  v10 = &unk_27A718F74 + 2 * a6;
  v11 = vdupq_n_s16(a4);
  v12 = vdupq_n_s16(a5);
  v13 = vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v11.i8, *v12.i8)))));
  v14 = vdupq_lane_s16(v13, 1);
  v15 = vdupq_lane_s16(v13, 0);
  do
  {
    v16.i64[0] = *a3;
    v16.i64[1] = *(a3 + 16);
    v17 = 0uLL;
    v18 = v16;
    v19 = v16;
    v20 = 2;
    do
    {
      v21 = (a3 + 2 * *v10);
      v22 = (a3 - 2 * *v10);
      v23.i64[0] = *v21;
      v24.i64[0] = *v22;
      v23.i64[1] = v21[2];
      v24.i64[1] = v22[2];
      v25 = v10 + 4;
      v26 = (a3 + 2 * *v25);
      v27 = (a3 - 2 * *v25);
      v28.i64[0] = *v26;
      v29.i64[0] = *v27;
      v28.i64[1] = v26[2];
      v29.i64[1] = v27[2];
      v30 = vminq_u16(vminq_u16(v18, v23), v24);
      v31 = vmaxq_s16(vmaxq_s16(v19, v23), v24);
      v32 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v16, v23), v15));
      v33 = vqsubq_u16(v11, vshlq_u16(vabdq_u16(v16, v24), v15));
      v34 = vdupq_n_s16(*v9);
      v35 = vmlaq_s16(vmlaq_s16(v17, vmaxq_s16(vminq_s16(vsubq_s16(v23, v16), v32), vnegq_s16(v32)), v34), vmaxq_s16(vminq_s16(vsubq_s16(v24, v16), v33), vnegq_s16(v33)), v34);
      v25 += 8;
      v36 = (a3 + 2 * *v25);
      v37 = (a3 - 2 * *v25);
      v23.i64[0] = *v36;
      v24.i64[0] = *v37;
      v23.i64[1] = v36[2];
      v24.i64[1] = v37[2];
      v38 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v28), v14));
      v39 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v29), v14));
      v40 = vdupq_n_s16(v20);
      v41 = vmlaq_s16(vmlaq_s16(v35, vmaxq_s16(vminq_s16(vsubq_s16(v28, v16), v38), vnegq_s16(v38)), v40), vmaxq_s16(vminq_s16(vsubq_s16(v29, v16), v39), vnegq_s16(v39)), v40);
      v18 = vminq_u16(vminq_u16(vminq_u16(vminq_u16(v30, v28), v29), v23), v24);
      v19 = vmaxq_s16(vmaxq_s16(vmaxq_s16(vmaxq_s16(v31, v28), v29), v23), v24);
      v42 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v23), v14));
      v43 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v16, v24), v14));
      v17 = vmlaq_s16(vmlaq_s16(v41, vmaxq_s16(vminq_s16(vsubq_s16(v23, v16), v42), vnegq_s16(v42)), v40), vmaxq_s16(vminq_s16(vsubq_s16(v24, v16), v43), vnegq_s16(v43)), v40);
      v10 = v25 - 11;
      --v20;
      ++v9;
    }

    while (v20);
    v44 = vmovn_s16(vmaxq_s16(vminq_s16(vaddq_s16(v16, vrshrq_n_s16(vaddq_s16(v17, vcltzq_s16(v17)), 4uLL)), v19), v18));
    *result = v44.i32[0];
    v45 = (result + a2);
    a3 += 32;
    v46 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v45 = v44.i32[1];
    result = (v45 + a2);
    v10 -= 2;
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v46 | (a8 == 0)));
  return result;
}

_DWORD *sub_27795E0F0(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (!a4)
  {
    return sub_27795DD5C(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  if (a5)
  {
    return sub_27795DEC0(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return sub_27795DC4C(result, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_27795E104(uint8x8_t *a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a1;
  v4 = (a1 + a2);
  v6 = vsubl_u8(v5, 0x8080808080808080);
  v7 = vrev64q_s16(v6);
  v8 = vpaddq_s16(v6, 0);
  v9 = vaddq_s16(0, v6);
  *v3.i8 = vrev64_s16(*v8.i8);
  v10.i16[0] = vaddvq_s16(v6);
  v11 = vaddq_s16(0, vextq_s8(0, v6, 0xAuLL));
  v12 = vadd_s16(0, *&vextq_s8(v6, 0, 0xAuLL));
  v13 = v6;
  v14 = v6;
  v6.i64[0] = *v4;
  v15 = (v4 + a2);
  v16 = vextq_s8(v7, v7, 8uLL);
  v17 = vsubl_u8(*v6.i8, 0x8080808080808080);
  v18 = v8;
  v19 = v3;
  v20 = vrev64q_s16(v17);
  v21 = vpaddq_s16(v17, 0);
  v22 = vaddq_s16(v9, v17);
  v23 = vextq_s8(v20, v20, 8uLL);
  *v3.i8 = vrev64_s16(*v21.i8);
  v10.i16[1] = vaddvq_s16(v17);
  v24 = vaddq_s16(v11, vextq_s8(0, v17, 0xAuLL));
  v25 = vadd_s16(v12, *&vextq_s8(v17, 0, 0xAuLL));
  v26 = vaddq_s16(v13, v17);
  v27 = vextq_s8(0, v17, 0xEuLL);
  v28 = vextq_s8(v17, 0, 0xEuLL);
  v17.i64[0] = *v15;
  v29 = (v15 + a2);
  v30 = vaddq_s16(v14, v27);
  v31 = vaddq_s16(0, v28);
  v32 = vaddq_s16(v16, vextq_s8(0, v23, 0xEuLL));
  v33 = vaddq_s16(0, vextq_s8(v23, 0, 0xEuLL));
  v34 = vsubl_u8(*v17.i8, 0x8080808080808080);
  v35 = vaddq_s16(v18, vextq_s8(0, v21, 0xEuLL));
  v36 = vadd_s16(0, *&vextq_s8(v21, 0, 0xEuLL));
  v37 = vaddq_s16(v19, vextq_s8(0, v3, 0xEuLL));
  v38 = vadd_s16(0, *&vextq_s8(v3, 0, 0xEuLL));
  v39 = vrev64q_s16(v34);
  v40 = vpaddq_s16(v34, 0);
  v41 = vaddq_s16(v22, v34);
  v42 = vextq_s8(v39, v39, 8uLL);
  *v3.i8 = vrev64_s16(*v40.i8);
  v10.i16[2] = vaddvq_s16(v34);
  v43 = vaddq_s16(v24, vextq_s8(0, v34, 0xCuLL));
  v44 = vadd_s16(v25, *&vextq_s8(v34, 0, 0xCuLL));
  v45 = vaddq_s16(v26, vextq_s8(0, v34, 0xEuLL));
  v46 = vadd_s16(0, *&vextq_s8(v34, 0, 0xEuLL));
  v47 = vextq_s8(0, v34, 0xCuLL);
  v48 = vextq_s8(v34, 0, 0xCuLL);
  v34.i64[0] = *v29;
  v49 = (v29 + a2);
  v50 = vaddq_s16(v30, v47);
  v51 = vaddq_s16(v31, v48);
  v52 = vaddq_s16(v32, vextq_s8(0, v42, 0xCuLL));
  v53 = vaddq_s16(v33, vextq_s8(v42, 0, 0xCuLL));
  v54 = vsubl_u8(*v34.i8, 0x8080808080808080);
  v55 = vaddq_s16(v35, vextq_s8(0, v40, 0xCuLL));
  v56 = vadd_s16(v36, *&vextq_s8(v40, 0, 0xCuLL));
  v57 = vaddq_s16(v37, vextq_s8(0, v3, 0xCuLL));
  v58 = vadd_s16(v38, *&vextq_s8(v3, 0, 0xCuLL));
  v59 = vrev64q_s16(v54);
  v60 = vpaddq_s16(v54, 0);
  v61 = vaddq_s16(v41, v54);
  v62 = vextq_s8(v59, v59, 8uLL);
  *v3.i8 = vrev64_s16(*v60.i8);
  v10.i16[3] = vaddvq_s16(v54);
  v63 = vaddq_s16(v43, vextq_s8(0, v54, 0xCuLL));
  v64 = vadd_s16(v44, *&vextq_s8(v54, 0, 0xCuLL));
  v65 = vaddq_s16(v45, vextq_s8(0, v54, 0xEuLL));
  v66 = vadd_s16(v46, *&vextq_s8(v54, 0, 0xEuLL));
  v67 = vextq_s8(0, v54, 0xAuLL);
  v68 = vextq_s8(v54, 0, 0xAuLL);
  v54.i64[0] = *v49;
  v69 = (v49 + a2);
  v70 = vaddq_s16(v50, v67);
  v71 = vaddq_s16(v51, v68);
  v72 = vaddq_s16(v52, vextq_s8(0, v62, 0xAuLL));
  v73 = vaddq_s16(v53, vextq_s8(v62, 0, 0xAuLL));
  v74 = vsubl_u8(*v54.i8, 0x8080808080808080);
  v75 = vaddq_s16(v55, vextq_s8(0, v60, 0xAuLL));
  v76 = vadd_s16(v56, *&vextq_s8(v60, 0, 0xAuLL));
  v77 = vaddq_s16(v57, vextq_s8(0, v3, 0xAuLL));
  v78 = vadd_s16(v58, *&vextq_s8(v3, 0, 0xAuLL));
  v79 = vrev64q_s16(v74);
  v80 = vpaddq_s16(v74, 0);
  v81 = vaddq_s16(v61, v74);
  v82 = vextq_s8(v79, v79, 8uLL);
  *v3.i8 = vrev64_s16(*v80.i8);
  v10.i16[4] = vaddvq_s16(v74);
  v83 = vaddq_s16(v63, vextq_s8(0, v74, 0xEuLL));
  v84 = vadd_s16(v64, *&vextq_s8(v74, 0, 0xEuLL));
  v85 = vaddq_s16(v65, vextq_s8(0, v74, 0xCuLL));
  v86 = vadd_s16(v66, *&vextq_s8(v74, 0, 0xCuLL));
  v87 = vextq_s8(0, v74, 8uLL);
  v88 = vextq_s8(v74, 0, 8uLL);
  v74.i64[0] = *v69;
  result = v69 + a2;
  v89 = vaddq_s16(v72, vextq_s8(0, v82, 8uLL));
  v90 = vaddq_s16(v73, vextq_s8(v82, 0, 8uLL));
  v91 = vsubl_u8(*v74.i8, 0x8080808080808080);
  v92 = vaddq_s16(v75, vextq_s8(0, v80, 8uLL));
  v93 = vadd_s16(v76, *&vextq_s8(v80, 0, 8uLL));
  v94 = vaddq_s16(v77, vextq_s8(0, v3, 8uLL));
  v95 = vadd_s16(v78, *&vextq_s8(v3, 0, 8uLL));
  v96 = vrev64q_s16(v91);
  v97 = vpaddq_s16(v91, 0);
  v98 = vaddq_s16(v81, v91);
  v99 = vextq_s8(v96, v96, 8uLL);
  *v3.i8 = vrev64_s16(*v97.i8);
  v10.i16[5] = vaddvq_s16(v91);
  v100 = vaddq_s16(v83, vextq_s8(0, v91, 0xEuLL));
  v101 = vadd_s16(v84, *&vextq_s8(v91, 0, 0xEuLL));
  v102 = vaddq_s16(v85, vextq_s8(0, v91, 0xCuLL));
  v103 = vadd_s16(v86, *&vextq_s8(v91, 0, 0xCuLL));
  v104 = vaddq_s16(vaddq_s16(v70, v87), vextq_s8(0, v91, 6uLL));
  v105 = vaddq_s16(vaddq_s16(v71, v88), vextq_s8(v91, 0, 6uLL));
  v106 = vaddq_s16(v89, vextq_s8(0, v99, 6uLL));
  v107 = vaddq_s16(v90, vextq_s8(v99, 0, 6uLL));
  v108 = vsubl_u8(*result, 0x8080808080808080);
  v109 = vaddq_s16(v92, vextq_s8(0, v97, 6uLL));
  v110 = vadd_s16(v93, *&vextq_s8(v97, 0, 6uLL));
  v111 = vaddq_s16(v94, vextq_s8(0, v3, 6uLL));
  v112 = vadd_s16(v95, *&vextq_s8(v3, 0, 6uLL));
  v113 = vrev64q_s16(v108);
  v114 = vpaddq_s16(v108, 0);
  v115 = vaddq_s16(v98, v108);
  v116 = vextq_s8(v113, v113, 8uLL);
  *v3.i8 = vrev64_s16(*v114.i8);
  v10.i16[6] = vaddvq_s16(v108);
  v117 = vaddq_s16(v100, v108);
  v118 = vaddq_s16(v102, vextq_s8(0, v108, 0xAuLL));
  v119 = vadd_s16(v103, *&vextq_s8(v108, 0, 0xAuLL));
  v120 = vaddq_s16(v104, vextq_s8(0, v108, 4uLL));
  v121 = vaddq_s16(v105, vextq_s8(v108, 0, 4uLL));
  v122 = vaddq_s16(v106, vextq_s8(0, v116, 4uLL));
  v123 = vaddq_s16(v107, vextq_s8(v116, 0, 4uLL));
  v124 = vsubl_u8(*(result + a2), 0x8080808080808080);
  v125 = vaddq_s16(v109, vextq_s8(0, v114, 4uLL));
  v126 = vadd_s16(v110, *&vextq_s8(v114, 0, 4uLL));
  v127 = vaddq_s16(v111, vextq_s8(0, v3, 4uLL));
  v128 = vadd_s16(v112, *&vextq_s8(v3, 0, 4uLL));
  v129 = vrev64q_s16(v124);
  v130 = vpaddq_s16(v124, 0);
  v131 = vaddq_s16(v115, v124);
  v132 = vextq_s8(v129, v129, 8uLL);
  *v3.i8 = vrev64_s16(*v130.i8);
  v10.i16[7] = vaddvq_s16(v124);
  v133 = vaddq_s16(v117, v124);
  v134 = vaddq_s16(v118, vextq_s8(0, v124, 0xAuLL));
  v135 = vadd_s16(v119, *&vextq_s8(v124, 0, 0xAuLL));
  v136 = vaddq_s16(v120, vextq_s8(0, v124, 2uLL));
  v137 = vaddq_s16(v122, vextq_s8(0, v132, 2uLL));
  v138 = vaddq_s16(v125, vextq_s8(0, v130, 2uLL));
  v139 = vadd_s16(v126, *&vextq_s8(v130, 0, 2uLL));
  v140 = vaddq_s16(v127, vextq_s8(0, v3, 2uLL));
  v141 = vadd_s16(v128, *&vextq_s8(v3, 0, 2uLL));
  v142.i64[0] = 0x6900000069;
  v142.i64[1] = 0x6900000069;
  v143 = vaddvq_s32(vmulq_s32(vmlal_high_s16(vmull_s16(*v131.i8, *v131.i8), v131, v131), v142));
  v144 = vrev64q_s16(vaddq_s16(v121, vextq_s8(v124, 0, 2uLL)));
  v145 = vrev64q_s16(vaddq_s16(v123, vextq_s8(v132, 0, 2uLL)));
  v146 = vextq_s8(v144, v144, 0xAuLL);
  v147 = vextq_s8(v145, v145, 0xAuLL);
  v161 = vaddvq_s32(vmulq_s32(vmlal_high_s16(vmull_s16(*v10.i8, *v10.i8), v10, v10), v142));
  v165 = v143;
  v148 = vmovl_u16(0xD2011801A40348);
  v149 = vmovl_high_u16(qword_27A718F30);
  v150 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v137.i8, *v137.i8), *v147.i8, *v147.i8), v148), vmlal_high_s16(vmull_high_s16(v137, v137), v147, v147), v149));
  v160[0] = vaddvq_s32(vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v136.i8, *v136.i8), *v146.i8, *v146.i8), v148), vmlal_high_s16(vmull_high_s16(v136, v136), v146, v146), v149));
  v163 = v150;
  v151 = vmovl_u16(0x69008C00D201A4);
  v152 = vmovl_u16(0x69006900690069);
  v153 = vmovl_u16(0x1A400D2008CLL);
  v154 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v138.i8, *v138.i8), v151), vmull_high_s16(v138, v138), v152), vmull_s16(v139, v139), v153));
  v155 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v140.i8, *v140.i8), v151), vmull_high_s16(v140, v140), v152), vmull_s16(v141, v141), v153));
  v156 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v133.i8, *v133.i8), v151), vmull_high_s16(v133, v133), v152), vmull_s16(v101, v101), v153));
  v157 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v134.i8, *v134.i8), v151), vmull_high_s16(v134, v134), v152), vmull_s16(v135, v135), v153));
  v160[1] = v154;
  v162 = v155;
  v158 = v160[0];
  v164 = v156;
  v166 = v157;
  LODWORD(result) = v154 > v160[0];
  if (v154 > v160[0])
  {
    v158 = v154;
  }

  if (v161 > v158)
  {
    LODWORD(result) = 2;
    v158 = v161;
  }

  if (v155 > v158)
  {
    LODWORD(result) = 3;
    v158 = v155;
  }

  if (v150 > v158)
  {
    LODWORD(result) = 4;
    v158 = v150;
  }

  if (v156 > v158)
  {
    LODWORD(result) = 5;
    v158 = v156;
  }

  if (v143 > v158)
  {
    LODWORD(result) = 6;
    v158 = v143;
  }

  if (v157 <= v158)
  {
    result = result;
  }

  else
  {
    result = 7;
  }

  if (v157 > v158)
  {
    v158 = v157;
  }

  *a3 = (v158 - v160[result ^ 4]) >> 10;
  return result;
}

void *sub_27795E6CC(void *result, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8)
{
  v9 = &unk_27A718F90 + 2 * (a4 & 1);
  v10 = &unk_27A718F58 + 2 * a6;
  v11 = vdupq_n_s8(a4);
  v12 = vdupq_lane_s8(vneg_s8(vqsub_u8(vdup_n_s8(a7), vsub_s8(0x707070707070707, vclz_s8(vtrn1_s8(*v11.i8, v8))))), 0);
  do
  {
    v13.i64[0] = *a3;
    v13.i64[1] = a3[2];
    v14.i64[0] = -1;
    v14.i64[1] = -1;
    v15 = 0uLL;
    v16 = 2;
    do
    {
      v17 = (a3 + *v10);
      v18 = (a3 - *v10);
      v19.i64[0] = *v17;
      v20.i64[0] = *v18;
      v19.i64[1] = v17[2];
      v20.i64[1] = v18[2];
      v21 = vabdq_u8(v13, v19);
      v22 = vabdq_u8(v13, v20);
      v23 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v21, v12)), v21);
      v24 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v22, v12)), v22);
      v25 = vdupq_n_s8(*v9);
      v14 = vmlaq_s8(v14, vbslq_s8(vcgtq_u8(v13, v19), vnegq_s8(v23), v23), v25);
      v15 = vmlaq_s8(v15, vbslq_s8(vcgtq_u8(v13, v20), vnegq_s8(v24), v24), v25);
      ++v10;
      --v16;
      ++v9;
    }

    while (v16);
    v26 = vrhaddq_s8(v14, v15);
    v27 = vsqaddq_u8(v13, vrshrq_n_s8(vbslq_s8(vcltzq_s8(v26), vhaddq_s8(v14, v15), v26), 3uLL));
    *result = v27.i64[0];
    v28 = (result + a2);
    a3 += 4;
    v29 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v28 = v27.i64[1];
    result = (v28 + a2);
    v10 -= 2;
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v29 | (a8 == 0)));
  return result;
}

void *sub_27795E7D8(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v9 = &unk_27A718F58 + 2 * a6;
  v10 = vdupq_n_s8(a5);
  v11 = vdupq_lane_s8(vneg_s8(vqsub_u8(vdup_n_s8(a7), vsub_s8(0x707070707070707, vclz_s8(vtrn1_s8(v8, *v10.i8))))), 1);
  do
  {
    v12.i64[0] = *a3;
    v12.i64[1] = a3[2];
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = 0uLL;
    v15 = 2;
    do
    {
      v16 = v9 + 4;
      v17 = (a3 + *v16);
      v18 = (a3 - *v16);
      v19.i64[0] = *v17;
      v20.i64[0] = *v18;
      v19.i64[1] = v17[2];
      v20.i64[1] = v18[2];
      v16 += 8;
      v21 = (a3 + *v16);
      v22 = (a3 - *v16);
      v23.i64[0] = *v21;
      v24.i64[0] = *v22;
      v23.i64[1] = v21[2];
      v24.i64[1] = v22[2];
      v25 = vabdq_u8(v12, v19);
      v26 = vabdq_u8(v12, v20);
      v27 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v25, v11)), v25);
      v28 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v26, v11)), v26);
      v29 = vdupq_n_s8(v15);
      v30 = vmlaq_s8(v13, vbslq_s8(vcgtq_u8(v12, v19), vnegq_s8(v27), v27), v29);
      v31 = vmlaq_s8(v14, vbslq_s8(vcgtq_u8(v12, v20), vnegq_s8(v28), v28), v29);
      v32 = vabdq_u8(v12, v23);
      v33 = vabdq_u8(v12, v24);
      v34 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v32, v11)), v32);
      v35 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v33, v11)), v33);
      v13 = vmlaq_s8(v30, vbslq_s8(vcgtq_u8(v12, v23), vnegq_s8(v34), v34), v29);
      v14 = vmlaq_s8(v31, vbslq_s8(vcgtq_u8(v12, v24), vnegq_s8(v35), v35), v29);
      v9 = v16 - 11;
      --v15;
    }

    while (v15);
    v36 = vrhaddq_s8(v13, v14);
    v37 = vsqaddq_u8(v12, vrshrq_n_s8(vbslq_s8(vcltzq_s8(v36), vhaddq_s8(v13, v14), v36), 3uLL));
    *result = v37.i64[0];
    v38 = (result + a2);
    a3 += 4;
    v39 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v38 = v37.i64[1];
    result = (v38 + a2);
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v39 | (a8 == 0)));
  return result;
}

void *sub_27795E938(void *result, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v8 = &unk_27A718F90 + 2 * (a4 & 1);
  v9 = &unk_27A718F58 + 2 * a6;
  v10 = vdupq_n_s8(a4);
  v11 = vdupq_n_s8(a5);
  v12 = vneg_s8(vqsub_u8(vdup_n_s8(a7), vsub_s8(0x707070707070707, vclz_s8(vtrn1_s8(*v10.i8, *v11.i8)))));
  v13 = vdupq_lane_s8(v12, 1);
  v14 = vdupq_lane_s8(v12, 0);
  do
  {
    v15.i64[0] = *a3;
    v15.i64[1] = a3[2];
    v16.i64[0] = -1;
    v16.i64[1] = -1;
    v17 = 0uLL;
    v18 = v15;
    v19 = v15;
    v20 = 2;
    do
    {
      v21 = (a3 + *v9);
      v22 = (a3 - *v9);
      v23.i64[0] = *v21;
      v24.i64[0] = *v22;
      v23.i64[1] = v21[2];
      v24.i64[1] = v22[2];
      v25 = v9 + 4;
      v26 = (a3 + *v25);
      v27 = (a3 - *v25);
      v28.i64[0] = *v26;
      v29.i64[0] = *v27;
      v28.i64[1] = v26[2];
      v29.i64[1] = v27[2];
      v30 = vminq_u8(vminq_u8(v18, v23), v24);
      v31 = vmaxq_u8(vmaxq_u8(v19, v23), v24);
      v32 = vabdq_u8(v15, v23);
      v33 = vabdq_u8(v15, v24);
      v34 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v32, v14)), v32);
      v35 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v33, v14)), v33);
      v36 = vdupq_n_s8(*v8);
      v37 = vmlaq_s8(v16, vbslq_s8(vcgtq_u8(v15, v23), vnegq_s8(v34), v34), v36);
      v38 = vmlaq_s8(v17, vbslq_s8(vcgtq_u8(v15, v24), vnegq_s8(v35), v35), v36);
      v25 += 8;
      v39 = (a3 + *v25);
      v40 = (a3 - *v25);
      v23.i64[0] = *v39;
      v24.i64[0] = *v40;
      v23.i64[1] = v39[2];
      v24.i64[1] = v40[2];
      v41 = vabdq_u8(v15, v28);
      v42 = vabdq_u8(v15, v29);
      v43 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v41, v13)), v41);
      v44 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v42, v13)), v42);
      v45 = vdupq_n_s8(v20);
      v46 = vmlaq_s8(v37, vbslq_s8(vcgtq_u8(v15, v28), vnegq_s8(v43), v43), v45);
      v47 = vmlaq_s8(v38, vbslq_s8(vcgtq_u8(v15, v29), vnegq_s8(v44), v44), v45);
      v18 = vminq_u8(vminq_u8(vminq_u8(vminq_u8(v30, v28), v29), v23), v24);
      v19 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v31, v28), v29), v23), v24);
      v48 = vabdq_u8(v15, v23);
      v49 = vabdq_u8(v15, v24);
      v50 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v48, v13)), v48);
      v51 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v49, v13)), v49);
      v16 = vmlaq_s8(v46, vbslq_s8(vcgtq_u8(v15, v23), vnegq_s8(v50), v50), v45);
      v17 = vmlaq_s8(v47, vbslq_s8(vcgtq_u8(v15, v24), vnegq_s8(v51), v51), v45);
      v9 = v25 - 11;
      --v20;
      ++v8;
    }

    while (v20);
    v52 = vrhaddq_s8(v16, v17);
    v53 = vmaxq_u8(vminq_u8(vsqaddq_u8(v15, vrshrq_n_s8(vbslq_s8(vcltzq_s8(v52), vhaddq_s8(v16, v17), v52), 3uLL)), v19), v18);
    *result = v53.i64[0];
    v54 = (result + a2);
    a3 += 4;
    v55 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v54 = v53.i64[1];
    result = (v54 + a2);
    v9 -= 2;
    v8 -= 2;
  }

  while (!((a8 < 0) ^ v55 | (a8 == 0)));
  return result;
}

_DWORD *sub_27795EB64(_DWORD *result, uint64_t a2, __int32 *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8)
{
  v9 = &unk_27A718F90 + 2 * (a4 & 1);
  v10 = &unk_27A718F74 + 2 * a6;
  v11 = vdupq_n_s8(a4);
  v12 = vdupq_lane_s8(vneg_s8(vqsub_u8(vdup_n_s8(a7), vsub_s8(0x707070707070707, vclz_s8(vtrn1_s8(*v11.i8, v8))))), 0);
  do
  {
    v13.i32[0] = *a3;
    v13.i32[1] = a3[2];
    v13.i32[2] = a3[4];
    v13.i32[3] = a3[6];
    v14.i64[0] = -1;
    v14.i64[1] = -1;
    v15 = 0uLL;
    v16 = 2;
    do
    {
      v17 = (a3 + *v10);
      v18 = (a3 - *v10);
      v19.i32[0] = *v17;
      v17 += 2;
      v20.i32[0] = *v18;
      v18 += 2;
      v19.i32[1] = *v17;
      v17 += 2;
      v20.i32[1] = *v18;
      v18 += 2;
      v19.i32[2] = *v17;
      v20.i32[2] = *v18;
      v19.i32[3] = v17[2];
      v20.i32[3] = v18[2];
      v21 = vabdq_u8(v13, v19);
      v22 = vabdq_u8(v13, v20);
      v23 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v21, v12)), v21);
      v24 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v22, v12)), v22);
      v25 = vdupq_n_s8(*v9);
      v14 = vmlaq_s8(v14, vbslq_s8(vcgtq_u8(v13, v19), vnegq_s8(v23), v23), v25);
      v15 = vmlaq_s8(v15, vbslq_s8(vcgtq_u8(v13, v20), vnegq_s8(v24), v24), v25);
      ++v10;
      --v16;
      ++v9;
    }

    while (v16);
    v26 = vrhaddq_s8(v14, v15);
    v27 = vsqaddq_u8(v13, vrshrq_n_s8(vbslq_s8(vcltzq_s8(v26), vhaddq_s8(v14, v15), v26), 3uLL));
    *result = v27.i32[0];
    v28 = (result + a2);
    a3 += 8;
    *v28 = v27.i32[1];
    v29 = (v28 + a2);
    v30 = __OFSUB__(a8, 4);
    a8 -= 4;
    *v29 = v27.i32[2];
    v31 = (v29 + a2);
    *v31 = v27.i32[3];
    result = (v31 + a2);
    v10 -= 2;
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v30 | (a8 == 0)));
  return result;
}

_DWORD *sub_27795ECA8(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v9 = &unk_27A718F74 + 2 * a6;
  v10 = vdupq_n_s8(a5);
  v11 = vdupq_lane_s8(vneg_s8(vqsub_u8(vdup_n_s8(a7), vsub_s8(0x707070707070707, vclz_s8(vtrn1_s8(v8, *v10.i8))))), 1);
  do
  {
    v12.i32[0] = *a3;
    v12.i32[1] = a3[2];
    v12.i32[2] = a3[4];
    v12.i32[3] = a3[6];
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = 0uLL;
    v15 = 2;
    do
    {
      v16 = v9 + 4;
      v17 = (a3 + *v16);
      v18 = (a3 - *v16);
      v19.i32[0] = *v17;
      v17 += 2;
      v20.i32[0] = *v18;
      v18 += 2;
      v19.i32[1] = *v17;
      v17 += 2;
      v20.i32[1] = *v18;
      v18 += 2;
      v19.i32[2] = *v17;
      v20.i32[2] = *v18;
      v19.i32[3] = v17[2];
      v20.i32[3] = v18[2];
      v16 += 8;
      v21 = (a3 + *v16);
      v22 = (a3 - *v16);
      v23.i32[0] = *v21;
      v21 += 2;
      v24.i32[0] = *v22;
      v22 += 2;
      v23.i32[1] = *v21;
      v21 += 2;
      v24.i32[1] = *v22;
      v22 += 2;
      v23.i32[2] = *v21;
      v24.i32[2] = *v22;
      v23.i32[3] = v21[2];
      v24.i32[3] = v22[2];
      v25 = vabdq_u8(v12, v19);
      v26 = vabdq_u8(v12, v20);
      v27 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v25, v11)), v25);
      v28 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v26, v11)), v26);
      v29 = vdupq_n_s8(v15);
      v30 = vmlaq_s8(v13, vbslq_s8(vcgtq_u8(v12, v19), vnegq_s8(v27), v27), v29);
      v31 = vmlaq_s8(v14, vbslq_s8(vcgtq_u8(v12, v20), vnegq_s8(v28), v28), v29);
      v32 = vabdq_u8(v12, v23);
      v33 = vabdq_u8(v12, v24);
      v34 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v32, v11)), v32);
      v35 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v33, v11)), v33);
      v13 = vmlaq_s8(v30, vbslq_s8(vcgtq_u8(v12, v23), vnegq_s8(v34), v34), v29);
      v14 = vmlaq_s8(v31, vbslq_s8(vcgtq_u8(v12, v24), vnegq_s8(v35), v35), v29);
      v9 = v16 - 11;
      --v15;
    }

    while (v15);
    v36 = vrhaddq_s8(v13, v14);
    v37 = vsqaddq_u8(v12, vrshrq_n_s8(vbslq_s8(vcltzq_s8(v36), vhaddq_s8(v13, v14), v36), 3uLL));
    *result = v37.i32[0];
    v38 = (result + a2);
    a3 += 8;
    *v38 = v37.i32[1];
    v39 = (v38 + a2);
    v40 = __OFSUB__(a8, 4);
    a8 -= 4;
    *v39 = v37.i32[2];
    v41 = (v39 + a2);
    *v41 = v37.i32[3];
    result = (v41 + a2);
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v40 | (a8 == 0)));
  return result;
}

_DWORD *sub_27795EE60(_DWORD *result, uint64_t a2, __int32 *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v8 = &unk_27A718F90 + 2 * (a4 & 1);
  v9 = &unk_27A718F74 + 2 * a6;
  v10 = vdupq_n_s8(a4);
  v11 = vdupq_n_s8(a5);
  v12 = vneg_s8(vqsub_u8(vdup_n_s8(a7), vsub_s8(0x707070707070707, vclz_s8(vtrn1_s8(*v10.i8, *v11.i8)))));
  v13 = vdupq_lane_s8(v12, 1);
  v14 = vdupq_lane_s8(v12, 0);
  do
  {
    v15.i32[0] = *a3;
    v15.i32[1] = a3[2];
    v15.i32[2] = a3[4];
    v15.i32[3] = a3[6];
    v16.i64[0] = -1;
    v16.i64[1] = -1;
    v17 = 0uLL;
    v18 = v15;
    v19 = v15;
    v20 = 2;
    do
    {
      v21 = (a3 + *v9);
      v22 = (a3 - *v9);
      v23.i32[0] = *v21;
      v21 += 2;
      v24.i32[0] = *v22;
      v22 += 2;
      v23.i32[1] = *v21;
      v21 += 2;
      v24.i32[1] = *v22;
      v22 += 2;
      v23.i32[2] = *v21;
      v24.i32[2] = *v22;
      v23.i32[3] = v21[2];
      v24.i32[3] = v22[2];
      v25 = v9 + 4;
      v26 = (a3 + *v25);
      v27 = (a3 - *v25);
      v28.i32[0] = *v26;
      v26 += 2;
      v29.i32[0] = *v27;
      v27 += 2;
      v28.i32[1] = *v26;
      v26 += 2;
      v29.i32[1] = *v27;
      v27 += 2;
      v28.i32[2] = *v26;
      v29.i32[2] = *v27;
      v28.i32[3] = v26[2];
      v29.i32[3] = v27[2];
      v30 = vminq_u8(vminq_u8(v18, v23), v24);
      v31 = vmaxq_u8(vmaxq_u8(v19, v23), v24);
      v32 = vabdq_u8(v15, v23);
      v33 = vabdq_u8(v15, v24);
      v34 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v32, v14)), v32);
      v35 = vminq_u8(vqsubq_u8(v10, vshlq_u8(v33, v14)), v33);
      v36 = vdupq_n_s8(*v8);
      v37 = vmlaq_s8(v16, vbslq_s8(vcgtq_u8(v15, v23), vnegq_s8(v34), v34), v36);
      v38 = vmlaq_s8(v17, vbslq_s8(vcgtq_u8(v15, v24), vnegq_s8(v35), v35), v36);
      v25 += 8;
      v39 = (a3 + *v25);
      v40 = (a3 - *v25);
      v23.i32[0] = *v39;
      v39 += 2;
      v24.i32[0] = *v40;
      v40 += 2;
      v23.i32[1] = *v39;
      v39 += 2;
      v24.i32[1] = *v40;
      v40 += 2;
      v23.i32[2] = *v39;
      v24.i32[2] = *v40;
      v23.i32[3] = v39[2];
      v24.i32[3] = v40[2];
      v41 = vabdq_u8(v15, v28);
      v42 = vabdq_u8(v15, v29);
      v43 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v41, v13)), v41);
      v44 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v42, v13)), v42);
      v45 = vdupq_n_s8(v20);
      v46 = vmlaq_s8(v37, vbslq_s8(vcgtq_u8(v15, v28), vnegq_s8(v43), v43), v45);
      v47 = vmlaq_s8(v38, vbslq_s8(vcgtq_u8(v15, v29), vnegq_s8(v44), v44), v45);
      v18 = vminq_u8(vminq_u8(vminq_u8(vminq_u8(v30, v28), v29), v23), v24);
      v19 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v31, v28), v29), v23), v24);
      v48 = vabdq_u8(v15, v23);
      v49 = vabdq_u8(v15, v24);
      v50 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v48, v13)), v48);
      v51 = vminq_u8(vqsubq_u8(v11, vshlq_u8(v49, v13)), v49);
      v16 = vmlaq_s8(v46, vbslq_s8(vcgtq_u8(v15, v23), vnegq_s8(v50), v50), v45);
      v17 = vmlaq_s8(v47, vbslq_s8(vcgtq_u8(v15, v24), vnegq_s8(v51), v51), v45);
      v9 = v25 - 11;
      --v20;
      ++v8;
    }

    while (v20);
    v52 = vrhaddq_s8(v16, v17);
    v53 = vmaxq_u8(vminq_u8(vsqaddq_u8(v15, vrshrq_n_s8(vbslq_s8(vcltzq_s8(v52), vhaddq_s8(v16, v17), v52), 3uLL)), v19), v18);
    *result = v53.i32[0];
    v54 = (result + a2);
    a3 += 8;
    *v54 = v53.i32[1];
    v55 = (v54 + a2);
    v56 = __OFSUB__(a8, 4);
    a8 -= 4;
    *v55 = v53.i32[2];
    v57 = (v55 + a2);
    *v57 = v53.i32[3];
    result = (v57 + a2);
    v9 -= 2;
    v8 -= 2;
  }

  while (!((a8 < 0) ^ v56 | (a8 == 0)));
  return result;
}

uint64_t sub_27795F104(uint64_t a1, uint64_t a2, int16x8_t *a3, __n128 *a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v7 = __clz(a7) - 18;
  v8 = vdupq_n_s16(-16384 - (1 << v7));
  v9 = vdupq_n_s16(-(v7 + 1));
  v10 = a4[1];
  v11 = vqsubq_s16(vmaxq_s16(vqaddq_s16(*a3, *a4), v8), v8);
  v12 = vqsubq_s16(vmaxq_s16(vqaddq_s16(a3[1], v10), v8), v8);
  return ((&dword_27795F4E4 - *(&dword_27795F4E4 + __clz(a5) - 24)))(a1, a2, &a3[2], &a4[2], v11, v12, *a4, v10, vshlq_s16(v11, v9), vshlq_s16(v12, v9));
}

void *sub_27795F16C(void *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, double a5, double a6, double a7, double a8, int16x8_t a9, int16x8_t a10, uint64_t a11, int a12)
{
  v14 = (result + a2);
  v15 = 2 * a2;
  while (1)
  {
    v16 = __OFSUB__(a12, 4);
    a12 -= 4;
    *result = a9.i64[0];
    v17 = (result + v15);
    *v14 = a9.i64[1];
    v18 = (v14 + v15);
    *v17 = a10.i64[0];
    result = (v17 + v15);
    *v18 = a10.i64[1];
    v14 = (v18 + v15);
    if ((a12 < 0) ^ v16 | (a12 == 0))
    {
      break;
    }

    v19 = *a3;
    v20 = a3[1];
    a3 += 2;
    v21 = *a4;
    v22 = a4[1];
    a4 += 2;
    a9 = vshlq_s16(vqsubq_s16(vmaxq_s16(vqaddq_s16(v19, v21), v12), v12), v13);
    a10 = vshlq_s16(vqsubq_s16(vmaxq_s16(vqaddq_s16(v20, v22), v12), v12), v13);
  }

  return result;
}

uint64_t sub_27795F4F0(uint64_t a1, uint64_t a2, int16x8_t *a3, __n128 *a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v8 = vdupq_n_s16(a8);
  v9 = __clz(a8) - 18;
  v10 = vdupq_n_s16(0x2000u >> v9);
  v11 = vdupq_n_s16(-v9);
  v12 = vnegq_s32(vdupq_n_s32(a7));
  v13 = a3[1];
  v14 = *a4;
  v15 = a4[1];
  v16 = vsubl_s16(v15.n128_u64[0], *v13.i8);
  v17 = vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v14, *a3), v12), 4uLL), v14);
  v18 = vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v15, v13), v12), 4uLL), v15);
  return ((&dword_27795FE2C - *(&dword_27795FE2C + __clz(a5) - 24)))(a1, a2, &a3[2], &a4[2], v17, v18, v14, v15, vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(vsubl_s16(a4->n128_u64[0], *a3->i8), v12), 4uLL), v14.n128_u64[0]), v17), v11), v10), v8), 0), vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(v16, v12), 4uLL), v15.n128_u64[0]), v18), v11), v10), v8), 0));
}

void *sub_27795F5A4(void *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, double a5, double a6, double a7, double a8, int16x8_t a9, int16x8_t a10, uint64_t a11, int a12)
{
  v17 = (result + a2);
  v18 = 2 * a2;
  while (1)
  {
    v19 = __OFSUB__(a12, 4);
    a12 -= 4;
    *result = a9.i64[0];
    v20 = (result + v18);
    *v17 = a9.i64[1];
    v21 = (v17 + v18);
    *v20 = a10.i64[0];
    result = (v20 + v18);
    *v21 = a10.i64[1];
    v17 = (v21 + v18);
    if ((a12 < 0) ^ v19 | (a12 == 0))
    {
      break;
    }

    v22 = *a3;
    v23 = a3[1];
    a3 += 2;
    v24 = *a4;
    v25 = a4[1];
    a4 += 2;
    a9 = vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(vsubl_s16(*v24.i8, *v22.i8), v12), 4uLL), *v24.i8), vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v24, v22), v12), 4uLL), v24)), v14), v13), v16), v15);
    a10 = vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(vsubl_s16(*v25.i8, *v23.i8), v12), 4uLL), *v25.i8), vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v25, v23), v12), 4uLL), v25)), v14), v13), v16), v15);
  }

  return result;
}

uint64_t sub_27795FE38(uint64_t a1, uint64_t a2, int16x8_t *a3, __n128 *a4, unsigned int a5, uint64_t a6, int8x16_t *a7, unsigned int a8)
{
  v8 = vdupq_n_s16(a8);
  v9 = __clz(a8) - 18;
  v10 = vdupq_n_s16(0x2000u >> v9);
  v11 = vdupq_n_s16(-v9);
  v12 = a3[1];
  v13 = vnegq_s8(*a7);
  v14 = *a4;
  v15 = a4[1];
  v16 = vmovl_s8(*v13.i8);
  v17 = vmovl_high_s8(v13);
  v18 = vsubl_s16(v15.n128_u64[0], *v12.i8);
  v19 = vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v14, *a3), vmovl_high_s16(v16)), 6uLL), v14);
  v20 = vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v15, v12), vmovl_high_s16(v17)), 6uLL), v15);
  return ((&dword_2779609CC - *(&dword_2779609CC + __clz(a5) - 24)))(a1, a2, &a3[2], &a4[2], v19, v20, v14, v15, vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(vsubl_s16(a4->n128_u64[0], *a3->i8), vmovl_s16(*v16.i8)), 6uLL), v14.n128_u64[0]), v19), v11), v10), v8), 0), vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(v18, vmovl_s16(*v17.i8)), 6uLL), v15.n128_u64[0]), v20), v11), v10), v8), 0));
}

void *sub_27795FF04(void *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, double a5, double a6, double a7, double a8, int16x8_t a9, int16x8_t a10, uint64_t a11, int a12, int8x16_t *a13)
{
  v17 = (result + a2);
  v18 = 2 * a2;
  while (1)
  {
    v19 = __OFSUB__(a12, 4);
    a12 -= 4;
    *result = a9.i64[0];
    v20 = (result + v18);
    *v17 = a9.i64[1];
    v21 = (v17 + v18);
    *v20 = a10.i64[0];
    result = (v20 + v18);
    *v21 = a10.i64[1];
    v17 = (v21 + v18);
    if ((a12 < 0) ^ v19 | (a12 == 0))
    {
      break;
    }

    v22 = *a13++;
    v23 = *a3;
    v24 = a3[1];
    a3 += 2;
    v25 = vnegq_s8(v22);
    v26 = *a4;
    v27 = a4[1];
    a4 += 2;
    v28 = vmovl_s8(*v25.i8);
    v29 = vmovl_high_s8(v25);
    a9 = vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(vsubl_s16(*v26.i8, *v23.i8), vmovl_s16(*v28.i8)), 6uLL), *v26.i8), vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v26, v23), vmovl_high_s16(v28)), 6uLL), v26)), v14), v13), v16), v15);
    a10 = vmaxq_s16(vminq_s16(vaddq_s16(vrshlq_s16(vuzp1q_s16(vaddw_s16(vshrq_n_s32(vmulq_s32(vsubl_s16(*v27.i8, *v24.i8), vmovl_s16(*v29.i8)), 6uLL), *v27.i8), vaddw_high_s16(vshrq_n_s32(vmulq_s32(vsubl_high_s16(v27, v24), vmovl_high_s16(v29)), 6uLL), v27)), v14), v13), v16), v15);
  }

  return result;
}

uint64_t sub_2779609D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5.n128_u64[0] = 0x4040404040404040;
  v5.n128_u64[1] = 0x4040404040404040;
  return ((&qword_277960D38 - *(&qword_277960D38 + __clz(a5) - 24)))(vdupq_n_s16(0x6BDFu), v5);
}

void *sub_277960A24(void *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, int8x16_t a6, uint64_t a7, int a8, int8x16_t *a9)
{
  do
  {
    v13 = *a3;
    v14 = a3[1];
    a3 += 2;
    v15 = *a4;
    v16 = a4[1];
    a4 += 2;
    v17 = __OFSUB__(a8, 4);
    a8 -= 4;
    v18 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v13, v15)), 0xAuLL);
    v19 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v14, v16)), 0xAuLL);
    v20 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v13.i8, 6uLL), v11), vsubl_s16(*v15.i8, *v13.i8), vmovl_u16(*v18.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v13, 6uLL), v11), vsubl_high_s16(v15, v13), vmovl_high_u16(v18)), v10)), v12);
    v21 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v14.i8, 6uLL), v11), vsubl_s16(*v16.i8, *v14.i8), vmovl_u16(*v19.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v14, 6uLL), v11), vsubl_high_s16(v16, v14), vmovl_high_u16(v19)), v10)), v12);
    *a9++ = vsubq_s8(a6, vuzp1q_s8(v18, v19));
    *result = v20.i64[0];
    v22 = (result + a2);
    *v9 = v20.i64[1];
    v23 = (v9 + a2);
    *v22 = v21.i64[0];
    result = (v22 + a2);
    *v23 = v21.i64[1];
    v9 = (v23 + a2);
  }

  while (!((a8 < 0) ^ v17 | (a8 == 0)));
  return result;
}

uint16x8_t *sub_277960AE4(uint16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, int8x16_t a6, uint64_t a7, int a8, int8x16_t *a9)
{
  do
  {
    v13 = *a3;
    v14 = a3[1];
    a3 += 2;
    v15 = *a4;
    v16 = a4[1];
    a4 += 2;
    v17 = __OFSUB__(a8, 2);
    a8 -= 2;
    v18 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v13, v15)), 0xAuLL);
    v19 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v14, v16)), 0xAuLL);
    *a9++ = vsubq_s8(a6, vuzp1q_s8(v18, v19));
    *result = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v13.i8, 6uLL), v11), vsubl_s16(*v15.i8, *v13.i8), vmovl_u16(*v18.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v13, 6uLL), v11), vsubl_high_s16(v15, v13), vmovl_high_u16(v18)), v10)), v12);
    result = (result + a2);
    *v9 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v14.i8, 6uLL), v11), vsubl_s16(*v16.i8, *v14.i8), vmovl_u16(*v19.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v14, 6uLL), v11), vsubl_high_s16(v16, v14), vmovl_high_u16(v19)), v10)), v12);
    v9 = (v9 + a2);
  }

  while (!((a8 < 0) ^ v17 | (a8 == 0)));
  return result;
}

uint16x8_t *sub_277960B9C(uint16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, unsigned int a5, int a6, int8x16_t *a7, uint16x8_t a8, int8x16_t a9)
{
  v13 = a2 - 2 * a5;
  v14 = (a7 + a5);
  v15 = (a4 + 2 * a5);
  v16 = (a3 + 2 * a5);
  do
  {
    v17 = a5;
    do
    {
      v18 = *a3;
      v19 = a3[1];
      a3 += 2;
      v20 = *a4;
      v21 = a4[1];
      a4 += 2;
      v22 = *v16;
      v23 = v16[1];
      v16 += 2;
      v24 = *v15;
      v25 = v15[1];
      v15 += 2;
      v26 = __OFSUB__(v17, 16);
      v17 -= 16;
      v27 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v18, v20)), 0xAuLL);
      v28 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v19, v21)), 0xAuLL);
      v29 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v22, v24)), 0xAuLL);
      v30 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v23, v25)), 0xAuLL);
      *a7++ = vsubq_s8(a9, vuzp1q_s8(v27, v28));
      *v14++ = vsubq_s8(a9, vuzp1q_s8(v29, v30));
      *result = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v18.i8, 6uLL), v11), vsubl_s16(*v20.i8, *v18.i8), vmovl_u16(*v27.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v18, 6uLL), v11), vsubl_high_s16(v20, v18), vmovl_high_u16(v27)), v10)), v12);
      result[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v19.i8, 6uLL), v11), vsubl_s16(*v21.i8, *v19.i8), vmovl_u16(*v28.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v19, 6uLL), v11), vsubl_high_s16(v21, v19), vmovl_high_u16(v28)), v10)), v12);
      result += 2;
      *v9 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v22.i8, 6uLL), v11), vsubl_s16(*v24.i8, *v22.i8), vmovl_u16(*v29.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v22, 6uLL), v11), vsubl_high_s16(v24, v22), vmovl_high_u16(v29)), v10)), v12);
      v9[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v23.i8, 6uLL), v11), vsubl_s16(*v25.i8, *v23.i8), vmovl_u16(*v30.i8)), v10)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v23, 6uLL), v11), vsubl_high_s16(v25, v23), vmovl_high_u16(v30)), v10)), v12);
      v9 += 2;
    }

    while (!((v17 < 0) ^ v26 | (v17 == 0)));
    v26 = __OFSUB__(a6, 2);
    a6 -= 2;
    a3 = (a3 + 2 * a5);
    a4 = (a4 + 2 * a5);
    v16 = (v16 + 2 * a5);
    v15 = (v15 + 2 * a5);
    a7 = (a7 + a5);
    v14 = (v14 + a5);
    result = (result + v13);
    v9 = (v9 + v13);
  }

  while (!((a6 < 0) ^ v26 | (a6 == 0)));
  return result;
}

void *sub_277960D98(void *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, uint8x8_t a8, uint64_t a9, int a10, uint8x8_t *a11)
{
  do
  {
    v15 = *a3;
    v16 = a3[1];
    a3 += 2;
    v17 = *a4;
    v18 = a4[1];
    a4 += 2;
    v19 = __OFSUB__(a10, 4);
    a10 -= 4;
    v20 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v15, v17)), 0xAuLL);
    v21 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v16, v18)), 0xAuLL);
    v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v15.i8, 6uLL), v13), vsubl_s16(*v17.i8, *v15.i8), vmovl_u16(*v20.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v15, 6uLL), v13), vsubl_high_s16(v17, v15), vmovl_high_u16(v20)), v12)), v14);
    v23 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v16.i8, 6uLL), v13), vsubl_s16(*v18.i8, *v16.i8), vmovl_u16(*v21.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v16, 6uLL), v13), vsubl_high_s16(v18, v16), vmovl_high_u16(v21)), v12)), v14);
    *a11++ = vhsub_u8(a8, vmovn_s16(vpaddq_s16(v20, v21)));
    *result = v22.i64[0];
    v24 = (result + a2);
    *v11 = v22.i64[1];
    v25 = (v11 + a2);
    *v24 = v23.i64[0];
    result = (v24 + a2);
    *v25 = v23.i64[1];
    v11 = (v25 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

uint16x8_t *sub_277960E5C(uint16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, uint8x8_t a8, uint64_t a9, int a10, uint8x8_t *a11)
{
  do
  {
    v15 = *a3;
    v16 = a3[1];
    a3 += 2;
    v17 = *a4;
    v18 = a4[1];
    a4 += 2;
    v19 = __OFSUB__(a10, 2);
    a10 -= 2;
    v20 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v15, v17)), 0xAuLL);
    v21 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v16, v18)), 0xAuLL);
    *a11++ = vhsub_u8(a8, vmovn_s16(vpaddq_s16(v20, v21)));
    *result = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v15.i8, 6uLL), v13), vsubl_s16(*v17.i8, *v15.i8), vmovl_u16(*v20.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v15, 6uLL), v13), vsubl_high_s16(v17, v15), vmovl_high_u16(v20)), v12)), v14);
    result = (result + a2);
    *v11 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v16.i8, 6uLL), v13), vsubl_s16(*v18.i8, *v16.i8), vmovl_u16(*v21.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v16, 6uLL), v13), vsubl_high_s16(v18, v16), vmovl_high_u16(v21)), v12)), v14);
    v11 = (v11 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

uint16x8_t *sub_277960F18(uint16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, unsigned int a5, int a6, uint8x8_t *a7, uint16x8_t a8, double a9, double a10, uint8x8_t a11)
{
  v15 = a2 - 2 * a5;
  v16 = (a7 + (a5 >> 1));
  v17 = (a4 + 2 * a5);
  v18 = (a3 + 2 * a5);
  do
  {
    v19 = a5;
    do
    {
      v20 = *a3;
      v21 = a3[1];
      a3 += 2;
      v22 = *a4;
      v23 = a4[1];
      a4 += 2;
      v24 = *v18;
      v25 = v18[1];
      v18 += 2;
      v26 = *v17;
      v27 = v17[1];
      v17 += 2;
      v28 = __OFSUB__(v19, 16);
      v19 -= 16;
      v29 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v20, v22)), 0xAuLL);
      v30 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v21, v23)), 0xAuLL);
      v31 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v24, v26)), 0xAuLL);
      v32 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v25, v27)), 0xAuLL);
      *a7++ = vhsub_u8(a11, vmovn_s16(vpaddq_s16(v29, v30)));
      *v16++ = vhsub_u8(a11, vmovn_s16(vpaddq_s16(v31, v32)));
      *result = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v20.i8, 6uLL), v13), vsubl_s16(*v22.i8, *v20.i8), vmovl_u16(*v29.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v20, 6uLL), v13), vsubl_high_s16(v22, v20), vmovl_high_u16(v29)), v12)), v14);
      result[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v21.i8, 6uLL), v13), vsubl_s16(*v23.i8, *v21.i8), vmovl_u16(*v30.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v21, 6uLL), v13), vsubl_high_s16(v23, v21), vmovl_high_u16(v30)), v12)), v14);
      result += 2;
      *v11 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v24.i8, 6uLL), v13), vsubl_s16(*v26.i8, *v24.i8), vmovl_u16(*v31.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v24, 6uLL), v13), vsubl_high_s16(v26, v24), vmovl_high_u16(v31)), v12)), v14);
      v11[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v25.i8, 6uLL), v13), vsubl_s16(*v27.i8, *v25.i8), vmovl_u16(*v32.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v25, 6uLL), v13), vsubl_high_s16(v27, v25), vmovl_high_u16(v32)), v12)), v14);
      v11 += 2;
    }

    while (!((v19 < 0) ^ v28 | (v19 == 0)));
    v28 = __OFSUB__(a6, 2);
    a6 -= 2;
    a3 = (a3 + 2 * a5);
    a4 = (a4 + 2 * a5);
    v18 = (v18 + 2 * a5);
    v17 = (v17 + 2 * a5);
    a7 = (a7 + (a5 >> 1));
    v16 = (v16 + (a5 >> 1));
    result = (result + v15);
    v11 = (v11 + v15);
  }

  while (!((a6 < 0) ^ v28 | (a6 == 0)));
  return result;
}

uint64_t sub_2779610C8(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v10 = vdupq_n_s16(a10);
  v11.i64[0] = 0x100010001000100;
  v11.i64[1] = 0x100010001000100;
  return ((&dword_27796143C - *(&dword_27796143C + __clz(a7) - 24)))(vdupq_n_s16(0x6BDFu), a2, v10, vsubq_s16(v11, v10));
}

void *sub_27796111C(void *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, int16x4_t a8, uint64_t a9, int a10, _DWORD *a11)
{
  do
  {
    v15 = *a3;
    v16 = a3[1];
    a3 += 2;
    v17 = *a4;
    v18 = a4[1];
    a4 += 2;
    v19 = __OFSUB__(a10, 4);
    a10 -= 4;
    v20 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v15, v17)), 0xAuLL);
    v21 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v16, v18)), 0xAuLL);
    v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v15.i8, 6uLL), v13), vsubl_s16(*v17.i8, *v15.i8), vmovl_u16(*v20.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v15, 6uLL), v13), vsubl_high_s16(v17, v15), vmovl_high_u16(v20)), v12)), v14);
    v23 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v16.i8, 6uLL), v13), vsubl_s16(*v18.i8, *v16.i8), vmovl_u16(*v21.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v16, 6uLL), v13), vsubl_high_s16(v18, v16), vmovl_high_u16(v21)), v12)), v14);
    v24 = vaddq_s16(vtrn1q_s64(v20, v21), vtrn2q_s64(v20, v21));
    v25 = vpaddq_s16(v24, v24);
    *v25.i8 = vsub_s16(a8, *v25.i8);
    *a11++ = vrshrn_n_s16(v25, 2uLL).u32[0];
    *result = v22.i64[0];
    v26 = (result + a2);
    *v11 = v22.i64[1];
    v27 = (v11 + a2);
    *v26 = v23.i64[0];
    result = (v26 + a2);
    *v27 = v23.i64[1];
    v11 = (v27 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

uint16x8_t *sub_2779611EC(uint16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, int16x4_t a8, uint64_t a9, int a10, _DWORD *a11)
{
  do
  {
    v15 = *a3;
    v16 = a3[1];
    a3 += 2;
    v17 = *a4;
    v18 = a4[1];
    a4 += 2;
    v19 = __OFSUB__(a10, 2);
    a10 -= 2;
    v20 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v15, v17)), 0xAuLL);
    v21 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v16, v18)), 0xAuLL);
    v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v15.i8, 6uLL), v13), vsubl_s16(*v17.i8, *v15.i8), vmovl_u16(*v20.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v15, 6uLL), v13), vsubl_high_s16(v17, v15), vmovl_high_u16(v20)), v12)), v14);
    v23 = vaddq_s16(v20, v21);
    v24 = vpaddq_s16(v23, v23);
    *v24.i8 = vsub_s16(a8, *v24.i8);
    *a11++ = vrshrn_n_s16(v24, 2uLL).u32[0];
    *result = v22;
    result = (result + a2);
    *v11 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v16.i8, 6uLL), v13), vsubl_s16(*v18.i8, *v16.i8), vmovl_u16(*v21.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v16, 6uLL), v13), vsubl_high_s16(v18, v16), vmovl_high_u16(v21)), v12)), v14);
    v11 = (v11 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

uint16x8_t *sub_2779612AC(uint16x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, unsigned int a5, int a6, int8x8_t *a7, uint16x8_t a8, double a9, double a10, int16x8_t a11)
{
  v15 = a2 - 2 * a5;
  v16 = (a4 + 2 * a5);
  v17 = (a3 + 2 * a5);
  do
  {
    v18 = a5;
    do
    {
      v19 = *a3;
      v20 = a3[1];
      a3 += 2;
      v21 = *a4;
      v22 = a4[1];
      a4 += 2;
      v23 = *v17;
      v24 = v17[1];
      v17 += 2;
      v25 = *v16;
      v26 = v16[1];
      v16 += 2;
      v27 = __OFSUB__(v18, 16);
      v18 -= 16;
      v28 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v19, v21)), 0xAuLL);
      v29 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v20, v22)), 0xAuLL);
      v30 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v23, v25)), 0xAuLL);
      v31 = vshrq_n_u16(vqsubq_u16(a8, vabdq_s16(v24, v26)), 0xAuLL);
      *a7++ = vrshrn_n_s16(vsubq_s16(a11, vpaddq_s16(vaddq_s16(v28, v30), vaddq_s16(v29, v31))), 2uLL);
      *result = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v19.i8, 6uLL), v13), vsubl_s16(*v21.i8, *v19.i8), vmovl_u16(*v28.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v19, 6uLL), v13), vsubl_high_s16(v21, v19), vmovl_high_u16(v28)), v12)), v14);
      result[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v20.i8, 6uLL), v13), vsubl_s16(*v22.i8, *v20.i8), vmovl_u16(*v29.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v20, 6uLL), v13), vsubl_high_s16(v22, v20), vmovl_high_u16(v29)), v12)), v14);
      result += 2;
      *v11 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v23.i8, 6uLL), v13), vsubl_s16(*v25.i8, *v23.i8), vmovl_u16(*v30.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v23, 6uLL), v13), vsubl_high_s16(v25, v23), vmovl_high_u16(v30)), v12)), v14);
      v11[1] = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_n_s16(*v24.i8, 6uLL), v13), vsubl_s16(*v26.i8, *v24.i8), vmovl_u16(*v31.i8)), v12)), vrshlq_s32(vmlaq_s32(vaddq_s32(vshll_high_n_s16(v24, 6uLL), v13), vsubl_high_s16(v26, v24), vmovl_high_u16(v31)), v12)), v14);
      v11 += 2;
    }

    while (!((v18 < 0) ^ v27 | (v18 == 0)));
    v27 = __OFSUB__(a6, 2);
    a6 -= 2;
    a3 = (a3 + 2 * a5);
    a4 = (a4 + 2 * a5);
    v17 = (v17 + 2 * a5);
    v16 = (v16 + 2 * a5);
    result = (result + v15);
    v11 = (v11 + v15);
  }

  while (!((a6 < 0) ^ v27 | (a6 == 0)));
  return result;
}

uint64_t *sub_277961464@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, int8x8_t *a5@<X5>, uint64_t *a6@<X8>)
{
  v6 = 2 * a2;
  do
  {
    v7 = *a5++;
    v8 = *a3++;
    v9.i64[0] = *result;
    v10 = __OFSUB__(a4, 2);
    a4 -= 2;
    v9.i64[1] = *a6;
    v11 = vaddq_s16(v9, vqrdmulhq_s16(vsubq_s16(v9, v8), vshlq_n_s16(vmovl_s8(vneg_s8(v7)), 9uLL)));
    *result = v11.i64[0];
    result = (result + v6);
    *a6 = v11.i64[1];
    a6 = (a6 + v6);
  }

  while (!((a4 < 0) ^ v10 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779614A4@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, int16x8_t *a6@<X8>)
{
  v6 = 2 * a2;
  do
  {
    v7 = *a5++;
    v8 = *a3;
    v9 = a3[1];
    a3 += 2;
    v10 = vnegq_s8(v7);
    v11 = __OFSUB__(a4, 2);
    a4 -= 2;
    v12 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v9), vshlq_n_s16(vmovl_high_s8(v10), 9uLL)));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v8), vshlq_n_s16(vmovl_s8(*v10.i8), 9uLL)));
    result = (result + v6);
    *a6 = v12;
    a6 = (a6 + v6);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779614F8@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, int16x8_t *a6@<X8>)
{
  v6 = 2 * a2;
  do
  {
    v7 = *a5;
    v8 = a5[1];
    a5 += 2;
    v9 = *a3;
    v10 = a3[1];
    v11 = a3[2];
    v12 = a3[3];
    a3 += 4;
    v13 = __OFSUB__(a4, 2);
    a4 -= 2;
    v14 = vnegq_s8(v7);
    v15 = vnegq_s8(v8);
    v16 = vaddq_s16(result[1], vqrdmulhq_s16(vsubq_s16(result[1], v10), vshlq_n_s16(vmovl_high_s8(v14), 9uLL)));
    v17 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v11), vshlq_n_s16(vmovl_s8(*v15.i8), 9uLL)));
    v18 = vaddq_s16(a6[1], vqrdmulhq_s16(vsubq_s16(a6[1], v12), vshlq_n_s16(vmovl_high_s8(v15), 9uLL)));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v9), vshlq_n_s16(vmovl_s8(*v14.i8), 9uLL)));
    result[1] = v16;
    result = (result + v6);
    *a6 = v17;
    a6[1] = v18;
    a6 = (a6 + v6);
  }

  while (!((a4 < 0) ^ v13 | (a4 == 0)));
  return result;
}

int16x8_t *sub_277961578(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, int8x16_t *a6)
{
  do
  {
    v6 = *a6;
    v7 = a6[1];
    a6 += 2;
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    a3 += 4;
    v12 = __OFSUB__(a5--, 1);
    v13 = vnegq_s8(v6);
    v14 = vnegq_s8(v7);
    v15 = vaddq_s16(result[1], vqrdmulhq_s16(vsubq_s16(result[1], v9), vshlq_n_s16(vmovl_high_s8(v13), 9uLL)));
    v16 = vaddq_s16(result[2], vqrdmulhq_s16(vsubq_s16(result[2], v10), vshlq_n_s16(vmovl_s8(*v14.i8), 9uLL)));
    v17 = vaddq_s16(result[3], vqrdmulhq_s16(vsubq_s16(result[3], v11), vshlq_n_s16(vmovl_high_s8(v14), 9uLL)));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v8), vshlq_n_s16(vmovl_s8(*v13.i8), 9uLL)));
    result[1] = v15;
    result[2] = v16;
    result[3] = v17;
    result = (result + a2);
  }

  while (!((a5 < 0) ^ v12 | (a5 == 0)));
  return result;
}

__int32 *sub_277961624@<X0>(__int32 *result@<X0>, uint64_t a2@<X1>, int16x4_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, __int32 *a6@<X8>)
{
  do
  {
    v10 = vld2_dup_s8(a5);
    a5 += 2;
    v6 = *a3++;
    v7 = __OFSUB__(a4, 2);
    a4 -= 2;
    v8.i32[0] = *result;
    v8.i32[1] = *a6;
    v9 = vadd_s16(v8, vqrdmulh_s16(vsub_s16(v8, v6), vshl_n_s16(*&vmovl_s8(vneg_s8(vext_s8(v10.val[0], v10.val[1], 6uLL))), 9uLL)));
    *result = v9.i32[0];
    result = (result + a2);
    *a6 = v9.i32[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v7 | (a4 == 0)));
  return result;
}

uint64_t *sub_277961664@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, uint64_t *a6@<X8>)
{
  do
  {
    v10 = vld2_dup_s8(a5);
    a5 += 2;
    v6 = *a3++;
    v7 = __OFSUB__(a4, 2);
    a4 -= 2;
    v8.i64[0] = *result;
    v8.i64[1] = *a6;
    v9 = vaddq_s16(v8, vqrdmulhq_s16(vsubq_s16(v8, v6), vshlq_n_s16(vmovl_s8(vneg_s8(vext_s8(v10.val[0], v10.val[1], 4uLL))), 9uLL)));
    *result = v9.i64[0];
    result = (result + a2);
    *a6 = v9.i64[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v7 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779616A4@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, int16x8_t *a6@<X8>)
{
  do
  {
    v10 = vld2_dup_s8(a5);
    a5 += 2;
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = __OFSUB__(a4, 2);
    a4 -= 2;
    v9 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v7), vshlq_n_s16(vmovl_s8(vneg_s8(v10.val[1])), 9uLL)));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v6), vshlq_n_s16(vmovl_s8(vneg_s8(v10.val[0])), 9uLL)));
    result = (result + a2);
    *a6 = v9;
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v8 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779616F8@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, int16x8_t *a6@<X8>)
{
  do
  {
    v14 = vld2_dup_s8(a5);
    a5 += 2;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    a3 += 4;
    v10 = __OFSUB__(a4, 2);
    a4 -= 2;
    v14 = vshlq_n_s16(vmovl_s8(vneg_s8(*v14.i8)), 9uLL);
    *(&v14 + 8) = vshlq_n_s16(vmovl_s8(vneg_s8(v14.u64[1])), 9uLL);
    v11 = vaddq_s16(result[1], vqrdmulhq_s16(vsubq_s16(result[1], v7), v14));
    v12 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v8), *(&v14 + 8)));
    v13 = vaddq_s16(a6[1], vqrdmulhq_s16(vsubq_s16(a6[1], v9), *(&v14 + 8)));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v6), v14));
    result[1] = v11;
    result = (result + a2);
    *a6 = v12;
    a6[1] = v13;
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v10 | (a4 == 0)));
  return result;
}

int16x8_t *sub_277961764@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, const char *a6@<X5>, int16x8_t *a7@<X8>)
{
  v7 = a2 - 2 * a4;
  v8 = (a3 + 2 * a4);
  do
  {
    v29 = vld2_dup_s8(a6);
    a6 += 2;
    v9 = a4;
    v10 = vshlq_n_s16(vmovl_s8(vneg_s8(v29.val[0])), 9uLL);
    v11 = vshlq_n_s16(vmovl_s8(vneg_s8(v29.val[1])), 9uLL);
    do
    {
      v12 = *a3;
      v13 = a3[1];
      v14 = a3[2];
      v15 = a3[3];
      a3 += 4;
      v16 = __OFSUB__(v9, 32);
      v9 -= 32;
      v17 = *v8;
      v18 = v8[1];
      v19 = v8[2];
      v20 = v8[3];
      v8 += 4;
      v21 = *a7;
      v22 = a7[1];
      v23 = a7[2];
      v24 = a7[3];
      v25 = vaddq_s16(result[1], vqrdmulhq_s16(vsubq_s16(result[1], v13), v10));
      v26 = vaddq_s16(result[2], vqrdmulhq_s16(vsubq_s16(result[2], v14), v10));
      v27 = vaddq_s16(result[3], vqrdmulhq_s16(vsubq_s16(result[3], v15), v10));
      v28 = vqrdmulhq_s16(vsubq_s16(*a7, v17), v11);
      *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v12), v10));
      result[1] = v25;
      result[2] = v26;
      result[3] = v27;
      result += 4;
      *a7 = vaddq_s16(v21, v28);
      a7[1] = vaddq_s16(v22, vqrdmulhq_s16(vsubq_s16(v22, v18), v11));
      a7[2] = vaddq_s16(v23, vqrdmulhq_s16(vsubq_s16(v23, v19), v11));
      a7[3] = vaddq_s16(v24, vqrdmulhq_s16(vsubq_s16(v24, v20), v11));
      a7 += 4;
    }

    while (!((v9 < 0) ^ v16 | (v9 == 0)));
    v16 = __OFSUB__(a5, 2);
    a5 -= 2;
    result = (result + v7);
    a7 = (a7 + v7);
    a3 = (a3 + 2 * a4);
    v8 = (v8 + 2 * a4);
  }

  while (!((a5 < 0) ^ v16 | (a5 == 0)));
  return result;
}

__int16 *sub_277961864@<X0>(__int16 *result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, int a4@<W4>, const char *a5@<X5>, __int16 *a6@<X8>, int16x4_t a7@<D0>, int16x4_t a8@<D1>)
{
  v8 = vld1_dup_s8(a5);
  v9 = vshl_n_s16(*&vmovl_s8(vneg_s8(v8)), 9uLL);
  do
  {
    a8.i32[0] = *a3;
    v10 = a3 + 1;
    a7.i16[0] = *result;
    v11 = __OFSUB__(a4, 2);
    a4 -= 2;
    a8.i16[1] = *v10;
    a7.i16[1] = *a6;
    a3 = v10 + 2;
    a8 = vqrdmulh_s16(vsub_s16(a7, a8), v9);
    a7 = vadd_s16(a7, a8);
    *result = a7.i16[0];
    result = (result + a2);
    *a6 = a7.i16[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

uint64_t *sub_2779618A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, const float *a5@<X5>, uint64_t *a6@<X8>)
{
  v6 = vld1_dup_f32(a5);
  v7 = a2 - 4;
  v8 = vshlq_n_s16(vmovl_s8(vneg_s8(v6)), 9uLL);
  do
  {
    v9 = *a3++;
    v10.i64[0] = *result;
    v10.i64[1] = *a6;
    v11 = __OFSUB__(a4, 2);
    a4 -= 2;
    v12 = vaddq_s16(v10, vqrdmulhq_s16(vsubq_s16(v10, v9), v8));
    *result = v12.i32[0];
    v13 = result + 2;
    *a6 = v12.i32[2];
    v14 = a6 + 2;
    *v13 = v12.i16[2];
    result = (v13 + v7);
    *v14 = v12.i16[6];
    a6 = (v14 + v7);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779618F0@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, int8x8_t *a5@<X5>, int16x8_t *a6@<X8>)
{
  v6 = a2 - 8;
  v7 = vshlq_n_s16(vmovl_s8(vneg_s8(*a5)), 9uLL);
  do
  {
    v8 = *a3;
    v9 = a3[1];
    a3 += 2;
    v10 = __OFSUB__(a4, 2);
    a4 -= 2;
    v11 = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v8), v7));
    v12 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v9), v7));
    result->i64[0] = v11.i64[0];
    v13 = &result->i32[2];
    a6->i64[0] = v12.i64[0];
    v14 = &a6->i32[2];
    *v13 = v11.i32[2];
    result = (v13 + v6);
    *v14 = v12.i32[2];
    a6 = (v14 + v6);
  }

  while (!((a4 < 0) ^ v10 | (a4 == 0)));
  return result;
}

char *sub_277961944@<X0>(char *result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, char *a6@<X8>)
{
  v6 = a2 - 16;
  v7 = vnegq_s8(*a5);
  v8 = vshlq_n_s16(vmovl_s8(*v7.i8), 9uLL);
  v9 = vshl_n_s16(*&vmovl_high_s8(v7), 9uLL);
  do
  {
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    a3 += 4;
    v14 = __OFSUB__(a4, 2);
    a4 -= 2;
    v15 = vadd_s16(*(result + 16), vqrdmulh_s16(vsub_s16(*(result + 16), *v11.i8), v9));
    v16 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v12), v8));
    v17 = vadd_s16(*(a6 + 16), vqrdmulh_s16(vsub_s16(*(a6 + 16), *v13.i8), v9));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v10), v8));
    v18 = (result + 16);
    *a6 = v16;
    v19 = (a6 + 16);
    *v18 = v15;
    result = v18 + v6;
    *v19 = v17;
    a6 = v19 + v6;
  }

  while (!((a4 < 0) ^ v14 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779619B8@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, int a4@<W4>, uint64_t a5@<X5>, int16x8_t *a6@<X8>)
{
  v6 = vnegq_s8(*a5);
  v7 = vshlq_n_s16(vmovl_s8(*v6.i8), 9uLL);
  v8 = vshlq_n_s16(vmovl_high_s8(v6), 9uLL);
  v9 = vshlq_n_s16(vmovl_s8(vneg_s8(*(a5 + 16))), 9uLL);
  do
  {
    v11 = *a3;
    v12 = *(a3 + 1);
    v13 = *(a3 + 2);
    v10 = a3 + 4;
    v14 = *v10;
    v15 = *(v10 + 1);
    v16 = *(v10 + 2);
    a3 = v10 + 4;
    v17 = __OFSUB__(a4, 2);
    a4 -= 2;
    v18 = vaddq_s16(result[1], vqrdmulhq_s16(vsubq_s16(result[1], v12), v8));
    v19 = vaddq_s16(result[2], vqrdmulhq_s16(vsubq_s16(result[2], v13), v9));
    v20 = vaddq_s16(*a6, vqrdmulhq_s16(vsubq_s16(*a6, v14), v7));
    v21 = vaddq_s16(a6[1], vqrdmulhq_s16(vsubq_s16(a6[1], v15), v8));
    v22 = vaddq_s16(a6[2], vqrdmulhq_s16(vsubq_s16(a6[2], v16), v9));
    *result = vaddq_s16(*result, vqrdmulhq_s16(vsubq_s16(*result, v11), v7));
    result[1] = v18;
    result[2] = v19;
    result = (result + a2);
    *a6 = v20;
    a6[1] = v21;
    a6[2] = v22;
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v17 | (a4 == 0)));
  return result;
}

_DWORD *sub_277961A64(_DWORD *result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v7 = *a3;
    v6 = (a3 + a4);
    v8 = *v6;
    a3 = (v6 + a4);
    v9 = __OFSUB__(a6, 2);
    a6 -= 2;
    *result = v7;
    v10 = (result + a2);
    *v10 = v8;
    result = (v10 + a2);
  }

  while (!((a6 < 0) ^ v9 | (a6 == 0)));
  return result;
}

void *sub_277961A80(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v7 = *a3;
    v6 = (a3 + a4);
    v8 = *v6;
    a3 = (v6 + a4);
    v9 = __OFSUB__(a6, 2);
    a6 -= 2;
    *result = v7;
    v10 = (result + a2);
    *v10 = v8;
    result = (v10 + a2);
  }

  while (!((a6 < 0) ^ v9 | (a6 == 0)));
  return result;
}

_OWORD *sub_277961A9C(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = (result + a2);
  v7 = 2 * a2;
  v8 = (a3 + a4);
  v9 = 2 * a4;
  do
  {
    v10 = *a3;
    a3 = (a3 + v9);
    v11 = *v8;
    v8 = (v8 + v9);
    v12 = __OFSUB__(a6, 2);
    a6 -= 2;
    *result = v10;
    result = (result + v7);
    *v6 = v11;
    v6 = (v6 + v7);
  }

  while (!((a6 < 0) ^ v12 | (a6 == 0)));
  return result;
}

void *sub_277961AC8(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    *result = *a3;
    result[1] = v6;
    v9 = __OFSUB__(a6--, 1);
    result[2] = v7;
    result[3] = v8;
    a3 = (a3 + a4);
    result = (result + a2);
  }

  while (!((a6 < 0) ^ v9 | (a6 == 0)));
  return result;
}

void *sub_277961AEC(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    *result = *a3;
    result[1] = v6;
    v9 = a3[4];
    v10 = a3[5];
    result[2] = v7;
    result[3] = v8;
    v11 = __OFSUB__(a6--, 1);
    v12 = a3[6];
    v13 = a3[7];
    result[4] = v9;
    result[5] = v10;
    result[6] = v12;
    result[7] = v13;
    a3 = (a3 + a4);
    result = (result + a2);
  }

  while (!((a6 < 0) ^ v11 | (a6 == 0)));
  return result;
}

_OWORD *sub_277961B20(_OWORD *result, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    *result = *a3;
    result[1] = v6;
    v9 = a3[4];
    v10 = a3[5];
    result[2] = v7;
    result[3] = v8;
    v11 = a3[6];
    v12 = a3[7];
    v13 = __OFSUB__(a6--, 1);
    result[4] = v9;
    result[5] = v10;
    result[6] = v11;
    result[7] = v12;
    a3 = (a3 + a4);
    result = (result + a2);
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

_OWORD *sub_277961B54(_OWORD *result, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, int a6)
{
  do
  {
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    *result = *a3;
    result[1] = v6;
    v9 = a3[4];
    v10 = a3[5];
    result[2] = v7;
    result[3] = v8;
    v11 = a3[6];
    v12 = a3[7];
    v13 = __OFSUB__(a6--, 1);
    result[4] = v9;
    result[5] = v10;
    v14 = a3[8];
    v15 = a3[9];
    result[6] = v11;
    result[7] = v12;
    v16 = a3[10];
    v17 = a3[11];
    result[8] = v14;
    result[9] = v15;
    v18 = a3[12];
    v19 = a3[13];
    result[10] = v16;
    result[11] = v17;
    v20 = a3[14];
    v21 = a3[15];
    result[12] = v18;
    result[13] = v19;
    result[14] = v20;
    result[15] = v21;
    a3 = (a3 + a4);
    result = (result + a2);
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

int16x8_t *sub_277961BD0(int16x8_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (a2 + a3);
  v8 = 2 * a3;
  do
  {
    v9.i64[0] = *a2;
    a2 = (a2 + v8);
    v9.i64[1] = *v7;
    v7 = (v7 + v8);
    v10 = __OFSUB__(a5, 2);
    a5 -= 2;
    *result++ = vsubq_s16(vshlq_s16(v9, v6), v5);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277961BF8(int16x8_t *result, int16x8_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (a2 + a3);
  v8 = 2 * a3;
  do
  {
    v9 = *a2;
    a2 = (a2 + v8);
    v10 = *v7;
    v7 = (v7 + v8);
    v11 = __OFSUB__(a5, 2);
    a5 -= 2;
    *result = vsubq_s16(vshlq_s16(v9, v6), v5);
    result[1] = vsubq_s16(vshlq_s16(v10, v6), v5);
    result += 2;
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277961C28(int16x8_t *result, int16x8_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = (a2 + a3);
    v10 = *v9;
    v11 = v9[1];
    a2 = (v9 + a3);
    v12 = __OFSUB__(a5, 2);
    a5 -= 2;
    *result = vsubq_s16(vshlq_s16(v7, v6), v5);
    result[1] = vsubq_s16(vshlq_s16(v8, v6), v5);
    result[2] = vsubq_s16(vshlq_s16(v10, v6), v5);
    result[3] = vsubq_s16(vshlq_s16(v11, v6), v5);
    result += 4;
  }

  while (!((a5 < 0) ^ v12 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277961C68(int16x8_t *result, int16x8_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v7 = a2[1];
    v8 = vshlq_s16(*a2, v6);
    v9 = a2[2];
    v10 = a2[3];
    a2 = (a2 + a3);
    v11 = __OFSUB__(a5--, 1);
    *result = vsubq_s16(v8, v5);
    result[1] = vsubq_s16(vshlq_s16(v7, v6), v5);
    result[2] = vsubq_s16(vshlq_s16(v9, v6), v5);
    result[3] = vsubq_s16(vshlq_s16(v10, v6), v5);
    result += 4;
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277961CA4@<X0>(int16x8_t *result@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  do
  {
    v7 = __OFSUB__(a4--, 1);
    v8 = vshlq_s16(*a2, v6);
    v9 = vshlq_s16(a2[1], v6);
    v10 = a2[4];
    v11 = a2[5];
    v12 = vshlq_s16(a2[2], v6);
    v13 = vshlq_s16(a2[3], v6);
    v14 = a2[6];
    v15 = a2[7];
    a2 = (a2 + a3);
    *result = vsubq_s16(v8, v5);
    result[1] = vsubq_s16(v9, v5);
    result[2] = vsubq_s16(v12, v5);
    result[3] = vsubq_s16(v13, v5);
    result[4] = vsubq_s16(vshlq_s16(v10, v6), v5);
    result[5] = vsubq_s16(vshlq_s16(v11, v6), v5);
    result[6] = vsubq_s16(vshlq_s16(v14, v6), v5);
    result[7] = vsubq_s16(vshlq_s16(v15, v6), v5);
    result = (result + a5);
  }

  while (!((a4 < 0) ^ v7 | (a4 == 0)));
  return result;
}

int16x8_t *sub_277961D18@<X0>(int16x8_t *result@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  do
  {
    v7 = __OFSUB__(a4--, 1);
    v8 = vshlq_s16(*a2, v6);
    v9 = vshlq_s16(a2[1], v6);
    v10 = vshlq_s16(a2[2], v6);
    v11 = vshlq_s16(a2[3], v6);
    v12 = vshlq_s16(a2[4], v6);
    v13 = vshlq_s16(a2[5], v6);
    v14 = vshlq_s16(a2[6], v6);
    v15 = vshlq_s16(a2[7], v6);
    v16 = vshlq_s16(a2[8], v6);
    v17 = vshlq_s16(a2[9], v6);
    v18 = a2[12];
    v19 = a2[13];
    v20 = vshlq_s16(a2[10], v6);
    v21 = vshlq_s16(a2[11], v6);
    v22 = a2[14];
    v23 = a2[15];
    a2 = (a2 + a3);
    *result = vsubq_s16(v8, v5);
    result[1] = vsubq_s16(v9, v5);
    result[2] = vsubq_s16(v10, v5);
    result[3] = vsubq_s16(v11, v5);
    result[4] = vsubq_s16(v12, v5);
    result[5] = vsubq_s16(v13, v5);
    result[6] = vsubq_s16(v14, v5);
    result[7] = vsubq_s16(v15, v5);
    result[8] = vsubq_s16(v16, v5);
    result[9] = vsubq_s16(v17, v5);
    result[10] = vsubq_s16(v20, v5);
    result[11] = vsubq_s16(v21, v5);
    result[12] = vsubq_s16(vshlq_s16(v18, v6), v5);
    result[13] = vsubq_s16(vshlq_s16(v19, v6), v5);
    result[14] = vsubq_s16(vshlq_s16(v22, v6), v5);
    result[15] = vsubq_s16(vshlq_s16(v23, v6), v5);
    result = (result + a5);
  }

  while (!((a4 < 0) ^ v7 | (a4 == 0)));
  return result;
}

uint64_t sub_277961E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v10 = 16513 * a7 + v8;
  v11 = 16513 * a8 + v9;
  v12 = __clz(a5) - 24;
  if ((v10 & 0x1FC000) != 0)
  {
    if ((v11 & 0x1FC000) != 0)
    {
      return ((qword_277963158 - *(qword_277963158 + v12)))();
    }

    else
    {
      return ((qword_277962128 - *(qword_277962128 + v12)))();
    }
  }

  else if ((v11 & 0x1FC000) != 0)
  {
    return ((&dword_27796293C - *(&dword_27796293C + v12)))();
  }

  else
  {
    return sub_277961A54();
  }
}

uint64_t sub_277963198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v10 = 16513 * a7 + v8;
  v11 = 16513 * a8 + v9;
  v12 = __clz(a5) - 24;
  if ((v10 & 0x1FC000) != 0)
  {
    if ((v11 & 0x1FC000) != 0)
    {
      return ((qword_277964370 - *(qword_277964370 + v12)))();
    }

    else
    {
      return ((&dword_277963464 - *(&dword_277963464 + v12)))();
    }
  }

  else if ((v11 & 0x1FC000) != 0)
  {
    return ((qword_277963BF0 - *(qword_277963BF0 + v12)))();
  }

  else
  {
    return sub_277961A54();
  }
}

uint64_t sub_277964380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v8 = vdupq_n_s16(a7);
  v9 = vdupq_n_s16(a8);
  v10 = vdupq_n_s16(16 - a7);
  v11 = vdupq_n_s16(16 - a8);
  v12 = __clz(a5) - 24;
  if (a7)
  {
    if (a8)
    {
      return ((qword_2779649A0 - *(qword_2779649A0 + v12)))(v10, v8, v11, v9);
    }

    else
    {
      return ((qword_277964598 - *(qword_277964598 + v12)))(v10, v8, v11, v9);
    }
  }

  else if (a8)
  {
    return ((qword_277964798 - *(qword_277964798 + v12)))(v10, v8, v11, v9);
  }

  else
  {
    return sub_277961A54();
  }
}

_DWORD *sub_2779647C8(_DWORD *result, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t a5, int16x4_t a6, uint16x4_t a7, uint16x4_t a8, uint64_t a9, int a10)
{
  v12 = (a3 + a4);
  v13 = (result + a2);
  v14 = 2 * a4;
  v15 = 2 * a2;
  v17 = *a3;
  v16 = (a3 + v14);
  for (i = vrshl_u16(vmla_s16(vmul_s16(v17, a5), vext_s8(v17, v17, 2uLL), a6), v11); ; i = vtrn2_s32(v21, v21))
  {
    v19 = *v12;
    v12 = (v12 + v14);
    v20 = *v16;
    v16 = (v16 + v14);
    v21 = vrshl_u16(vmla_s16(vmul_s16(vtrn1_s32(v19, v20), a5), vtrn1_s32(vext_s8(v19, v19, 2uLL), vext_s8(v20, v20, 2uLL)), a6), v11);
    v22 = vmovn_s32(vrshlq_u32(vmlal_u16(vmull_u16(vtrn1_s32(i, v21), a7), v21, a8), v10));
    v23 = __OFSUB__(a10, 2);
    a10 -= 2;
    *result = v22.i32[0];
    result = (result + v15);
    *v13 = v22.i32[1];
    v13 = (v13 + v15);
    if ((a10 < 0) ^ v23 | (a10 == 0))
    {
      break;
    }
  }

  return result;
}

void *sub_277964840(void *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int16x8_t a5, int16x8_t a6, uint16x8_t a7, uint16x8_t a8, uint64_t a9, int a10)
{
  v13 = &a3->i8[a4];
  v14 = (result + a2);
  v15 = 2 * a4;
  v16 = 2 * a2;
  v18 = *a3;
  v17 = &a3->i8[v15];
  *v10.i8 = vrshl_u16(vmla_s16(vmul_s16(*v18.i8, *a5.i8), *&vextq_s8(v18, v18, 2uLL), *a6.i8), *v12.i8);
  while (1)
  {
    v19 = *v13;
    v13 = (v13 + v15);
    v20 = *v17;
    v17 = (v17 + v15);
    v21 = vrshlq_u16(vmlaq_s16(vmulq_s16(vtrn1q_s64(v19, v20), a5), vtrn1q_s64(vextq_s8(v19, v19, 2uLL), vextq_s8(v20, v20, 2uLL)), a6), v12);
    v22 = vtrn1q_s64(v10, v21);
    v23 = vuzp1q_s16(vrshlq_u32(vmlal_u16(vmull_u16(*v22.i8, *a7.i8), *v21.i8, *a8.i8), v11), vrshlq_u32(vmlal_high_u16(vmull_high_u16(v22, a7), v21, a8), v11));
    v24 = __OFSUB__(a10, 2);
    a10 -= 2;
    *result = v23.i64[0];
    result = (result + v16);
    *v14 = v23.i64[1];
    v14 = (v14 + v16);
    if ((a10 < 0) ^ v24 | (a10 == 0))
    {
      break;
    }

    v10 = vtrn2q_s64(v21, v21);
  }

  return result;
}

int16x8_t *sub_2779648C4(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int16x8_t a7, int16x8_t a8, uint16x8_t a9, uint16x8_t a10)
{
  for (i = a6; ; result = (result - a2 * i + 16))
  {
    v16 = (a3 + a4);
    v17 = (result + a2);
    v18 = 2 * a4;
    v19 = 2 * a2;
    v10.i16[0] = *(a3 + 16);
    v21 = *a3;
    v20 = (a3 + v18);
    v10 = vextq_s8(v21, v10, 2uLL);
    for (j = vrshlq_u16(vmlaq_s16(vmulq_s16(v21, a7), v10, a8), v14); ; j = v26)
    {
      v11.i16[0] = v16[1].i16[0];
      v23 = *v16;
      v16 = (v16 + v18);
      v12.i16[0] = v20[1].i16[0];
      v24 = *v20;
      v20 = (v20 + v18);
      v11 = vextq_s8(v23, v11, 2uLL);
      v12 = vextq_s8(v24, v12, 2uLL);
      v25 = vrshlq_u16(vmlaq_s16(vmulq_s16(v23, a7), v11, a8), v14);
      v26 = vrshlq_u16(vmlaq_s16(vmulq_s16(v24, a7), v12, a8), v14);
      v27 = __OFSUB__(a6, 2);
      a6 -= 2;
      *result = vuzp1q_s16(vrshlq_u32(vmlal_u16(vmull_u16(*j.i8, *a9.i8), *v25.i8, *a10.i8), v13), vrshlq_u32(vmlal_high_u16(vmull_high_u16(j, a9), v25, a10), v13));
      result = (result + v19);
      *v17 = vuzp1q_s16(vrshlq_u32(vmlal_u16(vmull_u16(*v25.i8, *a9.i8), *v26.i8, *a10.i8), v13), vrshlq_u32(vmlal_high_u16(vmull_high_u16(v25, a9), v26, a10), v13));
      v17 = (v17 + v19);
      if ((a6 < 0) ^ v27 | (a6 == 0))
      {
        break;
      }
    }

    v27 = __OFSUB__(a5, 8);
    a5 -= 8;
    if ((a5 < 0) ^ v27 | (a5 == 0))
    {
      break;
    }

    a4 = v18 >> 1;
    a2 = v19 >> 1;
    a6 = i;
    a3 = v20[1].i64 - a4 * i + -2 * a4;
  }

  return result;
}

uint64_t sub_2779649EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  v9 = 16513 * a6 + v7;
  v10 = 16513 * a7 + v8;
  v11 = __clz(a4) - 24;
  if ((v9 & 0x1FC000) != 0)
  {
    if ((v10 & 0x1FC000) != 0)
    {
      return ((qword_2779658E0 - *(qword_2779658E0 + v11)))();
    }

    else
    {
      return ((&dword_277964C4C - *(&dword_277964C4C + v11)))();
    }
  }

  else if ((v10 & 0x1FC000) != 0)
  {
    return ((&dword_2779652A4 - *(&dword_2779652A4 + v11)))();
  }

  else
  {
    return sub_277961BB8();
  }
}

uint64_t sub_277965920(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  v9 = 16513 * a6 + v7;
  v10 = 16513 * a7 + v8;
  v11 = __clz(a4) - 24;
  if ((v9 & 0x1FC000) != 0)
  {
    if ((v10 & 0x1FC000) != 0)
    {
      return ((qword_2779666E8 - *(qword_2779666E8 + v11)))();
    }

    else
    {
      return ((qword_277965B58 - *(qword_277965B58 + v11)))();
    }
  }

  else if ((v10 & 0x1FC000) != 0)
  {
    return ((qword_277966140 - *(qword_277966140 + v11)))();
  }

  else
  {
    return sub_277961BB8();
  }
}

uint64_t sub_2779666F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v7 = vdupq_n_s16(a6);
  v8 = vdupq_n_s16(a7);
  v9 = vdupq_n_s16(16 - a6);
  v10 = vdupq_n_s16(16 - a7);
  v11 = __clz(a4) - 24;
  if (a6)
  {
    if (a7)
    {
      return ((&dword_277966BCC - *(&dword_277966BCC + v11)))(v9, v7, v10, v8);
    }

    else
    {
      return ((&dword_2779668BC - *(&dword_2779668BC + v11)))(v9, v7, v10, v8);
    }
  }

  else if (a7)
  {
    return ((qword_277966A40 - *(qword_277966A40 + v11)))(v9, v7, v10, v8);
  }

  else
  {
    return sub_277961BB8();
  }
}

void *sub_277966A6C@<X0>(void *result@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>, int16x8_t a6@<Q0>, int16x8_t a7@<Q1>, uint16x8_t a8@<Q2>, uint16x8_t a9@<Q3>)
{
  v12 = &a2->i8[a3];
  v13 = (result + a5);
  v14 = 2 * a3;
  v15 = 2 * a5;
  v17 = *a2;
  v16 = &a2->i8[v14];
  *v9.i8 = vrshl_u16(vmla_s16(vmul_s16(*v17.i8, *a6.i8), *&vextq_s8(v17, v17, 2uLL), *a7.i8), *v11.i8);
  while (1)
  {
    v18 = *v12;
    v12 = (v12 + v14);
    v19 = *v16;
    v16 = (v16 + v14);
    v20 = vrshlq_u16(vmlaq_s16(vmulq_s16(vtrn1q_s64(v18, v19), a6), vtrn1q_s64(vextq_s8(v18, v18, 2uLL), vextq_s8(v19, v19, 2uLL)), a7), v11);
    v21 = vtrn1q_s64(v9, v20);
    v22 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v21.i8, *a8.i8), *v20.i8, *a9.i8), 4uLL), vmlal_high_u16(vmull_high_u16(v21, a8), v20, a9), 4uLL), v10);
    v23 = __OFSUB__(a4, 2);
    a4 -= 2;
    *result = v22.i64[0];
    result = (result + v15);
    *v13 = v22.i64[1];
    v13 = (v13 + v15);
    if ((a4 < 0) ^ v23 | (a4 == 0))
    {
      break;
    }

    v9 = vtrn2q_s64(v20, v20);
  }

  return result;
}

int16x8_t *sub_277966AF0@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, uint16x8_t a9@<Q2>, uint16x8_t a10@<Q3>)
{
  for (i = a5; ; result = (result - a6 * i + 16))
  {
    v16 = (a2 + a3);
    v17 = (result + a6);
    v18 = 2 * a3;
    v19 = 2 * a6;
    v10.i16[0] = *(a2 + 16);
    v21 = *a2;
    v20 = (a2 + v18);
    v10 = vextq_s8(v21, v10, 2uLL);
    for (j = vrshlq_u16(vmlaq_s16(vmulq_s16(v21, a7), v10, a8), v14); ; j = v26)
    {
      v11.i16[0] = v16[1].i16[0];
      v23 = *v16;
      v16 = (v16 + v18);
      v12.i16[0] = v20[1].i16[0];
      v24 = *v20;
      v20 = (v20 + v18);
      v11 = vextq_s8(v23, v11, 2uLL);
      v12 = vextq_s8(v24, v12, 2uLL);
      v25 = vrshlq_u16(vmlaq_s16(vmulq_s16(v23, a7), v11, a8), v14);
      v26 = vrshlq_u16(vmlaq_s16(vmulq_s16(v24, a7), v12, a8), v14);
      v27 = __OFSUB__(a5, 2);
      a5 -= 2;
      *result = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*j.i8, *a9.i8), *v25.i8, *a10.i8), 4uLL), vmlal_high_u16(vmull_high_u16(j, a9), v25, a10), 4uLL), v13);
      result = (result + v19);
      *v17 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v25.i8, *a9.i8), *v26.i8, *a10.i8), 4uLL), vmlal_high_u16(vmull_high_u16(v25, a9), v26, a10), 4uLL), v13);
      v17 = (v17 + v19);
      if ((a5 < 0) ^ v27 | (a5 == 0))
      {
        break;
      }
    }

    v27 = __OFSUB__(a4, 8);
    a4 -= 8;
    if ((a4 < 0) ^ v27 | (a4 == 0))
    {
      break;
    }

    a3 = v18 >> 1;
    a6 = v19 >> 1;
    a5 = i;
    a2 = v20[1].i64 - a3 * i + -2 * a3;
  }

  return result;
}

double sub_277966BDC(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v9 = a3[1];
  v10 = a6 + 512 + a8 + a8;
  v11 = vmovl_s8(*(v8 + 8 * (v10 >> 10)));
  v12 = vmovl_s8(*(v8 + 8 * ((v10 + a8) >> 10)));
  v13 = vextq_s8(*a3, v9, 4uLL);
  v14 = vextq_s8(*a3, v9, 6uLL);
  *&result = vpaddq_s32(vpaddq_s32(vmull_s16(*v13.i8, *v11.i8), vmull_high_s16(v13, v11)), vpaddq_s32(vmull_s16(*v14.i8, *v12.i8), vmull_high_s16(v14, v12))).u64[0];
  return result;
}

uint64_t sub_277966D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, unsigned int a8)
{
  v8 = vdupq_n_s16(a8);
  v9 = vdupq_n_s32(11 - __clz(a8));
  sub_277966BDC(a1, a2, (a3 - 2 * a4 - a4 - 6), a4, *a5 >> 48, a6, a7, *a5);
  sub_277966BDC(v10, v11, v12, v13, v14, v15, v16, v17);
  sub_277966BDC(v18, v19, v20, v21, v22, v23, v24, v25);
  sub_277966BDC(v26, v27, v28, v29, v30, v31, v32, v33);
  sub_277966BDC(v34, v35, v36, v37, v38, v39, v40, v41);
  sub_277966BDC(v42, v43, v44, v45, v46, v47, v48, v49);
  sub_277966BDC(v50, v51, v52, v53, v54, v55, v56, v57);
  do
  {
    sub_277966BDC(result, v59, v60, v61, v62, v63, v64, v65);
    v68 = vuzp1q_s16(v66, v67);
    v70 = v69 >> 10;
    v72 = v69 + v71;
    v74.i64[0] = *(v73 + 8 * v70);
    v75 = v72 >> 10;
    v76 = v72 + v71;
    v77.i64[0] = *(v73 + 8 * v75);
    v78 = v76 >> 10;
    v79 = v76 + v71;
    v80.i64[0] = *(v73 + 8 * v78);
    v81 = v79 >> 10;
    v82 = v79 + v71;
    v83.i64[0] = *(v73 + 8 * v81);
    v84 = v82 >> 10;
    v85 = v82 + v71;
    v86.i64[0] = *(v73 + 8 * v84);
    v87 = v85 >> 10;
    v88 = v85 + v71;
    v89.i64[0] = *(v73 + 8 * v87);
    v90.i64[0] = *(v73 + 8 * (v88 >> 10));
    v91.i64[0] = *(v73 + 8 * ((v88 + v71) >> 10));
    v92 = vzip1q_s8(v74, v77);
    v93 = vzip1q_s8(v80, v83);
    v94 = vzip1q_s8(v86, v89);
    v95 = vzip1q_s8(v90, v91);
    v96 = vtrn1q_s16(v92, v93);
    v97 = vtrn2q_s16(v92, v93);
    v98 = vtrn1q_s16(v94, v95);
    v99 = vtrn2q_s16(v94, v95);
    v100 = vtrn1q_s32(v96, v98);
    v101 = vtrn2q_s32(v96, v98);
    v102 = vtrn1q_s32(v97, v99);
    v103 = vtrn2q_s32(v97, v99);
    v104 = vmovl_high_s8(v100);
    v105 = vmovl_s8(*v100.i8);
    v106 = vmovl_high_s8(v101);
    v107 = vmovl_s8(*v101.i8);
    v108 = vmovl_high_s8(v102);
    v109 = vmovl_s8(*v102.i8);
    v110 = vmovl_high_s8(v103);
    v111 = vmovl_s8(*v103.i8);
    *v119 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*v112.i8, *v105.i8), *v113.i8, *v109.i8), *v114.i8, *v107.i8), *v115.i8, *v111.i8), *v116.i8, *v104.i8), *v117.i8, *v108.i8), *v118.i8, *v106.i8), *v68.i8, *v110.i8), v9)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v112, v105), v113, v109), v114, v107), v115, v111), v116, v104), v117, v108), v118, v106), v68, v110), v9)), v8);
    result = v119->i64 + v59;
    v64 = (v120 + v62);
  }

  while (v121 > 1);
  return result;
}

uint64_t sub_277966EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7)
{
  v7.i64[0] = 0x2000200020002000;
  v7.i64[1] = 0x2000200020002000;
  sub_277966BDC(a1, 2 * a2, (a3 - 2 * a4 - a4 - 6), a4, *a5 >> 48, a6, a7, *a5);
  sub_277966BDC(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_277966BDC(v16, v17, v18, v19, v20, v21, v22, v23);
  sub_277966BDC(v24, v25, v26, v27, v28, v29, v30, v31);
  sub_277966BDC(v32, v33, v34, v35, v36, v37, v38, v39);
  sub_277966BDC(v40, v41, v42, v43, v44, v45, v46, v47);
  sub_277966BDC(v48, v49, v50, v51, v52, v53, v54, v55);
  do
  {
    sub_277966BDC(result, v57, v58, v59, v60, v61, v62, v63);
    v66 = vuzp1q_s16(v64, v65);
    v68 = v67 >> 10;
    v70 = v67 + v69;
    v72.i64[0] = *(v71 + 8 * v68);
    v73 = v70 >> 10;
    v74 = v70 + v69;
    v75.i64[0] = *(v71 + 8 * v73);
    v76 = v74 >> 10;
    v77 = v74 + v69;
    v78.i64[0] = *(v71 + 8 * v76);
    v79 = v77 >> 10;
    v80 = v77 + v69;
    v81.i64[0] = *(v71 + 8 * v79);
    v82 = v80 >> 10;
    v83 = v80 + v69;
    v84.i64[0] = *(v71 + 8 * v82);
    v85 = v83 >> 10;
    v86 = v83 + v69;
    v87.i64[0] = *(v71 + 8 * v85);
    v88.i64[0] = *(v71 + 8 * (v86 >> 10));
    v89.i64[0] = *(v71 + 8 * ((v86 + v69) >> 10));
    v90 = vzip1q_s8(v72, v75);
    v91 = vzip1q_s8(v78, v81);
    v92 = vzip1q_s8(v84, v87);
    v93 = vzip1q_s8(v88, v89);
    v94 = vtrn1q_s16(v90, v91);
    v95 = vtrn2q_s16(v90, v91);
    v96 = vtrn1q_s16(v92, v93);
    v97 = vtrn2q_s16(v92, v93);
    v98 = vtrn1q_s32(v94, v96);
    v99 = vtrn2q_s32(v94, v96);
    v100 = vtrn1q_s32(v95, v97);
    v101 = vtrn2q_s32(v95, v97);
    v102 = vmovl_high_s8(v98);
    v103 = vmovl_s8(*v98.i8);
    v104 = vmovl_high_s8(v99);
    v105 = vmovl_s8(*v99.i8);
    v106 = vmovl_high_s8(v100);
    v107 = vmovl_s8(*v100.i8);
    v108 = vmovl_high_s8(v101);
    v109 = vmovl_s8(*v101.i8);
    *v117 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*v110.i8, *v103.i8), *v111.i8, *v107.i8), *v112.i8, *v105.i8), *v113.i8, *v109.i8), *v114.i8, *v102.i8), *v115.i8, *v106.i8), *v116.i8, *v104.i8), *v66.i8, *v108.i8), 7uLL), vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v110, v103), v111, v107), v112, v105), v113, v109), v114, v102), v115, v106), v116, v104), v66, v108), 7uLL), v7);
    result = v117->i64 + v57;
    v62 = (v118 + v60);
  }

  while (v119 > 1);
  return result;
}

uint64_t sub_2779670C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4 - 1;
  v11 = a3 - 1;
  if (a6 < a4)
  {
    v10 = a6;
  }

  v12 = v10 & ~(v10 >> 63);
  if (a5 < a3)
  {
    v11 = a5;
  }

  v13 = (a9 + v12 * a10 + 2 * (v11 & ~(v11 >> 63)));
  v14 = a6 + a2 - a4;
  v15 = -a6 & ~(-a6 >> 63);
  if (v14 >= a2)
  {
    v14 = a2 - 1;
  }

  v16 = v14 & ~(v14 >> 63);
  if (v15 >= a2)
  {
    v15 = a2 - 1;
  }

  v17 = a5 + result - a3;
  v18 = -a5 & ~(-a5 >> 63);
  if (v17 >= result)
  {
    v17 = result - 1;
  }

  v19 = v17 & ~(v17 >> 63);
  if (v18 >= result)
  {
    v18 = result - 1;
  }

  v20 = (a7 + v15 * a8);
  v21 = a2 - v15 - v16;
  v22 = result - v18 - v19;
  v23 = v20;
  if (v18)
  {
    if (v19)
    {
      do
      {
        v24 = vld1q_dup_s16(v13);
        v25 = v20;
        v26 = v18;
        do
        {
          v27 = v26 <= 16;
          v26 -= 16;
          *v25 = v24;
          v25[1] = v24;
          v25 += 2;
        }

        while (!v27);
        v28 = v13;
        v29 = (v20 + 2 * v18);
        v30 = result - v18 - v19;
        do
        {
          v31 = *v28;
          v32 = *(v28 + 1);
          v33 = *(v28 + 2);
          v34 = *(v28 + 3);
          v28 += 32;
          v27 = v30 <= 32;
          v30 -= 32;
          *v29 = v31;
          v29[1] = v32;
          v29[2] = v33;
          v29[3] = v34;
          v29 += 4;
        }

        while (!v27);
        v35 = &v13[v22 - 1];
        v36 = vld1q_dup_s16(v35);
        v37 = (v20 + 2 * v18 + 2 * v22);
        v38 = v19;
        do
        {
          v27 = v38 <= 16;
          v38 -= 16;
          *v37 = v36;
          v37[1] = v36;
          v37 += 2;
        }

        while (!v27);
        v27 = v21-- <= 1;
        v20 = (v20 + a8);
        v13 = (v13 + a10);
      }

      while (!v27);
    }

    else
    {
      do
      {
        v50 = vld1q_dup_s16(v13);
        v51 = v20;
        v52 = v18;
        do
        {
          v27 = v52 <= 16;
          v52 -= 16;
          *v51 = v50;
          v51[1] = v50;
          v51 += 2;
        }

        while (!v27);
        v53 = v13;
        v54 = (v20 + 2 * v18);
        v55 = result - v18 - v19;
        do
        {
          v56 = *v53;
          v57 = *(v53 + 1);
          v58 = *(v53 + 2);
          v59 = *(v53 + 3);
          v53 += 32;
          v27 = v55 <= 32;
          v55 -= 32;
          *v54 = v56;
          v54[1] = v57;
          v54[2] = v58;
          v54[3] = v59;
          v54 += 4;
        }

        while (!v27);
        v27 = v21-- <= 1;
        v20 = (v20 + a8);
        v13 = (v13 + a10);
      }

      while (!v27);
    }
  }

  else if (v19)
  {
    do
    {
      v39 = v13;
      v40 = v20;
      v41 = result - v19;
      do
      {
        v42 = *v39;
        v43 = *(v39 + 1);
        v44 = *(v39 + 2);
        v45 = *(v39 + 3);
        v39 += 32;
        v27 = v41 <= 32;
        v41 -= 32;
        *v40 = v42;
        v40[1] = v43;
        v40[2] = v44;
        v40[3] = v45;
        v40 += 4;
      }

      while (!v27);
      v46 = &v13[v22 - 1];
      v47 = vld1q_dup_s16(v46);
      v48 = (v20 + 2 * v22);
      v49 = v19;
      do
      {
        v27 = v49 <= 16;
        v49 -= 16;
        *v48 = v47;
        v48[1] = v47;
        v48 += 2;
      }

      while (!v27);
      v27 = v21-- <= 1;
      v20 = (v20 + a8);
      v13 = (v13 + a10);
    }

    while (!v27);
  }

  else
  {
    do
    {
      v60 = v13;
      v61 = v20;
      v62 = result - v19;
      do
      {
        v63 = *v60;
        v64 = *(v60 + 1);
        v65 = *(v60 + 2);
        v66 = *(v60 + 3);
        v60 += 32;
        v27 = v62 <= 32;
        v62 -= 32;
        *v61 = v63;
        v61[1] = v64;
        v61[2] = v65;
        v61[3] = v66;
        v61 += 4;
      }

      while (!v27);
      v27 = v21-- <= 1;
      v20 = (v20 + a8);
      v13 = (v13 + a10);
    }

    while (!v27);
  }

  if (v16)
  {
    v67 = (v20 - a8);
    v68 = result;
    do
    {
      v69 = *v67;
      v70 = v67[1];
      v71 = v67[2];
      v72 = v67[3];
      v67 += 4;
      v73 = v16;
      do
      {
        v27 = v73-- <= 1;
        *v20 = v69;
        v20[1] = v70;
        v20[2] = v71;
        v20[3] = v72;
        v20 = (v20 + a8);
      }

      while (!v27);
      v27 = v68 <= 32;
      v68 -= 32;
      v20 = (v20 - a8 * v16 + 64);
    }

    while (!v27);
  }

  if (v15)
  {
    v74 = (v23 - a8 * v15);
    do
    {
      v75 = *v23;
      v76 = v23[1];
      v77 = v23[2];
      v78 = v23[3];
      v23 += 4;
      v79 = v15;
      do
      {
        v27 = v79-- <= 1;
        *v74 = v75;
        v74[1] = v76;
        v74[2] = v77;
        v74[3] = v78;
        v74 = (v74 + a8);
      }

      while (!v27);
      v27 = result <= 32;
      result -= 32;
      v74 = (v74 - a8 * v15 + 64);
    }

    while (!v27);
  }

  return result;
}

_OWORD *sub_277967304(uint64_t a1, __int128 *a2, uint64_t a3, int *a4, __int128 *a5, __int128 *a6, int a7, char a8)
{
  *&v8 = 0x8000800080008000;
  *(&v8 + 1) = 0x8000800080008000;
  v9 = a1 - 68;
  if ((a8 & 4) != 0)
  {
    v12 = (a5 + a3);
    if (a8)
    {
      v13 = a5 - 4;
      v14 = (v12 - 4);
      if ((a8 & 2) != 0)
      {
        v15 = *(v13 + 16);
        v16 = *v14;
        v17 = *(v14 + 2);
        *v9 = *v13;
        *(v9 + 16) = v15;
        v18 = v9 + 32;
        *v18 = v16;
        *(v18 + 16) = v17;
      }

      else
      {
        v19 = *(v13 + 16);
        v20 = *v14;
        v21 = *(v14 + 4);
        *v9 = *v13;
        *(v9 + 16) = v19;
        *(v9 + 20) = -2147450880;
        v18 = v9 + 32;
        *v18 = v20;
        *(v18 + 16) = v21;
        *(v18 + 20) = -2147450880;
      }

      v11 = (v18 + 32);
    }

    else
    {
      v22 = *a5;
      if ((a8 & 2) != 0)
      {
        v23 = *(a5 + 4);
        v24 = *v12;
        v25 = *(v12 + 4);
        *v9 = -2147450880;
        *(v9 + 4) = v22;
        *(v9 + 20) = v23;
        v26 = v9 + 32;
        *v26 = -2147450880;
        *(v26 + 4) = v24;
        *(v26 + 20) = v25;
      }

      else
      {
        v27 = *v12;
        *v9 = -2147450880;
        *(v9 + 4) = v22;
        *(v9 + 20) = -2147450880;
        v26 = v9 + 32;
        *v26 = -2147450880;
        *(v26 + 4) = v27;
        *(v26 + 20) = -2147450880;
      }

      v11 = (v26 + 32);
    }
  }

  else
  {
    *v9 = v8;
    *(v9 + 16) = v8;
    v10 = (v9 + 32);
    *v10 = v8;
    v10[1] = v8;
    v11 = v10 + 2;
  }

  if (a8)
  {
    if ((a8 & 2) != 0)
    {
      do
      {
        v28 = *a4++;
        v29 = *(a2 + 4);
        v30 = *a2;
        a2 = (a2 + a3);
        v31 = __OFSUB__(a7--, 1);
        *v11 = v28;
        *(v11 + 4) = v30;
        *(v11 + 5) = v29;
        v11 += 2;
      }

      while (!((a7 < 0) ^ v31 | (a7 == 0)));
    }

    else
    {
      do
      {
        v32 = *a4++;
        v33 = *a2;
        a2 = (a2 + a3);
        v31 = __OFSUB__(a7--, 1);
        *v11 = v32;
        *(v11 + 4) = v33;
        *(v11 + 5) = -2147450880;
        v11 += 2;
      }

      while (!((a7 < 0) ^ v31 | (a7 == 0)));
    }
  }

  else if ((a8 & 2) != 0)
  {
    do
    {
      v34 = *(a2 + 4);
      v35 = *a2;
      a2 = (a2 + a3);
      v31 = __OFSUB__(a7--, 1);
      *v11 = -2147450880;
      *(v11 + 4) = v35;
      *(v11 + 5) = v34;
      v11 += 2;
    }

    while (!((a7 < 0) ^ v31 | (a7 == 0)));
  }

  else
  {
    do
    {
      v36 = *a2;
      a2 = (a2 + a3);
      v31 = __OFSUB__(a7--, 1);
      *v11 = -2147450880;
      *(v11 + 4) = v36;
      *(v11 + 5) = -2147450880;
      v11 += 2;
    }

    while (!((a7 < 0) ^ v31 | (a7 == 0)));
  }

  if ((a8 & 8) != 0)
  {
    v39 = (a6 + a3);
    if (a8)
    {
      v40 = a6 - 4;
      v41 = (v39 - 4);
      if ((a8 & 2) != 0)
      {
        v42 = *(v40 + 16);
        v43 = *v41;
        v44 = *(v41 + 2);
        *v11 = *v40;
        *(v11 + 2) = v42;
        result = v11 + 2;
        *result = v43;
        *(result + 2) = v44;
      }

      else
      {
        v45 = *(v40 + 16);
        v46 = *v41;
        v47 = *(v41 + 4);
        *v11 = *v40;
        *(v11 + 4) = v45;
        *(v11 + 5) = -2147450880;
        result = v11 + 2;
        *result = v46;
        *(result + 4) = v47;
        *(result + 5) = -2147450880;
      }
    }

    else
    {
      v48 = *a6;
      if ((a8 & 2) != 0)
      {
        v49 = *(a6 + 4);
        v50 = *v39;
        v51 = *(v39 + 4);
        *v11 = -2147450880;
        *(v11 + 4) = v48;
        *(v11 + 5) = v49;
        result = v11 + 2;
        *result = -2147450880;
        *(result + 4) = v50;
        *(result + 5) = v51;
      }

      else
      {
        v52 = *v39;
        *v11 = -2147450880;
        *(v11 + 4) = v48;
        *(v11 + 5) = -2147450880;
        result = v11 + 2;
        *result = -2147450880;
        *(result + 4) = v52;
        *(result + 5) = -2147450880;
      }
    }
  }

  else
  {
    *v11 = v8;
    v11[1] = v8;
    v37 = v11 + 2;
    *v37 = v8;
    v37[1] = v8;
    return v37 + 2;
  }

  return result;
}

uint64_t sub_277967590(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t *a5, uint64_t *a6, int a7, char a8)
{
  *&v8 = 0x8000800080008000;
  *(&v8 + 1) = 0x8000800080008000;
  v9 = a1 - 36;
  if ((a8 & 4) != 0)
  {
    v11 = (a5 + a3);
    if (a8)
    {
      v12 = (a5 - 4);
      v13 = (v11 - 4);
      if ((a8 & 2) != 0)
      {
        v14 = v12[1];
        v15 = *v13;
        v16 = v13[1];
        *v9 = *v12;
        *(v9 + 8) = v14;
        v17 = v9 + 16;
        *v17 = v15;
        *(v17 + 8) = v16;
      }

      else
      {
        v18 = *(v12 + 2);
        v19 = *v13;
        v20 = *(v13 + 2);
        *v9 = *v12;
        *(v9 + 8) = v18;
        *(v9 + 12) = -2147450880;
        v17 = v9 + 16;
        *v17 = v19;
        *(v17 + 8) = v20;
        *(v17 + 12) = -2147450880;
      }

      v10 = v17 + 16;
    }

    else
    {
      v21 = *a5;
      if ((a8 & 2) != 0)
      {
        v22 = *(a5 + 2);
        v23 = *v11;
        v24 = *(v11 + 2);
        *v9 = -2147450880;
        *(v9 + 4) = v21;
        *(v9 + 12) = v22;
        v25 = v9 + 16;
        *v25 = -2147450880;
        *(v25 + 4) = v23;
        *(v25 + 12) = v24;
      }

      else
      {
        v26 = *v11;
        *v9 = -2147450880;
        *(v9 + 4) = v21;
        *(v9 + 12) = -2147450880;
        v25 = v9 + 16;
        *v25 = -2147450880;
        *(v25 + 4) = v26;
        *(v25 + 12) = -2147450880;
      }

      v10 = v25 + 16;
    }
  }

  else
  {
    *v9 = v8;
    *(v9 + 16) = v8;
    v10 = v9 + 32;
  }

  if (a8)
  {
    if ((a8 & 2) != 0)
    {
      do
      {
        v27 = *a4++;
        v28 = *(a2 + 2);
        v29 = *a2;
        a2 = (a2 + a3);
        v30 = __OFSUB__(a7--, 1);
        *v10 = v27;
        *(v10 + 4) = v29;
        *(v10 + 12) = v28;
        v10 += 16;
      }

      while (!((a7 < 0) ^ v30 | (a7 == 0)));
    }

    else
    {
      do
      {
        v31 = *a4++;
        v32 = *a2;
        a2 = (a2 + a3);
        v30 = __OFSUB__(a7--, 1);
        *v10 = v31;
        *(v10 + 4) = v32;
        *(v10 + 12) = -2147450880;
        v10 += 16;
      }

      while (!((a7 < 0) ^ v30 | (a7 == 0)));
    }
  }

  else if ((a8 & 2) != 0)
  {
    do
    {
      v33 = *(a2 + 2);
      v34 = *a2;
      a2 = (a2 + a3);
      v30 = __OFSUB__(a7--, 1);
      *v10 = -2147450880;
      *(v10 + 4) = v34;
      *(v10 + 12) = v33;
      v10 += 16;
    }

    while (!((a7 < 0) ^ v30 | (a7 == 0)));
  }

  else
  {
    do
    {
      v35 = *a2;
      a2 = (a2 + a3);
      v30 = __OFSUB__(a7--, 1);
      *v10 = -2147450880;
      *(v10 + 4) = v35;
      *(v10 + 12) = -2147450880;
      v10 += 16;
    }

    while (!((a7 < 0) ^ v30 | (a7 == 0)));
  }

  if ((a8 & 8) != 0)
  {
    v37 = (a6 + a3);
    if (a8)
    {
      v38 = (a6 - 4);
      v39 = (v37 - 4);
      if ((a8 & 2) != 0)
      {
        v40 = v38[1];
        v41 = *v39;
        v42 = v39[1];
        *v10 = *v38;
        *(v10 + 8) = v40;
        result = v10 + 16;
        *result = v41;
        *(result + 8) = v42;
      }

      else
      {
        v43 = *(v38 + 2);
        v44 = *v39;
        v45 = *(v39 + 2);
        *v10 = *v38;
        *(v10 + 8) = v43;
        *(v10 + 12) = -2147450880;
        result = v10 + 16;
        *result = v44;
        *(result + 8) = v45;
        *(result + 12) = -2147450880;
      }
    }

    else
    {
      v46 = *a6;
      if ((a8 & 2) != 0)
      {
        v47 = *(a6 + 2);
        v48 = *v37;
        v49 = *(v37 + 2);
        *v10 = -2147450880;
        *(v10 + 4) = v46;
        *(v10 + 12) = v47;
        result = v10 + 16;
        *result = -2147450880;
        *(result + 4) = v48;
        *(result + 12) = v49;
      }

      else
      {
        v50 = *v37;
        *v10 = -2147450880;
        *(v10 + 4) = v46;
        *(v10 + 12) = -2147450880;
        result = v10 + 16;
        *result = -2147450880;
        *(result + 4) = v50;
        *(result + 12) = -2147450880;
      }
    }
  }

  else
  {
    *v10 = v8;
    *(v10 + 16) = v8;
    return v10 + 32;
  }

  return result;
}

int16x8_t *sub_277967814(int16x8_t *result, uint64_t a2, int16x8_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10)
{
  v11 = &unk_27A718FF4 + 2 * ((a4 >> (24 - __clz(a10))) & 1);
  v12 = &unk_27A718FBC + 2 * a6;
  v13 = vdupq_n_s16(a4);
  v14 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v13.i8, v10))))), 0);
  do
  {
    v15 = *a3;
    v16 = 0uLL;
    v17 = 2;
    do
    {
      v18 = *(a3 + 2 * *v12);
      v19 = *(a3 - 2 * *v12);
      v20 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v15, v18), v14));
      v21 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v15, v19), v14));
      v22 = vdupq_n_s16(*v11);
      v16 = vmlaq_s16(vmlaq_s16(v16, vmaxq_s16(vminq_s16(vsubq_s16(v18, v15), v20), vnegq_s16(v20)), v22), vmaxq_s16(vminq_s16(vsubq_s16(v19, v15), v21), vnegq_s16(v21)), v22);
      ++v12;
      --v17;
      ++v11;
    }

    while (v17);
    a3 += 2;
    v23 = __OFSUB__(a8--, 1);
    *result = vaddq_s16(v15, vrshrq_n_s16(vaddq_s16(v16, vcltzq_s16(v16)), 4uLL));
    result = (result + a2);
    v12 -= 2;
    v11 -= 2;
  }

  while (!((a8 < 0) ^ v23 | (a8 == 0)));
  return result;
}

int16x8_t *sub_27796790C(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v9 = &unk_27A718FBC + 2 * a6;
  v10 = vdupq_n_s16(a5);
  v11 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(v8, *v10.i8))))), 1);
  do
  {
    v12 = *a3;
    v13 = 0uLL;
    v14 = 2;
    do
    {
      v15 = v9 + 4;
      v16 = *(a3 + 2 * *v15);
      v17 = *(a3 - 2 * *v15);
      v15 += 8;
      v18 = *(a3 + 2 * *v15);
      v19 = *(a3 - 2 * *v15);
      v20 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v16), v11));
      v21 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v17), v11));
      v22 = vdupq_n_s16(v14);
      v23 = vmlaq_s16(vmlaq_s16(v13, vmaxq_s16(vminq_s16(vsubq_s16(v16, v12), v20), vnegq_s16(v20)), v22), vmaxq_s16(vminq_s16(vsubq_s16(v17, v12), v21), vnegq_s16(v21)), v22);
      v24 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v18), v11));
      v25 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v19), v11));
      v13 = vmlaq_s16(vmlaq_s16(v23, vmaxq_s16(vminq_s16(vsubq_s16(v18, v12), v24), vnegq_s16(v24)), v22), vmaxq_s16(vminq_s16(vsubq_s16(v19, v12), v25), vnegq_s16(v25)), v22);
      v9 = v15 - 11;
      --v14;
    }

    while (v14);
    a3 += 2;
    v26 = __OFSUB__(a8--, 1);
    *result = vaddq_s16(v12, vrshrq_n_s16(vaddq_s16(v13, vcltzq_s16(v13)), 4uLL));
    result = (result + a2);
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v26 | (a8 == 0)));
  return result;
}

int16x8_t *sub_277967A34(int16x8_t *result, uint64_t a2, int16x8_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10)
{
  v10 = &unk_27A718FF4 + 2 * ((a4 >> (24 - __clz(a10))) & 1);
  v11 = &unk_27A718FBC + 2 * a6;
  v12 = vdupq_n_s16(a4);
  v13 = vdupq_n_s16(a5);
  v14 = vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v12.i8, *v13.i8)))));
  v15 = vdupq_lane_s16(v14, 1);
  v16 = vdupq_lane_s16(v14, 0);
  do
  {
    v17 = *a3;
    v18 = 0uLL;
    v19 = *a3;
    v20 = *a3;
    v21 = 2;
    do
    {
      v22 = *(a3 + 2 * *v11);
      v23 = *(a3 - 2 * *v11);
      v24 = v11 + 4;
      v25 = *(a3 + 2 * *v24);
      v26 = *(a3 - 2 * *v24);
      v27 = vminq_u16(vminq_u16(v19, v22), v23);
      v28 = vmaxq_s16(vmaxq_s16(v20, v22), v23);
      v29 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v17, v22), v16));
      v30 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v17, v23), v16));
      v31 = vdupq_n_s16(*v10);
      v32 = vmlaq_s16(vmlaq_s16(v18, vmaxq_s16(vminq_s16(vsubq_s16(v22, v17), v29), vnegq_s16(v29)), v31), vmaxq_s16(vminq_s16(vsubq_s16(v23, v17), v30), vnegq_s16(v30)), v31);
      v24 += 8;
      v33 = *(a3 + 2 * *v24);
      v34 = *(a3 - 2 * *v24);
      v35 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v25), v15));
      v36 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v26), v15));
      v37 = vdupq_n_s16(v21);
      v38 = vmlaq_s16(vmlaq_s16(v32, vmaxq_s16(vminq_s16(vsubq_s16(v25, v17), v35), vnegq_s16(v35)), v37), vmaxq_s16(vminq_s16(vsubq_s16(v26, v17), v36), vnegq_s16(v36)), v37);
      v19 = vminq_u16(vminq_u16(vminq_u16(vminq_u16(v27, v25), v26), v33), v34);
      v20 = vmaxq_s16(vmaxq_s16(vmaxq_s16(vmaxq_s16(v28, v25), v26), v33), v34);
      v39 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v33), v15));
      v40 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v34), v15));
      v18 = vmlaq_s16(vmlaq_s16(v38, vmaxq_s16(vminq_s16(vsubq_s16(v33, v17), v39), vnegq_s16(v39)), v37), vmaxq_s16(vminq_s16(vsubq_s16(v34, v17), v40), vnegq_s16(v40)), v37);
      v11 = v24 - 11;
      --v21;
      ++v10;
    }

    while (v21);
    a3 += 2;
    v41 = __OFSUB__(a8--, 1);
    *result = vmaxq_s16(vminq_s16(vaddq_s16(v17, vrshrq_n_s16(vaddq_s16(v18, vcltzq_s16(v18)), 4uLL)), v20), v19);
    result = (result + a2);
    v11 -= 2;
    v10 -= 2;
  }

  while (!((a8 < 0) ^ v41 | (a8 == 0)));
  return result;
}

int16x8_t *sub_277967C2C(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10)
{
  if (!a4)
  {
    return sub_27796790C(result, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a5)
  {
    return sub_277967A34(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return sub_277967814(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void *sub_277967C40(void *result, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10)
{
  v11 = &unk_27A718FF4 + 2 * ((a4 >> (24 - __clz(a10))) & 1);
  v12 = &unk_27A718FD8 + 2 * a6;
  v13 = vdupq_n_s16(a4);
  v14 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v13.i8, v10))))), 0);
  do
  {
    v15.i64[0] = *a3;
    v15.i64[1] = a3[2];
    v16 = 0uLL;
    v17 = 2;
    do
    {
      v18 = (a3 + 2 * *v12);
      v19 = (a3 - 2 * *v12);
      v20.i64[0] = *v18;
      v21.i64[0] = *v19;
      v20.i64[1] = v18[2];
      v21.i64[1] = v19[2];
      v22 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v15, v20), v14));
      v23 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v15, v21), v14));
      v24 = vdupq_n_s16(*v11);
      v16 = vmlaq_s16(vmlaq_s16(v16, vmaxq_s16(vminq_s16(vsubq_s16(v20, v15), v22), vnegq_s16(v22)), v24), vmaxq_s16(vminq_s16(vsubq_s16(v21, v15), v23), vnegq_s16(v23)), v24);
      ++v12;
      --v17;
      ++v11;
    }

    while (v17);
    v25 = vaddq_s16(v15, vrshrq_n_s16(vaddq_s16(v16, vcltzq_s16(v16)), 4uLL));
    *result = v25.i64[0];
    v26 = (result + a2);
    a3 += 4;
    v27 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v26 = v25.i64[1];
    result = (v26 + a2);
    v12 -= 2;
    v11 -= 2;
  }

  while (!((a8 < 0) ^ v27 | (a8 == 0)));
  return result;
}

void *sub_277967D54(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v9 = &unk_27A718FD8 + 2 * a6;
  v10 = vdupq_n_s16(a5);
  v11 = vdupq_lane_s16(vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(v8, *v10.i8))))), 1);
  do
  {
    v12.i64[0] = *a3;
    v12.i64[1] = a3[2];
    v13 = 0uLL;
    v14 = 2;
    do
    {
      v15 = v9 + 4;
      v16 = (a3 + 2 * *v15);
      v17 = (a3 - 2 * *v15);
      v18.i64[0] = *v16;
      v19.i64[0] = *v17;
      v18.i64[1] = v16[2];
      v19.i64[1] = v17[2];
      v15 += 8;
      v20 = (a3 + 2 * *v15);
      v21 = (a3 - 2 * *v15);
      v22.i64[0] = *v20;
      v23.i64[0] = *v21;
      v22.i64[1] = v20[2];
      v23.i64[1] = v21[2];
      v24 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v18), v11));
      v25 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v19), v11));
      v26 = vdupq_n_s16(v14);
      v27 = vmlaq_s16(vmlaq_s16(v13, vmaxq_s16(vminq_s16(vsubq_s16(v18, v12), v24), vnegq_s16(v24)), v26), vmaxq_s16(vminq_s16(vsubq_s16(v19, v12), v25), vnegq_s16(v25)), v26);
      v28 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v22), v11));
      v29 = vqsubq_u16(v10, vshlq_u16(vabdq_u16(v12, v23), v11));
      v13 = vmlaq_s16(vmlaq_s16(v27, vmaxq_s16(vminq_s16(vsubq_s16(v22, v12), v28), vnegq_s16(v28)), v26), vmaxq_s16(vminq_s16(vsubq_s16(v23, v12), v29), vnegq_s16(v29)), v26);
      v9 = v15 - 11;
      --v14;
    }

    while (v14);
    v30 = vaddq_s16(v12, vrshrq_n_s16(vaddq_s16(v13, vcltzq_s16(v13)), 4uLL));
    *result = v30.i64[0];
    v31 = (result + a2);
    a3 += 4;
    v32 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v31 = v30.i64[1];
    result = (v31 + a2);
    v9 -= 2;
  }

  while (!((a8 < 0) ^ v32 | (a8 == 0)));
  return result;
}

void *sub_277967EA8(void *result, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10)
{
  v10 = &unk_27A718FF4 + 2 * ((a4 >> (24 - __clz(a10))) & 1);
  v11 = &unk_27A718FD8 + 2 * a6;
  v12 = vdupq_n_s16(a4);
  v13 = vdupq_n_s16(a5);
  v14 = vneg_s16(vqsub_u16(vdup_n_s16(a7), vsub_s16(0xF000F000F000FLL, vclz_s16(vtrn1_s16(*v12.i8, *v13.i8)))));
  v15 = vdupq_lane_s16(v14, 1);
  v16 = vdupq_lane_s16(v14, 0);
  do
  {
    v17.i64[0] = *a3;
    v17.i64[1] = a3[2];
    v18 = 0uLL;
    v19 = v17;
    v20 = v17;
    v21 = 2;
    do
    {
      v22 = (a3 + 2 * *v11);
      v23 = (a3 - 2 * *v11);
      v24.i64[0] = *v22;
      v25.i64[0] = *v23;
      v24.i64[1] = v22[2];
      v25.i64[1] = v23[2];
      v26 = v11 + 4;
      v27 = (a3 + 2 * *v26);
      v28 = (a3 - 2 * *v26);
      v29.i64[0] = *v27;
      v30.i64[0] = *v28;
      v29.i64[1] = v27[2];
      v30.i64[1] = v28[2];
      v31 = vminq_u16(vminq_u16(v19, v24), v25);
      v32 = vmaxq_s16(vmaxq_s16(v20, v24), v25);
      v33 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v17, v24), v16));
      v34 = vqsubq_u16(v12, vshlq_u16(vabdq_u16(v17, v25), v16));
      v35 = vdupq_n_s16(*v10);
      v36 = vmlaq_s16(vmlaq_s16(v18, vmaxq_s16(vminq_s16(vsubq_s16(v24, v17), v33), vnegq_s16(v33)), v35), vmaxq_s16(vminq_s16(vsubq_s16(v25, v17), v34), vnegq_s16(v34)), v35);
      v26 += 8;
      v37 = (a3 + 2 * *v26);
      v38 = (a3 - 2 * *v26);
      v24.i64[0] = *v37;
      v25.i64[0] = *v38;
      v24.i64[1] = v37[2];
      v25.i64[1] = v38[2];
      v39 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v29), v15));
      v40 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v30), v15));
      v41 = vdupq_n_s16(v21);
      v42 = vmlaq_s16(vmlaq_s16(v36, vmaxq_s16(vminq_s16(vsubq_s16(v29, v17), v39), vnegq_s16(v39)), v41), vmaxq_s16(vminq_s16(vsubq_s16(v30, v17), v40), vnegq_s16(v40)), v41);
      v19 = vminq_u16(vminq_u16(vminq_u16(vminq_u16(v31, v29), v30), v24), v25);
      v20 = vmaxq_s16(vmaxq_s16(vmaxq_s16(vmaxq_s16(v32, v29), v30), v24), v25);
      v43 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v24), v15));
      v44 = vqsubq_u16(v13, vshlq_u16(vabdq_u16(v17, v25), v15));
      v18 = vmlaq_s16(vmlaq_s16(v42, vmaxq_s16(vminq_s16(vsubq_s16(v24, v17), v43), vnegq_s16(v43)), v41), vmaxq_s16(vminq_s16(vsubq_s16(v25, v17), v44), vnegq_s16(v44)), v41);
      v11 = v26 - 11;
      --v21;
      ++v10;
    }

    while (v21);
    v45 = vmaxq_s16(vminq_s16(vaddq_s16(v17, vrshrq_n_s16(vaddq_s16(v18, vcltzq_s16(v18)), 4uLL)), v20), v19);
    *result = v45.i64[0];
    v46 = (result + a2);
    a3 += 4;
    v47 = __OFSUB__(a8, 2);
    a8 -= 2;
    *v46 = v45.i64[1];
    result = (v46 + a2);
    v11 -= 2;
    v10 -= 2;
  }

  while (!((a8 < 0) ^ v47 | (a8 == 0)));
  return result;
}

void *sub_2779680DC(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10)
{
  if (!a4)
  {
    return sub_277967D54(result, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a5)
  {
    return sub_277967EA8(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return sub_277967C40(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_2779680F0(uint16x8_t *a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v5 = vdupq_n_s16(__clz(a4) - 24);
  v6.i64[0] = 0x80008000800080;
  v6.i64[1] = 0x80008000800080;
  v8 = *a1;
  v7 = (a1 + a2);
  v9 = vsubq_s16(vshlq_u16(v8, v5), v6);
  v10 = vrev64q_s16(v9);
  v11 = vpaddq_s16(v9, 0);
  v12 = vaddq_s16(0, v9);
  *v4.i8 = vrev64_s16(*v11.i8);
  v13.i16[0] = vaddvq_s16(v9);
  v14 = vaddq_s16(0, vextq_s8(0, v9, 0xAuLL));
  v15 = vadd_s16(0, *&vextq_s8(v9, 0, 0xAuLL));
  v16 = v9;
  v17 = v9;
  v19 = *v7;
  v18 = (v7 + a2);
  v20 = vextq_s8(v10, v10, 8uLL);
  v21 = v11;
  v22 = vsubq_s16(vshlq_u16(v19, v5), v6);
  v23 = v4;
  v24 = vrev64q_s16(v22);
  v25 = vpaddq_s16(v22, 0);
  v26 = vaddq_s16(v12, v22);
  v27 = vextq_s8(v24, v24, 8uLL);
  *v4.i8 = vrev64_s16(*v25.i8);
  v13.i16[1] = vaddvq_s16(v22);
  v28 = vaddq_s16(v14, vextq_s8(0, v22, 0xAuLL));
  v29 = vadd_s16(v15, *&vextq_s8(v22, 0, 0xAuLL));
  v30 = vaddq_s16(v16, v22);
  v31 = vextq_s8(0, v22, 0xEuLL);
  v32 = vextq_s8(v22, 0, 0xEuLL);
  v34 = *v18;
  v33 = (v18 + a2);
  v35 = vaddq_s16(v17, v31);
  v36 = vaddq_s16(0, v32);
  v37 = vaddq_s16(v20, vextq_s8(0, v27, 0xEuLL));
  v38 = vaddq_s16(0, vextq_s8(v27, 0, 0xEuLL));
  v39 = vsubq_s16(vshlq_u16(v34, v5), v6);
  v40 = vaddq_s16(v21, vextq_s8(0, v25, 0xEuLL));
  v41 = vadd_s16(0, *&vextq_s8(v25, 0, 0xEuLL));
  v42 = vaddq_s16(v23, vextq_s8(0, v4, 0xEuLL));
  v43 = vadd_s16(0, *&vextq_s8(v4, 0, 0xEuLL));
  v44 = vrev64q_s16(v39);
  v45 = vpaddq_s16(v39, 0);
  v46 = vaddq_s16(v26, v39);
  v47 = vextq_s8(v44, v44, 8uLL);
  *v4.i8 = vrev64_s16(*v45.i8);
  v13.i16[2] = vaddvq_s16(v39);
  v48 = vaddq_s16(v28, vextq_s8(0, v39, 0xCuLL));
  v49 = vadd_s16(v29, *&vextq_s8(v39, 0, 0xCuLL));
  v50 = vaddq_s16(v30, vextq_s8(0, v39, 0xEuLL));
  v51 = vadd_s16(0, *&vextq_s8(v39, 0, 0xEuLL));
  v52 = vextq_s8(0, v39, 0xCuLL);
  v53 = vextq_s8(v39, 0, 0xCuLL);
  v55 = *v33;
  v54 = (v33 + a2);
  v56 = vaddq_s16(v35, v52);
  v57 = vaddq_s16(v36, v53);
  v58 = vaddq_s16(v37, vextq_s8(0, v47, 0xCuLL));
  v59 = vaddq_s16(v38, vextq_s8(v47, 0, 0xCuLL));
  v60 = vsubq_s16(vshlq_u16(v55, v5), v6);
  v61 = vaddq_s16(v40, vextq_s8(0, v45, 0xCuLL));
  v62 = vadd_s16(v41, *&vextq_s8(v45, 0, 0xCuLL));
  v63 = vaddq_s16(v42, vextq_s8(0, v4, 0xCuLL));
  v64 = vadd_s16(v43, *&vextq_s8(v4, 0, 0xCuLL));
  v65 = vrev64q_s16(v60);
  v66 = vpaddq_s16(v60, 0);
  v67 = vaddq_s16(v46, v60);
  v68 = vextq_s8(v65, v65, 8uLL);
  *v4.i8 = vrev64_s16(*v66.i8);
  v13.i16[3] = vaddvq_s16(v60);
  v69 = vaddq_s16(v48, vextq_s8(0, v60, 0xCuLL));
  v70 = vadd_s16(v49, *&vextq_s8(v60, 0, 0xCuLL));
  v71 = vaddq_s16(v50, vextq_s8(0, v60, 0xEuLL));
  v72 = vadd_s16(v51, *&vextq_s8(v60, 0, 0xEuLL));
  v73 = vextq_s8(0, v60, 0xAuLL);
  v74 = vextq_s8(v60, 0, 0xAuLL);
  v76 = *v54;
  v75 = (v54 + a2);
  v77 = vaddq_s16(v56, v73);
  v78 = vaddq_s16(v57, v74);
  v79 = vaddq_s16(v58, vextq_s8(0, v68, 0xAuLL));
  v80 = vaddq_s16(v59, vextq_s8(v68, 0, 0xAuLL));
  v81 = vsubq_s16(vshlq_u16(v76, v5), v6);
  v82 = vaddq_s16(v61, vextq_s8(0, v66, 0xAuLL));
  v83 = vadd_s16(v62, *&vextq_s8(v66, 0, 0xAuLL));
  v84 = vaddq_s16(v63, vextq_s8(0, v4, 0xAuLL));
  v85 = vadd_s16(v64, *&vextq_s8(v4, 0, 0xAuLL));
  v86 = vrev64q_s16(v81);
  v87 = vpaddq_s16(v81, 0);
  v88 = vaddq_s16(v67, v81);
  v89 = vextq_s8(v86, v86, 8uLL);
  *v4.i8 = vrev64_s16(*v87.i8);
  v13.i16[4] = vaddvq_s16(v81);
  v90 = vaddq_s16(v69, vextq_s8(0, v81, 0xEuLL));
  v91 = vadd_s16(v70, *&vextq_s8(v81, 0, 0xEuLL));
  v92 = vaddq_s16(v71, vextq_s8(0, v81, 0xCuLL));
  v93 = vadd_s16(v72, *&vextq_s8(v81, 0, 0xCuLL));
  v94 = vextq_s8(0, v81, 8uLL);
  v95 = vextq_s8(v81, 0, 8uLL);
  v96 = *v75;
  result = v75->i64 + a2;
  v97 = vaddq_s16(v79, vextq_s8(0, v89, 8uLL));
  v98 = vaddq_s16(v80, vextq_s8(v89, 0, 8uLL));
  v99 = vsubq_s16(vshlq_u16(v96, v5), v6);
  v100 = vaddq_s16(v82, vextq_s8(0, v87, 8uLL));
  v101 = vadd_s16(v83, *&vextq_s8(v87, 0, 8uLL));
  v102 = vaddq_s16(v84, vextq_s8(0, v4, 8uLL));
  v103 = vadd_s16(v85, *&vextq_s8(v4, 0, 8uLL));
  v104 = vrev64q_s16(v99);
  v105 = vpaddq_s16(v99, 0);
  v106 = vaddq_s16(v88, v99);
  v107 = vextq_s8(v104, v104, 8uLL);
  *v4.i8 = vrev64_s16(*v105.i8);
  v13.i16[5] = vaddvq_s16(v99);
  v108 = vaddq_s16(v90, vextq_s8(0, v99, 0xEuLL));
  v109 = vadd_s16(v91, *&vextq_s8(v99, 0, 0xEuLL));
  v110 = vaddq_s16(v92, vextq_s8(0, v99, 0xCuLL));
  v111 = vadd_s16(v93, *&vextq_s8(v99, 0, 0xCuLL));
  v112 = vaddq_s16(vaddq_s16(v77, v94), vextq_s8(0, v99, 6uLL));
  v113 = vaddq_s16(vaddq_s16(v78, v95), vextq_s8(v99, 0, 6uLL));
  v114 = vaddq_s16(v97, vextq_s8(0, v107, 6uLL));
  v115 = vaddq_s16(v98, vextq_s8(v107, 0, 6uLL));
  v116 = vsubq_s16(vshlq_u16(*result, v5), v6);
  v117 = vaddq_s16(v100, vextq_s8(0, v105, 6uLL));
  v118 = vadd_s16(v101, *&vextq_s8(v105, 0, 6uLL));
  v119 = vaddq_s16(v102, vextq_s8(0, v4, 6uLL));
  v120 = vadd_s16(v103, *&vextq_s8(v4, 0, 6uLL));
  v121 = vrev64q_s16(v116);
  v122 = vpaddq_s16(v116, 0);
  v123 = vaddq_s16(v106, v116);
  v124 = vextq_s8(v121, v121, 8uLL);
  *v4.i8 = vrev64_s16(*v122.i8);
  v13.i16[6] = vaddvq_s16(v116);
  v125 = vaddq_s16(v108, v116);
  v126 = vaddq_s16(v110, vextq_s8(0, v116, 0xAuLL));
  v127 = vadd_s16(v111, *&vextq_s8(v116, 0, 0xAuLL));
  v128 = vaddq_s16(v112, vextq_s8(0, v116, 4uLL));
  v129 = vaddq_s16(v113, vextq_s8(v116, 0, 4uLL));
  v130 = vaddq_s16(v114, vextq_s8(0, v124, 4uLL));
  v131 = vaddq_s16(v115, vextq_s8(v124, 0, 4uLL));
  v132 = vsubq_s16(vshlq_u16(*(result + a2), v5), v6);
  v133 = vaddq_s16(v117, vextq_s8(0, v122, 4uLL));
  v134 = vadd_s16(v118, *&vextq_s8(v122, 0, 4uLL));
  v135 = vaddq_s16(v119, vextq_s8(0, v4, 4uLL));
  v136 = vadd_s16(v120, *&vextq_s8(v4, 0, 4uLL));
  v137 = vrev64q_s16(v132);
  v138 = vpaddq_s16(v132, 0);
  v139 = vaddq_s16(v123, v132);
  v140 = vextq_s8(v137, v137, 8uLL);
  *v4.i8 = vrev64_s16(*v138.i8);
  v13.i16[7] = vaddvq_s16(v132);
  v141 = vaddq_s16(v125, v132);
  v142 = vaddq_s16(v126, vextq_s8(0, v132, 0xAuLL));
  v143 = vadd_s16(v127, *&vextq_s8(v132, 0, 0xAuLL));
  v144 = vaddq_s16(v128, vextq_s8(0, v132, 2uLL));
  v145 = vaddq_s16(v130, vextq_s8(0, v140, 2uLL));
  v146 = vaddq_s16(v133, vextq_s8(0, v138, 2uLL));
  v147 = vadd_s16(v134, *&vextq_s8(v138, 0, 2uLL));
  v148 = vaddq_s16(v135, vextq_s8(0, v4, 2uLL));
  v149 = vadd_s16(v136, *&vextq_s8(v4, 0, 2uLL));
  v6.i64[0] = 0x6900000069;
  v6.i64[1] = 0x6900000069;
  v150 = vaddvq_s32(vmulq_s32(vmlal_high_s16(vmull_s16(*v139.i8, *v139.i8), v139, v139), v6));
  v151 = vrev64q_s16(vaddq_s16(v129, vextq_s8(v132, 0, 2uLL)));
  v152 = vrev64q_s16(vaddq_s16(v131, vextq_s8(v140, 0, 2uLL)));
  v153 = vextq_s8(v151, v151, 0xAuLL);
  v154 = vextq_s8(v152, v152, 0xAuLL);
  v168 = vaddvq_s32(vmulq_s32(vmlal_high_s16(vmull_s16(*v13.i8, *v13.i8), v13, v13), v6));
  v172 = v150;
  v155 = vmovl_u16(0xD2011801A40348);
  v156 = vmovl_high_u16(qword_27A718F94);
  v157 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v145.i8, *v145.i8), *v154.i8, *v154.i8), v155), vmlal_high_s16(vmull_high_s16(v145, v145), v154, v154), v156));
  v167[0] = vaddvq_s32(vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v144.i8, *v144.i8), *v153.i8, *v153.i8), v155), vmlal_high_s16(vmull_high_s16(v144, v144), v153, v153), v156));
  v170 = v157;
  v158 = vmovl_u16(0x69008C00D201A4);
  v159 = vmovl_u16(0x69006900690069);
  v160 = vmovl_u16(0x1A400D2008CLL);
  v161 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v146.i8, *v146.i8), v158), vmull_high_s16(v146, v146), v159), vmull_s16(v147, v147), v160));
  v162 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v148.i8, *v148.i8), v158), vmull_high_s16(v148, v148), v159), vmull_s16(v149, v149), v160));
  v163 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v141.i8, *v141.i8), v158), vmull_high_s16(v141, v141), v159), vmull_s16(v109, v109), v160));
  v164 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmull_s16(*v142.i8, *v142.i8), v158), vmull_high_s16(v142, v142), v159), vmull_s16(v143, v143), v160));
  v167[1] = v161;
  v169 = v162;
  v165 = v167[0];
  v171 = v163;
  v173 = v164;
  LODWORD(result) = v161 > v167[0];
  if (v161 > v167[0])
  {
    v165 = v161;
  }

  if (v168 > v165)
  {
    LODWORD(result) = 2;
    v165 = v168;
  }

  if (v162 > v165)
  {
    LODWORD(result) = 3;
    v165 = v162;
  }

  if (v157 > v165)
  {
    LODWORD(result) = 4;
    v165 = v157;
  }

  if (v163 > v165)
  {
    LODWORD(result) = 5;
    v165 = v163;
  }

  if (v150 > v165)
  {
    LODWORD(result) = 6;
    v165 = v150;
  }

  if (v164 <= v165)
  {
    result = result;
  }

  else
  {
    result = 7;
  }

  if (v164 > v165)
  {
    v165 = v164;
  }

  *a3 = (v165 - v167[result ^ 4]) >> 10;
  return result;
}

double *sub_277968718(double *result, uint64_t a2, double a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

__n128 *sub_277968734(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

__n128 *sub_277968750(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    result[1] = a3;
    v8 = (result + a2);
    *a8 = a3;
    a8[1] = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    v8[1] = a3;
    result = (v8 + a2);
    *v9 = a3;
    v9[1] = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

__n128 *sub_277968770(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    result[1] = a3;
    result[2] = a3;
    result[3] = a3;
    v8 = (result + a2);
    *a8 = a3;
    a8[1] = a3;
    a8[2] = a3;
    a8[3] = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    v8[1] = a3;
    v8[2] = a3;
    v8[3] = a3;
    result = (v8 + a2);
    *v9 = a3;
    v9[1] = a3;
    v9[2] = a3;
    v9[3] = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

__n128 *sub_277968798(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  v8 = a2 - 64;
  do
  {
    *result = a3;
    result[1] = a3;
    result[2] = a3;
    result[3] = a3;
    v9 = result + 4;
    *a8 = a3;
    a8[1] = a3;
    a8[2] = a3;
    a8[3] = a3;
    v10 = a8 + 4;
    *v9 = a3;
    v9[1] = a3;
    v9[2] = a3;
    v9[3] = a3;
    v11 = (v9 + v8);
    *v10 = a3;
    v10[1] = a3;
    v10[2] = a3;
    v10[3] = a3;
    v12 = (v10 + v8);
    v13 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v11 = a3;
    v11[1] = a3;
    v11[2] = a3;
    v11[3] = a3;
    v11 += 4;
    *v12 = a3;
    v12[1] = a3;
    v12[2] = a3;
    v12[3] = a3;
    v12 += 4;
    *v11 = a3;
    v11[1] = a3;
    v11[2] = a3;
    v11[3] = a3;
    result = (v11 + v8);
    *v12 = a3;
    v12[1] = a3;
    v12[2] = a3;
    v12[3] = a3;
    a8 = (v12 + v8);
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

void *sub_277968804(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v7 = *a3;
  do
  {
    *result = v7;
    v8 = (result + a2);
    *a7 = v7;
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v7;
    result = (v8 + a2);
    *v9 = v7;
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

_OWORD *sub_277968824(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v7 = *a3;
  do
  {
    *result = v7;
    v8 = (result + a2);
    *a7 = v7;
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v7;
    result = (v8 + a2);
    *v9 = v7;
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

_OWORD *sub_277968844(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v7 = *a3;
  v8 = a3[1];
  do
  {
    *result = v7;
    result[1] = v8;
    v9 = (result + a2);
    *a7 = v7;
    a7[1] = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v7;
    v9[1] = v8;
    result = (v9 + a2);
    *v10 = v7;
    v10[1] = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

_OWORD *sub_277968864(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  do
  {
    *result = v7;
    result[1] = v8;
    result[2] = v9;
    result[3] = v10;
    v11 = (result + a2);
    *a7 = v7;
    a7[1] = v8;
    a7[2] = v9;
    a7[3] = v10;
    v12 = (a7 + a2);
    v13 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v11 = v7;
    v11[1] = v8;
    v11[2] = v9;
    v11[3] = v10;
    result = (v11 + a2);
    *v12 = v7;
    v12[1] = v8;
    v12[2] = v9;
    v12[3] = v10;
    a7 = (v12 + a2);
  }

  while (!((a5 < 0) ^ v13 | (a5 == 0)));
  return result;
}

_OWORD *sub_277968884(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v7 = a3 + 4;
  v12 = a2 - 64;
  v13 = *v7;
  v14 = v7[1];
  v15 = v7[2];
  v16 = v7[3];
  do
  {
    *result = v8;
    result[1] = v9;
    result[2] = v10;
    result[3] = v11;
    v17 = result + 4;
    *a7 = v8;
    a7[1] = v9;
    a7[2] = v10;
    a7[3] = v11;
    v18 = a7 + 4;
    *v17 = v13;
    v17[1] = v14;
    v17[2] = v15;
    v17[3] = v16;
    v19 = (v17 + v12);
    *v18 = v13;
    v18[1] = v14;
    v18[2] = v15;
    v18[3] = v16;
    v20 = (v18 + v12);
    v21 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = v10;
    v19[3] = v11;
    v19 += 4;
    *v20 = v8;
    v20[1] = v9;
    v20[2] = v10;
    v20[3] = v11;
    v20 += 4;
    *v19 = v13;
    v19[1] = v14;
    v19[2] = v15;
    v19[3] = v16;
    result = (v19 + v12);
    *v20 = v13;
    v20[1] = v14;
    v20[2] = v15;
    v20[3] = v16;
    a7 = (v20 + v12);
  }

  while (!((a5 < 0) ^ v21 | (a5 == 0)));
  return result;
}

void *sub_2779688F0(void *result, uint64_t a2, const __int16 *a3, uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s16(a3);
    a3 = (a3 + a8);
    *result = v11.val[3].i64[0];
    v8 = (result + a2);
    *a7 = v11.val[2].i64[0];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v11.val[1].i64[0];
    result = (v8 + a2);
    *v9 = v11.val[0].i64[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968910(int16x8_t *result, uint64_t a2, const __int16 *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s16(a3);
    a3 = (a3 + a8);
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968930(int16x8_t *result, uint64_t a2, const __int16 *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s16(a3);
    a3 = (a3 + a8);
    result[1] = v11.val[3];
    a7[1] = v11.val[2];
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    v8[1] = v11.val[1];
    v9[1] = v11.val[0];
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968960(int16x8_t *result, uint64_t a2, const __int16 *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s16(a3);
    a3 = (a3 + a8);
    result[1] = v11.val[3];
    a7[1] = v11.val[2];
    result[2] = v11.val[3];
    result[3] = v11.val[3];
    a7[2] = v11.val[2];
    a7[3] = v11.val[2];
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    v8[1] = v11.val[1];
    v9[1] = v11.val[0];
    v8[2] = v11.val[1];
    v8[3] = v11.val[1];
    v9[2] = v11.val[0];
    v9[3] = v11.val[0];
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int16x8_t *sub_2779689A0(int16x8_t *result, uint64_t a2, const __int16 *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7, uint64_t a8)
{
  do
  {
    v11 = vld4q_dup_s16(a3);
    a3 = (a3 + a8);
    result[1] = v11.val[3];
    a7[1] = v11.val[2];
    result[2] = v11.val[3];
    result[3] = v11.val[3];
    a7[2] = v11.val[2];
    a7[3] = v11.val[2];
    result[4] = v11.val[3];
    result[5] = v11.val[3];
    a7[4] = v11.val[2];
    a7[5] = v11.val[2];
    result[6] = v11.val[3];
    result[7] = v11.val[3];
    a7[6] = v11.val[2];
    a7[7] = v11.val[2];
    *result = v11.val[3];
    v8 = (result + a2);
    *a7 = v11.val[2];
    v9 = (a7 + a2);
    v10 = __OFSUB__(a5, 4);
    a5 -= 4;
    v8[1] = v11.val[1];
    v9[1] = v11.val[0];
    v8[2] = v11.val[1];
    v8[3] = v11.val[1];
    v9[2] = v11.val[0];
    v9[3] = v11.val[0];
    v8[4] = v11.val[1];
    v8[5] = v11.val[1];
    v9[4] = v11.val[0];
    v9[5] = v11.val[0];
    v8[6] = v11.val[1];
    v8[7] = v11.val[1];
    v9[6] = v11.val[0];
    v9[7] = v11.val[0];
    *v8 = v11.val[1];
    result = (v8 + a2);
    *v9 = v11.val[0];
    a7 = (v9 + a2);
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

int16x4_t *sub_277968A30(int16x4_t *result, uint64_t a2, int16x4_t *a3, uint64_t a4, int a5, uint64_t a6, int16x4_t *a7)
{
  v7 = *a3;
  v7.i16[0] = vaddv_s16(*a3);
  v8 = vdup_lane_s16(vrshr_n_u16(v7, 2uLL), 0);
  do
  {
    *result = v8;
    v9 = (result + a2);
    *a7 = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v8;
    result = (v9 + a2);
    *v10 = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968A5C(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7)
{
  v7 = *a3;
  v7.i16[0] = vaddvq_s16(*a3);
  v8 = vdupq_lane_s16(vrshr_n_u16(*v7.i8, 3uLL), 0);
  do
  {
    *result = v8;
    v9 = (result + a2);
    *a7 = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v8;
    result = (v9 + a2);
    *v10 = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968A88(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7)
{
  v7 = vpaddq_s16(*a3, a3[1]);
  v7.i16[0] = vaddvq_s16(v7);
  v8 = vdupq_lane_s16(vrshr_n_u16(*v7.i8, 4uLL), 0);
  do
  {
    *result = v8;
    result[1] = v8;
    v9 = (result + a2);
    *a7 = v8;
    a7[1] = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v8;
    v9[1] = v8;
    result = (v9 + a2);
    *v10 = v8;
    v10[1] = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968ABC(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7)
{
  v7 = vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3]));
  v7.i32[0] = vaddlvq_u16(v7);
  v8 = vdupq_lane_s16(vrshrn_n_s32(v7, 5uLL), 0);
  do
  {
    *result = v8;
    result[1] = v8;
    result[2] = v8;
    result[3] = v8;
    v9 = (result + a2);
    *a7 = v8;
    a7[1] = v8;
    a7[2] = v8;
    a7[3] = v8;
    v10 = (a7 + a2);
    v11 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v9 = v8;
    v9[1] = v8;
    v9[2] = v8;
    v9[3] = v8;
    result = (v9 + a2);
    *v10 = v8;
    v10[1] = v8;
    v10[2] = v8;
    v10[3] = v8;
    a7 = (v10 + a2);
  }

  while (!((a5 < 0) ^ v11 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277968B00(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, uint64_t a6, int16x8_t *a7)
{
  v7 = vpaddq_s16(vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3])), vpaddq_s16(vpaddq_s16(a3[4], a3[5]), vpaddq_s16(a3[6], a3[7])));
  v7.i32[0] = vaddlvq_u16(v7);
  v8 = a2 - 64;
  v9 = vdupq_lane_s16(vrshrn_n_s32(v7, 6uLL), 0);
  do
  {
    *result = v9;
    result[1] = v9;
    result[2] = v9;
    result[3] = v9;
    v10 = result + 4;
    *a7 = v9;
    a7[1] = v9;
    a7[2] = v9;
    a7[3] = v9;
    v11 = a7 + 4;
    *v10 = v9;
    v10[1] = v9;
    v10[2] = v9;
    v10[3] = v9;
    v12 = (v10 + v8);
    *v11 = v9;
    v11[1] = v9;
    v11[2] = v9;
    v11[3] = v9;
    v13 = (v11 + v8);
    v14 = __OFSUB__(a5, 4);
    a5 -= 4;
    *v12 = v9;
    v12[1] = v9;
    v12[2] = v9;
    v12[3] = v9;
    v12 += 4;
    *v13 = v9;
    v13[1] = v9;
    v13[2] = v9;
    v13[3] = v9;
    v13 += 4;
    *v12 = v9;
    v12[1] = v9;
    v12[2] = v9;
    v12[3] = v9;
    result = (v12 + v8);
    *v13 = v9;
    v13[1] = v9;
    v13[2] = v9;
    v13[3] = v9;
    a7 = (v13 + v8);
  }

  while (!((a5 < 0) ^ v14 | (a5 == 0)));
  return result;
}

uint64_t sub_277968BAC(uint64_t a1, uint64_t a2, int16x4_t *a3, uint64_t (*a4)(__n128))
{
  v4 = *a3;
  v4.i16[0] = vaddv_s16(*a3);
  return a4(vdupq_lane_s16(vrshr_n_u16(v4, 2uLL), 0));
}

double *sub_277968BC0(double *result, uint64_t a2, double a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277968BDC(uint64_t a1, uint64_t a2, int16x8_t *a3, uint64_t (*a4)(__n128))
{
  v4 = *a3;
  v4.i16[0] = vaddvq_s16(*a3);
  return a4(vdupq_lane_s16(vrshr_n_u16(*v4.i8, 3uLL), 0));
}

__n128 *sub_277968BF0(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    v8 = (result + a2);
    *a8 = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    result = (v8 + a2);
    *v9 = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277968C0C(uint64_t a1, uint64_t a2, int16x8_t *a3, uint64_t (*a4)(__n128, __n128))
{
  v4 = vpaddq_s16(*a3, a3[1]);
  v4.i16[0] = vaddvq_s16(v4);
  v5 = vdupq_lane_s16(vrshr_n_u16(*v4.i8, 4uLL), 0);
  return a4(v5, v5);
}

__n128 *sub_277968C28(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    result[1] = a3;
    v8 = (result + a2);
    *a8 = a3;
    a8[1] = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    v8[1] = a3;
    result = (v8 + a2);
    *v9 = a3;
    v9[1] = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277968C48(uint64_t a1, uint64_t a2, int16x8_t *a3, uint64_t (*a4)(__n128))
{
  v4 = vpaddlq_u16(vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3])));
  v4.i32[0] = vaddvq_s32(v4);
  return a4(vdupq_lane_s16(vrshrn_n_s32(v4, 5uLL), 0));
}

__n128 *sub_277968C6C(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  do
  {
    *result = a3;
    result[1] = a3;
    result[2] = a3;
    result[3] = a3;
    v8 = (result + a2);
    *a8 = a3;
    a8[1] = a3;
    a8[2] = a3;
    a8[3] = a3;
    v9 = (a8 + a2);
    v10 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v8 = a3;
    v8[1] = a3;
    v8[2] = a3;
    v8[3] = a3;
    result = (v8 + a2);
    *v9 = a3;
    v9[1] = a3;
    v9[2] = a3;
    v9[3] = a3;
    a8 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v10 | (a6 == 0)));
  return result;
}

uint64_t sub_277968C94(uint64_t a1, uint64_t a2, int16x8_t *a3, uint64_t (*a4)(__n128))
{
  v4 = vpaddq_s16(vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3])), vpaddq_s16(vpaddq_s16(a3[4], a3[5]), vpaddq_s16(a3[6], a3[7])));
  v4.i32[0] = vaddlvq_u16(v4);
  return a4(vdupq_lane_s16(vrshrn_n_s32(v4, 6uLL), 0));
}

__n128 *sub_277968CC8(__n128 *result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, __n128 *a8)
{
  v8 = a2 - 64;
  do
  {
    *result = a3;
    result[1] = a3;
    result[2] = a3;
    result[3] = a3;
    v9 = result + 4;
    *a8 = a3;
    a8[1] = a3;
    a8[2] = a3;
    a8[3] = a3;
    v10 = a8 + 4;
    *v9 = a3;
    v9[1] = a3;
    v9[2] = a3;
    v9[3] = a3;
    v11 = (v9 + v8);
    *v10 = a3;
    v10[1] = a3;
    v10[2] = a3;
    v10[3] = a3;
    v12 = (v10 + v8);
    v13 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v11 = a3;
    v11[1] = a3;
    v11[2] = a3;
    v11[3] = a3;
    v11 += 4;
    *v12 = a3;
    v12[1] = a3;
    v12[2] = a3;
    v12[3] = a3;
    v12 += 4;
    *v11 = a3;
    v11[1] = a3;
    v11[2] = a3;
    v11[3] = a3;
    result = (v11 + v8);
    *v12 = a3;
    v12[1] = a3;
    v12[2] = a3;
    v12[3] = a3;
    a8 = (v12 + v8);
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

int16x4_t *sub_277968D78(int16x4_t *result, uint64_t a2, uint16x4_t *a3, int32x2_t a4, uint64_t a5, int a6, uint64_t a7, int16x4_t *a8)
{
  v10 = *a3;
  v10.i32[0] = vaddlv_u16(*a3);
  v11 = vshl_u32(vadd_s32(vadd_s32(a4, v8), v10), v9);
  if (a6 != 4)
  {
    if (a6 == 16)
    {
      v12 = 26215;
    }

    else
    {
      v12 = 43691;
    }

    v11 = vshr_n_u32(vmul_s32(v11, vdup_n_s32(v12)), 0x11uLL);
  }

  v13 = vdup_lane_s16(v11, 0);
  do
  {
    *result = v13;
    v14 = (result + a2);
    *a8 = v13;
    v15 = (a8 + a2);
    v16 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v14 = v13;
    result = (v14 + a2);
    *v15 = v13;
    a8 = (v15 + a2);
  }

  while (!((a6 < 0) ^ v16 | (a6 == 0)));
  return result;
}

int16x8_t *sub_277968DE0(int16x8_t *result, uint64_t a2, uint16x8_t *a3, int32x2_t a4, uint64_t a5, int a6, uint64_t a7, int16x8_t *a8)
{
  v10 = *a3;
  v10.i32[0] = vaddlvq_u16(*a3);
  v11 = vshl_u32(vadd_s32(vadd_s32(a4, v8), *v10.i8), v9);
  if (a6 != 8)
  {
    if (a6 == 32)
    {
      v12 = 26215;
    }

    else
    {
      v12 = 43691;
    }

    v11 = vshr_n_u32(vmul_s32(v11, vdup_n_s32(v12)), 0x11uLL);
  }

  v13 = vdupq_lane_s16(v11, 0);
  do
  {
    *result = v13;
    v14 = (result + a2);
    *a8 = v13;
    v15 = (a8 + a2);
    v16 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v14 = v13;
    result = (v14 + a2);
    *v15 = v13;
    a8 = (v15 + a2);
  }

  while (!((a6 < 0) ^ v16 | (a6 == 0)));
  return result;
}

int16x8_t *sub_277968E4C(int16x8_t *result, uint64_t a2, int16x8_t *a3, int32x2_t a4, uint64_t a5, int a6, uint64_t a7, int16x8_t *a8)
{
  v10 = vpaddq_s16(*a3, a3[1]);
  v10.i32[0] = vaddlvq_u16(v10);
  v11 = vshl_u32(vadd_s32(vadd_s32(a4, v8), *v10.i8), v9);
  if (a6 != 16)
  {
    if ((a6 & 0x38) != 0)
    {
      v12 = 43691;
    }

    else
    {
      v12 = 26215;
    }

    v11 = vshr_n_u32(vmul_s32(v11, vdup_n_s32(v12)), 0x11uLL);
  }

  v13 = vdupq_lane_s16(v11, 0);
  do
  {
    *result = v13;
    result[1] = v13;
    v14 = (result + a2);
    *a8 = v13;
    a8[1] = v13;
    v15 = (a8 + a2);
    v16 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v14 = v13;
    v14[1] = v13;
    result = (v14 + a2);
    *v15 = v13;
    v15[1] = v13;
    a8 = (v15 + a2);
  }

  while (!((a6 < 0) ^ v16 | (a6 == 0)));
  return result;
}

int16x8_t *sub_277968EC8(int16x8_t *result, uint64_t a2, int16x8_t *a3, int32x2_t a4, uint64_t a5, int a6, uint64_t a7, int16x8_t *a8)
{
  v10 = vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3]));
  v10.i32[0] = vaddlvq_u16(v10);
  v11 = vshl_u32(vadd_s32(vadd_s32(a4, v8), *v10.i8), v9);
  if (a6 != 32)
  {
    if (a6 == 8)
    {
      v12 = 26215;
    }

    else
    {
      v12 = 43691;
    }

    v11 = vshr_n_u32(vmul_s32(v11, vdup_n_s32(v12)), 0x11uLL);
  }

  v13 = vdupq_lane_s16(v11, 0);
  do
  {
    *result = v13;
    result[1] = v13;
    result[2] = v13;
    result[3] = v13;
    v14 = (result + a2);
    *a8 = v13;
    a8[1] = v13;
    a8[2] = v13;
    a8[3] = v13;
    v15 = (a8 + a2);
    v16 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v14 = v13;
    v14[1] = v13;
    v14[2] = v13;
    v14[3] = v13;
    result = (v14 + a2);
    *v15 = v13;
    v15[1] = v13;
    v15[2] = v13;
    v15[3] = v13;
    a8 = (v15 + a2);
  }

  while (!((a6 < 0) ^ v16 | (a6 == 0)));
  return result;
}

int16x8_t *sub_277968F68(int16x8_t *result, uint64_t a2, int16x8_t *a3, int32x2_t a4, uint64_t a5, int a6, uint64_t a7, int16x8_t *a8)
{
  v10 = vpaddq_s16(vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3])), vpaddq_s16(vpaddq_s16(a3[4], a3[5]), vpaddq_s16(a3[6], a3[7])));
  v10.i32[0] = vaddlvq_u16(v10);
  v11 = vshl_u32(vadd_s32(vadd_s32(a4, v8), *v10.i8), v9);
  if (a6 != 64)
  {
    if (a6 == 16)
    {
      v12 = 26215;
    }

    else
    {
      v12 = 43691;
    }

    v11 = vshr_n_u32(vmul_s32(v11, vdup_n_s32(v12)), 0x11uLL);
  }

  v13 = a2 - 64;
  v14 = vdupq_lane_s16(v11, 0);
  do
  {
    *result = v14;
    result[1] = v14;
    result[2] = v14;
    result[3] = v14;
    v15 = result + 4;
    *a8 = v14;
    a8[1] = v14;
    a8[2] = v14;
    a8[3] = v14;
    v16 = a8 + 4;
    *v15 = v14;
    v15[1] = v14;
    v15[2] = v14;
    v15[3] = v14;
    v17 = (v15 + v13);
    *v16 = v14;
    v16[1] = v14;
    v16[2] = v14;
    v16[3] = v14;
    v18 = (v16 + v13);
    v19 = __OFSUB__(a6, 4);
    a6 -= 4;
    *v17 = v14;
    v17[1] = v14;
    v17[2] = v14;
    v17[3] = v14;
    v17 += 4;
    *v18 = v14;
    v18[1] = v14;
    v18[2] = v14;
    v18[3] = v14;
    v18 += 4;
    *v17 = v14;
    v17[1] = v14;
    v17[2] = v14;
    v17[3] = v14;
    result = (v17 + v13);
    *v18 = v14;
    v18[1] = v14;
    v18[2] = v14;
    v18[3] = v14;
    a8 = (v18 + v13);
  }

  while (!((a6 < 0) ^ v19 | (a6 == 0)));
  return result;
}

void *sub_277969044@<X0>(void *result@<X0>, uint64_t a2@<X1>, const __int16 *a3@<X2>, int a4@<W4>, void *a5@<X6>, uint64_t a6@<X7>, const double *a7@<X8>, int64x2_t a8@<Q0>, int64x2_t a9@<Q1>, int64x2_t a10@<Q2>, int64x2_t a11@<Q3>, int16x8_t a12@<Q4>)
{
  v12 = vld1q_dup_f64(a7);
  v13 = vsubq_s16(v12, a12);
  do
  {
    *a8.i8 = vld4_dup_s16(a3);
    a3 = (a3 + a6);
    a8 = vzip1q_s64(a8, a9);
    a10 = vzip1q_s64(a10, a11);
    v14 = vaddq_s16(v13, a8);
    v15 = vaddq_s16(v13, a10);
    v16 = vabdq_s16(v12, v14);
    v17 = vabdq_s16(v12, v15);
    v18 = vabdq_s16(a12, v14);
    v19 = vabdq_s16(a12, v15);
    v20 = vbslq_s8(vcgeq_s16(vminq_u16(v17, v19), vabdq_s16(a10, v15)), a10, vbslq_s8(vcgeq_s16(v19, v17), v12, a12));
    v21 = vbslq_s8(vcgeq_s16(vminq_u16(v16, v18), vabdq_s16(a8, v14)), a8, vbslq_s8(vcgeq_s16(v18, v16), v12, a12));
    *result = v20.i64[1];
    v22 = (result + a2);
    *a5 = v20.i64[0];
    v23 = (a5 + a2);
    v24 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v22 = v21.i64[1];
    result = (v22 + a2);
    *v23 = v21.i64[0];
    a5 = (v23 + a2);
  }

  while (!((a4 < 0) ^ v24 | (a4 == 0)));
  return result;
}

int8x16_t *sub_2779690BC@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, const __int16 *a3@<X2>, int a4@<W3>, int a5@<W4>, int8x16_t *a6@<X6>, uint64_t a7@<X7>, int16x8_t *a8@<X8>, int16x8_t a9@<Q4>)
{
  v10 = *a8;
  v9 = a8 + 1;
  v11 = a4;
  v12 = (result + a2);
  v13 = (a6 + a2);
  v14 = 2 * a2 - 2 * a4;
  while (1)
  {
    v30 = vld4q_dup_s16(a3);
    a3 = (a3 + a7);
    while (1)
    {
      v15 = vsubq_s16(v10, a9);
      v16 = vaddq_s16(v15, v30.val[0]);
      v17 = vaddq_s16(v15, v30.val[1]);
      v18 = vaddq_s16(v15, v30.val[2]);
      v19 = vaddq_s16(v15, v30.val[3]);
      v20 = vabdq_s16(v10, v16);
      v21 = vabdq_s16(v10, v17);
      v22 = vabdq_s16(v10, v18);
      v23 = vabdq_s16(v10, v19);
      v24 = vabdq_s16(a9, v16);
      v25 = vabdq_s16(a9, v17);
      v26 = vabdq_s16(a9, v18);
      v27 = vabdq_s16(a9, v19);
      *result++ = vbslq_s8(vcgeq_s16(vminq_u16(v23, v27), vabdq_s16(v30.val[3], v19)), v30.val[3], vbslq_s8(vcgeq_s16(v27, v23), v10, a9));
      *a6++ = vbslq_s8(vcgeq_s16(vminq_u16(v22, v26), vabdq_s16(v30.val[2], v18)), v30.val[2], vbslq_s8(vcgeq_s16(v26, v22), v10, a9));
      v28 = __OFSUB__(a4, 8);
      a4 -= 8;
      *v12++ = vbslq_s8(vcgeq_s16(vminq_u16(v21, v25), vabdq_s16(v30.val[1], v17)), v30.val[1], vbslq_s8(vcgeq_s16(v25, v21), v10, a9));
      *v13++ = vbslq_s8(vcgeq_s16(vminq_u16(v20, v24), vabdq_s16(v30.val[0], v16)), v30.val[0], vbslq_s8(vcgeq_s16(v24, v20), v10, a9));
      if ((a4 < 0) ^ v28 | (a4 == 0))
      {
        break;
      }

      v10 = *v9++;
    }

    v28 = __OFSUB__(a5, 4);
    a5 -= 4;
    if ((a5 < 0) ^ v28 | (a5 == 0))
    {
      break;
    }

    v29 = (v9 - 2 * v11);
    result = (result + v14);
    a6 = (a6 + v14);
    v10 = *v29;
    v9 = v29 + 1;
    v12 = (v12 + v14);
    v13 = (v13 + v14);
    a4 = v11;
  }

  return result;
}

uint64_t sub_2779691C4(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v9 = (a7 - 2 * a9);
  v10 = vld1q_dup_s16(v9);
  return ((&qword_277969488 - *(&qword_277969488 + __clz(a8) - 25)))(a1, a2, a3, a4, v10);
}

int16x4_t *sub_277969200@<X0>(int16x4_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int16x4_t *a5@<X6>, const double *a6@<X8>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, int64x2_t a9@<Q2>, int64x2_t a10@<Q3>, int16x8_t a11@<Q4>)
{
  v13 = vld1q_dup_f64(a6);
  v14 = vld1_dup_f32(v11);
  v15 = (a3 - 8);
  v16 = vdupq_lane_s16(*v13.i8, 3);
  v17 = vsubq_s16(v13, a11);
  v18 = vmovl_u8(v14);
  v19 = vadd_s16(*a11.i8, *v16.i8);
  do
  {
    *a7.i8 = vld4_dup_s16(v15);
    v15 -= 4;
    v24 = vld4_dup_s8(v12);
    v12 += 4;
    v20 = vzip1q_s64(a8, a7);
    a7 = vsubq_s16(vzip1q_s64(a10, a9), v16);
    a8 = vsubq_s16(v20, v16);
    *v24.val[0].i8 = vmovl_u8(vzip1_s32(v24.val[0], v24.val[1]));
    *v24.val[2].i8 = vmovl_u8(vzip1_s32(v24.val[2], v24.val[3]));
    *result = vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v19, 8uLL), *a7.i8, *v18.i8), *v17.i8, v24.val[0]), 9uLL);
    v21 = (result + a2);
    *a5 = vrshrn_n_s32(vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v19, 8uLL), a7, v18), v17, *v24.val[0].i8), 9uLL);
    v22 = (a5 + a2);
    v23 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v21 = vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v19, 8uLL), *a8.i8, *v18.i8), *v17.i8, v24.val[2]), 9uLL);
    result = (v21 + a2);
    *v22 = vrshrn_n_s32(vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v19, 8uLL), a8, v18), v17, *v24.val[2].i8), 9uLL);
    a5 = (v22 + a2);
  }

  while (!((a4 < 0) ^ v23 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779692A4@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int16x8_t *a5@<X6>, int16x8_t *a6@<X8>, int16x8_t a7@<Q4>)
{
  v9 = (a3 - 8);
  v10 = vdupq_laneq_s16(*a6, 7);
  v11 = vsubq_s16(*a6, a7);
  v12 = vmovl_u8(*v7);
  v13 = vadd_s16(*a7.i8, *v10.i8);
  do
  {
    v18 = vld4q_dup_s16(v9);
    v9 -= 4;
    v17 = vld4_dup_s8(v8);
    v8 += 4;
    v18.val[0] = vsubq_s16(v18.val[0], v10);
    v18.val[1] = vsubq_s16(v18.val[1], v10);
    v18.val[2] = vsubq_s16(v18.val[2], v10);
    v18.val[3] = vsubq_s16(v18.val[3], v10);
    *v17.val[0].i8 = vmovl_u8(v17.val[0]);
    *v17.val[1].i8 = vmovl_u8(v17.val[1]);
    *v17.val[2].i8 = vmovl_u8(v17.val[2]);
    *v17.val[3].i8 = vmovl_u8(v17.val[3]);
    *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v13, 8uLL), *v18.val[3].i8, *v12.i8), *v11.i8, v17.val[0]), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v13, 8uLL), v18.val[3], v12), v11, *v17.val[0].i8), 9uLL);
    v14 = (result + a2);
    *a5 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v13, 8uLL), *v18.val[2].i8, *v12.i8), *v11.i8, v17.val[1]), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v13, 8uLL), v18.val[2], v12), v11, *v17.val[1].i8), 9uLL);
    v15 = (a5 + a2);
    v16 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v13, 8uLL), *v18.val[1].i8, *v12.i8), *v11.i8, v17.val[2]), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v13, 8uLL), v18.val[1], v12), v11, *v17.val[2].i8), 9uLL);
    result = (v14 + a2);
    *v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v13, 8uLL), *v18.val[0].i8, *v12.i8), *v11.i8, v17.val[3]), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v13, 8uLL), v18.val[0], v12), v11, *v17.val[3].i8), 9uLL);
    a5 = (v15 + a2);
  }

  while (!((a4 < 0) ^ v16 | (a4 == 0)));
  return result;
}

int16x8_t *sub_277969388@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int16x8_t *a6@<X6>, int16x8_t *a7@<X8>, int16x8_t a8@<Q4>)
{
  v10 = (a3 + 2 * a4);
  v11 = a2 - 2 * a4;
  v12 = vld1q_dup_s16(v10);
  v13 = (a3 - 4);
  v14 = a4;
  v15 = vadd_s16(*a8.i8, *v12.i8);
  while (1)
  {
    v29 = vld2q_dup_s16(v13);
    v13 -= 2;
    v28 = vld2_dup_s8(v9);
    v9 += 2;
    v16 = vsubq_s16(v29.val[0], v12);
    v17 = vsubq_s16(v29.val[1], v12);
    v18 = vmovl_u8(v28.val[0]);
    v19 = vmovl_u8(v28.val[1]);
    do
    {
      v20 = *v8++;
      v21 = *a7;
      v22 = a7[1];
      a7 += 2;
      v23 = vmovl_u8(*v20.i8);
      v24 = vmovl_high_u8(v20);
      v25 = vsubq_s16(v21, a8);
      v26 = vsubq_s16(v22, a8);
      v27 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v15, 8uLL), *v17.i8, *v23.i8), *v25.i8, *v18.i8), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v15, 8uLL), v17, v23), v25, v18), 9uLL);
      result[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v15, 8uLL), *v17.i8, *v24.i8), *v26.i8, *v18.i8), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v15, 8uLL), v17, v24), v26, v18), 9uLL);
      result += 2;
      *a6 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v15, 8uLL), *v16.i8, *v23.i8), *v25.i8, *v19.i8), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v15, 8uLL), v16, v23), v25, v19), 9uLL);
      a6[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmlal_s16(vshll_n_u16(v15, 8uLL), *v16.i8, *v24.i8), *v26.i8, *v19.i8), 9uLL), vmlal_high_s16(vmlal_high_s16(vshll_n_u16(v15, 8uLL), v16, v24), v26, v19), 9uLL);
      a6 += 2;
    }

    while (!((a4 < 0) ^ v27 | (a4 == 0)));
    v27 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v27 | (a5 == 0))
    {
      break;
    }

    a7 = (a7 - 2 * v14);
    v8 = (v8 - v14);
    result = (result + v11);
    a6 = (a6 + v11);
    a4 = v14;
  }

  return result;
}

uint64_t sub_277969494(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v9 = (a7 - 2 * a9);
  v10 = vld1q_dup_s16(v9);
  return ((&qword_277969620 - *(&qword_277969620 + __clz(a8) - 25)))(a1, a2, a3, a4, v10);
}

void *sub_2779694CC(void *result, uint64_t a2, const double *a3, double a4, double a5, double a6, double a7, int16x8_t a8, uint64_t a9, int a10, uint64_t a11, void *a12, const char *a13)
{
  v13 = vld1q_dup_f64(a3);
  v14 = vsubq_s16(v13, a8);
  do
  {
    v20 = vld4_dup_s8(a13);
    a13 += 4;
    v15 = vaddq_s16(vqrdmulhq_s16(v14, vshll_n_u8(vzip1_s32(v20.val[0], v20.val[1]), 7uLL)), a8);
    v16 = vaddq_s16(vqrdmulhq_s16(v14, vshll_n_u8(vzip1_s32(v20.val[2], v20.val[3]), 7uLL)), a8);
    *result = v15.i64[0];
    v17 = (result + a2);
    *a12 = v15.i64[1];
    v18 = (a12 + a2);
    v19 = __OFSUB__(a10, 4);
    a10 -= 4;
    *v17 = v16.i64[0];
    result = (v17 + a2);
    *v18 = v16.i64[1];
    a12 = (v18 + a2);
  }

  while (!((a10 < 0) ^ v19 | (a10 == 0)));
  return result;
}

int16x8_t *sub_277969514(int16x8_t *result, uint64_t a2, int16x8_t *a3, double a4, double a5, double a6, double a7, int16x8_t a8, uint64_t a9, int a10, uint64_t a11, int16x8_t *a12, const char *a13)
{
  v13 = vsubq_s16(*a3, a8);
  do
  {
    v17 = vld4_dup_s8(a13);
    a13 += 4;
    *result = vaddq_s16(vqrdmulhq_s16(v13, vshll_n_u8(v17.val[0], 7uLL)), a8);
    v14 = (result + a2);
    *a12 = vaddq_s16(vqrdmulhq_s16(v13, vshll_n_u8(v17.val[1], 7uLL)), a8);
    v15 = (a12 + a2);
    v16 = __OFSUB__(a10, 4);
    a10 -= 4;
    *v14 = vaddq_s16(vqrdmulhq_s16(v13, vshll_n_u8(v17.val[2], 7uLL)), a8);
    result = (v14 + a2);
    *v15 = vaddq_s16(vqrdmulhq_s16(v13, vshll_n_u8(v17.val[3], 7uLL)), a8);
    a12 = (v15 + a2);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int16x8_t *sub_27796956C(int16x8_t *result, uint64_t a2, int16x8_t *a3, int a4, int a5, double a6, double a7, double a8, double a9, int16x8_t a10, uint64_t a11, int16x8_t *a12, const char *a13)
{
  v13 = (result + a2);
  v14 = (a12 + a2);
  v15 = 2 * a2 - 2 * a4;
  for (i = a4; ; a4 = i)
  {
    v26 = vld4_dup_s8(a13);
    a13 += 4;
    v17 = vshll_n_u8(v26.val[0], 7uLL);
    v18 = vshll_n_u8(v26.val[1], 7uLL);
    v19 = vshll_n_u8(v26.val[2], 7uLL);
    v20 = vshll_n_u8(v26.val[3], 7uLL);
    do
    {
      v21 = *a3;
      v22 = a3[1];
      a3 += 2;
      v23 = vsubq_s16(v21, a10);
      v24 = vsubq_s16(v22, a10);
      v25 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result = vaddq_s16(vqrdmulhq_s16(v23, v17), a10);
      result[1] = vaddq_s16(vqrdmulhq_s16(v24, v17), a10);
      result += 2;
      *a12 = vaddq_s16(vqrdmulhq_s16(v23, v18), a10);
      a12[1] = vaddq_s16(vqrdmulhq_s16(v24, v18), a10);
      a12 += 2;
      *v13 = vaddq_s16(vqrdmulhq_s16(v23, v19), a10);
      v13[1] = vaddq_s16(vqrdmulhq_s16(v24, v19), a10);
      v13 += 2;
      *v14 = vaddq_s16(vqrdmulhq_s16(v23, v20), a10);
      v14[1] = vaddq_s16(vqrdmulhq_s16(v24, v20), a10);
      v14 += 2;
    }

    while (!((a4 < 0) ^ v25 | (a4 == 0)));
    v25 = __OFSUB__(a5, 4);
    a5 -= 4;
    if ((a5 < 0) ^ v25 | (a5 == 0))
    {
      break;
    }

    a3 = (a3 - 2 * i);
    result = (result + v15);
    a12 = (a12 + v15);
    v13 = (v13 + v15);
    v14 = (v14 + v15);
  }

  return result;
}

uint64_t sub_27796962C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a8 + 2 * a9);
  v10 = vld1q_dup_s16(v9);
  return ((&dword_2779697CC - *(&dword_2779697CC + __clz(a9) - 25)))(a1, a2, a3, a4, a5, v10);
}

void *sub_277969660@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, void *a5@<X6>, const float *a6@<X8>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, int64x2_t a9@<Q2>, int64x2_t a10@<Q3>, int16x8_t a11@<Q5>)
{
  v11 = vld1_dup_f32(a6);
  v12 = (a3 - 8);
  v13 = vshll_n_u8(v11, 7uLL);
  do
  {
    *a7.i8 = vld4_dup_s16(v12);
    v12 -= 4;
    v14 = vzip1q_s64(a8, a7);
    a7 = vsubq_s16(vzip1q_s64(a10, a9), a11);
    a8 = vsubq_s16(v14, a11);
    v15 = vaddq_s16(vqrdmulhq_s16(a7, v13), a11);
    v16 = vaddq_s16(vqrdmulhq_s16(a8, v13), a11);
    *result = v15.i64[0];
    v17 = (result + a2);
    *a5 = v15.i64[1];
    v18 = (a5 + a2);
    v19 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v17 = v16.i64[0];
    result = (v17 + a2);
    *v18 = v16.i64[1];
    a5 = (v18 + a2);
  }

  while (!((a4 < 0) ^ v19 | (a4 == 0)));
  return result;
}

int16x8_t *sub_2779696B0@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int16x8_t *a5@<X6>, uint8x8_t *a6@<X8>, int16x8_t a7@<Q5>)
{
  v7 = (a3 - 8);
  v8 = vshll_n_u8(*a6, 7uLL);
  do
  {
    v12 = vld4q_dup_s16(v7);
    v7 -= 4;
    *result = vaddq_s16(vqrdmulhq_s16(vsubq_s16(v12.val[3], a7), v8), a7);
    v9 = (result + a2);
    *a5 = vaddq_s16(vqrdmulhq_s16(vsubq_s16(v12.val[2], a7), v8), a7);
    v10 = (a5 + a2);
    v11 = __OFSUB__(a4, 4);
    a4 -= 4;
    *v9 = vaddq_s16(vqrdmulhq_s16(vsubq_s16(v12.val[1], a7), v8), a7);
    result = (v9 + a2);
    *v10 = vaddq_s16(vqrdmulhq_s16(vsubq_s16(v12.val[0], a7), v8), a7);
    a5 = (v10 + a2);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

int16x8_t *sub_277969710@<X0>(int16x8_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int16x8_t *a6@<X6>, uint8x16_t *a7@<X8>, int16x8_t a8@<Q5>)
{
  v8 = (a3 - 8);
  v9 = (result + a2);
  v10 = (a6 + a2);
  v11 = 2 * a2 - 2 * a4;
  for (i = a4; ; a4 = i)
  {
    v21 = vld4q_dup_s16(v8);
    v8 -= 4;
    v13 = vsubq_s16(v21.val[0], a8);
    v14 = vsubq_s16(v21.val[1], a8);
    v15 = vsubq_s16(v21.val[2], a8);
    v16 = vsubq_s16(v21.val[3], a8);
    do
    {
      v17 = *a7++;
      v18 = vshll_n_u8(*v17.i8, 7uLL);
      v19 = vshll_high_n_u8(v17, 7uLL);
      v20 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result = vaddq_s16(vqrdmulhq_s16(v16, v18), a8);
      result[1] = vaddq_s16(vqrdmulhq_s16(v16, v19), a8);
      result += 2;
      *a6 = vaddq_s16(vqrdmulhq_s16(v15, v18), a8);
      a6[1] = vaddq_s16(vqrdmulhq_s16(v15, v19), a8);
      a6 += 2;
      *v9 = vaddq_s16(vqrdmulhq_s16(v14, v18), a8);
      v9[1] = vaddq_s16(vqrdmulhq_s16(v14, v19), a8);
      v9 += 2;
      *v10 = vaddq_s16(vqrdmulhq_s16(v13, v18), a8);
      v10[1] = vaddq_s16(vqrdmulhq_s16(v13, v19), a8);
      v10 += 2;
    }

    while (!((a4 < 0) ^ v20 | (a4 == 0)));
    v20 = __OFSUB__(a5, 4);
    a5 -= 4;
    if ((a5 < 0) ^ v20 | (a5 == 0))
    {
      break;
    }

    a7 = (a7 - i);
    result = (result + v11);
    a6 = (a6 + v11);
    v9 = (v9 + v11);
    v10 = (v10 + v11);
  }

  return result;
}

int16x8_t sub_2779697D8(int16x8_t *a1, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned int a5)
{
  v5 = vdupq_n_s16(a5);
  v6 = &a3->i16[a4];
  v7 = (&unk_27A719028 - 2 * a4);
  v8 = vld1q_dup_s16(v6);
  v9.i64[0] = 0x9000900090009;
  v9.i64[1] = 0x9000900090009;
  v10 = vbslq_s8(*v7, v8, *a3);
  v11 = vbslq_s8(v7[1], v8, a3[1]);
  v12 = vextq_s8(v10, v11, 2uLL);
  v13 = vextq_s8(v11, v8, 2uLL);
  v14 = vaddq_s16(v12, vextq_s8(v10, v11, 4uLL));
  v15 = vaddq_s16(v13, vextq_s8(v11, v8, 4uLL));
  v16 = vaddq_s16(v10, vextq_s8(v10, v11, 6uLL));
  v17 = vaddq_s16(v11, vextq_s8(v11, v8, 6uLL));
  v18 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vsubw_u16(vmull_u16(*v14.i8, 0x9000900090009), *v16.i8), 4uLL), vsubw_high_u16(vmull_high_u16(v14, v9), v16), 4uLL), v5);
  v19 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vsubw_u16(vmull_u16(*v15.i8, 0x9000900090009), *v17.i8), 4uLL), vsubw_high_u16(vmull_high_u16(v15, v9), v17), 4uLL), v5);
  result = vzip1q_s16(v12, v18);
  *a1 = result;
  a1[1] = vzip2q_s16(v12, v18);
  a1[2] = vzip1q_s16(v13, v19);
  a1[3] = vzip2q_s16(v13, v19);
  return result;
}

int8x16_t sub_27796987C(int16x8_t *a1, unsigned int a2, int8x16_t *a3, unsigned int a4)
{
  v4 = &a3->i16[a2];
  v5 = (&unk_27A719028 - 2 * a2);
  v6 = vld1q_dup_s16(a3->i16);
  v7 = vld1q_dup_s16(v4);
  v8.i64[0] = 0x9000900090009;
  v8.i64[1] = 0x9000900090009;
  result = vbslq_s8(*v5, v7, *a3);
  v10 = vbslq_s8(v5[1], v7, a3[1]);
  v11 = vaddq_s16(result, vextq_s8(result, v10, 2uLL));
  v12 = vaddq_s16(vextq_s8(v6, result, 0xEuLL), vextq_s8(result, v10, 4uLL));
  v13 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vsubw_u16(vmull_u16(*v11.i8, 0x9000900090009), *v12.i8), 4uLL), vsubw_high_u16(vmull_high_u16(v11, v8), v12), 4uLL), vdupq_n_s16(a4));
  a1[2].i16[0] = v7.i16[0];
  *a1 = vzip1q_s16(result, v13);
  a1[1] = vzip2q_s16(result, v13);
  return result;
}

uint16x8_t *sub_2779698F4(uint16x8_t *result, int a2, _OWORD *a3, int a4, unsigned int a5)
{
  if (a5 == 3)
  {
    v20 = (a3 - 2);
    v21.i64[0] = 0x2000200020002;
    v21.i64[1] = 0x2000200020002;
    v25 = *v20;
    v22 = v20 + 1;
    v23.i64[0] = 0x4000400040004;
    v23.i64[1] = 0x4000400040004;
    v24.i64[0] = 0x4000400040004;
    v24.i64[1] = 0x4000400040004;
    v25.i16[0] = v25.i16[1];
    while (1)
    {
      v26 = *v22;
      v27 = *(v22 + 1);
      v22 += 2;
      if (a4 < 18)
      {
        break;
      }

      v28 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v25, v21), vextq_s8(v25, v26, 2uLL), v23), vextq_s8(v25, v26, 4uLL), v24), vextq_s8(v25, v26, 6uLL), v23), vextq_s8(v25, v26, 8uLL), v21);
      v13 = __OFSUB__(a2, 16);
      a2 -= 16;
      v25 = v27;
      a4 -= 16;
      *result = vrshrq_n_u16(v28, 4uLL);
      result[1] = vrshrq_n_u16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v26, v21), vextq_s8(v26, v27, 2uLL), v23), vextq_s8(v26, v27, 4uLL), v24), vextq_s8(v26, v27, 6uLL), v23), vextq_s8(v26, v27, 8uLL), v21), 4uLL);
      result += 2;
      if ((a2 < 0) ^ v13 | (a2 == 0))
      {
        return result;
      }
    }

    v29 = (&unk_27A719026 - 2 * a4);
    v30 = v22 + a4 - 23;
    v31 = vld1q_dup_s16(v30);
    v32 = vbslq_s8(*v29, v31, v25);
    v33 = vbslq_s8(v29[1], v31, v26);
    v34 = vbslq_s8(v29[2], v31, v27);
    while (1)
    {
      v35 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v32, v21), vextq_s8(v32, v33, 2uLL), v23), vextq_s8(v32, v33, 4uLL), v24), vextq_s8(v32, v33, 6uLL), v23), vextq_s8(v32, v33, 8uLL), v21);
      v36 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v33, v21), vextq_s8(v33, v34, 2uLL), v23), vextq_s8(v33, v34, 4uLL), v24), vextq_s8(v33, v34, 6uLL), v23), vextq_s8(v33, v34, 8uLL), v21);
      v13 = __OFSUB__(a2, 16);
      a2 -= 16;
      v32 = v34;
      v33 = v31;
      v34 = v31;
      a4 -= 16;
      *result = vrshrq_n_u16(v35, 4uLL);
      result[1] = vrshrq_n_u16(v36, 4uLL);
      result += 2;
      if ((a2 < 0) ^ v13 | (a2 == 0))
      {
        break;
      }

      if (a4 < 0)
      {
        do
        {
          v13 = __OFSUB__(a2, 8);
          a2 -= 8;
          *result++ = v31;
        }

        while (!((a2 < 0) ^ v13 | (a2 == 0)));
        return result;
      }
    }
  }

  else
  {
    v5.i32[0] = *(&unk_27A719052 + 2 * a5);
    v7 = *a3;
    v6 = a3 + 1;
    v8 = vdupq_lane_s16(v5, 0);
    v9 = vdupq_lane_s16(v5, 1);
    while (1)
    {
      v10 = *v6;
      v11 = *(v6 + 1);
      v6 += 2;
      if (a4 < 17)
      {
        break;
      }

      v12 = vmlaq_s16(vmlaq_s16(vmulq_s16(v7, v8), vextq_s8(v7, v10, 2uLL), v9), vextq_s8(v7, v10, 4uLL), v8);
      v13 = __OFSUB__(a2, 16);
      a2 -= 16;
      v7 = v11;
      a4 -= 16;
      *result = vrshrq_n_u16(v12, 4uLL);
      result[1] = vrshrq_n_u16(vmlaq_s16(vmlaq_s16(vmulq_s16(v10, v8), vextq_s8(v10, v11, 2uLL), v9), vextq_s8(v10, v11, 4uLL), v8), 4uLL);
      result += 2;
      if ((a2 < 0) ^ v13 | (a2 == 0))
      {
        return result;
      }
    }

    v14 = (&unk_27A719028 - 2 * a4);
    v15 = v6 + a4 - 24;
    v16 = vld1q_dup_s16(v15);
    v17 = vbslq_s8(*v14, v16, v7);
    v18 = vbslq_s8(v14[1], v16, v10);
    v13 = __OFSUB__(a2, 16);
    v19 = a2 - 16;
    *result = vrshrq_n_u16(vmlaq_s16(vmlaq_s16(vmulq_s16(v17, v8), vextq_s8(v17, v18, 2uLL), v9), vextq_s8(v17, v18, 4uLL), v8), 4uLL);
    result[1] = vrshrq_n_u16(vmlaq_s16(vmlaq_s16(vmulq_s16(v18, v8), vextq_s8(v18, v16, 2uLL), v9), vextq_s8(v18, v16, 4uLL), v8), 4uLL);
    for (result += 2; !((v19 < 0) ^ v13 | (v19 == 0)); ++result)
    {
      v13 = __OFSUB__(v19, 16);
      v19 -= 16;
      *result = v16;
    }
  }

  return result;
}

int16x8_t *sub_277969B1C(int16x8_t *result, unsigned int a2, int a3)
{
  v3 = vdupq_n_s16(a2);
  do
  {
    v4 = __OFSUB__(a3, 8);
    a3 -= 8;
    *result++ = v3;
  }

  while (!((a3 < 0) ^ v4 | (a3 == 0)));
  return result;
}

uint64_t sub_277969B30(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a3 + 2 * a7);
  vld1q_dup_s16(v7);
  return ((&qword_277969DC0 - *(&qword_277969DC0 + __clz(a4) - 25)))();
}

int16x4_t *sub_277969B58(int16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8)
{
  while (1)
  {
    v9 = a8 >> 6;
    v10 = a8 & 0x3E;
    v11 = a8 + a6;
    if (v9 >= a7)
    {
      break;
    }

    v12 = vrshrn_n_s32(vmlal_s16(vshll_n_u16(*(a3 + 2 * (v11 >> 6)), 6uLL), vsub_s16(*&vextq_s8(*(a3 + 2 * (v11 >> 6)), *(a3 + 2 * (v11 >> 6)), 2uLL), *(a3 + 2 * (v11 >> 6))), vdup_n_s16(v11 & 0x3E)), 6uLL);
    *result = vrshrn_n_s32(vmlal_s16(vshll_n_u16(*(a3 + (2 * v9)), 6uLL), vsub_s16(*&vextq_s8(*(a3 + (2 * v9)), *(a3 + (2 * v9)), 2uLL), *(a3 + (2 * v9))), vdup_n_s16(v10)), 6uLL);
    v13 = (result + a2);
    a8 = v11 + a6;
    v14 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v13 = v12;
    result = (v13 + a2);
    if ((a5 < 0) ^ v14 | (a5 == 0))
    {
      return result;
    }
  }

  do
  {
    *result = v8;
    v15 = (result + a2);
    v14 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v15 = v8;
    result = (v15 + a2);
  }

  while (!((a5 < 0) ^ v14 | (a5 == 0)));
  return result;
}

int16x8_t *sub_277969BE0(int16x8_t *result, uint64_t a2, uint64_t a3, double a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, int a9, int a10, int a11, unsigned int a12)
{
  while (1)
  {
    v14 = a12 >> 6;
    v15 = a12 & 0x3E;
    v16 = a12 + a10;
    v17 = v16 & 0x3E;
    if (v14 >= a11)
    {
      break;
    }

    v18 = (a3 + 2 * v14);
    v19 = (a3 + 2 * (v16 >> 6));
    v20 = vdupq_n_s16(v15);
    v21 = vdupq_n_s16(v17);
    a5.i16[0] = v18[1].i16[0];
    a7.i16[0] = v19[1].i16[0];
    v22 = vdupq_n_s16(v12 - v15);
    v23 = vdupq_n_s16(v12 - v17);
    a5 = vextq_s8(*v18, a5, 2uLL);
    a7 = vextq_s8(*v19, a7, 2uLL);
    v24 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v19->i8, *v23.i8), *a7.i8, *v21.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v19, v23), a7, v21), 6uLL);
    *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v18->i8, *v22.i8), *a5.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v18, v22), a5, v20), 6uLL);
    v25 = (result + a2);
    a12 = v16 + a10;
    v26 = __OFSUB__(a9, 2);
    a9 -= 2;
    *v25 = v24;
    result = (v25 + a2);
    if ((a9 < 0) ^ v26 | (a9 == 0))
    {
      return result;
    }
  }

  do
  {
    *result = v13;
    v27 = &result->i8[a2];
    v26 = __OFSUB__(a9, 2);
    a9 -= 2;
    *v27 = v13;
    result = &v27[a2];
  }

  while (!((a9 < 0) ^ v26 | (a9 == 0)));
  return result;
}

int16x8_t *sub_277969C90(int16x8_t *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, unsigned int a8)
{
  v10 = a4;
  v11 = (result + a2);
  v12 = 2 * a2 - 2 * a4;
  while (1)
  {
    v13 = a8 >> 6;
    v14 = a8 & 0x3E;
    v15 = a8 + a6;
    v16 = v15 & 0x3E;
    if (v13 >= a7)
    {
      break;
    }

    v17 = (a3 + 2 * v13);
    v18 = (a3 + 2 * (v15 >> 6));
    v19 = vdupq_n_s16(v14);
    v20 = vdupq_n_s16(v16);
    v22 = *v17;
    v23 = v17[1];
    v24 = v17[2];
    v21 = v17 + 3;
    v26 = *v18;
    v27 = v18[1];
    v28 = v18[2];
    v25 = v18 + 3;
    v29 = vdupq_n_s16(v8 - v14);
    v30 = vdupq_n_s16(v8 - v16);
    a8 = v15 + a6;
    while (1)
    {
      v31 = vextq_s8(v22, v23, 2uLL);
      v32 = vextq_s8(v23, v24, 2uLL);
      v33 = vextq_s8(v26, v27, 2uLL);
      v34 = vextq_s8(v27, v28, 2uLL);
      v35 = __OFSUB__(a4, 16);
      a4 -= 16;
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v22.i8, *v29.i8), *v31.i8, *v19.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v22, v29), v31, v19), 6uLL);
      result[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23.i8, *v29.i8), *v32.i8, *v19.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v23, v29), v32, v19), 6uLL);
      result += 2;
      *v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v26.i8, *v30.i8), *v33.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v26, v30), v33, v20), 6uLL);
      v11[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v27.i8, *v30.i8), *v34.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v27, v30), v34, v20), 6uLL);
      v11 += 2;
      if ((a4 < 0) ^ v35 | (a4 == 0))
      {
        break;
      }

      v22 = v24;
      v23 = *v21;
      v24 = v21[1];
      v21 += 2;
      v26 = v28;
      v27 = *v25;
      v28 = v25[1];
      v25 += 2;
    }

    v35 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v35 | (a5 == 0))
    {
      return result;
    }

    result = (result + v12);
    v11 = (v11 + v12);
    a4 = v10;
  }

  while (1)
  {
    do
    {
      *result++ = v9;
      v35 = __OFSUB__(a4, 8);
      a4 -= 8;
      *v11++ = v9;
    }

    while (!((a4 < 0) ^ v35 | (a4 == 0)));
    v35 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v35 | (a5 == 0))
    {
      break;
    }

    result = (result + v12);
    v11 = (v11 + v12);
    a4 = v10;
  }

  return result;
}

int16x8_t *sub_277969DCC(int16x8_t *result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, signed int a7)
{
  v7 = (a3 + a7);
  v8 = vld1q_dup_s8(v7);
  v9 = a6;
  if (a4 == 8)
  {
    while (1)
    {
      v21 = v9 >> 6;
      v22 = v9 & 0x3E;
      v23 = v9 + a6;
      v24 = v23 & 0x3E;
      if (v21 >= a7)
      {
        break;
      }

      v25 = (a3 + 2 * v21);
      v26 = (a3 + 2 * (v23 >> 6));
      v27 = vdupq_n_s16(v22);
      v28 = vdupq_n_s16(v24);
      v29 = v25[1];
      v30 = v26[1];
      v31 = vdupq_n_s16(64 - v22);
      v32 = vdupq_n_s16(64 - v24);
      v33 = vuzp2q_s16(*v25, v29);
      v34 = vuzp1q_s16(*v25, v29);
      v35 = vuzp2q_s16(*v26, v30);
      v36 = vuzp1q_s16(*v26, v30);
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v34.i8, *v31.i8), *v33.i8, *v27.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v34, v31), v33, v27), 6uLL);
      v37 = (result + a2);
      v9 = v23 + a6;
      v19 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v36.i8, *v32.i8), *v35.i8, *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v36, v32), v35, v28), 6uLL);
      result = (v37 + a2);
      if ((a5 < 0) ^ v19 | (a5 == 0))
      {
        return result;
      }
    }

    do
    {
      *result = v8;
      v38 = &result->i8[a2];
      v19 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v38 = v8;
      result = &v38->i8[a2];
    }

    while (!((a5 < 0) ^ v19 | (a5 == 0)));
  }

  else
  {
    while (1)
    {
      v10 = v9 >> 6;
      v11 = v9 & 0x3E;
      v12 = v9 + a6;
      v13 = v12 & 0x3E;
      if (v10 >= a7)
      {
        break;
      }

      v14 = *(a3 + (2 * v10));
      v15 = *(a3 + 2 * (v12 >> 6));
      v16 = vuzp2q_s16(v14, v14).u64[0];
      v14.i64[0] = vuzp1q_s16(v14, v14).u64[0];
      v17 = vuzp2q_s16(v15, v15).u64[0];
      v15.i64[0] = vuzp1q_s16(v15, v15).u64[0];
      *result->i8 = vrshrn_n_s32(vmlal_s16(vshll_n_u16(*v14.i8, 6uLL), vsub_s16(v16, *v14.i8), vdup_n_s16(v11)), 6uLL);
      v18 = &result->i8[a2];
      v9 = v12 + a6;
      v19 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v18 = vrshrn_n_s32(vmlal_s16(vshll_n_u16(*v15.i8, 6uLL), vsub_s16(v17, *v15.i8), vdup_n_s16(v13)), 6uLL);
      result = (v18 + a2);
      if ((a5 < 0) ^ v19 | (a5 == 0))
      {
        return result;
      }
    }

    do
    {
      result->i64[0] = v8.i64[0];
      v20 = (result->i64 + a2);
      v19 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v20 = v8.i64[0];
      result = (v20 + a2);
    }

    while (!((a5 < 0) ^ v19 | (a5 == 0)));
  }

  return result;
}

void *sub_277969F24(void *result, uint64_t a2, int a3)
{
  v3 = (a2 - 16);
  v4 = result + 1;
  do
  {
    v5 = __OFSUB__(a3, 8);
    a3 -= 8;
    v6 = vrev64q_s16(*v3--);
    *result = v6.i64[1];
    result += 2;
    *v4 = v6.i64[0];
    v4 += 2;
  }

  while (!((a3 < 0) ^ v5 | (a3 == 0)));
  return result;
}

void *sub_277969F80@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W7>, signed int a8@<W8>)
{
  *v13.i8 = vdup_n_s16(a7);
  v15.i64[0] = 0x3E003E003E003ELL;
  v15.i64[1] = 0x3E003E003E003ELL;
  *v13.i8 = vadd_s16(vmul_s16(*v14.i8, *v13.i8), *v13.i8);
  v16 = *a4;
  v17 = *(a4 + 16);
  v18 = *(a4 + 32);
  v19.i64[0] = 0x40004000400040;
  v19.i64[1] = 0x40004000400040;
  *v11.i8 = vand_s8(*v13.i8, 0x3E003E003E003ELL);
  v20 = vshl_n_s8(vadd_s8(vshrn_n_s16(v13, 6uLL), 0x101010101010101), 1uLL);
  v21 = vadd_s8(vzip1_s8(v20, v20), 0x100010001000100);
  *v13.i8 = vadd_s8(v21, 0x202020202020202);
  *v12.i8 = vadd_s8(v21, 0x404040404040404);
  *v10.i8 = vqtbl1_s8(*a4, v21);
  v22 = vtrn1q_s64(v13, v12);
  *v12.i8 = vsub_s16(0x40004000400040, *v11.i8);
  v23 = vtrn1q_s64(v14, v14);
  v24 = vtrn1q_s64(v11, v11);
  v25 = vtrn1q_s64(v12, v12);
  v26.i64[0] = 0x404040404040404;
  v26.i64[1] = 0x404040404040404;
  while (1)
  {
    v27 = a8 >> 6;
    *v8.i8 = vdup_n_s16(a8);
    v28 = a8 - a6;
    if (v27 <= -4)
    {
      break;
    }

    *v9.i8 = vdup_n_s16(v28);
    v29 = *(a3 + 2 * v27);
    v30 = *(a3 + 2 * (v28 >> 6));
    v31 = vtrn1q_s64(v8, v9);
    v32 = vqtbl2q_s8(*v16.i8, v22);
    v33 = vshrq_n_s16(v31, 6uLL);
    v34 = vextq_s8(v29, v29, 2uLL);
    v8 = vandq_s8(v31, v15);
    v35 = vtrn1q_s64(v10, v32);
    v36 = vtrn1q_s64(v29, v30);
    v37 = vtrn1q_s64(v34, vextq_s8(v30, v30, 2uLL));
    v9 = vsubq_s16(v19, v8);
    v38 = vbslq_s8(vcgezq_s16(vaddq_s16(v33, v23)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v36.i8, *v9.i8), *v37.i8, *v8.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v36, v9), v37, v8), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v35.i8, *v25.i8), *v32.i8, *v24.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v35, v25), v32, v24), 6uLL));
    *result = v38.i64[0];
    v39 = (result + a2);
    a8 = v28 - a6;
    v40 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v39 = v38.i64[1];
    result = (v39 + a2);
    if ((a5 < 0) ^ v40 | (a5 == 0))
    {
      return result;
    }

    v10 = vextq_s8(v32, v32, 8uLL);
    v22 = vaddq_s8(v22, v26);
  }

  while (1)
  {
    v41 = vqtbl3q_s8(*v16.i8, v22);
    v42 = vtrn1q_s64(v10, v41);
    v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v42.i8, *v25.i8), *v41.i8, *v24.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v42, v25), v41, v24), 6uLL);
    *result = v43.i64[0];
    v44 = (result + a2);
    v40 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v44 = v43.i64[1];
    result = (v44 + a2);
    if ((a5 < 0) ^ v40 | (a5 == 0))
    {
      break;
    }

    v10 = vextq_s8(v41, v41, 8uLL);
    v22 = vaddq_s8(v22, v26);
  }

  return result;
}

int8x16_t *sub_27796A0D4@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, const __int16 *a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, int a6@<W6>, unsigned int a7@<W7>, signed int a8@<W8>)
{
  v10 = vdupq_n_s16(a7);
  v11 = a4 + 2;
  v12.i64[0] = 0x3E003E003E003ELL;
  v12.i64[1] = 0x3E003E003E003ELL;
  v13 = vaddq_s16(vmulq_s16(v9, v10), v10);
  v14 = *v11;
  v15 = *(v11 + 16);
  v16 = *(v11 + 32);
  v17 = *(v11 + 48);
  vld1q_dup_s16(a3);
  v18.i64[0] = 0x40004000400040;
  v18.i64[1] = 0x40004000400040;
  v19.i64[0] = 0x404040404040404;
  v19.i64[1] = 0x404040404040404;
  v20 = vandq_s8(v13, v12);
  v21.i64[0] = 0x100010001000100;
  v21.i64[1] = 0x100010001000100;
  *v8.i8 = vshl_n_s8(vshrn_n_s16(v13, 6uLL), 1uLL);
  v22.i64[0] = 0x202020202020202;
  v22.i64[1] = 0x202020202020202;
  v23 = vaddq_s8(vzip1q_s8(v8, v8), v21);
  v24 = vqtbx1q_s8(*v11, v23);
  v25 = vaddq_s8(v23, v19);
  v26 = vaddq_s8(v23, v22);
  v27 = vsubq_s16(v18, v20);
  v28.i64[0] = 0x404040404040404;
  v28.i64[1] = 0x404040404040404;
  while (1)
  {
    v29 = a8 >> 6;
    v30 = vdupq_n_s16(a8);
    v31 = a8 - a6;
    if (v29 <= -16)
    {
      break;
    }

    v32 = vdupq_n_s16(v31);
    v33 = &a3[v29];
    v34 = &a3[v31 >> 6];
    v35 = vqtbx4q_s8(*v14.i8, v26);
    v36 = vshrq_n_s16(v30, 6uLL);
    v37 = vshrq_n_s16(v32, 6uLL);
    v38 = vqtbx4q_s8(*v14.i8, v25);
    v39 = vextq_s8(*v33, v33[1], 2uLL);
    v40 = vextq_s8(*v34, v34[1], 2uLL);
    v41 = vandq_s8(v30, v12);
    v42 = vandq_s8(v32, v12);
    v43 = vsubq_s16(v18, v41);
    v44 = vsubq_s16(v18, v42);
    v45 = vbslq_s8(vcgezq_s16(vaddq_s16(v37, v9)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v34->i8, *v44.i8), *v40.i8, *v42.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v34, v44), v40, v42), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v35.i8, *v27.i8), *v38.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v35, v27), v38, v20), 6uLL));
    *result = vbslq_s8(vcgezq_s16(vaddq_s16(v36, v9)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v33->i8, *v43.i8), *v39.i8, *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v33, v43), v39, v41), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v24.i8, *v27.i8), *v35.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v24, v27), v35, v20), 6uLL));
    v46 = (result + a2);
    v47 = __OFSUB__(a5, 2);
    a5 -= 2;
    a8 = v31 - a6;
    *v46 = v45;
    result = (v46 + a2);
    if ((a5 < 0) ^ v47 | (a5 == 0))
    {
      return result;
    }

    v24 = v38;
    v26 = vaddq_s8(v26, v28);
    v25 = vaddq_s8(v25, v28);
  }

  while (1)
  {
    v48 = vqtbx4q_s8(*v14.i8, v26);
    v49 = vqtbx4q_s8(*v14.i8, v25);
    *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v24.i8, *v27.i8), *v48.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v24, v27), v48, v20), 6uLL);
    v50 = &result->i8[a2];
    v47 = __OFSUB__(a5, 2);
    a5 -= 2;
    *v50 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v48.i8, *v27.i8), *v49.i8, *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v48, v27), v49, v20), 6uLL);
    result = &v50->i8[a2];
    if ((a5 < 0) ^ v47 | (a5 == 0))
    {
      break;
    }

    v24 = v49;
    v26 = vaddq_s8(v26, v28);
    v25 = vaddq_s8(v25, v28);
  }

  return result;
}

int8x16_t *sub_27796A2A8@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, const __int16 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W7>, signed int a9@<W8>)
{
  v11 = vdupq_n_s16(a8);
  v12 = (a4 + 2);
  v13 = (result + a2);
  v14 = 2 * a2 - 2 * a5;
  v15.i64[0] = 0x8000800080008;
  v15.i64[1] = 0x8000800080008;
  v16 = vaddq_s16(vmulq_s16(v10, v11), v11);
  v17 = vmulq_s16(v11, v15);
  v18 = *v12;
  v19 = v12[1];
  v20 = v12[2];
  v21 = v12[3];
  vld1q_dup_s16(a3);
  v22 = a5;
  v23 = -a5;
  while (1)
  {
    v24 = v16;
    v25 = a9 >> 6;
    v26 = vdupq_n_s16(a9);
    v27 = a9 - a7;
    v28 = v27 >> 6;
    if (v25 <= v23)
    {
      break;
    }

    v29 = vdupq_n_s16(v27);
    a9 = v27 - a7;
    v30 = &a3[v25];
    v31 = &a3[v28];
    v32 = vshrq_n_s16(v26, 6uLL);
    v33 = vshrq_n_s16(v29, 6uLL);
    v35 = *v30;
    v34 = (v30 + 8);
    v37 = *v31;
    v36 = (v31 + 8);
    v38.i64[0] = 0x3E003E003E003ELL;
    v38.i64[1] = 0x3E003E003E003ELL;
    v39.i64[0] = 0x40004000400040;
    v39.i64[1] = 0x40004000400040;
    v40 = vandq_s8(v26, v38);
    v41 = vandq_s8(v29, v38);
    v42 = vsubq_s16(v39, v40);
    v43 = vsubq_s16(v39, v41);
    v44 = vaddq_s16(v32, v10);
    for (i = vaddq_s16(v33, v10); ; i = vaddq_s16(i, v74))
    {
      *v9.i8 = vshrn_n_s16(v24, 6uLL);
      v46.i64[0] = 0x40004000400040;
      v46.i64[1] = 0x40004000400040;
      v47.i64[0] = 0x3E003E003E003ELL;
      v47.i64[1] = 0x3E003E003E003ELL;
      if (i.i16[0] >= 0)
      {
        break;
      }

      v48 = vandq_s8(v24, v47);
      v49 = vsubq_s16(v46, v48);
      if (v9.i8[0] > 29)
      {
        v57 = v12 + v9.i8[0];
        v58 = v12 + v9.i8[1];
        v53.i16[0] = *v57;
        v55.i16[0] = v57[1];
        v56.i16[0] = v57[2];
        v59 = v12 + v9.i8[2];
        v53.i16[1] = *v58;
        v55.i16[1] = v58[1];
        v56.i16[1] = v58[2];
        v60 = v12 + v9.i8[3];
        v53.i16[2] = *v59;
        v55.i16[2] = v59[1];
        v56.i16[2] = v59[2];
        v61 = v12 + v9.i8[4];
        v53.i16[3] = *v60;
        v55.i16[3] = v60[1];
        v56.i16[3] = v60[2];
        v62 = v12 + v9.i8[5];
        v63 = v12 + v9.i8[6];
        v53.i16[4] = *v61;
        v55.i16[4] = v61[1];
        v56.i16[4] = v61[2];
        v64 = v12 + v9.i8[7];
        v53.i16[5] = *v62;
        v55.i16[5] = v62[1];
        v56.i16[5] = v62[2];
        v53.i16[6] = *v63;
        v55.i16[6] = v63[1];
        v56.i16[6] = v63[2];
        v53.i16[7] = *v64;
        v55.i16[7] = v64[1];
        v56.i16[7] = v64[2];
      }

      else
      {
        *v9.i8 = vshl_n_s8(*v9.i8, 1uLL);
        v50.i64[0] = 0x100010001000100;
        v50.i64[1] = 0x100010001000100;
        v51 = vaddq_s8(vzip1q_s8(v9, v9), v50);
        v52.i64[0] = 0x202020202020202;
        v52.i64[1] = 0x202020202020202;
        v53 = vqtbx4q_s8(*&v18, v51);
        v54 = vaddq_s8(v51, v52);
        v55 = vqtbx4q_s8(*&v18, v54);
        v9 = vaddq_s8(v54, v52);
        v56 = vqtbx4q_s8(*&v18, v9);
      }

      v65 = *v34++;
      v66 = *v36++;
      v24 = vaddq_s16(v24, v17);
      v67 = vmlal_u16(vmull_u16(*v53.i8, *v49.i8), *v55.i8, *v48.i8);
      v68 = vmlal_high_u16(vmull_high_u16(v53, v49), v55, v48);
      v69 = vmlal_u16(vmull_u16(*v55.i8, *v49.i8), *v56.i8, *v48.i8);
      v70 = vmlal_high_u16(vmull_high_u16(v55, v49), v56, v48);
      v71 = vextq_s8(v35, v65, 2uLL);
      v72 = vextq_s8(v37, v66, 2uLL);
      *result++ = vbslq_s8(vcgezq_s16(v44), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v35.i8, *v42.i8), *v71.i8, *v40.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v35, v42), v71, v40), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(v67, 6uLL), v68, 6uLL));
      v73 = __OFSUB__(a5, 8);
      a5 -= 8;
      *v13++ = vbslq_s8(vcgezq_s16(i), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v37.i8, *v43.i8), *v72.i8, *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v37, v43), v72, v41), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(v69, 6uLL), v70, 6uLL));
      if ((a5 < 0) ^ v73 | (a5 == 0))
      {
        goto LABEL_10;
      }

      v74.i64[0] = 0x8000800080008;
      v74.i64[1] = 0x8000800080008;
      v35 = v65;
      v37 = v66;
      v44 = vaddq_s16(v44, v74);
    }

    while (1)
    {
      v76 = *v34++;
      v77 = *v36++;
      v78 = vextq_s8(v35, v76, 2uLL);
      v79 = vextq_s8(v37, v77, 2uLL);
      *result++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v35.i8, *v42.i8), *v78.i8, *v40.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v35, v42), v78, v40), 6uLL);
      v73 = __OFSUB__(a5, 8);
      a5 -= 8;
      *v13++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v37.i8, *v43.i8), *v79.i8, *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v37, v43), v79, v41), 6uLL);
      if ((a5 < 0) ^ v73 | (a5 == 0))
      {
        break;
      }

      v35 = v76;
      v37 = v77;
    }

LABEL_10:
    v73 = __OFSUB__(a6, 2);
    a6 -= 2;
    if ((a6 < 0) ^ v73 | (a6 == 0))
    {
      return result;
    }

    v75.i64[0] = 0x80008000800080;
    v75.i64[1] = 0x80008000800080;
    result = (result + v14);
    v13 = (v13 + v14);
    a5 = v22;
    v16 = vaddq_s16(v16, v75);
  }

  v80 = v14 + 2 * a5;
  for (j = a6; ; a6 = j)
  {
    v82.i64[0] = 0x40004000400040;
    v82.i64[1] = 0x40004000400040;
    v83.i64[0] = 0x3E003E003E003ELL;
    v83.i64[1] = 0x3E003E003E003ELL;
    *v9.i8 = vshrn_n_s16(v24, 6uLL);
    v84 = vandq_s8(v24, v83);
    v85 = v9.i8[0];
    *v9.i8 = vshl_n_s8(*v9.i8, 1uLL);
    v86.i64[0] = 0x100010001000100;
    v86.i64[1] = 0x100010001000100;
    v24 = vaddq_s16(v24, v17);
    v87 = vaddq_s8(vzip1q_s8(v9, v9), v86);
    v88.i64[0] = 0x202020202020202;
    v88.i64[1] = 0x202020202020202;
    v89 = vsubq_s16(v82, v84);
    if (v85 > 31)
    {
      v94.i64[0] = 0x202020202020202;
      v94.i64[1] = 0x202020202020202;
      v90.i16[0] = *(v12 + v87.i8[0]);
      v90.i16[1] = *(v12 + v87.i8[2]);
      v90.i16[2] = *(v12 + v87.i8[4]);
      v90.i16[3] = *(v12 + v87.i8[6]);
      v95 = (v12 + v87.i8[12]);
      v90.i16[4] = *(v12 + v87.i8[8]);
      v96 = (v12 + v87.i8[14]);
      v90.i16[5] = *(v12 + v87.i8[10]);
      v9 = vaddq_s8(v87, v94);
      v90.i16[6] = *v95;
      v90.i16[7] = *v96;
    }

    else
    {
      v90 = vqtbx4q_s8(*&v18, v87);
      v9 = vaddq_s8(v87, v88);
      while (v9.i8[0] <= 60)
      {
        v91 = vqtbx4q_s8(*&v18, v9);
        v92 = vaddq_s8(v9, v88);
        v93 = vqtbx4q_s8(*&v18, v92);
        v9 = vaddq_s8(v92, v88);
        *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v90.i8, *v89.i8), *v91.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v90, v89), v91, v84), 6uLL);
        result = (result + v80);
        v73 = __OFSUB__(a6, 2);
        a6 -= 2;
        *v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v91.i8, *v89.i8), *v93.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v91, v89), v93, v84), 6uLL);
        v13 = (v13 + v80);
        if ((a6 < 0) ^ v73 | (a6 == 0))
        {
          goto LABEL_25;
        }

        v90 = v93;
      }
    }

    if (a6 < 4)
    {
LABEL_24:
      v112.i64[0] = 0x404040404040404;
      v112.i64[1] = 0x404040404040404;
      v113 = (v12 + v9.i8[0]);
      v114 = (v12 + v9.i8[2]);
      v115.i16[0] = *v113;
      v116.i16[0] = v113[1];
      v117 = (v12 + v9.i8[4]);
      v115.i16[1] = *v114;
      v116.i16[1] = v114[1];
      v118 = (v12 + v9.i8[6]);
      v115.i16[2] = *v117;
      v116.i16[2] = v117[1];
      v119 = (v12 + v9.i8[8]);
      v115.i16[3] = *v118;
      v116.i16[3] = v118[1];
      v120 = (v12 + v9.i8[10]);
      v121 = (v12 + v9.i8[12]);
      v115.i16[4] = *v119;
      v116.i16[4] = v119[1];
      v122 = (v12 + v9.i8[14]);
      v115.i16[5] = *v120;
      v116.i16[5] = v120[1];
      v115.i16[6] = *v121;
      v116.i16[6] = v121[1];
      v9 = vaddq_s8(v9, v112);
      v115.i16[7] = *v122;
      v116.i16[7] = v122[1];
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v90.i8, *v89.i8), *v115.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v90, v89), v115, v84), 6uLL);
      result = (result + v80);
      *v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v115.i8, *v89.i8), *v116.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v115, v89), v116, v84), 6uLL);
      v13 = (v13 + v80);
    }

    else
    {
      while (1)
      {
        a6 -= 4;
        v97.i64[0] = 0x808080808080808;
        v97.i64[1] = 0x808080808080808;
        v98 = (v12 + v9.i8[0]);
        v99 = (v12 + v9.i8[2]);
        v100.i16[0] = *v98;
        v101.i16[0] = v98[1];
        v102.i16[0] = v98[2];
        v109.i16[0] = v98[3];
        v103 = (v12 + v9.i8[4]);
        v100.i16[1] = *v99;
        v101.i16[1] = v99[1];
        v102.i16[1] = v99[2];
        v109.i16[1] = v99[3];
        v104 = (v12 + v9.i8[6]);
        v100.i16[2] = *v103;
        v101.i16[2] = v103[1];
        v102.i16[2] = v103[2];
        v109.i16[2] = v103[3];
        v105 = (v12 + v9.i8[8]);
        v100.i16[3] = *v104;
        v101.i16[3] = v104[1];
        v102.i16[3] = v104[2];
        v109.i16[3] = v104[3];
        v106 = (v12 + v9.i8[10]);
        v107 = (v12 + v9.i8[12]);
        v100.i16[4] = *v105;
        v101.i16[4] = v105[1];
        v102.i16[4] = v105[2];
        v109.i16[4] = v105[3];
        v108 = (v12 + v9.i8[14]);
        v100.i16[5] = *v106;
        v101.i16[5] = v106[1];
        v102.i16[5] = v106[2];
        v109.i16[5] = v106[3];
        v100.i16[6] = *v107;
        v101.i16[6] = v107[1];
        v102.i16[6] = v107[2];
        v109.i16[6] = v107[3];
        v9 = vaddq_s8(v9, v97);
        v100.i16[7] = *v108;
        v101.i16[7] = v108[1];
        v102.i16[7] = v108[2];
        v109.i16[7] = v108[3];
        *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v90.i8, *v89.i8), *v100.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v90, v89), v100, v84), 6uLL);
        v110 = &result->i8[v80];
        *v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v100.i8, *v89.i8), *v101.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v100, v89), v101, v84), 6uLL);
        v111 = &v13->i8[v80];
        *v110 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v101.i8, *v89.i8), *v102.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v101, v89), v102, v84), 6uLL);
        result = &v110->i8[v80];
        *v111 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v102.i8, *v89.i8), *v109.i8, *v84.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v102, v89), v109, v84), 6uLL);
        v13 = &v111->i8[v80];
        if (a6 < 2)
        {
          break;
        }

        v90 = v109;
        if (a6 <= 2)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_25:
    v73 = __OFSUB__(a5, 8);
    a5 -= 8;
    if ((a5 < 0) ^ v73 | (a5 == 0))
    {
      break;
    }

    v123 = v80 >> 1;
    v124 = (result - v123 * j);
    v125 = (v13 - v123 * j);
    v80 = 2 * v123;
    result = v124 + 1;
    v13 = v125 + 1;
  }

  return result;
}

int8x16_t *sub_27796A82C(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15 = 128 - a7;
  v16 = -a8;
  if (a5 == 8)
  {
    v46 = vdupq_n_s16(v16);
    v47.i64[0] = 0x3E003E003E003ELL;
    v47.i64[1] = 0x3E003E003E003ELL;
    v48 = vaddq_s16(vmulq_s16(qword_27A719068[0], v46), v46);
    v49 = *a4;
    v50 = *(a4 + 16);
    v51.i64[0] = 0x40004000400040;
    v51.i64[1] = 0x40004000400040;
    v52.i64[0] = 0x404040404040404;
    v52.i64[1] = 0x404040404040404;
    v53 = vandq_s8(v48, v47);
    v54.i64[0] = 0x100010001000100;
    v54.i64[1] = 0x100010001000100;
    *v13.i8 = vshl_n_s8(vadd_s8(vshrn_n_s16(v48, 6uLL), 0x101010101010101), 1uLL);
    v55.i64[0] = 0x202020202020202;
    v55.i64[1] = 0x202020202020202;
    v56 = vaddq_s8(vzip1q_s8(v13, v13), v54);
    v57 = vqtbl1q_s8(*a4, v56);
    v58 = vaddq_s8(v56, v52);
    v59 = vaddq_s8(v56, v55);
    v60 = vsubq_s16(v51, v53);
    v61.i64[0] = 0x404040404040404;
    v61.i64[1] = 0x404040404040404;
    v62 = vaddq_s8(qword_27A719068[0], qword_27A719068[0]);
    while (1)
    {
      v63 = v15 >> 6;
      v64 = vdupq_n_s16(v15);
      v65 = v15 - a7;
      if (v63 <= -16)
      {
        break;
      }

      v66 = vdupq_n_s16(v65);
      v67 = (a3 + 2 * v63);
      v68 = (a3 + 2 * (v65 >> 6));
      v69 = v67[1];
      v70 = v68[1];
      v71 = vqtbl2q_s8(*v49.i8, v59);
      v72 = vshrq_n_s16(v64, 6uLL);
      v73 = vshrq_n_s16(v66, 6uLL);
      v74 = vqtbl2q_s8(*v49.i8, v58);
      v75 = vuzp1q_s16(*v67, v69);
      v76 = vuzp1q_s16(*v68, v70);
      v77 = vuzp2q_s16(*v67, v69);
      v78 = vuzp2q_s16(*v68, v70);
      v79 = vandq_s8(v64, v47);
      v80 = vandq_s8(v66, v47);
      v81 = vsubq_s16(v51, v79);
      v82 = vsubq_s16(v51, v80);
      *result = vbslq_s8(vcgezq_s16(vaddq_s16(v72, v62)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v75.i8, *v81.i8), *v77.i8, *v79.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v75, v81), v77, v79), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v57.i8, *v60.i8), *v71.i8, *v53.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v57, v60), v71, v53), 6uLL));
      v83 = (result + a2);
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      v15 = v65 - a7;
      *v83 = vbslq_s8(vcgezq_s16(vaddq_s16(v73, v62)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v76.i8, *v82.i8), *v78.i8, *v80.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v76, v82), v78, v80), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v71.i8, *v60.i8), *v74.i8, *v53.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v71, v60), v74, v53), 6uLL));
      result = (v83 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        return result;
      }

      v57 = v74;
      v59 = vaddq_s8(v59, v61);
      v58 = vaddq_s8(v58, v61);
    }

    while (1)
    {
      v84 = vqtbl2q_s8(*v49.i8, v59);
      v85 = vqtbl2q_s8(*v49.i8, v58);
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v57.i8, *v60.i8), *v84.i8, *v53.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v57, v60), v84, v53), 6uLL);
      v86 = &result->i8[a2];
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v86 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v84.i8, *v60.i8), *v85.i8, *v53.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v84, v60), v85, v53), 6uLL);
      result = &v86->i8[a2];
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        break;
      }

      v57 = v85;
      v59 = vaddq_s8(v59, v61);
      v58 = vaddq_s8(v58, v61);
    }
  }

  else
  {
    *v14.i8 = vdup_n_s16(v16);
    v17.i64[0] = 0x3E003E003E003ELL;
    v17.i64[1] = 0x3E003E003E003ELL;
    *v14.i8 = vadd_s16(vmul_s16(0x3000200010000, *v14.i8), *v14.i8);
    v18 = *a4;
    v19 = *(a4 + 16);
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    *v11.i8 = vand_s8(*v14.i8, 0x3E003E003E003ELL);
    v21 = vshl_n_s8(vadd_s8(vshrn_n_s16(v14, 6uLL), 0x101010101010101), 1uLL);
    v22 = vadd_s8(vzip1_s8(v21, v21), 0x100010001000100);
    *v14.i8 = vadd_s8(v22, 0x202020202020202);
    *v12.i8 = vadd_s8(v22, 0x404040404040404);
    *v10.i8 = vqtbl1_s8(*a4, v22);
    v23 = vtrn1q_s64(v14, v12);
    *v12.i8 = vsub_s16(0x40004000400040, *v11.i8);
    v24 = vtrn1q_s64(qword_27A719068[0], qword_27A719068[0]);
    v25 = vtrn1q_s64(v11, v11);
    v26 = vtrn1q_s64(v12, v12);
    v27.i64[0] = 0x404040404040404;
    v27.i64[1] = 0x404040404040404;
    v28 = vaddq_s16(v24, v24);
    while (1)
    {
      v29 = v15 >> 6;
      *v8.i8 = vdup_n_s16(v15);
      v30 = v15 - a7;
      if (v29 <= -8)
      {
        break;
      }

      *v9.i8 = vdup_n_s16(v30);
      v31 = *(a3 + 2 * v29);
      v32 = *(a3 + 2 * (v30 >> 6));
      v33 = vtrn1q_s64(v8, v9);
      v34 = vqtbl2q_s8(*v18.i8, v23);
      v35 = vshrq_n_s16(v33, 6uLL);
      v36 = vuzp2q_s16(v31, v32);
      v37 = vuzp1q_s16(v31, v32);
      v8 = vandq_s8(v33, v17);
      v38 = vtrn1q_s64(v10, v34);
      v9 = vsubq_s16(v20, v8);
      v39 = vbslq_s8(vcgezq_s16(vaddq_s16(v35, v28)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v37.i8, *v9.i8), *v36.i8, *v8.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v37, v9), v36, v8), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v38.i8, *v26.i8), *v34.i8, *v25.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v38, v26), v34, v25), 6uLL));
      result->i64[0] = v39.i64[0];
      v40 = (result->i64 + a2);
      v15 = v30 - a7;
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v40 = v39.i64[1];
      result = (v40 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        return result;
      }

      v10 = vextq_s8(v34, v34, 8uLL);
      v23 = vaddq_s8(v23, v27);
    }

    while (1)
    {
      v42 = vqtbl2q_s8(*v18.i8, v23);
      v43 = vtrn1q_s64(v10, v42);
      v44 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v43.i8, *v26.i8), *v42.i8, *v25.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v43, v26), v42, v25), 6uLL);
      result->i64[0] = v44.i64[0];
      v45 = (result->i64 + a2);
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v45 = v44.i64[1];
      result = (v45 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        break;
      }

      v10 = vextq_s8(v42, v42, 8uLL);
      v23 = vaddq_s8(v23, v27);
    }
  }

  return result;
}

int8x16_t *sub_27796AB70(int8x16_t *result, uint64_t a2, uint64_t a3, __int128 *a4, int a5, int a6, int a7, int a8)
{
  v15 = 64 - a7;
  v16 = -a8;
  if (a5 == 8)
  {
    v46 = vdupq_n_s16(v16);
    v47.i64[0] = 0x202020202020202;
    v47.i64[1] = 0x202020202020202;
    v48.i64[0] = 0x3E003E003E003ELL;
    v48.i64[1] = 0x3E003E003E003ELL;
    v49 = vaddq_s16(vmulq_s16(qword_27A719068[0], v46), v46);
    v50 = *a4;
    v51 = a4[1];
    v52 = a4[2];
    v53.i64[0] = 0x40004000400040;
    v53.i64[1] = 0x40004000400040;
    v54 = vandq_s8(v49, v48);
    v55.i64[0] = 0x100010001000100;
    v55.i64[1] = 0x100010001000100;
    *v13.i8 = vshl_n_s8(vadd_s8(vshrn_n_s16(v49, 6uLL), 0x202020202020202), 1uLL);
    v56 = vaddq_s8(vzip1q_s8(v13, v13), v55);
    v57 = vaddq_s8(v56, v47);
    v58 = vsubq_s16(v53, v54);
    v59.i64[0] = 0x404040404040404;
    v59.i64[1] = 0x404040404040404;
    while (1)
    {
      v60 = v15 >> 6;
      v61 = vdupq_n_s16(v15);
      v62 = v15 - a7;
      if (v60 <= -16)
      {
        break;
      }

      v63 = vdupq_n_s16(v62);
      v64 = (a3 + 2 * v60);
      v65 = (a3 + 2 * (v62 >> 6));
      v66 = vqtbl3q_s8(*&v50, v56);
      v67 = vaddq_s8(v56, v59);
      v68 = vqtbl3q_s8(*&v50, v57);
      v69 = vaddq_s8(v57, v59);
      v70 = vshrq_n_s16(v61, 6uLL);
      v71 = vqtbl3q_s8(*&v50, v67);
      v72 = vshrq_n_s16(v63, 6uLL);
      v73 = vqtbl3q_s8(*&v50, v69);
      v74 = vextq_s8(*v64, v64[1], 2uLL);
      v75 = vextq_s8(*v65, v65[1], 2uLL);
      v76 = vandq_s8(v61, v48);
      v77 = vandq_s8(v63, v48);
      v78 = vsubq_s16(v53, v76);
      v79 = vsubq_s16(v53, v77);
      v80 = vbslq_s8(vcgezq_s16(vaddq_s16(v72, qword_27A719068[0])), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v65->i8, *v79.i8), *v75.i8, *v77.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v65, v79), v75, v77), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v71.i8, *v58.i8), *v73.i8, *v54.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v71, v58), v73, v54), 6uLL));
      *result = vbslq_s8(vcgezq_s16(vaddq_s16(v70, qword_27A719068[0])), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v64->i8, *v78.i8), *v74.i8, *v76.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v64, v78), v74, v76), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v66.i8, *v58.i8), *v68.i8, *v54.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v66, v58), v68, v54), 6uLL));
      v81 = (result + a2);
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      v15 = v62 - a7;
      *v81 = v80;
      result = (v81 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        return result;
      }

      v56 = vaddq_s8(v67, v59);
      v57 = vaddq_s8(v69, v59);
    }

    while (1)
    {
      v82 = vqtbl3q_s8(*&v50, v56);
      v83 = vaddq_s8(v56, v59);
      v84 = vqtbl3q_s8(*&v50, v57);
      v85 = vaddq_s8(v57, v59);
      v86 = vqtbl3q_s8(*&v50, v83);
      v87 = vqtbl3q_s8(*&v50, v85);
      *result = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v82.i8, *v58.i8), *v84.i8, *v54.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v82, v58), v84, v54), 6uLL);
      v88 = &result->i8[a2];
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v88 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v86.i8, *v58.i8), *v87.i8, *v54.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v86, v58), v87, v54), 6uLL);
      result = &v88->i8[a2];
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        break;
      }

      v56 = vaddq_s8(v83, v59);
      v57 = vaddq_s8(v85, v59);
    }
  }

  else
  {
    *v14.i8 = vdup_n_s16(v16);
    v17.i64[0] = 0x3E003E003E003ELL;
    v17.i64[1] = 0x3E003E003E003ELL;
    *v14.i8 = vadd_s16(vmul_s16(0x3000200010000, *v14.i8), *v14.i8);
    v18 = *a4;
    v19 = a4[1];
    v20 = a4[2];
    v21.i64[0] = 0x40004000400040;
    v21.i64[1] = 0x40004000400040;
    *v11.i8 = vand_s8(*v14.i8, 0x3E003E003E003ELL);
    *v13.i8 = vshl_n_s8(vadd_s8(vshrn_n_s16(v14, 6uLL), 0x202020202020202), 1uLL);
    *v13.i8 = vadd_s8(vzip1_s8(*v13.i8, *v13.i8), 0x100010001000100);
    *v14.i8 = vadd_s8(*v13.i8, 0x202020202020202);
    *v12.i8 = vadd_s8(*v13.i8, 0x404040404040404);
    v22 = vtrn1q_s64(qword_27A719068[0], qword_27A719068[0]);
    *v10.i8 = vadd_s8(*v14.i8, 0x404040404040404);
    v23 = vtrn1q_s64(v13, v12);
    v24 = vtrn1q_s64(v14, v10);
    *v12.i8 = vsub_s16(0x40004000400040, *v11.i8);
    v25 = vtrn1q_s64(v11, v11);
    v26 = vtrn1q_s64(v12, v12);
    v27.i64[0] = 0x808080808080808;
    v27.i64[1] = 0x808080808080808;
    while (1)
    {
      v28 = v15 >> 6;
      *v8.i8 = vdup_n_s16(v15);
      v29 = v15 - a7;
      if (v28 <= -4)
      {
        break;
      }

      *v9.i8 = vdup_n_s16(v29);
      v30 = *(a3 + 2 * v28);
      v31 = *(a3 + 2 * (v29 >> 6));
      v32 = vtrn1q_s64(v8, v9);
      v33 = vqtbl3q_s8(*&v18, v23);
      v34 = vqtbl3q_s8(*&v18, v24);
      v35 = vshrq_n_s16(v32, 6uLL);
      v36 = vextq_s8(v30, v30, 2uLL);
      v8 = vandq_s8(v32, v17);
      v37 = vtrn1q_s64(v30, v31);
      v38 = vtrn1q_s64(v36, vextq_s8(v31, v31, 2uLL));
      v9 = vsubq_s16(v21, v8);
      v27.i64[0] = 0x808080808080808;
      v27.i64[1] = 0x808080808080808;
      v39 = vbslq_s8(vcgezq_s16(vaddq_s16(v35, v22)), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v37.i8, *v9.i8), *v38.i8, *v8.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v37, v9), v38, v8), 6uLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v33.i8, *v26.i8), *v34.i8, *v25.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v33, v26), v34, v25), 6uLL));
      result->i64[0] = v39.i64[0];
      v40 = (result->i64 + a2);
      v15 = v29 - a7;
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v40 = v39.i64[1];
      result = (v40 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        return result;
      }

      v23 = vaddq_s8(v23, v27);
      v24 = vaddq_s8(v24, v27);
    }

    while (1)
    {
      v42 = vqtbl3q_s8(*&v18, v23);
      v43 = vqtbl3q_s8(*&v18, v24);
      v44 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v42.i8, *v26.i8), *v43.i8, *v25.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v42, v26), v43, v25), 6uLL);
      result->i64[0] = v44.i64[0];
      v45 = (result->i64 + a2);
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v45 = v44.i64[1];
      result = (v45 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        break;
      }

      v23 = vaddq_s8(v23, v27);
      v24 = vaddq_s8(v24, v27);
    }
  }

  return result;
}

uint64_t sub_27796AEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v7 = (a3 + 2 * a7);
  vld1q_dup_s16(v7);
  return ((&qword_27796B1A8 - *(&qword_27796B1A8 + __clz(a5) - 25)))();
}

_OWORD *sub_27796AEF0(_OWORD *a1, unint64_t a2, uint64_t a3, signed int a4, int a5, int a6, int a7, unsigned int a8)
{
  while (1)
  {
    v9 = a8 >> 6;
    v10 = a8 & 0x3E;
    v11 = a8 + a6;
    if (v9 >= a7)
    {
      break;
    }

    v13 = vmlal_s16(vshll_n_u16(*(a3 + (2 * v9)), 6uLL), vsub_s16(*&vextq_s8(*(a3 + (2 * v9)), *(a3 + (2 * v9)), 2uLL), *(a3 + (2 * v9))), *&vdupq_n_s16(v10));
    v14 = vmlal_s16(vshll_n_u16(*(a3 + 2 * (v11 >> 6)), 6uLL), vsub_s16(*&vextq_s8(*(a3 + 2 * (v11 >> 6)), *(a3 + 2 * (v11 >> 6)), 2uLL), *(a3 + 2 * (v11 >> 6))), *&vdupq_n_s16(v11 & 0x3E));
    *v13.i8 = vrshrn_n_s32(v13, 6uLL);
    *v14.i8 = vrshrn_n_s32(v14, 6uLL);
    v15 = __OFSUB__(a4, 2);
    a4 -= 2;
    v16 = vzip1q_s16(v13, v14);
    *a1 = v16.i32[0];
    result = (a1 + a2);
    *v8 = v16.i32[1];
    v17 = (v8 + a2);
    a8 = v11 + a6;
    *result = v16.i32[2];
    *v17 = v16.i32[3];
    if ((a4 < 0) ^ v15 | (a4 == 0))
    {
      return result;
    }

    a1 = (result - a2 + 4);
    v8 = (v17 - a2 + 4);
  }

  return sub_27796B1B4(a1, a2, a3, a4, a5);
}

_OWORD *sub_27796AF84(_OWORD *a1, unint64_t a2, uint64_t a3, signed int a4, int a5, int a6, int a7, unsigned int a8, double a9, int8x16_t a10, double a11, int8x16_t a12)
{
  while (1)
  {
    v14 = a8 >> 6;
    v15 = a8 & 0x3E;
    v16 = a8 + a6;
    v17 = v16 & 0x3E;
    if (v14 >= a7)
    {
      break;
    }

    v19 = (a3 + 2 * v14);
    v20 = (a3 + 2 * (v16 >> 6));
    v21 = vdupq_n_s16(v15);
    v22 = vdupq_n_s16(v17);
    a10.i16[0] = v19[1].i16[0];
    a12.i16[0] = v20[1].i16[0];
    v23 = vdupq_n_s16(v13 - v15);
    v24 = vdupq_n_s16(v13 - v17);
    a10 = vextq_s8(*v19, a10, 2uLL);
    a12 = vextq_s8(*v20, a12, 2uLL);
    v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v19->i8, *v23.i8), *a10.i8, *v21.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v19, v23), a10, v21), 6uLL);
    v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v20->i8, *v24.i8), *a12.i8, *v22.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v20, v24), a12, v22), 6uLL);
    v27 = __OFSUB__(a4, 2);
    a4 -= 2;
    v28 = vzip1q_s16(v25, v26);
    v29 = vzip2q_s16(v25, v26);
    a8 = v16 + a6;
    *a1 = v28.i32[0];
    v30 = (a1 + a2);
    *v12 = v28.i32[1];
    v31 = &v12[a2];
    *v30 = v28.i32[2];
    v32 = (v30 + a2);
    *v31 = v28.i32[3];
    v33 = &v31[a2];
    *v32 = v29.i32[0];
    v34 = (v32 + a2);
    *v33 = v29.i32[1];
    v35 = &v33[a2];
    *v34 = v29.i32[2];
    result = (v34 + a2);
    *v35 = v29.i32[3];
    v36 = &v35[a2];
    if ((a4 < 0) ^ v27 | (a4 == 0))
    {
      return result;
    }

    a1 = (result - 4 * a2 + 4);
    v12 = &v36[-4 * a2 + 4];
  }

  return sub_27796B1B4(a1, a2, a3, a4, a5);
}

_OWORD *sub_27796B054(_OWORD *result, unint64_t a2, uint64_t a3, signed int a4, int a5, int a6, int a7, unsigned int a8)
{
  for (i = a5; ; a5 = i)
  {
    v11 = a8 >> 6;
    v12 = a8 & 0x3E;
    v13 = a8 + a6;
    v14 = v13 & 0x3E;
    if (v11 >= a7)
    {
      break;
    }

    v15 = (a3 + 2 * v11);
    v16 = (a3 + 2 * (v13 >> 6));
    v17 = vdupq_n_s16(v12);
    v18 = vdupq_n_s16(v14);
    v20 = *v15;
    v21 = v15[1];
    v22 = v15[2];
    v19 = v15 + 3;
    v24 = *v16;
    v25 = v16[1];
    v26 = v16[2];
    v23 = v16 + 3;
    v27 = vdupq_n_s16(v9 - v12);
    v28 = vdupq_n_s16(v9 - v14);
    a8 = v13 + a6;
    while (1)
    {
      v29 = vextq_s8(v20, v21, 2uLL);
      v30 = vextq_s8(v21, v22, 2uLL);
      v31 = vextq_s8(v24, v25, 2uLL);
      v32 = vextq_s8(v25, v26, 2uLL);
      v33 = __OFSUB__(a5, 16);
      a5 -= 16;
      v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v20.i8, *v27.i8), *v29.i8, *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v20, v27), v29, v17), 6uLL);
      v35 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v21.i8, *v27.i8), *v30.i8, *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v21, v27), v30, v17), 6uLL);
      v36 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v24.i8, *v28.i8), *v31.i8, *v18.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v24, v28), v31, v18), 6uLL);
      v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v25.i8, *v28.i8), *v32.i8, *v18.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v25, v28), v32, v18), 6uLL);
      v38 = vzip1q_s16(v34, v36);
      v39 = vzip2q_s16(v34, v36);
      v40 = vzip1q_s16(v35, v37);
      v41 = vzip2q_s16(v35, v37);
      *result = v38.i32[0];
      v42 = (result + a2);
      *v8 = v38.i32[1];
      v43 = (v8 + a2);
      *v42 = v38.i32[2];
      v44 = (v42 + a2);
      *v43 = v38.i32[3];
      v45 = (v43 + a2);
      *v44 = v39.i32[0];
      v46 = (v44 + a2);
      *v45 = v39.i32[1];
      v47 = (v45 + a2);
      *v46 = v39.i32[2];
      v48 = (v46 + a2);
      *v47 = v39.i32[3];
      v49 = (v47 + a2);
      *v48 = v40.i32[0];
      v50 = (v48 + a2);
      *v49 = v40.i32[1];
      v51 = (v49 + a2);
      *v50 = v40.i32[2];
      v52 = (v50 + a2);
      *v51 = v40.i32[3];
      v53 = (v51 + a2);
      *v52 = v41.i32[0];
      v54 = (v52 + a2);
      *v53 = v41.i32[1];
      v55 = (v53 + a2);
      *v54 = v41.i32[2];
      result = (v54 + a2);
      *v55 = v41.i32[3];
      v8 = (v55 + a2);
      if ((a5 < 0) ^ v33 | (a5 == 0))
      {
        break;
      }

      v20 = v22;
      v21 = *v19;
      v22 = v19[1];
      v19 += 2;
      v24 = v26;
      v25 = *v23;
      v26 = v23[1];
      v23 += 2;
    }

    v33 = __OFSUB__(a4, 2);
    a4 -= 2;
    if ((a4 < 0) ^ v33 | (a4 == 0))
    {
      return result;
    }

    v56 = a2 >> 1;
    v57 = result - v56 * i;
    v58 = v8 - v56 * i;
    a2 = 2 * v56;
    result = v57 + 4;
    v8 = v58 + 4;
  }

  return sub_27796B1B4(result, a2, a3, a4, a5);
}

_OWORD *sub_27796B1B4(_OWORD *result, unint64_t a2, uint64_t a3, signed int a4, int a5)
{
  if (a4 <= 8)
  {
    return ((aDddd - aDddd[__clz(a4) - 25]))();
  }

  v6 = a4;
  v7 = (a2 >> 1) - 2 * a4;
  while (1)
  {
    v8 = a4 & 7;
    if ((a4 & 7) != 0)
    {
      a4 -= v8;
      *result = v5;
      result = (result + 2 * v8);
    }

    do
    {
      v9 = __OFSUB__(a4, 8);
      a4 -= 8;
      *result++ = v5;
    }

    while (!((a4 < 0) ^ v9 | (a4 == 0)));
    v9 = __OFSUB__(a5--, 1);
    result = (result + v7);
    if ((a5 < 0) ^ v9 | (a5 == 0))
    {
      break;
    }

    a4 = v6;
  }

  return result;
}

_OWORD *sub_27796B2EC(_OWORD *a1, uint64_t a2, uint64_t a3, signed int a4, int a5, unsigned int a6, signed int a7)
{
  v7 = (a3 + a7);
  vld1q_dup_s8(v7);
  v8 = a6;
  v9 = a1 + a2;
  v10 = 2 * a2;
  if (a5 == 8)
  {
    while (1)
    {
      v24 = v8 >> 6;
      v25 = v8 & 0x3E;
      v26 = v8 + a6;
      v27 = v26 & 0x3E;
      if (v24 >= a7)
      {
        break;
      }

      v28 = (a3 + 2 * v24);
      v29 = (a3 + 2 * (v26 >> 6));
      v30 = vdupq_n_s16(v25);
      v31 = vdupq_n_s16(v27);
      v32 = v28[1];
      v33 = v29[1];
      v34 = vdupq_n_s16(64 - v25);
      v35 = vdupq_n_s16(64 - v27);
      v36 = vuzp2q_s16(*v28, v32);
      v37 = vuzp1q_s16(*v28, v32);
      v38 = vuzp2q_s16(*v29, v33);
      v39 = vuzp1q_s16(*v29, v33);
      v40 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v37.i8, *v34.i8), *v36.i8, *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v37, v34), v36, v30), 6uLL);
      v41 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v39.i8, *v35.i8), *v38.i8, *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v39, v35), v38, v31), 6uLL);
      v21 = __OFSUB__(a4, 2);
      a4 -= 2;
      v42 = vzip1q_s16(v40, v41);
      v43 = vzip2q_s16(v40, v41);
      v8 = v26 + a6;
      *a1 = v42.i32[0];
      v44 = (a1 + v10);
      *v9 = v42.i32[1];
      v45 = &v9[v10];
      *v44 = v42.i32[2];
      v46 = (v44 + v10);
      *v45 = v42.i32[3];
      v47 = &v45[v10];
      *v46 = v43.i32[0];
      v48 = (v46 + v10);
      *v47 = v43.i32[1];
      v49 = &v47[v10];
      *v48 = v43.i32[2];
      result = (v48 + v10);
      *v49 = v43.i32[3];
      v50 = &v49[v10];
      if ((a4 < 0) ^ v21 | (a4 == 0))
      {
        return result;
      }

      a1 = (result - 4 * v10 + 4);
      v9 = &v50[-4 * v10 + 4];
    }
  }

  else
  {
    while (1)
    {
      v11 = v8 >> 6;
      v12 = v8 & 0x3E;
      v13 = v8 + a6;
      if (v11 >= a7)
      {
        break;
      }

      v15 = *(a3 + (2 * v11));
      v16 = *(a3 + 2 * (v13 >> 6));
      v17 = vuzp2q_s16(v15, v15).u64[0];
      v15.i64[0] = vuzp1q_s16(v15, v15).u64[0];
      v18 = vuzp2q_s16(v16, v16).u64[0];
      v16.i64[0] = vuzp1q_s16(v16, v16).u64[0];
      v19 = vmlal_s16(vshll_n_u16(*v15.i8, 6uLL), vsub_s16(v17, *v15.i8), vdup_n_s16(v12));
      v20 = vmlal_s16(vshll_n_u16(*v16.i8, 6uLL), vsub_s16(v18, *v16.i8), vdup_n_s16(v13 & 0x3E));
      *v19.i8 = vrshrn_n_s32(v19, 6uLL);
      *v20.i8 = vrshrn_n_s32(v20, 6uLL);
      v21 = __OFSUB__(a4, 2);
      a4 -= 2;
      v22 = vzip1q_s16(v19, v20);
      *a1 = v22.i32[0];
      result = (a1 + v10);
      *v9 = v22.i32[1];
      v23 = &v9[v10];
      v8 = v13 + a6;
      *result = v22.i32[2];
      *v23 = v22.i32[3];
      if ((a4 < 0) ^ v21 | (a4 == 0))
      {
        return result;
      }

      a1 = (result - v10 + 4);
      v9 = &v23[-v10 + 4];
    }
  }

  return sub_27796B1B4(a1, v10, a3, a4, a5);
}

int16x4_t sub_27796B4D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  result = *(a3 + 2);
  v17 = (a3 - 4);
  do
  {
    v18 = *v17;
    v17 = (v17 - 4);
    v19 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(v8, result.i16[0]), v9, result, 1), v10, result, 2), v11, result, 3), v7, v18, 2), v12, v18, 1), v13, v18, 0), 4uLL), v14), v15);
    v20 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v19.i64[0];
    a1 = (a1 + a2);
    result = vextq_s8(v19, v19, 8uLL).u64[0];
    *a7 = v19.i64[1];
    a7 = (a7 + a2);
  }

  while (!((a5 < 0) ^ v20 | (a5 == 0)));
  return result;
}

int16x8_t sub_27796B528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  result = *(a3 + 2);
  v17 = (a3 - 4);
  do
  {
    v18 = *v17;
    v17 = (v17 - 4);
    v19 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(v8, result.i16[0]), v9, *result.i8, 1), v10, *result.i8, 2), v11, *result.i8, 3), v7, v18, 2), v12, v18, 1), v13, v18, 0), 4uLL), v14), v15);
    v20 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_laneq_s16(v8, result, 4), v9, result, 5), v10, result, 6), v11, result, 7), v7, *result.i8, 3), v12, *v19.i8, 3), v13, v19, 7), 4uLL), v14), v15);
    v21 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v19.i64[0];
    a1[1] = v20.i64[0];
    a1 = (a1 + a2);
    result = vzip2q_s64(v19, v20);
    *a7 = v19.i64[1];
    a7[1] = v20.i64[1];
    a7 = (a7 + a2);
  }

  while (!((a5 < 0) ^ v21 | (a5 == 0)));
  return result;
}

void *sub_27796B5A0(void *result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, void *a7)
{
  v16 = (a3 + 2);
  v17 = (a3 - 4);
  v18 = a2 - 2 * a4;
  for (i = a4; ; a4 = i)
  {
    v20 = *v17;
    v17 = (v17 - 4);
    do
    {
      v21 = *v16;
      v22 = v16[1];
      v16 += 2;
      v23 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(v7, v20, 2), v12, v20, 1), v13, v20, 0), v8, *v21.i8, 0), v9, *v21.i8, 1), v10, *v21.i8, 2), v11, *v21.i8, 3), 4uLL), v14), v15);
      v24 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_laneq_s16(v8, v21, 4), v9, v21, 5), v10, v21, 6), v11, v21, 7), v7, *v21.i8, 3), v12, *v23.i8, 3), v13, v23, 7), 4uLL), v14), v15);
      v25 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(v8, v22.i16[0]), v9, *v22.i8, 1), v10, *v22.i8, 2), v11, *v22.i8, 3), v7, v21, 7), v12, *v24.i8, 3), v13, v24, 7), 4uLL), v14), v15);
      v26 = __OFSUB__(a4, 16);
      a4 -= 16;
      v27 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_laneq_s16(v8, v22, 4), v9, v22, 5), v10, v22, 6), v11, v22, 7), v7, *v22.i8, 3), v12, *v25.i8, 3), v13, v25, 7), 4uLL), v14), v15);
      v20.i16[2] = v22.i16[7];
      *result = v23.i64[0];
      result[1] = v24.i64[0];
      result[2] = v25.i64[0];
      result[3] = v27.i64[0];
      result += 4;
      v20.i16[0] = v27.i16[7];
      *a7 = v23.i64[1];
      a7[1] = v24.i64[1];
      a7[2] = v25.i64[1];
      a7[3] = v27.i64[1];
      a7 += 4;
      v20.i16[1] = v27.i16[3];
    }

    while (!((a4 < 0) ^ v26 | (a4 == 0)));
    v26 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v26 | (a5 == 0))
    {
      break;
    }

    v16 = (a7 - 2 * i);
    result = (result + v18);
    a7 = (a7 + v18);
  }

  return result;
}

int16x4_t sub_27796B6FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  result = *(a3 + 2);
  v16 = (a3 - 4);
  do
  {
    v17 = *v16;
    v16 = (v16 - 4);
    v18 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, result, 0), *v9.i8, result, 1), *v10.i8, result, 2), *v11.i8, result, 3), *v7.i8, v17, 2), *v12.i8, v17, 1), *v13.i8, v17, 0), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, result, 0), v9, result, 1), v10, result, 2), v11, result, 3), v7, v17, 2), v12, v17, 1), v13, v17, 0), 4uLL), v14);
    v19 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v18.i64[0];
    a1 = (a1 + a2);
    result = vextq_s8(v18, v18, 8uLL).u64[0];
    *a7 = v18.i64[1];
    a7 = (a7 + a2);
  }

  while (!((a5 < 0) ^ v19 | (a5 == 0)));
  return result;
}

int16x8_t sub_27796B768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  result = *(a3 + 2);
  v16 = (a3 - 4);
  do
  {
    v17 = *v16;
    v16 = (v16 - 4);
    v18 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *result.i8, 0), *v9.i8, *result.i8, 1), *v10.i8, *result.i8, 2), *v11.i8, *result.i8, 3), *v7.i8, v17, 2), *v12.i8, v17, 1), *v13.i8, v17, 0), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, *result.i8, 0), v9, *result.i8, 1), v10, *result.i8, 2), v11, *result.i8, 3), v7, v17, 2), v12, v17, 1), v13, v17, 0), 4uLL), v14);
    v19 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v8.i8, result, 4), *v9.i8, result, 5), *v10.i8, result, 6), *v11.i8, result, 7), *v7.i8, *result.i8, 3), *v12.i8, *v18.i8, 3), *v13.i8, v18, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v8, result, 4), v9, result, 5), v10, result, 6), v11, result, 7), v7, *result.i8, 3), v12, *v18.i8, 3), v13, v18, 7), 4uLL), v14);
    v20 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v18.i64[0];
    a1[1] = v19.i64[0];
    a1 = (a1 + a2);
    result = vzip2q_s64(v18, v19);
    *a7 = v18.i64[1];
    a7[1] = v19.i64[1];
    a7 = (a7 + a2);
  }

  while (!((a5 < 0) ^ v20 | (a5 == 0)));
  return result;
}

void *sub_27796B818(void *result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, void *a7)
{
  v15 = (a3 + 2);
  v16 = (a3 - 4);
  v17 = a2 - 2 * a4;
  for (i = a4; ; a4 = i)
  {
    v19 = *v16;
    v16 = (v16 - 4);
    do
    {
      v20 = *v15;
      v21 = v15[1];
      v15 += 2;
      v22 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v7.i8, v19, 2), *v12.i8, v19, 1), *v13.i8, v19, 0), *v8.i8, *v20.i8, 0), *v9.i8, *v20.i8, 1), *v10.i8, *v20.i8, 2), *v11.i8, *v20.i8, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v7, v19, 2), v12, v19, 1), v13, v19, 0), v8, *v20.i8, 0), v9, *v20.i8, 1), v10, *v20.i8, 2), v11, *v20.i8, 3), 4uLL), v14);
      v23 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v8.i8, v20, 4), *v9.i8, v20, 5), *v10.i8, v20, 6), *v11.i8, v20, 7), *v7.i8, *v20.i8, 3), *v12.i8, *v22.i8, 3), *v13.i8, v22, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v8, v20, 4), v9, v20, 5), v10, v20, 6), v11, v20, 7), v7, *v20.i8, 3), v12, *v22.i8, 3), v13, v22, 7), 4uLL), v14);
      v24 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v21.i8, 0), *v9.i8, *v21.i8, 1), *v10.i8, *v21.i8, 2), *v11.i8, *v21.i8, 3), *v7.i8, v20, 7), *v12.i8, *v23.i8, 3), *v13.i8, v23, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v21.i8, 0), v9, *v21.i8, 1), v10, *v21.i8, 2), v11, *v21.i8, 3), v7, v20, 7), v12, *v23.i8, 3), v13, v23, 7), 4uLL), v14);
      v25 = __OFSUB__(a4, 16);
      a4 -= 16;
      v26 = vminq_s16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v8.i8, v21, 4), *v9.i8, v21, 5), *v10.i8, v21, 6), *v11.i8, v21, 7), *v7.i8, *v21.i8, 3), *v12.i8, *v24.i8, 3), *v13.i8, v24, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmull_high_laneq_s16(v8, v21, 4), v9, v21, 5), v10, v21, 6), v11, v21, 7), v7, *v21.i8, 3), v12, *v24.i8, 3), v13, v24, 7), 4uLL), v14);
      v19.i16[2] = v21.i16[7];
      *result = v22.i64[0];
      result[1] = v23.i64[0];
      result[2] = v24.i64[0];
      result[3] = v26.i64[0];
      result += 4;
      v19.i16[0] = v26.i16[7];
      *a7 = v22.i64[1];
      a7[1] = v23.i64[1];
      a7[2] = v24.i64[1];
      a7[3] = v26.i64[1];
      a7 += 4;
      v19.i16[1] = v26.i16[3];
    }

    while (!((a4 < 0) ^ v25 | (a4 == 0)));
    v25 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v25 | (a5 == 0))
    {
      break;
    }

    v15 = (a7 - 2 * i);
    result = (result + v17);
    a7 = (a7 + v17);
  }

  return result;
}

uint64_t sub_27796B988(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9 > 1023)
  {
    return sub_27796B6A0(a1, a2, a3, a4);
  }

  else
  {
    return sub_27796B478(a1, a2, a3, a4);
  }
}

void *sub_27796B9BC(void *result, uint64_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, int8x8_t *a8, uint64_t a9, int a10)
{
  v13 = (result + a2);
  v14 = 2 * a2;
  do
  {
    v15 = *a8++;
    v16 = __OFSUB__(a10, 4);
    a10 -= 4;
    *a6.i8 = vshr_n_u8(v15, 4uLL);
    *a5.i8 = vand_s8(v15, v10);
    v17 = vzip1q_s8(a5, a6);
    v18 = vaddq_s8(v17, v17);
    v19 = vqtbl1q_s8(v11, vaddq_s16(vzip1q_s8(v18, v18), v12));
    *result = v19.i64[0];
    v20 = (result + v14);
    v21 = vqtbl1q_s8(v11, vaddq_s16(vzip2q_s8(v18, v18), v12));
    *v13 = v19.i64[1];
    v22 = (v13 + v14);
    *v20 = v21.i64[0];
    result = (v20 + v14);
    *v22 = v21.i64[1];
    v13 = (v22 + v14);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int8x16_t *sub_27796BA0C(int8x16_t *result, uint64_t a2, uint64_t a3, int8x16_t *a4, uint64_t a5, int a6)
{
  v9 = (result + a2);
  v10 = 2 * a2;
  do
  {
    v11 = *a4++;
    v12 = __OFSUB__(a6, 4);
    a6 -= 4;
    v13 = vshrq_n_u8(v11, 4uLL);
    v14 = vandq_s8(v11, v6);
    v15 = vzip1q_s8(v14, v13);
    v16 = vzip2q_s8(v14, v13);
    v17 = vaddq_s8(v15, v15);
    v18 = vaddq_s8(v16, v16);
    *result = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v17, v17), v8));
    v19 = (result + v10);
    *v9 = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v17, v17), v8));
    v20 = (v9 + v10);
    *v19 = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v18, v18), v8));
    result = (v19 + v10);
    *v20 = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v18, v18), v8));
    v9 = (v20 + v10);
  }

  while (!((a6 < 0) ^ v12 | (a6 == 0)));
  return result;
}

int8x16_t *sub_27796BA7C(int8x16_t *result, uint64_t a2, uint64_t a3, int8x16_t *a4, uint64_t a5, int a6)
{
  v9 = (result + a2);
  v10 = 2 * a2;
  do
  {
    v11 = *a4;
    v12 = a4[1];
    a4 += 2;
    v13 = __OFSUB__(a6, 4);
    a6 -= 4;
    v14 = vshrq_n_u8(v11, 4uLL);
    v15 = vandq_s8(v11, v6);
    v16 = vshrq_n_u8(v12, 4uLL);
    v17 = vandq_s8(v12, v6);
    v18 = vzip1q_s8(v15, v14);
    v19 = vzip2q_s8(v15, v14);
    v20 = vzip1q_s8(v17, v16);
    v21 = vzip2q_s8(v17, v16);
    v22 = vaddq_s8(v18, v18);
    v23 = vaddq_s8(v19, v19);
    v24 = vaddq_s8(v20, v20);
    v25 = vaddq_s8(v21, v21);
    *result = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v22, v22), v8));
    result[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v22, v22), v8));
    v26 = (result + v10);
    *v9 = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v23, v23), v8));
    v9[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v23, v23), v8));
    v27 = (v9 + v10);
    *v26 = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v24, v24), v8));
    v26[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v24, v24), v8));
    result = (v26 + v10);
    *v27 = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v25, v25), v8));
    v27[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v25, v25), v8));
    v9 = (v27 + v10);
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

int8x16_t *sub_27796BB34(int8x16_t *result, uint64_t a2, uint64_t a3, int8x16_t *a4, uint64_t a5, int a6)
{
  v9 = (result + a2);
  v10 = 2 * a2;
  do
  {
    v11 = *a4;
    v12 = a4[1];
    a4 += 2;
    v13 = __OFSUB__(a6, 2);
    a6 -= 2;
    v14 = vshrq_n_u8(v11, 4uLL);
    v15 = vandq_s8(v11, v6);
    v16 = vshrq_n_u8(v12, 4uLL);
    v17 = vandq_s8(v12, v6);
    v18 = vzip1q_s8(v15, v14);
    v19 = vzip2q_s8(v15, v14);
    v20 = vzip1q_s8(v17, v16);
    v21 = vzip2q_s8(v17, v16);
    v22 = vaddq_s8(v18, v18);
    v23 = vaddq_s8(v19, v19);
    v24 = vaddq_s8(v20, v20);
    v25 = vaddq_s8(v21, v21);
    *result = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v22, v22), v8));
    result[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v22, v22), v8));
    result[2] = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v23, v23), v8));
    result[3] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v23, v23), v8));
    result = (result + v10);
    *v9 = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v24, v24), v8));
    v9[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v24, v24), v8));
    v9[2] = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v25, v25), v8));
    v9[3] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v25, v25), v8));
    v9 = (v9 + v10);
  }

  while (!((a6 < 0) ^ v13 | (a6 == 0)));
  return result;
}

int8x16_t *sub_27796BBE4(int8x16_t *result, uint64_t a2, uint64_t a3, int8x16_t *a4, uint64_t a5, int a6)
{
  v9 = result + 4;
  do
  {
    v10 = *a4;
    v11 = a4[1];
    a4 += 2;
    v12 = __OFSUB__(a6--, 1);
    v13 = vshrq_n_u8(v10, 4uLL);
    v14 = vandq_s8(v10, v6);
    v15 = vshrq_n_u8(v11, 4uLL);
    v16 = vandq_s8(v11, v6);
    v17 = vzip1q_s8(v14, v13);
    v18 = vzip2q_s8(v14, v13);
    v19 = vzip1q_s8(v16, v15);
    v20 = vzip2q_s8(v16, v15);
    v21 = vaddq_s8(v17, v17);
    v22 = vaddq_s8(v18, v18);
    v23 = vaddq_s8(v19, v19);
    v24 = vaddq_s8(v20, v20);
    *result = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v21, v21), v8));
    result[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v21, v21), v8));
    result[2] = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v22, v22), v8));
    result[3] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v22, v22), v8));
    result = (result + a2);
    *v9 = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v23, v23), v8));
    v9[1] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v23, v23), v8));
    v9[2] = vqtbl1q_s8(v7, vaddq_s16(vzip1q_s8(v24, v24), v8));
    v9[3] = vqtbl1q_s8(v7, vaddq_s16(vzip2q_s8(v24, v24), v8));
    v9 = (v9 + a2);
  }

  while (!((a6 < 0) ^ v12 | (a6 == 0)));
  return result;
}

void *sub_27796BCCC(void *result, uint64_t a2, int16x8_t a3, int16x8_t a4, uint64_t a5, uint64_t a6, int a7, int16x8_t *a8, void *a9)
{
  do
  {
    v11 = *a8;
    v12 = a8[1];
    a8 += 2;
    v13 = __OFSUB__(a7, 4);
    a7 -= 4;
    v14 = vmull_s16(*v11.i8, *a4.i8);
    v15 = vmull_high_s16(v11, a4);
    v16 = vmull_s16(*v12.i8, *a4.i8);
    v17 = vmull_high_s16(v12, a4);
    v18 = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v14, vcltzq_s32(v14)), 6uLL), vaddq_s32(v15, vcltzq_s32(v15)), 6uLL), a3), v9), v10);
    v19 = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v16, vcltzq_s32(v16)), 6uLL), vaddq_s32(v17, vcltzq_s32(v17)), 6uLL), a3), v9), v10);
    *result = v18.i64[0];
    v20 = (result + a2);
    *a9 = v18.i64[1];
    v21 = (a9 + a2);
    *v20 = v19.i64[0];
    result = (v20 + a2);
    *v21 = v19.i64[1];
    a9 = (v21 + a2);
  }

  while (!((a7 < 0) ^ v13 | (a7 == 0)));
  return result;
}

int16x8_t *sub_27796BD44(int16x8_t *result, uint64_t a2, int16x8_t a3, int16x8_t a4, uint64_t a5, uint64_t a6, int a7, int16x8_t *a8, int16x8_t *a9)
{
  do
  {
    v11 = *a8;
    v12 = a8[1];
    a8 += 2;
    v13 = __OFSUB__(a7, 2);
    a7 -= 2;
    v14 = vmull_s16(*v11.i8, *a4.i8);
    v15 = vmull_high_s16(v11, a4);
    v16 = vmull_s16(*v12.i8, *a4.i8);
    v17 = vmull_high_s16(v12, a4);
    *result = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v14, vcltzq_s32(v14)), 6uLL), vaddq_s32(v15, vcltzq_s32(v15)), 6uLL), a3), v9), v10);
    result = (result + a2);
    *a9 = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v16, vcltzq_s32(v16)), 6uLL), vaddq_s32(v17, vcltzq_s32(v17)), 6uLL), a3), v9), v10);
    a9 = (a9 + a2);
  }

  while (!((a7 < 0) ^ v13 | (a7 == 0)));
  return result;
}

int16x8_t *sub_27796BDB4(int16x8_t *result, uint64_t a2, int16x8_t a3, int16x8_t a4, uint64_t a5, int a6, int a7, int16x8_t *a8, int16x8_t *a9)
{
  v11 = (a8 + 2 * a6);
  v12 = a2 - 2 * a6;
  v13 = a6;
  do
  {
    do
    {
      v14 = *a8;
      v15 = a8[1];
      a8 += 2;
      v16 = *v11;
      v17 = v11[1];
      v11 += 2;
      v18 = __OFSUB__(a6, 16);
      a6 -= 16;
      v19 = vmull_s16(*v14.i8, *a4.i8);
      v20 = vmull_high_s16(v14, a4);
      v21 = vmull_s16(*v15.i8, *a4.i8);
      v22 = vmull_high_s16(v15, a4);
      v23 = vmull_s16(*v16.i8, *a4.i8);
      v24 = vmull_high_s16(v16, a4);
      v25 = vmull_s16(*v17.i8, *a4.i8);
      v26 = vmull_high_s16(v17, a4);
      *result = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v19, vcltzq_s32(v19)), 6uLL), vaddq_s32(v20, vcltzq_s32(v20)), 6uLL), a3), v9), v10);
      result[1] = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v21, vcltzq_s32(v21)), 6uLL), vaddq_s32(v22, vcltzq_s32(v22)), 6uLL), a3), v9), v10);
      result += 2;
      *a9 = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v23, vcltzq_s32(v23)), 6uLL), vaddq_s32(v24, vcltzq_s32(v24)), 6uLL), a3), v9), v10);
      a9[1] = vminq_s16(vmaxq_s16(vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v25, vcltzq_s32(v25)), 6uLL), vaddq_s32(v26, vcltzq_s32(v26)), 6uLL), a3), v9), v10);
      a9 += 2;
    }

    while (!((a6 < 0) ^ v18 | (a6 == 0)));
    v18 = __OFSUB__(a7, 2);
    a7 -= 2;
    a8 = (a8 + 2 * v13);
    v11 = (v11 + 2 * v13);
    result = (result + v12);
    a9 = (a9 + v12);
    a6 = v13;
  }

  while (!((a7 < 0) ^ v18 | (a7 == 0)));
  return result;
}

void *sub_27796BEE0(void *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int a5, int16x8_t *a6, void *a7, double a8, int16x8_t a9)
{
  v9 = *a3;
  v9.i16[0] = vaddv_s16(*a3);
  return sub_27796BCCC(a1, a2, vdupq_lane_s16(vrshr_n_u16(v9, 2uLL), 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796BEF4(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, int16x8_t *a6, int16x8_t *a7, double a8, int16x8_t a9)
{
  v9 = *a3;
  v9.i16[0] = vaddvq_s16(*a3);
  return sub_27796BD44(a1, a2, vdupq_lane_s16(vrshr_n_u16(*v9.i8, 3uLL), 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796BF08(int16x8_t *a1, uint64_t a2, int16x8_t *a3, int a4, int a5, int16x8_t *a6, int16x8_t *a7, double a8, int16x8_t a9)
{
  v9 = vpaddq_s16(*a3, a3[1]);
  v9.i16[0] = vaddvq_s16(v9);
  return sub_27796BDB4(a1, a2, vdupq_lane_s16(vrshr_n_u16(*v9.i8, 4uLL), 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796BF20(int16x8_t *a1, uint64_t a2, int16x8_t *a3, int a4, int a5, int16x8_t *a6, int16x8_t *a7, double a8, int16x8_t a9)
{
  v9 = vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3]));
  v9.i32[0] = vaddlvq_u16(v9);
  return sub_27796BDB4(a1, a2, vdupq_lane_s16(vrshrn_n_s32(v9, 5uLL), 0), a9, a3, a4, a5, a6, a7);
}

uint64_t sub_27796BF8C(uint64_t a1, uint64_t a2, int16x4_t *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddv_s16(*a3);
  return v3(vdupq_lane_s16(vrshr_n_u16(v4, 2uLL), 0));
}

uint64_t sub_27796BFA0(uint64_t a1, uint64_t a2, int16x8_t *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddvq_s16(*a3);
  return v3(vdupq_lane_s16(vrshr_n_u16(*v4.i8, 3uLL), 0));
}

uint64_t sub_27796BFB4(uint64_t a1, uint64_t a2, int16x8_t *a3)
{
  v4 = vpaddq_s16(*a3, a3[1]);
  v4.i16[0] = vaddvq_s16(v4);
  return v3(vdupq_lane_s16(vrshr_n_u16(*v4.i8, 4uLL), 0));
}

uint64_t sub_27796BFCC(uint64_t a1, uint64_t a2, int16x8_t *a3)
{
  v4 = vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3]));
  v4.i32[0] = vaddlvq_u16(v4);
  return v3(vdupq_lane_s16(vrshrn_n_s32(v4, 5uLL), 0));
}

void *sub_27796C060(void *a1, uint64_t a2, uint16x4_t *a3, uint64_t a4, int a5, int16x8_t *a6, void *a7, int32x2_t a8, int16x8_t a9)
{
  v11 = *a3;
  v11.i32[0] = vaddlv_u16(*a3);
  v12 = vshl_u32(vadd_s32(vadd_s32(a8, v9), v11), v10);
  if (a5 != 4)
  {
    if (a5 == 16)
    {
      v13 = 26215;
    }

    else
    {
      v13 = 43691;
    }

    v12 = vshr_n_u32(vmul_s32(v12, vdup_n_s32(v13)), 0x11uLL);
  }

  return sub_27796BCCC(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796C0B0(int16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, int a5, int16x8_t *a6, int16x8_t *a7, int32x2_t a8, int16x8_t a9)
{
  v11 = *a3;
  v11.i32[0] = vaddlvq_u16(*a3);
  v12 = vshl_u32(vadd_s32(vadd_s32(a8, v9), *v11.i8), v10);
  if (a5 != 8)
  {
    if (a5 == 32)
    {
      v13 = 26215;
    }

    else
    {
      v13 = 43691;
    }

    v12 = vshr_n_u32(vmul_s32(v12, vdup_n_s32(v13)), 0x11uLL);
  }

  return sub_27796BD44(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796C104(int16x8_t *a1, uint64_t a2, int16x8_t *a3, int a4, int a5, int16x8_t *a6, int16x8_t *a7, int32x2_t a8, int16x8_t a9)
{
  v11 = vpaddq_s16(*a3, a3[1]);
  v11.i32[0] = vaddlvq_u16(v11);
  v12 = vshl_u32(vadd_s32(vadd_s32(a8, v9), *v11.i8), v10);
  if (a5 != 16)
  {
    if ((a5 & 0x38) != 0)
    {
      v13 = 43691;
    }

    else
    {
      v13 = 26215;
    }

    v12 = vshr_n_u32(vmul_s32(v12, vdup_n_s32(v13)), 0x11uLL);
  }

  return sub_27796BDB4(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796C164(int16x8_t *a1, uint64_t a2, int16x8_t *a3, int a4, int a5, int16x8_t *a6, int16x8_t *a7, int32x4_t a8, int16x8_t a9)
{
  v11 = vpaddq_s16(vpaddq_s16(*a3, a3[1]), vpaddq_s16(a3[2], a3[3]));
  v11.i32[0] = vaddlvq_u16(v11);
  v12 = vshl_u32(vadd_s32(*&vaddq_s32(a8, v9), *v11.i8), v10);
  if (a5 != 32)
  {
    if (a5 == 8)
    {
      v13 = 26215;
    }

    else
    {
      v13 = 43691;
    }

    v12 = vshr_n_u32(vmul_s32(v12, vdup_n_s32(v13)), 0x11uLL);
  }

  return sub_27796BDB4(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27796C214@<X0>(int64x2_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W6>, int a6@<W8>)
{
  do
  {
    v13 = *a2;
    v12 = (a2 + a3);
    v15 = *v6;
    v14 = (v6 + a3);
    v16 = *v12;
    a2 = (v12 + a3);
    v17 = *v14;
    v6 = (v14 + a3);
    v18 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v13, v16), vpaddq_s16(v15, v17)), 1uLL);
    v19 = __OFSUB__(a6, 2);
    a6 -= 2;
    *a1++ = v18;
    v7 = vaddw_u16(v7, *v18.i8);
    v8 = vaddw_high_u16(v8, v18);
  }

  while (!((a6 < 0) ^ v19 | (a6 == 0)));
  v20 = vtrn2q_s64(v18, v18);
  if (a4)
  {
    do
    {
      v19 = __OFSUB__(a4, 4);
      a4 -= 4;
      *a1 = v20;
      a1[1] = v20;
      a1 += 2;
      v7 = vaddw_u16(v7, *v20.i8);
      v8 = vaddw_high_u16(v8, v20);
      v9 = vaddw_u16(v9, *v20.i8);
      v10 = vaddw_high_u16(v10, v20);
    }

    while (!((a4 < 0) ^ v19 | (a4 == 0)));
  }

  v21 = vaddq_s32(vaddq_s32(v7, v8), vaddq_s32(v9, v10));
  v21.i32[0] = vaddvq_s32(v21);
  result = (a1 - 8 * a5);
  v23 = vdupq_lane_s16(vrshl_u32(*v21.i8, v11), 0);
  do
  {
    v19 = __OFSUB__(a5, 4);
    a5 -= 4;
    v24 = vsubq_s16(result[1], v23);
    *result = vsubq_s16(*result, v23);
    result[1] = v24;
    result += 2;
  }

  while (!((a5 < 0) ^ v19 | (a5 == 0)));
  return result;
}

void sub_27796C2A8(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  if (a4)
  {
    do
    {
      v26 = *a2;
      v25 = (a2 + a3);
      v28 = *v6;
      v27 = (v6 + a3);
      v29 = *v25;
      a2 = (v25 + a3);
      v31 = *v27;
      v6 = (v27 + a3);
      v30 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v26, v29), vpaddq_s16(v28, v31)), 1uLL);
      *v28.i8 = vdup_lane_s16(*v30.i8, 3);
      *v31.i8 = vdup_laneq_s16(v30, 7);
      v32 = vtrn2q_s64(v30, v30);
      v23 = __OFSUB__(a6, 2);
      a6 -= 2;
      a1->i64[0] = v30.i64[0];
      a1->i64[1] = v28.i64[0];
      a1[1].i64[0] = v32.i64[0];
      a1[1].i64[1] = v31.i64[0];
      a1 += 2;
      v7 = vaddw_u16(v7, *v30.i8);
      v8 = vaddw_u16(v8, *v28.i8);
      v9 = vaddw_u16(v9, *v32.i8);
      v10 = vaddw_u16(v10, *v31.i8);
    }

    while (!((a6 < 0) ^ v23 | (a6 == 0)));
    v24 = vtrn1q_s64(v32, v31);
    v22 = v24;
  }

  else
  {
    do
    {
      v12 = *a2;
      v13 = a2[1];
      v11 = (a2 + a3);
      v15 = *v6;
      v16 = v6[1];
      v14 = (v6 + a3);
      v17 = *v11;
      v18 = v11[1];
      a2 = (v11 + a3);
      v19 = *v14;
      v20 = v14[1];
      v6 = (v14 + a3);
      v21 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v12, v13), vpaddq_s16(v15, v16)), 1uLL);
      v22 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v17, v18), vpaddq_s16(v19, v20)), 1uLL);
      v23 = __OFSUB__(a6, 2);
      a6 -= 2;
      *a1 = v21;
      a1[1] = v22;
      a1 += 2;
      v7 = vaddw_u16(v7, *v21.i8);
      v8 = vaddw_high_u16(v8, v21);
      v9 = vaddw_u16(v9, *v22.i8);
      v10 = vaddw_high_u16(v10, v22);
    }

    while (!((a6 < 0) ^ v23 | (a6 == 0)));
    v24 = v22;
  }

  if (a5)
  {
    do
    {
      v23 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v24;
      a1[1] = v22;
      v33 = a1 + 2;
      *v33 = v24;
      v33[1] = v22;
      a1 = v33 + 2;
      v7 = vaddw_u16(vaddw_u16(v7, *v24.i8), *v24.i8);
      v8 = vaddw_high_u16(vaddw_high_u16(v8, v24), v24);
      v9 = vaddw_u16(vaddw_u16(v9, *v22.i8), *v22.i8);
      v10 = vaddw_high_u16(vaddw_high_u16(v10, v22), v22);
    }

    while (!((a5 < 0) ^ v23 | (a5 == 0)));
  }

  JUMPOUT(0x27796C270);
}

void sub_27796C39C(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W8>)
{
  do
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v14 = a2[3];
    v10 = (a2 + a3);
    v16 = *v5;
    v17 = v5[1];
    v18 = v5[2];
    v19 = v5[3];
    v15 = (v5 + a3);
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[2];
    v23 = v10[3];
    a2 = (v10 + a3);
    v24 = *v15;
    v25 = v15[1];
    v26 = v15[2];
    v27 = v15[3];
    v5 = (v15 + a3);
    v28 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v11, v12), vpaddq_s16(v16, v17)), 1uLL);
    v29 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v13, v14), vpaddq_s16(v18, v19)), 1uLL);
    v30 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v20, v21), vpaddq_s16(v24, v25)), 1uLL);
    v31 = vshlq_n_s16(vaddq_s16(vpaddq_s16(v22, v23), vpaddq_s16(v26, v27)), 1uLL);
    v32 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v28;
    a1[1] = v29;
    a1[2] = v30;
    a1[3] = v31;
    a1 += 4;
    v6 = vaddw_u16(vaddw_u16(v6, *v28.i8), *v30.i8);
    v7 = vaddw_high_u16(vaddw_high_u16(v7, v28), v30);
    v8 = vaddw_u16(vaddw_u16(v8, *v29.i8), *v31.i8);
    v9 = vaddw_high_u16(vaddw_high_u16(v9, v29), v31);
  }

  while (!((a5 < 0) ^ v32 | (a5 == 0)));
  if (a4)
  {
    do
    {
      v32 = __OFSUB__(a4, 4);
      a4 -= 4;
      *a1 = v30;
      a1[1] = v31;
      a1[2] = v30;
      a1[3] = v31;
      v33 = a1 + 4;
      *v33 = v30;
      v33[1] = v31;
      v33[2] = v30;
      v33[3] = v31;
      a1 = v33 + 4;
      v6 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v6, *v30.i8), *v30.i8), *v30.i8), *v30.i8);
      v7 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v7, v30), v30), v30), v30);
      v8 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v8, *v31.i8), *v31.i8), *v31.i8), *v31.i8);
      v9 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v9, v31), v31), v31), v31);
    }

    while (!((a4 < 0) ^ v32 | (a4 == 0)));
  }

  JUMPOUT(0x27796C270);
}

void sub_27796C660(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v10 = *a2;
    v9 = (a2 + a3);
    v12 = *v4;
    v11 = (v4 + a3);
    v13 = *v9;
    a2 = (v9 + a3);
    v14 = *v11;
    v4 = (v11 + a3);
    v15 = vshlq_n_s16(vpaddq_s16(v10, v12), 2uLL);
    v16 = vshlq_n_s16(vpaddq_s16(v13, v14), 2uLL);
    v17 = __OFSUB__(a4, 4);
    a4 -= 4;
    *a1 = v15;
    a1[1] = v16;
    a1 += 2;
    v5 = vaddw_u16(v5, *v15.i8);
    v6 = vaddw_high_u16(v6, v15);
    v7 = vaddw_u16(v7, *v16.i8);
    v8 = vaddw_high_u16(v8, v16);
  }

  while (!((a4 < 0) ^ v17 | (a4 == 0)));
  JUMPOUT(0x27796C250);
}

void sub_27796C6A8(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>, int64x2_t a6@<Q4>, int64x2_t a7@<Q6>)
{
  if (a4)
  {
    do
    {
      v28 = *a2;
      v27 = (a2 + a3);
      v30 = *v7;
      v29 = (v7 + a3);
      v31 = *v27;
      a2 = (v27 + a3);
      v32 = *v29;
      v7 = (v29 + a3);
      v33 = vshlq_n_s16(vpaddq_s16(v28, v30), 2uLL);
      v34 = vshlq_n_s16(vpaddq_s16(v31, v32), 2uLL);
      *a6.i8 = vdup_lane_s16(*v33.i8, 3);
      *a7.i8 = vdup_lane_s16(*v34.i8, 3);
      v35 = vtrn2q_s64(v33, vdupq_laneq_s16(v33, 7));
      v36 = vtrn1q_s64(v33, a6);
      v37 = vtrn2q_s64(v34, vdupq_laneq_s16(v34, 7));
      v38 = vtrn1q_s64(v34, a7);
      v26 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v36;
      a1[1] = v35;
      a1[2] = v38;
      a1[3] = v37;
      a1 += 4;
      v8 = vaddw_u16(vaddw_u16(v8, *v36.i8), *v38.i8);
      v9 = vaddw_high_u16(vaddw_high_u16(v9, v36), v38);
      v10 = vaddw_u16(vaddw_u16(v10, *v35.i8), *v37.i8);
      v11 = vaddw_high_u16(vaddw_high_u16(v11, v35), v37);
    }

    while (!((a5 < 0) ^ v26 | (a5 == 0)));
  }

  else
  {
    do
    {
      v13 = *a2;
      v14 = a2[1];
      v12 = (a2 + a3);
      v16 = *v7;
      v17 = v7[1];
      v15 = (v7 + a3);
      v18 = *v12;
      v19 = v12[1];
      a2 = (v12 + a3);
      v20 = *v15;
      v21 = v15[1];
      v7 = (v15 + a3);
      v22 = vshlq_n_s16(vpaddq_s16(v13, v14), 2uLL);
      v23 = vshlq_n_s16(vpaddq_s16(v16, v17), 2uLL);
      v24 = vshlq_n_s16(vpaddq_s16(v18, v19), 2uLL);
      v25 = vshlq_n_s16(vpaddq_s16(v20, v21), 2uLL);
      v26 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v22;
      a1[1] = v23;
      a1[2] = v24;
      a1[3] = v25;
      a1 += 4;
      v8 = vaddw_u16(vaddw_u16(v8, *v22.i8), *v24.i8);
      v9 = vaddw_high_u16(vaddw_high_u16(v9, v22), v24);
      v10 = vaddw_u16(vaddw_u16(v10, *v23.i8), *v25.i8);
      v11 = vaddw_high_u16(vaddw_high_u16(v11, v23), v25);
    }

    while (!((a5 < 0) ^ v26 | (a5 == 0)));
  }

  JUMPOUT(0x27796C350);
}

void sub_27796C79C(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = a2[3];
    a2 = (a2 + a3);
    v13 = *v4;
    v14 = v4[1];
    v15 = v4[2];
    v16 = v4[3];
    v4 = (v4 + a3);
    v17 = vshlq_n_s16(vpaddq_s16(v9, v10), 2uLL);
    v18 = vshlq_n_s16(vpaddq_s16(v11, v12), 2uLL);
    v19 = vshlq_n_s16(vpaddq_s16(v13, v14), 2uLL);
    v20 = vshlq_n_s16(vpaddq_s16(v15, v16), 2uLL);
    v21 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v17;
    a1[1] = v18;
    a1[2] = v19;
    a1[3] = v20;
    a1 += 4;
    v5 = vaddw_u16(vaddw_u16(v5, *v17.i8), *v19.i8);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v17), v19);
    v7 = vaddw_u16(vaddw_u16(v7, *v18.i8), *v20.i8);
    v8 = vaddw_high_u16(vaddw_high_u16(v8, v18), v20);
  }

  while (!((a4 < 0) ^ v21 | (a4 == 0)));
  JUMPOUT(0x27796C5A0);
}

void sub_27796C7FC(uint64_t a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, __n128 a5@<Q3>)
{
  do
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a2[1];
    a2 = (a2 + a3);
    v13 = v5[2];
    v14 = *v5;
    v15 = v5[1];
    v5 = (v5 + a3);
    v16 = vpaddq_s16(v11, v12);
    v17 = vpaddq_s16(v14, v15);
    *v12.i8 = vshl_n_s16(*&vpaddq_s16(v10, v10), 2uLL);
    v18 = vshlq_n_s16(v16, 2uLL);
    a5.n128_u64[0] = vshl_n_s16(*&vpaddq_s16(v13, v13), 2uLL);
    v19 = vshlq_n_s16(v17, 2uLL);
    *v17.i8 = vdup_lane_s16(*v12.i8, 3);
    *v15.i8 = vdup_lane_s16(a5.n128_u64[0], 3);
    v20 = vtrn1q_s64(v12, v17);
    a5 = vtrn1q_s64(a5, v15);
    v21 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v18;
    *(a1 + 16) = v20;
    *(a1 + 32) = v19;
    *(a1 + 48) = a5;
    a1 += 64;
    v6 = vaddw_u16(vaddw_u16(v6, *v18.i8), *v19.i8);
    v7 = vaddw_high_u16(vaddw_high_u16(v7, v18), v19);
    v8 = vaddw_u16(vaddw_u16(v8, *v20.i8), a5.n128_u64[0]);
    v9 = vaddw_high_u16(vaddw_high_u16(v9, v20), a5);
  }

  while (!((a4 < 0) ^ v21 | (a4 == 0)));
  JUMPOUT(0x27796C5A0);
}

void sub_27796C874(int16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v9 = *a2;
    v10 = a2[1];
    a2 = (a2 + a3);
    v11 = *v4;
    v12 = v4[1];
    v4 = (v4 + a3);
    v13 = vshlq_n_s16(vpaddq_s16(v9, v10), 2uLL);
    v14 = vshlq_n_s16(vpaddq_s16(v11, v12), 2uLL);
    v15 = vdupq_laneq_s16(v13, 7);
    v16 = vdupq_laneq_s16(v14, 7);
    v17 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v13;
    a1[1] = v15;
    a1[2] = v14;
    a1[3] = v16;
    a1 += 4;
    v5 = vaddw_u16(vaddw_u16(v5, *v13.i8), *v14.i8);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v13), v14);
    v7 = vaddw_u16(vaddw_u16(v7, *v15.i8), *v16.i8);
    v8 = vaddw_high_u16(vaddw_high_u16(v8, v15), v16);
  }

  while (!((a4 < 0) ^ v17 | (a4 == 0)));
  JUMPOUT(0x27796C5A0);
}

void sub_27796C8CC(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v9 = *a2;
    a2 = (a2 + a3);
    v10 = *v4;
    v4 = (v4 + a3);
    v11 = vpaddq_s16(v9, v9);
    v12 = vpaddq_s16(v10, v10);
    *v11.i8 = vshl_n_s16(*v11.i8, 2uLL);
    *v12.i8 = vshl_n_s16(*v12.i8, 2uLL);
    v13 = vdupq_lane_s16(*v11.i8, 3);
    v14 = vdupq_lane_s16(*v12.i8, 3);
    v15 = vtrn1q_s64(v11, v13);
    v16 = vtrn1q_s64(v12, v14);
    v17 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v15;
    a1[1] = v13;
    a1[2] = v16;
    a1[3] = v14;
    a1 += 4;
    v5 = vaddw_u16(vaddw_u16(v5, *v15.i8), *v16.i8);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v15), v16);
    v7 = vaddw_u16(vaddw_u16(v7, *v13.i8), *v14.i8);
    v8 = vaddw_high_u16(vaddw_high_u16(v8, v13), v14);
  }

  while (!((a4 < 0) ^ v17 | (a4 == 0)));
  JUMPOUT(0x27796C5A0);
}

void sub_27796C990(uint16x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v10.i64[0] = *a2;
    v9 = (a2 + a3);
    v10.i64[1] = *v4;
    v11 = (v4 + a3);
    v12.i64[0] = *v9;
    a2 = (v9 + a3);
    v12.i64[1] = *v11;
    v4 = (v11 + a3);
    v13 = vshlq_n_s16(v10, 3uLL);
    v14 = vshlq_n_s16(v12, 3uLL);
    v15 = __OFSUB__(a4, 4);
    a4 -= 4;
    *a1 = v13;
    a1[1] = v14;
    a1 += 2;
    v5 = vaddw_u16(v5, *v13.i8);
    v6 = vaddw_high_u16(v6, v13);
    v7 = vaddw_u16(v7, *v14.i8);
    v8 = vaddw_high_u16(v8, v14);
  }

  while (!((a4 < 0) ^ v15 | (a4 == 0)));
  JUMPOUT(0x27796C250);
}

void sub_27796C9D0(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v10 = *a2;
    v9 = (a2 + a3);
    v12 = *v4;
    v11 = (v4 + a3);
    v13 = *v9;
    a2 = (v9 + a3);
    v14 = vshlq_n_s16(v10, 3uLL);
    v15 = *v11;
    v4 = (v11 + a3);
    v16 = vshlq_n_s16(v12, 3uLL);
    v17 = vshlq_n_s16(v13, 3uLL);
    v18 = vshlq_n_s16(v15, 3uLL);
    v19 = __OFSUB__(a4, 4);
    a4 -= 4;
    *a1 = v14;
    a1[1] = v16;
    a1[2] = v17;
    a1[3] = v18;
    a1 += 4;
    v5 = vaddw_u16(vaddw_u16(v5, *v14.i8), *v17.i8);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v14), v17);
    v7 = vaddw_u16(vaddw_u16(v7, *v16.i8), *v18.i8);
    v8 = vaddw_high_u16(vaddw_high_u16(v8, v16), v18);
  }

  while (!((a4 < 0) ^ v19 | (a4 == 0)));
  JUMPOUT(0x27796C350);
}

void sub_27796CA28(_OWORD *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  if (a4)
  {
    do
    {
      v19 = *a2;
      a2 = (a2 + a3);
      v20 = *v5;
      v5 = (v5 + a3);
      v21 = vshlq_n_s16(v19, 3uLL);
      v22 = vshlq_n_s16(v20, 3uLL);
      v23 = vdupq_laneq_s16(v21, 7);
      v24 = vdupq_laneq_s16(v22, 7);
      v18 = __OFSUB__(a5, 2);
      a5 -= 2;
      *a1 = v21;
      a1[1] = v23;
      a1[2] = v22;
      a1[3] = v24;
      a1 += 4;
      v6 = vaddw_u16(vaddw_u16(v6, *v21.i8), *v22.i8);
      v7 = vaddw_high_u16(vaddw_high_u16(v7, v21), v22);
      v8 = vaddw_u16(vaddw_u16(v8, *v23.i8), *v24.i8);
      v9 = vaddw_high_u16(vaddw_high_u16(v9, v23), v24);
    }

    while (!((a5 < 0) ^ v18 | (a5 == 0)));
  }

  else
  {
    do
    {
      v10 = *a2;
      v11 = a2[1];
      a2 = (a2 + a3);
      v12 = *v5;
      v13 = v5[1];
      v5 = (v5 + a3);
      v14 = vshlq_n_s16(v10, 3uLL);
      v15 = vshlq_n_s16(v11, 3uLL);
      v16 = vshlq_n_s16(v12, 3uLL);
      v17 = vshlq_n_s16(v13, 3uLL);
      v18 = __OFSUB__(a5, 2);
      a5 -= 2;
      *a1 = v14;
      a1[1] = v15;
      a1[2] = v16;
      a1[3] = v17;
      a1 += 4;
      v6 = vaddw_u16(vaddw_u16(v6, *v14.i8), *v16.i8);
      v7 = vaddw_high_u16(vaddw_high_u16(v7, v14), v16);
      v8 = vaddw_u16(vaddw_u16(v8, *v15.i8), *v17.i8);
      v9 = vaddw_high_u16(vaddw_high_u16(v9, v15), v17);
    }

    while (!((a5 < 0) ^ v18 | (a5 == 0)));
  }

  JUMPOUT(0x27796C5A0);
}

void sub_27796CAE0(uint16x8_t *a1@<X0>, int16x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W8>)
{
  do
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = a2[3];
    a2 = (a2 + a3);
    v13 = vshlq_n_s16(v9, 3uLL);
    v14 = vshlq_n_s16(v10, 3uLL);
    v15 = vshlq_n_s16(v11, 3uLL);
    v16 = vshlq_n_s16(v12, 3uLL);
    v17 = __OFSUB__(a5--, 1);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1 += 4;
    v5 = vaddw_u16(vaddw_u16(v5, *v13.i8), *v15.i8);
    v6 = vaddw_high_u16(vaddw_high_u16(v6, v13), v15);
    v7 = vaddw_u16(vaddw_u16(v7, *v14.i8), *v16.i8);
    v8 = vaddw_high_u16(vaddw_high_u16(v8, v14), v16);
  }

  while (!((a5 < 0) ^ v17 | (a5 == 0)));
  if (a4)
  {
    do
    {
      v17 = __OFSUB__(a4, 2);
      a4 -= 2;
      *a1 = v13;
      a1[1] = v14;
      a1[2] = v15;
      a1[3] = v16;
      v18 = a1 + 4;
      *v18 = v13;
      v18[1] = v14;
      v18[2] = v15;
      v18[3] = v16;
      a1 = v18 + 4;
      v5 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v5, *v13.i8), *v15.i8), *v13.i8), *v15.i8);
      v6 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v6, v13), v15), v13), v15);
      v7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v7, *v14.i8), *v16.i8), *v14.i8), *v16.i8);
      v8 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v8, v14), v16), v14), v16);
    }

    while (!((a4 < 0) ^ v17 | (a4 == 0)));
  }

  JUMPOUT(0x27796C270);
}

int32x4_t *sub_27796CC58(int32x4_t **a1, int16x8_t **a2, int32x4_t *a3, int16x8_t *a4, int a5, unsigned int a6, unsigned int a7)
{
  v7 = a5 + 2;
  v8 = __clz(a7);
  v9 = vdupq_n_s32(a6);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16.i64[0] = 0x900000009;
  v16.i64[1] = 0x900000009;
  v17 = vdupq_n_s16(v8 - 24);
  v18.i64[0] = 0x505050505050505;
  v18.i64[1] = 0x505050505050505;
  v19 = vaddl_s16(*v17.i8, *v17.i8);
  v20.i64[0] = 0x100010001000100;
  v20.i64[1] = 0x100010001000100;
  v21 = vdupq_n_s32(0x1C7u);
  v22 = vsubq_s8(unk_277C44180, v18);
  v23 = vsubq_s8(unk_277C44190, v18);
  v24 = vsubq_s8(unk_277C441A0, v18);
  v26 = *v10;
  v27 = v10[1];
  v25 = v10 + 2;
  v29 = *v11;
  v30 = v11[1];
  v28 = v11 + 2;
  v32 = *v13;
  v31 = v13 + 1;
  v34 = *v14;
  v33 = v14 + 1;
  v36 = *v12;
  v37 = v12[1];
  result = v12 + 2;
  v39 = *v15;
  v38 = v15 + 1;
  do
  {
    v40 = __OFSUB__(v7, 8);
    v7 -= 8;
    v41 = vaddq_s16(v39, vaddq_s16(v32, v34));
    v42 = vrshlq_s16(v41, v17);
    v43 = vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_s32(vaddq_s32(v36, vaddq_s32(v26, v29)), v19), v16), vmull_u16(*v42.i8, *v42.i8)), v9);
    v44 = vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_s32(vaddq_s32(v37, vaddq_s32(v27, v30)), v19), v16), vmull_high_u16(v42, v42)), v9);
    v26 = *v25;
    v27 = v25[1];
    v25 += 2;
    v29 = *v28;
    v30 = v28[1];
    v28 += 2;
    *v43.i8 = vqrshrn_n_u16(vqshrn_high_n_u32(vqshrn_n_u32(v43, 0x10uLL), v44, 0x10uLL), 4uLL);
    v32 = *v31++;
    v34 = *v33++;
    v45 = vadd_s8(vadd_s8(vqtbl3_s8(*v22.i8, *v43.i8), vadd_s8(vcgt_u8(*v43.i8, 0xFEFEFEFEFEFEFEFELL), 0x505050505050505)), vadd_s8(vadd_s8(vcgt_u8(*v43.i8, 0x3737373737373737), vcgt_u8(*v43.i8, 0x4848484848484848)), vadd_s8(vcgt_u8(*v43.i8, 0x6565656565656565), vcgt_u8(*v43.i8, 0xA9A9A9A9A9A9A9A9))));
    v36 = *result;
    v37 = result[1];
    result += 2;
    v46 = vmovl_u8(v45);
    v47 = vrshrq_n_s32(vmulq_s32(vmull_u16(*v46.i8, *v41.i8), v21), 0xCuLL);
    v48 = vrshrq_n_s32(vmulq_s32(vmull_high_u16(v46, v41), v21), 0xCuLL);
    v39 = *v38++;
    *a3 = v47;
    a3[1] = v48;
    a3 += 2;
    *a4++ = vsubq_s16(v20, v46);
  }

  while (!((v7 < 0) ^ v40 | (v7 == 0)));
  return result;
}

int32x4_t *sub_27796CDBC(int32x4_t **a1, int16x8_t **a2, int32x4_t *a3, int16x8_t *a4, int a5, unsigned int a6, unsigned int a7)
{
  v7 = a5 + 2;
  v8 = __clz(a7);
  v9 = vdupq_n_s32(a6);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v20.i64[0] = 0x1900000019;
  v20.i64[1] = 0x1900000019;
  v21 = vdupq_n_s16(v8 - 24);
  v22.i64[0] = 0x505050505050505;
  v22.i64[1] = 0x505050505050505;
  v23 = vaddl_s16(*v21.i8, *v21.i8);
  v24.i64[0] = 0x100010001000100;
  v24.i64[1] = 0x100010001000100;
  v25 = vdupq_n_s32(0xA4u);
  v26 = vsubq_s8(unk_277C44180, v22);
  v27 = vsubq_s8(unk_277C44190, v22);
  v28 = vsubq_s8(unk_277C441A0, v22);
  v30 = *v10;
  v31 = v10[1];
  v29 = v10 + 2;
  v33 = *v11;
  v34 = v11[1];
  v32 = v11 + 2;
  v36 = *v12;
  v37 = v12[1];
  v35 = v12 + 2;
  v39 = *v13;
  v40 = v13[1];
  v38 = v13 + 2;
  v42 = *v15;
  v41 = v15 + 1;
  v44 = *v16;
  v43 = v16 + 1;
  v46 = *v17;
  v45 = v17 + 1;
  v48 = *v18;
  v47 = v18 + 1;
  v50 = *v14;
  v51 = v14[1];
  result = v14 + 2;
  v53 = *v19;
  v52 = v19 + 1;
  do
  {
    v54 = vaddq_s16(vaddq_s16(v53, vaddq_s16(v42, v44)), vaddq_s16(v46, v48));
    v55 = __OFSUB__(v7, 8);
    v7 -= 8;
    v56 = vrshlq_s16(v54, v21);
    v57 = vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_s32(vaddq_s32(vaddq_s32(v50, vaddq_s32(v30, v33)), vaddq_s32(v36, v39)), v23), v20), vmull_u16(*v56.i8, *v56.i8)), v9);
    v58 = vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_s32(vaddq_s32(vaddq_s32(v51, vaddq_s32(v31, v34)), vaddq_s32(v37, v40)), v23), v20), vmull_high_u16(v56, v56)), v9);
    v30 = *v29;
    v31 = v29[1];
    v29 += 2;
    v33 = *v32;
    v34 = v32[1];
    v32 += 2;
    *v57.i8 = vqrshrn_n_u16(vqshrn_high_n_u32(vqshrn_n_u32(v57, 0x10uLL), v58, 0x10uLL), 4uLL);
    v36 = *v35;
    v37 = v35[1];
    v35 += 2;
    v39 = *v38;
    v40 = v38[1];
    v38 += 2;
    v42 = *v41++;
    v44 = *v43++;
    v46 = *v45++;
    v48 = *v47++;
    v59 = vmovl_u8(vadd_s8(vadd_s8(vqtbl3_s8(*v26.i8, *v57.i8), vadd_s8(vcgt_u8(*v57.i8, 0xFEFEFEFEFEFEFEFELL), 0x505050505050505)), vadd_s8(vadd_s8(vcgt_u8(*v57.i8, 0x3737373737373737), vcgt_u8(*v57.i8, 0x4848484848484848)), vadd_s8(vcgt_u8(*v57.i8, 0x6565656565656565), vcgt_u8(*v57.i8, 0xA9A9A9A9A9A9A9A9)))));
    v50 = *result;
    v51 = result[1];
    result += 2;
    v60 = vrshrq_n_s32(vmulq_s32(vmull_u16(*v59.i8, *v54.i8), v25), 0xCuLL);
    v61 = vrshrq_n_s32(vmulq_s32(vmull_high_u16(v59, v54), v25), 0xCuLL);
    v53 = *v52++;
    *a3 = v60;
    a3[1] = v61;
    a3 += 2;
    *a4++ = vsubq_s16(v24, v59);
  }

  while (!((v7 < 0) ^ v55 | (v7 == 0)));
  return result;
}

uint64_t sub_27796CF68(uint64_t a1, int16x4_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, uint16x8_t a8)
{
  v8 = (a1 + 24);
  v9 = *a2;
  *a8.i8 = vld1_dup_s16(v8);
  v34 = a8.i16[0];
  v10 = vand_s8(v9, 0x3F003F003F003FLL);
  v11 = (a1 + 22);
  *a8.i8 = vadd_s16(vqdmulh_s16(v10, vand_s8(*a8.i8, 0x7F007F007F007F00)), vadd_s16(v10, *(&unk_27A719096 - 2 * a3)));
  v12 = vld1q_dup_s16(v11);
  v35[0] = a8;
  v13 = vcgeq_u16(v12, a8);
  v14 = __clz(__rbit32(vaddvq_s16(vandq_s8(v13, unk_27A7190B8))));
  if (*(a1 + 32))
  {
    v15 = a2->u16[a3];
    *a2 = vadd_s16(vsub_s16(v9, *v13.i8), vshl_s16(vsub_s16(vrhadd_u16(-1, *v13.i8), v9), vdup_n_s16(-4 - ((v15 >> 4) + !__CFADD__(~a3, 3)))));
    a2->i16[a3] = v15 - (v15 >> 5) + 1;
  }

  v16 = v35 + v14;
  v17 = *v16;
  v18 = *(a1 + 28);
  v19 = *(v16 - 1) - v17;
  v20 = __clz(v19) ^ 0x10;
  v21 = v18 >= v20;
  v22 = v18 - v20;
  v23 = (*(a1 + 16) - (v17 << 48)) << v20;
  *(a1 + 24) = v19 << v20;
  if (!v21)
  {
    v24 = *a1;
    v25 = *(a1 + 8);
    v26 = *a1 + 8;
    v27 = v26 > v25;
    v28 = v26 - v25;
    if (v27)
    {
      if (v24 >= v25)
      {
        v30 = __ROR8__(v22 - 16, v22 - 16);
        goto LABEL_7;
      }

      v32 = *(v25 - 8) >> (8 * v28);
      v33 = v25 - v24;
      v30 = bswap64(~v32) >> (v22 - 48);
      LODWORD(v29) = (48 - v22) >> 3;
      if (v29 >= v33)
      {
        v29 = v33;
      }

      else
      {
        v29 = v29;
      }
    }

    else
    {
      v29 = (48 - v22) >> 3;
      v30 = bswap64(~*v24) >> (v22 - 48);
    }

    v22 += 8 * v29;
    *a1 = v24 + v29;
LABEL_7:
    v23 |= v30;
  }

  *(a1 + 28) = v22;
  *(a1 + 16) = v23;
  return v14;
}

void sub_27796D0F8(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = vld1q_dup_s16(v3);
  v5.i64[0] = 0x7F007F007F007F00;
  v5.i64[1] = 0x7F007F007F007F00;
  v6.i64[0] = 0x3F003F003F003FLL;
  v6.i64[1] = 0x3F003F003F003FLL;
  v7 = vandq_s8(*a2, v6);
  v8 = (a1 + 22);
  v9 = vld1q_dup_s16(v8);
  v10 = vcgeq_u16(v9, vaddq_s16(vqdmulhq_s16(v7, vandq_s8(v4, v5)), vaddq_s16(v7, *(&unk_27A719096 - 2 * a3))));
  if (*(a1 + 32))
  {
    v11 = a2->u16[a3];
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    *a2 = vaddq_s16(vsubq_s16(*a2, v10), vshlq_s16(vsubq_s16(vrhaddq_u16(v12, v10), *a2), vdupq_n_s16(-4 - ((v11 >> 4) + !__CFADD__(~a3, 3)))));
    a2->i16[a3] = v11 - (v11 >> 5) + 1;
  }

  JUMPOUT(0x27796D024);
}

void sub_27796D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a2 + 16);
  v5 = vld1q_dup_s16(v3);
  v6.i64[0] = 0x7F007F007F007F00;
  v6.i64[1] = 0x7F007F007F007F00;
  v7 = (&unk_27A719096 - 2 * a3);
  v8.i64[0] = 0x3F003F003F003FLL;
  v8.i64[1] = 0x3F003F003F003FLL;
  v9 = vandq_s8(v5, v6);
  v10 = vandq_s8(*a2, v8);
  v11 = vandq_s8(v4, v8);
  v12 = (a1 + 22);
  v13 = vld1q_dup_s16(v12);
  v14 = vcgeq_u16(v13, vaddq_s16(vqdmulhq_s16(v10, v9), vaddq_s16(v10, *v7)));
  v15 = vcgeq_u16(v13, vaddq_s16(vqdmulhq_s16(v11, v9), vaddq_s16(v11, v7[1])));
  if (*(a1 + 32))
  {
    v16 = *(a2 + 2 * a3);
    v17.i64[0] = -1;
    v17.i64[1] = -1;
    v18 = vdupq_n_s16(-5 - (v16 >> 4));
    *a2 = vaddq_s16(vsubq_s16(*a2, v14), vshlq_s16(vsubq_s16(vrhaddq_u16(v17, v14), *a2), v18));
    *(a2 + 16) = vaddq_s16(vsubq_s16(v4, v15), vshlq_s16(vsubq_s16(vrhaddq_u16(v17, v15), v4), v18));
    *(a2 + 2 * a3) = v16 - (v16 >> 5) + 1;
  }

  JUMPOUT(0x27796D024);
}

uint64_t sub_27796D2A0(uint64_t a1, int8x8_t *a2, double a3, double a4, double a5, double a6, uint16x8_t a7)
{
  v7 = *a2;
  v8 = (a1 + 24);
  v9 = a2->u16[3];
  v10 = vld1_dup_s16(v8);
  v11 = (a1 + 22);
  v12 = -24;
  v13 = vand_s8(*a2, 0x3F003F003F003FLL);
  v14 = *(a1 + 32);
  v15 = vld1q_dup_s16(v11);
  v16 = *(a1 + 28);
  v17 = *(a1 + 16);
  do
  {
    *a7.i8 = vadd_s16(vqdmulh_s16(v13, vand_s8(v10, 0x7F007F007F007F00)), vadd_s16(v13, 0x40008000CLL));
    v39 = v10.i16[0];
    v18 = vcgeq_u16(v15, a7);
    v40[0] = a7;
    v19 = v12 + 5;
    v20 = __clz(__rbit32(vaddvq_s16(vandq_s8(v18, unk_27A7190B8))));
    if (v14)
    {
      v21 = vshl_s16(vsub_s16(vrhadd_u16(-1, *v18.i8), v7), vdup_n_s16(-5 - (v9 >> 4)));
      v9 = v9 - (v9 >> 5) + 1;
      v7 = vadd_s16(vsub_s16(v7, *v18.i8), v21);
      *a2 = v7;
      v13 = vand_s8(v7, 0x3F003F003F003FLL);
      a2->i16[3] = v9;
    }

    v22 = v40 + v20;
    v23 = *v22;
    v24 = *(v22 - 1) - v23;
    v25 = __clz(v24) ^ 0x10;
    v26 = v24 << v25;
    v27 = v16 >= v25;
    v16 -= v25;
    v17 = (v17 - (v23 << 48)) << v25;
    *(a1 + 24) = v26;
    v10 = vdup_n_s16(v26);
    if (!v27)
    {
      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = *a1 + 8;
      v31 = v30 > v29;
      v32 = v30 - v29;
      if (v31)
      {
        if (v28 >= v29)
        {
          v34 = __ROR8__(v16 - 16, v16 - 16);
          goto LABEL_8;
        }

        v37 = *(v29 - 8) >> (8 * v32);
        v38 = v29 - v28;
        v34 = bswap64(~v37) >> (v16 - 48);
        LODWORD(v33) = (48 - v16) >> 3;
        if (v33 >= v38)
        {
          v33 = v38;
        }

        else
        {
          v33 = v33;
        }
      }

      else
      {
        v33 = (48 - v16) >> 3;
        v34 = bswap64(~*v28) >> (v16 - 48);
      }

      v16 += 8 * v33;
      *a1 = v28 + v33;
LABEL_8:
      v17 |= v34;
    }

    v35 = 2 * v20 - 5;
    v27 = __CFADD__(v19, v35);
    v12 = v19 + v35;
    v15 = vdupq_n_s16(HIWORD(v17));
  }

  while (!v27);
  *(a1 + 28) = v16;
  *(a1 + 16) = v17;
  return (v12 + 30) >> 1;
}

void sub_27796D4C4(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*(a1 + 32))
  {
    v3 = *(a1 + 16) < ((((*(a1 + 24) >> 8) * (*a2 & 0xFFC0)) >> 7) + 4) << 48;
    *a2 = *a2 - v3 - ((*a2 - v3 - (v3 << 15)) >> ((*a2 >> 20) + 4));
    *(a2 + 1) = HIWORD(v2) - (v2 >> 21) + 1;
  }

  JUMPOUT(0x27796D04CLL);
}

const void **sub_27796D540(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_27796D588(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_27796D5C8()
{
  v3 = 0;
  v1 = 0;
  v2 = 8;
  sysctlbyname("hw.cachelinesize", &v1, &v2, 0, 0);
  v2 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0) && v2 == 4)
  {
    dword_280A721E0 = v3;
  }

  v2 = 4;
  sysctlbyname("hw.logicalcpu", &v3, &v2, 0, 0);
  v2 = 4;
  sysctlbyname("hw.perflevel0.physicalcpu", &v3, &v2, 0, 0);
  v2 = 4;
  result = sysctlbyname("hw.perflevel1.physicalcpu", &v3, &v2, 0, 0);
  dword_280A72960 |= 2u;
  return result;
}

uint64_t sub_27796D6C8()
{
  if (atomic_load_explicit(&qword_280A72968, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = v4;
    v4[0] = sub_27796D5C8;
    std::__call_once(&qword_280A72968, &v3, sub_27796D5BC);
  }

  return dword_280A721E0;
}

void sub_27796D738(void *a1)
{
  if (a1)
  {
    sub_27796D738(*a1);
    sub_27796D738(a1[1]);

    operator delete(a1);
  }
}

void sub_27796D784(const void **a1)
{
  if (a1)
  {
    sub_27796D784(*a1);
    sub_27796D784(a1[1]);
    sub_27796D924(a1 + 7);

    operator delete(a1);
  }
}

const void **sub_27796D7D8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_27796D80C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_27796D840(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_27796D874(uint64_t a1)
{
  v1 = *(a1 - 8);
  if (v1)
  {
    v2 = (a1 + 72 * v1 - 16);
    v3 = -72 * v1;
    do
    {
      v4 = *(v2 - 5);
      if (v4 && *v2)
      {
        (*(v4 + 32))();
        *v2 = 0;
        *(v2 - 6) = 0;
        *(v2 - 5) = 0;
        *(v2 - 8) = 0;
      }

      else
      {
        *(v2 - 8) = 1;
      }

      v2 -= 9;
      v3 += 72;
    }

    while (v3);
  }

  JUMPOUT(0x277CB13F0);
}

const void **sub_27796D924(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_27796D958(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_27796DAF4(uint64_t a1)
{
  if (*(a1 + 1) == 1)
  {
    dispatch_group_wait(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL);
    if (*(a1 + 1208))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "logic error: flushing frames remaining in queue...", v7, 2u);
      }

      std::mutex::lock((a1 + 1128));
      v2 = *(a1 + 1192);
      v3 = (a1 + 1200);
      if (v2 != (a1 + 1200))
      {
        do
        {
          VTEncoderSessionEmitEncodedTile();
          v4 = v2[1];
          if (v4)
          {
            do
            {
              v5 = v4;
              v4 = *v4;
            }

            while (v4);
          }

          else
          {
            do
            {
              v5 = v2[2];
              v6 = *v5 == v2;
              v2 = v5;
            }

            while (!v6);
          }

          v2 = v5;
        }

        while (v5 != v3);
      }

      sub_27796D784(*(a1 + 1200));
      *(a1 + 1192) = v3;
      *(a1 + 1200) = 0u;
      std::mutex::unlock((a1 + 1128));
    }
  }
}

void sub_27796DC84(_Unwind_Exception *exception_object)
{
  if (qword_280A72970)
  {
    qword_280A72978 = qword_280A72970;
    operator delete(qword_280A72970);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_27796DCA8()
{
  v0 = MEMORY[0x277CBF138];
  v1 = MEMORY[0x277CBF150];
  qword_280A72990 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  value = CFDictionaryCreate(0, 0, 0, 0, v0, v1);
  v2 = qword_280A72970;
  v3 = qword_280A72978;
  while (v2 != v3)
  {
    CFDictionaryAddValue(qword_280A72990, *v2++, value);
  }

  return sub_27796D540(&value);
}

void sub_27796DD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27796D540(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27796DD68(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_27796DD9C(CFTypeRef **a1, BOOL *a2)
{
  if (!**a1)
  {
    return 4294954394;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(**a1))
  {
    return 4294954394;
  }

  v5 = **a1;
  v6 = CFGetTypeID(v5);
  v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
  result = 0;
  *a2 = v7;
  return result;
}

uint64_t sub_27796DE38(CFTypeRef **a1, int *a2, int a3, int a4)
{
  if (!**a1)
  {
    return 4294954394;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(**a1))
  {
    return 4294954394;
  }

  v9 = *a2;
  v10 = **a1;
  v11 = CFGetTypeID(v10);
  if (v11 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v10, kCFNumberSInt32Type, a2);
  }

  result = 4294954394;
  if (v9 >= a3 && v9 <= a4)
  {
    result = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t sub_27796DEF4(CFTypeRef **a1, float *a2, float a3)
{
  if (!**a1)
  {
    return 4294954394;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(**a1))
  {
    return 4294954394;
  }

  v7 = *a2;
  valuePtr = *a2;
  v8 = **a1;
  v9 = CFGetTypeID(v8);
  if (v9 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v8, kCFNumberFloatType, &valuePtr);
    v7 = valuePtr;
  }

  if (v7 < 0.0 || v7 > a3)
  {
    return 4294954394;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t sub_27796DFB4(CFTypeRef **a1, CFTypeRef *a2)
{
  if (!**a1)
  {
    return 4294954394;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(**a1))
  {
    return 4294954394;
  }

  v5 = CFRetain(**a1);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = v5;
  v7 = 0;
  sub_27796D840(&v7);
  return 0;
}

uint64_t sub_27796E04C(CFTypeRef **a1, CFTypeRef *a2)
{
  if (!**a1)
  {
    return 4294954394;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(**a1))
  {
    return 4294954394;
  }

  v5 = CFRetain(**a1);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = v5;
  v7 = 0;
  sub_27796D80C(&v7);
  return 0;
}

void sub_27796E0E4(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  v50 = *MEMORY[0x277D85DE8];
  *(a1 + 1040) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v5 = *(a1 + 1112);
  if (!v5)
  {
    v7 = *(a1 + 1040);
LABEL_21:
    fprintf(*MEMORY[0x277D85DF8], "Unknown pixfmt %u\n", v7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 1040);
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown pixfmt %u", buf, 8u);
    }

    return;
  }

  v6 = DescriptionWithPixelFormatType;
  v7 = *(a1 + 1040);
  v8 = a1 + 1112;
  do
  {
    v9 = *(v5 + 28);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == a1 + 1112 || v7 < *(v8 + 28))
  {
    goto LABEL_21;
  }

  *(a1 + 1044) = *(v8 + 32);
  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x277CC4EF8]);
  if (Value)
  {
    *(a1 + 1052) = CFEqual(Value, *MEMORY[0x277CC4F00]) != 0;
  }

  v13 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4ED8]);
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberSInt32Type, (a1 + 1048));
  }

  *(a1 + 1055) = 0;
  v41 = 1;
  valuePtr = 1;
  v14 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4F70]);
  if (v14)
  {
    v15 = v14;
    if (CFArrayGetCount(v14) < 2)
    {
      *(a1 + 1055) = 1;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, 1);
      v17 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC4F60]);
      v18 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC4F78]);
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
      }

      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberSInt32Type, &v41);
      }

      *(a1 + 1053) = valuePtr > 1;
      *(a1 + 1054) = v41 > 1;
    }
  }

  else
  {
    *(a1 + 1055) = 1;
  }

  v20 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x277CC4B88], 0);
  cf = v20;
  if (v20 || (cf = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x277CC4B80], 0), *buf = 0, sub_27796D588(buf), (v20 = cf) != 0))
  {
    CFEqual(v20, *MEMORY[0x277CC4BB0]);
    CFEqual(cf, *MEMORY[0x277CC4BC0]);
  }

  v21 = *(a1 + 1064);
  if (v21)
  {
    *(a1 + 957) = 0;
    *(a1 + 984) = 3;
  }

  else if (*(a1 + 984) != 3)
  {
    v22 = 1;
    goto LABEL_32;
  }

  v22 = 0;
LABEL_32:
  if (*(a1 + 957) == 1)
  {
    v23 = (*(a1 + 956) & v22);
  }

  else
  {
    v23 = 2;
  }

  v24 = &dword_277BFCA38;
  v25 = 3;
  do
  {
    if (*v24 == v23)
    {
      memcpy((a1 + 40), v24, 0x300uLL);
      *(a1 + 900) = 0u;
      *(a1 + 916) = 0u;
      *(a1 + 928) = 0u;
      *(a1 + 804) = 0u;
      *(a1 + 820) = 0u;
      *(a1 + 836) = 0u;
      *(a1 + 852) = 0u;
      *(a1 + 868) = 0u;
      *(a1 + 884) = 0u;
      *(a1 + 808) = 0x8000000000;
      *(a1 + 816) = 4;
      *(a1 + 928) = 3;
      v28 = *(a1 + 1048);
      if (v28 != 8 && v28 != 10)
      {
        if (v28 == 12)
        {
          *(a1 + 72) = 0xC0000000CLL;
          *(a1 + 248) = *(a1 + 1055);
LABEL_46:
          v31 = 2;
          goto LABEL_51;
        }

        fprintf(*MEMORY[0x277D85DF8], "Unsupported bitdepth for pixel format %u\n", *(a1 + 1040));
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        v34 = *(a1 + 1040);
        *buf = 67109120;
        *&buf[4] = v34;
        v26 = MEMORY[0x277D86220];
        v27 = "Unsupported bitdepth for pixel format %u";
LABEL_65:
        v39 = 8;
LABEL_66:
        _os_log_impl(&dword_277934000, v26, OS_LOG_TYPE_ERROR, v27, buf, v39);
        goto LABEL_67;
      }

      *(a1 + 72) = v28;
      *(a1 + 76) = v28;
      v29 = *(a1 + 1055);
      *(a1 + 248) = v29;
      v30 = *(a1 + 1053);
      if (v30 == 1)
      {
        if ((*(a1 + 1054) & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else if (!v29)
      {
        if (*(a1 + 1054))
        {
          fprintf(*MEMORY[0x277D85DF8], "Unable to determine appropriate profile - bitdepth %d subsampling %d/%d %s\n", v28, v30, *(a1 + 1054), &unk_277C4B0B5);
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          v35 = *(a1 + 1048);
          v36 = *(a1 + 1053);
          v37 = *(a1 + 1054);
          if (*(a1 + 1055))
          {
            v38 = "(mono)";
          }

          else
          {
            v38 = &unk_277C4B0B5;
          }

          *buf = 67109890;
          *&buf[4] = v35;
          v44 = 1024;
          v45 = v36;
          v46 = 1024;
          v47 = v37;
          v48 = 2080;
          v49 = v38;
          v26 = MEMORY[0x277D86220];
          v27 = "Unable to determine appropriate profile - bitdepth %d subsampling %d/%d %s";
          v39 = 30;
          goto LABEL_66;
        }

        v31 = 1;
LABEL_51:
        *(a1 + 136) = *(a1 + 984);
        *(a1 + 52) = *(a1 + 1072);
        v32 = *(a1 + 964);
        if (v21)
        {
          v33 = 1;
        }

        else
        {
          v33 = *(a1 + 964);
        }

        if (!v21)
        {
          v32 = 1;
        }

        *(a1 + 44) = v33;
        *(a1 + 48) = v31;
        *(a1 + 4) = v32;
        operator new[]();
      }

      v31 = 0;
      goto LABEL_51;
    }

    v24 += 226;
    --v25;
  }

  while (v25);
  fprintf(*MEMORY[0x277D85DF8], "aom_codec_enc_config_default returned %d\n", 8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 8;
    v26 = MEMORY[0x277D86220];
    v27 = "aom_codec_enc_config_default returned %d";
    goto LABEL_65;
  }

LABEL_67:
  sub_27796D588(&cf);
}