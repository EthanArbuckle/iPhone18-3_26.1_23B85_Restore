uint64_t sub_277B668CC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = 0;
  v28[5] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 40);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 32);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 32);
  return sub_277996B04(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B66A24(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = 0;
  v28[9] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 72);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 64);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 64);
  return sub_277996BAC(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B66B7C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 80);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 64);
  sub_2779725E0(v23 >> 1, a7, 8, 4, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_277996C54(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B66CCC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 144);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 128);
  sub_2779725E0(v23 >> 1, a7, 8, 8, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_277996CE0(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B66E1C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 272);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 256);
  sub_2779725E0(v23 >> 1, a7, 8, 16, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_277996D6C(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B66F6C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[31] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 288);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 288);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 256);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 288);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 288);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 288);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 256);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 256);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 288);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 256);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 8, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_277996DF8(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 256);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 256);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 8, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_277996DF8(v18, 16, a5, a6, a15);
}

uint64_t sub_277B67430(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[63] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 544);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 544);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 512);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 544);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 544);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 544);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 512);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 512);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 544);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 512);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 16, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_277996EA0(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 512);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 512);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 16, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_277996EA0(v18, 16, a5, a6, a15);
}

uint64_t sub_277B678F4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[127] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 1056);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 1056);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 1024);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 1056);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 1056);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 1056);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 1024);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 1024);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 1056);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 1024);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 32, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_277996F48(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 1024);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 1024);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 32, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_277996F48(v18, 16, a5, a6, a15);
}

uint64_t sub_277B67DB8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, int16x8_t a12, int a13, int a14, _DWORD *a15)
{
  v78 = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    v19 = 2 * a2;
    v20 = v77;
    if (a4 == 4)
    {
      v37 = 17;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          *&v20[v38] = vrhaddq_u16(*(v17 + v38), *(v17 + v38 + 2));
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v20 += 64;
        v17 += v19;
        --v37;
      }

      while (v37);
      v40 = v77;
      v41 = v75;
      v42 = 16;
      do
      {
        v43 = 0;
        v44 = -8;
        do
        {
          v24 = *&v40[v43 + 64];
          v25 = vrhaddq_u16(*&v40[v43], v24);
          *&v41[v43] = v25;
          v44 += 8;
          v43 += 16;
        }

        while (v44 < 0x18);
        v40 += 64;
        v41 += 64;
        --v42;
      }

      while (v42);
    }

    else
    {
      if (!a4)
      {
        v21 = 16;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = *(v17 + v22 + 2);
            v25 = vrhaddq_u16(*(v17 + v22), v24);
            *&v20[v22] = v25;
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v20 += 64;
          v17 += v19;
          --v21;
        }

        while (v21);
        goto LABEL_38;
      }

      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v20[v53] = vrhaddq_u16(*(v17 + v53), *(v17 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v20 += 64;
        v17 += v19;
        --v52;
      }

      while (v52);
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      v55 = v77;
      v56 = v75;
      v57 = 16;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          a12 = *&v55[v58 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v55[v58], v25), a12, v24), 3uLL);
          *&v56[v58] = a11;
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x18);
        v55 += 64;
        v56 += 64;
        --v57;
      }

      while (v57);
    }

    goto LABEL_65;
  }

  if (a3)
  {
    v25 = vdupq_n_s16(8 - a3);
    v24 = vdupq_n_s16(a3);
    v26 = 2 * a2;
    v27 = v77;
    if (a4 == 4)
    {
      v60 = 17;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          a12 = *(v17 + v61 + 2);
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v61), v25), a12, v24), 3uLL);
          *&v27[v61] = a11;
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v27 += 64;
        v17 += v26;
        --v60;
      }

      while (v60);
      v63 = 0;
      v64 = 16;
      do
      {
        v65 = -8;
        v66 = v63;
        do
        {
          v24 = *&v77[v66 + 64];
          v25 = vrhaddq_u16(*&v77[v66], v24);
          *&v75[v66] = v25;
          v65 += 8;
          v66 += 16;
        }

        while (v65 < 0x18);
        v63 += 64;
        --v64;
      }

      while (v64);
    }

    else
    {
      if (!a4)
      {
        v28 = 16;
        do
        {
          v29 = 0;
          v30 = -8;
          do
          {
            a12 = *(v17 + v29 + 2);
            a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v29), v25), a12, v24), 3uLL);
            *&v27[v29] = a11;
            v30 += 8;
            v29 += 16;
          }

          while (v30 < 0x18);
          v27 += 64;
          v17 += v26;
          --v28;
        }

        while (v28);
        goto LABEL_38;
      }

      v67 = 17;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v27[v68] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v68), v25), *(v17 + v68 + 2), v24), 3uLL);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x18);
        v27 += 64;
        v17 += v26;
        --v67;
      }

      while (v67);
      v70 = 0;
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      v71 = 16;
      do
      {
        v72 = -8;
        v73 = v70;
        do
        {
          a12 = *&v77[v73 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v77[v73], v25), a12, v24), 3uLL);
          *&v75[v73] = a11;
          v72 += 8;
          v73 += 16;
        }

        while (v72 < 0x18);
        v70 += 64;
        --v71;
      }

      while (v71);
    }

LABEL_65:
    v18 = &v76 >> 1;
    v51 = v75;
    goto LABEL_66;
  }

  if (a4 == 4)
  {
    v31 = 2 * a2;
    v32 = v77;
    v33 = 16;
    v34 = v17 + v31;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v24 = *(v34 + v35);
        v25 = vrhaddq_u16(*(v17 + v35), v24);
        *&v32[v35] = v25;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v32 += 64;
      v34 += v31;
      v17 += v31;
      --v33;
    }

    while (v33);
    goto LABEL_38;
  }

  if (a4)
  {
    v25 = vdupq_n_s16(8 - a4);
    v24 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v17 + v45;
    v47 = v77;
    v48 = 16;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        a12 = *(v46 + v49);
        a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v49), v25), a12, v24), 3uLL);
        *&v47[v49] = a11;
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x18);
      v47 += 64;
      v46 += v45;
      v17 += v45;
      --v48;
    }

    while (v48);
LABEL_38:
    v18 = v75 >> 1;
    v51 = v77;
LABEL_66:
    sub_2779725E0(v18, a7, 32, 16, v51 >> 1, 32, a8, a13, v25, *v24.i64, a11.n128_f64[0], *a12.i8, a14);
    return sub_277996FF0(v18, 32, a5, a6, a15);
  }

  v18 = v77 >> 1;
  sub_2779725E0(v77 >> 1, a7, 32, 16, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], *a12.i8, a14);
  return sub_277996FF0(v18, 32, a5, a6, a15);
}

uint64_t sub_277B682B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 33;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v28 += 64;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 32;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 64];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v48 += 64;
        v49 += 64;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v28 += 64;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v28 += 64;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 32;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x18);
        v63 += 64;
        v64 += 64;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 33;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v35 += 64;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 32;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 64];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x18);
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 32;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x18);
          v35 += 64;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 33;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x18);
        v35 += 64;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 32;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x18);
        v78 += 64;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 32;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v40 += 64;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 32;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x18);
      v55 += 64;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 32, 32, v59 >> 1, 32, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277997094(v26, 32, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 32, 32, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997094(v26, 32, v24, v22, a11);
}

uint64_t sub_277B687EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 65;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v28 += 64;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 64;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 64];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v48 += 64;
        v49 += 64;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v28 += 64;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v28 += 64;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x18);
        v63 += 64;
        v64 += 64;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 65;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v35 += 64;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 64;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 64];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x18);
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 64;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x18);
          v35 += 64;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 65;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x18);
        v35 += 64;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 64;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x18);
        v78 += 64;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 64;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v40 += 64;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 64;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x18);
      v55 += 64;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 32, 64, v59 >> 1, 32, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277997138(v26, 32, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 32, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997138(v26, 32, v24, v22, a11);
}

uint64_t sub_277B68D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 33;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 32;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 32;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 33;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 32;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 32;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 33;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 32;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 32;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 32;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 32, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277997208(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 32, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997208(v26, 64, v24, v22, a11);
}

uint64_t sub_277B6926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 65;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 64;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 65;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 64;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 64;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 65;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 64;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 64;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 64;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 64, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_2779972D8(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_2779972D8(v26, 64, v24, v22, a11);
}

uint64_t sub_277B697AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 129;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 128;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 128;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 129;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 128;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 128;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 129;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 128;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 128;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 128;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 128, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_2779973A8(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 128, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_2779973A8(v26, 64, v24, v22, a11);
}

uint64_t sub_277B69CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 65;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x78);
        v28 += 256;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 64;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 256];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x78);
        v48 += 256;
        v49 += 256;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v28 += 256;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x78);
        v28 += 256;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x78);
        v63 += 256;
        v64 += 256;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 65;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x78);
        v35 += 256;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 64;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 256];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x78);
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 64;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x78);
          v35 += 256;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 65;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x78);
        v35 += 256;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 64;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x78);
        v78 += 256;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 64;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x78);
      v40 += 256;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 64;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x78);
      v55 += 256;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 128, 64, v59 >> 1, 128, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277997478(v26, 128, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 128, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997478(v26, 128, v24, v22, a11);
}

uint64_t sub_277B6A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 129;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x78);
        v28 += 256;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 128;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 256];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x78);
        v48 += 256;
        v49 += 256;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v28 += 256;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x78);
        v28 += 256;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 128;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x78);
        v63 += 256;
        v64 += 256;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 129;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x78);
        v35 += 256;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 128;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 256];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x78);
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 128;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x78);
          v35 += 256;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 129;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x78);
        v35 += 256;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 128;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x78);
        v78 += 256;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 128;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x78);
      v40 += 256;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 128;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x78);
      v55 += 256;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 128, 128, v59 >> 1, 128, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277997548(v26, 128, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 128, 128, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997548(v26, 128, v24, v22, a11);
}

uint64_t sub_277B6A770(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = 0;
  v28[17] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 136);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 128);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 128);
  return sub_277997D04(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B6A8D0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 528);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 512);
  sub_2779725E0(v23 >> 1, a7, 8, 32, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_277997DAC(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B6AA20(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[15] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 160);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 160);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 128);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 160);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 160);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 160);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 128);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 128);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 160);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 128);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 4, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_277997E38(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 128);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 128);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 4, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_277997E38(v18, 16, a5, a6, a15);
}

uint64_t sub_277B6AEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v69[255] = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    if (v14 == 4)
    {
      v53 = 0;
      v54 = (v25 + 18);
      do
      {
        v55 = &v68[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * v12);
      }

      while ((v53 * 16) != 2080);
      v32 = v68[0];
      v56 = v69;
      v57 = 32;
      do
      {
        v58 = &v66[v57];
        v59 = v56[-2];
        v31 = v56[-1];
        v60 = *v56;
        v56 += 2;
        v20.i64[0] = v60.i64[0];
        v19 = vrhaddq_u16(v59, v60);
        v58[-2] = vrhaddq_u16(v32, v31);
        v58[-1] = v19;
        v57 += 32;
        v32 = v31;
      }

      while (v57 != 2080);
    }

    else
    {
      v27 = 0;
      v28 = (v25 + 18);
      v29 = 2 * v12;
      if (!v14)
      {
        do
        {
          v30 = &v68[v27];
          *v30 = vrhaddq_u16(*(v28 - 18), v28[-1]);
          v31 = *v28;
          v32 = vrhaddq_u16(*(v28 - 2), *v28);
          v30[1] = v32;
          v27 += 2;
          v28 = (v28 + v29);
        }

        while ((v27 * 16) != 2048);
        goto LABEL_36;
      }

      do
      {
        v33 = &v68[v27];
        *v33 = vrhaddq_u16(*(v28 - 18), v28[-1]);
        v33[1] = vrhaddq_u16(*(v28 - 2), *v28);
        v27 += 2;
        v28 = (v28 + v29);
      }

      while ((v27 * 16) != 2080);
      v32 = vdupq_n_s16(8 - v14);
      v31 = vdupq_n_s16(v14);
      v19 = v68[0];
      v34 = v69;
      v35 = 32;
      do
      {
        v36 = v34[-2];
        v20 = v34[-1];
        v37 = *v34;
        v34 += 2;
        v38 = &v66[v35];
        v38[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v32), v20, v31), 3uLL);
        v38[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v36, v32), v37, v31), 3uLL);
        v35 += 32;
        v19 = v20;
      }

      while (v35 != 2080);
    }

    goto LABEL_33;
  }

  if (v13)
  {
    v39 = 0;
    v32 = vdupq_n_s16(8 - v13);
    v31 = vdupq_n_s16(v13);
    v40 = (v25 + 18);
    v41 = 2 * v12;
    if (v14 == 4)
    {
      do
      {
        v43 = &v68[v39];
        *v43 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 18), v32), v40[-1], v31), 3uLL);
        v43[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 2), v32), *v40, v31), 3uLL);
        v39 += 2;
        v40 = (v40 + v41);
      }

      while ((v39 * 16) != 2080);
      v44 = 0;
      v32 = v68[0];
      do
      {
        v45 = &v66[v44 * 16];
        v31 = v68[v44 + 2];
        v20 = v68[v44 + 3];
        v19 = vrhaddq_u16(v68[v44 + 1], v20);
        *v45 = vrhaddq_u16(v32, v31);
        v45[1] = v19;
        v44 += 2;
        v32 = v31;
      }

      while ((v44 * 16) != 2048);
    }

    else
    {
      if (!v14)
      {
        do
        {
          v42 = &v68[v39];
          *v42 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 18), v32), v40[-1], v31), 3uLL);
          v20 = *v40;
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 2), v32), *v40, v31), 3uLL);
          v42[1] = v19;
          v39 += 2;
          v40 = (v40 + v41);
        }

        while ((v39 * 16) != 2048);
        goto LABEL_36;
      }

      do
      {
        v46 = &v68[v39];
        *v46 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 18), v32), v40[-1], v31), 3uLL);
        v46[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 2), v32), *v40, v31), 3uLL);
        v39 += 2;
        v40 = (v40 + v41);
      }

      while ((v39 * 16) != 2080);
      v47 = 0;
      v32 = vdupq_n_s16(8 - v14);
      v31 = vdupq_n_s16(v14);
      v19 = v68[0];
      do
      {
        v20 = v68[v47 + 2];
        v48 = &v66[v47 * 16];
        v49 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68[v47 + 1], v32), v68[v47 + 3], v31), 3uLL);
        *v48 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v32), v20, v31), 3uLL);
        v48[1] = v49;
        v47 += 2;
        v19 = v20;
      }

      while ((v47 * 16) != 2048);
    }

LABEL_33:
    v26 = &v67 >> 1;
    v61 = v66;
LABEL_37:
    sub_2779725E0(v26, v15, 16, 64, v61 >> 1, 16, v16, a9, v32, *v31.i64, *v19.i64, *v20.i8, a10);
    return sub_277997EE0(v26, 16, v24, v22, a11);
  }

  if (v14 == 4)
  {
    v50 = 0;
    v32 = *v25;
    v51 = 2 * v12;
    do
    {
      v52 = &v68[v50];
      v31 = *(v25 + 2 * v12);
      *v52 = vrhaddq_u16(v32, v31);
      v19 = *(v25 + v51 + 16);
      v52[1] = vrhaddq_u16(*(v25 + 16), v19);
      v50 += 2;
      v25 += v51;
      v32 = v31;
    }

    while ((v50 * 16) != 2048);
    goto LABEL_36;
  }

  if (v14)
  {
    v62 = 0;
    v32 = vdupq_n_s16(8 - v14);
    v31 = vdupq_n_s16(v14);
    v19 = *v25;
    v63 = 2 * v12;
    do
    {
      v64 = &v68[v62];
      v20 = *(v25 + 2 * v12);
      *v64 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v32), v20, v31), 3uLL);
      v64[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + 16), v32), *(v25 + v63 + 16), v31), 3uLL);
      v62 += 2;
      v25 += v63;
      v19 = v20;
    }

    while ((v62 * 16) != 2048);
LABEL_36:
    v26 = v66 >> 1;
    v61 = v68;
    goto LABEL_37;
  }

  v26 = v68 >> 1;
  sub_2779725E0(v68 >> 1, v15, 16, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997EE0(v26, 16, v24, v22, a11);
}

uint64_t sub_277B6B3F0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, int16x8_t a12, int a13, int a14, _DWORD *a15)
{
  v83 = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    v19 = 2 * a2;
    v20 = v82;
    if (a4 == 4)
    {
      v36 = 9;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v20[v37] = vrhaddq_u16(*(v17 + v37), *(v17 + v37 + 2));
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v20 += 64;
        v17 += v19;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v80;
      v41 = 8;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          v24 = *&v39[v42 + 64];
          v25 = vrhaddq_u16(*&v39[v42], v24);
          *&v40[v42] = v25;
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x18);
        v39 += 64;
        v40 += 64;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v21 = 8;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = *(v17 + v22 + 2);
            v25 = vrhaddq_u16(*(v17 + v22), v24);
            *&v20[v22] = v25;
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v20 += 64;
          v17 += v19;
          --v21;
        }

        while (v21);
        goto LABEL_38;
      }

      v51 = 9;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v20[v52] = vrhaddq_u16(*(v17 + v52), *(v17 + v52 + 2));
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v20 += 64;
        v17 += v19;
        --v51;
      }

      while (v51);
      v54 = 8;
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      v55 = v82;
      v56 = v80;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          a12 = *&v55[v57 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v55[v57], v25), a12, v24), 3uLL);
          *&v56[v57] = a11;
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v55 += 64;
        v56 += 64;
        --v54;
      }

      while (v54);
    }

    goto LABEL_65;
  }

  if (a3)
  {
    v26 = 8;
    if (a4 == 4)
    {
      v59 = vdupq_n_s16(8 - a3);
      v60 = vdupq_n_s16(a3);
      v61 = v82;
      v62 = 9;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          a12 = *(v17 + v63 + 2);
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v63), v59), a12, v60), 3uLL);
          *&v61[v63] = a11;
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v61 += 64;
        v17 += 2 * a2;
        --v62;
      }

      while (v62);
      v65 = 0;
      v66 = 8;
      do
      {
        v67 = -8;
        v68 = v65;
        do
        {
          v24 = *&v82[v68 + 64];
          v25 = vrhaddq_u16(*&v82[v68], v24);
          *&v80[v68] = v25;
          v67 += 8;
          v68 += 16;
        }

        while (v67 < 0x18);
        v65 += 64;
        --v66;
      }

      while (v66);
    }

    else
    {
      if (!a4)
      {
        v25 = vdupq_n_s16(8 - a3);
        v24 = vdupq_n_s16(a3);
        v27 = v82;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            a12 = *(v17 + v28 + 2);
            a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v28), v25), a12, v24), 3uLL);
            *&v27[v28] = a11;
            v29 += 8;
            v28 += 16;
          }

          while (v29 < 0x18);
          v27 += 64;
          v17 += 2 * a2;
          --v26;
        }

        while (v26);
        goto LABEL_38;
      }

      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = v82;
      v72 = 9;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v73), v69), *(v17 + v73 + 2), v70), 3uLL);
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v71 += 64;
        v17 += 2 * a2;
        --v72;
      }

      while (v72);
      v75 = 0;
      v76 = 8;
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      do
      {
        v77 = -8;
        v78 = v75;
        do
        {
          a12 = *&v82[v78 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v82[v78], v25), a12, v24), 3uLL);
          *&v80[v78] = a11;
          v77 += 8;
          v78 += 16;
        }

        while (v77 < 0x18);
        v75 += 64;
        --v76;
      }

      while (v76);
    }

LABEL_65:
    v18 = &v81 >> 1;
    v50 = v80;
    goto LABEL_66;
  }

  if (a4 == 4)
  {
    v30 = 2 * a2;
    v31 = v82;
    v32 = 8;
    v33 = v17 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        v24 = *(v33 + v34);
        v25 = vrhaddq_u16(*(v17 + v34), v24);
        *&v31[v34] = v25;
        v35 += 8;
        v34 += 16;
      }

      while (v35 < 0x18);
      v31 += 64;
      v33 += v30;
      v17 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_38;
  }

  if (a4)
  {
    v44 = 8;
    v25 = vdupq_n_s16(8 - a4);
    v24 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v17 + v45;
    v47 = v82;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        a12 = *(v46 + v48);
        a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v48), v25), a12, v24), 3uLL);
        *&v47[v48] = a11;
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v47 += 64;
      v46 += v45;
      v17 += v45;
      --v44;
    }

    while (v44);
LABEL_38:
    v18 = v80 >> 1;
    v50 = v82;
LABEL_66:
    sub_2779725E0(v18, a7, 32, 8, v50 >> 1, 32, a8, a13, v25, *v24.i64, a11.n128_f64[0], *a12.i8, a14);
    return sub_277997F88(v18, 32, a5, a6, a15);
  }

  v18 = v82 >> 1;
  sub_2779725E0(v82 >> 1, a7, 32, 8, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], *a12.i8, a14);
  return sub_277997F88(v18, 32, a5, a6, a15);
}

uint64_t sub_277B6B900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 17;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 16;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 16;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 17;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 16;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 17;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 16;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 16;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 17;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 16;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 16;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 16;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 16, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_27799802C(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 16, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_27799802C(v26, 64, v24, v22, a11);
}

uint64_t sub_277B6BE3C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v18[5] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 40);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 32);
  return sub_277A6C0C4(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B6BF34(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 72);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 64);
  return sub_277A6C15C(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B6C02C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v18[17] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 136);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 128);
  return sub_277A6C1F4(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B6C12C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 80);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 64);
  return sub_277A6C28C(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B6C224(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 144);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 128);
  return sub_277A6C314(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B6C324(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 272);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 256);
  return sub_277A6C39C(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B6C424(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 528);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 512);
  return sub_277A6C424(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B6C524(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 18);
  do
  {
    v11 = &v22[v7];
    v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    *v11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 18), v8), v10[-1], v9), 3uLL);
    v11[1] = v12;
    v7 += 2;
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 160);
  v13 = 0;
  v14 = vdupq_n_s16(8 - a4);
  v15 = vdupq_n_s16(a4);
  v16 = v22[0];
  do
  {
    v17 = v22[v13 + 2];
    v18 = &v21[v13 * 16];
    v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22[v13 + 1], v14), v22[v13 + 3], v15), 3uLL);
    *v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v17, v15), 3uLL);
    v18[1] = v19;
    v13 += 2;
    v16 = v17;
  }

  while ((v13 * 16) != 128);
  return sub_277A6C4AC(v21 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B6C64C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 18);
  do
  {
    v11 = &v22[v7];
    v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    *v11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 18), v8), v10[-1], v9), 3uLL);
    v11[1] = v12;
    v7 += 2;
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 288);
  v13 = 0;
  v14 = vdupq_n_s16(8 - a4);
  v15 = vdupq_n_s16(a4);
  v16 = v22[0];
  do
  {
    v17 = v22[v13 + 2];
    v18 = &v21[v13 * 16];
    v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22[v13 + 1], v14), v22[v13 + 3], v15), 3uLL);
    *v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v17, v15), 3uLL);
    v18[1] = v19;
    v13 += 2;
    v16 = v17;
  }

  while ((v13 * 16) != 256);
  return sub_277A6C56C(v21 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B6C774(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v72[63] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * a2);
      }

      while ((v52 * 16) != 544);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 544);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * a2;
      if (!a4)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 544);
      v14 = vdupq_n_s16(8 - a4);
      v15 = vdupq_n_s16(a4);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 544);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v25 = vdupq_n_s16(a3);
    v26 = (v7 + 18);
    v27 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 544);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 544);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 544);
      v38 = vdupq_n_s16(8 - a4);
      v39 = vdupq_n_s16(a4);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 544);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6C62C(v62 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * a2;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * a2);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 512);
    goto LABEL_38;
  }

  if (a4)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = *v7;
    v67 = 2 * a2;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * a2);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 512);
LABEL_38:
    v62 = v71;
    return sub_277A6C62C(v62 >> 1, 16, a5, a6, a7);
  }

  return sub_277A6C62C(a1, a2, a5, a6, a7);
}

uint64_t sub_277B6CBFC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v72[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * a2);
      }

      while ((v52 * 16) != 1056);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 1056);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * a2;
      if (!a4)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 1056);
      v14 = vdupq_n_s16(8 - a4);
      v15 = vdupq_n_s16(a4);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 1056);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v25 = vdupq_n_s16(a3);
    v26 = (v7 + 18);
    v27 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 1056);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 1056);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 1056);
      v38 = vdupq_n_s16(8 - a4);
      v39 = vdupq_n_s16(a4);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 1056);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6C6EC(v62 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * a2;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * a2);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = *v7;
    v67 = 2 * a2;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * a2);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 1024);
LABEL_38:
    v62 = v71;
    return sub_277A6C6EC(v62 >> 1, 16, a5, a6, a7);
  }

  return sub_277A6C6EC(a1, a2, a5, a6, a7);
}

uint64_t sub_277B6D084()
{
  v0 = MEMORY[0x28223BE20]();
  v72[255] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * v1);
      }

      while ((v52 * 16) != 2080);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 2080);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * v1;
      if (!v3)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 2080);
      v14 = vdupq_n_s16(8 - v3);
      v15 = vdupq_n_s16(v3);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 2080);
    }

    goto LABEL_35;
  }

  if (v2)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - v2);
    v25 = vdupq_n_s16(v2);
    v26 = (v7 + 18);
    v27 = 2 * v1;
    if (v3 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 2080);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 2080);
    }

    else
    {
      if (!v3)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 2080);
      v38 = vdupq_n_s16(8 - v3);
      v39 = vdupq_n_s16(v3);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 2080);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6C7AC(v62 >> 1, 16, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * v1;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * v1);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 2048);
    goto LABEL_38;
  }

  if (v3)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - v3);
    v65 = vdupq_n_s16(v3);
    v66 = *v7;
    v67 = 2 * v1;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * v1);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 2048);
LABEL_38:
    v62 = v71;
    return sub_277A6C7AC(v62 >> 1, 16, v4, v5, v6);
  }

  return sub_277A6C7AC(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6D52C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v9 = 2 * a2;
    v10 = v78;
    if (a4 == 4)
    {
      v26 = 9;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v10[v27] = vrhaddq_u16(*(v7 + v27), *(v7 + v27 + 2));
          v28 += 8;
          v27 += 16;
        }

        while (v28 < 0x18);
        v10 += 64;
        v7 += v9;
        --v26;
      }

      while (v26);
      v29 = v78;
      v30 = v77;
      v31 = 8;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrhaddq_u16(*&v29[v32], *&v29[v32 + 64]);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x18);
        v29 += 64;
        v30 += 64;
        --v31;
      }

      while (v31);
    }

    else
    {
      if (!a4)
      {
        v11 = 8;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x18);
          v10 += 64;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v43 = 9;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          *&v10[v44] = vrhaddq_u16(*(v7 + v44), *(v7 + v44 + 2));
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v10 += 64;
        v7 += v9;
        --v43;
      }

      while (v43);
      v46 = 8;
      v47 = vdupq_n_s16(8 - a4);
      v48 = vdupq_n_s16(a4);
      v49 = v78;
      v50 = v77;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          *&v50[v51] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v51], v47), *&v49[v51 + 64], v48), 3uLL);
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v49 += 64;
        v50 += 64;
        --v46;
      }

      while (v46);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v14 = 8;
    if (a4 == 4)
    {
      v53 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v55 = v78;
      v56 = 9;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v57), v53), *(v7 + v57 + 2), v54), 3uLL);
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v55 += 64;
        v7 += 2 * a2;
        --v56;
      }

      while (v56);
      v59 = v78;
      v60 = v77;
      v61 = 8;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          *&v60[v62] = vrhaddq_u16(*&v59[v62], *&v59[v62 + 64]);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v59 += 64;
        v60 += 64;
        --v61;
      }

      while (v61);
    }

    else
    {
      if (!a4)
      {
        v15 = vdupq_n_s16(8 - a3);
        v16 = vdupq_n_s16(a3);
        v17 = v78;
        do
        {
          v18 = 0;
          v19 = -8;
          do
          {
            *&v17[v18] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v18), v15), *(v7 + v18 + 2), v16), 3uLL);
            v19 += 8;
            v18 += 16;
          }

          while (v19 < 0x18);
          v17 += 64;
          v7 += 2 * a2;
          --v14;
        }

        while (v14);
        goto LABEL_40;
      }

      v64 = vdupq_n_s16(8 - a3);
      v65 = vdupq_n_s16(a3);
      v66 = v78;
      v67 = 9;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v68), v64), *(v7 + v68 + 2), v65), 3uLL);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x18);
        v66 += 64;
        v7 += 2 * a2;
        --v67;
      }

      while (v67);
      v70 = 8;
      v71 = vdupq_n_s16(8 - a4);
      v72 = vdupq_n_s16(a4);
      v73 = v78;
      v74 = v77;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v74[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v73[v75], v71), *&v73[v75 + 64], v72), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v74 += 64;
        --v70;
      }

      while (v70);
    }

LABEL_67:
    v42 = v77;
    return sub_277A6C86C(v42 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v20 = 2 * a2;
    v21 = v78;
    v22 = 8;
    v23 = v7 + v20;
    do
    {
      v24 = 0;
      v25 = -8;
      do
      {
        *&v21[v24] = vrhaddq_u16(*(v7 + v24), *(v23 + v24));
        v25 += 8;
        v24 += 16;
      }

      while (v25 < 0x18);
      v21 += 64;
      v23 += v20;
      v7 += v20;
      --v22;
    }

    while (v22);
    goto LABEL_40;
  }

  if (a4)
  {
    v34 = 8;
    v35 = vdupq_n_s16(8 - a4);
    v36 = vdupq_n_s16(a4);
    v37 = 2 * a2;
    v38 = v7 + v37;
    v39 = v78;
    do
    {
      v40 = 0;
      v41 = -8;
      do
      {
        *&v39[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v40), v35), *(v38 + v40), v36), 3uLL);
        v41 += 8;
        v40 += 16;
      }

      while (v41 < 0x18);
      v39 += 64;
      v38 += v37;
      v7 += v37;
      --v34;
    }

    while (v34);
LABEL_40:
    v42 = v78;
    return sub_277A6C86C(v42 >> 1, 32, a5, a6, a7);
  }

  return sub_277A6C86C(a1, a2, a5, a6, a7);
}

uint64_t sub_277B6DA00(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v9 = 2 * a2;
    v10 = v73;
    if (a4 == 4)
    {
      v27 = 17;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28), *(v7 + v28 + 2));
          v29 += 8;
          v28 += 16;
        }

        while (v29 < 0x18);
        v10 += 64;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 16;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 64]);
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v30 += 64;
        v31 += 64;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!a4)
      {
        v11 = 16;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x18);
          v10 += 64;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 17;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45), *(v7 + v45 + 2));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v10 += 64;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - a4);
      v48 = vdupq_n_s16(a4);
      v49 = v73;
      v50 = v72;
      v51 = 16;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 64], v48), 3uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v49 += 64;
        v50 += 64;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v14 = vdupq_n_s16(8 - a3);
    v15 = vdupq_n_s16(a3);
    v16 = 2 * a2;
    v17 = v73;
    if (a4 == 4)
    {
      v54 = 17;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55), v14), *(v7 + v55 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x18);
        v17 += 64;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 16;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 64]);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v57 += 64;
        v58 += 64;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!a4)
      {
        v18 = 16;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19), v14), *(v7 + v19 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 16;
          }

          while (v20 < 0x18);
          v17 += 64;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 17;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63), v14), *(v7 + v63 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v17 += 64;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - a4);
      v66 = vdupq_n_s16(a4);
      v67 = v73;
      v68 = v72;
      v69 = 16;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 64], v66), 3uLL);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x18);
        v67 += 64;
        v68 += 64;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6C950(v43 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v21 = 2 * a2;
    v22 = v73;
    v23 = 16;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25), *(v24 + v25));
        v26 += 8;
        v25 += 16;
      }

      while (v26 < 0x18);
      v22 += 64;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (a4)
  {
    v35 = vdupq_n_s16(8 - a4);
    v36 = vdupq_n_s16(a4);
    v37 = 2 * a2;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 16;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41), v35), *(v38 + v41), v36), 3uLL);
        v42 += 8;
        v41 += 16;
      }

      while (v42 < 0x18);
      v39 += 64;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6C950(v43 >> 1, 32, a5, a6, a7);
  }

  return sub_277A6C950(a1, a2, a5, a6, a7);
}

uint64_t sub_277B6DEBC()
{
  v0 = MEMORY[0x28223BE20]();
  v74 = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 33;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28), *(v7 + v28 + 2));
          v29 += 8;
          v28 += 16;
        }

        while (v29 < 0x18);
        v10 += 64;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 64]);
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v30 += 64;
        v31 += 64;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 32;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x18);
          v10 += 64;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 33;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45), *(v7 + v45 + 2));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v10 += 64;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 32;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 64], v48), 3uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v49 += 64;
        v50 += 64;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 33;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55), v14), *(v7 + v55 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x18);
        v17 += 64;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 32;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 64]);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v57 += 64;
        v58 += 64;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 32;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19), v14), *(v7 + v19 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 16;
          }

          while (v20 < 0x18);
          v17 += 64;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 33;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63), v14), *(v7 + v63 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v17 += 64;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 32;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 64], v66), 3uLL);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x18);
        v67 += 64;
        v68 += 64;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CA34(v43 >> 1, 32, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 32;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25), *(v24 + v25));
        v26 += 8;
        v25 += 16;
      }

      while (v26 < 0x18);
      v22 += 64;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 32;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41), v35), *(v38 + v41), v36), 3uLL);
        v42 += 8;
        v41 += 16;
      }

      while (v42 < 0x18);
      v39 += 64;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CA34(v43 >> 1, 32, v4, v5, v6);
  }

  return sub_277A6CA34(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6E398()
{
  v0 = MEMORY[0x28223BE20]();
  v73[520] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 65;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28 * 8), *(v7 + v28 * 8 + 2));
          v29 += 8;
          v28 += 2;
        }

        while (v29 < 0x18);
        v10 += 8;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 64;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 * 8] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 8]);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x18);
        v30 += 8;
        v31 += 64;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 64;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12 * 8), *(v7 + v12 * 8 + 2));
            v13 += 8;
            v12 += 2;
          }

          while (v13 < 0x18);
          v10 += 8;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 65;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45 * 8), *(v7 + v45 * 8 + 2));
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x18);
        v10 += 8;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 8], v48), 3uLL);
          v53 += 8;
          v52 += 2;
        }

        while (v53 < 0x18);
        v49 += 8;
        v50 += 64;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 65;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55 * 8), v14), *(v7 + v55 * 8 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x18);
        v17 += 8;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 64;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 8]);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x18);
        v57 += 8;
        v58 += 64;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 64;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19 * 8), v14), *(v7 + v19 * 8 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 2;
          }

          while (v20 < 0x18);
          v17 += 8;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 65;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63 * 8), v14), *(v7 + v63 * 8 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x18);
        v17 += 8;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 64;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 8], v66), 3uLL);
          v71 += 8;
          v70 += 2;
        }

        while (v71 < 0x18);
        v67 += 8;
        v68 += 64;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CB18(v43 >> 1, 32, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 64;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25 * 8), *(v24 + v25 * 8));
        v26 += 8;
        v25 += 2;
      }

      while (v26 < 0x18);
      v22 += 8;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 64;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41 * 8), v35), *(v38 + v41 * 8), v36), 3uLL);
        v42 += 8;
        v41 += 2;
      }

      while (v42 < 0x18);
      v39 += 8;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CB18(v43 >> 1, 32, v4, v5, v6);
  }

  return sub_277A6CB18(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6E898()
{
  v0 = MEMORY[0x28223BE20]();
  v74 = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 17;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28), *(v7 + v28 + 2));
          v29 += 8;
          v28 += 16;
        }

        while (v29 < 0x38);
        v10 += 128;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 16;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 128]);
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x38);
        v30 += 128;
        v31 += 128;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 16;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x38);
          v10 += 128;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 17;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45), *(v7 + v45 + 2));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v10 += 128;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 16;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 128], v48), 3uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v49 += 128;
        v50 += 128;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 17;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55), v14), *(v7 + v55 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x38);
        v17 += 128;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 16;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 128]);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v57 += 128;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 16;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19), v14), *(v7 + v19 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 16;
          }

          while (v20 < 0x38);
          v17 += 128;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 17;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63), v14), *(v7 + v63 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v17 += 128;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 16;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 128], v66), 3uLL);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x38);
        v67 += 128;
        v68 += 128;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CBFC(v43 >> 1, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 16;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25), *(v24 + v25));
        v26 += 8;
        v25 += 16;
      }

      while (v26 < 0x38);
      v22 += 128;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 16;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41), v35), *(v38 + v41), v36), 3uLL);
        v42 += 8;
        v41 += 16;
      }

      while (v42 < 0x38);
      v39 += 128;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CBFC(v43 >> 1, 64, v4, v5, v6);
  }

  return sub_277A6CBFC(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6ED74()
{
  v0 = MEMORY[0x28223BE20]();
  v73[528] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 33;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28 * 8), *(v7 + v28 * 8 + 2));
          v29 += 8;
          v28 += 2;
        }

        while (v29 < 0x38);
        v10 += 16;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 * 8] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 16]);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x38);
        v30 += 16;
        v31 += 128;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 32;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12 * 8), *(v7 + v12 * 8 + 2));
            v13 += 8;
            v12 += 2;
          }

          while (v13 < 0x38);
          v10 += 16;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 33;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45 * 8), *(v7 + v45 * 8 + 2));
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v10 += 16;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 32;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 16], v48), 3uLL);
          v53 += 8;
          v52 += 2;
        }

        while (v53 < 0x38);
        v49 += 16;
        v50 += 128;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 33;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55 * 8), v14), *(v7 + v55 * 8 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x38);
        v17 += 16;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 32;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 16]);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x38);
        v57 += 16;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 32;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19 * 8), v14), *(v7 + v19 * 8 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 2;
          }

          while (v20 < 0x38);
          v17 += 16;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 33;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63 * 8), v14), *(v7 + v63 * 8 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v17 += 16;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 32;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 16], v66), 3uLL);
          v71 += 8;
          v70 += 2;
        }

        while (v71 < 0x38);
        v67 += 16;
        v68 += 128;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CCE0(v43 >> 1, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 32;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25 * 8), *(v24 + v25 * 8));
        v26 += 8;
        v25 += 2;
      }

      while (v26 < 0x38);
      v22 += 16;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 32;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41 * 8), v35), *(v38 + v41 * 8), v36), 3uLL);
        v42 += 8;
        v41 += 2;
      }

      while (v42 < 0x38);
      v39 += 16;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CCE0(v43 >> 1, 64, v4, v5, v6);
  }

  return sub_277A6CCE0(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6F274()
{
  v0 = MEMORY[0x28223BE20]();
  v73[1040] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 65;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28 * 8), *(v7 + v28 * 8 + 2));
          v29 += 8;
          v28 += 2;
        }

        while (v29 < 0x38);
        v10 += 16;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 64;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 * 8] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 16]);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x38);
        v30 += 16;
        v31 += 128;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 64;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12 * 8), *(v7 + v12 * 8 + 2));
            v13 += 8;
            v12 += 2;
          }

          while (v13 < 0x38);
          v10 += 16;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 65;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45 * 8), *(v7 + v45 * 8 + 2));
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v10 += 16;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 16], v48), 3uLL);
          v53 += 8;
          v52 += 2;
        }

        while (v53 < 0x38);
        v49 += 16;
        v50 += 128;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 65;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55 * 8), v14), *(v7 + v55 * 8 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x38);
        v17 += 16;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 64;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 16]);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x38);
        v57 += 16;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 64;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19 * 8), v14), *(v7 + v19 * 8 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 2;
          }

          while (v20 < 0x38);
          v17 += 16;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 65;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63 * 8), v14), *(v7 + v63 * 8 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v17 += 16;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 64;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 16], v66), 3uLL);
          v71 += 8;
          v70 += 2;
        }

        while (v71 < 0x38);
        v67 += 16;
        v68 += 128;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CDC4(v43 >> 1, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 64;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25 * 8), *(v24 + v25 * 8));
        v26 += 8;
        v25 += 2;
      }

      while (v26 < 0x38);
      v22 += 16;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 64;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41 * 8), v35), *(v38 + v41 * 8), v36), 3uLL);
        v42 += 8;
        v41 += 2;
      }

      while (v42 < 0x38);
      v39 += 16;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CDC4(v43 >> 1, 64, v4, v5, v6);
  }

  return sub_277A6CDC4(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6F774()
{
  v0 = MEMORY[0x28223BE20]();
  v73[2064] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 129;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28 * 8), *(v7 + v28 * 8 + 2));
          v29 += 8;
          v28 += 2;
        }

        while (v29 < 0x38);
        v10 += 16;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 128;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 * 8] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 16]);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x38);
        v30 += 16;
        v31 += 128;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 128;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12 * 8), *(v7 + v12 * 8 + 2));
            v13 += 8;
            v12 += 2;
          }

          while (v13 < 0x38);
          v10 += 16;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 129;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45 * 8), *(v7 + v45 * 8 + 2));
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v10 += 16;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 128;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 16], v48), 3uLL);
          v53 += 8;
          v52 += 2;
        }

        while (v53 < 0x38);
        v49 += 16;
        v50 += 128;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 129;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55 * 8), v14), *(v7 + v55 * 8 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x38);
        v17 += 16;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 128;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 16]);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x38);
        v57 += 16;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 128;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19 * 8), v14), *(v7 + v19 * 8 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 2;
          }

          while (v20 < 0x38);
          v17 += 16;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 129;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63 * 8), v14), *(v7 + v63 * 8 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v17 += 16;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 128;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 16], v66), 3uLL);
          v71 += 8;
          v70 += 2;
        }

        while (v71 < 0x38);
        v67 += 16;
        v68 += 128;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CEA8(v43 >> 1, 64, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 128;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25 * 8), *(v24 + v25 * 8));
        v26 += 8;
        v25 += 2;
      }

      while (v26 < 0x38);
      v22 += 16;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 128;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41 * 8), v35), *(v38 + v41 * 8), v36), 3uLL);
        v42 += 8;
        v41 += 2;
      }

      while (v42 < 0x38);
      v39 += 16;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CEA8(v43 >> 1, 64, v4, v5, v6);
  }

  return sub_277A6CEA8(v0, v1, v4, v5, v6);
}

uint64_t sub_277B6FC74()
{
  v0 = MEMORY[0x28223BE20]();
  v73[2080] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 65;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28 * 8), *(v7 + v28 * 8 + 2));
          v29 += 8;
          v28 += 2;
        }

        while (v29 < 0x78);
        v10 += 32;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 64;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 * 8] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 32]);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x78);
        v30 += 32;
        v31 += 256;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 64;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12 * 8), *(v7 + v12 * 8 + 2));
            v13 += 8;
            v12 += 2;
          }

          while (v13 < 0x78);
          v10 += 32;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 65;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45 * 8), *(v7 + v45 * 8 + 2));
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v10 += 32;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 32], v48), 3uLL);
          v53 += 8;
          v52 += 2;
        }

        while (v53 < 0x78);
        v49 += 32;
        v50 += 256;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 65;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55 * 8), v14), *(v7 + v55 * 8 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x78);
        v17 += 32;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 64;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 32]);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x78);
        v57 += 32;
        v58 += 256;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 64;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19 * 8), v14), *(v7 + v19 * 8 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 2;
          }

          while (v20 < 0x78);
          v17 += 32;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 65;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63 * 8), v14), *(v7 + v63 * 8 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x78);
        v17 += 32;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 64;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 32], v66), 3uLL);
          v71 += 8;
          v70 += 2;
        }

        while (v71 < 0x78);
        v67 += 32;
        v68 += 256;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6CF8C(v43 >> 1, 128, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 64;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25 * 8), *(v24 + v25 * 8));
        v26 += 8;
        v25 += 2;
      }

      while (v26 < 0x78);
      v22 += 32;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 64;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41 * 8), v35), *(v38 + v41 * 8), v36), 3uLL);
        v42 += 8;
        v41 += 2;
      }

      while (v42 < 0x78);
      v39 += 32;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6CF8C(v43 >> 1, 128, v4, v5, v6);
  }

  return sub_277A6CF8C(v0, v1, v4, v5, v6);
}

uint64_t sub_277B70174()
{
  v0 = MEMORY[0x28223BE20]();
  v73[4128] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v9 = 2 * v1;
    v10 = v73;
    if (v3 == 4)
    {
      v27 = 129;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28 * 8), *(v7 + v28 * 8 + 2));
          v29 += 8;
          v28 += 2;
        }

        while (v29 < 0x78);
        v10 += 32;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 128;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 * 8] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 32]);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x78);
        v30 += 32;
        v31 += 256;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!v3)
      {
        v11 = 128;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12 * 8), *(v7 + v12 * 8 + 2));
            v13 += 8;
            v12 += 2;
          }

          while (v13 < 0x78);
          v10 += 32;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 129;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45 * 8), *(v7 + v45 * 8 + 2));
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v10 += 32;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - v3);
      v48 = vdupq_n_s16(v3);
      v49 = v73;
      v50 = v72;
      v51 = 128;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 32], v48), 3uLL);
          v53 += 8;
          v52 += 2;
        }

        while (v53 < 0x78);
        v49 += 32;
        v50 += 256;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (v2)
  {
    v14 = vdupq_n_s16(8 - v2);
    v15 = vdupq_n_s16(v2);
    v16 = 2 * v1;
    v17 = v73;
    if (v3 == 4)
    {
      v54 = 129;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55 * 8), v14), *(v7 + v55 * 8 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x78);
        v17 += 32;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 128;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 32]);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x78);
        v57 += 32;
        v58 += 256;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!v3)
      {
        v18 = 128;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19 * 8), v14), *(v7 + v19 * 8 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 2;
          }

          while (v20 < 0x78);
          v17 += 32;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 129;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63 * 8), v14), *(v7 + v63 * 8 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x78);
        v17 += 32;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - v3);
      v66 = vdupq_n_s16(v3);
      v67 = v73;
      v68 = v72;
      v69 = 128;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 32], v66), 3uLL);
          v71 += 8;
          v70 += 2;
        }

        while (v71 < 0x78);
        v67 += 32;
        v68 += 256;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6D070(v43 >> 1, 128, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v21 = 2 * v1;
    v22 = v73;
    v23 = 128;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25 * 8), *(v24 + v25 * 8));
        v26 += 8;
        v25 += 2;
      }

      while (v26 < 0x78);
      v22 += 32;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (v3)
  {
    v35 = vdupq_n_s16(8 - v3);
    v36 = vdupq_n_s16(v3);
    v37 = 2 * v1;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 128;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41 * 8), v35), *(v38 + v41 * 8), v36), 3uLL);
        v42 += 8;
        v41 += 2;
      }

      while (v42 < 0x78);
      v39 += 32;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6D070(v43 >> 1, 128, v4, v5, v6);
  }

  return sub_277A6D070(v0, v1, v4, v5, v6);
}

uint64_t sub_277B70678(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v18[5] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 40);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 32);
  return sub_277A6D154(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B70770(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 72);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 64);
  return sub_277A6D200(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B70868(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v18[17] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 136);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 128);
  return sub_277A6D2AC(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B70968(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 80);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 64);
  return sub_277A6D358(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B70A60(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 144);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 128);
  return sub_277A6D3F4(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B70B60(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 272);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 256);
  return sub_277A6D490(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B70C60(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 528);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 512);
  return sub_277A6D52C(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B70D60(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 18);
  do
  {
    v11 = &v22[v7];
    v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    *v11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 18), v8), v10[-1], v9), 3uLL);
    v11[1] = v12;
    v7 += 2;
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 160);
  v13 = 0;
  v14 = vdupq_n_s16(8 - a4);
  v15 = vdupq_n_s16(a4);
  v16 = v22[0];
  do
  {
    v17 = v22[v13 + 2];
    v18 = &v21[v13 * 16];
    v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22[v13 + 1], v14), v22[v13 + 3], v15), 3uLL);
    *v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v17, v15), 3uLL);
    v18[1] = v19;
    v13 += 2;
    v16 = v17;
  }

  while ((v13 * 16) != 128);
  return sub_277A6D5C8(v21 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B70E88(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 18);
  do
  {
    v11 = &v22[v7];
    v12 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    *v11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 18), v8), v10[-1], v9), 3uLL);
    v11[1] = v12;
    v7 += 2;
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 288);
  v13 = 0;
  v14 = vdupq_n_s16(8 - a4);
  v15 = vdupq_n_s16(a4);
  v16 = v22[0];
  do
  {
    v17 = v22[v13 + 2];
    v18 = &v21[v13 * 16];
    v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v22[v13 + 1], v14), v22[v13 + 3], v15), 3uLL);
    *v18 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v17, v15), 3uLL);
    v18[1] = v19;
    v13 += 2;
    v16 = v17;
  }

  while ((v13 * 16) != 256);
  return sub_277A6D69C(v21 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B70FB0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v72[63] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * a2);
      }

      while ((v52 * 16) != 544);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 544);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * a2;
      if (!a4)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 544);
      v14 = vdupq_n_s16(8 - a4);
      v15 = vdupq_n_s16(a4);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 544);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v25 = vdupq_n_s16(a3);
    v26 = (v7 + 18);
    v27 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 544);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 544);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 544);
      v38 = vdupq_n_s16(8 - a4);
      v39 = vdupq_n_s16(a4);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 544);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6D770(v62 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * a2;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * a2);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 512);
    goto LABEL_38;
  }

  if (a4)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = *v7;
    v67 = 2 * a2;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * a2);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 512);
LABEL_38:
    v62 = v71;
    return sub_277A6D770(v62 >> 1, 16, a5, a6, a7);
  }

  return sub_277A6D770(a1, a2, a5, a6, a7);
}

uint64_t sub_277B71438(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v72[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * a2);
      }

      while ((v52 * 16) != 1056);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 1056);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * a2;
      if (!a4)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 1056);
      v14 = vdupq_n_s16(8 - a4);
      v15 = vdupq_n_s16(a4);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 1056);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v25 = vdupq_n_s16(a3);
    v26 = (v7 + 18);
    v27 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 1056);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 1056);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 1056);
      v38 = vdupq_n_s16(8 - a4);
      v39 = vdupq_n_s16(a4);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 1056);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6D844(v62 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * a2;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * a2);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = *v7;
    v67 = 2 * a2;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * a2);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 1024);
LABEL_38:
    v62 = v71;
    return sub_277A6D844(v62 >> 1, 16, a5, a6, a7);
  }

  return sub_277A6D844(a1, a2, a5, a6, a7);
}

uint64_t sub_277B718C0()
{
  v0 = MEMORY[0x28223BE20]();
  v72[255] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * v1);
      }

      while ((v52 * 16) != 2080);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 2080);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * v1;
      if (!v3)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 2080);
      v14 = vdupq_n_s16(8 - v3);
      v15 = vdupq_n_s16(v3);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 2080);
    }

    goto LABEL_35;
  }

  if (v2)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - v2);
    v25 = vdupq_n_s16(v2);
    v26 = (v7 + 18);
    v27 = 2 * v1;
    if (v3 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 2080);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 2080);
    }

    else
    {
      if (!v3)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 2080);
      v38 = vdupq_n_s16(8 - v3);
      v39 = vdupq_n_s16(v3);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 2080);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6D918(v62 >> 1, 16, v4, v5, v6);
  }

  if (v3 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * v1;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * v1);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 2048);
    goto LABEL_38;
  }

  if (v3)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - v3);
    v65 = vdupq_n_s16(v3);
    v66 = *v7;
    v67 = 2 * v1;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * v1);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 2048);
LABEL_38:
    v62 = v71;
    return sub_277A6D918(v62 >> 1, 16, v4, v5, v6);
  }

  return sub_277A6D918(v0, v1, v4, v5, v6);
}

uint64_t sub_277B71D68(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v9 = 2 * a2;
    v10 = v78;
    if (a4 == 4)
    {
      v26 = 9;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v10[v27] = vrhaddq_u16(*(v7 + v27), *(v7 + v27 + 2));
          v28 += 8;
          v27 += 16;
        }

        while (v28 < 0x18);
        v10 += 64;
        v7 += v9;
        --v26;
      }

      while (v26);
      v29 = v78;
      v30 = v77;
      v31 = 8;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrhaddq_u16(*&v29[v32], *&v29[v32 + 64]);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x18);
        v29 += 64;
        v30 += 64;
        --v31;
      }

      while (v31);
    }

    else
    {
      if (!a4)
      {
        v11 = 8;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x18);
          v10 += 64;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v43 = 9;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          *&v10[v44] = vrhaddq_u16(*(v7 + v44), *(v7 + v44 + 2));
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v10 += 64;
        v7 += v9;
        --v43;
      }

      while (v43);
      v46 = 8;
      v47 = vdupq_n_s16(8 - a4);
      v48 = vdupq_n_s16(a4);
      v49 = v78;
      v50 = v77;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          *&v50[v51] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v51], v47), *&v49[v51 + 64], v48), 3uLL);
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v49 += 64;
        v50 += 64;
        --v46;
      }

      while (v46);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v14 = 8;
    if (a4 == 4)
    {
      v53 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v55 = v78;
      v56 = 9;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v57), v53), *(v7 + v57 + 2), v54), 3uLL);
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v55 += 64;
        v7 += 2 * a2;
        --v56;
      }

      while (v56);
      v59 = v78;
      v60 = v77;
      v61 = 8;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          *&v60[v62] = vrhaddq_u16(*&v59[v62], *&v59[v62 + 64]);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v59 += 64;
        v60 += 64;
        --v61;
      }

      while (v61);
    }

    else
    {
      if (!a4)
      {
        v15 = vdupq_n_s16(8 - a3);
        v16 = vdupq_n_s16(a3);
        v17 = v78;
        do
        {
          v18 = 0;
          v19 = -8;
          do
          {
            *&v17[v18] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v18), v15), *(v7 + v18 + 2), v16), 3uLL);
            v19 += 8;
            v18 += 16;
          }

          while (v19 < 0x18);
          v17 += 64;
          v7 += 2 * a2;
          --v14;
        }

        while (v14);
        goto LABEL_40;
      }

      v64 = vdupq_n_s16(8 - a3);
      v65 = vdupq_n_s16(a3);
      v66 = v78;
      v67 = 9;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v68), v64), *(v7 + v68 + 2), v65), 3uLL);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x18);
        v66 += 64;
        v7 += 2 * a2;
        --v67;
      }

      while (v67);
      v70 = 8;
      v71 = vdupq_n_s16(8 - a4);
      v72 = vdupq_n_s16(a4);
      v73 = v78;
      v74 = v77;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v74[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v73[v75], v71), *&v73[v75 + 64], v72), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v74 += 64;
        --v70;
      }

      while (v70);
    }

LABEL_67:
    v42 = v77;
    return sub_277A6D9EC(v42 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v20 = 2 * a2;
    v21 = v78;
    v22 = 8;
    v23 = v7 + v20;
    do
    {
      v24 = 0;
      v25 = -8;
      do
      {
        *&v21[v24] = vrhaddq_u16(*(v7 + v24), *(v23 + v24));
        v25 += 8;
        v24 += 16;
      }

      while (v25 < 0x18);
      v21 += 64;
      v23 += v20;
      v7 += v20;
      --v22;
    }

    while (v22);
    goto LABEL_40;
  }

  if (a4)
  {
    v34 = 8;
    v35 = vdupq_n_s16(8 - a4);
    v36 = vdupq_n_s16(a4);
    v37 = 2 * a2;
    v38 = v7 + v37;
    v39 = v78;
    do
    {
      v40 = 0;
      v41 = -8;
      do
      {
        *&v39[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v40), v35), *(v38 + v40), v36), 3uLL);
        v41 += 8;
        v40 += 16;
      }

      while (v41 < 0x18);
      v39 += 64;
      v38 += v37;
      v7 += v37;
      --v34;
    }

    while (v34);
LABEL_40:
    v42 = v78;
    return sub_277A6D9EC(v42 >> 1, 32, a5, a6, a7);
  }

  return sub_277A6D9EC(a1, a2, a5, a6, a7);
}