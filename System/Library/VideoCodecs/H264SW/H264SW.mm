uint64_t sub_277282B08(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int a5)
{
  v5 = a5 + 4;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = *&a1->i8[a2];
    v9 = (a1 + a2 + a2);
    v10 = *v9;
    v11 = &v9->i8[a2];
    v12 = *&a3->i8[a4];
    v13 = (a3 + a4 + a4);
    v14 = *v13;
    v15 = &v13->i8[a4];
    v16 = vsubl_u8(*a1, *a3);
    v17 = vsubl_u8(*v8.i8, *v12.i8);
    v18 = vsubl_u8(*v10.i8, *v14.i8);
    v19 = vsubl_u8(*v11, *v15);
    v20 = vsubl_high_u8(*a1->i8, *a3->i8);
    v21 = vsubl_high_u8(v8, v12);
    v22 = vsubl_high_u8(v10, v14);
    v23 = vsubl_high_u8(*v11->i8, *v15->i8);
    v24 = vaddq_s16(v17, v16);
    v25 = vsubq_s16(v16, v17);
    v26 = vaddq_s16(v19, v18);
    v27 = vsubq_s16(v18, v19);
    v28 = vaddq_s16(v26, v24);
    v29 = vsubq_s16(v24, v26);
    v30 = vaddq_s16(v27, v25);
    v31 = vsubq_s16(v25, v27);
    v32 = vtrn1q_s16(v28, v30);
    v33 = vtrn2q_s16(v28, v30);
    v34 = vtrn1q_s16(v29, v31);
    v35 = vtrn2q_s16(v29, v31);
    v36 = vaddq_s16(v33, v32);
    v37 = vsubq_s16(v32, v33);
    v38 = vaddq_s16(v35, v34);
    v39 = vsubq_s16(v34, v35);
    v40 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v37, v39)), vabsq_s16(vtrn2q_s32(v37, v39))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v36, v38)), vabsq_s16(vtrn2q_s32(v36, v38))));
    v41 = vaddq_s16(v21, v20);
    v42 = vsubq_s16(v20, v21);
    v43 = vaddq_s16(v23, v22);
    v44 = vsubq_s16(v22, v23);
    v45 = vaddq_s16(v43, v41);
    v46 = vsubq_s16(v41, v43);
    v47 = vaddq_s16(v44, v42);
    v48 = vsubq_s16(v42, v44);
    v49 = vtrn1q_s16(v45, v47);
    v50 = vtrn2q_s16(v45, v47);
    v51 = vtrn1q_s16(v46, v48);
    v52 = vtrn2q_s16(v46, v48);
    v53 = vaddq_s16(v50, v49);
    v54 = vsubq_s16(v49, v50);
    v55 = vaddq_s16(v52, v51);
    v56 = vsubq_s16(v51, v52);
    v57 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v54, v56)), vabsq_s16(vtrn2q_s32(v54, v56))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v53, v55)), vabsq_s16(vtrn2q_s32(v53, v55))));
    v6 = vaddw_high_u16(vaddw_u16(v6, *v40.i8), v40);
    v7 = vaddw_high_u16(vaddw_u16(v7, *v57.i8), v57);
    v5 -= 4;
    a1 = (v11 + a2);
    a3 = (v15 + a4);
  }

  while (v5 > 4);
  return vaddvq_s32(vaddq_s32(v7, v6));
}

uint64_t sub_277282C80(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int a5)
{
  v5 = a5 + 4;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = (a1 + a2 + a2);
    v9 = *v8;
    v10 = (v8 + a2);
    v11 = (a3 + a4 + a4);
    v12 = *v11;
    v13 = (v11 + a4);
    v14 = vsubl_u8(*a1, *a3);
    v15 = vsubl_u8(*(a1 + a2), *(a3 + a4));
    v16 = vsubl_u8(v9, v12);
    v17 = vsubl_u8(*v10, *v13);
    v18 = vaddq_s16(v15, v14);
    v19 = vsubq_s16(v14, v15);
    v20 = vaddq_s16(v17, v16);
    v21 = vsubq_s16(v16, v17);
    v22 = vaddq_s16(v20, v18);
    v23 = vsubq_s16(v18, v20);
    v24 = vaddq_s16(v21, v19);
    v25 = vsubq_s16(v19, v21);
    v26 = vtrn1q_s16(v22, v24);
    v27 = vtrn2q_s16(v22, v24);
    v28 = vtrn1q_s16(v23, v25);
    v29 = vtrn2q_s16(v23, v25);
    v30 = vaddq_s16(v27, v26);
    v31 = vsubq_s16(v26, v27);
    v32 = vaddq_s16(v29, v28);
    v33 = vsubq_s16(v28, v29);
    v34 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v31, v33)), vabsq_s16(vtrn2q_s32(v31, v33))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v30, v32)), vabsq_s16(vtrn2q_s32(v30, v32))));
    v7 = vaddw_u16(v7, *v34.i8);
    v6 = vaddw_high_u16(v6, v34);
    v5 -= 4;
    a1 = (v10 + a2);
    a3 = (v13 + a4);
  }

  while (v5 > 4);
  return vaddvq_s32(vaddq_s32(v7, v6));
}

uint64_t sub_277282D74(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = 0;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a6 + 4;
  do
  {
    v10 = *&a1->i8[a2];
    v11 = (a1 + a2 + a2);
    v12 = *v11;
    v13 = &v11->i8[a2];
    v14 = (a3 + v6 + a5);
    v15 = *v14;
    v16 = (v14 + a5);
    v17 = (a4 + v6 + a5);
    v18 = *v17;
    v19 = (v17 + a5);
    v20 = vrhaddq_u8(*(a3 + v6), *(a4 + v6));
    v21 = vrhaddq_u8(v15, v18);
    v22 = vrhaddq_u8(*v16, *v19);
    v23 = vrhaddq_u8(*(v16 + a5), *(v19 + a5));
    v24 = vsubl_u8(*a1, *v20.i8);
    v25 = vsubl_u8(*v10.i8, *v21.i8);
    v26 = vsubl_u8(*v12.i8, *v22.i8);
    v27 = vsubl_u8(*v13, *v23.i8);
    v28 = vsubl_high_u8(*a1->i8, v20);
    v29 = vsubl_high_u8(v10, v21);
    v30 = vsubl_high_u8(v12, v22);
    v31 = vsubl_high_u8(*v13->i8, v23);
    v32 = vaddq_s16(v25, v24);
    v33 = vsubq_s16(v24, v25);
    v34 = vaddq_s16(v27, v26);
    v35 = vsubq_s16(v26, v27);
    v36 = vaddq_s16(v34, v32);
    v37 = vsubq_s16(v32, v34);
    v38 = vaddq_s16(v35, v33);
    v39 = vsubq_s16(v33, v35);
    v40 = vtrn1q_s16(v36, v38);
    v41 = vtrn2q_s16(v36, v38);
    v42 = vtrn1q_s16(v37, v39);
    v43 = vtrn2q_s16(v37, v39);
    v44 = vaddq_s16(v41, v40);
    v45 = vsubq_s16(v40, v41);
    v46 = vaddq_s16(v43, v42);
    v47 = vsubq_s16(v42, v43);
    v48 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v45, v47)), vabsq_s16(vtrn2q_s32(v45, v47))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v44, v46)), vabsq_s16(vtrn2q_s32(v44, v46))));
    v49 = vaddq_s16(v29, v28);
    v50 = vsubq_s16(v28, v29);
    v51 = vaddq_s16(v31, v30);
    v52 = vsubq_s16(v30, v31);
    v53 = vaddq_s16(v51, v49);
    v54 = vsubq_s16(v49, v51);
    v55 = vaddq_s16(v52, v50);
    v56 = vsubq_s16(v50, v52);
    v57 = vtrn1q_s16(v53, v55);
    v58 = vtrn2q_s16(v53, v55);
    v59 = vtrn1q_s16(v54, v56);
    v60 = vtrn2q_s16(v54, v56);
    v61 = vaddq_s16(v58, v57);
    v62 = vsubq_s16(v57, v58);
    v63 = vaddq_s16(v60, v59);
    v64 = vsubq_s16(v59, v60);
    v65 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v62, v64)), vabsq_s16(vtrn2q_s32(v62, v64))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v61, v63)), vabsq_s16(vtrn2q_s32(v61, v63))));
    v7 = vaddw_high_u16(vaddw_u16(v7, *v48.i8), v48);
    v8 = vaddw_high_u16(vaddw_u16(v8, *v65.i8), v65);
    v9 -= 4;
    v6 += 4 * a5;
    a1 = (v13 + a2);
  }

  while (v9 > 4);
  return vaddvq_s32(vaddq_s32(v8, v7));
}

uint64_t sub_277282F20(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = 0;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a6 + 4;
  do
  {
    v10 = (a1 + a2 + a2);
    v11 = *v10;
    v12 = (v10 + a2);
    v13 = (a3 + v6 + a5);
    v14 = *v13;
    v15 = (v13 + a5);
    v16 = (a4 + v6 + a5);
    v17 = *v16;
    v18 = (v16 + a5);
    v19 = vsubl_u8(*a1, vrhadd_u8(*(a3 + v6), *(a4 + v6)));
    v20 = vsubl_u8(*(a1 + a2), vrhadd_u8(v14, v17));
    v21 = vsubl_u8(v11, vrhadd_u8(*v15, *v18));
    v22 = vsubl_u8(*v12, vrhadd_u8(*(v15 + a5), *(v18 + a5)));
    v23 = vaddq_s16(v20, v19);
    v24 = vsubq_s16(v19, v20);
    v25 = vaddq_s16(v22, v21);
    v26 = vsubq_s16(v21, v22);
    v27 = vaddq_s16(v25, v23);
    v28 = vsubq_s16(v23, v25);
    v29 = vaddq_s16(v26, v24);
    v30 = vsubq_s16(v24, v26);
    v31 = vtrn1q_s16(v27, v29);
    v32 = vtrn2q_s16(v27, v29);
    v33 = vtrn1q_s16(v28, v30);
    v34 = vtrn2q_s16(v28, v30);
    v35 = vaddq_s16(v32, v31);
    v36 = vsubq_s16(v31, v32);
    v37 = vaddq_s16(v34, v33);
    v38 = vsubq_s16(v33, v34);
    v39 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v36, v38)), vabsq_s16(vtrn2q_s32(v36, v38))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v35, v37)), vabsq_s16(vtrn2q_s32(v35, v37))));
    v8 = vaddw_u16(v8, *v39.i8);
    v7 = vaddw_high_u16(v7, v39);
    v9 -= 4;
    v6 += 4 * a5;
    a1 = (v12 + a2);
  }

  while (v9 > 4);
  return vaddvq_s32(vaddq_s32(v8, v7));
}

__int16 sub_277283048@<H0>(uint8x16_t *a1@<X0>, uint8x16_t *a2@<X1>, int a3@<W2>, _WORD *a4@<X3>)
{
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = (a2 + a3);
  v8 = *v7;
  v9 = (v7 + a3);
  v10 = *v9;
  v11 = (v9 + a3);
  v12 = *v11;
  v13 = (v11 + a3);
  v14 = vabdl_u8(*v4.i8, *v8.i8);
  v15 = vabdl_high_u8(v4, v8);
  v17 = a1[4];
  v16 = a1[5];
  v19 = a1[6];
  v18 = a1[7];
  v20 = *v13;
  v21 = (v13 + a3);
  v22 = *v21;
  v23 = (v21 + a3);
  v24 = *v23;
  v25 = (v23 + a3);
  v26 = *v25;
  v27 = (v25 + a3);
  v29 = a1[8];
  v28 = a1[9];
  v31 = a1[10];
  v30 = a1[11];
  v32 = *v27;
  v33 = (v27 + a3);
  v34 = *v33;
  v35 = (v33 + a3);
  v36 = *v35;
  v37 = (v35 + a3);
  v38 = *v37;
  v39 = (v37 + a3);
  v40 = vabdl_u8(*v28.i8, *v34.i8);
  v41 = vabdl_high_u8(v28, v34);
  v43 = a1[12];
  v42 = a1[13];
  v45 = a1[14];
  v44 = a1[15];
  v46 = *v39;
  v47 = (v39 + a3);
  v48 = *v47;
  v49 = &v47->i8[a3];
  v50 = *&v49->i8[a3];
  v51 = vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(v15, *a1, *a2), v6, v10), v5, v12), v17, v20), v16, v22), v19, v24), v18, v26);
  v52 = vabal_u8(vabal_u8(vabal_u8(vabal_u8(vabal_u8(vabal_u8(vabal_u8(v40, *v29.i8, *v32.i8), *v31.i8, *v36.i8), *v30.i8, *v38.i8), *v43.i8, *v46.i8), *v42.i8, *v48.i8), *v45.i8, *v49), *v44.i8, *v50.i8);
  v53 = vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabal_high_u8(v41, v29, v32), v31, v36), v30, v38), v43, v46), v42, v48), v45, *v49->i8), v44, v50);
  v14.i16[0] = vaddvq_s16(vabal_u8(vabal_u8(vabal_u8(vabal_u8(vabal_u8(vabal_u8(vabal_u8(v14, *a1->i8, *a2->i8), *v6.i8, *v10.i8), *v5.i8, *v12.i8), *v17.i8, *v20.i8), *v16.i8, *v22.i8), *v19.i8, *v24.i8), *v18.i8, *v26.i8));
  a4[12] = v14.i16[0];
  v51.i16[0] = vaddvq_s16(v51);
  a4[13] = v51.i16[0];
  v54 = v51.i16[0];
  v51.i16[0] = vaddvq_s16(v52);
  a4[14] = v51.i16[0];
  v55 = v51.i16[0];
  result = vaddvq_s16(v53);
  a4[15] = result;
  a4[8] = v55 + v14.i16[0];
  a4[9] = result + v54;
  a4[4] = v54 + v14.i16[0];
  a4[5] = result + v55;
  *a4 = result + v54 + v55 + v14.i16[0];
  return result;
}

uint64_t sub_2772831DC(uint64_t result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = &byte_2773B3119;
  do
  {
    v5 = (*v4 + ((*(v4 - 1) * result) >> 4));
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = (*v4 + ((*(v4 - 1) * result) >> 4));
    }

    if (v6 >= 126)
    {
      LOBYTE(v6) = 126;
    }

    v7 = 2 * v6;
    v8 = v7 ^ 0x7E;
    v9 = v7 - 127;
    if (v5 >= 64)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    *(a3 + v3++) = v10;
    v4 += 2;
  }

  while (v3 != 11);
  v11 = 0;
  v12 = &unk_2773B31BC + 26 * a2 + 1;
  do
  {
    v13 = (*v12 + ((*(v12 - 1) * result) >> 4));
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (*v12 + ((*(v12 - 1) * result) >> 4));
    }

    if (v14 >= 126)
    {
      LOBYTE(v14) = 126;
    }

    v15 = 2 * v14;
    v16 = v15 ^ 0x7E;
    v17 = v15 - 127;
    if (v13 >= 64)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    *(a3 + 11 + v11++) = v18;
    v12 += 2;
  }

  while (v11 != 13);
  v19 = 0;
  v20 = vdupq_n_s16(result);
  v21 = &unk_2773B320A + 32 * a2;
  v87 = vld2q_s8(v21);
  v22 = vmovl_high_s8(v87.val[0]);
  v23 = vmovl_s8(*v87.val[0].i8);
  v24 = vmull_s16(*v20.i8, *v23.i8);
  v25 = vmull_s16(*v20.i8, *v22.i8);
  v26 = vmull_high_s16(v20, v22);
  v27 = vshrq_n_u32(vmull_high_s16(v20, v23), 4uLL);
  v28 = vmovl_s8(*v87.val[1].i8);
  v87.val[0] = vmovl_high_s8(v87.val[1]);
  v87.val[1] = vsraq_n_u32(vmovl_u16(*v87.val[0].i8), v25, 4uLL);
  v87.val[0] = vaddw_high_u16(vshrq_n_u32(v26, 4uLL), v87.val[0]);
  v29 = vshrq_n_s32(vshlq_n_s32(vaddw_high_u16(v27, v28), 0x10uLL), 0x10uLL);
  v30 = vshrq_n_s32(vshlq_n_s32(vsraq_n_u32(vmovl_u16(*v28.i8), v24, 4uLL), 0x10uLL), 0x10uLL);
  v87.val[0] = vshrq_n_s32(vshlq_n_s32(v87.val[0], 0x10uLL), 0x10uLL);
  v87.val[1] = vshrq_n_s32(vshlq_n_s32(v87.val[1], 0x10uLL), 0x10uLL);
  v28.i64[0] = 0x100000001;
  v28.i64[1] = 0x100000001;
  v31 = vmaxq_s32(v87.val[1], v28);
  v32 = vmaxq_s32(v87.val[0], v28);
  v33 = vmaxq_s32(v30, v28);
  v34.i64[0] = 0x7E0000007ELL;
  v34.i64[1] = 0x7E0000007ELL;
  v35 = vminq_s32(vmaxq_s32(v29, v28), v34);
  v36 = vminq_s32(v33, v34);
  v37 = vminq_s32(v32, v34);
  v38 = vminq_s32(v31, v34);
  v34.i64[0] = 0x4000000040;
  v34.i64[1] = 0x4000000040;
  v39 = vuzp1q_s8(vuzp1q_s16(vcgtq_s32(v34, v30), vcgtq_s32(v34, v29)), vuzp1q_s16(vcgtq_s32(v34, v87.val[1]), vcgtq_s32(v34, v87.val[0])));
  v87.val[0] = vuzp1q_s8(vuzp1q_s16(v36, v35), vuzp1q_s16(v38, v37));
  v87.val[0] = vaddq_s8(v87.val[0], v87.val[0]);
  v87.val[1].i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v87.val[1].i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v30.i64[0] = 0x8181818181818181;
  v30.i64[1] = 0x8181818181818181;
  *(a3 + 24) = vbslq_s8(v39, veorq_s8(v87.val[0], v87.val[1]), vaddq_s8(v87.val[0], v30));
  v40 = &unk_2773B326A + 28 * a2 + 1;
  do
  {
    v41 = (*v40 + ((*(v40 - 1) * result) >> 4));
    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = (*v40 + ((*(v40 - 1) * result) >> 4));
    }

    if (v42 >= 126)
    {
      LOBYTE(v42) = 126;
    }

    v43 = 2 * v42;
    v44 = v43 ^ 0x7E;
    v45 = v43 - 127;
    if (v41 >= 64)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    *(a3 + 40 + v19++) = v46;
    v40 += 2;
  }

  while (v19 != 14);
  v47 = 0;
  v48 = &unk_2773B32BE + 12 * a2 + 1;
  do
  {
    v49 = (*v48 + ((*(v48 - 1) * result) >> 4));
    if (v49 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = (*v48 + ((*(v48 - 1) * result) >> 4));
    }

    if (v50 >= 126)
    {
      LOBYTE(v50) = 126;
    }

    v51 = 2 * v50;
    v52 = v51 ^ 0x7E;
    v53 = v51 - 127;
    if (v49 >= 64)
    {
      v54 = v53;
    }

    else
    {
      v54 = v52;
    }

    *(a3 + 54 + v47++) = v54;
    v48 += 2;
  }

  while (v47 != 6);
  v55 = 0;
  v56 = &byte_2773B312F;
  do
  {
    v57 = (*v56 + ((*(v56 - 1) * result) >> 4));
    if (v57 <= 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = (*v56 + ((*(v56 - 1) * result) >> 4));
    }

    if (v58 >= 126)
    {
      LOBYTE(v58) = 126;
    }

    v59 = 2 * v58;
    v60 = v59 ^ 0x7E;
    v61 = v59 - 127;
    if (v57 >= 64)
    {
      v62 = v61;
    }

    else
    {
      v62 = v60;
    }

    *(a3 + 60 + v55++) = v62;
    v56 += 2;
  }

  while (v55 != 10);
  v63 = &dword_280A6FF43 + 658 * a2 + 1;
  for (i = 70; i != 399; ++i)
  {
    v65 = (*v63 + ((*(v63 - 1) * result) >> 4));
    if (v65 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = (*v63 + ((*(v63 - 1) * result) >> 4));
    }

    if (v66 >= 126)
    {
      LOBYTE(v66) = 126;
    }

    v67 = 2 * v66;
    v68 = v67 ^ 0x7E;
    v69 = v67 - 127;
    if (v65 >= 64)
    {
      v70 = v69;
    }

    else
    {
      v70 = v68;
    }

    *(a3 + i) = v70;
    v63 += 2;
  }

  v71 = 0;
  v72 = &unk_2773B32E2 + 6 * a2 + 1;
  do
  {
    v73 = (*v72 + ((*(v72 - 1) * result) >> 4));
    if (v73 <= 1)
    {
      v74 = 1;
    }

    else
    {
      v74 = (*v72 + ((*(v72 - 1) * result) >> 4));
    }

    if (v74 >= 126)
    {
      LOBYTE(v74) = 126;
    }

    v75 = 2 * v74;
    v76 = v75 ^ 0x7E;
    v77 = v75 - 127;
    if (v73 >= 64)
    {
      v78 = v77;
    }

    else
    {
      v78 = v76;
    }

    *(a3 + 399 + v71++) = v78;
    v72 += 2;
  }

  while (v71 != 3);
  v79 = 0;
  v80 = &unk_2773B32F4 + 116 * a2 + 1;
  do
  {
    v81 = (*v80 + ((*(v80 - 1) * result) >> 4));
    if (v81 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = (*v80 + ((*(v80 - 1) * result) >> 4));
    }

    if (v82 >= 126)
    {
      LOBYTE(v82) = 126;
    }

    v83 = 2 * v82;
    v84 = v83 ^ 0x7E;
    v85 = v83 - 127;
    if (v81 >= 64)
    {
      v86 = v85;
    }

    else
    {
      v86 = v84;
    }

    *(a3 + 402 + v79++) = v86;
    v80 += 2;
  }

  while (v79 != 58);
  return result;
}

uint64_t sub_277283608(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B211C(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B1D9C(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277283688(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B229C(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B1EB4(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277283708(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B23D4(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B1F7C(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277283788(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B2534(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B2074(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

int16x4_t sub_277283908(int a1, uint64_t a2, int16x4_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = *(a2 + 56);
  if (!sub_2773A3768(a1, a2, &v9, &v7))
  {
    return sub_2772B2670(v5, 16, v9, *(&v9 + 1), v10, *(&v10 + 1), v4, a3);
  }

  a3->i16[0] = sub_2772B211C(v5, 16, v9, v7, v4);
  a3->i16[1] = sub_2772B211C(v5, 16, *(&v9 + 1), *(&v7 + 1), v4);
  a3->i16[2] = sub_2772B211C(v5, 16, v10, v8, v4);
  a3->i16[3] = sub_2772B211C(v5, 16, *(&v10 + 1), *(&v8 + 1), v4);
  return result;
}

int16x4_t sub_277283A1C(int a1, uint64_t a2, int16x4_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = *(a2 + 56);
  if (!sub_2773A3768(a1, a2, &v9, &v7))
  {
    return sub_2772B27D4(v5, 16, v9, *(&v9 + 1), v10, *(&v10 + 1), v4, a3);
  }

  a3->i16[0] = sub_2772B229C(v5, 16, v9, v7, v4);
  a3->i16[1] = sub_2772B229C(v5, 16, *(&v9 + 1), *(&v7 + 1), v4);
  a3->i16[2] = sub_2772B229C(v5, 16, v10, v8, v4);
  a3->i16[3] = sub_2772B229C(v5, 16, *(&v10 + 1), *(&v8 + 1), v4);
  return result;
}

int16x4_t sub_277283B30(int a1, uint64_t a2, int16x4_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = *(a2 + 56);
  if (!sub_2773A3768(a1, a2, &v9, &v7))
  {
    return sub_2772B2938(v5, 16, v9, *(&v9 + 1), v10, *(&v10 + 1), v4, a3);
  }

  a3->i16[0] = sub_2772B23D4(v5, 16, v9, v7, v4);
  a3->i16[1] = sub_2772B23D4(v5, 16, *(&v9 + 1), *(&v7 + 1), v4);
  a3->i16[2] = sub_2772B23D4(v5, 16, v10, v8, v4);
  a3->i16[3] = sub_2772B23D4(v5, 16, *(&v10 + 1), *(&v8 + 1), v4);
  return result;
}

int16x4_t sub_277283C44(int a1, uint64_t a2, int16x4_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = *(a2 + 56);
  if (!sub_2773A3768(a1, a2, &v9, &v7))
  {
    return sub_2772B2A64(v5, 16, v9, *(&v9 + 1), v10, *(&v10 + 1), v4, a3);
  }

  a3->i16[0] = sub_2772B2534(v5, 16, v9, v7, v4);
  a3->i16[1] = sub_2772B2534(v5, 16, *(&v9 + 1), *(&v7 + 1), v4);
  a3->i16[2] = sub_2772B2534(v5, 16, v10, v8, v4);
  a3->i16[3] = sub_2772B2534(v5, 16, *(&v10 + 1), *(&v8 + 1), v4);
  return result;
}

int16x4_t sub_277283D58(uint8x8_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  sub_2772B2730(*(a2 + 56), 16, *a1, a1[1], a1[2], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];

  return sub_2772B2730(v7, 16, v8, v9, v10, v6, (a3 + 6));
}

int16x4_t sub_277283DD0(uint8x8_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  sub_2772B2894(*(a2 + 56), 16, *a1, a1[1], a1[2], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];

  return sub_2772B2894(v7, 16, v8, v9, v10, v6, (a3 + 6));
}

int16x4_t sub_277283E48(uint8x8_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  sub_2772B29D8(*(a2 + 56), 16, *a1, a1[1], a1[2], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];

  return sub_2772B29D8(v7, 16, v8, v9, v10, v6, (a3 + 6));
}

int16x4_t sub_277283EC0(uint8x8_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  sub_2772B2B04(*(a2 + 56), 16, *a1, a1[1], a1[2], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];

  return sub_2772B2B04(v7, 16, v8, v9, v10, v6, (a3 + 6));
}

int16x4_t sub_277283F38(uint8x8_t **a1, uint64_t a2, int16x4_t *a3)
{
  v6 = *(a2 + 16);
  sub_2772B2670(*(a2 + 56), 16, *a1, a1[1], a1[2], a1[3], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];

  return sub_2772B2670(v7, 16, v8, v9, v10, v11, v6, a3 + 1);
}

int16x4_t sub_277283FB0(uint8x8_t **a1, uint64_t a2, int16x4_t *a3)
{
  v6 = *(a2 + 16);
  sub_2772B27D4(*(a2 + 56), 16, *a1, a1[1], a1[2], a1[3], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];

  return sub_2772B27D4(v7, 16, v8, v9, v10, v11, v6, a3 + 1);
}

int16x4_t sub_277284028(uint8x8_t **a1, uint64_t a2, int16x4_t *a3)
{
  v6 = *(a2 + 16);
  sub_2772B2938(*(a2 + 56), 16, *a1, a1[1], a1[2], a1[3], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];

  return sub_2772B2938(v7, 16, v8, v9, v10, v11, v6, a3 + 1);
}

int16x4_t sub_2772840A0(uint8x8_t **a1, uint64_t a2, int16x4_t *a3)
{
  v6 = *(a2 + 16);
  sub_2772B2A64(*(a2 + 56), 16, *a1, a1[1], a1[2], a1[3], v6, a3);
  v7 = *(a2 + 56);
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];

  return sub_2772B2A64(v7, 16, v8, v9, v10, v11, v6, a3 + 1);
}

uint64_t sub_277284118(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B1844(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B1824(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277284198(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B184C(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B182C(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277284218(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B1854(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B1834(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277284298(int a1, uint64_t a2, _WORD *a3)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  v7 = 0;
  v8 = 0;
  if (sub_2773A35DC(a1, a2, &v8, &v7))
  {
    result = sub_2772B185C(v4, 16, v8, v7, v5);
  }

  else
  {
    result = sub_2772B183C(v4, 16, v8, v5);
  }

  *a3 = result;
  return result;
}

uint64_t sub_277284318(uint64_t result, int a2, _DWORD *a3, uint64_t a4, _WORD *a5, char a6, char a7, int32x2_t a8, int32x2_t a9, int32x2_t a10, int32x2_t a11, int32x2_t a12, int32x2_t a13)
{
  v13 = *(*(result + 40) + 1);
  v14 = *(result + 48) + 16 * a2;
  v15 = *(v14 + 24);
  v16 = *(v14 + 25);
  a11.i16[0] = *a4;
  a11.i16[2] = *(a4 + 2);
  a8.i16[0] = *(a4 + 4);
  a8.i16[2] = *(a4 + 6);
  if (!*a3 || a3[1] || a3[2])
  {
    a9.i16[0] = *(a4 + 20);
    a9.i16[2] = *(a4 + 22);
    a10.i16[0] = *(a4 + 36);
    a10.i16[2] = *(a4 + 38);
    if (a6)
    {
LABEL_19:
      if ((a7 & 1) != 0 || v13 != 5 && v13 != 3)
      {
        return result;
      }

      v21 = *(a4 + 25);
      v22 = *(a4 + 41);
      if (*(a4 + 9) == v16)
      {
        if (v21 != v16 && v22 != v16)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (v21 == v16)
      {
        if (v22 != v16)
        {
          a8 = a9;
LABEL_32:
          a5[2] = a8.i16[0];
          a5[3] = a8.i16[2];
          return result;
        }
      }

      else if (v22 == v16)
      {
        a8 = a10;
        goto LABEL_32;
      }

LABEL_31:
      v23 = vshr_n_s32(vshl_n_s32(a9, 0x10uLL), 0x10uLL);
      v24 = vshr_n_s32(vshl_n_s32(a8, 0x10uLL), 0x10uLL);
      a8 = vmin_s32(vmax_s32(vmin_s32(v24, v23), vshr_n_s32(vshl_n_s32(a10, 0x10uLL), 0x10uLL)), vmax_s32(v24, v23));
      goto LABEL_32;
    }

    a13.i16[0] = *(a4 + 16);
    a13.i16[2] = *(a4 + 18);
    a12.i16[0] = *(a4 + 32);
    a12.i16[2] = *(a4 + 34);
    v17 = *(a4 + 24);
    v18 = *(a4 + 40);
    if (*(a4 + 8) == v15)
    {
      if (v17 != v15 && v18 != v15)
      {
        a12 = a11;
LABEL_18:
        *a5 = a12.i16[0];
        a5[1] = a12.i16[2];
        goto LABEL_19;
      }
    }

    else if (v17 == v15)
    {
      if (v18 != v15)
      {
        a12 = a13;
        goto LABEL_18;
      }
    }

    else if (v18 == v15)
    {
      goto LABEL_18;
    }

    v19 = vshr_n_s32(vshl_n_s32(a13, 0x10uLL), 0x10uLL);
    v20 = vshr_n_s32(vshl_n_s32(a11, 0x10uLL), 0x10uLL);
    a12 = vmin_s32(vmax_s32(vmin_s32(v20, v19), vshr_n_s32(vshl_n_s32(a12, 0x10uLL), 0x10uLL)), vmax_s32(v20, v19));
    goto LABEL_18;
  }

  if ((a6 & 1) == 0)
  {
    *a5 = a11.i16[0];
    a5[1] = a11.i16[2];
  }

  if ((a7 & 1) == 0)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_2772844E4(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, _WORD *a5, int32x2_t a6, int32x2_t a7, int32x2_t a8, int32x2_t a9, int32x2_t a10)
{
  v10 = *(a1 + 48);
  v11 = (v10 + 16 * a2);
  if (v11[31] == 3)
  {
    a2 = 0;
    v12 = 4112;
  }

  else
  {
    v13 = *(v10 + 26);
    if (v13 >= 0x103)
    {
      v13 = 259;
    }

    v12 = word_280A6AB60[40 * v13 + 24 + a2];
  }

  v14 = *(*(a1 + 40) + 1);
  v15 = v11[24];
  v17 = *a3;
  v16 = a3[1];
  v18 = a3[2];
  a8.i16[0] = *a4;
  a8.i16[2] = *(a4 + 2);
  a9.i16[0] = *(a4 + 32);
  a9.i16[2] = *(a4 + 34);
  a6.i16[0] = *(a4 + 4);
  a7.i16[0] = *(a4 + 36);
  result = *(a4 + 8);
  v20 = *(a4 + 40);
  if (v12 == 4104)
  {
    if (!a2 && result == v15)
    {
      goto LABEL_22;
    }

    if (a2 == 1 && v20 == v15)
    {
      goto LABEL_11;
    }

    a10.i16[0] = *(a4 + 16);
    a10.i16[2] = *(a4 + 18);
    v21 = *(a4 + 24);
LABEL_19:
    if (!v17 || v16 || v18)
    {
      if (result == v15)
      {
        if (v21 != v15 && v20 != v15)
        {
          goto LABEL_22;
        }
      }

      else if (v21 == v15)
      {
        if (v20 != v15)
        {
          goto LABEL_23;
        }
      }

      else if (v20 == v15)
      {
LABEL_11:
        a10 = a9;
        goto LABEL_23;
      }

      v27 = vshr_n_s32(vshl_n_s32(a10, 0x10uLL), 0x10uLL);
      v28 = vshr_n_s32(vshl_n_s32(a8, 0x10uLL), 0x10uLL);
      v29 = vmin_s32(v28, v27);
      a8 = vmax_s32(v28, v27);
      a10 = vmin_s32(vmax_s32(v29, vshr_n_s32(vshl_n_s32(a9, 0x10uLL), 0x10uLL)), a8);
      goto LABEL_23;
    }

LABEL_22:
    a10 = a8;
    goto LABEL_23;
  }

  a10.i16[0] = *(a4 + 16);
  a10.i16[2] = *(a4 + 18);
  v21 = *(a4 + 24);
  if (v12 != 2064)
  {
    goto LABEL_19;
  }

  if (a2 || v21 != v15)
  {
    if (a2 == 1 && result == v15)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_23:
  a6.i16[2] = *(a4 + 6);
  a7.i16[2] = *(a4 + 38);
  v22 = v11[25];
  *a5 = a10.i16[0];
  a5[1] = a10.i16[2];
  if (v14 == 5 || v14 == 3)
  {
    v23 = *(a4 + 9);
    v24 = *(a4 + 41);
    if (v12 == 4104)
    {
      if (!a2 && v23 == v22)
      {
        goto LABEL_51;
      }

      if (a2 == 1 && v24 == v22)
      {
        goto LABEL_30;
      }

      a8.i16[0] = *(a4 + 20);
      a8.i16[2] = *(a4 + 22);
      v25 = *(a4 + 25);
    }

    else
    {
      a8.i16[0] = *(a4 + 20);
      a8.i16[2] = *(a4 + 22);
      v25 = *(a4 + 25);
      if (v12 == 2064)
      {
        if (!a2 && v25 == v22)
        {
          goto LABEL_52;
        }

        if (a2 == 1 && v23 == v22)
        {
          goto LABEL_51;
        }
      }
    }

    if (v17 && !v16 && !v18)
    {
LABEL_51:
      a8 = a6;
      goto LABEL_52;
    }

    if (v23 == v22)
    {
      if (v25 != v22 && v24 != v22)
      {
        goto LABEL_51;
      }
    }

    else if (v25 == v22)
    {
      if (v24 != v22)
      {
        goto LABEL_52;
      }
    }

    else if (v24 == v22)
    {
LABEL_30:
      a8 = a7;
LABEL_52:
      a5[2] = a8.i16[0];
      a5[3] = a8.i16[2];
      return result;
    }

    v30 = vshr_n_s32(vshl_n_s32(a8, 0x10uLL), 0x10uLL);
    v31 = vshr_n_s32(vshl_n_s32(a6, 0x10uLL), 0x10uLL);
    a8 = vmin_s32(vmax_s32(vmin_s32(v31, v30), vshr_n_s32(vshl_n_s32(a7, 0x10uLL), 0x10uLL)), vmax_s32(v31, v30));
    goto LABEL_52;
  }

  return result;
}

uint64_t sub_2772847A8(uint64_t result, int a2, unsigned int a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 48);
  v7 = *(result + 187);
  v8 = *(result + 216);
  v9 = *(result + 296);
  v10 = *(result + 1424480);
  v11 = *(v10 + 14);
  v12 = *(v10 + 10);
  if (v12 >= 0x103)
  {
    v12 = 259;
  }

  v13 = (v10 + 16 * *(&word_280A6AB60[40 * v12] + a3));
  v14 = *(v13 + 8);
  if (v14 == 32)
  {
    v14 = *(v13 + 9);
    if (v14 == 32)
    {
      v15 = *(result + 224);
      v16 = *v15;
      v17 = *(result + 31);
      v18 = *v15;
      if (v17 == 2)
      {
        v18 = *v15;
        if (*(result + 16))
        {
          v18 = *v15;
          if (!*(v16 + 38))
          {
            v18 = *(v16 + 1352);
          }
        }
      }

      i = 0;
      j = 0;
      LOWORD(v21) = 0;
      v22 = 0;
      LOBYTE(v14) = 0;
      v23 = **(result + 232);
      goto LABEL_99;
    }

    v21 = v13[1];
    v24 = *(v13 + 13);
    if (v24 <= 0x50 && v9 != 0)
    {
      i = *(*(result + 288) + *(v13 + 13));
      v18 = *(*(result + 304) + 8 * *(v13 + 13));
      if (!*(v8 + 1362) || v11 != 2 || (v14 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v26 = *(result + 240);
    v29 = *(result + 264);
    i = 0;
    if (v26)
    {
      while (*(*(result + 272) + i) != v24)
      {
        if (v26 <= ++i)
        {
          for (i = 0; i < v26; ++i)
          {
            if (*(v29 + i) == v24)
            {
              break;
            }
          }

          break;
        }
      }
    }

    if (v26 <= i)
    {
      i = 32;
    }

    if (*(v13 + 13) && (v33 = *(result + 256), *(v33 + 48) > v24 - 1))
    {
      v18 = *(*(v33 + 40) + 8 * (v24 - 1));
    }

    else
    {
      v18 = 0;
    }

    if (*(v8 + 1362) && v11 == 2 && (v14 & 1) != 0 && (a6 & 1) == 0 && *(v18 + 33))
    {
      if (v26)
      {
        v34 = 0;
        while (*(*(result + 280) + v34) != v24)
        {
          ++v34;
          j = 32;
          if (v26 <= v34)
          {
            goto LABEL_98;
          }
        }

        j = v34;
        goto LABEL_98;
      }

LABEL_172:
      j = 32;
      goto LABEL_98;
    }

    if (v26)
    {
      v32 = 0;
      while (*(v29 + v32) != v24)
      {
        if (v26 <= ++v32)
        {
          for (j = 0; j < v26; ++j)
          {
            if (*(*(result + 280) + j) == v24)
            {
              break;
            }
          }

          goto LABEL_96;
        }
      }

LABEL_95:
      j = v32;
LABEL_96:
      if (v26 <= j)
      {
        j = 32;
      }

      goto LABEL_98;
    }

    goto LABEL_94;
  }

  v21 = *v13;
  v24 = *(v13 + 12);
  if (v24 <= 0x50 && v9 != 0)
  {
    i = *(*(result + 288) + *(v13 + 12));
    v18 = *(*(result + 304) + 8 * *(v13 + 12));
    if (!*(v8 + 1362) || v11 != 2 || (v14 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_41:
    if ((a6 & 1) == 0 && *(v18 + 33))
    {
      v30 = *(result + 320);
LABEL_45:
      j = *(v30 + v24);
      goto LABEL_98;
    }

LABEL_44:
    v30 = *(result + 312);
    goto LABEL_45;
  }

  v26 = *(result + 240);
  v27 = *(result + 264);
  i = 0;
  if (v26)
  {
    while (*(*(result + 272) + i) != v24)
    {
      if (v26 <= ++i)
      {
        for (i = 0; i < v26; ++i)
        {
          if (*(v27 + i) == v24)
          {
            break;
          }
        }

        break;
      }
    }
  }

  if (v26 <= i)
  {
    i = 32;
  }

  if (*(v13 + 12) && (v31 = *(result + 256), *(v31 + 48) > v24 - 1))
  {
    v18 = *(*(v31 + 40) + 8 * (v24 - 1));
  }

  else
  {
    v18 = 0;
  }

  if (!*(v8 + 1362) || v11 != 2 || (v14 & 1) == 0 || (a6 & 1) != 0 || !*(v18 + 33))
  {
    if (v26)
    {
      v32 = 0;
      while (*(v27 + v32) != v24)
      {
        if (v26 <= ++v32)
        {
          for (j = 0; j < v26; ++j)
          {
            if (*(*(result + 280) + j) == v24)
            {
              break;
            }
          }

          goto LABEL_96;
        }
      }

      goto LABEL_95;
    }

LABEL_94:
    j = 0;
    goto LABEL_96;
  }

  if (!v26)
  {
    goto LABEL_172;
  }

  j = 0;
  while (*(*(result + 280) + j) != v24)
  {
    if (v26 <= ++j)
    {
      goto LABEL_172;
    }
  }

LABEL_98:
  v22 = HIWORD(v21);
  v17 = *(result + 31);
  v15 = *(result + 224);
  v16 = v15[i];
  v23 = **(result + 232);
  if (i > 0x1Fu)
  {
    goto LABEL_113;
  }

LABEL_99:
  if (v17 == 2)
  {
    if (*(a5 + 33) | (v11 == 2))
    {
      if (v11 == 2)
      {
        v35 = v14 & 1;
      }

      else
      {
        v35 = (*(result + 16) & 1) != *(v18 + 38);
      }

      i = v35 | (2 * i);
      goto LABEL_112;
    }

    if (v11 == 1)
    {
      i *= 2;
LABEL_112:
      v17 = 2;
      goto LABEL_113;
    }
  }

  if (!*(v8 + 1362) || v11 != 2)
  {
LABEL_113:
    if (v7 == 1 && v11 != 2)
    {
      v22 = (v22 + (v22 >> 15)) >> 1;
      goto LABEL_126;
    }

    goto LABEL_116;
  }

  if (v14)
  {
    if (*(v18 + 33))
    {
      v16 = v15[j];
    }

    else
    {
      j = i + 1;
    }

    goto LABEL_117;
  }

LABEL_116:
  j = i;
LABEL_117:
  if (v7 == 2 && v17 != 2)
  {
    v36 = v11 == 2 && v17 == 1;
    v37 = 1;
    if (v36)
    {
      v37 = 2;
    }

    v22 <<= v37;
    goto LABEL_141;
  }

  i = j;
LABEL_126:
  if (v17 != 2 || v11 != 1)
  {
    if (v17 == 1 && v11 == 2)
    {
      LOWORD(v22) = 2 * v22;
    }

    else if (v17 == 2)
    {
      goto LABEL_129;
    }

    j = i;
LABEL_141:
    v43 = *(v16 + 1280);
    v41 = *(v23 + 1280) - v43;
    v42 = *(v8 + 1280) - v43;
    i = j;
    goto LABEL_142;
  }

  v22 = (v22 + ((v22 & 0x8000) >> 15)) >> 1;
LABEL_129:
  if (*(result + 16))
  {
    v38 = 1288;
  }

  else
  {
    v38 = 1284;
  }

  if ((*(result + 16) & 1) == (i & 1))
  {
    v39 = 1284;
  }

  else
  {
    v39 = 1288;
  }

  v40 = *(v16 + v39);
  v41 = *(v23 + v38) - v40;
  v42 = *(v8 + v38) - v40;
LABEL_142:
  if (*(v16 + 1364))
  {
    v44 = 1;
  }

  else
  {
    v44 = v41 == 0;
  }

  if (v44)
  {
    *a4 = v21 | (v22 << 16);
  }

  else
  {
    if (v42 >= 127)
    {
      v42 = 127;
    }

    if (v42 <= -128)
    {
      v42 = -128;
    }

    if (v41 >= 127)
    {
      v45 = 127;
    }

    else
    {
      v45 = v41;
    }

    if (v45 <= -128)
    {
      v45 = -128;
    }

    if (v41 > -2)
    {
      LOWORD(v46) = ((v45 + ((v45 & 0x80) >> 7)) << 8) >> 9;
    }

    else
    {
      v46 = -((v45 + ((v45 & 0x80) >> 7)) << 24 >> 25);
    }

    v47 = (v42 * ((v46 + 0x4000) / v45) + 32) >> 6;
    if (v47 >= 1023)
    {
      v47 = 1023;
    }

    if (v47 <= -1024)
    {
      v47 = -1024;
    }

    v48 = (v47 * v21 + 128) >> 8;
    *a4 = v48;
    v49 = (v47 * v22 + 128) >> 8;
    *(a4 + 2) = v49;
    *(a4 + 4) = v48 - v21;
    *(a4 + 6) = v49 - v22;
  }

  v50 = (v6 + 16 * a2);
  v50[24] = i;
  v50[25] = 0;
  v52 = *(result + 31) == 2 && i != 32;
  v50[28] = *(*(result + 264) + (i >> v52));
  v50[29] = *(*(result + 264) + 33);
  return result;
}

uint64_t sub_277284DE0(uint64_t result, int a2, _DWORD *a3, int16x8_t *a4, _DWORD *a5, char a6, char a7)
{
  v7 = *(*(result + 40) + 1);
  v8 = *(result + 48) + 16 * a2;
  v9 = *(v8 + 24);
  v10 = *(v8 + 25);
  v11 = *a4;
  if (*a3 && !a3[1] && !a3[2])
  {
    if ((a6 & 1) == 0)
    {
      *a5 = v11.i32[0];
    }

    if (a7)
    {
      return result;
    }

LABEL_37:
    a5[1] = v11.i32[1];
    return result;
  }

  v12 = a4[1];
  v13 = a4[2];
  if ((a6 & 1) == 0)
  {
    if (v9 == v11.u8[8])
    {
      if (v9 != v12.u8[8])
      {
        v14 = *a4;
        if (v9 != v13.u8[8])
        {
          goto LABEL_13;
        }
      }
    }

    else if (v9 == v12.u8[8])
    {
      v14 = a4[1];
      if (v9 != v13.u8[8])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = a4[2];
      if (v9 == v13.u8[8])
      {
        goto LABEL_13;
      }
    }

    v14.i32[0] = vminq_s16(vmaxq_s16(vminq_s16(v11, v12), v13), vmaxq_s16(v11, v12)).u32[0];
LABEL_13:
    *a5 = v14.i32[0];
  }

  if ((a7 & 1) == 0 && (v7 == 5 || v7 == 3))
  {
    v16 = a4[1].u8[9];
    v17 = a4[2].u8[9];
    if (a4->u8[9] == v10)
    {
      if (v16 != v10 && v17 != v10)
      {
        goto LABEL_37;
      }
    }

    else if (v16 == v10)
    {
      if (v17 != v10)
      {
        v11.i32[1] = v12.i32[1];
        goto LABEL_37;
      }
    }

    else if (v17 == v10)
    {
      v11.i32[1] = v13.i32[1];
      goto LABEL_37;
    }

    v11.i64[0] = vminq_s16(vmaxq_s16(vminq_s16(v11, v12), v13), vmaxq_s16(v11, v12)).u64[0];
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_277284F04(uint64_t a1, unsigned int a2, int *a3, int16x8_t *a4, _DWORD *a5)
{
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 1);
  v7 = (v5 + 16 * a2);
  v8 = v7[31];
  v9 = v7[24];
  v10 = v7[25];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v23 = v8 == 3;
  v14 = v8 != 3;
  if (v23)
  {
    a2 = 0;
    v17 = *a4;
    v18 = a4[2];
    v19 = a4->i64[1];
    v20 = a4[2].i64[1];
    v16 = 4112;
LABEL_9:
    v22 = a4[1];
    result = v22.u8[8];
    goto LABEL_10;
  }

  v15 = *(v5 + 26);
  if (v15 >= 0x103)
  {
    v15 = 259;
  }

  v16 = word_280A6AB60[40 * v15 + 24 + a2];
  v17 = *a4;
  v18 = a4[2];
  v19 = a4->i64[1];
  v20 = a4[2].i64[1];
  result = 4104;
  if (v16 == 4104)
  {
    if (!a2 && v9 == v19)
    {
      a2 = 0;
      v16 = 4104;
      v14 = 1;
LABEL_13:
      v22.i32[0] = v17.i32[0];
      goto LABEL_32;
    }

    v16 = 4104;
    if (a2 == 1 && v9 == v20)
    {
      v14 = 1;
      v22 = a4[2];
      a2 = 1;
      goto LABEL_32;
    }

    goto LABEL_9;
  }

  v22 = a4[1];
  result = v22.u8[8];
  if (v16 == 2064)
  {
    if (!a2 && v9 == v22.u8[8])
    {
      v14 = 0;
      a2 = 0;
      v16 = 2064;
      goto LABEL_32;
    }

    v14 = 0;
    v16 = 2064;
    if (a2 == 1 && v9 == v19)
    {
      a2 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v12 && !v11 && !v13)
  {
    goto LABEL_13;
  }

  if (v9 == v19)
  {
    if (v9 != result && v9 != v20)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

  if (v9 != result)
  {
    if (v9 == v20)
    {
      v22.i32[0] = v18.i32[0];
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v9 == v20)
  {
LABEL_31:
    v22.i32[0] = vminq_s16(vmaxq_s16(vminq_s16(v17, v22), v18), vmaxq_s16(v17, v22)).u32[0];
  }

LABEL_32:
  *a5 = v22.i32[0];
  v23 = v6 == 5 || v6 == 3;
  if (v23)
  {
    v24 = a4->u8[9];
    v25 = a4[2].u8[9];
    if (v14)
    {
      if (!a2 && v24 == v10)
      {
        goto LABEL_64;
      }

      if (a2 == 1 && v25 == v10)
      {
        goto LABEL_42;
      }
    }

    v26 = BYTE1(a4[1].i64[1]);
    if (v16 == 2064)
    {
      if (!a2 && v10 == v26)
      {
        goto LABEL_46;
      }

      if (a2 == 1 && v24 == v10)
      {
        goto LABEL_64;
      }
    }

    if (v12 && !v11 && !v13)
    {
      goto LABEL_64;
    }

    if (v24 == v10)
    {
      if (v10 != v26 && v25 != v10)
      {
        goto LABEL_64;
      }
    }

    else if (v10 == v26)
    {
      if (v25 != v10)
      {
LABEL_46:
        v17 = a4[1];
        goto LABEL_64;
      }
    }

    else if (v25 == v10)
    {
LABEL_42:
      v17.i32[1] = v18.i32[1];
LABEL_64:
      a5[1] = v17.i32[1];
      return result;
    }

    v17.i64[0] = vminq_s16(vmaxq_s16(vminq_s16(v17, a4[1]), v18), vmaxq_s16(v17, a4[1])).u64[0];
    goto LABEL_64;
  }

  return result;
}

double sub_277285164(uint64_t a1, int a2)
{
  v2 = (a1 - a2);
  *&result = vld1q_dup_f32(v2).u64[0];
  return result;
}

double sub_277285170(uint64_t a1, int a2, int32x4_t a3, int32x4_t a4)
{
  v5 = *(a1 - 1);
  v4 = a1 - 1;
  a3.i8[0] = v5;
  a3.i8[1] = v5;
  a3.i8[2] = v5;
  a3.i8[3] = v5;
  a3.i8[8] = *(v4 + 2 * a2);
  a3.i8[9] = a3.i8[8];
  a3.i8[10] = a3.i8[8];
  a3.i8[11] = a3.i8[8];
  a4.i8[0] = *(v4 + a2);
  a4.i8[1] = a4.i8[0];
  a4.i8[2] = a4.i8[0];
  a4.i8[3] = a4.i8[0];
  a4.i8[8] = *(v4 + 3 * a2);
  a4.i8[9] = a4.i8[8];
  a4.i8[10] = a4.i8[8];
  a4.i8[11] = a4.i8[8];
  a3.i64[0] = vtrn1q_s32(a3, a4).u64[0];
  return *a3.i64;
}

double sub_2772851D0(uint64_t a1, int a2, unsigned int a3, uint8x8_t a4)
{
  if (((a3 | (a3 >> 7)) & 3u) > 1)
  {
    if (((a3 | (a3 >> 7)) & 3) == 2)
    {
      v6 = (a1 - a2);
      v7 = vld1_dup_f32(v6);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.i32[0];
    }

    else
    {
      a4.i32[0] = *(a1 - a2);
      a4.i16[0] = vaddlv_u8(a4);
      v8 = *(a1 - 1) + *(a1 + a2 - 1) + *(a1 + 2 * a2 - 1) + *(a1 + 3 * a2 - 1) + a4.i32[0];
    }

    v5 = (v8 + 4) >> 3;
  }

  else
  {
    result = -2.93744652e-306;
    if (((a3 | (a3 >> 7)) & 3) == 0)
    {
      return result;
    }

    v5 = (*(a1 - 1) + *(a1 + a2 - 1) + *(a1 + 2 * a2 - 1) + *(a1 + 3 * a2 - 1) + 2) >> 2;
  }

  *&result = vdupq_n_s8(v5).u64[0];
  return result;
}

double sub_277285298(uint64_t a1, int a2, int a3, int8x16_t a4, double a5, int32x2_t a6)
{
  a4.i32[0] = 0;
  v6 = *(a1 - a2);
  a6.i32[0] = a3 & 0xFF0000;
  v7.i32[0] = v6.i32[0];
  v7.i32[1] = vdup_lane_s8(v6, 3).u32[0];
  *a4.i8 = vbsl_s8(vdup_lane_s32(vceq_s32(a6, *a4.i8), 0), v7, v6);
  v8 = vdup_lane_s8(*a4.i8, 7);
  *a4.i8 = vrhadd_u8(vhadd_u8(*a4.i8, vext_s8(*a4.i8, v8, 2uLL)), vext_s8(*a4.i8, v8, 1uLL));
  v9 = vqtbl1q_s8(a4, xmmword_2773B3D50);
  a4.u64[1] = vext_s8(*a4.i8, *a4.i8, 2uLL);
  a4.i64[0] = vtrn1q_s32(a4, v9).u64[0];
  return *a4.i64;
}

double sub_2772852F4(uint64_t a1, int a2, int8x16_t a3)
{
  v3 = (a1 - 1 - a2);
  a3.i8[0] = *v3;
  a3.i8[1] = *v3;
  a3.i8[2] = *v3;
  a3.i8[3] = v3[4 * a2];
  a3.i8[4] = v3[3 * a2];
  a3.i8[5] = v3[2 * a2];
  a3.i8[6] = *(a1 - 1);
  v4 = (a1 - a2);
  a3.i8[7] = a3.i8[0];
  v5 = vld1_dup_f32(v4);
  *a3.i8 = vrhadd_u8(vhadd_u8(vext_s8(*a3.i8, v5, 3uLL), vext_s8(*a3.i8, v5, 5uLL)), vext_s8(*a3.i8, v5, 4uLL));
  *v6.i8 = vext_s8(*a3.i8, *a3.i8, 2uLL);
  v6.i64[1] = a3.i64[0];
  a3.i64[0] = vtrn1q_s32(vqtbl1q_s8(a3, xmmword_2773B3D60), v6).u64[0];
  return *a3.i64;
}

double sub_277285370(uint64_t a1, int a2)
{
  v2 = (a1 - a2);
  v3 = vld1_dup_f32(v2);
  v4 = (a1 - 1 - a2);
  v3.i8[0] = v4[3 * a2];
  v3.i8[1] = v4[2 * a2];
  v3.i8[2] = *(a1 - 1);
  v3.i8[3] = *v4;
  v5 = vext_s8(v3, v3, 3uLL);
  v6 = vext_s8(v3, v3, 4uLL);
  v7 = vrhadd_u8(vhadd_u8(v3, vext_s8(v3, v3, 2uLL)), vext_s8(v3, v3, 1uLL));
  *v8.i8 = vrhadd_u8(v5, v6);
  *v9.i8 = vext_s8(v7, v7, 2uLL);
  v8.u64[1] = vext_s8(vdup_lane_s8(v7, 1), *v8.i8, 7uLL);
  v9.u64[1] = vext_s8(vdup_lane_s8(v7, 0), *v9.i8, 7uLL);
  *&result = vtrn1q_s32(v8, v9).u64[0];
  return result;
}

double sub_2772853E0(uint64_t a1, int a2)
{
  v2 = (a1 - 1 - a2);
  v3.i8[0] = *v2;
  v3.i8[1] = *v2;
  v3.i8[2] = *v2;
  v3.i8[3] = v2[4 * a2];
  v3.i8[4] = v2[3 * a2];
  v3.i8[5] = v2[2 * a2];
  v3.i8[6] = *(a1 - 1);
  v4 = (a1 - a2);
  v3.i8[7] = v3.i8[0];
  v5 = vld1_dup_f32(v4);
  v6 = vext_s8(v3, v5, 3uLL);
  v7 = vext_s8(v3, v5, 4uLL);
  v8 = vrhadd_u8(vhadd_u8(v6, vext_s8(v3, v5, 5uLL)), v7);
  v9 = vdup_lane_s32(v8, 1);
  v10 = vzip1_s8(vrhadd_u8(v6, v7), v8);
  *v11.i8 = vdup_lane_s32(v10, 1);
  *v12.i8 = vext_s8(v10, v9, 6uLL);
  v12.u64[1] = vext_s8(v10, v10, 2uLL);
  v11.u64[1] = v10;
  *&result = vtrn1q_s32(v12, v11).u64[0];
  return result;
}

double sub_277285468(uint64_t a1, int a2, int a3, int32x2_t a4, double a5, int32x2_t a6)
{
  a4.i32[0] = 0;
  v6 = *(a1 - a2);
  a6.i32[0] = a3 & 0xFF0000;
  v7.i32[0] = v6.i32[0];
  v7.i32[1] = vdup_lane_s8(v6, 3).u32[0];
  v8 = vbsl_s8(vdup_lane_s32(vceq_s32(a6, a4), 0), v7, v6);
  v9 = vext_s8(v8, v8, 1uLL);
  *v10.i8 = vrhadd_u8(vhadd_u8(v8, vext_s8(v8, v8, 2uLL)), v9);
  *v11.i8 = vrhadd_u8(v8, v9);
  v11.u64[1] = vext_s8(*v11.i8, *v11.i8, 1uLL);
  v10.u64[1] = vext_s8(*v10.i8, *v11.i8, 1uLL);
  *&result = vtrn1q_s32(v11, v10).u64[0];
  return result;
}

double sub_2772854C0(uint64_t a1, int a2)
{
  v3 = *(a1 - 1);
  v2 = a1 - 1;
  v4 = vdup_n_s8(*(v2 + 3 * a2));
  v5.i8[0] = *(v2 + 3 * a2);
  v5.i8[1] = *(v2 + 2 * a2);
  v5.i8[2] = *(v2 + a2);
  v5.i8[3] = v3;
  v5.i8[4] = v3;
  v5.i8[5] = v3;
  v5.i8[6] = v3;
  v5.i8[7] = v3;
  v6 = vext_s8(v4, v5, 7uLL);
  v7 = vrhadd_u8(vhadd_u8(v5, vext_s8(v4, v5, 6uLL)), v6);
  *v8.i8 = vrev64_s8(vzip1_s8(v7, vrhadd_u8(v5, v6)));
  *v9.i8 = vext_s8(*v8.i8, v7, 2uLL);
  v8.u64[1] = vdup_lane_s32(*v8.i8, 1);
  v9.u64[1] = vdup_lane_s8(v7, 0);
  *&result = vtrn1q_s32(v8, v9).u64[0];
  return result;
}

uint64_t sub_277285534(uint64_t a1, int *a2, unsigned int a3, void *a4, unsigned int a5)
{
  v5 = *(a1 + 40);
  v6 = a2[2];
  v7 = a2[4];
  v8 = v6 >> 4;
  v9 = v6 & 0xF;
  v10 = a2[6] >> 4;
  v11 = a2[6] & 0xF;
  v12 = *a2 & 0xF;
  v13 = v7 - *a2;
  v14 = ((v8 - v10) & 0xF | v11 & ~(v8 - v10)) - v9 + 1;
  v15 = *(a1 + 32) + ((v8 + 2) * v5) + (*a2 >> 4 << 10);
  result = a3;
  v17 = v15 + (a3 << 8) + 2048;
  v18 = (v17 + v5);
  v19 = (v17 + 16 * v9);
  if (*a2 >> 4 == v7 >> 4)
  {
    if (v13 < 8)
    {
      if (v13 == 7)
      {
        if (((v8 - (a2[6] >> 4)) & 0xF | a2[6] & 0xF & ~(v8 - (a2[6] >> 4))) - v9 != -1)
        {
          do
          {
            v28 = *v19;
            switch(v12)
            {
              case 1:
                v28.i64[0] = vextq_s8(v28, vdupq_lane_s8(*v28.i8, 1), 1uLL).u64[0];
                break;
              case 2:
                v28.i64[0] = vextq_s8(v28, vdupq_lane_s16(*v28.i8, 1), 2uLL).u64[0];
                break;
              case 3:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 3uLL), 3uLL).u64[0];
                break;
              case 4:
                v28.i64[0] = vextq_s8(v28, vdupq_lane_s32(*v28.i8, 1), 4uLL).u64[0];
                break;
              case 5:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 5uLL), 5uLL).u64[0];
                break;
              case 6:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 6uLL), 6uLL).u64[0];
                break;
              case 7:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 7uLL), 7uLL).u64[0];
                break;
              case 8:
                v28.i64[0] = vdupq_laneq_s64(v28, 1).u64[0];
                break;
              case 9:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 9uLL), 9uLL).u64[0];
                break;
              case 10:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 0xAuLL), 0xAuLL).u64[0];
                break;
              case 11:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 0xBuLL), 0xBuLL).u64[0];
                break;
              case 12:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 0xCuLL), 0xCuLL).u64[0];
                break;
              case 13:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 0xDuLL), 0xDuLL).u64[0];
                break;
              case 14:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 0xEuLL), 0xEuLL).u64[0];
                break;
              case 15:
                v28.i64[0] = vextq_s8(v28, vextq_s8(v28, 0, 0xFuLL), 0xFuLL).u64[0];
                break;
              default:
                break;
            }

            *a4 = v28.i64[0];
            ++v19;
            a4 = (a4 + a5);
            --v14;
          }

          while (v14);
        }

        if (v8 != v10)
        {
          v29 = v11 + 1;
          do
          {
            v30 = *v18;
            switch(v12)
            {
              case 1:
                v30.i64[0] = vextq_s8(v30, vdupq_lane_s8(*v30.i8, 1), 1uLL).u64[0];
                break;
              case 2:
                v30.i64[0] = vextq_s8(v30, vdupq_lane_s16(*v30.i8, 1), 2uLL).u64[0];
                break;
              case 3:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 3uLL), 3uLL).u64[0];
                break;
              case 4:
                v30.i64[0] = vextq_s8(v30, vdupq_lane_s32(*v30.i8, 1), 4uLL).u64[0];
                break;
              case 5:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 5uLL), 5uLL).u64[0];
                break;
              case 6:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 6uLL), 6uLL).u64[0];
                break;
              case 7:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 7uLL), 7uLL).u64[0];
                break;
              case 8:
                v30.i64[0] = vdupq_laneq_s64(v30, 1).u64[0];
                break;
              case 9:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 9uLL), 9uLL).u64[0];
                break;
              case 10:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 0xAuLL), 0xAuLL).u64[0];
                break;
              case 11:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 0xBuLL), 0xBuLL).u64[0];
                break;
              case 12:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 0xCuLL), 0xCuLL).u64[0];
                break;
              case 13:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 0xDuLL), 0xDuLL).u64[0];
                break;
              case 14:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 0xEuLL), 0xEuLL).u64[0];
                break;
              case 15:
                v30.i64[0] = vextq_s8(v30, vextq_s8(v30, 0, 0xFuLL), 0xFuLL).u64[0];
                break;
              default:
                break;
            }

            *a4 = v30.i64[0];
            ++v18;
            a4 = (a4 + a5);
            --v29;
          }

          while (v29);
        }
      }

      else
      {
        if (((v8 - (a2[6] >> 4)) & 0xF | a2[6] & 0xF & ~(v8 - (a2[6] >> 4))) - v9 != -1)
        {
          do
          {
            v36 = *v19;
            switch(v12)
            {
              case 1:
                v36.i32[0] = vextq_s8(v36, vdupq_lane_s8(*v36.i8, 1), 1uLL).u32[0];
                break;
              case 2:
                v36.i32[0] = vextq_s8(v36, vdupq_lane_s16(*v36.i8, 1), 2uLL).u32[0];
                break;
              case 3:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 3uLL), 3uLL).u32[0];
                break;
              case 4:
                v36.i32[0] = vextq_s8(v36, vdupq_lane_s32(*v36.i8, 1), 4uLL).u32[0];
                break;
              case 5:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 5uLL), 5uLL).u32[0];
                break;
              case 6:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 6uLL), 6uLL).u32[0];
                break;
              case 7:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 7uLL), 7uLL).u32[0];
                break;
              case 8:
                v36.i32[0] = vdupq_laneq_s64(v36, 1).u32[0];
                break;
              case 9:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 9uLL), 9uLL).u32[0];
                break;
              case 10:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 0xAuLL), 0xAuLL).u32[0];
                break;
              case 11:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 0xBuLL), 0xBuLL).u32[0];
                break;
              case 12:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 0xCuLL), 0xCuLL).u32[0];
                break;
              case 13:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 0xDuLL), 0xDuLL).u32[0];
                break;
              case 14:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 0xEuLL), 0xEuLL).u32[0];
                break;
              case 15:
                v36.i32[0] = vextq_s8(v36, vextq_s8(v36, 0, 0xFuLL), 0xFuLL).u32[0];
                break;
              default:
                break;
            }

            *a4 = v36.i32[0];
            ++v19;
            a4 = (a4 + a5);
            --v14;
          }

          while (v14);
        }

        if (v8 != v10)
        {
          v37 = v11 + 1;
          do
          {
            v38 = *v18;
            switch(v12)
            {
              case 1:
                v38.i32[0] = vextq_s8(v38, vdupq_lane_s8(*v38.i8, 1), 1uLL).u32[0];
                break;
              case 2:
                v38.i32[0] = vextq_s8(v38, vdupq_lane_s16(*v38.i8, 1), 2uLL).u32[0];
                break;
              case 3:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 3uLL), 3uLL).u32[0];
                break;
              case 4:
                v38.i32[0] = vextq_s8(v38, vdupq_lane_s32(*v38.i8, 1), 4uLL).u32[0];
                break;
              case 5:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 5uLL), 5uLL).u32[0];
                break;
              case 6:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 6uLL), 6uLL).u32[0];
                break;
              case 7:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 7uLL), 7uLL).u32[0];
                break;
              case 8:
                v38.i32[0] = vdupq_laneq_s64(v38, 1).u32[0];
                break;
              case 9:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 9uLL), 9uLL).u32[0];
                break;
              case 10:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 0xAuLL), 0xAuLL).u32[0];
                break;
              case 11:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 0xBuLL), 0xBuLL).u32[0];
                break;
              case 12:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 0xCuLL), 0xCuLL).u32[0];
                break;
              case 13:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 0xDuLL), 0xDuLL).u32[0];
                break;
              case 14:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 0xEuLL), 0xEuLL).u32[0];
                break;
              case 15:
                v38.i32[0] = vextq_s8(v38, vextq_s8(v38, 0, 0xFuLL), 0xFuLL).u32[0];
                break;
              default:
                break;
            }

            *a4 = v38.i32[0];
            ++v18;
            a4 = (a4 + a5);
            --v37;
          }

          while (v37);
        }
      }
    }

    else
    {
      if (((v8 - (a2[6] >> 4)) & 0xF | a2[6] & 0xF & ~(v8 - (a2[6] >> 4))) - v9 != -1)
      {
        do
        {
          v20 = *v19;
          switch(v12)
          {
            case 1:
              v20 = vextq_s8(v20, vdupq_lane_s8(*v20.i8, 1), 1uLL);
              break;
            case 2:
              v20 = vextq_s8(v20, vdupq_lane_s16(*v20.i8, 1), 2uLL);
              break;
            case 3:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 3uLL), 3uLL);
              break;
            case 4:
              v20 = vextq_s8(v20, vdupq_lane_s32(*v20.i8, 1), 4uLL);
              break;
            case 5:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 5uLL), 5uLL);
              break;
            case 6:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 6uLL), 6uLL);
              break;
            case 7:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 7uLL), 7uLL);
              break;
            case 8:
              v20 = vdupq_laneq_s64(v20, 1);
              break;
            case 9:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 9uLL), 9uLL);
              break;
            case 10:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 0xAuLL), 0xAuLL);
              break;
            case 11:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 0xBuLL), 0xBuLL);
              break;
            case 12:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 0xCuLL), 0xCuLL);
              break;
            case 13:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 0xDuLL), 0xDuLL);
              break;
            case 14:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 0xEuLL), 0xEuLL);
              break;
            case 15:
              v20 = vextq_s8(v20, vextq_s8(v20, 0, 0xFuLL), 0xFuLL);
              break;
            default:
              break;
          }

          *a4 = v20;
          ++v19;
          a4 = (a4 + a5);
          --v14;
        }

        while (v14);
      }

      if (v8 != v10)
      {
        v21 = v11 + 1;
        do
        {
          v22 = *v18;
          switch(v12)
          {
            case 1:
              v22 = vextq_s8(v22, vdupq_lane_s8(*v22.i8, 1), 1uLL);
              break;
            case 2:
              v22 = vextq_s8(v22, vdupq_lane_s16(*v22.i8, 1), 2uLL);
              break;
            case 3:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 3uLL), 3uLL);
              break;
            case 4:
              v22 = vextq_s8(v22, vdupq_lane_s32(*v22.i8, 1), 4uLL);
              break;
            case 5:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 5uLL), 5uLL);
              break;
            case 6:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 6uLL), 6uLL);
              break;
            case 7:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 7uLL), 7uLL);
              break;
            case 8:
              v22 = vdupq_laneq_s64(v22, 1);
              break;
            case 9:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 9uLL), 9uLL);
              break;
            case 10:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 0xAuLL), 0xAuLL);
              break;
            case 11:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 0xBuLL), 0xBuLL);
              break;
            case 12:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 0xCuLL), 0xCuLL);
              break;
            case 13:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 0xDuLL), 0xDuLL);
              break;
            case 14:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 0xEuLL), 0xEuLL);
              break;
            case 15:
              v22 = vextq_s8(v22, vextq_s8(v22, 0, 0xFuLL), 0xFuLL);
              break;
            default:
              break;
          }

          *a4 = v22;
          ++v18;
          a4 = (a4 + a5);
          --v21;
        }

        while (v21);
      }
    }
  }

  else if (v13 < 8)
  {
    if (v13 == 7)
    {
      if (((v8 - (a2[6] >> 4)) & 0xF | a2[6] & 0xF & ~(v8 - (a2[6] >> 4))) - v9 != -1)
      {
        do
        {
          v31 = *v19;
          v32 = *(v19 + 64);
          switch(v12)
          {
            case 1:
              v31.i64[0] = vextq_s8(v31, v32, 1uLL).u64[0];
              break;
            case 2:
              v31.i64[0] = vextq_s8(v31, v32, 2uLL).u64[0];
              break;
            case 3:
              v31.i64[0] = vextq_s8(v31, v32, 3uLL).u64[0];
              break;
            case 4:
              v31.i64[0] = vextq_s8(v31, v32, 4uLL).u64[0];
              break;
            case 5:
              v31.i64[0] = vextq_s8(v31, v32, 5uLL).u64[0];
              break;
            case 6:
              v31.i64[0] = vextq_s8(v31, v32, 6uLL).u64[0];
              break;
            case 7:
              v31.i64[0] = vextq_s8(v31, v32, 7uLL).u64[0];
              break;
            case 8:
              v31.i64[0] = vextq_s8(v31, v32, 8uLL).u64[0];
              break;
            case 9:
              v31.i64[0] = vextq_s8(v31, v32, 9uLL).u64[0];
              break;
            case 10:
              v31.i64[0] = vextq_s8(v31, v32, 0xAuLL).u64[0];
              break;
            case 11:
              v31.i64[0] = vextq_s8(v31, v32, 0xBuLL).u64[0];
              break;
            case 12:
              v31.i64[0] = vextq_s8(v31, v32, 0xCuLL).u64[0];
              break;
            case 13:
              v31.i64[0] = vextq_s8(v31, v32, 0xDuLL).u64[0];
              break;
            case 14:
              v31.i64[0] = vextq_s8(v31, v32, 0xEuLL).u64[0];
              break;
            case 15:
              v31.i64[0] = vextq_s8(v31, v32, 0xFuLL).u64[0];
              break;
            default:
              break;
          }

          *a4 = v31.i64[0];
          ++v19;
          a4 = (a4 + a5);
          --v14;
        }

        while (v14);
      }

      if (v8 != v10)
      {
        v33 = v11 + 1;
        do
        {
          v34 = *v18;
          v35 = *(v18 + 64);
          switch(v12)
          {
            case 1:
              v34.i64[0] = vextq_s8(v34, v35, 1uLL).u64[0];
              break;
            case 2:
              v34.i64[0] = vextq_s8(v34, v35, 2uLL).u64[0];
              break;
            case 3:
              v34.i64[0] = vextq_s8(v34, v35, 3uLL).u64[0];
              break;
            case 4:
              v34.i64[0] = vextq_s8(v34, v35, 4uLL).u64[0];
              break;
            case 5:
              v34.i64[0] = vextq_s8(v34, v35, 5uLL).u64[0];
              break;
            case 6:
              v34.i64[0] = vextq_s8(v34, v35, 6uLL).u64[0];
              break;
            case 7:
              v34.i64[0] = vextq_s8(v34, v35, 7uLL).u64[0];
              break;
            case 8:
              v34.i64[0] = vextq_s8(v34, v35, 8uLL).u64[0];
              break;
            case 9:
              v34.i64[0] = vextq_s8(v34, v35, 9uLL).u64[0];
              break;
            case 10:
              v34.i64[0] = vextq_s8(v34, v35, 0xAuLL).u64[0];
              break;
            case 11:
              v34.i64[0] = vextq_s8(v34, v35, 0xBuLL).u64[0];
              break;
            case 12:
              v34.i64[0] = vextq_s8(v34, v35, 0xCuLL).u64[0];
              break;
            case 13:
              v34.i64[0] = vextq_s8(v34, v35, 0xDuLL).u64[0];
              break;
            case 14:
              v34.i64[0] = vextq_s8(v34, v35, 0xEuLL).u64[0];
              break;
            case 15:
              v34.i64[0] = vextq_s8(v34, v35, 0xFuLL).u64[0];
              break;
            default:
              break;
          }

          *a4 = v34.i64[0];
          ++v18;
          a4 = (a4 + a5);
          --v33;
        }

        while (v33);
      }
    }

    else
    {
      if (((v8 - (a2[6] >> 4)) & 0xF | a2[6] & 0xF & ~(v8 - (a2[6] >> 4))) - v9 != -1)
      {
        do
        {
          v39 = *v19;
          v40 = *(v19 + 64);
          switch(v12)
          {
            case 1:
              v39.i32[0] = vextq_s8(v39, v40, 1uLL).u32[0];
              break;
            case 2:
              v39.i32[0] = vextq_s8(v39, v40, 2uLL).u32[0];
              break;
            case 3:
              v39.i32[0] = vextq_s8(v39, v40, 3uLL).u32[0];
              break;
            case 4:
              v39.i32[0] = vextq_s8(v39, v40, 4uLL).u32[0];
              break;
            case 5:
              v39.i32[0] = vextq_s8(v39, v40, 5uLL).u32[0];
              break;
            case 6:
              v39.i32[0] = vextq_s8(v39, v40, 6uLL).u32[0];
              break;
            case 7:
              v39.i32[0] = vextq_s8(v39, v40, 7uLL).u32[0];
              break;
            case 8:
              v39.i32[0] = vextq_s8(v39, v40, 8uLL).u32[0];
              break;
            case 9:
              v39.i32[0] = vextq_s8(v39, v40, 9uLL).u32[0];
              break;
            case 10:
              v39.i32[0] = vextq_s8(v39, v40, 0xAuLL).u32[0];
              break;
            case 11:
              v39.i32[0] = vextq_s8(v39, v40, 0xBuLL).u32[0];
              break;
            case 12:
              v39.i32[0] = vextq_s8(v39, v40, 0xCuLL).u32[0];
              break;
            case 13:
              v39.i32[0] = vextq_s8(v39, v40, 0xDuLL).u32[0];
              break;
            case 14:
              v39.i32[0] = vextq_s8(v39, v40, 0xEuLL).u32[0];
              break;
            case 15:
              v39.i32[0] = vextq_s8(v39, v40, 0xFuLL).u32[0];
              break;
            default:
              break;
          }

          *a4 = v39.i32[0];
          ++v19;
          a4 = (a4 + a5);
          --v14;
        }

        while (v14);
      }

      if (v8 != v10)
      {
        v41 = v11 + 1;
        do
        {
          v42 = *v18;
          v43 = *(v18 + 64);
          switch(v12)
          {
            case 1:
              v42.i32[0] = vextq_s8(v42, v43, 1uLL).u32[0];
              break;
            case 2:
              v42.i32[0] = vextq_s8(v42, v43, 2uLL).u32[0];
              break;
            case 3:
              v42.i32[0] = vextq_s8(v42, v43, 3uLL).u32[0];
              break;
            case 4:
              v42.i32[0] = vextq_s8(v42, v43, 4uLL).u32[0];
              break;
            case 5:
              v42.i32[0] = vextq_s8(v42, v43, 5uLL).u32[0];
              break;
            case 6:
              v42.i32[0] = vextq_s8(v42, v43, 6uLL).u32[0];
              break;
            case 7:
              v42.i32[0] = vextq_s8(v42, v43, 7uLL).u32[0];
              break;
            case 8:
              v42.i32[0] = vextq_s8(v42, v43, 8uLL).u32[0];
              break;
            case 9:
              v42.i32[0] = vextq_s8(v42, v43, 9uLL).u32[0];
              break;
            case 10:
              v42.i32[0] = vextq_s8(v42, v43, 0xAuLL).u32[0];
              break;
            case 11:
              v42.i32[0] = vextq_s8(v42, v43, 0xBuLL).u32[0];
              break;
            case 12:
              v42.i32[0] = vextq_s8(v42, v43, 0xCuLL).u32[0];
              break;
            case 13:
              v42.i32[0] = vextq_s8(v42, v43, 0xDuLL).u32[0];
              break;
            case 14:
              v42.i32[0] = vextq_s8(v42, v43, 0xEuLL).u32[0];
              break;
            case 15:
              v42.i32[0] = vextq_s8(v42, v43, 0xFuLL).u32[0];
              break;
            default:
              break;
          }

          *a4 = v42.i32[0];
          ++v18;
          a4 = (a4 + a5);
          --v41;
        }

        while (v41);
      }
    }
  }

  else
  {
    if (((v8 - (a2[6] >> 4)) & 0xF | a2[6] & 0xF & ~(v8 - (a2[6] >> 4))) - v9 != -1)
    {
      do
      {
        v23 = *v19;
        v24 = *(v19 + 64);
        switch(v12)
        {
          case 1:
            v23 = vextq_s8(v23, v24, 1uLL);
            break;
          case 2:
            v23 = vextq_s8(v23, v24, 2uLL);
            break;
          case 3:
            v23 = vextq_s8(v23, v24, 3uLL);
            break;
          case 4:
            v23 = vextq_s8(v23, v24, 4uLL);
            break;
          case 5:
            v23 = vextq_s8(v23, v24, 5uLL);
            break;
          case 6:
            v23 = vextq_s8(v23, v24, 6uLL);
            break;
          case 7:
            v23 = vextq_s8(v23, v24, 7uLL);
            break;
          case 8:
            v23 = vextq_s8(v23, v24, 8uLL);
            break;
          case 9:
            v23 = vextq_s8(v23, v24, 9uLL);
            break;
          case 10:
            v23 = vextq_s8(v23, v24, 0xAuLL);
            break;
          case 11:
            v23 = vextq_s8(v23, v24, 0xBuLL);
            break;
          case 12:
            v23 = vextq_s8(v23, v24, 0xCuLL);
            break;
          case 13:
            v23 = vextq_s8(v23, v24, 0xDuLL);
            break;
          case 14:
            v23 = vextq_s8(v23, v24, 0xEuLL);
            break;
          case 15:
            v23 = vextq_s8(v23, v24, 0xFuLL);
            break;
          default:
            break;
        }

        *a4 = v23;
        ++v19;
        a4 = (a4 + a5);
        --v14;
      }

      while (v14);
    }

    if (v8 != v10)
    {
      v25 = v11 + 1;
      do
      {
        v26 = *v18;
        v27 = *(v18 + 64);
        switch(v12)
        {
          case 1:
            v26 = vextq_s8(v26, v27, 1uLL);
            break;
          case 2:
            v26 = vextq_s8(v26, v27, 2uLL);
            break;
          case 3:
            v26 = vextq_s8(v26, v27, 3uLL);
            break;
          case 4:
            v26 = vextq_s8(v26, v27, 4uLL);
            break;
          case 5:
            v26 = vextq_s8(v26, v27, 5uLL);
            break;
          case 6:
            v26 = vextq_s8(v26, v27, 6uLL);
            break;
          case 7:
            v26 = vextq_s8(v26, v27, 7uLL);
            break;
          case 8:
            v26 = vextq_s8(v26, v27, 8uLL);
            break;
          case 9:
            v26 = vextq_s8(v26, v27, 9uLL);
            break;
          case 10:
            v26 = vextq_s8(v26, v27, 0xAuLL);
            break;
          case 11:
            v26 = vextq_s8(v26, v27, 0xBuLL);
            break;
          case 12:
            v26 = vextq_s8(v26, v27, 0xCuLL);
            break;
          case 13:
            v26 = vextq_s8(v26, v27, 0xDuLL);
            break;
          case 14:
            v26 = vextq_s8(v26, v27, 0xEuLL);
            break;
          case 15:
            v26 = vextq_s8(v26, v27, 0xFuLL);
            break;
          default:
            break;
        }

        *a4 = v26;
        ++v18;
        a4 = (a4 + a5);
        --v25;
      }

      while (v25);
    }
  }

  return result;
}

uint64_t sub_277286338(uint64_t a1, _DWORD *a2, uint64_t a3, uint8x16_t *a4, unsigned int a5)
{
  v5 = *(a1 + 40);
  v6 = (a3 >> 4) & 1;
  v7 = (a3 >> 6) & 1;
  v8 = a2[2];
  v9 = a2[6];
  v10 = *a2 + v6;
  v11 = a2[4];
  v12 = v11 + v6;
  v13 = v8 >> 4;
  v14 = v8 & 0xF;
  v15 = v9 & 0xF;
  v16 = v10 >> 4;
  v17 = v10 & 0xF;
  v18 = v11 - *a2;
  v19 = v8 + ((a3 & 0x80) >> 7);
  v20 = v9 + ((a3 & 0x80) >> 7);
  v21 = *a2 + v7;
  v22 = v20 >> 4;
  v23 = v20 & 0xF;
  v24 = v21 & 0xF;
  v25 = (v22 - (v8 >> 4)) & ((a3 & 0x80) >> 7);
  v26 = ((v13 - (v9 >> 4)) & 0xF | v15 & ~(v13 - (v9 >> 4))) - (v8 & 0xF) - v25 + 1;
  v27 = *(a1 + 32);
  v28 = v27 + (((v8 >> 4) + 2) * v5) + (v10 >> 4 << 10) + ((a3 & 3) << 8) + 2048;
  v29 = v27 + (((v19 >> 4) + 2) * v5) + (v21 >> 4 << 10) + ((a3 << 6) & 0x300) + 2048;
  result = v28 + 16 * v14;
  v31 = 16 * (v19 & 0xFu);
  v32 = (v29 + v31);
  if (v16 != v12 >> 4 || (v11 + v7) >> 4 != v21 >> 4)
  {
    v37 = v29 + 1024;
    v38 = v28 + 16 * v14 + 1024;
    v39 = (v29 + 1024 + v31);
    if (v18 >= 8)
    {
      if (v26)
      {
        LODWORD(v40) = 0;
        do
        {
          v41 = *(result + v40);
          v42 = *(v38 + v40);
          v43 = *(v32 + v40);
          v44 = *(v39 + v40);
          switch(v17)
          {
            case 1:
              v41 = vextq_s8(v41, v42, 1uLL);
              break;
            case 2:
              v41 = vextq_s8(v41, v42, 2uLL);
              break;
            case 3:
              v41 = vextq_s8(v41, v42, 3uLL);
              break;
            case 4:
              v41 = vextq_s8(v41, v42, 4uLL);
              break;
            case 5:
              v41 = vextq_s8(v41, v42, 5uLL);
              break;
            case 6:
              v41 = vextq_s8(v41, v42, 6uLL);
              break;
            case 7:
              v41 = vextq_s8(v41, v42, 7uLL);
              break;
            case 8:
              v41 = vextq_s8(v41, v42, 8uLL);
              break;
            case 9:
              v41 = vextq_s8(v41, v42, 9uLL);
              break;
            case 10:
              v41 = vextq_s8(v41, v42, 0xAuLL);
              break;
            case 11:
              v41 = vextq_s8(v41, v42, 0xBuLL);
              break;
            case 12:
              v41 = vextq_s8(v41, v42, 0xCuLL);
              break;
            case 13:
              v41 = vextq_s8(v41, v42, 0xDuLL);
              break;
            case 14:
              v41 = vextq_s8(v41, v42, 0xEuLL);
              break;
            case 15:
              v41 = vextq_s8(v41, v42, 0xFuLL);
              break;
            default:
              break;
          }

          switch(v24)
          {
            case 1:
              v43 = vextq_s8(v43, v44, 1uLL);
              break;
            case 2:
              v43 = vextq_s8(v43, v44, 2uLL);
              break;
            case 3:
              v43 = vextq_s8(v43, v44, 3uLL);
              break;
            case 4:
              v43 = vextq_s8(v43, v44, 4uLL);
              break;
            case 5:
              v43 = vextq_s8(v43, v44, 5uLL);
              break;
            case 6:
              v43 = vextq_s8(v43, v44, 6uLL);
              break;
            case 7:
              v43 = vextq_s8(v43, v44, 7uLL);
              break;
            case 8:
              v43 = vextq_s8(v43, v44, 8uLL);
              break;
            case 9:
              v43 = vextq_s8(v43, v44, 9uLL);
              break;
            case 10:
              v43 = vextq_s8(v43, v44, 0xAuLL);
              break;
            case 11:
              v43 = vextq_s8(v43, v44, 0xBuLL);
              break;
            case 12:
              v43 = vextq_s8(v43, v44, 0xCuLL);
              break;
            case 13:
              v43 = vextq_s8(v43, v44, 0xDuLL);
              break;
            case 14:
              v43 = vextq_s8(v43, v44, 0xEuLL);
              break;
            case 15:
              v43 = vextq_s8(v43, v44, 0xFuLL);
              break;
            default:
              break;
          }

          *a4 = vrhaddq_u8(v41, v43);
          v40 = (v40 + 16);
          a4 = (a4 + a5);
          --v26;
        }

        while (v26);
        if (v22 == v13)
        {
          return result;
        }

        v32 = (v29 + v5);
        v39 = (v37 + v5);
        if (!v25)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v40 = 0;
        if (!v25)
        {
LABEL_80:
          v45 = a5;
          goto LABEL_294;
        }
      }

      v66 = *(result + v40);
      v67 = *(v38 + v40);
      v68 = *v32;
      v69 = *v39;
      switch(v17)
      {
        case 1:
          v66 = vextq_s8(v66, v67, 1uLL);
          break;
        case 2:
          v66 = vextq_s8(v66, v67, 2uLL);
          break;
        case 3:
          v66 = vextq_s8(v66, v67, 3uLL);
          break;
        case 4:
          v66 = vextq_s8(v66, v67, 4uLL);
          break;
        case 5:
          v66 = vextq_s8(v66, v67, 5uLL);
          break;
        case 6:
          v66 = vextq_s8(v66, v67, 6uLL);
          break;
        case 7:
          v66 = vextq_s8(v66, v67, 7uLL);
          break;
        case 8:
          v66 = vextq_s8(v66, v67, 8uLL);
          break;
        case 9:
          v66 = vextq_s8(v66, v67, 9uLL);
          break;
        case 10:
          v66 = vextq_s8(v66, v67, 0xAuLL);
          break;
        case 11:
          v66 = vextq_s8(v66, v67, 0xBuLL);
          break;
        case 12:
          v66 = vextq_s8(v66, v67, 0xCuLL);
          break;
        case 13:
          v66 = vextq_s8(v66, v67, 0xDuLL);
          break;
        case 14:
          v66 = vextq_s8(v66, v67, 0xEuLL);
          break;
        case 15:
          v66 = vextq_s8(v66, v67, 0xFuLL);
          break;
        default:
          break;
      }

      switch(v24)
      {
        case 1:
          v68 = vextq_s8(v68, v69, 1uLL);
          break;
        case 2:
          v68 = vextq_s8(v68, v69, 2uLL);
          break;
        case 3:
          v68 = vextq_s8(v68, v69, 3uLL);
          break;
        case 4:
          v68 = vextq_s8(v68, v69, 4uLL);
          break;
        case 5:
          v68 = vextq_s8(v68, v69, 5uLL);
          break;
        case 6:
          v68 = vextq_s8(v68, v69, 6uLL);
          break;
        case 7:
          v68 = vextq_s8(v68, v69, 7uLL);
          break;
        case 8:
          v68 = vextq_s8(v68, v69, 8uLL);
          break;
        case 9:
          v68 = vextq_s8(v68, v69, 9uLL);
          break;
        case 10:
          v68 = vextq_s8(v68, v69, 0xAuLL);
          break;
        case 11:
          v68 = vextq_s8(v68, v69, 0xBuLL);
          break;
        case 12:
          v68 = vextq_s8(v68, v69, 0xCuLL);
          break;
        case 13:
          v68 = vextq_s8(v68, v69, 0xDuLL);
          break;
        case 14:
          v68 = vextq_s8(v68, v69, 0xEuLL);
          break;
        case 15:
          v68 = vextq_s8(v68, v69, 0xFuLL);
          break;
        default:
          break;
      }

      *a4 = vrhaddq_u8(v66, v68);
      if (!v23)
      {
        return result;
      }

      ++v32;
      ++v39;
      v45 = a5;
      a4 = (a4 + a5);
LABEL_294:
      v84 = (v28 + v5);
      v85 = v15 + 1;
      do
      {
        v86 = *v84;
        v87 = v84[64];
        v88 = *v32;
        v89 = *v39;
        switch(v17)
        {
          case 1:
            v86 = vextq_s8(v86, v87, 1uLL);
            break;
          case 2:
            v86 = vextq_s8(v86, v87, 2uLL);
            break;
          case 3:
            v86 = vextq_s8(v86, v87, 3uLL);
            break;
          case 4:
            v86 = vextq_s8(v86, v87, 4uLL);
            break;
          case 5:
            v86 = vextq_s8(v86, v87, 5uLL);
            break;
          case 6:
            v86 = vextq_s8(v86, v87, 6uLL);
            break;
          case 7:
            v86 = vextq_s8(v86, v87, 7uLL);
            break;
          case 8:
            v86 = vextq_s8(v86, v87, 8uLL);
            break;
          case 9:
            v86 = vextq_s8(v86, v87, 9uLL);
            break;
          case 10:
            v86 = vextq_s8(v86, v87, 0xAuLL);
            break;
          case 11:
            v86 = vextq_s8(v86, v87, 0xBuLL);
            break;
          case 12:
            v86 = vextq_s8(v86, v87, 0xCuLL);
            break;
          case 13:
            v86 = vextq_s8(v86, v87, 0xDuLL);
            break;
          case 14:
            v86 = vextq_s8(v86, v87, 0xEuLL);
            break;
          case 15:
            v86 = vextq_s8(v86, v87, 0xFuLL);
            break;
          default:
            break;
        }

        switch(v24)
        {
          case 1:
            v88 = vextq_s8(v88, v89, 1uLL);
            break;
          case 2:
            v88 = vextq_s8(v88, v89, 2uLL);
            break;
          case 3:
            v88 = vextq_s8(v88, v89, 3uLL);
            break;
          case 4:
            v88 = vextq_s8(v88, v89, 4uLL);
            break;
          case 5:
            v88 = vextq_s8(v88, v89, 5uLL);
            break;
          case 6:
            v88 = vextq_s8(v88, v89, 6uLL);
            break;
          case 7:
            v88 = vextq_s8(v88, v89, 7uLL);
            break;
          case 8:
            v88 = vextq_s8(v88, v89, 8uLL);
            break;
          case 9:
            v88 = vextq_s8(v88, v89, 9uLL);
            break;
          case 10:
            v88 = vextq_s8(v88, v89, 0xAuLL);
            break;
          case 11:
            v88 = vextq_s8(v88, v89, 0xBuLL);
            break;
          case 12:
            v88 = vextq_s8(v88, v89, 0xCuLL);
            break;
          case 13:
            v88 = vextq_s8(v88, v89, 0xDuLL);
            break;
          case 14:
            v88 = vextq_s8(v88, v89, 0xEuLL);
            break;
          case 15:
            v88 = vextq_s8(v88, v89, 0xFuLL);
            break;
          default:
            break;
        }

        *a4 = vrhaddq_u8(v86, v88);
        a4 = (a4 + v45);
        ++v84;
        ++v32;
        ++v39;
        --v85;
      }

      while (v85);
      return result;
    }

    if (v18 == 7)
    {
      if (v26)
      {
        LODWORD(v46) = 0;
        do
        {
          v47 = *(result + v46);
          v48 = *(v38 + v46);
          v49 = *(v32 + v46);
          v50 = *(v39 + v46);
          switch(v17)
          {
            case 1:
              v47 = vextq_s8(v47, v48, 1uLL);
              break;
            case 2:
              v47 = vextq_s8(v47, v48, 2uLL);
              break;
            case 3:
              v47 = vextq_s8(v47, v48, 3uLL);
              break;
            case 4:
              v47 = vextq_s8(v47, v48, 4uLL);
              break;
            case 5:
              v47 = vextq_s8(v47, v48, 5uLL);
              break;
            case 6:
              v47 = vextq_s8(v47, v48, 6uLL);
              break;
            case 7:
              v47 = vextq_s8(v47, v48, 7uLL);
              break;
            case 8:
              v47 = vextq_s8(v47, v48, 8uLL);
              break;
            case 9:
              v47 = vextq_s8(v47, v48, 9uLL);
              break;
            case 10:
              v47 = vextq_s8(v47, v48, 0xAuLL);
              break;
            case 11:
              v47 = vextq_s8(v47, v48, 0xBuLL);
              break;
            case 12:
              v47 = vextq_s8(v47, v48, 0xCuLL);
              break;
            case 13:
              v47 = vextq_s8(v47, v48, 0xDuLL);
              break;
            case 14:
              v47 = vextq_s8(v47, v48, 0xEuLL);
              break;
            case 15:
              v47 = vextq_s8(v47, v48, 0xFuLL);
              break;
            default:
              break;
          }

          switch(v24)
          {
            case 1:
              v49 = vextq_s8(v49, v50, 1uLL);
              break;
            case 2:
              v49 = vextq_s8(v49, v50, 2uLL);
              break;
            case 3:
              v49 = vextq_s8(v49, v50, 3uLL);
              break;
            case 4:
              v49 = vextq_s8(v49, v50, 4uLL);
              break;
            case 5:
              v49 = vextq_s8(v49, v50, 5uLL);
              break;
            case 6:
              v49 = vextq_s8(v49, v50, 6uLL);
              break;
            case 7:
              v49 = vextq_s8(v49, v50, 7uLL);
              break;
            case 8:
              v49 = vextq_s8(v49, v50, 8uLL);
              break;
            case 9:
              v49 = vextq_s8(v49, v50, 9uLL);
              break;
            case 10:
              v49 = vextq_s8(v49, v50, 0xAuLL);
              break;
            case 11:
              v49 = vextq_s8(v49, v50, 0xBuLL);
              break;
            case 12:
              v49 = vextq_s8(v49, v50, 0xCuLL);
              break;
            case 13:
              v49 = vextq_s8(v49, v50, 0xDuLL);
              break;
            case 14:
              v49 = vextq_s8(v49, v50, 0xEuLL);
              break;
            case 15:
              v49 = vextq_s8(v49, v50, 0xFuLL);
              break;
            default:
              break;
          }

          a4->i64[0] = vrhaddq_u8(v47, v49).u64[0];
          v46 = (v46 + 16);
          a4 = (a4 + a5);
          --v26;
        }

        while (v26);
        if (v22 == v13)
        {
          return result;
        }

        v32 = (v29 + v5);
        v39 = (v37 + v5);
        if (!v25)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v46 = 0;
        if (!v25)
        {
LABEL_119:
          v51 = a5;
          goto LABEL_466;
        }
      }

      v72 = *(result + v46);
      v73 = *(v38 + v46);
      v74 = *v32;
      v75 = *v39;
      switch(v17)
      {
        case 1:
          v72 = vextq_s8(v72, v73, 1uLL);
          break;
        case 2:
          v72 = vextq_s8(v72, v73, 2uLL);
          break;
        case 3:
          v72 = vextq_s8(v72, v73, 3uLL);
          break;
        case 4:
          v72 = vextq_s8(v72, v73, 4uLL);
          break;
        case 5:
          v72 = vextq_s8(v72, v73, 5uLL);
          break;
        case 6:
          v72 = vextq_s8(v72, v73, 6uLL);
          break;
        case 7:
          v72 = vextq_s8(v72, v73, 7uLL);
          break;
        case 8:
          v72 = vextq_s8(v72, v73, 8uLL);
          break;
        case 9:
          v72 = vextq_s8(v72, v73, 9uLL);
          break;
        case 10:
          v72 = vextq_s8(v72, v73, 0xAuLL);
          break;
        case 11:
          v72 = vextq_s8(v72, v73, 0xBuLL);
          break;
        case 12:
          v72 = vextq_s8(v72, v73, 0xCuLL);
          break;
        case 13:
          v72 = vextq_s8(v72, v73, 0xDuLL);
          break;
        case 14:
          v72 = vextq_s8(v72, v73, 0xEuLL);
          break;
        case 15:
          v72 = vextq_s8(v72, v73, 0xFuLL);
          break;
        default:
          break;
      }

      switch(v24)
      {
        case 1:
          v74 = vextq_s8(v74, v75, 1uLL);
          break;
        case 2:
          v74 = vextq_s8(v74, v75, 2uLL);
          break;
        case 3:
          v74 = vextq_s8(v74, v75, 3uLL);
          break;
        case 4:
          v74 = vextq_s8(v74, v75, 4uLL);
          break;
        case 5:
          v74 = vextq_s8(v74, v75, 5uLL);
          break;
        case 6:
          v74 = vextq_s8(v74, v75, 6uLL);
          break;
        case 7:
          v74 = vextq_s8(v74, v75, 7uLL);
          break;
        case 8:
          v74 = vextq_s8(v74, v75, 8uLL);
          break;
        case 9:
          v74 = vextq_s8(v74, v75, 9uLL);
          break;
        case 10:
          v74 = vextq_s8(v74, v75, 0xAuLL);
          break;
        case 11:
          v74 = vextq_s8(v74, v75, 0xBuLL);
          break;
        case 12:
          v74 = vextq_s8(v74, v75, 0xCuLL);
          break;
        case 13:
          v74 = vextq_s8(v74, v75, 0xDuLL);
          break;
        case 14:
          v74 = vextq_s8(v74, v75, 0xEuLL);
          break;
        case 15:
          v74 = vextq_s8(v74, v75, 0xFuLL);
          break;
        default:
          break;
      }

      a4->i64[0] = vrhaddq_u8(v72, v74).u64[0];
      if (!v23)
      {
        return result;
      }

      ++v32;
      ++v39;
      v51 = a5;
      a4 = (a4 + a5);
LABEL_466:
      v94 = (v28 + v5);
      v95 = v15 + 1;
      do
      {
        v96 = *v94;
        v97 = v94[64];
        v98 = *v32;
        v99 = *v39;
        switch(v17)
        {
          case 1:
            v96 = vextq_s8(v96, v97, 1uLL);
            break;
          case 2:
            v96 = vextq_s8(v96, v97, 2uLL);
            break;
          case 3:
            v96 = vextq_s8(v96, v97, 3uLL);
            break;
          case 4:
            v96 = vextq_s8(v96, v97, 4uLL);
            break;
          case 5:
            v96 = vextq_s8(v96, v97, 5uLL);
            break;
          case 6:
            v96 = vextq_s8(v96, v97, 6uLL);
            break;
          case 7:
            v96 = vextq_s8(v96, v97, 7uLL);
            break;
          case 8:
            v96 = vextq_s8(v96, v97, 8uLL);
            break;
          case 9:
            v96 = vextq_s8(v96, v97, 9uLL);
            break;
          case 10:
            v96 = vextq_s8(v96, v97, 0xAuLL);
            break;
          case 11:
            v96 = vextq_s8(v96, v97, 0xBuLL);
            break;
          case 12:
            v96 = vextq_s8(v96, v97, 0xCuLL);
            break;
          case 13:
            v96 = vextq_s8(v96, v97, 0xDuLL);
            break;
          case 14:
            v96 = vextq_s8(v96, v97, 0xEuLL);
            break;
          case 15:
            v96 = vextq_s8(v96, v97, 0xFuLL);
            break;
          default:
            break;
        }

        switch(v24)
        {
          case 1:
            v98 = vextq_s8(v98, v99, 1uLL);
            break;
          case 2:
            v98 = vextq_s8(v98, v99, 2uLL);
            break;
          case 3:
            v98 = vextq_s8(v98, v99, 3uLL);
            break;
          case 4:
            v98 = vextq_s8(v98, v99, 4uLL);
            break;
          case 5:
            v98 = vextq_s8(v98, v99, 5uLL);
            break;
          case 6:
            v98 = vextq_s8(v98, v99, 6uLL);
            break;
          case 7:
            v98 = vextq_s8(v98, v99, 7uLL);
            break;
          case 8:
            v98 = vextq_s8(v98, v99, 8uLL);
            break;
          case 9:
            v98 = vextq_s8(v98, v99, 9uLL);
            break;
          case 10:
            v98 = vextq_s8(v98, v99, 0xAuLL);
            break;
          case 11:
            v98 = vextq_s8(v98, v99, 0xBuLL);
            break;
          case 12:
            v98 = vextq_s8(v98, v99, 0xCuLL);
            break;
          case 13:
            v98 = vextq_s8(v98, v99, 0xDuLL);
            break;
          case 14:
            v98 = vextq_s8(v98, v99, 0xEuLL);
            break;
          case 15:
            v98 = vextq_s8(v98, v99, 0xFuLL);
            break;
          default:
            break;
        }

        a4->i64[0] = vrhaddq_u8(v96, v98).u64[0];
        a4 = (a4 + v51);
        ++v94;
        ++v32;
        ++v39;
        --v95;
      }

      while (v95);
      return result;
    }

    if (v26)
    {
      LODWORD(v56) = 0;
      do
      {
        v57 = *(result + v56);
        v58 = *(v38 + v56);
        v59 = *(v32 + v56);
        v60 = *(v39 + v56);
        switch(v17)
        {
          case 1:
            v57 = vextq_s8(v57, v58, 1uLL);
            break;
          case 2:
            v57 = vextq_s8(v57, v58, 2uLL);
            break;
          case 3:
            v57 = vextq_s8(v57, v58, 3uLL);
            break;
          case 4:
            v57 = vextq_s8(v57, v58, 4uLL);
            break;
          case 5:
            v57 = vextq_s8(v57, v58, 5uLL);
            break;
          case 6:
            v57 = vextq_s8(v57, v58, 6uLL);
            break;
          case 7:
            v57 = vextq_s8(v57, v58, 7uLL);
            break;
          case 8:
            v57 = vextq_s8(v57, v58, 8uLL);
            break;
          case 9:
            v57 = vextq_s8(v57, v58, 9uLL);
            break;
          case 10:
            v57 = vextq_s8(v57, v58, 0xAuLL);
            break;
          case 11:
            v57 = vextq_s8(v57, v58, 0xBuLL);
            break;
          case 12:
            v57 = vextq_s8(v57, v58, 0xCuLL);
            break;
          case 13:
            v57 = vextq_s8(v57, v58, 0xDuLL);
            break;
          case 14:
            v57 = vextq_s8(v57, v58, 0xEuLL);
            break;
          case 15:
            v57 = vextq_s8(v57, v58, 0xFuLL);
            break;
          default:
            break;
        }

        switch(v24)
        {
          case 1:
            v59 = vextq_s8(v59, v60, 1uLL);
            break;
          case 2:
            v59 = vextq_s8(v59, v60, 2uLL);
            break;
          case 3:
            v59 = vextq_s8(v59, v60, 3uLL);
            break;
          case 4:
            v59 = vextq_s8(v59, v60, 4uLL);
            break;
          case 5:
            v59 = vextq_s8(v59, v60, 5uLL);
            break;
          case 6:
            v59 = vextq_s8(v59, v60, 6uLL);
            break;
          case 7:
            v59 = vextq_s8(v59, v60, 7uLL);
            break;
          case 8:
            v59 = vextq_s8(v59, v60, 8uLL);
            break;
          case 9:
            v59 = vextq_s8(v59, v60, 9uLL);
            break;
          case 10:
            v59 = vextq_s8(v59, v60, 0xAuLL);
            break;
          case 11:
            v59 = vextq_s8(v59, v60, 0xBuLL);
            break;
          case 12:
            v59 = vextq_s8(v59, v60, 0xCuLL);
            break;
          case 13:
            v59 = vextq_s8(v59, v60, 0xDuLL);
            break;
          case 14:
            v59 = vextq_s8(v59, v60, 0xEuLL);
            break;
          case 15:
            v59 = vextq_s8(v59, v60, 0xFuLL);
            break;
          default:
            break;
        }

        a4->i32[0] = vrhaddq_u8(v57, v59).u32[0];
        v56 = (v56 + 16);
        a4 = (a4 + a5);
        --v26;
      }

      while (v26);
      if (v22 == v13)
      {
        return result;
      }

      v32 = (v29 + v5);
      v39 = (v37 + v5);
      if (!v25)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v56 = 0;
      if (!v25)
      {
LABEL_196:
        v61 = a5;
        goto LABEL_504;
      }
    }

    v76 = *(result + v56);
    v77 = *(v38 + v56);
    v78 = *v32;
    v79 = *v39;
    switch(v17)
    {
      case 1:
        v76 = vextq_s8(v76, v77, 1uLL);
        break;
      case 2:
        v76 = vextq_s8(v76, v77, 2uLL);
        break;
      case 3:
        v76 = vextq_s8(v76, v77, 3uLL);
        break;
      case 4:
        v76 = vextq_s8(v76, v77, 4uLL);
        break;
      case 5:
        v76 = vextq_s8(v76, v77, 5uLL);
        break;
      case 6:
        v76 = vextq_s8(v76, v77, 6uLL);
        break;
      case 7:
        v76 = vextq_s8(v76, v77, 7uLL);
        break;
      case 8:
        v76 = vextq_s8(v76, v77, 8uLL);
        break;
      case 9:
        v76 = vextq_s8(v76, v77, 9uLL);
        break;
      case 10:
        v76 = vextq_s8(v76, v77, 0xAuLL);
        break;
      case 11:
        v76 = vextq_s8(v76, v77, 0xBuLL);
        break;
      case 12:
        v76 = vextq_s8(v76, v77, 0xCuLL);
        break;
      case 13:
        v76 = vextq_s8(v76, v77, 0xDuLL);
        break;
      case 14:
        v76 = vextq_s8(v76, v77, 0xEuLL);
        break;
      case 15:
        v76 = vextq_s8(v76, v77, 0xFuLL);
        break;
      default:
        break;
    }

    switch(v24)
    {
      case 1:
        v78 = vextq_s8(v78, v79, 1uLL);
        break;
      case 2:
        v78 = vextq_s8(v78, v79, 2uLL);
        break;
      case 3:
        v78 = vextq_s8(v78, v79, 3uLL);
        break;
      case 4:
        v78 = vextq_s8(v78, v79, 4uLL);
        break;
      case 5:
        v78 = vextq_s8(v78, v79, 5uLL);
        break;
      case 6:
        v78 = vextq_s8(v78, v79, 6uLL);
        break;
      case 7:
        v78 = vextq_s8(v78, v79, 7uLL);
        break;
      case 8:
        v78 = vextq_s8(v78, v79, 8uLL);
        break;
      case 9:
        v78 = vextq_s8(v78, v79, 9uLL);
        break;
      case 10:
        v78 = vextq_s8(v78, v79, 0xAuLL);
        break;
      case 11:
        v78 = vextq_s8(v78, v79, 0xBuLL);
        break;
      case 12:
        v78 = vextq_s8(v78, v79, 0xCuLL);
        break;
      case 13:
        v78 = vextq_s8(v78, v79, 0xDuLL);
        break;
      case 14:
        v78 = vextq_s8(v78, v79, 0xEuLL);
        break;
      case 15:
        v78 = vextq_s8(v78, v79, 0xFuLL);
        break;
      default:
        break;
    }

    a4->i32[0] = vrhaddq_u8(v76, v78).u32[0];
    if (!v23)
    {
      return result;
    }

    ++v32;
    ++v39;
    v61 = a5;
    a4 = (a4 + a5);
LABEL_504:
    v100 = (v28 + v5);
    v101 = v15 + 1;
    do
    {
      v102 = *v100;
      v103 = v100[64];
      v104 = *v32;
      v105 = *v39;
      switch(v17)
      {
        case 1:
          v102 = vextq_s8(v102, v103, 1uLL);
          break;
        case 2:
          v102 = vextq_s8(v102, v103, 2uLL);
          break;
        case 3:
          v102 = vextq_s8(v102, v103, 3uLL);
          break;
        case 4:
          v102 = vextq_s8(v102, v103, 4uLL);
          break;
        case 5:
          v102 = vextq_s8(v102, v103, 5uLL);
          break;
        case 6:
          v102 = vextq_s8(v102, v103, 6uLL);
          break;
        case 7:
          v102 = vextq_s8(v102, v103, 7uLL);
          break;
        case 8:
          v102 = vextq_s8(v102, v103, 8uLL);
          break;
        case 9:
          v102 = vextq_s8(v102, v103, 9uLL);
          break;
        case 10:
          v102 = vextq_s8(v102, v103, 0xAuLL);
          break;
        case 11:
          v102 = vextq_s8(v102, v103, 0xBuLL);
          break;
        case 12:
          v102 = vextq_s8(v102, v103, 0xCuLL);
          break;
        case 13:
          v102 = vextq_s8(v102, v103, 0xDuLL);
          break;
        case 14:
          v102 = vextq_s8(v102, v103, 0xEuLL);
          break;
        case 15:
          v102 = vextq_s8(v102, v103, 0xFuLL);
          break;
        default:
          break;
      }

      switch(v24)
      {
        case 1:
          v104 = vextq_s8(v104, v105, 1uLL);
          break;
        case 2:
          v104 = vextq_s8(v104, v105, 2uLL);
          break;
        case 3:
          v104 = vextq_s8(v104, v105, 3uLL);
          break;
        case 4:
          v104 = vextq_s8(v104, v105, 4uLL);
          break;
        case 5:
          v104 = vextq_s8(v104, v105, 5uLL);
          break;
        case 6:
          v104 = vextq_s8(v104, v105, 6uLL);
          break;
        case 7:
          v104 = vextq_s8(v104, v105, 7uLL);
          break;
        case 8:
          v104 = vextq_s8(v104, v105, 8uLL);
          break;
        case 9:
          v104 = vextq_s8(v104, v105, 9uLL);
          break;
        case 10:
          v104 = vextq_s8(v104, v105, 0xAuLL);
          break;
        case 11:
          v104 = vextq_s8(v104, v105, 0xBuLL);
          break;
        case 12:
          v104 = vextq_s8(v104, v105, 0xCuLL);
          break;
        case 13:
          v104 = vextq_s8(v104, v105, 0xDuLL);
          break;
        case 14:
          v104 = vextq_s8(v104, v105, 0xEuLL);
          break;
        case 15:
          v104 = vextq_s8(v104, v105, 0xFuLL);
          break;
        default:
          break;
      }

      a4->i32[0] = vrhaddq_u8(v102, v104).u32[0];
      a4 = (a4 + v61);
      ++v100;
      ++v32;
      ++v39;
      --v101;
    }

    while (v101);
    return result;
  }

  if (v18 < 8)
  {
    if (v18 == 7)
    {
      if (v26)
      {
        LODWORD(v52) = 0;
        do
        {
          v53 = *(result + v52);
          v54 = *(v32 + v52);
          switch(v17)
          {
            case 1:
              v53 = vextq_s8(v53, vdupq_lane_s8(*v53.i8, 1), 1uLL);
              break;
            case 2:
              v53 = vextq_s8(v53, vdupq_lane_s16(*v53.i8, 1), 2uLL);
              break;
            case 3:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 3uLL), 3uLL);
              break;
            case 4:
              v53 = vextq_s8(v53, vdupq_lane_s32(*v53.i8, 1), 4uLL);
              break;
            case 5:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 5uLL), 5uLL);
              break;
            case 6:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 6uLL), 6uLL);
              break;
            case 7:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 7uLL), 7uLL);
              break;
            case 8:
              v53 = vdupq_laneq_s64(v53, 1);
              break;
            case 9:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 9uLL), 9uLL);
              break;
            case 10:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 0xAuLL), 0xAuLL);
              break;
            case 11:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 0xBuLL), 0xBuLL);
              break;
            case 12:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 0xCuLL), 0xCuLL);
              break;
            case 13:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 0xDuLL), 0xDuLL);
              break;
            case 14:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 0xEuLL), 0xEuLL);
              break;
            case 15:
              v53 = vextq_s8(v53, vextq_s8(v53, 0, 0xFuLL), 0xFuLL);
              break;
            default:
              break;
          }

          switch(v21 & 0xF)
          {
            case 1:
              v54 = vextq_s8(v54, vdupq_lane_s8(*v54.i8, 1), 1uLL);
              break;
            case 2:
              v54 = vextq_s8(v54, vdupq_lane_s16(*v54.i8, 1), 2uLL);
              break;
            case 3:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 3uLL), 3uLL);
              break;
            case 4:
              v54 = vextq_s8(v54, vdupq_lane_s32(*v54.i8, 1), 4uLL);
              break;
            case 5:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 5uLL), 5uLL);
              break;
            case 6:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 6uLL), 6uLL);
              break;
            case 7:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 7uLL), 7uLL);
              break;
            case 8:
              v54 = vdupq_laneq_s64(v54, 1);
              break;
            case 9:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 9uLL), 9uLL);
              break;
            case 0xA:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 0xAuLL), 0xAuLL);
              break;
            case 0xB:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 0xBuLL), 0xBuLL);
              break;
            case 0xC:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 0xCuLL), 0xCuLL);
              break;
            case 0xD:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 0xDuLL), 0xDuLL);
              break;
            case 0xE:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 0xEuLL), 0xEuLL);
              break;
            case 0xF:
              v54 = vextq_s8(v54, vextq_s8(v54, 0, 0xFuLL), 0xFuLL);
              break;
            default:
              break;
          }

          a4->i64[0] = vrhaddq_u8(v53, v54).u64[0];
          v52 = (v52 + 16);
          a4 = (a4 + a5);
          --v26;
        }

        while (v26);
        if (v22 == v13)
        {
          return result;
        }

        v32 = (v29 + v5);
        if (!v25)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v52 = 0;
        if (!v25)
        {
LABEL_158:
          v55 = a5;
          goto LABEL_582;
        }
      }

      v80 = *(result + v52);
      v81 = *v32;
      switch(v17)
      {
        case 1:
          v80 = vextq_s8(v80, vdupq_lane_s8(*v80.i8, 1), 1uLL);
          break;
        case 2:
          v80 = vextq_s8(v80, vdupq_lane_s16(*v80.i8, 1), 2uLL);
          break;
        case 3:
          v80 = vextq_s8(v80, vextq_s8(v80, v80, 3uLL), 3uLL);
          break;
        case 4:
          v80 = vextq_s8(v80, vdupq_lane_s32(*v80.i8, 1), 4uLL);
          break;
        case 5:
          v80 = vextq_s8(v80, vextq_s8(v80, v80, 5uLL), 5uLL);
          break;
        case 6:
          v80 = vextq_s8(v80, vextq_s8(v80, v80, 6uLL), 6uLL);
          break;
        case 7:
          v80 = vextq_s8(v80, vextq_s8(v80, v80, 7uLL), 7uLL);
          break;
        case 8:
          v80 = vdupq_laneq_s64(v80, 1);
          break;
        case 9:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 9uLL), 9uLL);
          break;
        case 10:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 0xAuLL), 0xAuLL);
          break;
        case 11:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 0xBuLL), 0xBuLL);
          break;
        case 12:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 0xCuLL), 0xCuLL);
          break;
        case 13:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 0xDuLL), 0xDuLL);
          break;
        case 14:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 0xEuLL), 0xEuLL);
          break;
        case 15:
          v80 = vextq_s8(v80, vextq_s8(v80, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      switch(v21 & 0xF)
      {
        case 1:
          v81 = vextq_s8(v81, vdupq_lane_s8(*v81.i8, 1), 1uLL);
          break;
        case 2:
          v81 = vextq_s8(v81, vdupq_lane_s16(*v81.i8, 1), 2uLL);
          break;
        case 3:
          v81 = vextq_s8(v81, vextq_s8(v81, v80, 3uLL), 3uLL);
          break;
        case 4:
          v81 = vextq_s8(v81, vdupq_lane_s32(*v81.i8, 1), 4uLL);
          break;
        case 5:
          v81 = vextq_s8(v81, vextq_s8(v81, v80, 5uLL), 5uLL);
          break;
        case 6:
          v81 = vextq_s8(v81, vextq_s8(v81, v80, 6uLL), 6uLL);
          break;
        case 7:
          v81 = vextq_s8(v81, vextq_s8(v81, v80, 7uLL), 7uLL);
          break;
        case 8:
          v81 = vdupq_laneq_s64(v81, 1);
          break;
        case 9:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 9uLL), 9uLL);
          break;
        case 0xA:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 0xAuLL), 0xAuLL);
          break;
        case 0xB:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 0xBuLL), 0xBuLL);
          break;
        case 0xC:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 0xCuLL), 0xCuLL);
          break;
        case 0xD:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 0xDuLL), 0xDuLL);
          break;
        case 0xE:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 0xEuLL), 0xEuLL);
          break;
        case 0xF:
          v81 = vextq_s8(v81, vextq_s8(v81, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      a4->i64[0] = vrhaddq_u8(v80, v81).u64[0];
      if (!v23)
      {
        return result;
      }

      ++v32;
      v55 = a5;
      a4 = (a4 + a5);
LABEL_582:
      v106 = (v28 + v5);
      v107 = v15 + 1;
      do
      {
        v108 = *v106;
        v109 = *v32;
        switch(v17)
        {
          case 1:
            v108 = vextq_s8(v108, vdupq_lane_s8(*v108.i8, 1), 1uLL);
            break;
          case 2:
            v108 = vextq_s8(v108, vdupq_lane_s16(*v108.i8, 1), 2uLL);
            break;
          case 3:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 3uLL), 3uLL);
            break;
          case 4:
            v108 = vextq_s8(v108, vdupq_lane_s32(*v108.i8, 1), 4uLL);
            break;
          case 5:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 5uLL), 5uLL);
            break;
          case 6:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 6uLL), 6uLL);
            break;
          case 7:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 7uLL), 7uLL);
            break;
          case 8:
            v108 = vdupq_laneq_s64(v108, 1);
            break;
          case 9:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 9uLL), 9uLL);
            break;
          case 10:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 0xAuLL), 0xAuLL);
            break;
          case 11:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 0xBuLL), 0xBuLL);
            break;
          case 12:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 0xCuLL), 0xCuLL);
            break;
          case 13:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 0xDuLL), 0xDuLL);
            break;
          case 14:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 0xEuLL), 0xEuLL);
            break;
          case 15:
            v108 = vextq_s8(v108, vextq_s8(v108, 0, 0xFuLL), 0xFuLL);
            break;
          default:
            break;
        }

        switch(v21 & 0xF)
        {
          case 1:
            v109 = vextq_s8(v109, vdupq_lane_s8(*v109.i8, 1), 1uLL);
            break;
          case 2:
            v109 = vextq_s8(v109, vdupq_lane_s16(*v109.i8, 1), 2uLL);
            break;
          case 3:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 3uLL), 3uLL);
            break;
          case 4:
            v109 = vextq_s8(v109, vdupq_lane_s32(*v109.i8, 1), 4uLL);
            break;
          case 5:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 5uLL), 5uLL);
            break;
          case 6:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 6uLL), 6uLL);
            break;
          case 7:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 7uLL), 7uLL);
            break;
          case 8:
            v109 = vdupq_laneq_s64(v109, 1);
            break;
          case 9:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 9uLL), 9uLL);
            break;
          case 0xA:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 0xAuLL), 0xAuLL);
            break;
          case 0xB:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 0xBuLL), 0xBuLL);
            break;
          case 0xC:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 0xCuLL), 0xCuLL);
            break;
          case 0xD:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 0xDuLL), 0xDuLL);
            break;
          case 0xE:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 0xEuLL), 0xEuLL);
            break;
          case 0xF:
            v109 = vextq_s8(v109, vextq_s8(v109, 0, 0xFuLL), 0xFuLL);
            break;
          default:
            break;
        }

        a4->i64[0] = vrhaddq_u8(v108, v109).u64[0];
        a4 = (a4 + v55);
        ++v106;
        ++v32;
        --v107;
      }

      while (v107);
      return result;
    }

    if (v26)
    {
      LODWORD(v62) = 0;
      do
      {
        v63 = *(result + v62);
        v64 = *(v32 + v62);
        switch(v17)
        {
          case 1:
            v63 = vextq_s8(v63, vdupq_lane_s8(*v63.i8, 1), 1uLL);
            break;
          case 2:
            v63 = vextq_s8(v63, vdupq_lane_s16(*v63.i8, 1), 2uLL);
            break;
          case 3:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 3uLL), 3uLL);
            break;
          case 4:
            v63 = vextq_s8(v63, vdupq_lane_s32(*v63.i8, 1), 4uLL);
            break;
          case 5:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 5uLL), 5uLL);
            break;
          case 6:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 6uLL), 6uLL);
            break;
          case 7:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 7uLL), 7uLL);
            break;
          case 8:
            v63 = vdupq_laneq_s64(v63, 1);
            break;
          case 9:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 9uLL), 9uLL);
            break;
          case 10:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 0xAuLL), 0xAuLL);
            break;
          case 11:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 0xBuLL), 0xBuLL);
            break;
          case 12:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 0xCuLL), 0xCuLL);
            break;
          case 13:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 0xDuLL), 0xDuLL);
            break;
          case 14:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 0xEuLL), 0xEuLL);
            break;
          case 15:
            v63 = vextq_s8(v63, vextq_s8(v63, 0, 0xFuLL), 0xFuLL);
            break;
          default:
            break;
        }

        switch(v21 & 0xF)
        {
          case 1:
            v64 = vextq_s8(v64, vdupq_lane_s8(*v64.i8, 1), 1uLL);
            break;
          case 2:
            v64 = vextq_s8(v64, vdupq_lane_s16(*v64.i8, 1), 2uLL);
            break;
          case 3:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 3uLL), 3uLL);
            break;
          case 4:
            v64 = vextq_s8(v64, vdupq_lane_s32(*v64.i8, 1), 4uLL);
            break;
          case 5:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 5uLL), 5uLL);
            break;
          case 6:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 6uLL), 6uLL);
            break;
          case 7:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 7uLL), 7uLL);
            break;
          case 8:
            v64 = vdupq_laneq_s64(v64, 1);
            break;
          case 9:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 9uLL), 9uLL);
            break;
          case 0xA:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 0xAuLL), 0xAuLL);
            break;
          case 0xB:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 0xBuLL), 0xBuLL);
            break;
          case 0xC:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 0xCuLL), 0xCuLL);
            break;
          case 0xD:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 0xDuLL), 0xDuLL);
            break;
          case 0xE:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 0xEuLL), 0xEuLL);
            break;
          case 0xF:
            v64 = vextq_s8(v64, vextq_s8(v64, 0, 0xFuLL), 0xFuLL);
            break;
          default:
            break;
        }

        a4->i32[0] = vrhaddq_u8(v63, v64).u32[0];
        v62 = (v62 + 16);
        a4 = (a4 + a5);
        --v26;
      }

      while (v26);
      if (v22 == v13)
      {
        return result;
      }

      v32 = (v29 + v5);
      if (!v25)
      {
        goto LABEL_234;
      }
    }

    else
    {
      v62 = 0;
      if (!v25)
      {
LABEL_234:
        v65 = a5;
        goto LABEL_620;
      }
    }

    v82 = *(result + v62);
    v83 = *v32;
    switch(v17)
    {
      case 1:
        v82 = vextq_s8(v82, vdupq_lane_s8(*v82.i8, 1), 1uLL);
        break;
      case 2:
        v82 = vextq_s8(v82, vdupq_lane_s16(*v82.i8, 1), 2uLL);
        break;
      case 3:
        v82 = vextq_s8(v82, vextq_s8(v82, v82, 3uLL), 3uLL);
        break;
      case 4:
        v82 = vextq_s8(v82, vdupq_lane_s32(*v82.i8, 1), 4uLL);
        break;
      case 5:
        v82 = vextq_s8(v82, vextq_s8(v82, v82, 5uLL), 5uLL);
        break;
      case 6:
        v82 = vextq_s8(v82, vextq_s8(v82, v82, 6uLL), 6uLL);
        break;
      case 7:
        v82 = vextq_s8(v82, vextq_s8(v82, v82, 7uLL), 7uLL);
        break;
      case 8:
        v82 = vdupq_laneq_s64(v82, 1);
        break;
      case 9:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 9uLL), 9uLL);
        break;
      case 10:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 0xAuLL), 0xAuLL);
        break;
      case 11:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 0xBuLL), 0xBuLL);
        break;
      case 12:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 0xCuLL), 0xCuLL);
        break;
      case 13:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 0xDuLL), 0xDuLL);
        break;
      case 14:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 0xEuLL), 0xEuLL);
        break;
      case 15:
        v82 = vextq_s8(v82, vextq_s8(v82, 0, 0xFuLL), 0xFuLL);
        break;
      default:
        break;
    }

    switch(v21 & 0xF)
    {
      case 1:
        v83 = vextq_s8(v83, vdupq_lane_s8(*v83.i8, 1), 1uLL);
        break;
      case 2:
        v83 = vextq_s8(v83, vdupq_lane_s16(*v83.i8, 1), 2uLL);
        break;
      case 3:
        v83 = vextq_s8(v83, vextq_s8(v83, v82, 3uLL), 3uLL);
        break;
      case 4:
        v83 = vextq_s8(v83, vdupq_lane_s32(*v83.i8, 1), 4uLL);
        break;
      case 5:
        v83 = vextq_s8(v83, vextq_s8(v83, v82, 5uLL), 5uLL);
        break;
      case 6:
        v83 = vextq_s8(v83, vextq_s8(v83, v82, 6uLL), 6uLL);
        break;
      case 7:
        v83 = vextq_s8(v83, vextq_s8(v83, v82, 7uLL), 7uLL);
        break;
      case 8:
        v83 = vdupq_laneq_s64(v83, 1);
        break;
      case 9:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 9uLL), 9uLL);
        break;
      case 0xA:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 0xAuLL), 0xAuLL);
        break;
      case 0xB:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 0xBuLL), 0xBuLL);
        break;
      case 0xC:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 0xCuLL), 0xCuLL);
        break;
      case 0xD:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 0xDuLL), 0xDuLL);
        break;
      case 0xE:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 0xEuLL), 0xEuLL);
        break;
      case 0xF:
        v83 = vextq_s8(v83, vextq_s8(v83, 0, 0xFuLL), 0xFuLL);
        break;
      default:
        break;
    }

    a4->i32[0] = vrhaddq_u8(v82, v83).u32[0];
    if (!v23)
    {
      return result;
    }

    ++v32;
    v65 = a5;
    a4 = (a4 + a5);
LABEL_620:
    v110 = (v28 + v5);
    v111 = v15 + 1;
    do
    {
      v112 = *v110;
      v113 = *v32;
      switch(v17)
      {
        case 1:
          v112 = vextq_s8(v112, vdupq_lane_s8(*v112.i8, 1), 1uLL);
          break;
        case 2:
          v112 = vextq_s8(v112, vdupq_lane_s16(*v112.i8, 1), 2uLL);
          break;
        case 3:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 3uLL), 3uLL);
          break;
        case 4:
          v112 = vextq_s8(v112, vdupq_lane_s32(*v112.i8, 1), 4uLL);
          break;
        case 5:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 5uLL), 5uLL);
          break;
        case 6:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 6uLL), 6uLL);
          break;
        case 7:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 7uLL), 7uLL);
          break;
        case 8:
          v112 = vdupq_laneq_s64(v112, 1);
          break;
        case 9:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 9uLL), 9uLL);
          break;
        case 10:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 0xAuLL), 0xAuLL);
          break;
        case 11:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 0xBuLL), 0xBuLL);
          break;
        case 12:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 0xCuLL), 0xCuLL);
          break;
        case 13:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 0xDuLL), 0xDuLL);
          break;
        case 14:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 0xEuLL), 0xEuLL);
          break;
        case 15:
          v112 = vextq_s8(v112, vextq_s8(v112, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      switch(v21 & 0xF)
      {
        case 1:
          v113 = vextq_s8(v113, vdupq_lane_s8(*v113.i8, 1), 1uLL);
          break;
        case 2:
          v113 = vextq_s8(v113, vdupq_lane_s16(*v113.i8, 1), 2uLL);
          break;
        case 3:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 3uLL), 3uLL);
          break;
        case 4:
          v113 = vextq_s8(v113, vdupq_lane_s32(*v113.i8, 1), 4uLL);
          break;
        case 5:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 5uLL), 5uLL);
          break;
        case 6:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 6uLL), 6uLL);
          break;
        case 7:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 7uLL), 7uLL);
          break;
        case 8:
          v113 = vdupq_laneq_s64(v113, 1);
          break;
        case 9:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 9uLL), 9uLL);
          break;
        case 0xA:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 0xAuLL), 0xAuLL);
          break;
        case 0xB:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 0xBuLL), 0xBuLL);
          break;
        case 0xC:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 0xCuLL), 0xCuLL);
          break;
        case 0xD:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 0xDuLL), 0xDuLL);
          break;
        case 0xE:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 0xEuLL), 0xEuLL);
          break;
        case 0xF:
          v113 = vextq_s8(v113, vextq_s8(v113, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      a4->i32[0] = vrhaddq_u8(v112, v113).u32[0];
      a4 = (a4 + v65);
      ++v110;
      ++v32;
      --v111;
    }

    while (v111);
    return result;
  }

  if (v26)
  {
    LODWORD(v33) = 0;
    do
    {
      v34 = *(result + v33);
      v35 = *(v32 + v33);
      switch(v17)
      {
        case 1:
          v34 = vextq_s8(v34, vdupq_lane_s8(*v34.i8, 1), 1uLL);
          break;
        case 2:
          v34 = vextq_s8(v34, vdupq_lane_s16(*v34.i8, 1), 2uLL);
          break;
        case 3:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 3uLL), 3uLL);
          break;
        case 4:
          v34 = vextq_s8(v34, vdupq_lane_s32(*v34.i8, 1), 4uLL);
          break;
        case 5:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 5uLL), 5uLL);
          break;
        case 6:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 6uLL), 6uLL);
          break;
        case 7:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 7uLL), 7uLL);
          break;
        case 8:
          v34 = vdupq_laneq_s64(v34, 1);
          break;
        case 9:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 9uLL), 9uLL);
          break;
        case 10:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 0xAuLL), 0xAuLL);
          break;
        case 11:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 0xBuLL), 0xBuLL);
          break;
        case 12:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 0xCuLL), 0xCuLL);
          break;
        case 13:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 0xDuLL), 0xDuLL);
          break;
        case 14:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 0xEuLL), 0xEuLL);
          break;
        case 15:
          v34 = vextq_s8(v34, vextq_s8(v34, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      switch(v21 & 0xF)
      {
        case 1:
          v35 = vextq_s8(v35, vdupq_lane_s8(*v35.i8, 1), 1uLL);
          break;
        case 2:
          v35 = vextq_s8(v35, vdupq_lane_s16(*v35.i8, 1), 2uLL);
          break;
        case 3:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 3uLL), 3uLL);
          break;
        case 4:
          v35 = vextq_s8(v35, vdupq_lane_s32(*v35.i8, 1), 4uLL);
          break;
        case 5:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 5uLL), 5uLL);
          break;
        case 6:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 6uLL), 6uLL);
          break;
        case 7:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 7uLL), 7uLL);
          break;
        case 8:
          v35 = vdupq_laneq_s64(v35, 1);
          break;
        case 9:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 9uLL), 9uLL);
          break;
        case 0xA:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 0xAuLL), 0xAuLL);
          break;
        case 0xB:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 0xBuLL), 0xBuLL);
          break;
        case 0xC:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 0xCuLL), 0xCuLL);
          break;
        case 0xD:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 0xDuLL), 0xDuLL);
          break;
        case 0xE:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 0xEuLL), 0xEuLL);
          break;
        case 0xF:
          v35 = vextq_s8(v35, vextq_s8(v35, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      *a4 = vrhaddq_u8(v34, v35);
      v33 = (v33 + 16);
      a4 = (a4 + a5);
      --v26;
    }

    while (v26);
    if (v22 == v13)
    {
      return result;
    }

    v32 = (v29 + v5);
    if (!v25)
    {
LABEL_41:
      v36 = a5;
      goto LABEL_352;
    }
  }

  else
  {
    v33 = 0;
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  v70 = *(result + v33);
  v71 = *v32;
  switch(v17)
  {
    case 1:
      v70 = vextq_s8(v70, vdupq_lane_s8(*v70.i8, 1), 1uLL);
      break;
    case 2:
      v70 = vextq_s8(v70, vdupq_lane_s16(*v70.i8, 1), 2uLL);
      break;
    case 3:
      v70 = vextq_s8(v70, vextq_s8(v70, v70, 3uLL), 3uLL);
      break;
    case 4:
      v70 = vextq_s8(v70, vdupq_lane_s32(*v70.i8, 1), 4uLL);
      break;
    case 5:
      v70 = vextq_s8(v70, vextq_s8(v70, v70, 5uLL), 5uLL);
      break;
    case 6:
      v70 = vextq_s8(v70, vextq_s8(v70, v70, 6uLL), 6uLL);
      break;
    case 7:
      v70 = vextq_s8(v70, vextq_s8(v70, v70, 7uLL), 7uLL);
      break;
    case 8:
      v70 = vdupq_laneq_s64(v70, 1);
      break;
    case 9:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 9uLL), 9uLL);
      break;
    case 10:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 0xAuLL), 0xAuLL);
      break;
    case 11:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 0xBuLL), 0xBuLL);
      break;
    case 12:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 0xCuLL), 0xCuLL);
      break;
    case 13:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 0xDuLL), 0xDuLL);
      break;
    case 14:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 0xEuLL), 0xEuLL);
      break;
    case 15:
      v70 = vextq_s8(v70, vextq_s8(v70, 0, 0xFuLL), 0xFuLL);
      break;
    default:
      break;
  }

  switch(v21 & 0xF)
  {
    case 1:
      v71 = vextq_s8(v71, vdupq_lane_s8(*v71.i8, 1), 1uLL);
      break;
    case 2:
      v71 = vextq_s8(v71, vdupq_lane_s16(*v71.i8, 1), 2uLL);
      break;
    case 3:
      v71 = vextq_s8(v71, vextq_s8(v71, v70, 3uLL), 3uLL);
      break;
    case 4:
      v71 = vextq_s8(v71, vdupq_lane_s32(*v71.i8, 1), 4uLL);
      break;
    case 5:
      v71 = vextq_s8(v71, vextq_s8(v71, v70, 5uLL), 5uLL);
      break;
    case 6:
      v71 = vextq_s8(v71, vextq_s8(v71, v70, 6uLL), 6uLL);
      break;
    case 7:
      v71 = vextq_s8(v71, vextq_s8(v71, v70, 7uLL), 7uLL);
      break;
    case 8:
      v71 = vdupq_laneq_s64(v71, 1);
      break;
    case 9:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 9uLL), 9uLL);
      break;
    case 0xA:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 0xAuLL), 0xAuLL);
      break;
    case 0xB:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 0xBuLL), 0xBuLL);
      break;
    case 0xC:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 0xCuLL), 0xCuLL);
      break;
    case 0xD:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 0xDuLL), 0xDuLL);
      break;
    case 0xE:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 0xEuLL), 0xEuLL);
      break;
    case 0xF:
      v71 = vextq_s8(v71, vextq_s8(v71, 0, 0xFuLL), 0xFuLL);
      break;
    default:
      break;
  }

  *a4 = vrhaddq_u8(v70, v71);
  if (v23)
  {
    ++v32;
    v36 = a5;
    a4 = (a4 + a5);
LABEL_352:
    v90 = (v28 + v5);
    v91 = v15 + 1;
    do
    {
      v92 = *v90;
      v93 = *v32;
      switch(v17)
      {
        case 1:
          v92 = vextq_s8(v92, vdupq_lane_s8(*v92.i8, 1), 1uLL);
          break;
        case 2:
          v92 = vextq_s8(v92, vdupq_lane_s16(*v92.i8, 1), 2uLL);
          break;
        case 3:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 3uLL), 3uLL);
          break;
        case 4:
          v92 = vextq_s8(v92, vdupq_lane_s32(*v92.i8, 1), 4uLL);
          break;
        case 5:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 5uLL), 5uLL);
          break;
        case 6:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 6uLL), 6uLL);
          break;
        case 7:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 7uLL), 7uLL);
          break;
        case 8:
          v92 = vdupq_laneq_s64(v92, 1);
          break;
        case 9:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 9uLL), 9uLL);
          break;
        case 10:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 0xAuLL), 0xAuLL);
          break;
        case 11:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 0xBuLL), 0xBuLL);
          break;
        case 12:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 0xCuLL), 0xCuLL);
          break;
        case 13:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 0xDuLL), 0xDuLL);
          break;
        case 14:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 0xEuLL), 0xEuLL);
          break;
        case 15:
          v92 = vextq_s8(v92, vextq_s8(v92, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      switch(v21 & 0xF)
      {
        case 1:
          v93 = vextq_s8(v93, vdupq_lane_s8(*v93.i8, 1), 1uLL);
          break;
        case 2:
          v93 = vextq_s8(v93, vdupq_lane_s16(*v93.i8, 1), 2uLL);
          break;
        case 3:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 3uLL), 3uLL);
          break;
        case 4:
          v93 = vextq_s8(v93, vdupq_lane_s32(*v93.i8, 1), 4uLL);
          break;
        case 5:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 5uLL), 5uLL);
          break;
        case 6:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 6uLL), 6uLL);
          break;
        case 7:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 7uLL), 7uLL);
          break;
        case 8:
          v93 = vdupq_laneq_s64(v93, 1);
          break;
        case 9:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 9uLL), 9uLL);
          break;
        case 0xA:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 0xAuLL), 0xAuLL);
          break;
        case 0xB:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 0xBuLL), 0xBuLL);
          break;
        case 0xC:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 0xCuLL), 0xCuLL);
          break;
        case 0xD:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 0xDuLL), 0xDuLL);
          break;
        case 0xE:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 0xEuLL), 0xEuLL);
          break;
        case 0xF:
          v93 = vextq_s8(v93, vextq_s8(v93, 0, 0xFuLL), 0xFuLL);
          break;
        default:
          break;
      }

      *a4 = vrhaddq_u8(v92, v93);
      a4 = (a4 + v36);
      ++v90;
      ++v32;
      --v91;
    }

    while (v91);
  }

  return result;
}

uint64_t sub_277288BA0(uint64_t result, int *a2, unsigned int a3, _BYTE *a4, unsigned int a5, int a6, int a7, uint64_t a8, _DWORD *a9, int a10)
{
  v70 = *MEMORY[0x277D85DE8];
  v14 = *(result + 40);
  v15 = a2[2];
  v16 = a2[4];
  v17 = *a2 >> 4;
  v18 = v16 - *a2;
  v19 = v15 & 0xF;
  v20 = a2[6] >> 4;
  v63 = a2[6] & 0xF;
  v64 = (((v15 >> 4) - v20) & 0xF | v63 & ~((v15 >> 4) - v20)) - (v15 & 0xF);
  v21 = *(result + 32) + (((v15 >> 4) + 2) * v14) + (*a2 >> 4 << 10) + (a3 << 8) + 2048;
  v22 = (v21 + v14);
  v23 = __clz(v18 | 1);
  if (v16 == *a2)
  {
    ++v23;
  }

  v24 = (v21 + 16 * v19);
  v69 = *(&xmmword_2773B3E60[*a2 & 0xFLL] + 7680 - (v23 << 8));
  v59 = v20;
  v60 = v15 >> 4;
  if (v17 == v16 >> 4)
  {
    if (v18 < 8)
    {
      if (v18 == 7)
      {
        if (v64 != -1)
        {
          v38 = 0;
          do
          {
            v39 = 0;
            v68 = *v24;
            do
            {
              *(&v67 + v39) = *(&v68 | *(&v69 + v39) & 0xF);
              ++v39;
            }

            while (v39 != 16);
            if (a6)
            {
              result = sub_27728EE88(8, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v24;
            a4 += a5;
            v27 = v38++ == v64;
          }

          while (!v27);
        }

        if (v60 != v59)
        {
          v40 = 0;
          do
          {
            v41 = 0;
            v68 = *v22;
            do
            {
              *(&v67 + v41) = *(&v68 | *(&v69 + v41) & 0xF);
              ++v41;
            }

            while (v41 != 16);
            if (a6)
            {
              result = sub_27728EE88(8, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v22;
            a4 += a5;
            v27 = v40++ == v63;
          }

          while (!v27);
        }
      }

      else
      {
        if (v64 != -1)
        {
          v48 = 0;
          do
          {
            v49 = 0;
            v68 = *v24;
            do
            {
              *(&v67 + v49) = *(&v68 | *(&v69 + v49) & 0xF);
              ++v49;
            }

            while (v49 != 16);
            if (a6)
            {
              result = sub_27728EE88(4, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v24;
            a4 += a5;
            v27 = v48++ == v64;
          }

          while (!v27);
        }

        if (v60 != v59)
        {
          v50 = 0;
          do
          {
            v51 = 0;
            v68 = *v22;
            do
            {
              *(&v67 + v51) = *(&v68 | *(&v69 + v51) & 0xF);
              ++v51;
            }

            while (v51 != 16);
            if (a6)
            {
              result = sub_27728EE88(4, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v22;
            a4 += a5;
            v27 = v50++ == v63;
          }

          while (!v27);
        }
      }
    }

    else
    {
      if (v64 != -1)
      {
        v25 = 0;
        do
        {
          v26 = 0;
          v68 = *v24;
          do
          {
            *(&v67 + v26) = *(&v68 | *(&v69 + v26) & 0xF);
            ++v26;
          }

          while (v26 != 16);
          if (a6)
          {
            result = sub_27728EE88(16, &v67, a4, a7, a8, a9, a10);
          }

          else
          {
            *a4 = v67;
          }

          ++v24;
          a4 += a5;
          v27 = v25++ == v64;
        }

        while (!v27);
      }

      if (v60 != v59)
      {
        v28 = 0;
        do
        {
          v29 = 0;
          v68 = *v22;
          do
          {
            *(&v67 + v29) = *(&v68 | *(&v69 + v29) & 0xF);
            ++v29;
          }

          while (v29 != 16);
          if (a6)
          {
            result = sub_27728EE88(16, &v67, a4, a7, a8, a9, a10);
          }

          else
          {
            *a4 = v67;
          }

          ++v22;
          a4 += a5;
          v27 = v28++ == v63;
        }

        while (!v27);
      }
    }
  }

  else
  {
    v30 = (v21 + 1024 + v14);
    v31 = (v21 + 1024 + 16 * v19);
    if (v18 < 8)
    {
      if (v18 == 7)
      {
        if (v64 != -1)
        {
          v42 = 0;
          do
          {
            v43 = 0;
            v68 = *v24;
            v66 = *v31;
            do
            {
              if ((*(&v69 + v43) & 0x10) != 0)
              {
                v44 = &v66;
              }

              else
              {
                v44 = &v68;
              }

              *(&v67 + v43) = *(v44 & 0xFFFFFFFFFFFFFFF0 | *(&v69 + v43) & 0xF);
              ++v43;
            }

            while (v43 != 16);
            if (a6)
            {
              result = sub_27728EE88(8, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v24;
            ++v31;
            a4 += a5;
            v27 = v42++ == v64;
          }

          while (!v27);
        }

        if (v60 != v59)
        {
          v45 = 0;
          do
          {
            v46 = 0;
            v68 = *v22;
            v66 = *v30;
            do
            {
              if ((*(&v69 + v46) & 0x10) != 0)
              {
                v47 = &v66;
              }

              else
              {
                v47 = &v68;
              }

              *(&v67 + v46) = *(v47 & 0xFFFFFFFFFFFFFFF0 | *(&v69 + v46) & 0xF);
              ++v46;
            }

            while (v46 != 16);
            if (a6)
            {
              result = sub_27728EE88(8, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v22;
            ++v30;
            a4 += a5;
            v27 = v45++ == v63;
          }

          while (!v27);
        }
      }

      else
      {
        if (v64 != -1)
        {
          v52 = 0;
          do
          {
            v53 = 0;
            v68 = *v24;
            v66 = *v31;
            do
            {
              if ((*(&v69 + v53) & 0x10) != 0)
              {
                v54 = &v66;
              }

              else
              {
                v54 = &v68;
              }

              *(&v67 + v53) = *(v54 & 0xFFFFFFFFFFFFFFF0 | *(&v69 + v53) & 0xF);
              ++v53;
            }

            while (v53 != 16);
            if (a6)
            {
              result = sub_27728EE88(4, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v24;
            ++v31;
            a4 += a5;
            v27 = v52++ == v64;
          }

          while (!v27);
        }

        if (v60 != v59)
        {
          v55 = 0;
          do
          {
            v56 = 0;
            v68 = *v22;
            v66 = *v30;
            do
            {
              if ((*(&v69 + v56) & 0x10) != 0)
              {
                v57 = &v66;
              }

              else
              {
                v57 = &v68;
              }

              *(&v67 + v56) = *(v57 & 0xFFFFFFFFFFFFFFF0 | *(&v69 + v56) & 0xF);
              ++v56;
            }

            while (v56 != 16);
            if (a6)
            {
              result = sub_27728EE88(4, &v67, a4, a7, a8, a9, a10);
            }

            else
            {
              *a4 = v67;
            }

            ++v22;
            ++v30;
            a4 += a5;
            v27 = v55++ == v63;
          }

          while (!v27);
        }
      }
    }

    else
    {
      if (v64 != -1)
      {
        v32 = 0;
        do
        {
          v33 = 0;
          v68 = *v24;
          v66 = *v31;
          do
          {
            if ((*(&v69 + v33) & 0x10) != 0)
            {
              v34 = &v66;
            }

            else
            {
              v34 = &v68;
            }

            *(&v67 + v33) = *(v34 & 0xFFFFFFFFFFFFFFF0 | *(&v69 + v33) & 0xF);
            ++v33;
          }

          while (v33 != 16);
          if (a6)
          {
            result = sub_27728EE88(16, &v67, a4, a7, a8, a9, a10);
          }

          else
          {
            *a4 = v67;
          }

          ++v24;
          ++v31;
          a4 += a5;
          v27 = v32++ == v64;
        }

        while (!v27);
      }

      if (v60 != v59)
      {
        v35 = 0;
        do
        {
          v36 = 0;
          v68 = *v22;
          v66 = *v30;
          do
          {
            if ((*(&v69 + v36) & 0x10) != 0)
            {
              v37 = &v66;
            }

            else
            {
              v37 = &v68;
            }

            *(&v67 + v36) = *(v37 & 0xFFFFFFFFFFFFFFF0 | *(&v69 + v36) & 0xF);
            ++v36;
          }

          while (v36 != 16);
          if (a6)
          {
            result = sub_27728EE88(16, &v67, a4, a7, a8, a9, a10);
          }

          else
          {
            *a4 = v67;
          }

          ++v22;
          ++v30;
          a4 += a5;
          v27 = v35++ == v63;
        }

        while (!v27);
      }
    }
  }

  return result;
}

char *sub_277289644(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, uint64_t a8, _DWORD *a9, int a10)
{
  v10 = a5;
  v271 = *MEMORY[0x277D85DE8];
  v12 = (a3 >> 4) & 1;
  v13 = a2[2];
  v14 = v13 >> 4;
  v15 = *a2 + v12;
  v16 = a2[4];
  v17 = v16 + v12;
  v18 = a2[6] + ((a3 & 0x80) >> 7);
  v19 = *(a1 + 40);
  v20 = v18 >> 4;
  v21 = v13 & 0xF;
  v212 = a2[6] & 0xF;
  v22 = ((v18 >> 4) - (v13 >> 4)) & ((a3 & 0x80) >> 7);
  v23 = ((v14 - (a2[6] >> 4)) & 0xF | v212 & ~(v14 - (a2[6] >> 4))) - (v13 & 0xF) - v22;
  v24 = v16 - *a2;
  v25 = v13 + ((a3 & 0x80) >> 7);
  v26 = (a3 >> 6) & 1;
  v27 = *a2 + v26;
  v28 = v18 & 0xF;
  v214 = ((v14 - (a2[6] >> 4)) & 0xF | v212 & ~(v14 - (a2[6] >> 4))) - (a2[2] & 0xF) - v22;
  v29 = *(a1 + 32);
  v30 = v29 + ((v14 + 2) * v19) + (v15 >> 4 << 10) + ((a3 & 3) << 8) + 2048;
  v31 = v29 + (((v25 >> 4) + 2) * v19) + (v27 >> 4 << 10) + ((a3 << 6) & 0x300) + 2048;
  v218 = v30 + 16 * v21;
  v32 = 16 * (v25 & 0xFu);
  v231 = (v31 + v32);
  v33 = __clz(v24 | 1);
  if (v16 == *a2)
  {
    ++v33;
  }

  result = xmmword_2773B3E60 + 7680 - (v33 << 8);
  v35 = *&result[16 * (v15 & 0xF)];
  v36 = *&result[16 * (v27 & 0xF)];
  v269 = v36;
  v270 = v35;
  if (v15 >> 4 == v17 >> 4 && (v16 + v26) >> 4 == v27 >> 4)
  {
    if (v24 < 8)
    {
      v204 = v22;
      if (v24 == 7)
      {
        if (v23 == -1)
        {
          v68 = 0;
        }

        else
        {
          v180 = v31;
          v185 = v18 >> 4;
          v190 = v14;
          LODWORD(v68) = 0;
          v69 = 0;
          do
          {
            v71 = 0;
            v72 = (v218 + v68);
            v253 = *v72;
            v254 = v72[1];
            v255 = v72[2];
            v256 = v72[3];
            v257 = v72[4];
            v258 = v72[5];
            v259 = v72[6];
            v260 = v72[7];
            v261 = v72[8];
            v262 = v72[9];
            v263 = v72[10];
            v264 = v72[11];
            v265 = v72[12];
            v266 = v72[13];
            v267 = v72[14];
            v268 = v72[15];
            v251 = *(v231 + v68);
            do
            {
              v252.i8[v71] = *(&v253 + (*(&v270 + v71) & 0xF));
              ++v71;
            }

            while (v71 != 16);
            for (i = 0; i != 16; ++i)
            {
              v250.i8[i] = *(&v251 | *(&v269 + i) & 0xF);
            }

            v74 = vrhadd_u8(*v252.i8, *v250.i8);
            *v249.i8 = v74;
            v249.u64[1] = vrhadd_u8(v252.u64[1], v250.u64[1]);
            if (a6)
            {
              v75 = a4;
              result = sub_27728EE88(8, &v249, a4, a7, a8, a9, a10);
              a4 = v75;
            }

            else
            {
              *a4 = v74;
            }

            v68 = (v68 + 16);
            a4 += a5;
            v45 = v69++ == v214;
          }

          while (!v45);
          v10 = a5;
          if (v185 == v190)
          {
            return result;
          }

          v231 = (v180 + v19);
        }

        if (v204)
        {
          v117 = 0;
          v253 = *(v218 + v68);
          v254 = *(v218 + v68 + 1);
          v255 = *(v218 + v68 + 2);
          v256 = *(v218 + v68 + 3);
          v257 = *(v218 + v68 + 4);
          v258 = *(v218 + v68 + 5);
          v259 = *(v218 + v68 + 6);
          v260 = *(v218 + v68 + 7);
          v261 = *(v218 + v68 + 8);
          v262 = *(v218 + v68 + 9);
          v263 = *(v218 + v68 + 10);
          v264 = *(v218 + v68 + 11);
          v265 = *(v218 + v68 + 12);
          v266 = *(v218 + v68 + 13);
          v267 = *(v218 + v68 + 14);
          v268 = *(v218 + v68 + 15);
          v251 = *v231;
          do
          {
            v252.i8[v117] = *(&v253 + (*(&v270 + v117) & 0xF));
            ++v117;
          }

          while (v117 != 16);
          for (j = 0; j != 16; ++j)
          {
            v250.i8[j] = *(&v251 | *(&v269 + j) & 0xF);
          }

          v119 = vrhaddq_u8(v252, v250);
          v249 = v119;
          if (a6)
          {
            v120 = a4;
            result = sub_27728EE88(8, &v249, a4, a7, a8, a9, a10);
            a4 = v120;
            if (!v28)
            {
              return result;
            }
          }

          else
          {
            *a4 = v119.i8[0];
            *(a4 + 1) = *(v249.i32 + 1);
            *(a4 + 5) = *(&v249.i16[2] + 1);
            *(a4 + 7) = v249.i8[7];
            if (!v28)
            {
              return result;
            }
          }

          ++v231;
          v140 = v10;
          a4 += v10;
        }

        else
        {
          v140 = v10;
        }

        v158 = 0;
        v159 = 0;
        v160 = v30 + v19;
        do
        {
          v161 = 0;
          v253 = *(v160 + v158);
          v254 = *(v160 + v158 + 1);
          v255 = *(v160 + v158 + 2);
          v256 = *(v160 + v158 + 3);
          v257 = *(v160 + v158 + 4);
          v258 = *(v160 + v158 + 5);
          v259 = *(v160 + v158 + 6);
          v260 = *(v160 + v158 + 7);
          v261 = *(v160 + v158 + 8);
          v262 = *(v160 + v158 + 9);
          v263 = *(v160 + v158 + 10);
          v264 = *(v160 + v158 + 11);
          v265 = *(v160 + v158 + 12);
          v266 = *(v160 + v158 + 13);
          v267 = *(v160 + v158 + 14);
          v268 = *(v160 + v158 + 15);
          v251 = v231[v158 / 0x10];
          do
          {
            v252.i8[v161] = *(&v253 + (*(&v270 + v161) & 0xF));
            ++v161;
          }

          while (v161 != 16);
          for (k = 0; k != 16; ++k)
          {
            v250.i8[k] = *(&v251 | *(&v269 + k) & 0xF);
          }

          v163 = vrhaddq_u8(v252, v250);
          v249 = v163;
          if (a6)
          {
            v164 = a4;
            result = sub_27728EE88(8, &v249, a4, a7, a8, a9, a10);
            a4 = v164;
          }

          else
          {
            *a4 = v163.i8[0];
            *(a4 + 1) = *(v249.i32 + 1);
            *(a4 + 5) = *(&v249.i16[2] + 1);
            *(a4 + 7) = v249.i8[7];
          }

          v158 += 16;
          a4 += v140;
          v45 = v159++ == v212;
        }

        while (!v45);
      }

      else
      {
        if (v23 == -1)
        {
          v87 = 0;
        }

        else
        {
          v182 = v31;
          v186 = v18 >> 4;
          v192 = v14;
          LODWORD(v87) = 0;
          v88 = 0;
          do
          {
            v90 = 0;
            v91 = (v218 + v87);
            v253 = *v91;
            v254 = v91[1];
            v255 = v91[2];
            v256 = v91[3];
            v257 = v91[4];
            v258 = v91[5];
            v259 = v91[6];
            v260 = v91[7];
            v261 = v91[8];
            v262 = v91[9];
            v263 = v91[10];
            v264 = v91[11];
            v265 = v91[12];
            v266 = v91[13];
            v267 = v91[14];
            v268 = v91[15];
            v251 = *(v231 + v87);
            do
            {
              v252.i8[v90] = *(&v253 + (*(&v270 + v90) & 0xF));
              ++v90;
            }

            while (v90 != 16);
            for (m = 0; m != 16; ++m)
            {
              v250.i8[m] = *(&v251 | *(&v269 + m) & 0xF);
            }

            LODWORD(v36) = v252.i32[0];
            LODWORD(v35) = v250.i32[0];
            *&v36 = vrhadd_u16(*&vmovl_u8(*&v36), *&vmovl_u8(*&v35));
            v249.i32[0] = vuzp1_s8(*&v36, *&v36).u32[0];
            v93 = vrhadd_u8(*(v252.i64 + 4), *(v250.i64 + 4));
            *(v249.i64 + 4) = v93;
            v93.i32[0] = v252.i32[3];
            *&v35 = vuzp1_s8(vrhadd_u16(*&vmovl_u8(v93), *&vmovl_u8(__PAIR64__(v250.u32[2], v250.u32[3]))), *&v36);
            v249.i32[3] = v35;
            if (a6)
            {
              v94 = a4;
              result = sub_27728EE88(4, &v249, a4, a7, a8, a9, a10);
              a4 = v94;
            }

            else
            {
              *&v36 = vuzp1_s8(*&v36, *&v36);
              *a4 = v36;
            }

            v87 = (v87 + 16);
            a4 += a5;
            v45 = v88++ == v214;
          }

          while (!v45);
          v10 = a5;
          if (v186 == v192)
          {
            return result;
          }

          v231 = (v182 + v19);
        }

        if (v204)
        {
          v121 = 0;
          v253 = *(v218 + v87);
          v254 = *(v218 + v87 + 1);
          v255 = *(v218 + v87 + 2);
          v256 = *(v218 + v87 + 3);
          v257 = *(v218 + v87 + 4);
          v258 = *(v218 + v87 + 5);
          v259 = *(v218 + v87 + 6);
          v260 = *(v218 + v87 + 7);
          v261 = *(v218 + v87 + 8);
          v262 = *(v218 + v87 + 9);
          v263 = *(v218 + v87 + 10);
          v264 = *(v218 + v87 + 11);
          v265 = *(v218 + v87 + 12);
          v266 = *(v218 + v87 + 13);
          v267 = *(v218 + v87 + 14);
          v268 = *(v218 + v87 + 15);
          v251 = *v231;
          do
          {
            v252.i8[v121] = *(&v253 + (*(&v270 + v121) & 0xF));
            ++v121;
          }

          while (v121 != 16);
          for (n = 0; n != 16; ++n)
          {
            v250.i8[n] = *(&v251 | *(&v269 + n) & 0xF);
          }

          v123 = vrhaddq_u8(v252, v250);
          v249 = v123;
          if (a6)
          {
            v124 = a4;
            result = sub_27728EE88(4, &v249, a4, a7, a8, a9, a10);
            a4 = v124;
            if (!v28)
            {
              return result;
            }
          }

          else
          {
            *a4 = v123.i8[0];
            *(a4 + 1) = *(v249.i16 + 1);
            *(a4 + 3) = v249.i8[3];
            if (!v28)
            {
              return result;
            }
          }

          ++v231;
          v141 = v10;
          a4 += v10;
        }

        else
        {
          v141 = v10;
        }

        v165 = 0;
        v166 = 0;
        v167 = v30 + v19;
        do
        {
          v168 = 0;
          v253 = *(v167 + v165);
          v254 = *(v167 + v165 + 1);
          v255 = *(v167 + v165 + 2);
          v256 = *(v167 + v165 + 3);
          v257 = *(v167 + v165 + 4);
          v258 = *(v167 + v165 + 5);
          v259 = *(v167 + v165 + 6);
          v260 = *(v167 + v165 + 7);
          v261 = *(v167 + v165 + 8);
          v262 = *(v167 + v165 + 9);
          v263 = *(v167 + v165 + 10);
          v264 = *(v167 + v165 + 11);
          v265 = *(v167 + v165 + 12);
          v266 = *(v167 + v165 + 13);
          v267 = *(v167 + v165 + 14);
          v268 = *(v167 + v165 + 15);
          v251 = v231[v165 / 0x10];
          do
          {
            v252.i8[v168] = *(&v253 + (*(&v270 + v168) & 0xF));
            ++v168;
          }

          while (v168 != 16);
          for (ii = 0; ii != 16; ++ii)
          {
            v250.i8[ii] = *(&v251 | *(&v269 + ii) & 0xF);
          }

          v170 = vrhaddq_u8(v252, v250);
          v249 = v170;
          if (a6)
          {
            v171 = a4;
            result = sub_27728EE88(4, &v249, a4, a7, a8, a9, a10);
            a4 = v171;
          }

          else
          {
            *a4 = v170.i8[0];
            *(a4 + 1) = *(v249.i16 + 1);
            *(a4 + 3) = v249.i8[3];
          }

          v165 += 16;
          a4 += v141;
          v45 = v166++ == v212;
        }

        while (!v45);
      }
    }

    else
    {
      if (v23 == -1)
      {
        v37 = 0;
        if (!v22)
        {
          goto LABEL_19;
        }

        goto LABEL_122;
      }

      v177 = v31;
      v183 = v18 >> 4;
      v187 = v14;
      v201 = v22;
      LODWORD(v37) = 0;
      v38 = 0;
      do
      {
        v40 = 0;
        v41 = (v218 + v37);
        v253 = *v41;
        v254 = v41[1];
        v255 = v41[2];
        v256 = v41[3];
        v257 = v41[4];
        v258 = v41[5];
        v259 = v41[6];
        v260 = v41[7];
        v261 = v41[8];
        v262 = v41[9];
        v263 = v41[10];
        v264 = v41[11];
        v265 = v41[12];
        v266 = v41[13];
        v267 = v41[14];
        v268 = v41[15];
        v251 = *(v231 + v37);
        do
        {
          v252.i8[v40] = *(&v253 + (*(&v270 + v40) & 0xF));
          ++v40;
        }

        while (v40 != 16);
        for (jj = 0; jj != 16; ++jj)
        {
          v250.i8[jj] = *(&v251 | *(&v269 + jj) & 0xF);
        }

        v43 = vrhaddq_u8(v252, v250);
        v249 = v43;
        if (a6)
        {
          v44 = a4;
          result = sub_27728EE88(16, &v249, a4, a7, a8, a9, a10);
          a4 = v44;
        }

        else
        {
          *a4 = v43;
        }

        v37 = (v37 + 16);
        a4 += a5;
        v45 = v38++ == v214;
      }

      while (!v45);
      v10 = a5;
      if (v183 != v187)
      {
        v231 = (v177 + v19);
        if (!v201)
        {
LABEL_19:
          v46 = v10;
LABEL_198:
          v133 = 0;
          v134 = 0;
          v135 = v30 + v19;
          do
          {
            v136 = 0;
            v253 = *(v135 + v133);
            v254 = *(v135 + v133 + 1);
            v255 = *(v135 + v133 + 2);
            v256 = *(v135 + v133 + 3);
            v257 = *(v135 + v133 + 4);
            v258 = *(v135 + v133 + 5);
            v259 = *(v135 + v133 + 6);
            v260 = *(v135 + v133 + 7);
            v261 = *(v135 + v133 + 8);
            v262 = *(v135 + v133 + 9);
            v263 = *(v135 + v133 + 10);
            v264 = *(v135 + v133 + 11);
            v265 = *(v135 + v133 + 12);
            v266 = *(v135 + v133 + 13);
            v267 = *(v135 + v133 + 14);
            v268 = *(v135 + v133 + 15);
            v251 = v231[v133 / 0x10];
            do
            {
              v252.i8[v136] = *(&v253 + (*(&v270 + v136) & 0xF));
              ++v136;
            }

            while (v136 != 16);
            for (kk = 0; kk != 16; ++kk)
            {
              v250.i8[kk] = *(&v251 | *(&v269 + kk) & 0xF);
            }

            v138 = vrhaddq_u8(v252, v250);
            v249 = v138;
            if (a6)
            {
              v139 = a4;
              result = sub_27728EE88(16, &v249, a4, a7, a8, a9, a10);
              a4 = v139;
            }

            else
            {
              *a4 = v138.i8[0];
              *(a4 + 1) = *(v249.i64 + 1);
              *(a4 + 9) = *(&v249.i32[2] + 1);
              *(a4 + 13) = *(&v249.i16[6] + 1);
              *(a4 + 15) = v249.i8[15];
            }

            v133 += 16;
            a4 += v46;
            v45 = v134++ == v212;
          }

          while (!v45);
          return result;
        }

LABEL_122:
        v101 = 0;
        v253 = *(v218 + v37);
        v254 = *(v218 + v37 + 1);
        v255 = *(v218 + v37 + 2);
        v256 = *(v218 + v37 + 3);
        v257 = *(v218 + v37 + 4);
        v258 = *(v218 + v37 + 5);
        v259 = *(v218 + v37 + 6);
        v260 = *(v218 + v37 + 7);
        v261 = *(v218 + v37 + 8);
        v262 = *(v218 + v37 + 9);
        v263 = *(v218 + v37 + 10);
        v264 = *(v218 + v37 + 11);
        v265 = *(v218 + v37 + 12);
        v266 = *(v218 + v37 + 13);
        v267 = *(v218 + v37 + 14);
        v268 = *(v218 + v37 + 15);
        v251 = *v231;
        do
        {
          v252.i8[v101] = *(&v253 + (*(&v270 + v101) & 0xF));
          ++v101;
        }

        while (v101 != 16);
        for (mm = 0; mm != 16; ++mm)
        {
          v250.i8[mm] = *(&v251 | *(&v269 + mm) & 0xF);
        }

        v103 = vrhaddq_u8(v252, v250);
        v249 = v103;
        if (a6)
        {
          v104 = a4;
          result = sub_27728EE88(16, &v249, a4, a7, a8, a9, a10);
          a4 = v104;
          if (!v28)
          {
            return result;
          }
        }

        else
        {
          *a4 = v103.i8[0];
          *(a4 + 1) = *(v249.i64 + 1);
          *(a4 + 9) = *(&v249.i32[2] + 1);
          *(a4 + 13) = *(&v249.i16[6] + 1);
          *(a4 + 15) = v249.i8[15];
          if (!v28)
          {
            return result;
          }
        }

        ++v231;
        v46 = v10;
        a4 += v10;
        goto LABEL_198;
      }
    }

    return result;
  }

  v47 = v30 + 1024;
  v208 = v30 + 1024 + 16 * v21;
  v213 = (v31 + 1024 + v32);
  if (v24 >= 8)
  {
    if (v23 == -1)
    {
      v48 = 0;
      if (!v22)
      {
LABEL_40:
        v219 = v10;
LABEL_179:
        v125 = 0;
        v126 = 0;
        v215 = v30 + v19;
        v209 = v47 + v19;
        do
        {
          v127 = 0;
          v253 = *(v215 + v125);
          v254 = *(v215 + v125 + 1);
          v255 = *(v215 + v125 + 2);
          v256 = *(v215 + v125 + 3);
          v257 = *(v215 + v125 + 4);
          v258 = *(v215 + v125 + 5);
          v259 = *(v215 + v125 + 6);
          v260 = *(v215 + v125 + 7);
          v261 = *(v215 + v125 + 8);
          v262 = *(v215 + v125 + 9);
          v263 = *(v215 + v125 + 10);
          v264 = *(v215 + v125 + 11);
          v265 = *(v215 + v125 + 12);
          v266 = *(v215 + v125 + 13);
          v267 = *(v215 + v125 + 14);
          v268 = *(v215 + v125 + 15);
          v233 = *(v209 + v125);
          v234 = *(v209 + v125 + 1);
          v235 = *(v209 + v125 + 2);
          v236 = *(v209 + v125 + 3);
          v237 = *(v209 + v125 + 4);
          v238 = *(v209 + v125 + 5);
          v239 = *(v209 + v125 + 6);
          v240 = *(v209 + v125 + 7);
          v241 = *(v209 + v125 + 8);
          v242 = *(v209 + v125 + 9);
          v243 = *(v209 + v125 + 10);
          v244 = *(v209 + v125 + 11);
          v245 = *(v209 + v125 + 12);
          v246 = *(v209 + v125 + 13);
          v247 = *(v209 + v125 + 14);
          v248 = *(v209 + v125 + 15);
          v251 = *(v231 + v125);
          v232 = *(v213 + v125);
          do
          {
            if ((*(&v270 + v127) & 0x10) != 0)
            {
              v128 = &v233;
            }

            else
            {
              v128 = &v253;
            }

            v252.i8[v127] = v128[*(&v270 + v127) & 0xF];
            ++v127;
          }

          while (v127 != 16);
          for (nn = 0; nn != 16; ++nn)
          {
            if ((*(&v269 + nn) & 0x10) != 0)
            {
              v130 = &v232;
            }

            else
            {
              v130 = &v251;
            }

            v250.i8[nn] = *(v130 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + nn) & 0xF);
          }

          v131 = vrhaddq_u8(v252, v250);
          v249 = v131;
          if (a6)
          {
            v225 = a4;
            v132 = v125;
            result = sub_27728EE88(16, &v249, a4, a7, a8, a9, a10);
            v125 = v132;
            a4 = v225;
          }

          else
          {
            *a4 = v131.i8[0];
            *(a4 + 1) = *(v249.i64 + 1);
            *(a4 + 9) = *(&v249.i32[2] + 1);
            *(a4 + 13) = *(&v249.i16[6] + 1);
            *(a4 + 15) = v249.i8[15];
          }

          v125 += 16;
          a4 += v219;
          v45 = v126++ == v212;
        }

        while (!v45);
        return result;
      }
    }

    else
    {
      v172 = v31 + 1024;
      v178 = v31;
      v184 = v18 >> 4;
      v188 = v14;
      v202 = v22;
      LODWORD(v48) = 0;
      v49 = 0;
      v205 = a5;
      do
      {
        v50 = 0;
        v51 = (v218 + v48);
        v253 = *v51;
        v254 = v51[1];
        v255 = v51[2];
        v256 = v51[3];
        v257 = v51[4];
        v258 = v51[5];
        v259 = v51[6];
        v260 = v51[7];
        v261 = v51[8];
        v262 = v51[9];
        v263 = v51[10];
        v264 = v51[11];
        v265 = v51[12];
        v266 = v51[13];
        v267 = v51[14];
        v268 = v51[15];
        v52 = (v208 + v48);
        v233 = *v52;
        v234 = v52[1];
        v235 = v52[2];
        v236 = v52[3];
        v237 = v52[4];
        v238 = v52[5];
        v239 = v52[6];
        v240 = v52[7];
        v241 = v52[8];
        v242 = v52[9];
        v243 = v52[10];
        v244 = v52[11];
        v245 = v52[12];
        v246 = v52[13];
        v247 = v52[14];
        v248 = v52[15];
        v251 = *(v231 + v48);
        v232 = *(v213 + v48);
        do
        {
          if ((*(&v270 + v50) & 0x10) != 0)
          {
            v53 = &v233;
          }

          else
          {
            v53 = &v253;
          }

          v252.i8[v50] = v53[*(&v270 + v50) & 0xF];
          ++v50;
        }

        while (v50 != 16);
        for (i1 = 0; i1 != 16; ++i1)
        {
          if ((*(&v269 + i1) & 0x10) != 0)
          {
            v55 = &v232;
          }

          else
          {
            v55 = &v251;
          }

          v250.i8[i1] = *(v55 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i1) & 0xF);
        }

        v56 = vrhaddq_u8(v252, v250);
        v249 = v56;
        if (a6)
        {
          v222 = a4;
          result = sub_27728EE88(16, &v249, a4, a7, a8, a9, a10);
          a4 = v222;
        }

        else
        {
          *a4 = v56;
        }

        v48 = (v48 + 16);
        a4 += v205;
        v45 = v49++ == v214;
      }

      while (!v45);
      v47 = v30 + 1024;
      v10 = a5;
      if (v184 == v188)
      {
        return result;
      }

      v231 = (v178 + v19);
      v213 = (v172 + v19);
      if (!v202)
      {
        goto LABEL_40;
      }
    }

    v95 = 0;
    v253 = *(v218 + v48);
    v254 = *(v218 + v48 + 1);
    v255 = *(v218 + v48 + 2);
    v256 = *(v218 + v48 + 3);
    v257 = *(v218 + v48 + 4);
    v258 = *(v218 + v48 + 5);
    v259 = *(v218 + v48 + 6);
    v260 = *(v218 + v48 + 7);
    v261 = *(v218 + v48 + 8);
    v262 = *(v218 + v48 + 9);
    v263 = *(v218 + v48 + 10);
    v264 = *(v218 + v48 + 11);
    v265 = *(v218 + v48 + 12);
    v266 = *(v218 + v48 + 13);
    v267 = *(v218 + v48 + 14);
    v268 = *(v218 + v48 + 15);
    v233 = *(v208 + v48);
    v234 = *(v208 + v48 + 1);
    v235 = *(v208 + v48 + 2);
    v236 = *(v208 + v48 + 3);
    v237 = *(v208 + v48 + 4);
    v238 = *(v208 + v48 + 5);
    v239 = *(v208 + v48 + 6);
    v240 = *(v208 + v48 + 7);
    v241 = *(v208 + v48 + 8);
    v242 = *(v208 + v48 + 9);
    v243 = *(v208 + v48 + 10);
    v244 = *(v208 + v48 + 11);
    v245 = *(v208 + v48 + 12);
    v246 = *(v208 + v48 + 13);
    v247 = *(v208 + v48 + 14);
    v248 = *(v208 + v48 + 15);
    v251 = *v231;
    v232 = *v213;
    do
    {
      if ((*(&v270 + v95) & 0x10) != 0)
      {
        v96 = &v233;
      }

      else
      {
        v96 = &v253;
      }

      v252.i8[v95] = v96[*(&v270 + v95) & 0xF];
      ++v95;
    }

    while (v95 != 16);
    for (i2 = 0; i2 != 16; ++i2)
    {
      if ((*(&v269 + i2) & 0x10) != 0)
      {
        v98 = &v232;
      }

      else
      {
        v98 = &v251;
      }

      v250.i8[i2] = *(v98 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i2) & 0xF);
    }

    v99 = vrhaddq_u8(v252, v250);
    v249 = v99;
    if (a6)
    {
      v100 = a4;
      result = sub_27728EE88(16, &v249, a4, a7, a8, a9, a10);
      a4 = v100;
      if (!v28)
      {
        return result;
      }
    }

    else
    {
      *a4 = v99.i8[0];
      *(a4 + 1) = *(v249.i64 + 1);
      *(a4 + 9) = *(&v249.i32[2] + 1);
      *(a4 + 13) = *(&v249.i16[6] + 1);
      *(a4 + 15) = v249.i8[15];
      if (!v28)
      {
        return result;
      }
    }

    ++v231;
    ++v213;
    v219 = v10;
    a4 += v10;
    goto LABEL_179;
  }

  v203 = v22;
  if (v24 == 7)
  {
    if (v23 == -1)
    {
      v57 = 0;
      v67 = v19;
    }

    else
    {
      v173 = v31 + 1024;
      v175 = v30 + 1024;
      v179 = v31;
      v189 = v14;
      v199 = v30;
      LODWORD(v57) = 0;
      v58 = 0;
      v206 = a5;
      do
      {
        v59 = 0;
        v60 = (v218 + v57);
        v253 = *v60;
        v254 = v60[1];
        v255 = v60[2];
        v256 = v60[3];
        v257 = v60[4];
        v258 = v60[5];
        v259 = v60[6];
        v260 = v60[7];
        v261 = v60[8];
        v262 = v60[9];
        v263 = v60[10];
        v264 = v60[11];
        v265 = v60[12];
        v266 = v60[13];
        v267 = v60[14];
        v268 = v60[15];
        v61 = (v208 + v57);
        v233 = *v61;
        v234 = v61[1];
        v235 = v61[2];
        v236 = v61[3];
        v237 = v61[4];
        v238 = v61[5];
        v239 = v61[6];
        v240 = v61[7];
        v241 = v61[8];
        v242 = v61[9];
        v243 = v61[10];
        v244 = v61[11];
        v245 = v61[12];
        v246 = v61[13];
        v247 = v61[14];
        v248 = v61[15];
        v251 = *(v231 + v57);
        v232 = *(v213 + v57);
        do
        {
          if ((*(&v270 + v59) & 0x10) != 0)
          {
            v62 = &v233;
          }

          else
          {
            v62 = &v253;
          }

          v252.i8[v59] = v62[*(&v270 + v59) & 0xF];
          ++v59;
        }

        while (v59 != 16);
        for (i3 = 0; i3 != 16; ++i3)
        {
          if ((*(&v269 + i3) & 0x10) != 0)
          {
            v64 = &v232;
          }

          else
          {
            v64 = &v251;
          }

          v250.i8[i3] = *(v64 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i3) & 0xF);
        }

        v65 = vrhadd_u8(*v252.i8, *v250.i8);
        *v249.i8 = v65;
        v249.u64[1] = vrhadd_u8(v252.u64[1], v250.u64[1]);
        if (a6)
        {
          v223 = a4;
          v66 = v57;
          result = sub_27728EE88(8, &v249, a4, a7, a8, a9, a10);
          LODWORD(v57) = v66;
          a4 = v223;
        }

        else
        {
          *a4 = v65;
        }

        v57 = (v57 + 16);
        a4 += v206;
        v45 = v58++ == v214;
      }

      while (!v45);
      v47 = v175;
      v67 = v19;
      v30 = v199;
      v10 = a5;
      if (v20 == v189)
      {
        return result;
      }

      v231 = (v179 + v19);
      v213 = (v173 + v19);
    }

    if (v203)
    {
      v105 = 0;
      v253 = *(v218 + v57);
      v254 = *(v218 + v57 + 1);
      v255 = *(v218 + v57 + 2);
      v256 = *(v218 + v57 + 3);
      v257 = *(v218 + v57 + 4);
      v258 = *(v218 + v57 + 5);
      v259 = *(v218 + v57 + 6);
      v260 = *(v218 + v57 + 7);
      v261 = *(v218 + v57 + 8);
      v262 = *(v218 + v57 + 9);
      v263 = *(v218 + v57 + 10);
      v264 = *(v218 + v57 + 11);
      v265 = *(v218 + v57 + 12);
      v266 = *(v218 + v57 + 13);
      v267 = *(v218 + v57 + 14);
      v268 = *(v218 + v57 + 15);
      v233 = *(v208 + v57);
      v234 = *(v208 + v57 + 1);
      v235 = *(v208 + v57 + 2);
      v236 = *(v208 + v57 + 3);
      v237 = *(v208 + v57 + 4);
      v238 = *(v208 + v57 + 5);
      v239 = *(v208 + v57 + 6);
      v240 = *(v208 + v57 + 7);
      v241 = *(v208 + v57 + 8);
      v242 = *(v208 + v57 + 9);
      v243 = *(v208 + v57 + 10);
      v244 = *(v208 + v57 + 11);
      v245 = *(v208 + v57 + 12);
      v246 = *(v208 + v57 + 13);
      v247 = *(v208 + v57 + 14);
      v248 = *(v208 + v57 + 15);
      v251 = *v231;
      v232 = *v213;
      do
      {
        if ((*(&v270 + v105) & 0x10) != 0)
        {
          v106 = &v233;
        }

        else
        {
          v106 = &v253;
        }

        v252.i8[v105] = v106[*(&v270 + v105) & 0xF];
        ++v105;
      }

      while (v105 != 16);
      for (i4 = 0; i4 != 16; ++i4)
      {
        if ((*(&v269 + i4) & 0x10) != 0)
        {
          v108 = &v232;
        }

        else
        {
          v108 = &v251;
        }

        v250.i8[i4] = *(v108 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i4) & 0xF);
      }

      v109 = vrhaddq_u8(v252, v250);
      v249 = v109;
      if (a6)
      {
        v110 = a4;
        result = sub_27728EE88(8, &v249, a4, a7, a8, a9, a10);
        a4 = v110;
        if (!v28)
        {
          return result;
        }
      }

      else
      {
        *a4 = v109.i8[0];
        *(a4 + 1) = *(v249.i32 + 1);
        *(a4 + 5) = *(&v249.i16[2] + 1);
        *(a4 + 7) = v249.i8[7];
        if (!v28)
        {
          return result;
        }
      }

      ++v231;
      ++v213;
      v220 = v10;
      a4 += v10;
    }

    else
    {
      v220 = v10;
    }

    v142 = 0;
    v143 = 0;
    v216 = v30 + v67;
    v210 = v47 + v67;
    do
    {
      v144 = 0;
      v253 = *(v216 + v142);
      v254 = *(v216 + v142 + 1);
      v255 = *(v216 + v142 + 2);
      v256 = *(v216 + v142 + 3);
      v257 = *(v216 + v142 + 4);
      v258 = *(v216 + v142 + 5);
      v259 = *(v216 + v142 + 6);
      v260 = *(v216 + v142 + 7);
      v261 = *(v216 + v142 + 8);
      v262 = *(v216 + v142 + 9);
      v263 = *(v216 + v142 + 10);
      v264 = *(v216 + v142 + 11);
      v265 = *(v216 + v142 + 12);
      v266 = *(v216 + v142 + 13);
      v267 = *(v216 + v142 + 14);
      v268 = *(v216 + v142 + 15);
      v233 = *(v210 + v142);
      v234 = *(v210 + v142 + 1);
      v235 = *(v210 + v142 + 2);
      v236 = *(v210 + v142 + 3);
      v237 = *(v210 + v142 + 4);
      v238 = *(v210 + v142 + 5);
      v239 = *(v210 + v142 + 6);
      v240 = *(v210 + v142 + 7);
      v241 = *(v210 + v142 + 8);
      v242 = *(v210 + v142 + 9);
      v243 = *(v210 + v142 + 10);
      v244 = *(v210 + v142 + 11);
      v245 = *(v210 + v142 + 12);
      v246 = *(v210 + v142 + 13);
      v247 = *(v210 + v142 + 14);
      v248 = *(v210 + v142 + 15);
      v251 = *(v231 + v142);
      v232 = *(v213 + v142);
      do
      {
        if ((*(&v270 + v144) & 0x10) != 0)
        {
          v145 = &v233;
        }

        else
        {
          v145 = &v253;
        }

        v252.i8[v144] = v145[*(&v270 + v144) & 0xF];
        ++v144;
      }

      while (v144 != 16);
      for (i5 = 0; i5 != 16; ++i5)
      {
        if ((*(&v269 + i5) & 0x10) != 0)
        {
          v147 = &v232;
        }

        else
        {
          v147 = &v251;
        }

        v250.i8[i5] = *(v147 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i5) & 0xF);
      }

      v148 = vrhaddq_u8(v252, v250);
      v249 = v148;
      if (a6)
      {
        v226 = a4;
        v149 = v142;
        result = sub_27728EE88(8, &v249, a4, a7, a8, a9, a10);
        v142 = v149;
        a4 = v226;
      }

      else
      {
        *a4 = v148.i8[0];
        *(a4 + 1) = *(v249.i32 + 1);
        *(a4 + 5) = *(&v249.i16[2] + 1);
        *(a4 + 7) = v249.i8[7];
      }

      v142 += 16;
      a4 += v220;
      v45 = v143++ == v212;
    }

    while (!v45);
  }

  else
  {
    if (v23 == -1)
    {
      v76 = 0;
      v86 = v19;
    }

    else
    {
      v174 = v31 + 1024;
      v176 = v30 + 1024;
      v181 = v31;
      v191 = v14;
      v200 = v30;
      LODWORD(v76) = 0;
      v77 = 0;
      v207 = a5;
      do
      {
        v78 = 0;
        v79 = (v218 + v76);
        v253 = *v79;
        v254 = v79[1];
        v255 = v79[2];
        v256 = v79[3];
        v257 = v79[4];
        v258 = v79[5];
        v259 = v79[6];
        v260 = v79[7];
        v261 = v79[8];
        v262 = v79[9];
        v263 = v79[10];
        v264 = v79[11];
        v265 = v79[12];
        v266 = v79[13];
        v267 = v79[14];
        v268 = v79[15];
        v80 = (v208 + v76);
        v233 = *v80;
        v234 = v80[1];
        v235 = v80[2];
        v236 = v80[3];
        v237 = v80[4];
        v238 = v80[5];
        v239 = v80[6];
        v240 = v80[7];
        v241 = v80[8];
        v242 = v80[9];
        v243 = v80[10];
        v244 = v80[11];
        v245 = v80[12];
        v246 = v80[13];
        v247 = v80[14];
        v248 = v80[15];
        v251 = *(v231 + v76);
        v232 = *(v213 + v76);
        do
        {
          if ((*(&v270 + v78) & 0x10) != 0)
          {
            v81 = &v233;
          }

          else
          {
            v81 = &v253;
          }

          v252.i8[v78] = v81[*(&v270 + v78) & 0xF];
          ++v78;
        }

        while (v78 != 16);
        for (i6 = 0; i6 != 16; ++i6)
        {
          if ((*(&v269 + i6) & 0x10) != 0)
          {
            v83 = &v232;
          }

          else
          {
            v83 = &v251;
          }

          v250.i8[i6] = *(v83 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i6) & 0xF);
        }

        LODWORD(v36) = v252.i32[0];
        LODWORD(v35) = v250.i32[0];
        *&v36 = vrhadd_u16(*&vmovl_u8(*&v36), *&vmovl_u8(*&v35));
        v249.i32[0] = vuzp1_s8(*&v36, *&v36).u32[0];
        v84 = vrhadd_u8(*(v252.i64 + 4), *(v250.i64 + 4));
        *(v249.i64 + 4) = v84;
        v84.i32[0] = v252.i32[3];
        *&v35 = vuzp1_s8(vrhadd_u16(*&vmovl_u8(v84), *&vmovl_u8(__PAIR64__(v250.u32[2], v250.u32[3]))), *&v36);
        v249.i32[3] = v35;
        if (a6)
        {
          v224 = a4;
          v85 = v76;
          result = sub_27728EE88(4, &v249, a4, a7, a8, a9, a10);
          LODWORD(v76) = v85;
          a4 = v224;
        }

        else
        {
          *&v36 = vuzp1_s8(*&v36, *&v36);
          *a4 = v36;
        }

        v76 = (v76 + 16);
        a4 += v207;
        v45 = v77++ == v214;
      }

      while (!v45);
      v47 = v176;
      v86 = v19;
      v30 = v200;
      v10 = a5;
      if (v20 == v191)
      {
        return result;
      }

      v231 = (v181 + v19);
      v213 = (v174 + v19);
    }

    if (v203)
    {
      v111 = 0;
      v253 = *(v218 + v76);
      v254 = *(v218 + v76 + 1);
      v255 = *(v218 + v76 + 2);
      v256 = *(v218 + v76 + 3);
      v257 = *(v218 + v76 + 4);
      v258 = *(v218 + v76 + 5);
      v259 = *(v218 + v76 + 6);
      v260 = *(v218 + v76 + 7);
      v261 = *(v218 + v76 + 8);
      v262 = *(v218 + v76 + 9);
      v263 = *(v218 + v76 + 10);
      v264 = *(v218 + v76 + 11);
      v265 = *(v218 + v76 + 12);
      v266 = *(v218 + v76 + 13);
      v267 = *(v218 + v76 + 14);
      v268 = *(v218 + v76 + 15);
      v233 = *(v208 + v76);
      v234 = *(v208 + v76 + 1);
      v235 = *(v208 + v76 + 2);
      v236 = *(v208 + v76 + 3);
      v237 = *(v208 + v76 + 4);
      v238 = *(v208 + v76 + 5);
      v239 = *(v208 + v76 + 6);
      v240 = *(v208 + v76 + 7);
      v241 = *(v208 + v76 + 8);
      v242 = *(v208 + v76 + 9);
      v243 = *(v208 + v76 + 10);
      v244 = *(v208 + v76 + 11);
      v245 = *(v208 + v76 + 12);
      v246 = *(v208 + v76 + 13);
      v247 = *(v208 + v76 + 14);
      v248 = *(v208 + v76 + 15);
      v251 = *v231;
      v232 = *v213;
      do
      {
        if ((*(&v270 + v111) & 0x10) != 0)
        {
          v112 = &v233;
        }

        else
        {
          v112 = &v253;
        }

        v252.i8[v111] = v112[*(&v270 + v111) & 0xF];
        ++v111;
      }

      while (v111 != 16);
      for (i7 = 0; i7 != 16; ++i7)
      {
        if ((*(&v269 + i7) & 0x10) != 0)
        {
          v114 = &v232;
        }

        else
        {
          v114 = &v251;
        }

        v250.i8[i7] = *(v114 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i7) & 0xF);
      }

      v115 = vrhaddq_u8(v252, v250);
      v249 = v115;
      if (a6)
      {
        v116 = a4;
        result = sub_27728EE88(4, &v249, a4, a7, a8, a9, a10);
        a4 = v116;
        if (!v28)
        {
          return result;
        }
      }

      else
      {
        *a4 = v115.i8[0];
        *(a4 + 1) = *(v249.i16 + 1);
        *(a4 + 3) = v249.i8[3];
        if (!v28)
        {
          return result;
        }
      }

      ++v231;
      ++v213;
      v221 = v10;
      a4 += v10;
    }

    else
    {
      v221 = v10;
    }

    v150 = 0;
    v151 = 0;
    v217 = v30 + v86;
    v211 = v47 + v86;
    do
    {
      v152 = 0;
      v253 = *(v217 + v150);
      v254 = *(v217 + v150 + 1);
      v255 = *(v217 + v150 + 2);
      v256 = *(v217 + v150 + 3);
      v257 = *(v217 + v150 + 4);
      v258 = *(v217 + v150 + 5);
      v259 = *(v217 + v150 + 6);
      v260 = *(v217 + v150 + 7);
      v261 = *(v217 + v150 + 8);
      v262 = *(v217 + v150 + 9);
      v263 = *(v217 + v150 + 10);
      v264 = *(v217 + v150 + 11);
      v265 = *(v217 + v150 + 12);
      v266 = *(v217 + v150 + 13);
      v267 = *(v217 + v150 + 14);
      v268 = *(v217 + v150 + 15);
      v233 = *(v211 + v150);
      v234 = *(v211 + v150 + 1);
      v235 = *(v211 + v150 + 2);
      v236 = *(v211 + v150 + 3);
      v237 = *(v211 + v150 + 4);
      v238 = *(v211 + v150 + 5);
      v239 = *(v211 + v150 + 6);
      v240 = *(v211 + v150 + 7);
      v241 = *(v211 + v150 + 8);
      v242 = *(v211 + v150 + 9);
      v243 = *(v211 + v150 + 10);
      v244 = *(v211 + v150 + 11);
      v245 = *(v211 + v150 + 12);
      v246 = *(v211 + v150 + 13);
      v247 = *(v211 + v150 + 14);
      v248 = *(v211 + v150 + 15);
      v251 = *(v231 + v150);
      v232 = *(v213 + v150);
      do
      {
        if ((*(&v270 + v152) & 0x10) != 0)
        {
          v153 = &v233;
        }

        else
        {
          v153 = &v253;
        }

        v252.i8[v152] = v153[*(&v270 + v152) & 0xF];
        ++v152;
      }

      while (v152 != 16);
      for (i8 = 0; i8 != 16; ++i8)
      {
        if ((*(&v269 + i8) & 0x10) != 0)
        {
          v155 = &v232;
        }

        else
        {
          v155 = &v251;
        }

        v250.i8[i8] = *(v155 & 0xFFFFFFFFFFFFFFF0 | *(&v269 + i8) & 0xF);
      }

      v156 = vrhaddq_u8(v252, v250);
      v249 = v156;
      if (a6)
      {
        v227 = a4;
        v157 = v150;
        result = sub_27728EE88(4, &v249, a4, a7, a8, a9, a10);
        v150 = v157;
        a4 = v227;
      }

      else
      {
        *a4 = v156.i8[0];
        *(a4 + 1) = *(v249.i16 + 1);
        *(a4 + 3) = v249.i8[3];
      }

      v150 += 16;
      a4 += v221;
      v45 = v151++ == v212;
    }

    while (!v45);
  }

  return result;
}

uint64_t sub_27728C59C(unsigned __int8 *a1, _DWORD *a2, __int16 a3, __int16 a4, int8x16_t *a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (*(a7 + 31))
  {
    v9 = *(a7 + 31) == 2 && a1[3] != 0;
    v11 = *(a8 + 48 * a9 + 36);
    if (!*(a7 + 30) || (v11 & 1) != 0)
    {
      v10 = (*(a7 + 30) == 0) & v11;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v9 = *a1;
    if (*a1)
    {
      v9 = a1[3] != 0;
    }

    v10 = a1[5];
  }

  v12 = *(a1 + 38);
  v13 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(((8 - a4) * (8 - a3)), xmmword_2773B3DF0), xmmword_2773B3DB0), xmmword_2773B3DC0);
  v14 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(((8 - a4) * a3), xmmword_2773B3DF0), xmmword_2773B3DB0), xmmword_2773B3DC0);
  v15 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(((8 - a3) * a4), xmmword_2773B3DF0), xmmword_2773B3DB0), xmmword_2773B3DC0);
  v16 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8((a4 * a3), xmmword_2773B3DF0), xmmword_2773B3DB0), xmmword_2773B3DC0);
  v17 = a2[3] >> 1;
  v18 = a2[1];
  v19 = a2[5] - v18;
  v20 = ((a2[7] - 1) >> 1) - v17 + 1;
  v21 = (*(a1 + 138) + 4 * v17 + 36);
  v22 = (*(a1 + 139) + 4 * v17 + 36);
  v23 = *(*(a1 + 137) + 2 * (v18 >> 4) + 2);
  v24 = v23 >> 13;
  v25 = ((v23 >> 14) & 1) + ((v23 >> 13) & 1);
  v26 = *(a1 + 5) + 16 * (v23 & 0x1FFF);
  v27 = v26 + ((v23 >> 11) & 0x10);
  v28 = v18 & 0xE;
  if (v24)
  {
    if (v25 == 1)
    {
      if (v9)
      {
        if (v10)
        {
          v31 = *(a1 + 38);
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 + 2 * *v22;
      }

      else
      {
        v32 = *v21;
      }

      v40 = *(v26 + v32);
      v41 = *(v27 + v32);
      if ((v18 & 0xEu) > 7)
      {
        if ((v18 & 0xEu) > 0xB)
        {
          if (v28 != 12)
          {
            v40 = vextq_s8(v40, v41, 0xEuLL);
            goto LABEL_179;
          }

          v42 = vextq_s8(v40, v41, 0xCuLL);
          v41 = vextq_s8(v40, v41, 0xEuLL);
        }

        else if (v28 == 8)
        {
          v42 = vextq_s8(v40, v41, 8uLL);
          v41 = vextq_s8(v40, v41, 0xAuLL);
        }

        else
        {
          v42 = vextq_s8(v40, v41, 0xAuLL);
          v41 = vextq_s8(v40, v41, 0xCuLL);
        }
      }

      else if ((v18 & 0xEu) > 3)
      {
        if (v28 == 4)
        {
          v42 = vextq_s8(v40, v41, 4uLL);
          v41 = vextq_s8(v40, v41, 6uLL);
        }

        else
        {
          v42 = vextq_s8(v40, v41, 6uLL);
          v41 = vextq_s8(v40, v41, 8uLL);
        }
      }

      else
      {
        if ((v18 & 0xE) == 0)
        {
          v41 = vextq_s8(v40, v41, 2uLL);
LABEL_179:
          if (v9)
          {
            if (v10)
            {
              v80 = v12;
            }

            else
            {
              v80 = 0;
            }

            result = (v80 + 2 * v22[1]);
          }

          else
          {
            result = v21[1];
          }

          v81 = vzip1q_s8(v40, 0);
          v82 = vzip1q_s8(v41, 0);
          v83 = v22 + 2;
          v84 = v21 + 2;
          if (v19 >= 8)
          {
            if (!v20)
            {
              return result;
            }

            v85 = vzip2q_s8(v41, 0);
            v86 = vzip2q_s8(v40, 0);
            if (!v10)
            {
              v12 = 0;
            }

            v87.i64[0] = 0x20002000200020;
            v87.i64[1] = 0x20002000200020;
            while (1)
            {
              v88 = result;
              if (v9)
              {
                result = (v12 + 2 * *v83);
              }

              else
              {
                result = *v84;
              }

              v89 = *(v26 + v88);
              v90 = *(v27 + v88);
              if ((v18 & 0xEu) > 7)
              {
                if ((v18 & 0xEu) > 0xB)
                {
                  if (v28 != 12)
                  {
                    v89 = vextq_s8(v89, v90, 0xEuLL);
                    goto LABEL_208;
                  }

                  v91 = vextq_s8(v89, v90, 0xCuLL);
                  v90 = vextq_s8(v89, v90, 0xEuLL);
                }

                else if (v28 == 8)
                {
                  v91 = vextq_s8(v89, v90, 8uLL);
                  v90 = vextq_s8(v89, v90, 0xAuLL);
                }

                else
                {
                  v91 = vextq_s8(v89, v90, 0xAuLL);
                  v90 = vextq_s8(v89, v90, 0xCuLL);
                }

                goto LABEL_207;
              }

              if ((v18 & 0xEu) > 3)
              {
                break;
              }

              if ((v18 & 0xE) != 0)
              {
                v91 = vextq_s8(v89, v90, 2uLL);
                v90 = vextq_s8(v89, v90, 4uLL);
LABEL_207:
                v89 = v91;
                goto LABEL_208;
              }

              v90 = vextq_s8(v89, v90, 2uLL);
LABEL_208:
              ++v83;
              ++v84;
              v92 = vzip1q_s8(v89, 0);
              v93 = vzip2q_s8(v89, 0);
              v94 = vmlaq_s16(vmulq_s16(v81, v13), v82, v14);
              v82 = vzip1q_s8(v90, 0);
              v95 = vmlaq_s16(vmulq_s16(v86, v13), v85, v14);
              v85 = vzip2q_s8(v90, 0);
              *a5 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v94, v82, v16), v92, v15), v87), 6uLL)), vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v95, v85, v16), v93, v15), v87), 6uLL));
              a5 = (a5 + a6);
              v81 = v92;
              v86 = v93;
              if (!--v20)
              {
                return result;
              }
            }

            if (v28 == 4)
            {
              v91 = vextq_s8(v89, v90, 4uLL);
              v90 = vextq_s8(v89, v90, 6uLL);
            }

            else
            {
              v91 = vextq_s8(v89, v90, 6uLL);
              v90 = vextq_s8(v89, v90, 8uLL);
            }

            goto LABEL_207;
          }

          if (v19 == 7)
          {
            if (!v20)
            {
              return result;
            }

            if (!v10)
            {
              v12 = 0;
            }

            v96.i64[0] = 0x20002000200020;
            v96.i64[1] = 0x20002000200020;
            while (1)
            {
              v97 = result;
              if (v9)
              {
                result = (v12 + 2 * *v83);
              }

              else
              {
                result = *v84;
              }

              v98 = *(v26 + v97);
              v99 = *(v27 + v97);
              if ((v18 & 0xEu) > 7)
              {
                if ((v18 & 0xEu) > 0xB)
                {
                  if (v28 != 12)
                  {
                    v98 = vextq_s8(v98, v99, 0xEuLL);
                    goto LABEL_234;
                  }

                  v100 = vextq_s8(v98, v99, 0xCuLL);
                  v99 = vextq_s8(v98, v99, 0xEuLL);
                }

                else if (v28 == 8)
                {
                  v100 = vextq_s8(v98, v99, 8uLL);
                  v99 = vextq_s8(v98, v99, 0xAuLL);
                }

                else
                {
                  v100 = vextq_s8(v98, v99, 0xAuLL);
                  v99 = vextq_s8(v98, v99, 0xCuLL);
                }

                goto LABEL_233;
              }

              if ((v18 & 0xEu) > 3)
              {
                break;
              }

              if ((v18 & 0xE) != 0)
              {
                v100 = vextq_s8(v98, v99, 2uLL);
                v99 = vextq_s8(v98, v99, 4uLL);
LABEL_233:
                v98 = v100;
                goto LABEL_234;
              }

              v99 = vextq_s8(v98, v99, 2uLL);
LABEL_234:
              ++v83;
              ++v84;
              v101 = vzip1q_s8(v98, 0);
              v102 = vmlaq_s16(vmulq_s16(v81, v13), v82, v14);
              v82 = vzip1q_s8(v99, 0);
              *a5->i8 = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v102, v82, v16), v101, v15), v96), 6uLL));
              a5 = (a5 + a6);
              v81 = v101;
              if (!--v20)
              {
                return result;
              }
            }

            if (v28 == 4)
            {
              v100 = vextq_s8(v98, v99, 4uLL);
              v99 = vextq_s8(v98, v99, 6uLL);
            }

            else
            {
              v100 = vextq_s8(v98, v99, 6uLL);
              v99 = vextq_s8(v98, v99, 8uLL);
            }

            goto LABEL_233;
          }

          if (!v20)
          {
            return result;
          }

          if (!v10)
          {
            v12 = 0;
          }

          v103.i64[0] = 0x20002000200020;
          v103.i64[1] = 0x20002000200020;
          while (1)
          {
            v104 = result;
            if (v9)
            {
              result = (v12 + 2 * *v83);
            }

            else
            {
              result = *v84;
            }

            v105 = *(v26 + v104);
            v106 = *(v27 + v104);
            if ((v18 & 0xEu) > 7)
            {
              if ((v18 & 0xEu) > 0xB)
              {
                if (v28 != 12)
                {
                  v105 = vextq_s8(v105, v106, 0xEuLL);
                  goto LABEL_259;
                }

                v107 = vextq_s8(v105, v106, 0xCuLL);
                v106 = vextq_s8(v105, v106, 0xEuLL);
              }

              else if (v28 == 8)
              {
                v107 = vextq_s8(v105, v106, 8uLL);
                v106 = vextq_s8(v105, v106, 0xAuLL);
              }

              else
              {
                v107 = vextq_s8(v105, v106, 0xAuLL);
                v106 = vextq_s8(v105, v106, 0xCuLL);
              }

              goto LABEL_258;
            }

            if ((v18 & 0xEu) > 3)
            {
              break;
            }

            if ((v18 & 0xE) != 0)
            {
              v107 = vextq_s8(v105, v106, 2uLL);
              v106 = vextq_s8(v105, v106, 4uLL);
LABEL_258:
              v105 = v107;
              goto LABEL_259;
            }

            v106 = vextq_s8(v105, v106, 2uLL);
LABEL_259:
            ++v83;
            ++v84;
            v108 = vzip1q_s8(v105, 0);
            v109 = vmlaq_s16(vmulq_s16(v81, v13), v82, v14);
            v82 = vzip1q_s8(v106, 0);
            a5->i32[0] = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v109, v82, v16), v108, v15), v103), 6uLL)).u32[0];
            a5 = (a5 + a6);
            v81 = v108;
            if (!--v20)
            {
              return result;
            }
          }

          if (v28 == 4)
          {
            v107 = vextq_s8(v105, v106, 4uLL);
            v106 = vextq_s8(v105, v106, 6uLL);
          }

          else
          {
            v107 = vextq_s8(v105, v106, 6uLL);
            v106 = vextq_s8(v105, v106, 8uLL);
          }

          goto LABEL_258;
        }

        v42 = vextq_s8(v40, v41, 2uLL);
        v41 = vextq_s8(v40, v41, 4uLL);
      }

      v40 = v42;
      goto LABEL_179;
    }

    if (v9)
    {
      if (v10)
      {
        v35 = *(a1 + 38);
      }

      else
      {
        v35 = 0;
      }

      v36 = v35 + 2 * *v22;
    }

    else
    {
      v36 = *v21;
    }

    v46 = *(v26 + v36);
    v47 = vqtbl1q_s8((*(v27 + v36 + 14) | (*(v27 + v36 + 14) << 16)), xmmword_2773B3DF0);
    if ((v18 & 0xEu) > 7)
    {
      if ((v18 & 0xEu) > 0xB)
      {
        if (v28 != 12)
        {
          v46 = vextq_s8(v46, v47, 0xEuLL);
          goto LABEL_351;
        }

        v48 = vextq_s8(v46, v47, 0xCuLL);
        v47 = vextq_s8(v46, v47, 0xEuLL);
      }

      else if (v28 == 8)
      {
        v48 = vextq_s8(v46, v47, 8uLL);
        v47 = vextq_s8(v46, v47, 0xAuLL);
      }

      else
      {
        v48 = vextq_s8(v46, v47, 0xAuLL);
        v47 = vextq_s8(v46, v47, 0xCuLL);
      }
    }

    else if ((v18 & 0xEu) > 3)
    {
      if (v28 == 4)
      {
        v48 = vextq_s8(v46, v47, 4uLL);
        v47 = vextq_s8(v46, v47, 6uLL);
      }

      else
      {
        v48 = vextq_s8(v46, v47, 6uLL);
        v47 = vextq_s8(v46, v47, 8uLL);
      }
    }

    else
    {
      if ((v18 & 0xE) == 0)
      {
        v47 = vextq_s8(v46, v47, 2uLL);
LABEL_351:
        if (v9)
        {
          if (v10)
          {
            v142 = v12;
          }

          else
          {
            v142 = 0;
          }

          result = (v142 + 2 * v22[1]);
        }

        else
        {
          result = v21[1];
        }

        v143 = vzip1q_s8(v46, 0);
        v144 = vzip1q_s8(v47, 0);
        v145 = v22 + 2;
        v146 = v21 + 2;
        if (v19 >= 8)
        {
          if (!v20)
          {
            return result;
          }

          v147 = v27 + 14;
          v148 = vzip2q_s8(v47, 0);
          v149 = vzip2q_s8(v46, 0);
          if (!v10)
          {
            v12 = 0;
          }

          v150.i64[0] = 0x20002000200020;
          v150.i64[1] = 0x20002000200020;
          while (1)
          {
            v151 = result;
            if (v9)
            {
              result = (v12 + 2 * *v145);
            }

            else
            {
              result = *v146;
            }

            v152 = *(v26 + v151);
            v153 = vqtbl1q_s8((*(v147 + v151) | (*(v147 + v151) << 16)), xmmword_2773B3DF0);
            if ((v18 & 0xEu) > 7)
            {
              if ((v18 & 0xEu) > 0xB)
              {
                if (v28 != 12)
                {
                  v152 = vextq_s8(v152, v153, 0xEuLL);
                  goto LABEL_380;
                }

                v154 = vextq_s8(v152, v153, 0xCuLL);
                v153 = vextq_s8(v152, v153, 0xEuLL);
              }

              else if (v28 == 8)
              {
                v154 = vextq_s8(v152, v153, 8uLL);
                v153 = vextq_s8(v152, v153, 0xAuLL);
              }

              else
              {
                v154 = vextq_s8(v152, v153, 0xAuLL);
                v153 = vextq_s8(v152, v153, 0xCuLL);
              }

              goto LABEL_379;
            }

            if ((v18 & 0xEu) > 3)
            {
              break;
            }

            if ((v18 & 0xE) != 0)
            {
              v154 = vextq_s8(v152, v153, 2uLL);
              v153 = vextq_s8(v152, v153, 4uLL);
LABEL_379:
              v152 = v154;
              goto LABEL_380;
            }

            v153 = vextq_s8(v152, v153, 2uLL);
LABEL_380:
            ++v145;
            ++v146;
            v155 = vzip1q_s8(v152, 0);
            v156 = vzip2q_s8(v152, 0);
            v157 = vmlaq_s16(vmulq_s16(v143, v13), v144, v14);
            v144 = vzip1q_s8(v153, 0);
            v158 = vmlaq_s16(vmulq_s16(v149, v13), v148, v14);
            v148 = vzip2q_s8(v153, 0);
            *a5 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v157, v144, v16), v155, v15), v150), 6uLL)), vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v158, v148, v16), v156, v15), v150), 6uLL));
            a5 = (a5 + a6);
            v143 = v155;
            v149 = v156;
            if (!--v20)
            {
              return result;
            }
          }

          if (v28 == 4)
          {
            v154 = vextq_s8(v152, v153, 4uLL);
            v153 = vextq_s8(v152, v153, 6uLL);
          }

          else
          {
            v154 = vextq_s8(v152, v153, 6uLL);
            v153 = vextq_s8(v152, v153, 8uLL);
          }

          goto LABEL_379;
        }

        v159 = v27 + 14;
        if (v19 == 7)
        {
          if (!v20)
          {
            return result;
          }

          if (!v10)
          {
            v12 = 0;
          }

          v160.i64[0] = 0x20002000200020;
          v160.i64[1] = 0x20002000200020;
          while (1)
          {
            v161 = result;
            if (v9)
            {
              result = (v12 + 2 * *v145);
            }

            else
            {
              result = *v146;
            }

            v162 = *(v26 + v161);
            v163 = vqtbl1q_s8((*(v159 + v161) | (*(v159 + v161) << 16)), xmmword_2773B3DF0);
            if ((v18 & 0xEu) > 7)
            {
              if ((v18 & 0xEu) > 0xB)
              {
                if (v28 != 12)
                {
                  v162 = vextq_s8(v162, v163, 0xEuLL);
                  goto LABEL_406;
                }

                v164 = vextq_s8(v162, v163, 0xCuLL);
                v163 = vextq_s8(v162, v163, 0xEuLL);
              }

              else if (v28 == 8)
              {
                v164 = vextq_s8(v162, v163, 8uLL);
                v163 = vextq_s8(v162, v163, 0xAuLL);
              }

              else
              {
                v164 = vextq_s8(v162, v163, 0xAuLL);
                v163 = vextq_s8(v162, v163, 0xCuLL);
              }

              goto LABEL_405;
            }

            if ((v18 & 0xEu) > 3)
            {
              break;
            }

            if ((v18 & 0xE) != 0)
            {
              v164 = vextq_s8(v162, v163, 2uLL);
              v163 = vextq_s8(v162, v163, 4uLL);
LABEL_405:
              v162 = v164;
              goto LABEL_406;
            }

            v163 = vextq_s8(v162, v163, 2uLL);
LABEL_406:
            ++v145;
            ++v146;
            v165 = vzip1q_s8(v162, 0);
            v166 = vmlaq_s16(vmulq_s16(v143, v13), v144, v14);
            v144 = vzip1q_s8(v163, 0);
            *a5->i8 = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v166, v144, v16), v165, v15), v160), 6uLL));
            a5 = (a5 + a6);
            v143 = v165;
            if (!--v20)
            {
              return result;
            }
          }

          if (v28 == 4)
          {
            v164 = vextq_s8(v162, v163, 4uLL);
            v163 = vextq_s8(v162, v163, 6uLL);
          }

          else
          {
            v164 = vextq_s8(v162, v163, 6uLL);
            v163 = vextq_s8(v162, v163, 8uLL);
          }

          goto LABEL_405;
        }

        if (!v20)
        {
          return result;
        }

        if (!v10)
        {
          v12 = 0;
        }

        v167.i64[0] = 0x20002000200020;
        v167.i64[1] = 0x20002000200020;
        while (1)
        {
          v168 = result;
          if (v9)
          {
            result = (v12 + 2 * *v145);
          }

          else
          {
            result = *v146;
          }

          v169 = *(v26 + v168);
          v170 = vqtbl1q_s8((*(v159 + v168) | (*(v159 + v168) << 16)), xmmword_2773B3DF0);
          if ((v18 & 0xEu) > 7)
          {
            if ((v18 & 0xEu) > 0xB)
            {
              if (v28 != 12)
              {
                v169 = vextq_s8(v169, v170, 0xEuLL);
                goto LABEL_431;
              }

              v171 = vextq_s8(v169, v170, 0xCuLL);
              v170 = vextq_s8(v169, v170, 0xEuLL);
            }

            else if (v28 == 8)
            {
              v171 = vextq_s8(v169, v170, 8uLL);
              v170 = vextq_s8(v169, v170, 0xAuLL);
            }

            else
            {
              v171 = vextq_s8(v169, v170, 0xAuLL);
              v170 = vextq_s8(v169, v170, 0xCuLL);
            }

            goto LABEL_430;
          }

          if ((v18 & 0xEu) > 3)
          {
            break;
          }

          if ((v18 & 0xE) != 0)
          {
            v171 = vextq_s8(v169, v170, 2uLL);
            v170 = vextq_s8(v169, v170, 4uLL);
LABEL_430:
            v169 = v171;
            goto LABEL_431;
          }

          v170 = vextq_s8(v169, v170, 2uLL);
LABEL_431:
          ++v145;
          ++v146;
          v172 = vzip1q_s8(v169, 0);
          v173 = vmlaq_s16(vmulq_s16(v143, v13), v144, v14);
          v144 = vzip1q_s8(v170, 0);
          a5->i32[0] = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v173, v144, v16), v172, v15), v167), 6uLL)).u32[0];
          a5 = (a5 + a6);
          v143 = v172;
          if (!--v20)
          {
            return result;
          }
        }

        if (v28 == 4)
        {
          v171 = vextq_s8(v169, v170, 4uLL);
          v170 = vextq_s8(v169, v170, 6uLL);
        }

        else
        {
          v171 = vextq_s8(v169, v170, 6uLL);
          v170 = vextq_s8(v169, v170, 8uLL);
        }

        goto LABEL_430;
      }

      v48 = vextq_s8(v46, v47, 2uLL);
      v47 = vextq_s8(v46, v47, 4uLL);
    }

    v46 = v48;
    goto LABEL_351;
  }

  if (v25 != 1)
  {
    if (v9)
    {
      if (v10)
      {
        v33 = *(a1 + 38);
      }

      else
      {
        v33 = 0;
      }

      v34 = v33 + 2 * *v22;
    }

    else
    {
      v34 = *v21;
    }

    v43 = vqtbl1q_s8((*(v26 + v34) | (*(v26 + v34) << 16)), xmmword_2773B3DF0);
    v44 = vqtbl1q_s8((*(v27 + v34 + 14) | (*(v27 + v34 + 14) << 16)), xmmword_2773B3DF0);
    if ((v18 & 0xEu) > 7)
    {
      if ((v18 & 0xEu) > 0xB)
      {
        if (v28 != 12)
        {
          v43 = vextq_s8(v43, v44, 0xEuLL);
          goto LABEL_265;
        }

        v45 = vextq_s8(v43, v44, 0xCuLL);
        v44 = vextq_s8(v43, v44, 0xEuLL);
      }

      else if (v28 == 8)
      {
        v45 = vextq_s8(v43, v44, 8uLL);
        v44 = vextq_s8(v43, v44, 0xAuLL);
      }

      else
      {
        v45 = vextq_s8(v43, v44, 0xAuLL);
        v44 = vextq_s8(v43, v44, 0xCuLL);
      }
    }

    else if ((v18 & 0xEu) > 3)
    {
      if (v28 == 4)
      {
        v45 = vextq_s8(v43, v44, 4uLL);
        v44 = vextq_s8(v43, v44, 6uLL);
      }

      else
      {
        v45 = vextq_s8(v43, v44, 6uLL);
        v44 = vextq_s8(v43, v44, 8uLL);
      }
    }

    else
    {
      if ((v18 & 0xE) == 0)
      {
        v44 = vextq_s8(v43, v44, 2uLL);
LABEL_265:
        if (v9)
        {
          if (v10)
          {
            v110 = v12;
          }

          else
          {
            v110 = 0;
          }

          result = (v110 + 2 * v22[1]);
        }

        else
        {
          result = v21[1];
        }

        v111 = vzip1q_s8(v43, 0);
        v112 = vzip1q_s8(v44, 0);
        v113 = v22 + 2;
        v114 = v21 + 2;
        if (v19 >= 8)
        {
          if (!v20)
          {
            return result;
          }

          v115 = v27 + 14;
          v116 = vzip2q_s8(v44, 0);
          v117 = vzip2q_s8(v43, 0);
          if (!v10)
          {
            v12 = 0;
          }

          v118.i64[0] = 0x20002000200020;
          v118.i64[1] = 0x20002000200020;
          while (1)
          {
            v119 = result;
            if (v9)
            {
              result = (v12 + 2 * *v113);
            }

            else
            {
              result = *v114;
            }

            v120 = vqtbl1q_s8((*(v26 + v119) | (*(v26 + v119) << 16)), xmmword_2773B3DF0);
            v121 = vqtbl1q_s8((*(v115 + v119) | (*(v115 + v119) << 16)), xmmword_2773B3DF0);
            if ((v18 & 0xEu) > 7)
            {
              if ((v18 & 0xEu) > 0xB)
              {
                if (v28 != 12)
                {
                  v120 = vextq_s8(v120, v121, 0xEuLL);
                  goto LABEL_294;
                }

                v122 = vextq_s8(v120, v121, 0xCuLL);
                v121 = vextq_s8(v120, v121, 0xEuLL);
              }

              else if (v28 == 8)
              {
                v122 = vextq_s8(v120, v121, 8uLL);
                v121 = vextq_s8(v120, v121, 0xAuLL);
              }

              else
              {
                v122 = vextq_s8(v120, v121, 0xAuLL);
                v121 = vextq_s8(v120, v121, 0xCuLL);
              }

              goto LABEL_293;
            }

            if ((v18 & 0xEu) > 3)
            {
              break;
            }

            if ((v18 & 0xE) != 0)
            {
              v122 = vextq_s8(v120, v121, 2uLL);
              v121 = vextq_s8(v120, v121, 4uLL);
LABEL_293:
              v120 = v122;
              goto LABEL_294;
            }

            v121 = vextq_s8(v120, v121, 2uLL);
LABEL_294:
            ++v113;
            ++v114;
            v123 = vzip1q_s8(v120, 0);
            v124 = vzip2q_s8(v120, 0);
            v125 = vmlaq_s16(vmulq_s16(v111, v13), v112, v14);
            v112 = vzip1q_s8(v121, 0);
            v126 = vmlaq_s16(vmulq_s16(v117, v13), v116, v14);
            v116 = vzip2q_s8(v121, 0);
            *a5 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v125, v112, v16), v123, v15), v118), 6uLL)), vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v126, v116, v16), v124, v15), v118), 6uLL));
            a5 = (a5 + a6);
            v111 = v123;
            v117 = v124;
            if (!--v20)
            {
              return result;
            }
          }

          if (v28 == 4)
          {
            v122 = vextq_s8(v120, v121, 4uLL);
            v121 = vextq_s8(v120, v121, 6uLL);
          }

          else
          {
            v122 = vextq_s8(v120, v121, 6uLL);
            v121 = vextq_s8(v120, v121, 8uLL);
          }

          goto LABEL_293;
        }

        v127 = v27 + 14;
        if (v19 == 7)
        {
          if (!v20)
          {
            return result;
          }

          if (!v10)
          {
            v12 = 0;
          }

          v128.i64[0] = 0x20002000200020;
          v128.i64[1] = 0x20002000200020;
          while (1)
          {
            v129 = result;
            if (v9)
            {
              result = (v12 + 2 * *v113);
            }

            else
            {
              result = *v114;
            }

            v130 = vqtbl1q_s8((*(v26 + v129) | (*(v26 + v129) << 16)), xmmword_2773B3DF0);
            v131 = vqtbl1q_s8((*(v127 + v129) | (*(v127 + v129) << 16)), xmmword_2773B3DF0);
            if ((v18 & 0xEu) > 7)
            {
              if ((v18 & 0xEu) > 0xB)
              {
                if (v28 != 12)
                {
                  v130 = vextq_s8(v130, v131, 0xEuLL);
                  goto LABEL_320;
                }

                v132 = vextq_s8(v130, v131, 0xCuLL);
                v131 = vextq_s8(v130, v131, 0xEuLL);
              }

              else if (v28 == 8)
              {
                v132 = vextq_s8(v130, v131, 8uLL);
                v131 = vextq_s8(v130, v131, 0xAuLL);
              }

              else
              {
                v132 = vextq_s8(v130, v131, 0xAuLL);
                v131 = vextq_s8(v130, v131, 0xCuLL);
              }

              goto LABEL_319;
            }

            if ((v18 & 0xEu) > 3)
            {
              break;
            }

            if ((v18 & 0xE) != 0)
            {
              v132 = vextq_s8(v130, v131, 2uLL);
              v131 = vextq_s8(v130, v131, 4uLL);
LABEL_319:
              v130 = v132;
              goto LABEL_320;
            }

            v131 = vextq_s8(v130, v131, 2uLL);
LABEL_320:
            ++v113;
            ++v114;
            v133 = vzip1q_s8(v130, 0);
            v134 = vmlaq_s16(vmulq_s16(v111, v13), v112, v14);
            v112 = vzip1q_s8(v131, 0);
            *a5->i8 = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v134, v112, v16), v133, v15), v128), 6uLL));
            a5 = (a5 + a6);
            v111 = v133;
            if (!--v20)
            {
              return result;
            }
          }

          if (v28 == 4)
          {
            v132 = vextq_s8(v130, v131, 4uLL);
            v131 = vextq_s8(v130, v131, 6uLL);
          }

          else
          {
            v132 = vextq_s8(v130, v131, 6uLL);
            v131 = vextq_s8(v130, v131, 8uLL);
          }

          goto LABEL_319;
        }

        if (!v20)
        {
          return result;
        }

        if (!v10)
        {
          v12 = 0;
        }

        v135.i64[0] = 0x20002000200020;
        v135.i64[1] = 0x20002000200020;
        while (1)
        {
          v136 = result;
          if (v9)
          {
            result = (v12 + 2 * *v113);
          }

          else
          {
            result = *v114;
          }

          v137 = vqtbl1q_s8((*(v26 + v136) | (*(v26 + v136) << 16)), xmmword_2773B3DF0);
          v138 = vqtbl1q_s8((*(v127 + v136) | (*(v127 + v136) << 16)), xmmword_2773B3DF0);
          if ((v18 & 0xEu) > 7)
          {
            if ((v18 & 0xEu) > 0xB)
            {
              if (v28 != 12)
              {
                v137 = vextq_s8(v137, v138, 0xEuLL);
                goto LABEL_345;
              }

              v139 = vextq_s8(v137, v138, 0xCuLL);
              v138 = vextq_s8(v137, v138, 0xEuLL);
            }

            else if (v28 == 8)
            {
              v139 = vextq_s8(v137, v138, 8uLL);
              v138 = vextq_s8(v137, v138, 0xAuLL);
            }

            else
            {
              v139 = vextq_s8(v137, v138, 0xAuLL);
              v138 = vextq_s8(v137, v138, 0xCuLL);
            }

            goto LABEL_344;
          }

          if ((v18 & 0xEu) > 3)
          {
            break;
          }

          if ((v18 & 0xE) != 0)
          {
            v139 = vextq_s8(v137, v138, 2uLL);
            v138 = vextq_s8(v137, v138, 4uLL);
LABEL_344:
            v137 = v139;
            goto LABEL_345;
          }

          v138 = vextq_s8(v137, v138, 2uLL);
LABEL_345:
          ++v113;
          ++v114;
          v140 = vzip1q_s8(v137, 0);
          v141 = vmlaq_s16(vmulq_s16(v111, v13), v112, v14);
          v112 = vzip1q_s8(v138, 0);
          a5->i32[0] = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v141, v112, v16), v140, v15), v135), 6uLL)).u32[0];
          a5 = (a5 + a6);
          v111 = v140;
          if (!--v20)
          {
            return result;
          }
        }

        if (v28 == 4)
        {
          v139 = vextq_s8(v137, v138, 4uLL);
          v138 = vextq_s8(v137, v138, 6uLL);
        }

        else
        {
          v139 = vextq_s8(v137, v138, 6uLL);
          v138 = vextq_s8(v137, v138, 8uLL);
        }

        goto LABEL_344;
      }

      v45 = vextq_s8(v43, v44, 2uLL);
      v44 = vextq_s8(v43, v44, 4uLL);
    }

    v43 = v45;
    goto LABEL_265;
  }

  if (v9)
  {
    if (v10)
    {
      v29 = *(a1 + 38);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 + 2 * *v22;
  }

  else
  {
    v30 = *v21;
  }

  v37 = vqtbl1q_s8((*(v26 + v30) | (*(v26 + v30) << 16)), xmmword_2773B3DF0);
  v38 = *(v27 + v30);
  if ((v18 & 0xEu) <= 7)
  {
    if ((v18 & 0xEu) > 3)
    {
      if (v28 == 4)
      {
        v39 = vextq_s8(v37, v38, 4uLL);
        v38 = vextq_s8(v37, v38, 6uLL);
      }

      else
      {
        v39 = vextq_s8(v37, v38, 6uLL);
        v38 = vextq_s8(v37, v38, 8uLL);
      }
    }

    else
    {
      if ((v18 & 0xE) == 0)
      {
        v38 = vextq_s8(v37, v38, 2uLL);
        goto LABEL_93;
      }

      v39 = vextq_s8(v37, v38, 2uLL);
      v38 = vextq_s8(v37, v38, 4uLL);
    }

    goto LABEL_92;
  }

  if ((v18 & 0xEu) <= 0xB)
  {
    if (v28 == 8)
    {
      v39 = vextq_s8(v37, v38, 8uLL);
      v38 = vextq_s8(v37, v38, 0xAuLL);
    }

    else
    {
      v39 = vextq_s8(v37, v38, 0xAuLL);
      v38 = vextq_s8(v37, v38, 0xCuLL);
    }

    goto LABEL_92;
  }

  if (v28 == 12)
  {
    v39 = vextq_s8(v37, v38, 0xCuLL);
    v38 = vextq_s8(v37, v38, 0xEuLL);
LABEL_92:
    v37 = v39;
    goto LABEL_93;
  }

  v37 = vextq_s8(v37, v38, 0xEuLL);
LABEL_93:
  if (v9)
  {
    if (v10)
    {
      v49 = v12;
    }

    else
    {
      v49 = 0;
    }

    result = (v49 + 2 * v22[1]);
  }

  else
  {
    result = v21[1];
  }

  v51 = vzip1q_s8(v37, 0);
  v52 = vzip1q_s8(v38, 0);
  v53 = v21 + 2;
  v54 = v22 + 2;
  if (v19 < 8)
  {
    if (v19 == 7)
    {
      if (!v20)
      {
        return result;
      }

      if (!v10)
      {
        v12 = 0;
      }

      v66.i64[0] = 0x20002000200020;
      v66.i64[1] = 0x20002000200020;
      while (1)
      {
        v67 = result;
        if (v9)
        {
          result = (v12 + 2 * *v54);
        }

        else
        {
          result = *v53;
        }

        v68 = vqtbl1q_s8((*(v26 + v67) | (*(v26 + v67) << 16)), xmmword_2773B3DF0);
        v69 = *(v27 + v67);
        if ((v18 & 0xEu) > 7)
        {
          if ((v18 & 0xEu) > 0xB)
          {
            if (v28 != 12)
            {
              v68 = vextq_s8(v68, v69, 0xEuLL);
              goto LABEL_148;
            }

            v70 = vextq_s8(v68, v69, 0xCuLL);
            v69 = vextq_s8(v68, v69, 0xEuLL);
          }

          else if (v28 == 8)
          {
            v70 = vextq_s8(v68, v69, 8uLL);
            v69 = vextq_s8(v68, v69, 0xAuLL);
          }

          else
          {
            v70 = vextq_s8(v68, v69, 0xAuLL);
            v69 = vextq_s8(v68, v69, 0xCuLL);
          }

          goto LABEL_147;
        }

        if ((v18 & 0xEu) > 3)
        {
          break;
        }

        if ((v18 & 0xE) != 0)
        {
          v70 = vextq_s8(v68, v69, 2uLL);
          v69 = vextq_s8(v68, v69, 4uLL);
LABEL_147:
          v68 = v70;
          goto LABEL_148;
        }

        v69 = vextq_s8(v68, v69, 2uLL);
LABEL_148:
        ++v54;
        ++v53;
        v71 = vzip1q_s8(v68, 0);
        v72 = vmlaq_s16(vmulq_s16(v51, v13), v52, v14);
        v52 = vzip1q_s8(v69, 0);
        *a5->i8 = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v72, v52, v16), v71, v15), v66), 6uLL));
        a5 = (a5 + a6);
        v51 = v71;
        if (!--v20)
        {
          return result;
        }
      }

      if (v28 == 4)
      {
        v70 = vextq_s8(v68, v69, 4uLL);
        v69 = vextq_s8(v68, v69, 6uLL);
      }

      else
      {
        v70 = vextq_s8(v68, v69, 6uLL);
        v69 = vextq_s8(v68, v69, 8uLL);
      }

      goto LABEL_147;
    }

    if (!v20)
    {
      return result;
    }

    if (!v10)
    {
      v12 = 0;
    }

    v73.i64[0] = 0x20002000200020;
    v73.i64[1] = 0x20002000200020;
    while (1)
    {
      v74 = result;
      if (v9)
      {
        result = (v12 + 2 * *v54);
      }

      else
      {
        result = *v53;
      }

      v75 = vqtbl1q_s8((*(v26 + v74) | (*(v26 + v74) << 16)), xmmword_2773B3DF0);
      v76 = *(v27 + v74);
      if ((v18 & 0xEu) > 7)
      {
        if ((v18 & 0xEu) > 0xB)
        {
          if (v28 != 12)
          {
            v75 = vextq_s8(v75, v76, 0xEuLL);
            goto LABEL_173;
          }

          v77 = vextq_s8(v75, v76, 0xCuLL);
          v76 = vextq_s8(v75, v76, 0xEuLL);
        }

        else if (v28 == 8)
        {
          v77 = vextq_s8(v75, v76, 8uLL);
          v76 = vextq_s8(v75, v76, 0xAuLL);
        }

        else
        {
          v77 = vextq_s8(v75, v76, 0xAuLL);
          v76 = vextq_s8(v75, v76, 0xCuLL);
        }

        goto LABEL_172;
      }

      if ((v18 & 0xEu) > 3)
      {
        break;
      }

      if ((v18 & 0xE) != 0)
      {
        v77 = vextq_s8(v75, v76, 2uLL);
        v76 = vextq_s8(v75, v76, 4uLL);
LABEL_172:
        v75 = v77;
        goto LABEL_173;
      }

      v76 = vextq_s8(v75, v76, 2uLL);
LABEL_173:
      ++v54;
      ++v53;
      v78 = vzip1q_s8(v75, 0);
      v79 = vmlaq_s16(vmulq_s16(v51, v13), v52, v14);
      v52 = vzip1q_s8(v76, 0);
      a5->i32[0] = vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v79, v52, v16), v78, v15), v73), 6uLL)).u32[0];
      a5 = (a5 + a6);
      v51 = v78;
      if (!--v20)
      {
        return result;
      }
    }

    if (v28 == 4)
    {
      v77 = vextq_s8(v75, v76, 4uLL);
      v76 = vextq_s8(v75, v76, 6uLL);
    }

    else
    {
      v77 = vextq_s8(v75, v76, 6uLL);
      v76 = vextq_s8(v75, v76, 8uLL);
    }

    goto LABEL_172;
  }

  if (v20)
  {
    v55 = vzip2q_s8(v38, 0);
    v56 = vzip2q_s8(v37, 0);
    if (!v10)
    {
      v12 = 0;
    }

    v57.i64[0] = 0x20002000200020;
    v57.i64[1] = 0x20002000200020;
    while (1)
    {
      v58 = result;
      if (v9)
      {
        result = (v12 + 2 * *v54);
      }

      else
      {
        result = *v53;
      }

      v59 = vqtbl1q_s8((*(v26 + v58) | (*(v26 + v58) << 16)), xmmword_2773B3DF0);
      v60 = *(v27 + v58);
      if ((v18 & 0xEu) > 7)
      {
        if ((v18 & 0xEu) > 0xB)
        {
          if (v28 != 12)
          {
            v59 = vextq_s8(v59, v60, 0xEuLL);
            goto LABEL_122;
          }

          v61 = vextq_s8(v59, v60, 0xCuLL);
          v60 = vextq_s8(v59, v60, 0xEuLL);
        }

        else if (v28 == 8)
        {
          v61 = vextq_s8(v59, v60, 8uLL);
          v60 = vextq_s8(v59, v60, 0xAuLL);
        }

        else
        {
          v61 = vextq_s8(v59, v60, 0xAuLL);
          v60 = vextq_s8(v59, v60, 0xCuLL);
        }

        goto LABEL_121;
      }

      if ((v18 & 0xEu) > 3)
      {
        break;
      }

      if ((v18 & 0xE) != 0)
      {
        v61 = vextq_s8(v59, v60, 2uLL);
        v60 = vextq_s8(v59, v60, 4uLL);
LABEL_121:
        v59 = v61;
        goto LABEL_122;
      }

      v60 = vextq_s8(v59, v60, 2uLL);
LABEL_122:
      ++v54;
      ++v53;
      v62 = vzip1q_s8(v59, 0);
      v63 = vzip2q_s8(v59, 0);
      v64 = vmlaq_s16(vmulq_s16(v51, v13), v52, v14);
      v52 = vzip1q_s8(v60, 0);
      v65 = vmlaq_s16(vmulq_s16(v56, v13), v55, v14);
      v55 = vzip2q_s8(v60, 0);
      *a5 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v64, v52, v16), v62, v15), v57), 6uLL)), vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v65, v55, v16), v63, v15), v57), 6uLL));
      a5 = (a5 + a6);
      v51 = v62;
      v56 = v63;
      if (!--v20)
      {
        return result;
      }
    }

    if (v28 == 4)
    {
      v61 = vextq_s8(v59, v60, 4uLL);
      v60 = vextq_s8(v59, v60, 6uLL);
    }

    else
    {
      v61 = vextq_s8(v59, v60, 6uLL);
      v60 = vextq_s8(v59, v60, 8uLL);
    }

    goto LABEL_121;
  }

  return result;
}

uint64_t sub_27728D91C(uint64_t a1, _DWORD *a2, int a3, int a4, int8x8_t *a5, unsigned int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15, uint64_t a16, _DWORD *a17, int a18, int a19)
{
  v309 = *MEMORY[0x277D85DE8];
  if (*(a16 + 31))
  {
    v282 = *(a16 + 31) == 2 && *(a1 + 3) != 0;
    if (*(a16 + 30))
    {
      v19 = (a17[12 * a19 + 9] & 1) == 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = (*(a16 + 30) == 0) & a17[12 * a19 + 9];
    }
  }

  else
  {
    if (*a1)
    {
      v282 = *(a1 + 3) != 0;
    }

    else
    {
      v282 = 0;
    }

    v20 = *(a1 + 5);
  }

  v21 = *(a1 + 152);
  v22 = a2[1];
  v23 = *(*(a1 + 1096) + 2 * (v22 >> 4) + 2);
  v24 = v23 & 0x1FFF;
  v25 = (v23 >> 13) & 1;
  v26 = ((v23 >> 14) & 1) + v25;
  if (v25)
  {
    v27 = v26 == 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = !v27;
  if (a7 || (v28 & 1) != 0)
  {
    v38 = a2[3] >> 1;
    v260 = ((a2[7] - 1) >> 1) - v38;
    v39 = (*(a1 + 1104) + 4 * v38 + 36);
    v40 = (*(a1 + 1112) + 4 * v38 + 36);
    v243 = *(a1 + 40) + (16 * v24);
    if (v28)
    {
      v41 = 0;
      v42 = xmmword_2773B4160[v25];
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v305 = vaddq_s8(xmmword_2773B4160[v26], v43);
      v306 = v42;
      v44 = vaddq_s8(vdupq_n_s8(v22 & 0xE), xmmword_2773B3DE0);
      *(&v308 | 0xA) = v44.i8[8];
      v308.i8[0] = v22 & 0xE;
      *(&v308 | 0xB) = v44.i8[9];
      v308.i8[1] = v22 & 0xE | 1;
      *(&v308 | 0xC) = v44.i8[10];
      *(&v308 | 0xD) = v44.i8[11];
      *(&v308 | 0xE) = v44.i8[12];
      *(v308.i64 + 2) = v44.i64[0];
      *(&v308 | 0xF) = v44.i8[13];
      v307 = v44;
      do
      {
        if ((v308.i8[v41] & 0x10) != 0)
        {
          v45 = &v305;
        }

        else
        {
          v45 = &v306;
        }

        v308.i8[v41] = *(v45 & 0xFFFFFFFFFFFFFFF0 | v308.i8[v41] & 0xF);
        ++v41;
      }

      while (v41 != 16);
      for (i = 0; i != 16; ++i)
      {
        if ((v307.i8[i] & 0x10) != 0)
        {
          v47 = &v305;
        }

        else
        {
          v47 = &v306;
        }

        v307.i8[i] = *(v47 & 0xFFFFFFFFFFFFFFF0 | v307.i8[i] & 0xF);
      }
    }

    else
    {
      v48 = vdupq_n_s8(a2[1] & 0xE);
      v307 = vaddq_s8(v48, xmmword_2773B3DE0);
      v308 = vaddq_s8(v48, xmmword_2773B3DD0);
    }

    v49 = (8 - a3);
    v50 = (8 - a4);
    v235 = v260 + 1;
    v242 = v243 + ((v23 >> 11) & 0x10);
    if (v282)
    {
      if (v20)
      {
        v51 = v21;
      }

      else
      {
        v51 = 0;
      }

      v52 = v51 + 2 * *v40;
    }

    else
    {
      v52 = *v39;
    }

    v53 = 0;
    v241 = v50 * v49;
    v240 = v50 * a3;
    v239 = v49 * a4;
    v238 = a4 * a3;
    v54 = a2[5] - v22;
    v306 = *(v243 + v52);
    v305 = *(v242 + v52);
    do
    {
      if ((v308.i8[v53] & 0x10) != 0)
      {
        v55 = &v305;
      }

      else
      {
        v55 = &v306;
      }

      *(&v296 + v53) = v55->u8[v308.i8[v53] & 0xF];
      ++v53;
    }

    while (v53 != 16);
    v283 = a5;
    for (j = 0; j != 16; ++j)
    {
      if ((v307.i8[j] & 0x10) != 0)
      {
        v57 = &v305;
      }

      else
      {
        v57 = &v306;
      }

      *(&v287 + j) = v57->u8[v307.i8[j] & 0xF];
    }

    v58 = v296;
    v59 = v297;
    v60 = v298;
    v61 = v299;
    v62 = v300;
    v63 = v301;
    result = v302;
    v65 = v303;
    v66 = v287;
    v67 = v288;
    v68 = v289;
    v69 = v290;
    v70 = v291;
    v71 = v292;
    v72 = v293;
    v73 = v294;
    if (v282)
    {
      if (v20)
      {
        v74 = v21;
      }

      else
      {
        v74 = 0;
      }

      v75 = v74 + 2 * v40[1];
    }

    else
    {
      v75 = v39[1];
    }

    v76 = v39 + 2;
    v284 = v40 + 2;
    if (v54 < 8)
    {
      if (v54 == 7)
      {
        if (v260 != -1)
        {
          v119 = 0;
          if (v20)
          {
            v120 = v21;
          }

          else
          {
            v120 = 0;
          }

          v226 = v120;
          v228 = a6;
          do
          {
            v258 = v119;
            v306 = *(v243 + v75);
            v305 = *(v242 + v75);
            if (v282)
            {
              v121 = v226 + 2 * *v284;
            }

            else
            {
              v121 = *v76;
            }

            v122 = 0;
            v123 = v76 + 1;
            do
            {
              if ((v308.i8[v122] & 0x10) != 0)
              {
                v124 = &v305;
              }

              else
              {
                v124 = &v306;
              }

              *(&v296 + v122) = v124->u8[v308.i8[v122] & 0xF];
              ++v122;
            }

            while (v122 != 16);
            v277 = v121;
            v280 = v123;
            for (k = 0; k != 16; ++k)
            {
              if ((v307.i8[k] & 0x10) != 0)
              {
                v126 = &v305;
              }

              else
              {
                v126 = &v306;
              }

              *(&v287 + k) = v126->u8[v307.i8[k] & 0xF];
            }

            v127 = v67 * v240 + v59 * v241;
            v267 = v296;
            v246 = v288;
            v248 = v287;
            v128 = v66 * v240 + v58 * v241 + v239 * v296 + v238 * v287;
            v263 = v297;
            v129 = v127 + v239 * v297 + v238 * v288;
            v254 = v299;
            v256 = v298;
            v236 = v289;
            v234 = v290;
            v250 = v301;
            v252 = v300;
            v232 = v291;
            v130 = v70 * v240 + v62 * v241 + v239 * v300 + v238 * v291;
            v230 = v292;
            v131 = v71 * v240 + v63 * v241 + v239 * v301 + v238 * v292;
            v132 = v293;
            v270 = v302;
            v133 = v72 * v240 + result * v241 + v239 * v302 + v238 * v293;
            v134 = v68 * v240 + v60 * v241 + v239 * v298 + v238 * v289 + 32;
            v135 = v69 * v240 + v61 * v241 + v239 * v299 + v238 * v290 + 32;
            v136 = v130 + 32;
            v285.i8[0] = (v128 + 32) >> 6;
            v285.i8[1] = (v129 + 32) >> 6;
            v285.i8[2] = v134 >> 6;
            v285.i8[3] = v135 >> 6;
            v285.i8[4] = (v130 + 32) >> 6;
            v137 = v294;
            v274 = v303;
            v285.i8[5] = (v131 + 32) >> 6;
            v138 = v73 * v240 + v65 * v241 + v239 * v303 + v238 * v294 + 32;
            v285.i8[6] = (v133 + 32) >> 6;
            v285.i8[7] = v138 >> 6;
            v286 = v285;
            if (a7)
            {
              sub_27728EFD0(8, &v285, v283, a8, a16, a17, a18);
            }

            else
            {
              v283->i8[0] = (v128 + 32) >> 6;
              v283->i8[1] = (v129 + 32) >> 6;
              v283->i8[2] = v134 >> 6;
              v283->i8[3] = v135 >> 6;
              v283->i8[4] = v136 >> 6;
              v283->i8[5] = (v131 + 32) >> 6;
              v283->i8[6] = (v133 + 32) >> 6;
              v283->i8[7] = v138 >> 6;
            }

            v283 = (v283 + v228);
            ++v284;
            v60 = v256;
            v119 = v258 + 1;
            v73 = v137;
            v72 = v132;
            v71 = v230;
            v70 = v232;
            v69 = v234;
            v68 = v236;
            v67 = v246;
            v66 = v248;
            v65 = v274;
            v75 = v277;
            v58 = v267;
            result = v270;
            v63 = v250;
            v62 = v252;
            v61 = v254;
            v59 = v263;
            v76 = v280;
          }

          while (v258 != v260);
        }
      }

      else if (v260 != -1)
      {
        v191 = 0;
        if (v20)
        {
          v192 = v21;
        }

        else
        {
          v192 = 0;
        }

        v259 = v192;
        v264 = a6;
        do
        {
          v306 = *(v243 + v75);
          v305 = *(v242 + v75);
          if (v282)
          {
            v193 = v259 + 2 * *v284;
          }

          else
          {
            v193 = *v76;
          }

          v194 = v283;
          v195 = 0;
          v196 = v76 + 1;
          do
          {
            if ((v308.i8[v195] & 0x10) != 0)
            {
              v197 = &v305;
            }

            else
            {
              v197 = &v306;
            }

            *(&v296 + v195) = v197->u8[v308.i8[v195] & 0xF];
            ++v195;
          }

          while (v195 != 16);
          v278 = v193;
          v281 = v196;
          for (m = 0; m != 16; ++m)
          {
            if ((v307.i8[m] & 0x10) != 0)
            {
              v199 = &v305;
            }

            else
            {
              v199 = &v306;
            }

            *(&v287 + m) = v199->u8[v307.i8[m] & 0xF];
          }

          result = v296;
          v200 = v297;
          v201 = v298;
          v202 = v299;
          v203 = v287;
          v204 = v288;
          v205 = v289;
          v206 = v290;
          v207 = v68 * v240 + v60 * v241;
          v208 = v69 * v240 + v61 * v241;
          v209 = v67 * v240 + v59 * v241 + v239 * v297 + v238 * v288;
          v210 = v207 + v239 * v298 + v238 * v289;
          v211 = v66 * v240 + v58 * v241 + v239 * v296 + v238 * v287 + 32;
          v285.i8[0] = v211 >> 6;
          v285.i8[1] = (v209 + 32) >> 6;
          v285.i8[2] = (v210 + 32) >> 6;
          v212 = v208 + v239 * v299 + v238 * v290 + 32;
          v285.i8[3] = v212 >> 6;
          v285.i32[1] = v285.i32[0];
          v286.i32[0] = v285.i32[0];
          v286.i32[1] = v285.i32[0];
          if (a7)
          {
            v272 = v296;
            v275 = v297;
            v268 = v298;
            v271 = v191;
            v265 = v290;
            v213 = v287;
            v214 = v288;
            sub_27728EFD0(4, &v285, v283, a8, a16, a17, a18);
            v204 = v214;
            v203 = v213;
            v206 = v265;
            v201 = v268;
            result = v272;
            v200 = v275;
            v191 = v271;
            v194 = v283;
          }

          else
          {
            v283->i8[0] = v211 >> 6;
            v283->i8[1] = (v209 + 32) >> 6;
            v283->i8[2] = (v210 + 32) >> 6;
            v283->i8[3] = v212 >> 6;
          }

          v283 = (v194 + v264);
          ++v284;
          v69 = v206;
          v68 = v205;
          v67 = v204;
          v66 = v203;
          v61 = v202;
          v60 = v201;
          v59 = v200;
          v58 = result;
          v19 = v191++ == v260;
          v76 = v281;
          v75 = v278;
        }

        while (!v19);
      }
    }

    else
    {
      v77 = 0;
      v78 = v304;
      v79 = v295;
      if (v20)
      {
        v80 = v21;
      }

      else
      {
        v80 = 0;
      }

      v227 = v80;
      v81 = vdup_n_s16(v241);
      v82 = vdup_n_s16(v240);
      v233 = a6;
      v229 = vdupq_n_s16(v238);
      v231 = vdupq_n_s16(v239);
      while (v77 != v235)
      {
        v261 = v77;
        v306 = *(v243 + v75);
        v305 = *(v242 + v75);
        if (v282)
        {
          v83 = v227 + 2 * *v284;
        }

        else
        {
          v83 = *v76;
        }

        v84 = 0;
        v85 = vmovl_u8(v79);
        v86 = vmovl_high_u16(v85);
        v87 = vmovl_u16(*v85.i8);
        v88 = vmovl_u8(v78);
        v89 = vmovl_high_u16(v88);
        v90 = vmovl_u16(*v88.i8);
        v91 = v76 + 1;
        do
        {
          if ((v308.i8[v84] & 0x10) != 0)
          {
            v92 = &v305;
          }

          else
          {
            v92 = &v306;
          }

          *(&v296 + v84) = v92->u8[v308.i8[v84] & 0xF];
          ++v84;
        }

        while (v84 != 16);
        v276 = v83;
        v279 = v91;
        for (n = 0; n != 16; ++n)
        {
          if ((v307.i8[n] & 0x10) != 0)
          {
            v94 = &v305;
          }

          else
          {
            v94 = &v306;
          }

          *(&v287 + n) = v94->u8[v307.i8[n] & 0xF];
        }

        v95 = v299;
        v96 = v67 * v240 + v59 * v241;
        v97 = v68 * v240 + v60 * v241;
        v98 = v71 * v240 + v63 * v241;
        v249 = v296;
        v251 = v290;
        v255 = v288;
        v257 = v287;
        v99 = v66 * v240 + v58 * v241 + v239 * v296 + v238 * v287;
        v100 = v297;
        v101 = v298;
        v253 = v289;
        v102 = v299;
        v266 = v300;
        v245 = v292;
        v247 = v291;
        v262 = v301;
        v103 = v293;
        v269 = v302;
        v104 = v294;
        v105 = v73 * v240 + v65 * v241;
        v273 = v303;
        v106 = v69 * v240 + v61 * v241 + v239 * v299 + v238 * v290 + 32;
        v107 = (v99 + 32) >> 6;
        v108 = (v96 + v239 * v297 + v238 * v288 + 32) >> 6;
        v109 = (v97 + v239 * v298 + v238 * v289 + 32) >> 6;
        v110 = (v70 * v240 + v62 * v241 + v239 * v300 + v238 * v291 + 32) >> 6;
        v111 = (v98 + v239 * v301 + v238 * v292 + 32) >> 6;
        v112 = (v72 * v240 + result * v241 + v239 * v302 + v238 * v293 + 32) >> 6;
        v113 = (v105 + v239 * v303 + v238 * v294 + 32) >> 6;
        v78 = v304;
        v79 = v295;
        v114 = vmovl_u8(v304);
        v115 = vmovl_u8(v295);
        v285.i8[0] = v107;
        v285.i8[1] = v108;
        v285.i8[2] = v109;
        v285.i8[3] = v106 >> 6;
        v285.i8[4] = v110;
        v285.i8[5] = v111;
        v285.i8[6] = v112;
        v116 = vrshrn_n_s16(vuzp1q_s16(vmlal_u16(vmlal_u16(vmlal_u16(vmull_u16(v81, vmovn_s32(v90)), v82, vmovn_s32(v87)), *v231.i8, *v114.i8), *v229.i8, *v115.i8), vmlal_high_u16(vmlal_high_u16(vmlal_u16(vmull_u16(v81, vmovn_s32(v89)), v82, vmovn_s32(v86)), v231, v114), v229, v115)), 6uLL);
        v285.i8[7] = v113;
        v286 = v116;
        if (a7)
        {
          v117 = v298;
          v118 = v294;
          sub_27728EFD0(16, &v285, v283, a8, a16, a17, a18);
          v104 = v118;
          v101 = v117;
          v102 = v95;
        }

        else
        {
          v283->i8[0] = v107;
          v283->i8[1] = v108;
          v283->i8[2] = v109;
          v283->i8[3] = v106 >> 6;
          v283->i8[4] = v110;
          v283->i8[5] = v111;
          v283->i8[6] = v112;
          v283->i8[7] = v113;
          v283[1] = v116;
        }

        v283 = (v283 + v233);
        ++v284;
        v66 = v257;
        v77 = v261 + 1;
        v58 = v249;
        v69 = v251;
        v59 = v100;
        v60 = v101;
        v61 = v102;
        v62 = v266;
        result = v269;
        v63 = v262;
        v65 = v273;
        v75 = v276;
        v68 = v253;
        v67 = v255;
        v71 = v245;
        v70 = v247;
        v72 = v103;
        v73 = v104;
        v76 = v279;
      }
    }
  }

  else
  {
    v29 = a2[3];
    v30 = a2[5];
    v31 = ((a2[7] - 1) >> 1) - (v29 >> 1);
    v32 = v22 & 0x8000000E;
    v33 = (*(a1 + 1104) + 4 * (v29 >> 1) + 36);
    v34 = (*(a1 + 1112) + 4 * (v29 >> 1) + 36);
    v35 = *(a1 + 40) + 16 * v24;
    if (v282)
    {
      if (v20)
      {
        v36 = *(a1 + 152);
      }

      else
      {
        v36 = 0;
      }

      v37 = v36 + 2 * *v34;
    }

    else
    {
      v37 = *v33;
    }

    v139 = 8 - a3;
    v140 = 8 - a4;
    v141 = v31 + 1;
    v142 = v30 - v22;
    if (v32 <= 0)
    {
      v143 = -(-v32 & 0xF);
    }

    else
    {
      v143 = v22 & 0xE;
    }

    v144 = (v35 + v37 + v143);
    v145 = *v144;
    v146 = v144[1];
    if (v282)
    {
      if (v20)
      {
        v147 = *(a1 + 152);
      }

      else
      {
        v147 = 0;
      }

      v148 = v147 + 2 * v34[1];
    }

    else
    {
      v148 = v33[1];
    }

    result = (v140 * v139);
    v149 = v140 * a3;
    v150 = v139 * a4;
    v151 = *(v144 + 2);
    v152 = v33 + 2;
    v153 = v34 + 2;
    v154 = a4 * a3;
    if (v142 < 8)
    {
      if (v142 == 7)
      {
        if (v141)
        {
          v177 = vmovl_u8(v151);
          v178 = vmovl_high_u16(v177);
          v179 = vmovl_u16(*v177.i8);
          v180 = vdupq_n_s32(v149);
          v181 = vdupq_n_s32(result);
          v182 = vdupq_n_s32(v150);
          v183 = vdupq_n_s32(v154);
          if (v20)
          {
            v184 = v21;
          }

          else
          {
            v184 = 0;
          }

          do
          {
            if (v282)
            {
              result = (v184 + 2 * *v153);
            }

            else
            {
              result = *v152;
            }

            v185 = (v35 + v143 + v148);
            ++v152;
            v186 = vdupq_lane_s64(v179.i64[0], 0);
            v186.i64[0] = __PAIR64__(v146, v145);
            ++v153;
            v145 = *v185;
            v146 = v185[1];
            v187 = vmovl_u8(*(v185 + 2));
            v188 = vmlaq_s32(vmulq_s32(vextq_s8(v179, v178, 8uLL), v181), v178, v180);
            v178 = vmovl_high_u16(v187);
            v189 = vmlaq_s32(vmulq_s32(v186, v181), v179, v180);
            v179 = vmovl_u16(*v187.i8);
            v190 = vdupq_lane_s64(v179.i64[0], 0);
            v190.i64[0] = __PAIR64__(v146, v145);
            *a5 = vrshrn_n_s16(vuzp1q_s16(vmlaq_s32(vmlaq_s32(v189, v182, v190), v183, v179), vmlaq_s32(vmlaq_s32(v188, v182, vmovl_u16(*&vextq_s8(v187, v187, 4uLL))), v183, v178)), 6uLL);
            a5 = (a5 + a6);
            v148 = result;
            --v141;
          }

          while (v141);
        }
      }

      else if (v141)
      {
        v215.i64[0] = 0xFF000000FFLL;
        v215.i64[1] = 0xFF000000FFLL;
        v216 = vandq_s8(vmovl_u16(vzip1_s8(v151, v151)), v215);
        v217 = vdupq_n_s32(v149);
        v218 = vdupq_n_s32(result);
        v219 = vdupq_n_s32(v150);
        v220 = vdupq_n_s32(v154);
        if (v20)
        {
          v221 = v21;
        }

        else
        {
          v221 = 0;
        }

        do
        {
          if (v282)
          {
            result = (v221 + 2 * *v153);
          }

          else
          {
            result = *v152;
          }

          v222 = (v35 + v143 + v148);
          v223 = vdupq_lane_s64(v216.i64[0], 0);
          ++v152;
          v223.i64[0] = __PAIR64__(v146, v145);
          v145 = *v222;
          v146 = v222[1];
          a15.i32[0] = *(v222 + 2);
          v224 = vmlaq_s32(vmulq_s32(v223, v218), v216, v217);
          v216 = vmovl_u16(*&vmovl_u8(*a15.i8));
          a15 = vdupq_lane_s64(v216.i64[0], 0);
          a15.i64[0] = __PAIR64__(v146, v145);
          ++v153;
          v225 = vmlaq_s32(vmlaq_s32(v224, v219, a15), v220, v216);
          *v225.i8 = vmovn_s32(v225);
          a5->i32[0] = vrshrn_n_s16(v225, 6uLL).u32[0];
          a5 = (a5 + a6);
          v148 = result;
          --v141;
        }

        while (v141);
      }
    }

    else if (v141)
    {
      v155 = vmovl_u8(v151);
      v156 = vmovl_high_u16(v155);
      v157 = vmovl_u8(*(v144 + 10));
      v158 = vmovl_high_u16(v157);
      v159 = vmovl_u16(*v155.i8);
      v160 = vmovl_u16(*v157.i8);
      v161 = vdupq_n_s32(v149);
      v162 = vdupq_n_s32(result);
      v163 = vdupq_n_s32(v150);
      v164 = vdupq_n_s32(v154);
      if (v20)
      {
        v165 = v21;
      }

      else
      {
        v165 = 0;
      }

      do
      {
        if (v282)
        {
          result = (v165 + 2 * *v153);
        }

        else
        {
          result = *v152;
        }

        v166 = (v35 + v143 + v148);
        ++v152;
        ++v153;
        v167 = vdupq_lane_s64(v159.i64[0], 0);
        v167.i64[0] = __PAIR64__(v146, v145);
        v145 = *v166;
        v146 = v166[1];
        v168 = vmulq_s32(vextq_s8(v156, v160, 8uLL), v162);
        v169 = *(v166 + 2);
        v170 = vmovl_u8(*v169.i8);
        v171 = vmlaq_s32(vmulq_s32(vextq_s8(v159, v156, 8uLL), v162), v156, v161);
        v156 = vmovl_high_u16(v170);
        v172 = vmovl_high_u8(v169);
        v173 = vmlaq_s32(vmulq_s32(vextq_s8(v160, v158, 8uLL), v162), v158, v161);
        v158 = vmovl_high_u16(v172);
        v174 = vmlaq_s32(v168, v160, v161);
        v160 = vmovl_u16(*v172.i8);
        v175 = vmlaq_s32(vmulq_s32(v167, v162), v159, v161);
        v159 = vmovl_u16(*v170.i8);
        v176 = vdupq_lane_s64(v159.i64[0], 0);
        v176.i64[0] = __PAIR64__(v146, v145);
        *a5->i8 = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(vmlaq_s32(vmlaq_s32(v175, v163, v176), v164, v159), vmlaq_s32(vmlaq_s32(v171, v163, vmovl_u16(*&vextq_s8(v170, v170, 4uLL))), v164, v156)), 6uLL), vuzp1q_s16(vmlaq_s32(vmlaq_s32(v174, v163, vmovl_u16(*&vextq_s8(v170, v172, 0xCuLL))), v164, v160), vmlaq_s32(vmlaq_s32(v173, v163, vmovl_u16(*&vextq_s8(v172, v172, 4uLL))), v164, v158)), 6uLL);
        a5 = (a5 + a6);
        v148 = result;
        --v141;
      }

      while (v141);
    }
  }

  return result;
}