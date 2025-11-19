int32x4_t highbd_fadst16_row_rect_many_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = 16 * a5;
  v11 = 4 * a6;
  v41 = vdupq_n_s32(0x16A1u);
  do
  {
    highbd_fadst16_x4_neon(a1, v42, a3);
    result = vrshrq_n_s32(vmulq_s32(v42[0], v41), 0xCuLL);
    v42[0] = result;
    v13 = vrshrq_n_s32(vmulq_s32(v42[1], v41), 0xCuLL);
    v14 = vrshrq_n_s32(vmulq_s32(v42[2], v41), 0xCuLL);
    v15 = vrshrq_n_s32(vmulq_s32(v42[3], v41), 0xCuLL);
    v16 = vrshrq_n_s32(vmulq_s32(v42[4], v41), 0xCuLL);
    v17 = vrshrq_n_s32(vmulq_s32(v42[5], v41), 0xCuLL);
    v18 = vrshrq_n_s32(vmulq_s32(v42[6], v41), 0xCuLL);
    v19 = vrshrq_n_s32(vmulq_s32(v42[7], v41), 0xCuLL);
    v20 = vrshrq_n_s32(vmulq_s32(v42[8], v41), 0xCuLL);
    v21 = vrshrq_n_s32(vmulq_s32(v42[9], v41), 0xCuLL);
    v22 = vrshrq_n_s32(vmulq_s32(v42[10], v41), 0xCuLL);
    v23 = vrshrq_n_s32(vmulq_s32(v42[11], v41), 0xCuLL);
    v24 = vrshrq_n_s32(vmulq_s32(v42[12], v41), 0xCuLL);
    v25 = vrshrq_n_s32(vmulq_s32(v42[13], v41), 0xCuLL);
    v26 = vrshrq_n_s32(vmulq_s32(v42[14], v41), 0xCuLL);
    v27 = vrshrq_n_s32(vmulq_s32(v42[15], v41), 0xCuLL);
    *a2 = result;
    *(a2 + v11) = v13;
    v28 = (a2 + v11 + v11);
    *v28 = v14;
    v29 = (v28 + v11);
    *v29 = v15;
    v30 = (v29 + v11);
    *v30 = v16;
    v31 = (v30 + v11);
    *v31 = v17;
    v32 = (v31 + v11);
    *v32 = v18;
    v33 = (v32 + v11);
    *v33 = v19;
    v34 = (v33 + v11);
    *v34 = v20;
    v35 = (v34 + v11);
    *v35 = v21;
    v36 = (v35 + v11);
    *v36 = v22;
    v37 = (v36 + v11);
    *v37 = v23;
    v38 = (v37 + v11);
    *v38 = v24;
    v39 = (v38 + v11);
    *v39 = v25;
    v40 = (v39 + v11);
    ++a2;
    a1 = (a1 + v10);
    *v40 = v26;
    *(v40 + v11) = v27;
    --v9;
  }

  while (v9);
  return result;
}

int32x4_t *highbd_fidentity16_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  v7 = result + 8;
  v8 = 4 * a6;
  v9 = vdupq_n_s32(0x2D42u);
  v10 = vdupq_n_s32(0x16A1u);
  do
  {
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v12 = vshrq_n_s32(vmlaq_s32(v11, v7[-8], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v13 = vshrq_n_s32(vmlaq_s32(v11, v7[-7], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v14 = vshrq_n_s32(vmlaq_s32(v11, v7[-6], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v15 = vshrq_n_s32(vmlaq_s32(v11, v7[-5], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v16 = vshrq_n_s32(vmlaq_s32(v11, v7[-4], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v17 = vshrq_n_s32(vmlaq_s32(v11, v7[-3], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v18 = vshrq_n_s32(vmlaq_s32(v11, v7[-2], v9), 0xCuLL);
    v11.i64[0] = 0x80000000800;
    v11.i64[1] = 0x80000000800;
    v19 = vshrq_n_s32(vmlaq_s32(v11, v7[-1], v9), 0xCuLL);
    v20.i64[0] = 0x80000000800;
    v20.i64[1] = 0x80000000800;
    v21 = vshrq_n_s32(vmlaq_s32(v20, *v7, v9), 0xCuLL);
    v20.i64[0] = 0x80000000800;
    v20.i64[1] = 0x80000000800;
    v22 = vshrq_n_s32(vmlaq_s32(v20, v7[1], v9), 0xCuLL);
    v20.i64[0] = 0x80000000800;
    v20.i64[1] = 0x80000000800;
    v23 = vshrq_n_s32(vmlaq_s32(v20, v7[2], v9), 0xCuLL);
    v24.i64[0] = 0x80000000800;
    v24.i64[1] = 0x80000000800;
    v25 = vshrq_n_s32(vmlaq_s32(v24, v7[3], v9), 0xCuLL);
    v26.i64[0] = 0x80000000800;
    v26.i64[1] = 0x80000000800;
    v27 = vshrq_n_s32(vmlaq_s32(v26, v7[4], v9), 0xCuLL);
    v26.i64[0] = 0x80000000800;
    v26.i64[1] = 0x80000000800;
    v28 = vshrq_n_s32(vmlaq_s32(v26, v7[5], v9), 0xCuLL);
    v29.i64[0] = 0x80000000800;
    v29.i64[1] = 0x80000000800;
    v30 = v7[7];
    v31 = vmlaq_s32(v29, v7[6], v9);
    *a2 = vrshrq_n_s32(vmulq_s32(v12, v10), 0xCuLL);
    *(a2 + 4 * a6) = vrshrq_n_s32(vmulq_s32(v13, v10), 0xCuLL);
    v32 = (a2 + v8 + v8);
    *v32 = vrshrq_n_s32(vmulq_s32(v14, v10), 0xCuLL);
    v33 = (v32 + v8);
    *v33 = vrshrq_n_s32(vmulq_s32(v15, v10), 0xCuLL);
    v34 = (v33 + v8);
    *v34 = vrshrq_n_s32(vmulq_s32(v16, v10), 0xCuLL);
    v35 = (v34 + v8);
    *v35 = vrshrq_n_s32(vmulq_s32(v17, v10), 0xCuLL);
    v36 = (v35 + v8);
    *v36 = vrshrq_n_s32(vmulq_s32(v18, v10), 0xCuLL);
    v37 = (v36 + v8);
    *v37 = vrshrq_n_s32(vmulq_s32(v19, v10), 0xCuLL);
    v38 = (v37 + v8);
    *v38 = vrshrq_n_s32(vmulq_s32(v21, v10), 0xCuLL);
    v39 = (v38 + v8);
    *v39 = vrshrq_n_s32(vmulq_s32(v22, v10), 0xCuLL);
    v40 = (v39 + v8);
    v19.i64[0] = 0x80000000800;
    v19.i64[1] = 0x80000000800;
    *v40 = vrshrq_n_s32(vmulq_s32(v23, v10), 0xCuLL);
    v41 = (v40 + v8);
    *v41 = vrshrq_n_s32(vmulq_s32(v25, v10), 0xCuLL);
    v42 = (v41 + v8);
    *v42 = vrshrq_n_s32(vmulq_s32(v27, v10), 0xCuLL);
    v43 = (v42 + v8);
    *v43 = vrshrq_n_s32(vmulq_s32(v28, v10), 0xCuLL);
    v44 = (v43 + v8);
    *v44 = vrshrq_n_s32(vmulq_s32(vshrq_n_s32(v31, 0xCuLL), v10), 0xCuLL);
    *(v44 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vshrq_n_s32(vmlaq_s32(v19, v30, v9), 0xCuLL), v10), 0xCuLL);
    ++a2;
    v7 += a5;
    --v6;
  }

  while (v6);
  return result;
}

void highbd_fdct16_col_many_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6, int a7)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a6;
  }

  v11 = 16 * a7;
  v12 = 2 * a3;
  if (a5)
  {
    do
    {
      v13 = vshll_n_s16(vrev64_s16(*(a1 + v12)), 2uLL);
      v49 = vshll_n_s16(vrev64_s16(*a1), 2uLL);
      v50 = v13;
      v14 = (a1 + v12 + v12);
      v15 = vshll_n_s16(vrev64_s16(*v14), 2uLL);
      v16 = (v14 + v12);
      v17 = vshll_n_s16(vrev64_s16(*v16), 2uLL);
      v51 = v15;
      v52 = v17;
      v18 = (v16 + v12);
      v19 = vshll_n_s16(vrev64_s16(*v18), 2uLL);
      v20 = (v18 + v12);
      v21 = vshll_n_s16(vrev64_s16(*v20), 2uLL);
      v53 = v19;
      v54 = v21;
      v22 = (v20 + v12);
      v55 = vshll_n_s16(vrev64_s16(*v22), 2uLL);
      v23 = (v22 + v12);
      v56 = vshll_n_s16(vrev64_s16(*v23), 2uLL);
      v24 = (v23 + v12);
      v57 = vshll_n_s16(vrev64_s16(*v24), 2uLL);
      v25 = (v24 + v12);
      v58 = vshll_n_s16(vrev64_s16(*v25), 2uLL);
      v26 = (v25 + v12);
      v59 = vshll_n_s16(vrev64_s16(*v26), 2uLL);
      v27 = (v26 + v12);
      v60 = vshll_n_s16(vrev64_s16(*v27), 2uLL);
      v28 = (v27 + v12);
      v61 = vshll_n_s16(vrev64_s16(*v28), 2uLL);
      v29 = (v28 + v12);
      v62 = vshll_n_s16(vrev64_s16(*v29), 2uLL);
      v30 = (v29 + v12);
      v63 = vshll_n_s16(vrev64_s16(*v30), 2uLL);
      v64 = vshll_n_s16(vrev64_s16(*(v30 + v12)), 2uLL);
      highbd_fdct16_x4_neon(&v49, a2, a4);
      a2 = (a2 + v11);
      ++a1;
      --v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v31 = vshll_n_s16(*(a1 + v12), 2uLL);
      v49 = vshll_n_s16(*a1, 2uLL);
      v50 = v31;
      v32 = (a1 + v12 + v12);
      v33 = vshll_n_s16(*v32, 2uLL);
      v34 = (v32 + v12);
      v35 = vshll_n_s16(*v34, 2uLL);
      v51 = v33;
      v52 = v35;
      v36 = (v34 + v12);
      v37 = vshll_n_s16(*v36, 2uLL);
      v38 = (v36 + v12);
      v39 = vshll_n_s16(*v38, 2uLL);
      v53 = v37;
      v54 = v39;
      v40 = (v38 + v12);
      v55 = vshll_n_s16(*v40, 2uLL);
      v41 = (v40 + v12);
      v56 = vshll_n_s16(*v41, 2uLL);
      v42 = (v41 + v12);
      v57 = vshll_n_s16(*v42, 2uLL);
      v43 = (v42 + v12);
      v58 = vshll_n_s16(*v43, 2uLL);
      v44 = (v43 + v12);
      v59 = vshll_n_s16(*v44, 2uLL);
      v45 = (v44 + v12);
      v60 = vshll_n_s16(*v45, 2uLL);
      v46 = (v45 + v12);
      v61 = vshll_n_s16(*v46, 2uLL);
      v47 = (v46 + v12);
      v62 = vshll_n_s16(*v47, 2uLL);
      v48 = (v47 + v12);
      v63 = vshll_n_s16(*v48, 2uLL);
      v64 = vshll_n_s16(*(v48 + v12), 2uLL);
      highbd_fdct16_x4_neon(&v49, a2, a4);
      a2 = (a2 + v11);
      ++a1;
      --v10;
    }

    while (v10);
  }
}

void highbd_fadst16_col_many_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6, int a7)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a6;
  }

  v11 = 16 * a7;
  v12 = 2 * a3;
  if (a5)
  {
    do
    {
      v13 = vshll_n_s16(vrev64_s16(*(a1 + v12)), 2uLL);
      v49 = vshll_n_s16(vrev64_s16(*a1), 2uLL);
      v50 = v13;
      v14 = (a1 + v12 + v12);
      v15 = vshll_n_s16(vrev64_s16(*v14), 2uLL);
      v16 = (v14 + v12);
      v17 = vshll_n_s16(vrev64_s16(*v16), 2uLL);
      v51 = v15;
      v52 = v17;
      v18 = (v16 + v12);
      v19 = vshll_n_s16(vrev64_s16(*v18), 2uLL);
      v20 = (v18 + v12);
      v21 = vshll_n_s16(vrev64_s16(*v20), 2uLL);
      v53 = v19;
      v54 = v21;
      v22 = (v20 + v12);
      v55 = vshll_n_s16(vrev64_s16(*v22), 2uLL);
      v23 = (v22 + v12);
      v56 = vshll_n_s16(vrev64_s16(*v23), 2uLL);
      v24 = (v23 + v12);
      v57 = vshll_n_s16(vrev64_s16(*v24), 2uLL);
      v25 = (v24 + v12);
      v58 = vshll_n_s16(vrev64_s16(*v25), 2uLL);
      v26 = (v25 + v12);
      v59 = vshll_n_s16(vrev64_s16(*v26), 2uLL);
      v27 = (v26 + v12);
      v60 = vshll_n_s16(vrev64_s16(*v27), 2uLL);
      v28 = (v27 + v12);
      v61 = vshll_n_s16(vrev64_s16(*v28), 2uLL);
      v29 = (v28 + v12);
      v62 = vshll_n_s16(vrev64_s16(*v29), 2uLL);
      v30 = (v29 + v12);
      v63 = vshll_n_s16(vrev64_s16(*v30), 2uLL);
      v64 = vshll_n_s16(vrev64_s16(*(v30 + v12)), 2uLL);
      highbd_fadst16_x4_neon(&v49, a2, a4);
      a2 = (a2 + v11);
      ++a1;
      --v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v31 = vshll_n_s16(*(a1 + v12), 2uLL);
      v49 = vshll_n_s16(*a1, 2uLL);
      v50 = v31;
      v32 = (a1 + v12 + v12);
      v33 = vshll_n_s16(*v32, 2uLL);
      v34 = (v32 + v12);
      v35 = vshll_n_s16(*v34, 2uLL);
      v51 = v33;
      v52 = v35;
      v36 = (v34 + v12);
      v37 = vshll_n_s16(*v36, 2uLL);
      v38 = (v36 + v12);
      v39 = vshll_n_s16(*v38, 2uLL);
      v53 = v37;
      v54 = v39;
      v40 = (v38 + v12);
      v55 = vshll_n_s16(*v40, 2uLL);
      v41 = (v40 + v12);
      v56 = vshll_n_s16(*v41, 2uLL);
      v42 = (v41 + v12);
      v57 = vshll_n_s16(*v42, 2uLL);
      v43 = (v42 + v12);
      v58 = vshll_n_s16(*v43, 2uLL);
      v44 = (v43 + v12);
      v59 = vshll_n_s16(*v44, 2uLL);
      v45 = (v44 + v12);
      v60 = vshll_n_s16(*v45, 2uLL);
      v46 = (v45 + v12);
      v61 = vshll_n_s16(*v46, 2uLL);
      v47 = (v46 + v12);
      v62 = vshll_n_s16(*v47, 2uLL);
      v48 = (v47 + v12);
      v63 = vshll_n_s16(*v48, 2uLL);
      v64 = vshll_n_s16(*(v48 + v12), 2uLL);
      highbd_fadst16_x4_neon(&v49, a2, a4);
      a2 = (a2 + v11);
      ++a1;
      --v10;
    }

    while (v10);
  }
}

uint64_t highbd_fidentity16_col_many_neon(uint64_t result, int32x4_t *a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = 0;
  v8 = result + 6 * a3;
  v9 = result + 10 * a3;
  v10 = result + 12 * a3;
  if (a6 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a6;
  }

  v12 = 8 * v11;
  v13 = result + 14 * a3;
  v14 = result + 18 * a3;
  v15 = result + 20 * a3;
  v16 = vdupq_n_s32(0xB508u);
  v17 = result + 22 * a3;
  v18 = result + 2 * a3;
  v19 = result + 24 * a3;
  v20 = result + 4 * a3;
  v21 = result + 26 * a3;
  v22 = result + 8 * a3;
  v23 = result + 28 * a3;
  v24 = result + 30 * a3;
  v25 = result + 16 * a3;
  v26 = a2 + 8;
  v27 = 16 * a7;
  do
  {
    v52 = *(result + v7);
    if (a5)
    {
      v52 = vrev64_s16(v52);
      v28 = vrev64_s16(*(v18 + v7));
      v29 = vrev64_s16(*(v20 + v7));
      v30 = vrev64_s16(*(v8 + v7));
      v31 = vrev64_s16(*(v22 + v7));
      v32 = vrev64_s16(*(v9 + v7));
      v33 = vrev64_s16(*(v10 + v7));
      v34 = vrev64_s16(*(v13 + v7));
      v35 = vrev64_s16(*(v25 + v7));
      v36 = vrev64_s16(*(v14 + v7));
      v37 = vrev64_s16(*(v15 + v7));
      v38 = vrev64_s16(*(v17 + v7));
      v39 = vrev64_s16(*(v19 + v7));
      v40 = vrev64_s16(*(v21 + v7));
      v41 = vrev64_s16(*(v23 + v7));
      v42 = vrev64_s16(*(v24 + v7));
    }

    else
    {
      v28 = *(v18 + v7);
      v29 = *(v20 + v7);
      v30 = *(v8 + v7);
      v31 = *(v22 + v7);
      v32 = *(v9 + v7);
      v33 = *(v10 + v7);
      v34 = *(v13 + v7);
      v35 = *(v25 + v7);
      v36 = *(v14 + v7);
      v37 = *(v15 + v7);
      v38 = *(v17 + v7);
      v39 = *(v19 + v7);
      v40 = *(v21 + v7);
      v41 = *(v23 + v7);
      v42 = *(v24 + v7);
    }

    v43 = vmovl_s16(v52);
    v44 = vmovl_s16(v28);
    v45 = vmovl_s16(v41);
    v46 = vmovl_s16(v42);
    v47.i64[0] = 0x80000000800;
    v47.i64[1] = 0x80000000800;
    v48.i64[0] = 0x80000000800;
    v48.i64[1] = 0x80000000800;
    v26[-8] = vshrq_n_s32(vmlaq_s32(v47, v43, v16), 0xCuLL);
    v26[-7] = vshrq_n_s32(vmlaq_s32(v48, v44, v16), 0xCuLL);
    v47.i64[0] = 0x80000000800;
    v47.i64[1] = 0x80000000800;
    v49 = vshrq_n_s32(vmlaq_s32(v47, vmovl_s16(v29), v16), 0xCuLL);
    v47.i64[0] = 0x80000000800;
    v47.i64[1] = 0x80000000800;
    v26[-6] = v49;
    v26[-5] = vshrq_n_s32(vmlaq_s32(v47, vmovl_s16(v30), v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v50.i64[0] = 0x80000000800;
    v50.i64[1] = 0x80000000800;
    v26[-4] = vshrq_n_s32(vmlaq_s32(v49, vmovl_s16(v31), v16), 0xCuLL);
    v26[-3] = vshrq_n_s32(vmlaq_s32(v50, vmovl_s16(v32), v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v50.i64[0] = 0x80000000800;
    v50.i64[1] = 0x80000000800;
    v26[-2] = vshrq_n_s32(vmlaq_s32(v49, vmovl_s16(v33), v16), 0xCuLL);
    v26[-1] = vshrq_n_s32(vmlaq_s32(v50, vmovl_s16(v34), v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v50.i64[0] = 0x80000000800;
    v50.i64[1] = 0x80000000800;
    *v26 = vshrq_n_s32(vmlaq_s32(v49, vmovl_s16(v35), v16), 0xCuLL);
    v26[1] = vshrq_n_s32(vmlaq_s32(v50, vmovl_s16(v36), v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v50.i64[0] = 0x80000000800;
    v50.i64[1] = 0x80000000800;
    v26[2] = vshrq_n_s32(vmlaq_s32(v49, vmovl_s16(v37), v16), 0xCuLL);
    v26[3] = vshrq_n_s32(vmlaq_s32(v50, vmovl_s16(v38), v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v50.i64[0] = 0x80000000800;
    v50.i64[1] = 0x80000000800;
    v26[4] = vshrq_n_s32(vmlaq_s32(v49, vmovl_s16(v39), v16), 0xCuLL);
    v26[5] = vshrq_n_s32(vmlaq_s32(v50, vmovl_s16(v40), v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v51 = vshrq_n_s32(vmlaq_s32(v49, v45, v16), 0xCuLL);
    v49.i64[0] = 0x80000000800;
    v49.i64[1] = 0x80000000800;
    v26[6] = v51;
    v26[7] = vshrq_n_s32(vmlaq_s32(v49, v46, v16), 0xCuLL);
    v7 += 8;
    v26 = (v26 + v27);
  }

  while (v12 != v7);
  return result;
}

int32x4_t *highbd_fdct8_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = av1_cospi_arr_s32_data[33 * a3 - 298];
  v8 = vdupq_lane_s32(v7, 0);
  v9 = vdupq_lane_s32(v7, 1);
  v10 = vdupq_lane_s32(vneg_s32(v7), 1);
  v11 = av1_cospi_arr_s32_data[33 * a3 - 314];
  v12 = vdupq_lane_s32(v11, 0);
  v13 = vdupq_lane_s32(v11, 1);
  v14 = vdupq_lane_s32(vneg_s32(v11), 0);
  v15 = av1_cospi_arr_s32_data[33 * a3 - 322];
  v16 = vdupq_lane_s32(v15, 0);
  v17 = vdupq_lane_s32(v15, 1);
  v18 = vdupq_lane_s32(vneg_s32(v15), 0);
  v19 = av1_cospi_arr_s32_data[33 * a3 - 306];
  v20 = vdupq_lane_s32(v19, 0);
  v21 = vdupq_lane_s32(v19, 1);
  v22 = vdupq_lane_s32(vneg_s32(v19), 1);
  if (a4 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a4;
  }

  v24 = result + 4;
  v25 = 4 * a6;
  v26 = vdupq_n_s32(0x16A1u);
  do
  {
    v27 = v24[-4];
    v28 = v24[-3];
    v30 = v24[2];
    v29 = v24[3];
    v31 = vaddq_s32(v29, v27);
    v32 = v24[-2];
    v33 = v24[-1];
    v34 = v24[1];
    v35 = vaddq_s32(v30, v28);
    v36 = vaddq_s32(v34, v32);
    v37 = vaddq_s32(*v24, v33);
    v38 = vsubq_s32(v33, *v24);
    v39 = vsubq_s32(v32, v34);
    v40 = vsubq_s32(v28, v30);
    v41 = vsubq_s32(v27, v29);
    v42 = vaddq_s32(v37, v31);
    v43 = vaddq_s32(v36, v35);
    v44 = vsubq_s32(v35, v36);
    v45 = vsubq_s32(v31, v37);
    v46 = vrshlq_s32(vmlaq_s32(vmulq_s32(v40, v9), v39, v8), v6);
    v47 = vrshlq_s32(vmlaq_s32(vmulq_s32(v40, v8), v39, v10), v6);
    v48 = vrshlq_s32(vmlaq_s32(vmulq_s32(v43, v8), v42, v9), v6);
    v49 = vmlaq_s32(vmulq_s32(v43, v10), v42, v8);
    v50 = vrshlq_s32(vmlaq_s32(vmulq_s32(v44, v13), v45, v12), v6);
    v51 = vrshlq_s32(vmlaq_s32(vmulq_s32(v44, v14), v45, v13), v6);
    v52 = vaddq_s32(v47, v38);
    v53 = vsubq_s32(v38, v47);
    v54 = vsubq_s32(v41, v46);
    v55 = vaddq_s32(v46, v41);
    *a2 = vrshrq_n_s32(vmulq_s32(v48, v26), 0xCuLL);
    *(a2 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v55, v16), v52, v17), v6), v26), 0xCuLL);
    v56 = (a2 + v25 + v25);
    *v56 = vrshrq_n_s32(vmulq_s32(v50, v26), 0xCuLL);
    *(v56 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v54, v20), v53, v22), v6), v26), 0xCuLL);
    v57 = (v56 + v25 + v25);
    *v57 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(v49, v6), v26), 0xCuLL);
    v58 = (v57 + v25);
    v59 = (v58 + v25);
    *v58 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v54, v21), v53, v20), v6), v26), 0xCuLL);
    *v59 = vrshrq_n_s32(vmulq_s32(v51, v26), 0xCuLL);
    *(v59 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v55, v17), v52, v18), v6), v26), 0xCuLL);
    ++a2;
    v24 += a5;
    --v23;
  }

  while (v23);
  return result;
}

int32x4_t *highbd_fadst8_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = av1_cospi_arr_s32_data[33 * a3 - 298];
  v8 = vneg_s32(v7);
  v9 = vdupq_lane_s32(v7, 0);
  v10 = vdupq_lane_s32(v8, 0);
  v11 = av1_cospi_arr_s32_data[33 * a3 - 314];
  v12 = vdupq_lane_s32(v11, 0);
  v13 = vdupq_lane_s32(v11, 1);
  v14 = vdupq_lane_s32(vneg_s32(v11), 0);
  v15 = av1_cospi_arr_s32_data[33 * a3 - 326];
  v16 = vdupq_lane_s32(v15, 0);
  v17 = vdupq_lane_s32(v15, 1);
  v18 = vdupq_lane_s32(vneg_s32(v15), 0);
  v19 = av1_cospi_arr_s32_data[33 * a3 - 310];
  v20 = vdupq_lane_s32(v19, 0);
  v21 = vdupq_lane_s32(v19, 1);
  v22 = vdupq_lane_s32(vneg_s32(v19), 0);
  v23 = av1_cospi_arr_s32_data[33 * a3 - 302];
  v24 = vdupq_lane_s32(v23, 0);
  v25 = vdupq_lane_s32(v23, 1);
  v26 = vdupq_lane_s32(vneg_s32(v23), 1);
  v27 = av1_cospi_arr_s32_data[33 * a3 - 318];
  v28 = vdupq_lane_s32(v27, 0);
  v29 = vdupq_lane_s32(v27, 1);
  v30 = vdupq_lane_s32(vneg_s32(v27), 0);
  if (a4 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = a4;
  }

  v32 = result + 4;
  v33 = 4 * a6;
  v34 = vdupq_n_s32(0x16A1u);
  do
  {
    v35 = v32[-4];
    v36 = v32[-3];
    v38 = v32[2];
    v37 = v32[3];
    v39 = v32[-2];
    v40 = v32[-1];
    v41 = v32[1];
    v42 = vmlaq_s32(vmulq_s32(v40, v10), *v32, v9);
    v43 = vrshlq_s32(vmulq_s32(vaddq_s32(*v32, v40), v10), v6);
    v44 = vmulq_s32(v39, v9);
    v45 = vrshlq_s32(v42, v6);
    v46 = vrshlq_s32(vmulq_s32(vaddq_s32(v41, v39), v9), v6);
    v47 = vrshlq_s32(vmlaq_s32(v44, v41, v10), v6);
    v48 = vsubq_s32(v43, v37);
    v49 = vaddq_s32(v45, v35);
    v50 = vsubq_s32(v35, v45);
    v51 = vaddq_s32(v43, v37);
    v52 = vsubq_s32(v47, v36);
    v53 = vaddq_s32(v46, v38);
    v54 = vsubq_s32(v38, v46);
    v55 = vaddq_s32(v47, v36);
    v56 = vrshlq_s32(vmlaq_s32(vmulq_s32(v53, v13), v52, v12), v6);
    v57 = vrshlq_s32(vmlaq_s32(vmulq_s32(v53, v14), v52, v13), v6);
    v58 = vrshlq_s32(vmlaq_s32(vmulq_s32(v54, v12), v55, v13), v6);
    v59 = vrshlq_s32(vmlaq_s32(vmulq_s32(v54, v13), v55, v14), v6);
    v60 = vaddq_s32(v56, v49);
    v61 = vaddq_s32(v57, v48);
    v62 = vaddq_s32(v58, v50);
    v63 = vsubq_s32(v59, v51);
    v64 = vsubq_s32(v49, v56);
    v65 = vsubq_s32(v48, v57);
    v66 = vsubq_s32(v50, v58);
    v67 = vaddq_s32(v59, v51);
    *a2 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v60, v17), v61, v18), v6), v34), 0xCuLL);
    *(a2 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v66, v29), v67, v30), v6), v34), 0xCuLL);
    v68 = (a2 + v33 + v33);
    *v68 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v62, v21), v63, v22), v6), v34), 0xCuLL);
    *(v68 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v64, v25), v65, v24), v6), v34), 0xCuLL);
    v69 = (v68 + v33 + v33);
    *v69 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v64, v24), v65, v26), v6), v34), 0xCuLL);
    v70 = (v69 + v33);
    v71 = (v70 + v33);
    *v70 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v62, v20), v63, v21), v6), v34), 0xCuLL);
    *v71 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v66, v28), v67, v29), v6), v34), 0xCuLL);
    *(v71 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v60, v16), v61, v17), v6), v34), 0xCuLL);
    ++a2;
    v32 += a5;
    --v31;
  }

  while (v31);
  return result;
}

int32x4_t *highbd_fidentity8_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  v7 = result + 4;
  v8 = 4 * a6;
  v9 = vdupq_n_s32(0x2D42u);
  do
  {
    v10 = vrshrq_n_s32(vmulq_s32(v7[-3], v9), 0xCuLL);
    v11 = vrshrq_n_s32(vmulq_s32(v7[-2], v9), 0xCuLL);
    v12 = vrshrq_n_s32(vmulq_s32(v7[-1], v9), 0xCuLL);
    v13 = vrshrq_n_s32(vmulq_s32(*v7, v9), 0xCuLL);
    v14 = vrshrq_n_s32(vmulq_s32(v7[1], v9), 0xCuLL);
    v15 = vrshrq_n_s32(vmulq_s32(v7[2], v9), 0xCuLL);
    v16 = vrshrq_n_s32(vmulq_s32(v7[3], v9), 0xCuLL);
    *a2 = vrshrq_n_s32(vmulq_s32(v7[-4], v9), 0xCuLL);
    *(a2 + 4 * a6) = v10;
    v17 = (a2 + v8 + v8);
    *v17 = v11;
    v18 = (v17 + v8);
    *v18 = v12;
    v19 = (v18 + v8);
    *v19 = v13;
    v20 = (v19 + v8);
    *v20 = v14;
    v21 = (v20 + v8);
    *v21 = v15;
    *(v21 + 4 * a6) = v16;
    ++a2;
    v7 += a5;
    --v6;
  }

  while (v6);
  return result;
}

int16x4_t *highbd_fdct4_col_many_neon(int16x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = &av1_cospi_arr_s32_data[33 * a4 - 298];
  v8 = vld1q_dup_f32(v7);
  v9 = av1_cospi_arr_s32_data[33 * a4 - 314];
  v10 = vdupq_lane_s32(v9, 1);
  v11 = vdupq_lane_s32(v9, 0);
  v12 = vdupq_n_s32(-a4);
  if (a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a6;
  }

  v14 = a2 + 2;
  v15 = 16 * a7;
  if (a5)
  {
    do
    {
      v16 = vshll_n_s16(vrev64_s16(*result), 2uLL);
      v17 = vshll_n_s16(vrev64_s16(*(result + 2 * a3)), 2uLL);
      v18 = vshll_n_s16(vrev64_s16(*(result + 4 * a3)), 2uLL);
      v19 = vshll_n_s16(vrev64_s16(*(result + 6 * a3)), 2uLL);
      v20 = vaddq_s32(v19, v16);
      v21 = vsubq_s32(v16, v19);
      v22 = vaddq_s32(v18, v17);
      v23 = vsubq_s32(v17, v18);
      v24 = vmulq_s32(v20, v8);
      v25 = vmulq_s32(v22, v8);
      v14[-2] = vrshlq_s32(vaddq_s32(v24, v25), v12);
      v14[-1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v23, v10), v21, v11), v12);
      *v14 = vrshlq_s32(vsubq_s32(v24, v25), v12);
      v14[1] = vrshlq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v23, v11)), v21, v10), v12);
      ++result;
      v14 = (v14 + v15);
      --v13;
    }

    while (v13);
  }

  else
  {
    do
    {
      v26 = vshll_n_s16(*result, 2uLL);
      v27 = vshll_n_s16(*(result + 2 * a3), 2uLL);
      v28 = vshll_n_s16(*(result + 4 * a3), 2uLL);
      v29 = vshll_n_s16(*(result + 6 * a3), 2uLL);
      v30 = vaddq_s32(v29, v26);
      v31 = vsubq_s32(v26, v29);
      v32 = vaddq_s32(v28, v27);
      v33 = vsubq_s32(v27, v28);
      v34 = vmulq_s32(v30, v8);
      v35 = vmulq_s32(v32, v8);
      v14[-2] = vrshlq_s32(vaddq_s32(v34, v35), v12);
      v14[-1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v33, v10), v31, v11), v12);
      *v14 = vrshlq_s32(vsubq_s32(v34, v35), v12);
      v14[1] = vrshlq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v33, v11)), v31, v10), v12);
      ++result;
      v14 = (v14 + v15);
      --v13;
    }

    while (v13);
  }

  return result;
}

int16x4_t *highbd_fadst4_col_many_neon(int16x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = *(&av1_sinpi_arr_data + 20 * a4 - 196);
  v8 = vdupq_lane_s32(*v7.i8, 0);
  v9 = vdupq_laneq_s32(v7, 3);
  v10 = vdupq_laneq_s32(v7, 2);
  v11 = vdupq_lane_s32(*v7.i8, 1);
  v12 = vdupq_n_s32(-a4);
  if (a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a6;
  }

  v14 = a2 + 2;
  v15 = 16 * a7;
  if (a5)
  {
    do
    {
      v16 = vshll_n_s16(vrev64_s16(*result), 2uLL);
      v17 = vshll_n_s16(vrev64_s16(*(result + 2 * a3)), 2uLL);
      v18 = vshll_n_s16(vrev64_s16(*(result + 6 * a3)), 2uLL);
      v19 = vaddq_s32(v17, v16);
      v20 = vshlq_n_s32(vmulq_s32(vmovl_s16(vrev64_s16(*(result + 4 * a3))), v10), 2uLL);
      v21 = vmlaq_s32(vmlaq_s32(vmulq_s32(v16, v8), v17, v11), v18, v9);
      v22 = vmlaq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v17, v8)), v16, v9), v18, v11);
      v14[-2] = vrshlq_s32(vaddq_s32(v21, v20), v12);
      v14[-1] = vrshlq_s32(vmulq_s32(vsubq_s32(v19, v18), v10), v12);
      *v14 = vrshlq_s32(vsubq_s32(v22, v20), v12);
      v14[1] = vrshlq_s32(vaddq_s32(vsubq_s32(v20, v21), v22), v12);
      ++result;
      v14 = (v14 + v15);
      --v13;
    }

    while (v13);
  }

  else
  {
    do
    {
      v23 = vshll_n_s16(*result, 2uLL);
      v24 = vshll_n_s16(*(result + 2 * a3), 2uLL);
      v25 = vshll_n_s16(*(result + 6 * a3), 2uLL);
      v26 = vaddq_s32(v24, v23);
      v27 = vshlq_n_s32(vmulq_s32(vmovl_s16(*(result + 4 * a3)), v10), 2uLL);
      v28 = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v8), v24, v11), v25, v9);
      v29 = vmlaq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v24, v8)), v23, v9), v25, v11);
      v14[-2] = vrshlq_s32(vaddq_s32(v28, v27), v12);
      v14[-1] = vrshlq_s32(vmulq_s32(vsubq_s32(v26, v25), v10), v12);
      *v14 = vrshlq_s32(vsubq_s32(v29, v27), v12);
      v14[1] = vrshlq_s32(vaddq_s32(vsubq_s32(v27, v28), v29), v12);
      ++result;
      v14 = (v14 + v15);
      --v13;
    }

    while (v13);
  }

  return result;
}

int16x4_t *highbd_fidentity4_col_many_neon(int16x4_t *result, int32x4_t *a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a6;
  }

  v8 = a2 + 2;
  v9 = 16 * a7;
  v10 = vdup_n_s16(0x5A84u);
  if (a5)
  {
    do
    {
      v11 = vrev64_s16(*(result + 4 * a3));
      v12 = vrev64_s16(*(result + 6 * a3));
      v13 = vrshrq_n_s32(vmull_s16(vrev64_s16(*(result + 2 * a3)), v10), 0xCuLL);
      v8[-2] = vrshrq_n_s32(vmull_s16(vrev64_s16(*result), v10), 0xCuLL);
      v8[-1] = v13;
      *v8 = vrshrq_n_s32(vmull_s16(v11, v10), 0xCuLL);
      v8[1] = vrshrq_n_s32(vmull_s16(v12, v10), 0xCuLL);
      ++result;
      v8 = (v8 + v9);
      --v7;
    }

    while (v7);
  }

  else
  {
    do
    {
      v14 = *(result + 4 * a3);
      v15 = *(result + 6 * a3);
      v16 = vrshrq_n_s32(vmull_s16(*(result + 2 * a3), v10), 0xCuLL);
      v8[-2] = vrshrq_n_s32(vmull_s16(*result, v10), 0xCuLL);
      v8[-1] = v16;
      *v8 = vrshrq_n_s32(vmull_s16(v14, v10), 0xCuLL);
      v8[1] = vrshrq_n_s32(vmull_s16(v15, v10), 0xCuLL);
      ++result;
      v8 = (v8 + v9);
      --v7;
    }

    while (v7);
  }

  return result;
}

double highbd_fdct16_row_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  highbd_fdct16_x4_neon(a1, v15, a3);
  v6 = v15[1];
  *a2 = v15[0];
  *(a2 + 4 * a4) = v6;
  v7 = v15[3];
  *(a2 + 8 * a4) = v15[2];
  *(a2 + 12 * a4) = v7;
  v8 = v15[5];
  a2[a4] = v15[4];
  *(a2 + 20 * a4) = v8;
  v9 = v15[7];
  *(a2 + 24 * a4) = v15[6];
  *(a2 + 28 * a4) = v9;
  v10 = v15[9];
  a2[2 * a4] = v15[8];
  *(a2 + 36 * a4) = v10;
  v11 = v15[11];
  *(a2 + 40 * a4) = v15[10];
  *(a2 + 44 * a4) = v11;
  v12 = v15[13];
  a2[3 * a4] = v15[12];
  *(a2 + 52 * a4) = v12;
  result = *v16.i64;
  v14 = v17;
  *(a2 + 56 * a4) = v16;
  *(a2 + 60 * a4) = v14;
  return result;
}

double highbd_fadst16_row_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  highbd_fadst16_x4_neon(a1, v15, a3);
  v6 = v15[1];
  *a2 = v15[0];
  *(a2 + 4 * a4) = v6;
  v7 = v15[3];
  *(a2 + 8 * a4) = v15[2];
  *(a2 + 12 * a4) = v7;
  v8 = v15[5];
  a2[a4] = v15[4];
  *(a2 + 20 * a4) = v8;
  v9 = v15[7];
  *(a2 + 24 * a4) = v15[6];
  *(a2 + 28 * a4) = v9;
  v10 = v15[9];
  a2[2 * a4] = v15[8];
  *(a2 + 36 * a4) = v10;
  v11 = v15[11];
  *(a2 + 40 * a4) = v15[10];
  *(a2 + 44 * a4) = v11;
  v12 = v15[13];
  a2[3 * a4] = v15[12];
  *(a2 + 52 * a4) = v12;
  result = *v16.i64;
  v14 = v17;
  *(a2 + 56 * a4) = v16;
  *(a2 + 60 * a4) = v14;
  return result;
}

int32x4_t highbd_fidentity16_row_neon(int32x4_t *a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v4 = vdupq_n_s32(0x2D42u);
  v5.i64[0] = 0x80000000800;
  v5.i64[1] = 0x80000000800;
  v6.i64[0] = 0x80000000800;
  v6.i64[1] = 0x80000000800;
  v7 = vshrq_n_s32(vmlaq_s32(v6, *a1, v4), 0xCuLL);
  v6.i64[0] = 0x80000000800;
  v6.i64[1] = 0x80000000800;
  v8 = vshrq_n_s32(vmlaq_s32(v6, a1[1], v4), 0xCuLL);
  v6.i64[0] = 0x80000000800;
  v6.i64[1] = 0x80000000800;
  v9 = vshrq_n_s32(vmlaq_s32(v6, a1[2], v4), 0xCuLL);
  v6.i64[0] = 0x80000000800;
  v6.i64[1] = 0x80000000800;
  v10 = vshrq_n_s32(vmlaq_s32(v6, a1[3], v4), 0xCuLL);
  v11.i64[0] = 0x80000000800;
  v11.i64[1] = 0x80000000800;
  v12 = vshrq_n_s32(vmlaq_s32(v11, a1[4], v4), 0xCuLL);
  v11.i64[0] = 0x80000000800;
  v11.i64[1] = 0x80000000800;
  v13 = vshrq_n_s32(vmlaq_s32(v11, a1[5], v4), 0xCuLL);
  v11.i64[0] = 0x80000000800;
  v11.i64[1] = 0x80000000800;
  v14 = vshrq_n_s32(vmlaq_s32(v11, a1[6], v4), 0xCuLL);
  v11.i64[0] = 0x80000000800;
  v11.i64[1] = 0x80000000800;
  v15 = vshrq_n_s32(vmlaq_s32(v11, a1[7], v4), 0xCuLL);
  v16.i64[0] = 0x80000000800;
  v16.i64[1] = 0x80000000800;
  v17 = vshrq_n_s32(vmlaq_s32(v16, a1[8], v4), 0xCuLL);
  v18.i64[0] = 0x80000000800;
  v18.i64[1] = 0x80000000800;
  v19 = vshrq_n_s32(vmlaq_s32(v18, a1[9], v4), 0xCuLL);
  v20.i64[0] = 0x80000000800;
  v20.i64[1] = 0x80000000800;
  v21 = vshrq_n_s32(vmlaq_s32(v20, a1[10], v4), 0xCuLL);
  v22.i64[0] = 0x80000000800;
  v22.i64[1] = 0x80000000800;
  v23 = vshrq_n_s32(vmlaq_s32(v22, a1[11], v4), 0xCuLL);
  v24 = a1[12];
  v25 = a1[13];
  v26 = a1[14];
  v27 = a1[15];
  *a2 = v7;
  v7.i64[0] = 0x80000000800;
  v7.i64[1] = 0x80000000800;
  *(a2 + 4 * a4) = v8;
  *(a2 + 8 * a4) = v9;
  v28 = vshrq_n_s32(vmlaq_s32(v7, v24, v4), 0xCuLL);
  v7.i64[0] = 0x80000000800;
  v7.i64[1] = 0x80000000800;
  *(a2 + 12 * a4) = v10;
  a2[a4] = v12;
  *(a2 + 20 * a4) = v13;
  v10.i64[0] = 0x80000000800;
  v10.i64[1] = 0x80000000800;
  *(a2 + 24 * a4) = v14;
  *(a2 + 28 * a4) = v15;
  result = vshrq_n_s32(vmlaq_s32(v5, v27, v4), 0xCuLL);
  a2[2 * a4] = v17;
  *(a2 + 36 * a4) = v19;
  *(a2 + 40 * a4) = v21;
  *(a2 + 44 * a4) = v23;
  a2[3 * a4] = v28;
  *(a2 + 52 * a4) = vshrq_n_s32(vmlaq_s32(v7, v25, v4), 0xCuLL);
  *(a2 + 56 * a4) = vshrq_n_s32(vmlaq_s32(v10, v26, v4), 0xCuLL);
  *(a2 + 60 * a4) = result;
  return result;
}

void highbd_fdct32_col_many_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6, int a7)
{
  v113 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a6;
  }

  v11 = 16 * a7;
  v12 = 2 * a3;
  if (a5)
  {
    do
    {
      v13 = vshll_n_s16(vrev64_s16(*(a1 + v12)), 2uLL);
      v81 = vshll_n_s16(vrev64_s16(*a1), 2uLL);
      v82 = v13;
      v14 = (a1 + v12 + v12);
      v15 = vshll_n_s16(vrev64_s16(*v14), 2uLL);
      v16 = (v14 + v12);
      v17 = vshll_n_s16(vrev64_s16(*v16), 2uLL);
      v83 = v15;
      v84 = v17;
      v18 = (v16 + v12);
      v19 = vshll_n_s16(vrev64_s16(*v18), 2uLL);
      v20 = (v18 + v12);
      v21 = vshll_n_s16(vrev64_s16(*v20), 2uLL);
      v85 = v19;
      v86 = v21;
      v22 = (v20 + v12);
      v87 = vshll_n_s16(vrev64_s16(*v22), 2uLL);
      v23 = (v22 + v12);
      v88 = vshll_n_s16(vrev64_s16(*v23), 2uLL);
      v24 = (v23 + v12);
      v89 = vshll_n_s16(vrev64_s16(*v24), 2uLL);
      v25 = (v24 + v12);
      v90 = vshll_n_s16(vrev64_s16(*v25), 2uLL);
      v26 = (v25 + v12);
      v91 = vshll_n_s16(vrev64_s16(*v26), 2uLL);
      v27 = (v26 + v12);
      v92 = vshll_n_s16(vrev64_s16(*v27), 2uLL);
      v28 = (v27 + v12);
      v93 = vshll_n_s16(vrev64_s16(*v28), 2uLL);
      v29 = (v28 + v12);
      v94 = vshll_n_s16(vrev64_s16(*v29), 2uLL);
      v30 = (v29 + v12);
      v95 = vshll_n_s16(vrev64_s16(*v30), 2uLL);
      v31 = (v30 + v12);
      v96 = vshll_n_s16(vrev64_s16(*v31), 2uLL);
      v32 = (v31 + v12);
      v97 = vshll_n_s16(vrev64_s16(*v32), 2uLL);
      v33 = (v32 + v12);
      v98 = vshll_n_s16(vrev64_s16(*v33), 2uLL);
      v34 = (v33 + v12);
      v99 = vshll_n_s16(vrev64_s16(*v34), 2uLL);
      v35 = (v34 + v12);
      v100 = vshll_n_s16(vrev64_s16(*v35), 2uLL);
      v36 = (v35 + v12);
      v101 = vshll_n_s16(vrev64_s16(*v36), 2uLL);
      v37 = (v36 + v12);
      v102 = vshll_n_s16(vrev64_s16(*v37), 2uLL);
      v38 = (v37 + v12);
      v103 = vshll_n_s16(vrev64_s16(*v38), 2uLL);
      v39 = (v38 + v12);
      v104 = vshll_n_s16(vrev64_s16(*v39), 2uLL);
      v40 = (v39 + v12);
      v105 = vshll_n_s16(vrev64_s16(*v40), 2uLL);
      v41 = (v40 + v12);
      v106 = vshll_n_s16(vrev64_s16(*v41), 2uLL);
      v42 = (v41 + v12);
      v107 = vshll_n_s16(vrev64_s16(*v42), 2uLL);
      v43 = (v42 + v12);
      v108 = vshll_n_s16(vrev64_s16(*v43), 2uLL);
      v44 = (v43 + v12);
      v109 = vshll_n_s16(vrev64_s16(*v44), 2uLL);
      v45 = (v44 + v12);
      v110 = vshll_n_s16(vrev64_s16(*v45), 2uLL);
      v46 = (v45 + v12);
      v111 = vshll_n_s16(vrev64_s16(*v46), 2uLL);
      v112 = vshll_n_s16(vrev64_s16(*(v46 + v12)), 2uLL);
      highbd_fdct32_x4_neon(&v81, a2, a4);
      a2 = (a2 + v11);
      ++a1;
      --v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v47 = vshll_n_s16(*(a1 + v12), 2uLL);
      v81 = vshll_n_s16(*a1, 2uLL);
      v82 = v47;
      v48 = (a1 + v12 + v12);
      v49 = vshll_n_s16(*v48, 2uLL);
      v50 = (v48 + v12);
      v51 = vshll_n_s16(*v50, 2uLL);
      v83 = v49;
      v84 = v51;
      v52 = (v50 + v12);
      v53 = vshll_n_s16(*v52, 2uLL);
      v54 = (v52 + v12);
      v55 = vshll_n_s16(*v54, 2uLL);
      v85 = v53;
      v86 = v55;
      v56 = (v54 + v12);
      v87 = vshll_n_s16(*v56, 2uLL);
      v57 = (v56 + v12);
      v88 = vshll_n_s16(*v57, 2uLL);
      v58 = (v57 + v12);
      v89 = vshll_n_s16(*v58, 2uLL);
      v59 = (v58 + v12);
      v90 = vshll_n_s16(*v59, 2uLL);
      v60 = (v59 + v12);
      v91 = vshll_n_s16(*v60, 2uLL);
      v61 = (v60 + v12);
      v92 = vshll_n_s16(*v61, 2uLL);
      v62 = (v61 + v12);
      v93 = vshll_n_s16(*v62, 2uLL);
      v63 = (v62 + v12);
      v94 = vshll_n_s16(*v63, 2uLL);
      v64 = (v63 + v12);
      v95 = vshll_n_s16(*v64, 2uLL);
      v65 = (v64 + v12);
      v96 = vshll_n_s16(*v65, 2uLL);
      v66 = (v65 + v12);
      v97 = vshll_n_s16(*v66, 2uLL);
      v67 = (v66 + v12);
      v98 = vshll_n_s16(*v67, 2uLL);
      v68 = (v67 + v12);
      v99 = vshll_n_s16(*v68, 2uLL);
      v69 = (v68 + v12);
      v100 = vshll_n_s16(*v69, 2uLL);
      v70 = (v69 + v12);
      v101 = vshll_n_s16(*v70, 2uLL);
      v71 = (v70 + v12);
      v102 = vshll_n_s16(*v71, 2uLL);
      v72 = (v71 + v12);
      v103 = vshll_n_s16(*v72, 2uLL);
      v73 = (v72 + v12);
      v104 = vshll_n_s16(*v73, 2uLL);
      v74 = (v73 + v12);
      v105 = vshll_n_s16(*v74, 2uLL);
      v75 = (v74 + v12);
      v106 = vshll_n_s16(*v75, 2uLL);
      v76 = (v75 + v12);
      v107 = vshll_n_s16(*v76, 2uLL);
      v77 = (v76 + v12);
      v108 = vshll_n_s16(*v77, 2uLL);
      v78 = (v77 + v12);
      v109 = vshll_n_s16(*v78, 2uLL);
      v79 = (v78 + v12);
      v110 = vshll_n_s16(*v79, 2uLL);
      v80 = (v79 + v12);
      v111 = vshll_n_s16(*v80, 2uLL);
      v112 = vshll_n_s16(*(v80 + v12), 2uLL);
      highbd_fdct32_x4_neon(&v81, a2, a4);
      a2 = (a2 + v11);
      ++a1;
      --v10;
    }

    while (v10);
  }
}

uint64_t highbd_fidentity32_col_many_neon(uint64_t result, int32x4_t *a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v9 = 0;
  v76 = result + 10 * a3;
  v77 = result + 6 * a3;
  v74 = result + 14 * a3;
  v75 = result + 12 * a3;
  if (a6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a6;
  }

  v72 = result + 18 * a3;
  v73 = 8 * v10;
  v70 = result + 22 * a3;
  v71 = result + 20 * a3;
  v11 = result + 24 * a3;
  v12 = result + 26 * a3;
  v13 = result + 28 * a3;
  v14 = result + 30 * a3;
  v15 = result + 34 * a3;
  v16 = result + 36 * a3;
  v17 = result + 38 * a3;
  v18 = result + 40 * a3;
  v19 = result + 42 * a3;
  v20 = result + 44 * a3;
  v21 = result + 46 * a3;
  v22 = result + 48 * a3;
  v23 = result + 50 * a3;
  v24 = result + 52 * a3;
  v25 = result + 54 * a3;
  v26 = result + 56 * a3;
  v27 = result + 58 * a3;
  v28 = result + 60 * a3;
  v29 = result + 62 * a3;
  v30 = result + 2 * a3;
  v31 = result + 4 * a3;
  v32 = result + 8 * a3;
  v33 = a3;
  v34 = result + 16 * a3;
  v35 = result + 32 * v33;
  v36 = a2 + 16;
  v37 = 16 * a7;
  do
  {
    v69 = *(result + v9);
    if (a5)
    {
      v69 = vrev64_s16(v69);
      v38 = vrev64_s16(*(v30 + v9));
      v39 = vrev64_s16(*(v31 + v9));
      v40 = vrev64_s16(*(v77 + v9));
      v41 = vrev64_s16(*(v32 + v9));
      v42 = vrev64_s16(*(v76 + v9));
      v43 = vrev64_s16(*(v75 + v9));
      v44 = vrev64_s16(*(v74 + v9));
      v45 = vrev64_s16(*(v34 + v9));
      v46 = vrev64_s16(*(v72 + v9));
      v47 = vrev64_s16(*(v71 + v9));
      v48 = vrev64_s16(*(v70 + v9));
      v49 = vrev64_s16(*(v11 + v9));
      v50 = vrev64_s16(*(v12 + v9));
      v51 = vrev64_s16(*(v13 + v9));
      v52 = vrev64_s16(*(v14 + v9));
      v53 = vrev64_s16(*(v35 + v9));
      v54 = vrev64_s16(*(v15 + v9));
      v55 = vrev64_s16(*(v16 + v9));
      v56 = vrev64_s16(*(v17 + v9));
      v57 = vrev64_s16(*(v18 + v9));
      v58 = vrev64_s16(*(v19 + v9));
      v59 = vrev64_s16(*(v20 + v9));
      v60 = vrev64_s16(*(v21 + v9));
      v61 = vrev64_s16(*(v22 + v9));
      v62 = vrev64_s16(*(v23 + v9));
      v63 = vrev64_s16(*(v24 + v9));
      v64 = vrev64_s16(*(v25 + v9));
      v65 = vrev64_s16(*(v26 + v9));
      v66 = vrev64_s16(*(v27 + v9));
      v67 = vrev64_s16(*(v28 + v9));
      v68 = vrev64_s16(*(v29 + v9));
    }

    else
    {
      v38 = *(v30 + v9);
      v39 = *(v31 + v9);
      v40 = *(v77 + v9);
      v41 = *(v32 + v9);
      v42 = *(v76 + v9);
      v43 = *(v75 + v9);
      v44 = *(v74 + v9);
      v45 = *(v34 + v9);
      v46 = *(v72 + v9);
      v47 = *(v71 + v9);
      v48 = *(v70 + v9);
      v49 = *(v11 + v9);
      v50 = *(v12 + v9);
      v51 = *(v13 + v9);
      v52 = *(v14 + v9);
      v53 = *(v35 + v9);
      v54 = *(v15 + v9);
      v55 = *(v16 + v9);
      v56 = *(v17 + v9);
      v57 = *(v18 + v9);
      v58 = *(v19 + v9);
      v59 = *(v20 + v9);
      v60 = *(v21 + v9);
      v61 = *(v22 + v9);
      v62 = *(v23 + v9);
      v63 = *(v24 + v9);
      v64 = *(v25 + v9);
      v65 = *(v26 + v9);
      v66 = *(v27 + v9);
      v67 = *(v28 + v9);
      v68 = *(v29 + v9);
    }

    v36[-16] = vshll_n_s16(v69, 4uLL);
    v36[-15] = vshll_n_s16(v38, 4uLL);
    v36[-14] = vshll_n_s16(v39, 4uLL);
    v36[-13] = vshll_n_s16(v40, 4uLL);
    v36[-12] = vshll_n_s16(v41, 4uLL);
    v36[-11] = vshll_n_s16(v42, 4uLL);
    v36[-10] = vshll_n_s16(v43, 4uLL);
    v36[-9] = vshll_n_s16(v44, 4uLL);
    v36[-8] = vshll_n_s16(v45, 4uLL);
    v36[-7] = vshll_n_s16(v46, 4uLL);
    v36[-6] = vshll_n_s16(v47, 4uLL);
    v36[-5] = vshll_n_s16(v48, 4uLL);
    v36[-4] = vshll_n_s16(v49, 4uLL);
    v36[-3] = vshll_n_s16(v50, 4uLL);
    v36[-2] = vshll_n_s16(v51, 4uLL);
    v36[-1] = vshll_n_s16(v52, 4uLL);
    *v36 = vshll_n_s16(v53, 4uLL);
    v36[1] = vshll_n_s16(v54, 4uLL);
    v36[2] = vshll_n_s16(v55, 4uLL);
    v36[3] = vshll_n_s16(v56, 4uLL);
    v36[4] = vshll_n_s16(v57, 4uLL);
    v36[5] = vshll_n_s16(v58, 4uLL);
    v36[6] = vshll_n_s16(v59, 4uLL);
    v36[7] = vshll_n_s16(v60, 4uLL);
    v36[8] = vshll_n_s16(v61, 4uLL);
    v36[9] = vshll_n_s16(v62, 4uLL);
    v36[10] = vshll_n_s16(v63, 4uLL);
    v36[11] = vshll_n_s16(v64, 4uLL);
    v36[12] = vshll_n_s16(v65, 4uLL);
    v36[13] = vshll_n_s16(v66, 4uLL);
    v9 += 8;
    v36[14] = vshll_n_s16(v67, 4uLL);
    v36[15] = vshll_n_s16(v68, 4uLL);
    v36 = (v36 + v37);
  }

  while (v73 != v9);
  return result;
}

void highbd_fdct32_row_rect_many_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v105 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = 16 * a5;
  v11 = 4 * a6;
  v72 = vdupq_n_s32(0x16A1u);
  do
  {
    highbd_fdct32_x4_neon(a1, &v73, a3);
    v12 = vrshrq_n_s32(vmulq_s32(v74, v72), 0xCuLL);
    v73 = vrshrq_n_s32(vmulq_s32(v73, v72), 0xCuLL);
    v74 = v12;
    v13 = vrshrq_n_s32(vmulq_s32(v75, v72), 0xCuLL);
    v14 = vrshrq_n_s32(vmulq_s32(v76, v72), 0xCuLL);
    v75 = v13;
    v76 = v14;
    v15 = vrshrq_n_s32(vmulq_s32(v77, v72), 0xCuLL);
    v16 = vrshrq_n_s32(vmulq_s32(v78, v72), 0xCuLL);
    v77 = v15;
    v78 = v16;
    v17 = vrshrq_n_s32(vmulq_s32(v79, v72), 0xCuLL);
    v18 = vrshrq_n_s32(vmulq_s32(v80, v72), 0xCuLL);
    v79 = v17;
    v80 = v18;
    v19 = vrshrq_n_s32(vmulq_s32(v81, v72), 0xCuLL);
    v20 = vrshrq_n_s32(vmulq_s32(v82, v72), 0xCuLL);
    v81 = v19;
    v82 = v20;
    v21 = vrshrq_n_s32(vmulq_s32(v83, v72), 0xCuLL);
    v22 = vrshrq_n_s32(vmulq_s32(v84, v72), 0xCuLL);
    v83 = v21;
    v84 = v22;
    v23 = vrshrq_n_s32(vmulq_s32(v85, v72), 0xCuLL);
    v24 = vrshrq_n_s32(vmulq_s32(v86, v72), 0xCuLL);
    v85 = v23;
    v86 = v24;
    v25 = vrshrq_n_s32(vmulq_s32(v87, v72), 0xCuLL);
    v26 = vrshrq_n_s32(vmulq_s32(v88, v72), 0xCuLL);
    v87 = v25;
    v88 = v26;
    v27 = vrshrq_n_s32(vmulq_s32(v89, v72), 0xCuLL);
    v28 = vrshrq_n_s32(vmulq_s32(v90, v72), 0xCuLL);
    v89 = v27;
    v90 = v28;
    v29 = vrshrq_n_s32(vmulq_s32(v91, v72), 0xCuLL);
    v30 = vrshrq_n_s32(vmulq_s32(v92, v72), 0xCuLL);
    v91 = v29;
    v92 = v30;
    v31 = vrshrq_n_s32(vmulq_s32(v93, v72), 0xCuLL);
    v32 = vrshrq_n_s32(vmulq_s32(v94, v72), 0xCuLL);
    v93 = v31;
    v94 = v32;
    v33 = vrshrq_n_s32(vmulq_s32(v95, v72), 0xCuLL);
    v34 = vrshrq_n_s32(vmulq_s32(v96, v72), 0xCuLL);
    v95 = v33;
    v96 = v34;
    *a2 = v73;
    v35 = vrshrq_n_s32(vmulq_s32(v97, v72), 0xCuLL);
    v36 = vrshrq_n_s32(vmulq_s32(v98, v72), 0xCuLL);
    v97 = v35;
    v98 = v36;
    *(a2 + v11) = v12;
    v37 = (a2 + v11 + v11);
    *v37 = v13;
    v38 = vrshrq_n_s32(vmulq_s32(v99, v72), 0xCuLL);
    v39 = vrshrq_n_s32(vmulq_s32(v100, v72), 0xCuLL);
    v99 = v38;
    v100 = v39;
    v40 = (v37 + v11);
    *v40 = v14;
    v41 = (v40 + v11);
    *v41 = v15;
    v42 = v101;
    v43 = v102;
    v44 = (v41 + v11);
    *v44 = v16;
    v45 = (v44 + v11);
    *v45 = v17;
    v46 = v103;
    v47 = v104;
    v48 = (v45 + v11);
    *v48 = v18;
    v49 = (v48 + v11);
    *v49 = v19;
    v50 = (v49 + v11);
    *v50 = v20;
    v51 = (v50 + v11);
    *v51 = v21;
    v52 = (v51 + v11);
    *v52 = v22;
    v53 = (v52 + v11);
    *v53 = v23;
    v54 = (v53 + v11);
    *v54 = v24;
    v55 = (v54 + v11);
    *v55 = v25;
    v56 = (v55 + v11);
    *v56 = v26;
    v57 = (v56 + v11);
    *v57 = v27;
    v58 = (v57 + v11);
    *v58 = v28;
    v59 = (v58 + v11);
    *v59 = v29;
    v60 = (v59 + v11);
    *v60 = v30;
    v61 = (v60 + v11);
    *v61 = v31;
    v62 = (v61 + v11);
    *v62 = v32;
    v63 = (v62 + v11);
    *v63 = v33;
    v64 = (v63 + v11);
    *v64 = v34;
    v65 = (v64 + v11);
    *v65 = v35;
    v66 = (v65 + v11);
    *v66 = v36;
    v67 = (v66 + v11);
    *v67 = v38;
    v68 = (v67 + v11);
    *v68 = v39;
    v69 = (v68 + v11);
    *v69 = vrshrq_n_s32(vmulq_s32(v42, v72), 0xCuLL);
    v70 = (v69 + v11);
    *v70 = vrshrq_n_s32(vmulq_s32(v43, v72), 0xCuLL);
    v71 = (v70 + v11);
    *v71 = vrshrq_n_s32(vmulq_s32(v46, v72), 0xCuLL);
    *(v71 + v11) = vrshrq_n_s32(vmulq_s32(v47, v72), 0xCuLL);
    ++a2;
    a1 = (a1 + v10);
    --v9;
  }

  while (v9);
}

int32x4_t *highbd_fidentity32_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  v7 = result + 16;
  v8 = 4 * a6;
  v9 = vdupq_n_s32(0x5A84u);
  do
  {
    v10 = v7[-15];
    v12 = v7[-14];
    v11 = v7[-13];
    v14 = v7[-12];
    v13 = v7[-11];
    v16 = v7[-10];
    v15 = v7[-9];
    v17 = v7[-8];
    v18 = v7[-7];
    v20 = v7[-6];
    v19 = v7[-5];
    v22 = v7[-4];
    v21 = v7[-3];
    v24 = v7[-2];
    v23 = v7[-1];
    v26 = *v7;
    v25 = v7[1];
    v28 = v7[2];
    v27 = v7[3];
    v30 = v7[4];
    v29 = v7[5];
    v32 = v7[6];
    v31 = v7[7];
    v34 = v7[8];
    v33 = v7[9];
    v36 = v7[10];
    v35 = v7[11];
    v38 = v7[12];
    v37 = v7[13];
    v68 = v7[14];
    v69 = v7[15];
    *a2 = vrshrq_n_s32(vmulq_s32(v7[-16], v9), 0xCuLL);
    *(a2 + 4 * a6) = vrshrq_n_s32(vmulq_s32(v10, v9), 0xCuLL);
    v39 = (a2 + v8 + v8);
    *v39 = vrshrq_n_s32(vmulq_s32(v12, v9), 0xCuLL);
    v40 = (v39 + v8);
    *v40 = vrshrq_n_s32(vmulq_s32(v11, v9), 0xCuLL);
    v41 = (v40 + v8);
    *v41 = vrshrq_n_s32(vmulq_s32(v14, v9), 0xCuLL);
    v42 = (v41 + v8);
    *v42 = vrshrq_n_s32(vmulq_s32(v13, v9), 0xCuLL);
    v43 = (v42 + v8);
    *v43 = vrshrq_n_s32(vmulq_s32(v16, v9), 0xCuLL);
    v44 = (v43 + v8);
    *v44 = vrshrq_n_s32(vmulq_s32(v15, v9), 0xCuLL);
    v45 = (v44 + v8);
    *v45 = vrshrq_n_s32(vmulq_s32(v17, v9), 0xCuLL);
    v46 = (v45 + v8);
    *v46 = vrshrq_n_s32(vmulq_s32(v18, v9), 0xCuLL);
    v47 = (v46 + v8);
    *v47 = vrshrq_n_s32(vmulq_s32(v20, v9), 0xCuLL);
    v48 = (v47 + v8);
    *v48 = vrshrq_n_s32(vmulq_s32(v19, v9), 0xCuLL);
    v49 = (v48 + v8);
    *v49 = vrshrq_n_s32(vmulq_s32(v22, v9), 0xCuLL);
    v50 = (v49 + v8);
    *v50 = vrshrq_n_s32(vmulq_s32(v21, v9), 0xCuLL);
    v51 = (v50 + v8);
    *v51 = vrshrq_n_s32(vmulq_s32(v24, v9), 0xCuLL);
    v52 = (v51 + v8);
    *v52 = vrshrq_n_s32(vmulq_s32(v23, v9), 0xCuLL);
    v53 = (v52 + v8);
    *v53 = vrshrq_n_s32(vmulq_s32(v26, v9), 0xCuLL);
    v54 = (v53 + v8);
    *v54 = vrshrq_n_s32(vmulq_s32(v25, v9), 0xCuLL);
    v55 = (v54 + v8);
    *v55 = vrshrq_n_s32(vmulq_s32(v28, v9), 0xCuLL);
    v56 = (v55 + v8);
    *v56 = vrshrq_n_s32(vmulq_s32(v27, v9), 0xCuLL);
    v57 = (v56 + v8);
    *v57 = vrshrq_n_s32(vmulq_s32(v30, v9), 0xCuLL);
    v58 = (v57 + v8);
    *v58 = vrshrq_n_s32(vmulq_s32(v29, v9), 0xCuLL);
    v59 = (v58 + v8);
    *v59 = vrshrq_n_s32(vmulq_s32(v32, v9), 0xCuLL);
    v60 = (v59 + v8);
    *v60 = vrshrq_n_s32(vmulq_s32(v31, v9), 0xCuLL);
    v61 = (v60 + v8);
    *v61 = vrshrq_n_s32(vmulq_s32(v34, v9), 0xCuLL);
    v62 = (v61 + v8);
    *v62 = vrshrq_n_s32(vmulq_s32(v33, v9), 0xCuLL);
    v63 = (v62 + v8);
    *v63 = vrshrq_n_s32(vmulq_s32(v36, v9), 0xCuLL);
    v64 = (v63 + v8);
    *v64 = vrshrq_n_s32(vmulq_s32(v35, v9), 0xCuLL);
    v65 = (v64 + v8);
    *v65 = vrshrq_n_s32(vmulq_s32(v38, v9), 0xCuLL);
    v66 = (v65 + v8);
    *v66 = vrshrq_n_s32(vmulq_s32(v37, v9), 0xCuLL);
    v67 = (v66 + v8);
    *v67 = vrshrq_n_s32(vmulq_s32(v68, v9), 0xCuLL);
    *(v67 + 4 * a6) = vrshrq_n_s32(vmulq_s32(v69, v9), 0xCuLL);
    ++a2;
    v7 += a5;
    --v6;
  }

  while (v6);
  return result;
}

int32x4_t highbd_fdct8_col_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5)
{
  v5 = *a1;
  if (a5)
  {
    v5 = vrev64_s16(v5);
    v6 = vrev64_s16(*(a1 + 2 * a3));
    v7 = vrev64_s16(*(a1 + 4 * a3));
    v8 = vrev64_s16(*(a1 + 6 * a3));
    v9 = vrev64_s16(a1[a3]);
    v10 = vrev64_s16(*(a1 + 10 * a3));
    v11 = vrev64_s16(*(a1 + 12 * a3));
    v12 = vrev64_s16(*(a1 + 14 * a3));
  }

  else
  {
    v6 = *(a1 + 2 * a3);
    v7 = *(a1 + 4 * a3);
    v8 = *(a1 + 6 * a3);
    v9 = a1[a3];
    v10 = *(a1 + 10 * a3);
    v11 = *(a1 + 12 * a3);
    v12 = *(a1 + 14 * a3);
  }

  v13 = vshll_n_s16(v5, 2uLL);
  v14 = vshll_n_s16(v6, 2uLL);
  v15 = vshll_n_s16(v7, 2uLL);
  v16 = vshll_n_s16(v8, 2uLL);
  v17 = vshll_n_s16(v9, 2uLL);
  v18 = vshll_n_s16(v10, 2uLL);
  v19 = vshll_n_s16(v11, 2uLL);
  v20 = vshll_n_s16(v12, 2uLL);
  v21 = vaddq_s32(v13, v20);
  v22 = vaddq_s32(v14, v19);
  v23 = vaddq_s32(v15, v18);
  v24 = vaddq_s32(v16, v17);
  v25 = vsubq_s32(v16, v17);
  v26 = vsubq_s32(v15, v18);
  v27 = vsubq_s32(v14, v19);
  v28 = vsubq_s32(v13, v20);
  v29 = vaddq_s32(v21, v24);
  v30 = vaddq_s32(v22, v23);
  v31 = vsubq_s32(v22, v23);
  v32 = vdupq_n_s32(-a4);
  v33 = vsubq_s32(v21, v24);
  v22.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 298];
  v34 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v27, *v22.i8, 1), v26, *v22.i8, 0), v32);
  *v24.i8 = vneg_s32(*v22.i8);
  v35 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v27, v22.i32[0]), v26, *v24.i8, 1), v32);
  v36 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v30, v22.i32[0]), v29, *v22.i8, 1), v32);
  v37 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v30, *v24.i8, 1), v29, *v22.i8, 0), v32);
  v30.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 314];
  v38 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v31, *v30.i8, 1), v33, *v30.i8, 0), v32);
  v39 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v31, vneg_s32(*v30.i8).i32[0]), v33, *v30.i8, 1), v32);
  v40 = vaddq_s32(v35, v25);
  v41 = vsubq_s32(v25, v35);
  v42 = vsubq_s32(v28, v34);
  v43 = vaddq_s32(v28, v34);
  v33.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 322];
  a2[1] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v40, *v33.i8, 1), v43, *v33.i8, 0), v32);
  a2[7] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v40, vneg_s32(*v33.i8).i32[0]), v43, *v33.i8, 1), v32);
  v43.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 306];
  *a2 = v36;
  a2[2] = v38;
  a2[3] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v42, v43.i32[0]), v41, vneg_s32(*v43.i8), 1), v32);
  result = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v42, *v43.i8, 1), v41, *v43.i8, 0), v32);
  a2[4] = v37;
  a2[5] = result;
  a2[6] = v39;
  return result;
}

int32x4_t highbd_fadst8_col_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5)
{
  v5 = *a1;
  if (a5)
  {
    v5 = vrev64_s16(v5);
    v6 = vrev64_s16(*(a1 + 2 * a3));
    v7 = vrev64_s16(*(a1 + 4 * a3));
    v8 = vrev64_s16(*(a1 + 6 * a3));
    v9 = vrev64_s16(a1[a3]);
    v10 = vrev64_s16(*(a1 + 10 * a3));
    v11 = vrev64_s16(*(a1 + 12 * a3));
    v12 = vrev64_s16(*(a1 + 14 * a3));
  }

  else
  {
    v6 = *(a1 + 2 * a3);
    v7 = *(a1 + 4 * a3);
    v8 = *(a1 + 6 * a3);
    v9 = a1[a3];
    v10 = *(a1 + 10 * a3);
    v11 = *(a1 + 12 * a3);
    v12 = *(a1 + 14 * a3);
  }

  v13 = vshll_n_s16(v5, 2uLL);
  v14 = vshll_n_s16(v6, 2uLL);
  v15 = vshll_n_s16(v7, 2uLL);
  v16 = vshll_n_s16(v8, 2uLL);
  v17 = vshll_n_s16(v9, 2uLL);
  v18 = vshll_n_s16(v10, 2uLL);
  v19 = vshll_n_s16(v11, 2uLL);
  v20 = vshll_n_s16(v12, 2uLL);
  v21 = vdupq_n_s32(-a4);
  v22 = av1_cospi_arr_s32_data[33 * a4 - 298];
  v23 = vneg_s32(v22).u32[0];
  v24 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v16, v23), v17, v22, 0), v21);
  v25 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v16, v17), v23), v21);
  v26 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v15, v18), v22.i32[0]), v21);
  v27 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v18, v23), v15, v22, 0), v21);
  v28 = vaddq_s32(v24, v13);
  v29 = vsubq_s32(v25, v20);
  v30 = vsubq_s32(v13, v24);
  v31 = vaddq_s32(v25, v20);
  v32 = vsubq_s32(v27, v14);
  v33 = vaddq_s32(v26, v19);
  v34 = vaddq_s32(v27, v14);
  v35 = vsubq_s32(v19, v26);
  v26.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 314];
  v36 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v33, *v26.i8, 1), v32, *v26.i8, 0), v21);
  v24.i32[0] = vneg_s32(*v26.i8).u32[0];
  v37 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v33, v24.i32[0]), v32, *v26.i8, 1), v21);
  v38 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v34, *v26.i8, 1), v35, *v26.i8, 0), v21);
  v39 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v34, v24.i32[0]), v35, *v26.i8, 1), v21);
  v40 = vaddq_s32(v36, v28);
  v41 = vaddq_s32(v37, v29);
  v42 = vaddq_s32(v38, v30);
  v43 = vsubq_s32(v39, v31);
  v44 = vsubq_s32(v28, v36);
  v45 = vsubq_s32(v29, v37);
  v46 = vsubq_s32(v30, v38);
  v47 = vaddq_s32(v39, v31);
  v31.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 326];
  v48 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v41, *v31.i8, 1), v40, *v31.i8, 0), v21);
  v49 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v41, vneg_s32(*v31.i8).i32[0]), v40, *v31.i8, 1), v21);
  v31.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 310];
  v29.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 302];
  v50 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v44, *v29.i8, 1), v45, *v29.i8, 0), v21);
  v51 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v44, v29.i32[0]), v45, vneg_s32(*v29.i8), 1), v21);
  v45.i64[0] = av1_cospi_arr_s32_data[33 * a4 - 318];
  *a2 = v49;
  a2[1] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v47, vneg_s32(*v45.i8).i32[0]), v46, *v45.i8, 1), v21);
  a2[2] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v43, vneg_s32(*v31.i8).i32[0]), v42, *v31.i8, 1), v21);
  a2[3] = v50;
  a2[4] = v51;
  a2[5] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v43, *v31.i8, 1), v42, *v31.i8, 0), v21);
  result = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v47, *v45.i8, 1), v46, *v45.i8, 0), v21);
  a2[6] = result;
  a2[7] = v48;
  return result;
}

int32x4_t highbd_fidentity8_col_neon(int16x4_t *a1, int32x4_t *a2, int a3, uint64_t a4, int a5)
{
  v5 = *a1;
  if (a5)
  {
    v5 = vrev64_s16(v5);
    v6 = vrev64_s16(*(a1 + 2 * a3));
    v7 = vrev64_s16(*(a1 + 4 * a3));
    v8 = vrev64_s16(*(a1 + 6 * a3));
    v9 = vrev64_s16(a1[a3]);
    v10 = vrev64_s16(*(a1 + 10 * a3));
    v11 = vrev64_s16(*(a1 + 12 * a3));
    v12 = vrev64_s16(*(a1 + 14 * a3));
  }

  else
  {
    v6 = *(a1 + 2 * a3);
    v7 = *(a1 + 4 * a3);
    v8 = *(a1 + 6 * a3);
    v9 = a1[a3];
    v10 = *(a1 + 10 * a3);
    v11 = *(a1 + 12 * a3);
    v12 = *(a1 + 14 * a3);
  }

  *a2 = vshll_n_s16(v5, 3uLL);
  a2[1] = vshll_n_s16(v6, 3uLL);
  a2[2] = vshll_n_s16(v7, 3uLL);
  a2[3] = vshll_n_s16(v8, 3uLL);
  result = vshll_n_s16(v12, 3uLL);
  a2[4] = vshll_n_s16(v9, 3uLL);
  a2[5] = vshll_n_s16(v10, 3uLL);
  a2[6] = vshll_n_s16(v11, 3uLL);
  a2[7] = result;
  return result;
}

int32x4_t *highbd_fdct4_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = &av1_cospi_arr_s32_data[33 * a3 - 298];
  v7 = vld1q_dup_f32(v6);
  v8 = av1_cospi_arr_s32_data[33 * a3 - 314];
  v9 = vdupq_lane_s32(v8, 1);
  v10 = vdupq_lane_s32(v8, 0);
  v11 = vdupq_n_s32(-a3);
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = result + 2;
  v14 = vdupq_n_s32(0x16A1u);
  do
  {
    v15 = v13[-2];
    v16 = v13[-1];
    v17 = v13[1];
    v18 = vaddq_s32(v17, v15);
    v19 = vsubq_s32(v15, v17);
    v20 = vaddq_s32(*v13, v16);
    v21 = vsubq_s32(v16, *v13);
    v22 = vmulq_s32(v18, v7);
    v23 = vmulq_s32(v20, v7);
    *a2 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vaddq_s32(v23, v22), v11), v14), 0xCuLL);
    *(a2 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vmulq_s32(v19, v10), v21, v9), v11), v14), 0xCuLL);
    *(a2 + 8 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vsubq_s32(v22, v23), v11), v14), 0xCuLL);
    *(a2++ + 12 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v21, v10)), v19, v9), v11), v14), 0xCuLL);
    v13 += a5;
    --v12;
  }

  while (v12);
  return result;
}

int32x4_t *highbd_fadst4_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(&av1_sinpi_arr_data + 20 * a3 - 196);
  v7 = vdupq_lane_s32(*v6.i8, 0);
  v8 = vdupq_laneq_s32(v6, 3);
  v9 = vdupq_laneq_s32(v6, 2);
  v10 = vdupq_lane_s32(*v6.i8, 1);
  v11 = vdupq_n_s32(-a3);
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = result + 2;
  v14 = vdupq_n_s32(0x16A1u);
  do
  {
    v15 = v13[-2];
    v16 = v13[-1];
    v17 = vaddq_s32(v16, v15);
    v18 = v13[1];
    v19 = vmulq_s32(*v13, v9);
    v20 = vmlaq_s32(vmlaq_s32(vmulq_s32(v15, v7), v16, v10), v18, v8);
    v21 = vmlaq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v16, v7)), v15, v8), v18, v10);
    *a2 = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vaddq_s32(v20, v19), v11), v14), 0xCuLL);
    *(a2 + 4 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vmulq_s32(vsubq_s32(v17, v18), v9), v11), v14), 0xCuLL);
    *(a2 + 8 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vsubq_s32(v21, v19), v11), v14), 0xCuLL);
    *(a2++ + 12 * a6) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(vaddq_s32(vsubq_s32(v19, v20), v21), v11), v14), 0xCuLL);
    v13 += a5;
    --v12;
  }

  while (v12);
  return result;
}

int32x4_t *highbd_fidentity4_row_rect_many_neon(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  v7 = result + 2;
  v8 = vdupq_n_s32(0x16A1u);
  do
  {
    v9 = vrshrq_n_s32(vmulq_s32(vrshrq_n_s32(vmulq_s32(v7[-1], v8), 0xCuLL), v8), 0xCuLL);
    v10 = vrshrq_n_s32(vmulq_s32(vrshrq_n_s32(vmulq_s32(*v7, v8), 0xCuLL), v8), 0xCuLL);
    v11 = vmulq_s32(vrshrq_n_s32(vmulq_s32(v7[1], v8), 0xCuLL), v8);
    *a2 = vrshrq_n_s32(vmulq_s32(vrshrq_n_s32(vmulq_s32(v7[-2], v8), 0xCuLL), v8), 0xCuLL);
    *(a2 + 4 * a6) = v9;
    *(a2 + 8 * a6) = v10;
    *(a2++ + 12 * a6) = vrshrq_n_s32(v11, 0xCuLL);
    v7 += a5;
    --v6;
  }

  while (v6);
  return result;
}

int32x4_t highbd_fdct8_row_rect_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = a1[1];
  v6 = a1[6];
  v5 = a1[7];
  v7 = vaddq_s32(v5, *a1);
  v8 = vaddq_s32(v6, v4);
  v9 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v11 = a1[5];
  v13 = vaddq_s32(v11, v9);
  v14 = vaddq_s32(v12, v10);
  v15 = vsubq_s32(v10, v12);
  v16 = vsubq_s32(v9, v11);
  v17 = vsubq_s32(v4, v6);
  v18 = vsubq_s32(*a1, v5);
  v19 = vaddq_s32(v14, v7);
  v20 = vaddq_s32(v13, v8);
  v21 = vsubq_s32(v8, v13);
  v22 = vsubq_s32(v7, v14);
  v23 = vdupq_n_s32(-a3);
  v12.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 298];
  v24 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v17, *v12.i8, 1), v16, *v12.i8, 0), v23);
  *v14.i8 = vneg_s32(*v12.i8);
  v25 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v17, v12.i32[0]), v16, *v14.i8, 1), v23);
  v26 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v20, v12.i32[0]), v19, *v12.i8, 1), v23);
  v27 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v20, *v14.i8, 1), v19, *v12.i8, 0), v23);
  v20.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 314];
  v28 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v21, *v20.i8, 1), v22, *v20.i8, 0), v23);
  v29 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v21, vneg_s32(*v20.i8).i32[0]), v22, *v20.i8, 1), v23);
  v30 = vaddq_s32(v25, v15);
  v31 = vsubq_s32(v15, v25);
  v32 = vsubq_s32(v18, v24);
  v33 = vaddq_s32(v24, v18);
  v15.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 322];
  v34 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v30, *v15.i8, 1), v33, *v15.i8, 0), v23);
  v35 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v30, vneg_s32(*v15.i8).i32[0]), v33, *v15.i8, 1), v23);
  v30.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 306];
  v36 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v32, *v30.i8, 1), v31, *v30.i8, 0), v23);
  v37 = vmlaq_lane_s32(vmulq_n_s32(v32, v30.i32[0]), v31, vneg_s32(*v30.i8), 1);
  v38 = vdupq_n_s32(0x16A1u);
  result = vrshrq_n_s32(vmulq_s32(v35, v38), 0xCuLL);
  *a2 = vrshrq_n_s32(vmulq_s32(v26, v38), 0xCuLL);
  *(a2 + 4 * a4) = vrshrq_n_s32(vmulq_s32(v34, v38), 0xCuLL);
  *(a2 + 8 * a4) = vrshrq_n_s32(vmulq_s32(v28, v38), 0xCuLL);
  *(a2 + 12 * a4) = vrshrq_n_s32(vmulq_s32(vrshlq_s32(v37, v23), v38), 0xCuLL);
  a2[a4] = vrshrq_n_s32(vmulq_s32(v27, v38), 0xCuLL);
  *(a2 + 20 * a4) = vrshrq_n_s32(vmulq_s32(v36, v38), 0xCuLL);
  *(a2 + 24 * a4) = vrshrq_n_s32(vmulq_s32(v29, v38), 0xCuLL);
  *(a2 + 28 * a4) = result;
  return result;
}

int32x4_t highbd_fadst8_row_rect_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = vdupq_n_s32(-a3);
  v5 = a1[1];
  v7 = a1[6];
  v6 = a1[7];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = av1_cospi_arr_s32_data[33 * a3 - 298];
  v13 = vneg_s32(v12).u32[0];
  v14 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v8, v13), v10, v12, 0), v4);
  v15 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v10, v8), v13), v4);
  v16 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v11, v9), v12.i32[0]), v4);
  v17 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v11, v13), v9, v12, 0), v4);
  v18 = vaddq_s32(v14, *a1);
  v19 = vsubq_s32(v15, v6);
  v20 = vsubq_s32(*a1, v14);
  v21 = vaddq_s32(v15, v6);
  v22 = vsubq_s32(v17, v5);
  v23 = vaddq_s32(v16, v7);
  v24 = vaddq_s32(v17, v5);
  v25 = vsubq_s32(v7, v16);
  v17.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 314];
  v26 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v23, *v17.i8, 1), v22, *v17.i8, 0), v4);
  v14.i32[0] = vneg_s32(*v17.i8).u32[0];
  v27 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v23, v14.i32[0]), v22, *v17.i8, 1), v4);
  v28 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v24, *v17.i8, 1), v25, *v17.i8, 0), v4);
  v29 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v24, v14.i32[0]), v25, *v17.i8, 1), v4);
  v30 = vaddq_s32(v26, v18);
  v31 = vaddq_s32(v27, v19);
  v32 = vaddq_s32(v28, v20);
  v33 = vsubq_s32(v29, v21);
  v34 = vsubq_s32(v18, v26);
  v35 = vsubq_s32(v19, v27);
  v36 = vsubq_s32(v20, v28);
  v37 = vaddq_s32(v29, v21);
  v21.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 326];
  v38 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v31, *v21.i8, 1), v30, *v21.i8, 0), v4);
  v39 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v31, vneg_s32(*v21.i8).i32[0]), v30, *v21.i8, 1), v4);
  v30.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 310];
  v40 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v33, *v30.i8, 1), v32, *v30.i8, 0), v4);
  v41 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v33, vneg_s32(*v30.i8).i32[0]), v32, *v30.i8, 1), v4);
  v19.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 302];
  v42 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v34, *v19.i8, 1), v35, *v19.i8, 0), v4);
  v43 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v34, v19.i32[0]), v35, vneg_s32(*v19.i8), 1), v4);
  v34.i64[0] = av1_cospi_arr_s32_data[33 * a3 - 318];
  v44 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v37, *v34.i8, 1), v36, *v34.i8, 0), v4);
  v45 = vmlaq_lane_s32(vmulq_n_s32(v37, vneg_s32(*v34.i8).i32[0]), v36, *v34.i8, 1);
  v46 = vdupq_n_s32(0x16A1u);
  result = vrshrq_n_s32(vmulq_s32(vrshlq_s32(v45, v4), v46), 0xCuLL);
  *a2 = vrshrq_n_s32(vmulq_s32(v39, v46), 0xCuLL);
  *(a2 + 4 * a4) = result;
  *(a2 + 8 * a4) = vrshrq_n_s32(vmulq_s32(v41, v46), 0xCuLL);
  *(a2 + 12 * a4) = vrshrq_n_s32(vmulq_s32(v42, v46), 0xCuLL);
  a2[a4] = vrshrq_n_s32(vmulq_s32(v43, v46), 0xCuLL);
  *(a2 + 20 * a4) = vrshrq_n_s32(vmulq_s32(v40, v46), 0xCuLL);
  *(a2 + 24 * a4) = vrshrq_n_s32(vmulq_s32(v44, v46), 0xCuLL);
  *(a2 + 28 * a4) = vrshrq_n_s32(vmulq_s32(v38, v46), 0xCuLL);
  return result;
}

int32x4_t highbd_fidentity8_row_rect_neon(int32x4_t *a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v4 = vdupq_n_s32(0x2D42u);
  v5 = vrshrq_n_s32(vmulq_s32(*a1, v4), 0xCuLL);
  v6 = vrshrq_n_s32(vmulq_s32(a1[1], v4), 0xCuLL);
  v7 = vrshrq_n_s32(vmulq_s32(a1[2], v4), 0xCuLL);
  v8 = vrshrq_n_s32(vmulq_s32(a1[3], v4), 0xCuLL);
  v9 = vrshrq_n_s32(vmulq_s32(a1[4], v4), 0xCuLL);
  v10 = vrshrq_n_s32(vmulq_s32(a1[5], v4), 0xCuLL);
  v11 = vrshrq_n_s32(vmulq_s32(a1[6], v4), 0xCuLL);
  result = vrshrq_n_s32(vmulq_s32(a1[7], v4), 0xCuLL);
  *a2 = v5;
  *(a2 + 4 * a4) = v6;
  *(a2 + 8 * a4) = v7;
  *(a2 + 12 * a4) = v8;
  a2[a4] = v9;
  *(a2 + 20 * a4) = v10;
  *(a2 + 24 * a4) = v11;
  *(a2 + 28 * a4) = result;
  return result;
}

double highbd_fdct32_row_many_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = 16 * a5;
  v11 = 4 * a6;
  do
  {
    highbd_fdct32_x4_neon(a1, v48, a3);
    v12 = v48[1];
    *a2 = v48[0];
    v13 = (a2 + v11 + v11);
    v14 = v48[2];
    v15 = v48[3];
    *(a2 + v11) = v12;
    *v13 = v14;
    v16 = (v13 + v11);
    v17 = (v13 + v11 + v11);
    v18 = v48[4];
    v19 = v48[5];
    *v16 = v15;
    *v17 = v18;
    v20 = (v17 + v11);
    v21 = (v17 + v11 + v11);
    v22 = v48[6];
    v23 = v48[7];
    *v20 = v19;
    *v21 = v22;
    *(v21 + v11) = v23;
    v24 = (v21 + v11 + v11);
    *v24 = v48[8];
    v25 = (v24 + v11);
    *v25 = v48[9];
    v26 = (v25 + v11);
    *v26 = v48[10];
    v27 = (v26 + v11);
    *v27 = v48[11];
    v28 = (v27 + v11);
    *v28 = v48[12];
    v29 = (v28 + v11);
    *v29 = v48[13];
    v30 = (v29 + v11);
    *v30 = v48[14];
    v31 = (v30 + v11);
    *v31 = v48[15];
    v32 = (v31 + v11);
    *v32 = v48[16];
    v33 = (v32 + v11);
    *v33 = v48[17];
    v34 = (v33 + v11);
    *v34 = v48[18];
    v35 = (v34 + v11);
    *v35 = v48[19];
    v36 = (v35 + v11);
    *v36 = v48[20];
    v37 = (v36 + v11);
    *v37 = v48[21];
    v38 = (v37 + v11);
    *v38 = v48[22];
    v39 = (v38 + v11);
    *v39 = v48[23];
    v40 = (v39 + v11);
    *v40 = v48[24];
    v41 = (v40 + v11);
    *v41 = v48[25];
    v42 = (v41 + v11);
    *v42 = v48[26];
    v43 = (v42 + v11);
    *v43 = v48[27];
    v44 = (v43 + v11);
    *v44 = v48[28];
    v45 = (v44 + v11);
    *v45 = v48[29];
    v46 = (v45 + v11);
    *v46 = v48[30];
    result = *v49.i64;
    *(v46 + v11) = v49;
    ++a2;
    a1 = (a1 + v10);
    --v9;
  }

  while (v9);
  return result;
}

int32x4_t *highbd_fidentity32_row_many_neon(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  v7 = result + 16;
  v8 = 4 * a6;
  do
  {
    v9 = vshlq_n_s32(v7[-15], 2uLL);
    v10 = vshlq_n_s32(v7[-14], 2uLL);
    v11 = vshlq_n_s32(v7[-13], 2uLL);
    v12 = vshlq_n_s32(v7[-12], 2uLL);
    v13 = vshlq_n_s32(v7[-11], 2uLL);
    v14 = vshlq_n_s32(v7[-10], 2uLL);
    v15 = vshlq_n_s32(v7[-9], 2uLL);
    v16 = vshlq_n_s32(v7[-8], 2uLL);
    v17 = vshlq_n_s32(v7[-7], 2uLL);
    v18 = vshlq_n_s32(v7[-6], 2uLL);
    v19 = vshlq_n_s32(v7[-5], 2uLL);
    v20 = vshlq_n_s32(v7[-4], 2uLL);
    v21 = vshlq_n_s32(v7[-3], 2uLL);
    v22 = vshlq_n_s32(v7[-2], 2uLL);
    v23 = vshlq_n_s32(v7[-1], 2uLL);
    v24 = vshlq_n_s32(*v7, 2uLL);
    v25 = vshlq_n_s32(v7[1], 2uLL);
    v26 = vshlq_n_s32(v7[2], 2uLL);
    v27 = vshlq_n_s32(v7[3], 2uLL);
    v28 = vshlq_n_s32(v7[4], 2uLL);
    v29 = vshlq_n_s32(v7[5], 2uLL);
    v30 = vshlq_n_s32(v7[6], 2uLL);
    v31 = vshlq_n_s32(v7[7], 2uLL);
    v32 = vshlq_n_s32(v7[8], 2uLL);
    v33 = vshlq_n_s32(v7[9], 2uLL);
    v34 = vshlq_n_s32(v7[10], 2uLL);
    v35 = vshlq_n_s32(v7[11], 2uLL);
    v36 = vshlq_n_s32(v7[12], 2uLL);
    v37 = vshlq_n_s32(v7[13], 2uLL);
    v38 = vshlq_n_s32(v7[14], 2uLL);
    v39 = vshlq_n_s32(v7[15], 2uLL);
    *a2 = vshlq_n_s32(v7[-16], 2uLL);
    *(a2 + 4 * a6) = v9;
    v40 = (a2 + v8 + v8);
    *v40 = v10;
    v41 = (v40 + v8);
    *v41 = v11;
    v42 = (v41 + v8);
    *v42 = v12;
    v43 = (v42 + v8);
    *v43 = v13;
    v44 = (v43 + v8);
    *v44 = v14;
    v45 = (v44 + v8);
    *v45 = v15;
    v46 = (v45 + v8);
    *v46 = v16;
    v47 = (v46 + v8);
    *v47 = v17;
    v48 = (v47 + v8);
    *v48 = v18;
    v49 = (v48 + v8);
    *v49 = v19;
    v50 = (v49 + v8);
    *v50 = v20;
    v51 = (v50 + v8);
    *v51 = v21;
    v52 = (v51 + v8);
    *v52 = v22;
    v53 = (v52 + v8);
    *v53 = v23;
    v54 = (v53 + v8);
    *v54 = v24;
    v55 = (v54 + v8);
    *v55 = v25;
    v56 = (v55 + v8);
    *v56 = v26;
    v57 = (v56 + v8);
    *v57 = v27;
    v58 = (v57 + v8);
    *v58 = v28;
    v59 = (v58 + v8);
    *v59 = v29;
    v60 = (v59 + v8);
    *v60 = v30;
    v61 = (v60 + v8);
    *v61 = v31;
    v62 = (v61 + v8);
    *v62 = v32;
    v63 = (v62 + v8);
    *v63 = v33;
    v64 = (v63 + v8);
    *v64 = v34;
    v65 = (v64 + v8);
    *v65 = v35;
    v66 = (v65 + v8);
    *v66 = v36;
    v67 = (v66 + v8);
    *v67 = v37;
    v68 = (v67 + v8);
    ++a2;
    v7 += a5;
    *v68 = v38;
    *(v68 + 4 * a6) = v39;
    --v6;
  }

  while (v6);
  return result;
}

double av1_inv_txfm2d_add_4x4_neon(int32x4_t *a1, uint16x4_t *a2, int a3, int a4, int a5, double result)
{
  switch(a4)
  {
    case 0:
      v6 = a1[1];
      v7 = a1[3];
      v8 = 128 << a5;
      if (a5 <= 7)
      {
        v8 = 0x8000;
      }

      v9 = vdupq_n_s32(-v8);
      v10 = vdupq_n_s32(v8 - 1);
      v11 = vdupq_n_s32(0xB50u);
      v12.i64[0] = 0x80000000800;
      v12.i64[1] = 0x80000000800;
      v13.i64[0] = 0x80000000800;
      v13.i64[1] = 0x80000000800;
      v14 = vmlaq_s32(v13, *a1, v11);
      v15 = vmulq_s32(a1[2], v11);
      v16 = vaddq_s32(v15, v14);
      v17 = vsubq_s32(v14, v15);
      v18 = vdupq_n_s32(0x61Fu);
      v19 = vdupq_n_s32(0xFFFFF138);
      v20 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v7, v19), v6, v18), v12), 0xCuLL);
      v21 = vdupq_n_s32(0xEC8u);
      v22 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v7, v18), v6, v21), v12), 0xCuLL);
      v23 = vsubq_s32(vshrq_n_s32(v16, 0xCuLL), v22);
      v24 = vminq_s32(vmaxq_s32(vsraq_n_s32(v22, v16, 0xCuLL), v9), v10);
      v25 = vminq_s32(vmaxq_s32(v23, v9), v10);
      v26 = vminq_s32(vmaxq_s32(vsraq_n_s32(v20, v17, 0xCuLL), v9), v10);
      v27 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v17, 0xCuLL), v20), v9), v10);
      if (a5 <= 10)
      {
        v28 = 10;
      }

      else
      {
        v28 = a5;
      }

      v29 = 32 << v28;
      v30 = vdupq_n_s32(-v29);
      v31 = vdupq_n_s32(v29 - 1);
      v32 = vminq_s32(vmaxq_s32(v24, v30), v31);
      v33 = vminq_s32(vmaxq_s32(v25, v30), v31);
      v34 = vminq_s32(vmaxq_s32(v26, v30), v31);
      v35 = vminq_s32(vmaxq_s32(v27, v30), v31);
      v38 = vtrn1q_s32(v32, v34);
      v41 = vtrn2q_s32(v32, v34);
      v36 = vtrn1q_s32(v35, v33);
      v37 = vzip2q_s64(v38, v36);
      v38.i64[1] = v36.i64[0];
      v39 = vtrn2q_s32(v35, v33);
      v40 = vzip2q_s64(v41, v39);
      v41.i64[1] = v39.i64[0];
      if (a5 <= 9)
      {
        v42 = 0x8000;
      }

      else
      {
        v42 = 32 << a5;
      }

      v43 = vdupq_n_s32(-v42);
      v44 = vdupq_n_s32(v42 - 1);
      v45.i64[0] = 0x80000000800;
      v45.i64[1] = 0x80000000800;
      v46 = vmlaq_s32(v45, v38, v11);
      v47 = vmulq_s32(v37, v11);
      v48 = vaddq_s32(v46, v47);
      v49 = vsubq_s32(v46, v47);
      v50 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v40, v19), v41, v18), v12), 0xCuLL);
      v51 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, v21), v40, v18), v12), 0xCuLL);
      v52 = vsubq_s32(vshrq_n_s32(v48, 0xCuLL), v51);
      v53 = vminq_s32(vmaxq_s32(vsraq_n_s32(v51, v48, 0xCuLL), v43), v44);
      v54 = vminq_s32(vmaxq_s32(v52, v43), v44);
      v55 = vminq_s32(vmaxq_s32(vsraq_n_s32(v50, v49, 0xCuLL), v43), v44);
      v56 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v49, 0xCuLL), v50), v43), v44);
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_99;
      }

      goto LABEL_105;
    case 1:
      v493 = a1[1];
      v494 = a1[3];
      v495 = 128 << a5;
      if (a5 <= 7)
      {
        v495 = 0x8000;
      }

      v496 = vdupq_n_s32(-v495);
      v497 = vdupq_n_s32(v495 - 1);
      v498 = vdupq_n_s32(0xB50u);
      v499.i64[0] = 0x80000000800;
      v499.i64[1] = 0x80000000800;
      v500.i64[0] = 0x80000000800;
      v500.i64[1] = 0x80000000800;
      v501 = vmlaq_s32(v500, *a1, v498);
      v502 = vmulq_s32(a1[2], v498);
      v503 = vaddq_s32(v502, v501);
      v504 = vsubq_s32(v501, v502);
      v505 = vdupq_n_s32(0x61Fu);
      v506 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v494, vdupq_n_s32(0xFFFFF138)), v493, v505), v499), 0xCuLL);
      v507 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v494, v505), v493, vdupq_n_s32(0xEC8u)), v499), 0xCuLL);
      v508 = vsubq_s32(vshrq_n_s32(v503, 0xCuLL), v507);
      v509 = vminq_s32(vmaxq_s32(vsraq_n_s32(v507, v503, 0xCuLL), v496), v497);
      v510 = vminq_s32(vmaxq_s32(v508, v496), v497);
      v511 = vsubq_s32(vshrq_n_s32(v504, 0xCuLL), v506);
      v512 = vminq_s32(vmaxq_s32(vsraq_n_s32(v506, v504, 0xCuLL), v496), v497);
      v513 = vminq_s32(vmaxq_s32(v511, v496), v497);
      if (a5 <= 10)
      {
        v514 = 10;
      }

      else
      {
        v514 = a5;
      }

      v515 = 32 << v514;
      v516 = vdupq_n_s32(-v515);
      v517 = vdupq_n_s32(v515 - 1);
      v518 = vminq_s32(vmaxq_s32(v509, v516), v517);
      v519 = vminq_s32(vmaxq_s32(v510, v516), v517);
      v520 = vminq_s32(vmaxq_s32(v512, v516), v517);
      v521 = vminq_s32(vmaxq_s32(v513, v516), v517);
      v522 = vtrn1q_s32(v518, v520);
      v523 = vtrn2q_s32(v518, v520);
      v524 = vtrn1q_s32(v521, v519);
      v525 = vtrn2q_s32(v521, v519);
      v526 = vzip2q_s64(v522, v524);
      v522.i64[1] = v524.i64[0];
      v527 = vzip2q_s64(v523, v525);
      v523.i64[1] = v525.i64[0];
      v528 = vdupq_n_s32(0x9B2u);
      v529 = vdupq_n_s32(0xD10u);
      v530 = vmulq_s32(v523, v529);
      v531 = vaddq_s32(vsubq_s32(v522, v526), v527);
      v532 = vmlaq_s32(vmlaq_s32(vmulq_s32(v522, vdupq_n_s32(0x529u)), v527, v528), v526, vdupq_n_s32(0xEDBu));
      v533 = vmlaq_s32(vmlaq_s32(vmulq_s32(v526, vdupq_n_s32(0xFFFFFAD7)), v527, vdupq_n_s32(0xFFFFF125)), v522, v528);
      v216 = vmulq_s32(v531, v529);
      v534 = vaddq_s32(v532, v530);
      v218 = vaddq_s32(v533, v530);
      v219 = vaddq_s32(vsubq_s32(v533, v530), v532);
      v220 = vdupq_n_s64(0x8000uLL);
      v221 = vmlal_s32(v220, vmovn_s64(v534), 0x1000000010);
      v222 = vrev64q_s32(v534);
      goto LABEL_72;
    case 2:
      v243 = a1[2];
      v244 = a1[3];
      v245 = vdupq_n_s32(0x9B2u);
      v246 = vdupq_n_s32(0xD10u);
      v247 = vmulq_s32(a1[1], v246);
      v248 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, vdupq_n_s32(0x529u)), v243, vdupq_n_s32(0xEDBu)), v244, v245);
      v249 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v245), v243, vdupq_n_s32(0xFFFFFAD7)), v244, vdupq_n_s32(0xFFFFF125));
      v250 = vmulq_s32(vaddq_s32(vsubq_s32(*a1, v243), v244), v246);
      v251 = vaddq_s32(v248, v247);
      v252 = vaddq_s32(v249, v247);
      v253 = vdupq_n_s64(0x8000uLL);
      v254 = vextq_s8(vmlal_s32(v253, vmovn_s64(v251), 0x1000000010), 0, 2uLL);
      v255 = vextq_s8(vmlal_s32(v253, vmovn_s64(vrev64q_s32(v251)), 0x1000000010), 0, 2uLL);
      v256.i64[0] = vzip1q_s32(v254, v255).u64[0];
      v256.i64[1] = vzip2q_s32(v254, v255).u64[0];
      v257 = vaddq_s32(vsubq_s32(v249, v247), v248);
      v258 = vmlal_s32(v253, vmovn_s64(vrev64q_s32(v252)), 0x1000000010);
      v259 = vextq_s8(vmlal_s32(v253, vmovn_s64(v252), 0x1000000010), 0, 2uLL);
      v260 = vextq_s8(v258, 0, 2uLL);
      v261.i64[0] = vzip1q_s32(v259, v260).u64[0];
      v261.i64[1] = vzip2q_s32(v259, v260).u64[0];
      v262 = vmlal_s32(v253, vmovn_s64(vrev64q_s32(v250)), 0x1000000010);
      v263 = vextq_s8(vmlal_s32(v253, vmovn_s64(v250), 0x1000000010), 0, 2uLL);
      v264 = vextq_s8(v262, 0, 2uLL);
      v265.i64[0] = vzip1q_s32(v263, v264).u64[0];
      v265.i64[1] = vzip2q_s32(v263, v264).u64[0];
      v266 = vmlal_s32(v253, vmovn_s64(v257), 0x1000000010);
      v267 = vmlal_s32(v253, vmovn_s64(vrev64q_s32(v257)), 0x1000000010);
      v268 = vextq_s8(v266, 0, 2uLL);
      v269 = vextq_s8(v267, 0, 2uLL);
      v270.i64[0] = vzip1q_s32(v268, v269).u64[0];
      v270.i64[1] = vzip2q_s32(v268, v269).u64[0];
      if (a5 <= 10)
      {
        v271 = 10;
      }

      else
      {
        v271 = a5;
      }

      v272 = 32 << v271;
      v273 = vdupq_n_s32(-v272);
      v274 = vdupq_n_s32(v272 - 1);
      v275 = vminq_s32(vmaxq_s32(v256, v273), v274);
      v276 = vminq_s32(vmaxq_s32(v261, v273), v274);
      v277 = vminq_s32(vmaxq_s32(v265, v273), v274);
      v278 = vminq_s32(vmaxq_s32(v270, v273), v274);
      v283 = vtrn1q_s32(v275, v276);
      v279 = vtrn2q_s32(v275, v276);
      v280 = vtrn1q_s32(v277, v278);
      v281 = vtrn2q_s32(v277, v278);
      v282 = vzip2q_s64(v283, v280);
      v283.i64[1] = v280.i64[0];
      v284.i64[0] = v279.i64[0];
      v284.i64[1] = v281.i64[0];
      if (a5 <= 9)
      {
        v285 = 0x8000;
      }

      else
      {
        v285 = 32 << a5;
      }

      v286 = vdupq_n_s32(-v285);
      v287 = vdupq_n_s32(v285 - 1);
      v288 = vzip2q_s64(v279, v281);
      v289 = vdupq_n_s32(0xB50u);
      v290.i64[0] = 0x80000000800;
      v290.i64[1] = 0x80000000800;
      v291.i64[0] = 0x80000000800;
      v291.i64[1] = 0x80000000800;
      v292 = vmlaq_s32(v291, v283, v289);
      v293 = vmulq_s32(v282, v289);
      v294 = vaddq_s32(v292, v293);
      v295 = vsubq_s32(v292, v293);
      v296 = vdupq_n_s32(0x61Fu);
      v297 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v288, vdupq_n_s32(0xFFFFF138)), v284, v296), v290), 0xCuLL);
      v298 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v284, vdupq_n_s32(0xEC8u)), v288, v296), v290), 0xCuLL);
      v299 = vsubq_s32(vshrq_n_s32(v294, 0xCuLL), v298);
      v53 = vminq_s32(vmaxq_s32(vsraq_n_s32(v298, v294, 0xCuLL), v286), v287);
      v54 = vminq_s32(vmaxq_s32(v299, v286), v287);
      v300 = vsubq_s32(vshrq_n_s32(v295, 0xCuLL), v297);
      v55 = vminq_s32(vmaxq_s32(vsraq_n_s32(v297, v295, 0xCuLL), v286), v287);
      v56 = vminq_s32(vmaxq_s32(v300, v286), v287);
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    case 3:
      v362 = a1[2];
      v363 = a1[3];
      v364 = vdupq_n_s32(0x529u);
      v365 = vdupq_n_s32(0x9B2u);
      v366 = vdupq_n_s32(0xD10u);
      v367 = vmulq_s32(a1[1], v366);
      v368 = vdupq_n_s32(0xEDBu);
      v369 = vaddq_s32(vsubq_s32(*a1, v362), v363);
      v370 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v364), v362, v368), v363, v365);
      v371 = vdupq_n_s32(0xFFFFFAD7);
      v372 = vdupq_n_s32(0xFFFFF125);
      v373 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v365), v362, v371), v363, v372);
      v374 = vaddq_s32(v370, v367);
      v375 = vaddq_s32(v373, v367);
      v376 = vsubq_s32(v373, v367);
      v377 = vdupq_n_s64(0x8000uLL);
      v378 = vextq_s8(vmlal_s32(v377, vmovn_s64(v374), 0x1000000010), 0, 2uLL);
      v379 = vextq_s8(vmlal_s32(v377, vmovn_s64(vrev64q_s32(v374)), 0x1000000010), 0, 2uLL);
      v381.i64[0] = vzip1q_s32(v378, v379).u64[0];
      v380 = vmulq_s32(v369, v366);
      v381.i64[1] = vzip2q_s32(v378, v379).u64[0];
      v382 = vaddq_s32(v376, v370);
      v383 = vextq_s8(vmlal_s32(v377, vmovn_s64(v375), 0x1000000010), 0, 2uLL);
      v384 = vextq_s8(vmlal_s32(v377, vmovn_s64(vrev64q_s32(v375)), 0x1000000010), 0, 2uLL);
      v385.i64[0] = vzip1q_s32(v383, v384).u64[0];
      v385.i64[1] = vzip2q_s32(v383, v384).u64[0];
      v386 = vextq_s8(vmlal_s32(v377, vmovn_s64(v380), 0x1000000010), 0, 2uLL);
      v387 = vextq_s8(vmlal_s32(v377, vmovn_s64(vrev64q_s32(v380)), 0x1000000010), 0, 2uLL);
      v388.i64[0] = vzip1q_s32(v386, v387).u64[0];
      v388.i64[1] = vzip2q_s32(v386, v387).u64[0];
      v389 = vmlal_s32(v377, vmovn_s64(vrev64q_s32(v382)), 0x1000000010);
      v390 = vextq_s8(vmlal_s32(v377, vmovn_s64(v382), 0x1000000010), 0, 2uLL);
      v391 = vextq_s8(v389, 0, 2uLL);
      v392.i64[0] = vzip1q_s32(v390, v391).u64[0];
      v392.i64[1] = vzip2q_s32(v390, v391).u64[0];
      if (a5 <= 10)
      {
        v393 = 10;
      }

      else
      {
        v393 = a5;
      }

      v394 = 32 << v393;
      v395 = vdupq_n_s32(-v394);
      v396 = vdupq_n_s32(v394 - 1);
      v397 = vminq_s32(vmaxq_s32(v381, v395), v396);
      v398 = vminq_s32(vmaxq_s32(v385, v395), v396);
      v399 = vminq_s32(vmaxq_s32(v388, v395), v396);
      v400 = vminq_s32(vmaxq_s32(v392, v395), v396);
      v401 = vtrn1q_s32(v397, v398);
      v402 = vtrn2q_s32(v397, v398);
      v403 = vtrn1q_s32(v399, v400);
      v404 = vtrn2q_s32(v399, v400);
      v405 = vzip2q_s64(v401, v403);
      v401.i64[1] = v403.i64[0];
      v406 = vzip2q_s64(v402, v404);
      v402.i64[1] = v404.i64[0];
      v407 = vmulq_s32(v402, v366);
      v408 = vmlaq_s32(vmlaq_s32(vmulq_s32(v401, v364), v406, v365), v405, v368);
      v409 = vmlaq_s32(vmlaq_s32(vmulq_s32(v405, v371), v406, v372), v401, v365);
      v410 = vmulq_s32(vaddq_s32(vsubq_s32(v401, v405), v406), v366);
      v411 = vaddq_s32(v408, v407);
      v412 = vaddq_s32(v409, v407);
      v413 = vaddq_s32(vsubq_s32(v409, v407), v408);
      v414 = vextq_s8(vmlal_s32(v377, vmovn_s64(v411), 0x1000000010), 0, 2uLL);
      v415 = vextq_s8(vmlal_s32(v377, vmovn_s64(vrev64q_s32(v411)), 0x1000000010), 0, 2uLL);
      v53.i64[0] = vzip1q_s32(v414, v415).u64[0];
      v53.i64[1] = vzip2q_s32(v414, v415).u64[0];
      v416 = vextq_s8(vmlal_s32(v377, vmovn_s64(v412), 0x1000000010), 0, 2uLL);
      v417 = vextq_s8(vmlal_s32(v377, vmovn_s64(vrev64q_s32(v412)), 0x1000000010), 0, 2uLL);
      v55.i64[0] = vzip1q_s32(v416, v417).u64[0];
      v55.i64[1] = vzip2q_s32(v416, v417).u64[0];
      v418 = vextq_s8(vmlal_s32(v377, vmovn_s64(v410), 0x1000000010), 0, 2uLL);
      v419 = vextq_s8(vmlal_s32(v377, vmovn_s64(vrev64q_s32(v410)), 0x1000000010), 0, 2uLL);
      v56.i64[0] = vzip1q_s32(v418, v419).u64[0];
      v56.i64[1] = vzip2q_s32(v418, v419).u64[0];
      v420 = vmlal_s32(v377, vmovn_s64(v413), 0x1000000010);
      v421 = vmlal_s32(v377, vmovn_s64(vrev64q_s32(v413)), 0x1000000010);
      v422 = vextq_s8(v420, 0, 2uLL);
      v423 = vextq_s8(v421, 0, 2uLL);
      v54.i64[0] = vzip1q_s32(v422, v423).u64[0];
      v54.i64[1] = vzip2q_s32(v422, v423).u64[0];
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    case 4:
      v136 = a1[1];
      v137 = a1[3];
      v138 = 128 << a5;
      if (a5 <= 7)
      {
        v138 = 0x8000;
      }

      v139 = vdupq_n_s32(-v138);
      v140 = vdupq_n_s32(v138 - 1);
      v141 = vdupq_n_s32(0xB50u);
      v142.i64[0] = 0x80000000800;
      v142.i64[1] = 0x80000000800;
      v143.i64[0] = 0x80000000800;
      v143.i64[1] = 0x80000000800;
      v144 = vmlaq_s32(v143, *a1, v141);
      v145 = vmulq_s32(a1[2], v141);
      v146 = vaddq_s32(v145, v144);
      v147 = vsubq_s32(v144, v145);
      v148 = vdupq_n_s32(0x61Fu);
      v149 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v137, vdupq_n_s32(0xFFFFF138)), v136, v148), v142), 0xCuLL);
      v150 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v137, v148), v136, vdupq_n_s32(0xEC8u)), v142), 0xCuLL);
      v151 = vsubq_s32(vshrq_n_s32(v146, 0xCuLL), v150);
      v152 = vminq_s32(vmaxq_s32(vsraq_n_s32(v150, v146, 0xCuLL), v139), v140);
      v153 = vminq_s32(vmaxq_s32(v151, v139), v140);
      v154 = vsubq_s32(vshrq_n_s32(v147, 0xCuLL), v149);
      v155 = vminq_s32(vmaxq_s32(vsraq_n_s32(v149, v147, 0xCuLL), v139), v140);
      v156 = vminq_s32(vmaxq_s32(v154, v139), v140);
      if (a5 <= 10)
      {
        v157 = 10;
      }

      else
      {
        v157 = a5;
      }

      v158 = 32 << v157;
      v159 = vdupq_n_s32(-v158);
      v160 = vdupq_n_s32(v158 - 1);
      v161 = vminq_s32(vmaxq_s32(v152, v159), v160);
      v162 = vminq_s32(vmaxq_s32(v153, v159), v160);
      v163 = vminq_s32(vmaxq_s32(v155, v159), v160);
      v164 = vminq_s32(vmaxq_s32(v156, v159), v160);
      v165 = vtrn1q_s32(v161, v163);
      v166 = vtrn2q_s32(v161, v163);
      v167 = vtrn1q_s32(v164, v162);
      v168 = vtrn2q_s32(v164, v162);
      v169 = vzip2q_s64(v165, v167);
      v165.i64[1] = v167.i64[0];
      v170 = vzip2q_s64(v166, v168);
      v166.i64[1] = v168.i64[0];
      v171 = vdupq_n_s32(0x9B2u);
      v172 = vdupq_n_s32(0xD10u);
      v173 = vmulq_s32(v166, v172);
      v174 = vaddq_s32(vsubq_s32(v165, v169), v170);
      v175 = vmlaq_s32(vmlaq_s32(vmulq_s32(v165, vdupq_n_s32(0x529u)), v170, v171), v169, vdupq_n_s32(0xEDBu));
      v176 = vmlaq_s32(vmlaq_s32(vmulq_s32(v169, vdupq_n_s32(0xFFFFFAD7)), v170, vdupq_n_s32(0xFFFFF125)), v165, v171);
      v177 = vmulq_s32(v174, v172);
      v178 = vaddq_s32(v175, v173);
      v179 = vaddq_s32(v176, v173);
      v180 = vaddq_s32(vsubq_s32(v176, v173), v175);
      v181 = vdupq_n_s64(0x8000uLL);
      v182 = vextq_s8(vmlal_s32(v181, vmovn_s64(v178), 0x1000000010), 0, 2uLL);
      v183 = vextq_s8(vmlal_s32(v181, vmovn_s64(vrev64q_s32(v178)), 0x1000000010), 0, 2uLL);
      v54.i64[0] = vzip1q_s32(v182, v183).u64[0];
      v54.i64[1] = vzip2q_s32(v182, v183).u64[0];
      v184 = vextq_s8(vmlal_s32(v181, vmovn_s64(v179), 0x1000000010), 0, 2uLL);
      v185 = vextq_s8(vmlal_s32(v181, vmovn_s64(vrev64q_s32(v179)), 0x1000000010), 0, 2uLL);
      v56.i64[0] = vzip1q_s32(v184, v185).u64[0];
      v56.i64[1] = vzip2q_s32(v184, v185).u64[0];
      v186 = vextq_s8(vmlal_s32(v181, vmovn_s64(v177), 0x1000000010), 0, 2uLL);
      v187 = vextq_s8(vmlal_s32(v181, vmovn_s64(vrev64q_s32(v177)), 0x1000000010), 0, 2uLL);
      v55.i64[0] = vzip1q_s32(v186, v187).u64[0];
      v55.i64[1] = vzip2q_s32(v186, v187).u64[0];
      v188 = vextq_s8(vmlal_s32(v181, vmovn_s64(v180), 0x1000000010), 0, 2uLL);
      v189 = vextq_s8(vmlal_s32(v181, vmovn_s64(vrev64q_s32(v180)), 0x1000000010), 0, 2uLL);
      v53.i64[0] = vzip1q_s32(v188, v189).u64[0];
      v53.i64[1] = vzip2q_s32(v188, v189).u64[0];
      v98 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    case 5:
      v543 = a1[2];
      v544 = a1[3];
      v545 = vdupq_n_s32(0x9B2u);
      v546 = vdupq_n_s32(0xD10u);
      v547 = vmulq_s32(a1[1], v546);
      v548 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, vdupq_n_s32(0x529u)), v543, vdupq_n_s32(0xEDBu)), v544, v545);
      v549 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v545), v543, vdupq_n_s32(0xFFFFFAD7)), v544, vdupq_n_s32(0xFFFFF125));
      v550 = vmulq_s32(vaddq_s32(vsubq_s32(*a1, v543), v544), v546);
      v551 = vaddq_s32(v548, v547);
      v552 = vaddq_s32(v549, v547);
      v553 = vdupq_n_s64(0x8000uLL);
      v554 = vextq_s8(vmlal_s32(v553, vmovn_s64(v551), 0x1000000010), 0, 2uLL);
      v555 = vextq_s8(vmlal_s32(v553, vmovn_s64(vrev64q_s32(v551)), 0x1000000010), 0, 2uLL);
      v556.i64[0] = vzip1q_s32(v554, v555).u64[0];
      v556.i64[1] = vzip2q_s32(v554, v555).u64[0];
      v557 = vaddq_s32(vsubq_s32(v549, v547), v548);
      v558 = vmlal_s32(v553, vmovn_s64(vrev64q_s32(v552)), 0x1000000010);
      v559 = vextq_s8(vmlal_s32(v553, vmovn_s64(v552), 0x1000000010), 0, 2uLL);
      v560 = vextq_s8(v558, 0, 2uLL);
      v561.i64[0] = vzip1q_s32(v559, v560).u64[0];
      v561.i64[1] = vzip2q_s32(v559, v560).u64[0];
      v562 = vmlal_s32(v553, vmovn_s64(vrev64q_s32(v550)), 0x1000000010);
      v563 = vextq_s8(vmlal_s32(v553, vmovn_s64(v550), 0x1000000010), 0, 2uLL);
      v564 = vextq_s8(v562, 0, 2uLL);
      v565.i64[0] = vzip1q_s32(v563, v564).u64[0];
      v565.i64[1] = vzip2q_s32(v563, v564).u64[0];
      v566 = vmlal_s32(v553, vmovn_s64(v557), 0x1000000010);
      v567 = vmlal_s32(v553, vmovn_s64(vrev64q_s32(v557)), 0x1000000010);
      v568 = vextq_s8(v566, 0, 2uLL);
      v569 = vextq_s8(v567, 0, 2uLL);
      v570.i64[0] = vzip1q_s32(v568, v569).u64[0];
      v570.i64[1] = vzip2q_s32(v568, v569).u64[0];
      if (a5 <= 10)
      {
        v571 = 10;
      }

      else
      {
        v571 = a5;
      }

      v572 = 32 << v571;
      v573 = vdupq_n_s32(-v572);
      v574 = vdupq_n_s32(v572 - 1);
      v575 = vminq_s32(vmaxq_s32(v556, v573), v574);
      v576 = vminq_s32(vmaxq_s32(v561, v573), v574);
      v577 = vminq_s32(vmaxq_s32(v565, v573), v574);
      v578 = vminq_s32(vmaxq_s32(v570, v573), v574);
      v583 = vtrn1q_s32(v575, v576);
      v579 = vtrn2q_s32(v575, v576);
      v580 = vtrn1q_s32(v577, v578);
      v581 = vtrn2q_s32(v577, v578);
      v582 = vzip2q_s64(v583, v580);
      v583.i64[1] = v580.i64[0];
      v584.i64[0] = v579.i64[0];
      v584.i64[1] = v581.i64[0];
      if (a5 <= 9)
      {
        v585 = 0x8000;
      }

      else
      {
        v585 = 32 << a5;
      }

      v586 = vdupq_n_s32(-v585);
      v587 = vdupq_n_s32(v585 - 1);
      v588 = vzip2q_s64(v579, v581);
      v589 = vdupq_n_s32(0xB50u);
      v590.i64[0] = 0x80000000800;
      v590.i64[1] = 0x80000000800;
      v591.i64[0] = 0x80000000800;
      v591.i64[1] = 0x80000000800;
      v592 = vmlaq_s32(v591, v583, v589);
      v593 = vmulq_s32(v582, v589);
      v594 = vaddq_s32(v592, v593);
      v595 = vsubq_s32(v592, v593);
      v596 = vdupq_n_s32(0x61Fu);
      v597 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v588, vdupq_n_s32(0xFFFFF138)), v584, v596), v590), 0xCuLL);
      v598 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v584, vdupq_n_s32(0xEC8u)), v588, v596), v590), 0xCuLL);
      v599 = vsubq_s32(vshrq_n_s32(v594, 0xCuLL), v598);
      v345 = vminq_s32(vmaxq_s32(vsraq_n_s32(v598, v594, 0xCuLL), v586), v587);
      v348 = vminq_s32(vmaxq_s32(v599, v586), v587);
      v600 = vsubq_s32(vshrq_n_s32(v595, 0xCuLL), v597);
      v346 = vminq_s32(vmaxq_s32(vsraq_n_s32(v597, v595, 0xCuLL), v586), v587);
      v347 = vminq_s32(vmaxq_s32(v600, v586), v587);
      v349 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    case 6:
      v645 = a1[2];
      v646 = a1[3];
      v647 = vdupq_n_s32(0x529u);
      v648 = vdupq_n_s32(0x9B2u);
      v649 = vdupq_n_s32(0xD10u);
      v650 = vmulq_s32(a1[1], v649);
      v651 = vdupq_n_s32(0xEDBu);
      v652 = vaddq_s32(vsubq_s32(*a1, v645), v646);
      v653 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v647), v645, v651), v646, v648);
      v654 = vdupq_n_s32(0xFFFFFAD7);
      v655 = vdupq_n_s32(0xFFFFF125);
      v656 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v648), v645, v654), v646, v655);
      v657 = vaddq_s32(v653, v650);
      v658 = vaddq_s32(v656, v650);
      v659 = vsubq_s32(v656, v650);
      v660 = vdupq_n_s64(0x8000uLL);
      v661 = vextq_s8(vmlal_s32(v660, vmovn_s64(v657), 0x1000000010), 0, 2uLL);
      v662 = vextq_s8(vmlal_s32(v660, vmovn_s64(vrev64q_s32(v657)), 0x1000000010), 0, 2uLL);
      v664.i64[0] = vzip1q_s32(v661, v662).u64[0];
      v663 = vmulq_s32(v652, v649);
      v664.i64[1] = vzip2q_s32(v661, v662).u64[0];
      v665 = vaddq_s32(v659, v653);
      v666 = vextq_s8(vmlal_s32(v660, vmovn_s64(v658), 0x1000000010), 0, 2uLL);
      v667 = vextq_s8(vmlal_s32(v660, vmovn_s64(vrev64q_s32(v658)), 0x1000000010), 0, 2uLL);
      v668.i64[0] = vzip1q_s32(v666, v667).u64[0];
      v668.i64[1] = vzip2q_s32(v666, v667).u64[0];
      v669 = vextq_s8(vmlal_s32(v660, vmovn_s64(v663), 0x1000000010), 0, 2uLL);
      v670 = vextq_s8(vmlal_s32(v660, vmovn_s64(vrev64q_s32(v663)), 0x1000000010), 0, 2uLL);
      v671.i64[0] = vzip1q_s32(v669, v670).u64[0];
      v671.i64[1] = vzip2q_s32(v669, v670).u64[0];
      v672 = vmlal_s32(v660, vmovn_s64(vrev64q_s32(v665)), 0x1000000010);
      v673 = vextq_s8(vmlal_s32(v660, vmovn_s64(v665), 0x1000000010), 0, 2uLL);
      v674 = vextq_s8(v672, 0, 2uLL);
      v675.i64[0] = vzip1q_s32(v673, v674).u64[0];
      v675.i64[1] = vzip2q_s32(v673, v674).u64[0];
      if (a5 <= 10)
      {
        v676 = 10;
      }

      else
      {
        v676 = a5;
      }

      v677 = 32 << v676;
      v678 = vdupq_n_s32(-v677);
      v679 = vdupq_n_s32(v677 - 1);
      v680 = vminq_s32(vmaxq_s32(v664, v678), v679);
      v681 = vminq_s32(vmaxq_s32(v668, v678), v679);
      v682 = vminq_s32(vmaxq_s32(v671, v678), v679);
      v683 = vminq_s32(vmaxq_s32(v675, v678), v679);
      v684 = vtrn1q_s32(v680, v681);
      v685 = vtrn2q_s32(v680, v681);
      v686 = vtrn1q_s32(v682, v683);
      v687 = vtrn2q_s32(v682, v683);
      v688 = vzip2q_s64(v684, v686);
      v684.i64[1] = v686.i64[0];
      v689 = vzip2q_s64(v685, v687);
      v685.i64[1] = v687.i64[0];
      v690 = vmulq_s32(v685, v649);
      v691 = vmlaq_s32(vmlaq_s32(vmulq_s32(v684, v647), v689, v648), v688, v651);
      v692 = vmlaq_s32(vmlaq_s32(vmulq_s32(v688, v654), v689, v655), v684, v648);
      v693 = vmulq_s32(vaddq_s32(vsubq_s32(v684, v688), v689), v649);
      v694 = vaddq_s32(v691, v690);
      v695 = vaddq_s32(v692, v690);
      v696 = vaddq_s32(vsubq_s32(v692, v690), v691);
      v697 = vextq_s8(vmlal_s32(v660, vmovn_s64(v694), 0x1000000010), 0, 2uLL);
      v698 = vextq_s8(vmlal_s32(v660, vmovn_s64(vrev64q_s32(v694)), 0x1000000010), 0, 2uLL);
      v699.i64[0] = vzip1q_s32(v697, v698).u64[0];
      v699.i64[1] = vzip2q_s32(v697, v698).u64[0];
      v700 = vextq_s8(vmlal_s32(v660, vmovn_s64(v695), 0x1000000010), 0, 2uLL);
      v701 = vextq_s8(vmlal_s32(v660, vmovn_s64(vrev64q_s32(v695)), 0x1000000010), 0, 2uLL);
      v702.i64[0] = vzip1q_s32(v700, v701).u64[0];
      v702.i64[1] = vzip2q_s32(v700, v701).u64[0];
      v703 = vmlal_s32(v660, vmovn_s64(vrev64q_s32(v693)), 0x1000000010);
      v704 = vextq_s8(vmlal_s32(v660, vmovn_s64(v693), 0x1000000010), 0, 2uLL);
      v705 = vextq_s8(v703, 0, 2uLL);
      v706.i64[0] = vzip1q_s32(v704, v705).u64[0];
      v706.i64[1] = vzip2q_s32(v704, v705).u64[0];
      v707 = vextq_s8(vmlal_s32(v660, vmovn_s64(v696), 0x1000000010), 0, 2uLL);
      v708 = vextq_s8(vmlal_s32(v660, vmovn_s64(vrev64q_s32(v696)), 0x1000000010), 0, 2uLL);
      v709.i64[0] = vzip1q_s32(v707, v708).u64[0];
      v709.i64[1] = vzip2q_s32(v707, v708).u64[0];
      if (*(av1_inv_txfm_shift_ls + 1))
      {
        v710 = vdupq_n_s32(*(av1_inv_txfm_shift_ls + 1));
        v699 = vrshlq_s32(v699, v710);
        v702 = vrshlq_s32(v702, v710);
        v706 = vrshlq_s32(v706, v710);
        v709 = vrshlq_s32(v709, v710);
      }

      v351 = *a2;
      v352 = (a2 + 2 * a3);
      v353 = *v352;
      v354 = (a2 + 4 * a3);
      v355 = *v354;
      v356 = (a2 + 6 * a3);
      v357 = *v356;
      v711 = vrev64q_s32(v699);
      v54 = vextq_s8(v711, v711, 8uLL);
      v712 = vrev64q_s32(v702);
      v56 = vextq_s8(v712, v712, 8uLL);
      v713 = vrev64q_s32(v706);
      v55 = vextq_s8(v713, v713, 8uLL);
      v714 = vrev64q_s32(v709);
      v53 = vextq_s8(v714, v714, 8uLL);
      goto LABEL_106;
    case 7:
      v424 = a1[2];
      v425 = a1[3];
      v426 = vdupq_n_s32(0x529u);
      v427 = vdupq_n_s32(0x9B2u);
      v428 = vdupq_n_s32(0xD10u);
      v429 = vmulq_s32(a1[1], v428);
      v430 = vdupq_n_s32(0xEDBu);
      v431 = vaddq_s32(vsubq_s32(*a1, v424), v425);
      v432 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v426), v424, v430), v425, v427);
      v433 = vdupq_n_s32(0xFFFFFAD7);
      v434 = vdupq_n_s32(0xFFFFF125);
      v435 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v427), v424, v433), v425, v434);
      v436 = vaddq_s32(v432, v429);
      v437 = vaddq_s32(v435, v429);
      v438 = vsubq_s32(v435, v429);
      v439 = vdupq_n_s64(0x8000uLL);
      v440 = vextq_s8(vmlal_s32(v439, vmovn_s64(v436), 0x1000000010), 0, 2uLL);
      v441 = vextq_s8(vmlal_s32(v439, vmovn_s64(vrev64q_s32(v436)), 0x1000000010), 0, 2uLL);
      v443.i64[0] = vzip1q_s32(v440, v441).u64[0];
      v442 = vmulq_s32(v431, v428);
      v443.i64[1] = vzip2q_s32(v440, v441).u64[0];
      v444 = vaddq_s32(v438, v432);
      v445 = vextq_s8(vmlal_s32(v439, vmovn_s64(v437), 0x1000000010), 0, 2uLL);
      v446 = vextq_s8(vmlal_s32(v439, vmovn_s64(vrev64q_s32(v437)), 0x1000000010), 0, 2uLL);
      v447.i64[0] = vzip1q_s32(v445, v446).u64[0];
      v447.i64[1] = vzip2q_s32(v445, v446).u64[0];
      v448 = vextq_s8(vmlal_s32(v439, vmovn_s64(v442), 0x1000000010), 0, 2uLL);
      v449 = vextq_s8(vmlal_s32(v439, vmovn_s64(vrev64q_s32(v442)), 0x1000000010), 0, 2uLL);
      v450.i64[0] = vzip1q_s32(v448, v449).u64[0];
      v450.i64[1] = vzip2q_s32(v448, v449).u64[0];
      v451 = vmlal_s32(v439, vmovn_s64(vrev64q_s32(v444)), 0x1000000010);
      v452 = vextq_s8(vmlal_s32(v439, vmovn_s64(v444), 0x1000000010), 0, 2uLL);
      v453 = vextq_s8(v451, 0, 2uLL);
      v454.i64[0] = vzip1q_s32(v452, v453).u64[0];
      v454.i64[1] = vzip2q_s32(v452, v453).u64[0];
      if (a5 <= 10)
      {
        v455 = 10;
      }

      else
      {
        v455 = a5;
      }

      v456 = 32 << v455;
      v457 = vdupq_n_s32(-v456);
      v458 = vdupq_n_s32(v456 - 1);
      v459 = vminq_s32(vmaxq_s32(v443, v457), v458);
      v460 = vminq_s32(vmaxq_s32(v447, v457), v458);
      v461 = vminq_s32(vmaxq_s32(v450, v457), v458);
      v462 = vminq_s32(vmaxq_s32(v454, v457), v458);
      v463 = vtrn1q_s32(v459, v460);
      v464 = vtrn2q_s32(v459, v460);
      v465 = vtrn1q_s32(v461, v462);
      v466 = vtrn2q_s32(v461, v462);
      v467 = vzip2q_s64(v463, v465);
      v463.i64[1] = v465.i64[0];
      v468 = vzip2q_s64(v464, v466);
      v464.i64[1] = v466.i64[0];
      v469 = vmulq_s32(v464, v428);
      v470 = vmlaq_s32(vmlaq_s32(vmulq_s32(v463, v426), v468, v427), v467, v430);
      v471 = vmlaq_s32(vmlaq_s32(vmulq_s32(v467, v433), v468, v434), v463, v427);
      v472 = vmulq_s32(vaddq_s32(vsubq_s32(v463, v467), v468), v428);
      v473 = vaddq_s32(v470, v469);
      v474 = vaddq_s32(v471, v469);
      v475 = vaddq_s32(vsubq_s32(v471, v469), v470);
      v476 = vextq_s8(vmlal_s32(v439, vmovn_s64(v473), 0x1000000010), 0, 2uLL);
      v477 = vextq_s8(vmlal_s32(v439, vmovn_s64(vrev64q_s32(v473)), 0x1000000010), 0, 2uLL);
      v478.i64[0] = vzip1q_s32(v476, v477).u64[0];
      v478.i64[1] = vzip2q_s32(v476, v477).u64[0];
      v479 = vextq_s8(vmlal_s32(v439, vmovn_s64(v474), 0x1000000010), 0, 2uLL);
      v480 = vextq_s8(vmlal_s32(v439, vmovn_s64(vrev64q_s32(v474)), 0x1000000010), 0, 2uLL);
      v481.i64[0] = vzip1q_s32(v479, v480).u64[0];
      v481.i64[1] = vzip2q_s32(v479, v480).u64[0];
      v482 = vmlal_s32(v439, vmovn_s64(vrev64q_s32(v472)), 0x1000000010);
      v483 = vextq_s8(vmlal_s32(v439, vmovn_s64(v472), 0x1000000010), 0, 2uLL);
      v484 = vextq_s8(v482, 0, 2uLL);
      v485.i64[0] = vzip1q_s32(v483, v484).u64[0];
      v485.i64[1] = vzip2q_s32(v483, v484).u64[0];
      v486 = vextq_s8(vmlal_s32(v439, vmovn_s64(v475), 0x1000000010), 0, 2uLL);
      v487 = vextq_s8(vmlal_s32(v439, vmovn_s64(vrev64q_s32(v475)), 0x1000000010), 0, 2uLL);
      v488.i64[0] = vzip1q_s32(v486, v487).u64[0];
      v488.i64[1] = vzip2q_s32(v486, v487).u64[0];
      if (*(av1_inv_txfm_shift_ls + 1))
      {
        v489 = vdupq_n_s32(*(av1_inv_txfm_shift_ls + 1));
        v478 = vrshlq_s32(v478, v489);
        v481 = vrshlq_s32(v481, v489);
        v485 = vrshlq_s32(v485, v489);
        v488 = vrshlq_s32(v488, v489);
      }

      v351 = *a2;
      v352 = (a2 + 2 * a3);
      v353 = *v352;
      v354 = (a2 + 4 * a3);
      v355 = *v354;
      v356 = (a2 + 6 * a3);
      v357 = *v356;
      v490 = vrev64q_s32(v478);
      v53 = vextq_s8(v490, v490, 8uLL);
      v491 = vrev64q_s32(v481);
      v55 = vextq_s8(v491, v491, 8uLL);
      v492 = vrev64q_s32(v485);
      v56 = vextq_s8(v492, v492, 8uLL);
      v361 = vrev64q_s32(v488);
      goto LABEL_65;
    case 8:
      v753 = a1[2];
      v754 = a1[3];
      v755 = vdupq_n_s32(0x529u);
      v756 = vdupq_n_s32(0x9B2u);
      v757 = vdupq_n_s32(0xD10u);
      v758 = vmulq_s32(a1[1], v757);
      v759 = vdupq_n_s32(0xEDBu);
      v760 = vaddq_s32(vsubq_s32(*a1, v753), v754);
      v761 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v755), v753, v759), v754, v756);
      v762 = vdupq_n_s32(0xFFFFFAD7);
      v763 = vdupq_n_s32(0xFFFFF125);
      v764 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v756), v753, v762), v754, v763);
      v765 = vaddq_s32(v761, v758);
      v766 = vaddq_s32(v764, v758);
      v767 = vsubq_s32(v764, v758);
      v768 = vdupq_n_s64(0x8000uLL);
      v769 = vextq_s8(vmlal_s32(v768, vmovn_s64(v765), 0x1000000010), 0, 2uLL);
      v770 = vextq_s8(vmlal_s32(v768, vmovn_s64(vrev64q_s32(v765)), 0x1000000010), 0, 2uLL);
      v772.i64[0] = vzip1q_s32(v769, v770).u64[0];
      v771 = vmulq_s32(v760, v757);
      v772.i64[1] = vzip2q_s32(v769, v770).u64[0];
      v773 = vaddq_s32(v767, v761);
      v774 = vextq_s8(vmlal_s32(v768, vmovn_s64(v766), 0x1000000010), 0, 2uLL);
      v775 = vextq_s8(vmlal_s32(v768, vmovn_s64(vrev64q_s32(v766)), 0x1000000010), 0, 2uLL);
      v776.i64[0] = vzip1q_s32(v774, v775).u64[0];
      v776.i64[1] = vzip2q_s32(v774, v775).u64[0];
      v777 = vextq_s8(vmlal_s32(v768, vmovn_s64(v771), 0x1000000010), 0, 2uLL);
      v778 = vextq_s8(vmlal_s32(v768, vmovn_s64(vrev64q_s32(v771)), 0x1000000010), 0, 2uLL);
      v779.i64[0] = vzip1q_s32(v777, v778).u64[0];
      v779.i64[1] = vzip2q_s32(v777, v778).u64[0];
      v780 = vmlal_s32(v768, vmovn_s64(vrev64q_s32(v773)), 0x1000000010);
      v781 = vextq_s8(vmlal_s32(v768, vmovn_s64(v773), 0x1000000010), 0, 2uLL);
      v782 = vextq_s8(v780, 0, 2uLL);
      v783.i64[0] = vzip1q_s32(v781, v782).u64[0];
      v783.i64[1] = vzip2q_s32(v781, v782).u64[0];
      if (a5 <= 10)
      {
        v784 = 10;
      }

      else
      {
        v784 = a5;
      }

      v785 = 32 << v784;
      v786 = vdupq_n_s32(-v785);
      v787 = vdupq_n_s32(v785 - 1);
      v788 = vminq_s32(vmaxq_s32(v772, v786), v787);
      v789 = vminq_s32(vmaxq_s32(v776, v786), v787);
      v790 = vminq_s32(vmaxq_s32(v779, v786), v787);
      v791 = vminq_s32(vmaxq_s32(v783, v786), v787);
      v792 = vtrn1q_s32(v788, v789);
      v793 = vtrn2q_s32(v788, v789);
      v794 = vtrn1q_s32(v790, v791);
      v795 = vtrn2q_s32(v790, v791);
      v796 = vzip2q_s64(v792, v794);
      v792.i64[1] = v794.i64[0];
      v797 = vzip2q_s64(v793, v795);
      v793.i64[1] = v795.i64[0];
      v798 = vmulq_s32(v793, v757);
      v799 = vmlaq_s32(vmlaq_s32(vmulq_s32(v792, v755), v797, v756), v796, v759);
      v800 = vmlaq_s32(vmlaq_s32(vmulq_s32(v796, v762), v797, v763), v792, v756);
      v801 = vmulq_s32(vaddq_s32(vsubq_s32(v792, v796), v797), v757);
      v802 = vaddq_s32(v799, v798);
      v803 = vaddq_s32(v800, v798);
      v804 = vaddq_s32(vsubq_s32(v800, v798), v799);
      v805 = vmlal_s32(v768, vmovn_s64(vrev64q_s32(v802)), 0x1000000010);
      v806 = vextq_s8(vmlal_s32(v768, vmovn_s64(v802), 0x1000000010), 0, 2uLL);
      v807 = vextq_s8(v805, 0, 2uLL);
      v54.i64[0] = vzip1q_s32(v806, v807).u64[0];
      v54.i64[1] = vzip2q_s32(v806, v807).u64[0];
      v808 = vextq_s8(vmlal_s32(v768, vmovn_s64(v803), 0x1000000010), 0, 2uLL);
      v809 = vextq_s8(vmlal_s32(v768, vmovn_s64(vrev64q_s32(v803)), 0x1000000010), 0, 2uLL);
      v56.i64[0] = vzip1q_s32(v808, v809).u64[0];
      v56.i64[1] = vzip2q_s32(v808, v809).u64[0];
      v810 = vextq_s8(vmlal_s32(v768, vmovn_s64(v801), 0x1000000010), 0, 2uLL);
      v811 = vextq_s8(vmlal_s32(v768, vmovn_s64(vrev64q_s32(v801)), 0x1000000010), 0, 2uLL);
      v55.i64[0] = vzip1q_s32(v810, v811).u64[0];
      v55.i64[1] = vzip2q_s32(v810, v811).u64[0];
      v812 = vmlal_s32(v768, vmovn_s64(v804), 0x1000000010);
      v813 = vmlal_s32(v768, vmovn_s64(vrev64q_s32(v804)), 0x1000000010);
      v814 = vextq_s8(v812, 0, 2uLL);
      v815 = vextq_s8(v813, 0, 2uLL);
      v53.i64[0] = vzip1q_s32(v814, v815).u64[0];
      v53.i64[1] = vzip2q_s32(v814, v815).u64[0];
      v98 = *(av1_inv_txfm_shift_ls + 1);
      if (*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_104;
      }

      goto LABEL_105;
    case 9:
      v223 = vdup_n_s32(0x16A1u);
      v224 = vdupq_n_s64(0x800uLL);
      v225 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(*a1), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(*a1)), v223), 0xCuLL));
      v226 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(a1[1]), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(a1[1])), v223), 0xCuLL));
      v227 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(a1[2]), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(a1[2])), v223), 0xCuLL));
      v228 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(a1[3]), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(a1[3])), v223), 0xCuLL));
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
      v233 = vminq_s32(vmaxq_s32(v225, v231), v232);
      v234 = vminq_s32(vmaxq_s32(v226, v231), v232);
      v235 = vminq_s32(vmaxq_s32(v227, v231), v232);
      v236 = vminq_s32(vmaxq_s32(v228, v231), v232);
      v237 = vtrn1q_s32(v233, v234);
      v238 = vtrn2q_s32(v233, v234);
      v239 = vtrn1q_s32(v235, v236);
      v240 = vtrn2q_s32(v235, v236);
      v241 = vzip2q_s64(v237, v239);
      v237.i64[1] = v239.i64[0];
      v242 = vzip2q_s64(v238, v240);
      v239.i64[0] = v238.i64[0];
      v239.i64[1] = v240.i64[0];
      v53 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(v237), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(v237)), v223), 0xCuLL));
      v55 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(v239), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(v239)), v223), 0xCuLL));
      v56 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(v241), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(v241)), v223), 0xCuLL));
      v54 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v224, vmovn_s64(v242), v223), 0xCuLL), vshrq_n_u64(vmlal_s32(v224, vmovn_s64(vrev64q_s32(v242)), v223), 0xCuLL));
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    case 10:
      v715 = a1[3];
      v716 = vdup_n_s32(0x16A1u);
      v717 = vdupq_n_s64(0x800uLL);
      v718 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v717, vmovn_s64(*a1), v716), 0xCuLL), vshrq_n_u64(vmlal_s32(v717, vmovn_s64(vrev64q_s32(*a1)), v716), 0xCuLL));
      v719 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v717, vmovn_s64(a1[1]), v716), 0xCuLL), vshrq_n_u64(vmlal_s32(v717, vmovn_s64(vrev64q_s32(a1[1])), v716), 0xCuLL));
      v720 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v717, vmovn_s64(a1[2]), v716), 0xCuLL), vshrq_n_u64(vmlal_s32(v717, vmovn_s64(vrev64q_s32(a1[2])), v716), 0xCuLL));
      v721 = vshrq_n_u64(vmlal_s32(v717, vmovn_s64(v715), v716), 0xCuLL);
      v722 = vshrq_n_u64(vmlal_s32(v717, vmovn_s64(vrev64q_s32(v715)), v716), 0xCuLL);
      if (a5 <= 10)
      {
        v723 = 10;
      }

      else
      {
        v723 = a5;
      }

      v724 = 32 << v723;
      v725 = vdupq_n_s32(-v724);
      v726 = vdupq_n_s32(v724 - 1);
      v727 = vminq_s32(vmaxq_s32(v718, v725), v726);
      v728 = vminq_s32(vmaxq_s32(v719, v725), v726);
      v729 = vminq_s32(vmaxq_s32(v720, v725), v726);
      v730 = vminq_s32(vmaxq_s32(vtrn1q_s32(v721, v722), v725), v726);
      v735 = vtrn1q_s32(v727, v728);
      v731 = vtrn2q_s32(v727, v728);
      v732 = vtrn1q_s32(v729, v730);
      v733 = vtrn2q_s32(v729, v730);
      v734 = vzip2q_s64(v735, v732);
      v735.i64[1] = v732.i64[0];
      v736.i64[0] = v731.i64[0];
      v736.i64[1] = v733.i64[0];
      v737 = 32 << a5;
      if (a5 <= 9)
      {
        v737 = 0x8000;
      }

      v738 = vdupq_n_s32(-v737);
      v739 = vdupq_n_s32(v737 - 1);
      v740 = vzip2q_s64(v731, v733);
      v741 = vdupq_n_s32(0xB50u);
      v742.i64[0] = 0x80000000800;
      v742.i64[1] = 0x80000000800;
      v743.i64[0] = 0x80000000800;
      v743.i64[1] = 0x80000000800;
      v744 = vmlaq_s32(v743, v735, v741);
      v745 = vmulq_s32(v734, v741);
      v746 = vaddq_s32(v744, v745);
      v747 = vsubq_s32(v744, v745);
      v748 = vdupq_n_s32(0x61Fu);
      v749 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v740, vdupq_n_s32(0xFFFFF138)), v736, v748), v742), 0xCuLL);
      v750 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v736, vdupq_n_s32(0xEC8u)), v740, v748), v742), 0xCuLL);
      v751 = vsubq_s32(vshrq_n_s32(v746, 0xCuLL), v750);
      v53 = vminq_s32(vmaxq_s32(vsraq_n_s32(v750, v746, 0xCuLL), v738), v739);
      v54 = vminq_s32(vmaxq_s32(v751, v738), v739);
      v55 = vminq_s32(vmaxq_s32(vsraq_n_s32(v749, v747, 0xCuLL), v738), v739);
      v56 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v747, 0xCuLL), v749), v738), v739);
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_99;
      }

      goto LABEL_105;
    case 11:
      v99 = a1[1];
      v100 = a1[3];
      v101 = 128 << a5;
      if (a5 <= 7)
      {
        v101 = 0x8000;
      }

      v102 = vdupq_n_s32(-v101);
      v103 = vdupq_n_s32(v101 - 1);
      v104 = vdupq_n_s32(0xB50u);
      v105.i64[0] = 0x80000000800;
      v105.i64[1] = 0x80000000800;
      v106.i64[0] = 0x80000000800;
      v106.i64[1] = 0x80000000800;
      v107 = vmlaq_s32(v106, *a1, v104);
      v108 = vmulq_s32(a1[2], v104);
      v109 = vaddq_s32(v108, v107);
      v110 = vsubq_s32(v107, v108);
      v111 = vdupq_n_s32(0x61Fu);
      v112 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v100, vdupq_n_s32(0xFFFFF138)), v99, v111), v105), 0xCuLL);
      v113 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v100, v111), v99, vdupq_n_s32(0xEC8u)), v105), 0xCuLL);
      v114 = vsubq_s32(vshrq_n_s32(v109, 0xCuLL), v113);
      v115 = vminq_s32(vmaxq_s32(vsraq_n_s32(v113, v109, 0xCuLL), v102), v103);
      v116 = vminq_s32(vmaxq_s32(v114, v102), v103);
      v117 = vsubq_s32(vshrq_n_s32(v110, 0xCuLL), v112);
      v118 = vminq_s32(vmaxq_s32(vsraq_n_s32(v112, v110, 0xCuLL), v102), v103);
      v119 = vminq_s32(vmaxq_s32(v117, v102), v103);
      if (a5 <= 10)
      {
        v120 = 10;
      }

      else
      {
        v120 = a5;
      }

      v121 = 32 << v120;
      v122 = vdupq_n_s32(-v121);
      v123 = vdupq_n_s32(v121 - 1);
      v124 = vminq_s32(vmaxq_s32(v115, v122), v123);
      v125 = vminq_s32(vmaxq_s32(v116, v122), v123);
      v126 = vminq_s32(vmaxq_s32(v118, v122), v123);
      v127 = vminq_s32(vmaxq_s32(v119, v122), v123);
      v128 = vtrn1q_s32(v124, v126);
      v129 = vtrn2q_s32(v124, v126);
      v130 = vtrn1q_s32(v127, v125);
      v131 = vtrn2q_s32(v127, v125);
      v132 = vzip2q_s64(v128, v130);
      v128.i64[1] = v130.i64[0];
      v133 = vzip2q_s64(v129, v131);
      v130.i64[0] = v129.i64[0];
      v130.i64[1] = v131.i64[0];
      v134 = vdup_n_s32(0x16A1u);
      v135 = vdupq_n_s64(0x800uLL);
      v53 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v135, vmovn_s64(v128), v134), 0xCuLL), vshrq_n_u64(vmlal_s32(v135, vmovn_s64(vrev64q_s32(v128)), v134), 0xCuLL));
      v55 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v135, vmovn_s64(v130), v134), 0xCuLL), vshrq_n_u64(vmlal_s32(v135, vmovn_s64(vrev64q_s32(v130)), v134), 0xCuLL));
      v56 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v135, vmovn_s64(v132), v134), 0xCuLL), vshrq_n_u64(vmlal_s32(v135, vmovn_s64(vrev64q_s32(v132)), v134), 0xCuLL));
      v54 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v135, vmovn_s64(v133), v134), 0xCuLL), vshrq_n_u64(vmlal_s32(v135, vmovn_s64(vrev64q_s32(v133)), v134), 0xCuLL));
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    case 12:
      v190 = vdup_n_s32(0x16A1u);
      v191 = vdupq_n_s64(0x800uLL);
      v192 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v191, vmovn_s64(*a1), v190), 0xCuLL), vshrq_n_u64(vmlal_s32(v191, vmovn_s64(vrev64q_s32(*a1)), v190), 0xCuLL));
      v193 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v191, vmovn_s64(a1[1]), v190), 0xCuLL), vshrq_n_u64(vmlal_s32(v191, vmovn_s64(vrev64q_s32(a1[1])), v190), 0xCuLL));
      v194 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v191, vmovn_s64(a1[2]), v190), 0xCuLL), vshrq_n_u64(vmlal_s32(v191, vmovn_s64(vrev64q_s32(a1[2])), v190), 0xCuLL));
      v195 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v191, vmovn_s64(a1[3]), v190), 0xCuLL), vshrq_n_u64(vmlal_s32(v191, vmovn_s64(vrev64q_s32(a1[3])), v190), 0xCuLL));
      if (a5 <= 10)
      {
        v196 = 10;
      }

      else
      {
        v196 = a5;
      }

      v197 = 32 << v196;
      v198 = vdupq_n_s32(-v197);
      v199 = vdupq_n_s32(v197 - 1);
      v200 = vminq_s32(vmaxq_s32(v192, v198), v199);
      v201 = vminq_s32(vmaxq_s32(v193, v198), v199);
      v202 = vminq_s32(vmaxq_s32(v194, v198), v199);
      v203 = vminq_s32(vmaxq_s32(v195, v198), v199);
      v204 = vtrn1q_s32(v200, v201);
      v205 = vtrn2q_s32(v200, v201);
      v206 = vtrn1q_s32(v202, v203);
      v207 = vtrn2q_s32(v202, v203);
      v208 = vzip2q_s64(v204, v206);
      v204.i64[1] = v206.i64[0];
      v206.i64[0] = v205.i64[0];
      v206.i64[1] = v207.i64[0];
      v209 = vzip2q_s64(v205, v207);
      v210 = vdupq_n_s32(0x9B2u);
      v211 = vdupq_n_s32(0xD10u);
      v212 = vmulq_s32(v206, v211);
      v213 = vaddq_s32(vsubq_s32(v204, v208), v209);
      v214 = vmlaq_s32(vmlaq_s32(vmulq_s32(v204, vdupq_n_s32(0x529u)), v209, v210), v208, vdupq_n_s32(0xEDBu));
      v215 = vmlaq_s32(vmlaq_s32(vmulq_s32(v208, vdupq_n_s32(0xFFFFFAD7)), v209, vdupq_n_s32(0xFFFFF125)), v204, v210);
      v216 = vmulq_s32(v213, v211);
      v217 = vaddq_s32(v214, v212);
      v218 = vaddq_s32(v215, v212);
      v219 = vaddq_s32(vsubq_s32(v215, v212), v214);
      v220 = vdupq_n_s64(0x8000uLL);
      v221 = vmlal_s32(v220, vmovn_s64(v217), 0x1000000010);
      v222 = vrev64q_s32(v217);
LABEL_72:
      v535 = vextq_s8(v221, 0, 2uLL);
      v536 = vextq_s8(vmlal_s32(v220, vmovn_s64(v222), 0x1000000010), 0, 2uLL);
      v53.i64[0] = vzip1q_s32(v535, v536).u64[0];
      v53.i64[1] = vzip2q_s32(v535, v536).u64[0];
      v537 = vextq_s8(vmlal_s32(v220, vmovn_s64(v218), 0x1000000010), 0, 2uLL);
      v538 = vextq_s8(vmlal_s32(v220, vmovn_s64(vrev64q_s32(v218)), 0x1000000010), 0, 2uLL);
      v55.i64[0] = vzip1q_s32(v537, v538).u64[0];
      v55.i64[1] = vzip2q_s32(v537, v538).u64[0];
      v539 = vextq_s8(vmlal_s32(v220, vmovn_s64(v216), 0x1000000010), 0, 2uLL);
      v540 = vextq_s8(vmlal_s32(v220, vmovn_s64(vrev64q_s32(v216)), 0x1000000010), 0, 2uLL);
      v56.i64[0] = vzip1q_s32(v539, v540).u64[0];
      v56.i64[1] = vzip2q_s32(v539, v540).u64[0];
      v541 = vextq_s8(vmlal_s32(v220, vmovn_s64(v219), 0x1000000010), 0, 2uLL);
      v542 = vextq_s8(vmlal_s32(v220, vmovn_s64(vrev64q_s32(v219)), 0x1000000010), 0, 2uLL);
      v54.i64[0] = vzip1q_s32(v541, v542).u64[0];
      v54.i64[1] = vzip2q_s32(v541, v542).u64[0];
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    case 13:
      v601 = a1[2];
      v602 = a1[3];
      v603 = vdupq_n_s32(0x9B2u);
      v604 = vdupq_n_s32(0xD10u);
      v605 = vmulq_s32(a1[1], v604);
      v606 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, vdupq_n_s32(0x529u)), v601, vdupq_n_s32(0xEDBu)), v602, v603);
      v607 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v603), v601, vdupq_n_s32(0xFFFFFAD7)), v602, vdupq_n_s32(0xFFFFF125));
      v608 = vmulq_s32(vaddq_s32(vsubq_s32(*a1, v601), v602), v604);
      v609 = vaddq_s32(v606, v605);
      v610 = vaddq_s32(v607, v605);
      v611 = vaddq_s32(vsubq_s32(v607, v605), v606);
      v612 = vdupq_n_s64(0x8000uLL);
      v613 = vextq_s8(vmlal_s32(v612, vmovn_s64(v609), 0x1000000010), 0, 2uLL);
      v614 = vextq_s8(vmlal_s32(v612, vmovn_s64(vrev64q_s32(v609)), 0x1000000010), 0, 2uLL);
      v615.i64[0] = vzip1q_s32(v613, v614).u64[0];
      v615.i64[1] = vzip2q_s32(v613, v614).u64[0];
      v616 = vmlal_s32(v612, vmovn_s64(vrev64q_s32(v610)), 0x1000000010);
      v617 = vextq_s8(vmlal_s32(v612, vmovn_s64(v610), 0x1000000010), 0, 2uLL);
      v618 = vextq_s8(v616, 0, 2uLL);
      v619.i64[0] = vzip1q_s32(v617, v618).u64[0];
      v619.i64[1] = vzip2q_s32(v617, v618).u64[0];
      v620 = vmlal_s32(v612, vmovn_s64(vrev64q_s32(v608)), 0x1000000010);
      v621 = vextq_s8(vmlal_s32(v612, vmovn_s64(v608), 0x1000000010), 0, 2uLL);
      v622 = vextq_s8(v620, 0, 2uLL);
      v623.i64[0] = vzip1q_s32(v621, v622).u64[0];
      v623.i64[1] = vzip2q_s32(v621, v622).u64[0];
      v624 = vmlal_s32(v612, vmovn_s64(v611), 0x1000000010);
      v625 = vmlal_s32(v612, vmovn_s64(vrev64q_s32(v611)), 0x1000000010);
      v626 = vextq_s8(v624, 0, 2uLL);
      v627 = vextq_s8(v625, 0, 2uLL);
      v628.i64[0] = vzip1q_s32(v626, v627).u64[0];
      v628.i64[1] = vzip2q_s32(v626, v627).u64[0];
      if (a5 <= 10)
      {
        v629 = 10;
      }

      else
      {
        v629 = a5;
      }

      v630 = 32 << v629;
      v631 = vdupq_n_s32(-v630);
      v632 = vdupq_n_s32(v630 - 1);
      v633 = vminq_s32(vmaxq_s32(v615, v631), v632);
      v634 = vminq_s32(vmaxq_s32(v619, v631), v632);
      v635 = vminq_s32(vmaxq_s32(v623, v631), v632);
      v636 = vminq_s32(vmaxq_s32(v628, v631), v632);
      v637 = vtrn1q_s32(v633, v634);
      v638 = vtrn2q_s32(v633, v634);
      v639 = vtrn1q_s32(v635, v636);
      v640 = vtrn2q_s32(v635, v636);
      v641 = vzip2q_s64(v637, v639);
      v637.i64[1] = v639.i64[0];
      v642 = vzip2q_s64(v638, v640);
      v634.i64[0] = v638.i64[0];
      v634.i64[1] = v640.i64[0];
      v643 = vdup_n_s32(0x16A1u);
      v644 = vdupq_n_s64(0x800uLL);
      v53 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v644, vmovn_s64(v637), v643), 0xCuLL), vshrq_n_u64(vmlal_s32(v644, vmovn_s64(vrev64q_s32(v637)), v643), 0xCuLL));
      v55 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v644, vmovn_s64(v634), v643), 0xCuLL), vshrq_n_u64(vmlal_s32(v644, vmovn_s64(vrev64q_s32(v634)), v643), 0xCuLL));
      v56 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v644, vmovn_s64(v641), v643), 0xCuLL), vshrq_n_u64(vmlal_s32(v644, vmovn_s64(vrev64q_s32(v641)), v643), 0xCuLL));
      v54 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v644, vmovn_s64(v642), v643), 0xCuLL), vshrq_n_u64(vmlal_s32(v644, vmovn_s64(vrev64q_s32(v642)), v643), 0xCuLL));
      v57 = *(av1_inv_txfm_shift_ls + 1);
      if (!*(av1_inv_txfm_shift_ls + 1))
      {
        goto LABEL_105;
      }

LABEL_99:
      v752 = vdupq_n_s32(v57);
      v53 = vrshlq_s32(v53, v752);
      v55 = vrshlq_s32(v55, v752);
      v56 = vrshlq_s32(v56, v752);
      v54 = vrshlq_s32(v54, v752);
      goto LABEL_105;
    case 14:
      v58 = vdup_n_s32(0x16A1u);
      v59 = vdupq_n_s64(0x800uLL);
      v60 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v59, vmovn_s64(*a1), v58), 0xCuLL), vshrq_n_u64(vmlal_s32(v59, vmovn_s64(vrev64q_s32(*a1)), v58), 0xCuLL));
      v61 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v59, vmovn_s64(a1[1]), v58), 0xCuLL), vshrq_n_u64(vmlal_s32(v59, vmovn_s64(vrev64q_s32(a1[1])), v58), 0xCuLL));
      v62 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v59, vmovn_s64(a1[2]), v58), 0xCuLL), vshrq_n_u64(vmlal_s32(v59, vmovn_s64(vrev64q_s32(a1[2])), v58), 0xCuLL));
      v63 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v59, vmovn_s64(a1[3]), v58), 0xCuLL), vshrq_n_u64(vmlal_s32(v59, vmovn_s64(vrev64q_s32(a1[3])), v58), 0xCuLL));
      if (a5 <= 10)
      {
        v64 = 10;
      }

      else
      {
        v64 = a5;
      }

      v65 = 32 << v64;
      v66 = vdupq_n_s32(-v65);
      v67 = vdupq_n_s32(v65 - 1);
      v68 = vminq_s32(vmaxq_s32(v60, v66), v67);
      v69 = vminq_s32(vmaxq_s32(v61, v66), v67);
      v70 = vminq_s32(vmaxq_s32(v62, v66), v67);
      v71 = vminq_s32(vmaxq_s32(v63, v66), v67);
      v72 = vtrn1q_s32(v68, v69);
      v73 = vtrn2q_s32(v68, v69);
      v74 = vtrn1q_s32(v70, v71);
      v75 = vtrn2q_s32(v70, v71);
      v76 = vzip2q_s64(v72, v74);
      v72.i64[1] = v74.i64[0];
      v74.i64[0] = v73.i64[0];
      v74.i64[1] = v75.i64[0];
      v77 = vzip2q_s64(v73, v75);
      v78 = vdupq_n_s32(0x9B2u);
      v79 = vdupq_n_s32(0xD10u);
      v80 = vmulq_s32(v74, v79);
      v81 = vaddq_s32(vsubq_s32(v72, v76), v77);
      v82 = vmlaq_s32(vmlaq_s32(vmulq_s32(v72, vdupq_n_s32(0x529u)), v77, v78), v76, vdupq_n_s32(0xEDBu));
      v83 = vmlaq_s32(vmlaq_s32(vmulq_s32(v76, vdupq_n_s32(0xFFFFFAD7)), v77, vdupq_n_s32(0xFFFFF125)), v72, v78);
      v84 = vmulq_s32(v81, v79);
      v85 = vaddq_s32(v82, v80);
      v86 = vaddq_s32(v83, v80);
      v87 = vaddq_s32(vsubq_s32(v83, v80), v82);
      v88 = vdupq_n_s64(0x8000uLL);
      v89 = vextq_s8(vmlal_s32(v88, vmovn_s64(v85), 0x1000000010), 0, 2uLL);
      v90 = vextq_s8(vmlal_s32(v88, vmovn_s64(vrev64q_s32(v85)), 0x1000000010), 0, 2uLL);
      v54.i64[0] = vzip1q_s32(v89, v90).u64[0];
      v54.i64[1] = vzip2q_s32(v89, v90).u64[0];
      v91 = vextq_s8(vmlal_s32(v88, vmovn_s64(v86), 0x1000000010), 0, 2uLL);
      v92 = vextq_s8(vmlal_s32(v88, vmovn_s64(vrev64q_s32(v86)), 0x1000000010), 0, 2uLL);
      v56.i64[0] = vzip1q_s32(v91, v92).u64[0];
      v56.i64[1] = vzip2q_s32(v91, v92).u64[0];
      v93 = vmlal_s32(v88, vmovn_s64(vrev64q_s32(v84)), 0x1000000010);
      v94 = vextq_s8(vmlal_s32(v88, vmovn_s64(v84), 0x1000000010), 0, 2uLL);
      v95 = vextq_s8(v93, 0, 2uLL);
      v55.i64[0] = vzip1q_s32(v94, v95).u64[0];
      v55.i64[1] = vzip2q_s32(v94, v95).u64[0];
      v96 = vextq_s8(vmlal_s32(v88, vmovn_s64(v87), 0x1000000010), 0, 2uLL);
      v97 = vextq_s8(vmlal_s32(v88, vmovn_s64(vrev64q_s32(v87)), 0x1000000010), 0, 2uLL);
      v53.i64[0] = vzip1q_s32(v96, v97).u64[0];
      v53.i64[1] = vzip2q_s32(v96, v97).u64[0];
      v98 = *(av1_inv_txfm_shift_ls + 1);
      if (*(av1_inv_txfm_shift_ls + 1))
      {
LABEL_104:
        v816 = vdupq_n_s32(v98);
        v54 = vrshlq_s32(v54, v816);
        v56 = vrshlq_s32(v56, v816);
        v55 = vrshlq_s32(v55, v816);
        v53 = vrshlq_s32(v53, v816);
      }

LABEL_105:
      v351 = *a2;
      v352 = (a2 + 2 * a3);
      v353 = *v352;
      v354 = (a2 + 4 * a3);
      v355 = *v354;
      v356 = (a2 + 6 * a3);
      v357 = *v356;
      goto LABEL_106;
    case 15:
      v301 = a1[2];
      v302 = a1[3];
      v303 = vdupq_n_s32(0x9B2u);
      v304 = vdupq_n_s32(0xD10u);
      v305 = vmulq_s32(a1[1], v304);
      v306 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, vdupq_n_s32(0x529u)), v301, vdupq_n_s32(0xEDBu)), v302, v303);
      v307 = vmlaq_s32(vmlaq_s32(vmulq_s32(*a1, v303), v301, vdupq_n_s32(0xFFFFFAD7)), v302, vdupq_n_s32(0xFFFFF125));
      v308 = vmulq_s32(vaddq_s32(vsubq_s32(*a1, v301), v302), v304);
      v309 = vaddq_s32(v306, v305);
      v310 = vaddq_s32(v307, v305);
      v311 = vaddq_s32(vsubq_s32(v307, v305), v306);
      v312 = vdupq_n_s64(0x8000uLL);
      v313 = vextq_s8(vmlal_s32(v312, vmovn_s64(v309), 0x1000000010), 0, 2uLL);
      v314 = vextq_s8(vmlal_s32(v312, vmovn_s64(vrev64q_s32(v309)), 0x1000000010), 0, 2uLL);
      v315.i64[0] = vzip1q_s32(v313, v314).u64[0];
      v315.i64[1] = vzip2q_s32(v313, v314).u64[0];
      v316 = vmlal_s32(v312, vmovn_s64(vrev64q_s32(v310)), 0x1000000010);
      v317 = vextq_s8(vmlal_s32(v312, vmovn_s64(v310), 0x1000000010), 0, 2uLL);
      v318 = vextq_s8(v316, 0, 2uLL);
      v319.i64[0] = vzip1q_s32(v317, v318).u64[0];
      v319.i64[1] = vzip2q_s32(v317, v318).u64[0];
      v320 = vmlal_s32(v312, vmovn_s64(vrev64q_s32(v308)), 0x1000000010);
      v321 = vextq_s8(vmlal_s32(v312, vmovn_s64(v308), 0x1000000010), 0, 2uLL);
      v322 = vextq_s8(v320, 0, 2uLL);
      v323.i64[0] = vzip1q_s32(v321, v322).u64[0];
      v323.i64[1] = vzip2q_s32(v321, v322).u64[0];
      v324 = vmlal_s32(v312, vmovn_s64(v311), 0x1000000010);
      v325 = vmlal_s32(v312, vmovn_s64(vrev64q_s32(v311)), 0x1000000010);
      v326 = vextq_s8(v324, 0, 2uLL);
      v327 = vextq_s8(v325, 0, 2uLL);
      v328.i64[0] = vzip1q_s32(v326, v327).u64[0];
      v328.i64[1] = vzip2q_s32(v326, v327).u64[0];
      if (a5 <= 10)
      {
        v329 = 10;
      }

      else
      {
        v329 = a5;
      }

      v330 = 32 << v329;
      v331 = vdupq_n_s32(-v330);
      v332 = vdupq_n_s32(v330 - 1);
      v333 = vminq_s32(vmaxq_s32(v315, v331), v332);
      v334 = vminq_s32(vmaxq_s32(v319, v331), v332);
      v335 = vminq_s32(vmaxq_s32(v323, v331), v332);
      v336 = vminq_s32(vmaxq_s32(v328, v331), v332);
      v337 = vtrn1q_s32(v333, v334);
      v338 = vtrn2q_s32(v333, v334);
      v339 = vtrn1q_s32(v335, v336);
      v340 = vtrn2q_s32(v335, v336);
      v341 = vzip2q_s64(v337, v339);
      v337.i64[1] = v339.i64[0];
      v342 = vzip2q_s64(v338, v340);
      v334.i64[0] = v338.i64[0];
      v334.i64[1] = v340.i64[0];
      v343 = vdup_n_s32(0x16A1u);
      v344 = vdupq_n_s64(0x800uLL);
      v345 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v344, vmovn_s64(v337), v343), 0xCuLL), vshrq_n_u64(vmlal_s32(v344, vmovn_s64(vrev64q_s32(v337)), v343), 0xCuLL));
      v346 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v344, vmovn_s64(v334), v343), 0xCuLL), vshrq_n_u64(vmlal_s32(v344, vmovn_s64(vrev64q_s32(v334)), v343), 0xCuLL));
      v347 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v344, vmovn_s64(v341), v343), 0xCuLL), vshrq_n_u64(vmlal_s32(v344, vmovn_s64(vrev64q_s32(v341)), v343), 0xCuLL));
      v348 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v344, vmovn_s64(v342), v343), 0xCuLL), vshrq_n_u64(vmlal_s32(v344, vmovn_s64(vrev64q_s32(v342)), v343), 0xCuLL));
      v349 = *(av1_inv_txfm_shift_ls + 1);
      if (*(av1_inv_txfm_shift_ls + 1))
      {
LABEL_52:
        v350 = vdupq_n_s32(v349);
        v345 = vrshlq_s32(v345, v350);
        v346 = vrshlq_s32(v346, v350);
        v347 = vrshlq_s32(v347, v350);
        v348 = vrshlq_s32(v348, v350);
      }

LABEL_53:
      v351 = *a2;
      v352 = (a2 + 2 * a3);
      v353 = *v352;
      v354 = (a2 + 4 * a3);
      v355 = *v354;
      v356 = (a2 + 6 * a3);
      v357 = *v356;
      v358 = vrev64q_s32(v345);
      v53 = vextq_s8(v358, v358, 8uLL);
      v359 = vrev64q_s32(v346);
      v55 = vextq_s8(v359, v359, 8uLL);
      v360 = vrev64q_s32(v347);
      v56 = vextq_s8(v360, v360, 8uLL);
      v361 = vrev64q_s32(v348);
LABEL_65:
      v54 = vextq_s8(v361, v361, 8uLL);
LABEL_106:
      v817 = vqmovn_high_u32(vqmovn_u32(vaddw_u16(v53, v351)), vaddw_u16(v55, v353));
      v818 = vqmovn_u32(vaddw_u16(v56, v355));
      v819 = vdupq_n_s16(~(-1 << a5));
      v820 = vmaxq_s16(vminq_s16(v817, v819), 0);
      v821 = vmaxq_s16(vminq_s16(vqmovn_high_u32(v818, vaddw_u16(v54, v357)), v819), 0);
      *a2 = *v820.i8;
      *v352 = vextq_s8(v820, v820, 8uLL).u64[0];
      *v354 = *v821.i8;
      *&result = vextq_s8(v821, v821, 8uLL).u64[0];
      *v356 = result;
      break;
    default:
      return result;
  }

  return result;
}

int32x4_t idct4x4_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v15 = &av1_cospi_arr_data[64 * a3 - 608];
  v16 = vld1q_dup_f32(v15);
  v17 = vmlaq_s32(v11, v16, *a1);
  v18 = vmulq_s32(v16, a1[2]);
  v19 = vshlq_s32(vaddq_s32(v17, v18), v14);
  v20 = vshlq_s32(vsubq_s32(v17, v18), v14);
  v21 = &av1_cospi_arr_data[64 * a3 - 592];
  v22 = vld1q_dup_f32(v21);
  v23 = &av1_cospi_arr_data[64 * a3 - 624];
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

int32x4_t iadst4x4_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = (&av1_sinpi_arr_data + 20 * a3);
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

int32x4_t iidentity4_neon(int64x2_t *a1, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = vdup_n_s32(0x16A1u);
  v7 = vdupq_n_s64(0x800uLL);
  result = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*a1), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*a1)), v6), 0xCuLL));
  *a2 = result;
  v9 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(a1[1]), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(a1[1])), v6), 0xCuLL));
  a2[1] = v9;
  v10 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(a1[2]), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(a1[2])), v6), 0xCuLL));
  a2[2] = v10;
  v11 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(a1[3]), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(a1[3])), v6), 0xCuLL));
  a2[3] = v11;
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
    v14 = vdupq_n_s32(-v13);
    v15 = vdupq_n_s32(v13 - 1);
    if (a6)
    {
      v16 = vdupq_n_s32(-a6);
      result = vrshlq_s32(result, v16);
      v9 = vrshlq_s32(v9, v16);
      v10 = vrshlq_s32(v10, v16);
      v11 = vrshlq_s32(v11, v16);
    }

    *a2 = vminq_s32(vmaxq_s32(result, v14), v15);
    a2[1] = vminq_s32(vmaxq_s32(v9, v14), v15);
    result = vminq_s32(vmaxq_s32(v10, v14), v15);
    a2[2] = result;
    a2[3] = vminq_s32(vmaxq_s32(v11, v14), v15);
  }

  return result;
}

void av1_inv_txfm2d_add_8x8_neon(uint64_t a1, int16x4_t *a2, int a3, int a4, int a5)
{
  v438 = *MEMORY[0x277D85DE8];
  v8 = off_2808D36B8;
  if (a4 > 3)
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        v276 = *(a1 + 16);
        v422 = *a1;
        v423 = v276;
        v277 = *(a1 + 48);
        v424 = *(a1 + 32);
        v425 = v277;
        v278 = *(a1 + 80);
        v426 = *(a1 + 64);
        v427 = v278;
        v279 = *(a1 + 112);
        v428 = *(a1 + 96);
        v429 = v279;
        v280 = *(a1 + 144);
        v430 = *(a1 + 128);
        v431 = v280;
        v281 = *(a1 + 176);
        v432 = *(a1 + 160);
        v433 = v281;
        v282 = *(a1 + 208);
        v434 = *(a1 + 192);
        v435 = v282;
        v283 = *(a1 + 240);
        v436 = *(a1 + 224);
        v437 = v283;
        idct8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
LABEL_22:
        v284 = vtrn1q_s32(v406, v408);
        v285 = vtrn2q_s32(v406, v408);
        v286 = vtrn1q_s32(v410, v412);
        v287 = vtrn2q_s32(v410, v412);
        v288 = vzip2q_s64(v284, v286);
        v284.i64[1] = v286.i64[0];
        v289 = vzip2q_s64(v285, v287);
        v285.i64[1] = v287.i64[0];
        v290 = vtrn1q_s32(v407, v409);
        v291 = vtrn2q_s32(v407, v409);
        v292 = vtrn1q_s32(v411, v413);
        v293 = vtrn2q_s32(v411, v413);
        v294 = vzip2q_s64(v290, v292);
        *&v295 = v290.i64[0];
        *(&v295 + 1) = v292.i64[0];
        v296 = vzip2q_s64(v291, v293);
        *&v297 = v291.i64[0];
        *(&v297 + 1) = v293.i64[0];
        v298 = vtrn1q_s32(v414, v416);
        v299 = vtrn2q_s32(v414, v416);
        v300 = vtrn1q_s32(v418, v420);
        v301 = vtrn2q_s32(v418, v420);
        v302 = vzip2q_s64(v298, v300);
        v298.i64[1] = v300.i64[0];
        v422 = v284;
        v423 = v298;
        v303 = vzip2q_s64(v299, v301);
        v299.i64[1] = v301.i64[0];
        v424 = v285;
        v425 = v299;
        v426 = v288;
        v427 = v302;
        v428 = v289;
        v429 = v303;
        v304 = vtrn1q_s32(v415, v417);
        v305 = vtrn2q_s32(v415, v417);
        v306 = vtrn1q_s32(v419, v421);
        v307 = vtrn2q_s32(v419, v421);
        v308 = vzip2q_s64(v304, v306);
        v304.i64[1] = v306.i64[0];
        v430 = v295;
        v431 = v304;
        v309 = vzip2q_s64(v305, v307);
        v305.i64[1] = v307.i64[0];
        v432 = v297;
        v433 = v305;
        v434 = v294;
        v435 = v308;
        v436 = v296;
        v437 = v309;
        iadst8x8_neon(&v422, &v406, 1, a5, 0);
        v310 = vdupq_n_s32(v8[1]);
        v311 = vrshlq_s32(v406, v310);
        v312 = vrshlq_s32(v407, v310);
        v313 = vrshlq_s32(v408, v310);
        v314 = vrshlq_s32(v409, v310);
        v315 = vrshlq_s32(v410, v310);
        v316 = vrshlq_s32(v411, v310);
        v317 = vrshlq_s32(v412, v310);
        v318 = vrshlq_s32(v413, v310);
        v319 = vrshlq_s32(v414, v310);
        v320 = vrshlq_s32(v415, v310);
        v321 = vrshlq_s32(v416, v310);
        v322 = vrshlq_s32(v417, v310);
        v323 = vrshlq_s32(v418, v310);
        v324 = vrshlq_s32(v419, v310);
        v325 = vrshlq_s32(v420, v310);
        v326 = 2 * a3;
        v327 = 4 * a3;
        v328 = vrshlq_s32(v421, v310);
        v329 = 6 * a3;
        v330 = a3;
        v331 = 10 * a3;
        v253 = 12 * a3;
        v188 = 14 * a3;
        v332 = vdupq_n_s16(~(-1 << a5));
        v333 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v325, *a2)), vaddw_high_s16(v328, *a2->i8)), v332);
        v334 = 0uLL;
        v335 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v323, *(a2 + v326))), vaddw_high_s16(v324, *&a2->i8[v326])), v332), 0);
        v336 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v321, *(a2 + v327))), vaddw_high_s16(v322, *&a2->i8[v327])), v332), 0);
        v337 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v319, *(a2 + v329))), vaddw_high_s16(v320, *&a2->i8[v329])), v332), 0);
        v338 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v317, a2[v330])), vaddw_high_s16(v318, *a2[v330].i8)), v332), 0);
        v339 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v315, *(a2 + v331))), vaddw_high_s16(v316, *&a2->i8[v331])), v332), 0);
        v272 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v313, *(a2 + v253))), vaddw_high_s16(v314, *&a2->i8[v253])), v332), 0);
        v340 = vqmovn_high_u32(vqmovn_u32(vaddw_s16(v311, *(a2 + v188))), vaddw_high_s16(v312, *&a2->i8[v188]));
        *a2->i8 = vmaxq_s16(v333, 0);
        *&a2->i8[v326] = v335;
        *&a2->i8[v327] = v336;
        *&a2->i8[v329] = v337;
        *a2[v330].i8 = v338;
        *&a2->i8[v331] = v339;
        v341 = vminq_s16(v340, v332);
LABEL_25:
        v194 = vmaxq_s16(v341, v334);
        goto LABEL_26;
      }

      v59 = *(a1 + 16);
      v422 = *a1;
      v423 = v59;
      v60 = *(a1 + 48);
      v424 = *(a1 + 32);
      v425 = v60;
      v61 = *(a1 + 80);
      v426 = *(a1 + 64);
      v427 = v61;
      v62 = *(a1 + 112);
      v428 = *(a1 + 96);
      v429 = v62;
      v63 = *(a1 + 144);
      v430 = *(a1 + 128);
      v431 = v63;
      v64 = *(a1 + 176);
      v432 = *(a1 + 160);
      v433 = v64;
      v65 = *(a1 + 208);
      v434 = *(a1 + 192);
      v435 = v65;
      v66 = *(a1 + 240);
      v436 = *(a1 + 224);
      v437 = v66;
      iadst8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
      v67 = vtrn1q_s32(v406, v408);
      v68 = vtrn2q_s32(v406, v408);
      v69 = vtrn1q_s32(v410, v412);
      v70 = vtrn2q_s32(v410, v412);
      v71 = vzip2q_s64(v67, v69);
      v67.i64[1] = v69.i64[0];
      v72 = vzip2q_s64(v68, v70);
      v68.i64[1] = v70.i64[0];
      v73 = vtrn1q_s32(v407, v409);
      v74 = vtrn2q_s32(v407, v409);
      v75 = vtrn1q_s32(v411, v413);
      v76 = vtrn2q_s32(v411, v413);
      v77 = vzip2q_s64(v73, v75);
      *&v78 = v73.i64[0];
      *(&v78 + 1) = v75.i64[0];
      v79 = vzip2q_s64(v74, v76);
      *&v80 = v74.i64[0];
      *(&v80 + 1) = v76.i64[0];
      v81 = vtrn1q_s32(v414, v416);
      v82 = vtrn2q_s32(v414, v416);
      v83 = vtrn1q_s32(v418, v420);
      v84 = vtrn2q_s32(v418, v420);
      v85 = vzip2q_s64(v81, v83);
      v81.i64[1] = v83.i64[0];
      v422 = v67;
      v423 = v81;
      v86 = vzip2q_s64(v82, v84);
      v82.i64[1] = v84.i64[0];
      v424 = v68;
      v425 = v82;
      v426 = v71;
      v427 = v85;
      v428 = v72;
      v429 = v86;
      v87 = vtrn1q_s32(v415, v417);
      v88 = vtrn2q_s32(v415, v417);
      v89 = vtrn1q_s32(v419, v421);
      v90 = vtrn2q_s32(v419, v421);
      v91 = vzip2q_s64(v87, v89);
      v87.i64[1] = v89.i64[0];
      v430 = v78;
      v431 = v87;
      v92 = vzip2q_s64(v88, v90);
      v88.i64[1] = v90.i64[0];
      v432 = v80;
      v433 = v88;
      v434 = v77;
      v435 = v91;
      v436 = v79;
      v437 = v92;
      idct8x8_neon(&v422, &v406, 1, a5, 0);
    }

    else
    {
      if (a4 == 6)
      {
        v195 = *(a1 + 16);
        v422 = *a1;
        v423 = v195;
        v196 = *(a1 + 48);
        v424 = *(a1 + 32);
        v425 = v196;
        v197 = *(a1 + 80);
        v426 = *(a1 + 64);
        v427 = v197;
        v198 = *(a1 + 112);
        v428 = *(a1 + 96);
        v429 = v198;
        v199 = *(a1 + 144);
        v430 = *(a1 + 128);
        v431 = v199;
        v200 = *(a1 + 176);
        v432 = *(a1 + 160);
        v433 = v200;
        v201 = *(a1 + 208);
        v434 = *(a1 + 192);
        v435 = v201;
        v202 = *(a1 + 240);
        v436 = *(a1 + 224);
        v437 = v202;
        iadst8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
        v203 = vtrn1q_s32(v406, v408);
        v204 = vtrn2q_s32(v406, v408);
        v205 = vtrn1q_s32(v410, v412);
        v206 = vtrn2q_s32(v410, v412);
        v207 = vzip2q_s64(v203, v205);
        v203.i64[1] = v205.i64[0];
        v208 = vzip2q_s64(v204, v206);
        v204.i64[1] = v206.i64[0];
        v209 = vtrn1q_s32(v407, v409);
        v210 = vtrn2q_s32(v407, v409);
        v211 = vtrn1q_s32(v411, v413);
        v212 = vtrn2q_s32(v411, v413);
        v213 = vzip2q_s64(v209, v211);
        *&v214 = v209.i64[0];
        *(&v214 + 1) = v211.i64[0];
        v215 = vzip2q_s64(v210, v212);
        *&v216 = v210.i64[0];
        *(&v216 + 1) = v212.i64[0];
        v217 = vtrn1q_s32(v414, v416);
        v218 = vtrn2q_s32(v414, v416);
        v219 = vtrn1q_s32(v418, v420);
        v220 = vtrn2q_s32(v418, v420);
        v221 = vzip2q_s64(v217, v219);
        v217.i64[1] = v219.i64[0];
        v422 = v203;
        v423 = v217;
        v222 = vzip2q_s64(v218, v220);
        v218.i64[1] = v220.i64[0];
        v424 = v204;
        v425 = v218;
        v426 = v207;
        v427 = v221;
        v428 = v208;
        v429 = v222;
        v223 = vtrn1q_s32(v415, v417);
        v224 = vtrn2q_s32(v415, v417);
        v225 = vtrn1q_s32(v419, v421);
        v226 = vtrn2q_s32(v419, v421);
        v227 = vzip2q_s64(v223, v225);
        v223.i64[1] = v225.i64[0];
        v430 = v214;
        v431 = v223;
        v228 = vzip2q_s64(v224, v226);
        v224.i64[1] = v226.i64[0];
        v432 = v216;
        v433 = v224;
        v434 = v213;
        v435 = v227;
        v436 = v215;
        v437 = v228;
        iadst8x8_neon(&v422, &v406, 1, a5, 0);
        v229 = vdupq_n_s32(v8[1]);
        v230 = vrshlq_s32(v406, v229);
        v231 = vrshlq_s32(v407, v229);
        v232 = vrshlq_s32(v408, v229);
        v233 = vrshlq_s32(v409, v229);
        v234 = vrshlq_s32(v410, v229);
        v235 = vrshlq_s32(v411, v229);
        v236 = vrshlq_s32(v412, v229);
        v237 = vrshlq_s32(v413, v229);
        v238 = vrshlq_s32(v414, v229);
        v239 = vrshlq_s32(v415, v229);
        v240 = vrshlq_s32(v416, v229);
        v241 = vrshlq_s32(v417, v229);
        v242 = vrshlq_s32(v418, v229);
        v243 = vrshlq_s32(v419, v229);
        v244 = vrshlq_s32(v420, v229);
        v245 = vrshlq_s32(v421, v229);
        v246 = vdupq_n_s16(~(-1 << a5));
        v247 = 2 * a3;
        v248 = *&a2->i8[v247];
        v249 = 4 * a3;
        v250 = 6 * a3;
        v251 = a3;
        v252 = 10 * a3;
        v253 = 12 * a3;
        v254 = vrev64q_s32(v244);
        v255 = vrev64q_s32(v245);
        v256 = vrev64q_s32(v242);
        v257 = vrev64q_s32(v243);
        v188 = 14 * a3;
        v258 = vrev64q_s32(v240);
        v259 = vrev64q_s32(v241);
        v260 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v259, v259, 8uLL), *(a2 + v249))), vaddw_high_s16(vextq_s8(v258, v258, 8uLL), *&a2->i8[v249])), v246), 0);
        v261 = vrev64q_s32(v238);
        v262 = vrev64q_s32(v239);
        v263 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v262, v262, 8uLL), *(a2 + v250))), vaddw_high_s16(vextq_s8(v261, v261, 8uLL), *&a2->i8[v250])), v246), 0);
        v264 = vrev64q_s32(v236);
        v265 = vrev64q_s32(v237);
        v266 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v265, v265, 8uLL), a2[v251])), vaddw_high_s16(vextq_s8(v264, v264, 8uLL), *a2[v251].i8)), v246), 0);
        v267 = vrev64q_s32(v234);
        v268 = vrev64q_s32(v235);
        v269 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v268, v268, 8uLL), *(a2 + v252))), vaddw_high_s16(vextq_s8(v267, v267, 8uLL), *&a2->i8[v252])), v246), 0);
        v270 = vrev64q_s32(v232);
        v271 = vrev64q_s32(v233);
        v272 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v271, v271, 8uLL), *(a2 + v253))), vaddw_high_s16(vextq_s8(v270, v270, 8uLL), *&a2->i8[v253])), v246), 0);
        v273 = vrev64q_s32(v230);
        v274 = vrev64q_s32(v231);
        v275 = vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v274, v274, 8uLL), *(a2 + v188))), vaddw_high_s16(vextq_s8(v273, v273, 8uLL), *&a2->i8[v188]));
        *a2->i8 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v255, v255, 8uLL), *a2)), vaddw_high_s16(vextq_s8(v254, v254, 8uLL), *a2->i8)), v246), 0);
        *&a2->i8[v247] = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v257, v257, 8uLL), *v248.i8)), vaddw_high_s16(vextq_s8(v256, v256, 8uLL), v248)), v246), 0);
        *&a2->i8[v249] = v260;
        *&a2->i8[v250] = v263;
        *a2[v251].i8 = v266;
        *&a2->i8[v252] = v269;
        v194 = vmaxq_s16(vminq_s16(v275, v246), 0);
LABEL_26:
        *&a2->i8[v253] = v272;
        goto LABEL_27;
      }

      if (a4 != 7)
      {
        if (a4 != 8)
        {
          return;
        }

        v9 = *(a1 + 16);
        v422 = *a1;
        v423 = v9;
        v10 = *(a1 + 48);
        v424 = *(a1 + 32);
        v425 = v10;
        v11 = *(a1 + 80);
        v426 = *(a1 + 64);
        v427 = v11;
        v12 = *(a1 + 112);
        v428 = *(a1 + 96);
        v429 = v12;
        v13 = *(a1 + 144);
        v430 = *(a1 + 128);
        v431 = v13;
        v14 = *(a1 + 176);
        v432 = *(a1 + 160);
        v433 = v14;
        v15 = *(a1 + 208);
        v434 = *(a1 + 192);
        v435 = v15;
        v16 = *(a1 + 240);
        v436 = *(a1 + 224);
        v437 = v16;
        iadst8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
        goto LABEL_22;
      }

      v342 = *(a1 + 16);
      v422 = *a1;
      v423 = v342;
      v343 = *(a1 + 48);
      v424 = *(a1 + 32);
      v425 = v343;
      v344 = *(a1 + 80);
      v426 = *(a1 + 64);
      v427 = v344;
      v345 = *(a1 + 112);
      v428 = *(a1 + 96);
      v429 = v345;
      v346 = *(a1 + 144);
      v430 = *(a1 + 128);
      v431 = v346;
      v347 = *(a1 + 176);
      v432 = *(a1 + 160);
      v433 = v347;
      v348 = *(a1 + 208);
      v434 = *(a1 + 192);
      v435 = v348;
      v349 = *(a1 + 240);
      v436 = *(a1 + 224);
      v437 = v349;
      iadst8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
      v350 = vtrn1q_s32(v406, v408);
      v351 = vtrn2q_s32(v406, v408);
      v352 = vtrn1q_s32(v410, v412);
      v353 = vtrn2q_s32(v410, v412);
      v354 = vzip2q_s64(v350, v352);
      v350.i64[1] = v352.i64[0];
      v355 = vzip2q_s64(v351, v353);
      v351.i64[1] = v353.i64[0];
      v356 = vtrn1q_s32(v407, v409);
      v357 = vtrn2q_s32(v407, v409);
      v358 = vtrn1q_s32(v411, v413);
      v359 = vtrn2q_s32(v411, v413);
      v360 = vzip2q_s64(v356, v358);
      *&v361 = v356.i64[0];
      *(&v361 + 1) = v358.i64[0];
      v362 = vzip2q_s64(v357, v359);
      *&v363 = v357.i64[0];
      *(&v363 + 1) = v359.i64[0];
      v364 = vtrn1q_s32(v414, v416);
      v365 = vtrn2q_s32(v414, v416);
      v366 = vtrn1q_s32(v418, v420);
      v367 = vtrn2q_s32(v418, v420);
      v368 = vzip2q_s64(v364, v366);
      v364.i64[1] = v366.i64[0];
      v422 = v350;
      v423 = v364;
      v369 = vzip2q_s64(v365, v367);
      v365.i64[1] = v367.i64[0];
      v424 = v351;
      v425 = v365;
      v426 = v354;
      v427 = v368;
      v428 = v355;
      v429 = v369;
      v370 = vtrn1q_s32(v415, v417);
      v371 = vtrn2q_s32(v415, v417);
      v372 = vtrn1q_s32(v419, v421);
      v373 = vtrn2q_s32(v419, v421);
      v374 = vzip2q_s64(v370, v372);
      v370.i64[1] = v372.i64[0];
      v430 = v361;
      v431 = v370;
      v375 = vzip2q_s64(v371, v373);
      v371.i64[1] = v373.i64[0];
      v432 = v363;
      v433 = v371;
      v434 = v360;
      v435 = v374;
      v436 = v362;
      v437 = v375;
      iadst8x8_neon(&v422, &v406, 1, a5, 0);
    }

    v376 = vdupq_n_s32(v8[1]);
    v377 = vdupq_n_s16(~(-1 << a5));
    v378 = 2 * a3;
    v379 = *&a2->i8[v378];
    v380 = 4 * a3;
    v381 = 6 * a3;
    v382 = a3;
    v383 = 10 * a3;
    v253 = 12 * a3;
    v384 = vrev64q_s32(vrshlq_s32(v406, v376));
    v385 = vrev64q_s32(vrshlq_s32(v407, v376));
    v386 = vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v385, v385, 8uLL), *a2)), vaddw_high_s16(vextq_s8(v384, v384, 8uLL), *a2->i8)), v377);
    v334 = 0uLL;
    v387 = vrev64q_s32(vrshlq_s32(v408, v376));
    v388 = vrev64q_s32(vrshlq_s32(v409, v376));
    v188 = 14 * a3;
    v389 = vrev64q_s32(vrshlq_s32(v410, v376));
    v390 = vrev64q_s32(vrshlq_s32(v411, v376));
    v391 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v390, v390, 8uLL), *(a2 + v380))), vaddw_high_s16(vextq_s8(v389, v389, 8uLL), *&a2->i8[v380])), v377), 0);
    v392 = vrev64q_s32(vrshlq_s32(v412, v376));
    v393 = vrev64q_s32(vrshlq_s32(v413, v376));
    v394 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v393, v393, 8uLL), *(a2 + v381))), vaddw_high_s16(vextq_s8(v392, v392, 8uLL), *&a2->i8[v381])), v377), 0);
    v395 = vrev64q_s32(vrshlq_s32(v414, v376));
    v396 = vrev64q_s32(vrshlq_s32(v415, v376));
    v397 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v396, v396, 8uLL), a2[v382])), vaddw_high_s16(vextq_s8(v395, v395, 8uLL), *a2[v382].i8)), v377), 0);
    v398 = vrev64q_s32(vrshlq_s32(v416, v376));
    v399 = vrev64q_s32(vrshlq_s32(v417, v376));
    v400 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v399, v399, 8uLL), *(a2 + v383))), vaddw_high_s16(vextq_s8(v398, v398, 8uLL), *&a2->i8[v383])), v377), 0);
    v401 = vrev64q_s32(vrshlq_s32(v418, v376));
    v402 = vrev64q_s32(vrshlq_s32(v419, v376));
    v272 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v402, v402, 8uLL), *(a2 + v253))), vaddw_high_s16(vextq_s8(v401, v401, 8uLL), *&a2->i8[v253])), v377), 0);
    v403 = vrev64q_s32(vrshlq_s32(v420, v376));
    v404 = vrev64q_s32(vrshlq_s32(v421, v376));
    v405 = vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v404, v404, 8uLL), *(a2 + v188))), vaddw_high_s16(vextq_s8(v403, v403, 8uLL), *&a2->i8[v188]));
    *a2->i8 = vmaxq_s16(v386, 0);
    *&a2->i8[v378] = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(vextq_s8(v388, v388, 8uLL), *v379.i8)), vaddw_high_s16(vextq_s8(v387, v387, 8uLL), v379)), v377), 0);
    *&a2->i8[v380] = v391;
    *&a2->i8[v381] = v394;
    *a2[v382].i8 = v397;
    *&a2->i8[v383] = v400;
    v341 = vminq_s16(v405, v377);
    goto LABEL_25;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v151 = *(a1 + 16);
      v422 = *a1;
      v423 = v151;
      v152 = *(a1 + 48);
      v424 = *(a1 + 32);
      v425 = v152;
      v153 = *(a1 + 80);
      v426 = *(a1 + 64);
      v427 = v153;
      v154 = *(a1 + 112);
      v428 = *(a1 + 96);
      v429 = v154;
      v155 = *(a1 + 144);
      v430 = *(a1 + 128);
      v431 = v155;
      v156 = *(a1 + 176);
      v432 = *(a1 + 160);
      v433 = v156;
      v157 = *(a1 + 208);
      v434 = *(a1 + 192);
      v435 = v157;
      v158 = *(a1 + 240);
      v436 = *(a1 + 224);
      v437 = v158;
      iadst8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
      v159 = vtrn1q_s32(v406, v408);
      v160 = vtrn2q_s32(v406, v408);
      v161 = vtrn1q_s32(v410, v412);
      v162 = vtrn2q_s32(v410, v412);
      v163 = vzip2q_s64(v159, v161);
      v159.i64[1] = v161.i64[0];
      v164 = vzip2q_s64(v160, v162);
      v160.i64[1] = v162.i64[0];
      v165 = vtrn1q_s32(v407, v409);
      v166 = vtrn2q_s32(v407, v409);
      v167 = vtrn1q_s32(v411, v413);
      v168 = vtrn2q_s32(v411, v413);
      v169 = vzip2q_s64(v165, v167);
      *&v170 = v165.i64[0];
      *(&v170 + 1) = v167.i64[0];
      v171 = vzip2q_s64(v166, v168);
      *&v172 = v166.i64[0];
      *(&v172 + 1) = v168.i64[0];
      v173 = vtrn1q_s32(v414, v416);
      v174 = vtrn2q_s32(v414, v416);
      v175 = vtrn1q_s32(v418, v420);
      v176 = vtrn2q_s32(v418, v420);
      v177 = vzip2q_s64(v173, v175);
      v173.i64[1] = v175.i64[0];
      v422 = v159;
      v423 = v173;
      v178 = vzip2q_s64(v174, v176);
      v174.i64[1] = v176.i64[0];
      v424 = v160;
      v425 = v174;
      v426 = v163;
      v427 = v177;
      v428 = v164;
      v429 = v178;
      v179 = vtrn1q_s32(v415, v417);
      v180 = vtrn2q_s32(v415, v417);
      v181 = vtrn1q_s32(v419, v421);
      v182 = vtrn2q_s32(v419, v421);
      v183 = vzip2q_s64(v179, v181);
      v179.i64[1] = v181.i64[0];
      v430 = v170;
      v431 = v179;
      v184 = vzip2q_s64(v180, v182);
      v180.i64[1] = v182.i64[0];
      v432 = v172;
      v433 = v180;
      v434 = v169;
      v435 = v183;
      v436 = v171;
      v437 = v184;
      idct8x8_neon(&v422, &v406, 1, a5, 0);
      goto LABEL_18;
    }

    v25 = *(a1 + 16);
    v422 = *a1;
    v423 = v25;
    v26 = *(a1 + 48);
    v424 = *(a1 + 32);
    v425 = v26;
    v27 = *(a1 + 80);
    v426 = *(a1 + 64);
    v427 = v27;
    v28 = *(a1 + 112);
    v428 = *(a1 + 96);
    v429 = v28;
    v29 = *(a1 + 144);
    v430 = *(a1 + 128);
    v431 = v29;
    v30 = *(a1 + 176);
    v432 = *(a1 + 160);
    v433 = v30;
    v31 = *(a1 + 208);
    v434 = *(a1 + 192);
    v435 = v31;
    v32 = *(a1 + 240);
    v436 = *(a1 + 224);
    v437 = v32;
    iadst8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
LABEL_13:
    v33 = vtrn1q_s32(v406, v408);
    v34 = vtrn2q_s32(v406, v408);
    v35 = vtrn1q_s32(v410, v412);
    v36 = vtrn2q_s32(v410, v412);
    v37 = vzip2q_s64(v33, v35);
    v33.i64[1] = v35.i64[0];
    v38 = vzip2q_s64(v34, v36);
    v34.i64[1] = v36.i64[0];
    v39 = vtrn1q_s32(v407, v409);
    v40 = vtrn2q_s32(v407, v409);
    v41 = vtrn1q_s32(v411, v413);
    v42 = vtrn2q_s32(v411, v413);
    v43 = vzip2q_s64(v39, v41);
    *&v44 = v39.i64[0];
    *(&v44 + 1) = v41.i64[0];
    v45 = vzip2q_s64(v40, v42);
    *&v46 = v40.i64[0];
    *(&v46 + 1) = v42.i64[0];
    v47 = vtrn1q_s32(v414, v416);
    v48 = vtrn2q_s32(v414, v416);
    v49 = vtrn1q_s32(v418, v420);
    v50 = vtrn2q_s32(v418, v420);
    v51 = vzip2q_s64(v47, v49);
    v47.i64[1] = v49.i64[0];
    v422 = v33;
    v423 = v47;
    v52 = vzip2q_s64(v48, v50);
    v48.i64[1] = v50.i64[0];
    v424 = v34;
    v425 = v48;
    v426 = v37;
    v427 = v51;
    v428 = v38;
    v429 = v52;
    v53 = vtrn1q_s32(v415, v417);
    v54 = vtrn2q_s32(v415, v417);
    v55 = vtrn1q_s32(v419, v421);
    v56 = vtrn2q_s32(v419, v421);
    v57 = vzip2q_s64(v53, v55);
    v53.i64[1] = v55.i64[0];
    v430 = v44;
    v431 = v53;
    v58 = vzip2q_s64(v54, v56);
    v54.i64[1] = v56.i64[0];
    v432 = v46;
    v433 = v54;
    v434 = v43;
    v435 = v57;
    v436 = v45;
    v437 = v58;
    iadst8x8_neon(&v422, &v406, 1, a5, 0);
LABEL_18:
    v185 = vdupq_n_s32(v8[1]);
    v128 = vrshlq_s32(v406, v185);
    v129 = vrshlq_s32(v407, v185);
    v130 = vrshlq_s32(v408, v185);
    v131 = vrshlq_s32(v409, v185);
    v132 = vrshlq_s32(v410, v185);
    v133 = vrshlq_s32(v411, v185);
    v134 = vrshlq_s32(v412, v185);
    v135 = vrshlq_s32(v413, v185);
    v136 = vrshlq_s32(v414, v185);
    v137 = vrshlq_s32(v415, v185);
    v138 = vrshlq_s32(v416, v185);
    v139 = vrshlq_s32(v417, v185);
    v140 = vrshlq_s32(v418, v185);
    v141 = vrshlq_s32(v419, v185);
    v142 = vrshlq_s32(v420, v185);
    v143 = 2 * a3;
    v144 = *&a2->i8[v143];
    v145 = 4 * a3;
    v146 = *&a2->i8[v145];
    v147 = vrshlq_s32(v421, v185);
    v148 = 6 * a3;
    v149 = *&a2->i8[v148];
    v150 = a3;
    goto LABEL_19;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    v17 = *(a1 + 16);
    v422 = *a1;
    v423 = v17;
    v18 = *(a1 + 48);
    v424 = *(a1 + 32);
    v425 = v18;
    v19 = *(a1 + 80);
    v426 = *(a1 + 64);
    v427 = v19;
    v20 = *(a1 + 112);
    v428 = *(a1 + 96);
    v429 = v20;
    v21 = *(a1 + 144);
    v430 = *(a1 + 128);
    v431 = v21;
    v22 = *(a1 + 176);
    v432 = *(a1 + 160);
    v433 = v22;
    v23 = *(a1 + 208);
    v434 = *(a1 + 192);
    v435 = v23;
    v24 = *(a1 + 240);
    v436 = *(a1 + 224);
    v437 = v24;
    idct8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
    goto LABEL_13;
  }

  v93 = *(a1 + 16);
  v422 = *a1;
  v423 = v93;
  v94 = *(a1 + 48);
  v424 = *(a1 + 32);
  v425 = v94;
  v95 = *(a1 + 80);
  v426 = *(a1 + 64);
  v427 = v95;
  v96 = *(a1 + 112);
  v428 = *(a1 + 96);
  v429 = v96;
  v97 = *(a1 + 144);
  v430 = *(a1 + 128);
  v431 = v97;
  v98 = *(a1 + 176);
  v432 = *(a1 + 160);
  v433 = v98;
  v99 = *(a1 + 208);
  v434 = *(a1 + 192);
  v435 = v99;
  v100 = *(a1 + 240);
  v436 = *(a1 + 224);
  v437 = v100;
  idct8x8_neon(&v422, &v406, 0, a5, -*off_2808D36B8);
  v101 = vtrn1q_s32(v406, v408);
  v102 = vtrn2q_s32(v406, v408);
  v103 = vtrn1q_s32(v410, v412);
  v104 = vtrn2q_s32(v410, v412);
  v105 = vzip2q_s64(v101, v103);
  v101.i64[1] = v103.i64[0];
  v106 = vzip2q_s64(v102, v104);
  v102.i64[1] = v104.i64[0];
  v107 = vtrn1q_s32(v407, v409);
  v108 = vtrn2q_s32(v407, v409);
  v109 = vtrn1q_s32(v411, v413);
  v110 = vtrn2q_s32(v411, v413);
  v111 = vzip2q_s64(v107, v109);
  *&v112 = v107.i64[0];
  *(&v112 + 1) = v109.i64[0];
  v113 = vzip2q_s64(v108, v110);
  *&v114 = v108.i64[0];
  *(&v114 + 1) = v110.i64[0];
  v115 = vtrn1q_s32(v414, v416);
  v116 = vtrn2q_s32(v414, v416);
  v117 = vtrn1q_s32(v418, v420);
  v118 = vtrn2q_s32(v418, v420);
  v119 = vzip2q_s64(v115, v117);
  v115.i64[1] = v117.i64[0];
  v422 = v101;
  v423 = v115;
  v120 = vzip2q_s64(v116, v118);
  v116.i64[1] = v118.i64[0];
  v424 = v102;
  v425 = v116;
  v426 = v105;
  v427 = v119;
  v428 = v106;
  v429 = v120;
  v121 = vtrn1q_s32(v415, v417);
  v122 = vtrn2q_s32(v415, v417);
  v123 = vtrn1q_s32(v419, v421);
  v124 = vtrn2q_s32(v419, v421);
  v125 = vzip2q_s64(v121, v123);
  v121.i64[1] = v123.i64[0];
  v430 = v112;
  v431 = v121;
  v126 = vzip2q_s64(v122, v124);
  v122.i64[1] = v124.i64[0];
  v432 = v114;
  v433 = v122;
  v434 = v111;
  v435 = v125;
  v436 = v113;
  v437 = v126;
  idct8x8_neon(&v422, &v406, 1, a5, 0);
  v127 = vdupq_n_s32(v8[1]);
  v128 = vrshlq_s32(v406, v127);
  v129 = vrshlq_s32(v407, v127);
  v130 = vrshlq_s32(v408, v127);
  v131 = vrshlq_s32(v409, v127);
  v132 = vrshlq_s32(v410, v127);
  v133 = vrshlq_s32(v411, v127);
  v134 = vrshlq_s32(v412, v127);
  v135 = vrshlq_s32(v413, v127);
  v136 = vrshlq_s32(v414, v127);
  v137 = vrshlq_s32(v415, v127);
  v138 = vrshlq_s32(v416, v127);
  v139 = vrshlq_s32(v417, v127);
  v140 = vrshlq_s32(v418, v127);
  v141 = vrshlq_s32(v419, v127);
  v142 = vrshlq_s32(v420, v127);
  v143 = 2 * a3;
  v144 = *&a2->i8[v143];
  v145 = 4 * a3;
  v146 = *&a2->i8[v145];
  v147 = vrshlq_s32(v421, v127);
  v148 = 6 * a3;
  v149 = *&a2->i8[v148];
  v150 = a3;
LABEL_19:
  v186 = 10 * a3;
  v187 = 12 * a3;
  v188 = 14 * a3;
  v189 = vdupq_n_s16(~(-1 << a5));
  v190 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v136, a2[v150])), vaddw_high_s16(v137, *a2[v150].i8)), v189), 0);
  v191 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v138, *(a2 + v186))), vaddw_high_s16(v139, *&a2->i8[v186])), v189), 0);
  v192 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v140, *(a2 + v187))), vaddw_high_s16(v141, *&a2->i8[v187])), v189), 0);
  v193 = vqmovn_high_u32(vqmovn_u32(vaddw_s16(v142, *(a2 + v188))), vaddw_high_s16(v147, *&a2->i8[v188]));
  *a2->i8 = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v128, *a2)), vaddw_high_s16(v129, *a2->i8)), v189), 0);
  *&a2->i8[v143] = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v130, *v144.i8)), vaddw_high_s16(v131, v144)), v189), 0);
  *&a2->i8[v145] = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v132, *v146.i8)), vaddw_high_s16(v133, v146)), v189), 0);
  *&a2->i8[v148] = vmaxq_s16(vminq_s16(vqmovn_high_u32(vqmovn_u32(vaddw_s16(v134, *v149.i8)), vaddw_high_s16(v135, v149)), v189), 0);
  *a2[v150].i8 = v190;
  *&a2->i8[v186] = v191;
  v194 = vmaxq_s16(vminq_s16(v193, v189), 0);
  *&a2->i8[v187] = v192;
LABEL_27:
  *&a2->i8[v188] = v194;
}

int32x4_t idct8x8_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5)
{
  if (a3)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8;
  }

  v6 = v5 + a4;
  if (v6 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 - 1);
  }

  v8 = vdupq_n_s32(-v7);
  v9 = vdupq_n_s32(v7 - 1);
  v10 = a1[4];
  v11 = a1[12];
  v12 = a1[2];
  v13 = vdupq_n_s32(0x31Fu);
  v14 = a1[14];
  v15 = vdupq_n_s32(0xFFFFF04F);
  v16.i64[0] = 0x80000000800;
  v16.i64[1] = 0x80000000800;
  v17 = vaddq_s32(vmlaq_s32(vmulq_s32(v14, v15), v12, v13), v16);
  v18 = vdupq_n_s32(0xFB1u);
  v19 = vaddq_s32(vmlaq_s32(vmulq_s32(v14, v13), v12, v18), v16);
  v20 = vdupq_n_s32(0xD4Eu);
  v21 = a1[10];
  v22 = a1[6];
  v23 = vdupq_n_s32(0xFFFFF71C);
  v24 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v22, v23), v21, v20), v16), 0xCuLL);
  v25 = vdupq_n_s32(0x8E4u);
  v26 = vaddq_s32(vmlaq_s32(vmulq_s32(v22, v20), v21, v25), v16);
  v27 = vdupq_n_s32(0xB50u);
  v28 = vshrq_n_s32(v26, 0xCuLL);
  v29 = vmulq_s32(a1[8], v27);
  v26.i64[0] = 0x80000000800;
  v26.i64[1] = 0x80000000800;
  v30 = vmlaq_s32(v26, *a1, v27);
  v31 = vaddq_s32(v30, v29);
  v32 = vsubq_s32(v30, v29);
  v33 = vdupq_n_s32(0x61Fu);
  v34 = vdupq_n_s32(0xFFFFF138);
  v35 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v11, v34), v10, v33), v16), 0xCuLL);
  v36 = vdupq_n_s32(0xEC8u);
  v37 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v11, v33), v10, v36), v16), 0xCuLL);
  v38 = vminq_s32(vmaxq_s32(vsraq_n_s32(v24, v17, 0xCuLL), v8), v9);
  v39 = vminq_s32(vmaxq_s32(vsubq_s32(vshrq_n_s32(v17, 0xCuLL), v24), v8), v9);
  v40 = vsubq_s32(vshrq_n_s32(v19, 0xCuLL), v28);
  v41 = vminq_s32(vmaxq_s32(vsraq_n_s32(v28, v19, 0xCuLL), v8), v9);
  v42 = vsubq_s32(vshrq_n_s32(v31, 0xCuLL), v37);
  v43 = vminq_s32(vmaxq_s32(vsraq_n_s32(v37, v31, 0xCuLL), v8), v9);
  v44 = vminq_s32(vmaxq_s32(v42, v8), v9);
  v45 = vsubq_s32(vshrq_n_s32(v32, 0xCuLL), v35);
  v46 = vminq_s32(vmaxq_s32(vsraq_n_s32(v35, v32, 0xCuLL), v8), v9);
  v47 = vminq_s32(vmaxq_s32(v45, v8), v9);
  v48 = vmulq_s32(v39, v27);
  v49 = vmulq_s32(vminq_s32(vmaxq_s32(v40, v8), v9), v27);
  v50 = vaddq_s32(vaddq_s32(v48, v49), v16);
  v51 = vaddq_s32(vsubq_s32(v49, v48), v16);
  v52 = vminq_s32(vmaxq_s32(vaddq_s32(v43, v41), v8), v9);
  v53 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v41), v8), v9);
  *a2 = v52;
  a2[14] = v53;
  v54 = vminq_s32(vmaxq_s32(vsraq_n_s32(v46, v50, 0xCuLL), v8), v9);
  v55 = vminq_s32(vmaxq_s32(vsubq_s32(v46, vshrq_n_s32(v50, 0xCuLL)), v8), v9);
  a2[2] = v54;
  a2[12] = v55;
  v56 = vminq_s32(vmaxq_s32(vsraq_n_s32(v47, v51, 0xCuLL), v8), v9);
  v57 = vminq_s32(vmaxq_s32(vsubq_s32(v47, vshrq_n_s32(v51, 0xCuLL)), v8), v9);
  a2[4] = v56;
  a2[10] = v57;
  v58 = vaddq_s32(v44, v38);
  v59 = vsubq_s32(v44, v38);
  v60 = vminq_s32(vmaxq_s32(v58, v8), v9);
  v61 = vminq_s32(vmaxq_s32(v59, v8), v9);
  a2[6] = v60;
  a2[8] = v61;
  v62 = a1[5];
  v63 = a1[13];
  v64 = a1[3];
  v65 = a1[15];
  v66 = vaddq_s32(vmlaq_s32(vmulq_s32(v65, v15), v64, v13), v16);
  v67 = vaddq_s32(vmlaq_s32(vmulq_s32(v65, v13), v64, v18), v16);
  v68 = a1[11];
  v69 = a1[7];
  v70 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v69, v23), v68, v20), v16), 0xCuLL);
  v71 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v69, v20), v68, v25), v16), 0xCuLL);
  v72 = vmulq_s32(a1[9], v27);
  v28.i64[0] = 0x80000000800;
  v28.i64[1] = 0x80000000800;
  v73 = vmlaq_s32(v28, a1[1], v27);
  v74 = vaddq_s32(v73, v72);
  v75 = vsubq_s32(v73, v72);
  v76 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v63, v34), v62, v33), v16), 0xCuLL);
  v77 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v63, v33), v62, v36), v16), 0xCuLL);
  v78 = vsubq_s32(vshrq_n_s32(v66, 0xCuLL), v70);
  v79 = vminq_s32(vmaxq_s32(vsraq_n_s32(v70, v66, 0xCuLL), v8), v9);
  v80 = vminq_s32(vmaxq_s32(v78, v8), v9);
  v81 = vsubq_s32(vshrq_n_s32(v67, 0xCuLL), v71);
  v82 = vminq_s32(vmaxq_s32(vsraq_n_s32(v71, v67, 0xCuLL), v8), v9);
  v83 = vminq_s32(vmaxq_s32(v81, v8), v9);
  v84 = vsubq_s32(vshrq_n_s32(v74, 0xCuLL), v77);
  v85 = vminq_s32(vmaxq_s32(vsraq_n_s32(v77, v74, 0xCuLL), v8), v9);
  v86 = vminq_s32(vmaxq_s32(v84, v8), v9);
  v87 = vsubq_s32(vshrq_n_s32(v75, 0xCuLL), v76);
  v88 = vminq_s32(vmaxq_s32(vsraq_n_s32(v76, v75, 0xCuLL), v8), v9);
  v89 = vminq_s32(vmaxq_s32(v87, v8), v9);
  v90 = vmulq_s32(v80, v27);
  v91 = vmulq_s32(v83, v27);
  v92 = vaddq_s32(vaddq_s32(v90, v91), v16);
  v93 = vaddq_s32(vsubq_s32(v91, v90), v16);
  v94 = vsubq_s32(v85, v82);
  v95 = vminq_s32(vmaxq_s32(vaddq_s32(v85, v82), v8), v9);
  v96 = vminq_s32(vmaxq_s32(v94, v8), v9);
  a2[1] = v95;
  a2[15] = v96;
  v97 = vsubq_s32(v88, vshrq_n_s32(v92, 0xCuLL));
  v98 = vminq_s32(vmaxq_s32(vsraq_n_s32(v88, v92, 0xCuLL), v8), v9);
  v99 = vminq_s32(vmaxq_s32(v97, v8), v9);
  a2[3] = v98;
  a2[13] = v99;
  v100 = vsubq_s32(v89, vshrq_n_s32(v93, 0xCuLL));
  v101 = vminq_s32(vmaxq_s32(vsraq_n_s32(v89, v93, 0xCuLL), v8), v9);
  v102 = vminq_s32(vmaxq_s32(v100, v8), v9);
  a2[5] = v101;
  a2[11] = v102;
  v103 = vsubq_s32(v86, v79);
  v104 = vminq_s32(vmaxq_s32(vaddq_s32(v86, v79), v8), v9);
  result = vmaxq_s32(v103, v8);
  v106 = vminq_s32(result, v9);
  a2[7] = v104;
  a2[9] = v106;
  if (!a3)
  {
    if (a4 <= 10)
    {
      v107 = 10;
    }

    else
    {
      v107 = a4;
    }

    v108 = 32 << v107;
    v109 = vdupq_n_s32(-v108);
    v110 = vdupq_n_s32(v108 - 1);
    v111 = vdupq_n_s32(-a5);
    *a2 = vminq_s32(vmaxq_s32(vrshlq_s32(v52, v111), v109), v110);
    a2[1] = vminq_s32(vmaxq_s32(vrshlq_s32(v95, v111), v109), v110);
    a2[2] = vminq_s32(vmaxq_s32(vrshlq_s32(v54, v111), v109), v110);
    a2[3] = vminq_s32(vmaxq_s32(vrshlq_s32(v98, v111), v109), v110);
    a2[4] = vminq_s32(vmaxq_s32(vrshlq_s32(v56, v111), v109), v110);
    a2[5] = vminq_s32(vmaxq_s32(vrshlq_s32(v101, v111), v109), v110);
    a2[6] = vminq_s32(vmaxq_s32(vrshlq_s32(v60, v111), v109), v110);
    a2[7] = vminq_s32(vmaxq_s32(vrshlq_s32(v104, v111), v109), v110);
    a2[8] = vminq_s32(vmaxq_s32(vrshlq_s32(v61, v111), v109), v110);
    a2[9] = vminq_s32(vmaxq_s32(vrshlq_s32(v106, v111), v109), v110);
    a2[10] = vminq_s32(vmaxq_s32(vrshlq_s32(v57, v111), v109), v110);
    a2[11] = vminq_s32(vmaxq_s32(vrshlq_s32(v102, v111), v109), v110);
    a2[12] = vminq_s32(vmaxq_s32(vrshlq_s32(v55, v111), v109), v110);
    a2[13] = vminq_s32(vmaxq_s32(vrshlq_s32(v99, v111), v109), v110);
    v112 = vminq_s32(vmaxq_s32(vrshlq_s32(v53, v111), v109), v110);
    result = vminq_s32(vmaxq_s32(vrshlq_s32(v96, v111), v109), v110);
    a2[14] = v112;
    a2[15] = result;
  }

  return result;
}

int32x4_t *iadst8x8_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5)
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
  v13 = vaddq_s32(vmlaq_s32(vmulq_s32(*result, vdupq_n_s32(0xFFFFF014)), v9, v10), v11);
  v14 = result[10];
  v15 = result[4];
  v16 = vdupq_n_s32(0x78Bu);
  v17 = vaddq_s32(vmlaq_s32(vmulq_s32(v15, v16), v14, vdupq_n_s32(0xE1Cu)), v11);
  v18 = vaddq_s32(vmlaq_s32(vmulq_s32(v15, vdupq_n_s32(0xFFFFF1E4)), v14, v16), v11);
  v19 = result[6];
  v20 = result[8];
  v21 = vdupq_n_s32(0xC5Eu);
  v22 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v20, v21), v19, vdupq_n_s32(0xA26u)), v11), 0xCuLL);
  v23 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v20, vdupq_n_s32(0xFFFFF5DA)), v19, v21), v11), 0xCuLL);
  v24 = result[2];
  v25 = result[12];
  v26 = vdupq_n_s32(0xF50u);
  v27 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v25, v26), v24, vdupq_n_s32(0x4A5u)), v11), 0xCuLL);
  v28 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v25, vdupq_n_s32(0xFFFFFB5B)), v24, v26), v11), 0xCuLL);
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
  v44 = vaddq_s32(vmlaq_s32(vmulq_s32(v34, vdupq_n_s32(0xFFFFF138)), v31, v42), v11);
  v45 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, v40), v37, vdupq_n_s32(0xFFFFF9E1)), v11), 0xCuLL);
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
  v60 = vshrq_n_s32(vaddq_s32(v59, v58), 0xCuLL);
  v61 = vshrq_n_s32(vsubq_s32(v58, v59), 0xCuLL);
  v62 = vmlaq_s32(v11, v54, v57);
  v63 = vmulq_s32(v56, v57);
  v64 = vshrq_n_s32(vaddq_s32(v63, v62), 0xCuLL);
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

int16x4_t av1_inv_txfm2d_add_4x8_neon(int32x4_t *a1, int16x4_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = off_2808D36D8[0];
  v9 = highbd_txfm_all_1d_zeros_w8_arr[4 * hitx_1d_tab_0[a4]];
  v10 = &highbd_txfm_all_1d_zeros_w8_arr[4 * vitx_1d_tab_0[a4]];
  v11 = a4 > 0xF;
  v52 = v11 | (0xBEAFu >> a4);
  v12 = v11 | (0x7F1Fu >> a4);
  v13 = &v57;
  v14 = a1[1];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v19 = a1[7];
  v20 = vdupq_n_s32(0xB50u);
  v21 = vrshrq_n_s32(vmulq_s32(a1[2], v20), 0xCuLL);
  v53 = vrshrq_n_s32(vmulq_s32(*a1, v20), 0xCuLL);
  v54 = v21;
  v55 = vrshrq_n_s32(vmulq_s32(v16, v20), 0xCuLL);
  v56 = vrshrq_n_s32(vmulq_s32(v18, v20), 0xCuLL);
  v22 = &v58;
  v57 = vrshrq_n_s32(vmulq_s32(v14, v20), 0xCuLL);
  v58 = vrshrq_n_s32(vmulq_s32(v15, v20), 0xCuLL);
  v59 = vrshrq_n_s32(vmulq_s32(v17, v20), 0xCuLL);
  v60 = vrshrq_n_s32(vmulq_s32(v19, v20), 0xCuLL);
  v51 = v10[13];
  (v9)(&v53, &v53, 12, 0, a5, -*off_2808D36D8[0]);
  (v9)(&v57, &v57, 12, 0, a5, -*v8);
  if (v12)
  {
    v23 = vtrn1q_s32(v53, v54);
    v24 = vtrn2q_s32(v53, v54);
    v25 = vtrn1q_s32(v55, v56);
    v26 = vtrn2q_s32(v55, v56);
    v27 = &v57;
    v28 = &v58;
    v22 = &v59;
    v13 = &v60;
  }

  else
  {
    v23 = vtrn1q_s32(v56, v55);
    v24 = vtrn2q_s32(v56, v55);
    v25 = vtrn1q_s32(v54, v53);
    v26 = vtrn2q_s32(v54, v53);
    v27 = &v60;
    v28 = &v59;
  }

  v29.i64[0] = v23.i64[0];
  v29.i64[1] = v25.i64[0];
  v30.i64[0] = v24.i64[0];
  v30.i64[1] = v26.i64[0];
  v61 = v29;
  v62 = v30;
  v63 = vzip2q_s64(v23, v25);
  v64 = vzip2q_s64(v24, v26);
  v31 = vtrn1q_s32(*v27, *v28);
  v32 = vtrn2q_s32(*v27, *v28);
  v33 = vtrn1q_s32(*v22, *v13);
  v34 = vtrn2q_s32(*v22, *v13);
  v35 = vzip2q_s64(v31, v33);
  v31.i64[1] = v33.i64[0];
  v36 = vzip2q_s64(v32, v34);
  v32.i64[1] = v34.i64[0];
  v65 = v31;
  v66 = v32;
  v67 = v35;
  v68 = v36;
  (v51)(&v61, &v61, 12, 1, a5, 0);
  v37 = vdupq_n_s32(v8[1]);
  v38 = vrshlq_s32(v61, v37);
  v61 = v38;
  v39 = vrshlq_s32(v62, v37);
  v40 = vrshlq_s32(v63, v37);
  v41 = vrshlq_s32(v64, v37);
  v42 = vrshlq_s32(v65, v37);
  v43 = vrshlq_s32(v66, v37);
  v44 = vrshlq_s32(v67, v37);
  v45 = vrshlq_s32(v68, v37);
  v46 = vdupq_n_s16(~(-1 << a5)).u64[0];
  if (v52)
  {
    v47 = -1;
  }

  else
  {
    v47 = 0;
  }

  v48 = vdupq_n_s32(v47);
  *a2 = vmax_s16(vmin_s16(vadd_s16(*a2, vmovn_s32(vbslq_s8(v48, v38, v45))), v46), 0);
  *(a2 + 2 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 2 * a3), vmovn_s32(vbslq_s8(v48, v39, v44))), v46), 0);
  *(a2 + 4 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 4 * a3), vmovn_s32(vbslq_s8(v48, v40, v43))), v46), 0);
  *(a2 + 6 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 6 * a3), vmovn_s32(vbslq_s8(v48, v41, v42))), v46), 0);
  a2[a3] = vmax_s16(vmin_s16(vadd_s16(a2[a3], vmovn_s32(vbslq_s8(v48, v42, v41))), v46), 0);
  *(a2 + 10 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 10 * a3), vmovn_s32(vbslq_s8(v48, v43, v40))), v46), 0);
  *(a2 + 12 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 12 * a3), vmovn_s32(vbslq_s8(v48, v44, v39))), v46), 0);
  v49 = 14 * a3;
  result = vmax_s16(vmin_s16(vadd_s16(*(a2 + v49), vmovn_s32(vbslq_s8(v48, v45, v38))), v46), 0);
  *(a2 + v49) = result;
  return result;
}

uint16x8_t av1_inv_txfm2d_add_8x4_neon(int32x4_t *a1, int16x4_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  v60 = *a1;
  v61 = v8;
  v9 = a1[5];
  v64 = a1[4];
  v65 = v9;
  v10 = a1[7];
  v66 = a1[6];
  v67 = v10;
  v11 = a1[3];
  v62 = a1[2];
  v12 = vdupq_n_s32(0xB50u);
  v60 = vrshrq_n_s32(vmulq_s32(v60, v12), 0xCuLL);
  v61 = vrshrq_n_s32(vmulq_s32(v61, v12), 0xCuLL);
  v62 = vrshrq_n_s32(vmulq_s32(v62, v12), 0xCuLL);
  v63 = vrshrq_n_s32(vmulq_s32(v11, v12), 0xCuLL);
  v64 = vrshrq_n_s32(vmulq_s32(v64, v12), 0xCuLL);
  v65 = vrshrq_n_s32(vmulq_s32(v65, v12), 0xCuLL);
  v13 = off_2808D36E0;
  v14 = highbd_txfm_all_1d_zeros_w8_arr[4 * hitx_1d_tab_0[a4] + 13];
  v15 = highbd_txfm_all_1d_zeros_w8_arr[4 * vitx_1d_tab_0[a4]];
  v16 = a4 > 0xF;
  v17 = v16 | (0xBEAFu >> a4);
  v18 = v16 | (0x7F1Fu >> a4);
  v66 = vrshrq_n_s32(vmulq_s32(v66, v12), 0xCuLL);
  v67 = vrshrq_n_s32(vmulq_s32(v67, v12), 0xCuLL);
  (v14)(&v60, &v60, 12, 0, a5, -*off_2808D36E0);
  v19 = v60;
  if (v18)
  {
    v20 = &v64;
    v22 = v61;
    v21 = v62;
    v23 = &v60;
    v24 = v63;
  }

  else
  {
    v20 = v69;
    v69[2] = v61;
    v69[3] = v60;
    v24 = v64;
    v69[0] = v63;
    v69[1] = v62;
    v21 = v65;
    v22 = v66;
    v68[2] = v65;
    v68[3] = v64;
    v19 = v67;
    v23 = v68;
    v68[0] = v67;
    v68[1] = v66;
  }

  v25 = vtrn1q_s32(v19, v22);
  v26 = vtrn2q_s32(v19, v22);
  v27 = vtrn1q_s32(v21, v24);
  v28 = vtrn2q_s32(v21, v24);
  v29 = vzip2q_s64(v25, v27);
  v25.i64[1] = v27.i64[0];
  v30 = vzip2q_s64(v26, v28);
  v26.i64[1] = v28.i64[0];
  *v23 = v25;
  v23[1] = v26;
  v23[2] = v29;
  v23[3] = v30;
  (v15)(v23, v23, 12, 1, a5, 0);
  v31 = v23[4];
  v32 = v20[1];
  v33 = v20[2];
  v34 = vtrn1q_s32(v31, v32);
  v35 = vtrn2q_s32(v31, v32);
  v36 = v20[3];
  v37 = vtrn1q_s32(v33, v36);
  v38 = vtrn2q_s32(v33, v36);
  v39 = vzip2q_s64(v34, v37);
  v34.i64[1] = v37.i64[0];
  v23[4] = v34;
  v40 = vzip2q_s64(v35, v38);
  v35.i64[1] = v38.i64[0];
  v20[1] = v35;
  v20[2] = v39;
  v20[3] = v40;
  (v15)(v20, v20, 12, 1, a5, 0);
  v41 = vdupq_n_s32(v13[1]);
  v42 = vrshlq_s32(*v23, v41);
  v43 = vrshlq_s32(v23[1], v41);
  *v23 = v42;
  v23[1] = v43;
  v44 = vrshlq_s32(v23[2], v41);
  v45 = vrshlq_s32(v23[3], v41);
  v23[2] = v44;
  v23[3] = v45;
  v46 = vrshlq_s32(v23[5], v41);
  v23[4] = vrshlq_s32(v23[4], v41);
  v23[5] = v46;
  v47 = vrshlq_s32(v23[6], v41);
  v48 = vrshlq_s32(v23[7], v41);
  v23[6] = v47;
  v23[7] = v48;
  v49 = vdupq_n_s32(~(-1 << a5));
  if (v17)
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  v51 = vdupq_n_s32(v50);
  v52 = vbslq_s8(v51, v42, v45);
  if (v17)
  {
    v53 = v20;
  }

  else
  {
    v53 = v20 + 3;
  }

  *a2->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v52, *a2), 0), v49)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v53, *a2->i8), 0), v49));
  v54 = 2;
  if (v17)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2;
  }

  *&a2->i8[2 * a3] = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(vbslq_s8(v51, v43, v44), *(a2 + 2 * a3)), 0), v49)), vminq_s32(vmaxq_s32(vaddw_high_s16(v20[v55], *&a2->i8[2 * a3]), 0), v49));
  v56 = vbslq_s8(v51, v44, v43);
  if ((v17 & 1) == 0)
  {
    v54 = 1;
  }

  *&a2->i8[4 * a3] = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v56, *(a2 + 4 * a3)), 0), v49)), vminq_s32(vmaxq_s32(vaddw_high_s16(v20[v54], *&a2->i8[4 * a3]), 0), v49));
  v57 = vbslq_s8(v51, v45, v42);
  if (v17)
  {
    v58 = v20 + 3;
  }

  else
  {
    v58 = v20;
  }

  result = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v57, *(a2 + 6 * a3)), 0), v49)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v58, *&a2->i8[6 * a3]), 0), v49));
  *&a2->i8[6 * a3] = result;
  return result;
}

int16x4_t av1_inv_txfm2d_add_4x16_neon(uint64_t a1, int16x4_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  v135 = *MEMORY[0x277D85DE8];
  v9 = off_2808D3718[0];
  v10 = highbd_txfm_all_1d_zeros_w8_arr[4 * hitx_1d_tab_0[a4]];
  v101 = highbd_txfm_all_1d_zeros_w8_arr[4 * vitx_1d_tab_0[a4] + 26];
  v11 = a4 > 0xF;
  v102 = v11 | (0xBEAFu >> a4);
  v100 = v11 | (0x7F1Fu >> a4);
  v12 = *(a1 + 64);
  v103 = *a1;
  v104 = v12;
  v13 = *(a1 + 192);
  v105 = *(a1 + 128);
  v106 = v13;
  (v10)(&v103, &v103, 12, 0, a5, -*off_2808D3718[0]);
  v14 = &v107;
  v15 = *(a1 + 80);
  v107 = *(a1 + 16);
  v108 = v15;
  v16 = *(a1 + 208);
  v109 = *(a1 + 144);
  v110 = v16;
  (v10)(&v107, &v107, 12, 0, a5, -*v9);
  v17 = &v111;
  v18 = *(a1 + 96);
  v111 = *(a1 + 32);
  v112 = v18;
  v19 = *(a1 + 224);
  v113 = *(a1 + 160);
  v114 = v19;
  (v10)(&v111, &v111, 12, 0, a5, -*v9);
  v20 = &v115;
  v21 = *(a1 + 112);
  v115 = *(a1 + 48);
  v116 = v21;
  v22 = *(a1 + 240);
  v117 = *(a1 + 176);
  v118 = v22;
  (v10)(&v115, &v115, 12, 0, a5, -*v9);
  if (v100)
  {
    v23 = vtrn1q_s32(v103, v104);
    v24 = vtrn2q_s32(v103, v104);
    v25 = vtrn1q_s32(v105, v106);
    v26 = vtrn2q_s32(v105, v106);
    v27 = vzip2q_s64(v23, v25);
    v23.i64[1] = v25.i64[0];
    v28 = vzip2q_s64(v24, v26);
    v24.i64[1] = v26.i64[0];
    v29 = &v107;
    v31 = &v109;
    v30 = &v108;
    v32 = &v112;
    v14 = &v110;
    v33 = &v111;
    v17 = &v114;
    v34 = &v113;
    v119 = v23;
    v120 = v24;
    v121 = v27;
    v35 = &v115;
    v36 = &v116;
    v37 = &v117;
    v20 = &v118;
  }

  else
  {
    v38 = vtrn1q_s32(v106, v105);
    v39 = vtrn2q_s32(v106, v105);
    v40 = vtrn1q_s32(v104, v103);
    v41 = vtrn2q_s32(v104, v103);
    v42 = vzip2q_s64(v38, v40);
    v38.i64[1] = v40.i64[0];
    v28 = vzip2q_s64(v39, v41);
    v39.i64[1] = v41.i64[0];
    v29 = &v110;
    v30 = &v109;
    v119 = v38;
    v120 = v39;
    v121 = v42;
    v33 = &v114;
    v32 = &v113;
    v35 = &v118;
    v36 = &v117;
    v37 = &v116;
    v34 = &v112;
    v31 = &v108;
  }

  v43 = vtrn1q_s32(*v29, *v30);
  v44 = vtrn2q_s32(*v29, *v30);
  v45 = vtrn1q_s32(*v31, *v14);
  v46 = vzip2q_s64(v43, v45);
  v43.i64[1] = v45.i64[0];
  v47 = vtrn2q_s32(*v31, *v14);
  v48 = vzip2q_s64(v44, v47);
  v44.i64[1] = v47.i64[0];
  v122 = v28;
  v123 = v43;
  v124 = v44;
  v125 = v46;
  v49 = vtrn1q_s32(*v33, *v32);
  v50 = vtrn2q_s32(*v33, *v32);
  v51 = vtrn1q_s32(*v34, *v17);
  v52 = vzip2q_s64(v49, v51);
  v49.i64[1] = v51.i64[0];
  v53 = vtrn2q_s32(*v34, *v17);
  v54 = vzip2q_s64(v50, v53);
  v50.i64[1] = v53.i64[0];
  v126 = v48;
  v127 = v49;
  v55 = vtrn1q_s32(*v35, *v36);
  v56 = vtrn2q_s32(*v35, *v36);
  v57 = *v37;
  v128 = v50;
  v129 = v52;
  v58 = vtrn1q_s32(v57, *v20);
  v59 = vtrn2q_s32(v57, *v20);
  v60 = vzip2q_s64(v55, v58);
  v55.i64[1] = v58.i64[0];
  v130 = v54;
  v131 = v55;
  v61 = vzip2q_s64(v56, v59);
  v56.i64[1] = v59.i64[0];
  v132 = v56;
  v133 = v60;
  v134 = v61;
  (v101)(&v119, &v119, 12, 1, a5, 0);
  v62 = vdupq_n_s32(v9[1]);
  v63 = vrshlq_s32(v119, v62);
  v64 = &v120;
  v65 = vrshlq_s32(v120, v62);
  v119 = v63;
  v120 = v65;
  v66 = &v121;
  v67 = vrshlq_s32(v121, v62);
  v68 = vrshlq_s32(v122, v62);
  v121 = v67;
  v122 = v68;
  v69 = vrshlq_s32(v123, v62);
  v70 = vrshlq_s32(v124, v62);
  v123 = v69;
  v124 = v70;
  v125 = vrshlq_s32(v125, v62);
  v126 = vrshlq_s32(v126, v62);
  v71 = vrshlq_s32(v127, v62);
  v72 = vrshlq_s32(v128, v62);
  v73 = v131;
  v74 = v132;
  v75 = vrshlq_s32(v133, v62);
  v76 = vrshlq_s32(v134, v62);
  v77 = vdupq_n_s16(~(-1 << a5)).u64[0];
  if (v102)
  {
    v78 = -1;
  }

  else
  {
    v78 = 0;
  }

  v79 = vdupq_n_s32(v78);
  *a2 = vmax_s16(vmin_s16(vadd_s16(*a2, vmovn_s32(vbslq_s8(v79, v63, v76))), v77), 0);
  *(a2 + 2 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 2 * a3), vmovn_s32(vbslq_s8(v79, v65, v75))), v77), 0);
  v80 = 4 * a3;
  v81 = vrshlq_s32(v74, v62);
  v82 = vadd_s16(*(a2 + v80), vmovn_s32(vbslq_s8(v79, v67, v81)));
  v83 = v129;
  v84 = v130;
  v85 = vrshlq_s32(v73, v62);
  *(a2 + v80) = vmax_s16(vmin_s16(v82, v77), 0);
  *(a2 + 6 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 6 * a3), vmovn_s32(vbslq_s8(v79, v68, v85))), v77), 0);
  v86 = vrshlq_s32(v84, v62);
  a2[a3] = vmax_s16(vmin_s16(vadd_s16(a2[a3], vmovn_s32(vbslq_s8(v79, v69, v86))), v77), 0);
  v87 = vrshlq_s32(v83, v62);
  *(a2 + 10 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 10 * a3), vmovn_s32(vbslq_s8(v79, v70, v87))), v77), 0);
  v88 = 12 * a3;
  v89 = *(a2 + v88);
  v127 = v71;
  v128 = v72;
  v90 = v125;
  v91 = v126;
  *(a2 + v88) = vmax_s16(vmin_s16(vadd_s16(v89, vmovn_s32(vbslq_s8(v79, v125, v72))), v77), 0);
  v92 = v127;
  v93 = v128;
  *(a2 + 14 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 14 * a3), vmovn_s32(vbslq_s8(v79, v91, v127))), v77), 0);
  v129 = v87;
  v130 = v86;
  a2[2 * a3] = vmax_s16(vmin_s16(vadd_s16(a2[2 * a3], vmovn_s32(vbslq_s8(v79, v92, v91))), v77), 0);
  v131 = v85;
  v132 = v81;
  v94 = 18 * a3;
  *v87.i8 = *(a2 + v94);
  v133 = v75;
  v134 = v76;
  *(a2 + v94) = vmax_s16(vmin_s16(vadd_s16(*v87.i8, vmovn_s32(vbslq_s8(v79, v93, v90))), v77), 0);
  v95 = &v124;
  if (v102)
  {
    v95 = &v129;
  }

  *(a2 + 20 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 20 * a3), vmovn_s32(*v95)), v77), 0);
  v96 = &v123;
  if (v102)
  {
    v96 = &v130;
  }

  *(a2 + 22 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 22 * a3), vmovn_s32(*v96)), v77), 0);
  v97 = &v122;
  if (v102)
  {
    v97 = &v131;
  }

  a2[3 * a3] = vmax_s16(vmin_s16(vadd_s16(a2[3 * a3], vmovn_s32(*v97)), v77), 0);
  if (v102)
  {
    v66 = &v132;
  }

  *(a2 + 26 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 26 * a3), vmovn_s32(*v66)), v77), 0);
  if (v102)
  {
    v64 = &v133;
  }

  *(a2 + 28 * a3) = vmax_s16(vmin_s16(vadd_s16(*(a2 + 28 * a3), vmovn_s32(*v64)), v77), 0);
  v98 = &v134;
  if ((v102 & 1) == 0)
  {
    v98 = &v119;
  }

  result = vmax_s16(vmin_s16(vadd_s16(*(a2 + 30 * a3), vmovn_s32(*v98)), v77), 0);
  *(a2 + 30 * a3) = result;
  return result;
}

uint32x4_t av1_inv_txfm2d_add_16x4_neon(int32x4_t *a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v124 = *MEMORY[0x277D85DE8];
  v7 = a1[13];
  v8 = &highbd_txfm_all_1d_zeros_w8_arr[4 * hitx_1d_tab_0[a4]];
  v9 = 4 * vitx_1d_tab_0[a4];
  v116 = a1[12];
  v117 = v7;
  v10 = a1[15];
  v11 = a4 > 0xF;
  v102 = v11 | (0xBEAFu >> a4);
  v118 = a1[14];
  v119 = v10;
  v12 = v11 | (0x7F1Fu >> a4);
  v13 = a1[9];
  v112 = a1[8];
  v113 = v13;
  v14 = a1[11];
  v114 = a1[10];
  v115 = v14;
  v15 = a1[5];
  v108 = a1[4];
  v109 = v15;
  v16 = a1[7];
  v110 = a1[6];
  v111 = v16;
  v17 = a1[1];
  v104 = *a1;
  v105 = v17;
  v18 = a1[3];
  v106 = a1[2];
  v107 = v18;
  v101 = off_2808D3720;
  v19 = highbd_txfm_all_1d_zeros_w8_arr[v9];
  (v8[26])(&v104, &v104, 12, 0, a5, -*off_2808D3720);
  v20 = v104;
  if (v12)
  {
    v21 = &v108;
    v22 = &v112;
    v23 = &v116;
    v25 = v105;
    v24 = v106;
    v26 = &v104;
    v27 = v107;
  }

  else
  {
    v21 = v121;
    v22 = v122;
    v23 = v123;
    v123[2] = v105;
    v123[3] = v104;
    v123[0] = v107;
    v123[1] = v106;
    v122[2] = v109;
    v122[3] = v108;
    v122[0] = v111;
    v122[1] = v110;
    v121[2] = v113;
    v121[3] = v112;
    v27 = v116;
    v121[0] = v115;
    v121[1] = v114;
    v24 = v117;
    v25 = v118;
    v120[2] = v117;
    v120[3] = v116;
    v20 = v119;
    v26 = v120;
    v120[0] = v119;
    v120[1] = v118;
  }

  v28 = vtrn1q_s32(v20, v25);
  v29 = vtrn2q_s32(v20, v25);
  v30 = vtrn1q_s32(v24, v27);
  v31 = vtrn2q_s32(v24, v27);
  v32 = vzip2q_s64(v28, v30);
  v28.i64[1] = v30.i64[0];
  v33 = vzip2q_s64(v29, v31);
  v29.i64[1] = v31.i64[0];
  *v26 = v28;
  v26[1] = v29;
  v26[2] = v32;
  v26[3] = v33;
  (v19)(v26, v26, 12, 1, a5, 0);
  v34 = v26[4];
  v35 = v21[1];
  v36 = v21[2];
  v37 = vtrn1q_s32(v34, v35);
  v38 = vtrn2q_s32(v34, v35);
  v39 = v21[3];
  v40 = vtrn1q_s32(v36, v39);
  v41 = vtrn2q_s32(v36, v39);
  v42 = vzip2q_s64(v37, v40);
  v37.i64[1] = v40.i64[0];
  v26[4] = v37;
  v43 = vzip2q_s64(v38, v41);
  v38.i64[1] = v41.i64[0];
  v21[1] = v38;
  v21[2] = v42;
  v21[3] = v43;
  (v19)(v21, v21, 12, 1, a5, 0);
  v44 = v26[8];
  v45 = v22[1];
  v46 = v22[2];
  v47 = vtrn1q_s32(v44, v45);
  v48 = vtrn2q_s32(v44, v45);
  v49 = v22[3];
  v50 = vtrn1q_s32(v46, v49);
  v51 = vtrn2q_s32(v46, v49);
  v52 = vzip2q_s64(v47, v50);
  v47.i64[1] = v50.i64[0];
  v26[8] = v47;
  v53 = vzip2q_s64(v48, v51);
  v48.i64[1] = v51.i64[0];
  v22[1] = v48;
  v22[2] = v52;
  v22[3] = v53;
  (v19)(v22, v22, 12, 1, a5, 0);
  v54 = v26[12];
  v55 = v23[1];
  v56 = v23[2];
  v57 = vtrn1q_s32(v54, v55);
  v58 = vtrn2q_s32(v54, v55);
  v59 = v23[3];
  v60 = vtrn1q_s32(v56, v59);
  v61 = vtrn2q_s32(v56, v59);
  v62 = vzip2q_s64(v57, v60);
  v57.i64[1] = v60.i64[0];
  v26[12] = v57;
  v63 = vzip2q_s64(v58, v61);
  v58.i64[1] = v61.i64[0];
  v23[1] = v58;
  v23[2] = v62;
  v23[3] = v63;
  (v19)(v23, v23, 12, 1, a5, 0);
  v64 = vdupq_n_s32(v101[1]);
  v65 = vrshlq_s32(*v26, v64);
  v66 = vrshlq_s32(v26[1], v64);
  *v26 = v65;
  v26[1] = v66;
  v67 = vrshlq_s32(v26[2], v64);
  v26[2] = v67;
  v68 = vrshlq_s32(v26[3], v64);
  v26[3] = v68;
  v69 = vrshlq_s32(v26[5], v64);
  v26[4] = vrshlq_s32(v26[4], v64);
  v26[5] = v69;
  v70 = vrshlq_s32(v26[7], v64);
  v26[6] = vrshlq_s32(v26[6], v64);
  v26[7] = v70;
  v71 = vrshlq_s32(v26[9], v64);
  v26[8] = vrshlq_s32(v26[8], v64);
  v26[9] = v71;
  v72 = vrshlq_s32(v26[11], v64);
  v26[10] = vrshlq_s32(v26[10], v64);
  v26[11] = v72;
  v73 = vrshlq_s32(v26[13], v64);
  v26[12] = vrshlq_s32(v26[12], v64);
  v26[13] = v73;
  v74 = vrshlq_s32(v26[14], v64);
  v75 = vrshlq_s32(v26[15], v64);
  v76 = vdupq_n_s32(~(-1 << a5));
  v26[14] = v74;
  v26[15] = v75;
  if (v102)
  {
    v77 = -1;
  }

  else
  {
    v77 = 0;
  }

  v78 = vdupq_n_s32(v77);
  v79 = vbslq_s8(v78, v65, v68);
  if (v102)
  {
    v80 = v21;
  }

  else
  {
    v80 = v21 + 3;
  }

  *a2 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v79, *a2), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v80, *a2), 0), v76));
  v81 = vbslq_s8(v78, v66, v67);
  v82 = 2;
  if (v102)
  {
    v83 = 1;
  }

  else
  {
    v83 = 2;
  }

  *(a2 + 2 * a3) = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v81, *(a2 + 2 * a3)), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(v21[v83], *(a2 + 2 * a3)), 0), v76));
  v84 = vbslq_s8(v78, v67, v66);
  if ((v102 & 1) == 0)
  {
    v82 = 1;
  }

  *(a2 + 4 * a3) = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v84, *(a2 + 4 * a3)), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(v21[v82], *(a2 + 4 * a3)), 0), v76));
  if (v102)
  {
    v85 = v26 + 3;
  }

  else
  {
    v85 = v26;
  }

  v86 = *v85;
  if (v102)
  {
    v87 = v21 + 3;
  }

  else
  {
    v87 = v21;
  }

  *(a2 + 6 * a3) = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v86, *(a2 + 6 * a3)), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v87, *(a2 + 6 * a3)), 0), v76));
  v89 = *(a2 + 16);
  v88 = (a2 + 16);
  v90 = v89;
  if (v102)
  {
    v91 = v22;
  }

  else
  {
    v91 = v22 + 3;
  }

  if (v102)
  {
    v92 = 4;
  }

  else
  {
    v92 = 7;
  }

  *v88 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v91, *v90.i8), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(v22[v92], v90), 0), v76));
  if (v102)
  {
    v93 = 5;
  }

  else
  {
    v93 = 6;
  }

  *(v88 + 2 * a3) = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v22[v83], *&v88->i8[2 * a3]), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(v22[v93], *(v88 + 2 * a3)), 0), v76));
  if (v102)
  {
    v94 = 6;
  }

  else
  {
    v94 = 5;
  }

  *(v88 + 4 * a3) = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v22[v82], *&v88->i8[4 * a3]), 0), v76)), vminq_s32(vmaxq_s32(vaddw_high_s16(v22[v94], *(v88 + 4 * a3)), 0), v76));
  v95 = *(v88 + 6 * a3);
  if (v102)
  {
    v96 = v22 + 3;
  }

  else
  {
    v96 = v22;
  }

  v97 = *v96;
  if (v102)
  {
    v98 = 7;
  }

  else
  {
    v98 = 4;
  }

  v99 = vminq_s32(vmaxq_s32(vaddw_s16(v97, *v95.i8), 0), v76);
  result = vminq_s32(vmaxq_s32(vaddw_high_s16(v22[v98], v95), 0), v76);
  *(v88 + 6 * a3) = vqmovn_high_u32(vqmovn_u32(v99), result);
  return result;
}

uint64_t inv_txfm2d_add_universe_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v9 = result;
  v99[2044] = *MEMORY[0x277D85DE8];
  if (v6 < 9)
  {
    if (v7 - 2 > 0x10)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v10 = (v7 - 2);
      v11 = dword_273BF17E0[v10];
      v12 = dword_273BF1824[v10];
    }

    v95 = *(&av1_inv_txfm_shift_ls + v7);
    v14 = tx_size_wide_10[v7];
    v15 = tx_size_high_9[v7];
    v16 = v15;
    v17 = v11 + 8;
    if (v15 >= 32)
    {
      v18 = 32;
    }

    else
    {
      v18 = tx_size_high_9[v7];
    }

    v82 = v4;
    v83 = v5;
    v94 = v8;
    v87 = tx_size_high_9[v7];
    if (v14 != v15)
    {
      if (v14 <= v15)
      {
        if (v15 == 2 * v14)
        {
          v19 = -1;
          goto LABEL_16;
        }

        if (v15 == 4 * v14)
        {
          v19 = -2;
          goto LABEL_16;
        }
      }

      else
      {
        if (v14 == 2 * v15)
        {
          v19 = 1;
          goto LABEL_16;
        }

        if (v14 == 4 * v15)
        {
          v19 = 2;
          goto LABEL_16;
        }
      }
    }

    v19 = 0;
LABEL_16:
    v85 = tx_size_wide_10[v7];
    v20 = (v14 >> 2);
    v84 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_high_log2_6[v7] - 24] + 4 * vitx_1d_tab_0[v6] + lowbd_txfm_all_1d_zeros_idx_0[v11]);
    v88 = v6;
    v86 = v6 > 8;
    v93 = (v17 >> 2) & 0xE;
    if (((v17 >> 2) & 0xE) != 0)
    {
      v91 = (v12 & 0x18) + 8;
      v92 = *(&highbd_txfm_all_1d_zeros_w8_arr[12 * tx_size_wide_log2_3[v7] - 24] + 4 * hitx_1d_tab_0[v6] + lowbd_txfm_all_1d_zeros_idx_0[v12]);
      v21 = 0;
      if ((v6 > 8) | (0x11Fu >> v6) & 1)
      {
        v22 = (((v12 >> 3) & 3) << 7) + 128;
        v23 = 4 * v18;
        v24 = v99;
        v25 = 16 * v15;
        v26 = vdupq_n_s32(0xB50u);
        v89 = v26;
        do
        {
          v27 = 0;
          v28 = v9;
          do
          {
            *&v96[v27] = *v28;
            v27 += 16;
            v28 = (v28 + v23);
          }

          while (v22 != v27);
          if (v19 == 1 || v19 == -1)
          {
            v29 = v96;
            v30 = v91;
            do
            {
              *v29 = vrshrq_n_s32(vmulq_s32(*v29, v26), 0xCuLL);
              ++v29;
              --v30;
            }

            while (v30);
          }

          result = v92(v96, v96, 12, 0, v94, -*v95);
          if (v20 >= 1)
          {
            v31 = v24;
            v32 = v97;
            v33 = v20;
            do
            {
              v34 = v32[-2];
              v35 = v32[-1];
              v36 = vtrn1q_s32(v34, v35);
              v37 = vtrn2q_s32(v34, v35);
              v38 = *v32;
              v39 = v32[1];
              v32 += 4;
              v40 = vtrn1q_s32(v38, v39);
              v41 = vzip2q_s64(v36, v40);
              v36.i64[1] = v40.i64[0];
              v42 = vtrn2q_s32(v38, v39);
              v43 = vzip2q_s64(v37, v42);
              v37.i64[1] = v42.i64[0];
              v31[-2] = v36;
              v31[-1] = v37;
              *v31 = v41;
              v31[1] = v43;
              v31 = (v31 + v25);
              --v33;
            }

            while (v33);
          }

          ++v21;
          ++v9;
          v24 += 4;
          v26 = v89;
        }

        while (v21 != v93);
      }

      else
      {
        v45 = (((v12 >> 3) & 3) << 7) + 128;
        v46 = 4 * v18;
        v47 = &v98[(v20 - 1) * v15 + 2];
        v48 = vdupq_n_s32(0xB50u);
        v49 = -16 * v15;
        v90 = v48;
        do
        {
          v50 = 0;
          v51 = v9;
          do
          {
            *&v96[v50] = *v51;
            v50 += 16;
            v51 = (v51 + v46);
          }

          while (v45 != v50);
          if (v19 == 1 || v19 == -1)
          {
            v52 = v96;
            v53 = v91;
            do
            {
              *v52 = vrshrq_n_s32(vmulq_s32(*v52, v48), 0xCuLL);
              ++v52;
              --v53;
            }

            while (v53);
          }

          result = v92(v96, v96, 12, 0, v94, -*v95);
          if (v20 >= 1)
          {
            v54 = v47;
            v55 = v97;
            v56 = v20;
            do
            {
              v57 = v55[1];
              v58 = vtrn1q_s32(v57, *v55);
              v59 = vtrn2q_s32(v57, *v55);
              v61 = v55[-2];
              v60 = v55[-1];
              v62 = vtrn1q_s32(v60, v61);
              v63 = vzip2q_s64(v58, v62);
              v58.i64[1] = v62.i64[0];
              v64 = vtrn2q_s32(v60, v61);
              v65 = vzip2q_s64(v59, v64);
              v59.i64[1] = v64.i64[0];
              v54[-2] = v58;
              v54[-1] = v59;
              *v54 = v63;
              v54[1] = v65;
              v55 += 4;
              v54 = (v54 + v49);
              --v56;
            }

            while (v56);
          }

          ++v21;
          ++v9;
          v47 += 4;
          v48 = v90;
        }

        while (v21 != v93);
      }
    }

    if (v20 >= 1)
    {
      v66 = 0;
      v67 = v98;
      do
      {
        result = v84(&v98[v66 * v87], &v98[v66 * v87], 12, 1, v94, 0);
        v68 = vdupq_n_s32(v95[1]);
        v69 = v67;
        v70 = v16;
        do
        {
          *v69 = vrshlq_s32(*v69, v68);
          ++v69;
          --v70;
        }

        while (v70);
        ++v66;
        v67 += v87;
      }

      while (v66 != v20);
    }

    v71 = (v85 >> 3);
    if (v71 >= 1)
    {
      v72 = 0;
      v73 = 0;
      v74 = 2 * v82;
      v75 = vdupq_n_s32(~(-1 << v94));
      if ((v86 | (0xAFu >> v88)))
      {
        v76 = 0;
      }

      else
      {
        v76 = (v87 - 1);
      }

      v77 = &v98[v76];
      v78 = 16;
      if (((v86 | (0xAFu >> v88)) & 1) == 0)
      {
        v78 = -16;
      }

      do
      {
        v79 = &v77[v72];
        v80 = v74;
        result = v16;
        do
        {
          *v80->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v79, *v80), 0), v75)), vminq_s32(vmaxq_s32(vaddw_high_s16(v79[v16], *v80->i8), 0), v75));
          v80 = (v80 + 2 * v83);
          v79 = (v79 + v78);
          --result;
        }

        while (result);
        ++v73;
        v74 += 16;
        v72 += 2 * v87;
      }

      while (v73 != v71);
    }

    return result;
  }

  if (v6 <= 0xF)
  {
    if (((1 << v6) & 0x5400) != 0)
    {
      v44 = (2 * v4);

      return inv_txfm2d_add_h_identity_neon(result, v44, v5, v6, v7, v8);
    }

    else if (((1 << v6) & 0xA800) != 0)
    {
      v13 = (2 * v4);

      return inv_txfm2d_add_v_identity_neon(result, v13, v5, v6, v7, v8);
    }

    else if (v6 == 9)
    {
      v81 = 2 * v4;

      return inv_txfm2d_add_idtx_neon(result, v81, v5);
    }
  }

  return result;
}

void av1_highbd_inv_txfm_add_neon(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, double a5)
{
  v5 = a4[1];
  v7 = *a4;
  v8 = *(a4 + 2);
  switch(v5)
  {
    case 0:
      if (*(a4 + 1))
      {
        if (*(a4 + 5) < 2)
        {
          av1_highbd_iwht4x4_1_add_c(a1, a2, a3, v8);
        }

        else
        {
          av1_highbd_iwht4x4_16_add_c(a1, a2, a3, v8);
        }
      }

      else
      {
        av1_inv_txfm2d_add_4x4_neon(a1, (2 * a2), a3, v7, *(a4 + 2), a5);
      }

      break;
    case 1:
      if (v7 - 9 > 6)
      {
        av1_inv_txfm2d_add_8x8_neon(a1, (2 * a2), a3, v7, v8);
      }

      else if (((1 << v7) & 0x5400) != 0)
      {
        inv_txfm2d_add_h_identity_neon(a1, (2 * a2), a3, v7, 1u, v8);
      }

      else
      {
        v9 = (2 * a2);
        if (((1 << v7) & 0xA800) != 0)
        {
          inv_txfm2d_add_v_identity_neon(a1, v9, a3, v7, 1u, v8);
        }

        else
        {
          inv_txfm2d_add_idtx_neon(a1, v9, a3);
        }
      }

      break;
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 15:
    case 16:
    case 17:
    case 18:
      inv_txfm2d_add_universe_neon(a1, a2, a3);
      break;
    case 5:
      av1_inv_txfm2d_add_4x8_neon(a1, (2 * a2), a3, v7, *(a4 + 2));
      break;
    case 6:
      av1_inv_txfm2d_add_8x4_neon(a1, (2 * a2), a3, v7, *(a4 + 2));
      break;
    case 13:
      av1_inv_txfm2d_add_4x16_neon(a1, (2 * a2), a3, v7, *(a4 + 2));
      break;
    case 14:
      av1_inv_txfm2d_add_16x4_neon(a1, 2 * a2, a3, v7, *(a4 + 2));
      break;
    default:
      return;
  }
}

int32x4_t idct8x8_low1_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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

  v8 = &av1_cospi_arr_data[64 * a3 - 608];
  v9 = vld1q_dup_f32(v8);
  v10 = vaddq_s32(vshlq_s32(vmulq_s32(v9, *a1), vdupq_n_s32(-a3)), vdupq_n_s32(1 << (a3 - 1)));
  if (a4)
  {
    v11 = vdupq_n_s32(-v7);
    v12 = vdupq_n_s32(v7 - 1);
  }

  else
  {
    if (a5 <= 10)
    {
      v13 = 10;
    }

    else
    {
      v13 = a5;
    }

    v14 = 32 << v13;
    v11 = vdupq_n_s32(-v14);
    v12 = vdupq_n_s32(v14 - 1);
    v10 = vshlq_s32(vaddq_s32(v10, vdupq_n_s32(1 << a6 >> 1)), vdupq_n_s32(-a6));
  }

  result = vminq_s32(vmaxq_s32(v10, v11), v12);
  *a2 = result;
  a2[1] = result;
  a2[2] = result;
  a2[3] = result;
  a2[4] = result;
  a2[5] = result;
  a2[6] = result;
  a2[7] = result;
  return result;
}

int32x4_t idct8x8_new_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v13 = a1[1];
  v14 = &av1_cospi_arr_data[64 * a3 - 584];
  v15 = vld1q_dup_f32(v14);
  v16 = a1[6];
  v17 = a1[7];
  LODWORD(v14) = av1_cospi_arr_data[64 * a3 - 632];
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v15, v13), vdupq_n_s32(-v14), v17), v11);
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v15, v17), vdupq_n_s32(v14), v13), v11);
  v20 = a1[5];
  v21 = &av1_cospi_arr_data[64 * a3 - 616];
  v22 = vld1q_dup_f32(v21);
  v23 = a1[2];
  v24 = a1[3];
  LODWORD(v21) = av1_cospi_arr_data[64 * a3 - 600];
  v25 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v22, v20), vdupq_n_s32(-v21), v24), v11);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v22, v24), vdupq_n_s32(v21), v20), v11);
  v27 = &av1_cospi_arr_data[64 * a3 - 608];
  v28 = vld1q_dup_f32(v27);
  v29 = vmlaq_s32(v12, v28, *a1);
  v30 = vmulq_s32(v28, a1[4]);
  v31 = vshlq_s32(vaddq_s32(v29, v30), v11);
  v32 = vshlq_s32(vsubq_s32(v29, v30), v11);
  v33 = &av1_cospi_arr_data[64 * a3 - 592];
  v34 = vld1q_dup_f32(v33);
  v35 = av1_cospi_arr_data[64 * a3 - 624];
  v36 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v34, v23), vdupq_n_s32(-v35), v16), v11);
  v37 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v34, v16), vdupq_n_s32(v35), v23), v11);
  v38 = vaddq_s32(v25, v18);
  v39 = vsubq_s32(v18, v25);
  v40 = vminq_s32(vmaxq_s32(v38, v9), v10);
  v41 = vaddq_s32(v26, v19);
  v42 = vsubq_s32(v19, v26);
  v43 = vminq_s32(vmaxq_s32(v41, v9), v10);
  v44 = vaddq_s32(v37, v31);
  v45 = vsubq_s32(v31, v37);
  v46 = vminq_s32(vmaxq_s32(v44, v9), v10);
  v47 = vminq_s32(vmaxq_s32(v45, v9), v10);
  v48 = vminq_s32(vmaxq_s32(vaddq_s32(v36, v32), v9), v10);
  v49 = vminq_s32(vmaxq_s32(vsubq_s32(v32, v36), v9), v10);
  v50 = vmulq_s32(vminq_s32(vmaxq_s32(v39, v9), v10), v28);
  v51 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v42, v9), v10), v28);
  v52 = vshlq_s32(vaddq_s32(v51, v50), v11);
  v53 = vshlq_s32(vsubq_s32(v51, v50), v11);
  v54 = vminq_s32(vmaxq_s32(vaddq_s32(v46, v43), v9), v10);
  v55 = vminq_s32(vmaxq_s32(vsubq_s32(v46, v43), v9), v10);
  v56 = vaddq_s32(v52, v48);
  v57 = vsubq_s32(v48, v52);
  v58 = vminq_s32(vmaxq_s32(v56, v9), v10);
  v59 = vminq_s32(vmaxq_s32(v57, v9), v10);
  *a2 = v54;
  a2[1] = v58;
  a2[6] = v59;
  a2[7] = v55;
  v60 = vsubq_s32(v49, v53);
  v61 = vminq_s32(vmaxq_s32(vaddq_s32(v53, v49), v9), v10);
  v62 = vminq_s32(vmaxq_s32(v60, v9), v10);
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v47, v40), v9), v10);
  a2[2] = v61;
  a2[3] = v63;
  result = vminq_s32(vmaxq_s32(vsubq_s32(v47, v40), v9), v10);
  a2[4] = result;
  a2[5] = v62;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v65 = 10;
    }

    else
    {
      v65 = a5;
    }

    v66 = 32 << v65;
    v67 = vdupq_n_s32(-v66);
    v68 = vdupq_n_s32(v66 - 1);
    if (a6)
    {
      v69 = vdupq_n_s32(-a6);
      v54 = vrshlq_s32(v54, v69);
      v58 = vrshlq_s32(v58, v69);
      v61 = vrshlq_s32(v61, v69);
      v63 = vrshlq_s32(v63, v69);
      result = vrshlq_s32(result, v69);
      v62 = vrshlq_s32(v62, v69);
      v59 = vrshlq_s32(v59, v69);
      v55 = vrshlq_s32(v55, v69);
    }

    *a2 = vminq_s32(vmaxq_s32(v54, v67), v68);
    a2[1] = vminq_s32(vmaxq_s32(v58, v67), v68);
    a2[2] = vminq_s32(vmaxq_s32(v61, v67), v68);
    a2[3] = vminq_s32(vmaxq_s32(v63, v67), v68);
    a2[4] = vminq_s32(vmaxq_s32(result, v67), v68);
    a2[5] = vminq_s32(vmaxq_s32(v62, v67), v68);
    result = vminq_s32(vmaxq_s32(v59, v67), v68);
    a2[6] = result;
    a2[7] = vminq_s32(vmaxq_s32(v55, v67), v68);
  }

  return result;
}

int32x4_t iadst8x8_low1_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v8 = &av1_cospi_arr_data[64 * a3 - 580];
  v9 = vld1q_dup_f32(v8);
  result = vshlq_s32(vmlaq_s32(v7, v9, *a1), v6);
  v11 = &av1_cospi_arr_data[64 * a3 - 636];
  v12 = vld1q_dup_f32(v11);
  v13 = vshlq_s32(vnegq_s32(vmlaq_s32(v7, v12, *a1)), v6);
  v14 = &av1_cospi_arr_data[64 * a3 - 624];
  v15 = vld1q_dup_f32(v14);
  v16 = &av1_cospi_arr_data[64 * a3 - 592];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v15, result), v17, v13), v6);
  v19 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v15), v17, result), v6);
  v20 = &av1_cospi_arr_data[64 * a3 - 608];
  v21 = vld1q_dup_f32(v20);
  v22 = vmlaq_s32(v7, v21, result);
  v23 = vmulq_s32(v21, v13);
  v24 = vshlq_s32(vaddq_s32(v22, v23), v6);
  v25 = vshlq_s32(vsubq_s32(v22, v23), v6);
  v26 = vmlaq_s32(v7, v21, v18);
  v27 = vmulq_s32(v21, v19);
  v28 = vshlq_s32(vaddq_s32(v26, v27), v6);
  v29 = vshlq_s32(vsubq_s32(v26, v27), v6);
  if (a4)
  {
    *a2 = result;
    a2[1] = vnegq_s32(v18);
    a2[2] = v28;
    a2[3] = vnegq_s32(v24);
    a2[4] = v25;
    a2[5] = vnegq_s32(v29);
    a2[6] = v19;
    a2[7] = vnegq_s32(v13);
  }

  else
  {
    if (a5 <= 10)
    {
      v30 = 10;
    }

    else
    {
      v30 = a5;
    }

    v31 = 32 << v30;
    v32 = vdupq_n_s32(-v31);
    v33 = vdupq_n_s32(v31 - 1);
    v34 = vdupq_n_s32(-a6);
    v35 = vdupq_n_s32(1 << a6 >> 1);
    result = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(result, v35), v34), v32), v33);
    *a2 = result;
    a2[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v35, v18), v34), v32), v33);
    a2[2] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v28, v35), v34), v32), v33);
    a2[3] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v35, v24), v34), v32), v33);
    a2[4] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v25, v35), v34), v32), v33);
    a2[5] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v35, v29), v34), v32), v33);
    a2[6] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v35), v34), v32), v33);
    a2[7] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v35, v13), v34), v32), v33);
  }

  return result;
}

int32x4_t iadst8x8_new_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v12 = &av1_cospi_arr_data[64 * a3 - 636];
  v13 = vld1q_dup_f32(v12);
  v15 = a1[6];
  v14 = a1[7];
  v16 = &av1_cospi_arr_data[64 * a3 - 580];
  v17 = vld1q_dup_f32(v16);
  v18 = a1[1];
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v13, v14), v17, *a1), v10);
  v20 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, *a1, v13), v17, v14), v10);
  v21 = &av1_cospi_arr_data[64 * a3 - 620];
  v22 = vld1q_dup_f32(v21);
  v24 = a1[4];
  v23 = a1[5];
  v25 = &av1_cospi_arr_data[64 * a3 - 596];
  v26 = vld1q_dup_f32(v25);
  v27 = a1[2];
  v28 = a1[3];
  v29 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v22, v23), v26, v27), v10);
  v30 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v27, v22), v26, v23), v10);
  v31 = &av1_cospi_arr_data[64 * a3 - 604];
  v32 = vld1q_dup_f32(v31);
  v33 = &av1_cospi_arr_data[64 * a3 - 612];
  v34 = vld1q_dup_f32(v33);
  v35 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v32, v28), v34, v24), v10);
  v36 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v24, v32), v34, v28), v10);
  v37 = &av1_cospi_arr_data[64 * a3 - 588];
  v38 = vld1q_dup_f32(v37);
  v39 = &av1_cospi_arr_data[64 * a3 - 628];
  v40 = vld1q_dup_f32(v39);
  v41 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v38, v18), v40, v15), v10);
  v42 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v15, v38), v40, v18), v10);
  v43 = vminq_s32(vmaxq_s32(vaddq_s32(v35, v19), v8), v9);
  v44 = vminq_s32(vmaxq_s32(vsubq_s32(v19, v35), v8), v9);
  v45 = vaddq_s32(v36, v20);
  v46 = vsubq_s32(v20, v36);
  v47 = vminq_s32(vmaxq_s32(v45, v8), v9);
  v48 = vminq_s32(vmaxq_s32(v46, v8), v9);
  v49 = vminq_s32(vmaxq_s32(vaddq_s32(v41, v29), v8), v9);
  v50 = vminq_s32(vmaxq_s32(vsubq_s32(v29, v41), v8), v9);
  v51 = vaddq_s32(v42, v30);
  v52 = vsubq_s32(v30, v42);
  v53 = vminq_s32(vmaxq_s32(v51, v8), v9);
  v54 = &av1_cospi_arr_data[64 * a3 - 624];
  v55 = vld1q_dup_f32(v54);
  v56 = vminq_s32(vmaxq_s32(v52, v8), v9);
  v57 = &av1_cospi_arr_data[64 * a3 - 592];
  v58 = vld1q_dup_f32(v57);
  v59 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v55, v44), v58, v48), v10);
  v60 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v48, v55), v58, v44), v10);
  v61 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v55, v56), v50, v58), v10);
  v62 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v55, v50), v58, v56), v10);
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v49, v43), v8), v9);
  v64 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v49), v8), v9);
  v65 = vminq_s32(vmaxq_s32(vaddq_s32(v53, v47), v8), v9);
  v66 = vminq_s32(vmaxq_s32(vsubq_s32(v47, v53), v8), v9);
  v67 = vminq_s32(vmaxq_s32(vaddq_s32(v61, v59), v8), v9);
  v68 = vminq_s32(vmaxq_s32(vsubq_s32(v59, v61), v8), v9);
  v69 = vaddq_s32(v62, v60);
  v70 = vsubq_s32(v60, v62);
  v71 = vminq_s32(vmaxq_s32(v69, v8), v9);
  v72 = vminq_s32(vmaxq_s32(v70, v8), v9);
  v73 = &av1_cospi_arr_data[64 * a3 - 608];
  v74 = vld1q_dup_f32(v73);
  v75 = vmlaq_s32(v11, v74, v64);
  v76 = vmulq_s32(v74, v66);
  v77 = vshlq_s32(vaddq_s32(v75, v76), v10);
  v78 = vshlq_s32(vsubq_s32(v75, v76), v10);
  v79 = vmlaq_s32(v11, v74, v68);
  v80 = vmulq_s32(v74, v72);
  v81 = vshlq_s32(vaddq_s32(v79, v80), v10);
  v82 = vshlq_s32(vsubq_s32(v79, v80), v10);
  if (a4)
  {
    result = vnegq_s32(v67);
    *a2 = v63;
    a2[1] = result;
    a2[2] = v81;
    a2[3] = vnegq_s32(v77);
    a2[4] = v78;
    a2[5] = vnegq_s32(v82);
    a2[6] = v71;
    a2[7] = vnegq_s32(v65);
  }

  else
  {
    if (a5 <= 10)
    {
      v84 = 10;
    }

    else
    {
      v84 = a5;
    }

    v85 = 32 << v84;
    v86 = vdupq_n_s32(-v85);
    v87 = vdupq_n_s32(v85 - 1);
    v88 = vdupq_n_s32(-a6);
    v89 = vdupq_n_s32(1 << a6 >> 1);
    result = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v89, v67), v88), v86), v87);
    *a2 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v63, v89), v88), v86), v87);
    a2[1] = result;
    a2[2] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v81, v89), v88), v86), v87);
    a2[3] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v89, v77), v88), v86), v87);
    a2[4] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v78, v89), v88), v86), v87);
    a2[5] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v89, v82), v88), v86), v87);
    a2[6] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v71, v89), v88), v86), v87);
    a2[7] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v89, v65), v88), v86), v87);
  }

  return result;
}

int32x4_t iidentity8_neon(int32x4_t *a1, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = vaddq_s32(*a1, *a1);
  *a2 = v6;
  v7 = vaddq_s32(a1[1], a1[1]);
  a2[1] = v7;
  v8 = vaddq_s32(a1[2], a1[2]);
  a2[2] = v8;
  v9 = vaddq_s32(a1[3], a1[3]);
  a2[3] = v9;
  v10 = vaddq_s32(a1[4], a1[4]);
  a2[4] = v10;
  v11 = vaddq_s32(a1[5], a1[5]);
  a2[5] = v11;
  v12 = vaddq_s32(a1[6], a1[6]);
  a2[6] = v12;
  result = vaddq_s32(a1[7], a1[7]);
  a2[7] = result;
  if (!a4)
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
    v16 = vdupq_n_s32(-v15);
    v17 = vdupq_n_s32(v15 - 1);
    if (a6)
    {
      v18 = vdupq_n_s32(-a6);
      v6 = vrshlq_s32(v6, v18);
      v7 = vrshlq_s32(v7, v18);
      v8 = vrshlq_s32(v8, v18);
      v9 = vrshlq_s32(v9, v18);
      v10 = vrshlq_s32(v10, v18);
      v11 = vrshlq_s32(v11, v18);
      v12 = vrshlq_s32(v12, v18);
      result = vrshlq_s32(result, v18);
    }

    *a2 = vminq_s32(vmaxq_s32(v6, v16), v17);
    a2[1] = vminq_s32(vmaxq_s32(v7, v16), v17);
    a2[2] = vminq_s32(vmaxq_s32(v8, v16), v17);
    a2[3] = vminq_s32(vmaxq_s32(v9, v16), v17);
    a2[4] = vminq_s32(vmaxq_s32(v10, v16), v17);
    a2[5] = vminq_s32(vmaxq_s32(v11, v16), v17);
    result = vminq_s32(vmaxq_s32(result, v16), v17);
    a2[6] = vminq_s32(vmaxq_s32(v12, v16), v17);
    a2[7] = result;
  }

  return result;
}

__n128 idct16x16_low1_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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

  v9 = &av1_cospi_arr_data[64 * a3 - 608];
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

  v16 = vminq_s32(vmaxq_s32(v11, v12), v13);
  *a1 = v16;
  *a2 = v16;
  v17 = *a1;
  a2[1] = *a1;
  a2[2] = v17;
  v18 = *a1;
  a2[3] = *a1;
  a2[4] = v18;
  v19 = *a1;
  a2[5] = *a1;
  a2[6] = v19;
  v20 = *a1;
  a2[7] = *a1;
  a2[8] = v20;
  v21 = *a1;
  a2[9] = *a1;
  a2[10] = v21;
  v22 = *a1;
  a2[11] = *a1;
  a2[12] = v22;
  v23 = *a1;
  a2[13] = *a1;
  a2[14] = v23;
  result = *a1;
  a2[15] = *a1;
  return result;
}

int32x4_t idct16x16_low8_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v13 = &av1_cospi_arr_data[64 * a3 - 636];
  v14 = vld1q_dup_f32(v13);
  v15 = a1[1];
  v16 = vshlq_s32(vmlaq_s32(v12, v14, v15), v11);
  v17 = &av1_cospi_arr_data[64 * a3 - 580];
  v18 = vld1q_dup_f32(v17);
  v19 = vshlq_s32(vmlaq_s32(v12, v18, v15), v11);
  v21 = a1[6];
  v20 = a1[7];
  v22 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 604]), v20), v11);
  v23 = &av1_cospi_arr_data[64 * a3 - 612];
  v24 = vld1q_dup_f32(v23);
  v25 = vshlq_s32(vmlaq_s32(v12, v24, v20), v11);
  v26 = &av1_cospi_arr_data[64 * a3 - 620];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[4];
  v29 = a1[5];
  v30 = vmlaq_s32(v12, v27, v29);
  v31 = &av1_cospi_arr_data[64 * a3 - 596];
  v32 = vld1q_dup_f32(v31);
  v33 = vshlq_s32(v30, v11);
  v34 = vshlq_s32(vmlaq_s32(v12, v32, v29), v11);
  v35 = a1[2];
  v36 = a1[3];
  v37 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 588]), v36), v11);
  v38 = &av1_cospi_arr_data[64 * a3 - 628];
  v39 = vld1q_dup_f32(v38);
  v40 = vshlq_s32(vmlaq_s32(v12, v39, v36), v11);
  v41 = &av1_cospi_arr_data[64 * a3 - 632];
  v42 = vld1q_dup_f32(v41);
  v43 = vshlq_s32(vmlaq_s32(v12, v42, v35), v11);
  v44 = &av1_cospi_arr_data[64 * a3 - 584];
  v45 = vld1q_dup_f32(v44);
  v46 = vshlq_s32(vmlaq_s32(v12, v45, v35), v11);
  v47 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 600]), v21), v11);
  v48 = &av1_cospi_arr_data[64 * a3 - 616];
  v49 = vld1q_dup_f32(v48);
  v50 = vshlq_s32(vmlaq_s32(v12, v49, v21), v11);
  v51 = vaddq_s32(v22, v19);
  v52 = vsubq_s32(v19, v22);
  v53 = vminq_s32(vmaxq_s32(v51, v9), v10);
  v54 = vminq_s32(vmaxq_s32(v52, v9), v10);
  v55 = vminq_s32(vmaxq_s32(vaddq_s32(v37, v34), v9), v10);
  v56 = vminq_s32(vmaxq_s32(vsubq_s32(v37, v34), v9), v10);
  v57 = vminq_s32(vmaxq_s32(vaddq_s32(v40, v33), v9), v10);
  v58 = vminq_s32(vmaxq_s32(vsubq_s32(v40, v33), v9), v10);
  v59 = vaddq_s32(v25, v16);
  v60 = vsubq_s32(v16, v25);
  v61 = vminq_s32(vmaxq_s32(v59, v9), v10);
  v62 = vminq_s32(vmaxq_s32(v60, v9), v10);
  v63 = &av1_cospi_arr_data[64 * a3 - 608];
  v64 = vld1q_dup_f32(v63);
  v65 = vshlq_s32(vmlaq_s32(v12, v64, *a1), v11);
  LODWORD(v63) = av1_cospi_arr_data[64 * a3 - 624];
  v66 = vdupq_n_s32(v63);
  v67 = vshlq_s32(vmlaq_s32(v12, v66, v28), v11);
  v68 = av1_cospi_arr_data[64 * a3 - 592];
  v69 = vdupq_n_s32(v68);
  v70 = vshlq_s32(vmlaq_s32(v12, v69, v28), v11);
  v71 = vminq_s32(vmaxq_s32(vaddq_s32(v47, v46), v9), v10);
  v72 = vminq_s32(vmaxq_s32(vsubq_s32(v46, v47), v9), v10);
  v73 = vminq_s32(vmaxq_s32(vaddq_s32(v50, v43), v9), v10);
  v74 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v50), v9), v10);
  v75 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v54, v66), v69, v62), v11);
  v76 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v66, v62), v69, v54), v11);
  v77 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v63), v58), vdupq_n_s32(-v68), v56), v11);
  v78 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v56, v66), v69, v58), v11);
  v79 = vminq_s32(vmaxq_s32(vaddq_s32(v67, v65), v9), v10);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v67), v9), v10);
  v81 = vminq_s32(vmaxq_s32(vaddq_s32(v70, v65), v9), v10);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v70), v9), v10);
  v83 = vmulq_s32(v72, v64);
  v84 = vmlaq_s32(v12, v74, v64);
  v85 = vshlq_s32(vsubq_s32(v84, v83), v11);
  v86 = vshlq_s32(vaddq_s32(v84, v83), v11);
  v87 = vminq_s32(vmaxq_s32(vaddq_s32(v55, v53), v9), v10);
  v88 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v55), v9), v10);
  v89 = vminq_s32(vmaxq_s32(vaddq_s32(v77, v75), v9), v10);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v75, v77), v9), v10);
  v91 = vaddq_s32(v61, v57);
  v92 = vsubq_s32(v61, v57);
  v93 = vminq_s32(vmaxq_s32(v91, v9), v10);
  v94 = vminq_s32(vmaxq_s32(v92, v9), v10);
  v95 = vsubq_s32(v76, v78);
  v96 = vminq_s32(vmaxq_s32(vaddq_s32(v78, v76), v9), v10);
  v97 = vminq_s32(vmaxq_s32(v95, v9), v10);
  v98 = vsubq_s32(v79, v73);
  v99 = vminq_s32(vmaxq_s32(vaddq_s32(v79, v73), v9), v10);
  v100 = vminq_s32(vmaxq_s32(v98, v9), v10);
  v101 = vsubq_s32(v81, v86);
  v102 = vminq_s32(vmaxq_s32(vaddq_s32(v86, v81), v9), v10);
  v103 = vminq_s32(vmaxq_s32(v101, v9), v10);
  v104 = vminq_s32(vmaxq_s32(vaddq_s32(v85, v82), v9), v10);
  v105 = vminq_s32(vmaxq_s32(vsubq_s32(v82, v85), v9), v10);
  v106 = vminq_s32(vmaxq_s32(vaddq_s32(v80, v71), v9), v10);
  v107 = vminq_s32(vmaxq_s32(vsubq_s32(v80, v71), v9), v10);
  v108 = vmulq_s32(v90, v64);
  v109 = vmlaq_s32(v12, v97, v64);
  v110 = vshlq_s32(vsubq_s32(v109, v108), v11);
  v111 = vshlq_s32(vaddq_s32(v109, v108), v11);
  v112 = vmulq_s32(v88, v64);
  v113 = vmlaq_s32(v12, v94, v64);
  v114 = vshlq_s32(vsubq_s32(v113, v112), v11);
  v115 = vshlq_s32(vaddq_s32(v113, v112), v11);
  v116 = vminq_s32(vmaxq_s32(vaddq_s32(v99, v93), v9), v10);
  v117 = vminq_s32(vmaxq_s32(vsubq_s32(v99, v93), v9), v10);
  v118 = vminq_s32(vmaxq_s32(vaddq_s32(v102, v96), v9), v10);
  v119 = vminq_s32(vmaxq_s32(vsubq_s32(v102, v96), v9), v10);
  *a2 = v116;
  a2[1] = v118;
  a2[14] = v119;
  a2[15] = v117;
  v120 = vminq_s32(vmaxq_s32(vaddq_s32(v111, v104), v9), v10);
  v121 = vminq_s32(vmaxq_s32(vsubq_s32(v104, v111), v9), v10);
  v122 = vminq_s32(vmaxq_s32(vaddq_s32(v115, v106), v9), v10);
  v123 = vminq_s32(vmaxq_s32(vsubq_s32(v106, v115), v9), v10);
  a2[2] = v120;
  a2[3] = v122;
  a2[12] = v123;
  a2[13] = v121;
  v124 = vminq_s32(vmaxq_s32(vaddq_s32(v114, v107), v9), v10);
  v125 = vminq_s32(vmaxq_s32(vsubq_s32(v107, v114), v9), v10);
  v126 = vminq_s32(vmaxq_s32(vaddq_s32(v110, v105), v9), v10);
  v127 = vminq_s32(vmaxq_s32(vsubq_s32(v105, v110), v9), v10);
  a2[4] = v124;
  a2[5] = v126;
  a2[10] = v127;
  a2[11] = v125;
  v128 = vaddq_s32(v103, v89);
  v129 = vsubq_s32(v103, v89);
  v130 = vminq_s32(vmaxq_s32(v128, v9), v10);
  v131 = vmaxq_s32(v129, v9);
  v132 = vminq_s32(vmaxq_s32(vaddq_s32(v100, v87), v9), v10);
  a2[6] = v130;
  a2[7] = v132;
  v133 = vminq_s32(v131, v10);
  result = vmaxq_s32(vsubq_s32(v100, v87), v9);
  v135 = vminq_s32(result, v10);
  a2[8] = v135;
  a2[9] = v133;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v136 = 10;
    }

    else
    {
      v136 = a5;
    }

    v137 = 32 << v136;
    v138 = vdupq_n_s32(-v137);
    v139 = vdupq_n_s32(v137 - 1);
    v140 = vdupq_n_s32(-a6);
    *a2 = vminq_s32(vmaxq_s32(vrshlq_s32(v116, v140), v138), v139);
    a2[1] = vminq_s32(vmaxq_s32(vrshlq_s32(v118, v140), v138), v139);
    a2[2] = vminq_s32(vmaxq_s32(vrshlq_s32(v120, v140), v138), v139);
    a2[3] = vminq_s32(vmaxq_s32(vrshlq_s32(v122, v140), v138), v139);
    a2[4] = vminq_s32(vmaxq_s32(vrshlq_s32(v124, v140), v138), v139);
    a2[5] = vminq_s32(vmaxq_s32(vrshlq_s32(v126, v140), v138), v139);
    a2[6] = vminq_s32(vmaxq_s32(vrshlq_s32(v130, v140), v138), v139);
    a2[7] = vminq_s32(vmaxq_s32(vrshlq_s32(v132, v140), v138), v139);
    a2[8] = vminq_s32(vmaxq_s32(vrshlq_s32(v135, v140), v138), v139);
    a2[9] = vminq_s32(vmaxq_s32(vrshlq_s32(v133, v140), v138), v139);
    a2[10] = vminq_s32(vmaxq_s32(vrshlq_s32(v127, v140), v138), v139);
    a2[11] = vminq_s32(vmaxq_s32(vrshlq_s32(v125, v140), v138), v139);
    a2[12] = vminq_s32(vmaxq_s32(vrshlq_s32(v123, v140), v138), v139);
    a2[13] = vminq_s32(vmaxq_s32(vrshlq_s32(v121, v140), v138), v139);
    v141 = vminq_s32(vmaxq_s32(vrshlq_s32(v119, v140), v138), v139);
    result = vminq_s32(vmaxq_s32(vrshlq_s32(v117, v140), v138), v139);
    a2[14] = v141;
    a2[15] = result;
  }

  return result;
}

int32x4_t idct16x16_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  result = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = &av1_cospi_arr_data[64 * a3 - 580];
  v14 = vld1q_dup_f32(v13);
  v15 = &av1_cospi_arr_data[64 * a3 - 636];
  v16 = vld1q_dup_f32(v15);
  v17 = &av1_cospi_arr_data[64 * a3 - 612];
  v18 = vld1q_dup_f32(v17);
  v19 = &av1_cospi_arr_data[64 * a3 - 604];
  v20 = vld1q_dup_f32(v19);
  v21 = a1[1];
  v22 = a1[2];
  v23 = &av1_cospi_arr_data[64 * a3 - 596];
  v24 = vld1q_dup_f32(v23);
  v25 = a1[9];
  v26 = &av1_cospi_arr_data[64 * a3 - 628];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[12];
  v29 = a1[13];
  v30 = vmlaq_s32(v12, v27, v29);
  v31 = &av1_cospi_arr_data[64 * a3 - 588];
  v32 = vld1q_dup_f32(v31);
  v33 = a1[3];
  v34 = vmlaq_s32(v12, v27, v33);
  v35 = a1[4];
  v36 = a1[5];
  v37 = vmlaq_s32(v12, v24, v36);
  v38 = vmlsq_s32(v30, v33, v32);
  v39 = vmlaq_s32(v34, v32, v29);
  v40 = a1[10];
  v41 = a1[11];
  v42 = vmlaq_s32(v12, v24, v41);
  v43 = &av1_cospi_arr_data[64 * a3 - 620];
  v44 = vld1q_dup_f32(v43);
  v45 = vmlsq_s32(v37, v41, v44);
  v46 = vmlaq_s32(v42, v44, v36);
  v47 = a1[6];
  v48 = a1[7];
  v49 = vmlsq_s32(vmlaq_s32(v12, v18, v25), v48, v20);
  v50 = vmlaq_s32(v12, v18, v48);
  v51 = a1[14];
  v52 = a1[15];
  v53 = vshlq_s32(vmlsq_s32(vmlaq_s32(v12, v14, v21), v52, v16), v11);
  v54 = vshlq_s32(v49, v11);
  v55 = vshlq_s32(v45, v11);
  v56 = vshlq_s32(v38, v11);
  v57 = vshlq_s32(v39, v11);
  v58 = vshlq_s32(v46, v11);
  v59 = vshlq_s32(vmlaq_s32(v50, v20, v25), v11);
  v60 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v14, v52), v16, v21), v11);
  v61 = &av1_cospi_arr_data[64 * a3 - 584];
  v62 = vld1q_dup_f32(v61);
  v63 = &av1_cospi_arr_data[64 * a3 - 616];
  v64 = vld1q_dup_f32(v63);
  v65 = vmlaq_s32(v12, v64, v40);
  v66 = vmlaq_s32(v12, v64, v47);
  v67 = &av1_cospi_arr_data[64 * a3 - 600];
  v68 = vld1q_dup_f32(v67);
  v69 = vmlsq_s32(v65, v47, v68);
  v70 = &av1_cospi_arr_data[64 * a3 - 632];
  v71 = vld1q_dup_f32(v70);
  v72 = vmlsq_s32(vmlaq_s32(v12, v62, v22), v51, v71);
  v73 = vmlaq_s32(v66, v68, v40);
  v74 = vmlaq_s32(vmlaq_s32(v12, v62, v51), v71, v22);
  v75 = vaddq_s32(v54, v53);
  v76 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v54), v9), result);
  v77 = vaddq_s32(v56, v55);
  v78 = vminq_s32(vmaxq_s32(vsubq_s32(v56, v55), v9), result);
  v79 = vaddq_s32(v58, v57);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v57, v58), v9), result);
  v81 = vaddq_s32(v60, v59);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v60, v59), v9), result);
  LODWORD(v70) = av1_cospi_arr_data[64 * a3 - 592];
  v83 = vdupq_n_s32(v70);
  v84 = av1_cospi_arr_data[64 * a3 - 624];
  v85 = vdupq_n_s32(v84);
  v86 = vmlsq_s32(vmlaq_s32(v12, v83, v35), v28, v85);
  v87 = vmlaq_s32(vmlaq_s32(v12, v83, v28), v85, v35);
  v88 = vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v70), v78), vdupq_n_s32(-v84), v80);
  v89 = vmlsq_s32(vmlaq_s32(v12, v83, v82), v76, v85);
  v90 = vmlsq_s32(vmlaq_s32(v12, v83, v80), v78, v85);
  v91 = vshlq_s32(v72, v11);
  v92 = vshlq_s32(v69, v11);
  v93 = vshlq_s32(v73, v11);
  v94 = vshlq_s32(v74, v11);
  v95 = vminq_s32(vmaxq_s32(v75, v9), result);
  v96 = vminq_s32(vmaxq_s32(v77, v9), result);
  v97 = vminq_s32(vmaxq_s32(v79, v9), result);
  v98 = vminq_s32(vmaxq_s32(v81, v9), result);
  v99 = vmlaq_s32(vmlaq_s32(v12, v83, v76), v85, v82);
  v100 = &av1_cospi_arr_data[64 * a3 - 608];
  v101 = vld1q_dup_f32(v100);
  v102 = vmlaq_s32(v12, v101, *a1);
  v103 = vmulq_s32(v101, a1[8]);
  v104 = vshlq_s32(vaddq_s32(v102, v103), v11);
  v105 = vshlq_s32(vsubq_s32(v102, v103), v11);
  v106 = vshlq_s32(v86, v11);
  v107 = vshlq_s32(v87, v11);
  v108 = vminq_s32(vmaxq_s32(vaddq_s32(v92, v91), v9), result);
  v109 = vminq_s32(vmaxq_s32(vsubq_s32(v91, v92), v9), result);
  v110 = vminq_s32(vmaxq_s32(vaddq_s32(v94, v93), v9), result);
  v111 = vminq_s32(vmaxq_s32(vsubq_s32(v94, v93), v9), result);
  v112 = vshlq_s32(v89, v11);
  v113 = vshlq_s32(v88, v11);
  v114 = vshlq_s32(v90, v11);
  v115 = vshlq_s32(v99, v11);
  v116 = vaddq_s32(v107, v104);
  v117 = vsubq_s32(v104, v107);
  v118 = vminq_s32(vmaxq_s32(v116, v9), result);
  v119 = vminq_s32(vmaxq_s32(v117, v9), result);
  v120 = vaddq_s32(v106, v105);
  v121 = vsubq_s32(v105, v106);
  v122 = vminq_s32(vmaxq_s32(v120, v9), result);
  v123 = vminq_s32(vmaxq_s32(v121, v9), result);
  v124 = vmulq_s32(v109, v101);
  v125 = vmlaq_s32(v12, v111, v101);
  v126 = vshlq_s32(vsubq_s32(v125, v124), v11);
  v127 = vshlq_s32(vaddq_s32(v125, v124), v11);
  v128 = vaddq_s32(v96, v95);
  v129 = vsubq_s32(v95, v96);
  v130 = vaddq_s32(v113, v112);
  v131 = vminq_s32(vmaxq_s32(vsubq_s32(v112, v113), v9), result);
  v132 = vaddq_s32(v98, v97);
  v133 = vsubq_s32(v98, v97);
  v134 = vaddq_s32(v115, v114);
  v135 = vminq_s32(vmaxq_s32(vsubq_s32(v115, v114), v9), result);
  v136 = vaddq_s32(v118, v110);
  v137 = vsubq_s32(v118, v110);
  v138 = vaddq_s32(v127, v122);
  v139 = vsubq_s32(v122, v127);
  v140 = vaddq_s32(v126, v123);
  v141 = vsubq_s32(v123, v126);
  v142 = vaddq_s32(v119, v108);
  v143 = vsubq_s32(v119, v108);
  v144 = vmulq_s32(v131, v101);
  v145 = vmlaq_s32(v12, v135, v101);
  v146 = vsubq_s32(v145, v144);
  v147 = vaddq_s32(v145, v144);
  v148 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v133, v9), result), v101);
  v149 = vmulq_s32(vminq_s32(vmaxq_s32(v129, v9), result), v101);
  v150 = vsubq_s32(v148, v149);
  v151 = vaddq_s32(v148, v149);
  v152 = vminq_s32(vmaxq_s32(v128, v9), result);
  v153 = vminq_s32(vmaxq_s32(v130, v9), result);
  v154 = vminq_s32(vmaxq_s32(v132, v9), result);
  v155 = vminq_s32(vmaxq_s32(v134, v9), result);
  v156 = vminq_s32(vmaxq_s32(v136, v9), result);
  v157 = vminq_s32(vmaxq_s32(v137, v9), result);
  v158 = vminq_s32(vmaxq_s32(v138, v9), result);
  v159 = vminq_s32(vmaxq_s32(v139, v9), result);
  v160 = vminq_s32(vmaxq_s32(v140, v9), result);
  v161 = vminq_s32(vmaxq_s32(v141, v9), result);
  v162 = vminq_s32(vmaxq_s32(v142, v9), result);
  v163 = vminq_s32(vmaxq_s32(v143, v9), result);
  v164 = vshlq_s32(v146, v11);
  v165 = vshlq_s32(v147, v11);
  v166 = vshlq_s32(v150, v11);
  v167 = vshlq_s32(v151, v11);
  v168 = vaddq_s32(v156, v154);
  v169 = vsubq_s32(v156, v154);
  v170 = vaddq_s32(v158, v155);
  v171 = vsubq_s32(v158, v155);
  v172 = vaddq_s32(v165, v160);
  v173 = vsubq_s32(v160, v165);
  v174 = vaddq_s32(v167, v162);
  v175 = vsubq_s32(v162, v167);
  v176 = vaddq_s32(v166, v163);
  v177 = vsubq_s32(v163, v166);
  v178 = vaddq_s32(v164, v161);
  v179 = vsubq_s32(v161, v164);
  v180 = vaddq_s32(v159, v153);
  v181 = vsubq_s32(v159, v153);
  v182 = vaddq_s32(v157, v152);
  v183 = vsubq_s32(v157, v152);
  v184 = vmaxq_s32(v168, v9);
  v185 = vmaxq_s32(v169, v9);
  v186 = vmaxq_s32(v170, v9);
  v187 = vmaxq_s32(v171, v9);
  v188 = vmaxq_s32(v172, v9);
  v189 = vmaxq_s32(v173, v9);
  v190 = vmaxq_s32(v174, v9);
  v191 = vmaxq_s32(v175, v9);
  v192 = vmaxq_s32(v176, v9);
  v193 = vmaxq_s32(v177, v9);
  v194 = vmaxq_s32(v178, v9);
  v195 = vmaxq_s32(v179, v9);
  v196 = vmaxq_s32(v180, v9);
  v197 = vmaxq_s32(v181, v9);
  v198 = vmaxq_s32(v182, v9);
  v199 = vmaxq_s32(v183, v9);
  v200 = vminq_s32(v184, result);
  v201 = vminq_s32(v185, result);
  v202 = vminq_s32(v186, result);
  v203 = vminq_s32(v187, result);
  v204 = vminq_s32(v188, result);
  v205 = vminq_s32(v189, result);
  v206 = vminq_s32(v190, result);
  v207 = vminq_s32(v191, result);
  v208 = vminq_s32(v192, result);
  v209 = vminq_s32(v193, result);
  v210 = vminq_s32(v194, result);
  v211 = vminq_s32(v195, result);
  v212 = vminq_s32(v196, result);
  v213 = vminq_s32(v197, result);
  v214 = vminq_s32(v198, result);
  v215 = vminq_s32(v199, result);
  *a2 = v200;
  a2[1] = v202;
  a2[14] = v203;
  a2[15] = v201;
  a2[2] = v204;
  a2[3] = v206;
  a2[12] = v207;
  a2[13] = v205;
  a2[4] = v208;
  a2[5] = v210;
  a2[10] = v211;
  a2[11] = v209;
  a2[6] = v212;
  a2[7] = v214;
  a2[8] = v215;
  a2[9] = v213;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v216 = 10;
    }

    else
    {
      v216 = a5;
    }

    v217 = 32 << v216;
    v218 = vdupq_n_s32(-v217);
    v219 = vdupq_n_s32(v217 - 1);
    v220 = vdupq_n_s32(-a6);
    *a2 = vminq_s32(vmaxq_s32(vrshlq_s32(v200, v220), v218), v219);
    a2[1] = vminq_s32(vmaxq_s32(vrshlq_s32(v202, v220), v218), v219);
    a2[2] = vminq_s32(vmaxq_s32(vrshlq_s32(v204, v220), v218), v219);
    a2[3] = vminq_s32(vmaxq_s32(vrshlq_s32(v206, v220), v218), v219);
    a2[4] = vminq_s32(vmaxq_s32(vrshlq_s32(v208, v220), v218), v219);
    a2[5] = vminq_s32(vmaxq_s32(vrshlq_s32(v210, v220), v218), v219);
    a2[6] = vminq_s32(vmaxq_s32(vrshlq_s32(v212, v220), v218), v219);
    a2[7] = vminq_s32(vmaxq_s32(vrshlq_s32(v214, v220), v218), v219);
    a2[8] = vminq_s32(vmaxq_s32(vrshlq_s32(v215, v220), v218), v219);
    a2[9] = vminq_s32(vmaxq_s32(vrshlq_s32(v213, v220), v218), v219);
    a2[10] = vminq_s32(vmaxq_s32(vrshlq_s32(v211, v220), v218), v219);
    a2[11] = vminq_s32(vmaxq_s32(vrshlq_s32(v209, v220), v218), v219);
    a2[12] = vminq_s32(vmaxq_s32(vrshlq_s32(v207, v220), v218), v219);
    a2[13] = vminq_s32(vmaxq_s32(vrshlq_s32(v205, v220), v218), v219);
    v221 = vminq_s32(vmaxq_s32(vrshlq_s32(v203, v220), v218), v219);
    result = vminq_s32(vmaxq_s32(vrshlq_s32(v201, v220), v218), v219);
    a2[14] = v221;
    a2[15] = result;
  }

  return result;
}

int32x4_t *iadst16x16_low1_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v8 = &av1_cospi_arr_data[64 * a3 - 578];
  v9 = vld1q_dup_f32(v8);
  v10 = vshlq_s32(vmlaq_s32(v7, v9, *result), v6);
  v11 = &av1_cospi_arr_data[64 * a3 - 638];
  v12 = vld1q_dup_f32(v11);
  v13 = vshlq_s32(vmlsq_s32(v7, v12, *result), v6);
  v14 = &av1_cospi_arr_data[64 * a3 - 632];
  v15 = vld1q_dup_f32(v14);
  v16 = &av1_cospi_arr_data[64 * a3 - 584];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v10), v17, v13), v6);
  v19 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v15), v17, v10), v6);
  v20 = &av1_cospi_arr_data[64 * a3 - 624];
  v21 = vld1q_dup_f32(v20);
  v22 = &av1_cospi_arr_data[64 * a3 - 592];
  v23 = vld1q_dup_f32(v22);
  v24 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v21, v10), v23, v13), v6);
  v25 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v21), v23, v10), v6);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v21, v18), v23, v19), v6);
  v27 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v19, v21), v23, v18), v6);
  v28 = &av1_cospi_arr_data[64 * a3 - 608];
  v29 = vld1q_dup_f32(v28);
  v30 = vmlaq_s32(v7, v29, v10);
  v31 = vmulq_s32(v29, v13);
  v32 = vshlq_s32(vaddq_s32(v30, v31), v6);
  v33 = vshlq_s32(vsubq_s32(v30, v31), v6);
  v34 = vmlaq_s32(v7, v29, v24);
  v35 = vmulq_s32(v29, v25);
  v36 = vshlq_s32(vaddq_s32(v34, v35), v6);
  v37 = vshlq_s32(vsubq_s32(v34, v35), v6);
  v38 = vmlaq_s32(v7, v29, v18);
  v39 = vmulq_s32(v29, v19);
  v40 = vshlq_s32(vaddq_s32(v38, v39), v6);
  v41 = vshlq_s32(vsubq_s32(v38, v39), v6);
  v42 = vmlaq_s32(v7, v29, v26);
  v43 = vmulq_s32(v29, v27);
  v44 = vshlq_s32(vaddq_s32(v42, v43), v6);
  v45 = vshlq_s32(vsubq_s32(v42, v43), v6);
  if (a4)
  {
    v46 = vnegq_s32(v18);
    v47 = vnegq_s32(v24);
    *a2 = v10;
    a2[1] = v46;
    v48 = vnegq_s32(v44);
    v49 = vnegq_s32(v32);
    v50 = vnegq_s32(v41);
    v51 = vnegq_s32(v37);
    v52 = vnegq_s32(v27);
    v53 = vnegq_s32(v13);
  }

  else
  {
    if (a5 <= 10)
    {
      v54 = 10;
    }

    else
    {
      v54 = a5;
    }

    v55 = 32 << v54;
    v56 = vdupq_n_s32(-v55);
    v57 = vdupq_n_s32(v55 - 1);
    v58 = vdupq_n_s32(-a6);
    v59 = vdupq_n_s32(1 << a6 >> 1);
    *a2 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v10, v59), v58), v56), v57);
    a2[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v18), v58), v56), v57);
    v26 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v26, v59), v58), v56), v57);
    v47 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v24), v58), v56), v57);
    v36 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v36, v59), v58), v56), v57);
    v48 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v44), v58), v56), v57);
    v40 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v40, v59), v58), v56), v57);
    v49 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v32), v58), v56), v57);
    v33 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v33, v59), v58), v56), v57);
    v50 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v41), v58), v56), v57);
    v45 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v45, v59), v58), v56), v57);
    v51 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v37), v58), v56), v57);
    v25 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v25, v59), v58), v56), v57);
    v52 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v27), v58), v56), v57);
    v19 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v59), v58), v56), v57);
    v53 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v13), v58), v56), v57);
  }

  a2[2] = v26;
  a2[3] = v47;
  a2[4] = v36;
  a2[5] = v48;
  a2[6] = v40;
  a2[7] = v49;
  a2[8] = v33;
  a2[9] = v50;
  a2[10] = v45;
  a2[11] = v51;
  a2[12] = v25;
  a2[13] = v52;
  a2[14] = v19;
  a2[15] = v53;
  return result;
}

int32x4_t *iadst16x16_low8_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v12 = &av1_cospi_arr_data[64 * a3 - 578];
  v13 = vld1q_dup_f32(v12);
  v14 = result[1];
  v15 = vshlq_s32(vmlaq_s32(v11, v13, *result), v10);
  v16 = &av1_cospi_arr_data[64 * a3 - 638];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlsq_s32(v11, v17, *result), v10);
  v19 = &av1_cospi_arr_data[64 * a3 - 586];
  v20 = vld1q_dup_f32(v19);
  v21 = result[2];
  v22 = result[3];
  v23 = vshlq_s32(vmlaq_s32(v11, v20, v21), v10);
  v24 = &av1_cospi_arr_data[64 * a3 - 630];
  v25 = vld1q_dup_f32(v24);
  v26 = vshlq_s32(vmlsq_s32(v11, v25, v21), v10);
  v27 = &av1_cospi_arr_data[64 * a3 - 594];
  v28 = vld1q_dup_f32(v27);
  v29 = result[4];
  v30 = result[5];
  v31 = vshlq_s32(vmlaq_s32(v11, v28, v29), v10);
  v32 = &av1_cospi_arr_data[64 * a3 - 622];
  v33 = vld1q_dup_f32(v32);
  v34 = vshlq_s32(vmlsq_s32(v11, v33, v29), v10);
  v35 = &av1_cospi_arr_data[64 * a3 - 602];
  v36 = vld1q_dup_f32(v35);
  v37 = result[6];
  v38 = result[7];
  v39 = vshlq_s32(vmlaq_s32(v11, v36, v37), v10);
  v40 = &av1_cospi_arr_data[64 * a3 - 614];
  v41 = vld1q_dup_f32(v40);
  v42 = vshlq_s32(vmlsq_s32(v11, v41, v37), v10);
  v43 = &av1_cospi_arr_data[64 * a3 - 606];
  v44 = vld1q_dup_f32(v43);
  v45 = vshlq_s32(vmlaq_s32(v11, v44, v38), v10);
  v46 = &av1_cospi_arr_data[64 * a3 - 610];
  v47 = vld1q_dup_f32(v46);
  v48 = vshlq_s32(vmlaq_s32(v11, v47, v38), v10);
  v49 = &av1_cospi_arr_data[64 * a3 - 598];
  v50 = vld1q_dup_f32(v49);
  v51 = vshlq_s32(vmlaq_s32(v11, v50, v30), v10);
  v52 = &av1_cospi_arr_data[64 * a3 - 618];
  v53 = vld1q_dup_f32(v52);
  v54 = vshlq_s32(vmlaq_s32(v11, v53, v30), v10);
  v55 = &av1_cospi_arr_data[64 * a3 - 590];
  v56 = vld1q_dup_f32(v55);
  v57 = vshlq_s32(vmlaq_s32(v11, v56, v22), v10);
  v58 = &av1_cospi_arr_data[64 * a3 - 626];
  v59 = vld1q_dup_f32(v58);
  v60 = vshlq_s32(vmlaq_s32(v11, v59, v22), v10);
  v61 = &av1_cospi_arr_data[64 * a3 - 582];
  v62 = vld1q_dup_f32(v61);
  v63 = vshlq_s32(vmlaq_s32(v11, v62, v14), v10);
  v64 = &av1_cospi_arr_data[64 * a3 - 634];
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
  v99 = &av1_cospi_arr_data[64 * a3 - 584];
  v100 = vld1q_dup_f32(v99);
  v101 = vmlaq_s32(v11, v100, v70);
  v102 = &av1_cospi_arr_data[64 * a3 - 632];
  v103 = vld1q_dup_f32(v102);
  v104 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v100, v74), v103, v70), v10);
  v105 = vshlq_s32(vmlsq_s32(v101, v74, v103), v10);
  v106 = &av1_cospi_arr_data[64 * a3 - 616];
  v107 = vld1q_dup_f32(v106);
  v108 = &av1_cospi_arr_data[64 * a3 - 600];
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
  v138 = &av1_cospi_arr_data[64 * a3 - 592];
  v139 = vld1q_dup_f32(v138);
  v140 = &av1_cospi_arr_data[64 * a3 - 624];
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
  v169 = &av1_cospi_arr_data[64 * a3 - 608];
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

int32x4_t *iadst16x16_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v12 = &av1_cospi_arr_data[64 * a3 - 638];
  v13 = vld1q_dup_f32(v12);
  v14 = &av1_cospi_arr_data[64 * a3 - 578];
  v15 = vld1q_dup_f32(v14);
  v17 = result[14];
  v16 = result[15];
  v18 = result[1];
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v13, v16), v15, *result), v10);
  v20 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, *result, v13), v15, v16), v10);
  v21 = &av1_cospi_arr_data[64 * a3 - 630];
  v22 = vld1q_dup_f32(v21);
  v23 = &av1_cospi_arr_data[64 * a3 - 586];
  v24 = vld1q_dup_f32(v23);
  v26 = result[12];
  v25 = result[13];
  v27 = result[2];
  v28 = result[3];
  v29 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v22, v25), v24, v27), v10);
  v30 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v27, v22), v24, v25), v10);
  v31 = &av1_cospi_arr_data[64 * a3 - 622];
  v32 = vld1q_dup_f32(v31);
  v33 = &av1_cospi_arr_data[64 * a3 - 594];
  v34 = vld1q_dup_f32(v33);
  v36 = result[10];
  v35 = result[11];
  v37 = result[4];
  v38 = result[5];
  v39 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v32, v35), v34, v37), v10);
  v40 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v37, v32), v34, v35), v10);
  v41 = &av1_cospi_arr_data[64 * a3 - 614];
  v42 = vld1q_dup_f32(v41);
  v43 = &av1_cospi_arr_data[64 * a3 - 602];
  v44 = vld1q_dup_f32(v43);
  v46 = result[8];
  v45 = result[9];
  v47 = result[6];
  v48 = result[7];
  v49 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v42, v45), v44, v47), v10);
  v50 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v47, v42), v44, v45), v10);
  v51 = &av1_cospi_arr_data[64 * a3 - 606];
  v52 = vld1q_dup_f32(v51);
  v53 = &av1_cospi_arr_data[64 * a3 - 610];
  v54 = vld1q_dup_f32(v53);
  v55 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v52, v48), v54, v46), v10);
  v56 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v46, v52), v54, v48), v10);
  v57 = &av1_cospi_arr_data[64 * a3 - 598];
  v58 = vld1q_dup_f32(v57);
  v59 = &av1_cospi_arr_data[64 * a3 - 618];
  v60 = vld1q_dup_f32(v59);
  v61 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v58, v38), v60, v36), v10);
  v62 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v36, v58), v60, v38), v10);
  v63 = &av1_cospi_arr_data[64 * a3 - 590];
  v64 = vld1q_dup_f32(v63);
  v65 = &av1_cospi_arr_data[64 * a3 - 626];
  v66 = vld1q_dup_f32(v65);
  v67 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v64, v28), v66, v26), v10);
  v68 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v26, v64), v66, v28), v10);
  v69 = &av1_cospi_arr_data[64 * a3 - 582];
  v70 = vld1q_dup_f32(v69);
  v71 = &av1_cospi_arr_data[64 * a3 - 634];
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
  v95 = &av1_cospi_arr_data[64 * a3 - 632];
  v96 = vld1q_dup_f32(v95);
  LODWORD(v95) = av1_cospi_arr_data[64 * a3 - 584];
  v97 = vdupq_n_s32(v95);
  v98 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v96, v77), v97, v80), v10);
  v99 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v80, v96), v97, v77), v10);
  v100 = &av1_cospi_arr_data[64 * a3 - 600];
  v101 = vld1q_dup_f32(v100);
  LODWORD(v100) = av1_cospi_arr_data[64 * a3 - 616];
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
  v131 = &av1_cospi_arr_data[64 * a3 - 624];
  v132 = vld1q_dup_f32(v131);
  LODWORD(v131) = av1_cospi_arr_data[64 * a3 - 592];
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
  v159 = &av1_cospi_arr_data[64 * a3 - 608];
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

int32x4_t iidentity16_neon(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = vdup_n_s32(0x2D42u);
  v7 = vdupq_n_s64(0x800uLL);
  *a2 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*a1), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*a1)), v6), 0xCuLL));
  a2[1] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 16)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 16))), v6), 0xCuLL));
  a2[2] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 32)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 32))), v6), 0xCuLL));
  a2[3] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 48)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 48))), v6), 0xCuLL));
  a2[4] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 64)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 64))), v6), 0xCuLL));
  a2[5] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 80)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 80))), v6), 0xCuLL));
  a2[6] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 96)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 96))), v6), 0xCuLL));
  a2[7] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 112)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 112))), v6), 0xCuLL));
  a2[8] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 128)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 128))), v6), 0xCuLL));
  a2[9] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 144)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 144))), v6), 0xCuLL));
  a2[10] = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 160)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 160))), v6), 0xCuLL));
  v8 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 176)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 176))), v6), 0xCuLL));
  a2[11] = v8;
  v9 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 192)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 192))), v6), 0xCuLL));
  a2[12] = v9;
  v10 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 208)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 208))), v6), 0xCuLL));
  a2[13] = v10;
  v11 = vtrn1q_s32(vshrq_n_u64(vmlal_s32(v7, vmovn_s64(*(a1 + 224)), v6), 0xCuLL), vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(*(a1 + 224))), v6), 0xCuLL));
  a2[14] = v11;
  v12 = *(a1 + 240);
  v13 = vshrq_n_u64(vmlal_s32(v7, vmovn_s64(v12), v6), 0xCuLL);
  result = vshrq_n_u64(vmlal_s32(v7, vmovn_s64(vrev64q_s32(v12)), v6), 0xCuLL);
  v15 = vtrn1q_s32(v13, result);
  a2[15] = v15;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v16 = 10;
    }

    else
    {
      v16 = a5;
    }

    v17 = 32 << v16;
    v18 = vdupq_n_s32(-v17);
    v19 = vdupq_n_s32(v17 - 1);
    v20 = vdupq_n_s32(-a6);
    v21 = vrshlq_s32(a2[2], v20);
    v22 = vrshlq_s32(a2[3], v20);
    v23 = vrshlq_s32(a2[4], v20);
    v24 = vrshlq_s32(a2[5], v20);
    v25 = vrshlq_s32(a2[6], v20);
    v26 = vrshlq_s32(a2[7], v20);
    v27 = vrshlq_s32(a2[8], v20);
    v28 = vrshlq_s32(a2[9], v20);
    v29 = vrshlq_s32(a2[10], v20);
    v30 = vminq_s32(vmaxq_s32(vrshlq_s32(a2[1], v20), v18), v19);
    *a2 = vminq_s32(vmaxq_s32(vrshlq_s32(*a2, v20), v18), v19);
    a2[1] = v30;
    a2[2] = vminq_s32(vmaxq_s32(v21, v18), v19);
    a2[3] = vminq_s32(vmaxq_s32(v22, v18), v19);
    a2[4] = vminq_s32(vmaxq_s32(v23, v18), v19);
    a2[5] = vminq_s32(vmaxq_s32(v24, v18), v19);
    a2[6] = vminq_s32(vmaxq_s32(v25, v18), v19);
    a2[7] = vminq_s32(vmaxq_s32(v26, v18), v19);
    a2[8] = vminq_s32(vmaxq_s32(v27, v18), v19);
    a2[9] = vminq_s32(vmaxq_s32(v28, v18), v19);
    a2[10] = vminq_s32(vmaxq_s32(v29, v18), v19);
    a2[11] = vminq_s32(vmaxq_s32(vrshlq_s32(v8, v20), v18), v19);
    a2[12] = vminq_s32(vmaxq_s32(vrshlq_s32(v9, v20), v18), v19);
    a2[13] = vminq_s32(vmaxq_s32(vrshlq_s32(v10, v20), v18), v19);
    v31 = vminq_s32(vmaxq_s32(vrshlq_s32(v11, v20), v18), v19);
    result = vminq_s32(vmaxq_s32(vrshlq_s32(v15, v20), v18), v19);
    a2[14] = v31;
    a2[15] = result;
  }

  return result;
}

int32x4_t idct32x32_low1_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = &av1_cospi_arr_data[64 * a3 - 608];
  v7 = vld1q_dup_f32(v6);
  v8 = vshlq_s32(vmlaq_s32(vdupq_n_s32(1 << (a3 - 1)), v7, *a1), vdupq_n_s32(-a3));
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

  result = vminq_s32(vmaxq_s32(v8, v11), v10);
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
  return result;
}

void idct32x32_low8_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v244 = *MEMORY[0x277D85DE8];
  v12 = &av1_cospi_arr_data[64 * a3 - 638];
  v13 = vld1q_dup_f32(v12);
  v14 = a1[1];
  v15 = vmlaq_s32(v11, v13, v14);
  v16 = &av1_cospi_arr_data[64 * a3 - 578];
  v17 = vld1q_dup_f32(v16);
  v18 = vmlaq_s32(v11, v17, v14);
  v19 = &av1_cospi_arr_data[64 * a3 - 626];
  v20 = vld1q_dup_f32(v19);
  v21 = a1[6];
  v22 = a1[7];
  v23 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 590]), v22);
  v24 = vmlaq_s32(v11, v20, v22);
  v25 = &av1_cospi_arr_data[64 * a3 - 630];
  v26 = vld1q_dup_f32(v25);
  v27 = vshlq_s32(v24, v10);
  v29 = a1[4];
  v28 = a1[5];
  v30 = vmlaq_s32(v11, v26, v28);
  v31 = &av1_cospi_arr_data[64 * a3 - 586];
  v32 = vld1q_dup_f32(v31);
  v33 = vmlaq_s32(v11, v32, v28);
  v34 = a1[2];
  v35 = a1[3];
  v36 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 582]), v35);
  v37 = &av1_cospi_arr_data[64 * a3 - 634];
  v38 = vld1q_dup_f32(v37);
  v39 = vmlaq_s32(v11, v38, v35);
  v40 = &av1_cospi_arr_data[64 * a3 - 636];
  v41 = vld1q_dup_f32(v40);
  v42 = &av1_cospi_arr_data[64 * a3 - 580];
  v43 = vld1q_dup_f32(v42);
  v44 = vmlaq_s32(v11, v41, v34);
  v45 = vmlaq_s32(v11, v43, v34);
  v228 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 588]), v21);
  v46 = &av1_cospi_arr_data[64 * a3 - 628];
  v47 = vld1q_dup_f32(v46);
  v239 = vmlaq_s32(v11, v47, v21);
  LODWORD(v46) = av1_cospi_arr_data[64 * a3 - 632];
  v48 = vdupq_n_s32(v46);
  v234 = vmlaq_s32(v11, v48, v29);
  v49 = av1_cospi_arr_data[64 * a3 - 584];
  v50 = vdupq_n_s32(v49);
  v231 = vmlaq_s32(v11, v50, v29);
  v51 = vshlq_s32(v23, v10);
  v52 = vmlaq_s32(vmlaq_s32(v11, vdupq_n_s32(-v46), v27), vdupq_n_s32(-v49), v51);
  v53 = v51;
  v54 = vdupq_n_s32(v8 - 1);
  v55 = vshlq_s32(v15, v10);
  v56 = vshlq_s32(v18, v10);
  v57 = vshlq_s32(v33, v10);
  v58 = vshlq_s32(v36, v10);
  v59 = vshlq_s32(v39, v10);
  v221 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v56, v48), v50, v55), v10);
  v60 = vmlaq_s32(vmlaq_s32(v11, v48, v55), v50, v56);
  v222 = vshlq_s32(v52, v10);
  v223 = v55;
  v217 = v53;
  v218 = vshlq_s32(v30, v10);
  v61 = vmlaq_s32(vmlsq_s32(v11, v53, v48), v50, v27);
  v62 = av1_cospi_arr_data[64 * a3 - 616];
  v63 = vdupq_n_s32(v62);
  LODWORD(v46) = av1_cospi_arr_data[64 * a3 - 600];
  v64 = vmlaq_s32(vmlaq_s32(v11, vdupq_n_s32(-v46), v59), vdupq_n_s32(-v62), v58);
  v65 = vdupq_n_s32(v46);
  v66 = vmlaq_s32(vmlsq_s32(v11, v57, v65), v63, v218);
  v219 = vmlaq_s32(vmlaq_s32(v11, v65, v218), v63, v57);
  v67 = vmlaq_s32(vmlsq_s32(v11, v58, v65), v63, v59);
  v68 = &av1_cospi_arr_data[64 * a3 - 608];
  v69 = vld1q_dup_f32(v68);
  LODWORD(v68) = av1_cospi_arr_data[64 * a3 - 624];
  v70 = vdupq_n_s32(v68);
  v71 = vminq_s32(vmaxq_s32(vsubq_s32(v221, v222), v9), v54);
  v72 = vmlsq_s32(v11, v70, v71);
  v73 = av1_cospi_arr_data[64 * a3 - 592];
  v74 = vdupq_n_s32(v73);
  v75 = vmlaq_s32(v11, v71, v74);
  v220 = vshlq_s32(v60, v10);
  v237 = vshlq_s32(v61, v10);
  v76 = vminq_s32(vmaxq_s32(vsubq_s32(v220, v237), v9), v54);
  v230 = vmlaq_s32(v72, v76, v74);
  v233 = vmlaq_s32(v75, v76, v70);
  v77 = vminq_s32(vmaxq_s32(vsubq_s32(v56, v53), v9), v54);
  v78 = vmlsq_s32(v11, v70, v77);
  v79 = vmlaq_s32(v11, v77, v74);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v58, v57), v9), v54);
  v81 = vdupq_n_s32(-v73);
  v82 = vmlaq_s32(v11, v80, v81);
  v83 = vmlsq_s32(v11, v70, v80);
  v84 = vshlq_s32(v228, v10);
  v85 = vshlq_s32(v239, v10);
  v86 = vshlq_s32(v66, v10);
  v87 = vshlq_s32(v64, v10);
  v88 = vdupq_n_s32(-v68);
  v89 = vmlaq_s32(vmlaq_s32(v11, v88, v85), v81, v84);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v87, v86), v9), v54);
  v91 = vmlaq_s32(v11, v90, v81);
  v92 = vmlsq_s32(v11, v70, v90);
  v93 = vshlq_s32(v44, v10);
  v94 = vshlq_s32(v45, v10);
  v95 = vmlsq_s32(v11, v94, v70);
  v96 = vmlaq_s32(v11, v70, v93);
  v97 = vmlsq_s32(v11, v84, v70);
  v98 = v27;
  v99 = vminq_s32(vmaxq_s32(vsubq_s32(v223, v27), v9), v54);
  v100 = vmlaq_s32(v79, v99, v70);
  v225 = vmlaq_s32(v78, v99, v74);
  v101 = vminq_s32(vmaxq_s32(vsubq_s32(v59, v218), v9), v54);
  v224 = vmlaq_s32(v82, v101, v88);
  v226 = vmlaq_s32(v83, v101, v74);
  v227 = v100;
  v102 = vshlq_s32(v219, v10);
  v103 = vshlq_s32(v67, v10);
  v104 = vminq_s32(vmaxq_s32(vsubq_s32(v103, v102), v9), v54);
  v105 = vmlaq_s32(v91, v104, v88);
  v106 = vmlaq_s32(v92, v104, v74);
  v107 = vmlaq_s32(v95, v74, v93);
  v108 = vmlaq_s32(v96, v74, v94);
  v109 = vmlaq_s32(v97, v74, v85);
  v110 = vaddq_s32(v58, v57);
  v111 = vaddq_s32(v87, v86);
  v112 = vaddq_s32(v59, v218);
  v113 = vaddq_s32(v103, v102);
  v114 = vaddq_s32(v237, v220);
  v115 = vshlq_s32(v231, v10);
  v116 = vmulq_s32(v69, v115);
  v117 = vshlq_s32(v234, v10);
  v118 = vmulq_s32(v69, v117);
  v119 = vaddq_s32(vsubq_s32(v11, v116), v118);
  v120 = vaddq_s32(vaddq_s32(v116, v11), v118);
  v121 = vshlq_s32(v107, v10);
  v122 = vshlq_s32(v89, v10);
  v238 = vaddq_s32(v122, v121);
  v240 = vaddq_s32(v84, v94);
  v123 = vsubq_s32(v121, v122);
  v124 = vaddq_s32(v85, v93);
  v125 = vshlq_s32(v108, v10);
  v126 = vshlq_s32(v109, v10);
  v127 = vaddq_s32(v126, v125);
  v128 = vsubq_s32(v125, v126);
  v129 = vshlq_s32(vmlaq_s32(v11, v69, *a1), v10);
  v130 = vshlq_s32(v119, v10);
  v131 = vshlq_s32(v120, v10);
  v132 = vaddq_s32(v129, v117);
  v133 = vaddq_s32(v131, v129);
  v235 = vsubq_s32(v129, v131);
  v236 = vsubq_s32(v129, v117);
  v134 = vaddq_s32(v130, v129);
  v232 = vsubq_s32(v129, v130);
  v135 = vaddq_s32(v129, v115);
  v229 = vsubq_s32(v129, v115);
  v136 = vmulq_s32(vminq_s32(vmaxq_s32(v123, v9), v54), v69);
  v137 = vmulq_s32(vminq_s32(vmaxq_s32(v128, v9), v54), v69);
  v138 = vaddq_s32(vsubq_s32(v11, v136), v137);
  v139 = vaddq_s32(vaddq_s32(v136, v11), v137);
  v140 = vminq_s32(vmaxq_s32(vsubq_s32(v94, v84), v9), v54);
  v141 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v93, v85), v9), v54), v69);
  v142 = vmulq_s32(v140, v69);
  v143 = vaddq_s32(vsubq_s32(v11, v142), v141);
  v144 = vaddq_s32(v142, vaddq_s32(v11, v141));
  v145 = vminq_s32(vmaxq_s32(vaddq_s32(v217, v56), v9), v54);
  v146 = vminq_s32(vmaxq_s32(v110, v9), v54);
  v147 = vaddq_s32(v146, v145);
  v148 = vsubq_s32(v145, v146);
  v149 = vminq_s32(vmaxq_s32(vaddq_s32(v222, v221), v9), v54);
  v150 = vminq_s32(vmaxq_s32(v111, v9), v54);
  v151 = vsubq_s32(v149, v150);
  v243[16] = vminq_s32(vmaxq_s32(v147, v9), v54);
  v243[17] = vminq_s32(vmaxq_s32(vaddq_s32(v150, v149), v9), v54);
  v152 = vshlq_s32(v230, v10);
  v153 = vshlq_s32(v105, v10);
  v154 = vaddq_s32(v153, v152);
  v155 = vsubq_s32(v152, v153);
  v156 = vshlq_s32(v225, v10);
  v157 = vshlq_s32(v224, v10);
  v158 = vaddq_s32(v157, v156);
  v159 = vsubq_s32(v156, v157);
  v243[18] = vminq_s32(vmaxq_s32(v154, v9), v54);
  v243[19] = vminq_s32(vmaxq_s32(v158, v9), v54);
  v160 = vminq_s32(vmaxq_s32(v112, v9), v54);
  v161 = vminq_s32(vmaxq_s32(vaddq_s32(v98, v223), v9), v54);
  v162 = vaddq_s32(v161, v160);
  v163 = vsubq_s32(v161, v160);
  v164 = vminq_s32(vmaxq_s32(v113, v9), v54);
  v165 = vminq_s32(vmaxq_s32(v114, v9), v54);
  v166 = vsubq_s32(v165, v164);
  v243[30] = vminq_s32(vmaxq_s32(vaddq_s32(v165, v164), v9), v54);
  v243[31] = vminq_s32(vmaxq_s32(v162, v9), v54);
  v167 = vshlq_s32(v233, v10);
  v168 = vshlq_s32(v227, v10);
  v169 = vshlq_s32(v226, v10);
  v170 = vshlq_s32(v106, v10);
  v171 = vaddq_s32(v170, v167);
  v172 = vsubq_s32(v167, v170);
  v173 = vsubq_s32(v168, v169);
  v243[28] = vminq_s32(vmaxq_s32(vaddq_s32(v169, v168), v9), v54);
  v243[29] = vminq_s32(vmaxq_s32(v171, v9), v54);
  v174 = vminq_s32(vmaxq_s32(v124, v9), v54);
  v175 = vminq_s32(vmaxq_s32(v127, v9), v54);
  v176 = vminq_s32(vmaxq_s32(v132, v9), v54);
  v177 = vminq_s32(vmaxq_s32(v133, v9), v54);
  v243[0] = vminq_s32(vmaxq_s32(vaddq_s32(v176, v174), v9), v54);
  v243[1] = vminq_s32(vmaxq_s32(vaddq_s32(v177, v175), v9), v54);
  v243[14] = vminq_s32(vmaxq_s32(vsubq_s32(v177, v175), v9), v54);
  v243[15] = vminq_s32(vmaxq_s32(vsubq_s32(v176, v174), v9), v54);
  v178 = vminq_s32(vmaxq_s32(v134, v9), v54);
  v179 = vminq_s32(vmaxq_s32(v135, v9), v54);
  v180 = vshlq_s32(v139, v10);
  v181 = vshlq_s32(v144, v10);
  v243[2] = vminq_s32(vmaxq_s32(vaddq_s32(v180, v178), v9), v54);
  v243[3] = vminq_s32(vmaxq_s32(vaddq_s32(v181, v179), v9), v54);
  v243[12] = vminq_s32(vmaxq_s32(vsubq_s32(v179, v181), v9), v54);
  v243[13] = vminq_s32(vmaxq_s32(vsubq_s32(v178, v180), v9), v54);
  v182 = vminq_s32(vmaxq_s32(v232, v9), v54);
  v183 = vminq_s32(vmaxq_s32(v229, v9), v54);
  v184 = vshlq_s32(v138, v10);
  v185 = vshlq_s32(v143, v10);
  v243[4] = vminq_s32(vmaxq_s32(vaddq_s32(v185, v183), v9), v54);
  v243[5] = vminq_s32(vmaxq_s32(vaddq_s32(v184, v182), v9), v54);
  v243[10] = vminq_s32(vmaxq_s32(vsubq_s32(v182, v184), v9), v54);
  v243[11] = vminq_s32(vmaxq_s32(vsubq_s32(v183, v185), v9), v54);
  v186 = vminq_s32(vmaxq_s32(v240, v9), v54);
  v187 = vminq_s32(vmaxq_s32(v238, v9), v54);
  v188 = vminq_s32(vmaxq_s32(v236, v9), v54);
  v189 = vminq_s32(vmaxq_s32(v235, v9), v54);
  v190 = vaddq_s32(v189, v187);
  v191 = vsubq_s32(v189, v187);
  v192 = vaddq_s32(v188, v186);
  v193 = vsubq_s32(v188, v186);
  v241 = v54;
  v242 = v9;
  v194 = vmaxq_s32(v148, v9);
  v195 = vmaxq_s32(v151, v9);
  v196 = vmaxq_s32(v155, v9);
  v197 = vmaxq_s32(v159, v9);
  v198 = vmaxq_s32(v163, v9);
  v199 = vmaxq_s32(v166, v9);
  v200 = vmaxq_s32(v172, v9);
  v201 = vmaxq_s32(v173, v9);
  v202 = vmaxq_s32(v190, v9);
  v203 = vmaxq_s32(v191, v9);
  v204 = vmaxq_s32(v192, v9);
  v205 = vmaxq_s32(v193, v9);
  v206 = vminq_s32(v194, v54);
  v243[6] = vminq_s32(v202, v54);
  v243[7] = vminq_s32(v204, v54);
  v243[8] = vminq_s32(v205, v54);
  v243[9] = vminq_s32(v203, v54);
  v207 = vmulq_s32(vminq_s32(v197, v54), v69);
  v208 = vmulq_s32(vminq_s32(v201, v54), v69);
  v209 = vaddq_s32(vsubq_s32(v11, v207), v208);
  v210 = vaddq_s32(vaddq_s32(v207, v11), v208);
  v211 = vmulq_s32(vminq_s32(v196, v54), v69);
  v212 = vmulq_s32(vminq_s32(v200, v54), v69);
  v243[26] = vshlq_s32(vaddq_s32(vaddq_s32(v211, v11), v212), v10);
  v243[27] = vshlq_s32(v210, v10);
  v243[20] = vshlq_s32(v209, v10);
  v243[21] = vshlq_s32(vaddq_s32(vsubq_s32(v11, v211), v212), v10);
  v213 = vmulq_s32(vminq_s32(v195, v54), v69);
  v214 = vmulq_s32(vminq_s32(v199, v54), v69);
  v215 = vmulq_s32(vminq_s32(v198, v54), v69);
  v216 = vmulq_s32(v206, v69);
  v243[24] = vshlq_s32(vaddq_s32(v216, vaddq_s32(v11, v215)), v10);
  v243[25] = vshlq_s32(vaddq_s32(vaddq_s32(v213, v11), v214), v10);
  v243[22] = vshlq_s32(vaddq_s32(vsubq_s32(v11, v213), v214), v10);
  v243[23] = vshlq_s32(vaddq_s32(vsubq_s32(v11, v216), v215), v10);
  idct32_stage9_neon(v243, a2, a4, a5, a6, &v242, &v241);
}

void idct32x32_low16_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v346 = *MEMORY[0x277D85DE8];
  v12 = &av1_cospi_arr_data[64 * a3 - 638];
  v13 = vld1q_dup_f32(v12);
  v14 = a1[1];
  v15 = vmlaq_s32(v11, v13, v14);
  v16 = &av1_cospi_arr_data[64 * a3 - 578];
  v17 = vld1q_dup_f32(v16);
  v18 = vmlaq_s32(v11, v17, v14);
  v19 = &av1_cospi_arr_data[64 * a3 - 610];
  v20 = vld1q_dup_f32(v19);
  v22 = a1[14];
  v21 = a1[15];
  v23 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 606]), v21);
  v24 = vmlaq_s32(v11, v20, v21);
  v25 = &av1_cospi_arr_data[64 * a3 - 622];
  v26 = vld1q_dup_f32(v25);
  v27 = a1[9];
  v28 = vmlaq_s32(v11, v26, v27);
  v29 = &av1_cospi_arr_data[64 * a3 - 594];
  v30 = vld1q_dup_f32(v29);
  v31 = vmlaq_s32(v11, v30, v27);
  v33 = a1[6];
  v32 = a1[7];
  v34 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 590]), v32);
  v35 = &av1_cospi_arr_data[64 * a3 - 626];
  v36 = vld1q_dup_f32(v35);
  v317 = vshlq_s32(v28, v10);
  v319 = vshlq_s32(vmlaq_s32(v11, v36, v32), v10);
  v37 = &av1_cospi_arr_data[64 * a3 - 630];
  v38 = vld1q_dup_f32(v37);
  v39 = a1[4];
  v40 = a1[5];
  v41 = vmlaq_s32(v11, v38, v40);
  v42 = &av1_cospi_arr_data[64 * a3 - 586];
  v43 = vld1q_dup_f32(v42);
  v44 = vmlaq_s32(v11, v43, v40);
  v45 = a1[10];
  v46 = a1[11];
  v47 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 598]), v46);
  v48 = &av1_cospi_arr_data[64 * a3 - 618];
  v49 = vld1q_dup_f32(v48);
  v50 = vmlaq_s32(v11, v49, v46);
  v51 = &av1_cospi_arr_data[64 * a3 - 614];
  v52 = vld1q_dup_f32(v51);
  v53 = a1[13];
  v54 = vmlaq_s32(v11, v52, v53);
  v55 = &av1_cospi_arr_data[64 * a3 - 602];
  v56 = vld1q_dup_f32(v55);
  v57 = vmlaq_s32(v11, v56, v53);
  v58 = a1[2];
  v59 = a1[3];
  v60 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 582]), v59);
  v61 = &av1_cospi_arr_data[64 * a3 - 634];
  v62 = vld1q_dup_f32(v61);
  v63 = vmlaq_s32(v11, v62, v59);
  v64 = &av1_cospi_arr_data[64 * a3 - 636];
  v65 = vld1q_dup_f32(v64);
  v327 = vmlaq_s32(v11, v65, v58);
  v66 = &av1_cospi_arr_data[64 * a3 - 580];
  v67 = vld1q_dup_f32(v66);
  v323 = vmlaq_s32(v11, v67, v58);
  v68 = &av1_cospi_arr_data[64 * a3 - 612];
  v69 = vld1q_dup_f32(v68);
  v315 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 604]), v22);
  v70 = vmlaq_s32(v11, v69, v22);
  v71 = &av1_cospi_arr_data[64 * a3 - 620];
  v72 = vld1q_dup_f32(v71);
  v333 = vmlaq_s32(v11, v72, v45);
  v73 = &av1_cospi_arr_data[64 * a3 - 596];
  v74 = vld1q_dup_f32(v73);
  v330 = vmlaq_s32(v11, v74, v45);
  v325 = vmlaq_s32(v11, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 588]), v33);
  v75 = &av1_cospi_arr_data[64 * a3 - 628];
  v76 = vld1q_dup_f32(v75);
  v321 = vmlaq_s32(v11, v76, v33);
  v77 = av1_cospi_arr_data[64 * a3 - 632];
  v78 = vdupq_n_s32(v77);
  v341 = vmlaq_s32(v11, v78, v39);
  LODWORD(v75) = av1_cospi_arr_data[64 * a3 - 584];
  v79 = vdupq_n_s32(v75);
  v339 = vmlaq_s32(v11, v79, v39);
  v80 = vdupq_n_s32(v8 - 1);
  v81 = vminq_s32(vmaxq_s32(vsubq_s32(v319, v317), v9), v80);
  v82 = vshlq_s32(v31, v10);
  v83 = vshlq_s32(v34, v10);
  v84 = vminq_s32(vmaxq_s32(vsubq_s32(v83, v82), v9), v80);
  v85 = vmlaq_s32(vmlaq_s32(v11, vdupq_n_s32(-v77), v81), vdupq_n_s32(-v75), v84);
  v86 = vshlq_s32(v15, v10);
  v87 = vshlq_s32(v18, v10);
  v88 = vshlq_s32(v23, v10);
  v89 = vshlq_s32(v24, v10);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v87, v88), v9), v80);
  v91 = vminq_s32(vmaxq_s32(vsubq_s32(v86, v89), v9), v80);
  v92 = vmlaq_s32(vmlsq_s32(v11, v90, v78), v79, v91);
  v93 = vmlaq_s32(vmlaq_s32(v11, v78, v91), v79, v90);
  v94 = vmlaq_s32(vmlsq_s32(v11, v84, v78), v79, v81);
  v95 = av1_cospi_arr_data[64 * a3 - 600];
  v96 = a1[12];
  v97 = vdupq_n_s32(-v95);
  v337 = vmlaq_s32(v11, v97, v96);
  LODWORD(v75) = av1_cospi_arr_data[64 * a3 - 616];
  v98 = vdupq_n_s32(v75);
  v335 = vmlaq_s32(v11, v98, v96);
  v99 = vshlq_s32(v54, v10);
  v100 = vshlq_s32(v63, v10);
  v101 = vminq_s32(vmaxq_s32(vsubq_s32(v100, v99), v9), v80);
  v102 = vshlq_s32(v57, v10);
  v103 = vshlq_s32(v60, v10);
  v104 = vminq_s32(vmaxq_s32(vsubq_s32(v103, v102), v9), v80);
  v105 = vdupq_n_s32(v95);
  v106 = vmlaq_s32(vmlaq_s32(v11, v97, v101), vdupq_n_s32(-v75), v104);
  v107 = vmlsq_s32(v11, v104, v105);
  v108 = vshlq_s32(v41, v10);
  v109 = vshlq_s32(v44, v10);
  v110 = vshlq_s32(v47, v10);
  v111 = vshlq_s32(v50, v10);
  v112 = vminq_s32(vmaxq_s32(vsubq_s32(v109, v110), v9), v80);
  v113 = vminq_s32(vmaxq_s32(vsubq_s32(v108, v111), v9), v80);
  v114 = vmlaq_s32(vmlsq_s32(v11, v112, v105), v98, v113);
  v115 = vmlaq_s32(vmlaq_s32(v11, v105, v113), v98, v112);
  v311 = vmlaq_s32(v107, v98, v101);
  v116 = vaddq_s32(v88, v87);
  v117 = vaddq_s32(v83, v82);
  v304 = vaddq_s32(v110, v109);
  v118 = vaddq_s32(v103, v102);
  v313 = vaddq_s32(v111, v108);
  v307 = vaddq_s32(v100, v99);
  v308 = vaddq_s32(v319, v317);
  v310 = vaddq_s32(v89, v86);
  v119 = av1_cospi_arr_data[64 * a3 - 624];
  LODWORD(v75) = av1_cospi_arr_data[64 * a3 - 592];
  v120 = a1[8];
  v121 = vdupq_n_s32(v119);
  v122 = vdupq_n_s32(v75);
  v320 = vmlaq_s32(v11, v121, v120);
  v318 = vmlaq_s32(v11, v122, v120);
  v123 = vshlq_s32(v327, v10);
  v305 = vshlq_s32(v323, v10);
  v306 = vshlq_s32(v315, v10);
  v124 = vshlq_s32(v70, v10);
  v125 = vminq_s32(vmaxq_s32(vsubq_s32(v305, v306), v9), v80);
  v126 = vminq_s32(vmaxq_s32(vsubq_s32(v123, v124), v9), v80);
  v324 = vmlaq_s32(vmlsq_s32(v11, v125, v121), v122, v126);
  v328 = vmlaq_s32(vmlaq_s32(v11, v121, v126), v122, v125);
  v127 = vshlq_s32(v333, v10);
  v303 = vshlq_s32(v330, v10);
  v300 = vshlq_s32(v325, v10);
  v128 = vshlq_s32(v321, v10);
  v129 = vminq_s32(vmaxq_s32(vsubq_s32(v300, v303), v9), v80);
  v130 = vminq_s32(vmaxq_s32(vsubq_s32(v128, v127), v9), v80);
  v131 = vdupq_n_s32(-v75);
  v132 = vdupq_n_s32(-v119);
  v326 = vmlaq_s32(vmlaq_s32(v11, v132, v130), v131, v129);
  v331 = vmlaq_s32(vmlsq_s32(v11, v129, v121), v122, v130);
  v301 = vshlq_s32(v92, v10);
  v302 = vshlq_s32(v85, v10);
  v133 = vminq_s32(vmaxq_s32(vsubq_s32(v301, v302), v9), v80);
  v134 = vshlq_s32(v93, v10);
  v135 = vshlq_s32(v94, v10);
  v136 = vminq_s32(vmaxq_s32(vsubq_s32(v134, v135), v9), v80);
  v322 = vmlaq_s32(vmlsq_s32(v11, v121, v133), v136, v122);
  v334 = vmlaq_s32(vmlaq_s32(v11, v133, v122), v136, v121);
  v137 = vminq_s32(vmaxq_s32(v116, v9), v80);
  v138 = vminq_s32(vmaxq_s32(v117, v9), v80);
  v139 = vminq_s32(vmaxq_s32(vsubq_s32(v137, v138), v9), v80);
  v140 = vminq_s32(vmaxq_s32(v304, v9), v80);
  v141 = vminq_s32(vmaxq_s32(v118, v9), v80);
  v142 = vminq_s32(vmaxq_s32(vsubq_s32(v141, v140), v9), v80);
  v143 = vmlaq_s32(v11, v142, v131);
  v144 = vmlsq_s32(v11, v121, v142);
  v145 = vshlq_s32(v114, v10);
  v146 = vshlq_s32(v106, v10);
  v147 = vminq_s32(vmaxq_s32(vsubq_s32(v146, v145), v9), v80);
  v148 = vmlaq_s32(v11, v147, v131);
  v149 = vmlsq_s32(v11, v121, v147);
  v150 = vminq_s32(vmaxq_s32(v308, v9), v80);
  v151 = vminq_s32(vmaxq_s32(v310, v9), v80);
  v152 = vminq_s32(vmaxq_s32(vsubq_s32(v151, v150), v9), v80);
  v153 = vmlaq_s32(vmlaq_s32(v11, v139, v122), v152, v121);
  v154 = vmlaq_s32(vmlsq_s32(v11, v121, v139), v152, v122);
  v155 = vminq_s32(vmaxq_s32(v307, v9), v80);
  v156 = vminq_s32(vmaxq_s32(v313, v9), v80);
  v157 = vminq_s32(vmaxq_s32(vsubq_s32(v155, v156), v9), v80);
  v158 = vmlaq_s32(v143, v157, v132);
  v314 = vmlaq_s32(v144, v157, v122);
  v316 = v153;
  v159 = vshlq_s32(v115, v10);
  v160 = vshlq_s32(v311, v10);
  v161 = vminq_s32(vmaxq_s32(vsubq_s32(v160, v159), v9), v80);
  v162 = vmlaq_s32(v148, v161, v132);
  v163 = vmlaq_s32(v149, v161, v122);
  v164 = vaddq_s32(v128, v127);
  v165 = vaddq_s32(v124, v123);
  v166 = &av1_cospi_arr_data[64 * a3 - 608];
  v167 = vld1q_dup_f32(v166);
  v168 = vshlq_s32(v339, v10);
  v169 = vshlq_s32(v337, v10);
  v309 = vaddq_s32(v169, v168);
  v170 = vsubq_s32(v168, v169);
  v171 = vshlq_s32(v341, v10);
  v172 = vshlq_s32(v335, v10);
  v173 = vaddq_s32(v172, v171);
  v174 = vaddq_s32(v138, v137);
  v175 = vaddq_s32(v141, v140);
  v176 = vaddq_s32(v146, v145);
  v177 = vaddq_s32(v156, v155);
  v178 = vaddq_s32(v160, v159);
  v179 = vaddq_s32(v151, v150);
  v312 = vaddq_s32(v135, v134);
  v180 = vshlq_s32(vmlaq_s32(v11, v167, *a1), v10);
  v181 = vshlq_s32(v320, v10);
  v182 = vshlq_s32(v318, v10);
  v183 = vaddq_s32(v181, v180);
  v184 = vsubq_s32(v180, v181);
  v185 = vaddq_s32(v182, v180);
  v186 = vsubq_s32(v180, v182);
  v187 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v171, v172), v9), v80), v167);
  v188 = vmulq_s32(vminq_s32(vmaxq_s32(v170, v9), v80), v167);
  v189 = vaddq_s32(vsubq_s32(v11, v188), v187);
  v190 = vaddq_s32(v188, vaddq_s32(v11, v187));
  v191 = vminq_s32(vmaxq_s32(vaddq_s32(v306, v305), v9), v80);
  v192 = vminq_s32(vmaxq_s32(vaddq_s32(v300, v303), v9), v80);
  v342 = vaddq_s32(v192, v191);
  v193 = vsubq_s32(v191, v192);
  v194 = vshlq_s32(v324, v10);
  v195 = vshlq_s32(v326, v10);
  v340 = vaddq_s32(v195, v194);
  v196 = vsubq_s32(v194, v195);
  v197 = vminq_s32(vmaxq_s32(v164, v9), v80);
  v198 = vminq_s32(vmaxq_s32(v165, v9), v80);
  v199 = vaddq_s32(v198, v197);
  v200 = vsubq_s32(v198, v197);
  v201 = vshlq_s32(v328, v10);
  v202 = vshlq_s32(v331, v10);
  v203 = vaddq_s32(v202, v201);
  v204 = vsubq_s32(v201, v202);
  v205 = vminq_s32(vmaxq_s32(v173, v9), v80);
  v206 = vminq_s32(vmaxq_s32(v183, v9), v80);
  v207 = vaddq_s32(v206, v205);
  v208 = vsubq_s32(v206, v205);
  v209 = vminq_s32(vmaxq_s32(v185, v9), v80);
  v210 = vshlq_s32(v190, v10);
  v211 = vaddq_s32(v210, v209);
  v336 = vsubq_s32(v209, v210);
  v338 = v208;
  v212 = vminq_s32(vmaxq_s32(v186, v9), v80);
  v213 = vshlq_s32(v189, v10);
  v214 = vaddq_s32(v213, v212);
  v332 = vsubq_s32(v212, v213);
  v215 = vminq_s32(vmaxq_s32(v309, v9), v80);
  v216 = vminq_s32(vmaxq_s32(v184, v9), v80);
  v217 = vaddq_s32(v216, v215);
  v329 = vsubq_s32(v216, v215);
  v218 = vmulq_s32(vminq_s32(vmaxq_s32(v196, v9), v80), v167);
  v219 = vmulq_s32(vminq_s32(vmaxq_s32(v204, v9), v80), v167);
  v220 = vaddq_s32(vsubq_s32(v11, v218), v219);
  v221 = vaddq_s32(vaddq_s32(v218, v11), v219);
  v222 = vminq_s32(vmaxq_s32(v193, v9), v80);
  v223 = vmulq_s32(vminq_s32(vmaxq_s32(v200, v9), v80), v167);
  v224 = vmulq_s32(v222, v167);
  v225 = vaddq_s32(vsubq_s32(v11, v224), v223);
  v226 = vaddq_s32(v224, vaddq_s32(v11, v223));
  v227 = vminq_s32(vmaxq_s32(v174, v9), v80);
  v228 = vminq_s32(vmaxq_s32(v175, v9), v80);
  v229 = vaddq_s32(v228, v227);
  v230 = vsubq_s32(v227, v228);
  v231 = vminq_s32(vmaxq_s32(vaddq_s32(v302, v301), v9), v80);
  v232 = vminq_s32(vmaxq_s32(v176, v9), v80);
  v233 = vsubq_s32(v231, v232);
  v345[16] = vminq_s32(vmaxq_s32(v229, v9), v80);
  v345[17] = vminq_s32(vmaxq_s32(vaddq_s32(v232, v231), v9), v80);
  v234 = vshlq_s32(v322, v10);
  v235 = vshlq_s32(v162, v10);
  v236 = vaddq_s32(v235, v234);
  v237 = vsubq_s32(v234, v235);
  v238 = vshlq_s32(v154, v10);
  v239 = vshlq_s32(v158, v10);
  v240 = vaddq_s32(v239, v238);
  v241 = vsubq_s32(v238, v239);
  v345[18] = vminq_s32(vmaxq_s32(v236, v9), v80);
  v345[19] = vminq_s32(vmaxq_s32(v240, v9), v80);
  v242 = vminq_s32(vmaxq_s32(v177, v9), v80);
  v243 = vminq_s32(vmaxq_s32(v179, v9), v80);
  v244 = vaddq_s32(v243, v242);
  v245 = vsubq_s32(v243, v242);
  v246 = vminq_s32(vmaxq_s32(v178, v9), v80);
  v247 = vminq_s32(vmaxq_s32(v312, v9), v80);
  v248 = vsubq_s32(v247, v246);
  v345[30] = vminq_s32(vmaxq_s32(vaddq_s32(v247, v246), v9), v80);
  v345[31] = vminq_s32(vmaxq_s32(v244, v9), v80);
  v249 = vshlq_s32(v334, v10);
  v250 = vshlq_s32(v316, v10);
  v251 = vshlq_s32(v314, v10);
  v252 = vshlq_s32(v163, v10);
  v253 = vaddq_s32(v252, v249);
  v254 = vsubq_s32(v249, v252);
  v255 = vaddq_s32(v251, v250);
  v256 = vsubq_s32(v250, v251);
  v345[28] = vminq_s32(vmaxq_s32(v255, v9), v80);
  v345[29] = vminq_s32(vmaxq_s32(v253, v9), v80);
  v257 = vminq_s32(vmaxq_s32(v199, v9), v80);
  v258 = vminq_s32(vmaxq_s32(v203, v9), v80);
  v259 = vminq_s32(vmaxq_s32(v207, v9), v80);
  v260 = vminq_s32(vmaxq_s32(v211, v9), v80);
  v345[0] = vminq_s32(vmaxq_s32(vaddq_s32(v259, v257), v9), v80);
  v345[1] = vminq_s32(vmaxq_s32(vaddq_s32(v260, v258), v9), v80);
  v345[14] = vminq_s32(vmaxq_s32(vsubq_s32(v260, v258), v9), v80);
  v345[15] = vminq_s32(vmaxq_s32(vsubq_s32(v259, v257), v9), v80);
  v261 = vminq_s32(vmaxq_s32(v214, v9), v80);
  v262 = vminq_s32(vmaxq_s32(v217, v9), v80);
  v263 = vshlq_s32(v221, v10);
  v264 = vshlq_s32(v226, v10);
  v345[2] = vminq_s32(vmaxq_s32(vaddq_s32(v263, v261), v9), v80);
  v345[3] = vminq_s32(vmaxq_s32(vaddq_s32(v264, v262), v9), v80);
  v345[12] = vminq_s32(vmaxq_s32(vsubq_s32(v262, v264), v9), v80);
  v345[13] = vminq_s32(vmaxq_s32(vsubq_s32(v261, v263), v9), v80);
  v265 = vminq_s32(vmaxq_s32(v332, v9), v80);
  v266 = vminq_s32(vmaxq_s32(v329, v9), v80);
  v267 = vshlq_s32(v220, v10);
  v268 = vshlq_s32(v225, v10);
  v345[4] = vminq_s32(vmaxq_s32(vaddq_s32(v268, v266), v9), v80);
  v345[5] = vminq_s32(vmaxq_s32(vaddq_s32(v267, v265), v9), v80);
  v345[10] = vminq_s32(vmaxq_s32(vsubq_s32(v265, v267), v9), v80);
  v345[11] = vminq_s32(vmaxq_s32(vsubq_s32(v266, v268), v9), v80);
  v269 = vminq_s32(vmaxq_s32(v342, v9), v80);
  v270 = vminq_s32(vmaxq_s32(v340, v9), v80);
  v271 = vminq_s32(vmaxq_s32(v338, v9), v80);
  v272 = vminq_s32(vmaxq_s32(v336, v9), v80);
  v343 = v80;
  v344 = v9;
  v273 = vmaxq_s32(v233, v9);
  v274 = vmaxq_s32(v237, v9);
  v275 = vmaxq_s32(v241, v9);
  v276 = vmaxq_s32(v245, v9);
  v277 = vmaxq_s32(v248, v9);
  v278 = vmaxq_s32(v254, v9);
  v279 = vmaxq_s32(v256, v9);
  v280 = vmaxq_s32(vaddq_s32(v272, v270), v9);
  v281 = vmaxq_s32(vsubq_s32(v272, v270), v9);
  v282 = vmaxq_s32(vaddq_s32(v271, v269), v9);
  v283 = vmaxq_s32(vsubq_s32(v271, v269), v9);
  v284 = vminq_s32(vmaxq_s32(v230, v9), v80);
  v285 = vminq_s32(v273, v80);
  v286 = vminq_s32(v274, v80);
  v287 = vminq_s32(v276, v80);
  v288 = vminq_s32(v277, v80);
  v289 = vminq_s32(v278, v80);
  v345[6] = vminq_s32(v280, v80);
  v345[7] = vminq_s32(v282, v80);
  v345[8] = vminq_s32(v283, v80);
  v345[9] = vminq_s32(v281, v80);
  v290 = vmulq_s32(vminq_s32(v275, v80), v167);
  v291 = vmulq_s32(vminq_s32(v279, v80), v167);
  v292 = vaddq_s32(vsubq_s32(v11, v290), v291);
  v293 = vaddq_s32(vaddq_s32(v290, v11), v291);
  v294 = vmulq_s32(v286, v167);
  v295 = vmulq_s32(v289, v167);
  v345[26] = vshlq_s32(vaddq_s32(vaddq_s32(v294, v11), v295), v10);
  v345[27] = vshlq_s32(v293, v10);
  v345[20] = vshlq_s32(v292, v10);
  v345[21] = vshlq_s32(vaddq_s32(vsubq_s32(v11, v294), v295), v10);
  v296 = vmulq_s32(v285, v167);
  v297 = vmulq_s32(v288, v167);
  v298 = vmulq_s32(v287, v167);
  v299 = vmulq_s32(v284, v167);
  v345[24] = vshlq_s32(vaddq_s32(v299, vaddq_s32(v11, v298)), v10);
  v345[25] = vshlq_s32(vaddq_s32(vaddq_s32(v296, v11), v297), v10);
  v345[22] = vshlq_s32(vaddq_s32(vsubq_s32(v11, v296), v297), v10);
  v345[23] = vshlq_s32(vaddq_s32(vsubq_s32(v11, v299), v298), v10);
  idct32_stage9_neon(v345, a2, a4, a5, a6, &v344, &v343);
}

int32x4_t *idct32x32_neon(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
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
  v11 = &av1_cospi_arr_data[64 * a3 - 578];
  v12 = vld1q_dup_f32(v11);
  v13 = result[1];
  v14 = &av1_cospi_arr_data[64 * a3 - 638];
  v15 = vld1q_dup_f32(v14);
  v16 = &av1_cospi_arr_data[64 * a3 - 610];
  v17 = vld1q_dup_f32(v16);
  v18 = result[17];
  v19 = vmlaq_s32(v10, v17, v18);
  v20 = &av1_cospi_arr_data[64 * a3 - 594];
  v21 = vld1q_dup_f32(v20);
  v22 = result[9];
  v23 = &av1_cospi_arr_data[64 * a3 - 626];
  v24 = vld1q_dup_f32(v23);
  v25 = result[25];
  v26 = &av1_cospi_arr_data[64 * a3 - 586];
  v27 = vld1q_dup_f32(v26);
  v28 = result[5];
  v29 = vmlaq_s32(v10, v27, v28);
  v30 = &av1_cospi_arr_data[64 * a3 - 618];
  v31 = vld1q_dup_f32(v30);
  v32 = &av1_cospi_arr_data[64 * a3 - 602];
  v33 = vld1q_dup_f32(v32);
  v34 = result[21];
  v35 = vmlaq_s32(v10, v31, v34);
  v36 = result[13];
  v556 = result[12];
  v562 = result[20];
  v37 = vmlaq_s32(v10, v33, v36);
  v38 = &av1_cospi_arr_data[64 * a3 - 634];
  v39 = vld1q_dup_f32(v38);
  v40 = result[29];
  v41 = vmlaq_s32(v10, v39, v40);
  v42 = result[3];
  v527 = result[2];
  v43 = vmlaq_s32(v10, v39, v42);
  v44 = &av1_cospi_arr_data[64 * a3 - 582];
  v45 = vld1q_dup_f32(v44);
  v46 = vmlsq_s32(v41, v42, v45);
  v47 = vmlaq_s32(v43, v45, v40);
  v49 = result[18];
  v48 = result[19];
  v50 = vmlaq_s32(v10, v33, v48);
  v51 = &av1_cospi_arr_data[64 * a3 - 614];
  v52 = vld1q_dup_f32(v51);
  v53 = vmlsq_s32(v37, v48, v52);
  v54 = vmlaq_s32(v50, v52, v36);
  v55 = result[10];
  v56 = result[11];
  v57 = vmlaq_s32(v10, v31, v56);
  v58 = &av1_cospi_arr_data[64 * a3 - 598];
  v59 = vld1q_dup_f32(v58);
  v60 = vmlsq_s32(v35, v56, v59);
  v61 = vmlaq_s32(v57, v59, v34);
  v63 = result[26];
  v62 = result[27];
  v64 = vmlaq_s32(v10, v27, v62);
  v65 = &av1_cospi_arr_data[64 * a3 - 630];
  v66 = vld1q_dup_f32(v65);
  v67 = vmlsq_s32(v29, v62, v66);
  v68 = vmlaq_s32(v64, v66, v28);
  v69 = result[6];
  v70 = result[7];
  v71 = &av1_cospi_arr_data[64 * a3 - 590];
  v72 = vld1q_dup_f32(v71);
  v73 = vmlsq_s32(vmlaq_s32(v10, v24, v25), v70, v72);
  v74 = vmlaq_s32(vmlaq_s32(v10, v24, v70), v72, v25);
  v76 = result[22];
  v75 = result[23];
  v77 = &av1_cospi_arr_data[64 * a3 - 622];
  v78 = vld1q_dup_f32(v77);
  v79 = vmlsq_s32(vmlaq_s32(v10, v21, v22), v75, v78);
  v80 = vmlaq_s32(vmlaq_s32(v10, v21, v75), v78, v22);
  v81 = result[14];
  v82 = result[15];
  v83 = vmlaq_s32(v10, v17, v82);
  v84 = &av1_cospi_arr_data[64 * a3 - 606];
  v85 = vld1q_dup_f32(v84);
  v546 = v73;
  v551 = vmlsq_s32(v19, v82, v85);
  v86 = result[31];
  v500 = v79;
  v503 = vmlsq_s32(vmlaq_s32(v10, v12, v13), v86, v15);
  v87 = vmlaq_s32(v83, v85, v18);
  v88 = vmlaq_s32(v10, v12, v86);
  v89 = &av1_cospi_arr_data[64 * a3 - 580];
  v90 = vld1q_dup_f32(v89);
  v91 = &av1_cospi_arr_data[64 * a3 - 612];
  v92 = vld1q_dup_f32(v91);
  v93 = vmlaq_s32(v88, v15, v13);
  v94 = &av1_cospi_arr_data[64 * a3 - 628];
  v95 = vld1q_dup_f32(v94);
  v96 = vmlaq_s32(v10, v95, v63);
  v97 = vmlaq_s32(v10, v95, v69);
  v98 = &av1_cospi_arr_data[64 * a3 - 588];
  v99 = vld1q_dup_f32(v98);
  v539 = vmlsq_s32(v96, v69, v99);
  v100 = &av1_cospi_arr_data[64 * a3 - 596];
  v101 = vld1q_dup_f32(v100);
  v506 = vmlaq_s32(v97, v99, v63);
  v102 = vmlaq_s32(v10, v101, v76);
  v103 = &av1_cospi_arr_data[64 * a3 - 620];
  v104 = vld1q_dup_f32(v103);
  v105 = vmlsq_s32(vmlaq_s32(v10, v101, v55), v76, v104);
  v106 = result[30];
  v107 = vmlaq_s32(v102, v104, v55);
  v108 = &av1_cospi_arr_data[64 * a3 - 604];
  v109 = vld1q_dup_f32(v108);
  v534 = vmlsq_s32(vmlaq_s32(v10, v92, v49), v81, v109);
  v110 = vmlaq_s32(vmlaq_s32(v10, v92, v81), v109, v49);
  v111 = &av1_cospi_arr_data[64 * a3 - 636];
  v112 = vld1q_dup_f32(v111);
  v518 = vmlsq_s32(vmlaq_s32(v10, v90, v527), v106, v112);
  v522 = v110;
  v510 = vmlaq_s32(vmlaq_s32(v10, v90, v106), v112, v527);
  v113 = av1_cospi_arr_data[64 * a3 - 616];
  v114 = vdupq_n_s32(v113);
  LODWORD(v111) = av1_cospi_arr_data[64 * a3 - 600];
  v115 = vdupq_n_s32(v111);
  v528 = vmlsq_s32(vmlaq_s32(v10, v114, v562), v556, v115);
  v116 = vdupq_n_s32(-a3);
  v490 = vshlq_s32(v53, v116);
  v494 = vshlq_s32(v46, v116);
  v563 = vmlaq_s32(vmlaq_s32(v10, v114, v556), v115, v562);
  v117 = vdupq_n_s32(v8 - 1);
  v118 = vminq_s32(vmaxq_s32(vsubq_s32(v494, v490), v9), v117);
  v119 = vshlq_s32(v47, v116);
  v120 = vshlq_s32(v54, v116);
  v121 = vminq_s32(vmaxq_s32(vsubq_s32(v119, v120), v9), v117);
  v122 = vmlaq_s32(vmlaq_s32(v10, vdupq_n_s32(-v113), v118), vdupq_n_s32(-v111), v121);
  v123 = vshlq_s32(v67, v116);
  v124 = vshlq_s32(v60, v116);
  v125 = vshlq_s32(v61, v116);
  v126 = vshlq_s32(v68, v116);
  v127 = vminq_s32(vmaxq_s32(vsubq_s32(v123, v124), v9), v117);
  v128 = vminq_s32(vmaxq_s32(vsubq_s32(v126, v125), v9), v117);
  v129 = vmlsq_s32(vmlaq_s32(v10, v114, v128), v127, v115);
  v497 = vmlsq_s32(vmlaq_s32(v10, v114, v121), v118, v115);
  v130 = vmlaq_s32(vmlaq_s32(v10, v114, v127), v115, v128);
  v131 = av1_cospi_arr_data[64 * a3 - 584];
  v132 = result[4];
  v133 = vdupq_n_s32(v131);
  LODWORD(v111) = av1_cospi_arr_data[64 * a3 - 632];
  v134 = result[28];
  v135 = vdupq_n_s32(v111);
  v514 = vmlsq_s32(vmlaq_s32(v10, v133, v132), v134, v135);
  v557 = vmlaq_s32(vmlaq_s32(v10, v133, v134), v135, v132);
  v136 = vshlq_s32(v500, v116);
  v137 = vshlq_s32(v546, v116);
  v138 = vminq_s32(vmaxq_s32(vsubq_s32(v137, v136), v9), v117);
  v139 = vshlq_s32(v74, v116);
  v140 = vshlq_s32(v80, v116);
  v141 = vminq_s32(vmaxq_s32(vsubq_s32(v139, v140), v9), v117);
  v142 = vmlaq_s32(vmlaq_s32(v10, vdupq_n_s32(-v131), v138), vdupq_n_s32(-v111), v141);
  v143 = vmlaq_s32(v10, v133, v141);
  v144 = vshlq_s32(v503, v116);
  v145 = vshlq_s32(v551, v116);
  v146 = vshlq_s32(v87, v116);
  v147 = vshlq_s32(v93, v116);
  v148 = vminq_s32(vmaxq_s32(vsubq_s32(v144, v145), v9), v117);
  v149 = vminq_s32(vmaxq_s32(vsubq_s32(v147, v146), v9), v117);
  v150 = vmlsq_s32(vmlaq_s32(v10, v133, v149), v148, v135);
  v151 = vmlsq_s32(v143, v138, v135);
  v152 = vmlaq_s32(vmlaq_s32(v10, v133, v148), v135, v149);
  v484 = vaddq_s32(v145, v144);
  v486 = vaddq_s32(v137, v136);
  v153 = vaddq_s32(v124, v123);
  v154 = vaddq_s32(v494, v490);
  v155 = vaddq_s32(v120, v119);
  v156 = vaddq_s32(v126, v125);
  v491 = vaddq_s32(v140, v139);
  v157 = vaddq_s32(v147, v146);
  v158 = av1_cospi_arr_data[64 * a3 - 592];
  v159 = result[8];
  v160 = vdupq_n_s32(v158);
  LODWORD(v111) = av1_cospi_arr_data[64 * a3 - 624];
  v161 = result[24];
  v162 = vdupq_n_s32(v111);
  v552 = vmlsq_s32(vmlaq_s32(v10, v160, v159), v161, v162);
  v547 = vmlaq_s32(vmlaq_s32(v10, v160, v161), v162, v159);
  v488 = vshlq_s32(v539, v116);
  v477 = vshlq_s32(v506, v116);
  v479 = vshlq_s32(v107, v116);
  v481 = vshlq_s32(v105, v116);
  v163 = vminq_s32(vmaxq_s32(vsubq_s32(v488, v481), v9), v117);
  v164 = vminq_s32(vmaxq_s32(vsubq_s32(v477, v479), v9), v117);
  v165 = vdupq_n_s32(-v158);
  v166 = vdupq_n_s32(-v111);
  v167 = vmlaq_s32(vmlaq_s32(v10, v165, v163), v166, v164);
  v540 = vmlsq_s32(vmlaq_s32(v10, v160, v164), v163, v162);
  v168 = vshlq_s32(v518, v116);
  v169 = vshlq_s32(v534, v116);
  v473 = vshlq_s32(v522, v116);
  v475 = vshlq_s32(v510, v116);
  v170 = vminq_s32(vmaxq_s32(vsubq_s32(v168, v169), v9), v117);
  v171 = vminq_s32(vmaxq_s32(vsubq_s32(v475, v473), v9), v117);
  v172 = vmlsq_s32(vmlaq_s32(v10, v160, v171), v170, v162);
  v535 = vmlaq_s32(vmlaq_s32(v10, v160, v170), v162, v171);
  v173 = vminq_s32(vmaxq_s32(v153, v9), v117);
  v174 = vminq_s32(vmaxq_s32(v154, v9), v117);
  v175 = vshlq_s32(v129, v116);
  v176 = vshlq_s32(v122, v116);
  v177 = vminq_s32(vmaxq_s32(vsubq_s32(v174, v173), v9), v117);
  v178 = vminq_s32(vmaxq_s32(vsubq_s32(v176, v175), v9), v117);
  v179 = vmlaq_s32(v10, v177, v165);
  v180 = vmlaq_s32(v10, v178, v165);
  v501 = vminq_s32(vmaxq_s32(v155, v9), v117);
  v504 = vminq_s32(vmaxq_s32(v156, v9), v117);
  v495 = vshlq_s32(v497, v116);
  v498 = vshlq_s32(v130, v116);
  v181 = vminq_s32(vmaxq_s32(vsubq_s32(v501, v504), v9), v117);
  v182 = vminq_s32(vmaxq_s32(vsubq_s32(v495, v498), v9), v117);
  v183 = vmlaq_s32(v179, v181, v166);
  v184 = vmlaq_s32(v180, v182, v166);
  v523 = vmlaq_s32(vmlsq_s32(v10, v162, v178), v182, v160);
  v519 = vmlaq_s32(vmlsq_s32(v10, v162, v177), v181, v160);
  v185 = vminq_s32(vmaxq_s32(v484, v9), v117);
  v186 = vminq_s32(vmaxq_s32(v486, v9), v117);
  v187 = vminq_s32(vmaxq_s32(vsubq_s32(v185, v186), v9), v117);
  v188 = vshlq_s32(v150, v116);
  v189 = vshlq_s32(v142, v116);
  v190 = vminq_s32(vmaxq_s32(vsubq_s32(v188, v189), v9), v117);
  v485 = vminq_s32(vmaxq_s32(v491, v9), v117);
  v487 = vminq_s32(vmaxq_s32(v157, v9), v117);
  v483 = vshlq_s32(v151, v116);
  v191 = vshlq_s32(v152, v116);
  v192 = vminq_s32(vmaxq_s32(vsubq_s32(v487, v485), v9), v117);
  v193 = vminq_s32(vmaxq_s32(vsubq_s32(v191, v483), v9), v117);
  v194 = vmlaq_s32(vmlsq_s32(v10, v162, v190), v193, v160);
  v195 = vmlaq_s32(vmlsq_s32(v10, v162, v187), v192, v160);
  v507 = vmlaq_s32(vmlaq_s32(v10, v190, v160), v193, v162);
  v511 = vmlaq_s32(vmlaq_s32(v10, v187, v160), v192, v162);
  v196 = vaddq_s32(v169, v168);
  v197 = vaddq_s32(v488, v481);
  v489 = vaddq_s32(v479, v477);
  v492 = vaddq_s32(v475, v473);
  v198 = vaddq_s32(v186, v185);
  v199 = vaddq_s32(v189, v188);
  v200 = vaddq_s32(v174, v173);
  v201 = vaddq_s32(v176, v175);
  v202 = vshlq_s32(v514, v116);
  v203 = vshlq_s32(v528, v116);
  v204 = &av1_cospi_arr_data[64 * a3 - 608];
  v205 = vld1q_dup_f32(v204);
  v206 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v202, v203), v9), v117), v205);
  v529 = vsubq_s32(v10, v206);
  v515 = vaddq_s32(v206, v10);
  v478 = vminq_s32(vmaxq_s32(v196, v9), v117);
  v207 = vminq_s32(vmaxq_s32(v197, v9), v117);
  v208 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v478, v207), v9), v117), v205);
  v480 = vaddq_s32(v208, v10);
  v482 = vsubq_s32(v10, v208);
  v209 = vshlq_s32(v172, v116);
  v210 = vshlq_s32(v167, v116);
  v211 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v209, v210), v9), v117), v205);
  v474 = vaddq_s32(v211, v10);
  v476 = vsubq_s32(v10, v211);
  v472 = vminq_s32(vmaxq_s32(v198, v9), v117);
  v212 = vminq_s32(vmaxq_s32(v200, v9), v117);
  v213 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v472, v212), v9), v117), v205);
  v470 = vaddq_s32(v213, v10);
  v471 = vsubq_s32(v10, v213);
  v214 = vminq_s32(vmaxq_s32(v199, v9), v117);
  v215 = vminq_s32(vmaxq_s32(v201, v9), v117);
  v216 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v214, v215), v9), v117), v205);
  v468 = vaddq_s32(v216, v10);
  v469 = vsubq_s32(v10, v216);
  v217 = vshlq_s32(v194, v116);
  v218 = vshlq_s32(v184, v116);
  v219 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v217, v218), v9), v117), v205);
  v466 = vaddq_s32(v219, v10);
  v467 = vsubq_s32(v10, v219);
  v220 = vshlq_s32(v195, v116);
  v221 = vshlq_s32(v183, v116);
  v222 = vmulq_s32(vminq_s32(vmaxq_s32(vsubq_s32(v220, v221), v9), v117), v205);
  v464 = vaddq_s32(v222, v10);
  v465 = vsubq_s32(v10, v222);
  v223 = vmlaq_s32(v10, v205, *result);
  v224 = vmulq_s32(v205, result[16]);
  v225 = vaddq_s32(v223, v224);
  v226 = vsubq_s32(v223, v224);
  v227 = vaddq_s32(v203, v202);
  v228 = vshlq_s32(v563, v116);
  v229 = vshlq_s32(v557, v116);
  v230 = vaddq_s32(v229, v228);
  v231 = vsubq_s32(v229, v228);
  v232 = vaddq_s32(v191, v483);
  v233 = vshlq_s32(v225, v116);
  v234 = vshlq_s32(v547, v116);
  v235 = vaddq_s32(v234, v233);
  v236 = vsubq_s32(v233, v234);
  v237 = vshlq_s32(v226, v116);
  v238 = vshlq_s32(v552, v116);
  v239 = vaddq_s32(v238, v237);
  v240 = vsubq_s32(v237, v238);
  v241 = vmulq_s32(vminq_s32(vmaxq_s32(v231, v9), v117), v205);
  v242 = vaddq_s32(v529, v241);
  v243 = vaddq_s32(v207, v478);
  v244 = vaddq_s32(v210, v209);
  v245 = vminq_s32(vmaxq_s32(v489, v9), v117);
  v246 = vminq_s32(vmaxq_s32(v492, v9), v117);
  v247 = vaddq_s32(v246, v245);
  v248 = vsubq_s32(v246, v245);
  v249 = vshlq_s32(v540, v116);
  v250 = vshlq_s32(v535, v116);
  v251 = vaddq_s32(v250, v249);
  v252 = vsubq_s32(v250, v249);
  v253 = vminq_s32(vmaxq_s32(v230, v9), v117);
  v254 = vminq_s32(vmaxq_s32(v235, v9), v117);
  v255 = vaddq_s32(v254, v253);
  v256 = vsubq_s32(v254, v253);
  v257 = vminq_s32(vmaxq_s32(v239, v9), v117);
  v258 = vshlq_s32(vaddq_s32(v515, v241), v116);
  v259 = vaddq_s32(v258, v257);
  v260 = vsubq_s32(v257, v258);
  v261 = vminq_s32(vmaxq_s32(v240, v9), v117);
  v262 = vshlq_s32(v242, v116);
  v263 = vaddq_s32(v262, v261);
  v264 = vsubq_s32(v261, v262);
  v265 = vminq_s32(vmaxq_s32(v227, v9), v117);
  v266 = vminq_s32(vmaxq_s32(v236, v9), v117);
  v267 = vaddq_s32(v266, v265);
  v268 = vsubq_s32(v266, v265);
  v269 = vmulq_s32(vminq_s32(vmaxq_s32(v248, v9), v117), v205);
  v270 = vaddq_s32(v482, v269);
  v271 = vaddq_s32(v480, v269);
  v272 = vmulq_s32(vminq_s32(vmaxq_s32(v252, v9), v117), v205);
  v273 = vaddq_s32(v476, v272);
  v558 = vaddq_s32(v215, v214);
  v564 = vaddq_s32(v212, v472);
  v553 = vaddq_s32(v218, v217);
  v541 = vaddq_s32(v221, v220);
  v274 = vminq_s32(vmaxq_s32(vaddq_s32(v504, v501), v9), v117);
  v275 = vminq_s32(vmaxq_s32(vaddq_s32(v487, v485), v9), v117);
  v276 = vaddq_s32(v275, v274);
  v277 = vsubq_s32(v275, v274);
  v278 = vminq_s32(vmaxq_s32(vaddq_s32(v498, v495), v9), v117);
  v279 = vminq_s32(vmaxq_s32(v232, v9), v117);
  v280 = vaddq_s32(v279, v278);
  v281 = vsubq_s32(v279, v278);
  v282 = vshlq_s32(v523, v116);
  v283 = vshlq_s32(v507, v116);
  v284 = vaddq_s32(v283, v282);
  v285 = vsubq_s32(v283, v282);
  v286 = vshlq_s32(v519, v116);
  v287 = vshlq_s32(v511, v116);
  v288 = vaddq_s32(v287, v286);
  v289 = vsubq_s32(v287, v286);
  v290 = vminq_s32(vmaxq_s32(v247, v9), v117);
  v291 = vminq_s32(vmaxq_s32(v255, v9), v117);
  v292 = vaddq_s32(v291, v290);
  v548 = vsubq_s32(v291, v290);
  v293 = vminq_s32(vmaxq_s32(v251, v9), v117);
  v294 = vminq_s32(vmaxq_s32(v259, v9), v117);
  v295 = vaddq_s32(v294, v293);
  v536 = vsubq_s32(v294, v293);
  v296 = vminq_s32(vmaxq_s32(v263, v9), v117);
  v297 = vshlq_s32(vaddq_s32(v474, v272), v116);
  v298 = vaddq_s32(v297, v296);
  v530 = vsubq_s32(v296, v297);
  v299 = vminq_s32(vmaxq_s32(v267, v9), v117);
  v300 = vshlq_s32(v271, v116);
  v301 = vaddq_s32(v300, v299);
  v302 = vsubq_s32(v299, v300);
  v303 = vminq_s32(vmaxq_s32(v268, v9), v117);
  v304 = vshlq_s32(v270, v116);
  v305 = vaddq_s32(v304, v303);
  v306 = vsubq_s32(v303, v304);
  v307 = vminq_s32(vmaxq_s32(v264, v9), v117);
  v308 = vshlq_s32(v273, v116);
  v309 = vaddq_s32(v308, v307);
  v310 = vsubq_s32(v307, v308);
  v311 = vminq_s32(vmaxq_s32(v244, v9), v117);
  v312 = vminq_s32(vmaxq_s32(v260, v9), v117);
  v313 = vaddq_s32(v312, v311);
  v314 = vsubq_s32(v312, v311);
  v315 = vminq_s32(vmaxq_s32(v243, v9), v117);
  v316 = vminq_s32(vmaxq_s32(v256, v9), v117);
  v317 = vaddq_s32(v316, v315);
  v318 = vsubq_s32(v316, v315);
  v319 = vminq_s32(vmaxq_s32(v281, v9), v117);
  v320 = vmulq_s32(vminq_s32(vmaxq_s32(v289, v9), v117), v205);
  v321 = vmulq_s32(vminq_s32(vmaxq_s32(v285, v9), v117), v205);
  v322 = vmulq_s32(v319, v205);
  v323 = vmulq_s32(vminq_s32(vmaxq_s32(v277, v9), v117), v205);
  v324 = vaddq_s32(v468, v322);
  v325 = vaddq_s32(v466, v321);
  v326 = vaddq_s32(v464, v320);
  v327 = vshlq_s32(vaddq_s32(v465, v320), v116);
  v328 = vshlq_s32(vaddq_s32(v467, v321), v116);
  v329 = vshlq_s32(vaddq_s32(v469, v322), v116);
  v330 = vshlq_s32(vaddq_s32(v471, v323), v116);
  v331 = vshlq_s32(vaddq_s32(v470, v323), v116);
  v332 = vshlq_s32(v324, v116);
  v333 = vshlq_s32(v325, v116);
  v334 = vshlq_s32(v326, v116);
  v335 = vminq_s32(vmaxq_s32(v276, v9), v117);
  v336 = vminq_s32(vmaxq_s32(v292, v9), v117);
  v337 = vaddq_s32(v336, v335);
  v338 = vsubq_s32(v336, v335);
  v339 = vminq_s32(vmaxq_s32(v280, v9), v117);
  v340 = vminq_s32(vmaxq_s32(v295, v9), v117);
  v341 = vaddq_s32(v340, v339);
  v342 = vsubq_s32(v340, v339);
  v343 = vminq_s32(vmaxq_s32(v284, v9), v117);
  v344 = vminq_s32(vmaxq_s32(v298, v9), v117);
  v345 = vaddq_s32(v344, v343);
  v346 = vsubq_s32(v344, v343);
  v347 = vminq_s32(vmaxq_s32(v288, v9), v117);
  v348 = vminq_s32(vmaxq_s32(v301, v9), v117);
  v349 = vaddq_s32(v348, v347);
  v350 = vsubq_s32(v348, v347);
  v351 = vminq_s32(vmaxq_s32(v305, v9), v117);
  v352 = vaddq_s32(v334, v351);
  v353 = vsubq_s32(v351, v334);
  v354 = vminq_s32(vmaxq_s32(v309, v9), v117);
  v355 = vaddq_s32(v333, v354);
  v356 = vsubq_s32(v354, v333);
  v357 = vminq_s32(vmaxq_s32(v313, v9), v117);
  v358 = vaddq_s32(v332, v357);
  v359 = vsubq_s32(v357, v332);
  v360 = vminq_s32(vmaxq_s32(v317, v9), v117);
  v520 = vaddq_s32(v331, v360);
  v524 = v356;
  v361 = vminq_s32(vmaxq_s32(v318, v9), v117);
  v362 = vaddq_s32(v330, v361);
  v512 = vsubq_s32(v361, v330);
  v516 = vsubq_s32(v360, v331);
  v363 = vminq_s32(vmaxq_s32(v314, v9), v117);
  v364 = vaddq_s32(v329, v363);
  v365 = vsubq_s32(v363, v329);
  v366 = vminq_s32(vmaxq_s32(v310, v9), v117);
  v505 = vaddq_s32(v328, v366);
  v508 = v365;
  v367 = vminq_s32(vmaxq_s32(v306, v9), v117);
  v499 = vaddq_s32(v327, v367);
  v502 = vsubq_s32(v366, v328);
  v368 = vsubq_s32(v367, v327);
  v369 = vminq_s32(vmaxq_s32(v541, v9), v117);
  v370 = vminq_s32(vmaxq_s32(v302, v9), v117);
  v542 = vaddq_s32(v370, v369);
  v493 = vsubq_s32(v370, v369);
  v496 = v368;
  v371 = vminq_s32(vmaxq_s32(v553, v9), v117);
  v372 = vminq_s32(vmaxq_s32(v530, v9), v117);
  v373 = vaddq_s32(v372, v371);
  v531 = vsubq_s32(v372, v371);
  v374 = vminq_s32(vmaxq_s32(v558, v9), v117);
  v375 = vminq_s32(vmaxq_s32(v536, v9), v117);
  v554 = v373;
  v559 = vaddq_s32(v375, v374);
  v376 = vsubq_s32(v375, v374);
  v377 = vminq_s32(vmaxq_s32(v564, v9), v117);
  v378 = vminq_s32(vmaxq_s32(v548, v9), v117);
  v379 = vmaxq_s32(v338, v9);
  v380 = vmaxq_s32(v341, v9);
  v381 = vmaxq_s32(v342, v9);
  v382 = vmaxq_s32(v345, v9);
  v383 = vmaxq_s32(v346, v9);
  v384 = vmaxq_s32(v349, v9);
  v385 = vmaxq_s32(v350, v9);
  v386 = vmaxq_s32(v352, v9);
  v387 = vmaxq_s32(v353, v9);
  v565 = vmaxq_s32(v355, v9);
  v388 = vmaxq_s32(v524, v9);
  v389 = vmaxq_s32(v358, v9);
  v390 = vmaxq_s32(v359, v9);
  v391 = vmaxq_s32(v520, v9);
  v392 = vmaxq_s32(v516, v9);
  v393 = vmaxq_s32(v362, v9);
  v394 = vmaxq_s32(v512, v9);
  v395 = vmaxq_s32(v364, v9);
  v396 = vmaxq_s32(v508, v9);
  v549 = vmaxq_s32(v505, v9);
  v397 = vmaxq_s32(v502, v9);
  v398 = vmaxq_s32(v542, v9);
  v399 = vmaxq_s32(v493, v9);
  v400 = vmaxq_s32(v554, v9);
  v401 = vmaxq_s32(v531, v9);
  v560 = vmaxq_s32(v559, v9);
  v555 = vmaxq_s32(v376, v9);
  v537 = vmaxq_s32(v499, v9);
  v543 = vmaxq_s32(vaddq_s32(v378, v377), v9);
  v525 = vmaxq_s32(v496, v9);
  v532 = vmaxq_s32(vsubq_s32(v378, v377), v9);
  v402 = vminq_s32(vmaxq_s32(v337, v9), v117);
  v403 = vminq_s32(v379, v117);
  v404 = vminq_s32(v380, v117);
  v405 = vminq_s32(v381, v117);
  v406 = vminq_s32(v382, v117);
  v407 = vminq_s32(v383, v117);
  v408 = vminq_s32(v384, v117);
  v409 = vminq_s32(v385, v117);
  v410 = vminq_s32(v386, v117);
  v411 = vminq_s32(v387, v117);
  v412 = vminq_s32(v565, v117);
  v413 = vminq_s32(v388, v117);
  v414 = vminq_s32(v389, v117);
  v415 = vminq_s32(v390, v117);
  v416 = vminq_s32(v391, v117);
  v417 = vminq_s32(v392, v117);
  v418 = vminq_s32(v393, v117);
  v419 = vminq_s32(v394, v117);
  v420 = vminq_s32(v395, v117);
  v566 = vminq_s32(v396, v117);
  v421 = vminq_s32(v549, v117);
  v422 = vminq_s32(v397, v117);
  v423 = vminq_s32(v537, v117);
  v424 = vminq_s32(v525, v117);
  v425 = vminq_s32(v398, v117);
  v426 = vminq_s32(v399, v117);
  v427 = vminq_s32(v400, v117);
  v428 = vminq_s32(v401, v117);
  v429 = vminq_s32(v560, v117);
  v430 = vminq_s32(v555, v117);
  v431 = vminq_s32(v543, v117);
  v432 = vminq_s32(v532, v117);
  v544 = v402;
  *a2 = v402;
  a2[1] = v404;
  v561 = v403;
  a2[30] = v405;
  a2[31] = v403;
  a2[2] = v406;
  a2[3] = v408;
  a2[28] = v409;
  a2[29] = v407;
  a2[4] = v410;
  a2[5] = v412;
  a2[26] = v413;
  a2[27] = v411;
  a2[6] = v414;
  a2[7] = v416;
  a2[24] = v417;
  a2[25] = v415;
  a2[8] = v418;
  a2[9] = v420;
  a2[23] = v419;
  a2[21] = v422;
  a2[22] = v566;
  a2[10] = v421;
  a2[11] = v423;
  a2[19] = v426;
  a2[20] = v424;
  a2[12] = v425;
  a2[13] = v427;
  a2[17] = v430;
  a2[18] = v428;
  a2[14] = v429;
  a2[15] = v431;
  a2[16] = v432;
  if (!a4)
  {
    v433 = v410;
    v434 = v407;
    v435 = v411;
    v436 = v417;
    v437 = vdupq_n_s32(-a6);
    v438 = vrshlq_s32(v544, v437);
    v509 = vrshlq_s32(v404, v437);
    v439 = vrshlq_s32(v406, v437);
    v440 = vrshlq_s32(v408, v437);
    v441 = vrshlq_s32(v433, v437);
    v442 = vrshlq_s32(v412, v437);
    v443 = vrshlq_s32(v414, v437);
    v444 = vrshlq_s32(v416, v437);
    v445 = vrshlq_s32(v418, v437);
    v446 = vrshlq_s32(v420, v437);
    v447 = vrshlq_s32(v421, v437);
    v448 = vrshlq_s32(v423, v437);
    v449 = vrshlq_s32(v425, v437);
    v450 = vrshlq_s32(v427, v437);
    v451 = vrshlq_s32(v429, v437);
    v452 = vrshlq_s32(v431, v437);
    v453 = vrshlq_s32(v432, v437);
    v454 = vrshlq_s32(v430, v437);
    v455 = vrshlq_s32(v428, v437);
    v456 = vrshlq_s32(v426, v437);
    v457 = vrshlq_s32(v424, v437);
    v458 = vrshlq_s32(v422, v437);
    v513 = vrshlq_s32(v566, v437);
    v517 = vrshlq_s32(v419, v437);
    v521 = vrshlq_s32(v436, v437);
    v526 = vrshlq_s32(v415, v437);
    v533 = vrshlq_s32(v413, v437);
    v538 = vrshlq_s32(v435, v437);
    v545 = vrshlq_s32(v409, v437);
    v550 = vrshlq_s32(v434, v437);
    v567 = vrshlq_s32(v405, v437);
    v459 = vrshlq_s32(v561, v437);
    if (a5 <= 10)
    {
      v460 = 10;
    }

    else
    {
      v460 = a5;
    }

    v461 = 32 << v460;
    v462 = vdupq_n_s32(-v461);
    v463 = vdupq_n_s32(v461 - 1);
    *a2 = vminq_s32(vmaxq_s32(v438, v462), v463);
    a2[1] = vminq_s32(vmaxq_s32(v509, v462), v463);
    a2[2] = vminq_s32(vmaxq_s32(v439, v462), v463);
    a2[3] = vminq_s32(vmaxq_s32(v440, v462), v463);
    a2[4] = vminq_s32(vmaxq_s32(v441, v462), v463);
    a2[5] = vminq_s32(vmaxq_s32(v442, v462), v463);
    a2[6] = vminq_s32(vmaxq_s32(v443, v462), v463);
    a2[7] = vminq_s32(vmaxq_s32(v444, v462), v463);
    a2[8] = vminq_s32(vmaxq_s32(v445, v462), v463);
    a2[9] = vminq_s32(vmaxq_s32(v446, v462), v463);
    a2[10] = vminq_s32(vmaxq_s32(v447, v462), v463);
    a2[11] = vminq_s32(vmaxq_s32(v448, v462), v463);
    a2[12] = vminq_s32(vmaxq_s32(v449, v462), v463);
    a2[13] = vminq_s32(vmaxq_s32(v450, v462), v463);
    a2[14] = vminq_s32(vmaxq_s32(v451, v462), v463);
    a2[15] = vminq_s32(vmaxq_s32(v452, v462), v463);
    a2[16] = vminq_s32(vmaxq_s32(v453, v462), v463);
    a2[17] = vminq_s32(vmaxq_s32(v454, v462), v463);
    a2[18] = vminq_s32(vmaxq_s32(v455, v462), v463);
    a2[19] = vminq_s32(vmaxq_s32(v456, v462), v463);
    a2[20] = vminq_s32(vmaxq_s32(v457, v462), v463);
    a2[21] = vminq_s32(vmaxq_s32(v458, v462), v463);
    a2[22] = vminq_s32(vmaxq_s32(v513, v462), v463);
    a2[23] = vminq_s32(vmaxq_s32(v517, v462), v463);
    a2[24] = vminq_s32(vmaxq_s32(v521, v462), v463);
    a2[25] = vminq_s32(vmaxq_s32(v526, v462), v463);
    a2[26] = vminq_s32(vmaxq_s32(v533, v462), v463);
    a2[27] = vminq_s32(vmaxq_s32(v538, v462), v463);
    a2[28] = vminq_s32(vmaxq_s32(v545, v462), v463);
    a2[29] = vminq_s32(vmaxq_s32(v550, v462), v463);
    a2[30] = vminq_s32(vmaxq_s32(v567, v462), v463);
    a2[31] = vminq_s32(vmaxq_s32(v459, v462), v463);
  }

  return result;
}

int32x4_t iidentity32_neon(int32x4_t *a1, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  result = vshlq_n_s32(*a1, 2uLL);
  *a2 = result;
  v7 = vshlq_n_s32(a1[1], 2uLL);
  a2[1] = v7;
  v8 = vshlq_n_s32(a1[2], 2uLL);
  a2[2] = v8;
  v9 = vshlq_n_s32(a1[3], 2uLL);
  a2[3] = v9;
  v10 = vshlq_n_s32(a1[4], 2uLL);
  a2[4] = v10;
  v11 = vshlq_n_s32(a1[5], 2uLL);
  a2[5] = v11;
  v12 = vshlq_n_s32(a1[6], 2uLL);
  a2[6] = v12;
  v13 = vshlq_n_s32(a1[7], 2uLL);
  a2[7] = v13;
  v14 = vshlq_n_s32(a1[8], 2uLL);
  a2[8] = v14;
  v15 = vshlq_n_s32(a1[9], 2uLL);
  a2[9] = v15;
  v16 = vshlq_n_s32(a1[10], 2uLL);
  a2[10] = v16;
  v17 = vshlq_n_s32(a1[11], 2uLL);
  a2[11] = v17;
  v18 = vshlq_n_s32(a1[12], 2uLL);
  a2[12] = v18;
  v19 = vshlq_n_s32(a1[13], 2uLL);
  a2[13] = v19;
  v20 = vshlq_n_s32(a1[14], 2uLL);
  a2[14] = v20;
  v21 = vshlq_n_s32(a1[15], 2uLL);
  a2[15] = v21;
  v22 = vshlq_n_s32(a1[16], 2uLL);
  a2[16] = v22;
  v23 = vshlq_n_s32(a1[17], 2uLL);
  a2[17] = v23;
  v24 = vshlq_n_s32(a1[18], 2uLL);
  a2[18] = v24;
  v25 = vshlq_n_s32(a1[19], 2uLL);
  a2[19] = v25;
  v26 = vshlq_n_s32(a1[20], 2uLL);
  a2[20] = v26;
  v27 = vshlq_n_s32(a1[21], 2uLL);
  a2[21] = v27;
  v28 = vshlq_n_s32(a1[22], 2uLL);
  a2[22] = v28;
  v29 = vshlq_n_s32(a1[23], 2uLL);
  a2[23] = v29;
  v30 = vshlq_n_s32(a1[24], 2uLL);
  a2[24] = v30;
  v31 = vshlq_n_s32(a1[25], 2uLL);
  a2[25] = v31;
  v32 = vshlq_n_s32(a1[26], 2uLL);
  a2[26] = v32;
  v33 = vshlq_n_s32(a1[27], 2uLL);
  a2[27] = v33;
  v34 = vshlq_n_s32(a1[28], 2uLL);
  a2[28] = v34;
  v35 = vshlq_n_s32(a1[29], 2uLL);
  a2[29] = v35;
  v36 = vshlq_n_s32(a1[30], 2uLL);
  a2[30] = v36;
  v37 = vshlq_n_s32(a1[31], 2uLL);
  a2[31] = v37;
  if (!a4)
  {
    v82 = v16;
    v38 = v15;
    v39 = v14;
    v40 = v13;
    v41 = v12;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v46 = v7;
    v47 = result;
    v48 = vdupq_n_s32(-a6);
    v83 = vrshlq_s32(v47, v48);
    v49 = vrshlq_s32(v46, v48);
    v50 = vrshlq_s32(v45, v48);
    v84 = vrshlq_s32(v44, v48);
    v51 = vrshlq_s32(v43, v48);
    v85 = vrshlq_s32(v42, v48);
    v52 = vrshlq_s32(v41, v48);
    v53 = vrshlq_s32(v40, v48);
    v54 = vrshlq_s32(v39, v48);
    v55 = vrshlq_s32(v38, v48);
    v56 = vrshlq_s32(v82, v48);
    v57 = vrshlq_s32(v17, v48);
    v58 = vrshlq_s32(v18, v48);
    v59 = vrshlq_s32(v19, v48);
    v60 = vrshlq_s32(v20, v48);
    v61 = vrshlq_s32(v21, v48);
    v62 = vrshlq_s32(v22, v48);
    v63 = vrshlq_s32(v23, v48);
    v64 = vrshlq_s32(v24, v48);
    v65 = vrshlq_s32(v25, v48);
    v66 = vrshlq_s32(v26, v48);
    v67 = vrshlq_s32(v27, v48);
    v68 = vrshlq_s32(v28, v48);
    v69 = vrshlq_s32(v29, v48);
    v70 = vrshlq_s32(v30, v48);
    v71 = vrshlq_s32(v31, v48);
    v72 = vrshlq_s32(v32, v48);
    v73 = vrshlq_s32(v33, v48);
    v74 = vrshlq_s32(v34, v48);
    v75 = vrshlq_s32(v35, v48);
    v76 = vrshlq_s32(v36, v48);
    v77 = vrshlq_s32(v37, v48);
    if (a5 <= 10)
    {
      v78 = 10;
    }

    else
    {
      v78 = a5;
    }

    v79 = 32 << v78;
    v80 = vdupq_n_s32(-v79);
    v81 = vdupq_n_s32(v79 - 1);
    *a2 = vminq_s32(vmaxq_s32(v83, v80), v81);
    a2[1] = vminq_s32(vmaxq_s32(v49, v80), v81);
    a2[2] = vminq_s32(vmaxq_s32(v50, v80), v81);
    a2[3] = vminq_s32(vmaxq_s32(v84, v80), v81);
    a2[4] = vminq_s32(vmaxq_s32(v51, v80), v81);
    a2[5] = vminq_s32(vmaxq_s32(v85, v80), v81);
    a2[6] = vminq_s32(vmaxq_s32(v52, v80), v81);
    a2[7] = vminq_s32(vmaxq_s32(v53, v80), v81);
    a2[8] = vminq_s32(vmaxq_s32(v54, v80), v81);
    a2[9] = vminq_s32(vmaxq_s32(v55, v80), v81);
    a2[10] = vminq_s32(vmaxq_s32(v56, v80), v81);
    a2[11] = vminq_s32(vmaxq_s32(v57, v80), v81);
    a2[12] = vminq_s32(vmaxq_s32(v58, v80), v81);
    a2[13] = vminq_s32(vmaxq_s32(v59, v80), v81);
    a2[14] = vminq_s32(vmaxq_s32(v60, v80), v81);
    a2[15] = vminq_s32(vmaxq_s32(v61, v80), v81);
    a2[16] = vminq_s32(vmaxq_s32(v62, v80), v81);
    a2[17] = vminq_s32(vmaxq_s32(v63, v80), v81);
    a2[18] = vminq_s32(vmaxq_s32(v64, v80), v81);
    a2[19] = vminq_s32(vmaxq_s32(v65, v80), v81);
    a2[20] = vminq_s32(vmaxq_s32(v66, v80), v81);
    a2[21] = vminq_s32(vmaxq_s32(v67, v80), v81);
    a2[22] = vminq_s32(vmaxq_s32(v68, v80), v81);
    a2[23] = vminq_s32(vmaxq_s32(v69, v80), v81);
    a2[24] = vminq_s32(vmaxq_s32(v70, v80), v81);
    a2[25] = vminq_s32(vmaxq_s32(v71, v80), v81);
    a2[26] = vminq_s32(vmaxq_s32(v72, v80), v81);
    a2[27] = vminq_s32(vmaxq_s32(v73, v80), v81);
    a2[28] = vminq_s32(vmaxq_s32(v74, v80), v81);
    a2[29] = vminq_s32(vmaxq_s32(v75, v80), v81);
    result = vminq_s32(vmaxq_s32(v77, v80), v81);
    a2[30] = vminq_s32(vmaxq_s32(v76, v80), v81);
    a2[31] = result;
  }

  return result;
}

int32x4_t idct64x64_low1_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
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

  v9 = &av1_cospi_arr_data[64 * a3 - 608];
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

void idct64x64_low8_neon(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v485 = *MEMORY[0x277D85DE8];
  v8 = &av1_cospi_arr_data[64 * a3 - 639];
  v9 = vld1q_dup_f32(v8);
  v10 = a1[1];
  v11 = vmlaq_s32(v7, v9, v10);
  v12 = &av1_cospi_arr_data[64 * a3 - 577];
  v13 = vld1q_dup_f32(v12);
  v14 = vshlq_s32(v11, v6);
  v15 = vshlq_s32(vmlaq_s32(v7, v13, v10), v6);
  LODWORD(v12) = av1_cospi_arr_data[64 * a3 - 584];
  v17 = a1[6];
  v16 = a1[7];
  v18 = vshlq_s32(vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 583]), v16), v6);
  v19 = &av1_cospi_arr_data[64 * a3 - 633];
  v20 = vld1q_dup_f32(v19);
  v21 = vshlq_s32(vmlaq_s32(v7, v20, v16), v6);
  v22 = &av1_cospi_arr_data[64 * a3 - 635];
  v23 = vld1q_dup_f32(v22);
  v25 = a1[4];
  v24 = a1[5];
  v26 = vmlaq_s32(v7, v23, v24);
  v27 = &av1_cospi_arr_data[64 * a3 - 581];
  v28 = vld1q_dup_f32(v27);
  v29 = vshlq_s32(v26, v6);
  v30 = vshlq_s32(vmlaq_s32(v7, v28, v24), v6);
  v31 = a1[2];
  v32 = a1[3];
  v33 = vshlq_s32(vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 579]), v32), v6);
  v34 = &av1_cospi_arr_data[64 * a3 - 637];
  v35 = vld1q_dup_f32(v34);
  v36 = vshlq_s32(vmlaq_s32(v7, v35, v32), v6);
  v37 = &av1_cospi_arr_data[64 * a3 - 638];
  v38 = vld1q_dup_f32(v37);
  v39 = vshlq_s32(vmlaq_s32(v7, v38, v31), v6);
  v40 = &av1_cospi_arr_data[64 * a3 - 578];
  v41 = vld1q_dup_f32(v40);
  v42 = vmlaq_s32(v7, vdupq_n_s32(-av1_cospi_arr_data[64 * a3 - 582]), v17);
  v43 = &av1_cospi_arr_data[64 * a3 - 634];
  v44 = vld1q_dup_f32(v43);
  v45 = vmlaq_s32(v7, v44, v17);
  v46 = &av1_cospi_arr_data[64 * a3 - 636];
  v47 = vld1q_dup_f32(v46);
  v419 = vmlaq_s32(v7, v47, v25);
  v48 = &av1_cospi_arr_data[64 * a3 - 580];
  v49 = vld1q_dup_f32(v48);
  v423 = vmlaq_s32(v7, v49, v25);
  v50 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v15, v47), v49, v14), v6);
  v51 = v15;
  v52 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v47, v14), v49, v15), v6);
  LODWORD(v48) = av1_cospi_arr_data[64 * a3 - 612];
  v53 = av1_cospi_arr_data[64 * a3 - 604];
  v54 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v18, vdupq_n_s32(v53)), vdupq_n_s32(v48), v21), v6);
  v55 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, vdupq_n_s32(-v53), v21), vdupq_n_s32(-v48), v18), v6);
  v56 = &av1_cospi_arr_data[64 * a3 - 596];
  v57 = vld1q_dup_f32(v56);
  v58 = &av1_cospi_arr_data[64 * a3 - 620];
  v59 = vld1q_dup_f32(v58);
  v429 = v30;
  v435 = v29;
  v60 = vmlaq_s32(vmlsq_s32(v7, v30, v59), v57, v29);
  v61 = vmlaq_s32(vmlaq_s32(v7, v59, v29), v57, v30);
  LODWORD(v58) = av1_cospi_arr_data[64 * a3 - 628];
  v62 = av1_cospi_arr_data[64 * a3 - 588];
  v63 = vmlaq_s32(vmlaq_s32(v7, vdupq_n_s32(-v58), v33), vdupq_n_s32(-v62), v36);
  v64 = v36;
  v65 = vmlsq_s32(vmlaq_s32(v7, vdupq_n_s32(v58), v36), v33, vdupq_n_s32(v62));
  v66 = v33;
  LODWORD(v58) = av1_cospi_arr_data[64 * a3 - 632];
  v67 = vdupq_n_s32(v58);
  v413 = vshlq_s32(vmlaq_s32(v7, v41, v31), v6);
  v415 = v39;
  v68 = vmlaq_s32(v7, v67, v39);
  v69 = v39;
  v70 = &av1_cospi_arr_data[64 * a3 - 608];
  v71 = vld1q_dup_f32(v70);
  v422 = v71;
  v426 = vmlaq_s32(v7, v71, *a1);
  v72 = vdupq_n_s32(-v58);
  v73 = v21;
  v452 = v21;
  v454 = v14;
  v74 = vmlaq_s32(v7, v72, v21);
  v75 = v54;
  v438 = v50;
  v440 = v54;
  v76 = vmlaq_s32(v7, v72, v54);
  v77 = vdupq_n_s32(-v12);
  v476 = vmlaq_s32(v74, v77, v18);
  v446 = v55;
  v448 = v52;
  v78 = vmlaq_s32(v76, v77, v55);
  v394 = v18;
  v397 = v51;
  v79 = vdupq_n_s32(v12);
  v409 = vmlaq_s32(v68, v79, v413);
  v411 = vmlaq_s32(vmlsq_s32(v7, v413, v67), v79, v69);
  v80 = vmlaq_s32(vmlsq_s32(v7, v50, v67), v79, v52);
  v81 = vmlaq_s32(vmlaq_s32(v7, v67, v52), v79, v50);
  v82 = vmlaq_s32(vmlsq_s32(v7, v51, v67), v79, v14);
  v83 = vmlaq_s32(vmlaq_s32(v7, v67, v14), v79, v51);
  v84 = v51;
  v85 = vmlaq_s32(vmlsq_s32(v7, v18, v67), v79, v73);
  v86 = vmlaq_s32(vmlsq_s32(v7, v55, v67), v79, v75);
  v87 = vshlq_s32(v42, v6);
  v88 = vshlq_s32(v63, v6);
  LODWORD(v12) = av1_cospi_arr_data[64 * a3 - 616];
  v89 = vdupq_n_s32(-v12);
  v90 = vmlaq_s32(v7, v89, v87);
  v91 = v87;
  v432 = v87;
  v92 = vmlaq_s32(v7, v89, v66);
  v93 = vmlaq_s32(v7, v89, v88);
  v94 = v88;
  v443 = vshlq_s32(v45, v6);
  LODWORD(v58) = av1_cospi_arr_data[64 * a3 - 600];
  v95 = vdupq_n_s32(-v58);
  v96 = vmlaq_s32(v90, v95, v443);
  v403 = vshlq_s32(v65, v6);
  v405 = v64;
  v97 = vmlaq_s32(v92, v95, v64);
  v98 = vmlaq_s32(v93, v95, v403);
  v99 = vshlq_s32(v60, v6);
  v100 = vdupq_n_s32(v12);
  v101 = vshlq_s32(v61, v6);
  v102 = vmlaq_s32(v7, v100, v443);
  v103 = vmlaq_s32(v7, v100, v101);
  v401 = v101;
  v104 = vmlaq_s32(v7, v100, v99);
  v450 = v99;
  v105 = vmlaq_s32(v7, v100, v435);
  v106 = vmlaq_s32(v7, v100, v429);
  v107 = vmlaq_s32(v7, v100, v64);
  v108 = vmlaq_s32(v7, v100, v403);
  v109 = vdupq_n_s32(v58);
  v110 = vmlsq_s32(v102, v91, v109);
  v111 = vmlsq_s32(v103, v99, v109);
  v112 = vmlaq_s32(v104, v109, v101);
  v113 = vmlsq_s32(v105, v429, v109);
  v379 = vmlaq_s32(v106, v109, v435);
  v114 = vmlsq_s32(v107, v66, v109);
  v368 = v88;
  v370 = v66;
  if (a4)
  {
    v115 = 6;
  }

  else
  {
    v115 = 8;
  }

  v116 = v115 + a5;
  v117 = 1 << (v116 - 1);
  if (v116 <= 15)
  {
    v117 = 0x8000;
  }

  v118 = vdupq_n_s32(-v117);
  v119 = vmlsq_s32(v108, v94, v109);
  v120 = v94;
  v121 = vdupq_n_s32(v117 - 1);
  v122 = vminq_s32(vmaxq_s32(vsubq_s32(v84, v18), v118), v121);
  v123 = av1_cospi_arr_data[64 * a3 - 624];
  v124 = vdupq_n_s32(v123);
  v125 = av1_cospi_arr_data[64 * a3 - 592];
  v126 = vdupq_n_s32(v125);
  v127 = vminq_s32(vmaxq_s32(vsubq_s32(v438, v446), v118), v121);
  v128 = vmlsq_s32(v7, v124, v127);
  v129 = vmlaq_s32(v7, v127, v126);
  v130 = vminq_s32(vmaxq_s32(vsubq_s32(v448, v440), v118), v121);
  v399 = vmlaq_s32(v128, v130, v126);
  v417 = vmlaq_s32(v129, v130, v124);
  v384 = vshlq_s32(v80, v6);
  v386 = vshlq_s32(v78, v6);
  v131 = vminq_s32(vmaxq_s32(vsubq_s32(v384, v386), v118), v121);
  v132 = vmlsq_s32(v7, v124, v131);
  v133 = vmlaq_s32(v7, v131, v126);
  v361 = vshlq_s32(v81, v6);
  v362 = vshlq_s32(v86, v6);
  v134 = vminq_s32(vmaxq_s32(vsubq_s32(v361, v362), v118), v121);
  v392 = vmlaq_s32(v132, v134, v126);
  v408 = vmlaq_s32(v133, v134, v124);
  v377 = vshlq_s32(v82, v6);
  v382 = vshlq_s32(v476, v6);
  v135 = vminq_s32(vmaxq_s32(vsubq_s32(v377, v382), v118), v121);
  v136 = vmlsq_s32(v7, v124, v135);
  v137 = vmlaq_s32(v7, v135, v126);
  v356 = vshlq_s32(v83, v6);
  v357 = vshlq_s32(v85, v6);
  v138 = vminq_s32(vmaxq_s32(vsubq_s32(v356, v357), v118), v121);
  v390 = vmlaq_s32(v136, v138, v126);
  v407 = vmlaq_s32(v137, v138, v124);
  v139 = vshlq_s32(v113, v6);
  v373 = v139;
  v375 = vshlq_s32(v97, v6);
  v140 = vminq_s32(vmaxq_s32(vsubq_s32(v375, v139), v118), v121);
  v139.i32[0] = v123;
  v141 = vdupq_n_s32(-v125);
  v477 = vmlaq_lane_s32(v7, v140, *&vnegq_s32(v139), 0);
  v142 = vshlq_s32(v96, v6);
  v351 = vshlq_s32(v111, v6);
  v352 = vshlq_s32(v110, v6);
  v364 = vmlaq_s32(v7, v140, v141);
  v366 = vshlq_s32(v98, v6);
  v143 = vdupq_n_s32(-v123);
  v353 = vmlaq_s32(vmlaq_s32(v7, v143, v352), v141, v142);
  v354 = vmlaq_s32(vmlaq_s32(v7, v143, v443), v141, v432);
  v350 = v142;
  v144 = vminq_s32(vmaxq_s32(vsubq_s32(v66, v429), v118), v121);
  v145 = vminq_s32(vmaxq_s32(vsubq_s32(v120, v450), v118), v121);
  v146 = vminq_s32(vmaxq_s32(vsubq_s32(v366, v351), v118), v121);
  v459 = vmlaq_s32(v7, v145, v141);
  v472 = vmlsq_s32(v7, v124, v145);
  v349 = vshlq_s32(v419, v6);
  v420 = vshlq_s32(v423, v6);
  v147 = vshlq_s32(v411, v6);
  v148 = vshlq_s32(v409, v6);
  v149 = vmlsq_s32(v7, v142, v124);
  v150 = vminq_s32(vmaxq_s32(vsubq_s32(v14, v452), v118), v121);
  v424 = vmlaq_s32(vmlaq_s32(v7, v122, v126), v150, v124);
  v388 = vmlaq_s32(vmlsq_s32(v7, v124, v122), v150, v126);
  v151 = vshlq_s32(v112, v6);
  v152 = vshlq_s32(v379, v6);
  v153 = vshlq_s32(v114, v6);
  v154 = vshlq_s32(v119, v6);
  v155 = vminq_s32(vmaxq_s32(vsubq_s32(v64, v435), v118), v121);
  v156 = vminq_s32(vmaxq_s32(vsubq_s32(v403, v401), v118), v121);
  v157 = vminq_s32(vmaxq_s32(vsubq_s32(v154, v151), v118), v121);
  v158 = vminq_s32(vmaxq_s32(vsubq_s32(v153, v152), v118), v121);
  v463 = vmlaq_s32(vmlaq_s32(v7, v144, v141), v155, v143);
  v460 = vmlaq_s32(v459, v156, v143);
  v456 = vmlaq_s32(vmlaq_s32(v7, v146, v141), v157, v143);
  v159 = vmlaq_s32(v364, v158, v143);
  v478 = vmlaq_s32(v477, v158, v126);
  v466 = vmlaq_s32(vmlsq_s32(v7, v124, v146), v157, v126);
  v473 = vmlaq_s32(v472, v156, v126);
  v469 = vmlaq_s32(vmlsq_s32(v7, v124, v144), v155, v126);
  v160 = vmlaq_s32(vmlsq_s32(v7, v147, v124), v126, v148);
  v161 = vmlaq_s32(vmlaq_s32(v7, v124, v148), v126, v147);
  v162 = vmlaq_s32(vmlsq_s32(v7, v413, v124), v126, v415);
  v163 = vmlaq_s32(vmlaq_s32(v7, v124, v415), v126, v413);
  v164 = vmlaq_s32(vmlsq_s32(v7, v432, v124), v126, v443);
  v165 = vmlaq_s32(v149, v126, v352);
  v355 = vaddq_s32(v394, v397);
  v358 = vaddq_s32(v370, v429);
  v359 = vaddq_s32(v446, v438);
  v360 = vaddq_s32(v368, v450);
  v365 = vaddq_s32(v386, v384);
  v380 = vaddq_s32(v366, v351);
  v367 = vaddq_s32(v382, v377);
  v371 = vaddq_s32(v375, v373);
  v369 = vaddq_s32(v405, v435);
  v374 = vaddq_s32(v452, v454);
  v376 = vaddq_s32(v403, v401);
  v378 = vaddq_s32(v440, v448);
  v383 = vaddq_s32(v154, v151);
  v385 = vaddq_s32(v362, v361);
  v395 = vaddq_s32(v153, v152);
  v166 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v420, v124), v126, v349), v6);
  v167 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v124, v349), v126, v420), v6);
  v168 = vmulq_s32(v167, v422);
  v169 = vmulq_s32(v166, v422);
  v170 = vaddq_s32(vsubq_s32(v7, v169), v168);
  v171 = vaddq_s32(vaddq_s32(v169, v7), v168);
  v172 = vmulq_s32(v422, v349);
  v173 = vmulq_s32(v422, v420);
  v174 = vaddq_s32(vsubq_s32(v7, v173), v172);
  v175 = vaddq_s32(vaddq_s32(v173, v7), v172);
  v363 = vaddq_s32(v432, v413);
  v176 = vsubq_s32(v413, v432);
  v410 = vaddq_s32(v443, v415);
  v177 = vsubq_s32(v415, v443);
  v406 = vaddq_s32(v350, v147);
  v178 = v6;
  v179 = vshlq_s32(v160, v6);
  v180 = vshlq_s32(v353, v6);
  v181 = vaddq_s32(v180, v179);
  v182 = vsubq_s32(v179, v180);
  v183 = vshlq_s32(v161, v6);
  v184 = vshlq_s32(v165, v6);
  v185 = vaddq_s32(v184, v183);
  v186 = vsubq_s32(v183, v184);
  v187 = vshlq_s32(v162, v6);
  v188 = vshlq_s32(v354, v6);
  v189 = vaddq_s32(v188, v187);
  v190 = vsubq_s32(v187, v188);
  v191 = vshlq_s32(v163, v6);
  v192 = vshlq_s32(v164, v6);
  v414 = vaddq_s32(v192, v191);
  v416 = v185;
  v193 = vsubq_s32(v191, v192);
  v194 = vshlq_s32(v426, v6);
  v195 = vshlq_s32(v170, v6);
  v196 = vshlq_s32(v171, v6);
  v197 = vshlq_s32(v174, v6);
  v198 = vshlq_s32(v175, v178);
  v199 = vaddq_s32(v194, v349);
  v200 = vsubq_s32(v194, v349);
  v398 = vaddq_s32(v167, v194);
  v201 = vsubq_s32(v194, v167);
  v402 = vaddq_s32(v198, v194);
  v404 = vaddq_s32(v196, v194);
  v441 = vsubq_s32(v194, v198);
  v444 = vsubq_s32(v194, v196);
  v202 = vaddq_s32(v197, v194);
  v203 = vsubq_s32(v194, v197);
  v412 = vaddq_s32(v195, v194);
  v433 = vaddq_s32(v166, v194);
  v436 = vsubq_s32(v194, v195);
  v427 = vaddq_s32(v194, v420);
  v430 = vsubq_s32(v194, v166);
  v421 = vsubq_s32(v194, v420);
  v204 = vminq_s32(vmaxq_s32(v190, v118), v121);
  v205 = vminq_s32(vmaxq_s32(v193, v118), v121);
  v455 = vmlaq_s32(v7, vsubq_s32(v205, v204), v422);
  v206 = vminq_s32(vmaxq_s32(v182, v118), v121);
  v207 = vminq_s32(vmaxq_s32(v186, v118), v121);
  v453 = vmlaq_s32(v7, vsubq_s32(v207, v206), v422);
  v208 = vminq_s32(vmaxq_s32(vsubq_s32(v147, v350), v118), v121);
  v209 = vminq_s32(vmaxq_s32(vsubq_s32(v148, v352), v118), v121);
  v210 = vmulq_s32(vminq_s32(vmaxq_s32(v177, v118), v121), v422);
  v211 = vmulq_s32(vminq_s32(vmaxq_s32(v176, v118), v121), v422);
  v449 = vaddq_s32(vsubq_s32(v7, v211), v210);
  v451 = vmlaq_s32(v7, vsubq_s32(v209, v208), v422);
  v447 = vaddq_s32(v211, vaddq_s32(v7, v210));
  v439 = vmlaq_s32(v7, vaddq_s32(v209, v208), v422);
  v212 = vmlaq_s32(v7, vaddq_s32(v207, v206), v422);
  v213 = vmlaq_s32(v7, vaddq_s32(v205, v204), v422);
  v214 = vminq_s32(vmaxq_s32(v355, v118), v121);
  v215 = vminq_s32(vmaxq_s32(v358, v118), v121);
  v216 = vaddq_s32(v215, v214);
  v217 = vsubq_s32(v214, v215);
  v218 = vminq_s32(vmaxq_s32(v359, v118), v121);
  v219 = vminq_s32(vmaxq_s32(v360, v118), v121);
  v387 = vsubq_s32(v218, v219);
  v484[32] = vminq_s32(vmaxq_s32(v216, v118), v121);
  v484[33] = vminq_s32(vmaxq_s32(vaddq_s32(v219, v218), v118), v121);
  v220 = vminq_s32(vmaxq_s32(v365, v118), v121);
  v221 = vminq_s32(vmaxq_s32(v380, v118), v121);
  v222 = vaddq_s32(v221, v220);
  v381 = vsubq_s32(v220, v221);
  v223 = vminq_s32(vmaxq_s32(v367, v118), v121);
  v224 = vminq_s32(vmaxq_s32(v371, v118), v121);
  v372 = vsubq_s32(v223, v224);
  v484[34] = vminq_s32(vmaxq_s32(v222, v118), v121);
  v484[35] = vminq_s32(vmaxq_s32(vaddq_s32(v224, v223), v118), v121);
  v225 = vshlq_s32(v390, v178);
  v226 = vshlq_s32(v159, v178);
  v227 = vaddq_s32(v226, v225);
  v391 = vsubq_s32(v225, v226);
  v228 = vshlq_s32(v392, v178);
  v229 = vshlq_s32(v456, v178);
  v230 = vsubq_s32(v228, v229);
  v484[36] = vminq_s32(vmaxq_s32(v227, v118), v121);
  v484[37] = vminq_s32(vmaxq_s32(vaddq_s32(v229, v228), v118), v121);
  v231 = vshlq_s32(v399, v178);
  v232 = vshlq_s32(v460, v178);
  v233 = vaddq_s32(v232, v231);
  v457 = v230;
  v461 = vsubq_s32(v231, v232);
  v234 = vshlq_s32(v388, v178);
  v235 = vshlq_s32(v463, v178);
  v464 = vsubq_s32(v234, v235);
  v484[38] = vminq_s32(vmaxq_s32(v233, v118), v121);
  v484[39] = vminq_s32(vmaxq_s32(vaddq_s32(v235, v234), v118), v121);
  v236 = vminq_s32(vmaxq_s32(v369, v118), v121);
  v237 = vminq_s32(vmaxq_s32(v374, v118), v121);
  v238 = vaddq_s32(v237, v236);
  v400 = vsubq_s32(v237, v236);
  v239 = vminq_s32(vmaxq_s32(v376, v118), v121);
  v240 = vminq_s32(vmaxq_s32(v378, v118), v121);
  v393 = vsubq_s32(v240, v239);
  v484[63] = vminq_s32(vmaxq_s32(v238, v118), v121);
  v484[62] = vminq_s32(vmaxq_s32(vaddq_s32(v240, v239), v118), v121);
  v241 = vminq_s32(vmaxq_s32(v383, v118), v121);
  v242 = vminq_s32(vmaxq_s32(v385, v118), v121);
  v243 = vaddq_s32(v242, v241);
  v389 = vsubq_s32(v242, v241);
  v244 = vminq_s32(vmaxq_s32(v395, v118), v121);
  v245 = vminq_s32(vmaxq_s32(vaddq_s32(v357, v356), v118), v121);
  v396 = vsubq_s32(v245, v244);
  v484[61] = vminq_s32(vmaxq_s32(v243, v118), v121);
  v484[60] = vminq_s32(vmaxq_s32(vaddq_s32(v245, v244), v118), v121);
  v246 = vshlq_s32(v407, v178);
  v247 = vshlq_s32(v478, v178);
  v248 = vaddq_s32(v247, v246);
  v249 = vsubq_s32(v246, v247);
  v250 = vshlq_s32(v408, v178);
  v251 = vshlq_s32(v466, v178);
  v252 = vsubq_s32(v250, v251);
  v484[59] = vminq_s32(vmaxq_s32(v248, v118), v121);
  v484[58] = vminq_s32(vmaxq_s32(vaddq_s32(v251, v250), v118), v121);
  v253 = vshlq_s32(v417, v178);
  v254 = vshlq_s32(v473, v178);
  v255 = vaddq_s32(v254, v253);
  v474 = vsubq_s32(v253, v254);
  v479 = v249;
  v256 = vshlq_s32(v424, v178);
  v257 = vshlq_s32(v469, v178);
  v467 = v252;
  v470 = vsubq_s32(v256, v257);
  v484[57] = vminq_s32(vmaxq_s32(v255, v118), v121);
  v484[56] = vminq_s32(vmaxq_s32(vaddq_s32(v257, v256), v118), v121);
  v258 = vminq_s32(vmaxq_s32(v410, v118), v121);
  v259 = vminq_s32(vmaxq_s32(v199, v118), v121);
  v260 = vaddq_s32(v259, v258);
  v261 = vsubq_s32(v259, v258);
  v262 = vminq_s32(vmaxq_s32(vaddq_s32(v352, v148), v118), v121);
  v263 = vminq_s32(vmaxq_s32(v398, v118), v121);
  v484[0] = vminq_s32(vmaxq_s32(v260, v118), v121);
  v484[1] = vminq_s32(vmaxq_s32(vaddq_s32(v263, v262), v118), v121);
  v484[31] = vminq_s32(vmaxq_s32(v261, v118), v121);
  v484[30] = vminq_s32(vmaxq_s32(vsubq_s32(v263, v262), v118), v121);
  v264 = vminq_s32(vmaxq_s32(v416, v118), v121);
  v265 = vminq_s32(vmaxq_s32(v404, v118), v121);
  v266 = vaddq_s32(v265, v264);
  v267 = vsubq_s32(v265, v264);
  v268 = vminq_s32(vmaxq_s32(v414, v118), v121);
  v269 = vminq_s32(vmaxq_s32(v402, v118), v121);
  v484[2] = vminq_s32(vmaxq_s32(v266, v118), v121);
  v484[3] = vminq_s32(vmaxq_s32(vaddq_s32(v269, v268), v118), v121);
  v484[29] = vminq_s32(vmaxq_s32(v267, v118), v121);
  v484[28] = vminq_s32(vmaxq_s32(vsubq_s32(v269, v268), v118), v121);
  v270 = vminq_s32(vmaxq_s32(v202, v118), v121);
  v271 = vshlq_s32(v213, v178);
  v425 = vaddq_s32(v271, v270);
  v418 = vsubq_s32(v270, v271);
  v272 = vminq_s32(vmaxq_s32(v412, v118), v121);
  v273 = vshlq_s32(v212, v178);
  v483 = v118;
  v274 = vmaxq_s32(v181, v118);
  v275 = vmaxq_s32(v189, v118);
  v276 = vmaxq_s32(v201, v118);
  v277 = vmaxq_s32(v444, v118);
  v278 = vmaxq_s32(v441, v118);
  v279 = vmaxq_s32(v203, v118);
  v445 = vmaxq_s32(v436, v118);
  v280 = vmaxq_s32(v433, v118);
  v281 = vmaxq_s32(v430, v118);
  v282 = vmaxq_s32(v427, v118);
  v283 = vmaxq_s32(v421, v118);
  v284 = vmaxq_s32(v217, v118);
  v285 = vmaxq_s32(v387, v118);
  v286 = vmaxq_s32(v381, v118);
  v287 = vmaxq_s32(v372, v118);
  v288 = vmaxq_s32(v391, v118);
  v289 = vmaxq_s32(v457, v118);
  v290 = vmaxq_s32(v461, v118);
  v291 = vmaxq_s32(v464, v118);
  v292 = vmaxq_s32(v400, v118);
  v293 = vmaxq_s32(v393, v118);
  v458 = vmaxq_s32(v389, v118);
  v294 = vmaxq_s32(v396, v118);
  v480 = vmaxq_s32(v479, v118);
  v482 = v121;
  v442 = vmaxq_s32(v467, v118);
  v437 = vmaxq_s32(v474, v118);
  v434 = vmaxq_s32(v470, v118);
  v431 = vmaxq_s32(v425, v118);
  v428 = vmaxq_s32(v418, v118);
  v295 = vmaxq_s32(vaddq_s32(v273, v272), v118);
  v296 = vmaxq_s32(vsubq_s32(v272, v273), v118);
  v465 = vminq_s32(vmaxq_s32(v363, v118), v121);
  v462 = vminq_s32(vmaxq_s32(v406, v118), v121);
  v297 = vminq_s32(v274, v121);
  v298 = vminq_s32(v275, v121);
  v299 = vminq_s32(vmaxq_s32(v200, v118), v121);
  v300 = vminq_s32(v276, v121);
  v301 = vminq_s32(v277, v121);
  v302 = vminq_s32(v278, v121);
  v303 = vminq_s32(v279, v121);
  v304 = vminq_s32(v445, v121);
  v305 = vminq_s32(v280, v121);
  v306 = vminq_s32(v281, v121);
  v307 = vminq_s32(v282, v121);
  v308 = vminq_s32(v283, v121);
  v475 = vminq_s32(v284, v121);
  v309 = vminq_s32(v285, v121);
  v310 = vminq_s32(v286, v121);
  v311 = vminq_s32(v287, v121);
  v468 = vminq_s32(v288, v121);
  v312 = vminq_s32(v289, v121);
  v313 = vminq_s32(v290, v121);
  v314 = vminq_s32(v291, v121);
  v471 = vminq_s32(v292, v121);
  v315 = vminq_s32(v293, v121);
  v316 = vminq_s32(v458, v121);
  v317 = vminq_s32(v294, v121);
  v481 = vminq_s32(v480, v121);
  v318 = vminq_s32(v442, v121);
  v319 = vminq_s32(v437, v121);
  v320 = vminq_s32(v434, v121);
  v484[4] = vminq_s32(v431, v121);
  v484[5] = vminq_s32(v295, v121);
  v484[27] = vminq_s32(v428, v121);
  v484[26] = vminq_s32(v296, v121);
  v321 = vshlq_s32(v439, v178);
  v322 = vshlq_s32(v447, v178);
  v484[6] = vminq_s32(vmaxq_s32(vaddq_s32(v321, v305), v483), v121);
  v484[7] = vminq_s32(vmaxq_s32(vaddq_s32(v322, v307), v483), v121);
  v484[25] = vminq_s32(vmaxq_s32(vsubq_s32(v305, v321), v483), v121);
  v484[24] = vminq_s32(vmaxq_s32(vsubq_s32(v307, v322), v483), v121);
  v323 = vshlq_s32(v449, v178);
  v324 = vaddq_s32(v323, v308);
  v325 = vsubq_s32(v308, v323);
  v326 = vshlq_s32(v451, v178);
  v484[8] = vminq_s32(vmaxq_s32(v324, v483), v121);
  v484[9] = vminq_s32(vmaxq_s32(vaddq_s32(v326, v306), v483), v121);
  v484[23] = vminq_s32(vmaxq_s32(v325, v483), v121);
  v484[22] = vminq_s32(vmaxq_s32(vsubq_s32(v306, v326), v483), v121);
  v327 = vshlq_s32(v453, v178);
  v328 = vshlq_s32(v455, v178);
  v484[10] = vminq_s32(vmaxq_s32(vaddq_s32(v327, v304), v483), v121);
  v484[11] = vminq_s32(vmaxq_s32(vaddq_s32(v328, v303), v483), v121);
  v484[21] = vminq_s32(vmaxq_s32(vsubq_s32(v304, v327), v483), v121);
  v484[20] = vminq_s32(vmaxq_s32(vsubq_s32(v303, v328), v483), v121);
  v484[12] = vminq_s32(vmaxq_s32(vaddq_s32(v302, v298), v483), v121);
  v484[13] = vminq_s32(vmaxq_s32(vaddq_s32(v301, v297), v483), v121);
  v484[19] = vminq_s32(vmaxq_s32(vsubq_s32(v302, v298), v483), v121);
  v484[18] = vminq_s32(vmaxq_s32(vsubq_s32(v301, v297), v483), v121);
  v484[14] = vminq_s32(vmaxq_s32(vaddq_s32(v300, v462), v483), v121);
  v484[15] = vminq_s32(vmaxq_s32(vaddq_s32(v299, v465), v483), v121);
  v484[17] = vminq_s32(vmaxq_s32(vsubq_s32(v300, v462), v483), v121);
  v484[16] = vminq_s32(vmaxq_s32(vsubq_s32(v299, v465), v483), v121);
  v329 = vmlaq_s32(v7, vsubq_s32(v320, v314), v422);
  v330 = vmlaq_s32(v7, vsubq_s32(v319, v313), v422);
  v331 = vmlaq_s32(v7, vsubq_s32(v318, v312), v422);
  v332 = vmlaq_s32(v7, vaddq_s32(v318, v312), v422);
  v333 = vmlaq_s32(v7, vaddq_s32(v319, v313), v422);
  v334 = vmlaq_s32(v7, vaddq_s32(v320, v314), v422);
  v335 = vmlaq_s32(v7, vsubq_s32(v317, v311), v422);
  v336 = vmlaq_s32(v7, vsubq_s32(v316, v310), v422);
  v337 = vmlaq_s32(v7, vsubq_s32(v315, v309), v422);
  v338 = vmulq_s32(v468, v422);
  v339 = vmlaq_s32(v7, vaddq_s32(v315, v309), v422);
  v340 = vsubq_s32(v7, v338);
  v341 = vaddq_s32(v338, v7);
  v342 = vmulq_s32(v471, v422);
  v343 = vmulq_s32(v475, v422);
  v344 = vmlaq_s32(v7, vaddq_s32(v316, v310), v422);
  v345 = vsubq_s32(v7, v343);
  v346 = vaddq_s32(v7, v342);
  v347 = vmlaq_s32(v7, vaddq_s32(v317, v311), v422);
  v348 = vmulq_s32(v481, v422);
  v484[52] = vshlq_s32(vaddq_s32(v341, v348), v178);
  v484[53] = vshlq_s32(v332, v178);
  v484[54] = vshlq_s32(v333, v178);
  v484[55] = vshlq_s32(v334, v178);
  v484[40] = vshlq_s32(v329, v178);
  v484[41] = vshlq_s32(v330, v178);
  v484[42] = vshlq_s32(v331, v178);
  v484[43] = vshlq_s32(vaddq_s32(v340, v348), v178);
  v484[48] = vshlq_s32(vaddq_s32(v343, v346), v178);
  v484[49] = vshlq_s32(v339, v178);
  v484[50] = vshlq_s32(v344, v178);
  v484[51] = vshlq_s32(v347, v178);
  v484[44] = vshlq_s32(v335, v178);
  v484[45] = vshlq_s32(v336, v178);
  v484[46] = vshlq_s32(v337, v178);
  v484[47] = vshlq_s32(vaddq_s32(v345, v342), v178);
  idct64_stage11_neon(v484, a2, a4, a5, a6, &v483, &v482);
}