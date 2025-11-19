uint64_t sub_27728EE88(uint64_t result, unsigned __int8 *a2, _BYTE *a3, int a4, uint64_t a5, _DWORD *a6, int a7)
{
  v7 = *(a5 + 48);
  if (a4)
  {
    v8 = *(a5 + 31) == 2;
    if (result >= 1)
    {
      v9 = a6[9] >> v8;
      v10 = a6[21] >> v8;
      v11 = v7[96 * v9 + 475 + 3 * v10];
      v12 = &v7[3 * v10];
      v13 = v12[96 * v9 + 3547];
      v14 = v7[87];
      v15 = v7[83] + 1;
      v16 = (v7[3 * v9 + 283] + v12[379] + 1) >> 1;
      do
      {
        v17 = *a2++;
        v18 = ((v14 + v11 * a3[a7] + v13 * v17) >> v15) + v16;
        if (v18 >= 255)
        {
          v18 = 255;
        }

        *a3++ = v18 & ~(v18 >> 31);
        result = (result - 1);
      }

      while (result);
    }
  }

  else
  {
    v19 = a6[8];
    v20 = a6[9] >> (*(a5 + 31) == 2);
    if (v19 == 5)
    {
      v23 = &v7[3 * v20];
      v22 = v23[187];
      v21 = v23[379];
    }

    else
    {
      v21 = v7[3 * (a6[9] >> (*(a5 + 31) == 2)) + 283];
      if (v19 == 4)
      {
        v22 = v7[3 * v20 + 91];
      }

      else
      {
        v22 = 0;
      }
    }

    if (result >= 1)
    {
      v24 = v7[85];
      v25 = v7[83];
      do
      {
        v26 = *a2++;
        v27 = ((v24 + v22 * v26) >> v25) + v21;
        if (v27 >= 255)
        {
          v27 = 255;
        }

        *a3++ = v27 & ~(v27 >> 31);
        result = (result - 1);
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_27728EFD0(uint64_t result, unsigned __int8 *a2, _BYTE *a3, int a4, uint64_t a5, _DWORD *a6, int a7)
{
  v7 = *(a5 + 48);
  if (a4)
  {
    v8 = *(a5 + 31) == 2;
    if (result >= 1)
    {
      v9 = 0;
      v10 = a6[9] >> v8;
      v11 = a6[21] >> v8;
      v12 = &v7[96 * v10 + 3 * v11];
      v13 = *(v12 + 1904);
      v14 = &v7[3 * v11];
      v15 = &v14[96 * v10];
      v16 = v15[3548];
      v17 = *(v12 + 1908);
      v18 = v15[3549];
      v19 = &v7[3 * v10];
      v20 = v7[88];
      v21 = v7[84] + 1;
      v22 = (v19[284] + v14[380] + 1) >> 1;
      v23 = (v19[285] + v14[381] + 1) >> 1;
      do
      {
        v24 = ((v20 + v13 * a3[a7] + v16 * *a2) >> v21) + v22;
        if (v24 >= 255)
        {
          v24 = 255;
        }

        *a3 = v24 & ~(v24 >> 31);
        v25 = ((v20 + v17 * a3[a7 + 1] + v18 * a2[1]) >> v21) + v23;
        if (v25 >= 255)
        {
          v25 = 255;
        }

        a3[1] = v25 & ~(v25 >> 31);
        a3 += 2;
        v9 += 2;
        a2 += 2;
      }

      while (v9 < result);
    }

    return result;
  }

  v26 = a6[8];
  if (v26 == 4)
  {
    v27 = 283;
    v28 = 91;
    goto LABEL_14;
  }

  if (v26 == 5)
  {
    v27 = 379;
    v28 = 187;
LABEL_14:
    v29 = a6[9] >> (*(a5 + 31) == 2);
    v30 = &v7[3 * v29 + v28];
    v31 = &v7[3 * v29 + v27];
    v32 = *(v30 + 4);
    v33 = *(v30 + 8);
    v34 = *(v31 + 4);
    v35 = *(v31 + 8);
    goto LABEL_16;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_16:
  if (result >= 1)
  {
    v36 = 0;
    v37 = v7[86];
    v38 = v7[84];
    do
    {
      v39 = &a3[v36];
      v40 = ((v37 + v32 * a2[v36]) >> v38) + v34;
      if (v40 >= 255)
      {
        v40 = 255;
      }

      *v39 = v40 & ~(v40 >> 31);
      v41 = ((v37 + v33 * a2[v36 + 1]) >> v38) + v35;
      if (v41 >= 255)
      {
        v41 = 255;
      }

      v39[1] = v41 & ~(v41 >> 31);
      v36 += 2;
    }

    while (v36 < result);
  }

  return result;
}

__int128 *sub_27728F1B0(uint64_t a1, int *a2, int a3, __int128 *a4, int a5)
{
  v5 = a5;
  v8 = a2;
  v9 = a1;
  v53[3] = *MEMORY[0x277D85DE8];
  v10 = v47;
  memset(v53, 0, 20);
  v51 = 0;
  v52 = xmmword_2773B3DD0;
  sub_27728F6BC((a4 + 64), (a4 + 80), a1, a2, v53, v53, &v51, a5, xmmword_2773B3DD0);
  sub_27728F9C4((a4 + 160), v48, v9, v8, v5, v11, v12, v13, v14);
  v15 = 0;
  v16 = v46;
  do
  {
    v17 = &a4[v15];
    v18 = &a4[v15 + 160];
    v19 = &v48[v15 * 16];
    v20 = vld1q_dup_s8(v18);
    v17[96] = v20;
    v17[32] = v20;
    v21 = vld1q_dup_s16(v19);
    v16[32] = v21;
    v16[33] = v21;
    v16[1] = v21;
    v16 += 2;
    ++v15;
  }

  while (v15 != 16);
  v22 = v46;
  sub_27728FE04((a4 + 112), v46, v47, v48, v21);
  sub_277290080(a4 + 64, a4 + 80, a4 + 112, -64, 0);
  v23 = a4 + 128;
  v24 = a3 - 1;
  if (a3 == 1)
  {
    v41 = v48;
  }

  else
  {
    v44 = a3;
    v45 = v8;
    v25 = 0;
    v22 = v46;
    v26 = v5;
    v27 = v48;
    do
    {
      if (v25)
      {
        v28 = -16;
      }

      else
      {
        v28 = 0;
      }

      if (v25)
      {
        v29 = 13;
      }

      else
      {
        v29 = 0;
      }

      if (v25)
      {
        v30 = 14;
      }

      else
      {
        v30 = 0;
      }

      if (v25)
      {
        v31 = 15;
      }

      else
      {
        v31 = 0;
      }

      if (v25)
      {
        v32 = 5.44760372e-270;
      }

      else
      {
        v32 = 0.0;
      }

      LODWORD(v53[0]) = v28;
      BYTE4(v53[0]) = 0;
      *(v53 + 5) = v32;
      if (v25)
      {
        v33 = COERCE_DOUBLE(0xC000B000A0009);
      }

      else
      {
        v33 = 0.0;
      }

      *(&v53[1] + 5) = vuzp1_s8(*&v33, *&v33).u32[0];
      BYTE1(v53[2]) = v29;
      v34 = v22;
      v35 = v27;
      BYTE2(v53[2]) = v30;
      v22 = v10;
      BYTE3(v53[2]) = v31;
      v51 = 0;
      v52 = xmmword_2773B3DD0;
      v49 = 16;
      v50 = xmmword_2773B3DD0;
      sub_27728F6BC(v23, (v23 + 16), v9, v45, v53, &v51, &v49, v26, xmmword_2773B3DD0);
      v9 += 16;
      sub_27728F9C4((v23 + 96), v34, v9, v45, v26, v36, v37, v38, v39);
      sub_27728FE04((v23 + 48), v10, v35, v34, v40);
      v23 += 64;
      ++v25;
      v10 = v35;
      v27 = v34;
    }

    while (v24 != v25);
    v41 = v34;
    v10 = v35;
    v8 = v45;
    v5 = v26;
    a3 = v44;
  }

  LODWORD(v53[0]) = -16;
  *(v53 + 4) = xmmword_2773B3DD0;
  if (a3 == 1)
  {
    memset(v53, 0, 20);
  }

  v51 = 0;
  v52 = xmmword_2773B3DD0;
  v49 = 0;
  *&v50 = 0xF0F0F0F0F0F0F0FLL;
  *(&v50 + 1) = 0xF0F0F0F0F0F0F0FLL;
  sub_27728F608(v9, v8, v53, &v51, &v49, v23, v10, v41, xmmword_2773B3DD0, v22, v5);
  sub_27728F608(v9, v8, dword_2773B42A0, &dword_2773B42A0[5], &dword_2773B42A0[5], (v23 + 64), v41, v22, v42, v10, v5);
  return sub_277290080(v23 + 64, v23 + 80, v23 + 112, 64, 0xFu);
}

uint64_t sub_27728F504(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint8x8_t a5)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = 0;
        v9 = result + 16 * a2 + (v6 << 8);
        a5.i32[0] = *v9;
        v10 = vmovl_u8(a5).u64[0];
        v11 = *(v9 + 4);
        a5 = *(v9 + 5);
        v12 = *(v9 + 13);
        v13 = *(v9 + 14);
        v14 = vdup_lane_s8(a5, 7);
        v15 = *(v9 + 15);
        v14.i8[1] = v12;
        v14.i8[2] = v13;
        v14.i8[3] = v15;
        v16 = vzip1_s32(v14, vuzp1_s8(v10, a5));
        v17 = vuzp1_s8(v10, a5).u32[0];
        v18 = vuzp1_s8(vzip1_s8(a5, a5), a5).u32[0];
        do
        {
          v19 = v7 + v8;
          *v19 = v17;
          *(v19 + 4) = v11;
          *(v19 + 5) = v18;
          *(v19 + 9) = a5.i8[4];
          *(v19 + 10) = a5.i8[5];
          *(v19 + 11) = a5.i8[6];
          *(v19 + 12) = v16;
          *(v19 + 20) = v11;
          *(v19 + 21) = *&a5;
          *(v19 + 29) = v12;
          *(v19 + 30) = v13;
          *(v19 + 31) = v15;
          *(v19 + 32) = v17;
          *(v19 + 36) = v11;
          *(v19 + 37) = *&a5;
          *(v19 + 45) = v12;
          *(v19 + 46) = v13;
          *(v19 + 47) = v15;
          *(v19 + 48) = v17;
          *(v19 + 52) = v11;
          *(v19 + 53) = *&a5;
          *(v19 + 61) = v12;
          *(v19 + 62) = v13;
          v8 += 64;
          *(v19 + 63) = v15;
        }

        while (v8 != 256);
        ++v6;
        v7 += 256;
      }

      while (v6 != 4);
      result += 1024;
      a3 += 1024;
    }
  }

  return result;
}

uint64_t sub_27728F608(uint64_t a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, uint64_t a10, int a11)
{
  sub_27728F6BC(a6, a6 + 256, a1, a2, a3, a4, a5, a11, a9);
  v14 = 0;
  v15 = a6;
  do
  {
    v16 = &v15[32].i8[15];
    v17 = (a8 + 30 + v14);
    v18 = vld1q_dup_s8(v16);
    v19 = vld1q_dup_s16(v17);
    v15[96] = v18;
    v20 = (a10 + 16 + v14);
    v20[-1] = v19;
    *v20 = v19;
    ++v15;
    v14 += 32;
  }

  while (v14 != 512);

  return sub_27728FE04(a6 + 768, a7, a8, a10, v18);
}

uint64_t sub_27728F6BC(uint64_t result, uint64_t a2, uint64_t a3, int *a4, int *a5, int *a6, int *a7, int a8, int8x16_t a9)
{
  v12 = 0;
  v13 = *a5;
  v14 = *a6;
  a9.i64[0] = 0x14FFFBFFFBFFFBLL;
  v15 = *a7;
  v16 = *(a5 + 5);
  v17 = *(a6 + 5);
  v18.i64[0] = 0x14001400140014;
  v18.i64[1] = 0x14001400140014;
  v19 = *(a7 + 5);
  v20.i64[0] = 0x400000004;
  v20.i64[1] = 0x400000004;
  v21.i64[0] = 0x1000000010;
  v21.i64[1] = 0x1000000010;
  v22.i64[0] = 0xFF000000FFLL;
  v22.i64[1] = 0xFF000000FFLL;
  do
  {
    v23 = a3 + (*a4 << (a8 != 0));
    v24 = (v23 + v13);
    if (v16)
    {
      v25 = v24[15];
      if (v16 == 1)
      {
        v26 = v24[14];
        goto LABEL_7;
      }
    }

    else
    {
      v25 = *v24;
    }

    v26 = v25;
LABEL_7:
    v27 = (v23 + v14);
    v28 = *(v23 + v14);
    if (v17)
    {
      v29 = v27[1];
      if (v17 == 1)
      {
        v30 = v27->i8[1];
        v31 = v27->u8[2];
        v32 = v27->i8[3];
        v9.i32[0] = v27->i32[1];
        v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
        goto LABEL_12;
      }

      v28 = v29.u8[7];
    }

    v29 = vdup_n_s8(v28);
    *v9.i8 = vdup_n_s16(v28);
    v30 = v28;
    v31 = v28;
    v32 = v28;
LABEL_12:
    v33 = (v23 + v15);
    v34 = *v33;
    if (v19)
    {
      if (v19 == 1)
      {
        v35 = v33[1];
        v36 = v33[2];
        goto LABEL_17;
      }

      v34 = v33[15];
    }

    v35 = v34;
    v36 = v34;
LABEL_17:
    v37 = result + v12;
    v10.i8[0] = v25;
    v10.i8[1] = v28;
    v10.i8[2] = v30;
    v10.i8[3] = v32;
    v38 = vuzp1_s8(*v9.i8, 0x14FFFBFFFBFFFBLL);
    v39 = vmovl_u8(vzip1_s32(*v10.i8, v38));
    v40 = vmovl_high_u16(v39);
    v41 = vmovl_u16(*v39.i8);
    v42 = vmovl_u8(v29);
    v43 = vmovl_high_u16(v42);
    v44 = vmovl_u16(*v42.i8);
    *v11.i8 = vand_s8(__PAIR64__(v34, v31), 0xFF000000FFLL);
    v45 = vextq_s8(v41, v41, 8uLL);
    v46.i32[0] = vdup_lane_s32(*v41.i8, 1).u32[0];
    *v45.i8 = vmul_s32(vzip1_s32(*v45.i8, *v11.i8), 0x1400000014);
    v46.i32[1] = v34;
    *v47.i8 = vmul_s32(v46, 0x1400000014);
    v38.i32[1] = v29.i32[0];
    *(result + v12 + 12) = v29.i32[1];
    *(v37 + 4) = v38;
    v48 = vextq_s8(v39, v42, 0xCuLL).u64[0];
    v49 = vextq_s8(v42, v42, 4uLL).u64[0];
    v50.i64[0] = __PAIR64__(v41.u32[3], v11.u32[0]);
    v50.i64[1] = v40.i64[0];
    v51 = vuzp2q_s32(vzip2q_s32(v11, v43), v11);
    v51.i32[3] = v35;
    v52 = vmulq_s32(v50, v20);
    v53 = vmulq_s32(v51, v20);
    v54 = vmull_s16(v48, 0x4000400040004);
    v55 = vextq_s8(v52, v11, 4uLL);
    v55.i32[0] = v11.i32[0];
    v56.i32[0] = vdupq_lane_s32(*v52.i8, 1).u32[0];
    v56.i32[1] = v41.i32[3];
    v56.i64[1] = v40.i64[0];
    v55.i32[3] = v54.i32[0];
    v57 = vaddq_s32(v56, v55);
    v58 = vmull_s16(v49, 0x4000400040004);
    v59 = vaddq_s32(vextq_s8(v40, v44, 8uLL), vextq_s8(v54, v58, 4uLL));
    v60 = vaddq_s32(vzip1q_s32(v45, vextq_s8(v45, v52, 0xCuLL)), v21);
    v61 = vaddq_s32(vextq_s8(v44, v43, 8uLL), vextq_s8(v58, v53, 4uLL));
    v60.i32[1] = v60.i32[0];
    v62 = vextq_s8(a9, v41, 0xCuLL);
    v62.i32[0] = v26;
    v63 = vaddq_s32(v60, v62);
    v64 = vmull_s16(*v39.i8, 0x14FFFBFFFBFFFBLL);
    v11 = vmlal_high_u16(v57, v39, v18);
    v65 = vmlal_s16(v63, *v39.i8, 0x14FFFBFFFBFFFBLL);
    v45.i32[0] = v47.i32[0];
    v66 = vmull_high_u16(v39, v18);
    v45.i64[1] = __PAIR64__(v66.u32[0], v64.u32[3]);
    v67 = vmull_high_u16(v42, v18);
    v68 = vmlal_u16(v59, *v42.i8, 0x14001400140014);
    v69 = vmlal_high_u16(v61, v42, v18);
    v70 = vmull_u16(*v42.i8, 0x14001400140014);
    v47.i64[1] = v47.i64[0];
    v71 = vextq_s8(v67, vextq_s8(v47, v47, 0xCuLL), 4uLL);
    v72 = vextq_s8(v70, v67, 4uLL);
    v73 = vaddq_s32(v11, vaddq_s32(vextq_s8(v66, v70, 4uLL), vextq_s8(v40, v44, 0xCuLL)));
    v74 = vextq_s8(v51, a9, 4uLL);
    v74.i32[3] = v36;
    v75 = vaddq_s32(vaddq_s32(v65, vextq_s8(v41, v40, 0xCuLL)), v45);
    v10 = vuzp1q_s16(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlal_s16(vaddq_s32(v68, vaddq_s32(v72, vextq_s8(v44, v43, 0xCuLL))), v49, 0x4000400040004), v21), 5uLL), 0), v22), vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v69, v74), v53), v21), v71), 5uLL), 0), v22));
    v9 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(v75, v52), 5uLL), 0), v22), vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlal_s16(v73, v48, 0x4000400040004), v21), 5uLL), 0), v22)), v10);
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v31;
    *(v37 + 3) = v32;
    *(a2 + v12) = v9;
    ++a4;
    v12 += 16;
  }

  while (v12 != 256);
  return result;
}

uint64_t sub_27728F9C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int32 a5, int32x4_t a6, int32x4_t a7, double a8, int32x4_t a9)
{
  a6.i32[0] = 0;
  a7.i32[0] = 0;
  v9 = 0;
  v10 = *(a4 - 8);
  a9.i32[0] = a5;
  v11 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a6), 0), v10, vaddq_s32(v10, v10));
  v12 = *(a3 + v11.i32[1]);
  v13 = *(a3 + v11.i32[2]);
  v14 = *(a4 + 8);
  v15 = *(a3 + v11.i32[3]);
  if (a5)
  {
    v14 *= 2;
  }

  v16 = *(a3 + v11.i32[0]);
  v17 = *(a3 + v14);
  v10.i32[0] = a5;
  v18 = vmovl_high_u8(v16);
  v19 = vmovl_u8(*v16.i8);
  v20 = (a4 + 12);
  v62 = vdupq_lane_s32(*&vceqq_s32(v10, a7), 0);
  v21.i64[0] = 0x10001000100010;
  v21.i64[1] = 0x10001000100010;
  v22.i64[0] = 0xFF00FF00FF00FFLL;
  v22.i64[1] = 0xFF00FF00FF00FFLL;
  v23 = xmmword_2773B4220;
  v24.i64[0] = 0x14001400140014;
  v24.i64[1] = 0x14001400140014;
  v25.i64[0] = 0x4000400040004;
  v25.i64[1] = 0x4000400040004;
  while (v9 != 256)
  {
    v65.val[0] = vmovl_high_u8(v17);
    v66.val[0] = vmovl_u8(*v17.i8);
    v63.val[0] = vmovl_high_u8(v15);
    v64.val[0] = vmovl_u8(*v15.i8);
    v26 = vqtbl2q_s8(*v13.i8, xmmword_2773B41C0);
    v65.val[1] = vmovl_high_u8(v26);
    v27 = *v20++;
    v28 = vbslq_s8(v62, v27, vaddq_s32(v27, v27));
    v66.val[1] = vmovl_u8(*v26.i8);
    v29 = v28.i32[2];
    v30 = v28.i32[3];
    v63.val[1] = vmovl_u8(*&vuzp2q_s8(v12, v23));
    v31 = vmovl_high_u16(v63.val[0]);
    v32 = *(a3 + v28.i32[0]);
    v33 = vqtbl2q_s8(v63, xmmword_2773B41D0);
    v64.val[1] = v63.val[1];
    v34 = v65.val[0];
    v34.i16[1] = v13.u8[9];
    v34.i16[3] = v13.u8[11];
    v35 = vqtbl2q_s8(v64, xmmword_2773B41E0);
    v36 = vqtbl2q_s8(v63, xmmword_2773B41F0);
    v37 = *(a3 + v28.i32[1]);
    v38 = vqtbl2q_s8(v65, xmmword_2773B4220);
    v39 = vaddq_s16(v38, v63.val[0]);
    v40 = vaddl_high_u8(v37, v32);
    v41 = vaddw_u16(vmull_u16(*v40.i8, 0x14001400140014), *v63.val[0].i8);
    v34.i64[0] = v63.val[0].i64[0];
    v63.val[1] = vqtbl2q_s8(v66, xmmword_2773B4220);
    v63.val[0] = vaddq_s16(v63.val[1], v64.val[0]);
    v64.val[1] = v66.val[0];
    v64.val[1].i16[1] = v13.u8[1];
    v64.val[1].i16[3] = v13.u8[3];
    v64.val[1].i16[5] = v13.u8[5];
    v64.val[1].i16[7] = v13.u8[7];
    v64.val[0].i16[0] = v12.u8[0];
    v64.val[0].i16[2] = v12.u8[2];
    v64.val[0].i16[4] = v12.u8[4];
    v64.val[0].i16[6] = v12.u8[6];
    v36.i16[6] = v12.u8[14];
    v34.i16[0] = v12.u8[8];
    v34.i16[2] = v12.u8[10];
    v34.i16[4] = v12.u8[12];
    v34.i16[5] = v13.u8[13];
    v34.i16[6] = v65.val[0].i16[6];
    v34.i16[7] = v13.u8[15];
    v42 = vaddq_s16(vmlaq_s16(vmulq_s16(vaddq_s16(v36, v34), xmmword_2773B4210), vaddq_s16(v33, v65.val[1]), xmmword_2773B4200), v18);
    v43 = vaddw_u8(vaddq_s16(vmlaq_s16(vmulq_s16(vaddq_s16(v64.val[1], v64.val[0]), xmmword_2773B4210), vaddq_s16(v35, v66.val[1]), xmmword_2773B4200), v19), *v32.i8);
    v44 = vaddw_high_u8(v42, v32);
    v23 = *(a3 + v29);
    v45 = vmlaq_s16(vaddw_high_u8(vaddw_high_u8(vmulq_s16(vaddl_high_u8(v32, v13), v25), v12), v37), v39, v24);
    v46 = vmlaq_s16(vaddw_u8(vaddw_u8(vmulq_s16(vaddl_u8(*v32.i8, *v13.i8), v25), *v12.i8), *v37.i8), v63.val[0], v24);
    v47 = vaddw_high_u8(vmulq_s16(vaddl_high_u8(v37, v15), v25), v13);
    v64.val[0] = vaddw_u8(vmulq_s16(vaddl_u8(*v37.i8, *v15.i8), v25), *v13.i8);
    v64.val[1] = vaddl_high_u8(v23, v17);
    v48 = vaddl_u8(*v23.i8, *v17.i8);
    v63.val[0] = *(a3 + v30);
    v49 = (a2 + 2 * v9);
    *v49 = v43;
    v49[1] = v44;
    v50 = (result + v9);
    *v50 = vuzp1q_s8(vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(v43, v21), 5uLL), 0), v22), vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(v44, v21), 5uLL), 0), v22));
    v49[2] = v46;
    v49[3] = v45;
    v50[1] = vuzp1q_s8(vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(v46, v21), 5uLL), 0), v22), vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(v45, v21), 5uLL), 0), v22));
    v51 = vmlaq_s16(vaddw_high_u8(v47, v23), vaddw_high_u8(v38, v32), v24);
    v52 = vmlaq_s16(vaddw_u8(v64.val[0], *v23.i8), vaddw_u8(v63.val[1], *v32.i8), v24);
    v49[4] = v52;
    v49[5] = v51;
    v63.val[1] = vuzp1q_s8(vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(v52, v21), 5uLL), 0), v22), vminq_s16(vmaxq_s16(vshrq_n_s16(vaddq_s16(v51, v21), 5uLL), 0), v22));
    v53 = vmovl_u8(*v15.i8);
    v50[2] = v63.val[1];
    v54 = vaddl_u8(*v37.i8, *v32.i8);
    v63.val[1] = vmlal_high_u16(vmovl_high_u16(v53), v54, v24);
    v55 = vmlal_u16(vaddw_u16(vmull_u16(*v54.i8, 0x14001400140014), *v53.i8), *v48.i8, 0x4000400040004);
    v56 = vmovl_u8(*v63.val[0].i8);
    v57 = vmovl_high_u8(v63.val[0]);
    v58 = vaddw_high_u16(vmlal_high_u16(vmlal_high_u16(v31, v40, v24), v64.val[1], v25), v57);
    v59 = vaddw_u16(vmlal_u16(v41, *v64.val[1].i8, 0x4000400040004), *v57.i8);
    v63.val[1] = vaddw_high_u16(vmlal_high_u16(v63.val[1], v48, v25), v56);
    v60 = vaddw_u16(v55, *v56.i8);
    v49[6] = vuzp1q_s16(v60, v63.val[1]);
    v49[7] = vuzp1q_s16(v59, v58);
    v41.i64[0] = 0x10000000100000;
    v41.i64[1] = 0x10000000100000;
    v61 = vmaxq_s32(vshrq_n_s32(vaddq_s32(vshlq_n_s32(v58, 0x10uLL), v41), 0x15uLL), 0);
    v58.i64[0] = 0xFF000000FFLL;
    v58.i64[1] = 0xFF000000FFLL;
    v19 = v66.val[0];
    v18 = v65.val[0];
    v50[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vshlq_n_s32(v60, 0x10uLL), v41), 0x15uLL), 0), v58), vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vshlq_n_s32(v63.val[1], 0x10uLL), v41), 0x15uLL), 0), v58)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vshlq_n_s32(v59, 0x10uLL), v41), 0x15uLL), 0), v58), vminq_s32(v61, v58)));
    v17 = v63.val[0];
    v13 = v37;
    v9 += 64;
    v15 = v23;
    v12 = v32;
  }

  return result;
}

uint64_t sub_27728FE04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  v6 = 0;
  v7 = (a2 + 30);
  a5.i64[0] = 0x400000004;
  v8.i64[0] = 0x1400000014;
  v8.i64[1] = 0x1400000014;
  v9.i64[0] = 0x20000000200;
  v9.i64[1] = 0x20000000200;
  v10.i64[0] = 0x400000004;
  v10.i64[1] = 0x400000004;
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  do
  {
    v12 = (a3 + 2 * v6);
    v13 = *v12;
    v14 = *(v12 + 1);
    v5.i64[0] = *(v12 + 9);
    v15.i32[0] = *(v12 + 13);
    v15.i16[2] = v12[15];
    v16 = (a4 + 2 * v6);
    v15.i16[3] = *v16;
    v17 = vmovl_s16(v15);
    v18 = vmovl_s16(*v5.i8);
    v19 = vmovl_high_s16(v14);
    v20 = vmovl_s16(*v14.i8);
    v21 = vextq_s8(v20, v20, 4uLL);
    *v21.i8 = vmul_s32(*v21.i8, 0x400000004);
    v22 = vextq_s8(a5, v20, 0xCuLL);
    v23 = vextq_s8(v20, v19, 8uLL);
    v24 = v23;
    v23.i32[3] = v21.i32[0];
    v25 = vaddq_s32(v23, v9);
    v26.i32[0] = *(v7 - 1);
    v26.i32[1] = *v7;
    v26.i64[1] = __PAIR64__(v20.u32[0], v13);
    v27 = vzip1q_s32(v25, v20);
    v28 = -5 * v20.i32[0];
    v22.i32[0] = v13;
    v29 = vaddw_s16(vextq_s8(v18, v17, 0xCuLL), v15);
    v30 = vaddw_s16(vextq_s8(v19, v18, 0xCuLL), *v5.i8);
    v31 = vaddw_high_s16(vextq_s8(v20, v19, 0xCuLL), v14);
    v32 = vaddw_s16(v22, *v14.i8);
    v33 = vextq_s8(v17, v17, 8uLL);
    *v33.i8 = vmul_s32(*v33.i8, 0x400000004);
    v34 = vmovl_s16(vuzp2_s16(*v5.i8, vext_s8(*v5.i8, v15, 4uLL)));
    v24.i32[0] = v21.i32[1];
    v35 = vaddq_s32(v24, v9).u32[0];
    v36 = vmulq_s32(vmovl_s16(vuzp2_s16(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v14, v5, 0xCuLL))), v10);
    v37 = vmulq_s32(v24, v10);
    v38 = vextq_s8(v21, v37, 0xCuLL);
    v39 = vextq_s8(v37, v36, 0xCuLL);
    v37.i32[0] = v35;
    v40 = vext_s8(*v5.i8, v15, 2uLL);
    v14.i64[0] = vextq_s8(v14, v5, 0xAuLL).u64[0];
    v41 = vmulq_s32(vmovl_s16(vtrn2_s16(*v14.i8, *v14.i8)), v10);
    v42 = vmulq_s32(vmovl_s16(vtrn2_s16(v40, v40)), v10);
    v43 = vmulq_s32(v34, v10);
    v44 = vextq_s8(v27, v25, 0xCuLL);
    v45 = vaddq_s32(vtrn2q_s32(vrev64q_s32(vaddq_s32(vrev64q_s32(v19), v9)), v36), vtrn2q_s32(vrev64q_s32(v41), vaddq_s32(vextq_s8(v19, v18, 4uLL), v9)));
    v46 = vaddq_s32(v25, v26);
    v47 = vaddq_s32(vtrn2q_s32(vrev64q_s32(vaddq_s32(vrev64q_s32(v18), v9)), v43), vtrn2q_s32(vrev64q_s32(v42), vaddq_s32(vextq_s8(v18, v17, 4uLL), v9)));
    v48 = vextq_s8(v18, v17, 8uLL);
    v17.i64[0] = vdupq_laneq_s64(v17, 1).u64[0];
    v49.i32[0] = -5 * *v7;
    v49.i32[1] = -5 * v13;
    v49.i64[1] = __PAIR64__(v19.u32[1], v28);
    v17.i32[2] = v16[1];
    v17.i32[3] = v16[2];
    v38.i64[0] = v21.i64[0];
    v50 = vextq_s8(v36, v42, 0xCuLL);
    v50.i32[2] = v43.i32[1];
    v51 = vdupq_laneq_s32(v43, 3);
    v52 = vextq_s8(vextq_s8(v51, v51, 4uLL), v33, 0xCuLL);
    v52.i32[3] = -5 * v17.i32[2];
    v53 = vaddq_s32(v37, vaddq_s32(vaddq_s32(v44, vextq_s8(v19, v18, 8uLL)), vtrn1q_s32(v39, v41)));
    v54 = vaddq_s32(vaddq_s32(v45, v48), v50);
    v5 = vminq_s32(vmaxq_s32(vshrq_n_s32(vmlaq_s32(vaddq_s32(vaddq_s32(v46, v49), v38), v32, v8), 0xAuLL), 0), v11);
    *(result + v6) = vuzp1q_s8(vuzp1q_s16(v5, vminq_s32(vmaxq_s32(vshrq_n_s32(vmlaq_s32(v53, v31, v8), 0xAuLL), 0), v11)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshrq_n_s32(vmlaq_s32(v54, v30, v8), 0xAuLL), 0), v11), vminq_s32(vmaxq_s32(vshrq_n_s32(vmlaq_s32(vaddq_s32(vaddq_s32(v47, v17), v52), v29, v8), 0xAuLL), 0), v11)));
    v6 += 16;
    v7 += 16;
  }

  while (v6 != 256);
  return result;
}

__int128 *sub_277290080(__int128 *result, __int128 *a2, __int128 *a3, int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = 16;
  do
  {
    v9 = *result;
    v14 = *a2;
    v15 = v9;
    v13 = *a3;
    v6 = &v15 + a5;
    v10 = vld1q_dup_s8(v6);
    result[a4] = v10;
    v7 = &v14 + a5;
    v11 = vld1q_dup_s8(v7);
    a2[a4] = v11;
    v8 = &v13 + a5;
    v12 = vld1q_dup_s8(v8);
    a3[a4] = v12;
    ++result;
    ++a2;
    ++a3;
    --v5;
  }

  while (v5);
  return result;
}

uint16x8_t sub_2772906A8(uint16x8_t *a1, unsigned int *a2, int a3, int16x8_t *a4)
{
  v8 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  v11 = 2 * a3;
  v12 = vshlq_n_s64(*(a2 + 6), 0x20uLL);
  v13 = vorrq_s8(v12, *(a2 + 2));
  v12.i32[0] = *(a2 + a3);
  v4.i32[0] = *(a2 + a3 + 4);
  v14 = vshlq_n_s64(v4, 0x20uLL);
  v15 = vorrq_s8(v14, v12);
  v14.i32[0] = *(a2 + a3 + 2);
  v5.i32[0] = *(a2 + a3 + 6);
  v16 = vshlq_n_s64(v5, 0x20uLL);
  v17 = vorrq_s8(v16, v14);
  v16.i32[0] = *(a2 + v11);
  v6.i32[0] = *(a2 + v11 + 4);
  v18 = vshlq_n_s64(v6, 0x20uLL);
  v19 = vorrq_s8(v18, v16);
  v18.i32[0] = *(a2 + v11 + 2);
  v7.i32[0] = *(a2 + v11 + 6);
  v20 = vzip1q_s8(v15, 0);
  v21 = vzip1q_s8(v17, 0);
  v22.i64[0] = 0x20002000200020;
  v22.i64[1] = 0x20002000200020;
  v23 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v8, vzip1q_s8(v13, 0)), *a4, vzip1q_s8(vorrq_s8(vshlq_n_s64(a2[1], 0x20uLL), *a2), 0)), v10, v20), v9, v21), v22), 6uLL);
  result = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v8, v21), *a4, v20), v10, vzip1q_s8(v19, 0)), v9, vzip1q_s8(vorrq_s8(vshlq_n_s64(v7, 0x20uLL), v18), 0)), v22), 6uLL);
  *a1 = v23;
  a1[1] = result;
  return result;
}

double sub_277290798(int16x8_t *a1, uint64_t a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11)
{
  v11 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8((((8 - a4) | (a4 << 16)) * (8 - a5)), xmmword_2773B3DF0), xmmword_2773B3E10), xmmword_2773B3E20);
  v12 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8((((a4 << 16) * a5) & 0xFFFF0000 | ((8 - a4) * a5)), xmmword_2773B3DF0), xmmword_2773B3E10), xmmword_2773B3E20);
  v13 = 2 * a3;
  LODWORD(v14) = *a2;
  HIDWORD(v14) = *(a2 + 4);
  a10.i32[0] = *(a2 + a3);
  a10.i16[2] = *(a2 + 4 + a3);
  a11.i32[0] = *(a2 + v13);
  a11.i16[2] = *(a2 + 4 + v13);
  v15 = vzip1q_s8(vqtbl1q_s8(a10, xmmword_2773B3E30), 0);
  v16 = vzip1q_s8(vqtbl1q_s8(a11, xmmword_2773B3E30), 0);
  v17 = vmlaq_s16(vmulq_s16(vzip1q_s8(vqtbl1q_s8(v14, xmmword_2773B3E30), 0), v11), v15, v12);
  v18 = vdupq_n_s64(0xFFFFFFE0uLL);
  v19.i64[0] = 0x20002000200020;
  v19.i64[1] = 0x20002000200020;
  v17.i64[0] = vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vshlq_u64(v17, v18), vaddq_s16(v17, v19)), 6uLL), xmmword_2773B3E40).u64[0];
  v20 = vmlaq_s16(vmulq_s16(v15, v11), v16, v12);
  *&result = vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(v20, v19), vshlq_u64(v20, v18)), 6uLL), xmmword_2773B3E40).u64[0];
  *&v17.i64[1] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_277291E64(uint64_t result, uint64_t a2, int8x16_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, int8x16_t a12, double a13, double a14, int8x16_t a15, int a16)
{
  v16 = *(a8 + 48);
  v17 = v16[90];
  if (v17 == 1)
  {
    if (a7)
    {
      v47 = &v16[4 * a16];
      v48 = *(v47 + 24);
      LODWORD(v47) = *(v47 + 25);
      a9.i32[0] = v16[87];
      v49 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v50 = vqtbl1q_s8(((v16[3 * v48 + 283] + v16[3 * v47 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v51 = &v16[96 * v48 + 3 * v47];
      a12.i32[0] = *(v51 + 14188);
      v52 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v51 + 1900);
      v53 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v54 = vdupq_n_s32(~v16[83]);
      if ((2 * a7) <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 2 * a7;
      }

      do
      {
        v56 = *(result + 16);
        v57 = vmulq_s16(*result, v53);
        v58 = vuzp2q_s16(vmull_s16(*result, *v53.i8), vmull_high_s16(*result, v53));
        v59 = vzip1q_s16(v57, v58);
        v60 = vzip2q_s16(v57, v58);
        v61 = *(a2 + 16);
        v62 = vmulq_s16(*a2, v52);
        v63 = vuzp2q_s16(vmull_s16(*a2, *v52.i8), vmull_high_s16(*a2, v52));
        v64 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v59, v49), vzip1q_s16(v62, v63)), v54), v50)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v60, v49), vzip2q_s16(v62, v63)), v54), v50));
        v65 = vmulq_s16(v56, v53);
        v66 = vuzp2q_s16(vmull_s16(*v56.i8, *v53.i8), vmull_high_s16(v56, v53));
        v67 = vzip1q_s16(v65, v66);
        v68 = vzip2q_s16(v65, v66);
        v69 = vmulq_s16(v61, v52);
        v70 = vuzp2q_s16(vmull_s16(*v61.i8, *v52.i8), vmull_high_s16(v61, v52));
        v71 = vqmovun_high_s16(vqmovun_s16(v64), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v67, v49), vzip1q_s16(v69, v70)), v54), v50)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v49), vzip2q_s16(v69, v70)), v54), v50)));
        v72 = vzip1q_s8(v71, 0);
        v73 = vzip2q_s8(v71, 0);
        if (a5)
        {
          v74 = *a6;
          v75 = a6[1];
          a6 += 2;
          v72 = vaddq_s16(v74, v72);
          v73 = vaddq_s16(v75, v73);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v72), v73);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v55;
      }

      while (v55);
    }
  }

  else if (v17 == 2)
  {
    if (a7)
    {
      v18 = &v16[4 * a16];
      v19 = *(v18 + 24);
      LODWORD(v18) = *(v18 + 25);
      a9.i32[0] = v16[87];
      v20 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v21 = vqtbl1q_s8(((v16[3 * v19 + 283] + v16[3 * v18 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v22 = &v16[96 * v19 + 3 * v18];
      a12.i32[0] = *(v22 + 14188);
      v23 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v22 + 1900);
      v24 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v25 = vdupq_n_s32(~v16[83]);
      if ((2 * a7) <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2 * a7;
      }

      do
      {
        v27 = *(result + 16);
        v28 = vmulq_s16(*result, v24);
        v29 = vuzp2q_s16(vmull_s16(*result, *v24.i8), vmull_high_s16(*result, v24));
        v30 = vzip1q_s16(v28, v29);
        v31 = vzip2q_s16(v28, v29);
        v32 = *(a2 + 16);
        v33 = vmulq_s16(*a2, v23);
        v34 = vuzp2q_s16(vmull_s16(*a2, *v23.i8), vmull_high_s16(*a2, v23));
        v35 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v30, v20), vzip1q_s16(v33, v34)), v25), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v31, v20), vzip2q_s16(v33, v34)), v25), v21));
        v36 = vmulq_s16(v27, v24);
        v37 = vuzp2q_s16(vmull_s16(*v27.i8, *v24.i8), vmull_high_s16(v27, v24));
        v38 = vzip1q_s16(v36, v37);
        v39 = vzip2q_s16(v36, v37);
        v40 = vmulq_s16(v32, v23);
        v41 = vuzp2q_s16(vmull_s16(*v32.i8, *v23.i8), vmull_high_s16(v32, v23));
        v42 = vqmovun_high_s16(vqmovun_s16(v35), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v38, v20), vzip1q_s16(v40, v41)), v25), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v39, v20), vzip2q_s16(v40, v41)), v25), v21)));
        v43 = vzip1q_s8(v42, 0);
        v44 = vzip2q_s8(v42, 0);
        if (a5)
        {
          v45 = *a6;
          v46 = a6[1];
          a6 += 2;
          v43 = vaddq_s16(v45, v43);
          v44 = vaddq_s16(v46, v44);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v43), v44);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v26;
      }

      while (v26);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v76 = vrhaddq_u16(*result, *a2);
      v77 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v78 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v79 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v80 = *a6;
        v81 = a6[1];
        v82 = a6[2];
        v83 = a6[3];
        a6 += 4;
        v76 = vaddq_s16(v80, v76);
        v77 = vaddq_s16(v81, v77);
        v78 = vaddq_s16(v82, v78);
        v79 = vaddq_s16(v83, v79);
      }

      *a3 = vqmovun_high_s16(vqmovun_s16(v76), v77);
      *(a3 + a4) = vqmovun_high_s16(vqmovun_s16(v78), v79);
      a3 = (a3 + 2 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_27729222C(uint64_t result, uint64_t a2, int8x16_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int a13)
{
  v13 = *(a8 + 48);
  v14 = v13[90];
  if (v14 == 1)
  {
    if (a7)
    {
      v49 = &v13[4 * a13];
      v50 = *(v49 + 24);
      v51 = 3 * *(v49 + 25);
      v52 = &v13[96 * v50 + v51];
      v53 = &v13[v51];
      v54 = &v53[96 * v50];
      a9.i32[0] = *(v52 + 1904);
      a11.i32[0] = *(v52 + 1908);
      v55 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v56 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v55);
      v55.i32[0] = v54[3548];
      v57 = vqtbl1q_s8(v55, xmmword_2773B3DC0);
      a12.i32[0] = v54[3549];
      v58 = vzip1q_s16(v57, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v57.i32[0] = v13[88];
      v59 = vqtbl1q_s8(v57, xmmword_2773B3DF0);
      v60 = vzip1q_s32(vqtbl1q_s8(((v13[3 * v50 + 284] + v53[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v13[3 * v50 + 285] + v53[381] + 1) >> 1), xmmword_2773B3DF0));
      v61 = 2 * a7;
      v62 = vdupq_n_s32(~v13[84]);
      if ((2 * a7) <= 1)
      {
        v61 = 1;
      }

      do
      {
        v63 = *(result + 16);
        v64 = vmulq_s16(*result, v56);
        v65 = vuzp2q_s16(vmull_s16(*result, *v56.i8), vmull_high_s16(*result, v56));
        v66 = vzip1q_s16(v64, v65);
        v67 = vzip2q_s16(v64, v65);
        v68 = *(a2 + 16);
        v69 = vmulq_s16(*a2, v58);
        v70 = vuzp2q_s16(vmull_s16(*a2, *v58.i8), vmull_high_s16(*a2, v58));
        v71 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v66, v59), vzip1q_s16(v69, v70)), v62), v60)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v67, v59), vzip2q_s16(v69, v70)), v62), v60));
        v72 = vmulq_s16(v63, v56);
        v73 = vuzp2q_s16(vmull_s16(*v63.i8, *v56.i8), vmull_high_s16(v63, v56));
        v74 = vzip1q_s16(v72, v73);
        v75 = vzip2q_s16(v72, v73);
        v76 = vmulq_s16(v68, v58);
        v77 = vuzp2q_s16(vmull_s16(*v68.i8, *v58.i8), vmull_high_s16(v68, v58));
        v78 = vqmovun_high_s16(vqmovun_s16(v71), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v74, v59), vzip1q_s16(v76, v77)), v62), v60)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v75, v59), vzip2q_s16(v76, v77)), v62), v60)));
        v79 = vzip1q_s8(v78, 0);
        v80 = vzip2q_s8(v78, 0);
        if (a5)
        {
          v81 = *a6;
          v82 = a6[1];
          a6 += 2;
          v79 = vaddq_s16(v81, v79);
          v80 = vaddq_s16(v82, v80);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v79), v80);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v61;
      }

      while (v61);
    }
  }

  else if (v14 == 2)
  {
    if (a7)
    {
      v15 = &v13[4 * a13];
      v16 = *(v15 + 24);
      v17 = 3 * *(v15 + 25);
      v18 = &v13[96 * v16 + v17];
      v19 = &v13[v17];
      v20 = &v19[96 * v16];
      a9.i32[0] = *(v18 + 1904);
      a11.i32[0] = *(v18 + 1908);
      v21 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v22 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v21);
      v21.i32[0] = v20[3548];
      v23 = vqtbl1q_s8(v21, xmmword_2773B3DC0);
      a12.i32[0] = v20[3549];
      v24 = vzip1q_s16(v23, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v23.i32[0] = v13[88];
      v25 = vqtbl1q_s8(v23, xmmword_2773B3DF0);
      v26 = vzip1q_s32(vqtbl1q_s8(((v13[3 * v16 + 284] + v19[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v13[3 * v16 + 285] + v19[381] + 1) >> 1), xmmword_2773B3DF0));
      v27 = 2 * a7;
      v28 = vdupq_n_s32(~v13[84]);
      if ((2 * a7) <= 1)
      {
        v27 = 1;
      }

      do
      {
        v29 = *(result + 16);
        v30 = vmulq_s16(*result, v22);
        v31 = vuzp2q_s16(vmull_s16(*result, *v22.i8), vmull_high_s16(*result, v22));
        v32 = vzip1q_s16(v30, v31);
        v33 = vzip2q_s16(v30, v31);
        v34 = *(a2 + 16);
        v35 = vmulq_s16(*a2, v24);
        v36 = vuzp2q_s16(vmull_s16(*a2, *v24.i8), vmull_high_s16(*a2, v24));
        v37 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v32, v25), vzip1q_s16(v35, v36)), v28), v26)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v33, v25), vzip2q_s16(v35, v36)), v28), v26));
        v38 = vmulq_s16(v29, v22);
        v39 = vuzp2q_s16(vmull_s16(*v29.i8, *v22.i8), vmull_high_s16(v29, v22));
        v40 = vzip1q_s16(v38, v39);
        v41 = vzip2q_s16(v38, v39);
        v42 = vmulq_s16(v34, v24);
        v43 = vuzp2q_s16(vmull_s16(*v34.i8, *v24.i8), vmull_high_s16(v34, v24));
        v44 = vqmovun_high_s16(vqmovun_s16(v37), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v25), vzip1q_s16(v42, v43)), v28), v26)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v41, v25), vzip2q_s16(v42, v43)), v28), v26)));
        v45 = vzip1q_s8(v44, 0);
        v46 = vzip2q_s8(v44, 0);
        if (a5)
        {
          v47 = *a6;
          v48 = a6[1];
          a6 += 2;
          v45 = vaddq_s16(v47, v45);
          v46 = vaddq_s16(v48, v46);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v45), v46);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v27;
      }

      while (v27);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v83 = vrhaddq_u16(*result, *a2);
      v84 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v85 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v86 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v87 = *a6;
        v88 = a6[1];
        v89 = a6[2];
        v90 = a6[3];
        a6 += 4;
        v83 = vaddq_s16(v87, v83);
        v84 = vaddq_s16(v88, v84);
        v85 = vaddq_s16(v89, v85);
        v86 = vaddq_s16(v90, v86);
      }

      *a3 = vqmovun_high_s16(vqmovun_s16(v83), v84);
      *(a3 + a4) = vqmovun_high_s16(vqmovun_s16(v85), v86);
      a3 = (a3 + 2 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_277292664(uint64_t result, uint64_t a2, int8x8_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, int8x16_t a12, double a13, double a14, int8x16_t a15, int a16)
{
  v16 = *(a8 + 48);
  v17 = v16[90];
  if (v17 == 1)
  {
    if (a7)
    {
      v47 = &v16[4 * a16];
      v48 = *(v47 + 24);
      LODWORD(v47) = *(v47 + 25);
      a9.i32[0] = v16[87];
      v49 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v50 = vqtbl1q_s8(((v16[3 * v48 + 283] + v16[3 * v47 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v51 = &v16[96 * v48 + 3 * v47];
      a12.i32[0] = *(v51 + 14188);
      v52 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v51 + 1900);
      v53 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v54 = vdupq_n_s32(~v16[83]);
      if ((2 * a7) <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 2 * a7;
      }

      do
      {
        v56 = *(result + 16);
        v57 = vmulq_s16(*result, v53);
        v58 = vuzp2q_s16(vmull_s16(*result, *v53.i8), vmull_high_s16(*result, v53));
        v59 = vzip1q_s16(v57, v58);
        v60 = vzip2q_s16(v57, v58);
        v61 = *(a2 + 16);
        v62 = vmulq_s16(*a2, v52);
        v63 = vuzp2q_s16(vmull_s16(*a2, *v52.i8), vmull_high_s16(*a2, v52));
        v64 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v59, v49), vzip1q_s16(v62, v63)), v54), v50)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v60, v49), vzip2q_s16(v62, v63)), v54), v50));
        v65 = vmulq_s16(v56, v53);
        v66 = vuzp2q_s16(vmull_s16(*v56.i8, *v53.i8), vmull_high_s16(v56, v53));
        v67 = vzip1q_s16(v65, v66);
        v68 = vzip2q_s16(v65, v66);
        v69 = vmulq_s16(v61, v52);
        v70 = vuzp2q_s16(vmull_s16(*v61.i8, *v52.i8), vmull_high_s16(v61, v52));
        v71 = vqmovun_high_s16(vqmovun_s16(v64), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v67, v49), vzip1q_s16(v69, v70)), v54), v50)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v49), vzip2q_s16(v69, v70)), v54), v50)));
        v72 = vzip1q_s8(v71, 0);
        v73 = vzip2q_s8(v71, 0);
        if (a5)
        {
          v74 = *a6;
          v75 = a6[2];
          a6 += 4;
          v72 = vaddq_s16(v74, v72);
          v73 = vaddq_s16(v75, v73);
        }

        *a3 = vqmovun_s16(v72);
        *(a3 + a4) = vqmovun_s16(v73);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v55;
      }

      while (v55);
    }
  }

  else if (v17 == 2)
  {
    if (a7)
    {
      v18 = &v16[4 * a16];
      v19 = *(v18 + 24);
      LODWORD(v18) = *(v18 + 25);
      a9.i32[0] = v16[87];
      v20 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v21 = vqtbl1q_s8(((v16[3 * v19 + 283] + v16[3 * v18 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v22 = &v16[96 * v19 + 3 * v18];
      a12.i32[0] = *(v22 + 14188);
      v23 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v22 + 1900);
      v24 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v25 = vdupq_n_s32(~v16[83]);
      if ((2 * a7) <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2 * a7;
      }

      do
      {
        v27 = *(result + 16);
        v28 = vmulq_s16(*result, v24);
        v29 = vuzp2q_s16(vmull_s16(*result, *v24.i8), vmull_high_s16(*result, v24));
        v30 = vzip1q_s16(v28, v29);
        v31 = vzip2q_s16(v28, v29);
        v32 = *(a2 + 16);
        v33 = vmulq_s16(*a2, v23);
        v34 = vuzp2q_s16(vmull_s16(*a2, *v23.i8), vmull_high_s16(*a2, v23));
        v35 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v30, v20), vzip1q_s16(v33, v34)), v25), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v31, v20), vzip2q_s16(v33, v34)), v25), v21));
        v36 = vmulq_s16(v27, v24);
        v37 = vuzp2q_s16(vmull_s16(*v27.i8, *v24.i8), vmull_high_s16(v27, v24));
        v38 = vzip1q_s16(v36, v37);
        v39 = vzip2q_s16(v36, v37);
        v40 = vmulq_s16(v32, v23);
        v41 = vuzp2q_s16(vmull_s16(*v32.i8, *v23.i8), vmull_high_s16(v32, v23));
        v42 = vqmovun_high_s16(vqmovun_s16(v35), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v38, v20), vzip1q_s16(v40, v41)), v25), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v39, v20), vzip2q_s16(v40, v41)), v25), v21)));
        v43 = vzip1q_s8(v42, 0);
        v44 = vzip2q_s8(v42, 0);
        if (a5)
        {
          v45 = *a6;
          v46 = a6[2];
          a6 += 4;
          v43 = vaddq_s16(v45, v43);
          v44 = vaddq_s16(v46, v44);
        }

        *a3 = vqmovun_s16(v43);
        *(a3 + a4) = vqmovun_s16(v44);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v26;
      }

      while (v26);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v76 = vrhaddq_u16(*result, *a2);
      v77 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v78 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v79 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v80 = *a6;
        v81 = a6[2];
        v82 = a6[4];
        v83 = a6[6];
        a6 += 8;
        v76 = vaddq_s16(v80, v76);
        v77 = vaddq_s16(v81, v77);
        v78 = vaddq_s16(v82, v78);
        v79 = vaddq_s16(v83, v79);
      }

      *a3 = vqmovun_s16(v76);
      *(a3 + a4) = vqmovun_s16(v77);
      *(a3 + 2 * a4) = vqmovun_s16(v78);
      *(a3 + 3 * a4) = vqmovun_s16(v79);
      a3 = (a3 + 4 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_277292A5C(uint64_t result, uint64_t a2, int8x8_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int a13)
{
  v13 = *(a8 + 48);
  v14 = v13[90];
  if (v14 == 1)
  {
    if (a7)
    {
      v49 = &v13[4 * a13];
      v50 = *(v49 + 24);
      v51 = 3 * *(v49 + 25);
      v52 = &v13[96 * v50 + v51];
      v53 = &v13[v51];
      v54 = &v53[96 * v50];
      a9.i32[0] = *(v52 + 1904);
      a11.i32[0] = *(v52 + 1908);
      v55 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v56 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v55);
      v55.i32[0] = v54[3548];
      v57 = vqtbl1q_s8(v55, xmmword_2773B3DC0);
      a12.i32[0] = v54[3549];
      v58 = vzip1q_s16(v57, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v57.i32[0] = v13[88];
      v59 = vqtbl1q_s8(v57, xmmword_2773B3DF0);
      v60 = vzip1q_s32(vqtbl1q_s8(((v13[3 * v50 + 284] + v53[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v13[3 * v50 + 285] + v53[381] + 1) >> 1), xmmword_2773B3DF0));
      v61 = 2 * a7;
      v62 = vdupq_n_s32(~v13[84]);
      if ((2 * a7) <= 1)
      {
        v61 = 1;
      }

      do
      {
        v63 = *(result + 16);
        v64 = vmulq_s16(*result, v56);
        v65 = vuzp2q_s16(vmull_s16(*result, *v56.i8), vmull_high_s16(*result, v56));
        v66 = vzip1q_s16(v64, v65);
        v67 = vzip2q_s16(v64, v65);
        v68 = *(a2 + 16);
        v69 = vmulq_s16(*a2, v58);
        v70 = vuzp2q_s16(vmull_s16(*a2, *v58.i8), vmull_high_s16(*a2, v58));
        v71 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v66, v59), vzip1q_s16(v69, v70)), v62), v60)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v67, v59), vzip2q_s16(v69, v70)), v62), v60));
        v72 = vmulq_s16(v63, v56);
        v73 = vuzp2q_s16(vmull_s16(*v63.i8, *v56.i8), vmull_high_s16(v63, v56));
        v74 = vzip1q_s16(v72, v73);
        v75 = vzip2q_s16(v72, v73);
        v76 = vmulq_s16(v68, v58);
        v77 = vuzp2q_s16(vmull_s16(*v68.i8, *v58.i8), vmull_high_s16(v68, v58));
        v78 = vqmovun_high_s16(vqmovun_s16(v71), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v74, v59), vzip1q_s16(v76, v77)), v62), v60)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v75, v59), vzip2q_s16(v76, v77)), v62), v60)));
        v79 = vzip1q_s8(v78, 0);
        v80 = vzip2q_s8(v78, 0);
        if (a5)
        {
          v81 = *a6;
          v82 = a6[2];
          a6 += 4;
          v79 = vaddq_s16(v81, v79);
          v80 = vaddq_s16(v82, v80);
        }

        *a3 = vqmovun_s16(v79);
        *(a3 + a4) = vqmovun_s16(v80);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v61;
      }

      while (v61);
    }
  }

  else if (v14 == 2)
  {
    if (a7)
    {
      v15 = &v13[4 * a13];
      v16 = *(v15 + 24);
      v17 = 3 * *(v15 + 25);
      v18 = &v13[96 * v16 + v17];
      v19 = &v13[v17];
      v20 = &v19[96 * v16];
      a9.i32[0] = *(v18 + 1904);
      a11.i32[0] = *(v18 + 1908);
      v21 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v22 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v21);
      v21.i32[0] = v20[3548];
      v23 = vqtbl1q_s8(v21, xmmword_2773B3DC0);
      a12.i32[0] = v20[3549];
      v24 = vzip1q_s16(v23, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v23.i32[0] = v13[88];
      v25 = vqtbl1q_s8(v23, xmmword_2773B3DF0);
      v26 = vzip1q_s32(vqtbl1q_s8(((v13[3 * v16 + 284] + v19[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v13[3 * v16 + 285] + v19[381] + 1) >> 1), xmmword_2773B3DF0));
      v27 = 2 * a7;
      v28 = vdupq_n_s32(~v13[84]);
      if ((2 * a7) <= 1)
      {
        v27 = 1;
      }

      do
      {
        v29 = *(result + 16);
        v30 = vmulq_s16(*result, v22);
        v31 = vuzp2q_s16(vmull_s16(*result, *v22.i8), vmull_high_s16(*result, v22));
        v32 = vzip1q_s16(v30, v31);
        v33 = vzip2q_s16(v30, v31);
        v34 = *(a2 + 16);
        v35 = vmulq_s16(*a2, v24);
        v36 = vuzp2q_s16(vmull_s16(*a2, *v24.i8), vmull_high_s16(*a2, v24));
        v37 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v32, v25), vzip1q_s16(v35, v36)), v28), v26)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v33, v25), vzip2q_s16(v35, v36)), v28), v26));
        v38 = vmulq_s16(v29, v22);
        v39 = vuzp2q_s16(vmull_s16(*v29.i8, *v22.i8), vmull_high_s16(v29, v22));
        v40 = vzip1q_s16(v38, v39);
        v41 = vzip2q_s16(v38, v39);
        v42 = vmulq_s16(v34, v24);
        v43 = vuzp2q_s16(vmull_s16(*v34.i8, *v24.i8), vmull_high_s16(v34, v24));
        v44 = vqmovun_high_s16(vqmovun_s16(v37), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v25), vzip1q_s16(v42, v43)), v28), v26)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v41, v25), vzip2q_s16(v42, v43)), v28), v26)));
        v45 = vzip1q_s8(v44, 0);
        v46 = vzip2q_s8(v44, 0);
        if (a5)
        {
          v47 = *a6;
          v48 = a6[2];
          a6 += 4;
          v45 = vaddq_s16(v47, v45);
          v46 = vaddq_s16(v48, v46);
        }

        *a3 = vqmovun_s16(v45);
        *(a3 + a4) = vqmovun_s16(v46);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v27;
      }

      while (v27);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v83 = vrhaddq_u16(*result, *a2);
      v84 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v85 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v86 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v87 = *a6;
        v88 = a6[2];
        v89 = a6[4];
        v90 = a6[6];
        a6 += 8;
        v83 = vaddq_s16(v87, v83);
        v84 = vaddq_s16(v88, v84);
        v85 = vaddq_s16(v89, v85);
        v86 = vaddq_s16(v90, v86);
      }

      *a3 = vqmovun_s16(v83);
      *(a3 + a4) = vqmovun_s16(v84);
      *(a3 + 2 * a4) = vqmovun_s16(v85);
      *(a3 + 3 * a4) = vqmovun_s16(v86);
      a3 = (a3 + 4 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

int8x8_t sub_277292EC4(uint16x8_t *a1, uint16x8_t *a2, int8x8_t *a3, int a4, uint64_t a5, int16x8_t *a6, uint64_t a7, int a8, int8x16_t a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v12 = *(a7 + 48);
  v13 = v12[90];
  if (v13 != 2 && v13 != 1)
  {
    v45 = vrhaddq_u16(*a1, *a2);
    v46 = vrhaddq_u16(a1[1], a2[1]);
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = &v12[4 * a8];
  v15 = *(v14 + 24);
  v16 = 3 * *(v14 + 25);
  v17 = &v12[96 * v15 + v16];
  v18 = &v12[v16];
  v19 = &v18[96 * v15];
  a9.i32[0] = *(v17 + 1904);
  v20 = vqtbl1q_s8(a9, xmmword_2773B3DC0);
  a10.i32[0] = *(v17 + 1908);
  v21 = vzip1q_s16(v20, vqtbl1q_s8(a10, xmmword_2773B3DC0));
  v20.i32[0] = v19[3548];
  v22 = vqtbl1q_s8(v20, xmmword_2773B3DC0);
  a12.i32[0] = v19[3549];
  v23 = vzip1q_s16(v22, vqtbl1q_s8(a12, xmmword_2773B3DC0));
  v22.i32[0] = v12[88];
  v24 = vqtbl1q_s8(v22, xmmword_2773B3DF0);
  v25 = vzip1q_s32(vqtbl1q_s8(((v12[3 * v15 + 284] + v18[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v12[3 * v15 + 285] + v18[381] + 1) >> 1), xmmword_2773B3DF0));
  v26 = a1[1];
  v27 = vmulq_s16(*a1, v21);
  v28 = vuzp2q_s16(vmull_s16(*a1->i8, *v21.i8), vmull_high_s16(*a1, v21));
  v29 = vzip1q_s16(v27, v28);
  v30 = vzip2q_s16(v27, v28);
  v31 = a2[1];
  v32 = vmulq_s16(*a2, v23);
  v33 = vuzp2q_s16(vmull_s16(*a2->i8, *v23.i8), vmull_high_s16(*a2, v23));
  v34 = vzip1q_s16(v32, v33);
  v35 = vaddq_s32(vaddq_s32(v30, v24), vzip2q_s16(v32, v33));
  v36 = vdupq_n_s32(~v12[84]);
  v37 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v29, v24), v34), v36), v25)), vaddq_s32(vshlq_s32(v35, v36), v25));
  v38 = vmulq_s16(v26, v21);
  v39 = vuzp2q_s16(vmull_s16(*v26.i8, *v21.i8), vmull_high_s16(v26, v21));
  v40 = vzip1q_s16(v38, v39);
  v41 = vzip2q_s16(v38, v39);
  v42 = vmulq_s16(v31, v23);
  v43 = vuzp2q_s16(vmull_s16(*v31.i8, *v23.i8), vmull_high_s16(v31, v23));
  v44 = vqmovun_high_s16(vqmovun_s16(v37), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v24), vzip1q_s16(v42, v43)), v36), v25)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v41, v24), vzip2q_s16(v42, v43)), v36), v25)));
  v45 = vzip1q_s8(v44, 0);
  v46 = vzip2q_s8(v44, 0);
  if (a5)
  {
LABEL_4:
    v45 = vaddq_s16(*a6, v45);
    v46 = vaddq_s16(a6[2], v46);
  }

LABEL_5:
  result = vqmovun_s16(v46);
  *a3 = vqmovun_s16(v45);
  *(a3 + a4) = result;
  return result;
}

int16x4_t *sub_2772930A4(int16x4_t *result, int16x4_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t *a6, int a7, uint64_t a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int8x16_t a12, uint16x8_t a13, uint16x8_t a14, int8x16_t a15, uint16x8_t a16, int a17)
{
  v20 = *(a8 + 48);
  v21 = v20[90];
  if (v21 == 1)
  {
    if (a7)
    {
      v47 = &v20[4 * a17];
      v48 = *(v47 + 24);
      LODWORD(v47) = *(v47 + 25);
      a9.i32[0] = v20[87];
      v49 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v50 = vqtbl1q_s8(((v20[3 * v48 + 283] + v20[3 * v47 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v51 = &v20[96 * v48 + 3 * v47];
      a12.i32[0] = *(v51 + 14188);
      v52 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v51 + 1900);
      v53 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v54 = vdupq_n_s32(~v20[83]);
      if ((2 * a7) <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 2 * a7;
      }

      v56 = vmull_s16(0, *&vextq_s8(v53, v53, 8uLL));
      v57 = vmull_s16(0, *&vextq_s8(v52, v52, 8uLL));
      do
      {
        *v17.i8 = *result;
        *v18.i8 = result[1];
        v58 = vmulq_s16(v17, v53);
        v59 = vuzp2q_s16(vmull_s16(*result, *v53.i8), v56);
        v60 = vzip1q_s16(v58, v59);
        v61 = vzip2q_s16(v58, v59);
        *v58.i8 = *a2;
        *v19.i8 = a2[1];
        v62 = vmulq_s16(v58, v52);
        v63 = vuzp2q_s16(vmull_s16(*a2, *v52.i8), v57);
        v64 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v60, v49), vzip1q_s16(v62, v63)), v54), v50)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v61, v49), vzip2q_s16(v62, v63)), v54), v50));
        v65 = vmulq_s16(v18, v53);
        v66 = vuzp2q_s16(vmull_s16(*v18.i8, *v53.i8), v56);
        v67 = vzip1q_s16(v65, v66);
        v68 = vzip2q_s16(v65, v66);
        v69 = vmulq_s16(v19, v52);
        v19 = vuzp2q_s16(vmull_s16(*v19.i8, *v52.i8), v57);
        v70 = vaddq_s32(vaddq_s32(v67, v49), vzip1q_s16(v69, v19));
        v71 = vqmovun_high_s16(vqmovun_s16(v64), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v70, v54), v50)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v49), vzip2q_s16(v69, v19)), v54), v50)));
        v18 = vzip1q_s8(v71, 0);
        v17 = vzip2q_s8(v71, 0);
        if (a5)
        {
          v64.i64[0] = *a6;
          v70.i64[0] = a6[4];
          a6 += 8;
          v18 = vaddq_s16(v64, v18);
          v17 = vaddq_s16(v70, v17);
        }

        *a3 = vqmovun_s16(v18).u32[0];
        *(a3 + a4) = vqmovun_s16(v17).u32[0];
        a3 = (a3 + 2 * a4);
        result += 2;
        a2 += 2;
        --v55;
      }

      while (v55);
    }
  }

  else if (v21 == 2)
  {
    if (a7)
    {
      v22 = &v20[4 * a17];
      v23 = *(v22 + 24);
      LODWORD(v22) = *(v22 + 25);
      a9.i32[0] = v20[87];
      v24 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v25 = vqtbl1q_s8(((v20[3 * v23 + 283] + v20[3 * v22 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v26 = &v20[96 * v23 + 3 * v22];
      a12.i32[0] = *(v26 + 14188);
      v27 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v26 + 1900);
      v28 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v29 = vdupq_n_s32(~v20[83]);
      if ((2 * a7) <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2 * a7;
      }

      v31 = vmull_s16(0, *&vextq_s8(v28, v28, 8uLL));
      v32 = vmull_s16(0, *&vextq_s8(v27, v27, 8uLL));
      do
      {
        *v17.i8 = *result;
        *v18.i8 = result[1];
        v33 = vmulq_s16(v17, v28);
        v34 = vuzp2q_s16(vmull_s16(*result, *v28.i8), v31);
        v35 = vzip1q_s16(v33, v34);
        v36 = vzip2q_s16(v33, v34);
        *v33.i8 = *a2;
        *v19.i8 = a2[1];
        v37 = vmulq_s16(v33, v27);
        v38 = vuzp2q_s16(vmull_s16(*a2, *v27.i8), v32);
        v39 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v35, v24), vzip1q_s16(v37, v38)), v29), v25)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v36, v24), vzip2q_s16(v37, v38)), v29), v25));
        v40 = vmulq_s16(v18, v28);
        v41 = vuzp2q_s16(vmull_s16(*v18.i8, *v28.i8), v31);
        v42 = vzip1q_s16(v40, v41);
        v43 = vzip2q_s16(v40, v41);
        v44 = vmulq_s16(v19, v27);
        v19 = vuzp2q_s16(vmull_s16(*v19.i8, *v27.i8), v32);
        v45 = vaddq_s32(vaddq_s32(v42, v24), vzip1q_s16(v44, v19));
        v46 = vqmovun_high_s16(vqmovun_s16(v39), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v45, v29), v25)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v43, v24), vzip2q_s16(v44, v19)), v29), v25)));
        v18 = vzip1q_s8(v46, 0);
        v17 = vzip2q_s8(v46, 0);
        if (a5)
        {
          v39.i64[0] = *a6;
          v45.i64[0] = a6[4];
          a6 += 8;
          v18 = vaddq_s16(v39, v18);
          v17 = vaddq_s16(v45, v17);
        }

        *a3 = vqmovun_s16(v18).u32[0];
        *(a3 + a4) = vqmovun_s16(v17).u32[0];
        a3 = (a3 + 2 * a4);
        result += 2;
        a2 += 2;
        --v30;
      }

      while (v30);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      *a9.i8 = *result;
      *a10.i8 = result[1];
      *a13.i8 = result[2];
      *a14.i8 = result[3];
      *a11.i8 = *a2;
      *a15.i8 = a2[1];
      *a16.i8 = a2[2];
      *v17.i8 = a2[3];
      v72 = vrhaddq_u16(a9, a11);
      a11 = vrhaddq_u16(a10, a15);
      a10 = vrhaddq_u16(a13, a16);
      a9 = vrhaddq_u16(a14, v17);
      if (a5)
      {
        a13.i64[0] = *a6;
        a14.i64[0] = a6[4];
        a15.i64[0] = a6[8];
        a16.i64[0] = a6[12];
        a6 += 16;
        v72 = vaddq_s16(v72, a13);
        a11 = vaddq_s16(a11, a14);
        a10 = vaddq_s16(a10, a15);
        a9 = vaddq_s16(a9, a16);
      }

      *a3 = vqmovun_s16(v72).u32[0];
      *(a3 + a4) = vqmovun_s16(a11).u32[0];
      *(a3 + 2 * a4) = vqmovun_s16(a10).u32[0];
      *(a3 + 3 * a4) = vqmovun_s16(a9).u32[0];
      a3 += a4;
      result += 4;
      a2 += 4;
      --a7;
    }

    while (a7);
  }

  return result;
}

double sub_2772934B0(int16x4_t *a1, int16x4_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, int8x16_t a9, uint16x8_t a10, int8x16_t a11, int8x16_t a12, uint16x8_t a13, uint16x8_t a14, uint16x8_t a15, uint16x8_t a16)
{
  v19 = *(a7 + 48);
  v20 = v19[90];
  if (v20 == 1)
  {
    v52 = &v19[4 * a8];
    v53 = *(v52 + 24);
    v54 = 3 * *(v52 + 25);
    v55 = &v19[96 * v53 + v54];
    v56 = &v19[v54];
    v57 = &v56[96 * v53];
    a9.i32[0] = *(v55 + 1904);
    a11.i32[0] = *(v55 + 1908);
    v58 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
    v28 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v58);
    v58.i32[0] = v57[3548];
    v59 = vqtbl1q_s8(v58, xmmword_2773B3DC0);
    a12.i32[0] = v57[3549];
    v60 = vzip1q_s16(v59, vqtbl1q_s8(a12, xmmword_2773B3DC0));
    v59.i32[0] = v19[88];
    v61 = vqtbl1q_s8(v59, xmmword_2773B3DF0);
    v62 = vzip1q_s32(vqtbl1q_s8(((v19[3 * v53 + 284] + v56[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v19[3 * v53 + 285] + v56[381] + 1) >> 1), xmmword_2773B3DF0));
    v63 = vdupq_n_s32(~v19[84]);
    v64 = 1;
    v65 = vmull_s16(0, *&vextq_s8(v28, v28, 8uLL));
    v66 = vmull_s16(0, *&vextq_s8(v60, v60, 8uLL));
    do
    {
      *v16.i8 = *a1;
      *v17.i8 = a1[1];
      v67 = vmulq_s16(v28, v16);
      v68 = vuzp2q_s16(vmull_s16(*a1, *v28.i8), v65);
      v69 = vzip1q_s16(v67, v68);
      v70 = vzip2q_s16(v67, v68);
      *v67.i8 = *a2;
      *v18.i8 = a2[1];
      v71 = vmulq_s16(v60, v67);
      v72 = vuzp2q_s16(vmull_s16(*a2, *v60.i8), v66);
      v73 = v64;
      v74 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v69, v61), vzip1q_s16(v71, v72)), v63), v62)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v70, v61), vzip2q_s16(v71, v72)), v63), v62));
      v75 = vmulq_s16(v28, v17);
      v76 = vuzp2q_s16(vmull_s16(*v17.i8, *v28.i8), v65);
      v77 = vzip1q_s16(v75, v76);
      v78 = vzip2q_s16(v75, v76);
      v79 = vmulq_s16(v60, v18);
      v18 = vuzp2q_s16(vmull_s16(*v18.i8, *v60.i8), v66);
      v80 = vaddq_s32(vaddq_s32(v77, v61), vzip1q_s16(v79, v18));
      v81 = vqmovun_high_s16(vqmovun_s16(v74), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v80, v63), v62)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v78, v61), vzip2q_s16(v79, v18)), v63), v62)));
      v17 = vzip1q_s8(v81, 0);
      v16 = vzip2q_s8(v81, 0);
      if (a5)
      {
        v74.i64[0] = *a6;
        v80.i64[0] = a6[4];
        a6 += 8;
        v17 = vaddq_s16(v74, v17);
        v16 = vaddq_s16(v80, v16);
      }

      v64 = 0;
      *a3 = vqmovun_s16(v17).u32[0];
      *(a3 + a4) = vqmovun_s16(v16).u32[0];
      a3 = (a3 + 2 * a4);
      a1 += 2;
      a2 += 2;
    }

    while ((v73 & 1) != 0);
  }

  else if (v20 == 2)
  {
    v21 = &v19[4 * a8];
    v22 = *(v21 + 24);
    v23 = 3 * *(v21 + 25);
    v24 = &v19[96 * v22 + v23];
    v25 = &v19[v23];
    v26 = &v25[96 * v22];
    a9.i32[0] = *(v24 + 1904);
    a11.i32[0] = *(v24 + 1908);
    v27 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
    v28 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v27);
    v27.i32[0] = v26[3548];
    v29 = vqtbl1q_s8(v27, xmmword_2773B3DC0);
    a12.i32[0] = v26[3549];
    v30 = vzip1q_s16(v29, vqtbl1q_s8(a12, xmmword_2773B3DC0));
    v29.i32[0] = v19[88];
    v31 = vqtbl1q_s8(v29, xmmword_2773B3DF0);
    v32 = vzip1q_s32(vqtbl1q_s8(((v19[3 * v22 + 284] + v25[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v19[3 * v22 + 285] + v25[381] + 1) >> 1), xmmword_2773B3DF0));
    v33 = vdupq_n_s32(~v19[84]);
    v34 = 1;
    v35 = vmull_s16(0, *&vextq_s8(v28, v28, 8uLL));
    v36 = vmull_s16(0, *&vextq_s8(v30, v30, 8uLL));
    do
    {
      *v16.i8 = *a1;
      *v17.i8 = a1[1];
      v37 = vmulq_s16(v28, v16);
      v38 = vuzp2q_s16(vmull_s16(*a1, *v28.i8), v35);
      v39 = vzip1q_s16(v37, v38);
      v40 = vzip2q_s16(v37, v38);
      *v37.i8 = *a2;
      *v18.i8 = a2[1];
      v41 = vmulq_s16(v30, v37);
      v42 = vuzp2q_s16(vmull_s16(*a2, *v30.i8), v36);
      v43 = v34;
      v44 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v39, v31), vzip1q_s16(v41, v42)), v33), v32)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v31), vzip2q_s16(v41, v42)), v33), v32));
      v45 = vmulq_s16(v28, v17);
      v46 = vuzp2q_s16(vmull_s16(*v17.i8, *v28.i8), v35);
      v47 = vzip1q_s16(v45, v46);
      v48 = vzip2q_s16(v45, v46);
      v49 = vmulq_s16(v30, v18);
      v18 = vuzp2q_s16(vmull_s16(*v18.i8, *v30.i8), v36);
      v50 = vaddq_s32(vaddq_s32(v47, v31), vzip1q_s16(v49, v18));
      v51 = vqmovun_high_s16(vqmovun_s16(v44), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v50, v33), v32)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v48, v31), vzip2q_s16(v49, v18)), v33), v32)));
      v17 = vzip1q_s8(v51, 0);
      v16 = vzip2q_s8(v51, 0);
      if (a5)
      {
        v44.i64[0] = *a6;
        v50.i64[0] = a6[4];
        a6 += 8;
        v17 = vaddq_s16(v44, v17);
        v16 = vaddq_s16(v50, v16);
      }

      v34 = 0;
      *a3 = vqmovun_s16(v17).u32[0];
      *(a3 + a4) = vqmovun_s16(v16).u32[0];
      a3 = (a3 + 2 * a4);
      a1 += 2;
      a2 += 2;
    }

    while ((v43 & 1) != 0);
  }

  else
  {
    *a9.i8 = *a1;
    *a10.i8 = a1[1];
    *a13.i8 = a1[2];
    *a14.i8 = a1[3];
    *a11.i8 = *a2;
    *a15.i8 = a2[1];
    *a16.i8 = a2[2];
    *v16.i8 = a2[3];
    v82 = vrhaddq_u16(a9, a11);
    v83 = vrhaddq_u16(a10, a15);
    v28 = vrhaddq_u16(a13, a16);
    v84 = vrhaddq_u16(a14, v16);
    if (a5)
    {
      a13.i64[0] = *a6;
      a14.i64[0] = a6[4];
      a15.i64[0] = a6[8];
      a16.i64[0] = a6[12];
      v82 = vaddq_s16(v82, a13);
      v83 = vaddq_s16(v83, a14);
      v28 = vaddq_s16(v28, a15);
      v84 = vaddq_s16(v84, a16);
    }

    *a3 = vqmovun_s16(v82).u32[0];
    *(a3 + a4) = vqmovun_s16(v83).u32[0];
    *v28.i8 = vqmovun_s16(v28);
    *(a3 + 2 * a4) = v28.i32[0];
    *(a3 + 3 * a4) = vqmovun_s16(v84).u32[0];
  }

  return *v28.i64;
}

int8x8_t sub_2772938EC(int16x4_t *a1, int16x4_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, int8x16_t a9, int8x16_t a10, uint16x8_t a11, int8x16_t a12, double a13, double a14, int16x8_t a15)
{
  v16 = *(a7 + 48);
  v17 = v16[90];
  if (v17 == 2 || v17 == 1)
  {
    v18 = &v16[4 * a8];
    v19 = *(v18 + 24);
    v20 = 3 * *(v18 + 25);
    v21 = &v16[96 * v19 + v20];
    v22 = &v16[v20];
    v23 = &v22[96 * v19];
    v24 = &v16[3 * v19];
    a9.i32[0] = *(v21 + 1904);
    v25 = vqtbl1q_s8(a9, xmmword_2773B3DC0);
    a10.i32[0] = *(v21 + 1908);
    v26 = vzip1q_s16(v25, vqtbl1q_s8(a10, xmmword_2773B3DC0));
    v25.i32[0] = v23[3548];
    v27 = vqtbl1q_s8(v25, xmmword_2773B3DC0);
    a12.i32[0] = v23[3549];
    v28 = vzip1q_s16(v27, vqtbl1q_s8(a12, xmmword_2773B3DC0));
    v27.i32[0] = v16[88];
    v29 = vqtbl1q_s8(v27, xmmword_2773B3DF0);
    v30 = vqtbl1q_s8(((v24[284] + v22[380] + 1) >> 1), xmmword_2773B3DF0);
    v31 = vzip1q_s32(v30, vqtbl1q_s8(((v24[285] + v22[381] + 1) >> 1), xmmword_2773B3DF0));
    *v30.i8 = *a1;
    *a15.i8 = a1[1];
    v32 = vmulq_s16(v26, v30);
    v33 = vmull_s16(0, *&vextq_s8(v26, v26, 8uLL));
    v34 = vuzp2q_s16(vmull_s16(*a1, *v26.i8), v33);
    v35 = vzip1q_s16(v32, v34);
    v36 = vzip2q_s16(v32, v34);
    *v32.i8 = *a2;
    *v15.i8 = a2[1];
    v37 = vmulq_s16(v28, v32);
    v38 = vmull_s16(0, *&vextq_s8(v28, v28, 8uLL));
    v39 = vuzp2q_s16(vmull_s16(*a2, *v28.i8), v38);
    v40 = vzip1q_s16(v37, v39);
    v41 = vaddq_s32(vaddq_s32(v36, v29), vzip2q_s16(v37, v39));
    v42 = vdupq_n_s32(~v16[84]);
    v43 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v35, v29), v40), v42), v31)), vaddq_s32(vshlq_s32(v41, v42), v31));
    v44 = vmulq_s16(v26, a15);
    v45 = vuzp2q_s16(vmull_s16(*a15.i8, *v26.i8), v33);
    v46 = vzip1q_s16(v44, v45);
    v47 = vzip2q_s16(v44, v45);
    v48 = vmulq_s16(v28, v15);
    v49 = vuzp2q_s16(vmull_s16(*v15.i8, *v28.i8), v38);
    v50 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v46, v29), vzip1q_s16(v48, v49)), v42), v31)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v47, v29), vzip2q_s16(v48, v49)), v42), v31));
    v51 = vqmovun_high_s16(vqmovun_s16(v43), v50);
    v52 = vzip1q_s8(v51, 0);
    v53 = vzip2q_s8(v51, 0);
    if (a5)
    {
      v50.i64[0] = *a6;
      v51.i64[0] = a6[4];
      v52 = vaddq_s16(v50, v52);
      v53 = vaddq_s16(v51, v53);
    }
  }

  else
  {
    *a9.i8 = *a1;
    *a11.i8 = a1[1];
    *a10.i8 = *a2;
    *a12.i8 = a2[1];
    v52 = vrhaddq_u16(a9, a10);
    v53 = vrhaddq_u16(a11, a12);
    if (a5)
    {
      a11.i64[0] = *a6;
      a12.i64[0] = a6[4];
      v52 = vaddq_s16(v52, a11);
      v53 = vaddq_s16(v53, a12);
    }
  }

  result = vqmovun_s16(v53);
  *a3 = vqmovun_s16(v52).u32[0];
  *(a3 + a4) = result.i32[0];
  return result;
}

uint8x8_t *sub_277293ADC(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, unsigned int a6, int8x16_t a7, double a8, double a9, double a10, int8x16_t a11)
{
  v11 = *(a5 + 48);
  v12 = v11 + 16 * a6;
  v13 = *(v12 + 31) - 4;
  v14 = v11 + 384 * v13 + 12 * *(v12 + v13 + 24);
  a7.i32[0] = *(v14 + 364);
  v15 = xmmword_2773B3DC0;
  v16 = vqtbl1q_s8(vqtbl1q_s8(a7, xmmword_2773B3DC0), xmmword_2773B3DF0);
  v15.i32[0] = *(v11 + 340);
  v17 = vqtbl1q_s8(v15, xmmword_2773B3DF0);
  a11.i32[0] = *(v14 + 1132);
  v18 = vdupq_n_s32(-*(v11 + 332));
  v19 = vqtbl1q_s8(a11, xmmword_2773B3DF0);
  v20 = result + 1;
  v21 = 16;
  do
  {
    v22 = vmovl_u8(v20[-1]);
    v23 = vmull_s16(*v22.i8, *v16.i8);
    v24 = vmull_high_s16(v22, v16);
    v25 = vmulq_s16(v22, v16);
    v26 = vuzp2q_s16(v23, v24);
    v27 = vmovl_u8(*v20);
    v28 = vmulq_s16(v27, v16);
    v29 = vuzp2q_s16(vmull_s16(*v27.i8, *v16.i8), vmull_high_s16(v27, v16));
    v30 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v17), v18), v19)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v17), v18), v19))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v29), v17), v18), v19)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v17), v18), v19)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vzip1q_s8(v30, 0)), vzip2q_s8(v30, 0));
    a3 = (a3 + a4);
    v20 = (v20 + a2);
    --v21;
  }

  while (v21);
  return result;
}

uint8x8_t *sub_277293BFC(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, double a8, int8x16_t a9, double a10, int8x16_t a11)
{
  v11 = 0;
  v12 = *(a6 + 48);
  v13 = v12 + 16 * a7;
  v14 = *(v13 + 31) - 4;
  v15 = v12 + 384 * v14 + 12 * *(v13 + v14 + 24);
  a9.i32[0] = *(v15 + 364);
  v16 = vqtbl1q_s8(vqtbl1q_s8(a9, xmmword_2773B3DC0), xmmword_2773B3DF0);
  a9.i32[0] = *(v12 + 340);
  v17 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
  a11.i32[0] = *(v15 + 1132);
  v18 = vqtbl1q_s8(a11, xmmword_2773B3DF0);
  v19 = vdupq_n_s32(-*(v12 + 332));
  v20 = result + 1;
  do
  {
    v21 = vmovl_u8(v20[-1]);
    v22 = vmulq_s16(v21, v16);
    v23 = vuzp2q_s16(vmull_s16(*v21.i8, *v16.i8), vmull_high_s16(v21, v16));
    v24 = vzip1q_s16(v22, v23);
    v25 = vzip2q_s16(v22, v23);
    v26 = vmovl_u8(*v20);
    v27 = vaddq_s32(v24, v17);
    v28 = vmulq_s16(v26, v16);
    v29 = vuzp2q_s16(vmull_s16(*v26.i8, *v16.i8), vmull_high_s16(v26, v16));
    v30 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v27, v19), v18)), vaddq_s32(vshlq_s32(vaddq_s32(v25, v17), v19), v18))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v29), v17), v19), v18)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v17), v19), v18)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a5 + v11), vzip1q_s8(v30, 0))), vaddq_s16(*(a5 + v11 + 16), vzip2q_s8(v30, 0)));
    a3 = (a3 + a4);
    v11 += 32;
    v20 = (v20 + a2);
  }

  while (v11 != 512);
  return result;
}

int16x8_t *sub_277293D30(int16x8_t *result, int8x16_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, int a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a7 + 48);
  if (v11[89] == 1 || v11[90] == 1)
  {
    if (a6)
    {
      v12 = &v11[4 * a8];
      v13 = *(v12 + 31) - 4;
      LODWORD(v12) = *(v12 + v13 + 24);
      a9.i32[0] = v11[85];
      v14 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      a10.i32[0] = v11[96 * v13 + 283 + 3 * v12];
      v15 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
      a11.i32[0] = v11[96 * v13 + 91 + 3 * v12];
      v16 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v17 = vdupq_n_s32(-v11[83]);
      v18 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
      if ((2 * a6) <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2 * a6;
      }

      do
      {
        v20 = result[1];
        v21 = vmulq_s16(*result, v18);
        v22 = vuzp2q_s16(vmull_s16(*result->i8, *v18.i8), vmull_high_s16(*result, v18));
        v23 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v21, v22), v14), v17), v15)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v21, v22), v14), v17), v15));
        v24 = vmulq_s16(v20, v18);
        v25 = vuzp2q_s16(vmull_s16(*v20.i8, *v18.i8), vmull_high_s16(v20, v18));
        v26 = vqmovun_high_s16(vqmovun_s16(v23), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v24, v25), v14), v17), v15)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v24, v25), v14), v17), v15)));
        v27 = vzip1q_s8(v26, 0);
        v28 = vzip2q_s8(v26, 0);
        if (a4)
        {
          v29 = *a5;
          v30 = a5[1];
          a5 += 2;
          v27 = vaddq_s16(v29, v27);
          v28 = vaddq_s16(v30, v28);
        }

        *a2 = vqmovun_high_s16(vqmovun_s16(v27), v28);
        a2 = (a2 + a3);
        result += 2;
        --v19;
      }

      while (v19);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v32 = *result;
      v31 = result[1];
      v34 = result[2];
      v33 = result[3];
      if (a4)
      {
        v35 = *a5;
        v36 = a5[1];
        v37 = a5[2];
        v38 = a5[3];
        a5 += 4;
        v32 = vaddq_s16(v35, v32);
        v31 = vaddq_s16(v36, v31);
        v34 = vaddq_s16(v37, v34);
        v33 = vaddq_s16(v38, v33);
      }

      *a2 = vqmovun_high_s16(vqmovun_s16(v32), v31);
      *(a2 + a3) = vqmovun_high_s16(vqmovun_s16(v34), v33);
      a2 = (a2 + 2 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint8x8_t *sub_277293EE4(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, unsigned int a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a5 + 48);
  v12 = v11 + 16 * a6;
  v13 = *(v12 + 31) - 4;
  v14 = (v11 + 384 * v13 + 12 * *(v12 + v13 + 24));
  a7.i32[0] = v14[92];
  a9.i32[0] = v14[93];
  v15 = vqtbl1q_s8(a9, xmmword_2773B3DC0);
  v16 = vzip1q_s16(vqtbl1q_s8(a7, xmmword_2773B3DC0), v15);
  v15.i32[0] = *(v11 + 344);
  v17 = vqtbl1q_s8(v15, xmmword_2773B3DF0);
  a10.i32[0] = v14[284];
  a11.i32[0] = v14[285];
  v18 = vdupq_n_s32(-*(v11 + 336));
  v19 = vzip1q_s32(vqtbl1q_s8(a10, xmmword_2773B3DF0), vqtbl1q_s8(a11, xmmword_2773B3DF0));
  v20 = result + 1;
  v21 = 8;
  do
  {
    v22 = vmovl_u8(v20[-1]);
    v23 = vmull_s16(*v22.i8, *v16.i8);
    v24 = vmull_high_s16(v22, v16);
    v25 = vmulq_s16(v16, v22);
    v26 = vuzp2q_s16(v23, v24);
    v27 = vmovl_u8(*v20);
    v28 = vmulq_s16(v16, v27);
    v29 = vuzp2q_s16(vmull_s16(*v27.i8, *v16.i8), vmull_high_s16(v27, v16));
    v30 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v17), v18), v19)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v17), v18), v19))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v29), v17), v18), v19)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v17), v18), v19)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vzip1q_s8(v30, 0)), vzip2q_s8(v30, 0));
    a3 = (a3 + a4);
    v20 = (v20 + a2);
    --v21;
  }

  while (v21);
  return result;
}

uint8x8_t *sub_277294018(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v12 = 0;
  v13 = *(a6 + 48);
  v14 = v13 + 16 * a7;
  v15 = *(v14 + 31) - 4;
  v16 = (v13 + 384 * v15 + 12 * *(v14 + v15 + 24));
  a8.i32[0] = v16[92];
  a10.i32[0] = v16[93];
  v17 = vqtbl1q_s8(a10, xmmword_2773B3DC0);
  v18 = vzip1q_s16(vqtbl1q_s8(a8, xmmword_2773B3DC0), v17);
  v17.i32[0] = *(v13 + 344);
  v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
  a11.i32[0] = v16[284];
  a12.i32[0] = v16[285];
  v20 = vzip1q_s32(vqtbl1q_s8(a11, xmmword_2773B3DF0), vqtbl1q_s8(a12, xmmword_2773B3DF0));
  v21 = vdupq_n_s32(-*(v13 + 336));
  v22 = result + 1;
  do
  {
    v23 = vmovl_u8(v22[-1]);
    v24 = vmulq_s16(v18, v23);
    v25 = vuzp2q_s16(vmull_s16(*v23.i8, *v18.i8), vmull_high_s16(v23, v18));
    v26 = vzip1q_s16(v24, v25);
    v27 = vzip2q_s16(v24, v25);
    v28 = vmovl_u8(*v22);
    v29 = vaddq_s32(v26, v19);
    v30 = vmulq_s16(v18, v28);
    v31 = vuzp2q_s16(vmull_s16(*v28.i8, *v18.i8), vmull_high_s16(v28, v18));
    v32 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v29, v21), v20)), vaddq_s32(vshlq_s32(vaddq_s32(v27, v19), v21), v20))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v30, v31), v19), v21), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v30, v31), v19), v21), v20)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a5 + v12), vzip1q_s8(v32, 0))), vaddq_s16(*(a5 + v12 + 16), vzip2q_s8(v32, 0)));
    a3 = (a3 + a4);
    v12 += 32;
    v22 = (v22 + a2);
  }

  while (v12 != 256);
  return result;
}

int16x8_t *sub_277294160(int16x8_t *result, int8x16_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, int a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v13 = *(a7 + 48);
  if (v13[89] == 1 || v13[90] == 1)
  {
    if (a6)
    {
      v14 = &v13[4 * a8];
      v15 = *(v14 + 31) - 4;
      v16 = &v13[96 * v15 + 3 * *(v14 + v15 + 24)];
      a9.i32[0] = v16[92];
      a11.i32[0] = v16[93];
      v17 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v18 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v17);
      v17.i32[0] = v13[86];
      v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
      a12.i32[0] = v16[284];
      a13.i32[0] = v16[285];
      v20 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
      v21 = vdupq_n_s32(-v13[84]);
      v22 = 2 * a6;
      if ((2 * a6) <= 1)
      {
        v22 = 1;
      }

      do
      {
        v23 = result[1];
        v24 = vmulq_s16(*result, v18);
        v25 = vuzp2q_s16(vmull_s16(*result->i8, *v18.i8), vmull_high_s16(*result, v18));
        v26 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v24, v25), v19), v21), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v24, v25), v19), v21), v20));
        v27 = vmulq_s16(v23, v18);
        v28 = vuzp2q_s16(vmull_s16(*v23.i8, *v18.i8), vmull_high_s16(v23, v18));
        v29 = vqmovun_high_s16(vqmovun_s16(v26), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v28), v19), v21), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v27, v28), v19), v21), v20)));
        v30 = vzip1q_s8(v29, 0);
        v31 = vzip2q_s8(v29, 0);
        if (a4)
        {
          v32 = *a5;
          v33 = a5[1];
          a5 += 2;
          v30 = vaddq_s16(v32, v30);
          v31 = vaddq_s16(v33, v31);
        }

        *a2 = vqmovun_high_s16(vqmovun_s16(v30), v31);
        a2 = (a2 + a3);
        result += 2;
        --v22;
      }

      while (v22);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v35 = *result;
      v34 = result[1];
      v37 = result[2];
      v36 = result[3];
      if (a4)
      {
        v38 = *a5;
        v39 = a5[1];
        v40 = a5[2];
        v41 = a5[3];
        a5 += 4;
        v35 = vaddq_s16(v38, v35);
        v34 = vaddq_s16(v39, v34);
        v37 = vaddq_s16(v40, v37);
        v36 = vaddq_s16(v41, v36);
      }

      *a2 = vqmovun_high_s16(vqmovun_s16(v35), v34);
      *(a2 + a3) = vqmovun_high_s16(vqmovun_s16(v37), v36);
      a2 = (a2 + 2 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

int16x8_t *sub_277294318(int16x8_t *result, int8x8_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, int a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a7 + 48);
  if (v11[89] == 1 || v11[90] == 1)
  {
    if (a6)
    {
      v12 = &v11[4 * a8];
      v13 = *(v12 + 31) - 4;
      LODWORD(v12) = *(v12 + v13 + 24);
      a9.i32[0] = v11[85];
      v14 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      a10.i32[0] = v11[96 * v13 + 283 + 3 * v12];
      v15 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
      a11.i32[0] = v11[96 * v13 + 91 + 3 * v12];
      v16 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v17 = vdupq_n_s32(-v11[83]);
      v18 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
      if ((2 * a6) <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2 * a6;
      }

      do
      {
        v20 = result[1];
        v21 = vmulq_s16(*result, v18);
        v22 = vuzp2q_s16(vmull_s16(*result->i8, *v18.i8), vmull_high_s16(*result, v18));
        v23 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v21, v22), v14), v17), v15)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v21, v22), v14), v17), v15));
        v24 = vmulq_s16(v20, v18);
        v25 = vuzp2q_s16(vmull_s16(*v20.i8, *v18.i8), vmull_high_s16(v20, v18));
        v26 = vqmovun_high_s16(vqmovun_s16(v23), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v24, v25), v14), v17), v15)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v24, v25), v14), v17), v15)));
        v27 = vzip1q_s8(v26, 0);
        v28 = vzip2q_s8(v26, 0);
        if (a4)
        {
          v29 = *a5;
          v30 = a5[2];
          a5 += 4;
          v27 = vaddq_s16(v29, v27);
          v28 = vaddq_s16(v30, v28);
        }

        *a2 = vqmovun_s16(v27);
        *(a2 + a3) = vqmovun_s16(v28);
        a2 = (a2 + 2 * a3);
        result += 2;
        --v19;
      }

      while (v19);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v31 = *result;
      v32 = result[1];
      v34 = result[2];
      v33 = result[3];
      if (a4)
      {
        v35 = *a5;
        v36 = a5[2];
        v37 = a5[4];
        v38 = a5[6];
        a5 += 8;
        v31 = vaddq_s16(v35, v31);
        v32 = vaddq_s16(v36, v32);
        v34 = vaddq_s16(v37, v34);
        v33 = vaddq_s16(v38, v33);
      }

      *a2 = vqmovun_s16(v31);
      *(a2 + a3) = vqmovun_s16(v32);
      *(a2 + 2 * a3) = vqmovun_s16(v34);
      *(a2 + 3 * a3) = vqmovun_s16(v33);
      a2 = (a2 + 4 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

int16x8_t *sub_2772944F0(int16x8_t *result, int8x8_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, int a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v13 = *(a7 + 48);
  if (v13[89] == 1 || v13[90] == 1)
  {
    if (a6)
    {
      v14 = &v13[4 * a8];
      v15 = *(v14 + 31) - 4;
      v16 = &v13[96 * v15 + 3 * *(v14 + v15 + 24)];
      a9.i32[0] = v16[92];
      a11.i32[0] = v16[93];
      v17 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v18 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v17);
      v17.i32[0] = v13[86];
      v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
      a12.i32[0] = v16[284];
      a13.i32[0] = v16[285];
      v20 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
      v21 = vdupq_n_s32(-v13[84]);
      v22 = 2 * a6;
      if ((2 * a6) <= 1)
      {
        v22 = 1;
      }

      do
      {
        v23 = result[1];
        v24 = vmulq_s16(*result, v18);
        v25 = vuzp2q_s16(vmull_s16(*result->i8, *v18.i8), vmull_high_s16(*result, v18));
        v26 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v24, v25), v19), v21), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v24, v25), v19), v21), v20));
        v27 = vmulq_s16(v23, v18);
        v28 = vuzp2q_s16(vmull_s16(*v23.i8, *v18.i8), vmull_high_s16(v23, v18));
        v29 = vqmovun_high_s16(vqmovun_s16(v26), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v28), v19), v21), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v27, v28), v19), v21), v20)));
        v30 = vzip1q_s8(v29, 0);
        v31 = vzip2q_s8(v29, 0);
        if (a4)
        {
          v32 = *a5;
          v33 = a5[2];
          a5 += 4;
          v30 = vaddq_s16(v32, v30);
          v31 = vaddq_s16(v33, v31);
        }

        *a2 = vqmovun_s16(v30);
        *(a2 + a3) = vqmovun_s16(v31);
        a2 = (a2 + 2 * a3);
        result += 2;
        --v22;
      }

      while (v22);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v34 = *result;
      v35 = result[1];
      v37 = result[2];
      v36 = result[3];
      if (a4)
      {
        v38 = *a5;
        v39 = a5[2];
        v40 = a5[4];
        v41 = a5[6];
        a5 += 8;
        v34 = vaddq_s16(v38, v34);
        v35 = vaddq_s16(v39, v35);
        v37 = vaddq_s16(v40, v37);
        v36 = vaddq_s16(v41, v36);
      }

      *a2 = vqmovun_s16(v34);
      *(a2 + a3) = vqmovun_s16(v35);
      *(a2 + 2 * a3) = vqmovun_s16(v37);
      *(a2 + 3 * a3) = vqmovun_s16(v36);
      a2 = (a2 + 4 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

int8x8_t sub_2772946CC(int16x8_t *a1, int8x8_t *a2, int a3, uint64_t a4, int16x8_t *a5, uint64_t a6, int a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v12 = *(a6 + 48);
  if (v12[89] != 1 && v12[90] != 1)
  {
    v31 = *a1;
    v32 = a1[1];
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v13 = &v12[4 * a7];
  v14 = *(v13 + 31) - 4;
  v15 = &v12[96 * v14 + 3 * *(v13 + v14 + 24)];
  a8.i32[0] = v15[92];
  a10.i32[0] = v15[93];
  v16 = vqtbl1q_s8(a10, xmmword_2773B3DC0);
  v17 = vzip1q_s16(vqtbl1q_s8(a8, xmmword_2773B3DC0), v16);
  v16.i32[0] = v12[86];
  v18 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
  a11.i32[0] = v15[284];
  a12.i32[0] = v15[285];
  v19 = vzip1q_s32(vqtbl1q_s8(a11, xmmword_2773B3DF0), vqtbl1q_s8(a12, xmmword_2773B3DF0));
  v20 = a1[1];
  v21 = vmulq_s16(*a1, v17);
  v22 = vuzp2q_s16(vmull_s16(*a1->i8, *v17.i8), vmull_high_s16(*a1, v17));
  v23 = vzip1q_s16(v21, v22);
  v24 = vzip2q_s16(v21, v22);
  v25 = vaddq_s32(v23, v18);
  v26 = vdupq_n_s32(-v12[84]);
  v27 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v25, v26), v19)), vaddq_s32(vshlq_s32(vaddq_s32(v24, v18), v26), v19));
  v28 = vmulq_s16(v20, v17);
  v29 = vuzp2q_s16(vmull_s16(*v20.i8, *v17.i8), vmull_high_s16(v20, v17));
  v30 = vqmovun_high_s16(vqmovun_s16(v27), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v29), v18), v26), v19)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v18), v26), v19)));
  v31 = vzip1q_s8(v30, 0);
  v32 = vzip2q_s8(v30, 0);
  if (a4)
  {
LABEL_4:
    v31 = vaddq_s16(*a5, v31);
    v32 = vaddq_s16(a5[2], v32);
  }

LABEL_5:
  result = vqmovun_s16(v31);
  *a2 = result;
  *(a2 + a3) = vqmovun_s16(v32);
  return result;
}

int16x4_t *sub_277294814(int16x4_t *result, _DWORD *a2, int a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, int a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int16x8_t a12, int16x8_t a13, int16x8_t a14, int16x8_t a15, int16x8_t a16)
{
  v16 = *(a7 + 48);
  if (v16[89] == 1 || v16[90] == 1)
  {
    if (a6)
    {
      v17 = &v16[4 * a8];
      v18 = *(v17 + 31) - 4;
      LODWORD(v17) = *(v17 + v18 + 24);
      a9.i32[0] = v16[85];
      v19 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      a10.i32[0] = v16[96 * v18 + 283 + 3 * v17];
      v20 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
      a12.i32[0] = v16[96 * v18 + 91 + 3 * v17];
      v21 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v22 = vdupq_n_s32(-v16[83]);
      if ((2 * a6) <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2 * a6;
      }

      v24 = vmull_s16(0, *&vextq_s8(v21, v21, 8uLL));
      do
      {
        *a15.i8 = *result;
        *a16.i8 = result[1];
        v25 = vmulq_s16(a15, v21);
        v26 = vuzp2q_s16(vmull_s16(*result, *v21.i8), v24);
        v27 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v19), v22), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v19), v22), v20));
        v28 = vmulq_s16(a16, v21);
        v29 = vuzp2q_s16(vmull_s16(*a16.i8, *v21.i8), v24);
        v30 = vzip1q_s16(v28, v29);
        v31 = vqmovun_high_s16(vqmovun_s16(v27), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(v30, v19), v22), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v19), v22), v20)));
        a16 = vzip1q_s8(v31, 0);
        a15 = vzip2q_s8(v31, 0);
        if (a4)
        {
          v27.i64[0] = *a5;
          v30.i64[0] = a5[4];
          a5 += 8;
          a16 = vaddq_s16(v27, a16);
          a15 = vaddq_s16(v30, a15);
        }

        *a2 = vqmovun_s16(a16).u32[0];
        *(a2 + a3) = vqmovun_s16(a15).u32[0];
        a2 = (a2 + 2 * a3);
        result += 2;
        --v23;
      }

      while (v23);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      *a10.i8 = *result;
      *a11.i8 = result[1];
      *a12.i8 = result[2];
      *a9.i8 = result[3];
      if (a4)
      {
        a13.i64[0] = *a5;
        a14.i64[0] = a5[4];
        a15.i64[0] = a5[8];
        a16.i64[0] = a5[12];
        a5 += 16;
        a10 = vaddq_s16(a13, a10);
        a11 = vaddq_s16(a14, a11);
        a12 = vaddq_s16(a15, a12);
        a9 = vaddq_s16(a16, a9);
      }

      *a2 = vqmovun_s16(a10).u32[0];
      *(a2 + a3) = vqmovun_s16(a11).u32[0];
      *(a2 + 2 * a3) = vqmovun_s16(a12).u32[0];
      *(a2 + 3 * a3) = vqmovun_s16(a9).u32[0];
      a2 += a3;
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

double sub_2772949FC(int16x4_t *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, int16x8_t a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int8x16_t a12, int16x8_t a13, int16x8_t a14, int16x8_t a15)
{
  v15 = *(a6 + 48);
  if (v15[89] == 1 || v15[90] == 1)
  {
    v16 = &v15[4 * a7];
    v17 = *(v16 + 31) - 4;
    v18 = &v15[96 * v17 + 3 * *(v16 + v17 + 24)];
    a8.i32[0] = v18[92];
    a10.i32[0] = v18[93];
    v19 = vqtbl1q_s8(a10, xmmword_2773B3DC0);
    a8 = vzip1q_s16(vqtbl1q_s8(a8, xmmword_2773B3DC0), v19);
    v19.i32[0] = v15[86];
    v20 = vqtbl1q_s8(v19, xmmword_2773B3DF0);
    a11.i32[0] = v18[284];
    a12.i32[0] = v18[285];
    v21 = vzip1q_s32(vqtbl1q_s8(a11, xmmword_2773B3DF0), vqtbl1q_s8(a12, xmmword_2773B3DF0));
    v22 = vdupq_n_s32(-v15[84]);
    v23 = 1;
    v24 = vmull_s16(0, *&vextq_s8(a8, a8, 8uLL));
    do
    {
      v25 = v23;
      *a14.i8 = *a1;
      *a15.i8 = a1[1];
      v26 = vmulq_s16(a8, a14);
      v27 = vuzp2q_s16(vmull_s16(*a1, *a8.i8), v24);
      v28 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v26, v27), v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v26, v27), v20), v22), v21));
      v29 = vmulq_s16(a8, a15);
      v30 = vuzp2q_s16(vmull_s16(*a15.i8, *a8.i8), v24);
      v31 = vzip1q_s16(v29, v30);
      v32 = vqmovun_high_s16(vqmovun_s16(v28), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(v31, v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v20), v22), v21)));
      a15 = vzip1q_s8(v32, 0);
      a14 = vzip2q_s8(v32, 0);
      if (a4)
      {
        v28.i64[0] = *a5;
        v31.i64[0] = a5[4];
        a5 += 8;
        a15 = vaddq_s16(v28, a15);
        a14 = vaddq_s16(v31, a14);
      }

      v23 = 0;
      *a2 = vqmovun_s16(a15).u32[0];
      *(a2 + a3) = vqmovun_s16(a14).u32[0];
      a2 = (a2 + 2 * a3);
      a1 += 2;
    }

    while ((v25 & 1) != 0);
  }

  else
  {
    *a10.i8 = *a1;
    *a11.i8 = a1[1];
    *a8.i8 = a1[2];
    *a9.i8 = a1[3];
    if (a4)
    {
      a12.i64[0] = *a5;
      a13.i64[0] = a5[4];
      a14.i64[0] = a5[8];
      a15.i64[0] = a5[12];
      a10 = vaddq_s16(a12, a10);
      a11 = vaddq_s16(a13, a11);
      a8 = vaddq_s16(a14, a8);
      a9 = vaddq_s16(a15, a9);
    }

    *a2 = vqmovun_s16(a10).u32[0];
    *(a2 + a3) = vqmovun_s16(a11).u32[0];
    *a8.i8 = vqmovun_s16(a8);
    *(a2 + 2 * a3) = a8.i32[0];
    *(a2 + 3 * a3) = vqmovun_s16(a9).u32[0];
  }

  return *a8.i64;
}

int8x8_t sub_277294BB8(int16x4_t *a1, _DWORD *a2, int a3, uint64_t a4, unint64_t *a5, uint64_t a6, int a7, int16x8_t a8, int16x8_t a9, int16x8_t a10, int8x16_t a11, int8x16_t a12, int16x8_t a13)
{
  v13 = *(a6 + 48);
  if (v13[89] != 1 && v13[90] != 1)
  {
    *a9.i8 = *a1;
    *a8.i8 = a1[1];
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = &v13[4 * a7];
  v15 = *(v14 + 31) - 4;
  v16 = &v13[96 * v15 + 3 * *(v14 + v15 + 24)];
  a8.i32[0] = v16[92];
  v17 = vqtbl1q_s8(a8, xmmword_2773B3DC0);
  a10.i32[0] = v16[93];
  v18 = vzip1q_s16(v17, vqtbl1q_s8(a10, xmmword_2773B3DC0));
  v17.i32[0] = v13[86];
  v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
  v17.i32[0] = v16[284];
  a12.i32[0] = v16[285];
  v20 = vzip1q_s32(vqtbl1q_s8(v17, xmmword_2773B3DF0), vqtbl1q_s8(a12, xmmword_2773B3DF0));
  *a12.i8 = *a1;
  *a13.i8 = a1[1];
  v21 = vmulq_s16(v18, a12);
  v22 = vmull_s16(0, *&vextq_s8(v18, v18, 8uLL));
  v23 = vuzp2q_s16(vmull_s16(*a1, *v18.i8), v22);
  v24 = vzip1q_s16(v21, v23);
  v25 = vzip2q_s16(v21, v23);
  v26 = vaddq_s32(v24, v19);
  v27 = vdupq_n_s32(-v13[84]);
  v28 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v26, v27), v20)), vaddq_s32(vshlq_s32(vaddq_s32(v25, v19), v27), v20));
  v29 = vmulq_s16(v18, a13);
  v30 = vuzp2q_s16(vmull_s16(*a13.i8, *v18.i8), v22);
  a10 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v30), v19), v27), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v19), v27), v20));
  a11 = vqmovun_high_s16(vqmovun_s16(v28), a10);
  a9 = vzip1q_s8(a11, 0);
  a8 = vzip2q_s8(a11, 0);
  if (a4)
  {
LABEL_4:
    a10.i64[0] = *a5;
    a11.i64[0] = a5[4];
    a9 = vaddq_s16(a10, a9);
    a8 = vaddq_s16(a11, a8);
  }

LABEL_5:
  result = vqmovun_s16(a8);
  *a2 = vqmovun_s16(a9).u32[0];
  *(a2 + a3) = result.i32[0];
  return result;
}

uint64_t sub_277296800(uint64_t result, uint64_t a2, int8x16_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, int8x16_t a12, double a13, double a14, int8x16_t a15, uint64_t a16, unsigned int a17)
{
  v17 = *(a8 + 48);
  v18 = v17[90];
  if (v18 == 1)
  {
    if (a7)
    {
      v48 = a16 + 16 * a17;
      v49 = *(v48 + 8);
      LODWORD(v48) = *(v48 + 9);
      a9.i32[0] = v17[87];
      v50 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v51 = vqtbl1q_s8(((v17[3 * v49 + 283] + v17[3 * v48 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v52 = &v17[96 * v49 + 3 * v48];
      a12.i32[0] = *(v52 + 14188);
      v53 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v52 + 1900);
      v54 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v55 = vdupq_n_s32(~v17[83]);
      if ((2 * a7) <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 2 * a7;
      }

      do
      {
        v57 = *(result + 16);
        v58 = vmulq_s16(*result, v54);
        v59 = vuzp2q_s16(vmull_s16(*result, *v54.i8), vmull_high_s16(*result, v54));
        v60 = vzip1q_s16(v58, v59);
        v61 = vzip2q_s16(v58, v59);
        v62 = *(a2 + 16);
        v63 = vmulq_s16(*a2, v53);
        v64 = vuzp2q_s16(vmull_s16(*a2, *v53.i8), vmull_high_s16(*a2, v53));
        v65 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v60, v50), vzip1q_s16(v63, v64)), v55), v51)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v61, v50), vzip2q_s16(v63, v64)), v55), v51));
        v66 = vmulq_s16(v57, v54);
        v67 = vuzp2q_s16(vmull_s16(*v57.i8, *v54.i8), vmull_high_s16(v57, v54));
        v68 = vzip1q_s16(v66, v67);
        v69 = vzip2q_s16(v66, v67);
        v70 = vmulq_s16(v62, v53);
        v71 = vuzp2q_s16(vmull_s16(*v62.i8, *v53.i8), vmull_high_s16(v62, v53));
        v72 = vqmovun_high_s16(vqmovun_s16(v65), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v50), vzip1q_s16(v70, v71)), v55), v51)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v69, v50), vzip2q_s16(v70, v71)), v55), v51)));
        v73 = vzip1q_s8(v72, 0);
        v74 = vzip2q_s8(v72, 0);
        if (a5)
        {
          v75 = *a6;
          v76 = a6[1];
          a6 += 2;
          v73 = vaddq_s16(v75, v73);
          v74 = vaddq_s16(v76, v74);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v73), v74);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v56;
      }

      while (v56);
    }
  }

  else if (v18 == 2)
  {
    if (a7)
    {
      v19 = a16 + 16 * a17;
      v20 = *(v19 + 8);
      LODWORD(v19) = *(v19 + 9);
      a9.i32[0] = v17[87];
      v21 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v22 = vqtbl1q_s8(((v17[3 * v20 + 283] + v17[3 * v19 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v23 = &v17[96 * v20 + 3 * v19];
      a12.i32[0] = *(v23 + 14188);
      v24 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v23 + 1900);
      v25 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v26 = vdupq_n_s32(~v17[83]);
      if ((2 * a7) <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * a7;
      }

      do
      {
        v28 = *(result + 16);
        v29 = vmulq_s16(*result, v25);
        v30 = vuzp2q_s16(vmull_s16(*result, *v25.i8), vmull_high_s16(*result, v25));
        v31 = vzip1q_s16(v29, v30);
        v32 = vzip2q_s16(v29, v30);
        v33 = *(a2 + 16);
        v34 = vmulq_s16(*a2, v24);
        v35 = vuzp2q_s16(vmull_s16(*a2, *v24.i8), vmull_high_s16(*a2, v24));
        v36 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v31, v21), vzip1q_s16(v34, v35)), v26), v22)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v32, v21), vzip2q_s16(v34, v35)), v26), v22));
        v37 = vmulq_s16(v28, v25);
        v38 = vuzp2q_s16(vmull_s16(*v28.i8, *v25.i8), vmull_high_s16(v28, v25));
        v39 = vzip1q_s16(v37, v38);
        v40 = vzip2q_s16(v37, v38);
        v41 = vmulq_s16(v33, v24);
        v42 = vuzp2q_s16(vmull_s16(*v33.i8, *v24.i8), vmull_high_s16(v33, v24));
        v43 = vqmovun_high_s16(vqmovun_s16(v36), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v39, v21), vzip1q_s16(v41, v42)), v26), v22)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v21), vzip2q_s16(v41, v42)), v26), v22)));
        v44 = vzip1q_s8(v43, 0);
        v45 = vzip2q_s8(v43, 0);
        if (a5)
        {
          v46 = *a6;
          v47 = a6[1];
          a6 += 2;
          v44 = vaddq_s16(v46, v44);
          v45 = vaddq_s16(v47, v45);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v44), v45);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v27;
      }

      while (v27);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v77 = vrhaddq_u16(*result, *a2);
      v78 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v79 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v80 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v81 = *a6;
        v82 = a6[1];
        v83 = a6[2];
        v84 = a6[3];
        a6 += 4;
        v77 = vaddq_s16(v81, v77);
        v78 = vaddq_s16(v82, v78);
        v79 = vaddq_s16(v83, v79);
        v80 = vaddq_s16(v84, v80);
      }

      *a3 = vqmovun_high_s16(vqmovun_s16(v77), v78);
      *(a3 + a4) = vqmovun_high_s16(vqmovun_s16(v79), v80);
      a3 = (a3 + 2 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_277296BCC(uint64_t result, uint64_t a2, int8x16_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, uint64_t a13, unsigned int a14)
{
  v14 = *(a8 + 48);
  v15 = v14[90];
  if (v15 == 1)
  {
    if (a7)
    {
      v50 = a13 + 16 * a14;
      v51 = *(v50 + 8);
      v52 = 3 * *(v50 + 9);
      v53 = &v14[96 * v51 + v52];
      v54 = &v14[v52];
      v55 = &v54[96 * v51];
      a9.i32[0] = *(v53 + 1904);
      a11.i32[0] = *(v53 + 1908);
      v56 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v57 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v56);
      v56.i32[0] = v55[3548];
      v58 = vqtbl1q_s8(v56, xmmword_2773B3DC0);
      a12.i32[0] = v55[3549];
      v59 = vzip1q_s16(v58, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v58.i32[0] = v14[88];
      v60 = vqtbl1q_s8(v58, xmmword_2773B3DF0);
      v61 = vzip1q_s32(vqtbl1q_s8(((v14[3 * v51 + 284] + v54[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v14[3 * v51 + 285] + v54[381] + 1) >> 1), xmmword_2773B3DF0));
      v62 = 2 * a7;
      v63 = vdupq_n_s32(~v14[84]);
      if ((2 * a7) <= 1)
      {
        v62 = 1;
      }

      do
      {
        v64 = *(result + 16);
        v65 = vmulq_s16(*result, v57);
        v66 = vuzp2q_s16(vmull_s16(*result, *v57.i8), vmull_high_s16(*result, v57));
        v67 = vzip1q_s16(v65, v66);
        v68 = vzip2q_s16(v65, v66);
        v69 = *(a2 + 16);
        v70 = vmulq_s16(*a2, v59);
        v71 = vuzp2q_s16(vmull_s16(*a2, *v59.i8), vmull_high_s16(*a2, v59));
        v72 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v67, v60), vzip1q_s16(v70, v71)), v63), v61)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v60), vzip2q_s16(v70, v71)), v63), v61));
        v73 = vmulq_s16(v64, v57);
        v74 = vuzp2q_s16(vmull_s16(*v64.i8, *v57.i8), vmull_high_s16(v64, v57));
        v75 = vzip1q_s16(v73, v74);
        v76 = vzip2q_s16(v73, v74);
        v77 = vmulq_s16(v69, v59);
        v78 = vuzp2q_s16(vmull_s16(*v69.i8, *v59.i8), vmull_high_s16(v69, v59));
        v79 = vqmovun_high_s16(vqmovun_s16(v72), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v75, v60), vzip1q_s16(v77, v78)), v63), v61)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v76, v60), vzip2q_s16(v77, v78)), v63), v61)));
        v80 = vzip1q_s8(v79, 0);
        v81 = vzip2q_s8(v79, 0);
        if (a5)
        {
          v82 = *a6;
          v83 = a6[1];
          a6 += 2;
          v80 = vaddq_s16(v82, v80);
          v81 = vaddq_s16(v83, v81);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v80), v81);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v62;
      }

      while (v62);
    }
  }

  else if (v15 == 2)
  {
    if (a7)
    {
      v16 = a13 + 16 * a14;
      v17 = *(v16 + 8);
      v18 = 3 * *(v16 + 9);
      v19 = &v14[96 * v17 + v18];
      v20 = &v14[v18];
      v21 = &v20[96 * v17];
      a9.i32[0] = *(v19 + 1904);
      a11.i32[0] = *(v19 + 1908);
      v22 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v23 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v22);
      v22.i32[0] = v21[3548];
      v24 = vqtbl1q_s8(v22, xmmword_2773B3DC0);
      a12.i32[0] = v21[3549];
      v25 = vzip1q_s16(v24, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v24.i32[0] = v14[88];
      v26 = vqtbl1q_s8(v24, xmmword_2773B3DF0);
      v27 = vzip1q_s32(vqtbl1q_s8(((v14[3 * v17 + 284] + v20[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v14[3 * v17 + 285] + v20[381] + 1) >> 1), xmmword_2773B3DF0));
      v28 = 2 * a7;
      v29 = vdupq_n_s32(~v14[84]);
      if ((2 * a7) <= 1)
      {
        v28 = 1;
      }

      do
      {
        v30 = *(result + 16);
        v31 = vmulq_s16(*result, v23);
        v32 = vuzp2q_s16(vmull_s16(*result, *v23.i8), vmull_high_s16(*result, v23));
        v33 = vzip1q_s16(v31, v32);
        v34 = vzip2q_s16(v31, v32);
        v35 = *(a2 + 16);
        v36 = vmulq_s16(*a2, v25);
        v37 = vuzp2q_s16(vmull_s16(*a2, *v25.i8), vmull_high_s16(*a2, v25));
        v38 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v33, v26), vzip1q_s16(v36, v37)), v29), v27)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v34, v26), vzip2q_s16(v36, v37)), v29), v27));
        v39 = vmulq_s16(v30, v23);
        v40 = vuzp2q_s16(vmull_s16(*v30.i8, *v23.i8), vmull_high_s16(v30, v23));
        v41 = vzip1q_s16(v39, v40);
        v42 = vzip2q_s16(v39, v40);
        v43 = vmulq_s16(v35, v25);
        v44 = vuzp2q_s16(vmull_s16(*v35.i8, *v25.i8), vmull_high_s16(v35, v25));
        v45 = vqmovun_high_s16(vqmovun_s16(v38), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v41, v26), vzip1q_s16(v43, v44)), v29), v27)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v42, v26), vzip2q_s16(v43, v44)), v29), v27)));
        v46 = vzip1q_s8(v45, 0);
        v47 = vzip2q_s8(v45, 0);
        if (a5)
        {
          v48 = *a6;
          v49 = a6[1];
          a6 += 2;
          v46 = vaddq_s16(v48, v46);
          v47 = vaddq_s16(v49, v47);
        }

        *a3 = vqmovun_high_s16(vqmovun_s16(v46), v47);
        a3 = (a3 + a4);
        result += 32;
        a2 += 32;
        --v28;
      }

      while (v28);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v84 = vrhaddq_u16(*result, *a2);
      v85 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v86 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v87 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v88 = *a6;
        v89 = a6[1];
        v90 = a6[2];
        v91 = a6[3];
        a6 += 4;
        v84 = vaddq_s16(v88, v84);
        v85 = vaddq_s16(v89, v85);
        v86 = vaddq_s16(v90, v86);
        v87 = vaddq_s16(v91, v87);
      }

      *a3 = vqmovun_high_s16(vqmovun_s16(v84), v85);
      *(a3 + a4) = vqmovun_high_s16(vqmovun_s16(v86), v87);
      a3 = (a3 + 2 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_277297008(uint64_t result, uint64_t a2, int8x8_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, int8x16_t a12, double a13, double a14, int8x16_t a15, uint64_t a16, unsigned int a17)
{
  v17 = *(a8 + 48);
  v18 = v17[90];
  if (v18 == 1)
  {
    if (a7)
    {
      v48 = a16 + 16 * a17;
      v49 = *(v48 + 8);
      LODWORD(v48) = *(v48 + 9);
      a9.i32[0] = v17[87];
      v50 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v51 = vqtbl1q_s8(((v17[3 * v49 + 283] + v17[3 * v48 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v52 = &v17[96 * v49 + 3 * v48];
      a12.i32[0] = *(v52 + 14188);
      v53 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v52 + 1900);
      v54 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v55 = vdupq_n_s32(~v17[83]);
      if ((2 * a7) <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 2 * a7;
      }

      do
      {
        v57 = *(result + 16);
        v58 = vmulq_s16(*result, v54);
        v59 = vuzp2q_s16(vmull_s16(*result, *v54.i8), vmull_high_s16(*result, v54));
        v60 = vzip1q_s16(v58, v59);
        v61 = vzip2q_s16(v58, v59);
        v62 = *(a2 + 16);
        v63 = vmulq_s16(*a2, v53);
        v64 = vuzp2q_s16(vmull_s16(*a2, *v53.i8), vmull_high_s16(*a2, v53));
        v65 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v60, v50), vzip1q_s16(v63, v64)), v55), v51)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v61, v50), vzip2q_s16(v63, v64)), v55), v51));
        v66 = vmulq_s16(v57, v54);
        v67 = vuzp2q_s16(vmull_s16(*v57.i8, *v54.i8), vmull_high_s16(v57, v54));
        v68 = vzip1q_s16(v66, v67);
        v69 = vzip2q_s16(v66, v67);
        v70 = vmulq_s16(v62, v53);
        v71 = vuzp2q_s16(vmull_s16(*v62.i8, *v53.i8), vmull_high_s16(v62, v53));
        v72 = vqmovun_high_s16(vqmovun_s16(v65), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v50), vzip1q_s16(v70, v71)), v55), v51)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v69, v50), vzip2q_s16(v70, v71)), v55), v51)));
        v73 = vzip1q_s8(v72, 0);
        v74 = vzip2q_s8(v72, 0);
        if (a5)
        {
          v75 = *a6;
          v76 = a6[2];
          a6 += 4;
          v73 = vaddq_s16(v75, v73);
          v74 = vaddq_s16(v76, v74);
        }

        *a3 = vqmovun_s16(v73);
        *(a3 + a4) = vqmovun_s16(v74);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v56;
      }

      while (v56);
    }
  }

  else if (v18 == 2)
  {
    if (a7)
    {
      v19 = a16 + 16 * a17;
      v20 = *(v19 + 8);
      LODWORD(v19) = *(v19 + 9);
      a9.i32[0] = v17[87];
      v21 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v22 = vqtbl1q_s8(((v17[3 * v20 + 283] + v17[3 * v19 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v23 = &v17[96 * v20 + 3 * v19];
      a12.i32[0] = *(v23 + 14188);
      v24 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v23 + 1900);
      v25 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v26 = vdupq_n_s32(~v17[83]);
      if ((2 * a7) <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * a7;
      }

      do
      {
        v28 = *(result + 16);
        v29 = vmulq_s16(*result, v25);
        v30 = vuzp2q_s16(vmull_s16(*result, *v25.i8), vmull_high_s16(*result, v25));
        v31 = vzip1q_s16(v29, v30);
        v32 = vzip2q_s16(v29, v30);
        v33 = *(a2 + 16);
        v34 = vmulq_s16(*a2, v24);
        v35 = vuzp2q_s16(vmull_s16(*a2, *v24.i8), vmull_high_s16(*a2, v24));
        v36 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v31, v21), vzip1q_s16(v34, v35)), v26), v22)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v32, v21), vzip2q_s16(v34, v35)), v26), v22));
        v37 = vmulq_s16(v28, v25);
        v38 = vuzp2q_s16(vmull_s16(*v28.i8, *v25.i8), vmull_high_s16(v28, v25));
        v39 = vzip1q_s16(v37, v38);
        v40 = vzip2q_s16(v37, v38);
        v41 = vmulq_s16(v33, v24);
        v42 = vuzp2q_s16(vmull_s16(*v33.i8, *v24.i8), vmull_high_s16(v33, v24));
        v43 = vqmovun_high_s16(vqmovun_s16(v36), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v39, v21), vzip1q_s16(v41, v42)), v26), v22)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v21), vzip2q_s16(v41, v42)), v26), v22)));
        v44 = vzip1q_s8(v43, 0);
        v45 = vzip2q_s8(v43, 0);
        if (a5)
        {
          v46 = *a6;
          v47 = a6[2];
          a6 += 4;
          v44 = vaddq_s16(v46, v44);
          v45 = vaddq_s16(v47, v45);
        }

        *a3 = vqmovun_s16(v44);
        *(a3 + a4) = vqmovun_s16(v45);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v27;
      }

      while (v27);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v77 = vrhaddq_u16(*result, *a2);
      v78 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v79 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v80 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v81 = *a6;
        v82 = a6[2];
        v83 = a6[4];
        v84 = a6[6];
        a6 += 8;
        v77 = vaddq_s16(v81, v77);
        v78 = vaddq_s16(v82, v78);
        v79 = vaddq_s16(v83, v79);
        v80 = vaddq_s16(v84, v80);
      }

      *a3 = vqmovun_s16(v77);
      *(a3 + a4) = vqmovun_s16(v78);
      *(a3 + 2 * a4) = vqmovun_s16(v79);
      *(a3 + 3 * a4) = vqmovun_s16(v80);
      a3 = (a3 + 4 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_277297404(uint64_t result, uint64_t a2, int8x8_t *a3, int a4, uint64_t a5, int16x8_t *a6, int a7, uint64_t a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, uint64_t a13, unsigned int a14)
{
  v14 = *(a8 + 48);
  v15 = v14[90];
  if (v15 == 1)
  {
    if (a7)
    {
      v50 = a13 + 16 * a14;
      v51 = *(v50 + 8);
      v52 = 3 * *(v50 + 9);
      v53 = &v14[96 * v51 + v52];
      v54 = &v14[v52];
      v55 = &v54[96 * v51];
      a9.i32[0] = *(v53 + 1904);
      a11.i32[0] = *(v53 + 1908);
      v56 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v57 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v56);
      v56.i32[0] = v55[3548];
      v58 = vqtbl1q_s8(v56, xmmword_2773B3DC0);
      a12.i32[0] = v55[3549];
      v59 = vzip1q_s16(v58, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v58.i32[0] = v14[88];
      v60 = vqtbl1q_s8(v58, xmmword_2773B3DF0);
      v61 = vzip1q_s32(vqtbl1q_s8(((v14[3 * v51 + 284] + v54[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v14[3 * v51 + 285] + v54[381] + 1) >> 1), xmmword_2773B3DF0));
      v62 = 2 * a7;
      v63 = vdupq_n_s32(~v14[84]);
      if ((2 * a7) <= 1)
      {
        v62 = 1;
      }

      do
      {
        v64 = *(result + 16);
        v65 = vmulq_s16(*result, v57);
        v66 = vuzp2q_s16(vmull_s16(*result, *v57.i8), vmull_high_s16(*result, v57));
        v67 = vzip1q_s16(v65, v66);
        v68 = vzip2q_s16(v65, v66);
        v69 = *(a2 + 16);
        v70 = vmulq_s16(*a2, v59);
        v71 = vuzp2q_s16(vmull_s16(*a2, *v59.i8), vmull_high_s16(*a2, v59));
        v72 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v67, v60), vzip1q_s16(v70, v71)), v63), v61)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v68, v60), vzip2q_s16(v70, v71)), v63), v61));
        v73 = vmulq_s16(v64, v57);
        v74 = vuzp2q_s16(vmull_s16(*v64.i8, *v57.i8), vmull_high_s16(v64, v57));
        v75 = vzip1q_s16(v73, v74);
        v76 = vzip2q_s16(v73, v74);
        v77 = vmulq_s16(v69, v59);
        v78 = vuzp2q_s16(vmull_s16(*v69.i8, *v59.i8), vmull_high_s16(v69, v59));
        v79 = vqmovun_high_s16(vqmovun_s16(v72), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v75, v60), vzip1q_s16(v77, v78)), v63), v61)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v76, v60), vzip2q_s16(v77, v78)), v63), v61)));
        v80 = vzip1q_s8(v79, 0);
        v81 = vzip2q_s8(v79, 0);
        if (a5)
        {
          v82 = *a6;
          v83 = a6[2];
          a6 += 4;
          v80 = vaddq_s16(v82, v80);
          v81 = vaddq_s16(v83, v81);
        }

        *a3 = vqmovun_s16(v80);
        *(a3 + a4) = vqmovun_s16(v81);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v62;
      }

      while (v62);
    }
  }

  else if (v15 == 2)
  {
    if (a7)
    {
      v16 = a13 + 16 * a14;
      v17 = *(v16 + 8);
      v18 = 3 * *(v16 + 9);
      v19 = &v14[96 * v17 + v18];
      v20 = &v14[v18];
      v21 = &v20[96 * v17];
      a9.i32[0] = *(v19 + 1904);
      a11.i32[0] = *(v19 + 1908);
      v22 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v23 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v22);
      v22.i32[0] = v21[3548];
      v24 = vqtbl1q_s8(v22, xmmword_2773B3DC0);
      a12.i32[0] = v21[3549];
      v25 = vzip1q_s16(v24, vqtbl1q_s8(a12, xmmword_2773B3DC0));
      v24.i32[0] = v14[88];
      v26 = vqtbl1q_s8(v24, xmmword_2773B3DF0);
      v27 = vzip1q_s32(vqtbl1q_s8(((v14[3 * v17 + 284] + v20[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v14[3 * v17 + 285] + v20[381] + 1) >> 1), xmmword_2773B3DF0));
      v28 = 2 * a7;
      v29 = vdupq_n_s32(~v14[84]);
      if ((2 * a7) <= 1)
      {
        v28 = 1;
      }

      do
      {
        v30 = *(result + 16);
        v31 = vmulq_s16(*result, v23);
        v32 = vuzp2q_s16(vmull_s16(*result, *v23.i8), vmull_high_s16(*result, v23));
        v33 = vzip1q_s16(v31, v32);
        v34 = vzip2q_s16(v31, v32);
        v35 = *(a2 + 16);
        v36 = vmulq_s16(*a2, v25);
        v37 = vuzp2q_s16(vmull_s16(*a2, *v25.i8), vmull_high_s16(*a2, v25));
        v38 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v33, v26), vzip1q_s16(v36, v37)), v29), v27)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v34, v26), vzip2q_s16(v36, v37)), v29), v27));
        v39 = vmulq_s16(v30, v23);
        v40 = vuzp2q_s16(vmull_s16(*v30.i8, *v23.i8), vmull_high_s16(v30, v23));
        v41 = vzip1q_s16(v39, v40);
        v42 = vzip2q_s16(v39, v40);
        v43 = vmulq_s16(v35, v25);
        v44 = vuzp2q_s16(vmull_s16(*v35.i8, *v25.i8), vmull_high_s16(v35, v25));
        v45 = vqmovun_high_s16(vqmovun_s16(v38), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v41, v26), vzip1q_s16(v43, v44)), v29), v27)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v42, v26), vzip2q_s16(v43, v44)), v29), v27)));
        v46 = vzip1q_s8(v45, 0);
        v47 = vzip2q_s8(v45, 0);
        if (a5)
        {
          v48 = *a6;
          v49 = a6[2];
          a6 += 4;
          v46 = vaddq_s16(v48, v46);
          v47 = vaddq_s16(v49, v47);
        }

        *a3 = vqmovun_s16(v46);
        *(a3 + a4) = vqmovun_s16(v47);
        a3 = (a3 + 2 * a4);
        result += 32;
        a2 += 32;
        --v28;
      }

      while (v28);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      v84 = vrhaddq_u16(*result, *a2);
      v85 = vrhaddq_u16(*(result + 16), *(a2 + 16));
      v86 = vrhaddq_u16(*(result + 32), *(a2 + 32));
      v87 = vrhaddq_u16(*(result + 48), *(a2 + 48));
      if (a5)
      {
        v88 = *a6;
        v89 = a6[2];
        v90 = a6[4];
        v91 = a6[6];
        a6 += 8;
        v84 = vaddq_s16(v88, v84);
        v85 = vaddq_s16(v89, v85);
        v86 = vaddq_s16(v90, v86);
        v87 = vaddq_s16(v91, v87);
      }

      *a3 = vqmovun_s16(v84);
      *(a3 + a4) = vqmovun_s16(v85);
      *(a3 + 2 * a4) = vqmovun_s16(v86);
      *(a3 + 3 * a4) = vqmovun_s16(v87);
      a3 = (a3 + 4 * a4);
      result += 64;
      a2 += 64;
      --a7;
    }

    while (a7);
  }

  return result;
}

int8x8_t sub_277297870(uint16x8_t *a1, uint16x8_t *a2, int8x8_t *a3, int a4, uint64_t a5, int16x8_t *a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10, double a11, int8x16_t a12, unsigned int a13)
{
  v13 = *(a7 + 48);
  v14 = v13[90];
  if (v14 == 2)
  {
    v18 = a8 + 16 * a13;
    v16 = *(v18 + 8);
    v17 = *(v18 + 9);
  }

  else
  {
    if (v14 != 1)
    {
      v48 = vrhaddq_u16(*a1, *a2);
      v49 = vrhaddq_u16(a1[1], a2[1]);
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v15 = &v13[4 * a13];
    v16 = *(v15 + 24);
    v17 = *(v15 + 25);
  }

  v19 = 3 * v17;
  v20 = &v13[96 * v16 + v19];
  v21 = &v13[v19];
  v22 = &v21[96 * v16];
  a9.i32[0] = *(v20 + 1904);
  v23 = vqtbl1q_s8(a9, xmmword_2773B3DC0);
  a10.i32[0] = *(v20 + 1908);
  v24 = vzip1q_s16(v23, vqtbl1q_s8(a10, xmmword_2773B3DC0));
  v23.i32[0] = v22[3548];
  v25 = vqtbl1q_s8(v23, xmmword_2773B3DC0);
  a12.i32[0] = v22[3549];
  v26 = vzip1q_s16(v25, vqtbl1q_s8(a12, xmmword_2773B3DC0));
  v25.i32[0] = v13[88];
  v27 = vqtbl1q_s8(v25, xmmword_2773B3DF0);
  v28 = vzip1q_s32(vqtbl1q_s8(((v13[3 * v16 + 284] + v21[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v13[3 * v16 + 285] + v21[381] + 1) >> 1), xmmword_2773B3DF0));
  v29 = a1[1];
  v30 = vmulq_s16(*a1, v24);
  v31 = vuzp2q_s16(vmull_s16(*a1->i8, *v24.i8), vmull_high_s16(*a1, v24));
  v32 = vzip1q_s16(v30, v31);
  v33 = vzip2q_s16(v30, v31);
  v34 = a2[1];
  v35 = vmulq_s16(*a2, v26);
  v36 = vuzp2q_s16(vmull_s16(*a2->i8, *v26.i8), vmull_high_s16(*a2, v26));
  v37 = vzip1q_s16(v35, v36);
  v38 = vaddq_s32(vaddq_s32(v33, v27), vzip2q_s16(v35, v36));
  v39 = vdupq_n_s32(~v13[84]);
  v40 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v32, v27), v37), v39), v28)), vaddq_s32(vshlq_s32(v38, v39), v28));
  v41 = vmulq_s16(v29, v24);
  v42 = vuzp2q_s16(vmull_s16(*v29.i8, *v24.i8), vmull_high_s16(v29, v24));
  v43 = vzip1q_s16(v41, v42);
  v44 = vzip2q_s16(v41, v42);
  v45 = vmulq_s16(v34, v26);
  v46 = vuzp2q_s16(vmull_s16(*v34.i8, *v26.i8), vmull_high_s16(v34, v26));
  v47 = vqmovun_high_s16(vqmovun_s16(v40), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v43, v27), vzip1q_s16(v45, v46)), v39), v28)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v44, v27), vzip2q_s16(v45, v46)), v39), v28)));
  v48 = vzip1q_s8(v47, 0);
  v49 = vzip2q_s8(v47, 0);
  if (a5)
  {
LABEL_6:
    v48 = vaddq_s16(*a6, v48);
    v49 = vaddq_s16(a6[2], v49);
  }

LABEL_7:
  result = vqmovun_s16(v49);
  *a3 = vqmovun_s16(v48);
  *(a3 + a4) = result;
  return result;
}

int16x4_t *sub_277297A64(int16x4_t *result, int16x4_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t *a6, int a7, uint64_t a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int8x16_t a12, uint16x8_t a13, uint16x8_t a14, int8x16_t a15, uint16x8_t a16, uint64_t a17, unsigned int a18)
{
  v21 = *(a8 + 48);
  v22 = v21[90];
  if (v22 == 1)
  {
    if (a7)
    {
      v48 = a17 + 16 * a18;
      v49 = *(v48 + 8);
      LODWORD(v48) = *(v48 + 9);
      a9.i32[0] = v21[87];
      v50 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v51 = vqtbl1q_s8(((v21[3 * v49 + 283] + v21[3 * v48 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v52 = &v21[96 * v49 + 3 * v48];
      a12.i32[0] = *(v52 + 14188);
      v53 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v52 + 1900);
      v54 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v55 = vdupq_n_s32(~v21[83]);
      if ((2 * a7) <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 2 * a7;
      }

      v57 = vmull_s16(0, *&vextq_s8(v54, v54, 8uLL));
      v58 = vmull_s16(0, *&vextq_s8(v53, v53, 8uLL));
      do
      {
        *v18.i8 = *result;
        *v19.i8 = result[1];
        v59 = vmulq_s16(v18, v54);
        v60 = vuzp2q_s16(vmull_s16(*result, *v54.i8), v57);
        v61 = vzip1q_s16(v59, v60);
        v62 = vzip2q_s16(v59, v60);
        *v59.i8 = *a2;
        *v20.i8 = a2[1];
        v63 = vmulq_s16(v59, v53);
        v64 = vuzp2q_s16(vmull_s16(*a2, *v53.i8), v58);
        v65 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v61, v50), vzip1q_s16(v63, v64)), v55), v51)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v62, v50), vzip2q_s16(v63, v64)), v55), v51));
        v66 = vmulq_s16(v19, v54);
        v67 = vuzp2q_s16(vmull_s16(*v19.i8, *v54.i8), v57);
        v68 = vzip1q_s16(v66, v67);
        v69 = vzip2q_s16(v66, v67);
        v70 = vmulq_s16(v20, v53);
        v20 = vuzp2q_s16(vmull_s16(*v20.i8, *v53.i8), v58);
        v71 = vaddq_s32(vaddq_s32(v68, v50), vzip1q_s16(v70, v20));
        v72 = vqmovun_high_s16(vqmovun_s16(v65), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v71, v55), v51)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v69, v50), vzip2q_s16(v70, v20)), v55), v51)));
        v19 = vzip1q_s8(v72, 0);
        v18 = vzip2q_s8(v72, 0);
        if (a5)
        {
          v65.i64[0] = *a6;
          v71.i64[0] = a6[4];
          a6 += 8;
          v19 = vaddq_s16(v65, v19);
          v18 = vaddq_s16(v71, v18);
        }

        *a3 = vqmovun_s16(v19).u32[0];
        *(a3 + a4) = vqmovun_s16(v18).u32[0];
        a3 = (a3 + 2 * a4);
        result += 2;
        a2 += 2;
        --v56;
      }

      while (v56);
    }
  }

  else if (v22 == 2)
  {
    if (a7)
    {
      v23 = a17 + 16 * a18;
      v24 = *(v23 + 8);
      LODWORD(v23) = *(v23 + 9);
      a9.i32[0] = v21[87];
      v25 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      v26 = vqtbl1q_s8(((v21[3 * v24 + 283] + v21[3 * v23 + 379] + 1) >> 1), xmmword_2773B3DF0);
      v27 = &v21[96 * v24 + 3 * v23];
      a12.i32[0] = *(v27 + 14188);
      v28 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      a15.i32[0] = *(v27 + 1900);
      v29 = vqtbl1q_s8(vqtbl1q_s8(a15, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v30 = vdupq_n_s32(~v21[83]);
      if ((2 * a7) <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2 * a7;
      }

      v32 = vmull_s16(0, *&vextq_s8(v29, v29, 8uLL));
      v33 = vmull_s16(0, *&vextq_s8(v28, v28, 8uLL));
      do
      {
        *v18.i8 = *result;
        *v19.i8 = result[1];
        v34 = vmulq_s16(v18, v29);
        v35 = vuzp2q_s16(vmull_s16(*result, *v29.i8), v32);
        v36 = vzip1q_s16(v34, v35);
        v37 = vzip2q_s16(v34, v35);
        *v34.i8 = *a2;
        *v20.i8 = a2[1];
        v38 = vmulq_s16(v34, v28);
        v39 = vuzp2q_s16(vmull_s16(*a2, *v28.i8), v33);
        v40 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v36, v25), vzip1q_s16(v38, v39)), v30), v26)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v37, v25), vzip2q_s16(v38, v39)), v30), v26));
        v41 = vmulq_s16(v19, v29);
        v42 = vuzp2q_s16(vmull_s16(*v19.i8, *v29.i8), v32);
        v43 = vzip1q_s16(v41, v42);
        v44 = vzip2q_s16(v41, v42);
        v45 = vmulq_s16(v20, v28);
        v20 = vuzp2q_s16(vmull_s16(*v20.i8, *v28.i8), v33);
        v46 = vaddq_s32(vaddq_s32(v43, v25), vzip1q_s16(v45, v20));
        v47 = vqmovun_high_s16(vqmovun_s16(v40), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v46, v30), v26)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v44, v25), vzip2q_s16(v45, v20)), v30), v26)));
        v19 = vzip1q_s8(v47, 0);
        v18 = vzip2q_s8(v47, 0);
        if (a5)
        {
          v40.i64[0] = *a6;
          v46.i64[0] = a6[4];
          a6 += 8;
          v19 = vaddq_s16(v40, v19);
          v18 = vaddq_s16(v46, v18);
        }

        *a3 = vqmovun_s16(v19).u32[0];
        *(a3 + a4) = vqmovun_s16(v18).u32[0];
        a3 = (a3 + 2 * a4);
        result += 2;
        a2 += 2;
        --v31;
      }

      while (v31);
    }
  }

  else if (a7 >= 1)
  {
    do
    {
      *a9.i8 = *result;
      *a10.i8 = result[1];
      *a13.i8 = result[2];
      *a14.i8 = result[3];
      *a11.i8 = *a2;
      *a15.i8 = a2[1];
      *a16.i8 = a2[2];
      *v18.i8 = a2[3];
      v73 = vrhaddq_u16(a9, a11);
      a11 = vrhaddq_u16(a10, a15);
      a10 = vrhaddq_u16(a13, a16);
      a9 = vrhaddq_u16(a14, v18);
      if (a5)
      {
        a13.i64[0] = *a6;
        a14.i64[0] = a6[4];
        a15.i64[0] = a6[8];
        a16.i64[0] = a6[12];
        a6 += 16;
        v73 = vaddq_s16(v73, a13);
        a11 = vaddq_s16(a11, a14);
        a10 = vaddq_s16(a10, a15);
        a9 = vaddq_s16(a9, a16);
      }

      *a3 = vqmovun_s16(v73).u32[0];
      *(a3 + a4) = vqmovun_s16(a11).u32[0];
      *(a3 + 2 * a4) = vqmovun_s16(a10).u32[0];
      *(a3 + 3 * a4) = vqmovun_s16(a9).u32[0];
      a3 += a4;
      result += 4;
      a2 += 4;
      --a7;
    }

    while (a7);
  }

  return result;
}

double sub_277297E74(int16x4_t *a1, int16x4_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, int8x16_t a9, uint16x8_t a10, int8x16_t a11, int8x16_t a12, uint16x8_t a13, uint16x8_t a14, uint16x8_t a15, uint16x8_t a16, unsigned int a17)
{
  v20 = *(a7 + 48);
  v21 = v20[90];
  if (v21 == 1)
  {
    v53 = a8 + 16 * a17;
    v54 = *(v53 + 8);
    v55 = 3 * *(v53 + 9);
    v56 = &v20[96 * v54 + v55];
    v57 = &v20[v55];
    v58 = &v57[96 * v54];
    a9.i32[0] = *(v56 + 1904);
    a11.i32[0] = *(v56 + 1908);
    v59 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
    v29 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v59);
    v59.i32[0] = v58[3548];
    v60 = vqtbl1q_s8(v59, xmmword_2773B3DC0);
    a12.i32[0] = v58[3549];
    v61 = vzip1q_s16(v60, vqtbl1q_s8(a12, xmmword_2773B3DC0));
    v60.i32[0] = v20[88];
    v62 = vqtbl1q_s8(v60, xmmword_2773B3DF0);
    v63 = vzip1q_s32(vqtbl1q_s8(((v20[3 * v54 + 284] + v57[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v20[3 * v54 + 285] + v57[381] + 1) >> 1), xmmword_2773B3DF0));
    v64 = vdupq_n_s32(~v20[84]);
    v65 = 1;
    v66 = vmull_s16(0, *&vextq_s8(v29, v29, 8uLL));
    v67 = vmull_s16(0, *&vextq_s8(v61, v61, 8uLL));
    do
    {
      *v17.i8 = *a1;
      *v18.i8 = a1[1];
      v68 = vmulq_s16(v29, v17);
      v69 = vuzp2q_s16(vmull_s16(*a1, *v29.i8), v66);
      v70 = vzip1q_s16(v68, v69);
      v71 = vzip2q_s16(v68, v69);
      *v68.i8 = *a2;
      *v19.i8 = a2[1];
      v72 = vmulq_s16(v61, v68);
      v73 = vuzp2q_s16(vmull_s16(*a2, *v61.i8), v67);
      v74 = v65;
      v75 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v70, v62), vzip1q_s16(v72, v73)), v64), v63)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v71, v62), vzip2q_s16(v72, v73)), v64), v63));
      v76 = vmulq_s16(v29, v18);
      v77 = vuzp2q_s16(vmull_s16(*v18.i8, *v29.i8), v66);
      v78 = vzip1q_s16(v76, v77);
      v79 = vzip2q_s16(v76, v77);
      v80 = vmulq_s16(v61, v19);
      v19 = vuzp2q_s16(vmull_s16(*v19.i8, *v61.i8), v67);
      v81 = vaddq_s32(vaddq_s32(v78, v62), vzip1q_s16(v80, v19));
      v82 = vqmovun_high_s16(vqmovun_s16(v75), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v81, v64), v63)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v79, v62), vzip2q_s16(v80, v19)), v64), v63)));
      v18 = vzip1q_s8(v82, 0);
      v17 = vzip2q_s8(v82, 0);
      if (a5)
      {
        v75.i64[0] = *a6;
        v81.i64[0] = a6[4];
        a6 += 8;
        v18 = vaddq_s16(v75, v18);
        v17 = vaddq_s16(v81, v17);
      }

      v65 = 0;
      *a3 = vqmovun_s16(v18).u32[0];
      *(a3 + a4) = vqmovun_s16(v17).u32[0];
      a3 = (a3 + 2 * a4);
      a1 += 2;
      a2 += 2;
    }

    while ((v74 & 1) != 0);
  }

  else if (v21 == 2)
  {
    v22 = a8 + 16 * a17;
    v23 = *(v22 + 8);
    v24 = 3 * *(v22 + 9);
    v25 = &v20[96 * v23 + v24];
    v26 = &v20[v24];
    v27 = &v26[96 * v23];
    a9.i32[0] = *(v25 + 1904);
    a11.i32[0] = *(v25 + 1908);
    v28 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
    v29 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v28);
    v28.i32[0] = v27[3548];
    v30 = vqtbl1q_s8(v28, xmmword_2773B3DC0);
    a12.i32[0] = v27[3549];
    v31 = vzip1q_s16(v30, vqtbl1q_s8(a12, xmmword_2773B3DC0));
    v30.i32[0] = v20[88];
    v32 = vqtbl1q_s8(v30, xmmword_2773B3DF0);
    v33 = vzip1q_s32(vqtbl1q_s8(((v20[3 * v23 + 284] + v26[380] + 1) >> 1), xmmword_2773B3DF0), vqtbl1q_s8(((v20[3 * v23 + 285] + v26[381] + 1) >> 1), xmmword_2773B3DF0));
    v34 = vdupq_n_s32(~v20[84]);
    v35 = 1;
    v36 = vmull_s16(0, *&vextq_s8(v29, v29, 8uLL));
    v37 = vmull_s16(0, *&vextq_s8(v31, v31, 8uLL));
    do
    {
      *v17.i8 = *a1;
      *v18.i8 = a1[1];
      v38 = vmulq_s16(v29, v17);
      v39 = vuzp2q_s16(vmull_s16(*a1, *v29.i8), v36);
      v40 = vzip1q_s16(v38, v39);
      v41 = vzip2q_s16(v38, v39);
      *v38.i8 = *a2;
      *v19.i8 = a2[1];
      v42 = vmulq_s16(v31, v38);
      v43 = vuzp2q_s16(vmull_s16(*a2, *v31.i8), v37);
      v44 = v35;
      v45 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v40, v32), vzip1q_s16(v42, v43)), v34), v33)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v41, v32), vzip2q_s16(v42, v43)), v34), v33));
      v46 = vmulq_s16(v29, v18);
      v47 = vuzp2q_s16(vmull_s16(*v18.i8, *v29.i8), v36);
      v48 = vzip1q_s16(v46, v47);
      v49 = vzip2q_s16(v46, v47);
      v50 = vmulq_s16(v31, v19);
      v19 = vuzp2q_s16(vmull_s16(*v19.i8, *v31.i8), v37);
      v51 = vaddq_s32(vaddq_s32(v48, v32), vzip1q_s16(v50, v19));
      v52 = vqmovun_high_s16(vqmovun_s16(v45), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v51, v34), v33)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v49, v32), vzip2q_s16(v50, v19)), v34), v33)));
      v18 = vzip1q_s8(v52, 0);
      v17 = vzip2q_s8(v52, 0);
      if (a5)
      {
        v45.i64[0] = *a6;
        v51.i64[0] = a6[4];
        a6 += 8;
        v18 = vaddq_s16(v45, v18);
        v17 = vaddq_s16(v51, v17);
      }

      v35 = 0;
      *a3 = vqmovun_s16(v18).u32[0];
      *(a3 + a4) = vqmovun_s16(v17).u32[0];
      a3 = (a3 + 2 * a4);
      a1 += 2;
      a2 += 2;
    }

    while ((v44 & 1) != 0);
  }

  else
  {
    *a9.i8 = *a1;
    *a10.i8 = a1[1];
    *a13.i8 = a1[2];
    *a14.i8 = a1[3];
    *a11.i8 = *a2;
    *a15.i8 = a2[1];
    *a16.i8 = a2[2];
    *v17.i8 = a2[3];
    v83 = vrhaddq_u16(a9, a11);
    v84 = vrhaddq_u16(a10, a15);
    v29 = vrhaddq_u16(a13, a16);
    v85 = vrhaddq_u16(a14, v17);
    if (a5)
    {
      a13.i64[0] = *a6;
      a14.i64[0] = a6[4];
      a15.i64[0] = a6[8];
      a16.i64[0] = a6[12];
      v83 = vaddq_s16(v83, a13);
      v84 = vaddq_s16(v84, a14);
      v29 = vaddq_s16(v29, a15);
      v85 = vaddq_s16(v85, a16);
    }

    *a3 = vqmovun_s16(v83).u32[0];
    *(a3 + a4) = vqmovun_s16(v84).u32[0];
    *v29.i8 = vqmovun_s16(v29);
    *(a3 + 2 * a4) = v29.i32[0];
    *(a3 + 3 * a4) = vqmovun_s16(v85).u32[0];
  }

  return *v29.i64;
}

int8x8_t sub_2772982B4(int16x4_t *a1, int16x4_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10, uint16x8_t a11, int8x16_t a12, double a13, double a14, int16x8_t a15, unsigned int a16)
{
  v17 = *(a7 + 48);
  v18 = v17[90];
  if (v18 == 2 || v18 == 1)
  {
    v19 = a8 + 16 * a16;
    v20 = *(v19 + 8);
    v21 = 3 * *(v19 + 9);
    v22 = &v17[96 * v20 + v21];
    v23 = &v17[v21];
    v24 = &v23[96 * v20];
    v25 = &v17[3 * v20];
    a9.i32[0] = *(v22 + 1904);
    v26 = vqtbl1q_s8(a9, xmmword_2773B3DC0);
    a10.i32[0] = *(v22 + 1908);
    v27 = vzip1q_s16(v26, vqtbl1q_s8(a10, xmmword_2773B3DC0));
    v26.i32[0] = v24[3548];
    v28 = vqtbl1q_s8(v26, xmmword_2773B3DC0);
    a12.i32[0] = v24[3549];
    v29 = vzip1q_s16(v28, vqtbl1q_s8(a12, xmmword_2773B3DC0));
    v28.i32[0] = v17[88];
    v30 = vqtbl1q_s8(v28, xmmword_2773B3DF0);
    v31 = vqtbl1q_s8(((v25[284] + v23[380] + 1) >> 1), xmmword_2773B3DF0);
    v32 = vzip1q_s32(v31, vqtbl1q_s8(((v25[285] + v23[381] + 1) >> 1), xmmword_2773B3DF0));
    *v31.i8 = *a1;
    *a15.i8 = a1[1];
    v33 = vmulq_s16(v27, v31);
    v34 = vmull_s16(0, *&vextq_s8(v27, v27, 8uLL));
    v35 = vuzp2q_s16(vmull_s16(*a1, *v27.i8), v34);
    v36 = vzip1q_s16(v33, v35);
    v37 = vzip2q_s16(v33, v35);
    *v33.i8 = *a2;
    *v16.i8 = a2[1];
    v38 = vmulq_s16(v29, v33);
    v39 = vmull_s16(0, *&vextq_s8(v29, v29, 8uLL));
    v40 = vuzp2q_s16(vmull_s16(*a2, *v29.i8), v39);
    v41 = vzip1q_s16(v38, v40);
    v42 = vaddq_s32(vaddq_s32(v37, v30), vzip2q_s16(v38, v40));
    v43 = vdupq_n_s32(~v17[84]);
    v44 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v36, v30), v41), v43), v32)), vaddq_s32(vshlq_s32(v42, v43), v32));
    v45 = vmulq_s16(v27, a15);
    v46 = vuzp2q_s16(vmull_s16(*a15.i8, *v27.i8), v34);
    v47 = vzip1q_s16(v45, v46);
    v48 = vzip2q_s16(v45, v46);
    v49 = vmulq_s16(v29, v16);
    v50 = vuzp2q_s16(vmull_s16(*v16.i8, *v29.i8), v39);
    v51 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v47, v30), vzip1q_s16(v49, v50)), v43), v32)), vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v48, v30), vzip2q_s16(v49, v50)), v43), v32));
    v52 = vqmovun_high_s16(vqmovun_s16(v44), v51);
    v53 = vzip1q_s8(v52, 0);
    v54 = vzip2q_s8(v52, 0);
    if (a5)
    {
      v51.i64[0] = *a6;
      v52.i64[0] = a6[4];
      v53 = vaddq_s16(v51, v53);
      v54 = vaddq_s16(v52, v54);
    }
  }

  else
  {
    *a9.i8 = *a1;
    *a11.i8 = a1[1];
    *a10.i8 = *a2;
    *a12.i8 = a2[1];
    v53 = vrhaddq_u16(a9, a10);
    v54 = vrhaddq_u16(a11, a12);
    if (a5)
    {
      a11.i64[0] = *a6;
      a12.i64[0] = a6[4];
      v53 = vaddq_s16(v53, a11);
      v54 = vaddq_s16(v54, a12);
    }
  }

  result = vqmovun_s16(v54);
  *a3 = vqmovun_s16(v53).u32[0];
  *(a3 + a4) = result.i32[0];
  return result;
}

uint8x8_t *sub_2772984A8(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, int8x16_t a8, double a9, double a10, double a11, int8x16_t a12)
{
  v12 = a6 + 16 * a7;
  v13 = *(v12 + 15) - 4;
  v14 = *(a5 + 48);
  v15 = v14 + 384 * v13 + 12 * *(v12 + v13 + 8);
  a8.i32[0] = *(v15 + 364);
  v16 = xmmword_2773B3DC0;
  v17 = vqtbl1q_s8(vqtbl1q_s8(a8, xmmword_2773B3DC0), xmmword_2773B3DF0);
  v16.i32[0] = *(v14 + 340);
  v18 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
  a12.i32[0] = *(v15 + 1132);
  v19 = vdupq_n_s32(-*(v14 + 332));
  v20 = vqtbl1q_s8(a12, xmmword_2773B3DF0);
  v21 = result + 1;
  v22 = 16;
  do
  {
    v23 = vmovl_u8(v21[-1]);
    v24 = vmull_s16(*v23.i8, *v17.i8);
    v25 = vmull_high_s16(v23, v17);
    v26 = vmulq_s16(v23, v17);
    v27 = vuzp2q_s16(v24, v25);
    v28 = vmovl_u8(*v21);
    v29 = vmulq_s16(v28, v17);
    v30 = vuzp2q_s16(vmull_s16(*v28.i8, *v17.i8), vmull_high_s16(v28, v17));
    v31 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v26, v27), v18), v19), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v26, v27), v18), v19), v20))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v30), v18), v19), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v18), v19), v20)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vzip1q_s8(v31, 0)), vzip2q_s8(v31, 0));
    a3 = (a3 + a4);
    v21 = (v21 + a2);
    --v22;
  }

  while (v22);
  return result;
}

uint8x8_t *sub_2772985C8(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v12 = 0;
  v13 = a7 + 16 * a8;
  v14 = *(v13 + 15) - 4;
  v15 = *(a6 + 48);
  v16 = v15 + 384 * v14 + 12 * *(v13 + v14 + 8);
  a10.i32[0] = *(v16 + 364);
  v17 = vqtbl1q_s8(vqtbl1q_s8(a10, xmmword_2773B3DC0), xmmword_2773B3DF0);
  a10.i32[0] = *(v15 + 340);
  v18 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
  a12.i32[0] = *(v16 + 1132);
  v19 = vqtbl1q_s8(a12, xmmword_2773B3DF0);
  v20 = vdupq_n_s32(-*(v15 + 332));
  v21 = result + 1;
  do
  {
    v22 = vmovl_u8(v21[-1]);
    v23 = vmulq_s16(v22, v17);
    v24 = vuzp2q_s16(vmull_s16(*v22.i8, *v17.i8), vmull_high_s16(v22, v17));
    v25 = vzip1q_s16(v23, v24);
    v26 = vzip2q_s16(v23, v24);
    v27 = vmovl_u8(*v21);
    v28 = vaddq_s32(v25, v18);
    v29 = vmulq_s16(v27, v17);
    v30 = vuzp2q_s16(vmull_s16(*v27.i8, *v17.i8), vmull_high_s16(v27, v17));
    v31 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v28, v20), v19)), vaddq_s32(vshlq_s32(vaddq_s32(v26, v18), v20), v19))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v30), v18), v20), v19)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v18), v20), v19)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a5 + v12), vzip1q_s8(v31, 0))), vaddq_s16(*(a5 + v12 + 16), vzip2q_s8(v31, 0)));
    a3 = (a3 + a4);
    v12 += 32;
    v21 = (v21 + a2);
  }

  while (v12 != 512);
  return result;
}

int16x8_t *sub_2772986FC(int16x8_t *result, int8x16_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, unsigned int a12)
{
  v12 = *(a7 + 48);
  if (v12[89] == 1 || v12[90] == 1)
  {
    if (a6)
    {
      v13 = a8 + 16 * a12;
      v14 = *(v13 + 15) - 4;
      LODWORD(v13) = *(v13 + v14 + 8);
      a9.i32[0] = v12[85];
      v15 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      a10.i32[0] = v12[96 * v14 + 283 + 3 * v13];
      v16 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
      a11.i32[0] = v12[96 * v14 + 91 + 3 * v13];
      v17 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v18 = vdupq_n_s32(-v12[83]);
      v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
      if ((2 * a6) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2 * a6;
      }

      do
      {
        v21 = result[1];
        v22 = vmulq_s16(*result, v19);
        v23 = vuzp2q_s16(vmull_s16(*result->i8, *v19.i8), vmull_high_s16(*result, v19));
        v24 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v22, v23), v15), v18), v16)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v22, v23), v15), v18), v16));
        v25 = vmulq_s16(v21, v19);
        v26 = vuzp2q_s16(vmull_s16(*v21.i8, *v19.i8), vmull_high_s16(v21, v19));
        v27 = vqmovun_high_s16(vqmovun_s16(v24), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v15), v18), v16)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v15), v18), v16)));
        v28 = vzip1q_s8(v27, 0);
        v29 = vzip2q_s8(v27, 0);
        if (a4)
        {
          v30 = *a5;
          v31 = a5[1];
          a5 += 2;
          v28 = vaddq_s16(v30, v28);
          v29 = vaddq_s16(v31, v29);
        }

        *a2 = vqmovun_high_s16(vqmovun_s16(v28), v29);
        a2 = (a2 + a3);
        result += 2;
        --v20;
      }

      while (v20);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v33 = *result;
      v32 = result[1];
      v35 = result[2];
      v34 = result[3];
      if (a4)
      {
        v36 = *a5;
        v37 = a5[1];
        v38 = a5[2];
        v39 = a5[3];
        a5 += 4;
        v33 = vaddq_s16(v36, v33);
        v32 = vaddq_s16(v37, v32);
        v35 = vaddq_s16(v38, v35);
        v34 = vaddq_s16(v39, v34);
      }

      *a2 = vqmovun_high_s16(vqmovun_s16(v33), v32);
      *(a2 + a3) = vqmovun_high_s16(vqmovun_s16(v35), v34);
      a2 = (a2 + 2 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint8x8_t *sub_2772988B4(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v12 = a6 + 16 * a7;
  v13 = *(v12 + 15) - 4;
  v14 = *(a5 + 48);
  v15 = (v14 + 384 * v13 + 12 * *(v12 + v13 + 8));
  a8.i32[0] = v15[92];
  a10.i32[0] = v15[93];
  v16 = vqtbl1q_s8(a10, xmmword_2773B3DC0);
  v17 = vzip1q_s16(vqtbl1q_s8(a8, xmmword_2773B3DC0), v16);
  v16.i32[0] = *(v14 + 344);
  v18 = vqtbl1q_s8(v16, xmmword_2773B3DF0);
  a11.i32[0] = v15[284];
  a12.i32[0] = v15[285];
  v19 = vdupq_n_s32(-*(v14 + 336));
  v20 = vzip1q_s32(vqtbl1q_s8(a11, xmmword_2773B3DF0), vqtbl1q_s8(a12, xmmword_2773B3DF0));
  v21 = result + 1;
  v22 = 8;
  do
  {
    v23 = vmovl_u8(v21[-1]);
    v24 = vmull_s16(*v23.i8, *v17.i8);
    v25 = vmull_high_s16(v23, v17);
    v26 = vmulq_s16(v17, v23);
    v27 = vuzp2q_s16(v24, v25);
    v28 = vmovl_u8(*v21);
    v29 = vmulq_s16(v17, v28);
    v30 = vuzp2q_s16(vmull_s16(*v28.i8, *v17.i8), vmull_high_s16(v28, v17));
    v31 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v26, v27), v18), v19), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v26, v27), v18), v19), v20))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v30), v18), v19), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v18), v19), v20)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vzip1q_s8(v31, 0)), vzip2q_s8(v31, 0));
    a3 = (a3 + a4);
    v21 = (v21 + a2);
    --v22;
  }

  while (v22);
  return result;
}

uint8x8_t *sub_2772989E8(uint8x8_t *result, int a2, int8x16_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v13 = 0;
  v14 = a7 + 16 * a8;
  v15 = *(v14 + 15) - 4;
  v16 = *(a6 + 48);
  v17 = (v16 + 384 * v15 + 12 * *(v14 + v15 + 8));
  a9.i32[0] = v17[92];
  a11.i32[0] = v17[93];
  v18 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
  v19 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v18);
  v18.i32[0] = *(v16 + 344);
  v20 = vqtbl1q_s8(v18, xmmword_2773B3DF0);
  a12.i32[0] = v17[284];
  a13.i32[0] = v17[285];
  v21 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
  v22 = vdupq_n_s32(-*(v16 + 336));
  v23 = result + 1;
  do
  {
    v24 = vmovl_u8(v23[-1]);
    v25 = vmulq_s16(v19, v24);
    v26 = vuzp2q_s16(vmull_s16(*v24.i8, *v19.i8), vmull_high_s16(v24, v19));
    v27 = vzip1q_s16(v25, v26);
    v28 = vzip2q_s16(v25, v26);
    v29 = vmovl_u8(*v23);
    v30 = vaddq_s32(v27, v20);
    v31 = vmulq_s16(v19, v29);
    v32 = vuzp2q_s16(vmull_s16(*v29.i8, *v19.i8), vmull_high_s16(v29, v19));
    v33 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v30, v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(v28, v20), v22), v21))), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v31, v32), v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v31, v32), v20), v22), v21)));
    *a3 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a5 + v13), vzip1q_s8(v33, 0))), vaddq_s16(*(a5 + v13 + 16), vzip2q_s8(v33, 0)));
    a3 = (a3 + a4);
    v13 += 32;
    v23 = (v23 + a2);
  }

  while (v13 != 256);
  return result;
}

int16x8_t *sub_277298B30(int16x8_t *result, int8x16_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, uint64_t a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, unsigned int a14)
{
  v14 = *(a7 + 48);
  if (v14[89] == 1 || v14[90] == 1)
  {
    if (a6)
    {
      v15 = a8 + 16 * a14;
      v16 = *(v15 + 15) - 4;
      v17 = &v14[96 * v16 + 3 * *(v15 + v16 + 8)];
      a9.i32[0] = v17[92];
      a11.i32[0] = v17[93];
      v18 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v19 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v18);
      v18.i32[0] = v14[86];
      v20 = vqtbl1q_s8(v18, xmmword_2773B3DF0);
      a12.i32[0] = v17[284];
      a13.i32[0] = v17[285];
      v21 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
      v22 = vdupq_n_s32(-v14[84]);
      v23 = 2 * a6;
      if ((2 * a6) <= 1)
      {
        v23 = 1;
      }

      do
      {
        v24 = result[1];
        v25 = vmulq_s16(*result, v19);
        v26 = vuzp2q_s16(vmull_s16(*result->i8, *v19.i8), vmull_high_s16(*result, v19));
        v27 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v20), v22), v21));
        v28 = vmulq_s16(v24, v19);
        v29 = vuzp2q_s16(vmull_s16(*v24.i8, *v19.i8), vmull_high_s16(v24, v19));
        v30 = vqmovun_high_s16(vqmovun_s16(v27), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v29), v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v20), v22), v21)));
        v31 = vzip1q_s8(v30, 0);
        v32 = vzip2q_s8(v30, 0);
        if (a4)
        {
          v33 = *a5;
          v34 = a5[1];
          a5 += 2;
          v31 = vaddq_s16(v33, v31);
          v32 = vaddq_s16(v34, v32);
        }

        *a2 = vqmovun_high_s16(vqmovun_s16(v31), v32);
        a2 = (a2 + a3);
        result += 2;
        --v23;
      }

      while (v23);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v36 = *result;
      v35 = result[1];
      v38 = result[2];
      v37 = result[3];
      if (a4)
      {
        v39 = *a5;
        v40 = a5[1];
        v41 = a5[2];
        v42 = a5[3];
        a5 += 4;
        v36 = vaddq_s16(v39, v36);
        v35 = vaddq_s16(v40, v35);
        v38 = vaddq_s16(v41, v38);
        v37 = vaddq_s16(v42, v37);
      }

      *a2 = vqmovun_high_s16(vqmovun_s16(v36), v35);
      *(a2 + a3) = vqmovun_high_s16(vqmovun_s16(v38), v37);
      a2 = (a2 + 2 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

int16x8_t *sub_277298CEC(int16x8_t *result, int8x8_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, unsigned int a12)
{
  v12 = *(a7 + 48);
  if (v12[89] == 1 || v12[90] == 1)
  {
    if (a6)
    {
      v13 = a8 + 16 * a12;
      v14 = *(v13 + 15) - 4;
      LODWORD(v13) = *(v13 + v14 + 8);
      a9.i32[0] = v12[85];
      v15 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      a10.i32[0] = v12[96 * v14 + 283 + 3 * v13];
      v16 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
      a11.i32[0] = v12[96 * v14 + 91 + 3 * v13];
      v17 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v18 = vdupq_n_s32(-v12[83]);
      v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
      if ((2 * a6) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2 * a6;
      }

      do
      {
        v21 = result[1];
        v22 = vmulq_s16(*result, v19);
        v23 = vuzp2q_s16(vmull_s16(*result->i8, *v19.i8), vmull_high_s16(*result, v19));
        v24 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v22, v23), v15), v18), v16)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v22, v23), v15), v18), v16));
        v25 = vmulq_s16(v21, v19);
        v26 = vuzp2q_s16(vmull_s16(*v21.i8, *v19.i8), vmull_high_s16(v21, v19));
        v27 = vqmovun_high_s16(vqmovun_s16(v24), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v15), v18), v16)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v15), v18), v16)));
        v28 = vzip1q_s8(v27, 0);
        v29 = vzip2q_s8(v27, 0);
        if (a4)
        {
          v30 = *a5;
          v31 = a5[2];
          a5 += 4;
          v28 = vaddq_s16(v30, v28);
          v29 = vaddq_s16(v31, v29);
        }

        *a2 = vqmovun_s16(v28);
        *(a2 + a3) = vqmovun_s16(v29);
        a2 = (a2 + 2 * a3);
        result += 2;
        --v20;
      }

      while (v20);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v32 = *result;
      v33 = result[1];
      v35 = result[2];
      v34 = result[3];
      if (a4)
      {
        v36 = *a5;
        v37 = a5[2];
        v38 = a5[4];
        v39 = a5[6];
        a5 += 8;
        v32 = vaddq_s16(v36, v32);
        v33 = vaddq_s16(v37, v33);
        v35 = vaddq_s16(v38, v35);
        v34 = vaddq_s16(v39, v34);
      }

      *a2 = vqmovun_s16(v32);
      *(a2 + a3) = vqmovun_s16(v33);
      *(a2 + 2 * a3) = vqmovun_s16(v35);
      *(a2 + 3 * a3) = vqmovun_s16(v34);
      a2 = (a2 + 4 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

int16x8_t *sub_277298EC8(int16x8_t *result, int8x8_t *a2, int a3, uint64_t a4, int16x8_t *a5, int a6, uint64_t a7, uint64_t a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, unsigned int a14)
{
  v14 = *(a7 + 48);
  if (v14[89] == 1 || v14[90] == 1)
  {
    if (a6)
    {
      v15 = a8 + 16 * a14;
      v16 = *(v15 + 15) - 4;
      v17 = &v14[96 * v16 + 3 * *(v15 + v16 + 8)];
      a9.i32[0] = v17[92];
      a11.i32[0] = v17[93];
      v18 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
      v19 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v18);
      v18.i32[0] = v14[86];
      v20 = vqtbl1q_s8(v18, xmmword_2773B3DF0);
      a12.i32[0] = v17[284];
      a13.i32[0] = v17[285];
      v21 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
      v22 = vdupq_n_s32(-v14[84]);
      v23 = 2 * a6;
      if ((2 * a6) <= 1)
      {
        v23 = 1;
      }

      do
      {
        v24 = result[1];
        v25 = vmulq_s16(*result, v19);
        v26 = vuzp2q_s16(vmull_s16(*result->i8, *v19.i8), vmull_high_s16(*result, v19));
        v27 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v25, v26), v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v25, v26), v20), v22), v21));
        v28 = vmulq_s16(v24, v19);
        v29 = vuzp2q_s16(vmull_s16(*v24.i8, *v19.i8), vmull_high_s16(v24, v19));
        v30 = vqmovun_high_s16(vqmovun_s16(v27), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v28, v29), v20), v22), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v28, v29), v20), v22), v21)));
        v31 = vzip1q_s8(v30, 0);
        v32 = vzip2q_s8(v30, 0);
        if (a4)
        {
          v33 = *a5;
          v34 = a5[2];
          a5 += 4;
          v31 = vaddq_s16(v33, v31);
          v32 = vaddq_s16(v34, v32);
        }

        *a2 = vqmovun_s16(v31);
        *(a2 + a3) = vqmovun_s16(v32);
        a2 = (a2 + 2 * a3);
        result += 2;
        --v23;
      }

      while (v23);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      v35 = *result;
      v36 = result[1];
      v38 = result[2];
      v37 = result[3];
      if (a4)
      {
        v39 = *a5;
        v40 = a5[2];
        v41 = a5[4];
        v42 = a5[6];
        a5 += 8;
        v35 = vaddq_s16(v39, v35);
        v36 = vaddq_s16(v40, v36);
        v38 = vaddq_s16(v41, v38);
        v37 = vaddq_s16(v42, v37);
      }

      *a2 = vqmovun_s16(v35);
      *(a2 + a3) = vqmovun_s16(v36);
      *(a2 + 2 * a3) = vqmovun_s16(v38);
      *(a2 + 3 * a3) = vqmovun_s16(v37);
      a2 = (a2 + 4 * a3);
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

int8x8_t sub_2772990A8(int16x8_t *a1, int8x8_t *a2, int a3, uint64_t a4, int16x8_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v13 = *(a6 + 48);
  if (v13[89] != 1 && v13[90] != 1)
  {
    v32 = *a1;
    v33 = a1[1];
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = a7 + 16 * a8;
  v15 = *(v14 + 15) - 4;
  v16 = &v13[96 * v15 + 3 * *(v14 + v15 + 8)];
  a9.i32[0] = v16[92];
  a11.i32[0] = v16[93];
  v17 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
  v18 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v17);
  v17.i32[0] = v13[86];
  v19 = vqtbl1q_s8(v17, xmmword_2773B3DF0);
  a12.i32[0] = v16[284];
  a13.i32[0] = v16[285];
  v20 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
  v21 = a1[1];
  v22 = vmulq_s16(*a1, v18);
  v23 = vuzp2q_s16(vmull_s16(*a1->i8, *v18.i8), vmull_high_s16(*a1, v18));
  v24 = vzip1q_s16(v22, v23);
  v25 = vzip2q_s16(v22, v23);
  v26 = vaddq_s32(v24, v19);
  v27 = vdupq_n_s32(-v13[84]);
  v28 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v26, v27), v20)), vaddq_s32(vshlq_s32(vaddq_s32(v25, v19), v27), v20));
  v29 = vmulq_s16(v21, v18);
  v30 = vuzp2q_s16(vmull_s16(*v21.i8, *v18.i8), vmull_high_s16(v21, v18));
  v31 = vqmovun_high_s16(vqmovun_s16(v28), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v29, v30), v19), v27), v20)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v19), v27), v20)));
  v32 = vzip1q_s8(v31, 0);
  v33 = vzip2q_s8(v31, 0);
  if (a4)
  {
LABEL_4:
    v32 = vaddq_s16(*a5, v32);
    v33 = vaddq_s16(a5[2], v33);
  }

LABEL_5:
  result = vqmovun_s16(v32);
  *a2 = result;
  *(a2 + a3) = vqmovun_s16(v33);
  return result;
}

int16x4_t *sub_2772991F0(int16x4_t *result, _DWORD *a2, int a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int16x8_t a12, int16x8_t a13, int16x8_t a14, int16x8_t a15, int16x8_t a16, unsigned int a17)
{
  v17 = *(a7 + 48);
  if (v17[89] == 1 || v17[90] == 1)
  {
    if (a6)
    {
      v18 = a8 + 16 * a17;
      v19 = *(v18 + 15) - 4;
      LODWORD(v18) = *(v18 + v19 + 8);
      a9.i32[0] = v17[85];
      v20 = vqtbl1q_s8(a9, xmmword_2773B3DF0);
      a10.i32[0] = v17[96 * v19 + 283 + 3 * v18];
      v21 = vqtbl1q_s8(a10, xmmword_2773B3DF0);
      a12.i32[0] = v17[96 * v19 + 91 + 3 * v18];
      v22 = vqtbl1q_s8(vqtbl1q_s8(a12, xmmword_2773B3DC0), xmmword_2773B3DF0);
      v23 = vdupq_n_s32(-v17[83]);
      if ((2 * a6) <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2 * a6;
      }

      v25 = vmull_s16(0, *&vextq_s8(v22, v22, 8uLL));
      do
      {
        *a15.i8 = *result;
        *a16.i8 = result[1];
        v26 = vmulq_s16(a15, v22);
        v27 = vuzp2q_s16(vmull_s16(*result, *v22.i8), v25);
        v28 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v26, v27), v20), v23), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v26, v27), v20), v23), v21));
        v29 = vmulq_s16(a16, v22);
        v30 = vuzp2q_s16(vmull_s16(*a16.i8, *v22.i8), v25);
        v31 = vzip1q_s16(v29, v30);
        v32 = vqmovun_high_s16(vqmovun_s16(v28), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(v31, v20), v23), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v29, v30), v20), v23), v21)));
        a16 = vzip1q_s8(v32, 0);
        a15 = vzip2q_s8(v32, 0);
        if (a4)
        {
          v28.i64[0] = *a5;
          v31.i64[0] = a5[4];
          a5 += 8;
          a16 = vaddq_s16(v28, a16);
          a15 = vaddq_s16(v31, a15);
        }

        *a2 = vqmovun_s16(a16).u32[0];
        *(a2 + a3) = vqmovun_s16(a15).u32[0];
        a2 = (a2 + 2 * a3);
        result += 2;
        --v24;
      }

      while (v24);
    }
  }

  else if (a6 >= 1)
  {
    do
    {
      *a10.i8 = *result;
      *a11.i8 = result[1];
      *a12.i8 = result[2];
      *a9.i8 = result[3];
      if (a4)
      {
        a13.i64[0] = *a5;
        a14.i64[0] = a5[4];
        a15.i64[0] = a5[8];
        a16.i64[0] = a5[12];
        a5 += 16;
        a10 = vaddq_s16(a13, a10);
        a11 = vaddq_s16(a14, a11);
        a12 = vaddq_s16(a15, a12);
        a9 = vaddq_s16(a16, a9);
      }

      *a2 = vqmovun_s16(a10).u32[0];
      *(a2 + a3) = vqmovun_s16(a11).u32[0];
      *(a2 + 2 * a3) = vqmovun_s16(a12).u32[0];
      *(a2 + 3 * a3) = vqmovun_s16(a9).u32[0];
      a2 += a3;
      result += 4;
      --a6;
    }

    while (a6);
  }

  return result;
}

double sub_2772993DC(int16x4_t *a1, _DWORD *a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int16x8_t a12, int8x16_t a13, int16x8_t a14, int16x8_t a15, int16x8_t a16)
{
  v16 = *(a6 + 48);
  if (v16[89] == 1 || v16[90] == 1)
  {
    v17 = a7 + 16 * a8;
    v18 = *(v17 + 15) - 4;
    v19 = &v16[96 * v18 + 3 * *(v17 + v18 + 8)];
    a9.i32[0] = v19[92];
    a11.i32[0] = v19[93];
    v20 = vqtbl1q_s8(a11, xmmword_2773B3DC0);
    a9 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2773B3DC0), v20);
    v20.i32[0] = v16[86];
    v21 = vqtbl1q_s8(v20, xmmword_2773B3DF0);
    a12.i32[0] = v19[284];
    a13.i32[0] = v19[285];
    v22 = vzip1q_s32(vqtbl1q_s8(a12, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
    v23 = vdupq_n_s32(-v16[84]);
    v24 = 1;
    v25 = vmull_s16(0, *&vextq_s8(a9, a9, 8uLL));
    do
    {
      v26 = v24;
      *a15.i8 = *a1;
      *a16.i8 = a1[1];
      v27 = vmulq_s16(a9, a15);
      v28 = vuzp2q_s16(vmull_s16(*a1, *a9.i8), v25);
      v29 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v27, v28), v21), v23), v22)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v27, v28), v21), v23), v22));
      v30 = vmulq_s16(a9, a16);
      v31 = vuzp2q_s16(vmull_s16(*a16.i8, *a9.i8), v25);
      v32 = vzip1q_s16(v30, v31);
      v33 = vqmovun_high_s16(vqmovun_s16(v29), vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(v32, v21), v23), v22)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v30, v31), v21), v23), v22)));
      a16 = vzip1q_s8(v33, 0);
      a15 = vzip2q_s8(v33, 0);
      if (a4)
      {
        v29.i64[0] = *a5;
        v32.i64[0] = a5[4];
        a5 += 8;
        a16 = vaddq_s16(v29, a16);
        a15 = vaddq_s16(v32, a15);
      }

      v24 = 0;
      *a2 = vqmovun_s16(a16).u32[0];
      *(a2 + a3) = vqmovun_s16(a15).u32[0];
      a2 = (a2 + 2 * a3);
      a1 += 2;
    }

    while ((v26 & 1) != 0);
  }

  else
  {
    *a11.i8 = *a1;
    *a12.i8 = a1[1];
    *a9.i8 = a1[2];
    *a10.i8 = a1[3];
    if (a4)
    {
      a13.i64[0] = *a5;
      a14.i64[0] = a5[4];
      a15.i64[0] = a5[8];
      a16.i64[0] = a5[12];
      a11 = vaddq_s16(a13, a11);
      a12 = vaddq_s16(a14, a12);
      a9 = vaddq_s16(a15, a9);
      a10 = vaddq_s16(a16, a10);
    }

    *a2 = vqmovun_s16(a11).u32[0];
    *(a2 + a3) = vqmovun_s16(a12).u32[0];
    *a9.i8 = vqmovun_s16(a9);
    *(a2 + 2 * a3) = a9.i32[0];
    *(a2 + 3 * a3) = vqmovun_s16(a10).u32[0];
  }

  return *a9.i64;
}

int8x8_t sub_277299598(int16x4_t *a1, _DWORD *a2, int a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, int16x8_t a9, int16x8_t a10, int16x8_t a11, int8x16_t a12, int8x16_t a13, int16x8_t a14)
{
  v14 = *(a6 + 48);
  if (v14[89] != 1 && v14[90] != 1)
  {
    *a10.i8 = *a1;
    *a9.i8 = a1[1];
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = a7 + 16 * a8;
  v16 = *(v15 + 15) - 4;
  v17 = &v14[96 * v16 + 3 * *(v15 + v16 + 8)];
  a9.i32[0] = v17[92];
  v18 = vqtbl1q_s8(a9, xmmword_2773B3DC0);
  a11.i32[0] = v17[93];
  v19 = vzip1q_s16(v18, vqtbl1q_s8(a11, xmmword_2773B3DC0));
  v18.i32[0] = v14[86];
  v20 = vqtbl1q_s8(v18, xmmword_2773B3DF0);
  v18.i32[0] = v17[284];
  a13.i32[0] = v17[285];
  v21 = vzip1q_s32(vqtbl1q_s8(v18, xmmword_2773B3DF0), vqtbl1q_s8(a13, xmmword_2773B3DF0));
  *a13.i8 = *a1;
  *a14.i8 = a1[1];
  v22 = vmulq_s16(v19, a13);
  v23 = vmull_s16(0, *&vextq_s8(v19, v19, 8uLL));
  v24 = vuzp2q_s16(vmull_s16(*a1, *v19.i8), v23);
  v25 = vzip1q_s16(v22, v24);
  v26 = vzip2q_s16(v22, v24);
  v27 = vaddq_s32(v25, v20);
  v28 = vdupq_n_s32(-v14[84]);
  v29 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(v27, v28), v21)), vaddq_s32(vshlq_s32(vaddq_s32(v26, v20), v28), v21));
  v30 = vmulq_s16(v19, a14);
  v31 = vuzp2q_s16(vmull_s16(*a14.i8, *v19.i8), v23);
  a11 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vshlq_s32(vaddq_s32(vzip1q_s16(v30, v31), v20), v28), v21)), vaddq_s32(vshlq_s32(vaddq_s32(vzip2q_s16(v30, v31), v20), v28), v21));
  a12 = vqmovun_high_s16(vqmovun_s16(v29), a11);
  a10 = vzip1q_s8(a12, 0);
  a9 = vzip2q_s8(a12, 0);
  if (a4)
  {
LABEL_4:
    a11.i64[0] = *a5;
    a12.i64[0] = a5[4];
    a10 = vaddq_s16(a11, a10);
    a9 = vaddq_s16(a12, a9);
  }

LABEL_5:
  result = vqmovun_s16(a9);
  *a2 = vqmovun_s16(a10).u32[0];
  *(a2 + a3) = result.i32[0];
  return result;
}

uint16x8_t *sub_27729AC20(uint16x8_t *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = (a3 - 2 * a4);
    v6 = (v5 + a4);
    v7 = (v6 + a4);
    v8 = (v7 + a4);
    v9 = vzip1q_s8(*(v8 + a4), 0);
    v10 = vzip1q_s8(*v8, 0);
    v11 = vzip1q_s8(*v7, 0);
    v12 = vzip1q_s8(*v6, 0);
    v13 = vzip1q_s8(*v5, 0);
    v14 = (a3 + 5 * a4 - 2 * a4);
    v15.i64[0] = 0x10001000100010;
    v15.i64[1] = 0x10001000100010;
    do
    {
      v16 = v12;
      v12 = v11;
      v11 = v10;
      v10 = v9;
      v9 = vzip1q_s8(*v14, 0);
      v17 = vsubq_s16(vshlq_n_s16(vaddq_s16(v11, v12), 2uLL), vaddq_s16(v10, v16));
      *result = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v13, v17), vshlq_n_s16(v17, 2uLL)), vaddq_s16(v9, v15)), 5uLL))), v12);
      result = (result + a2);
      v14 = (v14 + a4);
      v13 = v16;
      --a5;
    }

    while (a5);
  }

  return result;
}

char *sub_27729ACE8(char *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = (a3 - 2 * a4);
    v6 = (v5 + a4);
    v7 = (v6 + a4);
    v8 = (v7 + a4);
    v9 = 0uLL;
    v10 = vzip1q_s8(*(v8 + a4), 0);
    v11 = vzip1q_s8(*v8, 0);
    v12 = vzip1q_s8(*v7, 0);
    v13 = vzip1q_s8(*v6, 0);
    v14 = vzip1q_s8(*v5, 0);
    v15 = (a3 + 5 * a4 - 2 * a4);
    v16.i64[0] = 0x10001000100010;
    v16.i64[1] = 0x10001000100010;
    do
    {
      v17 = v13;
      v13 = v12;
      v12 = v11;
      v11 = v10;
      v10 = vzip1q_s8(*v15, 0);
      v18 = vsubq_s16(vshlq_n_s16(vaddq_s16(v12, v13), 2uLL), vaddq_s16(v11, v17));
      v19 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v14, v18), vshlq_n_s16(v18, 2uLL)), vaddq_s16(v10, v16)), 5uLL));
      vst2_s8(result, *(&v9 - 8));
      result += a2;
      v15 = (v15 + a4);
      v14 = v17;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint16x8_t *sub_27729ADA4(uint16x8_t *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = (a3 - 2 * a4);
    v6 = (v5 + a4);
    v7 = (v6 + a4);
    v8 = (v7 + a4);
    v9 = vzip1q_s8(*(v8 + a4), 0);
    v10 = vzip1q_s8(*v8, 0);
    v11 = vzip1q_s8(*v7, 0);
    v12 = vzip1q_s8(*v6, 0);
    v13 = vzip1q_s8(*v5, 0);
    v14 = (a3 + 5 * a4 - 2 * a4);
    v15.i64[0] = 0x10001000100010;
    v15.i64[1] = 0x10001000100010;
    do
    {
      v16 = v12;
      v12 = v11;
      v11 = v10;
      v10 = v9;
      v9 = vzip1q_s8(*v14, 0);
      v17 = vsubq_s16(vshlq_n_s16(vaddq_s16(v11, v12), 2uLL), vaddq_s16(v10, v16));
      *result = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(v13, v17), vshlq_n_s16(v17, 2uLL)), vaddq_s16(v9, v15)), 5uLL))), v11);
      result = (result + a2);
      v14 = (v14 + a4);
      v13 = v16;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint16x8_t *sub_27729AE6C(uint16x8_t *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = (a3 - 2);
    v6.i64[0] = 0x10001000100010;
    v6.i64[1] = 0x10001000100010;
    do
    {
      v7 = *v5;
      v5 = (v5 + a4);
      v8 = vzip1q_s8(vextq_s8(v7, 0, 2uLL), 0);
      v9 = vsubq_s16(vshlq_n_s16(vaddq_s16(v8, vzip1q_s8(vextq_s8(v7, 0, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v7, 0, 4uLL), 0), vzip1q_s8(vextq_s8(v7, 0, 1uLL), 0)));
      *result = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v9, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v7, 0), vzip1q_s8(vextq_s8(v7, 0, 5uLL), 0)), v9)), v6), 5uLL))), v8);
      result = (result + a2);
      --a5;
    }

    while (a5);
  }

  return result;
}

char *sub_27729AF04(char *result, uint64_t a2, int a3, int a4, int a5, unsigned int a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = 2 * a3;
  v7 = a2 - 2 * a3 + a6;
  v8 = *(v7 - 2);
  v9 = (v7 - 2 + a3);
  v10 = *v9;
  v50 = v8;
  v51 = *v9;
  v11 = (v9 + a3);
  v12 = *v11;
  v13 = (v11 + a3);
  v52 = v12;
  v53 = *v13;
  v54 = *(v13 + a3);
  if (a4 >= 1)
  {
    v14 = vzip1q_s8(*(v13 + a3), 0);
    v15 = vzip1q_s8(*v13, 0);
    v16 = vzip1q_s8(v12, 0);
    v17 = vzip1q_s8(v10, 0);
    v18 = vzip1q_s8(v8, 0);
    v19 = a4;
    v20 = v55;
    v21 = (5 * a3 + a6 - v6 + a2 - 2);
    v22 = v56;
    v23.i64[0] = 0x10001000100010;
    v23.i64[1] = 0x10001000100010;
    v24 = a4;
    do
    {
      v25 = *v21;
      *v20++ = *v21;
      v26 = vsubq_s16(vshlq_n_s16(vaddq_s16(v16, v15), 2uLL), vaddq_s16(v17, v14));
      v27 = vaddq_s16(v18, v26);
      v18 = v17;
      v17 = v16;
      v16 = v15;
      v15 = v14;
      v14 = vzip1q_s8(v25, 0);
      v28 = vshrq_n_s16(vaddq_s16(vaddq_s16(v27, vshlq_n_s16(v26, 2uLL)), vaddq_s16(v14, v23)), 5uLL);
      *v22++ = vqmovun_high_s16(vqmovun_s16(v28), v28);
      v21 = (v21 + a3);
      --v24;
    }

    while (v24);
    v29 = v50;
    v30 = v51;
    v31 = v52;
    v32 = v53;
    v33 = v55;
    v34 = v54;
    v35 = (a5 * a3 - v6 + a2 + 6);
    v36 = v56;
    v37 = 0uLL;
    v38.i64[0] = 0x10001000100010;
    v38.i64[1] = 0x10001000100010;
    do
    {
      v39 = *(v35 - 8);
      v40 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v39, v31, 2uLL), 0), vzip1q_s8(vextq_s8(v39, v31, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v39, v31, 4uLL), 0), vzip1q_s8(vextq_s8(v39, v31, 1uLL), 0)));
      v41 = *v36++;
      v42 = vrhadd_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v40, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v39, 0), vzip1q_s8(vextq_s8(v39, v31, 5uLL), 0)), v40)), v38), 5uLL)), *&v41);
      v43 = vzip2q_s8(v29, 0);
      v44 = vzip2q_s8(v30, 0);
      v29 = v30;
      v30 = v31;
      v31 = v32;
      v45 = result;
      vst2_s8(v45, *(&v37 - 8));
      v45 += 16;
      v32 = v34;
      v46 = vzip2q_s8(v34, 0);
      v47 = *v33++;
      v34 = v47;
      v48 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip2q_s8(v31, 0), vzip2q_s8(v30, 0)), 2uLL), vaddq_s16(v46, v44));
      v49 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(*v35, v31, 2uLL), 0), vzip1q_s8(vextq_s8(*v35, v31, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(*v35, v31, 4uLL), 0), vzip1q_s8(vextq_s8(*v35, v31, 1uLL), 0)));
      *v43.i8 = vrhadd_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v49, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(*v35, 0), vzip1q_s8(vextq_s8(*v35, v31, 5uLL), 0)), v49)), v38), 5uLL)), vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v43, vzip2q_s8(v47, 0)), v48), vshlq_n_s16(v48, 2uLL)), v38), 5uLL)));
      v48.i64[0] = 0;
      vst2_s8(v45, v43);
      result += 32;
      v35 = (v35 + a3);
      --v19;
    }

    while (v19);
  }

  return result;
}

void sub_27729B1B0(char *a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = (a3 - 2 - 2 * a4);
  v5 = *v4;
  v6 = (v4 + a4);
  v7 = *v6;
  v8 = (v6 + a4);
  v9 = *v8;
  v10 = (v8 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = *(v12 + a4);
  v14 = 0uLL;
  v15 = vzip1q_s8(v5, 0);
  v16 = vzip1q_s8(v7, 0);
  v17 = vzip1q_s8(v9, 0);
  v18 = vzip1q_s8(v11, 0);
  v19 = vzip1q_s8(*v12, 0);
  v20 = vzip1q_s8(v13, 0);
  v21 = vzip2q_s8(v5, 0);
  v22 = vzip2q_s8(v7, 0);
  v23 = vzip2q_s8(v9, 0);
  v24 = vzip2q_s8(v11, 0);
  v25 = vzip2q_s8(*v12, 0);
  v26 = vzip2q_s8(v13, 0);
  v27 = (a3 - 2 + 6 * a4 - 2 * a4);
  v28 = 15;
  v29.i64[0] = 0x14001400140014;
  v29.i64[1] = 0x14001400140014;
  v30.i64[0] = 0x4000400040004;
  v30.i64[1] = 0x4000400040004;
  v31.i64[0] = 0x10001000100010;
  v31.i64[1] = 0x10001000100010;
  v32.i64[0] = 0x20000000200;
  v32.i64[1] = 0x20000000200;
  do
  {
    v33 = v26;
    v34 = v25;
    v35 = v24;
    v36 = v23;
    v37 = v22;
    v38 = v20;
    v39 = v19;
    v40 = v18;
    v41 = v17;
    v42 = v16;
    v43 = vmlaq_s16(vmlaq_s16(vaddq_s16(v15, v20), vaddq_s16(v17, v18), v29), vaddq_s16(v16, v19), v30);
    v44 = vmlaq_s16(vmlaq_s16(vaddq_s16(v21, v26), vaddq_s16(v23, v24), v29), vaddq_s16(v22, v25), v30);
    v45 = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v43, v31), 5uLL)), vshrq_n_s16(vaddq_s16(v44, v31), 5uLL)), 0, 2uLL).u64[0];
    v46 = vextq_s8(v43, v44, 6uLL);
    v47 = vextq_s8(v43, v44, 0xAuLL);
    v48 = vextq_s8(v46, 0, 2uLL);
    v49 = vextq_s8(v47, 0, 2uLL);
    v50 = vextq_s8(v47, 0, 4uLL);
    v51 = vpaddq_s32(vmull_s16(*v43.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v43, v43, 8uLL), 131067));
    v52 = vextq_s8(v43, 0, 2uLL);
    v53 = vpaddq_s32(vmull_s16(*v52.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v52, v52, 8uLL), 131067));
    v54 = vextq_s8(v43, 0, 4uLL);
    v55 = vpaddq_s32(vmull_s16(*v54.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 131067));
    v56 = vpaddq_s32(vmull_s16(*v46.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 131067));
    v57 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 131067));
    v58 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
    v59 = vpaddq_s32(vmull_s16(*v49.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
    v60 = vpaddq_s32(vmull_s16(*v50.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 131067));
    v61 = vzip1q_s32(v51, v55);
    v62 = vzip2q_s32(v51, v55);
    v63 = vzip1q_s32(v53, v56);
    v64 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v61, v63), vzip1q_s32(v61, v63)), vaddq_s32(vzip1q_s32(v62, vzip2q_s32(v53, v56)), v32)), 0xAuLL);
    v65 = vzip1q_s32(v57, v59);
    v66 = vzip2q_s32(v57, v59);
    v67 = vzip1q_s32(v58, v60);
    v68 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v64), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v65, v67), vzip1q_s32(v65, v67)), vaddq_s32(vzip1q_s32(v66, vzip2q_s32(v58, v60)), v32)), 0xAuLL))), v45);
    vst2_s8(a1, *(&v14 - 8));
    a1 += a2;
    v69 = *v27;
    v27 = (v27 + a4);
    v15 = v42;
    v16 = v41;
    v17 = v40;
    v20 = vzip1q_s8(v69, 0);
    v18 = v39;
    v19 = v38;
    v21 = v37;
    v22 = v36;
    v26 = vzip2q_s8(v69, 0);
    v23 = v24;
    v24 = v25;
    v25 = v33;
    --v28;
  }

  while (v28);
  v70.i64[0] = 0x14001400140014;
  v70.i64[1] = 0x14001400140014;
  v71.i64[0] = 0x4000400040004;
  v71.i64[1] = 0x4000400040004;
  v72 = vmlaq_s16(vmlaq_s16(vaddq_s16(v42, v20), vaddq_s16(v40, v39), v70), vaddq_s16(v41, v38), v71);
  v73 = vmlaq_s16(vmlaq_s16(vaddq_s16(v37, v26), vaddq_s16(v35, v34), v70), vaddq_s16(v36, v33), v71);
  v74.i64[0] = 0x10001000100010;
  v74.i64[1] = 0x10001000100010;
  v74.i64[0] = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v72, v74), 5uLL)), vshrq_n_s16(vaddq_s16(v73, v74), 5uLL)), 0, 2uLL).u64[0];
  v75 = vextq_s8(v72, v73, 6uLL);
  v76 = vextq_s8(v72, v73, 0xAuLL);
  v77 = vextq_s8(v75, 0, 2uLL);
  v78 = vextq_s8(v76, 0, 2uLL);
  v79 = vextq_s8(v76, 0, 4uLL);
  v80 = vpaddq_s32(vmull_s16(*v72.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v72, v72, 8uLL), 131067));
  v81 = vextq_s8(v72, 0, 2uLL);
  v82 = vpaddq_s32(vmull_s16(*v81.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v81, v81, 8uLL), 131067));
  v83 = vextq_s8(v72, 0, 4uLL);
  v84 = vpaddq_s32(vmull_s16(*v83.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v83, v83, 8uLL), 131067));
  v85 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v86 = vpaddq_s32(vmull_s16(*v77.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 131067));
  v87 = vpaddq_s32(vmull_s16(*v76.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 131067));
  v88 = vpaddq_s32(vmull_s16(*v78.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 131067));
  v89 = vpaddq_s32(vmull_s16(*v79.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v79, v79, 8uLL), 131067));
  v90 = vzip1q_s32(v80, v84);
  v91 = vzip1q_s32(v82, v85);
  v92 = vzip1q_s32(vzip2q_s32(v80, v84), vzip2q_s32(v82, v85));
  v84.i64[0] = 0x20000000200;
  v84.i64[1] = 0x20000000200;
  v93 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v90, v91), vzip1q_s32(v90, v91)), vaddq_s32(v92, v84)), 0xAuLL);
  v94 = vzip1q_s32(v86, v88);
  v95 = vzip2q_s32(v86, v88);
  v96 = vzip1q_s32(v87, v89);
  *v89.i8 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v93), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v94, v96), vzip1q_s32(v94, v96)), vaddq_s32(vzip1q_s32(v95, vzip2q_s32(v87, v89)), v84)), 0xAuLL))), *v74.i8);
  v93.i64[0] = 0;
  vst2_s8(a1, v89);
}

char *sub_27729B588(char *result, unsigned int a2, uint64_t a3, int a4, int a5, int8x16_t a6)
{
  if (a5 >= 1)
  {
    v6 = (a3 - 2);
    v7 = 0uLL;
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    do
    {
      v9 = *v6;
      v6 = (v6 + a4);
      v10 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v9, a6, 2uLL), 0), vzip1q_s8(vextq_s8(v9, a6, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v9, a6, 4uLL), 0), vzip1q_s8(vextq_s8(v9, a6, 1uLL), 0)));
      *a6.i8 = vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v10, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v9, 0), vzip1q_s8(vextq_s8(v9, a6, 5uLL), 0)), v10)), v8), 5uLL));
      vst2_s8(result, a6);
      result += a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

char *sub_27729B614(char *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  v27[37] = *MEMORY[0x277D85DE8];
  if (a5 >= -4)
  {
    v5 = 0;
    v6 = *(a3 - 2 - 2 * a4);
    v7 = (a3 - 2 + a4 - (2 * a4));
    do
    {
      v8 = *v7;
      v9 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v6, 0, 2uLL), 0), vzip1q_s8(vextq_s8(v6, 0, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v6, 0, 1uLL), 0), vzip1q_s8(vextq_s8(v6, 0, 4uLL), 0)));
      v26[v5 / 0x10] = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(vextq_s8(v6, 0, 5uLL), 0), vzip1q_s8(v6, 0)), v9), vshlq_n_s16(v9, 2uLL));
      v5 += 16;
      v7 = (v7 + a4);
      v6 = v8;
    }

    while (16 * ((a5 + 4) & ~((a5 + 4) >> 31)) + 16 != v5);
    if (a5 >= 1)
    {
      v10 = v26[0];
      v11 = v27;
      v12.i64[0] = 0x10001000100010;
      v12.i64[1] = 0x10001000100010;
      v13.i64[0] = 0x200020002000200;
      v13.i64[1] = 0x200020002000200;
      v14 = 0uLL;
      v15 = v27;
      do
      {
        v16 = v11[-2];
        v17 = v11[-1];
        v18 = vqmovun_s16(vshrq_n_s16(vaddq_s16(v17, v12), 5uLL));
        v19 = vaddq_s16(*v11, v17);
        v20 = v15[1];
        ++v15;
        v21 = vaddq_s16(v20, v16);
        v22 = vaddq_s16(vaddq_s16(v10, v13), v11[2]);
        v23 = vsubq_s32(vshrq_n_s32(vzip1q_s16(0, v19), 0xEuLL), vshrq_n_s32(vqtbl1q_s8(v21, xmmword_2773B41A0), 0x10uLL));
        v24 = vsubq_s32(vshrq_n_s32(vzip2q_s16(0, v19), 0xEuLL), vshrq_n_s32(vzip2q_s16(v21, v21), 0x10uLL));
        v25 = vrhadd_u8(v18, vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vsraq_n_s32(vaddq_s32(v23, vshlq_n_s32(v23, 2uLL)), vqtbl1q_s8(v22, xmmword_2773B41A0), 0x10uLL), 0xAuLL)), vshrq_n_s32(vsraq_n_s32(vaddq_s32(v24, vshlq_n_s32(v24, 2uLL)), vzip2q_s16(v22, v22), 0x10uLL), 0xAuLL))));
        vst2_s8(result, *(&v14 - 8));
        result += a2;
        v11 = v15;
        v10 = v16;
        --a5;
      }

      while (a5);
    }
  }

  return result;
}

int16x8_t *sub_27729B7DC(int16x8_t *result, int a2, uint64_t a3, int a4, int a5)
{
  v32[37] = *MEMORY[0x277D85DE8];
  v5 = a4 + 15;
  if (a4 >= 0)
  {
    v5 = a4;
  }

  if (a5 >= -4)
  {
    v6 = v5 >> 4;
    v7 = *(a3 - 2 - 2 * a4);
    v8 = ((a5 + 4) & ~((a5 + 4) >> 31)) + 1;
    v9 = 16 * v6;
    v10 = (a3 - 2 + v9 - 2 * a4);
    v11 = v31;
    v12.i64[0] = 0x4000400040004;
    v12.i64[1] = 0x4000400040004;
    v13.i64[0] = 0x14001400140014;
    v13.i64[1] = 0x14001400140014;
    v14.i64[0] = 0x1010101010101010;
    v14.i64[1] = 0x1010101010101010;
    do
    {
      v15 = vextq_s8(v7, 0, 1uLL);
      v16 = vaddq_s16(vzip1q_s8(v15, 0), vzip1q_s8(vextq_s8(v7, v7, 4uLL), 0));
      v17 = vzip1q_s8(vextq_s8(v7, v7, 5uLL), 0);
      v18 = vzip1q_s8(v7, 0);
      v7 = *v10;
      *v11++ = vaddq_s16(vmlaq_s16(vmlaq_s16(vaddq_s16(v18, v17), v16, v12), vaddq_s16(vzip1q_s8(vextq_s8(v15, *v10, 1uLL), 0), vzip1q_s8(vextq_s8(v15, *v10, 2uLL), 0)), v13), v14);
      v10 = (v10 + v9);
      --v8;
    }

    while (v8);
    if (a5 >= 1)
    {
      v19 = v31[1];
      v20 = v32;
      v21.i64[0] = 0x1000100010001;
      v21.i64[1] = 0x1000100010001;
      v22.i64[0] = 0xFF00FF00FF00FFLL;
      v22.i64[1] = 0xFF00FF00FF00FFLL;
      v23 = v32;
      do
      {
        v24 = v23[1];
        ++v23;
        v25 = vaddq_s16(v24, v19);
        v26 = v20[-1];
        v27 = vaddq_s16(*v20, v26);
        v28 = vzip1q_s16(v27, v25);
        v29 = vzip2q_s16(v27, v25);
        v30 = vaddq_s16(v20[2], v20[-3]);
        *result = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v28.i8, 0xFFFB0014FFFB0014), vmull_s16(*&vextq_s8(v28, v28, 8uLL), 0xFFFB0014FFFB0014)), vzip1q_s16(v30, v21)), 0xAuLL)), vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v29.i8, 0xFFFB0014FFFB0014), vmull_s16(*&vextq_s8(v29, v29, 8uLL), 0xFFFB0014FFFB0014)), vzip2q_s16(v30, v21)), 0xAuLL)), 0), v22);
        result = (result + (a2 & 0xFFFFFFF0));
        v20 = v23;
        v19 = v26;
        --a5;
      }

      while (a5);
    }
  }

  return result;
}

char *sub_27729B98C(char *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  v25[37] = *MEMORY[0x277D85DE8];
  if (a5 >= -4)
  {
    v5 = 0;
    v6 = *(a3 - 2 - 2 * a4);
    v7 = (a3 - 2 + a4 - (2 * a4));
    do
    {
      v8 = *v7;
      v9 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v6, 0, 2uLL), 0), vzip1q_s8(vextq_s8(v6, 0, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v6, 0, 1uLL), 0), vzip1q_s8(vextq_s8(v6, 0, 4uLL), 0)));
      v24[v5 / 0x10] = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(vextq_s8(v6, 0, 5uLL), 0), vzip1q_s8(v6, 0)), v9), vshlq_n_s16(v9, 2uLL));
      v5 += 16;
      v7 = (v7 + a4);
      v6 = v8;
    }

    while (16 * ((a5 + 4) & ~((a5 + 4) >> 31)) + 16 != v5);
    if (a5 >= 1)
    {
      v10 = v24[0];
      v11 = v25;
      v12.i64[0] = 0x10001000100010;
      v12.i64[1] = 0x10001000100010;
      v13.i64[0] = 0x200020002000200;
      v13.i64[1] = 0x200020002000200;
      v14 = 0uLL;
      v15 = v25;
      do
      {
        v16 = v11[-2];
        v17 = vaddq_s16(v11[-1], *v11);
        v18 = v15[1];
        ++v15;
        v19 = vaddq_s16(v18, v16);
        v20 = vaddq_s16(vaddq_s16(v10, v13), v11[2]);
        v21 = vsubq_s32(vshrq_n_s32(vzip1q_s16(0, v17), 0xEuLL), vshrq_n_s32(vqtbl1q_s8(v19, xmmword_2773B41A0), 0x10uLL));
        v22 = vsubq_s32(vshrq_n_s32(vzip2q_s16(0, v17), 0xEuLL), vshrq_n_s32(vzip2q_s16(v19, v19), 0x10uLL));
        v23 = vrhadd_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(*v11, v12), 5uLL)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vsraq_n_s32(vaddq_s32(v21, vshlq_n_s32(v21, 2uLL)), vqtbl1q_s8(v20, xmmword_2773B41A0), 0x10uLL), 0xAuLL)), vshrq_n_s32(vsraq_n_s32(vaddq_s32(v22, vshlq_n_s32(v22, 2uLL)), vzip2q_s16(v20, v20), 0x10uLL), 0xAuLL))));
        vst2_s8(result, *(&v14 - 8));
        result += a2;
        v11 = v15;
        v10 = v16;
        --a5;
      }

      while (a5);
    }
  }

  return result;
}

uint16x8_t *sub_27729BB54(uint16x8_t *result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = (a3 - 2);
    v6.i64[0] = 0x10001000100010;
    v6.i64[1] = 0x10001000100010;
    do
    {
      v7 = *v5;
      v5 = (v5 + a4);
      v8 = vzip1q_s8(vextq_s8(v7, 0, 3uLL), 0);
      v9 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v7, 0, 2uLL), 0), v8), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v7, 0, 4uLL), 0), vzip1q_s8(vextq_s8(v7, 0, 1uLL), 0)));
      *result = vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v9, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v7, 0), vzip1q_s8(vextq_s8(v7, 0, 5uLL), 0)), v9)), v6), 5uLL))), v8);
      result = (result + a2);
      --a5;
    }

    while (a5);
  }

  return result;
}

void sub_27729BBEC(char *a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = (a3 - 2 - 2 * a4);
  v5 = *v4;
  v6 = (v4 + a4);
  v7 = *v6;
  v8 = (v6 + a4);
  v9 = *v8;
  v10 = (v8 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = *(v12 + a4);
  v14 = 0uLL;
  v15 = vzip1q_s8(v5, 0);
  v16 = vzip1q_s8(v7, 0);
  v17 = vzip1q_s8(v9, 0);
  v18 = vzip1q_s8(v11, 0);
  v19 = vzip1q_s8(*v12, 0);
  v20 = vzip1q_s8(v13, 0);
  v21 = vzip2q_s8(v5, 0);
  v22 = vzip2q_s8(v7, 0);
  v23 = vzip2q_s8(v9, 0);
  v24 = vzip2q_s8(v11, 0);
  v25 = vzip2q_s8(*v12, 0);
  v26 = vzip2q_s8(v13, 0);
  v27 = (a3 - 2 + 6 * a4 - 2 * a4);
  v28 = 15;
  v29.i64[0] = 0x14001400140014;
  v29.i64[1] = 0x14001400140014;
  v30.i64[0] = 0x4000400040004;
  v30.i64[1] = 0x4000400040004;
  v31.i64[0] = 0x10001000100010;
  v31.i64[1] = 0x10001000100010;
  v32.i64[0] = 0x20000000200;
  v32.i64[1] = 0x20000000200;
  do
  {
    v33 = v26;
    v34 = v25;
    v35 = v24;
    v36 = v23;
    v37 = v22;
    v38 = v20;
    v39 = v19;
    v40 = v18;
    v41 = v17;
    v42 = v16;
    v43 = vmlaq_s16(vmlaq_s16(vaddq_s16(v15, v20), vaddq_s16(v17, v18), v29), vaddq_s16(v16, v19), v30);
    v44 = vmlaq_s16(vmlaq_s16(vaddq_s16(v21, v26), vaddq_s16(v23, v24), v29), vaddq_s16(v22, v25), v30);
    v45 = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v43, v31), 5uLL)), vshrq_n_s16(vaddq_s16(v44, v31), 5uLL)), 0, 3uLL).u64[0];
    v46 = vextq_s8(v43, v44, 6uLL);
    v47 = vextq_s8(v43, v44, 0xAuLL);
    v48 = vextq_s8(v46, 0, 2uLL);
    v49 = vextq_s8(v47, 0, 2uLL);
    v50 = vextq_s8(v47, 0, 4uLL);
    v51 = vpaddq_s32(vmull_s16(*v43.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v43, v43, 8uLL), 131067));
    v52 = vextq_s8(v43, 0, 2uLL);
    v53 = vpaddq_s32(vmull_s16(*v52.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v52, v52, 8uLL), 131067));
    v54 = vextq_s8(v43, 0, 4uLL);
    v55 = vpaddq_s32(vmull_s16(*v54.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 131067));
    v56 = vpaddq_s32(vmull_s16(*v46.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 131067));
    v57 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 131067));
    v58 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
    v59 = vpaddq_s32(vmull_s16(*v49.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
    v60 = vpaddq_s32(vmull_s16(*v50.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 131067));
    v61 = vzip1q_s32(v51, v55);
    v62 = vzip2q_s32(v51, v55);
    v63 = vzip1q_s32(v53, v56);
    v64 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v61, v63), vzip1q_s32(v61, v63)), vaddq_s32(vzip1q_s32(v62, vzip2q_s32(v53, v56)), v32)), 0xAuLL);
    v65 = vzip1q_s32(v57, v59);
    v66 = vzip2q_s32(v57, v59);
    v67 = vzip1q_s32(v58, v60);
    v68 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v64), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v65, v67), vzip1q_s32(v65, v67)), vaddq_s32(vzip1q_s32(v66, vzip2q_s32(v58, v60)), v32)), 0xAuLL))), v45);
    vst2_s8(a1, *(&v14 - 8));
    a1 += a2;
    v69 = *v27;
    v27 = (v27 + a4);
    v15 = v42;
    v16 = v41;
    v17 = v40;
    v20 = vzip1q_s8(v69, 0);
    v18 = v39;
    v19 = v38;
    v21 = v37;
    v22 = v36;
    v26 = vzip2q_s8(v69, 0);
    v23 = v24;
    v24 = v25;
    v25 = v33;
    --v28;
  }

  while (v28);
  v70.i64[0] = 0x14001400140014;
  v70.i64[1] = 0x14001400140014;
  v71.i64[0] = 0x4000400040004;
  v71.i64[1] = 0x4000400040004;
  v72 = vmlaq_s16(vmlaq_s16(vaddq_s16(v42, v20), vaddq_s16(v40, v39), v70), vaddq_s16(v41, v38), v71);
  v73 = vmlaq_s16(vmlaq_s16(vaddq_s16(v37, v26), vaddq_s16(v35, v34), v70), vaddq_s16(v36, v33), v71);
  v74.i64[0] = 0x10001000100010;
  v74.i64[1] = 0x10001000100010;
  v74.i64[0] = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v72, v74), 5uLL)), vshrq_n_s16(vaddq_s16(v73, v74), 5uLL)), 0, 3uLL).u64[0];
  v75 = vextq_s8(v72, v73, 6uLL);
  v76 = vextq_s8(v72, v73, 0xAuLL);
  v77 = vextq_s8(v75, 0, 2uLL);
  v78 = vextq_s8(v76, 0, 2uLL);
  v79 = vextq_s8(v76, 0, 4uLL);
  v80 = vpaddq_s32(vmull_s16(*v72.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v72, v72, 8uLL), 131067));
  v81 = vextq_s8(v72, 0, 2uLL);
  v82 = vpaddq_s32(vmull_s16(*v81.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v81, v81, 8uLL), 131067));
  v83 = vextq_s8(v72, 0, 4uLL);
  v84 = vpaddq_s32(vmull_s16(*v83.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v83, v83, 8uLL), 131067));
  v85 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v86 = vpaddq_s32(vmull_s16(*v77.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 131067));
  v87 = vpaddq_s32(vmull_s16(*v76.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 131067));
  v88 = vpaddq_s32(vmull_s16(*v78.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 131067));
  v89 = vpaddq_s32(vmull_s16(*v79.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v79, v79, 8uLL), 131067));
  v90 = vzip1q_s32(v80, v84);
  v91 = vzip1q_s32(v82, v85);
  v92 = vzip1q_s32(vzip2q_s32(v80, v84), vzip2q_s32(v82, v85));
  v84.i64[0] = 0x20000000200;
  v84.i64[1] = 0x20000000200;
  v93 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v90, v91), vzip1q_s32(v90, v91)), vaddq_s32(v92, v84)), 0xAuLL);
  v94 = vzip1q_s32(v86, v88);
  v95 = vzip2q_s32(v86, v88);
  v96 = vzip1q_s32(v87, v89);
  *v89.i8 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v93), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v94, v96), vzip1q_s32(v94, v96)), vaddq_s32(vzip1q_s32(v95, vzip2q_s32(v87, v89)), v84)), 0xAuLL))), *v74.i8);
  v93.i64[0] = 0;
  vst2_s8(a1, v89);
}

void sub_27729BFC4(char *a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = (a3 - 2 - 2 * a4);
  v5 = *v4;
  v6 = (v4 + a4);
  v7 = *v6;
  v8 = (v6 + a4);
  v9 = *v8;
  v10 = (v8 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = *(v12 + a4);
  v14 = 0uLL;
  v15 = vzip1q_s8(v5, 0);
  v16 = vzip1q_s8(v7, 0);
  v17 = vzip1q_s8(v9, 0);
  v18 = vzip1q_s8(v11, 0);
  v19 = vzip1q_s8(*v12, 0);
  v20 = vzip1q_s8(v13, 0);
  v21 = vzip2q_s8(v5, 0);
  v22 = vzip2q_s8(v7, 0);
  v23 = vzip2q_s8(v9, 0);
  v24 = vzip2q_s8(v11, 0);
  v25 = vzip2q_s8(*v12, 0);
  v26 = vzip2q_s8(v13, 0);
  v27 = (a3 - 2 + 6 * a4 - 2 * a4);
  v28 = 7;
  v29.i64[0] = 0x14001400140014;
  v29.i64[1] = 0x14001400140014;
  v30.i64[0] = 0x4000400040004;
  v30.i64[1] = 0x4000400040004;
  v31.i64[0] = 0x10001000100010;
  v31.i64[1] = 0x10001000100010;
  v32.i64[0] = 0x20000000200;
  v32.i64[1] = 0x20000000200;
  do
  {
    v33 = v26;
    v34 = v25;
    v35 = v24;
    v36 = v23;
    v37 = v22;
    v38 = v20;
    v39 = v19;
    v40 = v18;
    v41 = v17;
    v42 = v16;
    v43 = vmlaq_s16(vmlaq_s16(vaddq_s16(v15, v20), vaddq_s16(v17, v18), v29), vaddq_s16(v16, v19), v30);
    v44 = vmlaq_s16(vmlaq_s16(vaddq_s16(v21, v26), vaddq_s16(v23, v24), v29), vaddq_s16(v22, v25), v30);
    v45 = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v43, v31), 5uLL)), vshrq_n_s16(vaddq_s16(v44, v31), 5uLL)), 0, 2uLL).u64[0];
    v46 = vextq_s8(v43, v44, 6uLL);
    v47 = vextq_s8(v43, v44, 0xAuLL);
    v48 = vextq_s8(v46, 0, 2uLL);
    v49 = vextq_s8(v47, 0, 2uLL);
    v50 = vextq_s8(v47, 0, 4uLL);
    v51 = vpaddq_s32(vmull_s16(*v43.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v43, v43, 8uLL), 131067));
    v52 = vextq_s8(v43, 0, 2uLL);
    v53 = vpaddq_s32(vmull_s16(*v52.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v52, v52, 8uLL), 131067));
    v54 = vextq_s8(v43, 0, 4uLL);
    v55 = vpaddq_s32(vmull_s16(*v54.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 131067));
    v56 = vpaddq_s32(vmull_s16(*v46.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 131067));
    v57 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 131067));
    v58 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
    v59 = vpaddq_s32(vmull_s16(*v49.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
    v60 = vpaddq_s32(vmull_s16(*v50.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 131067));
    v61 = vzip1q_s32(v51, v55);
    v62 = vzip2q_s32(v51, v55);
    v63 = vzip1q_s32(v53, v56);
    v64 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v61, v63), vzip1q_s32(v61, v63)), vaddq_s32(vzip1q_s32(v62, vzip2q_s32(v53, v56)), v32)), 0xAuLL);
    v65 = vzip1q_s32(v57, v59);
    v66 = vzip2q_s32(v57, v59);
    v67 = vzip1q_s32(v58, v60);
    v68 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v64), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v65, v67), vzip1q_s32(v65, v67)), vaddq_s32(vzip1q_s32(v66, vzip2q_s32(v58, v60)), v32)), 0xAuLL))), v45);
    vst2_s8(a1, *(&v14 - 8));
    a1 += a2;
    v69 = *v27;
    v27 = (v27 + a4);
    v15 = v42;
    v16 = v41;
    v17 = v40;
    v20 = vzip1q_s8(v69, 0);
    v18 = v39;
    v19 = v38;
    v21 = v37;
    v22 = v36;
    v26 = vzip2q_s8(v69, 0);
    v23 = v24;
    v24 = v25;
    v25 = v33;
    --v28;
  }

  while (v28);
  v70.i64[0] = 0x14001400140014;
  v70.i64[1] = 0x14001400140014;
  v71.i64[0] = 0x4000400040004;
  v71.i64[1] = 0x4000400040004;
  v72 = vmlaq_s16(vmlaq_s16(vaddq_s16(v42, v20), vaddq_s16(v40, v39), v70), vaddq_s16(v41, v38), v71);
  v73 = vmlaq_s16(vmlaq_s16(vaddq_s16(v37, v26), vaddq_s16(v35, v34), v70), vaddq_s16(v36, v33), v71);
  v74.i64[0] = 0x10001000100010;
  v74.i64[1] = 0x10001000100010;
  v74.i64[0] = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v72, v74), 5uLL)), vshrq_n_s16(vaddq_s16(v73, v74), 5uLL)), 0, 2uLL).u64[0];
  v75 = vextq_s8(v72, v73, 6uLL);
  v76 = vextq_s8(v72, v73, 0xAuLL);
  v77 = vextq_s8(v75, 0, 2uLL);
  v78 = vextq_s8(v76, 0, 2uLL);
  v79 = vextq_s8(v76, 0, 4uLL);
  v80 = vpaddq_s32(vmull_s16(*v72.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v72, v72, 8uLL), 131067));
  v81 = vextq_s8(v72, 0, 2uLL);
  v82 = vpaddq_s32(vmull_s16(*v81.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v81, v81, 8uLL), 131067));
  v83 = vextq_s8(v72, 0, 4uLL);
  v84 = vpaddq_s32(vmull_s16(*v83.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v83, v83, 8uLL), 131067));
  v85 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v86 = vpaddq_s32(vmull_s16(*v77.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 131067));
  v87 = vpaddq_s32(vmull_s16(*v76.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 131067));
  v88 = vpaddq_s32(vmull_s16(*v78.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 131067));
  v89 = vpaddq_s32(vmull_s16(*v79.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v79, v79, 8uLL), 131067));
  v90 = vzip1q_s32(v80, v84);
  v91 = vzip1q_s32(v82, v85);
  v92 = vzip1q_s32(vzip2q_s32(v80, v84), vzip2q_s32(v82, v85));
  v84.i64[0] = 0x20000000200;
  v84.i64[1] = 0x20000000200;
  v93 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v90, v91), vzip1q_s32(v90, v91)), vaddq_s32(v92, v84)), 0xAuLL);
  v94 = vzip1q_s32(v86, v88);
  v95 = vzip2q_s32(v86, v88);
  v96 = vzip1q_s32(v87, v89);
  *v89.i8 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v93), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v94, v96), vzip1q_s32(v94, v96)), vaddq_s32(vzip1q_s32(v95, vzip2q_s32(v87, v89)), v84)), 0xAuLL))), *v74.i8);
  v93.i64[0] = 0;
  vst2_s8(a1, v89);
}

void sub_27729C39C(char *a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = (a3 - 2 - 2 * a4);
  v5 = *v4;
  v6 = (v4 + a4);
  v7 = *v6;
  v8 = (v6 + a4);
  v9 = *v8;
  v10 = (v8 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = *(v12 + a4);
  v14 = 0uLL;
  v15 = vzip1q_s8(v5, 0);
  v16 = vzip1q_s8(v7, 0);
  v17 = vzip1q_s8(v9, 0);
  v18 = vzip1q_s8(v11, 0);
  v19 = vzip1q_s8(*v12, 0);
  v20 = vzip1q_s8(v13, 0);
  v21 = vzip2q_s8(v5, 0);
  v22 = vzip2q_s8(v7, 0);
  v23 = vzip2q_s8(v9, 0);
  v24 = vzip2q_s8(v11, 0);
  v25 = vzip2q_s8(*v12, 0);
  v26 = vzip2q_s8(v13, 0);
  v27 = (a3 - 2 + 6 * a4 - 2 * a4);
  v28 = 7;
  v29.i64[0] = 0x14001400140014;
  v29.i64[1] = 0x14001400140014;
  v30.i64[0] = 0x4000400040004;
  v30.i64[1] = 0x4000400040004;
  v31.i64[0] = 0x10001000100010;
  v31.i64[1] = 0x10001000100010;
  v32.i64[0] = 0x20000000200;
  v32.i64[1] = 0x20000000200;
  do
  {
    v33 = v26;
    v34 = v25;
    v35 = v24;
    v36 = v23;
    v37 = v22;
    v38 = v20;
    v39 = v19;
    v40 = v18;
    v41 = v17;
    v42 = v16;
    v43 = vmlaq_s16(vmlaq_s16(vaddq_s16(v15, v20), vaddq_s16(v17, v18), v29), vaddq_s16(v16, v19), v30);
    v44 = vmlaq_s16(vmlaq_s16(vaddq_s16(v21, v26), vaddq_s16(v23, v24), v29), vaddq_s16(v22, v25), v30);
    v45 = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v43, v31), 5uLL)), vshrq_n_s16(vaddq_s16(v44, v31), 5uLL)), 0, 3uLL).u64[0];
    v46 = vextq_s8(v43, v44, 6uLL);
    v47 = vextq_s8(v43, v44, 0xAuLL);
    v48 = vextq_s8(v46, 0, 2uLL);
    v49 = vextq_s8(v47, 0, 2uLL);
    v50 = vextq_s8(v47, 0, 4uLL);
    v51 = vpaddq_s32(vmull_s16(*v43.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v43, v43, 8uLL), 131067));
    v52 = vextq_s8(v43, 0, 2uLL);
    v53 = vpaddq_s32(vmull_s16(*v52.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v52, v52, 8uLL), 131067));
    v54 = vextq_s8(v43, 0, 4uLL);
    v55 = vpaddq_s32(vmull_s16(*v54.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 131067));
    v56 = vpaddq_s32(vmull_s16(*v46.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 131067));
    v57 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 131067));
    v58 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
    v59 = vpaddq_s32(vmull_s16(*v49.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
    v60 = vpaddq_s32(vmull_s16(*v50.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 131067));
    v61 = vzip1q_s32(v51, v55);
    v62 = vzip2q_s32(v51, v55);
    v63 = vzip1q_s32(v53, v56);
    v64 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v61, v63), vzip1q_s32(v61, v63)), vaddq_s32(vzip1q_s32(v62, vzip2q_s32(v53, v56)), v32)), 0xAuLL);
    v65 = vzip1q_s32(v57, v59);
    v66 = vzip2q_s32(v57, v59);
    v67 = vzip1q_s32(v58, v60);
    v68 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v64), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v65, v67), vzip1q_s32(v65, v67)), vaddq_s32(vzip1q_s32(v66, vzip2q_s32(v58, v60)), v32)), 0xAuLL))), v45);
    vst2_s8(a1, *(&v14 - 8));
    a1 += a2;
    v69 = *v27;
    v27 = (v27 + a4);
    v15 = v42;
    v16 = v41;
    v17 = v40;
    v20 = vzip1q_s8(v69, 0);
    v18 = v39;
    v19 = v38;
    v21 = v37;
    v22 = v36;
    v26 = vzip2q_s8(v69, 0);
    v23 = v24;
    v24 = v25;
    v25 = v33;
    --v28;
  }

  while (v28);
  v70.i64[0] = 0x14001400140014;
  v70.i64[1] = 0x14001400140014;
  v71.i64[0] = 0x4000400040004;
  v71.i64[1] = 0x4000400040004;
  v72 = vmlaq_s16(vmlaq_s16(vaddq_s16(v42, v20), vaddq_s16(v40, v39), v70), vaddq_s16(v41, v38), v71);
  v73 = vmlaq_s16(vmlaq_s16(vaddq_s16(v37, v26), vaddq_s16(v35, v34), v70), vaddq_s16(v36, v33), v71);
  v74.i64[0] = 0x10001000100010;
  v74.i64[1] = 0x10001000100010;
  v74.i64[0] = vextq_s8(vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v72, v74), 5uLL)), vshrq_n_s16(vaddq_s16(v73, v74), 5uLL)), 0, 3uLL).u64[0];
  v75 = vextq_s8(v72, v73, 6uLL);
  v76 = vextq_s8(v72, v73, 0xAuLL);
  v77 = vextq_s8(v75, 0, 2uLL);
  v78 = vextq_s8(v76, 0, 2uLL);
  v79 = vextq_s8(v76, 0, 4uLL);
  v80 = vpaddq_s32(vmull_s16(*v72.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v72, v72, 8uLL), 131067));
  v81 = vextq_s8(v72, 0, 2uLL);
  v82 = vpaddq_s32(vmull_s16(*v81.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v81, v81, 8uLL), 131067));
  v83 = vextq_s8(v72, 0, 4uLL);
  v84 = vpaddq_s32(vmull_s16(*v83.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v83, v83, 8uLL), 131067));
  v85 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v86 = vpaddq_s32(vmull_s16(*v77.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 131067));
  v87 = vpaddq_s32(vmull_s16(*v76.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 131067));
  v88 = vpaddq_s32(vmull_s16(*v78.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 131067));
  v89 = vpaddq_s32(vmull_s16(*v79.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v79, v79, 8uLL), 131067));
  v90 = vzip1q_s32(v80, v84);
  v91 = vzip1q_s32(v82, v85);
  v92 = vzip1q_s32(vzip2q_s32(v80, v84), vzip2q_s32(v82, v85));
  v84.i64[0] = 0x20000000200;
  v84.i64[1] = 0x20000000200;
  v93 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v90, v91), vzip1q_s32(v90, v91)), vaddq_s32(v92, v84)), 0xAuLL);
  v94 = vzip1q_s32(v86, v88);
  v95 = vzip2q_s32(v86, v88);
  v96 = vzip1q_s32(v87, v89);
  *v89.i8 = vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v93), vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v94, v96), vzip1q_s32(v94, v96)), vaddq_s32(vzip1q_s32(v95, vzip2q_s32(v87, v89)), v84)), 0xAuLL))), *v74.i8);
  v93.i64[0] = 0;
  vst2_s8(a1, v89);
}

char *sub_27729C774(char *result, uint64_t a2, int a3, int a4, int a5, unsigned int a6)
{
  v32[33] = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v6 = a2 - 2 * a3 - 2;
    v7 = (v6 + a5 * a3);
    v8 = (v6 + a6);
    v9 = (v8 + a3);
    v10 = (v9 + a3);
    v11 = (v10 + a3);
    v12 = 0uLL;
    v13 = vzip1q_s8(*(v11 + a3), 0);
    v14 = vzip1q_s8(*v11, 0);
    v15 = vzip1q_s8(*v10, 0);
    v16 = vzip1q_s8(*v9, 0);
    v17 = vzip1q_s8(*v8, 0);
    v18 = a4;
    v19 = (5 * a3 + a6 - 2 * a3 + a2 - 2);
    v20 = v32;
    v21.i64[0] = 0x10001000100010;
    v21.i64[1] = 0x10001000100010;
    v22 = a4;
    do
    {
      v23 = vsubq_s16(vshlq_n_s16(vaddq_s16(v15, v14), 2uLL), vaddq_s16(v16, v13));
      v24 = vaddq_s16(v17, v23);
      v17 = v16;
      v16 = v15;
      v15 = v14;
      v14 = v13;
      v13 = vzip1q_s8(*v19, 0);
      v25 = vshrq_n_s16(vaddq_s16(vaddq_s16(v24, vshlq_n_s16(v23, 2uLL)), vaddq_s16(v13, v21)), 5uLL);
      *v20++ = vqmovun_high_s16(vqmovun_s16(v25), v25);
      v19 = (v19 + a3);
      --v22;
    }

    while (v22);
    v26 = v32;
    v27 = 0uLL;
    v28.i64[0] = 0x10001000100010;
    v28.i64[1] = 0x10001000100010;
    do
    {
      v29 = *v7;
      v7 = (v7 + a3);
      v30 = vsubq_s16(vshlq_n_s16(vaddq_s16(vzip1q_s8(vextq_s8(v29, v12, 2uLL), 0), vzip1q_s8(vextq_s8(v29, v12, 3uLL), 0)), 2uLL), vaddq_s16(vzip1q_s8(vextq_s8(v29, v12, 4uLL), 0), vzip1q_s8(vextq_s8(v29, v12, 1uLL), 0)));
      v31 = *v26++;
      *v12.i8 = vrhadd_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(v30, 2uLL), vaddq_s16(vaddq_s16(vzip1q_s8(v29, 0), vzip1q_s8(vextq_s8(v29, v12, 5uLL), 0)), v30)), v28), 5uLL)), *&v31);
      vst2_s8(result, v12);
      result += 16;
      --v18;
    }

    while (v18);
  }

  return result;
}

int16x8_t sub_27729C91C(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v5 = *(a3 - 2);
  v4 = a3 - 2;
  v6 = *(v4 + a4);
  v7 = *(v4 + 2 * a4);
  v8 = *(v4 + 3 * a4);
  v9 = vzip1q_s8(v5, 0);
  v10 = vdupq_laneq_s8(v5, 8);
  v11 = vzip1q_s8(v6, 0);
  v12 = vdupq_laneq_s8(v6, 8);
  v13 = vzip1q_s8(v7, 0);
  v14 = vdupq_laneq_s8(v7, 8);
  v15 = vzip1q_s8(v8, 0);
  v16 = vdupq_laneq_s8(v8, 8);
  v17 = vzip1q_s8(v9, 0);
  v18 = vzip2q_s8(v9, 0);
  v10.i8[1] = 0;
  v19 = vzip1q_s8(v11, 0);
  v12.i8[1] = 0;
  v20 = vzip2q_s8(v11, 0);
  v21 = vzip1q_s8(v13, 0);
  v22 = vzip2q_s8(v13, 0);
  v14.i8[1] = 0;
  v23 = vzip1q_s8(v15, 0);
  v24 = vzip2q_s8(v15, 0);
  v16.i8[1] = 0;
  v25 = vzip1q_s8(v17, v21);
  v26 = vzip2q_s8(v17, v21);
  v27 = vzip1q_s8(v18, v22);
  v28 = vzip2q_s8(v18, v22);
  v29 = vzip1q_s8(v10, v14);
  v30 = vzip1q_s8(v19, v23);
  v31 = vzip2q_s8(v19, v23);
  v32 = vzip1q_s8(v20, v24);
  v33 = vzip2q_s8(v20, v24);
  v34 = vzip1q_s8(v26, v31);
  v35 = vzip2q_s8(v26, v31);
  v36 = vzip1q_s8(v27, v32);
  v37 = vzip2q_s8(v27, v32);
  v38 = vzip1q_s8(v28, v33);
  v39 = vzip2q_s8(v28, v33);
  v40 = vzip1q_s8(v29, vzip1q_s8(v12, v16));
  v41 = vzip1q_s8(vzip1q_s8(v25, v30), 0);
  v42 = vzip1q_s8(vzip2q_s8(v25, v30), 0);
  v43 = vzip1q_s8(v34, 0);
  v44 = vzip1q_s8(v35, 0);
  v45 = vzip1q_s8(v36, 0);
  v46 = vzip1q_s8(v37, 0);
  v47 = vzip1q_s8(v38, 0);
  v48 = vzip1q_s8(v39, 0);
  v49.i64[0] = 0x4000400040004;
  v49.i64[1] = 0x4000400040004;
  *v38.i8 = vmovn_s16(v45);
  v50 = vmulq_s16(v45, v49);
  v51 = vmovn_s16(v46);
  v52.i64[0] = 0x10001000100010;
  v52.i64[1] = 0x10001000100010;
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vmlal_u8(v53, vmovn_s16(v44), 0x1414141414141414);
  v55 = vzip1q_s16(vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v54, vaddq_s16(v41, v46)), v42, v49), vmovn_s16(v43), 0x1414141414141414), v50), 5uLL))), v43), vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v43, *v38.i8, 0x1414141414141414), v48), v51, 0x1414141414141414), vaddq_s16(v47, v44), v49), v52), 5uLL))), v45));
  v56 = vzip1q_s16(vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v54, vaddq_s16(v42, v47)), *v38.i8, 0x1414141414141414), vaddq_s16(v46, v43), v49), 5uLL))), v44), vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v50, v44), vzip1q_s8(v40, 0)), v51, 0x1414141414141414), vmovn_s16(v47), 0x1414141414141414), v48, v49), v52), 5uLL))), v46));
  v57 = vzip1q_s16(v55, v56);
  result = vzip2q_s16(v55, v56);
  *a1 = v57.i64[0];
  *(a1 + a2) = v57.i64[1];
  v59 = 2 * a2;
  *(a1 + v59) = result.i64[0];
  *(a1 + v59 + a2) = result.i64[1];
  return result;
}

double sub_27729CAF0(void *a1, unsigned int a2, uint64_t a3, int a4, int8x16_t a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v14 = (a3 - 2 * a4);
  v15 = (a3 - a4);
  v16 = (a3 + 4 * a4);
  v17 = (a3 + 5 * a4);
  v18 = (a3 + 6 * a4);
  v20 = *(a3 - 2);
  v19 = a3 - 2;
  v21 = *(v19 + a4);
  v22 = *(v19 + 2 * a4);
  v23 = *(v19 + 3 * a4);
  a10.i32[0] = *v14;
  a11.i32[0] = *v15;
  a12.i32[0] = *v16;
  v12.i32[0] = *v17;
  v13.i32[0] = *v18;
  v24 = vzip1q_s8(a11, 0);
  v25 = vzip1q_s8(vextq_s8(v20, a5, 2uLL), 0);
  v26 = vzip1q_s8(vextq_s8(v21, a5, 2uLL), 0);
  v27 = vzip1q_s8(vextq_s8(v22, a5, 2uLL), 0);
  v28 = vzip1q_s8(vextq_s8(v23, a5, 2uLL), 0);
  v29 = vzip1q_s8(a12, 0);
  v30 = vzip1q_s8(v12, 0);
  v31.i64[0] = 0x4000400040004;
  v31.i64[1] = 0x4000400040004;
  v32.i64[0] = 0x14001400140014;
  v32.i64[1] = 0x14001400140014;
  v33 = vmulq_s16(v27, v31);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v35.i64[0] = 0x10001000100010;
  v35.i64[1] = 0x10001000100010;
  v36 = vmlaq_s16(v35, v26, v32);
  v37 = vmulq_s16(v27, v32);
  v38 = vaddq_s16(v36, v37);
  v39 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(v36, v25, v32), vaddq_s16(v33, v28)), vzip1q_s8(a10, 0)), v24, v31), 5uLL)));
  v40 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(v38, vaddq_s16(v28, v25), v31), vaddq_s16(v24, v29)), 5uLL)));
  v41 = vmulq_s16(v28, v32);
  v42 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v37, v25), v41), v30), vaddq_s16(v29, v26), v31), v34), 5uLL)));
  v43 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vaddq_s16(v33, v26), v41), vmovn_s16(v29), 0x1414141414141414), v30, v31), vaddq_s16(vzip1q_s8(v13, 0), v34)), 5uLL)));
  v44 = vzip1q_s8(v20, 0);
  v45 = vdupq_laneq_s8(v20, 8);
  v46 = vzip1q_s8(v21, 0);
  v47 = vdupq_laneq_s8(v21, 8);
  v48 = vzip1q_s8(v22, 0);
  v49 = vdupq_laneq_s8(v22, 8);
  v50 = vzip1q_s8(v23, 0);
  v51 = vdupq_laneq_s8(v23, 8);
  v52 = vzip1q_s8(v44, 0);
  v45.i8[1] = 0;
  v53 = vzip2q_s8(v44, 0);
  v54 = vzip1q_s8(v46, 0);
  v55 = vzip2q_s8(v46, 0);
  v47.i8[1] = 0;
  v56 = vzip1q_s8(v48, 0);
  v57 = vzip2q_s8(v48, 0);
  v49.i8[1] = 0;
  v58 = vzip1q_s8(v50, 0);
  v51.i8[1] = 0;
  v59 = vzip2q_s8(v50, 0);
  v60 = vzip1q_s8(v52, v56);
  v61 = vzip2q_s8(v52, v56);
  v62 = vzip1q_s8(v53, v57);
  v63 = vzip2q_s8(v53, v57);
  v64 = vzip1q_s8(v45, v49);
  v65 = vzip1q_s8(v54, v58);
  v66 = vzip2q_s8(v54, v58);
  v67 = vzip1q_s8(v55, v59);
  v68 = vzip2q_s8(v55, v59);
  v69 = vzip1q_s8(v61, v66);
  v70 = vzip2q_s8(v61, v66);
  v71 = vzip1q_s8(v62, v67);
  v72 = vzip2q_s8(v62, v67);
  v73 = vzip1q_s8(v63, v68);
  v74 = vzip2q_s8(v63, v68);
  v75 = vzip1q_s8(v64, vzip1q_s8(v47, v51));
  v76 = vzip1q_s8(vzip1q_s8(v60, v65), 0);
  v77 = vzip1q_s8(vzip2q_s8(v60, v65), 0);
  v78 = vzip1q_s8(v69, 0);
  v79 = vzip1q_s8(v70, 0);
  v80 = vzip1q_s8(v71, 0);
  v81 = vzip1q_s8(v72, 0);
  v82 = vzip1q_s8(v73, 0);
  v83 = vzip1q_s8(v74, 0);
  *v58.i8 = vmovn_s16(v80);
  v84 = vmulq_s16(v80, v31);
  *v60.i8 = vmovn_s16(v81);
  v85.i64[0] = 0x10001000100010;
  v85.i64[1] = 0x10001000100010;
  v86 = vmlal_u8(v85, vmovn_s16(v79), 0x1414141414141414);
  v87 = vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v86, vaddq_s16(v76, v81)), v77, v31), vmovn_s16(v78), 0x1414141414141414), v84), 5uLL);
  *v87.i8 = vqmovun_s16(v87);
  v88 = vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v86, vaddq_s16(v77, v82)), *v58.i8, 0x1414141414141414), vaddq_s16(v81, v78), v31), 5uLL);
  *v88.i8 = vqmovun_s16(v88);
  v89 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v78, *v58.i8, 0x1414141414141414), v83), *v60.i8, 0x1414141414141414), vaddq_s16(v82, v79), v31), v34), 5uLL);
  *v89.i8 = vqmovun_s16(v89);
  v90 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v84, v79), vzip1q_s8(v75, 0)), *v60.i8, 0x1414141414141414), vmovn_s16(v82), 0x1414141414141414), v83, v31), v34), 5uLL);
  *v90.i8 = vqmovun_s16(v90);
  v91 = vzip1q_s16(vzip1q_s8(v87, 0), vzip1q_s8(v89, 0));
  v92 = vzip1q_s16(vzip1q_s8(v88, 0), vzip1q_s8(v90, 0));
  v93 = vzip1q_s16(v91, v92);
  v94 = vzip2q_s16(v91, v92);
  *&result = vrhaddq_u16(vextq_s8(v94, 0, 8uLL), v43).u64[0];
  *a1 = vrhaddq_u16(v93, v39).u64[0];
  *(a1 + a2) = vrhaddq_u16(vextq_s8(v93, 0, 8uLL), v40).u64[0];
  v96 = 2 * a2;
  *(a1 + v96) = vrhaddq_u16(v94, v42).u64[0];
  *(a1 + v96 + a2) = result;
  return result;
}

double sub_27729CDD0(void *a1, unsigned int a2, uint64_t a3, int a4, int64x2_t a5, int64x2_t a6, int64x2_t a7, int64x2_t a8, int64x2_t a9, int64x2_t a10, int64x2_t a11, int64x2_t a12)
{
  v16 = a3 - 2 * a4;
  v17 = a3 - a4;
  v18 = a3 + a4;
  a5.i32[0] = *(v16 + 2);
  v19 = vshlq_n_s64(a5, 0x20uLL);
  v20 = a3 + 2 * a4;
  a6.i32[0] = *(v17 + 2);
  a7.i32[0] = *(a3 + 2);
  a8.i32[0] = *(v18 + 2);
  a9.i32[0] = *(v20 + 2);
  v21 = a3 + 3 * a4;
  a10.i32[0] = *(v21 + 2);
  v22 = a3 + 4 * a4;
  a11.i32[0] = *(v22 + 2);
  v23 = a3 + 5 * a4;
  a12.i32[0] = *(v23 + 2);
  v24 = a3 + 6 * a4;
  v12.i32[0] = *(v24 + 2);
  v13.i32[0] = *(v16 - 2);
  v25 = vorrq_s8(v19, v13);
  v19.i32[0] = *(v17 - 2);
  v14.i32[0] = *(a3 - 2);
  v15.i32[0] = *(v18 - 2);
  v26 = vorrq_s8(vshlq_n_s64(a6, 0x20uLL), v19);
  v27 = vorrq_s8(vshlq_n_s64(a7, 0x20uLL), v14);
  v28 = vorrq_s8(vshlq_n_s64(a8, 0x20uLL), v15);
  v19.i32[0] = *(v20 - 2);
  v29 = vorrq_s8(vshlq_n_s64(a9, 0x20uLL), v19);
  v19.i32[0] = *(v21 - 2);
  v30 = vorrq_s8(vshlq_n_s64(a10, 0x20uLL), v19);
  v19.i32[0] = *(v22 - 2);
  v31 = vorrq_s8(vshlq_n_s64(a11, 0x20uLL), v19);
  v19.i32[0] = *(v23 - 2);
  v32 = vorrq_s8(vshlq_n_s64(a12, 0x20uLL), v19);
  v19.i32[0] = *(v24 - 2);
  v33 = vorrq_s8(vshlq_n_s64(v12, 0x20uLL), v19);
  v34 = vzip1q_s8(v26, 0);
  v35 = vzip1q_s8(v27, 0);
  v36 = vzip1q_s8(v28, 0);
  v37 = vzip1q_s8(v29, 0);
  v38 = vzip1q_s8(v30, 0);
  v39 = vzip1q_s8(v31, 0);
  v40 = vzip1q_s8(v32, 0);
  v41 = vzip1q_s8(v33, 0);
  v28.i64[0] = 0x4000400040004;
  v28.i64[1] = 0x4000400040004;
  v32.i64[0] = 0x14001400140014;
  v32.i64[1] = 0x14001400140014;
  v42 = vmulq_s16(v36, v32);
  v43 = vmulq_s16(v37, v28);
  v44 = vaddq_s16(vmlaq_s16(vmlaq_s16(vzip1q_s8(v25, 0), v34, v28), v35, v32), vaddq_s16(vaddq_s16(v42, v43), v38));
  LOWORD(v17) = *(v17 + 6);
  v45.i64[0] = 0x10001000100010;
  v45.i64[1] = 0x10001000100010;
  v46 = *(a3 + 6);
  v47 = *(v18 + 6);
  v48 = vshrq_n_s16(vaddq_s16(v44, v45), 5uLL);
  LOWORD(v21) = *(v21 + 6);
  LOWORD(v22) = *(v22 + 6);
  LOWORD(v23) = *(v23 + 6);
  v49 = 5 * *(v20 + 6);
  LOWORD(v20) = v21 + *(v16 + 6) - 5 * v17 + 20 * v46 + 20 * v47 - v49;
  LOWORD(v16) = v22 + v17 + 20 * v47 + 4 * v49 - 5 * (v21 + v46);
  LOWORD(v21) = 5 * v21;
  *v48.i8 = vqmovun_s16(v48);
  v50 = vmulq_s16(v37, v32);
  v51 = vmlaq_s16(vaddq_s16(vaddq_s16(v42, v34), vaddq_s16(v50, v39)), vaddq_s16(v38, v35), v28);
  v52 = vshrq_n_s16(vaddq_s16(v51, v45), 5uLL);
  *v52.i8 = vqmovun_s16(v52);
  v53 = vmulq_s16(v38, v32);
  v54 = vmlaq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v50, v35), v53), v40), vaddq_s16(v39, v36), v28);
  v55 = vshrq_n_s16(vaddq_s16(v54, v45), 5uLL);
  *v55.i8 = vqmovun_s16(v55);
  v56 = vaddq_s16(vmlaq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v43, v36), v53), v39, v32), v40, v28), v41);
  v57 = vshrq_n_s16(vaddq_s16(v56, v45), 5uLL);
  *v57.i8 = vqmovun_s16(v57);
  v58 = vextq_s8(v44, 0, 6uLL);
  v59 = v58;
  v59.i16[5] = v20;
  v60 = vpaddq_s32(vmull_s16(*v44.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v44, v44, 8uLL), 131067));
  v61 = vextq_s8(v44, 0, 2uLL);
  v62 = vpaddq_s32(vmull_s16(*v61.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 131067));
  v63 = vextq_s8(v44, 0, 4uLL);
  v64 = vpaddq_s32(vmull_s16(*v63.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v63, v63, 8uLL), 131067));
  v65 = vpaddq_s32(vmull_s16(*v58.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v59, v59, 8uLL), 131067));
  v66 = vzip1q_s32(v60, v64);
  v67 = vzip2q_s32(v60, v64);
  v68 = vzip1q_s32(v62, v65);
  v69 = vzip1q_s32(v67, vzip2q_s32(v62, v65));
  v67.i64[0] = 0x20000000200;
  v67.i64[1] = 0x20000000200;
  v70 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v66, v68), vzip1q_s32(v66, v68)), vaddq_s32(v69, v67)), 0xAuLL);
  v71 = vextq_s8(v51, 0, 6uLL);
  v71.i16[5] = v16;
  v72 = vpaddq_s32(vmull_s16(*v51.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v51, v51, 8uLL), 131067));
  v73 = vextq_s8(v51, 0, 2uLL);
  v74 = vpaddq_s32(vmull_s16(*v73.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v73, v73, 8uLL), 131067));
  v75 = vextq_s8(v51, 0, 4uLL);
  v76 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v77 = vpaddq_s32(vmull_s16(*v71.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v71, v71, 8uLL), 131067));
  v78 = vzip1q_s32(v72, v76);
  v79 = vzip2q_s32(v72, v76);
  v80 = vzip1q_s32(v74, v77);
  v81 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v78, v80), vzip1q_s32(v78, v80)), vaddq_s32(vzip1q_s32(v79, vzip2q_s32(v74, v77)), v67)), 0xAuLL);
  v82 = vextq_s8(v54, 0, 6uLL);
  v82.i16[5] = v23 + v46 + 4 * v49 + 4 * v21 - 5 * (v22 + v47);
  v83 = vpaddq_s32(vmull_s16(*v54.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 131067));
  v84 = vextq_s8(v54, 0, 2uLL);
  v85 = vpaddq_s32(vmull_s16(*v84.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v84, v84, 8uLL), 131067));
  v86 = vextq_s8(v54, 0, 4uLL);
  v87 = vpaddq_s32(vmull_s16(*v86.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v86, v86, 8uLL), 131067));
  v88 = vpaddq_s32(vmull_s16(*v82.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v82, v82, 8uLL), 131067));
  v89 = vzip1q_s32(v83, v87);
  v90 = vzip2q_s32(v83, v87);
  v91 = vzip1q_s32(v85, v88);
  v92 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v89, v91), vzip1q_s32(v89, v91)), vaddq_s32(vzip1q_s32(v90, vzip2q_s32(v85, v88)), v67)), 0xAuLL);
  v93 = vextq_s8(v56, 0, 6uLL);
  v93.i16[5] = *(v24 + 6) + v47 - v49 + 4 * v21 + 20 * v22 - 5 * v23;
  v94 = vpaddq_s32(vmull_s16(*v56.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v56, v56, 8uLL), 131067));
  v95 = vextq_s8(v56, 0, 2uLL);
  v96 = vpaddq_s32(vmull_s16(*v95.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v95, v95, 8uLL), 131067));
  v97 = vextq_s8(v56, 0, 4uLL);
  v98 = vpaddq_s32(vmull_s16(*v97.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v97, v97, 8uLL), 131067));
  v99 = vpaddq_s32(vmull_s16(*v93.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v93, v93, 8uLL), 131067));
  v100 = vzip1q_s32(v94, v98);
  v101 = vzip1q_s32(v96, v99);
  v102 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v100, v101), vzip1q_s32(v100, v101)), vaddq_s32(vzip1q_s32(vzip2q_s32(v94, v98), vzip2q_s32(v96, v99)), v67)), 0xAuLL);
  *&result = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v102), v102))), vextq_s8(vzip1q_s8(v57, 0), 0, 4uLL)).u64[0];
  *a1 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v70), v70))), vextq_s8(vzip1q_s8(v48, 0), 0, 4uLL)).u64[0];
  *(a1 + a2) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v81), v81))), vextq_s8(vzip1q_s8(v52, 0), 0, 4uLL)).u64[0];
  v104 = 2 * a2;
  *(a1 + v104) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v92), v92))), vextq_s8(vzip1q_s8(v55, 0), 0, 4uLL)).u64[0];
  *(a1 + v104 + a2) = result;
  return result;
}

double sub_27729D274(void *a1, unsigned int a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  v14 = (a3 - 2 * a4);
  v15 = (a3 - a4);
  v16 = (a3 + 5 * a4);
  v17 = (a3 + 6 * a4);
  v19 = *(a3 - 2);
  v18 = a3 - 2;
  v20 = *(v18 + a4);
  v21 = *(v18 + 2 * a4);
  v22 = *(v18 + 3 * a4);
  v23 = *(v18 + 4 * a4);
  a11.i32[0] = *v14;
  a12.i32[0] = *v15;
  v12.i32[0] = *v16;
  v13.i32[0] = *v17;
  v24 = vzip1q_s8(a12, 0);
  v25 = vzip1q_s8(vextq_s8(v19, v19, 2uLL), 0);
  v26 = vzip1q_s8(vextq_s8(v20, v19, 2uLL), 0);
  v27 = vzip1q_s8(vextq_s8(v21, v19, 2uLL), 0);
  v28 = vzip1q_s8(vextq_s8(v22, v19, 2uLL), 0);
  v29 = vzip1q_s8(vextq_s8(v23, v19, 2uLL), 0);
  v30 = vzip1q_s8(v12, 0);
  v31.i64[0] = 0x4000400040004;
  v31.i64[1] = 0x4000400040004;
  v32.i64[0] = 0x14001400140014;
  v32.i64[1] = 0x14001400140014;
  v33 = vmulq_s16(v27, v31);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v35.i64[0] = 0x10001000100010;
  v35.i64[1] = 0x10001000100010;
  v36 = vmlaq_s16(v35, v26, v32);
  v37 = vaddq_s16(v36, v29);
  v38 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(v36, v25, v32), vaddq_s16(v33, v28)), vzip1q_s8(a11, 0)), v24, v31), 5uLL)));
  v39 = vmulq_s16(v27, v32);
  v40 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(v37, v39), vaddq_s16(v28, v25), v31), v24), 5uLL)));
  v41 = vmulq_s16(v28, v32);
  v42 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v39, v25), v41), vaddq_s16(v29, v26), v31), vaddq_s16(v30, v34)), 5uLL)));
  v43 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v33, v26), v41), v29, v32), v30, v31), vaddq_s16(vzip1q_s8(v13, 0), v34)), 5uLL)));
  v44 = vzip1q_s8(v20, 0);
  v45 = vdupq_laneq_s8(v20, 8);
  v46 = vzip1q_s8(v21, 0);
  v47 = vdupq_laneq_s8(v21, 8);
  v48 = vzip1q_s8(v22, 0);
  v49 = vdupq_laneq_s8(v22, 8);
  v50 = vzip1q_s8(v23, 0);
  v51 = vdupq_laneq_s8(v23, 8);
  v52 = vzip1q_s8(v44, 0);
  v45.i8[1] = 0;
  v53 = vzip2q_s8(v44, 0);
  v54 = vzip1q_s8(v46, 0);
  v55 = vzip2q_s8(v46, 0);
  v47.i8[1] = 0;
  v56 = vzip1q_s8(v48, 0);
  v57 = vzip2q_s8(v48, 0);
  v49.i8[1] = 0;
  v58 = vzip1q_s8(v50, 0);
  v51.i8[1] = 0;
  v59 = vzip2q_s8(v50, 0);
  v60 = vzip1q_s8(v52, v56);
  v61 = vzip2q_s8(v52, v56);
  v62 = vzip1q_s8(v53, v57);
  v63 = vzip2q_s8(v53, v57);
  v64 = vzip1q_s8(v45, v49);
  v65 = vzip1q_s8(v54, v58);
  v66 = vzip2q_s8(v54, v58);
  v67 = vzip1q_s8(v55, v59);
  v68 = vzip2q_s8(v55, v59);
  v69 = vzip1q_s8(v61, v66);
  v70 = vzip2q_s8(v61, v66);
  v71 = vzip1q_s8(v62, v67);
  v72 = vzip2q_s8(v62, v67);
  v73 = vzip1q_s8(v63, v68);
  v74 = vzip2q_s8(v63, v68);
  v75 = vzip1q_s8(v64, vzip1q_s8(v47, v51));
  v76 = vzip1q_s8(vzip1q_s8(v60, v65), 0);
  v77 = vzip1q_s8(vzip2q_s8(v60, v65), 0);
  v78 = vzip1q_s8(v69, 0);
  v79 = vzip1q_s8(v70, 0);
  v80 = vzip1q_s8(v71, 0);
  v81 = vzip1q_s8(v72, 0);
  v82 = vzip1q_s8(v73, 0);
  v83 = vzip1q_s8(v74, 0);
  *v58.i8 = vmovn_s16(v80);
  v84 = vmulq_s16(v80, v31);
  *v60.i8 = vmovn_s16(v81);
  v85.i64[0] = 0x10001000100010;
  v85.i64[1] = 0x10001000100010;
  v86 = vmlal_u8(v85, vmovn_s16(v79), 0x1414141414141414);
  v87 = vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v86, vaddq_s16(v76, v81)), v77, v31), vmovn_s16(v78), 0x1414141414141414), v84), 5uLL);
  *v87.i8 = vqmovun_s16(v87);
  v88 = vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v86, vaddq_s16(v77, v82)), *v58.i8, 0x1414141414141414), vaddq_s16(v81, v78), v31), 5uLL);
  *v88.i8 = vqmovun_s16(v88);
  v89 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v78, *v58.i8, 0x1414141414141414), v83), *v60.i8, 0x1414141414141414), vaddq_s16(v82, v79), v31), v34), 5uLL);
  *v89.i8 = vqmovun_s16(v89);
  v90 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v84, v79), vzip1q_s8(v75, 0)), *v60.i8, 0x1414141414141414), vmovn_s16(v82), 0x1414141414141414), v83, v31), v34), 5uLL);
  *v90.i8 = vqmovun_s16(v90);
  v91 = vzip1q_s16(vzip1q_s8(v87, 0), vzip1q_s8(v89, 0));
  v92 = vzip1q_s16(vzip1q_s8(v88, 0), vzip1q_s8(v90, 0));
  v93 = vzip1q_s16(v91, v92);
  v94 = vzip2q_s16(v91, v92);
  *&result = vrhaddq_u16(vextq_s8(v94, 0, 8uLL), v43).u64[0];
  *a1 = vrhaddq_u16(v93, v38).u64[0];
  *(a1 + a2) = vrhaddq_u16(vextq_s8(v93, 0, 8uLL), v40).u64[0];
  v96 = 2 * a2;
  *(a1 + v96) = vrhaddq_u16(v94, v42).u64[0];
  *(a1 + v96 + a2) = result;
  return result;
}

int16x8_t sub_27729D550(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v5 = *(a3 - 2);
  v4 = a3 - 2;
  v6 = *(v4 + a4);
  v7 = *(v4 + 2 * a4);
  v8 = *(v4 + 3 * a4);
  v9 = vdupq_laneq_s8(v5, 8);
  v10 = vzip1q_s8(v5, 0);
  v11 = vzip1q_s8(v6, 0);
  v12 = vdupq_laneq_s8(v6, 8);
  v13 = vdupq_laneq_s8(v7, 8);
  v14 = vzip1q_s8(v7, 0);
  v15 = vzip1q_s8(v8, 0);
  v16 = vdupq_laneq_s8(v8, 8);
  v17 = vzip1q_s8(v10, 0);
  v18 = vzip2q_s8(v10, 0);
  v9.i8[1] = 0;
  v19 = vzip1q_s8(v11, 0);
  v20 = vzip2q_s8(v11, 0);
  v12.i8[1] = 0;
  v21 = vzip1q_s8(v14, 0);
  v22 = vzip2q_s8(v14, 0);
  v13.i8[1] = 0;
  v23 = vzip1q_s8(v15, 0);
  v24 = vzip2q_s8(v15, 0);
  v16.i8[1] = 0;
  v25 = vzip1q_s8(v17, v21);
  v26 = vzip2q_s8(v17, v21);
  v27 = vzip1q_s8(v18, v22);
  v28 = vzip2q_s8(v18, v22);
  v29 = vzip1q_s8(v9, v13);
  v30 = vzip1q_s8(v19, v23);
  v31 = vzip2q_s8(v19, v23);
  v32 = vzip1q_s8(v20, v24);
  v33 = vzip2q_s8(v20, v24);
  v34 = vzip1q_s8(v26, v31);
  v35 = vzip2q_s8(v26, v31);
  v36 = vzip1q_s8(v27, v32);
  v37 = vzip2q_s8(v27, v32);
  v38 = vzip1q_s8(v28, v33);
  v39 = vzip2q_s8(v28, v33);
  v40 = vzip1q_s8(v29, vzip1q_s8(v12, v16));
  v41 = vzip1q_s8(vzip1q_s8(v25, v30), 0);
  v42 = vzip1q_s8(vzip2q_s8(v25, v30), 0);
  v43 = vzip1q_s8(v34, 0);
  v44 = vzip1q_s8(v35, 0);
  v45 = vzip1q_s8(v36, 0);
  v46 = vzip1q_s8(v37, 0);
  v47 = vzip1q_s8(v38, 0);
  v48 = vzip1q_s8(v39, 0);
  v37.i64[0] = 0x4000400040004;
  v37.i64[1] = 0x4000400040004;
  v49 = vmovn_s16(v45);
  v50 = vmulq_s16(v45, v37);
  v51 = vmovn_s16(v46);
  v52.i64[0] = 0x10001000100010;
  v52.i64[1] = 0x10001000100010;
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vmlal_u8(v53, vmovn_s16(v44), 0x1414141414141414);
  v55 = vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v54, vaddq_s16(v41, v46)), v42, v37), vmovn_s16(v43), 0x1414141414141414), v50), 5uLL);
  *v55.i8 = vqmovun_s16(v55);
  v56 = vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v54, vaddq_s16(v42, v47)), v49, 0x1414141414141414), vaddq_s16(v46, v43), v37), 5uLL);
  *v56.i8 = vqmovun_s16(v56);
  v57 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v43, v49, 0x1414141414141414), v48), v51, 0x1414141414141414), vaddq_s16(v47, v44), v37), v52), 5uLL);
  *v57.i8 = vqmovun_s16(v57);
  v58 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v50, v44), vzip1q_s8(v40, 0)), v51, 0x1414141414141414), vmovn_s16(v47), 0x1414141414141414), v48, v37), v52), 5uLL);
  *v58.i8 = vqmovun_s16(v58);
  v59 = vzip1q_s8(v58, 0);
  v60 = vzip1q_s16(vzip1q_s8(v55, 0), vzip1q_s8(v57, 0));
  v61 = vzip1q_s16(vzip1q_s8(v56, 0), v59);
  v62 = vzip1q_s16(v60, v61);
  result = vzip2q_s16(v60, v61);
  *a1 = v62.i64[0];
  *(a1 + a2) = v62.i64[1];
  v64 = 2 * a2;
  *(a1 + v64) = result.i64[0];
  *(a1 + v64 + a2) = result.i64[1];
  return result;
}

double sub_27729D714(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = a3 - 2 * a4;
  v5 = *(v4 - 2);
  v6 = vzip1q_s8(v5, 0);
  v7 = vextq_s8(v6, 0, 2uLL);
  v8 = vextq_s8(v6, 0, 4uLL);
  v9 = vzip1q_s8(vextq_s8(v5, v5, 3uLL), 0);
  v10 = vpaddq_s32(vmull_s16(*v6.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v6, v6, 8uLL), 131067));
  v11 = (v4 - 2 + a4);
  v12 = vpaddq_s32(vmull_s16(*v7.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 131067));
  v13 = *v11;
  v14 = (v11 + a4);
  v15 = *v14;
  v16 = (v14 + a4);
  v17 = vpaddq_s32(vmull_s16(*v8.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 131067));
  v18 = *v16;
  v19 = (v16 + a4);
  v20 = *v19;
  v21 = (v19 + a4);
  v22 = vpaddq_s32(vmull_s16(*v9.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v9, v9, 8uLL), 131067));
  v23 = *v21;
  v24 = vzip1q_s32(v10, v17);
  v25 = (v21 + a4);
  v26 = vzip2q_s32(v10, v17);
  v27 = *v25;
  v28 = vzip1q_s32(v12, v22);
  v29 = (v25 + a4);
  v30 = vzip2q_s32(v12, v22);
  v31 = vzip1q_s32(v24, v28);
  v32 = vzip2q_s32(v24, v28);
  v33 = *(v29 + a4);
  v34 = vzip1q_s32(v26, v30);
  v35 = vzip1q_s8(v13, 0);
  v36 = vextq_s8(v35, 0, 2uLL);
  v37 = vextq_s8(v35, 0, 4uLL);
  v38 = vzip1q_s8(vextq_s8(v13, v15, 3uLL), 0);
  v39 = vpaddq_s32(vmull_s16(*v35.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v35, v35, 8uLL), 131067));
  v40 = vpaddq_s32(vmull_s16(*v36.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v36, v36, 8uLL), 131067));
  v41 = vpaddq_s32(vmull_s16(*v37.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v37, v37, 8uLL), 131067));
  v42 = vpaddq_s32(vmull_s16(*v38.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v38, v38, 8uLL), 131067));
  v43 = vzip1q_s32(v39, v41);
  v44 = vzip2q_s32(v39, v41);
  v45 = vzip1q_s32(v40, v42);
  v46 = vaddq_s32(vaddq_s32(vzip1q_s32(v43, v45), vzip2q_s32(v43, v45)), vzip1q_s32(v44, vzip2q_s32(v40, v42)));
  v47 = vzip1q_s8(v15, 0);
  v48 = vextq_s8(v47, 0, 2uLL);
  v49 = vextq_s8(v47, 0, 4uLL);
  v50 = vzip1q_s8(vextq_s8(v15, v15, 3uLL), 0);
  v51 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
  v52 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 131067));
  v53 = vpaddq_s32(vmull_s16(*v49.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
  v54 = vpaddq_s32(vmull_s16(*v50.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 131067));
  v55 = vzip1q_s32(v51, v53);
  v56 = vzip2q_s32(v51, v53);
  v57 = vzip1q_s32(v52, v54);
  v58 = vaddq_s32(vaddq_s32(vzip1q_s32(v55, v57), vzip2q_s32(v55, v57)), vzip1q_s32(v56, vzip2q_s32(v52, v54)));
  v59.i64[0] = 0x1000000010;
  v59.i64[1] = 0x1000000010;
  v60 = vshrq_n_s32(vaddq_s32(v58, v59), 5uLL);
  *v60.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v60), v60));
  v61 = vzip1q_s8(v18, 0);
  v62 = vextq_s8(v61, 0, 2uLL);
  v63 = vextq_s8(v61, 0, 4uLL);
  v64 = vzip1q_s8(vextq_s8(v18, v60, 3uLL), 0);
  v65 = vpaddq_s32(vmull_s16(*v61.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 131067));
  v66 = vpaddq_s32(vmull_s16(*v62.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v62, v62, 8uLL), 131067));
  v67 = vpaddq_s32(vmull_s16(*v63.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v63, v63, 8uLL), 131067));
  v68 = vpaddq_s32(vmull_s16(*v64.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v64, v64, 8uLL), 131067));
  v69 = vzip1q_s32(v65, v67);
  v70 = vzip2q_s32(v65, v67);
  v71 = vzip1q_s32(v66, v68);
  v72 = vaddq_s32(vaddq_s32(vzip1q_s32(v69, v71), vzip2q_s32(v69, v71)), vzip1q_s32(v70, vzip2q_s32(v66, v68)));
  v73 = vshrq_n_s32(vaddq_s32(v72, v59), 5uLL);
  v74 = vzip1q_s8(v20, 0);
  v75 = vextq_s8(v74, 0, 2uLL);
  v76 = vextq_s8(v74, 0, 4uLL);
  v77 = vzip1q_s8(vextq_s8(v20, v60, 3uLL), 0);
  v78 = vpaddq_s32(vmull_s16(*v74.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v74, v74, 8uLL), 131067));
  v79 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v80 = vpaddq_s32(vmull_s16(*v76.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 131067));
  v81 = vpaddq_s32(vmull_s16(*v77.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 131067));
  v82 = vzip1q_s32(v78, v80);
  v83 = vzip2q_s32(v78, v80);
  v84 = vzip1q_s32(v79, v81);
  v85 = vaddq_s32(vaddq_s32(vzip1q_s32(v82, v84), vzip2q_s32(v82, v84)), vzip1q_s32(v83, vzip2q_s32(v79, v81)));
  v86 = vshrq_n_s32(vaddq_s32(v85, v59), 5uLL);
  v87 = vzip1q_s8(v23, 0);
  v88 = vextq_s8(v87, 0, 2uLL);
  v89 = vextq_s8(v87, 0, 4uLL);
  v90 = vzip1q_s8(vextq_s8(v23, v60, 3uLL), 0);
  v91 = vpaddq_s32(vmull_s16(*v87.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v87, v87, 8uLL), 131067));
  v92 = vpaddq_s32(vmull_s16(*v88.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v88, v88, 8uLL), 131067));
  v93 = vpaddq_s32(vmull_s16(*v89.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v89, v89, 8uLL), 131067));
  v94 = vpaddq_s32(vmull_s16(*v90.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v90, v90, 8uLL), 131067));
  v95 = vzip1q_s32(v91, v93);
  v96 = vzip2q_s32(v91, v93);
  v97 = vzip1q_s32(v92, v94);
  v98 = vaddq_s32(vaddq_s32(vzip1q_s32(v95, v97), vzip2q_s32(v95, v97)), vzip1q_s32(v96, vzip2q_s32(v92, v94)));
  v99 = vshrq_n_s32(vaddq_s32(v98, v59), 5uLL);
  v100 = vzip1q_s8(v27, 0);
  v101 = vextq_s8(v100, 0, 2uLL);
  v102 = vextq_s8(v100, 0, 4uLL);
  v103 = vzip1q_s8(vextq_s8(v27, v60, 3uLL), 0);
  v104 = vpaddq_s32(vmull_s16(*v100.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v100, v100, 8uLL), 131067));
  v105 = vpaddq_s32(vmull_s16(*v101.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v101, v101, 8uLL), 131067));
  v106 = vpaddq_s32(vmull_s16(*v102.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v102, v102, 8uLL), 131067));
  v107 = vpaddq_s32(vmull_s16(*v103.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v103, v103, 8uLL), 131067));
  v108 = vzip1q_s32(v104, v106);
  v109 = vzip2q_s32(v104, v106);
  v110 = vzip1q_s32(v105, v107);
  v111 = vaddq_s32(vaddq_s32(vzip1q_s32(v108, v110), vzip2q_s32(v108, v110)), vzip1q_s32(v109, vzip2q_s32(v105, v107)));
  v112 = vzip1q_s8(*v29, 0);
  v113 = vextq_s8(v112, 0, 2uLL);
  v114 = vextq_s8(v112, 0, 4uLL);
  v115 = vzip1q_s8(vextq_s8(*v29, v60, 3uLL), 0);
  v116 = vpaddq_s32(vmull_s16(*v112.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v112, v112, 8uLL), 131067));
  v117 = vpaddq_s32(vmull_s16(*v113.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v113, v113, 8uLL), 131067));
  v118 = vpaddq_s32(vmull_s16(*v114.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v114, v114, 8uLL), 131067));
  v119 = vpaddq_s32(vmull_s16(*v115.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v115, v115, 8uLL), 131067));
  v120 = vzip1q_s32(v116, v118);
  v121 = vzip2q_s32(v116, v118);
  v122 = vzip1q_s32(v117, v119);
  v123 = vaddq_s32(vaddq_s32(vzip1q_s32(v120, v122), vzip2q_s32(v120, v122)), vzip1q_s32(v121, vzip2q_s32(v117, v119)));
  v124 = vzip1q_s8(v33, 0);
  v125 = vextq_s8(v124, 0, 2uLL);
  v126 = vextq_s8(v124, 0, 4uLL);
  v127 = vzip1q_s8(vextq_s8(v33, v60, 3uLL), 0);
  v128 = vpaddq_s32(vmull_s16(*v124.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v124, v124, 8uLL), 131067));
  v129 = vpaddq_s32(vmull_s16(*v125.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v125, v125, 8uLL), 131067));
  v130 = vpaddq_s32(vmull_s16(*v126.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v126, v126, 8uLL), 131067));
  v131 = vpaddq_s32(vmull_s16(*v127.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v127, v127, 8uLL), 131067));
  v132 = vzip1q_s32(v128, v130);
  v133 = vzip1q_s32(v129, v131);
  v134 = vzip2q_s32(v129, v131);
  v135 = vzip1q_s32(v132, v133);
  v136 = vzip2q_s32(v132, v133);
  v137 = vzip1q_s32(vzip2q_s32(v128, v130), v134);
  v134.i64[0] = 0xFFFFFFFFLL;
  v134.i64[1] = 0xFFFFFFFFLL;
  v138 = vdupq_n_s64(0xFFFFFFE0uLL);
  v139 = vzip1_s32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  v140 = vmovn_s64(vshlq_u64(v58, v138));
  v141 = vzip1_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
  v142 = vmovn_s64(vshlq_u64(v72, v138));
  v143 = vzip1_s32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
  v144 = vmovn_s64(vshlq_u64(v85, v138));
  v145 = vorrq_s8(vandq_s8(vmull_u32(v143, 0x400000004), v134), vshlq_n_s64(vmull_u32(v144, 0x400000004), 0x20uLL));
  v85.i64[0] = 0x20000000200;
  v85.i64[1] = 0x20000000200;
  v146 = vaddq_s32(vorrq_s8(vandq_s8(vmull_u32(v141, 0x1400000014), v134), vshlq_n_s64(vmull_u32(v142, 0x1400000014), 0x20uLL)), v85);
  v147 = vshrq_n_s32(vaddq_s32(vaddq_s32(v146, vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v32, v31), v34), v98), vorrq_s8(vandq_s8(vmull_u32(vzip1_s32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0x400000004), v134), vshlq_n_s64(vmull_u32(vmovn_s64(vshlq_u64(v46, v138)), 0x400000004), 0x20uLL))), vorrq_s8(vandq_s8(vmull_u32(v139, 0x1400000014), v134), vshlq_n_s64(vmull_u32(v140, 0x1400000014), 0x20uLL)))), v145), 0xAuLL);
  v148 = vorrq_s8(vandq_s8(vmull_u32(v143, 0x1400000014), v134), vshlq_n_s64(vmull_u32(v144, 0x1400000014), 0x20uLL));
  v149 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
  *v98.i8 = vmovn_s64(vshlq_u64(v98, v138));
  v150 = vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v146, vaddq_s32(vaddq_s32(v46, v111), vorrq_s8(vandq_s8(vmull_u32(v139, 0x400000004), v134), vshlq_n_s64(vmull_u32(v140, 0x400000004), 0x20uLL)))), v148), vorrq_s8(vandq_s8(vmull_u32(v149, 0x400000004), v134), vshlq_n_s64(vmull_u32(*v98.i8, 0x400000004), 0x20uLL))), 0xAuLL);
  v151 = vorrq_s8(vandq_s8(vmull_u32(v141, 0x400000004), v134), vshlq_n_s64(vmull_u32(v142, 0x400000004), 0x20uLL));
  v152 = vorrq_s8(vandq_s8(vmull_u32(v149, 0x1400000014), v134), vshlq_n_s64(vmull_u32(*v98.i8, 0x1400000014), 0x20uLL));
  v153 = vzip1_s32(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
  *v111.i8 = vmovn_s64(vshlq_u64(v111, v138));
  v154 = vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v148, vaddq_s32(vaddq_s32(v58, v123), v151)), v152), vorrq_s8(vandq_s8(vmull_u32(v153, 0x400000004), v134), vshlq_n_s64(vmull_u32(*v111.i8, 0x400000004), 0x20uLL))), v85), 0xAuLL);
  *a1 = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v147), v147)), *v60.i8)).u64[0];
  *(a1 + a2) = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v150), v150)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v73), v73)))).u64[0];
  v155 = vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v145, vaddq_s32(vaddq_s32(vaddq_s32(v72, v136), v135), v137)), v152), vorrq_s8(vandq_s8(vmull_u32(v153, 0x1400000014), v134), vshlq_n_s64(vmull_u32(*v111.i8, 0x1400000014), 0x20uLL))), vorrq_s8(vandq_s8(vmull_u32(vzip1_s32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)), 0x400000004), v134), vshlq_n_s64(vmull_u32(vmovn_s64(vshlq_u64(v123, v138)), 0x400000004), 0x20uLL))), v85), 0xAuLL);
  v156 = 2 * a2;
  *(a1 + v156) = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v154), v154)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v86), v86)))).u64[0];
  *&result = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v155), v155)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v99), v99)))).u64[0];
  *(a1 + v156 + a2) = result;
  return result;
}

double sub_27729DE6C(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = a3 - 2 * a4;
  v5 = *(v4 - 2);
  v6 = vzip1q_s8(v5, 0);
  v7 = vextq_s8(v6, 0, 2uLL);
  v8 = vextq_s8(v6, 0, 4uLL);
  v9 = vzip1q_s8(vextq_s8(v5, v5, 3uLL), 0);
  v10 = vpaddq_s32(vmull_s16(*v6.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v6, v6, 8uLL), 131067));
  v11 = (v4 - 2 + a4);
  v12 = vpaddq_s32(vmull_s16(*v7.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 131067));
  v13 = *v11;
  v14 = (v11 + a4);
  v15 = *v14;
  v16 = (v14 + a4);
  v17 = vpaddq_s32(vmull_s16(*v8.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 131067));
  v18 = *v16;
  v19 = (v16 + a4);
  v20 = *v19;
  v21 = (v19 + a4);
  v22 = vpaddq_s32(vmull_s16(*v9.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v9, v9, 8uLL), 131067));
  v23 = *v21;
  v24 = vzip1q_s32(v10, v17);
  v25 = (v21 + a4);
  v26 = vzip2q_s32(v10, v17);
  v27 = *v25;
  v28 = vzip1q_s32(v12, v22);
  v29 = (v25 + a4);
  v30 = vzip2q_s32(v12, v22);
  v31 = vzip1q_s32(v24, v28);
  v32 = vzip2q_s32(v24, v28);
  v33 = *(v29 + a4);
  v34 = vzip1q_s32(v26, v30);
  v35 = vzip1q_s8(v13, 0);
  v36 = vextq_s8(v35, 0, 2uLL);
  v37 = vextq_s8(v35, 0, 4uLL);
  v38 = vzip1q_s8(vextq_s8(v13, v31, 3uLL), 0);
  v39 = vpaddq_s32(vmull_s16(*v35.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v35, v35, 8uLL), 131067));
  v40 = vpaddq_s32(vmull_s16(*v36.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v36, v36, 8uLL), 131067));
  v41 = vpaddq_s32(vmull_s16(*v37.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v37, v37, 8uLL), 131067));
  v42 = vpaddq_s32(vmull_s16(*v38.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v38, v38, 8uLL), 131067));
  v43 = vzip1q_s32(v39, v41);
  v44 = vzip2q_s32(v39, v41);
  v45 = vzip1q_s32(v40, v42);
  v46 = vaddq_s32(vaddq_s32(vzip1q_s32(v43, v45), vzip2q_s32(v43, v45)), vzip1q_s32(v44, vzip2q_s32(v40, v42)));
  v47 = vzip1q_s8(v15, 0);
  v48 = vextq_s8(v47, 0, 2uLL);
  v49 = vextq_s8(v47, 0, 4uLL);
  v50 = vzip1q_s8(vextq_s8(v15, v31, 3uLL), 0);
  v51 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
  v52 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v48, v48, 8uLL), 131067));
  v53 = vpaddq_s32(vmull_s16(*v49.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
  v54 = vpaddq_s32(vmull_s16(*v50.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v50, v50, 8uLL), 131067));
  v55 = vzip1q_s32(v51, v53);
  v56 = vzip2q_s32(v51, v53);
  v57 = vzip1q_s32(v52, v54);
  v58 = vaddq_s32(vaddq_s32(vzip1q_s32(v55, v57), vzip2q_s32(v55, v57)), vzip1q_s32(v56, vzip2q_s32(v52, v54)));
  v59 = vzip1q_s8(v18, 0);
  v60 = vextq_s8(v59, 0, 2uLL);
  v61 = vextq_s8(v59, 0, 4uLL);
  v62 = vzip1q_s8(vextq_s8(v18, v31, 3uLL), 0);
  v63 = vpaddq_s32(vmull_s16(*v59.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v59, v59, 8uLL), 131067));
  v64 = vpaddq_s32(vmull_s16(*v60.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v60, v60, 8uLL), 131067));
  v65 = vpaddq_s32(vmull_s16(*v61.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 131067));
  v66 = vpaddq_s32(vmull_s16(*v62.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v62, v62, 8uLL), 131067));
  v67 = vzip1q_s32(v63, v65);
  v68 = vzip2q_s32(v63, v65);
  v69 = vzip1q_s32(v64, v66);
  v70 = vaddq_s32(vaddq_s32(vzip1q_s32(v67, v69), vzip2q_s32(v67, v69)), vzip1q_s32(v68, vzip2q_s32(v64, v66)));
  v71.i64[0] = 0x1000000010;
  v71.i64[1] = 0x1000000010;
  v72 = vshrq_n_s32(vaddq_s32(v70, v71), 5uLL);
  v73 = vzip1q_s8(v20, 0);
  v74 = vextq_s8(v73, 0, 2uLL);
  v75 = vextq_s8(v73, 0, 4uLL);
  v76 = vzip1q_s8(vextq_s8(v20, v31, 3uLL), 0);
  v77 = vpaddq_s32(vmull_s16(*v73.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v73, v73, 8uLL), 131067));
  v78 = vpaddq_s32(vmull_s16(*v74.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v74, v74, 8uLL), 131067));
  v79 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v80 = vpaddq_s32(vmull_s16(*v76.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 131067));
  v81 = vzip1q_s32(v77, v79);
  v82 = vzip2q_s32(v77, v79);
  v83 = vzip1q_s32(v78, v80);
  v84 = vaddq_s32(vaddq_s32(vzip1q_s32(v81, v83), vzip2q_s32(v81, v83)), vzip1q_s32(v82, vzip2q_s32(v78, v80)));
  v85 = vshrq_n_s32(vaddq_s32(v84, v71), 5uLL);
  v86 = vzip1q_s8(v23, 0);
  v87 = vextq_s8(v86, 0, 2uLL);
  v88 = vextq_s8(v86, 0, 4uLL);
  v89 = vzip1q_s8(vextq_s8(v23, v31, 3uLL), 0);
  v90 = vpaddq_s32(vmull_s16(*v86.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v86, v86, 8uLL), 131067));
  v91 = vpaddq_s32(vmull_s16(*v87.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v87, v87, 8uLL), 131067));
  v92 = vpaddq_s32(vmull_s16(*v88.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v88, v88, 8uLL), 131067));
  v93 = vpaddq_s32(vmull_s16(*v89.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v89, v89, 8uLL), 131067));
  v94 = vzip1q_s32(v90, v92);
  v95 = vzip2q_s32(v90, v92);
  v96 = vzip1q_s32(v91, v93);
  v97 = vaddq_s32(vaddq_s32(vzip1q_s32(v94, v96), vzip2q_s32(v94, v96)), vzip1q_s32(v95, vzip2q_s32(v91, v93)));
  v98 = vshrq_n_s32(vaddq_s32(v97, v71), 5uLL);
  v99 = vzip1q_s8(v27, 0);
  v100 = vextq_s8(v99, 0, 2uLL);
  v101 = vextq_s8(v99, 0, 4uLL);
  v102 = vzip1q_s8(vextq_s8(v27, v31, 3uLL), 0);
  v103 = vpaddq_s32(vmull_s16(*v99.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v99, v99, 8uLL), 131067));
  v104 = vpaddq_s32(vmull_s16(*v100.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v100, v100, 8uLL), 131067));
  v105 = vpaddq_s32(vmull_s16(*v101.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v101, v101, 8uLL), 131067));
  v106 = vpaddq_s32(vmull_s16(*v102.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v102, v102, 8uLL), 131067));
  v107 = vzip1q_s32(v103, v105);
  v108 = vzip2q_s32(v103, v105);
  v109 = vzip1q_s32(v104, v106);
  v110 = vaddq_s32(vaddq_s32(vzip1q_s32(v107, v109), vzip2q_s32(v107, v109)), vzip1q_s32(v108, vzip2q_s32(v104, v106)));
  v111 = vshrq_n_s32(vaddq_s32(v110, v71), 5uLL);
  v112 = vzip1q_s8(*v29, 0);
  v113 = vextq_s8(v112, 0, 2uLL);
  v114 = vextq_s8(v112, 0, 4uLL);
  v115 = vzip1q_s8(vextq_s8(*v29, v31, 3uLL), 0);
  v116 = vpaddq_s32(vmull_s16(*v112.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v112, v112, 8uLL), 131067));
  v117 = vpaddq_s32(vmull_s16(*v113.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v113, v113, 8uLL), 131067));
  v118 = vpaddq_s32(vmull_s16(*v114.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v114, v114, 8uLL), 131067));
  v119 = vpaddq_s32(vmull_s16(*v115.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v115, v115, 8uLL), 131067));
  v120 = vzip1q_s32(v116, v118);
  v121 = vzip2q_s32(v116, v118);
  v122 = vzip1q_s32(v117, v119);
  v123 = vaddq_s32(vaddq_s32(vzip1q_s32(v120, v122), vzip2q_s32(v120, v122)), vzip1q_s32(v121, vzip2q_s32(v117, v119)));
  v124 = vzip1q_s8(v33, 0);
  v125 = vextq_s8(v124, 0, 2uLL);
  v126 = vextq_s8(v124, 0, 4uLL);
  v127 = vzip1q_s8(vextq_s8(v33, v31, 3uLL), 0);
  v128 = vpaddq_s32(vmull_s16(*v124.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v124, v124, 8uLL), 131067));
  v129 = vpaddq_s32(vmull_s16(*v125.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v125, v125, 8uLL), 131067));
  v130 = vpaddq_s32(vmull_s16(*v126.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v126, v126, 8uLL), 131067));
  v131 = vpaddq_s32(vmull_s16(*v127.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v127, v127, 8uLL), 131067));
  v132 = vzip1q_s32(v128, v130);
  v133 = vzip1q_s32(v129, v131);
  v134 = vzip2q_s32(v129, v131);
  v135 = vzip1q_s32(v132, v133);
  v136 = vzip2q_s32(v132, v133);
  v137 = vzip1q_s32(vzip2q_s32(v128, v130), v134);
  v134.i64[0] = 0xFFFFFFFFLL;
  v134.i64[1] = 0xFFFFFFFFLL;
  v138 = vdupq_n_s64(0xFFFFFFE0uLL);
  v139 = vzip1_s32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  v140 = vmovn_s64(vshlq_u64(v58, v138));
  v141 = vzip1_s32(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
  v142 = vmovn_s64(vshlq_u64(v70, v138));
  v143 = vzip1_s32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
  v144 = vmovn_s64(vshlq_u64(v84, v138));
  v145 = vorrq_s8(vandq_s8(vmull_u32(v143, 0x400000004), v134), vshlq_n_s64(vmull_u32(v144, 0x400000004), 0x20uLL));
  v84.i64[0] = 0x20000000200;
  v84.i64[1] = 0x20000000200;
  v146 = vaddq_s32(vorrq_s8(vandq_s8(vmull_u32(v141, 0x1400000014), v134), vshlq_n_s64(vmull_u32(v142, 0x1400000014), 0x20uLL)), v84);
  v147 = vshrq_n_s32(vaddq_s32(vaddq_s32(v146, vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v32, v31), v34), v97), vorrq_s8(vandq_s8(vmull_u32(vzip1_s32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0x400000004), v134), vshlq_n_s64(vmull_u32(vmovn_s64(vshlq_u64(v46, v138)), 0x400000004), 0x20uLL))), vorrq_s8(vandq_s8(vmull_u32(v139, 0x1400000014), v134), vshlq_n_s64(vmull_u32(v140, 0x1400000014), 0x20uLL)))), v145), 0xAuLL);
  v148 = vorrq_s8(vandq_s8(vmull_u32(v143, 0x1400000014), v134), vshlq_n_s64(vmull_u32(v144, 0x1400000014), 0x20uLL));
  v149 = vzip1_s32(*v97.i8, *&vextq_s8(v97, v97, 8uLL));
  *v97.i8 = vmovn_s64(vshlq_u64(v97, v138));
  v150 = vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v146, vaddq_s32(vaddq_s32(v46, v110), vorrq_s8(vandq_s8(vmull_u32(v139, 0x400000004), v134), vshlq_n_s64(vmull_u32(v140, 0x400000004), 0x20uLL)))), v148), vorrq_s8(vandq_s8(vmull_u32(v149, 0x400000004), v134), vshlq_n_s64(vmull_u32(*v97.i8, 0x400000004), 0x20uLL))), 0xAuLL);
  v151 = vorrq_s8(vandq_s8(vmull_u32(v141, 0x400000004), v134), vshlq_n_s64(vmull_u32(v142, 0x400000004), 0x20uLL));
  v152 = vorrq_s8(vandq_s8(vmull_u32(v149, 0x1400000014), v134), vshlq_n_s64(vmull_u32(*v97.i8, 0x1400000014), 0x20uLL));
  v153 = vzip1_s32(*v110.i8, *&vextq_s8(v110, v110, 8uLL));
  *v110.i8 = vmovn_s64(vshlq_u64(v110, v138));
  v154 = vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v148, vaddq_s32(vaddq_s32(v58, v123), v151)), v152), vorrq_s8(vandq_s8(vmull_u32(v153, 0x400000004), v134), vshlq_n_s64(vmull_u32(*v110.i8, 0x400000004), 0x20uLL))), v84), 0xAuLL);
  *a1 = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v147), v147)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v72), v72)))).u64[0];
  *(a1 + a2) = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v150), v150)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v85), v85)))).u64[0];
  v155 = vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v145, vaddq_s32(vaddq_s32(vaddq_s32(v70, v136), v135), v137)), v152), vorrq_s8(vandq_s8(vmull_u32(v153, 0x1400000014), v134), vshlq_n_s64(vmull_u32(*v110.i8, 0x1400000014), 0x20uLL))), vorrq_s8(vandq_s8(vmull_u32(vzip1_s32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)), 0x400000004), v134), vshlq_n_s64(vmull_u32(vmovn_s64(vshlq_u64(v123, v138)), 0x400000004), 0x20uLL))), v84), 0xAuLL);
  v156 = 2 * a2;
  *(a1 + v156) = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v154), v154)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v98), v98)))).u64[0];
  *&result = vmovl_u8(vrhadd_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v155), v155)), vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v111), v111)))).u64[0];
  *(a1 + v156 + a2) = result;
  return result;
}

int16x8_t sub_27729E5C4(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v5 = *(a3 - 2);
  v4 = a3 - 2;
  v6 = *(v4 + a4);
  v7 = *(v4 + 2 * a4);
  v8 = *(v4 + 3 * a4);
  v9 = vzip1q_s8(v5, 0);
  v10 = vdupq_laneq_s8(v5, 8);
  v11 = vzip1q_s8(v6, 0);
  v12 = vdupq_laneq_s8(v6, 8);
  v13 = vzip1q_s8(v7, 0);
  v14 = vdupq_laneq_s8(v7, 8);
  v15 = vzip1q_s8(v8, 0);
  v16 = vdupq_laneq_s8(v8, 8);
  v17 = vzip1q_s8(v9, 0);
  v18 = vzip2q_s8(v9, 0);
  v10.i8[1] = 0;
  v19 = vzip1q_s8(v11, 0);
  v20 = vzip2q_s8(v11, 0);
  v12.i8[1] = 0;
  v21 = vzip1q_s8(v13, 0);
  v22 = vzip2q_s8(v13, 0);
  v14.i8[1] = 0;
  v23 = vzip1q_s8(v15, 0);
  v24 = vzip2q_s8(v15, 0);
  v16.i8[1] = 0;
  v25 = vzip1q_s8(v17, v21);
  v26 = vzip2q_s8(v17, v21);
  v27 = vzip1q_s8(v18, v22);
  v28 = vzip2q_s8(v18, v22);
  v29 = vzip1q_s8(v10, v14);
  v30 = vzip1q_s8(v19, v23);
  v31 = vzip2q_s8(v19, v23);
  v32 = vzip1q_s8(v20, v24);
  v33 = vzip2q_s8(v20, v24);
  v34 = vzip1q_s8(v26, v31);
  v35 = vzip2q_s8(v26, v31);
  v36 = vzip1q_s8(v27, v32);
  v37 = vzip2q_s8(v27, v32);
  v38 = vzip1q_s8(v28, v33);
  v39 = vzip2q_s8(v28, v33);
  v40 = vzip1q_s8(v29, vzip1q_s8(v12, v16));
  v41 = vzip1q_s8(vzip1q_s8(v25, v30), 0);
  v42 = vzip1q_s8(vzip2q_s8(v25, v30), 0);
  v43 = vzip1q_s8(v34, 0);
  v44 = vzip1q_s8(v35, 0);
  v45 = vzip1q_s8(v36, 0);
  v46 = vzip1q_s8(v37, 0);
  v47 = vzip1q_s8(v38, 0);
  v48 = vzip1q_s8(v39, 0);
  v49.i64[0] = 0x4000400040004;
  v49.i64[1] = 0x4000400040004;
  *v25.i8 = vmovn_s16(v45);
  v50 = vmulq_s16(v45, v49);
  v51 = vmovn_s16(v46);
  v52.i64[0] = 0x10001000100010;
  v52.i64[1] = 0x10001000100010;
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vmlal_u8(v53, vmovn_s16(v44), 0x1414141414141414);
  v55 = vzip1q_s16(vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v54, vaddq_s16(v41, v46)), v42, v49), vmovn_s16(v43), 0x1414141414141414), v50), 5uLL))), v44), vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v43, *v25.i8, 0x1414141414141414), v48), v51, 0x1414141414141414), vaddq_s16(v47, v44), v49), v52), 5uLL))), v46));
  v56 = vzip1q_s16(vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v54, vaddq_s16(v42, v47)), *v25.i8, 0x1414141414141414), vaddq_s16(v46, v43), v49), 5uLL))), v45), vrhaddq_u16(vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v50, v44), vzip1q_s8(v40, 0)), v51, 0x1414141414141414), vmovn_s16(v47), 0x1414141414141414), v48, v49), v52), 5uLL))), v47));
  v57 = vzip1q_s16(v55, v56);
  result = vzip2q_s16(v55, v56);
  *a1 = v57.i64[0];
  *(a1 + a2) = v57.i64[1];
  v59 = 2 * a2;
  *(a1 + v59) = result.i64[0];
  *(a1 + v59 + a2) = result.i64[1];
  return result;
}

double sub_27729E798(void *a1, unsigned int a2, uint64_t a3, int a4, int8x16_t a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v15 = *(a3 - 2);
  v14 = a3 - 2;
  v16 = *(v14 + a4);
  v17 = *(v14 + 2 * a4);
  v18 = *(v14 + 3 * a4);
  a10.i32[0] = *(v14 + 3 - 2 * a4);
  a11.i32[0] = *(v14 + 3 - a4);
  a12.i32[0] = *(v14 + 3 + 4 * a4);
  v12.i32[0] = *(v14 + 3 + 5 * a4);
  v13.i32[0] = *(v14 + 3 + 6 * a4);
  v19 = vzip1q_s8(a11, 0);
  v20 = vzip1q_s8(vextq_s8(v15, a5, 3uLL), 0);
  v21 = vzip1q_s8(vextq_s8(v16, a5, 3uLL), 0);
  v22 = vzip1q_s8(vextq_s8(v17, a5, 3uLL), 0);
  v23 = vzip1q_s8(vextq_s8(v18, a5, 3uLL), 0);
  v24 = vzip1q_s8(a12, 0);
  v25 = vzip1q_s8(v12, 0);
  v26.i64[0] = 0x4000400040004;
  v26.i64[1] = 0x4000400040004;
  v27.i64[0] = 0x14001400140014;
  v27.i64[1] = 0x14001400140014;
  v28 = vmulq_s16(v22, v26);
  v29.i64[0] = 0x10001000100010;
  v29.i64[1] = 0x10001000100010;
  v30.i64[0] = 0x10001000100010;
  v30.i64[1] = 0x10001000100010;
  v31 = vmlaq_s16(v30, v21, v27);
  v32 = vmulq_s16(v22, v27);
  v33 = vaddq_s16(v31, v32);
  v34 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(v31, v20, v27), vaddq_s16(v28, v23)), vzip1q_s8(a10, 0)), v19, v26), 5uLL)));
  v35 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(v33, vaddq_s16(v23, v20), v26), vaddq_s16(v19, v24)), 5uLL)));
  v36 = vmulq_s16(v23, v27);
  v37 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v32, v20), v36), v25), vaddq_s16(v24, v21), v26), v29), 5uLL)));
  v38 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vaddq_s16(v28, v21), v36), vmovn_s16(v24), 0x1414141414141414), v25, v26), vaddq_s16(vzip1q_s8(v13, 0), v29)), 5uLL)));
  v39 = vzip1q_s8(v15, 0);
  v40 = vdupq_laneq_s8(v15, 8);
  v41 = vzip1q_s8(v16, 0);
  v42 = vdupq_laneq_s8(v16, 8);
  v43 = vzip1q_s8(v17, 0);
  v44 = vdupq_laneq_s8(v17, 8);
  v45 = vzip1q_s8(v18, 0);
  v46 = vdupq_laneq_s8(v18, 8);
  v47 = vzip1q_s8(v39, 0);
  v40.i8[1] = 0;
  v48 = vzip2q_s8(v39, 0);
  v49 = vzip1q_s8(v41, 0);
  v50 = vzip2q_s8(v41, 0);
  v42.i8[1] = 0;
  v51 = vzip1q_s8(v43, 0);
  v52 = vzip2q_s8(v43, 0);
  v44.i8[1] = 0;
  v53 = vzip1q_s8(v45, 0);
  v46.i8[1] = 0;
  v54 = vzip2q_s8(v45, 0);
  v55 = vzip1q_s8(v47, v51);
  v56 = vzip2q_s8(v47, v51);
  v57 = vzip1q_s8(v48, v52);
  v58 = vzip2q_s8(v48, v52);
  v59 = vzip1q_s8(v40, v44);
  v60 = vzip1q_s8(v49, v53);
  v61 = vzip2q_s8(v49, v53);
  v62 = vzip1q_s8(v50, v54);
  v63 = vzip2q_s8(v50, v54);
  v64 = vzip1q_s8(v56, v61);
  v65 = vzip2q_s8(v56, v61);
  v66 = vzip1q_s8(v57, v62);
  v67 = vzip2q_s8(v57, v62);
  v68 = vzip1q_s8(v58, v63);
  v69 = vzip2q_s8(v58, v63);
  v70 = vzip1q_s8(v59, vzip1q_s8(v42, v46));
  v71 = vzip1q_s8(vzip1q_s8(v55, v60), 0);
  v72 = vzip1q_s8(vzip2q_s8(v55, v60), 0);
  v73 = vzip1q_s8(v64, 0);
  v74 = vzip1q_s8(v65, 0);
  v75 = vzip1q_s8(v66, 0);
  v76 = vzip1q_s8(v67, 0);
  v77 = vzip1q_s8(v68, 0);
  v78 = vzip1q_s8(v69, 0);
  *v53.i8 = vmovn_s16(v75);
  v79 = vmulq_s16(v75, v26);
  *v55.i8 = vmovn_s16(v76);
  v80.i64[0] = 0x10001000100010;
  v80.i64[1] = 0x10001000100010;
  v81 = vmlal_u8(v80, vmovn_s16(v74), 0x1414141414141414);
  v82 = vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v81, vaddq_s16(v71, v76)), v72, v26), vmovn_s16(v73), 0x1414141414141414), v79), 5uLL);
  *v82.i8 = vqmovun_s16(v82);
  v83 = vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v81, vaddq_s16(v72, v77)), *v53.i8, 0x1414141414141414), vaddq_s16(v76, v73), v26), 5uLL);
  *v83.i8 = vqmovun_s16(v83);
  v84 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v73, *v53.i8, 0x1414141414141414), v78), *v55.i8, 0x1414141414141414), vaddq_s16(v77, v74), v26), v29), 5uLL);
  *v84.i8 = vqmovun_s16(v84);
  v85 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v79, v74), vzip1q_s8(v70, 0)), *v55.i8, 0x1414141414141414), vmovn_s16(v77), 0x1414141414141414), v78, v26), v29), 5uLL);
  *v85.i8 = vqmovun_s16(v85);
  v86 = vzip1q_s16(vzip1q_s8(v82, 0), vzip1q_s8(v84, 0));
  v87 = vzip1q_s16(vzip1q_s8(v83, 0), vzip1q_s8(v85, 0));
  v88 = vzip1q_s16(v86, v87);
  v89 = vzip2q_s16(v86, v87);
  *&result = vrhaddq_u16(vextq_s8(v89, 0, 8uLL), v38).u64[0];
  *a1 = vrhaddq_u16(v88, v34).u64[0];
  *(a1 + a2) = vrhaddq_u16(vextq_s8(v88, 0, 8uLL), v35).u64[0];
  v91 = 2 * a2;
  *(a1 + v91) = vrhaddq_u16(v89, v37).u64[0];
  *(a1 + v91 + a2) = result;
  return result;
}

double sub_27729EA7C(void *a1, unsigned int a2, uint64_t a3, int a4, int64x2_t a5, int64x2_t a6, int64x2_t a7, int64x2_t a8, int64x2_t a9, int64x2_t a10, int64x2_t a11, int64x2_t a12)
{
  v16 = a3 - 2 * a4;
  v17 = a3 - a4;
  v18 = a3 + a4;
  a5.i32[0] = *(v16 + 2);
  v19 = vshlq_n_s64(a5, 0x20uLL);
  v20 = a3 + 2 * a4;
  a6.i32[0] = *(v17 + 2);
  a7.i32[0] = *(a3 + 2);
  a8.i32[0] = *(v18 + 2);
  a9.i32[0] = *(v20 + 2);
  v21 = a3 + 3 * a4;
  a10.i32[0] = *(v21 + 2);
  v22 = a3 + 4 * a4;
  a11.i32[0] = *(v22 + 2);
  v23 = a3 + 5 * a4;
  a12.i32[0] = *(v23 + 2);
  v24 = a3 + 6 * a4;
  v12.i32[0] = *(v24 + 2);
  v13.i32[0] = *(v16 - 2);
  v25 = vorrq_s8(v19, v13);
  v19.i32[0] = *(v17 - 2);
  v14.i32[0] = *(a3 - 2);
  v15.i32[0] = *(v18 - 2);
  v26 = vorrq_s8(vshlq_n_s64(a6, 0x20uLL), v19);
  v27 = vorrq_s8(vshlq_n_s64(a7, 0x20uLL), v14);
  v28 = vorrq_s8(vshlq_n_s64(a8, 0x20uLL), v15);
  v19.i32[0] = *(v20 - 2);
  v29 = vorrq_s8(vshlq_n_s64(a9, 0x20uLL), v19);
  v19.i32[0] = *(v21 - 2);
  v30 = vorrq_s8(vshlq_n_s64(a10, 0x20uLL), v19);
  v19.i32[0] = *(v22 - 2);
  v31 = vorrq_s8(vshlq_n_s64(a11, 0x20uLL), v19);
  v19.i32[0] = *(v23 - 2);
  v32 = vorrq_s8(vshlq_n_s64(a12, 0x20uLL), v19);
  v19.i32[0] = *(v24 - 2);
  v33 = vorrq_s8(vshlq_n_s64(v12, 0x20uLL), v19);
  v34 = vzip1q_s8(v26, 0);
  v35 = vzip1q_s8(v27, 0);
  v36 = vzip1q_s8(v28, 0);
  v37 = vzip1q_s8(v29, 0);
  v38 = vzip1q_s8(v30, 0);
  v39 = vzip1q_s8(v31, 0);
  v40 = vzip1q_s8(v32, 0);
  v41 = vzip1q_s8(v33, 0);
  v28.i64[0] = 0x4000400040004;
  v28.i64[1] = 0x4000400040004;
  v32.i64[0] = 0x14001400140014;
  v32.i64[1] = 0x14001400140014;
  v42 = vmulq_s16(v36, v32);
  v43 = vmulq_s16(v37, v28);
  v44 = vaddq_s16(vmlaq_s16(vmlaq_s16(vzip1q_s8(v25, 0), v34, v28), v35, v32), vaddq_s16(vaddq_s16(v42, v43), v38));
  LOWORD(v17) = *(v17 + 6);
  v45.i64[0] = 0x10001000100010;
  v45.i64[1] = 0x10001000100010;
  v46 = *(a3 + 6);
  v47 = *(v18 + 6);
  v48 = vshrq_n_s16(vaddq_s16(v44, v45), 5uLL);
  LOWORD(v21) = *(v21 + 6);
  LOWORD(v22) = *(v22 + 6);
  LOWORD(v23) = *(v23 + 6);
  v49 = 5 * *(v20 + 6);
  LOWORD(v20) = v21 + *(v16 + 6) - 5 * v17 + 20 * v46 + 20 * v47 - v49;
  LOWORD(v16) = v22 + v17 + 20 * v47 + 4 * v49 - 5 * (v21 + v46);
  LOWORD(v21) = 5 * v21;
  *v48.i8 = vqmovun_s16(v48);
  v50 = vmulq_s16(v37, v32);
  v51 = vmlaq_s16(vaddq_s16(vaddq_s16(v42, v34), vaddq_s16(v50, v39)), vaddq_s16(v38, v35), v28);
  v52 = vshrq_n_s16(vaddq_s16(v51, v45), 5uLL);
  *v52.i8 = vqmovun_s16(v52);
  v53 = vmulq_s16(v38, v32);
  v54 = vmlaq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v50, v35), v53), v40), vaddq_s16(v39, v36), v28);
  v55 = vshrq_n_s16(vaddq_s16(v54, v45), 5uLL);
  *v55.i8 = vqmovun_s16(v55);
  v56 = vaddq_s16(vmlaq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v43, v36), v53), v39, v32), v40, v28), v41);
  v57 = vshrq_n_s16(vaddq_s16(v56, v45), 5uLL);
  *v57.i8 = vqmovun_s16(v57);
  v58 = vextq_s8(v44, 0, 6uLL);
  v59 = v58;
  v59.i16[5] = v20;
  v60 = vpaddq_s32(vmull_s16(*v44.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v44, v44, 8uLL), 131067));
  v61 = vextq_s8(v44, 0, 2uLL);
  v62 = vpaddq_s32(vmull_s16(*v61.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 131067));
  v63 = vextq_s8(v44, 0, 4uLL);
  v64 = vpaddq_s32(vmull_s16(*v63.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v63, v63, 8uLL), 131067));
  v65 = vpaddq_s32(vmull_s16(*v58.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v59, v59, 8uLL), 131067));
  v66 = vzip1q_s32(v60, v64);
  v67 = vzip2q_s32(v60, v64);
  v68 = vzip1q_s32(v62, v65);
  v69 = vzip1q_s32(v67, vzip2q_s32(v62, v65));
  v67.i64[0] = 0x20000000200;
  v67.i64[1] = 0x20000000200;
  v70 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v66, v68), vzip1q_s32(v66, v68)), vaddq_s32(v69, v67)), 0xAuLL);
  v71 = vextq_s8(v51, 0, 6uLL);
  v71.i16[5] = v16;
  v72 = vpaddq_s32(vmull_s16(*v51.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v51, v51, 8uLL), 131067));
  v73 = vextq_s8(v51, 0, 2uLL);
  v74 = vpaddq_s32(vmull_s16(*v73.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v73, v73, 8uLL), 131067));
  v75 = vextq_s8(v51, 0, 4uLL);
  v76 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v77 = vpaddq_s32(vmull_s16(*v71.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v71, v71, 8uLL), 131067));
  v78 = vzip1q_s32(v72, v76);
  v79 = vzip2q_s32(v72, v76);
  v80 = vzip1q_s32(v74, v77);
  v81 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v78, v80), vzip1q_s32(v78, v80)), vaddq_s32(vzip1q_s32(v79, vzip2q_s32(v74, v77)), v67)), 0xAuLL);
  v82 = vextq_s8(v54, 0, 6uLL);
  v82.i16[5] = v23 + v46 + 4 * v49 + 4 * v21 - 5 * (v22 + v47);
  v83 = vpaddq_s32(vmull_s16(*v54.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 131067));
  v84 = vextq_s8(v54, 0, 2uLL);
  v85 = vpaddq_s32(vmull_s16(*v84.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v84, v84, 8uLL), 131067));
  v86 = vextq_s8(v54, 0, 4uLL);
  v87 = vpaddq_s32(vmull_s16(*v86.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v86, v86, 8uLL), 131067));
  v88 = vpaddq_s32(vmull_s16(*v82.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v82, v82, 8uLL), 131067));
  v89 = vzip1q_s32(v83, v87);
  v90 = vzip2q_s32(v83, v87);
  v91 = vzip1q_s32(v85, v88);
  v92 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v89, v91), vzip1q_s32(v89, v91)), vaddq_s32(vzip1q_s32(v90, vzip2q_s32(v85, v88)), v67)), 0xAuLL);
  v93 = vextq_s8(v56, 0, 6uLL);
  v93.i16[5] = *(v24 + 6) + v47 - v49 + 4 * v21 + 20 * v22 - 5 * v23;
  v94 = vpaddq_s32(vmull_s16(*v56.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v56, v56, 8uLL), 131067));
  v95 = vextq_s8(v56, 0, 2uLL);
  v96 = vpaddq_s32(vmull_s16(*v95.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v95, v95, 8uLL), 131067));
  v97 = vextq_s8(v56, 0, 4uLL);
  v98 = vpaddq_s32(vmull_s16(*v97.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v97, v97, 8uLL), 131067));
  v99 = vpaddq_s32(vmull_s16(*v93.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v93, v93, 8uLL), 131067));
  v100 = vzip1q_s32(v94, v98);
  v101 = vzip1q_s32(v96, v99);
  v102 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v100, v101), vzip1q_s32(v100, v101)), vaddq_s32(vzip1q_s32(vzip2q_s32(v94, v98), vzip2q_s32(v96, v99)), v67)), 0xAuLL);
  *&result = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v102), v102))), vextq_s8(vzip1q_s8(v57, 0), 0, 6uLL)).u64[0];
  *a1 = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v70), v70))), vextq_s8(vzip1q_s8(v48, 0), 0, 6uLL)).u64[0];
  *(a1 + a2) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v81), v81))), vextq_s8(vzip1q_s8(v52, 0), 0, 6uLL)).u64[0];
  v104 = 2 * a2;
  *(a1 + v104) = vrhaddq_u16(vmovl_u8(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v92), v92))), vextq_s8(vzip1q_s8(v55, 0), 0, 6uLL)).u64[0];
  *(a1 + v104 + a2) = result;
  return result;
}

double sub_27729EF20(void *a1, unsigned int a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  v15 = *(a3 - 2);
  v14 = a3 - 2;
  v16 = *(v14 + a4);
  v17 = *(v14 + 2 * a4);
  v18 = *(v14 + 3 * a4);
  v19 = *(v14 + 4 * a4);
  a11.i32[0] = *(v14 + 3 - 2 * a4);
  a12.i32[0] = *(v14 + 3 - a4);
  v12.i32[0] = *(v14 + 3 + 5 * a4);
  v13.i32[0] = *(v14 + 3 + 6 * a4);
  v20 = vzip1q_s8(a12, 0);
  v21 = vzip1q_s8(vextq_s8(v15, v15, 3uLL), 0);
  v22 = vzip1q_s8(vextq_s8(v16, v15, 3uLL), 0);
  v23 = vzip1q_s8(vextq_s8(v17, v15, 3uLL), 0);
  v24 = vzip1q_s8(vextq_s8(v18, v15, 3uLL), 0);
  v25 = vzip1q_s8(vextq_s8(v19, v15, 3uLL), 0);
  v26 = vzip1q_s8(v12, 0);
  v27.i64[0] = 0x4000400040004;
  v27.i64[1] = 0x4000400040004;
  v28.i64[0] = 0x14001400140014;
  v28.i64[1] = 0x14001400140014;
  v29 = vmulq_s16(v23, v27);
  v30.i64[0] = 0x10001000100010;
  v30.i64[1] = 0x10001000100010;
  v31.i64[0] = 0x10001000100010;
  v31.i64[1] = 0x10001000100010;
  v32 = vmlaq_s16(v31, v22, v28);
  v33 = vaddq_s16(v32, v25);
  v34 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(v32, v21, v28), vaddq_s16(v29, v24)), vzip1q_s8(a11, 0)), v20, v27), 5uLL)));
  v35 = vmulq_s16(v23, v28);
  v36 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(v33, v35), vaddq_s16(v24, v21), v27), v20), 5uLL)));
  v37 = vmulq_s16(v24, v28);
  v38 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v35, v21), v37), vaddq_s16(v25, v22), v27), vaddq_s16(v26, v30)), 5uLL)));
  v39 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v29, v22), v37), v25, v28), v26, v27), vaddq_s16(vzip1q_s8(v13, 0), v30)), 5uLL)));
  v40 = vzip1q_s8(v16, 0);
  v41 = vdupq_laneq_s8(v16, 8);
  v42 = vzip1q_s8(v17, 0);
  v43 = vdupq_laneq_s8(v17, 8);
  v44 = vzip1q_s8(v18, 0);
  v45 = vdupq_laneq_s8(v18, 8);
  v46 = vzip1q_s8(v19, 0);
  v47 = vdupq_laneq_s8(v19, 8);
  v48 = vzip1q_s8(v40, 0);
  v41.i8[1] = 0;
  v49 = vzip2q_s8(v40, 0);
  v50 = vzip1q_s8(v42, 0);
  v51 = vzip2q_s8(v42, 0);
  v43.i8[1] = 0;
  v52 = vzip1q_s8(v44, 0);
  v53 = vzip2q_s8(v44, 0);
  v45.i8[1] = 0;
  v54 = vzip1q_s8(v46, 0);
  v47.i8[1] = 0;
  v55 = vzip2q_s8(v46, 0);
  v56 = vzip1q_s8(v48, v52);
  v57 = vzip2q_s8(v48, v52);
  v58 = vzip1q_s8(v49, v53);
  v59 = vzip2q_s8(v49, v53);
  v60 = vzip1q_s8(v41, v45);
  v61 = vzip1q_s8(v50, v54);
  v62 = vzip2q_s8(v50, v54);
  v63 = vzip1q_s8(v51, v55);
  v64 = vzip2q_s8(v51, v55);
  v65 = vzip1q_s8(v57, v62);
  v66 = vzip2q_s8(v57, v62);
  v67 = vzip1q_s8(v58, v63);
  v68 = vzip2q_s8(v58, v63);
  v69 = vzip1q_s8(v59, v64);
  v70 = vzip2q_s8(v59, v64);
  v71 = vzip1q_s8(v60, vzip1q_s8(v43, v47));
  v72 = vzip1q_s8(vzip1q_s8(v56, v61), 0);
  v73 = vzip1q_s8(vzip2q_s8(v56, v61), 0);
  v74 = vzip1q_s8(v65, 0);
  v75 = vzip1q_s8(v66, 0);
  v76 = vzip1q_s8(v67, 0);
  v77 = vzip1q_s8(v68, 0);
  v78 = vzip1q_s8(v69, 0);
  v79 = vzip1q_s8(v70, 0);
  *v54.i8 = vmovn_s16(v76);
  v80 = vmulq_s16(v76, v27);
  *v56.i8 = vmovn_s16(v77);
  v81.i64[0] = 0x10001000100010;
  v81.i64[1] = 0x10001000100010;
  v82 = vmlal_u8(v81, vmovn_s16(v75), 0x1414141414141414);
  v83 = vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v82, vaddq_s16(v72, v77)), v73, v27), vmovn_s16(v74), 0x1414141414141414), v80), 5uLL);
  *v83.i8 = vqmovun_s16(v83);
  v84 = vshrq_n_s16(vmlaq_s16(vmlal_u8(vaddq_s16(v82, vaddq_s16(v73, v78)), *v54.i8, 0x1414141414141414), vaddq_s16(v77, v74), v27), 5uLL);
  *v84.i8 = vqmovun_s16(v84);
  v85 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vaddq_s16(vmlal_u8(v74, *v54.i8, 0x1414141414141414), v79), *v56.i8, 0x1414141414141414), vaddq_s16(v78, v75), v27), v30), 5uLL);
  *v85.i8 = vqmovun_s16(v85);
  v86 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(vaddq_s16(v80, v75), vzip1q_s8(v71, 0)), *v56.i8, 0x1414141414141414), vmovn_s16(v78), 0x1414141414141414), v79, v27), v30), 5uLL);
  *v86.i8 = vqmovun_s16(v86);
  v87 = vzip1q_s16(vzip1q_s8(v83, 0), vzip1q_s8(v85, 0));
  v88 = vzip1q_s16(vzip1q_s8(v84, 0), vzip1q_s8(v86, 0));
  v89 = vzip1q_s16(v87, v88);
  v90 = vzip2q_s16(v87, v88);
  *&result = vrhaddq_u16(vextq_s8(v90, 0, 8uLL), v39).u64[0];
  *a1 = vrhaddq_u16(v89, v34).u64[0];
  *(a1 + a2) = vrhaddq_u16(vextq_s8(v89, 0, 8uLL), v36).u64[0];
  v92 = 2 * a2;
  *(a1 + v92) = vrhaddq_u16(v90, v38).u64[0];
  *(a1 + v92 + a2) = result;
  return result;
}

double sub_27729F200(_OWORD *a1, unsigned __int32 *a2, int a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  a4.i32[0] = *(a2 + a3);
  a5.i32[0] = *(a2 + 2 * a3);
  a6.i32[0] = *(a2 + 3 * a3);
  a7.i32[0] = *a2;
  *&v7 = vzip1q_s8(a7, 0).u64[0];
  a4.i64[0] = vzip1q_s8(a4, 0).u64[0];
  *&v8 = vzip1q_s8(a5, 0).u64[0];
  *(&v7 + 1) = a4.i64[0];
  *(&v8 + 1) = vzip1q_s8(a6, 0).u64[0];
  *a1 = v7;
  a1[1] = v8;
  return *a4.i64;
}

uint16x8_t sub_27729F23C(uint16x8_t *a1, unsigned int *a2, int a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  a4.i32[0] = *(a2 - 2 * a3);
  a5.i32[0] = *(a2 - a3);
  a7.i32[0] = *(a2 + a3);
  a9.i32[0] = *(a2 + 2 * a3);
  a10.i32[0] = *(a2 + 3 * a3);
  a11.i32[0] = a2[a3];
  v11.i32[0] = *(a2 + 5 * a3);
  v12.i32[0] = *(a2 + 6 * a3);
  v13 = vzip1q_s8(a4, 0);
  v14 = vzip1q_s8(a5, 0);
  v15 = vzip1q_s8(*a2, 0);
  v16 = vzip1q_s8(a7, 0);
  v17 = vzip1q_s8(a9, 0);
  v18 = vzip1q_s8(a10, 0);
  v19 = vzip1q_s8(a11, 0);
  v20 = vzip1q_s8(v11, 0);
  v21.i64[0] = 0x4000400040004;
  v21.i64[1] = 0x4000400040004;
  v22 = vmovn_s16(v17);
  v23 = vmulq_s16(v17, v21);
  v24 = vmovn_s16(v18);
  v25.i64[0] = 0x10001000100010;
  v25.i64[1] = 0x10001000100010;
  v26.i64[0] = 0x10001000100010;
  v26.i64[1] = 0x10001000100010;
  v27 = vmlal_u8(v26, vmovn_s16(v16), 0x1414141414141414);
  v28.i64[0] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v27, v13), v14, v21), vmovn_s16(v15), 0x1414141414141414), vaddq_s16(v23, v18)), 5uLL))).u64[0];
  *v13.i8 = vmovn_s16(v19);
  v14.i64[0] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vaddq_s16(vmlal_u8(vaddq_s16(v27, v14), v22, 0x1414141414141414), v19), vaddq_s16(v18, v15), v21), 5uLL))).u64[0];
  v19.i64[0] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vmlal_u8(vmlal_u8(v15, v22, 0x1414141414141414), v24, 0x1414141414141414), v20), vaddq_s16(v19, v16), v21), v25), 5uLL))).u64[0];
  v28.i64[1] = v14.i64[0];
  v15.i64[1] = v16.i64[0];
  v19.i64[1] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(v23, v16), v24, 0x1414141414141414), *v13.i8, 0x1414141414141414), v20, v21), vaddq_s16(vzip1q_s8(v12, 0), v25)), 5uLL))).u64[0];
  v17.i64[1] = v18.i64[0];
  result = vrhaddq_u16(v19, v17);
  *a1 = vrhaddq_u16(v28, v15);
  a1[1] = result;
  return result;
}

double sub_27729F394(int16x8_t *a1, unsigned int *a2, int a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  a5.i32[0] = *(a2 - 2 * a3);
  a6.i32[0] = *(a2 - a3);
  a8.i32[0] = *(a2 + a3);
  a9.i32[0] = *(a2 + 2 * a3);
  a10.i32[0] = *(a2 + 3 * a3);
  a11.i32[0] = a2[a3];
  v11.i32[0] = *(a2 + 5 * a3);
  v12.i32[0] = *(a2 + 6 * a3);
  v13 = vzip1q_s8(a6, 0);
  v14 = vzip1q_s8(*a2, 0);
  v15 = vzip1q_s8(a8, 0);
  v16 = vzip1q_s8(a9, 0);
  v17 = vzip1q_s8(a10, 0);
  v18 = vzip1q_s8(a11, 0);
  v19 = vzip1q_s8(v11, 0);
  v20.i64[0] = 0x4000400040004;
  v20.i64[1] = 0x4000400040004;
  v21 = vmovn_s16(v16);
  v22 = vmulq_s16(v16, v20);
  v23 = vmovn_s16(v17);
  v24.i64[0] = 0x10001000100010;
  v24.i64[1] = 0x10001000100010;
  v25.i64[0] = 0x10001000100010;
  v25.i64[1] = 0x10001000100010;
  v26 = vmlal_u8(v25, vmovn_s16(v15), 0x1414141414141414);
  v27 = vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v26, vzip1q_s8(a5, 0)), v13, v20), vmovn_s16(v14), 0x1414141414141414), vaddq_s16(v22, v17)), 5uLL);
  *v27.i8 = vqmovun_s16(v27);
  v27.i64[0] = vzip1q_s8(v27, 0).u64[0];
  v28 = vshrq_n_s16(vmlaq_s16(vaddq_s16(vmlal_u8(vaddq_s16(v26, v13), v21, 0x1414141414141414), v18), vaddq_s16(v17, v14), v20), 5uLL);
  *v28.i8 = vqmovun_s16(v28);
  v29 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vmlal_u8(vmlal_u8(v14, v21, 0x1414141414141414), v23, 0x1414141414141414), v19), vaddq_s16(v18, v15), v20), v24), 5uLL);
  *v29.i8 = vqmovun_s16(v29);
  v29.i64[0] = vzip1q_s8(v29, 0).u64[0];
  v30 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(v22, v15), v23, 0x1414141414141414), vmovn_s16(v18), 0x1414141414141414), v19, v20), vaddq_s16(vzip1q_s8(v12, 0), v24)), 5uLL);
  *v30.i8 = vqmovun_s16(v30);
  *&result = vzip1q_s8(v30, 0).u64[0];
  v27.i64[1] = vzip1q_s8(v28, 0).u64[0];
  *&v29.i64[1] = result;
  *a1 = v27;
  a1[1] = v29;
  return result;
}

uint16x8_t sub_27729F4D8(uint16x8_t *a1, unsigned int *a2, int a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  a4.i32[0] = *(a2 - 2 * a3);
  a5.i32[0] = *(a2 - a3);
  a7.i32[0] = *(a2 + a3);
  a9.i32[0] = *(a2 + 2 * a3);
  a10.i32[0] = *(a2 + 3 * a3);
  a11.i32[0] = a2[a3];
  v11.i32[0] = *(a2 + 5 * a3);
  v12.i32[0] = *(a2 + 6 * a3);
  v13 = vzip1q_s8(a4, 0);
  v14 = vzip1q_s8(a5, 0);
  v15 = vzip1q_s8(*a2, 0);
  v16 = vzip1q_s8(a7, 0);
  v17 = vzip1q_s8(a9, 0);
  v18 = vzip1q_s8(a10, 0);
  v19 = vzip1q_s8(a11, 0);
  v20 = vzip1q_s8(v11, 0);
  v21.i64[0] = 0x4000400040004;
  v21.i64[1] = 0x4000400040004;
  v22 = vmovn_s16(v17);
  v23 = vmulq_s16(v17, v21);
  v24 = vmovn_s16(v18);
  v25.i64[0] = 0x10001000100010;
  v25.i64[1] = 0x10001000100010;
  v26.i64[0] = 0x10001000100010;
  v26.i64[1] = 0x10001000100010;
  v27 = vmlal_u8(v26, vmovn_s16(v16), 0x1414141414141414);
  v28.i64[0] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlal_u8(vmlaq_s16(vaddq_s16(v27, v13), v14, v21), vmovn_s16(v15), 0x1414141414141414), vaddq_s16(v23, v18)), 5uLL))).u64[0];
  v13.i64[0] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vmlaq_s16(vaddq_s16(vmlal_u8(vaddq_s16(v27, v14), v22, 0x1414141414141414), v19), vaddq_s16(v18, v15), v21), 5uLL))).u64[0];
  v14.i64[0] = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vmlal_u8(vmlal_u8(v15, v22, 0x1414141414141414), v24, 0x1414141414141414), v20), vaddq_s16(v19, v16), v21), v25), 5uLL))).u64[0];
  v29 = vmovl_u8(vqmovun_s16(vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlal_u8(vmlal_u8(vaddq_s16(v23, v16), v24, 0x1414141414141414), vmovn_s16(v19), 0x1414141414141414), v20, v21), vaddq_s16(vzip1q_s8(v12, 0), v25)), 5uLL))).u64[0];
  v28.i64[1] = v13.i64[0];
  v16.i64[1] = v17.i64[0];
  v14.i64[1] = v29;
  v18.i64[1] = v19.i64[0];
  result = vrhaddq_u16(v14, v18);
  *a1 = vrhaddq_u16(v28, v16);
  a1[1] = result;
  return result;
}

double sub_27729F62C(int16x8_t *a1, uint64_t a2, int a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v21 = a2 - 2 * a3;
  v22 = a2 - a3;
  v23 = a2 + a3;
  v24 = a2 + 2 * a3;
  v25 = a2 + 3 * a3;
  v26 = a2 + 4 * a3;
  v27 = a2 + 5 * a3;
  v28 = a2 + 6 * a3;
  a4.i32[0] = *(v21 - 2);
  a5.i32[0] = *(v22 - 2);
  a6.i32[0] = *(a2 - 2);
  a7.i32[0] = *(v23 - 2);
  a8.i32[0] = *(v24 - 2);
  a9.i32[0] = *(v25 - 2);
  a10.i32[0] = *(v26 - 2);
  a11.i32[0] = *(v27 - 2);
  v11.i32[0] = *(v28 - 2);
  v12.i32[0] = *(v21 + 2);
  v13.i32[0] = *(v22 + 2);
  v14.i32[0] = *(a2 + 2);
  v15.i32[0] = *(v23 + 2);
  v16.i32[0] = *(v24 + 2);
  v17.i32[0] = *(v25 + 2);
  v18.i32[0] = *(v26 + 2);
  v19.i32[0] = *(v27 + 2);
  v20.i32[0] = *(v28 + 2);
  v29 = *(v22 + 6);
  v30 = *(a2 + 6);
  LOWORD(v23) = *(v23 + 6);
  LOWORD(v25) = *(v25 + 6);
  LOWORD(v26) = *(v26 + 6);
  LOWORD(v27) = *(v27 + 6);
  LOWORD(v22) = v25 + *(v21 + 6) - 5 * v29 + 20 * v30 + 20 * v23 - 5 * *(v24 + 6);
  LOWORD(v21) = v26 + v29 + 20 * v23 + 20 * *(v24 + 6) - 5 * (v25 + v30);
  LOWORD(v25) = 5 * v25;
  v31 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v13, 0x20uLL), a5), 0);
  v32 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v14, 0x20uLL), a6), 0);
  v33 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v15, 0x20uLL), a7), 0);
  v34 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v16, 0x20uLL), a8), 0);
  v35 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v17, 0x20uLL), a9), 0);
  v36 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v18, 0x20uLL), a10), 0);
  v37 = vzip1q_s8(vorrq_s8(vshlq_n_s64(v19, 0x20uLL), a11), 0);
  v38.i64[0] = 0x4000400040004;
  v38.i64[1] = 0x4000400040004;
  v39.i64[0] = 0x14001400140014;
  v39.i64[1] = 0x14001400140014;
  v40 = vmulq_s16(v33, v39);
  v41 = vmulq_s16(v34, v38);
  v42 = vaddq_s16(vmlaq_s16(vmlaq_s16(vzip1q_s8(vorrq_s8(vshlq_n_s64(v12, 0x20uLL), a4), 0), v31, v38), v32, v39), vaddq_s16(vaddq_s16(v40, v41), v35));
  v43 = vmulq_s16(v34, v39);
  v44 = vmlaq_s16(vaddq_s16(vaddq_s16(v40, v31), vaddq_s16(v43, v36)), vaddq_s16(v35, v32), v38);
  v45 = vmulq_s16(v35, v39);
  v46 = vmlaq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v43, v32), v45), v37), vaddq_s16(v36, v33), v38);
  v47 = vaddq_s16(vmlaq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v41, v33), v45), v36, v39), v37, v38), vzip1q_s8(vorrq_s8(vshlq_n_s64(v20, 0x20uLL), v11), 0));
  v48 = vextq_s8(v42, 0, 6uLL);
  v49 = v48;
  v49.i16[5] = v22;
  v50 = vpaddq_s32(vmull_s16(*v42.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v42, v42, 8uLL), 131067));
  v51 = vextq_s8(v42, 0, 2uLL);
  v52 = vpaddq_s32(vmull_s16(*v51.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v51, v51, 8uLL), 131067));
  v53 = vextq_s8(v42, 0, 4uLL);
  v54 = vpaddq_s32(vmull_s16(*v53.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v53, v53, 8uLL), 131067));
  v55 = vpaddq_s32(vmull_s16(*v48.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 131067));
  v56 = vzip1q_s32(v50, v54);
  v57 = vzip2q_s32(v50, v54);
  v58 = vzip1q_s32(v52, v55);
  v59 = vzip1q_s32(v57, vzip2q_s32(v52, v55));
  v60 = vaddq_s32(vzip2q_s32(v56, v58), vzip1q_s32(v56, v58));
  v56.i64[0] = 0x20000000200;
  v56.i64[1] = 0x20000000200;
  v61 = vshrq_n_s32(vaddq_s32(v60, vaddq_s32(v59, v56)), 0xAuLL);
  *v61.i8 = vqmovn_s32(v61);
  *v61.i8 = vqmovun_s16(v61);
  v61.i64[0] = vzip1q_s8(v61, 0).u64[0];
  v62 = vextq_s8(v44, 0, 6uLL);
  v62.i16[5] = v21;
  v63 = vpaddq_s32(vmull_s16(*v44.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v44, v44, 8uLL), 131067));
  v64 = vextq_s8(v44, 0, 2uLL);
  v65 = vpaddq_s32(vmull_s16(*v64.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v64, v64, 8uLL), 131067));
  v66 = vextq_s8(v44, 0, 4uLL);
  v67 = vpaddq_s32(vmull_s16(*v66.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v66, v66, 8uLL), 131067));
  v68 = vpaddq_s32(vmull_s16(*v62.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v62, v62, 8uLL), 131067));
  v69 = vzip1q_s32(v63, v67);
  v70 = vzip2q_s32(v63, v67);
  v71 = vzip1q_s32(v65, v68);
  v72 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v69, v71), vzip1q_s32(v69, v71)), vaddq_s32(vzip1q_s32(v70, vzip2q_s32(v65, v68)), v56)), 0xAuLL);
  *v72.i8 = vqmovn_s32(v72);
  *v72.i8 = vqmovun_s16(v72);
  v73 = vextq_s8(v46, 0, 6uLL);
  v73.i16[5] = v27 + v30 + 20 * *(v24 + 6) + 4 * v25 - 5 * (v26 + v23);
  v74 = vpaddq_s32(vmull_s16(*v46.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 131067));
  v75 = vextq_s8(v46, 0, 2uLL);
  v76 = vpaddq_s32(vmull_s16(*v75.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 131067));
  v77 = vextq_s8(v46, 0, 4uLL);
  v78 = vpaddq_s32(vmull_s16(*v77.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 131067));
  v79 = vpaddq_s32(vmull_s16(*v73.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v73, v73, 8uLL), 131067));
  v80 = vzip1q_s32(v74, v78);
  v81 = vzip2q_s32(v74, v78);
  v82 = vzip1q_s32(v76, v79);
  v83 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v80, v82), vzip1q_s32(v80, v82)), vaddq_s32(vzip1q_s32(v81, vzip2q_s32(v76, v79)), v56)), 0xAuLL);
  *v83.i8 = vqmovn_s32(v83);
  *v83.i8 = vqmovun_s16(v83);
  v83.i64[0] = vzip1q_s8(v83, 0).u64[0];
  v84 = vextq_s8(v47, 0, 6uLL);
  v84.i16[5] = *(v28 + 6) + v23 - 5 * *(v24 + 6) + 4 * v25 + 20 * v26 - 5 * v27;
  v85 = vpaddq_s32(vmull_s16(*v47.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 131067));
  v86 = vextq_s8(v47, 0, 2uLL);
  v87 = vpaddq_s32(vmull_s16(*v86.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v86, v86, 8uLL), 131067));
  v88 = vextq_s8(v47, 0, 4uLL);
  v89 = vpaddq_s32(vmull_s16(*v88.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v88, v88, 8uLL), 131067));
  v90 = vpaddq_s32(vmull_s16(*v84.i8, 0x140014FFFB0001), vmull_s16(*&vextq_s8(v84, v84, 8uLL), 131067));
  v91 = vzip1q_s32(v85, v89);
  v92 = vzip1q_s32(v87, v90);
  v93 = vshrq_n_s32(vaddq_s32(vaddq_s32(vzip2q_s32(v91, v92), vzip1q_s32(v91, v92)), vaddq_s32(vzip1q_s32(vzip2q_s32(v85, v89), vzip2q_s32(v87, v90)), v56)), 0xAuLL);
  *v93.i8 = vqmovn_s32(v93);
  *v93.i8 = vqmovun_s16(v93);
  *&result = vzip1q_s8(v93, 0).u64[0];
  v61.i64[1] = vzip1q_s8(v72, 0).u64[0];
  *&v83.i64[1] = result;
  *a1 = v61;
  a1[1] = v83;
  return result;
}

uint64_t sub_27729FA50(int8x16_t *a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 4294958327;
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      if (a5 | a4)
      {
        if (a4 >= 1)
        {
          v41 = a2;
        }

        else
        {
          v41 = 0;
        }

        v42 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(*(a1 - v41))));
        v43 = vqtbl1q_s8(vaddq_s16(vaddq_s16(v42, xmmword_2773B4420), vextq_s8(v42, 0, 8uLL)), xmmword_2773B3DC0);
        v44 = vzip1q_s16(v43, v43);
        if (a5)
        {
          v45 = 0;
          v46 = &a1[-1].u8[15];
          v47 = 8;
          v48 = 8;
          do
          {
            v48 += *v46;
            v45 += v46[a2];
            v46 += 2 * a2;
            --v47;
          }

          while (v47);
          v49 = v45 + v48;
          if (a4 < 1)
          {
            v50 = vdupq_n_s16(v49 >> 4);
          }

          else
          {
            v50 = vshrq_n_u16(vaddq_s16(vdupq_n_s16(v49), v44), 5uLL);
          }
        }

        else
        {
          v50 = vshrq_n_u16(v44, 4uLL);
        }
      }

      else
      {
        v50.i64[0] = 0x80008000800080;
        v50.i64[1] = 0x80008000800080;
      }

      v51 = 0;
      do
      {
        *a1 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a3 + v51), v50)), vaddq_s16(*(a3 + v51 + 16), v50));
        v51 += 32;
        a1 = (a1 + (a2 & 0xFFFFFFF0));
      }

      while (v51 != 512);
      return 0;
    }

    if (a6 == 3)
    {
      v9 = 0;
      v10 = 0;
      v11 = (a1 - a2);
      v12 = vzip1q_s8(*v11, 0);
      v13 = vextq_s8(v12, v12, 0xEuLL);
      v13.i16[0] = v11[-1].u8[15];
      v14 = vsubq_s16(vzip2q_s8(*v11, 0), vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v13, xmmword_2773B4380), xmmword_2773B4410), xmmword_2773B4400));
      v15 = vpaddq_s32(vmull_s16(*v14.i8, 0x14000F000A0005), vmull_s16(*&vextq_s8(v14, v14, 8uLL), 0x280023001E0019));
      v16 = vaddq_s32(v15, vqtbl1q_s8(v15, xmmword_2773B4400));
      v17.i64[0] = 0x2000000020;
      v17.i64[1] = 0x2000000020;
      v18 = vshrq_n_s32(vaddq_s32(vqtbl1q_s8(v16, xmmword_2773B41B0), vaddq_s32(v16, v17)), 6uLL);
      v19 = vqmovn_high_s32(vqmovn_s32(v18), v18);
      v20 = vmlaq_s16(vdupq_n_s16(16 * (a1->u8[~a2 + 16 * a2] + a1->u8[15 - a2])), v19, xmmword_2773B3D10);
      v21 = &a1[-1].u8[15];
      v22 = 2 * a2;
      v23 = -2;
      do
      {
        v9 += (v23 - 6) * v21[-a2];
        v10 += (v23 - 5) * *v21;
        v21 += v22;
        v23 += 2;
      }

      while (v23 < 6);
      v24 = vshlq_n_s16(v19, 3uLL);
      v25 = (a1 + 8 * a2 - 1);
      v26 = -2;
      do
      {
        v9 += (v26 + 3) * v25->u8[0];
        v10 += (v26 + 4) * v25->u8[a2];
        v25 = (v25 + v22);
        v26 += 2;
      }

      while (v26 < 6);
      v27 = 0;
      v28 = vaddq_s16(v20, v24);
      v29 = vdupq_n_s16((5 * (v9 + v10) + 32) >> 6);
      v30.i64[0] = 0x10001000100010;
      v30.i64[1] = 0x10001000100010;
      v31 = vmlaq_s16(v30, v29, xmmword_2773B3D10);
      v32 = vaddq_s16(vshlq_n_s16(v29, 3uLL), v31);
      v33.i64[0] = 0xFF00FF00FF00FFLL;
      v33.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v34 = vqtbl1q_s8(v31, xmmword_2773B3DC0);
        v35 = vzip1q_s16(v34, v34);
        *a1 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a3 + v27), vmaxq_s16(vminq_s16(vshrq_n_s16(vaddq_s16(v35, v20), 5uLL), v33), 0))), vaddq_s16(*(a3 + v27 + 16), vmaxq_s16(vminq_s16(vshrq_n_s16(vaddq_s16(v28, v35), 5uLL), v33), 0)));
        v31 = vextq_s8(v31, v32, 2uLL);
        v32 = vextq_s8(v32, v32, 2uLL);
        a1 = (a1 + a2);
        v27 += 32;
      }

      while (v27 != 512);
      return 0;
    }
  }

  else
  {
    if (!a6)
    {
      v36 = 0;
      v37 = a2 & 0xFFFFFFF0;
      v38 = *(a1 - v37);
      v39 = vzip1q_s8(v38, 0);
      v40 = vzip2q_s8(v38, 0);
      do
      {
        *a1 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a3 + v36), v39)), vaddq_s16(*(a3 + v36 + 16), v40));
        a1 = (a1 + v37);
        v36 += 32;
      }

      while (v36 != 512);
      return 0;
    }

    if (a6 == 1)
    {
      v7 = 0;
      v8 = 0uLL;
      do
      {
        v8.i16[0] = a1[-1].u8[15] | (a1[-1].u8[15] << 8);
        v8 = vzip1q_s8(vqtbl1q_s8(v8, xmmword_2773B3DC0), 0);
        *a1 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*(a3 + v7), v8)), vaddq_s16(*(a3 + v7 + 16), v8));
        a1 = (a1 + (a2 & 0xFFFFFFF0));
        v7 += 32;
      }

      while (v7 != 512);
      return 0;
    }
  }

  return v6;
}

uint64_t sub_27729FDF8(_DWORD *a1, uint64_t a2, int16x8_t *a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 72);
  v7 = a1[206];
  v8 = a1[207];
  if (*(a2 + 20) && *(a2 + 22))
  {
    v9 = *(v6 + 38);
    LODWORD(v10) = 2 * v9;
    v11 = *v6;
    v12 = *(v6 + 5) + (16 * v7);
    v13 = (v12 + (8 * v8 * v9));
    if (v11)
    {
      v13 = (v12 + (16 * v8 * v9));
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v15 = (v12 + v9 + ((v8 << v14) * v9));
    if (!*(a2 + 21))
    {
      v15 = v13;
    }
  }

  else
  {
    LODWORD(v10) = *(v6 + 38);
    if (*(a2 + 23) == 1)
    {
      v18 = a1[205];
      v16 = *(v6 + 5) + 16 * v10 * (v18 / (2 * *(a2 + 16))) + ((8 * (v18 % (2 * *(a2 + 16)))) & 0xFFFFFFF0);
      if (v18)
      {
        v17 = (8 * v10);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v16 = *(v6 + 5) + (16 * v7);
      v17 = (8 * v8 * v10);
    }

    v15 = (v16 + v17);
  }

  result = 4294958327;
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v71 = 0;
      v72 = (v15 - v10);
      v73 = vzip1q_s8(*v72, 0);
      v74 = vzip2q_s8(*v72, 0);
      do
      {
        *v15 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a3[v71], v73)), vaddq_s16(a3[v71 + 1], v74));
        v15 = (v15 + v10);
        v71 += 2;
      }

      while ((v71 * 16) != 256);
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }

      v22 = 0;
      v23 = vqtbl1q_s8(*(v15 - v10), xmmword_2773B4370);
      v23.i16[0] = *(&v15[-1].i16[7] - v10);
      v24 = vqtbl1q_s8(vqtbl1q_s8(vsubq_s16(vzip2q_s8(v23, 0), vzip1q_s8(vqtbl1q_s8(v23, xmmword_2773B4380), 0)), xmmword_2773B4390), xmmword_2773B43A0);
      v25 = vpaddq_s32(vmull_s16(*v24.i8, 0x22001100220011), vmull_s16(*&vextq_s8(v24, v24, 8uLL), 0x44003300440033));
      v26.i64[0] = 0x1000000010;
      v26.i64[1] = 0x1000000010;
      v27 = vqtbl1q_s8(vqtbl1q_s8(vshrq_n_s32(vaddq_s32(vaddq_s32(v25, v26), vextq_s8(v25, 0, 8uLL)), 5uLL), xmmword_2773B43B0), xmmword_2773B3DF0);
      v28 = &v15[-1].u8[v10 + 14];
      v29 = *v28;
      v30 = v28[1];
      v31 = &v28[v10];
      v32 = *v31;
      v33 = v31[1];
      v34 = &v31[(2 * v10)];
      v35 = *v34;
      v36 = v34[1];
      v37 = &v34[v10];
      v38 = *v37;
      v39 = v37[1];
      v40 = &v37[v10];
      v41 = vdupq_n_s32((34816 * (3 * (v40[1] - v15[-1].u8[15]) - v33 + v36 + 2 * (v39 - v30) + 4 * (v40[v10 + 1] - v15[-1].u8[-v10 + 15])) + 0x8000) & 0xFFFF0000 | ((17 * (3 * (*v40 - v15[-1].u8[14]) - v32 + v35 + 2 * (v38 - v29) + 4 * (v40[v10] - v15[-1].u8[-v10 + 14])) + 16) >> 5));
      v42.i64[0] = 0x2000200020002;
      v42.i64[1] = 0x2000200020002;
      v43 = vmlaq_s16(vdupq_n_s32((16 * (v15->u8[-v10 + 14] + v15->u8[8 * v10 - v10 - 2])) | ((v15->u8[-v10 + 15] + v15->u8[8 * v10 - v10 - 1]) << 20)), v41, v42);
      v42.i64[0] = 0x10001000100010;
      v42.i64[1] = 0x10001000100010;
      v44 = vaddq_s16(v43, v42);
      v45 = vmlaq_s16(v44, v27, xmmword_2773B3D30);
      v46 = vmlaq_s16(v44, v27, xmmword_2773B3D40);
      v47.i64[0] = 0xFF00FF00FF00FFLL;
      v47.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v48 = vshrq_n_s16(v45, 5uLL);
        v45 = vaddq_s16(v45, v41);
        v49 = vshrq_n_s16(v46, 5uLL);
        v46 = vaddq_s16(v46, v41);
        *v15 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a3[v22], vmaxq_s16(vminq_s16(v48, v47), 0))), vaddq_s16(a3[v22 + 1], vmaxq_s16(vminq_s16(v49, v47), 0)));
        v15 = (v15 + v10);
        v22 += 2;
      }

      while ((v22 * 16) != 256);
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }

    v20 = 0;
    do
    {
      v21 = vqtbl1q_s8(((v15[-1].u16[7] | (v15[-1].u16[7] << 8)) & 0xFF00FFLL), xmmword_2773B3DF0);
      *v15 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a3[v20], v21)), vaddq_s16(a3[v20 + 1], v21));
      v15 = (v15 + v10);
      v20 += 2;
    }

    while ((v20 * 16) != 256);
  }

  else
  {
    if (a5 | a4)
    {
      if (a4 >= 1)
      {
        v50 = v10;
      }

      else
      {
        v50 = 0;
      }

      v51 = (v15 - v50);
      v52 = (&v15[-1].i16[7] + (4 * v10));
      v53 = (2 * v10);
      v54 = (3 * v10);
      v55 = *v51;
      v56 = (&v15[-1].i16[7] + v53);
      v57 = (&v15[-1].i16[7] + v54);
      v58 = (v52 + v10);
      v59 = (v52 + v53);
      v61.i16[4] = *v52;
      v60 = (v52 + v54);
      v10 = v10;
      v62 = *&v55 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      v63 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8((*&v55 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)))));
      v55.i16[0] = v15[-1].i16[7];
      v55.i16[1] = *(&v15[-1].i16[7] + v10);
      v55.i16[2] = *v56;
      v55.i16[3] = *v57;
      v55.i16[4] = v61.u8[8];
      v55.i16[5] = *v58;
      v55.i16[6] = *v59;
      v55.i16[7] = *v60;
      v64 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v55)));
      v61.i16[0] = v15[-1].i16[7] & 0xFF00;
      v61.i16[1] = *(&v15[-1].i16[7] + v10) & 0xFF00;
      v61.i16[2] = *v56 & 0xFF00;
      v61.i16[3] = *v57 & 0xFF00;
      v61.i16[4] &= 0xFF00u;
      v61.i16[5] = *v58 & 0xFF00;
      v61.i16[6] = *v59 & 0xFF00;
      v61.i16[7] = *v60 & 0xFF00;
      v65 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v61)));
      v66 = vaddq_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v62))), xmmword_2773B43C0);
      v67 = vaddq_s32(v63, xmmword_2773B43C0);
      v68 = vaddq_s32(v64, xmmword_2773B43C0);
      v69 = vaddq_s32(v65, xmmword_2773B43C0);
      if (a4 >= 1 && a5)
      {
        v70 = vorrq_s8(vshrq_n_u16(vorrq_s8(vextq_s8(0, vzip2q_s16(v68, v69), 8uLL), vextq_s8(0, vzip2q_s16(v66, v67), 0xCuLL)), 2uLL), vshrq_n_u16(vqtbl1q_s8(vorrq_s8(vextq_s8(0, vaddq_s32(v69, v67), 0xEuLL), vaddq_s32(v68, v66)), xmmword_2773B4230), 3uLL));
      }

      else
      {
        if (a5)
        {
          v75 = vorrq_s8(vextq_s8(0, v69, 0xEuLL), v68);
          v76 = xmmword_2773B43E0;
        }

        else
        {
          v75 = vorrq_s8(vextq_s8(0, v67, 0xEuLL), v66);
          v76 = xmmword_2773B43D0;
        }

        v70 = vshrq_n_u16(vqtbl1q_s8(v75, v76), 2uLL);
      }
    }

    else
    {
      v53 = (2 * v10);
      v70.i64[0] = 0x80008000800080;
      v70.i64[1] = 0x80008000800080;
      v10 = v10;
    }

    v77 = 1;
    do
    {
      v78 = v77;
      v79 = vqtbl1q_s8(v70, xmmword_2773B3DF0);
      v80 = vqtbl1q_s8(v70, xmmword_2773B43F0);
      v81 = 1;
      do
      {
        v82 = v81;
        v83 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a3[2], v79)), vaddq_s16(a3[3], v80));
        *v15 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*a3, v79)), vaddq_s16(a3[1], v80));
        *(v15 + v10) = v83;
        a3 += 4;
        v15 = (v15 + v53);
        v81 = 0;
      }

      while ((v82 & 1) != 0);
      v77 = 0;
      v70 = vqtbl1q_s8(v70, xmmword_2773B4400);
    }

    while ((v78 & 1) != 0);
  }

  return 0;
}

uint64_t sub_2772A0428(uint64_t result, int a2, _BYTE *a3, _BYTE *a4)
{
  v4 = a4[3];
  if (a4[3])
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  if (a4[2])
  {
    v6 = 15;
  }

  else
  {
    v6 = 7;
  }

  if (a4[1])
  {
    v7 = 0;
    if (a4[3])
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    *a3 = (*(result + v8 - a2) + 2 * *(result - a2) + *(result - a2 + 1) + 2) >> 2;
    v9 = result - a2;
    do
    {
      if (v7 >= v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      v11 = *(v9 + v10);
      v12 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v7 + 1;
      }

      v14 = *(v9 + v13);
      v15 = v7 + 2;
      if (v7 + 2 >= v6)
      {
        v15 = v6;
      }

      a3[++v7] = (v11 + 2 * v14 + *(v9 + v15) + 2) >> 2;
    }

    while (v12 != 16);
    a3[16] = a3[15];
  }

  if (*a4)
  {
    v16 = 0;
    v17 = result - 1;
    if (v4)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = a3 - 2;
    v20 = -1;
    v21 = (result - 1);
    do
    {
      if (v16 <= v18)
      {
        v22 = v5;
      }

      else
      {
        v22 = v20;
      }

      v23 = *(v17 + a2 * v22);
      if (++v16 >= 7)
      {
        v24 = 7;
      }

      else
      {
        v24 = v16;
      }

      *v19-- = (v23 + 2 * *v21 + *(v17 + v24 * a2) + 2) >> 2;
      ++v20;
      v21 += a2;
    }

    while (v16 != 8);
    *(a3 - 10) = *(a3 - 9);
  }

  if (a4[3])
  {
    if (*a4)
    {
      v25 = *(result - 1);
      if (v4)
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      if (a4[1])
      {
        v27 = v25 + 2 * *(result + v26 - a2) + *(result - a2);
      }

      else
      {
        v29 = *(result + v26 * a2 - 1);
        v27 = v25 + v29 + 2 * v29;
      }
    }

    else
    {
      if (!a4[1])
      {
        return result;
      }

      if (v4)
      {
        v28 = -1;
      }

      else
      {
        v28 = 0;
      }

      v27 = *(result - a2) + 3 * *(result + v28 - a2);
    }

    *(a3 - 1) = (v27 + 2) >> 2;
  }

  return result;
}

void *sub_2772A05F4(void *result, int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = 8;
  do
  {
    *result = v3;
    result = (result + a2);
    --v4;
  }

  while (v4);
  return result;
}

void *sub_2772A0614(void *result, int a2, uint64_t a3)
{
  for (i = -2; i != -10; --i)
  {
    *result = 0x101010101010101 * *(a3 + i);
    result = (result + a2);
  }

  return result;
}

uint64_t *sub_2772A0640(uint64_t *result, int a2, uint64_t a3, _BYTE *a4)
{
  v4 = a4[1];
  if (*a4)
  {
    if (a4[1])
    {
      v5 = 0;
      v6 = 0;
      v7 = -2;
      do
      {
        v6 += *(a3 + v7--) + *(a3 + v5++);
      }

      while (v5 != 8);
      v8 = 8;
      do
      {
        *result = 0x101010101010101 * ((v6 + 8) >> 4);
        result = (result + a2);
        --v8;
      }

      while (v8);
    }

    else
    {
      for (i = -2; i != -10; --i)
      {
        v4 += *(a3 + i);
      }

      v14 = 0x101010101010101 * ((v4 + 4) >> 3);
      v15 = 8;
      do
      {
        *result = v14;
        result = (result + a2);
        --v15;
      }

      while (v15);
    }
  }

  else if (a4[1])
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v10 += *(a3 + v9++);
    }

    while (v9 != 8);
    v11 = 0x101010101010101 * ((v10 + 4) >> 3);
    v12 = 8;
    do
    {
      *result = v11;
      result = (result + a2);
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = 8;
    do
    {
      *result = 0x8080808080808080;
      result = (result + a2);
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_2772A0758(uint64_t a1, int a2, unsigned __int8 *a3, double a4, double a5, uint8x8_t a6)
{
  v6 = *(a3 + 7);
  v7 = vmovl_u8(v6);
  a6.i32[0] = *(a3 + 3);
  v8 = vmovl_u8(a6).u64[0];
  v9 = vdup_lane_s16(*v7.i8, 0);
  v10 = vext_s8(v8, *v7.i8, 4uLL);
  v7.i16[0] = a3[15];
  v11 = vaddq_s16(v7, v7);
  v12 = vextq_s8(v11, v11, 2uLL);
  v13 = vaddw_u8(v12, v6);
  v12.i64[0] = 0x2000200020002;
  v14 = v8.u16[0];
  v15 = v8.u16[1];
  v16 = vaddw_u8(v12, a6).u64[0];
  v17 = vext_s8(v8, vext_s8(v9, v9, 6uLL), 2uLL);
  v18 = a3[1];
  v19 = a3[2];
  v20 = vextq_s8(v7, v7, 4uLL);
  v20.i16[7] = a3[16];
  v21 = (v19 + 2 + *a3 + 2 * v18) >> 2;
  LOBYTE(v18) = (v16.u16[0] + v18 + 2 * v19) >> 2;
  LOBYTE(v14) = (v19 + 2 + 2 * v14 + v15) >> 2;
  v22 = vshr_n_u16(vadd_s16(vadd_s16(v16, v10), vadd_s16(v17, v17)), 2uLL);
  *a1 = v21;
  *(a1 + 1) = v18;
  *(a1 + 2) = v14;
  v17.i32[0] = vuzp1_s8(v22, *v13.i8).u32[0];
  *(a1 + 3) = v17.i32[0];
  v23 = vaddq_s16(v13, v20);
  *v23.i8 = vrshrn_n_s16(v23, 2uLL);
  *(a1 + 7) = v23.i8[0];
  v24 = a1 + a2;
  *v24 = v18;
  *(v24 + 1) = v14;
  *(v24 + 6) = v23.i8[0];
  *(v24 + 2) = v17.i32[0];
  *(v24 + 7) = v23.i8[1];
  v25 = a1 + 2 * a2;
  *v25 = v14;
  *(v25 + 1) = v17.i32[0];
  *(v25 + 5) = v23.i16[0];
  *(v25 + 7) = v23.i8[2];
  v17.i32[1] = vmovn_s16(vzip1q_s8(v23, v23)).u32[0];
  *(a1 + 3 * a2) = v17;
  v26 = a1 + 4 * a2;
  *v26 = v22.i8[2];
  v27 = a1 + 5 * a2;
  *(v26 + 1) = v22.i8[4];
  v28 = a1 + 6 * a2;
  *(v26 + 2) = v22.i8[6];
  *(v26 + 7) = v23.i8[4];
  result = a1 - a2;
  *(v26 + 3) = v17.i32[1];
  *v27 = v22.i8[4];
  *(v27 + 1) = v22.i8[6];
  *(v27 + 2) = v17.i32[1];
  *(v27 + 6) = v23.i16[2];
  *v28 = v22.i8[6];
  *(v28 + 1) = v17.i32[1];
  *(v28 + 5) = v23.i16[2];
  *(v28 + 7) = v23.i8[6];
  *(result + 8 * a2) = v23.i64[0];
  return result;
}

int8x8_t sub_2772A08F4(int16x4_t *a1, int a2, uint64_t a3, uint8x8_t a4, double a5, uint16x8_t a6, double a7, double a8, uint8x8_t a9)
{
  a4.i32[0] = *(a3 - 7);
  v10 = vmovl_u8(a4);
  v11 = v10.u16[2];
  v12 = v10.u16[3];
  v10.i16[3] = *(a3 - 8);
  *a6.i8 = vadd_s16(*v10.i8, *v10.i8);
  v13 = vext_s8(*a6.i8, *a6.i8, 6uLL);
  *v10.i8 = vrev64_s32(*v10.i8);
  v10.i16[0] = *(a3 - 9);
  v14 = vaddw_u8(v10, a4);
  a6.i32[0] = 131074;
  a6.i16[2] = 2;
  a6.i16[3] = 2;
  *v14.i8 = vadd_s16(*v14.i8, v13);
  *v10.i8 = vshr_n_u16(vadd_s16(*v14.i8, *a6.i8), 2uLL);
  v13.i32[0] = *(a3 - 2);
  v15 = vmovl_u8(v13).u64[0];
  v16 = vaddw_u8(a6, v13).u64[0];
  v17 = v15.u16[0];
  v18 = v16.u16[1];
  v19 = v16.u16[0];
  v20 = *(a3 - 3);
  a9.i32[0] = *(a3 + 2);
  v21 = vmovl_u8(a9).u64[0];
  v22 = vext_s8(v15, v21, 2uLL);
  v23 = vext_s8(v15, v21, 4uLL);
  v21.i16[0] = *(a3 + 6);
  *v9.i8 = vadd_s16(v21, v21);
  *v9.i8 = vext_s8(*v9.i8, *v9.i8, 2uLL);
  v24 = vaddw_u8(v9, a9);
  v25 = vext_s8(v21, v21, 4uLL);
  v25.i16[3] = *(a3 + 7);
  *v24.i8 = vadd_s16(*v24.i8, v25);
  v26 = vshr_n_u16(vadd_s16(vadd_s16(v16, v23), vadd_s16(v22, v22)), 2uLL);
  v22.i32[0] = vuzp1_s8(v26, *v14.i8).u32[0];
  v22.i32[1] = vrshrn_n_s16(v24, 2uLL).u32[0];
  *a1 = v22;
  v27 = a1 + a2;
  v28 = ((v18 + 2 * v17 + v20) >> 2) & 0x1FF;
  *v27 = (v18 + 2 * v17 + v20) >> 2;
  *(v27 + 1) = v22.i32[0];
  v29 = vshr_n_u16(vadd_s16(*v24.i8, *a6.i8), 2uLL);
  v27[5] = v29.i8[0];
  v30 = v20 + v11;
  v27[6] = v29.i8[2];
  v31 = a1 + 2 * a2;
  v27[7] = v29.i8[4];
  v32 = ((v19 + v12 + 2 * v20) >> 2) & 0x1FF;
  *v31 = (v19 + v12 + 2 * v20) >> 2;
  v33 = a1 + 3 * a2;
  v31[1] = (v18 + 2 * v17 + v20) >> 2;
  v34 = a1 + 4 * a2;
  *(v31 + 2) = v22.i32[0];
  v35 = a1 + 5 * a2;
  v31[6] = v29.i8[0];
  v36 = a1 + 6 * a2;
  v31[7] = v29.i8[2];
  v37 = ((v30 + 2 * v12 + 2) >> 2) & 0x1FF;
  *v33 = v37;
  v38 = &a1[a2] - a2;
  v33[1] = v32;
  v33[2] = v28;
  *(v33 + 3) = v22.i32[0];
  v33[7] = v29.i8[0];
  *v34 = v10.i8[6];
  v34[1] = v37;
  v34[2] = v32;
  v34[3] = v28;
  *(v34 + 1) = v22.i32[0];
  *v35 = v10.i8[4];
  v35[1] = v10.i8[6];
  v35[2] = v37;
  v35[3] = v32;
  v35[4] = v28;
  v35[5] = v26.i8[0];
  v35[6] = v26.i8[2];
  v35[7] = v26.i8[4];
  *v36 = v10.i8[2];
  v36[1] = v10.i8[4];
  v36[2] = v10.i8[6];
  v36[3] = v37;
  v36[4] = v32;
  v36[5] = v28;
  v36[6] = v26.i8[0];
  v36[7] = v26.i8[2];
  result = vrshrn_n_s16(v14, 2uLL);
  *v38 = result.i32[0];
  *(v38 + 4) = v37;
  *(v38 + 5) = v32;
  *(v38 + 6) = v28;
  *(v38 + 7) = v26.i8[0];
  return result;
}

_BYTE *sub_2772A0ADC(_BYTE *result, int a2, unsigned __int8 *a3)
{
  v3 = *(a3 - 1);
  v4 = *a3;
  v5 = v4 + v3;
  v6 = a3[1];
  v7 = v4 + v6;
  v8 = a3[2];
  v9 = v6 + v8;
  v10 = a3[3];
  v11 = v8 + v10;
  v12 = a3[4];
  v13 = v10 + v12;
  v14 = a3[5];
  v15 = v12 + v14;
  v16 = a3[6];
  v17 = v14 + v16;
  v18 = a3[7];
  v19 = *(a3 - 2);
  v20 = *(a3 - 3);
  v21 = *(a3 - 4);
  v22 = *(a3 - 5);
  v23 = *(a3 - 6);
  v24 = *(a3 - 7);
  v25 = *(a3 - 8);
  result[7] = (v16 + v18 + 1) >> 1;
  v26 = v4 + 2 + 2 * v3;
  v27 = v3 + 2;
  v28 = v3 + 2 + 2 * v4 + v6;
  v29 = v4 + 2 + 2 * v6 + v8;
  v30 = v6 + 2 * v8 + v10;
  v31 = v8 + 2 * v10 + v12;
  v32 = v10 + 2 * v12 + v14;
  v33 = v12 + 2 * v14 + v16;
  v34 = v14 + 2 * v16;
  v35 = (v5 + 1) >> 1;
  *result = v35;
  v36 = (v7 + 1) >> 1;
  result[1] = v36;
  v37 = (v9 + 1) >> 1;
  result[2] = v37;
  v38 = (v11 + 1) >> 1;
  result[3] = v38;
  v39 = (v13 + 1) >> 1;
  result[4] = v39;
  v40 = (v15 + 1) >> 1;
  result[5] = v40;
  v41 = (v17 + 1) >> 1;
  result[6] = v41;
  v42 = (v26 + v19) >> 2;
  v43 = v34 + v18;
  v44 = &result[a2];
  *v44 = v42;
  v45 = v28 >> 2;
  v44[1] = v28 >> 2;
  v44[2] = v29 >> 2;
  v46 = (v30 + 2) >> 2;
  v44[3] = v46;
  v47 = (v31 + 2) >> 2;
  v44[4] = v47;
  v48 = (v32 + 2) >> 2;
  v44[5] = v48;
  v49 = (v33 + 2) >> 2;
  v44[6] = v49;
  v44[7] = (v43 + 2) >> 2;
  v50 = (v27 + v20 + 2 * v19) >> 2;
  v51 = &result[2 * a2];
  *v51 = v50;
  v51[1] = v35;
  v51[2] = v36;
  v51[3] = v37;
  v51[4] = v38;
  v51[5] = v39;
  v51[6] = v40;
  v51[7] = v41;
  v52 = &result[3 * a2];
  v53 = (v19 + v21 + 2 * v20 + 2) >> 2;
  *v52 = v53;
  v52[1] = v42;
  v52[2] = v45;
  v52[3] = v29 >> 2;
  v52[4] = v46;
  v52[5] = v47;
  v52[6] = v48;
  v52[7] = v49;
  v54 = (v20 + v22 + 2 * v21 + 2) >> 2;
  v55 = &result[4 * a2];
  *v55 = v54;
  v55[1] = v50;
  v55[2] = v35;
  v55[3] = v36;
  v55[4] = v37;
  v55[5] = v38;
  v55[6] = v39;
  v55[7] = v40;
  v56 = &result[5 * a2];
  v57 = (v21 + v23 + 2 * v22 + 2) >> 2;
  *v56 = v57;
  v56[1] = v53;
  v58 = v22 + v24 + 2 * v23 + 2;
  v56[2] = v42;
  v56[3] = v45;
  v59 = v23 + v25 + 2 * v24 + 2;
  v56[4] = v29 >> 2;
  v60 = v58 >> 2;
  v56[5] = v46;
  v56[6] = v47;
  v56[7] = v48;
  v61 = &result[6 * a2];
  *v61 = v60;
  v61[1] = v54;
  v61[2] = v50;
  v61[3] = v35;
  v61[4] = v36;
  v61[5] = v37;
  v61[6] = v38;
  v61[7] = v39;
  v62 = &result[8 * a2 - a2];
  *v62 = v59 >> 2;
  v62[1] = v57;
  v62[2] = v53;
  v62[3] = v42;
  v62[4] = v45;
  v62[5] = v29 >> 2;
  v62[6] = v46;
  v62[7] = v47;
  return result;
}

int8x8_t sub_2772A0DC0(uint64_t a1, int a2, unsigned __int8 *a3, uint8x8_t a4, double a5, double a6, uint16x8_t a7)
{
  v7 = *(a3 - 2);
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v11 = (v8 + 2 * v9 + v10 + 2) >> 2;
  v12 = *(a3 - 3);
  v13 = (v9 + 2 * v10 + a3[6] + 2) >> 2;
  v14 = (v7 + v12 + 1) >> 1;
  v15 = *(a3 - 4);
  v16 = (v12 + v15 + 1) >> 1;
  v17 = (v7 + 2 + v15 + 2 * v12) >> 2;
  v18 = *(a3 - 5);
  v19 = *(a3 - 6);
  v20 = *(a3 - 7);
  v21 = *(a3 - 8);
  v22 = *(a3 - 9);
  a4.i32[0] = *(a3 - 1);
  v23 = vmovl_u8(a4).u64[0];
  v24 = v23.u16[0];
  v25 = (v7 + v23.u8[0] + 1) >> 1;
  v26.i32[0] = vdup_lane_s32(v23, 1).u32[0];
  v23.i16[0] = v8;
  v26.i16[2] = v8;
  v27 = ((v7 + 2 + 2 * v24 + v23.u16[1]) >> 2) & 0x1FF;
  a7.i32[0] = 131074;
  a7.i16[2] = 2;
  a7.i16[3] = 2;
  v26.i16[3] = v9;
  v28 = vaddw_u8(a7, a4).u64[0];
  v29 = v28.u16[0];
  v30 = vadd_s16(v23, v23);
  *a1 = v25;
  *(a1 + 1) = v27;
  result = vshr_n_u16(vadd_s16(vadd_s16(v28, vext_s8(v30, v30, 2uLL)), v26), 2uLL);
  v30.i32[0] = vuzp1_s8(result, result).u32[0];
  *(a1 + 2) = v30.i32[0];
  v32 = (v15 + v18 + 1) >> 1;
  *(a1 + 6) = v11;
  *(a1 + 7) = v13;
  v33 = a1 + a2;
  *v33 = v14;
  v34 = ((v29 + 2 * v7 + v12) >> 2) & 0x1FF;
  *(v33 + 1) = (v29 + 2 * v7 + v12) >> 2;
  v35 = (v12 + v18 + 2 * v15 + 2) >> 2;
  *(v33 + 2) = v25;
  *(v33 + 3) = v27;
  v36 = (v18 + v19 + 1) >> 1;
  *(v33 + 4) = v30.i32[0];
  v37 = (a1 + 2 * a2);
  *v37 = v16;
  v37[1] = v17;
  v38 = (v15 + v19 + 2 * v18 + 2) >> 2;
  v37[2] = v14;
  v39 = (v19 + v20 + 1) >> 1;
  v37[3] = v34;
  v37[4] = v25;
  v37[5] = v27;
  v40 = (v18 + v20 + 2 * v19 + 2) >> 2;
  LODWORD(v33) = (v20 + v21 + 1) >> 1;
  v37[6] = result.i8[0];
  v37[7] = result.i8[2];
  v41 = (a1 + 3 * a2);
  *v41 = v32;
  v41[1] = v35;
  v41[2] = v16;
  v42 = (v19 + v21 + 2 * v20 + 2) >> 2;
  v41[3] = v17;
  v43 = (v21 + v22 + 1) >> 1;
  v41[4] = v14;
  v41[5] = v34;
  v44 = v20 + v22 + 2 * v21 + 2;
  v41[6] = v25;
  v41[7] = v27;
  v45 = (a1 + 4 * a2);
  *v45 = v36;
  v45[1] = v38;
  v45[2] = v32;
  v45[3] = v35;
  v45[4] = v16;
  v45[5] = v17;
  v45[6] = v14;
  v45[7] = v34;
  v46 = (a1 + 5 * a2);
  *v46 = v39;
  v46[1] = v40;
  v46[2] = v36;
  v46[3] = v38;
  v46[4] = v32;
  v46[5] = v35;
  v46[6] = v16;
  v46[7] = v17;
  v47 = (a1 + 6 * a2);
  *v47 = v33;
  v47[1] = v42;
  v47[2] = v39;
  v47[3] = v40;
  v47[4] = v36;
  v47[5] = v38;
  v47[6] = v32;
  v47[7] = v35;
  v48 = (a1 - a2 + 8 * a2);
  *v48 = v43;
  v48[1] = v44 >> 2;
  v48[2] = v33;
  v48[3] = v42;
  v48[4] = v39;
  v48[5] = v40;
  v48[6] = v36;
  v48[7] = v38;
  return result;
}

double sub_2772A1064(uint64_t a1, int a2, unsigned __int8 *a3, int8x16_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 + v4;
  v7 = a3[2];
  v8 = v5 + v7;
  v9 = v7 + 2;
  v10 = v7 + 2 + v4 + 2 * v5;
  a4.i64[0] = *(a3 + 3);
  v11 = vmovl_u8(*a4.i8);
  v12.i64[0] = 0x2000200020002;
  v12.i64[1] = 0x2000200020002;
  v13 = vaddw_u8(v12, *a4.i8);
  v14 = v13.u16[0] + v5 + 2 * v7;
  v15 = v7 + v11.u8[0];
  v16 = v9 + 2 * v11.u16[0] + v11.u16[1];
  v11.i16[0] = a3[11];
  v17 = vextq_s8(v11, v11, 4uLL);
  v17.i16[7] = a3[12];
  v18 = *(a3 + 4);
  v19 = (v8 + 1) >> 1;
  *a1 = (v6 + 1) >> 1;
  *a4.i8 = vrhadd_u8(*a4.i8, v18);
  *(a1 + 7) = a4.i8[4];
  v20 = a1 + a2;
  v21 = (v15 + 1) >> 1;
  *(a1 + 1) = v19;
  *(a1 + 2) = v21;
  v18.i32[0] = vmovn_s16(vzip1q_s8(a4, a4)).u32[0];
  *(a1 + 3) = v18.i32[0];
  *v20 = v10 >> 2;
  v22 = vaddq_s16(v11, v11);
  *(v20 + 1) = v14 >> 2;
  *(v20 + 2) = v16 >> 2;
  v23 = vaddq_s16(vaddq_s16(v13, vextq_s8(v22, v22, 2uLL)), v17);
  *v23.i8 = vshrn_n_s16(v23, 2uLL);
  v13.i32[0] = vmovn_s16(vzip1q_s8(v23, a4)).u32[0];
  *(v20 + 3) = v13.i32[0];
  *(v20 + 7) = v23.i8[4];
  v24 = a1 + 2 * a2;
  *v24 = v19;
  *(v24 + 6) = a4.i8[4];
  *(v24 + 1) = v21;
  *(v24 + 2) = v18.i32[0];
  *(v24 + 7) = a4.i8[5];
  v25 = a1 + 3 * a2;
  *v25 = v14 >> 2;
  *(v25 + 6) = v23.i8[4];
  *(v25 + 1) = v16 >> 2;
  *(v25 + 2) = v13.i32[0];
  *(v25 + 7) = v23.i8[5];
  v26 = a1 + 4 * a2;
  *v26 = v21;
  *(v26 + 5) = a4.i8[4];
  *(v26 + 6) = a4.i8[5];
  *(v26 + 1) = v18.i32[0];
  v27 = a1 + 5 * a2;
  *(v26 + 7) = a4.i8[6];
  *(v27 + 5) = v23.i16[2];
  *v27 = v16 >> 2;
  *(v27 + 1) = v13.i32[0];
  *(v27 + 7) = v23.i8[6];
  *(a1 + 6 * a2) = a4.i64[0];
  *(a1 - a2 + 8 * a2) = v23.i64[0];
  return *a4.i64;
}

int8x8_t sub_2772A11FC(_BYTE *a1, int a2, uint64_t a3)
{
  v3 = *(a3 - 3);
  v4 = *(a3 - 2);
  v5 = *(a3 - 4);
  v6 = (v3 + v4 + 1) >> 1;
  v7 = v5 + 2;
  v8 = *(a3 - 5);
  v9 = *(a3 - 6);
  v10 = (v5 + 2 + 2 * v3 + v4) >> 2;
  v11 = *(a3 - 7);
  v12 = *(a3 - 8);
  v13 = (v3 + v5 + 1) >> 1;
  v14 = v8 + 2;
  v15 = *(a3 - 9);
  v16 = *(a3 - 10);
  v17 = (v8 + 2 + v3 + 2 * v5) >> 2;
  *a1 = v6;
  a1[1] = v10;
  v18 = (v5 + v8 + 1) >> 1;
  a1[2] = v13;
  a1[3] = v17;
  v19 = (v7 + v9 + 2 * v8) >> 2;
  a1[4] = v18;
  v20 = (v8 + v9 + 1) >> 1;
  a1[5] = v19;
  a1[6] = v20;
  v21 = (v14 + v11 + 2 * v9) >> 2;
  a1[7] = v21;
  v22 = &a1[a2];
  *v22 = v13;
  v22[1] = v17;
  v23 = (v9 + v11 + 1) >> 1;
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v24 = (v9 + v12 + 2 * v11 + 2) >> 2;
  v25 = v11 + v12 + 1;
  v22[5] = v21;
  v22[6] = v23;
  v22[7] = v24;
  v26 = &a1[2 * a2];
  *v26 = v18;
  v26[1] = v19;
  v26[2] = v20;
  v26[3] = v21;
  v26[4] = v23;
  v27 = (v11 + v15 + 2 * v12 + 2) >> 2;
  v26[5] = v24;
  v26[6] = v25 >> 1;
  v26[7] = v27;
  v28 = &a1[3 * a2];
  *v28 = v20;
  v29 = (v12 + v15 + 1) >> 1;
  v28[1] = v21;
  v30 = (v12 + v16 + 2 * v15 + 2) >> 2;
  v28[2] = v23;
  v28[3] = v24;
  v28[4] = v25 >> 1;
  v28[5] = v27;
  v28[6] = v29;
  v28[7] = v30;
  v31 = &a1[4 * a2];
  *v31 = v23;
  v31[1] = v24;
  v31[2] = v25 >> 1;
  v31[3] = v27;
  v31[4] = v29;
  v31[5] = v30;
  v31[6] = v15;
  v31[7] = v15;
  v32 = &a1[5 * a2];
  *v32 = v25 >> 1;
  v32[1] = v27;
  v32[2] = v29;
  result = vdup_n_s8(v15);
  v32[3] = v30;
  *(v32 + 1) = result.i32[0];
  v34 = &a1[6 * a2];
  *v34 = v29;
  v34[1] = v30;
  *(v34 + 2) = result.i32[0];
  v34[6] = v15;
  v34[7] = v15;
  *&a1[8 * a2 - a2] = result;
  return result;
}

int8x16_t sub_2772A13E0(unsigned __int8 *a1, unsigned int a2, int8x16_t *a3, uint64_t a4, unsigned __int8 *a5, int a6, int8x16_t result, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  if (a6 > 3)
  {
    if (a6 <= 5)
    {
      if (a6 == 4)
      {
        if (*a5)
        {
          if (a5[1])
          {
            v71 = a2;
            v72 = &a1[-a2];
            v73 = *v72;
            v74 = *(v72 - 1);
            v75 = 3 * a2;
            v76 = 2 * a2;
            v77 = a1[v75 - 1] | (a1[v76 - 1] << 8);
          }

          else
          {
            v73 = *a1;
            v74 = *a1;
            v75 = 3 * a2;
            v76 = 2 * a2;
            v77 = a1[v75 - 1] | (a1[v76 - 1] << 8);
            v71 = a2;
          }

          v96 = v77 | (a1[a2 - 1] << 16);
          v97 = *(a1 - 1);
        }

        else if (a5[1])
        {
          v71 = a2;
          v73 = *&a1[-a2];
          v75 = 3 * a2;
          v76 = 2 * a2;
          v74 = v73;
          v96 = a1[v75] | (a1[v76] << 8) | (a1[a2] << 16);
          v97 = *a1;
        }

        else
        {
          v97 = *a1;
          v74 = *a1;
          v75 = 3 * a2;
          v76 = 2 * a2;
          v71 = a2;
          v96 = a1[v75] | (a1[v76] << 8) | (a1[a2] << 16);
          v73 = *a1;
        }

        v111 = v96 | (v97 << 24);
        v112 = vorrq_s8(vshlq_n_s64(v73, 8uLL), v74);
        v113 = vdupq_n_s64(0xFFFFFFF0uLL);
        v114 = vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v111, v113), vshlq_n_s64(v112, 0x10uLL)), xmmword_2773B3E30), 0);
        v115 = vshlq_u64(v111, vdupq_n_s64(0xFFFFFFF8uLL));
        v116 = vzip1q_s8(vorrq_s8(v115, vshlq_n_s64(v112, 0x18uLL)), 0);
        v117 = vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v112, v113), 0x20uLL), v111), 0);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v118 = vshrq_n_u16(v113, 0xFuLL);
        v119 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v116, v116), v114), vaddq_s16(vaddq_s16(v118, v118), v117)), 2uLL);
        v118.i64[0] = vextq_s8(v119, 0, 6uLL).u64[0];
        v118.i64[1] = vextq_s8(v119, 0, 4uLL).u64[0];
        v120 = vextq_s8(v119, 0, 2uLL);
        v114.i64[0] = v120.i64[0];
        v114.i64[1] = v119.i64[0];
        v121 = vqmovun_high_s16(vqmovun_s16(v118), v114);
        *a3 = v121;
        v114.i32[0] = *a1;
        v121.i32[0] = *&a1[v71];
        v115.i32[0] = *&a1[v76];
        a14.i32[0] = *&a1[v75];
        v114.i64[0] = vzip1q_s8(v114, 0).u64[0];
        result.i64[0] = vsubq_s16(vzip1q_s8(v115, 0), v120).u64[0];
        v31 = vsubq_s16(vzip1q_s8(a14, 0), v119).u64[0];
        v114.i64[1] = vzip1q_s8(v121, 0).u64[0];
        v55 = vsubq_s16(v114, v118);
      }

      else
      {
        if (*a5)
        {
          if (a5[1])
          {
            v46 = a2;
            v47 = &a1[-a2];
            v48 = *v47;
            v49 = a1 - 1;
            v50 = *v47 | (*(v47 - 1) << 8);
          }

          else
          {
            v48 = *a1;
            v50 = *a1 | (*a1 << 8);
            v49 = a1 - 1;
            v46 = a2;
          }

          v51 = *(a1 - 1) | (a1[a2 - 1] << 8);
          v109 = 2 * a2;
          v110 = &v49[v109];
        }

        else
        {
          if (a5[1])
          {
            v46 = a2;
            v48 = *&a1[-a2];
            v50 = v48 | (v48 << 8);
            v89 = *a1;
          }

          else
          {
            v48 = *a1;
            v89 = *a1;
            v50 = v89 | (v89 << 8);
            v46 = a2;
          }

          v51 = v89 | (a1[a2] << 8);
          v109 = 2 * a2;
          v110 = &a1[v109];
        }

        v122 = vdupq_n_s64(0xFFFFFFF8uLL);
        v123.i64[0] = 0x1000100010001;
        v123.i64[1] = 0x1000100010001;
        v124 = vorrq_s8(vshlq_n_s64(v48, 8uLL), vshlq_u64(v50, v122));
        v125 = vorrq_s8(vshlq_n_s64((v51 | (*v110 << 16)), 0x10uLL), v50);
        v126 = vzip1q_s8(vshlq_u64(v124, v122), 0);
        v127 = vdupq_n_s64(0xFFFFFFF0uLL);
        v128 = vzip1q_s8(vshlq_u64(v124, v127), 0);
        v129 = vaddq_s16(v126, vzip1q_s8(v124, 0));
        v130 = vshrq_n_u16(vaddq_s16(v129, v123), 1uLL);
        v131 = vaddq_s16(v123, v123);
        v132 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v131, v126), v129), v128), 2uLL);
        v133 = vzip1q_s8(v125, 0);
        v134 = vzip1q_s8(vshlq_u64(v125, v122), 0);
        v135 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v131, v133), vzip1q_s8(vshlq_u64(v125, v127), 0)), vaddq_s16(v134, v134)), 2uLL);
        v136 = vorrq_s8(vextq_s8(0, v130, 0xEuLL), vshlq_u64(vshlq_n_s64(v135, 0x20uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
        v137 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v135, xmmword_2773B4480), 0), v132, 0xCuLL);
        v130.i64[1] = vextq_s8(v137, 0, 2uLL).u64[0];
        v132.i64[0] = v136.i64[0];
        v132.i64[1] = v137.i64[0];
        v138 = vqmovun_high_s16(vqmovun_s16(v130), v132);
        *a3 = v138;
        v132.i32[0] = *a1;
        v138.i32[0] = *&a1[v46];
        v133.i32[0] = *&a1[v109];
        v127.i32[0] = *&a1[3 * a2];
        v132.i64[0] = vzip1q_s8(v132, 0).u64[0];
        result.i64[0] = vsubq_s16(vzip1q_s8(v133, 0), v136).u64[0];
        v31 = vsubq_s16(vzip1q_s8(v127, 0), v137).u64[0];
        v132.i64[1] = vzip1q_s8(v138, 0).u64[0];
        v55 = vsubq_s16(v132, v130);
      }

      goto LABEL_66;
    }

    if (a6 != 6)
    {
      if (a6 == 7)
      {
        if (a5[1])
        {
          v78 = -a2;
        }

        else
        {
          v78 = 0;
        }

        v79 = *&a1[v78];
        if (a5[2])
        {
          v80 = *&a1[-a2 + 4];
        }

        else
        {
          v80 = v79 & 0xFF000000 | ((v79 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v79 & 0xFF000000 | ((v79 & 0xFF000000) >> 8)) >> 16);
        }

        a9.i32[0] = v80;
        v98 = vorrq_s8(vextq_s8(0, a9, 0xCuLL), v79);
        v99.i64[0] = 0x1000100010001;
        v99.i64[1] = 0x1000100010001;
        v100 = vzip1q_s8(v98, 0);
        v101 = vextq_s8(v100, 0, 2uLL);
        v102 = vaddq_s16(v101, v100);
        v103 = vshrq_n_u16(vaddq_s16(v102, v99), 1uLL);
        v104 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v99, v99), v101), vextq_s8(v100, 0, 4uLL)), v102), 2uLL);
        v105 = vextq_s8(v103, 0, 2uLL);
        v106 = vextq_s8(v104, 0, 2uLL);
        v103.i64[1] = v104.i64[0];
        v104.i64[0] = v105.i64[0];
        v104.i64[1] = v106.i64[0];
        v107 = vqmovun_high_s16(vqmovun_s16(v103), v104);
        *a3 = v107;
        v104.i32[0] = *a1;
        v107.i32[0] = *&a1[a2];
        a13.i32[0] = *&a1[2 * a2];
        a14.i32[0] = *&a1[3 * a2];
        v108.i64[0] = vzip1q_s8(v104, 0).u64[0];
        result.i64[0] = vsubq_s16(vzip1q_s8(a13, 0), v105).u64[0];
        v31 = vsubq_s16(vzip1q_s8(a14, 0), v106).u64[0];
        v108.i64[1] = vzip1q_s8(v107, 0).u64[0];
        v55 = vsubq_s16(v108, v103);
        goto LABEL_66;
      }

      if (a6 != 8)
      {
        return result;
      }

      v15 = &a1[a2];
      v16 = &a1[2 * a2];
      v17 = &a1[3 * a2];
      v18.i64[0] = 0x1000100010001;
      v18.i64[1] = 0x1000100010001;
      v19 = vzip1q_s8((a1[-*a5] | (*(v15 - *a5) << 8) | (*(v16 - *a5) << 16) | (*(v17 - *a5) << 24)), 0);
      v20 = vextq_s8(v19, 0, 2uLL);
      v21 = vaddq_s16(v20, v19);
      v22 = vshrq_n_u16(vaddq_s16(v21, v18), 1uLL);
      v23 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v18, v18), v20), vqtbl1q_s8(vextq_s8(v19, 0, 4uLL), xmmword_2773B4250)), v21), 2uLL);
      v24 = vqtbl1q_s8(v19, xmmword_2773B4430);
      v25 = vzip1q_s16(v22, v23);
      v26 = vextq_s8(v25, 0, 4uLL).u64[0];
      v27 = vextq_s8(vdupq_laneq_s32(v25, 2), v24, 0xCuLL);
      v28.i64[0] = v25.i64[0];
      v28.i64[1] = v26;
      v22.i64[0] = v27.i64[0];
      v22.i64[1] = v24.i64[0];
      v29 = vqmovun_high_s16(vqmovun_s16(v28), v22);
      *a3 = v29;
      v29.i32[0] = *a1;
      v22.i32[0] = *v15;
      a14.i32[0] = *v16;
      v14.i32[0] = *v17;
      v29.i64[0] = vzip1q_s8(v29, 0).u64[0];
      v30 = vzip1q_s8(v22, 0).u64[0];
      result.i64[0] = vsubq_s16(vzip1q_s8(a14, 0), v27).u64[0];
      v31 = vsubq_s16(vzip1q_s8(v14, 0), v24).u64[0];
      goto LABEL_38;
    }

    if (*a5)
    {
      if (a5[1])
      {
        v62 = a2;
        v63 = &a1[-a2];
        v64 = *v63;
        v65 = *(v63 - 1);
        v66 = *(a1 - 1);
        v67 = 2 * a2;
        v68 = 3 * a2;
        v69 = (a1[v67 - 1] << 16) | (a1[a2 - 1] << 8) | (a1[v68 - 1] << 24) | v66;
        v70 = v66 | (v65 << 8);
LABEL_65:
        v143.i64[0] = 0x1000100010001;
        v143.i64[1] = 0x1000100010001;
        v144 = vdupq_n_s64(0xFFFFFFF8uLL);
        v145 = vorrq_s8(vshlq_n_s64(v69, 8uLL), vshlq_u64(v70, v144));
        v146 = vorrq_s8(vshlq_n_s64(v64, 0x10uLL), v70);
        v147 = vzip1q_s8(vshlq_u64(v145, v144), 0);
        v148 = vdupq_n_s64(0xFFFFFFF0uLL);
        v149 = vaddq_s16(v147, vzip1q_s8(v145, 0));
        v150 = vshrq_n_u16(vaddq_s16(v149, v143), 1uLL);
        v151 = vaddq_s16(v143, v143);
        v152 = vaddq_s16(v151, v147);
        v153 = vshrq_n_u16(vaddq_s16(vaddq_s16(v152, v149), vzip1q_s8(vshlq_u64(v145, v148), 0)), 2uLL);
        v154 = vzip1q_s8(vshlq_u64(v146, v144), 0);
        v155 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v151, vzip1q_s8(v146, 0)), vzip1q_s8(vshlq_u64(v146, v148), 0)), vaddq_s16(v154, v154)), 2uLL);
        v145.i64[0] = vorrq_s8(vshlq_n_s64(v155, 0x10uLL), vshlq_u64(vshlq_n_s64(v150, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL))).u64[0];
        v156 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v153, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v155, 2uLL), 0x10uLL), vzip1q_s32(vqtbl1q_s8(v150, xmmword_2773B4450), 0))), xmmword_2773B4460), xmmword_2773B4470);
        v145.i64[1] = vextq_s8(v156, 0, 8uLL).u64[0];
        v157 = vextq_s8(v156, 0, 4uLL);
        v151.i64[0] = v157.i64[0];
        v151.i64[1] = v156.i64[0];
        v158 = vqmovun_high_s16(vqmovun_s16(v145), v151);
        *a3 = v158;
        v151.i32[0] = *a1;
        v158.i32[0] = *&a1[v62];
        v152.i32[0] = *&a1[v67];
        v148.i32[0] = *&a1[v68];
        v151.i64[0] = vzip1q_s8(v151, 0).u64[0];
        result.i64[0] = vsubq_s16(vzip1q_s8(v152, 0), v157).u64[0];
        v31 = vsubq_s16(vzip1q_s8(v148, 0), v156).u64[0];
        v151.i64[1] = vzip1q_s8(v158, 0).u64[0];
        v55 = vsubq_s16(v151, v145);
        goto LABEL_66;
      }

      v64 = *a1;
      v93 = *(a1 - 1);
      v62 = a2;
      v92 = a1[a2 - 1];
      v67 = 2 * a2;
      v94 = a1[v67 - 1] << 16;
      v68 = 3 * a2;
      v95 = a1[v68 - 1];
    }

    else
    {
      if (!a5[1])
      {
        v64 = *a1;
        v93 = *a1;
        v62 = a2;
        v67 = 2 * a2;
        v68 = 3 * a2;
        v69 = (a1[v67] << 16) | (a1[a2] << 8) | (a1[v68] << 24) | v93;
        goto LABEL_64;
      }

      v62 = a2;
      v64 = *&a1[-a2];
      v92 = a1[a2];
      v93 = *a1;
      v67 = 2 * a2;
      v94 = a1[v67] << 16;
      v68 = 3 * a2;
      v95 = a1[v68];
    }

    v69 = v94 | (v92 << 8) | (v95 << 24) | v93;
LABEL_64:
    v70 = v93 & 0xFFFF00FF | (v64 << 8);
    goto LABEL_65;
  }

  if (a6 > 1)
  {
    if (a6 != 2)
    {
      if (a5[1])
      {
        v43 = -a2;
      }

      else
      {
        v43 = 0;
      }

      v44 = *&a1[v43];
      if (a5[2])
      {
        v45 = *&a1[-a2 + 4];
      }

      else
      {
        v45 = v44 & 0xFF000000 | ((v44 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v44 & 0xFF000000 | ((v44 & 0xFF000000) >> 8)) >> 16);
      }

      a9.i32[0] = v45;
      v81 = vorrq_s8(vextq_s8(0, a9, 0xCuLL), v44);
      v82.i64[0] = -1;
      v82.i64[1] = -1;
      v83 = vshrq_n_u16(v82, 0xFuLL);
      v84 = vzip1q_s8(v81, 0);
      v25 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v83, v83), vqtbl1q_s8(vextq_s8(v84, 0, 4uLL), xmmword_2773B4240)), vaddq_s16(vextq_s8(vaddq_s16(v84, v84), 0, 2uLL), v84)), 2uLL);
      v26 = vextq_s8(v25, 0, 2uLL).u64[0];
      v85 = vextq_s8(v25, 0, 4uLL);
      v86 = vextq_s8(v25, 0, 6uLL);
      v87.i64[0] = v25.i64[0];
      v87.i64[1] = v26;
      v88.i64[0] = v85.i64[0];
      v88.i64[1] = v86.i64[0];
      v29 = vqmovun_high_s16(vqmovun_s16(v87), v88);
      *a3 = v29;
      v29.i32[0] = *a1;
      v88.i32[0] = *&a1[a2];
      a14.i32[0] = *&a1[2 * a2];
      v14.i32[0] = *&a1[3 * a2];
      v29.i64[0] = vzip1q_s8(v29, 0).u64[0];
      v30 = vzip1q_s8(v88, 0).u64[0];
      result.i64[0] = vsubq_s16(vzip1q_s8(a14, 0), v85).u64[0];
      v31 = vsubq_s16(vzip1q_s8(v14, 0), v86).u64[0];
LABEL_38:
      v25.i64[1] = v26;
      v29.i64[1] = v30;
      v55 = vsubq_s16(v29, v25);
      goto LABEL_66;
    }

    if (*a5)
    {
      v56 = *(a1 - 1);
      v57 = a1[a2 - 1];
      v58 = a1[2 * a2 - 1];
      v59 = a1[3 * a2 - 1];
      v60 = a2;
      if (a5[1])
      {
        result.i32[0] = *&a1[-a2];
        v61 = (vaddvq_s32(vmovl_u16(*&vmovl_u8(*result.i8))) + v59 + v58 + v57 + v56 + 4) >> 3;
LABEL_62:
        v139 = v61 | (v61 << 8) | ((v61 | (v61 << 8)) << 16);
        result = vdupq_n_s32(v139);
        *a3 = result;
        result.i32[0] = *&a1[v60];
        a8.i32[0] = *&a1[2 * a2];
        a9.i32[0] = *&a1[3 * a2];
        a10.i32[0] = *a1;
        v140 = vzip1q_s8(v139, 0);
        v141.i64[0] = vzip1q_s8(a10, 0).u64[0];
        v142 = vzip1q_s8(result, 0).u64[0];
        result.i64[0] = vsubq_s16(vzip1q_s8(a8, 0), v140).u64[0];
        v31 = vsubq_s16(vzip1q_s8(a9, 0), v140).u64[0];
        v141.i64[1] = v142;
        v140.i64[1] = v140.i64[0];
        v55 = vsubq_s16(v141, v140);
        goto LABEL_66;
      }

      v91 = v56 + v57 + v58 + v59;
    }

    else
    {
      v60 = a2;
      if (!a5[1])
      {
        v61 = 128;
        goto LABEL_62;
      }

      result.i32[0] = *&a1[-a2];
      v90 = vmovl_u8(*result.i8).u64[0];
      v90.i16[0] = vaddv_s16(v90);
      v91 = v90.i32[0];
    }

    v61 = (v91 + 2) >> 2;
    goto LABEL_62;
  }

  if (!a6)
  {
    result.i32[0] = *a1;
    a8.i32[0] = *&a1[a2];
    a9.i32[0] = *&a1[2 * a2];
    a10.i32[0] = *&a1[3 * a2];
    v52 = vzip1q_s8(*&a1[-(a5[1] * a2)], 0);
    v53.i64[0] = vzip1q_s8(result, 0).u64[0];
    v54 = vzip1q_s8(a8, 0).u64[0];
    result.i64[0] = vsubq_s16(vzip1q_s8(a9, 0), v52).u64[0];
    v31 = vsubq_s16(vzip1q_s8(a10, 0), v52).u64[0];
    *a3 = vdupq_n_s32(*&a1[-(a5[1] * a2)]);
    v53.i64[1] = v54;
    v52.i64[1] = v52.i64[0];
    v55 = vsubq_s16(v53, v52);
LABEL_66:
    *a4 = v55;
    goto LABEL_67;
  }

  if (a6 != 1)
  {
    return result;
  }

  v32 = &a1[-*a5];
  v33 = *v32 | (*v32 << 8);
  v34 = v33 | (v33 << 16);
  v35 = v32[a2] | (v32[a2] << 8);
  v36 = v35 | (v35 << 16);
  a3->i32[0] = v34;
  a3->i32[1] = v36;
  result.i32[0] = *a1;
  a8.i32[0] = *&a1[a2];
  v37.i64[0] = vzip1q_s8(result, 0).u64[0];
  v38 = vzip1q_s8(a8, 0);
  a10.i32[0] = v34;
  v39.i64[0] = vzip1q_s8(a10, 0).u64[0];
  a11.i32[0] = v36;
  v40 = vzip1q_s8(a11, 0);
  v39.i64[1] = v40.i64[0];
  v37.i64[1] = v38.i64[0];
  result = vsubq_s16(v37, v39);
  *a4 = result;
  v41 = v32[2 * a2] | (v32[2 * a2] << 8);
  v42 = v41 | (v41 << 16);
  LODWORD(v32) = v32[3 * a2] | (v32[3 * a2] << 8);
  LODWORD(v32) = v32 | (v32 << 16);
  a3->i32[2] = v42;
  a3->i32[3] = v32;
  result.i32[0] = v42;
  v38.i32[0] = v32;
  v39.i32[0] = *&a1[2 * a2];
  v40.i32[0] = *&a1[3 * a2];
  result.i64[0] = vsubq_s16(vzip1q_s8(v39, 0), vzip1q_s8(result, 0)).u64[0];
  v31 = vsubq_s16(vzip1q_s8(v40, 0), vzip1q_s8(v38, 0)).u64[0];
LABEL_67:
  result.i64[1] = v31;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_2772A1F10(int8x16_t *a1, int a2, int8x16_t *a3, int a4)
{
  v4 = a4;
  v5 = a2;
  v6 = 0uLL;
  v7 = 4;
  do
  {
    v32 = v6;
    v8 = vzip1q_s8(*a3, *a1);
    v9 = vzip2q_s8(*a3, *a1);
    v10 = vpaddq_s16(vmulq_s16(vmovl_u8(*v9.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v9), xmmword_2773B3B40));
    v11 = *(a3 + v4);
    v12 = *(a1 + v5);
    v13 = vzip1q_s8(v11, v12);
    v14 = vzip2q_s8(v11, v12);
    v15 = vpaddq_s16(vmulq_s16(vmovl_u8(*v14.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v14), xmmword_2773B3B40));
    v16 = (a3 + v4 + v4);
    v17 = (a1 + v5 + v5);
    v18 = vzip1q_s8(*v16, *v17);
    v19 = vzip2q_s8(*v16, *v17);
    v20 = vpaddq_s16(vmulq_s16(vmovl_u8(*v19.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v19), xmmword_2773B3B40));
    v21 = &v16->i8[v4];
    v22 = *(v16 + v4);
    v23 = &v17->i8[v5];
    v24 = *(v17 + v5);
    v25 = vzip1q_s8(v22, v24);
    v26 = vzip2q_s8(v22, v24);
    *v27.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(*v8.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v8), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v13.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v13), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v18.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v18), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v25.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v25), xmmword_2773B3B40)), v10, v15, v20, vpaddq_s16(vmulq_s16(vmovl_u8(*v26.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v26), xmmword_2773B3B40)));
    v28 = vaddq_s16(v32, v27);
    v6 = v28;
    a3 = &v21[v4];
    a1 = &v23[v5];
    --v7;
  }

  while (v7);
  v29 = vpaddq_s16(v28, v28);
  v30 = vpaddq_s16(v29, v29);
  return vpaddq_s16(v30, v30).u16[0];
}

uint64_t sub_2772A2094(int8x16_t *a1, int a2, int8x16_t *a3, int a4)
{
  v4 = a4;
  v5 = a2;
  v6 = 0uLL;
  v7 = 1;
  do
  {
    v33 = v6;
    v8 = v7;
    v9 = vzip1q_s8(*a3, *a1);
    v10 = vzip2q_s8(*a3, *a1);
    v11 = vpaddq_s16(vmulq_s16(vmovl_u8(*v10.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v10), xmmword_2773B3B40));
    v12 = *(a3 + v4);
    v13 = *(a1 + v5);
    v14 = vzip1q_s8(v12, v13);
    v15 = vzip2q_s8(v12, v13);
    v16 = vpaddq_s16(vmulq_s16(vmovl_u8(*v15.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v15), xmmword_2773B3B40));
    v17 = (a3 + v4 + v4);
    v18 = (a1 + v5 + v5);
    v19 = vzip1q_s8(*v17, *v18);
    v20 = vzip2q_s8(*v17, *v18);
    v21 = vpaddq_s16(vmulq_s16(vmovl_u8(*v20.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v20), xmmword_2773B3B40));
    v22 = &v17->i8[v4];
    v23 = *(v17 + v4);
    v24 = &v18->i8[v5];
    v25 = *(v18 + v5);
    v26 = vzip1q_s8(v23, v25);
    v27 = vzip2q_s8(v23, v25);
    *v28.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(*v9.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v9), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v14.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v14), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v19.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v19), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v26.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v26), xmmword_2773B3B40)), v11, v16, v21, vpaddq_s16(vmulq_s16(vmovl_u8(*v27.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v27), xmmword_2773B3B40)));
    v7 = 0;
    v29 = vaddq_s16(v33, v28);
    v6 = v29;
    a3 = &v22[v4];
    a1 = &v24[v5];
  }

  while ((v8 & 1) != 0);
  v30 = vpaddq_s16(v29, v29);
  v31 = vpaddq_s16(v30, v30);
  return vpaddq_s16(v31, v31).u16[0];
}

uint64_t sub_2772A221C(int8x8_t *a1, int a2, int8x8_t *a3, int a4)
{
  v6 = 2 * a4;
  v7 = 2 * a2;
  v34 = 4 * a2;
  v35 = a2;
  v33 = 3 * a2;
  v32 = 6 * a2;
  v31 = 7 * a2;
  v30 = 5 * a2;
  v29 = 3 * v6 + a4;
  v8 = 2 * v6 + a4;
  v9 = 0uLL;
  v10 = 1;
  v11 = a4;
  v12 = a4 + v6;
  do
  {
    v36 = v9;
    v13 = v10;
    v14 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*a3, *a1)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*a3, *a1)), xmmword_2773B3B40));
    v15 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(a3 + v11), *(a1 + v35))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(a3 + v11), *(a1 + v35))), xmmword_2773B3B40));
    v16 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(a3 + v6), *(a1 + v7))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(a3 + v6), *(a1 + v7))), xmmword_2773B3B40));
    v17 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(a3 + v12), *(a1 + v33))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(a3 + v12), *(a1 + v33))), xmmword_2773B3B40));
    v18 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(a3 + 2 * v6), *(a1 + v34))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(a3 + 2 * v6), *(a1 + v34))), xmmword_2773B3B40));
    v19 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(a3 + v8), *(a1 + v30))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(a3 + v8), *(a1 + v30))), xmmword_2773B3B40));
    v20 = *(a3 + 3 * v6);
    v21 = *(a1 + v32);
    v22 = *(a3 + v29);
    v23 = *(a1 + v31);
    a3 = (a3 + 2 * v6 + v6 + v6);
    a1 = (a1 + 2 * v7 + v7 + v7);
    *v24.i64 = sub_2772A2DBC(v14, v15, v16, v17, v18, v19, vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(v20, v21)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(v20, v21)), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(v22, v23)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(v22, v23)), xmmword_2773B3B40)));
    v10 = 0;
    v25 = vaddq_s16(v36, v24);
    v9 = v25;
  }

  while ((v13 & 1) != 0);
  v26 = vpaddq_s16(v25, v25);
  v27 = vpaddq_s16(v26, v26);
  return vpaddq_s16(v27, v27).u16[0];
}

uint64_t sub_2772A2464(int8x8_t *a1, int a2, int8x8_t *a3, int a4)
{
  v4 = (a3 + 2 * a4);
  v5 = (a1 + 2 * a2);
  v6 = *v4;
  v7 = *v5;
  v8 = *(v4 + a4);
  v9 = *(v5 + a2);
  v10 = (v4 + 2 * a4);
  v11 = (v5 + 2 * a2);
  v12 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(v6, v7)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(v6, v7)), xmmword_2773B3B40));
  v13 = vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(v8, v9)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(v8, v9)), xmmword_2773B3B40));
  v14 = *v10;
  v15 = *v11;
  v16 = *(v10 + a4);
  v17 = *(v11 + a2);
  v18 = (v10 + 2 * a4);
  v19 = (v11 + 2 * a2);
  *v20.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*a3, *a1)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*a3, *a1)), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(a3 + a4), *(a1 + a2))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(a3 + a4), *(a1 + a2))), xmmword_2773B3B40)), v12, v13, vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(v14, v15)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(v14, v15)), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(v16, v17)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(v16, v17)), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*v18, *v19)), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*v18, *v19)), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(vzip1_s8(*(v18 + a4), *(v19 + a2))), xmmword_2773B3B40), vmulq_s16(vmovl_u8(vzip2_s8(*(v18 + a4), *(v19 + a2))), xmmword_2773B3B40)));
  v21 = vpaddq_s16(v20, v20);
  v22 = vpaddq_s16(v21, v21);
  return vpaddq_s16(v22, v22).u16[0];
}

uint64_t sub_2772A25CC(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = 0;
  v8 = a5;
  v9 = a2;
  v10 = 0uLL;
  v11 = 4 * a5;
  v12 = 4;
  do
  {
    v41 = v10;
    v13 = vrhaddq_u8(*(a3 + v7), *(a4 + v7));
    v14 = vzip1q_s8(v13, *a1);
    v15 = vzip2q_s8(v13, *a1);
    v16 = vpaddq_s16(vmulq_s16(vmovl_u8(*v15.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v15), xmmword_2773B3B40));
    v17 = (a3 + v7 + v8);
    v18 = *(a1 + v9);
    v19 = (a4 + v7 + v8);
    v20 = vrhaddq_u8(*v17, *v19);
    v21 = vzip1q_s8(v20, v18);
    v22 = vzip2q_s8(v20, v18);
    v23 = vpaddq_s16(vmulq_s16(vmovl_u8(*v22.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v22), xmmword_2773B3B40));
    v24 = (v17 + v8);
    v25 = (a1 + v9 + v9);
    v26 = (v19 + v8);
    v27 = vrhaddq_u8(*v24, *v26);
    v28 = vzip1q_s8(v27, *v25);
    v29 = vzip2q_s8(v27, *v25);
    v30 = vpaddq_s16(vmulq_s16(vmovl_u8(*v29.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v29), xmmword_2773B3B40));
    v31 = &v25->i8[v9];
    v32 = *(v25 + v9);
    v33 = vrhaddq_u8(*(v24 + v8), *(v26 + v8));
    v34 = vzip1q_s8(v33, v32);
    v35 = vzip2q_s8(v33, v32);
    *v36.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(*v14.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v14), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v21.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v21), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v28.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v28), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v34.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v34), xmmword_2773B3B40)), v16, v23, v30, vpaddq_s16(vmulq_s16(vmovl_u8(*v35.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v35), xmmword_2773B3B40)));
    v37 = vaddq_s16(v41, v36);
    v10 = v37;
    v7 += v11;
    a1 = &v31[v9];
    --v12;
  }

  while (v12);
  v38 = vpaddq_s16(v37, v37);
  v39 = vpaddq_s16(v38, v38);
  return vpaddq_s16(v39, v39).u16[0];
}

uint64_t sub_2772A2794(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = 0;
  v8 = a5;
  v9 = a2;
  v10 = 0uLL;
  v11 = 4 * a5;
  v12 = 1;
  do
  {
    v42 = v10;
    v13 = v12;
    v14 = vrhaddq_u8(*(a3 + v7), *(a4 + v7));
    v15 = vzip1q_s8(v14, *a1);
    v16 = vzip2q_s8(v14, *a1);
    v17 = vpaddq_s16(vmulq_s16(vmovl_u8(*v16.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v16), xmmword_2773B3B40));
    v18 = (a3 + v7 + v8);
    v19 = *(a1 + v9);
    v20 = (a4 + v7 + v8);
    v21 = vrhaddq_u8(*v18, *v20);
    v22 = vzip1q_s8(v21, v19);
    v23 = vzip2q_s8(v21, v19);
    v24 = vpaddq_s16(vmulq_s16(vmovl_u8(*v23.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v23), xmmword_2773B3B40));
    v25 = (v18 + v8);
    v26 = (a1 + v9 + v9);
    v27 = (v20 + v8);
    v28 = vrhaddq_u8(*v25, *v27);
    v29 = vzip1q_s8(v28, *v26);
    v30 = vzip2q_s8(v28, *v26);
    v31 = vpaddq_s16(vmulq_s16(vmovl_u8(*v30.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v30), xmmword_2773B3B40));
    v32 = &v26->i8[v9];
    v33 = *(v26 + v9);
    v34 = vrhaddq_u8(*(v25 + v8), *(v27 + v8));
    v35 = vzip1q_s8(v34, v33);
    v36 = vzip2q_s8(v34, v33);
    *v37.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(*v15.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v15), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v22.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v22), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v29.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v29), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v35.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v35), xmmword_2773B3B40)), v17, v24, v31, vpaddq_s16(vmulq_s16(vmovl_u8(*v36.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v36), xmmword_2773B3B40)));
    v12 = 0;
    v38 = vaddq_s16(v42, v37);
    v10 = v38;
    v7 += v11;
    a1 = &v32[v9];
  }

  while ((v13 & 1) != 0);
  v39 = vpaddq_s16(v38, v38);
  v40 = vpaddq_s16(v39, v39);
  return vpaddq_s16(v40, v40).u16[0];
}

uint64_t sub_2772A2960(unint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, uint8x16_t a8, int8x16_t a9, int8x16_t a10, uint8x16_t a11, int8x16_t a12, uint8x16_t a13)
{
  v18 = 0;
  v19 = 2 * a2;
  v70 = 8 * a5;
  v69 = a4 + a5;
  v20 = 6 * a5;
  v21 = v20 + a5;
  v68 = a4 + v21;
  v67 = a4 + v20;
  v22 = 4 * a5 + a5;
  v66 = a4 + v22;
  v65 = a4 + 4 * a5;
  v23 = a5 + (2 * a5);
  v64 = a4 + v23;
  v63 = a4 + 2 * a5;
  v61 = a3 + v21;
  v62 = a3 + a5;
  v59 = a3 + v22;
  v60 = a3 + v20;
  v57 = a3 + v23;
  v58 = a3 + 4 * a5;
  v56 = a3 + 2 * a5;
  v24 = 3 * v19 + a2;
  v25 = 2 * v19 + a2;
  v26 = 0uLL;
  v27.i64[1] = 0xFFFF0001FFFF0001;
  v28 = 1;
  v29 = a2;
  v30 = a2 + v19;
  do
  {
    v73 = v26;
    v26.i64[0] = *(a3 + v18);
    v27.i64[0] = *(a4 + v18);
    v31 = vrhaddq_u8(v26, v27);
    v27.i64[0] = *(v62 + v18);
    a8.i64[0] = *(v69 + v18);
    v32 = vrhaddq_u8(v27, a8);
    a8.i64[0] = *a1;
    v33 = vzip1q_s8(v31, a8);
    v34 = v28;
    a9.i64[0] = *(a1 + v29);
    v35 = vzip1q_s8(v32, a9);
    v36 = vmulq_s16(vmovl_u8(*v35.i8), xmmword_2773B3B40);
    v37 = vpaddq_s16(v36, vmulq_s16(vmovl_high_u8(v35), xmmword_2773B3B40));
    v36.i64[0] = *(v56 + v18);
    a9.i64[0] = *(v57 + v18);
    a10.i64[0] = *(a1 + v30);
    a11.i64[0] = *(v63 + v18);
    a12.i64[0] = *(a1 + v19);
    a13.i64[0] = *(v64 + v18);
    v38 = vzip1q_s8(vrhaddq_u8(v36, a11), a12);
    v39 = vmulq_s16(vmovl_u8(*v38.i8), xmmword_2773B3B40);
    v40 = vpaddq_s16(v39, vmulq_s16(vmovl_high_u8(v38), xmmword_2773B3B40));
    v41 = vzip1q_s8(vrhaddq_u8(a9, a13), a10);
    v42 = vmulq_s16(vmovl_u8(*v41.i8), xmmword_2773B3B40);
    v39.i64[0] = *(v58 + v18);
    a12.i64[0] = *(a1 + 2 * v19);
    a13.i64[0] = *(v59 + v18);
    v13.i64[0] = *(a1 + v25);
    v43 = vpaddq_s16(v42, vmulq_s16(vmovl_high_u8(v41), xmmword_2773B3B40));
    v42.i64[0] = *(v65 + v18);
    v14.i64[0] = *(v66 + v18);
    v44 = vzip1q_s8(vrhaddq_u8(v39, v42), a12);
    v45 = vzip1q_s8(vrhaddq_u8(a13, v14), v13);
    v46 = vmulq_s16(vmovl_u8(*v45.i8), xmmword_2773B3B40);
    a13.i64[0] = *(v60 + v18);
    v13.i64[0] = *(a1 + 3 * v19);
    v47 = vpaddq_s16(v46, vmulq_s16(vmovl_high_u8(v45), xmmword_2773B3B40));
    v46.i64[0] = *(v61 + v18);
    v14.i64[0] = *(a1 + v24);
    a1 = (a1 + 2 * v19 + v19 + v19);
    v15.i64[0] = *(v67 + v18);
    v16.i64[0] = *(v68 + v18);
    v48 = vrhaddq_u8(a13, v15);
    v49 = vrhaddq_u8(v46, v16);
    v50 = vzip1q_s8(v48, v13);
    v51 = vzip1q_s8(v49, v14);
    *v52.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(*v33.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v33), xmmword_2773B3B40)), v37, v40, v43, vpaddq_s16(vmulq_s16(vmovl_u8(*v44.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v44), xmmword_2773B3B40)), v47, vpaddq_s16(vmulq_s16(vmovl_u8(*v50.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v50), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v51.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v51), xmmword_2773B3B40)));
    v28 = 0;
    v27 = vaddq_s16(v73, v52);
    v26 = v27;
    v18 += v70;
  }

  while ((v34 & 1) != 0);
  v53 = vpaddq_s16(v27, v27);
  v54 = vpaddq_s16(v53, v53);
  return vpaddq_s16(v54, v54).u16[0];
}

uint64_t sub_2772A2C28(unint64_t *a1, int a2, unint64_t *a3, unint64_t *a4, int a5, uint8x16_t a6, int8x16_t a7, uint8x16_t a8, int8x16_t a9, uint8x16_t a10, uint8x16_t a11, uint8x16_t a12)
{
  a6.i64[0] = *a3;
  a7.i64[0] = *a1;
  a8.i64[0] = *(a3 + a5);
  a9.i64[0] = *(a1 + a2);
  v17 = (a3 + 2 * a5);
  v18 = (a1 + 2 * a2);
  a10.i64[0] = *a4;
  a11.i64[0] = *(a4 + a5);
  v19 = (a4 + 2 * a5);
  v20 = vzip1q_s8(vrhaddq_u8(a6, a10), a7);
  v21 = vzip1q_s8(vrhaddq_u8(a8, a11), a9);
  v22 = vmulq_s16(vmovl_u8(*v21.i8), xmmword_2773B3B40);
  v23 = vpaddq_s16(v22, vmulq_s16(vmovl_high_u8(v21), xmmword_2773B3B40));
  v22.i64[0] = *v17;
  a9.i64[0] = *(v17 + a5);
  a10.i64[0] = *v18;
  a11.i64[0] = *(v18 + a2);
  v24 = (v17 + 2 * a5);
  v25 = (v18 + 2 * a2);
  a12.i64[0] = *v19;
  v12.i64[0] = *(v19 + a5);
  v26 = (v19 + 2 * a5);
  v27 = vzip1q_s8(vrhaddq_u8(v22, a12), a10);
  v28 = vzip1q_s8(vrhaddq_u8(a9, v12), a11);
  v29 = vmulq_s16(vmovl_u8(*v28.i8), xmmword_2773B3B40);
  v30 = vpaddq_s16(v29, vmulq_s16(vmovl_high_u8(v28), xmmword_2773B3B40));
  v29.i64[0] = *v24;
  a11.i64[0] = *v25;
  a12.i64[0] = *(v24 + a5);
  v12.i64[0] = *(v25 + a2);
  v31 = (v24 + 2 * a5);
  v32 = (v25 + 2 * a2);
  v13.i64[0] = *v26;
  v14.i64[0] = *(v26 + a5);
  v33 = (v26 + 2 * a5);
  v34 = vzip1q_s8(vrhaddq_u8(v29, v13), a11);
  v35 = vzip1q_s8(vrhaddq_u8(a12, v14), v12);
  v36 = vmulq_s16(vmovl_u8(*v35.i8), xmmword_2773B3B40);
  v37 = vpaddq_s16(v36, vmulq_s16(vmovl_high_u8(v35), xmmword_2773B3B40));
  v36.i64[0] = *v31;
  v12.i64[0] = *(v31 + a5);
  v13.i64[0] = *(v32 + a2);
  v14.i64[0] = *v32;
  v15.i64[0] = *v33;
  v16.i64[0] = *(v33 + a5);
  v38 = vzip1q_s8(vrhaddq_u8(v36, v15), v14);
  v39 = vzip1q_s8(vrhaddq_u8(v12, v16), v13);
  *v40.i64 = sub_2772A2DBC(vpaddq_s16(vmulq_s16(vmovl_u8(*v20.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v20), xmmword_2773B3B40)), v23, vpaddq_s16(vmulq_s16(vmovl_u8(*v27.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v27), xmmword_2773B3B40)), v30, vpaddq_s16(vmulq_s16(vmovl_u8(*v34.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v34), xmmword_2773B3B40)), v37, vpaddq_s16(vmulq_s16(vmovl_u8(*v38.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v38), xmmword_2773B3B40)), vpaddq_s16(vmulq_s16(vmovl_u8(*v39.i8), xmmword_2773B3B40), vmulq_s16(vmovl_high_u8(v39), xmmword_2773B3B40)));
  v41 = vpaddq_s16(v40, v40);
  v42 = vpaddq_s16(v41, v41);
  return vpaddq_s16(v42, v42).u16[0];
}

double sub_2772A2DBC(int16x8_t a1, int16x8_t a2, int16x8_t a3, int16x8_t a4, int16x8_t a5, int16x8_t a6, int16x8_t a7, int16x8_t a8)
{
  v8 = vaddq_s16(a2, a1);
  v9 = vsubq_s16(a1, a2);
  v10 = vaddq_s16(a4, a3);
  v11 = vsubq_s16(a3, a4);
  v12 = vaddq_s16(a6, a5);
  v13 = vsubq_s16(a5, a6);
  v14 = vaddq_s16(a8, a7);
  v15 = vsubq_s16(a7, a8);
  v16 = vzip1q_s16(v8, v9);
  v17 = vzip2q_s16(v8, v9);
  v18 = vzip1q_s16(v10, v11);
  v19 = vzip2q_s16(v10, v11);
  v20 = vzip1q_s16(v12, v13);
  v21 = vzip2q_s16(v12, v13);
  v22 = vzip1q_s16(v14, v15);
  v23 = vzip2q_s16(v14, v15);
  v24 = vaddq_s16(v18, v16);
  v25 = vsubq_s16(v16, v18);
  v26 = vaddq_s16(v19, v17);
  v27 = vsubq_s16(v17, v19);
  v28 = vaddq_s16(v22, v20);
  v29 = vsubq_s16(v20, v22);
  v30 = vaddq_s16(v23, v21);
  v31 = vsubq_s16(v21, v23);
  v32 = vzip1q_s32(v24, v25);
  v33 = vzip2q_s32(v24, v25);
  v34 = vzip1q_s32(v26, v27);
  v35 = vzip2q_s32(v26, v27);
  v36 = vzip1q_s32(v28, v29);
  v37 = vzip2q_s32(v28, v29);
  v38 = vzip1q_s32(v30, v31);
  v39 = vzip2q_s32(v30, v31);
  v40 = vaddq_s16(v32, v33);
  v41 = vsubq_s16(v32, v33);
  v42 = vaddq_s16(v34, v35);
  v43 = vsubq_s16(v34, v35);
  v44 = vaddq_s16(v36, v37);
  v45 = vsubq_s16(v36, v37);
  v46 = vaddq_s16(v38, v39);
  v47 = vsubq_s16(v38, v39);
  v48 = vzip2q_s64(v40, v42);
  v40.i64[1] = v42.i64[0];
  v49 = vzip2q_s64(v41, v43);
  v41.i64[1] = v43.i64[0];
  v50 = vzip2q_s64(v44, v46);
  v44.i64[1] = v46.i64[0];
  v51 = vzip2q_s64(v45, v47);
  v45.i64[1] = v47.i64[0];
  *&result = vaddq_s16(vaddq_s16(vmaxq_s16(vabsq_s16(v41), vabsq_s16(v49)), vmaxq_s16(vabsq_s16(v40), vabsq_s16(v48))), vaddq_s16(vmaxq_s16(vabsq_s16(v44), vabsq_s16(v50)), vmaxq_s16(vabsq_s16(v45), vabsq_s16(v51)))).u64[0];
  return result;
}

int16x8_t *sub_2772A2EBC(int16x8_t *result, int8x16_t *a2, int8x16_t *a3, uint64_t a4, _BYTE *a5, _BYTE *a6, _OWORD *a7, int a8)
{
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = vshlq_u16(*(asc_2773B6110 + ((*a5 >> 1) & 0x70)), vdupq_n_s16(*a5 & 0x1F));
    v10 = vshlq_u16(*(asc_2773B6110 + ((*a6 >> 1) & 0x70)), vdupq_n_s16(*a6 & 0x1F));
    v11 = vzip2q_s16(vdupq_lane_s64(result->i64[0], 0), *result);
    v12 = vqtbl1q_s8(vzip1q_s16(vqtbl1q_s8(v9, xmmword_2773B3DC0), vqtbl1q_s8(v10, xmmword_2773B3DC0)), xmmword_2773B3DF0);
    v13 = vmulq_s16(v11, v12);
    if (a8)
    {
      v14 = vuzp2q_s16(vmull_s16(*v11.i8, *v12.i8), vmull_high_s16(v11, v12));
      v15 = vzip1q_s16(v13, v14);
      v16 = vzip2q_s16(v13, v14);
      v17 = vaddq_s32(v15, v16);
      v18 = vsubq_s32(v15, v16);
      v19 = vzip2q_s64(v17, v18);
      v17.i64[1] = v18.i64[0];
      v20 = vaddq_s32(v17, v19);
      v21 = vsubq_s32(v17, v19);
      v22 = vzip2q_s64(v20, v21);
      v20.i64[1] = v21.i64[0];
      v23 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(v20, 5uLL)), vshrq_n_s32(v22, 5uLL));
    }

    else
    {
      v24 = vqtbl1q_s8(v13, xmmword_2773B4400);
      v25 = vzip1q_s32(vqaddq_s16(v13, v24), vqsubq_s16(v13, v24));
      v26 = vqtbl1q_s8(v25, xmmword_2773B4400);
      v23 = vshrq_n_s16(vzip1q_s32(vqaddq_s16(v25, v26), vqsubq_s16(v25, v26)), 1uLL);
    }

    v27 = vqaddq_s16(v23, vqtbl1q_s8(xmmword_2773B5730, xmmword_2773B3DF0));
    if ((v8 & 2) != 0)
    {
      v32 = 0;
      v33 = vzip1q_s16(v9, v10);
      v34 = vzip2q_s16(v9, v10);
      v35 = a2 + 1;
      v36 = a3 + 1;
      do
      {
        v37 = v35[-1];
        v38 = v36[-1];
        v91.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v37, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
        v91.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v35, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
        v39 = vqtbl2q_s8(v91, xmmword_2773B5790);
        v91.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v37, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
        v91.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v35, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
        v91.val[0] = vqtbl2q_s8(v91, xmmword_2773B57D0);
        v92.val[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v38, xmmword_2773B5740), xmmword_2773B5750), xmmword_2773B5760);
        v92.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v36, xmmword_2773B5770), xmmword_2773B5780), xmmword_2773B44E0);
        v92.val[1] = vqtbl2q_s8(v92, xmmword_2773B5790);
        v91.val[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v38, xmmword_2773B57A0), xmmword_2773B57B0), xmmword_2773B3DB0);
        v40 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(*v36, xmmword_2773B57C0), xmmword_2773B4370), xmmword_2773B44D0);
        v41 = vqtbl2q_s8(*(&v91 + 16), xmmword_2773B57D0);
        v42 = vzip1q_s16(v39, v92.val[1]);
        v43 = vzip2q_s16(v39, v92.val[1]);
        v44 = vzip1q_s16(v91.val[0], v41);
        v45 = vzip2q_s16(v91.val[0], v41);
        if (a8)
        {
          v46 = vqtbl1q_s8(xmmword_2773B4420, xmmword_2773B3DF0);
          v47 = vmulq_s16(v42, v33);
          v48 = vuzp2q_s16(vmull_s16(*v42.i8, *v33.i8), vmull_high_s16(v42, v33));
          v49 = vshrq_n_u32(vaddq_s32(vzip2q_s16(v47, v48), v46), 4uLL);
          v50.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u32(vaddq_s32(vzip1q_s16(v47, v48), v46), 4uLL), xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v50.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v49, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v51 = vmulq_s16(v43, v34);
          v52 = vuzp2q_s16(vmull_s16(*v43.i8, *v34.i8), vmull_high_s16(v43, v34));
          v53 = vzip1q_s16(v51, v52);
          v54 = vzip2q_s16(v51, v52);
          v55 = vshrq_n_u32(vaddq_s32(v53, v46), 4uLL);
          v56 = vshrq_n_u32(vaddq_s32(v54, v46), 4uLL);
          v57.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v55, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v57.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v56, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v58 = vmulq_s16(v44, v33);
          v59 = vuzp2q_s16(vmull_s16(*v44.i8, *v33.i8), vmull_high_s16(v44, v33));
          v60 = vzip1q_s16(v58, v59);
          v61 = vzip2q_s16(v58, v59);
          v62 = vshrq_n_u32(vaddq_s32(v60, v46), 4uLL);
          v63 = vshrq_n_u32(vaddq_s32(v61, v46), 4uLL);
          v64.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v62, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v64.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v63, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v65 = vmulq_s16(v45, v34);
          v66 = vuzp2q_s16(vmull_s16(*v45.i8, *v34.i8), vmull_high_s16(v45, v34));
          v67 = vzip1q_s16(v65, v66);
          v68 = vshrq_n_u32(vaddq_s32(vzip2q_s16(v65, v66), v46), 4uLL);
          v69.i64[0] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u32(vaddq_s32(v67, v46), 4uLL), xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
          v69.i64[1] = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v68, xmmword_2773B5A30), xmmword_2773B5A40), xmmword_2773B3E40).u64[0];
        }

        else
        {
          v50 = vmulq_s16(v42, v33);
          v57 = vmulq_s16(v43, v34);
          v64 = vmulq_s16(v44, v33);
          v69 = vmulq_s16(v45, v34);
        }

        v70 = (a7 + *(&word_2773B60E0 + v32 + 16));
        v50.i32[0] = v27.i32[0];
        v71 = vaddq_s16(v50, v64);
        v72 = vsubq_s16(v50, v64);
        v73 = vsubq_s16(vshrq_n_s16(v57, 1uLL), v69);
        v74 = vsraq_n_s16(v57, v69, 1uLL);
        v75 = vaddq_s16(v74, v71);
        v76 = vaddq_s16(v72, v73);
        v77 = vsubq_s16(v72, v73);
        v78 = vsubq_s16(v71, v74);
        v79 = vzip1q_s32(v75, v77);
        v80 = vzip2q_s32(v75, v77);
        v81 = vzip1q_s32(v76, v78);
        v82 = vzip2q_s32(v76, v78);
        v83 = vzip1q_s32(v79, v81);
        v84 = vzip2q_s32(v79, v81);
        v85 = vzip1q_s32(v80, v82);
        v86 = vzip2q_s32(v80, v82);
        v87 = vaddq_s16(v83, v85);
        v88 = vsubq_s16(v83, v85);
        v89 = vsubq_s16(vshrq_n_s16(v84, 1uLL), v86);
        v90 = vsraq_n_s16(v84, v86, 1uLL);
        *v70 = vshrq_n_s16(vaddq_s16(v87, v90), 6uLL);
        v70[2] = vshrq_n_s16(vaddq_s16(v88, v89), 6uLL);
        v70[4] = vshrq_n_s16(vsubq_s16(v88, v89), 6uLL);
        v70[6] = vshrq_n_s16(vsubq_s16(v87, v90), 6uLL);
        v27 = vqtbl1q_s8(v27, xmmword_2773B57E0);
        ++v32;
        v35 += 2;
        v36 += 2;
      }

      while (v32 != 4);
    }

    else
    {
      v28 = 0;
      v29 = vshrq_n_s16(v27, 6uLL);
      do
      {
        v30 = (a7 + *(&word_2773B60E0 + v28 + 16));
        v31 = vqtbl1q_s8(v29, xmmword_2773B3DF0);
        *v30 = v31;
        v30[2] = v31;
        v30[4] = v31;
        v30[6] = v31;
        v29 = vqtbl1q_s8(v29, xmmword_2773B57E0);
        ++v28;
      }

      while (v28 != 4);
    }
  }

  else
  {
    a7[14] = 0u;
    a7[15] = 0u;
    a7[12] = 0u;
    a7[13] = 0u;
    a7[10] = 0u;
    a7[11] = 0u;
    a7[8] = 0u;
    a7[9] = 0u;
    a7[6] = 0u;
    a7[7] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
  }

  return result;
}