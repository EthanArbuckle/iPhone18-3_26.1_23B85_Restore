void sub_2779C9AE8(void *a1, int a2)
{
  if (a1)
  {
    LODWORD(v2) = a2;
    v4 = a1[35];
    if (v4)
    {
      free(*(v4 - 8));
    }

    a1[35] = 0;
    v5 = a1[51];
    if (v5)
    {
      free(*(v5 - 8));
    }

    v6 = a1 + 48;
    v2 = v2;
    do
    {
      *(v6 - 12) = 0;
      *(v6 - 9) = 0;
      *(v6 - 6) = 0;
      v7 = *(v6 - 3);
      if (v7)
      {
        free(*(v7 - 8));
      }

      *(v6 - 3) = 0;
      if (*v6)
      {
        free(*(*v6 - 8));
      }

      *v6++ = 0;
      --v2;
    }

    while (v2);
    v8 = 0;
    v9 = a1 + 33;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = v9[v8];
      if (v12)
      {
        free(*(v12 - 8));
        v9[v8] = 0;
      }

      v10 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    v13 = *(a1 - 1);

    free(v13);
  }
}

double sub_2779C9BC8(char a1)
{
  v2 = malloc_type_malloc(0x10FuLL, 0x5F484EBFuLL);
  if (v2)
  {
    v4 = v2;
    v5 = (v2 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v5 - 8) = v4;
    if (v5)
    {
      result = 0.0;
      *(v5 + 240) = 0;
      *(v5 + 208) = 0u;
      *(v5 + 224) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 192) = 0u;
      *(v5 + 144) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *(v5 + 1) = a1;
    }
  }

  return result;
}

void sub_2779C9C3C(unsigned __int8 *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  if (a5 == 2 && !(a4 | a3))
  {
    sub_2779C9AE8(*(a1 + 1), a2);
    *(a1 + 1) = 0;
    sub_2779C9AE8(*(a1 + 2), a2);
    *(a1 + 2) = 0;
    sub_2779C9AE8(*(a1 + 4), a2);
    *(a1 + 4) = 0;
    sub_2779C9AE8(*(a1 + 3), a2);
    *(a1 + 3) = 0;
    sub_2779C9AE8(*(a1 + 5), a2);
    v9 = 0;
    *(a1 + 5) = 0;
    v10 = a1 + 208;
    do
    {
      v11 = *&v10[v9];
      if (v11)
      {
        sub_2779C9C3C(v11, a2, 0, 0, 2);
        *&v10[v9] = 0;
      }

      v9 += 8;
    }

    while (v9 != 32);
LABEL_62:
    v34 = *(a1 - 1);

    free(v34);
    return;
  }

  v35 = a4 | a3;
  v12 = *a1;
  if (!a4 && (!a3 || *a1))
  {
    sub_2779C9AE8(*(a1 + 1), a2);
    *(a1 + 1) = 0;
  }

  v13 = 0;
  v36 = a3;
  v14 = a3 == 0;
  v15 = v12 != 1 || a3 == 0;
  v16 = a1 + 16;
  v17 = v12 != 2 || v14;
  v18 = a1 + 32;
  v19 = 1;
  do
  {
    v20 = v19;
    if (!v15 || (sub_2779C9AE8(*&v16[8 * v13], a2), *&v16[8 * v13] = 0, v17))
    {
      sub_2779C9AE8(*&v18[8 * v13], a2);
      *&v18[8 * v13] = 0;
    }

    v19 = 0;
    v13 = 1;
  }

  while ((v20 & 1) != 0);
  v21 = v12 != 4 || v36 == 0;
  v22 = v12 != 5 || v36 == 0;
  v23 = (a1 + 72);
  v24 = v12 != 6 || v36 == 0;
  v25 = v12 != 7 || v36 == 0;
  v26 = 3;
  do
  {
    if ((!v21 || (sub_2779C9AE8(*(v23 - 3), a2), *(v23 - 3) = 0, v22)) && (sub_2779C9AE8(*v23, a2), *v23 = 0, !v24) || (sub_2779C9AE8(v23[3], a2), v23[3] = 0, v25))
    {
      sub_2779C9AE8(v23[6], a2);
      v23[6] = 0;
    }

    ++v23;
    --v26;
  }

  while (v26);
  v27 = v12 != 8 || v36 == 0;
  v28 = v12 != 9 || v36 == 0;
  v29 = (a1 + 176);
  v30 = 4;
  do
  {
    if (!v27 || (sub_2779C9AE8(*(v29 - 4), a2), *(v29 - 4) = 0, v28))
    {
      sub_2779C9AE8(*v29, a2);
      *v29 = 0;
    }

    ++v29;
    --v30;
  }

  while (v30);
  if (!v36 || v12 != 3)
  {
    v31 = 0;
    v32 = a1 + 208;
    do
    {
      v33 = *&v32[v31];
      if (v33)
      {
        sub_2779C9C3C(v33, a2, 0, 0, a5);
        *&v32[v31] = 0;
      }

      v31 += 8;
    }

    while (v31 != 32);
  }

  if (!v35)
  {
    goto LABEL_62;
  }
}

uint64_t sub_2779C9F18(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 271184))
  {
    return 0;
  }

  v2 = a2 + 151552;
  v3 = *(a1 + 272180) != 1 && *(a1 + 644192) != 1;
  v5 = *(*(a1 + 270312) + 28);
  if (v5 == 15)
  {
    v6 = 1365;
  }

  else
  {
    v6 = 341;
  }

  v7 = *(a2 + 154776);
  if (v7)
  {
    free(*(v7 - 8));
  }

  if (!v3)
  {
    v6 = 1;
  }

  v8 = sub_2779724A8(v6, 0x78uLL);
  *(v2 + 3224) = v8;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3)
  {
    if (v5 == 15)
    {
      v9 = 1024;
    }

    else
    {
      v9 = 256;
    }

    v10 = v8;
    v11 = v9;
    do
    {
      *v10 = 0;
      v10 += 120;
      --v11;
    }

    while (v11);
    v12 = 1u;
    v13 = v9;
    do
    {
      if (v9 < 4)
      {
        break;
      }

      v14 = *(&unk_277BCB2C0 + v12);
      v15 = 120 * v13;
      v13 += v9 >> 2;
      v16 = v9 >> 2;
      do
      {
        v17 = *(v2 + 3224) + v15;
        *v17 = v14;
        *(v17 + 8) = v8;
        *(v17 + 16) = v8 + 120;
        v18 = v8 + 480;
        *(v17 + 24) = v8 + 240;
        *(v17 + 32) = v8 + 360;
        v15 += 120;
        v8 += 480;
        --v16;
      }

      while (v16);
      ++v12;
      v8 = v18;
      v19 = v9 >= 0x10;
      LODWORD(v9) = v9 >> 2;
    }

    while (v19);
    v8 = *(v2 + 3224);
  }

  else
  {
    *v8 = 6;
  }

  v4 = 0;
  *(v2 + 3232) = &v8[120 * v6 - 120];
  return v4;
}

uint64_t sub_2779CA0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, unsigned int a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = dword_277C3BEE4[a3];
  v11 = dword_277C3BF30[a3];
  v12 = (&unk_277BCB2D0 + 56 * a6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = v12[5];
  v19 = v12[6];
  result = __memcpy_chk();
  if (v11 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v11;
  }

  v23 = 33;
  do
  {
    v24 = *a5++;
    v55[v23] = v24;
    v23 += 33;
    --v22;
  }

  while (v22);
  if ((0xA0E3uLL >> v9))
  {
    v43 = a1 + a2;
    v44 = 2 * a2;
    v45 = 1;
    v46 = v55;
    do
    {
      v47 = 0;
      v48 = &v55[33 * v45];
      v49 = v48 - 33;
      v50 = vld1_dup_s8(v49);
      v51 = vld1_dup_s8(v48);
      v48 += 33;
      v52 = vld1_dup_s8(v48);
      do
      {
        v21.i32[0] = *&v46[v47 + 1];
        v53 = vmlsl_u8(vmull_u8(vdup_lane_s8(v21, 0), v14), v50, v13);
        v50 = vdup_lane_s8(v21, 3);
        v21 = vqrshrun_n_s16(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(v53, vdup_lane_s8(v21, 1), v15), vdup_lane_s8(v21, 2), v16), v50, v17), v51, v18), v52, v19), 4uLL);
        *&v46[v47 + 67] = v21.i32[1];
        *(a1 + v47) = v21.i32[0];
        *(v43 + v47) = v21.i32[1];
        v51 = vdup_lane_s8(v21, 3);
        v52 = vdup_lane_s8(v21, 7);
        *&v46[v47 + 34] = v21.i32[0];
        v54 = v47 + 5;
        v47 += 4;
      }

      while (v54 <= v10);
      v45 += 2;
      v43 += v44;
      a1 += v44;
      v46 += 66;
    }

    while (v45 <= v11);
  }

  else
  {
    v25 = a1 + a2;
    v26 = 2 * a2;
    v27 = 1;
    v28 = v55;
    do
    {
      v29 = 0;
      v30 = &v55[33 * v27];
      v31 = v30 - 33;
      v32 = vld1_dup_s8(v31);
      v33 = vld1_dup_s8(v30);
      v30 += 33;
      v34 = vld1_dup_s8(v30);
      do
      {
        v35 = &v28[v29];
        v36 = *&v28[v29 + 1];
        v37 = vdup_lane_s8(v36, 3);
        v38 = vqrshrun_n_s16(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmull_u8(vdup_lane_s8(v36, 0), v14), v32, v13), vdup_lane_s8(v36, 1), v15), vdup_lane_s8(v36, 2), v16), v37, v17), v33, v18), v34, v19), 4uLL);
        v32 = vdup_lane_s8(v36, 7);
        v39 = vqrshrun_n_s16(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmull_u8(vdup_lane_s8(v36, 4), v14), v37, v13), vdup_lane_s8(v36, 5), v15), vdup_lane_s8(v36, 6), v16), v32, v17), vdup_lane_s8(v38, 3), v18), vdup_lane_s8(v38, 7), v19), 4uLL);
        v40 = vzip1_s32(v38, v39);
        v41 = vzip2_s32(v38, v39);
        *(v35 + 34) = v40;
        *(v35 + 67) = v41;
        *(a1 + v29) = v40;
        *(v25 + v29) = v41;
        v33 = vdup_lane_s8(v39, 3);
        v34 = vdup_lane_s8(v39, 7);
        v42 = v29 + 9;
        v29 += 8;
      }

      while (v42 <= v10);
      v27 += 2;
      v25 += v26;
      a1 += v26;
      v28 += 66;
    }

    while (v27 <= v11);
  }

  return result;
}

int8x8_t sub_2779CA360(uint64_t a1, int a2, int a3, int8x8_t result)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = &v20;
    __memcpy_chk();
    v19 = v20;
    v8 = &v19 + a2;
    v9 = *v8;
    v8[1] = *v8;
    v8[2] = v9;
    v10 = (a1 + 1);
    v11 = a2 - 1;
    if (a3 == 1)
    {
      if (a2 >= 9)
      {
        v14 = a2 + 7;
        do
        {
          result = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v7 + 2), *v7), vshll_n_u8(*(v7 + 1), 1uLL)), 2uLL);
          *v10++ = result;
          v7 += 8;
          v14 -= 8;
        }

        while (v14 > 0xF);
        v11 = v14 - 8;
      }

      if (v11 >= 1)
      {
        v13 = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v7 + 2), *v7), vshll_n_u8(*(v7 + 1), 1uLL)), 2uLL);
        goto LABEL_23;
      }
    }

    else if (a3 == 2)
    {
      if (a2 >= 9)
      {
        v12 = a2 + 7;
        result = 0x505050505050505;
        do
        {
          *v10++ = vrshrn_n_s16(vmlal_u8(vmlal_u8(vmull_u8(*(v7 + 1), 0x606060606060606), *v7, 0x505050505050505), *(v7 + 2), 0x505050505050505), 4uLL);
          v7 += 8;
          v12 -= 8;
        }

        while (v12 > 0xF);
        v11 = v12 - 8;
      }

      if (v11 >= 1)
      {
        v13 = vrshrn_n_s16(vmlal_u8(vmlal_u8(vmull_u8(*(v7 + 1), 0x606060606060606), *v7, 0x505050505050505), *(v7 + 2), 0x505050505050505), 4uLL);
LABEL_23:
        result = vbsl_s8(vcgt_u8(0x807060504030201, vdup_n_s8(v11)), *v10, v13);
        *v10 = result;
      }
    }

    else
    {
      if (a2 < 9)
      {
        v16 = &v19;
      }

      else
      {
        v15 = a2 + 7;
        v16 = &v19;
        do
        {
          v17 = vaddw_u8(vaddl_u8(*(v16 + 2), *(v16 + 1)), *(v16 + 3));
          result = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v16 + 4), *v16), vaddq_s16(v17, v17)), 3uLL);
          *v10++ = result;
          v16 += 8;
          v15 -= 8;
        }

        while (v15 > 0xF);
        v11 = v15 - 8;
      }

      if (v11 >= 1)
      {
        v18 = vaddw_u8(vaddl_u8(*(v16 + 2), *(v16 + 1)), *(v16 + 3));
        v13 = vrshrn_n_s16(vaddq_s16(vaddl_u8(*(v16 + 4), *v16), vaddq_s16(v18, v18)), 3uLL);
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t sub_2779CA5A8(uint64_t result, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = result;
    v4 = (result - 1);
    v5 = *(result - 1);
    v8[0] = v5;
    v8[1] = v5;
    v6 = v8;
    result = __memcpy_chk();
    v8[a2 + 2] = *(v3 + a2 - 1);
    *(v3 - 2) = v5;
    v7 = a2 + 8;
    do
    {
      v10.val[1] = *(v6 + 2);
      v10.val[0] = vqrshrun_n_s16(vsubq_s16(vmlal_u8(vmull_u8(v10.val[1], 0x909090909090909), *(v6 + 1), 0x909090909090909), vaddl_u8(*(v6 + 3), *v6)), 4uLL);
      vst2_s8(v4, v10);
      v4 += 16;
      v6 += 8;
      v7 -= 8;
    }

    while (v7 > 8);
  }

  return result;
}

void sub_2779CA690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, int a11, int a12)
{
  v12 = MEMORY[0x28223BE20]();
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v12;
  v23 = a10;
  v25 = a9;
  v24 = HIDWORD(a9);
  v78 = *MEMORY[0x277D85DE8];
  if (!v22 || ((v26 = *(**(v22 + 7864) + 167), ((v26 >> 7) & 1) != 0) ? (v27 = (v13 + 272)) : (v27 = *(v22 + 7944)), *v27 == -1 || (v28 = v27[1], v28 == -1) || *v27 == 0x4000 && v28 == 0x4000))
  {
    if ((a12 - 1) > 2)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(&off_27A719800 + (a12 - 1));
    }

    if (a9)
    {
      if (HIDWORD(a9))
      {
        if (a9)
        {
          v30 = *(v29 + 4);
          v31 = *(v29 + 4);
          v32 = *v29;
          v33 = v32 + 2 * (2 * HIDWORD(a9) * v31);
          v34 = (v30 << 6) & 0x3FFF80;
          LODWORD(v64) = v17;
          HIDWORD(v64) = ((HIDWORD(a9) + 8 * v18 - 8) >> 3) + 8;
          off_280ABC830(a10 - 3 * a11, a11, &v65, 128, v32 + 2 * (2 * a9 * v31), 16, 0, 0xFFFFFFFFLL, v64);
          off_280ABC838(&v65 + v34 - 128, 128, v21, v20, 0, 0xFFFFFFFFLL, v33, 16, __PAIR64__(v19, v20));
          return;
        }

        v46 = *v29;
        v47 = *(v29 + 4);
        v38 = off_280ABC838;
        v80 = __PAIR64__(v18, v17);
        v44 = v46 + 2 * (2 * v24 * v47);
        v40 = a11;
        v41 = v20;
        v42 = v16;
        v39 = 0;
        v43 = 0xFFFFFFFFLL;
        v45 = 16;
      }

      else
      {
        v36 = *v29;
        v37 = *(v29 + 4);
        v38 = off_280ABC830;
        v80 = __PAIR64__(v18, v17);
        v39 = v36 + 2 * (2 * v25 * v37);
        v40 = a11;
        v41 = v17;
        v42 = v16;
        v43 = 16;
        v44 = 0;
        v45 = 0xFFFFFFFFLL;
      }

      v38(a10, v40, v42, v41, v39, v43, v44, v45, v80);
    }

    else if (v17 < 9)
    {
      if (v17 == 8)
      {
        do
        {
          *v21++ = *v23;
          v23 = (v23 + a11);
          --v19;
        }

        while (v19);
      }

      else
      {
        v62 = v18 / 2;
        do
        {
          LODWORD(v63) = *v23;
          HIDWORD(v63) = *(v23 + a11);
          *v21 = v63;
          v23 = (v23 + 2 * a11);
          v21 = (v21 + 2 * v17);
          --v62;
        }

        while (v62);
      }
    }

    else
    {
      do
      {
        for (i = 0; i < v17; i += 16)
        {
          *&v21[i / 8] = *&v23[i / 8];
        }

        v23 = (v23 + a11);
        v21 = (v21 + v17);
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v48 = *(v22 + 10656);
    v49 = (v26 >> 7) & 1;
    v70 = 0u;
    v71 = 0u;
    v50 = v48 - 7;
    v68 = 0u;
    v51 = 21 - v48;
    v69 = 0u;
    if (v48 <= 10)
    {
      v50 = 3;
    }

    v76 = 0;
    if (v48 <= 10)
    {
      v51 = 11;
    }

    v75 = 0uLL;
    v74 = 0uLL;
    *&v73[32] = 0uLL;
    if (v17 >= 5)
    {
      v52 = &off_27A7197B0;
    }

    else
    {
      v52 = &off_27A719770;
    }

    *&v73[16] = 0uLL;
    if (v18 >= 5)
    {
      v53 = &off_27A7197B0;
    }

    else
    {
      v53 = &off_27A719770;
    }

    *v73 = 0uLL;
    v54 = v49 == 0;
    v55 = 32;
    v72 = 0uLL;
    if (!v49)
    {
      v55 = 64;
    }

    v56 = (v22 + v55);
    v67 = 0uLL;
    v66 = 0uLL;
    *(&v70 + 1) = 0;
    *(&v68 + 1) = 0;
    *&v69 = 0;
    DWORD2(v69) = 0;
    HIDWORD(v69) = v50;
    LODWORD(v70) = v51;
    v57 = (*(*(v22 + 7960) + 192) >> 3) & 1;
    *(&v72 + 1) = __PAIR64__(v18, v17);
    *(&v74 + 1) = __PAIR64__(v57, v48);
    HIDWORD(v76) = (v26 >> 7) & 1;
    v65 = 0;
    v58 = *(v22 + 20);
    *&v73[40] = v58;
    *v73 = (4 * v14) >> v58.i8[4];
    *&v73[4] = (4 * v15) >> v58.i8[0];
    v77 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), vneg_s32(v58)), 0xAuLL)));
    v59 = &off_27A719760;
    if (v49)
    {
      v60 = &off_27A719760;
    }

    else
    {
      v60 = v52;
    }

    if (v54)
    {
      v59 = v53;
    }

    *&v71 = 0;
    *(&v71 + 1) = v60;
    *&v72 = v59;
    *&v74 = v27;
    v61 = v56[1];
    *&v73[8] = *v56;
    *&v73[24] = v61;
    sub_2779CAFC0();
  }
}

void sub_2779CAB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11, char a12, int a13)
{
  v13 = MEMORY[0x28223BE20]();
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v64 = *MEMORY[0x277D85DE8];
  if (!v13 || ((v23 = *(**(v13 + 7864) + 167), ((v23 >> 7) & 1) != 0) ? (v24 = (v14 + 272)) : (v24 = *(v13 + 7944)), *v24 == -1 || (v25 = v24[1], v25 == -1) || *v24 == 0x4000 && v25 == 0x4000))
  {
    if ((a13 - 1) > 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(&off_27A719800 + (a13 - 1));
    }

    if (a9)
    {
      if (HIDWORD(a9))
      {
        if (a9)
        {
          v27 = *(v26 + 8);
          v28 = (*v26 + 4 * HIDWORD(a9) * v27);
          sub_277A579F0(a10 - (((v27 >> 1) - 1) * a11), a11, &v51 >> 1, 128, (*v26 + 4 * a9 * v27), v18, v27 + ((HIDWORD(a9) + 8 * v19 - 8) >> 3), a12);
          sub_277A581B8((&v51 + ((*(v26 + 8) << 7) & 0x7FFF00) - 256) >> 1, 128, v22, v21, v28, v21, v20, a12);
        }

        else
        {
          v34 = (*v26 + 4 * HIDWORD(a9) * *(v26 + 8));

          sub_277A581B8(a10, a11, v17, v18, v34, v18, v19, a12);
        }
      }

      else
      {
        v33 = (*v26 + 4 * a9 * *(v26 + 8));

        sub_277A579F0(a10, a11, v17, v18, v33, v18, v19, a12);
      }
    }

    else
    {
      v29 = (2 * a10);
      v30 = (2 * v17);
      if (v18 < 5)
      {
        if (v18 == 4)
        {
          do
          {
            *v30++ = *v29;
            v29 = (v29 + 2 * a11);
            --v20;
          }

          while (v20);
        }

        else
        {
          v49 = v19 / 2;
          do
          {
            v50 = *(v29 + 2 * a11);
            *v30 = *v29;
            *(v30 + 2 * v18) = v50;
            v30 = (v30 + 4 * v18);
            v29 = (v29 + 4 * a11);
            --v49;
          }

          while (v49);
        }
      }

      else
      {
        do
        {
          v31 = 0;
          for (i = 0; i < v18; i += 8)
          {
            *&v30[v31] = *&v29[v31];
            v31 += 2;
          }

          v30 = (v30 + 2 * v18);
          v29 = (v29 + 2 * a11);
          --v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    v35 = *(v13 + 10656);
    v36 = (v23 >> 7) & 1;
    v56 = 0u;
    v57 = 0u;
    v37 = v35 - 7;
    v54 = 0u;
    v38 = 21 - v35;
    v55 = 0u;
    if (v35 <= 10)
    {
      v37 = 3;
    }

    v62 = 0;
    if (v35 <= 10)
    {
      v38 = 11;
    }

    v61 = 0uLL;
    v60 = 0uLL;
    *&v59[32] = 0uLL;
    if (v18 >= 5)
    {
      v39 = &off_27A7197B0;
    }

    else
    {
      v39 = &off_27A719770;
    }

    *&v59[16] = 0uLL;
    if (v19 >= 5)
    {
      v40 = &off_27A7197B0;
    }

    else
    {
      v40 = &off_27A719770;
    }

    *v59 = 0uLL;
    v41 = v36 == 0;
    v42 = 32;
    v58 = 0uLL;
    if (!v36)
    {
      v42 = 64;
    }

    v43 = (v13 + v42);
    v53 = 0uLL;
    v52 = 0uLL;
    *(&v56 + 1) = 0;
    *(&v54 + 1) = 0;
    *&v55 = 0;
    DWORD2(v55) = 0;
    HIDWORD(v55) = v37;
    LODWORD(v56) = v38;
    v44 = (*(*(v13 + 7960) + 192) >> 3) & 1;
    *(&v58 + 1) = __PAIR64__(v19, v18);
    *(&v60 + 1) = __PAIR64__(v44, v35);
    HIDWORD(v62) = v36;
    v51 = 0;
    v45 = (4 * v15) >> BYTE4(*(v13 + 20));
    *&v59[40] = *(v13 + 20);
    *v59 = v45;
    *&v59[4] = (4 * v16) >> v59[40];
    v63 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), vneg_s32(*&v59[40])), 0xAuLL)));
    v46 = &off_27A719760;
    if (v41)
    {
      v47 = v39;
    }

    else
    {
      v47 = &off_27A719760;
    }

    if (v41)
    {
      v46 = v40;
    }

    *&v57 = 0;
    *(&v57 + 1) = v47;
    *&v58 = v46;
    *&v60 = v24;
    v48 = v43[1];
    *&v59[8] = *v43;
    *&v59[24] = v48;
    sub_2779CAFC0();
  }
}

void sub_2779CAFC0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  STACK[0x8038] = *MEMORY[0x277D85DE8];
  v6 = v1[21];
  v8 = vadd_s32(vshl_u32(vrev64_s32(vshr_n_s32(vshl_n_s32(v7, 0x10uLL), 0x10uLL)), vsub_s32(0x100000001, v1[20])), vrev64_s32(vshl_n_s32(v1[15], 4uLL)));
  v9 = **&v6;
  if (**&v6 == -1 || (v10 = *(*&v6 + 4), v10 == -1) || v9 == 0x4000 && v10 == 0x4000)
  {
    v11 = vshl_n_s32(v8, 6uLL);
  }

  else
  {
    v34 = 8 * v10 - 0x20000 + v10 * v8.i32[1];
    if (v34 < 0)
    {
      v35 = -((128 - v34) >> 8);
    }

    else
    {
      v35 = (v34 + 128) >> 8;
    }

    v36 = 8 * v9 - 0x20000 + v9 * v8.i32[0];
    if (v36 < 0)
    {
      v37 = -((128 - v36) >> 8);
    }

    else
    {
      v37 = (v36 + 128) >> 8;
    }

    v11 = __PAIR64__(v35, v37);
  }

  v12 = vadd_s32(v11, 0x2000000020);
  v13 = vrev64_s32(v1[26]);
  v14 = vbsl_s8(vcgt_s32(v13, v12), v13, vmin_s32(v12, vadd_s32(vshl_n_s32(v1[18], 0xAuLL), 0x100000001000)));
  v15 = *(*&v6 + 8);
  v397[1] = vand_s8(v14, 0x300000003);
  v397[2] = v14;
  v397[0] = v15;
  v16 = v1[19].u32[0];
  v17 = *&v1[17] + v16 * (v14.i32[1] >> 10) + (v14.i32[0] >> 10);
  if (v1->i32[1] > 1u)
  {
    v18 = &v1[23];
    v19 = v1[25].u8[0];
    if (v1[22].i32[1])
    {
      v20 = (&v398 >> 1);
    }

    else
    {
      v20 = &v398;
    }

    v21 = *(v2 + 56);
    v22 = *(v2 + 64);
    v23 = *(v2 + 64);
    *(v2 + 56) = &v398;
    *(v2 + 64) = 128;
    sub_27798DA3C(v17, v16, v20, 128, v2, v397);
    if (!*(v2 + 76) && *(v2 + 195) == 3)
    {
      v24 = *(v2 + 184);
      v25 = *(v2 + 112);
      v26 = *(v2 + 116);
      v27 = vdupq_n_s16(*(v2 + 68) - *(v2 + 176) + *(v2 + 72) - 6);
      if (*(v2 + 194))
      {
        if (v25 < 16)
        {
          if (v25 == 8)
          {
            if (v26 <= 1)
            {
              v55 = 1;
            }

            else
            {
              v55 = *(v2 + 116);
            }

            v56 = &v398;
            v57 = v21;
            do
            {
              *v24++ = vqsub_u8(0x1A1A1A1A1A1A1A1ALL, vshrn_n_s16(vrshlq_u16(vabdq_u16(*v57, *v56), v27), 4uLL));
              v56 += 16;
              v57 = (v57 + 2 * v22);
              --v55;
            }

            while (v55);
          }

          else if (v25 == 4)
          {
            v45 = 0;
            v46 = &v398;
            v47 = v21;
            do
            {
              v48.i64[0] = *v47;
              v48.i64[1] = *(v47 + 2 * v22);
              v49.i64[0] = *v46;
              v49.i64[1] = v46[32];
              *v24++ = vqsub_u8(0x1A1A1A1A1A1A1A1ALL, vshrn_n_s16(vrshlq_u16(vabdq_u16(v48, v49), v27), 4uLL));
              v46 += 64;
              v45 += 2;
              v47 = (v47 + 4 * v22);
            }

            while (v45 < v26);
          }
        }

        else
        {
          v28 = 0;
          if (v26 <= 1)
          {
            v26 = 1;
          }

          v29 = &v398;
          v30.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
          v30.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
          v31 = v21;
          do
          {
            v32 = 0;
            for (i = 0; i < v25; i += 16)
            {
              *v24[i / 8].i8 = vqsubq_u8(v30, vshrn_high_n_s16(vshrn_n_s16(vrshlq_u16(vabdq_u16(*v31[v32].i8, *&v29[v32]), v27), 4uLL), vrshlq_u16(vabdq_u16(*v31[v32 + 2].i8, *&v29[v32 + 2]), v27), 4uLL));
              v32 += 4;
            }

            v24 = (v24 + i);
            v29 += 32;
            ++v28;
            v31 = (v31 + 2 * v22);
          }

          while (v28 != v26);
        }
      }

      else if (v25 < 16)
      {
        if (v25 == 8)
        {
          if (v26 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = *(v2 + 116);
          }

          v59 = &v398;
          v60 = v21;
          do
          {
            *v24++ = vmin_u8(vadd_s8(vshrn_n_s16(vrshlq_u16(vabdq_u16(*v60, *v59), v27), 4uLL), 0x2626262626262626), 0x4040404040404040);
            v59 += 16;
            v60 = (v60 + 2 * v22);
            --v58;
          }

          while (v58);
        }

        else if (v25 == 4)
        {
          v50 = 0;
          v51 = &v398;
          v52 = v21;
          do
          {
            v53.i64[0] = *v52;
            v53.i64[1] = *(v52 + 2 * v22);
            v54.i64[0] = *v51;
            v54.i64[1] = v51[32];
            *v24++ = vmin_u8(vadd_s8(vshrn_n_s16(vrshlq_u16(vabdq_u16(v53, v54), v27), 4uLL), 0x2626262626262626), 0x4040404040404040);
            v51 += 64;
            v50 += 2;
            v52 = (v52 + 4 * v22);
          }

          while (v50 < v26);
        }
      }

      else
      {
        v38 = 0;
        if (v26 <= 1)
        {
          v26 = 1;
        }

        v39 = &v398;
        v40.i64[0] = 0x2626262626262626;
        v40.i64[1] = 0x2626262626262626;
        v41.i64[0] = 0x4040404040404040;
        v41.i64[1] = 0x4040404040404040;
        v42 = v21;
        do
        {
          v43 = 0;
          for (j = 0; j < v25; j += 16)
          {
            *v24[j / 8].i8 = vminq_u8(vaddq_s8(vshrn_high_n_s16(vshrn_n_s16(vrshlq_u16(vabdq_u16(*v42[v43].i8, *&v39[v43]), v27), 4uLL), vrshlq_u16(vabdq_u16(*v42[v43 + 2].i8, *&v39[v43 + 2]), v27), 4uLL), v40), v41);
            v43 += 4;
          }

          v24 = (v24 + j);
          v39 += 32;
          ++v38;
          v42 = (v42 + 2 * v22);
        }

        while (v38 != v26);
      }
    }

    v62 = *(v2 + 112);
    v61 = *(v2 + 116);
    v63 = *(v2 + 164);
    if (*(v2 + 195) == 2)
    {
      v18 = (*&dword_27A722360[8 * v19 + 6] + (*(v2 + 193) << 7) + 8 * *(v2 + 192));
    }

    v64 = *(v2 + 160);
    v65 = *v18;
    v66 = byte_277C3CAFE[v19];
    if (*(v2 + 180))
    {
      v67 = *(v2 + 176);
      v68 = (2 * v5);
      v69 = v63 | v64;
      if (v67 == 10)
      {
        if (v69)
        {
          if ((v63 & v64) == 1)
          {
            if (v62 <= 7)
            {
              v283 = &v398;
              v284.i64[0] = 0x40004000400040;
              v284.i64[1] = 0x40004000400040;
              v285.i64[0] = 0xFC00FC00FC00FC00;
              v285.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v286 = *v65;
                v287 = *(v65 + v66);
                v288 = (v65 + v66 + v66);
                v289 = *v288;
                v290 = (v288 + v66);
                v291 = vrshr_n_u8(vqadd_u8(vpadd_s8(v286, v289), vpadd_s8(v287, *v290)), 2uLL);
                v292 = vmovl_u8(v291);
                v293 = vsubw_u8(v284, v291);
                v294.i64[0] = 0x1700000017;
                v294.i64[1] = 0x1700000017;
                v295.i64[0] = 0x1700000017;
                v295.i64[1] = 0x1700000017;
                v296 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v294, *v292.i8, *v21), *v293.i8, *v283), 0xAuLL), vmlal_u16(vmlal_u16(v295, *&vextq_s8(v292, v292, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v293, v293, 8uLL), v283[32]), 0xAuLL), v285);
                v21 = (v21 + 2 * (2 * v23));
                *v68 = v296.i64[0];
                *(v68 + 2 * v4) = v296.i64[1];
                v68 = (v68 + 2 * (2 * v4));
                v65 = (v290 + v66);
                v283 += 64;
                v61 -= 2;
              }

              while (v61);
            }

            else
            {
              v90 = (2 * v66);
              v91 = v65 + v66;
              v92 = &v398;
              v93.i64[0] = 0x40004000400040;
              v93.i64[1] = 0x40004000400040;
              v94.i64[0] = 0xFC00FC00FC00FC00;
              v94.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v95 = 0;
                for (k = 0; k < v62; k += 8)
                {
                  v97 = vrshr_n_u8(vqadd_u8(*&vpaddq_s8(*v65[v95].i8, *v65[v95].i8), *&vpaddq_s8(*&v91[v95 * 8], *&v91[v95 * 8])), 2uLL);
                  v98 = vmovl_u8(v97);
                  v99 = vsubw_u8(v93, v97);
                  v100.i64[0] = 0x1700000017;
                  v100.i64[1] = 0x1700000017;
                  v101.i64[0] = 0x1700000017;
                  v101.i64[1] = 0x1700000017;
                  *&v68[v95] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v100, *v98.i8, v21[v95]), *v99.i8, v92[v95]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v101, v98, *v21[v95].i8), v99, *&v92[v95]), 0xAuLL), v94);
                  v95 += 2;
                }

                v65 = (v65 + v90);
                v92 += 32;
                v68 = (v68 + 2 * v4);
                v21 = (v21 + 2 * v22);
                v91 += v90;
                --v61;
              }

              while (v61);
            }
          }

          else if (v64 != 1 || v63)
          {
            v271 = (2 * v66);
            if (v62 <= 7)
            {
              v348 = &v398;
              v349.i64[0] = 0x40004000400040;
              v349.i64[1] = 0x40004000400040;
              v350.i64[0] = 0xFC00FC00FC00FC00;
              v350.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v351.i32[0] = v65->i32[0];
                v351.i32[1] = *(v65->i32 + v271);
                v352.i32[0] = *(v65->i32 + v66);
                v352.i32[1] = *(v65->i32 + 3 * v66);
                v353 = vrhadd_u8(v351, v352);
                v354 = vmovl_u8(v353);
                v355 = vsubw_u8(v349, v353);
                v356.i64[0] = 0x1700000017;
                v356.i64[1] = 0x1700000017;
                v357.i64[0] = 0x1700000017;
                v357.i64[1] = 0x1700000017;
                v358 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v356, *v354.i8, *v21), *v355.i8, *v348), 0xAuLL), vmlal_u16(vmlal_u16(v357, *&vextq_s8(v354, v354, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v355, v355, 8uLL), v348[32]), 0xAuLL), v350);
                *v68 = v358.i64[0];
                v65 = (v65 + 4 * v66);
                *(v68 + 2 * v4) = v358.i64[1];
                v348 += 64;
                v21 = (v21 + 2 * (2 * v23));
                v68 = (v68 + 2 * (2 * v4));
                v61 -= 2;
              }

              while (v61);
            }

            else
            {
              v272 = v65 + v66;
              v273 = &v398;
              v274.i64[0] = 0x40004000400040;
              v274.i64[1] = 0x40004000400040;
              v275.i64[0] = 0xFC00FC00FC00FC00;
              v275.i64[1] = 0xFC00FC00FC00FC00;
              do
              {
                v276 = 0;
                for (m = 0; m < v62; m += 8)
                {
                  v278 = vrhadd_u8(v65[m / 8], *&v272[m]);
                  v279 = vmovl_u8(v278);
                  v280 = vsubw_u8(v274, v278);
                  v281.i64[0] = 0x1700000017;
                  v281.i64[1] = 0x1700000017;
                  v282.i64[0] = 0x1700000017;
                  v282.i64[1] = 0x1700000017;
                  *&v68[v276] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v281, *v279.i8, v21[v276]), *v280.i8, v273[v276]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v282, v279, *v21[v276].i8), v280, *&v273[v276]), 0xAuLL), v275);
                  v276 += 2;
                }

                v65 = (v65 + v271);
                v273 += 32;
                v68 = (v68 + 2 * v4);
                v21 = (v21 + 2 * v22);
                v272 += v271;
                --v61;
              }

              while (v61);
            }
          }

          else if (v62 <= 7)
          {
            v368 = &v398;
            v369.i64[0] = 0x40004000400040;
            v369.i64[1] = 0x40004000400040;
            v370.i64[0] = 0xFC00FC00FC00FC00;
            v370.i64[1] = 0xFC00FC00FC00FC00;
            do
            {
              v371 = vrshr_n_u8(vpadd_s8(*v65, *(v65 + v66)), 1uLL);
              v372 = vmovl_u8(v371);
              v373 = vsubw_u8(v369, v371);
              v374.i64[0] = 0x1700000017;
              v374.i64[1] = 0x1700000017;
              v375.i64[0] = 0x1700000017;
              v375.i64[1] = 0x1700000017;
              v376 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v374, *v372.i8, *v21), *v373.i8, *v368), 0xAuLL), vmlal_u16(vmlal_u16(v375, *&vextq_s8(v372, v372, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v373, v373, 8uLL), v368[32]), 0xAuLL), v370);
              *v68 = v376.i64[0];
              v65 = (v65 + 2 * v66);
              *(v68 + 2 * v4) = v376.i64[1];
              v368 += 64;
              v21 = (v21 + 2 * (2 * v23));
              v68 = (v68 + 2 * (2 * v4));
              v61 -= 2;
            }

            while (v61);
          }

          else
          {
            v176 = &v398;
            v177.i64[0] = 0x40004000400040;
            v177.i64[1] = 0x40004000400040;
            v178.i64[0] = 0xFC00FC00FC00FC00;
            v178.i64[1] = 0xFC00FC00FC00FC00;
            do
            {
              v179 = 0;
              for (n = 0; n < v62; n += 8)
              {
                v181 = vrshr_n_u8(vpadd_s8(v65[v179], v65[v179 + 1]), 1uLL);
                v182 = vmovl_u8(v181);
                v183 = vsubw_u8(v177, v181);
                v184.i64[0] = 0x1700000017;
                v184.i64[1] = 0x1700000017;
                v185.i64[0] = 0x1700000017;
                v185.i64[1] = 0x1700000017;
                *&v68[v179] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v184, *v182.i8, v21[v179]), *v183.i8, v176[v179]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v185, v182, *v21[v179].i8), v183, *&v176[v179]), 0xAuLL), v178);
                v179 += 2;
              }

              v65 = (v65 + v66);
              v176 += 32;
              v68 = (v68 + 2 * v4);
              v21 = (v21 + 2 * v22);
              --v61;
            }

            while (v61);
          }
        }

        else if (v62 <= 7)
        {
          v227 = &v398;
          v228.i64[0] = 0x40004000400040;
          v228.i64[1] = 0x40004000400040;
          v229.i64[0] = 0xFC00FC00FC00FC00;
          v229.i64[1] = 0xFC00FC00FC00FC00;
          do
          {
            v230.i32[0] = v65->i32[0];
            v230.i32[1] = *(v65->i32 + v66);
            v231 = vmovl_u8(v230);
            v232 = vsubw_u8(v228, v230);
            v233.i64[0] = 0x1700000017;
            v233.i64[1] = 0x1700000017;
            v234.i64[0] = 0x1700000017;
            v234.i64[1] = 0x1700000017;
            v235 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v233, *v231.i8, *v21), *v232.i8, *v227), 0xAuLL), vmlal_u16(vmlal_u16(v234, *&vextq_s8(v231, v231, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v232, v232, 8uLL), v227[32]), 0xAuLL), v229);
            *v68 = v235.i64[0];
            v65 = (v65 + 2 * v66);
            *(v68 + 2 * v4) = v235.i64[1];
            v227 += 64;
            v21 = (v21 + 2 * (2 * v23));
            v68 = (v68 + 2 * (2 * v4));
            v61 -= 2;
          }

          while (v61);
        }

        else
        {
          v140 = &v398;
          v141.i64[0] = 0x40004000400040;
          v141.i64[1] = 0x40004000400040;
          v142.i64[0] = 0xFC00FC00FC00FC00;
          v142.i64[1] = 0xFC00FC00FC00FC00;
          do
          {
            v143 = 0;
            for (ii = 0; ii < v62; ii += 8)
            {
              v145 = v65[ii / 8];
              v146 = vmovl_u8(v145);
              v147 = vsubw_u8(v141, v145);
              v148.i64[0] = 0x1700000017;
              v148.i64[1] = 0x1700000017;
              v149.i64[0] = 0x1700000017;
              v149.i64[1] = 0x1700000017;
              *&v68[v143] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v148, *v146.i8, v21[v143]), *v147.i8, v140[v143]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v149, v146, *v21[v143].i8), v147, *&v140[v143]), 0xAuLL), v142);
              v143 += 2;
            }

            v65 = (v65 + v66);
            v140 += 32;
            v68 = (v68 + 2 * v4);
            v21 = (v21 + 2 * v22);
            --v61;
          }

          while (v61);
        }
      }

      else if (v67 == 12)
      {
        if (v69)
        {
          if ((v63 & v64) == 1)
          {
            if (v62 <= 7)
            {
              v257 = &v398;
              v258.i64[0] = 0x40004000400040;
              v258.i64[1] = 0x40004000400040;
              v259.i64[0] = 0xF000F000F000F000;
              v259.i64[1] = 0xF000F000F000F000;
              do
              {
                v260 = *v65;
                v261 = *(v65 + v66);
                v262 = (v65 + v66 + v66);
                v263 = *v262;
                v264 = (v262 + v66);
                v265 = vrshr_n_u8(vqadd_u8(vpadd_s8(v260, v263), vpadd_s8(v261, *v264)), 2uLL);
                v266 = vmovl_u8(v265);
                v267 = vsubw_u8(v258, v265);
                v268.i64[0] = 0x1700000017;
                v268.i64[1] = 0x1700000017;
                v269.i64[0] = 0x1700000017;
                v269.i64[1] = 0x1700000017;
                v270 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v268, *v266.i8, *v21), *v267.i8, *v257), 8uLL), vmlal_u16(vmlal_u16(v269, *&vextq_s8(v266, v266, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v267, v267, 8uLL), v257[32]), 8uLL), v259);
                v21 = (v21 + 2 * (2 * v23));
                *v68 = v270.i64[0];
                *(v68 + 2 * v4) = v270.i64[1];
                v68 = (v68 + 2 * (2 * v4));
                v65 = (v264 + v66);
                v257 += 64;
                v61 -= 2;
              }

              while (v61);
            }

            else
            {
              v70 = (2 * v66);
              v71 = v65 + v66;
              v72 = &v398;
              v73.i64[0] = 0x40004000400040;
              v73.i64[1] = 0x40004000400040;
              v74.i64[0] = 0xF000F000F000F000;
              v74.i64[1] = 0xF000F000F000F000;
              do
              {
                v75 = 0;
                for (jj = 0; jj < v62; jj += 8)
                {
                  v77 = vrshr_n_u8(vqadd_u8(*&vpaddq_s8(*v65[v75].i8, *v65[v75].i8), *&vpaddq_s8(*&v71[v75 * 8], *&v71[v75 * 8])), 2uLL);
                  v78 = vmovl_u8(v77);
                  v79 = vsubw_u8(v73, v77);
                  v80.i64[0] = 0x1700000017;
                  v80.i64[1] = 0x1700000017;
                  v81.i64[0] = 0x1700000017;
                  v81.i64[1] = 0x1700000017;
                  *&v68[v75] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v80, *v78.i8, v21[v75]), *v79.i8, v72[v75]), 8uLL), vmlal_high_u16(vmlal_high_u16(v81, v78, *v21[v75].i8), v79, *&v72[v75]), 8uLL), v74);
                  v75 += 2;
                }

                v65 = (v65 + v70);
                v72 += 32;
                v68 = (v68 + 2 * v4);
                v21 = (v21 + 2 * v22);
                v71 += v70;
                --v61;
              }

              while (v61);
            }
          }

          else if (v64 != 1 || v63)
          {
            v245 = (2 * v66);
            if (v62 <= 7)
            {
              v337 = &v398;
              v338.i64[0] = 0x40004000400040;
              v338.i64[1] = 0x40004000400040;
              v339.i64[0] = 0xF000F000F000F000;
              v339.i64[1] = 0xF000F000F000F000;
              do
              {
                v340.i32[0] = v65->i32[0];
                v340.i32[1] = *(v65->i32 + v245);
                v341.i32[0] = *(v65->i32 + v66);
                v341.i32[1] = *(v65->i32 + 3 * v66);
                v342 = vrhadd_u8(v340, v341);
                v343 = vmovl_u8(v342);
                v344 = vsubw_u8(v338, v342);
                v345.i64[0] = 0x1700000017;
                v345.i64[1] = 0x1700000017;
                v346.i64[0] = 0x1700000017;
                v346.i64[1] = 0x1700000017;
                v347 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v345, *v343.i8, *v21), *v344.i8, *v337), 8uLL), vmlal_u16(vmlal_u16(v346, *&vextq_s8(v343, v343, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v344, v344, 8uLL), v337[32]), 8uLL), v339);
                *v68 = v347.i64[0];
                v65 = (v65 + 4 * v66);
                *(v68 + 2 * v4) = v347.i64[1];
                v337 += 64;
                v21 = (v21 + 2 * (2 * v23));
                v68 = (v68 + 2 * (2 * v4));
                v61 -= 2;
              }

              while (v61);
            }

            else
            {
              v246 = v65 + v66;
              v247 = &v398;
              v248.i64[0] = 0x40004000400040;
              v248.i64[1] = 0x40004000400040;
              v249.i64[0] = 0xF000F000F000F000;
              v249.i64[1] = 0xF000F000F000F000;
              do
              {
                v250 = 0;
                for (kk = 0; kk < v62; kk += 8)
                {
                  v252 = vrhadd_u8(v65[kk / 8], *&v246[kk]);
                  v253 = vmovl_u8(v252);
                  v254 = vsubw_u8(v248, v252);
                  v255.i64[0] = 0x1700000017;
                  v255.i64[1] = 0x1700000017;
                  v256.i64[0] = 0x1700000017;
                  v256.i64[1] = 0x1700000017;
                  *&v68[v250] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v255, *v253.i8, v21[v250]), *v254.i8, v247[v250]), 8uLL), vmlal_high_u16(vmlal_high_u16(v256, v253, *v21[v250].i8), v254, *&v247[v250]), 8uLL), v249);
                  v250 += 2;
                }

                v65 = (v65 + v245);
                v247 += 32;
                v68 = (v68 + 2 * v4);
                v21 = (v21 + 2 * v22);
                v246 += v245;
                --v61;
              }

              while (v61);
            }
          }

          else if (v62 <= 7)
          {
            v359 = &v398;
            v360.i64[0] = 0x40004000400040;
            v360.i64[1] = 0x40004000400040;
            v361.i64[0] = 0xF000F000F000F000;
            v361.i64[1] = 0xF000F000F000F000;
            do
            {
              v362 = vrshr_n_u8(vpadd_s8(*v65, *(v65 + v66)), 1uLL);
              v363 = vmovl_u8(v362);
              v364 = vsubw_u8(v360, v362);
              v365.i64[0] = 0x1700000017;
              v365.i64[1] = 0x1700000017;
              v366.i64[0] = 0x1700000017;
              v366.i64[1] = 0x1700000017;
              v367 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v365, *v363.i8, *v21), *v364.i8, *v359), 8uLL), vmlal_u16(vmlal_u16(v366, *&vextq_s8(v363, v363, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v364, v364, 8uLL), v359[32]), 8uLL), v361);
              *v68 = v367.i64[0];
              v65 = (v65 + 2 * v66);
              *(v68 + 2 * v4) = v367.i64[1];
              v359 += 64;
              v21 = (v21 + 2 * (2 * v23));
              v68 = (v68 + 2 * (2 * v4));
              v61 -= 2;
            }

            while (v61);
          }

          else
          {
            v166 = &v398;
            v167.i64[0] = 0x40004000400040;
            v167.i64[1] = 0x40004000400040;
            v168.i64[0] = 0xF000F000F000F000;
            v168.i64[1] = 0xF000F000F000F000;
            do
            {
              v169 = 0;
              for (mm = 0; mm < v62; mm += 8)
              {
                v171 = vrshr_n_u8(vpadd_s8(v65[v169], v65[v169 + 1]), 1uLL);
                v172 = vmovl_u8(v171);
                v173 = vsubw_u8(v167, v171);
                v174.i64[0] = 0x1700000017;
                v174.i64[1] = 0x1700000017;
                v175.i64[0] = 0x1700000017;
                v175.i64[1] = 0x1700000017;
                *&v68[v169] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v174, *v172.i8, v21[v169]), *v173.i8, v166[v169]), 8uLL), vmlal_high_u16(vmlal_high_u16(v175, v172, *v21[v169].i8), v173, *&v166[v169]), 8uLL), v168);
                v169 += 2;
              }

              v65 = (v65 + v66);
              v166 += 32;
              v68 = (v68 + 2 * v4);
              v21 = (v21 + 2 * v22);
              --v61;
            }

            while (v61);
          }
        }

        else if (v62 <= 7)
        {
          v218 = &v398;
          v219.i64[0] = 0x40004000400040;
          v219.i64[1] = 0x40004000400040;
          v220.i64[0] = 0xF000F000F000F000;
          v220.i64[1] = 0xF000F000F000F000;
          do
          {
            v221.i32[0] = v65->i32[0];
            v221.i32[1] = *(v65->i32 + v66);
            v222 = vmovl_u8(v221);
            v223 = vsubw_u8(v219, v221);
            v224.i64[0] = 0x1700000017;
            v224.i64[1] = 0x1700000017;
            v225.i64[0] = 0x1700000017;
            v225.i64[1] = 0x1700000017;
            v226 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v224, *v222.i8, *v21), *v223.i8, *v218), 8uLL), vmlal_u16(vmlal_u16(v225, *&vextq_s8(v222, v222, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v223, v223, 8uLL), v218[32]), 8uLL), v220);
            *v68 = v226.i64[0];
            v65 = (v65 + 2 * v66);
            *(v68 + 2 * v4) = v226.i64[1];
            v218 += 64;
            v21 = (v21 + 2 * (2 * v23));
            v68 = (v68 + 2 * (2 * v4));
            v61 -= 2;
          }

          while (v61);
        }

        else
        {
          v130 = &v398;
          v131.i64[0] = 0x40004000400040;
          v131.i64[1] = 0x40004000400040;
          v132.i64[0] = 0xF000F000F000F000;
          v132.i64[1] = 0xF000F000F000F000;
          do
          {
            v133 = 0;
            for (nn = 0; nn < v62; nn += 8)
            {
              v135 = v65[nn / 8];
              v136 = vmovl_u8(v135);
              v137 = vsubw_u8(v131, v135);
              v138.i64[0] = 0x1700000017;
              v138.i64[1] = 0x1700000017;
              v139.i64[0] = 0x1700000017;
              v139.i64[1] = 0x1700000017;
              *&v68[v133] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v138, *v136.i8, v21[v133]), *v137.i8, v130[v133]), 8uLL), vmlal_high_u16(vmlal_high_u16(v139, v136, *v21[v133].i8), v137, *&v130[v133]), 8uLL), v132);
              v133 += 2;
            }

            v65 = (v65 + v66);
            v130 += 32;
            v68 = (v68 + 2 * v4);
            v21 = (v21 + 2 * v22);
            --v61;
          }

          while (v61);
        }
      }

      else if (v69)
      {
        if ((v63 & v64) == 1)
        {
          if (v62 <= 7)
          {
            v309 = &v398;
            v310.i64[0] = 0x40004000400040;
            v310.i64[1] = 0x40004000400040;
            v311.i64[0] = 0xFF00FF00FF00FFLL;
            v311.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v312 = *v65;
              v313 = *(v65 + v66);
              v314 = (v65 + v66 + v66);
              v315 = *v314;
              v316 = (v314 + v66);
              v317 = vrshr_n_u8(vqadd_u8(vpadd_s8(v312, v315), vpadd_s8(v313, *v316)), 2uLL);
              v318 = vmovl_u8(v317);
              v319 = vsubw_u8(v310, v317);
              v320.i64[0] = 0x500000005;
              v320.i64[1] = 0x500000005;
              v321.i64[0] = 0x500000005;
              v321.i64[1] = 0x500000005;
              v322 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v320, *v318.i8, *v21), *v319.i8, *v309), 0xAuLL), vmlal_u16(vmlal_u16(v321, *&vextq_s8(v318, v318, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v319, v319, 8uLL), v309[32]), 0xAuLL), v311);
              v21 = (v21 + 2 * (2 * v23));
              *v68 = v322.i64[0];
              *(v68 + 2 * v4) = v322.i64[1];
              v68 = (v68 + 2 * (2 * v4));
              v65 = (v316 + v66);
              v309 += 64;
              v61 -= 2;
            }

            while (v61);
          }

          else
          {
            v102 = (2 * v66);
            v103 = v65 + v66;
            v104 = &v398;
            v105.i64[0] = 0x40004000400040;
            v105.i64[1] = 0x40004000400040;
            v106.i64[0] = 0xFF00FF00FF00FFLL;
            v106.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v107 = 0;
              for (i1 = 0; i1 < v62; i1 += 8)
              {
                v109 = vrshr_n_u8(vqadd_u8(*&vpaddq_s8(*v65[v107].i8, *v65[v107].i8), *&vpaddq_s8(*&v103[v107 * 8], *&v103[v107 * 8])), 2uLL);
                v110 = vmovl_u8(v109);
                v111 = vsubw_u8(v105, v109);
                v112.i64[0] = 0x500000005;
                v112.i64[1] = 0x500000005;
                v113.i64[0] = 0x500000005;
                v113.i64[1] = 0x500000005;
                *&v68[v107] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v112, *v110.i8, v21[v107]), *v111.i8, v104[v107]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v113, v110, *v21[v107].i8), v111, *&v104[v107]), 0xAuLL), v106);
                v107 += 2;
              }

              v65 = (v65 + v102);
              v104 += 32;
              v68 = (v68 + 2 * v4);
              v21 = (v21 + 2 * v22);
              v103 += v102;
              --v61;
            }

            while (v61);
          }
        }

        else if (v64 != 1 || v63)
        {
          v297 = (2 * v66);
          if (v62 <= 7)
          {
            v377 = &v398;
            v378.i64[0] = 0x40004000400040;
            v378.i64[1] = 0x40004000400040;
            v379.i64[0] = 0xFF00FF00FF00FFLL;
            v379.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v380.i32[0] = v65->i32[0];
              v380.i32[1] = *(v65->i32 + v297);
              v381.i32[0] = *(v65->i32 + v66);
              v381.i32[1] = *(v65->i32 + 3 * v66);
              v382 = vrhadd_u8(v380, v381);
              v383 = vmovl_u8(v382);
              v384 = vsubw_u8(v378, v382);
              v385.i64[0] = 0x500000005;
              v385.i64[1] = 0x500000005;
              v386.i64[0] = 0x500000005;
              v386.i64[1] = 0x500000005;
              v387 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v385, *v383.i8, *v21), *v384.i8, *v377), 0xAuLL), vmlal_u16(vmlal_u16(v386, *&vextq_s8(v383, v383, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v384, v384, 8uLL), v377[32]), 0xAuLL), v379);
              *v68 = v387.i64[0];
              v65 = (v65 + 4 * v66);
              *(v68 + 2 * v4) = v387.i64[1];
              v377 += 64;
              v21 = (v21 + 2 * (2 * v23));
              v68 = (v68 + 2 * (2 * v4));
              v61 -= 2;
            }

            while (v61);
          }

          else
          {
            v298 = v65 + v66;
            v299 = &v398;
            v300.i64[0] = 0x40004000400040;
            v300.i64[1] = 0x40004000400040;
            v301.i64[0] = 0xFF00FF00FF00FFLL;
            v301.i64[1] = 0xFF00FF00FF00FFLL;
            do
            {
              v302 = 0;
              for (i2 = 0; i2 < v62; i2 += 8)
              {
                v304 = vrhadd_u8(v65[i2 / 8], *&v298[i2]);
                v305 = vmovl_u8(v304);
                v306 = vsubw_u8(v300, v304);
                v307.i64[0] = 0x500000005;
                v307.i64[1] = 0x500000005;
                v308.i64[0] = 0x500000005;
                v308.i64[1] = 0x500000005;
                *&v68[v302] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v307, *v305.i8, v21[v302]), *v306.i8, v299[v302]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v308, v305, *v21[v302].i8), v306, *&v299[v302]), 0xAuLL), v301);
                v302 += 2;
              }

              v65 = (v65 + v297);
              v299 += 32;
              v68 = (v68 + 2 * v4);
              v21 = (v21 + 2 * v22);
              v298 += v297;
              --v61;
            }

            while (v61);
          }
        }

        else if (v62 <= 7)
        {
          v388 = &v398;
          v389.i64[0] = 0x40004000400040;
          v389.i64[1] = 0x40004000400040;
          v390.i64[0] = 0xFF00FF00FF00FFLL;
          v390.i64[1] = 0xFF00FF00FF00FFLL;
          do
          {
            v391 = vrshr_n_u8(vpadd_s8(*v65, *(v65 + v66)), 1uLL);
            v392 = vmovl_u8(v391);
            v393 = vsubw_u8(v389, v391);
            v394.i64[0] = 0x500000005;
            v394.i64[1] = 0x500000005;
            v395.i64[0] = 0x500000005;
            v395.i64[1] = 0x500000005;
            v396 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v394, *v392.i8, *v21), *v393.i8, *v388), 0xAuLL), vmlal_u16(vmlal_u16(v395, *&vextq_s8(v392, v392, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v393, v393, 8uLL), v388[32]), 0xAuLL), v390);
            *v68 = v396.i64[0];
            v65 = (v65 + 2 * v66);
            *(v68 + 2 * v4) = v396.i64[1];
            v388 += 64;
            v21 = (v21 + 2 * (2 * v23));
            v68 = (v68 + 2 * (2 * v4));
            v61 -= 2;
          }

          while (v61);
        }

        else
        {
          v186 = &v398;
          v187.i64[0] = 0x40004000400040;
          v187.i64[1] = 0x40004000400040;
          v188.i64[0] = 0xFF00FF00FF00FFLL;
          v188.i64[1] = 0xFF00FF00FF00FFLL;
          do
          {
            v189 = 0;
            for (i3 = 0; i3 < v62; i3 += 8)
            {
              v191 = vrshr_n_u8(vpadd_s8(v65[v189], v65[v189 + 1]), 1uLL);
              v192 = vmovl_u8(v191);
              v193 = vsubw_u8(v187, v191);
              v194.i64[0] = 0x500000005;
              v194.i64[1] = 0x500000005;
              v195.i64[0] = 0x500000005;
              v195.i64[1] = 0x500000005;
              *&v68[v189] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v194, *v192.i8, v21[v189]), *v193.i8, v186[v189]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v195, v192, *v21[v189].i8), v193, *&v186[v189]), 0xAuLL), v188);
              v189 += 2;
            }

            v65 = (v65 + v66);
            v186 += 32;
            v68 = (v68 + 2 * v4);
            v21 = (v21 + 2 * v22);
            --v61;
          }

          while (v61);
        }
      }

      else if (v62 <= 7)
      {
        v236 = &v398;
        v237.i64[0] = 0x40004000400040;
        v237.i64[1] = 0x40004000400040;
        v238.i64[0] = 0xFF00FF00FF00FFLL;
        v238.i64[1] = 0xFF00FF00FF00FFLL;
        do
        {
          v239.i32[0] = v65->i32[0];
          v239.i32[1] = *(v65->i32 + v66);
          v240 = vmovl_u8(v239);
          v241 = vsubw_u8(v237, v239);
          v242.i64[0] = 0x500000005;
          v242.i64[1] = 0x500000005;
          v243.i64[0] = 0x500000005;
          v243.i64[1] = 0x500000005;
          v244 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v242, *v240.i8, *v21), *v241.i8, *v236), 0xAuLL), vmlal_u16(vmlal_u16(v243, *&vextq_s8(v240, v240, 8uLL), *(v21 + 2 * v22)), *&vextq_s8(v241, v241, 8uLL), v236[32]), 0xAuLL), v238);
          *v68 = v244.i64[0];
          v65 = (v65 + 2 * v66);
          *(v68 + 2 * v4) = v244.i64[1];
          v236 += 64;
          v21 = (v21 + 2 * (2 * v23));
          v68 = (v68 + 2 * (2 * v4));
          v61 -= 2;
        }

        while (v61);
      }

      else
      {
        v150 = &v398;
        v151.i64[0] = 0x40004000400040;
        v151.i64[1] = 0x40004000400040;
        v152.i64[0] = 0xFF00FF00FF00FFLL;
        v152.i64[1] = 0xFF00FF00FF00FFLL;
        do
        {
          v153 = 0;
          for (i4 = 0; i4 < v62; i4 += 8)
          {
            v155 = v65[i4 / 8];
            v156 = vmovl_u8(v155);
            v157 = vsubw_u8(v151, v155);
            v158.i64[0] = 0x500000005;
            v158.i64[1] = 0x500000005;
            v159.i64[0] = 0x500000005;
            v159.i64[1] = 0x500000005;
            *&v68[v153] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_u16(vmlal_u16(v158, *v156.i8, v21[v153]), *v157.i8, v150[v153]), 0xAuLL), vmlal_high_u16(vmlal_high_u16(v159, v156, *v21[v153].i8), v157, *&v150[v153]), 0xAuLL), v152);
            v153 += 2;
          }

          v65 = (v65 + v66);
          v150 += 32;
          v68 = (v68 + 2 * v4);
          v21 = (v21 + 2 * v22);
          --v61;
        }

        while (v61);
      }
    }

    else if (v63 | v64)
    {
      if (v64 == 1 && v63 == 1)
      {
        if (v62 <= 7)
        {
          v206 = &v398;
          v207.i64[0] = 0x40004000400040;
          v207.i64[1] = 0x40004000400040;
          v208.i64[0] = 0x1800180018001800;
          v208.i64[1] = 0x1800180018001800;
          do
          {
            v209 = *v65;
            v210 = (v65 + v66);
            v211 = *v210;
            v212 = (v210 + v66);
            v213 = *v212;
            v214 = (v212 + v66);
            v215 = vrshr_n_u8(vqadd_u8(vpadd_s8(v209, v213), vpadd_s8(v211, *v214)), 2uLL);
            v216 = vmovl_u8(v215);
            v217 = vsubw_u8(v207, v215);
            *v217.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v217.i8, *v206), *v216.i8, *v21), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v217, v217, 8uLL), v206[32]), *&vextq_s8(v216, v216, 8uLL), *(v21 + 2 * v22)), 6uLL), v208), 4uLL);
            v206 += 64;
            *v5 = v217.i32[0];
            *(v5 + v4) = v217.i32[1];
            v5 += (2 * v4);
            v21 = (v21 + 2 * (2 * v23));
            v65 = (v214 + v66);
            v61 -= 2;
          }

          while (v61);
        }

        else
        {
          v82 = &v398;
          v83.i64[0] = 0x40004000400040;
          v83.i64[1] = 0x40004000400040;
          v84.i64[0] = 0x1800180018001800;
          v84.i64[1] = 0x1800180018001800;
          do
          {
            v85 = 0;
            for (i5 = 0; i5 < v62; i5 += 8)
            {
              v87 = vrshr_n_u8(vqadd_u8(vpadd_s8(v65[v85], v65[v85 + 1]), vpadd_s8(*(v65 + v66 + v85 * 8), *(&v65[1] + v66 + v85 * 8))), 2uLL);
              v88 = vsubw_u8(v83, v87);
              v89 = vmovl_u8(v87);
              *(v5 + i5) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v88.i8, v82[v85]), *v89.i8, v21[v85]), 6uLL), vmlal_high_u16(vmull_high_u16(v88, *&v82[v85]), v89, *v21[v85].i8), 6uLL), v84), 4uLL);
              v85 += 2;
            }

            v65 = (v65 + 2 * v66);
            v82 += 32;
            v5 += v4;
            v21 = (v21 + 2 * v22);
            --v61;
          }

          while (v61);
        }
      }

      else if (v64 != 1 || v63)
      {
        v196 = (2 * v66);
        if (v62 <= 7)
        {
          v323 = &v398;
          v324.i64[0] = 0x40004000400040;
          v324.i64[1] = 0x40004000400040;
          v325.i64[0] = 0x1800180018001800;
          v325.i64[1] = 0x1800180018001800;
          do
          {
            v326.i32[0] = v65->i32[0];
            v327.i32[0] = *(v65->i32 + v66);
            v326.i32[1] = *(v65->i32 + v196);
            v327.i32[1] = *(v65->i32 + 3 * v66);
            v328 = vrhadd_u8(v326, v327);
            v329 = vmovl_u8(v328);
            v330 = vsubw_u8(v324, v328);
            *v330.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v330.i8, *v323), *v329.i8, *v21), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v330, v330, 8uLL), v323[32]), *&vextq_s8(v329, v329, 8uLL), *(v21 + 2 * v22)), 6uLL), v325), 4uLL);
            v65 = (v65 + 4 * v66);
            *v5 = v330.i32[0];
            *(v5 + v4) = v330.i32[1];
            v323 += 64;
            v5 += (2 * v4);
            v21 = (v21 + 2 * (2 * v23));
            v61 -= 2;
          }

          while (v61);
        }

        else
        {
          v197 = v65 + v66;
          v198 = &v398;
          v199.i64[0] = 0x40004000400040;
          v199.i64[1] = 0x40004000400040;
          v200.i64[0] = 0x1800180018001800;
          v200.i64[1] = 0x1800180018001800;
          do
          {
            v201 = 0;
            for (i6 = 0; i6 < v62; i6 += 8)
            {
              v203 = vrhadd_u8(v65[i6 / 8], *&v197[i6]);
              v204 = vmovl_u8(v203);
              v205 = vsubw_u8(v199, v203);
              *(v5 + i6) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v205.i8, v198[v201]), *v204.i8, v21[v201]), 6uLL), vmlal_high_u16(vmull_high_u16(v205, *&v198[v201]), v204, *v21[v201].i8), 6uLL), v200), 4uLL);
              v201 += 2;
            }

            v65 = (v65 + v196);
            v198 += 32;
            v5 += v4;
            v21 = (v21 + 2 * v22);
            v197 += v196;
            --v61;
          }

          while (v61);
        }
      }

      else if (v62 <= 7)
      {
        v331 = &v398;
        v332.i64[0] = 0x40004000400040;
        v332.i64[1] = 0x40004000400040;
        v333.i64[0] = 0x1800180018001800;
        v333.i64[1] = 0x1800180018001800;
        do
        {
          v334 = vrshr_n_u8(vpadd_s8(*v65, *(v65 + v66)), 1uLL);
          v335 = vmovl_u8(v334);
          v336 = vsubw_u8(v332, v334);
          *v336.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v336.i8, *v331), *v335.i8, *v21), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v336, v336, 8uLL), v331[32]), *&vextq_s8(v335, v335, 8uLL), *(v21 + 2 * v22)), 6uLL), v333), 4uLL);
          v65 = (v65 + 2 * v66);
          *v5 = v336.i32[0];
          *(v5 + v4) = v336.i32[1];
          v331 += 64;
          v5 += (2 * v4);
          v21 = (v21 + 2 * (2 * v23));
          v61 -= 2;
        }

        while (v61);
      }

      else
      {
        v122 = &v398;
        v123.i64[0] = 0x40004000400040;
        v123.i64[1] = 0x40004000400040;
        v124.i64[0] = 0x1800180018001800;
        v124.i64[1] = 0x1800180018001800;
        do
        {
          v125 = 0;
          for (i7 = 0; i7 < v62; i7 += 8)
          {
            v127 = vrshr_n_u8(vpadd_s8(v65[v125], v65[v125 + 1]), 1uLL);
            v128 = vsubw_u8(v123, v127);
            v129 = vmovl_u8(v127);
            *(v5 + i7) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v128.i8, v122[v125]), *v129.i8, v21[v125]), 6uLL), vmlal_high_u16(vmull_high_u16(v128, *&v122[v125]), v129, *v21[v125].i8), 6uLL), v124), 4uLL);
            v125 += 2;
          }

          v65 = (v65 + v66);
          v122 += 32;
          v5 += v4;
          v21 = (v21 + 2 * v22);
          --v61;
        }

        while (v61);
      }
    }

    else if (v62 <= 7)
    {
      v160 = &v398;
      v161.i64[0] = 0x40004000400040;
      v161.i64[1] = 0x40004000400040;
      v162.i64[0] = 0x1800180018001800;
      v162.i64[1] = 0x1800180018001800;
      do
      {
        v163.i32[0] = v65->i32[0];
        v163.i32[1] = *(v65->i32 + v66);
        v164 = vmovl_u8(v163);
        v165 = vsubw_u8(v161, v163);
        *v165.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v165.i8, *v160), *v164.i8, *v21), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v165, v165, 8uLL), v160[32]), *&vextq_s8(v164, v164, 8uLL), *(v21 + 2 * v22)), 6uLL), v162), 4uLL);
        *v5 = v165.i32[0];
        v65 = (v65 + 2 * v66);
        *(v5 + v4) = v165.i32[1];
        v160 += 64;
        v5 += (2 * v4);
        v21 = (v21 + 2 * (2 * v23));
        v61 -= 2;
      }

      while (v61);
    }

    else
    {
      v114 = &v398;
      v115.i64[0] = 0x40004000400040;
      v115.i64[1] = 0x40004000400040;
      v116.i64[0] = 0x1800180018001800;
      v116.i64[1] = 0x1800180018001800;
      do
      {
        v117 = 0;
        for (i8 = 0; i8 < v62; i8 += 8)
        {
          v119 = v65[i8 / 8];
          v120 = vmovl_u8(v119);
          v121 = vsubw_u8(v115, v119);
          *(v5 + i8) = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v121.i8, v114[v117]), *v120.i8, v21[v117]), 6uLL), vmlal_high_u16(vmull_high_u16(v121, *&v114[v117]), v120, *v21[v117].i8), 6uLL), v116), 4uLL);
          v117 += 2;
        }

        v65 = (v65 + v66);
        v114 += 32;
        v5 += v4;
        v21 = (v21 + 2 * v22);
        --v61;
      }

      while (v61);
    }
  }

  else
  {
    sub_27798DA3C(v17, v16, v5, v4, v1, v397);
  }
}

void sub_2779CCA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 7864);
  v6 = *(a1 + 88);
  v7 = *(a1 + 72) + (*(a3 + 20) >> 10) * v6 + (*(a3 + 16) >> 10);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 144) = v10;
  v11 = *(v5 + 22);
  v12 = v11 == 4 || *(a1 + 184) >= 5u;
  v13 = &off_27A719828;
  if (v12)
  {
    v14 = &off_27A719868;
  }

  else
  {
    v14 = &off_27A719828;
  }

  v15 = &v14[2 * v11];
  v16 = *(v5 + 20);
  if (v16 == 4 || *(a1 + 185) >= 5u)
  {
    v13 = &off_27A719868;
  }

  *(a2 + 96) = v15;
  *(a2 + 104) = &v13[2 * v16];
  sub_27798DA3C(v7, v6, v8, v9, a2, a3);
}

void sub_2779CCAB4()
{
  v0 = MEMORY[0x28223BE20]();
  v115 = v4;
  v116 = v5;
  v114 = __PAIR64__(v7, v6);
  v126 = v0;
  v156 = *MEMORY[0x277D85DE8];
  if (v2 <= v3)
  {
    v8 = v1;
    v118 = v1 + 16;
    v124 = v1 + 7944;
    v125 = v0 + 272;
    v122 = v0 + 416;
    v9 = v2;
    v117 = v3 + 1;
    v10 = v1 + 2608 * v2 + 64;
    v11 = vdup_n_s32(0x120u);
    v12 = 0uLL;
    v123 = v0 + 240;
    v121 = v0 + 288;
    do
    {
      if (v9 && *(v8 + 12) != 1)
      {
        break;
      }

      v13 = *(v8 + 7864);
      v14 = *v13;
      v15 = v118 + 2608 * v9;
      v16 = *(v15 + 168);
      v17 = *(v15 + 169);
      v18 = **v13;
      v19 = *(*v13 + 167);
      *v132 = v9;
      v134 = v15;
      v119 = v10;
      if ((v19 & 0x80) == 0)
      {
        v21 = *(v15 + 4);
        v20 = *(v15 + 8);
        v22 = 0x10003uLL >> v18;
        v23 = (0x20005uLL >> v18) & (v20 != 0);
        if (((0x10003uLL >> v18) & (v21 != 0)) != 0 || v23)
        {
          v66 = (v23 << 63) >> 63;
          v67 = 8 * *(v8 + 8);
          v68 = v13 + v67 * v66;
LABEL_71:
          v69 = v66;
          v70 = (((0x10003uLL >> v18) & (v21 != 0)) << 63) >> 63;
          while (1)
          {
            v71 = *&v68[8 * v70];
            if ((*(v71 + 167) & 0x80) != 0 || *(v71 + 16) < 1)
            {
              break;
            }

            if (++v70 == 1)
            {
              v66 = v69 + 1;
              v68 += v67;
              if (v69)
              {
                goto LABEL_71;
              }

              v129 = 0;
              v72 = v21 != 0;
              v29 = v20 == 0;
              v73 = v20 != 0;
              v74 = byte_277C3CAFE[v18] >> v72;
              v75 = byte_277C3CAE8[v18];
              v76 = &byte_277C3BCDE[4 * v18 + 2 * v72];
              if (!v29)
              {
                ++v76;
              }

              v77 = *v76;
              v113 = byte_277C3CAE8[v77];
              v78 = v75 >> v73;
              v79 = *(v14 + 17);
              v80 = v22 & v72;
              if (v9 == 1)
              {
                v81 = 324;
              }

              else
              {
                v81 = 326;
              }

              v112 = (4 * (v114.i32[0] - v23)) >> v73;
              v82 = v79 > 0;
              v83 = (v23 << 31) >> 31;
              v84 = (4 * (v114.i32[1] - v80)) >> v72;
              if (v79 <= 0)
              {
                v85 = 11;
              }

              else
              {
                v85 = 7;
              }

              v111 = v80 << 63 >> 63;
              v120 = byte_277C3CAFE[v77];
              do
              {
                v86 = 0;
                v87 = v111;
                v127 = v83;
                do
                {
                  v131 = v87;
                  v133 = v86;
                  v88 = *(*(v8 + 7864) + 8 * (v87 + *(v8 + 8) * v83));
                  v89 = *(v123 + 4 * (*(v88 + 16) - 1));
                  v90 = *(v122 + 8 * v89);
                  v91 = *&v90[v81];
                  v155 = 0;
                  *v154 = v12;
                  *&v154[16] = v12;
                  v152 = v12;
                  v153 = v12;
                  v150 = v12;
                  v151 = v12;
                  v148 = v12;
                  v149 = v12;
                  v146 = v12;
                  v147 = v12;
                  v144 = v12;
                  v145 = v12;
                  v92 = (*(*(v8 + 7960) + 192) >> 3) & 1;
                  v93 = *(v14 + 167);
                  v94 = *(v88 + 20);
                  v150.n128_u32[3] = v84 + v133;
                  *&v154[4] = v92;
                  *&v154[28] = (v93 >> 7) & 1;
                  if ((*&v94 & 0xFF0000) == 0x40000 || v74 >= 5)
                  {
                    v96 = &off_27A719868;
                  }

                  else
                  {
                    v96 = &off_27A719828;
                  }

                  v97 = v94 == 4 || v78 >= 5;
                  v98 = &v96[2 * BYTE2(v94)];
                  if (v97)
                  {
                    v99 = &off_27A719868;
                  }

                  else
                  {
                    v99 = &off_27A719828;
                  }

                  v100 = &v99[2 * v94];
                  if ((v93 >> 7))
                  {
                    v98 = &off_27A719818;
                    v100 = &off_27A719818;
                  }

                  v149.n128_u64[0] = v98;
                  v149.n128_u64[1] = v100;
                  v153.n128_u64[1] = v121 + 16 * v89;
                  v101 = v90[317];
                  v151.n128_u64[1] = v91;
                  v152.n128_u64[0] = __PAIR64__(v90[319], v101);
                  v102 = *(v8 + 10656);
                  *v154 = v102;
                  v152.n128_u32[2] = v90[321];
                  v103 = 21 - v102;
                  if (v79 > 0)
                  {
                    v103 = 7;
                  }

                  v104 = v102 <= 10;
                  v105 = v102 - 7;
                  if (v104)
                  {
                    v105 = 3;
                  }

                  if (v104)
                  {
                    v103 = v85;
                  }

                  *(v147.n128_u64 + 4) = __PAIR64__(v103, v105);
                  v150.n128_u32[2] = v129 + v112;
                  __b = v12;
                  v150.n128_u64[0] = __PAIR64__(v78, v74);
                  v153.n128_u64[0] = *(v15 + 4);
                  v155 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v11, vneg_s32(v153.n128_u64[0])), 0xAuLL)));
                  v146 = 0uLL;
                  v147.n128_u32[0] = 0;
                  v147.n128_u32[3] = v9;
                  v148.n128_u32[0] = v82;
                  *(v148.n128_u64 + 4) = 0;
                  v148.n128_u32[3] = 0;
                  v106 = v79;
                  v107 = v8;
                  v108 = v85;
                  v109 = v82;
                  v110 = v74;
                  sub_2779CAFC0();
                  v9 = *v132;
                  v74 = v110;
                  v83 = v127;
                  v82 = v109;
                  v85 = v108;
                  v8 = v107;
                  v79 = v106;
                  v15 = v134;
                  v12 = 0uLL;
                  v86 = v133 + v110;
                  v87 = v131 + 1;
                }

                while (v133 + v110 < v120);
                v83 = v127 + 1;
                v129 += v78;
              }

              while (v129 < v113);
              goto LABEL_59;
            }
          }
        }
      }

      v24 = 0;
      v25 = *(v14 + 17);
      v128 = (v15 + 16);
      v142 = 0;
      v26 = *(v8 + 10744);
      v27 = *(v14 + 2);
      v28 = byte_277C3CAFE[v18];
      if (v28 >= byte_277C3CAE8[v18])
      {
        LOBYTE(v28) = byte_277C3CAE8[v18];
      }

      v29 = v27 == 15 || v27 == 23;
      v30 = v29;
      v130 = v25;
      v31 = v25 <= 0 ? 1 : 2;
      do
      {
        v32 = *(v26 + 36 * *(v14 + v24 + 16) + 32) > 1u && v30;
        if (v28 <= 7u)
        {
          v32 = 0;
        }

        *(&v142 + v24++) = v32;
      }

      while (v31 != v24);
      v33 = 0;
      v34 = v25 > 0;
      v35 = vrev64_s32(*(v15 + 4));
      v36 = vshl_s32(vshl_n_s32(vsra_n_s32(v114, vshl_n_s32(vbic_s8(vmovn_s64(vshlq_u64(xmmword_277BB7360, vnegq_s64(vdupq_n_s64(v18)))), vceqz_s32(v35)), 0x1FuLL), 0x1FuLL), 2uLL), vneg_s32(v35));
      do
      {
        v37 = v125;
        if ((v19 & 0x80) == 0)
        {
          v37 = *(v124 + 8 * v33);
        }

        v38 = v128;
        if ((v19 & 0x80) == 0)
        {
          v38 = v10;
        }

        v39 = *(v14 + 24) == 2;
        v141[0] = *(&v142 + v33);
        v141[1] = v39;
        v155 = 0;
        *v154 = v12;
        *&v154[16] = v12;
        v152 = v12;
        v153 = v12;
        v150 = v12;
        v151 = v12;
        v148 = v12;
        v149 = v12;
        v146 = v12;
        v147 = v12;
        v144 = v12;
        v145 = v12;
        __b = v12;
        v40 = *(v8 + 10656);
        v41 = (*(*(v8 + 7960) + 192) >> 3) & 1;
        v42 = (*(v14 + 167) >> 7) & 1;
        v43 = *(v14 + 20);
        v150.n128_u64[0] = __PAIR64__(v17, v16);
        v44 = *(v134 + 4);
        *&v150.n128_i8[8] = v36;
        v153.n128_u64[0] = v44;
        *v154 = v40;
        *&v154[4] = v41;
        *&v154[28] = v42;
        v155 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v11, vneg_s32(v44)), 0xAuLL)));
        if (v42)
        {
          v50 = &off_27A719818;
          v48 = &off_27A719818;
        }

        else
        {
          if ((*&v43 & 0xFF0000) == 0x40000 || v16 >= 5)
          {
            v46 = &off_27A719868;
          }

          else
          {
            v46 = &off_27A719828;
          }

          v47 = v43 == 4 || v17 >= 5;
          v48 = &v46[2 * BYTE2(v43)];
          if (v47)
          {
            v49 = &off_27A719868;
          }

          else
          {
            v49 = &off_27A719828;
          }

          v50 = &v49[2 * v43];
        }

        v149.n128_u64[0] = v48;
        v149.n128_u64[1] = v50;
        v153.n128_u64[1] = v37;
        v51 = v38[1];
        v151 = *v38;
        v152 = v51;
        if (v130 <= 0)
        {
          v52 = *(v8 + 15032);
          v135 = 0;
          LODWORD(v136) = 0;
          if (v40 <= 10)
          {
            v54 = 11;
            v53 = 3;
          }

          else
          {
            v53 = v40 - 7;
            v54 = 21 - v40;
          }
        }

        else
        {
          __b.n128_u32[1] = 1;
          v52 = *(v8 + 15032);
          v135 = 0;
          LODWORD(v136) = 0;
          v53 = v40 - 7;
          if (v40 <= 10)
          {
            v53 = 3;
          }

          v54 = 7;
        }

        v146.n128_u32[0] = v33;
        v146.n128_u64[1] = v52;
        v147.n128_u32[0] = 128;
        *(v147.n128_u64 + 4) = __PAIR64__(v54, v53);
        v147.n128_u32[3] = v9;
        v148.n128_u32[0] = v34;
        *(v148.n128_u64 + 4) = v135;
        v148.n128_u32[3] = v136;
        sub_27798E17C(v126, v14, &v148.n128_u32[2], &v148.n128_u32[3], &v148.n128_u32[1], v34);
        sub_27798D978(&__b, v141, v33, v8, v14);
        if ((*(v14 + 83) & 0xFE) == 2)
        {
          v154[24] = *v14;
          *&v154[8] = *(v14 + 72);
          if (v33 == 1)
          {
            v146.n128_u32[0] = 0;
            __b.n128_u32[1] = 2;
          }

          *&v154[8] = *(v8 + 10768);
        }

        sub_2779CAFC0();
        ++v33;
        v10 += 32;
        v9 = *v132;
        v12 = 0uLL;
      }

      while (v31 != v33);
LABEL_59:
      v62 = **(v8 + 7864);
      if (v62[16] < 1)
      {
        v63 = v119;
      }

      else
      {
        v63 = v119;
        if (!v62[17] && *v62 - 10 >= 0xFFFFFFF9 && v62[2] - 17 >= 0xFFFFFFFC)
        {
          v140 = 0;
          v64 = *(v8 + 2640);
          v135 = *(v8 + 32);
          v136 = v64;
          v137 = *(v8 + 5248);
          LODWORD(v64) = *(v8 + 2664);
          v138 = *(v8 + 56);
          v139 = v64;
          LODWORD(v140) = *(v8 + 5272);
          v65 = v116;
          if (!v116)
          {
            v65 = &v135;
          }

          v116 = v65;
          if ((*(*(v8 + 7960) + 192) & 8) != 0)
          {
            sub_27798F54C(*(*(v126 + 24696) + 28), *(*(v126 + 24696) + 61), v8, v115, v9, v65, (&__b >> 1), 128, v55, v56, v57, 0.0, v58, v59, v60, v61);
          }

          else
          {
            sub_27798F54C(*(*(v126 + 24696) + 28), *(*(v126 + 24696) + 61), v8, v115, v9, v65, &__b, 128, v55, v56, v57, 0.0, v58, v59, v60, v61);
          }

          sub_27798F60C();
          v9 = *v132;
          v63 = v119;
          v12 = 0uLL;
        }
      }

      ++v9;
      v10 = v63 + 2608;
    }

    while (v117 != v9);
  }
}

void sub_2779CD490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 + 7872;
  if (*(a2 + 7872) == 1)
  {
    v26 = 0;
    v27 = 0;
    v25[0] = a1;
    v25[1] = a3;
    v25[2] = a4;
    v25[3] = a5;
    v25[4] = a6;
    LODWORD(v26) = *(a2 + 7928);
    v8 = *(a2 + 7864);
    v9 = **v8;
    v10 = *(*(a1 + 24696) + 77) ? 1 : 3;
    v24 = v10;
    v11 = *(a2 + 4);
    v12 = (v11 + *(a2 + 8308)) >= *(a1 + 536) ? *(a1 + 536) : v11 + *(a2 + 8308);
    if (((0x3EFFFCuLL >> v9) & 1) != 0 && v11 < v12)
    {
      v13 = 0;
      v14 = dword_277C31E5C[byte_277C42228[v9]];
      v15 = &(&v8[-v11])[-*(a2 + 8)];
      v16 = *(a2 + 4);
      do
      {
        v17 = **(v15 + 8 * v16);
        if ((0x1F07FFuLL >> v17))
        {
          v18 = byte_277C3F990[v17];
        }

        else
        {
          v18 = 16;
        }

        if (v18 == 1)
        {
          v19 = 2;
        }

        else
        {
          v19 = v18;
        }

        if (v18 == 1)
        {
          v20 = v16 & 0xFFFFFFFE;
        }

        else
        {
          v20 = v16;
        }

        if (v18 == 1)
        {
          v21 = v15 + 8 + 8 * (v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v21 = v15 + 8 * v16;
        }

        v22 = *v21;
        if ((*(*v21 + 167) & 0x80) != 0 || v22[16] >= 1)
        {
          ++v13;
          if (*(v6 + 436) >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = *(v6 + 436);
          }

          sub_2779CD630(a2, 0, v20 - v11, v23, 0, v22, v25, v24);
        }

        v16 = v20 + v19;
      }

      while ((v20 + v19) < v12 && v13 < v14);
    }
  }
}

void sub_2779CD630(uint64_t a1, int a2, int a3, int a4, int a5, char *a6, uint64_t *a7, unsigned int a8)
{
  v14 = *a1;
  v13 = *(a1 + 4);
  if (*a6 <= 3u)
  {
    v15 = 3;
  }

  else
  {
    v15 = *a6;
  }

  v16 = a7[1];
  v17 = a7[2];
  v18 = a7[3];
  v19 = a7[4];
  v20 = (0x20005uLL >> v15) & 1;
  v21 = (0x10003uLL >> v15) & 1;
  v22 = a8;
  v23 = (a1 + 56);
  v24 = a8;
  do
  {
    v25 = *(v23 - 8);
    if (v25)
    {
      _ZF = (a2 & 1) == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v27 = 0;
    }

    else
    {
      v27 = v20;
    }

    v28 = a2 - v27;
    v30 = *v16++;
    v29 = v30;
    LODWORD(v30) = *v17++;
    v31 = v30;
    LODWORD(v30) = *v18++;
    v32 = v30;
    if (*(v23 - 9))
    {
      v33 = (a3 & 1) == 0;
    }

    else
    {
      v33 = 1;
    }

    v35 = *v19++;
    v34 = v35;
    if (v33)
    {
      v36 = 0;
    }

    else
    {
      v36 = v21;
    }

    *(v23 - 3) = v29 + v34 * ((4 * v28) >> v25) + ((4 * (a3 - v36)) >> *(v23 - 9));
    *(v23 - 2) = v29;
    *(v23 - 2) = v31;
    *(v23 - 1) = v32;
    *v23 = v34;
    v23 += 652;
    --v24;
  }

  while (v24);
  v37 = a6[16];
  if ((v37 - 1) > 7 || (v38 = *a7, v39 = *(*a7 + 4 * (v37 - 1) + 240), v39 == -1))
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = *(v38 + 8 * v39 + 416);
    v41 = (v38 + 16 * v39 + 288);
  }

  *(a1 + 7944) = v41;
  if (*v41 == -1 || v41[1] == -1)
  {
    sub_2779F5C10(*(a1 + 10736), 5, "Reference frame has invalid dimensions", a4);
  }

  sub_27798E424(a1, 0, v40 + 1248, v14 + a2, v13 + a3, v41, a8);
  v42 = 0;
  v43 = ***(a1 + 7864);
  _X21 = a1;
  do
  {
    __asm { PRFM            #0, [X21,#0x1478] }

    if (a5 || byte_277C3BCDE[4 * v43 + 2 * *(_X21 + 20) + *(_X21 + 24)] >= 3u)
    {
      sub_2779CAFC0();
    }

    ++v42;
    _X21 += 2608;
  }

  while (v22 != v42);
}

void sub_2779CD9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 + 7873;
  if (*(a2 + 7873) == 1)
  {
    v24 = 0;
    v25 = 0;
    v23[0] = a1;
    v23[1] = a3;
    v23[2] = a4;
    v23[3] = a5;
    v23[4] = a6;
    LODWORD(v24) = *(a2 + 7936);
    v8 = *(a2 + 7864);
    v9 = **v8;
    v10 = *(*(a1 + 24696) + 77) ? 1 : 3;
    v11 = *a2;
    v12 = *a2 + *(a2 + 8309) >= *(a1 + 532) ? *(a1 + 532) : *a2 + *(a2 + 8309);
    if (((0x3DFFFAuLL >> v9) & 1) != 0 && v11 < v12)
    {
      v13 = 0;
      v14 = dword_277C31E5C[byte_277C3CFCC[v9]];
      v15 = &v8[-(*(a2 + 8) * v11) - 1];
      v16 = *a2;
      do
      {
        v17 = *(a2 + 8);
        v18 = *(v15 + 8 * v17 * v16);
        v19 = *v18;
        if ((0x2F0BFFuLL >> v19))
        {
          if ((0x20005uLL >> v19))
          {
            v21 = v16 | 1;
            v16 &= ~1u;
            v18 = *(v15 + 8 * v17 * v21);
            v20 = 2;
          }

          else
          {
            v20 = byte_277C36D60[v19];
          }
        }

        else
        {
          v20 = 16;
        }

        if ((*(v18 + 167) & 0x80) != 0 || v18[16] >= 1)
        {
          ++v13;
          if (*(v6 + 436) >= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = *(v6 + 436);
          }

          sub_2779CD630(a2, v16 - v11, 0, v22, 1, v18, v23, v10);
        }

        v16 += v20;
      }

      while (v16 < v12 && v13 < v14);
    }
  }
}

int8x8_t *sub_2779CDB9C(int8x8_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(*&a1[3087] + 77);
  v29 = 0;
  v30 = 0uLL;
  v27 = 0;
  v28 = 0uLL;
  v26 = 128;
  v25 = 0x8000000080;
  v24 = 128;
  v23 = 0x8000000080;
  v22 = 128;
  v21 = 0x8000000080;
  v20 = 128;
  v19 = 0x8000000080;
  v18 = 128;
  v17 = 0x8000000080;
  v16 = 128;
  v15 = 0x8000000080;
  v5 = *(a2 + 15040);
  if ((*(*(a2 + 7960) + 192) & 8) != 0)
  {
    v9 = v5 >> 1;
    v6 = vshrq_n_u64(vaddq_s64(vdupq_n_s64(v5), xmmword_277BB7370), 1uLL);
    v10 = *(a2 + 15048);
    v7 = v10 >> 1;
    v8 = vshrq_n_u64(vaddq_s64(vdupq_n_s64(v10), xmmword_277BB7370), 1uLL);
  }

  else
  {
    v6 = vaddq_s64(vdupq_n_s64(v5), xmmword_277BB7380);
    v7 = *(a2 + 15048);
    v8 = vaddq_s64(vdupq_n_s64(v7), xmmword_277BB7380);
    v9 = *(a2 + 15040);
  }

  v29 = v9;
  v30 = v6;
  v27 = v7;
  if (v4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v28 = v8;
  v12 = *a2;
  v13 = *(a2 + 4);
  sub_2779CD490(a1, a2, &v29, &v21, &v17, &v25);
  sub_2779CD9F8(a1, a2, &v27, &v19, &v15, &v23);
  sub_27798E348(a2 + 16, ***(a2 + 7864), *&a1[29] + 1248, v12, v13, 0, v11);
  return sub_27798E850(a1, a2, &v29, &v25, &v27, &v23);
}

void sub_2779CDD54(uint64_t a1, int a2, unsigned int a3)
{
  v3 = **(a1 + 7864);
  v4 = vshl_n_s32(*a1, 2uLL);
  v5 = *v3;
  v6 = byte_277C3CAFE[v5];
  v7 = v3[2];
  v8 = byte_277C3CAE8[v5];
  if (v6 < v8)
  {
    LOBYTE(v8) = v6;
  }

  v9 = v3[24];
  v13 = (v7 == 15 || v7 == 23) && *(*(a1 + 10744) + 36 * v3[a3 + 16] + 32) > 1u && v8 > 7u;
  v42[0] = v13;
  v42[1] = v9 == 2;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  v14 = *(a1 + 10656);
  v15 = (*(*(a1 + 7960) + 192) >> 3) & 1;
  v16 = *(a1 + 8 * a3 + 7944);
  v17 = a1 + 32 * a3;
  v18 = *(v3 + 5);
  *&v38 = *(a1 + 20);
  v19 = byte_277C3BCDE[4 * a2 + 2 * v38 + SDWORD1(v38)];
  v20 = byte_277C3CAE8[v19];
  v21 = vneg_s32(vrev64_s32(*&v38));
  LODWORD(v35) = byte_277C3CAFE[v19];
  DWORD1(v35) = v20;
  *(&v35 + 1) = vshl_s32(v4, v21);
  *&v39 = __PAIR64__(v15, v14);
  v41 = vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(vdup_n_s32(0x120u), v21), 0xAuLL));
  if (((0x10003uLL >> v19) & ((*&v18 & 0xFF0000) != 0x40000)) != 0)
  {
    v22 = &off_27A719828;
  }

  else
  {
    v22 = &off_27A719868;
  }

  v23 = &v22[2 * BYTE2(v18)];
  if (((0x20005uLL >> v19) & (v18 != 4)) != 0)
  {
    v24 = &off_27A719828;
  }

  else
  {
    v24 = &off_27A719868;
  }

  *&v34 = v23;
  *(&v34 + 1) = &v24[2 * v18];
  *(&v38 + 1) = v16;
  v25 = *(v17 + 80);
  v36 = *(v17 + 64);
  v37 = v25;
  v33 = 0uLL;
  v26 = 21 - v14;
  v27 = v14 <= 10;
  if (v14 <= 10)
  {
    v28 = 3;
  }

  else
  {
    v28 = v14 - 7;
  }

  if (v27)
  {
    v29 = 11;
  }

  else
  {
    v29 = v26;
  }

  v31 = 0uLL;
  LODWORD(v32) = 0;
  *(&v32 + 4) = __PAIR64__(v29, v28);
  sub_27798D978(v30, v42, a3, a1, v3);
  sub_2779CAFC0();
}

int8x8_t *sub_2779CDF94(uint64_t a1, int a2, uint64_t *a3, signed int a4, uint64_t *a5, unsigned int a6)
{
  v9 = byte_277C3BCDE[4 * a2 + 2 * *(a1 + 20) + *(a1 + 24)];
  v10 = byte_277C3CAFE[v9];
  v11 = byte_277C3CAE8[v9];
  v12 = **(a1 + 7864);
  LODWORD(v9) = v12[17];
  v13 = *(a1 + 32);
  v14 = *(a1 + 10768);
  *(v12 + 9) = v14;
  v15 = (v12 + 72);
  v16 = *(*(a1 + 7960) + 192);
  if (v9 >= 1 && (v17 = v12[83], (v17 & 0xFE) == 2))
  {
    if (v17 == 3)
    {
      v20 = v12[82];
      if ((v16 & 8) == 0)
      {
        sub_277A82EA0(v14, v20, a3, a4, a5, a6, v11, v10);
        v17 = v12[83];
LABEL_14:
        v26 = *v12;
        if (v17 == 2)
        {
          v15 = (*&dword_27A722360[8 * v26 + 6] + (v12[81] << 7) + 8 * v12[80]);
        }

        return sub_277A862F8(v13, *(a1 + 56), a3, a4, a5, a6, *v15, byte_277C3CAFE[v26], v10, v11, __SPAIR64__(2 << byte_277C3CFCC[v26] == v11, 2 << byte_277C42228[v26] == v10));
      }

      v27 = a3 >> 1;
      v28 = a5 >> 1;
      sub_277A6BCA4(v14, v20, a3 >> 1, a4, a5 >> 1, a6, v11, v10, *(a1 + 10656));
      v17 = v12[83];
    }

    else
    {
      if ((v16 & 8) == 0)
      {
        goto LABEL_14;
      }

      v27 = a3 >> 1;
      v28 = a5 >> 1;
    }

    v29 = *v12;
    if (v17 == 2)
    {
      v15 = (*&dword_27A722360[8 * v29 + 6] + (v12[81] << 7) + 8 * v12[80]);
    }

    return sub_277A7D91C(v13, *(a1 + 56), v27, a4, v28, a6, *v15, byte_277C3CAFE[v29], v10, v11, __SPAIR64__(2 << byte_277C3CFCC[v29] == v11, 2 << byte_277C42228[v29] == v10));
  }

  else if ((v16 & 8) != 0)
  {
    v24 = a4;
    v25 = *(a1 + 56);

    return sub_277BB3B5C(2 * a3, v24, 2 * v13, v25, v10, v11);
  }

  else
  {
    v21 = a4;
    v22 = *(a1 + 56);

    return sub_277BB3A8C(a3, v21, v13, v22, v10, v11);
  }
}

uint64_t sub_2779CE28C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v7 = 0;
  *(a1 + 76) = a3;
  v8 = a3 << 6;
  v9 = 48 * a3;
  v10 = a1 + 24;
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  v45 = a3;
  size = (a3 << 6) | 0x17;
  v12 = v11 << 6;
  v13 = 16 * (v11 + 2 * v11);
  do
  {
    if (v8 > 0x1FFFFFFE9 || (v14 = malloc_type_malloc(size, 0x5F484EBFuLL)) == 0)
    {
      v16 = (a1 + 8 * v7);
      *v16 = 0;
LABEL_14:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->mutex_[j]");
      if (*v16)
      {
        v20 = a3 < 1;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v15 - 8) = v14;
    v16 = (a1 + 8 * v7);
    *v16 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    if (a3 < 1)
    {
      if (v9 > 0x1FFFFFFE9)
      {
        goto LABEL_25;
      }

      v17 = malloc_type_malloc(v9 + 23, 0x5F484EBFuLL);
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v18 - 8) = v17;
      v19 = (v10 + 8 * v7);
      *v19 = v18;
      if (v18)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_18:
    v21 = 0;
    do
    {
      pthread_mutex_init((*v16 + v21), 0);
      v21 += 64;
    }

    while (v12 != v21);
LABEL_20:
    if (v9 > 0x1FFFFFFE9 || (v22 = malloc_type_malloc(v9 + 23, 0x5F484EBFuLL)) == 0)
    {
LABEL_25:
      v19 = (v10 + 8 * v7);
      *v19 = 0;
      goto LABEL_26;
    }

    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v23 - 8) = v22;
    v19 = (v10 + 8 * v7);
    *v19 = v23;
    if (v23)
    {
      if (a3 < 1)
      {
        goto LABEL_32;
      }

LABEL_30:
      v25 = 0;
      do
      {
        pthread_cond_init((*v19 + v25), 0);
        v25 += 48;
      }

      while (v13 != v25);
      goto LABEL_32;
    }

LABEL_26:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->cond_[j]");
    if (*v19)
    {
      v24 = a3 < 1;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_32:
    ++v7;
  }

  while (v7 != 3);
  v26 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v26)
  {
    *(a1 + 96) = 0;
    v29 = (a1 + 96);
    v30 = v45;
    v31 = a5;
    goto LABEL_37;
  }

  v27 = v26;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF0);
  *&v28[-1].__opaque[48] = v27;
  *(a1 + 96) = v28;
  v29 = (a1 + 96);
  v30 = v45;
  v31 = a5;
  if (v28)
  {
LABEL_38:
    pthread_mutex_init(v28, 0);
  }

  else
  {
LABEL_37:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->job_mutex");
    v28 = *v29;
    if (*v29)
    {
      goto LABEL_38;
    }
  }

  v32 = 8800 * v31;
  if (v32 > 0x1FFFFFFE9 || (v33 = malloc_type_malloc(v32 | 0x17, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 80) = 0;
    goto LABEL_44;
  }

  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v34 - 8) = v33;
  *(a1 + 80) = v34;
  if (!v34)
  {
LABEL_44:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->lfdata");
  }

  v35 = 0;
  *(a1 + 88) = v31;
  v36 = 4 * v30;
  v37 = a1 + 48;
  while (2)
  {
    if (v36 > 0x1FFFFFFE9 || (v38 = malloc_type_malloc(v36 + 23, 0x5F484EBFuLL)) == 0)
    {
      *(v37 + v35) = 0;
      goto LABEL_51;
    }

    v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v39 - 8) = v38;
    *(v37 + v35) = v39;
    if (!v39)
    {
LABEL_51:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->cur_sb_col[j]");
    }

    v35 += 8;
    if (v35 != 24)
    {
      continue;
    }

    break;
  }

  if ((96 * v30) > 0x1FFFFFFE9 || (result = malloc_type_malloc((96 * v30) | 0x17, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 104) = 0;
    v42 = a4;
    goto LABEL_58;
  }

  v41 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v41 - 8) = result;
  *(a1 + 104) = v41;
  v42 = a4;
  if (!v41)
  {
LABEL_58:
    result = sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lf_sync->job_queue");
  }

  if (v42 >= 640)
  {
    if (v42 >= 0x501)
    {
      if (v42 > 0x1000)
      {
        v43 = 8;
      }

      else
      {
        v43 = 4;
      }
    }

    else
    {
      v43 = 2;
    }
  }

  else
  {
    v43 = 1;
  }

  *(a1 + 72) = v43;
  return result;
}

double sub_2779CE694(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 24;
    do
    {
      v4 = *(a1 + 8 * v2);
      if (v4)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_8;
        }

        v5 = 0;
        v6 = 0;
        do
        {
          pthread_mutex_destroy((*(a1 + 8 * v2) + v5));
          ++v6;
          v5 += 64;
        }

        while (v6 < *(a1 + 76));
        v4 = *(a1 + 8 * v2);
        if (v4)
        {
LABEL_8:
          free(*(v4 - 8));
        }
      }

      v7 = *(v3 + 8 * v2);
      if (v7)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_14;
        }

        v8 = 0;
        v9 = 0;
        do
        {
          pthread_cond_destroy((*(v3 + 8 * v2) + v8));
          ++v9;
          v8 += 48;
        }

        while (v9 < *(a1 + 76));
        v7 = *(v3 + 8 * v2);
        if (v7)
        {
LABEL_14:
          free(*(v7 - 8));
        }
      }

      ++v2;
    }

    while (v2 != 3);
    v10 = *(a1 + 96);
    if (v10)
    {
      pthread_mutex_destroy(v10);
      v11 = *(a1 + 96);
      if (v11)
      {
        free(*(v11 - 8));
      }
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      free(*(v12 - 8));
    }

    for (i = 48; i != 72; i += 8)
    {
      v14 = *(a1 + i);
      if (v14)
      {
        free(*(v14 - 8));
      }
    }

    v15 = *(a1 + 104);
    if (v15)
    {
      free(*(v15 - 8));
    }

    result = 0.0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_2779CE7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6, int a7, int a8, uint64_t a9, unsigned __int8 *a10, _BYTE *a11, char a12)
{
  v12 = a6;
  v13 = a5;
  v14 = a2;
  v15 = a9;
  v16 = *(a2 + 536);
  v314 = a5 >> a12;
  v373 = a6 > 0 && a8 == 2;
  if (v373)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v308 = v17;
  if (!a7)
  {
    if (v16 < 1)
    {
      return;
    }

    v161 = 0;
    v306 = a6;
    v162 = (a3 + 2608 * a6);
    v301 = (v16 + 31) >> 5;
    v304 = v314;
    v307 = 1 << a12;
    v353 = a4 + 10692;
    v375 = a2 + 19184;
    v300 = 4 * a5;
    v367 = a6;
    v356 = v162;
    while (1)
    {
      v163 = v14;
      sub_27798E348(a3, *(*(v14 + 24696) + 28), a1, v13, v161, v12, v308 + v12);
      v317 = v161;
      if (a8)
      {
        if (!v12)
        {
          v259 = (*(a3 + 32) + 3) >> 2;
          v260 = ((*(a3 + 36) + 3) >> 2) - v13;
          if (v260 >= v307)
          {
            v260 = 1 << a12;
          }

          v349 = v259 - v161;
          if (v259 - v161 >= 32)
          {
            v261 = 32;
          }

          else
          {
            v261 = v259 - v161;
          }

          v14 = a2;
          if (v260 < 1)
          {
            goto LABEL_509;
          }

          v262 = 0;
          v333 = *(a3 + 16);
          v365 = v261 + v161;
          v329 = 4 * *(a3 + 40);
          v326 = v161 - 1;
          v346 = v260;
          v341 = v261;
          v337 = *(a3 + 40);
          while (2)
          {
            *a10 = 0;
            v372 = v262 + a5;
            v263 = *(v14 + 568) + 8 * (*(v14 + 580) * (v262 + a5)) + 8 * v317;
            v264 = *v263;
            v265 = *(*v263 + 167);
            v359 = v262;
            if (a4 && *(v353 + 4 * (v265 & 7)))
            {
              v266 = 0;
              if (v317)
              {
                v267 = *(v263 - 8);
                v12 = a11;
                goto LABEL_449;
              }

              v271 = 128;
              v12 = a11;
              goto LABEL_469;
            }

            v266 = v264[145];
            if ((v265 & 0x80) != 0 || v264[16] >= 1)
            {
              v12 = a11;
              if (!v264[144])
              {
                v268 = *v264;
                v266 = v264[(((byte_277C3F990[v268] + 0x7FFFFFFF) & v317) >> byte_277BFC806[v268]) + (((byte_277C36D60[v268] - 1) & v372) >> byte_277BFC81C[v268] << byte_277BFC832[v268]) + 146];
              }

              if (v317)
              {
LABEL_448:
                v267 = *(v263 - 8);
                if (a4)
                {
LABEL_449:
                  v269 = *(v267 + 167);
                  if (*(v353 + 4 * (v269 & 7)))
                  {
                    v270 = 0;
LABEL_457:
                    v271 = byte_277C3CAE8[*v267];
                    v273 = sub_277A47B90(v14, v375, 0, 0, v264);
                    if (!v273)
                    {
                      v273 = sub_277A47B90(a2, v375, 0, 0, v267);
                    }

                    if (v267 == v264)
                    {
                      v14 = a2;
                      if (v264[144] && ((v265 & 0x80) != 0 || v264[16] >= 1))
                      {
                        goto LABEL_469;
                      }
                    }

                    else
                    {
                      v14 = a2;
                    }

                    if (v273)
                    {
                      *a10 = dword_277BF7ED4[19 * v266 + v270];
                      *(a10 + 1) = v375 + 48 * v273;
                    }

LABEL_469:
                    if (v271 >= byte_277C3CAE8[*v264])
                    {
                      v274 = byte_277C3CAE8[*v264];
                    }

                    else
                    {
                      v274 = v271;
                    }

                    *v12 = v266;
                    v275 = *&byte_277BFDBA0[4 * v266];
                    v276 = v275 + v317;
                    if (v275 + v317 >= v365)
                    {
                      LODWORD(v12) = v367;
LABEL_495:
                      if ((v359 & 3) != 0 || (v290 = v359 | 3, (v359 | 3) >= v346) || v274 <= 15)
                      {
                        v287 = v359 + 1 < v346;
                        v288 = v274 > 7;
                        v289 = v287 && v288;
                        if (v287 && v288)
                        {
                          v290 = v359 + 1;
                        }

                        else
                        {
                          v290 = v359;
                        }
                      }

                      else
                      {
                        v289 = 2;
                      }

                      v291 = a11;
                      if (v349 >= 1)
                      {
                        v292 = 0;
                        v293 = a10;
                        v294 = v333 + v329 * v359;
                        do
                        {
                          if (*v291 == 255)
                          {
                            *v293 = 0;
                            *v291 = 0;
                          }

                          sub_277A47518(v294, v337, v293, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v289);
                          v14 = a2;
                          v295 = *&byte_277BFDBA0[4 * *v291];
                          v292 += v295;
                          v294 += (4 * v295);
                          v293 += 16 * v295;
                          v291 += v295;
                        }

                        while (v292 < v341);
                      }

                      v262 = v290 + 1;
                      if (v290 + 1 >= v346)
                      {
                        goto LABEL_509;
                      }

                      continue;
                    }

                    v277 = &v12[v275];
                    v278 = &a10[16 * v275];
                    LODWORD(v12) = v367;
                    while (2)
                    {
                      v279 = v266;
                      *v278 = 0;
                      v280 = (*(v14 + 568) + 8 * (*(v14 + 580) * v372) + 8 * v276);
                      v281 = *v280;
                      v282 = *(*v280 + 167);
                      if (a4 && *(v353 + 4 * (v282 & 7)))
                      {
                        v266 = 0;
                      }

                      else
                      {
                        v266 = v281[145];
                        if (((v282 & 0x80) != 0 || v281[16] >= 1) && !v281[144])
                        {
                          v283 = *v281;
                          v266 = v281[(((byte_277C3F990[v283] - 1) & v276) >> byte_277BFC806[v283]) + 146 + (((byte_277C36D60[v283] - 1) & v372) >> byte_277BFC81C[v283] << byte_277BFC832[v283])];
                        }
                      }

                      v284 = *(v280 - 1);
                      v285 = sub_277A47B90(v14, v375, 0, 0, *v280);
                      if (!v285)
                      {
                        v285 = sub_277A47B90(a2, v375, 0, 0, v284);
                      }

                      if (v284 == v281)
                      {
                        v14 = a2;
                        if (!v281[144] || (v282 & 0x80) == 0 && v281[16] < 1)
                        {
                          goto LABEL_488;
                        }
                      }

                      else
                      {
                        v14 = a2;
LABEL_488:
                        if (v285)
                        {
                          *v278 = dword_277BF7ED4[19 * v266 + v279];
                          *(v278 + 1) = v375 + 48 * v285;
                        }
                      }

                      if (v274 >= byte_277C3CAE8[*v281])
                      {
                        v274 = byte_277C3CAE8[*v281];
                      }

                      *v277 = v266;
                      v286 = *&byte_277BFDBA0[4 * v266];
                      v276 += v286;
                      v278 += 16 * v286;
                      v277 += v286;
                      if (v276 >= v365)
                      {
                        goto LABEL_495;
                      }

                      continue;
                    }
                  }
                }

                else
                {
                  v269 = *(v267 + 167);
                }

                v270 = v267[145];
                if (((v269 & 0x80) != 0 || v267[16] >= 1) && !v267[144])
                {
                  v272 = *v267;
                  v270 = v267[(((byte_277C3F990[v272] - 1) & v326) >> byte_277BFC806[v272]) + 146 + (((byte_277C36D60[v272] - 1) & v372) >> byte_277BFC81C[v272] << byte_277BFC832[v272])];
                }

                goto LABEL_457;
              }
            }

            else
            {
              v12 = a11;
              if (v317)
              {
                goto LABEL_448;
              }
            }

            break;
          }

          v271 = 128;
          goto LABEL_469;
        }

        v165 = v162[1];
        v164 = v162[2];
        v166 = v307 >> v164;
        if (((((((v162[9] << v164) + 3) >> 2) + (1 << v164 >> 1)) >> v164) - (v13 >> v164)) < v307 >> v164)
        {
          v166 = (((((v162[9] << v164) + 3) >> 2) + (1 << v164 >> 1)) >> v164) - (v13 >> v164);
        }

        v167 = (((((v162[8] << v165) + 3) >> 2) + (1 << v165 >> 1)) >> v165) - (v161 >> v165);
        v348 = v162[1];
        if (v167 >= (0x20u >> v165))
        {
          v167 = 0x20u >> v165;
        }

        v363 = v167;
        v315 = v166;
        v14 = a2;
        if (v166 >= 1)
        {
          v168 = 0;
          v332 = v164;
          v169 = v356[10];
          v336 = -1 << v348;
          v345 = (v167 << v348) + v161;
          v312 = 4 * v169;
          v313 = v348 | v161;
          v340 = v356[10];
          v321 = 8 * v169;
          do
          {
            v324 = v168;
            *a10 = 0;
            v170 = ((v168 << v332) + a5) | v332;
            v171 = (*(v14 + 568) + 8 * (*(v14 + 580) * v170) + 8 * v313);
            v172 = *v171;
            if (a4 && *(v353 + 4 * (*(v172 + 167) & 7)))
            {
              v173 = a11;
              *a11 = 0;
              v174 = v317;
              if (!v317)
              {
                v175 = 0;
                v178 = 0;
                v179 = 64;
                goto LABEL_316;
              }

              v175 = 0;
              v176 = v171[v336];
            }

            else
            {
              v175 = byte_277C3BD80[byte_277C3BCDE[4 * *v172 + 2 * v348 + v332]];
              v173 = a11;
              v174 = v317;
              if (v175 > 0x10)
              {
                if (v175 == 17)
                {
                  v175 = 9;
                }

                else if (v175 == 18)
                {
                  v175 = 10;
                }
              }

              else if (v175 - 11 < 2 || v175 == 4)
              {
                v175 = 3;
              }

              *a11 = v175;
              if (!v317)
              {
                v179 = 64;
                goto LABEL_315;
              }

              v176 = v171[v336];
              if (!a4)
              {
                goto LABEL_294;
              }
            }

            if (*(v353 + 4 * (*(v176 + 167) & 7)))
            {
              v180 = 0;
              goto LABEL_306;
            }

LABEL_294:
            v180 = byte_277C3BD80[byte_277C3BCDE[4 * *v176 + 2 * v348 + v332]];
            if (v180 > 0x10)
            {
              if (v180 == 17)
              {
                v180 = 9;
              }

              else if (v180 == 18)
              {
                v180 = 10;
              }
            }

            else if ((v180 - 11) < 2 || v180 == 4)
            {
              v180 = 3;
            }

LABEL_306:
            v179 = dword_277C3BF30[v180];
            v182 = sub_277A47B90(v14, v375, 0, v367, v172);
            if (!v182)
            {
              v182 = sub_277A47B90(a2, v375, 0, v367, v176);
            }

            v14 = a2;
            v183 = v176 != v172 || !v172[144] || (*(v172 + 167) & 0x80) == 0 && v172[16] < 1;
            v184 = !v183;
            if (v176 != v172)
            {
              v184 = 0;
            }

            if (!v184 && v182)
            {
              *a10 = dword_277BF8A1C[19 * v175 + v180];
              *(a10 + 1) = v375 + 48 * v182;
              v178 = *v173;
              goto LABEL_316;
            }

LABEL_315:
            v178 = v175;
LABEL_316:
            if (v179 >= dword_277C3BF30[v175])
            {
              v185 = dword_277C3BF30[v175];
            }

            else
            {
              v185 = v179;
            }

            v186 = *&byte_277BFDBA0[4 * v178];
            v187 = (v186 << v348) + v174;
            if (v187 < v345)
            {
              v188 = &v173[v186];
              v189 = &a10[16 * v186];
              do
              {
                *v189 = 0;
                v190 = (*(v14 + 568) + 8 * (*(v14 + 580) * v170) + 8 * (v187 | v348));
                v191 = *v190;
                if (a4 && *(v353 + 4 * (*(v191 + 167) & 7)))
                {
                  v192 = 0;
                }

                else
                {
                  v192 = byte_277C3BD80[byte_277C3BCDE[4 * *v191 + 2 * v348 + v332]];
                  if (v192 > 0x10)
                  {
                    if (v192 == 17)
                    {
                      v192 = 9;
                    }

                    else if (v192 == 18)
                    {
                      v192 = 10;
                    }
                  }

                  else if (v192 - 11 < 2 || v192 == 4)
                  {
                    v192 = 3;
                  }
                }

                *v188 = v192;
                v194 = v190[v336];
                v195 = sub_277A47B90(v14, v375, 0, v367, v191);
                if (!v195)
                {
                  v195 = sub_277A47B90(a2, v375, 0, v367, v194);
                }

                v14 = a2;
                v196 = v194 != v191 || !v191[144] || (*(v191 + 167) & 0x80) == 0 && v191[16] < 1;
                v197 = !v196;
                v198 = v194 == v191 && v197;
                v199 = v192;
                if (!v198)
                {
                  v199 = v192;
                  if (v195)
                  {
                    *v189 = dword_277BF8A1C[19 * v192 + v178];
                    *(v189 + 1) = v375 + 48 * v195;
                    v199 = *v188;
                  }
                }

                if (v185 >= dword_277C3BF30[v192])
                {
                  v185 = dword_277C3BF30[v192];
                }

                v200 = *&byte_277BFDBA0[4 * v199];
                v187 += v200 << v348;
                v189 += 16 * v200;
                v188 += v200;
                v178 = v199;
              }

              while (v187 < v345);
            }

            if ((v324 & 3) != 0 || (v324 | 3) >= v315 || v185 <= 15)
            {
              v201 = v356;
              if (v324)
              {
                v319 = 0;
                v203 = 0;
              }

              else
              {
                v203 = (v324 | 1) < v315 && v185 > 7;
                v319 = v203;
              }
            }

            else
            {
              v203 = 2;
              v319 = 3;
              v201 = v356;
            }

            if (v363 >= 1)
            {
              v204 = 0;
              v205 = a10;
              v206 = a11;
              v328 = v203;
              while (1)
              {
                if (*v206 == 255)
                {
                  *v205 = 0;
                  *v206 = 0;
                }

                v207 = v312 * v324 + 4 * v204;
                v208 = *(v201 + 2) + v207;
                if (!v373)
                {
                  sub_277A47518(v208, v340, v205, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v203);
                  goto LABEL_378;
                }

                v209 = *(v201 + 328) + v207;
                v210 = *(v14 + 24696);
                v211 = *(v205 + 1);
                if (!*(v210 + 76))
                {
                  break;
                }

                v212 = *(v210 + 72);
                v213 = 2 * v208;
                v214 = 2 * v209;
                HIDWORD(v216) = *v205 - 4;
                LODWORD(v216) = HIDWORD(v216);
                v215 = v216 >> 1;
                if (v203 == 1)
                {
                  if (v215 == 1)
                  {
                    v232 = v340;
                    sub_2779D8E58(v213, v340, *v211, v211[16], v211 + 32, v212);
                    sub_2779D8E58(v213 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                    sub_2779D8E58(v214, v340, *v211, v211[16], v211 + 32, v212);
                    v234 = v214 + 2 * v312;
LABEL_403:
                    v235 = v211[16];
                    v236 = *v211;
                    v237 = v211 + 32;
                    v238 = v232;
                    v203 = v328;
                    goto LABEL_405;
                  }

                  if (v215)
                  {
                    goto LABEL_379;
                  }

                  v217 = v340;
                  sub_2779D8AAC(v213, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v213 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v214, v340, *v211, v211[16], v211 + 32, v212);
                  v219 = v214 + 2 * v312;
LABEL_389:
                  v223 = v211[16];
                  v224 = *v211;
                  v225 = v211 + 32;
                  v226 = v217;
                  v203 = v328;
LABEL_393:
                  sub_2779D8AAC(v219, v226, v224, v223, v225, v212);
LABEL_378:
                  v14 = a2;
                  goto LABEL_379;
                }

                if (v203 != 2)
                {
                  if (v215 != 1)
                  {
                    if (v215)
                    {
                      goto LABEL_379;
                    }

                    sub_2779D8AAC(v213, v340, *v211, v211[16], v211 + 32, v212);
                    v223 = v211[16];
                    v224 = *v211;
                    v225 = v211 + 32;
                    v219 = v214;
                    v226 = v340;
                    goto LABEL_393;
                  }

                  sub_2779D8E58(v213, v340, *v211, v211[16], v211 + 32, v212);
                  v235 = v211[16];
                  v236 = *v211;
                  v237 = v211 + 32;
                  v234 = v214;
                  v238 = v340;
LABEL_405:
                  sub_2779D8E58(v234, v238, v236, v235, v237, v212);
                  goto LABEL_378;
                }

                if (v215 == 1)
                {
                  v232 = v340;
                  sub_2779D8E58(v213, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8E58(v213 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  v233 = v213 + 2 * v321;
                  sub_2779D8E58(v233, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8E58(v233 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8E58(v214, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8E58(v214 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8E58(v214 + 2 * v321, v340, *v211, v211[16], v211 + 32, v212);
                  v234 = v214 + 2 * v321 + 2 * v312;
                  goto LABEL_403;
                }

                if (!v215)
                {
                  v217 = v340;
                  sub_2779D8AAC(v213, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v213 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  v218 = v213 + 2 * v321;
                  sub_2779D8AAC(v218, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v218 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v214, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v214 + 2 * v312, v340, *v211, v211[16], v211 + 32, v212);
                  sub_2779D8AAC(v214 + 2 * v321, v340, *v211, v211[16], v211 + 32, v212);
                  v219 = v214 + 2 * v321 + 2 * v312;
                  goto LABEL_389;
                }

LABEL_379:
                v220 = *&byte_277BFDBA0[4 * *v206];
                v204 += v220;
                v205 += 16 * v220;
                v206 += v220;
                if (v204 >= v363)
                {
                  goto LABEL_410;
                }
              }

              HIDWORD(v222) = *v205 - 4;
              LODWORD(v222) = HIDWORD(v222);
              v221 = v222 >> 1;
              if (v203 == 1)
              {
                if (v221 != 1)
                {
                  if (v221)
                  {
                    goto LABEL_379;
                  }

                  sub_27798CA44(v208, v340, *v211, v211[16], v211[32]);
                  sub_27798CA44(v208 + v312, v340, *v211, v211[16], v211[32]);
                  sub_27798CA44(v209, v340, *v211, v211[16], v211[32]);
                  v227 = v211[32];
                  v228 = v211[16];
                  v229 = *v211;
                  v230 = v209 + v312;
                  v203 = v328;
                  v231 = v340;
                  goto LABEL_400;
                }

                sub_27798C73C(v208, v340, *v211, v211[16], v211[32]);
                sub_27798C73C(v208 + v312, v340, *v211, v211[16], v211[32]);
                sub_27798C73C(v209, v340, *v211, v211[16], v211[32]);
                v239 = v211[32];
                v240 = v211[16];
                v241 = *v211;
                v242 = v209 + v312;
                v203 = v328;
                v243 = v340;
              }

              else
              {
                if (v203 == 2)
                {
                  if (v221 == 1)
                  {
                    sub_27798C99C(v208, v340, *(v205 + 1), v211 + 16, v211 + 32);
                    sub_27798C99C(v209, v340, v211, v211 + 16, v211 + 32);
                  }

                  else
                  {
                    if (v221)
                    {
                      goto LABEL_379;
                    }

                    sub_27798CC04(v208, v340, *(v205 + 1), v211 + 16, v211 + 32);
                    sub_27798CC04(v209, v340, v211, v211 + 16, v211 + 32);
                  }

                  goto LABEL_378;
                }

                if (v221 != 1)
                {
                  if (v221)
                  {
                    goto LABEL_379;
                  }

                  sub_27798CA44(v208, v340, *v211, v211[16], v211[32]);
                  v227 = v211[32];
                  v228 = v211[16];
                  v229 = *v211;
                  v230 = v209;
                  v231 = v340;
LABEL_400:
                  sub_27798CA44(v230, v231, v229, v228, v227);
                  goto LABEL_378;
                }

                sub_27798C73C(v208, v340, *v211, v211[16], v211[32]);
                v239 = v211[32];
                v240 = v211[16];
                v241 = *v211;
                v242 = v209;
                v243 = v340;
              }

              sub_27798C73C(v242, v243, v241, v240, v239);
              goto LABEL_378;
            }

LABEL_410:
            v168 = v324 + v319 + 1;
            LODWORD(v12) = v367;
          }

          while (v168 < v315);
        }
      }

      else
      {
        v244 = v162[1];
        v245 = v162[2];
        v247 = ((*(v163 + 532) + (1 << v245 >> 1)) >> v245) - (v13 >> v245);
        LODWORD(v248) = 0x20u >> v245;
        if (v247 >= (0x20u >> v245))
        {
          v248 = v248;
        }

        else
        {
          v248 = v247;
        }

        v246 = (*(v163 + 536) + (1 << v244 >> 1)) >> v244;
        if ((v246 - (v161 >> v244)) >= (0x20u >> v244))
        {
          v249 = 0x20u >> v244;
        }

        else
        {
          v249 = v246 - (v161 >> v244);
        }

        v364 = v248;
        v14 = v163;
        if (v248 >= 1)
        {
          v371 = 0;
          v358 = *(v356 + 2);
          v250 = v356[10];
          v251 = (4 * v161) >> v244;
          v252 = v300 >> v245;
          v253 = 1 << v244;
          do
          {
            if (v249 >= 1)
            {
              v254 = 0;
              v255 = v358 + 4 * v371 * v250;
              do
              {
                v378 = 0;
                v379 = 0;
                v256 = sub_277A4708C(&v378, v253, v14, a4, 0, v251 + 4 * v254, v252 + 4 * v371, v12, v356);
                if (v256 == 255)
                {
                  v257 = 0;
                  LOBYTE(v378) = 0;
                }

                else
                {
                  v257 = v256;
                }

                sub_277A47518(v255, v250, &v378, *(*(a2 + 24696) + 72), *(*(a2 + 24696) + 76), 0);
                v14 = a2;
                v258 = *&byte_277BFDBA0[4 * v257];
                v254 += v258;
                v255 += (4 * v258);
                LODWORD(v12) = v367;
              }

              while (v254 < v249);
            }

            ++v371;
          }

          while (v371 != v364);
        }
      }

LABEL_509:
      v162 = v356;
      if (a9)
      {
        v296 = v317 >> 5;
        v297 = *(a9 + 72);
        if (v301 - 1 <= (v317 >> 5))
        {
          LODWORD(v296) = v297 + v301;
LABEL_514:
          pthread_mutex_lock((*(a9 + 8 * v306) + (v304 << 6)));
          v298 = *(a9 + 48 + 8 * v306);
          v299 = *(v298 + 4 * v304);
          if (v299 <= v296)
          {
            v299 = v296;
          }

          *(v298 + 4 * v304) = v299;
          pthread_cond_broadcast((*(a9 + 24 + 8 * v306) + 48 * v304));
          pthread_mutex_unlock((*(a9 + 8 * v306) + (v304 << 6)));
          v14 = a2;
          goto LABEL_517;
        }

        if (!(v296 % v297))
        {
          goto LABEL_514;
        }
      }

LABEL_517:
      v161 = v317 + 32;
      v13 = a5;
      if (*(v14 + 536) <= v317 + 32)
      {
        return;
      }
    }
  }

  if (a7 == 1 && v16 >= 1)
  {
    v18 = 0;
    v19 = v314;
    v20 = v314 - 1;
    v21 = a9 + 48;
    v22 = a3 + 2608 * a6;
    v305 = 1 << a12;
    v347 = a4 + 10692;
    v374 = a2 + 19184;
    v303 = a5 - 1;
    v302 = 4 * a5;
    v357 = v22;
    while (1)
    {
      if (!v15)
      {
        goto LABEL_24;
      }

      v23 = v18 >> 5;
      v24 = *(v15 + 72);
      if (!v314)
      {
        break;
      }

      if (((v24 + 0x3FFFFFF) & v23) == 0)
      {
        v25 = (*(v15 + 8 * v12) + (v20 << 6));
        pthread_mutex_lock(v25);
        while (*(*(v21 + 8 * v12) + 4 * v20) - v24 < v23)
        {
          pthread_cond_wait((*(a9 + 24 + 8 * v12) + 48 * v20), v25);
        }

        pthread_mutex_unlock(v25);
        v14 = a2;
        v22 = v357;
      }

      v26 = a9 + 24;
      if (v314 != -1)
      {
        v24 = *(v15 + 72);
        goto LABEL_17;
      }

LABEL_22:
      v13 = a5;
      if (*(v15 + 88) >= 2)
      {
        pthread_mutex_lock(*(v15 + 96));
        v28 = *(v15 + 120);
        pthread_mutex_unlock(*(v15 + 96));
        v14 = a2;
        if (v28)
        {
          return;
        }
      }

LABEL_24:
      v29 = v14;
      sub_27798E348(a3, *(*(v14 + 24696) + 28), a1, v13, v18, v12, v308 + v12);
      v320 = v18;
      if (!a8)
      {
        v112 = *(v22 + 4);
        v113 = *(v22 + 8);
        v114 = ((*(v29 + 532) + (1 << v113 >> 1)) >> v113) - (v13 >> v113);
        v361 = v113;
        if (v114 >= (0x20u >> v113))
        {
          v114 = 0x20u >> v113;
        }

        v369 = v114;
        LODWORD(v115) = ((*(v29 + 536) + (1 << v112 >> 1)) >> v112) - (v18 >> v112);
        if (v115 >= (0x20u >> v112))
        {
          v115 = 0x20u >> v112;
        }

        else
        {
          v115 = v115;
        }

        v351 = v115;
        v14 = v29;
        if (v115 >= 1)
        {
          v354 = 0;
          v343 = *(v22 + 16);
          v116 = *(v22 + 40);
          v117 = (4 * v18) >> v112;
          do
          {
            if (v369 >= 1)
            {
              v118 = 0;
              v119 = (v343 + 4 * v354);
              do
              {
                v378 = 0;
                v379 = 0;
                v120 = v12;
                v121 = sub_277A4708C(&v378, (*(v14 + 580) << v361), v14, a4, 1u, v117 + 4 * v354, (v302 >> v361) + 4 * v118, v12, v22);
                if (v121 == 255)
                {
                  v122 = 0;
                  LOBYTE(v378) = 0;
                }

                else
                {
                  v122 = v121;
                }

                sub_277A47D6C(v119, v116, &v378, *(*(a2 + 24696) + 72), *(*(a2 + 24696) + 76), 0);
                v14 = a2;
                v123 = *&byte_277BFDB54[4 * v122];
                v118 += v123;
                v119 = (v119 + (4 * v116 * v123));
                v12 = v120;
                v22 = v357;
              }

              while (v118 < v369);
            }

            ++v354;
          }

          while (v354 != v351);
        }

        goto LABEL_262;
      }

      if (!v12)
      {
        v124 = 1 << a12;
        if ((((*(a3 + 36) + 3) >> 2) - v13) < v305)
        {
          v124 = ((*(a3 + 36) + 3) >> 2) - v13;
        }

        v125 = ((*(a3 + 32) + 3) >> 2) - v18;
        if (v125 >= 32)
        {
          v126 = 32;
        }

        else
        {
          v126 = ((*(a3 + 32) + 3) >> 2) - v18;
        }

        v14 = a2;
        if (v125 < 1)
        {
          goto LABEL_262;
        }

        v127 = 0;
        v327 = *(a3 + 16);
        v355 = v124 + a5;
        v352 = -*(a2 + 580);
        v362 = 4 * *(a3 + 40);
        v339 = v124;
        v331 = v126;
        v335 = *(a3 + 40);
        while (2)
        {
          *a10 = 0;
          v370 = v127 + v320;
          v128 = *(v14 + 568) + 8 * (*(v14 + 580) * a5) + 8 * v370;
          v129 = *v128;
          v130 = *(*v128 + 167);
          v344 = v127;
          if (a4 && *(v347 + 4 * (v130 & 7)))
          {
            v131 = 0;
            if (a5)
            {
              v132 = *(v128 + 8 * v352);
              goto LABEL_206;
            }

LABEL_209:
            v136 = 128;
            goto LABEL_224;
          }

          v131 = v129[145];
          if (((v130 & 0x80) != 0 || v129[16] >= 1) && !v129[144])
          {
            v135 = *v129;
            v131 = v129[(((byte_277C3F990[v135] - 1) & v370) >> byte_277BFC806[v135]) + 146 + (((byte_277C36D60[v135] - 1) & a5) >> byte_277BFC81C[v135] << byte_277BFC832[v135])];
            if (!a5)
            {
              goto LABEL_209;
            }
          }

          else if (!a5)
          {
            goto LABEL_209;
          }

          v132 = *(v128 + 8 * v352);
          if (a4)
          {
LABEL_206:
            v133 = *(v132 + 167);
            if (*(v347 + 4 * (v133 & 7)))
            {
              v134 = 0;
LABEL_215:
              v136 = byte_277C3CAFE[*v132];
              v138 = sub_277A47B90(v14, v374, 1u, 0, v129);
              if (!v138)
              {
                v138 = sub_277A47B90(a2, v374, 1u, 0, v132);
              }

              if (v132 == v129)
              {
                v14 = a2;
                if (v129[144] && ((v130 & 0x80) != 0 || v129[16] >= 1))
                {
                  goto LABEL_224;
                }
              }

              else
              {
                v14 = a2;
              }

              if (v138)
              {
                *a10 = dword_277BF8478[19 * v131 + v134];
                *(a10 + 1) = v374 + 48 * v138;
              }

LABEL_224:
              if (v136 >= byte_277C3CAFE[*v129])
              {
                v139 = byte_277C3CAFE[*v129];
              }

              else
              {
                v139 = v136;
              }

              *a11 = v131;
              v140 = *&byte_277BFDB54[4 * v131];
              v141 = v140 + a5;
              if (v140 + a5 >= v355)
              {
LABEL_248:
                if ((v344 & 3) != 0 || (v155 = v344 | 3, (v344 | 3) >= v331) || v139 <= 15)
                {
                  v152 = v344 + 1 < v331;
                  v153 = v139 > 7;
                  v154 = v152 && v153;
                  if (v152 && v153)
                  {
                    v155 = v344 + 1;
                  }

                  else
                  {
                    v155 = v344;
                  }
                }

                else
                {
                  v154 = 2;
                }

                v156 = a11;
                if (v339 >= 1)
                {
                  v157 = 0;
                  v158 = a10;
                  v159 = (v327 + 4 * v344);
                  do
                  {
                    if (*v156 == 255)
                    {
                      *v158 = 0;
                      *v156 = 0;
                    }

                    sub_277A47D6C(v159, v335, v158, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v154);
                    v14 = a2;
                    v160 = *&byte_277BFDB54[4 * *v156];
                    v157 += v160;
                    v159 = (v159 + (v362 * v160));
                    v158 += 16 * v160;
                    v156 += v160;
                  }

                  while (v157 < v339);
                }

                v127 = v155 + 1;
                v22 = v357;
                if (v155 + 1 >= v331)
                {
                  goto LABEL_262;
                }

                continue;
              }

              v142 = &a11[v140];
              v143 = &a10[16 * v140];
              while (2)
              {
                v144 = v131;
                *v143 = 0;
                v145 = (*(v14 + 568) + 8 * *(v14 + 580) * v141 + 8 * v370);
                v146 = *v145;
                v147 = *(*v145 + 167);
                if (a4 && *(v347 + 4 * (v147 & 7)))
                {
                  v131 = 0;
                }

                else
                {
                  v131 = v146[145];
                  if (((v147 & 0x80) != 0 || v146[16] >= 1) && !v146[144])
                  {
                    v148 = *v146;
                    v131 = v146[(((byte_277C3F990[v148] - 1) & v370) >> byte_277BFC806[v148]) + 146 + (((byte_277C36D60[v148] - 1) & v141) >> byte_277BFC81C[v148] << byte_277BFC832[v148])];
                  }
                }

                v149 = v145[v352];
                v150 = sub_277A47B90(v14, v374, 1u, 0, *v145);
                if (!v150)
                {
                  v150 = sub_277A47B90(a2, v374, 1u, 0, v149);
                }

                if (v149 == v146)
                {
                  v14 = a2;
                  if (!v146[144] || (v147 & 0x80) == 0 && v146[16] < 1)
                  {
                    goto LABEL_243;
                  }
                }

                else
                {
                  v14 = a2;
LABEL_243:
                  if (v150)
                  {
                    *v143 = dword_277BF8478[19 * v131 + v144];
                    *(v143 + 1) = v374 + 48 * v150;
                  }
                }

                if (v139 >= byte_277C3CAFE[*v146])
                {
                  v139 = byte_277C3CAFE[*v146];
                }

                *v142 = v131;
                v151 = *&byte_277BFDB54[4 * v131];
                v141 += v151;
                v143 += 16 * v151;
                v142 += v151;
                if (v141 >= v355)
                {
                  goto LABEL_248;
                }

                continue;
              }
            }
          }

          else
          {
            v133 = *(v132 + 167);
          }

          break;
        }

        v134 = v132[145];
        if (((v133 & 0x80) != 0 || v132[16] >= 1) && !v132[144])
        {
          v137 = *v132;
          v134 = v132[(((byte_277C3F990[v137] - 1) & v370) >> byte_277BFC806[v137]) + 146 + (((byte_277C36D60[v137] - 1) & v303) >> byte_277BFC81C[v137] << byte_277BFC832[v137])];
        }

        goto LABEL_215;
      }

      v30 = *(v22 + 4);
      v31 = *(v22 + 8);
      v32 = (((((*(v22 + 36) << v31) + 3) >> 2) + (1 << v31 >> 1)) >> v31) - (v13 >> v31);
      if (v32 >= v305 >> v31)
      {
        v32 = v305 >> v31;
      }

      v360 = v32;
      v33 = (((((*(v22 + 32) << v30) + 3) >> 2) + (1 << v30 >> 1)) >> v30) - (v18 >> v30);
      if (v33 >= (0x20u >> v30))
      {
        v33 = 0x20u >> v30;
      }

      v318 = v33;
      v14 = a2;
      if (v33 >= 1)
      {
        v34 = 0;
        v330 = v30;
        v342 = (v32 << v31) + a5;
        v350 = v31;
        v316 = v31 | a5;
        v334 = -(*(a2 + 580) << v31);
        v338 = *(v22 + 40);
        do
        {
          v325 = v34;
          *a10 = 0;
          v35 = ((v34 << v330) + v320) | v330;
          v36 = (*(v14 + 568) + 8 * (*(v14 + 580) * v316) + 8 * v35);
          v37 = *v36;
          if (a4 && *(v347 + 4 * (*(v37 + 167) & 7)))
          {
            v38 = a11;
            *a11 = 0;
            v39 = a5;
            v40 = v350;
            v41 = 0;
            if (!a5)
            {
              v44 = 0;
              v45 = 64;
              goto LABEL_74;
            }

            v42 = v36[v334];
          }

          else
          {
            v40 = v350;
            v41 = byte_277C3BD80[byte_277C3BCDE[4 * *v37 + 2 * v330 + v350]];
            v39 = a5;
            v38 = a11;
            if (v41 > 0x10)
            {
              if (v41 == 17)
              {
                v41 = 9;
              }

              else if (v41 == 18)
              {
                v41 = 10;
              }
            }

            else if (v41 - 11 < 2 || v41 == 4)
            {
              v41 = 3;
            }

            *a11 = v41;
            if (!a5)
            {
              v45 = 64;
              goto LABEL_73;
            }

            v42 = v36[v334];
            if (!a4)
            {
              goto LABEL_52;
            }
          }

          if (*(v347 + 4 * (*(v42 + 167) & 7)))
          {
            v46 = 0;
            goto LABEL_64;
          }

LABEL_52:
          v46 = byte_277C3BD80[byte_277C3BCDE[4 * *v42 + 2 * v330 + v40]];
          if (v46 > 0x10)
          {
            if (v46 == 17)
            {
              v46 = 9;
            }

            else if (v46 == 18)
            {
              v46 = 10;
            }
          }

          else if ((v46 - 11) < 2 || v46 == 4)
          {
            v46 = 3;
          }

LABEL_64:
          v45 = dword_277C3BEE4[v46];
          v48 = sub_277A47B90(v14, v374, 1u, a6, v37);
          if (!v48)
          {
            v48 = sub_277A47B90(a2, v374, 1u, a6, v42);
          }

          v14 = a2;
          v49 = v42 != v37 || !v37[144] || (*(v37 + 167) & 0x80) == 0 && v37[16] < 1;
          v50 = !v49;
          if (v42 != v37)
          {
            v50 = 0;
          }

          if (!v50 && v48)
          {
            *a10 = dword_277BF8FC0[19 * v41 + v46];
            *(a10 + 1) = v374 + 48 * v48;
            v44 = *v38;
            goto LABEL_74;
          }

LABEL_73:
          v44 = v41;
LABEL_74:
          if (v45 >= dword_277C3BEE4[v41])
          {
            v51 = dword_277C3BEE4[v41];
          }

          else
          {
            v51 = v45;
          }

          v52 = *&byte_277BFDB54[4 * v44];
          v53 = v350;
          v54 = (v52 << v350) + v39;
          if (v54 >= v342)
          {
            v12 = a6;
          }

          else
          {
            v55 = &v38[v52];
            v56 = &a10[16 * v52];
            v12 = a6;
            do
            {
              *v56 = 0;
              v57 = (*(v14 + 568) + 8 * *(v14 + 580) * (v54 | v53) + 8 * v35);
              v58 = *v57;
              if (a4 && *(v347 + 4 * (*(v58 + 167) & 7)))
              {
                v59 = 0;
              }

              else
              {
                v59 = byte_277C3BD80[byte_277C3BCDE[4 * *v58 + 2 * v330 + v53]];
                if (v59 > 0x10)
                {
                  if (v59 == 17)
                  {
                    v59 = 9;
                  }

                  else if (v59 == 18)
                  {
                    v59 = 10;
                  }
                }

                else if (v59 - 11 < 2 || v59 == 4)
                {
                  v59 = 3;
                }
              }

              *v55 = v59;
              v61 = v57[v334];
              v62 = sub_277A47B90(v14, v374, 1u, a6, v58);
              if (!v62)
              {
                v62 = sub_277A47B90(a2, v374, 1u, a6, v61);
              }

              v14 = a2;
              v63 = v61 != v58 || !v58[144] || (*(v58 + 167) & 0x80) == 0 && v58[16] < 1;
              v64 = !v63;
              v65 = v61 == v58 && v64;
              v66 = v59;
              if (!v65)
              {
                v66 = v59;
                if (v62)
                {
                  *v56 = dword_277BF8FC0[19 * v59 + v44];
                  *(v56 + 1) = v374 + 48 * v62;
                  v66 = *v55;
                }
              }

              if (v51 >= dword_277C3BEE4[v59])
              {
                v51 = dword_277C3BEE4[v59];
              }

              v67 = *&byte_277BFDB54[4 * v66];
              v53 = v350;
              v54 += v67 << v350;
              v56 += 16 * v67;
              v55 += v67;
              v44 = v66;
            }

            while (v54 < v342);
          }

          if ((v325 & 3) != 0 || (v325 | 3) >= v318 || v51 <= 15)
          {
            v22 = v357;
            v68 = 4 * v338;
            if (v325)
            {
              v323 = 0;
              v71 = 0;
            }

            else
            {
              v70 = (v325 | 1) < v318 && v51 > 7;
              v323 = v70;
              v71 = v70;
            }
          }

          else
          {
            v71 = 2;
            v323 = 3;
            v22 = v357;
            v68 = 4 * v338;
          }

          if (v360 >= 1)
          {
            v72 = 0;
            v73 = a10;
            v74 = a11;
            v368 = v71;
            while (1)
            {
              if (*v74 == 255)
              {
                *v73 = 0;
                *v74 = 0;
              }

              v75 = 4 * v325 + v68 * v72;
              v76 = (*(v22 + 16) + v75);
              if (!v373)
              {
                sub_277A47D6C(v76, v338, v73, *(*(v14 + 24696) + 72), *(*(v14 + 24696) + 76), v368);
                goto LABEL_137;
              }

              v77 = (*(v22 + 2624) + v75);
              v78 = *(v14 + 24696);
              v79 = *(v73 + 1);
              if (!*(v78 + 76))
              {
                break;
              }

              v80 = *(v78 + 72);
              v81 = (2 * v76);
              v82 = (2 * v77);
              HIDWORD(v84) = *v73 - 4;
              LODWORD(v84) = HIDWORD(v84);
              v83 = v84 >> 1;
              if (v71 == 1)
              {
                if (v83 == 1)
                {
                  v100 = v338;
                  sub_2779D8C5C(v81, v338, *v79, v79[16], v79 + 32, v80);
                  sub_2779D8C5C(v81 + 1, v338, *v79, v79[16], v79 + 32, v80);
                  sub_2779D8C5C(v82, v338, *v79, v79[16], v79 + 32, v80);
                  v101 = v79[16];
                  v102 = *v79;
                  v103 = v82 + 1;
LABEL_162:
                  v104 = v79 + 32;
                  goto LABEL_164;
                }

                if (v83)
                {
                  goto LABEL_138;
                }

                v85 = v338;
                sub_2779D893C(v81, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 1, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82, v338, *v79, v79[16], v79 + 32, v80);
                v86 = v79[16];
                v87 = *v79;
                v88 = v82 + 1;
LABEL_148:
                v92 = v79 + 32;
LABEL_152:
                v93 = v85;
                v68 = 4 * v338;
                sub_2779D893C(v88, v93, v87, v86, v92, v80);
LABEL_137:
                v71 = v368;
                v14 = a2;
                goto LABEL_138;
              }

              if (v71 != 2)
              {
                if (v83 != 1)
                {
                  if (v83)
                  {
                    goto LABEL_138;
                  }

                  v85 = v338;
                  sub_2779D893C(v81, v338, *v79, v79[16], v79 + 32, v80);
                  v86 = v79[16];
                  v87 = *v79;
                  v92 = v79 + 32;
                  v88 = v82;
                  goto LABEL_152;
                }

                v100 = v338;
                sub_2779D8C5C(v81, v338, *v79, v79[16], v79 + 32, v80);
                v101 = v79[16];
                v102 = *v79;
                v104 = v79 + 32;
                v103 = v82;
LABEL_164:
                v105 = v100;
                v68 = 4 * v338;
                sub_2779D8C5C(v103, v105, v102, v101, v104, v80);
                goto LABEL_137;
              }

              if (v83 == 1)
              {
                v100 = v338;
                sub_2779D8C5C(v81, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v81 + 1, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v81 + 2, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v81 + 3, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v82, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v82 + 1, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D8C5C(v82 + 2, v338, *v79, v79[16], v79 + 32, v80);
                v101 = v79[16];
                v102 = *v79;
                v103 = v82 + 3;
                goto LABEL_162;
              }

              if (!v83)
              {
                v85 = v338;
                sub_2779D893C(v81, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 1, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 2, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v81 + 3, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82 + 1, v338, *v79, v79[16], v79 + 32, v80);
                sub_2779D893C(v82 + 2, v338, *v79, v79[16], v79 + 32, v80);
                v86 = v79[16];
                v87 = *v79;
                v88 = v82 + 3;
                goto LABEL_148;
              }

LABEL_138:
              v89 = *&byte_277BFDB54[4 * *v74];
              v72 += v89;
              v73 += 16 * v89;
              v74 += v89;
              if (v72 >= v360)
              {
                goto LABEL_169;
              }
            }

            HIDWORD(v91) = *v73 - 4;
            LODWORD(v91) = HIDWORD(v91);
            v90 = v91 >> 1;
            if (v71 == 1)
            {
              if (v90 != 1)
              {
                if (v90)
                {
                  goto LABEL_138;
                }

                v94 = v338;
                sub_27798D060(v76, v338, *v79, v79[16], v79[32]);
                sub_27798D060(v76 + 1, v338, *v79, v79[16], v79[32]);
                sub_27798D060(v77, v338, *v79, v79[16], v79[32]);
                v95 = v79[32];
                v96 = v79[16];
                v97 = *v79;
                v98 = v77 + 1;
                goto LABEL_159;
              }

              v106 = v338;
              sub_27798CF14(v76, v338, *v79, v79[16], v79[32]);
              sub_27798CF14(v76 + 1, v338, *v79, v79[16], v79[32]);
              sub_27798CF14(v77, v338, *v79, v79[16], v79[32]);
              v107 = v79[32];
              v108 = v79[16];
              v109 = *v79;
              v110 = v77 + 1;
            }

            else
            {
              if (v71 == 2)
              {
                if (v90 == 1)
                {
                  sub_27798CFBC(v76, v338, *(v73 + 1), v79 + 16, v79 + 32);
                  v68 = 4 * v338;
                  sub_27798CFBC(v77, v338, v79, v79 + 16, v79 + 32);
                }

                else
                {
                  if (v90)
                  {
                    goto LABEL_138;
                  }

                  sub_27798D0F0(v76, v338, *(v73 + 1), v79 + 16, v79 + 32);
                  v68 = 4 * v338;
                  sub_27798D0F0(v77, v338, v79, v79 + 16, v79 + 32);
                }

                goto LABEL_137;
              }

              if (v90 != 1)
              {
                if (v90)
                {
                  goto LABEL_138;
                }

                v94 = v338;
                sub_27798D060(v76, v338, *v79, v79[16], v79[32]);
                v95 = v79[32];
                v96 = v79[16];
                v97 = *v79;
                v98 = v77;
LABEL_159:
                v99 = v94;
                v68 = 4 * v338;
                sub_27798D060(v98, v99, v97, v96, v95);
                goto LABEL_137;
              }

              v106 = v338;
              sub_27798CF14(v76, v338, *v79, v79[16], v79[32]);
              v107 = v79[32];
              v108 = v79[16];
              v109 = *v79;
              v110 = v77;
            }

            v111 = v106;
            v68 = 4 * v338;
            sub_27798CF14(v110, v111, v109, v108, v107);
            goto LABEL_137;
          }

LABEL_169:
          v34 = v325 + v323 + 1;
        }

        while (v34 < v318);
      }

LABEL_262:
      v18 = v320 + 32;
      v13 = a5;
      v15 = a9;
      v20 = v314 - 1;
      v19 = v314;
      v21 = a9 + 48;
      if ((v320 + 32) >= *(v14 + 536))
      {
        return;
      }
    }

    v26 = a9 + 24;
LABEL_17:
    if (((v24 + 0x3FFFFFF) & v23) == 0)
    {
      v27 = (*(v15 + 8 * v12) + (v19 << 6));
      pthread_mutex_lock(v27);
      while (*(*(v21 + 8 * v12) + 4 * v19) - v24 < v23)
      {
        pthread_cond_wait((*(v26 + 8 * v12) + 48 * v19), v27);
      }

      pthread_mutex_unlock(v27);
      v14 = a2;
    }

    goto LABEL_22;
  }
}

uint64_t sub_2779D126C(uint64_t result, int a2, uint64_t a3, char a4)
{
  v4 = ~(-1 << a4);
  v5 = ((v4 + result) >> a4);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = (v4 + a2) >> a4;
    do
    {
      v9 = a3;
      v10 = 3;
      do
      {
        v11 = *(a3 + 72) + v8;
        pthread_mutex_lock((*v9 + (v7 << 6)));
        v12 = v9[6];
        v13 = *(v12 + 4 * v7);
        if (v13 <= v11)
        {
          v13 = v11;
        }

        *(v12 + 4 * v7) = v13;
        pthread_cond_broadcast((v9[3] + 48 * v7));
        v14 = *v9++;
        result = pthread_mutex_unlock((v14 + (v7 << 6)));
        --v10;
      }

      while (v10);
      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

void sub_2779D132C(uint64_t a1, int32x2_t *a2, uint64_t a3, signed int a4, unsigned int a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10)
{
  v61 = *MEMORY[0x277D85DE8];
  v14 = a2[2878].i32[0];
  if (v14)
  {
    if (a4 > 0)
    {
      v14 = 0;
      v54 = 1;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v54 = 1;
  if (a4 <= 0 && a2[2878].i32[1])
  {
LABEL_6:
    v54 = 0;
    v14 = 1;
  }

LABEL_7:
  v57 = v14;
  v15 = vand_s8(vcgt_s32(vdup_n_s32(a5), 0x200000001), vbic_s8(vcgt_s32(0x300000002, vdup_n_s32(a4)), vceqz_s32(a2[2879])));
  v58 = vand_s8(v15, 0x100000001);
  v16 = v14 ^ 1;
  if (a4 >= 1)
  {
    v16 = 0;
  }

  if (v16)
  {
    return;
  }

  v17 = v15.i8[0];
  v18 = v15.i8[4];
  if (((v14 | v15.i32[0] | v15.i32[1]) & 1) == 0)
  {
    return;
  }

  v19 = a2[66].u32[1];
  v20 = (v19 >> 1) & 0x3FFFFFF8;
  v21 = v19 >> 3;
  if (v19 <= 0x47)
  {
    v21 = 8;
  }

  if (v19 < 9)
  {
    v20 = 0;
    v21 = a2[66].i32[1];
  }

  if (a6)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (a6)
  {
    v23 = v21;
  }

  else
  {
    v23 = a2[66].i32[1];
  }

  v52 = v23 + v22;
  sub_277A46E40(a2, a4, a5);
  v55 = a2;
  if (a8 <= 1)
  {
    if (v23 < 1)
    {
      return;
    }

    v53 = v17 | v18;
    while (1)
    {
      for (i = 0; i != 3; ++i)
      {
        if (a10 == 2)
        {
          if (i == 2)
          {
            continue;
          }

          if (i == 1)
          {
            if ((v53 & 1) == 0)
            {
              continue;
            }

            v46 = 1;
          }

          else
          {
            if (v54)
            {
              continue;
            }

            v46 = 0;
          }
        }

        else
        {
          if (!*(&v57 + i))
          {
            continue;
          }

          v46 = i;
        }

        sub_2779CE7E8(a1, v55, a3 + 16, a3, v22, v46, 0, a10, 0, __dst, v59, 5);
        sub_2779CE7E8(a1, v55, a3 + 16, a3, v22, v46, 1, a10, 0, __dst, v59, 5);
      }

      v22 += 32;
      if (v22 >= v52)
      {
        return;
      }
    }
  }

  v24 = (a2[66].i32[1] + 31) >> 5;
  if (!*(a9 + 72) || v24 != *(a9 + 76) || *(a9 + 88) < a8)
  {
    sub_2779CE694(a9);
    sub_2779CE28C(a9, a2, v24, a2[7].i32[0], a8);
  }

  *(a9 + 120) = 0;
  v25 = 4 * v24;
  for (j = 48; j != 72; j += 8)
  {
    memset(*(a9 + j), 255, v25);
  }

  v27 = 0;
  v28 = 0;
  v29 = *(a9 + 104);
  v30 = 1;
  *(a9 + 112) = 0;
  do
  {
    v31 = v30;
    if (v23 < 1)
    {
      goto LABEL_44;
    }

    v32 = v22;
    do
    {
      for (k = 0; k != 3; ++k)
      {
        if (a10 == 2)
        {
          if (k == 2)
          {
            continue;
          }

          if (k == 1)
          {
            if (!*&v58)
            {
              continue;
            }
          }

          else if (!v57)
          {
            continue;
          }
        }

        else if (!*(&v57 + k))
        {
          continue;
        }

        if (*(&v57 + k))
        {
          *v29 = v32;
          v29[1] = k;
          v29[2] = v28;
          v29[3] = a10;
          v29 += 4;
          *(a9 + 112) = ++v27;
        }
      }

      v32 += 32;
    }

    while (v32 < v52);
LABEL_44:
    v30 = 0;
    v28 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = a8;
  v35 = 8800 * a8 - 8780;
  v36 = a8;
  while (1)
  {
    v37 = a7 + 56 * (v36 - 1);
    v38 = *(a9 + 80);
    *(v37 + 24) = sub_2779D188C;
    *(v37 + 32) = a9;
    v39 = (v38 + 8800 * (v36 - 1));
    *(v37 + 40) = v39;
    *v39 = a1;
    v39[1] = v55;
    v39[980] = a3;
    v40 = v38 + v35;
    v41 = a3 + 20;
    v42 = 3;
    do
    {
      v43 = *(v41 + 12);
      *(v40 + 28) = *(v41 + 28);
      *(v40 + 12) = v43;
      *v40 = *v41;
      v41 += 2608;
      v40 += 2608;
      --v42;
    }

    while (v42);
    *(v37 + 48) = 0;
    if (v36 == 1)
    {
      break;
    }

    sub_277985E48(v37, 2);
    v35 -= 8800;
    v44 = v36-- <= 1;
    if (v44)
    {
      goto LABEL_70;
    }
  }

  v47 = *(v37 + 24);
  if (v47)
  {
    *(v37 + 48) |= v47(*(v37 + 32), *(v37 + 40)) == 0;
  }

LABEL_70:
  v48 = *(a7 + 48);
  v49 = v48 == 0;
  memset(__dst, 0, 404);
  if (v48)
  {
    memcpy(__dst, (*(a7 + 40) + 8392), 0x194uLL);
    v49 = 0;
  }

LABEL_72:
  v50 = a7 - 56 + 56 * v34;
  do
  {
    v51 = v34 - 1;
    sub_277985E48(v50, 1);
    if (*(v50 + 48))
    {
      memcpy(__dst, (*(v50 + 40) + 8392), 0x194uLL);
      v49 = 0;
      v44 = v34-- > 2;
      if (v44)
      {
        goto LABEL_72;
      }

      goto LABEL_79;
    }

    v50 -= 56;
    --v34;
  }

  while (v51 + 1 > 2);
  if (v49)
  {
    return;
  }

LABEL_79:
  sub_2779F5C78(*(v55 + 48), __dst);
}

uint64_t sub_2779D188C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (setjmp((a2 + 8604)))
  {
    *(a2 + 8600) = 0;
    pthread_mutex_lock(v4);
    *(a1 + 120) = 1;
    pthread_mutex_unlock(v4);
    sub_2779D126C(*(*(a2 + 8) + 532), *(*(a2 + 8) + 536), a1, 5);
    return 0;
  }

  else
  {
    *(a2 + 8600) = 1;
    while (1)
    {
      pthread_mutex_lock(*(a1 + 96));
      if (*(a1 + 120))
      {
        break;
      }

      v6 = *(a1 + 116);
      if (v6 >= *(a1 + 112))
      {
        break;
      }

      *(a1 + 116) = v6 + 1;
      v7 = *(a1 + 104);
      pthread_mutex_unlock(*(a1 + 96));
      if (!v7)
      {
        goto LABEL_9;
      }

      sub_2779CE7E8(*a2, *(a2 + 8), a2 + 16, *(a2 + 7840), *(v7 + 16 * v6), *(v7 + 16 * v6 + 4), *(v7 + 16 * v6 + 8), *(v7 + 16 * v6 + 12), a1, (a2 + 7848), (a2 + 8360), 5);
    }

    pthread_mutex_unlock(*(a1 + 96));
LABEL_9:
    *(a2 + 8600) = 0;
    return 1;
  }
}

uint64_t sub_2779D19B4(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v8 = 0;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  v9 = a1 + 24;
  v50 = a5;
  if (a4 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4;
  }

  v47 = a4;
  v48 = 48 * a4;
  size = (a4 << 6) | 0x17;
  v11 = v10 << 6;
  v12 = 16 * (v10 + 2 * v10);
  v13 = a4 >> 27;
  do
  {
    if (v13 || (v14 = malloc_type_malloc(size, 0x5F484EBFuLL)) == 0)
    {
      v16 = (a1 + 8 * v8);
      *v16 = 0;
LABEL_13:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->mutex_[j]");
      if (*v16)
      {
        v20 = a4 < 1;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v15 - 8) = v14;
    v16 = (a1 + 8 * v8);
    *v16 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    if (a4 < 1)
    {
      v17 = malloc_type_malloc(0x17uLL, 0x5F484EBFuLL);
      if (!v17)
      {
        goto LABEL_24;
      }

      v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v18 - 8) = v17;
      v19 = (v9 + 8 * v8);
      *v19 = v18;
      if (v18)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

LABEL_17:
    v21 = 0;
    do
    {
      pthread_mutex_init((*v16 + v21), 0);
      v21 += 64;
    }

    while (v11 != v21);
LABEL_19:
    if (a4 > 0xAAAAAAA || (v22 = malloc_type_malloc(v48 + 23, 0x5F484EBFuLL)) == 0)
    {
LABEL_24:
      v19 = (v9 + 8 * v8);
      *v19 = 0;
      goto LABEL_25;
    }

    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v23 - 8) = v22;
    v19 = (v9 + 8 * v8);
    *v19 = v23;
    if (v23)
    {
      if (a4 < 1)
      {
        goto LABEL_31;
      }

LABEL_29:
      v25 = 0;
      do
      {
        pthread_cond_init((*v19 + v25), 0);
        v25 += 48;
      }

      while (v12 != v25);
      goto LABEL_31;
    }

LABEL_25:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->cond_[j]");
    if (*v19)
    {
      v24 = a4 < 1;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      goto LABEL_29;
    }

LABEL_31:
    ++v8;
  }

  while (v8 != v50);
  v26 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v26)
  {
    *(a1 + 88) = 0;
    v29 = (a1 + 88);
    v30 = a3;
    v31 = v47;
    goto LABEL_36;
  }

  v27 = v26;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF0);
  *&v28[-1].__opaque[48] = v27;
  *(a1 + 88) = v28;
  v29 = (a1 + 88);
  v30 = a3;
  v31 = v47;
  if (v28)
  {
LABEL_37:
    pthread_mutex_init(v28, 0);
  }

  else
  {
LABEL_36:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->job_mutex");
    v28 = *v29;
    if (*v29)
    {
      goto LABEL_37;
    }
  }

  v32 = sub_2779724A8(v30, 0x1B0uLL);
  *(a1 + 96) = v32;
  if (!v32)
  {
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->lrworkerdata");
  }

  *(a1 + 84) = v30;
  if (v30 >= 1)
  {
    v33 = 0;
    v34 = 0;
    while (1)
    {
      if (v34 >= (v30 - 1))
      {
        *(*(a1 + 96) + v33) = *(a2 + 23248);
        goto LABEL_54;
      }

      v35 = malloc_type_malloc(0x13B9B7uLL, 0x5F484EBFuLL);
      if (!v35)
      {
        break;
      }

      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v36 - 8) = v35;
      *(*(a1 + 96) + v33) = v36;
      if (!v36)
      {
        goto LABEL_48;
      }

LABEL_49:
      v37 = malloc_type_malloc(0x1277uLL, 0x5F484EBFuLL);
      if (!v37)
      {
        *(*(a1 + 96) + v33 + 8) = 0;
LABEL_53:
        sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->lrworkerdata[worker_idx].rlbs");
        goto LABEL_54;
      }

      v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v38 - 8) = v37;
      *(*(a1 + 96) + v33 + 8) = v38;
      if (!v38)
      {
        goto LABEL_53;
      }

LABEL_54:
      ++v34;
      v33 += 432;
      if (432 * v30 == v33)
      {
        goto LABEL_55;
      }
    }

    *(*(a1 + 96) + v33) = 0;
LABEL_48:
    sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->lrworkerdata[worker_idx].rst_tmpbuf");
    goto LABEL_49;
  }

LABEL_55:
  v39 = (a1 + 48);
  v40 = v50;
  while (2)
  {
    if (a4 > 0x7FFFFFFA || (v41 = malloc_type_malloc(4 * v31 + 23, 0x5F484EBFuLL)) == 0)
    {
      *v39 = 0;
      goto LABEL_61;
    }

    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v42 - 8) = v41;
    *v39 = v42;
    if (!v42)
    {
LABEL_61:
      sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->cur_sb_col[j]");
    }

    ++v39;
    if (--v40)
    {
      continue;
    }

    break;
  }

  v43 = 28 * v31 * v50;
  if (v43 > 0x1FFFFFFE9 || (result = malloc_type_malloc(v43 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 104) = 0;
    goto LABEL_68;
  }

  v45 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v45 - 8) = result;
  *(a1 + 104) = v45;
  if (!v45)
  {
LABEL_68:
    result = sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate lr_sync->job_queue");
  }

  *(a1 + 72) = 1;
  return result;
}

double sub_2779D1E04(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 24;
    do
    {
      v4 = *(a1 + 8 * v2);
      if (v4)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_8;
        }

        v5 = 0;
        v6 = 0;
        do
        {
          pthread_mutex_destroy((*(a1 + 8 * v2) + v5));
          ++v6;
          v5 += 64;
        }

        while (v6 < *(a1 + 76));
        v4 = *(a1 + 8 * v2);
        if (v4)
        {
LABEL_8:
          free(*(v4 - 8));
        }
      }

      v7 = *(v3 + 8 * v2);
      if (v7)
      {
        if (*(a1 + 76) < 1)
        {
          goto LABEL_14;
        }

        v8 = 0;
        v9 = 0;
        do
        {
          pthread_cond_destroy((*(v3 + 8 * v2) + v8));
          ++v9;
          v8 += 48;
        }

        while (v9 < *(a1 + 76));
        v7 = *(v3 + 8 * v2);
        if (v7)
        {
LABEL_14:
          free(*(v7 - 8));
        }
      }

      ++v2;
    }

    while (v2 != 3);
    v10 = *(a1 + 88);
    if (v10)
    {
      pthread_mutex_destroy(v10);
      v11 = *(a1 + 88);
      if (v11)
      {
        free(*(v11 - 8));
      }
    }

    for (i = 48; i != 72; i += 8)
    {
      v13 = *(a1 + i);
      if (v13)
      {
        free(*(v13 - 8));
      }
    }

    v14 = *(a1 + 104);
    if (v14)
    {
      free(*(v14 - 8));
    }

    v15 = *(a1 + 96);
    if (v15)
    {
      if (*(a1 + 84) < 2)
      {
        goto LABEL_34;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(a1 + 96);
        v19 = *(v18 + v16);
        if (v19)
        {
          free(*(v19 - 8));
        }

        v20 = *(v18 + v16 + 8);
        if (v20)
        {
          free(*(v20 - 8));
        }

        ++v17;
        v16 += 432;
      }

      while (v17 < *(a1 + 84) - 1);
      v15 = *(a1 + 96);
      if (v15)
      {
LABEL_34:
        free(*(v15 - 8));
      }
    }

    result = 0.0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2779D1FB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v33 = v4 + 8;
  v5 = *(a1 + 88);
  if (setjmp((a2 + 240)))
  {
    *(a2 + 236) = 0;
    pthread_mutex_lock(v5);
    *(a1 + 120) = 1;
    pthread_mutex_unlock(v5);
    v6 = a1 + 24;
    v32 = a1 + 48;
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = v33 + 56 * v7;
      v10 = *v9;
      if (**v9)
      {
        v11 = *(v9 + 20);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v31 = v10[1];
          v30 = v10[4];
          v14 = 0;
          v15 = 0;
          do
          {
            if (v11 - v12 >= 3 * v31 / 2)
            {
              v16 = v31;
            }

            else
            {
              v16 = v11 - v12;
            }

            v17 = *(v8 + 72) + v30;
            pthread_mutex_lock((*(v8 + 8 * v7) + v15));
            v18 = *(v32 + 8 * v7);
            v19 = *(v18 + v13);
            if (v19 <= v17)
            {
              v19 = v17;
            }

            *(v18 + v13) = v19;
            pthread_cond_broadcast((*(v6 + 8 * v7) + v14));
            pthread_mutex_unlock((*(v8 + 8 * v7) + v15));
            v12 += v16;
            v15 += 64;
            v14 += 48;
            v13 += 4;
          }

          while (v12 < v11);
        }
      }

      ++v7;
    }

    while (v7 != 3);
    return 0;
  }

  else
  {
    *(a2 + 236) = 1;
    while (1)
    {
      pthread_mutex_lock(*(a1 + 88));
      if (*(a1 + 120))
      {
        break;
      }

      v21 = *(a1 + 116);
      if (v21 >= *(a1 + 112))
      {
        break;
      }

      v22 = *(a1 + 104);
      *(a1 + 116) = v21 + 1;
      pthread_mutex_unlock(*(a1 + 88));
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = (v22 + 28 * v21);
      v34 = 0;
      v35 = 0;
      v35 = *v23;
      v24 = *(v23 + 3);
      v25 = (v33 + 56 * v24);
      v26 = v25[4];
      v27 = *(v23 + 4);
      if (v27 == 1)
      {
        v28 = sub_2779D2330;
      }

      else
      {
        v28 = nullsub_2;
      }

      v29 = nullsub_1;
      if (!v27)
      {
        v29 = sub_2779D2284;
      }

      sub_2779F8AA0(&v34, v26, *v4, *(v23 + 2), *(*v25 + 4), *(*v25 + 16), *(*v25 + 12), v24, v33 + 56 * v24, *a2, *(a2 + 8), v28, v29, a1, a2 + 28);
      (*(&off_28866D5E8 + v24))(*(v4 + 184), *(v4 + 176), 0, v26, *(v23 + 5), *(v23 + 6));
      if (*(a2 + 24))
      {
        sub_277A4848C(*(v4 + 176), v24, *(v23 + 5), *(v23 + 6));
      }
    }

    pthread_mutex_unlock(*(a1 + 88));
LABEL_26:
    *(a2 + 236) = 0;
    return 1;
  }
}

uint64_t sub_2779D2284(uint64_t result, int a2, int a3, int a4, int a5)
{
  v6 = *(result + 72);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4;
  }

  else
  {
    v7 = a3;
    if (a3 % v6)
    {
      return result;
    }
  }

  v8 = (result + 8 * a5);
  pthread_mutex_lock((*v8 + (a2 << 6)));
  v9 = v8[6];
  v10 = *(v9 + 4 * a2);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  *(v9 + 4 * a2) = v10;
  pthread_cond_broadcast((v8[3] + 48 * a2));
  v11 = (*v8 + (a2 << 6));

  return pthread_mutex_unlock(v11);
}

uint64_t sub_2779D2330(uint64_t result, int a2, int a3, int a4)
{
  if (a2)
  {
    v5 = result;
    v6 = *(result + 72);
    if (((v6 - 1) & a3) == 0)
    {
      v8 = a2 - 1;
      v9 = a2 - 1;
      v10 = (*(result + 8 * a4) + (v9 << 6));
      pthread_mutex_lock(v10);
      v11 = v5 + 48;
      if (*(*(v5 + 48 + 8 * a4) + 4 * v8) - v6 < a3)
      {
        v12 = v5 + 24;
        do
        {
          pthread_cond_wait((*(v12 + 8 * a4) + 48 * v9), v10);
        }

        while (*(*(v11 + 8 * a4) + 4 * v9) - v6 < a3);
      }

      return pthread_mutex_unlock(v10);
    }
  }

  return result;
}

uint64_t sub_2779D240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a7;
  v10 = *(a1 + 24696);
  v11 = *(v10 + 77);
  v12 = *(a1 + 532);
  v14 = v12 + 15;
  v13 = v12 < -15;
  v15 = v12 + 30;
  if (!v13)
  {
    v15 = v14;
  }

  v16 = v15 >> 4;
  v17 = 4 * *(a1 + 536) + 15;
  *(a3 + 592) = a7 == 0;
  v18 = v16 - 1;
  v19 = v16 - 1 == a7 || 16 * a7 + 16 == *(a1 + 532);
  v48 = v17 & 0xFFFFFFF0;
  *(a3 + 600) = v19;
  v20 = *(a1 + 23584);
  *a3 = a5;
  *(a3 + 608) = v20;
  v47 = 2 * v16;
  v40 = 2 * (a7 + 1);
  v41 = 16 * (a7 + 1);
  *(a3 + 612) = *(v10 + 72) - 8;
  v46 = 2 * a7;
  v21 = (a3 + 32);
  bzero((a3 + 628), 0x800uLL);
  v22 = 0;
  v23 = a2 + 32;
  v43 = a4;
  v44 = v7;
  v42 = v18;
  do
  {
    v24 = v48 >> *(v23 - 12);
    v25 = v24 * v47;
    if (v18 == v7)
    {
      v26 = v24 * v46;
      v27 = v24 * v46;
    }

    else
    {
      v28 = v41 << (2 - *(v23 - 8));
      v29 = *(a4 + 8 * v22);
      v30 = v29 + 2 * v25;
      sub_277AA4090(*(*(a1 + 24696) + 76), (v29 + 2 * v40 * v24), v24, *v23, v28 - 2, 0, *(v23 + 24), 2, v48 >> *(v23 - 12));
      v27 = v46 * v24;
      v31 = (v30 + 2 * v27);
      v18 = v42;
      v32 = v28;
      a4 = v43;
      v7 = v44;
      sub_277AA4090(*(*(a1 + 24696) + 76), v31, v24, *v23, v32, 0, *(v23 + 24), 2, v24);
      v26 = v46 * v24;
    }

    *(v21 - 3) = *(a4 + 8 * v22) + 2 * v27;
    *v21 = *(a4 + 8 * v22) + 2 * (v25 + v26);
    if (v11)
    {
      break;
    }

    ++v21;
    v23 += 2608;
  }

  while (v22++ < 2);
  v34 = *(a6 + 8) + 24 * a7;
  pthread_mutex_lock(*v34);
  pthread_cond_signal(*(v34 + 8));
  *(v34 + 16) = 1;
  result = pthread_mutex_unlock(*v34);
  if (v7)
  {
    v36 = *(a6 + 8) + 24 * a7;
    pthread_mutex_lock(*(v36 - 24));
    while (*(v36 - 8) != 1)
    {
      pthread_cond_wait(*(v36 - 16), *(v36 - 24));
    }

    *(v36 - 8) = 0;
    v37 = *(v36 - 24);

    return pthread_mutex_unlock(v37);
  }

  return result;
}

uint64_t sub_2779D26C4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*a2 + 532);
  v6 = v5 + 15;
  if (v5 < -15)
  {
    v6 = v5 + 30;
  }

  v7 = (v6 >> 4);
  v8 = *a1;
  if (setjmp((a2 + 296)))
  {
    *(a2 + 292) = 0;
    pthread_mutex_lock(v8);
    *(a1 + 28) = 1;
    pthread_mutex_unlock(v8);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v9 = v7;
      v10 = 0;
      do
      {
        v11 = v9;
        v12 = v10;
        v13 = *(a1 + 8) + v10;
        pthread_mutex_lock(*v13);
        pthread_cond_signal(*(v13 + 8));
        *(v13 + 16) = 1;
        pthread_mutex_unlock(*v13);
        v10 = v12 + 24;
        v9 = v11 - 1;
      }

      while (v11 != 1);
      return 0;
    }
  }

  else
  {
    *(a2 + 292) = 1;
    v15 = *(*(v4 + 24696) + 77);
    while (1)
    {
      pthread_mutex_lock(*a1);
      if ((*(a1 + 28) & 1) != 0 || *(a1 + 16))
      {
        break;
      }

      v26 = *(a1 + 20);
      *(a1 + 20) = v26 + 1;
      if (v26 + 1 == v7)
      {
        *(a1 + 16) = 1;
      }

      pthread_mutex_unlock(*a1);
      v16 = *(a2 + 8);
      sub_277AA4334(v4, v16, a2 + 48, a2 + 16, *(a2 + 40), v26, *(a2 + 72), a1);
      if (*(a2 + 80))
      {
        v17 = 0;
        v18 = (v16 + 24);
        do
        {
          v19 = v17;
          v20 = v18;
          v21 = *(v4 + 232);
          v22 = 16 << (2 - *v20);
          v23 = v22 * v26;
          v24 = v22 * v26 + v22;
          if (v24 >= *(v21 + 4 * (v17 != 0) + 1272))
          {
            v25 = *(v21 + 4 * (v17 != 0) + 1272);
          }

          else
          {
            v25 = v24;
          }

          sub_277A4848C(v21 + 1248, v17, v23, v25);
          v17 = v19 + 1;
          v18 = v20 + 652;
        }

        while (!v15 && v19 < 2);
      }
    }

    pthread_mutex_unlock(*a1);
    *(a2 + 292) = 0;
    return 1;
  }
}

float32x4_t *sub_2779D28B0(float32x4_t *result, _DWORD *a2, float *a3)
{
  v124 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = a2[2];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = result;
      v8 = *&a2[2 * v4 + 14];
      v9 = *&a2[2 * v4 + 36];
      v10 = v3;
      result = &v118[32 * v5 + 1];
      if (v4 == v3)
      {
        result = a3;
      }

      v11 = &a2[v4 + 3];
      if (v4 == v3)
      {
        v11 = a2 + 1;
      }

      v12 = *v11;
      if (v6 & 3 | v12 & 7)
      {
        if (v6 & 7 | v12 & 3)
        {
          if (v6 & 3 | v12 & 3)
          {
            if ((v6 & 7) != 0)
            {
              if ((v6 & 3) != 0)
              {
                if (v6 < 9)
                {
                  if (v6 <= 3)
                  {
                    if (v12 >= 1)
                    {
                      for (i = 0; i != v12; ++i)
                      {
                        v108 = *(v9 + 4 * i);
                        v109 = v8;
                        v110 = v7;
                        v111 = v6;
                        if (v6 >= 1)
                        {
                          do
                          {
                            v112 = *v109++;
                            v113 = v112;
                            v114 = *v110++;
                            v108 = v108 + (v113 * v114);
                            --v111;
                          }

                          while (v111);
                        }

                        result->f32[i] = fmaxf(v108, 0.0);
                        v8 = (v8 + 4 * v6);
                      }
                    }
                  }

                  else if (v12 >= 1)
                  {
                    v97 = 0;
                    f32 = v8[1].f32;
                    do
                    {
                      v99 = vmulq_f32(*v7, *(v8 + 4 * v97 * v6));
                      v100 = *(v9 + 4 * v97) + vaddv_f32(*&vpaddq_f32(v99, v99));
                      if (v6 != 4)
                      {
                        v101 = f32;
                        v102 = v7[1].f32;
                        v103 = v6 - 4;
                        do
                        {
                          v104 = *v101++;
                          v105 = v104;
                          v106 = *v102++;
                          v100 = v100 + (v105 * v106);
                          --v103;
                        }

                        while (v103);
                      }

                      result->f32[v97++] = fmaxf(v100, 0.0);
                      f32 += v6;
                    }

                    while (v97 != v12);
                  }
                }

                else if (v12 >= 1)
                {
                  v60 = 0;
                  v61 = 4 * v6;
                  v62 = (v6 & 0x7FFFFFF8u) >> 3;
                  v63 = v8 + 1;
                  v64 = v7 + 1;
                  v65 = &v7[2 * v62];
                  v66 = v8[2 * v62].f32;
                  do
                  {
                    v67 = 0uLL;
                    v68 = v6 + 8;
                    v69 = v64;
                    v70 = v63;
                    do
                    {
                      v67 = vmlaq_f32(vmlaq_f32(v67, *v70, *v69), v70[-1], v69[-1]);
                      v70 += 2;
                      v69 += 2;
                      v68 -= 8;
                    }

                    while (v68 > 0xF);
                    v71 = *(v9 + 4 * v60) + vaddv_f32(*&vpaddq_f32(v67, v67));
                    if (v6 > (v6 & 0x7FFFFFF8))
                    {
                      v72 = v66;
                      v73 = v65;
                      v74 = v6 - (v6 & 0x7FFFFFF8);
                      do
                      {
                        v75 = *v72++;
                        v76 = v75;
                        v77 = *v73++;
                        v71 = v71 + (v76 * v77);
                        --v74;
                      }

                      while (v74);
                    }

                    result->f32[v60++] = fmaxf(v71, 0.0);
                    v63 = (v63 + v61);
                    v66 = (v66 + v61);
                  }

                  while (v60 != v12);
                }
              }

              else if (v12 >= 1)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (v6 < 1)
                  {
                    v89 = 0uLL;
                  }

                  else
                  {
                    v88 = 0;
                    v89 = 0uLL;
                    v90 = v7;
                    v91 = v8;
                    do
                    {
                      v92 = *v90++;
                      v93 = v92;
                      v94 = *v91++;
                      v89 = vmlaq_f32(v89, v94, v93);
                      v88 += 4;
                    }

                    while (v88 < v6);
                  }

                  v95 = *(v9 + 4 * j) + vaddv_f32(*&vpaddq_f32(v89, v89));
                  if (v95 <= 0.0 && v4 != v10)
                  {
                    v95 = 0.0;
                  }

                  result->f32[j] = v95;
                  v8 = (v8 + 4 * v6);
                }
              }
            }

            else if (v12 >= 1)
            {
              v78 = 0;
              v79 = v8 + 1;
              v80 = v7 + 1;
              do
              {
                if (v6 < 1)
                {
                  v82 = 0uLL;
                }

                else
                {
                  v81 = 0;
                  v82 = 0uLL;
                  v83 = v80;
                  v84 = v79;
                  do
                  {
                    v82 = vmlaq_f32(vmlaq_f32(v82, *v84, *v83), v84[-1], v83[-1]);
                    v81 += 8;
                    v84 += 2;
                    v83 += 2;
                  }

                  while (v81 < v6);
                }

                v85 = *(v9 + 4 * v78) + vaddv_f32(*&vpaddq_f32(v82, v82));
                if (v85 <= 0.0 && v4 != v10)
                {
                  v85 = 0.0;
                }

                result->f32[v78++] = v85;
                v79 = (v79 + 4 * v6);
              }

              while (v78 != v12);
            }
          }

          else if (v12 >= 1)
          {
            for (k = 0; k < v12; k += 4)
            {
              v46 = *(v9 + 4 * k);
              v47 = 0uLL;
              v120 = 0u;
              v119[0] = 0u;
              v117 = 0u;
              v118[0] = 0u;
              v48 = 0uLL;
              v49 = 0uLL;
              v50 = 0uLL;
              if (v6 >= 1)
              {
                for (m = 0; m < v6; m += 4)
                {
                  v52 = 0;
                  v53 = v7[m / 4];
                  v54 = v8->i64 + 4 * k * v6 + 4 * m;
                  v55 = &v120;
                  v56 = v118;
                  v57 = 1;
                  do
                  {
                    v58 = v57;
                    *v55 = vmlaq_f32(*v55, v53, *(v54 + 4 * v52 * v6));
                    *v56 = vmlaq_f32(*v56, v53, *(v54 + 4 * (v52 | 1) * v6));
                    v55 = v119;
                    v56 = &v117;
                    v52 = 2;
                    v57 = 0;
                  }

                  while ((v58 & 1) != 0);
                }

                v50 = v120;
                v47 = v117;
                v49 = v118[0];
                v48 = v119[0];
              }

              v59 = vaddq_f32(v46, vpaddq_f32(vpaddq_f32(v50, v49), vpaddq_f32(v48, v47)));
              if (v4 != v10)
              {
                v59 = vmaxq_f32(v59, 0);
              }

              result[k / 4] = v59;
            }
          }
        }

        else if (v12 >= 1)
        {
          v30 = 0;
          v31 = v8 + 1;
          do
          {
            v32 = *(v9 + 4 * v30);
            v122 = 0uLL;
            v123 = 0uLL;
            v120 = 0uLL;
            v121 = 0uLL;
            if (v6 < 1)
            {
              v42 = 0uLL;
              v43 = 0uLL;
              v40 = 0uLL;
              v41 = 0uLL;
            }

            else
            {
              v33 = 0;
              v34 = v31;
              do
              {
                v35 = 0;
                v36 = &v7[v33 / 4];
                v37 = *v36;
                v38 = v36[1];
                v39 = v34;
                do
                {
                  *(&v120 + v35) = vmlaq_f32(vmlaq_f32(*(&v120 + v35), v39[-1], v37), *v39, v38);
                  v35 += 16;
                  v39 = (v39 + 4 * v6);
                }

                while (v35 != 64);
                v33 += 8;
                v34 += 2;
              }

              while (v33 < v6);
              v41 = v122;
              v40 = v123;
              v43 = v120;
              v42 = v121;
            }

            v44 = vaddq_f32(v32, vpaddq_f32(vpaddq_f32(v43, v42), vpaddq_f32(v41, v40)));
            if (v4 != v10)
            {
              v44 = vmaxq_f32(v44, 0);
            }

            result[v30 / 4] = v44;
            v30 += 4;
            v31 += v6;
          }

          while (v30 < v12);
        }
      }

      else if (v12 >= 1)
      {
        v13 = 0;
        v14 = 32 * v6;
        v15 = &v8->i32[v6];
        do
        {
          v16 = (v9 + 4 * v13);
          v18 = *v16;
          v17 = v16[1];
          v122 = 0uLL;
          v123 = 0uLL;
          v120 = 0uLL;
          v121 = 0uLL;
          memset(v119, 0, sizeof(v119));
          if (v6 >= 1)
          {
            v19 = 0;
            v20 = v8;
            v21 = v15;
            do
            {
              v22 = 0;
              v23 = 0;
              v24 = v7[v19 / 4];
              do
              {
                v25 = *&v21[v22];
                *(&v120 + v23 * 16) = vmlaq_f32(*(&v120 + v23 * 16), *(v20 + v22 * 4), v24);
                v119[v23] = vmlaq_f32(v119[v23], v25, v24);
                ++v23;
                v22 += 2 * v6;
              }

              while (v23 != 4);
              v19 += 4;
              v21 += 4;
              ++v20;
            }

            while (v19 < v6);
          }

          v26 = 0;
          v27 = &result[v13 / 4];
          do
          {
            *(&v120 + v26 * 16) = vpaddq_f32(*(&v120 + v26 * 16), v119[v26]);
            ++v26;
          }

          while (v26 != 4);
          v28 = vaddq_f32(v17, vpaddq_f32(v122, v123));
          v29 = vaddq_f32(v18, vpaddq_f32(v120, v121));
          if (v4 != v10)
          {
            v28 = vmaxq_f32(v28, 0);
            v29 = vmaxq_f32(v29, 0);
          }

          *v27 = v29;
          v27[1] = v28;
          v13 += 8;
          v15 = (v15 + v14);
          v8 = (v8 + v14);
        }

        while (v13 < v12);
      }

      v5 = 1 - v5;
      v3 = a2[2];
      v6 = v12;
    }

    while (v4++ < v3);
  }

  v116 = a2[1];
  if (v116 >= 1)
  {
    do
    {
      *a3 = vcvts_n_f32_s32(((*a3 * 512.0) + 0.5), 9uLL);
      ++a3;
      --v116;
    }

    while (v116);
  }

  return result;
}

uint64_t sub_2779D2FCC(__int128 *a1, int a2, int a3, int a4)
{
  v4 = (a3 - 16);
  if (a3 >= 16)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    v8 = v4 + 1;
    v9 = a3 - v4 - 16;
    *&_Q1 = 0x101010101010101;
    *(&_Q1 + 1) = 0x101010101010101;
    v11 = a4;
    do
    {
      v12 = v8;
      v13 = a3;
      v14 = a1;
      do
      {
        v15 = v12;
        v16 = *v14++;
        _Q3 = v16;
        __asm
        {
          UDOT            V2.4S, V3.16B, V1.16B
          UDOT            V0.4S, V3.16B, V3.16B
        }

        v13 -= 16;
        v12 -= 16;
      }

      while (v13 + 16 > 31);
      if (v13 + 16 >= 17)
      {
        v24 = v9;
        do
        {
          v25 = *(v14 + v24);
          v6 += v25;
          v5 += (v25 * v25);
          --v15;
          ++v24;
        }

        while (v15 > 1);
      }

      a1 = (a1 + v7);
      --v11;
    }

    while (v11);
    v26 = vaddlvq_u32(_Q2) + v6;
    v27 = vaddlvq_u32(_Q0);
    return v27 + v5 - v26 * v26 / (a4 * a3);
  }

  v28 = (a3 - 8);
  if (a3 >= 8)
  {
    v5 = 0;
    v29 = 0;
    v30 = v28 + 1;
    v31 = a3 - v28;
    _D1 = 0x101010101010101;
    v33 = a4;
    do
    {
      if (a3 != 8)
      {
        v34 = v31;
        v35 = v30;
        do
        {
          v36 = *(a1 + v34);
          v29 += v36;
          v5 += (v36 * v36);
          --v35;
          ++v34;
        }

        while (v35 > 1);
      }

      _D3 = *a1;
      __asm
      {
        UDOT            V2.2S, V3.8B, V1.8B
        UDOT            V0.2S, V3.8B, V3.8B
      }

      a1 = (a1 + a2);
      --v33;
    }

    while (v33);
    v26 = vpaddl_u32(_D2) + v29;
    v27 = vpaddl_u32(_D0);
    return v27 + v5 - v26 * v26 / (a4 * a3);
  }

  if (a3 < 4 || (a4 & 1) != 0)
  {
    return sub_2779888C0(a1, a2, a3, a4);
  }

  v41 = a4 >> 1;
  _D2 = 0x101010101010101;
  do
  {
    LODWORD(_D3) = *a1;
    HIDWORD(_D3) = *(a1 + a2);
    __asm
    {
      UDOT            V0.2S, V3.8B, V2.8B
      UDOT            V1.2S, V3.8B, V3.8B
    }

    a1 = (a1 + 2 * a2);
    --v41;
  }

  while (v41);
  v46 = vpaddl_u32(_D0);
  return vpaddl_u32(_D1) - v46 * v46 / (a4 * a3);
}

void sub_2779D3198(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v110 = *MEMORY[0x277D85DE8];
  v10 = (a2 + 101276);
  v11 = *(a5 + 48);
  if (v11 <= 8)
  {
    if (v11 == 3)
    {
      v12 = 0;
      v13 = 4;
      goto LABEL_14;
    }

    if (v11 == 6)
    {
      v12 = 0;
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v11 == 9)
  {
    v12 = 0;
    v13 = 2;
    goto LABEL_14;
  }

  if (v11 != 12)
  {
    if (v11 == 15)
    {
      return;
    }

LABEL_13:
    v12 = 0;
    v13 = -1;
    goto LABEL_14;
  }

  if (*(a2 + 94728))
  {
    v13 = 1;
    v12 = 1;
    goto LABEL_14;
  }

  v28 = 0;
  v80 = xmmword_277BB7C10;
  v81 = xmmword_277BB7790;
  v29 = a2 + 94732;
  v30 = v79;
  memset(v79, 0, sizeof(v79));
  do
  {
    v31 = *(&v80 + v28);
    if (v31 >= 1)
    {
      v32 = 4 * (*&v82[4 * v28 - 16] * *&v82[4 * v28 - 16]);
      v33 = v30;
      v34 = *(&v80 + v28);
      do
      {
        *v33++ = v29;
        v29 += v32;
        --v34;
      }

      while (v34);
    }

    v30 = (v30 + 8 * v31);
    ++v28;
  }

  while (v28 != 4);
  v35 = *(a2 + 11072);
  v36 = *(a2 + 16904);
  if (v36 >= 0xFF)
  {
    v37 = 255;
  }

  else
  {
    v37 = *(a2 + 16904);
  }

  if (v36 < 0)
  {
    v37 = 0;
  }

  switch(v35)
  {
    case 8:
      v38 = word_277BFDBFA;
      goto LABEL_76;
    case 12:
      v38 = &unk_277BFDFFA;
      goto LABEL_76;
    case 10:
      v38 = &unk_277BFDDFA;
LABEL_76:
      v59 = v38[v37];
      goto LABEL_78;
  }

  v59 = -1;
LABEL_78:
  *v10 = (log1pf(vcvts_n_f32_u32((v59 >> (v35 - 8)) * (v59 >> (v35 - 8)), 8uLL)) + -1.1919) / 1.73;
  v60 = *(a2 + 72);
  v77 = *(a2 + 48);
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    v68 = malloc_type_malloc(0x421BuLL, 0x5F484EBFuLL);
    if (!v68)
    {
      goto LABEL_95;
    }

    *(((v68 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v68;
    if (((v68 + 23) & 0xFFFFFFFFFFFFFFF0) == 0)
    {
      goto LABEL_95;
    }

    v69 = 0;
    HIWORD(v70) = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v71 = 2 * v77 - 2 * v60 - 2;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    memset(&v82[8], 0, 80);
    v72 = 2 * v60;
    v73 = (v68 + 23) & 0xFFFFFFFFFFFFFFF0;
    v109 = 0;
    v74 = v73;
    *v82 = v73;
    do
    {
      for (i = 0; i != 65; ++i)
      {
        LOWORD(v70) = *(v71 + 2 * i);
        v70 = LODWORD(v70) / ~(-1 << v35);
        *(v73 + 4 * i) = v70;
      }

      ++v69;
      v73 += 260;
      v71 += v72;
    }

    while (v69 != 65);
    v76 = sub_277A86B78();
    free(*(v74 - 8));
    if ((v76 & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v61 = malloc_type_malloc(0x421BuLL, 0x5F484EBFuLL);
    if (!v61)
    {
      goto LABEL_95;
    }

    *(((v61 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v61;
    if (((v61 + 23) & 0xFFFFFFFFFFFFFFF0) == 0)
    {
      goto LABEL_95;
    }

    v63 = 0;
    v64 = ~v60 + v77;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    memset(&v82[8], 0, 80);
    v65 = (v61 + 23) & 0xFFFFFFFFFFFFFFF0;
    v109 = 0;
    v78 = v65;
    *v82 = v65;
    do
    {
      for (j = 0; j != 65; ++j)
      {
        LOBYTE(v62) = *(v64 + j);
        v62 = LODWORD(v62) / 255.0;
        *(v65 + 4 * j) = v62;
      }

      ++v63;
      v65 += 260;
      v64 += v60;
    }

    while (v63 != 65);
    v67 = sub_277A86B78();
    free(*(v78 - 8));
    if (!v67)
    {
LABEL_95:
      sub_2779F5C10(*(a2 + 11152), 2, "Error allocating CNN data");
      return;
    }
  }

  v12 = 1;
  *(a2 + 94728) = 1;
  v13 = 1;
LABEL_14:
  if (!*(a2 + 94728))
  {
    return;
  }

  v14 = qword_27A7198C0[v13];
  v79[0] = 0uLL;
  v15 = (a2 + 94732);
  v16 = a2 + 94812;
  if (v12)
  {
    v17 = 0;
    v18 = *(a2 + 94780);
    *&v82[32] = *(a2 + 94764);
    *&v82[48] = v18;
    *&v82[64] = *(a2 + 94796);
    v19 = *(a2 + 94748);
    *v82 = *v15;
    *&v82[16] = v19;
    v20 = 20;
    do
    {
      v21 = 0;
      v22 = &v82[4 * v20];
      v20 += 4;
      do
      {
        *&v22[v21] = *(v16 + 4 * v21);
        v21 += 4;
      }

      while (v21 != 16);
      ++v17;
      v16 += 4;
    }

    while (v17 != 4);
    *&v82[4 * v20] = *v10;
    goto LABEL_55;
  }

  v23 = a2 + 94876;
  switch(v11)
  {
    case 3u:
      v45 = 0;
      v46 = a3 - 1;
      if (a3 < 1)
      {
        v46 = a3 + 2;
      }

      v47 = (v23 + 4 * dword_277BCC580[(v46 >> 2) - 5]);
      do
      {
        v48 = *v47;
        v47 += 16;
        *&v82[v45] = v48;
        v45 += 4;
      }

      while (v45 != 80);
      v49 = 0;
      v50 = (a2 + 96156 + 4 * dword_277BCC5C0[a3 - 21]);
      do
      {
        *&v82[v49 + 80] = *v50;
        v49 += 4;
        v50 += 64;
      }

      while (v49 != 80);
      *(&v87 + 2) = *v10;
      break;
    case 6u:
      v39 = 0;
      v40 = a3 - 1;
      if (a3 < 1)
      {
        v40 = a3 + 2;
      }

      v41 = v16 + 4 * *(&xmmword_277BB7060 + (v40 >> 2) - 1);
      do
      {
        *&v82[v39] = *(v41 + 4 * v39);
        v39 += 4;
      }

      while (v39 != 16);
      v42 = (v23 + 4 * dword_277BCC580[a3 - 5]);
      for (k = 16; k != 96; k += 4)
      {
        v44 = *v42;
        v42 += 16;
        *&v82[k] = v44;
      }

      goto LABEL_47;
    case 9u:
      v24 = 0;
      v25 = *(a2 + 94780);
      *&v82[32] = *(a2 + 94764);
      *&v82[48] = v25;
      *&v82[64] = *(a2 + 94796);
      v26 = *(a2 + 94748);
      *v82 = *v15;
      *&v82[16] = v26;
      v27 = v16 + 4 * *(&xmmword_277BB7060 + a3 - 1);
      do
      {
        *&v82[v24 + 80] = *(v27 + 4 * v24);
        v24 += 4;
      }

      while (v24 != 16);
LABEL_47:
      *(&v83 + 2) = *v10;
      break;
  }

LABEL_55:
  sub_2779D28B0(v82, v14, v79);
  v51 = *(a1 + 56);
  if (v51 >= *(a1 + 60))
  {
    v51 = *(a1 + 60);
  }

  v52 = &unk_277BCC710;
  if (v51 > 479)
  {
    v52 = &unk_277BCC6E8;
  }

  v53 = &unk_277BCC724;
  if (v51 > 479)
  {
    v53 = &unk_277BCC6FC;
  }

  v54 = v51 <= 719;
  if (v51 <= 719)
  {
    v55 = v52;
  }

  else
  {
    v55 = &unk_277BCC6C0;
  }

  v56 = &unk_277BCC6D4;
  if (v54)
  {
    v56 = v53;
  }

  v57 = v56[v13];
  v58 = *v79;
  if (*v79 > v55[v13])
  {
    if (a4 != 1)
    {
      *(a5 + 284) = 0;
    }

    *(a5 + 288) = xmmword_277BB7390;
  }

  if (v58 < v57)
  {
    *(a5 + 300) = 0;
  }
}

float32x4_t *sub_2779D3920()
{
  result = MEMORY[0x28223BE20]();
  v4 = v3;
  v5 = result;
  v68 = *MEMORY[0x277D85DE8];
  v6 = &result[24724].i32[2];
  v7 = *(v3 + 48);
  if (v7 <= 8)
  {
    if (v7 == 3)
    {
      v8 = 4;
      goto LABEL_13;
    }

    if (v7 == 6)
    {
      v8 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v7)
    {
      case 9u:
        v8 = 2;
        goto LABEL_13;
      case 0xFu:
        v8 = 0;
        goto LABEL_13;
      case 0xCu:
        v8 = 1;
        goto LABEL_13;
    }
  }

  v8 = -1;
LABEL_13:
  if (result[15354].i32[2] >= result[15354].i32[3])
  {
    v9 = result[15354].i32[3];
  }

  else
  {
    v9 = result[15354].i32[2];
  }

  v10 = *v6;
  if (v10 != -1)
  {
    v11 = v10 >= 4 ? &qword_277BB6A48 : (&xmmword_277BB7060 + 4 * v10);
    v12 = *v11;
    if ((v12 & 0x80000000) == 0)
    {
      v13 = &result[40268].i8[8];
      v14 = *(v3 + 12);
      v15 = *(v4 + 16);
      v16 = *(&off_27A7198E8 + v8);
      v17 = *(&off_27A719910 + v8);
      v28 = *(&off_27A719938 + v8);
      if (v9 <= 479)
      {
        v18 = v9 > 719;
      }

      else
      {
        v18 = (v9 > 719) + 1;
      }

      v19 = (4 * v18) | (16 * v18);
      v20 = 15 * v12;
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      v21 = *(&flt_277BCC738[v20 + v8] + v19);
      v63 = 0u;
      v64 = 0u;
      v22 = *(&flt_277BCC828[v20 + v8] + v19);
      sub_2779D3D18(result, v1, v2, v14, v15, v7, v63.f32, 3, 0.0);
      sub_2779D4488(v5[17013].i64[1], v5[40268].i32[3] != 0, &v63, 17, 0);
      v23 = (v4 + 284);
      if (*v13 && (v62 = 0u, v61 = 0u, v60 = 0u, v59 = 0u, v58 = 0u, v57 = 0u, v56 = 0u, v55 = 0u, v54 = 0u, v53 = 0u, v52 = 0u, v51 = 0u, v50 = 0u, v49 = 0u, v48 = 0u, v47 = 0u, v46 = 0u, v45 = 0u, v44 = 0u, v43 = 0u, v42 = 0u, v41 = 0u, v40 = 0u, v39 = 0u, v38 = 0u, v37 = 0u, v36 = 0u, *&v35[12] = 0u, v31 = 0, v33 = v64, v34 = v65, *v35 = v66, *&v35[16] = v67, v32 = v63, (*(v13 + 4))(*(v13 + 2), &v31), memset(v29, 0, 512), result = (*(v13 + 5))(*(v13 + 2), v29), !result))
      {
        *v23 = v29[513];
        *(v4 + 300) = v30;
      }

      else
      {
        for (i = 0; i != 17; ++i)
        {
          v63.f32[i] = (v63.f32[i] - *(v16 + i * 4)) / *(v17 + i * 4);
        }

        LODWORD(v29[0]) = 0;
        result = sub_2779D28B0(&v63, v28, v29);
        v25 = *v29;
        if (*v29 > v21)
        {
          *(v4 + 300) = 1;
          *v23 = 0;
          *(v4 + 292) = 0;
        }

        if (v6[2] >= 2 && v25 < v22)
        {
          *(v4 + 300) = 0;
        }

        v26 = v6[16];
        if (v26)
        {
          v27 = 2.0;
          if (v9 > 719)
          {
            v27 = 3.0;
          }

          if (v25 < (v27 * flt_277BCC828[15 * v26 + 5 * v18 + v8]))
          {
            *(v4 + 296) = 0;
          }
        }
      }
    }
  }

  return result;
}

float sub_2779D3D18(_DWORD *a1, uint64_t a2, _DWORD *a3, int a4, int a5, signed int a6, float *a7, char a8, float result)
{
  v71 = byte_277C3F990[a6];
  v73 = byte_277C36D60[a6];
  if (a1[98780])
  {
    v15 = 7;
  }

  else
  {
    v15 = 1;
  }

  v75 = v15;
  if ((a8 & 1) != 0 && !a3[28])
  {
    sub_2779D4598(a1, a2, a3, a4, a5, a6, &v75, 1, a3 + 18, a3 + 19);
    a3[28] = 1;
  }

  v70 = a8;
  if ((a8 & 2) != 0)
  {
    v16 = 255;
    if (a6 > 8)
    {
      switch(a6)
      {
        case 9:
          v17 = 3u;
          break;
        case 12:
          v17 = 4u;
          break;
        case 15:
          v17 = 5u;
          break;
        default:
          goto LABEL_22;
      }
    }

    else if (a6)
    {
      if (a6 == 3)
      {
        v17 = 1u;
      }

      else
      {
        if (a6 != 6)
        {
          goto LABEL_22;
        }

        v17 = 2u;
      }
    }

    else
    {
      v17 = 0;
    }

    v16 = *(&unk_277C31428 + v17 + 18);
LABEL_22:
    for (i = 0; i != 4; ++i)
    {
      v19 = *&a3[2 * i + 2];
      if (!v19[28])
      {
        if (i)
        {
          v20 = v71 >> 1;
        }

        else
        {
          v20 = 0;
        }

        sub_2779D4598(a1, a2, v19, a4 + (((i >> 1) * v73) >> 1), v20 + a5, v16, &v75, 1, v19 + 18, v19 + 19);
        v19[28] = 1;
      }
    }
  }

  v21 = a6;
  v22 = a7;
  v23 = v70;
  if ((v70 & 4) != 0 && !a3[29])
  {
    v24 = 255;
    if (a6 > 8)
    {
      switch(a6)
      {
        case 9:
          v25 = 3u;
          break;
        case 12:
          v25 = 4u;
          break;
        case 15:
          v25 = 5u;
          break;
        default:
          goto LABEL_45;
      }
    }

    else if (a6)
    {
      if (a6 == 3)
      {
        v25 = 1u;
      }

      else
      {
        if (a6 != 6)
        {
          goto LABEL_45;
        }

        v25 = 2u;
      }
    }

    else
    {
      v25 = 0;
    }

    v24 = *(&unk_277C31428 + v25 + 6);
LABEL_45:
    sub_2779D4598(a1, a2, a3, a4, a5, v24, &v75, 0, a3 + 20, a3 + 21);
    sub_2779D4598(a1, a2, a3, a4 + (v73 >> 1), a5, v24, &v75, 0, a3 + 22, a3 + 23);
    v26 = 255;
    if (a6 > 8)
    {
      switch(a6)
      {
        case 9:
          v27 = 3u;
          goto LABEL_58;
        case 12:
          v27 = 4u;
          goto LABEL_58;
        case 15:
          v27 = 5u;
          goto LABEL_58;
      }
    }

    else
    {
      switch(a6)
      {
        case 0:
          v27 = 0;
          goto LABEL_58;
        case 3:
          v27 = 1u;
          goto LABEL_58;
        case 6:
          v27 = 2u;
LABEL_58:
          v26 = *(&unk_277C31428 + v27 + 12);
          break;
      }
    }

    sub_2779D4598(a1, a2, a3, a4, a5, v26, &v75, 0, a3 + 24, a3 + 25);
    sub_2779D4598(a1, a2, a3, a4, a5 + (v71 >> 1), v26, &v75, 0, a3 + 26, a3 + 27);
    a3[29] = 1;
  }

  if (!a7)
  {
    return result;
  }

  if (v70)
  {
    *a7 = log1pf(a3[18]);
    a7[1] = log1pf(a3[19]);
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v69 = (a1 + 67578);
  v29 = a1 + 61392;
  if ((v70 & 2) != 0)
  {
    v30 = 0;
    v31 = &a7[v28 + 1];
    v28 |= 8u;
    do
    {
      v32 = *&a3[2 * v30 + 2];
      *(v31 - 1) = log1pf(*(v32 + 72));
      *v31 = log1pf(*(v32 + 76));
      v31 += 2;
      ++v30;
    }

    while (v30 != 4);
    v21 = a6;
    v22 = a7;
    v23 = v70;
  }

  if ((v23 & 4) != 0)
  {
    v33 = 0;
    v34 = &v22[v28];
    v28 += 8;
    do
    {
      v34[v33] = log1pf(a3[v33 + 20]);
      ++v33;
    }

    while (v33 != 8);
    v21 = a6;
    v22 = a7;
  }

  if (*(*v69 + 77))
  {
    v35 = 1;
  }

  else
  {
    v35 = 3;
  }

  v36 = v29[157];
  v37 = a5 + v36 * a4;
  v38 = byte_277C3F990[*(v29 + 608)];
  v39 = a4 / v38;
  v40 = a5 / v38;
  *(*(v29 + 77) + 8 * v37) = *(v29 + 74) + 176 * (v40 + v29[151] * v39);
  *(a2 + 8280) = *(v29 + 77) + 8 * v37;
  *(a2 + 8328) = *(v29 + 79) + v37;
  *(a2 + 8336) = v36;
  *(a2 + 16760) = *v29 + 84 * (v40 + v29[3] * v39);
  sub_27798E348(a2 + 432, v21, *(v29 + 35) + 1248, a4, a5, 0, v35);
  v41 = *(v69 + 455);
  v42 = -8 - 4 * (v73 + a4);
  if (8 - (v41 + 4 * a4) > v42)
  {
    v42 = 8 - (v41 + 4 * a4);
  }

  v43 = v29[145];
  v44 = 4 * (v43 - a4) + 8;
  if ((v41 - 8 + 4 * (v43 - a4 - v73)) < v44)
  {
    v44 = v41 - 8 + 4 * (v43 - a4 - v73);
  }

  *(a2 + 128748) = v42;
  *(a2 + 128752) = v44;
  v45 = -8 - 4 * (v71 + a5);
  if (8 - (v41 + 4 * a5) > v45)
  {
    v45 = 8 - (v41 + 4 * a5);
  }

  v46 = v29[146];
  v47 = 4 * (v46 - a5) + 8;
  if ((v41 - 8 + 4 * (v46 - a5 - v71)) < v47)
  {
    v47 = v41 - 8 + 4 * (v46 - a5 - v71);
  }

  *(a2 + 128740) = v45;
  *(a2 + 128744) = v47;
  v48 = (a2 + 601);
  v49 = v35;
  do
  {
    v50 = ((4 * v71) >> *(v48 - 165));
    v51 = ((4 * v73) >> *(v48 - 161));
    if (v50 <= 4)
    {
      LOBYTE(v50) = 4;
    }

    *(v48 - 1) = v50;
    if (v51 <= 4)
    {
      v52 = 4;
    }

    else
    {
      v52 = v51;
    }

    *v48 = v52;
    v48 += 2608;
    --v49;
  }

  while (v49);
  *(a2 + 416) = a4;
  *(a2 + 420) = a5;
  *(a2 + 8348) = -32 * a4;
  *(a2 + 8352) = 32 * (v43 - (v73 + a4));
  *(a2 + 8340) = -32 * a5;
  *(a2 + 8344) = 32 * (v46 - (v71 + a5));
  sub_277A5D0C0(a2, v69[244], a4, a5, v35, v21);
  v53 = *(a2 + 16904);
  v54 = *(a2 + 11072);
  if (v53 >= 0xFF)
  {
    v55 = 255;
  }

  else
  {
    v55 = *(a2 + 16904);
  }

  if (v53 < 0)
  {
    v55 = 0;
  }

  v56 = v54 - 8;
  switch(v54)
  {
    case 8:
      v57 = word_277BFDBFA;
      break;
    case 12:
      v57 = &unk_277BFDFFA;
      break;
    case 10:
      v57 = &unk_277BFDDFA;
      break;
    default:
      v58 = -1;
      goto LABEL_103;
  }

  v58 = v57[v55];
LABEL_103:
  v59 = log1pf(vcvts_n_f32_u32((v58 >> v56) * (v58 >> v56), 8uLL));
  v60 = &v22[v28];
  *v60 = v59;
  v61 = *(a2 + 8304);
  v62 = *(a2 + 8296);
  if (v61)
  {
    v21 = *v61;
  }

  v63 = a6;
  if (v62)
  {
    v63 = *v62;
  }

  v64 = 0.0;
  if (v61)
  {
    v65 = 1.0;
  }

  else
  {
    v65 = 0.0;
  }

  v60[1] = v65;
  LOBYTE(v65) = byte_277C42228[v21];
  v66 = LODWORD(v65);
  v60[2] = v66;
  LOBYTE(v66) = byte_277C3CFCC[v21];
  v67 = LODWORD(v66);
  if (v62)
  {
    v64 = 1.0;
  }

  v60[3] = v67;
  v60[4] = v64;
  LOBYTE(v64) = byte_277C42228[v63];
  v68 = LODWORD(v64);
  v60[5] = v68;
  LOBYTE(v68) = byte_277C3CFCC[v63];
  result = LODWORD(v68);
  v60[6] = result;
  return result;
}

FILE *sub_2779D4488(FILE *result, int a2, uint64_t a3, int a4, int a5)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    snprintf(__str, 0x100uLL, "%s/%s", result, off_27A71C090[a5]);
    result = fopen(__str, "a");
    if (result)
    {
      v7 = result;
      v8 = 0;
      do
      {
        fprintf(v7, "%.6f", *(a3 + 4 * v8));
        if (v8 < (a4 - 1))
        {
          fputc(44, v7);
        }

        ++v8;
      }

      while (a4 != v8);
      fputc(10, v7);
      return fclose(v7);
    }
  }

  return result;
}

_DWORD *sub_2779D4598(_DWORD *result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int *a7, int a8, _DWORD *a9, _DWORD *a10)
{
  if (result[61538] <= a5 || result[61537] <= a4)
  {
    *a10 = 0;
    *a9 = 0;
  }

  else
  {
    *a9 = 0x7FFFFFFF;
    v10 = *a7;
    if ((result[98846] & *(&unk_277C3F988 + v10)) != 0)
    {
      v14 = a3 + 4 * v10;
      v19 = 0;
      v16 = *(v14 + 40);
      v15 = (v14 + 40);
      result = sub_277A51BBC(result, a2, a4, a5, a6, v10, v16, 1, &v19 + 1, &v19);
      if (HIDWORD(v19) < *a9)
      {
        *a9 = HIDWORD(v19);
        *a10 = v19;
      }

      if (a8)
      {
        *v15 = (result + ((result >> 28) & 7)) >> 3;
        v15[1] = (((result >> 31) >> 13) + WORD1(result)) >> 3;
        if (a6 >= 3)
        {
          v17 = 0;
          v18 = *v15;
          do
          {
            *(*(a3 + 8 + v17) + 4 * v10 + 40) = v18;
            v17 += 8;
          }

          while (v17 != 32);
        }
      }
    }
  }

  return result;
}

BOOL sub_2779D46E8()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = v0 + 643072;
  if (!*(v0 + 644296))
  {
    return 0;
  }

  v5 = v3;
  v6 = v2;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  *&v16[96] = 0u;
  *&v16[80] = 0u;
  *&v16[64] = 0u;
  *&v16[48] = 0u;
  *&v16[32] = 0u;
  *&v16[16] = 0u;
  *v16 = 0u;
  v7 = *(v1 + 32);
  *&v16[56] = *(v1 + 48);
  v8 = *(v1 + 80);
  *&v16[72] = *(v1 + 64);
  *&v16[88] = v8;
  v9 = *(v1 + 16);
  *&v16[8] = *v1;
  *&v16[24] = v9;
  memset(v15, 0, sizeof(v15));
  LODWORD(v15[0]) = 1;
  *&v16[104] = *(v1 + 96);
  *&v16[40] = v7;
  (*(v0 + 644328))(*(v0 + 644312), v15);
  memset(v12, 0, 512);
  v10 = (*(v4 + 1264))(*(v4 + 1240), v12);
  result = v10 == 0;
  if (!v10)
  {
    *v6 = v13;
    *v5 = v14;
  }

  return result;
}

FILE *sub_2779D4894()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v49 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = *(v1 + 12);
  LODWORD(v1) = *(v1 + 16);
  v6 = *(v2 + 48);
  v7 = v0 + 161074;
  LODWORD(v48) = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  sub_2779D3D18(v0, v8, v9, v3, v1, v6, &v42, 7, 0.0);
  DWORD1(v48) = log1pf(*v4);
  DWORD2(v48) = log1pf(*(v4 + 8));
  HIDWORD(v48) = log1pf(*(v4 + 16));
  if (v6 > 11)
  {
    if (v6 != 15)
    {
      if (v6 == 12)
      {
        v10 = 0;
        v11 = &unk_277BCCC3C;
        v12 = &unk_277BCCBCC;
        v13 = &unk_277BCCB5C;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v10 = 0;
    v11 = &unk_277BCCAE8;
    v12 = &unk_277BCCA78;
    v13 = &unk_277BCCA08;
  }

  else
  {
    if (v6 != 6)
    {
      if (v6 == 9)
      {
        v10 = 0;
        v11 = &unk_277BCCD90;
        v12 = &unk_277BCCD20;
        v13 = &unk_277BCCCB0;
        goto LABEL_11;
      }

LABEL_8:
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 1;
      goto LABEL_11;
    }

    v10 = 0;
    v11 = &unk_277BCCEE4;
    v12 = &unk_277BCCE74;
    v13 = &unk_277BCCE04;
  }

LABEL_11:
  result = sub_2779D4488(v5[34027], v7[1] != 0, &v42, 28, 3);
  v15 = *v7;
  if (*v7)
  {
    if ((v5[30702] & 0xFD) != 0)
    {
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      *&v28[4] = 0u;
      v27 = v47;
      *v28 = v48;
      v25 = v45;
      v26 = v46;
      *v22 = 0u;
      *&v22[12] = v42;
      v23 = v43;
      memset(v21, 0, sizeof(v21));
      LODWORD(v21[0]) = 3;
      v24 = v44;
      (*(v7 + 4))(*(v7 + 2), v21);
      memset(v19, 0, 512);
      result = (*(v7 + 5))(*(v7 + 2), v19);
      v15 = result == 0;
      if (!result)
      {
        *(v2 + 280) = v20;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  if (((v10 | v15) & 1) == 0)
  {
    v16 = 0;
    v17 = 0.0;
    do
    {
      v18 = vdivq_f32(vmulq_f32(*&v11[v16], vsubq_f32(*(&v42 + v16 * 4), *&v13[v16 * 4])), *&v12[v16 * 4]);
      v17 = (((v17 + v18.f32[0]) + v18.f32[1]) + v18.f32[2]) + v18.f32[3];
      v16 += 4;
    }

    while (v16 != 28);
    if ((v17 + v11[28]) >= 0.0)
    {
      *(v2 + 280) = 1;
    }
  }

  return result;
}

float32x2_t sub_2779D4C48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v5 = *(*(a1 + 270312) + 28);
  v54 = *(a2 + 16904);
  v55 = *(a2 + 11072);
  v6 = byte_277C3CAE8[v5] >> 4;
  v56 = byte_277C3CAFE[v5] >> 4;
  v57 = v6;
  if ((0xA002FuLL >> v5))
  {
    v12 = vneg_f32(0x80000000800000);
    v13 = 0;
    v17 = 0.0;
    v15 = 3.4028e38;
    v16 = 0.0;
    v14 = 0.0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0x5001FuLL >> v5;
    if (byte_277C3CAFE[v5] >> 4 <= 1u)
    {
      v11 = 1;
    }

    else
    {
      v11 = byte_277C3CAFE[v5] >> 4;
    }

    v60 = v11;
    v12 = vneg_f32(0x80000000800000);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v13 = 0;
    v14 = 0.0;
    v15 = 3.4028e38;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0;
    v19 = 0;
    v61 = v10;
    v59 = v6;
    do
    {
      if ((v10 & 1) == 0)
      {
        v20 = a4;
        v21 = v60;
        v64 = v9;
        v22 = a3 + 4 * v9;
        do
        {
          v66 = v17;
          v68[0] = 0;
          if (*(a1 + 395120))
          {
            v23 = 7;
          }

          else
          {
            v23 = 1;
          }

          v24 = v15;
          v25 = v13;
          v26 = v12;
          v27 = v19;
          v28 = v18;
          v29 = v16;
          v30 = v14;
          v31 = sub_277A51BBC(a1, a2, v22, v20, 6u, v23, 0, 0, v68, &v67);
          v32 = (((v31 + ((v31 >> 28) & 7)) << 16) >> 19);
          v65 = (((((v31 >> 31) >> 13) + HIWORD(v31)) << 16) >> 19);
          v33.f32[0] = log1pf(v68[0]);
          v34 = v30;
          v35 = v29;
          v36 = v28;
          v37 = v27;
          v38 = v26;
          v39 = v25;
          v15 = v24;
          v17 = v66;
          v40.f32[0] = fabsf(v32);
          v41 = fabsf(v65);
          v14 = v34 + (v32 * v32);
          v16 = v35 + v32;
          if (v41 < v15)
          {
            v15 = v41;
          }

          v40.i32[1] = v33.i32[0];
          if (v41 > v66)
          {
            v17 = v41;
          }

          v33.f32[1] = v65;
          v19 = vmla_f32(v37, v33, v33);
          v18 = vadd_f32(v36, v33);
          v12 = vbsl_s8(vcgt_f32(v38, v40), v40, v38);
          v13 = vbsl_s8(vcgt_f32(v40, v39), v40, v39);
          v20 += 4;
          --v21;
        }

        while (v21);
        v9 = v64;
        LOBYTE(v10) = v61;
        v6 = v59;
      }

      ++v9;
    }

    while (v9 != v6);
  }

  if (v54 >= 0xFF)
  {
    v42 = 255;
  }

  else
  {
    v42 = v54;
  }

  if (v54 >= 0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (v55 == 8)
  {
    v45 = v14;
    v46 = word_277BFDBFA;
    v44 = v57;
  }

  else
  {
    v44 = v57;
    v45 = v14;
    if (v55 == 12)
    {
      v46 = &unk_277BFDFFA;
    }

    else
    {
      if (v55 != 10)
      {
        v47 = -1;
        goto LABEL_36;
      }

      v46 = &unk_277BFDDFA;
    }
  }

  v47 = v46[v43];
LABEL_36:
  v48 = log1pf(vcvts_n_f32_u32((v47 >> (v55 - 8)) * (v47 >> (v55 - 8)), 8uLL));
  *v49.i32 = (v56 * v44);
  v50 = (v45 / *v49.i32) - ((v16 / *v49.i32) * (v16 / *v49.i32));
  *(a5 + 8) = v16 / *v49.i32;
  *(a5 + 12) = v48;
  *(a5 + 16) = v17;
  *(a5 + 20) = v13;
  *(a5 + 28) = v15;
  v51 = vdup_lane_s32(v49, 0);
  v52 = vdiv_f32(v18, v51);
  *a5 = v52;
  result = vmls_f32(vdiv_f32(v19, v51), v52, v52);
  *(a5 + 32) = v12;
  *(a5 + 40) = result;
  *(a5 + 48) = v50;
  return result;
}

uint64_t sub_2779D4F90(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v18[1] = 0;
  sub_2779D28B0(a3, dword_27A71C558, v18);
  v5 = *(a1 + 395553);
  if (v5 == 1)
  {
    LOBYTE(v6) = 0;
    v7 = *v18;
    for (i = 1; i != 4; ++i)
    {
      if (*(v18 + i) > v7)
      {
        v7 = *(v18 + i);
        LOBYTE(v6) = i;
      }
    }

    return (3 * v6 + 6);
  }

  v16 = 0;
  v17 = 0;
  sub_2779C9354(v18, &v16, 4u);
  if (v5 != 3)
  {
    if (v5 == 2)
    {
      v9 = &v17 + 1;
      v6 = 4;
      while (1)
      {
        if (--v6 >= 3)
        {
          v10 = *v9;
        }

        else
        {
          v10 = v9[1] + *v9;
          *v9 = v10;
        }

        if (v10 > 0.2)
        {
          return (3 * v6 + 6);
        }

        --v9;
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_24:
    LOBYTE(v6) = 3;
    return (3 * v6 + 6);
  }

  v11 = sub_277A5D00C(*a1, a2 + 416, *(a2 + 48), *(a2 + 72), *(*(a1 + 270312) + 28), 0, (*(*(a2 + 8376) + 192) >> 3) & 1);
  if (v11 < 0x11)
  {
    goto LABEL_24;
  }

  v12 = dbl_277BB73A0[v11 < 0x80];
  v13 = &v17 + 1;
  v6 = 4;
  while (1)
  {
    if (--v6 >= 3)
    {
      v14 = *v13;
    }

    else
    {
      v14 = v13[1] + *v13;
      *v13 = v14;
    }

    if (v12 < v14)
    {
      break;
    }

    --v13;
    if (!v6)
    {
LABEL_23:
      LOBYTE(v6) = -1;
      return (3 * v6 + 6);
    }
  }

  return (3 * v6 + 6);
}

float32x4_t *sub_2779D516C()
{
  result = MEMORY[0x28223BE20]();
  v65 = *MEMORY[0x277D85DE8];
  if (v3 - 0x7FFFFFFFFFFFFFFFLL < 0x8000000000000002)
  {
    return result;
  }

  v8 = v7;
  if (*(v7 + 280))
  {
    return result;
  }

  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  v15 = result;
  v16 = *(v7 + 48);
  v17 = result[15354].i32[2];
  if (v17 >= result[15354].i32[3])
  {
    v17 = result[15354].i32[3];
  }

  if (*(v7 + 48) > 8u)
  {
    if (v16 == 9)
    {
      v45 = *(v7 + 12);
      v46 = result + 15351;
      v18 = flt_277BB6AF0[v17 > 479];
      v19 = &unk_27A71C728;
    }

    else
    {
      if (v16 != 12)
      {
        return result;
      }

      v45 = *(v7 + 12);
      v46 = result + 15351;
      v18 = -1.2;
      if (v17 > 479)
      {
        v18 = -2.0;
      }

      v19 = &unk_27A71C640;
    }
  }

  else if (v16 == 3)
  {
    v45 = *(v7 + 12);
    v46 = result + 15351;
    v18 = -1.4;
    if (v17 > 479)
    {
      v18 = -1.0;
    }

    v19 = &unk_27A71C8F8;
  }

  else
  {
    if (v16 != 6)
    {
      return result;
    }

    v45 = *(v7 + 12);
    v46 = result + 15351;
    v18 = -2.4;
    if (v17 > 479)
    {
      v18 = -2.0;
    }

    v19 = &unk_27A71C810;
  }

  v43 = v19;
  if (result[24721].i32[2] >= 2)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + -0.3;
  }

  v21 = *(v1 + 16904);
  v22 = *(v1 + 11072);
  if (v21 >= 0xFF)
  {
    v23 = 255;
  }

  else
  {
    v23 = *(v1 + 16904);
  }

  if (v21 < 0)
  {
    v23 = 0;
  }

  v24 = v22 - 8;
  v44 = *(v7 + 16);
  switch(v22)
  {
    case 8:
      v25 = word_277BFDBFA;
      break;
    case 12:
      v25 = &unk_277BFDFFA;
      break;
    case 10:
      v25 = &unk_277BFDDFA;
      break;
    default:
      v26 = -1;
      goto LABEL_36;
  }

  v26 = v25[v23];
LABEL_36:
  memset(&v64[8], 0, 100);
  v27 = log1pf(vcvts_n_f32_s32(v26 >> v24, 2uLL));
  v63.f32[0] = v27;
  v28 = v12;
  LOBYTE(v27) = byte_277C3CAFE[v16];
  v63.i32[1] = log1pf(((v12 / LODWORD(v27)) / LODWORD(v27)) * 0.00097656);
  v29 = 1.0;
  v30 = 1.0;
  if (v11 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v30 = v11 / v28;
  }

  if (v11 - 1 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  v63.i64[1] = __PAIR64__(LODWORD(v30), LODWORD(v31));
  if (v10 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v29 = v10 / v28;
  }

  if (v10 - 1 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  *v64 = v32;
  *&v64[4] = v29;
  v33 = &v64[20];
  for (i = 8; i != 40; i += 8)
  {
    v36 = *v9++;
    v35 = v36;
    v37 = v36 - 1;
    v38 = 1.0;
    if (v36 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v38 = v35 / v28;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = 1.0;
    }

    *(v33 - 3) = v39;
    *(v33 - 2) = v38;
    LODWORD(v47[0]) = 7;
    LODWORD(v49[0]) = 7;
    sub_2779D5784(*(v13 + i), v47, v49);
    v40 = SLODWORD(v47[0]);
    v41 = SLODWORD(v49[0]);
    *(v33 - 1) = SLODWORD(v47[0]);
    *v33 = v41;
    v33 += 4;
  }

  sub_2779D3D18(v15, v14, v13, v45, v44, v16, 0, 7, v40);
  *&v64[72] = log1pf(*(v13 + 76));
  *&v64[76] = log1pf(*(*(v13 + 8) + 76));
  *&v64[80] = log1pf(*(*(v13 + 16) + 76));
  *&v64[84] = log1pf(*(*(v13 + 24) + 76));
  *&v64[88] = log1pf(*(*(v13 + 32) + 76));
  *&v64[92] = log1pf(*(v13 + 84));
  *&v64[96] = log1pf(*(v13 + 92));
  *&v64[100] = log1pf(*(v13 + 100));
  *&v64[104] = log1pf(*(v13 + 108));
  sub_2779D4488(v15[17013].i64[1], v15[40268].i32[3] != 0, &v63, 31, 4);
  if ((v46->i8[0] & 0xFD) != 0 && v15[40268].i32[2] && (v62 = 0u, v61 = 0u, v60 = 0u, v59 = 0u, v58 = 0u, v57 = 0, *v50 = 0u, memset(v49, 0, sizeof(v49)), LODWORD(v49[0]) = 4, v54 = *&v64[48], v55 = *&v64[64], *v56 = *&v64[80], *&v56[12] = *&v64[92], *&v50[12] = v63, v51 = *v64, v52 = *&v64[16], v53 = *&v64[32], (v15[40270].i64[1])(v15[40269].i64[1], v49), memset(v47, 0, 512), result = (v15[40271].i64[0])(v15[40269].i64[1], v47), !result))
  {
    v42 = v48;
  }

  else
  {
    LODWORD(v47[0]) = 0;
    result = sub_2779D28B0(&v63, v43, v47);
    if (*v47 >= v20)
    {
      return result;
    }

    v42 = 1;
  }

  *(v8 + 280) = v42;
  return result;
}

unsigned __int8 *sub_2779D5784(unsigned __int8 *result, int *a2, int *a3)
{
  if (result)
  {
    v5 = *result;
    if (!*result)
    {
      v9 = 0;
      *a2 = 0;
LABEL_9:
      *a3 = v9;
      return result;
    }

    v6 = result[1];
    if (v6 == 255)
    {
      return result;
    }

    if (v6 == 3)
    {
      v7 = 0;
      v8 = result + 8;
      do
      {
        result = sub_2779D5784(*&v8[v7], a2, a3);
        v7 += 8;
      }

      while (v7 != 32);
      return result;
    }

    if ((v6 & 0xFC) == 4)
    {
      v6 = 3;
    }

    if (*result <= 8u)
    {
      if (v5 == 3)
      {
        v10 = 1;
      }

      else
      {
        if (v5 != 6)
        {
          return result;
        }

        v10 = 2;
      }
    }

    else
    {
      switch(v5)
      {
        case 9:
          v10 = 3;
          break;
        case 12:
          v10 = 4;
          break;
        case 15:
          v10 = 5;
          break;
        default:
          return result;
      }
    }

    v11 = *(&unk_277C31428 + 6 * v6 + v10);
    if (v11 != 255)
    {
      v12 = *a2;
      if (*a2 >= byte_277C42228[v11])
      {
        v12 = byte_277C42228[v11];
      }

      *a2 = v12;
      v9 = byte_277C3CFCC[v11];
      if (*a3 < v9)
      {
        v9 = *a3;
      }

      goto LABEL_9;
    }
  }

  return result;
}

void sub_2779D58C8()
{
  v0 = MEMORY[0x28223BE20]();
  v41 = *MEMORY[0x277D85DE8];
  if (v2 <= 999999999)
  {
    v6 = *(v5 + 48);
    if (v6 >= 3)
    {
      v7 = v4;
      v8 = v3;
      v9 = v1;
      v10 = v0;
      if (v2 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v2;
      }

      if (*(v5 + 48) <= 8u)
      {
        v13 = 0.01;
        if (v6 == 3)
        {
          v14 = &unk_27A71C9E0;
        }

        else
        {
          if (v6 != 6)
          {
            return;
          }

          v14 = &unk_27A71CAC8;
        }

        v26 = v14;
        v27 = v5;
      }

      else if (v6 == 9)
      {
        v26 = &unk_27A71CBB0;
        v27 = v5;
        v13 = 0.004;
      }

      else
      {
        if (v6 == 12)
        {
          v27 = v5;
          v12 = &unk_27A71CC98;
        }

        else
        {
          if (v6 != 15)
          {
            return;
          }

          v27 = v5;
          v12 = &unk_27A71CD80;
        }

        v26 = v12;
        v13 = 0.002;
      }

      memset_pattern16(&__b, &unk_277BB7C20, 0x14uLL);
      if (v8 - 1 < 0x3B9AC9FF)
      {
        __b.f32[0] = v8 / v11;
      }

      v15 = 0;
      do
      {
        v16 = *(v7 + 8 * v15++);
        if (v16 - 1 < 0x3B9AC9FF)
        {
          __b.f32[v15] = v16 / v11;
        }
      }

      while (v15 != 4);
      v17 = sub_277A5D00C(*v10, v9 + 416, *(v9 + 48), *(v9 + 72), v6, 0, (*(*(v9 + 8376) + 192) >> 3) & 1);
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      if (v6 <= 8)
      {
        if (v6 == 3)
        {
          v19 = 1u;
        }

        else
        {
          v19 = 2u;
        }
      }

      else if (v6 == 9)
      {
        v19 = 3u;
      }

      else if (v6 == 12)
      {
        v19 = 4u;
      }

      else
      {
        v19 = 5u;
      }

      v20 = *(&unk_277C31428 + v19 + 18);
      v21 = 0;
      v22 = *(v9 + 72);
      v23 = byte_277C3CAFE[v6];
      do
      {
        if (v21)
        {
          v24 = v23 >> 1;
        }

        else
        {
          v24 = 0;
        }

        v28.i32[v21] = sub_277A5D00C(*v10, v9 + 416, *(v9 + 48) + v24 + (v22 * (((v21 >> 1) * v23) >> 1)), v22, v20, 0, (*(*(v9 + 8376) + 192) >> 3) & 1);
        ++v21;
      }

      while (v21 != 4);
      *v25.i32 = v18;
      *&v30[4] = vdivq_f32(vcvtq_f32_s32(v28), vdupq_lane_s32(v25, 0));
      sub_2779D4488(*(v10 + 272216), *(v10 + 644300) != 0, &__b, 9, 5);
      if ((*(v10 + 245616) & 0xFD) != 0 && *(v10 + 644296) && (v40 = 0u, v39 = 0u, v38 = 0u, v34 = 0, memset(v33, 0, sizeof(v33)), LODWORD(v33[0]) = 5, v35 = __b, v36 = *v30, v37 = *&v30[16], (*(v10 + 644328))(*(v10 + 644312), v33), memset(v31, 0, 512), !(*(v10 + 644336))(*(v10 + 644312), v31)))
      {
        *(v27 + 304) = v32;
      }

      else
      {
        DWORD2(v31[0]) = 0;
        *&v31[0] = 0;
        sub_2779D28B0(&__b, v26, v31);
        DWORD2(v33[0]) = 0;
        *&v33[0] = 0;
        sub_2779C9354(v31, v33, 3u);
        if (*(v33 + 1) <= v13)
        {
          *(v27 + 304) = 1;
        }

        if (*(v33 + 2) <= v13)
        {
          *(v27 + 308) = 1;
        }
      }
    }
  }
}

uint64_t sub_2779D5D94()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v177 = *MEMORY[0x277D85DE8];
  v12 = v0 + 644296;
  v13 = (v0 + 270312);
  result = 999999999;
  v15 = *(v1 + 12);
  v16 = *(v1 + 16);
  v17 = *(v1 + 48);
  v18 = v1 + 232;
  if ((*(v11 + 245616) & 0xFD) == 0)
  {
    LOBYTE(v19) = 0;
    goto LABEL_61;
  }

  v19 = *v12;
  if (*v12)
  {
    v133 = v2;
    v20 = 0;
    v174[0] = 0u;
    v173 = 0u;
    v21 = &v139.i64[1];
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    v155 = 0u;
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    v150 = 0u;
    v149 = 0u;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v143 = 0u;
    v117 = v8;
    *(v174 + 1) = v8;
    v22 = __clz(v4) ^ 0x1F;
    if (v4)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 0;
    }

    LODWORD(v143) = 7;
    *(v174 + 2) = v23;
    v24 = &v139;
    v25 = 1;
    v139 = 0uLL;
    v140 = 0uLL;
    do
    {
      v26 = v25;
      v27 = *(v18 + 8 * v20);
      if ((v27 - 1) < 0x3B9AC9FF)
      {
        v24->i32[0] = v27;
      }

      v25 = 0;
      v24 = &v139.i32[1];
      v20 = 1;
    }

    while ((v26 & 1) != 0);
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = v29;
      v31 = *(v1 + 248 + 8 * v28);
      if ((v31 - 1) < 0x3B9AC9FF)
      {
        *v21 = v31;
      }

      v28 = 1;
      v29 = 1;
      v21 = (&v139.i64[1] + 4);
    }

    while ((v30 & 1) == 0);
    v32 = *(v1 + 200);
    v33 = *(v1 + 216);
    v34.i64[0] = -1;
    v34.i64[1] = -1;
    v35 = vaddq_s64(v32, v34);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v35)), *v33.i8).u8[0])
    {
      LODWORD(v140) = *(v1 + 200);
    }

    v36 = vaddq_s64(v33, v34);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v35)), *&v33).i8[2])
    {
      DWORD1(v140) = v32.i32[2];
    }

    if (vuzp1_s16(*&v33, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v36))).i32[1])
    {
      DWORD2(v140) = v33.i32[0];
    }

    v37 = vuzp1_s16(*v33.i8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v36)));
    if (v37.i8[6])
    {
      HIDWORD(v140) = v33.i32[2];
    }

    v38 = 0;
    v39 = 0x7FFFFFFF;
    if (v6 < 0x7FFFFFFF)
    {
      v39 = v6;
    }

    *v37.i32 = v39;
    v40 = vdupq_n_s32(v39);
    v41 = vdupq_lane_s32(v37, 0);
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      *(&v174[v38] + 12) = vbslq_s8(vorrq_s8(vclezq_s32(*(&v139 + v38 * 16)), vcgeq_s32(*(&v139 + v38 * 16), v40)), _Q2, vdivq_f32(vcvtq_f32_u32(*(&v139 + v38 * 16)), v41));
      ++v38;
    }

    while (v38 != 2);
    v176 = 0uLL;
    v47 = 0xFFu;
    v175 = 0uLL;
    if (v17 > 8)
    {
      switch(v17)
      {
        case 9:
          v48 = 3u;
          break;
        case 0xC:
          v48 = 4u;
          break;
        case 0xF:
          v48 = 5u;
          break;
        default:
          goto LABEL_40;
      }
    }

    else
    {
      v48 = v17;
      if (v17)
      {
        if (v17 == 3)
        {
          v48 = 1u;
        }

        else
        {
          if (v17 != 6)
          {
            goto LABEL_40;
          }

          v48 = 2u;
        }
      }
    }

    v47 = *(&unk_277C31428 + v48 + 48);
LABEL_40:
    v123 = v10;
    v49 = 0xFFu;
    if (v17 > 8)
    {
      switch(v17)
      {
        case 9:
          v50 = 3u;
          goto LABEL_52;
        case 0xC:
          v50 = 4u;
          goto LABEL_52;
        case 0xF:
          v50 = 5u;
          goto LABEL_52;
      }
    }

    else
    {
      v50 = v17;
      switch(v17)
      {
        case 0:
LABEL_52:
          v49 = *(&unk_277C31428 + v50 + 54);
          break;
        case 3:
          v50 = 1u;
          goto LABEL_52;
        case 6:
          v50 = 2u;
          goto LABEL_52;
      }
    }

    v118 = v1 + 232;
    v119 = v1;
    v120 = v6;
    v129 = v4;
    v125 = v13;
    v127 = v12;
    if (*(*v13 + 77))
    {
      v51 = 1;
    }

    else
    {
      v51 = 3;
    }

    v52 = v11;
    v121 = v16;
    v122 = v15;
    v131 = v17;
    sub_277A5D0C0(v123, v13[244], v15, v16, v51, v17);
    v53 = 0;
    v54 = 0;
    v55 = *(v123 + 72);
    v56 = *(v123 + 48);
    v135 = v55 * byte_277C3CAE8[v47];
    v57 = byte_277C3CAFE[v49];
    v58 = v56;
    do
    {
      v176.i32[v54] = sub_277A5D00C(*v52, v123 + 416, v58 + v53, v55, v47, 0, (*(*(v123 + 8376) + 192) >> 3) & 1);
      v175.i32[v54++] = sub_277A5D00C(*v52, v123 + 416, v56, v55, v49, 0, (*(*(v123 + 8376) + 192) >> 3) & 1);
      v56 += v57;
      v53 += v135;
    }

    while (v54 != 4);
    v4 = v129;
    *v59.i32 = (v129 + 1);
    v60 = vdupq_lane_s32(v59, 0);
    v61.i64[0] = 0x100000001;
    v61.i64[1] = 0x100000001;
    v62 = vdupq_n_s32(0x3DCCCCCDu);
    v63 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v176, v61)), v60);
    v64 = vbslq_s8(vcgtq_f32(v62, v63), v62, v63);
    __asm { FMOV            V4.4S, #10.0 }

    v66 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v175, v61)), v60);
    v67 = vbslq_s8(vcgtq_f32(v62, v66), v62, v66);
    *(&v174[2] + 12) = vbslq_s8(vcgtq_f32(v64, _Q4), _Q4, v64);
    *(&v174[3] + 12) = vbslq_s8(vcgtq_f32(v67, _Q4), _Q4, v67);
    v12 = v127;
    (*(v127 + 32))(*(v127 + 16), &v143);
    memset(v141, 0, sizeof(v141));
    v139 = 0u;
    v140 = 0u;
    v68 = (*(v12 + 40))(*(v12 + 16), &v139);
    LOBYTE(v19) = v68 == 0;
    v2 = v133;
    if (!v68)
    {
      *v133 = v142;
    }

    LODWORD(v17) = v131;
    v11 = v52;
    v10 = v123;
    v13 = v125;
    v16 = v121;
    v15 = v122;
    v1 = v119;
    v6 = v120;
    result = 999999999;
    v18 = v118;
    v8 = v117;
  }

LABEL_61:
  if (v6 <= 999999999 && (v19 & 1) == 0)
  {
    switch(v17)
    {
      case 6:
        v134 = v2;
        v69 = &unk_27A71D208;
        break;
      case 0xC:
        v134 = v2;
        v69 = &unk_27A71D3D8;
        break;
      case 9:
        v134 = v2;
        v69 = &unk_27A71D2F0;
        break;
      default:
        return result;
    }

    v124 = v69;
    v70 = 0;
    v71 = __clz(v4) ^ 0x1F;
    if (v4)
    {
      v72 = v71 + 1;
    }

    else
    {
      v72 = 0;
    }

    v139.f32[0] = v8;
    v139.f32[1] = v72;
    v144 = 0u;
    v143 = 0u;
    v73 = &v143;
    v74 = 1;
    do
    {
      v75 = v74;
      v76 = *(v18 + 8 * v70);
      if ((v76 - 1) < 0x3B9AC9FF)
      {
        *v73 = v76;
      }

      v74 = 0;
      v73 = (&v143 + 4);
      v70 = 1;
    }

    while ((v75 & 1) != 0);
    v77 = 0;
    for (i = 8; i != 16; i += 4)
    {
      v79 = *(v1 + 248 + 8 * v77);
      if ((v79 - 1) < 0x3B9AC9FF)
      {
        *(&v143 + i) = v79;
      }

      v77 = 1;
    }

    v80 = *(v1 + 200);
    v81 = *(v1 + 216);
    v82.i64[0] = -1;
    v82.i64[1] = -1;
    v83 = vaddq_s64(v80, v82);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v83)), *v81.i8).u8[0])
    {
      LODWORD(v144) = *(v1 + 200);
    }

    v84 = vaddq_s64(v81, v82);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v83)), *&v81).i8[2])
    {
      DWORD1(v144) = v80.i32[2];
    }

    if (vuzp1_s16(*&v81, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v84))).i32[1])
    {
      DWORD2(v144) = v81.i32[0];
    }

    v85 = vuzp1_s16(*v81.i8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v84)));
    if (v85.i8[6])
    {
      HIDWORD(v144) = v81.i32[2];
    }

    v86 = 0;
    *v85.i32 = v6;
    v87 = vdupq_n_s32(v6);
    v88 = vdupq_lane_s32(v85, 0);
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      *(&v139 + v86 + 8) = vbslq_s8(vorrq_s8(vclezq_s32(*(&v143 + v86)), vcgeq_s32(*(&v143 + v86), v87)), _Q2, vdivq_f32(vcvtq_f32_u32(*(&v143 + v86)), v88));
      v86 += 16;
    }

    while (v86 != 32);
    v176 = 0uLL;
    v175 = 0uLL;
    if (v17 > 8)
    {
      if (v17 == 9)
      {
        v90 = 3u;
      }

      else
      {
        v90 = 4u;
      }
    }

    else
    {
      v90 = 2u;
    }

    v91 = *(&unk_277C31428 + v90 + 48);
    v128 = v12;
    v130 = v4;
    if (v17 > 8)
    {
      if (v17 == 9)
      {
        v92 = 3u;
      }

      else
      {
        v92 = 4u;
      }
    }

    else
    {
      v92 = 2u;
    }

    v93 = *(&unk_277C31428 + v92 + 54);
    v126 = v13;
    if (*(*v13 + 77))
    {
      v94 = 1;
    }

    else
    {
      v94 = 3;
    }

    v95 = v11;
    v132 = v17;
    sub_277A5D0C0(v10, v13[244], v15, v16, v94, v17);
    v96 = 0;
    v97 = 0;
    v98 = *(v10 + 72);
    v99 = *(v10 + 48);
    v136 = v98 * byte_277C3CAE8[v91];
    v100 = byte_277C3CAFE[v93];
    v101 = v99;
    do
    {
      v176.i32[v97] = sub_277A5D00C(*v95, v10 + 416, v101 + v96, v98, v91, 0, (*(*(v10 + 8376) + 192) >> 3) & 1);
      v175.i32[v97++] = sub_277A5D00C(*v95, v10 + 416, v99, v98, v93, 0, (*(*(v10 + 8376) + 192) >> 3) & 1);
      v99 += v100;
      v96 += v136;
    }

    while (v97 != 4);
    *v102.i32 = (v130 + 1);
    v103 = vdupq_lane_s32(v102, 0);
    v104.i64[0] = 0x100000001;
    v104.i64[1] = 0x100000001;
    v105 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v176, v104)), v103);
    v106 = vdupq_n_s32(0x3DCCCCCDu);
    v107 = vbslq_s8(vcgtq_f32(v106, v105), v106, v105);
    __asm { FMOV            V4.4S, #10.0 }

    *(v141 + 8) = vbslq_s8(vcgtq_f32(v107, _Q4), _Q4, v107);
    v109 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v175, v104)), v103);
    v110 = vbslq_s8(vcgtq_f32(v106, v109), v106, v109);
    *(&v141[1] + 8) = vbslq_s8(vcgtq_f32(v110, _Q4), _Q4, v110);
    if ((*(v95 + 245616) & 0xFD) != 0)
    {
      sub_2779D4488(v126[238], *(v128 + 4) != 0, &v139, 18, 7);
    }

    v138 = 0uLL;
    result = sub_2779D28B0(&v139, v124, v138.f32);
    v111 = 0;
    v112 = vcvtq_s32_f32(vmulq_f32(v138, vdupq_n_s32(0x42C80000u)));
    v113 = vmaxvq_s32(vmaxq_s32(v112, vdupq_n_s32(0xFFFFFC18)));
    v114 = v113 - 500;
    if (v132 == 6)
    {
      v115 = v113 - 500;
    }

    else
    {
      v115 = v113;
    }

    if (v132 != 9)
    {
      v114 = v115;
    }

    v137 = v112;
    v116 = v113 - 200;
    if (v132 != 12)
    {
      v116 = v114;
    }

    *v134 = 0;
    do
    {
      if (v137.i32[v111] >= v116)
      {
        if (v111)
        {
          *v134 = 1;
        }

        if (v111 >= 2)
        {
          *(v134 + 1) = 1;
        }
      }

      ++v111;
    }

    while (v111 != 4);
  }

  return result;
}