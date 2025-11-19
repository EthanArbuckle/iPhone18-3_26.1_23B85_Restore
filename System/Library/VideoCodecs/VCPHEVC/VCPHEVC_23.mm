float sub_2774E8E70(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = v73;
  sub_2774E91AC(a1, a2, a3, a4, 32, v73, 8u, (a5 + 84));
  sub_2774E91AC(a1 + 2, a2, a3 + 2, a4, 32, v74, 8u, (a5 + 100));
  for (i = 0; i != 4; ++i)
  {
    v12 = 0uLL;
    v13 = 9;
    v14 = 0uLL;
    do
    {
      v15 = &v10[v13];
      v16 = v10[v13 - 9];
      v17 = v10[v13 - 8];
      v18 = v10[v13 - 1];
      v19 = v10[v13];
      v20 = v10[v13 + 7];
      v21 = v10[v13 + 8];
      v22 = v10[v13 + 15];
      v23 = v10[v13 + 16];
      v24 = vaddq_s16(v18, v16);
      v25 = vaddq_s16(v19, v17);
      v26 = vsubq_s16(v16, v18);
      v27 = vsubq_s16(v17, v19);
      v28 = vaddq_s16(v22, v20);
      v29 = vaddq_s16(v23, v21);
      v30 = vsubq_s16(v20, v22);
      v31 = vsubq_s16(v21, v23);
      v32 = vzip2q_s64(v24, v26);
      v24.i64[1] = v26.i64[0];
      v33 = vzip2q_s64(v25, v27);
      v25.i64[1] = v27.i64[0];
      v34 = vzip2q_s64(v28, v30);
      v28.i64[1] = v30.i64[0];
      v35 = vzip2q_s64(v29, v31);
      v29.i64[1] = v31.i64[0];
      v36 = vaddq_s16(v24, v32);
      v37 = vaddq_s16(v25, v33);
      v38 = vsubq_s16(v24, v32);
      v39 = vsubq_s16(v25, v33);
      v40 = vaddq_s16(v28, v34);
      v41 = vaddq_s16(v29, v35);
      v42 = vsubq_s16(v28, v34);
      v43 = vsubq_s16(v29, v35);
      v14 = vpadalq_u16(v14, vpaddq_s16(vpaddq_s16(vaddq_s16(vabsq_s16(v38), vabsq_s16(v36)), vaddq_s16(vabsq_s16(v39), vabsq_s16(v37))), vpaddq_s16(vaddq_s16(vabsq_s16(v42), vabsq_s16(v40)), vaddq_s16(vabsq_s16(v43), vabsq_s16(v41)))));
      v44 = vsubq_s16(v36, v40);
      v45 = vsubq_s16(v37, v41);
      v46 = vsubq_s16(v38, v42);
      v47 = vsubq_s16(v39, v43);
      v12 = vpadalq_u16(vpadalq_u16(v12, vaddq_s16(vmaxq_u16(vabsq_s16(v44), vabsq_s16(v45)), vmaxq_u16(vabsq_s16(vaddq_s16(v40, v36)), vabsq_s16(vaddq_s16(v41, v37))))), vaddq_s16(vmaxq_u16(vabsq_s16(v46), vabsq_s16(v47)), vmaxq_u16(vabsq_s16(vaddq_s16(v42, v38)), vabsq_s16(vaddq_s16(v43, v39)))));
      v48 = vrhaddq_s16(v36, v40);
      v49 = vrhaddq_s16(v37, v41);
      v50 = vrshrq_n_s16(v44, 1uLL);
      v51 = vrshrq_n_s16(v45, 1uLL);
      v52 = vrhaddq_s16(v38, v42);
      v53 = vrhaddq_s16(v39, v43);
      v54 = vrshrq_n_s16(v46, 1uLL);
      v15[-9] = vhaddq_s16(v48, v49);
      v15[-8] = vhaddq_s16(v50, v51);
      v55 = vrshrq_n_s16(v47, 1uLL);
      v15[-1] = vhaddq_s16(v52, v53);
      *v15 = vhaddq_s16(v54, v55);
      v15[7] = vhsubq_s16(v48, v49);
      v15[8] = vhsubq_s16(v50, v51);
      v15[15] = vhsubq_s16(v52, v53);
      v15[16] = vhsubq_s16(v54, v55);
      v13 += 2;
    }

    while (v13 != 17);
    v56 = vrshrq_n_u32(v14, 2uLL);
    v57 = (a5 + 4 * ((i + 8 * (i & 1)) | 5));
    v57[2] = v56.i64[1];
    *v57 = v56.i64[0];
    *(a5 + 4 * ((i >> 1) + 2 * (i & 1) + 1)) = (vaddvq_s32(v12) + 2) >> 2;
    v10 += 32;
  }

  v58 = 0;
  v59 = 0uLL;
  do
  {
    v60 = v73[v58];
    v61 = v73[v58 + 1];
    v62 = v73[v58 + 64];
    v63 = v74[v58 + 1];
    v64 = v73[v58 + 32];
    v65 = v73[v58 + 33];
    v66 = v74[v58 + 32];
    v67 = v74[v58 + 33];
    v68 = vaddq_s16(v64, v60);
    v69 = vmaxq_u16(vabsq_s16(vsubq_s16(v60, v64)), vabsq_s16(vsubq_s16(v62, v66)));
    v70 = vaddq_s16(vmaxq_u16(vabsq_s16(vaddq_s16(v65, v61)), vabsq_s16(vaddq_s16(v67, v63))), vmaxq_u16(vabsq_s16(v68), vabsq_s16(vaddq_s16(v66, v62))));
    v71 = vaddq_s16(vmaxq_u16(vabsq_s16(vsubq_s16(v61, v65)), vabsq_s16(vsubq_s16(v63, v67))), v69);
    v59 = vaddw_u16(vaddw_high_u16(vaddw_u16(vaddw_high_u16(v59, v70), *v70.i8), v71), *v71.i8);
    v58 += 2;
  }

  while (v58 != 32);
  result = COERCE_FLOAT(vaddvq_s32(v59));
  *a5 = (LODWORD(result) + 1) >> 1;
  return result;
}

uint8x8_t *sub_2774E91AC(uint8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, int a5, int16x8_t *a6, unsigned int a7, uint32x4_t *a8)
{
  v8 = a5 + 4;
  do
  {
    v9 = *&result->i8[a2];
    v10 = (result + a2 + a2);
    v11 = *v10;
    v12 = &v10->i8[a2];
    v13 = *&a3->i8[a4];
    v14 = (a3 + a4 + a4);
    v15 = *v14;
    v16 = &v14->i8[a4];
    v17 = vsubl_u8(*result, *a3);
    v18 = vsubl_high_u8(*result->i8, *a3->i8);
    v19 = vsubl_u8(*v9.i8, *v13.i8);
    v20 = vsubl_high_u8(v9, v13);
    v21 = vsubl_u8(*v11.i8, *v15.i8);
    v22 = vsubl_high_u8(v11, v15);
    v23 = vsubl_u8(*v12, *v16);
    v24 = vsubl_high_u8(*v12->i8, *v16->i8);
    v25 = vaddq_s16(v19, v17);
    v26 = vaddq_s16(v20, v18);
    v27 = vsubq_s16(v17, v19);
    v28 = vsubq_s16(v18, v20);
    v29 = vaddq_s16(v23, v21);
    v30 = vaddq_s16(v24, v22);
    v31 = vsubq_s16(v21, v23);
    v32 = vsubq_s16(v22, v24);
    v33 = vtrn1q_s16(v25, v27);
    v34 = vtrn2q_s16(v25, v27);
    v35 = vtrn1q_s16(v26, v28);
    v36 = vtrn2q_s16(v26, v28);
    v37 = vtrn1q_s16(v29, v31);
    v38 = vtrn2q_s16(v29, v31);
    v39 = vtrn1q_s16(v30, v32);
    v40 = vtrn2q_s16(v30, v32);
    v41 = vaddq_s16(v34, v33);
    v42 = vaddq_s16(v36, v35);
    v43 = vsubq_s16(v33, v34);
    v44 = vsubq_s16(v35, v36);
    v45 = vaddq_s16(v38, v37);
    v46 = vaddq_s16(v40, v39);
    v47 = vsubq_s16(v37, v38);
    v48 = vsubq_s16(v39, v40);
    v49 = vaddq_s16(v45, v41);
    v50 = vaddq_s16(v46, v42);
    v51 = vsubq_s16(v41, v45);
    v52 = vsubq_s16(v42, v46);
    v53 = vaddq_s16(v47, v43);
    v54 = vaddq_s16(v48, v44);
    v55 = vsubq_s16(v43, v47);
    v56 = vsubq_s16(v44, v48);
    v57 = vtrn1q_s32(v49, v51);
    v58 = vtrn2q_s32(v49, v51);
    v59 = vtrn1q_s32(v50, v52);
    v60 = vtrn2q_s32(v50, v52);
    v61 = vtrn1q_s32(v53, v55);
    v62 = vtrn2q_s32(v53, v55);
    v63 = vtrn1q_s32(v54, v56);
    v64 = vtrn2q_s32(v54, v56);
    v65 = vaddq_s16(v58, v57);
    v66 = vaddq_s16(v60, v59);
    v67 = vsubq_s16(v57, v58);
    v68 = vsubq_s16(v59, v60);
    v69 = vaddq_s16(v62, v61);
    v70 = vaddq_s16(v64, v63);
    v71 = vsubq_s16(v61, v62);
    v72 = vsubq_s16(v63, v64);
    *a8 = vshrq_n_u32(vpaddlq_u16(vpaddq_s16(vaddq_s16(vaddq_s16(vabsq_s16(v69), vabsq_s16(v65)), vaddq_s16(vabsq_s16(v67), vabsq_s16(v71))), vaddq_s16(vaddq_s16(vabsq_s16(v70), vabsq_s16(v66)), vaddq_s16(vabsq_s16(v68), vabsq_s16(v72))))), 1uLL);
    *a6 = v65;
    a6[1] = v66;
    a6[2] = v69;
    a6[3] = v70;
    a6[4] = v67;
    a6[5] = v68;
    v8 -= 4;
    a8 = (a8 + 4 * a7);
    a6[6] = v71;
    a6[7] = v72;
    result = (v12 + a2);
    a3 = (v16 + a4);
    a6 += 8;
  }

  while (v8 > 4);
  return result;
}

float sub_2774E9344(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x277D85DE8];
  sub_2774E91AC(a1, a2, a3, a4, 16, v52, 4u, (a5 + 20));
  v6 = 0uLL;
  v7 = 9;
  v8 = 0uLL;
  do
  {
    v9 = v52[v7 - 9];
    v10 = v52[v7 - 8];
    v11 = v52[v7 - 1];
    v12 = v52[v7];
    v13 = v52[v7 + 7];
    v14 = v52[v7 + 8];
    v15 = v52[v7 + 15];
    v16 = v52[v7 + 16];
    v17 = vaddq_s16(v11, v9);
    v18 = vaddq_s16(v12, v10);
    v19 = vsubq_s16(v9, v11);
    v20 = vsubq_s16(v10, v12);
    v21 = vaddq_s16(v15, v13);
    v22 = vaddq_s16(v16, v14);
    v23 = vsubq_s16(v13, v15);
    v24 = vsubq_s16(v14, v16);
    v25 = vzip2q_s64(v17, v19);
    v17.i64[1] = v19.i64[0];
    v26 = vzip2q_s64(v18, v20);
    v18.i64[1] = v20.i64[0];
    v27 = vzip2q_s64(v21, v23);
    v28 = vzip2q_s64(v22, v24);
    v21.i64[1] = v23.i64[0];
    v22.i64[1] = v24.i64[0];
    v29 = vaddq_s16(v17, v25);
    v30 = vaddq_s16(v18, v26);
    v31 = vsubq_s16(v17, v25);
    v32 = vsubq_s16(v18, v26);
    v33 = vaddq_s16(v21, v27);
    v34 = vaddq_s16(v22, v28);
    v35 = vsubq_s16(v21, v27);
    v36 = vsubq_s16(v22, v28);
    v37 = vaddq_s16(vabsq_s16(v31), vabsq_s16(v29));
    v38 = vaddq_s16(vabsq_s16(v32), vabsq_s16(v30));
    v39 = vaddq_s16(vabsq_s16(v35), vabsq_s16(v33));
    v40 = vaddq_s16(v33, v29);
    v41 = vsubq_s16(v29, v33);
    v42 = vaddq_s16(vabsq_s16(v36), vabsq_s16(v34));
    v43 = vaddq_s16(v34, v30);
    v44 = vsubq_s16(v30, v34);
    v45 = vaddq_s16(v35, v31);
    v46 = vsubq_s16(v31, v35);
    v47 = vaddq_s16(v36, v32);
    v48 = vmaxq_u16(vabsq_s16(v46), vabsq_s16(vsubq_s16(v32, v36)));
    v49 = vaddq_s16(vmaxq_u16(vabsq_s16(v41), vabsq_s16(v44)), vmaxq_u16(vabsq_s16(v40), vabsq_s16(v43)));
    v50 = vaddq_s16(v48, vmaxq_u16(vabsq_s16(v45), vabsq_s16(v47)));
    v8 = vpadalq_u16(v8, vpaddq_s16(vpaddq_s16(v37, v38), vpaddq_s16(v39, v42)));
    v6 = vaddw_u16(vaddw_high_u16(vaddw_u16(vaddw_high_u16(v6, v49), *v49.i8), v50), *v50.i8);
    v7 += 2;
  }

  while (v7 != 17);
  *(a5 + 4) = vrshrq_n_u32(v8, 2uLL);
  result = COERCE_FLOAT(vaddvq_s32(v6));
  *a5 = (LODWORD(result) + 2) >> 2;
  return result;
}

float sub_2774E9508(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = vsubl_u8(*a1, *a3);
  v6 = vsubl_u8(*(a1 + a2), *(a3 + a4));
  v7 = vsubl_u8(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v8 = vsubl_u8(*(a1 + 3 * a2), *(a3 + 3 * a4));
  v9 = (a1 + 4 * a2);
  v10 = (a3 + 4 * a4);
  v11 = vsubl_u8(*v9, *v10);
  v12 = vsubl_u8(*(v9 + a2), *(v10 + a4));
  v13 = vsubl_u8(*(v9 + 2 * a2), *(v10 + 2 * a4));
  v14 = vsubl_u8(*(v9 + 3 * a2), *(v10 + 3 * a4));
  v15 = vaddq_s16(v6, v5);
  v16 = vsubq_s16(v5, v6);
  v17 = vaddq_s16(v8, v7);
  v18 = vsubq_s16(v7, v8);
  v19 = vtrn1q_s16(v15, v16);
  v20 = vtrn2q_s16(v15, v16);
  v21 = vtrn1q_s16(v17, v18);
  v22 = vtrn2q_s16(v17, v18);
  v23 = vaddq_s16(v20, v19);
  v24 = vsubq_s16(v19, v20);
  v25 = vaddq_s16(v22, v21);
  v26 = vsubq_s16(v21, v22);
  v27 = vaddq_s16(v25, v23);
  v28 = vsubq_s16(v23, v25);
  v29 = vaddq_s16(v26, v24);
  v30 = vsubq_s16(v24, v26);
  v31 = vtrn1q_s32(v27, v28);
  v32 = vtrn2q_s32(v27, v28);
  v33 = vtrn1q_s32(v29, v30);
  v34 = vtrn2q_s32(v29, v30);
  v35 = vaddq_s16(v32, v31);
  v36 = vsubq_s16(v31, v32);
  v37 = vaddq_s16(v34, v33);
  v38 = vsubq_s16(v33, v34);
  v39 = vaddq_s16(v12, v11);
  v40 = vsubq_s16(v11, v12);
  v41 = vaddq_s16(v14, v13);
  v42 = vsubq_s16(v13, v14);
  v43 = vtrn1q_s16(v39, v40);
  v44 = vtrn2q_s16(v39, v40);
  v45 = vtrn1q_s16(v41, v42);
  v46 = vtrn2q_s16(v41, v42);
  v47 = vaddq_s16(v44, v43);
  v48 = vsubq_s16(v43, v44);
  v49 = vaddq_s16(v46, v45);
  v50 = vsubq_s16(v45, v46);
  v51 = vaddq_s16(v49, v47);
  v52 = vsubq_s16(v47, v49);
  v53 = vaddq_s16(v50, v48);
  v54 = vsubq_s16(v48, v50);
  v55 = vtrn1q_s32(v51, v52);
  v56 = vtrn2q_s32(v51, v52);
  v57 = vtrn1q_s32(v53, v54);
  v58 = vtrn2q_s32(v53, v54);
  v59 = vaddq_s16(v56, v55);
  v60 = vsubq_s16(v55, v56);
  v61 = vaddq_s16(v58, v57);
  v62 = vsubq_s16(v57, v58);
  *(a5 + 4) = vshrq_n_u32(vpaddlq_u16(vpaddq_s16(vaddq_s16(vaddq_s16(vabsq_s16(v37), vabsq_s16(v35)), vaddq_s16(vabsq_s16(v36), vabsq_s16(v38))), vaddq_s16(vaddq_s16(vabsq_s16(v61), vabsq_s16(v59)), vaddq_s16(vabsq_s16(v60), vabsq_s16(v62))))), 1uLL);
  v63 = vaddq_s16(v59, v35);
  v64 = vsubq_s16(v35, v59);
  v65 = vaddq_s16(v61, v37);
  v66 = vsubq_s16(v37, v61);
  v67 = vaddq_s16(v60, v36);
  v68 = vsubq_s16(v36, v60);
  v69 = vaddq_s16(v62, v38);
  v70 = vsubq_s16(v38, v62);
  v71 = vzip2q_s64(v63, v64);
  v63.i64[1] = v64.i64[0];
  v72 = vzip2q_s64(v65, v66);
  v65.i64[1] = v66.i64[0];
  v73 = vzip2q_s64(v67, v68);
  v67.i64[1] = v68.i64[0];
  v74 = vzip2q_s64(v69, v70);
  v69.i64[1] = v70.i64[0];
  result = COERCE_FLOAT(vaddlvq_u16(vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v65), vabsq_s16(v72)), vmaxq_u16(vabsq_s16(v63), vabsq_s16(v71))), vaddq_s16(vmaxq_u16(vabsq_s16(v67), vabsq_s16(v73)), vmaxq_u16(vabsq_s16(v69), vabsq_s16(v74))))));
  *a5 = (LODWORD(result) + 1) >> 1;
  return result;
}

float sub_2774E971C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = 0;
  do
  {
    if (a1 >= 1)
    {
      for (i = 0; i < a1; i += 16)
      {
        v8 = 0;
        v9 = a3 + 2 * i;
        v10 = v99;
        v11 = a5 + 2 * i;
        do
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = (v9 + v12);
            v15 = (v11 + v12);
            v16 = *&v14->i8[a4];
            v17 = *&v14->i8[2 * a4];
            v18 = *&v14->i8[3 * a4];
            v19 = *&v15->i8[a6];
            v20 = *&v15->i8[2 * a6];
            v21 = vsubl_u8(*v14, *v15);
            v22 = vsubl_high_u8(*v14->i8, *v15->i8);
            v23 = vsubl_u8(*v16.i8, *v19.i8);
            v24 = vsubl_high_u8(v16, v19);
            v25 = vsubl_u8(*v17.i8, *v20.i8);
            v26 = vsubl_high_u8(v17, v20);
            v27 = *&v15->i8[3 * a6];
            v28 = vsubl_u8(*v18.i8, *v27.i8);
            v29 = vsubl_high_u8(v18, v27);
            v30 = vaddq_s16(v23, v21);
            v31 = vsubq_s16(v21, v23);
            v32 = vaddq_s16(v28, v25);
            v33 = vsubq_s16(v25, v28);
            v34 = vzip1q_s16(v30, v31);
            v35 = vzip2q_s16(v30, v31);
            v36 = vzip1q_s16(v32, v33);
            v37 = vzip2q_s16(v32, v33);
            v38 = vaddq_s16(v36, v34);
            v39 = vsubq_s16(v34, v36);
            v40 = vaddq_s16(v37, v35);
            v41 = vsubq_s16(v35, v37);
            v42 = vzip1q_s32(v38, v39);
            v43 = vzip2q_s32(v38, v39);
            v44 = vzip1q_s32(v40, v41);
            v45 = vzip2q_s32(v40, v41);
            v46 = vaddq_s16(v43, v42);
            v47 = vsubq_s16(v42, v43);
            v48 = vaddq_s16(v45, v44);
            v49 = vsubq_s16(v44, v45);
            v50 = vaddq_s16(v46, v48);
            v51 = vsubq_s16(v46, v48);
            v52 = vaddq_s16(v49, v47);
            v53 = vsubq_s16(v47, v49);
            v54 = vaddq_s16(v24, v22);
            v55 = vsubq_s16(v22, v24);
            v56 = vaddq_s16(v29, v26);
            v57 = vsubq_s16(v26, v29);
            v58 = vzip1q_s16(v54, v55);
            v59 = vzip2q_s16(v54, v55);
            v60 = vzip1q_s16(v56, v57);
            v61 = vzip2q_s16(v56, v57);
            v62 = vaddq_s16(v60, v58);
            v63 = vsubq_s16(v58, v60);
            v64 = vaddq_s16(v61, v59);
            v65 = vsubq_s16(v59, v61);
            v66 = vzip1q_s32(v62, v63);
            v67 = vzip2q_s32(v62, v63);
            v68 = vzip1q_s32(v64, v65);
            v69 = vzip2q_s32(v64, v65);
            v70 = vaddq_s16(v67, v66);
            v71 = vsubq_s16(v66, v67);
            v72 = vaddq_s16(v69, v68);
            v73 = vsubq_s16(v68, v69);
            v74 = vaddq_s16(v70, v72);
            v75 = vsubq_s16(v70, v72);
            v76 = vaddq_s16(v73, v71);
            *v10 = vaddq_s16(v74, v50);
            v10[1] = vaddq_s16(v76, v52);
            LOBYTE(v14) = v13;
            v77 = vsubq_s16(v71, v73);
            v10[2] = vaddq_s16(v75, v51);
            v10[3] = vaddq_s16(v77, v53);
            v10[4] = vsubq_s16(v50, v74);
            v10[5] = vsubq_s16(v52, v76);
            v10[6] = vsubq_s16(v51, v75);
            v10[7] = vsubq_s16(v53, v77);
            v10 += 8;
            v12 = 16;
            v13 = 0;
          }

          while ((v14 & 1) != 0);
          v9 += 4 * a4;
          v11 += 4 * a6;
          v78 = v8 >= 0xC;
          v8 += 4;
        }

        while (!v78);
        v79 = 0;
        v80 = 0uLL;
        do
        {
          v81 = *&v99[v79];
          v82 = *&v99[v79 + 128];
          v83 = *&v99[v79 + 256];
          v84 = *&v99[v79 + 384];
          v85 = *&v99[v79 + 512];
          v86 = *&v99[v79 + 640];
          v87 = *&v99[v79 + 768];
          v88 = *&v99[v79 + 896];
          v89 = vaddq_s16(v83, v81);
          v90 = vaddq_s16(v84, v82);
          v91 = vsubq_s16(v81, v83);
          v92 = vsubq_s16(v82, v84);
          v93 = vaddq_s16(v87, v85);
          v94 = vaddq_s16(v88, v86);
          v95 = vsubq_s16(v85, v87);
          v96 = vsubq_s16(v86, v88);
          v80 = vpadalq_u16(vpadalq_u16(v80, vaddq_s16(vmaxq_u16(vabsq_s16(vsubq_s16(v89, v93)), vabsq_s16(vsubq_s16(v90, v94))), vmaxq_u16(vabsq_s16(vaddq_s16(v93, v89)), vabsq_s16(vaddq_s16(v94, v90))))), vaddq_s16(vmaxq_u16(vabsq_s16(vsubq_s16(v91, v95)), vabsq_s16(vsubq_s16(v92, v96))), vmaxq_u16(vabsq_s16(vaddq_s16(v95, v91)), vabsq_s16(vaddq_s16(v96, v92)))));
          v79 += 16;
        }

        while (v79 != 128);
        v6 = vrsra_n_u32(v6, *&vpaddq_s32(v80, v80), 2uLL);
      }
    }

    a3 += 16 * a4;
    a5 += 16 * a6;
    v97 = __OFSUB__(a2, 16);
    a2 -= 16;
  }

  while (!((a2 < 0) ^ v97 | (a2 == 0)));
  LODWORD(result) = vpadd_s32(v6, v6).u32[0];
  return result;
}

float sub_2774E9A1C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  do
  {
    if (a1 >= 1)
    {
      v7 = 0;
      for (i = 0; i < a1; i += 8)
      {
        v9 = *(a3 + v7);
        v10 = *(a5 + v7);
        v11 = vsubl_u8(*v9.i8, *v10.i8);
        v12 = vsubl_high_u8(v9, v10);
        v13 = (a3 + v7 + a4);
        v14 = (a5 + v7 + a6);
        v15 = vsubl_u8(*v13, *v14);
        v16 = vsubl_high_u8(*v13->i8, *v14->i8);
        v17 = (v13 + a4);
        v18 = (v14 + a6);
        v19 = vsubl_u8(*v17, *v18);
        v20 = vsubl_high_u8(*v17->i8, *v18->i8);
        v21 = (v17 + a4);
        v22 = (v18 + a6);
        v23 = vsubl_u8(*v21, *v22);
        v24 = vsubl_high_u8(*v21->i8, *v22->i8);
        v25 = (v21 + a4);
        v26 = (v22 + a6);
        v27 = vsubl_u8(*v25, *v26);
        v28 = vsubl_high_u8(*v25->i8, *v26->i8);
        v29 = (v25 + a4);
        v30 = (v26 + a6);
        v31 = vsubl_u8(*v29, *v30);
        v32 = vsubl_high_u8(*v29->i8, *v30->i8);
        v33 = (v29 + a4);
        v34 = (v30 + a6);
        v35 = vsubl_u8(*v33, *v34);
        v36 = vsubl_high_u8(*v33->i8, *v34->i8);
        v37 = *&v33->i8[a4];
        v38 = *&v34->i8[a6];
        v39 = vsubl_u8(*v37.i8, *v38.i8);
        v40 = vsubl_high_u8(v37, v38);
        v41 = vaddq_s16(v15, v11);
        v42 = vsubq_s16(v11, v15);
        v43 = vaddq_s16(v23, v19);
        v44 = vsubq_s16(v19, v23);
        v45 = vzip1q_s16(v41, v42);
        v46 = vzip2q_s16(v41, v42);
        v47 = vzip1q_s16(v43, v44);
        v48 = vzip2q_s16(v43, v44);
        v49 = vaddq_s16(v47, v45);
        v50 = vsubq_s16(v45, v47);
        v51 = vaddq_s16(v48, v46);
        v52 = vsubq_s16(v46, v48);
        v53 = vzip1q_s32(v49, v50);
        v54 = vzip2q_s32(v49, v50);
        v55 = vzip1q_s32(v51, v52);
        v56 = vzip2q_s32(v51, v52);
        v57 = vaddq_s16(v54, v53);
        v58 = vsubq_s16(v53, v54);
        v59 = vaddq_s16(v56, v55);
        v60 = vsubq_s16(v55, v56);
        v61 = vaddq_s16(v16, v12);
        v62 = vsubq_s16(v12, v16);
        v63 = vaddq_s16(v57, v59);
        v64 = vaddq_s16(v24, v20);
        v65 = vsubq_s16(v20, v24);
        v66 = vzip1q_s16(v61, v62);
        v67 = vzip2q_s16(v61, v62);
        v68 = vzip1q_s16(v64, v65);
        v69 = vsubq_s16(v57, v59);
        v70 = vzip2q_s16(v64, v65);
        v71 = vaddq_s16(v68, v66);
        v72 = vsubq_s16(v66, v68);
        v73 = vaddq_s16(v70, v67);
        v74 = vsubq_s16(v67, v70);
        v75 = vaddq_s16(v60, v58);
        v76 = vzip1q_s32(v71, v72);
        v77 = vzip2q_s32(v71, v72);
        v78 = vzip1q_s32(v73, v74);
        v79 = vzip2q_s32(v73, v74);
        v80 = vaddq_s16(v77, v76);
        v81 = vsubq_s16(v58, v60);
        v82 = vsubq_s16(v76, v77);
        v83 = vaddq_s16(v79, v78);
        v84 = vsubq_s16(v78, v79);
        v85 = vaddq_s16(v80, v83);
        v86 = vsubq_s16(v80, v83);
        v87 = vaddq_s16(v84, v82);
        v88 = vsubq_s16(v82, v84);
        v89 = vaddq_s16(v85, v63);
        v90 = vsubq_s16(v63, v85);
        v91 = vaddq_s16(v87, v75);
        v92 = vsubq_s16(v75, v87);
        v93 = vaddq_s16(v86, v69);
        v94 = vaddq_s16(v31, v27);
        v95 = vsubq_s16(v27, v31);
        v96 = vaddq_s16(v39, v35);
        v97 = vsubq_s16(v35, v39);
        v98 = vzip1q_s16(v94, v95);
        v99 = vsubq_s16(v69, v86);
        v100 = vzip2q_s16(v94, v95);
        v101 = vzip1q_s16(v96, v97);
        v102 = vzip2q_s16(v96, v97);
        v103 = vaddq_s16(v101, v98);
        v104 = vsubq_s16(v98, v101);
        v105 = vaddq_s16(v88, v81);
        v106 = vaddq_s16(v102, v100);
        v107 = vsubq_s16(v100, v102);
        v108 = vzip1q_s32(v103, v104);
        v109 = vzip2q_s32(v103, v104);
        v110 = vzip1q_s32(v106, v107);
        v111 = vsubq_s16(v81, v88);
        v112 = vzip2q_s32(v106, v107);
        v113 = vaddq_s16(v109, v108);
        v114 = vsubq_s16(v108, v109);
        v115 = vaddq_s16(v112, v110);
        v116 = vsubq_s16(v110, v112);
        v117 = vaddq_s16(v113, v115);
        v118 = vaddq_s16(v32, v28);
        v119 = vsubq_s16(v28, v32);
        v120 = vaddq_s16(v40, v36);
        v121 = vsubq_s16(v36, v40);
        v122 = vzip1q_s16(v118, v119);
        v123 = vsubq_s16(v113, v115);
        v124 = vzip2q_s16(v118, v119);
        v125 = vzip1q_s16(v120, v121);
        v126 = vzip2q_s16(v120, v121);
        v127 = vaddq_s16(v125, v122);
        v128 = vsubq_s16(v122, v125);
        v129 = vaddq_s16(v116, v114);
        v130 = vaddq_s16(v126, v124);
        v131 = vsubq_s16(v124, v126);
        v132 = vzip1q_s32(v127, v128);
        v133 = vzip2q_s32(v127, v128);
        v134 = vzip1q_s32(v130, v131);
        v135 = vsubq_s16(v114, v116);
        v136 = vzip2q_s32(v130, v131);
        v137 = vaddq_s16(v133, v132);
        v138 = vsubq_s16(v132, v133);
        v139 = vaddq_s16(v136, v134);
        v140 = vsubq_s16(v134, v136);
        v141 = vaddq_s16(v137, v139);
        v142 = vsubq_s16(v137, v139);
        v143 = vaddq_s16(v140, v138);
        v144 = vsubq_s16(v138, v140);
        v145 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v90), vabsq_s16(vsubq_s16(v117, v141))), vmaxq_u16(vabsq_s16(v89), vabsq_s16(vaddq_s16(v141, v117)))), vaddq_s16(vmaxq_u16(vabsq_s16(v91), vabsq_s16(vaddq_s16(v143, v129))), vmaxq_u16(vabsq_s16(v92), vabsq_s16(vsubq_s16(v129, v143))))), vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v93), vabsq_s16(vaddq_s16(v142, v123))), vmaxq_u16(vabsq_s16(v99), vabsq_s16(vsubq_s16(v123, v142)))), vmaxq_u16(vabsq_s16(v105), vabsq_s16(vaddq_s16(v144, v135))))), vmaxq_u16(vabsq_s16(v111), vabsq_s16(vsubq_s16(v135, v144)))));
        v7 += 16;
        v6 = vrsra_n_u32(v6, *&vpaddq_s32(v145, v145), 1uLL);
      }
    }

    a3 += 8 * a4;
    a5 += 8 * a6;
    v146 = __OFSUB__(a2, 8);
    a2 -= 8;
  }

  while (!((a2 < 0) ^ v146 | (a2 == 0)));
  LODWORD(result) = vpadd_s32(v6, v6).u32[0];
  return result;
}

float sub_2774E9D68(int a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  if (a1 >= 8)
  {
    v35 = 4 * a4;
    v36 = 4 * a6;
    v37 = a1;
    v38 = a5 + 3 * a6;
    v39 = a5 + 2 * a6;
    v40 = a5 + a6;
    v41 = a3 + 3 * a4;
    v42 = a3 + a4;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = a3 + 2 * a4;
    do
    {
      v46 = 0;
      for (i = 0; i < v37; i += 8)
      {
        v48 = *a3[v46 / 8].i8;
        v49 = *&v42[v46];
        v50 = *&v45[v46];
        v51 = *&v41[v46];
        v52 = *a5[v46 / 8].i8;
        v53 = *&v40[v46];
        v54 = *&v39[v46];
        v55 = *&v38[v46];
        v56 = vsubl_u8(*v48.i8, *v52.i8);
        v57 = vsubl_high_u8(v48, v52);
        v58 = vsubl_u8(*v49.i8, *v53.i8);
        v59 = vsubl_high_u8(v49, v53);
        v60 = vsubl_u8(*v50.i8, *v54.i8);
        v61 = vsubl_high_u8(v50, v54);
        v62 = vsubl_u8(*v51.i8, *v55.i8);
        v63 = vsubl_high_u8(v51, v55);
        v64 = vaddq_s16(v58, v56);
        v65 = vsubq_s16(v56, v58);
        v66 = vaddq_s16(v62, v60);
        v67 = vsubq_s16(v60, v62);
        v68 = vzip1q_s16(v64, v65);
        v69 = vzip2q_s16(v64, v65);
        v70 = vzip1q_s16(v66, v67);
        v71 = vzip2q_s16(v66, v67);
        v72 = vaddq_s16(v70, v68);
        v73 = vsubq_s16(v68, v70);
        v74 = vaddq_s16(v71, v69);
        v75 = vsubq_s16(v69, v71);
        v76 = vzip1q_s32(v72, v73);
        v77 = vzip2q_s32(v72, v73);
        v78 = vzip1q_s32(v74, v75);
        v79 = vzip2q_s32(v74, v75);
        v80 = vaddq_s16(v78, v76);
        v81 = vsubq_s16(v76, v78);
        v82 = vaddq_s16(v79, v77);
        v83 = vmaxq_u16(vabsq_s16(v81), vabsq_s16(vsubq_s16(v77, v79)));
        v84 = vaddq_s16(v59, v57);
        v85 = vsubq_s16(v57, v59);
        v86 = vaddq_s16(v63, v61);
        v87 = vsubq_s16(v61, v63);
        v88 = vzip1q_s16(v84, v85);
        v89 = vzip2q_s16(v84, v85);
        v90 = vzip1q_s16(v86, v87);
        v91 = vzip2q_s16(v86, v87);
        v92 = vaddq_s16(v90, v88);
        v93 = vsubq_s16(v88, v90);
        v94 = vaddq_s16(v91, v89);
        v95 = vsubq_s16(v89, v91);
        v96 = vzip1q_s32(v92, v93);
        v97 = vzip2q_s32(v92, v93);
        v98 = vzip1q_s32(v94, v95);
        v99 = vzip2q_s32(v94, v95);
        v100 = vaddq_s16(vaddq_s16(v83, vmaxq_u16(vabsq_s16(v80), vabsq_s16(v82))), vaddq_s16(vmaxq_u16(vabsq_s16(vaddq_s16(v98, v96)), vabsq_s16(vaddq_s16(v99, v97))), vmaxq_u16(vabsq_s16(vsubq_s16(v96, v98)), vabsq_s16(vsubq_s16(v97, v99)))));
        v44 = vaddw_u16(v44, *v100.i8);
        v43 = vaddw_high_u16(v43, v100);
        v46 += 16;
      }

      a3 = (a3 + v35);
      a5 = (a5 + v36);
      v38 += v36;
      v39 += v36;
      v40 += v36;
      v41 += v35;
      v45 += v35;
      v42 += v35;
      a2 -= 4;
    }

    while (a2);
    return COERCE_FLOAT(vaddvq_s32(vaddq_s32(v44, v43)));
  }

  else
  {
    v6 = a2 + 4;
    v7 = 0uLL;
    do
    {
      v8 = (a3 + a4 + a4);
      v9 = *v8;
      v10 = (v8 + a4);
      v11 = (a5 + a6 + a6);
      v12 = *v11;
      v13 = (v11 + a6);
      v14 = vsubl_u8(*a3, *a5);
      v15 = vsubl_u8(*(a3 + a4), *(a5 + a6));
      v16 = vsubl_u8(v9, v12);
      v17 = vsubl_u8(*v10, *v13);
      v18 = vaddq_s16(v15, v14);
      v19 = vsubq_s16(v14, v15);
      v20 = vaddq_s16(v17, v16);
      v21 = vsubq_s16(v16, v17);
      v22 = vzip1q_s16(v18, v19);
      v23 = vzip2q_s16(v18, v19);
      v24 = vzip1q_s16(v20, v21);
      v25 = vzip2q_s16(v20, v21);
      v26 = vaddq_s16(v24, v22);
      v27 = vsubq_s16(v22, v24);
      v28 = vaddq_s16(v25, v23);
      v29 = vsubq_s16(v23, v25);
      v30 = vzip1q_s32(v26, v27);
      v31 = vzip2q_s32(v26, v27);
      v32 = vzip1q_s32(v28, v29);
      v33 = vzip2q_s32(v28, v29);
      v7 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vaddq_s16(v32, v30)), vabsq_s16(vaddq_s16(v33, v31))), v7), vmaxq_u16(vabsq_s16(vsubq_s16(v30, v32)), vabsq_s16(vsubq_s16(v31, v33))));
      v6 -= 4;
      a3 = (v10 + a4);
      a5 = (v13 + a6);
    }

    while (v6 > 4);
    return COERCE_FLOAT(vaddlvq_u16(v7));
  }
}

uint64_t sub_2774E9FF4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v72 = *MEMORY[0x277D85DE8];
  v67 = 32 * a6;
  v68 = 32 * a4;
  do
  {
    v69 = a2;
    if (a1 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = v70;
        sub_2774EA2A8((a3 + v12), a4, (a5 + v12), a6, 32, v70);
        sub_2774EA2A8((a3 + v12 + 16), a4, (a5 + v12 + 16), a6, 32, v71);
        for (i = 0; i != 4; ++i)
        {
          for (j = 9; j != 17; j += 2)
          {
            v16 = &v13[j];
            v17 = v13[j - 9];
            v18 = v13[j - 8];
            v19 = v13[j - 1];
            v20 = v13[j];
            v21 = v13[j + 7];
            v22 = v13[j + 8];
            v23 = v13[j + 15];
            v24 = v13[j + 16];
            v25 = vaddq_s16(v19, v17);
            v26 = vaddq_s16(v20, v18);
            v27 = vsubq_s16(v17, v19);
            v28 = vsubq_s16(v18, v20);
            v29 = vaddq_s16(v23, v21);
            v30 = vaddq_s16(v24, v22);
            v31 = vsubq_s16(v21, v23);
            v32 = vsubq_s16(v22, v24);
            v33 = vzip2q_s64(v25, v27);
            v25.i64[1] = v27.i64[0];
            v34 = vzip2q_s64(v26, v28);
            v26.i64[1] = v28.i64[0];
            v35 = vzip2q_s64(v29, v31);
            v29.i64[1] = v31.i64[0];
            v36 = vzip2q_s64(v30, v32);
            v30.i64[1] = v32.i64[0];
            v37 = vaddq_s16(v25, v33);
            v38 = vaddq_s16(v26, v34);
            v39 = vsubq_s16(v25, v33);
            v40 = vsubq_s16(v26, v34);
            v41 = vaddq_s16(v29, v35);
            v42 = vaddq_s16(v30, v36);
            v43 = vsubq_s16(v29, v35);
            v44 = vsubq_s16(v30, v36);
            v45 = vrhaddq_s16(v37, v41);
            v46 = vrhaddq_s16(v38, v42);
            v47 = vrshrq_n_s16(vsubq_s16(v37, v41), 1uLL);
            v48 = vrshrq_n_s16(vsubq_s16(v38, v42), 1uLL);
            v49 = vrhaddq_s16(v39, v43);
            v50 = vrhaddq_s16(v40, v44);
            v51 = vrshrq_n_s16(vsubq_s16(v39, v43), 1uLL);
            v16[-9] = vhaddq_s16(v45, v46);
            v16[-8] = vhaddq_s16(v47, v48);
            v52 = vrshrq_n_s16(vsubq_s16(v40, v44), 1uLL);
            v16[-1] = vhaddq_s16(v49, v50);
            *v16 = vhaddq_s16(v51, v52);
            v16[7] = vhsubq_s16(v45, v46);
            v16[8] = vhsubq_s16(v47, v48);
            v16[15] = vhsubq_s16(v49, v50);
            v16[16] = vhsubq_s16(v51, v52);
          }

          v13 += 32;
        }

        v53 = 0uLL;
        v54 = v70;
        v55 = 16;
        do
        {
          v56 = v54[1];
          v57 = v54[64];
          v58 = v54[65];
          v59 = v54[32];
          v60 = v54[33];
          v61 = v54[96];
          v62 = v54[97];
          v63 = vmaxq_u16(vabsq_s16(vsubq_s16(*v54, v59)), vabsq_s16(vsubq_s16(v57, v61)));
          v64 = vaddq_s16(vmaxq_u16(vabsq_s16(vaddq_s16(v60, v56)), vabsq_s16(vaddq_s16(v62, v58))), vmaxq_u16(vabsq_s16(vaddq_s16(v59, *v54)), vabsq_s16(vaddq_s16(v61, v57))));
          v65 = vaddq_s16(vmaxq_u16(vabsq_s16(vsubq_s16(v56, v60)), vabsq_s16(vsubq_s16(v58, v62))), v63);
          v53 = vaddw_u16(vaddw_high_u16(vaddw_u16(vaddw_high_u16(v53, v64), *v64.i8), v65), *v65.i8);
          v54 += 2;
          --v55;
        }

        while (v55);
        v11 = v11 + ((vaddvq_s32(v53) + 1) >> 1);
        v12 += 32;
      }

      while (v12 < a1);
    }

    a3 += v68;
    a5 += v67;
    a2 = v69 - 32;
  }

  while (v69 > 32);
  return v11;
}

uint8x8_t *sub_2774EA2A8(uint8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, int a5, int16x8_t *a6)
{
  v6 = a5 + 4;
  do
  {
    v7 = *&result->i8[a2];
    v8 = (result + a2 + a2);
    v9 = *v8;
    v10 = &v8->i8[a2];
    v11 = *&a3->i8[a4];
    v12 = (a3 + a4 + a4);
    v13 = *v12;
    v14 = &v12->i8[a4];
    v15 = vsubl_u8(*result, *a3);
    v16 = vsubl_high_u8(*result->i8, *a3->i8);
    v17 = vsubl_u8(*v7.i8, *v11.i8);
    v18 = vsubl_high_u8(v7, v11);
    v19 = vsubl_u8(*v9.i8, *v13.i8);
    v20 = vsubl_high_u8(v9, v13);
    v21 = vsubl_u8(*v10, *v14);
    v22 = vsubl_high_u8(*v10->i8, *v14->i8);
    v23 = vaddq_s16(v17, v15);
    v24 = vaddq_s16(v18, v16);
    v25 = vsubq_s16(v15, v17);
    v26 = vsubq_s16(v16, v18);
    v27 = vaddq_s16(v21, v19);
    v28 = vaddq_s16(v22, v20);
    v29 = vsubq_s16(v19, v21);
    v30 = vsubq_s16(v20, v22);
    v31 = vtrn1q_s16(v23, v25);
    v32 = vtrn2q_s16(v23, v25);
    v33 = vtrn1q_s16(v24, v26);
    v34 = vtrn2q_s16(v24, v26);
    v35 = vtrn1q_s16(v27, v29);
    v36 = vtrn2q_s16(v27, v29);
    v37 = vtrn1q_s16(v28, v30);
    v38 = vtrn2q_s16(v28, v30);
    v39 = vaddq_s16(v32, v31);
    v40 = vaddq_s16(v34, v33);
    v41 = vsubq_s16(v31, v32);
    v42 = vsubq_s16(v33, v34);
    v43 = vaddq_s16(v36, v35);
    v44 = vaddq_s16(v38, v37);
    v45 = vsubq_s16(v35, v36);
    v46 = vsubq_s16(v37, v38);
    v47 = vaddq_s16(v43, v39);
    v48 = vaddq_s16(v44, v40);
    v49 = vsubq_s16(v39, v43);
    v50 = vsubq_s16(v40, v44);
    v51 = vaddq_s16(v45, v41);
    v52 = vaddq_s16(v46, v42);
    v53 = vsubq_s16(v41, v45);
    v54 = vsubq_s16(v42, v46);
    v55 = vtrn1q_s32(v47, v49);
    v56 = vtrn2q_s32(v47, v49);
    v57 = vtrn1q_s32(v48, v50);
    v58 = vtrn2q_s32(v48, v50);
    v59 = vtrn1q_s32(v51, v53);
    v60 = vtrn2q_s32(v51, v53);
    v61 = vtrn1q_s32(v52, v54);
    *a6 = vaddq_s16(v56, v55);
    a6[1] = vaddq_s16(v58, v57);
    v62 = vtrn2q_s32(v52, v54);
    a6[2] = vaddq_s16(v60, v59);
    a6[3] = vaddq_s16(v62, v61);
    a6[4] = vsubq_s16(v55, v56);
    a6[5] = vsubq_s16(v57, v58);
    a6[6] = vsubq_s16(v59, v60);
    a6[7] = vsubq_s16(v61, v62);
    a6 += 8;
    v6 -= 4;
    result = (v10 + a2);
    a3 = (v14 + a4);
  }

  while (v6 > 4);
  return result;
}

uint64_t sub_2774EA3F0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  v53 = *MEMORY[0x277D85DE8];
  v51 = 16 * a4;
  v13 = 16 * a6;
  do
  {
    if (a1 >= 1)
    {
      v14 = 0;
      do
      {
        sub_2774EA2A8((a3 + v14), a4, (a5 + v14), a6, 16, v52);
        v15 = 0uLL;
        for (i = 9; i != 17; i += 2)
        {
          v17 = v52[i - 9];
          v18 = v52[i - 8];
          v19 = v52[i - 1];
          v20 = v52[i];
          v21 = v52[i + 7];
          v22 = v52[i + 8];
          v23 = v52[i + 15];
          v24 = v52[i + 16];
          v25 = vaddq_s16(v19, v17);
          v26 = vaddq_s16(v20, v18);
          v27 = vsubq_s16(v17, v19);
          v28 = vsubq_s16(v18, v20);
          v29 = vaddq_s16(v23, v21);
          v30 = vaddq_s16(v24, v22);
          v31 = vsubq_s16(v21, v23);
          v32 = vsubq_s16(v22, v24);
          v33 = vzip2q_s64(v25, v27);
          v25.i64[1] = v27.i64[0];
          v34 = vzip2q_s64(v26, v28);
          v35 = vzip2q_s64(v29, v31);
          v26.i64[1] = v28.i64[0];
          v29.i64[1] = v31.i64[0];
          v36 = vzip2q_s64(v30, v32);
          v30.i64[1] = v32.i64[0];
          v37 = vaddq_s16(v25, v33);
          v38 = vaddq_s16(v26, v34);
          v39 = vsubq_s16(v25, v33);
          v40 = vaddq_s16(v29, v35);
          v41 = vaddq_s16(v30, v36);
          v42 = vsubq_s16(v26, v34);
          v43 = vsubq_s16(v29, v35);
          v44 = vsubq_s16(v30, v36);
          v45 = vaddq_s16(v44, v42);
          v46 = vsubq_s16(v42, v44);
          v47 = vaddq_s16(vmaxq_u16(vabsq_s16(vsubq_s16(v37, v40)), vabsq_s16(vsubq_s16(v38, v41))), vmaxq_u16(vabsq_s16(vaddq_s16(v40, v37)), vabsq_s16(vaddq_s16(v41, v38))));
          v48 = vaddq_s16(vmaxq_u16(vabsq_s16(vsubq_s16(v39, v43)), vabsq_s16(v46)), vmaxq_u16(vabsq_s16(vaddq_s16(v43, v39)), vabsq_s16(v45)));
          v15 = vaddw_u16(vaddw_high_u16(vaddw_u16(vaddw_high_u16(v15, v47), *v47.i8), v48), *v48.i8);
        }

        v12 = v12 + ((vaddvq_s32(v15) + 2) >> 2);
        v14 += 16;
      }

      while (v14 < a1);
    }

    a3 += v51;
    a5 += v13;
    v49 = __OFSUB__(a2, 16);
    a2 -= 16;
  }

  while (!((a2 < 0) ^ v49 | (a2 == 0)));
  return v12;
}

uint64_t sub_2774EA5D8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  do
  {
    if (a1 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = (a3 + v8 + a4);
        v10 = *v9;
        v11 = (v9 + a4);
        v12 = *v11;
        v13 = (v11 + a4);
        v14 = (a5 + v8 + a6);
        v15 = *v14;
        v16 = (v14 + a6);
        v17 = *v13;
        v18 = *v16;
        v19 = (v16 + a6);
        v20 = vsubl_u8(*(a3 + v8), *(a5 + v8));
        v21 = vsubl_u8(v10, v15);
        v22 = vsubl_u8(v12, v18);
        v23 = (v13 + a4);
        v24 = *v23;
        v25 = (v23 + a4);
        v26 = *v25;
        v27 = (v25 + a4);
        v28 = *v27;
        v29 = *(v27 + a4);
        v30 = (v19 + a6 + a6);
        v31 = vsubl_u8(v17, *v19);
        v32 = *v30;
        v33 = (v30 + a6);
        v34 = vsubl_u8(v24, *(v19 + a6));
        v35 = vsubl_u8(v26, v32);
        v36 = vsubl_u8(v28, *v33);
        v37 = vsubl_u8(v29, *(v33 + a6));
        v38 = vaddq_s16(v21, v20);
        v39 = vsubq_s16(v20, v21);
        v40 = vaddq_s16(v31, v22);
        v41 = vsubq_s16(v22, v31);
        v42 = vtrn1q_s16(v38, v39);
        v43 = vtrn2q_s16(v38, v39);
        v44 = vtrn1q_s16(v40, v41);
        v45 = vtrn2q_s16(v40, v41);
        v46 = vaddq_s16(v43, v42);
        v47 = vsubq_s16(v42, v43);
        v48 = vaddq_s16(v45, v44);
        v49 = vsubq_s16(v44, v45);
        v50 = vaddq_s16(v48, v46);
        v51 = vsubq_s16(v46, v48);
        v52 = vaddq_s16(v49, v47);
        v53 = vsubq_s16(v47, v49);
        v54 = vtrn1q_s32(v50, v51);
        v55 = vtrn2q_s32(v50, v51);
        v56 = vtrn1q_s32(v52, v53);
        v57 = vtrn2q_s32(v52, v53);
        v58 = vaddq_s16(v55, v54);
        v59 = vaddq_s16(v35, v34);
        v60 = vsubq_s16(v34, v35);
        v61 = vaddq_s16(v37, v36);
        v62 = vsubq_s16(v36, v37);
        v63 = vtrn1q_s16(v59, v60);
        v64 = vsubq_s16(v54, v55);
        v65 = vtrn2q_s16(v59, v60);
        v66 = vtrn1q_s16(v61, v62);
        v67 = vtrn2q_s16(v61, v62);
        v68 = vaddq_s16(v65, v63);
        v69 = vsubq_s16(v63, v65);
        v70 = vaddq_s16(v57, v56);
        v71 = vaddq_s16(v67, v66);
        v72 = vsubq_s16(v66, v67);
        v73 = vaddq_s16(v71, v68);
        v74 = vsubq_s16(v68, v71);
        v75 = vaddq_s16(v72, v69);
        v76 = vsubq_s16(v56, v57);
        v77 = vsubq_s16(v69, v72);
        v78 = vtrn1q_s32(v73, v74);
        v79 = vtrn2q_s32(v73, v74);
        v80 = vtrn1q_s32(v75, v77);
        v81 = vtrn2q_s32(v75, v77);
        v82 = vaddq_s16(v79, v78);
        v83 = vsubq_s16(v78, v79);
        v84 = vaddq_s16(v81, v80);
        v85 = vsubq_s16(v80, v81);
        v86 = vaddq_s16(v82, v58);
        v87 = vsubq_s16(v58, v82);
        v88 = vaddq_s16(v84, v70);
        v89 = vsubq_s16(v70, v84);
        v90 = vaddq_s16(v83, v64);
        v91 = vsubq_s16(v64, v83);
        v92 = vaddq_s16(v85, v76);
        v93 = vzip2q_s64(v86, v87);
        v86.i64[1] = v87.i64[0];
        v94 = vzip2q_s64(v88, v89);
        v88.i64[1] = v89.i64[0];
        v95 = vsubq_s16(v76, v85);
        v96 = vzip2q_s64(v90, v91);
        v97 = vzip2q_s64(v92, v95);
        v90.i64[1] = v91.i64[0];
        v92.i64[1] = v95.i64[0];
        result = result + ((vaddlvq_u16(vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v88), vabsq_s16(v94)), vmaxq_u16(vabsq_s16(v86), vabsq_s16(v93))), vaddq_s16(vmaxq_u16(vabsq_s16(v90), vabsq_s16(v96)), vmaxq_u16(vabsq_s16(v92), vabsq_s16(v97))))) + 1) >> 1);
        v8 += 8;
      }

      while (v8 < a1);
    }

    a3 += 8 * a4;
    a5 += 8 * a6;
    v98 = __OFSUB__(a2, 8);
    a2 -= 8;
  }

  while (!((a2 < 0) ^ v98 | (a2 == 0)));
  return result;
}

uint64_t sub_2774EA818(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 4 * a4;
  v7 = 4 * a6;
  v8 = a5 + 3 * a6;
  v9 = a5 + a6;
  v10 = a3 + 3 * a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = a3 + a4;
  v14 = a5 + 2 * a6;
  v15 = a3 + 2 * a4;
  do
  {
    if (a1 >= 1)
    {
      for (i = 0; i < a1; i += 16)
      {
        v17 = *(a3 + i);
        v18 = *(v13 + i);
        v19 = *(v15 + i);
        v20 = *(v10 + i);
        v21 = *(a5 + i);
        v22 = *(v9 + i);
        v23 = *(v14 + i);
        v24 = *(v8 + i);
        v25 = vsubl_u8(*v17.i8, *v21.i8);
        v26 = vsubl_high_u8(v17, v21);
        v27 = vsubl_u8(*v18.i8, *v22.i8);
        v28 = vsubl_high_u8(v18, v22);
        v29 = vsubl_u8(*v19.i8, *v23.i8);
        v30 = vsubl_high_u8(v19, v23);
        v31 = vsubl_u8(*v20.i8, *v24.i8);
        v32 = vsubl_high_u8(v20, v24);
        v33 = vaddq_s16(v27, v25);
        v34 = vaddq_s16(v28, v26);
        v35 = vsubq_s16(v25, v27);
        v36 = vsubq_s16(v26, v28);
        v37 = vaddq_s16(v31, v29);
        v38 = vaddq_s16(v32, v30);
        v39 = vsubq_s16(v29, v31);
        v40 = vsubq_s16(v30, v32);
        v41 = vtrn1q_s16(v33, v35);
        v42 = vtrn2q_s16(v33, v35);
        v43 = vtrn1q_s16(v34, v36);
        v44 = vtrn2q_s16(v34, v36);
        v45 = vtrn1q_s16(v37, v39);
        v46 = vtrn2q_s16(v37, v39);
        v47 = vtrn1q_s16(v38, v40);
        v48 = vtrn2q_s16(v38, v40);
        v49 = vaddq_s16(v42, v41);
        v50 = vaddq_s16(v44, v43);
        v51 = vsubq_s16(v41, v42);
        v52 = vsubq_s16(v43, v44);
        v53 = vaddq_s16(v46, v45);
        v54 = vaddq_s16(v48, v47);
        v55 = vsubq_s16(v45, v46);
        v56 = vsubq_s16(v47, v48);
        v57 = vaddq_s16(v53, v49);
        v58 = vaddq_s16(v54, v50);
        v59 = vsubq_s16(v49, v53);
        v60 = vsubq_s16(v50, v54);
        v61 = vaddq_s16(v55, v51);
        v62 = vaddq_s16(v56, v52);
        v63 = vsubq_s16(v51, v55);
        v64 = vsubq_s16(v52, v56);
        v65 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v58, v60)), vabsq_s16(vtrn2q_s32(v58, v60))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v57, v59)), vabsq_s16(vtrn2q_s32(v57, v59)))), vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v61, v63)), vabsq_s16(vtrn2q_s32(v61, v63))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v62, v64)), vabsq_s16(vtrn2q_s32(v62, v64)))));
        v12 = vaddw_u16(v12, *v65.i8);
        v11 = vaddw_high_u16(v11, v65);
      }
    }

    a3 += v6;
    a5 += v7;
    v8 += v7;
    v14 += v7;
    v9 += v7;
    v10 += v6;
    v15 += v6;
    v13 += v6;
    a2 -= 4;
  }

  while (a2);
  return vaddvq_s32(vaddq_s32(v12, v11));
}

uint64_t sub_2774EA9C0(uint64_t a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  do
  {
    v8 = (a3 + a4 + a4);
    v9 = *v8;
    v10 = (v8 + a4);
    v11 = (a5 + a6 + a6);
    v12 = *v11;
    v13 = (v11 + a6);
    v14 = vsubl_u8(*a3, *a5);
    v15 = vsubl_u8(*(a3 + a4), *(a5 + a6));
    v16 = vsubl_u8(v9, v12);
    v17 = vsubl_u8(*v10, *v13);
    v18 = vaddq_s16(v15, v14);
    v19 = vsubq_s16(v14, v15);
    v20 = vaddq_s16(v17, v16);
    v21 = vsubq_s16(v16, v17);
    v22 = vtrn1q_s16(v18, v19);
    v23 = vtrn2q_s16(v18, v19);
    v24 = vtrn1q_s16(v20, v21);
    v25 = vtrn2q_s16(v20, v21);
    v26 = vaddq_s16(v23, v22);
    v27 = vsubq_s16(v22, v23);
    v28 = vaddq_s16(v25, v24);
    v29 = vsubq_s16(v24, v25);
    v30 = vaddq_s16(v28, v26);
    v31 = vsubq_s16(v26, v28);
    v32 = vaddq_s16(v29, v27);
    v33 = vsubq_s16(v27, v29);
    v7 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v30, v31)), vabsq_s16(vtrn2q_s32(v30, v31))), v7), vmaxq_u16(vabsq_s16(vtrn1q_s32(v32, v33)), vabsq_s16(vtrn2q_s32(v32, v33))));
    v6 -= 4;
    a3 = (v10 + a4);
    a5 = (v13 + a6);
  }

  while (v6 > 4);
  return vaddlvq_u16(v7);
}

uint64_t sub_2774EAAA0(uint64_t a1, int a2, __int32 *a3, uint64_t a4, __int32 *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  do
  {
    v8 = (a3 + a4);
    v9.i32[0] = *a3;
    v10 = (a3 + a4 + a4);
    v9.i32[1] = *v10;
    v11 = (v10 + a4);
    v12.i32[0] = *v8;
    v12.i32[1] = *v11;
    a3 = (v11 + a4);
    v13 = (a5 + a6);
    v14.i32[0] = *a5;
    v15 = (a5 + a6 + a6);
    v14.i32[1] = *v15;
    v16 = (v15 + a6);
    v17.i32[0] = *v13;
    v17.i32[1] = *v16;
    a5 = (v16 + a6);
    v18 = vsubl_u8(v9, v14);
    v19 = vsubl_u8(v12, v17);
    v20 = vaddq_s16(v19, v18);
    v21 = vsubq_s16(v18, v19);
    v22 = vtrn1q_s16(v20, v21);
    v23 = vtrn2q_s16(v20, v21);
    v24 = vaddq_s16(v23, v22);
    v25 = vsubq_s16(v22, v23);
    v26 = vzip2q_s64(v24, v25);
    v24.i64[1] = v25.i64[0];
    v27 = vaddq_s16(v24, v26);
    v28 = vsubq_s16(v24, v26);
    v7 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v27, v28)), vabsq_s16(vtrn2q_s32(v27, v28))), v7);
    v6 -= 4;
  }

  while (v6 > 4);
  return vaddlvq_u16(v7);
}

uint64_t sub_2774EAB38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v26 = result;
  v7 = 0;
  LODWORD(result) = 0;
  v8 = a5 + 1;
  v9 = 1;
  do
  {
    v10 = 0;
    v28 = v9;
    v30 = v26 + v7 * a2;
    v11 = 1;
    v29 = a3 + v7 * a4;
    do
    {
      v33 = result;
      v12 = 0;
      v13 = 0;
      v31 = v11;
      v14 = v30 + v10;
      v15 = v29 + v10;
      v32 = v8;
      v16 = (v8 + 1);
      v17 = 1;
      do
      {
        v18 = 0;
        v19 = v17;
        v20 = v14 + v12 * a2;
        v21 = 1;
        v22 = v15 + v12 * a4;
        do
        {
          v23 = v21;
          sub_2774EAC6C((v20 + v18), a2, (v22 + v18), a4, v16);
          v21 = 0;
          v13 += v24;
          v16 += 20;
          v18 = 16;
        }

        while ((v23 & 1) != 0);
        v17 = 0;
        v12 = 16;
      }

      while ((v19 & 1) != 0);
      v11 = 0;
      *v32 = v13;
      v8 = v32 + 21;
      result = (v13 + v33);
      v10 = 32;
    }

    while ((v31 & 1) != 0);
    v9 = 0;
    v7 = 32;
  }

  while ((v28 & 1) != 0);
  *a5 = result;
  return result;
}

float sub_2774EAC6C(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = &a1[a2];
  v6 = &a3[a4];
  v7 = *&a1->i8[a2];
  v8 = *&a3->i8[a4];
  v9 = *&v5->i8[a2];
  v10 = *&v6->i8[a4];
  v11 = vabdl_u8(*a1, *a3);
  v12 = vabdl_u8(*v7.i8, *v8.i8);
  v13 = vabdl_high_u8(*a1->i8, *a3->i8);
  v14 = vabdl_high_u8(v7, v8);
  v15 = vabdl_u8(*v5, *v6);
  v16 = vabdl_u8(*v9.i8, *v10.i8);
  v17 = vabdl_high_u8(*v5->i8, *v6->i8);
  v18 = vabdl_high_u8(v9, v10);
  v19 = 3;
  do
  {
    v20 = *&a1->i8[3 * a2];
    v21 = *&a1->i8[10 * a2];
    v22 = *&a1->i8[11 * a2];
    a1 = (a1 + 2 * a2);
    v23 = *&a3->i8[3 * a4];
    v24 = *&a3->i8[10 * a4];
    v25 = *&a3->i8[11 * a4];
    a3 = (a3 + 2 * a4);
    v11 = vabal_u8(v11, *a1, *a3);
    v12 = vabal_u8(v12, *v20.i8, *v23.i8);
    v13 = vabal_high_u8(v13, *a1->i8, *a3->i8);
    v14 = vabal_high_u8(v14, v20, v23);
    v15 = vabal_u8(v15, *v21.i8, *v24.i8);
    v16 = vabal_u8(v16, *v22.i8, *v25.i8);
    v17 = vabal_high_u8(v17, v21, v24);
    v18 = vabal_high_u8(v18, v22, v25);
    --v19;
  }

  while (v19);
  v26 = vpaddq_s16(vpaddq_s16(vaddq_s16(v11, v12), vaddq_s16(v14, v13)), vpaddq_s16(vaddq_s16(v16, v15), vaddq_s16(v18, v17)));
  *(a5 + 4) = vpaddlq_u16(v26);
  result = COERCE_FLOAT(vaddlvq_u16(v26));
  *a5 = result;
  return result;
}

uint64_t sub_2774EAD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = (a5 + 1);
  v12 = 1;
  do
  {
    v13 = 0;
    v14 = v12;
    v15 = a1 + v9 * a2;
    v16 = 1;
    v17 = a3 + v9 * a4;
    do
    {
      v18 = v16;
      sub_2774EAC6C((v15 + v13), a2, (v17 + v13), a4, v11);
      v16 = 0;
      v10 = (v19 + v10);
      v11 += 20;
      v13 = 16;
    }

    while ((v18 & 1) != 0);
    v12 = 0;
    v9 = 16;
  }

  while ((v14 & 1) != 0);
  *a5 = v10;
  return v10;
}

float sub_2774EAE2C(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, float *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 12;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = (a1 + a2 + a2);
    v11 = *v10;
    v12 = (v10 + a2);
    v13 = (a3 + a4 + a4);
    v14 = *v13;
    v15 = (v13 + a4);
    v5 = vabal_u8(v5, *a1, *a3);
    v6 = vabal_u8(v6, *(a1 + a2), *(a3 + a4));
    v8 = vabal_u8(v8, v11, v14);
    v9 = vabal_u8(v9, *v12, *v15);
    v7 -= 4;
    a1 = (v12 + a2);
    a3 = (v15 + a4);
  }

  while (v7 > 4);
  result = COERCE_FLOAT(vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(v6, v5), v8), v9)));
  *a5 = result;
  return result;
}

uint64_t sub_2774EAEC0(int a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  v6 = a3 + 3 * a4;
  v7 = a5 + 3 * a6;
  v8 = 0uLL;
  v9 = a3 + 2 * a4;
  v10 = a5 + 2 * a6;
  do
  {
    v11 = *&a3->i8[a4];
    v12 = *&a5->i8[a6];
    v13 = vsubl_u8(*a3, *a5);
    v14 = vsubl_high_u8(*a3->i8, *a5->i8);
    v15 = vsubl_u8(*v11.i8, *v12.i8);
    v16 = vsubl_high_u8(v11, v12);
    v17 = vmull_s16(*v13.i8, *v13.i8);
    v18 = vmull_s16(*v14.i8, *v14.i8);
    v19 = vmull_s16(*v15.i8, *v15.i8);
    v20 = vmull_s16(*v16.i8, *v16.i8);
    v21 = vmull_high_s16(v13, v13);
    v22 = vmull_high_s16(v14, v14);
    v23 = vmull_high_s16(v15, v15);
    v24 = vmull_high_s16(v16, v16);
    if (a2 >= 3)
    {
      v25 = 0;
      v26 = 0;
      v27 = a2 + 2;
      do
      {
        v28 = *&v9[v26];
        v29 = *&v6[v26];
        v30 = *&v10[v25];
        v31 = *&v7[v25];
        v32 = vsubl_u8(*v28.i8, *v30.i8);
        v33 = vsubl_high_u8(v28, v30);
        v34 = vsubl_u8(*v29.i8, *v31.i8);
        v35 = vsubl_high_u8(v29, v31);
        v17 = vmlal_s16(v17, *v32.i8, *v32.i8);
        v18 = vmlal_s16(v18, *v33.i8, *v33.i8);
        v19 = vmlal_s16(v19, *v34.i8, *v34.i8);
        v20 = vmlal_s16(v20, *v35.i8, *v35.i8);
        v21 = vmlal_high_s16(v21, v32, v32);
        v22 = vmlal_high_s16(v22, v33, v33);
        v23 = vmlal_high_s16(v23, v34, v34);
        v24 = vmlal_high_s16(v24, v35, v35);
        v27 -= 2;
        v26 += 2 * a4;
        v25 += 2 * a6;
      }

      while (v27 > 4);
    }

    a3 += 2;
    a5 += 2;
    v6 += 16;
    v8 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v17, v8), v20), v22), v24), vaddq_s32(vaddq_s32(vaddq_s32(v18, v19), v21), v23));
    v9 += 16;
    v7 += 16;
    v10 += 16;
    v36 = __OFSUB__(a1, 16);
    a1 -= 16;
  }

  while (!((a1 < 0) ^ v36 | (a1 == 0)));
  return vaddvq_s32(v8);
}

uint64_t sub_2774EAFDC(uint64_t a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  v6 = vsubl_u8(*a3, *a5);
  v7 = vsubl_u8(*(a3 + a4), *(a5 + a6));
  v8 = vsubl_u8(*(a3 + 2 * a4), *(a5 + 2 * a6));
  v9 = vsubl_u8(*(a3 + 3 * a4), *(a5 + 3 * a6));
  v10 = vmull_s16(*v6.i8, *v6.i8);
  v11 = vmull_s16(*v7.i8, *v7.i8);
  v12 = vmull_s16(*v8.i8, *v8.i8);
  v13 = vmull_s16(*v9.i8, *v9.i8);
  v14 = vmull_high_s16(v6, v6);
  v15 = vmull_high_s16(v7, v7);
  v16 = vmull_high_s16(v8, v8);
  v17 = vmull_high_s16(v9, v9);
  if (a2 >= 5)
  {
    v18 = a2 + 4;
    do
    {
      v19 = *(a3 + 5 * a4);
      v20 = *(a3 + 6 * a4);
      v21 = *(a3 + 7 * a4);
      v22 = *(a5 + 5 * a6);
      a3 = (a3 + 4 * a4);
      v23 = *(a5 + 6 * a6);
      v24 = *(a5 + 7 * a6);
      a5 = (a5 + 4 * a6);
      v25 = vsubl_u8(*a3, *a5);
      v26 = vsubl_u8(v19, v22);
      v27 = vsubl_u8(v20, v23);
      v28 = vsubl_u8(v21, v24);
      v10 = vmlal_s16(v10, *v25.i8, *v25.i8);
      v11 = vmlal_s16(v11, *v26.i8, *v26.i8);
      v12 = vmlal_s16(v12, *v27.i8, *v27.i8);
      v13 = vmlal_s16(v13, *v28.i8, *v28.i8);
      v14 = vmlal_high_s16(v14, v25, v25);
      v15 = vmlal_high_s16(v15, v26, v26);
      v16 = vmlal_high_s16(v16, v27, v27);
      v17 = vmlal_high_s16(v17, v28, v28);
      v18 -= 4;
    }

    while (v18 > 8);
  }

  return vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v11, v10), v12), vaddq_s32(v13, v14)), vaddq_s32(vaddq_s32(v15, v16), v17)));
}

uint64_t sub_2774EB0FC(uint64_t a1, int a2, __int32 *a3, uint64_t a4, __int32 *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = (a3 + a4);
    v12.i32[0] = *a3;
    v13 = (a3 + a4 + a4);
    v12.i32[1] = *v13;
    v14 = (v13 + a4);
    v15.i32[0] = *v11;
    v15.i32[1] = *v14;
    a3 = (v14 + a4);
    v16 = (a5 + a6);
    v17.i32[0] = *a5;
    v18 = (a5 + a6 + a6);
    v17.i32[1] = *v18;
    v19 = (v18 + a6);
    v20.i32[0] = *v16;
    v20.i32[1] = *v19;
    a5 = (v19 + a6);
    v21 = vsubl_u8(v12, v17);
    v22 = vsubl_u8(v15, v20);
    v7 = vmlal_s16(v7, *v21.i8, *v21.i8);
    v8 = vmlal_s16(v8, *v22.i8, *v22.i8);
    v9 = vmlal_high_s16(v9, v21, v21);
    v10 = vmlal_high_s16(v10, v22, v22);
    v6 -= 4;
  }

  while (v6 > 4);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v7), vaddq_s32(v9, v10)));
}

uint64_t sub_2774EB184(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = 2 * a4;
  v8 = 2 * a6;
  v9 = a1;
  v10 = a3 + 2 * a4 + 16;
  v11 = (v10 + a4);
  v12 = a5 + 2 * a6 + 16;
  v13 = (v12 + a6);
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v16 = *(a3 + v6 + a4);
    v17 = *(a3 + v6);
    v18 = *(a3 + v6 + 16);
    v19 = *(a3 + v6 + 16 + a4);
    v20 = *(a5 + v6 + a6);
    v21 = *(a5 + v6 + 16);
    v22 = *(a5 + v6);
    v23 = *(a5 + v6 + 16 + a6);
    v24 = vabdl_u8(*v18.i8, *v21.i8);
    v25 = vabdl_u8(*v17.i8, *v22.i8);
    v26 = vabdl_u8(*v19.i8, *v23.i8);
    v27 = vabdl_u8(*v16.i8, *v20.i8);
    v28 = vabdl_high_u8(v18, v21);
    v29 = vabdl_high_u8(v17, v22);
    v30 = vabdl_high_u8(v19, v23);
    v31 = vabdl_high_u8(v16, v20);
    if (a2 >= 3)
    {
      v32 = v12;
      v33 = v13;
      v34 = v11;
      v35 = v10;
      v36 = a2 + 2;
      do
      {
        v37 = *v35[-2].i8;
        v38 = *v34[-2].i8;
        v39 = *v32[-2].i8;
        v24 = vabal_u8(v24, *v35, *v32);
        v25 = vabal_u8(v25, *v37.i8, *v39.i8);
        v40 = *v33[-2].i8;
        v26 = vabal_u8(v26, *v34, *v33);
        v27 = vabal_u8(v27, *v38.i8, *v40.i8);
        v28 = vabal_high_u8(v28, *v35->i8, *v32->i8);
        v29 = vabal_high_u8(v29, v37, v39);
        v30 = vabal_high_u8(v30, *v34->i8, *v33->i8);
        v36 -= 2;
        v35 = (v35 + v7);
        v31 = vabal_high_u8(v31, v38, v40);
        v34 = (v34 + v7);
        v33 = (v33 + v8);
        v32 = (v32 + v8);
      }

      while (v36 > 4);
    }

    v6 += 32;
    v41 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v25, v24), v28), v30), vaddq_s16(vaddq_s16(vaddq_s16(v26, v27), v29), v31));
    v14 = vaddw_u16(v14, *v41.i8);
    v10 += 32;
    v15 = vaddw_high_u16(v15, v41);
    v11 += 4;
    v13 += 4;
    v12 += 32;
  }

  while (v6 < v9);
  return vaddvq_s32(vaddq_s32(v14, v15));
}

uint64_t sub_2774EB2C4(uint64_t a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  v6 = *&a3->i8[a4];
  v7 = *&a3->i8[2 * a4];
  v8 = *&a3->i8[3 * a4];
  v9 = *&a5->i8[a6];
  v10 = *&a5->i8[2 * a6];
  v11 = *&a5->i8[3 * a6];
  v12 = vabdl_u8(*a3, *a5);
  v13 = vabdl_u8(*v6.i8, *v9.i8);
  v14 = vabdl_u8(*v7.i8, *v10.i8);
  v15 = vabdl_u8(*v8.i8, *v11.i8);
  v16 = vabdl_high_u8(*a3->i8, *a5->i8);
  v17 = vabdl_high_u8(v6, v9);
  v18 = vabdl_high_u8(v7, v10);
  v19 = vabdl_high_u8(v8, v11);
  if (a2 >= 5)
  {
    v20 = a2 + 4;
    do
    {
      v21 = *&a3->i8[5 * a4];
      v22 = *&a3->i8[6 * a4];
      v23 = *&a3->i8[7 * a4];
      v24 = *&a5->i8[5 * a6];
      v25 = *&a5->i8[6 * a6];
      a3 = (a3 + 4 * a4);
      v26 = *&a5->i8[7 * a6];
      a5 = (a5 + 4 * a6);
      v12 = vabal_u8(v12, *a3, *a5);
      v13 = vabal_u8(v13, *v21.i8, *v24.i8);
      v14 = vabal_u8(v14, *v22.i8, *v25.i8);
      v15 = vabal_u8(v15, *v23.i8, *v26.i8);
      v16 = vabal_high_u8(v16, *a3->i8, *a5->i8);
      v17 = vabal_high_u8(v17, v21, v24);
      v18 = vabal_high_u8(v18, v22, v25);
      v19 = vabal_high_u8(v19, v23, v26);
      v20 -= 4;
    }

    while (v20 > 8);
  }

  v27 = vaddq_s16(vaddq_s16(vaddq_s16(v13, v12), v14), v15);
  v28 = vaddq_s16(vaddq_s16(vaddq_s16(v17, v16), v18), v19);
  return vaddvq_s32(vaddw_high_u16(vaddw_u16(vpaddlq_u16(v27), *v28.i8), v28));
}

uint64_t sub_2774EB3CC(uint64_t a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = (a3 + a4 + a4);
    v12 = *v11;
    v13 = (v11 + a4);
    v14 = (a5 + a6 + a6);
    v15 = *v14;
    v16 = (v14 + a6);
    v7 = vabal_u8(v7, *a3, *a5);
    v8 = vabal_u8(v8, *(a3 + a4), *(a5 + a6));
    v9 = vabal_u8(v9, v12, v15);
    v10 = vabal_u8(v10, *v13, *v16);
    v6 -= 4;
    a3 = (v13 + a4);
    a5 = (v16 + a6);
  }

  while (v6 > 4);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(v8, v7), v9), v10));
}

uint64_t sub_2774EB454(uint64_t a1, int a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = (a3 + a4 + a4);
    v10 = (a5 + a6 + a6);
    v8 = vabal_u8(vabal_u8(v8, *a3, *a5), *v9, *v10);
    v11 = (v9 + a4);
    v12 = (v10 + a6);
    v7 = vabal_u8(vabal_u8(v7, *(a3 + a4), *(a5 + a6)), *v11, *v12);
    v6 -= 4;
    a3 = (v11 + a4);
    a5 = (v12 + a6);
  }

  while (v6 > 4);
  v7.i64[1] = v8.i64[0];
  return vaddlvq_u16(v7);
}

uint64x2_t sub_2774EB4CC(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5, int a6, uint64x2_t *a7)
{
  if (a5 == 4)
  {
    v7 = vsubq_s16(*a1, *a3);
    v8 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v9 = vsubq_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
    v10 = vsubq_s16(*(a1 + 6 * a2), *(a3 + 6 * a4));
    v11 = vmull_s16(*v7.i8, *v7.i8);
    v12 = vmull_s16(*v8.i8, *v8.i8);
    v13 = vmull_s16(*v9.i8, *v9.i8);
    v14 = vmull_s16(*v10.i8, *v10.i8);
    v15 = vmull_high_s16(v7, v7);
    v16 = vmull_high_s16(v8, v8);
    v17 = vmull_high_s16(v9, v9);
    v18 = vmull_high_s16(v10, v10);
    if (a6 >= 5)
    {
      v19 = a6 + 4;
      do
      {
        v20 = *(a1 + 10 * a2);
        v21 = *(a1 + 12 * a2);
        v22 = *(a1 + 14 * a2);
        v23 = *(a3 + 10 * a4);
        a1 = (a1 + 8 * a2);
        v24 = *(a3 + 12 * a4);
        v25 = *(a3 + 14 * a4);
        a3 = (a3 + 8 * a4);
        v26 = vsubq_s16(*a1, *a3);
        v27 = vsubq_s16(v20, v23);
        v28 = vsubq_s16(v21, v24);
        v29 = vsubq_s16(v22, v25);
        v11 = vmlal_s16(v11, *v26.i8, *v26.i8);
        v12 = vmlal_s16(v12, *v27.i8, *v27.i8);
        v13 = vmlal_s16(v13, *v28.i8, *v28.i8);
        v14 = vmlal_s16(v14, *v29.i8, *v29.i8);
        v15 = vmlal_high_s16(v15, v26, v26);
        v16 = vmlal_high_s16(v16, v27, v27);
        v17 = vmlal_high_s16(v17, v28, v28);
        v18 = vmlal_high_s16(v18, v29, v29);
        v19 -= 4;
      }

      while (v19 > 8);
    }

    v30 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v11), vaddq_s32(v13, v14)), vaddq_s32(vaddq_s32(v15, v16), v17)), v18);
  }

  else
  {
    v31 = 4 * a2;
    v32 = 4 * a4;
    v33 = a3[1].i64 + 4 * a4;
    v34 = a1[1].i64 + 6 * a2;
    v35 = a3[1].i64 + 6 * a4;
    v36 = a1[1].i64 + 4 * a2;
    v30 = 0uLL;
    v37 = 2 * a2;
    v38 = 2 * a4;
    do
    {
      v39 = vsubq_s16(*a1, *a3);
      v40 = vsubq_s16(a1[1], a3[1]);
      v41 = vsubq_s16(*(a1 + v37), *(a3 + v38));
      v42 = vsubq_s16(*(a1 + v37 + 16), *(a3 + v38 + 16));
      v43 = vmull_s16(*v39.i8, *v39.i8);
      v44 = vmull_s16(*v40.i8, *v40.i8);
      v45 = vmull_s16(*v41.i8, *v41.i8);
      v46 = vmull_s16(*v42.i8, *v42.i8);
      v47 = vmull_high_s16(v39, v39);
      v48 = vmull_high_s16(v40, v40);
      v49 = vmull_high_s16(v41, v41);
      v50 = vmull_high_s16(v42, v42);
      if (a6 >= 3)
      {
        v51 = v36;
        v52 = v35;
        v53 = v34;
        v54 = v33;
        v55 = a6 + 2;
        do
        {
          v56 = vsubq_s16(v51[-1], v54[-1]);
          v57 = vsubq_s16(*v51, *v54);
          v58 = vsubq_s16(v53[-1], v52[-1]);
          v59 = vsubq_s16(*v53, *v52);
          v43 = vmlal_s16(v43, *v56.i8, *v56.i8);
          v44 = vmlal_s16(v44, *v57.i8, *v57.i8);
          v45 = vmlal_s16(v45, *v58.i8, *v58.i8);
          v46 = vmlal_s16(v46, *v59.i8, *v59.i8);
          v47 = vmlal_high_s16(v47, v56, v56);
          v48 = vmlal_high_s16(v48, v57, v57);
          v49 = vmlal_high_s16(v49, v58, v58);
          v55 -= 2;
          v54 = (v54 + v32);
          v50 = vmlal_high_s16(v50, v59, v59);
          v53 = (v53 + v31);
          v52 = (v52 + v32);
          v51 = (v51 + v31);
        }

        while (v55 > 4);
      }

      a1 += 2;
      a3 += 2;
      v33 += 32;
      v30 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v43, v30), v44), vaddq_s32(v45, v46)), vaddq_s32(vaddq_s32(vaddq_s32(v47, v48), v49), v50));
      v34 += 32;
      v35 += 32;
      v36 += 32;
      v60 = __OFSUB__(a5, 8);
      a5 -= 8;
    }

    while (!((a5 < 0) ^ v60 | (a5 == 0)));
  }

  result = vpaddlq_u32(vqtbl1q_s8(v30, xmmword_27750D780));
  *a7 = result;
  return result;
}

float sub_2774EB778(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 32 * a6;
  v7 = 2 * a6;
  v118 = *MEMORY[0x277D85DE8];
  v8 = 8 * a6;
  v9 = 0;
  v10 = 4 * a6;
  v11 = 6 * a6;
  do
  {
    if (a1 >= 1)
    {
      for (i = 0; i < a1; i += 16)
      {
        v13 = 0;
        v14 = a3 + 4 * i;
        v15 = v117;
        v16 = a5 + 4 * i;
        do
        {
          v17 = 0;
          v18 = 1;
          do
          {
            v19 = (v14 + 2 * v17);
            v20 = *v19;
            v21 = *(v19 + 2 * a4);
            v22 = *(v19 + 4 * a4);
            v23 = *(v19 + 6 * a4);
            v24 = v19[1];
            ++v19;
            v25 = v24;
            v26 = (v16 + 2 * v17);
            v27 = *v26;
            v28 = *(v26 + v7);
            v29 = *(v26 + v10);
            v30 = *(v26 + v11);
            v31 = v26[1];
            ++v26;
            v32 = vsubq_s16(v20, v27);
            v33 = vsubq_s16(v25, v31);
            v34 = vsubq_s16(v21, v28);
            v35 = vsubq_s16(*(v19 + 2 * a4), *(v26 + v7));
            v36 = vsubq_s16(v22, v29);
            v37 = vsubq_s16(*(v19 + 4 * a4), *(v26 + v10));
            v38 = vsubq_s16(v23, v30);
            v39 = vsubq_s16(*(v19 + 6 * a4), *(v26 + v11));
            v40 = vaddq_s16(v34, v32);
            v41 = vsubq_s16(v32, v34);
            v42 = vaddq_s16(v38, v36);
            v43 = vsubq_s16(v36, v38);
            v44 = vzip1q_s16(v40, v41);
            v45 = vzip2q_s16(v40, v41);
            v46 = vzip1q_s16(v42, v43);
            v47 = vzip2q_s16(v42, v43);
            v48 = vaddq_s16(v46, v44);
            v49 = vsubq_s16(v44, v46);
            v50 = vaddq_s16(v47, v45);
            LOBYTE(v19) = v18;
            v51 = vsubq_s16(v45, v47);
            v52 = vzip1q_s32(v48, v49);
            v53 = vzip2q_s32(v48, v49);
            v54 = vzip1q_s32(v50, v51);
            v55 = vzip2q_s32(v50, v51);
            v56 = vaddq_s16(v53, v52);
            v57 = vsubq_s16(v52, v53);
            v58 = vaddq_s16(v55, v54);
            v59 = vsubq_s16(v54, v55);
            v60 = vaddq_s16(v56, v58);
            v61 = vsubq_s16(v56, v58);
            v62 = vaddq_s16(v59, v57);
            v63 = vsubq_s16(v57, v59);
            v64 = vaddq_s16(v35, v33);
            v65 = vsubq_s16(v33, v35);
            v66 = vaddq_s16(v39, v37);
            v67 = vsubq_s16(v37, v39);
            v68 = vzip1q_s16(v64, v65);
            v69 = vzip2q_s16(v64, v65);
            v70 = vzip1q_s16(v66, v67);
            v71 = vzip2q_s16(v66, v67);
            v72 = vaddq_s16(v70, v68);
            v73 = vsubq_s16(v68, v70);
            v74 = vaddq_s16(v71, v69);
            v75 = vsubq_s16(v69, v71);
            v76 = vzip1q_s32(v72, v73);
            v77 = vzip2q_s32(v72, v73);
            v78 = vzip1q_s32(v74, v75);
            v79 = vzip2q_s32(v74, v75);
            v80 = vaddq_s16(v77, v76);
            v81 = vsubq_s16(v76, v77);
            v82 = vaddq_s16(v79, v78);
            v83 = vsubq_s16(v78, v79);
            v84 = vaddq_s16(v80, v82);
            v85 = vsubq_s16(v80, v82);
            v86 = vaddq_s16(v83, v81);
            *v15 = vaddq_s16(v84, v60);
            v15[1] = vaddq_s16(v86, v62);
            v87 = vsubq_s16(v81, v83);
            v15[2] = vaddq_s16(v85, v61);
            v15[3] = vaddq_s16(v87, v63);
            v15[4] = vsubq_s16(v60, v84);
            v15[5] = vsubq_s16(v62, v86);
            v15[6] = vsubq_s16(v61, v85);
            v15[7] = vsubq_s16(v63, v87);
            v15 += 8;
            v17 = 16;
            v18 = 0;
          }

          while ((v19 & 1) != 0);
          v14 += 8 * a4;
          v16 += v8;
          v88 = v13 >= 0xC;
          v13 += 4;
        }

        while (!v88);
        v89 = 0;
        v90 = 0uLL;
        do
        {
          v91 = *&v117[v89];
          v92 = *&v117[v89 + 128];
          v93 = *&v117[v89 + 256];
          v94 = *&v117[v89 + 384];
          v95 = *&v117[v89 + 512];
          v96 = *&v117[v89 + 640];
          v97 = *&v117[v89 + 768];
          v98 = vaddl_s16(*v93.i8, *v91.i8);
          v99 = vaddl_high_s16(v93, v91);
          v100 = *&v117[v89 + 896];
          v101 = vaddl_s16(*v94.i8, *v92.i8);
          v102 = vaddl_high_s16(v94, v92);
          v103 = vsubl_s16(*v91.i8, *v93.i8);
          v104 = vsubl_high_s16(v91, v93);
          v105 = vsubl_s16(*v92.i8, *v94.i8);
          v106 = vsubl_high_s16(v92, v94);
          v107 = vaddl_s16(*v97.i8, *v95.i8);
          v108 = vaddl_high_s16(v97, v95);
          v109 = vaddl_s16(*v100.i8, *v96.i8);
          v110 = vaddl_high_s16(v100, v96);
          v111 = vsubl_s16(*v95.i8, *v97.i8);
          v112 = vsubl_high_s16(v95, v97);
          v113 = vsubl_s16(*v96.i8, *v100.i8);
          v114 = vsubl_high_s16(v96, v100);
          v90 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vmaxq_u32(vabsq_s32(vaddq_s32(v107, v98)), vabsq_s32(vaddq_s32(v109, v101))), v90), vaddq_s32(vmaxq_u32(vabsq_s32(vaddq_s32(v111, v103)), vabsq_s32(vaddq_s32(v113, v105))), vmaxq_u32(vabdq_s32(v98, v107), vabdq_s32(v101, v109)))), vaddq_s32(vaddq_s32(vmaxq_u32(vabdq_s32(v103, v111), vabdq_s32(v105, v113)), vmaxq_u32(vabsq_s32(vaddq_s32(v108, v99)), vabsq_s32(vaddq_s32(v110, v102)))), vmaxq_u32(vabsq_s32(vaddq_s32(v112, v104)), vabsq_s32(vaddq_s32(v114, v106))))), vaddq_s32(vmaxq_u32(vabdq_s32(v99, v108), vabdq_s32(v102, v110)), vmaxq_u32(vabdq_s32(v104, v112), vabdq_s32(v106, v114))));
          v89 += 16;
        }

        while (v89 != 128);
        v9 = vrsra_n_u32(v9, *&vpaddq_s32(v90, v90), 2uLL);
      }
    }

    a3 += 32 * a4;
    a5 += v6;
    v115 = __OFSUB__(a2, 16);
    a2 -= 16;
  }

  while (!((a2 < 0) ^ v115 | (a2 == 0)));
  LODWORD(result) = vpadd_s32(v9, v9).u32[0];
  return result;
}

float sub_2774EBB10(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 16 * a4;
  v7 = 16 * a6;
  v8 = a3 + 2 * a4 + 16;
  v9 = a3 + 4 * a4 + 16;
  v10 = a3 + 6 * a4 + 16;
  v11 = a5 + 14 * a6;
  v12 = a5 + 12 * a6;
  v13 = a5 + 10 * a6;
  v14 = a3 + 8 * a4 + 16;
  v15 = 0;
  v16 = a3 + 10 * a4 + 16;
  v17 = a3 + 12 * a4 + 16;
  v18 = a3 + 14 * a4 + 16;
  v19 = a5 + 8 * a6;
  v20 = a5 + 6 * a6;
  v21 = a5 + 4 * a6;
  v22 = a5 + 2 * a6;
  do
  {
    if (a1 >= 1)
    {
      v23 = 0;
      for (i = 0; i < a1; i += 8)
      {
        v25 = vsubq_s16(*(a3 + v23), *(a5 + v23));
        v26 = vsubq_s16(*(a3 + v23 + 16), *(a5 + v23 + 16));
        v27 = vsubq_s16(*(v8 + v23 - 16), *(v22 + v23));
        v28 = vsubq_s16(*(v8 + v23), *(v22 + v23 + 16));
        v29 = vsubq_s16(*(v9 + v23 - 16), *(v21 + v23));
        v30 = vsubq_s16(*(v9 + v23), *(v21 + v23 + 16));
        v31 = vsubq_s16(*(v10 + v23 - 16), *(v20 + v23));
        v32 = vsubq_s16(*(v10 + v23), *(v20 + v23 + 16));
        v33 = vsubq_s16(*(v14 + v23 - 16), *(v19 + v23));
        v34 = vsubq_s16(*(v14 + v23), *(v19 + v23 + 16));
        v35 = vsubq_s16(*(v16 + v23 - 16), *(v13 + v23));
        v36 = vsubq_s16(*(v16 + v23), *(v13 + v23 + 16));
        v37 = vsubq_s16(*(v17 + v23 - 16), *(v12 + v23));
        v38 = vsubq_s16(*(v17 + v23), *(v12 + v23 + 16));
        v39 = vsubq_s16(*(v18 + v23 - 16), *(v11 + v23));
        v40 = vsubq_s16(*(v18 + v23), *(v11 + v23 + 16));
        v41 = vaddq_s16(v27, v25);
        v42 = vsubq_s16(v25, v27);
        v43 = vaddq_s16(v31, v29);
        v44 = vsubq_s16(v29, v31);
        v45 = vzip1q_s16(v41, v42);
        v46 = vzip2q_s16(v41, v42);
        v47 = vzip1q_s16(v43, v44);
        v48 = vzip2q_s16(v43, v44);
        v49 = vaddq_s16(v47, v45);
        v50 = vsubq_s16(v45, v47);
        v51 = vaddq_s16(v48, v46);
        v52 = vsubq_s16(v46, v48);
        v53 = vzip1q_s32(v49, v50);
        v54 = vzip2q_s32(v49, v50);
        v55 = vzip1q_s32(v51, v52);
        v56 = vzip2q_s32(v51, v52);
        v57 = vaddq_s16(v54, v53);
        v58 = vsubq_s16(v53, v54);
        v59 = vaddq_s16(v56, v55);
        v60 = vsubq_s16(v55, v56);
        v61 = vaddq_s16(v28, v26);
        v62 = vsubq_s16(v26, v28);
        v63 = vaddq_s16(v57, v59);
        v64 = vaddq_s16(v32, v30);
        v65 = vsubq_s16(v30, v32);
        v66 = vzip1q_s16(v61, v62);
        v67 = vzip2q_s16(v61, v62);
        v68 = vzip1q_s16(v64, v65);
        v69 = vsubq_s16(v57, v59);
        v70 = vzip2q_s16(v64, v65);
        v71 = vaddq_s16(v68, v66);
        v72 = vsubq_s16(v66, v68);
        v73 = vaddq_s16(v70, v67);
        v74 = vsubq_s16(v67, v70);
        v75 = vaddq_s16(v60, v58);
        v76 = vzip1q_s32(v71, v72);
        v77 = vzip2q_s32(v71, v72);
        v78 = vzip1q_s32(v73, v74);
        v79 = vzip2q_s32(v73, v74);
        v80 = vaddq_s16(v77, v76);
        v81 = vsubq_s16(v58, v60);
        v82 = vsubq_s16(v76, v77);
        v83 = vaddq_s16(v79, v78);
        v84 = vsubq_s16(v78, v79);
        v85 = vaddq_s16(v80, v83);
        v86 = vsubq_s16(v80, v83);
        v87 = vaddq_s16(v84, v82);
        v88 = vaddq_s16(v35, v33);
        v89 = vsubq_s16(v33, v35);
        v90 = vaddq_s16(v39, v37);
        v91 = vsubq_s16(v37, v39);
        v92 = vzip1q_s16(v88, v89);
        v93 = vsubq_s16(v82, v84);
        v94 = vzip2q_s16(v88, v89);
        v95 = vzip1q_s16(v90, v91);
        v96 = vzip2q_s16(v90, v91);
        v97 = vaddq_s16(v95, v92);
        v98 = vsubq_s16(v92, v95);
        v99 = vaddq_s16(v85, v63);
        v100 = vaddq_s16(v96, v94);
        v101 = vsubq_s16(v94, v96);
        v102 = vzip1q_s32(v97, v98);
        v103 = vzip2q_s32(v97, v98);
        v104 = vzip1q_s32(v100, v101);
        v105 = vsubq_s16(v63, v85);
        v106 = vzip2q_s32(v100, v101);
        v107 = vaddq_s16(v103, v102);
        v108 = vsubq_s16(v102, v103);
        v109 = vaddq_s16(v106, v104);
        v110 = vsubq_s16(v104, v106);
        v111 = vaddq_s16(v87, v75);
        v112 = vaddq_s16(v107, v109);
        v113 = vsubq_s16(v107, v109);
        v114 = vaddq_s16(v110, v108);
        v115 = vsubq_s16(v108, v110);
        v116 = vaddq_s16(v36, v34);
        v117 = vsubq_s16(v75, v87);
        v118 = vsubq_s16(v34, v36);
        v119 = vaddq_s16(v40, v38);
        v120 = vsubq_s16(v38, v40);
        v121 = vzip1q_s16(v116, v118);
        v122 = vzip2q_s16(v116, v118);
        v123 = vaddq_s16(v86, v69);
        v124 = vzip1q_s16(v119, v120);
        v125 = vzip2q_s16(v119, v120);
        v126 = vaddq_s16(v124, v121);
        v127 = vsubq_s16(v121, v124);
        v128 = vaddq_s16(v125, v122);
        v129 = vsubq_s16(v69, v86);
        v130 = vsubq_s16(v122, v125);
        v131 = vzip1q_s32(v126, v127);
        v132 = vzip2q_s32(v126, v127);
        v133 = vzip1q_s32(v128, v130);
        v134 = vzip2q_s32(v128, v130);
        v135 = vaddq_s16(v93, v81);
        v136 = vaddq_s16(v132, v131);
        v137 = vsubq_s16(v131, v132);
        v138 = vaddq_s16(v134, v133);
        v139 = vsubq_s16(v133, v134);
        v140 = vaddq_s16(v136, v138);
        v141 = vsubq_s16(v81, v93);
        v142 = vsubq_s16(v136, v138);
        v143 = vaddq_s16(v139, v137);
        v144 = vsubq_s16(v137, v139);
        v145 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v105), vabsq_s16(vsubq_s16(v112, v140))), vmaxq_u16(vabsq_s16(v99), vabsq_s16(vaddq_s16(v140, v112)))), vaddq_s16(vmaxq_u16(vabsq_s16(v111), vabsq_s16(vaddq_s16(v143, v114))), vmaxq_u16(vabsq_s16(v117), vabsq_s16(vsubq_s16(v114, v143))))), vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v123), vabsq_s16(vaddq_s16(v142, v113))), vmaxq_u16(vabsq_s16(v129), vabsq_s16(vsubq_s16(v113, v142)))), vmaxq_u16(vabsq_s16(v135), vabsq_s16(vaddq_s16(v144, v115))))), vmaxq_u16(vabsq_s16(v141), vabsq_s16(vsubq_s16(v115, v144)))));
        v23 += 32;
        v15 = vrsra_n_u32(v15, *&vpaddq_s32(v145, v145), 1uLL);
      }
    }

    a3 += v6;
    a5 += v7;
    v8 += v6;
    v9 += v6;
    v10 += v6;
    v11 += v7;
    v12 += v7;
    v13 += v7;
    v19 += v7;
    v14 += v6;
    v16 += v6;
    v17 += v6;
    v18 += v6;
    v20 += v7;
    v21 += v7;
    v22 += v7;
    v146 = __OFSUB__(a2, 8);
    a2 -= 8;
  }

  while (!((a2 < 0) ^ v146 | (a2 == 0)));
  LODWORD(result) = vpadd_s32(v15, v15).u32[0];
  return result;
}

float sub_2774EBF20(int a1, int a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6)
{
  if (a1 >= 8)
  {
    v37 = 8 * a4;
    v38 = 8 * a6;
    v39 = a1;
    v40 = a3[1].i64 + 2 * a4;
    v41 = a3[1].i64 + 4 * a4;
    v42 = a3[1].i64 + 6 * a4;
    v43 = &a5->i8[6 * a6];
    v44 = &a5->i8[4 * a6];
    v45 = &a5->i8[2 * a6];
    v46 = 0uLL;
    v47 = 0uLL;
    do
    {
      v48 = 0;
      for (i = 0; i < v39; i += 8)
      {
        v50 = vsubq_s16(a3[v48 / 0x10], a5[v48 / 0x10]);
        v51 = vsubq_s16(a3[v48 / 0x10 + 1], a5[v48 / 0x10 + 1]);
        v52 = vsubq_s16(*(v40 + v48 - 16), *&v45[v48]);
        v53 = vsubq_s16(*(v40 + v48), *&v45[v48 + 16]);
        v54 = vsubq_s16(*(v41 + v48 - 16), *&v44[v48]);
        v55 = vsubq_s16(*(v41 + v48), *&v44[v48 + 16]);
        v56 = vsubq_s16(*(v42 + v48 - 16), *&v43[v48]);
        v57 = vsubq_s16(*(v42 + v48), *&v43[v48 + 16]);
        v58 = vaddq_s16(v52, v50);
        v59 = vsubq_s16(v50, v52);
        v60 = vaddq_s16(v56, v54);
        v61 = vsubq_s16(v54, v56);
        v62 = vzip1q_s16(v58, v59);
        v63 = vzip2q_s16(v58, v59);
        v64 = vzip1q_s16(v60, v61);
        v65 = vzip2q_s16(v60, v61);
        v66 = vaddq_s16(v64, v62);
        v67 = vsubq_s16(v62, v64);
        v68 = vaddq_s16(v65, v63);
        v69 = vsubq_s16(v63, v65);
        v70 = vzip1q_s32(v66, v67);
        v71 = vzip2q_s32(v66, v67);
        v72 = vzip1q_s32(v68, v69);
        v73 = vzip2q_s32(v68, v69);
        v74 = vaddq_s16(v72, v70);
        v75 = vsubq_s16(v70, v72);
        v76 = vaddq_s16(v73, v71);
        v77 = vsubq_s16(v71, v73);
        v78 = vmaxq_u16(vabsq_s16(v74), vabsq_s16(v76));
        v79 = vmaxq_u16(vabsq_s16(v75), vabsq_s16(v77));
        v80 = vaddq_s16(v53, v51);
        v81 = vsubq_s16(v51, v53);
        v82 = vaddq_s16(v57, v55);
        v83 = vsubq_s16(v55, v57);
        v84 = vzip1q_s16(v80, v81);
        v85 = vzip2q_s16(v80, v81);
        v86 = vzip1q_s16(v82, v83);
        v87 = vzip2q_s16(v82, v83);
        v88 = vaddq_s16(v86, v84);
        v89 = vsubq_s16(v84, v86);
        v90 = vaddq_s16(v87, v85);
        v91 = vsubq_s16(v85, v87);
        v92 = vzip1q_s32(v88, v89);
        v93 = vzip2q_s32(v88, v89);
        v94 = vzip1q_s32(v90, v91);
        v95 = vzip2q_s32(v90, v91);
        v96 = vaddq_s16(vaddq_s16(v79, v78), vaddq_s16(vmaxq_u16(vabsq_s16(vaddq_s16(v94, v92)), vabsq_s16(vaddq_s16(v95, v93))), vmaxq_u16(vabsq_s16(vsubq_s16(v92, v94)), vabsq_s16(vsubq_s16(v93, v95)))));
        v47 = vaddw_u16(v47, *v96.i8);
        v46 = vaddw_high_u16(v46, v96);
        v48 += 32;
      }

      a3 = (a3 + v37);
      a5 = (a5 + v38);
      v40 += v37;
      v41 += v37;
      v42 += v37;
      v43 += v38;
      v44 += v38;
      v45 += v38;
      a2 -= 4;
    }

    while (a2);
    return COERCE_FLOAT(vaddvq_s32(vaddq_s32(v47, v46)));
  }

  else
  {
    v6 = a2 + 4;
    v7 = 2 * a4;
    v8 = 2 * a6;
    v9 = 0uLL;
    do
    {
      v10 = (a3 + v7 + v7);
      v11 = *v10;
      v12 = (v10 + v7);
      v13 = (a5 + v8 + v8);
      v14 = *v13;
      v15 = (v13 + v8);
      v16 = vsubq_s16(*a3, *a5);
      v17 = vsubq_s16(*(a3 + 2 * a4), *(a5 + 2 * a6));
      v18 = vsubq_s16(v11, v14);
      v19 = vsubq_s16(*v12, *v15);
      v20 = vaddq_s16(v17, v16);
      v21 = vsubq_s16(v16, v17);
      v22 = vaddq_s16(v19, v18);
      v23 = vsubq_s16(v18, v19);
      v24 = vzip1q_s16(v20, v21);
      v25 = vzip2q_s16(v20, v21);
      v26 = vzip1q_s16(v22, v23);
      v27 = vzip2q_s16(v22, v23);
      v28 = vaddq_s16(v26, v24);
      v29 = vsubq_s16(v24, v26);
      v30 = vaddq_s16(v27, v25);
      v31 = vsubq_s16(v25, v27);
      v32 = vzip1q_s32(v28, v29);
      v33 = vzip2q_s32(v28, v29);
      v34 = vzip1q_s32(v30, v31);
      v35 = vzip2q_s32(v30, v31);
      v9 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vaddq_s16(v34, v32)), vabsq_s16(vaddq_s16(v35, v33))), v9), vmaxq_u16(vabsq_s16(vsubq_s16(v32, v34)), vabsq_s16(vsubq_s16(v33, v35))));
      v6 -= 4;
      a3 = (v12 + v7);
      a5 = (v15 + v8);
    }

    while (v6 > 4);
    return COERCE_FLOAT(vaddlvq_u16(v9));
  }
}

uint64_t sub_2774EC1E4()
{
  v3 = MEMORY[0x28223BE20]();
  result = 0;
  v6 = v5 << 6;
  v8 = v7 << 6;
  v9 = 16 * v5;
  v144[257] = *MEMORY[0x277D85DE8];
  v10 = 16 * v7;
  v11 = 2 * v5;
  v12 = 2 * v7;
  do
  {
    if (v3 >= 1)
    {
      for (i = 0; i < v3; i += 32)
      {
        v14 = 0;
        v15 = v1 + 2 * i;
        v16 = v142;
        v17 = v2 + 2 * i;
        do
        {
          v18 = 0;
          v19 = -8;
          v20 = v16;
          do
          {
            v21 = (v15 + v18 + v11);
            v22 = *v21;
            v23 = (v21 + v11);
            v24 = *v23;
            v25 = (v23 + v11);
            v26 = (v17 + v18 + v12);
            v27 = *v26;
            v28 = vsubq_s16(*(v15 + v18), *(v17 + v18));
            v29 = (v26 + v12);
            v30 = vsubq_s16(v22, v27);
            v31 = vsubq_s16(v24, *v29);
            v32 = (v29 + v12);
            v33 = vsubq_s16(*v25, *v32);
            v34 = vaddq_s16(v30, v28);
            v35 = vsubq_s16(v28, v30);
            v36 = vaddq_s16(v33, v31);
            v37 = vsubq_s16(v31, v33);
            v38 = vtrn1q_s16(v34, v35);
            v39 = vtrn2q_s16(v34, v35);
            v40 = vtrn1q_s16(v36, v37);
            v41 = vtrn2q_s16(v36, v37);
            v42 = vaddq_s16(v39, v38);
            v43 = vsubq_s16(v38, v39);
            v44 = vaddq_s16(v41, v40);
            v45 = vsubq_s16(v40, v41);
            v46 = vaddq_s16(v44, v42);
            v47 = vsubq_s16(v42, v44);
            v48 = vaddq_s16(v45, v43);
            v49 = vsubq_s16(v43, v45);
            v50 = vtrn1q_s32(v46, v47);
            v51 = vtrn2q_s32(v46, v47);
            v52 = vtrn1q_s32(v48, v49);
            v53 = vtrn2q_s32(v48, v49);
            v54 = vaddq_s16(v51, v50);
            v55 = vsubq_s16(v50, v51);
            v56 = vaddq_s16(v53, v52);
            v57 = vsubq_s16(v52, v53);
            v58 = (v25 + v11);
            v59 = *v58;
            v60 = (v58 + v11);
            v61 = *v60;
            v62 = (v60 + v11);
            v63 = *v62;
            v64 = *(v62 + v11);
            v65 = (v32 + v12 + v12);
            v66 = *v65;
            v67 = (v65 + v12);
            v68 = vsubq_s16(v59, *(v32 + v12));
            v69 = vsubq_s16(v61, v66);
            v70 = vsubq_s16(v63, *v67);
            v71 = vsubq_s16(v64, *(v67 + v12));
            v72 = vaddq_s16(v69, v68);
            v73 = vsubq_s16(v68, v69);
            v74 = vaddq_s16(v71, v70);
            v75 = vsubq_s16(v70, v71);
            v76 = vtrn1q_s16(v72, v73);
            v77 = vtrn2q_s16(v72, v73);
            v78 = vtrn1q_s16(v74, v75);
            v79 = vtrn2q_s16(v74, v75);
            v80 = vaddq_s16(v77, v76);
            v81 = vsubq_s16(v76, v77);
            v82 = vaddq_s16(v79, v78);
            v83 = vsubq_s16(v78, v79);
            v84 = vaddq_s16(v82, v80);
            v85 = vsubq_s16(v80, v82);
            v86 = vaddq_s16(v83, v81);
            v87 = vsubq_s16(v81, v83);
            v88 = vtrn1q_s32(v84, v85);
            v89 = vtrn2q_s32(v84, v85);
            v90 = vtrn1q_s32(v86, v87);
            v91 = vtrn2q_s32(v86, v87);
            v92 = vaddq_s16(v89, v88);
            v93 = vsubq_s16(v88, v89);
            v94 = vaddq_s16(v91, v90);
            v95 = vsubq_s16(v90, v91);
            v96 = vaddq_s16(v92, v54);
            v97 = vsubq_s16(v54, v92);
            v98 = vaddq_s16(v94, v56);
            v99 = vsubq_s16(v56, v94);
            v100 = vaddq_s16(v93, v55);
            v101 = vsubq_s16(v55, v93);
            v102 = vmovl_s16(*v96.i8);
            v103 = vmovl_s16(*v97.i8);
            *v20 = vaddw_high_s16(v102, v96);
            v20[1] = vaddw_high_s16(v103, v97);
            v104 = vaddq_s16(v95, v57);
            v20[32] = vsubw_high_s16(v102, v96);
            v20[33] = vsubw_high_s16(v103, v97);
            v105 = vmovl_s16(*v98.i8);
            v106 = vmovl_s16(*v99.i8);
            v20[8] = vaddw_high_s16(v105, v98);
            v20[9] = vaddw_high_s16(v106, v99);
            v107 = vsubq_s16(v57, v95);
            v20[40] = vsubw_high_s16(v105, v98);
            v20[41] = vsubw_high_s16(v106, v99);
            v108 = vmovl_s16(*v100.i8);
            v109 = vmovl_s16(*v101.i8);
            v20[16] = vaddw_high_s16(v108, v100);
            v20[17] = vaddw_high_s16(v109, v101);
            v20[48] = vsubw_high_s16(v108, v100);
            v20[49] = vsubw_high_s16(v109, v101);
            v110 = vmovl_s16(*v104.i8);
            v111 = vmovl_s16(*v107.i8);
            v20[24] = vaddw_high_s16(v110, v104);
            v20[25] = vaddw_high_s16(v111, v107);
            v20[56] = vsubw_high_s16(v110, v104);
            v20[57] = vsubw_high_s16(v111, v107);
            v19 += 8;
            v18 += 16;
            v20 += 2;
          }

          while (v19 < 0x18);
          v15 += v9;
          v17 += v10;
          v16 += 64;
          v112 = v14 >= 0x18;
          v14 += 8;
        }

        while (!v112);
        v113 = 1;
        v114 = v142;
        do
        {
          v115 = 0;
          v116 = v113;
          do
          {
            v117 = &v114[v115];
            v118 = *&v114[v115];
            v119 = *&v114[v115 + 16];
            v120 = *&v114[v115 + 32];
            v121 = *&v114[v115 + 48];
            v122 = *&v114[v115 + 1024];
            v123 = *&v114[v115 + 1040];
            v124 = *&v114[v115 + 1056];
            v125 = vaddq_s32(v122, v118);
            v126 = *&v114[v115 + 1072];
            v127 = vaddq_s32(v123, v119);
            v128 = vsubq_s32(v118, v122);
            v129 = vsubq_s32(v119, v123);
            v130 = vaddq_s32(v124, v120);
            v131 = vaddq_s32(v126, v121);
            v132 = vsubq_s32(v120, v124);
            v133 = vsubq_s32(v121, v126);
            *v117 = vaddq_s32(v130, v125);
            v117[1] = vaddq_s32(v131, v127);
            v117[2] = vaddq_s32(v132, v128);
            v117[3] = vaddq_s32(v133, v129);
            v117[64] = vsubq_s32(v125, v130);
            v117[65] = vsubq_s32(v127, v131);
            v117[66] = vsubq_s32(v128, v132);
            v117[67] = vsubq_s32(v129, v133);
            v115 += 64;
          }

          while (v115 != 1024);
          v113 = 0;
          v114 = v144;
        }

        while ((v116 & 1) != 0);
        v134 = 1;
        v135 = 0uLL;
        v136 = v142;
        do
        {
          v137 = 0;
          v138 = v134;
          do
          {
            v139 = *&v136[v137 + 2];
            v140 = *&v136[v137 + 10];
            v135 = vaddq_s32(vaddq_s32(vaddq_s32(vmaxq_u32(vabsq_s32(vaddq_s32(*&v136[v137 + 256], *&v136[v137])), vabsq_s32(vaddq_s32(*&v136[v137 + 264], *&v136[v137 + 8]))), v135), vaddq_s32(vmaxq_u32(vabsq_s32(vaddq_s32(*&v136[v137 + 258], v139)), vabsq_s32(vaddq_s32(*&v136[v137 + 266], v140))), vmaxq_u32(vabsq_s32(vsubq_s32(*&v136[v137], *&v136[v137 + 256])), vabsq_s32(vsubq_s32(*&v136[v137 + 8], *&v136[v137 + 264]))))), vmaxq_u32(vabsq_s32(vsubq_s32(v139, *&v136[v137 + 258])), vabsq_s32(vsubq_s32(v140, *&v136[v137 + 266]))));
            v137 += 16;
          }

          while ((v137 * 8) != 2048);
          v134 = 0;
          v136 = &v143;
        }

        while ((v138 & 1) != 0);
        result = result + ((vaddvq_s32(v135) + 4) >> 3);
      }
    }

    v1 += v6;
    v2 += v8;
    v141 = __OFSUB__(v0, 32);
    v0 -= 32;
  }

  while (!((v0 < 0) ^ v141 | (v0 == 0)));
  return result;
}

uint64_t sub_2774EC658(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = 0;
  result = 0;
  v119 = 32 * a4;
  v121 = *MEMORY[0x277D85DE8];
  v118 = 32 * a6;
  v10 = 8 * a4;
  v11 = 8 * a6;
  v12 = a3 + 16;
  v13 = a5 + 6 * a6;
  v14 = a5 + 4 * a6;
  v15 = a5 + 2 * a6;
  v16 = v12 + 6 * a4;
  v17 = v12 + 4 * a4;
  v18 = v12 + 2 * a4;
  do
  {
    if (a1 >= 1)
    {
      v19 = 0;
      v20 = v7;
      v21 = v8;
      do
      {
        v22 = 0;
        v23 = 20;
        v24 = v20;
        v25 = v21;
        do
        {
          v26 = vsubq_s16(*(v12 + v25 - 16), *(a5 + v24));
          v27 = vsubq_s16(*(v12 + v25), *(a5 + v24 + 16));
          v28 = vsubq_s16(*(v18 + v25 - 16), *(v15 + v24));
          v29 = vsubq_s16(*(v18 + v25), *(v15 + v24 + 16));
          v30 = vsubq_s16(*(v17 + v25 - 16), *(v14 + v24));
          v31 = vsubq_s16(*(v17 + v25), *(v14 + v24 + 16));
          v32 = vsubq_s16(*(v16 + v25 - 16), *(v13 + v24));
          v33 = vsubq_s16(*(v16 + v25), *(v13 + v24 + 16));
          v34 = vaddq_s16(v28, v26);
          v35 = vaddq_s16(v29, v27);
          v36 = vsubq_s16(v26, v28);
          v37 = vsubq_s16(v27, v29);
          v38 = vaddq_s16(v32, v30);
          v39 = vaddq_s16(v33, v31);
          v40 = vsubq_s16(v30, v32);
          v41 = vsubq_s16(v31, v33);
          v42 = vtrn1q_s16(v34, v36);
          v43 = vtrn2q_s16(v34, v36);
          v44 = vtrn1q_s16(v35, v37);
          v45 = vtrn2q_s16(v35, v37);
          v46 = vtrn1q_s16(v38, v40);
          v47 = vtrn2q_s16(v38, v40);
          v48 = vtrn1q_s16(v39, v41);
          v49 = vtrn2q_s16(v39, v41);
          v50 = vaddq_s16(v43, v42);
          v51 = &v120[v22];
          v52 = vaddq_s16(v45, v44);
          v53 = vsubq_s16(v42, v43);
          v54 = vsubq_s16(v44, v45);
          v55 = vaddq_s16(v47, v46);
          v56 = vaddq_s16(v49, v48);
          v57 = vsubq_s16(v46, v47);
          v58 = vsubq_s16(v48, v49);
          v59 = vaddq_s16(v55, v50);
          v60 = vaddq_s16(v56, v52);
          v61 = vsubq_s16(v50, v55);
          v62 = vsubq_s16(v52, v56);
          v63 = vaddq_s16(v57, v53);
          v64 = vaddq_s16(v58, v54);
          v65 = vsubq_s16(v53, v57);
          v66 = vsubq_s16(v54, v58);
          v67 = vtrn1q_s32(v59, v61);
          v68 = vtrn2q_s32(v59, v61);
          v69 = vtrn1q_s32(v60, v62);
          v70 = vtrn2q_s32(v60, v62);
          v71 = vtrn1q_s32(v63, v65);
          v72 = vtrn2q_s32(v63, v65);
          v73 = vtrn1q_s32(v64, v66);
          *v51 = vaddq_s16(v68, v67);
          v51[1] = vaddq_s16(v70, v69);
          v74 = vtrn2q_s32(v64, v66);
          v51[2] = vaddq_s16(v72, v71);
          v51[3] = vaddq_s16(v74, v73);
          v51[4] = vsubq_s16(v67, v68);
          v51[5] = vsubq_s16(v69, v70);
          v51[6] = vsubq_s16(v71, v72);
          v51[7] = vsubq_s16(v73, v74);
          v22 += 128;
          v23 -= 4;
          v25 += v10;
          v24 += v11;
        }

        while (v23 > 4);
        v75 = 0uLL;
        for (i = 144; i != 272; i += 32)
        {
          v77 = *&v120[i - 144];
          v78 = *&v120[i - 128];
          v79 = *&v120[i - 16];
          v80 = *&v120[i];
          v81 = *&v120[i + 112];
          v82 = *&v120[i + 128];
          v83 = vaddq_s16(v79, v77);
          v84 = vaddq_s16(v80, v78);
          v85 = vsubq_s16(v77, v79);
          v86 = vsubq_s16(v78, v80);
          v87 = *&v120[i + 240];
          v88 = *&v120[i + 256];
          v89 = vaddq_s16(v87, v81);
          v90 = vaddq_s16(v88, v82);
          v91 = vsubq_s16(v81, v87);
          v92 = vsubq_s16(v82, v88);
          v93 = vmovl_s16(*v83.i8);
          v94 = vaddw_high_s16(v93, v83);
          v95 = vmovl_s16(*v85.i8);
          v96 = vaddw_high_s16(v95, v85);
          v97 = vmovl_s16(*v84.i8);
          v98 = vaddw_high_s16(v97, v84);
          v99 = vmovl_s16(*v86.i8);
          v100 = vaddw_high_s16(v99, v86);
          v101 = vsubw_high_s16(v93, v83);
          v102 = vsubw_high_s16(v95, v85);
          v103 = vsubw_high_s16(v97, v84);
          v104 = vsubw_high_s16(v99, v86);
          v105 = vmovl_s16(*v89.i8);
          v106 = vaddw_high_s16(v105, v89);
          v107 = vmovl_s16(*v91.i8);
          v108 = vaddw_high_s16(v107, v91);
          v109 = vmovl_s16(*v90.i8);
          v110 = vaddw_high_s16(v109, v90);
          v111 = vmovl_s16(*v92.i8);
          v112 = vaddw_high_s16(v111, v92);
          v113 = vsubw_high_s16(v105, v89);
          v114 = vsubw_high_s16(v107, v91);
          v115 = vsubw_high_s16(v109, v90);
          v116 = vsubw_high_s16(v111, v92);
          v75 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v75, vmaxq_u16(vabsq_s32(vaddq_s32(v106, v94)), vabsq_s32(vaddq_s32(v110, v98)))), vaddq_s32(vmaxq_u16(vabsq_s32(vaddq_s32(v108, v96)), vabsq_s32(vaddq_s32(v112, v100))), vmaxq_u16(vabdq_s32(v94, v106), vabdq_s32(v98, v110)))), vaddq_s32(vaddq_s32(vmaxq_u16(vabdq_s32(v96, v108), vabdq_s32(v100, v112)), vmaxq_u16(vabsq_s32(vaddq_s32(v113, v101)), vabsq_s32(vaddq_s32(v115, v103)))), vmaxq_u16(vabsq_s32(vaddq_s32(v114, v102)), vabsq_s32(vaddq_s32(v116, v104))))), vaddq_s32(vmaxq_u16(vabdq_s32(v101, v113), vabdq_s32(v103, v115)), vmaxq_u16(vabdq_s32(v102, v114), vabdq_s32(v104, v116))));
        }

        result = result + ((vaddvq_s32(v75) + 2) >> 2);
        v19 += 16;
        v21 += 32;
        v20 += 32;
      }

      while (v19 < a1);
    }

    v8 += v119;
    v7 += v118;
    v117 = __OFSUB__(a2, 16);
    a2 -= 16;
  }

  while (!((a2 < 0) ^ v117 | (a2 == 0)));
  return result;
}

uint64_t sub_2774ECA14(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  v8 = 2 * a4;
  v9 = 2 * a6;
  do
  {
    if (a1 >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (a3 + v10 + v8);
        v13 = *v12;
        v14 = (v12 + v8);
        v15 = *v14;
        v16 = (v14 + v8);
        v17 = (a5 + v10 + v9);
        v18 = *v17;
        v19 = (v17 + v9);
        v20 = *v19;
        v21 = *v16;
        v22 = (v19 + v9);
        v23 = vsubq_s16(*(a3 + v10), *(a5 + v10));
        v24 = (v16 + v8);
        v25 = *v24;
        v26 = vsubq_s16(v13, v18);
        v27 = (v24 + v8);
        v28 = *v27;
        v29 = (v27 + v8);
        v30 = *(v29 + 2 * a4);
        v31 = vsubq_s16(v15, v20);
        v32 = *v29;
        v33 = (v22 + v9 + v9);
        v34 = *v33;
        v35 = vsubq_s16(v21, *v22);
        v36 = (v33 + v9);
        v37 = vsubq_s16(v25, *(v22 + 2 * a6));
        v38 = vsubq_s16(v28, v34);
        v39 = vsubq_s16(v32, *v36);
        v40 = vsubq_s16(v30, *(v36 + 2 * a6));
        v41 = vaddq_s16(v26, v23);
        v42 = vsubq_s16(v23, v26);
        v43 = vaddq_s16(v35, v31);
        v44 = vsubq_s16(v31, v35);
        v45 = vtrn1q_s16(v41, v42);
        v46 = vtrn2q_s16(v41, v42);
        v47 = vtrn1q_s16(v43, v44);
        v48 = vtrn2q_s16(v43, v44);
        v49 = vaddq_s16(v46, v45);
        v50 = vsubq_s16(v45, v46);
        v51 = vaddq_s16(v48, v47);
        v52 = vsubq_s16(v47, v48);
        v53 = vaddq_s16(v51, v49);
        v54 = vsubq_s16(v49, v51);
        v55 = vaddq_s16(v52, v50);
        v56 = vsubq_s16(v50, v52);
        v57 = vtrn1q_s32(v53, v54);
        v58 = vtrn2q_s32(v53, v54);
        v59 = vtrn1q_s32(v55, v56);
        v60 = vtrn2q_s32(v55, v56);
        v61 = vaddq_s16(v38, v37);
        v62 = vaddq_s16(v58, v57);
        v63 = vsubq_s16(v37, v38);
        v64 = vaddq_s16(v40, v39);
        v65 = vsubq_s16(v39, v40);
        v66 = vtrn1q_s16(v61, v63);
        v67 = vtrn2q_s16(v61, v63);
        v68 = vsubq_s16(v57, v58);
        v69 = vtrn1q_s16(v64, v65);
        v70 = vtrn2q_s16(v64, v65);
        v71 = vaddq_s16(v67, v66);
        v72 = vsubq_s16(v66, v67);
        v73 = vaddq_s16(v70, v69);
        v74 = vaddq_s16(v60, v59);
        v75 = vsubq_s16(v69, v70);
        v76 = vaddq_s16(v73, v71);
        v77 = vsubq_s16(v71, v73);
        v78 = vaddq_s16(v75, v72);
        v79 = vsubq_s16(v72, v75);
        v80 = vsubq_s16(v59, v60);
        v81 = vtrn1q_s32(v76, v77);
        v82 = vtrn2q_s32(v76, v77);
        v83 = vtrn1q_s32(v78, v79);
        v84 = vtrn2q_s32(v78, v79);
        v85 = vaddq_s16(v82, v81);
        v86 = vsubq_s16(v81, v82);
        v87 = vaddq_s16(v84, v83);
        v88 = vsubq_s16(v83, v84);
        v89 = vaddq_s16(v85, v62);
        v90 = vsubq_s16(v62, v85);
        v91 = vaddq_s16(v87, v74);
        v92 = vsubq_s16(v74, v87);
        v93 = vaddq_s16(v86, v68);
        v94 = vsubq_s16(v68, v86);
        v95 = vaddq_s16(v88, v80);
        v96 = vsubq_s16(v80, v88);
        v97 = vzip2q_s64(v89, v90);
        v89.i64[1] = v90.i64[0];
        v98 = vzip2q_s64(v91, v92);
        v91.i64[1] = v92.i64[0];
        v99 = vzip2q_s64(v93, v94);
        v100 = vzip2q_s64(v95, v96);
        v93.i64[1] = v94.i64[0];
        v95.i64[1] = v96.i64[0];
        result = result + ((vaddlvq_u16(vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(v91), vabsq_s16(v98)), vmaxq_u16(vabsq_s16(v89), vabsq_s16(v97))), vaddq_s16(vmaxq_u16(vabsq_s16(v93), vabsq_s16(v99)), vmaxq_u16(vabsq_s16(v95), vabsq_s16(v100))))) + 1) >> 1);
        v11 += 8;
        v10 += 16;
      }

      while (v11 < a1);
    }

    a3 += 16 * a4;
    a5 += 16 * a6;
    v101 = __OFSUB__(a2, 8);
    a2 -= 8;
  }

  while (!((a2 < 0) ^ v101 | (a2 == 0)));
  return result;
}

uint64_t sub_2774ECC64(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 8 * a4;
  v7 = 8 * a6;
  v8 = a3 + 2 * a4 + 16;
  v9 = a3 + 4 * a4 + 16;
  v10 = a3 + 6 * a4 + 16;
  v11 = a5 + 6 * a6;
  v12 = a5 + 4 * a6;
  v13 = a5 + 2 * a6;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    if (a1 >= 1)
    {
      v16 = 0;
      for (i = 0; i < a1; i += 16)
      {
        v18 = vsubq_s16(*(a3 + v16), *(a5 + v16));
        v19 = vsubq_s16(*(a3 + v16 + 16), *(a5 + v16 + 16));
        v20 = vsubq_s16(*(v8 + v16 - 16), *(v13 + v16));
        v21 = vsubq_s16(*(v8 + v16), *(v13 + v16 + 16));
        v22 = vsubq_s16(*(v9 + v16 - 16), *(v12 + v16));
        v23 = vsubq_s16(*(v9 + v16), *(v12 + v16 + 16));
        v24 = vsubq_s16(*(v10 + v16 - 16), *(v11 + v16));
        v25 = vsubq_s16(*(v10 + v16), *(v11 + v16 + 16));
        v26 = vaddq_s16(v20, v18);
        v27 = vaddq_s16(v21, v19);
        v28 = vsubq_s16(v18, v20);
        v29 = vsubq_s16(v19, v21);
        v30 = vaddq_s16(v24, v22);
        v31 = vaddq_s16(v25, v23);
        v32 = vsubq_s16(v22, v24);
        v33 = vsubq_s16(v23, v25);
        v34 = vtrn1q_s16(v26, v28);
        v35 = vtrn2q_s16(v26, v28);
        v36 = vtrn1q_s16(v27, v29);
        v37 = vtrn2q_s16(v27, v29);
        v38 = vtrn1q_s16(v30, v32);
        v39 = vtrn2q_s16(v30, v32);
        v40 = vtrn1q_s16(v31, v33);
        v41 = vtrn2q_s16(v31, v33);
        v42 = vaddq_s16(v35, v34);
        v43 = vaddq_s16(v37, v36);
        v44 = vsubq_s16(v34, v35);
        v45 = vsubq_s16(v36, v37);
        v46 = vaddq_s16(v39, v38);
        v47 = vaddq_s16(v41, v40);
        v48 = vsubq_s16(v38, v39);
        v49 = vsubq_s16(v40, v41);
        v50 = vaddq_s16(v46, v42);
        v51 = vaddq_s16(v47, v43);
        v52 = vsubq_s16(v42, v46);
        v53 = vsubq_s16(v43, v47);
        v54 = vaddq_s16(v48, v44);
        v55 = vaddq_s16(v49, v45);
        v56 = vsubq_s16(v44, v48);
        v57 = vsubq_s16(v45, v49);
        v58 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v51, v53)), vabsq_s16(vtrn2q_s32(v51, v53))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v50, v52)), vabsq_s16(vtrn2q_s32(v50, v52)))), vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v54, v56)), vabsq_s16(vtrn2q_s32(v54, v56))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v55, v57)), vabsq_s16(vtrn2q_s32(v55, v57)))));
        v15 = vaddw_u16(v15, *v58.i8);
        v14 = vaddw_high_u16(v14, v58);
        v16 += 32;
      }
    }

    a3 += v6;
    a5 += v7;
    v8 += v6;
    v9 += v6;
    v10 += v6;
    v11 += v7;
    v12 += v7;
    v13 += v7;
    a2 -= 4;
  }

  while (a2);
  return vaddvq_s32(vaddq_s32(v15, v14));
}

uint64_t sub_2774ECE44(uint64_t a1, int a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 2 * a4;
  v8 = 2 * a6;
  v9 = 0uLL;
  do
  {
    v10 = (a3 + v7 + v7);
    v11 = *v10;
    v12 = (v10 + v7);
    v13 = (a5 + v8 + v8);
    v14 = *v13;
    v15 = (v13 + v8);
    v16 = vsubq_s16(*a3, *a5);
    v17 = vsubq_s16(*(a3 + 2 * a4), *(a5 + 2 * a6));
    v18 = vsubq_s16(v11, v14);
    v19 = vsubq_s16(*v12, *v15);
    v20 = vaddq_s16(v17, v16);
    v21 = vsubq_s16(v16, v17);
    v22 = vaddq_s16(v19, v18);
    v23 = vsubq_s16(v18, v19);
    v24 = vtrn1q_s16(v20, v21);
    v25 = vtrn2q_s16(v20, v21);
    v26 = vtrn1q_s16(v22, v23);
    v27 = vtrn2q_s16(v22, v23);
    v28 = vaddq_s16(v25, v24);
    v29 = vsubq_s16(v24, v25);
    v30 = vaddq_s16(v27, v26);
    v31 = vsubq_s16(v26, v27);
    v32 = vaddq_s16(v30, v28);
    v33 = vsubq_s16(v28, v30);
    v34 = vaddq_s16(v31, v29);
    v35 = vsubq_s16(v29, v31);
    v9 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v32, v33)), vabsq_s16(vtrn2q_s32(v32, v33))), v9), vmaxq_u16(vabsq_s16(vtrn1q_s32(v34, v35)), vabsq_s16(vtrn2q_s32(v34, v35))));
    v6 -= 4;
    a3 = (v12 + v7);
    a5 = (v15 + v8);
  }

  while (v6 > 4);
  return vaddlvq_u16(v9);
}

uint64_t sub_2774ECF2C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  do
  {
    v8.i64[0] = *(a3 + 2 * a4);
    v9.i64[0] = *a3;
    v10.i64[0] = *a5;
    v11.i64[0] = *(a5 + 2 * a6);
    v10.i64[1] = *(a5 + 4 * a6);
    v9.i64[1] = *(a3 + 4 * a4);
    v11.i64[1] = *(a5 + 6 * a6);
    v8.i64[1] = *(a3 + 6 * a4);
    v12 = vsubq_s16(v9, v10);
    v13 = vsubq_s16(v8, v11);
    v14 = vaddq_s16(v13, v12);
    v15 = vsubq_s16(v12, v13);
    v16 = vtrn1q_s16(v14, v15);
    v17 = vtrn2q_s16(v14, v15);
    v18 = vaddq_s16(v17, v16);
    v19 = vsubq_s16(v16, v17);
    v20 = vzip2q_s64(v18, v19);
    v18.i64[1] = v19.i64[0];
    v21 = vaddq_s16(v18, v20);
    v22 = vsubq_s16(v18, v20);
    v7 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v21, v22)), vabsq_s16(vtrn2q_s32(v21, v22))), v7);
    a3 += a4;
    a5 += a6;
    v6 -= 4;
  }

  while (v6 > 4);
  return vaddlvq_u16(v7);
}

uint64_t sub_2774ECFF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v26 = result;
  v7 = 0;
  LODWORD(result) = 0;
  v8 = a5 + 1;
  v9 = 1;
  do
  {
    v10 = 0;
    v28 = v9;
    v30 = v26 + 2 * v7 * a2;
    v29 = a3 + 2 * v7 * a4;
    v11 = 1;
    do
    {
      v33 = result;
      v12 = 0;
      v13 = 0;
      v31 = v11;
      v32 = v8;
      v14 = (v8 + 1);
      v15 = 1;
      v16 = v30 + 2 * v10;
      v17 = v29 + 2 * v10;
      do
      {
        v18 = 0;
        v19 = v15;
        v20 = v16 + 2 * v12 * a2;
        v21 = v17 + 2 * v12 * a4;
        v22 = 1;
        do
        {
          v23 = v22;
          sub_2774ED140((v20 + 2 * v18), a2, (v21 + 2 * v18), a4, v14);
          v22 = 0;
          v13 += v24;
          v14 += 20;
          v18 = 16;
        }

        while ((v23 & 1) != 0);
        v15 = 0;
        v12 = 16;
      }

      while ((v19 & 1) != 0);
      v11 = 0;
      *v32 = v13;
      v8 = v32 + 21;
      result = (v13 + v33);
      v10 = 32;
    }

    while ((v31 & 1) != 0);
    v9 = 0;
    v7 = 32;
  }

  while ((v28 & 1) != 0);
  *a5 = result;
  return result;
}

float sub_2774ED140(uint16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = &a1[a2];
  v6 = &a3[a4];
  v7 = *a1;
  v8 = *(a1 + 2 * a2);
  v10 = a1[1];
  v9 = a1 + 1;
  v11 = *v5;
  v12 = *(v5 + 2 * a2);
  v13 = v5[1];
  v14 = *(v5 + 2 * a2 + 16);
  v15 = *(v6 + 2 * a4);
  v16 = *v6;
  v17 = v6[1];
  v18 = *(v6 + 2 * a4 + 16);
  v19 = 4 * a2;
  v20 = 4 * a4;
  v21 = vabdq_u16(v7, *a3);
  v22 = vabdq_u16(v8, *(a3 + 2 * a4));
  v23 = vabdq_u16(v10, a3[1]);
  v24 = vabdq_u16(*(v9 + 2 * a2), *(a3 + 2 * a4 + 16));
  v25 = vabdq_u16(v11, v16);
  v26 = vabdq_u16(v12, v15);
  v27 = vabdq_u16(v13, v17);
  v28 = vabdq_u16(v14, v18);
  v29 = 4 * a4 + 16;
  v30 = 22 * a4 + 16;
  v31 = 6 * a4;
  v32 = 22 * a2;
  v33 = (v9 + 6 * a2);
  v34 = 20 * a4;
  v35 = (v9 + 20 * a2);
  v36 = 3;
  do
  {
    v37 = (a3 + v34);
    v38 = *(a3 + v29);
    v39 = (a3 + v31);
    v40 = (a3 + v30);
    a3 = (a3 + v20);
    v41 = (v9 + v32);
    v9 = (v9 + v19);
    v21 = vabaq_u16(v21, v9[-1], *a3);
    v22 = vabaq_u16(v22, v33[-1], *v39);
    v23 = vabaq_u16(v23, *v9, v38);
    v24 = vabaq_u16(v24, *v33, v39[1]);
    v25 = vabaq_u16(v25, v35[-1], *v37);
    v26 = vabaq_u16(v26, v41[-1], v40[-1]);
    v27 = vabaq_u16(v27, *v35, v37[1]);
    v33 = (v33 + v19);
    v28 = vabaq_u16(v28, *v41, *v40);
    v35 = (v35 + v19);
    --v36;
  }

  while (v36);
  v42 = vpaddq_s16(vpaddq_s16(vaddq_s16(v21, v22), vaddq_s16(v24, v23)), vpaddq_s16(vaddq_s16(v26, v25), vaddq_s16(v28, v27)));
  *(a5 + 4) = vpaddlq_u16(v42);
  result = COERCE_FLOAT(vaddlvq_u16(v42));
  *a5 = result;
  return result;
}

uint64_t sub_2774ED294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = (a5 + 1);
  v12 = 1;
  do
  {
    v13 = 0;
    v14 = v12;
    v15 = a1 + 2 * v9 * a2;
    v16 = a3 + 2 * v9 * a4;
    v17 = 1;
    do
    {
      v18 = v17;
      sub_2774ED140((v15 + 2 * v13), a2, (v16 + 2 * v13), a4, v11);
      v17 = 0;
      v10 = (v19 + v10);
      v11 += 20;
      v13 = 16;
    }

    while ((v18 & 1) != 0);
    v12 = 0;
    v9 = 16;
  }

  while ((v14 & 1) != 0);
  *a5 = v10;
  return v10;
}

uint64_t sub_2774ED360(uint16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, _DWORD *a5)
{
  result = sub_2774ED39C(a1, 8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2774ED39C(uint64_t a1, int a2, uint16x8_t *a3, uint64_t a4, uint16x8_t *a5, uint64_t a6)
{
  v6 = vabdq_u16(*a3, *a5);
  v7 = vabdq_u16(*(a3 + 2 * a4), *(a5 + 2 * a6));
  v8 = vabdq_u16(*(a3 + 4 * a4), *(a5 + 4 * a6));
  v9 = vabdq_u16(*(a3 + 6 * a4), *(a5 + 6 * a6));
  if (a2 >= 5)
  {
    v10 = a2 + 4;
    do
    {
      v11 = *(a3 + 10 * a4);
      v12 = *(a3 + 12 * a4);
      v13 = *(a3 + 14 * a4);
      v14 = *(a5 + 10 * a6);
      v15 = *(a5 + 12 * a6);
      v16 = *(a5 + 14 * a6);
      a3 = (a3 + 8 * a4);
      a5 = (a5 + 8 * a6);
      v6 = vabaq_u16(v6, *a3, *a5);
      v7 = vabaq_u16(v7, v11, v14);
      v8 = vabaq_u16(v8, v12, v15);
      v9 = vabaq_u16(v9, v13, v16);
      v10 -= 4;
    }

    while (v10 > 8);
  }

  return vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(v7, v6), v8), v9));
}

uint64_t sub_2774ED488(int a1, int a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6)
{
  v6 = 2 * a1;
  v7 = 4 * a4;
  v8 = 4 * a6;
  v9 = a5[1].i64 + 4 * a6;
  v10 = a3[1].i64 + 6 * a4;
  v11 = a5[1].i64 + 6 * a6;
  v12 = a3[1].i64 + 4 * a4;
  v13 = 0uLL;
  v14 = 2 * a4;
  v15 = 2 * a6;
  do
  {
    v16 = vsubq_s16(*a3, *a5);
    v17 = vsubq_s16(a3[1], a5[1]);
    v18 = vsubq_s16(*(a3 + v14), *(a5 + v15));
    v19 = vsubq_s16(*(a3 + v14 + 16), *(a5 + v15 + 16));
    v20 = vmull_s16(*v16.i8, *v16.i8);
    v21 = vmull_s16(*v17.i8, *v17.i8);
    v22 = vmull_s16(*v18.i8, *v18.i8);
    v23 = vmull_s16(*v19.i8, *v19.i8);
    v24 = vmull_high_s16(v16, v16);
    v25 = vmull_high_s16(v17, v17);
    v26 = vmull_high_s16(v18, v18);
    v27 = vmull_high_s16(v19, v19);
    if (a2 >= 3)
    {
      v28 = v12;
      v29 = v11;
      v30 = v10;
      v31 = v9;
      v32 = a2 + 2;
      do
      {
        v33 = vsubq_s16(v28[-1], v31[-1]);
        v34 = vsubq_s16(*v28, *v31);
        v35 = vsubq_s16(v30[-1], v29[-1]);
        v36 = vsubq_s16(*v30, *v29);
        v20 = vmlal_s16(v20, *v33.i8, *v33.i8);
        v21 = vmlal_s16(v21, *v34.i8, *v34.i8);
        v22 = vmlal_s16(v22, *v35.i8, *v35.i8);
        v23 = vmlal_s16(v23, *v36.i8, *v36.i8);
        v24 = vmlal_high_s16(v24, v33, v33);
        v25 = vmlal_high_s16(v25, v34, v34);
        v26 = vmlal_high_s16(v26, v35, v35);
        v32 -= 2;
        v31 = (v31 + v8);
        v27 = vmlal_high_s16(v27, v36, v36);
        v30 = (v30 + v7);
        v29 = (v29 + v8);
        v28 = (v28 + v7);
      }

      while (v32 > 4);
    }

    a3 += 2;
    a5 += 2;
    v9 += 32;
    v13 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v20, v13), v21), vaddq_s32(v22, v23)), vaddq_s32(vaddq_s32(vaddq_s32(v24, v25), v26), v27));
    v10 += 32;
    v11 += 32;
    v12 += 32;
    v37 = __OFSUB__(v6, 16);
    v6 -= 16;
  }

  while (!((v6 < 0) ^ v37 | (v6 == 0)));
  return vaddvq_s32(v13);
}

uint64_t sub_2774ED5EC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = 2 * a4;
  v8 = 2 * a6;
  v9 = 8 * a4;
  v10 = 8 * a6;
  v11 = a1;
  v12 = (a5 + 8 * a6);
  v13 = 0uLL;
  v14 = 4 * a4;
  v15 = 6 * a4;
  v16 = 4 * a6;
  v17 = 6 * a6;
  v18 = 0uLL;
  v19 = (a3 + 8 * a4);
  do
  {
    v20 = (a3 + 2 * v6);
    v21 = (a5 + 2 * v6);
    v22 = vabdq_u16(*v20, *v21);
    v23 = vabdq_u16(v20[1], v21[1]);
    v24 = vabdq_u16(*(v20 + v7), *(v21 + v8));
    v25 = vabdq_u16(*(v20 + v7 + 16), *(v21 + v8 + 16));
    v26 = vabdq_u16(*(v20 + v14), *(v21 + v16));
    v27 = vabdq_u16(*(v20 + v14 + 16), *(v21 + v16 + 16));
    v28 = vabdq_u16(*(v20 + v15), *(v21 + v17));
    v29 = vabdq_u16(*(v20 + v15 + 16), *(v21 + v17 + 16));
    if (a2 >= 5)
    {
      v30 = v19;
      v31 = v12;
      v32 = a2 + 4;
      do
      {
        v33 = (v30 + v7 + v7);
        v34 = *v33;
        v35 = v33[1];
        v36 = (v33 + v7);
        v37 = *v36;
        v38 = v36[1];
        v39 = (v31 + v8 + v8);
        v40 = *v39;
        v41 = v39[1];
        v42 = (v39 + v8);
        v22 = vabaq_u16(v22, *v30, *v31);
        v23 = vabaq_u16(v23, v30[1], v31[1]);
        v24 = vabaq_u16(v24, *(v30 + v7), *(v31 + v8));
        v25 = vabaq_u16(v25, *(&v30[1] + v7), *(&v31[1] + v8));
        v26 = vabaq_u16(v26, v34, v40);
        v27 = vabaq_u16(v27, v35, v41);
        v28 = vabaq_u16(v28, v37, *v42);
        v29 = vabaq_u16(v29, v38, v42[1]);
        v32 -= 4;
        v31 = (v31 + v10);
        v30 = (v30 + v9);
      }

      while (v32 > 8);
    }

    v6 += 16;
    v43 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v23, v22), v26), v28), vaddq_s16(vaddq_s16(vaddq_s16(v24, v25), v27), v29));
    v13 = vaddw_u16(v13, *v43.i8);
    v18 = vaddw_high_u16(v18, v43);
    v12 += 2;
    v19 += 2;
  }

  while (v6 < v11);
  return vaddvq_s32(vaddq_s32(v13, v18));
}

uint64_t sub_2774ED770(uint64_t a1, int a2, uint16x4_t *a3, uint64_t a4, uint16x4_t *a5, uint64_t a6)
{
  v6 = 2 * a4;
  v7 = 2 * a6;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = (a3 + v6 + v6);
    v11 = (a5 + v7 + v7);
    v9 = vabal_u16(vabal_u16(v9, *a3, *a5), *v10, *v11);
    v12 = (v10 + v6);
    v13 = (v11 + v7);
    v8 = vabal_u16(vabal_u16(v8, *(a3 + 2 * a4), *(a5 + 2 * a6)), *v12, *v13);
    a3 = (v12 + v6);
    a5 = (v13 + v7);
    a2 -= 4;
  }

  while (a2);
  return vaddvq_s32(vaddq_s32(v8, v9));
}

uint64_t sub_2774ED7E8(_DWORD *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5)
{
  if (a3 < 2)
  {
    return 4294954387;
  }

  if (a3 == 2)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (*(a2 + v5) == 255)
    {
      v6 += 255;
      if (a3 - 2 == ++v5)
      {
        v6 = 255 * a3 - 510;
        v5 = a3 - 2;
        break;
      }
    }
  }

  *a1 = v6 + *(a2 + v5);
  *a5 = 0;
  v7 = v5 + 1;
  if (v5 + 1 < a3 - 1 && *(a2 + v7) == 255)
  {
    v12 = 255;
    while (1)
    {
      v8 = v12;
      *a5 = v12;
      if (a3 - 3 == v5)
      {
        break;
      }

      v13 = *(a2 + 2 + v5);
      v12 += 255;
      ++v5;
      if (v13 != 255)
      {
        v7 = v5 + 1;
        goto LABEL_11;
      }
    }

    v5 = a3 - 2;
    v7 = a3 - 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_11:
  v9 = v5 + 2;
  v10 = v8 + *(a2 + v7);
  *a5 = v10;
  if (v10 + v9 > a3)
  {
    return 4294954387;
  }

  result = 0;
  *a4 = a2 + v9;
  return result;
}

uint64_t sub_2774ED8E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 < (a2 + 16))
  {
    return 4294954394;
  }

  *a3 = 336;
  *(a3 + 2) = 5;
  *(a3 + 4) = xmmword_27753C760;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      *(a3 + 20 + i) = byte_27753C770[i & 7] ^ *(a1 + i);
    }
  }

  result = 0;
  *(a3 + a2 + 20) = 0x80;
  *(a3 + 3) = a2 + 16;
  *a4 = a2 + 21;
  return result;
}

uint64_t sub_2774ED970(uint64_t result, FILE *__stream)
{
  v3 = result;
  v4 = byte_27753C778[*(result + 4)];
  v5 = dword_280B9A880;
  if (dword_280B9A880 >= 6)
  {
    result = fwrite("=========== SEI Hash ===========\n", 0x21uLL, 1uLL, __stream);
    v5 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  hash_type : %d\n", *(v3 + 4));
      v5 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fwrite("  hash      : ", 0xEuLL, 1uLL, __stream);
        v5 = dword_280B9A880;
      }
    }
  }

  v6 = 0;
  v7 = (v3 + 8);
  if (v4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4;
  }

  do
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if (v5 >= 6)
      {
        result = fprintf(__stream, "%02x", *v9);
        v5 = dword_280B9A880;
      }

      ++v9;
      --v10;
    }

    while (v10);
    if (v6 != 2 && v5 > 5)
    {
      result = fputc(44, __stream);
      v5 = dword_280B9A880;
    }

    ++v6;
    v7 += v4;
  }

  while (v6 != 3);
  if (v5 > 5)
  {

    return fputc(10, __stream);
  }

  return result;
}

void sub_2774EDAFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  memset(__p, 0, sizeof(__p));
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (*a3 >= 0x36uLL)
  {
    *a2 = 334;
    *(a2 + 2) = 0;
    if (!sub_2773FB67C(__p, (a2 + 4), *a3 - 4))
    {
      v8 = *(a1 + 4) + 1;
      v9 = __clz(v8);
      v10 = (v8 - (0x80000000 >> v9)) | (0x80000000 >> v9);
      v11 = 63 - 2 * v9;
      LODWORD(v56) = (v10 << (-BYTE4(v56) - v11)) | v56;
      *v54 = bswap32(v56);
      v12 = SHIDWORD(v56) + v11;
      v13 = v56 << (v12 & 0xF8);
      v14 = (v54 + (v12 >> 3));
      v54 = v14;
      LODWORD(v15) = v12 & 7;
      v56 = __PAIR64__(v15, v13);
      if (v14 >= v55)
      {
        v57 = 1;
        v54 = v55;
        v14 = v55;
      }

      v16 = *(a1 + 4);
      if (v16 <= 0xF)
      {
        v17 = (a4 + 16 * v16 + 256);
      }

      else
      {
        v17 = (a4 + 1552);
      }

      v18 = *v17;
      if (*(v18 + 398) == 1 && *(v18 + 2028) == 1)
      {
        if ((*(v18 + 2034) & 1) == 0)
        {
          LODWORD(v56) = (*(a1 + 6) << (v15 ^ 0x1F)) | v13;
          *v14 = bswap32(v56);
          v19 = SHIDWORD(v56) + 1;
          v13 = v56 << (v19 & 0xF8);
          v14 = (v54 + (v19 >> 3));
          v54 = v14;
          LOBYTE(v15) = v19 & 7;
          HIDWORD(v56) = v19 & 7;
          if (v14 >= v55)
          {
            v57 = 1;
            v54 = v55;
            v14 = v55;
          }
        }

        if (*(a1 + 6) == 1)
        {
          v20 = *(v18 + 2043) + 1;
          LODWORD(v56) = (*(a1 + 12) << (-v15 - v20)) | v13;
          *v14 = bswap32(v56);
          v21 = SHIDWORD(v56) + v20;
          v22 = v56 << (v21 & 0xF8);
          v15 = (v54 + (v21 >> 3));
          v54 = v15;
          v23 = v21 & 7;
          HIDWORD(v56) = v23;
          if (v15 >= v55)
          {
            v57 = 1;
            v54 = v55;
            v15 = v55;
          }

          v24 = *(v18 + 2038) + 1;
          LODWORD(v56) = (*(a1 + 16) << (-v24 - v23)) | v22;
          *v15 = bswap32(v56);
          v25 = SHIDWORD(v56) + v24;
          v13 = v56 << (v25 & 0xF8);
          v14 = (v54 + (v25 >> 3));
          v54 = v14;
          LOBYTE(v15) = v25 & 7;
          HIDWORD(v56) = v25 & 7;
          if (v14 >= v55)
          {
            v57 = 1;
            v54 = v55;
            v14 = v55;
          }
        }

        LODWORD(v56) = (*(a1 + 7) << (v15 ^ 0x1F)) | v13;
        *v14 = bswap32(v56);
        v26 = SHIDWORD(v56) + 1;
        v27 = v56 << (v26 & 0xF8);
        v28 = (v54 + (v26 >> 3));
        v54 = v28;
        v29 = v26 & 7;
        HIDWORD(v56) = v29;
        if (v28 >= v55)
        {
          v57 = 1;
          v54 = v55;
          v28 = v55;
        }

        v30 = *(v18 + 2043) + 1;
        LODWORD(v56) = (*(a1 + 8) << (-v29 - v30)) | v27;
        *v28 = bswap32(v56);
        v31 = SHIDWORD(v56) + v30;
        v32 = v56 << (v31 & 0xF8);
        v33 = (v54 + (v31 >> 3));
        v54 = v33;
        v34 = v31 & 7;
        LODWORD(v56) = v32;
        HIDWORD(v56) = v31 & 7;
        if (v33 >= v55)
        {
          v57 = 1;
          v54 = v55;
          v33 = v55;
        }

        v35 = 0;
        v36 = 1;
        while (1)
        {
          v37 = v36;
          if ((v36 & 1) == 0)
          {
            break;
          }

          if (*(v18 + 2032))
          {
            goto LABEL_27;
          }

LABEL_39:
          v36 = 0;
          v35 = 1;
          if ((v37 & 1) == 0)
          {
LABEL_40:
            LODWORD(v15) = v34 & 7;
            goto LABEL_41;
          }
        }

        if (*(v18 + 2033) != 1)
        {
          goto LABEL_40;
        }

LABEL_27:
        v38 = (a1 + 4 * v35);
        v39 = -1;
        do
        {
          v40 = *(v18 + 2042) + 1;
          LODWORD(v56) = (v38[5] << (-v34 - v40)) | v32;
          *v33 = bswap32(v56);
          v41 = SHIDWORD(v56) + v40;
          v42 = (v54 + (v41 >> 3));
          v54 = v42;
          HIDWORD(v56) = v41 & 7;
          if (v42 >= v55)
          {
            v57 = 1;
            v54 = v55;
            v42 = v55;
          }

          v43 = *(v18 + 2042) + 1;
          LODWORD(v56) = (v38[69] << (-v43 - (v41 & 7))) | (v56 << (v41 & 0xF8));
          *v42 = bswap32(v56);
          v44 = SHIDWORD(v56) + v43;
          v32 = v56 << (v44 & 0xF8);
          v33 = (v54 + (v44 >> 3));
          v54 = v33;
          v34 = v44 & 7;
          LODWORD(v56) = v32;
          HIDWORD(v56) = v44 & 7;
          if (v33 >= v55)
          {
            v57 = 1;
            v54 = v55;
            v33 = v55;
          }

          if ((*(v18 + 2034) & 1) != 0 || *(a1 + 6) == 1)
          {
            v45 = *(v18 + 2042) + 1;
            LODWORD(v56) = (v38[133] << (-v45 - v34)) | v32;
            *v33 = bswap32(v56);
            v46 = SHIDWORD(v56) + v45;
            v47 = (v54 + (v46 >> 3));
            v54 = v47;
            HIDWORD(v56) = v46 & 7;
            if (v47 >= v55)
            {
              v57 = 1;
              v54 = v55;
              v47 = v55;
            }

            v48 = *(v18 + 2042) + 1;
            LODWORD(v56) = (v38[197] << (-v48 - (v46 & 7))) | (v56 << (v46 & 0xF8));
            *v47 = bswap32(v56);
            v49 = SHIDWORD(v56) + v48;
            v32 = v56 << (v49 & 0xF8);
            v33 = (v54 + (v49 >> 3));
            v54 = v33;
            v34 = v49 & 7;
            LODWORD(v56) = v32;
            HIDWORD(v56) = v49 & 7;
            if (v33 >= v55)
            {
              v57 = 1;
              v54 = v55;
              v33 = v55;
            }
          }

          v38 += 2;
          ++v39;
        }

        while (v39 < *(*(v18 + 2048) + 6));
        goto LABEL_39;
      }

LABEL_41:
      if (v15)
      {
        sub_2773FBB94(__p);
      }

      sub_2773FBB94(__p);
      v50 = v54 - v53;
      *(a2 + 3) = v54 - v53 - 1;
      *a3 = v50 + 4;
    }

    v51 = __p[0];
    if (__p[0])
    {

      operator delete(v51);
    }
  }
}

void sub_2774EE090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2774EE0A8(uint64_t a1, uint64_t a2, void *a3)
{
  memset(__p, 0, sizeof(__p));
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (*a3 >= 9uLL)
  {
    *a2 = 334;
    *(a2 + 2) = -112;
    if (!sub_2773FB67C(__p, (a2 + 4), *a3 - 4))
    {
      v6 = SHIDWORD(v20);
      v7 = (*(a1 + 4) << (16 - BYTE4(v20))) | v20;
      v9 = v18;
      v8 = v19;
      *v18 = bswap32(v7);
      v10 = v7 << ((v6 + 16) & 0xF8);
      v11 = (v9 + ((v6 + 16) >> 3));
      v12 = v6 & 7;
      if (v11 >= v8)
      {
        v21 = 1;
        v11 = v8;
      }

      v13 = (*(a1 + 6) << (16 - v12)) | v10;
      *v11 = bswap32(v13);
      v18 = (v11 + 2);
      LODWORD(v20) = v13 << 16;
      HIDWORD(v20) = v12;
      if (v11 + 2 >= v8)
      {
        v21 = 1;
        v18 = v8;
      }

      sub_2773FBB94(__p);
      v14 = v18 - v17;
      *(a2 + 3) = v18 - v17 - 1;
      *a3 = v14 + 4;
    }

    v15 = __p[0];
    if (__p[0])
    {

      operator delete(v15);
    }
  }
}

void sub_2774EE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2774EE210(uint64_t a1, uint64_t a2, void *a3)
{
  memset(__p, 0, sizeof(__p));
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (*a3 >= 0x1DuLL)
  {
    *a2 = 334;
    *(a2 + 2) = -119;
    if (!sub_2773FB67C(__p, (a2 + 4), *a3 - 4))
    {
      v6 = (a1 + 10);
      v7 = v44;
      v8 = BYTE4(v44);
      v9 = 3;
      v10 = v42;
      do
      {
        LODWORD(v44) = (*(v6 - 3) << (16 - v8)) | v7;
        *v10 = bswap32(v44);
        v11 = SHIDWORD(v44) + 16;
        v12 = (v42 + (v11 >> 3));
        v42 = v12;
        v13 = BYTE4(v44) & 7;
        HIDWORD(v44) = BYTE4(v44) & 7;
        if (v12 >= v43)
        {
          v45 = 1;
          v42 = v43;
          v12 = v43;
        }

        LODWORD(v44) = (*v6 << (16 - v13)) | (v44 << (v11 & 0xF8));
        *v12 = bswap32(v44);
        v14 = SHIDWORD(v44) + 16;
        v7 = v44 << (v14 & 0xF8);
        v10 = (v42 + (v14 >> 3));
        v42 = v10;
        v8 = BYTE4(v44) & 7;
        v44 = __PAIR64__(HIDWORD(v44), v7) & 0x7FFFFFFFFLL;
        if (v10 >= v43)
        {
          v45 = 1;
          v42 = v43;
          v10 = v43;
        }

        ++v6;
        --v9;
      }

      while (v9);
      LODWORD(v44) = (*(a1 + 16) << (16 - v8)) | v7;
      *v10 = bswap32(v44);
      v15 = SHIDWORD(v44) + 16;
      v16 = v44 << (v15 & 0xF8);
      v17 = (v42 + (v15 >> 3));
      v42 = v17;
      v18 = BYTE4(v44) & 7;
      HIDWORD(v44) = BYTE4(v44) & 7;
      if (v17 >= v43)
      {
        v45 = 1;
        v42 = v43;
        v17 = v43;
      }

      LODWORD(v44) = (*(a1 + 18) << (16 - v18)) | v16;
      *v17 = bswap32(v44);
      v19 = SHIDWORD(v44) + 16;
      v20 = v44 << (v19 & 0xF8);
      v21 = (v42 + (v19 >> 3));
      v42 = v21;
      v22 = BYTE4(v44) & 7;
      HIDWORD(v44) = BYTE4(v44) & 7;
      if (v21 >= v43)
      {
        v45 = 1;
        v42 = v43;
        v21 = v43;
      }

      v23 = *(a1 + 20);
      LODWORD(v44) = (HIWORD(v23) << (16 - v22)) | v20;
      *v21 = bswap32(v44);
      v24 = SHIDWORD(v44) + 16;
      v25 = v44 << (v24 & 0xF8);
      v26 = (v42 + (v24 >> 3));
      v42 = v26;
      v27 = BYTE4(v44) & 7;
      HIDWORD(v44) = BYTE4(v44) & 7;
      if (v26 >= v43)
      {
        v45 = 1;
        v42 = v43;
        v26 = v43;
      }

      LODWORD(v44) = (v23 << (16 - v27)) | v25;
      *v26 = bswap32(v44);
      v28 = SHIDWORD(v44) + 16;
      v29 = v44 << (v28 & 0xF8);
      v30 = (v42 + (v28 >> 3));
      v42 = v30;
      v31 = BYTE4(v44) & 7;
      HIDWORD(v44) = BYTE4(v44) & 7;
      if (v30 >= v43)
      {
        v45 = 1;
        v42 = v43;
        v30 = v43;
      }

      v32 = *(a1 + 24);
      LODWORD(v44) = (HIWORD(v32) << (16 - v31)) | v29;
      *v30 = bswap32(v44);
      v33 = SHIDWORD(v44) + 16;
      v34 = v44 << (v33 & 0xF8);
      v35 = (v42 + (v33 >> 3));
      v42 = v35;
      v36 = BYTE4(v44) & 7;
      HIDWORD(v44) = BYTE4(v44) & 7;
      if (v35 >= v43)
      {
        v45 = 1;
        v42 = v43;
        v35 = v43;
      }

      LODWORD(v44) = (v32 << (16 - v36)) | v34;
      *v35 = bswap32(v44);
      v37 = SHIDWORD(v44) + 16;
      v42 = (v42 + (v37 >> 3));
      v44 = __PAIR64__(HIDWORD(v44), v44 << (v37 & 0xF8)) & 0x7FFFFFFFFLL;
      if (v42 >= v43)
      {
        v45 = 1;
        v42 = v43;
      }

      sub_2773FBB94(__p);
      v38 = v42 - v41;
      *(a2 + 3) = v42 - v41 - 1;
      *a3 = v38 + 4;
    }

    v39 = __p[0];
    if (__p[0])
    {

      operator delete(v39);
    }
  }
}

void sub_2774EE5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2774EE5FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774EE690;
  }

  else
  {
    v4 = sub_2774EE624;
  }

  return v4();
}

uint8x8_t *sub_2774EE624(uint8x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  do
  {
    v5 = (a3 + v3);
    v6 = *(a3 + v3);
    v7 = *(a3 + v3 + 16);
    v8 = *(a3 + v3 + 32);
    v9 = *(a3 + v3 + 48);
    *v5 = 0uLL;
    v5[1] = 0uLL;
    v5[2] = 0uLL;
    v5[3] = 0uLL;
    v10 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(v4[-2]), v6)), vqaddq_s16(vmovl_high_u8(*v4[-2].i8), v7));
    v11 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*v4), v8)), vqaddq_s16(vmovl_high_u8(*v4->i8), v9));
    *v4[-2].i8 = v10;
    *v4->i8 = v11;
    v3 += 64;
    v4 = (v4 + a2);
  }

  while (v3 != 2048);
  return result;
}

int8x16_t sub_2774EE690(uint8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1 + 2;
  do
  {
    result = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(v4[-2]), *(a3 + v3))), vqaddq_s16(vmovl_high_u8(*v4[-2].i8), *(a3 + v3 + 16)));
    v6 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*v4), *(a3 + v3 + 32))), vqaddq_s16(vmovl_high_u8(*v4->i8), *(a3 + v3 + 48)));
    *v4[-2].i8 = result;
    *v4->i8 = v6;
    v3 += 64;
    v4 = (v4 + a2);
  }

  while (v3 != 2048);
  return result;
}

uint64_t sub_2774EE6F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774EE78C;
  }

  else
  {
    v4 = sub_2774EE718;
  }

  return v4();
}

uint8x8_t *sub_2774EE718(uint8x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = -2;
  do
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v8 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*result), v4)), vqaddq_s16(vmovl_high_u8(*result->i8), v5));
    v9 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*(result + a2)), v6)), vqaddq_s16(vmovl_high_u8(*&result->i8[a2]), v7));
    *result->i8 = v8;
    *&result->i8[a2] = v9;
    result = (result + 2 * a2);
    v3 += 2;
    a3 += 4;
  }

  while (v3 < 0xE);
  return result;
}

uint8x8_t *sub_2774EE78C(uint8x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = -2;
  do
  {
    v4 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*(result + a2)), a3[2])), vqaddq_s16(vmovl_high_u8(*&result->i8[a2]), a3[3]));
    *result->i8 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*result), *a3)), vqaddq_s16(vmovl_high_u8(*result->i8), a3[1]));
    *&result->i8[a2] = v4;
    result = (result + 2 * a2);
    v3 += 2;
    a3 += 4;
  }

  while (v3 < 0xE);
  return result;
}

uint64_t sub_2774EE7F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774EE8A8;
  }

  else
  {
    v4 = sub_2774EE81C;
  }

  return v4();
}

uint8x8_t *sub_2774EE81C(uint8x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v9 = vqaddq_s16(vmovl_u8(*(result + a2)), v6);
    v10 = vqaddq_s16(vmovl_u8(*(result + 2 * a2)), v7);
    v11 = vqaddq_s16(vmovl_u8(*(result + 3 * a2)), v8);
    *result = vqmovun_s16(vqaddq_s16(vmovl_u8(*result), v5));
    *(result + a2) = vqmovun_s16(v9);
    *(result + 2 * a2) = vqmovun_s16(v10);
    *(result + 3 * a2) = vqmovun_s16(v11);
    result = (result + 4 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v4 & 1) != 0);
  return result;
}

uint8x8_t *sub_2774EE8A8(uint8x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = vqaddq_s16(vmovl_u8(*(result + a2)), a3[1]);
    v6 = vqaddq_s16(vmovl_u8(*(result + 2 * a2)), a3[2]);
    v7 = vqaddq_s16(vmovl_u8(*(result + 3 * a2)), a3[3]);
    *result = vqmovun_s16(vqaddq_s16(vmovl_u8(*result), *a3));
    *(result + a2) = vqmovun_s16(v5);
    *(result + 2 * a2) = vqmovun_s16(v6);
    *(result + 3 * a2) = vqmovun_s16(v7);
    result = (result + 4 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v4 & 1) != 0);
  return result;
}

int8x8_t sub_2774EE928(__int32 *a1, uint64_t a2, int16x8_t *a3, char a4)
{
  v4.i32[0] = *a1;
  v4.i32[1] = *(a1 + a2);
  v5.i32[0] = *(a1 + 2 * a2);
  v6 = (a1 + 3 * a2);
  v5.i32[1] = *v6;
  v7 = a3[1];
  v8 = vqmovun_s16(vqaddq_s16(*a3, vmovl_u8(v4)));
  *a1 = v8.i32[0];
  *(a1 + a2) = v8.i32[1];
  result = vqmovun_s16(vqaddq_s16(v7, vmovl_u8(v5)));
  *(a1 + 2 * a2) = result.i32[0];
  *v6 = result.i32[1];
  if ((a4 & 1) == 0)
  {
    result = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

int16x8_t *sub_2774EE984(int16x8_t *result)
{
  v1 = -16;
  do
  {
    v2 = vrshrq_n_s16(result[1], 4uLL);
    *result = vrshrq_n_s16(*result, 4uLL);
    result[1] = v2;
    result += 2;
    v1 += 16;
  }

  while (v1 < 0x30);
  return result;
}

int16x8_t sub_2774EE9A8(int16x8_t *a1)
{
  result = vrshrq_n_s16(*a1, 5uLL);
  v2 = vrshrq_n_s16(a1[1], 5uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int16x8_t sub_2774EE9BC(int16x8_t *a1)
{
  result = vshlq_n_s16(*a1, 5uLL);
  v2 = vshlq_n_s16(a1[1], 5uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint8x16_t *sub_2774EE9D0(uint8x16_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
    a3->i16[0] = 0;
    v10 = vnegq_s16(v9);
    v11 = vqmovun_high_s16(vqmovun_s16(v9), v9);
    v12 = vqmovun_high_s16(vqmovun_s16(v10), v10);
    v13 = -2;
    do
    {
      v14 = (v8 + a2);
      v15 = vqsubq_u8(vqaddq_u8(*(v8 + a2), v11), v12);
      v16 = vqsubq_u8(vqaddq_u8(v8[1], v11), v12);
      v17 = vqsubq_u8(vqaddq_u8(*(&v8[1] + a2), v11), v12);
      *v8 = vqsubq_u8(vqaddq_u8(*v8, v11), v12);
      *v14 = v15;
      v8[1] = v16;
      v14[1] = v17;
      v8 = (v8 + 2 * a2);
      v13 += 2;
    }

    while (v13 < 0x1E);
    if (a4)
    {
      v18 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v18 += 16;
      }

      while (v18 < 0x3F0);
    }
  }

  else
  {
    result = sub_2774EEC1C(a3, a5);
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = &v8[v19 / 2];
      v23 = -4;
      v24 = &v6[v19];
      do
      {
        v25 = v24[1];
        v26 = v24[4];
        v27 = v24[5];
        v28 = v24[8];
        v29 = v24[9];
        v30 = vtrn1q_s16(*v24, v26);
        v31 = vtrn2q_s16(*v24, v26);
        v32 = v24[12];
        v33 = v24[13];
        v34 = vtrn1q_s16(v28, v32);
        v35 = vtrn2q_s16(v28, v32);
        v36 = vtrn1q_s32(v30, v34);
        v37 = vtrn2q_s32(v30, v34);
        v38 = vtrn1q_s32(v31, v35);
        v39 = vtrn2q_s32(v31, v35);
        v40 = vtrn1q_s16(v25, v27);
        v41 = vtrn2q_s16(v25, v27);
        v42 = vtrn1q_s16(v29, v33);
        v43 = vtrn2q_s16(v29, v33);
        v44 = vtrn1q_s32(v40, v42);
        v45 = vtrn2q_s32(v40, v42);
        v46 = vtrn1q_s32(v41, v43);
        v47 = vtrn2q_s32(v41, v43);
        if (a4)
        {
          v48 = v36;
          v49 = v44;
          v50 = v38;
          v51 = v46;
          v52 = v37;
          v53 = v45;
          v54 = v39;
          v55 = v47;
        }

        else
        {
          v48 = 0uLL;
          v49 = 0uLL;
          v50 = 0uLL;
          v51 = 0uLL;
          v52 = 0uLL;
          v53 = 0uLL;
          v54 = 0uLL;
          v55 = 0uLL;
        }

        v56 = *(v22 + a2);
        v57 = *v22;
        v58 = *(v22 + 2 * a2);
        v59 = *(v22 + 3 * a2);
        *v24 = v48;
        v24[1] = v49;
        v24[4] = v50;
        v24[5] = v51;
        v24[8] = v52;
        v24[9] = v53;
        v24[12] = v54;
        v24[13] = v55;
        *v22 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v36, vmovl_u8(*v57.i8))), vqaddq_s16(v44, vmovl_high_u8(v57)));
        *(v22 + a2) = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v38, vmovl_u8(*v56.i8))), vqaddq_s16(v46, vmovl_high_u8(v56)));
        *(v22 + 2 * a2) = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v37, vmovl_u8(*v58.i8))), vqaddq_s16(v45, vmovl_high_u8(v58)));
        *(v22 + 3 * a2) = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v39, vmovl_u8(*v59.i8))), vqaddq_s16(v47, vmovl_high_u8(v59)));
        v22 = (v22 + 4 * a2);
        v24 += 16;
        v23 += 4;
      }

      while (v23 < 0x1C);
      v20 = 0;
      v19 = 2;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

void *sub_2774EEC1C(int16x4_t *a1, int a2)
{
  v2 = a1;
  if (a2 <= 16)
  {
    sub_2774EEE18(a1, 0x20u, &unk_27753CC20);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774EF53C(v2, 0x20u, &unk_27753CC30);
      v8 += 4;
      v2 += 32;
    }

    while (v8 < 0x1C);
    return result;
  }

  if (a2 > 0x30)
  {
    if (a2 >= 0xA1)
    {
      v6 = -4;
      v7 = a1;
      do
      {
        sub_2774EF29C(v7);
        v6 += 4;
        ++v7;
      }

      while (v6 < 0x1C);
    }

    else
    {
      v4 = -4;
      v5 = a1;
      do
      {
        sub_2774EF08C(v5, 0x20u, &unk_27753CC60, aZwpf, aZzxurnic6);
        v4 += 4;
        ++v5;
      }

      while (v4 < 0xC);
    }
  }

  else
  {
    sub_2774EEEDC(a1, 0x20u, &unk_27753CC40, aZzxu);
    sub_2774EEEDC(v2 + 1, 0x20u, &unk_27753CC40, aZzxu);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 > 0x50)
  {
    if (a2 >= 0xE1)
    {
      v12 = -4;
      do
      {
        result = sub_2774EF9B4(v2);
        v12 += 4;
        v2 += 32;
      }

      while (v12 < 0x1C);
    }

    else
    {
      v11 = -4;
      do
      {
        result = sub_2774EF7B0(v2, 0x20u, &unk_27753CC70, aZwpf, aZzxurnic6);
        v11 += 4;
        v2 += 32;
      }

      while (v11 < 0x1C);
    }
  }

  else
  {
    v10 = -4;
    do
    {
      result = sub_2774EF61C(v2, 0x20u, &unk_27753CC50, aZzxu);
      v10 += 4;
      v2 += 32;
    }

    while (v10 < 0x1C);
  }

  return result;
}

int16x4_t *sub_2774EEE18(int16x4_t *result, unsigned int a2, uint64_t a3)
{
  v3 = a2 >> 2;
  v4 = (a2 - 1) * v3;
  v5 = (&unk_27753CA30 + 4 * a2);
  v6 = *(result + 2 * a2);
  v7 = *(result + 4 * a2);
  v8 = *(result + 6 * a2);
  v9 = vshll_n_s16(*result, 6uLL);
  v10 = (a3 + 1);
  do
  {
    v11 = *v5++;
    v12 = vmlal_laneq_s16(v9, v7, v11, 4);
    v13 = vmlsl_laneq_s16(v9, v7, v11, 4);
    v14 = vmlal_lane_s16(vmull_lane_s16(v8, *v11.i8, 1), v6, *v11.i8, 0);
    v15 = vmlal_lane_s16(vmull_lane_s16(v8, *v11.i8, 3), v6, *v11.i8, 2);
    v16 = *(v10 - 1);
    v11.i32[0] = *v10;
    v10 += 2;
    result[v16] = vqrshrn_n_s32(vaddq_s32(v14, v12), 7uLL);
    result[v11.u32[0]] = vqrshrn_n_s32(vaddq_s32(v15, v13), 7uLL);
    result[v4 - v16] = vqrshrn_n_s32(vsubq_s32(v12, v14), 7uLL);
    result[v4 - v11.i32[0]] = vqrshrn_n_s32(vsubq_s32(v13, v15), 7uLL);
    --v3;
  }

  while (v3);
  return result;
}

int16x4_t *sub_2774EEEDC(int16x4_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4)
{
  v4 = *(result + 4 * a2);
  v5 = (a2 - 1) * (a2 >> 2);
  v6 = result[a2];
  v7 = *(result + 12 * a2);
  v8 = *(result + 2 * a2);
  v9 = *(result + 6 * a2);
  v10 = *(result + 10 * a2);
  v11 = *(result + 14 * a2);
  v12 = vshll_n_s16(*result, 6uLL);
  v13 = a2 >> 3;
  v14 = (a3 + 3);
  v15 = (&unk_27753CA30 + 2 * a2);
  do
  {
    v16 = *v15++;
    v17 = vmlal_laneq_s16(v12, v6, v16, 4);
    v18 = vmlsl_laneq_s16(v12, v6, v16, 4);
    v19 = vmlal_lane_s16(vmull_lane_s16(v7, *v16.i8, 1), v4, *v16.i8, 0);
    v20 = vmlal_lane_s16(vmull_lane_s16(v7, *v16.i8, 3), v4, *v16.i8, 2);
    v21 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v9, *a4, 1), v8, *a4, 0), v10, *a4, 2), v11, *a4, 3);
    v22 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v9, a4[1], 1), v8, a4[1], 0), v10, a4[1], 2), v11, a4[1], 3);
    v23 = a4[3];
    v24 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v9, a4[2], 1), v8, a4[2], 0), v10, a4[2], 2), v11, a4[2], 3);
    v25 = vaddq_s32(v19, v17);
    v26 = vsubq_s32(v17, v19);
    v27 = *(v14 - 3);
    v28 = *(v14 - 2);
    v29 = *(v14 - 1);
    v16.i32[0] = *v14;
    v14 += 4;
    result[v27] = vqrshrn_n_s32(vaddq_s32(v21, v25), 7uLL);
    v30 = vaddq_s32(v20, v18);
    v31 = vsubq_s32(v18, v20);
    result[v28] = vqrshrn_n_s32(vaddq_s32(v22, v26), 7uLL);
    v32 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v9, v23, 1), v8, v23, 0), v10, v23, 2), v11, v23, 3);
    result[v29] = vqrshrn_n_s32(vaddq_s32(v24, v30), 7uLL);
    result[v16.u32[0]] = vqrshrn_n_s32(vaddq_s32(v32, v31), 7uLL);
    result[v5 - v27] = vqrshrn_n_s32(vsubq_s32(v25, v21), 7uLL);
    result[v5 - v28] = vqrshrn_n_s32(vsubq_s32(v26, v22), 7uLL);
    result[v5 - v29] = vqrshrn_n_s32(vsubq_s32(v30, v24), 7uLL);
    result[v5 - v16.i32[0]] = vqrshrn_n_s32(vsubq_s32(v31, v32), 7uLL);
    a4 += 4;
    --v13;
  }

  while (v13);
  return result;
}

int16x4_t *sub_2774EF08C(int16x4_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4, int16x4_t *a5)
{
  v5 = a2;
  v50 = *MEMORY[0x277D85DE8];
  v6 = *(result + 1 * v5);
  v7 = result[v5];
  v8 = *(result + 3 * v5);
  v9 = &result[(v5 * 2)];
  v10 = *(v9 + 1 * v5);
  v11 = *v9;
  v12 = v9[v5];
  v13 = *(v9 + 3 * v5);
  v14 = a2 >> 1;
  v15 = (&unk_27753CA30 + 2 * v14);
  v16 = vshll_n_s16(*result, 6uLL);
  v17 = a2 >> 4;
  v18 = v49;
  do
  {
    v19 = *v15++;
    v20 = vmlal_laneq_s16(v16, v11, v19, 4);
    v21 = vmlsl_laneq_s16(v16, v11, v19, 4);
    v22 = vmlal_lane_s16(vmull_lane_s16(v12, *v19.i8, 1), v7, *v19.i8, 0);
    v23 = vmlal_lane_s16(vmull_lane_s16(v12, *v19.i8, 3), v7, *v19.i8, 2);
    v24 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v8, *a4, 1), v6, *a4, 0), v10, *a4, 2), v13, *a4, 3);
    v25 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v8, a4[1], 1), v6, a4[1], 0), v10, a4[1], 2), v13, a4[1], 3);
    v26 = a4[3];
    v27 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v8, a4[2], 1), v6, a4[2], 0), v10, a4[2], 2), v13, a4[2], 3);
    v28 = vaddq_s32(v22, v20);
    v29 = vsubq_s32(v20, v22);
    v30 = vaddq_s32(v23, v21);
    v31 = vsubq_s32(v21, v23);
    *v18 = vaddq_s32(v24, v28);
    v18[1] = vaddq_s32(v25, v29);
    v32 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v8, v26, 1), v6, v26, 0), v10, v26, 2), v13, v26, 3);
    v18[2] = vaddq_s32(v27, v30);
    v18[3] = vaddq_s32(v32, v31);
    v18[4] = vsubq_s32(v28, v24);
    v18[5] = vsubq_s32(v29, v25);
    v18[6] = vsubq_s32(v30, v27);
    v18[7] = vsubq_s32(v31, v32);
    v18 += 8;
    a4 += 4;
    --v17;
  }

  while (v17);
  v33 = 0;
  v34 = (result + 2 * a2);
  v35 = *v34;
  v36 = 1 * v5;
  v37 = *(v34 + v36);
  v38 = a2;
  v39 = v34[v38];
  v40 = *(v34 + 12 * a2);
  v41 = &v34[2 * a2];
  v42 = *v41;
  v43 = *(v41 + v36);
  v44 = v41[v38];
  v45 = *(v41 + 12 * a2);
  do
  {
    v46 = v49[v33];
    v47 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v37, *a5, 1), v35, *a5, 0), v39, *a5, 2), v40, *a5, 3), v42, *a5->i8, 4), v43, *a5->i8, 5), v44, *a5->i8, 6), v45, *a5->i8, 7);
    v48 = (a2 - 1) * (a2 >> 2) - *(a3 + v33);
    result[*(a3 + v33)] = vqrshrn_n_s32(vaddq_s32(v47, v46), 7uLL);
    result[v48] = vqrshrn_n_s32(vsubq_s32(v46, v47), 7uLL);
    ++v33;
    a5 = (a5 + 2 * v14);
  }

  while (v14 != v33);
  return result;
}

int16x4_t *sub_2774EF29C(int16x4_t *result)
{
  v1 = 0;
  v58 = *MEMORY[0x277D85DE8];
  v2 = result[32];
  v3 = result[64];
  v4 = result[96];
  v5 = result[128];
  v6 = result[160];
  v7 = result[192];
  v8 = result[224];
  v9 = vshll_n_s16(*result, 6uLL);
  v10 = vmlal_s16(v9, v5, 0x40004000400040);
  v11 = vmlsl_s16(v9, v5, 0x40004000400040);
  v12 = vmlal_s16(vmull_s16(v7, 0x24002400240024), v3, 0x53005300530053);
  v13 = vmlal_s16(vmull_s16(v7, 0x52005200520052), v3, 0x24002400240024);
  v14 = vaddq_s32(v12, v10);
  v15 = vsubq_s32(v10, v12);
  v16 = vaddq_s32(v13, v11);
  v17 = vsubq_s32(v11, v13);
  v18 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v4, 0x4B004B004B004BLL), v2, 0x59005900590059), v6, 0x32003200320032), v8, 0x12001200120012);
  v19 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v4, 0x31003100310031), v2, 0x12001200120012), v6, 0x4B004B004B004BLL), v8, 0x58005800580058);
  v20 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v4, 0x11001100110011), v2, 0x4B004B004B004BLL), v6, 0x58005800580058), v8, 0x31003100310031);
  v57[0] = vaddq_s32(v18, v14);
  v57[1] = vaddq_s32(v19, v15);
  v21 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v4, 0x58005800580058), v2, 0x32003200320032), v6, 0x12001200120012), v8, 0x4B004B004B004BLL);
  v57[2] = vaddq_s32(v20, v16);
  v57[3] = vaddq_s32(v21, v17);
  v57[4] = vsubq_s32(v14, v18);
  v57[5] = vsubq_s32(v15, v19);
  v57[6] = vsubq_s32(v16, v20);
  v57[7] = vsubq_s32(v17, v21);
  v22 = result[16];
  v23 = result[48];
  v24 = result[80];
  v25 = result[112];
  v26 = result[144];
  v27 = result[176];
  v28 = result[208];
  v29 = result[240];
  do
  {
    v30 = &v57[v1 / 8];
    v31 = v57[v1 / 8];
    v32 = *&aZwpf9[v1];
    v33 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v23, *v32.i8, 1), v22, *v32.i8, 0), v24, *v32.i8, 2), v25, *v32.i8, 3), v26, v32, 4), v27, v32, 5), v28, v32, 6), v29, v32, 7);
    *v30 = vaddq_s32(v33, v31);
    v30[8] = vsubq_s32(v31, v33);
    v1 += 8;
  }

  while (v1 != 64);
  v34 = 0;
  v35 = result[8];
  v36 = result[24];
  v37 = result[40];
  v38 = result[56];
  v39 = result[72];
  v40 = result[88];
  v41 = result[104];
  v42 = result[120];
  v43 = result[136];
  v44 = result[152];
  v45 = result[168];
  v46 = result[184];
  v47 = aZzxurnic6;
  v48 = result[200];
  v49 = result[216];
  v50 = result[232];
  v51 = result[248];
  do
  {
    v53 = *v47;
    v52 = *(v47 + 1);
    v47 += 16;
    v54 = v57[byte_27753CF00[v34]];
    v55 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v36, *v53.i8, 1), v35, *v53.i8, 0), v37, *v53.i8, 2), v38, *v53.i8, 3), v39, v53, 4), v40, v53, 5), v41, v53, 6), v42, v53, 7), v43, *v52.i8, 0), v44, *v52.i8, 1), v45, *v52.i8, 2), v46, *v52.i8, 3), v48, v52, 4), v49, v52, 5), v50, v52, 6), v51, v52, 7);
    v56 = 992 - 4 * *(&unk_27753CC20 + v34 + 64);
    result[*(&unk_27753CC20 + v34 + 64)] = vqrshrn_n_s32(vaddq_s32(v55, v54), 7uLL);
    *(result + 2 * v56) = vqrshrn_n_s32(vsubq_s32(v54, v55), 7uLL);
    ++v34;
  }

  while (v34 != 16);
  return result;
}

int16x4_t *sub_2774EF53C(int16x4_t *result, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 1;
  v4 = (&unk_27753CA30 + 4 * a2);
  v5 = *(result + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 6 * a2);
  v8 = vtrn1_s16(*result, v5);
  v9 = vtrn1_s16(v6, v7);
  v10 = vshll_n_s16(vzip1_s32(v8, v9), 6uLL);
  v11 = a2 >> 2;
  v12 = vtrn2_s16(*result, v5);
  v13 = vtrn2_s16(v6, v7);
  v14 = vzip2_s32(v12, v13);
  v15 = vzip1_s32(v12, v13);
  v16 = vzip2_s32(v8, v9);
  v17 = (a3 + 1);
  do
  {
    v18 = *v4++;
    v19 = vmlal_laneq_s16(v10, v16, v18, 4);
    v20 = vmlsl_laneq_s16(v10, v16, v18, 4);
    v21 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 1), v15, *v18.i8, 0);
    v22 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 3), v15, *v18.i8, 2);
    v23 = *(v17 - 1);
    v18.i32[0] = *v17;
    v17 += 2;
    result[v23] = vqrshrn_n_s32(vaddq_s32(v21, v19), 0xCuLL);
    result[v18.u32[0]] = vqrshrn_n_s32(vaddq_s32(v22, v20), 0xCuLL);
    *(result + 2 * (4 * (v3 - v23))) = vqrshrn_n_s32(vsubq_s32(v19, v21), 0xCuLL);
    *(result + 2 * (4 * (v3 - v18.i32[0]))) = vqrshrn_n_s32(vsubq_s32(v20, v22), 0xCuLL);
    --v11;
  }

  while (v11);
  return result;
}

int16x8_t *sub_2774EF61C(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4)
{
  v4 = a2 - 1;
  v5 = (&unk_27753CA30 + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 2 * a2);
  v8 = *(result + 6 * a2);
  v9 = vtrn1q_s16(*result, v7);
  v10 = vtrn2q_s16(*result, v7);
  v11 = vtrn1q_s16(v6, v8);
  v12 = vtrn2q_s16(v6, v8);
  v13 = vtrn1q_s32(v9, v11);
  v14 = vtrn2q_s32(v9, v11);
  v15 = vtrn1q_s32(v10, v12);
  v16 = vtrn2q_s32(v10, v12);
  v17 = vshll_n_s16(*v13.i8, 6uLL);
  v18 = a2 >> 3;
  v19 = (a3 + 3);
  do
  {
    v20 = *v5++;
    v21 = vmlal_high_laneq_s16(v17, v13, v20, 4);
    v22 = vmlsl_high_laneq_s16(v17, v13, v20, 4);
    v23 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 0), v14, *v20.i8, 1);
    v24 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 2), v14, *v20.i8, 3);
    v25 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *a4, 1), *v15.i8, *a4, 0), v15, *a4, 2), v16, *a4, 3);
    v26 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[1], 1), *v15.i8, a4[1], 0), v15, a4[1], 2), v16, a4[1], 3);
    v27 = a4[3];
    v28 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[2], 1), *v15.i8, a4[2], 0), v15, a4[2], 2), v16, a4[2], 3);
    v29 = vaddq_s32(v23, v21);
    v30 = vsubq_s32(v21, v23);
    v31 = *(v19 - 3);
    v32 = *(v19 - 2);
    v33 = *(v19 - 1);
    v20.i32[0] = *v19;
    v19 += 4;
    *&result->i8[8 * v31] = vqrshrn_n_s32(vaddq_s32(v25, v29), 0xCuLL);
    v34 = vaddq_s32(v24, v22);
    v35 = vsubq_s32(v22, v24);
    *&result->i8[8 * v32] = vqrshrn_n_s32(vaddq_s32(v26, v30), 0xCuLL);
    v36 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, v27, 1), *v15.i8, v27, 0), v15, v27, 2), v16, v27, 3);
    *&result->i8[8 * v33] = vqrshrn_n_s32(vaddq_s32(v28, v34), 0xCuLL);
    *&result->i8[8 * v20.u32[0]] = vqrshrn_n_s32(vaddq_s32(v36, v35), 0xCuLL);
    *&result->i8[8 * (v4 - v31)] = vqrshrn_n_s32(vsubq_s32(v29, v25), 0xCuLL);
    *&result->i8[8 * (v4 - v32)] = vqrshrn_n_s32(vsubq_s32(v30, v26), 0xCuLL);
    *&result->i8[8 * (v4 - v33)] = vqrshrn_n_s32(vsubq_s32(v34, v28), 0xCuLL);
    *&result->i8[8 * (v4 - v20.i32[0])] = vqrshrn_n_s32(vsubq_s32(v35, v36), 0xCuLL);
    a4 += 4;
    --v18;
  }

  while (v18);
  return result;
}

int16x8_t *sub_2774EF7B0(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4, int16x4_t *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = (result + 2 * a2);
  v6 = (result + 4 * a2);
  v7 = (result + 6 * a2);
  v8 = result[1];
  v9 = v5[1];
  v10 = v6[1];
  v11 = v7[1];
  v12 = vtrn1q_s16(*result, *v5);
  v13 = vtrn2q_s16(*result, *v5);
  v14 = vtrn1q_s16(*v6, *v7);
  v15 = vtrn2q_s16(*v6, *v7);
  v16 = vtrn1q_s32(v12, v14);
  v17 = vtrn2q_s32(v12, v14);
  v18 = vtrn1q_s32(v13, v15);
  v19 = vtrn2q_s32(v13, v15);
  v20 = vtrn1q_s16(v8, v9);
  v21 = vtrn2q_s16(v8, v9);
  v22 = vtrn1q_s16(v10, v11);
  v23 = vtrn2q_s16(v10, v11);
  v24 = vtrn1q_s32(v20, v22);
  v25 = vtrn2q_s32(v20, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a2 >> 1;
  v29 = (&unk_27753CA30 + 2 * v28);
  v30 = vshll_n_s16(*v16.i8, 6uLL);
  v31 = a2 >> 4;
  v32 = v51;
  do
  {
    v33 = *v29++;
    v34 = vmlal_laneq_s16(v30, *v24.i8, v33, 4);
    v35 = vmlsl_laneq_s16(v30, *v24.i8, v33, 4);
    v36 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 1), v16, *v33.i8, 0);
    v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 3), v16, *v33.i8, 2);
    v38 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, *a4, 0), v17, *a4, 1), *v25.i8, *a4, 2), v25, *a4, 3);
    v39 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[1], 0), v17, a4[1], 1), *v25.i8, a4[1], 2), v25, a4[1], 3);
    v40 = a4[3];
    v41 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[2], 0), v17, a4[2], 1), *v25.i8, a4[2], 2), v25, a4[2], 3);
    v42 = vaddq_s32(v36, v34);
    v43 = vsubq_s32(v34, v36);
    v44 = vaddq_s32(v37, v35);
    v45 = vsubq_s32(v35, v37);
    *v32 = vaddq_s32(v38, v42);
    v32[1] = vaddq_s32(v39, v43);
    v46 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, v40, 0), v17, v40, 1), *v25.i8, v40, 2), v25, v40, 3);
    v32[2] = vaddq_s32(v41, v44);
    v32[3] = vaddq_s32(v46, v45);
    v32[4] = vsubq_s32(v42, v38);
    v32[5] = vsubq_s32(v43, v39);
    v32[6] = vsubq_s32(v44, v41);
    v32[7] = vsubq_s32(v45, v46);
    v32 += 8;
    a4 += 4;
    --v31;
  }

  while (v31);
  v47 = 0;
  do
  {
    v48 = v51[v47];
    v49 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v19.i8, *a5, 1), *v18.i8, *a5, 0), v18, *a5, 2), v19, *a5, 3), *v26.i8, *a5->i8, 4), *v27.i8, *a5->i8, 5), v26, *a5->i8, 6), v27, *a5->i8, 7);
    v50 = 4 * (~*(a3 + v47) + a2);
    *&result->i8[8 * *(a3 + v47)] = vqrshrn_n_s32(vaddq_s32(v49, v48), 0xCuLL);
    *&result->i8[2 * v50] = vqrshrn_n_s32(vsubq_s32(v48, v49), 0xCuLL);
    ++v47;
    a5 = (a5 + 2 * v28);
  }

  while (v28 != v47);
  return result;
}

int16x4_t *sub_2774EF9B4(int16x4_t *result)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = &result[16];
  v2 = -8;
  do
  {
    v3 = v1[-8];
    v4 = v1[-4];
    v5 = v1[4];
    v6 = vtrn1q_s16(v3, v4);
    v7 = vtrn2q_s16(v3, v4);
    v8 = vtrn1q_s16(*v1, v5);
    v9 = vtrn2q_s16(*v1, v5);
    v1[-8] = vtrn1q_s32(v6, v8);
    v1[-4] = vtrn1q_s32(v7, v9);
    *v1 = vtrn2q_s32(v6, v8);
    v1[4] = vtrn2q_s32(v7, v9);
    v2 += 8;
    ++v1;
  }

  while (v2 < 0x18);
  v10 = 0;
  v11 = result[1];
  v12 = result[2];
  v13 = result[3];
  v15 = result[4];
  v14 = result[5];
  v17 = result[6];
  v16 = result[7];
  v18 = vshll_n_s16(*result, 6uLL);
  v19 = vmlal_s16(v18, v15, 0x40004000400040);
  v20 = vmlsl_s16(v18, v15, 0x40004000400040);
  v21 = vmlal_s16(vmull_s16(v17, 0x24002400240024), v12, 0x53005300530053);
  v22 = vmlal_s16(vmull_s16(v17, 0x52005200520052), v12, 0x24002400240024);
  v23 = vaddq_s32(v21, v19);
  v24 = vsubq_s32(v19, v21);
  v25 = vaddq_s32(v22, v20);
  v26 = vsubq_s32(v20, v22);
  v27 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x4B004B004B004BLL), v11, 0x59005900590059), v14, 0x32003200320032), v16, 0x12001200120012);
  v28 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x31003100310031), v11, 0x12001200120012), v14, 0x4B004B004B004BLL), v16, 0x58005800580058);
  v29 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x11001100110011), v11, 0x4B004B004B004BLL), v14, 0x58005800580058), v16, 0x31003100310031);
  v66[0] = vaddq_s32(v27, v23);
  v66[1] = vaddq_s32(v28, v24);
  v30 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x58005800580058), v11, 0x32003200320032), v14, 0x12001200120012), v16, 0x4B004B004B004BLL);
  v66[2] = vaddq_s32(v29, v25);
  v66[3] = vaddq_s32(v30, v26);
  v66[4] = vsubq_s32(v23, v27);
  v66[5] = vsubq_s32(v24, v28);
  v66[6] = vsubq_s32(v25, v29);
  v66[7] = vsubq_s32(v26, v30);
  v31 = result[16];
  v32 = result[17];
  v33 = result[18];
  v34 = result[19];
  v35 = result[20];
  v36 = result[21];
  v37 = result[22];
  v38 = result[23];
  do
  {
    v39 = &v66[v10 / 8];
    v40 = v66[v10 / 8];
    v41 = *&aZwpf9[v10];
    v42 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v32, *v41.i8, 1), v31, *v41.i8, 0), v33, *v41.i8, 2), v34, *v41.i8, 3), v35, v41, 4), v36, v41, 5), v37, v41, 6), v38, v41, 7);
    *v39 = vaddq_s32(v42, v40);
    v39[8] = vsubq_s32(v40, v42);
    v10 += 8;
  }

  while (v10 != 64);
  v43 = 0;
  v44 = result[8];
  v45 = result[9];
  v46 = result[24];
  v47 = result[25];
  v48 = result[10];
  v49 = result[11];
  v50 = result[26];
  v51 = result[27];
  v52 = result[12];
  v53 = result[13];
  v54 = result[28];
  v55 = result[29];
  v56 = aZzxurnic6;
  v57 = result[14];
  v58 = result[15];
  v59 = result[30];
  v60 = result[31];
  do
  {
    v62 = *v56;
    v61 = *(v56 + 1);
    v56 += 16;
    v63 = v66[byte_27753CF00[v43]];
    v64 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v46, *v62.i8, 1), v44, *v62.i8, 0), v45, *v62.i8, 2), v47, *v62.i8, 3), v48, v62, 4), v50, v62, 5), v49, v62, 6), v51, v62, 7), v52, *v61.i8, 0), v54, *v61.i8, 1), v53, *v61.i8, 2), v55, *v61.i8, 3), v57, v61, 4), v59, v61, 5), v58, v61, 6), v60, v61, 7);
    v65 = 124 - 4 * *(&unk_27753CC20 + v43 + 80);
    result[*(&unk_27753CC20 + v43 + 80)] = vqrshrn_n_s32(vaddq_s32(v64, v63), 0xCuLL);
    *(result + 2 * v65) = vqrshrn_n_s32(vsubq_s32(v63, v64), 0xCuLL);
    ++v43;
  }

  while (v43 != 16);
  return result;
}

int16x8_t sub_2774EFC6C(uint8x16_t *a1, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  if (a5 == 1)
  {
    result = vdupq_n_s16((a3->i16[0] + 65) >> 7);
    a3->i16[0] = 0;
    v10 = vnegq_s16(result);
    v11 = vqmovun_high_s16(vqmovun_s16(result), result);
    v12 = vqmovun_high_s16(vqmovun_s16(v10), v10);
    v13 = -4;
    do
    {
      v14 = vqaddq_u8(*(a1 + 3 * a2), v11);
      v15 = vqsubq_u8(vqaddq_u8(*(a1 + a2), v11), v12);
      v16 = vqsubq_u8(vqaddq_u8(*(a1 + 2 * a2), v11), v12);
      *a1 = vqsubq_u8(vqaddq_u8(*a1, v11), v12);
      *(a1 + a2) = v15;
      *(a1 + 2 * a2) = v16;
      *(a1 + 3 * a2) = vqsubq_u8(v14, v12);
      a1 = (a1 + 4 * a2);
      v13 += 4;
    }

    while (v13 < 0xC);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = result;
        v6[1] = result;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0xF0);
    }
  }

  else
  {
    sub_2774EFEA4(a3, a5);
    v18 = -4;
    do
    {
      v19 = v6[1];
      v20 = v6[2];
      v21 = v6[3];
      v22 = v6[4];
      v23 = v6[5];
      v24 = vtrn1q_s16(*v6, v20);
      v25 = vtrn2q_s16(*v6, v20);
      v26 = v6[6];
      v27 = v6[7];
      v28 = vtrn1q_s16(v22, v26);
      v29 = vtrn2q_s16(v22, v26);
      v30 = vtrn1q_s32(v24, v28);
      v31 = vtrn2q_s32(v24, v28);
      v32 = vtrn1q_s32(v25, v29);
      v33 = vtrn2q_s32(v25, v29);
      v34 = vtrn1q_s16(v19, v21);
      v35 = vtrn2q_s16(v19, v21);
      v36 = vtrn1q_s16(v23, v27);
      v37 = vtrn2q_s16(v23, v27);
      v38 = vtrn1q_s32(v34, v36);
      v39 = vtrn2q_s32(v34, v36);
      v40 = vtrn1q_s32(v35, v37);
      v41 = vtrn2q_s32(v35, v37);
      if (a4)
      {
        v42 = v30;
        v43 = v38;
        v44 = v32;
        v45 = v40;
        v46 = v31;
        v47 = v39;
        v48 = v33;
        v49 = v41;
      }

      else
      {
        v42 = 0uLL;
        v43 = 0uLL;
        v44 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        v47 = 0uLL;
        v48 = 0uLL;
        v49 = 0uLL;
      }

      v50 = *(a1 + a2);
      v51 = *a1;
      v52 = *(a1 + 2 * a2);
      v53 = *(a1 + 3 * a2);
      *v6 = v42;
      v6[1] = v43;
      v6[2] = v44;
      v6[3] = v45;
      v6[4] = v46;
      v6[5] = v47;
      v6[6] = v48;
      v6[7] = v49;
      result = vqaddq_s16(v41, vmovl_high_u8(v53));
      *a1 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v30, vmovl_u8(*v51.i8))), vqaddq_s16(v38, vmovl_high_u8(v51)));
      *(a1 + a2) = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v32, vmovl_u8(*v50.i8))), vqaddq_s16(v40, vmovl_high_u8(v50)));
      *(a1 + 2 * a2) = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v31, vmovl_u8(*v52.i8))), vqaddq_s16(v39, vmovl_high_u8(v52)));
      *(a1 + 3 * a2) = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v33, vmovl_u8(*v53.i8))), result);
      a1 = (a1 + 4 * a2);
      v6 += 8;
      v18 += 4;
    }

    while (v18 < 0xC);
  }

  return result;
}

int16x4_t *sub_2774EFEA4(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 65) >> 7);
    v4 = -32;
    do
    {
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 += 32;
    }

    while (v4 < 0xE0);
    return result;
  }

  if (a2 <= 16)
  {
    sub_2774EEE18(result, 0x10u, &unk_27753CB30);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774EF53C(v2, 0x10u, &unk_27753CC10);
      v8 += 4;
      v2 += 16;
    }

    while (v8 < 0xC);
    return result;
  }

  if (a2 >= 0x31)
  {
    v6 = -4;
    v7 = result;
    do
    {
      sub_2774EF08C(v7, 0x10u, &unk_27753CB80, aYk2, aZwpf9);
      v6 += 4;
      ++v7;
    }

    while (v6 < 0xC);
  }

  else
  {
    sub_2774EEEDC(result, 0x10u, &unk_27753CB30, aZwpf);
    sub_2774EEEDC(v2 + 1, 0x10u, &unk_27753CB30, aZwpf);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 >= 0x51)
  {
    v10 = -4;
    do
    {
      result = sub_2774EF7B0(v2, 0x10u, &unk_27753CC18, aYk2, aZwpf9);
      v10 += 4;
      v2 += 16;
    }

    while (v10 < 0xC);
  }

  else
  {
    v9 = -4;
    do
    {
      result = sub_2774EF61C(v2, 0x10u, &unk_27753CC10, aZwpf);
      v9 += 4;
      v2 += 16;
    }

    while (v9 < 0xC);
  }

  return result;
}

double sub_2774F0084(uint8x8_t *a1, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = a1;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
    a3->i16[0] = 0;
    v10 = vaddw_u8(v9, *(a1 + 6 * a2));
    v11 = vaddw_u8(v9, *(&a1[a2] - a2));
    v12 = vqmovun_s16(vaddw_u8(v9, *(a1 + a2)));
    v13 = vqmovun_s16(vaddw_u8(v9, *(a1 + 2 * a2)));
    v14 = vqmovun_s16(vaddw_u8(v9, *(a1 + 3 * a2)));
    v15 = vqmovun_s16(vaddw_u8(v9, *(a1 + 4 * a2)));
    v16 = vqmovun_s16(vaddw_u8(v9, *(a1 + 5 * a2)));
    *a1 = vqmovun_s16(vaddw_u8(v9, *a1));
    *(a1 + a2) = v12;
    *(a1 + 2 * a2) = v13;
    *(a1 + 3 * a2) = v14;
    *(a1 + 4 * a2) = v15;
    *(a1 + 5 * a2) = v16;
    *(a1 + 6 * a2) = vqmovun_s16(v10);
    *(&a1[a2] - a2) = vqmovun_s16(v11);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0x30);
    }
  }

  else
  {
    sub_2774F0258(a3, a5);
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *v8;
      v21 = *(v8 + a2);
      v22 = *(v8 + 2 * a2);
      v23 = *(v8 + 3 * a2);
      v24 = v6[1];
      v25 = v6[2];
      v26 = v6[3];
      v27 = vtrn1q_s16(*v6, v24);
      v28 = vtrn2q_s16(*v6, v24);
      v29 = vtrn1q_s16(v25, v26);
      v30 = vtrn2q_s16(v25, v26);
      v31 = vtrn1q_s32(v27, v29);
      v32 = vtrn2q_s32(v27, v29);
      v33 = vtrn1q_s32(v28, v30);
      v34 = vtrn2q_s32(v28, v30);
      if (a4)
      {
        v35 = -1;
      }

      else
      {
        v35 = 0;
      }

      v36 = vdupq_n_s16(v35);
      *v6 = vandq_s8(v31, v36);
      v6[1] = vandq_s8(v33, v36);
      v6[2] = vandq_s8(v32, v36);
      v6[3] = vandq_s8(v34, v36);
      *v8 = vqmovun_s16(vqaddq_s16(v31, vmovl_u8(v20)));
      *(v8 + a2) = vqmovun_s16(vqaddq_s16(v33, vmovl_u8(v21)));
      *(v8 + 2 * a2) = vqmovun_s16(vqaddq_s16(v32, vmovl_u8(v22)));
      *v9.i8 = vqmovun_s16(vqaddq_s16(v34, vmovl_u8(v23)));
      *(v8 + 3 * a2) = *v9.i8;
      v8 = (v8 + 4 * a2);
      v6 += 4;
      v18 = 0;
    }

    while ((v19 & 1) != 0);
  }

  return *v9.i64;
}

int16x4_t *sub_2774F0258(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 65) >> 7);
    v4 = 1;
    do
    {
      v5 = v4;
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  else if (a2 > 16)
  {
    sub_2774EEEDC(result, 8u, &unk_27753CA00, aYk2);
    sub_2774EEEDC(v2 + 1, 8u, &unk_27753CA00, aYk2);
    sub_2774EF61C(v2, 8u, &unk_27753CA00, aYk2);

    return sub_2774EF61C(&v2[8], 8u, &unk_27753CA00, aYk2);
  }

  else
  {
    sub_2774EEE18(result, 8u, &unk_27753CA00);
    sub_2774EF53C(v2, 8u, &unk_27753CA00);

    return sub_2774EF53C(v2 + 8, 8u, &unk_27753CA00);
  }

  return result;
}

void sub_2774F0384(__int32 *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v5 = a4;
  if (a5 != 1)
  {
    sub_2774F0480(a3, a5);
    v15.i32[0] = *a1;
    v15.i32[1] = *(a1 + a2);
    v16.i32[0] = *(a1 + 2 * a2);
    v17 = (a1 + 3 * a2);
    v16.i32[1] = *v17;
    v18 = vqmovun_s16(vqaddq_s16(*a3, vmovl_u8(v15)));
    v19 = vqmovun_s16(vqaddq_s16(a3[1], vmovl_u8(v16)));
    *a1 = v18.i32[0];
    *(a1 + a2) = v18.i32[1];
    *(a1 + 2 * a2) = v19.i32[0];
    *v17 = v19.i32[1];
    if (v5)
    {
      return;
    }

    v9 = 0uLL;
    goto LABEL_6;
  }

  v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
  a3->i16[0] = 0;
  v10.i32[0] = *a1;
  v10.i32[1] = *(a1 + a2);
  v11 = (a1 + 3 * a2);
  v12.i32[0] = *(a1 + 2 * a2);
  v12.i32[1] = *v11;
  v13 = vqmovun_s16(vaddw_u8(v9, v10));
  v14 = vqmovun_s16(vaddw_u8(v9, v12));
  *a1 = v13.i32[0];
  *(a1 + a2) = v13.i32[1];
  *(a1 + 2 * a2) = v14.i32[0];
  *v11 = v14.i32[1];
  if (a4)
  {
LABEL_6:
    *a3 = v9;
    a3[1] = v9;
  }
}

int32x4_t sub_2774F0480(int32x4_t *a1, int a2)
{
  if (a2 == 1)
  {
    result = vdupq_n_s16((a1->i16[0] + 65) >> 7);
    *a1 = result;
    a1[1] = result;
  }

  else
  {
    v3 = a1->u64[1];
    v4 = *a1[1].i8;
    v5 = a1[1].u64[1];
    v6 = vsubl_s16(*a1->i8, v4);
    v7 = vshlq_n_s32(vaddl_s16(v4, *a1->i8), 6uLL);
    v8 = vshlq_n_s32(v6, 6uLL);
    v9 = vmlal_s16(vmull_s16(v5, 0x24002400240024), v3, 0x53005300530053);
    v10 = vmlsl_s16(vmull_s16(v3, 0x24002400240024), v5, 0x53005300530053);
    v11 = vqrshrn_n_s32(vaddq_s32(v9, v7), 7uLL);
    *v7.i8 = vqrshrn_n_s32(vsubq_s32(v7, v9), 7uLL);
    v12 = vqrshrn_n_s32(vaddq_s32(v10, v8), 7uLL);
    *v8.i8 = vqrshrn_n_s32(vsubq_s32(v8, v10), 7uLL);
    *v10.i8 = vtrn1_s16(v11, v12);
    v13 = vtrn2_s16(v11, v12);
    v14 = vtrn1_s16(*v8.i8, *v7.i8);
    *v8.i8 = vtrn2_s16(*v8.i8, *v7.i8);
    *v7.i8 = vzip1_s32(*v10.i8, v14);
    v15 = vzip2_s32(*v10.i8, v14);
    *v10.i8 = vzip1_s32(v13, *v8.i8);
    *v8.i8 = vzip2_s32(v13, *v8.i8);
    v16 = vshlq_n_s32(vaddl_s16(*v7.i8, v15), 6uLL);
    v17 = vshlq_n_s32(vsubl_s16(*v7.i8, v15), 6uLL);
    v18 = vmlal_s16(vmull_s16(*v8.i8, 0x24002400240024), *v10.i8, 0x53005300530053);
    v19 = vmlsl_s16(vmull_s16(*v10.i8, 0x24002400240024), *v8.i8, 0x53005300530053);
    result = vaddq_s32(v16, v18);
    v20.val[0] = vqrshrn_n_s32(result, 0xCuLL);
    v20.val[3] = vqrshrn_n_s32(vsubq_s32(v16, v18), 0xCuLL);
    v20.val[1] = vqrshrn_n_s32(vaddq_s32(v17, v19), 0xCuLL);
    v20.val[2] = vqrshrn_n_s32(vsubq_s32(v17, v19), 0xCuLL);
    vst4_s16(a1->i16, v20);
  }

  return result;
}

int8x8_t sub_2774F0558(__int32 *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2774F05EC(a3);
  v8.i32[0] = *a1;
  v8.i32[1] = *(a1 + a2);
  v9.i32[0] = *(a1 + 2 * a2);
  v10 = (a1 + 3 * a2);
  v9.i32[1] = *v10;
  result = vqmovun_s16(vqaddq_s16(*a3, vmovl_u8(v8)));
  v12 = vqmovun_s16(vqaddq_s16(*(a3 + 16), vmovl_u8(v9)));
  *a1 = result.i32[0];
  *(a1 + a2) = result.i32[1];
  *(a1 + 2 * a2) = v12.i32[0];
  *v10 = v12.i32[1];
  if ((a4 & 1) == 0)
  {
    result = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

int32x4_t sub_2774F05EC(int16x4_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vaddl_s16(v2, *a1);
  v5 = vaddl_s16(v3, v2);
  v6 = vsubl_s16(*a1, v3);
  v7.i64[0] = 0x1D0000001DLL;
  v7.i64[1] = 0x1D0000001DLL;
  v8.i64[0] = 0x3700000037;
  v8.i64[1] = 0x3700000037;
  v9 = vmlaq_s32(vmlal_s16(vmulq_s32(v4, v7), v1, 0x4A004A004A004ALL), v5, v8);
  v10 = vmlaq_s32(vmlsl_s16(vmulq_s32(v4, v8), v1, 0x4A004A004A004ALL), v6, v7);
  v11.i64[0] = 0x1C0000001CLL;
  v11.i64[1] = 0x1C0000001CLL;
  v12 = vmlaq_s32(vmlal_s16(vmulq_s32(v6, v8), v1, 0x4A004A004A004ALL), v5, v11);
  v13.i64[0] = 0x4A0000004ALL;
  v13.i64[1] = 0x4A0000004ALL;
  v14 = vmulq_s32(vaddw_s16(vsubl_s16(*a1, v2), v3), v13);
  v15 = vqrshrn_n_s32(v9, 7uLL);
  v16 = vqrshrn_n_s32(v12, 7uLL);
  *v14.i8 = vqrshrn_n_s32(v14, 7uLL);
  *v10.i8 = vqrshrn_n_s32(v10, 7uLL);
  *v5.i8 = vtrn1_s16(v15, v16);
  v17 = vtrn2_s16(v15, v16);
  v18 = vtrn1_s16(*v14.i8, *v10.i8);
  *v14.i8 = vtrn2_s16(*v14.i8, *v10.i8);
  *v10.i8 = vzip1_s32(*v5.i8, v18);
  v19 = vzip2_s32(*v5.i8, v18);
  *v5.i8 = vzip1_s32(v17, *v14.i8);
  *v14.i8 = vzip2_s32(v17, *v14.i8);
  v20 = vaddl_s16(*v10.i8, v19);
  v21 = vaddl_s16(v19, *v14.i8);
  v22 = vsubl_s16(*v10.i8, *v14.i8);
  v23 = vmlaq_s32(vmlal_s16(vmulq_s32(v21, v8), *v5.i8, 0x4A004A004A004ALL), v20, v7);
  v24 = vmlaq_s32(vmlsl_s16(vmulq_s32(v22, v7), *v5.i8, 0x4A004A004A004ALL), v20, v8);
  result = vmulq_s32(vaddw_s16(vsubl_s16(*v10.i8, v19), *v14.i8), v13);
  v26 = vqrshrn_n_s32(v23, 0xCuLL);
  *v10.i8 = vqrshrn_n_s32(vmlaq_s32(vmlal_s16(vmulq_s32(v22, v8), *v5.i8, 0x4A004A004A004ALL), v21, v11), 0xCuLL);
  *v5.i8 = vqrshrn_n_s32(result, 0xCuLL);
  *v21.i8 = vqrshrn_n_s32(v24, 0xCuLL);
  vst4_s16(a1, *(&v5 - 1));
  return result;
}

void sub_2774F06C8(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v6 = 0;
  v16[257] = *MEMORY[0x277D85DE8];
  v7 = a1 + 2;
  v8 = a3 + 2;
  do
  {
    v9 = &a5[v6];
    v10 = *v7[-2].i8;
    v11 = *v8[-2].i8;
    v12 = vsubl_u8(*v10.i8, *v11.i8);
    v13 = vsubl_high_u8(v10, v11);
    v14 = vsubl_u8(*v7, *v8);
    v15 = vsubl_high_u8(*v7->i8, *v8->i8);
    *v9 = v12;
    v9[1] = v13;
    v9[2] = v14;
    v9[3] = v15;
    v6 += 8;
    v7 = (v7 + a2);
    v8 = (v8 + a4);
  }

  while ((v6 * 8) != 2048);
  sub_2774F077C(v16, a5, 4);
  sub_2774F09B8(a5, v16);
}

void sub_2774F077C(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v93[32] = *MEMORY[0x277D85DE8];
  v6 = -4;
  do
  {
    v7 = a2[1];
    v8 = a2[8];
    v9 = a2[9];
    v10 = a2[16];
    v11 = a2[17];
    v12 = a2[24];
    v13 = a2[25];
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[10];
    v17 = a2[11];
    v18 = a2[18];
    v19 = a2[19];
    v20 = a2[26];
    v21 = a2[27];
    v23 = a2[4];
    v22 = a2[5];
    v24 = a2[12];
    v25 = a2[13];
    v26 = a2[20];
    v27 = a2[21];
    v28 = vtrn1_s16(*a2, v8);
    v29 = vtrn2_s16(*a2, v8);
    v30 = vtrn1_s16(v10, v12);
    v31 = a2[28];
    v32 = a2[29];
    v33 = vtrn2_s16(v10, v12);
    v92 = vzip2_s32(v28, v30);
    v93[0] = vzip1_s32(v28, v30);
    v35 = a2[6];
    v34 = a2[7];
    v36 = vzip1_s32(v29, v33);
    v37 = vzip2_s32(v29, v33);
    v38 = vtrn1_s16(v7, v9);
    v40 = a2[14];
    v39 = a2[15];
    v41 = vtrn2_s16(v7, v9);
    v42 = vtrn1_s16(v11, v13);
    v43 = vtrn2_s16(v11, v13);
    v45 = a2[22];
    v44 = a2[23];
    v46 = vzip1_s32(v38, v42);
    v47 = vzip2_s32(v38, v42);
    v48 = vzip1_s32(v41, v43);
    v49 = vzip2_s32(v41, v43);
    v50 = vtrn1_s16(v14, v16);
    v51 = vtrn2_s16(v14, v16);
    v52 = vtrn1_s16(v18, v20);
    v53 = vtrn2_s16(v18, v20);
    v54 = vzip1_s32(v50, v52);
    v55 = vzip2_s32(v50, v52);
    v56 = vzip1_s32(v51, v53);
    v57 = vzip2_s32(v51, v53);
    v58 = vtrn1_s16(v15, v17);
    v59 = vtrn2_s16(v15, v17);
    v60 = vtrn1_s16(v19, v21);
    v61 = vtrn2_s16(v19, v21);
    v62 = vzip1_s32(v58, v60);
    v63 = vzip2_s32(v58, v60);
    v64 = vzip1_s32(v59, v61);
    v65 = vzip2_s32(v59, v61);
    v66 = vtrn1_s16(v23, v24);
    v67 = vtrn2_s16(v23, v24);
    v68 = vtrn1_s16(v26, v31);
    v69 = vtrn2_s16(v26, v31);
    v70 = vzip1_s32(v66, v68);
    v71 = vzip2_s32(v66, v68);
    v72 = vzip1_s32(v67, v69);
    v73 = vzip2_s32(v67, v69);
    v74 = vtrn1_s16(v22, v25);
    v75 = vtrn2_s16(v22, v25);
    v76 = vtrn1_s16(v27, v32);
    v77 = vtrn2_s16(v27, v32);
    v78 = vzip1_s32(v74, v76);
    v79 = vzip2_s32(v74, v76);
    v80 = vzip1_s32(v75, v77);
    v81 = vzip2_s32(v75, v77);
    v82 = vtrn1_s16(v35, v40);
    v83 = vtrn2_s16(v35, v40);
    v84 = a2[30];
    v85 = a2[31];
    v93[1] = v37;
    v93[2] = v36;
    v86 = vtrn1_s16(v45, v84);
    v87 = vtrn2_s16(v45, v84);
    v93[3] = v92;
    v93[4] = v49;
    v93[5] = v46;
    v93[6] = v47;
    v88 = vtrn1_s16(v34, v39);
    v89 = vtrn2_s16(v34, v39);
    v90 = vtrn1_s16(v44, v85);
    v91 = vtrn2_s16(v44, v85);
    v93[7] = v48;
    v93[8] = v65;
    v93[9] = v62;
    v93[10] = v63;
    v93[11] = v64;
    v93[12] = v54;
    v93[13] = v57;
    v93[14] = v56;
    v93[15] = v55;
    v93[16] = vzip2_s32(v89, v91);
    v93[17] = vzip1_s32(v88, v90);
    v93[18] = vzip2_s32(v88, v90);
    v93[19] = vzip1_s32(v89, v91);
    v93[20] = vzip1_s32(v82, v86);
    v93[21] = vzip2_s32(v83, v87);
    v93[22] = vzip1_s32(v83, v87);
    v93[23] = vzip2_s32(v82, v86);
    v93[24] = v70;
    v93[25] = v73;
    v93[26] = v72;
    v93[27] = v71;
    v93[28] = v81;
    v93[29] = v78;
    v93[30] = v79;
    v93[31] = v80;
    sub_2774F1160(a1, a3, v93);
    a2 += 32;
    ++a1;
    v6 += 4;
  }

  while (v6 < 0x1C);
}

void sub_2774F09B8(int16x4_t *a1, int16x4_t *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = -4;
  do
  {
    v5 = a2[1];
    v6 = a2[8];
    v7 = a2[9];
    v8 = vtrn1_s16(*a2, v6);
    v9 = vtrn2_s16(*a2, v6);
    v10 = a2[16];
    v11 = a2[17];
    v12 = a2[24];
    v13 = a2[25];
    v14 = vtrn1_s16(v10, v12);
    v15 = vtrn2_s16(v10, v12);
    v16 = vzip1_s32(v8, v14);
    v17 = vzip2_s32(v8, v14);
    v18 = vzip1_s32(v9, v15);
    v19 = vzip2_s32(v9, v15);
    v20 = vtrn1_s16(v5, v7);
    v21 = vtrn2_s16(v5, v7);
    v22 = vtrn1_s16(v11, v13);
    v23 = vtrn2_s16(v11, v13);
    v24 = vzip1_s32(v20, v22);
    v25 = vzip2_s32(v20, v22);
    v26 = a2[2];
    v27 = a2[3];
    v28 = vzip1_s32(v21, v23);
    v29 = vzip2_s32(v21, v23);
    v30 = a2[10];
    v31 = a2[11];
    v32 = vtrn1_s16(v26, v30);
    v33 = vtrn2_s16(v26, v30);
    v34 = a2[18];
    v35 = a2[19];
    v36 = a2[26];
    v37 = a2[27];
    v38 = vtrn1_s16(v34, v36);
    v39 = vtrn2_s16(v34, v36);
    v40 = vzip1_s32(v32, v38);
    v41 = vzip2_s32(v32, v38);
    v42 = vzip1_s32(v33, v39);
    v43 = vzip2_s32(v33, v39);
    v44 = vtrn1_s16(v27, v31);
    v45 = vtrn2_s16(v27, v31);
    v46 = a2[4];
    v47 = a2[5];
    v48 = vtrn1_s16(v35, v37);
    v49 = vtrn2_s16(v35, v37);
    v50 = vzip1_s32(v44, v48);
    v51 = a2[12];
    v52 = a2[13];
    v53 = vzip2_s32(v44, v48);
    v54 = vzip1_s32(v45, v49);
    v55 = vzip2_s32(v45, v49);
    v56 = a2[20];
    v57 = a2[21];
    v58 = vtrn1_s16(v46, v51);
    v59 = vtrn2_s16(v46, v51);
    v60 = a2[28];
    v61 = a2[29];
    v62 = vtrn1_s16(v56, v60);
    v63 = vtrn2_s16(v56, v60);
    v64 = vzip1_s32(v58, v62);
    v87 = vzip2_s32(v58, v62);
    v65 = a2[6];
    v66 = a2[7];
    v67 = vzip1_s32(v59, v63);
    v68 = vzip2_s32(v59, v63);
    v69 = vtrn1_s16(v47, v52);
    v70 = a2[14];
    v71 = a2[15];
    v72 = vtrn2_s16(v47, v52);
    v73 = vtrn1_s16(v57, v61);
    v74 = vtrn2_s16(v57, v61);
    v76 = a2[22];
    v75 = a2[23];
    v77 = vtrn1_s16(v65, v70);
    v78 = vtrn2_s16(v65, v70);
    v79 = a2[30];
    v80 = a2[31];
    v81 = vtrn1_s16(v76, v79);
    v82 = vtrn2_s16(v76, v79);
    v88[0] = vmovl_s16(v16);
    v88[1] = vmovl_s16(v19);
    v88[2] = vmovl_s16(v18);
    v88[3] = vmovl_s16(v17);
    v88[4] = vmovl_s16(v29);
    v88[5] = vmovl_s16(v24);
    v83 = vtrn1_s16(v66, v71);
    v84 = vtrn2_s16(v66, v71);
    v88[6] = vmovl_s16(v25);
    v88[7] = vmovl_s16(v28);
    v88[8] = vmovl_s16(v55);
    v88[9] = vmovl_s16(v50);
    v85 = vtrn1_s16(v75, v80);
    v86 = vtrn2_s16(v75, v80);
    v88[10] = vmovl_s16(v53);
    v88[11] = vmovl_s16(v54);
    v88[12] = vmovl_s16(v40);
    v88[13] = vmovl_s16(v43);
    v88[14] = vmovl_s16(v42);
    v88[15] = vmovl_s16(v41);
    v88[16] = vmovl_s16(vzip2_s32(v84, v86));
    v88[17] = vmovl_s16(vzip1_s32(v83, v85));
    v88[18] = vmovl_s16(vzip2_s32(v83, v85));
    v88[19] = vmovl_s16(vzip1_s32(v84, v86));
    v88[20] = vmovl_s16(vzip1_s32(v77, v81));
    v88[21] = vmovl_s16(vzip2_s32(v78, v82));
    v88[22] = vmovl_s16(vzip1_s32(v78, v82));
    v88[23] = vmovl_s16(vzip2_s32(v77, v81));
    v88[24] = vmovl_s16(v64);
    v88[25] = vmovl_s16(v68);
    v88[26] = vmovl_s16(v67);
    v88[27] = vmovl_s16(v87);
    v88[28] = vmovl_s16(vzip2_s32(v72, v74));
    v88[29] = vmovl_s16(vzip1_s32(v69, v73));
    v88[30] = vmovl_s16(vzip2_s32(v69, v73));
    v88[31] = vmovl_s16(vzip1_s32(v72, v74));
    sub_2774F0C64(a1, v88);
    a2 += 32;
    ++a1;
    v4 += 4;
  }

  while (v4 < 0x1C);
}

int16x4_t sub_2774F0C64(int16x4_t *a1, int32x4_t *a2)
{
  v3 = a2[16];
  v4 = a2[17];
  v5 = a2[18];
  v6 = a2[19];
  v7 = a2[20];
  v8 = a2[21];
  v9 = a2[22];
  v10 = a2[23];
  v11 = a2[24];
  v12 = a2[25];
  v13 = a2[26];
  v14 = a2[27];
  v15 = a2[28];
  v16 = a2[29];
  v17 = a2[30];
  v18 = a2[31];
  v19 = a2[1];
  v20 = vaddq_s32(*a2, v3);
  v21 = vsubq_s32(*a2, v3);
  v22 = vaddq_s32(v19, v4);
  v23 = vsubq_s32(v19, v4);
  *a2 = v20;
  a2[1] = v22;
  v24 = a2[2];
  v25 = a2[3];
  v26 = vaddq_s32(v24, v5);
  v27 = vsubq_s32(v24, v5);
  v28 = vaddq_s32(v25, v6);
  v29 = vsubq_s32(v25, v6);
  a2[2] = v26;
  a2[3] = v28;
  v30 = a2[4];
  v31 = a2[5];
  v32 = vaddq_s32(v30, v7);
  v33 = vsubq_s32(v30, v7);
  v34 = vaddq_s32(v31, v8);
  v35 = vsubq_s32(v31, v8);
  a2[4] = v32;
  a2[5] = v34;
  v36 = a2[6];
  v37 = a2[7];
  v38 = vaddq_s32(v36, v9);
  v39 = vsubq_s32(v36, v9);
  v40 = vaddq_s32(v37, v10);
  v41 = vsubq_s32(v37, v10);
  a2[6] = v38;
  a2[7] = v40;
  v42 = a2[8];
  v43 = a2[9];
  v44 = vaddq_s32(v42, v11);
  v45 = vsubq_s32(v42, v11);
  v46 = vaddq_s32(v43, v12);
  v47 = vsubq_s32(v43, v12);
  a2[8] = v44;
  a2[9] = v46;
  v48 = a2[10];
  v49 = a2[11];
  v50 = vaddq_s32(v48, v13);
  v51 = vsubq_s32(v48, v13);
  v52 = vaddq_s32(v49, v14);
  v53 = vsubq_s32(v49, v14);
  a2[10] = v50;
  a2[11] = v52;
  v54 = a2[12];
  v55 = a2[13];
  v56 = vaddq_s32(v54, v15);
  v57 = vsubq_s32(v54, v15);
  v58 = vaddq_s32(v55, v16);
  v59 = vsubq_s32(v55, v16);
  a2[12] = v56;
  a2[13] = v58;
  v60 = a2[14];
  v61 = a2[15];
  v62 = vaddq_s32(v60, v17);
  v63 = vsubq_s32(v60, v17);
  v64 = vaddq_s32(v61, v18);
  v65 = vsubq_s32(v61, v18);
  v66 = &unk_27753C810;
  v67 = 8;
  a2[14] = v62;
  a2[15] = v64;
  do
  {
    v68 = *v66[-2].i8;
    a1[v67] = vqmovn_s32(vrshrq_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmovl_s16(vdup_lane_s16(*v68.i8, 1)), v23), vmovl_s16(vdup_lane_s16(*v68.i8, 0)), v21), vmovl_s16(vdup_lane_s16(*v68.i8, 2)), v27), vmovl_s16(vdup_lane_s16(*v68.i8, 3)), v29), vmovl_s16(vdup_laneq_s16(v68, 4)), v33), vmovl_s16(vdup_laneq_s16(v68, 5)), v35), vmovl_s16(vdup_laneq_s16(v68, 6)), v39), vmovl_s16(vdup_laneq_s16(v68, 7)), v41), vmovl_s16(vdup_lane_s16(*v66, 1)), v47), vmovl_s16(vdup_lane_s16(*v66, 0)), v45), vmovl_s16(vdup_lane_s16(*v66, 2)), v51), vmovl_s16(vdup_lane_s16(*v66, 3)), v53), vmovl_s16(vdup_laneq_s16(*v66->i8, 4)), v57), vmovl_s16(vdup_laneq_s16(*v66->i8, 5)), v59), vmovl_s16(vdup_laneq_s16(*v66->i8, 6)), v63), vmovl_s16(vdup_laneq_s16(*v66->i8, 7)), v65), 0xBuLL));
    v67 += 16;
    v66 += 4;
  }

  while (v67 != 264);

  return sub_2774F0E6C(a1, 64, 11, a2);
}

int16x4_t sub_2774F0E6C(int16x4_t *a1, uint64_t a2, int a3, int32x4_t *a4)
{
  v5 = a4[3];
  v6 = a4[4];
  v7 = a4[5];
  v8 = a4[8];
  v9 = a4[9];
  v10 = a4[10];
  v11 = a4[11];
  v12 = a4[12];
  v13 = a4[13];
  v45 = a4[1];
  v46 = *a4;
  v14 = vsubq_s32(*a4, v8);
  v15 = vsubq_s32(v45, v9);
  v44 = a4[2];
  v16 = vsubq_s32(v44, v10);
  v17 = vsubq_s32(v5, v11);
  v18 = vsubq_s32(v6, v12);
  v19 = vsubq_s32(v7, v13);
  v20 = a4[6];
  v21 = a4[7];
  v22 = a4[14];
  v23 = a4[15];
  v24 = vsubq_s32(v20, v22);
  v25 = vsubq_s32(v21, v23);
  v26 = 6 * a2;
  v27 = 8 * a2;
  v28 = 2 * a2;
  v29 = -2;
  v30 = &unk_27753C790;
  v31 = vdupq_n_s32(-a3);
  v32 = a1;
  do
  {
    v33 = *v30[-2].i8;
    v34 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmovl_s16(vdup_lane_s16(*v30, 1)), v15), vmovl_s16(vdup_lane_s16(*v30, 0)), v14), vmovl_s16(vdup_lane_s16(*v30, 2)), v16), vmovl_s16(vdup_lane_s16(*v30, 3)), v17), vmovl_s16(vdup_laneq_s16(*v30->i8, 4)), v18), vmovl_s16(vdup_laneq_s16(*v30->i8, 5)), v19), vmovl_s16(vdup_laneq_s16(*v30->i8, 6)), v24), vmovl_s16(vdup_laneq_s16(*v30->i8, 7)), v25);
    *(v32 + v28) = vqmovn_s32(vrshlq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(vmovl_s16(vdup_lane_s16(*v33.i8, 1)), v15), vmovl_s16(vdup_lane_s16(*v33.i8, 0)), v14), vmovl_s16(vdup_lane_s16(*v33.i8, 2)), v16), vmovl_s16(vdup_lane_s16(*v33.i8, 3)), v17), vmovl_s16(vdup_laneq_s16(v33, 4)), v18), vmovl_s16(vdup_laneq_s16(v33, 5)), v19), vmovl_s16(vdup_laneq_s16(v33, 6)), v24), vmovl_s16(vdup_laneq_s16(v33, 7)), v25), v31));
    *(v32 + v26) = vqmovn_s32(vrshlq_s32(v34, v31));
    v29 += 2;
    v32 = (v32 + v27);
    v30 += 4;
  }

  while (v29 < 6);
  v35 = vaddq_s32(v23, v21);
  v36 = vaddq_s32(v22, v20);
  v37 = vaddq_s32(v13, v7);
  v38 = vaddq_s32(v12, v6);
  v39 = vaddq_s32(v11, v5);
  v40 = vaddq_s32(v10, v44);
  v41 = vaddq_s32(v9, v45);
  v42 = vaddq_s32(v8, v46);

  return sub_2774F102C(a1, v28, a3, v42, v41, v40, v39, v38, v37, v36, v35);
}

int16x4_t sub_2774F102C(int16x4_t *a1, uint64_t a2, int a3, int32x4_t a4, int32x4_t a5, int32x4_t a6, int32x4_t a7, int32x4_t a8, int32x4_t a9, int32x4_t a10, int32x4_t a11)
{
  v11 = vaddq_s32(a8, a4);
  v12 = vsubq_s32(a4, a8);
  v13 = vaddq_s32(a9, a5);
  v14 = vsubq_s32(a5, a9);
  v15 = vaddq_s32(a10, a6);
  v16 = vsubq_s32(a6, a10);
  v17 = vaddq_s32(a11, a7);
  v18 = vsubq_s32(a7, a11);
  v19.i64[0] = 0x5900000059;
  v19.i64[1] = 0x5900000059;
  v20.i64[0] = 0x1200000012;
  v20.i64[1] = 0x1200000012;
  v21.i64[0] = 0x4B0000004BLL;
  v21.i64[1] = 0x4B0000004BLL;
  v22.i64[0] = 0x3200000032;
  v22.i64[1] = 0x3200000032;
  v23 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v12, v19), v14, v20), v16, v21), v18, v22);
  v24.i64[0] = 0x3100000031;
  v24.i64[1] = 0x3100000031;
  v25.i64[0] = 0x1100000011;
  v25.i64[1] = 0x1100000011;
  v26 = vmlaq_s32(vmlaq_s32(vmulq_s32(v12, v21), v14, v24), v16, v25);
  v25.i64[0] = 0x5800000058;
  v25.i64[1] = 0x5800000058;
  v27 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v12, v22), v14, v21), v16, v25), v18, v20);
  v28 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v12, v20), v14, v25), v16, v24), v18, v21);
  v29 = vdupq_n_s32(-a3);
  v30 = (a1 + 2 * a2);
  *v30 = vqmovn_s32(vrshlq_s32(v23, v29));
  v31 = 4 * a2;
  *(v30 + v31) = vqmovn_s32(vrshlq_s32(vmlaq_s32(v26, v18, v25), v29));
  v30[a2] = vqmovn_s32(vrshlq_s32(v27, v29));
  v32 = 12 * a2;
  *(v30 + v32) = vqmovn_s32(vrshlq_s32(v28, v29));
  v33 = vaddq_s32(v13, v11);
  v34 = vsubq_s32(v11, v13);
  v35 = vaddq_s32(v17, v15);
  v36 = vsubq_s32(v15, v17);
  v15.i64[0] = 0x5300000053;
  v15.i64[1] = 0x5300000053;
  v37 = vmulq_s32(v34, v15);
  v17.i64[0] = 0x2400000024;
  v17.i64[1] = 0x2400000024;
  v38 = vmulq_s32(v34, v17);
  v39 = vmlaq_s32(v37, v36, v17);
  v17.i64[0] = 0x5200000052;
  v17.i64[1] = 0x5200000052;
  v40 = vmlaq_s32(v38, v36, v17);
  v41 = vaddq_s32(v35, v33);
  result = vqmovn_s32(vrshlq_s32(vshlq_n_s32(vsubq_s32(v33, v35), 6uLL), v29));
  *a1 = vqmovn_s32(vrshlq_s32(vshlq_n_s32(v41, 6uLL), v29));
  *(a1 + v31) = vqmovn_s32(vrshlq_s32(v39, v29));
  a1[a2] = result;
  *(a1 + v32) = vqmovn_s32(vrshlq_s32(v40, v29));
  return result;
}

int16x4_t sub_2774F1160(int16x4_t *a1, int a2, int16x4_t *a3)
{
  v4 = a3[16];
  v5 = a3[17];
  v6 = a3[18];
  v7 = a3[19];
  v8 = a3[20];
  v9 = a3[21];
  v10 = a3[22];
  v11 = a3[23];
  v12 = a3[24];
  v13 = a3[25];
  v14 = a3[26];
  v15 = a3[27];
  v17 = a3[28];
  v16 = a3[29];
  v19 = a3[30];
  v18 = a3[31];
  v20 = a3[1];
  v21 = vadd_s16(*a3, v4);
  v22 = vsub_s16(*a3, v4);
  v23 = vadd_s16(v20, v5);
  v24 = vsub_s16(v20, v5);
  *a3 = v21;
  a3[1] = v23;
  v25 = a3[2];
  v26 = a3[3];
  v27 = vadd_s16(v25, v6);
  v28 = vsub_s16(v25, v6);
  v29 = vadd_s16(v26, v7);
  v30 = vsub_s16(v26, v7);
  a3[2] = v27;
  a3[3] = v29;
  v31 = a3[4];
  v32 = a3[5];
  v33 = vadd_s16(v31, v8);
  v34 = vsub_s16(v31, v8);
  v35 = vadd_s16(v32, v9);
  v36 = vsub_s16(v32, v9);
  a3[4] = v33;
  a3[5] = v35;
  v37 = a3[6];
  v38 = a3[7];
  v39 = vadd_s16(v37, v10);
  v40 = vsub_s16(v37, v10);
  v41 = vadd_s16(v38, v11);
  v42 = vsub_s16(v38, v11);
  a3[6] = v39;
  a3[7] = v41;
  v43 = a3[8];
  v44 = a3[9];
  v45 = vadd_s16(v43, v12);
  v46 = vsub_s16(v43, v12);
  v47 = vadd_s16(v44, v13);
  v48 = vsub_s16(v44, v13);
  a3[8] = v45;
  a3[9] = v47;
  v49 = a3[10];
  v50 = a3[11];
  v51 = vadd_s16(v49, v14);
  v52 = vsub_s16(v49, v14);
  v53 = vadd_s16(v50, v15);
  v54 = vsub_s16(v50, v15);
  a3[10] = v51;
  a3[11] = v53;
  v55 = a3[12];
  v56 = a3[13];
  v57 = vadd_s16(v55, v17);
  v58 = vsub_s16(v55, v17);
  v59 = vadd_s16(v56, v16);
  v60 = vsub_s16(v56, v16);
  a3[12] = v57;
  a3[13] = v59;
  v61 = a3[14];
  v62 = a3[15];
  v63 = vadd_s16(v61, v19);
  v64 = vsub_s16(v61, v19);
  v65 = vadd_s16(v62, v18);
  v66 = vdupq_n_s32(-a2);
  v67 = vsub_s16(v62, v18);
  v68 = &unk_27753C810;
  v69 = 8;
  a3[14] = v63;
  a3[15] = v65;
  do
  {
    v70 = *v68[-2].i8;
    a1[v69] = vqmovn_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v24, *v70.i8, 1), v22, *v70.i8, 0), v28, *v70.i8, 2), v30, *v70.i8, 3), v34, v70, 4), v36, v70, 5), v40, v70, 6), v42, v70, 7), v46, *v68, 0), v48, *v68, 1), v52, *v68, 2), v54, *v68, 3), v58, *v68->i8, 4), v60, *v68->i8, 5), v64, *v68->i8, 6), v67, *v68->i8, 7), v66));
    v69 += 16;
    v68 += 4;
  }

  while (v69 != 264);

  return sub_2774F12D8(a1, 64, a2, a3);
}

int16x4_t sub_2774F12D8(int16x4_t *a1, uint64_t a2, int a3, int16x4_t *a4)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[4];
  v10 = a4[5];
  v11 = a4[8];
  v12 = a4[9];
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = a4[13];
  v17 = vsub_s16(*a4, v11);
  v18 = vsub_s16(v6, v12);
  v19 = vsub_s16(v7, v13);
  v20 = vsub_s16(v8, v14);
  v21 = vsub_s16(v9, v15);
  v22 = vsub_s16(v10, v16);
  v23 = a4[6];
  v24 = a4[7];
  v25 = a4[14];
  v26 = a4[15];
  v27 = vsub_s16(v23, v25);
  v28 = vsub_s16(v24, v26);
  v29 = 6 * a2;
  v30 = 8 * a2;
  v31 = 2 * a2;
  v32 = -2;
  v33 = &unk_27753C790;
  v34 = vdupq_n_s32(-a3);
  v35 = a1;
  do
  {
    v36 = *v33[-2].i8;
    v37 = vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v18, *v33, 1), v17, *v33, 0), v19, *v33, 2), v20, *v33, 3), v21, *v33->i8, 4), v22, *v33->i8, 5), v27, *v33->i8, 6), v28, *v33->i8, 7), v34);
    *(v35 + v31) = vqmovn_s32(vrshlq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v18, *v36.i8, 1), v17, *v36.i8, 0), v19, *v36.i8, 2), v20, *v36.i8, 3), v21, v36, 4), v22, v36, 5), v27, v36, 6), v28, v36, 7), v34));
    *(v35 + v29) = vqmovn_s32(v37);
    v32 += 2;
    v35 = (v35 + v30);
    v33 += 4;
  }

  while (v32 < 6);
  v38 = vadd_s16(v26, v24);
  v39 = vadd_s16(v25, v23);
  v40 = vadd_s16(v16, v10);
  v41 = vadd_s16(v15, v9);
  v42 = vadd_s16(v14, v8);
  v43 = vadd_s16(v13, v7);
  v44 = vadd_s16(v12, v6);
  v45 = vadd_s16(v11, v5);

  return sub_2774F13F8(a1, v31, a3, v45, v44, v43, v42, v41, v40, v39, v38);
}

int16x4_t sub_2774F13F8(int16x4_t *a1, uint64_t a2, int a3, int16x4_t a4, int16x4_t a5, int16x4_t a6, int16x4_t a7, int16x4_t a8, int16x4_t a9, int16x4_t a10, int16x4_t a11)
{
  v11 = vadd_s16(a8, a4);
  v12 = vsub_s16(a4, a8);
  v13 = vadd_s16(a9, a5);
  v14 = vsub_s16(a5, a9);
  v15 = vadd_s16(a10, a6);
  v16 = vsub_s16(a6, a10);
  v17 = vsub_s16(a7, a11);
  v18 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v14, 0x12001200120012), v12, 0x59005900590059), v16, 0x4B004B004B004BLL), v17, 0x32003200320032);
  v19 = vmlal_s16(vmlal_s16(vmull_s16(v14, 0x31003100310031), v12, 0x4B004B004B004BLL), v16, 0x11001100110011);
  v20 = vmlal_s16(vmull_s16(v14, 0x4B004B004B004BLL), v12, 0x32003200320032);
  v21 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v14, 0x58005800580058), v12, 0x12001200120012), v16, 0x31003100310031), v17, 0x4B004B004B004BLL);
  v22 = vdupq_n_s32(-a3);
  v23 = (a1 + 2 * a2);
  *v23 = vqmovn_s32(vrshlq_s32(v18, v22));
  v24 = 4 * a2;
  *(v23 + v24) = vqmovn_s32(vrshlq_s32(vmlal_s16(v19, v17, 0x58005800580058), v22));
  v23[a2] = vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v20, v16, 0x58005800580058), v17, 0x12001200120012), v22));
  v25 = 12 * a2;
  *(v23 + v25) = vqmovn_s32(vrshlq_s32(v21, v22));
  *v21.i8 = vadd_s16(a11, a7);
  v26 = vadd_s16(v13, v11);
  v27 = vsub_s16(v11, v13);
  v28 = vadd_s16(*v21.i8, v15);
  *v21.i8 = vsub_s16(v15, *v21.i8);
  v29 = vmlal_s16(vmull_s16(*v21.i8, 0x24002400240024), v27, 0x53005300530053);
  v30 = vmlsl_s16(vmull_s16(v27, 0x24002400240024), *v21.i8, 0x53005300530053);
  v31 = vaddl_s16(v28, v26);
  v32 = vqmovn_s32(vrshlq_s32(vshlq_n_s32(vsubl_s16(v26, v28), 6uLL), v22));
  *a1 = vqmovn_s32(vrshlq_s32(vshlq_n_s32(v31, 6uLL), v22));
  *(a1 + v24) = vqmovn_s32(vrshlq_s32(v29, v22));
  result = vqmovn_s32(vrshlq_s32(v30, v22));
  a1[a2] = v32;
  *(a1 + v25) = result;
  return result;
}

void sub_2774F1528(uint8x16_t *a1, uint64_t a2, uint8x16_t *a3, uint64_t a4, int16x4_t *a5)
{
  v11[65] = *MEMORY[0x277D85DE8];
  v6 = -2;
  v7 = a5;
  do
  {
    v8 = *(a1 + a2);
    v9 = *(a3 + a4);
    v10 = vsubl_high_u8(*a1, *a3);
    *v7 = vsubl_u8(*a1->i8, *a3->i8);
    v7[1] = v10;
    v7[2] = vsubl_u8(*v8.i8, *v9.i8);
    v7[3] = vsubl_high_u8(v8, v9);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 4;
    v6 += 2;
  }

  while (v6 < 0xE);
  sub_2774F15E8(v11, a5, 3);
  sub_2774F1738(a5, v11);
}

void sub_2774F15E8(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v50[16] = *MEMORY[0x277D85DE8];
  v6 = -4;
  do
  {
    v7 = a2[1];
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[8];
    v11 = a2[9];
    v12 = a2[12];
    v13 = a2[13];
    v14 = a2[2];
    v15 = a2[3];
    v16 = vtrn1_s16(*a2, v8);
    v17 = a2[6];
    v18 = a2[7];
    v19 = vtrn2_s16(*a2, v8);
    v20 = vtrn1_s16(v10, v12);
    v21 = vtrn2_s16(v10, v12);
    v22 = a2[10];
    v23 = a2[11];
    v24 = vzip1_s32(v16, v20);
    v25 = vzip2_s32(v16, v20);
    v26 = vzip1_s32(v19, v21);
    v27 = a2[14];
    v28 = a2[15];
    v29 = vzip2_s32(v19, v21);
    v30 = vtrn1_s16(v7, v9);
    v31 = vtrn2_s16(v7, v9);
    v32 = vtrn1_s16(v11, v13);
    v33 = vtrn2_s16(v11, v13);
    v34 = vzip1_s32(v30, v32);
    v35 = vzip2_s32(v30, v32);
    v36 = vzip1_s32(v31, v33);
    v37 = vzip2_s32(v31, v33);
    v38 = vtrn1_s16(v14, v17);
    v39 = vtrn2_s16(v14, v17);
    v40 = vtrn1_s16(v22, v27);
    v41 = vtrn2_s16(v22, v27);
    v42 = vzip1_s32(v38, v40);
    v43 = vzip2_s32(v38, v40);
    v44 = vzip1_s32(v39, v41);
    v45 = vzip2_s32(v39, v41);
    v46 = vtrn1_s16(v15, v18);
    v47 = vtrn2_s16(v15, v18);
    v48 = vtrn1_s16(v23, v28);
    v50[0] = v24;
    v50[1] = v29;
    v49 = vtrn2_s16(v23, v28);
    v50[2] = v26;
    v50[3] = v25;
    v50[4] = v37;
    v50[5] = v34;
    v50[6] = v35;
    v50[7] = v36;
    v50[8] = vzip2_s32(v47, v49);
    v50[9] = vzip1_s32(v46, v48);
    v50[10] = vzip2_s32(v46, v48);
    v50[11] = vzip1_s32(v47, v49);
    v50[12] = v42;
    v50[13] = v45;
    v50[14] = v44;
    v50[15] = v43;
    sub_2774F12D8(a1, 16, a3, v50);
    a2 += 16;
    ++a1;
    v6 += 4;
  }

  while (v6 < 0xC);
}

void sub_2774F1738(int16x4_t *a1, int16x4_t *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = -4;
  do
  {
    v5 = a2[1];
    v6 = a2[4];
    v7 = a2[5];
    v8 = vtrn1_s16(*a2, v6);
    v9 = vtrn2_s16(*a2, v6);
    v10 = a2[8];
    v11 = a2[9];
    v12 = a2[12];
    v13 = a2[13];
    v14 = vtrn1_s16(v10, v12);
    v15 = vtrn2_s16(v10, v12);
    v16 = vzip1_s32(v8, v14);
    v17 = vzip2_s32(v8, v14);
    v18 = vzip1_s32(v9, v15);
    v19 = vzip2_s32(v9, v15);
    v20 = vtrn1_s16(v5, v7);
    v21 = vtrn2_s16(v5, v7);
    v22 = vtrn1_s16(v11, v13);
    v23 = vtrn2_s16(v11, v13);
    v24 = vzip1_s32(v20, v22);
    v25 = vzip2_s32(v20, v22);
    v26 = vzip1_s32(v21, v23);
    v27 = a2[2];
    v28 = a2[3];
    v29 = a2[6];
    v30 = a2[7];
    v31 = a2[10];
    v32 = a2[11];
    v33 = vzip2_s32(v21, v23);
    v34 = vtrn1_s16(v27, v29);
    v35 = vtrn2_s16(v27, v29);
    v36 = a2[14];
    v37 = a2[15];
    v38 = vtrn1_s16(v31, v36);
    v39 = vtrn2_s16(v31, v36);
    v40 = vzip1_s32(v34, v38);
    v41 = vzip2_s32(v34, v38);
    v42 = vtrn1_s16(v28, v30);
    v43 = vtrn2_s16(v28, v30);
    v44 = vtrn1_s16(v32, v37);
    v46[0] = vmovl_s16(v16);
    v46[1] = vmovl_s16(v19);
    v45 = vtrn2_s16(v32, v37);
    v46[2] = vmovl_s16(v18);
    v46[3] = vmovl_s16(v17);
    v46[4] = vmovl_s16(v33);
    v46[5] = vmovl_s16(v24);
    v46[6] = vmovl_s16(v25);
    v46[7] = vmovl_s16(v26);
    v46[8] = vmovl_s16(vzip2_s32(v43, v45));
    v46[9] = vmovl_s16(vzip1_s32(v42, v44));
    v46[10] = vmovl_s16(vzip2_s32(v42, v44));
    v46[11] = vmovl_s16(vzip1_s32(v43, v45));
    v46[12] = vmovl_s16(v40);
    v46[13] = vmovl_s16(vzip2_s32(v35, v39));
    v46[14] = vmovl_s16(vzip1_s32(v35, v39));
    v46[15] = vmovl_s16(v41);
    sub_2774F0E6C(a1, 16, 10, v46);
    a2 += 16;
    ++a1;
    v4 += 4;
  }

  while (v4 < 0xC);
}

void sub_2774F18C4(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v17[17] = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = a5;
  do
  {
    v8 = v6;
    v9 = (a1 + a2 + a2);
    v10 = *v9;
    v11 = (v9 + a2);
    v12 = (a3 + a4 + a4);
    v13 = *v12;
    v14 = (v12 + a4);
    v15 = vsubl_u8(*(a1 + a2), *(a3 + a4));
    v16 = vsubl_u8(*v11, *v14);
    *v7 = vsubl_u8(*a1, *a3);
    v7[1] = v15;
    v7[2] = vsubl_u8(v10, v13);
    v7[3] = v16;
    v7 += 4;
    a1 = (v11 + a2);
    a3 = (v14 + a4);
    v6 = 0;
  }

  while ((v8 & 1) != 0);
  sub_2774F19A4(v17, a5, 2);
  sub_2774F1A4C(a5, v17);
}

void sub_2774F19A4(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v6 = 1;
  do
  {
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = vtrn1_s16(*a2, v8);
    v13 = vtrn2_s16(*a2, v8);
    v14 = a2[6];
    v15 = a2[7];
    v16 = vtrn1_s16(v10, v14);
    v17 = vtrn2_s16(v10, v14);
    v18 = v6;
    v19 = vzip1_s32(v12, v16);
    v20 = vzip2_s32(v12, v16);
    v21 = vzip1_s32(v13, v17);
    v22 = vzip2_s32(v13, v17);
    v23 = vtrn1_s16(v7, v9);
    v24 = vtrn2_s16(v7, v9);
    v25 = vtrn1_s16(v11, v15);
    v26 = vtrn2_s16(v11, v15);
    sub_2774F13F8(a1, 8, a3, v19, v22, v21, v20, vzip2_s32(v24, v26), vzip1_s32(v23, v25), vzip2_s32(v23, v25), vzip1_s32(v24, v26));
    v6 = 0;
    a2 += 8;
    ++a1;
  }

  while ((v18 & 1) != 0);
}

void sub_2774F1A4C(int16x4_t *a1, int16x4_t *a2)
{
  v4 = 1;
  do
  {
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[5];
    v10 = vtrn1_s16(*a2, v6);
    v11 = vtrn2_s16(*a2, v6);
    v12 = a2[6];
    v13 = a2[7];
    v14 = vtrn1_s16(v8, v12);
    v15 = vtrn2_s16(v8, v12);
    v16 = vzip1_s32(v10, v14);
    v17 = vzip2_s32(v10, v14);
    v18 = vzip1_s32(v11, v15);
    v19 = vzip2_s32(v11, v15);
    v20 = vtrn1_s16(v5, v7);
    v21 = vtrn2_s16(v5, v7);
    v22 = vtrn1_s16(v9, v13);
    v23 = vtrn2_s16(v9, v13);
    v24 = v4;
    sub_2774F102C(a1, 8, 9, vmovl_s16(v16), vmovl_s16(v19), vmovl_s16(v18), vmovl_s16(v17), vmovl_s16(vzip2_s32(v21, v23)), vmovl_s16(vzip1_s32(v20, v22)), vmovl_s16(vzip2_s32(v20, v22)), vmovl_s16(vzip1_s32(v21, v23)));
    v4 = 0;
    a2 += 8;
    ++a1;
  }

  while ((v24 & 1) != 0);
}

int16x4_t sub_2774F1B10(__int32 *a1, uint64_t a2, __int32 *a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6.i32[0] = *(a1 + 2 * a2);
  v6.i32[1] = *(a1 + 3 * a2);
  v7.i32[0] = *a3;
  v7.i32[1] = *(a3 + a4);
  v8.i32[0] = *(a3 + 2 * a4);
  v8.i32[1] = *(a3 + 3 * a4);
  v9 = vsubl_u8(v5, v7);
  v10 = vsubl_u8(v6, v8);
  *a5 = v9;
  *(a5 + 16) = v10;
  v11 = vtrn1_s16(*v9.i8, v9.u64[1]);
  *v9.i8 = vtrn2_s16(*v9.i8, v9.u64[1]);
  v12 = vtrn1_s16(*v10.i8, v10.u64[1]);
  *v10.i8 = vtrn2_s16(*v10.i8, v10.u64[1]);
  v13 = vzip1_s32(v11, v12);
  v14 = vzip2_s32(v11, v12);
  v15 = vzip1_s32(*v9.i8, *v10.i8);
  *v9.i8 = vzip2_s32(*v9.i8, *v10.i8);
  *v10.i8 = vadd_s16(*v9.i8, v13);
  *v9.i8 = vsub_s16(v13, *v9.i8);
  v16 = vadd_s16(v14, v15);
  v17 = vsub_s16(v15, v14);
  v19[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v16, *v10.i8), 6uLL), 1uLL));
  v19[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v17, 0x24002400240024), *v9.i8, 0x53005300530053), 1uLL));
  v19[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(*v10.i8, v16), 6uLL), 1uLL));
  v19[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(*v9.i8, 0x24002400240024), v17, 0x53005300530053), 1uLL));
  return sub_2774F1C40(a5, v19);
}

int16x4_t sub_2774F1C40(int16x4_t *a1, int16x4_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = vtrn1_s16(*a2, v2);
  v6 = vtrn2_s16(*a2, v2);
  v7 = vtrn1_s16(v3, v4);
  v8 = vtrn2_s16(v3, v4);
  v9 = vzip1_s32(v5, v7);
  v10 = vzip2_s32(v5, v7);
  v11 = vzip1_s32(v6, v8);
  v12 = vzip2_s32(v6, v8);
  v13 = vaddl_s16(v12, v9);
  v14 = vsubl_s16(v9, v12);
  v15 = vaddl_s16(v10, v11);
  v16 = vsubl_s16(v11, v10);
  v17.i64[0] = 0x5300000053;
  v17.i64[1] = 0x5300000053;
  v18.i64[0] = 0x2400000024;
  v18.i64[1] = 0x2400000024;
  v19 = vmulq_s32(v14, v18);
  v20 = vmlaq_s32(vmulq_s32(v16, v18), v14, v17);
  v14.i64[0] = 0x5200000052;
  v14.i64[1] = 0x5200000052;
  *a1 = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddq_s32(v15, v13), 6uLL), 8uLL));
  a1[1] = vqmovn_s32(vrshrq_n_s32(v20, 8uLL));
  result = vqmovn_s32(vrshrq_n_s32(vmlaq_s32(v19, v16, v14), 8uLL));
  a1[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubq_s32(v13, v15), 6uLL), 8uLL));
  a1[3] = result;
  return result;
}

int16x4_t sub_2774F1CD0(__int32 *a1, uint64_t a2, __int32 *a3, uint64_t a4, uint64_t a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v6.i32[0] = *a1;
  v6.i32[1] = *(a1 + a2);
  v7.i32[0] = *(a1 + 2 * a2);
  v7.i32[1] = *(a1 + 3 * a2);
  v8.i32[0] = *a3;
  v8.i32[1] = *(a3 + a4);
  v9.i32[0] = *(a3 + 2 * a4);
  v9.i32[1] = *(a3 + 3 * a4);
  *a5 = vsubl_u8(v6, v8);
  *(a5 + 16) = vsubl_u8(v7, v9);
  sub_2774F1D8C(v11, a5, 1);
  return sub_2774F1E30(a5, v11);
}

int16x4_t sub_2774F1D8C(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = vtrn1_s16(*a2, v3);
  v7 = vtrn2_s16(*a2, v3);
  v8 = vtrn1_s16(v4, v5);
  v9 = vtrn2_s16(v4, v5);
  v10 = vzip1_s32(v6, v8);
  v11 = vzip2_s32(v6, v8);
  v12 = vzip1_s32(v7, v9);
  v13 = vzip2_s32(v7, v9);
  v14 = vadd_s16(v10, v13);
  v15 = vadd_s16(v12, v13);
  v16 = vsub_s16(v10, v12);
  v17 = vmlal_s16(vmlal_s16(vmull_s16(v14, 0x1D001D001D001DLL), v11, 0x4A004A004A004ALL), v15, 0x37003700370037);
  v18 = vmlal_s16(vmlsl_s16(vmull_s16(v14, 0x37003700370037), v11, 0x4A004A004A004ALL), v16, 0x1D001D001D001DLL);
  v19 = vmlsl_s16(vmlal_s16(vmull_s16(v16, 0x37003700370037), v11, 0x4A004A004A004ALL), v15, 0x1D001D001D001DLL);
  v20 = vdupq_n_s32(-a3);
  *a1 = vqmovn_s32(vrshlq_s32(v17, v20));
  a1[1] = vqmovn_s32(vrshlq_s32(vmull_s16(vsub_s16(vadd_s16(v10, v12), v13), 0x4A004A004A004ALL), v20));
  result = vqmovn_s32(vrshlq_s32(v19, v20));
  a1[2] = vqmovn_s32(vrshlq_s32(v18, v20));
  a1[3] = result;
  return result;
}

int16x4_t sub_2774F1E30(int16x4_t *a1, int16x4_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = vtrn1_s16(*a2, v2);
  v6 = vtrn2_s16(*a2, v2);
  v7 = vtrn1_s16(v3, v4);
  v8 = vtrn2_s16(v3, v4);
  v9 = vzip1_s32(v5, v7);
  v10 = vzip2_s32(v5, v7);
  v11 = vzip1_s32(v6, v8);
  v12 = vzip2_s32(v6, v8);
  v13 = vaddl_s16(v9, v12);
  v14 = vaddl_s16(v11, v12);
  v15 = vsubl_s16(v9, v11);
  v16.i64[0] = 0x4A0000004ALL;
  v16.i64[1] = 0x4A0000004ALL;
  v17.i64[0] = 0x1D0000001DLL;
  v17.i64[1] = 0x1D0000001DLL;
  v18.i64[0] = 0x3700000037;
  v18.i64[1] = 0x3700000037;
  v19 = vmlaq_s32(vmlal_s16(vmulq_s32(v14, v18), v10, 0x4A004A004A004ALL), v13, v17);
  v20 = vmlaq_s32(vmlsl_s16(vmulq_s32(v15, v17), v10, 0x4A004A004A004ALL), v13, v18);
  v21 = vmulq_s32(v15, v18);
  v15.i64[0] = 0x1C0000001CLL;
  v15.i64[1] = 0x1C0000001CLL;
  *a1 = vqmovn_s32(vrshrq_n_s32(v19, 8uLL));
  a1[1] = vqmovn_s32(vrshrq_n_s32(vmulq_s32(vsubw_s16(vaddl_s16(v9, v11), v12), v16), 8uLL));
  result = vqmovn_s32(vrshrq_n_s32(vmlaq_s32(vmlal_s16(v21, v10, 0x4A004A004A004ALL), v14, v15), 8uLL));
  a1[2] = vqmovn_s32(vrshrq_n_s32(v20, 8uLL));
  a1[3] = result;
  return result;
}

uint16x8_t sub_2774F1ED4(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a1 + 2;
  v7 = a3 + 2;
  do
  {
    v8 = (a5 + v5);
    v9 = *v6[-2].i8;
    v10 = *v7[-2].i8;
    v11 = vsubl_u8(*v9.i8, *v10.i8);
    result = vsubl_high_u8(v9, v10);
    v13 = vsubl_u8(*v6, *v7);
    v14 = vsubl_high_u8(*v6->i8, *v7->i8);
    *v8 = v11;
    v8[1] = result;
    v8[2] = v13;
    v8[3] = v14;
    v5 += 64;
    v6 = (v6 + a2);
    v7 = (v7 + a4);
  }

  while (v5 != 2048);
  return result;
}

uint8x16_t *sub_2774F1F1C(uint8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, uint16x8_t *a5)
{
  v5 = -2;
  do
  {
    v6 = *(result + a2);
    v7 = *(a3 + a4);
    v8 = vsubl_high_u8(*result, *a3);
    *a5 = vsubl_u8(*result->i8, *a3->i8);
    a5[1] = v8;
    a5[2] = vsubl_u8(*v6.i8, *v7.i8);
    a5[3] = vsubl_high_u8(v6, v7);
    result = (result + 2 * a2);
    a3 = (a3 + 2 * a4);
    a5 += 4;
    v5 += 2;
  }

  while (v5 < 0xE);
  return result;
}

uint8x8_t *sub_2774F1F6C(uint8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint16x8_t *a5)
{
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (result + a2 + a2);
    v8 = *v7;
    v9 = (v7 + a2);
    v10 = (a3 + a4 + a4);
    v11 = *v10;
    v12 = (v10 + a4);
    v13 = vsubl_u8(*(result + a2), *(a3 + a4));
    v14 = vsubl_u8(*v9, *v12);
    *a5 = vsubl_u8(*result, *a3);
    a5[1] = v13;
    a5[2] = vsubl_u8(v8, v11);
    a5[3] = v14;
    a5 += 4;
    result = (v9 + a2);
    a3 = (v12 + a4);
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint16x8_t sub_2774F1FDC(__int32 *a1, uint64_t a2, __int32 *a3, uint64_t a4, uint16x8_t *a5)
{
  v5.i32[0] = *a1;
  v5.i32[1] = *(a1 + a2);
  v6.i32[0] = *(a1 + 2 * a2);
  v6.i32[1] = *(a1 + 3 * a2);
  v7.i32[0] = *a3;
  v7.i32[1] = *(a3 + a4);
  v8.i32[0] = *(a3 + 2 * a4);
  v8.i32[1] = *(a3 + 3 * a4);
  result = vsubl_u8(v5, v7);
  *a5 = result;
  a5[1] = vsubl_u8(v6, v8);
  return result;
}

uint64_t sub_2774F202C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F20C0;
  }

  else
  {
    v4 = sub_2774F2054;
  }

  return v4();
}

uint16x8_t *sub_2774F2054(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xFF00FF00FF00FFLL;
  v5.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v6 = (a3 + v3);
    v7 = *(a3 + v3);
    v8 = *(a3 + v3 + 16);
    v9 = *(a3 + v3 + 32);
    v10 = *(a3 + v3 + 48);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v11 = vminq_u16(vsqaddq_u16(v4[-1], v8), v5);
    v12 = vminq_u16(vsqaddq_u16(*v4, v9), v5);
    v13 = vminq_u16(vsqaddq_u16(v4[1], v10), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], v7), v5);
    v4[-1] = v11;
    *v4 = v12;
    v4[1] = v13;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint16x8_t *sub_2774F20C0(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xFF00FF00FF00FFLL;
  v5.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v6 = vminq_u16(vsqaddq_u16(v4[-1], *(a3 + v3 + 16)), v5);
    v7 = vminq_u16(vsqaddq_u16(*v4, *(a3 + v3 + 32)), v5);
    v8 = vminq_u16(vsqaddq_u16(v4[1], *(a3 + v3 + 48)), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], *(a3 + v3)), v5);
    v4[-1] = v6;
    *v4 = v7;
    v4[1] = v8;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint64_t sub_2774F2120(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F21B8;
  }

  else
  {
    v4 = sub_2774F2148;
  }

  return v4();
}

uint16x8_t *sub_2774F2148(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xFF00FF00FF00FFLL;
  v5.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = (result + v3);
    v11 = vminq_u16(vsqaddq_u16(result[1], v7), v5);
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v8), v5);
    v13 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), v9), v5);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v5);
    result[1] = v11;
    *v10 = v12;
    v10[1] = v13;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint16x8_t *sub_2774F21B8(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xFF00FF00FF00FFLL;
  v5.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v6 = (result + v3);
    v7 = vminq_u16(vsqaddq_u16(result[1], a3[1]), v5);
    v8 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[2]), v5);
    v9 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), a3[3]), v5);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v5);
    result[1] = v7;
    *v6 = v8;
    v6[1] = v9;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint64_t sub_2774F221C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F22CC;
  }

  else
  {
    v4 = sub_2774F2244;
  }

  return v4();
}

uint16x8_t *sub_2774F2244(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xFF00FF00FF00FFLL;
  v4.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v5 = v3;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v7), v4);
    v11 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v8), v4);
    v12 = vsqaddq_u16(*(result + 6 * a2), v9);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v4);
    *(result + 2 * a2) = v10;
    *(result + 4 * a2) = v11;
    *(result + 6 * a2) = vminq_u16(v12, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint16x8_t *sub_2774F22CC(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xFF00FF00FF00FFLL;
  v4.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v5 = v3;
    v6 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[1]), v4);
    v7 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), a3[2]), v4);
    v8 = vsqaddq_u16(*(result + 6 * a2), a3[3]);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v4);
    *(result + 2 * a2) = v6;
    *(result + 4 * a2) = v7;
    *(result + 6 * a2) = vminq_u16(v8, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

double sub_2774F2348(uint64_t *a1, uint64_t a2, int16x8_t *a3, char a4)
{
  v4 = (a1 + 2 * a2);
  v5.i64[0] = *a1;
  v5.i64[1] = *v4;
  v6 = (a1 + 6 * a2);
  v7.i64[0] = *(a1 + 4 * a2);
  v7.i64[1] = *v6;
  v8 = a3[1];
  v9.i64[0] = 0xFF00FF00FF00FFLL;
  v9.i64[1] = 0xFF00FF00FF00FFLL;
  v10 = vminq_u16(vsqaddq_u16(v5, *a3), v9);
  *a1 = v10.i64[0];
  *v4 = v10.i64[1];
  v11 = vminq_u16(vsqaddq_u16(v7, v8), v9);
  *(a1 + 4 * a2) = v11.i64[0];
  *v6 = v11.i64[1];
  if ((a4 & 1) == 0)
  {
    v11.i64[0] = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *v11.i64;
}

uint16x8_t *sub_2774F23A0(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
    a3->i16[0] = 0;
    v10 = result + 2;
    v11 = 32;
    v12.i64[0] = 0xFF00FF00FF00FFLL;
    v12.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v13 = vminq_u16(vsqaddq_u16(v10[-1], v9), v12);
      v14 = vminq_u16(vsqaddq_u16(*v10, v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v10[1], v9), v12);
      v10[-2] = vminq_u16(vsqaddq_u16(v10[-2], v9), v12);
      v10[-1] = v13;
      *v10 = v14;
      v10[1] = v15;
      v10 = (v10 + 2 * a2);
      --v11;
    }

    while (v11);
    if (a4)
    {
      v16 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v16 += 16;
      }

      while (v16 < 0x3F0);
    }
  }

  else
  {
    result = sub_2774EEC1C(a3, a5);
    v17 = 0;
    v18.i64[0] = 0xFF00FF00FF00FFLL;
    v18.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v19 = &v8[v17];
      v20 = -4;
      v21 = &v6[v17];
      do
      {
        v22 = *(v19 + 2 * a2);
        v23 = *v19;
        v24 = *(v19 + 4 * a2);
        v25 = *(v19 + 6 * a2);
        v26 = v21[4];
        v27 = v21[8];
        v28 = v21[12];
        v29 = vtrn1q_s16(*v21, v26);
        v30 = vtrn2q_s16(*v21, v26);
        v31 = vtrn1q_s16(v27, v28);
        v32 = vtrn2q_s16(v27, v28);
        v33 = vtrn1q_s32(v29, v31);
        v34 = vtrn2q_s32(v29, v31);
        v35 = vtrn1q_s32(v30, v32);
        v36 = vtrn2q_s32(v30, v32);
        if (a4)
        {
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v38 = vdupq_n_s16(v37);
        *v21 = vandq_s8(v33, v38);
        v21[4] = vandq_s8(v35, v38);
        v21[8] = vandq_s8(v34, v38);
        v21[12] = vandq_s8(v36, v38);
        *v19 = vminq_u16(vsqaddq_u16(v23, v33), v18);
        *(v19 + 2 * a2) = vminq_u16(vsqaddq_u16(v22, v35), v18);
        *(v19 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v18);
        *(v19 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v18);
        v19 = (v19 + 8 * a2);
        v21 += 16;
        v20 += 4;
      }

      while (v20 < 0x1C);
    }

    while (v17++ < 3);
  }

  return result;
}

int16x4_t *sub_2774F254C(int16x4_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
    a3->i16[0] = 0;
    v10 = 2 * a2;
    v11 = -2;
    v12.i64[0] = 0xFF00FF00FF00FFLL;
    v12.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v13 = (v8 + v10);
      v14 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v8[1], v9), v12);
      v16 = vminq_u16(vsqaddq_u16(*(&v8[1] + v10), v9), v12);
      *v8 = vminq_u16(vsqaddq_u16(*v8, v9), v12);
      *v13 = v14;
      v8[1] = v15;
      v13[1] = v16;
      v8 = (v8 + 4 * a2);
      v11 += 2;
    }

    while (v11 < 0xE);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0xF0);
    }
  }

  else
  {
    result = sub_2774EFEA4(a3, a5);
    v18 = 0;
    v19 = 1;
    v20.i64[0] = 0xFF00FF00FF00FFLL;
    v20.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v21 = v19;
      v22 = &v8[v18];
      v23 = -4;
      v24 = &v6[v18];
      do
      {
        v25 = *(v22 + 2 * a2);
        v26 = *v22;
        v27 = *(v22 + 4 * a2);
        v28 = *(v22 + 6 * a2);
        v29 = v24[2];
        v30 = v24[4];
        v31 = v24[6];
        v32 = vtrn1q_s16(*v24, v29);
        v33 = vtrn2q_s16(*v24, v29);
        v34 = vtrn1q_s16(v30, v31);
        v35 = vtrn2q_s16(v30, v31);
        v36 = vtrn1q_s32(v32, v34);
        v37 = vtrn2q_s32(v32, v34);
        v38 = vtrn1q_s32(v33, v35);
        v39 = vtrn2q_s32(v33, v35);
        if (a4)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s16(v40);
        *v24 = vandq_s8(v36, v41);
        v24[2] = vandq_s8(v38, v41);
        v24[4] = vandq_s8(v37, v41);
        v24[6] = vandq_s8(v39, v41);
        *v22 = vminq_u16(vsqaddq_u16(v26, v36), v20);
        *(v22 + 2 * a2) = vminq_u16(vsqaddq_u16(v25, v38), v20);
        *(v22 + 4 * a2) = vminq_u16(vsqaddq_u16(v27, v37), v20);
        *(v22 + 6 * a2) = vminq_u16(vsqaddq_u16(v28, v39), v20);
        v22 = (v22 + 8 * a2);
        v24 += 8;
        v23 += 4;
      }

      while (v23 < 0xC);
      v19 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

uint16x8_t *sub_2774F270C(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
    a3->i16[0] = 0;
    v10 = *(result + 14 * a2);
    v11.i64[0] = 0xFF00FF00FF00FFLL;
    v11.i64[1] = 0xFF00FF00FF00FFLL;
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v9), v11);
    v13 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v9), v11);
    v14 = vminq_u16(vsqaddq_u16(*(result + 6 * a2), v9), v11);
    v15 = vminq_u16(vsqaddq_u16(*(result + 8 * a2), v9), v11);
    v16 = vminq_u16(vsqaddq_u16(*(result + 10 * a2), v9), v11);
    v17 = vminq_u16(vsqaddq_u16(*(result + 12 * a2), v9), v11);
    *result = vminq_u16(vsqaddq_u16(*result, v9), v11);
    *(result + 2 * a2) = v12;
    *(result + 4 * a2) = v13;
    *(result + 6 * a2) = v14;
    *(result + 8 * a2) = v15;
    *(result + 10 * a2) = v16;
    *(result + 12 * a2) = v17;
    *(result + 14 * a2) = vminq_u16(vsqaddq_u16(v10, v9), v11);
    if (a4)
    {
      v18 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v18 += 16;
      }

      while (v18 < 0x30);
    }
  }

  else
  {
    result = sub_2774F0258(a3, a5);
    v19 = 1;
    v20.i64[0] = 0xFF00FF00FF00FFLL;
    v20.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v21 = v19;
      v22 = *v8;
      v23 = *(v8 + 2 * a2);
      v24 = *(v8 + 4 * a2);
      v25 = *(v8 + 6 * a2);
      v26 = v6[1];
      v27 = v6[2];
      v28 = v6[3];
      v29 = vtrn1q_s16(*v6, v26);
      v30 = vtrn2q_s16(*v6, v26);
      v31 = vtrn1q_s16(v27, v28);
      v32 = vtrn2q_s16(v27, v28);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vtrn2q_s32(v30, v32);
      if (a4)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s16(v37);
      *v6 = vandq_s8(v33, v38);
      v6[1] = vandq_s8(v35, v38);
      v6[2] = vandq_s8(v34, v38);
      v6[3] = vandq_s8(v36, v38);
      *v8 = vminq_u16(vsqaddq_u16(v22, v33), v20);
      *(v8 + 2 * a2) = vminq_u16(vsqaddq_u16(v23, v35), v20);
      *(v8 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v20);
      *(v8 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v20);
      v8 = (v8 + 8 * a2);
      v6 += 4;
      v19 = 0;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

void sub_2774F28F0(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v5 = a4;
  if (a5 != 1)
  {
    sub_2774F0480(a3, a5);
    v17 = (a1 + 2 * a2);
    v18.i64[0] = *a1;
    v18.i64[1] = *v17;
    v19 = (a1 + 6 * a2);
    v20.i64[0] = *(a1 + 4 * a2);
    v20.i64[1] = *v19;
    v21.i64[0] = 0xFF00FF00FF00FFLL;
    v21.i64[1] = 0xFF00FF00FF00FFLL;
    v22 = vminq_u16(vsqaddq_u16(v18, *a3), v21);
    v23 = vminq_u16(vsqaddq_u16(v20, a3[1]), v21);
    *a1 = v22.i64[0];
    *v17 = v22.i64[1];
    *(a1 + 4 * a2) = v23.i64[0];
    *v19 = v23.i64[1];
    if (v5)
    {
      return;
    }

    v9 = 0uLL;
    goto LABEL_6;
  }

  v9 = vdupq_n_s16((a3->i16[0] + 65) >> 7);
  a3->i16[0] = 0;
  v10 = (a1 + 2 * a2);
  v11.i64[0] = *a1;
  v11.i64[1] = *v10;
  v12 = (a1 + 6 * a2);
  v13.i64[0] = *(a1 + 4 * a2);
  v13.i64[1] = *v12;
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  v15 = vminq_u16(vsqaddq_u16(v11, v9), v14);
  v16 = vminq_u16(vsqaddq_u16(v13, v9), v14);
  *a1 = v15.i64[0];
  *v10 = v15.i64[1];
  *(a1 + 4 * a2) = v16.i64[0];
  *v12 = v16.i64[1];
  if (a4)
  {
LABEL_6:
    *a3 = v9;
    a3[1] = v9;
  }
}

double sub_2774F29EC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2774F05EC(a3);
  v8 = (a1 + 2 * a2);
  v9.i64[0] = *a1;
  v9.i64[1] = *v8;
  v10 = (a1 + 6 * a2);
  v11.i64[0] = *(a1 + 4 * a2);
  v11.i64[1] = *v10;
  v12.i64[0] = 0xFF00FF00FF00FFLL;
  v12.i64[1] = 0xFF00FF00FF00FFLL;
  v13 = vminq_u16(vsqaddq_u16(v9, *a3), v12);
  v14 = vminq_u16(vsqaddq_u16(v11, *(a3 + 16)), v12);
  *a1 = v13.i64[0];
  *v8 = v13.i64[1];
  *(a1 + 4 * a2) = v14.i64[0];
  *v10 = v14.i64[1];
  if ((a4 & 1) == 0)
  {
    v13.i64[0] = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *v13.i64;
}

void sub_2774F2A7C(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v6 = 0;
  v13[257] = *MEMORY[0x277D85DE8];
  v7 = a3 + 2;
  v8 = a1 + 2;
  do
  {
    v9 = vsubq_s16(v8[-1], v7[-1]);
    v10 = vsubq_s16(*v8, *v7);
    v11 = &a5[v6];
    v12 = vsubq_s16(v8[1], v7[1]);
    *v11 = vsubq_s16(v8[-2], v7[-2]);
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v6 += 8;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while ((v6 * 8) != 2048);
  sub_2774F077C(v13, a5, 4);
  sub_2774F09B8(a5, v13);
}

void sub_2774F2B40(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v13[65] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = -2;
  v9 = a5;
  do
  {
    v10 = vsubq_s16(a1[1], a3[1]);
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = vsubq_s16(*(&a1[1] + v6), *(&a3[1] + v7));
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v10;
    v9[2] = v11;
    v9[3] = v12;
    v9 += 4;
    v8 += 2;
    a1 = (a1 + v6 + v6);
    a3 = (a3 + v7 + v7);
  }

  while (v8 < 0xE);
  sub_2774F15E8(v13, a5, 3);
  sub_2774F1738(a5, v13);
}

void sub_2774F2C08(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v18[17] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = 1;
  v9 = a5;
  do
  {
    v10 = v8;
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = (a1 + v6 + v6);
    v13 = (a3 + v7 + v7);
    v14 = vsubq_s16(*v12, *v13);
    v15 = (v12 + v6);
    v16 = (v13 + v7);
    v17 = vsubq_s16(*v15, *v16);
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v11;
    v9[2] = v14;
    v9[3] = v17;
    v9 += 4;
    a1 = (v15 + v6);
    a3 = (v16 + v7);
    v8 = 0;
  }

  while ((v10 & 1) != 0);
  sub_2774F19A4(v18, a5, 2);
  sub_2774F1A4C(a5, v18);
}

int16x4_t sub_2774F2CF0(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v5 = vsub_s16(*a1, *a3);
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  v8 = vsub_s16(*(a1 + 6 * a2), *(a3 + 6 * a4));
  *a5 = v5;
  a5[1] = v6;
  a5[2] = v7;
  a5[3] = v8;
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vtrn1_s16(v7, v8);
  v12 = vtrn2_s16(v7, v8);
  v13 = vzip1_s32(v9, v11);
  v14 = vzip2_s32(v9, v11);
  v15 = vzip1_s32(v10, v12);
  v16 = vzip2_s32(v10, v12);
  v17 = vadd_s16(v16, v13);
  v18 = vsub_s16(v13, v16);
  v19 = vadd_s16(v14, v15);
  v20 = vsub_s16(v15, v14);
  v22[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v19, v17), 6uLL), 1uLL));
  v22[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v20, 0x24002400240024), v18, 0x53005300530053), 1uLL));
  v22[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v17, v19), 6uLL), 1uLL));
  v22[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v18, 0x24002400240024), v20, 0x53005300530053), 1uLL));
  return sub_2774F1C40(a5, v22);
}

int16x4_t sub_2774F2E18(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = *(a1 + 6 * a2);
  v8 = *(a3 + 6 * a4);
  v9 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v6;
  a5[2] = v9;
  a5[3] = vsub_s16(v7, v8);
  sub_2774F1D8C(v11, a5, 1);
  return sub_2774F1E30(a5, v11);
}

int16x8_t sub_2774F2EDC(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a3 + 2;
  v7 = a1 + 2;
  do
  {
    result = vsubq_s16(v7[-2], v6[-2]);
    v9 = vsubq_s16(v7[-1], v6[-1]);
    v10 = vsubq_s16(*v7, *v6);
    v11 = (a5 + v5);
    v12 = vsubq_s16(v7[1], v6[1]);
    *v11 = result;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v5 += 64;
    v6 = (v6 + 2 * a4);
    v7 = (v7 + 2 * a2);
  }

  while (v5 != 2048);
  return result;
}

int16x8_t *sub_2774F2F34(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = -2;
  do
  {
    v8 = vsubq_s16(result[1], a3[1]);
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = vsubq_s16(*(&result[1] + v5), *(&a3[1] + v6));
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
    a5 += 4;
    v7 += 2;
    result = (result + v5 + v5);
    a3 = (a3 + v6 + v6);
  }

  while (v7 < 0xE);
  return result;
}

int16x8_t *sub_2774F2F8C(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = (result + v5 + v5);
    v11 = (a3 + v6 + v6);
    v12 = vsubq_s16(*v10, *v11);
    v13 = (v10 + v5);
    v14 = (v11 + v6);
    v15 = vsubq_s16(*v13, *v14);
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v9;
    a5[2] = v12;
    a5[3] = v15;
    a5 += 4;
    result = (v13 + v5);
    a3 = (v14 + v6);
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

int16x4_t sub_2774F3004(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v5 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v6 = *(a1 + 6 * a2);
  v7 = *(a3 + 6 * a4);
  v8 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v5;
  result = vsub_s16(v6, v7);
  a5[2] = v8;
  a5[3] = result;
  return result;
}

uint64_t sub_2774F305C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F30F0;
  }

  else
  {
    v4 = sub_2774F3084;
  }

  return v4();
}

uint16x8_t *sub_2774F3084(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xFE00FE00FE00FE00;
  v5.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v6 = (a3 + v3);
    v7 = *(a3 + v3);
    v8 = *(a3 + v3 + 16);
    v9 = *(a3 + v3 + 32);
    v10 = *(a3 + v3 + 48);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v11 = vminq_u16(vsqaddq_u16(v4[-1], v8), v5);
    v12 = vminq_u16(vsqaddq_u16(*v4, v9), v5);
    v13 = vminq_u16(vsqaddq_u16(v4[1], v10), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], v7), v5);
    v4[-1] = v11;
    *v4 = v12;
    v4[1] = v13;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint16x8_t *sub_2774F30F0(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xFE00FE00FE00FE00;
  v5.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v6 = vminq_u16(vsqaddq_u16(v4[-1], *(a3 + v3 + 16)), v5);
    v7 = vminq_u16(vsqaddq_u16(*v4, *(a3 + v3 + 32)), v5);
    v8 = vminq_u16(vsqaddq_u16(v4[1], *(a3 + v3 + 48)), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], *(a3 + v3)), v5);
    v4[-1] = v6;
    *v4 = v7;
    v4[1] = v8;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint64_t sub_2774F3150(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F31E8;
  }

  else
  {
    v4 = sub_2774F3178;
  }

  return v4();
}

uint16x8_t *sub_2774F3178(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xFE00FE00FE00FE00;
  v5.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = (result + v3);
    v11 = vminq_u16(vsqaddq_u16(result[1], v7), v5);
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v8), v5);
    v13 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), v9), v5);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v5);
    result[1] = v11;
    *v10 = v12;
    v10[1] = v13;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint16x8_t *sub_2774F31E8(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xFE00FE00FE00FE00;
  v5.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v6 = (result + v3);
    v7 = vminq_u16(vsqaddq_u16(result[1], a3[1]), v5);
    v8 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[2]), v5);
    v9 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), a3[3]), v5);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v5);
    result[1] = v7;
    *v6 = v8;
    v6[1] = v9;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint64_t sub_2774F324C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F32FC;
  }

  else
  {
    v4 = sub_2774F3274;
  }

  return v4();
}

uint16x8_t *sub_2774F3274(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xFE00FE00FE00FE00;
  v4.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v5 = v3;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v7), v4);
    v11 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v8), v4);
    v12 = vsqaddq_u16(*(result + 6 * a2), v9);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v4);
    *(result + 2 * a2) = v10;
    *(result + 4 * a2) = v11;
    *(result + 6 * a2) = vminq_u16(v12, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint16x8_t *sub_2774F32FC(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xFE00FE00FE00FE00;
  v4.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v5 = v3;
    v6 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[1]), v4);
    v7 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), a3[2]), v4);
    v8 = vsqaddq_u16(*(result + 6 * a2), a3[3]);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v4);
    *(result + 2 * a2) = v6;
    *(result + 4 * a2) = v7;
    *(result + 6 * a2) = vminq_u16(v8, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

double sub_2774F3378(uint64_t *a1, uint64_t a2, int16x8_t *a3, char a4)
{
  v4 = (a1 + 2 * a2);
  v5.i64[0] = *a1;
  v5.i64[1] = *v4;
  v6 = (a1 + 6 * a2);
  v7.i64[0] = *(a1 + 4 * a2);
  v7.i64[1] = *v6;
  v8 = a3[1];
  v9.i64[0] = 0xFE00FE00FE00FE00;
  v9.i64[1] = 0xFE00FE00FE00FE00;
  v10 = vminq_u16(vsqaddq_u16(v5, *a3), v9);
  *a1 = v10.i64[0];
  *v4 = v10.i64[1];
  v11 = vminq_u16(vsqaddq_u16(v7, v8), v9);
  *(a1 + 4 * a2) = v11.i64[0];
  *v6 = v11.i64[1];
  if ((a4 & 1) == 0)
  {
    v11.i64[0] = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *v11.i64;
}

int16x8_t *sub_2774F33D0(int16x8_t *result)
{
  v1 = -16;
  do
  {
    v2 = vrshrq_n_s16(result[1], 3uLL);
    *result = vrshrq_n_s16(*result, 3uLL);
    result[1] = v2;
    result += 2;
    v1 += 16;
  }

  while (v1 < 0x30);
  return result;
}

int16x8_t sub_2774F33F4(int16x8_t *a1)
{
  result = vrshrq_n_s16(*a1, 4uLL);
  v2 = vrshrq_n_s16(a1[1], 4uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int16x8_t sub_2774F3408(int16x8_t *a1)
{
  result = vshlq_n_s16(*a1, 4uLL);
  v2 = vshlq_n_s16(a1[1], 4uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint16x8_t *sub_2774F341C(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 33) >> 6);
    a3->i16[0] = 0;
    v10 = result + 2;
    v11 = 32;
    v12.i64[0] = 0xFE00FE00FE00FE00;
    v12.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v13 = vminq_u16(vsqaddq_u16(v10[-1], v9), v12);
      v14 = vminq_u16(vsqaddq_u16(*v10, v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v10[1], v9), v12);
      v10[-2] = vminq_u16(vsqaddq_u16(v10[-2], v9), v12);
      v10[-1] = v13;
      *v10 = v14;
      v10[1] = v15;
      v10 = (v10 + 2 * a2);
      --v11;
    }

    while (v11);
    if (a4)
    {
      v16 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v16 += 16;
      }

      while (v16 < 0x3F0);
    }
  }

  else
  {
    result = sub_2774F35C8(a3, a5);
    v17 = 0;
    v18.i64[0] = 0xFE00FE00FE00FE00;
    v18.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v19 = &v8[v17];
      v20 = -4;
      v21 = &v6[v17];
      do
      {
        v22 = *(v19 + 2 * a2);
        v23 = *v19;
        v24 = *(v19 + 4 * a2);
        v25 = *(v19 + 6 * a2);
        v26 = v21[4];
        v27 = v21[8];
        v28 = v21[12];
        v29 = vtrn1q_s16(*v21, v26);
        v30 = vtrn2q_s16(*v21, v26);
        v31 = vtrn1q_s16(v27, v28);
        v32 = vtrn2q_s16(v27, v28);
        v33 = vtrn1q_s32(v29, v31);
        v34 = vtrn2q_s32(v29, v31);
        v35 = vtrn1q_s32(v30, v32);
        v36 = vtrn2q_s32(v30, v32);
        if (a4)
        {
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v38 = vdupq_n_s16(v37);
        *v21 = vandq_s8(v33, v38);
        v21[4] = vandq_s8(v35, v38);
        v21[8] = vandq_s8(v34, v38);
        v21[12] = vandq_s8(v36, v38);
        *v19 = vminq_u16(vsqaddq_u16(v23, v33), v18);
        *(v19 + 2 * a2) = vminq_u16(vsqaddq_u16(v22, v35), v18);
        *(v19 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v18);
        *(v19 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v18);
        v19 = (v19 + 8 * a2);
        v21 += 16;
        v20 += 4;
      }

      while (v20 < 0x1C);
    }

    while (v17++ < 3);
  }

  return result;
}

void *sub_2774F35C8(int16x4_t *a1, int a2)
{
  v2 = a1;
  if (a2 <= 16)
  {
    sub_2774EEE18(a1, 0x20u, &unk_27753CC20);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F37C4(v2, 0x20u, &unk_27753CC30);
      v8 += 4;
      v2 += 32;
    }

    while (v8 < 0x1C);
    return result;
  }

  if (a2 > 0x30)
  {
    if (a2 >= 0xA1)
    {
      v6 = -4;
      v7 = a1;
      do
      {
        sub_2774EF29C(v7);
        v6 += 4;
        ++v7;
      }

      while (v6 < 0x1C);
    }

    else
    {
      v4 = -4;
      v5 = a1;
      do
      {
        sub_2774EF08C(v5, 0x20u, &unk_27753CC60, aZwpf, aZzxurnic6);
        v4 += 4;
        ++v5;
      }

      while (v4 < 0xC);
    }
  }

  else
  {
    sub_2774EEEDC(a1, 0x20u, &unk_27753CC40, aZzxu);
    sub_2774EEEDC(v2 + 1, 0x20u, &unk_27753CC40, aZzxu);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 > 0x50)
  {
    if (a2 >= 0xE1)
    {
      v12 = -4;
      do
      {
        result = sub_2774F3C3C(v2);
        v12 += 4;
        v2 += 32;
      }

      while (v12 < 0x1C);
    }

    else
    {
      v11 = -4;
      do
      {
        result = sub_2774F3A38(v2, 0x20u, &unk_27753CC70, aZwpf, aZzxurnic6);
        v11 += 4;
        v2 += 32;
      }

      while (v11 < 0x1C);
    }
  }

  else
  {
    v10 = -4;
    do
    {
      result = sub_2774F38A4(v2, 0x20u, &unk_27753CC50, aZzxu);
      v10 += 4;
      v2 += 32;
    }

    while (v10 < 0x1C);
  }

  return result;
}

int16x4_t *sub_2774F37C4(int16x4_t *result, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 1;
  v4 = (&unk_27753CA30 + 4 * a2);
  v5 = *(result + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 6 * a2);
  v8 = vtrn1_s16(*result, v5);
  v9 = vtrn1_s16(v6, v7);
  v10 = vshll_n_s16(vzip1_s32(v8, v9), 6uLL);
  v11 = a2 >> 2;
  v12 = vtrn2_s16(*result, v5);
  v13 = vtrn2_s16(v6, v7);
  v14 = vzip2_s32(v12, v13);
  v15 = vzip1_s32(v12, v13);
  v16 = vzip2_s32(v8, v9);
  v17 = (a3 + 1);
  do
  {
    v18 = *v4++;
    v19 = vmlal_laneq_s16(v10, v16, v18, 4);
    v20 = vmlsl_laneq_s16(v10, v16, v18, 4);
    v21 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 1), v15, *v18.i8, 0);
    v22 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 3), v15, *v18.i8, 2);
    v23 = *(v17 - 1);
    v18.i32[0] = *v17;
    v17 += 2;
    result[v23] = vqrshrn_n_s32(vaddq_s32(v21, v19), 0xBuLL);
    result[v18.u32[0]] = vqrshrn_n_s32(vaddq_s32(v22, v20), 0xBuLL);
    *(result + 2 * (4 * (v3 - v23))) = vqrshrn_n_s32(vsubq_s32(v19, v21), 0xBuLL);
    *(result + 2 * (4 * (v3 - v18.i32[0]))) = vqrshrn_n_s32(vsubq_s32(v20, v22), 0xBuLL);
    --v11;
  }

  while (v11);
  return result;
}

int16x8_t *sub_2774F38A4(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4)
{
  v4 = a2 - 1;
  v5 = (&unk_27753CA30 + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 2 * a2);
  v8 = *(result + 6 * a2);
  v9 = vtrn1q_s16(*result, v7);
  v10 = vtrn2q_s16(*result, v7);
  v11 = vtrn1q_s16(v6, v8);
  v12 = vtrn2q_s16(v6, v8);
  v13 = vtrn1q_s32(v9, v11);
  v14 = vtrn2q_s32(v9, v11);
  v15 = vtrn1q_s32(v10, v12);
  v16 = vtrn2q_s32(v10, v12);
  v17 = vshll_n_s16(*v13.i8, 6uLL);
  v18 = a2 >> 3;
  v19 = (a3 + 3);
  do
  {
    v20 = *v5++;
    v21 = vmlal_high_laneq_s16(v17, v13, v20, 4);
    v22 = vmlsl_high_laneq_s16(v17, v13, v20, 4);
    v23 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 0), v14, *v20.i8, 1);
    v24 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 2), v14, *v20.i8, 3);
    v25 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *a4, 1), *v15.i8, *a4, 0), v15, *a4, 2), v16, *a4, 3);
    v26 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[1], 1), *v15.i8, a4[1], 0), v15, a4[1], 2), v16, a4[1], 3);
    v27 = a4[3];
    v28 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[2], 1), *v15.i8, a4[2], 0), v15, a4[2], 2), v16, a4[2], 3);
    v29 = vaddq_s32(v23, v21);
    v30 = vsubq_s32(v21, v23);
    v31 = *(v19 - 3);
    v32 = *(v19 - 2);
    v33 = *(v19 - 1);
    v20.i32[0] = *v19;
    v19 += 4;
    *&result->i8[8 * v31] = vqrshrn_n_s32(vaddq_s32(v25, v29), 0xBuLL);
    v34 = vaddq_s32(v24, v22);
    v35 = vsubq_s32(v22, v24);
    *&result->i8[8 * v32] = vqrshrn_n_s32(vaddq_s32(v26, v30), 0xBuLL);
    v36 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, v27, 1), *v15.i8, v27, 0), v15, v27, 2), v16, v27, 3);
    *&result->i8[8 * v33] = vqrshrn_n_s32(vaddq_s32(v28, v34), 0xBuLL);
    *&result->i8[8 * v20.u32[0]] = vqrshrn_n_s32(vaddq_s32(v36, v35), 0xBuLL);
    *&result->i8[8 * (v4 - v31)] = vqrshrn_n_s32(vsubq_s32(v29, v25), 0xBuLL);
    *&result->i8[8 * (v4 - v32)] = vqrshrn_n_s32(vsubq_s32(v30, v26), 0xBuLL);
    *&result->i8[8 * (v4 - v33)] = vqrshrn_n_s32(vsubq_s32(v34, v28), 0xBuLL);
    *&result->i8[8 * (v4 - v20.i32[0])] = vqrshrn_n_s32(vsubq_s32(v35, v36), 0xBuLL);
    a4 += 4;
    --v18;
  }

  while (v18);
  return result;
}

int16x8_t *sub_2774F3A38(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4, int16x4_t *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = (result + 2 * a2);
  v6 = (result + 4 * a2);
  v7 = (result + 6 * a2);
  v8 = result[1];
  v9 = v5[1];
  v10 = v6[1];
  v11 = v7[1];
  v12 = vtrn1q_s16(*result, *v5);
  v13 = vtrn2q_s16(*result, *v5);
  v14 = vtrn1q_s16(*v6, *v7);
  v15 = vtrn2q_s16(*v6, *v7);
  v16 = vtrn1q_s32(v12, v14);
  v17 = vtrn2q_s32(v12, v14);
  v18 = vtrn1q_s32(v13, v15);
  v19 = vtrn2q_s32(v13, v15);
  v20 = vtrn1q_s16(v8, v9);
  v21 = vtrn2q_s16(v8, v9);
  v22 = vtrn1q_s16(v10, v11);
  v23 = vtrn2q_s16(v10, v11);
  v24 = vtrn1q_s32(v20, v22);
  v25 = vtrn2q_s32(v20, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a2 >> 1;
  v29 = (&unk_27753CA30 + 2 * v28);
  v30 = vshll_n_s16(*v16.i8, 6uLL);
  v31 = a2 >> 4;
  v32 = v51;
  do
  {
    v33 = *v29++;
    v34 = vmlal_laneq_s16(v30, *v24.i8, v33, 4);
    v35 = vmlsl_laneq_s16(v30, *v24.i8, v33, 4);
    v36 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 1), v16, *v33.i8, 0);
    v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 3), v16, *v33.i8, 2);
    v38 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, *a4, 0), v17, *a4, 1), *v25.i8, *a4, 2), v25, *a4, 3);
    v39 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[1], 0), v17, a4[1], 1), *v25.i8, a4[1], 2), v25, a4[1], 3);
    v40 = a4[3];
    v41 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[2], 0), v17, a4[2], 1), *v25.i8, a4[2], 2), v25, a4[2], 3);
    v42 = vaddq_s32(v36, v34);
    v43 = vsubq_s32(v34, v36);
    v44 = vaddq_s32(v37, v35);
    v45 = vsubq_s32(v35, v37);
    *v32 = vaddq_s32(v38, v42);
    v32[1] = vaddq_s32(v39, v43);
    v46 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, v40, 0), v17, v40, 1), *v25.i8, v40, 2), v25, v40, 3);
    v32[2] = vaddq_s32(v41, v44);
    v32[3] = vaddq_s32(v46, v45);
    v32[4] = vsubq_s32(v42, v38);
    v32[5] = vsubq_s32(v43, v39);
    v32[6] = vsubq_s32(v44, v41);
    v32[7] = vsubq_s32(v45, v46);
    v32 += 8;
    a4 += 4;
    --v31;
  }

  while (v31);
  v47 = 0;
  do
  {
    v48 = v51[v47];
    v49 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v19.i8, *a5, 1), *v18.i8, *a5, 0), v18, *a5, 2), v19, *a5, 3), *v26.i8, *a5->i8, 4), *v27.i8, *a5->i8, 5), v26, *a5->i8, 6), v27, *a5->i8, 7);
    v50 = 4 * (~*(a3 + v47) + a2);
    *&result->i8[8 * *(a3 + v47)] = vqrshrn_n_s32(vaddq_s32(v49, v48), 0xBuLL);
    *&result->i8[2 * v50] = vqrshrn_n_s32(vsubq_s32(v48, v49), 0xBuLL);
    ++v47;
    a5 = (a5 + 2 * v28);
  }

  while (v28 != v47);
  return result;
}

int16x4_t *sub_2774F3C3C(int16x4_t *result)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = &result[16];
  v2 = -8;
  do
  {
    v3 = v1[-8];
    v4 = v1[-4];
    v5 = v1[4];
    v6 = vtrn1q_s16(v3, v4);
    v7 = vtrn2q_s16(v3, v4);
    v8 = vtrn1q_s16(*v1, v5);
    v9 = vtrn2q_s16(*v1, v5);
    v1[-8] = vtrn1q_s32(v6, v8);
    v1[-4] = vtrn1q_s32(v7, v9);
    *v1 = vtrn2q_s32(v6, v8);
    v1[4] = vtrn2q_s32(v7, v9);
    v2 += 8;
    ++v1;
  }

  while (v2 < 0x18);
  v10 = 0;
  v11 = result[1];
  v12 = result[2];
  v13 = result[3];
  v15 = result[4];
  v14 = result[5];
  v17 = result[6];
  v16 = result[7];
  v18 = vshll_n_s16(*result, 6uLL);
  v19 = vmlal_s16(v18, v15, 0x40004000400040);
  v20 = vmlsl_s16(v18, v15, 0x40004000400040);
  v21 = vmlal_s16(vmull_s16(v17, 0x24002400240024), v12, 0x53005300530053);
  v22 = vmlal_s16(vmull_s16(v17, 0x52005200520052), v12, 0x24002400240024);
  v23 = vaddq_s32(v21, v19);
  v24 = vsubq_s32(v19, v21);
  v25 = vaddq_s32(v22, v20);
  v26 = vsubq_s32(v20, v22);
  v27 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x4B004B004B004BLL), v11, 0x59005900590059), v14, 0x32003200320032), v16, 0x12001200120012);
  v28 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x31003100310031), v11, 0x12001200120012), v14, 0x4B004B004B004BLL), v16, 0x58005800580058);
  v29 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x11001100110011), v11, 0x4B004B004B004BLL), v14, 0x58005800580058), v16, 0x31003100310031);
  v66[0] = vaddq_s32(v27, v23);
  v66[1] = vaddq_s32(v28, v24);
  v30 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x58005800580058), v11, 0x32003200320032), v14, 0x12001200120012), v16, 0x4B004B004B004BLL);
  v66[2] = vaddq_s32(v29, v25);
  v66[3] = vaddq_s32(v30, v26);
  v66[4] = vsubq_s32(v23, v27);
  v66[5] = vsubq_s32(v24, v28);
  v66[6] = vsubq_s32(v25, v29);
  v66[7] = vsubq_s32(v26, v30);
  v31 = result[16];
  v32 = result[17];
  v33 = result[18];
  v34 = result[19];
  v35 = result[20];
  v36 = result[21];
  v37 = result[22];
  v38 = result[23];
  do
  {
    v39 = &v66[v10 / 8];
    v40 = v66[v10 / 8];
    v41 = *&aZwpf9[v10];
    v42 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v32, *v41.i8, 1), v31, *v41.i8, 0), v33, *v41.i8, 2), v34, *v41.i8, 3), v35, v41, 4), v36, v41, 5), v37, v41, 6), v38, v41, 7);
    *v39 = vaddq_s32(v42, v40);
    v39[8] = vsubq_s32(v40, v42);
    v10 += 8;
  }

  while (v10 != 64);
  v43 = 0;
  v44 = result[8];
  v45 = result[9];
  v46 = result[24];
  v47 = result[25];
  v48 = result[10];
  v49 = result[11];
  v50 = result[26];
  v51 = result[27];
  v52 = result[12];
  v53 = result[13];
  v54 = result[28];
  v55 = result[29];
  v56 = aZzxurnic6;
  v57 = result[14];
  v58 = result[15];
  v59 = result[30];
  v60 = result[31];
  do
  {
    v62 = *v56;
    v61 = *(v56 + 1);
    v56 += 16;
    v63 = v66[byte_27753CF00[v43]];
    v64 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v46, *v62.i8, 1), v44, *v62.i8, 0), v45, *v62.i8, 2), v47, *v62.i8, 3), v48, v62, 4), v50, v62, 5), v49, v62, 6), v51, v62, 7), v52, *v61.i8, 0), v54, *v61.i8, 1), v53, *v61.i8, 2), v55, *v61.i8, 3), v57, v61, 4), v59, v61, 5), v58, v61, 6), v60, v61, 7);
    v65 = 124 - 4 * *(&unk_27753CC20 + v43 + 80);
    result[*(&unk_27753CC20 + v43 + 80)] = vqrshrn_n_s32(vaddq_s32(v64, v63), 0xBuLL);
    *(result + 2 * v65) = vqrshrn_n_s32(vsubq_s32(v63, v64), 0xBuLL);
    ++v43;
  }

  while (v43 != 16);
  return result;
}

int16x4_t *sub_2774F3EF4(int16x4_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 33) >> 6);
    a3->i16[0] = 0;
    v10 = 2 * a2;
    v11 = -2;
    v12.i64[0] = 0xFE00FE00FE00FE00;
    v12.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v13 = (v8 + v10);
      v14 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v8[1], v9), v12);
      v16 = vminq_u16(vsqaddq_u16(*(&v8[1] + v10), v9), v12);
      *v8 = vminq_u16(vsqaddq_u16(*v8, v9), v12);
      *v13 = v14;
      v8[1] = v15;
      v13[1] = v16;
      v8 = (v8 + 4 * a2);
      v11 += 2;
    }

    while (v11 < 0xE);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0xF0);
    }
  }

  else
  {
    result = sub_2774F40B4(a3, a5);
    v18 = 0;
    v19 = 1;
    v20.i64[0] = 0xFE00FE00FE00FE00;
    v20.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v21 = v19;
      v22 = &v8[v18];
      v23 = -4;
      v24 = &v6[v18];
      do
      {
        v25 = *(v22 + 2 * a2);
        v26 = *v22;
        v27 = *(v22 + 4 * a2);
        v28 = *(v22 + 6 * a2);
        v29 = v24[2];
        v30 = v24[4];
        v31 = v24[6];
        v32 = vtrn1q_s16(*v24, v29);
        v33 = vtrn2q_s16(*v24, v29);
        v34 = vtrn1q_s16(v30, v31);
        v35 = vtrn2q_s16(v30, v31);
        v36 = vtrn1q_s32(v32, v34);
        v37 = vtrn2q_s32(v32, v34);
        v38 = vtrn1q_s32(v33, v35);
        v39 = vtrn2q_s32(v33, v35);
        if (a4)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s16(v40);
        *v24 = vandq_s8(v36, v41);
        v24[2] = vandq_s8(v38, v41);
        v24[4] = vandq_s8(v37, v41);
        v24[6] = vandq_s8(v39, v41);
        *v22 = vminq_u16(vsqaddq_u16(v26, v36), v20);
        *(v22 + 2 * a2) = vminq_u16(vsqaddq_u16(v25, v38), v20);
        *(v22 + 4 * a2) = vminq_u16(vsqaddq_u16(v27, v37), v20);
        *(v22 + 6 * a2) = vminq_u16(vsqaddq_u16(v28, v39), v20);
        v22 = (v22 + 8 * a2);
        v24 += 8;
        v23 += 4;
      }

      while (v23 < 0xC);
      v19 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F40B4(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 33) >> 6);
    v4 = -32;
    do
    {
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 += 32;
    }

    while (v4 < 0xE0);
    return result;
  }

  if (a2 <= 16)
  {
    sub_2774EEE18(result, 0x10u, &unk_27753CB30);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F37C4(v2, 0x10u, &unk_27753CC10);
      v8 += 4;
      v2 += 16;
    }

    while (v8 < 0xC);
    return result;
  }

  if (a2 >= 0x31)
  {
    v6 = -4;
    v7 = result;
    do
    {
      sub_2774EF08C(v7, 0x10u, &unk_27753CB80, aYk2, aZwpf9);
      v6 += 4;
      ++v7;
    }

    while (v6 < 0xC);
  }

  else
  {
    sub_2774EEEDC(result, 0x10u, &unk_27753CB30, aZwpf);
    sub_2774EEEDC(v2 + 1, 0x10u, &unk_27753CB30, aZwpf);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 >= 0x51)
  {
    v10 = -4;
    do
    {
      result = sub_2774F3A38(v2, 0x10u, &unk_27753CC18, aYk2, aZwpf9);
      v10 += 4;
      v2 += 16;
    }

    while (v10 < 0xC);
  }

  else
  {
    v9 = -4;
    do
    {
      result = sub_2774F38A4(v2, 0x10u, &unk_27753CC10, aZwpf);
      v9 += 4;
      v2 += 16;
    }

    while (v9 < 0xC);
  }

  return result;
}

uint16x8_t *sub_2774F4294(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 33) >> 6);
    a3->i16[0] = 0;
    v10 = *(result + 14 * a2);
    v11.i64[0] = 0xFE00FE00FE00FE00;
    v11.i64[1] = 0xFE00FE00FE00FE00;
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v9), v11);
    v13 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v9), v11);
    v14 = vminq_u16(vsqaddq_u16(*(result + 6 * a2), v9), v11);
    v15 = vminq_u16(vsqaddq_u16(*(result + 8 * a2), v9), v11);
    v16 = vminq_u16(vsqaddq_u16(*(result + 10 * a2), v9), v11);
    v17 = vminq_u16(vsqaddq_u16(*(result + 12 * a2), v9), v11);
    *result = vminq_u16(vsqaddq_u16(*result, v9), v11);
    *(result + 2 * a2) = v12;
    *(result + 4 * a2) = v13;
    *(result + 6 * a2) = v14;
    *(result + 8 * a2) = v15;
    *(result + 10 * a2) = v16;
    *(result + 12 * a2) = v17;
    *(result + 14 * a2) = vminq_u16(vsqaddq_u16(v10, v9), v11);
    if (a4)
    {
      v18 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v18 += 16;
      }

      while (v18 < 0x30);
    }
  }

  else
  {
    result = sub_2774F4478(a3, a5);
    v19 = 1;
    v20.i64[0] = 0xFE00FE00FE00FE00;
    v20.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v21 = v19;
      v22 = *v8;
      v23 = *(v8 + 2 * a2);
      v24 = *(v8 + 4 * a2);
      v25 = *(v8 + 6 * a2);
      v26 = v6[1];
      v27 = v6[2];
      v28 = v6[3];
      v29 = vtrn1q_s16(*v6, v26);
      v30 = vtrn2q_s16(*v6, v26);
      v31 = vtrn1q_s16(v27, v28);
      v32 = vtrn2q_s16(v27, v28);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vtrn2q_s32(v30, v32);
      if (a4)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s16(v37);
      *v6 = vandq_s8(v33, v38);
      v6[1] = vandq_s8(v35, v38);
      v6[2] = vandq_s8(v34, v38);
      v6[3] = vandq_s8(v36, v38);
      *v8 = vminq_u16(vsqaddq_u16(v22, v33), v20);
      *(v8 + 2 * a2) = vminq_u16(vsqaddq_u16(v23, v35), v20);
      *(v8 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v20);
      *(v8 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v20);
      v8 = (v8 + 8 * a2);
      v6 += 4;
      v19 = 0;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F4478(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 33) >> 6);
    v4 = 1;
    do
    {
      v5 = v4;
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  else if (a2 > 16)
  {
    sub_2774EEEDC(result, 8u, &unk_27753CA00, aYk2);
    sub_2774EEEDC(v2 + 1, 8u, &unk_27753CA00, aYk2);
    sub_2774F38A4(v2, 8u, &unk_27753CA00, aYk2);

    return sub_2774F38A4(&v2[8], 8u, &unk_27753CA00, aYk2);
  }

  else
  {
    sub_2774EEE18(result, 8u, &unk_27753CA00);
    sub_2774F37C4(v2, 8u, &unk_27753CA00);

    return sub_2774F37C4(v2 + 8, 8u, &unk_27753CA00);
  }

  return result;
}

void sub_2774F45A4(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v5 = a4;
  if (a5 != 1)
  {
    sub_2774F46A0(a3, a5);
    v17 = (a1 + 2 * a2);
    v18.i64[0] = *a1;
    v18.i64[1] = *v17;
    v19 = (a1 + 6 * a2);
    v20.i64[0] = *(a1 + 4 * a2);
    v20.i64[1] = *v19;
    v21.i64[0] = 0xFE00FE00FE00FE00;
    v21.i64[1] = 0xFE00FE00FE00FE00;
    v22 = vminq_u16(vsqaddq_u16(v18, *a3), v21);
    v23 = vminq_u16(vsqaddq_u16(v20, a3[1]), v21);
    *a1 = v22.i64[0];
    *v17 = v22.i64[1];
    *(a1 + 4 * a2) = v23.i64[0];
    *v19 = v23.i64[1];
    if (v5)
    {
      return;
    }

    v9 = 0uLL;
    goto LABEL_6;
  }

  v9 = vdupq_n_s16((a3->i16[0] + 33) >> 6);
  a3->i16[0] = 0;
  v10 = (a1 + 2 * a2);
  v11.i64[0] = *a1;
  v11.i64[1] = *v10;
  v12 = (a1 + 6 * a2);
  v13.i64[0] = *(a1 + 4 * a2);
  v13.i64[1] = *v12;
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  v15 = vminq_u16(vsqaddq_u16(v11, v9), v14);
  v16 = vminq_u16(vsqaddq_u16(v13, v9), v14);
  *a1 = v15.i64[0];
  *v10 = v15.i64[1];
  *(a1 + 4 * a2) = v16.i64[0];
  *v12 = v16.i64[1];
  if (a4)
  {
LABEL_6:
    *a3 = v9;
    a3[1] = v9;
  }
}

int32x4_t sub_2774F46A0(int32x4_t *a1, int a2)
{
  if (a2 == 1)
  {
    result = vdupq_n_s16((a1->i16[0] + 33) >> 6);
    *a1 = result;
    a1[1] = result;
  }

  else
  {
    v3 = a1->u64[1];
    v4 = *a1[1].i8;
    v5 = a1[1].u64[1];
    v6 = vsubl_s16(*a1->i8, v4);
    v7 = vshlq_n_s32(vaddl_s16(v4, *a1->i8), 6uLL);
    v8 = vshlq_n_s32(v6, 6uLL);
    v9 = vmlal_s16(vmull_s16(v5, 0x24002400240024), v3, 0x53005300530053);
    v10 = vmlsl_s16(vmull_s16(v3, 0x24002400240024), v5, 0x53005300530053);
    v11 = vqrshrn_n_s32(vaddq_s32(v9, v7), 7uLL);
    *v7.i8 = vqrshrn_n_s32(vsubq_s32(v7, v9), 7uLL);
    v12 = vqrshrn_n_s32(vaddq_s32(v10, v8), 7uLL);
    *v8.i8 = vqrshrn_n_s32(vsubq_s32(v8, v10), 7uLL);
    *v10.i8 = vtrn1_s16(v11, v12);
    v13 = vtrn2_s16(v11, v12);
    v14 = vtrn1_s16(*v8.i8, *v7.i8);
    *v8.i8 = vtrn2_s16(*v8.i8, *v7.i8);
    *v7.i8 = vzip1_s32(*v10.i8, v14);
    v15 = vzip2_s32(*v10.i8, v14);
    *v10.i8 = vzip1_s32(v13, *v8.i8);
    *v8.i8 = vzip2_s32(v13, *v8.i8);
    v16 = vshlq_n_s32(vaddl_s16(*v7.i8, v15), 6uLL);
    v17 = vshlq_n_s32(vsubl_s16(*v7.i8, v15), 6uLL);
    v18 = vmlal_s16(vmull_s16(*v8.i8, 0x24002400240024), *v10.i8, 0x53005300530053);
    v19 = vmlsl_s16(vmull_s16(*v10.i8, 0x24002400240024), *v8.i8, 0x53005300530053);
    result = vaddq_s32(v16, v18);
    v20.val[0] = vqrshrn_n_s32(result, 0xBuLL);
    v20.val[3] = vqrshrn_n_s32(vsubq_s32(v16, v18), 0xBuLL);
    v20.val[1] = vqrshrn_n_s32(vaddq_s32(v17, v19), 0xBuLL);
    v20.val[2] = vqrshrn_n_s32(vsubq_s32(v17, v19), 0xBuLL);
    vst4_s16(a1->i16, v20);
  }

  return result;
}

double sub_2774F4778(uint64_t *a1, uint64_t a2, int16x4_t *a3, char a4)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = vaddl_s16(v5, *a3);
  v8 = vaddl_s16(v6, v5);
  v9 = vsubl_s16(*a3, v6);
  v10.i64[0] = 0x1D0000001DLL;
  v10.i64[1] = 0x1D0000001DLL;
  v11.i64[0] = 0x3700000037;
  v11.i64[1] = 0x3700000037;
  v12 = vmlaq_s32(vmlal_s16(vmulq_s32(v7, v10), v4, 0x4A004A004A004ALL), v8, v11);
  v13 = vmlaq_s32(vmlsl_s16(vmulq_s32(v7, v11), v4, 0x4A004A004A004ALL), v9, v10);
  v14.i64[0] = 0x1C0000001CLL;
  v14.i64[1] = 0x1C0000001CLL;
  v15 = vmlaq_s32(vmlal_s16(vmulq_s32(v9, v11), v4, 0x4A004A004A004ALL), v8, v14);
  v16.i64[0] = 0x4A0000004ALL;
  v16.i64[1] = 0x4A0000004ALL;
  v17 = vmulq_s32(vaddw_s16(vsubl_s16(*a3, v5), v6), v16);
  v18 = vqrshrn_n_s32(v12, 7uLL);
  v19 = vqrshrn_n_s32(v15, 7uLL);
  *v17.i8 = vqrshrn_n_s32(v17, 7uLL);
  *v13.i8 = vqrshrn_n_s32(v13, 7uLL);
  *v8.i8 = vtrn1_s16(v18, v19);
  v20 = vtrn2_s16(v18, v19);
  v21 = vtrn1_s16(*v17.i8, *v13.i8);
  *v17.i8 = vtrn2_s16(*v17.i8, *v13.i8);
  *v13.i8 = vzip1_s32(*v8.i8, v21);
  v22 = vzip2_s32(*v8.i8, v21);
  *v8.i8 = vzip1_s32(v20, *v17.i8);
  *v17.i8 = vzip2_s32(v20, *v17.i8);
  v23 = vaddl_s16(*v13.i8, v22);
  v24 = vaddl_s16(v22, *v17.i8);
  v25 = vsubl_s16(*v13.i8, *v17.i8);
  v26 = vmlaq_s32(vmlal_s16(vmulq_s32(v24, v11), *v8.i8, 0x4A004A004A004ALL), v23, v10);
  v27 = vmlaq_s32(vmlsl_s16(vmulq_s32(v25, v10), *v8.i8, 0x4A004A004A004ALL), v23, v11);
  v28 = vmulq_s32(vaddw_s16(vsubl_s16(*v13.i8, v22), *v17.i8), v16);
  v29 = vqrshrn_n_s32(v26, 0xBuLL);
  *v13.i8 = vqrshrn_n_s32(vmlaq_s32(vmlal_s16(vmulq_s32(v25, v11), *v8.i8, 0x4A004A004A004ALL), v24, v14), 0xBuLL);
  *v8.i8 = vqrshrn_n_s32(v28, 0xBuLL);
  *v24.i8 = vqrshrn_n_s32(v27, 0xBuLL);
  vst4_s16(a3, *(&v8 - 1));
  v30 = (a1 + 2 * a2);
  v28.i64[0] = *a1;
  v28.i64[1] = *v30;
  v31 = (a1 + 6 * a2);
  v16.i64[0] = *(a1 + 4 * a2);
  v16.i64[1] = *v31;
  v32 = *a3[2].i8;
  v23.i64[0] = 0xFE00FE00FE00FE00;
  v23.i64[1] = 0xFE00FE00FE00FE00;
  v33 = vminq_u16(vsqaddq_u16(v28, *a3->i8), v23);
  *a1 = v33.i64[0];
  *v30 = v33.i64[1];
  v34 = vminq_u16(vsqaddq_u16(v16, v32), v23);
  *(a1 + 4 * a2) = v34.i64[0];
  *v31 = v34.i64[1];
  if ((a4 & 1) == 0)
  {
    v34.i64[0] = 0;
    *a3->i8 = 0u;
    *a3[2].i8 = 0u;
  }

  return *v34.i64;
}

void sub_2774F48A8(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v6 = 0;
  v13[257] = *MEMORY[0x277D85DE8];
  v7 = a3 + 2;
  v8 = a1 + 2;
  do
  {
    v9 = vsubq_s16(v8[-1], v7[-1]);
    v10 = vsubq_s16(*v8, *v7);
    v11 = &a5[v6];
    v12 = vsubq_s16(v8[1], v7[1]);
    *v11 = vsubq_s16(v8[-2], v7[-2]);
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v6 += 8;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while ((v6 * 8) != 2048);
  sub_2774F077C(v13, a5, 5);
  sub_2774F09B8(a5, v13);
}

void sub_2774F496C(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v13[65] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = -2;
  v9 = a5;
  do
  {
    v10 = vsubq_s16(a1[1], a3[1]);
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = vsubq_s16(*(&a1[1] + v6), *(&a3[1] + v7));
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v10;
    v9[2] = v11;
    v9[3] = v12;
    v9 += 4;
    v8 += 2;
    a1 = (a1 + v6 + v6);
    a3 = (a3 + v7 + v7);
  }

  while (v8 < 0xE);
  sub_2774F15E8(v13, a5, 4);
  sub_2774F1738(a5, v13);
}

void sub_2774F4A34(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v18[17] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = 1;
  v9 = a5;
  do
  {
    v10 = v8;
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = (a1 + v6 + v6);
    v13 = (a3 + v7 + v7);
    v14 = vsubq_s16(*v12, *v13);
    v15 = (v12 + v6);
    v16 = (v13 + v7);
    v17 = vsubq_s16(*v15, *v16);
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v11;
    v9[2] = v14;
    v9[3] = v17;
    v9 += 4;
    a1 = (v15 + v6);
    a3 = (v16 + v7);
    v8 = 0;
  }

  while ((v10 & 1) != 0);
  sub_2774F19A4(v18, a5, 3);
  sub_2774F1A4C(a5, v18);
}

int16x4_t sub_2774F4B1C(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v5 = vsub_s16(*a1, *a3);
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  v8 = vsub_s16(*(a1 + 6 * a2), *(a3 + 6 * a4));
  *a5 = v5;
  a5[1] = v6;
  a5[2] = v7;
  a5[3] = v8;
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vtrn1_s16(v7, v8);
  v12 = vtrn2_s16(v7, v8);
  v13 = vzip1_s32(v9, v11);
  v14 = vzip2_s32(v9, v11);
  v15 = vzip1_s32(v10, v12);
  v16 = vzip2_s32(v10, v12);
  v17 = vadd_s16(v16, v13);
  v18 = vsub_s16(v13, v16);
  v19 = vadd_s16(v14, v15);
  v20 = vsub_s16(v15, v14);
  v22[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v19, v17), 6uLL), 2uLL));
  v22[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v20, 0x24002400240024), v18, 0x53005300530053), 2uLL));
  v22[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v17, v19), 6uLL), 2uLL));
  v22[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v18, 0x24002400240024), v20, 0x53005300530053), 2uLL));
  return sub_2774F1C40(a5, v22);
}

int16x4_t sub_2774F4C44(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = *(a1 + 6 * a2);
  v8 = *(a3 + 6 * a4);
  v9 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v6;
  a5[2] = v9;
  a5[3] = vsub_s16(v7, v8);
  sub_2774F1D8C(v11, a5, 2);
  return sub_2774F1E30(a5, v11);
}

int16x8_t sub_2774F4D08(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a3 + 2;
  v7 = a1 + 2;
  do
  {
    result = vsubq_s16(v7[-2], v6[-2]);
    v9 = vsubq_s16(v7[-1], v6[-1]);
    v10 = vsubq_s16(*v7, *v6);
    v11 = (a5 + v5);
    v12 = vsubq_s16(v7[1], v6[1]);
    *v11 = result;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v5 += 64;
    v6 = (v6 + 2 * a4);
    v7 = (v7 + 2 * a2);
  }

  while (v5 != 2048);
  return result;
}

int16x8_t *sub_2774F4D60(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = -2;
  do
  {
    v8 = vsubq_s16(result[1], a3[1]);
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = vsubq_s16(*(&result[1] + v5), *(&a3[1] + v6));
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
    a5 += 4;
    v7 += 2;
    result = (result + v5 + v5);
    a3 = (a3 + v6 + v6);
  }

  while (v7 < 0xE);
  return result;
}

int16x8_t *sub_2774F4DB8(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = (result + v5 + v5);
    v11 = (a3 + v6 + v6);
    v12 = vsubq_s16(*v10, *v11);
    v13 = (v10 + v5);
    v14 = (v11 + v6);
    v15 = vsubq_s16(*v13, *v14);
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v9;
    a5[2] = v12;
    a5[3] = v15;
    a5 += 4;
    result = (v13 + v5);
    a3 = (v14 + v6);
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

int16x4_t sub_2774F4E30(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v5 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v6 = *(a1 + 6 * a2);
  v7 = *(a3 + 6 * a4);
  v8 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v5;
  result = vsub_s16(v6, v7);
  a5[2] = v8;
  a5[3] = result;
  return result;
}

uint64_t sub_2774F4E88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F4F1C;
  }

  else
  {
    v4 = sub_2774F4EB0;
  }

  return v4();
}

uint16x8_t *sub_2774F4EB0(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xFC00FC00FC00FC00;
  v5.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v6 = (a3 + v3);
    v7 = *(a3 + v3);
    v8 = *(a3 + v3 + 16);
    v9 = *(a3 + v3 + 32);
    v10 = *(a3 + v3 + 48);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v11 = vminq_u16(vsqaddq_u16(v4[-1], v8), v5);
    v12 = vminq_u16(vsqaddq_u16(*v4, v9), v5);
    v13 = vminq_u16(vsqaddq_u16(v4[1], v10), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], v7), v5);
    v4[-1] = v11;
    *v4 = v12;
    v4[1] = v13;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint16x8_t *sub_2774F4F1C(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xFC00FC00FC00FC00;
  v5.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v6 = vminq_u16(vsqaddq_u16(v4[-1], *(a3 + v3 + 16)), v5);
    v7 = vminq_u16(vsqaddq_u16(*v4, *(a3 + v3 + 32)), v5);
    v8 = vminq_u16(vsqaddq_u16(v4[1], *(a3 + v3 + 48)), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], *(a3 + v3)), v5);
    v4[-1] = v6;
    *v4 = v7;
    v4[1] = v8;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint64_t sub_2774F4F7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F5014;
  }

  else
  {
    v4 = sub_2774F4FA4;
  }

  return v4();
}

uint16x8_t *sub_2774F4FA4(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xFC00FC00FC00FC00;
  v5.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = (result + v3);
    v11 = vminq_u16(vsqaddq_u16(result[1], v7), v5);
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v8), v5);
    v13 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), v9), v5);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v5);
    result[1] = v11;
    *v10 = v12;
    v10[1] = v13;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint16x8_t *sub_2774F5014(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xFC00FC00FC00FC00;
  v5.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v6 = (result + v3);
    v7 = vminq_u16(vsqaddq_u16(result[1], a3[1]), v5);
    v8 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[2]), v5);
    v9 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), a3[3]), v5);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v5);
    result[1] = v7;
    *v6 = v8;
    v6[1] = v9;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint64_t sub_2774F5078(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F5128;
  }

  else
  {
    v4 = sub_2774F50A0;
  }

  return v4();
}

uint16x8_t *sub_2774F50A0(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xFC00FC00FC00FC00;
  v4.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v5 = v3;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v7), v4);
    v11 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v8), v4);
    v12 = vsqaddq_u16(*(result + 6 * a2), v9);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v4);
    *(result + 2 * a2) = v10;
    *(result + 4 * a2) = v11;
    *(result + 6 * a2) = vminq_u16(v12, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint16x8_t *sub_2774F5128(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xFC00FC00FC00FC00;
  v4.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v5 = v3;
    v6 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[1]), v4);
    v7 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), a3[2]), v4);
    v8 = vsqaddq_u16(*(result + 6 * a2), a3[3]);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v4);
    *(result + 2 * a2) = v6;
    *(result + 4 * a2) = v7;
    *(result + 6 * a2) = vminq_u16(v8, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

double sub_2774F51A4(uint64_t *a1, uint64_t a2, int16x8_t *a3, char a4)
{
  v4 = (a1 + 2 * a2);
  v5.i64[0] = *a1;
  v5.i64[1] = *v4;
  v6 = (a1 + 6 * a2);
  v7.i64[0] = *(a1 + 4 * a2);
  v7.i64[1] = *v6;
  v8 = a3[1];
  v9.i64[0] = 0xFC00FC00FC00FC00;
  v9.i64[1] = 0xFC00FC00FC00FC00;
  v10 = vminq_u16(vsqaddq_u16(v5, *a3), v9);
  *a1 = v10.i64[0];
  *v4 = v10.i64[1];
  v11 = vminq_u16(vsqaddq_u16(v7, v8), v9);
  *(a1 + 4 * a2) = v11.i64[0];
  *v6 = v11.i64[1];
  if ((a4 & 1) == 0)
  {
    v11.i64[0] = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *v11.i64;
}

int16x8_t *sub_2774F51FC(int16x8_t *result)
{
  v1 = -16;
  do
  {
    v2 = vrshrq_n_s16(result[1], 2uLL);
    *result = vrshrq_n_s16(*result, 2uLL);
    result[1] = v2;
    result += 2;
    v1 += 16;
  }

  while (v1 < 0x30);
  return result;
}

int16x8_t sub_2774F5220(int16x8_t *a1)
{
  result = vrshrq_n_s16(*a1, 3uLL);
  v2 = vrshrq_n_s16(a1[1], 3uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int16x8_t sub_2774F5234(int16x8_t *a1)
{
  result = vshlq_n_s16(*a1, 3uLL);
  v2 = vshlq_n_s16(a1[1], 3uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint16x8_t *sub_2774F5248(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 17) >> 5);
    a3->i16[0] = 0;
    v10 = result + 2;
    v11 = 32;
    v12.i64[0] = 0xFC00FC00FC00FC00;
    v12.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v13 = vminq_u16(vsqaddq_u16(v10[-1], v9), v12);
      v14 = vminq_u16(vsqaddq_u16(*v10, v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v10[1], v9), v12);
      v10[-2] = vminq_u16(vsqaddq_u16(v10[-2], v9), v12);
      v10[-1] = v13;
      *v10 = v14;
      v10[1] = v15;
      v10 = (v10 + 2 * a2);
      --v11;
    }

    while (v11);
    if (a4)
    {
      v16 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v16 += 16;
      }

      while (v16 < 0x3F0);
    }
  }

  else
  {
    result = sub_2774F53F4(a3, a5);
    v17 = 0;
    v18.i64[0] = 0xFC00FC00FC00FC00;
    v18.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v19 = &v8[v17];
      v20 = -4;
      v21 = &v6[v17];
      do
      {
        v22 = *(v19 + 2 * a2);
        v23 = *v19;
        v24 = *(v19 + 4 * a2);
        v25 = *(v19 + 6 * a2);
        v26 = v21[4];
        v27 = v21[8];
        v28 = v21[12];
        v29 = vtrn1q_s16(*v21, v26);
        v30 = vtrn2q_s16(*v21, v26);
        v31 = vtrn1q_s16(v27, v28);
        v32 = vtrn2q_s16(v27, v28);
        v33 = vtrn1q_s32(v29, v31);
        v34 = vtrn2q_s32(v29, v31);
        v35 = vtrn1q_s32(v30, v32);
        v36 = vtrn2q_s32(v30, v32);
        if (a4)
        {
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v38 = vdupq_n_s16(v37);
        *v21 = vandq_s8(v33, v38);
        v21[4] = vandq_s8(v35, v38);
        v21[8] = vandq_s8(v34, v38);
        v21[12] = vandq_s8(v36, v38);
        *v19 = vminq_u16(vsqaddq_u16(v23, v33), v18);
        *(v19 + 2 * a2) = vminq_u16(vsqaddq_u16(v22, v35), v18);
        *(v19 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v18);
        *(v19 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v18);
        v19 = (v19 + 8 * a2);
        v21 += 16;
        v20 += 4;
      }

      while (v20 < 0x1C);
    }

    while (v17++ < 3);
  }

  return result;
}

void *sub_2774F53F4(int16x4_t *a1, int a2)
{
  v2 = a1;
  if (a2 <= 16)
  {
    sub_2774EEE18(a1, 0x20u, &unk_27753CC20);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F55F0(v2, 0x20u, &unk_27753CC30);
      v8 += 4;
      v2 += 32;
    }

    while (v8 < 0x1C);
    return result;
  }

  if (a2 > 0x30)
  {
    if (a2 >= 0xA1)
    {
      v6 = -4;
      v7 = a1;
      do
      {
        sub_2774EF29C(v7);
        v6 += 4;
        ++v7;
      }

      while (v6 < 0x1C);
    }

    else
    {
      v4 = -4;
      v5 = a1;
      do
      {
        sub_2774EF08C(v5, 0x20u, &unk_27753CC60, aZwpf, aZzxurnic6);
        v4 += 4;
        ++v5;
      }

      while (v4 < 0xC);
    }
  }

  else
  {
    sub_2774EEEDC(a1, 0x20u, &unk_27753CC40, aZzxu);
    sub_2774EEEDC(v2 + 1, 0x20u, &unk_27753CC40, aZzxu);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 > 0x50)
  {
    if (a2 >= 0xE1)
    {
      v12 = -4;
      do
      {
        result = sub_2774F5A68(v2);
        v12 += 4;
        v2 += 32;
      }

      while (v12 < 0x1C);
    }

    else
    {
      v11 = -4;
      do
      {
        result = sub_2774F5864(v2, 0x20u, &unk_27753CC70, aZwpf, aZzxurnic6);
        v11 += 4;
        v2 += 32;
      }

      while (v11 < 0x1C);
    }
  }

  else
  {
    v10 = -4;
    do
    {
      result = sub_2774F56D0(v2, 0x20u, &unk_27753CC50, aZzxu);
      v10 += 4;
      v2 += 32;
    }

    while (v10 < 0x1C);
  }

  return result;
}

int16x4_t *sub_2774F55F0(int16x4_t *result, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 1;
  v4 = (&unk_27753CA30 + 4 * a2);
  v5 = *(result + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 6 * a2);
  v8 = vtrn1_s16(*result, v5);
  v9 = vtrn1_s16(v6, v7);
  v10 = vshll_n_s16(vzip1_s32(v8, v9), 6uLL);
  v11 = a2 >> 2;
  v12 = vtrn2_s16(*result, v5);
  v13 = vtrn2_s16(v6, v7);
  v14 = vzip2_s32(v12, v13);
  v15 = vzip1_s32(v12, v13);
  v16 = vzip2_s32(v8, v9);
  v17 = (a3 + 1);
  do
  {
    v18 = *v4++;
    v19 = vmlal_laneq_s16(v10, v16, v18, 4);
    v20 = vmlsl_laneq_s16(v10, v16, v18, 4);
    v21 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 1), v15, *v18.i8, 0);
    v22 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 3), v15, *v18.i8, 2);
    v23 = *(v17 - 1);
    v18.i32[0] = *v17;
    v17 += 2;
    result[v23] = vqrshrn_n_s32(vaddq_s32(v21, v19), 0xAuLL);
    result[v18.u32[0]] = vqrshrn_n_s32(vaddq_s32(v22, v20), 0xAuLL);
    *(result + 2 * (4 * (v3 - v23))) = vqrshrn_n_s32(vsubq_s32(v19, v21), 0xAuLL);
    *(result + 2 * (4 * (v3 - v18.i32[0]))) = vqrshrn_n_s32(vsubq_s32(v20, v22), 0xAuLL);
    --v11;
  }

  while (v11);
  return result;
}

int16x8_t *sub_2774F56D0(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4)
{
  v4 = a2 - 1;
  v5 = (&unk_27753CA30 + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 2 * a2);
  v8 = *(result + 6 * a2);
  v9 = vtrn1q_s16(*result, v7);
  v10 = vtrn2q_s16(*result, v7);
  v11 = vtrn1q_s16(v6, v8);
  v12 = vtrn2q_s16(v6, v8);
  v13 = vtrn1q_s32(v9, v11);
  v14 = vtrn2q_s32(v9, v11);
  v15 = vtrn1q_s32(v10, v12);
  v16 = vtrn2q_s32(v10, v12);
  v17 = vshll_n_s16(*v13.i8, 6uLL);
  v18 = a2 >> 3;
  v19 = (a3 + 3);
  do
  {
    v20 = *v5++;
    v21 = vmlal_high_laneq_s16(v17, v13, v20, 4);
    v22 = vmlsl_high_laneq_s16(v17, v13, v20, 4);
    v23 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 0), v14, *v20.i8, 1);
    v24 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 2), v14, *v20.i8, 3);
    v25 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *a4, 1), *v15.i8, *a4, 0), v15, *a4, 2), v16, *a4, 3);
    v26 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[1], 1), *v15.i8, a4[1], 0), v15, a4[1], 2), v16, a4[1], 3);
    v27 = a4[3];
    v28 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[2], 1), *v15.i8, a4[2], 0), v15, a4[2], 2), v16, a4[2], 3);
    v29 = vaddq_s32(v23, v21);
    v30 = vsubq_s32(v21, v23);
    v31 = *(v19 - 3);
    v32 = *(v19 - 2);
    v33 = *(v19 - 1);
    v20.i32[0] = *v19;
    v19 += 4;
    *&result->i8[8 * v31] = vqrshrn_n_s32(vaddq_s32(v25, v29), 0xAuLL);
    v34 = vaddq_s32(v24, v22);
    v35 = vsubq_s32(v22, v24);
    *&result->i8[8 * v32] = vqrshrn_n_s32(vaddq_s32(v26, v30), 0xAuLL);
    v36 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, v27, 1), *v15.i8, v27, 0), v15, v27, 2), v16, v27, 3);
    *&result->i8[8 * v33] = vqrshrn_n_s32(vaddq_s32(v28, v34), 0xAuLL);
    *&result->i8[8 * v20.u32[0]] = vqrshrn_n_s32(vaddq_s32(v36, v35), 0xAuLL);
    *&result->i8[8 * (v4 - v31)] = vqrshrn_n_s32(vsubq_s32(v29, v25), 0xAuLL);
    *&result->i8[8 * (v4 - v32)] = vqrshrn_n_s32(vsubq_s32(v30, v26), 0xAuLL);
    *&result->i8[8 * (v4 - v33)] = vqrshrn_n_s32(vsubq_s32(v34, v28), 0xAuLL);
    *&result->i8[8 * (v4 - v20.i32[0])] = vqrshrn_n_s32(vsubq_s32(v35, v36), 0xAuLL);
    a4 += 4;
    --v18;
  }

  while (v18);
  return result;
}

int16x8_t *sub_2774F5864(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4, int16x4_t *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = (result + 2 * a2);
  v6 = (result + 4 * a2);
  v7 = (result + 6 * a2);
  v8 = result[1];
  v9 = v5[1];
  v10 = v6[1];
  v11 = v7[1];
  v12 = vtrn1q_s16(*result, *v5);
  v13 = vtrn2q_s16(*result, *v5);
  v14 = vtrn1q_s16(*v6, *v7);
  v15 = vtrn2q_s16(*v6, *v7);
  v16 = vtrn1q_s32(v12, v14);
  v17 = vtrn2q_s32(v12, v14);
  v18 = vtrn1q_s32(v13, v15);
  v19 = vtrn2q_s32(v13, v15);
  v20 = vtrn1q_s16(v8, v9);
  v21 = vtrn2q_s16(v8, v9);
  v22 = vtrn1q_s16(v10, v11);
  v23 = vtrn2q_s16(v10, v11);
  v24 = vtrn1q_s32(v20, v22);
  v25 = vtrn2q_s32(v20, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a2 >> 1;
  v29 = (&unk_27753CA30 + 2 * v28);
  v30 = vshll_n_s16(*v16.i8, 6uLL);
  v31 = a2 >> 4;
  v32 = v51;
  do
  {
    v33 = *v29++;
    v34 = vmlal_laneq_s16(v30, *v24.i8, v33, 4);
    v35 = vmlsl_laneq_s16(v30, *v24.i8, v33, 4);
    v36 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 1), v16, *v33.i8, 0);
    v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 3), v16, *v33.i8, 2);
    v38 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, *a4, 0), v17, *a4, 1), *v25.i8, *a4, 2), v25, *a4, 3);
    v39 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[1], 0), v17, a4[1], 1), *v25.i8, a4[1], 2), v25, a4[1], 3);
    v40 = a4[3];
    v41 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[2], 0), v17, a4[2], 1), *v25.i8, a4[2], 2), v25, a4[2], 3);
    v42 = vaddq_s32(v36, v34);
    v43 = vsubq_s32(v34, v36);
    v44 = vaddq_s32(v37, v35);
    v45 = vsubq_s32(v35, v37);
    *v32 = vaddq_s32(v38, v42);
    v32[1] = vaddq_s32(v39, v43);
    v46 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, v40, 0), v17, v40, 1), *v25.i8, v40, 2), v25, v40, 3);
    v32[2] = vaddq_s32(v41, v44);
    v32[3] = vaddq_s32(v46, v45);
    v32[4] = vsubq_s32(v42, v38);
    v32[5] = vsubq_s32(v43, v39);
    v32[6] = vsubq_s32(v44, v41);
    v32[7] = vsubq_s32(v45, v46);
    v32 += 8;
    a4 += 4;
    --v31;
  }

  while (v31);
  v47 = 0;
  do
  {
    v48 = v51[v47];
    v49 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v19.i8, *a5, 1), *v18.i8, *a5, 0), v18, *a5, 2), v19, *a5, 3), *v26.i8, *a5->i8, 4), *v27.i8, *a5->i8, 5), v26, *a5->i8, 6), v27, *a5->i8, 7);
    v50 = 4 * (~*(a3 + v47) + a2);
    *&result->i8[8 * *(a3 + v47)] = vqrshrn_n_s32(vaddq_s32(v49, v48), 0xAuLL);
    *&result->i8[2 * v50] = vqrshrn_n_s32(vsubq_s32(v48, v49), 0xAuLL);
    ++v47;
    a5 = (a5 + 2 * v28);
  }

  while (v28 != v47);
  return result;
}

int16x4_t *sub_2774F5A68(int16x4_t *result)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = &result[16];
  v2 = -8;
  do
  {
    v3 = v1[-8];
    v4 = v1[-4];
    v5 = v1[4];
    v6 = vtrn1q_s16(v3, v4);
    v7 = vtrn2q_s16(v3, v4);
    v8 = vtrn1q_s16(*v1, v5);
    v9 = vtrn2q_s16(*v1, v5);
    v1[-8] = vtrn1q_s32(v6, v8);
    v1[-4] = vtrn1q_s32(v7, v9);
    *v1 = vtrn2q_s32(v6, v8);
    v1[4] = vtrn2q_s32(v7, v9);
    v2 += 8;
    ++v1;
  }

  while (v2 < 0x18);
  v10 = 0;
  v11 = result[1];
  v12 = result[2];
  v13 = result[3];
  v15 = result[4];
  v14 = result[5];
  v17 = result[6];
  v16 = result[7];
  v18 = vshll_n_s16(*result, 6uLL);
  v19 = vmlal_s16(v18, v15, 0x40004000400040);
  v20 = vmlsl_s16(v18, v15, 0x40004000400040);
  v21 = vmlal_s16(vmull_s16(v17, 0x24002400240024), v12, 0x53005300530053);
  v22 = vmlal_s16(vmull_s16(v17, 0x52005200520052), v12, 0x24002400240024);
  v23 = vaddq_s32(v21, v19);
  v24 = vsubq_s32(v19, v21);
  v25 = vaddq_s32(v22, v20);
  v26 = vsubq_s32(v20, v22);
  v27 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x4B004B004B004BLL), v11, 0x59005900590059), v14, 0x32003200320032), v16, 0x12001200120012);
  v28 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x31003100310031), v11, 0x12001200120012), v14, 0x4B004B004B004BLL), v16, 0x58005800580058);
  v29 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x11001100110011), v11, 0x4B004B004B004BLL), v14, 0x58005800580058), v16, 0x31003100310031);
  v66[0] = vaddq_s32(v27, v23);
  v66[1] = vaddq_s32(v28, v24);
  v30 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x58005800580058), v11, 0x32003200320032), v14, 0x12001200120012), v16, 0x4B004B004B004BLL);
  v66[2] = vaddq_s32(v29, v25);
  v66[3] = vaddq_s32(v30, v26);
  v66[4] = vsubq_s32(v23, v27);
  v66[5] = vsubq_s32(v24, v28);
  v66[6] = vsubq_s32(v25, v29);
  v66[7] = vsubq_s32(v26, v30);
  v31 = result[16];
  v32 = result[17];
  v33 = result[18];
  v34 = result[19];
  v35 = result[20];
  v36 = result[21];
  v37 = result[22];
  v38 = result[23];
  do
  {
    v39 = &v66[v10 / 8];
    v40 = v66[v10 / 8];
    v41 = *&aZwpf9[v10];
    v42 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v32, *v41.i8, 1), v31, *v41.i8, 0), v33, *v41.i8, 2), v34, *v41.i8, 3), v35, v41, 4), v36, v41, 5), v37, v41, 6), v38, v41, 7);
    *v39 = vaddq_s32(v42, v40);
    v39[8] = vsubq_s32(v40, v42);
    v10 += 8;
  }

  while (v10 != 64);
  v43 = 0;
  v44 = result[8];
  v45 = result[9];
  v46 = result[24];
  v47 = result[25];
  v48 = result[10];
  v49 = result[11];
  v50 = result[26];
  v51 = result[27];
  v52 = result[12];
  v53 = result[13];
  v54 = result[28];
  v55 = result[29];
  v56 = aZzxurnic6;
  v57 = result[14];
  v58 = result[15];
  v59 = result[30];
  v60 = result[31];
  do
  {
    v62 = *v56;
    v61 = *(v56 + 1);
    v56 += 16;
    v63 = v66[byte_27753CF00[v43]];
    v64 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v46, *v62.i8, 1), v44, *v62.i8, 0), v45, *v62.i8, 2), v47, *v62.i8, 3), v48, v62, 4), v50, v62, 5), v49, v62, 6), v51, v62, 7), v52, *v61.i8, 0), v54, *v61.i8, 1), v53, *v61.i8, 2), v55, *v61.i8, 3), v57, v61, 4), v59, v61, 5), v58, v61, 6), v60, v61, 7);
    v65 = 124 - 4 * *(&unk_27753CC20 + v43 + 80);
    result[*(&unk_27753CC20 + v43 + 80)] = vqrshrn_n_s32(vaddq_s32(v64, v63), 0xAuLL);
    *(result + 2 * v65) = vqrshrn_n_s32(vsubq_s32(v63, v64), 0xAuLL);
    ++v43;
  }

  while (v43 != 16);
  return result;
}