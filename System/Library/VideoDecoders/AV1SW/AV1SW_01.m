int8x16_t *sub_27755B9A8@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W7>, signed int a9@<W8>)
{
  v13 = vdupq_n_s16(a8);
  v14 = (a4 + 1);
  v15 = (result + a2);
  v16 = 2 * a2 - a5;
  v17.i64[0] = 0x8000800080008;
  v17.i64[1] = 0x8000800080008;
  v18 = vaddq_s16(vmulq_s16(v12, v13), v13);
  v19 = vmulq_s16(v13, v17);
  v20 = vmovn_hight_s16(vmovn_s16(v12), v9[1]);
  v21 = *v14;
  v22 = v14[1];
  v23 = v14[2];
  v24 = v14[3];
  vld1q_dup_s8(a3);
  v25 = a5;
  v26 = -a5;
  while (1)
  {
    v27 = v18;
    v28 = a9 >> 6;
    v29 = vdupq_n_s16(a9);
    v30 = a9 - a7;
    v31 = v30 >> 6;
    if (v28 <= v26)
    {
      break;
    }

    v32 = vdupq_n_s16(v30);
    a9 = v30 - a7;
    v33 = &a3[v28];
    v34 = &a3[v31];
    *v10.i8 = vqshrn_n_s16(v29, 6uLL);
    *i.i8 = vqshrn_n_s16(v32, 6uLL);
    *v29.i8 = vmovn_s16(v29);
    *v32.i8 = vmovn_s16(v32);
    v36 = *v33;
    v35 = (v33 + 16);
    v38 = *v34;
    v37 = (v34 + 16);
    v39.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
    v39.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
    v40.i64[0] = 0x4040404040404040;
    v40.i64[1] = 0x4040404040404040;
    v41 = vandq_s8(vtrn1q_s64(v29, v29), v39);
    v42 = vandq_s8(vtrn1q_s64(v32, v32), v39);
    v43 = vsubq_s8(v40, v41);
    v44 = vsubq_s8(v40, v42);
    v10 = vaddq_s8(vtrn1q_s64(v10, v10), v20);
    for (i = vaddq_s8(vtrn1q_s64(i, i), v20); ; i = vaddq_s8(i, v65))
    {
      v45 = vaddq_s16(v27, v19);
      v46.i64[0] = 0x4040404040404040;
      v46.i64[1] = 0x4040404040404040;
      v47.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
      v47.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
      v48 = vshrn_high_n_s16(vshrn_n_s16(v27, 6uLL), v45, 6uLL);
      v49 = vandq_s8(vmovn_hight_s16(vmovn_s16(v27), v45), v47);
      if (i.i8[0] >= 0)
      {
        break;
      }

      v27 = vaddq_s16(v45, v19);
      v50.i64[0] = 0x101010101010101;
      v50.i64[1] = 0x101010101010101;
      v51 = vqtbx4q_s8(*&v21, v48);
      v52 = vaddq_s8(v48, v50);
      v53 = vsubq_s8(v46, v49);
      v54 = *v35++;
      v55 = *v37++;
      v56 = vqtbx4q_s8(*&v21, v52);
      v57 = vqtbx4q_s8(*&v21, vaddq_s8(v52, v50));
      v58 = vmlal_u8(vmull_u8(*v51.i8, *v53.i8), *v56.i8, *v49.i8);
      v59 = vmlal_high_u8(vmull_high_u8(v51, v53), v56, v49);
      v60 = vmlal_u8(vmull_u8(*v56.i8, *v53.i8), *v57.i8, *v49.i8);
      v61 = vmlal_high_u8(vmull_high_u8(v56, v53), v57, v49);
      v62 = vextq_s8(v36, v54, 1uLL);
      v63 = vextq_s8(v38, v55, 1uLL);
      *result++ = vbslq_s8(vcgezq_s8(v10), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v36.i8, *v43.i8), *v62.i8, *v41.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v36, v43), v62, v41), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(v58, 6uLL), v59, 6uLL));
      v64 = __OFSUB__(a5, 16);
      a5 -= 16;
      *v15++ = vbslq_s8(vcgezq_s8(i), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v38.i8, *v44.i8), *v63.i8, *v42.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v38, v44), v63, v42), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(v60, 6uLL), v61, 6uLL));
      if ((a5 < 0) ^ v64 | (a5 == 0))
      {
        goto LABEL_7;
      }

      v65.i64[0] = 0x1010101010101010;
      v65.i64[1] = 0x1010101010101010;
      v36 = v54;
      v38 = v55;
      v10 = vaddq_s8(v10, v65);
    }

    while (1)
    {
      v67 = *v35++;
      v68 = *v37++;
      v69 = vextq_s8(v36, v67, 1uLL);
      v70 = vextq_s8(v38, v68, 1uLL);
      *result++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v36.i8, *v43.i8), *v69.i8, *v41.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v36, v43), v69, v41), 6uLL);
      v64 = __OFSUB__(a5, 16);
      a5 -= 16;
      *v15++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v38.i8, *v44.i8), *v70.i8, *v42.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v38, v44), v70, v42), 6uLL);
      if ((a5 < 0) ^ v64 | (a5 == 0))
      {
        break;
      }

      v36 = v67;
      v38 = v68;
    }

LABEL_7:
    v64 = __OFSUB__(a6, 2);
    a6 -= 2;
    if ((a6 < 0) ^ v64 | (a6 == 0))
    {
      return result;
    }

    v66.i64[0] = 0x80008000800080;
    v66.i64[1] = 0x80008000800080;
    result = (result + v16);
    v15 = (v15 + v16);
    a5 = v25;
    v18 = vaddq_s16(v18, v66);
  }

  v71 = v16 + a5;
  for (j = a6; ; a6 = j)
  {
    v73 = vaddq_s16(v27, v19);
    v74.i64[0] = 0x4040404040404040;
    v74.i64[1] = 0x4040404040404040;
    v75.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
    v75.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
    v76 = vshrn_high_n_s16(vshrn_n_s16(v27, 6uLL), v73, 6uLL);
    v77 = vandq_s8(vmovn_hight_s16(vmovn_s16(v27), v73), v75);
    v27 = vaddq_s16(v73, v19);
    v78.i64[0] = 0x101010101010101;
    v78.i64[1] = 0x101010101010101;
    v79 = vqtbx4q_s8(*&v21, v76);
    v80 = vaddq_s8(v76, v78);
    v81 = vsubq_s8(v74, v77);
    while (1)
    {
      v82 = vqtbx4q_s8(*&v21, v80);
      v83 = vaddq_s8(v80, v78);
      v84 = vqtbx4q_s8(*&v21, v83);
      v80 = vaddq_s8(v83, v78);
      *result = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v79.i8, *v81.i8), *v82.i8, *v77.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v79, v81), v82, v77), 6uLL);
      result = (result + v71);
      v64 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v15 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v82.i8, *v81.i8), *v84.i8, *v77.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v82, v81), v84, v77), 6uLL);
      v15 = (v15 + v71);
      if ((a6 < 0) ^ v64 | (a6 == 0))
      {
        break;
      }

      v79 = v84;
    }

    v64 = __OFSUB__(a5, 16);
    a5 -= 16;
    if ((a5 < 0) ^ v64 | (a5 == 0))
    {
      break;
    }

    v85 = v71 >> 1;
    v86 = (result - v85 * j);
    v87 = (v15 - v85 * j);
    v71 = 2 * v85;
    result = v86 + 1;
    v15 = v87 + 1;
  }

  return result;
}

void *sub_27755BCD8(void *result, uint64_t a2, uint64_t a3, int8x16_t *a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, int64x2_t a15, int64x2_t a16)
{
  v17 = 128 - a7;
  v18.i64[1] = unk_27A717058;
  v19 = -a8;
  if (a5 == 8)
  {
    v41 = vdupq_n_s16(v19);
    v42.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
    v42.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
    v43 = vaddq_s16(vmulq_s16(qword_27A717050[0], v41), v41);
    *v18.i8 = vmovn_s16(qword_27A717050[0]);
    v44 = *a4;
    v45.i64[0] = 0x4040404040404040;
    v45.i64[1] = 0x4040404040404040;
    v46 = vand_s8(vmovn_s16(v43), 0x3E3E3E3E3E3E3E3ELL);
    v47 = vadd_s8(vshrn_n_s16(v43, 6uLL), 0x101010101010101);
    v48 = vqtbl1_s8(*a4, v47);
    v49 = vadd_s8(v47, 0x202020202020202);
    v50 = vadd_s8(v47, 0x101010101010101);
    v51 = vsub_s8(0x4040404040404040, v46);
    v52 = vtrn1q_s64(v18, v18);
    v53 = vaddq_s8(v52, v52);
    while (1)
    {
      v54 = v17 >> 6;
      v55 = vdupq_n_s16(v17);
      v56 = v17 - a7;
      if (v54 <= -16)
      {
        break;
      }

      v57 = vdupq_n_s16(v56);
      v58 = *(a3 + v54);
      v59 = *(a3 + (v56 >> 6));
      v60 = vqtbl1_s8(v44, v50);
      v61 = vshrn_high_n_s16(vshrn_n_s16(v55, 6uLL), v57, 6uLL);
      v62 = vqtbl1_s8(v44, v49);
      v63 = vuzp2q_s8(v58, v59);
      v64 = vuzp1q_s8(v58, v59);
      v65 = vandq_s8(vmovn_hight_s16(vmovn_s16(v55), v57), v42);
      v66 = vsubq_s8(v45, v65);
      v67 = vbslq_s8(vcgezq_s8(vaddq_s8(v61, v53)), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v64.i8, *v66.i8), *v63.i8, *v65.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v64, v66), v63, v65), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v48, v51), v60, v46), 6uLL), vmlal_u8(vmull_u8(v60, v51), v62, v46), 6uLL));
      *result = v67.i64[0];
      v68 = (result + a2);
      v17 = v56 - a7;
      v37 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v68 = v67.i64[1];
      result = (v68 + a2);
      if ((a6 < 0) ^ v37 | (a6 == 0))
      {
        return result;
      }

      v48 = v62;
      v50 = vadd_s8(v50, 0x202020202020202);
      v49 = vadd_s8(v49, 0x202020202020202);
    }

    while (1)
    {
      v69 = vqtbl1_s8(v44, v50);
      v70 = vqtbl1_s8(v44, v49);
      v71 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v48, v51), v69, v46), 6uLL), vmlal_u8(vmull_u8(v69, v51), v70, v46), 6uLL);
      *result = v71.i64[0];
      v72 = (result + a2);
      v37 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v72 = v71.i64[1];
      result = (v72 + a2);
      if ((a6 < 0) ^ v37 | (a6 == 0))
      {
        break;
      }

      v48 = v70;
      v50 = vadd_s8(v50, 0x202020202020202);
      v49 = vadd_s8(v49, 0x202020202020202);
    }
  }

  else
  {
    *v16.i8 = vdup_n_s16(v19);
    *v16.i8 = vadd_s16(vmul_s16(0x3000200010000, *v16.i8), *v16.i8);
    v20 = vmovn_s16(qword_27A717050[0]);
    v21 = *a4;
    v22 = vand_s8(vmovn_s16(v16), 0x3E3E3E3E3E3E3E3ELL);
    v23 = vadd_s8(vshrn_n_s16(v16, 6uLL), 0x101010101010101);
    v24 = vqtbl1_s8(*a4, v23);
    v25 = vtrn1_s32(vadd_s8(v23, 0x101010101010101), vadd_s8(v23, 0x202020202020202));
    v26 = vsub_s8(0x4040404040404040, v22);
    v27 = vtrn1_s32(v20, v20);
    v28 = vtrn1_s32(v22, v22);
    v29 = vtrn1_s32(v26, v26);
    v30 = vadd_s8(v27, v27);
    while (1)
    {
      v31 = v17 >> 6;
      *a15.i8 = vdup_n_s16(v17);
      v32 = v17 - a7;
      if (v31 <= -8)
      {
        break;
      }

      *a16.i8 = vdup_n_s16(v32);
      a15 = vtrn1q_s64(a15, a16);
      v33 = vqtbl1_s8(v21, v25);
      v34 = vshrn_n_s16(a15, 6uLL);
      *a15.i8 = vand_s8(vmovn_s16(a15), 0x3E3E3E3E3E3E3E3ELL);
      v35 = vbsl_s8(vcgez_s8(vadd_s8(v34, v30)), vrshrn_n_s16(vmlal_u8(vmull_u8(vuzp1_s8(*(a3 + v31), *(a3 + (v32 >> 6))), vsub_s8(0x4040404040404040, *a15.i8)), vuzp2_s8(*(a3 + v31), *(a3 + (v32 >> 6))), *a15.i8), 6uLL), vrshrn_n_s16(vmlal_u8(vmull_u8(vtrn1_s32(v24, v33), v29), v33, v28), 6uLL));
      *result = v35.i32[0];
      v36 = (result + a2);
      v17 = v32 - a7;
      v37 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v36 = v35.i32[1];
      result = (v36 + a2);
      if ((a6 < 0) ^ v37 | (a6 == 0))
      {
        return result;
      }

      v24 = vext_s8(v33, v33, 4uLL);
      v25 = vadd_s8(v25, 0x202020202020202);
    }

    while (1)
    {
      v38 = vqtbl1_s8(v21, v25);
      v39 = vrshrn_n_s16(vmlal_u8(vmull_u8(vtrn1_s32(v24, v38), v29), v38, v28), 6uLL);
      *result = v39.i32[0];
      v40 = (result + a2);
      v37 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v40 = v39.i32[1];
      result = (v40 + a2);
      if ((a6 < 0) ^ v37 | (a6 == 0))
      {
        break;
      }

      v24 = vext_s8(v38, v38, 4uLL);
      v25 = vadd_s8(v25, 0x202020202020202);
    }
  }

  return result;
}

void *sub_27755BF54(void *result, uint64_t a2, uint64_t a3, __int128 *a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, int64x2_t a15, int64x2_t a16)
{
  v21 = 64 - a7;
  v22.i64[1] = unk_27A717058;
  v23 = -a8;
  if (a5 == 8)
  {
    v44 = vdupq_n_s16(v23);
    v45.i64[0] = 0x3E3E3E3E3E3E3E3ELL;
    v45.i64[1] = 0x3E3E3E3E3E3E3E3ELL;
    v46 = vaddq_s16(vmulq_s16(qword_27A717050[0], v44), v44);
    *v22.i8 = vmovn_s16(qword_27A717050[0]);
    v47 = *a4;
    v48 = a4[1];
    v49 = a4[2];
    v50.i64[0] = 0x4040404040404040;
    v50.i64[1] = 0x4040404040404040;
    *v17.i8 = vand_s8(vmovn_s16(v46), 0x3E3E3E3E3E3E3E3ELL);
    *v19.i8 = vadd_s8(vshrn_n_s16(v46, 6uLL), 0x202020202020202);
    *v18.i8 = vadd_s8(*v19.i8, 0x101010101010101);
    *v46.i8 = vadd_s8(*v19.i8, 0x202020202020202);
    v51 = vtrn1q_s64(v22, v22);
    *v16.i8 = vadd_s8(*v18.i8, 0x202020202020202);
    v52 = vtrn1q_s64(v19, v46);
    v53 = vtrn1q_s64(v18, v16);
    *v18.i8 = vsub_s8(0x4040404040404040, *v17.i8);
    v54.i64[0] = 0x404040404040404;
    v54.i64[1] = 0x404040404040404;
    v55 = vtrn1q_s64(v17, v17);
    v56 = vtrn1q_s64(v18, v18);
    while (1)
    {
      v57 = v21 >> 6;
      v58 = vdupq_n_s16(v21);
      v59 = v21 - a7;
      if (v57 <= -8)
      {
        break;
      }

      v60 = vdupq_n_s16(v59);
      v61 = *(a3 + v57);
      v62 = *(a3 + (v59 >> 6));
      v63 = vqtbl3q_s8(*&v47, v52);
      v64 = vqtbl3q_s8(*&v47, v53);
      v65 = vshrn_high_n_s16(vshrn_n_s16(v58, 6uLL), v60, 6uLL);
      v66 = vextq_s8(v61, v61, 1uLL);
      v67 = vandq_s8(vmovn_hight_s16(vmovn_s16(v58), v60), v45);
      v68 = vtrn1q_s64(v61, v62);
      v69 = vtrn1q_s64(v66, vextq_s8(v62, v62, 1uLL));
      v70 = vsubq_s8(v50, v67);
      v71 = vbslq_s8(vcgezq_s8(vaddq_s8(v65, v51)), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v68.i8, *v70.i8), *v69.i8, *v67.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v68, v70), v69, v67), 6uLL), vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v63.i8, *v56.i8), *v64.i8, *v55.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v63, v56), v64, v55), 6uLL));
      *result = v71.i64[0];
      v72 = (result + a2);
      v21 = v59 - a7;
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v72 = v71.i64[1];
      result = (v72 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        return result;
      }

      v52 = vaddq_s8(v52, v54);
      v53 = vaddq_s8(v53, v54);
    }

    while (1)
    {
      v73 = vqtbl3q_s8(*&v47, v52);
      v74 = vqtbl3q_s8(*&v47, v53);
      v75 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v73.i8, *v56.i8), *v74.i8, *v55.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v73, v56), v74, v55), 6uLL);
      *result = v75.i64[0];
      v76 = (result + a2);
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v76 = v75.i64[1];
      result = (v76 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        break;
      }

      v52 = vaddq_s8(v52, v54);
      v53 = vaddq_s8(v53, v54);
    }
  }

  else
  {
    *v20.i8 = vdup_n_s16(v23);
    *v20.i8 = vadd_s16(vmul_s16(0x3000200010000, *v20.i8), *v20.i8);
    v24 = vmovn_s16(qword_27A717050[0]);
    v25 = *a4;
    v26 = a4[1];
    v27 = vand_s8(vmovn_s16(v20), 0x3E3E3E3E3E3E3E3ELL);
    v28 = vadd_s8(vshrn_n_s16(v20, 6uLL), 0x202020202020202);
    v29 = vadd_s8(v28, 0x101010101010101);
    v30 = vtrn1_s32(v24, v24);
    v31 = vtrn1_s32(v28, vadd_s8(v28, 0x202020202020202));
    v32 = vtrn1_s32(v29, vadd_s8(v29, 0x202020202020202));
    v33 = vsub_s8(0x4040404040404040, v27);
    v34 = vtrn1_s32(v27, v27);
    v35 = vtrn1_s32(v33, v33);
    while (1)
    {
      v36 = v21 >> 6;
      *a15.i8 = vdup_n_s16(v21);
      v37 = v21 - a7;
      if (v36 <= -4)
      {
        break;
      }

      *a16.i8 = vdup_n_s16(v37);
      a15 = vtrn1q_s64(a15, a16);
      v38 = vshrn_n_s16(a15, 6uLL);
      *a15.i8 = vand_s8(vmovn_s16(a15), 0x3E3E3E3E3E3E3E3ELL);
      v39 = vbsl_s8(vcgez_s8(vadd_s8(v38, v30)), vrshrn_n_s16(vmlal_u8(vmull_u8(vtrn1_s32(*(a3 + v36), *(a3 + (v37 >> 6))), vsub_s8(0x4040404040404040, *a15.i8)), vtrn1_s32(vext_s8(*(a3 + v36), *(a3 + v36), 1uLL), vext_s8(*(a3 + (v37 >> 6)), *(a3 + (v37 >> 6)), 1uLL)), *a15.i8), 6uLL), vrshrn_n_s16(vmlal_u8(vmull_u8(vqtbl2_s8(*&v25, v31), v35), vqtbl2_s8(*&v25, v32), v34), 6uLL));
      *result = v39.i32[0];
      v40 = (result + a2);
      v21 = v37 - a7;
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v40 = v39.i32[1];
      result = (v40 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        return result;
      }

      v31 = vadd_s8(v31, 0x404040404040404);
      v32 = vadd_s8(v32, 0x404040404040404);
    }

    while (1)
    {
      v42 = vrshrn_n_s16(vmlal_u8(vmull_u8(vqtbl2_s8(*&v25, v31), v35), vqtbl2_s8(*&v25, v32), v34), 6uLL);
      *result = v42.i32[0];
      v43 = (result + a2);
      v41 = __OFSUB__(a6, 2);
      a6 -= 2;
      *v43 = v42.i32[1];
      result = (v43 + a2);
      if ((a6 < 0) ^ v41 | (a6 == 0))
      {
        break;
      }

      v31 = vadd_s8(v31, 0x404040404040404);
      v32 = vadd_s8(v32, 0x404040404040404);
    }
  }

  return result;
}

_OWORD *sub_27755C1E4(_OWORD *result, unint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7)
{
  v7 = __clz(a4);
  v8 = (a3 + a7);
  vld1q_dup_s8(v8);
  v9 = a6;
  if (a7 <= 64)
  {
    return ((&qword_27755C600 - *(&qword_27755C600 + v7 - 25)))();
  }

  v10 = (result + a2);
  v11 = a2;
  for (i = a5; ; a5 = i)
  {
    v13 = v9 >> 6;
    v14 = v9 & 0x3E;
    v15 = v9 + a6;
    v16 = v15 & 0x3E;
    if (v13 >= a7)
    {
      break;
    }

    v17 = (a3 + v13);
    v18 = (a3 + (v15 >> 6));
    v19 = vdupq_n_s8(v14);
    v20 = vdupq_n_s8(v16);
    v22 = *v17;
    v23 = v17[1];
    v21 = v17 + 2;
    v25 = *v18;
    v26 = v18[1];
    v24 = v18 + 2;
    v27 = vdupq_n_s8(64 - v14);
    v28 = vdupq_n_s8(64 - v16);
    v9 = v15 + a6;
    while (1)
    {
      v29 = vextq_s8(v22, v23, 1uLL);
      v30 = vextq_s8(v25, v26, 1uLL);
      v31 = __OFSUB__(a5, 16);
      a5 -= 16;
      v32 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v29.i8, *v19.i8), *v22.i8, *v27.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v29, v19), v22, v27), 6uLL);
      v33 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v20.i8), *v25.i8, *v28.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v30, v20), v25, v28), 6uLL);
      v34 = vzip1q_s8(v32, v33);
      v35 = vzip2q_s8(v32, v33);
      *result = v34.i16[0];
      v36 = (result + v11 * 2);
      *v10 = v34.i16[1];
      v37 = &v10[v11];
      *v36 = v34.i16[2];
      v38 = &v36[v11];
      *v37 = v34.i16[3];
      v39 = &v37[v11];
      *v38 = v34.i16[4];
      v40 = &v38[v11];
      *v39 = v34.i16[5];
      v41 = &v39[v11];
      *v40 = v34.i16[6];
      v42 = &v40[v11];
      *v41 = v34.i16[7];
      v43 = &v41[v11];
      *v42 = v35.i16[0];
      v44 = &v42[v11];
      *v43 = v35.i16[1];
      v45 = &v43[v11];
      *v44 = v35.i16[2];
      v46 = &v44[v11];
      *v45 = v35.i16[3];
      v47 = &v45[v11];
      *v46 = v35.i16[4];
      v48 = &v46[v11];
      *v47 = v35.i16[5];
      v49 = &v47[v11];
      *v48 = v35.i16[6];
      result = &v48[v11];
      *v49 = v35.i16[7];
      v10 = &v49[v11];
      if ((a5 < 0) ^ v31 | (a5 == 0))
      {
        break;
      }

      v22 = v23;
      v23 = *v21++;
      v25 = v26;
      v26 = *v24++;
    }

    v31 = __OFSUB__(a4, 2);
    a4 -= 2;
    if ((a4 < 0) ^ v31 | (a4 == 0))
    {
      return result;
    }

    v50 = (v11 * 2) >> 1;
    v51 = result - v50 * i;
    v52 = v10 - v50 * i;
    v11 = v50;
    result = v51 + 2;
    v10 = v52 + 2;
  }

  return sub_27755C60C(result, v11 * 2, a3, a4, a5);
}

_OWORD *sub_27755C60C(_OWORD *result, unint64_t a2, uint64_t a3, signed int a4, int a5)
{
  if (a4 <= 16)
  {
    return ((aDdd - aDdd[__clz(a4) - 25]))();
  }

  v6 = a4;
  v7 = (a2 >> 1) - a4;
  while (1)
  {
    v8 = a4 & 0xF;
    if ((a4 & 0xF) != 0)
    {
      a4 -= v8;
      *result = v5;
      result = (result + v8);
    }

    do
    {
      v9 = __OFSUB__(a4, 16);
      a4 -= 16;
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

int8x8_t *sub_27755C784(int8x8_t *result, uint64_t a2, __int128 *a3, int a4, int a5, unsigned int a6, unsigned int a7, double a8, double a9, double a10)
{
  v15 = a3 + a7;
  vld1q_dup_s8(v15);
  v16.i64[1] = unk_27A717058;
  if (a4 == 8)
  {
    v31 = vdupq_n_s16(a6);
    v32 = *a3;
    v33 = a3[1];
    v34 = vaddq_s16(v31, vmulq_s16(qword_27A717050[0], v31));
    *v12.i8 = vqshrn_n_u16(v34, 6uLL);
    *v10.i8 = vand_s8(vmovn_s16(v34), 0x3E3E3E3E3E3E3E3ELL);
    *v13.i8 = vqadd_u8(*v12.i8, 0x101010101010101);
    *v14.i8 = vqadd_u8(*v12.i8, 0x202020202020202);
    *v11.i8 = vsub_s8(0x4040404040404040, *v10.i8);
    *v31.i8 = vqadd_u8(*v13.i8, 0x202020202020202);
    v35 = vtrn1q_s64(v10, v10);
    v36 = vtrn1q_s64(v12, v14);
    v37 = vtrn1q_s64(v13, v31);
    v38 = vtrn1q_s64(v11, v11);
    v39.i64[0] = 0x404040404040404;
    v39.i64[1] = 0x404040404040404;
    while (1)
    {
      v40 = vqtbx4q_s8(*(&a10 - 4), v36);
      v41 = vqtbx4q_s8(*(&a10 - 4), v37);
      *result = vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *v38.i8), *v41.i8, *v35.i8), 6uLL);
      v42 = (result + a2);
      v30 = __OFSUB__(a5, 2);
      a5 -= 2;
      *v42 = vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v40, v38), v41, v35), 6uLL);
      result = (v42 + a2);
      if ((a5 < 0) ^ v30 | (a5 == 0))
      {
        break;
      }

      v36 = vqaddq_u8(v36, v39);
      v37 = vqaddq_u8(v37, v39);
    }
  }

  else
  {
    v17 = vdup_n_s16(a6);
    v18 = *a3;
    v19 = a3[1];
    *v16.i8 = vadd_s16(v17, vmul_s16(0x3000200010000, v17));
    v20 = vqshrn_n_u16(v16, 6uLL);
    v21 = vand_s8(vmovn_s16(v16), 0x3E3E3E3E3E3E3E3ELL);
    v22 = vqadd_u8(v20, 0x101010101010101);
    v23 = vsub_s8(0x4040404040404040, v21);
    v24 = vtrn1_s32(v21, v21);
    v25 = vtrn1_s32(v20, vqadd_u8(v20, 0x202020202020202));
    v26 = vtrn1_s32(v22, vqadd_u8(v22, 0x202020202020202));
    v27 = vtrn1_s32(v23, v23);
    while (1)
    {
      v28 = vrshrn_n_s16(vmlal_u8(vmull_u8(vqtbx2_s8(*&v18, v25), v27), vqtbx2_s8(*&v18, v26), v24), 6uLL);
      result->i32[0] = v28.i32[0];
      v29 = (result + a2);
      v30 = __OFSUB__(a5, 2);
      a5 -= 2;
      v29->i32[0] = v28.i32[1];
      result = (v29 + a2);
      if ((a5 < 0) ^ v30 | (a5 == 0))
      {
        break;
      }

      v25 = vqadd_u8(v25, 0x404040404040404);
      v26 = vqadd_u8(v26, 0x404040404040404);
    }
  }

  return result;
}

int16x4_t sub_27755C91C(_DWORD *a1, uint64_t a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5, uint64_t a6, int a7, uint64_t a8, _DWORD *a9)
{
  a4.i32[0] = *(a3 + 1);
  v16 = (a3 - 2);
  result = vmovl_u8(a4).u64[0];
  do
  {
    a5.i32[0] = *v16;
    v16 = (v16 - 2);
    a5 = vmovl_u8(a5).u64[0];
    v18 = vqrshrun_n_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(v10, result.i16[0]), v11, result, 1), v12, result, 2), v13, result, 3), v9, a5, 2), v14, a5, 1), v15, a5, 0), 4uLL);
    v19 = __OFSUB__(a7, 2);
    a7 -= 2;
    *a1 = v18.i32[0];
    a1 = (a1 + a2);
    v20 = vmovl_u8(v18);
    *a9 = v18.i32[1];
    a9 = (a9 + a2);
    result = vextq_s8(v20, v20, 8uLL).u64[0];
  }

  while (!((a7 < 0) ^ v19 | (a7 == 0)));
  return result;
}

int16x8_t sub_27755C970(_DWORD *a1, uint64_t a2, uint64_t a3, double a4, int16x8_t a5, uint64_t a6, int a7, uint64_t a8, _DWORD *a9)
{
  v16 = *(a3 + 1);
  v17 = (a3 - 2);
  result = vmovl_u8(v16);
  do
  {
    a5.i32[0] = *v17;
    v17 = (v17 - 2);
    v19 = vmovl_u8(*a5.i8).u64[0];
    v20 = vqrshrun_n_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(v10, result.i16[0]), v11, *result.i8, 1), v12, *result.i8, 2), v13, *result.i8, 3), v9, v19, 2), v14, v19, 1), v15, v19, 0), 4uLL);
    a5 = vmovl_u8(v20);
    v21 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_laneq_s16(v10, result, 4), v11, result, 5), v12, result, 6), v13, result, 7), v9, *result.i8, 3), v14, *a5.i8, 3), v15, a5, 7), 4uLL);
    v22 = __OFSUB__(a7, 2);
    a7 -= 2;
    *a1 = v20.i32[0];
    a1[1] = v21.i32[0];
    a1 = (a1 + a2);
    *a9 = v20.i32[1];
    a9[1] = v21.i32[1];
    a9 = (a9 + a2);
    result = vmovl_u8(vzip2_s32(v20, v21));
  }

  while (!((a7 < 0) ^ v22 | (a7 == 0)));
  return result;
}

_DWORD *sub_27755C9E8(_DWORD *result, uint64_t a2, uint64_t a3, int a4, int a5, int16x8_t a6, uint64_t a7, _DWORD *a8)
{
  v15 = (a3 + 1);
  v16 = (a3 - 2);
  v17 = a2 - a4;
  for (i = a4; ; a4 = i)
  {
    a6.i32[0] = *v16;
    v16 = (v16 - 2);
    a6.i64[0] = vmovl_u8(*a6.i8).u64[0];
    while (1)
    {
      v19 = *v15++;
      v20 = vmovl_u8(*v19.i8);
      v21 = vmovl_high_u8(v19);
      v22 = vqrshrun_n_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(v8, *a6.i8, 2), v13, *a6.i8, 1), v14, *a6.i8, 0), v9, *v20.i8, 0), v10, *v20.i8, 1), v11, *v20.i8, 2), v12, *v20.i8, 3), 4uLL);
      v23 = vmovl_u8(v22);
      v24 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_laneq_s16(v9, v20, 4), v10, v20, 5), v11, v20, 6), v12, v20, 7), v8, *v20.i8, 3), v13, *v23.i8, 3), v14, v23, 7), 4uLL);
      v25 = vmovl_u8(v24);
      v26 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(v9, v21.i16[0]), v10, *v21.i8, 1), v11, *v21.i8, 2), v12, *v21.i8, 3), v8, v20, 7), v13, *v25.i8, 3), v14, v25, 7), 4uLL);
      a6 = vmovl_u8(v26);
      v27 = __OFSUB__(a4, 16);
      a4 -= 16;
      v28 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmulq_laneq_s16(v9, v21, 4), v10, v21, 5), v11, v21, 6), v12, v21, 7), v8, *v21.i8, 3), v13, *a6.i8, 3), v14, a6, 7), 4uLL);
      *result = v22.i32[0];
      result[1] = v24.i32[0];
      result[2] = v26.i32[0];
      result[3] = v28.i32[0];
      result += 4;
      *a8 = v22.i32[1];
      a8[1] = v24.i32[1];
      a8[2] = v26.i32[1];
      a8[3] = v28.i32[1];
      a8 += 4;
      if ((a4 < 0) ^ v27 | (a4 == 0))
      {
        break;
      }

      a6.i16[2] = v21.i16[7];
      a6.i8[0] = v28.i8[7];
      a6.i8[2] = v28.i8[3];
    }

    v27 = __OFSUB__(a5, 2);
    a5 -= 2;
    if ((a5 < 0) ^ v27 | (a5 == 0))
    {
      break;
    }

    v15 = (a8 - i);
    result = (result + v17);
    a8 = (a8 + v17);
  }

  return result;
}

_DWORD *sub_27755CB0C(_DWORD *result, uint64_t a2, _DWORD *a3, int8x8_t *a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10)
{
  do
  {
    v11 = *a4++;
    v12 = __OFSUB__(a10, 4);
    a10 -= 4;
    *a8.i8 = vshr_n_u8(v11, 4uLL);
    *a7.i8 = vand_s8(v11, v10);
    v13 = vqtbl1q_s8(a5, vzip1q_s8(a7, a8));
    *result = v13.i32[0];
    v14 = (result + a2);
    *a3 = v13.i32[1];
    v15 = (a3 + a2);
    *v14 = v13.i32[2];
    result = (v14 + a2);
    *v15 = v13.i32[3];
    a3 = (v15 + a2);
  }

  while (!((a10 < 0) ^ v12 | (a10 == 0)));
  return result;
}

void *sub_27755CB3C(void *result, uint64_t a2, void *a3, int8x16_t *a4, int8x16_t a5, uint64_t a6, int a7)
{
  do
  {
    v8 = *a4++;
    v9 = __OFSUB__(a7, 4);
    a7 -= 4;
    v10 = vshrq_n_u8(v8, 4uLL);
    v11 = vandq_s8(v8, v7);
    v12 = vqtbl1q_s8(a5, vzip1q_s8(v11, v10));
    *result = v12.i64[0];
    v13 = (result + a2);
    v14 = vqtbl1q_s8(a5, vzip2q_s8(v11, v10));
    *a3 = v12.i64[1];
    v15 = (a3 + a2);
    *v13 = v14.i64[0];
    result = (v13 + a2);
    *v15 = v14.i64[1];
    a3 = (v15 + a2);
  }

  while (!((a7 < 0) ^ v9 | (a7 == 0)));
  return result;
}

int8x16_t *sub_27755CB74(int8x16_t *result, uint64_t a2, int8x16_t *a3, int8x16_t *a4, int8x16_t a5, uint64_t a6, int a7)
{
  do
  {
    v8 = *a4;
    v9 = a4[1];
    a4 += 2;
    v10 = __OFSUB__(a7, 4);
    a7 -= 4;
    v11 = vshrq_n_u8(v8, 4uLL);
    v12 = vandq_s8(v8, v7);
    v13 = vshrq_n_u8(v9, 4uLL);
    v14 = vandq_s8(v9, v7);
    *result = vqtbl1q_s8(a5, vzip1q_s8(v12, v11));
    v15 = (result + a2);
    *a3 = vqtbl1q_s8(a5, vzip2q_s8(v12, v11));
    v16 = (a3 + a2);
    *v15 = vqtbl1q_s8(a5, vzip1q_s8(v14, v13));
    result = (v15 + a2);
    *v16 = vqtbl1q_s8(a5, vzip2q_s8(v14, v13));
    a3 = (v16 + a2);
  }

  while (!((a7 < 0) ^ v10 | (a7 == 0)));
  return result;
}

int8x16_t *sub_27755CBC4(int8x16_t *result, uint64_t a2, int8x16_t *a3, int8x16_t *a4, int8x16_t a5, uint64_t a6, int a7)
{
  do
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    v11 = a4[3];
    a4 += 4;
    v12 = __OFSUB__(a7, 4);
    a7 -= 4;
    v13 = vshrq_n_u8(v8, 4uLL);
    v14 = vandq_s8(v8, v7);
    v15 = vshrq_n_u8(v9, 4uLL);
    v16 = vandq_s8(v9, v7);
    v17 = vshrq_n_u8(v10, 4uLL);
    v18 = vandq_s8(v10, v7);
    v19 = vshrq_n_u8(v11, 4uLL);
    v20 = vandq_s8(v11, v7);
    *result = vqtbl1q_s8(a5, vzip1q_s8(v14, v13));
    result[1] = vqtbl1q_s8(a5, vzip2q_s8(v14, v13));
    v21 = (result + a2);
    *a3 = vqtbl1q_s8(a5, vzip1q_s8(v16, v15));
    a3[1] = vqtbl1q_s8(a5, vzip2q_s8(v16, v15));
    v22 = (a3 + a2);
    *v21 = vqtbl1q_s8(a5, vzip1q_s8(v18, v17));
    v21[1] = vqtbl1q_s8(a5, vzip2q_s8(v18, v17));
    result = (v21 + a2);
    *v22 = vqtbl1q_s8(a5, vzip1q_s8(v20, v19));
    v22[1] = vqtbl1q_s8(a5, vzip2q_s8(v20, v19));
    a3 = (v22 + a2);
  }

  while (!((a7 < 0) ^ v12 | (a7 == 0)));
  return result;
}

int8x16_t *sub_27755CC44(int8x16_t *result, uint64_t a2, int8x16_t *a3, int8x16_t *a4, int8x16_t a5, uint64_t a6, int a7)
{
  do
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    v11 = a4[3];
    a4 += 4;
    v12 = __OFSUB__(a7, 2);
    a7 -= 2;
    v13 = vshrq_n_u8(v8, 4uLL);
    v14 = vandq_s8(v8, v7);
    v15 = vshrq_n_u8(v9, 4uLL);
    v16 = vandq_s8(v9, v7);
    v17 = vshrq_n_u8(v10, 4uLL);
    v18 = vandq_s8(v10, v7);
    v19 = vshrq_n_u8(v11, 4uLL);
    v20 = vandq_s8(v11, v7);
    *result = vqtbl1q_s8(a5, vzip1q_s8(v14, v13));
    result[1] = vqtbl1q_s8(a5, vzip2q_s8(v14, v13));
    result[2] = vqtbl1q_s8(a5, vzip1q_s8(v16, v15));
    result[3] = vqtbl1q_s8(a5, vzip2q_s8(v16, v15));
    result = (result + a2);
    *a3 = vqtbl1q_s8(a5, vzip1q_s8(v18, v17));
    a3[1] = vqtbl1q_s8(a5, vzip2q_s8(v18, v17));
    a3[2] = vqtbl1q_s8(a5, vzip1q_s8(v20, v19));
    a3[3] = vqtbl1q_s8(a5, vzip2q_s8(v20, v19));
    a3 = (a3 + a2);
  }

  while (!((a7 < 0) ^ v12 | (a7 == 0)));
  return result;
}

uint64_t sub_27755CCC8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7.n128_u64[0] = 0x80008000800080;
  v7.n128_u64[1] = 0x80008000800080;
  return ((&dword_27755CE64 - *(&dword_27755CE64 + __clz(a4) - 26)))(v7, vdupq_n_s16(a7));
}

_DWORD *sub_27755CCF0(_DWORD *result, uint64_t a2, int16x8_t a3, int16x8_t a4, uint64_t a5, uint64_t a6, int a7, int16x8_t *a8, _DWORD *a9)
{
  do
  {
    v9 = *a8;
    v10 = a8[1];
    a8 += 2;
    v11 = vmulq_s16(v9, a4);
    v12 = vmulq_s16(v10, a4);
    *v11.i8 = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v11, vcltzq_s16(v11)), 6uLL), a3));
    *v12.i8 = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v12, vcltzq_s16(v12)), 6uLL), a3));
    *result = v11.i32[0];
    v13 = (result + a2);
    *a9 = v11.i32[1];
    v14 = (a9 + a2);
    v15 = __OFSUB__(a7, 4);
    a7 -= 4;
    *v13 = v12.i32[0];
    result = (v13 + a2);
    *v14 = v12.i32[1];
    a9 = (v14 + a2);
  }

  while (!((a7 < 0) ^ v15 | (a7 == 0)));
  return result;
}

int8x8_t *sub_27755CD40(int8x8_t *result, uint64_t a2, int16x8_t a3, int16x8_t a4, uint64_t a5, uint64_t a6, int a7, int16x8_t *a8, int8x8_t *a9)
{
  do
  {
    v9 = *a8;
    v10 = a8[1];
    v11 = a8[2];
    v12 = a8[3];
    a8 += 4;
    v13 = vmulq_s16(v9, a4);
    v14 = vmulq_s16(v10, a4);
    v15 = vmulq_s16(v11, a4);
    v16 = vmulq_s16(v12, a4);
    *result = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v13, vcltzq_s16(v13)), 6uLL), a3));
    v17 = (result + a2);
    *a9 = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v14, vcltzq_s16(v14)), 6uLL), a3));
    v18 = (a9 + a2);
    v19 = __OFSUB__(a7, 4);
    a7 -= 4;
    *v17 = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v15, vcltzq_s16(v15)), 6uLL), a3));
    result = (v17 + a2);
    *v18 = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v16, vcltzq_s16(v16)), 6uLL), a3));
    a9 = (v18 + a2);
  }

  while (!((a7 < 0) ^ v19 | (a7 == 0)));
  return result;
}

int8x8_t *sub_27755CDC0(int8x8_t *result, uint64_t a2, int16x8_t a3, int16x8_t a4, uint64_t a5, int a6, int a7, int16x8_t *a8, int8x8_t *a9)
{
  v9 = (a8 + 2 * a6);
  v10 = a2 - a6;
  v11 = a6;
  do
  {
    do
    {
      v12 = *a8;
      v13 = a8[1];
      a8 += 2;
      v14 = *v9;
      v15 = v9[1];
      v9 += 2;
      v16 = vmulq_s16(v12, a4);
      v17 = vmulq_s16(v13, a4);
      v18 = vmulq_s16(v14, a4);
      v19 = vmulq_s16(v15, a4);
      v20 = __OFSUB__(a6, 16);
      a6 -= 16;
      *result = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v16, vcltzq_s16(v16)), 6uLL), a3));
      result[1] = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v17, vcltzq_s16(v17)), 6uLL), a3));
      result += 2;
      *a9 = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v18, vcltzq_s16(v18)), 6uLL), a3));
      a9[1] = vqmovun_s16(vaddq_s16(vrshrq_n_s16(vaddq_s16(v19, vcltzq_s16(v19)), 6uLL), a3));
      a9 += 2;
    }

    while (!((a6 < 0) ^ v20 | (a6 == 0)));
    v20 = __OFSUB__(a7, 2);
    a7 -= 2;
    a8 = (a8 + 2 * v11);
    v9 = (v9 + 2 * v11);
    result = (result + v10);
    a9 = (a9 + v10);
    a6 = v11;
  }

  while (!((a7 < 0) ^ v20 | (a7 == 0)));
  return result;
}

_DWORD *sub_27755CE94(_DWORD *a1, uint64_t a2, const float *a3, uint64_t a4, int a5, int16x8_t *a6, _DWORD *a7, double a8, int16x8_t a9)
{
  v9 = vld1_dup_f32(a3);
  v9.i16[0] = vaddlv_u8(v9);
  return sub_27755CCF0(a1, a2, vdupq_lane_s16(vrshr_n_u16(v9, 3uLL), 0), a9, a3, a4, a5, a6, a7);
}

int8x8_t *sub_27755CEA8(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, int a5, int16x8_t *a6, int8x8_t *a7, double a8, int16x8_t a9)
{
  v9 = *a3;
  v9.i16[0] = vaddlv_u8(*a3);
  return sub_27755CD40(a1, a2, vdupq_lane_s16(vrshr_n_u16(v9, 3uLL), 0), a9, a3, a4, a5, a6, a7);
}

int8x8_t *sub_27755CEBC(int8x8_t *a1, uint64_t a2, uint8x16_t *a3, int a4, int a5, int16x8_t *a6, int8x8_t *a7, double a8, int16x8_t a9)
{
  v9 = *a3;
  v9.i16[0] = vaddlvq_u8(*a3);
  return sub_27755CDC0(a1, a2, vdupq_lane_s16(vrshr_n_u16(*v9.i8, 4uLL), 0), a9, a3, a4, a5, a6, a7);
}

int8x8_t *sub_27755CED0(int8x8_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int16x8_t *a6, int8x8_t *a7, double a8, int16x8_t a9)
{
  v9 = *a3;
  v10 = *(a3 + 16);
  v9.i16[0] = vaddlvq_u8(*a3);
  v10.i16[0] = vaddlvq_u8(v10);
  return sub_27755CDC0(a1, a2, vdupq_lane_s16(vrshr_n_u16(vadd_s16(*v9.i8, *v10.i8), 5uLL), 0), a9, a3, a4, a5, a6, a7);
}

uint64_t sub_27755CF30(uint64_t a1, uint64_t a2, const float *a3)
{
  v4 = vld1_dup_f32(a3);
  v4.i16[0] = vaddlv_u8(v4);
  return v3(vdupq_lane_s16(vrshr_n_u16(v4, 3uLL), 0));
}

uint64_t sub_27755CF44(uint64_t a1, uint64_t a2, uint8x8_t *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddlv_u8(*a3);
  return v3(vdupq_lane_s16(vrshr_n_u16(v4, 3uLL), 0));
}

uint64_t sub_27755CF58(uint64_t a1, uint64_t a2, uint8x16_t *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddlvq_u8(*a3);
  return v3(vdupq_lane_s16(vrshr_n_u16(*v4.i8, 4uLL), 0));
}

uint64_t sub_27755CF6C(uint64_t a1, uint64_t a2, uint8x16_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v4.i16[0] = vaddlvq_u8(*a3);
  v5.i16[0] = vaddlvq_u8(v5);
  return v3(vdupq_lane_s16(vrshr_n_u16(vadd_s16(*v4.i8, *v5.i8), 5uLL), 0));
}

uint64_t sub_27755CFE4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddlv_u8(v4);
  return v3(a1, a2, a3 + 5, *v4.i32);
}

_DWORD *sub_27755CFF8(_DWORD *a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5, int16x8_t *a6, _DWORD *a7, int16x4_t a8, int16x8_t a9)
{
  v11 = *a3;
  v11.i16[0] = vaddlv_u8(v11);
  v12 = vshl_u16(vadd_s16(vadd_s16(a8, v9), v11), v10);
  if (a5 != 4)
  {
    v12 = vqdmulh_s16(v12, vdup_n_s16(0x2AAB199Au >> (2 * a5)));
  }

  return sub_27755CCF0(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

uint64_t sub_27755D038(uint64_t a1, uint64_t a2, uint8x8_t *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddlv_u8(*a3);
  return v3(a1, a2, &a3[1] + 1, *v4.i32);
}

int8x8_t *sub_27755D048(int8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, int a5, int16x8_t *a6, int8x8_t *a7, int16x4_t a8, int16x8_t a9)
{
  v11 = *a3;
  v11.i16[0] = vaddlv_u8(*a3);
  v12 = vshl_u16(vadd_s16(vadd_s16(a8, v9), v11), v10);
  if (a5 != 8)
  {
    if (a5 == 32)
    {
      v13 = 6554;
    }

    else
    {
      v13 = 10923;
    }

    v12 = vqdmulh_s16(v12, vdup_n_s16(v13));
  }

  return sub_27755CD40(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

uint64_t sub_27755D084(uint64_t a1, uint64_t a2, uint8x16_t *a3)
{
  v4 = *a3;
  v4.i16[0] = vaddlvq_u8(*a3);
  return v3(a1, a2, &a3[1].i8[1], *v4.i32);
}

int8x8_t *sub_27755D094(int8x8_t *a1, uint64_t a2, uint8x16_t *a3, int a4, int a5, int16x8_t *a6, int8x8_t *a7, int16x4_t a8, int16x8_t a9)
{
  v11 = *a3;
  v11.i16[0] = vaddlvq_u8(*a3);
  v12 = vshl_u16(vadd_s16(vadd_s16(a8, v9), *v11.i8), v10);
  if (a5 != 16)
  {
    if (a5 == 4)
    {
      v13 = 6554;
    }

    else
    {
      v13 = 10923;
    }

    v12 = vqdmulh_s16(v12, vdup_n_s16(v13));
  }

  return sub_27755CDC0(a1, a2, vdupq_lane_s16(v12, 0), a9, a3, a4, a5, a6, a7);
}

uint64_t sub_27755D0D0(uint64_t a1, uint64_t a2, uint8x16_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v4.i16[0] = vaddlvq_u8(*a3);
  v5.i16[0] = vaddlvq_u8(v5);
  return v3(a1, a2, &a3[2].i8[1], COERCE_DOUBLE(vadd_s16(*v4.i8, *v5.i8)));
}

int8x8_t *sub_27755D0E8(int8x8_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int16x8_t *a6, int8x8_t *a7, int16x4_t a8, int16x8_t a9)
{
  v11 = *a3;
  v12 = *(a3 + 16);
  v11.i16[0] = vaddlvq_u8(*a3);
  v12.i16[0] = vaddlvq_u8(v12);
  v13 = vshl_u16(vadd_s16(vadd_s16(vadd_s16(a8, v9), *v11.i8), *v12.i8), v10);
  if (a5 != 32)
  {
    v13 = vqdmulh_s16(v13, vdup_n_s16(0x199A2AABu >> (2 * a5)));
  }

  return sub_27755CDC0(a1, a2, vdupq_lane_s16(v13, 0), a9, a3, a4, a5, a6, a7);
}

int16x8_t *sub_27755D190@<X0>(int16x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W6>, int a6@<W8>)
{
  do
  {
    v11.i64[0] = *a2;
    v10 = (a2 + a3);
    v13.i64[0] = *v6;
    v12 = (v6 + a3);
    v11.i64[1] = *v10;
    a2 = (v10 + a3);
    v13.i64[1] = *v12;
    v6 = (v12 + a3);
    v14 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v11), vpaddlq_u8(v13)), 1uLL);
    v15 = __OFSUB__(a6, 2);
    a6 -= 2;
    *a1++ = v14;
    v7 = vaddq_s16(v7, v14);
  }

  while (!((a6 < 0) ^ v15 | (a6 == 0)));
  v16 = vtrn2q_s64(v14, v14);
  if (a4)
  {
    do
    {
      v15 = __OFSUB__(a4, 4);
      a4 -= 4;
      *a1 = v16;
      a1[1] = v16;
      a1 += 2;
      v7 = vaddq_s16(v7, v16);
      v8 = vaddq_s16(v8, v16);
    }

    while (!((a4 < 0) ^ v15 | (a4 == 0)));
  }

  v17 = vaddq_s16(v7, v8);
  v17.i32[0] = vaddlvq_u16(v17);
  result = (a1 - 8 * a5);
  v19 = vdupq_lane_s16(vrshl_u32(*v17.i8, v9), 0);
  do
  {
    v15 = __OFSUB__(a5, 4);
    a5 -= 4;
    v20 = vsubq_s16(result[1], v19);
    *result = vsubq_s16(*result, v19);
    result[1] = v20;
    result += 2;
  }

  while (!((a5 < 0) ^ v15 | (a5 == 0)));
  return result;
}

int16x8_t *sub_27755D210@<X0>(int16x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W8>, int64x2_t a8@<Q3>)
{
  if (a4)
  {
    do
    {
      v25.i64[0] = *a2;
      v24 = (a2 + a3);
      v27.i64[0] = *v8;
      v26 = (v8 + a3);
      v25.i64[1] = *v24;
      a2 = (v24 + a3);
      v27.i64[1] = *v26;
      v8 = (v26 + a3);
      v28 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v25), vpaddlq_u8(v27)), 1uLL);
      *v27.i8 = vdup_lane_s16(*v28.i8, 3);
      *a8.i8 = vdup_laneq_s16(v28, 7);
      v29 = vtrn2q_s64(v28, v28);
      v22 = __OFSUB__(a7, 2);
      a7 -= 2;
      a1->i64[0] = v28.i64[0];
      a1->i64[1] = v27.i64[0];
      a1[1].i64[0] = v29.i64[0];
      a1[1].i64[1] = a8.i64[0];
      a1 += 2;
      *v9.i8 = vadd_s16(*v9.i8, *v28.i8);
      *v10.i8 = vadd_s16(*v10.i8, *v27.i8);
      *v11.i8 = vadd_s16(*v11.i8, *v29.i8);
      *v12.i8 = vadd_s16(*v12.i8, *a8.i8);
    }

    while (!((a7 < 0) ^ v22 | (a7 == 0)));
    v23 = vtrn1q_s64(v29, a8);
    v21 = v23;
  }

  else
  {
    do
    {
      v15 = *a2;
      v14 = (a2 + a3);
      v17 = *v8;
      v16 = (v8 + a3);
      v18 = *v14;
      a2 = (v14->i64 + a3);
      v19 = *v16;
      v8 = (v16->i64 + a3);
      v20 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v15), vpaddlq_u8(v17)), 1uLL);
      v21 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v18), vpaddlq_u8(v19)), 1uLL);
      v22 = __OFSUB__(a7, 2);
      a7 -= 2;
      *a1 = v20;
      a1[1] = v21;
      a1 += 2;
      v9 = vaddq_s16(v9, v20);
      v10 = vaddq_s16(v10, v21);
    }

    while (!((a7 < 0) ^ v22 | (a7 == 0)));
    v23 = v21;
  }

  if (a5)
  {
    do
    {
      v22 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v23;
      a1[1] = v21;
      v30 = a1 + 2;
      v9 = vaddq_s16(v9, v23);
      v10 = vaddq_s16(v10, v21);
      *v30 = v23;
      v30[1] = v21;
      a1 = v30 + 2;
      v11 = vaddq_s16(v11, v23);
      v12 = vaddq_s16(v12, v21);
    }

    while (!((a5 < 0) ^ v22 | (a5 == 0)));
  }

  v31 = vaddq_s32(vpaddlq_u16(vaddq_s16(v9, v10)), vpaddlq_u16(vaddq_s16(v11, v12)));
  v31.i32[0] = vaddvq_s32(v31);
  result = &a1[-a6];
  v33 = vdupq_lane_s16(vrshl_u32(*v31.i8, v13), 0);
  do
  {
    v22 = __OFSUB__(a6, 4);
    a6 -= 4;
    v34 = vsubq_s16(result[1], v33);
    v35 = vsubq_s16(result[2], v33);
    v36 = vsubq_s16(result[3], v33);
    *result = vsubq_s16(*result, v33);
    result[1] = v34;
    result[2] = v35;
    result[3] = v36;
    result += 4;
  }

  while (!((a6 < 0) ^ v22 | (a6 == 0)));
  return result;
}

void sub_27755D32C(int16x8_t *a1@<X0>, uint8x16_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W8>)
{
  do
  {
    v11 = *a2;
    v12 = a2[1];
    v10 = (a2 + a3);
    v14 = *v5;
    v15 = v5[1];
    v13 = (v5 + a3);
    v16 = *v10;
    v17 = v10[1];
    a2 = (v10 + a3);
    v18 = *v13;
    v19 = v13[1];
    v5 = (v13 + a3);
    v20 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v11), vpaddlq_u8(v14)), 1uLL);
    v21 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v12), vpaddlq_u8(v15)), 1uLL);
    v22 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v16), vpaddlq_u8(v18)), 1uLL);
    v23 = vshlq_n_s16(vaddq_s16(vpaddlq_u8(v17), vpaddlq_u8(v19)), 1uLL);
    v24 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v20;
    a1[1] = v21;
    a1[2] = v22;
    a1[3] = v23;
    a1 += 4;
    v6 = vaddq_s16(v6, v20);
    v7 = vaddq_s16(v7, v21);
    v8 = vaddq_s16(v8, v22);
    v9 = vaddq_s16(v9, v23);
  }

  while (!((a5 < 0) ^ v24 | (a5 == 0)));
  if (a4)
  {
    do
    {
      v24 = __OFSUB__(a4, 4);
      a4 -= 4;
      *a1 = v22;
      a1[1] = v23;
      a1[2] = v22;
      a1[3] = v23;
      v25 = a1 + 4;
      *v25 = v22;
      v25[1] = v23;
      v25[2] = v22;
      v25[3] = v23;
      a1 = v25 + 4;
      v6 = vaddq_s16(vaddq_s16(v6, v22), v22);
      v7 = vaddq_s16(vaddq_s16(v7, v23), v23);
      v8 = vaddq_s16(vaddq_s16(v8, v22), v22);
      v9 = vaddq_s16(vaddq_s16(v9, v23), v23);
    }

    while (!((a4 < 0) ^ v24 | (a4 == 0)));
  }

  JUMPOUT(0x27755D2D4);
}

void sub_27755D5A0(int16x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v8.i64[0] = *a2;
    v7 = (a2 + a3);
    v8.i64[1] = *v4;
    v9 = (v4 + a3);
    v10.i64[0] = *v7;
    a2 = (v7 + a3);
    v10.i64[1] = *v9;
    v4 = (v9 + a3);
    v11 = vshlq_n_s16(vpaddlq_u8(v8), 2uLL);
    v12 = vshlq_n_s16(vpaddlq_u8(v10), 2uLL);
    v13 = __OFSUB__(a4, 4);
    a4 -= 4;
    v5 = vaddq_s16(v5, v11);
    v6 = vaddq_s16(v6, v12);
    *a1 = v11;
    a1[1] = v12;
    a1 += 2;
  }

  while (!((a4 < 0) ^ v13 | (a4 == 0)));
  JUMPOUT(0x27755D1C8);
}

void sub_27755D5E0(int16x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>, int64x2_t a6@<Q4>, int64x2_t a7@<Q6>)
{
  if (a4)
  {
    do
    {
      v24.i64[0] = *a2;
      v23 = (a2 + a3);
      v24.i64[1] = *v7;
      v25 = (v7 + a3);
      v26.i64[0] = *v23;
      a2 = (v23 + a3);
      v26.i64[1] = *v25;
      v7 = (v25 + a3);
      v27 = vshlq_n_s16(vpaddlq_u8(v24), 2uLL);
      v28 = vshlq_n_s16(vpaddlq_u8(v26), 2uLL);
      *a6.i8 = vdup_lane_s16(*v27.i8, 3);
      *a7.i8 = vdup_lane_s16(*v28.i8, 3);
      v29 = vtrn2q_s64(v27, vdupq_laneq_s16(v27, 7));
      v30 = vtrn1q_s64(v27, a6);
      v31 = vtrn2q_s64(v28, vdupq_laneq_s16(v28, 7));
      v32 = vtrn1q_s64(v28, a7);
      v22 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v30;
      a1[1] = v29;
      a1[2] = v32;
      a1[3] = v31;
      a1 += 4;
      v8 = vaddq_s16(v8, v30);
      v9 = vaddq_s16(v9, v29);
      v10 = vaddq_s16(v10, v32);
      v11 = vaddq_s16(v11, v31);
    }

    while (!((a5 < 0) ^ v22 | (a5 == 0)));
  }

  else
  {
    do
    {
      v13 = *a2;
      v12 = (a2 + a3);
      v15 = *v7;
      v14 = (v7 + a3);
      v16 = *v12;
      a2 = (v12->i64 + a3);
      v17 = *v14;
      v7 = (v14->i64 + a3);
      v18 = vshlq_n_s16(vpaddlq_u8(v13), 2uLL);
      v19 = vshlq_n_s16(vpaddlq_u8(v15), 2uLL);
      v20 = vshlq_n_s16(vpaddlq_u8(v16), 2uLL);
      v21 = vshlq_n_s16(vpaddlq_u8(v17), 2uLL);
      v22 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v18;
      a1[1] = v19;
      a1[2] = v20;
      a1[3] = v21;
      a1 += 4;
      v8 = vaddq_s16(v8, v18);
      v9 = vaddq_s16(v9, v19);
      v10 = vaddq_s16(v10, v20);
      v11 = vaddq_s16(v11, v21);
    }

    while (!((a5 < 0) ^ v22 | (a5 == 0)));
  }

  JUMPOUT(0x27755D2B0);
}

void sub_27755D6B4(int16x8_t *a1@<X0>, uint8x16_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v9 = *a2;
    v10 = a2[1];
    a2 = (a2 + a3);
    v11 = *v4;
    v12 = v4[1];
    v4 = (v4 + a3);
    v13 = vshlq_n_s16(vpaddlq_u8(v9), 2uLL);
    v14 = vshlq_n_s16(vpaddlq_u8(v10), 2uLL);
    v15 = vshlq_n_s16(vpaddlq_u8(v11), 2uLL);
    v16 = vshlq_n_s16(vpaddlq_u8(v12), 2uLL);
    v17 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1 += 4;
    v5 = vaddq_s16(v5, v13);
    v6 = vaddq_s16(v6, v14);
    v7 = vaddq_s16(v7, v15);
    v8 = vaddq_s16(v8, v16);
  }

  while (!((a4 < 0) ^ v17 | (a4 == 0)));
  JUMPOUT(0x27755D500);
}

void sub_27755D704(uint64_t a1@<X0>, uint8x16_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, __n128 a5@<Q1>, __n128 a6@<Q3>, int64x2_t a7@<Q4>, int64x2_t a8@<Q5>)
{
  do
  {
    a5.n128_u64[0] = a2[1].u64[0];
    v13 = *a2;
    a2 = (a2 + a3);
    a6.n128_u64[0] = v8[1].u64[0];
    v14 = *v8;
    v8 = (v8 + a3);
    a5.n128_u64[0] = vshl_n_s16(vpaddl_u8(a5.n128_u64[0]), 2uLL);
    v15 = vshlq_n_s16(vpaddlq_u8(v13), 2uLL);
    a6.n128_u64[0] = vshl_n_s16(vpaddl_u8(a6.n128_u64[0]), 2uLL);
    v16 = vshlq_n_s16(vpaddlq_u8(v14), 2uLL);
    *a7.i8 = vdup_lane_s16(a5.n128_u64[0], 3);
    *a8.i8 = vdup_lane_s16(a6.n128_u64[0], 3);
    a5 = vtrn1q_s64(a5, a7);
    a6 = vtrn1q_s64(a6, a8);
    v17 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v15;
    *(a1 + 16) = a5;
    *(a1 + 32) = v16;
    *(a1 + 48) = a6;
    a1 += 64;
    v9 = vaddq_s16(v9, v15);
    v10 = vaddq_s16(v10, a5);
    v11 = vaddq_s16(v11, v16);
    v12 = vaddq_s16(v12, a6);
  }

  while (!((a4 < 0) ^ v17 | (a4 == 0)));
  JUMPOUT(0x27755D500);
}

void sub_27755D76C(int16x8_t *a1@<X0>, uint8x16_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v9 = *a2;
    a2 = (a2 + a3);
    v10 = *v4;
    v4 = (v4 + a3);
    v11 = vshlq_n_s16(vpaddlq_u8(v9), 2uLL);
    v12 = vshlq_n_s16(vpaddlq_u8(v10), 2uLL);
    v13 = vdupq_laneq_s16(v11, 7);
    v14 = vdupq_laneq_s16(v12, 7);
    v15 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = v11;
    a1[1] = v13;
    a1[2] = v12;
    a1[3] = v14;
    a1 += 4;
    v5 = vaddq_s16(v5, v11);
    v6 = vaddq_s16(v6, v13);
    v7 = vaddq_s16(v7, v12);
    v8 = vaddq_s16(v8, v14);
  }

  while (!((a4 < 0) ^ v15 | (a4 == 0)));
  JUMPOUT(0x27755D500);
}

void sub_27755D7B4(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, __n128 a5@<Q0>, __n128 a6@<Q2>)
{
  do
  {
    a5.n128_u64[0] = *a2;
    a2 = (a2 + a3);
    a6.n128_u64[0] = *v6;
    v6 = (v6 + a3);
    a5.n128_u64[0] = vshl_n_s16(vpaddl_u8(a5.n128_u64[0]), 2uLL);
    a6.n128_u64[0] = vshl_n_s16(vpaddl_u8(a6.n128_u64[0]), 2uLL);
    v11 = vdupq_lane_s16(a5.n128_u64[0], 3);
    v12 = vdupq_lane_s16(a6.n128_u64[0], 3);
    a5 = vtrn1q_s64(a5, v11);
    a6 = vtrn1q_s64(a6, v12);
    v13 = __OFSUB__(a4, 2);
    a4 -= 2;
    *a1 = a5;
    *(a1 + 16) = v11;
    *(a1 + 32) = a6;
    *(a1 + 48) = v12;
    a1 += 64;
    v7 = vaddq_s16(v7, a5);
    v8 = vaddq_s16(v8, v11);
    v9 = vaddq_s16(v9, a6);
    v10 = vaddq_s16(v10, v12);
  }

  while (!((a4 < 0) ^ v13 | (a4 == 0)));
  JUMPOUT(0x27755D500);
}

void sub_27755D868(int16x8_t *a1@<X0>, __int32 *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v8.i32[0] = *a2;
    v7 = (a2 + a3);
    v8.i32[1] = *v4;
    v9 = (v4 + a3);
    v10.i32[0] = *v7;
    a2 = (v7 + a3);
    v10.i32[1] = *v9;
    v4 = (v9 + a3);
    v11 = vshll_n_u8(v8, 3uLL);
    v12 = vshll_n_u8(v10, 3uLL);
    v13 = __OFSUB__(a4, 4);
    a4 -= 4;
    v5 = vaddq_s16(v5, v11);
    v6 = vaddq_s16(v6, v12);
    *a1 = v11;
    a1[1] = v12;
    a1 += 2;
  }

  while (!((a4 < 0) ^ v13 | (a4 == 0)));
  JUMPOUT(0x27755D1C8);
}

void sub_27755D8A0(int16x8_t *a1@<X0>, uint8x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  do
  {
    v10 = *a2;
    v9 = (a2 + a3);
    v12 = *v4;
    v11 = (v4 + a3);
    v13 = *v9;
    a2 = (v9 + a3);
    v14 = vshll_n_u8(v10, 3uLL);
    v15 = *v11;
    v4 = (v11 + a3);
    v16 = vshll_n_u8(v12, 3uLL);
    v17 = vshll_n_u8(v13, 3uLL);
    v18 = vshll_n_u8(v15, 3uLL);
    v19 = __OFSUB__(a4, 4);
    a4 -= 4;
    *a1 = v14;
    a1[1] = v16;
    a1[2] = v17;
    a1[3] = v18;
    a1 += 4;
    v5 = vaddq_s16(v5, v14);
    v6 = vaddq_s16(v6, v16);
    v7 = vaddq_s16(v7, v17);
    v8 = vaddq_s16(v8, v18);
  }

  while (!((a4 < 0) ^ v19 | (a4 == 0)));
  JUMPOUT(0x27755D2B0);
}

void sub_27755D8E8(int16x8_t *a1@<X0>, uint8x8_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  if (a4)
  {
    do
    {
      v27 = *a2;
      v26 = (a2 + a3);
      v29 = *v5;
      v28 = (v5 + a3);
      v30 = *v26;
      a2 = (v26 + a3);
      v31 = *v28;
      v5 = (v28 + a3);
      v32 = vshll_n_u8(v27, 3uLL);
      v33 = vshll_n_u8(v29, 3uLL);
      v34 = vshll_n_u8(v30, 3uLL);
      v35 = vshll_n_u8(v31, 3uLL);
      v36 = vdupq_laneq_s16(v32, 7);
      v37 = vdupq_laneq_s16(v33, 7);
      v38 = vdupq_laneq_s16(v34, 7);
      v39 = vdupq_laneq_s16(v35, 7);
      v24 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v32;
      a1[1] = v36;
      a1[2] = v33;
      a1[3] = v37;
      v40 = a1 + 4;
      *v40 = v34;
      v40[1] = v38;
      v40[2] = v35;
      v40[3] = v39;
      a1 = v40 + 4;
      v6 = vaddq_s16(vaddq_s16(v6, v32), v34);
      v7 = vaddq_s16(vaddq_s16(v7, v36), v38);
      v8 = vaddq_s16(vaddq_s16(v8, v33), v35);
      v9 = vaddq_s16(vaddq_s16(v9, v37), v39);
    }

    while (!((a5 < 0) ^ v24 | (a5 == 0)));
  }

  else
  {
    do
    {
      v11 = *a2->i8;
      v10 = (a2 + a3);
      v13 = *v5->i8;
      v12 = (v5 + a3);
      v14 = *v10;
      a2 = &v10->i8[a3];
      v15 = vshll_high_n_u8(v11, 3uLL);
      v16 = vshll_n_u8(*v11.i8, 3uLL);
      v17 = *v12;
      v5 = &v12->i8[a3];
      v18 = vshll_high_n_u8(v13, 3uLL);
      v19 = vshll_n_u8(*v13.i8, 3uLL);
      v20 = vshll_high_n_u8(v14, 3uLL);
      v21 = vshll_n_u8(*v14.i8, 3uLL);
      v22 = vshll_high_n_u8(v17, 3uLL);
      v23 = vshll_n_u8(*v17.i8, 3uLL);
      v24 = __OFSUB__(a5, 4);
      a5 -= 4;
      *a1 = v16;
      a1[1] = v15;
      a1[2] = v19;
      a1[3] = v18;
      v25 = a1 + 4;
      *v25 = v21;
      v25[1] = v20;
      v25[2] = v23;
      v25[3] = v22;
      a1 = v25 + 4;
      v6 = vaddq_s16(vaddq_s16(v6, v16), v21);
      v7 = vaddq_s16(vaddq_s16(v7, v15), v20);
      v8 = vaddq_s16(vaddq_s16(v8, v19), v23);
      v9 = vaddq_s16(vaddq_s16(v9, v18), v22);
    }

    while (!((a5 < 0) ^ v24 | (a5 == 0)));
  }

  JUMPOUT(0x27755D500);
}

void sub_27755D9E4(int16x8_t *a1@<X0>, uint8x16_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W8>)
{
  do
  {
    v10 = *a2;
    v11 = a2[1];
    a2 = (a2 + a3);
    v12 = *v5;
    v13 = v5[1];
    v5 = (v5 + a3);
    v14 = vshll_n_u8(*v10.i8, 3uLL);
    v15 = vshll_high_n_u8(v10, 3uLL);
    v16 = vshll_n_u8(*v11.i8, 3uLL);
    v17 = vshll_high_n_u8(v11, 3uLL);
    v18 = vshll_n_u8(*v12.i8, 3uLL);
    v19 = vshll_high_n_u8(v12, 3uLL);
    v20 = vshll_n_u8(*v13.i8, 3uLL);
    v21 = vshll_high_n_u8(v13, 3uLL);
    v22 = __OFSUB__(a5, 2);
    a5 -= 2;
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v16;
    a1[3] = v17;
    v23 = a1 + 4;
    *v23 = v18;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
    a1 = v23 + 4;
    v6 = vaddq_s16(vaddq_s16(v6, v14), v18);
    v7 = vaddq_s16(vaddq_s16(v7, v15), v19);
    v8 = vaddq_s16(vaddq_s16(v8, v16), v20);
    v9 = vaddq_s16(vaddq_s16(v9, v17), v21);
  }

  while (!((a5 < 0) ^ v22 | (a5 == 0)));
  if (a4)
  {
    do
    {
      v22 = __OFSUB__(a4, 2);
      a4 -= 2;
      *a1 = v18;
      a1[1] = v19;
      a1[2] = v20;
      a1[3] = v21;
      v24 = a1 + 4;
      *v24 = v18;
      v24[1] = v19;
      v24[2] = v20;
      v24[3] = v21;
      a1 = v24 + 4;
      v6 = vaddq_s16(vaddq_s16(v6, v18), v18);
      v7 = vaddq_s16(vaddq_s16(v7, v19), v19);
      v8 = vaddq_s16(vaddq_s16(v8, v20), v20);
      v9 = vaddq_s16(vaddq_s16(v9, v21), v21);
    }

    while (!((a4 < 0) ^ v22 | (a4 == 0)));
  }

  JUMPOUT(0x27755D2F8);
}

uint64_t *sub_27755DBD0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6.i64[0] = 0xFC00FC00FC00FC00;
  v6.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v8.i64[0] = *result;
    v7 = (result + a2);
    v8.i64[1] = *v7;
    v9 = (v7 + a2);
    v11.i64[0] = *v9;
    v10 = (v9 + a2);
    v12 = __OFSUB__(a5, 4);
    a5 -= 4;
    v11.i64[1] = *v10;
    v13 = (v10 + a2 + -4 * a2);
    v14 = vminq_s16(vsqaddq_u16(v8, v5), v6);
    *v13 = v14.i64[0];
    v15 = (v13 + a2);
    v16 = vminq_s16(vsqaddq_u16(v11, v5), v6);
    *v15 = v14.i64[1];
    v17 = (v15 + a2);
    *v17 = v16.i64[0];
    v18 = (v17 + a2);
    *v18 = v16.i64[1];
    result = (v18 + a2);
  }

  while (!((a5 < 0) ^ v12 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27755DC14(uint16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6.i64[0] = 0xFC00FC00FC00FC00;
  v6.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v8 = *result;
    v7 = (result + a2);
    v9 = __OFSUB__(a5, 4);
    a5 -= 4;
    v11 = *v7;
    v10 = (v7 + a2);
    v13 = *v10;
    v12 = (v10 + a2);
    v14 = vsqaddq_u16(*v12, v5);
    v15 = &v12->i8[a2 + -4 * a2];
    *v15 = vminq_s16(vsqaddq_u16(v8, v5), v6);
    v16 = (v15 + a2);
    *v16 = vminq_s16(vsqaddq_u16(v11, v5), v6);
    v17 = (v16 + a2);
    *v17 = vminq_s16(vsqaddq_u16(v13, v5), v6);
    v18 = (v17 + a2);
    *v18 = vminq_s16(v14, v6);
    result = &v18->i8[a2];
  }

  while (!((a5 < 0) ^ v9 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27755DC68(uint16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6.i64[0] = 0xFC00FC00FC00FC00;
  v6.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v8 = *result;
    v9 = result[1];
    v7 = (result + a2);
    v10 = __OFSUB__(a5, 2);
    a5 -= 2;
    v11 = *v7;
    v12 = v7[1];
    v13 = &v7->i8[a2 + -2 * a2];
    *v13 = vminq_s16(vsqaddq_u16(v8, v5), v6);
    v13[1] = vminq_s16(vsqaddq_u16(v9, v5), v6);
    v14 = (v13 + a2);
    *v14 = vminq_s16(vsqaddq_u16(v11, v5), v6);
    v14[1] = vminq_s16(vsqaddq_u16(v12, v5), v6);
    result = &v14->i8[a2];
  }

  while (!((a5 < 0) ^ v10 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27755DCAC(uint16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6.i64[0] = 0xFC00FC00FC00FC00;
  v6.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v7 = __OFSUB__(a5--, 1);
    v8 = vminq_s16(vsqaddq_u16(result[1], v5), v6);
    v9 = vminq_s16(vsqaddq_u16(result[2], v5), v6);
    v10 = vminq_s16(vsqaddq_u16(result[3], v5), v6);
    *result = vminq_s16(vsqaddq_u16(*result, v5), v6);
    result[1] = v8;
    result[2] = v9;
    result[3] = v10;
    result = (result + a2);
  }

  while (!((a5 < 0) ^ v7 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27755DCE4(uint16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6.i64[0] = 0xFC00FC00FC00FC00;
  v6.i64[1] = 0xFC00FC00FC00FC00;
  v7 = a2 - 64;
  do
  {
    v9 = *result;
    v10 = result[1];
    v11 = result[2];
    v12 = result[3];
    v8 = result + 4;
    v13 = __OFSUB__(a5--, 1);
    v14 = *v8;
    v15 = v8[1];
    v16 = v8[2];
    v17 = v8[3];
    v8 -= 4;
    *v8 = vminq_s16(vsqaddq_u16(v9, v5), v6);
    v8[1] = vminq_s16(vsqaddq_u16(v10, v5), v6);
    v8[2] = vminq_s16(vsqaddq_u16(v11, v5), v6);
    v8[3] = vminq_s16(vsqaddq_u16(v12, v5), v6);
    v8 += 4;
    *v8 = vminq_s16(vsqaddq_u16(v14, v5), v6);
    v8[1] = vminq_s16(vsqaddq_u16(v15, v5), v6);
    v8[2] = vminq_s16(vsqaddq_u16(v16, v5), v6);
    v8[3] = vminq_s16(vsqaddq_u16(v17, v5), v6);
    result = (v8 + v7);
  }

  while (!((a5 < 0) ^ v13 | (a5 == 0)));
  return result;
}

void sub_27755DE78(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  v3 = a3 + 2;
  *v3 = 0u;
  v3[1] = 0u;
  JUMPOUT(0x27755DF90);
}

char *sub_27755DF24(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, _OWORD *))
{
  *a3 = 0u;
  a3[1] = 0u;
  v6 = a6(a1, a2, a3 + 2);
  *v7 = v8;
  v7[1] = v9;
  v11 = v10(v6);
  v14.i64[0] = *v11;
  v13 = (v11 + v12);
  v14.i64[1] = *v13;
  v15 = (v13 + v12);
  v17.i64[1] = v16;
  v19.i64[1] = v18;
  v21.i64[0] = *v15;
  v20 = (v15 + v12);
  v21.i64[1] = *v20;
  v23 = vdupq_n_s16(v22);
  v24 = (v20 + v12 + -4 * v12);
  v25 = vminq_s16(vsqaddq_u16(v14, vrshrq_n_s16(v17, 4uLL)), v23);
  *v24 = v25.i64[0];
  v26 = (v24 + v12);
  v27 = vminq_s16(vsqaddq_u16(v21, vrshrq_n_s16(v19, 4uLL)), v23);
  *v26 = v25.i64[1];
  v28 = (v26 + v12);
  *v28 = v27.i64[0];
  v29 = (v28 + v12);
  *v29 = v27.i64[1];
  return v29 + v12;
}

char *sub_27755DFBC(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    JUMPOUT(0x27755DF90);
  }

  return sub_27755DF24(a1, a2, a3, a4, a5, sub_27755DD4C);
}

char *sub_27755E598(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 0uLL;
  v7 = 2;
  if (a4 >= v5)
  {
    a3[1] = 0uLL;
    a3[3] = 0uLL;
    a3[5] = 0uLL;
    a3[7] = 0uLL;
    a3[9] = 0uLL;
    a3[11] = 0uLL;
    a3[13] = 0uLL;
    a3[15] = 0uLL;
    a1 = a5();
  }

  *a3 = v6;
  v8 = &a3[v7];
  *v8 = v6;
  v9 = &v8[v7];
  *v9 = v6;
  v10 = &v9[v7];
  *v10 = v6;
  v11 = &v10[v7];
  *v11 = v6;
  v12 = &v11[v7];
  *v12 = v6;
  v13 = &v12[v7];
  *v13 = v6;
  v13[v7] = v6;
  v14 = (a5)(a1);
  v16 = v15(v14);
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  v20 = (v16 + v18 + v18);
  v23 = *v20;
  v22 = (v20 + v18);
  v26 = *v22;
  v25 = (v22 + v18);
  v28 = vminq_s16(vsqaddq_u16(*v16, vrshrq_n_s16(v19, 4uLL)), v17);
  v30 = *v25;
  v29 = (v25 + v18);
  v32 = vminq_s16(vsqaddq_u16(*(v16 + v18), vrshrq_n_s16(v21, 4uLL)), v17);
  *v16 = v28;
  v33 = &v16->i8[v18];
  v35 = *v29;
  v34 = (v29 + v18);
  v37 = vminq_s16(vsqaddq_u16(v23, vrshrq_n_s16(v24, 4uLL)), v17);
  *v33 = v32;
  v38 = (v33 + v18);
  v39 = *v34;
  v41 = vminq_s16(vsqaddq_u16(v26, vrshrq_n_s16(v27, 4uLL)), v17);
  *v38 = v37;
  v42 = (v38 + v18);
  v43 = *(v34 + v18);
  *v42 = v41;
  v45 = (v42 + v18);
  *v45 = vminq_s16(vsqaddq_u16(v30, vrshrq_n_s16(v31, 4uLL)), v17);
  v46 = (v45 + v18);
  *v46 = vminq_s16(vsqaddq_u16(v35, vrshrq_n_s16(v36, 4uLL)), v17);
  v47 = (v46 + v18);
  *v47 = vminq_s16(vsqaddq_u16(v39, vrshrq_n_s16(v40, 4uLL)), v17);
  v48 = (v47 + v18);
  *v48 = vminq_s16(vsqaddq_u16(v43, vrshrq_n_s16(v44, 4uLL)), v17);
  return v48 + v18;
}

uint16x8_t *sub_27755E788(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27755E598(a1, a2, a3, a4, sub_27755E140);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DC14(a1, a2, a3, a4, 8);
}

char *sub_27755E938(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void))
{
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  v5 = a3 + 4;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v6 = a5();
  v8 = v7(v6);
  v9.i64[0] = 0xFC00FC00FC00FC00;
  v9.i64[1] = 0xFC00FC00FC00FC00;
  v12 = (v8 + v10 + v10);
  v14 = *v12;
  v16 = *(v12 + v10);
  v18 = vminq_s16(vsqaddq_u16(*(v8 + v10), vrshrq_n_s16(v13, 4uLL)), v9);
  *v8 = vminq_s16(vsqaddq_u16(*v8, vrshrq_n_s16(v11, 4uLL)), v9);
  v19 = &v8->i8[v10];
  *v19 = v18;
  v20 = (v19 + v10);
  *v20 = vminq_s16(vsqaddq_u16(v14, vrshrq_n_s16(v15, 4uLL)), v9);
  v21 = (v20 + v10);
  *v21 = vminq_s16(vsqaddq_u16(v16, vrshrq_n_s16(v17, 4uLL)), v9);
  return v21 + v10;
}

char *sub_27755EA54(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 0uLL;
  v7 = 2;
  if (a4 >= v5)
  {
    a3[1] = 0uLL;
    a3[3] = 0uLL;
    a3[5] = 0uLL;
    a3[7] = 0uLL;
    a1 = a5();
  }

  *a3 = v6;
  v8 = &a3[v7];
  *v8 = v6;
  v9 = &v8[v7];
  *v9 = v6;
  v9[v7] = v6;
  v10 = (a5)(a1);
  v12 = v11(v10);
  v13.i64[0] = 0xFC00FC00FC00FC00;
  v13.i64[1] = 0xFC00FC00FC00FC00;
  v15.i64[0] = *v12;
  v17.i64[1] = v16;
  v15.i64[1] = *(v12 + v14);
  v18 = (v12 + v14 + v14);
  v20.i64[0] = *v18;
  v19 = (v18 + v14);
  v22.i64[1] = v21;
  v20.i64[1] = *v19;
  v23 = (v19 + v14);
  v25.i64[0] = *v23;
  v24 = (v23 + v14);
  v27.i64[1] = v26;
  v25.i64[1] = *v24;
  v28 = (v24 + v14);
  v29.i64[0] = *v28;
  v31.i64[1] = v30;
  v29.i64[1] = *(v28 + v14);
  v32 = vminq_s16(vsqaddq_u16(v15, vrshrq_n_s16(v17, 4uLL)), v13);
  *v12 = v32.i64[0];
  v33 = (v12 + v14);
  v34 = vminq_s16(vsqaddq_u16(v20, vrshrq_n_s16(v22, 4uLL)), v13);
  *v33 = v32.i64[1];
  v35 = (v33 + v14);
  *v35 = v34.i64[0];
  v36 = (v35 + v14);
  v37 = vminq_s16(vsqaddq_u16(v25, vrshrq_n_s16(v27, 4uLL)), v13);
  *v36 = v34.i64[1];
  v38 = (v36 + v14);
  *v38 = v37.i64[0];
  v39 = (v38 + v14);
  v40 = vminq_s16(vsqaddq_u16(v29, vrshrq_n_s16(v31, 4uLL)), v13);
  *v39 = v37.i64[1];
  v41 = (v39 + v14);
  *v41 = v40.i64[0];
  v42 = (v41 + v14);
  *v42 = v40.i64[1];
  return v42 + v14;
}

uint64_t *sub_27755EBDC(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27755EA54(a1, a2, a3, a4, sub_27755DD4C);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DBD0(a1, a2, a3, a4, 8);
}

uint16x8_t *sub_27755ED90(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27755E938(a1, a2, a3, a4, sub_27755E140);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DC14(a1, a2, a3, a4, 4);
}

void sub_27755FB5C(void (*a1)(void)@<X4>, _OWORD *a2@<X7>, uint64_t a3@<X8>)
{
  *a2 = 0u;
  v3 = (a2 + a3);
  *v3 = 0u;
  v4 = (v3 + a3);
  *v4 = 0u;
  v5 = (v4 + a3);
  *v5 = 0u;
  v6 = (v5 + a3);
  *v6 = 0u;
  v7 = (v6 + a3);
  *v7 = 0u;
  v8 = (v7 + a3);
  *v8 = 0u;
  v9 = (v8 + a3);
  *v9 = 0u;
  v10 = (v9 + a3);
  *v10 = 0u;
  v11 = (v10 + a3);
  *v11 = 0u;
  v12 = (v11 + a3);
  *v12 = 0u;
  v13 = (v12 + a3);
  *v13 = 0u;
  v14 = (v13 + a3);
  *v14 = 0u;
  v15 = (v14 + a3);
  *v15 = 0u;
  v16 = (v15 + a3);
  *v16 = 0u;
  *(v16 + a3) = 0u;
  a1();
  JUMPOUT(0x27755FD40);
}

uint64_t sub_27755FC74@<X0>(uint64_t (*a1)(void)@<X4>, _OWORD *a2@<X7>, uint64_t a3@<X8>)
{
  *a2 = 0u;
  v3 = (a2 + a3);
  *v3 = 0u;
  v4 = (v3 + a3);
  *v4 = 0u;
  v5 = (v4 + a3);
  *v5 = 0u;
  v6 = (v5 + a3);
  *v6 = 0u;
  v7 = (v6 + a3);
  *v7 = 0u;
  v8 = (v7 + a3);
  *v8 = 0u;
  v9 = (v8 + a3);
  *v9 = 0u;
  v10 = (v9 + a3);
  *v10 = 0u;
  v11 = (v10 + a3);
  *v11 = 0u;
  v12 = (v11 + a3);
  *v12 = 0u;
  v13 = (v12 + a3);
  *v13 = 0u;
  v14 = (v13 + a3);
  *v14 = 0u;
  v15 = (v14 + a3);
  *v15 = 0u;
  v16 = (v15 + a3);
  *v16 = 0u;
  *(v16 + a3) = 0u;
  result = a1();
  v23 = vqrshrn_high_n_s32(vqrshrn_n_s32(v18, 2uLL), v22, 2uLL);
  v25 = vqrshrn_high_n_s32(vqrshrn_n_s32(v19, 2uLL), v24, 2uLL);
  v27 = vqrshrn_high_n_s32(vqrshrn_n_s32(v20, 2uLL), v26, 2uLL);
  v29 = vqrshrn_high_n_s32(vqrshrn_n_s32(v21, 2uLL), v28, 2uLL);
  v35 = vqrshrn_high_n_s32(vqrshrn_n_s32(v30, 2uLL), v34, 2uLL);
  v37 = vqrshrn_high_n_s32(vqrshrn_n_s32(v31, 2uLL), v36, 2uLL);
  v39 = vqrshrn_high_n_s32(vqrshrn_n_s32(v32, 2uLL), v38, 2uLL);
  v41 = vqrshrn_high_n_s32(vqrshrn_n_s32(v33, 2uLL), v40, 2uLL);
  v42 = vtrn1q_s16(v23, v25);
  v43 = vtrn2q_s16(v23, v25);
  v44 = vtrn1q_s16(v27, v29);
  v45 = vtrn2q_s16(v27, v29);
  v46 = vtrn1q_s32(v42, v44);
  v47 = vtrn2q_s32(v42, v44);
  v48 = vtrn1q_s32(v43, v45);
  v49 = vtrn2q_s32(v43, v45);
  v50 = vtrn1q_s16(v35, v37);
  v51 = vtrn2q_s16(v35, v37);
  v52 = vtrn1q_s16(v39, v41);
  v53 = vtrn2q_s16(v39, v41);
  *v54++ = v46;
  *v54++ = vtrn1q_s32(v50, v52);
  *v54++ = v48;
  *v54++ = vtrn1q_s32(v51, v53);
  *v54++ = v47;
  *v54++ = vtrn2q_s32(v50, v52);
  *v54 = v49;
  v54[1] = vtrn2q_s32(v51, v53);
  return result;
}

uint64_t sub_27755FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  result = a6();
  v7.i64[0] = 0xFC00FC00FC00FC00;
  v7.i64[1] = 0xFC00FC00FC00FC00;
  v11 = (v9 + v8 + v8);
  v14 = *v11;
  v13 = (v11 + v8);
  v17 = *v13;
  v16 = (v13 + v8);
  v19 = vminq_s16(vsqaddq_u16(*v9, vrshrq_n_s16(v10, 4uLL)), v7);
  v21 = *v16;
  v20 = (v16 + v8);
  v23 = vminq_s16(vsqaddq_u16(*(v9 + v8), vrshrq_n_s16(v12, 4uLL)), v7);
  *v9 = v19;
  v24 = &v9->i8[v8];
  v26 = *v20;
  v25 = (v20 + v8);
  v28 = vminq_s16(vsqaddq_u16(v14, vrshrq_n_s16(v15, 4uLL)), v7);
  *v24 = v23;
  v29 = (v24 + v8);
  v31 = *v25;
  v30 = (v25 + v8);
  v33 = vminq_s16(vsqaddq_u16(v17, vrshrq_n_s16(v18, 4uLL)), v7);
  *v29 = v28;
  v34 = (v29 + v8);
  v36 = *v30;
  v35 = (v30 + v8);
  v38 = vminq_s16(vsqaddq_u16(v21, vrshrq_n_s16(v22, 4uLL)), v7);
  *v34 = v33;
  v39 = (v34 + v8);
  v41 = *v35;
  v40 = (v35 + v8);
  v43 = vminq_s16(vsqaddq_u16(v26, vrshrq_n_s16(v27, 4uLL)), v7);
  *v39 = v38;
  v44 = (v39 + v8);
  v46 = *v40;
  v45 = (v40 + v8);
  v48 = vminq_s16(vsqaddq_u16(v31, vrshrq_n_s16(v32, 4uLL)), v7);
  *v44 = v43;
  v49 = (v44 + v8);
  v51 = *v45;
  v50 = (v45 + v8);
  v53 = vminq_s16(vsqaddq_u16(v36, vrshrq_n_s16(v37, 4uLL)), v7);
  *v49 = v48;
  v54 = (v49 + v8);
  v56 = *v50;
  v55 = (v50 + v8);
  v58 = vminq_s16(vsqaddq_u16(v41, vrshrq_n_s16(v42, 4uLL)), v7);
  *v54 = v53;
  v59 = (v54 + v8);
  v61 = *v55;
  v60 = (v55 + v8);
  v63 = vminq_s16(vsqaddq_u16(v46, vrshrq_n_s16(v47, 4uLL)), v7);
  *v59 = v58;
  v64 = (v59 + v8);
  v66 = *v60;
  v65 = (v60 + v8);
  v68 = vminq_s16(vsqaddq_u16(v51, vrshrq_n_s16(v52, 4uLL)), v7);
  *v64 = v63;
  v69 = (v64 + v8);
  v70 = *v65;
  v72 = vminq_s16(vsqaddq_u16(v56, vrshrq_n_s16(v57, 4uLL)), v7);
  *v69 = v68;
  v73 = (v69 + v8);
  v74 = *(v65 + v8);
  *v73 = v72;
  v76 = (v73 + v8);
  *v76 = vminq_s16(vsqaddq_u16(v61, vrshrq_n_s16(v62, 4uLL)), v7);
  v77 = (v76 + v8);
  *v77 = vminq_s16(vsqaddq_u16(v66, vrshrq_n_s16(v67, 4uLL)), v7);
  v78 = (v77 + v8);
  *v78 = vminq_s16(vsqaddq_u16(v70, vrshrq_n_s16(v71, 4uLL)), v7);
  *(v78 + v8) = vminq_s16(vsqaddq_u16(v74, vrshrq_n_s16(v75, 4uLL)), v7);
  return result;
}

uint64_t sub_27755FF38(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = sub_27755FC74(a5, a3, 64);
  v11 = &v25;
  v12 = 12;
  if (v8 < v13 || (v5 = sub_27755FC74(v9, v7 + 1, 64), v11 = &v26, v12 = 8, v8 < v14) || (v5 = sub_27755FC74(v9, v7 + 2, 64), v11 = &v27, v12 = 4, v8 < v15))
  {
    do
    {
      v16 = __OFSUB__(v12, 4);
      v12 -= 4;
      *v11 = 0uLL;
      *(v11 + 1) = 0uLL;
      *(v11 + 2) = 0uLL;
      *(v11 + 3) = 0uLL;
      v17 = v11 + 64;
      *v17 = 0uLL;
      v17[1] = 0uLL;
      v17[2] = 0uLL;
      v17[3] = 0uLL;
      v11 = (v17 + 4);
    }

    while (!((v12 < 0) ^ v16 | (v12 == 0)));
  }

  else
  {
    v5 = sub_27755FC74(v9, v7 + 3, 64);
  }

  v18 = sub_27755FDA4(v5, v6, v7, v8, v9, v10);
  return sub_27755FDA4(v18, v19, v20, v21, v22, v23);
}

uint16x8_t *sub_27755FFFC(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27755FF38(a1, a2, a3, a4, sub_27755EF04);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DC68(a1, a2, a3, a4, 16);
}

uint16x8_t *sub_27756014C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, _OWORD *))
{
  *a3 = 0u;
  v5 = a3 + 1;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5++ = 0u;
  *v5 = 0u;
  v6 = a5(a1, a2, v5 + 1);
  v8 = v7(v6);
  v9.i64[0] = 0xFC00FC00FC00FC00;
  v9.i64[1] = 0xFC00FC00FC00FC00;
  v12 = (v8 + v10 + v10);
  v15 = *(v12 + v10);
  v17 = vsqaddq_u16(*v12, vrshrq_n_s16(v14, 4uLL));
  v18 = vminq_s16(vsqaddq_u16(*(v8 + v10), vrshrq_n_s16(v13, 4uLL)), v9);
  *v8 = vminq_s16(vsqaddq_u16(*v8, vrshrq_n_s16(v11, 4uLL)), v9);
  *(v8 + v10) = v18;
  *v12 = vminq_s16(v17, v9);
  *(v12 + v10) = vminq_s16(vsqaddq_u16(v15, vrshrq_n_s16(v16, 4uLL)), v9);
  result = v19();
  v21.i64[0] = 0xFC00FC00FC00FC00;
  v21.i64[1] = 0xFC00FC00FC00FC00;
  v23 = (result + v22 + 16);
  v26 = *v23;
  v25 = (v23 + v22);
  v28 = *v25;
  v30 = *(v25 + v22);
  result[1] = vminq_s16(vsqaddq_u16(result[1], vrshrq_n_s16(v24, 4uLL)), v21);
  v32 = &result[1].i8[v22];
  *v32 = vminq_s16(vsqaddq_u16(v26, vrshrq_n_s16(v27, 4uLL)), v21);
  v33 = (v32 + v22);
  *v33 = vminq_s16(vsqaddq_u16(v28, vrshrq_n_s16(v29, 4uLL)), v21);
  *(v33 + v22) = vminq_s16(vsqaddq_u16(v30, vrshrq_n_s16(v31, 4uLL)), v21);
  return result;
}

char *sub_27756031C(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 4;
  v7 = v5[1];
  if (a4 >= v5[2])
  {
    a3[3] = 0u;
    a3[7] = 0u;
    a3[11] = 0u;
    a3[15] = 0u;
    a1 = a5();
  }

  v8 = a4 < v7;
  v9 = *v5;
  if (!v8)
  {
    a3[2] = 0u;
    v10 = &a3[v6 + 2];
    *v10 = 0u;
    v11 = &v10[v6];
    *v11 = 0u;
    v11[v6] = 0u;
    a1 = (a5)(a1);
  }

  if (a4 >= v9)
  {
    a3[1] = 0u;
    v12 = &a3[v6 + 1];
    *v12 = 0u;
    v13 = &v12[v6];
    *v13 = 0u;
    v13[v6] = 0u;
    a1 = (a5)(a1);
  }

  *a3 = 0u;
  v14 = &a3[v6];
  *v14 = 0u;
  v15 = &v14[v6];
  *v15 = 0u;
  v15[v6] = 0u;
  v16 = (a5)(a1);
  v18 = v17(v16);
  v19.i64[0] = 0xFC00FC00FC00FC00;
  v19.i64[1] = 0xFC00FC00FC00FC00;
  v21.i64[0] = *v18;
  v23.i64[1] = v22;
  v21.i64[1] = *(v18 + v20);
  v24 = (v18 + v20 + v20);
  v26.i64[0] = *v24;
  v25 = (v24 + v20);
  v28.i64[1] = v27;
  v26.i64[1] = *v25;
  v29 = (v25 + v20);
  v31.i64[0] = *v29;
  v30 = (v29 + v20);
  v33.i64[1] = v32;
  v31.i64[1] = *v30;
  v34 = (v30 + v20);
  v36.i64[0] = *v34;
  v35 = (v34 + v20);
  v38.i64[1] = v37;
  v36.i64[1] = *v35;
  v39 = (v35 + v20);
  v41.i64[0] = *v39;
  v40 = (v39 + v20);
  v43.i64[1] = v42;
  v41.i64[1] = *v40;
  v44 = (v40 + v20);
  v45 = vminq_s16(vsqaddq_u16(v21, vrshrq_n_s16(v23, 4uLL)), v19);
  v47.i64[0] = *v44;
  v46 = (v44 + v20);
  v49.i64[1] = v48;
  v47.i64[1] = *v46;
  v50 = (v46 + v20);
  *v18 = v45.i64[0];
  v51 = (v18 + v20);
  v52 = vminq_s16(vsqaddq_u16(v26, vrshrq_n_s16(v28, 4uLL)), v19);
  *v51 = v45.i64[1];
  v53 = (v51 + v20);
  v55.i64[0] = *v50;
  v54 = (v50 + v20);
  v57.i64[1] = v56;
  v55.i64[1] = *v54;
  v58 = (v54 + v20);
  *v53 = v52.i64[0];
  v59 = (v53 + v20);
  v60 = vminq_s16(vsqaddq_u16(v31, vrshrq_n_s16(v33, 4uLL)), v19);
  *v59 = v52.i64[1];
  v61 = (v59 + v20);
  v62.i64[0] = *v58;
  v64.i64[1] = v63;
  v62.i64[1] = *(v58 + v20);
  *v61 = v60.i64[0];
  v65 = (v61 + v20);
  v66 = vminq_s16(vsqaddq_u16(v36, vrshrq_n_s16(v38, 4uLL)), v19);
  *v65 = v60.i64[1];
  v67 = (v65 + v20);
  *v67 = v66.i64[0];
  v68 = (v67 + v20);
  v69 = vminq_s16(vsqaddq_u16(v41, vrshrq_n_s16(v43, 4uLL)), v19);
  *v68 = v66.i64[1];
  v70 = (v68 + v20);
  *v70 = v69.i64[0];
  v71 = (v70 + v20);
  v72 = vminq_s16(vsqaddq_u16(v47, vrshrq_n_s16(v49, 4uLL)), v19);
  *v71 = v69.i64[1];
  v73 = (v71 + v20);
  *v73 = v72.i64[0];
  v74 = (v73 + v20);
  v75 = vminq_s16(vsqaddq_u16(v55, vrshrq_n_s16(v57, 4uLL)), v19);
  *v74 = v72.i64[1];
  v76 = (v74 + v20);
  *v76 = v75.i64[0];
  v77 = (v76 + v20);
  v78 = vminq_s16(vsqaddq_u16(v62, vrshrq_n_s16(v64, 4uLL)), v19);
  *v77 = v75.i64[1];
  v79 = (v77 + v20);
  *v79 = v78.i64[0];
  v80 = (v79 + v20);
  *v80 = v78.i64[1];
  return v80 + v20;
}

uint64_t *sub_277560600(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27756031C(a1, a2, a3, a4, sub_27755DD4C);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DBD0(a1, a2, a3, a4, 16);
}

uint16x8_t *sub_2775607B0(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_27756014C(a1, a2, a3, a4, sub_27755EF04);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DC68(a1, a2, a3, a4, 4);
}

char *sub_2775608E0(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 2;
  if (a4 >= v5)
  {
    a3[1] = 0u;
    a3[3] = 0u;
    a3[5] = 0u;
    a3[7] = 0u;
    a3[9] = 0u;
    a3[11] = 0u;
    a3[13] = 0u;
    a3[15] = 0u;
    a3[17] = 0u;
    a3[19] = 0u;
    a3[21] = 0u;
    a3[23] = 0u;
    a3[25] = 0u;
    a3[27] = 0u;
    a3[29] = 0u;
    a3[31] = 0u;
    a1 = a5();
  }

  *a3 = 0u;
  v7 = &a3[v6];
  *v7 = 0u;
  v8 = &v7[v6];
  *v8 = 0u;
  v9 = &v8[v6];
  *v9 = 0u;
  v10 = &v9[v6];
  *v10 = 0u;
  v11 = &v10[v6];
  *v11 = 0u;
  v12 = &v11[v6];
  *v12 = 0u;
  v13 = &v12[v6];
  *v13 = 0u;
  v14 = &v13[v6];
  *v14 = 0u;
  v15 = &v14[v6];
  *v15 = 0u;
  v16 = &v15[v6];
  *v16 = 0u;
  v17 = &v16[v6];
  *v17 = 0u;
  v18 = &v17[v6];
  *v18 = 0u;
  v19 = &v18[v6];
  *v19 = 0u;
  v20 = &v19[v6];
  *v20 = 0u;
  v20[v6] = 0u;
  v21 = (a5)(a1);
  v23 = v22(v21);
  v24.i64[0] = 0xFC00FC00FC00FC00;
  v24.i64[1] = 0xFC00FC00FC00FC00;
  v27 = (v23 + v25 + v25);
  v30 = *v27;
  v29 = (v27 + v25);
  v33 = *v29;
  v32 = (v29 + v25);
  v35 = vminq_s16(vsqaddq_u16(*v23, vrshrq_n_s16(v26, 4uLL)), v24);
  v37 = *v32;
  v36 = (v32 + v25);
  v39 = vminq_s16(vsqaddq_u16(*(v23 + v25), vrshrq_n_s16(v28, 4uLL)), v24);
  *v23 = v35;
  v41 = *v36;
  v40 = (v36 + v25);
  v43 = vminq_s16(vsqaddq_u16(v30, vrshrq_n_s16(v31, 4uLL)), v24);
  *(v23 + v25) = v39;
  v44 = &v23->i8[v25 + v25];
  v45 = *v40;
  v47 = vminq_s16(vsqaddq_u16(v33, vrshrq_n_s16(v34, 4uLL)), v24);
  *v44 = v43;
  v48 = (v44 + v25);
  v49 = *(v40 + v25);
  *v48 = v47;
  v51 = (v48 + v25);
  *v51 = vminq_s16(vsqaddq_u16(v37, vrshrq_n_s16(v38, 4uLL)), v24);
  v52 = (v51 + v25);
  *v52 = vminq_s16(vsqaddq_u16(v41, vrshrq_n_s16(v42, 4uLL)), v24);
  v53 = (v52 + v25);
  *v53 = vminq_s16(vsqaddq_u16(v45, vrshrq_n_s16(v46, 4uLL)), v24);
  *(v53 + v25) = vminq_s16(vsqaddq_u16(v49, vrshrq_n_s16(v50, 4uLL)), v24);
  v55 = (v54() + 16);
  v56.i64[0] = 0xFC00FC00FC00FC00;
  v56.i64[1] = 0xFC00FC00FC00FC00;
  v59 = (v55 + v57 + v57);
  v62 = *v59;
  v61 = (v59 + v57);
  v65 = *v61;
  v64 = (v61 + v57);
  v67 = vminq_s16(vsqaddq_u16(*v55, vrshrq_n_s16(v58, 4uLL)), v56);
  v69 = *v64;
  v68 = (v64 + v57);
  v71 = vminq_s16(vsqaddq_u16(*(v55 + v57), vrshrq_n_s16(v60, 4uLL)), v56);
  *v55 = v67;
  v72 = &v55->i8[v57];
  v74 = *v68;
  v73 = (v68 + v57);
  v76 = vminq_s16(vsqaddq_u16(v62, vrshrq_n_s16(v63, 4uLL)), v56);
  *v72 = v71;
  v77 = (v72 + v57);
  v78 = *v73;
  v80 = vminq_s16(vsqaddq_u16(v65, vrshrq_n_s16(v66, 4uLL)), v56);
  *v77 = v76;
  v81 = (v77 + v57);
  v82 = *(v73 + v57);
  *v81 = v80;
  v84 = (v81 + v57);
  *v84 = vminq_s16(vsqaddq_u16(v69, vrshrq_n_s16(v70, 4uLL)), v56);
  v85 = (v84 + v57);
  *v85 = vminq_s16(vsqaddq_u16(v74, vrshrq_n_s16(v75, 4uLL)), v56);
  v86 = (v85 + v57);
  *v86 = vminq_s16(vsqaddq_u16(v78, vrshrq_n_s16(v79, 4uLL)), v56);
  v87 = (v86 + v57);
  *v87 = vminq_s16(vsqaddq_u16(v82, vrshrq_n_s16(v83, 4uLL)), v56);
  return v87 + v57;
}

char *sub_277560D6C(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, uint64_t (*a5)(void))
{
  v6 = 4;
  v7 = v5[1];
  if (a4 >= v5[2])
  {
    a3[3] = 0u;
    a3[7] = 0u;
    a3[11] = 0u;
    a3[15] = 0u;
    a3[19] = 0u;
    a3[23] = 0u;
    a3[27] = 0u;
    a3[31] = 0u;
    a1 = a5();
  }

  v8 = a4 < v7;
  v9 = *v5;
  if (!v8)
  {
    a3[2] = 0u;
    v10 = &a3[v6 + 2];
    *v10 = 0u;
    v11 = &v10[v6];
    *v11 = 0u;
    v12 = &v11[v6];
    *v12 = 0u;
    v13 = &v12[v6];
    *v13 = 0u;
    v14 = &v13[v6];
    *v14 = 0u;
    v15 = &v14[v6];
    *v15 = 0u;
    v15[v6] = 0u;
    a1 = (a5)(a1);
  }

  if (a4 >= v9)
  {
    a3[1] = 0u;
    v16 = &a3[v6 + 1];
    *v16 = 0u;
    v17 = &v16[v6];
    *v17 = 0u;
    v18 = &v17[v6];
    *v18 = 0u;
    v19 = &v18[v6];
    *v19 = 0u;
    v20 = &v19[v6];
    *v20 = 0u;
    v21 = &v20[v6];
    *v21 = 0u;
    v21[v6] = 0u;
    a1 = (a5)(a1);
  }

  *a3 = 0u;
  v22 = &a3[v6];
  *v22 = 0u;
  v23 = &v22[v6];
  *v23 = 0u;
  v24 = &v23[v6];
  *v24 = 0u;
  v25 = &v24[v6];
  *v25 = 0u;
  v26 = &v25[v6];
  *v26 = 0u;
  v27 = &v26[v6];
  *v27 = 0u;
  v27[v6] = 0u;
  v28 = (a5)(a1);
  v30 = v29(v28);
  v31.i64[0] = 0xFC00FC00FC00FC00;
  v31.i64[1] = 0xFC00FC00FC00FC00;
  v34 = (v30 + v32 + v32);
  v37 = *v34;
  v36 = (v34 + v32);
  v40 = *v36;
  v39 = (v36 + v32);
  v42 = vminq_s16(vsqaddq_u16(*v30, vrshrq_n_s16(v33, 4uLL)), v31);
  v44 = *v39;
  v43 = (v39 + v32);
  v46 = vminq_s16(vsqaddq_u16(*(v30 + v32), vrshrq_n_s16(v35, 4uLL)), v31);
  *v30 = v42;
  v47 = &v30->i8[v32];
  v49 = *v43;
  v48 = (v43 + v32);
  v51 = vminq_s16(vsqaddq_u16(v37, vrshrq_n_s16(v38, 4uLL)), v31);
  *v47 = v46;
  v52 = (v47 + v32);
  v54 = *v48;
  v53 = (v48 + v32);
  v56 = vminq_s16(vsqaddq_u16(v40, vrshrq_n_s16(v41, 4uLL)), v31);
  *v52 = v51;
  v57 = (v52 + v32);
  v59 = *v53;
  v58 = (v53 + v32);
  v61 = vminq_s16(vsqaddq_u16(v44, vrshrq_n_s16(v45, 4uLL)), v31);
  *v57 = v56;
  v62 = (v57 + v32);
  v64 = *v58;
  v63 = (v58 + v32);
  v66 = vminq_s16(vsqaddq_u16(v49, vrshrq_n_s16(v50, 4uLL)), v31);
  *v62 = v61;
  v67 = (v62 + v32);
  v69 = *v63;
  v68 = (v63 + v32);
  v71 = vminq_s16(vsqaddq_u16(v54, vrshrq_n_s16(v55, 4uLL)), v31);
  *v67 = v66;
  v72 = (v67 + v32);
  v74 = *v68;
  v73 = (v68 + v32);
  v76 = vminq_s16(vsqaddq_u16(v59, vrshrq_n_s16(v60, 4uLL)), v31);
  *v72 = v71;
  v77 = (v72 + v32);
  v79 = *v73;
  v78 = (v73 + v32);
  v81 = vminq_s16(vsqaddq_u16(v64, vrshrq_n_s16(v65, 4uLL)), v31);
  *v77 = v76;
  v82 = (v77 + v32);
  v84 = *v78;
  v83 = (v78 + v32);
  v86 = vminq_s16(vsqaddq_u16(v69, vrshrq_n_s16(v70, 4uLL)), v31);
  *v82 = v81;
  v87 = (v82 + v32);
  v89 = *v83;
  v88 = (v83 + v32);
  v91 = vminq_s16(vsqaddq_u16(v74, vrshrq_n_s16(v75, 4uLL)), v31);
  *v87 = v86;
  v92 = (v87 + v32);
  v93 = *v88;
  v95 = vminq_s16(vsqaddq_u16(v79, vrshrq_n_s16(v80, 4uLL)), v31);
  *v92 = v91;
  v96 = (v92 + v32);
  v97 = *(v88 + v32);
  *v96 = v95;
  v99 = (v96 + v32);
  *v99 = vminq_s16(vsqaddq_u16(v84, vrshrq_n_s16(v85, 4uLL)), v31);
  v100 = (v99 + v32);
  *v100 = vminq_s16(vsqaddq_u16(v89, vrshrq_n_s16(v90, 4uLL)), v31);
  v101 = (v100 + v32);
  *v101 = vminq_s16(vsqaddq_u16(v93, vrshrq_n_s16(v94, 4uLL)), v31);
  v102 = (v101 + v32);
  *v102 = vminq_s16(vsqaddq_u16(v97, vrshrq_n_s16(v98, 4uLL)), v31);
  return v102 + v32;
}

uint16x8_t *sub_277561210(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_277560D6C(a1, a2, a3, a4, sub_27755E140);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DC14(a1, a2, a3, a4, 16);
}

uint16x8_t *sub_2775613C4(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    return sub_2775608E0(a1, a2, a3, a4, sub_27755EF04);
  }

  vld1q_dup_f32(a3);
  *a3 = 0.0;
  return sub_27755DC68(a1, a2, a3, a4, 8);
}

int32x4_t sub_277561A14@<Q0>(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 2 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  v9 = (v8 + v2);
  *v9 = 0u;
  v10 = (v9 + v2);
  *v10 = 0u;
  v11 = (v10 + v2);
  *v11 = 0u;
  v12 = (v11 + v2);
  *v12 = 0u;
  v13 = (v12 + v2);
  *v13 = 0u;
  v14 = (v13 + v2);
  *v14 = 0u;
  v15 = (v14 + v2);
  *v15 = 0u;
  v16 = (v15 + v2);
  *v16 = 0u;
  *(v16 + v2) = 0u;
  sub_27755EF04();
  v35 = vmaxq_s32(vminq_s32(v18, v17), v34);
  v36 = vmaxq_s32(vminq_s32(v19, v17), v34);
  v37 = vmaxq_s32(vminq_s32(v20, v17), v34);
  v38 = vmaxq_s32(vminq_s32(v21, v17), v34);
  v39 = vmaxq_s32(vminq_s32(v22, v17), v34);
  v40 = vmaxq_s32(vminq_s32(v23, v17), v34);
  v41 = vmaxq_s32(vminq_s32(v24, v17), v34);
  v42 = vmaxq_s32(vminq_s32(v25, v17), v34);
  v43 = vmaxq_s32(vminq_s32(v26, v17), v34);
  v44 = vmaxq_s32(vminq_s32(v27, v17), v34);
  v45 = vmaxq_s32(vminq_s32(v28, v17), v34);
  v46 = vmaxq_s32(vminq_s32(v29, v17), v34);
  v47 = vmaxq_s32(vminq_s32(v30, v17), v34);
  v48 = vmaxq_s32(vminq_s32(v31, v17), v34);
  v49 = vmaxq_s32(vminq_s32(v32, v17), v34);
  v50 = vmaxq_s32(vminq_s32(v33, v17), v34);
  v51 = vtrn1q_s32(v35, v36);
  v52 = vtrn2q_s32(v35, v36);
  v53 = vtrn1q_s32(v37, v38);
  v54 = vtrn2q_s32(v37, v38);
  v55 = vtrn1q_s64(v51, v53);
  v56 = vtrn2q_s64(v51, v53);
  v57 = vtrn1q_s64(v52, v54);
  v58 = vtrn2q_s64(v52, v54);
  v59 = vtrn1q_s32(v39, v40);
  v60 = vtrn2q_s32(v39, v40);
  v61 = vtrn1q_s32(v41, v42);
  v62 = vtrn2q_s32(v41, v42);
  v63 = vtrn1q_s64(v59, v61);
  v64 = vtrn2q_s64(v59, v61);
  v65 = vtrn1q_s64(v60, v62);
  v66 = vtrn2q_s64(v60, v62);
  v67 = vtrn1q_s32(v43, v44);
  v68 = vtrn2q_s32(v43, v44);
  v69 = vtrn1q_s32(v45, v46);
  v70 = vtrn2q_s32(v45, v46);
  v71 = vtrn1q_s64(v67, v69);
  v72 = vtrn2q_s64(v67, v69);
  v73 = vtrn1q_s64(v68, v70);
  v74 = vtrn2q_s64(v68, v70);
  v75 = vtrn1q_s32(v47, v48);
  v76 = vtrn2q_s32(v47, v48);
  v77 = vtrn1q_s32(v49, v50);
  v78 = vtrn2q_s32(v49, v50);
  *v79++ = v55;
  *v79++ = v63;
  *v79++ = v71;
  *v79++ = vtrn1q_s64(v75, v77);
  *v79++ = v57;
  *v79++ = v65;
  *v79++ = v73;
  *v79++ = vtrn1q_s64(v76, v78);
  *v79++ = v56;
  *v79++ = v64;
  *v79++ = v72;
  *v79++ = vtrn2q_s64(v75, v77);
  *v79++ = v58;
  *v79++ = v66;
  *v79 = v74;
  v79[1] = vtrn2q_s64(v76, v78);
  *v80 = 0u;
  v82 = (v80 + v81);
  *v82 = 0u;
  v83 = (v82 + v81);
  *v83 = 0u;
  v84 = (v83 + v81);
  *v84 = 0u;
  v85 = (v84 + v81);
  *v85 = 0u;
  v86 = (v85 + v81);
  *v86 = 0u;
  v87 = (v86 + v81);
  *v87 = 0u;
  v88 = (v87 + v81);
  *v88 = 0u;
  v89 = (v88 + v81);
  *v89 = 0u;
  v90 = (v89 + v81);
  *v90 = 0u;
  v91 = (v90 + v81);
  *v91 = 0u;
  v92 = (v91 + v81);
  *v92 = 0u;
  v93 = (v92 + v81);
  *v93 = 0u;
  v94 = (v93 + v81);
  *v94 = 0u;
  v95 = (v94 + v81);
  *v95 = 0u;
  *(v95 + v81) = 0u;
  sub_2775615B8();
  v98 = vtrn1q_s32(v97, v96);
  v99 = vtrn2q_s32(v97, v96);
  v102 = vtrn1q_s32(v101, v100);
  v103 = vtrn2q_s32(v101, v100);
  v104 = vtrn1q_s64(v98, v102);
  v105 = vtrn2q_s64(v98, v102);
  v106 = vtrn1q_s64(v99, v103);
  v107 = vtrn2q_s64(v99, v103);
  v110 = vtrn1q_s32(v109, v108);
  v111 = vtrn2q_s32(v109, v108);
  v114 = vtrn1q_s32(v113, v112);
  v115 = vtrn2q_s32(v113, v112);
  v116 = vtrn1q_s64(v110, v114);
  v117 = vtrn2q_s64(v110, v114);
  v118 = vtrn1q_s64(v111, v115);
  v119 = vtrn2q_s64(v111, v115);
  v122 = vtrn1q_s32(v121, v120);
  v123 = vtrn2q_s32(v121, v120);
  v126 = vtrn1q_s32(v125, v124);
  v127 = vtrn2q_s32(v125, v124);
  v128 = vtrn1q_s64(v122, v126);
  v129 = vtrn2q_s64(v122, v126);
  v130 = vtrn1q_s64(v123, v127);
  v131 = vtrn2q_s64(v123, v127);
  v134 = vtrn1q_s32(v133, v132);
  v135 = vtrn2q_s32(v133, v132);
  v138 = vtrn1q_s32(v137, v136);
  v139 = vtrn2q_s32(v137, v136);
  v140 = vtrn1q_s64(v134, v138);
  v141 = vtrn2q_s64(v134, v138);
  v142 = vtrn1q_s64(v135, v139);
  v143 = vtrn2q_s64(v135, v139);
  v145 = v144[1];
  v146 = v144[2];
  v147 = v144[3];
  v148 = vqsubq_s32(v145, v116);
  v149 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v104), 2uLL), vqaddq_s32(v145, v116), 2uLL);
  v150 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v146, v128), 2uLL), vqaddq_s32(v147, v140), 2uLL);
  v151 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v147, v140), 2uLL), vqsubq_s32(v146, v128), 2uLL);
  v152 = vqrshrn_high_n_s32(vqrshrn_n_s32(v148, 2uLL), vqsubq_s32(*v144, v104), 2uLL);
  *v144 = v149;
  v144[1] = v150;
  v144 += 2;
  *v144 = vrev64q_s16(v151);
  v144[1] = vrev64q_s16(v152);
  v144 += 2;
  v153 = v144[1];
  v154 = v144[2];
  v155 = v144[3];
  v156 = vqsubq_s32(v153, v118);
  v157 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v106), 2uLL), vqaddq_s32(v153, v118), 2uLL);
  v158 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v154, v130), 2uLL), vqaddq_s32(v155, v142), 2uLL);
  v159 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v155, v142), 2uLL), vqsubq_s32(v154, v130), 2uLL);
  v160 = vqrshrn_high_n_s32(vqrshrn_n_s32(v156, 2uLL), vqsubq_s32(*v144, v106), 2uLL);
  *v144 = v157;
  v144[1] = v158;
  v144 += 2;
  *v144 = vrev64q_s16(v159);
  v144[1] = vrev64q_s16(v160);
  v144 += 2;
  v161 = v144[1];
  v162 = v144[2];
  v163 = v144[3];
  v164 = vqsubq_s32(v161, v117);
  v165 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v105), 2uLL), vqaddq_s32(v161, v117), 2uLL);
  v166 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v162, v129), 2uLL), vqaddq_s32(v163, v141), 2uLL);
  v167 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v163, v141), 2uLL), vqsubq_s32(v162, v129), 2uLL);
  v168 = vqrshrn_high_n_s32(vqrshrn_n_s32(v164, 2uLL), vqsubq_s32(*v144, v105), 2uLL);
  *v144 = v165;
  v144[1] = v166;
  v144 += 2;
  *v144 = vrev64q_s16(v167);
  v144[1] = vrev64q_s16(v168);
  v144 += 2;
  v169 = v144[1];
  v170 = v144[2];
  v171 = v144[3];
  v172 = vqsubq_s32(v169, v119);
  result = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v107), 2uLL), vqaddq_s32(v169, v119), 2uLL);
  v174 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v170, v131), 2uLL), vqaddq_s32(v171, v143), 2uLL);
  v175 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v171, v143), 2uLL), vqsubq_s32(v170, v131), 2uLL);
  v176 = vqrshrn_high_n_s32(vqrshrn_n_s32(v172, 2uLL), vqsubq_s32(*v144, v107), 2uLL);
  *v144 = result;
  v144[1] = v174;
  v144 += 2;
  *v144 = vrev64q_s16(v175);
  v144[1] = vrev64q_s16(v176);
  return result;
}

int32x4_t sub_277561E4C@<Q0>(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 2 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  v9 = (v8 + v2);
  *v9 = 0u;
  v10 = (v9 + v2);
  *v10 = 0u;
  v11 = (v10 + v2);
  *v11 = 0u;
  v12 = (v11 + v2);
  *v12 = 0u;
  v13 = (v12 + v2);
  *v13 = 0u;
  v14 = (v13 + v2);
  *v14 = 0u;
  v15 = (v14 + v2);
  *v15 = 0u;
  v16 = (v15 + v2);
  *v16 = 0u;
  *(v16 + v2) = 0u;
  sub_27755EF04();
  v35 = vmaxq_s32(vminq_s32(v18, v17), v34);
  v36 = vmaxq_s32(vminq_s32(v19, v17), v34);
  v37 = vmaxq_s32(vminq_s32(v20, v17), v34);
  v38 = vmaxq_s32(vminq_s32(v21, v17), v34);
  v39 = vmaxq_s32(vminq_s32(v22, v17), v34);
  v40 = vmaxq_s32(vminq_s32(v23, v17), v34);
  v41 = vmaxq_s32(vminq_s32(v24, v17), v34);
  v42 = vmaxq_s32(vminq_s32(v25, v17), v34);
  v43 = vmaxq_s32(vminq_s32(v26, v17), v34);
  v44 = vmaxq_s32(vminq_s32(v27, v17), v34);
  v45 = vmaxq_s32(vminq_s32(v28, v17), v34);
  v46 = vmaxq_s32(vminq_s32(v29, v17), v34);
  v47 = vmaxq_s32(vminq_s32(v30, v17), v34);
  v48 = vmaxq_s32(vminq_s32(v31, v17), v34);
  v49 = vmaxq_s32(vminq_s32(v32, v17), v34);
  v50 = vmaxq_s32(vminq_s32(v33, v17), v34);
  v51 = vtrn1q_s32(v35, v36);
  v52 = vtrn2q_s32(v35, v36);
  v53 = vtrn1q_s32(v37, v38);
  v54 = vtrn2q_s32(v37, v38);
  v55 = vtrn1q_s64(v51, v53);
  v56 = vtrn2q_s64(v51, v53);
  v57 = vtrn1q_s64(v52, v54);
  v58 = vtrn2q_s64(v52, v54);
  v59 = vtrn1q_s32(v39, v40);
  v60 = vtrn2q_s32(v39, v40);
  v61 = vtrn1q_s32(v41, v42);
  v62 = vtrn2q_s32(v41, v42);
  v63 = vtrn1q_s64(v59, v61);
  v64 = vtrn2q_s64(v59, v61);
  v65 = vtrn1q_s64(v60, v62);
  v66 = vtrn2q_s64(v60, v62);
  v67 = vtrn1q_s32(v43, v44);
  v68 = vtrn2q_s32(v43, v44);
  v69 = vtrn1q_s32(v45, v46);
  v70 = vtrn2q_s32(v45, v46);
  v71 = vtrn1q_s64(v67, v69);
  v72 = vtrn2q_s64(v67, v69);
  v73 = vtrn1q_s64(v68, v70);
  v74 = vtrn2q_s64(v68, v70);
  v75 = vtrn1q_s32(v47, v48);
  v76 = vtrn2q_s32(v47, v48);
  v77 = vtrn1q_s32(v49, v50);
  v78 = vtrn2q_s32(v49, v50);
  *v79++ = v55;
  *v79++ = v63;
  *v79++ = v71;
  *v79++ = vtrn1q_s64(v75, v77);
  *v79++ = v57;
  *v79++ = v65;
  *v79++ = v73;
  *v79++ = vtrn1q_s64(v76, v78);
  *v79++ = v56;
  *v79++ = v64;
  *v79++ = v72;
  *v79++ = vtrn2q_s64(v75, v77);
  *v79++ = v58;
  *v79++ = v66;
  *v79 = v74;
  v79[1] = vtrn2q_s64(v76, v78);
  *v80 = 0u;
  v82 = (v80 + v81);
  *v82 = 0u;
  v83 = (v82 + v81);
  *v83 = 0u;
  v84 = (v83 + v81);
  *v84 = 0u;
  v85 = (v84 + v81);
  *v85 = 0u;
  v86 = (v85 + v81);
  *v86 = 0u;
  v87 = (v86 + v81);
  *v87 = 0u;
  v88 = (v87 + v81);
  *v88 = 0u;
  v89 = (v88 + v81);
  *v89 = 0u;
  v90 = (v89 + v81);
  *v90 = 0u;
  v91 = (v90 + v81);
  *v91 = 0u;
  v92 = (v91 + v81);
  *v92 = 0u;
  v93 = (v92 + v81);
  *v93 = 0u;
  v94 = (v93 + v81);
  *v94 = 0u;
  v95 = (v94 + v81);
  *v95 = 0u;
  *(v95 + v81) = 0u;
  sub_2775615B8();
  v98 = vtrn1q_s32(v97, v96);
  v99 = vtrn2q_s32(v97, v96);
  v102 = vtrn1q_s32(v101, v100);
  v103 = vtrn2q_s32(v101, v100);
  v104 = vtrn1q_s64(v98, v102);
  v105 = vtrn2q_s64(v98, v102);
  v106 = vtrn1q_s64(v99, v103);
  v107 = vtrn2q_s64(v99, v103);
  v110 = vtrn1q_s32(v109, v108);
  v111 = vtrn2q_s32(v109, v108);
  v114 = vtrn1q_s32(v113, v112);
  v115 = vtrn2q_s32(v113, v112);
  v116 = vtrn1q_s64(v110, v114);
  v117 = vtrn2q_s64(v110, v114);
  v118 = vtrn1q_s64(v111, v115);
  v119 = vtrn2q_s64(v111, v115);
  v122 = vtrn1q_s32(v121, v120);
  v123 = vtrn2q_s32(v121, v120);
  v126 = vtrn1q_s32(v125, v124);
  v127 = vtrn2q_s32(v125, v124);
  v128 = vtrn1q_s64(v122, v126);
  v129 = vtrn2q_s64(v122, v126);
  v130 = vtrn1q_s64(v123, v127);
  v131 = vtrn2q_s64(v123, v127);
  v134 = vtrn1q_s32(v133, v132);
  v135 = vtrn2q_s32(v133, v132);
  v138 = vtrn1q_s32(v137, v136);
  v139 = vtrn2q_s32(v137, v136);
  v140 = vtrn1q_s64(v134, v138);
  v141 = vtrn2q_s64(v134, v138);
  v142 = vtrn1q_s64(v135, v139);
  v143 = vtrn2q_s64(v135, v139);
  v145 = v144[1];
  v146 = v144[2];
  v147 = v144[3];
  v148 = vqsubq_s32(v145, v116);
  v149 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v104), 1uLL), vqaddq_s32(v145, v116), 1uLL);
  v150 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v146, v128), 1uLL), vqaddq_s32(v147, v140), 1uLL);
  v151 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v147, v140), 1uLL), vqsubq_s32(v146, v128), 1uLL);
  v152 = vqrshrn_high_n_s32(vqrshrn_n_s32(v148, 1uLL), vqsubq_s32(*v144, v104), 1uLL);
  *v144 = v149;
  v144[1] = v150;
  v144 += 2;
  *v144 = vrev64q_s16(v151);
  v144[1] = vrev64q_s16(v152);
  v144 += 2;
  v153 = v144[1];
  v154 = v144[2];
  v155 = v144[3];
  v156 = vqsubq_s32(v153, v118);
  v157 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v106), 1uLL), vqaddq_s32(v153, v118), 1uLL);
  v158 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v154, v130), 1uLL), vqaddq_s32(v155, v142), 1uLL);
  v159 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v155, v142), 1uLL), vqsubq_s32(v154, v130), 1uLL);
  v160 = vqrshrn_high_n_s32(vqrshrn_n_s32(v156, 1uLL), vqsubq_s32(*v144, v106), 1uLL);
  *v144 = v157;
  v144[1] = v158;
  v144 += 2;
  *v144 = vrev64q_s16(v159);
  v144[1] = vrev64q_s16(v160);
  v144 += 2;
  v161 = v144[1];
  v162 = v144[2];
  v163 = v144[3];
  v164 = vqsubq_s32(v161, v117);
  v165 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v105), 1uLL), vqaddq_s32(v161, v117), 1uLL);
  v166 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v162, v129), 1uLL), vqaddq_s32(v163, v141), 1uLL);
  v167 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v163, v141), 1uLL), vqsubq_s32(v162, v129), 1uLL);
  v168 = vqrshrn_high_n_s32(vqrshrn_n_s32(v164, 1uLL), vqsubq_s32(*v144, v105), 1uLL);
  *v144 = v165;
  v144[1] = v166;
  v144 += 2;
  *v144 = vrev64q_s16(v167);
  v144[1] = vrev64q_s16(v168);
  v144 += 2;
  v169 = v144[1];
  v170 = v144[2];
  v171 = v144[3];
  v172 = vqsubq_s32(v169, v119);
  result = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(*v144, v107), 1uLL), vqaddq_s32(v169, v119), 1uLL);
  v174 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(v170, v131), 1uLL), vqaddq_s32(v171, v143), 1uLL);
  v175 = vqrshrn_high_n_s32(vqrshrn_n_s32(vqsubq_s32(v171, v143), 1uLL), vqsubq_s32(v170, v131), 1uLL);
  v176 = vqrshrn_high_n_s32(vqrshrn_n_s32(v172, 1uLL), vqsubq_s32(*v144, v107), 1uLL);
  *v144 = result;
  v144[1] = v174;
  v144 += 2;
  *v144 = vrev64q_s16(v175);
  v144[1] = vrev64q_s16(v176);
  return result;
}

void sub_27756230C()
{
  sub_277553048();
  *v0 = v2;
  v3 = (v0 + v1);
  *v3 = v4;
  v5 = (v3 + v1);
  *v5 = v6;
  v7 = (v5 + v1);
  *v7 = v8;
  v9 = (v7 + v1);
  *v9 = v10;
  v11 = (v9 + v1);
  *v11 = v12;
  v13 = (v11 + v1);
  *v13 = v14;
  v15 = (v13 + v1);
  *v15 = v16;
  v17 = (v15 + v1);
  *v17 = v18;
  v19 = (v17 + v1);
  *v19 = v20;
  v21 = (v19 + v1);
  *v21 = v22;
  v23 = (v21 + v1);
  *v23 = v24;
  v25 = (v23 + v1);
  *v25 = v26;
  v27 = (v25 + v1);
  *v27 = v28;
  v29 = (v27 + v1);
  *v29 = v30;
  *(v29 + v1) = v31;
  sub_2775561BC();
  v32.i64[0] = 0xFC00FC00FC00FC00;
  v32.i64[1] = 0xFC00FC00FC00FC00;
  v36 = *v33;
  v35 = (v33 + v34);
  v40 = *v35;
  v39 = (v35 + v34);
  v41 = (v38 + v37 + v37);
  v44 = *v39;
  v43 = (v39 + v34);
  v46 = *v41;
  v45 = (v41 + v37);
  v48 = vsqaddq_u16(*v38, vrshrq_n_s16(vqaddq_s16(v36, v42), 4uLL));
  v51 = *v43;
  v50 = (v43 + v34);
  v52 = vsqaddq_u16(*(v38 + v37), vrshrq_n_s16(vqaddq_s16(v40, v47), 4uLL));
  *v38 = vminq_s16(v48, v32);
  v54 = &v38->i8[v37];
  v56 = *v45;
  v55 = (v45 + v37);
  *v54 = vminq_s16(v52, v32);
  v57 = (v54 + v37);
  *v57 = vminq_s16(vsqaddq_u16(v46, vrshrq_n_s16(vqaddq_s16(v44, v49), 4uLL)), v32);
  v58 = (v57 + v37);
  *v58 = vminq_s16(vsqaddq_u16(v56, vrshrq_n_s16(vqaddq_s16(v51, v53), 4uLL)), v32);
  v59 = (v58 + v37);
  v61 = *v50;
  v60 = (v50 + v34);
  v63 = *v55;
  v62 = (v55 + v37);
  v65 = *v60;
  v64 = (v60 + v34);
  v67 = *v62;
  v66 = (v62 + v37);
  v70 = *v64;
  v69 = (v64 + v34);
  v72 = *v66;
  v71 = (v66 + v37);
  v74 = vsqaddq_u16(v63, vrshrq_n_s16(vqaddq_s16(v61, v68), 4uLL));
  v77 = *v69;
  v76 = (v69 + v34);
  *v59 = vminq_s16(v74, v32);
  v79 = (v59 + v37);
  v81 = *v71;
  v80 = (v71 + v37);
  *v79 = vminq_s16(vsqaddq_u16(v67, vrshrq_n_s16(vqaddq_s16(v65, v73), 4uLL)), v32);
  v82 = (v79 + v37);
  *v82 = vminq_s16(vsqaddq_u16(v72, vrshrq_n_s16(vqaddq_s16(v70, v75), 4uLL)), v32);
  v83 = (v82 + v37);
  *v83 = vminq_s16(vsqaddq_u16(v81, vrshrq_n_s16(vqaddq_s16(v77, v78), 4uLL)), v32);
  v84 = (v83 + v37);
  v86 = *v76;
  v85 = (v76 + v34);
  v88 = *v80;
  v87 = (v80 + v37);
  v90 = *v85;
  v89 = (v85 + v34);
  v92 = *v87;
  v91 = (v87 + v37);
  v95 = *v89;
  v94 = (v89 + v34);
  v97 = *v91;
  v96 = (v91 + v37);
  v99 = vsqaddq_u16(v88, vrshrq_n_s16(vqaddq_s16(v86, v93), 4uLL));
  v102 = *v94;
  v101 = (v94 + v34);
  *v84 = vminq_s16(v99, v32);
  v104 = (v84 + v37);
  v106 = *v96;
  v105 = (v96 + v37);
  *v104 = vminq_s16(vsqaddq_u16(v92, vrshrq_n_s16(vqaddq_s16(v90, v98), 4uLL)), v32);
  v107 = (v104 + v37);
  *v107 = vminq_s16(vsqaddq_u16(v97, vrshrq_n_s16(vqaddq_s16(v95, v100), 4uLL)), v32);
  v108 = (v107 + v37);
  *v108 = vminq_s16(vsqaddq_u16(v106, vrshrq_n_s16(vqaddq_s16(v102, v103), 4uLL)), v32);
  v109 = (v108 + v37);
  v111 = *v101;
  v110 = (v101 + v34);
  v113 = *v105;
  v112 = (v105 + v37);
  v115 = *v110;
  v114 = (v110 + v34);
  v117 = *v112;
  v116 = (v112 + v37);
  v120 = *v114;
  v119 = (v114 + v34);
  v122 = *v116;
  v121 = (v116 + v37);
  v125 = vminq_s16(vsqaddq_u16(v113, vrshrq_n_s16(vqaddq_s16(v111, v118), 4uLL)), v32);
  v127 = vqaddq_s16(*v119, v126);
  *v109 = v125;
  v128 = (v109 + v37);
  v130 = *v121;
  v129 = (v121 + v37);
  *v128 = vminq_s16(vsqaddq_u16(v117, vrshrq_n_s16(vqaddq_s16(v115, v123), 4uLL)), v32);
  v131 = (v128 + v37);
  *v131 = vminq_s16(vsqaddq_u16(v122, vrshrq_n_s16(vqaddq_s16(v120, v124), 4uLL)), v32);
  v132 = (v131 + v37);
  *v132 = vminq_s16(vsqaddq_u16(v130, vrshrq_n_s16(v127, 4uLL)), v32);
  v133 = (v132 + v37);
  v135 = *v119;
  v134 = (v119 - v34);
  v137 = *v129;
  v136 = (v129 + v37);
  v139 = *v134;
  v138 = (v134 - v34);
  v141 = *v136;
  v140 = (v136 + v37);
  v143 = *v138;
  v142 = (v138 - v34);
  v145 = *v140;
  v144 = (v140 + v37);
  v146 = vsqaddq_u16(v137, vrshrq_n_s16(vqsubq_s16(v135, v126), 4uLL));
  v148 = *v142;
  v147 = (v142 - v34);
  *v133 = vminq_s16(v146, v32);
  v149 = (v133 + v37);
  v151 = *v144;
  v150 = (v144 + v37);
  *v149 = vminq_s16(vsqaddq_u16(v141, vrshrq_n_s16(vqsubq_s16(v139, v124), 4uLL)), v32);
  v152 = (v149 + v37);
  *v152 = vminq_s16(vsqaddq_u16(v145, vrshrq_n_s16(vqsubq_s16(v143, v123), 4uLL)), v32);
  v153 = (v152 + v37);
  *v153 = vminq_s16(vsqaddq_u16(v151, vrshrq_n_s16(vqsubq_s16(v148, v118), 4uLL)), v32);
  v154 = (v153 + v37);
  v156 = *v147;
  v155 = (v147 - v34);
  v158 = *v150;
  v157 = (v150 + v37);
  v160 = *v155;
  v159 = (v155 - v34);
  v162 = *v157;
  v161 = (v157 + v37);
  v164 = *v159;
  v163 = (v159 - v34);
  v166 = *v161;
  v165 = (v161 + v37);
  v167 = vsqaddq_u16(v158, vrshrq_n_s16(vqsubq_s16(v156, v103), 4uLL));
  v169 = *v163;
  v168 = (v163 - v34);
  *v154 = vminq_s16(v167, v32);
  v170 = (v154 + v37);
  v172 = *v165;
  v171 = (v165 + v37);
  *v170 = vminq_s16(vsqaddq_u16(v162, vrshrq_n_s16(vqsubq_s16(v160, v100), 4uLL)), v32);
  v173 = (v170 + v37);
  *v173 = vminq_s16(vsqaddq_u16(v166, vrshrq_n_s16(vqsubq_s16(v164, v98), 4uLL)), v32);
  v174 = (v173 + v37);
  *v174 = vminq_s16(vsqaddq_u16(v172, vrshrq_n_s16(vqsubq_s16(v169, v93), 4uLL)), v32);
  v175 = (v174 + v37);
  v177 = *v168;
  v176 = (v168 - v34);
  v179 = *v171;
  v178 = (v171 + v37);
  v181 = *v176;
  v180 = (v176 - v34);
  v183 = *v178;
  v182 = (v178 + v37);
  v185 = *v180;
  v184 = (v180 - v34);
  v187 = *v182;
  v186 = (v182 + v37);
  v188 = vsqaddq_u16(v179, vrshrq_n_s16(vqsubq_s16(v177, v78), 4uLL));
  v190 = *v184;
  v189 = (v184 - v34);
  *v175 = vminq_s16(v188, v32);
  v191 = (v175 + v37);
  v193 = *v186;
  v192 = (v186 + v37);
  *v191 = vminq_s16(vsqaddq_u16(v183, vrshrq_n_s16(vqsubq_s16(v181, v75), 4uLL)), v32);
  v194 = (v191 + v37);
  *v194 = vminq_s16(vsqaddq_u16(v187, vrshrq_n_s16(vqsubq_s16(v185, v73), 4uLL)), v32);
  v195 = (v194 + v37);
  *v195 = vminq_s16(vsqaddq_u16(v193, vrshrq_n_s16(vqsubq_s16(v190, v68), 4uLL)), v32);
  v196 = (v195 + v37);
  v198 = *v189;
  v197 = (v189 - v34);
  v200 = *v192;
  v199 = (v192 + v37);
  v202 = *v197;
  v201 = (v197 - v34);
  v204 = *v199;
  v203 = (v199 + v37);
  v205 = *v201;
  v206 = *v203;
  v207 = vsqaddq_u16(v200, vrshrq_n_s16(vqsubq_s16(v198, v53), 4uLL));
  v208 = *(v201 - v34);
  *v196 = vminq_s16(v207, v32);
  v209 = (v196 + v37);
  v210 = *(v203 + v37);
  *v209 = vminq_s16(vsqaddq_u16(v204, vrshrq_n_s16(vqsubq_s16(v202, v49), 4uLL)), v32);
  v211 = (v209 + v37);
  *v211 = vminq_s16(vsqaddq_u16(v206, vrshrq_n_s16(vqsubq_s16(v205, v47), 4uLL)), v32);
  *(v211 + v37) = vminq_s16(vsqaddq_u16(v210, vrshrq_n_s16(vqsubq_s16(v208, v42), 4uLL)), v32);
}

uint16x8_t *sub_277562784(uint16x8_t *result, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = &aN_0[1];
  while (1)
  {
    LODWORD(v5) = 0;
    v6 = &aN_0[1];
    do
    {
      v5 = (v5 + 8);
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0uLL;
      a3[1] = 0uLL;
      v9 = a3 + 8;
      v10 = *v9;
      v11 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v12 = *v9;
      v13 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v14 = *v9;
      v15 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v16 = *v9;
      v17 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v18 = *v9;
      v19 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v20 = *v9;
      v21 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v22 = *v9;
      v23 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      a3 = v9 + 8;
      v24 = vqmovn_high_s32(vqmovn_s32(v7), v8);
      v25 = vqmovn_high_s32(vqmovn_s32(v10), v11);
      v26 = vqmovn_high_s32(vqmovn_s32(v12), v13);
      v27 = vqmovn_high_s32(vqmovn_s32(v14), v15);
      v28 = vqmovn_high_s32(vqmovn_s32(v16), v17);
      v29 = vqmovn_high_s32(vqmovn_s32(v18), v19);
      v30 = vqmovn_high_s32(vqmovn_s32(v20), v21);
      v31 = vqmovn_high_s32(vqmovn_s32(v22), v23);
      v32 = vtrn1q_s16(v24, v25);
      v33 = vtrn2q_s16(v24, v25);
      v34 = vtrn1q_s16(v26, v27);
      v35 = vtrn2q_s16(v26, v27);
      v36 = vtrn1q_s16(v28, v29);
      v37 = vtrn2q_s16(v28, v29);
      v38 = vtrn1q_s16(v30, v31);
      v39 = vtrn2q_s16(v30, v31);
      v40 = vtrn1q_s32(v36, v38);
      v41 = vtrn2q_s32(v36, v38);
      v42 = vtrn1q_s32(v37, v39);
      v43 = vtrn2q_s32(v37, v39);
      v44 = vtrn1q_s32(v33, v35);
      v45 = vtrn2q_s32(v33, v35);
      v46 = vtrn1q_s32(v32, v34);
      v47 = vtrn2q_s32(v32, v34);
      v48 = vtrn1q_s64(v46, v40);
      v49 = vtrn2q_s64(v46, v40);
      v50 = vtrn1q_s64(v44, v42);
      v51 = vtrn2q_s64(v44, v42);
      v52 = vtrn2q_s64(v47, v41);
      v53 = vtrn1q_s64(v47, v41);
      v54 = vtrn1q_s64(v45, v43);
      v55 = vtrn2q_s64(v45, v43);
      v56.i64[0] = 0xFC00FC00FC00FC00;
      v56.i64[1] = 0xFC00FC00FC00FC00;
      v57 = (result + a2 + a2);
      v59 = *v57;
      v58 = (v57 + a2);
      v61 = *v58;
      v60 = (v58 + a2);
      v62 = vminq_s16(vsqaddq_u16(*result, vrshrq_n_s16(v48, 2uLL)), v56);
      v64 = *v60;
      v63 = (v60 + a2);
      v65 = vminq_s16(vsqaddq_u16(*(result + a2), vrshrq_n_s16(v50, 2uLL)), v56);
      *result = v62;
      v66 = &result->i8[a2];
      v68 = *v63;
      v67 = (v63 + a2);
      v69 = vminq_s16(vsqaddq_u16(v59, vrshrq_n_s16(v53, 2uLL)), v56);
      *v66 = v65;
      v70 = (v66 + a2);
      v71 = *v67;
      v72 = vminq_s16(vsqaddq_u16(v61, vrshrq_n_s16(v54, 2uLL)), v56);
      *v70 = v69;
      v73 = (v70 + a2);
      v74 = *(v67 + a2);
      *v73 = v72;
      v75 = (v73 + a2);
      *v75 = vminq_s16(vsqaddq_u16(v64, vrshrq_n_s16(v49, 2uLL)), v56);
      v76 = (v75 + a2);
      *v76 = vminq_s16(vsqaddq_u16(v68, vrshrq_n_s16(v51, 2uLL)), v56);
      v77 = (v76 + a2);
      *v77 = vminq_s16(vsqaddq_u16(v71, vrshrq_n_s16(v52, 2uLL)), v56);
      v78 = (v77 + a2);
      *v78 = vminq_s16(vsqaddq_u16(v74, vrshrq_n_s16(v55, 2uLL)), v56);
      v79 = *v6;
      v6 += 2;
      result = &v78[1].i8[a2 + -8 * a2];
    }

    while (a4 >= v79);
    v80 = *v4;
    v4 += 2;
    if (a4 < v80)
    {
      break;
    }

    result = (result + 8 * a2 + -2 * v5);
    a3 = &a3[-8 * v5 + 2];
  }

  return result;
}

uint16x8_t *sub_277562968(uint16x8_t *result, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = &aN_1[1];
  while (1)
  {
    LODWORD(v5) = 0;
    v6 = &word_27A7172A2;
    do
    {
      v5 = (v5 + 8);
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0uLL;
      a3[1] = 0uLL;
      v9 = a3 + 8;
      v10.i32[0] = vdup_n_s32(0x5A800000u).u32[0];
      v11 = *v9;
      v12 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v10.i32[1] = 1779433472;
      v13 = *v9;
      v14 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v15 = *v9;
      v16 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v17 = *v9;
      v18 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v19 = *v9;
      v20 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v21 = *v9;
      v22 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 8;
      v23 = *v9;
      v24 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      a3 = v9 + 8;
      v25 = vqrdmulhq_lane_s32(v7, v10, 0);
      v26 = vqrdmulhq_lane_s32(v8, v10, 0);
      v27 = vqrdmulhq_lane_s32(v11, v10, 0);
      v28 = vqrdmulhq_lane_s32(v12, v10, 0);
      v29 = vqrdmulhq_lane_s32(v13, v10, 0);
      v30 = vqrdmulhq_lane_s32(v14, v10, 0);
      v31 = vqrdmulhq_lane_s32(v15, v10, 0);
      v32 = vqrdmulhq_lane_s32(v16, v10, 0);
      v33 = vqrdmulhq_lane_s32(v17, v10, 0);
      v34 = vqrdmulhq_lane_s32(v18, v10, 0);
      v35 = vqrdmulhq_lane_s32(v19, v10, 0);
      v36 = vqrdmulhq_lane_s32(v20, v10, 0);
      v37 = vqrdmulhq_lane_s32(v21, v10, 0);
      v38 = vqrdmulhq_lane_s32(v22, v10, 0);
      v39 = vqrdmulhq_lane_s32(v23, v10, 0);
      v40 = vqrdmulhq_lane_s32(v24, v10, 0);
      v41 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v25, vrshrq_n_s32(vqrdmulhq_lane_s32(v25, v10, 1), 1uLL))), vqaddq_s32(v26, vrshrq_n_s32(vqrdmulhq_lane_s32(v26, v10, 1), 1uLL)));
      v42 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v27, vrshrq_n_s32(vqrdmulhq_lane_s32(v27, v10, 1), 1uLL))), vqaddq_s32(v28, vrshrq_n_s32(vqrdmulhq_lane_s32(v28, v10, 1), 1uLL)));
      v43 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v29, vrshrq_n_s32(vqrdmulhq_lane_s32(v29, v10, 1), 1uLL))), vqaddq_s32(v30, vrshrq_n_s32(vqrdmulhq_lane_s32(v30, v10, 1), 1uLL)));
      v44 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v31, vrshrq_n_s32(vqrdmulhq_lane_s32(v31, v10, 1), 1uLL))), vqaddq_s32(v32, vrshrq_n_s32(vqrdmulhq_lane_s32(v32, v10, 1), 1uLL)));
      v45 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v33, vrshrq_n_s32(vqrdmulhq_lane_s32(v33, v10, 1), 1uLL))), vqaddq_s32(v34, vrshrq_n_s32(vqrdmulhq_lane_s32(v34, v10, 1), 1uLL)));
      v46 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v35, vrshrq_n_s32(vqrdmulhq_lane_s32(v35, v10, 1), 1uLL))), vqaddq_s32(v36, vrshrq_n_s32(vqrdmulhq_lane_s32(v36, v10, 1), 1uLL)));
      v47 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v37, vrshrq_n_s32(vqrdmulhq_lane_s32(v37, v10, 1), 1uLL))), vqaddq_s32(v38, vrshrq_n_s32(vqrdmulhq_lane_s32(v38, v10, 1), 1uLL)));
      v48 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(v39, vrshrq_n_s32(vqrdmulhq_lane_s32(v39, v10, 1), 1uLL))), vqaddq_s32(v40, vrshrq_n_s32(vqrdmulhq_lane_s32(v40, v10, 1), 1uLL)));
      v49 = vtrn1q_s16(v41, v42);
      v50 = vtrn2q_s16(v41, v42);
      v51 = vtrn1q_s16(v43, v44);
      v52 = vtrn2q_s16(v43, v44);
      v53 = vtrn1q_s16(v45, v46);
      v54 = vtrn2q_s16(v45, v46);
      v55 = vtrn1q_s16(v47, v48);
      v56 = vtrn2q_s16(v47, v48);
      v57 = vtrn1q_s32(v53, v55);
      v58 = vtrn2q_s32(v53, v55);
      v59 = vtrn1q_s32(v54, v56);
      v60 = vtrn2q_s32(v54, v56);
      v61 = vtrn1q_s32(v50, v52);
      v62 = vtrn2q_s32(v50, v52);
      v63 = vtrn1q_s32(v49, v51);
      v64 = vtrn2q_s32(v49, v51);
      v65 = vtrn1q_s64(v63, v57);
      v66 = vtrn2q_s64(v63, v57);
      v67 = vtrn1q_s64(v61, v59);
      v68 = vtrn2q_s64(v61, v59);
      v69 = vtrn2q_s64(v64, v58);
      v70 = vtrn1q_s64(v64, v58);
      v71 = vtrn1q_s64(v62, v60);
      v72 = vtrn2q_s64(v62, v60);
      v73.i64[0] = 0xFC00FC00FC00FC00;
      v73.i64[1] = 0xFC00FC00FC00FC00;
      v74 = (result + a2 + a2);
      v76 = *v74;
      v75 = (v74 + a2);
      v78 = *v75;
      v77 = (v75 + a2);
      v79 = vminq_s16(vsqaddq_u16(*result, vrshrq_n_s16(v65, 2uLL)), v73);
      v81 = *v77;
      v80 = (v77 + a2);
      v82 = vminq_s16(vsqaddq_u16(*(result + a2), vrshrq_n_s16(v67, 2uLL)), v73);
      *result = v79;
      v83 = &result->i8[a2];
      v85 = *v80;
      v84 = (v80 + a2);
      v86 = vminq_s16(vsqaddq_u16(v76, vrshrq_n_s16(v70, 2uLL)), v73);
      *v83 = v82;
      v87 = (v83 + a2);
      v88 = *v84;
      v89 = vminq_s16(vsqaddq_u16(v78, vrshrq_n_s16(v71, 2uLL)), v73);
      *v87 = v86;
      v90 = (v87 + a2);
      v91 = *(v84 + a2);
      *v90 = v89;
      v92 = (v90 + a2);
      *v92 = vminq_s16(vsqaddq_u16(v81, vrshrq_n_s16(v66, 2uLL)), v73);
      v93 = (v92 + a2);
      *v93 = vminq_s16(vsqaddq_u16(v85, vrshrq_n_s16(v68, 2uLL)), v73);
      v94 = (v93 + a2);
      *v94 = vminq_s16(vsqaddq_u16(v88, vrshrq_n_s16(v69, 2uLL)), v73);
      v95 = (v94 + a2);
      *v95 = vminq_s16(vsqaddq_u16(v91, vrshrq_n_s16(v72, 2uLL)), v73);
      v96 = *v6;
      v6 += 2;
      result = &v95[1].i8[a2 + -8 * a2];
    }

    while (a4 >= v96);
    v97 = *v4;
    v4 += 2;
    if (a4 < v97)
    {
      break;
    }

    result = (result + 8 * a2 + -2 * v5);
    a3 = &a3[-8 * v5 + 2];
  }

  return result;
}

uint16x8_t *sub_277562C5C(uint16x8_t *result, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = &word_27A7172A2;
  while (1)
  {
    LODWORD(v5) = 0;
    v6 = &aN_1[1];
    do
    {
      v5 = (v5 + 8);
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0uLL;
      a3[1] = 0uLL;
      v9 = a3 + 4;
      v10.i32[0] = vdup_n_s32(0x5A800000u).u32[0];
      v11 = *v9;
      v12 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 4;
      v10.i32[1] = 1779433472;
      v13 = *v9;
      v14 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 4;
      v15 = *v9;
      v16 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 4;
      v17 = *v9;
      v18 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 4;
      v19 = *v9;
      v20 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 4;
      v21 = *v9;
      v22 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9 += 4;
      v23 = *v9;
      v24 = *(v9 + 1);
      *v9 = 0uLL;
      v9[1] = 0uLL;
      a3 = v9 + 4;
      v25 = vqshlq_n_s32(vqrdmulhq_lane_s32(v7, v10, 0), 1uLL);
      v26 = vqshlq_n_s32(vqrdmulhq_lane_s32(v8, v10, 0), 1uLL);
      v27 = vqshlq_n_s32(vqrdmulhq_lane_s32(v11, v10, 0), 1uLL);
      v28 = vqshlq_n_s32(vqrdmulhq_lane_s32(v12, v10, 0), 1uLL);
      v29 = vqshlq_n_s32(vqrdmulhq_lane_s32(v13, v10, 0), 1uLL);
      v30 = vqshlq_n_s32(vqrdmulhq_lane_s32(v14, v10, 0), 1uLL);
      v31 = vqshlq_n_s32(vqrdmulhq_lane_s32(v15, v10, 0), 1uLL);
      v32 = vqshlq_n_s32(vqrdmulhq_lane_s32(v16, v10, 0), 1uLL);
      v33 = vqshlq_n_s32(vqrdmulhq_lane_s32(v17, v10, 0), 1uLL);
      v34 = vqshlq_n_s32(vqrdmulhq_lane_s32(v18, v10, 0), 1uLL);
      v35 = vqshlq_n_s32(vqrdmulhq_lane_s32(v19, v10, 0), 1uLL);
      v36 = vqshlq_n_s32(vqrdmulhq_lane_s32(v20, v10, 0), 1uLL);
      v37 = vqshlq_n_s32(vqrdmulhq_lane_s32(v21, v10, 0), 1uLL);
      v38 = vqshlq_n_s32(vqrdmulhq_lane_s32(v22, v10, 0), 1uLL);
      v39 = vqshlq_n_s32(vqrdmulhq_lane_s32(v23, v10, 0), 1uLL);
      v40 = vqshlq_n_s32(vqrdmulhq_lane_s32(v24, v10, 0), 1uLL);
      v41 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v25, v25), vqrdmulhq_lane_s32(v25, v10, 1))), vqaddq_s32(vqaddq_s32(v26, v26), vqrdmulhq_lane_s32(v26, v10, 1)));
      v42 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v27, v27), vqrdmulhq_lane_s32(v27, v10, 1))), vqaddq_s32(vqaddq_s32(v28, v28), vqrdmulhq_lane_s32(v28, v10, 1)));
      v43 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v29, v29), vqrdmulhq_lane_s32(v29, v10, 1))), vqaddq_s32(vqaddq_s32(v30, v30), vqrdmulhq_lane_s32(v30, v10, 1)));
      v44 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v31, v31), vqrdmulhq_lane_s32(v31, v10, 1))), vqaddq_s32(vqaddq_s32(v32, v32), vqrdmulhq_lane_s32(v32, v10, 1)));
      v45 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v33, v33), vqrdmulhq_lane_s32(v33, v10, 1))), vqaddq_s32(vqaddq_s32(v34, v34), vqrdmulhq_lane_s32(v34, v10, 1)));
      v46 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v35, v35), vqrdmulhq_lane_s32(v35, v10, 1))), vqaddq_s32(vqaddq_s32(v36, v36), vqrdmulhq_lane_s32(v36, v10, 1)));
      v47 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v37, v37), vqrdmulhq_lane_s32(v37, v10, 1))), vqaddq_s32(vqaddq_s32(v38, v38), vqrdmulhq_lane_s32(v38, v10, 1)));
      v48 = vqmovn_high_s32(vqmovn_s32(vqaddq_s32(vqaddq_s32(v39, v39), vqrdmulhq_lane_s32(v39, v10, 1))), vqaddq_s32(vqaddq_s32(v40, v40), vqrdmulhq_lane_s32(v40, v10, 1)));
      v49 = vtrn1q_s16(v41, v42);
      v50 = vtrn2q_s16(v41, v42);
      v51 = vtrn1q_s16(v43, v44);
      v52 = vtrn2q_s16(v43, v44);
      v53 = vtrn1q_s16(v45, v46);
      v54 = vtrn2q_s16(v45, v46);
      v55 = vtrn1q_s16(v47, v48);
      v56 = vtrn2q_s16(v47, v48);
      v57 = vtrn1q_s32(v53, v55);
      v58 = vtrn2q_s32(v53, v55);
      v59 = vtrn1q_s32(v54, v56);
      v60 = vtrn2q_s32(v54, v56);
      v61 = vtrn1q_s32(v50, v52);
      v62 = vtrn2q_s32(v50, v52);
      v63 = vtrn1q_s32(v49, v51);
      v64 = vtrn2q_s32(v49, v51);
      v65 = vtrn1q_s64(v63, v57);
      v66 = vtrn2q_s64(v63, v57);
      v67 = vtrn1q_s64(v61, v59);
      v68 = vtrn2q_s64(v61, v59);
      v69 = vtrn2q_s64(v64, v58);
      v70 = vtrn1q_s64(v64, v58);
      v71 = vtrn1q_s64(v62, v60);
      v72 = vtrn2q_s64(v62, v60);
      v73.i64[0] = 0xFC00FC00FC00FC00;
      v73.i64[1] = 0xFC00FC00FC00FC00;
      v74 = (result + a2 + a2);
      v76 = *v74;
      v75 = (v74 + a2);
      v78 = *v75;
      v77 = (v75 + a2);
      v79 = vminq_s16(vsqaddq_u16(*result, vrshrq_n_s16(v65, 4uLL)), v73);
      v81 = *v77;
      v80 = (v77 + a2);
      v82 = vminq_s16(vsqaddq_u16(*(result + a2), vrshrq_n_s16(v67, 4uLL)), v73);
      *result = v79;
      v83 = &result->i8[a2];
      v85 = *v80;
      v84 = (v80 + a2);
      v86 = vminq_s16(vsqaddq_u16(v76, vrshrq_n_s16(v70, 4uLL)), v73);
      *v83 = v82;
      v87 = (v83 + a2);
      v88 = *v84;
      v89 = vminq_s16(vsqaddq_u16(v78, vrshrq_n_s16(v71, 4uLL)), v73);
      *v87 = v86;
      v90 = (v87 + a2);
      v91 = *(v84 + a2);
      *v90 = v89;
      v92 = (v90 + a2);
      *v92 = vminq_s16(vsqaddq_u16(v81, vrshrq_n_s16(v66, 4uLL)), v73);
      v93 = (v92 + a2);
      *v93 = vminq_s16(vsqaddq_u16(v85, vrshrq_n_s16(v68, 4uLL)), v73);
      v94 = (v93 + a2);
      *v94 = vminq_s16(vsqaddq_u16(v88, vrshrq_n_s16(v69, 4uLL)), v73);
      v95 = (v94 + a2);
      *v95 = vminq_s16(vsqaddq_u16(v91, vrshrq_n_s16(v72, 4uLL)), v73);
      v96 = *v6;
      v6 += 2;
      result = &v95[1].i8[a2 + -8 * a2];
    }

    while (a4 >= v96);
    v97 = *v4;
    v4 += 2;
    if (a4 < v97)
    {
      break;
    }

    result = (result + 8 * a2 + -2 * v5);
    a3 = &a3[-4 * v5 + 2];
  }

  return result;
}

uint16x8_t *sub_277562F90(uint16x8_t *result, uint64_t a2, int32x4_t *a3, int a4)
{
  v4 = &aKk[1];
  while (1)
  {
    v5 = *v4;
    v4 += 2;
    v6 = *a3;
    v7 = a3[1];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    v8 = a3 + 8;
    v9 = *v8;
    v10 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 8;
    v11 = *v8;
    v12 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 8;
    v13 = *v8;
    v14 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 8;
    v15 = *v8;
    v16 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 8;
    v17 = *v8;
    v18 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 8;
    v19 = *v8;
    v20 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 8;
    v21 = *v8;
    v22 = v8[1];
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v23 = v8 + 8;
    v24 = vqrshrn_high_n_s32(vqrshrn_n_s32(v6, 1uLL), v7, 1uLL);
    v25 = vqrshrn_high_n_s32(vqrshrn_n_s32(v9, 1uLL), v10, 1uLL);
    v26 = vqrshrn_high_n_s32(vqrshrn_n_s32(v11, 1uLL), v12, 1uLL);
    v27 = vqrshrn_high_n_s32(vqrshrn_n_s32(v13, 1uLL), v14, 1uLL);
    v28 = vqrshrn_high_n_s32(vqrshrn_n_s32(v15, 1uLL), v16, 1uLL);
    v29 = vqrshrn_high_n_s32(vqrshrn_n_s32(v17, 1uLL), v18, 1uLL);
    v30 = vqrshrn_high_n_s32(vqrshrn_n_s32(v19, 1uLL), v20, 1uLL);
    v31 = vqrshrn_high_n_s32(vqrshrn_n_s32(v21, 1uLL), v22, 1uLL);
    v32 = vtrn1q_s16(v24, v25);
    v33 = vtrn2q_s16(v24, v25);
    v34 = vtrn1q_s16(v26, v27);
    v35 = vtrn2q_s16(v26, v27);
    v36 = vtrn1q_s16(v28, v29);
    v37 = vtrn2q_s16(v28, v29);
    v38 = vtrn1q_s16(v30, v31);
    v39 = vtrn2q_s16(v30, v31);
    v40 = vtrn1q_s32(v36, v38);
    v41 = vtrn2q_s32(v36, v38);
    v42 = vtrn1q_s32(v37, v39);
    v43 = vtrn2q_s32(v37, v39);
    v44 = vtrn1q_s32(v33, v35);
    v45 = vtrn2q_s32(v33, v35);
    v46 = vtrn1q_s32(v32, v34);
    v47 = vtrn2q_s32(v32, v34);
    v48 = vtrn1q_s64(v46, v40);
    v49 = vtrn2q_s64(v46, v40);
    v50 = vtrn1q_s64(v44, v42);
    v51 = vtrn2q_s64(v44, v42);
    v52 = vtrn2q_s64(v47, v41);
    v53 = vtrn1q_s64(v47, v41);
    v54 = vtrn1q_s64(v45, v43);
    v55 = vtrn2q_s64(v45, v43);
    v56.i64[0] = 0xFC00FC00FC00FC00;
    v56.i64[1] = 0xFC00FC00FC00FC00;
    v57 = (result + a2 + a2);
    v59 = *v57;
    v58 = (v57 + a2);
    v61 = *v58;
    v60 = (v58 + a2);
    v62 = vminq_s16(vsqaddq_u16(*result, vrshrq_n_s16(v48, 2uLL)), v56);
    v64 = *v60;
    v63 = (v60 + a2);
    v65 = vminq_s16(vsqaddq_u16(*(result + a2), vrshrq_n_s16(v50, 2uLL)), v56);
    *result = v62;
    v66 = &result->i8[a2];
    v68 = *v63;
    v67 = (v63 + a2);
    v69 = vminq_s16(vsqaddq_u16(v59, vrshrq_n_s16(v53, 2uLL)), v56);
    *v66 = v65;
    v70 = (v66 + a2);
    v71 = *v67;
    v72 = vminq_s16(vsqaddq_u16(v61, vrshrq_n_s16(v54, 2uLL)), v56);
    *v70 = v69;
    v73 = (v70 + a2);
    v74 = *(v67 + a2);
    *v73 = v72;
    v75 = (v73 + a2);
    *v75 = vminq_s16(vsqaddq_u16(v64, vrshrq_n_s16(v49, 2uLL)), v56);
    v76 = (v75 + a2);
    *v76 = vminq_s16(vsqaddq_u16(v68, vrshrq_n_s16(v51, 2uLL)), v56);
    v77 = (v76 + a2);
    *v77 = vminq_s16(vsqaddq_u16(v71, vrshrq_n_s16(v52, 2uLL)), v56);
    v78 = (v77 + a2);
    *v78 = vminq_s16(vsqaddq_u16(v74, vrshrq_n_s16(v55, 2uLL)), v56);
    result = &v78->i8[a2];
    if (a4 < v5)
    {
      break;
    }

    a3 = v23 - 62;
  }

  return result;
}

__int8 *sub_277563148(uint16x8_t *a1, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = &aKk[1];
  while (1)
  {
    v5 = *v4;
    v4 += 2;
    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0uLL;
    a3[1] = 0uLL;
    v8 = a3 + 2;
    v9 = *v8;
    v10 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 2;
    v11 = *v8;
    v12 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 2;
    v13 = *v8;
    v14 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 2;
    v15 = *v8;
    v16 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 2;
    v17 = *v8;
    v18 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 2;
    v19 = *v8;
    v20 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v8 += 2;
    v21 = *v8;
    v22 = *(v8 + 1);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    a3 = v8 + 2;
    v23 = vqmovn_high_s32(vqmovn_s32(v6), v7);
    v24 = vqmovn_high_s32(vqmovn_s32(v9), v10);
    v25 = vqmovn_high_s32(vqmovn_s32(v11), v12);
    v26 = vqmovn_high_s32(vqmovn_s32(v13), v14);
    v27 = vqmovn_high_s32(vqmovn_s32(v15), v16);
    v28 = vqmovn_high_s32(vqmovn_s32(v17), v18);
    v29 = vqmovn_high_s32(vqmovn_s32(v19), v20);
    v30 = vqmovn_high_s32(vqmovn_s32(v21), v22);
    v31 = vtrn1q_s16(v23, v24);
    v32 = vtrn2q_s16(v23, v24);
    v33 = vtrn1q_s16(v25, v26);
    v34 = vtrn2q_s16(v25, v26);
    v35 = vtrn1q_s16(v27, v28);
    v36 = vtrn2q_s16(v27, v28);
    v37 = vtrn1q_s16(v29, v30);
    v38 = vtrn2q_s16(v29, v30);
    v39 = vtrn1q_s32(v35, v37);
    v40 = vtrn2q_s32(v35, v37);
    v41 = vtrn1q_s32(v36, v38);
    v42 = vtrn2q_s32(v36, v38);
    v43 = vtrn1q_s32(v32, v34);
    v44 = vtrn2q_s32(v32, v34);
    v45 = vtrn1q_s32(v31, v33);
    v46 = vtrn2q_s32(v31, v33);
    v47 = vtrn1q_s64(v45, v39);
    v48 = vtrn2q_s64(v45, v39);
    v49 = vtrn1q_s64(v43, v41);
    v50 = vtrn2q_s64(v43, v41);
    v51 = vtrn2q_s64(v46, v40);
    v52 = vtrn1q_s64(v46, v40);
    v53 = vtrn1q_s64(v44, v42);
    v54 = vtrn2q_s64(v44, v42);
    v55.i64[0] = 0xFC00FC00FC00FC00;
    v55.i64[1] = 0xFC00FC00FC00FC00;
    v56 = (a1 + a2 + a2);
    v58 = *v56;
    v57 = (v56 + a2);
    v60 = *v57;
    v59 = (v57 + a2);
    v61 = vminq_s16(vsqaddq_u16(*a1, vrshrq_n_s16(v47, 3uLL)), v55);
    v63 = *v59;
    v62 = (v59 + a2);
    v64 = vminq_s16(vsqaddq_u16(*(a1 + a2), vrshrq_n_s16(v49, 3uLL)), v55);
    *a1 = v61;
    v65 = &a1->i8[a2];
    v67 = *v62;
    v66 = (v62 + a2);
    v68 = vminq_s16(vsqaddq_u16(v58, vrshrq_n_s16(v52, 3uLL)), v55);
    *v65 = v64;
    v69 = (v65 + a2);
    v70 = *v66;
    v71 = vminq_s16(vsqaddq_u16(v60, vrshrq_n_s16(v53, 3uLL)), v55);
    *v69 = v68;
    v72 = (v69 + a2);
    v73 = *(v66 + a2);
    *v72 = v71;
    v74 = (v72 + a2);
    *v74 = vminq_s16(vsqaddq_u16(v63, vrshrq_n_s16(v48, 3uLL)), v55);
    v75 = (v74 + a2);
    *v75 = vminq_s16(vsqaddq_u16(v67, vrshrq_n_s16(v50, 3uLL)), v55);
    v76 = (v75 + a2);
    *v76 = vminq_s16(vsqaddq_u16(v70, vrshrq_n_s16(v51, 3uLL)), v55);
    v77 = (v76 + a2);
    *v77 = vminq_s16(vsqaddq_u16(v73, vrshrq_n_s16(v54, 3uLL)), v55);
    result = &v77->i8[a2];
    if (a4 < v5)
    {
      break;
    }

    a1 = &result[-8 * a2 + 16];
  }

  return result;
}

void sub_277563300(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277561A14(a3, 128);
    v5 = &v29;
    v6 = 28;
    if (v7 < v8 || (sub_277561A14((v4 + 16), 128), v5 = &v30, v6 = 24, v10 < v11) || (sub_277561A14((v9 + 32), 128), v5 = &v31, v6 = 20, v13 < v14) || (sub_277561A14((v12 + 48), 128), v5 = &v32, v6 = 16, v16 < v17) || (sub_277561A14((v15 + 64), 128), v5 = &v33, v6 = 12, v19 < v20) || (sub_277561A14((v18 + 80), 128), v5 = &v34, v6 = 8, v22 < v23) || (sub_277561A14((v21 + 96), 128), v5 = &v35, v6 = 4, v25 < v26))
    {
      do
      {
        v27 = __OFSUB__(v6, 4);
        v6 -= 4;
        *v5 = 0uLL;
        *(v5 + 1) = 0uLL;
        *(v5 + 2) = 0uLL;
        *(v5 + 3) = 0uLL;
        v28 = v5 + 64;
        *v28 = 0uLL;
        v28[1] = 0uLL;
        v28[2] = 0uLL;
        v28[3] = 0uLL;
        v28 += 4;
        *v28 = 0uLL;
        v28[1] = 0uLL;
        v28[2] = 0uLL;
        v28[3] = 0uLL;
        v28 += 4;
        *v28 = 0uLL;
        v28[1] = 0uLL;
        v28[2] = 0uLL;
        v28[3] = 0uLL;
        v5 = (v28 + 4);
      }

      while (!((v6 < 0) ^ v27 | (v6 == 0)));
    }

    else
    {
      sub_277561A14((v24 + 112), 128);
    }

    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DCAC(a1, a2, a3, a4, 32);
  }
}

void sub_2775634A4(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27755FB5C(sub_27755EF04, a3, 128);
    v6 = &v36;
    v7 = 28;
    if (v8 < v9 || (sub_27755FB5C(v5, (v4 + 16), 128), v6 = &v37, v7 = 24, v12 < v13) || (sub_27755FB5C(v11, (v10 + 32), 128), v6 = &v38, v7 = 20, v16 < v17) || (sub_27755FB5C(v15, (v14 + 48), 128), v6 = &v39, v7 = 16, v20 < v21) || (sub_27755FB5C(v19, (v18 + 64), 128), v6 = &v40, v7 = 12, v24 < v25) || (sub_27755FB5C(v23, (v22 + 80), 128), v6 = &v41, v7 = 8, v28 < v29) || (sub_27755FB5C(v27, (v26 + 96), 128), v6 = &v42, v7 = 4, v32 < v33))
    {
      do
      {
        v34 = __OFSUB__(v7, 4);
        v7 -= 4;
        *v6 = 0uLL;
        *(v6 + 1) = 0uLL;
        *(v6 + 2) = 0uLL;
        *(v6 + 3) = 0uLL;
        v35 = v6 + 64;
        *v35 = 0uLL;
        v35[1] = 0uLL;
        v35[2] = 0uLL;
        v35[3] = 0uLL;
        v6 = (v35 + 4);
      }

      while (!((v7 < 0) ^ v34 | (v7 == 0)));
    }

    else
    {
      sub_27755FB5C(v31, (v30 + 112), 128);
    }

    sub_27756230C();
    sub_27756230C();
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DC68(a1, a2, a3, a4, 32);
  }
}

uint16x8_t *sub_277563628(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277561E4C(a3, 64);
    v11 = &v36;
    v12 = 12;
    if (v8 < v13 || (sub_277561E4C(v7 + 1, 64), v11 = &v37, v12 = 8, v8 < v14) || (sub_277561E4C(v7 + 2, 64), v11 = &v38, v12 = 4, v8 < v15))
    {
      do
      {
        v16 = __OFSUB__(v12, 4);
        v12 -= 4;
        *v11 = 0uLL;
        *(v11 + 1) = 0uLL;
        *(v11 + 2) = 0uLL;
        *(v11 + 3) = 0uLL;
        v17 = v11 + 64;
        *v17 = 0uLL;
        v17[1] = 0uLL;
        v17[2] = 0uLL;
        v17[3] = 0uLL;
        v17 += 4;
        *v17 = 0uLL;
        v17[1] = 0uLL;
        v17[2] = 0uLL;
        v17[3] = 0uLL;
        v17 += 4;
        *v17 = 0uLL;
        v17[1] = 0uLL;
        v17[2] = 0uLL;
        v17[3] = 0uLL;
        v11 = (v17 + 4);
      }

      while (!((v12 < 0) ^ v16 | (v12 == 0)));
    }

    else
    {
      sub_277561E4C(v7 + 3, 64);
    }

    v18 = sub_27755FDA4(v5, v6, v7, v8, v9, v10);
    v24 = sub_27755FDA4(v18, v19, v20, v21, v22, v23);
    v30 = sub_27755FDA4(v24, v25, v26, v27, v28, v29);
    return sub_27755FDA4(v30, v31, v32, v33, v34, v35);
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    return sub_27755DCAC(a1, a2, a3, a4, 16);
  }
}

void sub_277563758(uint16x8_t *a1, uint64_t a2, const float *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 0uLL;
    v5 = 128;
    v6 = a3;
    do
    {
      *v6 = v4;
      v7 = &v6[v5 / 4];
      *v7 = v4;
      v8 = &v7[v5 / 4];
      *v8 = v4;
      v9 = &v8[v5 / 0x10];
      *v9 = v4;
      v10 = &v9[v5 / 0x10];
      *v10 = v4;
      v11 = &v10[v5 / 0x10];
      *v11 = v4;
      v12 = &v11[v5 / 0x10];
      *v12 = v4;
      v12[v5 / 0x10] = v4;
      sub_27755E140();
      v19 = vqrshrn_high_n_s32(vqrshrn_n_s32(v14, 2uLL), v18, 2uLL);
      v21 = vqrshrn_high_n_s32(vqrshrn_n_s32(v15, 2uLL), v20, 2uLL);
      v23 = vqrshrn_high_n_s32(vqrshrn_n_s32(v16, 2uLL), v22, 2uLL);
      v25 = vqrshrn_high_n_s32(vqrshrn_n_s32(v17, 2uLL), v24, 2uLL);
      v26 = vtrn1q_s16(v19, v21);
      v27 = vtrn2q_s16(v19, v21);
      v28 = vtrn1q_s16(v23, v25);
      v29 = vtrn2q_s16(v23, v25);
      *v30 = vtrn1q_s32(v26, v28);
      v30[1] = vtrn1q_s32(v27, v29);
      v30[2] = vtrn2q_s32(v26, v28);
      v30[3] = vtrn2q_s32(v27, v29);
      v31 = v30 + 4;
    }

    while (v32 >= v33);
    if (v13)
    {
      do
      {
        v34 = __OFSUB__(v13, 4);
        v13 -= 4;
        *v31 = v4;
        v31[1] = 0uLL;
        v31[2] = 0uLL;
        v31[3] = 0uLL;
        v31 += 4;
      }

      while (!((v13 < 0) ^ v34 | (v13 == 0)));
    }

    sub_27756230C();
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DC14(a1, a2, a3, a4, 32);
  }
}

void sub_277563880(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277561A14(a3, 32);
    if (v5 >= 10)
    {
      sub_277561A14((v4 + 16), 32);
    }

    do
    {
      sub_277552128();
      v6.i64[0] = 0xFC00FC00FC00FC00;
      v6.i64[1] = 0xFC00FC00FC00FC00;
      v10 = (v8 + v7 + v7);
      v13 = *v10;
      v12 = (v10 + v7);
      v16 = *v12;
      v15 = (v12 + v7);
      v18 = vminq_s16(vsqaddq_u16(*v8, vrshrq_n_s16(v9, 4uLL)), v6);
      v20 = *v15;
      v19 = (v15 + v7);
      v22 = vminq_s16(vsqaddq_u16(*(v8 + v7), vrshrq_n_s16(v11, 4uLL)), v6);
      *v8 = v18;
      v23 = &v8->i8[v7];
      v25 = *v19;
      v24 = (v19 + v7);
      v27 = vminq_s16(vsqaddq_u16(v13, vrshrq_n_s16(v14, 4uLL)), v6);
      *v23 = v22;
      v28 = (v23 + v7);
      v29 = *v24;
      v31 = vminq_s16(vsqaddq_u16(v16, vrshrq_n_s16(v17, 4uLL)), v6);
      *v28 = v27;
      v32 = (v28 + v7);
      v33 = *(v24 + v7);
      *v32 = v31;
      v35 = (v32 + v7);
      *v35 = vminq_s16(vsqaddq_u16(v20, vrshrq_n_s16(v21, 4uLL)), v6);
      v36 = (v35 + v7);
      *v36 = vminq_s16(vsqaddq_u16(v25, vrshrq_n_s16(v26, 4uLL)), v6);
      v37 = (v36 + v7);
      *v37 = vminq_s16(vsqaddq_u16(v29, vrshrq_n_s16(v30, 4uLL)), v6);
      *(v37 + v7) = vminq_s16(vsqaddq_u16(v33, vrshrq_n_s16(v34, 4uLL)), v6);
    }

    while (v38 < 32);
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DCAC(a1, a2, a3, a4, 8);
  }
}

int32x4_t sub_2775639F4(double a1, double a2, double a3, double a4, int32x4_t a5, int32x4_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int32x4_t *a13)
{
  v18 = *(v13 + 16);
  v19 = vqrdmulhq_lane_s32(v14, *v13, 1);
  v20 = vqrdmulhq_lane_s32(v14, *v13, 0);
  v21 = vqrdmulhq_laneq_s32(v15, *v13, 2);
  v22 = vqrdmulhq_laneq_s32(v15, *v13, 3);
  v23 = vqrdmulhq_lane_s32(v16, *v18.i8, 1);
  v24 = vqrdmulhq_lane_s32(v16, *v18.i8, 0);
  v25 = vqrdmulhq_laneq_s32(v17, v18, 2);
  v26 = vqrdmulhq_laneq_s32(v17, v18, 3);
  result = *(v13 + 32);
  v28 = vmaxq_s32(vminq_s32(vqaddq_s32(v20, v22), a6), a5);
  v29 = vmaxq_s32(vminq_s32(vqsubq_s32(v20, v22), a6), a5);
  v30 = vmaxq_s32(vminq_s32(vqsubq_s32(v26, v24), a6), a5);
  v31 = vmaxq_s32(vminq_s32(vqaddq_s32(v26, v24), a6), a5);
  v32 = vmaxq_s32(vminq_s32(vqaddq_s32(v25, v23), a6), a5);
  v33 = vmaxq_s32(vminq_s32(vqsubq_s32(v25, v23), a6), a5);
  v34 = vmaxq_s32(vminq_s32(vqsubq_s32(v19, v21), a6), a5);
  v35 = vmaxq_s32(vminq_s32(vqaddq_s32(v19, v21), a6), a5);
  v36 = vmlsq_lane_s32(vmulq_lane_s32(v33, *result.i8, 1), v30, *result.i8, 0);
  v37 = vrshrq_n_s32(vnegq_s32(vmlaq_lane_s32(vmulq_n_s32(v33, result.i32[0]), v30, *result.i8, 1)), 0xCuLL);
  v38 = vmlaq_lane_s32(vmulq_n_s32(v34, result.i32[0]), v29, *result.i8, 1);
  v39 = vrshrq_n_s32(v36, 0xCuLL);
  v40 = vrshrq_n_s32(vmlsq_lane_s32(vmulq_lane_s32(v34, *result.i8, 1), v29, *result.i8, 0), 0xCuLL);
  v41 = vrshrq_n_s32(v38, 0xCuLL);
  v42 = vmaxq_s32(vminq_s32(vqsubq_s32(v28, v31), a6), a5);
  v43 = vmaxq_s32(vminq_s32(vqsubq_s32(v40, v37), a6), a5);
  v44 = vmaxq_s32(vminq_s32(vqsubq_s32(v35, v32), a6), a5);
  v45 = vmaxq_s32(vminq_s32(vqsubq_s32(v41, v39), a6), a5);
  *a13 = vmaxq_s32(vminq_s32(vqaddq_s32(v28, v31), a6), a5);
  a13[1] = vmaxq_s32(vminq_s32(vqaddq_s32(v40, v37), a6), a5);
  a13[2] = vrshrq_n_s32(vmlsq_laneq_s32(vmulq_laneq_s32(v45, result, 3), v43, result, 2), 0xCuLL);
  a13[3] = vrshrq_n_s32(vmlsq_laneq_s32(vmulq_laneq_s32(v44, result, 3), v42, result, 2), 0xCuLL);
  v46 = a13 + 4;
  *v46 = vrshrq_n_s32(vmlaq_laneq_s32(vmulq_laneq_s32(v44, result, 2), v42, result, 3), 0xCuLL);
  v46[1] = vrshrq_n_s32(vmlaq_laneq_s32(vmulq_laneq_s32(v45, result, 2), v43, result, 3), 0xCuLL);
  v46[2] = vmaxq_s32(vminq_s32(vqaddq_s32(v41, v39), a6), a5);
  v46[3] = vmaxq_s32(vminq_s32(vqaddq_s32(v35, v32), a6), a5);
  return result;
}

void sub_277563B4C(double a1, double a2, double a3, double a4, int32x4_t a5, int32x4_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int32x4_t *a13)
{
  do
  {
    v14 = v13[8];
    v15 = a13[8];
    v16 = a13[16];
    v17 = v13[24];
    v18 = v13[16];
    v19 = a13[24];
    v20 = vmaxq_s32(vminq_s32(vqaddq_s32(*a13, v14), a6), a5);
    v21 = vmaxq_s32(vminq_s32(vqsubq_s32(*a13, v14), a6), a5);
    v22 = vmaxq_s32(vminq_s32(vqaddq_s32(*v13, v15), a6), a5);
    v23 = vmaxq_s32(vminq_s32(vqsubq_s32(*v13, v15), a6), a5);
    v24 = vmaxq_s32(vminq_s32(vqsubq_s32(v17, v16), a6), a5);
    v25 = vmaxq_s32(vminq_s32(vqaddq_s32(v17, v16), a6), a5);
    v26 = vmaxq_s32(vminq_s32(vqaddq_s32(v19, v18), a6), a5);
    v27 = vmaxq_s32(vminq_s32(vqsubq_s32(v19, v18), a6), a5);
    v28 = vmlsq_laneq_s32(vmulq_laneq_s32(v23, qword_27A717080, 2), v21, qword_27A717080, 3);
    v29 = vrshrq_n_s32(vmlaq_laneq_s32(vmulq_laneq_s32(v23, qword_27A717080, 3), v21, qword_27A717080, 2), 0xCuLL);
    v30 = vrshrq_n_s32(v28, 0xCuLL);
    v31 = vmlsq_laneq_s32(vmulq_laneq_s32(v27, qword_27A717080, 2), v24, qword_27A717080, 3);
    v32 = vrshrq_n_s32(vnegq_s32(vmlaq_laneq_s32(vmulq_laneq_s32(v27, qword_27A717080, 3), v24, qword_27A717080, 2)), 0xCuLL);
    v33 = vrshrq_n_s32(v31, 0xCuLL);
    v34 = vmaxq_s32(vminq_s32(vqsubq_s32(v20, v25), a6), a5);
    v35 = vmaxq_s32(vminq_s32(vqsubq_s32(v30, v32), a6), a5);
    v36 = vmaxq_s32(vminq_s32(vqsubq_s32(v22, v26), a6), a5);
    v37 = vmaxq_s32(vminq_s32(vqsubq_s32(v29, v33), a6), a5);
    *a13 = vmaxq_s32(vminq_s32(vqaddq_s32(v20, v25), a6), a5);
    *v13 = vmaxq_s32(vminq_s32(vqaddq_s32(v30, v32), a6), a5);
    a13[8] = vrshrq_n_s32(vmlsq_lane_s32(vmulq_n_s32(v37, 2896), v35, 0x5A80000000000B50, 0), 0xCuLL);
    v13[8] = vrshrq_n_s32(vmlsq_lane_s32(vmulq_n_s32(v36, 2896), v34, 0x5A80000000000B50, 0), 0xCuLL);
    a13[16] = vrshrq_n_s32(vmlaq_lane_s32(vmulq_n_s32(v36, 2896), v34, 0x5A80000000000B50, 0), 0xCuLL);
    v13[16] = vrshrq_n_s32(vmlaq_lane_s32(vmulq_n_s32(v37, 2896), v35, 0x5A80000000000B50, 0), 0xCuLL);
    a13[24] = vmaxq_s32(vminq_s32(vqaddq_s32(v29, v33), a6), a5);
    v13[24] = vmaxq_s32(vminq_s32(vqaddq_s32(v22, v26), a6), a5);
    ++a13;
    --v13;
  }

  while (a13 < v13);
}

void sub_277563CD0(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 4 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  *(v8 + v2) = 0u;
  sub_27755EF04();
  *v27++ = vmaxq_s32(vminq_s32(v10, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v11, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v12, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v13, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v14, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v15, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v16, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v17, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v18, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v19, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v20, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v21, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v22, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v23, v9), v26);
  *v27 = vmaxq_s32(vminq_s32(v24, v9), v26);
  v27[1] = vmaxq_s32(vminq_s32(v25, v9), v26);
  *v28 = 0u;
  v30 = (v28 + v29);
  *v30 = 0u;
  v31 = (v30 + v29);
  *v31 = 0u;
  v32 = (v31 + v29);
  *v32 = 0u;
  v33 = (v32 + v29);
  *v33 = 0u;
  v34 = (v33 + v29);
  *v34 = 0u;
  v35 = (v34 + v29);
  *v35 = 0u;
  *(v35 + v29) = 0u;
  sub_2775615B8();
  v37 = v36 + 15;
  v36 -= 16;
  v38.i64[0] = 0x100000001;
  v38.i64[1] = 0x100000001;
  v39.i64[0] = 0x100000001;
  v39.i64[1] = 0x100000001;
  v40 = *v36++;
  v41 = *v36++;
  v43 = *v36++;
  v45 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v40, v42), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v40, v42), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v41, v44), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v41, v44), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v43, v46), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v43, v46), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v45, v47), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v45, v47), v38), v39);
  v48 = *v36++;
  v49 = *v36++;
  v51 = *v36++;
  v53 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v48, v50), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v48, v50), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v49, v52), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v49, v52), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v51, v54), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v51, v54), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v53, v55), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v53, v55), v38), v39);
  v56 = *v36++;
  v57 = *v36++;
  v59 = *v36++;
  v61 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v56, v58), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v56, v58), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v57, v60), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v57, v60), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v59, v62), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v59, v62), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v61, v63), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v61, v63), v38), v39);
  v64 = *v36++;
  v65 = *v36++;
  v67 = *v36++;
  v69 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v64, v66), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v64, v66), v38), v39);
  v72 = vmaxq_s32(vminq_s32(vqaddq_s32(v67, v70), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v65, v68), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v65, v68), v38), v39);
  v73 = vmaxq_s32(vminq_s32(vqaddq_s32(v69, v71), v38), v39);
  *v36++ = v72;
  *v37 = vmaxq_s32(vminq_s32(vqsubq_s32(v67, v70), v38), v39);
  *v36 = v73;
  v37[-1] = vmaxq_s32(vminq_s32(vqsubq_s32(v69, v71), v38), v39);
  v69.i64[0] = 0x100000001;
  v69.i64[1] = 0x100000001;
  v67.i64[0] = 0x100000001;
  v67.i64[1] = 0x100000001;
  v76 = (v74 + 8 * v75);
  *v74 = 0u;
  *(&v74[v75] - v75) = 0u;
  *v76 = 0u;
  *(v76 - v75) = 0u;
  *&v83 = sub_2775639F4(COERCE_DOUBLE(0x100000001), COERCE_DOUBLE(0x100000001), *v72.i64, *v73.i64, v67, v69, v77, v78, v79, v80, v81, v82, v36 + 17).u64[0];
  v86 = (v84 + 4 * v85);
  v88 = (v87 - 4 * v85);
  *v86 = 0u;
  *v88 = 0u;
  *(v86 - v85) = 0u;
  *(v88 + v85) = 0u;
  *&v101 = sub_2775639F4(v83, v96, v97, v98, v99, v100, v89, v90, v91, v92, v93, v94, v95).u64[0];
  *(v103 - 2 * v102 + v102) = 0u;
  *(v106 + v102) = 0u;
  *(v104 - 2 * v102 + v102) = 0u;
  *(v105 + v102) = 0u;
  *&v119 = sub_2775639F4(v101, v114, v115, v116, v117, v118, v107, v108, v109, v110, v111, v112, v113).u64[0];
  *v120 = 0u;
  *(v122 + v121) = 0u;
  *v123 = 0u;
  *(v124 + v121) = 0u;
  *&v137 = sub_2775639F4(v119, v132, v133, v134, v135, v136, v125, v126, v127, v128, v129, v130, v131).u64[0];
  sub_277563B4C(v137, v145, v146, v147, v148, v149, v139, v140, v141, v142, v143, v144, (v138 - 512));
}

void sub_2775641D8(_OWORD *a1@<X7>, uint64_t a2@<X8>)
{
  v2 = 4 * a2;
  *a1 = 0u;
  v3 = (a1 + v2);
  *v3 = 0u;
  v4 = (v3 + v2);
  *v4 = 0u;
  v5 = (v4 + v2);
  *v5 = 0u;
  v6 = (v5 + v2);
  *v6 = 0u;
  v7 = (v6 + v2);
  *v7 = 0u;
  v8 = (v7 + v2);
  *v8 = 0u;
  *(v8 + v2) = 0u;
  sub_27755EF04();
  *v27++ = vmaxq_s32(vminq_s32(v10, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v11, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v12, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v13, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v14, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v15, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v16, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v17, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v18, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v19, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v20, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v21, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v22, v9), v26);
  *v27++ = vmaxq_s32(vminq_s32(v23, v9), v26);
  *v27 = vmaxq_s32(vminq_s32(v24, v9), v26);
  v27[1] = vmaxq_s32(vminq_s32(v25, v9), v26);
  *v28 = 0u;
  v30 = (v28 + v29);
  *v30 = 0u;
  v31 = (v30 + v29);
  *v31 = 0u;
  v32 = (v31 + v29);
  *v32 = 0u;
  v33 = (v32 + v29);
  *v33 = 0u;
  v34 = (v33 + v29);
  *v34 = 0u;
  v35 = (v34 + v29);
  *v35 = 0u;
  *(v35 + v29) = 0u;
  sub_2775615B8();
  v37 = v36 + 15;
  v36 -= 16;
  v38.i64[0] = 0x100000001;
  v38.i64[1] = 0x100000001;
  v39.i64[0] = 0x100000001;
  v39.i64[1] = 0x100000001;
  v40 = *v36++;
  v41 = *v36++;
  v43 = *v36++;
  v45 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v40, v42), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v40, v42), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v41, v44), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v41, v44), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v43, v46), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v43, v46), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v45, v47), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v45, v47), v38), v39);
  v48 = *v36++;
  v49 = *v36++;
  v51 = *v36++;
  v53 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v48, v50), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v48, v50), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v49, v52), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v49, v52), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v51, v54), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v51, v54), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v53, v55), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v53, v55), v38), v39);
  v56 = *v36++;
  v57 = *v36++;
  v59 = *v36++;
  v61 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v56, v58), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v56, v58), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v57, v60), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v57, v60), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v59, v62), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v59, v62), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v61, v63), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v61, v63), v38), v39);
  v64 = *v36++;
  v65 = *v36++;
  v67 = *v36++;
  v69 = *v36;
  v36 -= 3;
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v64, v66), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v64, v66), v38), v39);
  v72 = vmaxq_s32(vminq_s32(vqaddq_s32(v67, v70), v38), v39);
  *v36++ = vmaxq_s32(vminq_s32(vqaddq_s32(v65, v68), v38), v39);
  *v37-- = vmaxq_s32(vminq_s32(vqsubq_s32(v65, v68), v38), v39);
  v73 = vmaxq_s32(vminq_s32(vqaddq_s32(v69, v71), v38), v39);
  *v36++ = v72;
  *v37 = vmaxq_s32(vminq_s32(vqsubq_s32(v67, v70), v38), v39);
  *v36 = v73;
  v37[-1] = vmaxq_s32(vminq_s32(vqsubq_s32(v69, v71), v38), v39);
  v69.i64[0] = 0x100000001;
  v69.i64[1] = 0x100000001;
  v67.i64[0] = 0x100000001;
  v67.i64[1] = 0x100000001;
  v76 = (v74 + 8 * v75);
  *v74 = 0u;
  *(&v74[v75] - v75) = 0u;
  *v76 = 0u;
  *(v76 - v75) = 0u;
  sub_2775639F4(COERCE_DOUBLE(vdup_n_s32(0x5A800000u)), COERCE_DOUBLE(0x100000001), *v72.i64, *v73.i64, v67, v69, v77, v78, v79, v80, v81, v82, v36 + 17);
  v85 = (v83 + 4 * v84);
  v87 = (v86 - 4 * v84);
  *v85 = 0u;
  *v87 = 0u;
  *(v85 - v84) = 0u;
  *(v87 + v84) = 0u;
  sub_2775639F4(COERCE_DOUBLE(vdup_n_s32(0x5A800000u)), v95, v96, v97, v98, v99, v88, v89, v90, v91, v92, v93, v94);
  *(v101 - 2 * v100 + v100) = 0u;
  *(v104 + v100) = 0u;
  *(v102 - 2 * v100 + v100) = 0u;
  *(v103 + v100) = 0u;
  sub_2775639F4(COERCE_DOUBLE(vdup_n_s32(0x5A800000u)), v112, v113, v114, v115, v116, v105, v106, v107, v108, v109, v110, v111);
  *v117 = 0u;
  *(v119 + v118) = 0u;
  *v120 = 0u;
  *(v121 + v118) = 0u;
  *&v134 = sub_2775639F4(COERCE_DOUBLE(vdup_n_s32(0x5A800000u)), v129, v130, v131, v132, v133, v122, v123, v124, v125, v126, v127, v128).u64[0];
  sub_277563B4C(v134, v142, v143, v144, v145, v146, v136, v137, v138, v139, v140, v141, (v135 - 512));
}

int16x8_t sub_277564790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x8_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  v11 = &STACK[0x3C0];
  v12 = a7 + 7;
  v13 = vdupq_n_s32(v9);
  do
  {
    v15 = *v10;
    v16 = *(v10 + 1);
    v17 = *(v10 + 2);
    v18 = *(v10 + 3);
    v14 = (v10 + 8);
    v20 = *v11;
    v21 = *(v11 + 1);
    v22 = *(v11 + 2);
    v23 = *(v11 + 3);
    v19 = (v11 - 8);
    v24 = *v14;
    v25 = v14[1];
    v26 = v14[2];
    v27 = v14[3];
    v10 = &v14[4];
    v28 = *v19;
    v29 = v19[1];
    v30 = v19[2];
    v31 = v19[3];
    v11 = &v19[-4];
    v32 = vtrn1q_s32(v15, v16);
    v33 = vtrn2q_s32(v15, v16);
    v34 = vtrn1q_s32(v17, v18);
    v35 = vtrn2q_s32(v17, v18);
    v36 = vtrn1q_s64(v32, v34);
    v37 = vtrn2q_s64(v32, v34);
    v38 = vtrn1q_s64(v33, v35);
    v39 = vtrn2q_s64(v33, v35);
    v40 = vtrn1q_s32(v24, v25);
    v41 = vtrn2q_s32(v24, v25);
    v42 = vtrn1q_s32(v26, v27);
    v43 = vtrn2q_s32(v26, v27);
    v44 = vtrn1q_s64(v40, v42);
    v45 = vtrn2q_s64(v40, v42);
    v46 = vtrn1q_s64(v41, v43);
    v47 = vtrn2q_s64(v41, v43);
    v48 = vtrn1q_s32(v23, v22);
    v49 = vtrn2q_s32(v23, v22);
    v50 = vtrn1q_s32(v21, v20);
    v51 = vtrn2q_s32(v21, v20);
    v52 = vtrn1q_s64(v48, v50);
    v53 = vtrn2q_s64(v48, v50);
    v54 = vtrn1q_s64(v49, v51);
    v55 = vtrn2q_s64(v49, v51);
    v56 = vtrn1q_s32(v31, v30);
    v57 = vtrn2q_s32(v31, v30);
    v58 = vtrn1q_s32(v29, v28);
    v59 = vtrn2q_s32(v29, v28);
    v60 = vtrn1q_s64(v56, v58);
    v61 = vtrn2q_s64(v56, v58);
    v62 = vtrn1q_s64(v57, v59);
    v63 = vtrn2q_s64(v57, v59);
    *a7 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqaddq_s32(v36, v52), v13)), vrshlq_s32(vqaddq_s32(v44, v60), v13));
    v64 = a7 + 8;
    *v12 = vrev64q_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqsubq_s32(v44, v60), v13)), vrshlq_s32(vqsubq_s32(v36, v52), v13)));
    v65 = v12 + 8;
    *v64 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqaddq_s32(v38, v54), v13)), vrshlq_s32(vqaddq_s32(v46, v62), v13));
    v64 += 8;
    *v65 = vrev64q_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqsubq_s32(v46, v62), v13)), vrshlq_s32(vqsubq_s32(v38, v54), v13)));
    v65 += 8;
    *v64 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqaddq_s32(v37, v53), v13)), vrshlq_s32(vqaddq_s32(v45, v61), v13));
    v64 += 8;
    *v65 = vrev64q_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqsubq_s32(v45, v61), v13)), vrshlq_s32(vqsubq_s32(v37, v53), v13)));
    v65 += 8;
    result = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqaddq_s32(v39, v55), v13)), vrshlq_s32(vqaddq_s32(v47, v63), v13));
    *v64 = result;
    *v65 = vrev64q_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vqsubq_s32(v47, v63), v13)), vrshlq_s32(vqsubq_s32(v39, v55), v13)));
    a7 = v64 - 23;
    v12 = v65 - 25;
  }

  while (v10 < v11);
  return result;
}

int16x8_t sub_277564948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x8_t *a7, uint64_t a8, uint64_t a9)
{
  v9 = &a9;
  v10 = &STACK[0x3C0];
  v11 = (&a7[4 * a2] - a2);
  do
  {
    v13 = *v9;
    v14 = *(v9 + 1);
    v15 = *(v9 + 2);
    v16 = *(v9 + 3);
    v12 = (v9 + 8);
    v18 = *v10;
    v19 = *(v10 + 1);
    v20 = *(v10 + 2);
    v21 = *(v10 + 3);
    v17 = (v10 - 8);
    v22 = *v12;
    v23 = v12[1];
    v24 = v12[2];
    v25 = v12[3];
    v9 = &v12[4];
    v26 = *v17;
    v27 = v17[1];
    v28 = v17[2];
    v29 = v17[3];
    v10 = &v17[-4];
    v30.i64[0] = 0xFC00FC00FC00FC00;
    v30.i64[1] = 0xFC00FC00FC00FC00;
    v32 = *a7;
    v31 = (a7 + a2);
    v34 = *v11;
    v33 = (v11 - a2);
    v35 = *v31;
    v36 = *v33;
    v37 = (v31 - a2);
    v38 = &v33->i8[a2];
    *v37 = vminq_s16(vsqaddq_u16(v32, vrshrq_n_s16(vqaddq_s16(v13, v21), 4uLL)), v30);
    v39 = (v37 + a2);
    *v38 = vminq_s16(vsqaddq_u16(v34, vrshrq_n_s16(vqsubq_s16(v13, v21), 4uLL)), v30);
    v40 = (v38 - a2);
    *v39 = vminq_s16(vsqaddq_u16(v35, vrshrq_n_s16(vqaddq_s16(v14, v20), 4uLL)), v30);
    v41 = &v39->i8[a2];
    *v40 = vminq_s16(vsqaddq_u16(v36, vrshrq_n_s16(vqsubq_s16(v14, v20), 4uLL)), v30);
    v42 = (v40 - a2);
    v44 = *v41;
    v43 = (v41 + a2);
    v46 = *v42;
    v45 = (v42 - a2);
    v47 = *v43;
    v48 = *v45;
    v49 = (v43 - a2);
    v50 = &v45->i8[a2];
    *v49 = vminq_s16(vsqaddq_u16(v44, vrshrq_n_s16(vqaddq_s16(v15, v19), 4uLL)), v30);
    v51 = (v49 + a2);
    *v50 = vminq_s16(vsqaddq_u16(v46, vrshrq_n_s16(vqsubq_s16(v15, v19), 4uLL)), v30);
    v52 = (v50 - a2);
    *v51 = vminq_s16(vsqaddq_u16(v47, vrshrq_n_s16(vqaddq_s16(v16, v18), 4uLL)), v30);
    v53 = &v51->i8[a2];
    *v52 = vminq_s16(vsqaddq_u16(v48, vrshrq_n_s16(vqsubq_s16(v16, v18), 4uLL)), v30);
    v54 = (v52 - a2);
    v56 = *v53;
    v55 = (v53 + a2);
    v58 = *v54;
    v57 = (v54 - a2);
    v59 = *v55;
    v60 = *v57;
    v61 = (v55 - a2);
    v62 = &v57->i8[a2];
    *v61 = vminq_s16(vsqaddq_u16(v56, vrshrq_n_s16(vqaddq_s16(v22, v29), 4uLL)), v30);
    v63 = (v61 + a2);
    *v62 = vminq_s16(vsqaddq_u16(v58, vrshrq_n_s16(vqsubq_s16(v22, v29), 4uLL)), v30);
    v64 = (v62 - a2);
    *v63 = vminq_s16(vsqaddq_u16(v59, vrshrq_n_s16(vqaddq_s16(v23, v28), 4uLL)), v30);
    v65 = &v63->i8[a2];
    *v64 = vminq_s16(vsqaddq_u16(v60, vrshrq_n_s16(vqsubq_s16(v23, v28), 4uLL)), v30);
    v66 = (v64 - a2);
    v68 = *v65;
    v67 = (v65 + a2);
    v70 = *v66;
    v69 = (v66 - a2);
    v71 = *v67;
    v72 = *v69;
    v73 = (v67 - a2);
    v74 = &v69->i8[a2];
    result = vminq_s16(vsqaddq_u16(v68, vrshrq_n_s16(vqaddq_s16(v24, v27), 4uLL)), v30);
    *v73 = result;
    v76 = (v73 + a2);
    *v74 = vminq_s16(vsqaddq_u16(v70, vrshrq_n_s16(vqsubq_s16(v24, v27), 4uLL)), v30);
    v77 = (v74 - a2);
    *v76 = vminq_s16(vsqaddq_u16(v71, vrshrq_n_s16(vqaddq_s16(v25, v26), 4uLL)), v30);
    a7 = &v76->i8[a2];
    *v77 = vminq_s16(vsqaddq_u16(v72, vrshrq_n_s16(vqsubq_s16(v25, v26), 4uLL)), v30);
    v11 = (v77 - a2);
  }

  while (v9 < v10);
  return result;
}

double sub_277564B28(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277563CD0(a3, 128);
    sub_277564790(v5, v6, v7, v8, v9, v10, v10, v11, v149);
    v15 = (v14 + 512);
    v16 = 28;
    if (v17 < *v13 || (sub_277563CD0((v12 + 16), 128), sub_277564790(v18, v19, v20, v21, v22, v23, v23 + 32, v24, v150), v15 = (v27 + 1024), v16 = 24, v28 < *v26) || (sub_277563CD0((v25 + 32), 128), sub_277564790(v29, v30, v31, v32, v33, v34, v34 + 64, v35, v150), v15 = (v38 + 1536), v16 = 20, v39 < *v37) || (sub_277563CD0((v36 + 48), 128), sub_277564790(v40, v41, v42, v43, v44, v45, v45 + 96, v46, v150), v15 = (v49 + 2048), v16 = 16, v50 < *v48) || (sub_277563CD0((v47 + 64), 128), sub_277564790(v51, v52, v53, v54, v55, v56, v56 + 128, v57, v150), v15 = (v60 + 2560), v16 = 12, v61 < *v59) || (sub_277563CD0((v58 + 80), 128), sub_277564790(v62, v63, v64, v65, v66, v67, v67 + 160, v68, v150), v15 = (v71 + 3072), v16 = 8, v72 < *v70) || (sub_277563CD0((v69 + 96), 128), sub_277564790(v73, v74, v75, v76, v77, v78, v78 + 192, v79, v150), v15 = (v82 + 3584), v16 = 4, v83 < *v81))
    {
      do
      {
        v91 = __OFSUB__(v16, 2);
        v16 -= 2;
        *v15 = 0uLL;
        v15[1] = 0uLL;
        v15[2] = 0uLL;
        v15[3] = 0uLL;
        v92 = v15 + 4;
        *v92 = 0uLL;
        v92[1] = 0uLL;
        v92[2] = 0uLL;
        v92[3] = 0uLL;
        v92 += 4;
        *v92 = 0uLL;
        v92[1] = 0uLL;
        v92[2] = 0uLL;
        v92[3] = 0uLL;
        v92 += 4;
        *v92 = 0uLL;
        v92[1] = 0uLL;
        v92[2] = 0uLL;
        v92[3] = 0uLL;
        v15 = v92 + 4;
      }

      while (!((v16 < 0) ^ v91 | (v16 == 0)));
    }

    else
    {
      sub_277563CD0((v80 + 112), 128);
      sub_277564790(v84, v85, v86, v87, v88, v89, v89 + 224, v90, v150);
    }

    sub_27755868C();
    sub_277564948(v93, v94, v95, v96, v97, v98, v93, v99, v150);
    sub_27755868C();
    sub_277564948(v100, v101, v102, v103, v104, v105, v100 + 1, v106, v151);
    sub_27755868C();
    sub_277564948(v107, v108, v109, v110, v111, v112, v107 + 2, v113, v152);
    sub_27755868C();
    sub_277564948(v114, v115, v116, v117, v118, v119, v114 + 3, v120, v153);
    sub_27755868C();
    sub_277564948(v121, v122, v123, v124, v125, v126, v121 + 4, v127, v154);
    sub_27755868C();
    sub_277564948(v128, v129, v130, v131, v132, v133, v128 + 5, v134, v155);
    sub_27755868C();
    sub_277564948(v135, v136, v137, v138, v139, v140, v135 + 6, v141, v156);
    sub_27755868C();
    *&result = sub_277564948(v142, v143, v144, v145, v146, v147, v142 + 7, v148, v157).u64[0];
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DCE4(a1, a2, a3, a4, 64);
  }

  return result;
}

void sub_277564D94(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_2775641D8(a3, 128);
    sub_277564790(v4, v5, v6, v7, v8, v9, v9, v10, v92);
    v14 = (v13 + 512);
    v15 = 28;
    if (v16 < *v12 || (sub_2775641D8((v11 + 16), 128), sub_277564790(v17, v18, v19, v20, v21, v22, v22 + 32, v23, v93), v14 = (v26 + 1024), v15 = 24, v27 < *v25) || (sub_2775641D8((v24 + 32), 128), sub_277564790(v28, v29, v30, v31, v32, v33, v33 + 64, v34, v94), v14 = (v37 + 1536), v15 = 20, v38 < *v36) || (sub_2775641D8((v35 + 48), 128), sub_277564790(v39, v40, v41, v42, v43, v44, v44 + 96, v45, v95), v14 = (v48 + 2048), v15 = 16, v49 < *v47) || (sub_2775641D8((v46 + 64), 128), sub_277564790(v50, v51, v52, v53, v54, v55, v55 + 128, v56, v96), v14 = (v59 + 2560), v15 = 12, v60 < *v58) || (sub_2775641D8((v57 + 80), 128), sub_277564790(v61, v62, v63, v64, v65, v66, v66 + 160, v67, v97), v14 = (v70 + 3072), v15 = 8, v71 < *v69) || (sub_2775641D8((v68 + 96), 128), sub_277564790(v72, v73, v74, v75, v76, v77, v77 + 192, v78, v98), v14 = (v81 + 3584), v15 = 4, v82 < *v80))
    {
      do
      {
        v90 = __OFSUB__(v15, 2);
        v15 -= 2;
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        v14[3] = 0uLL;
        v91 = v14 + 4;
        *v91 = 0uLL;
        v91[1] = 0uLL;
        v91[2] = 0uLL;
        v91[3] = 0uLL;
        v91 += 4;
        *v91 = 0uLL;
        v91[1] = 0uLL;
        v91[2] = 0uLL;
        v91[3] = 0uLL;
        v91 += 4;
        *v91 = 0uLL;
        v91[1] = 0uLL;
        v91[2] = 0uLL;
        v91[3] = 0uLL;
        v14 = v91 + 4;
      }

      while (!((v15 < 0) ^ v90 | (v15 == 0)));
    }

    else
    {
      sub_2775641D8((v79 + 112), 128);
      sub_277564790(v83, v84, v85, v86, v87, v88, v88 + 224, v89, v99);
    }

    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
    sub_27756230C();
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DCE4(a1, a2, a3, a4, 32);
  }
}

double sub_277564FE4(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277561E4C(a3, 128);
    v7 = (v6 + 256);
    v8 = 28;
    if (v9 < v10 || (sub_277561E4C((v5 + 16), 128), v7 = (v12 + 512), v8 = 24, v13 < v14) || (sub_277561E4C((v11 + 32), 128), v7 = (v16 + 768), v8 = 20, v17 < v18) || (sub_277561E4C((v15 + 48), 128), v7 = (v20 + 1024), v8 = 16, v21 < v22) || (sub_277561E4C((v19 + 64), 128), v7 = (v24 + 1280), v8 = 12, v25 < v26) || (sub_277561E4C((v23 + 80), 128), v7 = (v28 + 1536), v8 = 8, v29 < v30) || (sub_277561E4C((v27 + 96), 128), v7 = (v32 + 1792), v8 = 4, v33 < v34))
    {
      do
      {
        v35 = __OFSUB__(v8, 4);
        v8 -= 4;
        *v7 = 0uLL;
        v7[1] = 0uLL;
        v7[2] = 0uLL;
        v7[3] = 0uLL;
        v36 = v7 + 4;
        *v36 = 0uLL;
        v36[1] = 0uLL;
        v36[2] = 0uLL;
        v36[3] = 0uLL;
        v36 += 4;
        *v36 = 0uLL;
        v36[1] = 0uLL;
        v36[2] = 0uLL;
        v36[3] = 0uLL;
        v36 += 4;
        *v36 = 0uLL;
        v36[1] = 0uLL;
        v36[2] = 0uLL;
        v36[3] = 0uLL;
        v7 = v36 + 4;
      }

      while (!((v8 < 0) ^ v35 | (v8 == 0)));
    }

    else
    {
      sub_277561E4C((v31 + 112), 128);
    }

    sub_27755868C();
    sub_277564948(v37, v38, v39, v40, v41, v42, v37, v43, v65);
    sub_27755868C();
    sub_277564948(v44, v45, v46, v47, v48, v49, v44 + 1, v50, v66);
    sub_27755868C();
    sub_277564948(v51, v52, v53, v54, v55, v56, v51 + 2, v57, v67);
    sub_27755868C();
    *&result = sub_277564948(v58, v59, v60, v61, v62, v63, v58 + 3, v64, v68).u64[0];
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DCAC(a1, a2, a3, a4, 64);
  }

  return result;
}

uint16x8_t *sub_2775651A4(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_277563CD0(a3, 64);
    sub_277564790(v5, v6, v7, v8, v9, v10, v9, v11, v87);
    v18 = (v16 + 512);
    v19 = 12;
    if (v15 < *v17 || (sub_277563CD0(v14 + 1, 64), sub_277564790(v20, v21, v22, v23, v24, v25, v24 + 32, v26, v88), v18 = (v16 + 1024), v19 = 8, v15 < *v27) || (sub_277563CD0(v14 + 2, 64), sub_277564790(v28, v29, v30, v31, v32, v33, v32 + 64, v34, v89), v18 = (v16 + 1536), v19 = 4, v15 < *v35))
    {
      do
      {
        v43 = __OFSUB__(v19, 2);
        v19 -= 2;
        *v18 = 0uLL;
        v18[1] = 0uLL;
        v18[2] = 0uLL;
        v18[3] = 0uLL;
        v44 = v18 + 4;
        *v44 = 0uLL;
        v44[1] = 0uLL;
        v44[2] = 0uLL;
        v44[3] = 0uLL;
        v44 += 4;
        *v44 = 0uLL;
        v44[1] = 0uLL;
        v44[2] = 0uLL;
        v44[3] = 0uLL;
        v44 += 4;
        *v44 = 0uLL;
        v44[1] = 0uLL;
        v44[2] = 0uLL;
        v44[3] = 0uLL;
        v18 = v44 + 4;
      }

      while (!((v19 < 0) ^ v43 | (v19 == 0)));
    }

    else
    {
      sub_277563CD0(v14 + 3, 64);
      sub_277564790(v36, v37, v38, v39, v40, v41, v40 + 96, v42, v90);
    }

    v45 = sub_27755FDA4(v12, v13, v14, v15, v16, sub_277553048);
    v51 = sub_27755FDA4(v45, v46, v47, v48, v49, v50);
    v57 = sub_27755FDA4(v51, v52, v53, v54, v55, v56);
    v63 = sub_27755FDA4(v57, v58, v59, v60, v61, v62);
    v69 = sub_27755FDA4(v63, v64, v65, v66, v67, v68);
    v75 = sub_27755FDA4(v69, v70, v71, v72, v73, v74);
    v81 = sub_27755FDA4(v75, v76, v77, v78, v79, v80);
    return sub_27755FDA4(v81, v82, v83, v84, v85, v86);
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    return sub_27755DCE4(a1, a2, a3, a4, 16);
  }
}

double sub_277565344(uint16x8_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    sub_27755FC74(sub_27755EF04, a3, 128);
    v8 = (v7 + 128);
    v9 = 28;
    if (v10 < v11 || (sub_27755FC74(v6, (v5 + 16), 128), v8 = (v14 + 256), v9 = 24, v15 < v16) || (sub_27755FC74(v13, (v12 + 32), 128), v8 = (v19 + 384), v9 = 20, v20 < v21) || (sub_27755FC74(v18, (v17 + 48), 128), v8 = (v24 + 512), v9 = 16, v25 < v26) || (sub_27755FC74(v23, (v22 + 64), 128), v8 = (v29 + 640), v9 = 12, v30 < v31) || (sub_27755FC74(v28, (v27 + 80), 128), v8 = (v34 + 768), v9 = 8, v35 < v36) || (sub_27755FC74(v33, (v32 + 96), 128), v8 = (v39 + 896), v9 = 4, v40 < v41))
    {
      do
      {
        v42 = __OFSUB__(v9, 4);
        v9 -= 4;
        *v8 = 0uLL;
        v8[1] = 0uLL;
        v8[2] = 0uLL;
        v8[3] = 0uLL;
        v43 = v8 + 4;
        *v43 = 0uLL;
        v43[1] = 0uLL;
        v43[2] = 0uLL;
        v43[3] = 0uLL;
        v8 = v43 + 4;
      }

      while (!((v9 < 0) ^ v42 | (v9 == 0)));
    }

    else
    {
      sub_27755FC74(v38, (v37 + 112), 128);
    }

    sub_27755868C();
    sub_277564948(v44, v45, v46, v47, v48, v49, v44, v50, v58);
    sub_27755868C();
    *&result = sub_277564948(v51, v52, v53, v54, v55, v56, v51 + 1, v57, v59).u64[0];
  }

  else
  {
    vld1q_dup_f32(a3);
    *a3 = 0.0;
    sub_27755DC68(a1, a2, a3, a4, 64);
  }

  return result;
}

__n64 sub_2775654D0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = (a3 >> 4) | ((((a3 ^ (a3 >> 3)) ^ ((a3 >> 12) ^ (a3 >> 1))) & 0xF) << 12);
  result.n64_u16[0] = *(a4 + 2 * ((v4 >> 2) & 0x7FF));
  result.n64_u16[1] = *(a4 + 2 * ((v4 >> 3) & 0x7FF));
  result.n64_u16[2] = *(a4 + 2 * ((v4 >> 4) & 0x7FF));
  result.n64_u16[3] = *(a4 + 2 * (v4 >> 5));
  return result;
}

int16x4_t sub_27756557C(int16x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = (a4 >> 2) | ((((a4 ^ (a4 >> 3)) ^ ((a4 >> 12) ^ (a4 >> 1))) & 3) << 14);
  a1.i16[0] = *(a5 + 2 * ((v6 >> 4) & 0x7FF));
  a1.i16[1] = *(a5 + 2 * (v6 >> 5));
  return vrshl_s16(a1, v5);
}

int16x4_t sub_2775655C0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = (a3 >> 4) | ((((a3 ^ (a3 >> 3)) ^ ((a3 >> 12) ^ (a3 >> 1))) & 0xF) << 12);
  v6.i16[0] = *(a4 + 2 * ((v5 >> 2) & 0x7FF));
  v6.i16[1] = *(a4 + 2 * ((v5 >> 3) & 0x7FF));
  v6.i16[2] = *(a4 + 2 * ((v5 >> 4) & 0x7FF));
  v6.i16[3] = *(a4 + 2 * (v5 >> 5));
  return vrshl_s16(v6, v4);
}

int8x16_t sub_27756561C@<Q0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t result@<Q0>, int8x16_t a9@<Q1>)
{
  do
  {
    v13 = (a1 >> 6) & 0x7FF;
    a1 = a1 >> 1;
    result = vextq_s8(result, result, 2uLL);
    v11 = ((a9.i32[0] + v11 * a3 + a7) >> a6) + ((*(a2 + 2 * v13) + v10) >> v9);
    if (v11 > a4)
    {
      v11 = a4;
    }

    if (v11 < a5)
    {
      v11 = a5;
    }

    v14 = __OFSUB__(v12--, 1);
    a9 = vextq_s8(a9, a9, 4uLL);
    result.i16[7] = v11;
  }

  while (!((v12 < 0) ^ v14 | (v12 == 0)));
  return result;
}

int8x16_t sub_27756566C@<Q0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t result@<Q0>, int8x16_t a9@<Q1>)
{
  do
  {
    v15 = (a1 >> 6) & 0x7FF;
    a1 = a1 >> 1;
    result = vextq_s8(result, result, 2uLL);
    v16 = a9.i32[0] + v13 * a3 + v11 * v14;
    v13 = v11;
    v11 = ((v16 + a7) >> a6) + ((*(a2 + 2 * v15) + v10) >> v9);
    if (v11 > a4)
    {
      v11 = a4;
    }

    if (v11 < a5)
    {
      v11 = a5;
    }

    v17 = __OFSUB__(v12--, 1);
    a9 = vextq_s8(a9, a9, 4uLL);
    result.i16[7] = v11;
  }

  while (!((v12 < 0) ^ v17 | (v12 == 0)));
  return result;
}

int8x16_t sub_2775656C4@<Q0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t result@<Q0>, int8x16_t a9@<Q1>)
{
  do
  {
    v17 = (a1 >> 6) & 0x7FF;
    a1 = a1 >> 1;
    result = vextq_s8(result, result, 2uLL);
    v18 = a9.i32[0] + v14 * a3 + v13 * v15 + v11 * v16;
    v14 = v13;
    v13 = v11;
    v11 = ((v18 + a7) >> a6) + ((*(a2 + 2 * v17) + v10) >> v9);
    if (v11 > a4)
    {
      v11 = a4;
    }

    if (v11 < a5)
    {
      v11 = a5;
    }

    v19 = __OFSUB__(v12--, 1);
    a9 = vextq_s8(a9, a9, 4uLL);
    result.i16[7] = v11;
  }

  while (!((v12 < 0) ^ v19 | (v12 == 0)));
  return result;
}

int8x16_t *sub_27756576C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int16x8_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v10 = (a1 >> 4) | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 12);
  a8.i16[5] = *(a2 + 2 * ((v10 >> 2) & 0x7FF));
  a8.i16[6] = *(a2 + 2 * ((v10 >> 3) & 0x7FF));
  a8.i16[7] = *(a2 + 2 * ((v10 >> 4) & 0x7FF));
  v11 = sub_27756561C(2 * v10, a2, a3, a4, a5, a6, a7, vrshlq_s16(a8, v9), vextq_s8(a9, a9, 0xCuLL));
  v20 = sub_27756561C(v12 | ((((v12 ^ (v12 >> 3)) ^ ((v12 >> 12) ^ (v12 >> 1))) & 0xF) << 16), v13, v14, v15, v16, v17, v18, v11, v19);
  *v21 = v20;
  return v21 + 1;
}

int8x16_t *sub_277565818@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_27756561C(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_27756561C(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  *v19 = v18;
  return v19 + 1;
}

int8x16_t *sub_27756588C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_27756561C(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_27756561C(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v21.i16[0] = *(v20 + 2 * ((v19 >> 6) & 0x7FF));
  *v23.i8 = vrshl_s16(v21, v22);
  *v24 = vextq_s8(v18, v23, 2uLL);
  return v24 + 1;
}

int8x16_t *sub_277565968()
{
  sub_277565724();
  v1 = vrshrq_n_s16(vpaddq_s16(*v0, v0[1]), 1uLL);
  return sub_27756576C(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v2, *v1.i8, v3));
}

int8x16_t *sub_277565994()
{
  sub_277565724();
  v1 = vrshrq_n_s16(vpaddq_s16(*v0, v0[1]), 1uLL);
  return sub_277565818(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v2, *v1.i8, v3));
}

int8x16_t *sub_2775659B8()
{
  sub_277565724();
  v1 = vrshrq_n_s16(vpaddq_s16(*v0, v0[1]), 1uLL);
  return sub_277565A7C(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v2, *v1.i8, v3));
}

int8x16_t *sub_2775659DC()
{
  sub_277565724();
  v1 = vrshrq_n_s16(vaddq_s16(vpaddq_s16(*v0, *(v0 + 16)), vpaddq_s16(*(v0 + 164), *(v0 + 180))), 2uLL);
  return sub_27756576C(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v2, *v1.i8, v3));
}

int8x16_t *sub_277565A18()
{
  sub_277565724();
  v1 = vrshrq_n_s16(vaddq_s16(vpaddq_s16(*v0, *(v0 + 16)), vpaddq_s16(*(v0 + 164), *(v0 + 180))), 2uLL);
  return sub_277565818(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v2, *v1.i8, v3));
}

int8x16_t *sub_277565A7C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_27756561C(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v11 = v10 >> 3;
  v13.i16[0] = *(v12 + 2 * ((v11 >> 3) & 0x7FF));
  v13.i16[1] = *(v12 + 2 * ((v11 >> 4) & 0x7FF));
  v13.i16[2] = *(v12 + 2 * (v11 >> 5));
  *v15.i8 = vrshl_s16(v13, v14);
  *v16 = vextq_s8(v9, v15, 0xEuLL);
  return v16 + 1;
}

int8x16_t *sub_277565BE8@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int16x8_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v10 = (a1 >> 4) | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 12);
  a8.i16[5] = *(a2 + 2 * ((v10 >> 2) & 0x7FF));
  a8.i16[6] = *(a2 + 2 * ((v10 >> 3) & 0x7FF));
  a8.i16[7] = *(a2 + 2 * ((v10 >> 4) & 0x7FF));
  v11 = sub_27756566C(2 * v10, a2, a3, a4, a5, a6, a7, vrshlq_s16(a8, v9), vextq_s8(a9, a9, 0xCuLL));
  v20 = sub_27756566C(v12 | ((((v12 ^ (v12 >> 3)) ^ ((v12 >> 12) ^ (v12 >> 1))) & 0xF) << 16), v13, v14, v15, v16, v17, v18, v11, v19);
  *v21 = v20;
  return v21 + 1;
}

int8x16_t *sub_277565C98@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_27756566C(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_27756566C(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  *v19 = v18;
  return v19 + 1;
}

int8x16_t *sub_277565D0C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_27756566C(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_27756566C(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v21.i16[0] = *(v20 + 2 * ((v19 >> 6) & 0x7FF));
  *v23.i8 = vrshl_s16(v21, v22);
  *v24 = vextq_s8(v18, v23, 2uLL);
  return v24 + 1;
}

int8x16_t *sub_277565E08(uint64_t a1)
{
  sub_277565AE8(a1);
  v2 = vrshrq_n_s16(vpaddq_s16(*v1, v1[1]), 1uLL);
  return sub_277565BE8(v5, v6, v7, v8, v9, v10, v11, v2, vmlal_s16(v4, *v2.i8, *&vmovl_s8(vdup_laneq_s8(v3, 12))));
}

int8x16_t *sub_277565E44(uint64_t a1)
{
  sub_277565AE8(a1);
  v2 = vrshrq_n_s16(vpaddq_s16(*v1, v1[1]), 1uLL);
  return sub_277565C98(v5, v6, v7, v8, v9, v10, v11, v2, vmlal_s16(v4, *v2.i8, *&vmovl_s8(vdup_laneq_s8(v3, 12))));
}

int8x16_t *sub_277565E70(uint64_t a1)
{
  sub_277565AE8(a1);
  v2 = vrshrq_n_s16(vpaddq_s16(*v1, v1[1]), 1uLL);
  return sub_277565F5C(v5, v6, v7, v8, v9, v10, v11, v2, vmlal_s16(v4, *v2.i8, *&vmovl_s8(vdup_laneq_s8(v3, 12))));
}

int8x16_t *sub_277565E9C(uint64_t a1)
{
  sub_277565AE8(a1);
  v2 = vrshrq_n_s16(vaddq_s16(vpaddq_s16(*v1, *(v1 + 16)), vpaddq_s16(*(v1 + 164), *(v1 + 180))), 2uLL);
  return sub_277565BE8(v5, v6, v7, v8, v9, v10, v11, v2, vmlal_s16(v4, *v2.i8, *&vmovl_s8(vdup_laneq_s8(v3, 12))));
}

int8x16_t *sub_277565EE8(uint64_t a1)
{
  sub_277565AE8(a1);
  v2 = vrshrq_n_s16(vaddq_s16(vpaddq_s16(*v1, *(v1 + 16)), vpaddq_s16(*(v1 + 164), *(v1 + 180))), 2uLL);
  return sub_277565C98(v5, v6, v7, v8, v9, v10, v11, v2, vmlal_s16(v4, *v2.i8, *&vmovl_s8(vdup_laneq_s8(v3, 12))));
}

int8x16_t *sub_277565F5C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_27756566C(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v11 = v10 >> 3;
  v13.i16[0] = *(v12 + 2 * ((v11 >> 3) & 0x7FF));
  v13.i16[1] = *(v12 + 2 * ((v11 >> 4) & 0x7FF));
  v13.i16[2] = *(v12 + 2 * (v11 >> 5));
  *v15.i8 = vrshl_s16(v13, v14);
  *v16 = vextq_s8(v9, v15, 0xEuLL);
  return v16 + 1;
}

int8x16_t *sub_2775661B8@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int16x8_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v10 = (a1 >> 4) | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 12);
  a8.i16[5] = *(a2 + 2 * ((v10 >> 2) & 0x7FF));
  a8.i16[6] = *(a2 + 2 * ((v10 >> 3) & 0x7FF));
  a8.i16[7] = *(a2 + 2 * ((v10 >> 4) & 0x7FF));
  v11 = sub_2775656C4(2 * v10, a2, a3, a4, a5, a6, a7, vrshlq_s16(a8, v9), vextq_s8(a9, a9, 0xCuLL));
  v20 = sub_2775656C4(v12 | ((((v12 ^ (v12 >> 3)) ^ ((v12 >> 12) ^ (v12 >> 1))) & 0xF) << 16), v13, v14, v15, v16, v17, v18, v11, v19);
  *v21 = v20;
  return v21 + 1;
}

int8x16_t *sub_27756626C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_2775656C4(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_2775656C4(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  *v19 = v18;
  return v19 + 1;
}

int8x16_t *sub_2775662E0@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_2775656C4(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_2775656C4(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v21.i16[0] = *(v20 + 2 * ((v19 >> 6) & 0x7FF));
  *v23.i8 = vrshl_s16(v21, v22);
  *v24 = vextq_s8(v18, v23, 2uLL);
  return v24 + 1;
}

int8x16_t *sub_2775663E4()
{
  sub_277565FC8();
  v1 = vrshrq_n_s16(vpaddq_s16(*v0, v0[1]), 1uLL);
  return sub_2775661B8(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v3, *v1.i8, *&vmovl_s8(vdup_laneq_s8(v2, 8))));
}

int8x16_t *sub_277566428()
{
  sub_277565FC8();
  v1 = vrshrq_n_s16(vpaddq_s16(*v0, v0[1]), 1uLL);
  return sub_27756626C(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v3, *v1.i8, *&vmovl_s8(vdup_laneq_s8(v2, 8))));
}

int8x16_t *sub_277566454()
{
  sub_277565FC8();
  v1 = vrshrq_n_s16(vpaddq_s16(*v0, v0[1]), 1uLL);
  return sub_277566548(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v3, *v1.i8, *&vmovl_s8(vdup_laneq_s8(v2, 8))));
}

int8x16_t *sub_277566480()
{
  sub_277565FC8();
  v1 = vrshrq_n_s16(vaddq_s16(vpaddq_s16(*v0, *(v0 + 16)), vpaddq_s16(*(v0 + 164), *(v0 + 180))), 2uLL);
  return sub_2775661B8(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v3, *v1.i8, *&vmovl_s8(vdup_laneq_s8(v2, 8))));
}

int8x16_t *sub_2775664D4()
{
  sub_277565FC8();
  v1 = vrshrq_n_s16(vaddq_s16(vpaddq_s16(*v0, *(v0 + 16)), vpaddq_s16(*(v0 + 164), *(v0 + 180))), 2uLL);
  return sub_27756626C(v4, v5, v6, v7, v8, v9, v10, v1, vmlal_s16(v3, *v1.i8, *&vmovl_s8(vdup_laneq_s8(v2, 8))));
}

int8x16_t *sub_277566548@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_2775656C4(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v11 = v10 >> 3;
  v13.i16[0] = *(v12 + 2 * ((v11 >> 3) & 0x7FF));
  v13.i16[1] = *(v12 + 2 * ((v11 >> 4) & 0x7FF));
  v13.i16[2] = *(v12 + 2 * (v11 >> 5));
  *v15.i8 = vrshl_s16(v13, v14);
  *v16 = vextq_s8(v9, v15, 0xEuLL);
  return v16 + 1;
}

uint64_t sub_2775665B4(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  do
  {
    do
    {
      *v4.i8 = sub_2775654D0(result, a2, a3, a4);
      v6 = vrshlq_s16(v4, v5);
      *v7 = v6;
      result = v7[1].i64;
    }

    while (v8 > 8);
    v9 = sub_27756557C(*v6.i8, result, a2, a3, a4).u32[0];
    v11 = __OFSUB__(v10, 1);
    a2 = (v10 - 1);
    *v12 = v9;
    result = (v12 + 1);
  }

  while (!((a2 < 0) ^ v11 | (a2 == 0)));
  return result;
}

uint64_t sub_2775665F0(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  do
  {
    do
    {
      *v4.i8 = sub_2775654D0(result, a2, a3, a4);
      *v6 = vrshlq_s16(v4, v5);
      result = v6[1].i64;
    }

    while (v7 > 8);
    v8 = sub_2775655C0(result, a2, a3, a4);
    v10 = __OFSUB__(v9, 1);
    a2 = (v9 - 1);
    *v11 = v8;
    result = &v11[10] + 4;
  }

  while (!((a2 < 0) ^ v10 | (a2 == 0)));
  return result;
}

int16x8_t *sub_277566644(int16x8_t *a1, int16x8_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v10 = vandq_s8(a6, a3);
  *a1 = vmaxq_s16(vminq_s16(vqaddq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_s16(*v10.i8, *v8.i8), v9)), vrshlq_s32(vmull_high_s16(v10, v8), v9)), a2), v6), v7);
  return a1 + 1;
}

_DWORD *sub_277566798(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  v5 = a5 + 1;
  vld1_dup_s8(v5++);
  vld1_dup_s8(v5);
  sub_2775665B4(a1, 3, a3, a4);
  do
  {
    sub_277565758();
    sub_27756580C();
    sub_27756580C();
    sub_27756580C();
    sub_27756580C();
    sub_27756580C();
    sub_27756580C();
    sub_27756580C();
    sub_27756580C();
    v6 = sub_277565880();
    v11 = sub_27756557C(v10, v6, v7, v8, v9).u32[0];
    *v12 = v11;
    result = v12 + 1;
  }

  while (v14 > 1);
  return result;
}

uint64_t sub_277566808(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = sub_2775665B4(a1, 3, a3, a4);
  do
  {
    v5 = sub_277565BCC(result);
    v6 = sub_277565C8C(v5);
    v7 = sub_277565C8C(v6);
    v8 = sub_277565C8C(v7);
    v9 = sub_277565C8C(v8);
    v10 = sub_277565C8C(v9);
    v11 = sub_277565C8C(v10);
    v12 = sub_277565C8C(v11);
    v13 = sub_277565C8C(v12);
    v14 = sub_277565D00(v13);
    v19 = sub_27756557C(v18, v14, v15, v16, v17).u32[0];
    *v20 = v19;
    result = (v20 + 1);
  }

  while (v21 > 1);
  return result;
}

_DWORD *sub_277566868(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_2775665B4(a1, 3, a3, a4);
  do
  {
    sub_277566194();
    sub_277566260();
    sub_277566260();
    sub_277566260();
    sub_277566260();
    sub_277566260();
    sub_277566260();
    sub_277566260();
    sub_277566260();
    v4 = sub_2775662D4();
    v9 = sub_27756557C(v8, v4, v5, v6, v7).u32[0];
    *v10 = v9;
    result = v10 + 1;
  }

  while (v12 > 1);
  return result;
}

_DWORD *sub_2775669A0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  sub_2775665B4(a1, 3, a3, a4);
  do
  {
    sub_277566630(v6, v9, v7, v8);
    v10.n128_u64[0] = -1;
    v10.n128_u64[1] = -1;
    sub_277566630(v11, v10, v12, v13);
    sub_277566630(v14, v15, v16, v17);
    sub_277566630(v18, v19, v20, v21);
    sub_277566630(v22, v23, v24, v25);
    sub_277566630(v26, v27, v28, v29);
    sub_277566630(v30, v31, v32, v33);
    sub_277566630(v34, v35, v36, v37);
    sub_277566630(v38, v39, v40, v41);
    v46 = sub_277566630(v42, v45, v43, v44);
    v6.n128_u64[0] = sub_27756557C(v50, v46, v47, v48, v49);
    v5 += 4;
    *v51 = v6.n128_u32[0];
    result = v51 + 1;
  }

  while (v53 > 1);
  return result;
}

_DWORD *sub_277566A2C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  v6 = a5 + 1;
  vld1_dup_s8(v6++);
  vld1_dup_s8(v6);
  v6 += 2;
  vld1_dup_s8(v6);
  sub_2775665B4(a1, 3, a3, a4);
  do
  {
    sub_27756590C();
    sub_277565930();
    sub_277565930();
    sub_277565930();
    sub_277565930();
    sub_277565930();
    sub_277565930();
    sub_277565930();
    sub_277565930();
    v7 = sub_27756594C();
    v12 = sub_27756557C(v11, v7, v8, v9, v10).u32[0];
    v5 += 4;
    *v13 = v12;
    result = v13 + 1;
  }

  while (v15 > 1);
  return result;
}

uint64_t sub_277566AAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = sub_2775665B4(a1, 3, a3, a4);
  do
  {
    v6 = sub_277565D8C(result);
    v7 = sub_277565DC0(v6);
    v8 = sub_277565DC0(v7);
    v9 = sub_277565DC0(v8);
    v10 = sub_277565DC0(v9);
    v11 = sub_277565DC0(v10);
    v12 = sub_277565DC0(v11);
    v13 = sub_277565DC0(v12);
    v14 = sub_277565DC0(v13);
    v15 = sub_277565DE4(v14);
    v20 = sub_27756557C(v19, v15, v16, v17, v18).u32[0];
    v4 += 4;
    *v21 = v20;
    result = (v21 + 1);
  }

  while (v22 > 1);
  return result;
}

_DWORD *sub_277566B10(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_2775665B4(a1, 3, a3, a4);
  do
  {
    sub_277566360();
    sub_27756639C();
    sub_27756639C();
    sub_27756639C();
    sub_27756639C();
    sub_27756639C();
    sub_27756639C();
    sub_27756639C();
    sub_27756639C();
    v5 = sub_2775663C0();
    v10 = sub_27756557C(v9, v5, v6, v7, v8).u32[0];
    v4 += 4;
    *v11 = v10;
    result = v11 + 1;
  }

  while (v13 > 1);
  return result;
}

uint64_t sub_277566C4C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  result = sub_2775665F0(a1, 3, a3, a4);
  v9 = 35;
  do
  {
    v10 = sub_27756667C(result, v9, v7, v8);
    v14 = sub_27756667C(v10, v11, v12, v13);
    v18 = sub_27756667C(v14, v15, v16, v17);
    v22 = sub_27756667C(v18, v19, v20, v21);
    v26 = sub_27756667C(v22, v23, v24, v25);
    v30 = sub_2775666BC(v26, v27, v28, v29);
    v32 = __OFSUB__(v31, 1);
    v9 = (v31 - 1);
    v5 += 136;
    result = v30[4].i64 + 4;
  }

  while (!((v9 < 0) ^ v32 | (v9 == 0)));
  return result;
}

uint64_t sub_277566CC0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  v6 = a5 + 1;
  vld1_dup_s8(v6++);
  vld1_dup_s8(v6);
  v6 += 2;
  vld1_dup_s8(v6);
  sub_2775665F0(a1, 3, a3, a4);
  do
  {
    sub_2775659DC();
    sub_277565A18();
    sub_277565A18();
    sub_277565A18();
    sub_277565A18();
    v5 += 136;
    result = sub_277565A4C() + 68;
  }

  while (v8 > 1);
  return result;
}

uint64_t sub_277566D28(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = sub_2775665F0(a1, 3, a3, a4);
  do
  {
    v6 = sub_277565E9C(result);
    v7 = sub_277565EE8(v6);
    v8 = sub_277565EE8(v7);
    v9 = sub_277565EE8(v8);
    v10 = sub_277565EE8(v9);
    v4 += 136;
    result = sub_277565F24(v10) + 68;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_277566D74(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_2775665F0(a1, 3, a3, a4);
  do
  {
    sub_277566480();
    sub_2775664D4();
    sub_2775664D4();
    sub_2775664D4();
    sub_2775664D4();
    v4 += 136;
    result = sub_277566510() + 68;
  }

  while (v6 > 1);
  return result;
}

uint64_t sub_277566E9C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  result = sub_2775665F0(a1, 3, a3, a4);
  v9 = 70;
  do
  {
    v10 = sub_2775666A4(result, v9, v7, v8);
    v14 = sub_2775666A4(v10, v11, v12, v13);
    v18 = sub_2775666A4(v14, v15, v16, v17);
    v22 = sub_2775666A4(v18, v19, v20, v21);
    v26 = sub_2775666A4(v22, v23, v24, v25);
    v30 = sub_2775666EC(v26, v27, v28, v29);
    v32 = __OFSUB__(v31, 1);
    v9 = (v31 - 1);
    v5 -= 28;
    result = v30[4].i64 + 4;
  }

  while (!((v9 < 0) ^ v32 | (v9 == 0)));
  return result;
}

__int8 *sub_277566F10(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  vld1_dup_s8(a5);
  v6 = a5 + 1;
  vld1_dup_s8(v6++);
  vld1_dup_s8(v6);
  v6 += 2;
  vld1_dup_s8(v6);
  sub_2775665F0(a1, 3, a3, a4);
  do
  {
    sub_277565968();
    sub_277565994();
    sub_277565994();
    sub_277565994();
    sub_277565994();
    v5 -= 28;
    result = &sub_2775659B8()[4].i8[4];
  }

  while (v8 > 1);
  return result;
}

__int8 *sub_277566F78(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = sub_2775665F0(a1, 3, a3, a4);
  do
  {
    v6 = sub_277565E08(result);
    v7 = sub_277565E44(v6);
    v8 = sub_277565E44(v7);
    v9 = sub_277565E44(v8);
    v10 = sub_277565E44(v9);
    v4 -= 28;
    result = &sub_277565E70(v10)[4].i8[4];
  }

  while (v11 > 1);
  return result;
}

__int8 *sub_277566FC4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_2775665F0(a1, 3, a3, a4);
  do
  {
    sub_2775663E4();
    sub_277566428();
    sub_277566428();
    sub_277566428();
    sub_277566428();
    v4 -= 28;
    result = &sub_277566454()[4].i8[4];
  }

  while (v6 > 1);
  return result;
}

__int8 *sub_2775673C0()
{
  do
  {
    sub_277567048();
    *v13 = vminq_u16(vmaxq_u16(vsqaddq_u16(v7, vqrdmulhq_s16(v3, vshlq_u16(vmovl_u8(*v0.i8), v2))), v11), v12);
    v13[1] = vminq_u16(vmaxq_u16(vsqaddq_u16(v8, vqrdmulhq_s16(v4, vshlq_u16(vmovl_high_u8(v0), v2))), v11), v12);
    v13[2] = vminq_u16(vmaxq_u16(vsqaddq_u16(v9, vqrdmulhq_s16(v5, vshlq_u16(vmovl_u8(*v1.i8), v2))), v11), v12);
    v13[3] = vminq_u16(vmaxq_u16(vsqaddq_u16(v10, vqrdmulhq_s16(v6, vshlq_u16(vmovl_high_u8(v1), v2))), v11), v12);
    result = &v13->i8[v14];
  }

  while (v16 > 1);
  return result;
}

__int8 *sub_277567468()
{
  do
  {
    sub_277567048();
    v11 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v4.i8, *v1.i8), *v8.i8, *v0.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v4, v1), v8, v0), 5uLL);
    v12 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v5.i8, *v1.i8), *v9.i8, *v0.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v5, v1), v9, v0), 5uLL);
    v13 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v6.i8, *v1.i8), *v10.i8, *v0.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v6, v1), v10, v0), 5uLL);
    v25 = vminq_u16(vmaxq_u16(vsqaddq_u16(v19, vqrdmulhq_s16(vmaxq_s16(vminq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v3.i8, *v1.i8), *v7.i8, *v0.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v3, v1), v7, v0), 5uLL), v14), v15), vshlq_u16(vmovl_u8(*v16.i8), v18))), v23), v24);
    v0 = vdupq_lane_s16(v26, 0);
    v1 = vdupq_lane_s16(v26, 1);
    *v27 = v25;
    v27[1] = vminq_u16(vmaxq_u16(vsqaddq_u16(v20, vqrdmulhq_s16(vmaxq_s16(vminq_s16(v11, v14), v15), vshlq_u16(vmovl_high_u8(v16), v18))), v23), v24);
    v27[2] = vminq_u16(vmaxq_u16(vsqaddq_u16(v21, vqrdmulhq_s16(vmaxq_s16(vminq_s16(v12, v14), v15), vshlq_u16(vmovl_u8(*v17.i8), v18))), v23), v24);
    v27[3] = vminq_u16(vmaxq_u16(vsqaddq_u16(v22, vqrdmulhq_s16(vmaxq_s16(vminq_s16(v13, v14), v15), vshlq_u16(vmovl_high_u8(v17), v18))), v23), v24);
    result = &v27->i8[v28];
  }

  while (v30 > 1);
  if (v2 > 2)
  {
    return sub_2775673C0();
  }

  return result;
}

__int8 *sub_2775675A8()
{
  do
  {
    sub_277567048();
    *v8.i8 = vmax_s16(vmin_s16(vqrshrn_n_s32(vmlal_s16(vmull_s16(v0, v1), v2, v3), 5uLL), v5), v7);
    *v19 = vminq_u16(vmaxq_u16(vsqaddq_u16(v13, vqrdmulhq_s16(v8, vshlq_u16(vmovl_u8(*v4.i8), v9))), v17), v18);
    v19[1] = vminq_u16(vmaxq_u16(vsqaddq_u16(v14, vqrdmulhq_s16(v10, vshlq_u16(vmovl_high_u8(v4), v9))), v17), v18);
    v19[2] = vminq_u16(vmaxq_u16(vsqaddq_u16(v15, vqrdmulhq_s16(v11, vshlq_u16(vmovl_u8(*v6.i8), v9))), v17), v18);
    v19[3] = vminq_u16(vmaxq_u16(vsqaddq_u16(v16, vqrdmulhq_s16(v12, vshlq_u16(vmovl_high_u8(v6), v9))), v17), v18);
    result = &v19->i8[v20];
  }

  while (v22 > 1);
  return result;
}

__int8 *sub_27756766C@<X0>(int16x4_t *a1@<X8>)
{
  do
  {
    v3 = *a1;
    sub_277567048();
    v18 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v12.i8, *v2.i8), *v15.i8, *v1.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v12, v2), v15, v1), 5uLL);
    v19 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v13.i8, *v2.i8), *v16.i8, *v1.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v13, v2), v16, v1), 5uLL);
    v20 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v14.i8, *v2.i8), *v17.i8, *v1.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v14, v2), v17, v1), 5uLL);
    v30 = vminq_u16(vmaxq_u16(vsqaddq_u16(v24, vqrdmulhq_s16(vmaxq_s16(vminq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(vmax_s16(vmin_s16(vqrshrn_n_s32(vmlal_s16(vmull_s16(v5, v6), *v7.i8, v8), 5uLL), *v10.i8), *v11.i8), *v2.i8), vmax_s16(vmin_s16(vqrshrn_n_s32(vmlal_s16(vmull_s16(v3, v6), *v9.i8, v8), 5uLL), *v10.i8), *v11.i8), *v1.i8), 5uLL), vmlal_high_s16(vmull_high_s16(v7, v2), v9, v1), 5uLL), v10), v11), vshlq_u16(vmovl_u8(*v21.i8), v23))), v28), v29);
    v1 = vdupq_lane_s16(v8, 0);
    v2 = vdupq_lane_s16(v8, 1);
    *v31 = v30;
    v31[1] = vminq_u16(vmaxq_u16(vsqaddq_u16(v25, vqrdmulhq_s16(vmaxq_s16(vminq_s16(v18, v10), v11), vshlq_u16(vmovl_high_u8(v21), v23))), v28), v29);
    v31[2] = vminq_u16(vmaxq_u16(vsqaddq_u16(v26, vqrdmulhq_s16(vmaxq_s16(vminq_s16(v19, v10), v11), vshlq_u16(vmovl_u8(*v22.i8), v23))), v28), v29);
    v31[3] = vminq_u16(vmaxq_u16(vsqaddq_u16(v27, vqrdmulhq_s16(vmaxq_s16(vminq_s16(v20, v10), v11), vshlq_u16(vmovl_high_u8(v22), v23))), v28), v29);
    result = &v31->i8[v32];
  }

  while (v34 > 1);
  if (v4 > 2)
  {
    return sub_2775675A8();
  }

  return result;
}

void sub_2775677E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = (a5 + 4 * a11);
  v14 = v13 + 98;
  v15 = v13 + 94;
  v13 += 102;
  vld1q_dup_s16(v14);
  vld1q_dup_s16(v13);
  vld1q_dup_s16(v15);
  __asm { BR              X13 }
}

void sub_27756792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = (a5 + 4 * a11);
  v14 = v13 + 98;
  v15 = v13 + 94;
  v13 += 102;
  vld1q_dup_s16(v14);
  vld1q_dup_s16(v13);
  vld1q_dup_s16(v15);
  __asm { BR              X13 }
}

void sub_277567A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = (a5 + 4 * a11);
  v14 = v13 + 98;
  v15 = v13 + 94;
  v13 += 102;
  vld1q_dup_s16(v14);
  vld1q_dup_s16(v13);
  vld1q_dup_s16(v15);
  __asm { BR              X13 }
}

__int8 *sub_277567BE4(uint64_t a1, uint16x8_t *a2)
{
  do
  {
    v2 = *a2;
    v3 = a2[1];
    v4 = a2[2];
    v5 = a2[3];
    sub_277567048();
    *v15 = vminq_u16(vmaxq_u16(vsqaddq_u16(v2, vqrdmulhq_s16(v9, vshlq_u16(vmovl_u8(*v6.i8), v8))), v13), v14);
    v15[1] = vminq_u16(vmaxq_u16(vsqaddq_u16(v3, vqrdmulhq_s16(v10, vshlq_u16(vmovl_high_u8(v6), v8))), v13), v14);
    v15[2] = vminq_u16(vmaxq_u16(vsqaddq_u16(v4, vqrdmulhq_s16(v11, vshlq_u16(vmovl_u8(*v7.i8), v8))), v13), v14);
    v15[3] = vminq_u16(vmaxq_u16(vsqaddq_u16(v5, vqrdmulhq_s16(v12, vshlq_u16(vmovl_high_u8(v7), v8))), v13), v14);
    result = &v15->i8[v16];
  }

  while (v18 > 1);
  return result;
}

__int8 *sub_2775685A8(uint64_t a1, uint16x8_t *a2)
{
  do
  {
    v2 = *a2;
    v3 = a2[1];
    sub_2775671CC();
    *v10 = vminq_u16(vmaxq_u16(vsqaddq_u16(v2, vqrdmulhq_s16(v6, vshlq_u16(vmovl_u8(*v4.i8), v5))), v8), v9);
    v10[1] = vminq_u16(vmaxq_u16(vsqaddq_u16(v3, vqrdmulhq_s16(v7, vshlq_u16(vmovl_high_u8(v4), v5))), v8), v9);
    result = &v10->i8[v11];
  }

  while (v13 > 1);
  return result;
}

uint64_t sub_277568C3C(uint64_t a1, uint64_t a2, int16x8_t *a3, __n128 *a4, unsigned int a5)
{
  v5 = a4[1];
  v6 = vaddq_s16(*a3, *a4);
  v7 = vaddq_s16(a3[1], v5);
  return ((&dword_277569014 - *(&dword_277569014 + __clz(a5) - 24)))(a1, a2, &a3[2], &a4[2], v6, v7, *a4, v5, vqrshrun_high_n_s16(vqrshrun_n_s16(v6, 5uLL), v7, 5uLL));
}

_DWORD *sub_277568C6C(_DWORD *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, int a11)
{
  v11 = (a1 + a2);
  v12 = 2 * a2;
  *a1 = a9.n128_u32[0];
  v13 = (a1 + v12);
  *v11 = a9.n128_u32[1];
  v14 = (v11 + v12);
  *v13 = a9.n128_u32[2];
  result = (v13 + v12);
  *v14 = a9.n128_u32[3];
  v16 = (v14 + v12);
  if (a11 != 4)
  {
    v18 = *a3;
    v19 = a3[1];
    v17 = a3 + 2;
    v21 = *a4;
    v22 = a4[1];
    v20 = a4 + 2;
    v23 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(v18, v21), 5uLL), vaddq_s16(v19, v22), 5uLL);
    *result = v23.i32[0];
    v24 = (result + v12);
    *v16 = v23.i32[1];
    v25 = (v16 + v12);
    *v24 = v23.i32[2];
    result = (v24 + v12);
    *v25 = v23.i32[3];
    v26 = (v25 + v12);
    if (a11 != 8)
    {
      v27 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(*v17, *v20), 5uLL), vaddq_s16(v17[1], v20[1]), 5uLL);
      *result = v27.i32[0];
      v28 = (result + v12);
      *v26 = v27.i32[1];
      v29 = (v26 + v12);
      v30 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(v17[2], v20[2]), 5uLL), vaddq_s16(v17[3], v20[3]), 5uLL);
      *v28 = v27.i32[2];
      v31 = (v28 + v12);
      *v29 = v27.i32[3];
      v32 = (v29 + v12);
      *v31 = v30.i32[0];
      v33 = (v31 + v12);
      *v32 = v30.i32[1];
      *v33 = v30.i32[2];
      result = (v33 + v12);
      *(v32 + v12) = v30.i32[3];
    }
  }

  return result;
}

uint64_t sub_277569020(uint64_t a1, uint64_t a2, int16x8_t *a3, __n128 *a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v7 = vshlq_n_s16(vnegq_s16(vdupq_n_s16(a7)), 0xBuLL);
  v8 = a4[1];
  v9 = vaddq_s16(*a4, vqdmulhq_s16(vsubq_s16(*a4, *a3), v7));
  v10 = vaddq_s16(v8, vqdmulhq_s16(vsubq_s16(v8, a3[1]), v7));
  return ((&dword_2775695E4 - *(&dword_2775695E4 + __clz(a5) - 24)))(a1, a2, &a3[2], &a4[2], v9, v10, *a4, v8, vqrshrun_high_n_s16(vqrshrun_n_s16(v9, 4uLL), v10, 4uLL));
}

_DWORD *sub_27756906C(_DWORD *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, int a11)
{
  v12 = (a1 + a2);
  v13 = 2 * a2;
  *a1 = a9.n128_u32[0];
  v14 = (a1 + v13);
  *v12 = a9.n128_u32[1];
  v15 = (v12 + v13);
  *v14 = a9.n128_u32[2];
  result = (v14 + v13);
  *v15 = a9.n128_u32[3];
  v17 = (v15 + v13);
  if (a11 != 4)
  {
    v19 = *a3;
    v20 = a3[1];
    v18 = a3 + 2;
    v22 = *a4;
    v23 = a4[1];
    v21 = a4 + 2;
    v24 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(v22, vqdmulhq_s16(vsubq_s16(v22, v19), v11)), 4uLL), vaddq_s16(v23, vqdmulhq_s16(vsubq_s16(v23, v20), v11)), 4uLL);
    *result = v24.i32[0];
    v25 = (result + v13);
    *v17 = v24.i32[1];
    v26 = (v17 + v13);
    *v25 = v24.i32[2];
    result = (v25 + v13);
    *v26 = v24.i32[3];
    v27 = (v26 + v13);
    if (a11 != 8)
    {
      v28 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(*v21, vqdmulhq_s16(vsubq_s16(*v21, *v18), v11)), 4uLL), vaddq_s16(v21[1], vqdmulhq_s16(vsubq_s16(v21[1], v18[1]), v11)), 4uLL);
      *result = v28.i32[0];
      v29 = (result + v13);
      *v27 = v28.i32[1];
      v30 = (v27 + v13);
      v31 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(v21[2], vqdmulhq_s16(vsubq_s16(v21[2], v18[2]), v11)), 4uLL), vaddq_s16(v21[3], vqdmulhq_s16(vsubq_s16(v21[3], v18[3]), v11)), 4uLL);
      *v29 = v28.i32[2];
      v32 = (v29 + v13);
      *v30 = v28.i32[3];
      v33 = (v30 + v13);
      *v32 = v31.i32[0];
      v34 = (v32 + v13);
      *v33 = v31.i32[1];
      *v34 = v31.i32[2];
      result = (v34 + v13);
      *(v33 + v13) = v31.i32[3];
    }
  }

  return result;
}

uint64_t sub_2775695F0(uint64_t a1, uint64_t a2, int16x8_t *a3, __n128 *a4, unsigned int a5, uint64_t a6, int8x16_t *a7)
{
  v7.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v7.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  _Q30 = vmulq_s8(*a7, v7);
  v9 = a4[1];
  __asm { SHLL2           V29.8H, V30.16B, #8 }

  v15 = vaddq_s16(*a4, vqdmulhq_s16(vsubq_s16(*a4, *a3), vshll_n_s8(*_Q30.i8, 8uLL)));
  v16 = vaddq_s16(v9, vqdmulhq_s16(vsubq_s16(v9, a3[1]), _Q29));
  return ((&dword_277569D8C - *(&dword_277569D8C + __clz(a5) - 24)))(a1, a2, &a3[2], &a4[2], v15, v16, *a4, v9, vqrshrun_high_n_s16(vqrshrun_n_s16(v15, 4uLL), v16, 4uLL));
}

_DWORD *sub_277569644(_DWORD *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, int a11, int8x16_t *a12)
{
  v13 = (a1 + a2);
  v14 = 2 * a2;
  *a1 = a9.n128_u32[0];
  v15 = (a1 + v14);
  *v13 = a9.n128_u32[1];
  v16 = (v13 + v14);
  *v15 = a9.n128_u32[2];
  result = (v15 + v14);
  *v16 = a9.n128_u32[3];
  v18 = (v16 + v14);
  if (a11 != 4)
  {
    v20 = *a12;
    v19 = a12 + 1;
    v22 = *a3;
    v23 = a3[1];
    v21 = a3 + 2;
    _Q30 = vmulq_s8(v20, v12);
    v26 = *a4;
    v27 = a4[1];
    v25 = a4 + 2;
    __asm { SHLL2           V29.8H, V30.16B, #8 }

    v33 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(v26, vqdmulhq_s16(vsubq_s16(v26, v22), vshll_n_s8(*_Q30.i8, 8uLL))), 4uLL), vaddq_s16(v27, vqdmulhq_s16(vsubq_s16(v27, v23), _Q29)), 4uLL);
    *result = v33.i32[0];
    v34 = (result + v14);
    *v18 = v33.i32[1];
    v35 = (v18 + v14);
    *v34 = v33.i32[2];
    result = (v34 + v14);
    *v35 = v33.i32[3];
    v36 = (v35 + v14);
    if (a11 != 8)
    {
      _Q30 = vmulq_s8(*v19, v12);
      __asm { SHLL2           V29.8H, V30.16B, #8 }

      v39 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(*v25, vqdmulhq_s16(vsubq_s16(*v25, *v21), vshll_n_s8(*_Q30.i8, 8uLL))), 4uLL), vaddq_s16(v25[1], vqdmulhq_s16(vsubq_s16(v25[1], v21[1]), _Q29)), 4uLL);
      *result = v39.i32[0];
      v40 = (result + v14);
      *v36 = v39.i32[1];
      v41 = (v36 + v14);
      _Q30 = vmulq_s8(v19[1], v12);
      __asm { SHLL2           V29.8H, V30.16B, #8 }

      v44 = vqrshrun_high_n_s16(vqrshrun_n_s16(vaddq_s16(v25[2], vqdmulhq_s16(vsubq_s16(v25[2], v21[2]), vshll_n_s8(*_Q30.i8, 8uLL))), 4uLL), vaddq_s16(v25[3], vqdmulhq_s16(vsubq_s16(v25[3], v21[3]), _Q29)), 4uLL);
      *v40 = v39.i32[2];
      v45 = (v40 + v14);
      *v41 = v39.i32[3];
      v46 = (v41 + v14);
      *v45 = v44.i32[0];
      v47 = (v45 + v14);
      *v46 = v44.i32[1];
      *v47 = v44.i32[2];
      result = (v47 + v14);
      *(v46 + v14) = v44.i32[3];
    }
  }

  return result;
}

uint64_t sub_277569D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5.n128_u64[0] = 0x4040404040404040;
  v5.n128_u64[1] = 0x4040404040404040;
  return ((&qword_277569F98 - *(&qword_277569F98 + __clz(a5) - 24)))(vdupq_n_s16(0x1AF7u), v5);
}

_DWORD *sub_277569DC4(_DWORD *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, int8x16_t a6, uint64_t a7, int a8, int8x16_t *a9)
{
  do
  {
    v10 = *a3;
    v11 = a3[1];
    a3 += 2;
    v12 = *a4;
    v13 = a4[1];
    a4 += 2;
    v14 = __OFSUB__(a8, 4);
    a8 -= 4;
    v15 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v10, v12)), 8uLL);
    v16 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v11, v13)), 8uLL);
    v17 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v15, 9uLL), vsubq_s16(v12, v10)), v10), 4uLL);
    v18 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v16, 9uLL), vsubq_s16(v13, v11)), v11), 4uLL);
    *a9++ = vsubq_s8(a6, vuzp1q_s8(v15, v16));
    *result = v17.i32[0];
    v19 = (result + a2);
    *v9 = v17.i32[1];
    v20 = (v9 + a2);
    *v19 = v18.i32[0];
    result = (v19 + a2);
    *v20 = v18.i32[1];
    v9 = (v20 + a2);
  }

  while (!((a8 < 0) ^ v14 | (a8 == 0)));
  return result;
}

int8x8_t *sub_277569E34(int8x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, int8x16_t a6, uint64_t a7, int a8, int8x16_t *a9)
{
  do
  {
    v10 = *a3;
    v11 = a3[1];
    a3 += 2;
    v12 = *a4;
    v13 = a4[1];
    a4 += 2;
    v14 = __OFSUB__(a8, 2);
    a8 -= 2;
    v15 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v10, v12)), 8uLL);
    v16 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v11, v13)), 8uLL);
    *a9++ = vsubq_s8(a6, vuzp1q_s8(v15, v16));
    *result = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v15, 9uLL), vsubq_s16(v12, v10)), v10), 4uLL);
    result = (result + a2);
    *v9 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v16, 9uLL), vsubq_s16(v13, v11)), v11), 4uLL);
    v9 = (v9 + a2);
  }

  while (!((a8 < 0) ^ v14 | (a8 == 0)));
  return result;
}

int8x8_t *sub_277569E9C(int8x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, unsigned int a5, int a6, int8x16_t *a7, uint16x8_t a8, int8x16_t a9)
{
  v10 = a2 - a5;
  v11 = (a7 + a5);
  v12 = (a4 + 2 * a5);
  v13 = (a3 + 2 * a5);
  do
  {
    v14 = a5;
    do
    {
      v15 = *a3;
      v16 = a3[1];
      a3 += 2;
      v17 = *a4;
      v18 = a4[1];
      a4 += 2;
      v19 = *v13;
      v20 = v13[1];
      v13 += 2;
      v21 = *v12;
      v22 = v12[1];
      v12 += 2;
      v23 = __OFSUB__(v14, 16);
      v14 -= 16;
      v24 = vsubq_s16(v17, v15);
      v25 = vsubq_s16(v18, v16);
      v26 = vsubq_s16(v21, v19);
      v27 = vsubq_s16(v22, v20);
      v28 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v24)), 8uLL);
      v29 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v25)), 8uLL);
      v30 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v26)), 8uLL);
      v31 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v27)), 8uLL);
      *a7++ = vsubq_s8(a9, vuzp1q_s8(v28, v29));
      *v11++ = vsubq_s8(a9, vuzp1q_s8(v30, v31));
      *result = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v28, 9uLL), v24), v15), 4uLL);
      result[1] = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v29, 9uLL), v25), v16), 4uLL);
      result += 2;
      *v9 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v30, 9uLL), v26), v19), 4uLL);
      v9[1] = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v31, 9uLL), v27), v20), 4uLL);
      v9 += 2;
    }

    while (!((v14 < 0) ^ v23 | (v14 == 0)));
    v23 = __OFSUB__(a6, 2);
    a6 -= 2;
    a3 = (a3 + 2 * a5);
    a4 = (a4 + 2 * a5);
    v13 = (v13 + 2 * a5);
    v12 = (v12 + 2 * a5);
    a7 = (a7 + a5);
    v11 = (v11 + a5);
    result = (result + v10);
    v9 = (v9 + v10);
  }

  while (!((a6 < 0) ^ v23 | (a6 == 0)));
  return result;
}

_DWORD *sub_277569FD8(_DWORD *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, uint8x8_t a8, uint64_t a9, int a10, uint8x8_t *a11)
{
  do
  {
    v12 = *a3;
    v13 = a3[1];
    a3 += 2;
    v14 = *a4;
    v15 = a4[1];
    a4 += 2;
    v16 = __OFSUB__(a10, 4);
    a10 -= 4;
    v17 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v12, v14)), 8uLL);
    v18 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v13, v15)), 8uLL);
    v19 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v17, 9uLL), vsubq_s16(v14, v12)), v12), 4uLL);
    v20 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v18, 9uLL), vsubq_s16(v15, v13)), v13), 4uLL);
    *a11++ = vhsub_u8(a8, vmovn_s16(vpaddq_s16(v17, v18)));
    *result = v19.i32[0];
    v21 = (result + a2);
    *v11 = v19.i32[1];
    v22 = (v11 + a2);
    *v21 = v20.i32[0];
    result = (v21 + a2);
    *v22 = v20.i32[1];
    v11 = (v22 + a2);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int8x8_t *sub_27756A04C(int8x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, uint8x8_t a8, uint64_t a9, int a10, uint8x8_t *a11)
{
  do
  {
    v12 = *a3;
    v13 = a3[1];
    a3 += 2;
    v14 = *a4;
    v15 = a4[1];
    a4 += 2;
    v16 = __OFSUB__(a10, 2);
    a10 -= 2;
    v17 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v12, v14)), 8uLL);
    v18 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v13, v15)), 8uLL);
    *a11++ = vhsub_u8(a8, vmovn_s16(vpaddq_s16(v17, v18)));
    *result = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v17, 9uLL), vsubq_s16(v14, v12)), v12), 4uLL);
    result = (result + a2);
    *v11 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v18, 9uLL), vsubq_s16(v15, v13)), v13), 4uLL);
    v11 = (v11 + a2);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int8x8_t *sub_27756A0B8(int8x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, unsigned int a5, int a6, uint8x8_t *a7, uint16x8_t a8, double a9, double a10, uint8x8_t a11)
{
  v12 = a2 - a5;
  v13 = (a7 + (a5 >> 1));
  v14 = (a4 + 2 * a5);
  v15 = (a3 + 2 * a5);
  do
  {
    v16 = a5;
    do
    {
      v17 = *a3;
      v18 = a3[1];
      a3 += 2;
      v19 = *a4;
      v20 = a4[1];
      a4 += 2;
      v21 = *v15;
      v22 = v15[1];
      v15 += 2;
      v23 = *v14;
      v24 = v14[1];
      v14 += 2;
      v25 = __OFSUB__(v16, 16);
      v16 -= 16;
      v26 = vsubq_s16(v19, v17);
      v27 = vsubq_s16(v20, v18);
      v28 = vsubq_s16(v23, v21);
      v29 = vsubq_s16(v24, v22);
      v30 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v26)), 8uLL);
      v31 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v27)), 8uLL);
      v32 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v28)), 8uLL);
      v33 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v29)), 8uLL);
      *a7++ = vhsub_u8(a11, vmovn_s16(vpaddq_s16(v30, v31)));
      *v13++ = vhsub_u8(a11, vmovn_s16(vpaddq_s16(v32, v33)));
      *result = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v30, 9uLL), v26), v17), 4uLL);
      result[1] = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v31, 9uLL), v27), v18), 4uLL);
      result += 2;
      *v11 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v32, 9uLL), v28), v21), 4uLL);
      v11[1] = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v33, 9uLL), v29), v22), 4uLL);
      v11 += 2;
    }

    while (!((v16 < 0) ^ v25 | (v16 == 0)));
    v25 = __OFSUB__(a6, 2);
    a6 -= 2;
    a3 = (a3 + 2 * a5);
    a4 = (a4 + 2 * a5);
    v15 = (v15 + 2 * a5);
    v14 = (v14 + 2 * a5);
    a7 = (a7 + (a5 >> 1));
    v13 = (v13 + (a5 >> 1));
    result = (result + v12);
    v11 = (v11 + v12);
  }

  while (!((a6 < 0) ^ v25 | (a6 == 0)));
  return result;
}

uint64_t sub_27756A1C8(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v10 = vdupq_n_s16(a10);
  v11.i64[0] = 0x100010001000100;
  v11.i64[1] = 0x100010001000100;
  return ((&dword_27756A3DC - *(&dword_27756A3DC + __clz(a7) - 24)))(vdupq_n_s16(0x1AF7u), a2, v10, vsubq_s16(v11, v10));
}

_DWORD *sub_27756A1FC(_DWORD *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, int16x4_t a8, uint64_t a9, int a10, _DWORD *a11)
{
  do
  {
    v12 = *a3;
    v13 = a3[1];
    a3 += 2;
    v14 = *a4;
    v15 = a4[1];
    a4 += 2;
    v16 = __OFSUB__(a10, 4);
    a10 -= 4;
    v17 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v12, v14)), 8uLL);
    v18 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v13, v15)), 8uLL);
    v19 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v17, 9uLL), vsubq_s16(v14, v12)), v12), 4uLL);
    v20 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v18, 9uLL), vsubq_s16(v15, v13)), v13), 4uLL);
    v21 = vaddq_s16(vtrn1q_s64(v17, v18), vtrn2q_s64(v17, v18));
    v22 = vpaddq_s16(v21, v21);
    *v22.i8 = vsub_s16(a8, *v22.i8);
    *a11++ = vrshrn_n_s16(v22, 2uLL).u32[0];
    *result = v19.i32[0];
    v23 = (result + a2);
    *v11 = v19.i32[1];
    v24 = (v11 + a2);
    *v23 = v20.i32[0];
    result = (v23 + a2);
    *v24 = v20.i32[1];
    v11 = (v24 + a2);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int8x8_t *sub_27756A27C(int8x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, uint16x8_t a5, double a6, double a7, int16x4_t a8, uint64_t a9, int a10, _DWORD *a11)
{
  do
  {
    v12 = *a3;
    v13 = a3[1];
    a3 += 2;
    v14 = *a4;
    v15 = a4[1];
    a4 += 2;
    v16 = __OFSUB__(a10, 2);
    a10 -= 2;
    v17 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v12, v14)), 8uLL);
    v18 = vshrq_n_u16(vqsubq_u16(a5, vabdq_s16(v13, v15)), 8uLL);
    v19 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v17, 9uLL), vsubq_s16(v14, v12)), v12), 4uLL);
    v20 = vaddq_s16(v17, v18);
    v21 = vpaddq_s16(v20, v20);
    *v21.i8 = vsub_s16(a8, *v21.i8);
    *a11++ = vrshrn_n_s16(v21, 2uLL).u32[0];
    *result = v19;
    result = (result + a2);
    *v11 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v18, 9uLL), vsubq_s16(v15, v13)), v13), 4uLL);
    v11 = (v11 + a2);
  }

  while (!((a10 < 0) ^ v16 | (a10 == 0)));
  return result;
}

int8x8_t *sub_27756A2EC(int8x8_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, unsigned int a5, int a6, int8x8_t *a7, uint16x8_t a8, double a9, double a10, int16x8_t a11)
{
  v12 = a2 - a5;
  v13 = (a4 + 2 * a5);
  v14 = (a3 + 2 * a5);
  do
  {
    v15 = a5;
    do
    {
      v16 = *a3;
      v17 = a3[1];
      a3 += 2;
      v18 = *a4;
      v19 = a4[1];
      a4 += 2;
      v20 = *v14;
      v21 = v14[1];
      v14 += 2;
      v22 = *v13;
      v23 = v13[1];
      v13 += 2;
      v24 = __OFSUB__(v15, 16);
      v15 -= 16;
      v25 = vsubq_s16(v18, v16);
      v26 = vsubq_s16(v19, v17);
      v27 = vsubq_s16(v22, v20);
      v28 = vsubq_s16(v23, v21);
      v29 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v25)), 8uLL);
      v30 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v26)), 8uLL);
      v31 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v27)), 8uLL);
      v32 = vshrq_n_u16(vqsubq_u16(a8, vabsq_s16(v28)), 8uLL);
      *a7++ = vrshrn_n_s16(vsubq_s16(a11, vpaddq_s16(vaddq_s16(v29, v31), vaddq_s16(v30, v32))), 2uLL);
      *result = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v29, 9uLL), v25), v16), 4uLL);
      result[1] = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v30, 9uLL), v26), v17), 4uLL);
      result += 2;
      *v11 = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v31, 9uLL), v27), v20), 4uLL);
      v11[1] = vqrshrun_n_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v32, 9uLL), v28), v21), 4uLL);
      v11 += 2;
    }

    while (!((v15 < 0) ^ v24 | (v15 == 0)));
    v24 = __OFSUB__(a6, 2);
    a6 -= 2;
    a3 = (a3 + 2 * a5);
    a4 = (a4 + 2 * a5);
    v14 = (v14 + 2 * a5);
    v13 = (v13 + 2 * a5);
    result = (result + v12);
    v11 = (v11 + v12);
  }

  while (!((a6 < 0) ^ v24 | (a6 == 0)));
  return result;
}

uint64_t sub_27756A3E8(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8.n128_u64[0] = 0x4040404040404040;
  v8.n128_u64[1] = 0x4040404040404040;
  return ((&qword_27756A570 - *(&qword_27756A570 + __clz(a8) - 26)))(a1, a2, a3, a4, v8);
}

__int32 *sub_27756A40C@<X0>(__int32 *result@<X0>, uint64_t a2@<X1>, uint8x8_t *a3@<X2>, int a4@<W4>, int8x8_t *a5@<X5>, __int32 *a6@<X8>, int8x8_t a7@<D4>)
{
  do
  {
    v7 = *a5++;
    v8 = *a3++;
    v9.i32[0] = *result;
    v10 = __OFSUB__(a4, 2);
    a4 -= 2;
    v9.i32[1] = *a6;
    v11 = vrshrn_n_s16(vmlal_u8(vmull_u8(v8, v7), v9, vsub_s8(a7, v7)), 6uLL);
    *result = v11.i32[0];
    result = (result + a2);
    *a6 = v11.i32[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v10 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A440@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, uint64_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  do
  {
    v7 = *a5++;
    v8 = *a3++;
    *v9.i8 = *result;
    v9.i64[1] = *a6;
    v10 = vsubq_s8(a7, v7);
    v11 = __OFSUB__(a4, 2);
    a4 -= 2;
    v12 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v8.i8, *v7.i8), *result, *v10.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v8, v7), v9, v10), 6uLL);
    *result = *v12.i8;
    result = (result + a2);
    *a6 = v12.i64[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A480@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, uint8x8_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  do
  {
    v7 = *a5;
    v8 = a5[1];
    a5 += 2;
    v9 = *a3;
    v10 = a3[1];
    a3 += 2;
    v11 = __OFSUB__(a4, 2);
    a4 -= 2;
    v12 = vsubq_s8(a7, v7);
    v13 = vsubq_s8(a7, v8);
    v14 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10.i8, *v8.i8), *a6, *v13.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v10, v8), *a6->i8, v13), 6uLL);
    *result->i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v9.i8, *v7.i8), *result, *v12.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v9, v7), *result->i8, v12), 6uLL);
    result = (result + a2);
    *a6->i8 = v14;
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A4DC@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, uint8x8_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  do
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = a5[2];
    v10 = a5[3];
    a5 += 4;
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = a3[3];
    a3 += 4;
    v15 = __OFSUB__(a4, 2);
    a4 -= 2;
    v16 = vsubq_s8(a7, v7);
    v17 = vsubq_s8(a7, v8);
    v18 = vsubq_s8(a7, v9);
    v19 = vsubq_s8(a7, v10);
    v20 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *v8.i8), result[2], *v17.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v12, v8), *result[2].i8, v17), 6uLL);
    v21 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v13.i8, *v9.i8), *a6, *v18.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v13, v9), *a6->i8, v18), 6uLL);
    v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v14.i8, *v10.i8), a6[2], *v19.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v14, v10), *a6[2].i8, v19), 6uLL);
    *result->i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *v7.i8), *result, *v16.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v11, v7), *result->i8, v16), 6uLL);
    *result[2].i8 = v20;
    result = (result + a2);
    *a6->i8 = v21;
    *a6[2].i8 = v22;
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v15 | (a4 == 0)));
  return result;
}

uint64_t sub_27756A578(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8.n128_u64[0] = 0x4040404040404040;
  v8.n128_u64[1] = 0x4040404040404040;
  return ((qword_27756A770 - *(&qword_27756A770[-6] + __clz(a8))))(a1, a2, a3, a4, v8);
}

__int16 *sub_27756A5AC@<X0>(__int16 *result@<X0>, uint64_t a2@<X1>, __int32 *a3@<X2>, int a4@<W4>, __int16 *a5@<X5>, __int16 *a6@<X8>, int8x8_t a7@<D0>, uint8x8_t a8@<D1>, uint8x8_t a9@<D2>, int8x8_t a10@<D4>)
{
  do
  {
    a7.i16[0] = *a5++;
    a8.i32[0] = *a3++;
    v10 = __OFSUB__(a4, 2);
    a4 -= 2;
    a9.i16[0] = *result;
    a7 = vzip1_s8(a7, a7);
    a9.i16[1] = *a6;
    v11 = vrshrn_n_s16(vmlal_u8(vmull_u8(a8, a7), a9, vsub_s8(a10, a7)), 6uLL).u32[0];
    *result = v11;
    result = (result + a2);
    *a6 = HIWORD(v11);
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v10 | (a4 == 0)));
  return result;
}

__int32 *sub_27756A5E4@<X0>(__int32 *result@<X0>, uint64_t a2@<X1>, uint8x8_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, __int32 *a6@<X8>, int8x8_t a7@<D4>)
{
  do
  {
    v11 = vld2_dup_s8(a5);
    a5 += 2;
    v7 = *a3++;
    v8 = __OFSUB__(a4, 2);
    a4 -= 2;
    v11.val[0] = vext_s8(v11.val[0], v11.val[1], 4uLL);
    v9.i32[0] = *result;
    v9.i32[1] = *a6;
    v10 = vrshrn_n_s16(vmlal_u8(vmull_u8(v7, v11.val[0]), v9, vsub_s8(a7, v11.val[0])), 6uLL);
    *result = v10.i32[0];
    result = (result + a2);
    *a6 = v10.i32[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v8 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A61C@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, uint64_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  do
  {
    v12 = vld2q_dup_s8(a5);
    a5 += 2;
    v7 = *a3++;
    *v8.i8 = *result;
    v12.val[0] = vextq_s8(v12.val[0], v12.val[1], 8uLL);
    v9 = vsubq_s8(a7, v12.val[0]);
    v8.i64[1] = *a6;
    v10 = __OFSUB__(a4, 2);
    a4 -= 2;
    v11 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.val[0].i8, *v7.i8), *result, *v9.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v12.val[0], v7), v8, v9), 6uLL);
    *result = *v11.i8;
    result = (result + a2);
    *a6 = v11.i64[1];
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v10 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A660@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, const char *a5@<X5>, uint8x8_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  do
  {
    v13 = vld2q_dup_s8(a5);
    a5 += 2;
    v7 = *a3;
    v8 = a3[1];
    a3 += 2;
    v9 = vsubq_s8(a7, v13.val[0]);
    v10 = vsubq_s8(a7, v13.val[1]);
    v11 = __OFSUB__(a4, 2);
    a4 -= 2;
    v12 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v13.val[1].i8, *v8.i8), *a6, *v10.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v13.val[1], v8), *a6->i8, v10), 6uLL);
    *result->i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v13.val[0].i8, *v7.i8), *result, *v9.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v13.val[0], v7), *result->i8, v9), 6uLL);
    result = (result + a2);
    *a6->i8 = v12;
    a6 = (a6 + a2);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A6BC@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, const char *a6@<X5>, uint64_t a7@<X8>, int8x16_t a8@<Q4>)
{
  v8 = a2 - a4;
  v9 = (a3 + a4);
  do
  {
    v21 = vld2q_dup_s8(a6);
    a6 += 2;
    v10 = a4;
    v11 = vsubq_s8(a8, v21.val[0]);
    v12 = vsubq_s8(a8, v21.val[1]);
    do
    {
      v13 = *a3;
      v14 = a3[1];
      a3 += 2;
      v15 = __OFSUB__(v10, 32);
      v10 -= 32;
      v16 = *v9;
      v17 = v9[1];
      v9 += 2;
      v18 = *(a7 + 16);
      v19 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.val[0].i8, *v14.i8), result[2], *v11.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v21.val[0], v14), *result[2].i8, v11), 6uLL);
      v20 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.val[1].i8, *v16.i8), *a7, *v12.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v21.val[1], v16), *a7, v12), 6uLL);
      *result->i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.val[0].i8, *v13.i8), *result, *v11.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v21.val[0], v13), *result->i8, v11), 6uLL);
      *result[2].i8 = v19;
      result += 4;
      *a7 = v20;
      *(a7 + 16) = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.val[1].i8, *v17.i8), *v18.i8, *v12.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v21.val[1], v17), v18, v12), 6uLL);
      a7 += 32;
    }

    while (!((v10 < 0) ^ v15 | (v10 == 0)));
    v15 = __OFSUB__(a5, 2);
    a5 -= 2;
    result = (result + v8);
    a7 += v8;
    a3 = (a3 + a4);
    v9 = (v9 + a4);
  }

  while (!((a5 < 0) ^ v15 | (a5 == 0)));
  return result;
}

uint64_t sub_27756A780(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8.n128_u64[0] = 0x4040404040404040;
  v8.n128_u64[1] = 0x4040404040404040;
  return ((&dword_27756A95C - *(&dword_27756A95C + __clz(a8) - 26)))(a1, a2, a3, a4, v8);
}

__int8 *sub_27756A7B0@<X0>(__int8 *result@<X0>, uint64_t a2@<X1>, _WORD *a3@<X2>, int a4@<W4>, const char *a5@<X5>, __int8 *a6@<X8>, uint8x8_t a7@<D2>, uint8x8_t a8@<D3>, int8x8_t a9@<D4>)
{
  v9 = vld1_dup_s8(a5);
  v10 = vsub_s8(a9, v9);
  do
  {
    a7.i16[0] = *a3;
    v11 = a3 + 1;
    a8.i8[0] = *result;
    v12 = __OFSUB__(a4, 2);
    a4 -= 2;
    a7.i8[1] = *v11;
    a8.i8[1] = *a6;
    v13 = vrshrn_n_s16(vmlal_u8(vmull_u8(a7, v9), a8, v10), 6uLL).u16[0];
    a3 = v11 + 2;
    *result = v13;
    result += a2;
    *a6 = HIBYTE(v13);
    a6 += a2;
  }

  while (!((a4 < 0) ^ v12 | (a4 == 0)));
  return result;
}

__int32 *sub_27756A7EC@<X0>(__int32 *result@<X0>, uint64_t a2@<X1>, uint8x8_t *a3@<X2>, int a4@<W4>, const float *a5@<X5>, __int32 *a6@<X8>, int8x8_t a7@<D4>)
{
  v7 = vld1_dup_f32(a5);
  v8 = a2 - 2;
  v9 = vsub_s8(a7, v7);
  do
  {
    v10 = *a3++;
    v11.i32[0] = *result;
    v11.i32[1] = *a6;
    v12 = __OFSUB__(a4, 2);
    a4 -= 2;
    v13 = vrshrn_n_s16(vmlal_u8(vmull_u8(v10, v7), v11, v9), 6uLL);
    *result = v13.i16[0];
    v14 = result + 2;
    *a6 = v13.i16[2];
    v15 = a6 + 2;
    *v14 = v13.i8[2];
    result = &v14[v8];
    *v15 = v13.i8[6];
    a6 = &v15[v8];
  }

  while (!((a4 < 0) ^ v12 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A82C@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, const double *a5@<X5>, uint64_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  v7 = vld1q_dup_f64(a5);
  v8 = a2 - 4;
  v9 = vsubq_s8(a7, v7);
  do
  {
    v10 = *a3++;
    *v11.i8 = *result;
    v11.i64[1] = *a6;
    v12 = __OFSUB__(a4, 2);
    a4 -= 2;
    v13 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v7.i8, *v10.i8), *result, *v9.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v7, v10), v11, v9), 6uLL);
    result->i32[0] = v13.i32[0];
    v14 = result + 2;
    *a6 = v13.i32[2];
    v15 = a6 + 2;
    *v14 = v13.i16[2];
    result = (v14 + v8);
    *v15 = v13.i16[6];
    a6 = (v15 + v8);
  }

  while (!((a4 < 0) ^ v12 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A878@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, int8x16_t *a5@<X5>, uint8x8_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  v7 = *a5;
  v8 = a2 - 8;
  v9 = vsubq_s8(a7, *a5);
  do
  {
    v10 = *a3;
    v11 = a3[1];
    a3 += 2;
    v12 = __OFSUB__(a4, 2);
    a4 -= 2;
    v13 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10.i8, *v7.i8), *result, *v9.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v10, v7), *result->i8, v9), 6uLL);
    v14 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *v7.i8), *a6, *v9.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v11, v7), *a6->i8, v9), 6uLL);
    *result = *v13.i8;
    v15 = result + 1;
    *a6 = *v14.i8;
    v16 = a6 + 1;
    v15->i32[0] = v13.i32[2];
    result = (v15 + v8);
    v16->i32[0] = v14.i32[2];
    a6 = (v16 + v8);
  }

  while (!((a4 < 0) ^ v12 | (a4 == 0)));
  return result;
}

uint8x8_t *sub_27756A8DC@<X0>(uint8x8_t *result@<X0>, uint64_t a2@<X1>, uint8x16_t *a3@<X2>, int a4@<W4>, uint64_t a5@<X5>, uint8x8_t *a6@<X8>, int8x16_t a7@<Q4>)
{
  v7 = *a5;
  v8 = *(a5 + 16);
  v9 = a2 - 16;
  v10 = vsubq_s8(a7, *a5);
  v11 = vsub_s8(*a7.i8, *&v8);
  do
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = a3[2];
    v15 = a3[3];
    a3 += 4;
    v16 = __OFSUB__(a4, 2);
    a4 -= 2;
    v17 = vrshrn_n_s16(vmlal_u8(vmull_u8(*v13.i8, *&v8), result[2], v11), 6uLL);
    v18 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v14.i8, *v7.i8), *a6, *v10.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v14, v7), *a6->i8, v10), 6uLL);
    v19 = vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, *&v8), a6[2], v11), 6uLL);
    *result->i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *v7.i8), *result, *v10.i8), 6uLL), vmlal_high_u8(vmull_high_u8(v12, v7), *result->i8, v10), 6uLL);
    v20 = &result[2];
    *a6->i8 = v18;
    v21 = &a6[2];
    *v20 = v17;
    result = (v20 + v9);
    *v21 = v19;
    a6 = (v21 + v9);
  }

  while (!((a4 < 0) ^ v16 | (a4 == 0)));
  return result;
}

_WORD *sub_27756A978(_WORD *result, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, int a6)
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

_DWORD *sub_27756A994(_DWORD *result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6)
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

void *sub_27756A9B0(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
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

_OWORD *sub_27756A9CC(_OWORD *result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6)
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

void *sub_27756A9F8(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
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

void *sub_27756AA1C(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
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

_OWORD *sub_27756AA50(_OWORD *result, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, int a6)
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

double *sub_27756AAA4(double *result, __int32 *a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5, uint64_t a6, int a7)
{
  do
  {
    a4.i32[0] = *a2;
    v7 = (a2 + a3);
    a5.i32[0] = *v7;
    a2 = (v7 + a3);
    v8 = __OFSUB__(a7, 2);
    a7 -= 2;
    a4 = vshll_n_u8(a4, 4uLL).u64[0];
    a5 = vshll_n_u8(a5, 4uLL).u64[0];
    *result = *&a4;
    result[1] = *&a5;
    result += 2;
  }

  while (!((a7 < 0) ^ v8 | (a7 == 0)));
  return result;
}

uint16x8_t *sub_27756AAC4(uint16x8_t *result, uint8x8_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  do
  {
    v6 = *a2;
    v5 = (a2 + a3);
    v7 = *v5;
    a2 = (v5 + a3);
    v8 = __OFSUB__(a5, 2);
    a5 -= 2;
    *result = vshll_n_u8(v6, 4uLL);
    result[1] = vshll_n_u8(v7, 4uLL);
    result += 2;
  }

  while (!((a5 < 0) ^ v8 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27756AAE4(uint16x8_t *result, uint8x16_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a2 + a3);
  v6 = 2 * a3;
  do
  {
    v7 = *a2;
    a2 = (a2 + v6);
    v8 = *v5;
    v5 = (v5 + v6);
    v9 = __OFSUB__(a5, 2);
    a5 -= 2;
    *result = vshll_n_u8(*v7.i8, 4uLL);
    result[1] = vshll_high_n_u8(v7, 4uLL);
    result[2] = vshll_n_u8(*v8.i8, 4uLL);
    result[3] = vshll_high_n_u8(v8, 4uLL);
    result += 4;
  }

  while (!((a5 < 0) ^ v9 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27756AB14(uint16x8_t *result, uint8x16_t *a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (result + a4);
  do
  {
    v10 = *a2;
    v11 = a2[1];
    v9 = (a2 + a3);
    v12 = __OFSUB__(a5, 2);
    a5 -= 2;
    v13 = *v9;
    v14 = v9[1];
    a2 = (v9 + a3);
    *result = vshll_n_u8(*v10.i8, 4uLL);
    result[1] = vshll_high_n_u8(v10, 4uLL);
    v15 = (result + a8);
    *v8 = vshll_n_u8(*v11.i8, 4uLL);
    v8[1] = vshll_high_n_u8(v11, 4uLL);
    v16 = (v8 + a8);
    *v15 = vshll_n_u8(*v13.i8, 4uLL);
    v15[1] = vshll_high_n_u8(v13, 4uLL);
    result = (v15 + a8);
    *v16 = vshll_n_u8(*v14.i8, 4uLL);
    v16[1] = vshll_high_n_u8(v14, 4uLL);
    v8 = (v16 + a8);
  }

  while (!((a5 < 0) ^ v12 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27756AB5C(uint16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = result + 2;
  do
  {
    v6 = *(a2 + 16);
    v7 = __OFSUB__(a5--, 1);
    v8 = vshll_n_u8(*a2, 4uLL);
    v9 = vshll_high_n_u8(*a2, 4uLL);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    a2 += a3;
    *result = v8;
    result[1] = v9;
    v12 = result + 4;
    *v5 = vshll_n_u8(*v6.i8, 4uLL);
    v5[1] = vshll_high_n_u8(v6, 4uLL);
    v13 = v5 + 4;
    *v12 = vshll_n_u8(*v10.i8, 4uLL);
    v12[1] = vshll_high_n_u8(v10, 4uLL);
    result = v12 + 4;
    *v13 = vshll_n_u8(*v11.i8, 4uLL);
    v13[1] = vshll_high_n_u8(v11, 4uLL);
    v5 = v13 + 4;
  }

  while (!((a5 < 0) ^ v7 | (a5 == 0)));
  return result;
}

uint16x8_t *sub_27756ABAC(uint16x8_t *result, uint8x16_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = result + 4;
  do
  {
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    v9 = vshll_high_n_u8(*a2, 4uLL);
    v10 = a2[4];
    v11 = a2[5];
    *result = vshll_n_u8(*a2->i8, 4uLL);
    result[1] = v9;
    result[2] = vshll_n_u8(*v6.i8, 4uLL);
    result[3] = vshll_high_n_u8(v6, 4uLL);
    v12 = result + 8;
    v13 = a2[6];
    v14 = a2[7];
    *v5 = vshll_n_u8(*v7.i8, 4uLL);
    v5[1] = vshll_high_n_u8(v7, 4uLL);
    v5[2] = vshll_n_u8(*v8.i8, 4uLL);
    v5[3] = vshll_high_n_u8(v8, 4uLL);
    v15 = v5 + 8;
    v16 = __OFSUB__(a5--, 1);
    a2 = (a2 + a3);
    *v12 = vshll_n_u8(*v10.i8, 4uLL);
    v12[1] = vshll_high_n_u8(v10, 4uLL);
    v12[2] = vshll_n_u8(*v11.i8, 4uLL);
    v12[3] = vshll_high_n_u8(v11, 4uLL);
    result = v12 + 8;
    *v15 = vshll_n_u8(*v13.i8, 4uLL);
    v15[1] = vshll_high_n_u8(v13, 4uLL);
    v15[2] = vshll_n_u8(*v14.i8, 4uLL);
    v15[3] = vshll_high_n_u8(v14, 4uLL);
    v5 = v15 + 8;
  }

  while (!((a5 < 0) ^ v16 | (a5 == 0)));
  return result;
}

uint64_t sub_27756AC6C@<X0>(unsigned int a1@<W4>, int a2@<W6>, int a3@<W7>, int a4@<W8>)
{
  v5 = 16513 * a2 + a4;
  v6 = 16513 * a3 + v4;
  v7 = __clz(a1) - 24;
  if ((v5 & 0x1FC000) != 0)
  {
    if ((v6 & 0x1FC000) != 0)
    {
      return ((qword_27756C1B0 - *(qword_27756C1B0 + v7)))();
    }

    else
    {
      return ((&dword_27756B054 - *(&dword_27756B054 + v7)))();
    }
  }

  else if ((v6 & 0x1FC000) != 0)
  {
    return ((qword_27756BA90 - *(qword_27756BA90 + v7)))();
  }

  else
  {
    return sub_27756A968(v7);
  }
}

uint64_t sub_27756C1F0@<X0>(unsigned int a1@<W4>, int a2@<W6>, int a3@<W7>, int a4@<W8>)
{
  v5 = 16513 * a2 + a4;
  v6 = 16513 * a3 + v4;
  v7 = __clz(a1) - 24;
  if ((v5 & 0x1FC000) != 0)
  {
    if ((v6 & 0x1FC000) != 0)
    {
      return ((qword_27756D5D0 - *(qword_27756D5D0 + v7)))();
    }

    else
    {
      return ((qword_27756C590 - *(qword_27756C590 + v7)))();
    }
  }

  else if ((v6 & 0x1FC000) != 0)
  {
    return ((&dword_27756CF2C - *(&dword_27756CF2C + v7)))();
  }

  else
  {
    return sub_27756A968(v7);
  }
}

uint64_t sub_27756D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v8 = vdupq_n_s8(a7);
  v9 = vdupq_n_s8(a8);
  v10 = vdupq_n_s8(16 - a7);
  v11 = vdupq_n_s8(16 - a8);
  v12 = __clz(a5) - 24;
  if (a7)
  {
    if (a8)
    {
      return ((qword_27756DB48 - *(qword_27756DB48 + v12)))(v10, v8, vmovl_u8(v11.n128_u64[0]), vmovl_u8(v9.n128_u64[0]));
    }

    else
    {
      return ((qword_27756D7A8 - *(qword_27756D7A8 + v12)))(v10, v8, v11, v9);
    }
  }

  else if (a8)
  {
    return ((&dword_27756D9A4 - *(&dword_27756D9A4 + v12)))(v10, v8, v11, v9);
  }

  else
  {
    return sub_27756A968(v12);
  }
}

_WORD *sub_27756D9CC(_WORD *result, uint64_t a2, __int32 *a3, uint64_t a4, uint8x8_t a5, uint8x8_t a6, int16x4_t a7, int16x4_t a8, uint16x8_t a9, uint64_t a10, int a11)
{
  v13 = (a3 + a4);
  v14 = (result + a2);
  v15 = 2 * a4;
  v16 = 2 * a2;
  v11.i32[0] = *a3;
  v17 = (a3 + v15);
  for (i = vmlal_u8(vmull_u8(v11, a5), vext_s8(v11, v11, 1uLL), a6).u64[0]; ; i = vtrn2_s32(v20, v20))
  {
    v11.i32[0] = *v13;
    v13 = (v13 + v15);
    v12.i32[0] = *v17;
    v17 = (v17 + v15);
    v19 = vext_s8(v11, v11, 1uLL);
    v11 = vtrn1_s16(v11, v12);
    v20 = vmlal_u8(vmull_u8(v11, a5), vtrn1_s16(v19, vext_s8(v12, v12, 1uLL)), a6).u64[0];
    *a9.i8 = vmla_s16(vmul_s16(vtrn1_s32(i, v20), a7), v20, a8);
    v21 = vqrshrn_n_u16(a9, 8uLL).u32[0];
    v22 = __OFSUB__(a11, 2);
    a11 -= 2;
    *result = v21;
    result = (result + v16);
    *v14 = HIWORD(v21);
    v14 = (v14 + v16);
    if ((a11 < 0) ^ v22 | (a11 == 0))
    {
      break;
    }
  }

  return result;
}

_DWORD *sub_27756DA38(_DWORD *result, uint64_t a2, int8x8_t *a3, uint64_t a4, uint8x8_t a5, uint8x8_t a6, int16x8_t a7, int16x8_t a8, uint64_t a9, int a10)
{
  v10 = (a3 + a4);
  v11 = (result + a2);
  v12 = 2 * a4;
  v13 = 2 * a2;
  v15 = *a3;
  v14 = (a3 + v12);
  for (i = vmlal_u8(vmull_u8(v15, a5), vext_s8(v15, v15, 1uLL), a6); ; i = vtrn2q_s64(v19, v19))
  {
    v17 = *v10;
    v10 = (v10 + v12);
    v18 = *v14;
    v14 = (v14 + v12);
    v19 = vmlal_u8(vmull_u8(vtrn1_s32(v17, v18), a5), vtrn1_s32(vext_s8(v17, v17, 1uLL), vext_s8(v18, v18, 1uLL)), a6);
    v20 = __OFSUB__(a10, 2);
    a10 -= 2;
    v21 = vqrshrn_n_u16(vmlaq_s16(vmulq_s16(vtrn1q_s64(i, v19), a7), v19, a8), 8uLL);
    *result = v21.i32[0];
    result = (result + v13);
    *v11 = v21.i32[1];
    v11 = (v11 + v13);
    if ((a10 < 0) ^ v20 | (a10 == 0))
    {
      break;
    }
  }

  return result;
}

uint8x8_t *sub_27756DAA4(uint8x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int a5, int a6, uint8x8_t a7, uint8x8_t a8, int16x8_t a9, int16x8_t a10)
{
  for (i = a6; ; result = (result - a2 * i + 8))
  {
    v11 = (a3 + a4);
    v12 = (result + a2);
    v13 = 2 * a4;
    v14 = 2 * a2;
    v16 = *a3;
    v15 = (a3 + v13);
    for (j = vmlal_u8(vmull_u8(*v16.i8, a7), *&vextq_s8(v16, v16, 1uLL), a8); ; j = v21)
    {
      v18 = *v11;
      v11 = (v11 + v13);
      v19 = *v15;
      v15 = (v15 + v13);
      v20 = vmlal_u8(vmull_u8(*v18.i8, a7), *&vextq_s8(v18, v18, 1uLL), a8);
      v21 = vmlal_u8(vmull_u8(*v19.i8, a7), *&vextq_s8(v19, v19, 1uLL), a8);
      v22 = __OFSUB__(a6, 2);
      a6 -= 2;
      *result = vqrshrn_n_u16(vmlaq_s16(vmulq_s16(j, a9), v20, a10), 8uLL);
      result = (result + v14);
      *v12 = vqrshrn_n_u16(vmlaq_s16(vmulq_s16(v20, a9), v21, a10), 8uLL);
      v12 = (v12 + v14);
      if ((a6 < 0) ^ v22 | (a6 == 0))
      {
        break;
      }
    }

    v22 = __OFSUB__(a5, 8);
    a5 -= 8;
    if ((a5 < 0) ^ v22 | (a5 == 0))
    {
      break;
    }

    a4 = v13 >> 1;
    a2 = v14 >> 1;
    a6 = i;
    a3 = (&v15->u64[1] - a4 * i + -2 * a4);
  }

  return result;
}

uint64_t sub_27756DB94@<X0>(unsigned int a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W8>)
{
  v5 = 16513 * a2 + a4;
  v6 = 16513 * a3 + v4;
  v7 = __clz(a1) - 24;
  if ((v5 & 0x1FC000) != 0)
  {
    if ((v6 & 0x1FC000) != 0)
    {
      return ((qword_27756EC40 - *(qword_27756EC40 + v7)))();
    }

    else
    {
      return ((qword_27756DEE8 - *(qword_27756DEE8 + v7)))();
    }
  }

  else if ((v6 & 0x1FC000) != 0)
  {
    return ((qword_27756E6E8 - *(qword_27756E6E8 + v7)))();
  }

  else
  {
    return sub_27756AA94(v7);
  }
}

uint64_t sub_27756EC80@<X0>(unsigned int a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W8>)
{
  v5 = 16513 * a2 + a4;
  v6 = 16513 * a3 + v4;
  v7 = __clz(a1) - 24;
  if ((v5 & 0x1FC000) != 0)
  {
    if ((v6 & 0x1FC000) != 0)
    {
      return ((qword_27756FBE0 - *(qword_27756FBE0 + v7)))();
    }

    else
    {
      return ((&dword_27756EF8C - *(&dword_27756EF8C + v7)))();
    }
  }

  else if ((v6 & 0x1FC000) != 0)
  {
    return ((&dword_27756F6FC - *(&dword_27756F6FC + v7)))();
  }

  else
  {
    return sub_27756AA94(v7);
  }
}

uint64_t sub_27756FBF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v7 = vdupq_n_s8(a6);
  v8 = vdupq_n_s8(a7);
  v9 = vdupq_n_s8(16 - a6);
  v10 = vdupq_n_s8(16 - a7);
  v11 = __clz(a4) - 24;
  if (a6)
  {
    if (a7)
    {
      return ((qword_27756FFC8 - *(qword_27756FFC8 + v11)))(v9, v7, vmovl_u8(v10.n128_u64[0]), vmovl_u8(v8.n128_u64[0]));
    }

    else
    {
      return ((&dword_27756FD54 - *(&dword_27756FD54 + v11)))(v9, v7, v10, v8);
    }
  }

  else if (a7)
  {
    return ((qword_27756FE90 - *(qword_27756FE90 + v11)))(v9, v7, v10, v8);
  }

  else
  {
    return sub_27756AA94(v11);
  }
}

void *sub_27756FEB8(void *result, int8x8_t *a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5, int16x8_t a6, int16x8_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = (a2 + a3);
  v13 = (result + a12);
  v14 = 2 * a3;
  v15 = 2 * a12;
  v17 = *a2;
  v16 = (a2 + v14);
  for (i = vmlal_u8(vmull_u8(v17, a4), vext_s8(v17, v17, 1uLL), a5); ; i = vtrn2q_s64(v21, v21))
  {
    v19 = *v12;
    v12 = (v12 + v14);
    v20 = *v16;
    v16 = (v16 + v14);
    v21 = vmlal_u8(vmull_u8(vtrn1_s32(v19, v20), a4), vtrn1_s32(vext_s8(v19, v19, 1uLL), vext_s8(v20, v20, 1uLL)), a5);
    v22 = __OFSUB__(a9, 2);
    a9 -= 2;
    v23 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(vtrn1q_s64(i, v21), a6), v21, a7), 4uLL);
    *result = v23.i64[0];
    result = (result + v15);
    *v13 = v23.i64[1];
    v13 = (v13 + v15);
    if ((a9 < 0) ^ v22 | (a9 == 0))
    {
      break;
    }
  }

  return result;
}

uint16x8_t *sub_27756FF24(uint16x8_t *result, int8x16_t *a2, uint64_t a3, int a4, int a5, uint8x8_t a6, uint8x8_t a7, int16x8_t a8, int16x8_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  for (i = a5; ; result = (result - a12 * i + 16))
  {
    v13 = (a2 + a3);
    v14 = (result + a12);
    v15 = 2 * a3;
    v16 = 2 * a12;
    v18 = *a2;
    v17 = (a2 + v15);
    for (j = vmlal_u8(vmull_u8(*v18.i8, a6), *&vextq_s8(v18, v18, 1uLL), a7); ; j = v23)
    {
      v20 = *v13;
      v13 = (v13 + v15);
      v21 = *v17;
      v17 = (v17 + v15);
      v22 = vmlal_u8(vmull_u8(*v20.i8, a6), *&vextq_s8(v20, v20, 1uLL), a7);
      v23 = vmlal_u8(vmull_u8(*v21.i8, a6), *&vextq_s8(v21, v21, 1uLL), a7);
      v24 = __OFSUB__(a5, 2);
      a5 -= 2;
      *result = vrshrq_n_u16(vmlaq_s16(vmulq_s16(j, a8), v22, a9), 4uLL);
      result = (result + v16);
      *v14 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22, a8), v23, a9), 4uLL);
      v14 = (v14 + v16);
      if ((a5 < 0) ^ v24 | (a5 == 0))
      {
        break;
      }
    }

    v24 = __OFSUB__(a4, 8);
    a4 -= 8;
    if ((a4 < 0) ^ v24 | (a4 == 0))
    {
      break;
    }

    a3 = v15 >> 1;
    a12 = v16 >> 1;
    a5 = i;
    a2 = (&v17->u64[1] - a3 * i + -2 * a3);
  }

  return result;
}

double sub_27756FFD8(uint64_t a1, uint64_t a2, int8x8_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v10 = a6 + 512 + a8;
  v11 = v10 >> 10;
  v12 = v10 + a8;
  v13 = *(v8 + 8 * v11);
  v14 = v12 >> 10;
  v15 = v12 + a8;
  v16 = *(v8 + 8 * v14);
  v17 = v15 >> 10;
  v18 = v15 + a8;
  v19 = *(v8 + 8 * v17);
  v20 = v18 >> 10;
  v21 = v18 + a8;
  v22 = veor_s8(*a3, v9);
  v23 = veor_s8(a3[1], v9);
  *&result = vpaddq_s16(vpaddq_s16(vpaddq_s16(vmull_s8(*(v8 + 8 * ((a6 + 512) >> 10)), v22), vmull_s8(v13, vext_s8(v22, v23, 1uLL))), vpaddq_s16(vmull_s8(v16, vext_s8(v22, v23, 2uLL)), vmull_s8(v19, vext_s8(v22, v23, 3uLL)))), vpaddq_s16(vpaddq_s16(vmull_s8(*(v8 + 8 * v20), vext_s8(v22, v23, 4uLL)), vmull_s8(*(v8 + 8 * (v21 >> 10)), vext_s8(v22, v23, 5uLL))), vpaddq_s16(vmull_s8(*(v8 + 8 * ((v21 + a8) >> 10)), vext_s8(v22, v23, 6uLL)), vmull_s8(*(v8 + 8 * ((v21 + a8 + a8) >> 10)), vext_s8(v22, v23, 7uLL))))).u64[0];
  return result;
}

uint64_t sub_2775700A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7)
{
  sub_27756FFD8(a1, a2, (a3 - 2 * a4 - a4 - 3), a4, *a5 >> 48, a6, a7, *a5);
  sub_27756FFD8(v7, v8, v9, v10, v11, v12, v13, v14);
  sub_27756FFD8(v15, v16, v17, v18, v19, v20, v21, v22);
  sub_27756FFD8(v23, v24, v25, v26, v27, v28, v29, v30);
  sub_27756FFD8(v31, v32, v33, v34, v35, v36, v37, v38);
  sub_27756FFD8(v39, v40, v41, v42, v43, v44, v45, v46);
  sub_27756FFD8(v47, v48, v49, v50, v51, v52, v53, v54);
  do
  {
    *v63.i64 = sub_27756FFD8(result, v56, v57, v58, v59, v60, v61, v62);
    v64 = vrshrq_n_s16(v63, 3uLL);
    v66 = v65 >> 10;
    v68 = v65 + v67;
    v63.i64[0] = *(v69 + 8 * v66);
    v70 = v68 >> 10;
    v71 = v68 + v67;
    v72.i64[0] = *(v69 + 8 * v70);
    v73 = v71 >> 10;
    v74 = v71 + v67;
    v75.i64[0] = *(v69 + 8 * v73);
    v76 = v74 >> 10;
    v77 = v74 + v67;
    v78.i64[0] = *(v69 + 8 * v76);
    v79 = v77 >> 10;
    v80 = v77 + v67;
    v81.i64[0] = *(v69 + 8 * v79);
    v82 = v80 >> 10;
    v83 = v80 + v67;
    v84.i64[0] = *(v69 + 8 * v82);
    v85.i64[0] = *(v69 + 8 * (v83 >> 10));
    v86.i64[0] = *(v69 + 8 * ((v83 + v67) >> 10));
    v87 = vzip1q_s8(v63, v72);
    v88 = vzip1q_s8(v75, v78);
    v89 = vzip1q_s8(v81, v84);
    v90 = vzip1q_s8(v85, v86);
    v91 = vtrn1q_s16(v87, v88);
    v92 = vtrn2q_s16(v87, v88);
    v93 = vtrn1q_s16(v89, v90);
    v94 = vtrn2q_s16(v89, v90);
    v95 = vtrn1q_s32(v91, v93);
    v96 = vtrn2q_s32(v91, v93);
    v97 = vtrn1q_s32(v92, v94);
    v98 = vtrn2q_s32(v92, v94);
    v99 = vmovl_high_s8(v95);
    v100 = vmovl_s8(*v95.i8);
    v101 = vmovl_high_s8(v96);
    v102 = vmovl_s8(*v96.i8);
    v103 = vmovl_high_s8(v97);
    v104 = vmovl_s8(*v97.i8);
    v105 = vmovl_high_s8(v98);
    v106 = vmovl_s8(*v98.i8);
    *v115 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*v107.i8, *v100.i8), *v108.i8, *v104.i8), *v109.i8, *v102.i8), *v110.i8, *v106.i8), *v111.i8, *v99.i8), *v112.i8, *v103.i8), *v113.i8, *v101.i8), *v64.i8, *v105.i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v107, v100), v108, v104), v109, v102), v110, v106), v111, v99), v112, v103), v113, v101), v64, v105), 0xBuLL), v114));
    result = v115 + v56;
    v61 = (v116 + v59);
  }

  while (v117 > 1);
  return result;
}

uint64_t sub_277570254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7)
{
  sub_27756FFD8(a1, 2 * a2, (a3 - 2 * a4 - a4 - 3), a4, *a5 >> 48, a6, a7, *a5);
  sub_27756FFD8(v7, v8, v9, v10, v11, v12, v13, v14);
  sub_27756FFD8(v15, v16, v17, v18, v19, v20, v21, v22);
  sub_27756FFD8(v23, v24, v25, v26, v27, v28, v29, v30);
  sub_27756FFD8(v31, v32, v33, v34, v35, v36, v37, v38);
  sub_27756FFD8(v39, v40, v41, v42, v43, v44, v45, v46);
  sub_27756FFD8(v47, v48, v49, v50, v51, v52, v53, v54);
  do
  {
    *v63.i64 = sub_27756FFD8(result, v56, v57, v58, v59, v60, v61, v62);
    v64 = vrshrq_n_s16(v63, 3uLL);
    v66 = v65 >> 10;
    v68 = v65 + v67;
    v63.i64[0] = *(v69 + 8 * v66);
    v70 = v68 >> 10;
    v71 = v68 + v67;
    v72.i64[0] = *(v69 + 8 * v70);
    v73 = v71 >> 10;
    v74 = v71 + v67;
    v75.i64[0] = *(v69 + 8 * v73);
    v76 = v74 >> 10;
    v77 = v74 + v67;
    v78.i64[0] = *(v69 + 8 * v76);
    v79 = v77 >> 10;
    v80 = v77 + v67;
    v81.i64[0] = *(v69 + 8 * v79);
    v82 = v80 >> 10;
    v83 = v80 + v67;
    v84.i64[0] = *(v69 + 8 * v82);
    v85.i64[0] = *(v69 + 8 * (v83 >> 10));
    v86.i64[0] = *(v69 + 8 * ((v83 + v67) >> 10));
    v87 = vzip1q_s8(v63, v72);
    v88 = vzip1q_s8(v75, v78);
    v89 = vzip1q_s8(v81, v84);
    v90 = vzip1q_s8(v85, v86);
    v91 = vtrn1q_s16(v87, v88);
    v92 = vtrn2q_s16(v87, v88);
    v93 = vtrn1q_s16(v89, v90);
    v94 = vtrn2q_s16(v89, v90);
    v95 = vtrn1q_s32(v91, v93);
    v96 = vtrn2q_s32(v91, v93);
    v97 = vtrn1q_s32(v92, v94);
    v98 = vtrn2q_s32(v92, v94);
    v99 = vmovl_high_s8(v95);
    v100 = vmovl_s8(*v95.i8);
    v101 = vmovl_high_s8(v96);
    v102 = vmovl_s8(*v96.i8);
    v103 = vmovl_high_s8(v97);
    v104 = vmovl_s8(*v97.i8);
    v105 = vmovl_high_s8(v98);
    v106 = vmovl_s8(*v98.i8);
    *v115 = vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*v107.i8, *v100.i8), *v108.i8, *v104.i8), *v109.i8, *v102.i8), *v110.i8, *v106.i8), *v111.i8, *v99.i8), *v112.i8, *v103.i8), *v113.i8, *v101.i8), *v64.i8, *v105.i8), 7uLL), vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v107, v100), v108, v104), v109, v102), v110, v106), v111, v99), v112, v103), v113, v101), v64, v105), 7uLL), v114);
    result = v115->i64 + v56;
    v61 = (v116 + v59);
  }

  while (v117 > 1);
  return result;
}

uint64_t sub_277570400(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

  v13 = (a9 + v12 * a10 + (v11 & ~(v11 >> 63)));
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
        v24 = vld1q_dup_s8(v13);
        v25 = v20;
        v26 = v18;
        do
        {
          v27 = v26 <= 16;
          v26 -= 16;
          *v25++ = v24;
        }

        while (!v27);
        v28 = v13;
        v29 = (v20 + v18);
        v30 = result - v18 - v19;
        do
        {
          v31 = *v28;
          v32 = *(v28 + 1);
          v28 += 32;
          v27 = v30 <= 32;
          v30 -= 32;
          *v29 = v31;
          v29[1] = v32;
          v29 += 2;
        }

        while (!v27);
        v33 = &v13[v22 - 1];
        v34 = vld1q_dup_s8(v33);
        v35 = (v20 + result - v19);
        v36 = v19;
        do
        {
          v27 = v36 <= 16;
          v36 -= 16;
          *v35++ = v34;
        }

        while (!v27);
        v27 = v21-- <= 1;
        v20 = (v20 + a8);
        v13 += a10;
      }

      while (!v27);
    }

    else
    {
      do
      {
        v46 = vld1q_dup_s8(v13);
        v47 = v20;
        v48 = v18;
        do
        {
          v27 = v48 <= 16;
          v48 -= 16;
          *v47++ = v46;
        }

        while (!v27);
        v49 = v13;
        v50 = (v20 + v18);
        v51 = result - v18 - v19;
        do
        {
          v52 = *v49;
          v53 = *(v49 + 1);
          v49 += 32;
          v27 = v51 <= 32;
          v51 -= 32;
          *v50 = v52;
          v50[1] = v53;
          v50 += 2;
        }

        while (!v27);
        v27 = v21-- <= 1;
        v20 = (v20 + a8);
        v13 += a10;
      }

      while (!v27);
    }
  }

  else if (v19)
  {
    do
    {
      v37 = v13;
      v38 = v20;
      v39 = result - v19;
      do
      {
        v40 = *v37;
        v41 = *(v37 + 1);
        v37 += 32;
        v27 = v39 <= 32;
        v39 -= 32;
        *v38 = v40;
        v38[1] = v41;
        v38 += 2;
      }

      while (!v27);
      v42 = &v13[v22 - 1];
      v43 = vld1q_dup_s8(v42);
      v44 = (v20 + result - v19);
      v45 = v19;
      do
      {
        v27 = v45 <= 16;
        v45 -= 16;
        *v44++ = v43;
      }

      while (!v27);
      v27 = v21-- <= 1;
      v20 = (v20 + a8);
      v13 += a10;
    }

    while (!v27);
  }

  else
  {
    do
    {
      v54 = v13;
      v55 = v20;
      v56 = result - v19;
      do
      {
        v57 = *v54;
        v58 = *(v54 + 1);
        v54 += 32;
        v27 = v56 <= 32;
        v56 -= 32;
        *v55 = v57;
        v55[1] = v58;
        v55 += 2;
      }

      while (!v27);
      v27 = v21-- <= 1;
      v20 = (v20 + a8);
      v13 += a10;
    }

    while (!v27);
  }

  if (v16)
  {
    v59 = (v20 - a8);
    v60 = result;
    do
    {
      v61 = *v59;
      v62 = v59[1];
      v59 += 2;
      v63 = v16;
      do
      {
        v27 = v63-- <= 1;
        *v20 = v61;
        v20[1] = v62;
        v20 = (v20 + a8);
      }

      while (!v27);
      v27 = v60 <= 32;
      v60 -= 32;
      v20 = (v20 - a8 * v16 + 32);
    }

    while (!v27);
  }

  if (v15)
  {
    v64 = (v23 - a8 * v15);
    do
    {
      v65 = *v23;
      v66 = v23[1];
      v23 += 2;
      v67 = v15;
      do
      {
        v27 = v67-- <= 1;
        *v64 = v65;
        v64[1] = v66;
        v64 = (v64 + a8);
      }

      while (!v27);
      v27 = result <= 32;
      result -= 32;
      v64 = (v64 - a8 * v15 + 32);
    }

    while (!v27);
  }

  return result;
}

__n64 sub_277570634(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = (a3 >> 4) | ((((a3 ^ (a3 >> 3)) ^ ((a3 >> 12) ^ (a3 >> 1))) & 0xF) << 12);
  result.n64_u16[0] = *(a4 + 2 * ((v4 >> 2) & 0x7FF));
  result.n64_u16[1] = *(a4 + 2 * ((v4 >> 3) & 0x7FF));
  result.n64_u16[2] = *(a4 + 2 * ((v4 >> 4) & 0x7FF));
  result.n64_u16[3] = *(a4 + 2 * (v4 >> 5));
  return result;
}

double sub_2775706E0(int16x8_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = (a4 >> 2) | ((((a4 ^ (a4 >> 3)) ^ ((a4 >> 12) ^ (a4 >> 1))) & 3) << 14);
  a1.i16[0] = *(a5 + 2 * ((v6 >> 4) & 0x7FF));
  a1.i16[1] = *(a5 + 2 * (v6 >> 5));
  *a1.i8 = vrshl_s16(*a1.i8, v5);
  *a1.i8 = vmovn_s16(a1);
  return *a1.i64;
}

int8x16_t sub_277570728@<Q0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t result@<Q0>, int8x16_t a9@<Q1>)
{
  do
  {
    v13 = (a1 >> 6) & 0x7FF;
    a1 = a1 >> 1;
    result = vextq_s8(result, result, 1uLL);
    v11 = ((a9.i32[0] + v11 * a3 + a7) >> a6) + ((*(a2 + 2 * v13) + v10) >> v9);
    if (v11 > a4)
    {
      v11 = a4;
    }

    if (v11 < a5)
    {
      v11 = a5;
    }

    v14 = __OFSUB__(v12--, 1);
    a9 = vextq_s8(a9, a9, 4uLL);
    result.i8[15] = v11;
  }

  while (!((v12 < 0) ^ v14 | (v12 == 0)));
  return result;
}

int8x16_t sub_277570778@<Q0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t result@<Q0>, int8x16_t a9@<Q1>)
{
  do
  {
    v15 = (a1 >> 6) & 0x7FF;
    a1 = a1 >> 1;
    result = vextq_s8(result, result, 1uLL);
    v16 = a9.i32[0] + v13 * a3 + v11 * v14;
    v13 = v11;
    v11 = ((v16 + a7) >> a6) + ((*(a2 + 2 * v15) + v10) >> v9);
    if (v11 > a4)
    {
      v11 = a4;
    }

    if (v11 < a5)
    {
      v11 = a5;
    }

    v17 = __OFSUB__(v12--, 1);
    a9 = vextq_s8(a9, a9, 4uLL);
    result.i8[15] = v11;
  }

  while (!((v12 < 0) ^ v17 | (v12 == 0)));
  return result;
}

int8x16_t sub_2775707D0@<Q0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t result@<Q0>, int8x16_t a9@<Q1>)
{
  do
  {
    v17 = (a1 >> 6) & 0x7FF;
    a1 = a1 >> 1;
    result = vextq_s8(result, result, 1uLL);
    v18 = a9.i32[0] + v14 * a3 + v13 * v15 + v11 * v16;
    v14 = v13;
    v13 = v11;
    v11 = ((v18 + a7) >> a6) + ((*(a2 + 2 * v17) + v10) >> v9);
    if (v11 > a4)
    {
      v11 = a4;
    }

    if (v11 < a5)
    {
      v11 = a5;
    }

    v19 = __OFSUB__(v12--, 1);
    a9 = vextq_s8(a9, a9, 4uLL);
    result.i8[15] = v11;
  }

  while (!((v12 < 0) ^ v19 | (v12 == 0)));
  return result;
}

void sub_277570878(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int16x8_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v10 = (a1 >> 4) | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 12);
  a8.i16[5] = *(a2 + 2 * ((v10 >> 2) & 0x7FF));
  a8.i16[6] = *(a2 + 2 * ((v10 >> 3) & 0x7FF));
  a8.i16[7] = *(a2 + 2 * ((v10 >> 4) & 0x7FF));
  v11 = vrshlq_s16(a8, v9);
  v12 = sub_277570728(2 * v10, a2, a3, a4, a5, a6, a7, vmovn_hight_s16(*v11.i8, v11), vextq_s8(a9, a9, 0xCuLL));
  v21 = sub_277570728(v13 | ((((v13 ^ (v13 >> 3)) ^ ((v13 >> 12) ^ (v13 >> 1))) & 0xF) << 16), v14, v15, v16, v17, v18, v19, v12, v20);
  v30 = sub_277570728(v22 | ((((v22 ^ (v22 >> 3)) ^ ((v22 >> 12) ^ (v22 >> 1))) & 0xF) << 16), v23, v24, v25, v26, v27, v28, v21, v29);
  sub_277570728(v31 | ((((v31 ^ (v31 >> 3)) ^ ((v31 >> 12) ^ (v31 >> 1))) & 0xF) << 16), v32, v33, v34, v35, v36, v37, v30, v38);
}

void sub_27757097C(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_277570728(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_277570728(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_277570728(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  sub_277570728(v28 | ((((v28 ^ (v28 >> 3)) ^ ((v28 >> 12) ^ (v28 >> 1))) & 0xF) << 16), v29, v30, v31, v32, v33, v34, v27, v35);
}

double sub_277570A44@<D0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_277570728(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_277570728(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_277570728(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v36 = sub_277570728(v28 | ((((v28 ^ (v28 >> 3)) ^ ((v28 >> 12) ^ (v28 >> 1))) & 0xF) << 16), v29, v30, v31, v32, v33, v34, v27, v35);
  v39.i16[0] = *(v38 + 2 * ((v37 >> 6) & 0x7FF));
  *v41.i8 = vrshl_s16(v39, v40);
  *&result = vextq_s8(v36, v41, 1uLL).u64[0];
  return result;
}

void sub_277570B9C(int8x8_t a1, double a2, double a3, int8x8_t a4)
{
  sub_277570830(a1, a2, a3, a4);
  v5 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v4), 1uLL), vpaddlq_s8(v4[1]), 1uLL);
  sub_277570878(v8, v9, v10, v11, v12, v13, v14, v5, vaddw_s16(v7, *&vmull_s8(*v5.i8, v6)));
}

void sub_277570BD8(int8x8_t a1, double a2, double a3, int8x8_t a4)
{
  sub_277570830(a1, a2, a3, a4);
  v5 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v4), 1uLL), vpaddlq_s8(v4[1]), 1uLL);
  sub_27757097C(v8, v9, v10, v11, v12, v13, v14, v5, vaddw_s16(v7, *&vmull_s8(*v5.i8, v6)));
}

double sub_277570C14(int8x8_t a1, double a2, double a3, int8x8_t a4)
{
  sub_277570830(a1, a2, a3, a4);
  v5 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v4), 1uLL), vpaddlq_s8(v4[1]), 1uLL);
  return sub_277570D48(v8, v9, v10, v11, v12, v13, v14, v5, vaddw_s16(v7, *&vmull_s8(*v5.i8, v6)));
}

void sub_277570C50(int8x8_t a1, double a2, double a3, int8x8_t a4)
{
  sub_277570830(a1, a2, a3, a4);
  v5 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v4), vpaddlq_s8(*(v4 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v4 + 16)), vpaddlq_s8(*(v4 + 98))), 2uLL);
  sub_277570878(v8, v9, v10, v11, v12, v13, v14, v5, vaddw_s16(v7, *&vmull_s8(*v5.i8, v6)));
}

void sub_277570CA4(int8x8_t a1, double a2, double a3, int8x8_t a4)
{
  sub_277570830(a1, a2, a3, a4);
  v5 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v4), vpaddlq_s8(*(v4 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v4 + 16)), vpaddlq_s8(*(v4 + 98))), 2uLL);
  sub_27757097C(v8, v9, v10, v11, v12, v13, v14, v5, vaddw_s16(v7, *&vmull_s8(*v5.i8, v6)));
}

double sub_277570D48@<D0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, signed __int32 a4@<W5>, signed __int32 a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_277570728(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_277570728(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_277570728(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v29 = v28 >> 3;
  v31.i16[0] = *(v30 + 2 * ((v29 >> 3) & 0x7FF));
  v31.i16[1] = *(v30 + 2 * ((v29 >> 4) & 0x7FF));
  v31.i16[2] = *(v30 + 2 * (v29 >> 5));
  *v33.i8 = vrshl_s16(v31, v32);
  *v33.i8 = vmovn_s16(v33);
  *&result = vextq_s8(v27, v33, 7uLL).u64[0];
  return result;
}

int8x16_t *sub_277570F74@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int16x8_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v10 = (a1 >> 4) | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 12);
  a8.i16[5] = *(a2 + 2 * ((v10 >> 2) & 0x7FF));
  a8.i16[6] = *(a2 + 2 * ((v10 >> 3) & 0x7FF));
  a8.i16[7] = *(a2 + 2 * ((v10 >> 4) & 0x7FF));
  v11 = vrshlq_s16(a8, v9);
  v12 = sub_277570778(2 * v10, a2, a3, a4, a5, a6, a7, vmovn_hight_s16(*v11.i8, v11), vextq_s8(a9, a9, 0xCuLL));
  v21 = sub_277570778(v13 | ((((v13 ^ (v13 >> 3)) ^ ((v13 >> 12) ^ (v13 >> 1))) & 0xF) << 16), v14, v15, v16, v17, v18, v19, v12, v20);
  v30 = sub_277570778(v22 | ((((v22 ^ (v22 >> 3)) ^ ((v22 >> 12) ^ (v22 >> 1))) & 0xF) << 16), v23, v24, v25, v26, v27, v28, v21, v29);
  v39 = sub_277570778(v31 | ((((v31 ^ (v31 >> 3)) ^ ((v31 >> 12) ^ (v31 >> 1))) & 0xF) << 16), v32, v33, v34, v35, v36, v37, v30, v38);
  *v40 = v39;
  return v40 + 1;
}

int8x16_t *sub_277571080@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_277570778(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_277570778(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_277570778(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v36 = sub_277570778(v28 | ((((v28 ^ (v28 >> 3)) ^ ((v28 >> 12) ^ (v28 >> 1))) & 0xF) << 16), v29, v30, v31, v32, v33, v34, v27, v35);
  *v37 = v36;
  return v37 + 1;
}

int8x16_t *sub_27757114C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_277570778(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_277570778(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_277570778(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v36 = sub_277570778(v28 | ((((v28 ^ (v28 >> 3)) ^ ((v28 >> 12) ^ (v28 >> 1))) & 0xF) << 16), v29, v30, v31, v32, v33, v34, v27, v35);
  v39.i16[0] = *(v38 + 2 * ((v37 >> 6) & 0x7FF));
  *v41.i8 = vrshl_s16(v39, v40);
  *v42 = vextq_s8(v36, v41, 1uLL);
  return v42 + 1;
}

int8x16_t *sub_2775712C4()
{
  sub_277570E0C();
  v1 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v0), 1uLL), vpaddlq_s8(v0[1]), 1uLL);
  return sub_277570F74(v4, v5, v6, v7, v8, v9, v10, v1, vaddw_s16(v3, *&vmull_s8(*v1.i8, *&vdupq_laneq_s8(v2, 12))));
}

int8x16_t *sub_277571314()
{
  sub_277570E0C();
  v1 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v0), 1uLL), vpaddlq_s8(v0[1]), 1uLL);
  return sub_277571080(v4, v5, v6, v7, v8, v9, v10, v1, vaddw_s16(v3, *&vmull_s8(*v1.i8, *&vdupq_laneq_s8(v2, 12))));
}

int8x16_t *sub_277571354()
{
  sub_277570E0C();
  v1 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v0), 1uLL), vpaddlq_s8(v0[1]), 1uLL);
  return sub_2775714A8(v4, v5, v6, v7, v8, v9, v10, v1, vaddw_s16(v3, *&vmull_s8(*v1.i8, *&vdupq_laneq_s8(v2, 12))));
}

int8x16_t *sub_277571394()
{
  sub_277570E0C();
  v1 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v0), vpaddlq_s8(*(v0 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v0 + 16)), vpaddlq_s8(*(v0 + 98))), 2uLL);
  return sub_277570F74(v4, v5, v6, v7, v8, v9, v10, v1, vaddw_s16(v3, *&vmull_s8(*v1.i8, *&vdupq_laneq_s8(v2, 12))));
}

int8x16_t *sub_2775713FC()
{
  sub_277570E0C();
  v1 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v0), vpaddlq_s8(*(v0 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v0 + 16)), vpaddlq_s8(*(v0 + 98))), 2uLL);
  return sub_277571080(v4, v5, v6, v7, v8, v9, v10, v1, vaddw_s16(v3, *&vmull_s8(*v1.i8, *&vdupq_laneq_s8(v2, 12))));
}

uint64_t sub_277571454()
{
  sub_277570E0C();
  v1 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v0), vpaddlq_s8(*(v0 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v0 + 16)), vpaddlq_s8(*(v0 + 98))), 2uLL);
  v3 = vdupq_laneq_s8(v2, 12);
  v4 = vmull_s8(v1.n128_u64[0], v3.n128_u64[0]);
  v5 = vmull_high_s8(v1, v3);
  return sub_2775714A8(v1, v3, v4, v5, vaddw_s16(v6, v4.n128_u64[0]), vaddw_high_s16(v7, v4), vaddw_s16(v8, v5.n128_u64[0]), vaddw_high_s16(v9, v5));
}

int8x16_t *sub_2775714A8@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_277570778(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_277570778(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_277570778(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v29 = v28 >> 3;
  v31.i16[0] = *(v30 + 2 * ((v29 >> 3) & 0x7FF));
  v31.i16[1] = *(v30 + 2 * ((v29 >> 4) & 0x7FF));
  v31.i16[2] = *(v30 + 2 * (v29 >> 5));
  *v33.i8 = vrshl_s16(v31, v32);
  *v33.i8 = vmovn_s16(v33);
  *v34 = vextq_s8(v27, v33, 7uLL);
  return v34 + 1;
}

int8x16_t *sub_27757184C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int16x8_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v10 = (a1 >> 4) | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 12);
  a8.i16[5] = *(a2 + 2 * ((v10 >> 2) & 0x7FF));
  a8.i16[6] = *(a2 + 2 * ((v10 >> 3) & 0x7FF));
  a8.i16[7] = *(a2 + 2 * ((v10 >> 4) & 0x7FF));
  v11 = vrshlq_s16(a8, v9);
  v12 = sub_2775707D0(2 * v10, a2, a3, a4, a5, a6, a7, vmovn_hight_s16(*v11.i8, v11), vextq_s8(a9, a9, 0xCuLL));
  v21 = sub_2775707D0(v13 | ((((v13 ^ (v13 >> 3)) ^ ((v13 >> 12) ^ (v13 >> 1))) & 0xF) << 16), v14, v15, v16, v17, v18, v19, v12, v20);
  v30 = sub_2775707D0(v22 | ((((v22 ^ (v22 >> 3)) ^ ((v22 >> 12) ^ (v22 >> 1))) & 0xF) << 16), v23, v24, v25, v26, v27, v28, v21, v29);
  v39 = sub_2775707D0(v31 | ((((v31 ^ (v31 >> 3)) ^ ((v31 >> 12) ^ (v31 >> 1))) & 0xF) << 16), v32, v33, v34, v35, v36, v37, v30, v38);
  *v40 = v39;
  return v40 + 1;
}

int8x16_t *sub_27757195C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_2775707D0(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_2775707D0(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_2775707D0(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v36 = sub_2775707D0(v28 | ((((v28 ^ (v28 >> 3)) ^ ((v28 >> 12) ^ (v28 >> 1))) & 0xF) << 16), v29, v30, v31, v32, v33, v34, v27, v35);
  *v37 = v36;
  return v37 + 1;
}

int8x16_t *sub_277571A28@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_2775707D0(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_2775707D0(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_2775707D0(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v36 = sub_2775707D0(v28 | ((((v28 ^ (v28 >> 3)) ^ ((v28 >> 12) ^ (v28 >> 1))) & 0xF) << 16), v29, v30, v31, v32, v33, v34, v27, v35);
  v39.i16[0] = *(v38 + 2 * ((v37 >> 6) & 0x7FF));
  *v41.i8 = vrshl_s16(v39, v40);
  *v42 = vextq_s8(v36, v41, 1uLL);
  return v42 + 1;
}

int8x16_t *sub_277571BA8(uint64_t a1)
{
  sub_277571570(a1);
  v2 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v1), 1uLL), vpaddlq_s8(v1[1]), 1uLL);
  return sub_27757184C(v5, v6, v7, v8, v9, v10, v11, v2, vaddw_s16(v4, *&vmull_s8(*v2.i8, *&vdupq_laneq_s8(v3, 8))));
}

int8x16_t *sub_277571C00(uint64_t a1)
{
  sub_277571570(a1);
  v2 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v1), 1uLL), vpaddlq_s8(v1[1]), 1uLL);
  return sub_27757195C(v5, v6, v7, v8, v9, v10, v11, v2, vaddw_s16(v4, *&vmull_s8(*v2.i8, *&vdupq_laneq_s8(v3, 8))));
}

int8x16_t *sub_277571C40(uint64_t a1)
{
  sub_277571570(a1);
  v2 = vrshrn_high_n_s16(vrshrn_n_s16(vpaddlq_s8(*v1), 1uLL), vpaddlq_s8(v1[1]), 1uLL);
  return sub_277571D9C(v5, v6, v7, v8, v9, v10, v11, v2, vaddw_s16(v4, *&vmull_s8(*v2.i8, *&vdupq_laneq_s8(v3, 8))));
}

int8x16_t *sub_277571C80(uint64_t a1)
{
  sub_277571570(a1);
  v2 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v1), vpaddlq_s8(*(v1 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v1 + 16)), vpaddlq_s8(*(v1 + 98))), 2uLL);
  return sub_27757184C(v5, v6, v7, v8, v9, v10, v11, v2, vaddw_s16(v4, *&vmull_s8(*v2.i8, *&vdupq_laneq_s8(v3, 8))));
}

int8x16_t *sub_277571CF0(uint64_t a1)
{
  sub_277571570(a1);
  v2 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v1), vpaddlq_s8(*(v1 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v1 + 16)), vpaddlq_s8(*(v1 + 98))), 2uLL);
  return sub_27757195C(v5, v6, v7, v8, v9, v10, v11, v2, vaddw_s16(v4, *&vmull_s8(*v2.i8, *&vdupq_laneq_s8(v3, 8))));
}

uint64_t sub_277571D48(uint64_t a1)
{
  sub_277571570(a1);
  v2 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vpaddlq_s8(*v1), vpaddlq_s8(*(v1 + 82))), 2uLL), vaddq_s16(vpaddlq_s8(*(v1 + 16)), vpaddlq_s8(*(v1 + 98))), 2uLL);
  v4 = vdupq_laneq_s8(v3, 8);
  v5 = vmull_s8(v2.n128_u64[0], v4.n128_u64[0]);
  v6 = vmull_high_s8(v2, v4);
  return sub_277571D9C(v2, v4, v5, v6, vaddw_s16(v7, v5.n128_u64[0]), vaddw_high_s16(v8, v5), vaddw_s16(v9, v6.n128_u64[0]), vaddw_high_s16(v10, v6));
}

int8x16_t *sub_277571D9C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q4>)
{
  v9 = sub_2775707D0(a1 | ((((a1 ^ (a1 >> 3)) ^ ((a1 >> 12) ^ (a1 >> 1))) & 0xF) << 16), a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = sub_2775707D0(v10 | ((((v10 ^ (v10 >> 3)) ^ ((v10 >> 12) ^ (v10 >> 1))) & 0xF) << 16), v11, v12, v13, v14, v15, v16, v9, v17);
  v27 = sub_2775707D0(v19 | ((((v19 ^ (v19 >> 3)) ^ ((v19 >> 12) ^ (v19 >> 1))) & 0xF) << 16), v20, v21, v22, v23, v24, v25, v18, v26);
  v29 = v28 >> 3;
  v31.i16[0] = *(v30 + 2 * ((v29 >> 3) & 0x7FF));
  v31.i16[1] = *(v30 + 2 * ((v29 >> 4) & 0x7FF));
  v31.i16[2] = *(v30 + 2 * (v29 >> 5));
  *v33.i8 = vrshl_s16(v31, v32);
  *v33.i8 = vmovn_s16(v33);
  *v34 = vextq_s8(v27, v33, 7uLL);
  return v34 + 1;
}

uint64_t sub_277571E64(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  do
  {
    sub_277570634(result, a2, a3, a4);
    sub_277570634(v4, v5, v6, v7);
    sub_277570634(v8, v9, v10, v11);
    sub_277570634(v12, v13, v14, v15);
    sub_277570634(v16, v17, v18, v19);
    sub_277570634(v20, v21, v22, v23);
    sub_277570634(v24, v25, v26, v27);
    sub_277570634(v28, v29, v30, v31);
    sub_277570634(v32, v33, v34, v35);
    *v40.i8 = sub_277570634(v36, v37, v38, v39);
    v42 = vrshlq_s16(v40, v41);
    v44 = vmovn_hight_s16(v43, v42);
    a3 = (v45 >> 2) | ((((v45 ^ (v45 >> 3)) ^ ((v45 >> 12) ^ (v45 >> 1))) & 3) << 14);
    v42.i16[0] = *(a4 + 2 * ((a3 >> 4) & 0x7FF));
    v42.i16[1] = *(a4 + 2 * (a3 >> 5));
    *v40.i8 = vrshl_s16(*v42.i8, *v41.i8);
    v47 = __OFSUB__(v46, 1);
    a2 = (v46 - 1);
    *v48 = v49;
    v48[1] = v50;
    v48 += 2;
    *v48 = v51;
    v48[1] = v52;
    v48 += 2;
    *v48++ = v44;
    v48->i16[0] = vmovn_s16(v40).u16[0];
    result = v48->i64 + 2;
  }

  while (!((a2 < 0) ^ v47 | (a2 == 0)));
  return result;
}

uint64_t sub_277571F4C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  do
  {
    sub_277570634(result, a2, a3, a4);
    sub_277570634(v4, v5, v6, v7);
    sub_277570634(v8, v9, v10, v11);
    sub_277570634(v12, v13, v14, v15);
    *v20.i8 = sub_277570634(v16, v17, v18, v19);
    v22 = vmovn_s16(vrshlq_s16(v20, v21));
    a3 = (v23 >> 4) | ((((v23 ^ (v23 >> 3)) ^ ((v23 >> 12) ^ (v23 >> 1))) & 0xF) << 12);
    v20.i16[0] = *(a4 + 2 * ((a3 >> 2) & 0x7FF));
    v20.i16[1] = *(a4 + 2 * ((a3 >> 3) & 0x7FF));
    v20.i16[2] = *(a4 + 2 * ((a3 >> 4) & 0x7FF));
    v20.i16[3] = *(a4 + 2 * (a3 >> 5));
    *v20.i8 = vrshl_s16(*v20.i8, *v21.i8);
    v25 = __OFSUB__(v24, 1);
    a2 = (v24 - 1);
    *v26 = v27;
    v26[1] = v28;
    v26 += 2;
    *v26 = vmovn_hight_s16(v22, v20);
    result = v26 + 50;
  }

  while (!((a2 < 0) ^ v25 | (a2 == 0)));
  return result;
}

int16x4_t sub_27757200C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_277570634(a1, a2, a3, a4);
  sub_277570634(v4, v5, v6, v7);
  sub_277570634(v8, v9, v10, v11);
  sub_277570634(v12, v13, v14, v15);
  sub_277570634(v16, v17, v18, v19);
  sub_277570634(v20, v21, v22, v23);
  sub_277570634(v24, v25, v26, v27);
  sub_277570634(v28, v29, v30, v31);
  sub_277570634(v32, v33, v34, v35);
  *v40.i8 = sub_277570634(v36, v37, v38, v39);
  v42 = vrshlq_s16(v40, v41);
  v44 = (v43 >> 2) | ((((v43 ^ (v43 >> 3)) ^ ((v43 >> 12) ^ (v43 >> 1))) & 3) << 14);
  v42.i16[0] = *(v45 + 2 * ((v44 >> 4) & 0x7FF));
  v42.i16[1] = *(v45 + 2 * (v44 >> 5));
  return vrshl_s16(*v42.i8, *v41.i8);
}

int16x4_t sub_2775720DC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_277570634(a1, a2, a3, a4);
  sub_277570634(v4, v5, v6, v7);
  sub_277570634(v8, v9, v10, v11);
  sub_277570634(v12, v13, v14, v15);
  sub_277570634(v16, v17, v18, v19);
  v21 = (v20 >> 4) | ((((v20 ^ (v20 >> 3)) ^ ((v20 >> 12) ^ (v20 >> 1))) & 0xF) << 12);
  v23.i16[0] = *(v22 + 2 * ((v21 >> 2) & 0x7FF));
  v23.i16[1] = *(v22 + 2 * ((v21 >> 3) & 0x7FF));
  v23.i16[2] = *(v22 + 2 * ((v21 >> 4) & 0x7FF));
  v23.i16[3] = *(v22 + 2 * (v21 >> 5));
  return vrshl_s16(v23, v24);
}

char *sub_27757226C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  v5 = a5 + 1;
  vld1q_dup_s8(v5++);
  vld1q_dup_s8(v5);
  sub_277571E64(a1, 3, a3, a4);
  do
  {
    sub_27757086C(*&vextq_s8(v7, v7, 0xFuLL), *vextq_s8(v7, v8, 1uLL).i64, v6, *v7.i8);
    sub_277570970(*&vextq_s8(v9, v10, 0xFuLL), *vextq_s8(v10, v11, 1uLL).i64, v12, *v10.i8);
    sub_277570970(*&vextq_s8(v13, v14, 0xFuLL), *vextq_s8(v14, v15, 1uLL).i64, v16, *v14.i8);
    sub_277570970(*&vextq_s8(v17, v18, 0xFuLL), *vextq_s8(v18, v19, 1uLL).i64, v20, *v18.i8);
    v25 = sub_277570A38(*&vextq_s8(v21, v22, 0xFuLL), *vextq_s8(v22, v23, 1uLL).i64, v24, *v22.i8);
    v30 = sub_2775706E0(v29, v25, v26, v27, v28);
    *v31 = v32;
    v31[1] = v33;
    v31 += 2;
    *v31 = v34;
    v31[1] = v35;
    v31 += 2;
    *v31++ = v36;
    v31->i16[0] = LOWORD(v30);
    result = &v31->i8[2];
    v7 = v32;
    v8 = v33;
  }

  while (v38 > 1);
  return result;
}

_WORD *sub_277572328(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_277571E64(a1, 3, a3, a4);
  do
  {
    sub_277570F58();
    sub_277571074();
    sub_277571074();
    sub_277571074();
    v4 = sub_277571140();
    v9 = sub_2775706E0(v8, v4, v5, v6, v7);
    *v10 = LOWORD(v9);
    result = v10 + 1;
  }

  while (v12 > 1);
  return result;
}

uint64_t sub_277572374(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = sub_277571E64(a1, 3, a3, a4);
  do
  {
    v5 = sub_277571828(result);
    v6 = sub_277571950(v5);
    v7 = sub_277571950(v6);
    v8 = sub_277571950(v7);
    v9 = sub_277571A1C(v8);
    v14 = sub_2775706E0(v13, v9, v10, v11, v12);
    *v15 = LOWORD(v14);
    result = (v15 + 1);
  }

  while (v16 > 1);
  return result;
}

uint64_t sub_277572480(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  result = sub_277571E64(a1, 3, a3, a4);
  v9 = 70;
  do
  {
    sub_27757200C(result, v9, v7, v8);
    sub_277572188();
    sub_277572188();
    sub_277572188();
    v5 += 82;
    sub_277572188();
    sub_277572188();
    v11 = __OFSUB__(v10, 1);
    v9 = (v10 - 1);
    *v12 = v13;
    v12[1] = v14;
    v12 += 2;
    *v12 = v15;
    v12[1] = v16;
    v12 += 2;
    *v12++ = v17;
    *v12 = v18;
    result = v12 + 2;
  }

  while (!((v9 < 0) ^ v11 | (v9 == 0)));
  return result;
}

char *sub_27757252C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  v6 = a5 + 1;
  vld1q_dup_s8(v6++);
  vld1q_dup_s8(v6);
  v6 += 2;
  vld1q_dup_s8(v6);
  sub_277571E64(a1, 3, a3, a4);
  do
  {
    sub_277570B18(*&vextq_s8(v8, v8, 0xFuLL), *vextq_s8(v8, v9, 1uLL).i64, v7, *v8.i8);
    sub_277570B44(*&vextq_s8(v10, v11, 0xFuLL), *vextq_s8(v11, v12, 1uLL).i64, v13, *v11.i8);
    sub_277570B44(*&vextq_s8(v14, v15, 0xFuLL), *vextq_s8(v15, v16, 1uLL).i64, v17, *v15.i8);
    sub_277570B44(*&vextq_s8(v18, v19, 0xFuLL), *vextq_s8(v19, v20, 1uLL).i64, v21, *v19.i8);
    *v26.i64 = sub_277570B70(*&vextq_s8(v22, v23, 0xFuLL), *vextq_s8(v23, v24, 1uLL).i64, v25, *v23.i8);
    v31 = sub_2775706E0(v26, v27, v28, v29, v30);
    v5 += 2;
    *v32 = v33;
    v32[1] = v34;
    v32 += 2;
    *v32 = v35;
    v32[1] = v36;
    v32 += 2;
    *v32++ = v37;
    v32->i16[0] = LOWORD(v31);
    result = &v32->i8[2];
    v8 = v33;
    v9 = v34;
  }

  while (v39 > 1);
  return result;
}

_WORD *sub_2775725F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_277571E64(a1, 3, a3, a4);
  do
  {
    sub_277571224();
    sub_277571264();
    sub_277571264();
    sub_277571264();
    v5 = sub_277571294();
    v10 = sub_2775706E0(v9, v5, v6, v7, v8);
    v4 += 2;
    *v11 = LOWORD(v10);
    result = v11 + 1;
  }

  while (v13 > 1);
  return result;
}

uint64_t sub_277572644(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = sub_277571E64(a1, 3, a3, a4);
  do
  {
    v6 = sub_277571B00(result);
    v7 = sub_277571B48(v6);
    v8 = sub_277571B48(v7);
    v9 = sub_277571B48(v8);
    v10 = sub_277571B78(v9);
    v15 = sub_2775706E0(v14, v10, v11, v12, v13);
    v4 += 2;
    *v16 = LOWORD(v15);
    result = (v16 + 1);
  }

  while (v17 > 1);
  return result;
}

uint64_t sub_277572754(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  result = sub_277571F4C(a1, 3, a3, a4);
  v9 = 35;
  do
  {
    sub_2775720DC(result, v9, v7, v8);
    sub_2775721AC();
    sub_2775721AC();
    sub_2775721AC();
    v11 = __OFSUB__(v10, 1);
    v9 = (v10 - 1);
    v5 += 68;
    *v12 = v13;
    v12[1] = v14;
    v12 += 2;
    *v12 = v15;
    result = v12 + 50;
  }

  while (!((v9 < 0) ^ v11 | (v9 == 0)));
  return result;
}

char *sub_2775727D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  v6 = a5 + 1;
  vld1q_dup_s8(v6++);
  vld1q_dup_s8(v6);
  v6 += 2;
  vld1q_dup_s8(v6);
  sub_277571F4C(a1, 3, a3, a4);
  do
  {
    sub_277570C50(*&vextq_s8(v8, v8, 0xFuLL), *vextq_s8(v8, v9, 1uLL).i64, v7, *v8.i8);
    sub_277570CA4(*&vextq_s8(v10, v11, 0xFuLL), *vextq_s8(v11, v12, 1uLL).i64, v13, *v11.i8);
    v17 = sub_277570CF8(*&vextq_s8(v14, v15, 0xFuLL), *vextq_s8(v15, v15, 1uLL).i64, v16, *v15.i8);
    v5 += 68;
    *v17 = v18;
    v17[1] = v19;
    v17 += 2;
    *v17 = v20;
    result = v17 + 50;
    v8 = v18;
    v9 = v19;
  }

  while (v22 > 1);
  return result;
}

uint64_t sub_277572864(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_277571F4C(a1, 3, a3, a4);
  do
  {
    sub_277571394();
    sub_2775713FC();
    v4 += 68;
    result = sub_277571454() + 34;
  }

  while (v6 > 1);
  return result;
}

uint64_t sub_2775728A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = sub_277571F4C(a1, 3, a3, a4);
  do
  {
    v6 = sub_277571C80(result);
    v7 = sub_277571CF0(v6);
    v4 += 68;
    result = sub_277571D48(v7) + 34;
  }

  while (v8 > 1);
  return result;
}

uint64_t sub_2775729A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  result = sub_277571F4C(a1, 3, a3, a4);
  v9 = 70;
  do
  {
    sub_2775720DC(result, v9, v7, v8);
    sub_2775721DC();
    sub_2775721DC();
    sub_2775721DC();
    v11 = __OFSUB__(v10, 1);
    v9 = (v10 - 1);
    v5 -= 14;
    *v12 = v13;
    v12[1] = v14;
    v12 += 2;
    *v12 = v15;
    result = v12 + 50;
  }

  while (!((v9 < 0) ^ v11 | (v9 == 0)));
  return result;
}

char *sub_277572A28(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  vld1q_dup_s8(a5);
  v6 = a5 + 1;
  vld1q_dup_s8(v6++);
  vld1q_dup_s8(v6);
  v6 += 2;
  vld1q_dup_s8(v6);
  sub_277571F4C(a1, 3, a3, a4);
  do
  {
    sub_277570B9C(*&vextq_s8(v8, v8, 0xFuLL), *vextq_s8(v8, v9, 1uLL).i64, v7, *v8.i8);
    sub_277570BD8(*&vextq_s8(v10, v11, 0xFuLL), *vextq_s8(v11, v12, 1uLL).i64, v13, *v11.i8);
    *v17.i64 = sub_277570C14(*&vextq_s8(v14, v15, 0xFuLL), *vextq_s8(v15, v15, 1uLL).i64, v16, *v15.i8);
    v5 -= 14;
    *v18 = v19;
    v18[1] = v20;
    v18 += 2;
    *v18 = v17;
    result = &v18[3].i8[2];
    v8 = v19;
    v9 = v20;
  }

  while (v22 > 1);
  return result;
}

__int8 *sub_277572AB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_277571F4C(a1, 3, a3, a4);
  do
  {
    sub_2775712C4();
    sub_277571314();
    v4 -= 14;
    result = &sub_277571354()[2].i8[2];
  }

  while (v6 > 1);
  return result;
}

__int8 *sub_277572AF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = sub_277571F4C(a1, 3, a3, a4);
  do
  {
    v6 = sub_277571BA8(result);
    v7 = sub_277571C00(v6);
    v4 -= 14;
    result = &sub_277571C40(v7)[2].i8[2];
  }

  while (v8 > 1);
  return result;
}

__int8 *sub_277572EAC()
{
  do
  {
    sub_277572B6C();
    *v9 = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v0.i8), vmovl_u8(*v2.i8)), v4), *v5.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v0), vmovl_high_u8(v2)), v4), v5)), v7), v8);
    v9[1] = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v1.i8), vmovl_u8(*v3.i8)), v4), *v6.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v1), vmovl_high_u8(v3)), v4), v6)), v7), v8);
    result = &v9->i8[v10];
  }

  while (v12 > 1);
  return result;
}

__int8 *sub_277572F40()
{
  do
  {
    sub_277572B6C();
    v7 = vqrshrn_high_n_s16(vqrshrn_n_s16(vmlal_s8(vmull_s8(*v2.i8, *v1.i8), *v5.i8, *v4.i8), 5uLL), vmlal_high_s8(vmull_high_s8(v2, v1), v5, v4), 5uLL);
    v8 = vqrshrn_high_n_s16(vqrshrn_n_s16(vmlal_s8(vmull_s8(*v3.i8, *v1.i8), *v6.i8, *v4.i8), 5uLL), vmlal_high_s8(vmull_high_s8(v3, v1), v6, v4), 5uLL);
    *v16 = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v7.i8), vmovl_u8(*v9.i8)), v11), *v12.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v7), vmovl_high_u8(v9)), v11), v12)), v14), v15);
    v16[1] = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v8.i8), vmovl_u8(*v10.i8)), v11), *v13.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v8), vmovl_high_u8(v10)), v11), v13)), v14), v15);
    result = &v16->i8[v17];
  }

  while (v19 > 1);
  if (v0 > 2)
  {
    return sub_277572EAC();
  }

  return result;
}

__int8 *sub_27757301C()
{
  do
  {
    sub_277572B6C();
    *v12 = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(vqrshrn_n_s16(vmlal_s8(vmull_s8(v0, v1), *v2.i8, v3), 5uLL)), vmovl_u8(*v5.i8)), v7), *v8.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v2), vmovl_high_u8(v5)), v7), v8)), v10), v11);
    v12[1] = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v4.i8), vmovl_u8(*v6.i8)), v7), *v9.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v4), vmovl_high_u8(v6)), v7), v9)), v10), v11);
    result = &v12->i8[v13];
  }

  while (v15 > 1);
  return result;
}

__int8 *sub_2775730C0()
{
  do
  {
    sub_277572B6C();
    v11 = vqrshrn_high_n_s16(vqrshrn_n_s16(vmlal_s8(vmull_s8(vqrshrn_n_s16(vmlal_s8(vmull_s8(v1, v2), *v3.i8, v4), 5uLL), *v7.i8), vqrshrn_n_s16(vmlal_s8(vmull_s8(v5, v2), *v6.i8, v4), 5uLL), *v9.i8), 5uLL), vmlal_high_s8(vmull_high_s8(v3, v7), v6, v9), 5uLL);
    v12 = vqrshrn_high_n_s16(vqrshrn_n_s16(vmlal_s8(vmull_s8(*v8.i8, *v7.i8), *v10.i8, *v9.i8), 5uLL), vmlal_high_s8(vmull_high_s8(v8, v7), v10, v9), 5uLL);
    *v20 = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v11.i8), vmovl_u8(*v13.i8)), v15), *v16.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v11), vmovl_high_u8(v13)), v15), v16)), v18), v19);
    v20[1] = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v12.i8), vmovl_u8(*v14.i8)), v15), *v17.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v12), vmovl_high_u8(v14)), v15), v17)), v18), v19);
    result = &v20->i8[v21];
  }

  while (v23 > 1);
  if (v0 > 2)
  {
    return sub_27757301C();
  }

  return result;
}

void sub_2775731C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = (a5 + 4 * a11 + 204);
  vld1q_dup_s16(v13);
  __asm { BR              X13 }
}

void sub_2775732D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = (a5 + 4 * a11 + 204);
  vld1q_dup_s16(v13);
  __asm { BR              X13 }
}

void sub_2775733E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = (a5 + 4 * a11 + 204);
  vld1q_dup_s16(v13);
  __asm { BR              X13 }
}

__int8 *sub_277573510()
{
  do
  {
    sub_277572B6C();
    *v9 = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v0.i8), vmovl_u8(*v2.i8)), v4), *v5.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v0), vmovl_high_u8(v2)), v4), v5)), v7), v8);
    v9[1] = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v1.i8), vmovl_u8(*v3.i8)), v4), *v6.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v1), vmovl_high_u8(v3)), v4), v6)), v7), v8);
    result = &v9->i8[v10];
  }

  while (v12 > 1);
  return result;
}

__int8 *sub_277573D30()
{
  do
  {
    sub_277572CF0();
    *v6 = vminq_u8(vmaxq_u8(vqmovun_high_s16(vqmovun_s16(vaddw_u8(vrshlq_s16(vmulq_s16(vmovl_s8(*v0.i8), vmovl_u8(*v1.i8)), v2), *v3.i8)), vaddw_high_u8(vrshlq_s16(vmulq_s16(vmovl_high_s8(v0), vmovl_high_u8(v1)), v2), v3)), v4), v5);
    result = &v6->i8[v7];
  }

  while (v9 > 1);
  return result;
}

void sub_2775742A0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, uint8x8_t *a5, uint8x8_t *a6, int a7, int a8, __n128 a9, __n128 a10, __n128 a11, uint8x8_t a12)
{
  if (a8 == 15)
  {
    sub_2775748E0(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12.n128_u64[0] = 0x8000800080008000;
    v12.n128_u64[1] = 0x8000800080008000;
    v13 = a1 - 68;
    if ((a8 & 4) != 0)
    {
      v16 = (a5 + a3);
      if (a8)
      {
        v17 = (a5 - 2);
        v18 = (v16 - 2);
        if ((a8 & 2) != 0)
        {
          a10.n128_u32[0] = v17[1].u32[0];
          a12.i32[0] = v18[1].i32[0];
          a9 = vmovl_u8(*v17);
          a10.n128_u64[0] = vmovl_u8(a10.n128_u64[0]).u64[0];
          a11 = vmovl_u8(*v18);
          a12 = vmovl_u8(a12).u64[0];
          *v13 = a9;
          *(v13 + 16) = a10.n128_u64[0];
          v19 = (v13 + 32);
          *v19 = a11;
          v19[1].n128_f64[0] = *&a12;
        }

        else
        {
          a10.n128_u16[0] = v17[1].u16[0];
          a12.i16[0] = v18[1].i16[0];
          a9 = vmovl_u8(*v17);
          a10.n128_u64[0] = vmovl_u8(a10.n128_u64[0]).u64[0];
          a11 = vmovl_u8(*v18);
          a12 = vmovl_u8(a12).u64[0];
          *v13 = a9;
          *(v13 + 16) = a10.n128_u32[0];
          *(v13 + 20) = -2147450880;
          v19 = (v13 + 32);
          *v19 = a11;
          v19[1].n128_u32[0] = a12.i32[0];
          v19[1].n128_u32[1] = -2147450880;
        }

        v15 = v19 + 2;
      }

      else
      {
        if ((a8 & 2) != 0)
        {
          a10.n128_u16[0] = a5[1].u16[0];
          a12.i16[0] = v16[1].i16[0];
          a9 = vmovl_u8(*a5);
          a10.n128_u64[0] = vmovl_u8(a10.n128_u64[0]).u64[0];
          a11 = vmovl_u8(*v16);
          a12 = vmovl_u8(a12).u64[0];
          *v13 = -2147450880;
          *(v13 + 4) = a9;
          *(v13 + 20) = a10.n128_u32[0];
          v20 = v13 + 32;
          *v20 = -2147450880;
          *(v20 + 4) = a11;
          *(v20 + 20) = a12.i32[0];
        }

        else
        {
          a9 = vmovl_u8(*a5);
          a10 = vmovl_u8(*v16);
          *v13 = -2147450880;
          *(v13 + 4) = a9;
          *(v13 + 20) = -2147450880;
          v20 = v13 + 32;
          *v20 = -2147450880;
          *(v20 + 4) = a10;
          *(v20 + 20) = -2147450880;
        }

        v15 = (v20 + 32);
      }
    }

    else
    {
      *v13 = v12;
      *(v13 + 16) = v12;
      v14 = (v13 + 32);
      *v14 = v12;
      v14[1] = v12;
      v15 = v14 + 2;
    }

    if (a8)
    {
      if ((a8 & 2) != 0)
      {
        do
        {
          a9.n128_u16[0] = *a4++;
          a11.n128_u16[0] = *(a2 + 8);
          v21 = *a2;
          a2 += a3;
          v22 = __OFSUB__(a7--, 1);
          a9.n128_u64[0] = vmovl_u8(a9.n128_u64[0]).u64[0];
          a10 = vmovl_u8(v21);
          a11.n128_u64[0] = vmovl_u8(a11.n128_u64[0]).u64[0];
          v15->n128_u32[0] = a9.n128_u32[0];
          *(v15 + 4) = a10;
          v15[1].n128_u32[1] = a11.n128_u32[0];
          v15 += 2;
        }

        while (!((a7 < 0) ^ v22 | (a7 == 0)));
      }

      else
      {
        do
        {
          a9.n128_u16[0] = *a4++;
          v23 = *a2;
          a2 += a3;
          v22 = __OFSUB__(a7--, 1);
          a9.n128_u64[0] = vmovl_u8(a9.n128_u64[0]).u64[0];
          a10 = vmovl_u8(v23);
          v15->n128_u32[0] = a9.n128_u32[0];
          *(v15 + 4) = a10;
          v15[1].n128_u32[1] = -2147450880;
          v15 += 2;
        }

        while (!((a7 < 0) ^ v22 | (a7 == 0)));
      }
    }

    else if ((a8 & 2) != 0)
    {
      do
      {
        a10.n128_u16[0] = *(a2 + 8);
        v24 = *a2;
        a2 += a3;
        v22 = __OFSUB__(a7--, 1);
        a10.n128_u64[0] = vmovl_u8(a10.n128_u64[0]).u64[0];
        v15->n128_u32[0] = -2147450880;
        *(v15 + 4) = vmovl_u8(v24);
        v15[1].n128_u32[1] = a10.n128_u32[0];
        v15 += 2;
      }

      while (!((a7 < 0) ^ v22 | (a7 == 0)));
    }

    else
    {
      do
      {
        v25 = *a2;
        a2 += a3;
        v22 = __OFSUB__(a7--, 1);
        v15->n128_u32[0] = -2147450880;
        *(v15 + 4) = vmovl_u8(v25);
        v15[1].n128_u32[1] = -2147450880;
        v15 += 2;
      }

      while (!((a7 < 0) ^ v22 | (a7 == 0)));
    }

    if ((a8 & 8) != 0)
    {
      v27 = (a6 + a3);
      if (a8)
      {
        v28 = (a6 - 2);
        v29 = (v27 - 2);
        if ((a8 & 2) != 0)
        {
          a10.n128_u32[0] = v28[1].u32[0];
          a12.i32[0] = v29[1].i32[0];
          v30 = vmovl_u8(*v29);
          *v15 = vmovl_u8(*v28);
          v15[1].n128_u64[0] = vmovl_u8(a10.n128_u64[0]).u64[0];
          v31 = &v15[2];
          *v31 = v30;
          v31[1].i64[0] = vmovl_u8(a12).u64[0];
        }

        else
        {
          a10.n128_u16[0] = v28[1].u16[0];
          a12.i16[0] = v29[1].i16[0];
          v32 = vmovl_u8(*v29);
          *v15 = vmovl_u8(*v28);
          v15[1].n128_u32[0] = vmovl_u8(a10.n128_u64[0]).u32[0];
          v15[1].n128_u32[1] = -2147450880;
          v33 = &v15[2];
          *v33 = v32;
          v33[1].i32[0] = vmovl_u8(a12).u32[0];
          v33[1].i32[1] = -2147450880;
        }
      }

      else if ((a8 & 2) != 0)
      {
        a10.n128_u16[0] = a6[1].u16[0];
        a12.i16[0] = v27[1].i16[0];
        v34 = vmovl_u8(*a6);
        v35 = vmovl_u8(*v27);
        v15->n128_u32[0] = -2147450880;
        *(v15 + 4) = v34;
        v15[1].n128_u32[1] = vmovl_u8(a10.n128_u64[0]).u32[0];
        v36 = v15 + 2;
        v36->n128_u32[0] = -2147450880;
        *(v36 + 4) = v35;
        v36[1].n128_u32[1] = vmovl_u8(a12).u32[0];
      }

      else
      {
        v37 = vmovl_u8(*a6);
        v38 = vmovl_u8(*v27);
        v15->n128_u32[0] = -2147450880;
        *(v15 + 4) = v37;
        v15[1].n128_u32[1] = -2147450880;
        v39 = v15 + 2;
        v39->n128_u32[0] = -2147450880;
        *(v39 + 4) = v38;
        v39[1].n128_u32[1] = -2147450880;
      }
    }

    else
    {
      *v15 = v12;
      v15[1] = v12;
      v26 = v15 + 2;
      *v26 = v12;
      v26[1] = v12;
    }
  }
}

void *sub_2775745C4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, uint8x8_t a11, uint8x8_t a12)
{
  if (a8 == 15)
  {
    return sub_277574960(a1, a2, a3, a4, a5, a6, a7);
  }

  *&v13 = 0x8000800080008000;
  *(&v13 + 1) = 0x8000800080008000;
  v14 = a1 - 36;
  if ((a8 & 4) != 0)
  {
    v16 = a5 + a3;
    if (a8)
    {
      v17 = (a5 - 2);
      v18 = (v16 - 2);
      LODWORD(a9) = *v17;
      if ((a8 & 2) != 0)
      {
        LODWORD(a10) = v17[1];
        a11.i32[0] = *v18;
        a12.i32[0] = v18[1];
        *&a9 = vmovl_u8(*&a9).u64[0];
        *&a10 = vmovl_u8(*&a10).u64[0];
        a11 = vmovl_u8(a11).u64[0];
        a12 = vmovl_u8(a12).u64[0];
        *v14 = a9;
        *(v14 + 8) = a10;
        v19 = v14 + 16;
        *v19 = *&a11;
        *(v19 + 8) = *&a12;
      }

      else
      {
        LOWORD(a10) = *(v17 + 2);
        a11.i32[0] = *v18;
        a12.i16[0] = *(v18 + 2);
        *&a9 = vmovl_u8(*&a9).u64[0];
        *&a10 = vmovl_u8(*&a10).u64[0];
        a11 = vmovl_u8(a11).u64[0];
        a12 = vmovl_u8(a12).u64[0];
        *v14 = a9;
        *(v14 + 8) = LODWORD(a10);
        *(v14 + 12) = -2147450880;
        v19 = v14 + 16;
        *v19 = *&a11;
        *(v19 + 8) = a12.i32[0];
        *(v19 + 12) = -2147450880;
      }

      v15 = v19 + 16;
    }

    else
    {
      LODWORD(a9) = *a5;
      if ((a8 & 2) != 0)
      {
        LOWORD(a10) = *(a5 + 4);
        a11.i32[0] = *v16;
        a12.i16[0] = *(v16 + 4);
        *&a9 = vmovl_u8(*&a9).u64[0];
        *&a10 = vmovl_u8(*&a10).u64[0];
        a11 = vmovl_u8(a11).u64[0];
        a12 = vmovl_u8(a12).u64[0];
        *v14 = -2147450880;
        *(v14 + 4) = a9;
        *(v14 + 12) = LODWORD(a10);
        v20 = v14 + 16;
        *v20 = -2147450880;
        *(v20 + 4) = *&a11;
        *(v20 + 12) = a12.i32[0];
      }

      else
      {
        LODWORD(a10) = *v16;
        *&a9 = vmovl_u8(*&a9).u64[0];
        *&a10 = vmovl_u8(*&a10).u64[0];
        *v14 = -2147450880;
        *(v14 + 4) = a9;
        *(v14 + 12) = -2147450880;
        v20 = v14 + 16;
        *v20 = -2147450880;
        *(v20 + 4) = a10;
        *(v20 + 12) = -2147450880;
      }

      v15 = v20 + 16;
    }
  }

  else
  {
    *v14 = v13;
    *(v14 + 16) = v13;
    v15 = v14 + 32;
  }

  if (a8)
  {
    if ((a8 & 2) != 0)
    {
      do
      {
        LOWORD(a9) = *a4++;
        a11.i16[0] = *(a2 + 4);
        LODWORD(a10) = *a2;
        a2 += a3;
        v21 = __OFSUB__(a7--, 1);
        *&a9 = vmovl_u8(*&a9).u64[0];
        *&a10 = vmovl_u8(*&a10).u64[0];
        a11 = vmovl_u8(a11).u64[0];
        *v15 = LODWORD(a9);
        *(v15 + 4) = a10;
        *(v15 + 12) = a11.i32[0];
        v15 += 16;
      }

      while (!((a7 < 0) ^ v21 | (a7 == 0)));
    }

    else
    {
      do
      {
        LOWORD(a9) = *a4++;
        LODWORD(a10) = *a2;
        a2 += a3;
        v21 = __OFSUB__(a7--, 1);
        *&a9 = vmovl_u8(*&a9).u64[0];
        *&a10 = vmovl_u8(*&a10).u64[0];
        *v15 = LODWORD(a9);
        *(v15 + 4) = a10;
        *(v15 + 12) = -2147450880;
        v15 += 16;
      }

      while (!((a7 < 0) ^ v21 | (a7 == 0)));
    }
  }

  else if ((a8 & 2) != 0)
  {
    do
    {
      LOWORD(a10) = *(a2 + 4);
      LODWORD(a9) = *a2;
      a2 += a3;
      v21 = __OFSUB__(a7--, 1);
      *&a9 = vmovl_u8(*&a9).u64[0];
      *&a10 = vmovl_u8(*&a10).u64[0];
      *v15 = -2147450880;
      *(v15 + 4) = a9;
      *(v15 + 12) = LODWORD(a10);
      v15 += 16;
    }

    while (!((a7 < 0) ^ v21 | (a7 == 0)));
  }

  else
  {
    do
    {
      LODWORD(a9) = *a2;
      a2 += a3;
      v21 = __OFSUB__(a7--, 1);
      *&a9 = vmovl_u8(*&a9).u64[0];
      *v15 = -2147450880;
      *(v15 + 4) = a9;
      *(v15 + 12) = -2147450880;
      v15 += 16;
    }

    while (!((a7 < 0) ^ v21 | (a7 == 0)));
  }

  if ((a8 & 8) != 0)
  {
    v22 = a6 + a3;
    if (a8)
    {
      v23 = (a6 - 2);
      v24 = (v22 - 2);
      LODWORD(a9) = *v23;
      if ((a8 & 2) != 0)
      {
        LODWORD(a10) = v23[1];
        a11.i32[0] = *v24;
        a12.i32[0] = v24[1];
        *v15 = vmovl_u8(*&a9).u64[0];
        *(v15 + 8) = vmovl_u8(*&a10).u64[0];
        result = (v15 + 16);
        *result = vmovl_u8(a11).u64[0];
        result[1] = vmovl_u8(a12).u64[0];
      }

      else
      {
        LOWORD(a10) = *(v23 + 2);
        a11.i32[0] = *v24;
        a12.i16[0] = *(v24 + 2);
        *v15 = vmovl_u8(*&a9).u64[0];
        *(v15 + 8) = vmovl_u8(*&a10).u32[0];
        *(v15 + 12) = -2147450880;
        result = (v15 + 16);
        *result = vmovl_u8(a11).u64[0];
        *(result + 2) = vmovl_u8(a12).u32[0];
        *(result + 3) = -2147450880;
      }
    }

    else
    {
      LODWORD(a9) = *a6;
      if ((a8 & 2) != 0)
      {
        LOWORD(a10) = *(a6 + 4);
        a11.i32[0] = *v22;
        a12.i16[0] = *(v22 + 4);
        *v15 = -2147450880;
        *(v15 + 4) = vmovl_u8(*&a9).u64[0];
        *(v15 + 12) = vmovl_u8(*&a10).u32[0];
        result = (v15 + 16);
        *result = -2147450880;
        *(result + 4) = vmovl_u8(a11).u64[0];
        *(result + 3) = vmovl_u8(a12).u32[0];
      }

      else
      {
        LODWORD(a10) = *v22;
        *v15 = -2147450880;
        *(v15 + 4) = vmovl_u8(*&a9).u64[0];
        *(v15 + 12) = -2147450880;
        result = (v15 + 16);
        *result = -2147450880;
        *(result + 4) = vmovl_u8(*&a10).u64[0];
        *(result + 3) = -2147450880;
      }
    }
  }

  else
  {
    *v15 = v13;
    *(v15 + 16) = v13;
    return (v15 + 32);
  }

  return result;
}

double sub_2775748E0(uint64_t a1, uint64_t *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a5 - 2;
  v8 = a6 - 2;
  v9 = a1 - 34;
  v10 = *(v7 + 8);
  v11 = *(v7 + a3);
  v12 = *(v7 + a3 + 8);
  *v9 = *v7;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  *(v9 + 24) = v12;
  v13 = v9 + 32;
  do
  {
    v14 = *a4++;
    v15 = *(a2 + 4);
    v16 = *a2;
    a2 = (a2 + a3);
    v17 = __OFSUB__(a7--, 1);
    *v13 = v14;
    *(v13 + 2) = v16;
    *(v13 + 10) = v15;
    v13 += 16;
  }

  while (!((a7 < 0) ^ v17 | (a7 == 0)));
  result = *v8;
  v19 = *(v8 + 8);
  v20 = *(v8 + a3);
  v21 = *(v8 + a3 + 8);
  *v13 = *v8;
  *(v13 + 8) = v19;
  *(v13 + 16) = v20;
  *(v13 + 24) = v21;
  return result;
}