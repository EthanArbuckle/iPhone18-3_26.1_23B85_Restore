uint64_t sub_277A6C0C4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 64);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  *a5 = v15;
  return v15 - ((v16 * v16) >> 4);
}

uint64_t sub_277A6C15C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 128);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  *a5 = v15;
  return v15 - ((v16 * v16) >> 5);
}

uint64_t sub_277A6C1F4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 256);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  *a5 = v15;
  return v15 - ((v16 * v16) >> 6);
}

uint64_t sub_277A6C28C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 128);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  *a5 = v16;
  return v16 - ((v17 * v17) >> 5);
}

uint64_t sub_277A6C314(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 256);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  *a5 = v16;
  return v16 - ((v17 * v17) >> 6);
}

uint64_t sub_277A6C39C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 512);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  *a5 = v16;
  return v16 - ((v17 * v17) >> 7);
}

uint64_t sub_277A6C424(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 1024);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  *a5 = v16;
  return v16 - ((v17 * v17) >> 8);
}

uint64_t sub_277A6C4AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 256);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  *a5 = v24;
  return v24 - ((v25 * v25) >> 6);
}

uint64_t sub_277A6C56C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 512);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  *a5 = v24;
  return v24 - ((v25 * v25) >> 7);
}

uint64_t sub_277A6C62C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 1024);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  *a5 = v24;
  return v24 - ((v25 * v25) >> 8);
}

uint64_t sub_277A6C6EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 2048);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  *a5 = v24;
  return v24 - ((v25 * v25) >> 9);
}

uint64_t sub_277A6C7AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 4096);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  *a5 = v24;
  return v24 - ((v25 * v25) >> 10);
}

uint64_t sub_277A6C86C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 8;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  *a5 = v29;
  return v29 - ((v30 * v30) >> 8);
}

uint64_t sub_277A6C950(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 16;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  *a5 = v29;
  return v29 - ((v30 * v30) >> 9);
}

uint64_t sub_277A6CA34(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 32;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  *a5 = v29;
  return v29 - ((v30 * v30) >> 10);
}

uint64_t sub_277A6CB18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  *a5 = v29;
  return v29 - ((v30 * v30) >> 11);
}

uint64_t sub_277A6CBFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 16;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  *a5 = v27;
  return v27 - ((v28 * v28) >> 10);
}

uint64_t sub_277A6CCE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 32;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  *a5 = v27;
  return v27 - ((v28 * v28) >> 11);
}

uint64_t sub_277A6CDC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  *a5 = v27;
  return v27 - ((v28 * v28) >> 12);
}

uint64_t sub_277A6CEA8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 128;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  *a5 = v27;
  return v27 - ((v28 * v28) >> 13);
}

uint64_t sub_277A6CF8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x70);
    a3 += 512;
    a4 += 512;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  *a5 = v27;
  return v27 - ((v28 * v28) >> 13);
}

uint64_t sub_277A6D070(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 128;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x70);
    a3 += 512;
    a4 += 512;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  *a5 = v27;
  return v27 - ((v28 * v28) >> 14);
}

uint64_t sub_277A6D154(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 64);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  v17 = (v15 + 8) >> 4;
  *a5 = v17;
  return v17 - (((((v16 << 30) + 0x80000000) >> 32) * (((v16 << 30) + 0x80000000) >> 32)) >> 4);
}

uint64_t sub_277A6D200(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 128);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  v17 = (v15 + 8) >> 4;
  *a5 = v17;
  return v17 - (((((v16 << 30) + 0x80000000) >> 32) * (((v16 << 30) + 0x80000000) >> 32)) >> 5);
}

uint64_t sub_277A6D2AC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 256);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  v17 = (v15 + 8) >> 4;
  *a5 = v17;
  return v17 - (((((v16 << 30) + 0x80000000) >> 32) * (((v16 << 30) + 0x80000000) >> 32)) >> 6);
}

uint64_t sub_277A6D358(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 128);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 8) >> 4;
  *a5 = v18;
  return v18 - (((((v17 << 30) + 0x80000000) >> 32) * (((v17 << 30) + 0x80000000) >> 32)) >> 5);
}

uint64_t sub_277A6D3F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 256);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 8) >> 4;
  *a5 = v18;
  return v18 - (((((v17 << 30) + 0x80000000) >> 32) * (((v17 << 30) + 0x80000000) >> 32)) >> 6);
}

uint64_t sub_277A6D490(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 512);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 8) >> 4;
  *a5 = v18;
  return v18 - (((((v17 << 30) + 0x80000000) >> 32) * (((v17 << 30) + 0x80000000) >> 32)) >> 7);
}

uint64_t sub_277A6D52C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 1024);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 8) >> 4;
  *a5 = v18;
  return v18 - (((((v17 << 30) + 0x80000000) >> 32) * (((v17 << 30) + 0x80000000) >> 32)) >> 8);
}

uint64_t sub_277A6D5C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 256);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 8) >> 4;
  *a5 = v26;
  return v26 - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 6);
}

uint64_t sub_277A6D69C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 512);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 8) >> 4;
  *a5 = v26;
  return v26 - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 7);
}

uint64_t sub_277A6D770(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 1024);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 8) >> 4;
  *a5 = v26;
  return v26 - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 8);
}

uint64_t sub_277A6D844(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 2048);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 8) >> 4;
  *a5 = v26;
  return v26 - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 9);
}

uint64_t sub_277A6D918(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 4096);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 8) >> 4;
  *a5 = v26;
  return v26 - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 10);
}

uint64_t sub_277A6D9EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 8;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  v31 = (v29 + 8) >> 4;
  *a5 = v31;
  return v31 - (((((v30 << 30) + 0x80000000) >> 32) * (((v30 << 30) + 0x80000000) >> 32)) >> 8);
}

uint64_t sub_277A6DAE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 16;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_s32(v8);
  v30 = (vaddlvq_u32(v7) + 8) >> 4;
  *a5 = v30;
  return v30 - (((((v29 << 30) + 0x80000000) >> 32) * (((v29 << 30) + 0x80000000) >> 32)) >> 9);
}

uint64_t sub_277A6DBDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 32;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  v31 = (v29 + 8) >> 4;
  *a5 = v31;
  return v31 - (((((v30 << 30) + 0x80000000) >> 32) * (((v30 << 30) + 0x80000000) >> 32)) >> 10);
}

uint64_t sub_277A6DCD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  v31 = (v29 + 8) >> 4;
  *a5 = v31;
  return v31 - (((((v30 << 30) + 0x80000000) >> 32) * (((v30 << 30) + 0x80000000) >> 32)) >> 11);
}

uint64_t sub_277A6DDCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 16;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 8) >> 4;
  *a5 = v29;
  return v29 - (((((v28 << 30) + 0x80000000) >> 32) * (((v28 << 30) + 0x80000000) >> 32)) >> 10);
}

uint64_t sub_277A6DEC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 32;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 8) >> 4;
  *a5 = v29;
  return v29 - (((((v28 << 30) + 0x80000000) >> 32) * (((v28 << 30) + 0x80000000) >> 32)) >> 11);
}

uint64_t sub_277A6DFBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 8) >> 4;
  *a5 = v29;
  return v29 - (((((v28 << 30) + 0x80000000) >> 32) * (((v28 << 30) + 0x80000000) >> 32)) >> 12);
}

uint64_t sub_277A6E0B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 128;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 8) >> 4;
  *a5 = v29;
  return v29 - (((((v28 << 30) + 0x80000000) >> 32) * (((v28 << 30) + 0x80000000) >> 32)) >> 13);
}

uint64_t sub_277A6E1AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x70);
    a3 += 512;
    a4 += 512;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 8) >> 4;
  *a5 = v29;
  return v29 - (((((v28 << 30) + 0x80000000) >> 32) * (((v28 << 30) + 0x80000000) >> 32)) >> 13);
}

uint64_t sub_277A6E2A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 128;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x70);
    a3 += 512;
    a4 += 512;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 8) >> 4;
  *a5 = v29;
  return v29 - (((((v28 << 30) + 0x80000000) >> 32) * (((v28 << 30) + 0x80000000) >> 32)) >> 14);
}

uint64_t sub_277A6E39C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 64);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  v17 = (v15 + 128) >> 8;
  *a5 = v17;
  return v17 - (((((v16 << 28) + 0x80000000) >> 32) * (((v16 << 28) + 0x80000000) >> 32)) >> 4);
}

uint64_t sub_277A6E448(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 128);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  v17 = (v15 + 128) >> 8;
  *a5 = v17;
  return v17 - (((((v16 << 28) + 0x80000000) >> 32) * (((v16 << 28) + 0x80000000) >> 32)) >> 5);
}

uint64_t sub_277A6E4F4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vmlsl_s16(*(a3 + v5), *v6, vmovn_s32(*(a4 + v5)));
    v10 = vmlsl_s16(*(a3 + v5 + 16), *(v6 + 2 * a2), vmovn_s32(*(a4 + v5 + 16)));
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v11, 0xCuLL), v12, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v13, v13), v14, v14);
    v5 += 32;
    v6 = (v6 + 2 * (2 * a2));
  }

  while (v5 != 256);
  v15 = vaddlvq_u32(v7);
  v16 = vaddlvq_s32(v8);
  v17 = (v15 + 128) >> 8;
  *a5 = v17;
  return v17 - (((((v16 << 28) + 0x80000000) >> 32) * (((v16 << 28) + 0x80000000) >> 32)) >> 6);
}

uint64_t sub_277A6E5A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 128);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 128) >> 8;
  *a5 = v18;
  return v18 - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 5);
}

uint64_t sub_277A6E63C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 256);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 128) >> 8;
  *a5 = v18;
  return v18 - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 6);
}

uint64_t sub_277A6E6D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 512);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 128) >> 8;
  *a5 = v18;
  return v18 - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 7);
}

uint64_t sub_277A6E774(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v6, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), *v6->i8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(v8, v12, 0xCuLL), v13, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(v7, v14, v14), v15, v15);
    v6 = (v6 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 1024);
  v16 = vaddlvq_u32(v7);
  v17 = vaddlvq_s32(v8);
  v18 = (v16 + 128) >> 8;
  *a5 = v18;
  return v18 - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 8);
}

uint64_t sub_277A6E810(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 256);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 128) >> 8;
  *a5 = v26;
  return v26 - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 6);
}

uint64_t sub_277A6E8E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 512);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 128) >> 8;
  *a5 = v26;
  return v26 - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 7);
}

uint64_t sub_277A6E9B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 1024);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 128) >> 8;
  *a5 = v26;
  return v26 - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 8);
}

uint64_t sub_277A6EA8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 2048);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 128) >> 8;
  *a5 = v26;
  return v26 - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 9);
}

uint64_t sub_277A6EB60(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = *v6[-2].i8;
    v11 = vmlsl_s16(*(a3 + v5), *v10.i8, *v9.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v10, v9);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v17 = vuzp1q_s16(*(a4 + v5 + 32), *(a4 + v5 + 48));
    v18 = vmlsl_s16(*(a3 + v5 + 32), *v6, *v17.i8);
    v19 = vmlsl_high_s16(*(a3 + v5 + 48), *v6->i8, v17);
    v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
    v21 = vsraq_n_s32(v19, v19, 0x1FuLL);
    v22 = vrshrq_n_s32(v20, 0xCuLL);
    v23 = vrshrq_n_s32(v21, 0xCuLL);
    v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v13, 0xCuLL), v14, 0xCuLL), v20, 0xCuLL), v21, 0xCuLL);
    v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v15), v16, v16), v22, v22), v23, v23);
    v6 = (v6 + 2 * a2);
    v5 += 64;
  }

  while (v5 != 4096);
  v24 = vaddlvq_u32(v7);
  v25 = vaddlvq_s32(v8);
  v26 = (v24 + 128) >> 8;
  *a5 = v26;
  return v26 - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 10);
}

uint64_t sub_277A6EC34(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 8;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  v31 = (v29 + 128) >> 8;
  *a5 = v31;
  return v31 - (((((v30 << 28) + 0x80000000) >> 32) * (((v30 << 28) + 0x80000000) >> 32)) >> 8);
}

uint64_t sub_277A6ED2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 16;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_s32(v8);
  v30 = (vaddlvq_u32(v7) + 128) >> 8;
  *a5 = v30;
  return v30 - (((((v29 << 28) + 0x80000000) >> 32) * (((v29 << 28) + 0x80000000) >> 32)) >> 9);
}

uint64_t sub_277A6EE24(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 32;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v5 + 2 * v10;
      v14 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v15 = *(v13 + 16);
      v16 = vmlsl_s16(*(a3 + v9), *v13, *v14.i8);
      v17 = vmlsl_high_s16(*(a3 + v9 + 16), *v13, v14);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v23 = vmlsl_s16(*(a3 + v9 + 32), *v15.i8, *v22.i8);
      v24 = vmlsl_high_s16(*(a3 + v9 + 48), v15, v22);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v18, 0xCuLL), v19, 0xCuLL), v25, 0xCuLL), v26, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v20, v20), v21, v21), v27, v27), v28, v28);
      v9 += 64;
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v29 = vaddlvq_u32(v7);
  v30 = vaddlvq_s32(v8);
  v31 = (v29 + 128) >> 8;
  *a5 = v31;
  return v31 - (((((v30 << 28) + 0x80000000) >> 32) * (((v30 << 28) + 0x80000000) >> 32)) >> 10);
}

uint64_t sub_277A6EF1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = v6 + 2 * v11;
      v15 = vuzp1q_s16(*(a4 + v10), *(a4 + v10 + 16));
      v16 = *(v14 + 16);
      v17 = vmlsl_s16(*(a3 + v10), *v14, *v15.i8);
      v18 = vmlsl_high_s16(*(a3 + v10 + 16), *v14, v15);
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v9 = vmlaq_s32(vmlaq_s32(v9, v21, v21), v22, v22);
      v23 = vuzp1q_s16(*(a4 + v10 + 32), *(a4 + v10 + 48));
      v24 = vmlsl_s16(*(a3 + v10 + 32), *v16.i8, *v23.i8);
      v25 = vmlsl_high_s16(*(a3 + v10 + 48), v16, v23);
      v26 = vsraq_n_s32(v24, v24, 0x1FuLL);
      v27 = vsraq_n_s32(v25, v25, 0x1FuLL);
      v28 = vrshrq_n_s32(v26, 0xCuLL);
      v29 = vrshrq_n_s32(v27, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v19, 0xCuLL), v20, 0xCuLL), v26, 0xCuLL), v27, 0xCuLL);
      v8 = vmlaq_s32(vmlaq_s32(v8, v28, v28), v29, v29);
      v10 += 64;
      v11 = 16;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    a3 += 128;
    a4 += 128;
    v6 += 2 * a2;
    ++v5;
  }

  while (v5 != 64);
  v30 = vaddlvq_s32(v7);
  v31 = (vaddvq_s64(vpadalq_u32(vpaddlq_u32(v8), v9)) + 128) >> 8;
  *a5 = v31;
  return v31 - (((((v30 << 28) + 0x80000000) >> 32) * (((v30 << 28) + 0x80000000) >> 32)) >> 11);
}

uint64_t sub_277A6F024(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 16;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = -16;
    v11 = v5;
    do
    {
      v12 = vuzp1q_s16(*(a4 + v9), *(a4 + v9 + 16));
      v13 = *v11[-2].i8;
      v14 = vmlsl_s16(*(a3 + v9), *v13.i8, *v12.i8);
      v15 = vmlsl_high_s16(*(a3 + v9 + 16), v13, v12);
      v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vrshrq_n_s32(v16, 0xCuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vuzp1q_s16(*(a4 + v9 + 32), *(a4 + v9 + 48));
      v21 = vmlsl_s16(*(a3 + v9 + 32), *v11, *v20.i8);
      v22 = vmlsl_high_s16(*(a3 + v9 + 48), *v11->i8, v20);
      v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vrshrq_n_s32(v23, 0xCuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v16, 0xCuLL), v17, 0xCuLL), v23, 0xCuLL), v24, 0xCuLL);
      v7 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v7, v18, v18), v19, v19), v25, v25), v26, v26);
      v10 += 16;
      v11 += 4;
      v9 += 64;
    }

    while (v10 < 0x30);
    a3 += 256;
    a4 += 256;
    v5 += 2 * a2;
    --v6;
  }

  while (v6);
  v27 = vaddlvq_u32(v7);
  v28 = vaddlvq_s32(v8);
  v29 = (v27 + 128) >> 8;
  *a5 = v29;
  return v29 - (((((v28 << 28) + 0x80000000) >> 32) * (((v28 << 28) + 0x80000000) >> 32)) >> 10);
}

uint64_t sub_277A6F11C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1 + 16;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = -16;
    v12 = v6;
    do
    {
      v13 = vuzp1q_s16(*(a4 + v10), *(a4 + v10 + 16));
      v14 = *v12[-2].i8;
      v15 = vmlsl_s16(*(a3 + v10), *v14.i8, *v13.i8);
      v16 = vmlsl_high_s16(*(a3 + v10 + 16), v14, v13);
      v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
      v18 = vsraq_n_s32(v16, v16, 0x1FuLL);
      v19 = vrshrq_n_s32(v17, 0xCuLL);
      v20 = vrshrq_n_s32(v18, 0xCuLL);
      v9 = vmlaq_s32(vmlaq_s32(v9, v19, v19), v20, v20);
      v21 = vuzp1q_s16(*(a4 + v10 + 32), *(a4 + v10 + 48));
      v22 = vmlsl_s16(*(a3 + v10 + 32), *v12, *v21.i8);
      v23 = vmlsl_high_s16(*(a3 + v10 + 48), *v12->i8, v21);
      v24 = vsraq_n_s32(v22, v22, 0x1FuLL);
      v25 = vsraq_n_s32(v23, v23, 0x1FuLL);
      v26 = vrshrq_n_s32(v24, 0xCuLL);
      v27 = vrshrq_n_s32(v25, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v17, 0xCuLL), v18, 0xCuLL), v24, 0xCuLL), v25, 0xCuLL);
      v8 = vmlaq_s32(vmlaq_s32(v8, v26, v26), v27, v27);
      v11 += 16;
      v12 += 4;
      v10 += 64;
    }

    while (v11 < 0x30);
    a3 += 256;
    a4 += 256;
    ++v5;
    v6 += 2 * a2;
  }

  while (v5 != 32);
  v28 = vaddlvq_s32(v7);
  v29 = (vaddvq_s64(vpadalq_u32(vpaddlq_u32(v9), v8)) + 128) >> 8;
  *a5 = v29;
  return v29 - (((((v28 << 28) + 0x80000000) >> 32) * (((v28 << 28) + 0x80000000) >> 32)) >> 11);
}

uint64_t sub_277A6F224(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = a4;
    v14 = a3;
    do
    {
      v15 = 0;
      v16 = -16;
      v17 = v10;
      do
      {
        v18 = vuzp1q_s16(*(v13 + v15), *(v13 + v15 + 16));
        v19 = *v17[-2].i8;
        v20 = vmlsl_s16(*(v14 + v15), *v19.i8, *v18.i8);
        v21 = vmlsl_high_s16(*(v14 + v15 + 16), v19, v18);
        v22 = vsraq_n_s32(v20, v20, 0x1FuLL);
        v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
        v24 = vrshrq_n_s32(v22, 0xCuLL);
        v25 = vrshrq_n_s32(v23, 0xCuLL);
        v12 = vmlaq_s32(vmlaq_s32(v12, v24, v24), v25, v25);
        v26 = vuzp1q_s16(*(v13 + v15 + 32), *(v13 + v15 + 48));
        v27 = vmlsl_s16(*(v14 + v15 + 32), *v17, *v26.i8);
        v28 = vmlsl_high_s16(*(v14 + v15 + 48), *v17->i8, v26);
        v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
        v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
        v31 = vrshrq_n_s32(v29, 0xCuLL);
        v32 = vrshrq_n_s32(v30, 0xCuLL);
        v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v22, 0xCuLL), v23, 0xCuLL), v29, 0xCuLL), v30, 0xCuLL);
        v11 = vmlaq_s32(vmlaq_s32(v11, v31, v31), v32, v32);
        v16 += 16;
        v17 += 4;
        v15 += 64;
      }

      while (v16 < 0x30);
      v14 += 256;
      v13 += 256;
      ++v9;
      v10 = (v10 + 2 * a2);
    }

    while (v9 != 32);
    a3 += 0x2000;
    a4 += 0x2000;
    v7 = vpadalq_u32(vpadalq_u32(v7, v12), v11);
    v5 += a2 << 6;
    v6 -= 32;
  }

  while (v6);
  v33 = vaddlvq_s32(v8);
  v34 = (vaddvq_s64(v7) + 128) >> 8;
  *a5 = v34;
  return v34 - (((((v33 << 28) + 0x80000000) >> 32) * (((v33 << 28) + 0x80000000) >> 32)) >> 12);
}

uint64_t sub_277A6F358(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 128;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = a4;
    v14 = a3;
    do
    {
      v15 = 0;
      v16 = -16;
      v17 = v10;
      do
      {
        v18 = vuzp1q_s16(*(v13 + v15), *(v13 + v15 + 16));
        v19 = *v17[-2].i8;
        v20 = vmlsl_s16(*(v14 + v15), *v19.i8, *v18.i8);
        v21 = vmlsl_high_s16(*(v14 + v15 + 16), v19, v18);
        v22 = vsraq_n_s32(v20, v20, 0x1FuLL);
        v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
        v24 = vrshrq_n_s32(v22, 0xCuLL);
        v25 = vrshrq_n_s32(v23, 0xCuLL);
        v12 = vmlaq_s32(vmlaq_s32(v12, v24, v24), v25, v25);
        v26 = vuzp1q_s16(*(v13 + v15 + 32), *(v13 + v15 + 48));
        v27 = vmlsl_s16(*(v14 + v15 + 32), *v17, *v26.i8);
        v28 = vmlsl_high_s16(*(v14 + v15 + 48), *v17->i8, v26);
        v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
        v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
        v31 = vrshrq_n_s32(v29, 0xCuLL);
        v32 = vrshrq_n_s32(v30, 0xCuLL);
        v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v22, 0xCuLL), v23, 0xCuLL), v29, 0xCuLL), v30, 0xCuLL);
        v11 = vmlaq_s32(vmlaq_s32(v11, v31, v31), v32, v32);
        v16 += 16;
        v17 += 4;
        v15 += 64;
      }

      while (v16 < 0x30);
      v14 += 256;
      v13 += 256;
      ++v9;
      v10 = (v10 + 2 * a2);
    }

    while (v9 != 32);
    a3 += 0x2000;
    a4 += 0x2000;
    v7 = vpadalq_u32(vpadalq_u32(v7, v12), v11);
    v5 += a2 << 6;
    v6 -= 32;
  }

  while (v6);
  v33 = vaddlvq_s32(v8);
  v34 = (vaddvq_s64(v7) + 128) >> 8;
  *a5 = v34;
  return v34 - (((((v33 << 28) + 0x80000000) >> 32) * (((v33 << 28) + 0x80000000) >> 32)) >> 13);
}

uint64_t sub_277A6F48C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 64;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = a4;
    v14 = a3;
    do
    {
      v15 = 0;
      v16 = -16;
      v17 = v10;
      do
      {
        v18 = vuzp1q_s16(*(v13 + v15), *(v13 + v15 + 16));
        v19 = *v17[-2].i8;
        v20 = vmlsl_s16(*(v14 + v15), *v19.i8, *v18.i8);
        v21 = vmlsl_high_s16(*(v14 + v15 + 16), v19, v18);
        v22 = vsraq_n_s32(v20, v20, 0x1FuLL);
        v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
        v24 = vrshrq_n_s32(v22, 0xCuLL);
        v25 = vrshrq_n_s32(v23, 0xCuLL);
        v12 = vmlaq_s32(vmlaq_s32(v12, v24, v24), v25, v25);
        v26 = vuzp1q_s16(*(v13 + v15 + 32), *(v13 + v15 + 48));
        v27 = vmlsl_s16(*(v14 + v15 + 32), *v17, *v26.i8);
        v28 = vmlsl_high_s16(*(v14 + v15 + 48), *v17->i8, v26);
        v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
        v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
        v31 = vrshrq_n_s32(v29, 0xCuLL);
        v32 = vrshrq_n_s32(v30, 0xCuLL);
        v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v22, 0xCuLL), v23, 0xCuLL), v29, 0xCuLL), v30, 0xCuLL);
        v11 = vmlaq_s32(vmlaq_s32(v11, v31, v31), v32, v32);
        v16 += 16;
        v17 += 4;
        v15 += 64;
      }

      while (v16 < 0x70);
      v14 += 512;
      v13 += 512;
      ++v9;
      v10 = (v10 + 2 * a2);
    }

    while (v9 != 16);
    a3 += 0x2000;
    a4 += 0x2000;
    v7 = vpadalq_u32(vpadalq_u32(v7, v12), v11);
    v5 += 32 * a2;
    v6 -= 16;
  }

  while (v6);
  v33 = vaddlvq_s32(v8);
  v34 = (vaddvq_s64(v7) + 128) >> 8;
  *a5 = v34;
  return v34 - (((((v33 << 28) + 0x80000000) >> 32) * (((v33 << 28) + 0x80000000) >> 32)) >> 13);
}

uint64_t sub_277A6F5C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 2 * a1 + 16;
  v6 = 128;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = 0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = a4;
    v14 = a3;
    do
    {
      v15 = 0;
      v16 = -16;
      v17 = v10;
      do
      {
        v18 = vuzp1q_s16(*(v13 + v15), *(v13 + v15 + 16));
        v19 = *v17[-2].i8;
        v20 = vmlsl_s16(*(v14 + v15), *v19.i8, *v18.i8);
        v21 = vmlsl_high_s16(*(v14 + v15 + 16), v19, v18);
        v22 = vsraq_n_s32(v20, v20, 0x1FuLL);
        v23 = vsraq_n_s32(v21, v21, 0x1FuLL);
        v24 = vrshrq_n_s32(v22, 0xCuLL);
        v25 = vrshrq_n_s32(v23, 0xCuLL);
        v12 = vmlaq_s32(vmlaq_s32(v12, v24, v24), v25, v25);
        v26 = vuzp1q_s16(*(v13 + v15 + 32), *(v13 + v15 + 48));
        v27 = vmlsl_s16(*(v14 + v15 + 32), *v17, *v26.i8);
        v28 = vmlsl_high_s16(*(v14 + v15 + 48), *v17->i8, v26);
        v29 = vsraq_n_s32(v27, v27, 0x1FuLL);
        v30 = vsraq_n_s32(v28, v28, 0x1FuLL);
        v31 = vrshrq_n_s32(v29, 0xCuLL);
        v32 = vrshrq_n_s32(v30, 0xCuLL);
        v8 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v8, v22, 0xCuLL), v23, 0xCuLL), v29, 0xCuLL), v30, 0xCuLL);
        v11 = vmlaq_s32(vmlaq_s32(v11, v31, v31), v32, v32);
        v16 += 16;
        v17 += 4;
        v15 += 64;
      }

      while (v16 < 0x70);
      v14 += 512;
      v13 += 512;
      ++v9;
      v10 = (v10 + 2 * a2);
    }

    while (v9 != 16);
    a3 += 0x2000;
    a4 += 0x2000;
    v7 = vpadalq_u32(vpadalq_u32(v7, v12), v11);
    v5 += 32 * a2;
    v6 -= 16;
  }

  while (v6);
  v33 = vaddlvq_s32(v8);
  v34 = (vaddvq_s64(v7) + 128) >> 8;
  *a5 = v34;
  return v34 - (((((v33 << 28) + 0x80000000) >> 32) * (((v33 << 28) + 0x80000000) >> 32)) >> 14);
}

uint64_t sub_277A6F6F4(uint64_t result, int a2, int a3)
{
  v3 = a3 * a2;
  if (v3 <= 2073599)
  {
    v4 = 140;
  }

  else
  {
    v4 = 200;
  }

  *(result + 8) = 0x5A00000000;
  *(result + 24) = 0;
  *(result + 20) = 0;
  *result = 0;
  *(result + 4) = v3 >= 921600;
  if (v3 < 921600)
  {
    if (v3 < 230400)
    {
      v4 = 90;
      goto LABEL_9;
    }

    v4 = 115;
  }

  *(result + 12) = v4;
LABEL_9:
  *(result + 32) = 15;
  *(result + 16) = v4 + (v4 >> 1);
  return result;
}

uint64_t sub_277A6F768(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int a5, int a6)
{
  if (a5 > 31)
  {
    switch(a5)
    {
      case 32:
        v30 = &a3[2];
        v31 = &a1[2];
        v6 = 0uLL;
        v7 = 0uLL;
        do
        {
          v32 = vabdq_u8(v31[-1], v30[-1]);
          v7 = vpadalq_u16(vpadalq_u16(v7, vmull_u8(*v32.i8, *v32.i8)), vmull_high_u8(v32, v32));
          v33 = vabdq_u8(*v31, *v30);
          v6 = vpadalq_u16(vpadalq_u16(v6, vmull_u8(*v33.i8, *v33.i8)), vmull_high_u8(v33, v33));
          v30 = (v30 + a4);
          v31 = (v31 + a2);
          --a6;
        }

        while (a6);
        goto LABEL_31;
      case 64:
        v51 = &a1[4];
        v52 = &a3[4];
        v6 = 0uLL;
        v7 = 0uLL;
        do
        {
          v53 = vabdq_u8(v51[-2], v52[-2]);
          v54 = vpadalq_u16(vpadalq_u16(v7, vmull_u8(*v53.i8, *v53.i8)), vmull_high_u8(v53, v53));
          v55 = vabdq_u8(v51[-1], v52[-1]);
          v56 = vpadalq_u16(vpadalq_u16(v6, vmull_u8(*v55.i8, *v55.i8)), vmull_high_u8(v55, v55));
          v57 = vabdq_u8(*v51, *v52);
          v7 = vpadalq_u16(vpadalq_u16(v54, vmull_u8(*v57.i8, *v57.i8)), vmull_high_u8(v57, v57));
          v58 = vabdq_u8(v51[1], v52[1]);
          v6 = vpadalq_u16(vpadalq_u16(v56, vmull_u8(*v58.i8, *v58.i8)), vmull_high_u8(v58, v58));
          v51 = (v51 + a2);
          v52 = (v52 + a4);
          --a6;
        }

        while (a6);
        goto LABEL_31;
      case 128:
        v10 = &a1[8];
        v11 = &a3[8];
        v6 = 0uLL;
        v7 = 0uLL;
        do
        {
          v12 = vabdq_u8(v10[-4], v11[-4]);
          v13 = vpadalq_u16(vpadalq_u16(v7, vmull_u8(*v12.i8, *v12.i8)), vmull_high_u8(v12, v12));
          v14 = vabdq_u8(v10[-3], v11[-3]);
          v15 = vpadalq_u16(vpadalq_u16(v6, vmull_u8(*v14.i8, *v14.i8)), vmull_high_u8(v14, v14));
          v16 = vabdq_u8(v10[-2], v11[-2]);
          v17 = vpadalq_u16(vpadalq_u16(v13, vmull_u8(*v16.i8, *v16.i8)), vmull_high_u8(v16, v16));
          v18 = vabdq_u8(v10[-1], v11[-1]);
          v19 = vpadalq_u16(vpadalq_u16(v15, vmull_u8(*v18.i8, *v18.i8)), vmull_high_u8(v18, v18));
          v20 = vabdq_u8(*v10, *v11);
          v21 = vpadalq_u16(vpadalq_u16(v17, vmull_u8(*v20.i8, *v20.i8)), vmull_high_u8(v20, v20));
          v22 = vabdq_u8(v10[1], v11[1]);
          v23 = vpadalq_u16(vpadalq_u16(v19, vmull_u8(*v22.i8, *v22.i8)), vmull_high_u8(v22, v22));
          v24 = vabdq_u8(v10[2], v11[2]);
          v7 = vpadalq_u16(vpadalq_u16(v21, vmull_u8(*v24.i8, *v24.i8)), vmull_high_u8(v24, v24));
          v25 = vabdq_u8(v10[3], v11[3]);
          v6 = vpadalq_u16(vpadalq_u16(v23, vmull_u8(*v25.i8, *v25.i8)), vmull_high_u8(v25, v25));
          v10 = (v10 + a2);
          v11 = (v11 + a4);
          --a6;
        }

        while (a6);
        goto LABEL_31;
    }
  }

  else
  {
    switch(a5)
    {
      case 4:
        v26 = 0uLL;
        do
        {
          v27.i32[0] = a1->i32[0];
          v27.i32[1] = *(a1->i32 + a2);
          v28.i32[0] = a3->i32[0];
          v28.i32[1] = *(a3->i32 + a4);
          v29 = vabd_u8(v27, v28);
          v26 = vpadalq_u16(v26, vmull_u8(v29, v29));
          a1 = (a1 + 2 * a2);
          a3 = (a3 + 2 * a4);
          a6 -= 2;
        }

        while (a6);
        return vaddvq_s32(v26);
      case 8:
        v26 = 0uLL;
        do
        {
          v50 = vabd_u8(*a1, *a3);
          v26 = vpadalq_u16(v26, vmull_u8(v50, v50));
          a1 = (a1 + a2);
          a3 = (a3 + a4);
          --a6;
        }

        while (a6);
        return vaddvq_s32(v26);
      case 16:
        v6 = 0uLL;
        v7 = 0uLL;
        do
        {
          v8 = vabdq_u8(*a1->i8, *a3->i8);
          v7 = vpadalq_u16(vpadalq_u16(v7, vmull_u8(*v8.i8, *v8.i8)), vmull_high_u8(v8, v8));
          v9 = vabdq_u8(*&a1->i8[a2], *&a3->i8[a4]);
          v6 = vpadalq_u16(vpadalq_u16(v6, vmull_u8(*v9.i8, *v9.i8)), vmull_high_u8(v9, v9));
          a1 = (a1 + a2 + a2);
          a3 = (a3 + a4 + a4);
          a6 -= 2;
        }

        while (a6);
LABEL_31:
        v26 = vaddq_s32(v6, v7);
        return vaddvq_s32(v26);
    }
  }

  if ((a5 & 7u) - 1 >= 4)
  {
    v26 = 0uLL;
    do
    {
      v60 = 0;
      do
      {
        v61 = vabd_u8(a1[v60 / 8], a3[v60 / 8]);
        v26 = vpadalq_u16(v26, vmull_u8(v61, v61));
        v60 += 8;
      }

      while (v60 < a5);
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      --a6;
    }

    while (a6);
  }

  else
  {
    v34 = 2 * a2;
    v35 = 2 * a4;
    v36 = a3 + a4;
    v37 = a1 + a2;
    v26 = 0uLL;
    do
    {
      v38 = 0;
      do
      {
        v39 = vabd_u8(a1[v38 / 8], a3[v38 / 8]);
        v40 = vpadalq_u16(v26, vmull_u8(v39, v39));
        v41 = vabd_u8(*&v37[v38], *&v36[v38]);
        v26 = vpadalq_u16(v40, vmull_u8(v41, v41));
        v42 = v38 + 8;
        v43 = v38 < a5 - 12;
        v38 += 8;
      }

      while (v43);
      v44 = v42 & 0xFFFFFFF8;
      v45 = (a1 + v44);
      v46 = (a3 + v44);
      v47.i32[0] = *v45;
      v47.i32[1] = *(v45 + a2);
      v48.i32[0] = *v46;
      v48.i32[1] = *(v46 + a4);
      v49 = vabd_u8(v47, v48);
      a1 = (a1 + v34);
      v26 = vpadalq_u16(v26, vmull_u8(v49, v49));
      a3 = (a3 + v35);
      v36 += v35;
      v37 += v34;
      a6 -= 2;
    }

    while (a6);
  }

  return vaddvq_s32(v26);
}

int16x4_t *sub_277A6FB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20]();
  v19 = v16;
  v542[4097] = *MEMORY[0x277D85DE8];
  v21 = *(v20 + 8);
  v22 = (*v20 + 2 * (a11 & 0xFu) * v21);
  if (v21 == 12)
  {
    v23 = 12;
  }

  else if (v22->u16[7] | v22->u16[0])
  {
    v23 = 8;
  }

  else if (v22->u16[6] | v22->u16[1])
  {
    v23 = 6;
  }

  else if (v22->u16[5] | v22->u16[2])
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v23 <= 6)
  {
    v24 = 6;
  }

  else
  {
    v24 = v23;
  }

  v25 = v17 + v24 - 1;
  v26 = *(v18 + 8);
  _X11 = (result + -(v26 >> 1) - (((v24 >> 1) - 1) * v13) + 1);
  v28 = *v18 + 2 * (a9 & 0xF) * v26;
  v29 = *v22;
  if (v16 == 4)
  {
    v30 = vshr_n_s16(*(v28 + 4), 1uLL);
    *v31.i8 = vdup_lane_s16(v30, 0);
    *v32.i8 = vdup_lane_s16(v30, 1);
    v33 = vdup_lane_s16(v30, 2);
    v34 = vdup_lane_s16(v30, 3);
    v35 = (_X11 + 2);
    _X14 = v535;
    v37 = vdup_n_s16(0x2002u);
    do
    {
      v38 = vmovl_u8(*v35);
      __asm { PRFM            #0, [X14] }

      *_X14 = vshr_n_s16(vadd_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v38, v38, 2uLL), *v32.i8), *v38.i8, *v31.i8), *&vextq_s8(v38, v38, 4uLL), v33), *&vextq_s8(v38, v38, 6uLL), v34), v37), 2uLL);
      v35 = (v35 + v13);
      _X14 += 32;
      --v25;
    }

    while (v25);
  }

  else
  {
    v44 = vshrq_n_s16(*v28, 1uLL);
    v45 = v13;
    v46 = 8 * v13;
    v47 = 2 * v13;
    v48 = 3 * v13;
    result = (4 * v13);
    v49 = 5 * v13;
    v50 = 6 * v13;
    v31 = vdupq_lane_s16(*v44.i8, 0);
    v32 = vdupq_lane_s16(*v44.i8, 1);
    v51 = vdupq_lane_s16(*v44.i8, 2);
    v52 = vdupq_lane_s16(*v44.i8, 3);
    v53 = vdupq_laneq_s16(v44, 4);
    v54 = vdupq_laneq_s16(v44, 5);
    v55 = vdupq_laneq_s16(v44, 6);
    v56 = 7 * v13;
    v57 = vdupq_laneq_s16(v44, 7);
    _X14 = v535;
    do
    {
      __asm { PRFM            #0, [X11] }

      _X20 = _X11 + v45;
      __asm { PRFM            #0, [X20] }

      _X21 = _X11 + v47;
      __asm { PRFM            #0, [X21] }

      _X21 = _X11 + v48;
      __asm { PRFM            #0, [X21] }

      _X21 = result + _X11;
      __asm { PRFM            #0, [X21] }

      _X21 = _X11 + v49;
      __asm { PRFM            #0, [X21] }

      _X21 = _X11 + v50;
      __asm { PRFM            #0, [X21] }

      _X21 = _X11 + v56;
      __asm { PRFM            #0, [X21] }

      *v74.i8 = *_X11;
      *v75.i8 = *(_X11 + v45);
      v76 = (_X11 + v45 + v45);
      v77.i64[0] = *v76;
      v78 = (v76 + v45);
      v79.i64[0] = *v78;
      v80 = (v78 + v45);
      v81 = *v80;
      v82 = (v80 + v45);
      v83 = *v82;
      v84 = (v82 + v45);
      v74.i64[1] = v81;
      v75.i64[1] = v83;
      v85 = vtrn1q_s8(v74, v75);
      v77.i64[1] = *v84;
      v79.i64[1] = *(v84 + v45);
      v86 = vtrn2q_s8(v74, v75);
      v87 = vtrn1q_s8(v77, v79);
      v88 = vtrn2q_s8(v77, v79);
      v89 = vtrn1q_s16(v85, v87);
      v90 = vtrn2q_s16(v85, v87);
      v91 = vtrn1q_s16(v86, v88);
      v92 = vtrn2q_s16(v86, v88);
      v93 = vuzp1q_s32(v89, v91);
      v94 = vuzp2q_s32(v89, v91);
      v95 = vuzp1q_s32(v90, v92);
      v96 = vmovl_u8(*v93.i8);
      v97 = vmovl_high_u8(v93);
      v98 = vmovl_u8(*v95.i8);
      v99 = vmovl_high_u8(v95);
      v100 = vmovl_u8(*v94.i8);
      v101 = vmovl_high_u8(v94);
      v102 = vmovl_u8(vzip2_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL)));
      v103 = (_X11 + 7);
      __asm
      {
        PRFM            #0, [X14]
        PRFM            #0, [X14,#0x100]
        PRFM            #0, [X14,#0x200]
        PRFM            #0, [X14,#0x300]
        PRFM            #0, [X14,#0x400]
        PRFM            #0, [X14,#0x500]
        PRFM            #0, [X14,#0x600]
        PRFM            #0, [X14,#0x700]
      }

      v112 = v19 + 8;
      v113 = _X14;
      do
      {
        v114.i64[0] = *v103;
        v115.i64[0] = *(v103 + v45);
        v116 = (v103 + v45 + v45);
        v117.i64[0] = *v116;
        v118 = (v116 + v45);
        v119.i64[0] = *v118;
        v120 = *(v118 + v45);
        v121 = (v118 + v45 + v45);
        v122 = *v121;
        v123 = (v121 + v45);
        v114.i64[1] = v120;
        v115.i64[1] = v122;
        v124 = vtrn1q_s8(v114, v115);
        v125 = vtrn2q_s8(v114, v115);
        v117.i64[1] = *v123;
        v119.i64[1] = *(v123 + v45);
        v126 = vtrn1q_s8(v117, v119);
        v127 = vtrn2q_s8(v117, v119);
        v128 = vtrn1q_s16(v124, v126);
        v129 = vtrn2q_s16(v124, v126);
        v130 = vtrn1q_s16(v125, v127);
        v131 = vtrn2q_s16(v125, v127);
        v132 = vuzp1q_s32(v128, v130);
        v133 = vuzp2q_s32(v128, v130);
        v134 = vuzp1q_s32(v129, v131);
        v135 = vuzp2q_s32(v129, v131);
        v136 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v54), v102, v55), v100, v53), v99, v52), v98, v51), v97, v32), v96, v31);
        v137 = vmovl_u8(*v132.i8);
        v138 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v53), v102, v54), v100, v52), v99, v51), v98, v32), v97, v31);
        v96 = vmovl_high_u8(v132);
        v139 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v52), v102, v53), v100, v51), v99, v32), v98, v31);
        v97 = vmovl_u8(*v134.i8);
        v98 = vmovl_high_u8(v134);
        v140 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v51), v102, v52), v100, v32), v99, v31);
        v99 = vmovl_u8(*v133.i8);
        v141 = vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v32), v102, v51), v100, v31);
        v100 = vmovl_high_u8(v133);
        v142 = vmulq_s16(v101, v31);
        v101 = vmovl_u8(*v135.i8);
        v143 = vdupq_n_s16(0x2002u);
        v144 = vmlaq_s16(v142, v102, v32);
        v145 = vmlaq_s16(vmulq_s16(v32, v137), v102, v31);
        v102 = vmovl_high_u8(v135);
        v146 = vshrq_n_s16(vaddq_s16(vmlaq_s16(v136, v57, v137), v143), 2uLL);
        v147 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(v138, v55, v137), v57, v96), v143), 2uLL);
        v148 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v139, v54, v137), v55, v96), v57, v97), v143), 2uLL);
        v149 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v140, v53, v137), v54, v96), v55, v97), v57, v98), v143), 2uLL);
        v150 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v141, v52, v137), v53, v96), v54, v97), v55, v98), v57, v99), v143), 2uLL);
        v151 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v144, v51, v137), v52, v96), v53, v97), v54, v98), v55, v99), v57, v100), v143), 2uLL);
        v152 = vmlaq_s16(vmulq_s16(v32, v96), v31, v137);
        v153 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v145, v51, v96), v52, v97), v53, v98), v54, v99), v55, v100), v57, v101), v143), 2uLL);
        v154 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v152, v51, v97), v52, v98), v53, v99), v54, v100), v55, v101), v57, v102), v143), 2uLL);
        v155 = vtrn1q_s16(v146, v147);
        v156 = vtrn2q_s16(v146, v147);
        v157 = vtrn1q_s16(v148, v149);
        v158 = vtrn2q_s16(v148, v149);
        v159 = vtrn1q_s16(v150, v151);
        v160 = vtrn2q_s16(v150, v151);
        v161 = vtrn1q_s16(v153, v154);
        v162 = vtrn2q_s16(v153, v154);
        v163 = vtrn1q_s32(v155, v157);
        v164 = vtrn2q_s32(v155, v157);
        v165 = vtrn1q_s32(v156, v158);
        v166 = vtrn2q_s32(v156, v158);
        v167 = vtrn1q_s32(v159, v161);
        v168 = vtrn2q_s32(v159, v161);
        v169 = vtrn1q_s32(v160, v162);
        v170 = vzip2q_s64(v163, v167);
        v171 = vzip2q_s64(v165, v169);
        v163.i64[1] = v167.i64[0];
        v165.i64[1] = v169.i64[0];
        v172 = vzip2q_s64(v164, v168);
        v164.i64[1] = v168.i64[0];
        v173 = vtrn2q_s32(v160, v162);
        v174 = vzip2q_s64(v166, v173);
        v166.i64[1] = v173.i64[0];
        *v113 = v163;
        v113[16] = v165;
        v113[32] = v164;
        ++v103;
        v112 -= 8;
        v113[48] = v166;
        v113[64] = v170;
        v113[80] = v171;
        v113[96] = v172;
        v113[112] = v174;
        ++v113;
      }

      while (v112 > 8);
      _X11 = (_X11 + v46);
      _X14 += 256;
      v175 = v25 - 8;
      v176 = v25 <= 16;
      v25 -= 8;
    }

    while (!v176);
    v177 = vdupq_n_s16(0x2002u);
    do
    {
      v178 = vmovl_u8(*_X11);
      __asm { PRFM            #0, [X14] }

      v180 = v19 + 8;
      v181 = _X14;
      v182 = _X11;
      do
      {
        v183 = v182[1];
        ++v182;
        v184 = vmovl_u8(v183);
        *v181++ = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(vextq_s8(v178, v184, 2uLL), v32), v178, v31), vextq_s8(v178, v184, 4uLL), v51), vextq_s8(v178, v184, 6uLL), v52), vextq_s8(v178, v184, 8uLL), v53), vextq_s8(v178, v184, 0xAuLL), v54), vextq_s8(v178, v184, 0xCuLL), v55), vextq_s8(v178, v184, 0xEuLL), v57), v177), 2uLL);
        v180 -= 8;
        v178 = v184;
      }

      while (v180 > 8);
      _X11 = (_X11 + v45);
      _X14 += 32;
      --v175;
    }

    while (v175);
  }

  v185 = *a12;
  if (v23 > 6)
  {
    if (v185)
    {
      if (*(a12 + 36))
      {
        return sub_27799A734(v535, v14, v15, a12, v17, v19, v29, *v31.i8, *v32.i8);
      }

      else
      {
        v216 = *(a12 + 8);
        v217 = *(a12 + 16);
        if (v19 == 4)
        {
          v218 = v535[0];
          v219 = v536;
          v220 = v537;
          v221 = 2 * v15;
          v222 = v538;
          v223 = v542;
          v224 = v539;
          v225 = v540[0];
          v226 = v541;
          v227.i64[0] = 0xE800E800E800E800;
          v227.i64[1] = 0xE800E800E800E800;
          do
          {
            v228.i64[0] = 0x8000000080000;
            v228.i64[1] = 0x8000000080000;
            v229 = vmlal_lane_s16(v228, v218, *v29.i8, 0);
            v218 = v224;
            v230 = vmlal_lane_s16(v229, v219, *v29.i8, 1);
            v231.i64[0] = 0x8000000080000;
            v231.i64[1] = 0x8000000080000;
            v232 = vmlal_lane_s16(v231, v219, *v29.i8, 0);
            v219 = v225;
            v233.i64[0] = 0x8000000080000;
            v233.i64[1] = 0x8000000080000;
            v234 = vmlal_lane_s16(vmlal_lane_s16(v230, v220, *v29.i8, 2), v222, *v29.i8, 3);
            v235 = vmlal_lane_s16(vmlal_lane_s16(v232, v220, *v29.i8, 1), v222, *v29.i8, 2);
            v236 = vmlal_lane_s16(vmlal_lane_s16(v233, v220, *v29.i8, 0), v222, *v29.i8, 1);
            v237.i64[0] = 0x8000000080000;
            v237.i64[1] = 0x8000000080000;
            v238 = vmlal_lane_s16(v237, v222, *v29.i8, 0);
            v222 = *v223;
            v239 = vmlal_laneq_s16(v234, v224, v29, 4);
            v240 = vmlal_lane_s16(v235, v224, *v29.i8, 3);
            v241 = vmlal_lane_s16(v236, v224, *v29.i8, 2);
            v242 = vmlal_lane_s16(v238, v224, *v29.i8, 1);
            v224 = v223[32];
            v243 = vmlal_laneq_s16(v239, v225, v29, 5);
            v244 = vmlal_laneq_s16(v240, v225, v29, 4);
            v245 = vmlal_lane_s16(v241, v225, *v29.i8, 3);
            v246 = vmlal_lane_s16(v242, v225, *v29.i8, 2);
            v225 = v223[64];
            v247 = vmlal_laneq_s16(v243, v226, v29, 6);
            v248 = vmlal_laneq_s16(v244, v226, v29, 5);
            v249 = vmlal_laneq_s16(v245, v226, v29, 4);
            v250 = vmlal_lane_s16(v246, v226, *v29.i8, 3);
            v220 = v226;
            v226 = v223[96];
            v251.i64[0] = *v216;
            v252.i64[0] = *(v216 + 4 * v217);
            v251.i64[1] = *(v216 + 2 * v217);
            v252.i64[1] = *(v216 + 6 * v217);
            *v247.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v251, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v247, *v223, v29, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v248, *v223, v29, 6), v224, v29, 7), 7uLL)), v227), 4uLL);
            *v248.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v252, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v249, *v223, v29, 5), v224, v29, 6), v225, v29, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v250, *v223, v29, 4), v224, v29, 5), v225, v29, 6), v226, v29, 7), 7uLL)), v227), 4uLL);
            *v14 = v247.i32[0];
            *(v14 + v15) = v247.i32[1];
            *(v14 + v221) = v248.i32[0];
            result = (v14 + v15 + v221);
            v14 += v15;
            result->i32[0] = v248.i32[1];
            v223 += 128;
            v216 += v217;
            v17 -= 4;
          }

          while (v17);
        }

        else
        {
          v373 = 0;
          v374 = 4 * v15;
          v375 = v535;
          v376 = 8 * v217;
          v377 = v216 + 6 * v217;
          v378 = v216 + 4 * v217;
          v379 = v216 + 2 * v217;
          result = (v14 + 3 * v15);
          v380 = v14 + 2 * v15;
          v381.i64[0] = 0xE800E800E800E800;
          v381.i64[1] = 0xE800E800E800E800;
          v382 = v14 + v15;
          do
          {
            v383 = 0;
            v384 = *v375->i8;
            v385 = *v375[32].i8;
            v386 = *v375[64].i8;
            v387 = *v375[96].i8;
            v388 = v216;
            v389 = *v375[128].i8;
            v390 = v379;
            v391 = v378;
            v392 = *v375[160].i8;
            v393 = v377;
            v394 = v542;
            v395 = v17;
            v396 = *v375[192].i8;
            do
            {
              v397.i64[0] = 0x8000000080000;
              v397.i64[1] = 0x8000000080000;
              v398 = vmlal_lane_s16(v397, *v384.i8, *v29.i8, 0);
              v399.i64[0] = 0x8000000080000;
              v399.i64[1] = 0x8000000080000;
              v400 = vmlal_high_lane_s16(v399, v384, *v29.i8, 0);
              v384 = v389;
              v401.i64[0] = 0x8000000080000;
              v401.i64[1] = 0x8000000080000;
              v402.i64[0] = 0x8000000080000;
              v402.i64[1] = 0x8000000080000;
              v403.i64[0] = 0x8000000080000;
              v403.i64[1] = 0x8000000080000;
              v404.i64[0] = 0x8000000080000;
              v404.i64[1] = 0x8000000080000;
              v405 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v401, *v385.i8, *v29.i8, 0), *v386.i8, *v29.i8, 1), *v387.i8, *v29.i8, 2);
              v406 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v402, v385, *v29.i8, 0), v386, *v29.i8, 1), v387, *v29.i8, 2);
              v407 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v398, *v385.i8, *v29.i8, 1), *v386.i8, *v29.i8, 2), *v387.i8, *v29.i8, 3);
              v408 = vmlal_lane_s16(vmlal_lane_s16(v403, *v386.i8, *v29.i8, 0), *v387.i8, *v29.i8, 1);
              v409 = vmlal_high_lane_s16(vmlal_high_lane_s16(v404, v386, *v29.i8, 0), v387, *v29.i8, 1);
              v410.i64[0] = 0x8000000080000;
              v410.i64[1] = 0x8000000080000;
              v411 = vmlal_lane_s16(v410, *v387.i8, *v29.i8, 0);
              v412.i64[0] = 0x8000000080000;
              v412.i64[1] = 0x8000000080000;
              v413 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v400, v385, *v29.i8, 1), v386, *v29.i8, 2), v387, *v29.i8, 3);
              v414 = vmlal_high_lane_s16(v412, v387, *v29.i8, 0);
              v387 = *&v394[v373];
              v415 = vmlal_laneq_s16(v407, *v389.i8, v29, 4);
              v416 = vmlal_lane_s16(v405, *v389.i8, *v29.i8, 3);
              v417 = vmlal_high_lane_s16(v406, v389, *v29.i8, 3);
              v418 = vmlal_high_laneq_s16(v413, v389, v29, 4);
              v419 = vmlal_lane_s16(v408, *v389.i8, *v29.i8, 2);
              v420 = vmlal_high_lane_s16(v409, v389, *v29.i8, 2);
              v421 = vmlal_lane_s16(v411, *v389.i8, *v29.i8, 1);
              v422 = vmlal_high_lane_s16(v414, v389, *v29.i8, 1);
              v389 = *&v394[v373 + 32];
              v423 = vmlal_laneq_s16(v415, *v392.i8, v29, 5);
              v424 = vmlal_laneq_s16(v416, *v392.i8, v29, 4);
              v425 = vmlal_high_laneq_s16(v417, v392, v29, 4);
              v426 = vmlal_lane_s16(v419, *v392.i8, *v29.i8, 3);
              v427 = vmlal_high_lane_s16(v420, v392, *v29.i8, 3);
              v428 = vmlal_high_laneq_s16(v418, v392, v29, 5);
              v429 = vmlal_lane_s16(v421, *v392.i8, *v29.i8, 2);
              v430 = vmlal_high_lane_s16(v422, v392, *v29.i8, 2);
              v385 = v392;
              v392 = *&v394[v373 + 64];
              v431 = vmlal_laneq_s16(v424, *v396.i8, v29, 5);
              v432 = vmlal_laneq_s16(v423, *v396.i8, v29, 6);
              v433 = vmlal_high_laneq_s16(v425, v396, v29, 5);
              v434 = vmlal_laneq_s16(v426, *v396.i8, v29, 4);
              v435 = vmlal_high_laneq_s16(v427, v396, v29, 4);
              v436 = vmlal_lane_s16(v429, *v396.i8, *v29.i8, 3);
              v437 = vmlal_high_lane_s16(v430, v396, *v29.i8, 3);
              v438 = vmlal_high_laneq_s16(v428, v396, v29, 6);
              v386 = v396;
              v396 = *&v394[v373 + 96];
              v439 = vhaddq_u16(*&v388[v373], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v432, *v387.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(v438, v387, v29, 7), 7uLL));
              v440 = vhaddq_u16(*&v390[v373 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v431, *v387.i8, v29, 6), *v389.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v433, v387, v29, 6), v389, v29, 7), 7uLL));
              v441 = vhaddq_u16(*&v393[v373 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v436, *v387.i8, v29, 4), *v389.i8, v29, 5), *v392.i8, v29, 6), *v396.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v437, v387, v29, 4), v389, v29, 5), v392, v29, 6), v396, v29, 7), 7uLL));
              *v431.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v391[v373 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v434, *v387.i8, v29, 5), *v389.i8, v29, 6), *v392.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v435, v387, v29, 5), v389, v29, 6), v392, v29, 7), 7uLL)), v381), 4uLL);
              *(v14 + v383) = vqrshrun_n_s16(vaddq_s16(v439, v381), 4uLL);
              *&v382[v383] = vqrshrun_n_s16(vaddq_s16(v440, v381), 4uLL);
              *&v380[v383] = v431.i64[0];
              v394 += 128;
              v393 += v376;
              *(result + v383) = vqrshrun_n_s16(vaddq_s16(v441, v381), 4uLL);
              v391 += v376;
              v390 += v376;
              v388 = (v388 + v376);
              v383 += v374;
              v395 -= 4;
            }

            while (v395);
            v375 += 2;
            v14 += 2;
            v373 += 2;
            ++result;
            v380 += 8;
            v382 += 8;
            v19 -= 8;
          }

          while (v19);
        }
      }
    }

    else
    {
      v280 = *(a12 + 8);
      v281 = *(a12 + 16);
      if (v19 == 4)
      {
        v282 = v535[0];
        v283 = v536;
        v284 = v537;
        v285 = v538;
        v286 = v542;
        v287 = v539;
        v288 = v540[0];
        v289 = v541;
        do
        {
          v290.i64[0] = 0x8000000080000;
          v290.i64[1] = 0x8000000080000;
          v291 = vmlal_lane_s16(v290, v282, *v29.i8, 0);
          v282 = v287;
          v292.i64[0] = 0x8000000080000;
          v292.i64[1] = 0x8000000080000;
          v293.i64[0] = 0x8000000080000;
          v293.i64[1] = 0x8000000080000;
          v294 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v291, v283, *v29.i8, 1), v284, *v29.i8, 2), v285, *v29.i8, 3);
          v295 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v292, v283, *v29.i8, 0), v284, *v29.i8, 1), v285, *v29.i8, 2);
          v296 = vmlal_lane_s16(vmlal_lane_s16(v293, v284, *v29.i8, 0), v285, *v29.i8, 1);
          v297.i64[0] = 0x8000000080000;
          v297.i64[1] = 0x8000000080000;
          v298 = vmlal_lane_s16(v297, v285, *v29.i8, 0);
          v285 = *v286;
          v299 = vmlal_laneq_s16(v294, v287, v29, 4);
          v300 = vmlal_lane_s16(v295, v287, *v29.i8, 3);
          v301 = vmlal_lane_s16(v296, v287, *v29.i8, 2);
          v302 = vmlal_lane_s16(v298, v287, *v29.i8, 1);
          v287 = v286[32];
          v303 = vmlal_laneq_s16(v299, v288, v29, 5);
          v304 = vmlal_laneq_s16(v300, v288, v29, 4);
          v305 = vmlal_lane_s16(v301, v288, *v29.i8, 3);
          v306 = vmlal_lane_s16(v302, v288, *v29.i8, 2);
          v283 = v288;
          v288 = v286[64];
          v307 = vmlal_laneq_s16(v303, v289, v29, 6);
          v308 = vmlal_laneq_s16(v304, v289, v29, 5);
          v309 = vmlal_laneq_s16(v305, v289, v29, 4);
          v310 = vmlal_lane_s16(v306, v289, *v29.i8, 3);
          v284 = v289;
          v289 = v286[96];
          *v308.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v308, *v286, v29, 6), v287, v29, 7), 7uLL);
          *v309.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v309, *v286, v29, 5), v287, v29, 6), v288, v29, 7), 7uLL);
          *v310.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v310, *v286, v29, 4), v287, v29, 5), v288, v29, 6), v289, v29, 7), 7uLL);
          *v280 = vqrshrun_n_s32(vmlal_laneq_s16(v307, *v286, v29, 7), 7uLL);
          *(v280 + 2 * v281) = *v308.i8;
          *(v280 + 4 * v281) = *v309.i8;
          *(v280 + 6 * v281) = *v310.i8;
          v286 += 128;
          v280 += v281;
          v17 -= 4;
        }

        while (v17);
      }

      else
      {
        v484 = 8 * v281;
        v485 = v280 + 6 * v281;
        v486 = v280 + 4 * v281;
        v487 = v535;
        v488 = v280 + 2 * v281;
        do
        {
          v489 = 0;
          v490 = *v487->i8;
          v491 = *v487[32].i8;
          v492 = *v487[64].i8;
          v493 = *v487[96].i8;
          v494 = *v487[128].i8;
          v495 = *v487[160].i8;
          v496 = 224;
          v497 = v17;
          v498 = *v487[192].i8;
          do
          {
            result = &v487[v496];
            v499.i64[0] = 0x8000000080000;
            v499.i64[1] = 0x8000000080000;
            v500 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v499, *v490.i8, *v29.i8, 0), *v491.i8, *v29.i8, 1), *v492.i8, *v29.i8, 2), *v493.i8, *v29.i8, 3);
            v501.i64[0] = 0x8000000080000;
            v501.i64[1] = 0x8000000080000;
            v502 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v501, v490, *v29.i8, 0), v491, *v29.i8, 1), v492, *v29.i8, 2), v493, *v29.i8, 3);
            v503.i64[0] = 0x8000000080000;
            v503.i64[1] = 0x8000000080000;
            v504 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v503, *v491.i8, *v29.i8, 0), *v492.i8, *v29.i8, 1), *v493.i8, *v29.i8, 2);
            v505.i64[0] = 0x8000000080000;
            v505.i64[1] = 0x8000000080000;
            v506 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v505, v491, *v29.i8, 0), v492, *v29.i8, 1), v493, *v29.i8, 2);
            v507.i64[0] = 0x8000000080000;
            v507.i64[1] = 0x8000000080000;
            v508 = vmlal_lane_s16(vmlal_lane_s16(v507, *v492.i8, *v29.i8, 0), *v493.i8, *v29.i8, 1);
            v509.i64[0] = 0x8000000080000;
            v509.i64[1] = 0x8000000080000;
            v510 = vmlal_high_lane_s16(vmlal_high_lane_s16(v509, v492, *v29.i8, 0), v493, *v29.i8, 1);
            v511.i64[0] = 0x8000000080000;
            v511.i64[1] = 0x8000000080000;
            v512 = vmlal_lane_s16(v511, *v493.i8, *v29.i8, 0);
            v513.i64[0] = 0x8000000080000;
            v513.i64[1] = 0x8000000080000;
            v514 = vmlal_high_lane_s16(v513, v493, *v29.i8, 0);
            v493 = *v487[v496].i8;
            v515 = vmlal_laneq_s16(v500, *v494.i8, v29, 4);
            v516 = vmlal_high_laneq_s16(v502, v494, v29, 4);
            v517 = vmlal_lane_s16(v504, *v494.i8, *v29.i8, 3);
            v518 = vmlal_high_lane_s16(v506, v494, *v29.i8, 3);
            v519 = vmlal_lane_s16(v508, *v494.i8, *v29.i8, 2);
            v520 = vmlal_high_lane_s16(v510, v494, *v29.i8, 2);
            v521 = vmlal_lane_s16(v512, *v494.i8, *v29.i8, 1);
            v522 = vmlal_high_lane_s16(v514, v494, *v29.i8, 1);
            v490 = v494;
            v494 = *v487[v496 + 32].i8;
            v523 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v515, *v495.i8, v29, 5), *v498.i8, v29, 6), *v493.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v516, v495, v29, 5), v498, v29, 6), v493, v29, 7), 7uLL);
            v524 = vmlal_laneq_s16(v517, *v495.i8, v29, 4);
            v525 = vmlal_high_laneq_s16(v518, v495, v29, 4);
            v526 = vmlal_lane_s16(v519, *v495.i8, *v29.i8, 3);
            v527 = vmlal_high_lane_s16(v520, v495, *v29.i8, 3);
            v528 = vmlal_lane_s16(v521, *v495.i8, *v29.i8, 2);
            v529 = vmlal_high_lane_s16(v522, v495, *v29.i8, 2);
            v491 = v495;
            v495 = *v487[v496 + 64].i8;
            v530 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v524, *v498.i8, v29, 5), *v493.i8, v29, 6), *v494.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v525, v498, v29, 5), v493, v29, 6), v494, v29, 7), 7uLL);
            v531 = vmlal_laneq_s16(v526, *v498.i8, v29, 4);
            v532 = vmlal_high_laneq_s16(v527, v498, v29, 4);
            v533 = vmlal_lane_s16(v528, *v498.i8, *v29.i8, 3);
            v534 = vmlal_high_lane_s16(v529, v498, *v29.i8, 3);
            v492 = v498;
            v498 = *v487[v496 + 96].i8;
            *&v280->i8[v489] = v523;
            *&v488[v489] = v530;
            *&v486[v489] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v531, *v493.i8, v29, 5), *v494.i8, v29, 6), *v495.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v532, v493, v29, 5), v494, v29, 6), v495, v29, 7), 7uLL);
            *&v485[v489] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v533, *v493.i8, v29, 4), *v494.i8, v29, 5), *v495.i8, v29, 6), *v498.i8, v29, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v534, v493, v29, 4), v494, v29, 5), v495, v29, 6), v498, v29, 7), 7uLL);
            v496 += 128;
            v489 += v484;
            v497 -= 4;
          }

          while (v497);
          v487 += 2;
          v280 += 2;
          v485 += 16;
          v486 += 16;
          v488 += 16;
          v19 -= 8;
        }

        while (v19);
      }
    }
  }

  else if (v185)
  {
    if (*(a12 + 36))
    {
      return sub_27799A32C(v535, v14, v15, a12, v17, v19, v29, *v31.i8, *v32.i8);
    }

    else
    {
      v186 = *(a12 + 8);
      v187 = *(a12 + 16);
      if (v19 == 4)
      {
        v188 = v535[0];
        v189 = v536;
        v190 = v537;
        v191 = 2 * v15;
        v192 = v538;
        v193 = v540;
        v194 = v539;
        v195.i64[0] = 0xE800E800E800E800;
        v195.i64[1] = 0xE800E800E800E800;
        do
        {
          v196.i64[0] = 0x8000000080000;
          v196.i64[1] = 0x8000000080000;
          v197 = vmlal_lane_s16(v196, v188, *v29.i8, 1);
          v188 = v194;
          v198 = vmlal_lane_s16(v197, v189, *v29.i8, 2);
          v199.i64[0] = 0x8000000080000;
          v199.i64[1] = 0x8000000080000;
          v200 = vmlal_lane_s16(v199, v189, *v29.i8, 1);
          v189 = *v193;
          v201 = vmlal_lane_s16(v198, v190, *v29.i8, 3);
          v202 = vmlal_lane_s16(v200, v190, *v29.i8, 2);
          v203.i64[0] = 0x8000000080000;
          v203.i64[1] = 0x8000000080000;
          v204 = vmlal_lane_s16(v203, v190, *v29.i8, 1);
          v190 = v193[32];
          v205 = vmlal_laneq_s16(v201, v192, v29, 4);
          v206 = vmlal_lane_s16(v202, v192, *v29.i8, 3);
          v207 = vmlal_lane_s16(v204, v192, *v29.i8, 2);
          v208.i64[0] = 0x8000000080000;
          v208.i64[1] = 0x8000000080000;
          v209 = vmlal_lane_s16(v208, v192, *v29.i8, 1);
          v192 = v193[64];
          v210 = vmlal_laneq_s16(v205, v194, v29, 5);
          v211 = vmlal_laneq_s16(v206, v194, v29, 4);
          v212 = vmlal_lane_s16(v207, v194, *v29.i8, 3);
          v213 = vmlal_lane_s16(v209, v194, *v29.i8, 2);
          v194 = v193[96];
          v214.i64[0] = *v186;
          v215.i64[0] = *(v186 + 4 * v187);
          v214.i64[1] = *(v186 + 2 * v187);
          v215.i64[1] = *(v186 + 6 * v187);
          *v211.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v214, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v210, *v193, v29, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v211, *v193, v29, 5), v190, v29, 6), 7uLL)), v195), 4uLL);
          *v210.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v215, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v212, *v193, v29, 4), v190, v29, 5), v192, v29, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v213, *v193, *v29.i8, 3), v190, v29, 4), v192, v29, 5), v194, v29, 6), 7uLL)), v195), 4uLL);
          *v14 = v211.i32[0];
          *(v14 + v15) = v211.i32[1];
          *(v14 + v191) = v210.i32[0];
          result = (v14 + v15 + v191);
          v14 += v15;
          v193 += 128;
          v186 += v187;
          result->i32[0] = v210.i32[1];
          v17 -= 4;
        }

        while (v17);
      }

      else
      {
        v311 = 0;
        v312 = 4 * v15;
        v313 = v535;
        v314 = 8 * v187;
        v315 = v186 + 6 * v187;
        v316 = v186 + 4 * v187;
        v317 = v186 + 2 * v187;
        result = (v14 + 3 * v15);
        v318 = v14 + 2 * v15;
        v319.i64[0] = 0xE800E800E800E800;
        v319.i64[1] = 0xE800E800E800E800;
        v320 = v14 + v15;
        do
        {
          v321 = 0;
          v322 = *v313->i8;
          v323 = *v313[32].i8;
          v324 = v186;
          v325 = *v313[64].i8;
          v326 = v317;
          v327 = v316;
          v328 = *v313[96].i8;
          v329 = v315;
          v330 = v540;
          v331 = v17;
          v332 = *v313[128].i8;
          do
          {
            v333.i64[0] = 0x8000000080000;
            v333.i64[1] = 0x8000000080000;
            v334 = vmlal_lane_s16(v333, *v322.i8, *v29.i8, 1);
            v335.i64[0] = 0x8000000080000;
            v335.i64[1] = 0x8000000080000;
            v336 = vmlal_high_lane_s16(v335, v322, *v29.i8, 1);
            v322 = v332;
            v337 = vmlal_lane_s16(v334, *v323.i8, *v29.i8, 2);
            v338 = vmlal_high_lane_s16(v336, v323, *v29.i8, 2);
            v339.i64[0] = 0x8000000080000;
            v339.i64[1] = 0x8000000080000;
            v340 = vmlal_lane_s16(v339, *v323.i8, *v29.i8, 1);
            v341.i64[0] = 0x8000000080000;
            v341.i64[1] = 0x8000000080000;
            v342 = vmlal_high_lane_s16(v341, v323, *v29.i8, 1);
            v323 = *&v330[v311];
            v343 = vmlal_lane_s16(v337, *v325.i8, *v29.i8, 3);
            v344 = vmlal_lane_s16(v340, *v325.i8, *v29.i8, 2);
            v345 = vmlal_high_lane_s16(v342, v325, *v29.i8, 2);
            v346.i64[0] = 0x8000000080000;
            v346.i64[1] = 0x8000000080000;
            v347 = vmlal_lane_s16(v346, *v325.i8, *v29.i8, 1);
            v348 = vmlal_high_lane_s16(v338, v325, *v29.i8, 3);
            v349.i64[0] = 0x8000000080000;
            v349.i64[1] = 0x8000000080000;
            v350 = vmlal_high_lane_s16(v349, v325, *v29.i8, 1);
            v325 = *&v330[v311 + 32];
            v351 = vmlal_lane_s16(v344, *v328.i8, *v29.i8, 3);
            v352 = vmlal_high_lane_s16(v345, v328, *v29.i8, 3);
            v353 = vmlal_laneq_s16(v343, *v328.i8, v29, 4);
            v354 = vmlal_lane_s16(v347, *v328.i8, *v29.i8, 2);
            v355 = vmlal_high_lane_s16(v350, v328, *v29.i8, 2);
            v356.i64[0] = 0x8000000080000;
            v356.i64[1] = 0x8000000080000;
            v357 = vmlal_lane_s16(v356, *v328.i8, *v29.i8, 1);
            v358.i64[0] = 0x8000000080000;
            v358.i64[1] = 0x8000000080000;
            v359 = vmlal_high_laneq_s16(v348, v328, v29, 4);
            v360 = vmlal_high_lane_s16(v358, v328, *v29.i8, 1);
            v328 = *&v330[v311 + 64];
            v361 = vmlal_laneq_s16(v353, *v332.i8, v29, 5);
            v362 = vmlal_laneq_s16(v351, *v332.i8, v29, 4);
            v363 = vmlal_high_laneq_s16(v352, v332, v29, 4);
            v364 = vmlal_high_laneq_s16(v359, v332, v29, 5);
            v365 = vmlal_lane_s16(v354, *v332.i8, *v29.i8, 3);
            v366 = vmlal_high_lane_s16(v355, v332, *v29.i8, 3);
            v367 = vmlal_lane_s16(v357, *v332.i8, *v29.i8, 2);
            v368 = vmlal_high_lane_s16(v360, v332, *v29.i8, 2);
            v332 = *&v330[v311 + 96];
            v369 = vhaddq_u16(*&v324[v311], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v361, *v323.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(v364, v323, v29, 6), 7uLL));
            v370 = vhaddq_u16(*&v326[v311 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v362, *v323.i8, v29, 5), *v325.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v363, v323, v29, 5), v325, v29, 6), 7uLL));
            v371 = vaddq_s16(vhaddq_u16(*&v327[v311 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v365, *v323.i8, v29, 4), *v325.i8, v29, 5), *v328.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v366, v323, v29, 4), v325, v29, 5), v328, v29, 6), 7uLL)), v319);
            v372 = vaddq_s16(vhaddq_u16(*&v329[v311 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v367, *v323.i8, *v29.i8, 3), *v325.i8, v29, 4), *v328.i8, v29, 5), *v332.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v368, v323, *v29.i8, 3), v325, v29, 4), v328, v29, 5), v332, v29, 6), 7uLL)), v319);
            *(v14 + v321) = vqrshrun_n_s16(vaddq_s16(v369, v319), 4uLL);
            *&v320[v321] = vqrshrun_n_s16(vaddq_s16(v370, v319), 4uLL);
            v330 += 128;
            *&v318[v321] = vqrshrun_n_s16(v371, 4uLL);
            v329 += v314;
            v327 += v314;
            v326 += v314;
            *(result + v321) = vqrshrun_n_s16(v372, 4uLL);
            v324 = (v324 + v314);
            v321 += v312;
            v331 -= 4;
          }

          while (v331);
          v313 += 2;
          v14 += 2;
          v311 += 2;
          ++result;
          v318 += 8;
          v320 += 8;
          v19 -= 8;
        }

        while (v19);
      }
    }
  }

  else
  {
    v253 = *(a12 + 8);
    v254 = *(a12 + 16);
    if (v19 == 4)
    {
      v255 = v535[0];
      v256 = v536;
      v257 = v537;
      v258 = v538;
      v259 = v539;
      v260 = v540;
      do
      {
        v261.i64[0] = 0x8000000080000;
        v261.i64[1] = 0x8000000080000;
        v262 = vmlal_lane_s16(v261, v255, *v29.i8, 1);
        v255 = v259;
        v263 = vmlal_lane_s16(v262, v256, *v29.i8, 2);
        v264.i64[0] = 0x8000000080000;
        v264.i64[1] = 0x8000000080000;
        v265 = vmlal_lane_s16(v264, v256, *v29.i8, 1);
        v256 = *v260;
        v266 = vmlal_lane_s16(v263, v257, *v29.i8, 3);
        v267 = vmlal_lane_s16(v265, v257, *v29.i8, 2);
        v268.i64[0] = 0x8000000080000;
        v268.i64[1] = 0x8000000080000;
        v269 = vmlal_lane_s16(v268, v257, *v29.i8, 1);
        v257 = v260[32];
        v270 = vmlal_laneq_s16(v266, v258, v29, 4);
        v271 = vmlal_lane_s16(v267, v258, *v29.i8, 3);
        v272 = vmlal_lane_s16(v269, v258, *v29.i8, 2);
        v273.i64[0] = 0x8000000080000;
        v273.i64[1] = 0x8000000080000;
        v274 = vmlal_lane_s16(v273, v258, *v29.i8, 1);
        v258 = v260[64];
        v275 = vmlal_laneq_s16(v270, v259, v29, 5);
        v276 = vmlal_laneq_s16(v271, v259, v29, 4);
        v277 = vmlal_lane_s16(v272, v259, *v29.i8, 3);
        v278 = vmlal_lane_s16(v274, v259, *v29.i8, 2);
        v259 = v260[96];
        *v276.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v276, *v260, v29, 5), v257, v29, 6), 7uLL);
        *v277.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v277, *v260, v29, 4), v257, v29, 5), v258, v29, 6), 7uLL);
        v279 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v278, *v260, *v29.i8, 3), v257, v29, 4), v258, v29, 5);
        *v253 = vqrshrun_n_s32(vmlal_laneq_s16(v275, *v260, v29, 6), 7uLL);
        *(v253 + 2 * v254) = *v276.i8;
        *(v253 + 4 * v254) = *v277.i8;
        *(v253 + 6 * v254) = vqrshrun_n_s32(vmlal_laneq_s16(v279, v259, v29, 6), 7uLL);
        v260 += 128;
        v253 += v254;
        v17 -= 4;
      }

      while (v17);
    }

    else
    {
      v442 = 8 * v254;
      v443 = v253 + 6 * v254;
      v444 = v253 + 4 * v254;
      v445 = v535;
      v446 = v253 + 2 * v254;
      do
      {
        v447 = 0;
        v448 = *v445->i8;
        v449 = *v445[32].i8;
        v450 = *v445[64].i8;
        v451 = *v445[96].i8;
        v452 = 160;
        v453 = v17;
        v454 = *v445[128].i8;
        do
        {
          result = &v445[v452];
          v455.i64[0] = 0x8000000080000;
          v455.i64[1] = 0x8000000080000;
          v456 = vmlal_lane_s16(vmlal_lane_s16(v455, *v448.i8, *v29.i8, 1), *v449.i8, *v29.i8, 2);
          v457.i64[0] = 0x8000000080000;
          v457.i64[1] = 0x8000000080000;
          v458 = vmlal_high_lane_s16(vmlal_high_lane_s16(v457, v448, *v29.i8, 1), v449, *v29.i8, 2);
          v459.i64[0] = 0x8000000080000;
          v459.i64[1] = 0x8000000080000;
          v460 = vmlal_lane_s16(v459, *v449.i8, *v29.i8, 1);
          v461.i64[0] = 0x8000000080000;
          v461.i64[1] = 0x8000000080000;
          v462 = vmlal_high_lane_s16(v461, v449, *v29.i8, 1);
          v449 = *v445[v452].i8;
          v463 = vmlal_lane_s16(v456, *v450.i8, *v29.i8, 3);
          v464 = vmlal_high_lane_s16(v458, v450, *v29.i8, 3);
          v465 = vmlal_lane_s16(v460, *v450.i8, *v29.i8, 2);
          v466 = vmlal_high_lane_s16(v462, v450, *v29.i8, 2);
          v467.i64[0] = 0x8000000080000;
          v467.i64[1] = 0x8000000080000;
          v468 = vmlal_lane_s16(v467, *v450.i8, *v29.i8, 1);
          v469.i64[0] = 0x8000000080000;
          v469.i64[1] = 0x8000000080000;
          v470 = vmlal_high_lane_s16(v469, v450, *v29.i8, 1);
          v450 = *v445[v452 + 32].i8;
          v471 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v463, *v451.i8, v29, 4), *v454.i8, v29, 5), *v449.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v464, v451, v29, 4), v454, v29, 5), v449, v29, 6), 7uLL);
          v472 = vmlal_lane_s16(v465, *v451.i8, *v29.i8, 3);
          v473 = vmlal_high_lane_s16(v466, v451, *v29.i8, 3);
          v474 = vmlal_lane_s16(v468, *v451.i8, *v29.i8, 2);
          v475 = vmlal_high_lane_s16(v470, v451, *v29.i8, 2);
          v464.i64[0] = 0x8000000080000;
          v464.i64[1] = 0x8000000080000;
          v476 = vmlal_lane_s16(v464, *v451.i8, *v29.i8, 1);
          v477.i64[0] = 0x8000000080000;
          v477.i64[1] = 0x8000000080000;
          v478 = vmlal_high_lane_s16(v477, v451, *v29.i8, 1);
          v451 = *v445[v452 + 64].i8;
          v479 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v472, *v454.i8, v29, 4), *v449.i8, v29, 5), *v450.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v473, v454, v29, 4), v449, v29, 5), v450, v29, 6), 7uLL);
          v480 = vmlal_lane_s16(v474, *v454.i8, *v29.i8, 3);
          v481 = vmlal_high_lane_s16(v475, v454, *v29.i8, 3);
          v482 = vmlal_lane_s16(v476, *v454.i8, *v29.i8, 2);
          v483 = vmlal_high_lane_s16(v478, v454, *v29.i8, 2);
          v448 = v454;
          v454 = *v445[v452 + 96].i8;
          *&v253->i8[v447] = v471;
          *&v446[v447] = v479;
          *&v444[v447] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v480, *v449.i8, v29, 4), *v450.i8, v29, 5), *v451.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v481, v449, v29, 4), v450, v29, 5), v451, v29, 6), 7uLL);
          *&v443[v447] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v482, *v449.i8, *v29.i8, 3), *v450.i8, v29, 4), *v451.i8, v29, 5), *v454.i8, v29, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v483, v449, *v29.i8, 3), v450, v29, 4), v451, v29, 5), v454, v29, 6), 7uLL);
          v452 += 128;
          v447 += v442;
          v453 -= 4;
        }

        while (v453);
        v445 += 2;
        v253 += 2;
        v443 += 16;
        v444 += 16;
        v446 += 16;
        v19 -= 8;
      }

      while (v19);
    }
  }

  return result;
}

uint8x8_t *sub_277A70F14(uint8x8_t *result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, uint16x4_t a8, uint16x4_t a9, double a10, double a11, int16x8_t a12, int16x8_t a13, uint32x4_t a14)
{
  v15 = *(a7 + 8);
  v16 = *(a7 + 16);
  if (a5 == 4)
  {
    a8.i32[0] = *(a7 + 40);
    a9.i32[0] = *(a7 + 44);
    v17.i64[0] = 0xE800E800E800E800;
    v17.i64[1] = 0xE800E800E800E800;
    do
    {
      v14.i32[0] = 402659328;
      v14.i16[2] = 6144;
      v14.i16[3] = 6144;
      a12.i32[0] = 402659328;
      a12.i16[2] = 6144;
      a12.i16[3] = 6144;
      a13.i32[0] = 402659328;
      a13.i16[2] = 6144;
      a13.i16[3] = 6144;
      a14.i32[0] = 402659328;
      a14.i16[2] = 6144;
      a14.i16[3] = 6144;
      v14 = vmlal_lane_u16(vmull_lane_u16(*&vmlal_u8(v14, *result, 0x1010101010101010), a9, 0), *v15, a8, 0);
      v18 = vshrn_high_n_s32(vshrn_n_s32(v14, 4uLL), vmlal_lane_u16(vmull_lane_u16(*&vmlal_u8(a12, *(result + a2), 0x1010101010101010), a9, 0), *(v15 + 2 * v16), a8, 0), 4uLL);
      a14 = vmlal_lane_u16(vmull_lane_u16(*&vmlal_u8(a14, *(result + 3 * a2), 0x1010101010101010), a9, 0), *(v15 + 6 * v16), a8, 0);
      v19 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*&vmlal_u8(a13, *(result + 2 * a2), 0x1010101010101010), a9, 0), *(v15 + 4 * v16), a8, 0), 4uLL), a14, 4uLL);
      a13 = vaddq_s16(v18, v17);
      a12 = vaddq_s16(v19, v17);
      *a13.i8 = vqrshrun_n_s16(a13, 4uLL);
      *a12.i8 = vqrshrun_n_s16(a12, 4uLL);
      *a3 = a13.i32[0];
      *(a3 + a4) = a13.i32[1];
      *(a3 + 2 * a4) = a12.i32[0];
      *(a3 + a4 + (2 * a4)) = a12.i32[1];
      result = (result + 4 * a2);
      a3 += a4;
      v15 += v16;
      a6 -= 4;
    }

    while (a6);
  }

  else
  {
    v20 = 4 * a2;
    a8.i32[0] = *(a7 + 40);
    a9.i32[0] = *(a7 + 44);
    v21 = 4 * a4;
    v22 = result + 3 * a2;
    v23 = result + 2 * a2;
    v24 = result + a2;
    v25 = v15 + 6 * v16;
    v26 = 8 * v16;
    v27 = v15 + 4 * v16;
    v28 = v15 + 2 * v16;
    v29 = a3 + 3 * a4;
    v30 = a3 + 2 * a4;
    v31 = a3 + a4;
    v32.i64[0] = 0xE800E800E800E800;
    v32.i64[1] = 0xE800E800E800E800;
    do
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35.i64[0] = 0x1800180018001800;
        v35.i64[1] = 0x1800180018001800;
        v36 = vmlal_u8(v35, result[v34 / 8], 0x1010101010101010);
        v37.i64[0] = 0x1800180018001800;
        v37.i64[1] = 0x1800180018001800;
        v38 = vmlal_u8(v37, *&v24[v34], 0x1010101010101010);
        v39.i64[0] = 0x1800180018001800;
        v39.i64[1] = 0x1800180018001800;
        v40 = vmlal_u8(v39, *&v23[v34], 0x1010101010101010);
        v41.i64[0] = 0x1800180018001800;
        v41.i64[1] = 0x1800180018001800;
        v42 = vmlal_u8(v41, *&v22[v34], 0x1010101010101010);
        v43 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v36.i8, a9, 0), v15[v33 / 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v36, a9, 0), *v15[v33 / 8].i8, a8, 0), 4uLL);
        v44 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v38.i8, a9, 0), *&v28[v33], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v38, a9, 0), *&v28[v33], a8, 0), 4uLL);
        v45 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v40.i8, a9, 0), *&v27[v33], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v40, a9, 0), *&v27[v33], a8, 0), 4uLL);
        v46 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v42.i8, a9, 0), *&v25[v33], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v42, a9, 0), *&v25[v33], a8, 0), 4uLL);
        *&a3[v34 / 4] = vqrshrun_n_s16(vaddq_s16(v43, v32), 4uLL);
        *&v31[v34] = vqrshrun_n_s16(vaddq_s16(v44, v32), 4uLL);
        *&v30[v34] = vqrshrun_n_s16(vaddq_s16(v45, v32), 4uLL);
        *&v29[v34] = vqrshrun_n_s16(vaddq_s16(v46, v32), 4uLL);
        v34 += 8;
        v33 += 16;
      }

      while (a5 != v34);
      result = (result + v20);
      a3 = (a3 + v21);
      v22 += v20;
      v23 += v20;
      v24 += v20;
      v25 += v26;
      v27 += v26;
      v28 += v26;
      v15 = (v15 + v26);
      v29 += v21;
      v30 += v21;
      v31 += v21;
      a6 -= 4;
    }

    while (a6);
  }

  return result;
}

uint64_t sub_277A711B8(uint64_t result, int a2, _DWORD *_X2, int a4, int a5, int a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint16x4_t a14, uint64_t a15)
{
  if (*a15)
  {
    if (*(a15 + 36))
    {
      return sub_277A71E08(result, a2, _X2, a4, a5, a6, *a7, *(a7 + 8), a9, a10, a11, a12, a13, a14, a8, a15);
    }

    else
    {
      v15 = *(a7 + 8);
      v16 = *a7 + 2 * (a8 & 0xF) * v15;
      v17 = (result - (v15 >> 1) + 1);
      _X15 = *(a15 + 8);
      v19 = *(a15 + 16);
      if (a5 == 4)
      {
        v20 = vshr_n_s16(*(v16 + 4), 1uLL);
        v21 = (result - (v15 >> 1) + 3);
        v22 = vdup_lane_s16(v20, 0);
        v23 = vdup_lane_s16(v20, 1);
        v24 = vdup_lane_s16(v20, 2);
        v25 = vdup_lane_s16(v20, 3);
        v26 = 2 * v19;
        do
        {
          v27 = vmovl_u8(*v21);
          __asm
          {
            PRFM            #0, [X15]
            PRFM            #0, [X2]
          }

          *v27.i8 = vadd_s16(vhadd_u16(*_X15, vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v27, v27, 2uLL), v23), *v27.i8, v22), *&vextq_s8(v27, v27, 4uLL), v24), *&vextq_s8(v27, v27, 6uLL), v25), 2uLL)), 0xE800E800E800E800);
          *_X2 = vqrshrun_n_s16(v27, 4uLL).u32[0];
          v21 = (v21 + a2);
          _X2 = (_X2 + a4);
          _X15 = (_X15 + v26);
          --a6;
        }

        while (a6);
      }

      else
      {
        v48 = vshrq_n_s16(*v16, 1uLL);
        v49 = vdupq_lane_s16(*v48.i8, 0);
        v50 = vdupq_lane_s16(*v48.i8, 1);
        v51 = vdupq_lane_s16(*v48.i8, 2);
        v52 = vdupq_lane_s16(*v48.i8, 3);
        v53 = vdupq_laneq_s16(v48, 4);
        v54 = vdupq_laneq_s16(v48, 5);
        v55 = vdupq_laneq_s16(v48, 6);
        v56 = vdupq_laneq_s16(v48, 7);
        if (a6 < 8)
        {
          v183 = a6;
        }

        else
        {
          v325 = 4 * v19;
          v57 = 8 * a2;
          v58 = 8 * a4;
          v60 = 3 * a4;
          v61 = &_X2[a4] + v60;
          v62 = &_X2[a4] + 2 * a4;
          v63 = _X2 + a4 + (4 * a4);
          v64 = &_X2[a4];
          v65 = _X2 + v60;
          v66 = _X2 + 2 * a4;
          v67 = _X2 + a4;
          result = result - (v15 >> 1) + 8;
          v68.i64[0] = 0xE800E800E800E800;
          v68.i64[1] = 0xE800E800E800E800;
          do
          {
            v69 = 0;
            *v70.i8 = *v17;
            *v71.i8 = *(v17 + a2);
            v72 = (v17 + a2 + a2);
            v73.i64[0] = *v72;
            v74 = (v72 + a2);
            v75.i64[0] = *v74;
            v76 = (v74 + a2);
            v77 = *v76;
            v78 = (v76 + a2);
            v79 = *v78;
            v80 = (v78 + a2);
            v70.i64[1] = v77;
            v71.i64[1] = v79;
            v81 = vtrn1q_s8(v70, v71);
            v82 = vtrn2q_s8(v70, v71);
            v73.i64[1] = *v80;
            v75.i64[1] = *(v80 + a2);
            v83 = vtrn1q_s8(v73, v75);
            v84 = vtrn2q_s8(v73, v75);
            v85 = vtrn1q_s16(v81, v83);
            _X8 = _X15 + 2 * v19;
            v87 = vtrn2q_s16(v81, v83);
            v88 = vtrn1q_s16(v82, v84);
            v89 = vtrn2q_s16(v82, v84);
            v90 = vuzp1q_s32(v85, v88);
            v91 = vuzp2q_s32(v85, v88);
            v92 = vuzp1q_s32(v87, v89);
            __asm
            {
              PRFM            #0, [X15]
              PRFM            #0, [X8]
            }

            _X8 = _X15 + 4 * v19;
            __asm { PRFM            #0, [X8] }

            _X8 = _X15 + 6 * v19;
            __asm { PRFM            #0, [X8] }

            _X8 = &_X15[v325 / 4];
            v100 = vzip2_s32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
            v101 = vmovl_u8(*v90.i8);
            v102 = vmovl_high_u8(v90);
            v103 = vmovl_u8(*v92.i8);
            v104 = vmovl_high_u8(v92);
            v105 = vmovl_u8(*v91.i8);
            v106 = vmovl_high_u8(v91);
            v107 = vmovl_u8(v100);
            __asm { PRFM            #0, [X8] }

            _X8 = _X15 + 10 * v19;
            __asm { PRFM            #0, [X8] }

            _X8 = _X15 + 12 * v19;
            __asm { PRFM            #0, [X8] }

            _X8 = _X15 + 14 * v19;
            __asm { PRFM            #0, [X8] }

            v115 = _X15;
            do
            {
              v116.i64[0] = *(result + v69);
              v117 = (result + v69 + a2);
              v118.i64[0] = *v117;
              v119 = (v117 + a2);
              v120.i64[0] = *v119;
              v121 = (v119 + a2);
              v122.i64[0] = *v121;
              v123 = (v121 + a2);
              v124 = *v123;
              v125 = (v123 + a2);
              v126 = *v125;
              v127 = (v125 + a2);
              v116.i64[1] = v124;
              v118.i64[1] = v126;
              v128 = vtrn1q_s8(v116, v118);
              v120.i64[1] = *v127;
              v129 = vtrn2q_s8(v116, v118);
              v122.i64[1] = *(v127 + a2);
              v130 = vtrn1q_s8(v120, v122);
              v131 = vtrn2q_s8(v120, v122);
              v132 = vtrn1q_s16(v128, v130);
              v133 = vtrn2q_s16(v128, v130);
              v134 = vtrn1q_s16(v129, v131);
              v135 = vtrn2q_s16(v129, v131);
              v136 = vuzp1q_s32(v132, v134);
              v137 = vuzp2q_s32(v132, v134);
              v138 = vuzp1q_s32(v133, v135);
              v139 = vuzp2q_s32(v133, v135);
              v140 = vmovl_u8(*v136.i8);
              v141 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v107, v55), v106, v54), v105, v53), v104, v52), v103, v51), v102, v50), v101, v49);
              v101 = vmovl_high_u8(v136);
              v142 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v107, v54), v106, v53), v105, v52), v104, v51), v103, v50), v102, v49);
              v102 = vmovl_u8(*v138.i8);
              v143 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v107, v53), v106, v52), v105, v51), v104, v50), v103, v49);
              v103 = vmovl_high_u8(v138);
              v144 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v107, v52), v106, v51), v105, v50), v104, v49);
              v104 = vmovl_u8(*v137.i8);
              v145 = vmlaq_s16(vmlaq_s16(vmulq_s16(v107, v51), v106, v50), v105, v49);
              v105 = vmovl_high_u8(v137);
              v146 = vmlaq_s16(vmulq_s16(v107, v50), v106, v49);
              v106 = vmovl_u8(*v139.i8);
              v147 = vmulq_s16(v107, v49);
              v107 = vmovl_high_u8(v139);
              v139.i64[0] = 0x1800180018001800;
              v139.i64[1] = 0x1800180018001800;
              v148 = vrsraq_n_s16(v139, vmlaq_s16(v141, v56, v140), 2uLL);
              v141.i64[0] = 0x1800180018001800;
              v141.i64[1] = 0x1800180018001800;
              v149 = vrsraq_n_s16(v141, vmlaq_s16(vmlaq_s16(v142, v55, v140), v56, v101), 2uLL);
              v142.i64[0] = 0x1800180018001800;
              v142.i64[1] = 0x1800180018001800;
              v150 = vrsraq_n_s16(v142, vmlaq_s16(vmlaq_s16(vmlaq_s16(v143, v54, v140), v55, v101), v56, v102), 2uLL);
              v143.i64[0] = 0x1800180018001800;
              v143.i64[1] = 0x1800180018001800;
              v151 = vrsraq_n_s16(v143, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v144, v53, v140), v54, v101), v55, v102), v56, v103), 2uLL);
              v144.i64[0] = 0x1800180018001800;
              v144.i64[1] = 0x1800180018001800;
              v152 = vrsraq_n_s16(v144, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v145, v52, v140), v53, v101), v54, v102), v55, v103), v56, v104), 2uLL);
              v145.i64[0] = 0x1800180018001800;
              v145.i64[1] = 0x1800180018001800;
              v153 = vrsraq_n_s16(v145, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v146, v51, v140), v52, v101), v53, v102), v54, v103), v55, v104), v56, v105), 2uLL);
              v146.i64[0] = 0x1800180018001800;
              v146.i64[1] = 0x1800180018001800;
              v154 = vrsraq_n_s16(v146, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v147, v50, v140), v51, v101), v52, v102), v53, v103), v54, v104), v55, v105), v56, v106), 2uLL);
              v155 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v50, v101), v49, v140), v51, v102), v52, v103), v53, v104), v54, v105), v55, v106), v56, v107);
              v140.i64[0] = 0x1800180018001800;
              v140.i64[1] = 0x1800180018001800;
              v156 = vrsraq_n_s16(v140, v155, 2uLL);
              v157 = vtrn1q_s16(v148, v149);
              v158 = vtrn2q_s16(v148, v149);
              v159 = vtrn1q_s16(v150, v151);
              v160 = vtrn2q_s16(v150, v151);
              v161 = vtrn1q_s16(v152, v153);
              v162 = vtrn2q_s16(v152, v153);
              v163 = vtrn1q_s16(v154, v156);
              v164 = vtrn2q_s16(v154, v156);
              v165 = vtrn1q_s32(v157, v159);
              v166 = vtrn2q_s32(v157, v159);
              v167 = vtrn1q_s32(v158, v160);
              v168 = vtrn2q_s32(v158, v160);
              v169 = vtrn1q_s32(v161, v163);
              v170 = vtrn2q_s32(v161, v163);
              v171 = vtrn1q_s32(v162, v164);
              v172 = vzip2q_s64(v165, v169);
              v165.i64[1] = v169.i64[0];
              v173 = vtrn2q_s32(v162, v164);
              v174 = vzip2q_s64(v167, v171);
              v167.i64[1] = v171.i64[0];
              v175 = vzip2q_s64(v166, v170);
              v166.i64[1] = v170.i64[0];
              v170.i64[0] = v168.i64[0];
              v170.i64[1] = v173.i64[0];
              v176 = vzip2q_s64(v168, v173);
              v177 = *(v115 + 4 * v19);
              v178 = *(v115 + 6 * v19);
              v179 = vhaddq_u16(*v115, v165);
              *v165.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v115 + 2 * v19), v167), v68), 4uLL);
              *&_X2[v69 / 4] = vqrshrun_n_s16(vaddq_s16(v179, v68), 4uLL);
              *&v67[v69] = v165.i64[0];
              *&v66[v69] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v177, v166), v68), 4uLL);
              *&v65[v69] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v178, v170), v68), 4uLL);
              v180 = vhaddq_u16(*(v115 + 2 * v19 + 2 * v325), v174);
              v181 = vaddq_s16(vhaddq_u16(*(v115 + 4 * v19 + 2 * v325), v175), v68);
              v182 = vaddq_s16(vhaddq_u16(*(v115 + 6 * v19 + 2 * v325), v176), v68);
              *&v64[v69 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v115 + 2 * v325), v172), v68), 4uLL);
              *&v63[v69] = vqrshrun_n_s16(vaddq_s16(v180, v68), 4uLL);
              *&v62[v69] = vqrshrun_n_s16(v181, 4uLL);
              *&v61[v69] = vqrshrun_n_s16(v182, 4uLL);
              ++v115;
              v69 += 8;
            }

            while (a5 != v69);
            _X15 += 2 * v19;
            v17 = (v17 + v57);
            _X2 = (_X2 + v58);
            v183 = a6 - 8;
            v61 += v58;
            v62 += v58;
            v63 += v58;
            v64 = (v64 + v58);
            v65 += v58;
            v66 += v58;
            v67 += v58;
            result += v57;
            v184 = a6 <= 15;
            a6 -= 8;
          }

          while (!v184);
        }

        if (v183 >= 1)
        {
          v309.i64[0] = 0xE800E800E800E800;
          v309.i64[1] = 0xE800E800E800E800;
          do
          {
            v310 = 0;
            v311 = vmovl_u8(*v17);
            __asm { PRFM            #0, [X15] }

            v313 = _X15;
            do
            {
              v314 = vmovl_u8(v17[v310 / 2 + 1]);
              v315.i64[0] = 0x1800180018001800;
              v315.i64[1] = 0x1800180018001800;
              v316 = *v313++;
              *&_X2[v310] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v316, vrsraq_n_s16(v315, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v311, v49), vextq_s8(v311, v314, 2uLL), v50), vextq_s8(v311, v314, 4uLL), v51), vextq_s8(v311, v314, 6uLL), v52), vextq_s8(v311, v314, 8uLL), v53), vextq_s8(v311, v314, 0xAuLL), v54), vextq_s8(v311, v314, 0xCuLL), v55), vextq_s8(v311, v314, 0xEuLL), v56), 2uLL)), v309), 4uLL);
              v310 += 2;
              v311 = v314;
            }

            while (a5 != (v310 * 4));
            v17 = (v17 + a2);
            _X15 = (_X15 + 2 * v19);
            _X2 = (_X2 + a4);
            _VF = __OFSUB__(v183--, 1);
          }

          while (!((v183 < 0) ^ _VF | (v183 == 0)));
        }
      }
    }
  }

  else
  {
    v34 = *(a7 + 8);
    v35 = *a7 + 2 * (a8 & 0xF) * v34;
    v36 = (result - (v34 >> 1) + 1);
    _X8 = *(a15 + 8);
    v38 = *(a15 + 16);
    if (a5 == 4)
    {
      v39 = vshr_n_s16(*(v35 + 4), 1uLL);
      v40 = vdup_lane_s16(v39, 0);
      v41 = vdup_lane_s16(v39, 1);
      v42 = vdup_lane_s16(v39, 2);
      v43 = (v36 + 2);
      v44 = vdup_lane_s16(v39, 3);
      v45 = 2 * v38;
      do
      {
        v46 = vmovl_u8(*v43);
        __asm { PRFM            #0, [X8] }

        *_X8 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v46, v46, 2uLL), v41), *v46.i8, v40), *&vextq_s8(v46, v46, 4uLL), v42), *&vextq_s8(v46, v46, 6uLL), v44), 2uLL);
        v43 = (v43 + a2);
        _X8 = (_X8 + v45);
        --a6;
      }

      while (a6);
    }

    else
    {
      v185 = vshrq_n_s16(*v35, 1uLL);
      v186 = vdupq_lane_s16(*v185.i8, 0);
      v187 = vdupq_lane_s16(*v185.i8, 1);
      v188 = vdupq_lane_s16(*v185.i8, 2);
      v189 = vdupq_lane_s16(*v185.i8, 3);
      v190 = vdupq_laneq_s16(v185, 4);
      v191 = vdupq_laneq_s16(v185, 5);
      v192 = vdupq_laneq_s16(v185, 6);
      v193 = vdupq_laneq_s16(v185, 7);
      if (a6 < 8)
      {
        v308 = a6;
      }

      else
      {
        v194 = 2 * v38;
        result = 8 * a2;
        do
        {
          *v195.i8 = *v36;
          *v196.i8 = *(v36 + a2);
          v197 = (v36 + a2 + a2);
          v198.i64[0] = *v197;
          v199 = (v197 + a2);
          v200.i64[0] = *v199;
          v201 = (v199 + a2);
          v202 = *v201;
          v203 = (v201 + a2);
          v204 = *v203;
          v205 = (v203 + a2);
          v195.i64[1] = v202;
          v196.i64[1] = v204;
          v206 = vtrn1q_s8(v195, v196);
          v207 = vtrn2q_s8(v195, v196);
          v198.i64[1] = *v205;
          v200.i64[1] = *(v205 + a2);
          v208 = vtrn1q_s8(v198, v200);
          v209 = vtrn2q_s8(v198, v200);
          v210 = vtrn1q_s16(v206, v208);
          _X2 = _X8 + 2 * v38;
          v212 = vtrn2q_s16(v206, v208);
          v213 = vtrn1q_s16(v207, v209);
          v214 = vtrn2q_s16(v207, v209);
          v215 = vuzp1q_s32(v210, v213);
          v216 = vuzp2q_s32(v210, v213);
          v217 = vuzp1q_s32(v212, v214);
          _X3 = _X8 + 4 * v38;
          _X6 = _X8 + 6 * v38;
          v220 = vzip2_s32(*v212.i8, *&vextq_s8(v212, v212, 8uLL));
          v221 = vmovl_u8(*v215.i8);
          __asm
          {
            PRFM            #0, [X8]
            PRFM            #0, [X2]
          }

          _X2 = &_X8[v38];
          v225 = vmovl_high_u8(v215);
          v226 = vmovl_u8(*v217.i8);
          v227 = vmovl_high_u8(v217);
          v228 = vmovl_u8(*v216.i8);
          v229 = vmovl_high_u8(v216);
          v230 = vmovl_u8(v220);
          __asm
          {
            PRFM            #0, [X3]
            PRFM            #0, [X6]
            PRFM            #0, [X2]
          }

          _X2 = _X8 + 10 * v38;
          __asm { PRFM            #0, [X2] }

          _X2 = _X8 + 12 * v38;
          __asm { PRFM            #0, [X2] }

          _X2 = _X8 + 14 * v38;
          __asm { PRFM            #0, [X2] }

          v240 = (v36 + 7);
          v241 = a5;
          v242 = _X8;
          do
          {
            v243.i64[0] = *v240;
            v244.i64[0] = *(v240 + a2);
            v245 = (v240 + a2 + a2);
            v246.i64[0] = *v245;
            v247.i64[0] = *(v245 + a2);
            v248 = (v245 + a2 + a2);
            v249 = *v248;
            v250 = (v248 + a2);
            v251 = *v250;
            v252 = (v250 + a2);
            v243.i64[1] = v249;
            v244.i64[1] = v251;
            v246.i64[1] = *v252;
            v247.i64[1] = *(v252 + a2);
            v253 = vtrn1q_s8(v243, v244);
            v254 = vtrn2q_s8(v243, v244);
            v255 = vtrn1q_s8(v246, v247);
            v256 = vtrn2q_s8(v246, v247);
            v257 = vtrn1q_s16(v253, v255);
            v258 = vtrn2q_s16(v253, v255);
            v259 = vtrn1q_s16(v254, v256);
            v260 = vtrn2q_s16(v254, v256);
            v261 = vuzp1q_s32(v257, v259);
            v262 = vuzp2q_s32(v257, v259);
            v263 = vuzp1q_s32(v258, v260);
            v264 = vuzp2q_s32(v258, v260);
            v265 = vmovl_u8(*v261.i8);
            v266 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v230, v192), v229, v191), v228, v190), v227, v189), v226, v188), v225, v187), v221, v186);
            v221 = vmovl_high_u8(v261);
            v267 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v230, v191), v229, v190), v228, v189), v227, v188), v226, v187), v225, v186);
            v225 = vmovl_u8(*v263.i8);
            v268 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v230, v190), v229, v189), v228, v188), v227, v187), v226, v186);
            v226 = vmovl_high_u8(v263);
            v269 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v230, v189), v229, v188), v228, v187), v227, v186);
            v227 = vmovl_u8(*v262.i8);
            v270 = vmlaq_s16(vmlaq_s16(vmulq_s16(v230, v188), v229, v187), v228, v186);
            v228 = vmovl_high_u8(v262);
            v271 = vmlaq_s16(vmulq_s16(v230, v187), v229, v186);
            v229 = vmovl_u8(*v264.i8);
            v272 = vmulq_s16(v230, v186);
            v230 = vmovl_high_u8(v264);
            v264.i64[0] = 0x1800180018001800;
            v264.i64[1] = 0x1800180018001800;
            v273.i64[0] = 0x1800180018001800;
            v273.i64[1] = 0x1800180018001800;
            v274 = vrsraq_n_s16(v264, vmlaq_s16(v266, v193, v265), 2uLL);
            v266.i64[0] = 0x1800180018001800;
            v266.i64[1] = 0x1800180018001800;
            v275 = vrsraq_n_s16(v273, vmlaq_s16(vmlaq_s16(v267, v192, v265), v193, v221), 2uLL);
            v267.i64[0] = 0x1800180018001800;
            v267.i64[1] = 0x1800180018001800;
            v276 = vrsraq_n_s16(v266, vmlaq_s16(vmlaq_s16(vmlaq_s16(v268, v191, v265), v192, v221), v193, v225), 2uLL);
            v268.i64[0] = 0x1800180018001800;
            v268.i64[1] = 0x1800180018001800;
            v277 = vrsraq_n_s16(v267, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v269, v190, v265), v191, v221), v192, v225), v193, v226), 2uLL);
            v269.i64[0] = 0x1800180018001800;
            v269.i64[1] = 0x1800180018001800;
            v278 = vrsraq_n_s16(v268, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v270, v189, v265), v190, v221), v191, v225), v192, v226), v193, v227), 2uLL);
            v270.i64[0] = 0x1800180018001800;
            v270.i64[1] = 0x1800180018001800;
            v279 = vrsraq_n_s16(v269, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v271, v188, v265), v189, v221), v190, v225), v191, v226), v192, v227), v193, v228), 2uLL);
            v280 = vrsraq_n_s16(v270, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v272, v187, v265), v188, v221), v189, v225), v190, v226), v191, v227), v192, v228), v193, v229), 2uLL);
            v281 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v187, v221), v186, v265), v188, v225), v189, v226), v190, v227), v191, v228), v192, v229), v193, v230);
            v265.i64[0] = 0x1800180018001800;
            v265.i64[1] = 0x1800180018001800;
            v282 = vrsraq_n_s16(v265, v281, 2uLL);
            v283 = vtrn1q_s16(v274, v275);
            v284 = vtrn2q_s16(v274, v275);
            v285 = vtrn1q_s16(v276, v277);
            v286 = vtrn2q_s16(v276, v277);
            v287 = vtrn1q_s16(v278, v279);
            v288 = vtrn2q_s16(v278, v279);
            v289 = vtrn1q_s16(v280, v282);
            v290 = vtrn2q_s16(v280, v282);
            v291 = vtrn1q_s32(v283, v285);
            v292 = vtrn2q_s32(v283, v285);
            v293 = vtrn1q_s32(v284, v286);
            v294 = vtrn2q_s32(v284, v286);
            v295 = vtrn1q_s32(v287, v289);
            v296 = vtrn2q_s32(v287, v289);
            v297 = vtrn1q_s32(v288, v290);
            v298 = vzip2q_s64(v291, v295);
            v299 = vzip2q_s64(v293, v297);
            v291.i64[1] = v295.i64[0];
            v293.i64[1] = v297.i64[0];
            v300 = vzip2q_s64(v292, v296);
            v292.i64[1] = v296.i64[0];
            v301 = vtrn2q_s32(v288, v290);
            v302 = vzip2q_s64(v294, v301);
            v294.i64[1] = v301.i64[0];
            *v242 = v291;
            *(v242 + 2 * v38) = v293;
            v303 = (v242 + v194 + v194);
            *v303 = v292;
            v304 = (v303 + v194);
            *v304 = v294;
            v305 = (v304 + v194);
            *v305 = v298;
            v306 = (v305 + v194);
            *v306 = v299;
            v307 = (v306 + v194);
            *v307 = v300;
            *(v307 + 2 * v38) = v302;
            ++v240;
            ++v242;
            v241 -= 8;
          }

          while (v241);
          v36 = (v36 + result);
          _X8 += 2 * v38;
          v308 = a6 - 8;
          v184 = a6 <= 15;
          a6 -= 8;
        }

        while (!v184);
      }

      if (v308 >= 1)
      {
        do
        {
          v317 = vmovl_u8(*v36);
          __asm { PRFM            #0, [X8] }

          v319 = 1;
          v320 = a5;
          v321 = _X8;
          do
          {
            v322 = vmovl_u8(v36[v319]);
            v323.i64[0] = 0x1800180018001800;
            v323.i64[1] = 0x1800180018001800;
            *v321++ = vrsraq_n_s16(v323, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v317, v186), vextq_s8(v317, v322, 2uLL), v187), vextq_s8(v317, v322, 4uLL), v188), vextq_s8(v317, v322, 6uLL), v189), vextq_s8(v317, v322, 8uLL), v190), vextq_s8(v317, v322, 0xAuLL), v191), vextq_s8(v317, v322, 0xCuLL), v192), vextq_s8(v317, v322, 0xEuLL), v193), 2uLL);
            ++v319;
            v317 = v322;
            v320 -= 8;
          }

          while (v320);
          v36 = (v36 + a2);
          _X8 = (_X8 + 2 * v38);
          _VF = __OFSUB__(v308--, 1);
        }

        while (!((v308 < 0) ^ _VF | (v308 == 0)));
      }
    }
  }

  return result;
}

uint64_t *sub_277A71E08(uint64_t *result, int a2, _DWORD *_X2, int a4, int a5, int a6, uint64_t a7, unsigned __int16 a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint16x4_t a14, char a15, uint64_t a16)
{
  v19 = *(a16 + 40);
  v18 = *(a16 + 44);
  v20 = a7 + 2 * (a15 & 0xF) * a8;
  v21 = result - (a8 >> 1);
  v22 = (v21 + 1);
  _X17 = *(a16 + 8);
  v24 = *(a16 + 16);
  if (a5 == 4)
  {
    v25 = vshr_n_s16(*(v20 + 4), 1uLL);
    v26 = (v21 + 3);
    v27 = vdup_lane_s16(v25, 0);
    v28 = vdup_lane_s16(v25, 1);
    v29 = vdup_lane_s16(v25, 2);
    v30 = vdup_lane_s16(v25, 3);
    a13.i32[0] = *(a16 + 40);
    a14.i32[0] = *(a16 + 44);
    v31 = 2 * v24;
    do
    {
      v32 = vmovl_u8(*v26);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X2]
      }

      v39 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v32, v32, 2uLL), v28), *v32.i8, v27), *&vextq_s8(v32, v32, 4uLL), v29), *&vextq_s8(v32, v32, 6uLL), v30), 2uLL), a14, 0), *_X17, a13, 0);
      *v39.i8 = vadd_s16(vshrn_n_s32(v39, 4uLL), 0xE800E800E800E800);
      *_X2 = vqrshrun_n_s16(v39, 4uLL).u32[0];
      v26 = (v26 + a2);
      _X2 = (_X2 + a4);
      _X17 = (_X17 + v31);
      --a6;
    }

    while (a6);
  }

  else
  {
    v40 = vshrq_n_s16(*v20, 1uLL);
    v41 = vdupq_lane_s16(*v40.i8, 0);
    v42 = vdupq_lane_s16(*v40.i8, 1);
    v43 = vdupq_lane_s16(*v40.i8, 2);
    v44 = vdupq_lane_s16(*v40.i8, 3);
    v45 = vdupq_laneq_s16(v40, 4);
    v46 = vdupq_laneq_s16(v40, 5);
    v47 = vdupq_laneq_s16(v40, 6);
    v48 = vdupq_laneq_s16(v40, 7);
    if (a6 < 8)
    {
      v187 = a6;
    }

    else
    {
      v49 = a2;
      v200 = 4 * v24;
      v16.i32[0] = *(a16 + 40);
      v17.i32[0] = *(a16 + 44);
      v50 = 8 * a2;
      v51 = 8 * a4;
      v53 = 3 * a4;
      v54 = &_X2[a4] + v53;
      v55 = &_X2[a4] + 2 * a4;
      v56 = _X2 + a4 + (4 * a4);
      v57 = &_X2[a4];
      v58 = _X2 + v53;
      v59 = _X2 + 2 * a4;
      v60 = _X2 + a4;
      v61 = v21 + 8;
      v62.i64[0] = 0xE800E800E800E800;
      v62.i64[1] = 0xE800E800E800E800;
      do
      {
        v63 = 0;
        *v64.i8 = *v22;
        *v65.i8 = *(v22 + v49);
        v66 = (v22 + v49 + v49);
        v67.i64[0] = *v66;
        v68 = (v66 + v49);
        v69.i64[0] = *v68;
        v70 = (v68 + v49);
        v71 = *v70;
        v72 = (v70 + v49);
        v73 = *v72;
        v74 = (v72 + v49);
        v64.i64[1] = v71;
        v65.i64[1] = v73;
        v75 = vtrn1q_s8(v64, v65);
        v76 = vtrn2q_s8(v64, v65);
        v67.i64[1] = *v74;
        v69.i64[1] = *(v74 + v49);
        v77 = vtrn1q_s8(v67, v69);
        v78 = vtrn2q_s8(v67, v69);
        v79 = vtrn1q_s16(v75, v77);
        _X8 = _X17 + 2 * v24;
        v81 = vtrn2q_s16(v75, v77);
        v82 = vtrn1q_s16(v76, v78);
        v83 = vtrn2q_s16(v76, v78);
        v84 = vuzp1q_s32(v79, v82);
        v85 = vuzp2q_s32(v79, v82);
        v86 = vuzp1q_s32(v81, v83);
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X8]
        }

        _X8 = _X17 + 4 * v24;
        __asm { PRFM            #0, [X8] }

        _X8 = _X17 + 6 * v24;
        __asm { PRFM            #0, [X8] }

        _X8 = &_X17[v200 / 4];
        v94 = vzip2_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
        v95 = vmovl_u8(*v84.i8);
        v96 = vmovl_high_u8(v84);
        v97 = vmovl_u8(*v86.i8);
        v98 = vmovl_high_u8(v86);
        v99 = vmovl_u8(*v85.i8);
        v100 = vmovl_high_u8(v85);
        v101 = vmovl_u8(v94);
        __asm { PRFM            #0, [X8] }

        _X8 = _X17 + 10 * v24;
        __asm { PRFM            #0, [X8] }

        _X8 = _X17 + 12 * v24;
        __asm { PRFM            #0, [X8] }

        _X8 = _X17 + 14 * v24;
        __asm { PRFM            #0, [X8] }

        v109 = _X17;
        do
        {
          v110.i64[0] = *&v61[v63];
          v111 = &v61[v63 + v49];
          v112.i64[0] = *v111;
          v113 = (v111 + v49);
          v114.i64[0] = *v113;
          v115 = (v113 + v49);
          v116.i64[0] = *v115;
          v117 = (v115 + v49);
          v118 = *v117;
          v119 = (v117 + v49);
          v120 = *v119;
          result = (v119 + v49);
          v110.i64[1] = v118;
          v112.i64[1] = v120;
          v121 = vtrn1q_s8(v110, v112);
          v122 = vtrn2q_s8(v110, v112);
          v114.i64[1] = *result;
          v116.i64[1] = *(result + v49);
          v123 = vtrn1q_s8(v114, v116);
          v124 = vtrn2q_s8(v114, v116);
          v125 = vtrn1q_s16(v121, v123);
          v126 = vtrn2q_s16(v121, v123);
          v127 = vtrn1q_s16(v122, v124);
          v128 = vtrn2q_s16(v122, v124);
          v129 = vuzp1q_s32(v125, v127);
          v130 = vuzp2q_s32(v125, v127);
          v131 = vuzp1q_s32(v126, v128);
          v132 = vuzp2q_s32(v126, v128);
          v133 = vmovl_u8(*v129.i8);
          v134 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v47), v100, v46), v99, v45), v98, v44), v97, v43), v96, v42), v95, v41);
          v95 = vmovl_high_u8(v129);
          v135 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v46), v100, v45), v99, v44), v98, v43), v97, v42), v96, v41);
          v96 = vmovl_u8(*v131.i8);
          v136 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v45), v100, v44), v99, v43), v98, v42), v97, v41);
          v97 = vmovl_high_u8(v131);
          v137 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v44), v100, v43), v99, v42), v98, v41);
          v98 = vmovl_u8(*v130.i8);
          v138 = vmlaq_s16(vmlaq_s16(vmulq_s16(v101, v43), v100, v42), v99, v41);
          v99 = vmovl_high_u8(v130);
          v139 = vmlaq_s16(vmulq_s16(v101, v42), v100, v41);
          v100 = vmovl_u8(*v132.i8);
          v140 = vmulq_s16(v101, v41);
          v101 = vmovl_high_u8(v132);
          v132.i64[0] = 0x1800180018001800;
          v132.i64[1] = 0x1800180018001800;
          v141 = vrsraq_n_s16(v132, vmlaq_s16(v134, v48, v133), 2uLL);
          v134.i64[0] = 0x1800180018001800;
          v134.i64[1] = 0x1800180018001800;
          v142 = vrsraq_n_s16(v134, vmlaq_s16(vmlaq_s16(v135, v47, v133), v48, v95), 2uLL);
          v135.i64[0] = 0x1800180018001800;
          v135.i64[1] = 0x1800180018001800;
          v143 = vrsraq_n_s16(v135, vmlaq_s16(vmlaq_s16(vmlaq_s16(v136, v46, v133), v47, v95), v48, v96), 2uLL);
          v136.i64[0] = 0x1800180018001800;
          v136.i64[1] = 0x1800180018001800;
          v144 = vrsraq_n_s16(v136, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v137, v45, v133), v46, v95), v47, v96), v48, v97), 2uLL);
          v137.i64[0] = 0x1800180018001800;
          v137.i64[1] = 0x1800180018001800;
          v145 = vrsraq_n_s16(v137, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v138, v44, v133), v45, v95), v46, v96), v47, v97), v48, v98), 2uLL);
          v138.i64[0] = 0x1800180018001800;
          v138.i64[1] = 0x1800180018001800;
          v146 = vrsraq_n_s16(v138, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v139, v43, v133), v44, v95), v45, v96), v46, v97), v47, v98), v48, v99), 2uLL);
          v139.i64[0] = 0x1800180018001800;
          v139.i64[1] = 0x1800180018001800;
          v147 = vrsraq_n_s16(v139, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v140, v42, v133), v43, v95), v44, v96), v45, v97), v46, v98), v47, v99), v48, v100), 2uLL);
          v148 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v42, v95), v41, v133), v43, v96), v44, v97), v45, v98), v46, v99), v47, v100), v48, v101);
          v133.i64[0] = 0x1800180018001800;
          v133.i64[1] = 0x1800180018001800;
          v149 = vrsraq_n_s16(v133, v148, 2uLL);
          v150 = vtrn1q_s16(v141, v142);
          v151 = vtrn2q_s16(v141, v142);
          v152 = vtrn1q_s16(v143, v144);
          v153 = vtrn2q_s16(v143, v144);
          v154 = vtrn1q_s16(v145, v146);
          v155 = vtrn2q_s16(v145, v146);
          v156 = vtrn1q_s16(v147, v149);
          v157 = vtrn2q_s16(v147, v149);
          v158 = vtrn1q_s32(v150, v152);
          v159 = vtrn2q_s32(v150, v152);
          v160 = vtrn1q_s32(v151, v153);
          v161 = vtrn2q_s32(v151, v153);
          v162 = vtrn1q_s32(v154, v156);
          v163 = vtrn2q_s32(v154, v156);
          v164 = vtrn1q_s32(v155, v157);
          v165 = vtrn2q_s32(v155, v157);
          v166 = vzip2q_s64(v158, v162);
          v167 = vdupq_lane_s16(v17, 0);
          v167.i64[0] = vextq_s8(v167, v167, 8uLL).u64[0];
          v168 = vmlal_high_lane_u16(vmull_u16(*v162.i8, *v167.i8), *v109, v16, 0);
          v169 = vzip2q_s64(v160, v164);
          v170 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v158.i8, v17, 0), *v109->i8, v16, 0), 4uLL), v168, 4uLL);
          v171 = *(v109 + 2 * v24);
          v172 = vmlal_lane_u16(vmull_lane_u16(*v160.i8, v17, 0), *v171.i8, v16, 0);
          v173 = vmlal_high_lane_u16(vmull_u16(*v164.i8, *v167.i8), v171, v16, 0);
          v174 = *(v109 + 4 * v24);
          v175 = vshrn_high_n_s32(vshrn_n_s32(v172, 4uLL), v173, 4uLL);
          v176 = vzip2q_s64(v159, v163);
          v177 = vmlal_lane_u16(vmull_lane_u16(*v159.i8, v17, 0), *v174.i8, v16, 0);
          v178 = vmlal_high_lane_u16(vmull_u16(*v163.i8, *v167.i8), v174, v16, 0);
          v179 = vmull_u16(*v165.i8, *v167.i8);
          v180 = vzip2q_s64(v161, v165);
          v181 = vshrn_high_n_s32(vshrn_n_s32(v177, 4uLL), v178, 4uLL);
          v182 = *(v109 + 6 * v24);
          *&_X2[v63 / 4] = vqrshrun_n_s16(vaddq_s16(v170, v62), 4uLL);
          *&v60[v63] = vqrshrun_n_s16(vaddq_s16(v175, v62), 4uLL);
          *&v59[v63] = vqrshrun_n_s16(vaddq_s16(v181, v62), 4uLL);
          *&v58[v63] = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v161.i8, v17, 0), *v182.i8, v16, 0), 4uLL), vmlal_high_lane_u16(v179, v182, v16, 0), 4uLL), v62), 4uLL);
          v183 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v166.i8, v17, 0), *&v109->i8[2 * v200], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v166, v17, 0), *(v109 + 2 * v200), v16, 0), 4uLL);
          v184 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v169.i8, v17, 0), *&v109->i8[2 * v24 + 2 * v200], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v169, v17, 0), *(v109 + 2 * v24 + 2 * v200), v16, 0), 4uLL);
          v185 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v176.i8, v17, 0), *&v109->i8[4 * v24 + 2 * v200], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v176, v17, 0), *(v109 + 4 * v24 + 2 * v200), v16, 0), 4uLL);
          v186 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v180.i8, v17, 0), *&v109->i8[6 * v24 + 2 * v200], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v180, v17, 0), *(v109 + 6 * v24 + 2 * v200), v16, 0), 4uLL);
          *&v57[v63 / 4] = vqrshrun_n_s16(vaddq_s16(v183, v62), 4uLL);
          *&v56[v63] = vqrshrun_n_s16(vaddq_s16(v184, v62), 4uLL);
          *&v55[v63] = vqrshrun_n_s16(vaddq_s16(v185, v62), 4uLL);
          *&v54[v63] = vqrshrun_n_s16(vaddq_s16(v186, v62), 4uLL);
          ++v109;
          v63 += 8;
        }

        while (a5 != v63);
        _X17 += 2 * v24;
        v22 = (v22 + v50);
        _X2 = (_X2 + v51);
        v187 = a6 - 8;
        v54 += v51;
        v55 += v51;
        v56 += v51;
        v57 = (v57 + v51);
        v58 += v51;
        v59 += v51;
        v60 += v51;
        v61 += v50;
        v188 = a6 <= 15;
        a6 -= 8;
      }

      while (!v188);
    }

    if (v187 >= 1)
    {
      v16.i32[0] = v19;
      v17.i32[0] = v18;
      v189.i64[0] = 0xE800E800E800E800;
      v189.i64[1] = 0xE800E800E800E800;
      do
      {
        v190 = 0;
        v191 = vmovl_u8(*v22);
        __asm { PRFM            #0, [X17] }

        v193 = _X17;
        do
        {
          v194 = vmovl_u8(v22[v190 / 2 + 1]);
          v195.i64[0] = 0x1800180018001800;
          v195.i64[1] = 0x1800180018001800;
          v196 = vrsraq_n_s16(v195, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v191, v41), vextq_s8(v191, v194, 2uLL), v42), vextq_s8(v191, v194, 4uLL), v43), vextq_s8(v191, v194, 6uLL), v44), vextq_s8(v191, v194, 8uLL), v45), vextq_s8(v191, v194, 0xAuLL), v46), vextq_s8(v191, v194, 0xCuLL), v47), vextq_s8(v191, v194, 0xEuLL), v48), 2uLL);
          v197 = *v193++;
          *&_X2[v190] = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v196.i8, v17, 0), *v197.i8, v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v196, v17, 0), v197, v16, 0), 4uLL), v189), 4uLL);
          v190 += 2;
          v191 = v194;
        }

        while (a5 != (v190 * 4));
        v22 = (v22 + a2);
        _X17 = (_X17 + 2 * v24);
        _X2 = (_X2 + a4);
        _VF = __OFSUB__(v187--, 1);
      }

      while (!((v187 < 0) ^ _VF | (v187 == 0)));
    }
  }

  return result;
}

uint64_t sub_277A725C8(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, unsigned __int16 a8, double a9, double a10, double a11, double a12, double a13, double a14, uint16x4_t a15, uint16x4_t a16, char a17, uint64_t a18)
{
  v31 = a5;
  v33 = *(a7 + 2 * (a17 & 0xF) * a8);
  v34 = vshrq_n_s16(v33, 1uLL);
  v35 = ((a8 >> 1) - 1) * a2;
  result = a1 - v35;
  if (a8 == 12 || v33.i16[7] | v33.i16[0])
  {
    if (*a18)
    {
      if (*(a18 + 36))
      {

        return sub_277A74598(result, a2, a3, a4, a5, a6, a18, v34, *v33.i8, *&a11);
      }

      else
      {
        _X4 = result;
        v38 = a2;
        v641 = *(a18 + 16);
        v639 = 2 * a2;
        v638 = 3 * a2;
        v39 = 4 * a2;
        v637 = 6 * a2;
        v40 = a4;
        v41 = 2 * a4;
        v42 = 3 * a4;
        v636 = 5 * a2;
        if (v31 == 4 || a6 == 4)
        {
          v280 = 0;
          v654 = 2 * v641;
          v651 = 3 * v641;
          v281 = 7 * a2;
          v282 = vdup_lane_s16(*v34.i8, 0);
          v283 = vdup_lane_s16(*v34.i8, 1);
          v284 = vdup_lane_s16(*v34.i8, 2);
          v285 = vdup_lane_s16(*v34.i8, 3);
          v286 = vdup_laneq_s16(v34, 4);
          v287 = vdup_laneq_s16(v34, 5);
          v288 = vdup_laneq_s16(v34, 6);
          v289 = vdup_laneq_s16(v34, 7);
          v290 = 4 * a4;
          v648 = a3 + v42;
          v646 = a3 + a4 + v41;
          v633 = a3 + a4;
          v635 = a3 + v41;
          v631 = a1 + v638 + v281 - v35;
          v629 = a1 + v639 + v281 - v35;
          v628 = a1 + v38 + v281 - v35;
          v626 = a1 + v281 - v35;
          v291.i64[0] = 0x1800180018001800;
          v291.i64[1] = 0x1800180018001800;
          v292.i64[0] = 0xE800E800E800E800;
          v292.i64[1] = 0xE800E800E800E800;
          _X25 = *(a18 + 8);
          do
          {
            v294 = v31;
            __asm { PRFM            #0, [X4] }

            _X10 = _X4 + v38;
            __asm { PRFM            #0, [X10] }

            _X11 = _X4 + v639;
            __asm { PRFM            #0, [X11] }

            _X15 = _X4 + v638;
            __asm { PRFM            #0, [X15] }

            v22.i32[0] = *(_X4->i32 + v38);
            v23.i32[0] = *(_X4->i32 + v639);
            v24.i32[0] = *(_X4->i32 + v638);
            v25.i32[0] = _X4->i32[v39 / 4];
            v302 = _X4;
            v26.i32[0] = *(_X4->i32 + v636);
            v27.i32[0] = *(_X4->i32 + v637);
            v303 = vmovl_u8(_X4->u32[0]).u64[0];
            v304 = vmovl_u8(v22).u64[0];
            v22 = vmovl_u8(*v23.i8).u64[0];
            v305 = vmovl_u8(v24).u64[0];
            v24 = vmovl_u8(v25).u64[0];
            _X15 = _X25 + 2 * v641;
            _X17 = _X25 + 2 * v654;
            v25 = vmovl_u8(v26).u64[0];
            v23.i64[0] = vmovl_u8(*v27.i8).u64[0];
            _X2 = _X25 + 2 * v651;
            v309 = v626;
            v310 = v628;
            result = v629;
            v311 = v631;
            __asm
            {
              PRFM            #0, [X25]
              PRFM            #0, [X15]
            }

            v314 = _X25;
            v315 = v633;
            v316 = v635;
            __asm
            {
              PRFM            #0, [X17]
              PRFM            #0, [X2]
            }

            v319 = v646;
            v320 = v648;
            v321 = a3;
            v322 = a6;
            do
            {
              _X2 = (v321 + v280);
              v18.i32[0] = *(v309 + v280);
              v26.i32[0] = *(v310 + v280);
              v28.i32[0] = *(result + v280);
              v30.i32[0] = *(v311 + v280);
              v324 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v23.i8, v288), v25, v287), v24, v286), v305, v285);
              v325 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v23.i8, v287), v25, v286), v24, v285), v305, v284);
              v326 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v23.i8, v286), v25, v285), v24, v284), v305, v283);
              v327 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v23.i8, v285), v25, v284), v24, v283), v305, v282);
              v305 = vmovl_u8(v18).u64[0];
              v328 = vmla_s16(vmla_s16(v324, v22, v284), v304, v283);
              v329 = vmla_s16(vmla_s16(v325, v22, v283), v304, v282);
              v304 = v25;
              v25 = vmovl_u8(*v28.i8).u64[0];
              v330 = vmla_s16(v328, v303, v282);
              v303 = v24;
              v24 = vmovl_u8(v26).u64[0];
              v331 = vmla_s16(v326, v22, v282);
              v22 = *v23.i8;
              v23.i64[0] = vmovl_u8(*v30.i8).u64[0];
              *v332.i8 = vrshr_n_s16(vmla_s16(v330, v305, v289), 2uLL);
              __asm { PRFM            #0, [X25] }

              _X3 = (_X25 + 2 * v641);
              __asm { PRFM            #0, [X3] }

              v336 = vrshr_n_s16(vmla_s16(vmla_s16(v329, v305, v288), v24, v289), 2uLL);
              _X5 = _X25 + 2 * v654;
              __asm { PRFM            #0, [X5] }

              _X5 = _X25 + 2 * v651;
              __asm
              {
                PRFM            #0, [X5]
                PRFM            #0, [X2]
              }

              *v28.i8 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(v331, v305, v287), v24, v288), v25, v289), 2uLL);
              _X5 = (v315 + v280);
              __asm { PRFM            #0, [X5] }

              _X6 = (v316 + v280);
              __asm { PRFM            #0, [X6] }

              _X21 = v320 + v280;
              v347 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v327, v305, v286), v24, v287), v25, v288), *v23.i8, v289), 2uLL);
              __asm { PRFM            #0, [X21] }

              v30.i64[0] = *(_X25 + 4 * v641);
              v349.i64[0] = *_X25;
              v18 = *_X3;
              v332.u64[1] = v336;
              v349.u64[1] = *_X3;
              v28.u64[1] = v347;
              v30.i64[1] = *(_X25 + 6 * v641);
              v27 = vaddq_s16(vhaddq_u16(v30, vaddq_s16(v28, v291)), v292);
              *v332.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v349, vaddq_s16(v332, v291)), v292), 4uLL);
              v350 = (v319 + v280);
              *_X2 = v332.i32[0];
              v321 += v290;
              v320 += v290;
              v319 += v290;
              v316 += v290;
              *_X5 = v332.i32[1];
              v26 = vqrshrun_n_s16(v27, 4uLL);
              v315 += v290;
              _X25 += v641;
              v311 += v39;
              result += v39;
              *_X6 = v26.i32[0];
              *v350 = v26.i32[1];
              v310 += v39;
              v309 += v39;
              v322 -= 4;
            }

            while (v322);
            _X4 = (v302 + 4);
            _X25 = v314 + 1;
            v280 += 4;
            v31 = v294 - 4;
          }

          while (v294 != 4);
        }

        else
        {
          v43 = 0;
          v630 = 7 * a2;
          v44 = vdupq_lane_s16(*v34.i8, 0);
          v45 = vdupq_lane_s16(*v34.i8, 1);
          v46 = vdupq_lane_s16(*v34.i8, 2);
          v47 = vdupq_lane_s16(*v34.i8, 3);
          v48 = vdupq_laneq_s16(v34, 4);
          v49 = vdupq_laneq_s16(v34, 5);
          v50 = 4 * a4;
          v51 = vdupq_laneq_s16(v34, 6);
          v52 = vdupq_laneq_s16(v34, 7);
          v53 = 8 * a2;
          v627 = a1 + v630 - v35;
          v54 = 8 * v641;
          v55 = 2 * v641 + v54;
          v56 = 2 * v42;
          v57 = 2 * v41;
          v625 = a3 + 3 * v40 + v50;
          v58 = 2 * v50;
          v645 = 2 * v40;
          v624 = a3 + 2 * v40 + v50;
          v623 = a3 + v40 + v50;
          v621 = a3 + 3 * v40;
          v622 = a3 + v50;
          v620 = a3 + v40;
          v59.i64[0] = 0xE800E800E800E800;
          v59.i64[1] = 0xE800E800E800E800;
          v619 = a3 + 2 * v40;
          _X20 = *(a18 + 8);
          do
          {
            v634 = v31;
            __asm { PRFM            #0, [X4] }

            _X8 = _X4 + v38;
            __asm { PRFM            #0, [X8] }

            _X10 = _X4 + v639;
            __asm { PRFM            #0, [X10] }

            _X10 = _X4 + v638;
            __asm { PRFM            #0, [X10] }

            _X10 = _X4 + v39;
            __asm { PRFM            #0, [X10] }

            _X10 = _X4 + v636;
            __asm { PRFM            #0, [X10] }

            _X10 = _X4 + v637;
            __asm { PRFM            #0, [X10] }

            _X10 = _X4 + v630;
            __asm { PRFM            #0, [X10] }

            v632 = _X4;
            v80 = (_X4 + v38 + v38);
            v81 = *v80;
            v82 = (v80 + v38);
            v83 = *v82;
            v84 = (v82 + v38);
            v85 = *v84;
            v86 = (v84 + v38);
            v87 = *(v86 + v38);
            v88 = vmovl_u8(*_X4);
            v89 = a3;
            v90 = vmovl_u8(*(_X4 + v38));
            v91 = vmovl_u8(v81);
            result = v627;
            v92 = v619;
            v93 = v620;
            v94 = vmovl_u8(v83);
            v95 = vmovl_u8(v85);
            v96 = vmovl_u8(*v86);
            v98 = v621;
            v97 = v622;
            v99 = v623;
            v100 = v624;
            v101 = vmovl_u8(v87);
            v102 = v625;
            _X4 = _X20;
            v104 = a6;
            do
            {
              v105 = v55;
              v106 = (result + v43 + v38);
              v107 = *v106;
              v108 = (v106 + v38);
              v109 = *v108;
              v110 = (v108 + v38);
              v111 = *v110;
              v112 = (v110 + v38);
              v113 = *v112;
              v114 = (v112 + v38);
              v115 = *(v114 + v38 + v38);
              v116 = vmovl_u8(*(result + v43));
              v117 = vmulq_s16(v88, v44);
              v88 = vmovl_u8(v107);
              v118 = vmlaq_s16(v117, v90, v45);
              v119 = vmulq_s16(v90, v44);
              v90 = vmovl_u8(v109);
              v120 = vmlaq_s16(v118, v91, v46);
              v121 = vmlaq_s16(v119, v91, v45);
              v122 = vmulq_s16(v91, v44);
              v91 = vmovl_u8(v111);
              v123 = vmlaq_s16(v120, v94, v47);
              v124 = vmlaq_s16(v121, v94, v46);
              v125 = vmlaq_s16(v122, v94, v45);
              v126 = vmulq_s16(v94, v44);
              v94 = vmovl_u8(v113);
              v127 = vmlaq_s16(v123, v95, v48);
              v128 = vmlaq_s16(v124, v95, v47);
              v129 = vmlaq_s16(v125, v95, v46);
              v130 = vmlaq_s16(v126, v95, v45);
              v131 = vmulq_s16(v95, v44);
              v95 = vmovl_u8(*v114);
              v132 = vmlaq_s16(v127, v96, v49);
              v133 = vmlaq_s16(v128, v96, v48);
              v134 = vmlaq_s16(v129, v96, v47);
              v135 = vmlaq_s16(v130, v96, v46);
              v136 = vmlaq_s16(v131, v96, v45);
              v137 = vmulq_s16(v96, v44);
              v96 = vmovl_u8(*(v114 + v38));
              __asm { PRFM            #0, [X20] }

              _X3 = &_X20->i8[2 * v641];
              __asm { PRFM            #0, [X3] }

              _X3 = &_X20->i8[4 * v641];
              __asm { PRFM            #0, [X3] }

              _X3 = &_X20->i8[6 * v641];
              __asm { PRFM            #0, [X3] }

              v145 = vmlaq_s16(v133, v101, v49);
              v146 = vmlaq_s16(v132, v101, v51);
              v147 = vmlaq_s16(v134, v101, v48);
              v148 = vmlaq_s16(v135, v101, v47);
              v149 = vmlaq_s16(v136, v101, v46);
              v150 = vmlaq_s16(v137, v101, v45);
              v151 = vmulq_s16(v101, v44);
              v101 = vmovl_u8(v115);
              v152.i64[0] = 0x1800180018001800;
              v152.i64[1] = 0x1800180018001800;
              v153.i64[0] = 0x1800180018001800;
              v153.i64[1] = 0x1800180018001800;
              v154.i64[0] = 0x1800180018001800;
              v154.i64[1] = 0x1800180018001800;
              v155 = vrsraq_n_s16(v152, vmlaq_s16(v146, v52, v116), 2uLL);
              v156.i64[0] = 0x1800180018001800;
              v156.i64[1] = 0x1800180018001800;
              v157 = vrsraq_n_s16(v153, vmlaq_s16(vmlaq_s16(v145, v51, v116), v52, v88), 2uLL);
              v158.i64[0] = 0x1800180018001800;
              v158.i64[1] = 0x1800180018001800;
              v159 = vrsraq_n_s16(v154, vmlaq_s16(vmlaq_s16(vmlaq_s16(v147, v49, v116), v51, v88), v52, v90), 2uLL);
              v146.i64[0] = 0x1800180018001800;
              v146.i64[1] = 0x1800180018001800;
              v160 = vrsraq_n_s16(v158, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v149, v47, v116), v48, v88), v49, v90), v51, v91), v52, v94), 2uLL);
              v145.i64[0] = 0x1800180018001800;
              v145.i64[1] = 0x1800180018001800;
              v147.i64[0] = 0x1800180018001800;
              v147.i64[1] = 0x1800180018001800;
              __asm { PRFM            #0, [X4] }

              _X3 = &_X4->i8[v645];
              __asm { PRFM            #0, [X3] }

              _X3 = &_X4->i8[v57];
              __asm { PRFM            #0, [X3] }

              v166 = vrsraq_n_s16(v146, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v150, v46, v116), v47, v88), v48, v90), v49, v91), v51, v94), v52, v95), 2uLL);
              _X3 = &_X4->i8[v56];
              __asm { PRFM            #0, [X3] }

              v55 = v105;
              v169 = vrsraq_n_s16(v145, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v151, v45, v116), v46, v88), v47, v90), v48, v91), v49, v94), v51, v95), v52, v96), 2uLL);
              v170 = vaddq_s16(vhaddq_u16(*(_X4 + 6 * v641), vrsraq_n_s16(v156, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v148, v48, v116), v49, v88), v51, v90), v52, v91), 2uLL)), v59);
              *v150.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(_X4 + 2 * v641), v157), v59), 4uLL);
              *v151.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(_X4 + 4 * v641), v159), v59), 4uLL);
              v171 = vrsraq_n_s16(v147, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v44, v116), v45, v88), v46, v90), v47, v91), v48, v94), v49, v95), v51, v96), v52, v101), 2uLL);
              *(v89 + v43) = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*_X4, v155), v59), 4uLL);
              *(v93 + v43) = v150.i64[0];
              *(v92 + v43) = v151.i64[0];
              *(v98 + v43) = vqrshrun_n_s16(v170, 4uLL);
              v172 = vhaddq_u16(*(_X4 + 8 * v641), v160);
              v173 = vhaddq_u16(*(_X4 + v105), v166);
              v174 = vhaddq_u16(*(_X4 + 4 * v641 + v54), v169);
              v175 = vhaddq_u16(*(_X4 + 6 * v641 + v54), v171);
              *(v97 + v43) = vqrshrun_n_s16(vaddq_s16(v172, v59), 4uLL);
              *(v99 + v43) = vqrshrun_n_s16(vaddq_s16(v173, v59), 4uLL);
              *(v100 + v43) = vqrshrun_n_s16(vaddq_s16(v174, v59), 4uLL);
              *(v102 + v43) = vqrshrun_n_s16(vaddq_s16(v175, v59), 4uLL);
              result += v53;
              _X4 += v641;
              v102 += v58;
              v100 += v58;
              v98 += v58;
              v99 += v58;
              v92 += v58;
              v93 += v58;
              v89 += v58;
              v97 += v58;
              v104 -= 8;
            }

            while (v104);
            _X4 = v632 + 1;
            ++_X20;
            v43 += 8;
            v31 -= 8;
          }

          while (v634 != 8);
        }
      }
    }

    else
    {
      v176 = result;
      _X9 = *(a18 + 8);
      v178 = *(a18 + 16);
      v179 = 2 * a2;
      v180 = 3 * a2;
      v181 = 4 * a2;
      if (v31 == 4 || a6 == 4)
      {
        v436 = vdup_lane_s16(*v34.i8, 0);
        v437 = vdup_lane_s16(*v34.i8, 1);
        v438 = vdup_lane_s16(*v34.i8, 2);
        v439 = vdup_lane_s16(*v34.i8, 3);
        v440 = vdup_laneq_s16(v34, 4);
        result = 7 * a2;
        v441 = vdup_laneq_s16(v34, 5);
        v442 = vdup_laneq_s16(v34, 6);
        v443 = vdup_laneq_s16(v34, 7);
        _X19 = v176;
        do
        {
          __asm { PRFM            #0, [X19] }

          _X5 = (_X19 + a2);
          __asm { PRFM            #0, [X5] }

          _X6 = _X19 + v179;
          __asm { PRFM            #0, [X6] }

          _X7 = _X19 + v180;
          __asm { PRFM            #0, [X7] }

          v452 = (_X19 + result);
          v20.i32[0] = *_X5;
          v21.i32[0] = *(_X19 + v179);
          v22.i32[0] = *(_X19 + v180);
          v23.i32[0] = _X19[a2];
          v25.i32[0] = *(_X19 + 5 * a2);
          v26.i32[0] = *(_X19 + 6 * a2);
          v453 = vmovl_u8(*_X19).u64[0];
          v20 = vmovl_u8(v20).u64[0];
          v454 = vmovl_u8(v21).u64[0];
          v21 = vmovl_u8(v22).u64[0];
          v455 = vmovl_u8(*v23.i8).u64[0];
          v23.i64[0] = vmovl_u8(v25).u64[0];
          v22 = vmovl_u8(v26).u64[0];
          __asm { PRFM            #0, [X9] }

          _X5 = _X9 + 2 * v178;
          __asm { PRFM            #0, [X5] }

          _X5 = _X9 + 4 * v178;
          __asm { PRFM            #0, [X5] }

          _X7 = _X9 + 6 * v178;
          v462 = _X9;
          v463 = a6;
          __asm { PRFM            #0, [X7] }

          do
          {
            v29.i32[0] = *v452;
            v25.i32[0] = *(v452 + a2);
            v26.i32[0] = *(v452 + v179);
            v465 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v22, v442), *v23.i8, v441), v455, v440), v21, v439), v454, v438), v20, v437), v453, v436);
            v466 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v22, v441), *v23.i8, v440), v455, v439), v21, v438), v454, v437), v20, v436);
            v467 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v22, v440), *v23.i8, v439), v455, v438), v21, v437);
            v468 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v22, v439), *v23.i8, v438), v455, v437), v21, v436);
            v21.i32[0] = *(v452 + v180);
            v29.i64[0] = vmovl_u8(*v29.i8).u64[0];
            v453 = v455;
            v455 = vmovl_u8(v25).u64[0];
            v20 = *v23.i8;
            v23.i64[0] = vmovl_u8(v26).u64[0];
            v469 = vmla_s16(v467, v454, v436);
            v454 = v22;
            v22 = vmovl_u8(v21).u64[0];
            v25 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v466, *v29.i8, v442), v455, v443), 2uLL);
            v26 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v469, *v29.i8, v441), v455, v442), *v23.i8, v443), 2uLL);
            *v462 = vrsra_n_s16(0x1800180018001800, vmla_s16(v465, *v29.i8, v443), 2uLL);
            *(v462 + 2 * v178) = v25;
            *(v462 + 4 * v178) = v26;
            *(v462 + 6 * v178) = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v468, *v29.i8, v440), v455, v441), *v23.i8, v442), v22, v443), 2uLL);
            v452 = (v452 + v181);
            v462 += v178;
            v21 = *v29.i8;
            v463 -= 4;
          }

          while (v463);
          ++_X19;
          ++_X9;
          v31 -= 4;
        }

        while (v31);
      }

      else
      {
        v182 = 2 * v178;
        v183 = vdupq_lane_s16(*v34.i8, 0);
        v184 = vdupq_lane_s16(*v34.i8, 1);
        v185 = vdupq_lane_s16(*v34.i8, 2);
        v186 = vdupq_lane_s16(*v34.i8, 3);
        v187 = vdupq_laneq_s16(v34, 4);
        v188 = vdupq_laneq_s16(v34, 5);
        v189 = vdupq_laneq_s16(v34, 6);
        v190 = vdupq_laneq_s16(v34, 7);
        _X21 = result;
        do
        {
          __asm { PRFM            #0, [X21] }

          _X0 = _X21 + a2;
          __asm { PRFM            #0, [X0] }

          _X4 = _X21 + v179;
          __asm { PRFM            #0, [X4] }

          _X4 = _X21 + v180;
          __asm { PRFM            #0, [X4] }

          _X4 = _X21 + v181;
          __asm { PRFM            #0, [X4] }

          _X4 = _X21 + 5 * a2;
          __asm { PRFM            #0, [X4] }

          _X4 = _X21 + 6 * a2;
          __asm { PRFM            #0, [X4] }

          _X4 = _X21 + 7 * a2;
          __asm { PRFM            #0, [X4] }

          v207 = &_X0[a2];
          v208 = *v207;
          v209 = (v207 + a2);
          v210 = *v209;
          v211 = (v209 + a2);
          v212 = *v211;
          v213 = (v211 + a2);
          v214 = *(v213 + a2);
          v215 = *v213;
          result = _X9 + 2 * v178;
          v216 = vmovl_u8(*_X21);
          v217 = vmovl_u8(*(_X21 + a2));
          v218 = vmovl_u8(v208);
          v219 = vmovl_u8(v210);
          v220 = vmovl_u8(v212);
          v221 = vmovl_u8(v215);
          v222 = vmovl_u8(v214);
          _X4 = _X9 + 4 * v178;
          _X5 = _X9 + 6 * v178;
          v225 = _X9;
          v226 = 7 * a2;
          v227 = a6;
          do
          {
            v228 = (_X21 + v226 + a2);
            v229 = *v228;
            v230 = (v228 + a2);
            v231 = *v230;
            v232 = (v230 + a2);
            v233 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v216, v183), v217, v184), v218, v185), v219, v186);
            v234 = *v232;
            v235 = (v232 + a2);
            v236 = *v235;
            v237 = (v235 + a2);
            v238 = *v237;
            v239 = (v237 + a2);
            v240 = vmlaq_s16(vmlaq_s16(vmulq_s16(v217, v183), v218, v184), v219, v185);
            v241 = vmovl_u8(*(_X21 + v226));
            v242 = vmlaq_s16(vmulq_s16(v218, v183), v219, v184);
            v216 = vmovl_u8(v229);
            v217 = vmovl_u8(v231);
            v243 = vmulq_s16(v219, v183);
            v218 = vmovl_u8(v234);
            v219 = vmovl_u8(v236);
            v244 = vmlaq_s16(v233, v220, v187);
            v245 = vmlaq_s16(v240, v220, v186);
            v246 = vmlaq_s16(v242, v220, v185);
            v247 = vmlaq_s16(v243, v220, v184);
            v248 = vmulq_s16(v220, v183);
            v220 = vmovl_u8(v238);
            v249 = vmlaq_s16(v244, v221, v188);
            v250 = vmlaq_s16(v245, v221, v187);
            v251 = vmlaq_s16(v246, v221, v186);
            v252 = vmlaq_s16(v247, v221, v185);
            v253 = vmlaq_s16(v248, v221, v184);
            v254 = vmulq_s16(v221, v183);
            v221 = vmovl_u8(*v239);
            v255 = vmlaq_s16(v249, v222, v189);
            v256 = vmlaq_s16(v250, v222, v188);
            v257 = vmlaq_s16(v251, v222, v187);
            v258 = vmlaq_s16(v252, v222, v186);
            v259 = vmlaq_s16(v253, v222, v185);
            v260 = vmlaq_s16(v254, v222, v184);
            v261 = vmulq_s16(v222, v183);
            v222 = vmovl_u8(*(v239 + a2));
            __asm
            {
              PRFM            #0, [X9]
              PRFM            #0, [X0]
              PRFM            #0, [X4]
              PRFM            #0, [X5]
            }

            v266.i64[0] = 0x1800180018001800;
            v266.i64[1] = 0x1800180018001800;
            v267 = vrsraq_n_s16(v266, vmlaq_s16(v255, v190, v241), 2uLL);
            v255.i64[0] = 0x1800180018001800;
            v255.i64[1] = 0x1800180018001800;
            v268 = vrsraq_n_s16(v255, vmlaq_s16(vmlaq_s16(v256, v189, v241), v190, v216), 2uLL);
            v256.i64[0] = 0x1800180018001800;
            v256.i64[1] = 0x1800180018001800;
            v269 = vrsraq_n_s16(v256, vmlaq_s16(vmlaq_s16(vmlaq_s16(v257, v188, v241), v189, v216), v190, v217), 2uLL);
            v257.i64[0] = 0x1800180018001800;
            v257.i64[1] = 0x1800180018001800;
            v270 = vrsraq_n_s16(v257, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v258, v187, v241), v188, v216), v189, v217), v190, v218), 2uLL);
            v258.i64[0] = 0x1800180018001800;
            v258.i64[1] = 0x1800180018001800;
            v271 = vrsraq_n_s16(v258, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v259, v186, v241), v187, v216), v188, v217), v189, v218), v190, v219), 2uLL);
            v259.i64[0] = 0x1800180018001800;
            v259.i64[1] = 0x1800180018001800;
            v272 = vrsraq_n_s16(v259, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v260, v185, v241), v186, v216), v187, v217), v188, v218), v189, v219), v190, v220), 2uLL);
            v260.i64[0] = 0x1800180018001800;
            v260.i64[1] = 0x1800180018001800;
            *v225 = v267;
            v267.i64[0] = 0x1800180018001800;
            v267.i64[1] = 0x1800180018001800;
            v273 = (v225 + v182);
            *v273 = v268;
            v274 = (v273 + v182);
            *v274 = v269;
            v275 = (v274 + v182);
            *v275 = v270;
            v276 = (v275 + v182);
            *v276 = v271;
            v277 = (v276 + v182);
            *v277 = v272;
            v278 = (v277 + v182);
            *v278 = vrsraq_n_s16(v260, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v261, v184, v241), v185, v216), v186, v217), v187, v218), v188, v219), v189, v220), v190, v221), 2uLL);
            v279 = (v278 + v182);
            v226 += 8 * a2;
            v225 = (v278 + v182 + 16 * v178 - 14 * v178);
            *v279 = vrsraq_n_s16(v267, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v183, v241), v184, v216), v185, v217), v186, v218), v187, v219), v188, v220), v189, v221), v190, v222), 2uLL);
            v227 -= 8;
          }

          while (v227);
          ++_X21;
          _X9 += 2;
          v31 -= 8;
        }

        while (v31);
      }
    }
  }

  else if (*a18)
  {
    result += a2;
    if (*(a18 + 36))
    {

      return sub_277A73EA0(result, a2, a3, a4, a5, a6, a18, v34, *v33.i64, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v351 = a2;
      v352 = *(a18 + 8);
      v353 = *(a18 + 16);
      if (a5 == 4 || a6 == 4)
      {
        v538 = 0;
        v539 = 2 * a2;
        v540 = 3 * a2;
        v653 = 3 * a2;
        v656 = 2 * a2;
        v541 = 4 * a2;
        v542 = vdup_lane_s16(*v34.i8, 1);
        v543 = vdup_lane_s16(*v34.i8, 2);
        v544 = vdup_lane_s16(*v34.i8, 3);
        v545 = vdup_laneq_s16(v34, 4);
        v546 = 5 * a2;
        v547 = vdup_laneq_s16(v34, 5);
        v548 = vdup_laneq_s16(v34, 6);
        v549 = 4 * a4;
        v650 = a3 + a4 + (2 * a4);
        v550 = a3 + 2 * a4;
        v551 = a3 + a4;
        v552 = &v352->i8[6 * v353];
        v553 = 8 * v353;
        v554 = v351 + v546;
        v555 = a1 + v554 + v540 - v35;
        v556 = a1 + v554 + v539 - v35;
        v557 = 2 * v351 + v546 - v35;
        v558 = &v352->i8[4 * v353];
        v559 = a1 + v557;
        v560 = a1 + v554 - v35;
        v561.i64[0] = 0x1800180018001800;
        v561.i64[1] = 0x1800180018001800;
        v562.i64[0] = 0xE800E800E800E800;
        v562.i64[1] = 0xE800E800E800E800;
        v563 = &v352->i8[2 * v353];
        do
        {
          v564 = v31;
          v565 = 0;
          v20.i32[0] = *(result + v351);
          v21.i32[0] = *(result + v656);
          v22.i32[0] = *(result + v653);
          v23.i32[0] = *(result + v541);
          v566 = vmovl_u8(*result).u64[0];
          v567 = v560;
          v568 = vmovl_u8(v20).u64[0];
          v21 = vmovl_u8(v21).u64[0];
          v569 = vmovl_u8(v22).u64[0];
          v570 = v559;
          v571 = v556;
          v572 = v555;
          v573 = a3;
          v20 = vmovl_u8(*v23.i8).u64[0];
          v574 = v551;
          v575 = v550;
          v576 = v650;
          v577 = a6;
          do
          {
            v28.i32[0] = *(v567 + v538);
            v27.i32[0] = *(v570 + v538);
            v29.i32[0] = *(v571 + v538);
            v22.i32[0] = *(v572 + v538);
            v578 = vmla_s16(vmla_s16(vmul_s16(v20, v547), v569, v545), v21, v544);
            v579 = vmla_s16(vmla_s16(vmul_s16(v20, v545), v569, v544), v21, v543);
            v580 = vmla_s16(vmla_s16(vmul_s16(v20, v544), v569, v543), v21, v542);
            v21 = vmovl_u8(*v27.i8).u64[0];
            v581 = vmla_s16(v578, v568, v543);
            v582 = vmla_s16(v579, v568, v542);
            v568 = vmovl_u8(*v28.i8).u64[0];
            v583 = vmla_s16(vmul_s16(v20, v543), v569, v542);
            v569 = vmovl_u8(*v29.i8).u64[0];
            v584 = vmla_s16(v581, v566, v542);
            v566 = v20;
            v20 = vmovl_u8(v22).u64[0];
            *v585.i8 = vrshr_n_s16(vmla_s16(v584, v568, v548), 2uLL);
            v586.i64[0] = *(v352->i64 + v565);
            v28.i64[0] = *&v563[v565];
            v29.i64[0] = *&v558[v565];
            *v587.i8 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(v580, v568, v545), v21, v547), v569, v548), 2uLL);
            *v27.i8 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v583, v568, v544), v21, v545), v569, v547), v20, v548), 2uLL);
            v585.u64[1] = vrshr_n_s16(vmla_s16(vmla_s16(v582, v568, v547), v21, v548), 2uLL);
            v586.i64[1] = v28.i64[0];
            v588 = vhaddq_u16(v586, vaddq_s16(v585, v561));
            v587.i64[1] = v27.i64[0];
            v29.i64[1] = *&v552[v565];
            v23 = vaddq_s16(vhaddq_u16(v29, vaddq_s16(v587, v561)), v562);
            *v588.i8 = vqrshrun_n_s16(vaddq_s16(v588, v562), 4uLL);
            *(v573 + v538) = v588.i32[0];
            v589 = (v576 + v538);
            *(v574 + v538) = v588.i32[1];
            v576 += v549;
            v574 += v549;
            v22 = vqrshrun_n_s16(v23, 4uLL);
            v573 += v549;
            *(v575 + v538) = v22.i32[0];
            v565 += v553;
            v572 += v541;
            v571 += v541;
            v570 += v541;
            v567 += v541;
            v575 += v549;
            *v589 = v22.i32[1];
            v577 -= 4;
          }

          while (v577);
          result += 4;
          v352 = (v352 + 8);
          v538 += 4;
          v552 += 8;
          v558 += 8;
          v563 += 8;
          v31 = v564 - 4;
        }

        while (v564 != 4);
      }

      else
      {
        v354 = 0;
        v355 = vdupq_lane_s16(*v34.i8, 1);
        v356 = vdupq_lane_s16(*v34.i8, 2);
        v357 = vdupq_lane_s16(*v34.i8, 3);
        v358 = vdupq_laneq_s16(v34, 4);
        v359 = vdupq_laneq_s16(v34, 5);
        v360 = vdupq_laneq_s16(v34, 6);
        v361 = 8 * a2;
        v655 = a1 + a2 + (5 * a2) - v35;
        v362 = 6 * v353;
        v363 = 8 * v353;
        v364 = 6 * v353 + v363;
        v365 = 16 * v353;
        v366 = 4 * v353;
        v367 = 4 * v353 + v363;
        v368 = 2 * v353;
        v369 = 2 * v353 + v363;
        v370 = 3 * a4;
        v371 = 8 * a4;
        v649 = a3 + 2 * a4 + 4 * a4;
        v652 = a3 + v370 + 4 * a4;
        v647 = a3 + a4 + (4 * a4);
        v642 = a3 + 4 * a4;
        v640 = a3 + v370;
        v372 = a3 + 2 * a4;
        v373.i64[0] = 0xE800E800E800E800;
        v373.i64[1] = 0xE800E800E800E800;
        v374 = a3 + a4;
        do
        {
          v375 = v31;
          v376 = (result + v351 + v351);
          v377 = *v376;
          v378 = (v376 + v351);
          v379 = vmovl_u8(*result);
          v381 = v642;
          v380 = a3;
          v382 = v374;
          v383 = v372;
          v384 = vmovl_u8(*(result + v351));
          v385 = vmovl_u8(v377);
          v386 = vmovl_u8(*v378);
          v387 = v640;
          v388 = v647;
          v389 = v649;
          v390 = vmovl_u8(*(v378 + v351));
          v391 = v652;
          v392 = v655;
          v393 = v352;
          v394 = a6;
          do
          {
            v395 = (v392 + v354 + v351);
            v396 = *v395;
            v397 = (v395 + v351);
            v398 = *v397;
            v399 = (v397 + v351);
            v400 = *v399;
            v401 = (v399 + v351);
            v402 = *v401;
            v403 = (v401 + v351);
            v404 = *v403;
            v405 = (v403 + v351);
            v406 = vmovl_u8(*(v392 + v354));
            v407 = vmovl_u8(v396);
            v408 = vmovl_u8(v398);
            v409 = vmulq_s16(v379, v355);
            v379 = vmovl_u8(v400);
            v410 = vmlaq_s16(vmlaq_s16(v409, v384, v356), v385, v357);
            v411 = vmlaq_s16(vmulq_s16(v384, v355), v385, v356);
            v412 = vmulq_s16(v385, v355);
            v384 = vmovl_u8(v402);
            v385 = vmovl_u8(v404);
            v413 = vmlaq_s16(v410, v386, v358);
            v414 = vmlaq_s16(v411, v386, v357);
            v415 = vmlaq_s16(v412, v386, v356);
            v416 = vmulq_s16(v386, v355);
            v386 = vmovl_u8(*v405);
            v417 = vmlaq_s16(v413, v390, v359);
            v418 = vmlaq_s16(v414, v390, v358);
            v419 = vmlaq_s16(v415, v390, v357);
            v420 = vmlaq_s16(v416, v390, v356);
            v421 = vmulq_s16(v390, v355);
            v390 = vmovl_u8(*(v405 + v351));
            v422.i64[0] = 0x1800180018001800;
            v422.i64[1] = 0x1800180018001800;
            v423.i64[0] = 0x1800180018001800;
            v423.i64[1] = 0x1800180018001800;
            v424 = vrsraq_n_s16(v422, vmlaq_s16(v417, v360, v406), 2uLL);
            v417.i64[0] = 0x1800180018001800;
            v417.i64[1] = 0x1800180018001800;
            v425 = vrsraq_n_s16(v423, vmlaq_s16(vmlaq_s16(v418, v359, v406), v360, v407), 2uLL);
            v426.i64[0] = 0x1800180018001800;
            v426.i64[1] = 0x1800180018001800;
            v427 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v421, v356, v406), v357, v407), v358, v408), v359, v379);
            v428.i64[0] = 0x1800180018001800;
            v428.i64[1] = 0x1800180018001800;
            v429.i64[0] = 0x1800180018001800;
            v429.i64[1] = 0x1800180018001800;
            v418.i64[0] = 0x1800180018001800;
            v418.i64[1] = 0x1800180018001800;
            v430 = vrsraq_n_s16(v429, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v355, v406), v356, v407), v357, v408), v358, v379), v359, v384), v360, v385), 2uLL);
            *v425.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v393 + v368), v425), v373), 4uLL);
            *v417.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v393 + v366), vrsraq_n_s16(v417, vmlaq_s16(vmlaq_s16(vmlaq_s16(v419, v358, v406), v359, v407), v360, v408), 2uLL)), v373), 4uLL);
            *v406.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v393 + v362), vrsraq_n_s16(v426, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v420, v357, v406), v358, v407), v359, v408), v360, v379), 2uLL)), v373), 4uLL);
            v431 = vrsraq_n_s16(v418, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v355, v407), v356, v408), v357, v379), v358, v384), v359, v385), v360, v386), 2uLL);
            *(v380 + v354) = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*v393, v424), v373), 4uLL);
            *(v382 + v354) = v425.i64[0];
            *(v383 + v354) = v417.i64[0];
            *(v387 + v354) = v406.i64[0];
            v424.i64[0] = 0x1800180018001800;
            v424.i64[1] = 0x1800180018001800;
            v432 = vrsraq_n_s16(v424, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v355, v408), v356, v379), v357, v384), v358, v385), v359, v386), v360, v390), 2uLL);
            v433 = vhaddq_u16(*(v393 + v363), vrsraq_n_s16(v428, vmlaq_s16(v427, v360, v384), 2uLL));
            v434 = vaddq_s16(vhaddq_u16(*(v393 + v367), v431), v373);
            v435 = vaddq_s16(vhaddq_u16(*(v393 + v364), v432), v373);
            *v407.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v393 + v369), v430), v373), 4uLL);
            *(v381 + v354) = vqrshrun_n_s16(vaddq_s16(v433, v373), 4uLL);
            *(v388 + v354) = v407.i64[0];
            *(v389 + v354) = vqrshrun_n_s16(v434, 4uLL);
            *(v391 + v354) = vqrshrun_n_s16(v435, 4uLL);
            v392 += v361;
            v393 = (v393 + v365);
            v391 += v371;
            v389 += v371;
            v388 += v371;
            v387 += v371;
            v383 += v371;
            v382 += v371;
            v380 += v371;
            v381 += v371;
            v394 -= 8;
          }

          while (v394);
          result += 8;
          ++v352;
          v354 += 8;
          v31 = v375 - 8;
        }

        while (v375 != 8);
      }
    }
  }

  else
  {
    v470 = a2;
    v471 = (result + a2);
    v472 = *(a18 + 8);
    v473 = *(a18 + 16);
    if (a5 == 4 || a6 == 4)
    {
      v590 = 2 * a2;
      v591 = 4 * a2;
      v592 = 5 * a2;
      v593 = vdup_lane_s16(*v34.i8, 1);
      v594 = vdup_lane_s16(*v34.i8, 2);
      v595 = vdup_lane_s16(*v34.i8, 3);
      v596 = vdup_laneq_s16(v34, 4);
      v597 = vdup_laneq_s16(v34, 5);
      v598 = vdup_laneq_s16(v34, 6);
      v599 = 6 * v473;
      v600 = 8 * v473;
      result = 4 * v473;
      v601 = 2 * v473;
      v602 = a1 + 4 * v470 - v35;
      v603 = a1 + v470 + v590 - v35;
      v604 = a1 - v35 + 2 * v470;
      do
      {
        a16.i32[0] = *(v471->i32 + v470);
        v19.i32[0] = *(v471->i32 + v590);
        v20.i32[0] = *(v471->i32 + 3 * v470);
        v22.i32[0] = v471->i32[v591 / 4];
        v605 = vmovl_u8(v471->u32[0]).u64[0];
        v606 = vmovl_u8(a16).u64[0];
        v607 = vmovl_u8(v19).u64[0];
        v19 = vmovl_u8(v20).u64[0];
        v608 = v471;
        v609 = v604;
        a16 = vmovl_u8(v22).u64[0];
        v610 = v603;
        v611 = v602;
        v612 = v472;
        v613 = a6;
        do
        {
          v25.i32[0] = *(v608->i32 + v592);
          v26.i32[0] = *(v609 + v592);
          v27.i32[0] = *(v610 + v592);
          v614 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(a16, v597), v19, v596), v607, v595), v606, v594);
          v615 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(a16, v596), v19, v595), v607, v594), v606, v593);
          v616 = vmla_s16(vmla_s16(vmul_s16(a16, v595), v19, v594), v607, v593);
          v617 = vmla_s16(vmul_s16(a16, v594), v19, v593);
          v28.i32[0] = *(v611 + v592);
          v606 = vmovl_u8(v25).u64[0];
          v607 = vmovl_u8(v26).u64[0];
          v19 = vmovl_u8(*v27.i8).u64[0];
          v618 = vmla_s16(v614, v605, v593);
          v605 = a16;
          a16 = vmovl_u8(*v28.i8).u64[0];
          v25 = vrsra_n_s16(0x1800180018001800, vmla_s16(v618, v606, v598), 2uLL);
          v20 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v615, v606, v597), v607, v598), 2uLL);
          v22 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v616, v606, v596), v607, v597), v19, v598), 2uLL);
          *v612 = v25;
          *(v612 + v601) = v20;
          *(v612 + result) = v22;
          *(v612 + v599) = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v617, v606, v595), v607, v596), v19, v597), a16, v598), 2uLL);
          v612 = (v612 + v600);
          v611 += v591;
          v610 += v591;
          v609 += v591;
          v608 = (v608 + v591);
          v613 -= 4;
        }

        while (v613);
        v471 = (v471 + 4);
        ++v472;
        v602 += 4;
        v603 += 4;
        v604 += 4;
        v31 -= 4;
      }

      while (v31);
    }

    else
    {
      v474 = vdupq_lane_s16(*v34.i8, 1);
      v475 = vdupq_lane_s16(*v34.i8, 2);
      v476 = vdupq_lane_s16(*v34.i8, 3);
      v477 = vdupq_laneq_s16(v34, 4);
      v478 = vdupq_laneq_s16(v34, 5);
      v479 = vdupq_laneq_s16(v34, 6);
      v480 = 2 * v473;
      do
      {
        v481 = (v471 + 5 * a2);
        v482 = (v471 + a2 + a2);
        v483 = *v482;
        v484 = (v482 + a2);
        v485 = vmovl_u8(*v471);
        v486 = vmovl_u8(*(v471 + a2));
        v487 = vmovl_u8(v483);
        v488 = vmovl_u8(*v484);
        v489 = vmovl_u8(*(v484 + a2));
        v490 = v472;
        v491 = a6;
        do
        {
          v492 = *v481;
          v493 = (v481 + a2);
          v494 = *v493;
          v495 = (v493 + a2);
          v496 = vmlaq_s16(vmulq_s16(v485, v474), v486, v475);
          v497 = *v495;
          v498 = (v495 + a2);
          v499 = vmlaq_s16(vmlaq_s16(v496, v487, v476), v488, v477);
          v500 = *v498;
          v501 = (v498 + a2);
          v502 = vmulq_s16(v486, v474);
          v503 = *v501;
          v504 = (v501 + a2);
          v505 = *v504;
          v506 = (v504 + a2);
          v507 = *v506;
          v508 = (v506 + a2);
          v509 = vmovl_u8(v492);
          v510 = vmovl_u8(v494);
          v511 = vmlaq_s16(vmlaq_s16(v502, v487, v475), v488, v476);
          v512 = vmlaq_s16(vmulq_s16(v487, v474), v488, v475);
          v513 = vmovl_u8(v497);
          v485 = vmovl_u8(v500);
          v514 = vmulq_s16(v488, v474);
          v486 = vmovl_u8(v503);
          v487 = vmovl_u8(v505);
          v488 = vmovl_u8(v507);
          v515 = vmlaq_s16(v499, v489, v478);
          v516 = vmlaq_s16(v511, v489, v477);
          v517 = vmlaq_s16(v512, v489, v476);
          v518 = vmlaq_s16(v514, v489, v475);
          v519 = vmulq_s16(v489, v474);
          v489 = vmovl_u8(*v508);
          v520.i64[0] = 0x1800180018001800;
          v520.i64[1] = 0x1800180018001800;
          v521 = vrsraq_n_s16(v520, vmlaq_s16(v515, v479, v509), 2uLL);
          v515.i64[0] = 0x1800180018001800;
          v515.i64[1] = 0x1800180018001800;
          v522 = vrsraq_n_s16(v515, vmlaq_s16(vmlaq_s16(v516, v478, v509), v479, v510), 2uLL);
          v516.i64[0] = 0x1800180018001800;
          v516.i64[1] = 0x1800180018001800;
          v523 = vrsraq_n_s16(v516, vmlaq_s16(vmlaq_s16(vmlaq_s16(v517, v477, v509), v478, v510), v479, v513), 2uLL);
          v524.i64[0] = 0x1800180018001800;
          v524.i64[1] = 0x1800180018001800;
          v525 = vrsraq_n_s16(v524, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v518, v476, v509), v477, v510), v478, v513), v479, v485), 2uLL);
          v526.i64[0] = 0x1800180018001800;
          v526.i64[1] = 0x1800180018001800;
          v527 = vrsraq_n_s16(v526, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v519, v475, v509), v476, v510), v477, v513), v478, v485), v479, v486), 2uLL);
          v519.i64[0] = 0x1800180018001800;
          v519.i64[1] = 0x1800180018001800;
          v528 = vrsraq_n_s16(v519, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v474, v509), v475, v510), v476, v513), v477, v485), v478, v486), v479, v487), 2uLL);
          v509.i64[0] = 0x1800180018001800;
          v509.i64[1] = 0x1800180018001800;
          v529 = vrsraq_n_s16(v509, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v474, v510), v475, v513), v476, v485), v477, v486), v478, v487), v479, v488), 2uLL);
          v530 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v474, v513), v475, v485), v476, v486), v477, v487), v478, v488), v479, v489);
          v513.i64[0] = 0x1800180018001800;
          v513.i64[1] = 0x1800180018001800;
          *v490 = v521;
          v531 = (v490 + v480);
          *v531 = v522;
          v532 = (v531 + v480);
          *v532 = v523;
          v533 = (v532 + v480);
          *v533 = v525;
          v534 = (v533 + v480);
          *v534 = v527;
          v535 = (v534 + v480);
          *v535 = v528;
          v536 = (v535 + v480);
          *v536 = v529;
          v537 = (v536 + v480);
          *v537 = vrsraq_n_s16(v513, v530, 2uLL);
          v481 = (&v508[a2] - 7 * a2);
          v490 = (v537 + 16 * v473 - 14 * v473);
          v491 -= 8;
        }

        while (v491);
        ++v471;
        v472 += 2;
        v31 -= 8;
      }

      while (v31);
    }
  }

  return result;
}

uint8x8_t *sub_277A73EA0(uint8x8_t *result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int16x8_t a8, double a9, double a10, double a11, double a12, double a13, uint16x4_t a14, uint16x4_t a15)
{
  v23 = *(a7 + 40);
  v22 = *(a7 + 44);
  v24 = *(a7 + 8);
  v25 = *(a7 + 16);
  if (a5 == 4 || a6 == 4)
  {
    v116 = 0;
    v117 = a2;
    v118 = 2 * a2;
    v169 = 2 * a2;
    v119 = 3 * a2;
    v167 = 3 * a2;
    v120 = 4 * a2;
    v121 = 5 * a2;
    v122 = vdup_lane_s16(*a8.i8, 1);
    v123 = vdup_lane_s16(*a8.i8, 2);
    v124 = vdup_lane_s16(*a8.i8, 3);
    v125 = vdup_laneq_s16(a8, 4);
    v126 = vdup_laneq_s16(a8, 5);
    v127 = vdup_laneq_s16(a8, 6);
    a14.i32[0] = v23;
    a15.i32[0] = v22;
    v128 = 4 * a4;
    v165 = a3 + a4 + (2 * a4);
    v129 = a3 + 2 * a4;
    v130 = a3 + a4;
    v131 = v24 + 6 * v25;
    v132 = 8 * v25;
    v133 = v24 + 4 * v25;
    v134 = v24 + 2 * v25;
    v135 = result + v121 + v119;
    v136 = result + v121 + v118;
    v137 = v117;
    v138 = result + v117 + v121;
    v139.i64[0] = 0xE800E800E800E800;
    v139.i64[1] = 0xE800E800E800E800;
    v140 = result + v121;
    do
    {
      v141 = 0;
      v15.i32[0] = *(result->i32 + v137);
      v16.i32[0] = *(result->i32 + v169);
      v17.i32[0] = *(result->i32 + v167);
      v18.i32[0] = result->i32[v120 / 4];
      v142 = vmovl_u8(result->u32[0]).u64[0];
      v143 = v140;
      v144 = vmovl_u8(v15).u64[0];
      v16 = vmovl_u8(v16).u64[0];
      v145 = vmovl_u8(v17).u64[0];
      v146 = v138;
      v147 = v136;
      v148 = v135;
      v149 = a3;
      v15 = vmovl_u8(*v18.i8).u64[0];
      v150 = v130;
      v151 = v129;
      v152 = v165;
      v153 = a6;
      do
      {
        v19.i32[0] = *&v143[v116];
        v20.i32[0] = *&v146[v116];
        v21.i32[0] = *&v147[v116];
        v17.i32[0] = *&v148[v116];
        v154 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v15, v126), v145, v125), v16, v124), v144, v123);
        v155 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v15, v125), v145, v124), v16, v123), v144, v122);
        v156 = vmla_s16(vmla_s16(vmul_s16(v15, v124), v145, v123), v16, v122);
        v144 = vmovl_u8(*v19.i8).u64[0];
        v16 = vmovl_u8(*v20.i8).u64[0];
        v157 = vmla_s16(vmul_s16(v15, v123), v145, v122);
        v145 = vmovl_u8(v21).u64[0];
        v158 = vmla_s16(v154, v142, v122);
        v142 = v15;
        v15 = vmovl_u8(v17).u64[0];
        v21 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v157, v144, v124), v16, v125), v145, v126), v15, v127), 2uLL);
        v19 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v156, v144, v125), v16, v126), v145, v127), 2uLL), a15, 0), *&v133[v141], a14, 0);
        v159 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(v158, v144, v127), 2uLL), a15, 0), *(v24 + v141), a14, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v155, v144, v126), v16, v127), 2uLL), a15, 0), *&v134[v141], a14, 0), 4uLL);
        v20 = vmlal_lane_u16(vmull_lane_u16(v21, a15, 0), *&v131[v141], a14, 0);
        v18 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v19, 4uLL), v20, 4uLL), v139);
        *v159.i8 = vqrshrun_n_s16(vaddq_s16(v159, v139), 4uLL);
        *(v149 + v116) = v159.i32[0];
        v160 = (v152 + v116);
        *(v150 + v116) = v159.i32[1];
        v152 += v128;
        v150 += v128;
        v17 = vqrshrun_n_s16(v18, 4uLL);
        v149 += v128;
        *(v151 + v116) = v17.i32[0];
        v141 += v132;
        v148 += v120;
        v147 += v120;
        v146 += v120;
        v143 += v120;
        v151 += v128;
        *v160 = v17.i32[1];
        v153 -= 4;
      }

      while (v153);
      result = (result + 4);
      ++v24;
      v116 += 4;
      v131 += 8;
      v133 += 8;
      v134 += 8;
      a5 -= 4;
    }

    while (a5);
  }

  else
  {
    v26 = 0;
    v27 = vdupq_lane_s16(*a8.i8, 1);
    v28 = vdupq_lane_s16(*a8.i8, 2);
    v29 = a2;
    v30 = vdupq_lane_s16(*a8.i8, 3);
    v31 = vdupq_laneq_s16(a8, 4);
    v32 = vdupq_laneq_s16(a8, 5);
    v33 = vdupq_laneq_s16(a8, 6);
    a14.i32[0] = *(a7 + 40);
    v34 = 8 * a2;
    a15.i32[0] = *(a7 + 44);
    v168 = result + 5 * a2;
    v35 = 6 * v25;
    v36 = 8 * v25;
    v37 = 6 * v25 + v36;
    v38 = 16 * v25;
    v39 = 4 * v25;
    v40 = 4 * v25 + v36;
    v41 = 2 * v25;
    v42 = 2 * v25 + v36;
    v43 = 3 * a4;
    v44 = 8 * a4;
    v164 = a3 + 2 * a4 + 4 * a4;
    v166 = a3 + v43 + 4 * a4;
    v163 = a3 + a4 + (4 * a4);
    v162 = a3 + 4 * a4;
    v161 = a3 + v43;
    v45 = a3 + 2 * a4;
    v46.i64[0] = 0xE800E800E800E800;
    v46.i64[1] = 0xE800E800E800E800;
    v47 = a3 + a4;
    do
    {
      v48 = (result + v29 + v29);
      v49 = *v48;
      v50 = (v48 + v29);
      v51 = vmovl_u8(*result);
      v52 = a3;
      v53 = v47;
      v54 = v45;
      v55 = vmovl_u8(*(result + v29));
      v56 = vmovl_u8(v49);
      v57 = vmovl_u8(*v50);
      v59 = v161;
      v58 = v162;
      v61 = v163;
      v60 = v164;
      v62 = vmovl_u8(*(v50 + v29));
      v64 = v166;
      v63 = v168;
      v65 = v24;
      v66 = a6;
      do
      {
        v67 = &v63[v26 + v29];
        v68 = *v67;
        v69 = (v67 + v29);
        v70 = *v69;
        v71 = (v69 + v29);
        v72 = *v71;
        v73 = (v71 + v29);
        v74 = *v73;
        v75 = (v73 + v29);
        v76 = *v75;
        v77 = (v75 + v29);
        v78 = vmovl_u8(*&v63[v26]);
        v79 = vmovl_u8(v68);
        v80 = vmovl_u8(v70);
        v81 = vmulq_s16(v51, v27);
        v51 = vmovl_u8(v72);
        v82 = vmlaq_s16(vmlaq_s16(v81, v55, v28), v56, v30);
        v83 = vmulq_s16(v55, v27);
        v55 = vmovl_u8(v74);
        v84 = vmlaq_s16(v82, v57, v31);
        v85 = vmlaq_s16(vmlaq_s16(v83, v56, v28), v57, v30);
        v86 = vmlaq_s16(vmulq_s16(v56, v27), v57, v28);
        v56 = vmovl_u8(v76);
        v87 = vmulq_s16(v57, v27);
        v57 = vmovl_u8(*v77);
        v88 = vmlaq_s16(v85, v62, v31);
        v89 = vmlaq_s16(v86, v62, v30);
        v90 = vmlaq_s16(v87, v62, v28);
        v91 = vmlaq_s16(v84, v62, v32);
        v92 = vmulq_s16(v62, v27);
        v62 = vmovl_u8(*(v77 + v29));
        v93.i64[0] = 0x1800180018001800;
        v93.i64[1] = 0x1800180018001800;
        v94 = vrsraq_n_s16(v93, vmlaq_s16(v91, v33, v78), 2uLL);
        v95.i64[0] = 0x1800180018001800;
        v95.i64[1] = 0x1800180018001800;
        v96 = vrsraq_n_s16(v95, vmlaq_s16(vmlaq_s16(v88, v32, v78), v33, v79), 2uLL);
        v97.i64[0] = 0x1800180018001800;
        v97.i64[1] = 0x1800180018001800;
        v98 = vrsraq_n_s16(v97, vmlaq_s16(vmlaq_s16(vmlaq_s16(v89, v31, v78), v32, v79), v33, v80), 2uLL);
        v91.i64[0] = 0x1800180018001800;
        v91.i64[1] = 0x1800180018001800;
        v99 = vrsraq_n_s16(v91, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v90, v30, v78), v31, v79), v32, v80), v33, v51), 2uLL);
        v100.i64[0] = 0x1800180018001800;
        v100.i64[1] = 0x1800180018001800;
        v101 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v92, v28, v78), v30, v79), v31, v80), v32, v51), v33, v55);
        v102 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v27, v78), v28, v79), v30, v80), v31, v51), v32, v55);
        v78.i64[0] = 0x1800180018001800;
        v78.i64[1] = 0x1800180018001800;
        v103 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v27, v79), v28, v80), v30, v51), v31, v55), v32, v56);
        v79.i64[0] = 0x1800180018001800;
        v79.i64[1] = 0x1800180018001800;
        v104 = vrsraq_n_s16(v100, v101, 2uLL);
        v105 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v27, v80), v28, v51), v30, v55), v31, v56), v32, v57);
        v106 = *&v65->i8[v41];
        v80.i64[0] = 0x1800180018001800;
        v80.i64[1] = 0x1800180018001800;
        v107 = *&v65->i8[v39];
        v108 = *&v65->i8[v35];
        v109 = vrsraq_n_s16(v78, vmlaq_s16(v102, v33, v56), 2uLL);
        v110 = vrsraq_n_s16(v79, vmlaq_s16(v103, v33, v57), 2uLL);
        v111 = vrsraq_n_s16(v80, vmlaq_s16(v105, v33, v62), 2uLL);
        *(v52 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v94.i8, a15, 0), *v65, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v94, a15, 0), *v65->i8, a14, 0), 4uLL), v46), 4uLL);
        *(v53 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v96.i8, a15, 0), *v106.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v96, a15, 0), v106, a14, 0), 4uLL), v46), 4uLL);
        *(v54 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v98.i8, a15, 0), *v107.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v98, a15, 0), v107, a14, 0), 4uLL), v46), 4uLL);
        *(v59 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v99.i8, a15, 0), *v108.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v99, a15, 0), v108, a14, 0), 4uLL), v46), 4uLL);
        v112 = *&v65->i8[v40];
        v113 = *&v65->i8[v37];
        v114 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v104.i8, a15, 0), v65[v36 / 8], a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v104, a15, 0), *v65[v36 / 8].i8, a14, 0), 4uLL);
        v115 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v109.i8, a15, 0), *(v65 + v42), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v109, a15, 0), *&v65->i8[v42], a14, 0), 4uLL);
        *(v58 + v26) = vqrshrun_n_s16(vaddq_s16(v114, v46), 4uLL);
        *(v61 + v26) = vqrshrun_n_s16(vaddq_s16(v115, v46), 4uLL);
        *(v60 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v110.i8, a15, 0), *v112.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v110, a15, 0), v112, a14, 0), 4uLL), v46), 4uLL);
        *(v64 + v26) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v111.i8, a15, 0), *v113.i8, a14, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v111, a15, 0), v113, a14, 0), 4uLL), v46), 4uLL);
        v63 += v34;
        v65 = (v65 + v38);
        v64 += v44;
        v60 += v44;
        v61 += v44;
        v59 += v44;
        v54 += v44;
        v53 += v44;
        v52 += v44;
        v58 += v44;
        v66 -= 8;
      }

      while (v66);
      ++result;
      v24 += 2;
      v26 += 8;
      a5 -= 8;
    }

    while (a5);
  }

  return result;
}

uint8x8_t *sub_277A74598(uint8x8_t *result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int16x8_t a8, uint16x4_t a9, uint16x4_t a10)
{
  v20 = a2;
  v268 = 3 * a2;
  v269 = 2 * a2;
  v21 = 4 * a2;
  v270 = *(a7 + 16);
  v266 = 6 * a2;
  v22 = 2 * a4;
  v23 = 3 * a4;
  a9.i16[0] = *(a7 + 40);
  a10.i16[0] = *(a7 + 44);
  v265 = 5 * a2;
  if (a5 == 4 || a6 == 4)
  {
    v185 = 0;
    v276 = 3 * v270;
    v277 = 2 * v270;
    v186 = vdup_lane_s16(*a8.i8, 0);
    v187 = vdup_lane_s16(*a8.i8, 1);
    v188 = vdup_lane_s16(*a8.i8, 2);
    v189 = vdup_lane_s16(*a8.i8, 3);
    v190 = vdup_laneq_s16(a8, 4);
    v191 = vdup_laneq_s16(a8, 5);
    v192 = vdup_laneq_s16(a8, 6);
    v193 = vdup_laneq_s16(a8, 7);
    v194 = 4 * a4;
    v274 = a3 + v23;
    v262 = a3 + v22;
    v264 = a3 + a4 + v22;
    v260 = result + 7 * a2 + v268;
    v258 = result + 7 * a2 + v269;
    v257 = result + a2 + (7 * a2);
    v195.i64[0] = 0xE800E800E800E800;
    v195.i64[1] = 0xE800E800E800E800;
    v256 = result + 7 * a2;
    _X25 = *(a7 + 8);
    do
    {
      v273 = a5;
      __asm { PRFM            #0, [X0] }

      _X10 = result + v20;
      __asm { PRFM            #0, [X10] }

      _X12 = result + v269;
      __asm { PRFM            #0, [X12] }

      _X14 = result + v268;
      __asm { PRFM            #0, [X14] }

      v11.i32[0] = *(result->i32 + v20);
      v12.i32[0] = *(result->i32 + v269);
      v13.i32[0] = *(result->i32 + v268);
      v14.i32[0] = result->i32[v21 / 4];
      v15.i32[0] = *(result->i32 + v265);
      v16.i32[0] = *(result->i32 + v266);
      v204 = vmovl_u8(result->u32[0]).u64[0];
      v11 = vmovl_u8(v11).u64[0];
      v205 = vmovl_u8(v12).u64[0];
      v206 = vmovl_u8(v13).u64[0];
      v14 = vmovl_u8(v14).u64[0];
      _X10 = _X25 + 2 * v270;
      _X12 = _X25 + 2 * v277;
      v13 = vmovl_u8(v15).u64[0];
      v12 = vmovl_u8(*v16.i8).u64[0];
      _X14 = _X25 + 2 * v276;
      v210 = v256;
      v211 = v257;
      v212 = v258;
      v213 = v260;
      __asm
      {
        PRFM            #0, [X25]
        PRFM            #0, [X10]
      }

      v216 = _X25;
      v217 = a3 + a4;
      v218 = v262;
      __asm
      {
        PRFM            #0, [X12]
        PRFM            #0, [X14]
      }

      v221 = v264;
      v222 = v274;
      v223 = a3;
      v224 = a6;
      do
      {
        _X14 = (v223 + v185);
        v10.i32[0] = *&v210[v185];
        v18.i32[0] = *&v211[v185];
        v19.i32[0] = *&v212[v185];
        v17.i32[0] = *&v213[v185];
        v226 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v191), v13, v190), v14, v189), v206, v188);
        v227 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v192), v13, v191), v14, v190), v206, v189), v205, v188);
        v228 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v190), v13, v189), v14, v188), v206, v187);
        v229 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v12, v189), v13, v188), v14, v187), v206, v186);
        v206 = vmovl_u8(v10).u64[0];
        v230 = vmla_s16(vmla_s16(v227, v11, v187), v204, v186);
        v231 = vmla_s16(vmla_s16(v226, v205, v187), v11, v186);
        v204 = v14;
        v14 = vmovl_u8(*v18.i8).u64[0];
        v11 = v13;
        v13 = vmovl_u8(*v19.i8).u64[0];
        v232 = vmla_s16(v228, v205, v186);
        v205 = v12;
        v12 = vmovl_u8(*v17.i8).u64[0];
        __asm { PRFM            #0, [X25] }

        _X16 = (_X25 + 2 * v270);
        __asm { PRFM            #0, [X16] }

        _X17 = _X25 + 2 * v277;
        __asm { PRFM            #0, [X17] }

        _X17 = _X25 + 2 * v276;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X14]
        }

        _X17 = (v217 + v185);
        __asm { PRFM            #0, [X17] }

        _X1 = (v218 + v185);
        __asm { PRFM            #0, [X1] }

        _X6 = v222 + v185;
        __asm { PRFM            #0, [X6] }

        v10 = *(_X25 + 6 * v270);
        v18 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v231, v206, v192), v14, v193), 2uLL), a10, 0), *_X16, a9, 0);
        v19 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v232, v206, v191), v14, v192), v13, v193), 2uLL), a10, 0), *(_X25 + 4 * v270), a9, 0);
        v17 = vshrn_high_n_s32(vshrn_n_s32(v19, 4uLL), vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v229, v206, v190), v14, v191), v13, v192), v12, v193), 2uLL), a10, 0), v10, a9, 0), 4uLL);
        v247 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(v230, v206, v193), 2uLL), a10, 0), *_X25, a9, 0), 4uLL), v18, 4uLL), v195);
        v16 = vaddq_s16(v17, v195);
        *v247.i8 = vqrshrun_n_s16(v247, 4uLL);
        v248 = (v221 + v185);
        *_X14 = v247.i32[0];
        v223 += v194;
        v222 += v194;
        v221 += v194;
        v218 += v194;
        *_X17 = v247.i32[1];
        v15 = vqrshrun_n_s16(v16, 4uLL);
        v217 += v194;
        _X25 += v270;
        v213 += v21;
        v212 += v21;
        *_X1 = v15.i32[0];
        *v248 = v15.i32[1];
        v211 += v21;
        v210 += v21;
        v224 -= 4;
      }

      while (v224);
      result = (result + 4);
      _X25 = v216 + 1;
      v185 += 4;
      a5 -= 4;
    }

    while (v273 != 4);
  }

  else
  {
    v24 = 0;
    v261 = 7 * a2;
    v25 = vdupq_lane_s16(*a8.i8, 0);
    v26 = vdupq_lane_s16(*a8.i8, 1);
    v27 = vdupq_lane_s16(*a8.i8, 2);
    v28 = vdupq_lane_s16(*a8.i8, 3);
    v29 = vdupq_laneq_s16(a8, 4);
    v30 = vdupq_laneq_s16(a8, 5);
    v31 = vdupq_laneq_s16(a8, 6);
    v32 = vdupq_laneq_s16(a8, 7);
    v33 = 8 * a2;
    v259 = result + v261;
    v34 = 6 * v270;
    v35 = 8 * v270;
    v36 = 6 * v270 + v35;
    v37 = 16 * v270;
    v38 = 4 * v270;
    v39 = 2 * v270;
    v40 = 4 * v270 + v35;
    v41 = 2 * v270 + v35;
    v255 = a3 + 3 * a4 + 4 * a4;
    v42 = 8 * a4;
    v254 = a3 + 2 * a4 + 4 * a4;
    v253 = a3 + a4 + (4 * a4);
    v251 = a3 + 3 * a4;
    v252 = a3 + 4 * a4;
    v250 = a3 + a4;
    v43.i64[0] = 0xE800E800E800E800;
    v43.i64[1] = 0xE800E800E800E800;
    v249 = a3 + 2 * a4;
    _X19 = *(a7 + 8);
    v46 = 2 * v22;
    v45 = 2 * v23;
    v47 = 2 * a4;
    do
    {
      v272 = a5;
      __asm { PRFM            #0, [X0] }

      _X9 = result + v20;
      __asm { PRFM            #0, [X9] }

      _X10 = result + v269;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v268;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v21;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v265;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v266;
      __asm { PRFM            #0, [X10] }

      _X10 = result + v261;
      __asm { PRFM            #0, [X10] }

      v263 = result;
      v67 = (result + v20 + v20);
      v68 = *v67;
      v69 = (v67 + v20);
      v70 = *v69;
      v71 = (v69 + v20);
      v72 = *v71;
      v73 = (v71 + v20);
      v74 = *(v73 + v20);
      v75 = *v73;
      v76 = vmovl_u8(*result);
      v77 = a3;
      v275 = _X19 + 2 * v39;
      v78 = vmovl_u8(*(result + v20));
      v79 = vmovl_u8(v68);
      v80 = v259;
      v81 = v249;
      v82 = v250;
      v83 = vmovl_u8(v70);
      v84 = vmovl_u8(v72);
      v85 = vmovl_u8(v75);
      v86 = v251;
      v87 = v252;
      v89 = v253;
      v88 = v254;
      v90 = vmovl_u8(v74);
      v91 = v255;
      _X4 = _X19;
      v93 = a6;
      do
      {
        v94 = v40;
        v95 = v38;
        v96 = v37;
        v97 = v36;
        v98 = v35;
        v99 = v34;
        v100 = v33;
        v101 = v39;
        v102 = &v80[v24 + v20];
        v103 = *v102;
        v104 = (v102 + v20);
        v105 = *v104;
        v106 = (v104 + v20);
        v107 = *v106;
        v108 = (v106 + v20);
        v109 = *v108;
        v110 = (v108 + v20);
        v111 = *v110;
        v112 = (v110 + v20);
        v113 = *(v112 + v20);
        v114 = vmovl_u8(*&v80[v24]);
        v115 = vmulq_s16(v76, v25);
        v76 = vmovl_u8(v103);
        v116 = vmlaq_s16(vmlaq_s16(v115, v78, v26), v79, v27);
        v117 = vmlaq_s16(vmulq_s16(v78, v25), v79, v26);
        v78 = vmovl_u8(v105);
        v118 = vmulq_s16(v79, v25);
        v79 = vmovl_u8(v107);
        v119 = vmlaq_s16(v117, v83, v27);
        v120 = vmlaq_s16(v118, v83, v26);
        v121 = vmulq_s16(v83, v25);
        v122 = vmlaq_s16(v116, v83, v28);
        v83 = vmovl_u8(v109);
        v123 = vmlaq_s16(v119, v84, v28);
        v124 = vmlaq_s16(v120, v84, v27);
        v125 = vmlaq_s16(v121, v84, v26);
        v126 = vmulq_s16(v84, v25);
        v127 = vmlaq_s16(v122, v84, v29);
        v84 = vmovl_u8(v111);
        v128 = vmlaq_s16(v123, v85, v29);
        v129 = vmlaq_s16(v124, v85, v28);
        v130 = vmlaq_s16(v125, v85, v27);
        v131 = vmlaq_s16(v126, v85, v26);
        v132 = vmlaq_s16(v127, v85, v30);
        v133 = vmulq_s16(v85, v25);
        v85 = vmovl_u8(*v112);
        __asm { PRFM            #0, [X19] }

        _X1 = _X19 + 2 * v270;
        __asm { PRFM            #0, [X1] }

        v137 = vmlaq_s16(v128, v90, v30);
        v138 = vmlaq_s16(v132, v90, v31);
        v139 = vmlaq_s16(v129, v90, v29);
        v140 = vmlaq_s16(v130, v90, v28);
        v141 = vmlaq_s16(v131, v90, v27);
        v142 = vmlaq_s16(v133, v90, v26);
        v143 = vmulq_s16(v90, v25);
        v90 = vmovl_u8(v113);
        _X1 = v275;
        __asm { PRFM            #0, [X1] }

        _X1 = _X19 + 6 * v270;
        __asm { PRFM            #0, [X1] }

        v148.i64[0] = 0x1800180018001800;
        v148.i64[1] = 0x1800180018001800;
        v149.i64[0] = 0x1800180018001800;
        v149.i64[1] = 0x1800180018001800;
        v150.i64[0] = 0x1800180018001800;
        v150.i64[1] = 0x1800180018001800;
        v151 = vrsraq_n_s16(v148, vmlaq_s16(v138, v32, v114), 2uLL);
        v152.i64[0] = 0x1800180018001800;
        v152.i64[1] = 0x1800180018001800;
        v153 = vrsraq_n_s16(v149, vmlaq_s16(vmlaq_s16(v137, v31, v114), v32, v76), 2uLL);
        v154 = vrsraq_n_s16(v150, vmlaq_s16(vmlaq_s16(vmlaq_s16(v139, v30, v114), v31, v76), v32, v78), 2uLL);
        v137.i64[0] = 0x1800180018001800;
        v137.i64[1] = 0x1800180018001800;
        v155 = vrsraq_n_s16(v152, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v140, v29, v114), v30, v76), v31, v78), v32, v79), 2uLL);
        v156.i64[0] = 0x1800180018001800;
        v156.i64[1] = 0x1800180018001800;
        v157 = vrsraq_n_s16(v137, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v141, v28, v114), v29, v76), v30, v78), v31, v79), v32, v83), 2uLL);
        v138.i64[0] = 0x1800180018001800;
        v138.i64[1] = 0x1800180018001800;
        v158 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v143, v26, v114), v27, v76), v28, v78), v29, v79), v30, v83), v31, v84), v32, v85);
        v159 = vrsraq_n_s16(v156, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v142, v27, v114), v28, v76), v29, v78), v30, v79), v31, v83), v32, v84), 2uLL);
        v160 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v25, v114), v26, v76), v27, v78), v28, v79), v29, v83), v30, v84), v31, v85), v32, v90);
        v114.i64[0] = 0x1800180018001800;
        v114.i64[1] = 0x1800180018001800;
        __asm { PRFM            #0, [X4] }

        v162 = vrsraq_n_s16(v138, v158, 2uLL);
        _X1 = _X4 + v47;
        __asm { PRFM            #0, [X1] }

        _X1 = _X4 + v46;
        __asm { PRFM            #0, [X1] }

        _X1 = _X4 + v45;
        v168 = vrsraq_n_s16(v114, v160, 2uLL);
        __asm { PRFM            #0, [X1] }

        v39 = v101;
        v33 = v100;
        v34 = v99;
        v35 = v98;
        v36 = v97;
        v37 = v96;
        v38 = v95;
        v40 = v94;
        v170 = *&_X4->i8[v39];
        v171 = *&_X4->i8[v38];
        v172 = vmlal_lane_u16(vmull_lane_u16(*v153.i8, a10, 0), *v170.i8, a9, 0);
        v173 = vmlal_high_lane_u16(vmull_high_lane_u16(v153, a10, 0), v170, a9, 0);
        v174 = vmlal_lane_u16(vmull_lane_u16(*v154.i8, a10, 0), *v171.i8, a9, 0);
        v175 = vmlal_high_lane_u16(vmull_high_lane_u16(v154, a10, 0), v171, a9, 0);
        v176 = *&_X4->i8[v34];
        *(v77 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v151.i8, a10, 0), *_X4, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v151, a10, 0), *_X4->i8, a9, 0), 4uLL), v43), 4uLL);
        *(v82 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v172, 4uLL), v173, 4uLL), v43), 4uLL);
        *(v81 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v174, 4uLL), v175, 4uLL), v43), 4uLL);
        *(v86 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v155.i8, a10, 0), *v176.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v155, a10, 0), v176, a9, 0), 4uLL), v43), 4uLL);
        v177 = *&_X4->i8[v41];
        v178 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v157.i8, a10, 0), *(_X4 + v35), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v157, a10, 0), *&_X4->i8[v35], a9, 0), 4uLL);
        v179 = vmlal_lane_u16(vmull_lane_u16(*v159.i8, a10, 0), *v177.i8, a9, 0);
        v180 = vmlal_high_lane_u16(vmull_high_lane_u16(v159, a10, 0), v177, a9, 0);
        v181 = *&_X4->i8[v94];
        v182 = vmlal_lane_u16(vmull_lane_u16(*v162.i8, a10, 0), *v181.i8, a9, 0);
        v183 = vmlal_high_lane_u16(vmull_high_lane_u16(v162, a10, 0), v181, a9, 0);
        v184 = *&_X4->i8[v36];
        *(v87 + v24) = vqrshrun_n_s16(vaddq_s16(v178, v43), 4uLL);
        *(v89 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v179, 4uLL), v180, 4uLL), v43), 4uLL);
        *(v88 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(v182, 4uLL), v183, 4uLL), v43), 4uLL);
        *(v91 + v24) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v168.i8, a10, 0), *v184.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v168, a10, 0), v184, a9, 0), 4uLL), v43), 4uLL);
        v80 += v33;
        _X4 = (_X4 + v37);
        v91 += v42;
        v88 += v42;
        v86 += v42;
        v89 += v42;
        v81 += v42;
        v82 += v42;
        v77 += v42;
        v87 += v42;
        v93 -= 8;
      }

      while (v93);
      result = v263 + 1;
      _X19 += 2;
      v24 += 8;
      a5 = v272 - 8;
    }

    while (v272 != 8);
  }

  return result;
}

int32x4_t sub_277A74F14(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v11 = vabal_u16(v11, *v6, *(2 * *a3 + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[1] + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[2] + v5));
    v7 = vabal_u16(v7, *v6, *(2 * a3[3] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(v11, v10), vpaddq_s32(v9, v7));
  *a5 = result;
  return result;
}

int32x4_t sub_277A74F98(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 8;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v11 = vabal_u16(v11, *v6, *(2 * *a3 + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[1] + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[2] + v5));
    v7 = vabal_u16(v7, *v6, *(2 * a3[3] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(v11, v10), vpaddq_s32(v9, v7));
  *a5 = result;
  return result;
}

int32x4_t sub_277A7501C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v11 = vabaq_u16(v11, *v6, *(2 * a3[3] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A750B0(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 8;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v11 = vabaq_u16(v11, *v6, *(2 * a3[3] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A75144(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 16;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v11 = vabaq_u16(v11, *v6, *(2 * a3[3] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A751D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 8;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 2 * a2);
    v5 += 2 * a4;
    --v12;
  }

  while (v12);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A752C4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 16;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 2 * a2);
    v5 += 2 * a4;
    --v12;
  }

  while (v12);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A753B0(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 32;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 2 * a2);
    v5 += 2 * a4;
    --v12;
  }

  while (v12);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A7549C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 16;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v13;
  }

  while (v13);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A755E4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v13;
  }

  while (v13);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A7572C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 64;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v13;
  }

  while (v13);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A75874(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 32);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A759E4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 64);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A75B54(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 128);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A75CC4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a1 + 32;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 2 * a2;
  v10 = 2 * *a3 + 32;
  v11 = 2 * a4;
  v12 = 2 * a3[1] + 32;
  v13 = 2 * a3[3] + 32;
  v14 = 2 * a3[2] + 32;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = -32;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v10;
    v26 = v6;
    do
    {
      v27 = v26[-2];
      v28 = v26[-1];
      v29 = vpadalq_u16(v17, vabdq_u16(v27, v25[-2]));
      v30 = vpadalq_u16(v18, vabdq_u16(v27, v24[-2]));
      v31 = vpadalq_u16(v19, vabdq_u16(v27, v22[-2]));
      v32 = vpadalq_u16(v20, vabdq_u16(v27, v23[-2]));
      v33 = vpadalq_u16(v16, vabdq_u16(v28, v25[-1]));
      v34 = vpadalq_u16(v15, vabdq_u16(v28, v24[-1]));
      v35 = vpadalq_u16(v8, vabdq_u16(v28, v22[-1]));
      v36 = vpadalq_u16(v7, vabdq_u16(v28, v23[-1]));
      v37 = *v26;
      v38 = v26[1];
      v26 += 4;
      v39 = *v25;
      v40 = v25[1];
      v25 += 4;
      v17 = vpadalq_u16(v29, vabdq_u16(v37, v39));
      v41 = *v24;
      v42 = v24[1];
      v24 += 4;
      v18 = vpadalq_u16(v30, vabdq_u16(v37, v41));
      v43 = *v22;
      v44 = v22[1];
      v22 += 4;
      v19 = vpadalq_u16(v31, vabdq_u16(v37, v43));
      v45 = *v23;
      v46 = v23[1];
      v23 += 4;
      v20 = vpadalq_u16(v32, vabdq_u16(v37, v45));
      v16 = vpadalq_u16(v33, vabdq_u16(v38, v40));
      v15 = vpadalq_u16(v34, vabdq_u16(v38, v42));
      v8 = vpadalq_u16(v35, vabdq_u16(v38, v44));
      v21 += 32;
      v7 = vpadalq_u16(v36, vabdq_u16(v38, v46));
    }

    while (v21 < 0x60);
    ++v5;
    v6 += v9;
    v10 += v11;
    v12 += v11;
    v13 += v11;
    v14 += v11;
  }

  while (v5 != 64);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v16, v17), vaddq_s32(v15, v18)), vpaddq_s32(vaddq_s32(v8, v19), vaddq_s32(v7, v20)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A75E30(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a1 + 32;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 2 * a2;
  v10 = 2 * *a3 + 32;
  v11 = 2 * a4;
  v12 = 2 * a3[1] + 32;
  v13 = 2 * a3[3] + 32;
  v14 = 2 * a3[2] + 32;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = -32;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v10;
    v26 = v6;
    do
    {
      v27 = v26[-2];
      v28 = v26[-1];
      v29 = vpadalq_u16(v17, vabdq_u16(v27, v25[-2]));
      v30 = vpadalq_u16(v18, vabdq_u16(v27, v24[-2]));
      v31 = vpadalq_u16(v19, vabdq_u16(v27, v22[-2]));
      v32 = vpadalq_u16(v20, vabdq_u16(v27, v23[-2]));
      v33 = vpadalq_u16(v16, vabdq_u16(v28, v25[-1]));
      v34 = vpadalq_u16(v15, vabdq_u16(v28, v24[-1]));
      v35 = vpadalq_u16(v8, vabdq_u16(v28, v22[-1]));
      v36 = vpadalq_u16(v7, vabdq_u16(v28, v23[-1]));
      v37 = *v26;
      v38 = v26[1];
      v26 += 4;
      v39 = *v25;
      v40 = v25[1];
      v25 += 4;
      v17 = vpadalq_u16(v29, vabdq_u16(v37, v39));
      v41 = *v24;
      v42 = v24[1];
      v24 += 4;
      v18 = vpadalq_u16(v30, vabdq_u16(v37, v41));
      v43 = *v22;
      v44 = v22[1];
      v22 += 4;
      v19 = vpadalq_u16(v31, vabdq_u16(v37, v43));
      v45 = *v23;
      v46 = v23[1];
      v23 += 4;
      v20 = vpadalq_u16(v32, vabdq_u16(v37, v45));
      v16 = vpadalq_u16(v33, vabdq_u16(v38, v40));
      v15 = vpadalq_u16(v34, vabdq_u16(v38, v42));
      v8 = vpadalq_u16(v35, vabdq_u16(v38, v44));
      v21 += 32;
      v7 = vpadalq_u16(v36, vabdq_u16(v38, v46));
    }

    while (v21 < 0x60);
    ++v5;
    v6 += v9;
    v10 += v11;
    v12 += v11;
    v13 += v11;
    v14 += v11;
  }

  while (v5 != 128);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v16, v17), vaddq_s32(v15, v18)), vpaddq_s32(vaddq_s32(v8, v19), vaddq_s32(v7, v20)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A75F9C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 16;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v11 = vabal_u16(v11, *v6, *(2 * *a3 + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[1] + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[2] + v5));
    v7 = vabal_u16(v7, *v6, *(2 * a3[3] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(v11, v10), vpaddq_s32(v9, v7));
  *a5 = result;
  return result;
}

int32x4_t sub_277A76020(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 32;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v11 = vpadalq_u16(v11, vabdq_u16(*v6, *(2 * *a3 + v5)));
    v10 = vpadalq_u16(v10, vabdq_u16(*v6, *(2 * a3[1] + v5)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v6, *(2 * a3[2] + v5)));
    v7 = vpadalq_u16(v7, vabdq_u16(*v6, *(2 * a3[3] + v5)));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  result = vpaddq_s32(vpaddq_s32(v11, v10), vpaddq_s32(v9, v7));
  *a5 = result;
  return result;
}

int32x4_t sub_277A760B4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 2 * a2);
    v5 += 2 * a4;
    --v12;
  }

  while (v12);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A761A0(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 64;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 2 * a2);
    v5 += 2 * a4;
    --v12;
  }

  while (v12);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A7628C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 8;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v13;
  }

  while (v13);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A763D4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 16);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  *a5 = result;
  return result;
}

int32x4_t sub_277A76544(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v11 = vabal_u16(v11, *v6, *(2 * *a3 + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[1] + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[2] + v5));
    v7 = vabal_u16(v7, *v6, *(2 * a3[3] + v5));
    v5 += 4 * a4;
    v6 = (v6 + 4 * a2);
    --v8;
  }

  while (v8);
  v12 = vpaddq_s32(vpaddq_s32(v11, v10), vpaddq_s32(v9, v7));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A765D4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v11 = vabaq_u16(v11, *v6, *(2 * a3[3] + v5));
    v5 += 4 * a4;
    v6 = (v6 + 4 * a2);
    --v8;
  }

  while (v8);
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76674(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 8;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v11 = vabaq_u16(v11, *v6, *(2 * a3[3] + v5));
    v5 += 4 * a4;
    v6 = (v6 + 4 * a2);
    --v8;
  }

  while (v8);
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76714(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 4;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 4 * a2);
    v5 += 4 * a4;
    --v12;
  }

  while (v12);
  v20 = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_277A7680C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 8;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 4 * a2);
    v5 += 4 * a4;
    --v12;
  }

  while (v12);
  v20 = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76904(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 16;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 4 * a2);
    v5 += 4 * a4;
    --v12;
  }

  while (v12);
  v20 = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_277A769FC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 8;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 4 * a2;
    v5 += 4 * a4;
    --v13;
  }

  while (v13);
  v27 = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  result = vaddq_s32(v27, v27);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76B50(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 16;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 4 * a2;
    v5 += 4 * a4;
    --v13;
  }

  while (v13);
  v27 = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  result = vaddq_s32(v27, v27);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76CA4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 32;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 4 * a2;
    v5 += 4 * a4;
    --v13;
  }

  while (v13);
  v27 = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  result = vaddq_s32(v27, v27);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76DF8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 2 * a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * 2 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 16);
  v29 = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

int32x4_t sub_277A76F74(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 2 * a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * 2 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 32);
  v29 = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

int32x4_t sub_277A770F0(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 2 * a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * 2 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 64);
  v29 = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

int32x4_t sub_277A7726C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a1 + 32;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 4 * a2;
  v10 = 2 * *a3 + 32;
  v11 = 4 * a4;
  v12 = 2 * a3[1] + 32;
  v13 = 2 * a3[3] + 32;
  v14 = 2 * a3[2] + 32;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = -32;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v10;
    v26 = v6;
    do
    {
      v27 = v26[-2];
      v28 = v26[-1];
      v29 = vpadalq_u16(v17, vabdq_u16(v27, v25[-2]));
      v30 = vpadalq_u16(v18, vabdq_u16(v27, v24[-2]));
      v31 = vpadalq_u16(v19, vabdq_u16(v27, v22[-2]));
      v32 = vpadalq_u16(v20, vabdq_u16(v27, v23[-2]));
      v33 = vpadalq_u16(v16, vabdq_u16(v28, v25[-1]));
      v34 = vpadalq_u16(v15, vabdq_u16(v28, v24[-1]));
      v35 = vpadalq_u16(v8, vabdq_u16(v28, v22[-1]));
      v36 = vpadalq_u16(v7, vabdq_u16(v28, v23[-1]));
      v37 = *v26;
      v38 = v26[1];
      v26 += 4;
      v39 = *v25;
      v40 = v25[1];
      v25 += 4;
      v17 = vpadalq_u16(v29, vabdq_u16(v37, v39));
      v41 = *v24;
      v42 = v24[1];
      v24 += 4;
      v18 = vpadalq_u16(v30, vabdq_u16(v37, v41));
      v43 = *v22;
      v44 = v22[1];
      v22 += 4;
      v19 = vpadalq_u16(v31, vabdq_u16(v37, v43));
      v45 = *v23;
      v46 = v23[1];
      v23 += 4;
      v20 = vpadalq_u16(v32, vabdq_u16(v37, v45));
      v16 = vpadalq_u16(v33, vabdq_u16(v38, v40));
      v15 = vpadalq_u16(v34, vabdq_u16(v38, v42));
      v8 = vpadalq_u16(v35, vabdq_u16(v38, v44));
      v21 += 32;
      v7 = vpadalq_u16(v36, vabdq_u16(v38, v46));
    }

    while (v21 < 0x60);
    ++v5;
    v6 += v9;
    v10 += v11;
    v12 += v11;
    v13 += v11;
    v14 += v11;
  }

  while (v5 != 32);
  v47 = vpaddq_s32(vpaddq_s32(vaddq_s32(v16, v17), vaddq_s32(v15, v18)), vpaddq_s32(vaddq_s32(v8, v19), vaddq_s32(v7, v20)));
  result = vaddq_s32(v47, v47);
  *a5 = result;
  return result;
}

int32x4_t sub_277A773E4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a1 + 32;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 4 * a2;
  v10 = 2 * *a3 + 32;
  v11 = 4 * a4;
  v12 = 2 * a3[1] + 32;
  v13 = 2 * a3[3] + 32;
  v14 = 2 * a3[2] + 32;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = -32;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v10;
    v26 = v6;
    do
    {
      v27 = v26[-2];
      v28 = v26[-1];
      v29 = vpadalq_u16(v17, vabdq_u16(v27, v25[-2]));
      v30 = vpadalq_u16(v18, vabdq_u16(v27, v24[-2]));
      v31 = vpadalq_u16(v19, vabdq_u16(v27, v22[-2]));
      v32 = vpadalq_u16(v20, vabdq_u16(v27, v23[-2]));
      v33 = vpadalq_u16(v16, vabdq_u16(v28, v25[-1]));
      v34 = vpadalq_u16(v15, vabdq_u16(v28, v24[-1]));
      v35 = vpadalq_u16(v8, vabdq_u16(v28, v22[-1]));
      v36 = vpadalq_u16(v7, vabdq_u16(v28, v23[-1]));
      v37 = *v26;
      v38 = v26[1];
      v26 += 4;
      v39 = *v25;
      v40 = v25[1];
      v25 += 4;
      v17 = vpadalq_u16(v29, vabdq_u16(v37, v39));
      v41 = *v24;
      v42 = v24[1];
      v24 += 4;
      v18 = vpadalq_u16(v30, vabdq_u16(v37, v41));
      v43 = *v22;
      v44 = v22[1];
      v22 += 4;
      v19 = vpadalq_u16(v31, vabdq_u16(v37, v43));
      v45 = *v23;
      v46 = v23[1];
      v23 += 4;
      v20 = vpadalq_u16(v32, vabdq_u16(v37, v45));
      v16 = vpadalq_u16(v33, vabdq_u16(v38, v40));
      v15 = vpadalq_u16(v34, vabdq_u16(v38, v42));
      v8 = vpadalq_u16(v35, vabdq_u16(v38, v44));
      v21 += 32;
      v7 = vpadalq_u16(v36, vabdq_u16(v38, v46));
    }

    while (v21 < 0x60);
    ++v5;
    v6 += v9;
    v10 += v11;
    v12 += v11;
    v13 += v11;
    v14 += v11;
  }

  while (v5 != 64);
  v47 = vpaddq_s32(vpaddq_s32(vaddq_s32(v16, v17), vaddq_s32(v15, v18)), vpaddq_s32(vaddq_s32(v8, v19), vaddq_s32(v7, v20)));
  result = vaddq_s32(v47, v47);
  *a5 = result;
  return result;
}

int32x4_t sub_277A7755C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 8;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v11 = vabal_u16(v11, *v6, *(2 * *a3 + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[1] + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[2] + v5));
    v7 = vabal_u16(v7, *v6, *(2 * a3[3] + v5));
    v5 += 4 * a4;
    v6 = (v6 + 4 * a2);
    --v8;
  }

  while (v8);
  v12 = vpaddq_s32(vpaddq_s32(v11, v10), vpaddq_s32(v9, v7));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A775EC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 16;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v11 = vabaq_u16(v11, *v6, *(2 * a3[3] + v5));
    v5 += 4 * a4;
    v6 = (v6 + 4 * a2);
    --v8;
  }

  while (v8);
  v12 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11)));
  result = vaddq_s32(v12, v12);
  *a5 = result;
  return result;
}

int32x4_t sub_277A7768C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[1];
  v7 = 2 * a3[2];
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * a3[3];
  v11 = (2 * a1 + 16);
  v12 = 32;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = v11[-1];
    v15 = vpadalq_u16(v15, vabdq_u16(v19, *(2 * *a3 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(v19, *(v6 + v5)));
    v17 = vpadalq_u16(v17, vabdq_u16(v19, *(v7 + v5)));
    v18 = vpadalq_u16(v18, vabdq_u16(v19, *(v10 + v5)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v11, *(2 * *a3 + 16 + v5)));
    v13 = vpadalq_u16(v13, vabdq_u16(*v11, *(v6 + v5 + 16)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v11, *(v7 + v5 + 16)));
    v8 = vpadalq_u16(v8, vabdq_u16(*v11, *(v10 + v5 + 16)));
    v11 = (v11 + 4 * a2);
    v5 += 4 * a4;
    --v12;
  }

  while (v12);
  v20 = vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18)));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_277A77784(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a3[3];
  v7 = 2 * a1 + 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 2 * *a3 + 48;
  v11 = 2 * a3[1] + 48;
  v12 = 2 * a3[2] + 32;
  v13 = 4;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  do
  {
    v20 = *(v7 - 32);
    v21 = *(v7 - 16);
    v22 = vpadalq_u16(v15, vabdq_u16(v21, *(v10 + v5 - 32)));
    v23 = vpadalq_u16(v14, vabdq_u16(v21, *(v11 + v5 - 32)));
    v24 = vpadalq_u16(v9, vabdq_u16(v21, *(v12 + v5 - 16)));
    v25 = vpadalq_u16(v8, vabdq_u16(v21, *(v6 + v5 + 16)));
    v26 = *(v7 + 16);
    v16 = vpadalq_u16(vpadalq_u16(v16, vabdq_u16(v20, *(2 * *a3 + v5))), vabdq_u16(*v7, *(2 * *a3 + 48 + v5 - 16)));
    v17 = vpadalq_u16(vpadalq_u16(v17, vabdq_u16(v20, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(2 * a3[1] + 48 + v5 - 16)));
    v18 = vpadalq_u16(vpadalq_u16(v18, vabdq_u16(v20, *(2 * a3[2] + v5))), vabdq_u16(*v7, *(2 * a3[2] + 32 + v5)));
    v19 = vpadalq_u16(vpadalq_u16(v19, vabdq_u16(v20, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v15 = vpadalq_u16(v22, vabdq_u16(v26, *(v10 + v5)));
    v14 = vpadalq_u16(v23, vabdq_u16(v26, *(v11 + v5)));
    v9 = vpadalq_u16(v24, vabdq_u16(v26, *(v12 + v5 + 16)));
    v8 = vpadalq_u16(v25, vabdq_u16(v26, *(v6 + v5 + 48)));
    v7 += 4 * a2;
    v5 += 4 * a4;
    --v13;
  }

  while (v13);
  v27 = vpaddq_s32(vpaddq_s32(vaddq_s32(v15, v16), vaddq_s32(v14, v17)), vpaddq_s32(vaddq_s32(v9, v18), vaddq_s32(v8, v19)));
  result = vaddq_s32(v27, v27);
  *a5 = result;
  return result;
}

int32x4_t sub_277A778D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 2 * a4;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = 2 * a1 + 2 * v5 * 2 * a2 + 2 * v15;
      v18 = (2 * *a3 + 2 * v5 * v8 + 2 * v15);
      v19 = *(v17 + 0x10);
      v20 = (2 * a3[1] + 2 * v5 * v8 + 2 * v15);
      v21 = (2 * a3[2] + 2 * v5 * v8 + 2 * v15);
      v22 = (2 * a3[3] + 2 * v5 * v8 + 2 * v15);
      v23 = vpadalq_u16(v10, vabdq_u16(v19, v18[1]));
      v24 = vpadalq_u16(v9, vabdq_u16(v19, v20[1]));
      v25 = vpadalq_u16(v7, vabdq_u16(v19, v21[1]));
      v26 = vpadalq_u16(v6, vabdq_u16(v19, v22[1]));
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v17, *v18)), vabdq_u16(v27, v18[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v17, *v20)), vabdq_u16(v27, v20[2]));
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v17, *v21)), vabdq_u16(v27, v21[2]));
      v14 = vpadalq_u16(vpadalq_u16(v14, vabdq_u16(*v17, *v22)), vabdq_u16(v27, v22[2]));
      v10 = vpadalq_u16(v23, vabdq_u16(v28, v18[3]));
      v9 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v7 = vpadalq_u16(v25, vabdq_u16(v28, v21[3]));
      LOBYTE(v17) = v16;
      v6 = vpadalq_u16(v26, vabdq_u16(v28, v22[3]));
      v15 = 32;
      v16 = 0;
    }

    while ((v17 & 1) != 0);
    ++v5;
  }

  while (v5 != 8);
  v29 = vpaddq_s32(vpaddq_s32(vaddq_s32(v10, v11), vaddq_s32(v9, v12)), vpaddq_s32(vaddq_s32(v7, v13), vaddq_s32(v6, v14)));
  result = vaddq_s32(v29, v29);
  *a5 = result;
  return result;
}

double sub_277A77A54(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 4;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v7 = vabal_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[2] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddvq_s32(v7);
  v7.i32[0] = vaddvq_s32(v9);
  v10.i32[0] = vaddvq_s32(v10);
  *v7.i8 = vzip1_s32(*v7.i8, *v10.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

double sub_277A77AD0(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 8;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v7 = vabal_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[2] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddvq_s32(v7);
  v7.i32[0] = vaddvq_s32(v9);
  v10.i32[0] = vaddvq_s32(v10);
  *v7.i8 = vzip1_s32(*v7.i8, *v10.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

double sub_277A77B4C(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 4;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddlvq_u16(v7);
  v7.i32[0] = vaddlvq_u16(v9);
  v10.i32[0] = vaddlvq_u16(v10);
  *v7.i8 = vzip1_s32(*v7.i8, *v10.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

double sub_277A77BC8(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 8;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddlvq_u16(v7);
  v7.i32[0] = vaddlvq_u16(v9);
  v10.i32[0] = vaddlvq_u16(v10);
  *v7.i8 = vzip1_s32(*v7.i8, *v10.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

double sub_277A77C44(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v7 = vabaq_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabaq_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabaq_u16(v10, *v6, *(2 * a3[2] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddlvq_u16(v7);
  v7.i32[0] = vaddlvq_u16(v9);
  v10.i32[0] = vaddlvq_u16(v10);
  *v7.i8 = vzip1_s32(*v7.i8, *v10.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

int32x2_t sub_277A77CC0(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = (2 * a1 + 16);
  v10 = 0uLL;
  v11 = 8;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v9[-1];
    v13 = vpadalq_u16(v13, vabdq_u16(v17, *(v6 + v5)));
    v12 = vpadalq_u16(v12, vabdq_u16(v17, *(v7 + v5)));
    v10 = vpadalq_u16(v10, vabdq_u16(v17, *(v8 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(*v9, *(v6 + v5 + 16)));
    v15 = vpadalq_u16(v15, vabdq_u16(*v9, *(v7 + v5 + 16)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v9, *(v8 + v5 + 16)));
    v5 += 2 * a4;
    v9 = (v9 + 2 * a2);
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v18 = vaddq_s32(v15, v12);
  v18.i32[0] = vaddvq_s32(v18);
  v19 = vaddq_s32(v14, v10);
  v19.i32[0] = vaddvq_s32(v19);
  result = vzip1_s32(*v18.i8, *v19.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A77D88(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = (2 * a1 + 16);
  v10 = 0uLL;
  v11 = 16;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v9[-1];
    v13 = vpadalq_u16(v13, vabdq_u16(v17, *(v6 + v5)));
    v12 = vpadalq_u16(v12, vabdq_u16(v17, *(v7 + v5)));
    v10 = vpadalq_u16(v10, vabdq_u16(v17, *(v8 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(*v9, *(v6 + v5 + 16)));
    v15 = vpadalq_u16(v15, vabdq_u16(*v9, *(v7 + v5 + 16)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v9, *(v8 + v5 + 16)));
    v5 += 2 * a4;
    v9 = (v9 + 2 * a2);
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v18 = vaddq_s32(v15, v12);
  v18.i32[0] = vaddvq_s32(v18);
  v19 = vaddq_s32(v14, v10);
  v19.i32[0] = vaddvq_s32(v19);
  result = vzip1_s32(*v18.i8, *v19.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A77E50(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = (2 * a1 + 16);
  v10 = 0uLL;
  v11 = 32;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v9[-1];
    v13 = vpadalq_u16(v13, vabdq_u16(v17, *(v6 + v5)));
    v12 = vpadalq_u16(v12, vabdq_u16(v17, *(v7 + v5)));
    v10 = vpadalq_u16(v10, vabdq_u16(v17, *(v8 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(*v9, *(v6 + v5 + 16)));
    v15 = vpadalq_u16(v15, vabdq_u16(*v9, *(v7 + v5 + 16)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v9, *(v8 + v5 + 16)));
    v5 += 2 * a4;
    v9 = (v9 + 2 * a2);
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v18 = vaddq_s32(v15, v12);
  v18.i32[0] = vaddvq_s32(v18);
  v19 = vaddq_s32(v14, v10);
  v19.i32[0] = vaddvq_s32(v19);
  result = vzip1_s32(*v18.i8, *v19.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A77F18(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a3[2];
  v7 = 2 * a1 + 32;
  v8 = 2 * *a3 + 48;
  v9 = 2 * a3[1] + 48;
  v10 = 0uLL;
  v11 = 16;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = *(v7 - 32);
    v18 = *(v7 - 16);
    v19 = vpadalq_u16(v16, vabdq_u16(v18, *(v8 + v5 - 32)));
    v20 = vpadalq_u16(v15, vabdq_u16(v18, *(v9 + v5 - 32)));
    v21 = vpadalq_u16(v14, vabdq_u16(v18, *(v6 + v5 + 16)));
    v22 = *(v7 + 16);
    v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(v17, *(2 * *a3 + v5))), vabdq_u16(*v7, *(v8 + v5 - 16)));
    v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(v17, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(v9 + v5 - 16)));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v17, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v16 = vpadalq_u16(v19, vabdq_u16(v22, *(v8 + v5)));
    v15 = vpadalq_u16(v20, vabdq_u16(v22, *(v9 + v5)));
    v14 = vpadalq_u16(v21, vabdq_u16(v22, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v11;
  }

  while (v11);
  v23 = vaddq_s32(v15, v12);
  v24 = vaddq_s32(v14, v10);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v23.i32[0] = vaddvq_s32(v23);
  v24.i32[0] = vaddvq_s32(v24);
  result = vzip1_s32(*v23.i8, *v24.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78028(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a3[2];
  v7 = 2 * a1 + 32;
  v8 = 2 * *a3 + 48;
  v9 = 2 * a3[1] + 48;
  v10 = 0uLL;
  v11 = 32;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = *(v7 - 32);
    v18 = *(v7 - 16);
    v19 = vpadalq_u16(v16, vabdq_u16(v18, *(v8 + v5 - 32)));
    v20 = vpadalq_u16(v15, vabdq_u16(v18, *(v9 + v5 - 32)));
    v21 = vpadalq_u16(v14, vabdq_u16(v18, *(v6 + v5 + 16)));
    v22 = *(v7 + 16);
    v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(v17, *(2 * *a3 + v5))), vabdq_u16(*v7, *(v8 + v5 - 16)));
    v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(v17, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(v9 + v5 - 16)));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v17, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v16 = vpadalq_u16(v19, vabdq_u16(v22, *(v8 + v5)));
    v15 = vpadalq_u16(v20, vabdq_u16(v22, *(v9 + v5)));
    v14 = vpadalq_u16(v21, vabdq_u16(v22, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v11;
  }

  while (v11);
  v23 = vaddq_s32(v15, v12);
  v24 = vaddq_s32(v14, v10);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v23.i32[0] = vaddvq_s32(v23);
  v24.i32[0] = vaddvq_s32(v24);
  result = vzip1_s32(*v23.i8, *v24.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78138(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a3[2];
  v7 = 2 * a1 + 32;
  v8 = 2 * *a3 + 48;
  v9 = 2 * a3[1] + 48;
  v10 = 0uLL;
  v11 = 64;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = *(v7 - 32);
    v18 = *(v7 - 16);
    v19 = vpadalq_u16(v16, vabdq_u16(v18, *(v8 + v5 - 32)));
    v20 = vpadalq_u16(v15, vabdq_u16(v18, *(v9 + v5 - 32)));
    v21 = vpadalq_u16(v14, vabdq_u16(v18, *(v6 + v5 + 16)));
    v22 = *(v7 + 16);
    v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(v17, *(2 * *a3 + v5))), vabdq_u16(*v7, *(v8 + v5 - 16)));
    v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(v17, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(v9 + v5 - 16)));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v17, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v16 = vpadalq_u16(v19, vabdq_u16(v22, *(v8 + v5)));
    v15 = vpadalq_u16(v20, vabdq_u16(v22, *(v9 + v5)));
    v14 = vpadalq_u16(v21, vabdq_u16(v22, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v11;
  }

  while (v11);
  v23 = vaddq_s32(v15, v12);
  v24 = vaddq_s32(v14, v10);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v23.i32[0] = vaddvq_s32(v23);
  v24.i32[0] = vaddvq_s32(v24);
  result = vzip1_s32(*v23.i8, *v24.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78248(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = a2;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = 2 * a1 + 2 * v5 * v9 + 2 * v17;
      v20 = (v6 + 2 * v5 * v10 + 2 * v17);
      v21 = *(v19 + 0x10);
      v22 = (v7 + 2 * v5 * v10 + 2 * v17);
      v23 = (v8 + 2 * v5 * v10 + 2 * v17);
      v24 = vpadalq_u16(v16, vabdq_u16(v21, v20[1]));
      v25 = vpadalq_u16(v15, vabdq_u16(v21, v22[1]));
      v26 = vpadalq_u16(v14, vabdq_u16(v21, v23[1]));
      v27 = *(v19 + 32);
      v28 = *(v19 + 48);
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v19, *v20)), vabdq_u16(v27, v20[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v19, *v22)), vabdq_u16(v27, v22[2]));
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v19, *v23)), vabdq_u16(v27, v23[2]));
      v16 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v15 = vpadalq_u16(v25, vabdq_u16(v28, v22[3]));
      LOBYTE(v19) = v18;
      v14 = vpadalq_u16(v26, vabdq_u16(v28, v23[3]));
      v17 = 32;
      v18 = 0;
    }

    while ((v19 & 1) != 0);
    ++v5;
  }

  while (v5 != 32);
  v29 = vaddq_s32(v15, v12);
  v30 = vaddq_s32(v14, v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v29.i32[0] = vaddvq_s32(v29);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78378(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = a2;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = 2 * a1 + 2 * v5 * v9 + 2 * v17;
      v20 = (v6 + 2 * v5 * v10 + 2 * v17);
      v21 = *(v19 + 0x10);
      v22 = (v7 + 2 * v5 * v10 + 2 * v17);
      v23 = (v8 + 2 * v5 * v10 + 2 * v17);
      v24 = vpadalq_u16(v16, vabdq_u16(v21, v20[1]));
      v25 = vpadalq_u16(v15, vabdq_u16(v21, v22[1]));
      v26 = vpadalq_u16(v14, vabdq_u16(v21, v23[1]));
      v27 = *(v19 + 32);
      v28 = *(v19 + 48);
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v19, *v20)), vabdq_u16(v27, v20[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v19, *v22)), vabdq_u16(v27, v22[2]));
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v19, *v23)), vabdq_u16(v27, v23[2]));
      v16 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v15 = vpadalq_u16(v25, vabdq_u16(v28, v22[3]));
      LOBYTE(v19) = v18;
      v14 = vpadalq_u16(v26, vabdq_u16(v28, v23[3]));
      v17 = 32;
      v18 = 0;
    }

    while ((v19 & 1) != 0);
    ++v5;
  }

  while (v5 != 64);
  v29 = vaddq_s32(v15, v12);
  v30 = vaddq_s32(v14, v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v29.i32[0] = vaddvq_s32(v29);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A784A8(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = a2;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = 2 * a1 + 2 * v5 * v9 + 2 * v17;
      v20 = (v6 + 2 * v5 * v10 + 2 * v17);
      v21 = *(v19 + 0x10);
      v22 = (v7 + 2 * v5 * v10 + 2 * v17);
      v23 = (v8 + 2 * v5 * v10 + 2 * v17);
      v24 = vpadalq_u16(v16, vabdq_u16(v21, v20[1]));
      v25 = vpadalq_u16(v15, vabdq_u16(v21, v22[1]));
      v26 = vpadalq_u16(v14, vabdq_u16(v21, v23[1]));
      v27 = *(v19 + 32);
      v28 = *(v19 + 48);
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v19, *v20)), vabdq_u16(v27, v20[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v19, *v22)), vabdq_u16(v27, v22[2]));
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v19, *v23)), vabdq_u16(v27, v23[2]));
      v16 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v15 = vpadalq_u16(v25, vabdq_u16(v28, v22[3]));
      LOBYTE(v19) = v18;
      v14 = vpadalq_u16(v26, vabdq_u16(v28, v23[3]));
      v17 = 32;
      v18 = 0;
    }

    while ((v19 & 1) != 0);
    ++v5;
  }

  while (v5 != 128);
  v29 = vaddq_s32(v15, v12);
  v30 = vaddq_s32(v14, v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v29.i32[0] = vaddvq_s32(v29);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A785D8(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a1 + 32;
  v7 = 2 * a2;
  v8 = 2 * *a3 + 32;
  v9 = 2 * a4;
  v10 = 2 * a3[1] + 32;
  v11 = 2 * a3[2] + 32;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = -32;
    v19 = v11;
    v20 = v10;
    v21 = v8;
    v22 = v6;
    do
    {
      v23 = v22[-2];
      v24 = v22[-1];
      v25 = vpadalq_u16(v14, vabdq_u16(v23, v21[-2]));
      v26 = vpadalq_u16(v13, vabdq_u16(v23, v20[-2]));
      v27 = vpadalq_u16(v12, vabdq_u16(v23, v19[-2]));
      v28 = vpadalq_u16(v17, vabdq_u16(v24, v21[-1]));
      v29 = vpadalq_u16(v16, vabdq_u16(v24, v20[-1]));
      v30 = vpadalq_u16(v15, vabdq_u16(v24, v19[-1]));
      v31 = *v22;
      v32 = v22[1];
      v22 += 4;
      v33 = *v21;
      v34 = v21[1];
      v21 += 4;
      v14 = vpadalq_u16(v25, vabdq_u16(v31, v33));
      v35 = *v20;
      v36 = v20[1];
      v20 += 4;
      v13 = vpadalq_u16(v26, vabdq_u16(v31, v35));
      v37 = *v19;
      v38 = v19[1];
      v19 += 4;
      v12 = vpadalq_u16(v27, vabdq_u16(v31, v37));
      v17 = vpadalq_u16(v28, vabdq_u16(v32, v34));
      v16 = vpadalq_u16(v29, vabdq_u16(v32, v36));
      v18 += 32;
      v15 = vpadalq_u16(v30, vabdq_u16(v32, v38));
    }

    while (v18 < 0x60);
    ++v5;
    v6 += v7;
    v8 += v9;
    v10 += v9;
    v11 += v9;
  }

  while (v5 != 64);
  v39 = vaddq_s32(v16, v13);
  v40 = vaddq_s32(v15, v12);
  *a5 = vaddvq_s32(vaddq_s32(v17, v14));
  v39.i32[0] = vaddvq_s32(v39);
  v40.i32[0] = vaddvq_s32(v40);
  result = vzip1_s32(*v39.i8, *v40.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78708(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a1 + 32;
  v7 = 2 * a2;
  v8 = 2 * *a3 + 32;
  v9 = 2 * a4;
  v10 = 2 * a3[1] + 32;
  v11 = 2 * a3[2] + 32;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = -32;
    v19 = v11;
    v20 = v10;
    v21 = v8;
    v22 = v6;
    do
    {
      v23 = v22[-2];
      v24 = v22[-1];
      v25 = vpadalq_u16(v14, vabdq_u16(v23, v21[-2]));
      v26 = vpadalq_u16(v13, vabdq_u16(v23, v20[-2]));
      v27 = vpadalq_u16(v12, vabdq_u16(v23, v19[-2]));
      v28 = vpadalq_u16(v17, vabdq_u16(v24, v21[-1]));
      v29 = vpadalq_u16(v16, vabdq_u16(v24, v20[-1]));
      v30 = vpadalq_u16(v15, vabdq_u16(v24, v19[-1]));
      v31 = *v22;
      v32 = v22[1];
      v22 += 4;
      v33 = *v21;
      v34 = v21[1];
      v21 += 4;
      v14 = vpadalq_u16(v25, vabdq_u16(v31, v33));
      v35 = *v20;
      v36 = v20[1];
      v20 += 4;
      v13 = vpadalq_u16(v26, vabdq_u16(v31, v35));
      v37 = *v19;
      v38 = v19[1];
      v19 += 4;
      v12 = vpadalq_u16(v27, vabdq_u16(v31, v37));
      v17 = vpadalq_u16(v28, vabdq_u16(v32, v34));
      v16 = vpadalq_u16(v29, vabdq_u16(v32, v36));
      v18 += 32;
      v15 = vpadalq_u16(v30, vabdq_u16(v32, v38));
    }

    while (v18 < 0x60);
    ++v5;
    v6 += v7;
    v8 += v9;
    v10 += v9;
    v11 += v9;
  }

  while (v5 != 128);
  v39 = vaddq_s32(v16, v13);
  v40 = vaddq_s32(v15, v12);
  *a5 = vaddvq_s32(vaddq_s32(v17, v14));
  v39.i32[0] = vaddvq_s32(v39);
  v40.i32[0] = vaddvq_s32(v40);
  result = vzip1_s32(*v39.i8, *v40.i8);
  *(a5 + 4) = result;
  return result;
}

double sub_277A78838(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v7 = vabal_u16(v7, *v6, *(2 * *a3 + v5));
    v9 = vabal_u16(v9, *v6, *(2 * a3[1] + v5));
    v10 = vabal_u16(v10, *v6, *(2 * a3[2] + v5));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddvq_s32(v7);
  v7.i32[0] = vaddvq_s32(v9);
  v10.i32[0] = vaddvq_s32(v10);
  *v7.i8 = vzip1_s32(*v7.i8, *v10.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

double sub_277A788B4(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = 0uLL;
  v8 = 32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v10 = vpadalq_u16(v10, vabdq_u16(*v6, *(2 * *a3 + v5)));
    v9 = vpadalq_u16(v9, vabdq_u16(*v6, *(2 * a3[1] + v5)));
    v7 = vpadalq_u16(v7, vabdq_u16(*v6, *(2 * a3[2] + v5)));
    v5 += 2 * a4;
    v6 = (v6 + 2 * a2);
    --v8;
  }

  while (v8);
  *a5 = vaddvq_s32(v10);
  v9.i32[0] = vaddvq_s32(v9);
  v7.i32[0] = vaddvq_s32(v7);
  *v7.i8 = vzip1_s32(*v9.i8, *v7.i8);
  *(a5 + 4) = v7.i64[0];
  return *v7.i64;
}

int32x2_t sub_277A7893C(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = (2 * a1 + 16);
  v10 = 0uLL;
  v11 = 4;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v9[-1];
    v13 = vpadalq_u16(v13, vabdq_u16(v17, *(v6 + v5)));
    v12 = vpadalq_u16(v12, vabdq_u16(v17, *(v7 + v5)));
    v10 = vpadalq_u16(v10, vabdq_u16(v17, *(v8 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(*v9, *(v6 + v5 + 16)));
    v15 = vpadalq_u16(v15, vabdq_u16(*v9, *(v7 + v5 + 16)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v9, *(v8 + v5 + 16)));
    v5 += 2 * a4;
    v9 = (v9 + 2 * a2);
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v18 = vaddq_s32(v15, v12);
  v18.i32[0] = vaddvq_s32(v18);
  v19 = vaddq_s32(v14, v10);
  v19.i32[0] = vaddvq_s32(v19);
  result = vzip1_s32(*v18.i8, *v19.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78A04(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = (2 * a1 + 16);
  v10 = 0uLL;
  v11 = 64;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v9[-1];
    v13 = vpadalq_u16(v13, vabdq_u16(v17, *(v6 + v5)));
    v12 = vpadalq_u16(v12, vabdq_u16(v17, *(v7 + v5)));
    v10 = vpadalq_u16(v10, vabdq_u16(v17, *(v8 + v5)));
    v16 = vpadalq_u16(v16, vabdq_u16(*v9, *(v6 + v5 + 16)));
    v15 = vpadalq_u16(v15, vabdq_u16(*v9, *(v7 + v5 + 16)));
    v14 = vpadalq_u16(v14, vabdq_u16(*v9, *(v8 + v5 + 16)));
    v5 += 2 * a4;
    v9 = (v9 + 2 * a2);
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v18 = vaddq_s32(v15, v12);
  v18.i32[0] = vaddvq_s32(v18);
  v19 = vaddq_s32(v14, v10);
  v19.i32[0] = vaddvq_s32(v19);
  result = vzip1_s32(*v18.i8, *v19.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78ACC(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a3[2];
  v7 = 2 * a1 + 32;
  v8 = 2 * *a3 + 48;
  v9 = 2 * a3[1] + 48;
  v10 = 0uLL;
  v11 = 8;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = *(v7 - 32);
    v18 = *(v7 - 16);
    v19 = vpadalq_u16(v16, vabdq_u16(v18, *(v8 + v5 - 32)));
    v20 = vpadalq_u16(v15, vabdq_u16(v18, *(v9 + v5 - 32)));
    v21 = vpadalq_u16(v14, vabdq_u16(v18, *(v6 + v5 + 16)));
    v22 = *(v7 + 16);
    v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(v17, *(2 * *a3 + v5))), vabdq_u16(*v7, *(v8 + v5 - 16)));
    v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(v17, *(2 * a3[1] + v5))), vabdq_u16(*v7, *(v9 + v5 - 16)));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v17, *(v6 + v5))), vabdq_u16(*v7, *(v6 + v5 + 32)));
    v16 = vpadalq_u16(v19, vabdq_u16(v22, *(v8 + v5)));
    v15 = vpadalq_u16(v20, vabdq_u16(v22, *(v9 + v5)));
    v14 = vpadalq_u16(v21, vabdq_u16(v22, *(v6 + v5 + 48)));
    v7 += 2 * a2;
    v5 += 2 * a4;
    --v11;
  }

  while (v11);
  v23 = vaddq_s32(v15, v12);
  v24 = vaddq_s32(v14, v10);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v23.i32[0] = vaddvq_s32(v23);
  v24.i32[0] = vaddvq_s32(v24);
  result = vzip1_s32(*v23.i8, *v24.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_277A78BDC(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * *a3;
  v7 = 2 * a3[1];
  v8 = 2 * a3[2];
  v9 = a2;
  v10 = a4;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = 2 * a1 + 2 * v5 * v9 + 2 * v17;
      v20 = (v6 + 2 * v5 * v10 + 2 * v17);
      v21 = *(v19 + 0x10);
      v22 = (v7 + 2 * v5 * v10 + 2 * v17);
      v23 = (v8 + 2 * v5 * v10 + 2 * v17);
      v24 = vpadalq_u16(v16, vabdq_u16(v21, v20[1]));
      v25 = vpadalq_u16(v15, vabdq_u16(v21, v22[1]));
      v26 = vpadalq_u16(v14, vabdq_u16(v21, v23[1]));
      v27 = *(v19 + 32);
      v28 = *(v19 + 48);
      v13 = vpadalq_u16(vpadalq_u16(v13, vabdq_u16(*v19, *v20)), vabdq_u16(v27, v20[2]));
      v12 = vpadalq_u16(vpadalq_u16(v12, vabdq_u16(*v19, *v22)), vabdq_u16(v27, v22[2]));
      v11 = vpadalq_u16(vpadalq_u16(v11, vabdq_u16(*v19, *v23)), vabdq_u16(v27, v23[2]));
      v16 = vpadalq_u16(v24, vabdq_u16(v28, v20[3]));
      v15 = vpadalq_u16(v25, vabdq_u16(v28, v22[3]));
      LOBYTE(v19) = v18;
      v14 = vpadalq_u16(v26, vabdq_u16(v28, v23[3]));
      v17 = 32;
      v18 = 0;
    }

    while ((v19 & 1) != 0);
    ++v5;
  }

  while (v5 != 16);
  v29 = vaddq_s32(v15, v12);
  v30 = vaddq_s32(v14, v11);
  *a5 = vaddvq_s32(vaddq_s32(v16, v13));
  v29.i32[0] = vaddvq_s32(v29);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

uint64_t sub_277A78D0C(uint64_t result, unsigned int a2, uint64_t a3)
{
  *a3 = a2;
  if ((result - 4) > 0xB)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = dword_277BFADC8[(result - 4)];
    v4 = dword_277BFADF8[(result - 4)];
  }

  *(a3 + 26) = 0;
  v5 = (a3 + 26);
  *(a3 + 4) = v3;
  *(a3 + 8) = v4;
  v6 = byte_277BFAD63[result];
  v7 = byte_277BFAD73[result];
  v8 = dword_277C31584[a2] - 2;
  v9 = dword_277C3BE98[a2] - 2;
  *(a3 + 16) = *(&off_27A71F940 + a2);
  *(a3 + 24) = byte_277BFAD31[5 * v8 + v9];
  *(a3 + 25) = byte_277BFAD4A[5 * v8 + v9];
  v10 = byte_277C3C7DA[4 * v9 + v6];
  *(a3 + 50) = v10;
  v11 = byte_277C3C7DA[4 * v8 + v7];
  *(a3 + 51) = v11;
  v12 = byte_277C3C7EE[v10];
  *(a3 + 52) = v12;
  *(a3 + 56) = byte_277C3C7EE[v11];
  *(a3 + 34) = 0;
  *(a3 + 42) = 0;
  v13 = *(&off_27A71F9D8 + v10);
  v14 = v12 - 1;
  if ((v12 - 1) >= 0xB)
  {
    v14 = 11;
  }

  v15 = (v14 + 1);
  v16 = v13;
  do
  {
    v17 = *v16++;
    *v5++ = (v17 + 1) >> 1;
    --v15;
  }

  while (v15);
  v18 = *(a3 + 56);
  v19 = v18 - 1;
  if (v18 >= 1)
  {
    v20 = *(&off_27A71F9D8 + *(a3 + 51));
    v21 = (a3 + 38);
    v22 = v13 - 1;
    if (v19 >= 0xB)
    {
      v19 = 11;
    }

    v23 = v19 + 1;
    do
    {
      v24 = *v20++;
      *v21++ = (v22[v12] + v24 + 1) >> 1;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_277A78E90(__int16 *a1, int32x4_t *a2, int a3, unsigned __int8 *a4, __int32 *a5, char a6)
{
  v6 = a5;
  v8 = a2;
  v85 = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v10 = dword_277C3BEE4[v9];
  v11 = dword_277C3BF30[v9];
  v81 = *(a4 + 2);
  if (v10 == v11)
  {
    goto LABEL_2;
  }

  if (v10 <= v11)
  {
    if (v11 == 2 * v10)
    {
      v12 = -1;
      goto LABEL_12;
    }

    if (v11 == 4 * v10)
    {
      v12 = -2;
      goto LABEL_12;
    }

LABEL_2:
    v70 = 0;
    goto LABEL_13;
  }

  if (v10 != 2 * v11)
  {
    if (v10 == 4 * v11)
    {
      v12 = 2;
      goto LABEL_12;
    }

    goto LABEL_2;
  }

  v12 = 1;
LABEL_12:
  v70 = v12;
LABEL_13:
  v13 = *(a4 + 13);
  if (v13 >= 1)
  {
    v14 = (a4 + 26);
    v15 = v13 - 1;
    if (v15 >= 0xB)
    {
      v15 = 11;
    }

    v16 = v15 + 1;
    v17 = v84;
    v18 = a6 + *v81;
    do
    {
      v19 = *v14++;
      *v17++ = v19 + v18 + 1;
      --v16;
    }

    while (v16);
  }

  v20 = *(a4 + 14);
  if (v20 >= 1)
  {
    v21 = (a4 + 38);
    v22 = v20 - 1;
    if (v22 >= 0xB)
    {
      v22 = 11;
    }

    v23 = v22 + 1;
    v24 = v83;
    v25 = a6 + *v81 + v81[1];
    do
    {
      v26 = *v21++;
      *v24++ = v26 + v25 + 1;
      --v23;
    }

    while (v23);
  }

  v27 = a4[50];
  if (v27 > 0xB)
  {
    v75 = 0;
  }

  else
  {
    v75 = off_28866DED8[v27];
  }

  v74 = a4[24];
  v28 = a4[51];
  v69 = a4[25];
  if (v28 > 0xB)
  {
    v76 = 0;
  }

  else
  {
    v76 = off_28866DED8[v28];
  }

  v29 = 0;
  v30 = (a2 + 4 * v11);
  if (v11 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v11;
  }

  v80 = v31;
  v32 = v10 - 1;
  if (v10 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v10;
  }

  v77 = a4;
  v78 = v33;
  v71 = a3 * (v11 - 1);
  v34 = 4 * v10;
  v35 = a1;
  do
  {
    v79 = v32;
    if (*(a4 + 1))
    {
      v36 = v71;
      v37 = v8;
      v38 = v80;
      do
      {
        v37->i32[0] = a1[v29 + v36];
        v37 = (v37 + 4);
        v36 -= a3;
        --v38;
      }

      while (v38);
    }

    else
    {
      v39 = v35;
      v40 = v8;
      v41 = v80;
      do
      {
        v40->i32[0] = *v39;
        v40 = (v40 + 4);
        v39 += a3;
        --v41;
      }

      while (v41);
    }

    if (*v81)
    {
      v42 = 0;
      v43 = vdupq_n_s32(*v81);
      v44 = v8;
      do
      {
        *v44 = vrshlq_s32(*v44, v43);
        ++v44;
        v42 += 4;
      }

      while (v42 < v11);
    }

    v45 = v8;
    (v75)(v8, v30, v74, v84);
    if (v81[1])
    {
      v46 = 0;
      v47 = vdupq_n_s32(v81[1]);
      v48 = v30;
      do
      {
        *v48 = vrshlq_s32(*v48, v47);
        ++v48;
        v46 += 4;
      }

      while (v46 < v11);
    }

    a4 = v77;
    if (*(v77 + 2))
    {
      v49 = &a5[v79];
      v50 = v30;
      v51 = v80;
      v8 = v45;
      do
      {
        v52 = v50->i32[0];
        v50 = (v50 + 4);
        *v49 = v52;
        v49 = (v49 + v34);
        --v51;
      }

      while (v51);
    }

    else
    {
      v53 = v30;
      v54 = v6;
      v55 = v80;
      v8 = v45;
      do
      {
        v56 = v53->i32[0];
        v53 = (v53 + 4);
        *v54 = v56;
        v54 = (v54 + v34);
        --v55;
      }

      while (v55);
    }

    ++v29;
    ++v35;
    v32 = v79 - 1;
    ++v6;
  }

  while (v29 != v78);
  v57 = 0;
  if (v70 >= 0)
  {
    v58 = v70;
  }

  else
  {
    v58 = -v70;
  }

  v59 = 4 * v11;
  do
  {
    v60 = v8;
    result = (v76)(&a5[v57 * v10], v82, v69, v83);
    if (v81[2])
    {
      v62 = 0;
      v63 = vdupq_n_s32(v81[2]);
      v64 = v82;
      do
      {
        *v64 = vrshlq_s32(*v64, v63);
        ++v64;
        v62 += 4;
      }

      while (v62 < v10);
    }

    if (v58 == 1)
    {
      v65 = v82;
      v66 = v78;
      do
      {
        *v65 = (5793 * *v65 + 2048) >> 12;
        ++v65;
        --v66;
      }

      while (v66);
    }

    v67 = 0;
    v68 = v60;
    do
    {
      v68->i32[0] = *&v82[v67];
      v67 += 4;
      v68 = (v68 + v59);
    }

    while (4 * v78 != v67);
    ++v57;
    v8 = (v60->i64 + 4);
  }

  while (v57 != v80);
  return result;
}

void sub_277A792E0(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10, double a11, double a12, double a13, uint16x8_t a14, int32x4_t a15, uint16x4_t a16, int a17, unsigned __int8 a18, uint64_t a19, int a20, __n128 *__b, int a22, int a23, int a24, int a25)
{
  v25 = a22;
  v26 = __b;
  v430 = *MEMORY[0x277D85DE8];
  v27 = **(a1 + 7864);
  v28 = dword_277C3BEE4[a6];
  v29 = dword_277C3BF30[a6];
  v30 = 4 * a23;
  v31 = *(*(a1 + 7960) + 192);
  v32 = a1 + 16;
  if (a17)
  {
    v33 = *(v32 + 2608 * (a25 != 0) + 160) + *(a1 + 2 * (a25 != 0) + 15028);
    v34 = &v27[16 * a25 + 94];
    if ((v31 & 8) != 0)
    {
      v47 = 0;
      v48 = 2 * __b;
      if (v28 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v28;
      }

      if (v29 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v29;
      }

      v51 = v30 + 4 * a24 * a4;
      do
      {
        v52 = v51;
        v53 = v48;
        v54 = v49;
        do
        {
          *v53++ = *(v34 + 2 * *(v33 + v52++));
          --v54;
        }

        while (v54);
        ++v47;
        v48 += 2 * a22;
        v51 += a4;
      }

      while (v47 != v50);
    }

    else
    {
      v35 = 0;
      if (v28 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v28;
      }

      if (v29 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v29;
      }

      v38 = v30 + 4 * a24 * a4;
      do
      {
        v39 = v38;
        v40 = v26;
        v41 = v36;
        do
        {
          *v40++ = *(v34 + 2 * *(v33 + v39++));
          --v41;
        }

        while (v41);
        ++v35;
        v26 += a22;
        v38 += a4;
      }

      while (v35 != v37);
    }

    return;
  }

  v44 = v32 + 2608 * a25;
  v45 = *(v44 + 8);
  if (a24)
  {
    v46 = 1;
  }

  else
  {
    v55 = 7874;
    if (!v45)
    {
      v55 = 7872;
    }

    v46 = *(a1 + v55);
  }

  v56 = *(v44 + 4);
  v402 = a6;
  if (a23)
  {
    v57 = 1;
  }

  else
  {
    v58 = 7875;
    if (!v56)
    {
      v58 = 7873;
    }

    v57 = *(a1 + v58);
  }

  v59 = a4 - v30 + (*(a1 + 7928) >> (v56 + 3));
  v60 = a5 - 4 * a24 + (*(a1 + 7936) >> (v45 + 3));
  v61 = a7 - 1;
  if (v28 >= v59)
  {
    v62 = v59;
  }

  else
  {
    v62 = v28;
  }

  if (v46)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  if (v29 >= v60)
  {
    v64 = v60;
  }

  else
  {
    v64 = v29;
  }

  if (v57)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v404 = v29;
  __len = v28;
  if (v61 >= 8 && a18 == 5)
  {
    if ((v31 & 8) == 0)
    {
      v66 = (a19 - a20);
      v67 = byte_277BFAF70[a7];
      if (v67 & 4 | v65)
      {
        v68 = (v67 & 2 | v63) == 0;
      }

      else
      {
        v68 = 1;
      }

      if (!v68)
      {
        if ((v67 & 2) == 0)
        {
          goto LABEL_334;
        }

        v85.i64[0] = 0x8181818181818181;
        v85.i64[1] = 0x8181818181818181;
        v428 = v85;
        v429 = v85;
        v426 = v85;
        v427 = v85;
        v424 = v85;
        v425 = v85;
        v422 = v85;
        v423 = v85;
        v420 = v85;
        v421 = v85;
        if (v65 < 1)
        {
          if (v63 < 1)
          {
            goto LABEL_334;
          }

          v89 = v65;
          v90 = v63;
          __memset_chk();
        }

        else
        {
          v86 = (a19 - 1);
          v87 = &v421;
          v88 = v65;
          do
          {
            v87->i8[0] = *v86;
            v87 = (v87 + 1);
            v86 += a20;
            --v88;
          }

          while (v88);
          if (v29 <= v65)
          {
LABEL_334:
            v213 = a7;
            if ((v67 & 4) == 0)
            {
              goto LABEL_403;
            }

            v214.n128_u64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v214.n128_u64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v418 = v214;
            v419 = v214;
            v416 = v214;
            v417 = v214;
            v414 = v214;
            v415 = v214;
            v412 = v214;
            v413 = v214;
            v410 = v214;
            v411 = v214;
            if (v63 < 1)
            {
              if (v65 < 1)
              {
                goto LABEL_403;
              }

              v215 = v65;
              LODWORD(v216) = v63;
              v217 = a7;
              __memset_chk();
            }

            else
            {
              v215 = v65;
              v216 = v63;
              v217 = a7;
              __memcpy_chk();
              v213 = a7;
              LODWORD(v63) = v216;
              LODWORD(v65) = v215;
              if (__len <= v216)
              {
                goto LABEL_403;
              }

              memset(&v411 + v216, v411.n128_u8[v216 - 1], __len - v216);
            }

            v213 = v217;
            LODWORD(v63) = v216;
            LODWORD(v65) = v215;
LABEL_403:
            if ((v67 & 0x10) == 0)
            {
LABEL_413:
              v252 = &qword_280ABB200[38 * (v65 > 0) + 19 * (v63 > 0) + v402];
              if (a7)
              {
                v252 = (&unk_280ABB460 + 152 * v213 + 8 * v402);
              }

              v253 = *v252;
              v254 = a22;
              v255 = __b;
              goto LABEL_416;
            }

            if (v63 < 1 || v65 < 1)
            {
              v250 = (a19 - 1);
              if (v63 <= 0)
              {
                if (v65 < 1)
                {
                  v251 = 0x80;
                  goto LABEL_412;
                }
              }

              else
              {
                v250 = (a19 - a20);
              }
            }

            else
            {
              v250 = (v66 - 1);
            }

            v251 = *v250;
LABEL_412:
            v410.n128_u8[15] = v251;
            v420.i8[15] = v251;
            goto LABEL_413;
          }

          v89 = v65;
          v90 = v63;
          memset(&v421.i8[v65], v421.u8[v65 - 1], v404 - v65);
        }

        v63 = v90;
        LODWORD(v65) = v89;
        goto LABEL_334;
      }

      if ((v67 & 2) != 0)
      {
        if (v63 <= 0)
        {
          v69 = 129;
          goto LABEL_374;
        }
      }

      else
      {
        v66 = (a19 - 1);
        if (v65 < 1)
        {
          v69 = 127;
LABEL_374:
          if (v29 <= 1)
          {
            v239 = 1;
          }

          else
          {
            v239 = v29;
          }

          do
          {
            memset(v26, v69, v28);
            v26 += a22;
            --v239;
          }

          while (v239);
          return;
        }
      }

      v69 = *v66;
      goto LABEL_374;
    }

    v72 = *(a1 + 10656);
    v73 = 2 * __b;
    v74 = byte_277BFAF70[a7];
    v75 = (2 * a19 - 2 * a20);
    v76 = (2 * a19 - 2);
    v77 = 128 << (v72 - 8);
    if (v74 & 4 | v65)
    {
      v78 = (v74 & 2 | v63) == 0;
    }

    else
    {
      v78 = 1;
    }

    if (!v78)
    {
      if ((v74 & 2) != 0)
      {
        v91 = 0;
        v92 = vdupq_n_s16(v77 | 1u);
        do
        {
          *(&v420 + v91) = v92;
          v91 += 16;
        }

        while (v91 != 320);
        if (v65 < 1)
        {
          if (v63 >= 1)
          {
            v218 = 0;
            v219 = vdupq_n_s64(v29 - 1);
            v220 = &v422.i16[7];
            v221 = *v75;
            do
            {
              v222 = vdupq_n_s64(v218);
              v223 = vmovn_s64(vcgeq_u64(v219, vorrq_s8(v222, xmmword_277BB70A0)));
              if (vuzp1_s8(vuzp1_s16(v223, *v219.i8), *v219.i8).u8[0])
              {
                *(v220 - 7) = v221;
              }

              if (vuzp1_s8(vuzp1_s16(v223, *&v219), *&v219).i8[1])
              {
                *(v220 - 6) = v221;
              }

              if (vuzp1_s8(vuzp1_s16(*&v219, vmovn_s64(vcgeq_u64(v219, vorrq_s8(v222, xmmword_277BB7090)))), *&v219).i8[2])
              {
                *(v220 - 5) = v221;
                *(v220 - 4) = v221;
              }

              v224 = vmovn_s64(vcgeq_u64(v219, vorrq_s8(v222, xmmword_277BB7080)));
              if (vuzp1_s8(*&v219, vuzp1_s16(v224, *&v219)).i32[1])
              {
                *(v220 - 3) = v221;
              }

              if (vuzp1_s8(*&v219, vuzp1_s16(v224, *&v219)).i8[5])
              {
                *(v220 - 2) = v221;
              }

              if (vuzp1_s8(*&v219, vuzp1_s16(*&v219, vmovn_s64(vcgeq_u64(v219, vorrq_s8(v222, xmmword_277BB7070))))).i8[6])
              {
                *(v220 - 1) = v221;
                *v220 = v221;
              }

              v218 += 8;
              v220 += 8;
            }

            while (((v29 + 7) & 0xFFFFFFFFFFFFFFF8) != v218);
          }
        }

        else
        {
          v93 = (2 * a19 - 2);
          v94 = &v422;
          v95 = v65;
          do
          {
            v94->i16[0] = *v93;
            v94 = (v94 + 2);
            v93 += a20;
            --v95;
          }

          while (v95);
          if (v29 > v65)
          {
            v96 = 0;
            v97 = v422.i16[v65 - 1];
            v98 = v29 - v65;
            v99 = vdupq_n_s64(v98 - 1);
            v100 = (v98 + 7) & 0xFFFFFFFFFFFFFFF8;
            v101 = &v422.i16[v65 + 7];
            do
            {
              v102 = vdupq_n_s64(v96);
              v103 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v102, xmmword_277BB70A0)));
              if (vuzp1_s8(vuzp1_s16(v103, *v99.i8), *v99.i8).u8[0])
              {
                *(v101 - 7) = v97;
              }

              if (vuzp1_s8(vuzp1_s16(v103, *&v99), *&v99).i8[1])
              {
                *(v101 - 6) = v97;
              }

              if (vuzp1_s8(vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v102, xmmword_277BB7090)))), *&v99).i8[2])
              {
                *(v101 - 5) = v97;
                *(v101 - 4) = v97;
              }

              v104 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v102, xmmword_277BB7080)));
              if (vuzp1_s8(*&v99, vuzp1_s16(v104, *&v99)).i32[1])
              {
                *(v101 - 3) = v97;
              }

              if (vuzp1_s8(*&v99, vuzp1_s16(v104, *&v99)).i8[5])
              {
                *(v101 - 2) = v97;
              }

              if (vuzp1_s8(*&v99, vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v102, xmmword_277BB7070))))).i8[6])
              {
                *(v101 - 1) = v97;
                *v101 = v97;
              }

              v96 += 8;
              v101 += 8;
            }

            while (v100 != v96);
          }
        }
      }

      if ((v74 & 4) != 0)
      {
        v225 = 0;
        v226 = vdupq_n_s16(v77 - 1);
        do
        {
          *(&v410 + v225) = v226;
          v225 += 16;
        }

        while (v225 != 320);
        if (v63 < 1)
        {
          if (v65 >= 1)
          {
            v256 = 0;
            v257 = vdupq_n_s64(__len - 1);
            v258 = &v412.n128_u16[7];
            v259 = *v76;
            do
            {
              v260 = vdupq_n_s64(v256);
              v261 = vmovn_s64(vcgeq_u64(v257, vorrq_s8(v260, xmmword_277BB70A0)));
              if (vuzp1_s8(vuzp1_s16(v261, *v257.i8), *v257.i8).u8[0])
              {
                *(v258 - 7) = v259;
              }

              if (vuzp1_s8(vuzp1_s16(v261, *&v257), *&v257).i8[1])
              {
                *(v258 - 6) = v259;
              }

              if (vuzp1_s8(vuzp1_s16(*&v257, vmovn_s64(vcgeq_u64(v257, vorrq_s8(v260, xmmword_277BB7090)))), *&v257).i8[2])
              {
                *(v258 - 5) = v259;
                *(v258 - 4) = v259;
              }

              v262 = vmovn_s64(vcgeq_u64(v257, vorrq_s8(v260, xmmword_277BB7080)));
              if (vuzp1_s8(*&v257, vuzp1_s16(v262, *&v257)).i32[1])
              {
                *(v258 - 3) = v259;
              }

              if (vuzp1_s8(*&v257, vuzp1_s16(v262, *&v257)).i8[5])
              {
                *(v258 - 2) = v259;
              }

              if (vuzp1_s8(*&v257, vuzp1_s16(*&v257, vmovn_s64(vcgeq_u64(v257, vorrq_s8(v260, xmmword_277BB7070))))).i8[6])
              {
                *(v258 - 1) = v259;
                *v258 = v259;
              }

              v256 += 8;
              v258 += 8;
            }

            while (((__len + 7) & 0xFFFFFFFFFFFFFFF8) != v256);
          }
        }

        else
        {
          v400 = v74;
          v227 = v65;
          v228 = v63;
          v229 = v72;
          __memcpy_chk();
          v74 = v400;
          v72 = v229;
          v73 = 2 * __b;
          LODWORD(v63) = v228;
          LODWORD(v65) = v227;
          if (__len > v228)
          {
            v230 = 0;
            v231 = v412.n128_i16[v228 - 1];
            v232 = __len - v228;
            v233 = vdupq_n_s64(v232 - 1);
            v234 = (v232 + 7) & 0xFFFFFFFFFFFFFFF8;
            v235 = &v412.n128_u16[v228 + 7];
            do
            {
              v236 = vdupq_n_s64(v230);
              v237 = vmovn_s64(vcgeq_u64(v233, vorrq_s8(v236, xmmword_277BB70A0)));
              if (vuzp1_s8(vuzp1_s16(v237, *v233.i8), *v233.i8).u8[0])
              {
                *(v235 - 7) = v231;
              }

              if (vuzp1_s8(vuzp1_s16(v237, *&v233), *&v233).i8[1])
              {
                *(v235 - 6) = v231;
              }

              if (vuzp1_s8(vuzp1_s16(*&v233, vmovn_s64(vcgeq_u64(v233, vorrq_s8(v236, xmmword_277BB7090)))), *&v233).i8[2])
              {
                *(v235 - 5) = v231;
                *(v235 - 4) = v231;
              }

              v238 = vmovn_s64(vcgeq_u64(v233, vorrq_s8(v236, xmmword_277BB7080)));
              if (vuzp1_s8(*&v233, vuzp1_s16(v238, *&v233)).i32[1])
              {
                *(v235 - 3) = v231;
              }

              if (vuzp1_s8(*&v233, vuzp1_s16(v238, *&v233)).i8[5])
              {
                *(v235 - 2) = v231;
              }

              if (vuzp1_s8(*&v233, vuzp1_s16(*&v233, vmovn_s64(vcgeq_u64(v233, vorrq_s8(v236, xmmword_277BB7070))))).i8[6])
              {
                *(v235 - 1) = v231;
                *v235 = v231;
              }

              v230 += 8;
              v235 += 8;
            }

            while (v234 != v230);
          }
        }
      }

      if ((v74 & 0x10) != 0)
      {
        if (v63 < 1 || v65 < 1)
        {
          if (v63 < 1)
          {
            if (v65 >= 1)
            {
              LOWORD(v77) = *v76;
            }
          }

          else
          {
            LOWORD(v77) = *v75;
          }
        }

        else
        {
          LOWORD(v77) = *(v75 - 1);
        }

        v411.n128_u16[7] = v77;
        v421.i16[7] = v77;
      }

      v382 = &qword_280ABA7E8[38 * (v65 > 0) + 19 * (v63 > 0) + v402];
      if (a7)
      {
        v382 = (&unk_280ABAA48 + 152 * a7 + 8 * v402);
      }

      v383 = *v382;
      v357 = a22;
      v384 = &v412;
      v385 = &v422;
      goto LABEL_688;
    }

    if ((v74 & 2) != 0)
    {
      v80 = v29;
      v79 = __len;
      if (v63 < 1)
      {
        v81 = v77 | 1;
      }

      else
      {
        v81 = *v75;
      }
    }

    else
    {
      v80 = v29;
      v79 = __len;
      if (v65 < 1)
      {
        v81 = v77 - 1;
      }

      else
      {
        v81 = *v76;
      }
    }

    v240 = 0;
    v241 = vdupq_n_s64(v79 - 1);
    if (v80 <= 1)
    {
      v242 = 1;
    }

    else
    {
      v242 = v80;
    }

    v243 = (v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v244 = (v73 + 8);
    do
    {
      v245 = 0;
      v246 = v244;
      do
      {
        v247 = vdupq_n_s64(v245);
        v248 = vmovn_s64(vcgeq_u64(v241, vorrq_s8(v247, xmmword_277BB70A0)));
        if (vuzp1_s8(vuzp1_s16(v248, *v241.i8), *v241.i8).u8[0])
        {
          *(v246 - 4) = v81;
        }

        if (vuzp1_s8(vuzp1_s16(v248, *&v241), *&v241).i8[1])
        {
          *(v246 - 3) = v81;
        }

        if (vuzp1_s8(vuzp1_s16(*&v241, vmovn_s64(vcgeq_u64(v241, vorrq_s8(v247, xmmword_277BB7090)))), *&v241).i8[2])
        {
          *(v246 - 2) = v81;
          *(v246 - 1) = v81;
        }

        v249 = vmovn_s64(vcgeq_u64(v241, vorrq_s8(v247, xmmword_277BB7080)));
        if (vuzp1_s8(*&v241, vuzp1_s16(v249, *&v241)).i32[1])
        {
          *v246 = v81;
        }

        if (vuzp1_s8(*&v241, vuzp1_s16(v249, *&v241)).i8[5])
        {
          v246[1] = v81;
        }

        if (vuzp1_s8(*&v241, vuzp1_s16(*&v241, vmovn_s64(vcgeq_u64(v241, vorrq_s8(v247, xmmword_277BB7070))))).i8[6])
        {
          v246[2] = v81;
          v246[3] = v81;
        }

        v245 += 8;
        v246 += 8;
      }

      while (v243 != v245);
      ++v240;
      v244 += a22;
    }

    while (v240 != v242);
    return;
  }

  v397 = v63;
  v398 = v65;
  v70 = v60 - v29;
  v396 = v62;
  v71 = v70 >= 1 && ((*&byte_277BFDB54[4 * v402] + a24) << v45) + (-*(a1 + 7932) >> 5) < *(a1 + 7844);
  v82 = *v27;
  v392 = -*(a1 + 7932) >> 5;
  if (!(v56 | v45))
  {
    goto LABEL_129;
  }

  if (*v27 <= 1u)
  {
    if (!*v27)
    {
      v84 = v45 == 1;
      if (v56 == 1 && v45 == 1)
      {
        v83 = 3;
      }

      else
      {
        v83 = 2;
      }

      v105 = v56 == 1;
LABEL_126:
      if (v105)
      {
        LOBYTE(v82) = v83;
      }

      else
      {
        LOBYTE(v82) = v84;
      }

      goto LABEL_129;
    }

    if (v56 == 1)
    {
      LOBYTE(v82) = 3;
    }

    else
    {
      LOBYTE(v82) = 1;
    }
  }

  else
  {
    if (v82 == 2)
    {
      v83 = 2;
      if (v45 == 1)
      {
        v84 = 3;
      }

      else
      {
        v84 = 2;
      }

LABEL_116:
      v105 = v56 == 1;
      if (v56 == 1)
      {
        v83 = v84;
      }

      goto LABEL_126;
    }

    if (v82 != 16)
    {
      if (v82 != 17)
      {
        goto LABEL_129;
      }

      v83 = 17;
      if (v45 == 1)
      {
        v84 = 5;
      }

      else
      {
        v84 = 17;
      }

      goto LABEL_116;
    }

    if (v56 == 1)
    {
      LOBYTE(v82) = 4;
    }

    else
    {
      LOBYTE(v82) = 16;
    }
  }

LABEL_129:
  v106 = -*(a1 + 7924);
  v107 = byte_277BFAF70[a7];
  v108 = v107 & 8;
  if (a18 == 5)
  {
    v109 = v107 & 0x20;
  }

  else
  {
    v109 = 0;
  }

  if (a18 != 5)
  {
    v108 = 0;
  }

  if (v61 > 7)
  {
    v399 = 0;
  }

  else
  {
    v110 = byte_277BFAF7D[a7] + a8;
    v108 = v110 < 90;
    v399 = v110;
    v109 = v110 > 180;
  }

  v111 = v106 >> 5;
  v390 = v27[1];
  if (!v108)
  {
    v118 = -1;
    goto LABEL_160;
  }

  v112 = *&byte_277BFDBA0[4 * v402];
  v113 = v112 + a23;
  v114 = v46 ^ 1;
  if (((v112 + a23) << v56) + (v106 >> 5) >= *(a1 + 7852))
  {
    v114 = 1;
  }

  if (v114)
  {
    goto LABEL_159;
  }

  v115 = byte_277C3F990[v82] >> v56;
  if (v115 <= 1)
  {
    v115 = 1;
  }

  if (a24 >= 1)
  {
    v116 = __len;
    if ((v82 & 0xFE) == 0xE)
    {
      v117 = 0x10u >> v56;
      if (0x10u >> v45 == a24 && v113 == v117)
      {
        v118 = 1;
        if (!v109)
        {
          goto LABEL_183;
        }

        goto LABEL_161;
      }

      v135 = a23 % v117 + v112 < v117;
    }

    else
    {
      v135 = v113 < v115;
    }

    v118 = v135;
    if (!v109)
    {
      goto LABEL_183;
    }

    goto LABEL_161;
  }

  if (v113 < v115 || (v119 = byte_277C36D60[a2], (v120 = ((v119 - 1) & v392) >> byte_277C3CFCC[v82]) == 0))
  {
    v118 = 1;
    goto LABEL_160;
  }

  v121 = byte_277C42228[v82];
  v122 = ((v119 - 1) & v111) >> v121;
  if ((v122 + 1) << v121 >= v119)
  {
LABEL_159:
    v118 = 0;
    goto LABEL_160;
  }

  v123 = v120 << (5 - v121);
  v124 = __OFADD__(v123, v122);
  v125 = v123 + v122;
  v126 = v125 + 7;
  if (v125 < 0 == v124)
  {
    v126 = v125;
  }

  if ((v390 & 0xFE) == 6)
  {
    v127 = &unk_27A71FA38;
  }

  else
  {
    v127 = &off_27A71FAB8;
  }

  v118 = (*(v127[v82] + (v126 >> 3)) >> (v125 & 7)) & 1;
LABEL_160:
  v116 = __len;
  if (!v109)
  {
LABEL_183:
    v133 = -1;
    goto LABEL_184;
  }

LABEL_161:
  if ((v57 & v71) == 1)
  {
    v57 = v82;
    v128 = v397;
    if (a23 >= 1 && (v82 & 0xFE) == 0xE)
    {
      v129 = v404;
      if ((((0x10u >> v56) + 0x7FFFFFFF) & a23) == 0)
      {
        v130 = 0x10u >> v45;
        v131 = a24 % (0x10u >> v45);
        v132 = byte_277C36D60[v82] >> v45;
        if (v132 >= v130)
        {
          v132 = v130;
        }

        v133 = *&byte_277BFDB54[4 * v402] + v131 < v132;
        goto LABEL_171;
      }
    }

    else
    {
      v129 = v404;
      if (a23 <= 0)
      {
        v136 = byte_277C36D60[v82] >> v45;
        if (v136 <= 1)
        {
          v136 = 1;
        }

        v137 = *&byte_277BFDB54[4 * v402] + a24;
        if (v137 >= v136)
        {
          v320 = byte_277C42228[v82];
          v321 = byte_277C3CFCC[v82];
          v322 = byte_277C36D60[a2];
          v323 = ((v322 - 1) & v392) >> v321;
          v324 = ((v322 - 1) & v111) >> v320;
          if (v324)
          {
            if ((v323 + 1) << v321 >= v322)
            {
              v133 = 0;
            }

            else
            {
              v325 = v323 << (5 - v320);
              v124 = __OFADD__(v325, v324);
              v326 = v325 + v324;
              v327 = v326 + 7;
              if (v326 < 0 == v124)
              {
                v327 = v326;
              }

              if ((v390 & 0xFE) == 6)
              {
                v328 = &unk_27A71FB68;
              }

              else
              {
                v328 = &off_27A71FBE8;
              }

              v133 = (*(v328[v82] + (v327 >> 3)) >> (v326 & 7)) & 1;
            }
          }

          else
          {
            v133 = (v323 << v321 >> v45) + v137 < (v322 >> v45);
          }

          goto LABEL_185;
        }

        v133 = 1;
LABEL_171:
        v134 = v398;
        goto LABEL_186;
      }
    }

    v133 = 0;
    goto LABEL_171;
  }

  v133 = 0;
LABEL_184:
  v129 = v404;
LABEL_185:
  v128 = v397;
  v134 = v398;
LABEL_186:
  v138 = v59 - v116;
  v139 = 7888;
  if (a25)
  {
    v139 = 7904;
  }

  v140 = 7896;
  if (!a25)
  {
    v140 = 7880;
  }

  v141 = *(a1 + v140);
  v142 = *(a1 + v139);
  if (v142)
  {
    if (a25)
    {
      if ((*(v142 + 167) & 0x80) != 0 || *(v142 + 16) > 0)
      {
        if (!v141)
        {
          goto LABEL_203;
        }

LABEL_201:
        if ((*(v141 + 167) & 0x80) != 0 || *(v141 + 16) > 0)
        {
          goto LABEL_203;
        }

        v145 = *(v141 + 3);
        goto LABEL_207;
      }

      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    if (*(v142 + v143) - 12 > 0xFFFFFFFC)
    {
      v144 = 1;
      goto LABEL_208;
    }
  }

  if (!v141)
  {
LABEL_203:
    v144 = 0;
    goto LABEL_208;
  }

  if (a25)
  {
    goto LABEL_201;
  }

  v145 = *(v141 + 2);
LABEL_207:
  v144 = (v145 - 9) < 3;
LABEL_208:
  if (v116 >= v138)
  {
    v146 = v138;
  }

  else
  {
    v146 = v116;
  }

  if (v118 <= 0)
  {
    v147 = v118;
  }

  else
  {
    v147 = v146;
  }

  if (v129 >= v70)
  {
    v148 = v70;
  }

  else
  {
    v148 = v129;
  }

  if (v133 <= 0)
  {
    v148 = v133;
  }

  if ((v31 & 8) == 0)
  {
    v149.i64[0] = 0x8181818181818181;
    v149.i64[1] = 0x8181818181818181;
    v420 = v149;
    v421 = v149;
    v150 = (a19 - a20);
    v151 = (a19 - 1);
    v422 = v149;
    v423 = v149;
    v424 = v149;
    v425 = v149;
    v426 = v149;
    v427 = v149;
    v428 = v149;
    v429 = v149;
    v152.n128_u64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v152.n128_u64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v410 = v152;
    v411 = v152;
    v412 = v152;
    v413 = v152;
    v414 = v152;
    v415 = v152;
    v416 = v152;
    v417 = v152;
    v418 = v152;
    v419 = v152;
    if (a7 - 9 >= 0xFFFFFFF8)
    {
      if (v399 >= 91)
      {
        v154 = v399 < 0xB4;
        v155 = 1;
        v153 = 1;
      }

      else
      {
        v153 = 0;
        v155 = 1;
        v154 = 1;
      }
    }

    else
    {
      v153 = v107 & 2;
      v154 = v107 & 4;
      v155 = v107 & 0x10;
    }

    if (a18 == 5)
    {
      v170 = v154;
    }

    else
    {
      v170 = 1;
    }

    if (a18 == 5)
    {
      v171 = v153;
    }

    else
    {
      v171 = 1;
    }

    if (v170 | v134 && v171 | v128)
    {
      v391 = v155;
      v393 = v144;
      if (!v171)
      {
        goto LABEL_442;
      }

      if (v148 >= 0)
      {
        v172 = v116;
      }

      else
      {
        v172 = 0;
      }

      v173 = v172 + v129;
      if (v134 < 1)
      {
        if (v128 < 1)
        {
          goto LABEL_442;
        }

        v203 = v147;
        v204 = v129;
        v205 = (a19 - 1);
        __memset_chk();
      }

      else
      {
        v174 = (a19 - 1);
        v175 = &v421;
        v176 = v134;
        do
        {
          v175->i8[0] = *v174;
          v175 = (v175 + 1);
          v174 += a20;
          --v176;
        }

        while (v176);
        if (v148 < 1)
        {
          LODWORD(v178) = v134;
        }

        else
        {
          v177 = (v148 + v129);
          LODWORD(v178) = v134;
          if (v177 > v134)
          {
            v179 = (a19 + a20 * v134 - 1);
            v178 = v134;
            do
            {
              v421.i8[v178++] = *v179;
              v179 += a20;
            }

            while (v178 < v177);
          }
        }

        if (v173 <= v178)
        {
LABEL_442:
          if (v170)
          {
            if ((v147 & 0x80000000) == 0)
            {
              v263 = v129;
            }

            else
            {
              v263 = 0;
            }

            v264 = v263 + v116;
            if (v128 < 1)
            {
              if (v134 >= 1)
              {
                v265 = v129;
                v268 = v151;
                __memset_chk();
                v151 = v268;
                goto LABEL_453;
              }
            }

            else
            {
              v388 = v151;
              v265 = v129;
              v266 = v147;
              v267 = v128;
              __memcpy_chk();
              if (v266 >= 1)
              {
                memcpy(&v411 + v116, &v150[v116], v266);
                v396 = v266 + v267;
              }

              LODWORD(v134) = v398;
              v128 = v267;
              v151 = v388;
              if (v264 > v396)
              {
                memset(&v411 + v396, v411.n128_u8[v396 - 1], v264 - v396);
                v151 = v388;
LABEL_453:
                v129 = v265;
                v128 = v397;
                LODWORD(v134) = v398;
              }
            }
          }

          v269 = a22;
          if (a18 == 5 && !v391)
          {
LABEL_467:
            if (a3)
            {
              if (v399 != 90 && v399 != 180)
              {
                if (v170 && v171 && v129 + __len >= 24)
                {
                  v410.n128_u8[15] = (5 * (v411.n128_u8[0] + v421.u8[0]) + 6 * v410.n128_u8[15] + 8) >> 4;
                  v420.i8[15] = v410.n128_i8[15];
                }

                if (v128 >= 1 && v170)
                {
                  if (v399 >= 90)
                  {
                    v272 = 0;
                  }

                  else
                  {
                    v272 = v129;
                  }

                  v273 = v128;
                  v274 = sub_277A7BA84(__len, v129, v399 - 90, v393);
                  v275 = v273 + v272;
                  v269 = a22;
                  v152.n128_u64[0] = sub_2779CA360(&v410 | 0xF, v275 + 1, v274, v276);
                  LODWORD(v134) = v398;
                }

                if (v134 >= 1 && v171)
                {
                  v277 = v269;
                  if (v399 <= 180)
                  {
                    v278 = 0;
                  }

                  else
                  {
                    v278 = __len;
                  }

                  v279 = v134;
                  v280 = sub_277A7BA84(v129, __len, v399 - 180, v393);
                  v281 = v279 + v278;
                  v269 = v277;
                  v152.n128_u64[0] = sub_2779CA360(&v420 | 0xF, v281 + 1, v280, v282);
                }
              }

              v283 = 0;
              v284 = 90 - v399;
              if (v399 - 90 >= 0)
              {
                v284 = v399 - 90;
              }

              if (v399 == 90)
              {
                LODWORD(v116) = __len;
              }

              else
              {
                LODWORD(v116) = __len;
                if (v284 <= 0x27)
                {
                  v285 = v129 + __len;
                  v286 = v393 ? 9 : 17;
                  v283 = v285 < v286;
                  if (v170)
                  {
                    if (v285 < v286)
                    {
                      if (v399 >= 90)
                      {
                        v287 = 0;
                      }

                      else
                      {
                        v287 = v129;
                      }

                      sub_2779CA5A8(&v411, v287 + __len);
                      v283 = 1;
                    }
                  }
                }
              }

              v288 = 0;
              v329 = 180 - v399;
              if (v399 - 180 >= 0)
              {
                v329 = v399 - 180;
              }

              if (v399 != 180 && v329 <= 0x27)
              {
                v330 = v129 + v116;
                v331 = v393 ? 9 : 17;
                v288 = v330 < v331;
                if (v171)
                {
                  if (v330 < v331)
                  {
                    if (v399 <= 180)
                    {
                      v332 = 0;
                    }

                    else
                    {
                      v332 = v116;
                    }

                    sub_2779CA5A8(&v421, v332 + v129);
                    v288 = 1;
                  }
                }
              }
            }

            else
            {
              v288 = 0;
              v283 = 0;
            }

            v254 = v269;
            if ((v399 - 1) < 0x59)
            {
              sub_277B2251C(__b, v269, v116, v129, &v411, v283, word_277BFAF8A[v399], v152, a10, a11, a12, a13, a14);
              return;
            }

            if ((v399 - 91) < 0x59)
            {
              sub_277B22D20(__b, v269, v116, v129, &v411, &v421, v283, v288, v152.n128_f64[0], a10, a11, a12, a13, *a14.i8, a15, word_277BFAF8A[180 - v399], word_277BFAF8A[v399 - 90]);
              return;
            }

            if ((v399 - 181) < 0x59)
            {
              (*(&qword_28866EF58[7 * (__clz(v116) ^ 0x1F)] + (__clz(v129) ^ 0x1F)))(__b, v269, &v421, v288, word_277BFAF8A[270 - v399], v57, v128);
              return;
            }

            if (v399 == 180)
            {
              v253 = *(&unk_280ABB460 + v402 + 38);
            }

            else
            {
              if (v399 != 90)
              {
                return;
              }

              v253 = *(&unk_280ABB460 + v402 + 19);
            }

            v255 = __b;
LABEL_416:
            v253(v255, v254, &v411, &v421);
            return;
          }

          if (v128 < 1 || v134 < 1)
          {
            if (v128 <= 0)
            {
              v270 = v151;
            }

            else
            {
              v270 = (a19 - a20);
            }

            if (v128 <= 0 && v134 < 1)
            {
              v271 = 0x80;
LABEL_466:
              v410.n128_u8[15] = v271;
              v420.i8[15] = v271;
              if (a18 != 5)
              {
                sub_2779CA0A8(__b, a22, a6, &v411, v421.i8, a18);
                return;
              }

              goto LABEL_467;
            }
          }

          else
          {
            v270 = (v150 - 1);
          }

          v271 = *v270;
          goto LABEL_466;
        }

        v203 = v147;
        v204 = v129;
        v205 = (a19 - 1);
        memset(&v421.i8[v178], v421.u8[v178 - 1], v173 - v178);
      }

      v151 = v205;
      v147 = v203;
      v129 = v204;
      v128 = v397;
      LODWORD(v134) = v398;
      goto LABEL_442;
    }

    if (v171)
    {
      if (v128 <= 0)
      {
        v180 = 129;
LABEL_302:
        if (v129 <= 1)
        {
          v202 = 1;
        }

        else
        {
          v202 = v129;
        }

        do
        {
          memset(v26, v180, v116);
          v26 += a22;
          --v202;
        }

        while (v202);
        return;
      }
    }

    else
    {
      v150 = (a19 - 1);
      if (v134 < 1)
      {
        v180 = 127;
        goto LABEL_302;
      }
    }

    v180 = *v150;
    goto LABEL_302;
  }

  v156 = 0;
  v157 = *(a1 + 10656);
  v158 = 128 << (v157 - 8);
  v159 = v158 | 1;
  v160 = vdupq_n_s16(v158 | 1u);
  do
  {
    *(&v410 + v156) = v160;
    v156 += 16;
  }

  while (v156 != 320);
  v161 = 0;
  v162 = 2 * a19;
  v163 = (2 * __b);
  v164 = vdupq_n_s16(v158 - 1);
  do
  {
    *&v406[v161] = v164;
    v161 += 16;
  }

  while (v161 != 320);
  v165 = (v162 - 2 * a20);
  v166 = (v162 - 2);
  if (a7 - 9 >= 0xFFFFFFF8)
  {
    if (v399 >= 91)
    {
      v167 = v399 < 0xB4;
      v169 = 1;
      v168 = 1;
    }

    else
    {
      v168 = 0;
      v169 = 1;
      v167 = 1;
    }
  }

  else
  {
    v167 = v107 & 4;
    v168 = v107 & 2;
    v169 = v107 & 0x10;
  }

  if (a18 == 5)
  {
    v181 = v167;
  }

  else
  {
    v181 = 1;
  }

  if (a18 == 5)
  {
    v182 = v168;
  }

  else
  {
    v182 = 1;
  }

  if (!(v181 | v134) || !(v182 | v128))
  {
    if (v182)
    {
      if (v128 <= 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      v165 = (v162 - 2);
      v159 = v158 - 1;
      if (v134 < 1)
      {
LABEL_280:
        v193 = 0;
        v194 = vdupq_n_s64(v116 - 1);
        if (v129 <= 1)
        {
          v195 = 1;
        }

        else
        {
          v195 = v129;
        }

        v196 = v163 + 1;
        do
        {
          v197 = 0;
          v198 = v196;
          do
          {
            v199 = vdupq_n_s64(v197);
            v200 = vmovn_s64(vcgeq_u64(v194, vorrq_s8(v199, xmmword_277BB70A0)));
            if (vuzp1_s8(vuzp1_s16(v200, *v194.i8), *v194.i8).u8[0])
            {
              v198[-1].i16[0] = v159;
            }

            if (vuzp1_s8(vuzp1_s16(v200, *&v194), *&v194).i8[1])
            {
              v198[-1].i16[1] = v159;
            }

            if (vuzp1_s8(vuzp1_s16(*&v194, vmovn_s64(vcgeq_u64(v194, vorrq_s8(v199, xmmword_277BB7090)))), *&v194).i8[2])
            {
              v198[-1].i16[2] = v159;
              v198[-1].i16[3] = v159;
            }

            v201 = vmovn_s64(vcgeq_u64(v194, vorrq_s8(v199, xmmword_277BB7080)));
            if (vuzp1_s8(*&v194, vuzp1_s16(v201, *&v194)).i32[1])
            {
              v198->i16[0] = v159;
            }

            if (vuzp1_s8(*&v194, vuzp1_s16(v201, *&v194)).i8[5])
            {
              v198->i16[1] = v159;
            }

            if (vuzp1_s8(*&v194, vuzp1_s16(*&v194, vmovn_s64(vcgeq_u64(v194, vorrq_s8(v199, xmmword_277BB7070))))).i8[6])
            {
              v198->i16[2] = v159;
              v198->i16[3] = v159;
            }

            v197 += 8;
            v198 += 2;
          }

          while (((v116 + 7) & 0xFFFFFFFFFFFFFFF8) != v197);
          ++v193;
          v196 = (v196 + 2 * a22);
        }

        while (v193 != v195);
        return;
      }
    }

    v159 = *v165;
    goto LABEL_280;
  }

  v183 = &v412;
  if (v182)
  {
    if (v148 >= 0)
    {
      v184 = v116;
    }

    else
    {
      v184 = 0;
    }

    v185 = v184 + v129;
    if (v134 < 1)
    {
      if (v128 >= 1 && v185)
      {
        v206 = 0;
        v207 = *v165;
        v164 = vdupq_n_s64(v185 - 1);
        *&a10 = 6;
        *&a11 = 4;
        *&a12 = 2;
        a13 = 0.0;
        v208 = &v412.n128_u16[7];
        do
        {
          v209 = vdupq_n_s64(v206);
          v210 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v209, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v210, *v164.i8), *v164.i8).u8[0])
          {
            *(v208 - 7) = v207;
          }

          if (vuzp1_s8(vuzp1_s16(v210, *&v164), *&v164).i8[1])
          {
            *(v208 - 6) = v207;
          }

          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v209, xmmword_277BB7090)))), *&v164).i8[2])
          {
            *(v208 - 5) = v207;
            *(v208 - 4) = v207;
          }

          v211 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v209, xmmword_277BB7080)));
          a16 = vuzp1_s8(*v164.i8, vuzp1_s16(v211, *v164.i8));
          if (a16.i8[4])
          {
            *(v208 - 3) = v207;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(v211, *&v164)).i8[5])
          {
            *(v208 - 2) = v207;
          }

          v212 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v209, xmmword_277BB7070)));
          *a15.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v212));
          if (a15.i8[6])
          {
            *(v208 - 1) = v207;
          }

          *a14.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v212));
          if (a14.i8[7])
          {
            *v208 = v207;
          }

          v206 += 8;
          v208 += 8;
        }

        while (((v185 + 7) & 0xFFFFFFFFFFFFFFF8) != v206);
      }
    }

    else
    {
      v186 = 2 * a20;
      v187 = (v162 - 2);
      v188 = &v412;
      v189 = v134;
      do
      {
        v188->n128_u16[0] = *v187;
        v188 = (v188 + 2);
        v187 = (v187 + v186);
        --v189;
      }

      while (v189);
      if (v148 < 1)
      {
        LODWORD(v191) = v134;
      }

      else
      {
        v190 = (v148 + v129);
        LODWORD(v191) = v134;
        if (v190 > v134)
        {
          v192 = (v162 + 2 * a20 * v134 - 2);
          v191 = v134;
          do
          {
            v412.n128_u16[v191++] = *v192;
            v192 = (v192 + v186);
          }

          while (v191 < v190);
        }
      }

      v289 = v185 - v191;
      if (v185 > v191)
      {
        v290 = 0;
        v291 = v289;
        v164 = vdupq_n_s64(v289 - 1);
        *&a10 = 6;
        *&a11 = 4;
        *&a12 = 2;
        a13 = 0.0;
        v292 = v412.n128_i16[v191 - 1];
        v293 = (v291 + 7) & 0xFFFFFFFFFFFFFFF8;
        v294 = &v412.n128_u16[v191 + 7];
        do
        {
          v295 = vdupq_n_s64(v290);
          v296 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v295, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v296, *v164.i8), *v164.i8).u8[0])
          {
            *(v294 - 7) = v292;
          }

          if (vuzp1_s8(vuzp1_s16(v296, *&v164), *&v164).i8[1])
          {
            *(v294 - 6) = v292;
          }

          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v295, xmmword_277BB7090)))), *&v164).i8[2])
          {
            *(v294 - 5) = v292;
            *(v294 - 4) = v292;
          }

          v297 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v295, xmmword_277BB7080)));
          a16 = vuzp1_s8(*v164.i8, vuzp1_s16(v297, *v164.i8));
          if (a16.i8[4])
          {
            *(v294 - 3) = v292;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(v297, *&v164)).i8[5])
          {
            *(v294 - 2) = v292;
          }

          v298 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v295, xmmword_277BB7070)));
          *a15.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v298));
          if (a15.i8[6])
          {
            *(v294 - 1) = v292;
          }

          *a14.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v298));
          if (a14.i8[7])
          {
            *v294 = v292;
          }

          v290 += 8;
          v294 += 8;
        }

        while (v293 != v290);
      }
    }
  }

  if (v181)
  {
    if ((v147 & 0x80000000) == 0)
    {
      v299 = v129;
    }

    else
    {
      v299 = 0;
    }

    v300 = v299 + v116;
    if (v128 < 1)
    {
      if (v134 >= 1 && v300)
      {
        v313 = 0;
        v314 = *v166;
        v164 = vdupq_n_s64(v300 - 1);
        *&a10 = 6;
        *&a11 = 4;
        *&a12 = 2;
        a13 = 0.0;
        v315 = v409;
        do
        {
          v316 = vdupq_n_s64(v313);
          v317 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v316, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v317, *v164.i8), *v164.i8).u8[0])
          {
            *(v315 - 7) = v314;
          }

          if (vuzp1_s8(vuzp1_s16(v317, *&v164), *&v164).i8[1])
          {
            *(v315 - 6) = v314;
          }

          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v316, xmmword_277BB7090)))), *&v164).i8[2])
          {
            *(v315 - 5) = v314;
            *(v315 - 4) = v314;
          }

          v318 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v316, xmmword_277BB7080)));
          a16 = vuzp1_s8(*v164.i8, vuzp1_s16(v318, *v164.i8));
          if (a16.i8[4])
          {
            *(v315 - 3) = v314;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(v318, *&v164)).i8[5])
          {
            *(v315 - 2) = v314;
          }

          v319 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v316, xmmword_277BB7070)));
          *a15.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v319));
          if (a15.i8[6])
          {
            *(v315 - 1) = v314;
          }

          *a14.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v319));
          if (a14.i8[7])
          {
            *v315 = v314;
          }

          v313 += 8;
          v315 += 8;
        }

        while (((v300 + 7) & 0xFFFFFFFFFFFFFFF8) != v313);
      }
    }

    else
    {
      v386 = v169;
      v387 = v166;
      v389 = v181;
      v394 = v144;
      v301 = v147;
      v302 = v128;
      __memcpy_chk();
      if (v301 >= 1)
      {
        memcpy(&v408[v116], &v165[v116], (2 * v301));
        v396 = v301 + v302;
      }

      v303 = v300 - v396;
      LODWORD(v128) = v302;
      LODWORD(v134) = v398;
      v144 = v394;
      v181 = v389;
      LOWORD(v158) = 128 << (v157 - 8);
      v166 = v387;
      v169 = v386;
      if (v300 > v396)
      {
        v304 = 0;
        v305 = v303;
        v164 = vdupq_n_s64(v303 - 1);
        *&a10 = 6;
        *&a11 = 4;
        *&a12 = 2;
        a13 = 0.0;
        v306 = v408[v396 - 1];
        v307 = (v305 + 7) & 0xFFFFFFFFFFFFFFF8;
        v308 = &v409[v396];
        do
        {
          v309 = vdupq_n_s64(v304);
          v310 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v309, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v310, *v164.i8), *v164.i8).u8[0])
          {
            *(v308 - 7) = v306;
          }

          if (vuzp1_s8(vuzp1_s16(v310, *&v164), *&v164).i8[1])
          {
            *(v308 - 6) = v306;
          }

          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v309, xmmword_277BB7090)))), *&v164).i8[2])
          {
            *(v308 - 5) = v306;
            *(v308 - 4) = v306;
          }

          v311 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v309, xmmword_277BB7080)));
          a16 = vuzp1_s8(*v164.i8, vuzp1_s16(v311, *v164.i8));
          if (a16.i8[4])
          {
            *(v308 - 3) = v306;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(v311, *&v164)).i8[5])
          {
            *(v308 - 2) = v306;
          }

          v312 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v309, xmmword_277BB7070)));
          *a15.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v312));
          if (a15.i8[6])
          {
            *(v308 - 1) = v306;
          }

          *a14.i8 = vuzp1_s8(*v164.i8, vuzp1_s16(*v164.i8, v312));
          if (a14.i8[7])
          {
            *v308 = v306;
          }

          v304 += 8;
          v308 += 8;
        }

        while (v307 != v304);
      }
    }
  }

  if (a18 == 5 && !v169)
  {
    goto LABEL_601;
  }

  if (v128 < 1 || v134 < 1)
  {
    if (v128 < 1)
    {
      if (v134 >= 1)
      {
        LOWORD(v158) = *v166;
      }
    }

    else
    {
      LOWORD(v158) = *v165;
    }
  }

  else
  {
    LOWORD(v158) = *(v165 - 1);
  }

  v407 = v158;
  v411.n128_u16[7] = v158;
  if (a18 == 5)
  {
LABEL_601:
    if (a3)
    {
      if (v399 != 90 && v399 != 180)
      {
        if (v181 && v182 && v129 + v116 >= 24)
        {
          v407 = (5 * (v408[0] + v412.n128_u16[0]) + 6 * v407 + 8) >> 4;
          v411.n128_u16[7] = v407;
        }

        if (v128 >= 1 && v181)
        {
          if (v399 >= 90)
          {
            v333 = 0;
          }

          else
          {
            v333 = v129;
          }

          v334 = v128;
          v335 = v181;
          v336 = sub_277A7BA84(v116, v129, v399 - 90, v144);
          v337 = v334 + v333;
          v163 = (2 * __b);
          v25 = a22;
          v164.i64[0] = sub_277BA589C(&v407, v337 + 1, v336, v338).u64[0];
          v181 = v335;
          LODWORD(v129) = v404;
          LODWORD(v134) = v398;
        }

        if (v134 >= 1 && v182)
        {
          v339 = v144;
          if (v399 <= 180)
          {
            v340 = 0;
          }

          else
          {
            v340 = v116;
          }

          v341 = v163;
          v342 = v134;
          v343 = v181;
          v344 = sub_277A7BA84(v129, v116, v399 - 180, v339);
          v345 = v342 + v340;
          v163 = v341;
          v25 = a22;
          v144 = v339;
          v164.i64[0] = sub_277BA589C(&v411.n128_i64[1] + 6, v345 + 1, v344, v346).u64[0];
          v181 = v343;
          LODWORD(v129) = v404;
        }
      }

      v347 = 0;
      v348 = 90 - v399;
      if (v399 - 90 >= 0)
      {
        v348 = v399 - 90;
      }

      if (v399 != 90 && v348 <= 0x27)
      {
        v349 = v129 + v116;
        v350 = v144 ? 9 : 17;
        v347 = v349 < v350;
        if (v181)
        {
          if (v349 < v350)
          {
            if (v399 >= 90)
            {
              v351 = 0;
            }

            else
            {
              v351 = v129;
            }

            sub_277BA5AE4(v408, v351 + v116, v157);
            v347 = 1;
          }
        }
      }

      v352 = 0;
      v353 = 180 - v399;
      if (v399 - 180 >= 0)
      {
        v353 = v399 - 180;
      }

      if (v399 != 180 && v353 <= 0x27)
      {
        v354 = v129 + v116;
        v355 = v144 ? 9 : 17;
        v352 = v354 < v355;
        if (v182)
        {
          if (v354 < v355)
          {
            if (v399 <= 180)
            {
              v356 = 0;
            }

            else
            {
              v356 = v116;
            }

            sub_277BA5AE4(&v412, v356 + v129, v157);
            v352 = 1;
          }
        }
      }
    }

    else
    {
      v352 = 0;
      v347 = 0;
    }

    v357 = v25;
    if ((v399 - 1) < 0x59)
    {
      sub_277B9251C(v163, v25, v116, v129, v408, v347, word_277BFAF8A[v399], *v164.i64, a10, a11, a12, a13, *a14.i64, *a15.i64, a16);
      return;
    }

    if ((v399 - 91) < 0x59)
    {
      (*(&qword_28866F0F0[7 * (__clz(v116) ^ 0x1F)] + (__clz(v129) ^ 0x1F)))(v163, v25, v408, &v412, v347, v352, word_277BFAF8A[180 - v399], word_277BFAF8A[v399 - 90], v157);
      return;
    }

    if ((v399 - 181) < 0x59)
    {
      sub_277B984A4(v163, v25, v116, v129, &v412, v352, word_277BFAF8A[270 - v399]);
      return;
    }

    if (v399 == 180)
    {
      v383 = *(&unk_280ABAA48 + v402 + 38);
    }

    else
    {
      if (v399 != 90)
      {
        return;
      }

      v383 = *(&unk_280ABAA48 + v402 + 19);
    }

    v73 = v163;
    v384 = v408;
    v385 = &v412;
    v72 = v157;
LABEL_688:
    v383(v73, v357, v384, v385, v72);
    return;
  }

  if (v129 <= 1)
  {
    v358 = 1;
  }

  else
  {
    v358 = v129;
  }

  v359 = 33;
  v403 = v358;
  do
  {
    v360 = v183->n128_u16[0];
    v183 = (v183 + 2);
    v420.i16[v359] = v360;
    v359 += 33;
    --v358;
  }

  while (v358);
  v401 = 2 * v116;
  __memcpy_chk();
  v361 = 1;
  do
  {
    v362 = &v420.i8[66 * v361 - 66];
    v363 = 1;
    do
    {
      v364 = 0;
      v365 = 2 * v363 - 2;
      v366 = *&v362[v365];
      v367 = &v362[2 * v363];
      v368 = *v367;
      v369 = v367[1];
      v370 = v367[2];
      v371 = v367[3];
      v372 = *(&v420.u16[33 * v361] + v365);
      v373 = &unk_277BFAE30 + 64 * a18 + 3;
      v374 = *(&v420 + 66 * v361 + v365 + 66);
      do
      {
        v375 = (*(v373 - 2) * v368 + *(v373 - 3) * v366 + *(v373 - 1) * v369 + *v373 * v370 + v373[1] * v371 + v373[2] * v372 + v373[3] * v374 + 8) >> 4;
        v373 += 8;
        if (v375 >= 0x3FF)
        {
          v376 = 1023;
        }

        else
        {
          v376 = v375;
        }

        if (v375 >= 0xFFF)
        {
          v377 = 4095;
        }

        else
        {
          v377 = v375;
        }

        if (v375 >= 0xFF)
        {
          v378 = 255;
        }

        else
        {
          v378 = v375;
        }

        if (v157 != 12)
        {
          v377 = v378;
        }

        if (v157 != 10)
        {
          v376 = v377;
        }

        if ((v375 & 0x80000000) != 0)
        {
          v376 = 0;
        }

        v420.i16[33 * (v364 >> 2) + 33 * v361 + (v364 & 3) + v363] = v376;
        ++v364;
      }

      while (v364 != 8);
      v363 += 4;
    }

    while (v363 <= __len);
    v361 += 2;
  }

  while (v361 <= v404);
  v379 = (2 * __b);
  v380 = 68;
  v381 = v403;
  do
  {
    memcpy(v379, &v420.i8[v380], v401);
    v380 += 66;
    v379 += 2 * a22;
    --v381;
  }

  while (v381);
}