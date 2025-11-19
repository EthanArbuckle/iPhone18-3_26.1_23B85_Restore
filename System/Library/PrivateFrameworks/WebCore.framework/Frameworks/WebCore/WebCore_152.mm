unsigned __int16 *ScaleRowDown2Box_16To8_Odd_C(unsigned __int16 *result, uint64_t a2, char *a3, int a4, unsigned int a5)
{
  v5 = &result[a2];
  v6 = a4 - 3;
  if (a4 < 3)
  {
    v9 = a3;
    v8 = result;
    goto LABEL_12;
  }

  if (v6 >= 0x1E)
  {
    v7 = 0;
    v14 = v6 >> 1;
    v15 = &a3[2 * v14 + 2];
    v16 = &result[4 * v14 + 4];
    v17 = v16 + 2 * a2;
    v19 = v16 > a3 && v15 > result;
    v20 = v5 < v15 && v17 > a3;
    if (!v20 && !v19)
    {
      v21 = v14 + 1;
      v7 = 2 * (v21 & 0xFFFFFFF0);
      v22 = 4 * (v21 & 0xFFFFFFF0);
      v5 = (v5 + v22 * 2);
      v8 = &result[v22];
      v9 = &a3[2 * (v21 & 0xFFFFFFF0)];
      v23 = vdupq_n_s32(a5);
      v24.i64[0] = 0x200000002;
      v24.i64[1] = 0x200000002;
      v25.i64[0] = 0xFF000000FFLL;
      v25.i64[1] = 0xFF000000FFLL;
      v26 = v21 & 0xFFFFFFF0;
      do
      {
        v27 = result;
        v30 = vld4q_s16(v27);
        v27 += 32;
        v33 = vld4q_s16(v27);
        v28 = &result[a2];
        v32 = vld4q_s16(v28);
        v28 += 32;
        v34 = vld4q_s16(v28);
        v29 = vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v30.val[0].i8, *v30.val[1].i8), *v32.val[0].i8), *v32.val[1].i8), v24), 2uLL), v23), 0x10uLL);
        v31.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v30.val[0], v30.val[1]), v32.val[0]), v32.val[1]), v24), 2uLL), v23), 0x10uLL), v25);
        v30.val[0] = vaddw_high_u16(vaddl_high_u16(v30.val[2], v30.val[3]), v32.val[2]);
        v30.val[2] = vaddw_u16(vaddl_u16(*v30.val[2].i8, *v30.val[3].i8), *v32.val[2].i8);
        v31.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v33.val[0], v33.val[1]), v34.val[0]), v34.val[1]), v24), 2uLL), v23), 0x10uLL), v25);
        v31.val[0] = vminq_s32(v29, v25);
        v31.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v33.val[0].i8, *v33.val[1].i8), *v34.val[0].i8), *v34.val[1].i8), v24), 2uLL), v23), 0x10uLL), v25);
        v32.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(v30.val[0], v32.val[3]), v24), 2uLL), v23), 0x10uLL), v25);
        v33.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v33.val[2], v33.val[3]), v34.val[2]), v34.val[3]), v24), 2uLL), v23), 0x10uLL), v25);
        v32.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(v30.val[2], *v32.val[3].i8), v24), 2uLL), v23), 0x10uLL), v25);
        v32.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v33.val[2].i8, *v33.val[3].i8), *v34.val[2].i8), *v34.val[3].i8), v24), 2uLL), v23), 0x10uLL), v25);
        v30.val[0] = vqtbl4q_s8(v31, xmmword_273B8E8C0);
        v30.val[1] = vqtbl4q_s8(v33, xmmword_273B8E8C0);
        vst2q_s8(a3, *v30.val[0].i8);
        a3 += 32;
        result += 64;
        v26 -= 16;
      }

      while (v26);
      if ((v21 & 0xFFFFFFF0) == v21)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = result;
  v9 = a3;
  do
  {
LABEL_5:
    v10 = (((*v8 + v8[1] + *v5 + v5[1] + 2) >> 2) * a5) >> 16;
    if (v10 >= 255)
    {
      LOBYTE(v10) = -1;
    }

    *v9 = v10;
    v11 = (((v8[2] + v8[3] + v5[2] + v5[3] + 2) >> 2) * a5) >> 16;
    if (v11 >= 255)
    {
      LOBYTE(v11) = -1;
    }

    v9[1] = v11;
    v9 += 2;
    v8 += 4;
    v5 += 4;
    v7 += 2;
  }

  while (v7 < a4 - 2);
LABEL_12:
  if ((a4 & 1) == 0)
  {
    v12 = (((*v8 + v8[1] + *v5 + v5[1] + 2) >> 2) * a5) >> 16;
    if (v12 >= 255)
    {
      LOBYTE(v12) = -1;
    }

    *v9++ = v12;
    v8 += 2;
    v5 += 2;
  }

  v13 = (((*v8 + *v5 + 1) >> 1) * a5) >> 16;
  if (v13 >= 255)
  {
    LOBYTE(v13) = -1;
  }

  *v9 = v13;
  return result;
}

char *ScaleRowDown4_C(char *result, uint64_t a2, char *a3, int a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    if (v4 >= 0x20 && ((v5 = v4 >> 1, &result[8 * v5 + 7] <= a3) || &a3[2 * v5] <= result))
    {
      v7 = v5 + 1;
      v8 = v7 & 0xF;
      if ((v7 & 0xF) == 0)
      {
        v8 = 16;
      }

      v9 = v7 - v8;
      v6 = 2 * v9;
      v10 = &result[8 * v9];
      v11 = &a3[2 * v9];
      v12 = result + 66;
      do
      {
        v13.val[0].i8[0] = *(v12 - 64);
        v13.val[0].i8[1] = *(v12 - 56);
        v13.val[0].i8[2] = *(v12 - 48);
        v13.val[0].i8[3] = *(v12 - 40);
        v13.val[0].i8[4] = *(v12 - 32);
        v13.val[0].i8[5] = *(v12 - 24);
        v13.val[0].i8[6] = *(v12 - 16);
        v13.val[0].i8[7] = *(v12 - 8);
        v13.val[0].i8[8] = *v12;
        v13.val[0].i8[9] = v12[8];
        v13.val[0].i8[10] = v12[16];
        v13.val[0].i8[11] = v12[24];
        v13.val[0].i8[12] = v12[32];
        v13.val[0].i8[13] = v12[40];
        v13.val[0].i8[14] = v12[48];
        v13.val[0].i8[15] = v12[56];
        v13.val[1].i8[0] = *(v12 - 60);
        v13.val[1].i8[1] = *(v12 - 52);
        v13.val[1].i8[2] = *(v12 - 44);
        v13.val[1].i8[3] = *(v12 - 36);
        v13.val[1].i8[4] = *(v12 - 28);
        v13.val[1].i8[5] = *(v12 - 20);
        v13.val[1].i8[6] = *(v12 - 12);
        v13.val[1].i8[7] = *(v12 - 4);
        v13.val[1].i8[8] = v12[4];
        v13.val[1].i8[9] = v12[12];
        v13.val[1].i8[10] = v12[20];
        v13.val[1].i8[11] = v12[28];
        v13.val[1].i8[12] = v12[36];
        v13.val[1].i8[13] = v12[44];
        v13.val[1].i8[14] = v12[52];
        v13.val[1].i8[15] = v12[60];
        vst2q_s8(a3, v13);
        a3 += 32;
        v12 += 128;
        v9 -= 16;
      }

      while (v9);
      result = v10;
      a3 = v11;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      *a3 = result[2];
      a3[1] = result[6];
      a3 += 2;
      result += 8;
      v6 += 2;
    }

    while (v6 < a4 - 1);
  }

  if (a4)
  {
    *a3 = result[2];
  }

  return result;
}

unsigned __int16 ScaleRowDown4Box_C@<H0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>)
{
  v4 = 2 * a2;
  if (a4 >= 2)
  {
    v5 = 0;
    v6 = 3 * a2;
    do
    {
      *a3 = (*a1 + a1[1] + a1[2] + a1[3] + a1[a2] + a1[a2 + 1] + a1[a2 + 2] + a1[a2 + 3] + a1[v4] + a1[v4 + 1] + a1[v4 + 2] + a1[v4 + 3] + a1[v6] + a1[v6 + 1] + a1[v6 + 2] + a1[v6 + 3] + 8) >> 4;
      a3[1] = (a1[4] + a1[5] + a1[6] + a1[7] + a1[a2 + 4] + a1[a2 + 5] + a1[a2 + 6] + a1[a2 + 7] + a1[v4 + 4] + a1[v4 + 5] + a1[v4 + 6] + a1[v4 + 7] + a1[v6 + 4] + a1[v6 + 5] + a1[v6 + 6] + a1[v6 + 7] + 8) >> 4;
      a3 += 2;
      a1 += 8;
      v5 += 2;
    }

    while (v5 < a4 - 1);
  }

  if (a4)
  {
    v7.i32[0] = *a1;
    v7.i32[1] = *&a1[a2];
    v7.i32[2] = *&a1[2 * a2];
    v7.i32[3] = *&a1[2 * a2 + a2];
    result = vaddlvq_u8(v7);
    *a3 = (result + 8) >> 4;
  }

  return result;
}

unint64_t ScaleRowDown34_C(unint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    if (a4 < 0x16 || ((v4 = (a4 - 1) / 3uLL, result + 4 * v4 + 4 > a3) ? (v5 = a3 + 3 * v4 + 3 > result) : (v5 = 0), v5))
    {
      v8 = 0;
      v9 = result;
      v10 = a3;
      goto LABEL_10;
    }

    v6 = (v4 + 1);
    if (a4 < 0x5E)
    {
      v7 = 0;
      goto LABEL_16;
    }

    v7 = v6 & 0x7FFFFFE0;
    v11 = result + 64;
    v12 = a3;
    v13 = v7;
    do
    {
      v18 = *(v11 + 32);
      v19 = *v11;
      v20 = *(v11 - 32);
      v21 = *(v11 - 64);
      v22.val[0].i64[0] = vqtbl2q_s8(v21, xmmword_273B92ED0).u64[0];
      v22.val[0].i64[1] = vqtbl2q_s8(v20, xmmword_273BDAD60).i64[1];
      v22.val[1].i64[0] = vqtbl2q_s8(v21, xmmword_273BDAD80).u64[0];
      v22.val[1].i64[1] = vqtbl2q_s8(v20, xmmword_273BDAD70).i64[1];
      v22.val[2].i64[0] = vqtbl2q_s8(v21, xmmword_273BDAF40).u64[0];
      v22.val[2].i64[1] = vqtbl2q_s8(v20, xmmword_273BDAF30).i64[1];
      v14 = v12;
      vst3q_s8(v14, v22);
      v14 += 48;
      v20.val[1].i64[0] = vqtbl2q_s8(v19, xmmword_273B92ED0).u64[0];
      v20.val[1].i64[1] = vqtbl2q_s8(v18, xmmword_273BDAD60).i64[1];
      v21.val[0].i64[0] = vqtbl2q_s8(v19, xmmword_273BDAD80).u64[0];
      v21.val[0].i64[1] = vqtbl2q_s8(v18, xmmword_273BDAD70).i64[1];
      v21.val[1].i64[0] = vqtbl2q_s8(v19, xmmword_273BDAF40).u64[0];
      v21.val[1].i64[1] = vqtbl2q_s8(v18, xmmword_273BDAF30).i64[1];
      vst3q_s8(v14, *v20.val[1].i8);
      v11 += 128;
      v12 += 96;
      v13 -= 32;
    }

    while (v13);
    if (v7 != v6)
    {
      if ((v6 & 0x18) == 0)
      {
        v10 = (a3 + 3 * v7);
        v9 = (result + 4 * v7);
        v8 = 3 * v7;
        goto LABEL_10;
      }

LABEL_16:
      v8 = 3 * (v6 & 0x7FFFFFF8);
      v9 = (result + 4 * (v6 & 0x7FFFFFF8));
      v10 = (a3 + 3 * (v6 & 0x7FFFFFF8));
      v15 = v7 - (v6 & 0x7FFFFFF8);
      v16 = (a3 + 3 * v7);
      v17 = (result + 4 * v7);
      do
      {
        v23 = vld4_s8(v17);
        v17 += 32;
        v23.val[2] = v23.val[3];
        vst3_s8(v16, *v23.val[0].i8);
        v16 += 24;
        v15 += 8;
      }

      while (v15);
      if ((v6 & 0x7FFFFFF8) == v6)
      {
        return result;
      }

      do
      {
LABEL_10:
        *v10 = *v9;
        v10[1] = v9[1];
        v10[2] = v9[3];
        v10 += 3;
        v9 += 4;
        v8 += 3;
      }

      while (v8 < a4);
    }
  }

  return result;
}

unint64_t ScaleRowDown34_0_Box_C(unint64_t result, uint64_t a2, _BYTE *a3, int a4)
{
  if (a4 >= 1)
  {
    v8 = (result + a2);
    if (a4 < 0x16)
    {
      v9 = 0;
LABEL_4:
      v10 = a3;
      v11 = result;
      goto LABEL_5;
    }

    v9 = 0;
    v19 = (a4 - 1) / 3uLL;
    v20 = &a3[3 * v19 + 3];
    v21 = result + 4 * v19 + 4;
    v23 = v21 > a3 && v20 > result;
    v24 = v8 < v20 && v21 + a2 > a3;
    if (v24 || v23)
    {
      goto LABEL_4;
    }

    v25 = (v19 + 1);
    if (a4 >= 0x2E)
    {
      v26 = v25 & 0x7FFFFFF0;
      v65.i64[0] = 0x200000002;
      v65.i64[1] = 0x200000002;
      v66 = a3;
      v67 = v26;
      v68 = result;
      v69.i64[0] = 0x3000300030003;
      v69.i64[1] = 0x3000300030003;
      do
      {
        v70 = &v68[a2];
        v103 = vld4q_s8(v68);
        v68 += 64;
        v102 = vld4q_s8(v70);
        v100 = vmovl_high_u8(v103.val[0]);
        v71 = vmovl_u8(*v103.val[0].i8);
        v72 = vqtbl1q_s8(v103.val[1], xmmword_273B8E7B0);
        v73 = vqtbl1q_s8(v103.val[1], xmmword_273B8E7A0);
        v74 = vqtbl1q_s8(v103.val[1], xmmword_273B8E7D0);
        v75 = vqtbl1q_s8(v103.val[1], xmmword_273B8E7C0);
        v76 = vqtbl1q_s8(v103.val[2], xmmword_273B8E7D0);
        v77 = vqtbl1q_s8(v103.val[2], xmmword_273B8E7C0);
        v78 = vqtbl1q_s8(v103.val[2], xmmword_273B8E7B0);
        v79 = vqtbl1q_s8(v103.val[2], xmmword_273B8E7A0);
        v80 = vmovl_u8(*v103.val[3].i8);
        v103.val[0] = vmovl_high_u8(v103.val[3]);
        v81 = vmlal_high_u16(v79, v103.val[0], v69);
        v82 = vmlal_u16(v78, *v103.val[0].i8, 0x3000300030003);
        v83 = vmlal_high_u16(v77, v80, v69);
        v84 = vmlal_u16(v76, *v80.i8, 0x3000300030003);
        v4 = vmovl_high_u8(v102.val[0]);
        v103.val[3] = vmovl_u8(*v102.val[0].i8);
        v103.val[1] = vqtbl1q_s8(v102.val[1], xmmword_273B8E7B0);
        v103.val[2] = vqtbl1q_s8(v102.val[1], xmmword_273B8E7A0);
        v85 = vqtbl1q_s8(v102.val[1], xmmword_273B8E7D0);
        v86 = vqtbl1q_s8(v102.val[1], xmmword_273B8E7C0);
        v87 = vqtbl1q_s8(v102.val[2], xmmword_273B8E7D0);
        v88 = vqtbl1q_s8(v102.val[2], xmmword_273B8E7C0);
        v89 = vqtbl1q_s8(v102.val[2], xmmword_273B8E7B0);
        v90 = vqtbl1q_s8(v102.val[2], xmmword_273B8E7A0);
        v91 = vmovl_u8(*v102.val[3].i8);
        v102.val[3] = vmovl_high_u8(v102.val[3]);
        v102.val[0] = vmlal_high_u16(v90, v102.val[3], v69);
        v102.val[1] = vmlal_u16(v89, *v102.val[3].i8, 0x3000300030003);
        v102.val[3] = vmlal_high_u16(v88, v91, v69);
        v102.val[2] = vmlal_u16(v87, *v91.i8, 0x3000300030003);
        v92.i64[0] = 0x300000003;
        v92.i64[1] = 0x300000003;
        v93 = vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v81, v65), 2uLL), v92), vaddq_s32(v102.val[0], v65), 2uLL);
        v94 = vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v84, v65), 2uLL), v92), vaddq_s32(v102.val[2], v65), 2uLL);
        v102.val[2] = vshrq_n_u32(vaddq_s32(v93, v65), 2uLL);
        v102.val[1] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v82, v65), 2uLL), v92), vaddq_s32(v102.val[1], v65), 2uLL), v65), 2uLL);
        v102.val[0] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v83, v65), 2uLL), v92), vaddq_s32(v102.val[3], v65), 2uLL), v65), 2uLL);
        v95 = vshrq_n_u32(vaddq_s32(v94, v65), 2uLL);
        v96 = vmlal_u16(vrhaddq_u32(v86, v88), vmovn_s32(vrhaddq_u32(v75, v77)), 0x3000300030003);
        v97 = vmlal_u16(vrhaddq_u32(v85, v87), vmovn_s32(vrhaddq_u32(v74, v76)), 0x3000300030003);
        v98 = vmlal_u16(vrhaddq_u32(v103.val[2], v90), vmovn_s32(vrhaddq_u32(v73, v79)), 0x3000300030003);
        v101.val[2] = vqtbl4q_s8(v102, xmmword_273B8E8C0);
        v99 = vmlal_u16(vrhaddq_u32(v103.val[1], v89), vmovn_s32(vrhaddq_u32(v72, v78)), 0x3000300030003);
        v6 = vmlal_u16(v85, *v103.val[3].i8, 0x3000300030003);
        v5 = vmlal_u16(v103.val[1], *v4.i8, 0x3000300030003);
        v101.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(v97, v96), 2uLL), vuzp1q_s16(v99, v98), 2uLL);
        v101.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_u16(v74, *v71.i8, 0x3000300030003), v65), 2uLL), v92), vaddq_s32(v6, v65), 2uLL), vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v75, v71, v69), v65), 2uLL), v92), vaddq_s32(vmlal_high_u16(v86, v103.val[3], v69), v65), 2uLL)), 2uLL), vuzp1q_s16(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_u16(v72, *v100.i8, 0x3000300030003), v65), 2uLL), v92), vaddq_s32(v5, v65), 2uLL), vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v73, v100, v69), v65), 2uLL), v92), vaddq_s32(vmlal_high_u16(v103.val[2], v4, v69), v65), 2uLL)), 2uLL);
        vst3q_s8(v66, v101);
        v66 += 48;
        v67 -= 16;
      }

      while (v67);
      if (v26 == v25)
      {
        return result;
      }

      if ((v25 & 8) == 0)
      {
        v9 = 3 * v26;
        v8 += 4 * v26;
        v11 = (result + 4 * v26);
        v10 = &a3[3 * v26];
        do
        {
LABEL_5:
          v12 = v11[1];
          v13 = (v12 + 3 * *v11 + 2) >> 2;
          v14 = v11[2];
          v15 = (v12 + v14 + 1) >> 1;
          v16 = (v14 + 3 * v11[3] + 2) >> 2;
          v17 = v8[1];
          v18 = v8[2];
          result = 3 * v8[3];
          *v10 = (3 * v13 + ((v17 + 3 * *v8 + 2) >> 2) + 2) >> 2;
          v10[1] = (3 * v15 + ((v17 + v18 + 1) >> 1) + 2) >> 2;
          v10[2] = (3 * v16 + ((v18 + result + 2) >> 2) + 2) >> 2;
          v10 += 3;
          v11 += 4;
          v8 += 4;
          v9 += 3;
        }

        while (v9 < a4);
        return result;
      }
    }

    else
    {
      v26 = 0;
    }

    v10 = &a3[3 * (v25 & 0x7FFFFFF8)];
    v27 = 4 * (v25 & 0x7FFFFFF8);
    v11 = (result + v27);
    v8 += v27;
    v9 = 3 * (v25 & 0x7FFFFFF8);
    v28 = &a3[3 * v26];
    v29 = v26 - (v25 & 0x7FFFFFF8);
    v30.i64[0] = 0x300000003;
    v30.i64[1] = 0x300000003;
    v31.i64[0] = 0x3000300030003;
    v31.i64[1] = 0x3000300030003;
    v32.i64[0] = 0x200000002;
    v32.i64[1] = 0x200000002;
    v33 = (result + 4 * v26);
    do
    {
      v34 = &v33[a2];
      *(&v4 - 8) = vld4_s8(v33);
      v33 += 32;
      v36 = vmovl_u8(v35);
      *(&v6 - 8) = vld4_s8(v34);
      v37 = vqtbl1q_s8(v4, xmmword_273B8E7D0);
      v38 = vqtbl1q_s8(v4, xmmword_273B8E7C0);
      v39 = vqtbl1q_s8(v5, xmmword_273B8E7D0);
      v40 = vqtbl1q_s8(v5, xmmword_273B8E7C0);
      v42 = vmovl_u8(v41);
      v43 = vrhaddq_u32(v38, v40);
      v44 = vmlal_high_u16(v40, v42, v31);
      v45 = vrhaddq_u32(v37, v39);
      v46 = vaddq_s32(vmlal_u16(v39, *v42.i8, 0x3000300030003), v32);
      v47 = vshrq_n_u32(vaddq_s32(v44, v32), 2uLL);
      v49 = vmovl_u8(v48);
      v50 = vqtbl1q_s8(v6, xmmword_273B8E7D0);
      v51 = vqtbl1q_s8(v6, xmmword_273B8E7C0);
      v52 = vqtbl1q_s8(v7, xmmword_273B8E7D0);
      v53 = vqtbl1q_s8(v7, xmmword_273B8E7C0);
      v55 = vmovl_u8(v54);
      v56 = vmlal_u16(vrhaddq_u32(v51, v53), vmovn_s32(v43), 0x3000300030003);
      v57 = vmlal_u16(vrhaddq_u32(v50, v52), vmovn_s32(v45), 0x3000300030003);
      v4 = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(v47, v30), vaddq_s32(vmlal_high_u16(v53, v55, v31), v32), 2uLL), v32), 2uLL);
      v58 = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(v46, 2uLL), v30), vaddq_s32(vmlal_u16(v52, *v55.i8, 0x3000300030003), v32), 2uLL), v32), 2uLL);
      v5 = vaddq_s32(v56, v32);
      v59 = vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_u16(v37, *v36.i8, 0x3000300030003), v32), 2uLL), v30), vaddq_s32(vmlal_u16(v50, *v49.i8, 0x3000300030003), v32), 2uLL), v32);
      v60 = vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v38, v36, v31), v32), 2uLL), v30), vaddq_s32(vmlal_high_u16(v51, v49, v31), v32), 2uLL), v32);
      v6 = vqtbl2q_s8(*(&v4 - 1), xmmword_273B92ED0);
      v61 = vshrq_n_u32(v5, 2uLL);
      v62 = vshrq_n_u32(vaddq_s32(v57, v32), 2uLL);
      v63 = vshrq_n_u32(v60, 2uLL);
      v7 = vshrq_n_u32(v59, 2uLL);
      v64 = vqtbl4q_s8(*v7.i8, xmmword_273B8E8C0);
      v55.i64[0] = vextq_s8(v64, v64, 8uLL).u64[0];
      vst3_s8(v28, *(&v6 - 1));
      v28 += 24;
      v29 += 8;
    }

    while (v29);
    if ((v25 & 0x7FFFFFF8) != v25)
    {
      goto LABEL_5;
    }
  }

  return result;
}

unint64_t ScaleRowDown34_1_Box_C(unint64_t result, uint64_t a2, _BYTE *a3, int a4)
{
  if (a4 >= 1)
  {
    v8 = (result + a2);
    if (a4 < 0x16)
    {
      v9 = 0;
LABEL_4:
      v10 = a3;
      v11 = result;
      goto LABEL_5;
    }

    v9 = 0;
    v19 = (a4 - 1) / 3uLL;
    v20 = &a3[3 * v19 + 3];
    v21 = result + 4 * v19 + 4;
    v23 = v21 > a3 && v20 > result;
    v24 = v8 < v20 && v21 + a2 > a3;
    if (v24 || v23)
    {
      goto LABEL_4;
    }

    v25 = (v19 + 1);
    if (a4 >= 0x2E)
    {
      v26 = v25 & 0x7FFFFFF0;
      v62.i64[0] = 0x200000002;
      v62.i64[1] = 0x200000002;
      v63 = a3;
      v64 = v26;
      v65 = result;
      v66.i64[0] = 0x3000300030003;
      v66.i64[1] = 0x3000300030003;
      do
      {
        v67 = &v65[a2];
        v94 = vld4q_s8(v65);
        v65 += 64;
        v90 = vmovl_u8(*v94.val[0].i8);
        v68 = vmovl_high_u8(v94.val[0]);
        v69 = vqtbl1q_s8(v94.val[1], xmmword_273B8E7C0);
        v70 = vqtbl1q_s8(v94.val[1], xmmword_273B8E7D0);
        v71 = vqtbl1q_s8(v94.val[1], xmmword_273B8E7A0);
        v72 = vqtbl1q_s8(v94.val[1], xmmword_273B8E7B0);
        v73 = vqtbl1q_s8(v94.val[2], xmmword_273B8E7A0);
        v74 = vqtbl1q_s8(v94.val[2], xmmword_273B8E7B0);
        v75 = vqtbl1q_s8(v94.val[2], xmmword_273B8E7C0);
        v76 = vqtbl1q_s8(v94.val[2], xmmword_273B8E7D0);
        v77 = vmovl_high_u8(v94.val[3]);
        v78 = vmovl_u8(*v94.val[3].i8);
        v93 = vld4q_s8(v67);
        v79 = vshrq_n_u32(vaddq_s32(vmlal_u16(v74, *v77.i8, 0x3000300030003), v62), 2uLL);
        v80 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v73, v77, v66), v62), 2uLL);
        v6 = vmovl_u8(*v93.val[0].i8);
        v94.val[2] = vmovl_high_u8(v93.val[0]);
        v94.val[1] = vqtbl1q_s8(v93.val[1], xmmword_273B8E7C0);
        v94.val[3] = vqtbl1q_s8(v93.val[1], xmmword_273B8E7D0);
        v81 = vqtbl1q_s8(v93.val[1], xmmword_273B8E7A0);
        v82 = vqtbl1q_s8(v93.val[1], xmmword_273B8E7B0);
        v83 = vqtbl1q_s8(v93.val[2], xmmword_273B8E7A0);
        v84 = vqtbl1q_s8(v93.val[2], xmmword_273B8E7B0);
        v85 = vqtbl1q_s8(v93.val[2], xmmword_273B8E7C0);
        v86 = vqtbl1q_s8(v93.val[2], xmmword_273B8E7D0);
        v87 = vmovl_high_u8(v93.val[3]);
        v93.val[0] = vmovl_u8(*v93.val[3].i8);
        v88 = vrhaddq_u32(v80, vshrq_n_u32(vaddq_s32(vmlal_high_u16(v83, v87, v66), v62), 2uLL));
        v89 = vrhaddq_u32(v79, vshrq_n_u32(vaddq_s32(vmlal_u16(v84, *v87.i8, 0x3000300030003), v62), 2uLL));
        v93.val[3] = vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v75, v78, v66), v62), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_high_u16(v85, v93.val[0], v66), v62), 2uLL));
        v93.val[2] = vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_u16(v76, *v78.i8, 0x3000300030003), v62), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_u16(v86, *v93.val[0].i8, 0x3000300030003), v62), 2uLL));
        v92.val[2] = vqtbl4q_s8(*(&v93 + 32), xmmword_273B8E8C0);
        v92.val[1] = vuzp1q_s8(vuzp1q_s16(vrhaddq_u32(vrhaddq_u32(v70, v76), vrhaddq_u32(v94.val[3], v86)), vrhaddq_u32(vrhaddq_u32(v69, v75), vrhaddq_u32(v94.val[1], v85))), vuzp1q_s16(vrhaddq_u32(vrhaddq_u32(v72, v74), vrhaddq_u32(v82, v84)), vrhaddq_u32(vrhaddq_u32(v71, v73), vrhaddq_u32(v81, v83))));
        v5 = vmlal_u16(v72, *v68.i8, 0x3000300030003);
        v4 = vmlal_high_u16(v69, v90, v66);
        v7 = vmlal_high_u16(v94.val[1], v6, v66);
        v92.val[0] = vuzp1q_s8(vuzp1q_s16(vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_u16(v70, *v90.i8, 0x3000300030003), v62), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_u16(v94.val[3], *v6.i8, 0x3000300030003), v62), 2uLL)), vrhaddq_u32(vshrq_n_u32(vaddq_s32(v4, v62), 2uLL), vshrq_n_u32(vaddq_s32(v7, v62), 2uLL))), vuzp1q_s16(vrhaddq_u32(vshrq_n_u32(vaddq_s32(v5, v62), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_u16(v82, *v94.val[2].i8, 0x3000300030003), v62), 2uLL)), vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v71, v68, v66), v62), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_high_u16(v81, v94.val[2], v66), v62), 2uLL))));
        vst3q_s8(v63, v92);
        v63 += 48;
        v64 -= 16;
      }

      while (v64);
      if (v26 == v25)
      {
        return result;
      }

      if ((v25 & 8) == 0)
      {
        v9 = 3 * v26;
        v8 += 4 * v26;
        v11 = (result + 4 * v26);
        v10 = &a3[3 * v26];
        do
        {
LABEL_5:
          v12 = v11[1];
          v13 = (v12 + 3 * *v11 + 2) >> 2;
          v14 = v11[2];
          v15 = (v12 + v14 + 1) >> 1;
          v16 = (v14 + 3 * v11[3] + 2) >> 2;
          v17 = v8[1];
          v18 = v8[2];
          result = 3 * v8[3];
          *v10 = (v13 + ((v17 + 3 * *v8 + 2) >> 2) + 1) >> 1;
          v10[1] = (v15 + ((v17 + v18 + 1) >> 1) + 1) >> 1;
          v10[2] = (v16 + ((v18 + result + 2) >> 2) + 1) >> 1;
          v10 += 3;
          v11 += 4;
          v8 += 4;
          v9 += 3;
        }

        while (v9 < a4);
        return result;
      }
    }

    else
    {
      v26 = 0;
    }

    v10 = &a3[3 * (v25 & 0x7FFFFFF8)];
    v27 = 4 * (v25 & 0x7FFFFFF8);
    v11 = (result + v27);
    v8 += v27;
    v9 = 3 * (v25 & 0x7FFFFFF8);
    v28 = &a3[3 * v26];
    v29 = v26 - (v25 & 0x7FFFFFF8);
    v30.i64[0] = 0x3000300030003;
    v30.i64[1] = 0x3000300030003;
    v31.i64[0] = 0x200000002;
    v31.i64[1] = 0x200000002;
    v32 = (result + 4 * v26);
    do
    {
      v33 = &v32[a2];
      *(&v4 - 8) = vld4_s8(v32);
      v32 += 32;
      v35 = vmovl_u8(v34);
      v36 = vqtbl1q_s8(v4, xmmword_273B8E7C0);
      v37 = vqtbl1q_s8(v4, xmmword_273B8E7D0);
      v38 = vqtbl1q_s8(v5, xmmword_273B8E7C0);
      v39 = vqtbl1q_s8(v5, xmmword_273B8E7D0);
      v41 = vmovl_u8(v40);
      v4 = vrhaddq_u32(v37, v39);
      v42 = vrhaddq_u32(v36, v38);
      *(&v6 - 8) = vld4_s8(v33);
      v43 = vshrq_n_u32(vaddq_s32(vmlal_u16(v39, *v41.i8, 0x3000300030003), v31), 2uLL);
      v44 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v38, v41, v30), v31), 2uLL);
      v46 = vmovl_u8(v45);
      v47 = vqtbl1q_s8(v6, xmmword_273B8E7C0);
      v48 = vqtbl1q_s8(v6, xmmword_273B8E7D0);
      v49 = vqtbl1q_s8(v7, xmmword_273B8E7C0);
      v50 = vqtbl1q_s8(v7, xmmword_273B8E7D0);
      v52 = vmovl_u8(v51);
      v6 = vrhaddq_u32(v48, v50);
      v7 = vrhaddq_u32(v47, v49);
      v53 = vshrq_n_u32(vaddq_s32(vmlal_u16(v50, *v52.i8, 0x3000300030003), v31), 2uLL);
      v91.val[1] = vrhaddq_u32(v44, vshrq_n_u32(vaddq_s32(vmlal_high_u16(v49, v52, v30), v31), 2uLL));
      v91.val[0] = vrhaddq_u32(v43, v53);
      v54 = vqtbl2q_s8(v91, xmmword_273B92ED0).u64[0];
      v55 = vmlal_u16(v37, *v35.i8, 0x3000300030003);
      v56 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v36, v35, v30), v31), 2uLL);
      v57 = vshrq_n_u32(vaddq_s32(vmlal_u16(v48, *v46.i8, 0x3000300030003), v31), 2uLL);
      v58 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v47, v46, v30), v31), 2uLL);
      v59 = vrhaddq_u32(v42, v7);
      v60 = vrhaddq_u32(v4, v6);
      v61 = vrhaddq_u32(v56, v58);
      v5 = vrhaddq_u32(vshrq_n_u32(vaddq_s32(v55, v31), 2uLL), v57);
      v91.val[0] = vqtbl4q_s8(*v5.i8, xmmword_273B8E8C0);
      v91.val[1].i64[0] = vextq_s8(v91.val[0], v91.val[0], 8uLL).u64[0];
      vst3_s8(v28, *v91.val[0].i8);
      v28 += 24;
      v29 += 8;
    }

    while (v29);
    if ((v25 & 0x7FFFFFF8) != v25)
    {
      goto LABEL_5;
    }
  }

  return result;
}

_BYTE *ScaleCols_C(_BYTE *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 >= 2)
  {
    v5 = 0;
    do
    {
      *result = *(a2 + (a4 >> 16));
      result[1] = *(a2 + ((a4 + a5) >> 16));
      a4 += a5 + a5;
      result += 2;
      v5 += 2;
    }

    while (v5 < a3 - 1);
  }

  if (a3)
  {
    *result = *(a2 + (a4 >> 16));
  }

  return result;
}

unint64_t ScaleColsUp2_C(unint64_t result, unint64_t a2, int a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    v9 = a2;
    v7 = result;
  }

  else
  {
    if (v3 < 0x3E || ((v4 = v3 >> 1, a2 + v4 + 1 > result) ? (v5 = result + 2 * v4 + 2 > a2) : (v5 = 0), v5))
    {
      v8 = 0;
      v7 = result;
      v9 = a2;
    }

    else
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v6 & 0xFFFFFFE0));
      v8 = 2 * (v6 & 0xFFFFFFE0);
      v9 = (a2 + (v6 & 0xFFFFFFE0));
      v10 = (a2 + 16);
      v11 = (result + 32);
      v12 = v6 & 0xFFFFFFE0;
      do
      {
        v13 = v11 - 32;
        v15.val[0] = v10[-1];
        v16.val[0] = *v10;
        v15.val[1] = v15.val[0];
        vst2q_s8(v13, v15);
        v16.val[1] = v16.val[0];
        vst2q_s8(v11, v16);
        v10 += 2;
        v11 += 64;
        v12 -= 32;
      }

      while (v12);
      if ((v6 & 0xFFFFFFE0) == v6)
      {
        goto LABEL_14;
      }
    }

    do
    {
      v14 = *v9++;
      *v7 = v14;
      v7[1] = v14;
      v7 += 2;
      v8 += 2;
    }

    while (v8 < a3 - 1);
  }

LABEL_14:
  if (a3)
  {
    *v7 = *v9;
  }

  return result;
}

_BYTE *ScaleFilterCols_C(_BYTE *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 >= 2)
  {
    v5 = 0;
    do
    {
      *result = *(a2 + (a4 >> 16)) + (((*(a2 + (a4 >> 16) + 1) - *(a2 + (a4 >> 16))) * a4 + 0x8000) >> 16);
      result[1] = *(a2 + ((a4 + a5) >> 16)) + (((*(a2 + ((a4 + a5) >> 16) + 1) - *(a2 + ((a4 + a5) >> 16))) * (a4 + a5) + 0x8000) >> 16);
      a4 += a5 + a5;
      result += 2;
      v5 += 2;
    }

    while (v5 < a3 - 1);
  }

  if (a3)
  {
    *result = *(a2 + (a4 >> 16)) + (((*(a2 + (a4 >> 16) + 1) - *(a2 + (a4 >> 16))) * a4 + 0x8000) >> 16);
  }

  return result;
}

_BYTE *ScaleFilterCols64_C(_BYTE *result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a4;
  if (a3 >= 2)
  {
    v6 = 0;
    do
    {
      *result = *(a2 + (v5 >> 16)) + (((*(a2 + (v5 >> 16) + 1) - *(a2 + (v5 >> 16))) * v5 + 0x8000) >> 16);
      result[1] = *(a2 + ((v5 + a5) >> 16)) + (((*(a2 + ((v5 + a5) >> 16) + 1) - *(a2 + ((v5 + a5) >> 16))) * (a5 + v5) + 0x8000) >> 16);
      v5 += a5 + a5;
      result += 2;
      v6 += 2;
    }

    while (v6 < a3 - 1);
  }

  if (a3)
  {
    *result = *(a2 + (v5 >> 16)) + (((*(a2 + (v5 >> 16) + 1) - *(a2 + (v5 >> 16))) * v5 + 0x8000) >> 16);
  }

  return result;
}

char *ScaleRowDown38_C(char *result, uint64_t a2, char *a3, int a4)
{
  if (a4 >= 1)
  {
    if (a4 < 0x19)
    {
      v4 = 0;
      goto LABEL_23;
    }

    v5 = (a4 - 1) / 3uLL;
    if (&result[8 * v5 + 7] > a3 && &a3[3 * v5 + 3] > result)
    {
      v4 = 0;
    }

    else
    {
      v7 = (v5 + 1);
      if (a4 < 0x31)
      {
        v8 = 0;
LABEL_17:
        if (((v5 + 1) & 7) != 0)
        {
          v15 = (v5 + 1) & 7;
        }

        else
        {
          v15 = 8;
        }

        v16 = v7 - v15;
        v4 = 3 * (v7 - v15);
        v17 = &result[8 * v16];
        v18 = &a3[3 * v16];
        v19 = &result[8 * v8];
        v20 = ~(((a4 - 1) * 0x5555555555555556uLL) >> 64) + v8 + v15;
        v21 = &a3[3 * v8];
        do
        {
          v22 = *(v19 + 1);
          v23 = *v19;
          v19 += 64;
          v28.val[0].i32[0] = vqtbl2q_s8(v23, xmmword_273B92E80).u32[0];
          v28.val[0].i32[1] = vqtbl2q_s8(v22, xmmword_273B92E70).i32[1];
          v28.val[1].i32[0] = vqtbl2q_s8(v23, xmmword_273BDAE20).u32[0];
          v28.val[1].i32[1] = vqtbl2q_s8(v22, xmmword_273BDAE10).i32[1];
          v28.val[2].i32[0] = vqtbl2q_s8(v23, xmmword_273BDAE00).u32[0];
          v28.val[2].i32[1] = vqtbl2q_s8(v22, xmmword_273BDADF0).i32[1];
          vst3_s8(v21, v28);
          v21 += 24;
          v20 += 8;
        }

        while (v20);
        result = v17;
        a3 = v18;
        goto LABEL_23;
      }

      v9 = 16;
      if (((v5 + 1) & 0xF) != 0)
      {
        v9 = (v5 + 1) & 0xF;
      }

      v8 = v7 - v9;
      v10 = a3;
      v11 = v7 - v9;
      v12 = result;
      do
      {
        v24 = *(v12 + 3);
        v25 = *(v12 + 2);
        v26 = *(v12 + 1);
        v27 = *v12;
        v12 += 128;
        v13 = vqtbl2q_s8(v25, xmmword_273B92E60);
        v13.i32[3] = vqtbl2q_s8(v24, xmmword_273B92E50).i32[3];
        v29.val[0].i32[0] = vqtbl2q_s8(v27, xmmword_273B92E80).u32[0];
        v29.val[0].i32[1] = vqtbl2q_s8(v26, xmmword_273B92E70).i32[1];
        v14 = vqtbl2q_s8(v25, xmmword_273BDAE80);
        v14.i32[3] = vqtbl2q_s8(v24, xmmword_273BDAE70).i32[3];
        v29.val[0].i64[1] = v13.i64[1];
        v29.val[1].i32[0] = vqtbl2q_s8(v27, xmmword_273BDAE20).u32[0];
        v29.val[1].i32[1] = vqtbl2q_s8(v26, xmmword_273BDAE10).i32[1];
        v24.val[0] = vqtbl2q_s8(v24, xmmword_273BDAED0);
        v24.val[1] = vqtbl2q_s8(v25, xmmword_273BDAEE0);
        v24.val[1].i32[3] = v24.val[0].i32[3];
        v29.val[1].i64[1] = v14.i64[1];
        v29.val[2].i32[0] = vqtbl2q_s8(v27, xmmword_273BDAE00).u32[0];
        v29.val[2].i32[1] = vqtbl2q_s8(v26, xmmword_273BDADF0).i32[1];
        v29.val[2].i64[1] = v24.val[1].i64[1];
        vst3q_s8(v10, v29);
        v10 += 48;
        v11 -= 16;
      }

      while (v11);
      if (v9 >= 9)
      {
        goto LABEL_17;
      }

      a3 += 3 * v8;
      result += 8 * v8;
      v4 = 3 * v8;
    }

    do
    {
LABEL_23:
      *a3 = *result;
      a3[1] = result[3];
      a3[2] = result[6];
      a3 += 3;
      result += 8;
      v4 += 3;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t ScaleRowDown38_3_Box_C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = (result + 3);
    v6 = (result + 3 + 2 * a2);
    v7 = (result + 3 + a2);
    do
    {
      v8 = (a3 + v4);
      *v8 = (7281 * (*(v5 - 2) + *(v5 - 3) + *(v5 - 1) + *(v7 - 3) + *(v7 - 2) + *(v7 - 1) + *(v6 - 3) + *(v6 - 2) + *(v6 - 1))) >> 16;
      v8[1] = (7281 * (v5[1] + *v5 + v5[2] + *v7 + v7[1] + v7[2] + *v6 + v6[1] + v6[2])) >> 16;
      v4 += 3;
      v8[2] = (10922 * (v5[4] + v5[3] + v7[3] + v7[4] + v6[3] + v6[4])) >> 16;
      v6 += 8;
      v7 += 8;
      v5 += 8;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t ScaleRowDown38_2_Box_C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = (result + 3);
    v6 = (result + 3 + a2);
    do
    {
      v7 = (a3 + v4);
      *v7 = (10922 * (*(v5 - 2) + *(v5 - 3) + *(v5 - 1) + *(v6 - 3) + *(v6 - 2) + *(v6 - 1))) >> 16;
      v7[1] = (10922 * (v5[1] + *v5 + v5[2] + *v6 + v6[1] + v6[2])) >> 16;
      v7[2] = (v5[4] + v5[3] + v6[3] + v6[4]) >> 2;
      v4 += 3;
      v6 += 8;
      v5 += 8;
    }

    while (v4 < a4);
  }

  return result;
}

uint8x16_t *ScaleAddRow_C(uint8x16_t *result, uint16x8_t *a2, int a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    v7 = a2;
    v6 = result;
  }

  else
  {
    if (v3 >= 0x1E && ((v4 = v3 >> 1, &result->i16[v4 + 1] <= a2) || a2->i64 + 4 * v4 + 4 <= result))
    {
      v8 = v4 + 1;
      v5 = 2 * (v8 & 0xFFFFFFF0);
      v6 = (result + 2 * (v8 & 0xFFFFFFF0));
      v7 = (a2 + 4 * (v8 & 0xFFFFFFF0));
      v9 = v8 & 0xFFFFFFF0;
      do
      {
        v10 = *result;
        v11 = result[1];
        result += 2;
        v12 = vaddw_u8(*a2, *v10.i8);
        v13 = vaddw_u8(a2[2], *v11.i8);
        v14 = vaddw_high_u8(a2[1], v10);
        v15 = vaddw_high_u8(a2[3], v11);
        a2[2] = v13;
        a2[3] = v15;
        *a2 = v12;
        a2[1] = v14;
        a2 += 4;
        v9 -= 16;
      }

      while (v9);
      if ((v8 & 0xFFFFFFF0) == v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0;
      v6 = result;
      v7 = a2;
    }

    do
    {
      v7->i16[0] += v6->u8[0];
      v7->i16[1] += v6->u8[1];
      v6 = (v6 + 2);
      v7 = (v7 + 4);
      v5 += 2;
    }

    while (v5 < a3 - 1);
  }

LABEL_9:
  if (a3)
  {
    v7->i16[0] += v6->u8[0];
  }

  return result;
}

uint64_t ScaleARGBRowDown2_C(uint64_t result, uint64_t a2, _DWORD *a3, int a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    if (v4 >= 0x18 && ((v5 = v4 >> 1, result + 16 * v5 + 16 <= a3) || result + 4 >= &a3[2 * v5 + 2]))
    {
      v7 = v5 + 1;
      v8 = v7 & 7;
      if ((v7 & 7) == 0)
      {
        v8 = 8;
      }

      v9 = v7 - v8;
      v6 = 2 * v9;
      v10 = &a3[2 * v9];
      v11 = result + 16 * v9;
      v12 = (result + 68);
      v13 = (a3 + 8);
      do
      {
        v14 = v12 - 16;
        v15 = vld2q_f32(v14);
        v16 = v12 - 8;
        v17 = vld2q_f32(v16);
        v18 = v12 + 32;
        v20 = vld2q_f32(v12);
        v19 = v12 + 8;
        v21 = vld2q_f32(v19);
        *(v13 - 2) = v15;
        *(v13 - 1) = v17;
        *v13 = v20;
        v13[1] = v21;
        v13 += 4;
        v12 = v18;
        v9 -= 8;
      }

      while (v9);
      a3 = v10;
      result = v11;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      *a3 = *(result + 4);
      a3[1] = *(result + 12);
      result += 16;
      a3 += 2;
      v6 += 2;
    }

    while (v6 < a4 - 1);
  }

  if (a4)
  {
    *a3 = *(result + 4);
  }

  return result;
}

unint64_t ScaleARGBRowDown2Linear_C(unint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = a4 - 1;
  if (a4 >= 1)
  {
    if (a4 < 8 || result + 8 * v4 + 8 > a3 && a3 + 4 * v4 + 4 > result)
    {
      LODWORD(v5) = 0;
      v6 = result;
      v7 = a3;
      goto LABEL_6;
    }

    if (a4 >= 0x10)
    {
      v9 = a4 & 0x7FFFFFF0;
      v22 = v9;
      v23 = result;
      v24 = a3;
      do
      {
        v38 = *(v23 + 96);
        v37 = *(v23 + 64);
        v36 = *(v23 + 32);
        v39 = *v23;
        v23 += 128;
        v25 = vqtbl2q_s8(v37, xmmword_273B92E60);
        v25.i32[3] = vqtbl2q_s8(v38, xmmword_273B92E50).i32[3];
        v26.i32[0] = vqtbl2q_s8(v39, xmmword_273B92E80).u32[0];
        v26.i32[1] = vqtbl2q_s8(v36, xmmword_273B92E70).i32[1];
        v26.i64[1] = v25.i64[1];
        v27 = vqtbl2q_s8(v37, xmmword_273B92EA0);
        v27.i32[3] = vqtbl2q_s8(v38, xmmword_273B92E90).i32[3];
        v25.i32[0] = vqtbl2q_s8(v39, xmmword_273B92EC0).u32[0];
        v25.i32[1] = vqtbl2q_s8(v36, xmmword_273B92EB0).i32[1];
        v25.i64[1] = v27.i64[1];
        v28 = vqtbl2q_s8(v37, xmmword_273BDAE60);
        v28.i32[3] = vqtbl2q_s8(v38, xmmword_273BDAE50).i32[3];
        v29.i32[0] = vqtbl2q_s8(v39, xmmword_273BDADA0).u32[0];
        v29.i32[1] = vqtbl2q_s8(v36, xmmword_273BDAD90).i32[1];
        v29.i64[1] = v28.i64[1];
        v30 = vqtbl2q_s8(v37, xmmword_273BDAE80);
        v30.i32[3] = vqtbl2q_s8(v38, xmmword_273BDAE70).i32[3];
        v31 = vqtbl2q_s8(v37, xmmword_273BDAEA0);
        v31.i32[3] = vqtbl2q_s8(v38, xmmword_273BDAE90).i32[3];
        v32.i32[0] = vqtbl2q_s8(v39, xmmword_273BDADC0).u32[0];
        v32.i32[1] = vqtbl2q_s8(v36, xmmword_273BDADB0).i32[1];
        v32.i64[1] = v31.i64[1];
        v33 = vqtbl2q_s8(v37, xmmword_273BDAEC0);
        v33.i32[3] = vqtbl2q_s8(v38, xmmword_273BDAEB0).i32[3];
        v34.i32[0] = vqtbl2q_s8(v39, xmmword_273BDADE0).u32[0];
        v34.i32[1] = vqtbl2q_s8(v36, xmmword_273BDADD0).i32[1];
        v34.i64[1] = v33.i64[1];
        v35 = vqtbl2q_s8(v37, xmmword_273BDAEE0);
        v35.i32[3] = vqtbl2q_s8(v38, xmmword_273BDAED0).i32[3];
        v42.val[0] = vrhaddq_u8(v26, v32);
        v42.val[1] = vrhaddq_u8(v25, v34);
        v25.i32[0] = vqtbl2q_s8(v39, xmmword_273BDAE00).u32[0];
        v25.i32[1] = vqtbl2q_s8(v36, xmmword_273BDADF0).i32[1];
        v25.i64[1] = v35.i64[1];
        v42.val[2] = vrhaddq_u8(v29, v25);
        v25.i32[0] = vqtbl2q_s8(v39, xmmword_273BDAE20).u32[0];
        v25.i32[1] = vqtbl2q_s8(v36, xmmword_273BDAE10).i32[1];
        v25.i64[1] = v30.i64[1];
        v37.val[0] = vqtbl2q_s8(v37, xmmword_273BDAF00);
        v37.val[0].i32[3] = vqtbl2q_s8(v38, xmmword_273BDAEF0).i32[3];
        v36.val[0].i64[0] = vqtbl2q_s8(v36, xmmword_273BDAE30).u64[0];
        v36.val[1].i32[0] = vqtbl2q_s8(v39, xmmword_273BDAE40).u32[0];
        v36.val[1].i32[1] = v36.val[0].i32[1];
        v36.val[1].i64[1] = v37.val[0].i64[1];
        v42.val[3] = vrhaddq_u8(v25, v36.val[1]);
        vst4q_s8(v24, v42);
        v24 += 64;
        v22 -= 16;
      }

      while (v22);
      if (v9 == a4)
      {
        return result;
      }

      if ((a4 & 8) == 0)
      {
        v7 = (a3 + 4 * v9);
        LODWORD(v5) = a4 & 0x7FFFFFF0;
        v6 = (result + 8 * v9);
LABEL_6:
        v8 = a4 - v5;
        do
        {
          *v7 = (*v6 + v6[4] + 1) >> 1;
          v7[1] = (v6[1] + v6[5] + 1) >> 1;
          v7[2] = (v6[2] + v6[6] + 1) >> 1;
          v7[3] = (v6[3] + v6[7] + 1) >> 1;
          v6 += 8;
          v7 += 4;
          --v8;
        }

        while (v8);
        return result;
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = a4 & 0x7FFFFFF8;
    v6 = (result + 8 * v5);
    v7 = (a3 + 4 * v5);
    v10 = v9 - v5;
    v11 = (a3 + 4 * v9);
    v12 = result + 8 * v9;
    do
    {
      v40 = *(v12 + 32);
      v41 = *v12;
      v12 += 64;
      v13.i32[0] = vqtbl2q_s8(v41, xmmword_273B92E80).u32[0];
      v13.i32[1] = vqtbl2q_s8(v40, xmmword_273B92E70).i32[1];
      v14.i32[0] = vqtbl2q_s8(v41, xmmword_273B92EC0).u32[0];
      v14.i32[1] = vqtbl2q_s8(v40, xmmword_273B92EB0).i32[1];
      v15.i32[0] = vqtbl2q_s8(v41, xmmword_273BDADA0).u32[0];
      v15.i32[1] = vqtbl2q_s8(v40, xmmword_273BDAD90).i32[1];
      v16.i32[0] = vqtbl2q_s8(v41, xmmword_273BDAE20).u32[0];
      v16.i32[1] = vqtbl2q_s8(v40, xmmword_273BDAE10).i32[1];
      v17.i32[0] = vqtbl2q_s8(v41, xmmword_273BDADC0).u32[0];
      v17.i32[1] = vqtbl2q_s8(v40, xmmword_273BDADB0).i32[1];
      v18.i32[0] = vqtbl2q_s8(v41, xmmword_273BDADE0).u32[0];
      v18.i32[1] = vqtbl2q_s8(v40, xmmword_273BDADD0).i32[1];
      v19.i32[0] = vqtbl2q_s8(v41, xmmword_273BDAE00).u32[0];
      v19.i32[1] = vqtbl2q_s8(v40, xmmword_273BDADF0).i32[1];
      v40.val[0] = vqtbl2q_s8(v40, xmmword_273BDAE30);
      v40.val[1].i32[0] = vqtbl2q_s8(v41, xmmword_273BDAE40).u32[0];
      v40.val[1].i32[1] = v40.val[0].i32[1];
      *v41.val[0].i8 = vrhadd_u8(v13, v17);
      *v41.val[1].i8 = vrhadd_u8(v14, v18);
      v20 = vrhadd_u8(v15, v19);
      v21 = vrhadd_u8(v16, *v40.val[1].i8);
      vst4_s8(v11, v41);
      v11 += 32;
      v10 += 8;
    }

    while (v10);
    if (v5 != a4)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t ScaleARGBRowDown2Box_C(uint64_t result, uint64_t a2, _BYTE *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = (result + 3);
    v5 = (result + 3 + a2);
    do
    {
      *a3 = (*(v4 - 3) + v4[1] + *(v5 - 3) + v5[1] + 2) >> 2;
      a3[1] = (*(v4 - 2) + v4[2] + *(v5 - 2) + v5[2] + 2) >> 2;
      a3[2] = (*(v4 - 1) + v4[3] + *(v5 - 1) + v5[3] + 2) >> 2;
      a3[3] = (*v4 + v4[4] + *v5 + v5[4] + 2) >> 2;
      a3 += 4;
      v5 += 8;
      v4 += 8;
      --a4;
    }

    while (a4);
  }

  return result;
}

_DWORD *ScaleARGBRowDownEven_C(_DWORD *result, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  if (a5 >= 2)
  {
    v5 = 0;
    do
    {
      *a4 = *result;
      a4[1] = result[a3];
      a4 += 2;
      v5 += 2;
      result += 2 * a3;
    }

    while (v5 < a5 - 1);
  }

  if (a5)
  {
    *a4 = *result;
  }

  return result;
}

unsigned __int8 *ScaleARGBRowDownEvenBox_C(unsigned __int8 *result, uint64_t a2, int a3, _BYTE *a4, int a5)
{
  if (a5 >= 1)
  {
    do
    {
      *a4 = (*result + result[4] + result[a2] + result[a2 + 4] + 2) >> 2;
      a4[1] = (result[1] + result[5] + result[a2 + 1] + result[a2 + 5] + 2) >> 2;
      a4[2] = (result[2] + result[6] + result[a2 + 2] + result[a2 + 6] + 2) >> 2;
      a4[3] = (result[3] + result[7] + result[a2 + 3] + result[a2 + 7] + 2) >> 2;
      result += 4 * a3;
      a4 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

_DWORD *ScaleARGBCols_C(_DWORD *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 >= 2)
  {
    v5 = 0;
    do
    {
      *result = *(a2 + 4 * (a4 >> 16));
      result[1] = *(a2 + 4 * ((a4 + a5) >> 16));
      a4 += a5 + a5;
      result += 2;
      v5 += 2;
    }

    while (v5 < a3 - 1);
  }

  if (a3)
  {
    *result = *(a2 + 4 * (a4 >> 16));
  }

  return result;
}

_DWORD *ScaleARGBCols64_C(_DWORD *result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a4;
  if (a3 >= 2)
  {
    v6 = 0;
    do
    {
      *result = *(a2 + 4 * (v5 >> 16));
      v7 = v5 + a5;
      result[1] = *(a2 + 4 * (v7 >> 16));
      v5 = v7 + a5;
      result += 2;
      v6 += 2;
    }

    while (v6 < a3 - 1);
  }

  if (a3)
  {
    *result = *(a2 + 4 * (v5 >> 16));
  }

  return result;
}

unint64_t ScaleARGBColsUp2_C(unint64_t result, unint64_t a2, int a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    v7 = a2;
    v6 = result;
  }

  else
  {
    if (v3 >= 0x16 && ((v4 = v3 >> 1, a2 + 4 * v4 + 4 <= result) || result + 8 * v4 + 8 <= a2))
    {
      v9 = v4 + 1;
      v5 = 2 * (v9 & 0xFFFFFFF8);
      v6 = (result + 8 * (v9 & 0xFFFFFFF8));
      v7 = (a2 + 4 * (v9 & 0xFFFFFFF8));
      v10 = (a2 + 16);
      v11 = (result + 32);
      v12 = v9 & 0xFFFFFFF8;
      do
      {
        v13 = v11 - 8;
        v14.val[0] = v10[-1];
        v15.val[0] = *v10;
        v14.val[1] = v14.val[0];
        vst2q_f32(v13, v14);
        v15.val[1] = v15.val[0];
        vst2q_f32(v11, v15);
        v10 += 2;
        v11 += 16;
        v12 -= 8;
      }

      while (v12);
      if ((v9 & 0xFFFFFFF8) == v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0;
      v6 = result;
      v7 = a2;
    }

    do
    {
      v8 = *v7++;
      *v6 = v8;
      v6[1] = v8;
      v6 += 2;
      v5 += 2;
    }

    while (v5 < a3 - 1);
  }

LABEL_9:
  if (a3)
  {
    *v6 = *v7;
  }

  return result;
}

unsigned int *ScaleARGBFilterCols_C(unsigned int *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 >= 2)
  {
    v5 = 0;
    do
    {
      v6 = a4 >> 9;
      v7 = (a2 + 4 * (a4 >> 16));
      v8 = *v7;
      LODWORD(v7) = v7[1];
      *result = ((v8 * (v6 ^ 0x7F) + v7 * v6) >> 7) & 0xFFFFFF | (((HIBYTE(v8) * (v6 ^ 0x7F) + (v7 >> 24) * v6) >> 7) << 24) | ((BYTE2(v8) * (v6 ^ 0x7F) + BYTE2(v7) * v6) << 9) & 0x1FF0000 | (2 * (BYTE1(v8) * (v6 ^ 0x7F) + BYTE1(v7) * v6)) & 0x1FF00;
      v9 = (a4 + a5) >> 9;
      v10 = (a2 + 4 * ((a4 + a5) >> 16));
      v11 = *v10;
      LODWORD(v10) = v10[1];
      v12 = v9 ^ 0x7F;
      result[1] = ((v11 * v12 + v10 * v9) >> 7) & 0xFFFFFF | (((HIBYTE(v11) * v12 + (v10 >> 24) * v9) >> 7) << 24) | ((BYTE2(v11) * v12 + BYTE2(v10) * v9) << 9) & 0x1FF0000 | (2 * (BYTE1(v11) * v12 + BYTE1(v10) * v9)) & 0x1FF00;
      a4 += a5 + a5;
      result += 2;
      v5 += 2;
    }

    while (v5 < a3 - 1);
  }

  if (a3)
  {
    v13 = a4 >> 9;
    v14 = (a2 + 4 * (a4 >> 16));
    v15 = *v14;
    LODWORD(v14) = v14[1];
    v16 = v13 ^ 0x7F;
    *result = ((v15 * v16 + v14 * v13) >> 7) & 0xFFFFFF | (((HIBYTE(v15) * v16 + (v14 >> 24) * v13) >> 7) << 24) | ((BYTE2(v15) * v16 + BYTE2(v14) * v13) << 9) & 0x1FF0000 | (2 * (BYTE1(v15) * v16 + BYTE1(v14) * v13)) & 0x1FF00;
  }

  return result;
}

unsigned int *ScaleARGBFilterCols64_C(unsigned int *result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a4;
  if (a3 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = v5 >> 9;
      v8 = (a2 + 4 * (v5 >> 16));
      v9 = *v8;
      LODWORD(v8) = v8[1];
      *result = ((v9 * (v7 ^ 0x7F) + v8 * v7) >> 7) & 0xFFFFFF | (((HIBYTE(v9) * (v7 ^ 0x7F) + (v8 >> 24) * v7) >> 7) << 24) | ((BYTE2(v9) * (v7 ^ 0x7F) + BYTE2(v8) * v7) << 9) & 0x1FF0000 | (2 * (BYTE1(v9) * (v7 ^ 0x7F) + BYTE1(v8) * v7)) & 0x1FF00;
      v10 = v5 + a5;
      v11 = (a5 + v5) >> 9;
      v12 = (a2 + 4 * (v10 >> 16));
      v13 = *v12;
      LODWORD(v12) = v12[1];
      v14 = v11 ^ 0x7F;
      result[1] = ((v13 * v14 + v12 * v11) >> 7) & 0xFFFFFF | (((HIBYTE(v13) * v14 + (v12 >> 24) * v11) >> 7) << 24) | ((BYTE2(v13) * v14 + BYTE2(v12) * v11) << 9) & 0x1FF0000 | (2 * (BYTE1(v13) * v14 + BYTE1(v12) * v11)) & 0x1FF00;
      v5 = v10 + a5;
      result += 2;
      v6 += 2;
    }

    while (v6 < a3 - 1);
  }

  if (a3)
  {
    v15 = v5 >> 9;
    v16 = (a2 + 4 * (v5 >> 16));
    v17 = *v16;
    LODWORD(v16) = v16[1];
    v18 = v15 ^ 0x7F;
    *result = ((v17 * v18 + v16 * v15) >> 7) & 0xFFFFFF | (((HIBYTE(v17) * v18 + (v16 >> 24) * v15) >> 7) << 24) | ((BYTE2(v17) * v18 + BYTE2(v16) * v15) << 9) & 0x1FF0000 | (2 * (BYTE1(v17) * v18 + BYTE1(v16) * v15)) & 0x1FF00;
  }

  return result;
}

uint64_t ScalePlaneVertical(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, int8x16_t *a7, int a8, int a9, int a10, int a11, int a12)
{
  v17 = (a11 * a2);
  if (result <= 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = (result << 16) - 65537;
  }

  v19 = cpu_info_;
  v28 = a4;
  v20 = (a11 * a2);
  if (!cpu_info_)
  {
    result = AArch64CpuCaps();
    v17 = v20;
    a4 = v28;
    v19 = result | 3;
    cpu_info_ = result | 3;
  }

  v21 = InterpolateRow_Any_NEON;
  if ((v17 & 0xF) == 0)
  {
    v21 = InterpolateRow_NEON;
  }

  if ((v19 & 0x100) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = InterpolateRow_C;
  }

  if (a3 >= 1)
  {
    v24 = a6 + (a8 >> 16) * a11;
    v25 = a4;
    if (a12)
    {
      do
      {
        if (a9 >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = a9;
        }

        result = v22(a7, (v24 + (v26 >> 16) * a4), v25, v17, BYTE1(v26));
        v17 = v20;
        a4 = v28;
        a7 = (a7 + a5);
        a9 = v26 + a10;
        --a3;
      }

      while (a3);
    }

    else
    {
      do
      {
        if (a9 >= v18)
        {
          v27 = v18;
        }

        else
        {
          v27 = a9;
        }

        result = v22(a7, (v24 + (v27 >> 16) * a4), v25, v17, 0);
        v17 = v20;
        a4 = v28;
        a7 = (a7 + a5);
        a9 = v27 + a10;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t ScalePlaneVertical_16To8(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, unint64_t a7, int a8, int a9, int a10, int a11, unsigned int a12, int a13)
{
  if (result <= 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = (result << 16) - 65537;
  }

  v20 = cpu_info_;
  v33 = a4;
  if (!cpu_info_)
  {
    result = AArch64CpuCaps();
    a4 = v33;
    v20 = result | 3;
    cpu_info_ = result | 3;
  }

  v21 = InterpolateRow_16To8_Any_NEON;
  if ((a2 & 7) == 0)
  {
    v21 = InterpolateRow_16To8_NEON;
  }

  if ((v20 & 0x100) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = InterpolateRow_16To8_C;
  }

  if (a3 >= 1)
  {
    v23 = a12;
    v24 = (a11 * a2);
    v25 = a6 + 2 * (a8 >> 16) * a11;
    v27 = a4;
    v28 = a5;
    v32 = v22;
    v29 = v25;
    if (a13)
    {
      do
      {
        if (a9 >= v19)
        {
          v30 = v19;
        }

        else
        {
          v30 = a9;
        }

        result = v32(a7, (v25 + 2 * (v30 >> 16) * a4), v27, v23, v24, BYTE1(v30));
        v25 = v29;
        v23 = a12;
        a4 = v33;
        a7 += v28;
        a9 = v30 + a10;
        --a3;
      }

      while (a3);
    }

    else
    {
      do
      {
        if (a9 >= v19)
        {
          v31 = v19;
        }

        else
        {
          v31 = a9;
        }

        result = v32(a7, (v25 + 2 * (v31 >> 16) * a4), v27, v23, v24, 0);
        v25 = v29;
        v23 = a12;
        a4 = v33;
        a7 += v28;
        a9 = v31 + a10;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t ScaleSlope(uint64_t result, int a2, int a3, int a4, int a5, unsigned int *a6, _DWORD *a7, int *a8, int *a9)
{
  if (a3 != 1 || result <= 0x7FFF)
  {
    v10 = a3;
  }

  else
  {
    v10 = result;
  }

  if (a4 != 1 || a2 <= 0x7FFF)
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  if (result >= 0)
  {
    v13 = result;
  }

  else
  {
    v13 = -result;
  }

  switch(a5)
  {
    case 1:
      if (v10 <= v13)
      {
        v21 = (v13 << 16) / v10;
        *a8 = v21;
        v15 = (v21 >> 1) - 0x8000;
        if (v21 < 0)
        {
          v15 = 0x8000 - (-v21 >> 1);
        }
      }

      else
      {
        if (result < 2 || v10 < 2)
        {
LABEL_52:
          v22 = (a2 << 16) / v12;
          *a9 = v22;
          *a7 = v22 >> 1;
          if ((result & 0x80000000) == 0)
          {
            return result;
          }

          goto LABEL_53;
        }

        v15 = 0;
        *a8 = ((v13 << 16) - 65537) / (v10 - 1);
      }

      *a6 = v15;
      goto LABEL_52;
    case 2:
      if (v10 <= v13)
      {
        v18 = (v13 << 16) / v10;
        *a8 = v18;
        v14 = (v18 >> 1) - 0x8000;
        if (v18 < 0)
        {
          v14 = 0x8000 - (-v18 >> 1);
        }
      }

      else
      {
        if (result < 2 || v10 < 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        *a8 = ((v13 << 16) - 65537) / (v10 - 1);
      }

      *a6 = v14;
LABEL_40:
      if (v12 <= a2)
      {
        v19 = (a2 << 16) / v12;
        *a9 = v19;
        if (v19 < 0)
        {
          v20 = 0x8000 - (-v19 >> 1);
        }

        else
        {
          v20 = (v19 >> 1) - 0x8000;
        }

        *a7 = v20;
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_53;
        }

        return result;
      }

      if (a2 >= 2)
      {
        *a9 = ((a2 << 16) - 65537) / (v12 - 1);
        *a7 = 0;
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_53;
        }

        return result;
      }

      if ((result & 0x80000000) == 0)
      {
        return result;
      }

LABEL_53:
      *a6 += *a8 * (v10 - 1);
      *a8 = -*a8;
      return result;
    case 3:
      *a8 = (v13 << 16) / v10;
      *a9 = (a2 << 16) / v12;
      *a6 = 0;
      *a7 = 0;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      break;
    default:
      *a8 = (v13 << 16) / v10;
      *a9 = (a2 << 16) / v12;
      if (*a8 < 0)
      {
        v16 = -(-*a8 >> 1);
      }

      else
      {
        v16 = *a8 >> 1;
      }

      *a6 = v16;
      if (*a9 < 0)
      {
        v17 = -(-*a9 >> 1);
      }

      else
      {
        v17 = *a9 >> 1;
      }

      *a7 = v17;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      break;
  }

  return result;
}

uint64_t aom_arm_cpu_caps()
{
  v0 = getenv("AOM_SIMD_CAPS");
  if (v0 && *v0)
  {
    v1 = strtol(v0, 0, 0);
  }

  else
  {
    v2 = getenv("AOM_SIMD_CAPS_MASK");
    if (v2 && *v2)
    {
      v1 = strtol(v2, 0, 0) & 1;
    }

    else
    {
      v1 = 1;
    }
  }

  v3 = v1 & 0xFFFFFFF3;
  if ((v1 & 4) != 0)
  {
    v3 = v1;
  }

  if ((v3 & 4) == 0)
  {
    v3 &= 0xFFFFFFEB;
  }

  if ((v3 & 8) == 0)
  {
    v3 &= 0xFFFFFFE7;
  }

  if ((v3 & 0x10) != 0)
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFFCF;
  }
}

void av1_init_mb_wiener_var_buffer(uint64_t a1)
{
  v2 = (a1 + 638032);
  *(a1 + 638064) = 3;
  v3 = *(a1 + 638032);
  if (*(a1 + 265648))
  {
    if (!v3 || !*(a1 + 638040))
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 638048);
  }

  if (v3)
  {
    return;
  }

LABEL_7:
  v4 = (a1 + 456808);
  v5 = *(a1 + 456812) * *(a1 + 456808);
  if (v5 <= 0x9249248 && (v6 = 56 * v5, (v7 = malloc_type_malloc(v6 + 23, 0x5F484EBFuLL)) != 0) && (v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF0, *(v8 - 8) = v7, v8))
  {
    bzero(((v7 + 23) & 0xFFFFFFFFFFFFFFF0), v6);
    *v2 = v8;
    if (!*(a1 + 265648))
    {
      return;
    }
  }

  else
  {
    *v2 = 0;
    aom_internal_error(*(a1 + 239104), 2, "Failed to allocate cpi->mb_weber_stats");
    if (!*(a1 + 265648))
    {
      return;
    }
  }

  if ((*(a1 + 456812) * *(a1 + 456808)) <= 0x7FFFFFFA)
  {
    v9 = 4 * (v4[1] * *v4);
    v10 = malloc_type_malloc(v9 + 23, 0x5F484EBFuLL);
    if (v10)
    {
      v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v11 - 8) = v10;
      if (v11)
      {
        bzero(((v10 + 23) & 0xFFFFFFFFFFFFFFF0), v9);
        v2[1] = v11;
        v12 = *(a1 + 456812) * *(a1 + 456808);
        if (v12 > 0x3FFFFFFD)
        {
          goto LABEL_22;
        }

LABEL_19:
        v13 = 8 * v12;
        v14 = malloc_type_malloc(v13 + 23, 0x5F484EBFuLL);
        if (v14)
        {
          v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v15 - 8) = v14;
          if (v15)
          {
            bzero(((v14 + 23) & 0xFFFFFFFFFFFFFFF0), v13);
            v2[2] = v15;
            return;
          }
        }

        goto LABEL_22;
      }
    }
  }

  v2[1] = 0;
  aom_internal_error(*(a1 + 239104), 2, "Failed to allocate cpi->prep_rate_estimates");
  v12 = *(a1 + 456812) * *(a1 + 456808);
  if (v12 <= 0x3FFFFFFD)
  {
    goto LABEL_19;
  }

LABEL_22:
  v16 = *(a1 + 239104);
  v2[2] = 0;

  aom_internal_error(v16, 2, "Failed to allocate cpi->ext_rate_distribution");
}

uint64_t av1_calc_mb_wiener_var_row(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint16x8_t *a5, int32x4_t *a6, int32x4_t *a7, int32x4_t *a8, double a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, __n128 a14, int32x4_t a15, double *a16, unint64_t *a17, int8x16_t *a18)
{
  v18 = a3;
  v210 = *MEMORY[0x277D85DE8];
  v197 = result + 263736;
  v19 = *(result + 265688);
  v183 = result;
  v20 = *(v19 + 40);
  v199 = *(v19 + 32);
  v21.i64[0] = 0;
  memset(v209, 0, sizeof(v209));
  v204 = v209;
  *(a3 + 7864) = &v204;
  v172 = (result + 239008);
  v22 = *(result + 239592);
  v23 = v22 + 8;
  if (v22 < -8)
  {
    v23 = v22 + 23;
  }

  if (v22 >= 1)
  {
    v25 = a4;
    v26 = 0;
    v174 = 0;
    v27 = 0;
    v169 = (v18 + 10632);
    v158 = a17;
    v157 = a16;
    v28 = (v18 + 5400);
    v173 = result + 627680;
    v176 = (result + 638032);
    v29 = *(result + 638064);
    v30 = max_txsize_lookup_0[v29];
    v31 = tx_size_wide[v30];
    v32 = mi_size_wide[v29];
    v193 = *(v18 + 10656);
    v161 = *result;
    HIDWORD(v156) = v23 >> 4;
    v182 = v29;
    v166 = 0x20005uLL >> v29;
    v167 = 0x3EFFFCuLL >> v29;
    v165 = (v32 - 1) & a4;
    v164 = v20 + 4 * a4 * v199;
    v175 = (&av1_scan_orders + 32 * v30);
    HIDWORD(v163) = ((0x61E18uLL >> v30) & 1) + ((0x1810uLL >> v30) & 1);
    v160 = v18 + 10692;
    v159 = 0x61810uLL >> v30;
    v154 = 0x18608uLL >> v30;
    v198 = v30;
    v150 = (0x60604uLL >> v30) & 1;
    v188 = a4 / v32;
    v33 = (v31 * v31);
    LODWORD(v163) = -32 * a4;
    LODWORD(v156) = a4 - 1;
    v186 = 4 * v32;
    v162 = v31;
    if (v31 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v31;
    }

    v181 = v34;
    v191 = v33 - 16;
    v178 = (v31 * v31);
    v153 = v33 - 1;
    v155 = (v33 - 1) & 0xFFFFFFFFFFFFFFF8;
    v190 = a6 + 7;
    v151 = a7[1].i64 + 4;
    v152 = v155 | 1;
    v184 = mi_size_wide[v29];
    v170 = *(result + 239592);
    v196 = v18;
    v168 = (v18 + 5400);
    do
    {
      if ((v27 & 0xF) == 0)
      {
        v36 = v27;
        (*(v173 + 416))(v161 + 85032, v188, v174);
        v27 = v36;
        v37 = *(v173 + 48);
        if (v37 >= *v173)
        {
          v37 = *v173;
        }

        if (v37 >= 2)
        {
          pthread_mutex_lock(*(v173 + 368));
          v38 = *(v173 + 366);
          v32 = v184;
          result = pthread_mutex_unlock(*(v173 + 368));
          v27 = v36;
          if (v38)
          {
            break;
          }
        }
      }

      v39 = mi_size_high[v182];
      v40 = *v172;
      v41 = *(v172 + 3);
      v42 = *(v172 + 157);
      v43 = v27 + v42 * v25;
      v44 = mi_size_wide[*(v172 + 608)];
      v45 = v25 / v44;
      v46 = v27 / v44;
      v47 = (v172[77] + 8 * v43);
      *v47 = v172[74] + 176 * (v46 + v45 * *(v172 + 151));
      *(v18 + 7864) = v47;
      *(v18 + 7912) = v172[79] + v43;
      *(v18 + 7920) = v42;
      *(a2 + 16760) = v40 + 84 * (v46 + v45 * v41);
      if ((v39 + v25) >= *(v172 + 145))
      {
        v48 = *(v172 + 145);
      }

      else
      {
        v48 = v39 + v25;
      }

      v49 = v27 + v32;
      if ((v27 + v32) >= *(v172 + 146))
      {
        v50 = *(v172 + 146);
      }

      else
      {
        v50 = v27 + v32;
      }

      v51 = *(v18 + 7840);
      v52 = *(v18 + 7848);
      *(v18 + 7932) = v163;
      *(v18 + 7936) = 32 * (v48 - (v39 + v25));
      *(v18 + 7924) = -32 * v27;
      *(v18 + 7928) = 32 * (v50 - v49);
      *v18 = v25;
      *(v18 + 4) = v27;
      v53 = v51 < v25;
      v28[2472] = v53;
      v54 = *(v18 + 2628);
      v55 = *(v18 + 2632);
      v56 = v52 < v27;
      v28[2473] = v56;
      v28[2474] = v53;
      if (!(v167 & 1 | (v54 == 0)))
      {
        v56 = v27 - 1 > v52;
      }

      v28[2475] = v56;
      if ((v166 & 1) != 0 && v55)
      {
        v53 = v156 > v51;
        v28[2474] = v53;
      }

      if (v51 >= v25)
      {
        v57 = v169;
        *(v18 + 7888) = 0;
        if (v52 >= v27)
        {
LABEL_29:
          *(v18 + 7880) = 0;
          if (v25)
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v57 = v169;
        *(v18 + 7888) = v47[-*(v18 + 8)];
        if (v52 >= v27)
        {
          goto LABEL_29;
        }
      }

      *(v18 + 7880) = *(v47 - 1);
      if (v25)
      {
        goto LABEL_37;
      }

LABEL_33:
      if ((v39 & 1) != 0 && v55)
      {
        *(v18 + 12) = 0;
        v28[2909] = v39;
        v28[2908] = v32;
        *v57 = 0;
        if (v32 >= v39)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

LABEL_37:
      if (v32 & 1) == 0 || (v27)
      {
        *(v18 + 12) = 1;
      }

      else
      {
        *(v18 + 12) = v54 == 0;
        if (v54)
        {
          v28[2909] = v39;
          v28[2908] = v32;
          *v57 = 0;
          if (v32 >= v39)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }
      }

      v58 = *(v18 + 8);
      v59 = &v47[-(v54 & v27) - v58 * (v55 & v25)];
      if (v53)
      {
        *(v18 + 7904) = v59[v54 - v58];
        if (!v56)
        {
          goto LABEL_45;
        }
      }

      else
      {
        *(v18 + 7904) = 0;
        if (!v56)
        {
LABEL_45:
          *(v18 + 7896) = 0;
          v28[2909] = v39;
          v28[2908] = v32;
          *v57 = 0;
          if (v32 >= v39)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }
      }

      *(v18 + 7896) = v59[v58 * v55 - 1];
      v28[2909] = v39;
      v28[2908] = v32;
      *v57 = 0;
      if (v32 >= v39)
      {
        goto LABEL_51;
      }

LABEL_49:
      if (((v39 - 1) & v49) == 0)
      {
        *v57 = 1;
      }

LABEL_51:
      v61 = v32 > v39 && v165 == 0;
      v57[1] = v61;
      v62 = 4 * v39;
      v63 = *(*v197 + 77);
      v64 = (v186 >> *(v18 + 20));
      v65 = (v62 >> *(v18 + 24));
      if (v64 <= 4)
      {
        LOBYTE(v64) = 4;
      }

      *(v18 + 184) = v64;
      if (v65 <= 4)
      {
        v66 = 4;
      }

      else
      {
        v66 = v65;
      }

      *(v18 + 185) = v66;
      if (v63)
      {
        v67 = *v47;
        *v67 = v182;
        v67[24] = 0;
        if (v51 < v25)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v68 = (v186 >> *(v18 + 2628));
        v69 = (v62 >> *(v18 + 2632));
        if (v68 <= 4)
        {
          LOBYTE(v68) = 4;
        }

        *(v18 + 2792) = v68;
        if (v69 <= 4)
        {
          v70 = 4;
        }

        else
        {
          v70 = v69;
        }

        *(v18 + 2793) = v70;
        v71 = (v186 >> *(v18 + 5236));
        v72 = (v62 >> *(v18 + 5240));
        if (v71 <= 4)
        {
          LOBYTE(v71) = 4;
        }

        *v28 = v71;
        if (v72 <= 4)
        {
          LOBYTE(v72) = 4;
        }

        v28[1] = v72;
        v73 = *v47;
        *v73 = v182;
        v73[24] = 0;
        if (v51 < v25)
        {
LABEL_64:
          *(v18 + 7888) = 0;
          if (v52 >= v27)
          {
            goto LABEL_78;
          }

LABEL_77:
          *(v18 + 7880) = 0;
          goto LABEL_78;
        }
      }

      if (v52 < v27)
      {
        goto LABEL_77;
      }

LABEL_78:
      v185 = v27 + v32;
      v74 = 0;
      v75 = 0;
      v180 = v26;
      v179 = v27;
      v195 = (v164 + (4 * v27));
      v76 = 0x7FFFFFFF;
      v192 = v164 + v26;
      do
      {
        av1_predict_intra_block(v196, *(*v197 + 28), *(*v197 + 61), v162, v162, v198, v75, 0, *v21.i64, a10, *a11.i64, *a12.i64, *a13.i64, a14.n128_u64[0], a15, 0, 5u, v195, v199, a18, 128, 0, 0, 0);
        aom_subtract_block_neon(v162, v162, a5, v162, v195, v199, a18, 128);
        *&v200 = 0;
        BYTE1(v200) = v198;
        *(&v200 + 1) = v193;
        *&v201 = 5;
        if (v193 == 8)
        {
          (lowbd_fwd_txfm_func_ls[v198])(a5, a6, v162, 0, 8);
        }

        else
        {
          av1_highbd_fwd_txfm(a5, a6, v162, &v200, v79);
        }

        a12 = a6[3];
        a11 = vabsq_s32(a6[2]);
        v80 = vaddq_s32(vabsq_s32(a6[1]), vabsq_s32(*a6));
        a10 = vaddq_s32(vabsq_s32(a12), a11);
        v81 = v191;
        if (v191)
        {
          v82 = v190;
          v77 = v192;
          do
          {
            a12 = v82[-2];
            a13 = v82[-1];
            a14 = *v82;
            v80 = vaddq_s32(vaddq_s32(vabsq_s32(v82[-3]), v80), vabsq_s32(a13));
            a11 = vabsq_s32(*v82);
            a10 = vaddq_s32(vaddq_s32(vabsq_s32(a12), a10), a11);
            v82 += 4;
            v81 -= 16;
          }

          while (v81);
        }

        else
        {
          v77 = v192;
        }

        v21 = vaddq_s32(v80, a10);
        v21.i32[0] = vaddvq_s32(v21);
        if (v21.i32[0] < v76)
        {
          v76 = v21.i32[0];
          v74 = v75;
        }

        v78 = v75++;
      }

      while (v78 < 0xC);
      v83 = v162;
      av1_predict_intra_block(v196, *(*v197 + 28), *(*v197 + 61), v83, v83, v198, v74, 0, *v21.i64, a10, *a11.i64, *a12.i64, *a13.i64, a14.n128_u64[0], a15, 0, 5u, v195, v199, a18, 128, 0, 0, 0);
      aom_subtract_block_neon(v83, v83, a5, v83, v195, v199, a18, 128);
      *&v200 = 0;
      BYTE1(v200) = v198;
      *(&v200 + 1) = v193;
      *&v201 = 5;
      if (v193 == 8)
      {
        (lowbd_fwd_txfm_func_ls[v198])(a5, a6, v162, 0, 8);
      }

      else
      {
        av1_highbd_fwd_txfm(a5, a6, v162, &v200, v84);
      }

      v85 = a7;
      v203 = 0;
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      v86 = 1 << num_pels_log2_lookup_0[txsize_to_bsize_0[v198]];
      LODWORD(v200) = HIDWORD(v163);
      BYTE4(v200) = v198;
      v87 = v86;
      v201 = 0uLL;
      *(&v200 + 1) = 0;
      av1_quantize_fp_facade(a6, v86, a2, a7, a8, &v203, v175, &v200, 0);
      v90 = v203;
      v91 = v179 / v184;
      v28 = v168;
      v92 = v181;
      v18 = v196;
      v93 = v185;
      if (*(v197 + 1912))
      {
        if (v203)
        {
          v94 = *v175;
          v95 = 1;
          v96 = v203;
          v97 = v203;
          do
          {
            v98 = *v94++;
            v99 = v85->i32[v98];
            v100 = v99 == 0;
            if (v99 < 0)
            {
              v99 = -v99;
            }

            if (v100)
            {
              v101 = v95;
            }

            else
            {
              v101 = v95 + 1;
            }

            v102 = v101 + (log1p(v99) / 0.693147181);
            v85 = a7;
            v95 = v102 + 1;
            --v97;
          }

          while (v97);
          v103 = v95 << 9;
          v18 = v196;
          v92 = v181;
          v93 = v185;
          v90 = v96;
        }

        else
        {
          v103 = 512;
        }

        *(v176[1] + 4 * (v91 + *(v183 + 456812) * v188)) = v103;
      }

      v25 = a4;
      if (v90)
      {
        v205 = 0;
        v206 = 0;
        BYTE1(v205) = v198;
        v207 = 0;
        v208 = v90;
        v104 = **(v18 + 7864);
        v105 = *(v104 + 167);
        v106 = *(v160 + 4 * (v105 & 7));
        v107 = *(v18 + 10656);
        HIDWORD(v205) = v106;
        LODWORD(v206) = v107;
        if ((v105 & 0x80) != 0)
        {
          v108 = 1;
          if ((v159 & 1) == 0)
          {
            goto LABEL_110;
          }

LABEL_108:
          LOBYTE(v108) = 0;
        }

        else
        {
          v108 = *(v104 + 16) > 0;
          if (v159)
          {
            goto LABEL_108;
          }

LABEL_110:
          if ((v154 & 1) == 0)
          {
            LOBYTE(v108) = av1_ext_tx_set_lookup_5[2 * v108 + v150];
          }
        }

        LOBYTE(v207) = v108;
        if (v106)
        {
          av1_inv_txfm_add_c(a8, a18, 128);
        }

        else
        {
          av1_lowbd_inv_txfm2d_add_neon(a8, a18, 128, 0, v198, v90, v88, v89, v144, v145, v146, __b, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
        }

        v92 = v181;
      }

      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = *v176 + 56 * (v91 + *(v183 + 456812) * v188);
      *(v116 + 24) = 65537;
      *(v116 + 8) = 0;
      *(v116 + 16) = 0;
      *(v116 + 32) = 0;
      v117 = 1;
      v118 = a18;
      LOWORD(result) = 1;
      do
      {
        v119 = v77;
        v120 = v118;
        v121 = v92;
        do
        {
          v123 = *v119++;
          v122 = v123;
          v125 = v120->u8[0];
          v120 = (v120 + 1);
          v124 = v125;
          v115 += v122;
          v114 += v125;
          v126 = v122 - v125;
          v113 += (v122 - v125);
          v112 += (v122 * v122);
          v111 += v124 * v124;
          *(v116 + 8) = v112;
          *(v116 + 16) = v111;
          if (result <= v122)
          {
            result = v122;
          }

          else
          {
            result = result;
          }

          *(v116 + 24) = result;
          if (v117 <= v124)
          {
            v117 = v124;
          }

          *(v116 + 26) = v117;
          v110 += (v126 * v126);
          *(v116 + 32) = v110;
          --v121;
        }

        while (v121);
        ++v109;
        v118 += 8;
        v77 += v199;
      }

      while (v109 != v92);
      if (*(v197 + 1767) == 1)
      {
        *v157 = *v157 + v110;
        if (*(v183 + 389568))
        {
          v127 = *(*(a2 + 128) + 2) >> 3;
          if (v127 <= 119)
          {
            v128 = (v110 * (280 - v127)) >> 7;
            if (v128 >= 0x7FFFFFFF)
            {
              LODWORD(v128) = 0x7FFFFFFF;
            }

            goto LABEL_136;
          }
        }

        else if (v110)
        {
          v129 = *(*(a2 + 128) + 2) >> 3;
          v130 = num_pels_log2_lookup_0[v182];
          v128 = (((v129 * v129) << (v130 + 10)) + (v110 >> 1)) / v110;
          if (v128 >= 0x3BFDF)
          {
            LODWORD(v128) = 245727;
          }

          v131 = (v128 >> 2) + 8;
          v132 = __clz(v131);
          v133 = (v131 >> (28 - v132)) & 7 | (8 * (28 - v132));
          v134 = (v128 - model_rd_norm_xsq_iq_q10[v133]) << 10 >> (30 - v132);
          result = (1024 - v134);
          LODWORD(v128) = (((v134 * model_rd_norm_rate_tab_q10[v133 + 1] + result * model_rd_norm_rate_tab_q10[v133]) >> 10 << v130) + 1) >> 1;
          goto LABEL_136;
        }

        LODWORD(v128) = 0;
LABEL_136:
        a10.i64[0] = *v158;
        *v158 = *v158 + v128;
      }

      *(v116 + 8) = v112 - v115 * v115 / v87;
      *(v116 + 16) = v111 - v114 * v114 / v87;
      *(v116 + 32) = v110 - v113 * v113 / v87;
      *(v116 + 40) = v76;
      v85->i32[0] = 0;
      v21.i64[0] = 0;
      if (v178 < 2)
      {
        goto LABEL_150;
      }

      if (v178 < 9)
      {
        v135 = 0;
        v136 = 1;
LABEL_143:
        v140 = v178 - v136;
        v141 = &v85->i32[v136];
        do
        {
          v143 = *v141++;
          v142 = v143;
          if (v143 < 0)
          {
            v142 = -v142;
          }

          if (v135 <= v142)
          {
            v135 = v142;
          }

          --v140;
        }

        while (v140);
        goto LABEL_149;
      }

      v137 = 0uLL;
      v138 = v155;
      v139 = v151;
      a10 = 0uLL;
      do
      {
        a11 = vabsq_s32(v139[-1]);
        a12 = vabsq_s32(*v139);
        v137 = vmaxq_s32(v137, a11);
        a10 = vmaxq_s32(a10, a12);
        v139 += 2;
        v138 -= 8;
      }

      while (v138);
      v135 = vmaxvq_s32(vmaxq_s32(v137, a10));
      v136 = v152;
      if (v153 != v155)
      {
        goto LABEL_143;
      }

LABEL_149:
      *v21.i64 = v135;
LABEL_150:
      *(v116 + 48) = v21.i64[0];
      if (v93 >= v170 || (v93 & 0xF) == 0)
      {
        result = (*(v173 + 424))(v161 + 85032, v188, v174++, HIDWORD(v156));
      }

      v26 = v180 + v186;
      v27 = v93;
      v35 = v93 < v170;
      v32 = v184;
    }

    while (v35);
  }

  *(v18 + 7864) = 0;
  return result;
}

void av1_set_mb_wiener_variance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int32x4_t a25)
{
  v25 = MEMORY[0x28223BE20](a1, a2, a3);
  STACK[0x3938] = *MEMORY[0x277D85DE8];
  v26 = v25 + 263736;
  v27 = v25 + 239104;
  v28 = v25 + 638032;
  LOBYTE(v129) = *(v25 + 638256);
  if (aom_realloc_frame_buffer(*(v25 + 239288) + 1248, *(v25 + 239112), *(v25 + 239116), *(*(v25 + 263736) + 96), *(*(v25 + 263736) + 100), *(*(v25 + 263736) + 76), *(v25 + 265560), *(v25 + 239568), 0, 0, 0, v129, 0))
  {
    aom_internal_error(*v27, 2, "Failed to allocate frame buffer");
  }

  v29 = (v25 + 456808);
  v30 = malloc_type_malloc(0x4027uLL, 0x5F484EBFuLL);
  if (v30)
  {
    v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v31 - 8) = v30;
    *(v25 + 234440) = v31;
    if (v31)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v25 + 234440) = 0;
  }

  aom_internal_error(*v27, 2, "Failed to allocate td->wiener_tmp_pred_buf");
LABEL_8:
  *(v25 + 638072) = 0;
  memset(&var20[1], 0, 32);
  v137 = var20;
  *(v25 + 94344) = &v137;
  *(v25 + 239672) = *(v25 + 264712);
  var20[0] = 0u;
  *(v25 + 172664) = -1;
  av1_init_plane_quantizers(v25, v25 + 86064, 0, 1);
  v135 = 0.0;
  v136 = 0.0;
  if (*(v25 + 627728) >= *(v25 + 627680))
  {
    v39 = *(v25 + 627680);
  }

  else
  {
    v39 = *(v25 + 627728);
  }

  *(v25 + 628096) = av1_row_mt_sync_read_dummy;
  *(v25 + 628104) = av1_row_mt_sync_write_dummy;
  v130 = v25 + 239104;
  if (v39 > 1 && (*(v25 + 265503) & 1) == 0)
  {
    *(v25 + 628096) = av1_row_mt_sync_read;
    *(v25 + 628104) = av1_row_mt_sync_write;
    av1_calc_mb_wiener_var_mt(v25, v39);
    if (*(v25 + 265503) != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (*v29 >= 1)
  {
    v40 = 0;
    v41 = mi_size_wide[*(v25 + 638064)];
    do
    {
      av1_calc_mb_wiener_var_row(v25, v25 + 86064, v25 + 86480, v40, &STACK[0x3120], &STACK[0x2120], &STACK[0x1120], &a25, v32, v33, v34, v35, v36, v37, v38, &v136, &v135, *(v25 + 234440));
      v40 += v41;
    }

    while (v40 < *v29);
  }

  if (*(v25 + 265503) == 1)
  {
LABEL_19:
    if (*(v25 + 239672) <= 127)
    {
      v42 = *(v25 + 239116) * *(v25 + 239112);
      if (v135 / (100 * v42) > 2.0 && v136 / v42 < 4.0)
      {
        *(v25 + 265497) = 0;
        *(v25 + 265499) = 0;
        *(v25 + 265501) = 0;
      }
    }
  }

LABEL_26:
  v133 = v25;
  v134 = (v25 + 456808);
  if (*(v25 + 265648))
  {
    v44 = *(v25 + 638064);
    v45 = mi_size_wide[v44];
    v46 = fopen(*(v25 + 265656), "r");
    if (v46)
    {
      v47 = v46;
      v48 = *v29;
      v49 = 0.0;
      v50 = 0.0;
      if (*v29 < 1 || (v51 = *(v25 + 456812), v51 < 1))
      {
LABEL_37:
        fclose(v47);
        if (*v134 < 1)
        {
          v27 = v130;
        }

        else
        {
          v55 = v134[1];
          v27 = v130;
          if (v55 >= 1)
          {
            v56 = 0;
            v57 = 0;
            v58 = *(v28 + 8);
            v59 = 0x5001FuLL >> v44;
            v60 = 0x10003uLL >> v44;
            do
            {
              v61 = 0;
              v62 = v56 / v45 * v55;
              v63 = (v56 | v45) / v45 * v55;
              v64 = ((2 * v45) | v56) / v45 * v55;
              v65 = ((3 * v45) | v56) / v45 * v55;
              v66 = v45;
              v67 = 2 * v45;
              v68 = 3 * v45;
              do
              {
                v69 = v61 / v45;
                v70 = *(v58 + 4 * (v61 / v45 + v62));
                if (v59)
                {
                  v70 += *(v58 + 4 * (v66 / v45 + v62));
                  if (v60)
                  {
                    v70 += *(v58 + 4 * (v68 / v45 + v62)) + *(v58 + 4 * (v67 / v45 + v62));
                  }
                }

                if (v59)
                {
                  v70 += *(v58 + 4 * (v66 / v45 + v63)) + *(v58 + 4 * (v69 + v63));
                  if (v60)
                  {
                    v70 += *(v58 + 4 * (v69 + v64)) + *(v58 + 4 * (v68 / v45 + v63)) + *(v58 + 4 * (v67 / v45 + v63));
                    if (v59)
                    {
                      v70 += *(v58 + 4 * (v66 / v45 + v64));
                      if (v60)
                      {
                        v70 += *(v58 + 4 * (v68 / v45 + v64)) + *(v58 + 4 * (v67 / v45 + v64));
                      }
                    }

                    if (v60)
                    {
                      v70 += *(v58 + 4 * (v69 + v65));
                      if (v59)
                      {
                        v70 += *(v58 + 4 * (v66 / v45 + v65));
                        if (v60)
                        {
                          v70 += *(v58 + 4 * (v68 / v45 + v65)) + *(v58 + 4 * (v67 / v45 + v65));
                        }
                      }
                    }
                  }
                }

                v57 += v70;
                v61 += 4;
                v68 += 4;
                v67 += 4;
                v66 += 4;
              }

              while (v61 < v55);
              v56 += 4;
            }

            while (v56 < *v134);
            v49 = v57;
          }
        }

        *(v28 + 24) = v49 / v50;
      }

      else
      {
        v52 = 0;
        while (v51 < 1)
        {
LABEL_31:
          v52 += 4;
          if (v52 >= v48)
          {
            goto LABEL_37;
          }
        }

        v53 = 0;
        while (1)
        {
          LODWORD(STACK[0x2120]) = 0;
          if (fscanf(v47, "%f", &STACK[0x2120]) != 1)
          {
            break;
          }

          v54 = *&STACK[0x2120];
          v50 = v50 + v54;
          v51 = v134[1];
          *(*(v28 + 16) + 8 * (v53 / v45 + v51 * (v52 / v45))) = v54;
          v53 += 4;
          if (v53 >= v51)
          {
            v48 = *v134;
            goto LABEL_31;
          }
        }

        fclose(v47);
        v27 = v130;
      }
    }
  }

  v71 = *(*v26 + 28);
  v72 = mi_size_wide[v71];
  v73 = *(v27 + 484);
  if (v73 < 1)
  {
    goto LABEL_93;
  }

  v74 = *(v27 + 488);
  if (v74 < 1)
  {
    goto LABEL_93;
  }

  v75 = 0;
  v76 = 0.0;
  v77 = 0.0;
  do
  {
    v78 = 0;
    do
    {
      v81 = v78;
      var_perceptual_ai = get_var_perceptual_ai(v133, v71, v75, v78);
      v83 = 0;
      v84 = 0;
      v85 = mi_size_wide[*(v28 + 32)];
      v86 = v134[1];
      v87 = v75 + mi_size_high[v71];
      v78 += v72;
      v88 = v75;
      do
      {
        if (v88 < v73)
        {
          v89 = v81;
          do
          {
            if (v89 < v74)
            {
              v83 += *(*v28 + 56 * (v89 / v85 + v88 / v85 * v86) + 40);
              ++v84;
            }

            v89 += v85;
          }

          while (v89 < v78);
        }

        v88 += v85;
      }

      while (v88 < v87);
      if (v84)
      {
        v83 = (v83 / v84);
      }

      v90 = 0;
      v91 = 0;
      v92 = v75;
      do
      {
        if (v92 < v73)
        {
          v93 = v81;
          do
          {
            if (v93 < v74)
            {
              v90 += *(*v28 + 56 * (v93 / v85 + v92 / v85 * v86) + 32);
              ++v91;
            }

            v93 += v85;
          }

          while (v93 < v78);
        }

        v92 += v85;
      }

      while (v92 < v87);
      if (v83 <= 1)
      {
        LODWORD(v83) = 1;
      }

      if (v91)
      {
        v90 = (v90 / v91);
      }

      if (v90 <= 1)
      {
        v79 = 1;
      }

      else
      {
        v79 = v90;
      }

      v80 = v83 / sqrt(v79);
      v76 = v76 + v80 * log(var_perceptual_ai);
      v77 = v77 + v80;
    }

    while (v78 < v74);
    v75 += v72;
  }

  while (v75 < v73);
  if (v77 <= 0.0)
  {
LABEL_93:
    v95 = 1;
    *(v28 + 40) = 1;
    if (v73 < 1)
    {
      goto LABEL_151;
    }
  }

  else
  {
    v94 = exp(v76 / v77);
    if (v94 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v94;
    }

    *(v28 + 40) = v95;
  }

  v96 = *(v130 + 488);
  if (v96 >= 1)
  {
    v97 = 1;
    do
    {
      v98 = 0;
      v131 = v97;
      v132 = v95;
      v99 = v95;
      v100 = 0.0;
      v101 = 0.0;
      do
      {
        v102 = 0;
        do
        {
          v105 = v102;
          v106 = get_var_perceptual_ai(v133, v71, v98, v102);
          v107 = mi_size_wide[*(v28 + 32)];
          v108 = v134[1];
          v109 = v98 + mi_size_high[v71];
          v102 += v72;
          v110 = 10.0;
          v111 = v98;
          do
          {
            if (v111 < v73)
            {
              v112 = v105;
              v113 = v111 / v107;
              do
              {
                if (v112 < v96)
                {
                  v114 = *(*v28 + 56 * (v112 / v107 + v113 * v108) + 48);
                  if (v114 >= 1.0 && v114 < v110)
                  {
                    v110 = *(*v28 + 56 * (v112 / v107 + v113 * v108) + 48);
                  }
                }

                v112 += v107;
              }

              while (v112 < v102);
            }

            v111 += v107;
          }

          while (v111 < v109);
          v115 = 1.0;
          if (v110 >= 1.0)
          {
            v115 = 10.0;
            v121 = v98;
            do
            {
              if (v121 < v73)
              {
                v122 = v105;
                do
                {
                  if (v122 < v96)
                  {
                    v123 = *(*v28 + 56 * (v122 / v107 + v121 / v107 * v108) + 48);
                    if (v123 >= 1.0 && v123 < v115)
                    {
                      v115 = *(*v28 + 56 * (v122 / v107 + v121 / v107 * v108) + 48);
                    }
                  }

                  v122 += v107;
                }

                while (v122 < v102);
              }

              v121 += v107;
            }

            while (v121 < v109);
          }

          v116 = fmax(fmin(v99 / v106, 4.0), 0.25);
          if (v116 >= 1.0 / v115)
          {
            v117 = 0;
            v118 = 0;
            v119 = v98;
            do
            {
              if (v119 < v73)
              {
                v120 = v105;
                do
                {
                  if (v120 < v96)
                  {
                    v117 += *(*v28 + 56 * (v120 / v107 + v119 / v107 * v108) + 40);
                    ++v118;
                  }

                  v120 += v107;
                }

                while (v120 < v102);
              }

              v119 += v107;
            }

            while (v119 < v109);
            if (v118)
            {
              v117 = (v117 / v118);
            }

            v124 = 0;
            v125 = 0;
            if (v117 <= 1)
            {
              LODWORD(v117) = 1;
            }

            v126 = v98;
            do
            {
              if (v126 < v73)
              {
                v127 = v105;
                do
                {
                  if (v127 < v96)
                  {
                    v124 += *(*v28 + 56 * (v127 / v107 + v126 / v107 * v108) + 32);
                    ++v125;
                  }

                  v127 += v107;
                }

                while (v127 < v102);
              }

              v126 += v107;
            }

            while (v126 < v109);
            if (v125)
            {
              v124 = (v124 / v125);
            }

            if (v124 <= 1)
            {
              v103 = 1;
            }

            else
            {
              v103 = v124;
            }

            v104 = v117 / sqrt(v103);
            v100 = v100 + v104 * log((v99 / v116));
            v101 = v101 + v104;
          }
        }

        while (v102 < v96);
        v98 += v72;
      }

      while (v98 < v73);
      v95 = v132;
      if (v101 > 0.0)
      {
        v95 = exp(v100 / v101);
      }

      v97 = 0;
      if (v95 <= 1)
      {
        v95 = 1;
      }

      *(v28 + 40) = v95;
    }

    while ((v131 & 1) != 0);
  }

LABEL_151:
  *(v133 + 94344) = 0;
  aom_free_frame_buffer(*(v130 + 184) + 1248);
  v128 = *(v133 + 234440);
  if (v128)
  {
    free(*(v128 - 8));
  }

  *(v133 + 234440) = 0;
}

uint64_t get_var_perceptual_ai(uint64_t a1, int a2, int a3, int a4)
{
  v5 = 0;
  v6 = (a1 + 638032);
  v7 = a1 + 239588;
  v8 = mi_size_wide[a2];
  v9 = mi_size_high[a2];
  v10 = mi_size_wide[*(a1 + 638064)];
  v11 = *(a1 + 456812);
  v12 = v9 + a3;
  v13 = v8 + a4;
  v14 = *(a1 + 239588);
  v15 = 1.0;
  v16 = a3;
  v17 = 1.0;
  v18 = 1.0;
  do
  {
    if (v16 < v14)
    {
      v19 = a4;
      do
      {
        if (v19 < *(a1 + 239592))
        {
          v20 = *v6 + 56 * (v19 / v10 + v16 / v10 * v11);
          v21 = *(v20 + 32);
          v22 = sqrt(*(v20 + 8));
          *&v23 = v22 * v21;
          LOWORD(v4) = *(v20 + 26);
          v4 = vmovl_s16(*&v4).i32[0];
          v18 = v18 + v22 * v21 * v4;
          v23.i16[0] = *(v20 + 24);
          v24 = vmovl_s16(v23).i32[0];
          v17 = v17 + fabs(v4 * v22 - sqrt(*(v20 + 16)) * v24);
          v15 = v15 + sqrt(v21) * sqrt(v24) * 0.1;
          ++v5;
        }

        v19 += v10;
      }

      while (v19 < v13);
    }

    v16 += v10;
  }

  while (v16 < v12);
  v25 = ((v18 + v15) / (v17 + v15) / v5);
  if (v25 <= 1)
  {
    result = 1;
  }

  else
  {
    result = v25;
  }

  v27 = v9 >> 1;
  v28 = a3 - (v9 >> 1);
  if (a3 >= (v9 >> 1))
  {
    v29 = 0;
    v30 = v28 + v9;
    v31 = 1.0;
    v32 = a3 - v27;
    v33 = 1.0;
    v34 = 1.0;
    do
    {
      if (v32 < v14)
      {
        v35 = a4;
        do
        {
          if (v35 < *(v7 + 4))
          {
            v36 = *v6 + 56 * (v35 / v10 + v32 / v10 * v11);
            v37 = *(v36 + 32);
            v38 = sqrt(*(v36 + 8));
            *&v39 = v38 * v37;
            LOWORD(v4) = *(v36 + 26);
            v4 = vmovl_s16(*&v4).i32[0];
            v34 = v34 + v38 * v37 * v4;
            v39.i16[0] = *(v36 + 24);
            v40 = vmovl_s16(v39).i32[0];
            v33 = v33 + fabs(v4 * v38 - sqrt(*(v36 + 16)) * v40);
            v31 = v31 + sqrt(v37) * sqrt(v40) * 0.1;
            ++v29;
          }

          v35 += v10;
        }

        while (v35 < v13);
      }

      v32 += v10;
    }

    while (v32 < v30);
    if (result >= ((v34 + v31) / (v33 + v31) / v29))
    {
      v41 = 0;
      v42 = 1.0;
      v43 = 1.0;
      v44 = 1.0;
      do
      {
        if (v28 < v14)
        {
          v45 = a4;
          do
          {
            if (v45 < *(v7 + 4))
            {
              v46 = *v6 + 56 * (v45 / v10 + v28 / v10 * v11);
              v47 = *(v46 + 32);
              v48 = sqrt(*(v46 + 8));
              *&v49 = v48 * v47;
              LOWORD(v4) = *(v46 + 26);
              v4 = vmovl_s16(*&v4).i32[0];
              v44 = v44 + v48 * v47 * v4;
              v49.i16[0] = *(v46 + 24);
              v50 = vmovl_s16(v49).i32[0];
              v43 = v43 + fabs(v4 * v48 - sqrt(*(v46 + 16)) * v50);
              v42 = v42 + sqrt(v47) * sqrt(v50) * 0.1;
              ++v41;
            }

            v45 += v10;
          }

          while (v45 < v13);
        }

        v28 += v10;
      }

      while (v28 < v30);
      LODWORD(result) = ((v44 + v42) / (v43 + v42) / v41);
      if (result <= 1)
      {
        result = 1;
      }

      else
      {
        result = result;
      }
    }
  }

  if ((v14 - v9 - v27) >= a3)
  {
    v51 = 0;
    v52 = v27 + a3;
    v53 = v52 + v9;
    v54 = 1.0;
    v55 = v52;
    v56 = 1.0;
    v57 = 1.0;
    do
    {
      if (v55 < v14)
      {
        v58 = a4;
        do
        {
          if (v58 < *(v7 + 4))
          {
            v59 = *v6 + 56 * (v58 / v10 + v55 / v10 * v11);
            v60 = *(v59 + 32);
            v61 = sqrt(*(v59 + 8));
            *&v62 = v61 * v60;
            LOWORD(v4) = *(v59 + 26);
            v4 = vmovl_s16(*&v4).i32[0];
            v57 = v57 + v61 * v60 * v4;
            v62.i16[0] = *(v59 + 24);
            v63 = vmovl_s16(v62).i32[0];
            v56 = v56 + fabs(v4 * v61 - sqrt(*(v59 + 16)) * v63);
            v54 = v54 + sqrt(v60) * sqrt(v63) * 0.1;
            ++v51;
          }

          v58 += v10;
        }

        while (v58 < v13);
      }

      v55 += v10;
    }

    while (v55 < v53);
    if (result >= ((v57 + v54) / (v56 + v54) / v51))
    {
      v64 = 0;
      v65 = 1.0;
      v66 = 1.0;
      v67 = 1.0;
      do
      {
        if (v52 < v14)
        {
          v68 = a4;
          do
          {
            if (v68 < *(v7 + 4))
            {
              v69 = *v6 + 56 * (v68 / v10 + v52 / v10 * v11);
              v70 = *(v69 + 32);
              v71 = sqrt(*(v69 + 8));
              *&v72 = v71 * v70;
              LOWORD(v4) = *(v69 + 26);
              v4 = vmovl_s16(*&v4).i32[0];
              v67 = v67 + v71 * v70 * v4;
              v72.i16[0] = *(v69 + 24);
              v73 = vmovl_s16(v72).i32[0];
              v66 = v66 + fabs(v4 * v71 - sqrt(*(v69 + 16)) * v73);
              v65 = v65 + sqrt(v70) * sqrt(v73) * 0.1;
              ++v64;
            }

            v68 += v10;
          }

          while (v68 < v13);
        }

        v52 += v10;
      }

      while (v52 < v53);
      v74 = ((v67 + v65) / (v66 + v65) / v64);
      if (v74 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v74;
      }
    }
  }

  v75 = v8 >> 1;
  if (a4 >= (v8 >> 1))
  {
    v76 = 0;
    v77 = a4 - (v8 >> 1) + v8;
    v78 = 1.0;
    v79 = a3;
    v80 = 1.0;
    v81 = 1.0;
    do
    {
      if (v79 < v14)
      {
        v82 = a4 - v75;
        do
        {
          if (v82 < *(v7 + 4))
          {
            v83 = *v6 + 56 * (v82 / v10 + v79 / v10 * v11);
            v84 = *(v83 + 32);
            v85 = sqrt(*(v83 + 8));
            *&v86 = v85 * v84;
            LOWORD(v4) = *(v83 + 26);
            v4 = vmovl_s16(*&v4).i32[0];
            v81 = v81 + v85 * v84 * v4;
            v86.i16[0] = *(v83 + 24);
            v87 = vmovl_s16(v86).i32[0];
            v80 = v80 + fabs(v4 * v85 - sqrt(*(v83 + 16)) * v87);
            v78 = v78 + sqrt(v84) * sqrt(v87) * 0.1;
            ++v76;
          }

          v82 += v10;
        }

        while (v82 < v77);
      }

      v79 += v10;
    }

    while (v79 < v12);
    if (result >= ((v81 + v78) / (v80 + v78) / v76))
    {
      v88 = 0;
      v89 = 1.0;
      v90 = a3;
      v91 = 1.0;
      v92 = 1.0;
      do
      {
        if (v90 < v14)
        {
          v93 = a4 - v75;
          do
          {
            if (v93 < *(v7 + 4))
            {
              v94 = *v6 + 56 * (v93 / v10 + v90 / v10 * v11);
              v95 = *(v94 + 32);
              v96 = sqrt(*(v94 + 8));
              *&v97 = v96 * v95;
              LOWORD(v4) = *(v94 + 26);
              v4 = vmovl_s16(*&v4).i32[0];
              v92 = v92 + v96 * v95 * v4;
              v97.i16[0] = *(v94 + 24);
              v98 = vmovl_s16(v97).i32[0];
              v91 = v91 + fabs(v4 * v96 - sqrt(*(v94 + 16)) * v98);
              v89 = v89 + sqrt(v95) * sqrt(v98) * 0.1;
              ++v88;
            }

            v93 += v10;
          }

          while (v93 < v77);
        }

        v90 += v10;
      }

      while (v90 < v12);
      v99 = ((v92 + v89) / (v91 + v89) / v88);
      if (v99 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v99;
      }
    }
  }

  v100 = *(v7 + 4);
  if ((v100 - (v75 + v8)) >= a4)
  {
    v101 = 0;
    v102 = v75 + a4;
    v103 = v102 + v8;
    v104 = 1.0;
    v105 = a3;
    v106 = 1.0;
    v107 = 1.0;
    do
    {
      v108 = v102;
      if (v105 < v14)
      {
        do
        {
          if (v108 < v100)
          {
            v109 = *v6 + 56 * (v108 / v10 + v105 / v10 * v11);
            v110 = *(v109 + 32);
            v111 = sqrt(*(v109 + 8));
            *&v112 = v111 * v110;
            LOWORD(v4) = *(v109 + 26);
            v4 = vmovl_s16(*&v4).i32[0];
            v107 = v107 + v111 * v110 * v4;
            v112.i16[0] = *(v109 + 24);
            v113 = vmovl_s16(v112).i32[0];
            v106 = v106 + fabs(v4 * v111 - sqrt(*(v109 + 16)) * v113);
            v104 = v104 + sqrt(v110) * sqrt(v113) * 0.1;
            ++v101;
          }

          v108 += v10;
        }

        while (v108 < v103);
      }

      v105 += v10;
    }

    while (v105 < v12);
    if (result >= ((v107 + v104) / (v106 + v104) / v101))
    {
      v114 = 0;
      v115 = 1.0;
      v116 = 1.0;
      v117 = 1.0;
      do
      {
        v118 = v102;
        if (a3 < v14)
        {
          do
          {
            if (v118 < v100)
            {
              v119 = *v6 + 56 * (v118 / v10 + a3 / v10 * v11);
              v120 = *(v119 + 32);
              v121 = sqrt(*(v119 + 8));
              *&v122 = v121 * v120;
              LOWORD(v4) = *(v119 + 26);
              v4 = vmovl_s16(*&v4).i32[0];
              v117 = v117 + v121 * v120 * v4;
              v122.i16[0] = *(v119 + 24);
              v123 = vmovl_s16(v122).i32[0];
              v116 = v116 + fabs(v4 * v121 - sqrt(*(v119 + 16)) * v123);
              v115 = v115 + sqrt(v120) * sqrt(v123) * 0.1;
              ++v114;
            }

            v118 += v10;
          }

          while (v118 < v103);
        }

        a3 += v10;
      }

      while (a3 < v12);
      v124 = ((v117 + v115) / (v116 + v115) / v114);
      if (v124 <= 1)
      {
        return 1;
      }

      else
      {
        return v124;
      }
    }
  }

  return result;
}

void av1_set_mb_ur_variance(uint64_t a1)
{
  v1 = a1 + 263736;
  v2 = a1 + 239104;
  v3 = *(a1 + 265688);
  v131 = *(v3 + 40);
  v4 = *(*(a1 + 263736) + 28);
  v5 = *(v3 + 32);
  v125 = mi_size_wide[v4];
  v6 = ((v125 + *(a1 + 239592) - 1) / v125);
  v117 = mi_size_high[v4];
  v7 = ((v117 + *(a1 + 239588) - 1) / v117);
  v8 = v7 * v6;
  if ((v7 * v6) > 0x7FFFFFFA)
  {
    v138 = 0;
    aom_internal_error(*v2, 2, "Failed to allocate mb_delta_q[0]");
    v9 = 0;
    v10 = 1;
    goto LABEL_11;
  }

  v11 = 4 * (v7 * v6);
  v12 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL);
  if (v12 && (v9 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0, *(v9 - 8) = v12, v9))
  {
    bzero(((v12 + 23) & 0xFFFFFFFFFFFFFFF0), 4 * (v7 * v6));
    v10 = 0;
    v138 = v9;
    v13 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v138 = 0;
    aom_internal_error(*v2, 2, "Failed to allocate mb_delta_q[0]");
    v9 = 0;
    v10 = 1;
    v13 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v14 - 8) = v13;
  if (v14)
  {
    bzero(((v13 + 23) & 0xFFFFFFFFFFFFFFF0), 4 * (v7 * v6));
    v15 = 0;
    v137 = v14;
    v16 = 0.0;
    v17 = 0.0;
    if (v7 < 1)
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

LABEL_11:
  v137 = 0;
  aom_internal_error(*v2, 2, "Failed to allocate mb_delta_q[1]");
  v14 = 0;
  v15 = 1;
  v16 = 0.0;
  v17 = 0.0;
  if (v7 < 1)
  {
    goto LABEL_38;
  }

LABEL_12:
  if (v6 >= 1)
  {
    v114 = v7 * v6;
    v115 = v15;
    v18 = 0;
    v119 = 0;
    v19 = 0;
    v20 = 0;
    v121 = v9;
    v122 = v6;
    v21 = v117;
    v116 = v7;
    v120 = v14;
    do
    {
      v133 = 0;
      v22 = 0;
      v130 = 0;
      v123 = v18 * v21;
      v124 = v18 * v6;
      v118 = v18 + 1;
      v134 = (v18 + 1) * v21;
      do
      {
        v31 = *(v2 + 484);
        v129 = v22 + 1;
        v32 = 0.0;
        v127 = v20;
        v128 = v19;
        v126 = v22;
        if (v123 >= v31)
        {
          v23 = 0.0;
        }

        else
        {
          v33 = v22 * v125;
          LODWORD(v34) = *(v2 + 488);
          v23 = 0.0;
          if (v34 > v22 * v125)
          {
            v35 = v119;
            v132 = v22 * v125;
            do
            {
              if (v34 > v33)
              {
                v36 = v130 + 2;
                v37 = v133;
                do
                {
                  v38 = av1_ss_size_lookup[2 * *(a1 + 86500) + 12 + *(a1 + 86504)];
                  v139[0] = 0;
                  v39 = ((*(*a1 + (v38 << 7) + 51416))(v131 + 4 * v5 * v35 + v37, v5, &AV1_VAR_OFFS, 0, v139) + (1 << num_pels_log2_lookup_8[v38] >> 1)) >> num_pels_log2_lookup_8[v38];
                  if (v39 <= 1)
                  {
                    v39 = 1;
                  }

                  v23 = v23 + log(v39);
                  v32 = v32 + 1.0;
                  v34 = *(v2 + 488);
                  if (v36 >= v34)
                  {
                    break;
                  }

                  v40 = v36;
                  v36 += 2;
                  v37 += 8;
                }

                while (v40 < v129 * v125);
                LODWORD(v31) = *(v2 + 484);
                v33 = v132;
              }

              v35 += 2;
            }

            while (v35 < v31 && v35 < v134);
          }
        }

        v24 = v126 + v124;
        v25 = exp(v23 / v32);
        v26 = exp(v25 * -0.004898) * -98.0 + 131.728;
        if (v26 >= 0.0)
        {
          v27 = 0.5;
        }

        else
        {
          v27 = -0.5;
        }

        v9 = v121;
        *(v121 + 4 * v24) = (v26 + v27);
        v28 = exp(v25 * -0.003093) * -68.8 + 180.4;
        if (v28 >= 0.0)
        {
          v29 = 0.5;
        }

        else
        {
          v29 = -0.5;
        }

        v30 = v28 + v29;
        v14 = v120;
        *(v120 + 4 * v24) = v30;
        v19 = *(v121 + 4 * v24) + v128;
        v20 = v127 + v30;
        v130 += v125;
        v133 += 4 * v125;
        v22 = v129;
        v6 = v122;
      }

      while (v129 != v122);
      v7 = v116;
      v21 = v117;
      v119 += v117;
      v18 = v118;
    }

    while (v118 != v116);
    v17 = v19;
    v16 = v20;
    v15 = v115;
    v8 = v114;
  }

LABEL_38:
  v41 = v17 / v8;
  if (v41 >= 0.0)
  {
    v42 = 0.5;
  }

  else
  {
    v42 = -0.5;
  }

  v43 = (v41 + v42);
  v139[0] = v43;
  v44 = v16 / v8;
  if (v44 >= 0.0)
  {
    v45 = 0.5;
  }

  else
  {
    v45 = -0.5;
  }

  v46 = *(v1 + 976);
  v47 = v139;
  v48 = 255 - v46;
  v136 = (v44 + v45);
  v49 = &v137;
  v50 = &v136;
  if (v46 < v136)
  {
    v51 = v136 - v43;
  }

  else
  {
    v51 = 255 - v136;
  }

  if (v46 >= v136)
  {
    v52 = 0;
  }

  else
  {
    v48 = v46 - v43;
    v52 = 1;
  }

  if (v46 < v136)
  {
    v50 = v46;
    v49 = v46;
  }

  v53 = v46 < v43;
  if (v46 >= v43)
  {
    v54 = v48;
  }

  else
  {
    v51 = v43;
    v54 = v46;
  }

  if (v46 >= v43)
  {
    v55 = v52;
  }

  else
  {
    v55 = 0;
  }

  if (v53)
  {
    v56 = &v138;
  }

  else
  {
    v47 = v50;
    v56 = v49;
  }

  if (v7 >= 1 && v6 >= 1)
  {
    *&v58 = v51;
    v59 = v54 / v51;
    LOBYTE(v58) = *(v1 + 1018);
    v60 = v58 / 100.0;
    if (v55)
    {
      v61 = 0;
      v62 = v43 + v59 * (v136 - v43);
      v63 = *(a1 + 638080);
      v65 = v63 - v9 < 8 || v63 - v14 < 8;
      v66 = vdupq_lane_s64(*&v59, 0);
      v67 = vdupq_lane_s64(*&v62, 0);
      v68 = vdupq_lane_s64(*&v60, 0);
      v69 = 4 * v6;
      __asm
      {
        FMOV            V16.2D, #-0.5
        FMOV            V17.2D, #0.5
      }

      v75 = v9;
      v76 = v14;
      while (v6 != 1 && !v65)
      {
        v78 = v6 & 0x7FFFFFFE;
        v79 = v75;
        v80 = v76;
        v81 = v63;
        do
        {
          v82 = *v79++;
          v83 = v82;
          v84 = *v80++;
          v85.i64[0] = v83.i32[0];
          v85.i64[1] = v83.i32[1];
          v86 = vcvtq_f64_s64(v85);
          v87 = vsub_s32(v84, v83);
          v85.i64[0] = v87.i32[0];
          v85.i64[1] = v87.i32[1];
          v88 = vsubq_f64(vmlaq_f64(v86, vcvtq_f64_s64(v85), v66), v67);
          *v81++ = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_n_f64(v88, v60)), vmlaq_f64(_Q16, v88, v68), vmlaq_f64(_Q17, v88, v68))));
          v78 -= 2;
        }

        while (v78);
        v77 = v6 & 0x7FFFFFFE;
        if (v77 != v6)
        {
          goto LABEL_85;
        }

LABEL_79:
        ++v61;
        v63 = (v63 + v69);
        v76 = (v76 + v69);
        v75 = (v75 + v69);
        if (v61 == v7)
        {
          goto LABEL_66;
        }
      }

      v77 = 0;
      do
      {
LABEL_85:
        v89 = v60 * (v75->i32[v77] + v59 * (v76->i32[v77] - v75->i32[v77]) - v62);
        v90 = v89 + 0.5;
        if (v89 < 0.0)
        {
          v90 = v89 + -0.5;
        }

        v63->i32[v77++] = v90;
      }

      while (v6 != v77);
      goto LABEL_79;
    }

    v91 = 0;
    v92 = v59 * v60;
    v93 = *v56;
    v94 = *v47;
    v95 = *(a1 + 638080);
    v97 = v6 < 4 || v95 - *v56 < 0x10;
    v98 = vdupq_n_s32(v94);
    v99 = vdupq_lane_s64(*&v92, 0);
    v100 = 4 * v6;
    __asm
    {
      FMOV            V5.2D, #-0.5
      FMOV            V6.2D, #0.5
    }

    while (!v97)
    {
      v104 = v6 & 0x7FFFFFFC;
      v105 = v93;
      v106 = v95;
      do
      {
        v107 = *v105++;
        v108 = vsubq_s32(v107, v98);
        v109.i64[0] = v108.i32[2];
        v109.i64[1] = v108.i32[3];
        v110 = vcvtq_f64_s64(v109);
        v109.i64[0] = v108.i32[0];
        v109.i64[1] = v108.i32[1];
        v111 = vcvtq_f64_s64(v109);
        *v106++ = vuzp1q_s32(vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_n_f64(v111, v92)), vmlaq_f64(_Q5, v111, v99), vmlaq_f64(_Q6, v111, v99))), vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_n_f64(v110, v92)), vmlaq_f64(_Q5, v110, v99), vmlaq_f64(_Q6, v110, v99))));
        v104 -= 4;
      }

      while (v104);
      v103 = v6 & 0x7FFFFFFC;
      if (v103 != v6)
      {
        goto LABEL_102;
      }

LABEL_96:
      ++v91;
      v95 = (v95 + v100);
      v93 = (v93 + v100);
      if (v91 == v7)
      {
        goto LABEL_66;
      }
    }

    v103 = 0;
    do
    {
LABEL_102:
      v112 = v92 * (v93->i32[v103] - v94);
      v113 = v112 + 0.5;
      if (v112 < 0.0)
      {
        v113 = v112 + -0.5;
      }

      v95->i32[v103++] = v113;
    }

    while (v6 != v103);
    goto LABEL_96;
  }

LABEL_66:
  if ((v10 & 1) == 0)
  {
    free(*(v9 - 8));
  }

  if ((v15 & 1) == 0)
  {
    free(*(v14 - 8));
  }
}

void av1_free_ref_frame_buffers(uint64_t a1)
{
  if (*(a1 + 96))
  {
    v2 = 0;
    v3 = 1248;
    do
    {
      v4 = *(a1 + 88);
      v5 = v4 + v3;
      if (*(v4 + v3 - 1248) >= 1)
      {
        v7 = *(v5 - 24);
        v6 = v5 - 24;
        if (v7)
        {
          (*(a1 + 80))(*(a1 + 64), v6);
          v4 = *(a1 + 88);
          v8 = v4 + v3;
          *(v4 + v3 - 1248) = 0;
          *(v8 - 16) = 0;
          *(v8 - 8) = 0;
          *(v8 - 24) = 0;
        }
      }

      v9 = *(v4 + v3 - 1176);
      if (v9)
      {
        free(*(v9 - 8));
      }

      v10 = *(a1 + 88);
      *(v10 + v3 - 1176) = 0;
      v11 = *(v10 + v3 - 1168);
      if (v11)
      {
        free(*(v11 - 8));
        v10 = *(a1 + 88);
      }

      *(v10 + v3 - 1168) = 0;
      aom_free_frame_buffer(v10 + v3);
      ++v2;
      v3 += 22728;
    }

    while (v2 < *(a1 + 96));
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    free(*(v12 - 8));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
}

void av1_free_cdef_buffers(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1 + 20480;
  v7 = *(a1 + 23708);
  v8 = *(a1 + 23480);
  if (v8)
  {
    free(*(v8 - 8));
  }

  *(a1 + 23480) = 0;
  v9 = *(a1 + 23488);
  if (v9)
  {
    free(*(v9 - 8));
  }

  *(a1 + 23488) = 0;
  v10 = *(a1 + 23496);
  if (v10)
  {
    free(*(v10 - 8));
  }

  *(a1 + 23496) = 0;
  v11 = *(a1 + 23504);
  if (v11)
  {
    free(*(v11 - 8));
  }

  *(a1 + 23504) = 0;
  v12 = *(a1 + 23456);
  if (v12)
  {
    free(*(v12 - 8));
  }

  *(a1 + 23456) = 0;
  v13 = *(a1 + 23464);
  if (v13)
  {
    free(*(v13 - 8));
  }

  *(a1 + 23464) = 0;
  v14 = *(a1 + 23472);
  if (v14)
  {
    free(*(v14 - 8));
  }

  *(a1 + 23472) = 0;
  v15 = *(a3 + 8);
  if (v15)
  {
    if (v7 < 1)
    {
      goto LABEL_26;
    }

    v16 = 0;
    v17 = 24 * v7;
    do
    {
      v18 = *(a3 + 8);
      v19 = *(v18 + v16);
      if (v19)
      {
        pthread_mutex_destroy(v19);
        v18 = *(a3 + 8);
        v20 = *(v18 + v16);
        if (v20)
        {
          free(*(v20 - 8));
          v18 = *(a3 + 8);
        }
      }

      v21 = *(v18 + v16 + 8);
      if (v21)
      {
        pthread_cond_destroy(v21);
        v22 = *(*(a3 + 8) + v16 + 8);
        if (v22)
        {
          free(*(v22 - 8));
        }
      }

      v16 += 24;
    }

    while (v17 != v16);
    v15 = *(a3 + 8);
    if (v15)
    {
LABEL_26:
      free(*(v15 - 8));
    }

    *(a3 + 8) = 0;
  }

  v23 = *(v6 + 3232);
  if (v23 >= 2 && *a2)
  {
    v24 = v23 + 1;
    v25 = 488 * v23;
    do
    {
      v26 = *a2;
      v27 = *a2 + v25;
      v28 = (v27 - 448);
      v29 = *(v27 - 448);
      if (v29)
      {
        free(*(v29 - 8));
      }

      v30 = (v27 - 472);
      *v28 = 0;
      if (*v30)
      {
        free(*(*v30 - 8));
      }

      *v30 = 0;
      v31 = v26 + v25;
      v32 = *(v31 - 464);
      if (v32)
      {
        free(*(v32 - 8));
      }

      *(v31 - 464) = 0;
      v33 = (v31 - 456);
      if (*v33)
      {
        free(*(*v33 - 8));
      }

      *v33 = 0;
      --v24;
      v25 -= 488;
    }

    while (v24 > 2);
    if (*a2)
    {
      free(*(*a2 - 8));
    }

    *a2 = 0;
  }
}

void av1_alloc_cdef_buffers(uint64_t a1, unint64_t *a2, uint64_t a3, int a4, int a5)
{
  v122 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 24680);
  v117 = *(v10 + 77);
  v120 = 0uLL;
  v121 = 0;
  v118 = 0uLL;
  v119 = 0;
  v11 = *(a1 + 532);
  v13 = v11 + 15;
  v12 = v11 < -15;
  v14 = v11 + 30;
  if (!v12)
  {
    v14 = v13;
  }

  v110 = v14 >> 4;
  if (*(v10 + 67))
  {
    v15 = a4 > 1;
    v16 = 96;
    if (a4 > 1)
    {
      v16 = 32 * (v14 >> 4);
    }

    if (*(a1 + 25288))
    {
      v109 = 0;
      v114 = 0;
      v115 = 0;
      v112 = (a1 + 23708);
      v17 = *(a1 + 23712);
      if (!*(a1 + 23536))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = (4 * *(a1 + 536) + 15) & 0xFFFFFFF0;
      v19 = v16 * v18;
      *&v120 = v19;
      v114 = 0x4000;
      *&v118 = 0x4000;
      if (v117)
      {
        v109 = 1;
        v115 = 38016;
        v112 = (a1 + 23708);
        v17 = *(a1 + 23712);
        if (v19 == *(a1 + 23536))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = 0;
        v21 = *(v10 + 96);
        v115 = 38016;
        v114 = 0x4000;
        do
        {
          v22 = v20;
          *(&v120 + v20 + 1) = v16 * (v18 >> v21);
          *(&v118 + ++v20) = 16 * (256 << (2 - v21));
        }

        while (v22 != 1);
        v109 = 1;
        v112 = (a1 + 23708);
        v17 = *(a1 + 23712);
        if (v19 == *(a1 + 23536))
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v109 = 0;
    v114 = 0;
    v115 = 0;
    v15 = a4 > 1;
    v112 = (a1 + 23708);
    v17 = *(a1 + 23712);
    if (!*(a1 + 23536))
    {
      goto LABEL_20;
    }
  }

  v23 = *(a1 + 23480);
  if (v23)
  {
    free(*(v23 - 8));
  }

  *(a1 + 23480) = 0;
LABEL_20:
  if (*(&v120 + 1) == *(a1 + 23544))
  {
    if (v121 == *(a1 + 23552))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v26 = *(a1 + 23488);
    if (v26)
    {
      free(*(v26 - 8));
    }

    *(a1 + 23488) = 0;
    if (v121 == *(a1 + 23552))
    {
LABEL_22:
      if (*(a1 + 23560) == v115)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  v27 = *(a1 + 23496);
  if (v27)
  {
    free(*(v27 - 8));
  }

  *(a1 + 23496) = 0;
  if (*(a1 + 23560) == v115)
  {
LABEL_23:
    if (v114 == *(a1 + 23512))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_34:
  v28 = *(a1 + 23504);
  if (v28)
  {
    free(*(v28 - 8));
  }

  *(a1 + 23504) = 0;
  if (v114 == *(a1 + 23512))
  {
LABEL_24:
    v113 = a4;
    v24 = *(&v118 + 1);
    if (*(&v118 + 1) == *(a1 + 23520))
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_37:
  v29 = *(a1 + 23456);
  if (v29)
  {
    free(*(v29 - 8));
  }

  *(a1 + 23456) = 0;
  v113 = a4;
  v24 = *(&v118 + 1);
  if (*(&v118 + 1) == *(a1 + 23520))
  {
LABEL_25:
    v116 = (a1 + 23512);
    v25 = v119;
    if (v119 == *(a1 + 23528))
    {
      goto LABEL_26;
    }

LABEL_43:
    v31 = *(a1 + 23472);
    if (v31)
    {
      free(*(v31 - 8));
    }

    *(a1 + 23472) = 0;
    v108 = a1 + 23536;
    v111 = a5;
    if (!a5)
    {
      goto LABEL_82;
    }

    goto LABEL_46;
  }

LABEL_40:
  v30 = *(a1 + 23464);
  if (v30)
  {
    free(*(v30 - 8));
  }

  *(a1 + 23464) = 0;
  v116 = (a1 + 23512);
  v25 = v119;
  if (v119 != *(a1 + 23528))
  {
    goto LABEL_43;
  }

LABEL_26:
  v108 = a1 + 23536;
  v111 = a5;
  if (!a5)
  {
    goto LABEL_82;
  }

LABEL_46:
  v32 = *a2;
  if (*a2)
  {
    if (v17 == v113)
    {
      if (v15)
      {
        v33 = v113 + 1;
        v34 = 488 * v113;
        do
        {
          v35 = a2;
          v36 = *a2;
          v37 = v36 + v34;
          if (*(a1 + 23560) == v115)
          {
            if (v114 == *v116)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v38 = *(v37 - 448);
            if (v38)
            {
              free(*(v38 - 8));
            }

            *(v37 - 448) = 0;
            if (v114 == *v116)
            {
LABEL_54:
              if (v24 != *(a1 + 23520))
              {
                goto LABEL_63;
              }

              goto LABEL_55;
            }
          }

          v39 = (v37 - 472);
          if (*v39)
          {
            free(*(*v39 - 8));
          }

          *v39 = 0;
          if (v24 != *(a1 + 23520))
          {
LABEL_63:
            v40 = (v36 + v34 - 464);
            if (*v40)
            {
              free(*(*v40 - 8));
            }

            *v40 = 0;
            if (v25 == *(a1 + 23528))
            {
              goto LABEL_51;
            }

LABEL_66:
            v41 = (v36 + v34 - 456);
            if (*v41)
            {
              free(*(*v41 - 8));
            }

            *v41 = 0;
            goto LABEL_51;
          }

LABEL_55:
          if (v25 != *(a1 + 23528))
          {
            goto LABEL_66;
          }

LABEL_51:
          --v33;
          v34 -= 488;
          a2 = v35;
        }

        while (v33 > 2);
      }
    }

    else
    {
      v42 = v112[1];
      if (v42 < 2)
      {
        goto LABEL_80;
      }

      v43 = v42 + 1;
      v44 = 488 * v42;
      do
      {
        v45 = *a2;
        v46 = *a2 + v44;
        v47 = *(v46 - 448);
        if (v47)
        {
          free(*(v47 - 8));
        }

        *(v46 - 448) = 0;
        v48 = *(v46 - 472);
        if (v48)
        {
          free(*(v48 - 8));
        }

        *(v46 - 472) = 0;
        v49 = v45 + v44;
        v50 = *(v49 - 464);
        if (v50)
        {
          free(*(v50 - 8));
        }

        *(v49 - 464) = 0;
        v51 = *(v49 - 456);
        if (v51)
        {
          free(*(v51 - 8));
        }

        *(v49 - 456) = 0;
        --v43;
        v44 -= 488;
      }

      while (v43 > 2);
      v32 = *a2;
      if (*a2)
      {
LABEL_80:
        free(*(v32 - 8));
      }

      *a2 = 0;
    }
  }

LABEL_82:
  v52 = *v112;
  if (v52 != v110)
  {
    v53 = *(a3 + 8);
    if (v53)
    {
      if (v52 < 1)
      {
        goto LABEL_94;
      }

      v54 = 0;
      v55 = 24 * v52;
      do
      {
        v56 = *(a3 + 8);
        v57 = *(v56 + v54);
        if (v57)
        {
          pthread_mutex_destroy(v57);
          v56 = *(a3 + 8);
          v58 = *(v56 + v54);
          if (v58)
          {
            free(*(v58 - 8));
            v56 = *(a3 + 8);
          }
        }

        v59 = *(v56 + v54 + 8);
        if (v59)
        {
          pthread_cond_destroy(v59);
          v60 = *(*(a3 + 8) + v54 + 8);
          if (v60)
          {
            free(*(v60 - 8));
          }
        }

        v54 += 24;
      }

      while (v55 != v54);
      v53 = *(a3 + 8);
      if (v53)
      {
LABEL_94:
        free(*(v53 - 8));
      }

      *(a3 + 8) = 0;
    }
  }

  *(a1 + 23560) = v115;
  *v116 = v118;
  v116[2] = v119;
  *v108 = v120;
  *(v108 + 16) = v121;
  *v112 = v110;
  v112[1] = v113;
  if (!v109)
  {
    return;
  }

  if (!*(a1 + 23504))
  {
    v61 = malloc_type_malloc(v115 | 0x17, 0x5F484EBFuLL);
    if (v61)
    {
      v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v62 - 8) = v61;
      *(a1 + 23504) = v62;
      if (v62)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *(a1 + 23504) = 0;
    }

    aom_internal_error(*(a1 + 48), 2, "Failed to allocate *srcbuf");
    if (*(a1 + 23456))
    {
      goto LABEL_109;
    }

    goto LABEL_101;
  }

LABEL_100:
  if (*(a1 + 23456))
  {
    goto LABEL_109;
  }

LABEL_101:
  if (*v116 <= 0x1FFFFFFE9uLL && (v63 = malloc_type_malloc(*v116 + 23, 0x5F484EBFuLL)) != 0)
  {
    v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v64 - 8) = v63;
    *(a1 + 23456) = v64;
    if (v64)
    {
      goto LABEL_109;
    }
  }

  else
  {
    *(a1 + 23456) = 0;
  }

  aom_internal_error(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
LABEL_109:
  if (v117)
  {
    goto LABEL_124;
  }

  if (!*(a1 + 23464))
  {
    v65 = *(a1 + 23520);
    if (v65 <= 0x1FFFFFFE9 && (v66 = malloc_type_malloc(v65 + 23, 0x5F484EBFuLL)) != 0)
    {
      v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v67 - 8) = v66;
      *(a1 + 23464) = v67;
      if (v67)
      {
        goto LABEL_117;
      }
    }

    else
    {
      *(a1 + 23464) = 0;
    }

    aom_internal_error(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
  }

LABEL_117:
  if (*(a1 + 23472))
  {
    goto LABEL_124;
  }

  v68 = *(a1 + 23528);
  if (v68 <= 0x1FFFFFFE9 && (v69 = malloc_type_malloc(v68 + 23, 0x5F484EBFuLL)) != 0)
  {
    v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v70 - 8) = v69;
    *(a1 + 23472) = v70;
    if (v70)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *(a1 + 23472) = 0;
  }

  aom_internal_error(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
LABEL_124:
  if (*(a1 + 23480))
  {
    goto LABEL_131;
  }

  if (*v108 <= 0x1FFFFFFE9uLL && (v71 = malloc_type_malloc(*v108 + 23, 0x5F484EBFuLL)) != 0)
  {
    v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v72 - 8) = v71;
    *(a1 + 23480) = v72;
    if (v72)
    {
      goto LABEL_131;
    }
  }

  else
  {
    *(a1 + 23480) = 0;
  }

  aom_internal_error(*(a1 + 48), 2, "Failed to allocate linebuf[plane]");
LABEL_131:
  if (v117)
  {
    goto LABEL_146;
  }

  if (!*(a1 + 23488))
  {
    v73 = *(a1 + 23544);
    if (v73 <= 0x1FFFFFFE9 && (v74 = malloc_type_malloc(v73 + 23, 0x5F484EBFuLL)) != 0)
    {
      v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v75 - 8) = v74;
      *(a1 + 23488) = v75;
      if (v75)
      {
        goto LABEL_139;
      }
    }

    else
    {
      *(a1 + 23488) = 0;
    }

    aom_internal_error(*(a1 + 48), 2, "Failed to allocate linebuf[plane]");
  }

LABEL_139:
  if (!*(a1 + 23496))
  {
    v76 = *(a1 + 23552);
    if (v76 > 0x1FFFFFFE9 || (v77 = malloc_type_malloc(v76 + 23, 0x5F484EBFuLL)) == 0)
    {
      *(a1 + 23496) = 0;
LABEL_145:
      aom_internal_error(*(a1 + 48), 2, "Failed to allocate linebuf[plane]");
      goto LABEL_146;
    }

    v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v78 - 8) = v77;
    *(a1 + 23496) = v78;
    if (!v78)
    {
      goto LABEL_145;
    }
  }

LABEL_146:
  if (v113 >= 2)
  {
    if (v111)
    {
      if (!*a2)
      {
        if (v113 <= 0x10C9714 && (v79 = malloc_type_malloc(488 * v113 + 23, 0x5F484EBFuLL)) != 0 && (v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF0, *(v80 - 8) = v79, v80))
        {
          bzero(((v79 + 23) & 0xFFFFFFFFFFFFFFF0), 488 * v113);
          *a2 = v80;
        }

        else
        {
          *a2 = 0;
          aom_internal_error(*(a1 + 48), 2, "Failed to allocate *cdef_worker");
        }
      }

      v81 = v113 + 1;
      v82 = 488 * (v113 - 1);
      do
      {
        v83 = *a2;
        v84 = *a2 + v82;
        if (*(v84 + 40))
        {
          goto LABEL_165;
        }

        v85 = *(a1 + 23560);
        if (v85 <= 0x1FFFFFFE9 && (v86 = malloc_type_malloc(v85 + 23, 0x5F484EBFuLL)) != 0)
        {
          v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v87 - 8) = v86;
          *(v84 + 40) = v87;
          if (v87)
          {
            goto LABEL_165;
          }
        }

        else
        {
          *(v84 + 40) = 0;
        }

        aom_internal_error(*(a1 + 48), 2, "Failed to allocate *srcbuf");
LABEL_165:
        if (*(v84 + 16))
        {
          goto LABEL_172;
        }

        if (*v116 <= 0x1FFFFFFE9uLL && (v88 = malloc_type_malloc(*v116 + 23, 0x5F484EBFuLL)) != 0)
        {
          v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v89 - 8) = v88;
          *(v84 + 16) = v89;
          if (v89)
          {
            goto LABEL_172;
          }
        }

        else
        {
          *(v84 + 16) = 0;
        }

        aom_internal_error(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
LABEL_172:
        if (v117)
        {
          goto LABEL_157;
        }

        v90 = v83 + v82;
        if (!*(v90 + 24))
        {
          v91 = *(a1 + 23520);
          if (v91 <= 0x1FFFFFFE9 && (v92 = malloc_type_malloc(v91 + 23, 0x5F484EBFuLL)) != 0)
          {
            v93 = (v92 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v93 - 8) = v92;
            *(v90 + 24) = v93;
            if (v93)
            {
              goto LABEL_180;
            }
          }

          else
          {
            *(v90 + 24) = 0;
          }

          aom_internal_error(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
        }

LABEL_180:
        if (!*(v90 + 32))
        {
          v94 = *(a1 + 23528);
          if (v94 <= 0x1FFFFFFE9 && (v95 = malloc_type_malloc(v94 + 23, 0x5F484EBFuLL)) != 0)
          {
            v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v96 - 8) = v95;
            *(v90 + 32) = v96;
            if (v96)
            {
              goto LABEL_157;
            }
          }

          else
          {
            *(v90 + 32) = 0;
          }

          aom_internal_error(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
        }

LABEL_157:
        --v81;
        v82 -= 488;
      }

      while (v81 > 2);
    }

    if (!*(a3 + 8))
    {
      v97 = *v112;
      if (v97 <= 0x15555554 && (v98 = malloc_type_malloc(24 * v97 + 23, 0x5F484EBFuLL)) != 0 && (v99 = (v98 + 23) & 0xFFFFFFFFFFFFFFF0, *(v99 - 8) = v98, v99))
      {
        bzero(((v98 + 23) & 0xFFFFFFFFFFFFFFF0), 24 * v97);
        *(a3 + 8) = v99;
      }

      else
      {
        *(a3 + 8) = 0;
        aom_internal_error(*(a1 + 48), 2, "Failed to allocate *cdef_row_mt");
      }

      if (v97 >= 1)
      {
        v100 = 0;
        v101 = 24 * v97;
        do
        {
          v103 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
          if (v103)
          {
            v104 = v103;
            v105 = ((v103 + 23) & 0xFFFFFFFFFFFFFFF0);
            *&v105[-1].__opaque[48] = v104;
            *(*(a3 + 8) + v100) = v105;
            if (v105)
            {
              goto LABEL_202;
            }
          }

          else
          {
            *(*(a3 + 8) + v100) = 0;
          }

          aom_internal_error(*(a1 + 48), 2, "Failed to allocate (*cdef_row_mt)[row_idx].row_mutex_");
          v105 = *(*(a3 + 8) + v100);
LABEL_202:
          pthread_mutex_init(v105, 0);
          v106 = malloc_type_malloc(0x47uLL, 0x5F484EBFuLL);
          if (v106)
          {
            v107 = v106;
            v102 = ((v106 + 23) & 0xFFFFFFFFFFFFFFF0);
            *&v102[-1].__opaque[32] = v107;
            *(*(a3 + 8) + v100 + 8) = v102;
            if (v102)
            {
              goto LABEL_196;
            }
          }

          else
          {
            *(*(a3 + 8) + v100 + 8) = 0;
          }

          aom_internal_error(*(a1 + 48), 2, "Failed to allocate (*cdef_row_mt)[row_idx].row_cond_");
          v102 = *(*(a3 + 8) + v100 + 8);
LABEL_196:
          pthread_cond_init(v102, 0);
          v100 += 24;
        }

        while (v101 != v100);
      }
    }
  }
}

uint64_t av1_alloc_restoration_buffers(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(*(result + 24680) + 77);
  if (*(result + 23248))
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (v4)
  {
LABEL_7:
    v6 = (v2 + 20480);
    if (*(v2 + 23256))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  result = malloc_type_malloc(0x13B9B7uLL, 0x5F484EBFuLL);
  if (result)
  {
    v5 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v5 - 8) = result;
    *(v2 + 23248) = v5;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v2 + 23248) = 0;
  }

  result = aom_internal_error(*(v2 + 48), 2, "Failed to allocate cm->rst_tmpbuf");
  v6 = (v2 + 20480);
  if (*(v2 + 23256))
  {
    goto LABEL_16;
  }

LABEL_11:
  result = malloc_type_malloc(0x1277uLL, 0x5F484EBFuLL);
  if (result)
  {
    v7 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v7 - 8) = result;
    *(v2 + 23256) = v7;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v2 + 23256) = 0;
  }

  result = aom_internal_error(*(v2 + 48), 2, "Failed to allocate cm->rlbs");
LABEL_16:
  v8 = 4 * *(v2 + 532);
  v10 = v8 + 71;
  v9 = v8 < -71;
  v11 = v8 + 134;
  if (!v9)
  {
    v11 = v10;
  }

  v12 = *(v2 + 72);
  v13 = *(*(v2 + 24680) + 76);
  v14 = 2 * (v11 >> 6);
  v15 = (v12 + 39) & 0xFFFFFFE0;
  v16 = (v14 * v15) << v13;
  v17 = *(v2 + 23088);
  if (v16 != v6[657] || v17 == 0)
  {
    if (!v17)
    {
      v19 = *(v2 + 23096);
      if (!v19)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if (*(v2 + 23096))
  {
    goto LABEL_42;
  }

  free(*(v17 - 8));
  v19 = *(v2 + 23096);
  if (v19)
  {
LABEL_25:
    free(*(v19 - 8));
  }

LABEL_26:
  if (v16 < 0)
  {
    *(v2 + 23088) = 0;
    aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_above");
    goto LABEL_39;
  }

  v20 = malloc_type_malloc(v16 | 0x27u, 0x5F484EBFuLL);
  if (!v20)
  {
    *(v2 + 23088) = 0;
LABEL_36:
    aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_above");
    result = malloc_type_malloc(v16 | 0x27u, 0x5F484EBFuLL);
    if (result)
    {
      goto LABEL_37;
    }

LABEL_39:
    *(v2 + 23096) = 0;
LABEL_40:
    result = aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_below");
    goto LABEL_41;
  }

  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v21 - 8) = v20;
  *(v2 + 23088) = v21;
  if (!v21)
  {
    goto LABEL_36;
  }

  result = malloc_type_malloc(v16 | 0x27u, 0x5F484EBFuLL);
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_37:
  v22 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v22 - 8) = result;
  *(v2 + 23096) = v22;
  if (!v22)
  {
    goto LABEL_40;
  }

LABEL_41:
  v6[657] = v16;
LABEL_42:
  v6[656] = v15;
  if (v3)
  {
    return result;
  }

  v23 = *(*(v2 + 24680) + 96);
  if (v23)
  {
    v24 = v12 + 1;
  }

  else
  {
    v24 = v12;
  }

  v25 = ((v24 >> (v23 != 0)) + 39) & 0xFFFFFFE0;
  v26 = (v25 * v14) << v13;
  v27 = *(v2 + 23152);
  if (v26 != v6[673] || v27 == 0)
  {
    if (!v27)
    {
      v29 = *(v2 + 23160);
      if (!v29)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else if (*(v2 + 23160))
  {
    goto LABEL_70;
  }

  free(*(v27 - 8));
  v29 = *(v2 + 23160);
  if (v29)
  {
LABEL_53:
    free(*(v29 - 8));
  }

LABEL_54:
  if (v26 < 0)
  {
    *(v2 + 23152) = 0;
    aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_above");
    goto LABEL_67;
  }

  v30 = malloc_type_malloc(v26 | 0x27u, 0x5F484EBFuLL);
  if (!v30)
  {
    *(v2 + 23152) = 0;
LABEL_64:
    aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_above");
    result = malloc_type_malloc(v26 | 0x27u, 0x5F484EBFuLL);
    if (result)
    {
      goto LABEL_65;
    }

LABEL_67:
    *(v2 + 23160) = 0;
LABEL_68:
    result = aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_below");
    goto LABEL_69;
  }

  v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v31 - 8) = v30;
  *(v2 + 23152) = v31;
  if (!v31)
  {
    goto LABEL_64;
  }

  result = malloc_type_malloc(v26 | 0x27u, 0x5F484EBFuLL);
  if (!result)
  {
    goto LABEL_67;
  }

LABEL_65:
  v32 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v32 - 8) = result;
  *(v2 + 23160) = v32;
  if (!v32)
  {
    goto LABEL_68;
  }

LABEL_69:
  v6[673] = v26;
  v23 = *(*(v2 + 24680) + 96);
LABEL_70:
  v6[672] = v25;
  v4 = v23 == 0;
  v33 = v23 != 0;
  if (v4)
  {
    v34 = v12;
  }

  else
  {
    v34 = v12 + 1;
  }

  v35 = ((v34 >> v33) + 39) & 0xFFFFFFE0;
  v36 = (v35 * v14) << v13;
  v37 = *(v2 + 23216);
  if (v36 != v6[689] || v37 == 0)
  {
    if (!v37)
    {
      v39 = *(v2 + 23224);
      if (!v39)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

LABEL_87:
    free(*(v37 - 8));
    v39 = *(v2 + 23224);
    if (!v39)
    {
LABEL_81:
      if (v36 < 0)
      {
        *(v2 + 23216) = 0;
        aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_above");
      }

      else
      {
        v40 = malloc_type_malloc(v36 | 0x27u, 0x5F484EBFuLL);
        if (v40)
        {
          v41 = (v40 + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v41 - 8) = v40;
          *(v2 + 23216) = v41;
          if (v41)
          {
            result = malloc_type_malloc(v36 | 0x27u, 0x5F484EBFuLL);
            if (!result)
            {
              goto LABEL_94;
            }

LABEL_92:
            v42 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
            *(v42 - 8) = result;
            *(v2 + 23224) = v42;
            if (v42)
            {
LABEL_96:
              v6[689] = v36;
              goto LABEL_97;
            }

LABEL_95:
            result = aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_below");
            goto LABEL_96;
          }
        }

        else
        {
          *(v2 + 23216) = 0;
        }

        aom_internal_error(*(v2 + 48), 2, "Failed to allocate boundaries->stripe_boundary_above");
        result = malloc_type_malloc(v36 | 0x27u, 0x5F484EBFuLL);
        if (result)
        {
          goto LABEL_92;
        }
      }

LABEL_94:
      *(v2 + 23224) = 0;
      goto LABEL_95;
    }

LABEL_80:
    free(*(v39 - 8));
    goto LABEL_81;
  }

  if (!*(v2 + 23224))
  {
    goto LABEL_87;
  }

LABEL_97:
  v6[688] = v35;
  return result;
}

double av1_free_restoration_buffers(void *a1)
{
  v2 = a1[2885];
  if (v2)
  {
    free(*(v2 - 8));
  }

  a1[2885] = 0;
  v3 = a1[2893];
  if (v3)
  {
    free(*(v3 - 8));
  }

  a1[2893] = 0;
  v4 = a1[2901];
  if (v4)
  {
    free(*(v4 - 8));
  }

  a1[2901] = 0;
  v5 = a1[2906];
  if (v5)
  {
    free(*(v5 - 8));
  }

  a1[2906] = 0;
  v6 = a1[2907];
  if (v6)
  {
    free(*(v6 - 8));
  }

  a1[2907] = 0;
  v7 = a1[2886];
  if (v7)
  {
    free(*(v7 - 8));
  }

  v8 = a1[2887];
  if (v8)
  {
    free(*(v8 - 8));
  }

  a1[2886] = 0;
  a1[2887] = 0;
  v9 = a1[2894];
  if (v9)
  {
    free(*(v9 - 8));
  }

  v10 = a1[2895];
  if (v10)
  {
    free(*(v10 - 8));
  }

  a1[2894] = 0;
  a1[2895] = 0;
  v11 = a1[2902];
  if (v11)
  {
    free(*(v11 - 8));
  }

  v12 = a1[2903];
  if (v12)
  {
    free(*(v12 - 8));
  }

  a1[2902] = 0;
  a1[2903] = 0;

  return aom_free_frame_buffer((a1 + 2908));
}

void av1_free_above_context_buffers(uint64_t *a1)
{
  v2 = *(a1 + 10);
  if (*(a1 + 11) >= 1)
  {
    if (v2 <= 0)
    {
      v12 = 0;
      do
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = *(v13 + 8 * v12);
          if (v14)
          {
            free(*(v14 - 8));
            v13 = *a1;
          }

          *(v13 + 8 * v12) = 0;
        }

        v15 = a1[4];
        if (v15)
        {
          v16 = *(v15 + 8 * v12);
          if (v16)
          {
            free(*(v16 - 8));
            v15 = a1[4];
          }

          *(v15 + 8 * v12) = 0;
        }

        ++v12;
      }

      while (v12 < *(a1 + 11));
    }

    else
    {
      v3 = 0;
      do
      {
        v4 = 1;
        v5 = v2;
        do
        {
          v6 = a1[v4];
          if (!v6)
          {
            break;
          }

          v7 = *(v6 + 8 * v3);
          if (v7)
          {
            free(*(v7 - 8));
            v6 = a1[v4];
          }

          *(v6 + 8 * v3) = 0;
          ++v4;
          --v5;
        }

        while (v5);
        v8 = *a1;
        if (*a1)
        {
          v9 = *(v8 + 8 * v3);
          if (v9)
          {
            free(*(v9 - 8));
            v8 = *a1;
          }

          *(v8 + 8 * v3) = 0;
        }

        v10 = a1[4];
        if (v10)
        {
          v11 = *(v10 + 8 * v3);
          if (v11)
          {
            free(*(v11 - 8));
            v10 = a1[4];
          }

          *(v10 + 8 * v3) = 0;
        }

        ++v3;
      }

      while (v3 < *(a1 + 11));
    }
  }

  if (v2 >= 1)
  {
    v17 = a1 + 1;
    do
    {
      if (*v17)
      {
        free(*(*v17 - 8));
      }

      *v17++ = 0;
      --v2;
    }

    while (v2);
  }

  if (*a1)
  {
    free(*(*a1 - 8));
  }

  *a1 = 0;
  v20 = a1[4];
  v19 = a1 + 4;
  v18 = v20;
  if (v20)
  {
    free(*(v18 - 8));
  }

  *v19 = 0;
  v19[1] = 0;
  *(v19 + 4) = 0;
}

uint64_t av1_alloc_above_context_buffers(_DWORD *a1, signed int a2, int a3, int a4)
{
  v6 = a2;
  v7 = a1;
  v8 = (a3 + 31) & 0xFFFFFFE0;
  a1[11] = a2;
  a1[12] = v8;
  a1[10] = a4;
  v37 = a2;
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = a1 + 2;
    if (a2 <= 0x3FFFFFFD)
    {
      v11 = 8 * a2;
      if (v11 <= 0x1FFFFFFE9)
      {
        v9 = 0;
        while (1)
        {
          v12 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL);
          if (!v12)
          {
            break;
          }

          v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v13 - 8) = v12;
          if (!v13)
          {
            break;
          }

          bzero(((v12 + 23) & 0xFFFFFFFFFFFFFFF0), v11);
          *&v10[2 * v9++] = v13;
          if (a4 == v9)
          {
            goto LABEL_8;
          }
        }
      }
    }

    *&v10[2 * v9] = 0;
    return 1;
  }

LABEL_8:
  if (v6 > 0x3FFFFFFD || (v14 = 8 * v37, (v15 = malloc_type_malloc(8 * v37 + 23, 0x5F484EBFuLL)) == 0) || (v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF0, *(v16 - 8) = v15, !v16))
  {
    *v7 = 0;
    return 1;
  }

  bzero(((v15 + 23) & 0xFFFFFFFFFFFFFFF0), v14);
  *v7 = v16;
  v17 = malloc_type_malloc(v14 + 23, 0x5F484EBFuLL);
  if (!v17 || (v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0, *(v18 - 8) = v17, !v18))
  {
    v7[4] = 0;
    return 1;
  }

  bzero(((v17 + 23) & 0xFFFFFFFFFFFFFFF0), v14);
  v7[4] = v18;
  v19 = v7 + 4;
  if (v6)
  {
    v20 = v6;
    if (a4 <= 0)
    {
      if (a3 <= -32 && v8 || (v24 = malloc_type_malloc(v8 | 0x17, 0x5F484EBFuLL)) == 0)
      {
        v21 = 0;
        LOBYTE(v6) = 1;
      }

      else
      {
        v21 = 0;
        v25 = v6 - 1;
        LOBYTE(v6) = 1;
        while (1)
        {
          v26 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v26 - 8) = v24;
          if (!v26)
          {
            break;
          }

          bzero(((v24 + 23) & 0xFFFFFFFFFFFFFFF0), v8);
          *(*v7 + 8 * v21) = v26;
          v27 = malloc_type_malloc(v8 | 0x17, 0x5F484EBFuLL);
          if (!v27 || (v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF0, *(v28 - 8) = v27, !v28))
          {
LABEL_47:
            v7 += 4;
            break;
          }

          bzero(((v27 + 23) & 0xFFFFFFFFFFFFFFF0), v8);
          *(*v19 + 8 * v21) = v28;
          v29 = v21 + 1;
          LOBYTE(v6) = v21 + 1 < v37;
          if (v25 == v21)
          {
            return v6 & 1;
          }

          v24 = malloc_type_malloc(v8 | 0x17, 0x5F484EBFuLL);
          ++v21;
          if (!v24)
          {
            v21 = v29;
            break;
          }
        }
      }
    }

    else
    {
      if (a3 <= -32 && v8)
      {
        v21 = 0;
        v22 = 0;
        LOBYTE(v6) = 1;
      }

      else
      {
        v21 = 0;
        LOBYTE(v6) = 1;
        v30 = a4;
LABEL_34:
        v22 = 0;
        while (1)
        {
          v31 = malloc_type_malloc(v8 | 0x17, 0x5F484EBFuLL);
          if (!v31)
          {
            break;
          }

          v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v32 - 8) = v31;
          if (!v32)
          {
            break;
          }

          bzero(((v31 + 23) & 0xFFFFFFFFFFFFFFF0), v8);
          *(v7[++v22] + 8 * v21) = v32;
          if (v30 == v22)
          {
            v33 = malloc_type_malloc(v8 | 0x17, 0x5F484EBFuLL);
            if (!v33)
            {
              goto LABEL_45;
            }

            v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v34 - 8) = v33;
            if (!v34)
            {
              goto LABEL_45;
            }

            bzero(((v33 + 23) & 0xFFFFFFFFFFFFFFF0), v8);
            *(*v7 + 8 * v21) = v34;
            v35 = malloc_type_malloc(v8 | 0x17, 0x5F484EBFuLL);
            if (!v35)
            {
              goto LABEL_47;
            }

            v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v36 - 8) = v35;
            if (!v36)
            {
              goto LABEL_47;
            }

            bzero(((v35 + 23) & 0xFFFFFFFFFFFFFFF0), v8);
            *(*v19 + 8 * v21++) = v36;
            LOBYTE(v6) = v21 < v37;
            if (v21 != v20)
            {
              goto LABEL_34;
            }

            return v6 & 1;
          }
        }
      }

      v7 += v22 + 1;
    }

LABEL_45:
    *(*v7 + 8 * v21) = 0;
  }

  return v6 & 1;
}

uint64_t av1_alloc_context_buffers(uint64_t a1)
{
  (*(a1 + 608))(a1 + 520);
  v2 = (*(a1 + 532) + 31) & 0xFFFFFFFFFFFFFFE0;
  v3 = v2 * *(a1 + 580);
  v4 = v2 / mi_size_wide_0[*(a1 + 560)] * *(a1 + 556);
  if (*(a1 + 552) >= v4 && *(a1 + 576) >= v3)
  {
    return 0;
  }

  (*(a1 + 592))(a1 + 520);
  if (v4 <= 0x2E8BA2E && (v5 = malloc_type_malloc(176 * v4 + 23, 0x5F484EBFuLL)) != 0 && (v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0, *(v6 - 8) = v5, v6))
  {
    bzero(((v5 + 23) & 0xFFFFFFFFFFFFFFF0), 176 * v4);
    *(a1 + 544) = v6;
    *(a1 + 552) = v4;
    if (v3 <= 0x3FFFFFFD && (v7 = malloc_type_malloc((8 * v3) | 0x17, 0x5F484EBFuLL)) != 0 && (v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF0, *(v8 - 8) = v7, v8))
    {
      bzero(((v7 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v3);
      *(a1 + 568) = v8;
      v9 = malloc_type_malloc(v3 | 0x17, 0x5F484EBFuLL);
      if (v9)
      {
        v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v10 - 8) = v9;
        if (v10)
        {
          bzero(((v9 + 23) & 0xFFFFFFFFFFFFFFF0), v3);
          result = 0;
          *(a1 + 584) = v10;
          *(a1 + 576) = v3;
          return result;
        }
      }

      v12 = 584;
    }

    else
    {
      v12 = 568;
    }
  }

  else
  {
    v12 = 544;
  }

  *(a1 + v12) = 0;
  (*(a1 + 608))(a1 + 520, 0, 0, 0);
  v13 = *(a1 + 592);
  if (v13)
  {
    v13(a1 + 520);
  }

  av1_free_above_context_buffers((a1 + 25304));
  return 1;
}

uint64_t aom_codec_control(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    return 8;
  }

  if (!a2)
  {
    *(a1 + 16) = 8;
    return 8;
  }

  v9 = *(a1 + 8);
  if (v9 && (v10 = *(a1 + 48)) != 0 && (v11 = *(v9 + 40)) != 0)
  {
    v12 = (v11 + 8);
    v13 = *(v12 - 2);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (*v12)
    {
LABEL_8:
      while (v13 != a2)
      {
        v12 += 4;
        v13 = *(v12 - 2);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      result = (*v12)(*(a1 + 48), &a9);
      *(a1 + 16) = result;
    }

    else
    {
      *(a1 + 16) = 1;
      result = 1;
      *v10 = "Invalid control ID";
    }
  }

  else
  {
    *(a1 + 16) = 1;
    return 1;
  }

  return result;
}

uint64_t aom_set_error(uint64_t result, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *result = a2;
  *(result + 4) = 0;
  if (a3)
  {
    *(result + 4) = 1;
    v9 = result;
    result = vsnprintf((result + 8), 0xC7uLL, a3, &a9);
    *(v9 + 207) = 0;
  }

  return result;
}

uint64_t aom_internal_error(uint64_t result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = result;
  *result = a2;
  *(result + 4) = 0;
  if (a3)
  {
    *(result + 4) = 1;
    result = vsnprintf((result + 8), 0xC7uLL, a3, va);
    *(v3 + 207) = 0;
  }

  if (*(v3 + 208))
  {
    longjmp((v3 + 212), *v3);
  }

  return result;
}

uint64_t aom_scaled_2d_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v39[1080] = *MEMORY[0x277D85DE8];
  v20 = (v18 + (a11 - 1) * a9) >> 4;
  if (a10 >= 1 && v20 >= -7)
  {
    v22 = 0;
    v23 = result - 3 * v12 - 3;
    v24 = v20 + 7;
    v25 = v39;
    do
    {
      v26 = 0;
      v27 = v16;
      do
      {
        v19.i64[0] = *(v23 + (v27 >> 4));
        v28 = *(v15 + 16 * (v27 & 0xF));
        v19 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v28), vqtbl1q_s8(v19, xmmword_273B8E7C0)), vmovl_s16(*v28.i8), vqtbl1q_s8(v19, xmmword_273B8E7D0));
        v19.i32[0] = vaddvq_s32(v19);
        LODWORD(result) = ((v19.i32[0] + 64) >> 7) & ~((v19.i32[0] + 64) >> 31);
        if (result >= 255)
        {
          result = 255;
        }

        else
        {
          result = result;
        }

        *(v25 + v26) = result;
        v27 += v17;
        ++v26;
      }

      while (a10 != v26);
      v23 += v12;
      v25 += 8;
    }

    while (v22++ != v24);
  }

  if (a10 >= 1 && a11 >= 1)
  {
    v31 = 0;
    v32 = v39;
    do
    {
      v33 = v13;
      v34 = a11;
      v35 = v18;
      do
      {
        v36 = &v32[8 * (v35 >> 4)];
        v37 = (v15 + 16 * (v35 & 0xF));
        LODWORD(v36) = v37[1] * v36[64] + *v37 * *v36 + v37[2] * v36[128] + v37[3] * v36[192] + v37[4] * v36[256] + v37[5] * v36[320] + v37[6] * v36[384] + v37[7] * v36[448] + 64;
        result = (v36 >> 7);
        v38 = result & ~(v36 >> 31);
        if (v38 >= 255)
        {
          LOBYTE(v38) = -1;
        }

        *v33 = v38;
        v35 += a9;
        v33 += v14;
        --v34;
      }

      while (v34);
      v32 = (v32 + 1);
      ++v13;
      ++v31;
    }

    while (v31 != a10);
  }

  return result;
}

char *aom_convolve8_horiz_neon(char *result, uint64_t a2, int8x8_t *a3, uint64_t a4, unsigned __int16 *a5, int8x8_t a6, int8x8_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v12 = a12;
  if (a5[7] | *a5 || a5[6] | a5[1])
  {
    v13 = (result - 3);
    v14 = vshrq_n_s16(*a5, 1uLL);
    if (a12 == 4)
    {
      v15 = 0;
      v16 = *(result - 3);
      v17 = (v13 + a2);
      v18 = *v17;
      v19 = (v17 + a2);
      v20 = *(v19 + a2);
      v21 = vtrn1_s8(v16, v18);
      v22 = vtrn2_s8(v16, v18);
      v23 = vtrn1_s8(*v19, v20);
      v24 = vtrn2_s8(*v19, v20);
      v25 = vtrn1_s16(v21, v23);
      v26 = vtrn2_s16(v21, v23);
      v27 = vtrn1_s16(v22, v24);
      v28 = vtrn2_s16(v22, v24);
      v29 = vmovl_u8(v25);
      v30 = vmovl_u8(v27);
      v31 = vmovl_u8(v26);
      v32.i64[0] = vmovl_u8(v28).u64[0];
      v33 = vextq_s8(v29, v29, 8uLL).u64[0];
      v34 = vextq_s8(v30, v30, 8uLL).u64[0];
      v35 = vextq_s8(v31, v31, 8uLL).u64[0];
      *v46.i8 = vdup_lane_s16(*v14.i8, 0);
      *v43.i8 = vdup_lane_s16(*v14.i8, 1);
      *v42.i8 = vdup_lane_s16(*v14.i8, 2);
      *v41.i8 = vdup_lane_s16(*v14.i8, 3);
      v36 = vdupq_laneq_s16(v14, 5);
      v37 = vdupq_laneq_s16(v14, 6);
      v38.i64[0] = v37.i64[0];
      v38.i64[1] = v36.i64[0];
      v39.i64[0] = v36.i64[0];
      v39.u64[1] = vdup_laneq_s16(v14, 4);
      v40.i64[0] = v39.i64[1];
      v40.i64[1] = v41.i64[0];
      v41.i64[1] = v42.i64[0];
      v42.i64[1] = v43.i64[0];
      v43.i64[1] = v46.i64[0];
      v44 = vdupq_laneq_s16(v14, 7);
      v45.i64[0] = v46.i64[0];
      v45.i64[1] = v37.i64[0];
      v46.i64[1] = v39.i64[1];
      do
      {
        v47 = *&result[v15 + 4];
        v48 = *&result[a2 + 4 + v15];
        v49 = *&result[2 * a2 + 4 + v15];
        v50 = *&result[3 * a2 + 4 + v15];
        v51 = vtrn1_s8(v47, v48);
        v52 = vtrn2_s8(v47, v48);
        v53 = vtrn1_s8(v49, v50);
        v54 = vtrn2_s8(v49, v50);
        v55 = vzip1_s16(v51, v53);
        v56 = vtrn2_s16(v51, v53);
        v57 = vzip1_s16(v52, v54);
        v58 = vtrn2_s16(v52, v54);
        v59.i64[0] = v34;
        v59.i64[1] = v34;
        v60.i64[0] = v35;
        v60.i64[1] = v35;
        v61.i64[0] = v33;
        v61.i64[1] = v33;
        v32.i64[1] = v32.i64[0];
        v62.i64[0] = v31.i64[0];
        v62.i64[1] = v31.i64[0];
        v30.i64[1] = v30.i64[0];
        v29.i64[1] = vmovl_u8(v55).u64[0];
        v63 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v60, v38), v59, v39), v61, v40), v32, v41), v62, v42), v30, v43), v29, v45);
        v29.i64[0] = v33;
        v33 = vmovl_u8(v57).u64[0];
        v30.i64[0] = v34;
        v34 = vmovl_u8(v56).u64[0];
        v31.i64[1] = v29.i64[1];
        v64 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v60, v40), v59, v41), v61, v42), v32, v43), v31, v46);
        v31.i64[0] = v35;
        v35 = vmovl_u8(v58).u64[0];
        v32 = vmovl_u8(vzip1_s32(v55, v57));
        v65 = vqrshrun_n_s16(vmlaq_s16(v63, v32, v44), 6uLL);
        *v32.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v64, v32, v36), vmovl_u8(vzip1_s32(v57, v56)), v37), vmovl_u8(vzip1_s32(v56, v58)), v44), 6uLL);
        v66 = vtrn1_s16(v65, *v32.i8);
        *v32.i8 = vtrn2_s16(v65, *v32.i8);
        v67 = vzip1_s32(v66, *v32.i8);
        *v32.i8 = vzip2_s32(v66, *v32.i8);
        v68 = vtrn1_s8(v67, *v32.i8);
        a3->i32[v15 / 4] = v68.i32[0];
        *v32.i8 = vtrn2_s8(v67, *v32.i8);
        *(a3->i32 + 2 * a4 + v15) = v68.i32[1];
        *(a3->i32 + a4 + v15) = v32.i32[0];
        *(a3->i32 + 2 * a4 + a4 + v15) = v32.i32[1];
        v15 += 4;
        v32.i64[0] = v29.i64[1];
      }

      while (a11 != v15);
    }

    else if (a11 == 4)
    {
      v69 = vdupq_lane_s16(*v14.i8, 0);
      v70 = vdupq_lane_s16(*v14.i8, 1);
      v71 = vdupq_lane_s16(*v14.i8, 2);
      v72 = vdupq_lane_s16(*v14.i8, 3);
      v73 = vdupq_laneq_s16(v14, 4);
      v74 = a12 + 8;
      v75 = vdupq_laneq_s16(v14, 5);
      v76 = vdupq_laneq_s16(v14, 6);
      v77 = vdupq_laneq_s16(v14, 7);
      v78 = (result + 4);
      do
      {
        *v79.i8 = *(v78 - 7);
        v80 = (&v78[-1] + a2 + 1);
        v81.i64[0] = *v80;
        result = v80 + a2;
        v82.i64[0] = *(v80 + a2);
        v83 = v80 + a2 + a2;
        v84.i64[0] = *v83;
        v85 = &v83[a2 + a2];
        v86 = &v85[a2 + a2];
        v79.i64[1] = *&v83[a2];
        v81.i64[1] = *v85;
        v87 = vtrn1q_s8(v79, v81);
        v82.i64[1] = *&v85[a2];
        v84.i64[1] = *v86;
        v88 = vtrn1q_s8(v82, v84);
        v89 = vtrn2q_s8(v79, v81);
        v90 = vtrn2q_s8(v82, v84);
        v91 = vtrn1q_s16(v87, v88);
        v92 = vtrn2q_s16(v87, v88);
        v93 = vtrn1q_s16(v89, v90);
        v94 = vtrn2q_s16(v89, v90);
        v95 = vuzp1q_s32(v91, v93);
        v96 = vuzp2q_s32(v91, v93);
        v97 = vuzp1q_s32(v92, v94);
        v98 = vmovl_u8(*v95.i8);
        v99 = vmovl_high_u8(v95);
        v100 = vmovl_u8(vzip2_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL)));
        v101 = vmovl_u8(*v97.i8);
        v102 = vzip1_s32(*v78, *&v83[a2 + 7]);
        v103 = vmovl_high_u8(v97);
        *v92.i8 = vzip1_s32(*(v78 + a2), *(v85 + 7));
        *v97.i8 = vzip1_s32(*(v78 + a2 + a2), *&v85[a2 + 7]);
        *v88.i8 = vzip1_s32(*(v83 + 7), *(v86 + 7));
        v104 = vtrn1_s16(v102, *v97.i8);
        v105 = vtrn2_s16(v102, *v97.i8);
        v106 = vmovl_u8(*v96.i8);
        v107 = vtrn1_s16(*v92.i8, *v88.i8);
        *v92.i8 = vtrn2_s16(*v92.i8, *v88.i8);
        *v88.i8 = vtrn1_s8(v104, v107);
        v108 = vtrn2_s8(v104, v107);
        v109 = vtrn1_s8(v105, *v92.i8);
        v110 = vmovl_high_u8(v96);
        *v96.i8 = vtrn2_s8(v105, *v92.i8);
        v111 = vmovl_u8(*v88.i8);
        v112 = vmovl_u8(v108);
        v113 = vmovl_u8(v109);
        v114 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v76, v100), v70, v99), v69, v98), v71, v101), v72, v103), v73, v106), v75, v110), v77, v111), 6uLL);
        *v98.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v75, v100), v70, v101), v69, v99), v71, v103), v72, v106), v73, v110), v76, v111), v77, v112), 6uLL);
        v115 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v73, v100), v70, v103), v69, v101), v71, v106), v72, v110), v75, v111), v76, v112), v77, v113);
        v116 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v72, v100), v70, v106), v69, v103), v71, v110);
        *v103.i8 = vqrshrun_n_s16(v115, 6uLL);
        *v116.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v116, v73, v111), v75, v112), v76, v113), v77, vmovl_u8(*v96.i8)), 6uLL);
        *v96.i8 = vtrn1_s8(v114, *v98.i8);
        *v113.i8 = vtrn2_s8(v114, *v98.i8);
        *v106.i8 = vtrn1_s8(*v103.i8, *v116.i8);
        *v116.i8 = vtrn2_s8(*v103.i8, *v116.i8);
        *v103.i8 = vtrn1_s16(*v96.i8, *v106.i8);
        *v96.i8 = vtrn2_s16(*v96.i8, *v106.i8);
        *v106.i8 = vtrn1_s16(*v113.i8, *v116.i8);
        a3->i32[0] = v103.i32[0];
        a3->i32[a4] = v103.i32[1];
        *(a3->i32 + a4) = v106.i32[0];
        *v116.i8 = vtrn2_s16(*v113.i8, *v116.i8);
        *(a3->i32 + 5 * a4) = v106.i32[1];
        *(a3->i32 + 2 * a4) = v96.i32[0];
        *(a3->i32 + 6 * a4) = v96.i32[1];
        *(a3->i32 + 3 * a4) = v116.i32[0];
        *(a3->i32 + 7 * a4) = v116.i32[1];
        a3 += a4;
        v74 -= 8;
        v78 += a2;
      }

      while (v74 > 8);
    }

    else
    {
      v117 = 8 * a2;
      v118 = vdupq_lane_s16(*v14.i8, 0);
      v119 = vdupq_lane_s16(*v14.i8, 1);
      v120 = vdupq_lane_s16(*v14.i8, 2);
      v121 = vdupq_lane_s16(*v14.i8, 3);
      v122 = vdupq_laneq_s16(v14, 4);
      v123 = vdupq_laneq_s16(v14, 5);
      v124 = vdupq_laneq_s16(v14, 6);
      v125 = result + 4;
      v126 = vdupq_laneq_s16(v14, 7);
      do
      {
        v127 = 0;
        v128.i64[0] = *(v13 + a2);
        v129 = (v13 + a2 + a2);
        v130.i64[0] = *v129;
        v131 = (v129 + a2);
        v132.i64[0] = *v131;
        v133 = (v131 + a2);
        v134 = *v133;
        v135 = (v133 + a2);
        v136 = *v135;
        v137 = (v135 + a2);
        v138.i64[0] = *v13;
        v138.i64[1] = v134;
        v128.i64[1] = v136;
        v139 = vtrn1q_s8(v138, v128);
        v140 = vtrn2q_s8(v138, v128);
        v130.i64[1] = *v137;
        v132.i64[1] = *(v137 + a2);
        v141 = vtrn1q_s8(v130, v132);
        v142 = vtrn2q_s8(v130, v132);
        v143 = vtrn1q_s16(v139, v141);
        v144 = vtrn2q_s16(v139, v141);
        v145 = vtrn1q_s16(v140, v142);
        v146 = vtrn2q_s16(v140, v142);
        v147 = vuzp1q_s32(v143, v145);
        v148 = vuzp2q_s32(v143, v145);
        v149 = vuzp1q_s32(v144, v146);
        v150 = vzip2_s32(*v144.i8, *&vextq_s8(v144, v144, 8uLL));
        v151 = vmovl_u8(*v147.i8);
        v152 = vmovl_high_u8(v147);
        v153 = vmovl_u8(*v149.i8);
        v154 = vmovl_high_u8(v149);
        v155 = vmovl_u8(*v148.i8);
        v156 = vmovl_high_u8(v148);
        v157 = vmovl_u8(v150);
        do
        {
          v158.i64[0] = *&v125[v127 * 8];
          v159 = &v125[v127 * 8 + a2];
          v160.i64[0] = *v159;
          v161 = (v159 + a2);
          v162.i64[0] = *v161;
          v163.i64[0] = *(v161 + a2);
          v164 = (v161 + a2 + a2);
          v165 = *v164;
          v166 = (v164 + a2);
          v167 = *v166;
          v168 = (v166 + a2);
          v158.i64[1] = v165;
          v160.i64[1] = v167;
          v162.i64[1] = *v168;
          v163.i64[1] = *(v168 + a2);
          v169 = vtrn1q_s8(v158, v160);
          v170 = vtrn2q_s8(v158, v160);
          v171 = vtrn1q_s8(v162, v163);
          v172 = vtrn2q_s8(v162, v163);
          v173 = vtrn1q_s16(v169, v171);
          v174 = vtrn1q_s16(v170, v172);
          v175 = vtrn2q_s16(v169, v171);
          v176 = vtrn2q_s16(v170, v172);
          v177 = vuzp1q_s32(v173, v174);
          v178 = vuzp2q_s32(v173, v174);
          v179 = vuzp1q_s32(v175, v176);
          v180 = vuzp2q_s32(v175, v176);
          v181 = vmovl_u8(*v177.i8);
          v182 = vmulq_s16(v151, v118);
          v151 = vmovl_high_u8(v177);
          v183 = vmlaq_s16(vmlaq_s16(v182, v152, v119), v153, v120);
          v184 = vmulq_s16(v152, v118);
          v152 = vmovl_u8(*v179.i8);
          v185 = vmlaq_s16(v184, v153, v119);
          v186 = vmulq_s16(v153, v118);
          v153 = vmovl_high_u8(v179);
          v187 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v183, v154, v121), v155, v122), v156, v123), v157, v124);
          v188 = vmlaq_s16(vmlaq_s16(v185, v154, v120), v155, v121);
          v189 = vmlaq_s16(v186, v154, v119);
          v190 = vmulq_s16(v154, v118);
          v154 = vmovl_u8(*v178.i8);
          v191 = vmlaq_s16(vmlaq_s16(v188, v156, v122), v157, v123);
          v192 = vmlaq_s16(v189, v155, v120);
          v193 = vmlaq_s16(v190, v155, v119);
          v194 = vmulq_s16(v155, v118);
          v155 = vmovl_high_u8(v178);
          v195 = vmlaq_s16(vmlaq_s16(v192, v156, v121), v157, v122);
          v196 = vmlaq_s16(v193, v156, v120);
          v197 = vmlaq_s16(v194, v156, v119);
          v198 = vmulq_s16(v156, v118);
          v156 = vmovl_u8(*v180.i8);
          v199 = vmlaq_s16(v196, v157, v121);
          v200 = vmlaq_s16(v197, v157, v120);
          v201 = vmlaq_s16(v198, v157, v119);
          v202 = vmulq_s16(v157, v118);
          v157 = vmovl_high_u8(v180);
          *v180.i8 = vqrshrun_n_s16(vmlaq_s16(v187, v126, v181), 6uLL);
          *v187.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v191, v124, v181), v126, v151), 6uLL);
          *v191.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v195, v123, v181), v124, v151), v126, v152), 6uLL);
          *v195.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v199, v122, v181), v123, v151), v124, v152), v126, v153), 6uLL);
          v203 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v202, v119, v181), v120, v151), v121, v152), v122, v153), v123, v154), v124, v155), v126, v156);
          v204 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v119, v151), v118, v181), v120, v152), v121, v153), v122, v154), v123, v155), v124, v156), v126, v157);
          v205 = vqrshrun_high_n_s16(*v180.i8, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v200, v121, v181), v122, v151), v123, v152), v124, v153), v126, v154), 6uLL);
          v206 = vqrshrun_high_n_s16(*v187.i8, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v201, v120, v181), v121, v151), v122, v152), v123, v153), v124, v154), v126, v155), 6uLL);
          v207 = vtrn1q_s8(v205, v206);
          v208 = vtrn2q_s8(v205, v206);
          v209 = vqrshrun_high_n_s16(*v191.i8, v203, 6uLL);
          v210 = vqrshrun_high_n_s16(*v195.i8, v204, 6uLL);
          v211 = vtrn1q_s8(v209, v210);
          v212 = vtrn2q_s8(v209, v210);
          v213 = vtrn1q_s16(v207, v211);
          v214 = vtrn2q_s16(v207, v211);
          v215 = vtrn1q_s16(v208, v212);
          v216 = vtrn2q_s16(v208, v212);
          v217 = vuzp1q_s32(v213, v215);
          v218 = vuzp2q_s32(v213, v215);
          v219 = vuzp1q_s32(v214, v216);
          v220 = vuzp2q_s32(v214, v216);
          a3[v127] = *v217.i8;
          v221 = (&a3[v127] + a4);
          *v221 = vextq_s8(v217, v217, 8uLL).u64[0];
          v222 = (v221 + a4);
          v223 = (v222 + a4 + a4);
          *v222 = *v219.i8;
          *(v222 + a4) = vextq_s8(v219, v219, 8uLL).u64[0];
          v224 = (v223 + a4 + a4);
          ++v127;
          *v223 = *v218.i8;
          *(v223 + a4) = vextq_s8(v218, v218, 8uLL).u64[0];
          *v224 = *v220.i8;
          *(v224 + a4) = vextq_s8(v220, v220, 8uLL).u64[0];
        }

        while (a11 != (v127 * 8));
        v13 = (v13 + v117);
        a3 += a4;
        v125 += v117;
        v225 = __OFSUB__(v12, 8);
        v12 -= 8;
      }

      while (!((v12 < 0) ^ v225 | (v12 == 0)));
    }
  }

  else if (a5[5] | a5[2])
  {
    v226 = vshr_n_s16(*(a5 + 2), 1uLL);
    v227 = vdupq_lane_s16(v226, 0);
    v228 = vdupq_lane_s16(v226, 1);
    v229 = vdupq_lane_s16(v226, 2);
    if (a11 == 4)
    {
      v230 = vdupq_lane_s16(v226, 3);
      v231 = a12 + 2;
      do
      {
        v232.i32[0] = *(result - 1);
        v232.i32[1] = *&result[a2 - 1];
        v233.i32[0] = *result;
        v233.i32[1] = *&result[a2];
        v234.i32[0] = *(result + 1);
        v234.i32[1] = *&result[a2 + 1];
        v235.i32[0] = *(result + 2);
        v235.i32[1] = *&result[a2 + 2];
        v236 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v227, vmovl_u8(v232)), v228, vmovl_u8(v233)), v229, vmovl_u8(v234)), v230, vmovl_u8(v235)), 6uLL);
        a3->i32[0] = v236.i32[0];
        *(a3->i32 + a4) = v236.i32[1];
        a3 = (a3 + 2 * a4);
        v231 -= 2;
        result += 2 * a2;
      }

      while (v231 > 2);
    }

    else
    {
      v241 = 2 * a2;
      v242 = (result + 2);
      v243 = vdupq_lane_s16(v226, 3);
      v244 = &result[a2];
      do
      {
        v245 = v244;
        v246 = v242;
        v247 = a3;
        v248 = a11;
        do
        {
          v249 = *(v246 - 3);
          v250 = *(v246 - 2);
          v251 = *(v246 - 1);
          v252 = *v246++;
          v253 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v227, vmovl_u8(v249)), v228, vmovl_u8(v250)), v229, vmovl_u8(v251)), v243, vmovl_u8(v252)), 6uLL);
          v254 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v227, vmovl_u8(*(v245 - 1))), v228, vmovl_u8(*v245)), v229, vmovl_u8(*(v245 + 1))), v243, vmovl_u8(*(v245 + 2))), 6uLL);
          *v247 = v253;
          *(v247++ + a4) = v254;
          v245 += 8;
          v248 -= 8;
        }

        while (v248);
        a3 = (a3 + 2 * a4);
        v242 = (v242 + v241);
        v244 += v241;
        v225 = __OFSUB__(v12, 2);
        v12 -= 2;
      }

      while (!((v12 < 0) ^ v225 | (v12 == 0)));
    }
  }

  else
  {
    a6.i8[0] = *(a5 + 6);
    a7.i8[0] = *(a5 + 8);
    if (a11 == 4)
    {
      v255 = a12 + 4;
      v256 = a2 + 2 * a2;
      v257 = vdup_lane_s8(a6, 0);
      v258 = vdup_lane_s8(a7, 0);
      do
      {
        v259.i32[0] = *result;
        v259.i32[1] = *&result[a2];
        v260.i32[0] = *(result + 1);
        v260.i32[1] = *&result[a2 + 1];
        v261.i32[0] = *&result[2 * a2];
        v261.i32[1] = *&result[v256];
        v262.i32[0] = *&result[2 * a2 + 1];
        v262.i32[1] = *&result[v256 + 1];
        v263 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v260, v258), v259, v257), 7uLL);
        v264 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v262, v258), v261, v257), 7uLL);
        a3->i32[0] = v263.i32[0];
        *(a3->i32 + a4) = v263.i32[1];
        v265 = (a3 + a4 + a4);
        v265->i32[0] = v264.i32[0];
        v266 = (v265 + a4);
        v266->i32[0] = v264.i32[1];
        result += 4 * a2;
        v255 -= 4;
        a3 = (v266 + a4);
      }

      while (v255 > 4);
    }

    else if (a11 == 8)
    {
      v237 = a12 + 2;
      v238 = vdup_lane_s8(a6, 0);
      v239 = vdup_lane_s8(a7, 0);
      do
      {
        v240 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&result[a2 + 1], v239), *&result[a2], v238), 7uLL);
        *a3 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*(result + 1), v239), *result, v238), 7uLL);
        *(a3 + a4) = v240;
        a3 = (a3 + 2 * a4);
        v237 -= 2;
        result += a2 + a2;
      }

      while (v237 > 2);
    }

    else
    {
      v267 = vdupq_lane_s8(a6, 0);
      v268 = vdupq_lane_s8(a7, 0);
      do
      {
        v269 = 0;
        do
        {
          *a3[v269 / 8].i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*&result[v269 + 1], *v268.i8), *&result[v269], *v267.i8), 7uLL), vmlal_high_u8(vmull_high_u8(*&result[v269 + 1], v268), *&result[v269], v267), 7uLL);
          v269 += 16;
        }

        while (a11 != v269);
        result += a2;
        a3 = (a3 + a4);
        v225 = __OFSUB__(v12--, 1);
      }

      while (!((v12 < 0) ^ v225 | (v12 == 0)));
    }
  }

  return result;
}

uint8x8_t *aom_convolve8_vert_neon(uint8x8_t *result, uint64_t a2, int8x8_t *a3, uint64_t a4, int8x8_t a5, int8x8_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, int a11, int a12)
{
  v13 = a11;
  v12 = a12;
  v14 = (result - 3 * a2);
  if (a9[7] | *a9 || a9[6] | a9[1])
  {
    v15 = vshrq_n_s16(*a9, 1uLL);
    if (a11 == 4)
    {
      v16 = (v14 + a2 + a2);
      v17 = *v16;
      v18 = (v16 + a2);
      v19 = *v18;
      v20 = (v18 + a2);
      v21 = *v20;
      v22 = (v20 + a2);
      v23.i64[0] = vmovl_u8(*v14).u64[0];
      v24.i64[0] = vmovl_u8(*(v14 + a2)).u64[0];
      v25.i64[0] = vmovl_u8(v17).u64[0];
      v26.i64[0] = vmovl_u8(v19).u64[0];
      v27 = vmovl_u8(v21).u64[0];
      v28 = vmovl_u8(*v22).u64[0];
      v29 = vmovl_u8(*(v22 + a2)).u64[0];
      *v41.i8 = vdup_lane_s16(*v15.i8, 0);
      *v37.i8 = vdup_lane_s16(*v15.i8, 1);
      *v36.i8 = vdup_lane_s16(*v15.i8, 2);
      *v35.i8 = vdup_lane_s16(*v15.i8, 3);
      v30 = vdupq_laneq_s16(v15, 5);
      v31 = vdupq_laneq_s16(v15, 6);
      v32.i64[0] = v31.i64[0];
      v32.i64[1] = v30.i64[0];
      v33.i64[0] = v30.i64[0];
      v33.u64[1] = vdup_laneq_s16(v15, 4);
      v34.i64[0] = v33.i64[1];
      v34.i64[1] = v35.i64[0];
      v35.i64[1] = v36.i64[0];
      v36.i64[1] = v37.i64[0];
      v37.i64[1] = v41.i64[0];
      v38 = vdupq_laneq_s16(v15, 7);
      v39 = (&v14[a2] - a2);
      v40.i64[0] = v41.i64[0];
      v40.i64[1] = v31.i64[0];
      v41.i64[1] = v33.i64[1];
      do
      {
        v42 = *v39;
        v43 = (v39 + a2);
        v44 = *v43;
        v45 = (v43 + a2);
        v46 = *v45;
        v47 = (v45 + a2);
        v48.i64[0] = v28;
        v48.i64[1] = v28;
        v49.i64[0] = v29;
        v49.i64[1] = v29;
        v50.i64[0] = v27;
        v50.i64[1] = v27;
        v26.i64[1] = v26.i64[0];
        v51.i64[0] = v25.i64[0];
        v51.i64[1] = v25.i64[0];
        v24.i64[1] = v24.i64[0];
        v23.i64[1] = vmovl_u8(v42).u64[0];
        v52 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v49, v32), v48, v33), v50, v34), v26, v35), v51, v36), v24, v37), v23, v40);
        v23.i64[0] = v27;
        v27 = vmovl_u8(v44).u64[0];
        v24.i64[0] = v28;
        v28 = vmovl_u8(v46).u64[0];
        v25.i64[1] = v23.i64[1];
        v53 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v49, v34), v48, v35), v50, v36), v26, v37), v25, v41);
        v25.i64[0] = v29;
        v29 = vmovl_u8(*v47).u64[0];
        v26 = vmovl_u8(vzip1_s32(v42, v44));
        v54 = vqrshrun_n_s16(vmlaq_s16(v52, v26, v38), 6uLL);
        *v26.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v53, v26, v30), vmovl_u8(vzip1_s32(v44, v46)), v31), vmovl_u8(vzip1_s32(v46, *v47)), v38), 6uLL);
        a3->i32[0] = v54.i32[0];
        *(a3->i32 + a4) = v54.i32[1];
        v55 = (a3 + a4 + a4);
        v55->i32[0] = v26.i32[0];
        v56 = (v55 + a4);
        v56->i32[0] = v26.i32[1];
        v39 = (v47 + a2);
        a3 = (v56 + a4);
        v26.i64[0] = v23.i64[1];
        v12 -= 4;
      }

      while (v12);
    }

    else
    {
      v57 = vdupq_lane_s16(*v15.i8, 0);
      v58 = vdupq_lane_s16(*v15.i8, 1);
      v59 = vdupq_lane_s16(*v15.i8, 2);
      v60 = vdupq_lane_s16(*v15.i8, 3);
      v61 = vdupq_laneq_s16(v15, 4);
      v62 = vdupq_laneq_s16(v15, 5);
      v63 = vdupq_laneq_s16(v15, 6);
      v64 = vdupq_laneq_s16(v15, 7);
      do
      {
        v65 = (v14 + a2 + a2);
        v66 = *v65;
        v67 = (v65 + a2);
        v68 = *v67;
        v69 = (v67 + a2);
        v70 = *v69;
        v71 = (v69 + a2);
        v72 = vmovl_u8(*v14);
        v73 = vmovl_u8(*(v14 + a2));
        v74 = vmovl_u8(v66);
        v75 = vmovl_u8(v68);
        v76 = vmovl_u8(v70);
        v77 = vmovl_u8(*v71);
        v78 = vmovl_u8(*(v71 + a2));
        v79 = (v14 + 7 * a2);
        v80 = a12;
        v81 = a3;
        do
        {
          v82 = *v79;
          v83 = (v79 + a2);
          v84 = *v83;
          v85 = (v83 + a2);
          v86 = *v85;
          v87 = (v85 + a2);
          v88 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v72, v57), v73, v58), v74, v59), v75, v60);
          v89 = vmlaq_s16(vmlaq_s16(vmulq_s16(v73, v57), v74, v58), v75, v59);
          v90 = vmlaq_s16(vmulq_s16(v74, v57), v75, v58);
          v91 = vmulq_s16(v75, v57);
          v75 = vmovl_u8(v82);
          v92 = vmlaq_s16(v88, v76, v61);
          v93 = vmlaq_s16(v89, v76, v60);
          v94 = vmlaq_s16(v90, v76, v59);
          v95 = vmlaq_s16(v91, v76, v58);
          v72 = v76;
          v76 = vmovl_u8(v84);
          v96 = vmlaq_s16(v92, v77, v62);
          v97 = vmlaq_s16(v93, v77, v61);
          v98 = vmlaq_s16(v94, v77, v60);
          v99 = vmlaq_s16(v95, v77, v59);
          v73 = v77;
          v77 = vmovl_u8(v86);
          v100 = vmlaq_s16(v96, v78, v63);
          v101 = vmlaq_s16(v97, v78, v62);
          v102 = vmlaq_s16(v98, v78, v61);
          v103 = vmlaq_s16(v99, v78, v60);
          v74 = v78;
          v78 = vmovl_u8(*v87);
          *v81 = vqrshrun_n_s16(vmlaq_s16(v100, v64, v75), 6uLL);
          v104 = (v81 + a4);
          *v104 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v101, v63, v75), v64, v76), 6uLL);
          v105 = (v104 + a4);
          *v105 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v102, v62, v75), v63, v76), v64, v77), 6uLL);
          v106 = (v105 + a4);
          *v106 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v103, v61, v75), v62, v76), v63, v77), v64, v78), 6uLL);
          v79 = (v87 + a2);
          v81 = (v106 + a4);
          v80 -= 4;
        }

        while (v80);
        ++v14;
        ++a3;
        v13 -= 8;
      }

      while (v13);
    }
  }

  else if (a9[5] | a9[2])
  {
    v107 = (v14 + 2 * a2);
    v108 = vshr_n_s16(*(a9 + 2), 1uLL);
    if (a11 == 4)
    {
      v109.i32[0] = v107->i32[0];
      v109.i32[1] = *(v107->i32 + a2);
      v110.i32[0] = *(v107->i32 + a2);
      v110.i32[1] = *(v107->i32 + a2 + a2);
      v111 = vmovl_u8(v109);
      v112 = vmovl_u8(v110);
      v113 = vdupq_lane_s16(v108, 0);
      v114 = vdupq_lane_s16(v108, 1);
      v115 = vdupq_lane_s16(v108, 2);
      v116 = vdupq_lane_s16(v108, 3);
      do
      {
        v117.i32[0] = *(result->i32 + a2);
        v117.i32[1] = *(result->i32 + a2 + a2);
        v118.i32[0] = *(result->i32 + 2 * a2);
        v118.i32[1] = *(result->i32 + 2 * a2 + a2);
        v119.i32[0] = *(result->i32 + 3 * a2);
        v119.i32[1] = *(result->i32 + 3 * a2 + a2);
        v120.i32[0] = result->i32[a2];
        v120.i32[1] = *(&result->i32[a2] + a2);
        v121 = vmovl_u8(v117);
        v122 = vmovl_u8(v118);
        v123 = vmlaq_s16(vmulq_s16(v112, v114), v111, v113);
        v111 = vmovl_u8(v119);
        v124 = vmovl_u8(v120);
        *v123.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(v123, v115, v121), v116, v122), 6uLL);
        *v121.i8 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v113, v121), v114, v122), v115, v111), v116, v124), 6uLL);
        a3->i32[0] = v123.i32[0];
        *(a3->i32 + a4) = v123.i32[1];
        v125 = (a3 + a4 + a4);
        v125->i32[0] = v121.i32[0];
        v126 = (v125 + a4);
        result = (result + 4 * a2);
        v126->i32[0] = v121.i32[1];
        a3 = (v126 + a4);
        v112 = v124;
        v12 -= 4;
      }

      while (v12);
    }

    else
    {
      v134 = vdupq_lane_s16(v108, 0);
      v135 = vdupq_lane_s16(v108, 1);
      v136 = vdupq_lane_s16(v108, 2);
      v137 = vdupq_lane_s16(v108, 3);
      do
      {
        v138 = vmovl_u8(*v107);
        v139 = vmovl_u8(*(v107 + a2));
        v140 = vmovl_u8(*(v107 + a2 + a2));
        v141 = (v107 + 3 * a2);
        v142 = a12;
        v143 = a3;
        do
        {
          v144 = *v141;
          v145 = (v141 + a2);
          v146 = *v145;
          v147 = (v145 + a2);
          v148 = *v147;
          v149 = (v147 + a2);
          v150 = vmovl_u8(v144);
          v151 = vmlaq_s16(vmlaq_s16(vmulq_s16(v139, v135), v140, v136), v138, v134);
          v138 = vmovl_u8(v146);
          v152 = vmovl_u8(v148);
          v153 = vmovl_u8(*v149);
          *v143 = vqrshrun_n_s16(vmlaq_s16(v151, v137, v150), 6uLL);
          v154 = (v143 + a4);
          *v154 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v139, v134), v140, v135), v136, v150), v137, v138), 6uLL);
          v155 = (v154 + a4);
          *v155 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, v134), v135, v150), v136, v138), v137, v152), 6uLL);
          v156 = (v155 + a4);
          v141 = (v149 + a2);
          *v156 = vqrshrun_n_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v134, v150), v135, v138), v136, v152), v137, v153), 6uLL);
          v143 = (v156 + a4);
          v139 = v152;
          v140 = v153;
          v142 -= 4;
        }

        while (v142);
        ++v107;
        ++a3;
        v13 -= 8;
      }

      while (v13);
    }
  }

  else
  {
    a5.i8[0] = *(a9 + 6);
    a6.i8[0] = *(a9 + 8);
    if (a11 == 4)
    {
      v157 = a12 + 4;
      v158 = vdup_lane_s8(a5, 0);
      v159 = vdup_lane_s8(a6, 0);
      do
      {
        v160.i32[0] = result->i32[0];
        v160.i32[1] = *(result->i32 + a2);
        v161.i32[0] = *(result->i32 + a2);
        v161.i32[1] = *(result->i32 + a2 + a2);
        v162.i32[0] = *(result->i32 + 2 * a2);
        v162.i32[1] = *(result->i32 + 2 * a2 + a2);
        v163.i32[0] = *(result->i32 + 3 * a2);
        v163.i32[1] = *(result->i32 + 3 * a2 + a2);
        v164 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v161, v159), v160, v158), 7uLL);
        v165 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v163, v159), v162, v158), 7uLL);
        a3->i32[0] = v164.i32[0];
        *(a3->i32 + a4) = v164.i32[1];
        v166 = (a3 + a4 + a4);
        v166->i32[0] = v165.i32[0];
        v167 = (v166 + a4);
        v167->i32[0] = v165.i32[1];
        result = (result + 4 * a2);
        v157 -= 4;
        a3 = (v167 + a4);
      }

      while (v157 > 4);
    }

    else if (a11 == 8)
    {
      v127 = a12 + 2;
      v128 = vdup_lane_s8(a5, 0);
      v129 = vdup_lane_s8(a6, 0);
      do
      {
        v130 = *result;
        v131 = *(result + a2);
        result = (result + 2 * a2);
        v132 = vmlal_u8(vmull_u8(v131, v129), v130, v128);
        v133 = vmlal_u8(vmull_u8(*result, v129), v131, v128);
        *a3 = vqrshrn_n_u16(v132, 7uLL);
        *(a3 + a4) = vqrshrn_n_u16(v133, 7uLL);
        a3 = (a3 + 2 * a4);
        v127 -= 2;
      }

      while (v127 > 2);
    }

    else
    {
      v168 = result + a2;
      v169 = vdupq_lane_s8(a5, 0);
      v170 = vdupq_lane_s8(a6, 0);
      do
      {
        v171 = 0;
        do
        {
          *a3[v171].i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*&v168[v171 * 8], *v170.i8), result[v171], *v169.i8), 7uLL), vmlal_high_u8(vmull_high_u8(*&v168[v171 * 8], v170), *result[v171].i8, v169), 7uLL);
          v171 += 2;
        }

        while (a11 != (v171 * 8));
        result = (result + a2);
        a3 = (a3 + a4);
        v168 += a2;
        v172 = __OFSUB__(v12--, 1);
      }

      while (!((v12 < 0) ^ v172 | (v12 == 0)));
    }
  }

  return result;
}

_WORD *aom_convolve_copy_neon(_WORD *result, uint64_t a2, _WORD *a3, uint64_t a4, int a5, int a6)
{
  if ((a5 & 0xF) != 0)
  {
    if ((a5 & 7) != 0)
    {
      if ((a5 & 3) != 0)
      {
        if ((a5 & 1) == 0 && a6 >= 1)
        {
          do
          {
            *a3 = *result;
            result = (result + a2);
            a3 = (a3 + a4);
            --a6;
          }

          while (a6);
        }
      }

      else if (a6 >= 1)
      {
        do
        {
          *a3 = *result;
          result = (result + a2);
          a3 = (a3 + a4);
          --a6;
        }

        while (a6);
      }
    }

    else if (a6 >= 1)
    {
      do
      {
        *a3 = *result;
        result = (result + a2);
        a3 = (a3 + a4);
        --a6;
      }

      while (a6);
    }
  }

  else if (a6 >= 1 && a5 >> 4 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      v7 = 0;
      do
      {
        *&a3[8 * v7] = *&result[8 * v7];
        ++v7;
      }

      while (a5 >> 4 != v7);
      result = (result + a2);
      a3 = (a3 + a4);
    }
  }

  return result;
}

uint64_t setup_rtcd_internal_3()
{
  result = aom_arm_cpu_caps();
  aom_convolve8_horiz = aom_convolve8_horiz_neon;
  aom_convolve8_vert = aom_convolve8_vert_neon;
  aom_dist_wtd_sad128x128_avg = aom_dist_wtd_sad128x128_avg_neon;
  aom_dist_wtd_sad128x64_avg = aom_dist_wtd_sad128x64_avg_neon;
  aom_dist_wtd_sad16x16_avg = aom_dist_wtd_sad16x16_avg_neon;
  aom_dist_wtd_sad16x32_avg = aom_dist_wtd_sad16x32_avg_neon;
  aom_dist_wtd_sad16x8_avg = aom_dist_wtd_sad16x8_avg_neon;
  aom_dist_wtd_sad32x16_avg = aom_dist_wtd_sad32x16_avg_neon;
  aom_dist_wtd_sad32x32_avg = aom_dist_wtd_sad32x32_avg_neon;
  aom_dist_wtd_sad32x64_avg = aom_dist_wtd_sad32x64_avg_neon;
  aom_dist_wtd_sad64x128_avg = aom_dist_wtd_sad64x128_avg_neon;
  aom_dist_wtd_sad64x32_avg = aom_dist_wtd_sad64x32_avg_neon;
  aom_dist_wtd_sad64x64_avg = aom_dist_wtd_sad64x64_avg_neon;
  aom_get_var_sse_sum_16x16_dual = aom_get_var_sse_sum_16x16_dual_neon;
  aom_get_var_sse_sum_8x8_quad = aom_get_var_sse_sum_8x8_quad_neon;
  aom_sad128x128 = aom_sad128x128_neon;
  aom_sad128x128_avg = aom_sad128x128_avg_neon;
  aom_sad128x128x3d = aom_sad128x128x3d_neon;
  aom_sad128x128x4d = aom_sad128x128x4d_neon;
  aom_sad128x64 = aom_sad128x64_neon;
  aom_sad128x64_avg = aom_sad128x64_avg_neon;
  aom_sad128x64x3d = aom_sad128x64x3d_neon;
  aom_sad128x64x4d = aom_sad128x64x4d_neon;
  aom_sad16x16 = aom_sad16x16_neon;
  aom_sad16x16_avg = aom_sad16x16_avg_neon;
  aom_sad16x16x3d = aom_sad16x16x3d_neon;
  aom_sad16x16x4d = aom_sad16x16x4d_neon;
  aom_sad16x32 = aom_sad16x32_neon;
  aom_sad16x32_avg = aom_sad16x32_avg_neon;
  aom_sad16x32x3d = aom_sad16x32x3d_neon;
  aom_sad16x32x4d = aom_sad16x32x4d_neon;
  aom_sad16x8 = aom_sad16x8_neon;
  aom_sad16x8_avg = aom_sad16x8_avg_neon;
  aom_sad16x8x3d = aom_sad16x8x3d_neon;
  aom_sad16x8x4d = aom_sad16x8x4d_neon;
  aom_sad32x16 = aom_sad32x16_neon;
  aom_sad32x16_avg = aom_sad32x16_avg_neon;
  aom_sad32x16x3d = aom_sad32x16x3d_neon;
  aom_sad32x16x4d = aom_sad32x16x4d_neon;
  aom_sad32x32 = aom_sad32x32_neon;
  aom_sad32x32_avg = aom_sad32x32_avg_neon;
  aom_sad32x32x3d = aom_sad32x32x3d_neon;
  aom_sad32x32x4d = aom_sad32x32x4d_neon;
  aom_sad32x64 = aom_sad32x64_neon;
  aom_sad32x64_avg = aom_sad32x64_avg_neon;
  aom_sad32x64x3d = aom_sad32x64x3d_neon;
  aom_sad32x64x4d = aom_sad32x64x4d_neon;
  aom_sad64x128 = aom_sad64x128_neon;
  aom_sad64x128_avg = aom_sad64x128_avg_neon;
  aom_sad64x128x3d = aom_sad64x128x3d_neon;
  aom_sad64x128x4d = aom_sad64x128x4d_neon;
  aom_sad64x32 = aom_sad64x32_neon;
  aom_sad64x32_avg = aom_sad64x32_avg_neon;
  aom_sad64x32x3d = aom_sad64x32x3d_neon;
  aom_sad64x32x4d = aom_sad64x32x4d_neon;
  aom_sad64x64 = aom_sad64x64_neon;
  aom_sad64x64_avg = aom_sad64x64_avg_neon;
  aom_sad64x64x3d = aom_sad64x64x3d_neon;
  aom_sad64x64x4d = aom_sad64x64x4d_neon;
  aom_sad_skip_128x128 = aom_sad_skip_128x128_neon;
  aom_sad_skip_128x128x4d = aom_sad_skip_128x128x4d_neon;
  aom_sad_skip_128x64 = aom_sad_skip_128x64_neon;
  aom_sad_skip_128x64x4d = aom_sad_skip_128x64x4d_neon;
  aom_sad_skip_16x16 = aom_sad_skip_16x16_neon;
  aom_sad_skip_16x16x4d = aom_sad_skip_16x16x4d_neon;
  aom_sad_skip_16x32 = aom_sad_skip_16x32_neon;
  aom_sad_skip_16x32x4d = aom_sad_skip_16x32x4d_neon;
  aom_sad_skip_32x16 = aom_sad_skip_32x16_neon;
  aom_sad_skip_32x16x4d = aom_sad_skip_32x16x4d_neon;
  aom_sad_skip_32x32 = aom_sad_skip_32x32_neon;
  aom_sad_skip_32x32x4d = aom_sad_skip_32x32x4d_neon;
  aom_sad_skip_32x64 = aom_sad_skip_32x64_neon;
  aom_sad_skip_32x64x4d = aom_sad_skip_32x64x4d_neon;
  aom_sad_skip_64x128 = aom_sad_skip_64x128_neon;
  aom_sad_skip_64x128x4d = aom_sad_skip_64x128x4d_neon;
  aom_sad_skip_64x32 = aom_sad_skip_64x32_neon;
  aom_sad_skip_64x32x4d = aom_sad_skip_64x32x4d_neon;
  aom_sad_skip_64x64 = aom_sad_skip_64x64_neon;
  aom_sad_skip_64x64x4d = aom_sad_skip_64x64x4d_neon;
  aom_sse = aom_sse_neon;
  aom_var_2d_u8 = aom_var_2d_u8_neon;
  aom_variance128x128 = aom_variance128x128_neon;
  aom_variance128x64 = aom_variance128x64_neon;
  aom_variance16x16 = aom_variance16x16_neon;
  aom_variance16x32 = aom_variance16x32_neon;
  aom_variance16x8 = aom_variance16x8_neon;
  aom_variance32x16 = aom_variance32x16_neon;
  aom_variance32x32 = aom_variance32x32_neon;
  aom_variance32x64 = aom_variance32x64_neon;
  aom_variance4x4 = aom_variance4x4_neon;
  aom_variance4x8 = aom_variance4x8_neon;
  aom_variance64x128 = aom_variance64x128_neon;
  aom_variance64x32 = aom_variance64x32_neon;
  aom_variance64x64 = aom_variance64x64_neon;
  aom_variance8x16 = aom_variance8x16_neon;
  aom_variance8x4 = aom_variance8x4_neon;
  aom_variance8x8 = aom_variance8x8_neon;
  return result;
}

uint64_t aom_codec_enc_init_ver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0xFFFFFFFB) != 0x19)
  {
    v5 = 3;
    goto LABEL_9;
  }

  v5 = 8;
  if (!a1 || !a2 || !a3)
  {
LABEL_9:
    if (!a1)
    {
      return v5;
    }

    goto LABEL_12;
  }

  if (*(a2 + 8) != 7)
  {
    v5 = 3;
    goto LABEL_12;
  }

  v6 = *(a2 + 16);
  if ((v6 & 2) == 0)
  {
    *(a1 + 16) = 4;
    return 4;
  }

  if ((a4 & 0x10000) != 0 && (v6 & 0x10000) == 0)
  {
    *(a1 + 16) = 4;
    return 4;
  }

  if ((a4 & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0)
    {
      *(a1 + 16) = 4;
      return 4;
    }
  }

  else if (*(a3 + 32) >= 9u)
  {
    *(a1 + 24) = "High bit-depth used without the AOM_CODEC_USE_HIGHBITDEPTH flag.";
    *(a1 + 16) = 8;
    return 8;
  }

  *a1 = *a2;
  *(a1 + 8) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 32) = a4;
  v8 = a1;
  result = (*(a2 + 24))();
  v5 = result;
  if (result)
  {
    a1 = v8;
    v9 = *(v8 + 48);
    if (v9)
    {
      *(v8 + 24) = *v9;
      v10 = *(v8 + 8);
      if (v10)
      {
        (*(v10 + 32))(v9);
        *(v8 + 48) = 0;
        *v8 = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = v5;
        return v5;
      }

LABEL_12:
      *(a1 + 16) = v5;
      return v5;
    }

    *(v8 + 24) = 0;
    *(v8 + 16) = v5;
    return v5;
  }

  else
  {
    *(v8 + 16) = 0;
  }

  return result;
}

double aom_codec_enc_config_default(uint64_t a1, char *__dst, int a3)
{
  if (a1)
  {
    if (__dst)
    {
      if ((*(a1 + 16) & 2) != 0)
      {
        v3 = *(a1 + 88);
        if (v3 >= 1)
        {
          for (i = *(a1 + 96); *i != a3; i += 226)
          {
            if (!--v3)
            {
              return result;
            }
          }

          memcpy(__dst, i, 0x300uLL);
          *(__dst + 860) = 0u;
          *(__dst + 876) = 0u;
          *(__dst + 888) = 0u;
          *(__dst + 764) = 0u;
          *(__dst + 780) = 0u;
          *(__dst + 796) = 0u;
          *(__dst + 812) = 0u;
          *(__dst + 828) = 0u;
          *(__dst + 844) = 0u;
          *&result = 0x8000000000;
          *(__dst + 194) = 4;
          *(__dst + 222) = 3;
          *(__dst + 96) = 0x8000000000;
        }
      }
    }
  }

  return result;
}

uint64_t aom_codec_get_cx_data(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      result = 0;
      v4 = 8;
      goto LABEL_9;
    }

    v3 = *(result + 8);
    if (!v3 || !*(result + 48))
    {
      result = 0;
      v4 = 1;
      goto LABEL_9;
    }

    if ((*(v3 + 16) & 2) == 0)
    {
      result = 0;
      v4 = 4;
LABEL_9:
      *(v2 + 16) = v4;
      return result;
    }

    result = (*(v3 + 112))();
    if (result && !*result)
    {
      v5 = *(v2 + 48);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(result + 8);
        if (v7 != v6)
        {
          v8 = *(result + 16);
          v9 = *(v5 + 32);
          if (v8 + v9 + *(v5 + 36) <= *(v5 + 24))
          {
            v10 = result;
            memcpy(&v6[v9], v7, v8);
            v12 = *(v10 + 16);
            v11 = *(v10 + 32);
            *(v5 + 40) = *v10;
            *(v5 + 56) = v12;
            *(v5 + 72) = v11;
            v13 = *(v10 + 48);
            v14 = *(v10 + 64);
            v15 = *(v10 + 80);
            *(v5 + 136) = *(v10 + 96);
            *(v5 + 120) = v15;
            *(v5 + 104) = v14;
            *(v5 + 88) = v13;
            v16 = *(v10 + 112);
            v17 = *(v10 + 128);
            v18 = *(v10 + 144);
            *(v5 + 200) = *(v10 + 160);
            *(v5 + 184) = v18;
            *(v5 + 168) = v17;
            *(v5 + 152) = v16;
            v19 = *(v5 + 56) + (*(v5 + 36) + *(v5 + 32));
            *(v5 + 48) = v6;
            *(v5 + 56) = v19;
            result = v5 + 40;
          }
        }
      }

      if (v6 == *(result + 8))
      {
        *(v5 + 16) = &v6[*(result + 16)];
        *(v5 + 24) -= *(result + 16);
      }
    }
  }

  return result;
}

void *img_alloc_helper_0(void *result, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, char *a9, uint64_t (*a10)(uint64_t, unint64_t), uint64_t a11)
{
  if (result)
  {
    result[20] = 0;
    *(result + 8) = 0u;
    *(result + 9) = 0u;
    *(result + 6) = 0u;
    *(result + 7) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *result = 0u;
    *(result + 1) = 0u;
  }

  if (!a2 || a3 > 0x8000000 || a4 > 0x8000000 || a5 > 0x10000 || a6 > 0x10000 || a7 > 0x10000 || a8 > 0x10000)
  {
    goto LABEL_111;
  }

  v11 = a5 <= 1 ? 1 : a5;
  v12 = (v11 - 1);
  if ((v11 & v12) != 0)
  {
    goto LABEL_111;
  }

  v13 = a6 <= 1 ? 1 : a6;
  if ((v13 & (v13 - 1)) != 0)
  {
    goto LABEL_111;
  }

  v14 = a7 <= 1 ? 1 : a7;
  if ((v14 & (v14 - 1)) != 0)
  {
    goto LABEL_111;
  }

  v15 = 12;
  if (a2 <= 768)
  {
    if (a2 <= 260)
    {
      if (a2 == 258 || a2 == 260)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (a2 != 261)
    {
      if (a2 != 262)
      {
        if (a2 == 263)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v15 = 24;
LABEL_56:
      v16 = (a2 & 0x800) == 0;
      if ((a2 & 0x800) != 0)
      {
        v17 = 16;
      }

      else
      {
        v17 = 8;
      }

      goto LABEL_59;
    }

    v15 = 16;
LABEL_62:
    v16 = (a2 & 0x800) == 0;
    if ((a2 & 0x800) != 0)
    {
      v17 = 16;
    }

    else
    {
      v17 = 8;
    }

    v18 = 1;
    goto LABEL_66;
  }

  if (a2 <= 2308)
  {
    if (a2 == 769 || a2 == 771)
    {
      goto LABEL_40;
    }

    if (a2 != 2306)
    {
      goto LABEL_39;
    }

LABEL_36:
    v15 = 24;
    goto LABEL_40;
  }

  switch(a2)
  {
    case 2309:
      v15 = 32;
      goto LABEL_62;
    case 2310:
      v15 = 48;
      goto LABEL_56;
    case 2817:
      goto LABEL_36;
  }

LABEL_39:
  v15 = 16;
LABEL_40:
  v16 = (a2 & 0x800) == 0;
  if ((a2 & 0x800) != 0)
  {
    v17 = 16;
  }

  else
  {
    v17 = 8;
  }

  v18 = 1;
  if (a2 > 770)
  {
    if (a2 > 2308)
    {
      if (a2 == 2817)
      {
        goto LABEL_66;
      }

      goto LABEL_59;
    }

    if (a2 == 771 || a2 == 2306)
    {
      goto LABEL_66;
    }

LABEL_59:
    v18 = 0;
    goto LABEL_66;
  }

  if (((a2 - 258) > 5 || ((1 << (a2 - 2)) & 0x2D) == 0) && a2 != 769)
  {
    goto LABEL_59;
  }

LABEL_66:
  v19 = 1;
  if (a2 <= 768)
  {
    if ((a2 - 258) > 5 || ((1 << (a2 - 2)) & 0x25) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (a2 > 2305)
  {
    if (a2 != 2306 && a2 != 2817)
    {
      goto LABEL_76;
    }
  }

  else if (a2 != 769 && a2 != 771)
  {
LABEL_76:
    v19 = 0;
  }

  v20 = -1 << v18;
  if (-1 << v18 >= -v14)
  {
    v20 = -v14;
  }

  v21 = (~v20 + a3) & v20;
  if (-1 << v19 >= -v14)
  {
    v22 = -v14;
  }

  else
  {
    v22 = -1 << v19;
  }

  v23 = 2 * a8;
  v24 = v15;
  if (v16)
  {
    v25 = 3;
  }

  else
  {
    v25 = 4;
  }

  if ((a2 & 0x100) != 0)
  {
    v26 = v21 + v23;
  }

  else
  {
    v26 = ((v21 + v23) * v15) >> v25;
  }

  if (!result)
  {
    v50 = 2 * a8;
    v52 = v19;
    v54 = v17;
    v46 = v18;
    v48 = v15;
    v56 = a4;
    v58 = a3;
    v27 = a8;
    v28 = a2;
    result = malloc_type_calloc(1uLL, 0xA8uLL, 0x10B004034508FE5uLL);
    if (!result)
    {
      goto LABEL_111;
    }

    *(result + 37) = 1;
    a2 = v28;
    a8 = v27;
    a4 = v56;
    a3 = v58;
    v18 = v46;
    v15 = v48;
    v19 = v52;
    v17 = v54;
    v23 = v50;
  }

  v29 = a9;
  v30 = (~v22 + a4) & v22;
  v31 = (v13 + (v26 << v25 >> 3) - 1) & -v13;
  result[17] = a9;
  if (!a9)
  {
    v53 = v19;
    v55 = v17;
    v32 = v18;
    v57 = a4;
    v59 = a3;
    v47 = a8;
    v49 = result;
    v51 = v23;
    v33 = (v31 * (v30 + v23) * v24) >> v25;
    v34 = a2;
    if ((a2 & 0x100) != 0)
    {
      v35 = v33;
    }

    else
    {
      v35 = v31 * (v30 + v23);
    }

    if (a10)
    {
      v36 = a10(a11, v11 + v35 - 1);
      if (!v36)
      {
        result = v49;
        v49[17] = 0;
        *(v49 + 36) = 0;
        v49[13] = v35;
        goto LABEL_111;
      }

      v37 = 0;
      v29 = ((v36 + v12) & ~v12);
    }

    else
    {
      v29 = aom_memalign(v11, v35);
      v37 = 1;
    }

    result = v49;
    v23 = v51;
    v17 = v55;
    a4 = v57;
    v18 = v32;
    v49[17] = v29;
    *(v49 + 36) = v37;
    v49[13] = v35;
    a2 = v34;
    a8 = v47;
    a3 = v59;
    v19 = v53;
    if (v29)
    {
      goto LABEL_100;
    }

LABEL_111:
    aom_img_free(result);
    return 0;
  }

LABEL_100:
  *result = a2;
  *(result + 8) = v30;
  *(result + 9) = v17;
  *(result + 7) = v21;
  *(result + 14) = v18;
  *(result + 15) = v19;
  *(result + 28) = v15;
  v38 = v31 >> v18;
  *(result + 23) = v31 >> v18;
  *(result + 24) = v31 >> v18;
  v39 = v31 >> v18;
  *(result + 22) = v31;
  if (a2 == 263)
  {
    v39 = 0;
    v38 *= 2;
    *(result + 92) = v38;
  }

  if (v21 >= a3 && v30 >= a4)
  {
    *(result + 10) = a3;
    *(result + 11) = a4;
    if ((a2 & 0x100) != 0)
    {
      result[8] = &v29[(a8 << ((a2 & 0x800) != 0)) + v31 * a8];
      v40 = &v29[(v23 + v30) * v31];
      v41 = a8 >> v18;
      v42 = a8 >> v19;
      if (a2 == 263)
      {
        result[9] = &v40[2 * v41 + v38 * v42];
        result[10] = 0;
      }

      else
      {
        v43 = v41 << ((a2 & 0x800) != 0);
        v44 = &v40[v43];
        v45 = 2 * v42 + (v30 >> v19);
        if ((a2 & 0x200) != 0)
        {
          result[10] = &v44[v39 * v42];
          result[9] = &v40[v45 * v39 + v43 + v38 * v42];
        }

        else
        {
          result[9] = &v44[v38 * v42];
          result[10] = &v40[v45 * v38 + v43 + v39 * v42];
        }
      }
    }

    else
    {
      result[8] = &v29[((v15 * a8) >> 3) + v31 * a8];
    }
  }

  return result;
}

void aom_img_free(void *a1)
{
  if (a1)
  {
    v2 = a1[19];
    if (v2)
    {
      v3 = v2[1];
      if (v3)
      {
        v4 = *v2;
        if (*v2)
        {
          v5 = 0;
          do
          {
            v6 = *(v2[1] + 8 * v5);
            if (v6)
            {
              v7 = v6[1];
              if (v7)
              {
                free(v7);
              }

              free(v6);
              v4 = *v2;
            }

            ++v5;
          }

          while (v5 < v4);
          v3 = v2[1];
        }

        free(v3);
      }

      free(v2);
      a1[19] = 0;
    }

    v8 = a1[17];
    if (v8 && *(a1 + 36))
    {
      free(*(v8 - 8));
    }

    if (*(a1 + 37))
    {

      free(a1);
    }
  }
}

void aom_img_remove_metadata(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      v3 = v2[1];
      if (v3)
      {
        v4 = *v2;
        if (*v2)
        {
          v5 = 0;
          do
          {
            v6 = *(v2[1] + 8 * v5);
            if (v6)
            {
              v7 = v6[1];
              if (v7)
              {
                free(v7);
              }

              free(v6);
              v4 = *v2;
            }

            ++v5;
          }

          while (v5 < v4);
          v3 = v2[1];
        }

        free(v3);
      }

      free(v2);
      *(a1 + 152) = 0;
    }
  }
}

uint64_t aom_uleb_encode(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = a1;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = 0xFFFFFFFFLL;
  if (!HIDWORD(a1) && (v4 - 1) <= 7 && a4 && a3 && v4 - 1 < a2)
  {
    v8 = 0;
    do
    {
      v9 = a1 > 0x7F;
      v10 = a1 & 0x7F;
      a1 >>= 7;
      *(a3 + v8++) = v10 | (v9 << 7);
    }

    while (v4 != v8);
    v7 = 0;
    *a4 = v4;
  }

  return v7;
}

void *aom_memalign(uint64_t a1, unint64_t a2)
{
  if (0x1FFFFFFF9 - a1 < a2)
  {
    return 0;
  }

  result = malloc_type_malloc(a1 + a2 + 7, 0x5F484EBFuLL);
  if (result)
  {
    *(((result + a1 + 7) & -a1) - 8) = result;
    return ((result + a1 + 7) & -a1);
  }

  return result;
}

unint64_t aom_malloc(unint64_t a1)
{
  if (a1 > 0x1FFFFFFE9)
  {
    return 0;
  }

  result = malloc_type_malloc(a1 + 23, 0x5F484EBFuLL);
  if (result)
  {
    v2 = result;
    result = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(result - 8) = v2;
  }

  return result;
}

unint64_t aom_calloc(unint64_t a1, unint64_t a2)
{
  if (a1 && 0x1FFFFFFE9 / a1 < a2)
  {
    return 0;
  }

  v2 = a2 * a1;
  if (a2 * a1 > 0x1FFFFFFE9)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v2 + 23, 0x5F484EBFuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v4 - 8) = v3;
  if (!v4)
  {
    return 0;
  }

  bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), v2);
  return v4;
}

unint64_t aom_scaled_2d_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3);
  v17 = v13;
  v19 = v18;
  v21 = v20;
  v22 = a11;
  v130 = *MEMORY[0x277D85DE8];
  v23 = ((v16 + (a11 - 1) * a9) >> 4) + 8;
  v24 = v11 - 3 * v12 - 3;
  if (a10 == 4)
  {
    v25 = v121;
    do
    {
      v33 = 0;
      v34 = v14;
      do
      {
        while (1)
        {
          v39 = (v24 + (v34 >> 4));
          result = v34 & 0xF;
          if ((v34 & 0xF) != 0)
          {
            break;
          }

          v36 = v39->i8[3];
          v35 = v39 + 3;
          v37 = &v122 + v33 * 4;
          *v37 = v36;
          v37[1] = v35[v12];
          result = v35[2 * v12];
          v37[2] = result;
          v37[3] = v35[3 * v12];
          v34 += v15;
          if (++v33 == 4)
          {
            goto LABEL_3;
          }
        }

        v40 = vshrq_n_s16(*(v13 + 16 * (v34 & 0xF)), 1uLL);
        v41 = *v39;
        v42 = (v39 + v12);
        v43 = *v42;
        v44 = (v42 + v12);
        v45 = *(v44 + v12);
        v46 = vtrn1_s8(v41, v43);
        v47 = vtrn2_s8(v41, v43);
        v48 = vtrn1_s8(*v44, v45);
        v49 = vtrn2_s8(*v44, v45);
        v50 = vtrn1_s16(v46, v48);
        v51 = vtrn2_s16(v46, v48);
        v52 = vtrn1_s16(v47, v49);
        v53 = vtrn2_s16(v47, v49);
        v54 = vmovl_u8(v50);
        v55 = vmovl_u8(v52);
        v56 = vmovl_u8(v51);
        v57 = vmovl_u8(v53);
        *v55.i8 = vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmla_lane_s16(vmul_lane_s16(*v55.i8, *v40.i8, 1), *v54.i8, *v40.i8, 0), *v56.i8, *v40.i8, 2), *v57.i8, *v40.i8, 3), *&vextq_s8(v54, v54, 8uLL), v40, 4), *&vextq_s8(v55, v55, 8uLL), v40, 5), *&vextq_s8(v56, v56, 8uLL), v40, 6), *&vextq_s8(v57, v57, 8uLL), v40, 7);
        v122.i32[v33] = vqrshrun_n_s16(v55, 6uLL).u32[0];
        v34 += v15;
        ++v33;
      }

      while (v33 != 4);
LABEL_3:
      v26 = vtrn1_s16(v122, v123);
      v27 = vtrn2_s16(v122, v123);
      v28 = vzip1_s32(v26, v27);
      v29 = vzip2_s32(v26, v27);
      v30 = vtrn1_s8(v28, v29);
      v31 = vtrn2_s8(v28, v29);
      *v25 = v30.i32[0];
      v25[32] = v30.i32[1];
      v25[16] = v31.i32[0];
      v25[48] = v31.i32[1];
      v24 += 4 * v12;
      v25 += 64;
      v32 = __OFSUB__(v23, 4);
      v23 -= 4;
    }

    while (!((v23 < 0) ^ v32 | (v23 == 0)));
  }

  else
  {
    v58 = v121;
    result = &v122;
    do
    {
      v59 = a10;
      v60 = v58;
      v61 = v14;
      do
      {
        for (i = 0; i != 64; i += 8)
        {
          while (1)
          {
            v82 = v24 + (v61 >> 4);
            if ((v61 & 0xF) != 0)
            {
              break;
            }

            v80 = *(v82 + 3);
            v79 = v82 + 3;
            v81 = &v122 + i;
            *v81 = v80;
            v81[1] = *(v79 + v12);
            v81[2] = *(v79 + 2 * v12);
            v81[3] = *(v79 + 3 * v12);
            v81[4] = *(v79 + 4 * v12);
            v81[5] = *(v79 + 5 * v12);
            v81[6] = *(v79 + 6 * v12);
            v81[7] = *(v79 + 7 * v12);
            v61 += v15;
            i += 8;
            if (i == 64)
            {
              goto LABEL_12;
            }
          }

          v83 = vshrq_n_s16(*(v17 + 16 * (v61 & 0xF)), 1uLL);
          v84.i64[0] = *v82;
          v85 = (v82 + v12);
          v86.i64[0] = *v85;
          v87 = (v85 + v12);
          v88.i64[0] = *v87;
          v89 = (v87 + v12);
          v90.i64[0] = *v89;
          v91 = (v89 + v12);
          v92 = *v91;
          v93 = (v91 + v12);
          v94 = *v93;
          v95 = (v93 + v12);
          v84.i64[1] = v92;
          v86.i64[1] = v94;
          v96 = vtrn1q_s8(v84, v86);
          v88.i64[1] = *v95;
          v90.i64[1] = *(v95 + v12);
          v97 = vtrn2q_s8(v84, v86);
          v98 = vtrn1q_s8(v88, v90);
          v99 = vtrn2q_s8(v88, v90);
          v100 = vtrn1q_s16(v96, v98);
          v101 = vtrn2q_s16(v96, v98);
          v102 = vtrn1q_s16(v97, v99);
          v103 = vtrn2q_s16(v97, v99);
          v104 = vuzp1q_s32(v100, v102);
          v105 = vuzp2q_s32(v100, v102);
          v106 = vuzp1q_s32(v101, v103);
          v107 = vuzp2q_s32(v101, v103);
          *(&v122 + i) = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(vmovl_high_u8(v104), *v83.i8, 1), vmovl_u8(*v104.i8), *v83.i8, 0), vmovl_u8(*v106.i8), *v83.i8, 2), vmovl_high_u8(v106), *v83.i8, 3), vmovl_u8(*v105.i8), v83, 4), vmovl_high_u8(v105), v83, 5), vmovl_u8(*v107.i8), v83, 6), vmovl_high_u8(v107), v83, 7), 6uLL);
          v61 += v15;
        }

LABEL_12:
        *v62.i8 = v122;
        *v63.i8 = v123;
        v64.i64[0] = v124;
        v65.i64[0] = v125;
        v62.i64[1] = v126;
        v63.i64[1] = v127;
        v66 = vtrn1q_s8(v62, v63);
        v67 = vtrn2q_s8(v62, v63);
        v64.i64[1] = v128;
        v65.i64[1] = v129;
        v68 = vtrn1q_s8(v64, v65);
        v69 = vtrn2q_s8(v64, v65);
        v70 = vtrn1q_s16(v66, v68);
        v71 = vtrn2q_s16(v66, v68);
        v72 = vtrn1q_s16(v67, v69);
        v73 = vtrn2q_s16(v67, v69);
        v74 = vuzp1q_s32(v70, v72);
        v75 = vuzp2q_s32(v70, v72);
        v76 = vuzp1q_s32(v71, v73);
        v77 = vuzp2q_s32(v71, v73);
        *v60 = v74.i64[0];
        v60[8] = vextq_s8(v74, v74, 8uLL).u64[0];
        v60[16] = v76.i64[0];
        v60[24] = vextq_s8(v76, v76, 8uLL).u64[0];
        v60[32] = v75.i64[0];
        v60[40] = vextq_s8(v75, v75, 8uLL).u64[0];
        v60[48] = v77.i64[0];
        v60[56] = vextq_s8(v77, v77, 8uLL).u64[0];
        ++v60;
        v59 -= 8;
      }

      while (v59);
      v24 += 8 * v12;
      v58 += 512;
      v32 = __OFSUB__(v23, 8);
      v23 -= 8;
    }

    while (!((v23 < 0) ^ v32 | (v23 == 0)));
  }

  if (a10 == 4)
  {
    do
    {
      while (1)
      {
        v110 = &v121[64 * (v16 >> 4)];
        if ((v16 & 0xF) != 0)
        {
          break;
        }

        v21->i32[0] = v110[24].i32[0];
        v16 += a9;
        v21 = (v21 + v19);
        if (!--v22)
        {
          return result;
        }
      }

      v111 = vshrq_n_s16(*(v17 + 16 * (v16 & 0xF)), 1uLL);
      v112 = vmovl_u8(*v110);
      *v112.i8 = vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmla_lane_s16(vmul_n_s16(*v112.i8, v111.i16[0]), *&vmovl_u8(v110[8]), *v111.i8, 1), *&vmovl_u8(v110[16]), *v111.i8, 2), *&vmovl_u8(v110[24]), *v111.i8, 3), *&vmovl_u8(v110[32]), v111, 4), *&vmovl_u8(v110[40]), v111, 5), *&vmovl_u8(v110[48]), v111, 6), *&vmovl_u8(v110[56]), v111, 7);
      v21->i32[0] = vqrshrun_n_s16(v112, 6uLL).u32[0];
      v16 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  else if (a10 == 8)
  {
    do
    {
      while (1)
      {
        v108 = &v121[64 * (v16 >> 4)];
        if ((v16 & 0xF) != 0)
        {
          break;
        }

        *v21 = v108[24];
        v16 += a9;
        v21 = (v21 + v19);
        if (!--v22)
        {
          return result;
        }
      }

      v109 = vshrq_n_s16(*(v17 + 16 * (v16 & 0xF)), 1uLL);
      *v21 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v108), v109.i16[0]), vmovl_u8(v108[8]), *v109.i8, 1), vmovl_u8(v108[16]), *v109.i8, 2), vmovl_u8(v108[24]), *v109.i8, 3), vmovl_u8(v108[32]), v109, 4), vmovl_u8(v108[40]), v109, 5), vmovl_u8(v108[48]), v109, 6), vmovl_u8(v108[56]), v109, 7), 6uLL);
      v16 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  else
  {
    v113 = v16;
    do
    {
      v114 = &v121[64 * (v113 >> 4)];
      if ((v113 & 0xF) != 0)
      {
        v115 = 0;
        do
        {
          v116 = vshrq_n_s16(*(v17 + 16 * (v113 & 0xF)), 1uLL);
          v117 = *&v114[v115];
          v118 = *&v114[v115 + 64];
          v119 = *&v114[v115 + 128];
          v120 = *&v114[v115 + 192];
          *v21[v115 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v117.i8), v116.i16[0]), vmovl_u8(*v118.i8), *v116.i8, 1), vmovl_u8(*v119.i8), *v116.i8, 2), vmovl_u8(*v120.i8), *v116.i8, 3), vmovl_u8(*&v114[v115 + 256]), v116, 4), vmovl_u8(*&v114[v115 + 320]), v116, 5), vmovl_u8(*&v114[v115 + 384]), v116, 6), vmovl_u8(*&v114[v115 + 448]), v116, 7), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v117), v116.i16[0]), vmovl_high_u8(v118), *v116.i8, 1), vmovl_high_u8(v119), *v116.i8, 2), vmovl_high_u8(v120), *v116.i8, 3), vmovl_high_u8(*&v114[v115 + 256]), v116, 4), vmovl_high_u8(*&v114[v115 + 320]), v116, 5), vmovl_high_u8(*&v114[v115 + 384]), v116, 6), vmovl_high_u8(*&v114[v115 + 448]), v116, 7), 6uLL);
          v115 += 16;
        }

        while (a10 != v115);
      }

      else
      {
        result = memcpy(v21, v114 + 192, (a10 & 0xFFFFFFF0) - 16 + 16);
      }

      v113 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  return result;
}

double init_0(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 8) = 0;
  return result;
}

uint64_t reset_0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = 0;
  result = *(a1 + 8);
  if (result != 1)
  {
    if (result)
    {
      if (*a1)
      {
        pthread_mutex_lock(*a1);
        if (*(a1 + 8) >= 2u)
        {
          do
          {
            pthread_cond_wait((*a1 + 64), *a1);
          }

          while (*(a1 + 8) != 1);
        }

        pthread_mutex_unlock(*a1);
        return *(a1 + 48) == 0;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v3 = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
      if (!v3)
      {
        goto LABEL_10;
      }

      v4 = v3;
      v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v5 - 8) = v4;
      if (!v5)
      {
        goto LABEL_10;
      }

      *(v5 + 112) = 0;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *a1 = v5;
      if (pthread_mutex_init(v5, 0))
      {
LABEL_8:
        v6 = *a1;
        if (!*a1)
        {
LABEL_10:
          result = 0;
          *a1 = 0;
          return result;
        }

LABEL_9:
        free(*&v6[-1].__opaque[48]);
        goto LABEL_10;
      }

      if (pthread_cond_init((*a1 + 64), 0))
      {
        pthread_mutex_destroy(*a1);
        goto LABEL_8;
      }

      memset(&v8, 0, sizeof(v8));
      if (pthread_attr_init(&v8))
      {
LABEL_24:
        pthread_mutex_destroy(*a1);
        pthread_cond_destroy((*a1 + 64));
        v6 = *a1;
        if (!*a1)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v7 = 0;
      if (!pthread_attr_getstacksize(&v8, &v7) && !(v7 >> 18) && pthread_attr_setstacksize(&v8, 0x40000uLL))
      {
LABEL_23:
        pthread_attr_destroy(&v8);
        goto LABEL_24;
      }

      pthread_mutex_lock(*a1);
      if (pthread_create((*a1 + 112), &v8, thread_loop_0, a1))
      {
        pthread_mutex_unlock(*a1);
        goto LABEL_23;
      }

      *(a1 + 8) = 1;
      pthread_mutex_unlock(*a1);
      pthread_attr_destroy(&v8);
      return 1;
    }
  }

  return result;
}

void sync_0(void)
{
  v1 = v0;
  v2 = *v0;
  if (v2)
  {
    pthread_mutex_lock(v2);
    if (*(v1 + 2) >= 2u)
    {
      do
      {
        pthread_cond_wait(&(*v1)[1], *v1);
      }

      while (*(v1 + 2) != 1);
    }

    pthread_mutex_unlock(*v1);
  }
}

pthread_mutex_t *launch_0(_DWORD *a1)
{
  result = *a1;
  if (result)
  {
    pthread_mutex_lock(result);
    v3 = a1[2];
    if (v3)
    {
      if (v3 != 1)
      {
        do
        {
          pthread_cond_wait((*a1 + 64), *a1);
        }

        while (a1[2] != 1);
      }

      a1[2] = 2;
      pthread_cond_signal((*a1 + 64));
    }

    v4 = *a1;

    return pthread_mutex_unlock(v4);
  }

  return result;
}

void *execute_0(void *result)
{
  v1 = result[3];
  if (v1)
  {
    v2 = result;
    result = v1(result[4], result[5]);
    *(v2 + 12) |= result == 0;
  }

  return result;
}

std::__fs::filesystem::recursive_directory_iterator *__cdecl end_0(std::__fs::filesystem::recursive_directory_iterator *__return_ptr retstr, std::__fs::filesystem::recursive_directory_iterator *a2)
{
  result = a2->__imp_.__ptr_;
  if (result)
  {
    pthread_mutex_lock(result);
    cntrl = a2->__imp_.__cntrl_;
    if (cntrl)
    {
      if (cntrl != 1)
      {
        do
        {
          pthread_cond_wait((a2->__imp_.__ptr_ + 64), a2->__imp_.__ptr_);
        }

        while (LODWORD(a2->__imp_.__cntrl_) != 1);
      }

      LODWORD(a2->__imp_.__cntrl_) = 0;
      pthread_cond_signal((a2->__imp_.__ptr_ + 64));
    }

    pthread_mutex_unlock(a2->__imp_.__ptr_);
    pthread_join(*(a2->__imp_.__ptr_ + 14), 0);
    pthread_mutex_destroy(a2->__imp_.__ptr_);
    result = pthread_cond_destroy((a2->__imp_.__ptr_ + 64));
    if (a2->__imp_.__ptr_)
    {
      free(*(a2->__imp_.__ptr_ - 1));
    }

    a2->__imp_.__ptr_ = 0;
  }

  return result;
}

uint64_t thread_loop_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    strncpy(__dst, v2, 0x3FuLL);
    __dst[63] = 0;
    pthread_setname_np(__dst);
  }

  pthread_mutex_lock(*a1);
  v3 = *(a1 + 8);
  for (i = *a1; v3 == 2; i = *a1)
  {
LABEL_8:
    pthread_mutex_unlock(i);
    v5 = *(a1 + 24);
    if (v5)
    {
      *(a1 + 48) |= v5(*(a1 + 32), *(a1 + 40)) == 0;
    }

    pthread_mutex_lock(*a1);
    *(a1 + 8) = 1;
    pthread_cond_signal((*a1 + 64));
    v3 = *(a1 + 8);
  }

  while (v3 == 1)
  {
    pthread_cond_wait(&i[1], i);
    v3 = *(a1 + 8);
    i = *a1;
    if (v3 == 2)
    {
      goto LABEL_8;
    }
  }

  pthread_mutex_unlock(i);
  return 0;
}

uint64_t av1_caq_select_segment(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  v6 = a6;
  v8 = a4;
  v9 = result;
  v10 = (result + 263736);
  v11 = result + 239056;
  if ((*(result + 239056) & 0xFD) != 0 && (*(result + 239558) & 1) == 0 && (*(result + 267130) & 1) == 0 && (*(result + 267128) != 1 || *(result + 388448)))
  {
    return result;
  }

  v12 = *(result + 388408);
  if (v12 < 256)
  {
    return result;
  }

  v13 = *v10;
  if (*(*v10 + 77))
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v43 = *(result + 239592);
  if (v43 - a5 >= mi_size_wide_1[a3])
  {
    v15 = mi_size_wide_1[a3];
  }

  else
  {
    v15 = v43 - a5;
  }

  v16 = *(result + 239588) - a4;
  if (v16 >= mi_size_high_0[a3])
  {
    v17 = mi_size_high_0[a3];
  }

  else
  {
    v17 = v16;
  }

  v44 = ((v15 * v12 * v17) << 9) / (*(v13 + 32) * *(v13 + 32));
  v18 = *(result + 239672);
  v19 = *(v13 + 72);
  if (v18 >= 0xFF)
  {
    v20 = 255;
  }

  else
  {
    v20 = *(result + 239672);
  }

  if (v18 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v19)
  {
    case 8:
      v22 = ac_qlookup_QTX;
      break;
    case 12:
      v22 = ac_qlookup_12_QTX;
      break;
    case 10:
      v22 = ac_qlookup_10_QTX;
      break;
    default:
      v23 = -1;
      goto LABEL_31;
  }

  v23 = v22[v21];
LABEL_31:
  if (v23 <= 103)
  {
    v24 = v23 > 43;
  }

  else
  {
    v24 = (v23 > 43) + 1;
  }

  v25 = 10.0;
  if (*(result + 265608) >= 2u)
  {
    v27 = a5;
    v28 = v15;
    v29 = a2;
    v30 = v14;
    v31 = exp(*(result + 638112));
    v14 = v30;
    a2 = v29;
    v15 = v28;
    a5 = v27;
    v8 = a4;
    v6 = a6;
    if (v31 > 8.0)
    {
      v25 = v31;
    }

    else
    {
      v25 = 8.0;
    }
  }

  v32 = v10[244];
  v33 = a2;
  av1_setup_src_planes(a2, v32, v8, a5, v14, a3);
  result = av1_log_block_var(v9, v33, a3);
  v34 = result;
  v35 = v6;
  v36 = v44;
  if (aq_c_transitions[5 * v24] * v44 <= v6 || v25 + aq_c_var_thresholds[5 * v24] <= v34)
  {
    if (aq_c_transitions[5 * v24 + 1] * v36 <= v35 || v25 + aq_c_var_thresholds[5 * v24 + 1] <= v34)
    {
      if (aq_c_transitions[5 * v24 + 2] * v36 <= v35 || v25 + aq_c_var_thresholds[5 * v24 + 2] <= v34)
      {
        v38 = v36 + v36;
        if (v25 + 100.0 <= v34 || v38 <= v35)
        {
          v37 = 4;
        }

        else
        {
          v37 = 3;
        }
      }

      else
      {
        v37 = 2;
      }
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v17 >= 1)
  {
    v40 = (*(v9 + 456752) + a5 + v43 * v8);
    v41 = *(v11 + 536);
    do
    {
      result = memset(v40, v37, v15);
      v40 += v41;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *av1_cyclic_refresh_alloc(int a1, int a2)
{
  result = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
  if (result)
  {
    v5 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v5 - 8) = result;
    if (v5)
    {
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0;
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((result + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      v6 = a2 * a1;
      *v5 = 0u;
      if (((a2 * a1) & 0x80000000) == 0)
      {
        v7 = v6;
        v8 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
        v9 = malloc_type_malloc(v6 + 23, 0x5F484EBFuLL);
        v5 = v8;
        if (v9)
        {
          v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v10 - 8) = v9;
          if (v10)
          {
            bzero(((v9 + 23) & 0xFFFFFFFFFFFFFFF0), v7);
            result = v8;
            *(v8 + 40) = v10;
            *(v8 + 112) = 0;
            *(v8 + 4) = 5;
            *(v8 + 80) = 0x3FD0000000000000;
            return result;
          }
        }
      }

      *(v5 + 40) = 0;
      *(v5 + 112) = 0;
      *(v5 + 4) = 5;
      *(v5 + 80) = 0x3FD0000000000000;
      free(*(v5 - 8));
    }

    return 0;
  }

  return result;
}

unsigned int av1_cyclic_refresh_estimate_bits_at_q(uint64_t a1, double a2)
{
  v4 = a1 + 388640;
  v5 = (a1 + 239056);
  v6 = *(a1 + 456768);
  v7 = *(a1 + 239672);
  v8 = *(a1 + 239584);
  v9 = (16 * v8);
  if (*(a1 + 388640))
  {
    v10 = 1374389535 * *(a1 + 239588) * *v6 * *(a1 + 239592);
    v11 = (v10 >> 37) + (v10 >> 63);
    v12 = 0.0;
  }

  else
  {
    v11 = v6[7];
    v12 = v6[8] / v9;
  }

  v13 = v11 / v9;
  v14 = (av1_rc_bits_per_mb(a1, *v5, *(a1 + 239672), *(a1 + 388756), a2, 1.0 - v13, COERCE_INT16X4_T(v11)) * v8) >> 9;
  if (v14 <= 200)
  {
    v14 = 200;
  }

  v17 = v14;
  v18 = *(v5 + 132);
  v19 = (av1_rc_bits_per_mb(a1, *v5, v6[24] + v7, *(v4 + 116), a2, v15, v16) * v18) >> 9;
  if (v19 <= 200)
  {
    v19 = 200;
  }

  v22 = v13 * v19 + (1.0 - v13 - v12) * v17;
  v23 = *v5;
  v24 = *(v5 + 132);
  v25 = (av1_rc_bits_per_mb(a1, v23, v6[25] + v7, *(v4 + 116), a2, v20, v21) * v24) >> 9;
  if (v25 <= 200)
  {
    v25 = 200;
  }

  return llround(v22 + v12 * v25);
}

unsigned int av1_cyclic_refresh_rc_bits_per_mb(uint64_t a1, int a2, double a3, double a4, int16x4_t a5)
{
  v8 = (a1 + 388572);
  v9 = (a1 + 239056);
  v10 = *(a1 + 456768);
  v11 = *(v10 + 24);
  if (*(a1 + 388640))
  {
    v12 = 1374389535 * *(a1 + 239588) * *v10 * *(a1 + 239592);
    v13 = (v12 >> 37) + (v12 >> 63) + v11;
  }

  else
  {
    v13 = *(v10 + 28) + v11 + *(v10 + 32);
  }

  v34 = v13;
  v33 = *(a1 + 239584);
  v14 = *(v10 + 72);
  v15 = *v9;
  v16 = av1_rc_bits_per_mb(a1, v15, a2, 0, 1.0, a4, a5);
  v19 = *v8;
  v20 = v8[1];
  if (v20 < *v8)
  {
    v21 = (v14 * v16);
    do
    {
      if (av1_rc_bits_per_mb(a1, v15, (v19 + v20) >> 1, 0, 1.0, v17, v18) > v21)
      {
        v20 = ((v19 + v20) >> 1) + 1;
      }

      else
      {
        v19 = (v19 + v20) >> 1;
      }
    }

    while (v20 < v19);
  }

  v22 = *(v10 + 8) * a2;
  v23 = v22 / 100;
  v24 = -v22 / 100;
  if (v23 < a2 - v20)
  {
    v25 = v24;
  }

  else
  {
    v25 = v20 - a2;
  }

  v26 = (16 * v33);
  v27 = (v34 >> 1) / v26;
  v28 = v8[46];
  v29 = av1_rc_bits_per_mb(a1, *v9, a2, v28, a3, v26, v18);
  return llround(v27 * av1_rc_bits_per_mb(a1, *v9, v25 + a2, v28, a3, v30, v31) + (1.0 - v27) * v29);
}

uint64_t av1_cyclic_reset_segment_skip(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v7 = (result + 456752);
  v8 = (result + 239288);
  v9 = **(a2 + 8280);
  v10 = *(v9 + 167);
  v31 = v10 & 7;
  v11 = *(result + 456768);
  v12 = *(result + 239592);
  if (v12 - a4 >= mi_size_wide_2[a5])
  {
    v13 = mi_size_wide_2[a5];
  }

  else
  {
    v13 = v12 - a4;
  }

  v29 = v13;
  v14 = *(result + 239588);
  if (v14 - a3 >= mi_size_high_1[a5])
  {
    v15 = mi_size_high_1[a5];
  }

  else
  {
    v15 = (v14 - a3);
  }

  v30 = v15;
  if (*(v11 + 108))
  {
    goto LABEL_42;
  }

  v16 = *(a2 + 416);
  v17 = *(a2 + 420);
  v18 = *(*v8 + 80);
  v19 = *(a2 + 8289);
  if ((*(a2 + 8288) & 1) == 0)
  {
    if (*(a2 + 8289))
    {
      v22 = 255;
      v20 = 255;
      v21 = v10 & 7;
      goto LABEL_25;
    }

    LOBYTE(v22) = 0;
    v21 = v10 & 7;
    goto LABEL_36;
  }

  if ((*(a2 + 8289) & 1) == 0)
  {
    LOBYTE(v22) = 8;
    v21 = v10 & 7;
    if (v14 < v16 || v12 <= v17)
    {
      goto LABEL_36;
    }

    v20 = 255;
    goto LABEL_22;
  }

  v20 = 8;
  if (v14 < v16)
  {
    v21 = v10 & 7;
    v22 = 8;
    goto LABEL_25;
  }

  v21 = v10 & 7;
  if (v12 >= v17)
  {
    v20 = *(v18 + v17 + (v16 - 1) * v12 - 1);
    if (v20 >= 8)
    {
      v20 = 8;
    }
  }

  v22 = 8;
  if (v14 >= v16 && v12 > v17)
  {
LABEL_22:
    v22 = *(v18 + v17 + (v16 - 1) * v12);
    result = 8;
    if (v22 >= 8)
    {
      v22 = 8;
    }

    if (v19)
    {
      goto LABEL_25;
    }

LABEL_36:
    v25 = v22 & 7;
    *(v9 + 167) = v10 & 0xFFF8 | v22 & 7;
    if (v21 == v25)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_25:
  v23 = 8;
  if (v14 > v16 && v12 >= v17)
  {
    v24 = *(v18 + v17 + v16 * v12 - 1);
    if (v24 >= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = v24;
    }
  }

  if (v22 == 255)
  {
    v25 = v23 & 7;
    *(v9 + 167) = v10 & 0xFFF8 | v23 & 7;
    if (v21 == v25)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v20 != v22)
  {
    LOBYTE(v22) = v23;
  }

  v25 = v22 & 7;
  *(v9 + 167) = v10 & 0xFFF8 | v22 & 7;
  if (v21 != v25)
  {
LABEL_37:
    if (v30 >= 1)
    {
      v26 = v8[76];
      v27 = v30;
      v28 = a4 + v26 * a3;
      do
      {
        bzero((*(v11 + 40) + v28), v29);
        memset((*v7 + v28), v25, v29);
        result = memset((*(*v8 + 80) + v28), v25, v29);
        v28 += v26;
        --v27;
      }

      while (v27);
    }
  }

LABEL_42:
  if (!a6)
  {
    if (v31 == 2)
    {
      *(a2 + 86584) -= v30 * v29;
    }

    else if (v31 == 1)
    {
      *(a2 + 86580) -= v30 * v29;
    }
  }

  return result;
}

void *av1_cyclic_refresh_update_segment(void *result, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v9 = (result + 29911);
  v10 = **(a2 + 8280);
  v11 = result[57096];
  v12 = *(result + 59898);
  if (v12 - a4 >= mi_size_wide_2[a5])
  {
    v13 = mi_size_wide_2[a5];
  }

  else
  {
    v13 = v12 - a4;
  }

  v35 = v13;
  v14 = *(result + 59897) - a3;
  if (v14 >= mi_size_high_1[a5])
  {
    v15 = mi_size_high_1[a5];
  }

  else
  {
    v15 = v14;
  }

  v16 = a4 + v12 * a3;
  v17 = *(v10 + 17);
  if (*(result + 159386))
  {
    if (v17 >= 1)
    {
      if (*(result + 159387) > 1)
      {
        goto LABEL_26;
      }

LABEL_12:
      v18 = 0;
      v19 = 2;
      goto LABEL_33;
    }
  }

  else if (v17 > 0)
  {
    goto LABEL_12;
  }

  if (*(v11 + 56) < a7)
  {
    v20 = *(v10 + 8);
    v21 = *(v11 + 64);
    if (v20 > v21 || ((v22 = *(v10 + 10), v20 >= -v21) ? (v23 = v22 <= v21) : (v23 = 0), v23 ? (v24 = v22 < -v21) : (v24 = 1), v24 || (*(v10 + 167) & 0x80) == 0 && *(v10 + 16) < 1))
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_33;
    }
  }

LABEL_26:
  if (a5 >= 6 && *(v11 + 48) > a6 && ((*(v10 + 167) & 0x80) != 0 || *(v10 + 16) >= 1) && !*(v10 + 8) && *(v11 + 88) > 10)
  {
    goto LABEL_12;
  }

  v18 = 0;
  v19 = 1;
LABEL_33:
  if (*(v11 + 108))
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v26 = v16;
  v27 = *(*(v11 + 40) + v16);
  v28 = *(v10 + 167);
  if ((v28 & 7u) - 3 >= 0xFFFFFFFE)
  {
    v29 = v28 & 0xFFF8;
    if (a8)
    {
      v19 = 0;
    }

    v28 = v29 | v19;
    *(v10 + 167) = v28;
  }

  v30 = v28 & 7;
  if ((v30 - 3) >= 0xFFFFFFFE)
  {
    v31 = -*(v11 + 20);
    v37 = result + 57094;
    v36 = a9;
    if (v15 < 1)
    {
      goto LABEL_52;
    }
  }

  else if (v18)
  {
    v31 = 1;
    v37 = result + 57094;
    v36 = a9;
    if (v15 < 1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (*(*(v11 + 40) + v26) == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = v27;
    }

    v37 = result + 57094;
    v36 = a9;
    if (v15 < 1)
    {
      goto LABEL_52;
    }
  }

  v32 = 0;
  v33 = v25 * *(result + 59898);
  do
  {
    memset((*(v11 + 40) + v26), v31, v35);
    memset((*v37 + v26), v30, v35);
    result = memset((*(*v9 + 80) + v26), v30, v35);
    v32 += v25;
    v26 += v33;
  }

  while (v32 < v15);
LABEL_52:
  if (!v36)
  {
    if (v30 == 2)
    {
      *(a2 + 86584) += v15 * v35;
    }

    else if (v30 == 1)
    {
      *(a2 + 86580) += v15 * v35;
    }
  }

  return result;
}

int *av1_cyclic_refresh_update_parameters(int *result)
{
  v1 = result + 114192;
  v2 = result + 97110;
  v3 = result + 65934;
  v4 = result + 59764;
  v5 = *result;
  v6 = *(result + 57096);
  v7 = result[97144];
  if (v7 >= 12)
  {
    v8 = v7 + 4;
  }

  else
  {
    v8 = 16;
  }

  v9 = result[66355];
  if (*(v5 + 50968))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 1;
  }

  v11 = v10;
  v12 = *v2;
  if (v10 && v12 >= *(v6 + 112))
  {
    v12 = *(v6 + 112);
  }

  v13 = result[97114];
  v14 = *v4 & 0xFD;
  if (*v4 & 0xFD) == 0 || v13 || (*(v5 + 85025))
  {
    *(v6 + 104) = 1;
    v15 = (v6 + 104);
    *(v6 + 4) = 5;
    *(v6 + 80) = 0x3FD0000000000000;
    *(v6 + 108) = result[66392] > 9;
    if (!v14)
    {
LABEL_68:
      *v15 = 0;
      return result;
    }

    if (result[66177])
    {
      goto LABEL_22;
    }
  }

  else
  {
    v16 = result[66392] > 9;
    *(v6 + 104) = 1;
    *(v6 + 108) = v16;
    v15 = (v6 + 104);
    if (result[66177])
    {
      goto LABEL_22;
    }
  }

  if (!result[66176])
  {
    goto LABEL_68;
  }

LABEL_22:
  if (result[97115] | v13)
  {
    goto LABEL_68;
  }

  result += 159283;
  if (*result > 0)
  {
    goto LABEL_68;
  }

  v17 = result[3];
  if (v17 != result[1])
  {
    goto LABEL_68;
  }

  v18 = *(v5 + 44216);
  if (v18 < v8 || v17 >= 2 && *(*(result + 81) + 13176 * *result + 13168))
  {
    goto LABEL_68;
  }

  if (v12 >= 21 && v18 > 235)
  {
    goto LABEL_68;
  }

  v19 = v2[40];
  if (v19)
  {
    if (v19 <= 29 && v12 > 40)
    {
      goto LABEL_68;
    }
  }

  if (*(v5 + 85025))
  {
    goto LABEL_68;
  }

  v20 = result[2];
  if (v20 <= 2)
  {
    v21 = *(v6 + 4) + 10;
  }

  else
  {
    v21 = 15;
  }

  *v6 = v21;
  if (v1[2])
  {
    v22 = (100 - v2[43]) * v21;
    result = ((1374389535 * v22) >> 63);
    v21 = v22 / 100;
    *v6 = v22 / 100;
    if ((v22 + 99) <= 0xC6)
    {
      *v15 = 0;
    }
  }

  *(v6 + 8) = 60;
  *(v6 + 20) = 0;
  if (v9 == 1)
  {
    v23 = 0;
    v24 = 10;
  }

  else
  {
    v23 = *(*v3 + 28) == 12;
    v24 = 15;
  }

  *(v6 + 116) = v23;
  *(v6 + 64) = 32;
  *(v6 + 88) = v24;
  if (v21 < 1)
  {
    v26 = *(v6 + 80);
    goto LABEL_54;
  }

  if ((v11 & 1) == 0)
  {
    v26 = *(v6 + 80);
    if (v12 < (4 * v20 * (0x64u / v21)))
    {
      v27 = 3.0;
      goto LABEL_55;
    }

LABEL_54:
    v27 = 2.25;
    goto LABEL_55;
  }

  v25 = (v12 / 10) * 0.1;
  if (v25 > 0.75)
  {
    v25 = 0.75;
  }

  v26 = *(v6 + 80) + 3.0 - v25;
  *(v6 + 72) = v26;
  if (v12 <= 9 && (v2[35] < 0 || v2[36] < 0))
  {
    v27 = -0.25;
LABEL_55:
    v26 = v26 + v27;
    *(v6 + 72) = v26;
  }

  if (v4[15] * v4[14] > 101376)
  {
    goto LABEL_63;
  }

  if (v20 >= 2)
  {
    v28 = 32;
LABEL_61:
    *(v6 + 64) = v28;
    *(v6 + 88) = 13;
    goto LABEL_63;
  }

  if (v2[19] <= 2999)
  {
    v28 = 16;
    goto LABEL_61;
  }

  *(v6 + 8) = 50;
  *(v6 + 72) = fmax(v26, 2.0);
LABEL_63:
  if (!v3[245])
  {
    v21 = 10;
    *v6 = 10;
    *(v6 + 72) = 0x3FF8000000000000;
    *(v6 + 88) = 10;
    if (*(v3 + 3392) == 1)
    {
      v21 = 0;
      *v6 = 0;
      *(v6 + 72) = 0x3FF0000000000000;
    }
  }

  if (v2[50])
  {
    v29 = 1374389535 * v4[133] * v21 * v4[134];
    *(v6 + 28) = (v29 >> 63) + (SHIDWORD(v29) >> 5);
    v15 = (v6 + 32);
    goto LABEL_68;
  }

  return result;
}