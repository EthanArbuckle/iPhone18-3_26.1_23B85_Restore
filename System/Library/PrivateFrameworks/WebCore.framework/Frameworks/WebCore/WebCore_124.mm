uint64_t vpx_lpf_horizontal_8_neon(uint64_t result, int a2, const char *a3, const char *a4, const char *a5)
{
  v5 = vld1_dup_s8(a3);
  v6 = vld1_dup_s8(a4);
  v7 = (result - 4 * a2);
  v8 = *v7;
  v9 = (v7 + a2);
  v10 = *v9;
  v11 = (v9 + a2);
  v12 = *v11;
  v13 = (v11 + a2);
  v14 = *v13;
  v15 = (v13 + a2);
  v16 = *v15;
  v17 = (v15 + a2);
  v18 = *v17;
  v19 = (v17 + a2);
  v20 = *v19;
  v21 = *(v19 + a2);
  v22 = vmax_u8(vabd_u8(v12, v14), vabd_u8(v18, v16));
  v23 = vabd_u8(v14, v16);
  v24 = vand_s8(vcge_u8(v5, vqadd_u8(vqadd_u8(v23, v23), vshr_n_u8(vabd_u8(v12, v18), 1uLL))), vcge_u8(v6, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v22, vabd_u8(v8, v10)), vabd_u8(v10, v12)), vabd_u8(*v19, v18)), vabd_u8(v21, *v19))));
  v25 = vand_s8(vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v22, vabd_u8(v10, v14)), vabd_u8(*v19, v16)), vabd_u8(v8, v14)), vabd_u8(v21, v16))), v24);
  v26 = vpaddl_u32(v25);
  if (v26 == -2)
  {
    v27 = vmovl_u8(v16);
    v28 = vaddw_u8(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(v10, 1uLL), v8, 0x303030303030303), v12), v14), v16);
    v29 = vaddl_u8(v10, v8);
    v30 = vaddl_u8(v16, v10);
    v31 = vrshrn_n_s16(v28, 3uLL);
    v32 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v12), v29), v18), v28);
    v33 = vrshrn_n_s16(v32, 3uLL);
    v34 = vmovl_u8(v20);
    v35 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v14), vaddl_u8(v12, v8)), v20), v32);
    v36 = vrshrn_n_s16(v35, 3uLL);
    v37 = vaddq_s16(vaddw_u8(vsubq_s16(v27, vaddl_u8(v14, v8)), v21), v35);
    v38 = vrshrn_n_s16(v37, 3uLL);
    v39 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v18), v30), v21), v37);
    v40 = vrshrn_n_s16(v39, 3uLL);
    v20 = vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(v34, vaddl_u8(v18, v12)), v21), v39), 3uLL);
    v10 = v31;
  }

  else
  {
    v41 = vld1_dup_s8(a5);
    v42 = vcgt_u8(v22, v41);
    v43 = veor_s8(v12, 0x8080808080808080);
    v44 = veor_s8(v14, 0x8080808080808080);
    v45 = veor_s8(v16, 0x8080808080808080);
    v46 = veor_s8(v18, 0x8080808080808080);
    v47 = vqsub_s8(v45, v44);
    v48 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v43, v46), v42), v47), v47), v47), v24);
    v49 = vshr_n_s8(vqadd_s8(v48, 0x404040404040404), 3uLL);
    v50 = vqadd_s8(v44, vshr_n_s8(vqadd_s8(v48, 0x303030303030303), 3uLL));
    v38 = veor_s8(vqsub_s8(v45, v49), 0x8080808080808080);
    v36 = veor_s8(v50, 0x8080808080808080);
    v51 = vbic_s8(vrshr_n_s8(v49, 1uLL), v42);
    v52 = vqsub_s8(v46, v51);
    v53 = vqadd_s8(v43, v51);
    v40 = veor_s8(v52, 0x8080808080808080);
    v33 = veor_s8(v53, 0x8080808080808080);
    if (v26)
    {
      v54 = vaddw_u8(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(v10, 1uLL), v8, 0x303030303030303), v12), v14), v16);
      v55 = vrshrn_n_s16(v54, 3uLL);
      v56 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v12), vaddl_u8(v10, v8)), v18), v54);
      *v54.i8 = vrshrn_n_s16(v56, 3uLL);
      v57 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v14), vaddl_u8(v12, v8)), v20), v56);
      v58 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v16), vaddl_u8(v14, v8)), v21), v57);
      v59 = vrshrn_n_s16(v58, 3uLL);
      v60 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v18), vaddl_u8(v16, v10)), v21), v58);
      v10 = vbsl_s8(v25, v55, v10);
      v33 = vbsl_s8(v25, *v54.i8, v33);
      v36 = vbsl_s8(v25, vrshrn_n_s16(v57, 3uLL), v36);
      v38 = vbsl_s8(v25, v59, v38);
      v40 = vbsl_s8(v25, vrshrn_n_s16(v60, 3uLL), v40);
      v20 = vbsl_s8(v25, vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v20), vaddl_u8(v18, v12)), v21), v60), 3uLL), v20);
    }
  }

  v61 = (result - 3 * a2);
  *v61 = v10;
  v62 = (v61 + a2);
  *v62 = v33;
  v63 = (v62 + a2);
  *v63 = v36;
  v64 = (v63 + a2);
  *v64 = v38;
  v65 = (v64 + a2);
  *v65 = v40;
  *(v65 + a2) = v20;
  return result;
}

double vpx_lpf_horizontal_8_dual_neon(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8)
{
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v10 = vld1_dup_s8(a6);
  *v11.i8 = vld1_dup_s8(a3);
  v11.u64[1] = v10;
  v12 = vld1_dup_s8(a7);
  *v13.i8 = vld1_dup_s8(a4);
  v13.u64[1] = v12;
  v14 = vld1_dup_s8(a8);
  *v15.i8 = vld1_dup_s8(a5);
  v15.u64[1] = v14;
  v16 = (a1 - 4 * a2);
  v17 = *v16;
  v18 = a2;
  v19 = &v16->i8[a2];
  v20 = *v19;
  v21 = &v19->i8[a2];
  v22 = *v21;
  v23 = (v21 + a2);
  v24 = *v23;
  v25 = (v23 + a2);
  v26 = *v25;
  v27 = &v25->i8[a2];
  v28 = *v27;
  v29 = &v27->i8[a2];
  v30 = *(v29 + a2);
  v31 = vmaxq_u8(vabdq_u8(v22, v24), vabdq_u8(v28, v26));
  v32 = vabdq_u8(v24, v26);
  v33 = vandq_s8(vcgeq_u8(v11, vqaddq_u8(vqaddq_u8(v32, v32), vshrq_n_u8(vabdq_u8(v22, v28), 1uLL))), vcgeq_u8(v13, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v31, vabdq_u8(v17, v20)), vabdq_u8(v20, v22)), vabdq_u8(*v29, v28)), vabdq_u8(v30, *v29))));
  v13.i64[0] = 0x202020202020202;
  v13.i64[1] = 0x202020202020202;
  v34 = vandq_s8(vcgtq_u8(v13, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v31, vabdq_u8(v20, v24)), vabdq_u8(*v29, v26)), vabdq_u8(v17, v24)), vabdq_u8(v30, v26))), v33);
  filter8_16(vpaddl_u32(vshrn_n_s16(v34, 4uLL)), &v51, &v50, &v49, &v48, &v47, &v46, v33, v34, vcgtq_u8(v31, v15), v17, v20, v22, v24, v26, a8, v28, *v29, v30);
  v36 = v50;
  result = *v51.i64;
  v37 = (a1 - 3 * a2);
  v38 = v49;
  v40 = v47;
  v39 = v48;
  v41 = v46;
  *v37 = v51;
  v42 = (v37 + v18);
  *v42 = v36;
  v43 = (v42 + v18);
  *v43 = v38;
  v44 = (v43 + v18);
  *v44 = v39;
  v45 = (v44 + v18);
  *v45 = v40;
  *(v45 + v18) = v41;
  return result;
}

uint64_t filter8_16(uint64_t result, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, int8x16_t *a5, int8x16_t *a6, int8x16_t *a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint8x16_t a11, int8x16_t a12, uint8x16_t a13, uint8x16_t a14, uint8x16_t a15, uint64_t a16, int8x16_t a17, int8x16_t a18, uint8x16_t a19)
{
  if (result == -2)
  {
    v19.i64[0] = 0x303030303030303;
    v19.i64[1] = 0x303030303030303;
    v20 = vmlal_high_u8(vshll_high_n_u8(a12, 1uLL), a11, v19);
    v21 = vaddw_u8(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(*a12.i8, 1uLL), *a11.i8, 0x303030303030303), *a13.i8), *a14.i8), *a15.i8);
    v22 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(v20, a13), a14), a15);
    *a2 = vrshrn_high_n_s16(vrshrn_n_s16(v21, 3uLL), v22, 3uLL);
    v23 = vaddl_u8(*a17.i8, *a13.i8);
    v24 = vaddq_s16(vsubq_s16(v23, vaddl_u8(*a12.i8, *a11.i8)), v21);
    v25 = vaddl_high_u8(a17, a13);
    v26 = vaddq_s16(vsubq_s16(v25, vaddl_high_u8(a12, a11)), v22);
    *a3 = vrshrn_high_n_s16(vrshrn_n_s16(v24, 3uLL), v26, 3uLL);
    v27 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a14.i8), vaddl_u8(*a13.i8, *a11.i8)), *a18.i8), v24);
    v28 = vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a14), vaddl_high_u8(a13, a11)), a18), v26);
    *a4 = vrshrn_high_n_s16(vrshrn_n_s16(v27, 3uLL), v28, 3uLL);
    v29 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a15.i8), vaddl_u8(*a14.i8, *a11.i8)), *a19.i8), v27);
    v30 = vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a15), vaddl_high_u8(a14, a11)), a19), v28);
    *a5 = vrshrn_high_n_s16(vrshrn_n_s16(v29, 3uLL), v30, 3uLL);
    v31 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a17.i8), vaddl_u8(*a15.i8, *a12.i8)), *a19.i8), v29);
    v32 = vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a17), vaddl_high_u8(a15, a12)), a19), v30);
    *a6 = vrshrn_high_n_s16(vrshrn_n_s16(v31, 3uLL), v32, 3uLL);
    v33 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a18.i8), v23), *a19.i8), v31), 3uLL), vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a18), v25), a19), v32), 3uLL);
  }

  else
  {
    v34.i64[0] = 0x8080808080808080;
    v34.i64[1] = 0x8080808080808080;
    v35 = veorq_s8(a13, v34);
    v36 = veorq_s8(a14, v34);
    v37 = veorq_s8(a15, v34);
    v38 = veorq_s8(a17, v34);
    v39 = vqsubq_s8(v37, v36);
    v40 = vandq_s8(vqaddq_s8(vqaddq_s8(vqaddq_s8(vandq_s8(vqsubq_s8(v35, v38), a10), v39), v39), v39), a8);
    v41.i64[0] = 0x404040404040404;
    v41.i64[1] = 0x404040404040404;
    v42 = vshrq_n_s8(vqaddq_s8(v40, v41), 3uLL);
    v43.i64[0] = 0x303030303030303;
    v43.i64[1] = 0x303030303030303;
    *a5 = veorq_s8(vqsubq_s8(v37, v42), v34);
    *a4 = veorq_s8(vqaddq_s8(v36, vshrq_n_s8(vqaddq_s8(v40, v43), 3uLL)), v34);
    v44 = vbicq_s8(vrshrq_n_s8(v42, 1uLL), a10);
    *a6 = veorq_s8(vqsubq_s8(v38, v44), v34);
    *a3 = veorq_s8(vqaddq_s8(v35, v44), v34);
    *a2 = a12;
    *a7 = a18;
    if (!result)
    {
      return result;
    }

    v45 = vmlal_high_u8(vshll_high_n_u8(a12, 1uLL), a11, v43);
    v46 = vaddw_u8(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(*a12.i8, 1uLL), *a11.i8, 0x303030303030303), *a13.i8), *a14.i8), *a15.i8);
    v47 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(v45, a13), a14), a15);
    *a2 = vrshrn_high_n_s16(vrshrn_n_s16(v46, 3uLL), v47, 3uLL);
    v48 = vaddl_u8(*a17.i8, *a13.i8);
    v49 = vaddq_s16(vsubq_s16(v48, vaddl_u8(*a12.i8, *a11.i8)), v46);
    v50 = vaddl_high_u8(a17, a13);
    v51 = vaddq_s16(vsubq_s16(v50, vaddl_high_u8(a12, a11)), v47);
    v52 = vrshrn_high_n_s16(vrshrn_n_s16(v49, 3uLL), v51, 3uLL);
    v53 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a14.i8), vaddl_u8(*a13.i8, *a11.i8)), *a18.i8), v49);
    v54 = vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a14), vaddl_high_u8(a13, a11)), a18), v51);
    v55 = vrshrn_high_n_s16(vrshrn_n_s16(v53, 3uLL), v54, 3uLL);
    v56 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a15.i8), vaddl_u8(*a14.i8, *a11.i8)), *a19.i8), v53);
    v57 = vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a15), vaddl_high_u8(a14, a11)), a19), v54);
    v58 = vrshrn_high_n_s16(vrshrn_n_s16(v56, 3uLL), v57, 3uLL);
    v59 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a17.i8), vaddl_u8(*a15.i8, *a12.i8)), *a19.i8), v56);
    v60 = vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a17), vaddl_high_u8(a15, a12)), a19), v57);
    *a7 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*a18.i8), v48), *a19.i8), v59), 3uLL), vaddq_s16(vaddw_high_u8(vsubq_s16(vmovl_high_u8(a18), v50), a19), v60), 3uLL);
    *a2 = vbslq_s8(a9, *a2, a12);
    *a3 = vbslq_s8(a9, v52, *a3);
    *a4 = vbslq_s8(a9, v55, *a4);
    *a5 = vbslq_s8(a9, v58, *a5);
    *a6 = vbslq_s8(a9, vrshrn_high_n_s16(vrshrn_n_s16(v59, 3uLL), v60, 3uLL), *a6);
    v33 = vbslq_s8(a9, *a7, a18);
  }

  *a7 = v33;
  return result;
}

int8x16_t vpx_lpf_vertical_8_neon(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v17 = vld1_dup_s8(a3);
  v18 = vld1_dup_s8(a4);
  v20 = *(a1 - 4);
  v19 = (a1 - 4);
  a6.i64[0] = v20;
  v21 = (v19 + a2);
  a7.i64[0] = *v21;
  v22 = (v21 + a2);
  a8.i64[0] = *v22;
  v23 = (v22 + a2);
  a9.i64[0] = *v23;
  v24 = (v23 + a2);
  a10.i64[0] = *v24;
  v25 = (v24 + a2);
  a11.i64[0] = *v25;
  v26 = (v25 + a2);
  a12.i64[0] = *v26;
  a13.i64[0] = *(v26 + a2);
  v27 = vzip1q_s8(a6, a7);
  v28 = vzip1q_s8(a8, a9);
  v29 = vzip1q_s8(a10, a11);
  v30 = vzip1q_s8(a12, a13);
  v31 = vzip1q_s16(v27, v28);
  v32 = vzip2q_s16(v27, v28);
  v33 = vzip1q_s16(v29, v30);
  v34 = vzip2q_s16(v29, v30);
  v35 = vzip1q_s32(v31, v33);
  v36 = vzip2q_s32(v31, v33);
  v37 = vzip1q_s32(v32, v34);
  v38 = vzip2q_s32(v32, v34);
  v39 = vextq_s8(v35, v35, 8uLL);
  v40 = vextq_s8(v36, v36, 8uLL).u64[0];
  v41 = vextq_s8(v37, v37, 8uLL).u64[0];
  v42 = vextq_s8(v38, v38, 8uLL);
  v43 = vmax_u8(vabd_u8(*v36.i8, v40), vabd_u8(v41, *v37.i8));
  v44 = vabd_u8(v40, *v37.i8);
  v45 = vand_s8(vcge_u8(v17, vqadd_u8(vqadd_u8(v44, v44), vshr_n_u8(vabd_u8(*v36.i8, v41), 1uLL))), vcge_u8(v18, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v43, vabd_u8(*v35.i8, *v39.i8)), vabd_u8(*v39.i8, *v36.i8)), vabd_u8(*v38.i8, v41)), vabd_u8(*v42.i8, *v38.i8))));
  v46 = vand_s8(vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v43, vabd_u8(*v39.i8, v40)), vabd_u8(*v38.i8, *v37.i8)), vabd_u8(*v35.i8, v40)), vabd_u8(*v42.i8, *v37.i8))), v45);
  v47 = vpaddl_u32(v46);
  if (v47 == -2)
  {
    v16 = vmovl_u8(v40);
    v48 = vmovl_u8(*v37.i8);
    v49 = vaddq_s16(vmlal_u8(vaddw_u8(vaddl_u8(v40, *v36.i8), *v37.i8), *v35.i8, 0x303030303030303), vshll_n_u8(*v39.i8, 1uLL));
    v50 = vaddl_u8(*v39.i8, *v35.i8);
    v51 = vaddl_u8(*v37.i8, *v39.i8);
    v52 = vrshrn_n_s16(v49, 3uLL);
    v14 = vaddw_u8(vsubq_s16(vmovl_u8(*v36.i8), v50), v41);
    v13 = vaddq_s16(v14, v49);
    *v14.i8 = vrshrn_n_s16(v13, 3uLL);
    v53 = vmovl_u8(*v38.i8);
    v15 = vsubq_s16(v16, vaddl_u8(*v36.i8, *v35.i8));
    v54 = vaddq_s16(vaddw_u8(v15, *v38.i8), v13);
    *v13.i8 = vrshrn_n_s16(v54, 3uLL);
    v55 = vaddq_s16(vaddw_u8(vsubq_s16(v48, vaddl_u8(v40, *v35.i8)), *v42.i8), v54);
    *v15.i8 = vrshrn_n_s16(v55, 3uLL);
    v56 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v41), v51), *v42.i8), v55);
    *v16.i8 = vrshrn_n_s16(v56, 3uLL);
    v39 = vaddw_u8(vsubq_s16(v53, vaddl_u8(v41, *v36.i8)), *v42.i8);
    v38 = vaddq_s16(v39, v56);
    *v38.i8 = vrshrn_n_s16(v38, 3uLL);
    *v39.i8 = v52;
  }

  else
  {
    v57 = vld1_dup_s8(a5);
    v58 = vcgt_u8(v43, v57);
    v59 = veor_s8(*v36.i8, 0x8080808080808080);
    v60 = veor_s8(v40, 0x8080808080808080);
    v61 = veor_s8(*v37.i8, 0x8080808080808080);
    v62 = veor_s8(v41, 0x8080808080808080);
    v63 = vqsub_s8(v61, v60);
    v64 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v59, v62), v58), v63), v63), v63), v45);
    v65 = vshr_n_s8(vqadd_s8(v64, 0x404040404040404), 3uLL);
    v66 = vqadd_s8(v60, vshr_n_s8(vqadd_s8(v64, 0x303030303030303), 3uLL));
    *v15.i8 = veor_s8(vqsub_s8(v61, v65), 0x8080808080808080);
    *v13.i8 = veor_s8(v66, 0x8080808080808080);
    v67 = vbic_s8(vrshr_n_s8(v65, 1uLL), v58);
    v68 = vqsub_s8(v62, v67);
    v69 = vqadd_s8(v59, v67);
    *v16.i8 = veor_s8(v68, 0x8080808080808080);
    *v14.i8 = veor_s8(v69, 0x8080808080808080);
    if (v47)
    {
      v70 = vaddq_s16(vmlal_u8(vaddw_u8(vaddl_u8(v40, *v36.i8), *v37.i8), *v35.i8, 0x303030303030303), vshll_n_u8(*v39.i8, 1uLL));
      v71 = vrshrn_n_s16(v70, 3uLL);
      v72 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*v36.i8), vaddl_u8(*v39.i8, *v35.i8)), v41), v70);
      v73 = vrshrn_n_s16(v72, 3uLL);
      v74 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v40), vaddl_u8(*v36.i8, *v35.i8)), *v38.i8), v72);
      v75 = vrshrn_n_s16(v74, 3uLL);
      v76 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*v37.i8), vaddl_u8(v40, *v35.i8)), *v42.i8), v74);
      *v74.i8 = vrshrn_n_s16(v76, 3uLL);
      v77 = vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(v41), vaddl_u8(*v37.i8, *v39.i8)), *v42.i8), v76);
      *v39.i8 = vbsl_s8(v46, v71, *v39.i8);
      *v14.i8 = vbsl_s8(v46, v73, *v14.i8);
      *v13.i8 = vbsl_s8(v46, v75, *v13.i8);
      *v15.i8 = vbsl_s8(v46, *v74.i8, *v15.i8);
      *v16.i8 = vbsl_s8(v46, vrshrn_n_s16(v77, 3uLL), *v16.i8);
      *v38.i8 = vbsl_s8(v46, vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(vmovl_u8(*v38.i8), vaddl_u8(v41, *v36.i8)), *v42.i8), v77), 3uLL), *v38.i8);
    }
  }

  v78 = vzip1q_s8(v35, v39);
  v79 = vzip1q_s8(v14, v13);
  v80 = vzip1q_s8(v15, v16);
  v81 = vzip1q_s8(v38, v42);
  v82 = vzip1q_s16(v78, v79);
  v83 = vzip2q_s16(v78, v79);
  v84 = vzip1q_s16(v80, v81);
  v85 = vzip2q_s16(v80, v81);
  v86 = vzip1q_s32(v82, v84);
  v87 = vzip2q_s32(v82, v84);
  v88 = vzip1q_s32(v83, v85);
  *v19 = v86.i64[0];
  *(v19 + a2) = vextq_s8(v86, v86, 8uLL).u64[0];
  result = vzip2q_s32(v83, v85);
  *v22 = v87.i64[0];
  *(v22 + a2) = vextq_s8(v87, v87, 8uLL).u64[0];
  *v24 = v88.i64[0];
  *(v24 + a2) = vextq_s8(v88, v88, 8uLL).u64[0];
  *v26 = result.i64[0];
  *(v26 + a2) = vextq_s8(result, result, 8uLL).u64[0];
  return result;
}

double vpx_lpf_vertical_8_dual_neon(_BYTE *a1, int a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8)
{
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  v10 = vld1_dup_s8(a6);
  *v11.i8 = vld1_dup_s8(a3);
  v11.u64[1] = v10;
  v12 = vld1_dup_s8(a7);
  *v13.i8 = vld1_dup_s8(a4);
  v13.u64[1] = v12;
  v14 = vld1_dup_s8(a8);
  *v15.i8 = vld1_dup_s8(a5);
  v15.u64[1] = v14;
  v16.i64[0] = *(a1 - 4);
  v17 = a2;
  v18 = &a1[a2 - 4];
  v19.i64[0] = *v18;
  v20 = (v18 + a2);
  v21.i64[0] = *v20;
  v22 = (v20 + a2);
  v23.i64[0] = *v22;
  v24 = (v22 + a2);
  v25.i64[0] = *v24;
  v26 = (v24 + a2);
  v27.i64[0] = *v26;
  v28 = (v26 + a2);
  v29.i64[0] = *v28;
  v30 = (v28 + a2);
  v31.i64[0] = *v30;
  v32 = (v30 + a2);
  v33 = *v32;
  v34 = (v32 + a2);
  v35 = *v34;
  v36 = (v34 + a2);
  v37 = *v36;
  v38 = (v36 + a2);
  v39 = *v38;
  v40 = (v38 + a2);
  v41 = *v40;
  v42 = (v40 + a2);
  v43 = *v42;
  v44 = (v42 + a2);
  v16.i64[1] = v33;
  v19.i64[1] = v35;
  v21.i64[1] = v37;
  v23.i64[1] = v39;
  v25.i64[1] = v41;
  v27.i64[1] = v43;
  v29.i64[1] = *v44;
  v31.i64[1] = *(v44 + a2);
  v45 = vtrn1q_s8(v16, v19);
  v46 = vtrn2q_s8(v16, v19);
  v47 = vtrn1q_s8(v21, v23);
  v48 = vtrn2q_s8(v21, v23);
  v49 = vtrn1q_s8(v25, v27);
  v50 = vtrn2q_s8(v25, v27);
  v51 = vtrn1q_s8(v29, v31);
  v52 = vtrn2q_s8(v29, v31);
  v53 = vtrn1q_s16(v45, v47);
  v54 = vtrn2q_s16(v45, v47);
  v55 = vtrn1q_s16(v46, v48);
  v56 = vtrn2q_s16(v46, v48);
  v57 = vtrn1q_s16(v49, v51);
  v58 = vtrn2q_s16(v49, v51);
  v59 = vtrn1q_s16(v50, v52);
  v60 = vtrn2q_s16(v50, v52);
  v61 = vtrn1q_s32(v53, v57);
  v62 = vtrn2q_s32(v53, v57);
  v63 = vtrn1q_s32(v54, v58);
  v64 = vtrn2q_s32(v54, v58);
  v65 = vtrn1q_s32(v55, v59);
  v66 = vtrn2q_s32(v55, v59);
  v67 = vtrn1q_s32(v56, v60);
  v68 = vtrn2q_s32(v56, v60);
  v69 = vmaxq_u8(vabdq_u8(v63, v67), vabdq_u8(v66, v62));
  v70 = vcgtq_u8(v69, v15);
  v71 = vabdq_u8(v67, v62);
  v72 = vandq_s8(vcgeq_u8(v11, vqaddq_u8(vqaddq_u8(v71, v71), vshrq_n_u8(vabdq_u8(v63, v66), 1uLL))), vcgeq_u8(v13, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v69, vabdq_u8(v61, v65)), vabdq_u8(v65, v63)), vabdq_u8(v64, v66)), vabdq_u8(v68, v64))));
  v73 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v69, vabdq_u8(v65, v67)), vabdq_u8(v64, v62)), vabdq_u8(v61, v67)), vabdq_u8(v68, v62));
  v69.i64[0] = 0x202020202020202;
  v69.i64[1] = 0x202020202020202;
  v74 = vandq_s8(vcgtq_u8(v69, v73), v72);
  filter8_16(vpaddl_u32(vshrn_n_s16(v74, 4uLL)), &v121, &v120, &v119, &v118, &v117, &v116, v72, v74, v70, v61, v65, v63, v67, v62, a8, v66, v64, v68);
  v76 = v120;
  v75 = v121;
  v77 = v119;
  v79 = v117;
  v78 = v118;
  v80 = a1 - 3;
  *v80 = v121.i8[0];
  v80[1] = v76.i8[0];
  v80[2] = v77.i8[0];
  v81 = v116;
  v82 = &a1[v17];
  *a1 = v78.i8[0];
  a1[1] = v79.i8[0];
  a1[2] = v81.i8[0];
  v83 = &a1[8 * a2];
  v84 = v82 - 3;
  *v84 = v75.i8[1];
  v84[1] = v76.i8[1];
  v84[2] = v77.i8[1];
  *v82 = v78.i8[1];
  v82[1] = v79.i8[1];
  v82[2] = v81.i8[1];
  v85 = &v82[v17];
  v86 = v85 - 3;
  *v86 = v75.i8[2];
  v86[1] = v76.i8[2];
  v86[2] = v77.i8[2];
  *v85 = v78.i8[2];
  v85[1] = v79.i8[2];
  v85[2] = v81.i8[2];
  v87 = &v85[v17];
  v88 = v87 - 3;
  *v88 = v75.i8[3];
  v88[1] = v76.i8[3];
  v88[2] = v77.i8[3];
  *v87 = v78.i8[3];
  v87[1] = v79.i8[3];
  v87[2] = v81.i8[3];
  v89 = &v87[v17];
  v90 = v89 - 3;
  *v90 = v75.i8[4];
  v90[1] = v76.i8[4];
  v90[2] = v77.i8[4];
  *v89 = v78.i8[4];
  v89[1] = v79.i8[4];
  v89[2] = v81.i8[4];
  v91 = &v89[v17];
  v92 = v91 - 3;
  *v92 = v75.i8[5];
  v92[1] = v76.i8[5];
  v92[2] = v77.i8[5];
  *v91 = v78.i8[5];
  v91[1] = v79.i8[5];
  v91[2] = v81.i8[5];
  v93 = &v91[v17];
  v94 = v93 - 3;
  *v94 = v75.i8[6];
  v94[1] = v76.i8[6];
  v94[2] = v77.i8[6];
  *v93 = v78.i8[6];
  v93[1] = v79.i8[6];
  v93[2] = v81.i8[6];
  v95 = &v93[v17];
  v96 = v95 - 3;
  *v96 = v75.i8[7];
  v96[1] = v76.i8[7];
  v96[2] = v77.i8[7];
  *v95 = v78.i8[7];
  v95[1] = v79.i8[7];
  v95[2] = v81.i8[7];
  v97 = vextq_s8(v75, v75, 8uLL).u64[0];
  v98 = vextq_s8(v76, v76, 8uLL).u64[0];
  v99 = vextq_s8(v77, v77, 8uLL).u64[0];
  *&result = vextq_s8(v78, v78, 8uLL).u64[0];
  v76.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
  v77.i64[0] = vextq_s8(v81, v81, 8uLL).u64[0];
  v101 = v83 - 3;
  *v101 = v97;
  v101[1] = v98;
  v101[2] = v99;
  *v83 = LOBYTE(result);
  v83[1] = v76.i8[0];
  v83[2] = v77.i8[0];
  v102 = &v83[v17];
  v103 = v102 - 3;
  *v103 = BYTE1(v97);
  v103[1] = BYTE1(v98);
  v103[2] = BYTE1(v99);
  *v102 = BYTE1(result);
  v102[1] = v76.i8[1];
  v102[2] = v77.i8[1];
  v104 = &v102[v17];
  v105 = v104 - 3;
  *v105 = BYTE2(v97);
  v105[1] = BYTE2(v98);
  v105[2] = BYTE2(v99);
  *v104 = BYTE2(result);
  v104[1] = v76.i8[2];
  v104[2] = v77.i8[2];
  v106 = &v104[v17];
  v107 = v106 - 3;
  *v107 = BYTE3(v97);
  v107[1] = BYTE3(v98);
  v107[2] = BYTE3(v99);
  *v106 = BYTE3(result);
  v106[1] = v76.i8[3];
  v106[2] = v77.i8[3];
  v108 = &v106[v17];
  v109 = v108 - 3;
  *v109 = BYTE4(v97);
  v109[1] = BYTE4(v98);
  v109[2] = BYTE4(v99);
  *v108 = BYTE4(result);
  v108[1] = v76.i8[4];
  v108[2] = v77.i8[4];
  v110 = &v108[v17];
  v111 = v110 - 3;
  *v111 = BYTE5(v97);
  v111[1] = BYTE5(v98);
  v111[2] = BYTE5(v99);
  *v110 = BYTE5(result);
  v110[1] = v76.i8[5];
  v110[2] = v77.i8[5];
  v112 = &v110[v17];
  v113 = v112 - 3;
  *v113 = BYTE6(v97);
  v113[1] = BYTE6(v98);
  v113[2] = BYTE6(v99);
  *v112 = BYTE6(result);
  v112[1] = v76.i8[6];
  v112[2] = v77.i8[6];
  v114 = &v112[v17];
  v115 = v114 - 3;
  *v115 = HIBYTE(v97);
  v115[1] = HIBYTE(v98);
  v115[2] = HIBYTE(v99);
  *v114 = HIBYTE(result);
  v114[1] = v76.i8[7];
  v114[2] = v77.i8[7];
  return result;
}

uint64_t vpx_lpf_horizontal_16_neon(int8x8_t *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v7 = 8 * a2;
  v8 = &a1[-a2];
  v9 = *v8;
  v10 = a2;
  v11 = (v8 + a2);
  v12 = *v11;
  v13 = (v11 + a2);
  v14 = *v13;
  v15 = (v13 + a2);
  v16 = *v15;
  v17 = (v15 + a2);
  v18 = *v17;
  v19 = (v17 + a2);
  v20 = *v19;
  v21 = (v19 + a2);
  v22 = *v21;
  v23 = (v21 + a2);
  v24 = *v23;
  v25 = (v23 + a2);
  v26 = *v25;
  v27 = (v25 + a2);
  v28 = *v27;
  v29 = (v27 + a2);
  v30 = *v29;
  v31 = (v29 + a2);
  result = lpf_16_kernel(*a3, *a4, *a5, &v61, &v60, &v59, &v58, &v57, v9, v12, v14, v16, v18, v20, v22, v24, v26, v28, v30, *v31, *(v31 + a2), *(v31 + a2 + a2), *(v31 + a2 + a2 + a2), *(v31 + a2 + a2 + a2 + a2), &v56, &v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v47 + 1, &v47);
  v33 = v55;
  v34 = v56;
  v36 = v53;
  v35 = v54;
  if (HIDWORD(v47))
  {
    v37 = v57;
    v38 = v52;
    if (v47)
    {
      v39 = v60;
      v41 = v58;
      v40 = v59;
      v43 = v50;
      v42 = v51;
      *(a1 - (v7 - a2)) = v61;
      v44 = 3 * v10;
      *(a1 - 6 * v10) = v39;
      *(a1 - 5 * v10) = v40;
      *(a1 - 4 * v10) = v41;
      *(a1 + 3 * v10) = v42;
      *(a1 + 4 * v10) = v43;
      v45 = v48;
      *(a1 + 5 * v10) = v49;
      *(a1 + 6 * v10) = v45;
    }

    else
    {
      v44 = 3 * a2;
    }

    *(a1 - v44) = v37;
    v46 = 2 * v10;
    *(a1 + 2 * v10) = v38;
  }

  else
  {
    v46 = 2 * a2;
  }

  *(a1 - v46) = v34;
  *(a1 - v10) = v33;
  *a1 = v35;
  *(a1 + v10) = v36;
  return result;
}

uint64_t lpf_16_kernel(uint64_t result, unsigned int a2, unsigned int a3, int8x8_t *a4, int8x8_t *a5, int8x8_t *a6, int8x8_t *a7, int8x8_t *a8, uint8x8_t a9, uint8x8_t a10, uint8x8_t a11, uint8x8_t a12, uint8x8_t a13, uint8x8_t a14, uint8x8_t a15, uint8x8_t a16, int8x8_t a17, int8x8_t a18, int8x8_t a19, int8x8_t a20, int8x8_t a21, int8x8_t a22, int8x8_t a23, uint8x8_t a24, int8x8_t *a25, int8x8_t *a26, int8x8_t *a27, int8x8_t *a28, int8x8_t *a29, int8x8_t *a30, int8x8_t *a31, int8x8_t *a32, int8x8_t *a33, int *a34, _DWORD *a35)
{
  v35 = vmax_u8(vabd_u8(a15, a16), vabd_u8(a18, a17));
  v36 = vabd_u8(a16, a17);
  v37 = vand_s8(vcge_u8(vdup_n_s8(result), vqadd_u8(vqadd_u8(v36, v36), vshr_n_u8(vabd_u8(a15, a18), 1uLL))), vcge_u8(vdup_n_s8(a2), vmax_u8(vmax_u8(vmax_u8(vmax_u8(v35, vabd_u8(a13, a14)), vabd_u8(a14, a15)), vabd_u8(a19, a18)), vabd_u8(a20, a19))));
  v38 = vand_s8(vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v35, vabd_u8(a14, a16)), vabd_u8(a19, a17)), vabd_u8(a13, a16)), vabd_u8(a20, a17))), v37);
  *a34 = vpaddl_u32(v38);
  v39 = vand_s8(v38, vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(vmax_u8(vmax_u8(vmax_u8(vmax_u8(vmax_u8(vabd_u8(a9, a16), vabd_u8(a10, a16)), vabd_u8(a11, a16)), vabd_u8(a12, a16)), vabd_u8(a21, a17)), vabd_u8(a22, a17)), vabd_u8(a23, a17)), vabd_u8(a24, a17))));
  v40 = vpaddl_u32(v39);
  *a35 = v40;
  v41 = v40;
  v42 = *a34;
  if (*a34 == -2 || (v43 = vcgt_u8(v35, vdup_n_s8(a3)), v44 = veor_s8(a15, 0x8080808080808080), v45 = veor_s8(a16, 0x8080808080808080), v46 = veor_s8(a17, 0x8080808080808080), v47 = veor_s8(a18, 0x8080808080808080), v48 = vqsub_s8(v46, v45), v49 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v44, v47), v43), v48), v48), v48), v37), v50 = vshr_n_s8(vqadd_s8(v49, 0x404040404040404), 3uLL), *a27 = veor_s8(vqsub_s8(v46, v50), 0x8080808080808080), *a26 = veor_s8(vqadd_s8(v45, vshr_n_s8(vqadd_s8(v49, 0x303030303030303), 3uLL)), 0x8080808080808080), v51 = vbic_s8(vrshr_n_s8(v50, 1uLL), v43), *a28 = veor_s8(vqsub_s8(v47, v51), 0x8080808080808080), *a25 = veor_s8(vqadd_s8(v44, v51), 0x8080808080808080), v42))
  {
    *a8 = a14;
    *a29 = a19;
    v52 = vmovl_u8(a13);
    if (v40 == -2)
    {
      v53 = vmovl_u8(a14);
      v54 = vmovl_u8(a15);
      v55 = vmovl_u8(a16);
      v56 = vmovl_u8(a17);
      v57 = vmovl_u8(a18);
      v58 = vmovl_u8(a19);
    }

    else
    {
      v54 = vmovl_u8(a15);
      v55 = vmovl_u8(a16);
      v56 = vmovl_u8(a17);
      v59 = vaddw_u8(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(a14, 1uLL), vmovn_s16(v52), 0x303030303030303), a15), a16), a17);
      *a8 = vrshrn_n_s16(v59, 3uLL);
      v57 = vmovl_u8(a18);
      v60 = vaddq_s16(vaddw_u8(vsubq_s16(v54, vaddl_u8(a14, a13)), a18), v59);
      v61 = vrshrn_n_s16(v60, 3uLL);
      v58 = vmovl_u8(a19);
      v62 = vaddq_s16(vaddw_u8(vsubq_s16(v55, vaddl_u8(a15, a13)), a19), v60);
      v63 = vrshrn_n_s16(v62, 3uLL);
      v64 = vaddq_s16(vaddw_u8(vsubq_s16(v56, vaddl_u8(a16, a13)), a20), v62);
      *v62.i8 = vrshrn_n_s16(v64, 3uLL);
      v65 = vaddq_s16(vaddw_u8(vsubq_s16(v57, vaddl_u8(a17, a14)), a20), v64);
      *a29 = vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(v58, vaddl_u8(a18, a15)), a20), v65), 3uLL);
      *a8 = vbsl_s8(v38, *a8, a14);
      *a25 = vbsl_s8(v38, v61, *a25);
      *a26 = vbsl_s8(v38, v63, *a26);
      *a27 = vbsl_s8(v38, *v62.i8, *a27);
      *a28 = vbsl_s8(v38, vrshrn_n_s16(v65, 3uLL), *a28);
      *a29 = vbsl_s8(v38, *a29, a19);
      if (!v41)
      {
        return result;
      }

      v53 = vmovl_u8(a14);
    }

    v66 = vmovl_u8(a20);
    v67 = vaddq_s16(vaddq_s16(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(a10, 1uLL), a9, 0x707070707070707), a11), a12), vaddq_s16(vaddq_s16(v52, v56), v55)), vaddq_s16(v54, v53));
    *a4 = vbsl_s8(v39, vrshrn_n_s16(v67, 4uLL), a10);
    v68 = vaddq_s16(vaddq_s16(vsubq_s16(vmovl_u8(a11), vaddl_u8(a10, a9)), v57), v67);
    *a5 = vbsl_s8(v39, vrshrn_n_s16(v68, 4uLL), a11);
    v69 = vaddq_s16(vaddq_s16(vsubq_s16(vmovl_u8(a12), vaddl_u8(a11, a9)), v58), v68);
    *a6 = vbsl_s8(v39, vrshrn_n_s16(v69, 4uLL), a12);
    v70 = vaddq_s16(vaddq_s16(vsubq_s16(v52, vaddl_u8(a12, a9)), v66), v69);
    *a7 = vbsl_s8(v39, vrshrn_n_s16(v70, 4uLL), a13);
    v71 = vaddq_s16(vaddq_s16(vsubq_s16(vmovl_u8(a21), vaddl_u8(a13, a9)), v53), v70);
    *a8 = vbsl_s8(v39, vrshrn_n_s16(v71, 4uLL), *a8);
    v72 = vaddw_u8(v54, a22);
    v73 = vaddq_s16(vsubq_s16(v72, vaddw_u8(v53, a9)), v71);
    *a25 = vbsl_s8(v39, vrshrn_n_s16(v73, 4uLL), *a25);
    v74 = vaddq_s16(vsubq_s16(vaddw_u8(v55, a23), vaddw_u8(v54, a9)), v73);
    *a26 = vbsl_s8(v39, vrshrn_n_s16(v74, 4uLL), *a26);
    v75 = vaddq_s16(vsubq_s16(vaddw_u8(v56, a24), vaddw_u8(v55, a9)), v74);
    *a27 = vbsl_s8(v39, vrshrn_n_s16(v75, 4uLL), *a27);
    v76 = vaddq_s16(vsubq_s16(vaddw_u8(v57, a24), vaddw_u8(v56, a10)), v75);
    *a28 = vbsl_s8(v39, vrshrn_n_s16(v76, 4uLL), *a28);
    v77 = vaddq_s16(vsubq_s16(vaddw_u8(v58, a24), vaddw_u8(v57, a11)), v76);
    *a29 = vbsl_s8(v39, vrshrn_n_s16(v77, 4uLL), *a29);
    v78 = vaddq_s16(vsubq_s16(vaddw_u8(v66, a24), vaddw_u8(v58, a12)), v77);
    *a30 = vbsl_s8(v39, vrshrn_n_s16(v78, 4uLL), a20);
    v79 = vaddq_s16(vsubq_s16(vaddl_u8(a21, a24), vaddq_s16(v66, v52)), v78);
    *a31 = vbsl_s8(v39, vrshrn_n_s16(v79, 4uLL), a21);
    v80 = vaddq_s16(vsubq_s16(vaddl_u8(a22, a24), vaddw_u8(v53, a21)), v79);
    *a32 = vbsl_s8(v39, vrshrn_n_s16(v80, 4uLL), a22);
    *a33 = vbsl_s8(v39, vrshrn_n_s16(vaddq_s16(vsubq_s16(vaddl_u8(a24, a23), v72), v80), 4uLL), a23);
  }

  return result;
}

uint64_t vpx_lpf_horizontal_16_dual_neon(int8x16_t *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0;
  v7 = a2;
  v8 = 4 * a2;
  v9 = (a1 - v8);
  v10 = (a1 + a2 - v8);
  v11 = *v10;
  v12 = &v10->i8[a2];
  v13 = *v12;
  v14 = (v12 + a2);
  v15 = *v14;
  v16 = &v14->i8[a2];
  v17 = 7 * a2;
  v18 = 6 * a2;
  v19 = 5 * a2;
  result = lpf_16_dual_kernel(*a3, *a4, *a5, &v49, &v48, &v47, &v46, &v45, *(a1 - 8 * a2), *(a1 - v17), *(a1 - v18), *(a1 - v19), *(a1 - v8), v11, v13, v15, *v16, *(v16 + a2), *(v16 + a2 + a2), *(v16 + a2 + a2 + a2), *(a1 + v8), *(a1 + v19), *(a1 + v18), *(a1 + v17), &v44, &v43, &v42, &v41, &v40, &v39, &v38, &v37, &v36, &v35 + 1, &v35);
  v21 = v44;
  v23 = v42;
  v22 = v43;
  v24 = v41;
  if (HIDWORD(v35))
  {
    v25 = v45;
    v26 = v40;
    if (v35)
    {
      v27 = v48;
      v29 = v46;
      v28 = v47;
      v30 = v39;
      v31 = v38;
      *(a1 - v17) = v49;
      *(a1 - v18) = v27;
      *(a1 - v19) = v28;
      *v9 = v29;
      v32 = 3 * v7;
      *(a1 + 3 * v7) = v30;
      *(a1 + v8) = v31;
      v33 = v36;
      *(a1 + v19) = v37;
      *(a1 + v18) = v33;
    }

    else
    {
      v32 = 3 * a2;
    }

    *(a1 - v32) = v25;
    v34 = 2 * v7;
    *(a1 + 2 * v7) = v26;
  }

  else
  {
    v34 = 2 * a2;
  }

  *(a1 - v34) = v21;
  *(a1 - v7) = v22;
  *a1 = v23;
  *(a1 + v7) = v24;
  return result;
}

uint64_t lpf_16_dual_kernel(uint64_t result, unsigned int a2, unsigned int a3, int8x16_t *a4, int8x16_t *a5, int8x16_t *a6, int8x16_t *a7, int8x16_t *a8, uint8x16_t a9, uint8x16_t a10, uint8x16_t a11, uint8x16_t a12, uint8x16_t a13, int8x16_t a14, uint8x16_t a15, uint8x16_t a16, int8x16_t a17, int8x16_t a18, int8x16_t a19, int8x16_t a20, int8x16_t a21, uint8x16_t a22, int8x16_t a23, uint8x16_t a24, int8x16_t *a25, int8x16_t *a26, int8x16_t *a27, int8x16_t *a28, int8x16_t *a29, int8x16_t *a30, int8x16_t *a31, int8x16_t *a32, int8x16_t *a33, int *a34, _DWORD *a35)
{
  v35 = vmaxq_u8(vabdq_u8(a15, a16), vabdq_u8(a18, a17));
  v36 = vabdq_u8(a16, a17);
  v37 = vandq_s8(vcgeq_u8(vdupq_n_s8(result), vqaddq_u8(vqaddq_u8(v36, v36), vshrq_n_u8(vabdq_u8(a15, a18), 1uLL))), vcgeq_u8(vdupq_n_s8(a2), vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v35, vabdq_u8(a13, a14)), vabdq_u8(a14, a15)), vabdq_u8(a19, a18)), vabdq_u8(a20, a19))));
  v38.i64[0] = 0x202020202020202;
  v38.i64[1] = 0x202020202020202;
  v39 = vandq_s8(vcgtq_u8(v38, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v35, vabdq_u8(a14, a16)), vabdq_u8(a19, a17)), vabdq_u8(a13, a16)), vabdq_u8(a20, a17))), v37);
  *a34 = vpaddl_u32(vshrn_n_s16(v39, 4uLL));
  v40 = vandq_s8(v39, vcgtq_u8(v38, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(a9, a16), vabdq_u8(a10, a16)), vabdq_u8(a11, a16)), vabdq_u8(a12, a16)), vabdq_u8(a21, a17)), vabdq_u8(a22, a17)), vabdq_u8(a23, a17)), vabdq_u8(a24, a17))));
  v38.i32[0] = vpaddl_u32(vshrn_n_s16(v40, 4uLL));
  *a35 = v38.i32[0];
  v41 = v38.i32[0];
  v42 = *a34;
  if (*a34 == -2 || (v43 = vcgtq_u8(v35, vdupq_n_s8(a3)), v44.i64[0] = 0x8080808080808080, v44.i64[1] = 0x8080808080808080, v45 = veorq_s8(a15, v44), v46 = veorq_s8(a16, v44), v47 = veorq_s8(a17, v44), v48 = veorq_s8(a18, v44), v49 = vqsubq_s8(v47, v46), v50 = vandq_s8(vqaddq_s8(vqaddq_s8(vqaddq_s8(vandq_s8(vqsubq_s8(v45, v48), v43), v49), v49), v49), v37), v51.i64[0] = 0x404040404040404, v51.i64[1] = 0x404040404040404, v52 = vshrq_n_s8(vqaddq_s8(v50, v51), 3uLL), v49.i64[0] = 0x303030303030303, v49.i64[1] = 0x303030303030303, *a27 = veorq_s8(vqsubq_s8(v47, v52), v44), *a26 = veorq_s8(vqaddq_s8(v46, vshrq_n_s8(vqaddq_s8(v50, v49), 3uLL)), v44), v53 = vbicq_s8(vrshrq_n_s8(v52, 1uLL), v43), *a28 = veorq_s8(vqsubq_s8(v48, v53), v44), *a25 = veorq_s8(vqaddq_s8(v45, v53), v44), v42))
  {
    *a8 = a14;
    *a29 = a19;
    v54 = vmovl_u8(*a13.i8);
    v55 = vmovl_high_u8(a13);
    if (v41 == -2)
    {
      v139 = a22;
      v56 = vmovl_u8(*a14.i8);
      v57 = vmovl_high_u8(a14);
      v58 = vmovl_u8(*a15.i8);
      v59 = vmovl_high_u8(a15);
      v60 = vmovl_u8(*a16.i8);
      v61 = vmovl_high_u8(a16);
      v62 = vmovl_u8(*a17.i8);
      v63 = vmovl_high_u8(a17);
      v64 = vmovl_u8(*a18.i8);
      v65 = vmovl_high_u8(a18);
      v66 = vmovl_u8(*a19.i8);
      v67 = vmovl_high_u8(a19);
      v68 = vmovl_u8(*a20.i8);
      v69 = vmovl_high_u8(a20);
    }

    else
    {
      v135 = v54;
      v136 = v55;
      v60 = vmovl_u8(*a16.i8);
      v61 = vmovl_high_u8(a16);
      v62 = vmovl_u8(*a17.i8);
      v70 = vaddw_u8(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(*a14.i8, 1uLL), vmovn_s16(v54), 0x303030303030303), *a15.i8), *a16.i8), *a17.i8);
      v63 = vmovl_high_u8(a17);
      v71 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vmlal_u8(vshll_high_n_u8(a14, 1uLL), vmovn_s16(v55), 0x303030303030303), a15), a16), a17);
      *a8 = vrshrn_high_n_s16(vrshrn_n_s16(v70, 3uLL), v71, 3uLL);
      v72 = vaddl_u8(*a18.i8, *a15.i8);
      v73 = vaddq_s16(vsubq_s16(v72, vaddl_u8(*a14.i8, *a13.i8)), v70);
      v74 = vmovl_high_u8(a18);
      v75 = vaddl_high_u8(a18, a15);
      v76 = vaddq_s16(vsubq_s16(v75, vaddl_high_u8(a14, a13)), v71);
      v77 = vrshrn_high_n_s16(vrshrn_n_s16(v73, 3uLL), v76, 3uLL);
      v78 = vaddq_s16(vaddw_u8(vsubq_s16(v60, vaddl_u8(*a15.i8, *a13.i8)), *a19.i8), v73);
      v79 = vmovl_high_u8(a19);
      v80 = vaddq_s16(vaddw_high_u8(vsubq_s16(v61, vaddl_high_u8(a15, a13)), a19), v76);
      v81 = vrshrn_high_n_s16(vrshrn_n_s16(v78, 3uLL), v80, 3uLL);
      v82 = vaddq_s16(vaddw_u8(vsubq_s16(v62, vaddl_u8(*a16.i8, *a13.i8)), *a20.i8), v78);
      v83 = vaddq_s16(vaddw_high_u8(vsubq_s16(v63, vaddl_high_u8(a16, a13)), a20), v80);
      v84 = vrshrn_high_n_s16(vrshrn_n_s16(v82, 3uLL), v83, 3uLL);
      v137 = vmovl_u8(*a18.i8);
      v66 = vmovl_u8(*a19.i8);
      v85 = vaddq_s16(vaddw_u8(vsubq_s16(v137, vaddl_u8(*a17.i8, *a14.i8)), *a20.i8), v82);
      v86 = vaddq_s16(vaddw_high_u8(vsubq_s16(v74, vaddl_high_u8(a17, a14)), a20), v83);
      *a29 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddw_u8(vsubq_s16(v66, v72), *a20.i8), v85), 3uLL), vaddq_s16(vaddw_high_u8(vsubq_s16(v79, v75), a20), v86), 3uLL);
      *a8 = vbslq_s8(v39, *a8, a14);
      *a25 = vbslq_s8(v39, v77, *a25);
      *a26 = vbslq_s8(v39, v81, *a26);
      *a27 = vbslq_s8(v39, v84, *a27);
      *a28 = vbslq_s8(v39, vrshrn_high_n_s16(vrshrn_n_s16(v85, 3uLL), v86, 3uLL), *a28);
      *a29 = vbslq_s8(v39, *a29, a19);
      if (!v41)
      {
        return result;
      }

      v65 = v74;
      v87 = v79;
      v139 = a22;
      v56 = vmovl_u8(*a14.i8);
      v57 = vmovl_high_u8(a14);
      v58 = vmovl_u8(*a15.i8);
      v59 = vmovl_high_u8(a15);
      v68 = vmovl_u8(*a20.i8);
      v69 = vmovl_high_u8(a20);
      v55 = v136;
      v64 = v137;
      v54 = v135;
      v67 = v87;
    }

    v138 = v65;
    v88.i64[0] = 0x707070707070707;
    v88.i64[1] = 0x707070707070707;
    v89 = vaddq_s16(vaddq_s16(vaddw_u8(vaddw_u8(vmlal_u8(vshll_n_u8(*a10.i8, 1uLL), *a9.i8, 0x707070707070707), *a11.i8), *a12.i8), vaddq_s16(vaddq_s16(v54, v62), v60)), vaddq_s16(v58, v56));
    v90 = vaddq_s16(vaddq_s16(vaddw_high_u8(vaddw_high_u8(vmlal_high_u8(vshll_high_n_u8(a10, 1uLL), a9, v88), a11), a12), vaddq_s16(vaddq_s16(v55, v63), v61)), vaddq_s16(v59, v57));
    *a4 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v89, 4uLL), v90, 4uLL), a10);
    v91 = vaddw_u8(v64, *a11.i8);
    v92 = vaddq_s16(vsubq_s16(v91, vaddl_u8(*a10.i8, *a9.i8)), v89);
    v93 = vaddw_high_u8(v65, a11);
    v94 = vaddq_s16(vsubq_s16(v93, vaddl_high_u8(a10, a9)), v90);
    *a5 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v92, 4uLL), v94, 4uLL), a11);
    v95 = vaddw_u8(v66, *a12.i8);
    v96 = v54;
    v97 = vaddq_s16(vsubq_s16(v95, vaddl_u8(*a11.i8, *a9.i8)), v92);
    v98 = vaddl_high_u8(a11, a9);
    v99 = vaddw_high_u8(v67, a12);
    v100 = vaddq_s16(vsubq_s16(v99, v98), v94);
    *a6 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v97, 4uLL), v100, 4uLL), a12);
    v101 = v66;
    v102 = vaddq_s16(v68, v96);
    v103 = vaddq_s16(vsubq_s16(v102, vaddl_u8(*a12.i8, *a9.i8)), v97);
    v104 = v64;
    v105 = vaddq_s16(v69, v55);
    v106 = vaddq_s16(vsubq_s16(v105, vaddl_high_u8(a12, a9)), v100);
    *a7 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v103, 4uLL), v106, 4uLL), a13);
    v107 = vaddw_u8(v56, *a21.i8);
    v108 = vaddq_s16(vsubq_s16(v107, vaddl_u8(*a13.i8, *a9.i8)), v103);
    v109 = vaddl_high_u8(a13, a9);
    v110 = vaddw_high_u8(v57, a21);
    v111 = vaddq_s16(vsubq_s16(v110, v109), v106);
    *a8 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v108, 4uLL), v111, 4uLL), *a8);
    v112 = vaddw_u8(v56, *a9.i8);
    v113 = vaddw_u8(v58, *v139.i8);
    v114 = vaddq_s16(vsubq_s16(v113, v112), v108);
    v115 = vaddw_high_u8(v57, a9);
    v116 = vaddw_high_u8(v59, v139);
    v117 = vaddq_s16(vsubq_s16(v116, v115), v111);
    *a25 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v114, 4uLL), v117, 4uLL), *a25);
    v118 = vaddq_s16(vsubq_s16(vaddw_u8(v60, *a23.i8), vaddw_u8(v58, *a9.i8)), v114);
    v119 = vaddq_s16(vsubq_s16(vaddw_high_u8(v61, a23), vaddw_high_u8(v59, a9)), v117);
    *a26 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v118, 4uLL), v119, 4uLL), *a26);
    v120 = vaddq_s16(vsubq_s16(vaddw_u8(v62, *a24.i8), vaddw_u8(v60, *a9.i8)), v118);
    v121 = vaddq_s16(vsubq_s16(vaddw_high_u8(v63, a24), vaddw_high_u8(v61, a9)), v119);
    *a27 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v120, 4uLL), v121, 4uLL), *a27);
    v122 = vaddq_s16(vsubq_s16(vaddw_u8(v104, *a24.i8), vaddw_u8(v62, *a10.i8)), v120);
    v123 = vaddq_s16(vsubq_s16(vaddw_high_u8(v138, a24), vaddw_high_u8(v63, a10)), v121);
    *a28 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v122, 4uLL), v123, 4uLL), *a28);
    v124 = vaddq_s16(vsubq_s16(vaddw_u8(v101, *a24.i8), v91), v122);
    v125 = vaddq_s16(vsubq_s16(vaddw_high_u8(v67, a24), v93), v123);
    v126 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v124, 4uLL), v125, 4uLL), *a29);
    v127 = vaddq_s16(vsubq_s16(vaddw_u8(v68, *a24.i8), v95), v124);
    v128 = vaddq_s16(vsubq_s16(vaddw_high_u8(v69, a24), v99), v125);
    v129 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v127, 4uLL), v128, 4uLL), a20);
    v130 = vaddq_s16(vsubq_s16(vaddl_u8(*a24.i8, *a21.i8), v102), v127);
    v131 = vaddq_s16(vsubq_s16(vaddl_high_u8(a24, a21), v105), v128);
    v132 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v130, 4uLL), v131, 4uLL), a21);
    v133 = vaddq_s16(vsubq_s16(vaddl_u8(*a24.i8, *v139.i8), v107), v130);
    v134 = vaddq_s16(vsubq_s16(vaddl_high_u8(a24, v139), v110), v131);
    *a29 = v126;
    *a30 = v129;
    *a31 = v132;
    *a32 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(v133, 4uLL), v134, 4uLL), v139);
    *a33 = vbslq_s8(v40, vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vsubq_s16(vaddl_u8(*a24.i8, *a23.i8), v113), v133), 4uLL), vaddq_s16(vsubq_s16(vaddl_high_u8(a24, a23), v116), v134), 4uLL), a23);
  }

  return result;
}

int8x16_t vpx_lpf_vertical_16_neon(_BYTE *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v125 = 0;
  v126 = 0;
  v6 = (a1 - 8);
  v7 = *(a1 - 8);
  v8 = a2;
  v9 = &a1[a2 - 8];
  v10 = *v9;
  v11 = (v9 + a2);
  v12 = (v11 + a2);
  v13 = *v12;
  v14 = (v12 + a2);
  v15 = (v14 + a2);
  v16 = (v15 + a2);
  v17 = *v16;
  v18 = vtrn1q_s8(v7, v10);
  v19 = vtrn2q_s8(v7, v10);
  v20 = vtrn1q_s8(*v11, v13);
  v21 = vtrn2q_s8(*v11, v13);
  v22 = vtrn1q_s8(*v14, *v15);
  v23 = vtrn2q_s8(*v14, *v15);
  v24 = *(v16 + a2);
  v25 = vtrn1q_s8(*v16, v24);
  v123 = 0;
  v124 = 0;
  v26 = vtrn2q_s8(v17, v24);
  v27 = vtrn1q_s16(v18, v20);
  v28 = vtrn2q_s16(v18, v20);
  v121 = 0;
  v122 = 0;
  v29 = vtrn1q_s16(v19, v21);
  v30 = vtrn2q_s16(v19, v21);
  v31 = vtrn1q_s16(v22, v25);
  v32 = vtrn2q_s16(v22, v25);
  v119 = 0;
  v120 = 0;
  v33 = vtrn1q_s16(v23, v26);
  v34 = vtrn2q_s16(v23, v26);
  v117 = 0;
  v118 = 0;
  v35 = vtrn1q_s32(v27, v31);
  v36 = vtrn2q_s32(v27, v31);
  v37 = vtrn1q_s32(v28, v32);
  v38 = vtrn2q_s32(v28, v32);
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  v39 = vtrn1q_s32(v29, v33);
  v40 = vtrn2q_s32(v29, v33);
  v41 = vtrn1q_s32(v30, v34);
  v42 = vtrn2q_s32(v30, v34);
  v110 = vextq_s8(v42, v42, 8uLL).u64[0];
  v111 = v35.i64[0];
  v108 = vextq_s8(v41, v41, 8uLL);
  v109 = v36;
  lpf_16_kernel(*a3, *a4, *a5, &v126, &v125, &v124, &v123, &v122, *v35.i8, *v39.i8, *v37.i8, *v41.i8, *v36.i8, *v40.i8, *v38.i8, *v42.i8, *&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v37, v37, 8uLL), *v108.i8, *&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v38, v38, 8uLL), v110, &v121, &v120, &v119, &v118, &v117, &v116, &v115, &v114, &v113, &v112 + 1, &v112);
  if (HIDWORD(v112))
  {
    if (v112)
    {
      *v50.i8 = v125;
      *v49.i8 = v126;
      *v52.i8 = v123;
      *v51.i8 = v124;
      *v54.i8 = v121;
      *v53.i8 = v122;
      *v55.i8 = v120;
      v56.i64[0] = v111;
      v56.u64[1] = v119;
      v49.u64[1] = v118;
      v50.u64[1] = v117;
      v51.i64[1] = v116;
      v52.i64[1] = v115;
      v53.i64[1] = v114;
      v54.i64[1] = v113;
      v55.u64[1] = v110;
      v57 = vtrn1q_s8(v56, v49);
      v58 = vtrn2q_s8(v56, v49);
      v59 = vtrn1q_s8(v50, v51);
      v60 = vtrn2q_s8(v50, v51);
      v61 = vtrn1q_s8(v52, v53);
      v62 = vtrn2q_s8(v52, v53);
      v63 = vtrn1q_s8(v54, v55);
      v64 = vtrn2q_s8(v54, v55);
      v65 = vtrn1q_s16(v57, v59);
      v66 = vtrn2q_s16(v57, v59);
      v67 = vtrn1q_s16(v58, v60);
      v68 = vtrn2q_s16(v58, v60);
      v69 = vtrn1q_s16(v61, v63);
      v70 = vtrn2q_s16(v61, v63);
      v71 = vtrn1q_s16(v62, v64);
      v72 = vtrn2q_s16(v62, v64);
      v73 = vtrn1q_s32(v65, v69);
      v74 = vtrn2q_s32(v65, v69);
      v75 = vtrn1q_s32(v66, v70);
      v76 = vtrn2q_s32(v66, v70);
      v77 = vtrn1q_s32(v67, v71);
      v78 = vtrn2q_s32(v67, v71);
      v79 = vtrn1q_s32(v68, v72);
      result = vtrn2q_s32(v68, v72);
      *v6 = v73;
      *(v6 + v8) = v77;
      *v11 = v75;
      *(v11 + v8) = v79;
      *v14 = v74;
      *(v14 + v8) = v78;
      *v16 = v76;
      *(v16 + v8) = result;
    }

    else
    {
      *v44.i8 = v121;
      *result.i8 = v122;
      *v46.i8 = v119;
      *v45.i8 = v120;
      *v48.i8 = v117;
      *v47.i8 = v118;
      v91 = vzip1q_s8(v109, result);
      v92 = vzip1q_s8(v44, v45);
      v93 = vzip1q_s8(v46, v47);
      v94 = vzip1q_s8(v48, v108);
      v95 = vzip1q_s16(v91, v92);
      v96 = vzip2q_s16(v91, v92);
      v97 = vzip1q_s16(v93, v94);
      v98 = vzip2q_s16(v93, v94);
      v99 = vzip1q_s32(v95, v97);
      v100 = vzip2q_s32(v95, v97);
      v101 = vzip1q_s32(v96, v98);
      result = vzip2q_s32(v96, v98);
      *(a1 - 4) = v99.i64[0];
      v102 = a1 - 4;
      *&v102[v8] = v99.i64[1];
      v103 = &v102[v8 + v8];
      *v103 = v100.i64[0];
      v104 = (v103 + v8);
      *v104 = v100.i64[1];
      v105 = (v104 + v8);
      *v105 = v101.i64[0];
      v106 = (v105 + v8);
      *v106 = v101.i64[1];
      v107 = (v106 + v8);
      *v107 = result.i64[0];
      *(v107 + v8) = vextq_s8(result, result, 8uLL).u64[0];
    }
  }

  else
  {
    v80 = a1 - 2;
    v81 = v120;
    *result.i8 = v121;
    v83 = v118;
    v82 = v119;
    *v80 = v121.i8[0];
    v80[1] = v81.i8[0];
    *a1 = v82.i8[0];
    a1[1] = v83.i8[0];
    v84 = &a1[v8 - 2];
    *v84 = result.i8[1];
    v84[1] = v81.i8[1];
    v84[2] = v82.i8[1];
    v84[3] = v83.i8[1];
    v85 = &v84[v8];
    *v85 = result.i8[2];
    v85[1] = v81.i8[2];
    v85[2] = v82.i8[2];
    v85[3] = v83.i8[2];
    v86 = &v85[v8];
    *v86 = result.i8[3];
    v86[1] = v81.i8[3];
    v86[2] = v82.i8[3];
    v86[3] = v83.i8[3];
    v87 = &v86[v8];
    *v87 = result.i8[4];
    v87[1] = v81.i8[4];
    v87[2] = v82.i8[4];
    v87[3] = v83.i8[4];
    v88 = &v87[v8];
    *v88 = result.i8[5];
    v88[1] = v81.i8[5];
    v88[2] = v82.i8[5];
    v88[3] = v83.i8[5];
    v89 = &v88[v8];
    *v89 = result.i8[6];
    v89[1] = v81.i8[6];
    v89[2] = v82.i8[6];
    v89[3] = v83.i8[6];
    v90 = &v89[v8];
    *v90 = result.i8[7];
    v90[1] = v81.i8[7];
    v90[2] = v82.i8[7];
    v90[3] = v83.i8[7];
  }

  return result;
}

__n128 vpx_lpf_vertical_16_dual_neon(_BYTE *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v221 = 0u;
  v222[0] = 0u;
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v6 = (a1 - 8);
  v7 = *(a1 - 8);
  v8 = a2;
  v9 = &a1[a2 - 8];
  v10 = *v9;
  v11 = (v9 + a2);
  v12 = (v11 + a2);
  v13 = *v12;
  v14 = (v12 + a2);
  v15 = (v14 + a2);
  v16 = *v15;
  v17 = (v15 + a2);
  v18 = *v17;
  v207 = v17;
  v19 = (v17 + a2);
  v20 = *v19;
  v21 = (v19 + a2);
  v22 = (v21 + a2);
  v23 = *v22;
  v24 = (v22 + a2);
  v25 = vtrn1q_s8(v7, v10);
  v26 = (v24 + a2);
  v27 = *v26;
  v28 = vtrn2q_s8(v7, v10);
  v29 = vtrn1q_s8(*v11, v13);
  v30 = vtrn2q_s8(*v11, v13);
  v31 = (v26 + a2);
  v32 = vtrn1q_s8(*v14, v16);
  v33 = vtrn2q_s8(*v14, v16);
  v34 = vtrn1q_s8(v18, v20);
  v35 = (v31 + a2);
  v36 = (v35 + a2);
  v37 = vtrn2q_s8(v18, v20);
  v38 = vtrn1q_s8(*v21, v23);
  v39 = vtrn2q_s8(*v21, v23);
  v40 = *(v36 + a2);
  v41 = vtrn1q_s8(*v24, v27);
  v42 = vtrn2q_s8(*v24, v27);
  v43 = vtrn1q_s8(*v31, *v35);
  v44 = vtrn2q_s8(*v31, *v35);
  v45 = vtrn1q_s8(*v36, v40);
  v46 = vtrn2q_s8(*v36, v40);
  v47 = vtrn1q_s16(v25, v29);
  v48 = vtrn2q_s16(v25, v29);
  v49 = vtrn1q_s16(v28, v30);
  v50 = vtrn2q_s16(v28, v30);
  v51 = vtrn1q_s16(v32, v34);
  v52 = vtrn2q_s16(v32, v34);
  v53 = vtrn1q_s16(v33, v37);
  v54 = vtrn2q_s16(v33, v37);
  v55 = vtrn1q_s16(v38, v41);
  v56 = vtrn2q_s16(v38, v41);
  v57 = vtrn1q_s16(v39, v42);
  v58 = vtrn2q_s16(v39, v42);
  v59 = vtrn1q_s16(v43, v45);
  v60 = vtrn2q_s16(v43, v45);
  v61 = vtrn1q_s16(v44, v46);
  v62 = vtrn2q_s16(v44, v46);
  v63 = vtrn1q_s32(v47, v51);
  v64 = vtrn2q_s32(v47, v51);
  v65 = vtrn1q_s32(v48, v52);
  v66 = vtrn2q_s32(v48, v52);
  v67 = vtrn1q_s32(v49, v53);
  v68 = vtrn2q_s32(v49, v53);
  v69 = vtrn1q_s32(v50, v54);
  v70 = vtrn2q_s32(v50, v54);
  v71 = vtrn1q_s32(v55, v59);
  v72 = vtrn2q_s32(v55, v59);
  v73 = vtrn1q_s32(v56, v60);
  v74 = vtrn2q_s32(v56, v60);
  v75 = vtrn1q_s32(v57, v61);
  v76 = vtrn2q_s32(v57, v61);
  v77 = vtrn1q_s32(v58, v62);
  v78 = vzip2q_s64(v63, v71);
  v50.i64[0] = v63.i64[0];
  v50.i64[1] = v71.i64[0];
  v79 = vzip2q_s64(v67, v75);
  v67.i64[1] = v75.i64[0];
  v80 = vzip2q_s64(v65, v73);
  v65.i64[1] = v73.i64[0];
  v81 = vzip2q_s64(v69, v77);
  v63.i64[0] = v69.i64[0];
  v63.i64[1] = v77.i64[0];
  v82 = vzip2q_s64(v64, v72);
  v71.i64[0] = v64.i64[0];
  v71.i64[1] = v72.i64[0];
  v83 = vzip2q_s64(v68, v76);
  v68.i64[1] = v76.i64[0];
  v208 = 0;
  v84 = vtrn2q_s32(v58, v62);
  v85 = vzip2q_s64(v66, v74);
  v58.i64[0] = v66.i64[0];
  v58.i64[1] = v74.i64[0];
  v86 = vzip2q_s64(v70, v84);
  v70.i64[1] = v84.i64[0];
  v205 = v86;
  v206 = v50;
  lpf_16_dual_kernel(*a3, *a4, *a5, v222, &v221, &v220, &v219, &v218, v50, v67, v65, v63, v71, v68, v58, v70, v78, v79, v80, v81, v82, v83, v85, v86, &v217, &v216, &v215, &v214, &v213, &v212, &v211, &v210, &v209, &v208 + 1, &v208);
  if (HIDWORD(v208))
  {
    v87 = v214;
    if (v208)
    {
      v88 = vtrn1q_s8(v206, v222[0]);
      v89 = vtrn2q_s8(v206, v222[0]);
      v90 = vtrn1q_s8(v221, v220);
      v91 = vtrn2q_s8(v221, v220);
      v92 = vtrn1q_s8(v219, v218);
      v93 = vtrn2q_s8(v219, v218);
      v94 = vtrn1q_s8(v217, v216);
      v95 = vtrn2q_s8(v217, v216);
      v96 = vtrn1q_s8(v215, v214);
      v97 = vtrn2q_s8(v215, v214);
      v98 = vtrn1q_s8(v213, v212);
      v99 = vtrn2q_s8(v213, v212);
      v100 = vtrn1q_s8(v211, v210);
      v101 = vtrn2q_s8(v211, v210);
      v102 = vtrn1q_s8(v209, v205);
      v103 = vtrn2q_s8(v209, v205);
      v104 = vtrn1q_s16(v88, v90);
      v105 = vtrn2q_s16(v88, v90);
      v106 = vtrn1q_s16(v89, v91);
      v107 = vtrn2q_s16(v89, v91);
      v108 = vtrn1q_s16(v92, v94);
      v109 = vtrn2q_s16(v92, v94);
      v110 = vtrn1q_s16(v93, v95);
      v111 = vtrn2q_s16(v93, v95);
      v112 = vtrn1q_s16(v96, v98);
      v113 = vtrn2q_s16(v96, v98);
      v114 = vtrn1q_s16(v97, v99);
      v115 = vtrn2q_s16(v97, v99);
      v116 = vtrn1q_s16(v100, v102);
      v117 = vtrn2q_s16(v100, v102);
      v118 = vtrn1q_s16(v101, v103);
      v119 = vtrn1q_s32(v104, v108);
      v120 = vtrn1q_s32(v106, v110);
      v121 = vtrn1q_s32(v112, v116);
      v122 = vzip2q_s64(v119, v121);
      v119.i64[1] = v121.i64[0];
      v123 = vtrn1q_s32(v114, v118);
      v124 = vzip2q_s64(v120, v123);
      v102.i64[0] = v120.i64[0];
      v102.i64[1] = v123.i64[0];
      v125 = vtrn2q_s16(v101, v103);
      v126 = vtrn2q_s32(v104, v108);
      v127 = vtrn1q_s32(v105, v109);
      v128 = vtrn2q_s32(v106, v110);
      v129 = vtrn1q_s32(v107, v111);
      v130 = vtrn2q_s32(v112, v116);
      v131 = vtrn1q_s32(v113, v117);
      v132 = vtrn2q_s32(v114, v118);
      v133 = vzip2q_s64(v127, v131);
      v134 = vtrn1q_s32(v115, v125);
      v127.i64[1] = v131.i64[0];
      v135 = vzip2q_s64(v129, v134);
      v129.i64[1] = v134.i64[0];
      v136 = vzip2q_s64(v126, v130);
      v126.i64[1] = v130.i64[0];
      v137 = vzip2q_s64(v128, v132);
      v128.i64[1] = v132.i64[0];
      *v6 = v119;
      *(v6 + v8) = v102;
      *v11 = v127;
      *(v11 + v8) = v129;
      v138 = vtrn2q_s32(v105, v109);
      *v14 = v126;
      *(v14 + v8) = v128;
      v139 = vtrn2q_s32(v113, v117);
      v140 = vzip2q_s64(v138, v139);
      result = vtrn2q_s32(v107, v111);
      v141 = vtrn2q_s32(v115, v125);
      v138.i64[1] = v139.i64[0];
      v142 = vzip2q_s64(result, v141);
      *v207 = v138;
      result.n128_u64[1] = v141.i64[0];
      *(v207 + v8) = result;
      *v21 = v122;
      *(v21 + v8) = v124;
      *v24 = v133;
      *(v24 + v8) = v135;
      *v31 = v136;
      *(v31 + v8) = v137;
      *v36 = v140;
      *(v36 + v8) = v142;
    }

    else
    {
      v168 = v217;
      v167 = v218;
      result = v215;
      v169 = v216;
      v170 = a1 - 3;
      *v170 = v218.i8[0];
      v170[1] = v168.i8[0];
      v170[2] = v169.i8[0];
      v171 = v213;
      v172 = &a1[v8];
      *a1 = result.n128_u8[0];
      a1[1] = v87.i8[0];
      a1[2] = v171.i8[0];
      v173 = &a1[8 * v8];
      v174 = v172 - 3;
      *v174 = v167.i8[1];
      v174[1] = v168.i8[1];
      v174[2] = v169.i8[1];
      *v172 = result.n128_u8[1];
      v172[1] = v87.i8[1];
      v172[2] = v171.i8[1];
      v175 = &v172[v8];
      v176 = v175 - 3;
      *v176 = v167.i8[2];
      v176[1] = v168.i8[2];
      v176[2] = v169.i8[2];
      *v175 = result.n128_u8[2];
      v175[1] = v87.i8[2];
      v175[2] = v171.i8[2];
      v177 = &v175[v8];
      v178 = v177 - 3;
      *v178 = v167.i8[3];
      v178[1] = v168.i8[3];
      v178[2] = v169.i8[3];
      *v177 = result.n128_u8[3];
      v177[1] = v87.i8[3];
      v177[2] = v171.i8[3];
      v179 = &v177[v8];
      v180 = v179 - 3;
      *v180 = v167.i8[4];
      v180[1] = v168.i8[4];
      v180[2] = v169.i8[4];
      *v179 = result.n128_u8[4];
      v179[1] = v87.i8[4];
      v179[2] = v171.i8[4];
      v181 = &v179[v8];
      v182 = v181 - 3;
      *v182 = v167.i8[5];
      v182[1] = v168.i8[5];
      v182[2] = v169.i8[5];
      *v181 = result.n128_u8[5];
      v181[1] = v87.i8[5];
      v181[2] = v171.i8[5];
      v183 = &v181[v8];
      v184 = v183 - 3;
      *v184 = v167.i8[6];
      v184[1] = v168.i8[6];
      v184[2] = v169.i8[6];
      *v183 = result.n128_u8[6];
      v183[1] = v87.i8[6];
      v183[2] = v171.i8[6];
      v185 = &v183[v8];
      v186 = v185 - 3;
      *v186 = v167.i8[7];
      v186[1] = v168.i8[7];
      v186[2] = v169.i8[7];
      *v185 = result.n128_u8[7];
      v185[1] = v87.i8[7];
      v185[2] = v171.i8[7];
      v187 = vextq_s8(v167, v167, 8uLL).u64[0];
      v188 = vextq_s8(v168, v168, 8uLL).u64[0];
      v189 = vextq_s8(v169, v169, 8uLL).u64[0];
      v167.i64[0] = vextq_s8(result, result, 8uLL).u64[0];
      v168.i64[0] = vextq_s8(v87, v87, 8uLL).u64[0];
      v169.i64[0] = vextq_s8(v171, v171, 8uLL).u64[0];
      v190 = v173 - 3;
      *v190 = v187;
      v190[1] = v188;
      v190[2] = v189;
      *v173 = v167.i8[0];
      v173[1] = v168.i8[0];
      v173[2] = v169.i8[0];
      v191 = &v173[v8];
      v192 = v191 - 3;
      *v192 = BYTE1(v187);
      v192[1] = BYTE1(v188);
      v192[2] = BYTE1(v189);
      *v191 = v167.i8[1];
      v191[1] = v168.i8[1];
      v191[2] = v169.i8[1];
      v193 = &v191[v8];
      v194 = v193 - 3;
      *v194 = BYTE2(v187);
      v194[1] = BYTE2(v188);
      v194[2] = BYTE2(v189);
      *v193 = v167.i8[2];
      v193[1] = v168.i8[2];
      v193[2] = v169.i8[2];
      v195 = &v193[v8];
      v196 = v195 - 3;
      *v196 = BYTE3(v187);
      v196[1] = BYTE3(v188);
      v196[2] = BYTE3(v189);
      *v195 = v167.i8[3];
      v195[1] = v168.i8[3];
      v195[2] = v169.i8[3];
      v197 = &v195[v8];
      v198 = v197 - 3;
      *v198 = BYTE4(v187);
      v198[1] = BYTE4(v188);
      v198[2] = BYTE4(v189);
      *v197 = v167.i8[4];
      v197[1] = v168.i8[4];
      v197[2] = v169.i8[4];
      v199 = &v197[v8];
      v200 = v199 - 3;
      *v200 = BYTE5(v187);
      v200[1] = BYTE5(v188);
      v200[2] = BYTE5(v189);
      *v199 = v167.i8[5];
      v199[1] = v168.i8[5];
      v199[2] = v169.i8[5];
      v201 = &v199[v8];
      v202 = v201 - 3;
      *v202 = BYTE6(v187);
      v202[1] = BYTE6(v188);
      v202[2] = BYTE6(v189);
      *v201 = v167.i8[6];
      v201[1] = v168.i8[6];
      v201[2] = v169.i8[6];
      v203 = &v201[v8];
      v204 = v203 - 3;
      *v204 = HIBYTE(v187);
      v204[1] = HIBYTE(v188);
      v204[2] = HIBYTE(v189);
      *v203 = v167.i8[7];
      v203[1] = v168.i8[7];
      v203[2] = v169.i8[7];
    }
  }

  else
  {
    v144 = a1 - 2;
    result = v217;
    v146 = v215;
    v145 = v216;
    v147 = v214;
    v148 = &a1[v8 - 2];
    *v144 = v217.i8[0];
    v144[1] = v145.i8[0];
    *a1 = v146.i8[0];
    a1[1] = v147.i8[0];
    v149 = &a1[8 * v8 - 2];
    *v148 = result.n128_u8[1];
    v148[1] = v145.i8[1];
    v148[2] = v146.i8[1];
    v148[3] = v147.i8[1];
    v150 = &v148[v8];
    *v150 = result.n128_u8[2];
    v150[1] = v145.i8[2];
    v150[2] = v146.i8[2];
    v150[3] = v147.i8[2];
    v151 = &v150[v8];
    *v151 = result.n128_u8[3];
    v151[1] = v145.i8[3];
    v151[2] = v146.i8[3];
    v151[3] = v147.i8[3];
    v152 = &v151[v8];
    *v152 = result.n128_u8[4];
    v152[1] = v145.i8[4];
    v152[2] = v146.i8[4];
    v152[3] = v147.i8[4];
    v153 = &v152[v8];
    *v153 = result.n128_u8[5];
    v153[1] = v145.i8[5];
    v153[2] = v146.i8[5];
    v153[3] = v147.i8[5];
    v154 = &v153[v8];
    *v154 = result.n128_u8[6];
    v154[1] = v145.i8[6];
    v154[2] = v146.i8[6];
    v154[3] = v147.i8[6];
    v155 = &v154[v8];
    *v155 = result.n128_u8[7];
    v155[1] = v145.i8[7];
    v155[2] = v146.i8[7];
    v155[3] = v147.i8[7];
    v156 = vextq_s8(result, result, 8uLL).u64[0];
    v157 = vextq_s8(v145, v145, 8uLL).u64[0];
    v158 = vextq_s8(v146, v146, 8uLL).u64[0];
    v159 = vextq_s8(v147, v147, 8uLL).u64[0];
    *v149 = v156;
    v149[1] = v157;
    v149[2] = v158;
    v149[3] = v159;
    v160 = &v149[v8];
    *v160 = BYTE1(v156);
    v160[1] = BYTE1(v157);
    v160[2] = BYTE1(v158);
    v160[3] = BYTE1(v159);
    v161 = &v160[v8];
    *v161 = BYTE2(v156);
    v161[1] = BYTE2(v157);
    v161[2] = BYTE2(v158);
    v161[3] = BYTE2(v159);
    v162 = &v161[v8];
    *v162 = BYTE3(v156);
    v162[1] = BYTE3(v157);
    v162[2] = BYTE3(v158);
    v162[3] = BYTE3(v159);
    v163 = &v162[v8];
    *v163 = BYTE4(v156);
    v163[1] = BYTE4(v157);
    v163[2] = BYTE4(v158);
    v163[3] = BYTE4(v159);
    v164 = &v163[v8];
    *v164 = BYTE5(v156);
    v164[1] = BYTE5(v157);
    v164[2] = BYTE5(v158);
    v164[3] = BYTE5(v159);
    v165 = &v164[v8];
    *v165 = BYTE6(v156);
    v165[1] = BYTE6(v157);
    v165[2] = BYTE6(v158);
    v165[3] = BYTE6(v159);
    v166 = &v165[v8];
    *v166 = HIBYTE(v156);
    v166[1] = HIBYTE(v157);
    v166[2] = HIBYTE(v158);
    v166[3] = HIBYTE(v159);
  }

  return result;
}

int8x16_t vp8_loop_filter_bhs_neon(uint64_t a1, int a2, const char *a3)
{
  v3 = 4 * a2;
  v4 = vld1q_dup_s8(a3);
  v5 = 2 * a2;
  v6 = (a1 + v3 - v5);
  v7 = *v6;
  v8 = (v6 + a2);
  v9 = *v8;
  v10 = &v8->i8[a2];
  v11 = *(v10 + a2);
  v12 = vabdq_u8(v9, *v10);
  v13 = vqaddq_u8(vqaddq_u8(v12, v12), vshrq_n_u8(vabdq_u8(v7, v11), 1uLL));
  v12.i64[0] = 0x8080808080808080;
  v12.i64[1] = 0x8080808080808080;
  v14 = veorq_s8(v9, v12);
  v15 = veorq_s8(*v10, v12);
  v16 = veorq_s8(v11, v12);
  v17 = vcgtq_u8(v13, v4);
  v18 = vqsubq_s8(veorq_s8(v7, v12), v16);
  v4.i64[0] = 0x303030303030303;
  v4.i64[1] = 0x303030303030303;
  v19 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v15.i8, 0x303030303030303), *v14.i8, 0x303030303030303), *v18.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v15, v4), v14, v4), v18)), v17);
  v18.i64[0] = 0x404040404040404;
  v18.i64[1] = 0x404040404040404;
  *(a1 + v3) = veorq_s8(vqsubq_s8(v15, vshrq_n_s8(vqaddq_s8(v19, v18), 3uLL)), v12);
  *(a1 + v3 - a2) = veorq_s8(vqaddq_s8(v14, vshrq_n_s8(vqaddq_s8(v19, v4), 3uLL)), v12);
  v20 = (a1 + v3 + v3);
  v21 = vld1q_dup_s8(a3);
  v22 = *(v20 - v5);
  v23 = (v20 + a2 - v5);
  v24 = *v23;
  v25 = &v23->i8[a2];
  v26 = *(v25 + a2);
  v27 = vabdq_u8(v24, *v25);
  v28 = vqaddq_u8(vqaddq_u8(v27, v27), vshrq_n_u8(vabdq_u8(v22, v26), 1uLL));
  v29 = veorq_s8(v24, v12);
  v30 = veorq_s8(*v25, v12);
  v31 = vqsubq_s8(veorq_s8(v22, v12), veorq_s8(v26, v12));
  v32 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v30.i8, 0x303030303030303), *v29.i8, 0x303030303030303), *v31.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v30, v4), v29, v4), v31)), vcgtq_u8(v28, v21));
  *v20 = veorq_s8(vqsubq_s8(v30, vshrq_n_s8(vqaddq_s8(v32, v18), 3uLL)), v12);
  *(v20 - a2) = veorq_s8(vqaddq_s8(v29, vshrq_n_s8(vqaddq_s8(v32, v4), 3uLL)), v12);
  v33 = (v20 + v3);
  v34 = vld1q_dup_s8(a3);
  v35 = (v33 - v5);
  v36 = *v35;
  v37 = (v35 + a2);
  v38 = *v37;
  v39 = &v37->i8[a2];
  v40 = *(v39 + a2);
  v41 = vabdq_u8(v38, *v39);
  v42 = vqaddq_u8(vqaddq_u8(v41, v41), vshrq_n_u8(vabdq_u8(v36, v40), 1uLL));
  v43 = veorq_s8(v38, v12);
  v44 = veorq_s8(*v39, v12);
  v45 = vqsubq_s8(veorq_s8(v36, v12), veorq_s8(v40, v12));
  v46 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v44.i8, 0x303030303030303), *v43.i8, 0x303030303030303), *v45.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v44, v4), v43, v4), v45)), vcgtq_u8(v42, v34));
  v47 = veorq_s8(vqaddq_s8(v43, vshrq_n_s8(vqaddq_s8(v46, v4), 3uLL)), v12);
  result = veorq_s8(vqsubq_s8(v44, vshrq_n_s8(vqaddq_s8(v46, v18), 3uLL)), v12);
  *v33 = result;
  *(v33 - a2) = v47;
  return result;
}

int8x16_t vp8_loop_filter_bvs_neon(_BYTE *a1, int a2, const char *a3)
{
  v3 = vld1q_dup_s8(a3);
  v4 = 8 * a2;
  v5 = &a1[a2 + 2];
  v7.i8[0] = a1[2];
  v8.i8[0] = a1[3];
  v9.i8[0] = a1[4];
  v10.i8[0] = a1[5];
  v6 = &a1[v4 + 2];
  v7.i8[1] = *v5;
  v8.i8[1] = v5[1];
  v9.i8[1] = v5[2];
  v10.i8[1] = v5[3];
  v11 = &v5[a2];
  v7.i8[2] = *v11;
  v8.i8[2] = v11[1];
  v9.i8[2] = v11[2];
  v10.i8[2] = v11[3];
  v12 = &v11[a2];
  v7.i8[3] = *v12;
  v8.i8[3] = v12[1];
  v9.i8[3] = v12[2];
  v10.i8[3] = v12[3];
  v13 = &v12[a2];
  v7.i8[4] = *v13;
  v8.i8[4] = v13[1];
  v9.i8[4] = v13[2];
  v10.i8[4] = v13[3];
  v14 = &v13[a2];
  v7.i8[5] = *v14;
  v8.i8[5] = v14[1];
  v9.i8[5] = v14[2];
  v10.i8[5] = v14[3];
  v15 = &v14[a2];
  v7.i8[6] = *v15;
  v8.i8[6] = v15[1];
  v9.i8[6] = v15[2];
  v10.i8[6] = v15[3];
  v16 = &v15[a2];
  v7.i8[7] = *v16;
  v8.i8[7] = v16[1];
  v9.i8[7] = v16[2];
  v10.i8[7] = v16[3];
  LOBYTE(v18) = *v6;
  v19.i8[0] = v6[1];
  v20.i8[0] = v6[2];
  v21.i8[0] = v6[3];
  v17 = &v6[a2];
  BYTE1(v18) = *v17;
  v19.i8[1] = v17[1];
  v20.i8[1] = v17[2];
  v21.i8[1] = v17[3];
  v22 = &v17[a2];
  BYTE2(v18) = *v22;
  v19.i8[2] = v22[1];
  v20.i8[2] = v22[2];
  v21.i8[2] = v22[3];
  v23 = &v22[a2];
  BYTE3(v18) = *v23;
  v19.i8[3] = v23[1];
  v20.i8[3] = v23[2];
  v21.i8[3] = v23[3];
  v24 = &v23[a2];
  BYTE4(v18) = *v24;
  v19.i8[4] = v24[1];
  v20.i8[4] = v24[2];
  v21.i8[4] = v24[3];
  v25 = &v24[a2];
  BYTE5(v18) = *v25;
  v19.i8[5] = v25[1];
  v20.i8[5] = v25[2];
  v21.i8[5] = v25[3];
  v26 = &v25[a2];
  BYTE6(v18) = *v26;
  v19.i8[6] = v26[1];
  v20.i8[6] = v26[2];
  v21.i8[6] = v26[3];
  v27 = &v26[a2];
  HIBYTE(v18) = *v27;
  v19.i8[7] = v27[1];
  v20.i8[7] = v27[2];
  v21.i8[7] = v27[3];
  v7.i64[1] = v18;
  *v28.i8 = v9;
  v28.u64[1] = v20;
  *v29.i8 = v8;
  v29.u64[1] = v19;
  v10.u64[1] = v21;
  v30 = vabdq_u8(v29, v28);
  v31 = vqaddq_u8(vqaddq_u8(v30, v30), vshrq_n_u8(vabdq_u8(v7, v10), 1uLL));
  v30.i64[0] = 0x8080808080808080;
  v30.i64[1] = 0x8080808080808080;
  v32 = veorq_s8(v29, v30);
  v33 = vqsubq_s8(veorq_s8(v7, v30), veorq_s8(v10, v30));
  v34 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(veor_s8(v9, 0x8080808080808080), 0x303030303030303), veor_s8(v8, 0x8080808080808080), 0x303030303030303), *v33.i8)), vaddw_high_s8(vmlsl_s8(vmull_s8(veor_s8(v20, 0x8080808080808080), 0x303030303030303), veor_s8(v19, 0x8080808080808080), 0x303030303030303), v33)), vcgtq_u8(v31, v3));
  v33.i64[0] = 0x303030303030303;
  v33.i64[1] = 0x303030303030303;
  v7.i64[0] = 0x404040404040404;
  v7.i64[1] = 0x404040404040404;
  v35 = veorq_s8(vqaddq_s8(v32, vshrq_n_s8(vqaddq_s8(v34, v33), 3uLL)), v30);
  v36 = veorq_s8(vqsubq_s8(veorq_s8(v28, v30), vshrq_n_s8(vqaddq_s8(v34, v7), 3uLL)), v30);
  v37 = vextq_s8(v35, v35, 8uLL).u64[0];
  v38.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
  a1[3] = v35.i8[0];
  a1[4] = v36.i8[0];
  v39 = &a1[a2 + 3];
  *v39 = v35.i8[1];
  v39[1] = v36.i8[1];
  v40 = &v39[a2];
  *v40 = v35.i8[2];
  v40[1] = v36.i8[2];
  v41 = &v40[a2];
  *v41 = v35.i8[3];
  v41[1] = v36.i8[3];
  v42 = &v41[a2];
  *v42 = v35.i8[4];
  v42[1] = v36.i8[4];
  v43 = &v42[a2];
  *v43 = v35.i8[5];
  v43[1] = v36.i8[5];
  v44 = &v43[a2];
  *v44 = v35.i8[6];
  v44[1] = v36.i8[6];
  v45 = &v44[a2];
  *v45 = v35.i8[7];
  v45[1] = v36.i8[7];
  v46 = &v45[a2];
  *v46 = v37.i8[0];
  v46[1] = v38.i8[0];
  v47 = &v46[a2];
  *v47 = v37.i8[1];
  v47[1] = v38.i8[1];
  v48 = &v47[a2];
  *v48 = v37.i8[2];
  v48[1] = v38.i8[2];
  v49 = &v48[a2];
  *v49 = v37.i8[3];
  v49[1] = v38.i8[3];
  v50 = &v49[a2];
  *v50 = v37.i8[4];
  v50[1] = v38.i8[4];
  v51 = &v50[a2];
  *v51 = v37.i8[5];
  v51[1] = v38.i8[5];
  v52 = &v51[a2];
  *v52 = v37.i8[6];
  v52[1] = v38.i8[6];
  v53 = &v52[a2];
  *v53 = v37.i8[7];
  v53[1] = v38.i8[7];
  v54 = vld1q_dup_s8(a3);
  v55 = &a1[a2 + 6];
  v35.i8[0] = a1[6];
  v36.i8[0] = a1[7];
  v37.i8[0] = a1[8];
  v38.i8[0] = a1[9];
  v56 = &a1[v4 + 6];
  v35.i8[1] = *v55;
  v36.i8[1] = v55[1];
  v37.i8[1] = v55[2];
  v38.i8[1] = v55[3];
  v57 = &v55[a2];
  v35.i8[2] = *v57;
  v36.i8[2] = v57[1];
  v37.i8[2] = v57[2];
  v38.i8[2] = v57[3];
  v58 = &v57[a2];
  v35.i8[3] = *v58;
  v36.i8[3] = v58[1];
  v37.i8[3] = v58[2];
  v38.i8[3] = v58[3];
  v59 = &v58[a2];
  v35.i8[4] = *v59;
  v36.i8[4] = v59[1];
  v37.i8[4] = v59[2];
  v38.i8[4] = v59[3];
  v60 = &v59[a2];
  v35.i8[5] = *v60;
  v36.i8[5] = v60[1];
  v37.i8[5] = v60[2];
  v38.i8[5] = v60[3];
  v61 = &v60[a2];
  v35.i8[6] = *v61;
  v36.i8[6] = v61[1];
  v37.i8[6] = v61[2];
  v38.i8[6] = v61[3];
  v62 = &v61[a2];
  v35.i8[7] = *v62;
  v36.i8[7] = v62[1];
  v37.i8[7] = v62[2];
  v38.i8[7] = v62[3];
  v20.i8[0] = *v56;
  v21.i8[0] = v56[1];
  v31.i8[0] = v56[2];
  LOBYTE(v64) = v56[3];
  v63 = &v56[a2];
  v20.i8[1] = *v63;
  v21.i8[1] = v63[1];
  v31.i8[1] = v63[2];
  BYTE1(v64) = v63[3];
  v65 = &v63[a2];
  v20.i8[2] = *v65;
  v21.i8[2] = v65[1];
  v31.i8[2] = v65[2];
  BYTE2(v64) = v65[3];
  v66 = &v65[a2];
  v20.i8[3] = *v66;
  v21.i8[3] = v66[1];
  v31.i8[3] = v66[2];
  BYTE3(v64) = v66[3];
  v67 = &v66[a2];
  v20.i8[4] = *v67;
  v21.i8[4] = v67[1];
  v31.i8[4] = v67[2];
  BYTE4(v64) = v67[3];
  v68 = &v67[a2];
  v20.i8[5] = *v68;
  v21.i8[5] = v68[1];
  v31.i8[5] = v68[2];
  BYTE5(v64) = v68[3];
  v69 = &v68[a2];
  v20.i8[6] = *v69;
  v21.i8[6] = v69[1];
  v31.i8[6] = v69[2];
  BYTE6(v64) = v69[3];
  v70 = &v69[a2];
  v20.i8[7] = *v70;
  v21.i8[7] = v70[1];
  v31.i8[7] = v70[2];
  HIBYTE(v64) = v70[3];
  v35.u64[1] = v20;
  *v71.i8 = v37;
  v71.i64[1] = v31.i64[0];
  v32.i64[0] = v36.i64[0];
  v32.u64[1] = v21;
  v38.i64[1] = v64;
  v72 = vabdq_u8(v32, v71);
  v73 = vcgtq_u8(vqaddq_u8(vqaddq_u8(v72, v72), vshrq_n_u8(vabdq_u8(v35, v38), 1uLL)), v54);
  v74 = vqsubq_s8(veorq_s8(v35, v30), veorq_s8(v38, v30));
  v75 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(veor_s8(v37, 0x8080808080808080), 0x303030303030303), veor_s8(*v36.i8, 0x8080808080808080), 0x303030303030303), *v74.i8)), vaddw_high_s8(vmlsl_s8(vmull_s8(veor_s8(*v31.i8, 0x8080808080808080), 0x303030303030303), veor_s8(v21, 0x8080808080808080), 0x303030303030303), v74)), v73);
  v76 = veorq_s8(vqaddq_s8(veorq_s8(v32, v30), vshrq_n_s8(vqaddq_s8(v75, v33), 3uLL)), v30);
  v77 = veorq_s8(vqsubq_s8(veorq_s8(v71, v30), vshrq_n_s8(vqaddq_s8(v75, v7), 3uLL)), v30);
  v78 = vextq_s8(v76, v76, 8uLL).u64[0];
  v74.i64[0] = vextq_s8(v77, v77, 8uLL).u64[0];
  a1[7] = v76.i8[0];
  a1[8] = v77.i8[0];
  v79 = &a1[a2 + 7];
  *v79 = v76.i8[1];
  v79[1] = v77.i8[1];
  v80 = &v79[a2];
  *v80 = v76.i8[2];
  v80[1] = v77.i8[2];
  v81 = &v80[a2];
  *v81 = v76.i8[3];
  v81[1] = v77.i8[3];
  v82 = &v81[a2];
  *v82 = v76.i8[4];
  v82[1] = v77.i8[4];
  v83 = &v82[a2];
  *v83 = v76.i8[5];
  v83[1] = v77.i8[5];
  v84 = &v83[a2];
  *v84 = v76.i8[6];
  v84[1] = v77.i8[6];
  v85 = &v84[a2];
  *v85 = v76.i8[7];
  v85[1] = v77.i8[7];
  v86 = &v85[a2];
  *v86 = v78.i8[0];
  v86[1] = v74.i8[0];
  v87 = &v86[a2];
  *v87 = v78.i8[1];
  v87[1] = v74.i8[1];
  v88 = &v87[a2];
  *v88 = v78.i8[2];
  v88[1] = v74.i8[2];
  v89 = &v88[a2];
  *v89 = v78.i8[3];
  v89[1] = v74.i8[3];
  v90 = &v89[a2];
  *v90 = v78.i8[4];
  v90[1] = v74.i8[4];
  v91 = &v90[a2];
  *v91 = v78.i8[5];
  v91[1] = v74.i8[5];
  v92 = &v91[a2];
  *v92 = v78.i8[6];
  v92[1] = v74.i8[6];
  v93 = &v92[a2];
  *v93 = v78.i8[7];
  v93[1] = v74.i8[7];
  v94 = vld1q_dup_s8(a3);
  v95 = &a1[a2 + 10];
  v76.i8[0] = a1[10];
  v77.i8[0] = a1[11];
  v78.i8[0] = a1[12];
  v74.i8[0] = a1[13];
  v96 = &a1[v4 + 10];
  v76.i8[1] = *v95;
  v77.i8[1] = v95[1];
  v78.i8[1] = v95[2];
  v74.i8[1] = v95[3];
  v97 = &v95[a2];
  v76.i8[2] = *v97;
  v77.i8[2] = v97[1];
  v78.i8[2] = v97[2];
  v74.i8[2] = v97[3];
  v98 = &v97[a2];
  v76.i8[3] = *v98;
  v77.i8[3] = v98[1];
  v78.i8[3] = v98[2];
  v74.i8[3] = v98[3];
  v99 = &v98[a2];
  v76.i8[4] = *v99;
  v77.i8[4] = v99[1];
  v78.i8[4] = v99[2];
  v74.i8[4] = v99[3];
  v100 = &v99[a2];
  v76.i8[5] = *v100;
  v77.i8[5] = v100[1];
  v78.i8[5] = v100[2];
  v74.i8[5] = v100[3];
  v101 = &v100[a2];
  v76.i8[6] = *v101;
  v77.i8[6] = v101[1];
  v78.i8[6] = v101[2];
  v74.i8[6] = v101[3];
  v102 = &v101[a2];
  v76.i8[7] = *v102;
  v77.i8[7] = v102[1];
  v78.i8[7] = v102[2];
  v74.i8[7] = v102[3];
  LOBYTE(v104) = *v96;
  v105.i8[0] = v96[1];
  v106.i8[0] = v96[2];
  LOBYTE(v107) = v96[3];
  v103 = &v96[a2];
  BYTE1(v104) = *v103;
  v105.i8[1] = v103[1];
  v106.i8[1] = v103[2];
  BYTE1(v107) = v103[3];
  v108 = &v103[a2];
  BYTE2(v104) = *v108;
  v105.i8[2] = v108[1];
  v106.i8[2] = v108[2];
  BYTE2(v107) = v108[3];
  v109 = &v108[a2];
  BYTE3(v104) = *v109;
  v105.i8[3] = v109[1];
  v106.i8[3] = v109[2];
  BYTE3(v107) = v109[3];
  v110 = &v109[a2];
  BYTE4(v104) = *v110;
  v105.i8[4] = v110[1];
  v106.i8[4] = v110[2];
  BYTE4(v107) = v110[3];
  v111 = &v110[a2];
  BYTE5(v104) = *v111;
  v105.i8[5] = v111[1];
  v106.i8[5] = v111[2];
  BYTE5(v107) = v111[3];
  v112 = &v111[a2];
  BYTE6(v104) = *v112;
  v105.i8[6] = v112[1];
  v106.i8[6] = v112[2];
  BYTE6(v107) = v112[3];
  v113 = &v112[a2];
  HIBYTE(v104) = *v113;
  v105.i8[7] = v113[1];
  v106.i8[7] = v113[2];
  HIBYTE(v107) = v113[3];
  v76.i64[1] = v104;
  *v114.i8 = v78;
  v114.u64[1] = v106;
  v115.i64[0] = v77.i64[0];
  v115.u64[1] = v105;
  v74.i64[1] = v107;
  v116 = vabdq_u8(v115, v114);
  v117 = veor_s8(v105, 0x8080808080808080);
  v118 = vqsubq_s8(veorq_s8(v76, v30), veorq_s8(v74, v30));
  v119 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(veor_s8(v78, 0x8080808080808080), 0x303030303030303), veor_s8(*v77.i8, 0x8080808080808080), 0x303030303030303), *v118.i8)), vaddw_high_s8(vmlsl_s8(vmull_s8(veor_s8(v106, 0x8080808080808080), 0x303030303030303), v117, 0x303030303030303), v118)), vcgtq_u8(vqaddq_u8(vqaddq_u8(v116, v116), vshrq_n_u8(vabdq_u8(v76, v74), 1uLL)), v94));
  v120 = vqaddq_s8(v119, v33);
  result = vqsubq_s8(veorq_s8(v114, v30), vshrq_n_s8(vqaddq_s8(v119, v7), 3uLL));
  v122 = veorq_s8(vqaddq_s8(veorq_s8(v115, v30), vshrq_n_s8(v120, 3uLL)), v30);
  v123 = veorq_s8(result, v30);
  v124 = vextq_s8(v122, v122, 8uLL).u64[0];
  v30.i64[0] = vextq_s8(v123, v123, 8uLL).u64[0];
  a1[11] = v122.i8[0];
  a1[12] = v123.i8[0];
  v125 = &a1[a2 + 11];
  *v125 = v122.i8[1];
  v125[1] = v123.i8[1];
  v126 = &v125[a2];
  *v126 = v122.i8[2];
  v126[1] = v123.i8[2];
  v127 = &v126[a2];
  *v127 = v122.i8[3];
  v127[1] = v123.i8[3];
  v128 = &v127[a2];
  *v128 = v122.i8[4];
  v128[1] = v123.i8[4];
  v129 = &v128[a2];
  *v129 = v122.i8[5];
  v129[1] = v123.i8[5];
  v130 = &v129[a2];
  *v130 = v122.i8[6];
  v130[1] = v123.i8[6];
  v131 = &v130[a2];
  *v131 = v122.i8[7];
  v131[1] = v123.i8[7];
  v132 = &v131[a2];
  *v132 = v124;
  v132[1] = v30.i8[0];
  v133 = &v132[a2];
  *v133 = BYTE1(v124);
  v133[1] = v30.i8[1];
  v134 = &v133[a2];
  *v134 = BYTE2(v124);
  v134[1] = v30.i8[2];
  v135 = &v134[a2];
  *v135 = BYTE3(v124);
  v135[1] = v30.i8[3];
  v136 = &v135[a2];
  *v136 = BYTE4(v124);
  v136[1] = v30.i8[4];
  v137 = &v136[a2];
  *v137 = BYTE5(v124);
  v137[1] = v30.i8[5];
  v138 = &v137[a2];
  *v138 = BYTE6(v124);
  v138[1] = v30.i8[6];
  v139 = &v138[a2];
  *v139 = HIBYTE(v124);
  v139[1] = v30.i8[7];
  return result;
}

int8x16_t vp8_loop_filter_mbvs_neon(__int8 *a1, int a2, const char *a3)
{
  v3 = vld1q_dup_s8(a3);
  v4 = 8 * a2;
  v5 = &a1[a2 - 2];
  v7.i8[0] = *(a1 - 2);
  v8.i8[0] = *(a1 - 1);
  v9.i8[0] = *a1;
  v10.i8[0] = a1[1];
  v6 = &a1[v4 - 2];
  v7.i8[1] = *v5;
  v8.i8[1] = v5[1];
  v9.i8[1] = a1[a2];
  v10.i8[1] = v5[3];
  v11 = &v5[a2];
  v7.i8[2] = *v11;
  v8.i8[2] = v11[1];
  v9.i8[2] = v11[2];
  v10.i8[2] = v11[3];
  v12 = &v11[a2];
  v7.i8[3] = *v12;
  v8.i8[3] = v12[1];
  v9.i8[3] = v12[2];
  v10.i8[3] = v12[3];
  v13 = &v12[a2];
  v7.i8[4] = *v13;
  v8.i8[4] = v13[1];
  v9.i8[4] = v13[2];
  v10.i8[4] = v13[3];
  v14 = &v13[a2];
  v7.i8[5] = *v14;
  v8.i8[5] = v14[1];
  v9.i8[5] = v14[2];
  v10.i8[5] = v14[3];
  v15 = &v14[a2];
  v7.i8[6] = *v15;
  v8.i8[6] = v15[1];
  v9.i8[6] = v15[2];
  v10.i8[6] = v15[3];
  v16 = &v15[a2];
  v7.i8[7] = *v16;
  v8.i8[7] = v16[1];
  v9.i8[7] = v16[2];
  v10.i8[7] = v16[3];
  LOBYTE(v18) = *v6;
  v19.i8[0] = v6[1];
  v20.i8[0] = a1[v4];
  LOBYTE(v21) = v6[3];
  v17 = &v6[a2];
  BYTE1(v18) = *v17;
  v19.i8[1] = v17[1];
  v20.i8[1] = v17[2];
  BYTE1(v21) = v17[3];
  v22 = &v17[a2];
  BYTE2(v18) = *v22;
  v19.i8[2] = v22[1];
  v20.i8[2] = v22[2];
  BYTE2(v21) = v22[3];
  v23 = &v22[a2];
  BYTE3(v18) = *v23;
  v19.i8[3] = v23[1];
  v20.i8[3] = v23[2];
  BYTE3(v21) = v23[3];
  v24 = &v23[a2];
  BYTE4(v18) = *v24;
  v19.i8[4] = v24[1];
  v20.i8[4] = v24[2];
  BYTE4(v21) = v24[3];
  v25 = &v24[a2];
  BYTE5(v18) = *v25;
  v19.i8[5] = v25[1];
  v20.i8[5] = v25[2];
  BYTE5(v21) = v25[3];
  v26 = &v25[a2];
  BYTE6(v18) = *v26;
  v19.i8[6] = v26[1];
  v20.i8[6] = v26[2];
  BYTE6(v21) = v26[3];
  v27 = &v26[a2];
  HIBYTE(v18) = *v27;
  v19.i8[7] = v27[1];
  v20.i8[7] = v27[2];
  HIBYTE(v21) = v27[3];
  v7.i64[1] = v18;
  *v28.i8 = v9;
  v28.u64[1] = v20;
  *v29.i8 = v8;
  v29.u64[1] = v19;
  v10.i64[1] = v21;
  v30 = vabdq_u8(v29, v28);
  v31.i64[0] = 0x8080808080808080;
  v31.i64[1] = 0x8080808080808080;
  v32 = veor_s8(v19, 0x8080808080808080);
  v33 = vqsubq_s8(veorq_s8(v7, v31), veorq_s8(v10, v31));
  v34 = vbicq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(veor_s8(v9, 0x8080808080808080), 0x303030303030303), veor_s8(v8, 0x8080808080808080), 0x303030303030303), *v33.i8)), vaddw_high_s8(vmlsl_s8(vmull_s8(veor_s8(v20, 0x8080808080808080), 0x303030303030303), v32, 0x303030303030303), v33)), vcgtq_u8(vqaddq_u8(vqaddq_u8(v30, v30), vshrq_n_u8(vabdq_u8(v7, v10), 1uLL)), v3));
  v33.i64[0] = 0x303030303030303;
  v33.i64[1] = 0x303030303030303;
  v35 = vqaddq_s8(v34, v33);
  v36.i64[0] = 0x404040404040404;
  v36.i64[1] = 0x404040404040404;
  result = vqsubq_s8(veorq_s8(v28, v31), vshrq_n_s8(vqaddq_s8(v34, v36), 3uLL));
  v38 = veorq_s8(vqaddq_s8(veorq_s8(v29, v31), vshrq_n_s8(v35, 3uLL)), v31);
  v39 = veorq_s8(result, v31);
  v40 = vextq_s8(v38, v38, 8uLL).u64[0];
  v3.i64[0] = vextq_s8(v39, v39, 8uLL).u64[0];
  *(a1 - 1) = v38.i8[0];
  *a1 = v39.i8[0];
  v41 = &a1[a2 - 1];
  *v41 = v38.i8[1];
  v41[1] = v39.i8[1];
  v42 = &v41[a2];
  *v42 = v38.i8[2];
  v42[1] = v39.i8[2];
  v43 = &v42[a2];
  *v43 = v38.i8[3];
  v43[1] = v39.i8[3];
  v44 = &v43[a2];
  *v44 = v38.i8[4];
  v44[1] = v39.i8[4];
  v45 = &v44[a2];
  *v45 = v38.i8[5];
  v45[1] = v39.i8[5];
  v46 = &v45[a2];
  *v46 = v38.i8[6];
  v46[1] = v39.i8[6];
  v47 = &v46[a2];
  *v47 = v38.i8[7];
  v47[1] = v39.i8[7];
  v48 = &v47[a2];
  *v48 = v40;
  v48[1] = v3.i8[0];
  v49 = &v48[a2];
  *v49 = BYTE1(v40);
  v49[1] = v3.i8[1];
  v50 = &v49[a2];
  *v50 = BYTE2(v40);
  v50[1] = v3.i8[2];
  v51 = &v50[a2];
  *v51 = BYTE3(v40);
  v51[1] = v3.i8[3];
  v52 = &v51[a2];
  *v52 = BYTE4(v40);
  v52[1] = v3.i8[4];
  v53 = &v52[a2];
  *v53 = BYTE5(v40);
  v53[1] = v3.i8[5];
  v54 = &v53[a2];
  *v54 = BYTE6(v40);
  v54[1] = v3.i8[6];
  v55 = &v54[a2];
  *v55 = HIBYTE(v40);
  v55[1] = v3.i8[7];
  return result;
}

int8x16_t vp8_mbloop_filter_horizontal_edge_y_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = (a1 - 4 * a2);
  v6 = *v5;
  v7 = &v5->i8[a2];
  v8 = *v7;
  v9 = (v7 + a2);
  v10 = *v9;
  v11 = (v9 + a2);
  v12 = *v11;
  v13 = (v11 + a2);
  v14 = *v13;
  v15 = (v13 + a2);
  v16 = *v15;
  v17 = (v15 + a2);
  v18 = *v17;
  v19 = &v17->i8[a2];
  v20 = vmaxq_u8(vabdq_u8(v16, v14), vabdq_u8(v10, v12));
  v21 = vabdq_u8(v12, v14);
  v22 = vcgeq_u8(vdupq_n_s8(a4), vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v6, v8), vabdq_u8(v8, v10)), v20), vmaxq_u8(vabdq_u8(v18, v16), vabdq_u8(*v19, v18))));
  v23 = vabdq_u8(v10, v16);
  v24.i64[0] = 0x8080808080808080;
  v24.i64[1] = 0x8080808080808080;
  v25 = veorq_s8(v16, v24);
  v26 = veorq_s8(v14, v24);
  v27 = veorq_s8(v12, v24);
  v28 = veorq_s8(v10, v24);
  v29 = vcgeq_u8(vdupq_n_s8(a5), v20);
  v30 = vqsubq_s8(v28, v25);
  v20.i64[0] = 0x303030303030303;
  v20.i64[1] = 0x303030303030303;
  v31 = vandq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v26.i8, 0x303030303030303), *v27.i8, 0x303030303030303), *v30.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v26, v20), v27, v20), v30)), vandq_s8(vcgeq_u8(vdupq_n_s8(a3), vqaddq_u8(vqaddq_u8(v21, v21), vshrq_n_u8(v23, 1uLL))), v22));
  v32 = vbicq_s8(v31, v29);
  v22.i64[0] = 0x404040404040404;
  v22.i64[1] = 0x404040404040404;
  v33 = vqsubq_s8(v26, vshrq_n_s8(vqaddq_s8(v32, v22), 3uLL));
  v34 = vqaddq_s8(v27, vshrq_n_s8(vqaddq_s8(v32, v20), 3uLL));
  v35 = vandq_s8(v31, v29);
  v29.i64[0] = 0x909090909090909;
  v29.i64[1] = 0x909090909090909;
  v22.i64[0] = 0x3F003F003F003FLL;
  v22.i64[1] = 0x3F003F003F003FLL;
  v20.i64[0] = 0x3F003F003F003FLL;
  v20.i64[1] = 0x3F003F003F003FLL;
  v32.i64[0] = 0x3F003F003F003FLL;
  v32.i64[1] = 0x3F003F003F003FLL;
  v36 = vmlal_high_s8(v32, v35, v29);
  v29.i64[0] = 0x1212121212121212;
  v29.i64[1] = 0x1212121212121212;
  v23.i64[0] = 0x3F003F003F003FLL;
  v23.i64[1] = 0x3F003F003F003FLL;
  v37 = vmlal_s8(v23, *v35.i8, 0x1212121212121212);
  v21.i64[0] = 0x3F003F003F003FLL;
  v21.i64[1] = 0x3F003F003F003FLL;
  v38 = vmlal_high_s8(v21, v35, v29);
  v29.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v29.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v39.i64[0] = 0x3F003F003F003FLL;
  v39.i64[1] = 0x3F003F003F003FLL;
  v40 = vmlal_s8(v39, *v35.i8, 0x1B1B1B1B1B1B1B1BLL);
  v41 = vmlal_high_s8(v22, v35, v29);
  v42 = vqshrn_high_n_s16(vqshrn_n_s16(vmlal_s8(v20, *v35.i8, 0x909090909090909), 7uLL), v36, 7uLL);
  v43 = vqshrn_high_n_s16(vqshrn_n_s16(v37, 7uLL), v38, 7uLL);
  v44 = vqshrn_high_n_s16(vqshrn_n_s16(v40, 7uLL), v41, 7uLL);
  v45 = vqaddq_s8(veorq_s8(v8, v24), v42);
  v46 = vqaddq_s8(v28, v43);
  v47 = veorq_s8(vqsubq_s8(veorq_s8(v18, v24), v42), v24);
  v48 = veorq_s8(vqsubq_s8(v25, v43), v24);
  v49 = veorq_s8(vqsubq_s8(v33, v44), v24);
  v50 = veorq_s8(vqaddq_s8(v34, v44), v24);
  v51 = veorq_s8(v46, v24);
  result = veorq_s8(v45, v24);
  v53 = (v19 - 6 * a2);
  *v53 = result;
  v54 = (v53 + a2);
  *v54 = v51;
  v55 = (v54 + a2);
  *v55 = v50;
  v56 = (v55 + a2);
  *v56 = v49;
  v57 = (v56 + a2);
  *v57 = v48;
  *(v57 + a2) = v47;
  return result;
}

double vp8_mbloop_filter_horizontal_edge_uv_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v6 = 4 * a2;
  v7.i64[0] = *(a1 - v6);
  v8 = (a1 - v6 + a2);
  v9 = (a6 - v6 + a2);
  v10.i64[0] = *v8;
  v11 = (v8 + a2);
  v12 = *v9;
  v13 = (v9 + a2);
  v14.i64[0] = *v11;
  v15 = (v11 + a2);
  v16 = *v13;
  v17 = (v13 + a2);
  v18 = *v15;
  v19 = (v15 + a2);
  v20 = *v17;
  v21 = (v17 + a2);
  v22 = *v19;
  v23 = (v19 + a2);
  v24 = *v23;
  v25 = (v23 + a2);
  v26 = *v25;
  v27 = (v25 + a2);
  v7.i64[1] = *(a6 - v6);
  v10.i64[1] = v12;
  v14.i64[1] = v16;
  *v28.i8 = v18;
  v28.u64[1] = v20;
  v29 = veor_s8(*v22.i8, 0x8080808080808080);
  v30 = vmaxq_u8(vabdq_u8(v24, v22), vabdq_u8(v14, v28));
  v31 = vabdq_u8(v28, v22);
  v32 = vcgeq_u8(vdupq_n_s8(a4), vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v7, v10), vabdq_u8(v10, v14)), v30), vmaxq_u8(vabdq_u8(v26, v24), vabdq_u8(*v27, v26))));
  v33 = vabdq_u8(v14, v24);
  v34.i64[0] = 0x8080808080808080;
  v34.i64[1] = 0x8080808080808080;
  v35 = veorq_s8(v24, v34);
  v36 = veorq_s8(v22, v34);
  v37 = veorq_s8(v28, v34);
  v38 = veorq_s8(v14, v34);
  v39 = vcgeq_u8(vdupq_n_s8(a5), v30);
  v40 = vqsubq_s8(v38, v35);
  v41 = vandq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(v29, 0x303030303030303), veor_s8(v18, 0x8080808080808080), 0x303030303030303), *v40.i8)), vaddw_high_s8(vmlsl_s8(vmull_s8(veor_s8(*v21, 0x8080808080808080), 0x303030303030303), veor_s8(v20, 0x8080808080808080), 0x303030303030303), v40)), vandq_s8(vcgeq_u8(vdupq_n_s8(a3), vqaddq_u8(vqaddq_u8(v31, v31), vshrq_n_u8(v33, 1uLL))), v32));
  v42 = vbicq_s8(v41, v39);
  v43.i64[0] = 0x404040404040404;
  v43.i64[1] = 0x404040404040404;
  v44.i64[0] = 0x303030303030303;
  v44.i64[1] = 0x303030303030303;
  v45 = vqsubq_s8(v36, vshrq_n_s8(vqaddq_s8(v42, v43), 3uLL));
  v46 = vqaddq_s8(v37, vshrq_n_s8(vqaddq_s8(v42, v44), 3uLL));
  v47 = vandq_s8(v41, v39);
  v39.i64[0] = 0x909090909090909;
  v39.i64[1] = 0x909090909090909;
  v44.i64[0] = 0x3F003F003F003FLL;
  v44.i64[1] = 0x3F003F003F003FLL;
  v37.i64[0] = 0x3F003F003F003FLL;
  v37.i64[1] = 0x3F003F003F003FLL;
  v36.i64[0] = 0x3F003F003F003FLL;
  v36.i64[1] = 0x3F003F003F003FLL;
  v48 = vmlal_high_s8(v36, v47, v39);
  v39.i64[0] = 0x1212121212121212;
  v39.i64[1] = 0x1212121212121212;
  v32.i64[0] = 0x3F003F003F003FLL;
  v32.i64[1] = 0x3F003F003F003FLL;
  v49 = vmlal_s8(v32, *v47.i8, 0x1212121212121212);
  v40.i64[0] = 0x3F003F003F003FLL;
  v40.i64[1] = 0x3F003F003F003FLL;
  v50 = vmlal_high_s8(v40, v47, v39);
  v39.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v39.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v31.i64[0] = 0x3F003F003F003FLL;
  v31.i64[1] = 0x3F003F003F003FLL;
  v51 = vmlal_s8(v31, *v47.i8, 0x1B1B1B1B1B1B1B1BLL);
  v52 = vmlal_high_s8(v44, v47, v39);
  v53 = vqshrn_high_n_s16(vqshrn_n_s16(vmlal_s8(v37, *v47.i8, 0x909090909090909), 7uLL), v48, 7uLL);
  v54 = vqshrn_high_n_s16(vqshrn_n_s16(v49, 7uLL), v50, 7uLL);
  v55 = vqshrn_high_n_s16(vqshrn_n_s16(v51, 7uLL), v52, 7uLL);
  v56 = vqsubq_s8(veorq_s8(v26, v34), v53);
  v57 = veorq_s8(vqaddq_s8(veorq_s8(v10, v34), v53), v34);
  v58 = 6 * a2;
  v59 = (v27->i64 - v58);
  v60 = (v21 + a2 + a2 + a2 - v58);
  *v59 = v57.i64[0];
  *v60 = vextq_s8(v57, v57, 8uLL).u64[0];
  v61 = veorq_s8(v56, v34);
  v62 = veorq_s8(vqsubq_s8(v35, v54), v34);
  v63 = veorq_s8(vqaddq_s8(v46, v55), v34);
  v64 = veorq_s8(vqaddq_s8(v38, v54), v34);
  v65 = (v59 + a2);
  v66 = (v60 + a2);
  *v65 = v64.i64[0];
  v67 = (v65 + a2);
  *v66 = vextq_s8(v64, v64, 8uLL).u64[0];
  v68 = (v66 + a2);
  *v67 = v63.i64[0];
  *v68 = vextq_s8(v63, v63, 8uLL).u64[0];
  v69 = veorq_s8(vqsubq_s8(v45, v55), v34);
  v70 = (v67 + a2);
  v71 = (v68 + a2);
  *v70 = v69.i64[0];
  v72 = (v70 + a2);
  *v71 = vextq_s8(v69, v69, 8uLL).u64[0];
  v73 = (v71 + a2);
  *v72 = v62.i64[0];
  *v73 = vextq_s8(v62, v62, 8uLL).u64[0];
  *(v72 + a2) = v61.i64[0];
  *&result = vextq_s8(v61, v61, 8uLL).u64[0];
  *(v73 + a2) = result;
  return result;
}

double vp8_mbloop_filter_vertical_edge_y_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = *(a1 - 4);
  v5 = a1 - 4;
  v7.i64[0] = v6;
  v8 = (v5 + 8 * a2);
  v9 = (v5 + a2);
  v10 = *v8;
  v11 = (v8 + a2);
  v12.i64[0] = *v9;
  v13 = (v9 + a2);
  v14 = *v11;
  v15 = (v11 + a2);
  v16.i64[0] = *v13;
  v17 = (v13 + a2);
  v18 = *v15;
  v19 = (v15 + a2);
  v20.i64[0] = *v17;
  v21 = (v17 + a2);
  v22 = *v19;
  v23 = (v19 + a2);
  v24.i64[0] = *v21;
  v25 = (v21 + a2);
  v26 = *v23;
  v27 = (v23 + a2);
  v28.i64[0] = *v25;
  v29 = (v25 + a2);
  v30 = *v27;
  v31 = v27 + a2;
  v32 = *v29;
  v33 = (v29 + a2);
  v34 = &v31[a2];
  v7.i64[1] = v10;
  v12.i64[1] = v14;
  v16.i64[1] = v18;
  v20.i64[1] = v22;
  v24.i64[1] = v26;
  v28.i64[1] = v30;
  v35 = vtrn1q_s32(v7, v24);
  v36 = vtrn2q_s32(v7, v24);
  v37 = vtrn1q_s32(v12, v28);
  v38 = vtrn2q_s32(v12, v28);
  v39 = vtrn1q_s32(v16, v32);
  v40 = vtrn2q_s32(v16, v32);
  v41 = vtrn1q_s32(v20, *v33);
  v42 = vtrn2q_s32(v20, *v33);
  v43 = vtrn1q_s16(v35, v39);
  v44 = vtrn2q_s16(v35, v39);
  v45 = vtrn1q_s16(v37, v41);
  v46 = vtrn2q_s16(v37, v41);
  v47 = vtrn1q_s16(v36, v40);
  v48 = vtrn2q_s16(v36, v40);
  v49 = vtrn1q_s16(v38, v42);
  v50 = vtrn2q_s16(v38, v42);
  v51 = vtrn1q_s8(v43, v45);
  v52 = vtrn2q_s8(v43, v45);
  v53 = vtrn1q_s8(v44, v46);
  v54 = vtrn2q_s8(v44, v46);
  v55 = vtrn1q_s8(v47, v49);
  v56 = vtrn2q_s8(v47, v49);
  v57 = vtrn1q_s8(v48, v50);
  v58 = vtrn2q_s8(v48, v50);
  v59 = vmaxq_u8(vabdq_u8(v56, v55), vabdq_u8(v53, v54));
  v60 = vabdq_u8(v54, v55);
  v61 = vcgeq_u8(vdupq_n_s8(a4), vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v51, v52), vabdq_u8(v52, v53)), v59), vmaxq_u8(vabdq_u8(v57, v56), vabdq_u8(v58, v57))));
  v62 = vabdq_u8(v53, v56);
  v63.i64[0] = 0x8080808080808080;
  v63.i64[1] = 0x8080808080808080;
  v64 = veorq_s8(v56, v63);
  v65 = veorq_s8(v55, v63);
  v66 = veorq_s8(v54, v63);
  v67 = veorq_s8(v53, v63);
  v68 = veorq_s8(v52, v63);
  v69 = vcgeq_u8(vdupq_n_s8(a5), v59);
  v70 = vqsubq_s8(v67, v64);
  v53.i64[0] = 0x303030303030303;
  v53.i64[1] = 0x303030303030303;
  v71 = vandq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v65.i8, 0x303030303030303), *v66.i8, 0x303030303030303), *v70.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v65, v53), v66, v53), v70)), vandq_s8(vcgeq_u8(vdupq_n_s8(a3), vqaddq_u8(vqaddq_u8(v60, v60), vshrq_n_u8(v62, 1uLL))), v61));
  v72 = vbicq_s8(v71, v69);
  v61.i64[0] = 0x404040404040404;
  v61.i64[1] = 0x404040404040404;
  v73 = vqsubq_s8(v65, vshrq_n_s8(vqaddq_s8(v72, v61), 3uLL));
  v74 = vqaddq_s8(v66, vshrq_n_s8(vqaddq_s8(v72, v53), 3uLL));
  v75 = vandq_s8(v71, v69);
  v69.i64[0] = 0x909090909090909;
  v69.i64[1] = 0x909090909090909;
  v65.i64[0] = 0x3F003F003F003FLL;
  v65.i64[1] = 0x3F003F003F003FLL;
  v59.i64[0] = 0x3F003F003F003FLL;
  v59.i64[1] = 0x3F003F003F003FLL;
  v53.i64[0] = 0x3F003F003F003FLL;
  v53.i64[1] = 0x3F003F003F003FLL;
  v76 = vmlal_high_s8(v53, v75, v69);
  v69.i64[0] = 0x1212121212121212;
  v69.i64[1] = 0x1212121212121212;
  v62.i64[0] = 0x3F003F003F003FLL;
  v62.i64[1] = 0x3F003F003F003FLL;
  v77 = vmlal_s8(v62, *v75.i8, 0x1212121212121212);
  v60.i64[0] = 0x3F003F003F003FLL;
  v60.i64[1] = 0x3F003F003F003FLL;
  v78 = vmlal_high_s8(v60, v75, v69);
  v69.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v69.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v79.i64[0] = 0x3F003F003F003FLL;
  v79.i64[1] = 0x3F003F003F003FLL;
  v80 = vmlal_s8(v79, *v75.i8, 0x1B1B1B1B1B1B1B1BLL);
  v81 = vmlal_high_s8(v65, v75, v69);
  v82 = vqshrn_high_n_s16(vqshrn_n_s16(vmlal_s8(v59, *v75.i8, 0x909090909090909), 7uLL), v76, 7uLL);
  v83 = vqshrn_high_n_s16(vqshrn_n_s16(v77, 7uLL), v78, 7uLL);
  v84 = vqshrn_high_n_s16(vqshrn_n_s16(v80, 7uLL), v81, 7uLL);
  v85 = vqsubq_s8(veorq_s8(v57, v63), v82);
  v86 = vqaddq_s8(v68, v82);
  v87 = vqsubq_s8(v64, v83);
  v88 = vqaddq_s8(v67, v83);
  v89 = vqaddq_s8(v74, v84);
  v90 = veorq_s8(vqsubq_s8(v73, v84), v63);
  v91 = vtrn1q_s32(v51, v90);
  v92 = vtrn2q_s32(v51, v90);
  v93 = veorq_s8(v86, v63);
  v94 = veorq_s8(v87, v63);
  v95 = vtrn1q_s32(v93, v94);
  v96 = vtrn2q_s32(v93, v94);
  v97 = veorq_s8(v88, v63);
  v98 = veorq_s8(v85, v63);
  v99 = vtrn1q_s32(v97, v98);
  v100 = vtrn2q_s32(v97, v98);
  v101 = veorq_s8(v89, v63);
  v102 = vtrn1q_s32(v101, v58);
  v103 = vtrn2q_s32(v101, v58);
  v104 = vtrn1q_s16(v91, v99);
  v105 = vtrn2q_s16(v91, v99);
  v106 = vtrn1q_s16(v95, v102);
  v107 = vtrn2q_s16(v95, v102);
  v108 = vtrn1q_s16(v92, v100);
  v109 = vtrn2q_s16(v92, v100);
  v110 = vtrn1q_s16(v96, v103);
  v111 = vtrn2q_s16(v96, v103);
  v112 = vtrn1q_s8(v104, v106);
  v113 = 7 * a2;
  v114 = (v33->i64 - v113);
  v115 = &v34[-v113];
  *v114 = v112.i64[0];
  *v115 = vextq_s8(v112, v112, 8uLL).u64[0];
  v116 = vtrn2q_s8(v104, v106);
  v117 = (v114 + a2);
  v118 = &v115[a2];
  *v117 = v116.i64[0];
  *v118 = vextq_s8(v116, v116, 8uLL).u64[0];
  v119 = vtrn1q_s8(v105, v107);
  v120 = (v117 + a2);
  v121 = &v118[a2];
  *v120 = v119.i64[0];
  *v121 = vextq_s8(v119, v119, 8uLL).u64[0];
  v122 = vtrn2q_s8(v105, v107);
  v123 = vtrn1q_s8(v108, v110);
  v124 = vtrn2q_s8(v108, v110);
  v125 = vtrn1q_s8(v109, v111);
  v126 = (v120 + a2);
  v127 = &v121[a2];
  *v126 = v122.i64[0];
  v128 = (v126 + a2);
  *v127 = vextq_s8(v122, v122, 8uLL).u64[0];
  v129 = &v127[a2];
  *v128 = v123.i64[0];
  *v129 = vextq_s8(v123, v123, 8uLL).u64[0];
  v130 = vtrn2q_s8(v109, v111);
  v131 = (v128 + a2);
  v132 = &v129[a2];
  *v131 = v124.i64[0];
  v133 = (v131 + a2);
  *v132 = vextq_s8(v124, v124, 8uLL).u64[0];
  v134 = &v132[a2];
  *v133 = v125.i64[0];
  *v134 = vextq_s8(v125, v125, 8uLL).u64[0];
  *(v133 + a2) = v130.i64[0];
  *&result = vextq_s8(v130, v130, 8uLL).u64[0];
  *(v134 + a2) = result;
  return result;
}

double vp8_mbloop_filter_vertical_edge_uv_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v6 = vdupq_n_s8(a4);
  v8 = *(a1 - 4);
  v7 = (a1 - 4);
  v9.i64[0] = v8;
  v10 = a2;
  v12 = *(a6 - 4);
  v11 = (a6 - 4);
  v13 = (v7 + a2);
  v14 = (v11 + a2);
  v15.i64[0] = *v13;
  v16 = (v13 + a2);
  v17 = (v14 + a2);
  v18.i64[0] = *v16;
  v19 = (v16 + a2);
  v20 = (v17 + a2);
  v21.i64[0] = *v19;
  v22 = (v19 + a2);
  v23.i64[0] = *v22;
  v24 = (v20 + v10 + v10);
  v25.i64[0] = *(v22 + v10);
  v26 = (v22 + v10 + v10);
  v27 = (v24 + v10);
  v28.i64[0] = *v26;
  v29.i64[0] = *(v26 + v10);
  v9.i64[1] = v12;
  v15.i64[1] = *v14;
  v18.i64[1] = *v17;
  v21.i64[1] = *v20;
  v23.i64[1] = *(v20 + v10);
  v25.i64[1] = *v24;
  v28.i64[1] = *(v24 + v10);
  v29.i64[1] = *(v24 + v10 + v10);
  v30 = vtrn1q_s32(v9, v23);
  v31 = vtrn2q_s32(v9, v23);
  v32 = vtrn1q_s32(v15, v25);
  v33 = vtrn2q_s32(v15, v25);
  v34 = vtrn1q_s32(v18, v28);
  v35 = vtrn2q_s32(v18, v28);
  v36 = vtrn1q_s32(v21, v29);
  v37 = vtrn2q_s32(v21, v29);
  v38 = vtrn1q_s16(v30, v34);
  v39 = vtrn2q_s16(v30, v34);
  v40 = vtrn1q_s16(v32, v36);
  v41 = vtrn2q_s16(v32, v36);
  v42 = vtrn1q_s16(v31, v35);
  v43 = vtrn2q_s16(v31, v35);
  v44 = vtrn1q_s16(v33, v37);
  v45 = vtrn2q_s16(v33, v37);
  v46 = vtrn1q_s8(v38, v40);
  v47 = vtrn2q_s8(v38, v40);
  v48 = vtrn1q_s8(v39, v41);
  v49 = vtrn2q_s8(v39, v41);
  v50 = vtrn1q_s8(v42, v44);
  v51 = vtrn2q_s8(v42, v44);
  v52 = vtrn1q_s8(v43, v45);
  v53 = vtrn2q_s8(v43, v45);
  v54 = vmaxq_u8(vabdq_u8(v51, v50), vabdq_u8(v48, v49));
  v55 = vabdq_u8(v49, v50);
  v56 = vcgeq_u8(v6, vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v46, v47), vabdq_u8(v47, v48)), v54), vmaxq_u8(vabdq_u8(v52, v51), vabdq_u8(v53, v52))));
  v57 = vabdq_u8(v48, v51);
  v6.i64[0] = 0x8080808080808080;
  v6.i64[1] = 0x8080808080808080;
  v58 = veorq_s8(v51, v6);
  v59 = veorq_s8(v50, v6);
  v60 = veorq_s8(v49, v6);
  v61 = veorq_s8(v48, v6);
  v62 = veorq_s8(v47, v6);
  v63 = vcgeq_u8(vdupq_n_s8(a5), v54);
  v64 = vqsubq_s8(v61, v58);
  v48.i64[0] = 0x303030303030303;
  v48.i64[1] = 0x303030303030303;
  v65 = vandq_s8(vqmovn_high_s16(vqmovn_s16(vaddw_s8(vmlsl_s8(vmull_s8(*v59.i8, 0x303030303030303), *v60.i8, 0x303030303030303), *v64.i8)), vaddw_high_s8(vmlsl_high_s8(vmull_high_s8(v59, v48), v60, v48), v64)), vandq_s8(vcgeq_u8(vdupq_n_s8(a3), vqaddq_u8(vqaddq_u8(v55, v55), vshrq_n_u8(v57, 1uLL))), v56));
  v66 = vbicq_s8(v65, v63);
  v56.i64[0] = 0x404040404040404;
  v56.i64[1] = 0x404040404040404;
  v67 = vqsubq_s8(v59, vshrq_n_s8(vqaddq_s8(v66, v56), 3uLL));
  v68 = vqaddq_s8(v60, vshrq_n_s8(vqaddq_s8(v66, v48), 3uLL));
  v69 = vandq_s8(v65, v63);
  v63.i64[0] = 0x909090909090909;
  v63.i64[1] = 0x909090909090909;
  v59.i64[0] = 0x3F003F003F003FLL;
  v59.i64[1] = 0x3F003F003F003FLL;
  v54.i64[0] = 0x3F003F003F003FLL;
  v54.i64[1] = 0x3F003F003F003FLL;
  v48.i64[0] = 0x3F003F003F003FLL;
  v48.i64[1] = 0x3F003F003F003FLL;
  v70 = vmlal_high_s8(v48, v69, v63);
  v63.i64[0] = 0x1212121212121212;
  v63.i64[1] = 0x1212121212121212;
  v57.i64[0] = 0x3F003F003F003FLL;
  v57.i64[1] = 0x3F003F003F003FLL;
  v71 = vmlal_s8(v57, *v69.i8, 0x1212121212121212);
  v55.i64[0] = 0x3F003F003F003FLL;
  v55.i64[1] = 0x3F003F003F003FLL;
  v72 = vmlal_high_s8(v55, v69, v63);
  v63.i64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v63.i64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v29.i64[0] = 0x3F003F003F003FLL;
  v29.i64[1] = 0x3F003F003F003FLL;
  v73 = vmlal_s8(v29, *v69.i8, 0x1B1B1B1B1B1B1B1BLL);
  v74 = vmlal_high_s8(v59, v69, v63);
  v75 = vqshrn_high_n_s16(vqshrn_n_s16(vmlal_s8(v54, *v69.i8, 0x909090909090909), 7uLL), v70, 7uLL);
  v76 = vqshrn_high_n_s16(vqshrn_n_s16(v71, 7uLL), v72, 7uLL);
  v77 = vqshrn_high_n_s16(vqshrn_n_s16(v73, 7uLL), v74, 7uLL);
  v78 = vqsubq_s8(veorq_s8(v52, v6), v75);
  v79 = vqaddq_s8(v62, v75);
  v80 = vqsubq_s8(v58, v76);
  v81 = vqaddq_s8(v61, v76);
  v82 = vqaddq_s8(v68, v77);
  v83 = veorq_s8(vqsubq_s8(v67, v77), v6);
  v84 = vtrn1q_s32(v46, v83);
  v85 = vtrn2q_s32(v46, v83);
  v86 = veorq_s8(v79, v6);
  v87 = veorq_s8(v80, v6);
  v88 = vtrn1q_s32(v86, v87);
  v89 = vtrn2q_s32(v86, v87);
  v90 = veorq_s8(v81, v6);
  v91 = veorq_s8(v78, v6);
  v92 = vtrn1q_s32(v90, v91);
  v93 = vtrn2q_s32(v90, v91);
  v94 = veorq_s8(v82, v6);
  v95 = vtrn1q_s32(v94, v53);
  v96 = vtrn1q_s16(v84, v92);
  v97 = vtrn1q_s16(v88, v95);
  v98 = vtrn1q_s8(v96, v97);
  v99 = vtrn2q_s8(v96, v97);
  *v7 = v98.i64[0];
  *v13 = v99.i64[0];
  v100 = vtrn2q_s32(v94, v53);
  v101 = vtrn2q_s16(v84, v92);
  v102 = vtrn2q_s16(v88, v95);
  v103 = vtrn1q_s16(v85, v93);
  v104 = vtrn2q_s16(v85, v93);
  v105 = vtrn1q_s16(v89, v100);
  v106 = vtrn1q_s8(v101, v102);
  v107 = vtrn2q_s8(v101, v102);
  v108 = vtrn1q_s8(v103, v105);
  v109 = vtrn2q_s8(v103, v105);
  *v16 = v106.i64[0];
  *v19 = v107.i64[0];
  *v22 = v108.i64[0];
  *(v22 + v10) = v109.i64[0];
  v110 = vtrn2q_s16(v89, v100);
  v111 = vtrn1q_s8(v104, v110);
  *v26 = v111.i64[0];
  v112 = vtrn2q_s8(v104, v110);
  *(v26 + v10) = v112.i64[0];
  *v11 = vextq_s8(v98, v98, 8uLL).u64[0];
  *v14 = vextq_s8(v99, v99, 8uLL).u64[0];
  *v17 = vextq_s8(v106, v106, 8uLL).u64[0];
  *v20 = vextq_s8(v107, v107, 8uLL).u64[0];
  *(v20 + v10) = vextq_s8(v108, v108, 8uLL).u64[0];
  *v24 = vextq_s8(v109, v109, 8uLL).u64[0];
  *v27 = vextq_s8(v111, v111, 8uLL).u64[0];
  *&result = vextq_s8(v112, v112, 8uLL).u64[0];
  *(v27 + v10) = result;
  return result;
}

void *vp8_setup_block_dptrs(void *result)
{
  result[270] = result;
  result[277] = result + 4;
  result[284] = result + 1;
  result[291] = result + 12;
  result[298] = result + 8;
  result[305] = result + 68;
  result[312] = result + 9;
  result[319] = result + 76;
  result[326] = result + 16;
  result[333] = result + 132;
  result[340] = result + 17;
  result[347] = result + 140;
  result[354] = result + 24;
  result[361] = result + 196;
  result[368] = result + 25;
  result[375] = result + 204;
  result[382] = result + 32;
  result[389] = result + 260;
  result[396] = result + 36;
  result[403] = result + 292;
  result[410] = result + 40;
  result[417] = result + 324;
  result[424] = result + 44;
  result[431] = result + 356;
  result[268] = result + 48;
  result[269] = result + 148;
  result[273] = result + 248;
  result[275] = result + 52;
  result[276] = result + 152;
  result[280] = result + 1985;
  result[282] = result + 56;
  result[283] = result + 156;
  result[287] = result + 1986;
  result[289] = result + 60;
  result[290] = result + 160;
  result[294] = result + 1987;
  result[296] = result + 64;
  result[297] = result + 164;
  result[301] = result + 1988;
  result[303] = result + 68;
  result[304] = result + 168;
  result[308] = result + 1989;
  result[310] = result + 72;
  result[311] = result + 172;
  result[315] = result + 1990;
  result[317] = result + 76;
  result[318] = result + 176;
  result[322] = result + 1991;
  result[324] = result + 80;
  result[325] = result + 180;
  result[329] = result + 249;
  result[331] = result + 84;
  result[332] = result + 184;
  result[336] = result + 1993;
  result[338] = result + 88;
  result[339] = result + 188;
  result[343] = result + 1994;
  result[345] = result + 92;
  result[346] = result + 192;
  result[350] = result + 1995;
  result[352] = result + 96;
  result[353] = result + 196;
  result[357] = result + 1996;
  result[359] = result + 100;
  result[360] = result + 200;
  result[364] = result + 1997;
  result[366] = result + 104;
  result[367] = result + 204;
  result[371] = result + 1998;
  result[373] = result + 108;
  result[374] = result + 208;
  result[378] = result + 1999;
  result[380] = result + 112;
  result[381] = result + 212;
  result[385] = result + 250;
  result[387] = result + 116;
  result[388] = result + 216;
  result[392] = result + 2001;
  result[394] = result + 120;
  result[395] = result + 220;
  result[399] = result + 2002;
  result[401] = result + 124;
  result[402] = result + 224;
  result[406] = result + 2003;
  result[408] = result + 128;
  result[409] = result + 228;
  result[413] = result + 2004;
  result[415] = result + 132;
  result[416] = result + 232;
  result[420] = result + 2005;
  result[422] = result + 136;
  result[423] = result + 236;
  result[427] = result + 2006;
  result[429] = result + 140;
  result[430] = result + 240;
  result[434] = result + 2007;
  result[436] = result + 144;
  result[437] = result + 244;
  result[441] = result + 251;
  return result;
}

_DWORD *vp8_build_block_doffsets(_DWORD *result)
{
  v1 = result[932];
  result[544] = 0;
  result[558] = 4;
  result[572] = 8;
  result[586] = 12;
  result[600] = 4 * v1;
  result[614] = 4 * v1 + 4;
  result[628] = 4 * v1 + 8;
  result[642] = 4 * v1 + 12;
  result[656] = 8 * v1;
  result[670] = (8 * v1) | 4;
  result[684] = 8 * v1 + 8;
  result[698] = 8 * v1 + 12;
  v1 *= 12;
  result[712] = v1;
  result[726] = v1 + 4;
  result[740] = v1 + 8;
  result[754] = v1 + 12;
  v2 = result[937];
  result[768] = 0;
  result[824] = 0;
  result[782] = 4;
  result[838] = 4;
  v2 *= 4;
  result[796] = v2;
  result[852] = v2;
  v2 += 4;
  result[810] = v2;
  result[866] = v2;
  return result;
}

double vp8_init3smotion_compensation(uint64_t a1, int a2)
{
  v2 = *(a1 + 8616);
  *v2 = 0;
  *(v2 + 8) = 65408;
  *(v2 + 12) = -128 * a2;
  *(v2 + 16) = 128;
  *(v2 + 20) = a2 << 7;
  *(v2 + 24) = -8388608;
  *(v2 + 28) = 0x800000FFFFFF80;
  *(v2 + 36) = 0xFF80FF8000000080;
  *(v2 + 44) = (a2 << 7) ^ 0xFFFFFF80;
  *(v2 + 48) = 8454016;
  *(v2 + 52) = 128 - (a2 << 7);
  *(v2 + 56) = -8388480;
  *(v2 + 60) = (a2 << 7) - 128;
  *(v2 + 64) = 8388736;
  *(v2 + 68) = (a2 << 7) + 128;
  *(v2 + 72) = 65472;
  *(v2 + 76) = -64 * a2;
  *(v2 + 82) = 0;
  *(v2 + 80) = 64;
  *(v2 + 84) = a2 << 6;
  *(v2 + 88) = 0xFFFFFFC0FFC00000;
  *(v2 + 96) = 0x4000400000;
  *(v2 + 104) = -4128832;
  *(v2 + 108) = (a2 << 6) ^ 0xFFFFFFC0;
  *(v2 + 112) = 4259776;
  *(v2 + 116) = 64 - (a2 << 6);
  *(v2 + 120) = -4194240;
  *(v2 + 124) = (a2 << 6) - 64;
  *(v2 + 128) = 4194368;
  *(v2 + 132) = (a2 << 6) + 64;
  *(v2 + 136) = 65504;
  *(v2 + 140) = -32 * a2;
  *(v2 + 144) = 32;
  *(v2 + 148) = 32 * a2;
  *(v2 + 154) = -32;
  *(v2 + 152) = 0;
  *(v2 + 156) = 0x200000FFFFFFE0;
  *(v2 + 164) = 0xFFE0FFE000000020;
  *(v2 + 172) = (32 * a2) ^ 0xFFFFFFE0;
  *(v2 + 176) = 2162656;
  *(v2 + 180) = 32 - 32 * a2;
  *(v2 + 184) = -2097120;
  *(v2 + 188) = 32 * a2 - 32;
  *(v2 + 192) = 2097184;
  *(v2 + 196) = 32 * a2 + 32;
  *(v2 + 200) = 65520;
  *(v2 + 204) = -16 * a2;
  *(v2 + 208) = 16;
  *(v2 + 212) = 16 * a2;
  *(v2 + 216) = 0xFFFFFFF0FFF00000;
  *(v2 + 224) = 0x1000100000;
  *(v2 + 234) = -16;
  *(v2 + 232) = -16;
  *(v2 + 236) = (16 * a2) ^ 0xFFFFFFF0;
  *(v2 + 242) = 16;
  *(v2 + 240) = -16;
  *(v2 + 244) = 16 - 16 * a2;
  *(v2 + 250) = -16;
  *(v2 + 248) = 16;
  *(v2 + 252) = 16 * a2 - 16;
  *(v2 + 258) = 16;
  *(v2 + 256) = 16;
  *(v2 + 260) = 16 * a2 + 16;
  *(v2 + 266) = 0;
  *(v2 + 264) = -8;
  *(v2 + 268) = -8 * a2;
  *(v2 + 274) = 0;
  *(v2 + 272) = 8;
  *(v2 + 276) = 8 * a2;
  *(v2 + 282) = -8;
  *(v2 + 280) = 0;
  *(v2 + 284) = -8;
  *(v2 + 290) = 8;
  *(v2 + 288) = 0;
  *(v2 + 292) = 8;
  *(v2 + 298) = -8;
  *(v2 + 296) = -8;
  *(v2 + 300) = (8 * a2) ^ 0xFFFFFFF8;
  *(v2 + 306) = 8;
  *(v2 + 304) = -8;
  *(v2 + 308) = 8 - 8 * a2;
  *(v2 + 314) = -8;
  *(v2 + 312) = 8;
  *(v2 + 316) = 8 * a2 - 8;
  *(v2 + 322) = 8;
  *(v2 + 320) = 8;
  *(v2 + 324) = 8 * a2 + 8;
  *(v2 + 330) = 0;
  *(v2 + 328) = -4;
  *(v2 + 332) = -4 * a2;
  *(v2 + 338) = 0;
  *(v2 + 336) = 4;
  *(v2 + 340) = 4 * a2;
  *(v2 + 346) = -4;
  *(v2 + 344) = 0;
  *(v2 + 348) = -4;
  *(v2 + 354) = 4;
  *(v2 + 352) = 0;
  *(v2 + 356) = 4;
  *(v2 + 362) = -4;
  *(v2 + 360) = -4;
  *(v2 + 364) = (4 * a2) ^ 0xFFFFFFFC;
  *(v2 + 370) = 4;
  *(v2 + 368) = -4;
  *(v2 + 372) = 4 - 4 * a2;
  *(v2 + 378) = -4;
  *(v2 + 376) = 4;
  *(v2 + 380) = 4 * a2 - 4;
  *(v2 + 386) = 4;
  *(v2 + 384) = 4;
  *(v2 + 388) = 4 * a2 + 4;
  *(v2 + 394) = 0;
  *(v2 + 392) = -2;
  *(v2 + 396) = -2 * a2;
  *(v2 + 402) = 0;
  *(v2 + 400) = 2;
  *(v2 + 404) = 2 * a2;
  *(v2 + 410) = -2;
  *(v2 + 408) = 0;
  *(v2 + 412) = -2;
  *(v2 + 418) = 2;
  *(v2 + 416) = 0;
  *(v2 + 420) = 2;
  *(v2 + 426) = -2;
  *(v2 + 424) = -2;
  *(v2 + 428) = (2 * a2) ^ 0xFFFFFFFE;
  *(v2 + 434) = 2;
  *(v2 + 432) = -2;
  *(v2 + 436) = 2 - 2 * a2;
  *(v2 + 442) = -2;
  *(v2 + 440) = 2;
  *(v2 + 444) = 2 * a2 - 2;
  *(v2 + 450) = 2;
  *(v2 + 448) = 2;
  *(v2 + 452) = 2 * a2 + 2;
  *(v2 + 458) = 0;
  *(v2 + 456) = -1;
  *(v2 + 460) = -a2;
  *(v2 + 466) = 0;
  *(v2 + 464) = 1;
  *(v2 + 468) = a2;
  *(v2 + 474) = -1;
  *(v2 + 472) = 0;
  *(v2 + 476) = -1;
  *(v2 + 482) = 1;
  *(v2 + 480) = 0;
  *(v2 + 484) = 1;
  *(v2 + 490) = -1;
  *(v2 + 488) = -1;
  *(v2 + 492) = ~a2;
  *(v2 + 498) = 1;
  *(v2 + 496) = -1;
  *(v2 + 500) = 1 - a2;
  *(v2 + 506) = -1;
  *(v2 + 504) = 1;
  *(v2 + 508) = a2 - 1;
  *(v2 + 514) = 1;
  *(v2 + 512) = 1;
  *(v2 + 516) = a2 + 1;
  *&result = 0x800000041;
  *(a1 + 8624) = 0x800000041;
  return result;
}

uint64_t vp8_find_best_sub_pixel_step_iteratively(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5, int a6, uint64_t a7, void *a8, unsigned int *a9, _DWORD *a10)
{
  v14 = *a5 >> 1;
  v15 = a5[1] >> 1;
  v16 = *a4;
  v17 = (4 * v16);
  v18 = a4[1];
  v19 = 4 * *(a1 + 8752);
  if (v19 <= v15 - 1023)
  {
    v19 = v15 - 1023;
  }

  v109 = v19;
  v20 = 4 * *(a1 + 8756);
  v99 = a5[1] >> 1;
  if (v20 >= v15 + 1023)
  {
    v20 = v15 + 1023;
  }

  v108 = v20;
  v21 = 4 * *(a1 + 8760);
  if (v21 <= v14 - 1023)
  {
    v21 = v14 - 1023;
  }

  v110 = v21;
  v22 = 4 * *(a1 + 8764);
  v100 = *a5 >> 1;
  if (v22 >= v14 + 1023)
  {
    v22 = v14 + 1023;
  }

  v106 = v22;
  v23 = *(a1 + 7792);
  v24 = v23 * v16;
  v25 = *(a1 + 7832) + *(a3 + 32) + v23 * v16 + v18;
  v26 = 8 * v16;
  if (v26 >= 0x7FFF)
  {
    v26 = 0x7FFF;
  }

  if (v26 <= -32768)
  {
    LOWORD(v26) = 0x8000;
  }

  *a4 = v26;
  v27 = 8 * v18;
  if (8 * v18 >= 0x7FFF)
  {
    v27 = 0x7FFF;
  }

  if (v27 <= -32768)
  {
    LOWORD(v27) = 0x8000;
  }

  a4[1] = v27;
  v103 = v25;
  v104 = v23;
  v28 = (*(a7 + 8))();
  *a9 = v28;
  v101 = a8;
  v90 = a4;
  v91 = a5;
  if (a8)
  {
    v29 = (*a4 - *a5) >> 1;
    if (v29 >= 2047)
    {
      v29 = 2047;
    }

    v30 = v29 & ~(v29 >> 31);
    if ((a4[1] - a5[1]) >> 1 >= 2047)
    {
      v31 = 2047;
    }

    else
    {
      v31 = (a4[1] - a5[1]) >> 1;
    }

    v32 = ((*(a8[1] + 4 * (v31 & ~(v31 >> 31))) + *(*a8 + 4 * v30)) * a6 + 128) >> 8;
  }

  else
  {
    v32 = 0;
  }

  v102 = v24 + v18;
  v107 = v32 + v28;
  v33 = -4;
  v98 = a6;
  v34 = (4 * v18);
  do
  {
    v35 = v17;
    v36 = v34;
    v37 = __CFADD__(v33++, 1);
    if (v37)
    {
      break;
    }

    v38 = (v34 - 2);
    v39 = v38 >= v109 && v38 <= v108;
    v40 = !v39;
    v41 = -1;
    v96 = v40;
    if (v39 && v17 >= v110 && v17 <= v106)
    {
      v42 = (*(a7 + 16))(v103 + (v17 >> 2) * v104 - v102 + (v38 >> 2));
      if (v101)
      {
        v41 = (((*(v101[1] + 4 * (v38 - v99)) + *(*v101 + 4 * (v17 - v100))) * a6 + 128) >> 8) + v42;
        if (v41 < v107)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v41 = v42;
        if (v42 < v107)
        {
LABEL_39:
          *a9 = v42;
          *a10 = 0;
          v107 = v41;
          v34 = (v36 - 2);
          goto LABEL_42;
        }
      }
    }

    v34 = v36;
LABEL_42:
    v43 = v36 + 2;
    v44 = v36 + 2 >= v109 && v43 <= v108;
    v45 = !v44;
    v94 = v45;
    v46 = -1;
    if (!v44 || v17 < v110 || v17 > v106)
    {
      goto LABEL_55;
    }

    v47 = v34;
    v48 = (*(a7 + 16))(v103 + (v35 >> 2) * v104 - v102 + (v43 >> 2));
    if (v101)
    {
      v46 = (((*(v101[1] + 4 * (v43 - v99)) + *(*v101 + 4 * (v35 - v100))) * a6 + 128) >> 8) + v48;
      if (v46 < v107)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v46 = v48;
      if (v48 < v107)
      {
LABEL_54:
        *a9 = v48;
        *a10 = 0;
        v107 = v46;
        v34 = (v36 + 2);
LABEL_55:
        v49 = -1;
        if (v36 < v109)
        {
          goto LABEL_67;
        }

        goto LABEL_56;
      }
    }

    v34 = v47;
    v49 = -1;
    if (v36 < v109)
    {
LABEL_67:
      v54 = -1;
      v17 = v35;
      goto LABEL_75;
    }

LABEL_56:
    if (v36 > v108)
    {
      goto LABEL_67;
    }

    v17 = (v35 - 2);
    if (v17 < v110 || v17 > v106)
    {
      v17 = v35;
      v53 = (v35 + 2);
      v54 = -1;
      if (v53 < v110)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v50 = a6;
      v51 = v34;
      v52 = (*(a7 + 16))(v103 + (v17 >> 2) * v104 - v102 + (v36 >> 2));
      if (v101)
      {
        v49 = (((*(v101[1] + 4 * (v36 - v99)) + *(*v101 + 4 * (v17 - v100))) * v50 + 128) >> 8) + v52;
        if (v49 >= v107)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v49 = v52;
        if (v52 >= v107)
        {
LABEL_69:
          v34 = v51;
          v17 = v35;
          v53 = (v35 + 2);
          v54 = -1;
          if (v53 < v110)
          {
            goto LABEL_74;
          }

          goto LABEL_70;
        }
      }

      *a9 = v52;
      *a10 = 0;
      v107 = v49;
      v34 = v36;
      v53 = (v35 + 2);
      v54 = -1;
      if (v53 < v110)
      {
        goto LABEL_74;
      }
    }

LABEL_70:
    if (v53 <= v106)
    {
      v92 = v34;
      v55 = (*(a7 + 16))(v103 + (v53 >> 2) * v104 - v102 + (v36 >> 2));
      if (!v101)
      {
        v54 = v55;
        v34 = v92;
        if (v55 >= v107)
        {
          goto LABEL_74;
        }

LABEL_73:
        *a9 = v55;
        *a10 = 0;
        v107 = v54;
        v34 = v36;
        v17 = v53;
        goto LABEL_74;
      }

      v54 = (((*(v101[1] + 4 * (v36 - v99)) + *(*v101 + 4 * (v53 - v100))) * v98 + 128) >> 8) + v55;
      v34 = v92;
      if (v54 < v107)
      {
        goto LABEL_73;
      }
    }

LABEL_74:
    a6 = v98;
LABEL_75:
    v56 = (v41 >= v46) | (2 * (v49 >= v54));
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        if (v96)
        {
          continue;
        }

        v57 = (v35 + 2);
        if (v57 < v110)
        {
          continue;
        }

LABEL_83:
        if (v57 > v106)
        {
          continue;
        }

        v58 = v34;
        v59 = (*(a7 + 16))(v103 + (v57 >> 2) * v104 - v102 + (v38 >> 2));
        if (!v101)
        {
          v34 = v58;
          v60 = v59;
          if (v59 >= v107)
          {
            continue;
          }

LABEL_99:
          v107 = v60;
          goto LABEL_102;
        }

        v34 = v58;
        v60 = (((*(v101[1] + 4 * (v38 - v99)) + *(*v101 + 4 * (v57 - v100))) * a6 + 128) >> 8) + v59;
        if (v60 < v107)
        {
          goto LABEL_99;
        }

        continue;
      }

      if (v94)
      {
        continue;
      }

      v57 = (v35 + 2);
      if (v57 < v110)
      {
        continue;
      }
    }

    else
    {
      if (!v56)
      {
        if (v96)
        {
          continue;
        }

        v57 = (v35 - 2);
        if (v57 < v110)
        {
          continue;
        }

        goto LABEL_83;
      }

      if (v94)
      {
        continue;
      }

      v57 = (v35 - 2);
      if (v57 < v110)
      {
        continue;
      }
    }

    if (v57 > v106)
    {
      continue;
    }

    v61 = v34;
    v59 = (*(a7 + 16))(v103 + (v57 >> 2) * v104 - v102 + (v43 >> 2));
    if (!v101)
    {
      v34 = v61;
      v62 = v59;
      if (v59 >= v107)
      {
        continue;
      }

LABEL_101:
      v107 = v62;
      v38 = (v36 + 2);
LABEL_102:
      v17 = v57;
      *a9 = v59;
      *a10 = 0;
      v34 = v38;
      continue;
    }

    v34 = v61;
    v62 = (((*(v101[1] + 4 * (v43 - v99)) + *(*v101 + 4 * (v57 - v100))) * a6 + 128) >> 8) + v59;
    if (v62 < v107)
    {
      goto LABEL_101;
    }
  }

  while (v35 != v17 || v36 != v34);
  v63 = -4;
  v64 = v101;
  do
  {
    v65 = v35;
    v66 = v36;
    v37 = __CFADD__(v63++, 1);
    if (v37)
    {
      break;
    }

    v36 = (v36 - 1);
    v67 = v66 > v109 && v36 <= v108;
    v68 = !v67;
    v69 = -1;
    v93 = v36;
    v97 = v68;
    if (v67 && v35 >= v110 && v35 <= v106)
    {
      v70 = (*(a7 + 16))(v103 + (v35 >> 2) * v104 - v102 + (v36 >> 2));
      if (v64)
      {
        v69 = (((*(v64[1] + 4 * (v36 - v99)) + *(*v64 + 4 * (v35 - v100))) * v98 + 128) >> 8) + v70;
        if (v69 < v107)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v69 = v70;
        if (v70 < v107)
        {
LABEL_119:
          *a9 = v70;
          *a10 = 0;
          v107 = v69;
          goto LABEL_122;
        }
      }
    }

    v36 = v66;
LABEL_122:
    v71 = (v66 + 1);
    v72 = v71 >= v109 && v66 < v108;
    v73 = !v72;
    v95 = v73;
    v74 = -1;
    if (v72 && v35 >= v110 && v35 <= v106)
    {
      v75 = (*(a7 + 16))(v103 + (v35 >> 2) * v104 - v102 + (v71 >> 2));
      if (!v64)
      {
        v74 = v75;
        if (v75 >= v107)
        {
          goto LABEL_135;
        }

LABEL_134:
        *a9 = v75;
        *a10 = 0;
        v107 = v74;
        v36 = (v66 + 1);
        goto LABEL_135;
      }

      v74 = (((*(v64[1] + 4 * (v71 - v99)) + *(*v64 + 4 * (v35 - v100))) * v98 + 128) >> 8) + v75;
      if (v74 < v107)
      {
        goto LABEL_134;
      }
    }

LABEL_135:
    v76 = -1;
    if (v66 < v109 || v66 > v108)
    {
      v79 = -1;
      goto LABEL_153;
    }

    if (v35 <= v110 || (v35 = (v35 - 1), v35 > v106))
    {
LABEL_147:
      v35 = v65;
      v78 = (v65 + 1);
      v79 = -1;
      if (v78 < v110)
      {
        goto LABEL_152;
      }

      goto LABEL_148;
    }

    v77 = (*(a7 + 16))(v103 + (v35 >> 2) * v104 - v102 + (v66 >> 2));
    if (v64)
    {
      v76 = (((*(v64[1] + 4 * (v66 - v99)) + *(*v64 + 4 * (v35 - v100))) * v98 + 128) >> 8) + v77;
      if (v76 >= v107)
      {
        goto LABEL_147;
      }
    }

    else
    {
      v76 = v77;
      if (v77 >= v107)
      {
        goto LABEL_147;
      }
    }

    *a9 = v77;
    *a10 = 0;
    v107 = v76;
    v36 = v66;
    v78 = (v65 + 1);
    v79 = -1;
    if (v78 < v110)
    {
      goto LABEL_152;
    }

LABEL_148:
    if (v65 < v106)
    {
      v80 = (*(a7 + 16))(v103 + (v78 >> 2) * v104 - v102 + (v66 >> 2));
      if (!v101)
      {
        v79 = v80;
        if (v80 >= v107)
        {
          goto LABEL_152;
        }

LABEL_151:
        *a9 = v80;
        *a10 = 0;
        v107 = v79;
        v36 = v66;
        v35 = v78;
        goto LABEL_152;
      }

      v79 = (((*(v101[1] + 4 * (v66 - v99)) + *(*v101 + 4 * (v78 - v100))) * v98 + 128) >> 8) + v80;
      if (v79 < v107)
      {
        goto LABEL_151;
      }
    }

LABEL_152:
    v64 = v101;
LABEL_153:
    v81 = (v69 >= v74) | (2 * (v76 >= v79));
    if (v81 > 1)
    {
      if (v81 == 2)
      {
        if (v97)
        {
          continue;
        }

        v82 = (v65 + 1);
        if (v82 < v110 || v65 >= v106)
        {
          continue;
        }

LABEL_163:
        v71 = v93;
        v83 = (*(a7 + 16))(v103 + (v82 >> 2) * v104 - v102 + (v93 >> 2));
        goto LABEL_172;
      }

      if (v95)
      {
        continue;
      }

      v82 = (v65 + 1);
      if (v82 < v110 || v65 >= v106)
      {
        continue;
      }
    }

    else
    {
      if (!v81)
      {
        if (v97)
        {
          continue;
        }

        if (v65 <= v110)
        {
          continue;
        }

        v82 = (v65 - 1);
        if (v82 > v106)
        {
          continue;
        }

        goto LABEL_163;
      }

      if (v95)
      {
        continue;
      }

      if (v65 <= v110)
      {
        continue;
      }

      v82 = (v65 - 1);
      if (v82 > v106)
      {
        continue;
      }
    }

    v83 = (*(a7 + 16))(v103 + (v82 >> 2) * v104 - v102 + (v71 >> 2));
LABEL_172:
    if (v64)
    {
      v84 = (((*(v64[1] + 4 * (v71 - v99)) + *(*v64 + 4 * (v82 - v100))) * v98 + 128) >> 8) + v83;
      if (v84 >= v107)
      {
        continue;
      }

LABEL_174:
      v107 = v84;
      v35 = v82;
      *a9 = v83;
      *a10 = 0;
      v36 = v71;
      continue;
    }

    v84 = v83;
    if (v83 < v107)
    {
      goto LABEL_174;
    }
  }

  while (v65 != v35 || v66 != v36);
  v85 = 2 * v65;
  if (2 * v65 >= 0x7FFF)
  {
    v85 = 0x7FFF;
  }

  if (v85 <= -32768)
  {
    v85 = -32768;
  }

  *v90 = v85;
  if (2 * v66 >= 0x7FFF)
  {
    v86 = 0x7FFF;
  }

  else
  {
    v86 = 2 * v66;
  }

  if (v86 <= -32768)
  {
    v86 = -32768;
  }

  v90[1] = v86;
  v87 = v86 - v91[1];
  if (v87 < 0)
  {
    v87 = -v87;
  }

  result = 0x7FFFFFFFLL;
  if (v87 <= 0x7F8)
  {
    v89 = v85 - *v91;
    if (v89 < 0)
    {
      v89 = -v89;
    }

    if (v89 <= 0x7F8)
    {
      return v107;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  return result;
}

uint64_t vp8_find_best_sub_pixel_step(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __int16 *a5, int a6, uint64_t a7, void *a8, int *a9, _DWORD *a10)
{
  v15 = **(a2 + 72);
  v16 = *(a2 + 80);
  v137 = 0;
  v17 = *(a1 + 7792);
  v136 = v17;
  v18 = *a4;
  v19 = *(a4 + 1);
  v20 = *(a1 + 7832) + *(a3 + 32) + v17 * v18 + *(a4 + 1);
  v21 = 8 * v18;
  if (8 * v18 >= 0x7FFF)
  {
    v21 = 0x7FFF;
  }

  if (v21 <= -32768)
  {
    v21 = -32768;
  }

  v129 = v21;
  *a4 = v21;
  v22 = 8 * v19;
  if (8 * v19 >= 0x7FFF)
  {
    v22 = 0x7FFF;
  }

  v124 = v22;
  if (v22 <= -32768)
  {
    v23 = -32768;
  }

  else
  {
    v23 = v22;
  }

  *(a4 + 1) = v23;
  v134 = v16;
  v135 = v15;
  v24 = (*(a7 + 8))(v20);
  *a9 = v24;
  if (a8)
  {
    v25 = (*a4 - *a5) >> 1;
    if (v25 >= 2047)
    {
      v25 = 2047;
    }

    v26 = v25 & ~(v25 >> 31);
    if ((*(a4 + 1) - a5[1]) >> 1 >= 2047)
    {
      v27 = 2047;
    }

    else
    {
      v27 = (*(a4 + 1) - a5[1]) >> 1;
    }

    v28 = ((*(a8[1] + 4 * (v27 & ~(v27 >> 31))) + *(*a8 + 4 * v26)) * a6 + 128) >> 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 + v24);
  v121 = v23;
  v30 = v23 | 4;
  v119 = v20 - 1;
  v31 = (*(a7 + 16))();
  v131 = a5;
  v122 = v30 - 8;
  if (a8)
  {
    v32 = (v129 - *a5) >> 1;
    if (v32 >= 2047)
    {
      v32 = 2047;
    }

    v33 = v32 & ~(v32 >> 31);
    if (((v30 - 8) - a5[1]) >> 1 >= 2047)
    {
      v34 = 2047;
    }

    else
    {
      v34 = ((v30 - 8) - a5[1]) >> 1;
    }

    v35 = ((((*(a8[1] + 4 * (v34 & ~(v34 >> 31))) + *(*a8 + 4 * v33)) * a6 + 128) >> 8) + v31);
    v36 = v20;
    if (v35 < v29)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v35 = v31;
    v36 = v20;
    if (v31 < v29)
    {
LABEL_25:
      *a4 = v129 | (v122 << 16);
      *a9 = v31;
      *a10 = v137;
      v29 = v35;
    }
  }

  v37 = (*(a7 + 16))(v36, v136, 4, 0, v135 + v134, *(a2 + 84), &v137);
  v128 = a6;
  if (a8)
  {
    v38 = (v129 - *v131) >> 1;
    if (v38 >= 2047)
    {
      v38 = 2047;
    }

    v39 = v38 & ~(v38 >> 31);
    if ((v30 - v131[1]) >> 1 >= 2047)
    {
      v40 = 2047;
    }

    else
    {
      v40 = (v30 - v131[1]) >> 1;
    }

    v41 = ((((*(a8[1] + 4 * (v40 & ~(v40 >> 31))) + *(*a8 + 4 * v39)) * a6 + 128) >> 8) + v37);
    if (v41 < v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v41 = v37;
    if (v37 < v29)
    {
LABEL_33:
      *a4 = v129 | (v30 << 16);
      *a9 = v37;
      *a10 = v137;
      v29 = v41;
    }
  }

  v42 = (v129 | 4) - 8;
  v132 = a2;
  v43 = (*(a7 + 16))();
  v127 = a4;
  if (a8)
  {
    v44 = (v42 - *v131) >> 1;
    if (v44 >= 2047)
    {
      v44 = 2047;
    }

    v45 = v44 & ~(v44 >> 31);
    v46 = v121;
    if ((v121 - v131[1]) >> 1 >= 2047)
    {
      v47 = 2047;
    }

    else
    {
      v47 = (v121 - v131[1]) >> 1;
    }

    v48 = ((((*(a8[1] + 4 * (v47 & ~(v47 >> 31))) + *(*a8 + 4 * v45)) * v128 + 128) >> 8) + v43);
    if (v48 < v29)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v46 = v121;
    v48 = v43;
    if (v43 < v29)
    {
LABEL_41:
      *v127 = v42 | (v46 << 16);
      *a9 = v43;
      *a10 = v137;
      v29 = v48;
    }
  }

  v49 = (*(a7 + 16))(v36, v136, 0, 4, v135 + v134, *(a2 + 84), &v137);
  if (a8)
  {
    v50 = ((v129 | 4) - *v131) >> 1;
    if (v50 >= 2047)
    {
      v50 = 2047;
    }

    v51 = v50 & ~(v50 >> 31);
    if ((v46 - v131[1]) >> 1 >= 2047)
    {
      v52 = 2047;
    }

    else
    {
      v52 = (v46 - v131[1]) >> 1;
    }

    v53 = ((((*(a8[1] + 4 * (v52 & ~(v52 >> 31))) + *(*a8 + 4 * v51)) * v128 + 128) >> 8) + v49);
    if (v53 < v29)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v53 = v49;
    if (v49 < v29)
    {
LABEL_49:
      *v127 = v129 | 4 | (v46 << 16);
      *a9 = v49;
      *a10 = v137;
      v29 = v53;
    }
  }

  v54 = (v35 >= v41) | (2 * (v48 >= v53));
  if (v54 > 1)
  {
    v55 = v127;
    v56 = v128;
    v57 = v131;
    if (v54 == 2)
    {
      v42 = v129 + 4;
      v58 = (*(a7 + 16))(v119, v136, 4, 4, v135 + v134, *(v132 + 84), &v137);
      v59 = v122;
      if (!a8)
      {
LABEL_129:
        v63 = v58;
        if (v58 >= v29)
        {
          goto LABEL_73;
        }

LABEL_72:
        *v55 = v42 | (v59 << 16);
        *a9 = v58;
        *a10 = v137;
        v29 = v63;
        goto LABEL_73;
      }
    }

    else
    {
      v59 = v46 + 4;
      v42 = v129 + 4;
      v58 = (*(a7 + 16))(v36, v136, 4, 4, v135 + v134, *(v132 + 84), &v137);
      if (!a8)
      {
        goto LABEL_129;
      }
    }
  }

  else
  {
    v55 = v127;
    v56 = v128;
    v57 = v131;
    if (v54)
    {
      v59 = v46 + 4;
      v58 = (*(a7 + 16))(v36 - v136, v136, 4, 4, v135 + v134, *(v132 + 84), &v137);
      if (!a8)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v58 = (*(a7 + 16))(v119 - v136, v136, 4, 4, v135 + v134, *(v132 + 84), &v137);
      v59 = v122;
      if (!a8)
      {
        goto LABEL_129;
      }
    }
  }

  v60 = (v42 - *v57) >> 1;
  if (v60 >= 2047)
  {
    v60 = 2047;
  }

  v61 = v60 & ~(v60 >> 31);
  if ((v59 - v57[1]) >> 1 >= 2047)
  {
    v62 = 2047;
  }

  else
  {
    v62 = (v59 - v57[1]) >> 1;
  }

  v63 = ((((*(a8[1] + 4 * (v62 & ~(v62 >> 31))) + *(*a8 + 4 * v61)) * v56 + 128) >> 8) + v58);
  if (v63 < v29)
  {
    goto LABEL_72;
  }

LABEL_73:
  v64 = *v55;
  v65 = *v55;
  v66 = v36 - v136;
  if (v64 >= v129)
  {
    v66 = v36;
  }

  v67 = *(v55 + 1);
  v68 = v66 - (v124 > v67);
  v69 = v67 - 2;
  v70 = *(a7 + 16);
  v130 = v67 & 7;
  if ((v67 & 7) != 0)
  {
    v71 = v70(v68, v136, v69 & 7, v65 & 7, v135 + v134, *(v132 + 84), &v137);
    v126 = v67 - 2;
    if (a8)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v71 = v70(v68 - 1, v136, 6, v65 & 7, v135 + v134, *(v132 + 84), &v137);
    v126 = v67 - 2;
    if (a8)
    {
LABEL_77:
      v72 = (v64 - *v131) >> 1;
      if (v72 >= 2047)
      {
        v72 = 2047;
      }

      v73 = v72 & ~(v72 >> 31);
      if ((v69 - v131[1]) >> 1 >= 2047)
      {
        v74 = 2047;
      }

      else
      {
        v74 = (v69 - v131[1]) >> 1;
      }

      v75 = v67;
      v76 = ((((*(a8[1] + 4 * (v74 & ~(v74 >> 31))) + *(*a8 + 4 * v73)) * v56 + 128) >> 8) + v71);
      if (v76 < v29)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }
  }

  v75 = v67;
  v76 = v71;
  if (v71 < v29)
  {
LABEL_83:
    *v55 = v65 | (v126 << 16);
    *a9 = v71;
    *a10 = v137;
    v29 = v76;
  }

LABEL_84:
  v125 = v76;
  v77 = v55;
  v120 = v75;
  v78 = v75 + 2;
  v79 = v65 & 7;
  v80 = (*(a7 + 16))(v68, v136, (v75 + 2) & 7);
  if (a8)
  {
    v81 = (v65 - *v131) >> 1;
    if (v81 >= 2047)
    {
      v81 = 2047;
    }

    v82 = v81 & ~(v81 >> 31);
    if ((v78 - v131[1]) >> 1 >= 2047)
    {
      v83 = 2047;
    }

    else
    {
      v83 = (v78 - v131[1]) >> 1;
    }

    v84 = v78;
    v85 = ((((*(a8[1] + 4 * (v83 & ~(v83 >> 31))) + *(*a8 + 4 * v82)) * v56 + 128) >> 8) + v80);
    if (v85 < v29)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v84 = v78;
    v85 = v80;
    if (v80 < v29)
    {
LABEL_91:
      *v77 = v64 | (v84 << 16);
      *a9 = v80;
      *a10 = v137;
      v29 = v85;
    }
  }

  v123 = v84;
  v86 = v65 - 2;
  v87 = *(a7 + 16);
  if ((v65 & 7) != 0)
  {
    v88 = v87(v68, v136, v67 & 7, v86 & 7, v135 + v134, *(v132 + 84), &v137);
    if (a8)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v88 = v87(v68 - v136, v136, v67 & 7, 6, v135 + v134, *(v132 + 84), &v137);
    if (a8)
    {
LABEL_94:
      v89 = (v86 - *v131) >> 1;
      if (v89 >= 2047)
      {
        v89 = 2047;
      }

      v90 = v89 & ~(v89 >> 31);
      if ((v67 - v131[1]) >> 1 >= 2047)
      {
        v91 = 2047;
      }

      else
      {
        v91 = (v67 - v131[1]) >> 1;
      }

      v92 = ((((*(a8[1] + 4 * (v91 & ~(v91 >> 31))) + *(*a8 + 4 * v90)) * v128 + 128) >> 8) + v88);
      if (v92 < v29)
      {
        goto LABEL_100;
      }

      goto LABEL_101;
    }
  }

  v92 = v88;
  if (v88 < v29)
  {
LABEL_100:
    *v127 = v86 | (v120 << 16);
    *a9 = v88;
    *a10 = v137;
    v29 = v92;
  }

LABEL_101:
  v93 = v65 + 2;
  v94 = (*(a7 + 16))(v68, v136, v67 & 7, v93 & 7, v135 + v134, *(v132 + 84), &v137);
  if (a8)
  {
    v95 = (v93 - *v131) >> 1;
    if (v95 >= 2047)
    {
      v95 = 2047;
    }

    v96 = v95 & ~(v95 >> 31);
    if ((v67 - v131[1]) >> 1 >= 2047)
    {
      v97 = 2047;
    }

    else
    {
      v97 = (v67 - v131[1]) >> 1;
    }

    v98 = v125;
    v99 = ((((*(a8[1] + 4 * (v97 & ~(v97 >> 31))) + *(*a8 + 4 * v96)) * v128 + 128) >> 8) + v94);
    if (v99 < v29)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v98 = v125;
    v99 = v94;
    if (v94 < v29)
    {
LABEL_108:
      *v127 = v93 | (v67 << 16);
      *a9 = v94;
      *a10 = v137;
      v29 = v99;
    }
  }

  v100 = (v98 >= v85) | (2 * (v92 >= v99));
  if (v100 > 1)
  {
    v101 = v127;
    v102 = v128;
    if (v100 == 2)
    {
      if (v130)
      {
        v106 = *(v132 + 84);
        v107 = v126 & 7;
        v108 = v93 & 7;
        v109 = v135 + v134;
        v110 = v68;
        v111 = v136;
      }

      else
      {
        v110 = v68 - 1;
        v106 = *(v132 + 84);
        v108 = v93 & 7;
        v109 = v135 + v134;
        v111 = v136;
        v107 = 6;
      }

      v105 = (*(a7 + 16))(v110, v111, v107, v108, v109, v106, &v137);
      v86 = v93;
      v104 = v131;
      if (a8)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v105 = (*(a7 + 16))(v68, v136, v123 & 7, v93 & 7, v135 + v134, *(v132 + 84), &v137);
      LOWORD(v126) = v123;
      v86 = v93;
      v104 = v131;
      if (a8)
      {
        goto LABEL_148;
      }
    }

    goto LABEL_133;
  }

  v101 = v127;
  v102 = v128;
  if (v100)
  {
    v112 = *(a7 + 16);
    v104 = v131;
    if (v79)
    {
      v105 = v112(v68, v136, v123 & 7, v86 & 7, v135 + v134, *(v132 + 84), &v137);
      LOWORD(v126) = v123;
      if (!a8)
      {
        goto LABEL_133;
      }

      goto LABEL_148;
    }

    v105 = v112(v68 - v136, v136, v123 & 7, 6, v135 + v134, *(v132 + 84), &v137);
    LOWORD(v126) = v123;
    if (a8)
    {
      goto LABEL_148;
    }

    goto LABEL_133;
  }

  v103 = *(a7 + 16);
  v104 = v131;
  if (!v79)
  {
    v114 = v68 - v136;
    if (!v130)
    {
      v105 = v103(v114 - 1, v136, 6, 6, v135 + v134, *(v132 + 84), &v137);
      if (!a8)
      {
        goto LABEL_133;
      }

      goto LABEL_148;
    }

    v105 = v103(v114, v136, v126 & 7, 6, v135 + v134, *(v132 + 84), &v137);
    if (a8)
    {
      goto LABEL_148;
    }

LABEL_133:
    v113 = v105;
    if (v105 >= v29)
    {
      return v29;
    }

    goto LABEL_154;
  }

  if (!v130)
  {
    v105 = v103(v68 - 1, v136, 6, v86 & 7, v135 + v134, *(v132 + 84), &v137);
    if (a8)
    {
      goto LABEL_148;
    }

    goto LABEL_133;
  }

  v105 = v103(v68, v136, v126 & 7, v86 & 7, v135 + v134, *(v132 + 84), &v137);
  if (!a8)
  {
    goto LABEL_133;
  }

LABEL_148:
  v115 = (v86 - *v104) >> 1;
  if (v115 >= 2047)
  {
    v115 = 2047;
  }

  v116 = v115 & ~(v115 >> 31);
  if ((v126 - v104[1]) >> 1 >= 2047)
  {
    v117 = 2047;
  }

  else
  {
    v117 = (v126 - v104[1]) >> 1;
  }

  v113 = ((((*(a8[1] + 4 * (v117 & ~(v117 >> 31))) + *(*a8 + 4 * v116)) * v102 + 128) >> 8) + v105);
  if (v113 < v29)
  {
LABEL_154:
    *v101 = v86 | (v126 << 16);
    *a9 = v105;
    *a10 = v137;
    return v113;
  }

  return v29;
}

uint64_t vp8_find_best_half_pixel_step(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __int16 *a5, int a6, uint64_t a7, void *a8, int *a9, _DWORD *a10)
{
  v16 = **(a2 + 72);
  v17 = *(a2 + 80);
  v75 = 0;
  v18 = *(a1 + 7792);
  v74 = v18;
  v19 = *a4;
  v20 = *(a4 + 1);
  v21 = *(a1 + 7832) + *(a3 + 32) + v18 * v19 + *(a4 + 1);
  v22 = 8 * v19;
  if (8 * v19 >= 0x7FFF)
  {
    v22 = 0x7FFF;
  }

  if (v22 <= -32768)
  {
    v22 = -32768;
  }

  v70 = v22;
  *a4 = v22;
  v23 = 8 * v20;
  if (8 * v20 >= 0x7FFF)
  {
    v23 = 0x7FFF;
  }

  if (v23 <= -32768)
  {
    v23 = -32768;
  }

  v69 = v23;
  *(a4 + 1) = v23;
  v72 = v17;
  v73 = v16;
  v71 = v21;
  v24 = (*(a7 + 8))();
  *a9 = v24;
  if (a8)
  {
    v25 = (*a4 - *a5) >> 1;
    if (v25 >= 2047)
    {
      v25 = 2047;
    }

    v26 = v25 & ~(v25 >> 31);
    if ((*(a4 + 1) - a5[1]) >> 1 >= 2047)
    {
      v27 = 2047;
    }

    else
    {
      v27 = (*(a4 + 1) - a5[1]) >> 1;
    }

    v28 = ((*(a8[1] + 4 * (v27 & ~(v27 >> 31))) + *(*a8 + 4 * v26)) * a6 + 128) >> 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 + v24);
  v30 = v69 | 4;
  v31 = (v69 | 4) - 8;
  v65 = v71 - 1;
  v32 = (*(a7 + 16))();
  if (a8)
  {
    v33 = (v70 - *a5) >> 1;
    if (v33 >= 2047)
    {
      v33 = 2047;
    }

    v34 = v33 & ~(v33 >> 31);
    if ((v31 - a5[1]) >> 1 >= 2047)
    {
      v35 = 2047;
    }

    else
    {
      v35 = (v31 - a5[1]) >> 1;
    }

    v36 = ((((*(a8[1] + 4 * (v35 & ~(v35 >> 31))) + *(*a8 + 4 * v34)) * a6 + 128) >> 8) + v32);
    if (v36 < v29)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v36 = v32;
    if (v32 < v29)
    {
LABEL_24:
      *a4 = v70 | (v31 << 16);
      *a9 = v32;
      *a10 = v75;
      v29 = v36;
    }
  }

  v66 = v36;
  v67 = (v69 | 4) - 8;
  v37 = (*(a7 + 16))(v71, v74, 4, 0, v73 + v72, *(a2 + 84), &v75);
  v68 = a6;
  if (a8)
  {
    v38 = (v70 - *a5) >> 1;
    if (v38 >= 2047)
    {
      v38 = 2047;
    }

    v39 = v38 & ~(v38 >> 31);
    if ((v30 - a5[1]) >> 1 >= 2047)
    {
      v40 = 2047;
    }

    else
    {
      v40 = (v30 - a5[1]) >> 1;
    }

    v41 = a5;
    v42 = ((((*(a8[1] + 4 * (v40 & ~(v40 >> 31))) + *(*a8 + 4 * v39)) * a6 + 128) >> 8) + v37);
    if (v42 < v29)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = a5;
    v42 = v37;
    if (v37 < v29)
    {
LABEL_32:
      *a4 = v70 | (v30 << 16);
      *a9 = v37;
      *a10 = v75;
      v29 = v42;
    }
  }

  v43 = (*(a7 + 16))();
  v44 = a4;
  if (a8)
  {
    v45 = v41;
    v46 = (((v70 | 4) - 8) - *v41) >> 1;
    if (v46 >= 2047)
    {
      v46 = 2047;
    }

    v47 = v46 & ~(v46 >> 31);
    if ((v69 - v41[1]) >> 1 >= 2047)
    {
      v48 = 2047;
    }

    else
    {
      v48 = (v69 - v41[1]) >> 1;
    }

    v49 = ((((*(a8[1] + 4 * (v48 & ~(v48 >> 31))) + *(*a8 + 4 * v47)) * v68 + 128) >> 8) + v43);
    if (v49 < v29)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v45 = v41;
    v49 = v43;
    if (v43 < v29)
    {
LABEL_40:
      *v44 = ((v70 | 4) - 8) | (v69 << 16);
      *a9 = v43;
      *a10 = v75;
      v29 = v49;
    }
  }

  v50 = (*(a7 + 16))(v71, v74, 0, 4, v73 + v72, *(a2 + 84), &v75);
  if (a8)
  {
    v51 = ((v70 | 4) - *v45) >> 1;
    if (v51 >= 2047)
    {
      v51 = 2047;
    }

    v52 = v51 & ~(v51 >> 31);
    if ((v69 - v45[1]) >> 1 >= 2047)
    {
      v53 = 2047;
    }

    else
    {
      v53 = (v69 - v45[1]) >> 1;
    }

    v54 = v66;
    v55 = ((((*(a8[1] + 4 * (v53 & ~(v53 >> 31))) + *(*a8 + 4 * v52)) * v68 + 128) >> 8) + v50);
    if (v55 < v29)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v54 = v66;
    v55 = v50;
    if (v50 < v29)
    {
LABEL_48:
      *v44 = v70 | 4 | (v69 << 16);
      *a9 = v50;
      *a10 = v75;
      v29 = v55;
    }
  }

  v56 = (v54 >= v42) | (2 * (v49 >= v55));
  if (v56 > 1)
  {
    v57 = v68;
    if (v56 == 2)
    {
      v59 = v70 + 4;
      v58 = (*(a7 + 16))(v65, v74, 4, 4, v73 + v72, *(a2 + 84), &v75);
    }

    else
    {
      v67 = v69 + 4;
      v59 = v70 + 4;
      v58 = (*(a7 + 16))(v71, v74, 4, 4, v73 + v72, *(a2 + 84), &v75);
    }

    if (!a8)
    {
LABEL_64:
      v60 = v58;
      if (v58 >= v29)
      {
        return v29;
      }

      goto LABEL_74;
    }
  }

  else
  {
    v57 = v68;
    if (v56)
    {
      v67 = v69 + 4;
      v58 = (*(a7 + 16))(v71 - v74, v74, 4, 4, v73 + v72, *(a2 + 84), &v75);
      v59 = (v70 | 4) - 8;
      if (!a8)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v58 = (*(a7 + 16))(v65 - v74);
      v59 = (v70 | 4) - 8;
      if (!a8)
      {
        goto LABEL_64;
      }
    }
  }

  v61 = (v59 - *v45) >> 1;
  if (v61 >= 2047)
  {
    v61 = 2047;
  }

  v62 = v61 & ~(v61 >> 31);
  if ((v67 - v45[1]) >> 1 >= 2047)
  {
    v63 = 2047;
  }

  else
  {
    v63 = (v67 - v45[1]) >> 1;
  }

  v60 = ((((*(a8[1] + 4 * (v63 & ~(v63 >> 31))) + *(*a8 + 4 * v62)) * v57 + 128) >> 8) + v58);
  if (v60 < v29)
  {
LABEL_74:
    *v44 = v59 | (v67 << 16);
    *a9 = v58;
    *a10 = v75;
    return v60;
  }

  return v29;
}

uint64_t vp8_hex_search(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, _WORD *a5, int a6, int a7, uint64_t (**a8)(uint64_t), void *a9, __int16 *a10)
{
  v10 = a8;
  v14 = **(a2 + 72);
  v16 = *(a2 + 80);
  v15 = *(a2 + 84);
  v247 = *(a1 + 7792);
  v17 = *(a1 + 7832);
  LODWORD(v18) = *a10 >> 3;
  v19 = a10[1] >> 3;
  v20 = *(a1 + 8752);
  v21 = *(a1 + 8760);
  v22 = *(a1 + 8764);
  if (v20 <= a4[1])
  {
    LOWORD(v20) = a4[1];
  }

  if (*(a1 + 8756) < v20)
  {
    LOWORD(v20) = *(a1 + 8756);
  }

  a4[1] = v20;
  v23 = *a4;
  if (v21 > v23)
  {
    LOWORD(v23) = v21;
  }

  if (v22 < v23)
  {
    LOWORD(v23) = v22;
  }

  *a4 = v23;
  v24 = v23;
  v25 = v20;
  v246 = v17 + *(a3 + 32);
  v26 = v20;
  v249 = v16;
  v250 = v14;
  v248 = v15;
  v27 = (*a8)(v14 + v16);
  if (!a9)
  {
    v28 = v24;
    v29 = v27;
    v245 = a7;
    if (a6 >= 6)
    {
      goto LABEL_11;
    }

LABEL_13:
    v239 = v26;
    if (a6 == 5)
    {
      v30 = 4;
    }

    else if (a6 <= 3)
    {
      if (a6 == 3)
      {
        v30 = 15;
      }

      else if (a6 <= 1)
      {
        if (a6 == 1)
        {
          v30 = 63;
        }

        else
        {
          v30 = 127;
        }
      }

      else
      {
        v30 = 31;
      }
    }

    else
    {
      v30 = 6;
    }

    v31 = *(a1 + 8760);
    v32 = *(a1 + 8764);
    v33 = *(a1 + 8752);
    v242 = v18;
    v34 = *(a1 + 8756);
    v241 = v19;
    v35 = v28 - 1;
    LOWORD(v18) = v239 - 2;
    v236 = v28 - 2;
    v243 = v28;
    if (v28 - 2 < v31 || v28 + 2 > v32 || v25 - 2 < v33 || v25 + 2 > v34)
    {
      v41 = v33 > v18 || v34 < v18;
      if (!a9)
      {
        if (v41)
        {
          v42 = -1;
        }

        else
        {
          v42 = -1;
          if (v31 <= v35 && v32 >= v35)
          {
            v48 = v28 - 1;
            v49 = (*v10)(v250 + v249, v248, v246 + v247 * (v28 - 1) + v18);
            v35 = v48;
            v28 = v243;
            v50 = v49 >= v29;
            if (v49 >= v29)
            {
              v29 = v29;
            }

            else
            {
              v29 = v49;
            }

            if (v50)
            {
              v42 = -1;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        v51 = v28 + 1;
        if (*(a1 + 8752) <= v18 && *(a1 + 8756) >= v18 && *(a1 + 8760) <= v51 && *(a1 + 8764) >= v51)
        {
          v52 = v246 + v247 * v51 + v18;
          v53 = v35;
          v54 = (*v10)(v250 + v249, v248, v52);
          v35 = v53;
          v28 = v243;
          v55 = v54 >= v29;
          v29 = v54 >= v29 ? v29 : v54;
          if (!v55)
          {
            v42 = 1;
          }
        }

        if (*(a1 + 8752) <= v25 && *(a1 + 8756) >= v25)
        {
          v56 = (v28 + 2);
          if (*(a1 + 8760) <= v56 && *(a1 + 8764) >= v56)
          {
            v57 = v35;
            v58 = (*v10)(v250 + v249, v248, v246 + v247 * v56 + v239);
            v35 = v57;
            v28 = v243;
            v59 = v58 >= v29;
            v29 = v58 >= v29 ? v29 : v58;
            if (!v59)
            {
              v42 = 2;
            }
          }
        }

        v60 = (v25 + 2);
        if (*(a1 + 8752) <= v60 && *(a1 + 8756) >= v60 && *(a1 + 8760) <= v51 && *(a1 + 8764) >= v51)
        {
          v61 = v246 + v247 * v51 + (v25 + 2);
          v62 = v35;
          v63 = (*v10)(v250 + v249, v248, v61);
          v35 = v62;
          v28 = v243;
          v64 = v63 >= v29;
          v29 = v63 >= v29 ? v29 : v63;
          if (!v64)
          {
            v42 = 3;
          }
        }

        if (*(a1 + 8752) <= v60 && *(a1 + 8756) >= v60 && *(a1 + 8760) <= v35 && *(a1 + 8764) >= v35)
        {
          v65 = (*v10)(v250 + v249, v248, v246 + v247 * v35 + (v25 + 2));
          v28 = v243;
          v66 = v65 >= v29;
          v29 = v65 >= v29 ? v29 : v65;
          if (!v66)
          {
            v42 = 4;
          }
        }

        if (*(a1 + 8752) <= v25 && *(a1 + 8756) >= v25 && *(a1 + 8760) <= v236 && *(a1 + 8764) >= v236)
        {
          v67 = (*v10)(v250 + v249, v248, v246 + v247 * v236 + v239);
          v28 = v243;
          if (v67 < v29)
          {
            v42 = 5;
            v29 = v67;
LABEL_220:
            v120 = (&unk_273BC61B8 + 4 * v42);
            v28 += *v120;
            v25 += v120[1];
            v121 = v30 - 1;
            v240 = v10;
            while (1)
            {
              v124 = *(a1 + 8760);
              v125 = *(a1 + 8764);
              v126 = *(a1 + 8752);
              v127 = *(a1 + 8756);
              v128 = v42;
              v129 = (&next_chkpts + 12 * v42);
              v130 = *v129 + v28;
              v131 = v129[1] + v25;
              v134 = v28 - 2 >= v124 && v28 + 2 <= v125 && v25 - 2 >= v126 && v25 + 2 <= v127;
              v244 = v28;
              if (v134)
              {
                v145 = v29;
                v146 = v131;
                v147 = (*v10)(v250 + v249, v248, v246 + v247 * v130 + v131);
                v148 = v145;
                if (v147 >= v145)
                {
                  v137 = -1;
                  v150 = v244;
                }

                else
                {
                  if (a9)
                  {
                    v149 = ((*(a9[1] + 4 * (v146 - v241)) + *(*a9 + 4 * (v130 - v242))) * v245 + 128) >> 8;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  v150 = v244;
                  v155 = v149 + v147;
                  if (v155 >= v145)
                  {
                    v148 = v145;
                  }

                  else
                  {
                    v148 = v155;
                  }

                  if (v155 < v145)
                  {
                    v137 = 0;
                  }

                  else
                  {
                    v137 = -1;
                  }
                }

                v156 = &next_chkpts + 12 * v128;
                v157 = *(v156 + 2) + v150;
                v158 = (*(v156 + 3) + v25);
                v159 = (*v10)(v250 + v249, v248, v246 + v247 * v157 + v158);
                v160 = v148;
                if (v159 >= v148)
                {
                  v162 = v244;
                }

                else
                {
                  if (a9)
                  {
                    v161 = ((*(a9[1] + 4 * (v158 - v241)) + *(*a9 + 4 * (v157 - v242))) * v245 + 128) >> 8;
                  }

                  else
                  {
                    v161 = 0;
                  }

                  v162 = v244;
                  v163 = v161 + v159;
                  if (v163 >= v148)
                  {
                    v160 = v148;
                  }

                  else
                  {
                    v160 = v163;
                  }

                  if (v163 < v148)
                  {
                    v137 = 1;
                  }
                }

                v164 = &next_chkpts + 12 * v128;
                v165 = *(v164 + 4);
                v166 = v165 + v162;
                v167 = *(v164 + 5);
                v168 = (v167 + v25);
                v169 = (*v240)(v250 + v249, v248, v246 + v247 * (v165 + v162) + v168);
                v170 = v160;
                if (v169 >= v160)
                {
                  v10 = v240;
LABEL_282:
                  a7 = v245;
                  v29 = v170;
                  v28 = v244;
                  if (v137 == -1)
                  {
                    goto LABEL_321;
                  }

                  goto LABEL_313;
                }

                if (a9)
                {
                  v171 = ((*(a9[1] + 4 * (v168 - v241)) + *(*a9 + 4 * (v166 - v242))) * v245 + 128) >> 8;
                }

                else
                {
                  v171 = 0;
                }

                v10 = v240;
              }

              else
              {
                v135 = v126 > v131 || v127 < v131;
                if (v135 || (v124 <= v130 ? (v136 = v125 < v130) : (v136 = 1), v136))
                {
                  v137 = -1;
                }

                else
                {
                  v151 = v29;
                  v152 = v131;
                  v153 = (*v10)(v250 + v249, v248, v246 + v247 * v130 + v131);
                  if (v153 >= v151)
                  {
                    v137 = -1;
                    v29 = v151;
                    v28 = v244;
                  }

                  else
                  {
                    if (a9)
                    {
                      v154 = ((*(a9[1] + 4 * (v152 - v241)) + *(*a9 + 4 * (v130 - v242))) * a7 + 128) >> 8;
                    }

                    else
                    {
                      v154 = 0;
                    }

                    v28 = v244;
                    v173 = v154 + v153;
                    if (v173 >= v151)
                    {
                      v29 = v151;
                    }

                    else
                    {
                      v29 = v173;
                    }

                    if (v173 < v151)
                    {
                      v137 = 0;
                    }

                    else
                    {
                      v137 = -1;
                    }
                  }
                }

                v138 = &next_chkpts + 12 * v128;
                v139 = (*(v138 + 3) + v25);
                if (*(a1 + 8752) <= v139 && *(a1 + 8756) >= v139)
                {
                  v140 = *(v138 + 2) + v28;
                  if (*(a1 + 8760) <= v140 && *(a1 + 8764) >= v140)
                  {
                    v141 = v29;
                    v142 = (*(v138 + 3) + v25);
                    v143 = (*v10)(v250 + v249, v248, v246 + v247 * v140 + v142);
                    if (v143 >= v141)
                    {
                      v29 = v141;
                      v28 = v244;
                    }

                    else
                    {
                      if (a9)
                      {
                        v144 = ((*(a9[1] + 4 * (v142 - v241)) + *(*a9 + 4 * (v140 - v242))) * a7 + 128) >> 8;
                      }

                      else
                      {
                        v144 = 0;
                      }

                      v28 = v244;
                      v174 = v144 + v143;
                      if (v174 >= v141)
                      {
                        v29 = v141;
                      }

                      else
                      {
                        v29 = v174;
                      }

                      if (v174 < v141)
                      {
                        v137 = 1;
                      }
                    }
                  }
                }

                v175 = &next_chkpts + 12 * v128;
                v167 = *(v175 + 5);
                v176 = (v167 + v25);
                if (*(a1 + 8752) > v176 || *(a1 + 8756) < v176)
                {
                  goto LABEL_312;
                }

                v165 = *(v175 + 4);
                v177 = (v165 + v28);
                if (*(a1 + 8760) > v177)
                {
                  a7 = v245;
LABEL_312:
                  if (v137 == -1)
                  {
                    goto LABEL_321;
                  }

LABEL_313:
                  v178 = (&next_chkpts + 12 * v128 + 4 * v137);
                  v165 = *v178;
                  v167 = v178[1];
                  goto LABEL_221;
                }

                if (*(a1 + 8764) < v177)
                {
                  a7 = v245;
                  if (v137 == -1)
                  {
                    goto LABEL_321;
                  }

                  goto LABEL_313;
                }

                v237 = v165 + v28;
                v169 = (*v10)(v250 + v249, v248, v246 + v247 * v177 + (v167 + v25));
                v170 = v29;
                if (v169 >= v29)
                {
                  goto LABEL_282;
                }

                if (a9)
                {
                  v171 = ((*(a9[1] + 4 * ((v167 + v25) - v241)) + *(*a9 + 4 * (v237 - v242))) * v245 + 128) >> 8;
                }

                else
                {
                  v171 = 0;
                }
              }

              v28 = v244;
              v172 = v171 + v169;
              if (v172 >= v170)
              {
                v29 = v170;
              }

              else
              {
                v29 = v172;
              }

              if (v172 >= v170)
              {
                a7 = v245;
                if (v137 == -1)
                {
                  goto LABEL_321;
                }

                goto LABEL_313;
              }

              v137 = 2;
LABEL_221:
              v28 += v165;
              v25 += v167;
              v122 = v128 + v137 + 5;
              v123 = v128 + v137 - 1;
              if (v122 <= 5)
              {
                v123 = v128 + v137 + 5;
              }

              if (v122 <= 11)
              {
                v42 = v123;
              }

              else
              {
                v42 = v128 + v137 - 7;
              }

              --v121;
              a7 = v245;
              if (!v121)
              {
                goto LABEL_321;
              }
            }
          }
        }

        goto LABEL_219;
      }

      if (v41)
      {
        v42 = -1;
      }

      else
      {
        v42 = -1;
        if (v31 <= v35 && v32 >= v35)
        {
          v233 = v30;
          v44 = v28 - 1;
          v45 = (*v10)(v250 + v249, v248, v246 + v247 * (v28 - 1) + v18);
          if (v45 >= v29)
          {
            v42 = -1;
          }

          else
          {
            v46 = v45 + (((*(a9[1] + 4 * (v18 - v19)) + *(*a9 + 4 * (v44 - v242))) * a7 + 128) >> 8);
            v47 = v46 >= v29;
            if (v46 >= v29)
            {
              v29 = v29;
            }

            else
            {
              v29 = v46;
            }

            if (v47)
            {
              v42 = -1;
            }

            else
            {
              v42 = 0;
            }
          }

          v28 = v243;
          v35 = v44;
          v30 = v233;
        }
      }

      v99 = v28 + 1;
      if (*(a1 + 8752) <= v18 && *(a1 + 8756) >= v18 && *(a1 + 8760) <= v99 && *(a1 + 8764) >= v99)
      {
        v100 = v35;
        v18 = v18;
        v101 = (*v10)(v250 + v249, v248, v246 + v247 * v99 + v18);
        if (v101 < v29)
        {
          v102 = v101 + (((*(a9[1] + 4 * (v18 - v241)) + *(*a9 + 4 * (v99 - v242))) * a7 + 128) >> 8);
          v103 = v102 >= v29;
          v29 = v102 >= v29 ? v29 : v102;
          if (!v103)
          {
            v42 = 1;
          }
        }

        v28 = v243;
        v35 = v100;
      }

      if (*(a1 + 8752) <= v25 && *(a1 + 8756) >= v25)
      {
        v104 = v28 + 2;
        v105 = (v28 + 2);
        if (*(a1 + 8760) <= v105 && *(a1 + 8764) >= v105)
        {
          v234 = v35;
          v106 = (*v10)(v250 + v249, v248, v246 + v247 * v105 + v239);
          if (v106 < v29)
          {
            v107 = v106 + (((*(a9[1] + 4 * (v239 - v241)) + *(*a9 + 4 * (v104 - v242))) * a7 + 128) >> 8);
            v108 = v107 >= v29;
            v29 = v107 >= v29 ? v29 : v107;
            if (!v108)
            {
              v42 = 2;
            }
          }

          v28 = v243;
          v35 = v234;
        }
      }

      v109 = (v239 + 2);
      if (*(a1 + 8752) <= v109 && *(a1 + 8756) >= v109 && *(a1 + 8760) <= v99 && *(a1 + 8764) >= v99)
      {
        v235 = v35;
        v110 = (*v10)(v250 + v249, v248, v246 + v247 * v99 + (v239 + 2));
        if (v110 < v29)
        {
          v111 = v110 + (((*(a9[1] + 4 * ((v239 + 2) - v241)) + *(*a9 + 4 * (v99 - v242))) * a7 + 128) >> 8);
          v112 = v111 >= v29;
          v29 = v111 >= v29 ? v29 : v111;
          if (!v112)
          {
            v42 = 3;
          }
        }

        v28 = v243;
        v35 = v235;
      }

      if (*(a1 + 8752) <= v109 && *(a1 + 8756) >= v109 && *(a1 + 8760) <= v35 && *(a1 + 8764) >= v35)
      {
        v113 = v35;
        v114 = (*v10)(v250 + v249, v248, v246 + v247 * v35 + (v239 + 2));
        if (v114 < v29)
        {
          v115 = v114 + (((*(a9[1] + 4 * ((v239 + 2) - v241)) + *(*a9 + 4 * (v113 - v242))) * a7 + 128) >> 8);
          v116 = v115 >= v29;
          v29 = v115 >= v29 ? v29 : v115;
          if (!v116)
          {
            v42 = 4;
          }
        }

        v28 = v243;
      }

      if (*(a1 + 8752) > v25 || *(a1 + 8756) < v25 || *(a1 + 8760) > v236 || *(a1 + 8764) < v236)
      {
        goto LABEL_219;
      }

      v117 = (*v10)(v250 + v249, v248, v246 + v247 * v236 + v239);
      if (v117 < v29)
      {
        v118 = v117 + (((*(a9[1] + 4 * (v239 - v241)) + *(*a9 + 4 * (v236 - v242))) * a7 + 128) >> 8);
        v119 = v118 >= v29;
        if (v118 >= v29)
        {
          v29 = v29;
        }

        else
        {
          v29 = v118;
        }

        v28 = v243;
        if (!v119)
        {
          goto LABEL_160;
        }

        goto LABEL_219;
      }
    }

    else
    {
      v232 = v28 - 1;
      v36 = v246 + v247 * (v28 - 1);
      v37 = v18;
      v38 = (*v10)(v250 + v249, v248, v36 + v18);
      if (v38 >= v29)
      {
        v42 = -1;
        v43 = v243;
      }

      else
      {
        if (a9)
        {
          v39 = ((*(a9[1] + 4 * (v18 - v241)) + *(*a9 + 4 * (v232 - v242))) * v245 + 128) >> 8;
        }

        else
        {
          v39 = 0;
        }

        v43 = v243;
        v68 = v39 + v38;
        v69 = v68 >= v29;
        if (v68 >= v29)
        {
          v29 = v29;
        }

        else
        {
          v29 = v68;
        }

        if (v69)
        {
          v42 = -1;
        }

        else
        {
          v42 = 0;
        }
      }

      v231 = v43 + 1;
      v70 = v246 + v247 * (v43 + 1);
      v71 = (*v10)(v250 + v249, v248, v70 + v18);
      v72 = v36;
      if (v71 >= v29)
      {
        v73 = v30;
        v75 = v245;
        v77 = v29;
        v78 = v243;
      }

      else
      {
        v73 = v30;
        if (a9)
        {
          v74 = *(a9[1] + 4 * (v37 - v241)) + *(*a9 + 4 * (v231 - v242));
          v75 = v245;
          v76 = (v74 * v245 + 128) >> 8;
        }

        else
        {
          v76 = 0;
          v75 = v245;
        }

        v78 = v243;
        v79 = v76 + v71;
        if (v79 >= v29)
        {
          v77 = v29;
        }

        else
        {
          v77 = v79;
        }

        if (v79 < v29)
        {
          v42 = 1;
        }
      }

      v80 = v78 + 2;
      v81 = (*v10)(v250 + v249, v248, v246 + v247 * (v78 + 2) + v239);
      v82 = v77;
      if (v81 >= v77)
      {
        v29 = v77;
        v30 = v73;
      }

      else
      {
        v30 = v73;
        if (a9)
        {
          v83 = ((*(a9[1] + 4 * (v239 - v241)) + *(*a9 + 4 * (v80 - v242))) * v75 + 128) >> 8;
        }

        else
        {
          v83 = 0;
        }

        v84 = v83 + v81;
        if (v84 >= v82)
        {
          v29 = v82;
        }

        else
        {
          v29 = v84;
        }

        if (v84 < v82)
        {
          v42 = 2;
        }
      }

      v85 = (v25 + 2);
      v86 = (*v10)(v250 + v249, v248, v70 + v85, v247);
      if (v86 < v29)
      {
        v87 = a9 ? ((*(a9[1] + 4 * (v85 - v241)) + *(*a9 + 4 * (v231 - v242))) * v245 + 128) >> 8 : 0;
        v88 = v87 + v86;
        v89 = v88 >= v29;
        v29 = v88 >= v29 ? v29 : v88;
        if (!v89)
        {
          v42 = 3;
        }
      }

      v90 = (*v10)(v250 + v249, v248, v72 + v85, v247);
      if (v90 >= v29)
      {
        a7 = v245;
      }

      else
      {
        if (a9)
        {
          v91 = *(a9[1] + 4 * (v85 - v241)) + *(*a9 + 4 * (v232 - v242));
          a7 = v245;
          v92 = (v91 * v245 + 128) >> 8;
        }

        else
        {
          v92 = 0;
          a7 = v245;
        }

        v93 = v92 + v90;
        v94 = v93 >= v29;
        if (v93 >= v29)
        {
          v29 = v29;
        }

        else
        {
          v29 = v93;
        }

        if (!v94)
        {
          v42 = 4;
        }
      }

      v95 = (*v10)(v250 + v249, v248, v246 + v247 * v236 + v239);
      if (v95 < v29)
      {
        v28 = v243;
        if (a9)
        {
          v96 = (((*(a9[1] + 4 * (v239 - v241)) + *(*a9 + 4 * (v236 - v242))) * a7 + 128) >> 8) + v95;
          v97 = v96 >= v29;
          if (v96 >= v29)
          {
            v29 = v29;
          }

          else
          {
            v29 = v96;
          }

          if (!v97)
          {
LABEL_160:
            v42 = 5;
            goto LABEL_220;
          }
        }

        else
        {
          v98 = v95 >= v29;
          if (v95 >= v29)
          {
            v29 = v29;
          }

          else
          {
            v29 = v95;
          }

          if (!v98)
          {
            goto LABEL_160;
          }
        }

LABEL_219:
        if (v42 == -1)
        {
          goto LABEL_321;
        }

        goto LABEL_220;
      }
    }

    v28 = v243;
    goto LABEL_219;
  }

  v28 = v24;
  v29 = (((*(a9[1] + 4 * (v26 - v19)) + *(*a9 + 4 * (v24 - v18))) * a7 + 128) >> 8) + v27;
  v245 = a7;
  if (a6 < 6)
  {
    goto LABEL_13;
  }

LABEL_11:
  v241 = v19;
  v242 = v18;
LABEL_321:
  v179 = 8;
  v180 = v28;
  do
  {
    v182 = *(a1 + 8760);
    v183 = *(a1 + 8764);
    v184 = *(a1 + 8752);
    v185 = *(a1 + 8756);
    v186 = v25 - 1;
    if (v180 <= v182 || v180 >= v183 || v25 <= v184 || v25 >= v185)
    {
      if (v184 <= v186 && v185 >= v186)
      {
        v191 = -1;
        if (v182 > v180 || v183 < v180)
        {
          goto LABEL_340;
        }

        v200 = v186;
        v201 = (*v10)(v250 + v249, v248, v246 + v180 * v247 + v186);
        if (v201 < v29)
        {
          if (a9)
          {
            v202 = ((*(a9[1] + 4 * (v200 - v241)) + *(*a9 + 4 * (v180 - v242))) * a7 + 128) >> 8;
          }

          else
          {
            v202 = 0;
          }

          v220 = v202 + v201;
          v221 = v220 >= v29;
          if (v220 >= v29)
          {
            v29 = v29;
          }

          else
          {
            v29 = v220;
          }

          if (v221)
          {
            v191 = -1;
          }

          else
          {
            v191 = 0;
          }

LABEL_340:
          if (*(a1 + 8752) <= v25 && *(a1 + 8756) >= v25)
          {
            v192 = (v180 - 1);
            if (*(a1 + 8760) <= v192 && *(a1 + 8764) >= v192)
            {
              v193 = (*v10)(v250 + v249, v248, v246 + v247 * v192 + v25);
              v194 = v29;
              if (v193 < v29)
              {
                a7 = v245;
                if (a9)
                {
                  v195 = ((*(a9[1] + 4 * (v25 - v241)) + *(*a9 + 4 * ((v180 - 1) - v242))) * v245 + 128) >> 8;
                }

                else
                {
                  v195 = 0;
                }

                v225 = v195 + v193;
                if (v225 >= v29)
                {
                  v29 = v29;
                }

                else
                {
                  v29 = v225;
                }

                if (v225 < v194)
                {
                  v191 = 1;
                }

                if (*(a1 + 8752) > v25)
                {
LABEL_420:
                  v228 = (v25 + 1);
                  if (*(a1 + 8752) > v228)
                  {
                    goto LABEL_322;
                  }

                  if (*(a1 + 8756) < v228)
                  {
                    goto LABEL_322;
                  }

                  if (*(a1 + 8760) > v180)
                  {
                    goto LABEL_322;
                  }

                  if (*(a1 + 8764) < v180)
                  {
                    goto LABEL_322;
                  }

                  v214 = (*v10)(v250 + v249, v248, v246 + v180 * v247 + (v25 + 1));
                  if (v214 >= v29)
                  {
                    goto LABEL_322;
                  }

                  if (a9)
                  {
                    v215 = a9[1];
                    v216 = *(*a9 + 4 * (v180 - v242));
                    v217 = (v25 + 1) - v241;
LABEL_386:
                    v218 = (((*(v215 + 4 * v217) + v216) * a7 + 128) >> 8) + v214;
                    v219 = v218 >= v29;
                    if (v218 >= v29)
                    {
                      v29 = v29;
                    }

                    else
                    {
                      v29 = v218;
                    }

                    if (!v219)
                    {
                      goto LABEL_431;
                    }

                    goto LABEL_322;
                  }

                  goto LABEL_427;
                }

LABEL_400:
                if (*(a1 + 8756) >= v25)
                {
                  v222 = (v180 + 1);
                  if (*(a1 + 8760) <= v222 && *(a1 + 8764) >= v222)
                  {
                    v223 = (*v10)(v250 + v249, v248, v246 + v247 * v222 + v25);
                    if (v223 < v29)
                    {
                      v224 = a9 ? ((*(a9[1] + 4 * (v25 - v241)) + *(*a9 + 4 * ((v180 + 1) - v242))) * a7 + 128) >> 8 : 0;
                      v226 = v224 + v223;
                      v227 = v226 >= v29;
                      v29 = v226 >= v29 ? v29 : v226;
                      if (!v227)
                      {
                        v191 = 2;
                      }
                    }
                  }
                }

                goto LABEL_420;
              }

              a7 = v245;
            }
          }

          if (*(a1 + 8752) > v25)
          {
            goto LABEL_420;
          }

          goto LABEL_400;
        }
      }

      v191 = -1;
      goto LABEL_340;
    }

    v196 = v246 + v180 * v247;
    v197 = v186;
    v198 = (*v10)(v250 + v249, v248, v196 + v186);
    if (v198 >= v29)
    {
      v191 = -1;
      v203 = v29;
    }

    else
    {
      if (a9)
      {
        v199 = ((*(a9[1] + 4 * (v197 - v241)) + *(*a9 + 4 * (v180 - v242))) * a7 + 128) >> 8;
      }

      else
      {
        v199 = 0;
      }

      v204 = v199 + v198;
      if (v204 >= v29)
      {
        v203 = v29;
      }

      else
      {
        v203 = v204;
      }

      if (v204 < v29)
      {
        v191 = 0;
      }

      else
      {
        v191 = -1;
      }
    }

    v205 = (*v10)(v250 + v249, v248, v246 + v247 * (v180 - 1) + v25);
    v206 = v203;
    if (v205 < v203)
    {
      v207 = a9 ? ((*(a9[1] + 4 * (v25 - v241)) + *(*a9 + 4 * ((v180 - 1) - v242))) * v245 + 128) >> 8 : 0;
      v208 = v207 + v205;
      v203 = v208 >= v203 ? v203 : v208;
      if (v208 < v206)
      {
        v191 = 1;
      }
    }

    v209 = (*v10)(v250 + v249, v248, v246 + v247 * (v180 + 1) + v25);
    v210 = v203;
    if (v209 >= v203)
    {
      v29 = v203;
      a7 = v245;
    }

    else
    {
      a7 = v245;
      if (a9)
      {
        v211 = ((*(a9[1] + 4 * (v25 - v241)) + *(*a9 + 4 * ((v180 + 1) - v242))) * v245 + 128) >> 8;
      }

      else
      {
        v211 = 0;
      }

      v212 = v211 + v209;
      if (v212 >= v210)
      {
        v29 = v210;
      }

      else
      {
        v29 = v212;
      }

      if (v212 < v210)
      {
        v191 = 2;
      }
    }

    v213 = (v25 + 1);
    v214 = (*v10)(v250 + v249, v248, v196 + v213, v247);
    if (v214 >= v29)
    {
      goto LABEL_322;
    }

    if (a9)
    {
      v215 = a9[1];
      v216 = *(*a9 + 4 * (v180 - v242));
      v217 = v213 - v241;
      goto LABEL_386;
    }

LABEL_427:
    v229 = v214 >= v29;
    if (v214 >= v29)
    {
      v29 = v29;
    }

    else
    {
      v29 = v214;
    }

    if (!v229)
    {
LABEL_431:
      v191 = 3;
      goto LABEL_323;
    }

LABEL_322:
    if (v191 == -1)
    {
      break;
    }

LABEL_323:
    v181 = (&unk_273BC6220 + 4 * v191);
    v180 += *v181;
    v25 += v181[1];
    --v179;
  }

  while (v179);
  *a5 = v180;
  a5[1] = v25;
  return v29;
}

uint64_t vp8_diamond_search_sad_c(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5, int a6, int a7, _DWORD *a8, uint64_t a9, void *a10, __int16 *a11)
{
  v14 = a10;
  v15 = a11;
  v16 = **(a2 + 72);
  v18 = *(a2 + 80);
  v17 = *(a2 + 84);
  v19 = *(a1 + 7792);
  v20 = *(a1 + 7832);
  v73[0] = 0;
  v21 = *(a1 + 8696);
  v22 = *(a1 + 8704);
  v23 = *a11;
  v24 = a11[1];
  v25 = *(a1 + 8752);
  v26 = *(a1 + 8760);
  v27 = *(a1 + 8764);
  if (v25 <= a4[1])
  {
    LOWORD(v25) = a4[1];
  }

  if (*(a1 + 8756) < v25)
  {
    LOWORD(v25) = *(a1 + 8756);
  }

  a4[1] = v25;
  v28 = *a4;
  if (v26 > v28)
  {
    LOWORD(v28) = v26;
  }

  if (v27 < v28)
  {
    LOWORD(v28) = v27;
  }

  *a4 = v28;
  *a8 = 0;
  *a5 = v28;
  a5[1] = v25;
  v29 = v20 + *(a3 + 32) + (v19 * v28) + v25;
  v68 = v16;
  v67 = v18;
  v69 = v19;
  v70 = v17;
  v30 = (*a9)(v16 + v18);
  v31 = *(a1 + 8628);
  v66 = *(a1 + 8624) / v31 - a6;
  if (v66 < 1)
  {
    v47 = *a5;
    v48 = a5[1];
    v49 = v29;
  }

  else
  {
    v71 = 0;
    v32 = 0;
    v33 = 0;
    v61 = v24 >> 3;
    v62 = v23 >> 3;
    v63 = v22;
    v64 = v21;
    v59 = *(a1 + 8616) + 8 * v31 * a6;
    v60 = v29;
    v34 = (v30 + (((*(v21 + 4 * (*a5 - v62)) + *(v22 + 4 * (a5[1] - v61))) * a7 + 128) >> 8));
    v35 = 1;
    do
    {
      v72 = v33;
      if (*(a1 + 8628) >= 1)
      {
        v37 = 0;
        v38 = (v59 + 4 + 8 * v35);
        do
        {
          v40 = *(v38 - 1) + a5[1];
          if (v40 > *(a1 + 8752) && v40 < *(a1 + 8756))
          {
            v41 = *(v38 - 2) + *a5;
            if (v41 > *(a1 + 8760) && v41 < *(a1 + 8764))
            {
              v42 = v32;
              v43 = v29;
              v44 = v29 + *v38;
              v45 = v34;
              v46 = (*a9)(v68 + v67, v70, v44, v69);
              v34 = v45;
              v73[0] = v46;
              if (v46 < v45)
              {
                v39 = v46 + (((*(v63 + 4 * (v40 - v61)) + *(v64 + 4 * (v41 - v62))) * a7 + 128) >> 8);
                v73[0] = v39;
                if (v39 >= v45)
                {
                  v34 = v45;
                }

                else
                {
                  v34 = v39;
                }

                if (v39 >= v45)
                {
                  v32 = v42;
                }

                else
                {
                  v32 = v35;
                }
              }

              else
              {
                v32 = v42;
              }

              v29 = v43;
            }
          }

          ++v37;
          ++v35;
          v38 += 2;
        }

        while (v37 < *(a1 + 8628));
      }

      if (v32 == v71)
      {
        if (v29 == v60)
        {
          ++*a8;
          v29 = v60;
        }
      }

      else
      {
        v36 = v59 + 8 * v32;
        *a5 += *v36;
        a5[1] += *(v36 + 2);
        v29 += *(v36 + 4);
        v71 = v32;
      }

      v33 = v72 + 1;
    }

    while (v72 + 1 != v66);
    v47 = *a5;
    v48 = a5[1];
    v49 = v29;
    v15 = a11;
    v14 = a10;
  }

  v50 = (*(a9 + 8))(v68 + v67, v70, v49, v69, v73);
  if (v14)
  {
    v51 = 8 * v48;
    if (v51 >= 0x7FFF)
    {
      v51 = 0x7FFF;
    }

    if (v51 <= -32768)
    {
      v51 = -32768;
    }

    if (8 * v47 >= 0x7FFF)
    {
      v52 = 0x7FFF;
    }

    else
    {
      v52 = 8 * v47;
    }

    if (v52 <= -32768)
    {
      v52 = -32768;
    }

    v53 = (v52 - *v15) >> 1;
    if (v53 >= 2047)
    {
      v53 = 2047;
    }

    v54 = v53 & ~(v53 >> 31);
    v55 = (v51 - v15[1]) >> 1;
    if (v55 >= 2047)
    {
      v55 = 2047;
    }

    v56 = ((*(v14[1] + 4 * (v55 & ~(v55 >> 31))) + *(*v14 + 4 * v54)) * *(a1 + 8632) + 128) >> 8;
  }

  else
  {
    v56 = 0;
  }

  return (v56 + v50);
}

uint64_t vp8_full_search_sad(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, int a5, int a6, uint64_t a7, void *a8, __int16 *a9)
{
  v10 = a1;
  v11 = **(a2 + 72);
  v13 = *(a2 + 80);
  v12 = *(a2 + 84);
  v14 = *(a1 + 7792);
  v63 = v14;
  v15 = *(a1 + 7832);
  v64 = 0;
  v16 = *a4;
  v17 = a4[1];
  v18 = v16 - a6;
  v19 = v16 + a6;
  v20 = v17 - a6;
  v21 = v17 + a6;
  v61 = *(a1 + 8696);
  v60 = *(a1 + 8704);
  v51 = a9[1];
  v57 = v15 + *(a3 + 32);
  v58 = *a9;
  *(a3 + 48) = *a4;
  *(a3 + 50) = v17;
  v23 = v11;
  v24 = v13;
  v25 = v12;
  v56 = v57 + v14 * v16 + v17;
  v26 = (*a7)(v11 + v13);
  if (v20 <= v10[2188])
  {
    v27 = v10[2188];
  }

  else
  {
    v27 = v20;
  }

  if (v21 >= v10[2189])
  {
    v28 = v10[2189];
  }

  else
  {
    v28 = v21;
  }

  v29 = v10[2190];
  if (v18 > v29)
  {
    v29 = v18;
  }

  if (v19 >= v10[2191])
  {
    v30 = v10[2191];
  }

  else
  {
    v30 = v19;
  }

  v31 = *(a3 + 48);
  v55 = a3;
  v32 = *(a3 + 50);
  v54 = v30;
  if (v29 < v30 && v27 < v28)
  {
    v48 = v10;
    v33 = v58 >> 3;
    v59 = v51 >> 3;
    v50 = v57 + v27;
    v52 = v33;
    v34 = v26 + (((*(v61 + 4 * (*(a3 + 48) - v33)) + *(v60 + 4 * (*(a3 + 50) - v59))) * a5 + 128) >> 8);
    v35 = v29;
    v53 = v27;
    do
    {
      v36 = v50 + v35 * v63;
      v37 = v27;
      do
      {
        v38 = (*a7)(v23 + v24, v25, v36, v63);
        v64 = v38;
        if (v38 < v34)
        {
          v39 = v38 + (((*(v60 + 4 * (v37 - v59)) + *(v61 + 4 * (v35 - v52))) * a5 + 128) >> 8);
          v64 = v39;
          if (v39 < v34)
          {
            *(v55 + 48) = v35;
            *(v55 + 50) = v37;
            v34 = v39;
            v56 = v36;
          }
        }

        ++v36;
        ++v37;
      }

      while (v28 != v37);
      ++v35;
      v27 = v53;
    }

    while (v54 != v35);
    v31 = *(v55 + 48);
    v32 = *(v55 + 50);
    v10 = v48;
  }

  v40 = (*(a7 + 8))(v23 + v24, v25, v56, v63, &v64);
  if (a8)
  {
    v41 = 8 * v32;
    if (v41 >= 0x7FFF)
    {
      v41 = 0x7FFF;
    }

    if (v41 <= -32768)
    {
      v41 = -32768;
    }

    if (8 * v31 >= 0x7FFF)
    {
      v42 = 0x7FFF;
    }

    else
    {
      v42 = 8 * v31;
    }

    if (v42 <= -32768)
    {
      v42 = -32768;
    }

    v43 = (v42 - *a9) >> 1;
    if (v43 >= 2047)
    {
      v43 = 2047;
    }

    v44 = v43 & ~(v43 >> 31);
    v45 = (v41 - a9[1]) >> 1;
    if (v45 >= 2047)
    {
      v45 = 2047;
    }

    v46 = ((*(a8[1] + 4 * (v45 & ~(v45 >> 31))) + *(*a8 + 4 * v44)) * v10[2158] + 128) >> 8;
  }

  else
  {
    v46 = 0;
  }

  return (v46 + v40);
}

uint64_t vp8_refining_search_sad_c(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, int a5, int a6, uint64_t a7, void *a8, __int16 *a9)
{
  v12 = *(a1 + 7792);
  v13 = **(a2 + 72);
  v14 = *(a2 + 84);
  v15 = *(a2 + 80);
  v16 = *(a1 + 7832) + *(a3 + 32) + *a4 * v12 + a4[1];
  v68 = 0;
  v17 = *(a1 + 8696);
  v18 = *(a1 + 8704);
  v60 = *a9;
  v19 = a9[1];
  v64 = v15;
  v65 = v13;
  v66 = v14;
  v20 = (*a7)(v13 + v15, v14, v16);
  v21 = *a4;
  v22 = a4[1];
  if (a6 >= 1)
  {
    v57 = v19 >> 3;
    v58 = v60 >> 3;
    v23 = (v20 + (((*(v17 + 4 * (*a4 - v58)) + *(v18 + 4 * (a4[1] - v57))) * a5 + 128) >> 8));
    v56 = -v12;
    v59 = v18;
    v63 = v12;
    do
    {
      if (*(a1 + 8752) >= v22 || *(a1 + 8756) <= v22 || (v24 = v21 - 1, v25 = (v21 - 1), *(a1 + 8760) >= v25) || *(a1 + 8764) <= v25)
      {
        v29 = -1;
        v30 = (a4[1] - 1);
        if (*(a1 + 8752) >= v30)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v26 = v23;
        v27 = (*a7)(v65 + v64, v66, v16 + v56, v12);
        v23 = v26;
        v68 = v27;
        if (v27 >= v26)
        {
          v29 = -1;
        }

        else
        {
          v28 = v27 + (((*(v59 + 4 * (v22 - v57)) + *(v17 + 4 * (v24 - v58))) * a5 + 128) >> 8);
          v68 = v28;
          if (v28 >= v26)
          {
            v23 = v26;
          }

          else
          {
            v23 = v28;
          }

          if (v28 < v26)
          {
            v29 = 0;
          }

          else
          {
            v29 = -1;
          }
        }

        v30 = (a4[1] - 1);
        if (*(a1 + 8752) >= v30)
        {
          goto LABEL_27;
        }
      }

      if (*(a1 + 8756) > v30)
      {
        v31 = *a4;
        if (*(a1 + 8760) < v31 && *(a1 + 8764) > v31)
        {
          v32 = v23;
          v33 = (*a7)(v65 + v64, v66, v16 - 1, v12);
          v23 = v32;
          v68 = v33;
          if (v33 < v32)
          {
            v34 = v33 + (((*(v59 + 4 * (v30 - v57)) + *(v17 + 4 * (v31 - v58))) * a5 + 128) >> 8);
            v68 = v34;
            v23 = v34 >= v32 ? v32 : v34;
            if (v34 < v32)
            {
              v29 = 1;
            }
          }
        }
      }

LABEL_27:
      v35 = (a4[1] + 1);
      if (*(a1 + 8752) < v35 && *(a1 + 8756) > v35)
      {
        v36 = *a4;
        if (*(a1 + 8760) < v36 && *(a1 + 8764) > v36)
        {
          v37 = v23;
          v38 = (*a7)(v65 + v64, v66, v16 + 1, v12);
          v23 = v37;
          v68 = v38;
          if (v38 < v37)
          {
            v39 = v38 + (((*(v59 + 4 * (v35 - v57)) + *(v17 + 4 * (v36 - v58))) * a5 + 128) >> 8);
            v68 = v39;
            v23 = v39 >= v37 ? v37 : v39;
            if (v39 < v37)
            {
              v29 = 2;
            }
          }
        }
      }

      v21 = *a4;
      v40 = a4[1];
      v22 = a4[1];
      if (*(a1 + 8752) >= v40 || *(a1 + 8756) <= v40)
      {
        goto LABEL_48;
      }

      v41 = (v21 + 1);
      if (*(a1 + 8760) >= v41 || *(a1 + 8764) <= v41)
      {
        goto LABEL_47;
      }

      v42 = v23;
      v43 = (*a7)(v65 + v64, v66, v16 + v63);
      v23 = v42;
      v68 = v43;
      if (v43 >= v42)
      {
        v21 = *a4;
        v22 = a4[1];
        v12 = v63;
        if (v29 == -1)
        {
          break;
        }
      }

      else
      {
        v44 = v43 + (((*(v59 + 4 * (v40 - v57)) + *(v17 + 4 * ((v21 + 1) - v58))) * a5 + 128) >> 8);
        v68 = v44;
        v21 = *a4;
        v22 = a4[1];
        v45 = v44 >= v23;
        if (v44 >= v23)
        {
          v23 = v23;
        }

        else
        {
          v23 = v44;
        }

        if (v45)
        {
LABEL_47:
          v12 = v63;
LABEL_48:
          if (v29 == -1)
          {
            break;
          }

          goto LABEL_49;
        }

        v29 = 3;
        v12 = v63;
      }

LABEL_49:
      v46 = (&unk_273BC6230 + 4 * v29);
      v47 = *v46;
      v21 += v47;
      *a4 = v21;
      LODWORD(v46) = v46[1];
      v22 += v46;
      a4[1] = v22;
      v16 += v46 + v12 * v47;
      --a6;
    }

    while (a6);
  }

  v48 = (*(a7 + 8))(v65 + v64, v66, v16, v12, &v68);
  if (a8)
  {
    v49 = 8 * v22;
    if (v49 >= 0x7FFF)
    {
      v49 = 0x7FFF;
    }

    if (v49 <= -32768)
    {
      v49 = -32768;
    }

    if (8 * v21 >= 0x7FFF)
    {
      v50 = 0x7FFF;
    }

    else
    {
      v50 = 8 * v21;
    }

    if (v50 <= -32768)
    {
      v50 = -32768;
    }

    v51 = (v50 - *a9) >> 1;
    if (v51 >= 2047)
    {
      v51 = 2047;
    }

    v52 = v51 & ~(v51 >> 31);
    v53 = (v49 - a9[1]) >> 1;
    if (v53 >= 2047)
    {
      v53 = 2047;
    }

    v54 = ((*(a8[1] + 4 * (v53 & ~(v53 >> 31))) + *(*a8 + 4 * v52)) * *(a1 + 8632) + 128) >> 8;
  }

  else
  {
    v54 = 0;
  }

  return (v54 + v48);
}

uint64_t vp8_filter_by_weight8x8_c(uint64_t result, int a2, uint64_t a3, int a4, int a5)
{
  v5 = 16 - a5;
  if (a4 == 1 && a2 == 1)
  {
    v6 = *(a3 + 6);
    v7 = (a3 + 3);
    v8 = (result + 3);
    v9 = 8;
    do
    {
      *(v7 - 3) = (v5 * *(v7 - 3) + *(v8 - 3) * a5 + 8) >> 4;
      *(v7 - 2) = (v5 * *(v7 - 2) + *(v8 - 2) * a5 + 8) >> 4;
      *(v7 - 1) = (v5 * *(v7 - 1) + *(v8 - 1) * a5 + 8) >> 4;
      *v7 = (v5 * *v7 + *v8 * a5 + 8) >> 4;
      v7[1] = (v5 * v7[1] + v8[1] * a5 + 8) >> 4;
      v7[2] = (v5 * v7[2] + v8[2] * a5 + 8) >> 4;
      v7[3] = (v5 * v6 + v8[3] * a5 + 8) >> 4;
      v10 = (v5 * v7[4] + v8[4] * a5 + 8) >> 4;
      v6 = v10;
      v7[4] = v10;
      ++v7;
      ++v8;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = (a3 + 3);
    v12 = (result + 3);
    v13 = 8;
    do
    {
      *(v11 - 3) = (v5 * *(v11 - 3) + *(v12 - 3) * a5 + 8) >> 4;
      *(v11 - 2) = (v5 * *(v11 - 2) + *(v12 - 2) * a5 + 8) >> 4;
      *(v11 - 1) = (v5 * *(v11 - 1) + *(v12 - 1) * a5 + 8) >> 4;
      *v11 = (v5 * *v11 + *v12 * a5 + 8) >> 4;
      v11[1] = (v5 * v11[1] + v12[1] * a5 + 8) >> 4;
      v11[2] = (v5 * v11[2] + v12[2] * a5 + 8) >> 4;
      v11[3] = (v5 * v11[3] + v12[3] * a5 + 8) >> 4;
      v11[4] = (v5 * v11[4] + v12[4] * a5 + 8) >> 4;
      v11 += a4;
      v12 += a2;
      --v13;
    }

    while (v13);
  }

  return result;
}

unsigned __int8 *vp8_filter_by_weight4x4_c(unsigned __int8 *result, int a2, unsigned __int8 *a3, int a4, int a5)
{
  *a3 = ((16 - a5) * *a3 + *result * a5 + 8) >> 4;
  a3[1] = ((16 - a5) * a3[1] + result[1] * a5 + 8) >> 4;
  a3[2] = ((16 - a5) * a3[2] + result[2] * a5 + 8) >> 4;
  a3[3] = ((16 - a5) * a3[3] + result[3] * a5 + 8) >> 4;
  v5 = &result[a2];
  v6 = &a3[a4];
  *v6 = ((16 - a5) * *v6 + *v5 * a5 + 8) >> 4;
  v6[1] = ((16 - a5) * v6[1] + v5[1] * a5 + 8) >> 4;
  v6[2] = ((16 - a5) * v6[2] + v5[2] * a5 + 8) >> 4;
  v6[3] = ((16 - a5) * v6[3] + v5[3] * a5 + 8) >> 4;
  v7 = &v5[a2];
  v8 = &v6[a4];
  *v8 = ((16 - a5) * *v8 + *v7 * a5 + 8) >> 4;
  v8[1] = ((16 - a5) * v8[1] + v7[1] * a5 + 8) >> 4;
  v8[2] = ((16 - a5) * v8[2] + v7[2] * a5 + 8) >> 4;
  v8[3] = ((16 - a5) * v8[3] + v7[3] * a5 + 8) >> 4;
  v9 = &v7[a2];
  v10 = &v8[a4];
  *v10 = ((16 - a5) * *v10 + *v9 * a5 + 8) >> 4;
  v10[1] = ((16 - a5) * v10[1] + v9[1] * a5 + 8) >> 4;
  v10[2] = ((16 - a5) * v10[2] + v9[2] * a5 + 8) >> 4;
  v10[3] = ((16 - a5) * v10[3] + v9[3] * a5 + 8) >> 4;
  return result;
}

uint64_t vp8_multiframe_quality_enhance(uint64_t result)
{
  v175 = *MEMORY[0x277D85DE8];
  v3 = *(result + 3044);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = *(result + 3048);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = *(result + 1848);
      v8 = *(result + 3028);
      v9 = *(result + 3104);
      v169 = *(result + 5848);
      v170 = *(result + 3072);
      v10 = *(result + 2760);
      v11 = *(result + 2752);
      result = *(result + 2744);
      v13 = *(v7 + 64);
      v12 = *(v7 + 72);
      v14 = *(v7 + 56);
      v163 = v8;
      while (v5 < 1)
      {
LABEL_5:
        v14 += *(v7 + 16) - v5;
        v15 = 8 * (*(v7 + 36) - v5);
        v13 = (v13 + v15);
        v12 = (v12 + v15);
        result += 16 * (v4[676] - v5);
        v16 = 8 * (v4[681] - v5);
        v11 += v16;
        v10 += v16;
        v9 += 76;
        if (++v6 >= v3)
        {
          return result;
        }
      }

      v17 = 0;
      v164 = v6;
      while (1)
      {
        v172 = v11;
        v173 = v10;
        v171 = result;
        v168 = v17;
        if (!v8)
        {
          v74 = v1;
LABEL_91:
          multiframe_quality_enhance_block(0x10u, v170, v169, v14, v13, v12, *(v7 + 16), *(v7 + 36), result, v11, v10, v4[676], v4[681]);
          result = v171;
          v11 = v172;
          v10 = v173;
          v70 = v168;
          v1 = v74;
          goto LABEL_10;
        }

        if (v8 != 1)
        {
LABEL_8:
          v18 = *(v7 + 16);
          v19 = v4[676];
          *result = *v14;
          *(result + v19) = *(v14 + v18);
          v20 = (v14 + v18 + v18);
          v21 = (result + v19 + v19);
          *v21 = *v20;
          v22 = (v20 + v18);
          v23 = (v21 + v19);
          *v23 = *v22;
          v24 = (v22 + v18);
          v25 = (v23 + v19);
          *v25 = *v24;
          v26 = (v24 + v18);
          v27 = (v25 + v19);
          *v27 = *v26;
          v28 = (v26 + v18);
          v29 = (v27 + v19);
          *v29 = *v28;
          v30 = (v28 + v18);
          v31 = (v29 + v19);
          *v31 = *v30;
          v32 = (v30 + v18);
          v33 = (v31 + v19);
          *v33 = *v32;
          v34 = (v32 + v18);
          v35 = (v33 + v19);
          *v35 = *v34;
          v36 = (v34 + v18);
          v37 = (v35 + v19);
          *v37 = *v36;
          v38 = (v36 + v18);
          v39 = (v37 + v19);
          *v39 = *v38;
          v40 = (v38 + v18);
          v41 = (v39 + v19);
          *v41 = *v40;
          v42 = (v40 + v18);
          v43 = (v41 + v19);
          *v43 = *v42;
          v44 = (v42 + v18);
          v45 = (v43 + v19);
          *v45 = *v44;
          *(v45 + v19) = *(v44 + v18);
          v46 = *(v7 + 36);
          v47 = v4[681];
          *v11 = *v13;
          *&v11[v47] = *(v13 + v46);
          v48 = (v13 + v46 + v46);
          v49 = &v11[v47 + v47];
          *v49 = *v48;
          v50 = (v48 + v46);
          v51 = &v49[v47];
          *v51 = *v50;
          v52 = (v50 + v46);
          v53 = &v51[v47];
          *v53 = *v52;
          v54 = (v52 + v46);
          v55 = &v53[v47];
          *v55 = *v54;
          v56 = (v54 + v46);
          v57 = &v55[v47];
          *v57 = *v56;
          *&v57[v47] = *(v56 + v46);
          v58 = *(v7 + 36);
          v59 = v4[681];
          *v10 = *v12;
          *&v10[v59] = *(v12 + v58);
          v60 = (v12 + v58 + v58);
          v61 = &v10[v59 + v59];
          *v61 = *v60;
          v62 = (v60 + v58);
          v63 = &v61[v59];
          *v63 = *v62;
          v64 = (v62 + v58);
          v65 = &v63[v59];
          *v65 = *v64;
          v66 = (v64 + v58);
          v67 = &v65[v59];
          *v67 = *v66;
          v68 = (v66 + v58);
          v69 = &v67[v59];
          *v69 = *v68;
          *&v69[v59] = *(v68 + v58);
          goto LABEL_9;
        }

        if (v9[9])
        {
          v71.i64[0] = 0x100000001;
          v71.i64[1] = 0x100000001;
          v174 = v71;
          v72 = 1;
          v2 = 1;
          goto LABEL_15;
        }

        v75 = *v9;
        if (v75 != 9)
        {
          if (v75 < 5)
          {
            goto LABEL_29;
          }

          v78 = *(v9 + 2);
          if (v78 < 0)
          {
            v78 = -v78;
          }

          if (v78 > 2)
          {
LABEL_29:
            v80 = 0;
          }

          else
          {
            v79 = *(v9 + 3);
            if (v79 < 0)
            {
              v79 = -v79;
            }

            v80 = v79 < 3;
          }

          v174 = vdupq_n_s32(v80);
          v2 = v80;
          v1 = v80;
          v73 = 4 * v80;
          v167 = v80;
          if (!(4 * v80))
          {
            goto LABEL_8;
          }

          goto LABEL_82;
        }

        if (*(v9 + 6) > 2)
        {
          v76 = 0;
          v77 = v167;
          v174.i32[0] = 0;
          if (!v1)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v76 = *(v9 + 7) < 3;
          v77 = v167;
          v174.i32[0] = v76;
          if (!v1)
          {
            goto LABEL_43;
          }
        }

        if (*(v9 + 8) > 2)
        {
          v76 = 0;
          v174.i32[0] = 0;
          if (!v77)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v76 = (*(v9 + 9) < 3) & v76;
          v174.i32[0] = v76;
          if (!v77)
          {
            goto LABEL_43;
          }
        }

        if (*(v9 + 14) > 2)
        {
          v76 = 0;
          v174.i32[0] = 0;
          if (!v2)
          {
LABEL_43:
            v174.i32[1] = 1;
            if (!v76)
            {
              goto LABEL_64;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v76 = (*(v9 + 15) < 3) & v76;
          v174.i32[0] = v76;
          if (!v2)
          {
            goto LABEL_43;
          }
        }

        if (*(v9 + 16) > 2)
        {
          v76 = 0;
          v174.i64[0] = 0x100000000;
LABEL_64:
          v174.i64[1] = 0x100000001;
          v2 = 1;
          v1 = 1;
          v73 = v76 + 3;
          v167 = 1;
          if (!v73)
          {
            goto LABEL_8;
          }

          goto LABEL_82;
        }

        v76 = (*(v9 + 17) < 3) & v76;
        v174.i64[0] = v76 | 0x100000000;
        if (!v76)
        {
          goto LABEL_64;
        }

LABEL_44:
        if (*(v9 + 10) > 2)
        {
          v82 = 0;
LABEL_50:
          v174.i32[1] = v82;
          goto LABEL_52;
        }

        v81 = *(v9 + 11);
        v174.i32[1] = v81 < 3;
        if (v81 > 2)
        {
          v82 = 0;
          goto LABEL_52;
        }

        if (*(v9 + 12) > 2)
        {
          v82 = 0;
          v174.i32[1] = 0;
          if (!v77)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v82 = *(v9 + 13) < 3 && v81 < 3;
          v174.i32[1] = v82;
          if (!v77)
          {
            goto LABEL_52;
          }
        }

        if (*(v9 + 18) > 2)
        {
          v82 = 0;
          v174.i32[1] = 0;
          if (v2)
          {
LABEL_102:
            v162 = *(v9 + 20) <= 2 && *(v9 + 21) < 3;
            v82 &= v162;
            goto LABEL_50;
          }
        }

        else
        {
          v82 = (*(v9 + 19) < 3) & v82;
          v174.i32[1] = v82;
          if (v2)
          {
            goto LABEL_102;
          }
        }

LABEL_52:
        if (*(v9 + 22) > 2)
        {
          v72 = 0;
          v174.i32[2] = 0;
          if (!v82)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v72 = *(v9 + 23) < 3;
          v174.i32[2] = v72;
          if (!v82)
          {
            goto LABEL_75;
          }
        }

        if (*(v9 + 24) > 2)
        {
          v174.i32[2] = 0;
LABEL_62:
          v72 = 0;
          goto LABEL_75;
        }

        v174.i32[2] = (*(v9 + 25) < 3) & v72;
        if (!v174.i32[2])
        {
          goto LABEL_62;
        }

        if (*(v9 + 30) > 2)
        {
          v72 = 0;
          v174.i32[2] = 0;
          if (v2)
          {
LABEL_67:
            v83 = *(v9 + 32) <= 2 && *(v9 + 33) < 3;
            v72 &= v83;
            v174.i32[2] = v72;
          }
        }

        else
        {
          v72 = *(v9 + 31) < 3;
          v174.i32[2] = v72;
          if (v2)
          {
            goto LABEL_67;
          }
        }

LABEL_75:
        if (*(v9 + 26) > 2)
        {
          v2 = 0;
          v174.i32[3] = 0;
          if (v82)
          {
LABEL_77:
            if (*(v9 + 28) > 2)
            {
              v2 = 0;
              v174.i32[3] = 0;
              if (!v72)
              {
                goto LABEL_15;
              }
            }

            else
            {
              v2 &= *(v9 + 29) < 3;
              v174.i32[3] = v2;
              if (!v72)
              {
                goto LABEL_15;
              }
            }

            if (*(v9 + 34) > 2)
            {
              v174.i32[3] = 0;
            }

            else
            {
              v174.i32[3] = *(v9 + 35) < 3 && v2;
              if (v174.i32[3])
              {
                v2 = *(v9 + 36) <= 2 && *(v9 + 37) < 3;
                v174.i32[3] = v2;
                v72 = 1;
LABEL_15:
                v1 = 1;
                v73 = v2 + v72 + 2;
                v167 = v72;
                if (v2 + v72 == -2)
                {
                  goto LABEL_8;
                }

                goto LABEL_82;
              }
            }

            v2 = 0;
            v72 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          v2 = *(v9 + 27) < 3;
          v174.i32[3] = v2;
          if (v82)
          {
            goto LABEL_77;
          }
        }

        v1 = 0;
        v73 = v2 + v72 + 1;
        v167 = v72;
        if (v2 + v72 == -1)
        {
          goto LABEL_8;
        }

LABEL_82:
        v74 = v1;
        if (v73 > 3)
        {
          goto LABEL_91;
        }

        v165 = v2;
        v166 = v9;
        v84 = 0;
        v85 = 1;
        do
        {
          while (1)
          {
            v122 = v85;
            v123 = 8 * v84;
            v124 = 4 * v84;
            if (v174.i32[2 * v84])
            {
              multiframe_quality_enhance_block(8u, v170, v169, (v14 + v123 * *(v7 + 16)), (v13 + v124 * *(v7 + 36)), (v12 + v124 * *(v7 + 36)), *(v7 + 16), *(v7 + 36), (result + v123 * v4[676]), &v11[v124 * v4[681]], &v10[v124 * v4[681]], v4[676], v4[681]);
            }

            else
            {
              v125 = v124 * *(v7 + 36);
              v126 = (v13 + v125);
              v127 = v124 * v4[681];
              v128 = &v11[v127];
              v129 = (v12 + v125);
              v130 = &v10[v127];
              v131 = *(v7 + 16);
              v132 = (v14 + v123 * v131);
              v133 = v4[676];
              v134 = (result + v123 * v133);
              *v134 = *v132;
              v135 = (v132 + v131);
              v136 = (v134 + v133);
              *v136 = *v135;
              v137 = (v135 + v131);
              v138 = (v136 + v133);
              *v138 = *v137;
              v139 = (v137 + v131);
              v140 = (v138 + v133);
              *v140 = *v139;
              v141 = (v139 + v131);
              v142 = (v140 + v133);
              *v142 = *v141;
              v143 = (v141 + v131);
              v144 = (v142 + v133);
              *v144 = *v143;
              v145 = (v143 + v131);
              v146 = (v144 + v133);
              *v146 = *v145;
              *(v146 + v133) = *(v145 + v131);
              *v128 = *v126;
              *v130 = *v129;
              v147 = *(v7 + 36);
              v148 = (v126 + v147);
              v149 = v4[681];
              v150 = &v128[v149];
              v151 = (v129 + v147);
              v152 = &v130[v149];
              *v150 = *v148;
              *v152 = *v151;
              v153 = *(v7 + 36);
              v154 = (v148 + v153);
              v155 = v4[681];
              v156 = &v150[v155];
              v157 = (v151 + v153);
              v158 = &v152[v155];
              *v156 = *v154;
              *v158 = *v157;
              v159 = *(v7 + 36);
              v160 = v4[681];
              *&v156[v160] = *(v154 + v159);
              *&v158[v160] = *(v157 + v159);
            }

            if (v174.i32[2 * v84 + 1])
            {
              break;
            }

            v86 = v124 * *(v7 + 36) + 4;
            v87 = (v13 + v86);
            v88 = v124 * v4[681] + 4;
            v11 = v172;
            v10 = v173;
            v89 = &v172[v88];
            v90 = (v12 + v86);
            v91 = &v173[v88];
            v92 = *(v7 + 16);
            v93 = (v14 + v123 * v92 + 8);
            v94 = v4[676];
            result = v171;
            v95 = (v171 + v123 * v94 + 8);
            *v95 = *v93;
            v96 = (v93 + v92);
            v97 = (v95 + v94);
            *v97 = *v96;
            v98 = (v96 + v92);
            v99 = (v97 + v94);
            *v99 = *v98;
            v100 = (v98 + v92);
            v101 = (v99 + v94);
            *v101 = *v100;
            v102 = (v100 + v92);
            v103 = (v101 + v94);
            *v103 = *v102;
            v104 = (v102 + v92);
            v105 = (v103 + v94);
            *v105 = *v104;
            v106 = (v104 + v92);
            v107 = (v105 + v94);
            *v107 = *v106;
            *(v107 + v94) = *(v106 + v92);
            *v89 = *v87;
            *v91 = *v90;
            v108 = *(v7 + 36);
            v109 = (v87 + v108);
            v110 = v4[681];
            v111 = &v89[v110];
            v112 = (v90 + v108);
            v113 = &v91[v110];
            *v111 = *v109;
            *v113 = *v112;
            v114 = *(v7 + 36);
            v115 = (v109 + v114);
            v116 = v4[681];
            v117 = &v111[v116];
            v118 = (v112 + v114);
            v119 = &v113[v116];
            *v117 = *v115;
            *v119 = *v118;
            v120 = *(v7 + 36);
            v121 = v4[681];
            *&v117[v121] = *(v115 + v120);
            *&v119[v121] = *(v118 + v120);
            v85 = 0;
            v84 = 1;
            if ((v122 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          v161 = v124 * v4[681] + 4;
          multiframe_quality_enhance_block(8u, v170, v169, (v14 + v123 * *(v7 + 16) + 8), (v13 + v124 * *(v7 + 36) + 4), (v12 + v124 * *(v7 + 36) + 4), *(v7 + 16), *(v7 + 36), (v171 + v123 * v4[676] + 8), &v172[v161], &v173[v161], v4[676], v4[681]);
          result = v171;
          v11 = v172;
          v10 = v173;
          v85 = 0;
          v84 = 1;
        }

        while ((v122 & 1) != 0);
LABEL_90:
        v1 = v74;
        v8 = v163;
        v6 = v164;
        v9 = v166;
        v2 = v165;
LABEL_9:
        v70 = v168;
LABEL_10:
        ++v14;
        ++v13;
        ++v12;
        result += 16;
        v11 += 8;
        v10 += 8;
        v9 += 76;
        v17 = v70 + 1;
        v5 = v4[762];
        if (v17 >= v5)
        {
          v3 = v4[761];
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *multiframe_quality_enhance_block(unsigned int a1, int a2, int a3, _OWORD *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, _OWORD *a9, unsigned __int8 *a10, unsigned __int8 *a11, int a12, unsigned int a13)
{
  v17 = a3;
  v19 = a10;
  v18 = a11;
  v98 = a2 - a3;
  v101 = 0;
  v99 = a7;
  if (a1 == 16)
  {
    v20 = (vpx_variance16x16(a9, a12, &multiframe_quality_enhance_block_VP8_ZEROS, 0, &v101) + 128) >> 8;
    v95 = (vpx_variance16x16(a4, a7, &multiframe_quality_enhance_block_VP8_ZEROS, 0, &v101) + 128) >> 8;
    vpx_variance16x16(a4, a7, a9, a12, &v101);
    v21 = (v101 + 128) >> 8;
    v22 = a13;
    vpx_variance8x8(a5, a8, a10, a13, &v101);
    v23 = (v101 + 32) >> 6;
    result = vpx_variance8x8(a6, a8, a11, a13, &v101);
    v25 = (v101 + 32) >> 6;
  }

  else
  {
    v20 = (vpx_variance8x8(a9, a12, &multiframe_quality_enhance_block_VP8_ZEROS, 0, &v101) + 32) >> 6;
    v95 = (vpx_variance8x8(a4, a7, &multiframe_quality_enhance_block_VP8_ZEROS, 0, &v101) + 32) >> 6;
    vpx_variance8x8(a4, a7, a9, a12, &v101);
    v21 = (v101 + 32) >> 6;
    v22 = a13;
    vpx_variance4x4(a5, a8, a10, a13, &v101);
    v23 = (v101 + 8) >> 4;
    result = vpx_variance4x4(a6, a8, a11, a13, &v101);
    v25 = (v101 + 8) >> 4;
  }

  v26 = __clz(v20) ^ 0x1F;
  if (v20 < 2)
  {
    v26 = 0;
  }

  v27 = v26 + (v98 >> 4);
  if (v17 >= 4)
  {
    v28 = v99;
    v29 = a9;
    do
    {
      v17 >>= 2;
      ++v27;
    }

    while (v17 > 3);
  }

  else
  {
    v28 = v99;
    v29 = a9;
  }

  v30 = v27 * v27;
  v31 = v21 >= v27 * v27 || 4 * v23 >= v30;
  if (v31 || (v30 > 4 * v25 ? (v32 = v20 > 5 * v95) : (v32 = 1), v32))
  {
    v33 = v28;
    result = a4 + v28;
    v34 = (v29 + a12);
    v35 = &result[v33];
    v36 = (v34 + a12);
    v37 = &result[v33 + v33];
    v38 = (v36 + a12);
    v39 = &v37[v33];
    v40 = (v38 + a12);
    v41 = &v37[v33 + v33];
    v42 = (v40 + a12);
    v43 = &v41[v33];
    v44 = (v42 + a12);
    v45 = &v41[v33 + v33];
    v46 = (v44 + a12);
    if (a1 == 16)
    {
      *v29 = *a4;
      *(v29 + a12) = *(a4 + v33);
      *v36 = *v35;
      *(v36 + a12) = *&v35[v33];
      *v40 = *v39;
      *(v40 + a12) = *&v39[v33];
      *v44 = *v43;
      *(v44 + a12) = *&v43[v33];
      v47 = (v46 + a12);
      *v47 = *&v45[v33];
      v48 = &v45[v33 + v33];
      v49 = (v47 + a12);
      *v49 = *v48;
      v50 = &v48[v33];
      v51 = (v49 + a12);
      *v51 = *v50;
      v52 = &v50[v33];
      v53 = (v51 + a12);
      *v53 = *v52;
      v54 = &v52[v33];
      v55 = (v53 + a12);
      *v55 = *v54;
      v56 = &v54[v33];
      v57 = (v55 + a12);
      *v57 = *v56;
      v58 = &v56[v33];
      v59 = (v57 + a12);
      *v59 = *v58;
      *(v59 + a12) = *(v58 + v33);
      v60 = a8;
      *a10 = *a5;
      v61 = &a10[v22];
      *v61 = *(a5 + a8);
      v62 = (a5 + v60 + v60);
      v63 = &v61[v22];
      *v63 = *v62;
      v64 = (v62 + a8);
      v65 = &v63[v22];
      *v65 = *v64;
      v66 = (v64 + a8);
      v67 = &v65[v22];
      *v67 = *v66;
      v68 = (v66 + a8);
      v69 = &v67[v22];
      *v69 = *v68;
      v70 = (v68 + a8);
      v71 = &v69[v22];
      *v71 = *v70;
      *&v71[v22] = *(v70 + a8);
      *a11 = *a6;
      v72 = &a11[v22];
      *v72 = *(a6 + a8);
      v73 = (a6 + v60 + v60);
      v74 = &v72[v22];
      *v74 = *v73;
      v75 = (v73 + a8);
      v76 = &v74[v22];
      *v76 = *v75;
      v77 = (v75 + a8);
      v78 = &v76[v22];
      *v78 = *v77;
      v79 = (v77 + a8);
      v80 = &v78[v22];
      *v80 = *v79;
      v81 = (v79 + a8);
      v82 = &v80[v22];
      *v82 = *v81;
      *&v82[v22] = *(v81 + a8);
    }

    else
    {
      v83 = a1 >> 1;
      v84 = a1 >> 1;
      *v29 = *a4;
      *v34 = *result;
      *v36 = *v35;
      *v38 = *v37;
      *v40 = *v39;
      *v42 = *v41;
      *v44 = *v43;
      *v46 = *v45;
      v85 = a1 >> 1;
      do
      {
        memcpy(v19, a5, v83);
        a5 = (a5 + a8);
        v19 += v22;
        --v85;
      }

      while (v85);
      do
      {
        result = memcpy(v18, a6, v83);
        a6 = (a6 + a8);
        v18 += v22;
        --v84;
      }

      while (v84);
    }
  }

  else
  {
    v86 = 0;
    v87 = (32 - __clz(v21)) >> 1;
    if (v21 < 2)
    {
      v87 = 0;
    }

    do
    {
      v88 = 1 << v87;
      v89 = (1 << v87) | v86;
      if (v89 * v89 <= v21)
      {
        v88 = 0;
      }

      v86 = v89 - v88;
      --v87;
    }

    while (v87 != -1);
    if (v86 + v86 * v86 + 1 <= v21)
    {
      ++v86;
    }

    v90 = (16 * v86 / v27) >> (v98 >> 5);
    if (v90)
    {
      v91 = a1;
      if (a1 == 16)
      {
        v92 = 16 - v90;
        v93 = v29 + 7;
        v94 = a4 + 7;
        do
        {
          *(v93 - 7) = (v92 * *(v93 - 7) + v90 * *(v94 - 7) + 8) >> 4;
          *(v93 - 6) = (v92 * *(v93 - 6) + v90 * *(v94 - 6) + 8) >> 4;
          *(v93 - 5) = (v92 * *(v93 - 5) + v90 * *(v94 - 5) + 8) >> 4;
          *(v93 - 4) = (v92 * *(v93 - 4) + v90 * *(v94 - 4) + 8) >> 4;
          *(v93 - 3) = (v92 * *(v93 - 3) + v90 * *(v94 - 3) + 8) >> 4;
          *(v93 - 2) = (v92 * *(v93 - 2) + v90 * *(v94 - 2) + 8) >> 4;
          *(v93 - 1) = (v92 * *(v93 - 1) + v90 * *(v94 - 1) + 8) >> 4;
          *v93 = (v92 * *v93 + v90 * *v94 + 8) >> 4;
          v93[1] = (v92 * v93[1] + v90 * v94[1] + 8) >> 4;
          v93[2] = (v92 * v93[2] + v90 * v94[2] + 8) >> 4;
          v93[3] = (v92 * v93[3] + v90 * v94[3] + 8) >> 4;
          v93[4] = (v92 * v93[4] + v90 * v94[4] + 8) >> 4;
          v93[5] = (v92 * v93[5] + v90 * v94[5] + 8) >> 4;
          v93[6] = (v92 * v93[6] + v90 * v94[6] + 8) >> 4;
          v93[7] = (v92 * v93[7] + v90 * v94[7] + 8) >> 4;
          v93[8] = (v92 * v93[8] + v90 * v94[8] + 8) >> 4;
          v93 += a12;
          v94 += v28;
          --v91;
        }

        while (v91);
        vp8_filter_by_weight8x8_c(a5, a8, a10, v22, v90);
        return vp8_filter_by_weight8x8_c(a6, a8, a11, v22, v90);
      }

      else
      {
        vp8_filter_by_weight8x8_c(a4, v28, v29, a12, v90);
        vp8_filter_by_weight4x4_c(a5, a8, a10, v22, v90);
        return vp8_filter_by_weight4x4_c(a6, a8, a11, v22, v90);
      }
    }
  }

  return result;
}

uint64_t vp8_init_mode_costs(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 171844;
  do
  {
    cost(v3 - 360, vp8_bmode_tree, &vp8_kf_bmode_prob + v2, 0, 0);
    cost(v3 - 320, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 9, 0, 0);
    cost(v3 - 280, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 18, 0, 0);
    cost(v3 - 240, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 27, 0, 0);
    cost(v3 - 200, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 36, 0, 0);
    cost(v3 - 160, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 45, 0, 0);
    cost(v3 - 120, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 54, 0, 0);
    cost(v3 - 80, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 63, 0, 0);
    cost(v3 - 40, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 72, 0, 0);
    cost(v3, vp8_bmode_tree, &vp8_kf_bmode_prob + v2 + 81, 0, 0);
    v2 += 90;
    v3 += 400;
  }

  while (v2 != 900);
  cost(a1 + 175484, vp8_bmode_tree, a1 + 112738, 0, 0);
  cost(a1 + 175484, vp8_sub_mv_ref_tree, a1 + 112754, 0, 0);
  cost(a1 + 171364, vp8_ymode_tree, a1 + 112747, 0, 0);
  cost(a1 + 171324, vp8_kf_ymode_tree, vp8_kf_ymode_prob, 0, 0);
  cost(a1 + 171444, vp8_uv_mode_tree, a1 + 112751, 0, 0);

  return cost(a1 + 171404, vp8_uv_mode_tree, vp8_kf_uv_mode_prob, 0, 0);
}

uint64_t vp8_cal_dissimilarity(uint64_t result, double a2, int32x4_t a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = (result + 111060);
  v4 = *(result + 114716);
  if (v4 >= 2 && *(result + 114720) < v4 - 1)
  {
    v5 = *(result + 114736);
    v6 = *v3;
    *v5 = *v3;
    if (v6)
    {
      *(v5 + 4) = 0;
      *(v5 + 28) = *(result + 150828);
      *(v5 + 32) = *(result + 150832);
      *(v5 + 36) = *(result + 150836);
      if (*v3)
      {
        v7 = *(result + 111076);
        if (v7 >= 1)
        {
          v8 = *(result + 111080);
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = result + 111592;
            v11 = *(v5 + 56);
            v12 = *(result + 111128) + 76 * *(result + 111084);
            do
            {
              while (v8 < 1)
              {
                v12 += 76;
                if (++v9 >= v7)
                {
                  return result;
                }
              }

              v13 = 0;
              v14 = (v12 + 158);
              do
              {
                v16 = *(v14 - 80);
                if (!*(v14 - 80))
                {
LABEL_11:
                  v15 = 0x7FFFFFFF;
                  goto LABEL_12;
                }

                v17 = v3[6];
                v18 = LOBYTE(v14[-38 * v17 - 40]);
                if (v3[845])
                {
                  if (LOBYTE(v14[-38 * v17 - 40]))
                  {
                    v19 = &v14[-38 * v17];
                    v20 = *(v19 - 39);
                    v85 = v20;
                    v21 = *(v19 - 38);
                    v77 = v21;
                    if (*(v10 + 4 * v18) != *(v10 + 4 * v16))
                    {
                      v85 = -v20;
                      v77 = -v21;
                    }

                    v22 = 1;
                    v23 = *(v14 - 156);
                    if (!*(v14 - 156))
                    {
LABEL_42:
                      v34 = LOBYTE(v14[-38 * v17 - 78]);
                      if (LOBYTE(v14[-38 * v17 - 78]))
                      {
                        v35 = &v14[-38 * v17];
                        v36 = *(v35 - 77);
                        *(&v85 + v22) = v36;
                        v37 = *(v35 - 76);
                        *(&v77 + v22) = v37;
                        if (*(v10 + 4 * v34) != *(v10 + 4 * v16))
                        {
                          *(&v85 + v22) = -v36;
                          *(&v77 + v22) = -v37;
                        }

                        ++v22;
                      }

                      v38 = v8 - 1;
                      if (v13 < v38)
                      {
                        v39 = *(v14 - 4);
                        if (*(v14 - 4))
                        {
                          v40 = *(v14 - 1);
                          *(&v85 + v22) = v40;
                          v41 = *v14;
                          *(&v77 + v22) = v41;
                          if (*(v10 + 4 * v39) != *(v10 + 4 * v16))
                          {
                            *(&v85 + v22) = -v40;
                            *(&v77 + v22) = -v41;
                          }

                          ++v22;
                        }

                        v42 = LOBYTE(v14[-38 * v17 - 2]);
                        if (LOBYTE(v14[-38 * v17 - 2]))
                        {
                          v43 = &v14[-38 * v17];
                          v44 = *(v43 - 1);
                          *(&v85 + v22) = v44;
                          v45 = *v43;
                          *(&v77 + v22) = v45;
                          if (*(v10 + 4 * v42) != *(v10 + 4 * v16))
                          {
                            *(&v85 + v22) = -v44;
                            *(&v77 + v22) = -v45;
                          }

                          ++v22;
                        }
                      }

                      if (v9 < v3[4] - 1)
                      {
                        v46 = LOBYTE(v14[38 * v17 - 40]);
                        if (LOBYTE(v14[38 * v17 - 40]))
                        {
                          v47 = &v14[38 * v17];
                          v48 = *(v47 - 39);
                          *(&v85 + v22) = v48;
                          v49 = *(v47 - 38);
                          *(&v77 + v22) = v49;
                          if (*(v10 + 4 * v46) != *(v10 + 4 * v16))
                          {
                            *(&v85 + v22) = -v48;
                            *(&v77 + v22) = -v49;
                          }

                          ++v22;
                        }

                        v50 = LOBYTE(v14[38 * v17 - 78]);
                        if (LOBYTE(v14[38 * v17 - 78]))
                        {
                          v51 = &v14[38 * v17];
                          v52 = *(v51 - 77);
                          *(&v85 + v22) = v52;
                          v53 = *(v51 - 76);
                          *(&v77 + v22) = v53;
                          if (*(v10 + 4 * v50) != *(v10 + 4 * v16))
                          {
                            *(&v85 + v22) = -v52;
                            *(&v77 + v22) = -v53;
                          }

                          ++v22;
                        }

                        if (v13 < v38)
                        {
                          v54 = LOBYTE(v14[38 * v17 - 2]);
                          if (LOBYTE(v14[38 * v17 - 2]))
                          {
                            v55 = &v14[38 * v17];
                            v56 = *(v55 - 1);
                            *(&v85 + v22) = v56;
                            v57 = *v55;
                            *(&v77 + v22) = v57;
                            if (*(v10 + 4 * v54) != *(v10 + 4 * v16))
                            {
                              *(&v85 + v22) = -v56;
                              v31 = -v57;
LABEL_68:
                              *(&v77 + v22) = v31;
                            }

                            ++v22;
                            goto LABEL_71;
                          }
                        }
                      }

                      goto LABEL_70;
                    }
                  }

                  else
                  {
                    v22 = 0;
                    v23 = *(v14 - 156);
                    if (!*(v14 - 156))
                    {
                      goto LABEL_42;
                    }
                  }

                  v32 = *(v14 - 77);
                  *(&v85 + v22) = v32;
                  v33 = *(v14 - 76);
                  *(&v77 + v22) = v33;
                  if (*(v10 + 4 * v23) != *(v10 + 4 * v16))
                  {
                    *(&v85 + v22) = -v32;
                    *(&v77 + v22) = -v33;
                  }

                  ++v22;
                  goto LABEL_42;
                }

                if (LOBYTE(v14[-38 * v17 - 40]))
                {
                  v24 = &v14[-38 * v17];
                  v85 = *(v24 - 39);
                  v77 = *(v24 - 38);
                  v22 = 1;
                  if (!*(v14 - 156))
                  {
                    goto LABEL_23;
                  }

LABEL_22:
                  *(&v85 + v22) = *(v14 - 77);
                  *(&v77 + v22++) = *(v14 - 76);
                  goto LABEL_23;
                }

                v22 = 0;
                if (*(v14 - 156))
                {
                  goto LABEL_22;
                }

LABEL_23:
                if (LOBYTE(v14[-38 * v17 - 78]))
                {
                  v25 = &v14[-38 * v17];
                  *(&v85 + v22) = *(v25 - 77);
                  *(&v77 + v22++) = *(v25 - 76);
                }

                v26 = v8 - 1;
                if (v13 < v26)
                {
                  if (*(v14 - 4))
                  {
                    *(&v85 + v22) = *(v14 - 1);
                    *(&v77 + v22++) = *v14;
                  }

                  if (LOBYTE(v14[-38 * v17 - 2]))
                  {
                    v27 = &v14[-38 * v17];
                    *(&v85 + v22) = *(v27 - 1);
                    *(&v77 + v22++) = *v27;
                  }
                }

                if (v9 < v3[4] - 1)
                {
                  if (LOBYTE(v14[38 * v17 - 40]))
                  {
                    v28 = &v14[38 * v17];
                    *(&v85 + v22) = *(v28 - 39);
                    *(&v77 + v22++) = *(v28 - 38);
                  }

                  if (LOBYTE(v14[38 * v17 - 78]))
                  {
                    v29 = &v14[38 * v17];
                    *(&v85 + v22) = *(v29 - 77);
                    *(&v77 + v22++) = *(v29 - 76);
                  }

                  if (v13 < v26 && LOBYTE(v14[38 * v17 - 2]))
                  {
                    v30 = &v14[38 * v17];
                    *(&v85 + v22) = *(v30 - 1);
                    v31 = *v30;
                    goto LABEL_68;
                  }
                }

LABEL_70:
                if (!v22)
                {
                  goto LABEL_11;
                }

LABEL_71:
                v58 = v85;
                v59 = v77;
                if (v22 < 2)
                {
                  v72 = vdupq_lane_s64(__SPAIR64__(v77, v85), 0);
                }

                else
                {
                  if (v86 >= v85)
                  {
                    v60 = v85;
                  }

                  else
                  {
                    v60 = v86;
                  }

                  if (v86 > v85)
                  {
                    v58 = v86;
                  }

                  if (v78 >= v77)
                  {
                    v61 = v77;
                  }

                  else
                  {
                    v61 = v78;
                  }

                  if (v78 > v77)
                  {
                    v59 = v78;
                  }

                  if (v22 == 2 || (v87 >= v60 ? (v62 = v60) : (v62 = v87), v87 <= v58 ? (v60 = v62) : (v58 = v87), v79 >= v61 ? (v63 = v61) : (v63 = v79), v79 <= v59 ? (v61 = v63) : (v59 = v79), v22 == 3 || (v88 >= v60 ? (v64 = v60) : (v64 = v88), v88 <= v58 ? (v60 = v64) : (v58 = v88), v80 >= v61 ? (v65 = v61) : (v65 = v80), v80 <= v59 ? (v61 = v65) : (v59 = v80), v22 == 4 || (v89 >= v60 ? (v66 = v60) : (v66 = v89), v89 <= v58 ? (v60 = v66) : (v58 = v89), v81 >= v61 ? (v67 = v61) : (v67 = v81), v81 <= v59 ? (v61 = v67) : (v59 = v81), v22 == 5 || (v90 >= v60 ? (v68 = v60) : (v68 = v90), v90 <= v58 ? (v60 = v68) : (v58 = v90), v82 >= v61 ? (v69 = v61) : (v69 = v82), v82 <= v59 ? (v61 = v69) : (v59 = v82), v22 == 6 || (v91 >= v60 ? (v70 = v60) : (v70 = v91), v91 <= v58 ? (v60 = v70) : (v58 = v91), v83 >= v61 ? (v71 = v61) : (v71 = v83), v83 <= v59 ? (v61 = v71) : (v59 = v83), v22 == 7))))))
                  {
                    v72.i64[0] = __PAIR64__(v61, v60);
                    v72.i32[2] = v58;
                  }

                  else
                  {
                    v73 = v92;
                    if (v92 >= v60)
                    {
                      v74 = v60;
                    }

                    else
                    {
                      v74 = v92;
                    }

                    if (v92 > v58)
                    {
                      v75 = v60;
                    }

                    else
                    {
                      v73 = v58;
                      v75 = v74;
                    }

                    if (v84 >= v61)
                    {
                      v76 = v61;
                    }

                    else
                    {
                      v76 = v84;
                    }

                    if (v84 <= v59)
                    {
                      v61 = v76;
                    }

                    else
                    {
                      v59 = v84;
                    }

                    v72.i64[0] = __PAIR64__(v61, v75);
                    v72.i32[2] = v73;
                  }

                  v72.i32[3] = v59;
                }

                a3.i16[0] = *(v14 - 39);
                a3.i16[2] = *(v14 - 38);
                a3 = vmovl_s16(vuzp1_s16(*a3.i8, *a3.i8));
                v15 = vmaxvq_u32(vabdq_s32(v72, a3));
LABEL_12:
                *v11 = *(v14 - 82);
                v11[1] = v16;
                result = *(v14 - 39);
                v11[2] = result;
                v11[3] = v15;
                v11 += 4;
                ++v13;
                v8 = v3[5];
                v14 += 38;
              }

              while (v13 < v8);
              v7 = v3[4];
              v12 = (v14 - 41);
              ++v9;
            }

            while (v9 < v7);
          }
        }
      }
    }
  }

  return result;
}

__n128 vp8_init_temporal_layer_context(uint64_t a1, void *a2, int a3, double a4, double a5, double a6)
{
  v6 = 4 * a3;
  v7 = a1 + 114520;
  v8 = *(a1 + 114520 + v6);
  v9 = 1000 * v8;
  v10 = v8 > 0x20C49B;
  v11 = 0x7FFFFFFFLL;
  if (v10)
  {
    v12 = 0x7FFFFFFFLL;
  }

  else
  {
    v12 = v9;
  }

  v13 = a2[10];
  v14 = a2[11];
  v15 = v13 * v12;
  if (v15 < 0x1F400000000)
  {
    v11 = v15 / 1000;
  }

  v16 = v14 * v12;
  v17 = (a1 + 114396);
  v18 = a1 + 216 * a3 + 149256;
  LODWORD(a6) = *(a1 + v6 + 114584);
  v19 = *(a1 + 132032) / *&a6;
  *v18 = v19;
  *(v18 + 8) = v12;
  v20 = a2[12];
  *(v18 + 48) = v14;
  *(v18 + 56) = v20;
  v21 = v16 / 1000;
  if (v16 >= 0x1F400000000)
  {
    v21 = 0x7FFFFFFFLL;
  }

  v22 = v12 >> 3;
  _ZF = v14 == 0;
  v24 = v12 >> 3;
  if (!_ZF)
  {
    v24 = v21;
  }

  *(v18 + 16) = v11;
  *(v18 + 24) = v24;
  v25 = v20 * v12;
  v26 = v25 / 1000;
  v10 = v25 < 0x1F400000000;
  v27 = 0x7FFFFFFFLL;
  if (v10)
  {
    v27 = v26;
  }

  if (!v20)
  {
    v27 = v22;
  }

  *(v18 + 32) = v27;
  *(v18 + 40) = v13;
  if (a3 >= 1)
  {
    *(v18 + 64) = llround((1000 * (*(v7 + 4 * a3) - *(v7 + 4 * (a3 - 1)))) / (v19 - a4));
  }

  v28 = *v17;
  v29 = v17[1];
  *(v18 + 108) = *v17;
  *(v18 + 128) = 0;
  *(v18 + 132) = v28;
  *(v18 + 72) = v11;
  *(v18 + 80) = v11;
  *(v18 + 88) = 0;
  *(v18 + 116) = v29;
  *(v18 + 120) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v18 + 136) = result;
  *(v18 + 152) = 0x3FF0000000000000;
  *(v18 + 164) = 0;
  return result;
}

uint64_t initialize_enc()
{
  vpx_dsp_rtcd();

  return vp8_init_intra_predictors();
}

void vp8_set_speed_features(uint64_t a1)
{
  v2 = a1 + 142792;
  v3 = (a1 + 113856);
  v4 = a1 + 107984;
  v5 = a1 + 103784;
  v6 = *(a1 + 142792);
  v7 = *(a1 + 142796);
  v8 = *(a1 + 142896);
  v9 = (a1 + 115184);
  *(a1 + 115184) = 0u;
  *(a1 + 115200) = 0u;
  *(a1 + 115216) = 0u;
  *(a1 + 115232) = 0u;
  *(a1 + 115248) = 0u;
  *(a1 + 103784) = 0;
  *(a1 + 108016) = 0;
  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  *(a1 + 142920) = 1;
  *(a1 + 142888) = v10;
  *(a1 + 142904) = v10;
  v11 = (a1 + 142924);
  v12 = *(v2 + 92);
  *(v2 + 212) = xmmword_273BC62B0;
  *(v2 + 228) = 0x100000001;
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = ((v12 >> 2) & 1) + ((v12 >> 1) & 1) + v13;
  if (v6 >= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = v6;
  }

  if (v7 == 2)
  {
    v16 = v6 + 7;
  }

  else
  {
    v16 = v15 + 1;
  }

  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *v11 = 0;
  v11[1] = 0;
  v18 = &qword_273BC6358;
  do
  {
    v19 = v18[3];
    v18 += 2;
  }

  while (v19 <= v17);
  v20 = *v18;
  *(v2 + 164) = *v18;
  *(v2 + 168) = v20;
  *(v2 + 148) = vdupq_n_s32(v20);
  v21 = &unk_273BC6380;
  do
  {
    v22 = v21[3];
    v21 += 2;
  }

  while (v22 <= v17);
  v23 = *v21;
  *(v2 + 172) = v23;
  *(v2 + 176) = v23;
  v24 = &unk_273BC63B0;
  do
  {
    v25 = v24[3];
    v24 += 2;
  }

  while (v25 <= v17);
  *(v2 + 208) = *v24;
  v26 = &unk_273BC63E8;
  do
  {
    v27 = v26[3];
    v26 += 2;
  }

  while (v27 <= v17);
  *(v2 + 180) = *v26;
  v28 = &unk_273BC6420;
  do
  {
    v29 = v28[3];
    v28 += 2;
  }

  while (v29 <= v17);
  *(v2 + 184) = *v28;
  v30 = &unk_273BC6438;
  do
  {
    v31 = v30[3];
    v30 += 2;
  }

  while (v31 <= v17);
  v32 = *v30;
  *(v2 + 188) = v32;
  *(v2 + 192) = v32;
  v33 = &unk_273BC6470;
  do
  {
    v34 = v33[3];
    v33 += 2;
  }

  while (v34 <= v17);
  *(v2 + 196) = *v33;
  v35 = &unk_273BC64B8;
  do
  {
    v36 = v35[3];
    v35 += 2;
  }

  while (v36 <= v17);
  v37 = *v35;
  *(v2 + 200) = v37;
  *(v2 + 204) = v37;
  if (v6 <= 6)
  {
    v38 = v12 & 3;
    if (v3[41].i32[1] >= 2u && v38 == 3)
    {
      if (*(a1 + 150840) == 2)
      {
        v40 = 3;
      }

      else
      {
        v40 = 1;
      }

      v41 = v20 >> v40;
      *(v2 + 148) = v41;
      *(v2 + 152) = v41;
      *(v2 + 164) = v41;
    }
  }

  v3[86].i32[0] = 0;
  *v9 = 0;
  v9[1] = 0;
  v42 = &unk_273BC6560;
  v43 = &unk_273BC6560;
  do
  {
    v44 = *(v43 + 3);
    v43 += 2;
  }

  while (v44 <= v17);
  v45 = vld1q_dup_f32(v43);
  v3[84] = v45;
  v46 = &unk_273BC6500;
  do
  {
    v47 = v46[3];
    v46 += 2;
  }

  while (v47 <= v17);
  v48 = *v46;
  v3[85].i32[1] = v48;
  v3[85].i32[0] = v48;
  v49 = &unk_273BC6538;
  do
  {
    v50 = v49[3];
    v49 += 2;
  }

  while (v50 <= v17);
  v51 = *v49;
  v3[87].i32[3] = v51;
  v3[85].i32[3] = v51;
  v3[85].i32[2] = v51;
  if (v7 == 2 && v6 == 10)
  {
    v53 = 16;
  }

  else
  {
    v53 = v17;
  }

  do
  {
    v54 = v42[3];
    v42 += 2;
  }

  while (v54 <= v53);
  v3[86].i32[1] = *v42;
  v55 = &unk_273BC6580;
  do
  {
    v56 = v55[3];
    v55 += 2;
  }

  while (v56 <= v17);
  v57 = *v55;
  v3[86].i32[3] = v57;
  v3[86].i32[2] = v57;
  v58 = &unk_273BC65B8;
  do
  {
    v59 = v58[3];
    v58 += 2;
  }

  while (v59 <= v17);
  v3[87].i32[0] = *v58;
  v60 = &unk_273BC65E0;
  do
  {
    v61 = v60[3];
    v60 += 2;
  }

  while (v61 <= v17);
  v62 = *v60;
  v3[87].i32[2] = *v60;
  v3[87].i32[1] = v62;
  v63 = 1;
  if (v7 == 2)
  {
    *(v2 + 220) = 0;
    *(v2 + 112) = 1;
    *(v2 + 120) = 1;
    *(v2 + 100) = 1;
    if (v6 < 1)
    {
      v64 = 1;
      goto LABEL_74;
    }

    *(v2 + 104) = 0;
    *(v2 + 224) = 1;
    v64 = 1;
    *(v2 + 216) = 1;
    if (v6 < 3 || (*(v2 + 112) = 0, v6 == 3) || (*(v2 + 96) = 0, *(v2 + 112) = 1, v6 < 5))
    {
      v63 = 0;
      goto LABEL_74;
    }

    *(v2 + 112) = 0;
    *(v2 + 100) = 2;
    *(v2 + 120) = 0;
    if (v6 < 7)
    {
      goto LABEL_126;
    }

    v65 = v3[38].i32[1];
    v66 = v65 >> 7;
    if (v65 <= 2000)
    {
      v67 = 15;
    }

    else
    {
      v67 = v66;
    }

    if (!v67)
    {
      v67 = 0;
      v69 = 0;
LABEL_113:
      v80 = 0;
      v81 = (*(v4 + 3088) - v69) * (v6 - 6);
      while (1)
      {
        v80 += *(a1 + 103888 + 4 * v67);
        if (10 * v80 >= v81)
        {
          break;
        }

        if (++v67 == 1024)
        {
          v66 = 1024;
          goto LABEL_118;
        }
      }

      v66 = v67;
LABEL_118:
      v82 = (v66 << 7) - 128;
      if (v82 <= 2000)
      {
        v82 = 2000;
      }

      if (v14 >= 2)
      {
        *(v2 + 184) = v82;
        *(v2 + 140) = v82 >> 1;
        *(v2 + 144) = v82 >> 1;
        if (v14 != 2)
        {
          *(v2 + 188) = 2 * v82;
          *(v2 + 152) = v82;
          *(v2 + 164) = v82;
          if (v14 >= 4)
          {
            *(v2 + 192) = 2 * v82;
            *(v2 + 160) = v82;
            *(v2 + 168) = v82;
          }
        }
      }

      *(v2 + 232) = 0;
      if (v6 >= 9)
      {
        v63 = 0;
        v64 = 0;
        *(v2 + 128) = 0;
        goto LABEL_74;
      }

LABEL_126:
      v63 = 0;
      v64 = 0;
LABEL_74:
      if (v3->i32[0])
      {
        v70 = 0;
      }

      else
      {
        v70 = v6 <= 13;
      }

      v71 = !v70;
      *(v4 + 3168) = v71;
      if (v6 >= 15)
      {
        *(v2 + 124) = 0;
      }

      bzero((a1 + 103888), 0x1000uLL);
      if (*(v2 + 24) == 1)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    if (v67 > 7)
    {
      v68 = v67 & 0x1FFFFF8;
      v73 = (v5 + 120);
      v74 = 0uLL;
      v75 = v68;
      v76 = 0uLL;
      do
      {
        v74 = vaddq_s32(v73[-1], v74);
        v76 = vaddq_s32(*v73, v76);
        v73 += 2;
        v75 -= 8;
      }

      while (v75);
      v69 = vaddvq_s32(vaddq_s32(v76, v74));
      if (v68 == v67)
      {
LABEL_112:
        if (v67 > 0x3FF)
        {
          goto LABEL_118;
        }

        goto LABEL_113;
      }
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v77 = v67 - v68;
    v78 = (a1 + 4 * v68 + 103888);
    do
    {
      v79 = *v78++;
      v69 += v79;
      --v77;
    }

    while (v77);
    goto LABEL_112;
  }

  v64 = 1;
  if (*(v2 + 24) == 1)
  {
LABEL_83:
    v63 = 0;
    *(v2 + 220) = 0;
    *(v2 + 104) = 0;
  }

LABEL_84:
  if (v64)
  {
    vp8_init3smotion_compensation(a1 + 73728, *(a1 + 160 * *(v4 + 2564) + 109904));
    v63 = *(v2 + 104);
  }

  *(v4 + 8) = vp8_short_fdct8x4_neon;
  *v4 = vp8_short_fdct4x4_neon;
  *(v4 + 16) = vp8_short_walsh4x4_neon;
  v72 = vp8_regular_quantize_b_c;
  if (!v63)
  {
    v72 = vp8_fast_quantize_b_neon;
  }

  *(v4 + 24) = v72;
  if (v63 != v8)
  {
    vp8cx_init_quantizer(a1);
  }

  if (*(v2 + 120) != 1)
  {
    if (*(v2 + 128))
    {
      *(v2 + 680) = vp8_find_best_sub_pixel_step;
      if (*(v2 + 220) == 1)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (!*(v2 + 124))
      {
        *(v2 + 680) = vp8_skip_fractional_mv_step;
        if (*(v2 + 220) != 1)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      *(v2 + 680) = vp8_find_best_half_pixel_step;
      if (*(v2 + 220) == 1)
      {
        goto LABEL_100;
      }
    }

LABEL_101:
    *(a1 + 82528) = 0;
    if (!*(v4 + 3116))
    {
      return;
    }

    goto LABEL_102;
  }

  *(v2 + 680) = vp8_find_best_sub_pixel_step_iteratively;
  if (*(v2 + 220) != 1)
  {
    goto LABEL_101;
  }

LABEL_100:
  if (*(v2 + 24) == 1)
  {
    goto LABEL_101;
  }

  *(a1 + 82528) = 1;
  if (*(v4 + 3116))
  {
LABEL_102:
    *(v2 + 680) = vp8_skip_fractional_mv_step;
  }
}

uint64_t vp8_alloc_compressor_data(uint64_t a1)
{
  v2 = (a1 + 109856);
  v3 = (a1 + 82312);
  v4 = *(a1 + 109856);
  v5 = *(a1 + 109860);
  if (vp8_alloc_frame_buffers(a1 + 108032, v4, v5))
  {
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate frame buffers");
  }

  v6 = (a1 + 114288);
  v7 = v3[1];
  if (v7)
  {
    free(*(v7 - 8));
  }

  v8 = v2[306] + 1 + (v2[306] + 1) * v2[305];
  if ((v8 & 0x80000000) == 0 && (v9 = 132 * v8, (v10 = malloc_type_malloc(v9 + 23, 0xD93B561uLL)) != 0) && (v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF0, *(v11 - 8) = v10, v11))
  {
    bzero(((v10 + 23) & 0xFFFFFFFFFFFFFFF0), v9);
    *v3 = v11 + 132 * v2[307] + 132;
    v3[1] = v11;
  }

  else
  {
    v3[1] = 0;
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate partition data");
  }

  v12 = (v4 + 15) & 0xFFFFFFF0;
  v13 = v5 + 15;
  if (*(a1 + 115088))
  {
    v14 = *(a1 + 115080);
    if (v14)
    {
      free(*(v14 - 8));
    }
  }

  *(a1 + 115120) = 0u;
  *(a1 + 115136) = 0u;
  *(a1 + 115088) = 0u;
  *(a1 + 115104) = 0u;
  *(a1 + 115056) = 0u;
  *(a1 + 115072) = 0u;
  *(a1 + 115024) = 0u;
  *(a1 + 115040) = 0u;
  *(a1 + 114992) = 0u;
  *(a1 + 115008) = 0u;
  if (vp8_yv12_realloc_frame_buffer(a1 + 114992, v12, v13 & 0xFFFFFFF0, 32))
  {
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate last frame buffer");
  }

  if (*(a1 + 114888))
  {
    v15 = *(a1 + 114880);
    if (v15)
    {
      free(*(v15 - 8));
    }
  }

  *(a1 + 114920) = 0u;
  *(a1 + 114936) = 0u;
  *(a1 + 114888) = 0u;
  *(a1 + 114904) = 0u;
  *(a1 + 114856) = 0u;
  *(a1 + 114872) = 0u;
  *(a1 + 114824) = 0u;
  *(a1 + 114840) = 0u;
  *(a1 + 114792) = 0u;
  *(a1 + 114808) = 0u;
  if (vp8_yv12_realloc_frame_buffer(a1 + 114792, v12, v13 & 0xFFFFFFF0, 32))
  {
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate scaled source buffer");
  }

  v16 = (a1 + 148144);
  v17 = (a1 + 143028);
  v18 = *(a1 + 115152);
  if (v18)
  {
    free(*(v18 - 8));
  }

  v19 = v2[306];
  v20 = 384 * v2[305] * v19;
  v21 = malloc_type_malloc((((3 * v2[305] * v19) & 0x1FFFFFF) << 11) | 0x17, 0xD93B561uLL);
  if (v21)
  {
    v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v22 - 8) = v21;
    if (v22)
    {
      bzero(((v21 + 23) & 0xFFFFFFFFFFFFFFF0), 16 * v20);
      *(a1 + 115152) = v22;
      *v17 = 0;
      v23 = *(a1 + 148152);
      if (!v23)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  *(a1 + 115152) = 0;
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->tok");
  *v17 = 0;
  v23 = *(a1 + 148152);
  if (v23)
  {
LABEL_27:
    free(*(v23 - 8));
  }

LABEL_28:
  v24 = v2[306] * v2[305];
  if ((v24 & 0x80000000) == 0)
  {
    v25 = malloc_type_malloc(v24 + 23, 0xD93B561uLL);
    if (v25)
    {
      v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v26 - 8) = v25;
      if (v26)
      {
        bzero(((v25 + 23) & 0xFFFFFFFFFFFFFFF0), v24);
        *(a1 + 148152) = v26;
        v27 = v2[306] * v2[305];
        *(a1 + 148160) = v27;
        v28 = *v16;
        if (!*v16)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }
  }

  *(a1 + 148152) = 0;
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->gf_active_flags");
  v27 = v2[306] * v2[305];
  *(a1 + 148160) = v27;
  v28 = *v16;
  if (*v16)
  {
LABEL_34:
    free(*(v28 - 8));
    v27 = v2[306] * v2[305];
  }

LABEL_35:
  if ((v27 & 0x80000000) == 0)
  {
    v29 = 4 * v27;
    v30 = malloc_type_malloc(v29 + 23, 0xD93B561uLL);
    if (v30)
    {
      v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v31 - 8) = v30;
      if (v31)
      {
        bzero(((v30 + 23) & 0xFFFFFFFFFFFFFFF0), v29);
        *v16 = v31;
        v32 = *(a1 + 148168);
        if (!v32)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }
  }

  *v16 = 0;
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->mb_activity_map");
  v32 = *(a1 + 148168);
  if (v32)
  {
LABEL_41:
    free(*(v32 - 8));
  }

LABEL_42:
  v33 = v2[306] + 2;
  if (((v33 * (v2[305] + 2)) & 0x80000000) == 0)
  {
    v34 = 4 * (v33 * (v2[305] + 2));
    v35 = malloc_type_malloc(v34 + 23, 0xD93B561uLL);
    if (v35)
    {
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v36 - 8) = v35;
      if (v36)
      {
        bzero(((v35 + 23) & 0xFFFFFFFFFFFFFFF0), v34);
        *(a1 + 148168) = v36;
        v37 = *(a1 + 148176);
        if (!v37)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }
  }

  *(a1 + 148168) = 0;
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->lfmv");
  v37 = *(a1 + 148176);
  if (v37)
  {
LABEL_48:
    free(*(v37 - 8));
  }

LABEL_49:
  v38 = v2[306] + 2;
  if (((v38 * (v2[305] + 2)) & 0x80000000) == 0)
  {
    v39 = 4 * (v38 * (v2[305] + 2));
    v40 = malloc_type_malloc(v39 + 23, 0xD93B561uLL);
    if (v40)
    {
      v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v41 - 8) = v40;
      if (v41)
      {
        bzero(((v40 + 23) & 0xFFFFFFFFFFFFFFF0), v39);
        *(a1 + 148176) = v41;
        v42 = *(a1 + 148184);
        if (!v42)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }
  }

  *(a1 + 148176) = 0;
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->lf_ref_frame_sign_bias");
  v42 = *(a1 + 148184);
  if (v42)
  {
LABEL_55:
    free(*(v42 - 8));
  }

LABEL_56:
  v43 = v2[306] + 2;
  if (v43 * (v2[305] + 2) < 0 || (v44 = 4 * (v43 * (v2[305] + 2)), (v45 = malloc_type_malloc(v44 + 23, 0xD93B561uLL)) == 0) || (v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF0, *(v46 - 8) = v45, !v46))
  {
    *(a1 + 148184) = 0;
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->lf_ref_frame");
    v47 = *(a1 + 143048);
    if (!v47)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  bzero(((v45 + 23) & 0xFFFFFFFFFFFFFFF0), v44);
  *(a1 + 148184) = v46;
  v47 = *(a1 + 143048);
  if (v47)
  {
LABEL_62:
    free(*(v47 - 8));
  }

LABEL_63:
  v48 = v2[306] * v2[305];
  if (v48)
  {
    if ((v48 & 0x80000000) != 0 || v48 + 23 > 0x10000000000 || (v49 = malloc_type_malloc(v48 + 23, 0xD93B561uLL)) == 0)
    {
LABEL_72:
      *(a1 + 143048) = 0;
      vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->segmentation_map");
      *(a1 + 143100) = 0;
      v51 = *(a1 + 143080);
      if (!v51)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  else
  {
    v49 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v49)
    {
      goto LABEL_72;
    }
  }

  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v50 - 8) = v49;
  if (!v50)
  {
    goto LABEL_72;
  }

  bzero(((v49 + 23) & 0xFFFFFFFFFFFFFFF0), v48);
  *(a1 + 143048) = v50;
  *(a1 + 143100) = 0;
  v51 = *(a1 + 143080);
  if (v51)
  {
LABEL_73:
    free(*(v51 - 8));
  }

LABEL_74:
  v52 = v2[306] * v2[305];
  if (v52)
  {
    if ((v52 & 0x80000000) != 0)
    {
      goto LABEL_82;
    }

    if (v52 + 23 > 0x10000000000)
    {
      goto LABEL_82;
    }

    v53 = malloc_type_malloc(v52 + 23, 0xD93B561uLL);
    if (!v53)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v53 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
    if (!v53)
    {
      goto LABEL_82;
    }
  }

  v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v54 - 8) = v53;
  if (v54)
  {
    bzero(((v53 + 23) & 0xFFFFFFFFFFFFFFF0), v52);
    v55 = v54;
    *(a1 + 143080) = v54;
    goto LABEL_83;
  }

LABEL_82:
  *(a1 + 143080) = 0;
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->active_map");
  v55 = *(a1 + 143080);
LABEL_83:
  memset(v55, 1, v2[306] * v2[305]);
  if (v12 <= 639)
  {
    *(a1 + 143188) = 1;
    v56 = *(a1 + 143280);
    if (!v56)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (v12 <= 0x500)
  {
    *(a1 + 143188) = 4;
    v56 = *(a1 + 143280);
    if (!v56)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (v12 <= 0xA00)
  {
    *(a1 + 143188) = 8;
    v56 = *(a1 + 143280);
    if (!v56)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  *(a1 + 143188) = 16;
  v56 = *(a1 + 143280);
  if (v56)
  {
LABEL_93:
    free(*(v56 - 8));
  }

LABEL_94:
  v57 = 16 * v2[305] + 23;
  if (v57 <= 0x10000000000 && (result = malloc_type_malloc(v57, 0xD93B561uLL)) != 0)
  {
    v59 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v59 - 8) = result;
    *(a1 + 143280) = v59;
    if (v59)
    {
      if (*v6 < 1)
      {
        return result;
      }

      goto LABEL_101;
    }
  }

  else
  {
    *(a1 + 143280) = 0;
  }

  result = vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->tplist");
  if (*v6 < 1)
  {
    return result;
  }

LABEL_101:
  vp8_denoiser_free(a1 + 148208);
  result = vp8_denoiser_allocate(a1 + 148208, v12, v13 & 0xFFFFFFF0, v2[305], v2[306], *v6);
  if (result)
  {

    return vpx_internal_error(a1 + 108032, 2, "Failed to allocate denoiser");
  }

  return result;
}

uint64_t vp8_change_config(uint64_t result, int *__src)
{
  if (!result || !__src)
  {
    return result;
  }

  v3 = result;
  v4 = result + 142760;
  v5 = (result + 114268);
  v6 = (result + 109856);
  v7 = *__src;
  if (*(result + 113856) != *__src)
  {
    *(result + 113856) = v7;
    v8 = v7 - 1;
    if ((v7 - 1) > 2)
    {
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v9 = dword_273BC6A28[v8];
      v10 = dword_273BC6A34[v8];
      v11 = dword_273BC6A40[v8];
      v12 = 1;
    }

    *(result + 111092) = v9;
    *(result + 111152) = v10;
    *(result + 111096) = v12;
    *(result + 111100) = v11;
  }

  v13 = (result + 180148);
  v14 = (result + 131912);
  v15 = *(result + 114272);
  v111 = *v5;
  v113 = *(result + 114516);
  memcpy((result + 114264), __src, 0x1E0uLL);
  v16 = v5[11];
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 != 1)
      {
        if (v16 == 2)
        {
          *(v4 + 56) = 0;
          *(v4 + 36) = 0;
LABEL_31:
          *(v4 + 48) = 1;
          goto LABEL_32;
        }

LABEL_20:
        if (*(v4 + 56))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      *(v4 + 56) = 0;
      *(v4 + 36) = 1;
      v19 = v5[7];
      if (v19 > -6)
      {
        if (v19 < 6)
        {
          goto LABEL_31;
        }

        v18 = 5;
      }

      else
      {
        v18 = -5;
      }
    }

    else
    {
      *(v4 + 56) = 0;
      *(v4 + 36) = 2;
      v17 = v5[7];
      if (v17 > -17)
      {
        if (v17 < 17)
        {
          goto LABEL_31;
        }

        v18 = 16;
      }

      else
      {
        v18 = -16;
      }
    }

    v5[7] = v18;
    goto LABEL_31;
  }

  if (v16 == 3)
  {
    *(v4 + 56) = 1;
    *(v4 + 36) = 1;
    goto LABEL_32;
  }

  if (v16 != 4)
  {
    if (v16 == 5)
    {
      *(v4 + 56) = 2;
      *(v4 + 36) = 0;
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  *(v4 + 56) = 2;
  *(v4 + 36) = 1;
  v20 = v5[7];
  if (v20 > -6)
  {
    if (v20 >= 6)
    {
      v5[7] = 5;
    }
  }

  else
  {
    v5[7] = -5;
  }

LABEL_32:
  v21 = __src[32];
  v22 = q_trans[__src[33]];
  v5[32] = v22;
  v23 = q_trans[__src[34]];
  v5[33] = v23;
  v24 = q_trans[v5[34]];
  v5[34] = v24;
  if (v21 < 0)
  {
    goto LABEL_43;
  }

  v25 = __src[33];
  if ((v25 & 0x80000000) != 0)
  {
    v5[31] = 0;
    v26 = __src[46];
    if ((v26 & 0x80000000) == 0)
    {
LABEL_35:
      v5[45] = q_trans[v26];
      v27 = __src[47];
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v5[46] = 0;
      v28 = __src[48];
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_41:
      v29 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v5[31] = q_trans[v25];
    v26 = __src[46];
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  v5[45] = 0;
  v27 = __src[47];
  if ((v27 & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v5[46] = q_trans[v27];
  v28 = __src[48];
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  v29 = q_trans[v28];
LABEL_42:
  v5[47] = v29;
LABEL_43:
  *(v3 + 180152) = 0;
  v30 = v5[44];
  if (!v30)
  {
    v30 = 7;
  }

  *(v3 + 131976) = v30;
  if (!v5[51] && !v16 && v5[16] == 1)
  {
    *(v3 + 131976) = *(v4 + 404);
  }

  v31 = v5[49];
  if (v31 <= 3)
  {
    v6[1001] = v31;
  }

  v32 = *(v3 + 81920) != 0;
  *(v3 + 81921) = v32;
  *(v3 + 81922) = v32;
  *(v3 + 81945) = 0;
  *(v3 + 81937) = 0;
  *(v3 + 81935) = 257;
  *(v3 + 81941) = -16908286;
  *(v3 + 81949) = 4;
  if (v16)
  {
    v33 = -2;
  }

  else
  {
    v33 = -12;
  }

  *(v3 + 81950) = v33;
  *(v3 + 81951) = 1026;
  if (*v13)
  {
    if (v5[31] >= 128)
    {
      goto LABEL_56;
    }

LABEL_59:
    v34 = v3 + 148080;
    if (!v5[16])
    {
      goto LABEL_57;
    }

    goto LABEL_60;
  }

  v37 = (v5 + 50);
  v38 = vld1q_dup_f32(v37);
  *(v4 + 304) = v38;
  if (v5[31] < 128)
  {
    goto LABEL_59;
  }

LABEL_56:
  v5[31] = 127;
  v34 = v3 + 148080;
  if (!v5[16])
  {
LABEL_57:
    *(v5 + 23) = xmmword_273BC62C0;
    *(v5 + 27) = xmmword_273BC62D0;
    v35 = 60000;
    v36 = 60000;
    goto LABEL_61;
  }

LABEL_60:
  v36 = v5[19];
  v35 = *(v5 + 21);
LABEL_61:
  result = *v5;
  v39 = v5[1];
  v40 = *(v3 + 132096);
  v41 = v5[4];
  v42 = v40 * (24 * result * v39) / 1000.0;
  if (v42 < v41)
  {
    v41 = v42;
  }

  v43 = 1000 * v41;
  v5[4] = v43;
  v44 = v36 * v43;
  v45 = v44 / 1000;
  v46 = v44 < 0x1F400000000;
  v47 = 0x7FFFFFFFLL;
  if (v46)
  {
    v47 = v45;
  }

  *(v5 + 19) = v47;
  v48 = v35 * v43;
  v49 = v48 / 1000;
  v46 = v48 < 0x1F400000000;
  v50 = 0x7FFFFFFFLL;
  if (v46)
  {
    v50 = v49;
  }

  if (v35)
  {
    v51 = v50;
  }

  else
  {
    v51 = v43 >> 3;
  }

  *(v5 + 21) = v51;
  v52 = *(v5 + 23);
  v53 = v52 * v43;
  v54 = 0x7FFFFFFFLL;
  if (v53 < 0x1F400000000)
  {
    v54 = v53 / 1000;
  }

  if (!v52)
  {
    v54 = v43 >> 3;
  }

  *(v5 + 23) = v54;
  v55 = *(v3 + 132120);
  if (v55 > v54)
  {
    *(v3 + 132112) = v54;
    *(v3 + 132120) = v54;
    v55 = v54;
  }

  if (v40 < 0.1)
  {
    v40 = 30.0;
  }

  *(v3 + 132096) = v40;
  *(v3 + 132032) = v40;
  v56 = 2147483650.0;
  v57 = fmin(round(v43 / v40), 2147483650.0);
  *(v3 + 132012) = v57;
  *(v3 + 132016) = v57;
  v58 = v5[41] * v57 / 100;
  if (v58 >= 0x7FFFFFFF)
  {
    LODWORD(v58) = 0x7FFFFFFF;
  }

  *(v3 + 132020) = v58;
  v59 = 0.5;
  v60 = v40 * 0.5;
  if (v60 >= 10)
  {
    v61 = v60 + 2;
  }

  else
  {
    v61 = 12;
  }

  *(v3 + 131972) = v61;
  v62 = v5[225] >> 1;
  *v34 = v62;
  if (v5[43])
  {
    v63 = v5[15];
    v64 = v113;
    if (v63)
    {
      if (v61 >= v63)
      {
        v61 = v63 - 1;
        *(v3 + 131972) = v63 - 1;
      }

      if (v62 >= v63)
      {
        v62 = v63 - 1;
        *v34 = v63 - 1;
      }
    }
  }

  else
  {
    v64 = v113;
  }

  if (v61 > v62)
  {
    *(v3 + 131972) = v62;
  }

  *(v3 + 132160) = v22;
  *(v3 + 132168) = v23;
  v65 = *(v3 + 132164);
  v66 = v22;
  if (v65 > v22 || (v66 = v23, v65 < v23))
  {
    *(v3 + 132164) = v66;
    v65 = v66;
  }

  v67 = *(v3 + 132172);
  v68 = v23;
  if (v67 < v23 || (v68 = v22, v67 > v22))
  {
    *(v3 + 132172) = v68;
    v67 = v68;
  }

  *(v3 + 132088) = v51 > 0;
  *(v3 + 132176) = v24;
  if (v5[38])
  {
    v69 = v51 > 0;
  }

  else
  {
    v69 = 0;
  }

  *(v3 + 132180) = v69;
  *v4 = v43;
  v70 = v5[62];
  v112 = v4;
  if (v70 == v64)
  {
    if (*(v34 + 120))
    {
      goto LABEL_103;
    }
  }

  else
  {
    if (*(v4 + 380) >= 1)
    {
      *(v4 + 380) = 0;
    }

    v110 = v15;
    *(v4 + 376) = 0;
    if (v64 == 1)
    {
      *(v34 + 1168) = 0;
      *(v34 + 1184) = v43;
      *(v34 + 1192) = v47;
      *(v34 + 1200) = v51;
      *(v34 + 1208) = v54;
      *(v34 + 1216) = *(v5 + 25);
      *(v34 + 1232) = *(v5 + 29);
      *(v34 + 1248) = *(v3 + 132112);
      *(v34 + 1256) = v55;
      *(v34 + 1264) = *(v3 + 132144);
      *(v34 + 1280) = v22;
      *(v34 + 1284) = v65;
      *(v34 + 1288) = v23;
      *(v34 + 1292) = v67;
      *(v34 + 1296) = *(v3 + 132064);
      *(v34 + 1312) = *(v3 + 131920);
      *(v34 + 1328) = *(v3 + 131936);
      *(v34 + 1336) = *(v3 + 103884);
      *(v34 + 1340) = *(v3 + 132024);
      *(v34 + 1344) = *(v3 + 132080);
      *(v34 + 1352) = v6[425];
      *(v34 + 1356) = vrev64_s32(*(v4 + 388));
      *(v34 + 1364) = *(v4 + 120);
      *(v34 + 1384) = *v14;
      *(v3 + 149448) = *(v3 + 103608);
    }

    if (v70 >= 1)
    {
      if (v70 == 1)
      {
        v80 = (v34 + 1224);
        v81 = (v34 + 1356);
        v82 = (v4 + 388);
        if (v64 <= 0)
        {
          vp8_init_temporal_layer_context(v3, __src, 0, 0.0, 0.5, 2147483650.0);
          v80 = (v34 + 1224);
          v81 = (v34 + 1356);
          v82 = (v4 + 388);
        }

        v83 = *(v5 + 25);
        v84 = v5[4];
        *(v34 + 1184) = v84;
        v85 = (v83 * v84 * 0x20C49BA5E353F7CFLL) >> 64;
        v86 = (v85 >> 7) + (v85 >> 63);
        *(v34 + 1248) = v86;
        *(v34 + 1256) = v86;
        *(v34 + 1168) = 0;
        *v4 = v84;
        *(v5 + 19) = *(v34 + 1192);
        *(v5 + 23) = *(v34 + 1208);
        *(v5 + 27) = *v80;
        *(v3 + 132112) = v86;
        *(v3 + 132120) = v86;
        *(v3 + 132144) = *(v34 + 1264);
        *(v3 + 132164) = *(v34 + 1284);
        *(v3 + 132172) = *(v34 + 1292);
        *(v3 + 132064) = *(v34 + 1296);
        *(v3 + 131920) = *(v34 + 1312);
        v87 = *(v34 + 1328);
        *(v3 + 103884) = *(v34 + 1336);
        *(v3 + 131936) = v87;
        *(v3 + 132024) = *(v34 + 1340);
        *(v3 + 132080) = *(v34 + 1344);
        v6[425] = *(v34 + 1352);
        *v82 = vrev64_s32(*v81);
        *(v4 + 120) = *(v34 + 1364);
        *v14 = *(v34 + 1384);
        *(v3 + 103608) = *(v3 + 149448);
      }

      else
      {
        v104 = 0;
        v105 = v5 + 79;
        v106 = (v34 + 1256);
        v107 = 0.0;
        do
        {
          if (v104 >= v64)
          {
            vp8_init_temporal_layer_context(v3, __src, v104, v107, v59, v56);
            v64 = v113;
          }

          v108 = *(v5 + 25) * *(v105 - 16);
          *(v106 - 1) = v108;
          *v106 = v108;
          v109 = *v105++;
          LODWORD(v59) = v109;
          v59 = *&v59;
          v107 = *(v3 + 132032) / v59;
          ++v104;
          v106 += 27;
          --v70;
        }

        while (v70);
      }
    }

    result = *v5;
    v39 = v5[1];
    v4 = v112;
    v15 = v110;
    if (*(v34 + 120))
    {
LABEL_103:
      *v6 = result;
      v6[1] = v39;
      v71 = v5[6];
      if (v71 >= 8)
      {
        goto LABEL_104;
      }

      goto LABEL_126;
    }
  }

  *(v34 + 120) = result;
  *(v34 + 124) = v39;
  *v6 = result;
  v6[1] = v39;
  v71 = v5[6];
  if (v71 >= 8)
  {
LABEL_104:
    v5[6] = 7;
    v6[427] = 7;
    v72 = v6[2];
    if (v72 > 1)
    {
      goto LABEL_105;
    }

    goto LABEL_127;
  }

LABEL_126:
  v6[427] = v71;
  v72 = v6[2];
  if (v72 > 1)
  {
LABEL_105:
    if (v72 == 3)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    v74 = v72 == 2;
    if (v72 == 2)
    {
      v75 = 3;
    }

    else
    {
      v75 = 1;
    }

    if (v74)
    {
      v73 = 5;
    }

    v76 = v111;
    v77 = v6[3] - 1;
    if (v77 <= 2)
    {
      goto LABEL_114;
    }

LABEL_135:
    v78 = 1;
    v79 = 1;
    goto LABEL_136;
  }

LABEL_127:
  v76 = v111;
  if (!v72)
  {
    v90 = v39;
    v89 = result;
    if (!v6[3])
    {
      goto LABEL_137;
    }

    v75 = 1;
    v73 = 1;
    v77 = v6[3] - 1;
    if (v77 <= 2)
    {
      goto LABEL_114;
    }

    goto LABEL_135;
  }

  v88 = v72 == 1;
  if (v72 == 1)
  {
    v75 = 4;
  }

  else
  {
    v75 = 1;
  }

  if (v88)
  {
    v73 = 5;
  }

  else
  {
    v73 = 1;
  }

  v77 = v6[3] - 1;
  if (v77 > 2)
  {
    goto LABEL_135;
  }

LABEL_114:
  v78 = dword_273BC6A64[v77];
  v79 = dword_273BC6A70[v77];
LABEL_136:
  v89 = (v73 + v75 * result - 1) / v73;
  v90 = (v79 + v78 * v39 - 1) / v79;
  *v6 = v89;
  v6[1] = v90;
LABEL_137:
  if (v76 != result || v15 != v39)
  {
    *(v34 + 112) = 1;
  }

  v91 = (v89 + 15) & 0xFFFFFFF0;
  if (v91 != *(v3 + 160 * v6[173] + 109888) || !v91 || ((v90 + 15) & 0xFFFFFFF0) != *(v3 + 160 * v6[173] + 109892))
  {
    v92 = *(v5 + 119);
    if (v92)
    {
      v93 = v92[2];
      if (v93)
      {
        v94 = *v92;
        if (v94)
        {
          v95 = 0;
          v96 = 0;
          v97 = 0uLL;
          do
          {
            if (v93)
            {
              v98 = &v93[v95];
              if (*&v93[v95 + 96])
              {
                v99 = *&v93[v95 + 88];
                if (v99)
                {
                  free(*(v99 - 8));
                  v97 = 0uLL;
                }
              }

              *(v98 + 8) = v97;
              *(v98 + 9) = v97;
              *(v98 + 6) = v97;
              *(v98 + 7) = v97;
              *(v98 + 4) = v97;
              *(v98 + 5) = v97;
              *(v98 + 2) = v97;
              *(v98 + 3) = v97;
              *v98 = v97;
              *(v98 + 1) = v97;
              v94 = *v92;
            }

            ++v96;
            v93 = v92[2];
            v95 += 184;
          }

          while (v96 < v94);
        }

        free(v93);
      }

      free(v92);
      LODWORD(result) = *v5;
      v39 = v5[1];
    }

    v100 = vp8_lookahead_init(result, v39);
    *(v5 + 119) = v100;
    if (!v100)
    {
      vpx_internal_error(v3 + 108032, 2, "Failed to allocate lag buffers");
    }

    result = vp8_alloc_compressor_data(v3);
    v4 = v112;
  }

  v101 = v5[31];
  if ((v101 & 0x80000000) == 0)
  {
    *v14 = v101;
    *(v3 + 131916) = v101;
  }

  *(v4 + 32) = v5[7];
  v102 = v5[15];
  if (!v102)
  {
    v5[14] = 0;
    *(v5 + 123) = 0;
    v5[176] = 0;
    v103 = v5[5];
    if (!v103)
    {
      return result;
    }

    goto LABEL_166;
  }

  if (v102 >= 2)
  {
    v5[15] = 1;
  }

  *(v5 + 123) = 0;
  v5[176] = 0;
  v103 = v5[5];
  if (v103)
  {
LABEL_166:
    if (!*(v34 + 856))
    {
      result = vp8_denoiser_allocate(v3 + 148208, (*v5 + 15) & 0xFFFFFFF0, (v5[1] + 15) & 0xFFFFFFF0, v6[305], v6[306], v103);
      if (result)
      {

        return vpx_internal_error(v3 + 108032, 2, "Failed to allocate denoiser");
      }
    }
  }

  return result;
}