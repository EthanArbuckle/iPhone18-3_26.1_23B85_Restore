uint64_t vpx_highbd_sad32x16_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t vpx_highbd_sad32x16_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t vpx_highbd_sad16x32_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t vpx_highbd_sad16x32_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

int32x4_t vpx_highbd_sad16x32x4d_bits8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
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

uint64_t vpx_highbd_sad64x32_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t vpx_highbd_sad_skip_64x32_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v7 = vpadalq_u16(vpadalq_u16(v7, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t vpx_highbd_sad32x64_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t vpx_highbd_sad_skip_32x64_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t vpx_highbd_sad32x64_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 4096);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t vpx_highbd_sad32x32_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t vpx_highbd_sad_skip_32x32_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t vpx_highbd_sad32x32_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t vpx_highbd_sad64x64_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t vpx_highbd_sad_skip_64x64_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v7 = vpadalq_u16(vpadalq_u16(v7, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

int32x4_t vpx_highbd_sad16x16x4d_bits8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
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

uint64_t vpx_highbd_sad_skip_16x8_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = (2 * a1 + v4);
  v6 = 4 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = vabdq_u16(v5[1], v7[1]);
  v10 = (v5 + v4);
  v11 = (v7 + v6);
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10))), vabdq_u16(*(2 * a1), *(2 * a3))), v8), v9), vabdq_u16(*v10, *v11)), vabdq_u16(v10[1], v11[1])), vabdq_u16(*(v10 + v4), *(v11 + v6))), vabdq_u16(*(&v10[1] + v4), *(&v11[1] + v6)))));
}

uint64_t vpx_highbd_sad_skip_8x16_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = (2 * a1 + v4);
  v6 = 4 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return 2 * vaddlvq_u16(vaddq_s16(vaddq_s16(vabaq_u16(vabdq_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabaq_u16(vabaq_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6))));
}

int32x4_t vpx_highbd_sad8x16x4d_bits8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
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

uint64_t vpx_highbd_sad8x8_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = (2 * a1 + v4);
  v6 = 2 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabaq_u16(vabdq_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabaq_u16(vabaq_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6))));
}

uint64_t vpx_highbd_sad_skip_8x8_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = 4 * a4;
  return 2 * vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5)));
}

uint64_t vpx_highbd_sad8x8_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  v9 = vpadalq_u16(vpaddlq_u16(vabdq_u16(*v6, vrhaddq_u16(*v8, *(2 * a5 + 0x10)))), vabdq_u16(*(2 * a1), vrhaddq_u16(*(2 * a3), *(2 * a5))));
  v10 = (v6 + v5);
  v11 = (v8 + v7);
  v12 = vpadalq_u16(v9, vabdq_u16(*v10, vrhaddq_u16(*v11, *(2 * a5 + 0x20))));
  v13 = (v10 + v5);
  v14 = (v11 + v7);
  v15 = vpadalq_u16(v12, vabdq_u16(*v13, vrhaddq_u16(*v14, *(2 * a5 + 0x30))));
  v16 = (v13 + v5);
  v17 = (v14 + v7);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v15, vabdq_u16(*v16, vrhaddq_u16(*v17, *(2 * a5 + 0x40)))), vabdq_u16(*(v16 + v5), vrhaddq_u16(*(v17 + v7), *(2 * a5 + 0x50)))), vabdq_u16(*(v16 + v5 + v5), vrhaddq_u16(*(v17 + v7 + v7), *(2 * a5 + 0x60)))), vabdq_u16(*(v16 + v5 + v5 + v5), vrhaddq_u16(*(v17 + v7 + v7 + v7), *(2 * a5 + 0x70)))));
}

uint64_t vpx_highbd_sad8x4_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = 2 * a4;
  return vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5)));
}

uint64_t vpx_highbd_sad8x4_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vabdq_u16(*v6, vrhaddq_u16(*v8, *(2 * a5 + 0x10)))), vabdq_u16(*(2 * a1), vrhaddq_u16(*(2 * a3), *(2 * a5)))), vabdq_u16(*(v6 + v5), vrhaddq_u16(*(v8 + v7), *(2 * a5 + 0x20)))), vabdq_u16(*(v6 + v5 + v5), vrhaddq_u16(*(v8 + v7 + v7), *(2 * a5 + 0x30)))));
}

int32x4_t vpx_highbd_sad8x4x4d_bits8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = (2 * *a3);
  v6 = (2 * a3[1]);
  v7 = (2 * a3[2]);
  v8 = (2 * a3[3]);
  v9 = *(2 * a1);
  v10 = *(2 * a1 + 2 * a2);
  v11 = 2 * a4;
  v12 = vabaq_u16(vabdq_u16(v10, *(v5 + v11)), v9, *v5);
  v13 = vabaq_u16(vabdq_u16(v10, *(v6 + v11)), v9, *v6);
  v14 = vabaq_u16(vabdq_u16(v10, *(v7 + v11)), v9, *v7);
  v15 = vabaq_u16(vabdq_u16(v10, *(v8 + v11)), v9, *v8);
  v16 = *(2 * a1 + 4 * a2);
  v17 = 4 * a4;
  v18 = vabaq_u16(v12, v16, *(v5 + v17));
  v19 = vabaq_u16(v13, v16, *(v6 + v17));
  v20 = vabaq_u16(v14, v16, *(v7 + v17));
  v21 = vabaq_u16(v15, v16, *(v8 + v17));
  v22 = *(2 * a1 + 6 * a2);
  result = vpaddq_s32(vpaddq_s32(vpaddlq_u16(vabaq_u16(v18, v22, *(v5 + 6 * a4))), vpaddlq_u16(vabaq_u16(v19, v22, *(v6 + 6 * a4)))), vpaddq_s32(vpaddlq_u16(vabaq_u16(v20, v22, *(v7 + 6 * a4))), vpaddlq_u16(vabaq_u16(v21, v22, *(v8 + 6 * a4)))));
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_8x4x4d_bits8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = *(2 * a1);
  v6 = *(2 * a1 + 4 * a2);
  v7 = 4 * a4;
  v8 = vpaddq_s32(vpaddq_s32(vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * *a3 + v7)), v5, *(2 * *a3))), vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[1] + v7)), v5, *(2 * a3[1])))), vpaddq_s32(vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[2] + v7)), v5, *(2 * a3[2]))), vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[3] + v7)), v5, *(2 * a3[3])))));
  result = vaddq_s32(v8, v8);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad4x8_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = (2 * a1 + v4);
  v6 = 2 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdl_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vabal_u16(vabdl_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabal_u16(vabal_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabal_u16(vabal_u16(vabdl_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6))));
}

uint64_t vpx_highbd_sad_skip_4x8_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = 4 * a4;
  return (2 * vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))));
}

uint64_t vpx_highbd_sad4x8_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  v9 = vabdl_u16(*v6, vrhadd_u16(*v8, *(2 * a5 + 8)));
  v10 = (v6 + v5);
  v11 = (v8 + v7);
  v12 = *v10;
  v13 = vrhadd_u16(*v11, *(2 * a5 + 0x10));
  v14 = (v10 + v5);
  v15 = (v11 + v7);
  v16 = *v14;
  v17 = vrhadd_u16(*v15, *(2 * a5 + 0x18));
  v18 = (v14 + v5);
  v19 = (v15 + v7);
  v20 = *v18;
  v21 = (v18 + v5);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vabal_u16(vabdl_u16(v12, v13), *v21, vrhadd_u16(*(v19 + v7), *(2 * a5 + 0x28))), vabal_u16(vabal_u16(v9, v16, v17), *(v21 + v5), vrhadd_u16(*(v19 + v7 + v7), *(2 * a5 + 0x30)))), vabal_u16(vabal_u16(vabdl_u16(*(2 * a1), vrhadd_u16(*(2 * a3), *(2 * a5))), v20, vrhadd_u16(*v19, *(2 * a5 + 0x20))), *(v21 + v5 + v5), vrhadd_u16(*(v19 + v7 + v7 + v7), *(2 * a5 + 0x38)))));
}

uint64_t vpx_highbd_sad4x4_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = 2 * a4;
  return vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5)));
}

uint64_t vpx_highbd_sad_skip_4x4_bits8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4.i64[0] = *(2 * a1 + 4 * a2);
  v5.i64[0] = *(2 * a3 + 4 * a4);
  v5.i64[1] = *(2 * a3);
  v4.i64[1] = *(2 * a1);
  return 2 * vaddlvq_u16(vabdq_u16(v4, v5));
}

uint64_t vpx_highbd_sad4x4_avg_bits8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  return vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*v6, vrhadd_u16(*v8, *(2 * a5 + 8))), *(2 * a1), vrhadd_u16(*(2 * a3), *(2 * a5))), *(v6 + v5), vrhadd_u16(*(v8 + v7), *(2 * a5 + 0x10))), *(v6 + v5 + v5), vrhadd_u16(*(v8 + v7 + v7), *(2 * a5 + 0x18))));
}

int32x4_t vpx_highbd_sad_skip_4x4x4d_bits8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = *(2 * a1);
  v6 = *(2 * a1 + 4 * a2);
  v7 = 4 * a4;
  v8 = vpaddq_s32(vpaddq_s32(vabal_u16(vabdl_u16(v6, *(2 * *a3 + v7)), v5, *(2 * *a3)), vabal_u16(vabdl_u16(v6, *(2 * a3[1] + v7)), v5, *(2 * a3[1]))), vpaddq_s32(vabal_u16(vabdl_u16(v6, *(2 * a3[2] + v7)), v5, *(2 * a3[2])), vabal_u16(vabdl_u16(v6, *(2 * a3[3] + v7)), v5, *(2 * a3[3]))));
  result = vaddq_s32(v8, v8);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad32x16_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint64_t vpx_highbd_sad32x16_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12))) >> 2;
}

int32x4_t vpx_highbd_sad32x16x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad32x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_32x16x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_32x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad16x32_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint64_t vpx_highbd_sad16x32_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint32x4_t vpx_highbd_sad16x32x4d_bits10(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
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
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18))), 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_16x32x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_16x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad64x32_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint64_t vpx_highbd_sad_skip_64x32_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v7 = vpadalq_u16(vpadalq_u16(v7, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 1) & 0x3FFFFFFF;
}

int32x4_t vpx_highbd_sad64x32x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad64x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_64x32x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_64x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad32x64_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint64_t vpx_highbd_sad_skip_32x64_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 1) & 0x3FFFFFFF;
}

uint64_t vpx_highbd_sad32x64_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 4096);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12))) >> 2;
}

int32x4_t vpx_highbd_sad32x64x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad32x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_32x64x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_32x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad32x32_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint64_t vpx_highbd_sad_skip_32x32_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 1) & 0x3FFFFFFF;
}

uint64_t vpx_highbd_sad32x32_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12))) >> 2;
}

int32x4_t vpx_highbd_sad32x32x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad32x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_32x32x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_32x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad64x64_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint64_t vpx_highbd_sad_skip_64x64_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v7 = vpadalq_u16(vpadalq_u16(v7, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 1) & 0x3FFFFFFF;
}

int32x4_t vpx_highbd_sad64x64x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad64x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_64x64x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_64x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t vpx_highbd_sad16x16x4d_bits10(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
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
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18))), 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_16x16x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_16x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad_skip_16x8_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = (2 * a1 + v4);
  v6 = 4 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = vabdq_u16(v5[1], v7[1]);
  v10 = (v5 + v4);
  v11 = (v7 + v6);
  return (vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10))), vabdq_u16(*(2 * a1), *(2 * a3))), v8), v9), vabdq_u16(*v10, *v11)), vabdq_u16(v10[1], v11[1])), vabdq_u16(*(v10 + v4), *(v11 + v6))), vabdq_u16(*(&v10[1] + v4), *(&v11[1] + v6)))) >> 1) & 0x3FFFFFFF;
}

int32x4_t vpx_highbd_sad16x8x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad16x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_16x8x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_16x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad_skip_8x16_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = (2 * a1 + v4);
  v6 = 4 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return (vaddlvq_u16(vaddq_s16(vaddq_s16(vabaq_u16(vabdq_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabaq_u16(vabaq_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6)))) >> 1) & 0x3FFFFFFF;
}

uint32x4_t vpx_highbd_sad8x16x4d_bits10(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
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
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11))), 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_8x16x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_8x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad8x8_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = (2 * a1 + v4);
  v6 = 2 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabaq_u16(vabdq_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabaq_u16(vabaq_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6)))) >> 2;
}

uint64_t vpx_highbd_sad_skip_8x8_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = 4 * a4;
  return (vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 1) & 0x3FFFFFFF;
}

uint64_t vpx_highbd_sad8x8_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  v9 = vpadalq_u16(vpaddlq_u16(vabdq_u16(*v6, vrhaddq_u16(*v8, *(2 * a5 + 0x10)))), vabdq_u16(*(2 * a1), vrhaddq_u16(*(2 * a3), *(2 * a5))));
  v10 = (v6 + v5);
  v11 = (v8 + v7);
  v12 = vpadalq_u16(v9, vabdq_u16(*v10, vrhaddq_u16(*v11, *(2 * a5 + 0x20))));
  v13 = (v10 + v5);
  v14 = (v11 + v7);
  v15 = vpadalq_u16(v12, vabdq_u16(*v13, vrhaddq_u16(*v14, *(2 * a5 + 0x30))));
  v16 = (v13 + v5);
  v17 = (v14 + v7);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v15, vabdq_u16(*v16, vrhaddq_u16(*v17, *(2 * a5 + 0x40)))), vabdq_u16(*(v16 + v5), vrhaddq_u16(*(v17 + v7), *(2 * a5 + 0x50)))), vabdq_u16(*(v16 + v5 + v5), vrhaddq_u16(*(v17 + v7 + v7), *(2 * a5 + 0x60)))), vabdq_u16(*(v16 + v5 + v5 + v5), vrhaddq_u16(*(v17 + v7 + v7 + v7), *(2 * a5 + 0x70))))) >> 2;
}

int32x4_t vpx_highbd_sad8x8x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad8x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_8x8x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_8x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad8x4_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = 2 * a4;
  return vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 2;
}

uint64_t vpx_highbd_sad8x4_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vabdq_u16(*v6, vrhaddq_u16(*v8, *(2 * a5 + 0x10)))), vabdq_u16(*(2 * a1), vrhaddq_u16(*(2 * a3), *(2 * a5)))), vabdq_u16(*(v6 + v5), vrhaddq_u16(*(v8 + v7), *(2 * a5 + 0x20)))), vabdq_u16(*(v6 + v5 + v5), vrhaddq_u16(*(v8 + v7 + v7), *(2 * a5 + 0x30))))) >> 2;
}

uint32x4_t vpx_highbd_sad8x4x4d_bits10(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  v5 = (2 * *a3);
  v6 = (2 * a3[1]);
  v7 = (2 * a3[2]);
  v8 = (2 * a3[3]);
  v9 = *(2 * a1);
  v10 = *(2 * a1 + 2 * a2);
  v11 = 2 * a4;
  v12 = vabaq_u16(vabdq_u16(v10, *(v5 + v11)), v9, *v5);
  v13 = vabaq_u16(vabdq_u16(v10, *(v6 + v11)), v9, *v6);
  v14 = vabaq_u16(vabdq_u16(v10, *(v7 + v11)), v9, *v7);
  v15 = vabaq_u16(vabdq_u16(v10, *(v8 + v11)), v9, *v8);
  v16 = *(2 * a1 + 4 * a2);
  v17 = 4 * a4;
  v18 = *(2 * a1 + 6 * a2);
  v19 = 6 * a4;
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vpaddlq_u16(vabaq_u16(vabaq_u16(v12, v16, *(v5 + v17)), v18, *(v5 + v19))), vpaddlq_u16(vabaq_u16(vabaq_u16(v13, v16, *(v6 + v17)), v18, *(v6 + v19)))), vpaddq_s32(vpaddlq_u16(vabaq_u16(vabaq_u16(v14, v16, *(v7 + v17)), v18, *(v7 + v19))), vpaddlq_u16(vabaq_u16(vabaq_u16(v15, v16, *(v8 + v17)), v18, *(v8 + v19))))), 2uLL);
  *a5 = result;
  return result;
}

__n128 vpx_highbd_sad_skip_8x4x4d_bits10(uint64_t a1, int a2, void *a3, int a4, __n128 *a5)
{
  v5 = *(2 * a1);
  v6 = *(2 * a1 + 4 * a2);
  v7 = 4 * a4;
  result = (*&vshrq_n_u32(vpaddq_s32(vpaddq_s32(vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * *a3 + v7)), v5, *(2 * *a3))), vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[1] + v7)), v5, *(2 * a3[1])))), vpaddq_s32(vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[2] + v7)), v5, *(2 * a3[2]))), vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[3] + v7)), v5, *(2 * a3[3]))))), 1uLL) & __PAIR128__(0xBFFFFFFFBFFFFFFFLL, 0xBFFFFFFFBFFFFFFFLL));
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad4x8_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = (2 * a1 + v4);
  v6 = 2 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdl_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vabal_u16(vabdl_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabal_u16(vabal_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabal_u16(vabal_u16(vabdl_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6)))) >> 2;
}

uint64_t vpx_highbd_sad_skip_4x8_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = 4 * a4;
  return (vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 1) & 0x3FFFFFFF;
}

uint64_t vpx_highbd_sad4x8_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  v9 = vabdl_u16(*v6, vrhadd_u16(*v8, *(2 * a5 + 8)));
  v10 = (v6 + v5);
  v11 = (v8 + v7);
  v12 = *v10;
  v13 = vrhadd_u16(*v11, *(2 * a5 + 0x10));
  v14 = (v10 + v5);
  v15 = (v11 + v7);
  v16 = *v14;
  v17 = vrhadd_u16(*v15, *(2 * a5 + 0x18));
  v18 = (v14 + v5);
  v19 = (v15 + v7);
  v20 = *v18;
  v21 = (v18 + v5);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vabal_u16(vabdl_u16(v12, v13), *v21, vrhadd_u16(*(v19 + v7), *(2 * a5 + 0x28))), vabal_u16(vabal_u16(v9, v16, v17), *(v21 + v5), vrhadd_u16(*(v19 + v7 + v7), *(2 * a5 + 0x30)))), vabal_u16(vabal_u16(vabdl_u16(*(2 * a1), vrhadd_u16(*(2 * a3), *(2 * a5))), v20, vrhadd_u16(*v19, *(2 * a5 + 0x20))), *(v21 + v5 + v5), vrhadd_u16(*(v19 + v7 + v7 + v7), *(2 * a5 + 0x38))))) >> 2;
}

int32x4_t vpx_highbd_sad4x8x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad4x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_4x8x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_4x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad4x4_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = 2 * a4;
  return vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 2;
}

uint64_t vpx_highbd_sad_skip_4x4_bits10(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4.i64[0] = *(2 * a1 + 4 * a2);
  v5.i64[0] = *(2 * a3 + 4 * a4);
  v5.i64[1] = *(2 * a3);
  v4.i64[1] = *(2 * a1);
  return (vaddlvq_u16(vabdq_u16(v4, v5)) >> 1) & 0x3FFFFFFF;
}

uint64_t vpx_highbd_sad4x4_avg_bits10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  return vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*v6, vrhadd_u16(*v8, *(2 * a5 + 8))), *(2 * a1), vrhadd_u16(*(2 * a3), *(2 * a5))), *(v6 + v5), vrhadd_u16(*(v8 + v7), *(2 * a5 + 0x10))), *(v6 + v5 + v5), vrhadd_u16(*(v8 + v7 + v7), *(2 * a5 + 0x18)))) >> 2;
}

int32x4_t vpx_highbd_sad4x4x4d_bits10(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad4x4x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

__n128 vpx_highbd_sad_skip_4x4x4d_bits10(uint64_t a1, int a2, void *a3, int a4, __n128 *a5)
{
  v5 = *(2 * a1);
  v6 = *(2 * a1 + 4 * a2);
  v7 = 4 * a4;
  result = (*&vshrq_n_u32(vpaddq_s32(vpaddq_s32(vabal_u16(vabdl_u16(v6, *(2 * *a3 + v7)), v5, *(2 * *a3)), vabal_u16(vabdl_u16(v6, *(2 * a3[1] + v7)), v5, *(2 * a3[1]))), vpaddq_s32(vabal_u16(vabdl_u16(v6, *(2 * a3[2] + v7)), v5, *(2 * a3[2])), vabal_u16(vabdl_u16(v6, *(2 * a3[3] + v7)), v5, *(2 * a3[3])))), 1uLL) & __PAIR128__(0xBFFFFFFFBFFFFFFFLL, 0xBFFFFFFFBFFFFFFFLL));
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad32x16_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t vpx_highbd_sad32x16_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12))) >> 4;
}

int32x4_t vpx_highbd_sad32x16x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad32x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_32x16x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_32x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad16x32_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t vpx_highbd_sad16x32_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint32x4_t vpx_highbd_sad16x32x4d_bits12(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
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
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18))), 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_16x32x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_16x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad64x32_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t vpx_highbd_sad_skip_64x32_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v7 = vpadalq_u16(vpadalq_u16(v7, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 3) & 0xFFFFFFF;
}

int32x4_t vpx_highbd_sad64x32x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad64x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_64x32x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_64x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad32x64_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t vpx_highbd_sad_skip_32x64_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 3) & 0xFFFFFFF;
}

uint64_t vpx_highbd_sad32x64_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 4096);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12))) >> 4;
}

int32x4_t vpx_highbd_sad32x64x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad32x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_32x64x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_32x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad32x32_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t vpx_highbd_sad_skip_32x32_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 3) & 0xFFFFFFF;
}

uint64_t vpx_highbd_sad32x32_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12))) >> 4;
}

int32x4_t vpx_highbd_sad32x32x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad32x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_32x32x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_32x32x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad64x64_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v10 = vpadalq_u16(vpadalq_u16(v10, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t vpx_highbd_sad_skip_64x64_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 64);
  v5 = (2 * a3 + 64);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(vpadalq_u16(v6, vabdq_u16(v4[-4], v5[-4])), vabdq_u16(*v4, *v5));
    v7 = vpadalq_u16(vpadalq_u16(v7, vabdq_u16(v4[-3], v5[-3])), vabdq_u16(v4[1], v5[1]));
    v8 = vpadalq_u16(vpadalq_u16(v8, vabdq_u16(v4[-2], v5[-2])), vabdq_u16(v4[2], v5[2]));
    v9 = vpadalq_u16(vpadalq_u16(v9, vabdq_u16(v4[-1], v5[-1])), vabdq_u16(v4[3], v5[3]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))) >> 3) & 0xFFFFFFF;
}

int32x4_t vpx_highbd_sad64x64x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad64x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_64x64x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_64x64x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t vpx_highbd_sad16x16x4d_bits12(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
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
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vaddq_s32(v14, v15), vaddq_s32(v13, v16)), vpaddq_s32(vaddq_s32(v9, v17), vaddq_s32(v8, v18))), 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_16x16x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_16x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad_skip_16x8_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = (2 * a1 + v4);
  v6 = 4 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = vabdq_u16(v5[1], v7[1]);
  v10 = (v5 + v4);
  v11 = (v7 + v6);
  return (vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10))), vabdq_u16(*(2 * a1), *(2 * a3))), v8), v9), vabdq_u16(*v10, *v11)), vabdq_u16(v10[1], v11[1])), vabdq_u16(*(v10 + v4), *(v11 + v6))), vabdq_u16(*(&v10[1] + v4), *(&v11[1] + v6)))) >> 3) & 0xFFFFFFF;
}

int32x4_t vpx_highbd_sad16x8x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad16x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_16x8x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_16x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad_skip_8x16_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = (2 * a1 + v4);
  v6 = 4 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return (vaddlvq_u16(vaddq_s16(vaddq_s16(vabaq_u16(vabdq_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabaq_u16(vabaq_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6)))) >> 3) & 0xFFFFFFF;
}

uint32x4_t vpx_highbd_sad8x16x4d_bits12(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
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
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vpaddlq_u16(v7), vpaddlq_u16(v9)), vpaddq_s32(vpaddlq_u16(v10), vpaddlq_u16(v11))), 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_8x16x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_8x16x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad8x8_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = (2 * a1 + v4);
  v6 = 2 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdq_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabaq_u16(vabdq_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabaq_u16(vabaq_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6)))) >> 4;
}

uint64_t vpx_highbd_sad_skip_8x8_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = 4 * a4;
  return (vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 3) & 0xFFFFFFF;
}

uint64_t vpx_highbd_sad8x8_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  v9 = vpadalq_u16(vpaddlq_u16(vabdq_u16(*v6, vrhaddq_u16(*v8, *(2 * a5 + 0x10)))), vabdq_u16(*(2 * a1), vrhaddq_u16(*(2 * a3), *(2 * a5))));
  v10 = (v6 + v5);
  v11 = (v8 + v7);
  v12 = vpadalq_u16(v9, vabdq_u16(*v10, vrhaddq_u16(*v11, *(2 * a5 + 0x20))));
  v13 = (v10 + v5);
  v14 = (v11 + v7);
  v15 = vpadalq_u16(v12, vabdq_u16(*v13, vrhaddq_u16(*v14, *(2 * a5 + 0x30))));
  v16 = (v13 + v5);
  v17 = (v14 + v7);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v15, vabdq_u16(*v16, vrhaddq_u16(*v17, *(2 * a5 + 0x40)))), vabdq_u16(*(v16 + v5), vrhaddq_u16(*(v17 + v7), *(2 * a5 + 0x50)))), vabdq_u16(*(v16 + v5 + v5), vrhaddq_u16(*(v17 + v7 + v7), *(2 * a5 + 0x60)))), vabdq_u16(*(v16 + v5 + v5 + v5), vrhaddq_u16(*(v17 + v7 + v7 + v7), *(2 * a5 + 0x70))))) >> 4;
}

int32x4_t vpx_highbd_sad8x8x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad8x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_8x8x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_8x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad8x4_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = 2 * a4;
  return vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 4;
}

uint64_t vpx_highbd_sad8x4_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vabdq_u16(*v6, vrhaddq_u16(*v8, *(2 * a5 + 0x10)))), vabdq_u16(*(2 * a1), vrhaddq_u16(*(2 * a3), *(2 * a5)))), vabdq_u16(*(v6 + v5), vrhaddq_u16(*(v8 + v7), *(2 * a5 + 0x20)))), vabdq_u16(*(v6 + v5 + v5), vrhaddq_u16(*(v8 + v7 + v7), *(2 * a5 + 0x30))))) >> 4;
}

uint32x4_t vpx_highbd_sad8x4x4d_bits12(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  v5 = (2 * *a3);
  v6 = (2 * a3[1]);
  v7 = (2 * a3[2]);
  v8 = (2 * a3[3]);
  v9 = *(2 * a1);
  v10 = *(2 * a1 + 2 * a2);
  v11 = 2 * a4;
  v12 = vabaq_u16(vabdq_u16(v10, *(v5 + v11)), v9, *v5);
  v13 = vabaq_u16(vabdq_u16(v10, *(v6 + v11)), v9, *v6);
  v14 = vabaq_u16(vabdq_u16(v10, *(v7 + v11)), v9, *v7);
  v15 = vabaq_u16(vabdq_u16(v10, *(v8 + v11)), v9, *v8);
  v16 = *(2 * a1 + 4 * a2);
  v17 = 4 * a4;
  v18 = *(2 * a1 + 6 * a2);
  v19 = 6 * a4;
  result = vshrq_n_u32(vpaddq_s32(vpaddq_s32(vpaddlq_u16(vabaq_u16(vabaq_u16(v12, v16, *(v5 + v17)), v18, *(v5 + v19))), vpaddlq_u16(vabaq_u16(vabaq_u16(v13, v16, *(v6 + v17)), v18, *(v6 + v19)))), vpaddq_s32(vpaddlq_u16(vabaq_u16(vabaq_u16(v14, v16, *(v7 + v17)), v18, *(v7 + v19))), vpaddlq_u16(vabaq_u16(vabaq_u16(v15, v16, *(v8 + v17)), v18, *(v8 + v19))))), 4uLL);
  *a5 = result;
  return result;
}

__n128 vpx_highbd_sad_skip_8x4x4d_bits12(uint64_t a1, int a2, void *a3, int a4, __n128 *a5)
{
  v5 = *(2 * a1);
  v6 = *(2 * a1 + 4 * a2);
  v7 = 4 * a4;
  result = (*&vshrq_n_u32(vpaddq_s32(vpaddq_s32(vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * *a3 + v7)), v5, *(2 * *a3))), vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[1] + v7)), v5, *(2 * a3[1])))), vpaddq_s32(vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[2] + v7)), v5, *(2 * a3[2]))), vpaddlq_u16(vabaq_u16(vabdq_u16(v6, *(2 * a3[3] + v7)), v5, *(2 * a3[3]))))), 3uLL) & __PAIR128__(0xEFFFFFFFEFFFFFFFLL, 0xEFFFFFFFEFFFFFFFLL));
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad4x8_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = (2 * a1 + v4);
  v6 = 2 * a4;
  v7 = (2 * a3 + v6);
  v8 = vabdl_u16(*v5, *v7);
  v9 = (v5 + v4);
  v10 = (v7 + v6);
  v11 = *v9;
  v12 = *v10;
  v13 = (v9 + v4);
  v14 = (v10 + v6);
  v15 = *v13;
  v16 = *v14;
  v17 = (v13 + v4);
  v18 = (v14 + v6);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vabal_u16(vabdl_u16(v11, v12), *(v17 + v4), *(v18 + v6)), vabal_u16(vabal_u16(v8, v15, v16), *(v17 + v4 + v4), *(v18 + v6 + v6))), vabal_u16(vabal_u16(vabdl_u16(*(2 * a1), *(2 * a3)), *v17, *v18), *(v17 + v4 + v4 + v4), *(v18 + v6 + v6 + v6)))) >> 4;
}

uint64_t vpx_highbd_sad_skip_4x8_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 4 * a2;
  v5 = 4 * a4;
  return (vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 3) & 0xFFFFFFF;
}

uint64_t vpx_highbd_sad4x8_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  v9 = vabdl_u16(*v6, vrhadd_u16(*v8, *(2 * a5 + 8)));
  v10 = (v6 + v5);
  v11 = (v8 + v7);
  v12 = *v10;
  v13 = vrhadd_u16(*v11, *(2 * a5 + 0x10));
  v14 = (v10 + v5);
  v15 = (v11 + v7);
  v16 = *v14;
  v17 = vrhadd_u16(*v15, *(2 * a5 + 0x18));
  v18 = (v14 + v5);
  v19 = (v15 + v7);
  v20 = *v18;
  v21 = (v18 + v5);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vabal_u16(vabdl_u16(v12, v13), *v21, vrhadd_u16(*(v19 + v7), *(2 * a5 + 0x28))), vabal_u16(vabal_u16(v9, v16, v17), *(v21 + v5), vrhadd_u16(*(v19 + v7 + v7), *(2 * a5 + 0x30)))), vabal_u16(vabal_u16(vabdl_u16(*(2 * a1), vrhadd_u16(*(2 * a3), *(2 * a5))), v20, vrhadd_u16(*v19, *(2 * a5 + 0x20))), *(v21 + v5 + v5), vrhadd_u16(*(v19 + v7 + v7 + v7), *(2 * a5 + 0x38))))) >> 4;
}

int32x4_t vpx_highbd_sad4x8x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad4x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t vpx_highbd_sad_skip_4x8x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad_skip_4x8x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint64_t vpx_highbd_sad4x4_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a2;
  v5 = 2 * a4;
  return vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*(2 * a1 + v4), *(2 * a3 + v5)), *(2 * a1), *(2 * a3)), *(2 * a1 + v4 + v4), *(2 * a3 + v5 + v5)), *(2 * a1 + v4 + v4 + v4), *(2 * a3 + v5 + v5 + v5))) >> 4;
}

uint64_t vpx_highbd_sad_skip_4x4_bits12(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4.i64[0] = *(2 * a1 + 4 * a2);
  v5.i64[0] = *(2 * a3 + 4 * a4);
  v5.i64[1] = *(2 * a3);
  v4.i64[1] = *(2 * a1);
  return (vaddlvq_u16(vabdq_u16(v4, v5)) >> 3) & 0xFFFFFFF;
}

uint64_t vpx_highbd_sad4x4_avg_bits12(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a2;
  v6 = (2 * a1 + v5);
  v7 = 2 * a4;
  v8 = (2 * a3 + v7);
  return vaddvq_s32(vabal_u16(vabal_u16(vabal_u16(vabdl_u16(*v6, vrhadd_u16(*v8, *(2 * a5 + 8))), *(2 * a1), vrhadd_u16(*(2 * a3), *(2 * a5))), *(v6 + v5), vrhadd_u16(*(v8 + v7), *(2 * a5 + 0x10))), *(v6 + v5 + v5), vrhadd_u16(*(v8 + v7 + v7), *(2 * a5 + 0x18)))) >> 4;
}

int32x4_t vpx_highbd_sad4x4x4d_bits12(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  vpx_highbd_sad4x4x4d_neon(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

__n128 vpx_highbd_sad_skip_4x4x4d_bits12(uint64_t a1, int a2, void *a3, int a4, __n128 *a5)
{
  v5 = *(2 * a1);
  v6 = *(2 * a1 + 4 * a2);
  v7 = 4 * a4;
  result = (*&vshrq_n_u32(vpaddq_s32(vpaddq_s32(vabal_u16(vabdl_u16(v6, *(2 * *a3 + v7)), v5, *(2 * *a3)), vabal_u16(vabdl_u16(v6, *(2 * a3[1] + v7)), v5, *(2 * a3[1]))), vpaddq_s32(vabal_u16(vabdl_u16(v6, *(2 * a3[2] + v7)), v5, *(2 * a3[2])), vabal_u16(vabdl_u16(v6, *(2 * a3[3] + v7)), v5, *(2 * a3[3])))), 3uLL) & __PAIR128__(0xEFFFFFFFEFFFFFFFLL, 0xEFFFFFFFEFFFFFFFLL));
  *a5 = result;
  return result;
}

uint64_t alloc_util_frame_buffers(int *a1)
{
  v2 = a1 + 188635;
  v3 = a1 + 47484;
  v4 = a1 + 42997;
  if (vpx_realloc_frame_buffer((a1 + 48658), a1[42997], a1[42998], a1[43003], a1[43004], a1[43005], 160, a1[47484], 0, 0, 0))
  {
    vpx_internal_error((a1 + 42924), 2, "Failed to allocate last frame buffer");
  }

  if (vpx_realloc_frame_buffer((a1 + 47616), *v4, v4[1], v4[6], v4[7], v4[8], 160, *v3, 0, 0, 0))
  {
    vpx_internal_error((a1 + 42924), 2, "Failed to allocate scaled source buffer");
  }

  if (*v2)
  {
    if (!v3[35] && !a1[189733] && v2[3] >= 3)
    {
      a1[189733] = 1;
      if (vpx_realloc_frame_buffer((a1 + 189692), *v4 >> 1, v4[1] >> 1, v4[6], v4[7], v4[8], 160, *v3, 0, 0, 0))
      {
        vpx_internal_error((a1 + 42924), 2, "Failed to allocate scaled_frame for svc ");
      }
    }
  }

  result = vpx_realloc_frame_buffer((a1 + 47658), *v4, v4[1], v4[6], v4[7], v4[8], 160, *v3, 0, 0, 0);
  if (result)
  {

    return vpx_internal_error((a1 + 42924), 2, "Failed to allocate scaled last source buffer");
  }

  return result;
}

void encode_frame_to_data_rate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v3;
  v969 = *MEMORY[0x277D85DE8];
  if (vp9_svc_check_skip_enhancement_layer(v3))
  {
    return;
  }

  v836 = v9;
  v16 = (v12 + 194488);
  v17 = (v12 + 176400);
  v18 = v12 + 171980;
  if (*(v12 + 194584))
  {
    *v17 = *(v12 + 194588);
    *(v12 + 194584) = 0;
  }

  v866 = v12 + 740688;
  v19 = (v12 + 189844);
  if (*(v12 + 194568))
  {
    *(v12 + 194556) = *(v12 + 194572);
    *(v12 + 194564) = *(v12 + 194580);
  }

  if (!*(v12 + 172984))
  {
    v21 = *(v12 + 172640);
    v22 = *(v12 + 189944);
    if (v21 == -1)
    {
      v21 = -1;
    }

    else
    {
      v23 = v22 + 224 * v21;
      *(v23 + 52) = *v19 + *(v12 + *(v12 + 742156) + 744176);
      *(v23 + 56) = *(v12 + 189848);
    }

    v57 = v22 + 24;
    v58 = *(v57 + 224 * v21 + 28);
    v59 = v12 + 172048;
    v60 = *(v12 + 194512);
    if (v60 != -1)
    {
      v61 = *(v59 + 4 * v60);
      if (v61 != -1)
      {
        *(v12 + 176408) = v58 < *(v57 + 224 * v61 + 28);
      }
    }

    v62 = *(v12 + 194516);
    if (v62 != -1)
    {
      v63 = *(v59 + 4 * v62);
      if (v63 != -1)
      {
        *(v12 + 176412) = v58 < *(v57 + 224 * v63 + 28);
      }
    }

    v64 = *(v12 + 194520);
    if (v64 != -1)
    {
      v65 = *(v59 + 4 * v64);
      if (v65 != -1)
      {
        *(v12 + 176416) = v58 < *(v57 + 224 * v65 + 28);
      }
    }
  }

  v20 = v12 + 942089;
  v842 = v12 + 736304;
  if (*v19)
  {
    *(v12 + 176441) = 0;
    if (*(v12 + 190076) != 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = *(v12 + 190076);
    *(v12 + 942524) = *(v12 + 190072);
    *(v12 + 176441) = 0;
    if (v24 != 2)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 740032))
  {
    v25 = *(v12 + 172968);
    if (v25)
    {
      if (!*(v12 + 194564))
      {
        v26 = *(v12 + 739200);
        v27 = *(v12 + 739204);
        v28 = *(v12 + 739208);
        if (v27 + v26 + v28)
        {
          v668 = *(v12 + 739216);
          v669 = *(v12 + 739220);
          v670 = *(v12 + 739224);
          v671 = *(v12 + 739232);
          v672 = *(v12 + 739236);
          v673 = *(v12 + 739240);
          v674 = v672 + v671 + v673;
          v675 = v669 + v668 + v670;
          if (v675)
          {
            v676 = 50 * v668;
            if (v26)
            {
              v677 = 0;
            }

            else
            {
              v677 = v676 < v675;
            }

            v678 = v677;
            if (v674)
            {
              if (50 * v671 < v674)
              {
                v679 = v678;
              }

              else
              {
                v679 = 0;
              }

              v680 = 50 * v672;
              if (v27)
              {
                v681 = 0;
              }

              else
              {
                v681 = v680 < v674;
              }

              v682 = v681 && 50 * v669 < v675;
              v683 = v679 | 2;
              if (!v682)
              {
                v683 = v679;
              }

              v684 = 50 * v673;
              if (v28)
              {
                v685 = 0;
              }

              else
              {
                v685 = v684 < v674;
              }

              v686 = v685 && 50 * v670 < v675;
              v25 = v683 | 4;
              if (!v686)
              {
                v25 = v683;
              }

              goto LABEL_18;
            }

            v699 = 50 * v669 < v675 && v27 == 0;
            v693 = v678 | 2;
            if (!v699)
            {
              v693 = v678;
            }

            v694 = 50 * v670 < v675;
          }

          else
          {
            if (!v674)
            {
              v25 = (v26 == 0) | (2 * (v27 == 0)) | (4 * (v28 == 0));
              goto LABEL_18;
            }

            if (v26)
            {
              v688 = 0;
            }

            else
            {
              v688 = 50 * v671 < v674;
            }

            v689 = v688;
            v690 = 50 * v672;
            if (v688)
            {
              v691 = 3;
            }

            else
            {
              v691 = 2;
            }

            if (v690 < v674 && v27 == 0)
            {
              v693 = v691;
            }

            else
            {
              v693 = v689;
            }

            v694 = 50 * v673 < v674;
          }

          v700 = v694 && v28 == 0;
          v25 = v693 | 4;
          if (!v700)
          {
            v25 = v693;
          }

          goto LABEL_18;
        }
      }

      v25 = 0;
    }

LABEL_18:
    *(v12 + 740036) = v25;
  }

LABEL_19:
  v865 = v12 + 74624;
  if (!*(v12 + 172972) || *(v12 + 172988))
  {
    *(v12 + 176472) = 0;
    *(v12 + 176474) = 0;
    *(v12 + 176477) = -1;
    *(v12 + 176480) = -1;
    *(v12 + 176488) = 0u;
    *(v12 + 176504) = 0u;
    *(v12 + 176520) = 0u;
    *(v12 + 176536) = 0u;
    *(v12 + 176552) = 0u;
    *(v12 + 176568) = 0u;
    *(v12 + 176584) = 0;
    v29 = *(v12 + 190312);
    *(v12 + 189920) = v29;
    *(v12 + 738592) = 0;
    if (v29)
    {
      *(v12 + 189924) = 1;
      *(v12 + 172996) = 0;
      *v17 = 0;
    }

    else if (*(v12 + 172988))
    {
      *(v12 + 172996) = 2;
    }
  }

  v837 = v7;
  v838 = v12 + 189844;
  v839 = v12 + 176400;
  v840 = v11;
  v835 = v5;
  v867 = v12 + 171980;
  v846 = (v12 + 194488);
  v841 = v12 + 942089;
  if (*(v12 + 190376) == 1)
  {
    v30 = *(v12 + 173008);
    if (v30 + 1 >= 2)
    {
      LODWORD(v31) = *(v12 + 173016);
      if (v31 + 1 >= 2)
      {
        v32 = 0;
        v33 = *(v12 + 190440);
        v853 = *(v33 + 56);
        v34 = *(v33 + 16);
        v849 = ((v31 + 1) / 2);
        v844 = ((v30 + 1) / 2);
        v35 = 0.0;
        v36 = 0;
        do
        {
          v861 = 0;
          v37 = 0;
          v38 = 0;
          v845 = v32;
          v848 = v36 * v849;
          v847 = 2 * v36;
          v843 = v36 + 1;
          v862 = 2 * (v36 + 1);
          do
          {
            v42 = v37 + 1;
            v43 = 0.0;
            v851 = v37;
            v852 = v38;
            v850 = v37 + 1;
            if (v30 <= v847 || (v44 = 2 * v37, v31 <= v44))
            {
              v39 = 0.0;
            }

            else
            {
              v855 = v38 + 1;
              v45 = 2 * v42;
              v39 = 0.0;
              v46 = v845;
              v859 = v44;
              do
              {
                if (v31 > v44)
                {
                  v47 = v855;
                  v48 = v861;
                  do
                  {
                    v52 = v853 + 8 * v34 * v46 + v48;
                    if ((*(*(v12 + 190440) + 152) & 8) != 0)
                    {
                      v53 = *(v12 + 74736);
                      v54 = *v866;
                      if (v53 == 12)
                      {
                        v55 = &VP9_HIGH_VAR_OFFS_12;
                      }

                      else
                      {
                        v55 = &VP9_HIGH_VAR_OFFS_8;
                      }

                      v248 = v53 == 10;
                      v56 = &VP9_HIGH_VAR_OFFS_10;
                      if (!v248)
                      {
                        v56 = v55;
                      }

                      *__base = 0;
                      v49 = v54(v52, v34, (v56 >> 1), 0, __base);
                    }

                    else
                    {
                      *__base = 0;
                      v49 = (*v866)(v52, v34, &VP9_VAR_OFFS_0, 0, __base);
                    }

                    v43 = v43 + v49;
                    v39 = v39 + 1.0;
                    v31 = *(v12 + 173016);
                    v50 = v47;
                    v677 = v47++ < v31;
                    v48 += 8;
                  }

                  while (v677 && v50 < v45);
                  v30 = *(v12 + 173008);
                  v44 = v859;
                }

                ++v46;
              }

              while (v46 < v30 && v46 < v862);
            }

            v40 = (1.0 - exp(v43 / v39 * 0.015625 * -0.0021489)) * 67.035434 + 17.492222;
            v16 = (v12 + 194488);
            v41 = *(v12 + 194616);
            v41->f64[v851 + v848] = v40;
            v35 = v35 + log(v40);
            v38 = v852 + 2;
            v861 += 16;
            v37 = v850;
          }

          while (v850 != v849);
          v32 = v845 + 2;
          v36 = v843;
        }

        while (v843 != v844);
        v66 = exp(v35 / (v844 * v849));
        v67 = 0;
        v68 = vdupq_lane_s64(*&v66, 0);
        v69 = v41 + 1;
        v70 = 8 * v849;
        v18 = v12 + 171980;
        v20 = v12 + 942089;
        do
        {
          if (v849 >= 4)
          {
            v72 = v849 & 0x3FFFFFFC;
            v73 = v69;
            do
            {
              v13 = vdivq_f64(v73[-1], v68);
              v14 = vdivq_f64(*v73, v68);
              v73[-1] = v13;
              *v73 = v14;
              v73 += 2;
              v72 -= 4;
            }

            while (v72);
            v71 = v849 & 0x3FFFFFFC;
            if (v71 == v849)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v71 = 0;
          }

          v74 = v849 - v71;
          v75 = &v41->f64[v71];
          do
          {
            *v13.i64 = *v75 / v66;
            *v75++ = *v13.i64;
            --v74;
          }

          while (v74);
LABEL_65:
          ++v67;
          v69 = (v69 + v70);
          v41 = (v41 + v70);
        }

        while (v67 != v844);
      }
    }
  }

  v76 = (v12 + 211544);
  v77 = v12 + 189844;
  if (*(v12 + 190148) != 5)
  {
    v79 = *(v18 + 1024);
    v85 = v12 + 176400;
    if (v16[30] >= v79)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v78 = *(v16 + 14);
  if (v78)
  {
    v79 = *(v18 + 1024);
    if (v16[30] >= v79)
    {
      LODWORD(v80) = *(v18 + 1032);
      if (v16[31] >= v80)
      {
        v85 = v12 + 176400;
        goto LABEL_87;
      }
    }

    free(*(v78 - 8));
    v18 = v12 + 171980;
  }

  *(v16 + 14) = 0;
  v81 = *(v18 + 1032);
  if (((v81 * *(v18 + 1024)) & 0x80000000) == 0 && (v82 = 8 * (v81 * *(v18 + 1024)), (v83 = malloc_type_malloc(v82 + 23, 0xD93B561uLL)) != 0) && (v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF0, *(v84 - 8) = v83, v84))
  {
    bzero(((v83 + 23) & 0xFFFFFFFFFFFFFFF0), v82);
    *(v16 + 14) = v84;
  }

  else
  {
    *(v16 + 14) = 0;
    vpx_internal_error(v12 + 171696, 2, "Failed to allocate cpi->mb_wiener_variance", v17);
  }

  v85 = v12 + 176400;
  v18 = v12 + 171980;
  v79 = *(v12 + 173004);
  LODWORD(v80) = *(v12 + 173012);
  v16[30] = v79;
  v16[31] = v80;
LABEL_87:
  v86 = *(v12 + 190440);
  v856 = *(v86 + 56);
  v863 = *(v86 + 16);
  *(v12 + 74640) = v86;
  if ((*(v86 + 152) & 8) != 0)
  {
    v860 = &v937 >> 1;
    v968 = 0u;
    v967 = 0u;
    v966 = 0u;
    v965 = 0u;
    v964 = 0u;
    v963 = 0u;
    v962 = 0u;
    v961 = 0u;
    v960 = 0u;
    v959 = 0u;
    v958 = 0u;
    v957 = 0u;
    v956 = 0u;
    v955 = 0u;
    v954 = 0u;
    v953 = 0u;
    v952 = 0u;
    v951 = 0u;
    v950 = 0u;
    v949 = 0u;
    v948 = 0u;
    v947 = 0u;
    v946 = 0u;
    v945 = 0u;
    v944 = 0u;
    v943 = 0u;
    v942 = 0u;
    v941 = 0u;
    v940 = 0u;
    v939 = 0u;
    v938 = 0u;
    v937 = 0u;
    *(v16 + 13) = 0;
    if (v79 < 1)
    {
      goto LABEL_120;
    }
  }

  else
  {
    v952 = 0u;
    v951 = 0u;
    v950 = 0u;
    v949 = 0u;
    v948 = 0u;
    v947 = 0u;
    v946 = 0u;
    v945 = 0u;
    v944 = 0u;
    v943 = 0u;
    v942 = 0u;
    v941 = 0u;
    v940 = 0u;
    v939 = 0u;
    v860 = &v937;
    v938 = 0u;
    v937 = 0u;
    *(v16 + 13) = 0;
    if (v79 < 1)
    {
LABEL_120:
      *(v16 + 13) = 1;
      if (v16[30] >= v79)
      {
        goto LABEL_128;
      }

      goto LABEL_129;
    }
  }

  if (v80 < 1)
  {
    goto LABEL_120;
  }

  v87 = (v12 + 211544);
  v834 = v12;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  do
  {
    if (v80 >= 1)
    {
      v91 = 0;
      do
      {
        v171 = (v856 + 16 * v863 * v89 + 16 * v91);
        if ((*(*(v865 + 16) + 152) & 8) != 0)
        {
          v172 = vsubq_s16(*(2 * v171 + 0x10), *(2 * v860 + 0x10));
          v936[0] = vsubq_s16(*(2 * v171), *(2 * v860));
          v936[1] = v172;
          v173 = (2 * v171 + 2 * v863);
          v174 = vsubq_s16(v173[1], *(2 * v860 + 0x30));
          v936[2] = vsubq_s16(*v173, *(2 * v860 + 0x20));
          v936[3] = v174;
          v175 = (v173 + 2 * v863);
          v176 = vsubq_s16(v175[1], *(2 * v860 + 0x50));
          v936[4] = vsubq_s16(*v175, *(2 * v860 + 0x40));
          v936[5] = v176;
          v177 = (v175 + 2 * v863);
          v178 = vsubq_s16(v177[1], *(2 * v860 + 0x70));
          v936[6] = vsubq_s16(*v177, *(2 * v860 + 0x60));
          v936[7] = v178;
          v179 = (v177 + 2 * v863);
          v180 = vsubq_s16(v179[1], *(2 * v860 + 0x90));
          v936[8] = vsubq_s16(*v179, *(2 * v860 + 0x80));
          v936[9] = v180;
          v181 = (v179 + 2 * v863);
          v182 = vsubq_s16(v181[1], *(2 * v860 + 0xB0));
          v936[10] = vsubq_s16(*v181, *(2 * v860 + 0xA0));
          v936[11] = v182;
          v183 = (v181 + 2 * v863);
          v184 = vsubq_s16(v183[1], *(2 * v860 + 0xD0));
          v936[12] = vsubq_s16(*v183, *(2 * v860 + 0xC0));
          v936[13] = v184;
          v185 = (v183 + 2 * v863);
          v186 = vsubq_s16(v185[1], *(2 * v860 + 0xF0));
          v936[14] = vsubq_s16(*v185, *(2 * v860 + 0xE0));
          v936[15] = v186;
          v187 = (v185 + 2 * v863);
          v188 = vsubq_s16(v187[1], *(2 * v860 + 0x110));
          v936[16] = vsubq_s16(*v187, *(2 * v860 + 0x100));
          v936[17] = v188;
          v189 = (v187 + 2 * v863);
          v190 = vsubq_s16(v189[1], *(2 * v860 + 0x130));
          v936[18] = vsubq_s16(*v189, *(2 * v860 + 0x120));
          v936[19] = v190;
          v191 = (v189 + 2 * v863);
          v192 = vsubq_s16(v191[1], *(2 * v860 + 0x150));
          v936[20] = vsubq_s16(*v191, *(2 * v860 + 0x140));
          v936[21] = v192;
          v193 = (v191 + 2 * v863);
          v194 = vsubq_s16(v193[1], *(2 * v860 + 0x170));
          v936[22] = vsubq_s16(*v193, *(2 * v860 + 0x160));
          v936[23] = v194;
          v195 = (v193 + 2 * v863);
          v196 = vsubq_s16(v195[1], *(2 * v860 + 0x190));
          v936[24] = vsubq_s16(*v195, *(2 * v860 + 0x180));
          v936[25] = v196;
          v197 = (v195 + 2 * v863);
          v198 = vsubq_s16(v197[1], *(2 * v860 + 0x1B0));
          v936[26] = vsubq_s16(*v197, *(2 * v860 + 0x1A0));
          v936[27] = v198;
          v199 = (v197 + 2 * v863);
          v200 = vsubq_s16(v199[1], *(2 * v860 + 0x1D0));
          v936[28] = vsubq_s16(*v199, *(2 * v860 + 0x1C0));
          v936[29] = v200;
          v201 = (v199 + 2 * v863);
          v202 = vsubq_s16(v201[1], *(2 * v860 + 0x1F0));
          v936[30] = vsubq_s16(*v201, *(2 * v860 + 0x1E0));
          v936[31] = v202;
          vpx_highbd_hadamard_16x16_neon(v936, 16, __base);
        }

        else
        {
          vpx_subtract_block_neon(16, 16, v936, 16, v171, v863, v860, 16);
          vpx_hadamard_16x16_neon(v936, 16, __base);
        }

        *__base = 0;
        *&__base[4] = vabsq_s32(*&__base[4]);
        *&__base[20] = vabsq_s32(*&__base[20]);
        v869 = vabsq_s32(v869);
        v870 = vabsq_s32(v870);
        v871 = vabsq_s32(v871);
        v872 = vabsq_s32(v872);
        v873 = vabsq_s32(v873);
        v874 = vabsq_s32(v874);
        v875 = vabsq_s32(v875);
        v876 = vabsq_s32(v876);
        v877 = vabsq_s32(v877);
        v878 = vabsq_s32(v878);
        v879 = vabsq_s32(v879);
        v880 = vabsq_s32(v880);
        v881 = vabsq_s32(v881);
        v882 = vabsq_s32(v882);
        v883 = vabsq_s32(v883);
        v884 = vabsq_s32(v884);
        v885 = vabsq_s32(v885);
        v886 = vabsq_s32(v886);
        v887 = vabsq_s32(v887);
        v888 = vabsq_s32(v888);
        v889 = vabsq_s32(v889);
        v890 = vabsq_s32(v890);
        v891 = vabsq_s32(v891);
        v892 = vabsq_s32(v892);
        v893 = vabsq_s32(v893);
        v894 = vabsq_s32(v894);
        v895 = vabsq_s32(v895);
        v896 = vabsq_s32(v896);
        v897 = vabsq_s32(v897);
        v898 = vabsq_s32(v898);
        v899 = vabsq_s32(v899);
        v900 = vabsq_s32(v900);
        v901 = vabsq_s32(v901);
        v902 = vabsq_s32(v902);
        v903 = vabsq_s32(v903);
        v904 = vabsq_s32(v904);
        v905 = vabsq_s32(v905);
        v906 = vabsq_s32(v906);
        v907 = vabsq_s32(v907);
        v908 = vabsq_s32(v908);
        v909 = vabsq_s32(v909);
        v910 = vabsq_s32(v910);
        v911 = vabsq_s32(v911);
        v912 = vabsq_s32(v912);
        v913 = vabsq_s32(v913);
        v914 = vabsq_s32(v914);
        v915 = vabsq_s32(v915);
        v916 = vabsq_s32(v916);
        v917 = vabsq_s32(v917);
        v918 = vabsq_s32(v918);
        v919 = vabsq_s32(v919);
        v920 = vabsq_s32(v920);
        v921 = vabsq_s32(v921);
        v922 = vabsq_s32(v922);
        v923 = vabsq_s32(v923);
        v924 = vabsq_s32(v924);
        v925 = vabsq_s32(v925);
        v926 = vabsq_s32(v926);
        v927 = vabsq_s32(v927);
        v928 = vabsq_s32(v928);
        v203 = v929;
        if (v929 < 0)
        {
          v203 = -v929;
        }

        v929 = v203;
        v204 = v930;
        if (v930 < 0)
        {
          v204 = -v930;
        }

        v930 = v204;
        v205 = v931;
        if (v931 < 0)
        {
          v205 = -v931;
        }

        v931 = v205;
        v206 = v932;
        if (v932 < 0)
        {
          v206 = -v932;
        }

        v932 = v206;
        v207 = v933;
        if (v933 < 0)
        {
          v207 = -v933;
        }

        v933 = v207;
        v208 = v934;
        if (v934 < 0)
        {
          v208 = -v934;
        }

        v934 = v208;
        v209 = v935;
        if (v935 < 0)
        {
          v209 = -v935;
        }

        v935 = v209;
        qsort(__base, 0xFFuLL, 4uLL, qsort_comp);
        if (v898.i16[6])
        {
          v210 = 0;
          v211 = 0;
          v212 = v898.i16[6] * v898.i16[6];
          v213 = 254;
          v214 = &__base[8];
          v18 = v867;
          do
          {
            v215 = *(v214 - 1) * *(v214 - 1) * *(v214 - 1) / (v212 + *(v214 - 1) * *(v214 - 1));
            v216 = *v214 * *v214 * *v214 / (v212 + *v214 * *v214);
            v210 += v215 * v215;
            v211 += v216 * v216;
            v214 += 2;
            v213 -= 2;
          }

          while (v213);
          v217 = v935 * v935 * v935 / (v212 + v935 * v935);
          v169 = v211 + v210 + v217 * v217;
        }

        else
        {
          v92 = v882;
          v93 = v880;
          v94 = v878;
          v95 = v876;
          v96 = v874;
          v97 = v872;
          v98 = v870;
          v99 = vmull_s32(*v98.i8, *v98.i8);
          v100 = *&__base[20];
          v101 = vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmull_high_s32(v98, v98), v100, v100), v97, v97), v96, v96), v95, v95), v94, v94), v93, v93), v92, v92);
          v102 = vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(v99, *v100.i8, *v100.i8), *v97.i8, *v97.i8), *v96.i8, *v96.i8), *v95.i8, *v95.i8), *v94.i8, *v94.i8), *v93.i8, *v93.i8), *v92.i8, *v92.i8);
          v103 = v884;
          v104 = vmlal_s32(v102, *v103.i8, *v103.i8);
          v105 = vmlal_high_s32(v101, v103, v103);
          v106 = v886;
          v107 = vmlal_high_s32(v105, v106, v106);
          v108 = vmlal_s32(v104, *v106.i8, *v106.i8);
          v109 = v888;
          v110 = vmlal_s32(v108, *v109.i8, *v109.i8);
          v111 = vmlal_high_s32(v107, v109, v109);
          v112 = v890;
          v113 = vmlal_high_s32(v111, v112, v112);
          v114 = vmlal_s32(v110, *v112.i8, *v112.i8);
          v115 = v892;
          v116 = vmlal_s32(v114, *v115.i8, *v115.i8);
          v117 = vmlal_high_s32(v113, v115, v115);
          v118 = v894;
          v119 = vmlal_high_s32(v117, v118, v118);
          v120 = vmlal_s32(v116, *v118.i8, *v118.i8);
          v121 = v896;
          v122 = vmlal_s32(v120, *v121.i8, *v121.i8);
          v123 = vmlal_high_s32(v119, v121, v121);
          v124 = v898;
          v125 = vmlal_high_s32(v123, v124, v124);
          v126 = vmlal_s32(v122, *v124.i8, *v124.i8);
          v127 = v900;
          v128 = vmlal_s32(v126, *v127.i8, *v127.i8);
          v129 = vmlal_high_s32(v125, v127, v127);
          v130 = v902;
          v131 = vmlal_high_s32(v129, v130, v130);
          v132 = vmlal_s32(v128, *v130.i8, *v130.i8);
          v133 = v904;
          v134 = vmlal_s32(v132, *v133.i8, *v133.i8);
          v135 = vmlal_high_s32(v131, v133, v133);
          v136 = v906;
          v137 = vmlal_high_s32(v135, v136, v136);
          v138 = vmlal_s32(v134, *v136.i8, *v136.i8);
          v139 = v908;
          v140 = vmlal_s32(v138, *v139.i8, *v139.i8);
          v141 = vmlal_high_s32(v137, v139, v139);
          v142 = v910;
          v143 = vmlal_high_s32(v141, v142, v142);
          v144 = vmlal_s32(v140, *v142.i8, *v142.i8);
          v145 = v912;
          v146 = vmlal_s32(v144, *v145.i8, *v145.i8);
          v147 = vmlal_high_s32(v143, v145, v145);
          v148 = v914;
          v149 = vmlal_high_s32(v147, v148, v148);
          v150 = vmlal_s32(v146, *v148.i8, *v148.i8);
          v151 = v916;
          v152 = vmlal_s32(v150, *v151.i8, *v151.i8);
          v153 = vmlal_high_s32(v149, v151, v151);
          v154 = v918;
          v155 = vmlal_high_s32(v153, v154, v154);
          v156 = vmlal_s32(v152, *v154.i8, *v154.i8);
          v157 = v920;
          v158 = vmlal_s32(v156, *v157.i8, *v157.i8);
          v159 = vmlal_high_s32(v155, v157, v157);
          v160 = v922;
          v161 = vmlal_high_s32(v159, v160, v160);
          v162 = vmlal_s32(v158, *v160.i8, *v160.i8);
          v15 = v923;
          v163 = v924;
          v164 = vmlal_s32(v162, *v163.i8, *v163.i8);
          v165 = vmlal_high_s32(v161, v163, v163);
          v14 = v925;
          v166 = v926;
          v167 = vmlal_high_s32(v165, v166, v166);
          v168 = vmlal_s32(v164, *v166.i8, *v166.i8);
          v13 = v927;
          v169 = vaddvq_s64(vaddq_s64(vaddq_s64(vmlal_s32(v168, *v928.i8, *v928.i8), vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmlal_s32(vmull_s32(*v869.i8, *v869.i8), *&__base[4], *&__base[4]), *v871.i8, *v871.i8), *v873.i8, *v873.i8), *v875.i8, *v875.i8), *v877.i8, *v877.i8), *v879.i8, *v879.i8), *v881.i8, *v881.i8), *v883.i8, *v883.i8), *v885.i8, *v885.i8), *v887.i8, *v887.i8), *v889.i8, *v889.i8), *v891.i8, *v891.i8), *v893.i8, *v893.i8), *v895.i8, *v895.i8), *v897.i8, *v897.i8), *v899.i8, *v899.i8), *v901.i8, *v901.i8), *v903.i8, *v903.i8), *v905.i8, *v905.i8), *v907.i8, *v907.i8), *v909.i8, *v909.i8), *v911.i8, *v911.i8), *v913.i8, *v913.i8), *v915.i8, *v915.i8), *v917.i8, *v917.i8), *v919.i8, *v919.i8), *v921.i8, *v921.i8), *v15.i8, *v15.i8), *v14.i8, *v14.i8), *v13.i8, *v13.i8)), vaddq_s64(vmlal_high_s32(v167, v928, v928), vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmlal_high_s32(vmull_high_s32(v869, v869), *&__base[4], *&__base[4]), v871, v871), v873, v873), v875, v875), v877, v877), v879, v879), v881, v881), v883, v883), v885, v885), v887, v887), v889, v889), v891, v891), v893, v893), v895, v895), v897, v897), v899, v899), v901, v901), v903, v903), v905, v905), v907, v907), v909, v909), v911, v911), v913, v913), v915, v915), v917, v917), v919, v919), v921, v921), v15, v15), v14, v14), v13, v13)))) + v929 * v929 + v930 * v930 + v931 * v931 + v932 * v932 + v933 * v933 + v934 * v934 + v935 * v935;
          v18 = v867;
        }

        v170 = v169 >> 8;
        v80 = *(v18 + 1032);
        *(*(v16 + 14) + 8 * (v91 + v80 * v89)) = v170;
        v88 = *(v16 + 13) + v170;
        *(v16 + 13) = v88;
        ++v90;
        ++v91;
      }

      while (v91 < v80);
      v79 = *(v18 + 1024);
      v20 = v841;
    }

    ++v89;
  }

  while (v89 < v79);
  v76 = v87;
  if (v90)
  {
    v88 /= v90;
  }

  v12 = v834;
  v85 = v839;
  if (v88 <= 1)
  {
    v218 = 1;
  }

  else
  {
    v218 = v88;
  }

  *(v16 + 13) = v218;
  if (v16[30] >= v79)
  {
LABEL_128:
    if (v16[31] >= *(v18 + 1032))
    {
      goto LABEL_137;
    }
  }

LABEL_129:
  v219 = *(v16 + 17);
  if (v219)
  {
    free(*(v219 - 8));
    v18 = v867;
    v79 = *(v867 + 1024);
  }

  *(v16 + 17) = 0;
  v220 = *(v18 + 1032) * v79;
  if ((v220 & 0x80000000) == 0 && (v221 = 8 * v220, (v222 = malloc_type_malloc(v221 + 23, 0xD93B561uLL)) != 0) && (v223 = (v222 + 23) & 0xFFFFFFFFFFFFFFF0, *(v223 - 8) = v222, v223))
  {
    bzero(((v222 + 23) & 0xFFFFFFFFFFFFFFF0), v221);
    *(v16 + 17) = v223;
  }

  else
  {
    *(v16 + 17) = 0;
    vpx_internal_error(v12 + 171696, 2, "Failed to allocate cpi->sb_mul_scale", v17);
  }

  v224 = *(v867 + 1032);
  v16[30] = *(v867 + 1024);
  v16[31] = v224;
LABEL_137:
  v225 = v76[7];
  v226 = (v12 + 747964);
  v76[20] = v76[6];
  v76[21] = v225;
  v227 = v76[1];
  v76[14] = *v76;
  v76[15] = v227;
  v228 = v76[9];
  v76[22] = v76[8];
  v76[23] = v228;
  v229 = v76[3];
  v76[16] = v76[2];
  v76[17] = v229;
  v230 = v76[11];
  v76[24] = v76[10];
  v76[25] = v230;
  v231 = v76[5];
  v76[18] = v76[4];
  v76[19] = v231;
  v232 = v76[12];
  v233 = v76[13];
  v76[26] = v232;
  v76[27] = v233;
  if (v16[2] >= 1)
  {
    v234 = 0;
    v235 = 1576;
    do
    {
      memcpy((*v16 + v235), (*v16 + v235 - 1560), 0x618uLL);
      ++v234;
      v235 += 3720;
    }

    while (v234 < v16[2]);
  }

  v236 = (v12 + 926168);
  v237 = (v12 + 198888);
  v864 = (v20 + 239);
  v238 = v842;
  if (*(v20 + 239) && (*(v20 + 255) & 4) != 0 && *(v20 + 319))
  {
    v239 = *(v866 + 1468);
    v240 = *(v12 + 4 * v239 + 743168);
    v242 = v16[6];
    v241 = v16[7];
    v243 = *(v12 + 172048 + 4 * v241);
    v244 = *(v12 + 172048 + 4 * v242);
    v245 = v16[8];
    v246 = *(v12 + 172048 + 4 * v245);
    if (v243 == v244)
    {
      v247 = 5;
    }

    else
    {
      v247 = 7;
    }

    if (*(v842 + 2244) == 0x7FFFFFFF && *(v12 + 754556) == 1 && *(v12 + 754552) == 1)
    {
      v247 = 5;
    }

    v248 = v246 == v244 || v243 == v246;
    if (v248)
    {
      v247 &= 3u;
    }

    v249 = *(v867 + 660);
    if (v249 == -1)
    {
      v250 = 0;
    }

    else
    {
      v250 = *(v838 + 100) + 224 * v249 + 24;
    }

    v251 = 0;
    v252 = *(v866 + 2484) == 3;
    LODWORD(v937) = -1;
    if (v242 != -1 && v244 != -1)
    {
      v251 = *(v838 + 100) + 224 * v244 + 24;
    }

    v253 = 0;
    *__base = v251;
    if (v241 != -1 && v243 != -1)
    {
      v253 = *(v838 + 100) + 224 * v243 + 24;
    }

    v254 = 0;
    *&__base[8] = v253;
    if (v245 != -1 && v246 != -1)
    {
      v254 = *(v838 + 100) + 224 * v246 + 24;
    }

    *&__base[16] = v254;
    frame_rdmult = vp9_extrc_get_frame_rdmult(v864, *(v250 + 28), *(v838 + 4), v239, v240, *(v12 + 748172), v252, __base, v247, &v937);
    if (frame_rdmult)
    {
      vpx_internal_error(v12 + 171696, frame_rdmult, "vp9_extrc_get_frame_rdmult() failed");
    }

    *(v20 + 243) = v937;
  }

  v256 = v867;
  if (*(v842 + 3284))
  {
    goto LABEL_172;
  }

  *__base = 0;
  LODWORD(v937) = 0;
  v936[0].i32[0] = 0;
  v270 = *(v12 + 754540);
  if (v270 && !*(v838 + 232))
  {
    v285 = *(v12 + 754544);
    v271 = *(v12 + v285 + 926408);
    v272 = *(v12 + 4 * v285 + 926416);
    if (*(v867 + 1004))
    {
      goto LABEL_184;
    }
  }

  else
  {
    v271 = 0;
    v272 = 0;
    if (*(v867 + 1004))
    {
LABEL_184:
      *(v842 + 2156) = 0;
      if (*(v12 + 754512) && *(v838 + 232) != 1 && *(v867 + 996))
      {
        *(v838 + 948) = *(v838 + 596);
      }

      goto LABEL_172;
    }
  }

  v854 = v272;
  *(v12 + 8 * *(v12 + 754544) + 927088) = *(v12 + 927080);
  v286 = *(v838 + 232);
  *(v20 + 15) = *(v838 + 228) == 2;
  if (!v286)
  {
    if (*(v838 + 248) == 1 && *(v838 + 312) == 2 && *(v12 + 933792))
    {
      v287 = v271;
      if (!v270 || !*(v12 + 927140))
      {
        v288 = *(v12 + 933804);
        v289 = *(v12 + 933808);
        v290 = *(v838 + 152);
        v291 = v288 * *(v838 + 148) / v289;
        *(v838 + 316) = v291;
        v292 = v290 * v288 / v289;
        *(v838 + 320) = v292;
        vp9_set_size_literal(v12, v291, v292);
        v256 = v867;
      }

      v293 = *(v256 + 8);
      v294 = *(v256 + 12);
      if (v293 >= v294)
      {
        v295 = *(v256 + 12);
      }

      else
      {
        v295 = *(v256 + 8);
      }

      if (v295 <= 16)
      {
        v296 = 16;
      }

      else
      {
        v296 = v295;
      }

      v297 = -1;
      do
      {
        ++v297;
      }

      while (v296 << v297 < 1023);
      if (v297 >= 9)
      {
        v297 = 9;
      }

      *(v842 + 3900) = v297;
      if (*(v842 + 3240))
      {
        if (*(v256 + 992) && !*(v256 + 1008))
        {
          if (*(v256 + 996))
          {
            if (v295 >= (2 * *(v842 + 3896)))
            {
              v295 = 2 * *(v842 + 3896);
            }

            if (v295 <= 16)
            {
              v295 = 16;
            }

            v298 = -1;
            do
            {
              ++v298;
            }

            while (v295 << v298 < 1023);
            v295 = 0;
            if (v298 >= 9)
            {
              v298 = 9;
            }

            *(v842 + 3900) = v298;
          }

          else
          {
            v295 = 0;
          }
        }

        *(v842 + 3896) = v295;
      }

      vp9_noise_estimate_init(v12 + 933832, v293, v294);
      v256 = v867;
      v271 = v287;
      if (*(v838 + 204) >= 1)
      {
        *v232.i64 = vp9_denoiser_free((v12 + 933584), *v232.i64);
        v701 = *(v838 + 204);
        if (v701 >= 1 && !*(v12 + 933760))
        {
          *v232.i64 = vp9_denoiser_alloc((v12 + 171696), (v12 + 754544), v12 + 933584, *(v12 + 754540), v701, *(v867 + 8), *(v867 + 12), *(v867 + 32), *(v867 + 36), *(v867 + 40), 160);
          if (v702)
          {
            vpx_internal_error(v12 + 171696, 2, "Failed to allocate denoiser", *v232.i64);
          }
        }

        v16[18] = 1;
        v256 = v867;
        v271 = v287;
      }
    }

    v286 = *(v838 + 232);
  }

  v857 = v271;
  if (v286 == 2 && !*(v12 + 754540))
  {
    vp9_set_target_rate(v12, *v232.i64, *v233.i64);
    v256 = v867;
  }

  v703 = *(v256 + 660);
  v704 = *(v838 + 100);
  v705 = v704 + 224 * v703;
  v706 = *(v705 + 32);
  if (v706)
  {
    if (*(v705 + 40) >= *(v256 + 1028) && *(v705 + 44) >= *(v256 + 1036))
    {
      goto LABEL_493;
    }

    free(*(v706 - 8));
    v256 = v867;
  }

  v707 = *(v256 + 1036) * *(v256 + 1028);
  if ((v707 & 0x80000000) == 0 && (v708 = 12 * v707, (v709 = malloc_type_malloc(v708 + 23, 0xD93B561uLL)) != 0) && (v710 = (v709 + 23) & 0xFFFFFFFFFFFFFFF0, *(v710 - 8) = v709, v710))
  {
    bzero(((v709 + 23) & 0xFFFFFFFFFFFFFFF0), v708);
    *(v705 + 32) = v710;
  }

  else
  {
    *(v705 + 32) = 0;
    vpx_internal_error(v12 + 171696, 2, "Failed to allocate new_fb_ptr->mvs");
  }

  v238 = v842;
  v256 = v867;
  *(v705 + 40) = *(v867 + 1028);
  *(v705 + 44) = *(v867 + 1036);
  v703 = *(v867 + 660);
  v704 = *(v838 + 100);
  v226 = (v12 + 747964);
LABEL_493:
  if (vpx_realloc_frame_buffer(v704 + 224 * v703 + 88, *(v256 + 8), *(v256 + 12), *(v256 + 32), *(v256 + 36), *(v256 + 40), 160, *(v838 + 92), 0, 0, 0))
  {
    vpx_internal_error(v12 + 171696, 2, "Failed to allocate frame buffer");
  }

  alloc_util_frame_buffers(v12);
  v718 = *(v838 + 636);
  v719 = *(v238 + 3232);
  if (v719)
  {
    if (v719 == 1)
    {
      inited = vp9_init3smotion_compensation(v12 + 927168, v718);
    }
  }

  else
  {
    inited = vp9_init_dsmotion_compensation(v12 + 927168, v718);
  }

  v720 = v867;
  v721 = (v867 + 132);
  v722 = v12 + 172048;
  v723 = v846[6];
  if (v723 == -1)
  {
    *v721 = -1;
    goto LABEL_509;
  }

  v724 = *(v722 + 4 * v723);
  *v721 = v724;
  if (v724 == -1)
  {
LABEL_509:
    v729 = 0;
    *(v867 + 140) = 0;
    goto LABEL_510;
  }

  v725 = (*(v838 + 100) + 224 * v724);
  v726 = v725 + 22;
  *(v867 + 140) = v725 + 22;
  vp9_setup_scale_factors_for_frame(v867 + 148, v725[24], v725[25], *(v867 + 8), *(v867 + 12), (v725[60] >> 3) & 1);
  v720 = v867;
  v727 = *(v867 + 148);
  if (v727 == -1)
  {
    v729 = 0;
    v730 = v846[7];
    if (v730 != -1)
    {
      goto LABEL_511;
    }

LABEL_507:
    *(v720 + 308) = v730;
LABEL_517:
    *(v720 + 316) = 0;
    goto LABEL_518;
  }

  v728 = *(v867 + 152);
  v729 = v728 != -1;
  if (v728 == -1)
  {
LABEL_510:
    v730 = v846[7];
    if (v730 != -1)
    {
      goto LABEL_511;
    }

    goto LABEL_507;
  }

  if (v727 != 0x4000 || v728 != 0x4000)
  {
    extend_frame(v726, v726[26]);
    v720 = v867;
  }

  v729 = 1;
  v730 = v846[7];
  if (v730 == -1)
  {
    goto LABEL_507;
  }

LABEL_511:
  v731 = *(v722 + 4 * v730);
  *(v720 + 308) = v731;
  if (v731 == -1)
  {
    goto LABEL_517;
  }

  v732 = (*(v838 + 100) + 224 * v731);
  v733 = v732 + 22;
  *(v720 + 316) = v732 + 22;
  vp9_setup_scale_factors_for_frame(v720 + 324, v732[24], v732[25], *(v720 + 8), *(v720 + 12), (v732[60] >> 3) & 1);
  v720 = v867;
  v734 = *(v867 + 324);
  if (v734 != -1)
  {
    v735 = *(v867 + 328);
    if (v735 != -1)
    {
      v729 = 1;
      if (v734 != 0x4000 || v735 != 0x4000)
      {
        extend_frame(v733, v733[26]);
        v720 = v867;
      }
    }
  }

LABEL_518:
  v736 = v846[8];
  if (v736 == -1)
  {
    *(v720 + 484) = -1;
    goto LABEL_526;
  }

  v737 = *(v722 + 4 * v736);
  *(v720 + 484) = v737;
  if (v737 == -1)
  {
LABEL_526:
    *(v720 + 492) = 0;
    v16 = v846;
    goto LABEL_527;
  }

  v738 = (*(v838 + 100) + 224 * v737);
  v739 = v738 + 22;
  *(v720 + 492) = v738 + 22;
  vp9_setup_scale_factors_for_frame(v720 + 500, v738[24], v738[25], *(v720 + 8), *(v720 + 12), (v738[60] >> 3) & 1);
  v720 = v867;
  v740 = *(v867 + 500);
  v16 = v846;
  if (v740 != -1)
  {
    v741 = *(v867 + 504);
    if (v741 != -1)
    {
      v729 = 1;
      if (v740 != 0x4000 || v741 != 0x4000)
      {
        extend_frame(v739, v739[26]);
        v720 = v867;
      }
    }
  }

LABEL_527:
  if (*(v720 + 992))
  {
    v742 = *(v720 + 1008) || v729;
    if ((v742 & 1) == 0)
    {
      vpx_internal_error(v12 + 171696, 1, "Can't find at least one reference frame with valid size");
      v720 = v867;
    }
  }

  *v865 = v721;
  *(v865 + 8) = v721;
  v743 = *(v838 + 232);
  v744 = *(v838 + 612);
  v745 = *v744;
  v85 = v839;
  if (*(v12 + 754540) && !v743)
  {
    v746 = *(v720 + 8);
    if (v745 == 4 * v746)
    {
      v747 = *(v720 + 12);
      if (v744[1] == 4 * v747 && *(v12 + 758768) == 2 * v746 && *(v12 + 758772) == 2 * v747)
      {
        v748 = v226;
        v749 = svc_twostage_scale((v12 + 171696), v744, v12 + 190464, v12 + 758768, v857, v854, *(v12 + 926409), *(v12 + 926420), *&inited, *&v712);
        v720 = v867;
        v750 = v749;
        *(v838 + 596) = v749;
        *(v12 + 758928) = 1;
        v238 = v842;
        goto LABEL_553;
      }
    }

    if (v745 == 2 * v746 && v744[1] == 2 * *(v720 + 12) && *(v12 + 758928))
    {
      v748 = v226;
      v750 = (v12 + 758768);
      *(v838 + 596) = v12 + 758768;
      *(v12 + 758928) = 0;
      v238 = v842;
      goto LABEL_553;
    }
  }

  v748 = v226;
  if (v745 == 8 * *(v720 + 1036) && v744[1] == 8 * *(v720 + 1028))
  {
    v750 = *(v838 + 612);
    v238 = v842;
  }

  else
  {
    v750 = (v838 + 620);
    v238 = v842;
    if (v743 || v745 > 2 * *v750 || v744[1] > 2 * *(v838 + 624))
    {
      vp9_scale_and_extend_frame_nonnormative(*(v838 + 612), v838 + 620, *(v838 + 12));
    }

    else
    {
      v788 = *(v838 + 12);
      v789 = *(v838 + 612);
      v790 = v838 + 620;
      if (v788 == 8)
      {
        vp9_scale_and_extend_frame_neon(v789, v790, v857, v854, *&inited, *&v712);
      }

      else
      {
        scale_and_extend_frame(v789, v790, v788, v857, v854);
      }
    }

    v720 = v867;
  }

  *(v838 + 596) = v750;
LABEL_553:
  if (*(v12 + 754512) && *(v838 + 232) != 1 && *(v720 + 996))
  {
    *(v838 + 948) = v750;
  }

  if (*(v12 + 754540) && (*(v12 + 754544) < *(v12 + 754552) - 1 || *(v12 + 754548) < *(v12 + 754556) - 1 || *(v12 + 926392) < 1) || *(v12 + 933792) || *(v12 + 933796) || *(v12 + 933800))
  {
    *(v20 + 15) = 0;
    v751 = *(v20 + 7);
    if (v751)
    {
      bzero(v751, (*(v720 + 1040) >> 3) + (*(v720 + 1040) >> 3) * (*(v720 + 1028) >> 3));
      v720 = v867;
    }
  }

  v752 = *(v838 + 780);
  v226 = v748;
  if (v752)
  {
    if ((v753 = *(v838 + 232), *(v838 + 536) == 1) || !v753 && !*(v838 + 248) && *(v838 + 228) == 2 && *(v838 + 212) > 4 || *(v238 + 3392) == 4 || *(v12 + 933832) && !*(v838 + 204) || *(v20 + 15))
    {
      if (*v752 == 8 * *(v720 + 1036) && v752[1] == 8 * *(v720 + 1028))
      {
        v754 = *(v838 + 780);
      }

      else
      {
        v754 = (v838 + 788);
        if (v753 || *v752 > 2 * *v754 || v752[1] > 2 * *(v838 + 792))
        {
          vp9_scale_and_extend_frame_nonnormative(v752, v838 + 788, *(v838 + 12));
        }

        else
        {
          v791 = *(v838 + 12);
          v792 = v838 + 788;
          if (v791 == 8)
          {
            vp9_scale_and_extend_frame_neon(v752, v792, 0, 0, *&inited, *&v712);
          }

          else
          {
            scale_and_extend_frame(v752, v792, v791, 0, 0);
          }
        }

        v720 = v867;
      }

      *(v838 + 604) = v754;
      v238 = v842;
    }
  }

  v755 = *(v838 + 604);
  if (!v755 || (v756 = *(v838 + 596), *v755 != *v756) || v755[1] != v756[1])
  {
    *(v20 + 15) = 0;
  }

  if (!*(v720 + 992) || *(v720 + 1008) || *(v12 + 933792))
  {
    bzero(*(v12 + 933872), *(v720 + 1036) * *(v720 + 1028));
    v720 = v867;
  }

  if (*(v838 + 204) >= 1)
  {
    if (*(v12 + 754540))
    {
      v757 = *(v12 + 754544);
      if (v757 >= *(v12 + 926592) && !*(v12 + 13936 * (*(v12 + 754548) + *(v12 + 754556) * v757) + 772756) && !*(v12 + 933776))
      {
        *(v12 + 933764) = 1;
        if (*(v12 + 926372))
        {
          v16[8] = *(v12 + 8 * (v757 - (*(v12 + 754552) == 3)) + 926376);
          v16[19] = 1;
        }
      }
    }
  }

  *(v238 + 2760) = 0;
  v758 = 0.0;
  *(v238 + 2768) = 0;
  if (*(v720 + 996) && *(v838 + 228) == 2 && !*(v20 + 439) && (!*(v838 + 248) || *(v838 + 536) == 1 || *(v838 + 212) >= 5))
  {
    vp9_scene_detection_onepass(v12);
  }

  if (*(v12 + 754544) == *(v12 + 927028))
  {
    v759 = *(v238 + 2760);
    *(v12 + 926856) = v759;
    *(v12 + 926860) = *(v238 + 2748);
    if (v759)
    {
      if (*(v12 + 754548) >= 1 && *v236 == 1)
      {
        vp9_svc_reset_temporal_layers(v12, *(v867 + 992) == 0);
        *(v238 + 2760) = v759;
      }
    }
  }

  vp9_update_noise_estimate(v12, v758, v712, v713, v714, v715, v716, v717);
  if (*(v238 + 2760) || (v760 = *(v12 + 926856)) != 0)
  {
    LOBYTE(v760) = !*(v238 + 2808) || !*(v12 + 926604);
  }

  v761 = v867;
  if (!*(v838 + 232) && *(v838 + 248) == 1)
  {
    if (!*(v867 + 992))
    {
      goto LABEL_632;
    }

    if (*(v867 + 1008))
    {
      LOBYTE(v760) = 1;
    }

    if ((v760 & 1) == 0 && !*(v12 + 926994) && (!*(v12 + 754540) || !*(v12 + 13936 * *(v12 + 754548) + 772756)))
    {
      v795 = vp9_rc_drop_frame(v12);
      v761 = v867;
      if (v795)
      {
        return;
      }
    }
  }

  if (*(v761 + 992) && !*(v761 + 1008) && (*(v12 + 927136) && *(v838 + 312) == 2 || !*(v12 + 754540) || *(v838 + 232) || !*(v12 + 926364)))
  {
    vp9_scale_references(v12);
    v761 = v867;
  }

LABEL_632:
  v762 = v761;
  vp9_set_speed_features_framesize_independent(v12, *(v838 + 212));
  v764 = *(v838 + 228) == 1;
  if (*(v838 + 228) == 1)
  {
    v765 = -500;
  }

  else
  {
    v765 = 0;
  }

  if (*(v238 + 3300))
  {
    v766 = 300;
  }

  else
  {
    v766 = 0;
  }

  *(v12 + 198924) = v766;
  *(v12 + 198928) = v766;
  *(v12 + 198920) = v766;
  *(v12 + 198984) = v765 + 1500;
  *(v12 + 198992) = v765 + 1500;
  *v763.i8 = vadd_s32(vdup_n_s32(v765), 0x7D0000003E8);
  v767 = vzip1q_s32(v763, v763);
  v767.i32[2] = v763.i32[0];
  *(v12 + 198932) = vdupq_lane_s32(*v763.i8, 0);
  *(v12 + 198980) = v763.i32[0];
  *(v12 + 198988) = v763.i32[1];
  *(v12 + 198996) = v763.i32[1];
  *(v12 + 198948) = v767;
  v768 = vrev64q_s32(v763);
  *(v12 + 198964) = vzip1q_s32(v768, v768);
  v769 = v765 + 2500;
  *(v12 + 199000) = v769;
  *(v12 + 199004) = v769;
  *(v12 + 199008) = vdup_lane_s32(*v763.i8, 1);
  *(v12 + 199032) = v769;
  *(v12 + 199036) = v769;
  *(v12 + 199016) = vdupq_n_s32(v769);
  v770 = &vp9_set_rd_speed_thresholds_sub8x8_thresh_mult + 24 * v764;
  *(v12 + 199040) = *v770;
  *(v12 + 199056) = *(v770 + 2);
  *(v762 + 1272) = *(v238 + 3720);
  vp9_set_speed_features_framesize_dependent(v12, *(v838 + 212));
  v775 = vp9_rc_pick_q_and_bounds(v12, &v937, v936[0].i32, v771, v772, v773, v774);
  *__base = v775;
  if (*(v838 + 248) == 1 && *(v238 + 2800))
  {
    v775 = *(v238 + 2432);
    *__base = v775;
    *(v238 + 2800) = 0;
  }

  v776 = v867;
  if (*(v12 + 754540))
  {
    *(v12 + 4 * *(v12 + 754544) + 926972) = v775;
  }

  if (*(v867 + 992) && !*(v867 + 1008))
  {
    *(v867 + 1012) = v775 < 200;
    v777 = 74960;
    if (v775 >= 200)
    {
      v777 = 74944;
    }

    v778 = 75016;
    if (v775 >= 200)
    {
      v778 = 75000;
    }

    *(v865 + 352) = v12 + v777;
    *(v865 + 408) = v12 + v778;
  }

  v779 = *(v838 + 636);
  v780 = *(v238 + 3232);
  if (v780)
  {
    if (v780 != 1)
    {
      goto LABEL_655;
    }

    vp9_init3smotion_compensation(v12 + 927168, v779);
  }

  else
  {
    vp9_init_dsmotion_compensation(v12 + 927168, v779);
  }

  v776 = v867;
LABEL_655:
  if (*(v238 + 3816))
  {
    alloc_copy_partition_data(v12);
    v776 = v867;
  }

  if (*(v238 + 3848))
  {
    if (*(v12 + 754544) == *(v12 + 754552) - 2 && !*(v12 + 926440))
    {
      v781 = vpx_calloc(*(v776 + 1028) * *(v776 + 1040), 1uLL);
      v776 = v867;
      *(v12 + 926440) = v781;
      if (!v781)
      {
        vpx_internal_error(v12 + 171696, 2, "Failed to allocate svc->prev_partition_svc");
        v776 = v867;
      }
    }
  }

  if (*(v838 + 12) == 8 && *(v838 + 212) >= 5 && !*(v838 + 232) && *(v838 + 248) == 1 && *(v838 + 536) != 1 && *(v838 + 304) == 3)
  {
    *(v12 + 933824) = 1;
  }

  v782 = *(v238 + 2812);
  if (v782)
  {
    v782 = *(v838 + 248) == 1 && *(v776 + 992) != 0;
  }

  *(v238 + 2808) = v782;
  v783 = *__base;
  *(v776 + 1048) = *__base;
  v858 = (v776 + 1052);
  *(v776 + 1052) = 0;
  *(v776 + 1060) = 0;
  v784 = *(v838 + 572);
  if (v784)
  {
    *(v776 + 1060) = v784;
    *(v776 + 1056) = v784;
    v785 = v776;
    vp9_init_quantizer(v12);
    vp9_set_variance_partition_thresholds(v12, *__base, 0);
    if (!*(v785 + 992))
    {
      goto LABEL_679;
    }
  }

  else
  {
    v785 = v776;
    vp9_set_variance_partition_thresholds(v12, v783, 0);
    if (!*(v785 + 992))
    {
LABEL_679:
      vp9_setup_past_independence(v12 + 171696);
      v786 = v867;
      v237 = (v12 + 198888);
      goto LABEL_680;
    }
  }

  v786 = v785;
  if (*(v785 + 1008) || *(v838 + 76))
  {
    goto LABEL_679;
  }

  v237 = (v12 + 198888);
  if (!*(v12 + 754540))
  {
    *(v839 + 216) = v16[19];
  }

LABEL_680:
  if (*(v20 + 55) && !*(v12 + 754540))
  {
    if (*(v238 + 2292))
    {
      v787 = 0;
    }

    else if (v16[18])
    {
      v787 = 1;
    }

    else
    {
      v787 = v16[19] != 0;
    }

    if (!*(v786 + 992) || *(v786 + 1008))
    {
      goto LABEL_699;
    }

    if (v787)
    {
      v794 = *(v866 + 1468);
      if (*(v12 + 4 * v794 + 742160) == 3)
      {
LABEL_699:
        *(v839 + 216) = 0;
        goto LABEL_700;
      }

      if (*(v12 + v794 + 744428) > 3u)
      {
        *(v839 + 216) = 2;
        if (*(v786 + 992))
        {
          goto LABEL_701;
        }
      }

      else
      {
        *(v839 + 216) = 1;
        if (*(v786 + 992))
        {
          goto LABEL_701;
        }
      }
    }

    else
    {
      *(v839 + 216) = 3;
      if (*(v786 + 992))
      {
        goto LABEL_701;
      }
    }

LABEL_716:
    *(v16 + 9) = 0x100000001;
    v793 = 128;
    goto LABEL_717;
  }

LABEL_700:
  if (!*(v786 + 992))
  {
    goto LABEL_716;
  }

LABEL_701:
  memcpy(*(v839 + 200), (*(v839 + 208) + 2044 * *(v839 + 216)), 0x7FCuLL);
  v793 = 16;
LABEL_717:
  bzero((v12 + 739184), v793);
  v798 = *(v238 + 3920);
  v799 = v867;
  if (!*(v238 + 3976) && !*(v238 + 3980))
  {
    goto LABEL_773;
  }

  v800 = (*(v867 + 1036) * *(v867 + 1028));
  if (v800 < 1)
  {
    goto LABEL_773;
  }

  if (v800 < 4)
  {
    v801 = 0;
    goto LABEL_792;
  }

  if (v800 < 0x10)
  {
    v801 = 0;
    goto LABEL_761;
  }

  v801 = v800 & 0x7FFFFFF0;
  v802 = (v798 + 7);
  v796.i64[0] = 0x707070707070707;
  v796.i64[1] = 0x707070707070707;
  v803 = v801;
  do
  {
    v797 = vceqq_s8(*(v802 - 7), v796);
    if (v797.i8[0])
    {
      *(v802 - 7) = 0;
      if ((v797.i8[1] & 1) == 0)
      {
        goto LABEL_728;
      }
    }

    else if ((v797.i8[1] & 1) == 0)
    {
LABEL_728:
      if (v797.i8[2])
      {
        goto LABEL_729;
      }

      goto LABEL_745;
    }

    *(v802 - 6) = 0;
    if (v797.i8[2])
    {
LABEL_729:
      *(v802 - 5) = 0;
      if ((v797.i8[3] & 1) == 0)
      {
        goto LABEL_730;
      }

      goto LABEL_746;
    }

LABEL_745:
    if ((v797.i8[3] & 1) == 0)
    {
LABEL_730:
      if (v797.i8[4])
      {
        goto LABEL_731;
      }

      goto LABEL_747;
    }

LABEL_746:
    *(v802 - 4) = 0;
    if (v797.i8[4])
    {
LABEL_731:
      *(v802 - 3) = 0;
      if ((v797.i8[5] & 1) == 0)
      {
        goto LABEL_732;
      }

      goto LABEL_748;
    }

LABEL_747:
    if ((v797.i8[5] & 1) == 0)
    {
LABEL_732:
      if (v797.i8[6])
      {
        goto LABEL_733;
      }

      goto LABEL_749;
    }

LABEL_748:
    *(v802 - 2) = 0;
    if (v797.i8[6])
    {
LABEL_733:
      *(v802 - 1) = 0;
      if ((v797.i8[7] & 1) == 0)
      {
        goto LABEL_734;
      }

      goto LABEL_750;
    }

LABEL_749:
    if ((v797.i8[7] & 1) == 0)
    {
LABEL_734:
      if (v797.i8[8])
      {
        goto LABEL_735;
      }

      goto LABEL_751;
    }

LABEL_750:
    *v802 = 0;
    if (v797.i8[8])
    {
LABEL_735:
      v802[1] = 0;
      if ((v797.i8[9] & 1) == 0)
      {
        goto LABEL_736;
      }

      goto LABEL_752;
    }

LABEL_751:
    if ((v797.i8[9] & 1) == 0)
    {
LABEL_736:
      if (v797.i8[10])
      {
        goto LABEL_737;
      }

      goto LABEL_753;
    }

LABEL_752:
    v802[2] = 0;
    if (v797.i8[10])
    {
LABEL_737:
      v802[3] = 0;
      if ((v797.i8[11] & 1) == 0)
      {
        goto LABEL_738;
      }

      goto LABEL_754;
    }

LABEL_753:
    if ((v797.i8[11] & 1) == 0)
    {
LABEL_738:
      if (v797.i8[12])
      {
        goto LABEL_739;
      }

      goto LABEL_755;
    }

LABEL_754:
    v802[4] = 0;
    if (v797.i8[12])
    {
LABEL_739:
      v802[5] = 0;
      if ((v797.i8[13] & 1) == 0)
      {
        goto LABEL_740;
      }

      goto LABEL_756;
    }

LABEL_755:
    if ((v797.i8[13] & 1) == 0)
    {
LABEL_740:
      if ((v797.i8[14] & 1) == 0)
      {
        goto LABEL_757;
      }

      goto LABEL_741;
    }

LABEL_756:
    v802[6] = 0;
    if ((v797.i8[14] & 1) == 0)
    {
LABEL_757:
      if ((v797.i8[15] & 1) == 0)
      {
        goto LABEL_725;
      }

      goto LABEL_758;
    }

LABEL_741:
    v802[7] = 0;
    if ((v797.i8[15] & 1) == 0)
    {
      goto LABEL_725;
    }

LABEL_758:
    v802[8] = 0;
LABEL_725:
    v802 += 16;
    v803 -= 16;
  }

  while (v803);
  if (v801 == v800)
  {
    goto LABEL_773;
  }

  if ((v800 & 0xC) == 0)
  {
    goto LABEL_792;
  }

LABEL_761:
  v804 = v801;
  v801 = v800 & 0x7FFFFFFC;
  v805 = v804 - v801;
  v806 = (v804 + v798 + 1);
  v796.i64[0] = 0x7000700070007;
  while (2)
  {
    v797.i32[0] = *(v806 - 1);
    *v797.i8 = vceq_s16(*&vmovl_u8(*v797.i8), 0x7000700070007);
    if (v797.i8[0])
    {
      *(v806 - 1) = 0;
      if ((v797.i8[2] & 1) == 0)
      {
        goto LABEL_765;
      }

LABEL_769:
      *v806 = 0;
      if ((v797.i8[4] & 1) == 0)
      {
        goto LABEL_770;
      }

LABEL_766:
      v806[1] = 0;
      if (v797.i8[6])
      {
        goto LABEL_771;
      }
    }

    else
    {
      if (v797.i8[2])
      {
        goto LABEL_769;
      }

LABEL_765:
      if (v797.i8[4])
      {
        goto LABEL_766;
      }

LABEL_770:
      if (v797.i8[6])
      {
LABEL_771:
        v806[2] = 0;
      }
    }

    v806 += 4;
    v805 += 4;
    if (v805)
    {
      continue;
    }

    break;
  }

  if (v801 == v800)
  {
    goto LABEL_773;
  }

LABEL_792:
  v811 = v800 - v801;
  v812 = (v798 + v801);
  do
  {
    if (*v812 == 7)
    {
      *v812 = 0;
    }

    ++v812;
    --v811;
  }

  while (v811);
LABEL_773:
  if (*(v12 + 754540))
  {
    if (*(v12 + 754544) >= 1)
    {
      vp9_svc_constrain_inter_layer_pred(v12);
      v799 = v867;
    }

    if (*v236 == 1 || *(v12 + 926852) || *(v12 + 926848) == 1)
    {
      if (*(v12 + 926372))
      {
        if (!*(v12 + 13936 * *(v12 + 754548) + 772756))
        {
          v807 = v12 + v16[7];
          if (*(v12 + 754544) != *(v807 + 926936) || *(v807 + 926944))
          {
            *(v12 + 926372) = 0;
          }
        }
      }
    }
  }

  if (*(v238 + 2804))
  {
    *(v238 + 2760) = 1;
    *(v12 + 926856) = 1;
    *(v238 + 3820) = 0;
    *(v238 + 2804) = 0;
  }

  if (*(v238 + 3852) == 1 && (*(v238 + 2760) || *(v12 + 754540) && *(v12 + 926856)))
  {
    v808 = vp9_encodedframe_overshoot(v12, -1, __base);
    v799 = v867;
    if (v808)
    {
      v809 = *__base;
      *(v867 + 1048) = *__base;
      *v858 = 0;
      *(v867 + 1060) = 0;
      v810 = *(v838 + 572);
      if (v810)
      {
        *(v867 + 1060) = v810;
        *(v867 + 1056) = v810;
        vp9_init_quantizer(v12);
        v809 = *__base;
      }

      vp9_set_variance_partition_thresholds(v12, v809, 0);
      v799 = v867;
    }
  }

  if (*(v20 + 63) && *(v799 + 992) && !*(v799 + 1008))
  {
    if (!*(v20 + 163))
    {
      goto LABEL_834;
    }

    if (*(v838 + 304) == 3)
    {
      vp9_cyclic_refresh_setup(v12, *v796.i64, *v797.i8);
      v799 = v867;
    }

    if (*(v238 + 2272) >= 21)
    {
LABEL_834:
      apply_roi_map(v12);
LABEL_803:
      v799 = v867;
    }
  }

  else if (*(v838 + 304) == 3)
  {
    vp9_cyclic_refresh_setup(v12, *v796.i64, *v797.i8);
    goto LABEL_803;
  }

  if (!*(v799 + 992) || *(v799 + 1008))
  {
    v813 = (v238 + 3980);
    *(v238 + 3976) = 0x100000000;
LABEL_807:
    *(v839 + 180) &= 0xFFFFFFF5;
    if (*(v839 + 72))
    {
      *(v839 + 73) = 257;
    }

    goto LABEL_809;
  }

  if (*(v238 + 3980))
  {
    v813 = (v238 + 3980);
    if (!*(v238 + 3976))
    {
      goto LABEL_807;
    }

    v820 = *(v799 + 1028);
    v821 = *(v799 + 1036);
    if (v821 * v820 >= 1)
    {
      v822 = 0;
      v823 = *(v238 + 3920);
      v824 = *(v238 + 3984);
      do
      {
        if (!*(v823 + v822))
        {
          *(v823 + v822) = *(v824 + v822);
          v820 = *(v799 + 1028);
          v821 = *(v799 + 1036);
        }

        ++v822;
      }

      while (v822 < v820 * v821);
    }

    *(v839 + 72) = 257;
    *(v839 + 74) = 1;
    *(v839 + 180) |= 0xAu;
    *(v839 + 146) = -63;
LABEL_809:
    *v813 = 0;
  }

  vp9_encode_frame(v12);
  if (*(v238 + 3852) != 2 || !*(v238 + 2760) && (!*(v12 + 754540) || !*(v12 + 926856)))
  {
    goto LABEL_890;
  }

  *(v12 + 212008) = *(v12 + 74924);
  memcpy((v12 + 212024), *(v238 + 2064), 0x1FFFCuLL);
  memcpy((v12 + 343092), *(v238 + 2072), 0x1FFFCuLL);
  memcpy((v12 + 474160), *(v238 + 2080), 0x1FFFCuLL);
  memcpy((v12 + 605228), *(v238 + 2088), 0x1FFFCuLL);
  *(v12 + 736296) = *(v12 + 176484);
  *(v12 + 736298) = *(v12 + 176486);
  memcpy(*v238, *(v867 + 1252), *(v867 + 1036) * *(v867 + 1028));
  *(v238 + 8) = *(v839 + 46);
  *(v238 + 12) = *(v839 + 52);
  memcpy((v12 + 736320), *(v839 + 200), 0x7FCuLL);
  vp9_pack_bitstream(v12, v836, v837);
  *(v12 + 74924) = *(v12 + 212008);
  memcpy(*(v842 + 2064), (v12 + 212024), 0x1FFFCuLL);
  memcpy(*(v842 + 2072), (v12 + 343092), 0x1FFFCuLL);
  v77 = v838;
  memcpy(*(v842 + 2080), (v12 + 474160), 0x1FFFCuLL);
  memcpy(*(v842 + 2088), (v12 + 605228), 0x1FFFCuLL);
  *(v12 + 176484) = *(v12 + 736296);
  *(v12 + 176486) = *(v12 + 736298);
  v237 = (v12 + 198888);
  v85 = v839;
  v20 = v841;
  memcpy(*(v867 + 1252), *v842, *(v867 + 1036) * *(v867 + 1028));
  *(v839 + 46) = *(v842 + 8);
  *(v839 + 52) = *(v842 + 12);
  v238 = v842;
  memcpy(*(v839 + 200), (v12 + 736320), 0x7FCuLL);
  v16 = v846;
  if (!vp9_encodedframe_overshoot(v12, 8 * *v840, __base))
  {
    goto LABEL_890;
  }

  v814 = *__base;
  *(v867 + 1048) = *__base;
  *v858 = 0;
  *(v867 + 1060) = 0;
  v815 = *(v838 + 572);
  if (v815)
  {
    *(v867 + 1060) = v815;
    *(v867 + 1056) = v815;
    vp9_init_quantizer(v12);
    v814 = *__base;
  }

  vp9_set_variance_partition_thresholds(v12, v814, 0);
  v817 = *(v842 + 3920);
  if (!*(v842 + 3976) && !*(v842 + 3980))
  {
    goto LABEL_887;
  }

  v818 = (*(v867 + 1036) * *(v867 + 1028));
  if (v818 < 1)
  {
    goto LABEL_887;
  }

  if (v818 < 4)
  {
    v819 = 0;
    goto LABEL_896;
  }

  if (v818 < 0x10)
  {
    v819 = 0;
    goto LABEL_875;
  }

  v819 = v818 & 0x7FFFFFF0;
  v825 = (v817 + 7);
  v826.i64[0] = 0x707070707070707;
  v826.i64[1] = 0x707070707070707;
  v827 = v819;
  while (2)
  {
    v816 = vceqq_s8(*(v825 - 7), v826);
    if (v816.i8[0])
    {
      *(v825 - 7) = 0;
      if ((v816.i8[1] & 1) == 0)
      {
        goto LABEL_842;
      }

LABEL_858:
      *(v825 - 6) = 0;
      if ((v816.i8[2] & 1) == 0)
      {
        goto LABEL_859;
      }

LABEL_843:
      *(v825 - 5) = 0;
      if ((v816.i8[3] & 1) == 0)
      {
        goto LABEL_844;
      }

LABEL_860:
      *(v825 - 4) = 0;
      if ((v816.i8[4] & 1) == 0)
      {
        goto LABEL_861;
      }

LABEL_845:
      *(v825 - 3) = 0;
      if ((v816.i8[5] & 1) == 0)
      {
        goto LABEL_846;
      }

LABEL_862:
      *(v825 - 2) = 0;
      if ((v816.i8[6] & 1) == 0)
      {
        goto LABEL_863;
      }

LABEL_847:
      *(v825 - 1) = 0;
      if ((v816.i8[7] & 1) == 0)
      {
        goto LABEL_848;
      }

LABEL_864:
      *v825 = 0;
      if ((v816.i8[8] & 1) == 0)
      {
        goto LABEL_865;
      }

LABEL_849:
      v825[1] = 0;
      if ((v816.i8[9] & 1) == 0)
      {
        goto LABEL_850;
      }

LABEL_866:
      v825[2] = 0;
      if ((v816.i8[10] & 1) == 0)
      {
        goto LABEL_867;
      }

LABEL_851:
      v825[3] = 0;
      if ((v816.i8[11] & 1) == 0)
      {
        goto LABEL_852;
      }

LABEL_868:
      v825[4] = 0;
      if ((v816.i8[12] & 1) == 0)
      {
        goto LABEL_869;
      }

LABEL_853:
      v825[5] = 0;
      if ((v816.i8[13] & 1) == 0)
      {
        goto LABEL_854;
      }

LABEL_870:
      v825[6] = 0;
      if ((v816.i8[14] & 1) == 0)
      {
        goto LABEL_871;
      }

LABEL_855:
      v825[7] = 0;
      if (v816.i8[15])
      {
        goto LABEL_872;
      }
    }

    else
    {
      if (v816.i8[1])
      {
        goto LABEL_858;
      }

LABEL_842:
      if (v816.i8[2])
      {
        goto LABEL_843;
      }

LABEL_859:
      if (v816.i8[3])
      {
        goto LABEL_860;
      }

LABEL_844:
      if (v816.i8[4])
      {
        goto LABEL_845;
      }

LABEL_861:
      if (v816.i8[5])
      {
        goto LABEL_862;
      }

LABEL_846:
      if (v816.i8[6])
      {
        goto LABEL_847;
      }

LABEL_863:
      if (v816.i8[7])
      {
        goto LABEL_864;
      }

LABEL_848:
      if (v816.i8[8])
      {
        goto LABEL_849;
      }

LABEL_865:
      if (v816.i8[9])
      {
        goto LABEL_866;
      }

LABEL_850:
      if (v816.i8[10])
      {
        goto LABEL_851;
      }

LABEL_867:
      if (v816.i8[11])
      {
        goto LABEL_868;
      }

LABEL_852:
      if (v816.i8[12])
      {
        goto LABEL_853;
      }

LABEL_869:
      if (v816.i8[13])
      {
        goto LABEL_870;
      }

LABEL_854:
      if (v816.i8[14])
      {
        goto LABEL_855;
      }

LABEL_871:
      if (v816.i8[15])
      {
LABEL_872:
        v825[8] = 0;
      }
    }

    v825 += 16;
    v827 -= 16;
    if (v827)
    {
      continue;
    }

    break;
  }

  if (v819 == v818)
  {
    goto LABEL_887;
  }

  if ((v818 & 0xC) == 0)
  {
    goto LABEL_896;
  }

LABEL_875:
  v828 = v819;
  v819 = v818 & 0x7FFFFFFC;
  v829 = v828 - v819;
  v830 = (v828 + v817 + 1);
  while (2)
  {
    v816.i32[0] = *(v830 - 1);
    *v816.i8 = vceq_s16(*&vmovl_u8(*v816.i8), 0x7000700070007);
    if (v816.i8[0])
    {
      *(v830 - 1) = 0;
      if ((v816.i8[2] & 1) == 0)
      {
        goto LABEL_879;
      }

LABEL_883:
      *v830 = 0;
      if ((v816.i8[4] & 1) == 0)
      {
        goto LABEL_884;
      }

LABEL_880:
      v830[1] = 0;
      if (v816.i8[6])
      {
        goto LABEL_885;
      }
    }

    else
    {
      if (v816.i8[2])
      {
        goto LABEL_883;
      }

LABEL_879:
      if (v816.i8[4])
      {
        goto LABEL_880;
      }

LABEL_884:
      if (v816.i8[6])
      {
LABEL_885:
        v830[2] = 0;
      }
    }

    v830 += 4;
    v829 += 4;
    if (v829)
    {
      continue;
    }

    break;
  }

  if (v819 == v818)
  {
    goto LABEL_887;
  }

LABEL_896:
  v832 = v818 - v819;
  v833 = (v817 + v819);
  do
  {
    if (*v833 == 7)
    {
      *v833 = 0;
    }

    ++v833;
    --v832;
  }

  while (v832);
LABEL_887:
  if (*(v838 + 304) == 3)
  {
    v831 = *(v842 + 3968);
    bzero(*(v842 + 3920), *(v867 + 1036) * *(v867 + 1028));
    v238 = v842;
    memset(*(v831 + 40), 255, *(v867 + 1036) * *(v867 + 1028));
    *(v831 + 8) = 0;
    v237 = (v12 + 198888);
    *(v839 + 72) = 0;
    *(v839 + 74) = 0;
  }

  apply_active_map(v12);
  vp9_encode_frame(v12);
LABEL_890:
  v256 = v867;
  if (*(v77 + 304) == 3 && *(v85 + 72) && *(v867 + 992) && !*(v867 + 1008) && *(*(v238 + 3968) + 132))
  {
    vp9_cyclic_refresh_postencode(v12, *v232.i64, *v233.i64, *v13.i8);
    v256 = v867;
  }

LABEL_172:
  if (*(v256 + 1004))
  {
    v257 = *(v77 + 100) + 24;
    v258 = *(v12 + 4 * v16[8] + 172048);
    v259 = *(v256 + 660);
    if ((v259 & 0x80000000) == 0)
    {
      v260 = (v257 + 224 * v259);
      if (*v260 >= 1)
      {
        --*v260;
      }
    }

    *(v256 + 660) = v258;
    ++*(v257 + 224 * v258);
  }

  if (*(v238 + 2280) && *(v238 + 2268) == 1)
  {
    v261 = *(v77 + 596);
    v262 = *(v77 + 100) + 224 * *(v256 + 660);
    v263 = *(v261 + 56);
    v265 = *(v261 + 12);
    v264 = *(v261 + 16);
    v266 = *(v262 + 144);
    v267 = *(v262 + 104);
    v268 = *(v261 + 8);
    if (*(v256 + 40))
    {
      sse = highbd_get_sse(v263, v264, v266, v267, v268, v265, *v232.i64, v233, v13, v14, v15);
    }

    else
    {
      sse = get_sse(v263, v264, v266, v267, v268, v265, *v232.i64, *v233.i64, v13, v14);
    }

    *v237 = sse;
    v256 = v867;
  }

  v273 = *(v256 + 992);
  if (!v273)
  {
    v16[17] = 1;
  }

  v274 = *(v77 + 100) + 224 * *(v256 + 660);
  v275 = (v274 + 88);
  *(v256 + 44) = v274 + 88;
  *&v276 = *v256;
  *(&v276 + 1) = *(v256 + 16);
  *(v274 + 220) = v276;
  if (!v273 || v16[17] || v16[18])
  {
    v277 = 1;
    if (*(v12 + 754540))
    {
LABEL_196:
      if (*v236 == 1)
      {
        v277 = *(v12 + 926396) == 0;
      }
    }
  }

  else
  {
    v277 = v16[19] != 0;
    if (*(v12 + 754540))
    {
      goto LABEL_196;
    }
  }

  if (*(v256 + 1004))
  {
    *(v85 + 24) = 0;
    if (*(v238 + 2808))
    {
      goto LABEL_200;
    }

    goto LABEL_201;
  }

  v283 = *(v20 + 231);
  if (v283 == 2 || !v277 && v283 == 1)
  {
    *(v85 + 24) = 0;
    goto LABEL_427;
  }

  if (*(v865 + 116))
  {
    *(v85 + 24) = 0;
  }

  else
  {
    if (!*(v238 + 2292))
    {
      if (!v273 && !*(v238 + 2276))
      {
        *(v85 + 28) = 0;
      }

      vp9_pick_filter_level(*(v77 + 596), v12, *(v238 + 3628));
      v695 = *(v85 + 24);
      *(v85 + 28) = v695;
      v256 = v867;
      if (!v277 || v695 < 1)
      {
        goto LABEL_426;
      }

      vp9_build_mask_frame(v12 + 171696, v695, 0);
      v256 = v867;
      v696 = *(v12 + 933940);
      v697 = *(v867 + 44);
      v698 = *(v85 + 24);
      if (v696 < 2)
      {
        if (!v698)
        {
          goto LABEL_426;
        }

        loop_filter_rows(v697, v12 + 171696, v12 + 74112, 0, *(v867 + 1028), 0);
      }

      else
      {
        vp9_loop_filter_frame_mt(v697, (v12 + 171696), (v12 + 74112), v698, 0, 0, *(v12 + 933944), v696, v12 + 933960);
      }

      v256 = v867;
      goto LABEL_426;
    }

    *(v85 + 24) = 0;
  }

LABEL_426:
  v275 = *(v256 + 44);
LABEL_427:
  if (v275[26] >= 96)
  {
    v687 = 96;
  }

  else
  {
    v687 = v275[26];
  }

  extend_frame(v275, v687);
  if (*(v238 + 2808))
  {
LABEL_200:
    *(v12 + 212008) = *(v12 + 74924);
    memcpy((v12 + 212024), *(v238 + 2064), 0x1FFFCuLL);
    memcpy((v12 + 343092), *(v238 + 2072), 0x1FFFCuLL);
    memcpy((v12 + 474160), *(v238 + 2080), 0x1FFFCuLL);
    memcpy((v12 + 605228), *(v238 + 2088), 0x1FFFCuLL);
    *(v12 + 736296) = *(v12 + 176484);
    *(v12 + 736298) = *(v12 + 176486);
    memcpy(*v238, *(v867 + 1252), *(v867 + 1036) * *(v867 + 1028));
    *(v238 + 8) = *(v85 + 46);
    *(v238 + 12) = *(v85 + 52);
    memcpy((v12 + 736320), *(v85 + 200), 0x7FCuLL);
  }

LABEL_201:
  vp9_pack_bitstream(v12, v836, v837);
  if (*v864)
  {
    v278 = *(v20 + 295);
    if (v278)
    {
      v279 = *(v867 + 1048);
      *__base = 8 * *v840;
      *&__base[8] = v279;
      if (v278(*(v20 + 247), __base) == 1)
      {
        vpx_internal_error(v12 + 171696, 1, "vp9_extrc_update_encodeframe_result() failed");
      }
    }
  }

  v280 = v867;
  if (*(v238 + 2808))
  {
    if (*(v867 + 1048) < *(v238 + 2432) && !*(v12 + 754544))
    {
      v284 = post_encode_drop_cbr(v12, v840);
      v280 = v867;
      if (v284)
      {
        *(v12 + 74924) = *(v12 + 212008);
        memcpy(*(v238 + 2064), (v12 + 212024), 0x1FFFCuLL);
        memcpy(*(v238 + 2072), (v12 + 343092), 0x1FFFCuLL);
        memcpy(*(v238 + 2080), (v12 + 474160), 0x1FFFCuLL);
        memcpy(*(v238 + 2088), (v12 + 605228), 0x1FFFCuLL);
        *(v12 + 176484) = *(v12 + 736296);
        *(v12 + 176486) = *(v12 + 736298);
        memcpy(*(v867 + 1252), *v238, *(v867 + 1036) * *(v867 + 1028));
        *(v85 + 46) = *(v238 + 8);
        *(v85 + 52) = *(v238 + 12);
        memcpy(*(v85 + 200), (v12 + 736320), 0x7FCuLL);
        return;
      }
    }
  }

  *v20 = 0;
  *(v12 + 4 * *(v12 + 754544) + 926604) = 0;
  v281 = *(v12 + 754544);
  if (v281 == *(v12 + 754552) - 1)
  {
    ++*(v12 + 927128);
  }

  if (!*(v12 + 754548))
  {
    v282 = 194512;
    if (v16[17])
    {
      goto LABEL_257;
    }

    if (v16[18])
    {
      v282 = 194516;
      goto LABEL_257;
    }

    if (v16[19])
    {
      v282 = 194520;
LABEL_257:
      *(v12 + 4 * v281 + 926916) = *(v12 + v282);
    }
  }

  if (*(v85 + 73))
  {
    v299 = *(v280 + 1028);
    if (v299 >= 1)
    {
      v300 = *(v280 + 1036);
      if (v300 >= 1)
      {
        v301 = 0;
        v302 = *(v280 + 1252);
        v303 = *(v280 + 1196);
        do
        {
          if (v300 >= 1)
          {
            v304 = 0;
            do
            {
              *(v302 + v304) = *(*(v303 + 8 * v304) + 4);
              v300 = *(v280 + 1036);
              ++v304;
            }

            while (v304 < v300);
            v299 = *(v280 + 1028);
          }

          v303 += 8 * *(v280 + 1040);
          v302 += v300;
          ++v301;
        }

        while (v301 < v299);
      }
    }
  }

  if (*(v280 + 992) && !*(v280 + 1008))
  {
    release_scaled_references(v12);
    v280 = v867;
    v305 = *(v77 + 100);
    if (*v864)
    {
      goto LABEL_270;
    }

    goto LABEL_279;
  }

  v305 = *(v77 + 100);
  if (!*v864)
  {
    goto LABEL_279;
  }

LABEL_270:
  if ((*(v20 + 255) & 2) == 0 || !*(v20 + 311))
  {
LABEL_279:
    if (*(v238 + 2860))
    {
      *(v16 + 7) = vrev64_s32(*(v16 + 7));
    }

    else if (*(v280 + 1004))
    {
      v16[6] = v16[8];
      v314 = v226[51];
      v315 = *v226;
      if (v314 >= 2)
      {
        memmove(v226, (v12 + 747968), 4 * (v314 - 1));
        v280 = v867;
        v314 = v226[51];
      }

      v16[8] = v315;
      v226[51] = v314 - 1;
      v238 = v842;
    }

    if (*(v280 + 992))
    {
      v316 = v16[18];
      if (v316 && *(v238 + 2292) && !*(v12 + 754540))
      {
        v653 = v305 + 24;
        v654 = v16[8];
        v655 = *(v280 + 660);
        v656 = *(v12 + 172048 + 4 * v654);
        if ((v656 & 0x80000000) == 0)
        {
          v657 = (v653 + 224 * v656);
          if (*v657 >= 1)
          {
            --*v657;
          }
        }

        *(v12 + 172048 + 4 * v654) = v655;
        ++*(v653 + 224 * v655);
        *(v16 + 7) = vrev64_s32(*(v16 + 7));
        if (!v16[17])
        {
          goto LABEL_318;
        }
      }

      else
      {
        if (v16[19])
        {
          v317 = v16[8];
          v319 = v226[50];
          v318 = v226[51];
          if (v318 >= 1)
          {
            memmove((v12 + 747968), v226, 4 * v318);
            v280 = v867;
            LODWORD(v318) = v226[51];
          }

          *v226 = v317;
          v226[51] = v318 + 1;
          v320 = v305 + 24;
          v321 = *(v280 + 660);
          v322 = *(v12 + 172048 + 4 * v319);
          if ((v322 & 0x80000000) == 0)
          {
            v323 = (v320 + 224 * v322);
            if (*v323 >= 1)
            {
              --*v323;
            }
          }

          *(v12 + 172048 + 4 * v319) = v321;
          ++*(v320 + 224 * v321);
          *(v12 + 739232) = *(v12 + 739184);
          v16[8] = v319;
          v316 = v16[18];
          v238 = v842;
        }

        if (v316)
        {
          v324 = v305 + 24;
          v325 = v16[7];
          v326 = *(v280 + 660);
          v327 = *(v12 + 172048 + 4 * v325);
          if ((v327 & 0x80000000) == 0)
          {
            v328 = (v324 + 224 * v327);
            if (*v328 >= 1)
            {
              --*v328;
            }
          }

          *(v12 + 172048 + 4 * v325) = v326;
          ++*(v324 + 224 * v326);
          if (*(v238 + 2292))
          {
            v329 = 18336;
          }

          else
          {
            v329 = 18288;
          }

          *(v12 + 739216) = *(v12 + (v329 | 0xB0000u));
        }

        if (!v16[17])
        {
          goto LABEL_318;
        }
      }
    }

    else
    {
      v330 = v305 + 24;
      v331 = v12 + 172048;
      v332 = v16[7];
      v333 = *(v280 + 660);
      v334 = *(v12 + 172048 + 4 * v332);
      if ((v334 & 0x80000000) == 0)
      {
        v335 = (v330 + 224 * v334);
        if (*v335 >= 1)
        {
          --*v335;
        }
      }

      *(v331 + 4 * v332) = v333;
      ++*(v330 + 224 * v333);
      v336 = v16[8];
      v337 = *(v280 + 660);
      v338 = *(v331 + 4 * v336);
      if ((v338 & 0x80000000) == 0)
      {
        v339 = (v330 + 224 * v338);
        if (*v339 >= 1)
        {
          --*v339;
        }
      }

      *(v331 + 4 * v336) = v337;
      ++*(v330 + 224 * v337);
      if (!v16[17])
      {
        goto LABEL_318;
      }
    }

    v340 = v305 + 24;
    v341 = v16[6];
    v342 = *(v280 + 660);
    v343 = *(v12 + 172048 + 4 * v341);
    if ((v343 & 0x80000000) == 0)
    {
      v344 = (v340 + 224 * v343);
      if (*v344 >= 1)
      {
        --*v344;
      }
    }

    *(v12 + 172048 + 4 * v341) = v342;
    ++*(v340 + 224 * v342);
    if (!*(v238 + 2292))
    {
      *(v12 + 739200) = *(v12 + 739184);
    }

LABEL_318:
    if (*(v12 + 4 * *(v866 + 1468) + 743168) == 5)
    {
      v345 = v226[51];
      v346 = *v226;
      if (v345 >= 2)
      {
        memmove(v226, (v12 + 747968), 4 * (v345 - 1));
        v345 = v226[51];
      }

      v16[8] = v346;
      v226[51] = v345 - 1;
    }

    goto LABEL_322;
  }

  v306 = *(v866 + 1468);
  v307 = v12 + 4 * v306;
  if (*(v307 + 743168))
  {
    v308 = *(v307 + 746948);
    if (v308 != -1)
    {
      v309 = v305 + 24;
      v310 = *(v280 + 660);
      v311 = *(v12 + 172048 + 4 * v308);
      if ((v311 & 0x80000000) == 0)
      {
        v312 = (v309 + 224 * v311);
        if (*v312 >= 1)
        {
          --*v312;
        }
      }

      *(v12 + 172048 + 4 * v308) = v310;
      v313 = (v309 + 224 * v310);
      goto LABEL_394;
    }
  }

  else
  {
    v658 = v305 + 24;
    v659 = *(v280 + 660);
    v660 = *(v280 + 68);
    if ((v660 & 0x80000000) == 0)
    {
      v661 = (v658 + 224 * v660);
      if (*v661 >= 1)
      {
        --*v661;
      }
    }

    *(v280 + 68) = v659;
    v313 = (v658 + 224 * v659);
    ++*v313;
    v662 = *(v280 + 72);
    if ((v662 & 0x80000000) == 0)
    {
      v663 = (v658 + 224 * v662);
      if (*v663 >= 1)
      {
        --*v663;
      }
    }

    *(v280 + 72) = v659;
    ++*v313;
    v664 = *(v280 + 76);
    if ((v664 & 0x80000000) == 0)
    {
      v665 = (v658 + 224 * v664);
      if (*v665 >= 1)
      {
        --*v665;
      }
    }

    *(v280 + 76) = v659;
LABEL_394:
    ++*v313;
  }

  v666 = v306 + 1;
  if (v666 < v226[52])
  {
    v667 = v12 + 12 * v666 + 748188;
    *(v16 + 3) = *v667;
    v16[8] = *(v667 + 8);
  }

LABEL_322:
  vp9_denoiser_update_ref_frame(v12);
  if (*(v12 + 754540) && !*(v77 + 232))
  {
    vp9_svc_update_ref_frame(v12);
    v355 = v867;
    if (!*(v867 + 1004))
    {
LABEL_325:
      for (i = 0; i != 4; ++i)
      {
        v357 = 0;
        v358 = *(v12 + 163448) + 2304 * i + 816;
        v359 = 1;
        do
        {
          v360 = 0;
          v361 = v359;
          v362 = 1;
          v363 = v358 + 1152 * v357;
          v364 = v12 + 135744 + 6912 * i + 3456 * v357;
          do
          {
            v365 = (v363 + 576 * v360);
            v366 = (v364 + 1728 * v360);
            *v365 = *v366;
            v365[1] = v366[1];
            v367 = v366[2];
            v365[2] = v367;
            v368 = v366[3] + v367;
            v365[2] = v368;
            v369 = v366[4] + v368;
            v365[2] = v369;
            v370 = v366[5] + v369;
            v365[2] = v370;
            v371 = v366[6] + v370;
            v365[2] = v371;
            v372 = v366[7] + v371;
            v365[2] = v372;
            v373 = v366[8] + v372;
            v365[2] = v373;
            v374 = v366[9] + v373;
            v365[2] = v374;
            v365[2] = v366[10] + v374;
            v365[3] = v366[11];
            v365[4] = v366[12];
            v365[5] = v366[13];
            v375 = v366[14];
            v365[6] = v375;
            v376 = v366[15] + v375;
            v365[6] = v376;
            v377 = v366[16] + v376;
            v365[6] = v377;
            v378 = v366[17] + v377;
            v365[6] = v378;
            v379 = v366[18] + v378;
            v365[6] = v379;
            v380 = v366[19] + v379;
            v365[6] = v380;
            v381 = v366[20] + v380;
            v365[6] = v381;
            v382 = v366[21] + v381;
            v365[6] = v382;
            v365[6] = v366[22] + v382;
            v365[7] = v366[23];
            v365[8] = v366[24];
            v365[9] = v366[25];
            v383 = v366[26];
            v365[10] = v383;
            v384 = v366[27] + v383;
            v365[10] = v384;
            v385 = v366[28] + v384;
            v365[10] = v385;
            v386 = v366[29] + v385;
            v365[10] = v386;
            v387 = v366[30] + v386;
            v365[10] = v387;
            v388 = v366[31] + v387;
            v365[10] = v388;
            v389 = v366[32] + v388;
            v365[10] = v389;
            v390 = v366[33] + v389;
            v365[10] = v390;
            v365[10] = v366[34] + v390;
            v365[11] = v366[35];
            v365[24] = v366[72];
            v365[25] = v366[73];
            v391 = v366[74];
            v365[26] = v391;
            v392 = v366[75] + v391;
            v365[26] = v392;
            v393 = v366[76] + v392;
            v365[26] = v393;
            v394 = v366[77] + v393;
            v365[26] = v394;
            v395 = v366[78] + v394;
            v365[26] = v395;
            v396 = v366[79] + v395;
            v365[26] = v396;
            v397 = v366[80] + v396;
            v365[26] = v397;
            v398 = v366[81] + v397;
            v365[26] = v398;
            v365[26] = v366[82] + v398;
            v365[27] = v366[83];
            v365[28] = v366[84];
            v365[29] = v366[85];
            v399 = v366[86];
            v365[30] = v399;
            v400 = v366[87] + v399;
            v365[30] = v400;
            v401 = v366[88] + v400;
            v365[30] = v401;
            v402 = v366[89] + v401;
            v365[30] = v402;
            v403 = v366[90] + v402;
            v365[30] = v403;
            v404 = v366[91] + v403;
            v365[30] = v404;
            v405 = v366[92] + v404;
            v365[30] = v405;
            v406 = v366[93] + v405;
            v365[30] = v406;
            v365[30] = v366[94] + v406;
            v365[31] = v366[95];
            v365[32] = v366[96];
            v365[33] = v366[97];
            v407 = v366[98];
            v365[34] = v407;
            v408 = v366[99] + v407;
            v365[34] = v408;
            v409 = v366[100] + v408;
            v365[34] = v409;
            v410 = v366[101] + v409;
            v365[34] = v410;
            v411 = v366[102] + v410;
            v365[34] = v411;
            v412 = v366[103] + v411;
            v365[34] = v412;
            v413 = v366[104] + v412;
            v365[34] = v413;
            v414 = v366[105] + v413;
            v365[34] = v414;
            v365[34] = v366[106] + v414;
            v365[35] = v366[107];
            v365[36] = v366[108];
            v365[37] = v366[109];
            v415 = v366[110];
            v365[38] = v415;
            v416 = v366[111] + v415;
            v365[38] = v416;
            v417 = v366[112] + v416;
            v365[38] = v417;
            v418 = v366[113] + v417;
            v365[38] = v418;
            v419 = v366[114] + v418;
            v365[38] = v419;
            v420 = v366[115] + v419;
            v365[38] = v420;
            v421 = v366[116] + v420;
            v365[38] = v421;
            v422 = v366[117] + v421;
            v365[38] = v422;
            v365[38] = v366[118] + v422;
            v365[39] = v366[119];
            v365[40] = v366[120];
            v365[41] = v366[121];
            v423 = v366[122];
            v365[42] = v423;
            v424 = v366[123] + v423;
            v365[42] = v424;
            v425 = v366[124] + v424;
            v365[42] = v425;
            v426 = v366[125] + v425;
            v365[42] = v426;
            v427 = v366[126] + v426;
            v365[42] = v427;
            v428 = v366[127] + v427;
            v365[42] = v428;
            v429 = v366[128] + v428;
            v365[42] = v429;
            v430 = v366[129] + v429;
            v365[42] = v430;
            v365[42] = v366[130] + v430;
            v365[43] = v366[131];
            v365[44] = v366[132];
            v365[45] = v366[133];
            v431 = v366[134];
            v365[46] = v431;
            v432 = v366[135] + v431;
            v365[46] = v432;
            v433 = v366[136] + v432;
            v365[46] = v433;
            v434 = v366[137] + v433;
            v365[46] = v434;
            v435 = v366[138] + v434;
            v365[46] = v435;
            v436 = v366[139] + v435;
            v365[46] = v436;
            v437 = v366[140] + v436;
            v365[46] = v437;
            v438 = v366[141] + v437;
            v365[46] = v438;
            v365[46] = v366[142] + v438;
            v365[47] = v366[143];
            v365[48] = v366[144];
            v365[49] = v366[145];
            v439 = v366[146];
            v365[50] = v439;
            v440 = v366[147] + v439;
            v365[50] = v440;
            v441 = v366[148] + v440;
            v365[50] = v441;
            v442 = v366[149] + v441;
            v365[50] = v442;
            v443 = v366[150] + v442;
            v365[50] = v443;
            v444 = v366[151] + v443;
            v365[50] = v444;
            v445 = v366[152] + v444;
            v365[50] = v445;
            v446 = v366[153] + v445;
            v365[50] = v446;
            v365[50] = v366[154] + v446;
            v365[51] = v366[155];
            v365[52] = v366[156];
            v365[53] = v366[157];
            v447 = v366[158];
            v365[54] = v447;
            v448 = v366[159] + v447;
            v365[54] = v448;
            v449 = v366[160] + v448;
            v365[54] = v449;
            v450 = v366[161] + v449;
            v365[54] = v450;
            v451 = v366[162] + v450;
            v365[54] = v451;
            v452 = v366[163] + v451;
            v365[54] = v452;
            v453 = v366[164] + v452;
            v365[54] = v453;
            v454 = v366[165] + v453;
            v365[54] = v454;
            v365[54] = v366[166] + v454;
            v365[55] = v366[167];
            v365[56] = v366[168];
            v365[57] = v366[169];
            v455 = v366[170];
            v365[58] = v455;
            v456 = v366[171] + v455;
            v365[58] = v456;
            v457 = v366[172] + v456;
            v365[58] = v457;
            v458 = v366[173] + v457;
            v365[58] = v458;
            v459 = v366[174] + v458;
            v365[58] = v459;
            v460 = v366[175] + v459;
            v365[58] = v460;
            v461 = v366[176] + v460;
            v365[58] = v461;
            v462 = v366[177] + v461;
            v365[58] = v462;
            v365[58] = v366[178] + v462;
            v365[59] = v366[179];
            v365[60] = v366[180];
            v365[61] = v366[181];
            v463 = v366[182];
            v365[62] = v463;
            v464 = v366[183] + v463;
            v365[62] = v464;
            v465 = v366[184] + v464;
            v365[62] = v465;
            v466 = v366[185] + v465;
            v365[62] = v466;
            v467 = v366[186] + v466;
            v365[62] = v467;
            v468 = v366[187] + v467;
            v365[62] = v468;
            v469 = v366[188] + v468;
            v365[62] = v469;
            v470 = v366[189] + v469;
            v365[62] = v470;
            v365[62] = v366[190] + v470;
            v365[63] = v366[191];
            v365[64] = v366[192];
            v365[65] = v366[193];
            v471 = v366[194];
            v365[66] = v471;
            v472 = v366[195] + v471;
            v365[66] = v472;
            v473 = v366[196] + v472;
            v365[66] = v473;
            v474 = v366[197] + v473;
            v365[66] = v474;
            v475 = v366[198] + v474;
            v365[66] = v475;
            v476 = v366[199] + v475;
            v365[66] = v476;
            v477 = v366[200] + v476;
            v365[66] = v477;
            v478 = v366[201] + v477;
            v365[66] = v478;
            v365[66] = v366[202] + v478;
            v365[67] = v366[203];
            v365[68] = v366[204];
            v365[69] = v366[205];
            v479 = v366[206];
            v365[70] = v479;
            v480 = v366[207] + v479;
            v365[70] = v480;
            v481 = v366[208] + v480;
            v365[70] = v481;
            v482 = v366[209] + v481;
            v365[70] = v482;
            v483 = v366[210] + v482;
            v365[70] = v483;
            v484 = v366[211] + v483;
            v365[70] = v484;
            v485 = v366[212] + v484;
            v365[70] = v485;
            v486 = v366[213] + v485;
            v365[70] = v486;
            v365[70] = v366[214] + v486;
            v365[71] = v366[215];
            v365[72] = v366[216];
            v365[73] = v366[217];
            v487 = v366[218];
            v365[74] = v487;
            v488 = v366[219] + v487;
            v365[74] = v488;
            v489 = v366[220] + v488;
            v365[74] = v489;
            v490 = v366[221] + v489;
            v365[74] = v490;
            v491 = v366[222] + v490;
            v365[74] = v491;
            v492 = v366[223] + v491;
            v365[74] = v492;
            v493 = v366[224] + v492;
            v365[74] = v493;
            v494 = v366[225] + v493;
            v365[74] = v494;
            v365[74] = v366[226] + v494;
            v365[75] = v366[227];
            v365[76] = v366[228];
            v365[77] = v366[229];
            v495 = v366[230];
            v365[78] = v495;
            v496 = v366[231] + v495;
            v365[78] = v496;
            v497 = v366[232] + v496;
            v365[78] = v497;
            v498 = v366[233] + v497;
            v365[78] = v498;
            v499 = v366[234] + v498;
            v365[78] = v499;
            v500 = v366[235] + v499;
            v365[78] = v500;
            v501 = v366[236] + v500;
            v365[78] = v501;
            v502 = v366[237] + v501;
            v365[78] = v502;
            v365[78] = v366[238] + v502;
            v365[79] = v366[239];
            v365[80] = v366[240];
            v365[81] = v366[241];
            v503 = v366[242];
            v365[82] = v503;
            v504 = v366[243] + v503;
            v365[82] = v504;
            v505 = v366[244] + v504;
            v365[82] = v505;
            v506 = v366[245] + v505;
            v365[82] = v506;
            v507 = v366[246] + v506;
            v365[82] = v507;
            v508 = v366[247] + v507;
            v365[82] = v508;
            v509 = v366[248] + v508;
            v365[82] = v509;
            v510 = v366[249] + v509;
            v365[82] = v510;
            v365[82] = v366[250] + v510;
            v365[83] = v366[251];
            v365[84] = v366[252];
            v365[85] = v366[253];
            v511 = v366[254];
            v365[86] = v511;
            v512 = v366[255] + v511;
            v365[86] = v512;
            v513 = v366[256] + v512;
            v365[86] = v513;
            v514 = v366[257] + v513;
            v365[86] = v514;
            v515 = v366[258] + v514;
            v365[86] = v515;
            v516 = v366[259] + v515;
            v365[86] = v516;
            v517 = v366[260] + v516;
            v365[86] = v517;
            v518 = v366[261] + v517;
            v365[86] = v518;
            v365[86] = v366[262] + v518;
            v365[87] = v366[263];
            v365[88] = v366[264];
            v365[89] = v366[265];
            v519 = v366[266];
            v365[90] = v519;
            v520 = v366[267] + v519;
            v365[90] = v520;
            v521 = v366[268] + v520;
            v365[90] = v521;
            v522 = v366[269] + v521;
            v365[90] = v522;
            v523 = v366[270] + v522;
            v365[90] = v523;
            v524 = v366[271] + v523;
            v365[90] = v524;
            v525 = v366[272] + v524;
            v365[90] = v525;
            v526 = v366[273] + v525;
            v365[90] = v526;
            v365[90] = v366[274] + v526;
            v365[91] = v366[275];
            v365[92] = v366[276];
            v365[93] = v366[277];
            v527 = v366[278];
            v365[94] = v527;
            v528 = v366[279] + v527;
            v365[94] = v528;
            v529 = v366[280] + v528;
            v365[94] = v529;
            v530 = v366[281] + v529;
            v365[94] = v530;
            v531 = v366[282] + v530;
            v365[94] = v531;
            v532 = v366[283] + v531;
            v365[94] = v532;
            v533 = v366[284] + v532;
            v365[94] = v533;
            v534 = v366[285] + v533;
            v365[94] = v534;
            v365[94] = v366[286] + v534;
            v365[95] = v366[287];
            v365[96] = v366[288];
            v365[97] = v366[289];
            v535 = v366[290];
            v365[98] = v535;
            v536 = v366[291] + v535;
            v365[98] = v536;
            v537 = v366[292] + v536;
            v365[98] = v537;
            v538 = v366[293] + v537;
            v365[98] = v538;
            v539 = v366[294] + v538;
            v365[98] = v539;
            v540 = v366[295] + v539;
            v365[98] = v540;
            v541 = v366[296] + v540;
            v365[98] = v541;
            v542 = v366[297] + v541;
            v365[98] = v542;
            v365[98] = v366[298] + v542;
            v365[99] = v366[299];
            v365[100] = v366[300];
            v365[101] = v366[301];
            v543 = v366[302];
            v365[102] = v543;
            v544 = v366[303] + v543;
            v365[102] = v544;
            v545 = v366[304] + v544;
            v365[102] = v545;
            v546 = v366[305] + v545;
            v365[102] = v546;
            v547 = v366[306] + v546;
            v365[102] = v547;
            v548 = v366[307] + v547;
            v365[102] = v548;
            v549 = v366[308] + v548;
            v365[102] = v549;
            v550 = v366[309] + v549;
            v365[102] = v550;
            v365[102] = v366[310] + v550;
            v365[103] = v366[311];
            v365[104] = v366[312];
            v365[105] = v366[313];
            v551 = v366[314];
            v365[106] = v551;
            v552 = v366[315] + v551;
            v365[106] = v552;
            v553 = v366[316] + v552;
            v365[106] = v553;
            v554 = v366[317] + v553;
            v365[106] = v554;
            v555 = v366[318] + v554;
            v365[106] = v555;
            v556 = v366[319] + v555;
            v365[106] = v556;
            v557 = v366[320] + v556;
            v365[106] = v557;
            v558 = v366[321] + v557;
            v365[106] = v558;
            v365[106] = v366[322] + v558;
            v365[107] = v366[323];
            v365[108] = v366[324];
            v365[109] = v366[325];
            v559 = v366[326];
            v365[110] = v559;
            v560 = v366[327] + v559;
            v365[110] = v560;
            v561 = v366[328] + v560;
            v365[110] = v561;
            v562 = v366[329] + v561;
            v365[110] = v562;
            v563 = v366[330] + v562;
            v365[110] = v563;
            v564 = v366[331] + v563;
            v365[110] = v564;
            v565 = v366[332] + v564;
            v365[110] = v565;
            v566 = v366[333] + v565;
            v365[110] = v566;
            v365[110] = v366[334] + v566;
            v365[111] = v366[335];
            v365[112] = v366[336];
            v365[113] = v366[337];
            v567 = v366[338];
            v365[114] = v567;
            v568 = v366[339] + v567;
            v365[114] = v568;
            v569 = v366[340] + v568;
            v365[114] = v569;
            v570 = v366[341] + v569;
            v365[114] = v570;
            v571 = v366[342] + v570;
            v365[114] = v571;
            v572 = v366[343] + v571;
            v365[114] = v572;
            v573 = v366[344] + v572;
            v365[114] = v573;
            v574 = v366[345] + v573;
            v365[114] = v574;
            v365[114] = v366[346] + v574;
            v365[115] = v366[347];
            v365[116] = v366[348];
            v365[117] = v366[349];
            v575 = v366[350];
            v365[118] = v575;
            v576 = v366[351] + v575;
            v365[118] = v576;
            v577 = v366[352] + v576;
            v365[118] = v577;
            v578 = v366[353] + v577;
            v365[118] = v578;
            v579 = v366[354] + v578;
            v365[118] = v579;
            v580 = v366[355] + v579;
            v365[118] = v580;
            v581 = v366[356] + v580;
            v365[118] = v581;
            v582 = v366[357] + v581;
            v365[118] = v582;
            v365[118] = v366[358] + v582;
            v365[119] = v366[359];
            v365[120] = v366[360];
            v365[121] = v366[361];
            v583 = v366[362];
            v365[122] = v583;
            v584 = v366[363] + v583;
            v365[122] = v584;
            v585 = v366[364] + v584;
            v365[122] = v585;
            v586 = v366[365] + v585;
            v365[122] = v586;
            v587 = v366[366] + v586;
            v365[122] = v587;
            v588 = v366[367] + v587;
            v365[122] = v588;
            v589 = v366[368] + v588;
            v365[122] = v589;
            v590 = v366[369] + v589;
            v365[122] = v590;
            v365[122] = v366[370] + v590;
            v365[123] = v366[371];
            v365[124] = v366[372];
            v365[125] = v366[373];
            v591 = v366[374];
            v365[126] = v591;
            v592 = v366[375] + v591;
            v365[126] = v592;
            v593 = v366[376] + v592;
            v365[126] = v593;
            v594 = v366[377] + v593;
            v365[126] = v594;
            v595 = v366[378] + v594;
            v365[126] = v595;
            v596 = v366[379] + v595;
            v365[126] = v596;
            v597 = v366[380] + v596;
            v365[126] = v597;
            v598 = v366[381] + v597;
            v365[126] = v598;
            v365[126] = v366[382] + v598;
            v365[127] = v366[383];
            v365[128] = v366[384];
            v365[129] = v366[385];
            v599 = v366[386];
            v365[130] = v599;
            v600 = v366[387] + v599;
            v365[130] = v600;
            v601 = v366[388] + v600;
            v365[130] = v601;
            v602 = v366[389] + v601;
            v365[130] = v602;
            v603 = v366[390] + v602;
            v365[130] = v603;
            v604 = v366[391] + v603;
            v365[130] = v604;
            v605 = v366[392] + v604;
            v365[130] = v605;
            v606 = v366[393] + v605;
            v365[130] = v606;
            v365[130] = v366[394] + v606;
            v365[131] = v366[395];
            v365[132] = v366[396];
            v365[133] = v366[397];
            v607 = v366[398];
            v365[134] = v607;
            v608 = v366[399] + v607;
            v365[134] = v608;
            v609 = v366[400] + v608;
            v365[134] = v609;
            v610 = v366[401] + v609;
            v365[134] = v610;
            v611 = v366[402] + v610;
            v365[134] = v611;
            v612 = v366[403] + v611;
            v365[134] = v612;
            v613 = v366[404] + v612;
            v365[134] = v613;
            v614 = v366[405] + v613;
            v365[134] = v614;
            v365[134] = v366[406] + v614;
            v365[135] = v366[407];
            v365[136] = v366[408];
            v365[137] = v366[409];
            v615 = v366[410];
            v365[138] = v615;
            v616 = v366[411] + v615;
            v365[138] = v616;
            v617 = v366[412] + v616;
            v365[138] = v617;
            v618 = v366[413] + v617;
            v365[138] = v618;
            v619 = v366[414] + v618;
            v365[138] = v619;
            v620 = v366[415] + v619;
            v365[138] = v620;
            v621 = v366[416] + v620;
            v365[138] = v621;
            v622 = v366[417] + v621;
            v365[138] = v622;
            v365[138] = v366[418] + v622;
            v365[139] = v366[419];
            v365[140] = v366[420];
            v365[141] = v366[421];
            v623 = v366[422];
            v365[142] = v623;
            v624 = v366[423] + v623;
            v365[142] = v624;
            v625 = v366[424] + v624;
            v365[142] = v625;
            v626 = v366[425] + v625;
            v365[142] = v626;
            v627 = v366[426] + v626;
            v365[142] = v627;
            v628 = v366[427] + v627;
            v365[142] = v628;
            v629 = v366[428] + v628;
            v365[142] = v629;
            v630 = v366[429] + v629;
            v365[142] = v630;
            v631 = v362;
            v365[142] = v366[430] + v630;
            v365[143] = v366[431];
            v360 = 1;
            v362 = 0;
          }

          while ((v631 & 1) != 0);
          v359 = 0;
          v357 = 1;
        }

        while ((v361 & 1) != 0);
      }

      v238 = v842;
      if (!*(v77 + 76) && !*(v77 + 80))
      {
        if (*(v355 + 992) && !*(v355 + 1008))
        {
          vp9_adapt_mode_probs(v12 + 171696);
          vp9_adapt_mv_probs(v12 + 171696, *(v867 + 1012));
        }

        vp9_adapt_coef_probs(v12 + 171696);
        v355 = v867;
      }
    }
  }

  else
  {
    v355 = v867;
    if (!*(v867 + 1004))
    {
      goto LABEL_325;
    }
  }

  v16[20] = 0;
  *(v12 + 927160) = *(v12 + 927160) & 0xFFFFFFF9 | (2 * (v16[18] == 1)) | (4 * (v16[19] == 1));
  v632 = *(v12 + 172048 + 4 * v16[7]);
  v633 = *(v12 + 172048 + 4 * v16[6]);
  v634 = *(v12 + 172048 + 4 * v16[8]);
  if (v632 == v633)
  {
    v635 = 5;
  }

  else
  {
    v635 = 7;
  }

  if (*(v238 + 2244) == 0x7FFFFFFF && *(v12 + 754556) == 1 && *(v12 + 754552) == 1)
  {
    v635 = 5;
  }

  v636 = v634 == v633 || v632 == v634;
  v637 = v635 & 3;
  if (!v636)
  {
    v637 = v635;
  }

  *(v238 + 3224) = v637;
  *(v355 + 988) = *(v355 + 992);
  vp9_rc_postencode_update(v12, *v840, v347, v348, v349, v350, v351, v352, v353, v354);
  v638 = v867;
  if (*(v20 + 19) && !*(v77 + 232))
  {
    if (*(v867 + 992))
    {
      if (!*(v867 + 1008) && (!*(v12 + 754540) || !*(v12 + 13936 * *(v12 + 754548) + 772756) && *(v12 + 754544) == *(v12 + 754552) - 1))
      {
        vp9_compute_frame_low_motion(v12);
        v638 = v867;
      }

      goto LABEL_352;
    }

    v642 = *v840;
    if (*v840 <= 1)
    {
      v642 = 1;
    }

    *v840 = v642;
  }

  else
  {
LABEL_352:
    v639 = *(v638 + 992);
    v640 = *v840;
    if (*v840 <= 1)
    {
      v640 = 1;
    }

    *v840 = v640;
    if (v639)
    {
      v641 = *(v12 + 927160) & 0xFFFFFFFE;
      goto LABEL_366;
    }
  }

  v641 = *(v12 + 927160) | 1;
LABEL_366:
  *v835 = v641;
  *(v839 + 73) = 0;
  *(v839 + 41) = 0;
  *(v638 + 24) = *(v638 + 8);
  v643 = *(v638 + 996);
  if (*(v638 + 1004))
  {
    if (v643)
    {
      if (!*(v12 + 754540))
      {
        goto LABEL_374;
      }

      goto LABEL_372;
    }
  }

  else
  {
    *(v638 + 1000) = v643;
    *(v638 + 52) = *(v638 + 60);
    if (v643)
    {
      v644 = *(v638 + 1148);
      v645 = *(v638 + 1204);
      v646 = *(v638 + 1132);
      *(v638 + 1148) = v646;
      *(v638 + 1132) = v644;
      v647 = *(v638 + 1040);
      *(v638 + 1140) = v644 + 68 * v647 + 68;
      *(v638 + 1156) = v646 + 68 * v647 + 68;
      v648 = *(v638 + 1188);
      *(v638 + 1204) = v648;
      *(v638 + 1188) = v645;
      v647 *= 8;
      *(v638 + 1196) = v645 + v647 + 8;
      *(v638 + 1212) = v648 + v647 + 8;
      if (!*(v12 + 754540))
      {
        goto LABEL_374;
      }

LABEL_372:
      v649 = *(v12 + 754544);
      v650 = *(v12 + 754552);
      v651 = v12 + 13936 * *(v12 + 754556) * v649 + 758936;
      *(v651 + 13816) = *(v12 + 13936 * *(v12 + 754556) * v649 + 772752) + 1;
      ++*(v651 + 13824);
      if (v649 == v650 - 1)
      {
        ++*(v12 + 926392);
      }

LABEL_374:
      ++*v77;
    }
  }

  ++*(v77 + 4);
  if (*(v12 + 754540))
  {
    v652 = *(v12 + 754544);
    *(v12 + 13936 * (*(v12 + 754548) + *(v12 + 754556) * v652) + 772764) = *(v638 + 992);
    *(v12 + 4 * v652 + 926952) = 0;
  }

  *(v12 + 754336) = 0;
  *(v12 + 926993) = *(v638 + 1008);
  *(v12 + 926992) = 0;
}

uint64_t qsort_comp(_DWORD *a1, _DWORD *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

_DWORD *svc_twostage_scale(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, int8x8_t a9, int8x8_t a10)
{
  if (*a2 == 8 * a1[330] && a2[1] == 8 * a1[328])
  {
    return a2;
  }

  v16 = a1[4540];
  if (v16 == 8)
  {
    vp9_scale_and_extend_frame_neon(a2, a4, a7, a8, a9, a10);
    vp9_scale_and_extend_frame_neon(a4, a3, a5, a6, v17, v18);
  }

  else
  {
    scale_and_extend_frame(a2, a4, v16, a7, a8);
    scale_and_extend_frame(a4, a3, a1[4540], a5, a6);
  }

  return a3;
}

char *apply_roi_map(char *result)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(result + 47518) == 2 && *(result + 47514) >= 5)
  {
    v1 = result + 942152;
    if (result[942152])
    {
      v2 = result + 738544;
      v3 = result + 173008;
      v4 = result + 942240;
      v5 = *(result + 58893);
      v15[0] = *(result + 58892);
      v15[1] = v5;
      *(result + 44118) = 65793;
      *(result + 176488) = 0u;
      *(result + 176504) = 0u;
      *(result + 176520) = 0u;
      *(result + 176536) = 0u;
      v6 = result + 176552;
      *(result + 176552) = 0u;
      *(result + 176568) = 0u;
      *(result + 44146) = 0;
      result = memcpy(*(result + 92528), *(result + 117770), *(result + 43254) * *(result + 43252));
      v7 = 0;
      for (i = v3 + 3486; ; i += 4)
      {
        v9 = *(v4 - 16);
        v10 = v9 < 0;
        if (v9 < 0)
        {
          v9 = -v9;
        }

        v11 = quantizer_to_qindex[v9];
        if (v10)
        {
          v12 = -v11;
        }

        else
        {
          v12 = v11;
        }

        v13 = *&v6[4 * v7] & 0xFFFFFFFC;
        *&v6[4 * v7] = v13;
        if (v12)
        {
          v13 |= 1u;
          *&v6[4 * v7] = v13;
          *(i - 3) = v12;
        }

        if (*(v4 - 8))
        {
          v13 |= 2u;
          *&v6[4 * v7] = v13;
          *(i - 2) = *(v4 - 8);
        }

        if (*v4)
        {
          v13 |= 8u;
          *&v6[4 * v7] = v13;
          *i = 0;
        }

        v14 = *(v15 + v7);
        if (v14 < 0)
        {
          goto LABEL_6;
        }

        if (v14 == 2)
        {
          if (*v2)
          {
            LOWORD(v14) = 2;
            if ((v2[246] & 2) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            LOWORD(v14) = 1;
            *(v15 + v7) = 1;
            if ((v2[246] & 2) == 0)
            {
              goto LABEL_6;
            }
          }
        }

        else if (v14 == 3)
        {
          if (v2[349])
          {
            goto LABEL_6;
          }

          LOWORD(v14) = 3;
        }

        *&v6[4 * v7] = v13 | 4;
        *(i - 1) = v14;
LABEL_6:
        ++v7;
        ++v4;
        if (v7 == 8)
        {
          *v1 = 1;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t apply_active_map(uint64_t result)
{
  if (!*(result + 172972) || *(result + 172988))
  {
    v1 = (result + 740284);
    *(result + 740280) = 0x100000000;
    goto LABEL_4;
  }

  v1 = (result + 740284);
  if (*(result + 740284))
  {
    if (*(result + 740280))
    {
      v2 = *(result + 173008);
      v3 = *(result + 173016);
      if (v3 * v2 >= 1)
      {
        v4 = 0;
        v5 = *(result + 740224);
        v6 = *(result + 740288);
        do
        {
          if (!*(v5 + v4))
          {
            *(v5 + v4) = *(v6 + v4);
            v2 = *(result + 173008);
            v3 = *(result + 173016);
          }

          ++v4;
        }

        while (v4 < v2 * v3);
      }

      *(result + 176472) = 257;
      *(result + 176474) = 1;
      *(result + 176580) |= 0xAu;
      *(result + 176546) = -63;
      goto LABEL_6;
    }

LABEL_4:
    *(result + 176580) &= 0xFFFFFFF5;
    if (*(result + 176472))
    {
      *(result + 176473) = 257;
    }

LABEL_6:
    *v1 = 0;
  }

  return result;
}

uint64_t vp9_adapt_coef_probs(uint64_t result)
{
  if (*(result + 1276))
  {
    v1 = 112;
    if (!*(result + 1292))
    {
      if (*(result + 1272))
      {
        v1 = 112;
      }

      else
      {
        v1 = 128;
      }
    }
  }

  else
  {
    v1 = 112;
  }

  v2 = 0;
  v3 = 0;
  v4 = result + 14980;
  v5 = result + 5848;
  v6 = result + 15124;
  v7 = result + 6424;
  v8 = 174;
  v9 = 282;
  v176 = result;
  do
  {
    v178 = v3;
    v179 = v2;
    v10 = 0;
    v11 = *(result + 4912);
    v12 = *(result + 4904) + v2;
    v13 = 2044 * *(result + 4920);
    v177 = v8;
    v180 = v11 + v9 + v13;
    v181 = v11 + v8 + v13;
    v14 = 1;
    do
    {
      v15 = 0;
      v16 = v14;
      v17 = v12 + 216 * v10;
      v18 = v181 + 216 * v10;
      v19 = 288 * v10;
      v20 = v4 + 288 * v10;
      v21 = 1152 * v10;
      v22 = v5 + 1152 * v10;
      do
      {
        v23 = *(v20 - 24);
        if (v23)
        {
          v24 = ((*(v22 - 96) << 8) + (v23 >> 1)) / v23;
          v25 = ((v24 == 0) | ((255 - v24) >> 23) | v24);
        }

        else
        {
          v25 = 128;
        }

        v26 = *(v22 - 108);
        v27 = *(v22 - 104);
        v28 = (*(v22 - 100) + v27);
        if (v23 >= 0x18)
        {
          LODWORD(v23) = 24;
        }

        *(v17 + v15 + 174) = (v25 * ((178956971 * (v23 * v1)) >> 32) + (256 - ((178956971 * (v23 * v1)) >> 32)) * *(v18 + v15) + 128) >> 8;
        v29 = (v28 + v26);
        if (v28 + v26)
        {
          v30 = ((v29 >> 1) + (v26 << 8)) / v29;
          v31 = ((v30 == 0) | ((255 - v30) >> 23) | v30);
        }

        else
        {
          v31 = 128;
        }

        if (v29 >= 0x18)
        {
          LODWORD(v29) = 24;
        }

        *(v17 + v15 + 175) = (v31 * ((178956971 * (v29 * v1)) >> 32) + (256 - ((178956971 * (v29 * v1)) >> 32)) * *(v18 + v15 + 1) + 128) >> 8;
        if (v28)
        {
          v32 = ((v28 >> 1) + (v27 << 8)) / v28;
          v33 = ((v32 == 0) | ((255 - v32) >> 23) | v32);
        }

        else
        {
          v33 = 128;
        }

        if (v28 >= 0x18)
        {
          v34 = 24;
        }

        else
        {
          v34 = v28;
        }

        *(v17 + v15 + 176) = (v33 * ((178956971 * (v34 * v1)) >> 32) + (256 - ((178956971 * (v34 * v1)) >> 32)) * *(v18 + v15 + 2) + 128) >> 8;
        v35 = *(v22 - 92);
        v36 = *(v22 - 88);
        v37 = *(v20 - 20);
        if (v37)
        {
          v38 = ((*(v22 - 80) << 8) + (v37 >> 1)) / v37;
          v39 = ((v38 == 0) | ((255 - v38) >> 23) | v38);
        }

        else
        {
          v39 = 128;
        }

        v40 = (*(v22 - 84) + v36);
        if (v37 >= 0x18)
        {
          LODWORD(v37) = 24;
        }

        *(v17 + v15 + 177) = (v39 * ((178956971 * (v37 * v1)) >> 32) + (256 - ((178956971 * (v37 * v1)) >> 32)) * *(v18 + v15 + 3) + 128) >> 8;
        v41 = (v40 + v35);
        if (v40 + v35)
        {
          v42 = ((v41 >> 1) + (v35 << 8)) / v41;
          v43 = ((v42 == 0) | ((255 - v42) >> 23) | v42);
        }

        else
        {
          v43 = 128;
        }

        if (v41 >= 0x18)
        {
          LODWORD(v41) = 24;
        }

        *(v17 + v15 + 178) = (v43 * ((178956971 * (v41 * v1)) >> 32) + (256 - ((178956971 * (v41 * v1)) >> 32)) * *(v18 + v15 + 4) + 128) >> 8;
        if (v40)
        {
          v44 = ((v40 >> 1) + (v36 << 8)) / v40;
          v45 = ((v44 == 0) | ((255 - v44) >> 23) | v44);
        }

        else
        {
          v45 = 128;
        }

        if (v40 >= 0x18)
        {
          v46 = 24;
        }

        else
        {
          v46 = v40;
        }

        *(v17 + v15 + 179) = (v45 * ((178956971 * (v46 * v1)) >> 32) + (256 - ((178956971 * (v46 * v1)) >> 32)) * *(v18 + v15 + 5) + 128) >> 8;
        v47 = *(v22 - 76);
        v48 = *(v22 - 72);
        v49 = *(v20 - 16);
        if (v49)
        {
          v50 = ((*(v22 - 64) << 8) + (v49 >> 1)) / v49;
          v51 = ((v50 == 0) | ((255 - v50) >> 23) | v50);
        }

        else
        {
          v51 = 128;
        }

        v52 = (*(v22 - 68) + v48);
        if (v49 >= 0x18)
        {
          LODWORD(v49) = 24;
        }

        *(v17 + v15 + 180) = (v51 * ((178956971 * (v49 * v1)) >> 32) + (256 - ((178956971 * (v49 * v1)) >> 32)) * *(v18 + v15 + 6) + 128) >> 8;
        v53 = (v52 + v47);
        if (v52 + v47)
        {
          v54 = ((v53 >> 1) + (v47 << 8)) / v53;
          v55 = ((v54 == 0) | ((255 - v54) >> 23) | v54);
        }

        else
        {
          v55 = 128;
        }

        if (v53 >= 0x18)
        {
          v56 = 24;
        }

        else
        {
          v56 = v53;
        }

        *(v17 + v15 + 181) = (v55 * ((178956971 * (v56 * v1)) >> 32) + (256 - ((178956971 * (v56 * v1)) >> 32)) * *(v18 + v15 + 7) + 128) >> 8;
        if (v52)
        {
          v57 = ((v52 >> 1) + (v48 << 8)) / v52;
          v58 = ((v57 == 0) | ((255 - v57) >> 23) | v57);
        }

        else
        {
          v58 = 128;
        }

        if (v52 >= 0x18)
        {
          v59 = 24;
        }

        else
        {
          v59 = v52;
        }

        *(v17 + v15 + 182) = (v58 * ((178956971 * (v59 * v1)) >> 32) + (256 - ((178956971 * (v59 * v1)) >> 32)) * *(v18 + v15 + 8) + 128) >> 8;
        if (v15)
        {
          v60 = *(v20 - 12);
          if (v60)
          {
            v61 = ((*(v22 - 48) << 8) + (v60 >> 1)) / v60;
            v62 = ((v61 == 0) | ((255 - v61) >> 23) | v61);
          }

          else
          {
            v62 = 128;
          }

          v63 = *(v22 - 60);
          v64 = *(v22 - 56);
          v65 = (*(v22 - 52) + v64);
          if (v60 >= 0x18)
          {
            LODWORD(v60) = 24;
          }

          *(v17 + v15 + 183) = (v62 * ((178956971 * (v60 * v1)) >> 32) + (256 - ((178956971 * (v60 * v1)) >> 32)) * *(v18 + v15 + 9) + 128) >> 8;
          v66 = (v65 + v63);
          if (v65 + v63)
          {
            v67 = ((v66 >> 1) + (v63 << 8)) / v66;
            v68 = ((v67 == 0) | ((255 - v67) >> 23) | v67);
          }

          else
          {
            v68 = 128;
          }

          if (v66 >= 0x18)
          {
            LODWORD(v66) = 24;
          }

          *(v17 + v15 + 184) = (v68 * ((178956971 * (v66 * v1)) >> 32) + (256 - ((178956971 * (v66 * v1)) >> 32)) * *(v18 + v15 + 10) + 128) >> 8;
          if (v65)
          {
            v69 = ((v65 >> 1) + (v64 << 8)) / v65;
            v70 = ((v69 == 0) | ((255 - v69) >> 23) | v69);
          }

          else
          {
            v70 = 128;
          }

          if (v65 >= 0x18)
          {
            v71 = 24;
          }

          else
          {
            v71 = v65;
          }

          *(v17 + v15 + 185) = (v70 * ((178956971 * (v71 * v1)) >> 32) + (256 - ((178956971 * (v71 * v1)) >> 32)) * *(v18 + v15 + 11) + 128) >> 8;
          v72 = *(v22 - 44);
          v73 = *(v22 - 40);
          v74 = *(v20 - 8);
          if (v74)
          {
            v75 = ((*(v22 - 32) << 8) + (v74 >> 1)) / v74;
            v76 = ((v75 == 0) | ((255 - v75) >> 23) | v75);
          }

          else
          {
            v76 = 128;
          }

          v77 = (*(v22 - 36) + v73);
          if (v74 >= 0x18)
          {
            LODWORD(v74) = 24;
          }

          *(v17 + v15 + 186) = (v76 * ((178956971 * (v74 * v1)) >> 32) + (256 - ((178956971 * (v74 * v1)) >> 32)) * *(v18 + v15 + 12) + 128) >> 8;
          v78 = (v77 + v72);
          if (v77 + v72)
          {
            v79 = ((v78 >> 1) + (v72 << 8)) / v78;
            v80 = ((v79 == 0) | ((255 - v79) >> 23) | v79);
          }

          else
          {
            v80 = 128;
          }

          if (v78 >= 0x18)
          {
            LODWORD(v78) = 24;
          }

          *(v17 + v15 + 187) = (v80 * ((178956971 * (v78 * v1)) >> 32) + (256 - ((178956971 * (v78 * v1)) >> 32)) * *(v18 + v15 + 13) + 128) >> 8;
          if (v77)
          {
            v81 = ((v77 >> 1) + (v73 << 8)) / v77;
            v82 = ((v81 == 0) | ((255 - v81) >> 23) | v81);
          }

          else
          {
            v82 = 128;
          }

          if (v77 >= 0x18)
          {
            v83 = 24;
          }

          else
          {
            v83 = v77;
          }

          *(v17 + v15 + 188) = (v82 * ((178956971 * (v83 * v1)) >> 32) + (256 - ((178956971 * (v83 * v1)) >> 32)) * *(v18 + v15 + 14) + 128) >> 8;
          v84 = *(v22 - 28);
          v85 = *(v22 - 24);
          v86 = *(v20 - 4);
          if (v86)
          {
            v87 = ((*(v22 - 16) << 8) + (v86 >> 1)) / v86;
            v88 = ((v87 == 0) | ((255 - v87) >> 23) | v87);
          }

          else
          {
            v88 = 128;
          }

          v89 = (*(v22 - 20) + v85);
          if (v86 >= 0x18)
          {
            LODWORD(v86) = 24;
          }

          *(v17 + v15 + 189) = (v88 * ((178956971 * (v86 * v1)) >> 32) + (256 - ((178956971 * (v86 * v1)) >> 32)) * *(v18 + v15 + 15) + 128) >> 8;
          v90 = (v89 + v84);
          if (v89 + v84)
          {
            v91 = ((v90 >> 1) + (v84 << 8)) / v90;
            v92 = ((v91 == 0) | ((255 - v91) >> 23) | v91);
          }

          else
          {
            v92 = 128;
          }

          if (v90 >= 0x18)
          {
            LODWORD(v90) = 24;
          }

          *(v17 + v15 + 190) = (v92 * ((178956971 * (v90 * v1)) >> 32) + (256 - ((178956971 * (v90 * v1)) >> 32)) * *(v18 + v15 + 16) + 128) >> 8;
          if (v89)
          {
            v93 = ((v89 >> 1) + (v85 << 8)) / v89;
            v94 = ((v93 == 0) | ((255 - v93) >> 23) | v93);
          }

          else
          {
            v94 = 128;
          }

          if (v89 >= 0x18)
          {
            v95 = 24;
          }

          else
          {
            v95 = v89;
          }

          *(v17 + v15 + 191) = (v94 * ((178956971 * (v95 * v1)) >> 32) + (256 - ((178956971 * (v95 * v1)) >> 32)) * *(v18 + v15 + 17) + 128) >> 8;
        }

        v15 += 18;
        v20 += 24;
        v22 += 96;
      }

      while (v15 != 108);
      v96 = 0;
      v97 = 216 * v10;
      v98 = v12 + 216 * v10;
      v99 = v180 + v97;
      v100 = v6 + v19;
      v101 = v7 + v21;
      do
      {
        v102 = *(v101 - 108);
        v103 = *(v101 - 104);
        v104 = *(v100 - 24);
        if (v104)
        {
          v105 = ((*(v101 - 96) << 8) + (v104 >> 1)) / v104;
          v106 = ((v105 == 0) | ((255 - v105) >> 23) | v105);
        }

        else
        {
          v106 = 128;
        }

        v107 = (*(v101 - 100) + v103);
        if (v104 >= 0x18)
        {
          LODWORD(v104) = 24;
        }

        *(v98 + v96 + 282) = (v106 * ((178956971 * (v104 * v1)) >> 32) + (256 - ((178956971 * (v104 * v1)) >> 32)) * *(v99 + v96) + 128) >> 8;
        v108 = (v107 + v102);
        if (v107 + v102)
        {
          v109 = ((v108 >> 1) + (v102 << 8)) / v108;
          v110 = ((v109 == 0) | ((255 - v109) >> 23) | v109);
        }

        else
        {
          v110 = 128;
        }

        if (v108 >= 0x18)
        {
          v111 = 24;
        }

        else
        {
          v111 = v108;
        }

        *(v98 + v96 + 283) = (v110 * ((178956971 * (v111 * v1)) >> 32) + (256 - ((178956971 * (v111 * v1)) >> 32)) * *(v99 + v96 + 1) + 128) >> 8;
        if (v107)
        {
          v112 = ((v107 >> 1) + (v103 << 8)) / v107;
          v113 = ((v112 == 0) | ((255 - v112) >> 23) | v112);
        }

        else
        {
          v113 = 128;
        }

        if (v107 >= 0x18)
        {
          v114 = 24;
        }

        else
        {
          v114 = v107;
        }

        *(v98 + v96 + 284) = (v113 * ((178956971 * (v114 * v1)) >> 32) + (256 - ((178956971 * (v114 * v1)) >> 32)) * *(v99 + v96 + 2) + 128) >> 8;
        v115 = *(v101 - 92);
        v116 = *(v101 - 88);
        v117 = *(v100 - 20);
        if (v117)
        {
          v118 = ((*(v101 - 80) << 8) + (v117 >> 1)) / v117;
          v119 = ((v118 == 0) | ((255 - v118) >> 23) | v118);
        }

        else
        {
          v119 = 128;
        }

        v120 = (*(v101 - 84) + v116);
        if (v117 >= 0x18)
        {
          LODWORD(v117) = 24;
        }

        *(v98 + v96 + 285) = (v119 * ((178956971 * (v117 * v1)) >> 32) + (256 - ((178956971 * (v117 * v1)) >> 32)) * *(v99 + v96 + 3) + 128) >> 8;
        v121 = (v120 + v115);
        if (v120 + v115)
        {
          v122 = ((v121 >> 1) + (v115 << 8)) / v121;
          v123 = ((v122 == 0) | ((255 - v122) >> 23) | v122);
        }

        else
        {
          v123 = 128;
        }

        if (v121 >= 0x18)
        {
          LODWORD(v121) = 24;
        }

        *(v98 + v96 + 286) = (v123 * ((178956971 * (v121 * v1)) >> 32) + (256 - ((178956971 * (v121 * v1)) >> 32)) * *(v99 + v96 + 4) + 128) >> 8;
        if (v120)
        {
          v124 = ((v120 >> 1) + (v116 << 8)) / v120;
          v125 = ((v124 == 0) | ((255 - v124) >> 23) | v124);
        }

        else
        {
          v125 = 128;
        }

        if (v120 >= 0x18)
        {
          v126 = 24;
        }

        else
        {
          v126 = v120;
        }

        *(v98 + v96 + 287) = (v125 * ((178956971 * (v126 * v1)) >> 32) + (256 - ((178956971 * (v126 * v1)) >> 32)) * *(v99 + v96 + 5) + 128) >> 8;
        v127 = *(v101 - 76);
        v128 = *(v101 - 72);
        v129 = *(v100 - 16);
        if (v129)
        {
          v130 = ((*(v101 - 64) << 8) + (v129 >> 1)) / v129;
          v131 = ((v130 == 0) | ((255 - v130) >> 23) | v130);
        }

        else
        {
          v131 = 128;
        }

        v132 = (*(v101 - 68) + v128);
        if (v129 >= 0x18)
        {
          LODWORD(v129) = 24;
        }

        *(v98 + v96 + 288) = (v131 * ((178956971 * (v129 * v1)) >> 32) + (256 - ((178956971 * (v129 * v1)) >> 32)) * *(v99 + v96 + 6) + 128) >> 8;
        v133 = (v132 + v127);
        if (v132 + v127)
        {
          v134 = ((v133 >> 1) + (v127 << 8)) / v133;
          v135 = ((v134 == 0) | ((255 - v134) >> 23) | v134);
        }

        else
        {
          v135 = 128;
        }

        if (v133 >= 0x18)
        {
          v136 = 24;
        }

        else
        {
          v136 = v133;
        }

        *(v98 + v96 + 289) = (v135 * ((178956971 * (v136 * v1)) >> 32) + (256 - ((178956971 * (v136 * v1)) >> 32)) * *(v99 + v96 + 7) + 128) >> 8;
        if (v132)
        {
          v137 = ((v132 >> 1) + (v128 << 8)) / v132;
          v138 = ((v137 == 0) | ((255 - v137) >> 23) | v137);
        }

        else
        {
          v138 = 128;
        }

        if (v132 >= 0x18)
        {
          v139 = 24;
        }

        else
        {
          v139 = v132;
        }

        *(v98 + v96 + 290) = (v138 * ((178956971 * (v139 * v1)) >> 32) + (256 - ((178956971 * (v139 * v1)) >> 32)) * *(v99 + v96 + 8) + 128) >> 8;
        if (v96)
        {
          v140 = *(v100 - 12);
          if (v140)
          {
            v141 = ((*(v101 - 48) << 8) + (v140 >> 1)) / v140;
            v142 = ((v141 == 0) | ((255 - v141) >> 23) | v141);
          }

          else
          {
            v142 = 128;
          }

          v143 = *(v101 - 60);
          v144 = *(v101 - 56);
          v145 = (*(v101 - 52) + v144);
          if (v140 >= 0x18)
          {
            LODWORD(v140) = 24;
          }

          *(v98 + v96 + 291) = (v142 * ((178956971 * (v140 * v1)) >> 32) + (256 - ((178956971 * (v140 * v1)) >> 32)) * *(v99 + v96 + 9) + 128) >> 8;
          v146 = (v145 + v143);
          if (v145 + v143)
          {
            v147 = ((v146 >> 1) + (v143 << 8)) / v146;
            v148 = ((v147 == 0) | ((255 - v147) >> 23) | v147);
          }

          else
          {
            v148 = 128;
          }

          if (v146 >= 0x18)
          {
            LODWORD(v146) = 24;
          }

          *(v98 + v96 + 292) = (v148 * ((178956971 * (v146 * v1)) >> 32) + (256 - ((178956971 * (v146 * v1)) >> 32)) * *(v99 + v96 + 10) + 128) >> 8;
          if (v145)
          {
            v149 = ((v145 >> 1) + (v144 << 8)) / v145;
            v150 = ((v149 == 0) | ((255 - v149) >> 23) | v149);
          }

          else
          {
            v150 = 128;
          }

          if (v145 >= 0x18)
          {
            v151 = 24;
          }

          else
          {
            v151 = v145;
          }

          *(v98 + v96 + 293) = (v150 * ((178956971 * (v151 * v1)) >> 32) + (256 - ((178956971 * (v151 * v1)) >> 32)) * *(v99 + v96 + 11) + 128) >> 8;
          v152 = *(v101 - 44);
          v153 = *(v101 - 40);
          v154 = *(v100 - 8);
          if (v154)
          {
            v155 = ((*(v101 - 32) << 8) + (v154 >> 1)) / v154;
            v156 = ((v155 == 0) | ((255 - v155) >> 23) | v155);
          }

          else
          {
            v156 = 128;
          }

          v157 = (*(v101 - 36) + v153);
          if (v154 >= 0x18)
          {
            LODWORD(v154) = 24;
          }

          *(v98 + v96 + 294) = (v156 * ((178956971 * (v154 * v1)) >> 32) + (256 - ((178956971 * (v154 * v1)) >> 32)) * *(v99 + v96 + 12) + 128) >> 8;
          v158 = (v157 + v152);
          if (v157 + v152)
          {
            v159 = ((v158 >> 1) + (v152 << 8)) / v158;
            v160 = ((v159 == 0) | ((255 - v159) >> 23) | v159);
          }

          else
          {
            v160 = 128;
          }

          if (v158 >= 0x18)
          {
            LODWORD(v158) = 24;
          }

          *(v98 + v96 + 295) = (v160 * ((178956971 * (v158 * v1)) >> 32) + (256 - ((178956971 * (v158 * v1)) >> 32)) * *(v99 + v96 + 13) + 128) >> 8;
          if (v157)
          {
            v161 = ((v157 >> 1) + (v153 << 8)) / v157;
            v162 = ((v161 == 0) | ((255 - v161) >> 23) | v161);
          }

          else
          {
            v162 = 128;
          }

          if (v157 >= 0x18)
          {
            v163 = 24;
          }

          else
          {
            v163 = v157;
          }

          *(v98 + v96 + 296) = (v162 * ((178956971 * (v163 * v1)) >> 32) + (256 - ((178956971 * (v163 * v1)) >> 32)) * *(v99 + v96 + 14) + 128) >> 8;
          v164 = *(v101 - 28);
          v165 = *(v101 - 24);
          v166 = *(v100 - 4);
          if (v166)
          {
            v167 = ((*(v101 - 16) << 8) + (v166 >> 1)) / v166;
            v168 = ((v167 == 0) | ((255 - v167) >> 23) | v167);
          }

          else
          {
            v168 = 128;
          }

          v169 = (*(v101 - 20) + v165);
          if (v166 >= 0x18)
          {
            LODWORD(v166) = 24;
          }

          *(v98 + v96 + 297) = (v168 * ((178956971 * (v166 * v1)) >> 32) + (256 - ((178956971 * (v166 * v1)) >> 32)) * *(v99 + v96 + 15) + 128) >> 8;
          v170 = (v169 + v164);
          if (v169 + v164)
          {
            v171 = ((v170 >> 1) + (v164 << 8)) / v170;
            v172 = ((v171 == 0) | ((255 - v171) >> 23) | v171);
          }

          else
          {
            v172 = 128;
          }

          if (v170 >= 0x18)
          {
            LODWORD(v170) = 24;
          }

          *(v98 + v96 + 298) = (v172 * ((178956971 * (v170 * v1)) >> 32) + (256 - ((178956971 * (v170 * v1)) >> 32)) * *(v99 + v96 + 16) + 128) >> 8;
          if (v169)
          {
            v173 = ((v169 >> 1) + (v165 << 8)) / v169;
            v174 = ((v173 == 0) | ((255 - v173) >> 23) | v173);
          }

          else
          {
            v174 = 128;
          }

          if (v169 >= 0x18)
          {
            v175 = 24;
          }

          else
          {
            v175 = v169;
          }

          *(v98 + v96 + 299) = (v174 * ((178956971 * (v175 * v1)) >> 32) + (256 - ((178956971 * (v175 * v1)) >> 32)) * *(v99 + v96 + 17) + 128) >> 8;
        }

        v96 += 18;
        v100 += 24;
        v101 += 96;
      }

      while (v96 != 108);
      v14 = 0;
      v10 = 1;
    }

    while ((v16 & 1) != 0);
    v3 = v178 + 1;
    v2 = v179 + 432;
    v8 = v177 + 432;
    v4 += 576;
    v5 += 2304;
    v9 += 432;
    v6 += 576;
    v7 += 2304;
    result = v176;
  }

  while (v178 != 3);
  return result;
}

unint64_t vp9_adapt_mode_probs(uint64_t a1)
{
  v2 = (a1 + 0x4000);
  v3 = *(a1 + 4904);
  v4 = (*(a1 + 4912) + 2044 * *(a1 + 4920));
  v5 = v4[1931];
  v6 = *(a1 + 17420);
  v7 = (*(a1 + 17424) + v6);
  if (v7)
  {
    if (v7 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = *(a1 + 17424) + v6;
    }

    v9 = ((v7 >> 1) + (v6 << 8)) / v7;
    v5 = (((v9 == 0) | ((255 - v9) >> 23) | v9) * count_to_update_factor_0[v8] + (256 - count_to_update_factor_0[v8]) * v5 + 128) >> 8;
  }

  v3[1931] = v5;
  v10 = v4[1932];
  v11 = *(a1 + 17428);
  v12 = (*(a1 + 17432) + v11);
  if (v12)
  {
    if (v12 >= 0x14)
    {
      v13 = 20;
    }

    else
    {
      v13 = *(a1 + 17432) + v11;
    }

    v14 = ((v12 >> 1) + (v11 << 8)) / v12;
    v10 = (((v14 == 0) | ((255 - v14) >> 23) | v14) * count_to_update_factor_0[v13] + (256 - count_to_update_factor_0[v13]) * v10 + 128) >> 8;
  }

  v3[1932] = v10;
  v15 = v4[1933];
  v16 = *(a1 + 17436);
  v17 = (*(a1 + 17440) + v16);
  if (v17)
  {
    if (v17 >= 0x14)
    {
      v18 = 20;
    }

    else
    {
      v18 = *(a1 + 17440) + v16;
    }

    v19 = ((v17 >> 1) + (v16 << 8)) / v17;
    v15 = (((v19 == 0) | ((255 - v19) >> 23) | v19) * count_to_update_factor_0[v18] + (256 - count_to_update_factor_0[v18]) * v15 + 128) >> 8;
  }

  v3[1933] = v15;
  v20 = v4[1934];
  v21 = *(a1 + 17444);
  v22 = (*(a1 + 17448) + v21);
  if (v22)
  {
    if (v22 >= 0x14)
    {
      v23 = 20;
    }

    else
    {
      v23 = *(a1 + 17448) + v21;
    }

    v24 = ((v22 >> 1) + (v21 << 8)) / v22;
    v20 = (((v24 == 0) | ((255 - v24) >> 23) | v24) * count_to_update_factor_0[v23] + (256 - count_to_update_factor_0[v23]) * v20 + 128) >> 8;
  }

  v3[1934] = v20;
  v25 = v4[1935];
  v26 = *(a1 + 17452);
  v27 = (*(a1 + 17456) + v26);
  if (v27)
  {
    if (v27 >= 0x14)
    {
      v28 = 20;
    }

    else
    {
      v28 = *(a1 + 17456) + v26;
    }

    v29 = ((v27 >> 1) + (v26 << 8)) / v27;
    v25 = (((v29 == 0) | ((255 - v29) >> 23) | v29) * count_to_update_factor_0[v28] + (256 - count_to_update_factor_0[v28]) * v25 + 128) >> 8;
  }

  v3[1935] = v25;
  v30 = v4[1936];
  v31 = *(a1 + 17460);
  v32 = (*(a1 + 17464) + v31);
  if (v32)
  {
    if (v32 >= 0x14)
    {
      v33 = 20;
    }

    else
    {
      v33 = *(a1 + 17464) + v31;
    }

    v34 = ((v32 >> 1) + (v31 << 8)) / v32;
    v30 = (((v34 == 0) | ((255 - v34) >> 23) | v34) * count_to_update_factor_0[v33] + (256 - count_to_update_factor_0[v33]) * v30 + 128) >> 8;
  }

  v3[1936] = v30;
  v35 = v4[1937];
  v36 = *(a1 + 17468);
  v37 = (*(a1 + 17472) + v36);
  if (v37)
  {
    if (v37 >= 0x14)
    {
      v38 = 20;
    }

    else
    {
      v38 = *(a1 + 17472) + v36;
    }

    v39 = ((v37 >> 1) + (v36 << 8)) / v37;
    v35 = (((v39 == 0) | ((255 - v39) >> 23) | v39) * count_to_update_factor_0[v38] + (256 - count_to_update_factor_0[v38]) * v35 + 128) >> 8;
  }

  v3[1937] = v35;
  v40 = v4[1938];
  v41 = *(a1 + 17476);
  v42 = (*(a1 + 17480) + v41);
  if (v42)
  {
    if (v42 >= 0x14)
    {
      v43 = 20;
    }

    else
    {
      v43 = *(a1 + 17480) + v41;
    }

    v44 = ((v42 >> 1) + (v41 << 8)) / v42;
    v40 = (((v44 == 0) | ((255 - v44) >> 23) | v44) * count_to_update_factor_0[v43] + (256 - count_to_update_factor_0[v43]) * v40 + 128) >> 8;
  }

  v3[1938] = v40;
  v45 = v4[1939];
  v46 = *(a1 + 17484);
  v47 = (*(a1 + 17488) + v46);
  if (v47)
  {
    if (v47 >= 0x14)
    {
      v48 = 20;
    }

    else
    {
      v48 = *(a1 + 17488) + v46;
    }

    v49 = ((v47 >> 1) + (v46 << 8)) / v47;
    v45 = (((v49 == 0) | ((255 - v49) >> 23) | v49) * count_to_update_factor_0[v48] + (256 - count_to_update_factor_0[v48]) * v45 + 128) >> 8;
  }

  v3[1939] = v45;
  v50 = v4[1950];
  v51 = *(a1 + 17572);
  v52 = (*(a1 + 17576) + v51);
  if (v52)
  {
    if (v52 >= 0x14)
    {
      v53 = 20;
    }

    else
    {
      v53 = *(a1 + 17576) + v51;
    }

    v54 = ((v52 >> 1) + (v51 << 8)) / v52;
    v50 = (((v54 == 0) | ((255 - v54) >> 23) | v54) * count_to_update_factor_0[v53] + (256 - count_to_update_factor_0[v53]) * v50 + 128) >> 8;
  }

  v3[1950] = v50;
  v55 = v4[1951];
  v56 = *(a1 + 17580);
  v57 = (*(a1 + 17584) + v56);
  if (v57)
  {
    if (v57 >= 0x14)
    {
      v58 = 20;
    }

    else
    {
      v58 = *(a1 + 17584) + v56;
    }

    v59 = ((v57 >> 1) + (v56 << 8)) / v57;
    v55 = (((v59 == 0) | ((255 - v59) >> 23) | v59) * count_to_update_factor_0[v58] + (256 - count_to_update_factor_0[v58]) * v55 + 128) >> 8;
  }

  v3[1951] = v55;
  v60 = v4[1952];
  v61 = *(a1 + 17588);
  v62 = (*(a1 + 17592) + v61);
  if (v62)
  {
    if (v62 >= 0x14)
    {
      v63 = 20;
    }

    else
    {
      v63 = *(a1 + 17592) + v61;
    }

    v64 = ((v62 >> 1) + (v61 << 8)) / v62;
    v60 = (((v64 == 0) | ((255 - v64) >> 23) | v64) * count_to_update_factor_0[v63] + (256 - count_to_update_factor_0[v63]) * v60 + 128) >> 8;
  }

  v3[1952] = v60;
  v65 = v4[1953];
  v66 = *(a1 + 17596);
  v67 = (*(a1 + 17600) + v66);
  if (v67)
  {
    if (v67 >= 0x14)
    {
      v68 = 20;
    }

    else
    {
      v68 = *(a1 + 17600) + v66;
    }

    v69 = ((v67 >> 1) + (v66 << 8)) / v67;
    v65 = (((v69 == 0) | ((255 - v69) >> 23) | v69) * count_to_update_factor_0[v68] + (256 - count_to_update_factor_0[v68]) * v65 + 128) >> 8;
  }

  v3[1953] = v65;
  v70 = v4[1954];
  v71 = *(a1 + 17604);
  v72 = (*(a1 + 17608) + v71);
  if (v72)
  {
    if (v72 >= 0x14)
    {
      v73 = 20;
    }

    else
    {
      v73 = *(a1 + 17608) + v71;
    }

    v74 = ((v72 >> 1) + (v71 << 8)) / v72;
    v70 = (((v74 == 0) | ((255 - v74) >> 23) | v74) * count_to_update_factor_0[v73] + (256 - count_to_update_factor_0[v73]) * v70 + 128) >> 8;
  }

  v3[1954] = v70;
  v75 = v4[1940];
  v76 = *(a1 + 17492);
  v77 = (*(a1 + 17496) + v76);
  if (v77)
  {
    if (v77 >= 0x14)
    {
      v78 = 20;
    }

    else
    {
      v78 = *(a1 + 17496) + v76;
    }

    v79 = ((v77 >> 1) + (v76 << 8)) / v77;
    v75 = (((v79 == 0) | ((255 - v79) >> 23) | v79) * count_to_update_factor_0[v78] + (256 - count_to_update_factor_0[v78]) * v75 + 128) >> 8;
  }

  v3[1940] = v75;
  v80 = v4[1941];
  v81 = *(a1 + 17500);
  v82 = (*(a1 + 17504) + v81);
  if (v82)
  {
    if (v82 >= 0x14)
    {
      v83 = 20;
    }

    else
    {
      v83 = *(a1 + 17504) + v81;
    }

    v84 = ((v82 >> 1) + (v81 << 8)) / v82;
    v80 = (((v84 == 0) | ((255 - v84) >> 23) | v84) * count_to_update_factor_0[v83] + (256 - count_to_update_factor_0[v83]) * v80 + 128) >> 8;
  }

  v3[1941] = v80;
  v85 = v4[1942];
  v86 = *(a1 + 17508);
  v87 = (*(a1 + 17512) + v86);
  if (v87)
  {
    if (v87 >= 0x14)
    {
      v88 = 20;
    }

    else
    {
      v88 = *(a1 + 17512) + v86;
    }

    v89 = ((v87 >> 1) + (v86 << 8)) / v87;
    v85 = (((v89 == 0) | ((255 - v89) >> 23) | v89) * count_to_update_factor_0[v88] + (256 - count_to_update_factor_0[v88]) * v85 + 128) >> 8;
  }

  v3[1942] = v85;
  v90 = v4[1943];
  v91 = *(a1 + 17516);
  v92 = (*(a1 + 17520) + v91);
  if (v92)
  {
    if (v92 >= 0x14)
    {
      v93 = 20;
    }

    else
    {
      v93 = *(a1 + 17520) + v91;
    }

    v94 = ((v92 >> 1) + (v91 << 8)) / v92;
    v90 = (((v94 == 0) | ((255 - v94) >> 23) | v94) * count_to_update_factor_0[v93] + (256 - count_to_update_factor_0[v93]) * v90 + 128) >> 8;
  }

  v3[1943] = v90;
  v95 = v4[1944];
  v96 = *(a1 + 17524);
  v97 = (*(a1 + 17528) + v96);
  if (v97)
  {
    if (v97 >= 0x14)
    {
      v98 = 20;
    }

    else
    {
      v98 = *(a1 + 17528) + v96;
    }

    v99 = ((v97 >> 1) + (v96 << 8)) / v97;
    v95 = (((v99 == 0) | ((255 - v99) >> 23) | v99) * count_to_update_factor_0[v98] + (256 - count_to_update_factor_0[v98]) * v95 + 128) >> 8;
  }

  v3[1944] = v95;
  v100 = v4[1945];
  v101 = *(a1 + 17532);
  v102 = (*(a1 + 17536) + v101);
  if (v102)
  {
    if (v102 >= 0x14)
    {
      v103 = 20;
    }

    else
    {
      v103 = *(a1 + 17536) + v101;
    }

    v104 = ((v102 >> 1) + (v101 << 8)) / v102;
    v100 = (((v104 == 0) | ((255 - v104) >> 23) | v104) * count_to_update_factor_0[v103] + (256 - count_to_update_factor_0[v103]) * v100 + 128) >> 8;
  }

  v3[1945] = v100;
  v105 = v4[1946];
  v106 = *(a1 + 17540);
  v107 = (*(a1 + 17544) + v106);
  if (v107)
  {
    if (v107 >= 0x14)
    {
      v108 = 20;
    }

    else
    {
      v108 = *(a1 + 17544) + v106;
    }

    v109 = ((v107 >> 1) + (v106 << 8)) / v107;
    v105 = (((v109 == 0) | ((255 - v109) >> 23) | v109) * count_to_update_factor_0[v108] + (256 - count_to_update_factor_0[v108]) * v105 + 128) >> 8;
  }

  v3[1946] = v105;
  v110 = v4[1947];
  v111 = *(a1 + 17548);
  v112 = (*(a1 + 17552) + v111);
  if (v112)
  {
    if (v112 >= 0x14)
    {
      v113 = 20;
    }

    else
    {
      v113 = *(a1 + 17552) + v111;
    }

    v114 = ((v112 >> 1) + (v111 << 8)) / v112;
    v110 = (((v114 == 0) | ((255 - v114) >> 23) | v114) * count_to_update_factor_0[v113] + (256 - count_to_update_factor_0[v113]) * v110 + 128) >> 8;
  }

  v3[1947] = v110;
  v115 = v4[1948];
  v116 = *(a1 + 17556);
  v117 = (*(a1 + 17560) + v116);
  if (v117)
  {
    if (v117 >= 0x14)
    {
      v118 = 20;
    }

    else
    {
      v118 = *(a1 + 17560) + v116;
    }

    v119 = ((v117 >> 1) + (v116 << 8)) / v117;
    v115 = (((v119 == 0) | ((255 - v119) >> 23) | v119) * count_to_update_factor_0[v118] + (256 - count_to_update_factor_0[v118]) * v115 + 128) >> 8;
  }

  v3[1948] = v115;
  v120 = v4[1949];
  v121 = *(a1 + 17564);
  v122 = (*(a1 + 17568) + v121);
  if (v122)
  {
    if (v122 >= 0x14)
    {
      v123 = 20;
    }

    else
    {
      v123 = *(a1 + 17568) + v121;
    }

    v124 = ((v122 >> 1) + (v121 << 8)) / v122;
    v120 = (((v124 == 0) | ((255 - v124) >> 23) | v124) * count_to_update_factor_0[v123] + (256 - count_to_update_factor_0[v123]) * v120 + 128) >> 8;
  }

  v3[1949] = v120;
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1910), a1 + 17308, (v3 + 1910));
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1913), a1 + 17324, (v3 + 1913));
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1916), a1 + 17340, (v3 + 1916));
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1919), a1 + 17356, (v3 + 1919));
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1922), a1 + 17372, (v3 + 1922));
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1925), a1 + 17388, (v3 + 1925));
  tree_merge_probs_impl(0, vp9_inter_mode_tree, (v4 + 1928), a1 + 17404, (v3 + 1928));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, v4, a1 + 4924, v3);
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 9), a1 + 4964, (v3 + 9));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 18), a1 + 5004, (v3 + 18));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 27), a1 + 5044, (v3 + 27));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 36), a1 + 5084, (v3 + 36));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 45), a1 + 5124, (v3 + 45));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 54), a1 + 5164, (v3 + 54));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 63), a1 + 5204, (v3 + 63));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 72), a1 + 5244, (v3 + 72));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 81), a1 + 5284, (v3 + 81));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 90), a1 + 5324, (v3 + 90));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 99), a1 + 5364, (v3 + 99));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 108), a1 + 5404, (v3 + 108));
  tree_merge_probs_impl(0, vp9_intra_mode_tree, (v4 + 117), a1 + 5444, (v3 + 117));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 126), a1 + 5484, (v3 + 126));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 129), a1 + 5500, (v3 + 129));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 132), a1 + 5516, (v3 + 132));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 135), a1 + 5532, (v3 + 135));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 138), a1 + 5548, (v3 + 138));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 141), a1 + 5564, (v3 + 141));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 144), a1 + 5580, (v3 + 144));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 147), a1 + 5596, (v3 + 147));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 150), a1 + 5612, (v3 + 150));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 153), a1 + 5628, (v3 + 153));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 156), a1 + 5644, (v3 + 156));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 159), a1 + 5660, (v3 + 159));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 162), a1 + 5676, (v3 + 162));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 165), a1 + 5692, (v3 + 165));
  tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 168), a1 + 5708, (v3 + 168));
  result = tree_merge_probs_impl(0, vp9_partition_tree, (v4 + 171), a1 + 5724, (v3 + 171));
  if (*(a1 + 1556) == 4)
  {
    tree_merge_probs_impl(0, vp9_switchable_interp_tree, (v4 + 1902), a1 + 17260, (v3 + 1902));
    tree_merge_probs_impl(0, vp9_switchable_interp_tree, (v4 + 1904), a1 + 17272, (v3 + 1904));
    tree_merge_probs_impl(0, vp9_switchable_interp_tree, (v4 + 1906), a1 + 17284, (v3 + 1906));
    result = tree_merge_probs_impl(0, vp9_switchable_interp_tree, (v4 + 1908), a1 + 17296, (v3 + 1908));
    if (*(a1 + 1328) != 4)
    {
LABEL_123:
      v126 = v4[1967];
      v127 = v2[329];
      v128 = v2[330] + v127;
      if (!v128)
      {
        goto LABEL_128;
      }

      goto LABEL_124;
    }
  }

  else if (*(a1 + 1328) != 4)
  {
    goto LABEL_123;
  }

  v141 = v2[321];
  v142 = v4[1965];
  v143 = v2[322] + v141;
  if (v143)
  {
    if (v143 >= 0x14)
    {
      v144 = 20;
    }

    else
    {
      v144 = v2[322] + v141;
    }

    v145 = ((v143 >> 1) + (v141 << 8)) / v143;
    v142 = (((v145 == 0) | ((255 - v145) >> 23) | v145) * count_to_update_factor_0[v144] + (256 - count_to_update_factor_0[v144]) * v142 + 128) >> 8;
  }

  v3[1965] = v142;
  v146 = v2[315];
  v147 = v2[316];
  v148 = v2[317] + v147;
  v149 = v4[1961];
  v150 = (v148 + v146);
  if (v148 + v146)
  {
    if (v150 >= 0x14)
    {
      v151 = 20;
    }

    else
    {
      v151 = v148 + v146;
    }

    v152 = ((v150 >> 1) + (v146 << 8)) / v150;
    v149 = (((v152 == 0) | ((255 - v152) >> 23) | v152) * count_to_update_factor_0[v151] + (256 - count_to_update_factor_0[v151]) * v149 + 128) >> 8;
  }

  v3[1961] = v149;
  v153 = v4[1962];
  if (v148)
  {
    if (v148 >= 0x14)
    {
      v154 = 20;
    }

    else
    {
      v154 = v148;
    }

    v155 = ((v148 >> 1) + (v147 << 8)) / v148;
    v153 = (((v155 == 0) | ((255 - v155) >> 23) | v155) * count_to_update_factor_0[v154] + (256 - count_to_update_factor_0[v154]) * v153 + 128) >> 8;
  }

  v3[1962] = v153;
  v156 = v2[307];
  v157 = v2[308];
  v158 = v2[309];
  v159 = v2[310] + v158;
  v160 = (v159 + v157);
  v161 = v4[1955];
  v162 = (v160 + v156);
  if (v160 + v156)
  {
    if (v162 >= 0x14)
    {
      v163 = 20;
    }

    else
    {
      v163 = v160 + v156;
    }

    v164 = ((v162 >> 1) + (v156 << 8)) / v162;
    v161 = (((v164 == 0) | ((255 - v164) >> 23) | v164) * count_to_update_factor_0[v163] + (256 - count_to_update_factor_0[v163]) * v161 + 128) >> 8;
  }

  v3[1955] = v161;
  v165 = v4[1956];
  if (v160)
  {
    if (v160 >= 0x14)
    {
      v166 = 20;
    }

    else
    {
      v166 = v159 + v157;
    }

    v167 = ((v160 >> 1) + (v157 << 8)) / v160;
    v165 = (((v167 == 0) | ((255 - v167) >> 23) | v167) * count_to_update_factor_0[v166] + (256 - count_to_update_factor_0[v166]) * v165 + 128) >> 8;
  }

  v3[1956] = v165;
  v168 = v4[1957];
  if (v159)
  {
    if (v159 >= 0x14)
    {
      v169 = 20;
    }

    else
    {
      v169 = v159;
    }

    v170 = ((v159 >> 1) + (v158 << 8)) / v159;
    v168 = (((v170 == 0) | ((255 - v170) >> 23) | v170) * count_to_update_factor_0[v169] + (256 - count_to_update_factor_0[v169]) * v168 + 128) >> 8;
  }

  v3[1957] = v168;
  v171 = v2[323];
  v172 = v4[1966];
  v173 = v2[324] + v171;
  if (v173)
  {
    if (v173 >= 0x14)
    {
      v174 = 20;
    }

    else
    {
      v174 = v2[324] + v171;
    }

    v175 = ((v173 >> 1) + (v171 << 8)) / v173;
    v172 = (((v175 == 0) | ((255 - v175) >> 23) | v175) * count_to_update_factor_0[v174] + (256 - count_to_update_factor_0[v174]) * v172 + 128) >> 8;
  }

  v3[1966] = v172;
  v176 = v2[318];
  v177 = v2[319];
  v178 = v2[320] + v177;
  v179 = v4[1963];
  v180 = (v178 + v176);
  if (v178 + v176)
  {
    if (v180 >= 0x14)
    {
      v181 = 20;
    }

    else
    {
      v181 = v178 + v176;
    }

    v182 = ((v180 >> 1) + (v176 << 8)) / v180;
    v179 = (((v182 == 0) | ((255 - v182) >> 23) | v182) * count_to_update_factor_0[v181] + (256 - count_to_update_factor_0[v181]) * v179 + 128) >> 8;
  }

  v3[1963] = v179;
  v183 = v4[1964];
  if (v178)
  {
    if (v178 >= 0x14)
    {
      v184 = 20;
    }

    else
    {
      v184 = v178;
    }

    v185 = ((v178 >> 1) + (v177 << 8)) / v178;
    v183 = (((v185 == 0) | ((255 - v185) >> 23) | v185) * count_to_update_factor_0[v184] + (256 - count_to_update_factor_0[v184]) * v183 + 128) >> 8;
  }

  v3[1964] = v183;
  v186 = v2[311];
  v187 = v2[312];
  v188 = v2[313];
  v189 = v2[314] + v188;
  v190 = (v189 + v187);
  v191 = v4[1958];
  v192 = (v190 + v186);
  if (v190 + v186)
  {
    if (v192 >= 0x14)
    {
      v193 = 20;
    }

    else
    {
      v193 = v190 + v186;
    }

    v194 = ((v192 >> 1) + (v186 << 8)) / v192;
    v191 = (((v194 == 0) | ((255 - v194) >> 23) | v194) * count_to_update_factor_0[v193] + (256 - count_to_update_factor_0[v193]) * v191 + 128) >> 8;
  }

  v3[1958] = v191;
  v195 = v4[1959];
  if (v190)
  {
    if (v190 >= 0x14)
    {
      v196 = 20;
    }

    else
    {
      v196 = v189 + v187;
    }

    v197 = ((v190 >> 1) + (v187 << 8)) / v190;
    v195 = (((v197 == 0) | ((255 - v197) >> 23) | v197) * count_to_update_factor_0[v196] + (256 - count_to_update_factor_0[v196]) * v195 + 128) >> 8;
  }

  v3[1959] = v195;
  v198 = v4[1960];
  if (v189)
  {
    if (v189 >= 0x14)
    {
      v199 = 20;
    }

    else
    {
      v199 = v189;
    }

    v200 = ((v189 >> 1) + (v188 << 8)) / v189;
    v198 = (((v200 == 0) | ((255 - v200) >> 23) | v200) * count_to_update_factor_0[v199] + (256 - count_to_update_factor_0[v199]) * v198 + 128) >> 8;
  }

  v3[1960] = v198;
  v126 = v4[1967];
  v127 = v2[329];
  v128 = v2[330] + v127;
  if (v128)
  {
LABEL_124:
    if (v128 >= 0x14)
    {
      v129 = 20;
    }

    else
    {
      v129 = v128;
    }

    v130 = ((v128 >> 1) + (v127 << 8)) / v128;
    v126 = (((v130 == 0) | ((255 - v130) >> 23) | v130) * count_to_update_factor_0[v129] + (256 - count_to_update_factor_0[v129]) * v126 + 128) >> 8;
  }

LABEL_128:
  v3[1967] = v126;
  v131 = v4[1968];
  v132 = v2[331];
  v133 = v2[332] + v132;
  if (v133)
  {
    if (v133 >= 0x14)
    {
      v134 = 20;
    }

    else
    {
      v134 = v2[332] + v132;
    }

    v135 = ((v133 >> 1) + (v132 << 8)) / v133;
    v131 = (((v135 == 0) | ((255 - v135) >> 23) | v135) * count_to_update_factor_0[v134] + (256 - count_to_update_factor_0[v134]) * v131 + 128) >> 8;
  }

  v3[1968] = v131;
  v136 = v4[1969];
  v137 = v2[333];
  v138 = v2[334] + v137;
  if (v138)
  {
    if (v138 >= 0x14)
    {
      v139 = 20;
    }

    else
    {
      v139 = v2[334] + v137;
    }

    v140 = ((v138 >> 1) + (v137 << 8)) / v138;
    v136 = (((v140 == 0) | ((255 - v140) >> 23) | v140) * count_to_update_factor_0[v139] + (256 - count_to_update_factor_0[v139]) * v136 + 128) >> 8;
  }

  v3[1969] = v136;
  return result;
}

double vp9_setup_past_independence(uint64_t a1)
{
  v2 = a1 + 4748;
  *(a1 + 4824) = 0u;
  *(a1 + 4840) = 0u;
  *(a1 + 4792) = 0u;
  *(a1 + 4808) = 0u;
  *(a1 + 4856) = 0u;
  *(a1 + 4872) = 0u;
  *(a1 + 4888) = 0;
  *(a1 + 4779) = 0;
  v3 = *(a1 + 1536);
  if (v3)
  {
    bzero(v3, *(a1 + 1320) * *(a1 + 1312));
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    bzero(v4, *(a1 + 1320) * *(a1 + 1312));
  }

  *(v2 + 2) = 0;
  *(a1 + 4756) = 0;
  *(a1 + 4744) = 65793;
  *v2 = -1;
  *(v2 + 6) = 0;
  *(a1 + 4740) = -1;
  memcpy((*(a1 + 4904) + 174), &default_coef_probs_4x4, 0x1B0uLL);
  memcpy((*(a1 + 4904) + 606), &default_coef_probs_8x8, 0x1B0uLL);
  memcpy((*(a1 + 4904) + 1038), &default_coef_probs_16x16, 0x1B0uLL);
  memcpy((*(a1 + 4904) + 1470), &default_coef_probs_32x32, 0x1B0uLL);
  v5 = *(a1 + 4904);
  *(v5 + 52) = unk_273BD18C4;
  *(v5 + 36) = default_if_uv_probs;
  *(v5 + 110) = unk_273BD18FE;
  *(v5 + 100) = unk_273BD18F4;
  *(v5 + 84) = xmmword_273BD18E4;
  *(v5 + 68) = xmmword_273BD18D4;
  *(v5 + 32) = 492134521;
  *(v5 + 1902) = 0x90950322FF24A2EBLL;
  *v5 = default_if_y_probs;
  *(v5 + 16) = unk_273BD191E;
  *(v5 + 126) = default_partition_probs;
  *(v5 + 142) = unk_273BD1942;
  *(v5 + 158) = xmmword_273BD1952;
  *(v5 + 1931) = 0x6077B7EFE1BB6609;
  *(v5 + 1939) = 41;
  *(v5 + 1950) = -579109326;
  *(v5 + 1954) = -30;
  *(v5 + 1948) = -2066;
  *(v5 + 1940) = 0xAAAC8E8E4A4D1021;
  *(v5 + 1963) = 1113875727;
  *(v5 + 1955) = 0x98140D3405258803;
  *(v5 + 1969) = 64;
  *(v5 + 1967) = -32576;
  v5 += 1910;
  *(v5 + 13) = 0x1E1D191F51112E40;
  *v5 = default_inter_mode_probs;
  v6 = *(a1 + 4904) + 1970;
  *(v6 + 32) = xmmword_273BD1DD7;
  *(v6 + 48) = unk_273BD1DE7;
  *(v6 + 61) = 0x80A0406040407060;
  *v6 = default_nmv_context;
  *(v6 + 16) = unk_273BD1DC7;
  v7 = *(a1 + 4904);
  v7[510] = 1;
  if (*(a1 + 1276) && !*(a1 + 18224))
  {
    v11 = *(a1 + 1300);
    if (v11 == 2)
    {
      v8 = (*(a1 + 4912) + 2044 * *(a1 + 4920));
      goto LABEL_8;
    }

    if (v11 != 3)
    {
      goto LABEL_9;
    }
  }

  memcpy(*(a1 + 4912), v7, 0x7FCuLL);
  memcpy((*(a1 + 4912) + 2044), *(a1 + 4904), 0x7FCuLL);
  memcpy((*(a1 + 4912) + 4088), *(a1 + 4904), 0x7FCuLL);
  v7 = *(a1 + 4904);
  v8 = (*(a1 + 4912) + 6132);
LABEL_8:
  memcpy(v8, v7, 0x7FCuLL);
LABEL_9:
  if (!*(a1 + 1276) || *(a1 + 1292))
  {
    v9 = *(a1 + 1432);
    if (v9)
    {
      bzero(v9, 68 * (*(a1 + 1324) + *(a1 + 1324) * *(a1 + 1312)));
    }
  }

  result = 0.0;
  *(a1 + 4708) = 0u;
  *(a1 + 4920) = 0;
  return result;
}

unint64_t vp9_inc_mv(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = *(result + 2);
    v4 = *(result + 2) != 0;
    if (*(result + 2))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    if (*result)
    {
      v4 = v5;
    }

    ++*(a2 + 4 * v4);
    if (v2)
    {
      ++*(a2 + 16 + 4 * (v2 >> 31));
      if (v2 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = -v2;
      }

      v7 = v6 - 1;
      if (v6 <= 0x2000)
      {
        v8 = log_in_base_2[v7 >> 3];
      }

      else
      {
        v8 = 10;
      }

      v9 = -8 << v8;
      if (!v8)
      {
        v9 = 0;
      }

      ++*(a2 + 4 * v8 + 24);
      v10 = (v9 + v7) >> 3;
      v11 = (v7 >> 1) & 3;
      if (v8)
      {
        v12 = 0;
        v13 = a2 + 76;
        do
        {
          v14 = (v10 >> v12) & 1;
          result = (*(v13 + 4 * v14) + 1);
          *(v13 + 4 * v14) = result;
          ++v12;
          v13 += 8;
        }

        while (v8 != v12);
        v15 = (a2 + 4 * v11 + 188);
        v16 = 196;
      }

      else
      {
        ++*(a2 + 4 * v10 + 68);
        v15 = (a2 + 16 * v10 + 4 * v11 + 156);
        v16 = 188;
      }

      ++*v15;
      ++*(a2 + 16 + v16 + 4 * (v7 & 1));
    }

    if (v4)
    {
      ++*(a2 + 220 + 4 * (v3 >> 31));
      if (v3 >= 0)
      {
        v17 = v3;
      }

      else
      {
        v17 = -v3;
      }

      v18 = v17 - 1;
      if (v17 <= 0x2000)
      {
        v19 = log_in_base_2[v18 >> 3];
      }

      else
      {
        v19 = 10;
      }

      v20 = -8 << v19;
      if (!v19)
      {
        v20 = 0;
      }

      ++*(a2 + 4 * v19 + 228);
      v21 = (v20 + v18) >> 3;
      v22 = (v18 >> 1) & 3;
      if (v19)
      {
        v23 = 0;
        v24 = a2 + 280;
        do
        {
          ++*(v24 + 4 * ((v21 >> v23++) & 1));
          v24 += 8;
        }

        while (v19 != v23);
        v25 = (a2 + 4 * v22 + 392);
        v26 = 196;
      }

      else
      {
        ++*(a2 + 4 * v21 + 272);
        v25 = (a2 + 16 * v21 + 4 * v22 + 360);
        v26 = 188;
      }

      ++*v25;
      ++*(a2 + 220 + v26 + 4 * (v18 & 1));
    }
  }

  return result;
}

unint64_t vp9_adapt_mv_probs(uint64_t a1, int a2)
{
  v3 = *(a1 + 4904);
  v4 = *(a1 + 4912) + 2044 * *(a1 + 4920);
  tree_merge_probs_impl(0, vp9_mv_joint_tree, v4 + 1970, a1 + 17724, v3 + 1970);
  v5 = 0;
  v79 = v3 + 1973;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = 33 * v5;
    v9 = (v4 + 1973 + 33 * v5);
    v10 = (a1 + 17740 + 204 * v5);
    v11 = *v9;
    v12 = *v10;
    v13 = v10[1] + v12;
    if (v13)
    {
      if (v13 >= 0x14)
      {
        v14 = 20;
      }

      else
      {
        v14 = v10[1] + v12;
      }

      v15 = ((v13 >> 1) + (v12 << 8)) / v13;
      v11 = (((v15 == 0) | ((255 - v15) >> 23) | v15) * count_to_update_factor_1[v14] + (256 - count_to_update_factor_1[v14]) * v11 + 128) >> 8;
    }

    v16 = (v79 + v8);
    v17 = v79 + v8;
    *(v79 + v8) = v11;
    tree_merge_probs_impl(0, vp9_mv_class_tree, (v9 + 1), (v10 + 2), v79 + v8 + 1);
    tree_merge_probs_impl(0, &vp9_mv_class0_tree, (v9 + 11), (v10 + 13), v17 + 11);
    v18 = v9[12];
    v19 = v10[15];
    v20 = v10[16] + v19;
    if (v20)
    {
      if (v20 >= 0x14)
      {
        v21 = 20;
      }

      else
      {
        v21 = v10[16] + v19;
      }

      v22 = ((v20 >> 1) + (v19 << 8)) / v20;
      v18 = (((v22 == 0) | ((255 - v22) >> 23) | v22) * count_to_update_factor_1[v21] + (256 - count_to_update_factor_1[v21]) * v18 + 128) >> 8;
    }

    v16[12] = v18;
    v23 = v9[13];
    v24 = v10[17];
    v25 = v10[18] + v24;
    if (v25)
    {
      if (v25 >= 0x14)
      {
        v26 = 20;
      }

      else
      {
        v26 = v10[18] + v24;
      }

      v27 = ((v25 >> 1) + (v24 << 8)) / v25;
      v23 = (((v27 == 0) | ((255 - v27) >> 23) | v27) * count_to_update_factor_1[v26] + (256 - count_to_update_factor_1[v26]) * v23 + 128) >> 8;
    }

    v16[13] = v23;
    v28 = v9[14];
    v29 = v10[19];
    v30 = v10[20] + v29;
    if (v30)
    {
      if (v30 >= 0x14)
      {
        v31 = 20;
      }

      else
      {
        v31 = v10[20] + v29;
      }

      v32 = ((v30 >> 1) + (v29 << 8)) / v30;
      v28 = (((v32 == 0) | ((255 - v32) >> 23) | v32) * count_to_update_factor_1[v31] + (256 - count_to_update_factor_1[v31]) * v28 + 128) >> 8;
    }

    v16[14] = v28;
    v33 = v9[15];
    v34 = v10[21];
    v35 = v10[22] + v34;
    if (v35)
    {
      if (v35 >= 0x14)
      {
        v36 = 20;
      }

      else
      {
        v36 = v10[22] + v34;
      }

      v37 = ((v35 >> 1) + (v34 << 8)) / v35;
      v33 = (((v37 == 0) | ((255 - v37) >> 23) | v37) * count_to_update_factor_1[v36] + (256 - count_to_update_factor_1[v36]) * v33 + 128) >> 8;
    }

    v16[15] = v33;
    v38 = v9[16];
    v39 = v10[23];
    v40 = v10[24] + v39;
    if (v40)
    {
      if (v40 >= 0x14)
      {
        v41 = 20;
      }

      else
      {
        v41 = v10[24] + v39;
      }

      v42 = ((v40 >> 1) + (v39 << 8)) / v40;
      v38 = (((v42 == 0) | ((255 - v42) >> 23) | v42) * count_to_update_factor_1[v41] + (256 - count_to_update_factor_1[v41]) * v38 + 128) >> 8;
    }

    v16[16] = v38;
    v43 = v9[17];
    v44 = v10[25];
    v45 = v10[26] + v44;
    if (v45)
    {
      if (v45 >= 0x14)
      {
        v46 = 20;
      }

      else
      {
        v46 = v10[26] + v44;
      }

      v47 = ((v45 >> 1) + (v44 << 8)) / v45;
      v43 = (((v47 == 0) | ((255 - v47) >> 23) | v47) * count_to_update_factor_1[v46] + (256 - count_to_update_factor_1[v46]) * v43 + 128) >> 8;
    }

    v16[17] = v43;
    v48 = v9[18];
    v49 = v10[27];
    v50 = v10[28] + v49;
    if (v50)
    {
      if (v50 >= 0x14)
      {
        v51 = 20;
      }

      else
      {
        v51 = v10[28] + v49;
      }

      v52 = ((v50 >> 1) + (v49 << 8)) / v50;
      v48 = (((v52 == 0) | ((255 - v52) >> 23) | v52) * count_to_update_factor_1[v51] + (256 - count_to_update_factor_1[v51]) * v48 + 128) >> 8;
    }

    v16[18] = v48;
    v53 = v9[19];
    v54 = v10[29];
    v55 = v10[30] + v54;
    if (v55)
    {
      if (v55 >= 0x14)
      {
        v56 = 20;
      }

      else
      {
        v56 = v10[30] + v54;
      }

      v57 = ((v55 >> 1) + (v54 << 8)) / v55;
      v53 = (((v57 == 0) | ((255 - v57) >> 23) | v57) * count_to_update_factor_1[v56] + (256 - count_to_update_factor_1[v56]) * v53 + 128) >> 8;
    }

    v16[19] = v53;
    v58 = v9[20];
    v59 = v10[31];
    v60 = v10[32] + v59;
    if (v60)
    {
      if (v60 >= 0x14)
      {
        v61 = 20;
      }

      else
      {
        v61 = v10[32] + v59;
      }

      v62 = ((v60 >> 1) + (v59 << 8)) / v60;
      v58 = (((v62 == 0) | ((255 - v62) >> 23) | v62) * count_to_update_factor_1[v61] + (256 - count_to_update_factor_1[v61]) * v58 + 128) >> 8;
    }

    v16[20] = v58;
    v63 = v9[21];
    v64 = v10[33];
    v65 = v10[34] + v64;
    if (v65)
    {
      if (v65 >= 0x14)
      {
        v66 = 20;
      }

      else
      {
        v66 = v10[34] + v64;
      }

      v67 = ((v65 >> 1) + (v64 << 8)) / v65;
      v63 = (((v67 == 0) | ((255 - v67) >> 23) | v67) * count_to_update_factor_1[v66] + (256 - count_to_update_factor_1[v66]) * v63 + 128) >> 8;
    }

    v16[21] = v63;
    tree_merge_probs_impl(0, vp9_mv_fp_tree, (v9 + 22), (v10 + 35), (v16 + 22));
    tree_merge_probs_impl(0, vp9_mv_fp_tree, (v9 + 25), (v10 + 39), (v16 + 25));
    result = tree_merge_probs_impl(0, vp9_mv_fp_tree, (v9 + 28), (v10 + 43), (v16 + 28));
    if (a2)
    {
      v69 = v9[31];
      v70 = v10[47];
      v71 = v10[48] + v70;
      if (v71)
      {
        if (v71 >= 0x14)
        {
          v72 = 20;
        }

        else
        {
          v72 = v10[48] + v70;
        }

        v73 = ((v71 >> 1) + (v70 << 8)) / v71;
        v69 = (((v73 == 0) | ((255 - v73) >> 23) | v73) * count_to_update_factor_1[v72] + (256 - count_to_update_factor_1[v72]) * v69 + 128) >> 8;
      }

      v16[31] = v69;
      v74 = v9[32];
      v75 = v10[49];
      v76 = v10[50] + v75;
      if (v76)
      {
        if (v76 >= 0x14)
        {
          v77 = 20;
        }

        else
        {
          v77 = v10[50] + v75;
        }

        v78 = ((v76 >> 1) + (v75 << 8)) / v76;
        v74 = (((v78 == 0) | ((255 - v78) >> 23) | v78) * count_to_update_factor_1[v77] + (256 - count_to_update_factor_1[v77]) * v74 + 128) >> 8;
      }

      v16[32] = v74;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t vp9_block_error_neon(int32x4_t *a1, int32x4_t *a2, uint64_t a3, void *a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  do
  {
    v6 = vmovn_s32(*a1);
    v7 = vmovn_s32(a1[1]);
    v8 = vmovn_s32(a1[2]);
    v9 = vmovn_s32(a1[3]);
    v10 = vabd_s16(v6, vmovn_s32(*a2));
    v11 = vabd_s16(v7, vmovn_s32(a2[1]));
    v12 = vmlal_u16(vmull_u16(v11, v11), v10, v10);
    v13 = vabd_s16(v8, vmovn_s32(a2[2]));
    v14 = vmlal_u16(v12, v13, v13);
    v15 = vabd_s16(v9, vmovn_s32(a2[3]));
    v5 = vpadalq_u32(v5, vmlal_u16(v14, v15, v15));
    v4 = vpadalq_s32(vpadalq_s32(v4, vmlal_s16(vmull_s16(v7, v7), v6, v6)), vmlal_s16(vmull_s16(v9, v9), v8, v8));
    a1 += 4;
    a2 += 4;
    a3 -= 16;
  }

  while (a3);
  *a4 = vaddvq_s64(v4);
  return vaddvq_s64(v5);
}

uint64_t vp9_block_error_fp_neon(int32x4_t *a1, int32x4_t *a2, int a3)
{
  v3 = 0uLL;
  v4 = 0uLL;
  do
  {
    v5 = vabd_s16(vmovn_s32(*a1), vmovn_s32(*a2));
    v6 = vabd_s16(vmovn_s32(a1[1]), vmovn_s32(a2[1]));
    v3 = vpadalq_u32(v3, vmlal_u16(vmull_u16(v6, v6), v5, v5));
    v7 = vabd_s16(vmovn_s32(a1[2]), vmovn_s32(a2[2]));
    v8 = vabd_s16(vmovn_s32(a1[3]), vmovn_s32(a2[3]));
    v4 = vpadalq_u32(v4, vmlal_u16(vmull_u16(v8, v8), v7, v7));
    a1 += 4;
    a2 += 4;
    a3 -= 16;
  }

  while (a3);
  return vaddvq_s64(vaddq_s64(v4, v3));
}

void vp9_encode_free_mt_data(uint64_t a1)
{
  v1 = a1 + 933888;
  if (*(a1 + 933940) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 8;
    do
    {
      v6 = *(v1 + 64);
      (off_28100B648[0])(*(v1 + 56), (*(v1 + 56) + v2));
      v5 = *(v1 + 52);
      if (v3 < v5 - 1)
      {
        v7 = *(v6 + v4);
        v8 = *(v7 + 114248);
        if (v8)
        {
          free(*(v8 - 8));
          v7 = *(v6 + v4);
        }

        vp9_free_pc_tree(v7);
        v9 = *(v6 + v4);
        if (v9)
        {
          free(*(v9 - 8));
        }

        LODWORD(v5) = *(v1 + 52);
      }

      ++v3;
      v4 += 280;
      v2 += 56;
    }

    while (v3 < v5);
  }

  v10 = *(v1 + 64);
  if (v10)
  {
    free(*(v10 - 8));
  }

  *(v1 + 64) = 0;
  v11 = *(v1 + 56);
  if (v11)
  {
    free(*(v11 - 8));
  }

  *(v1 + 56) = 0;
  *(v1 + 52) = 0;
}

void vp9_encode_tiles_mt(uint64_t a1)
{
  v2 = 1 << *(a1 + 189928);
  v3 = *(a1 + 190352);
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  vp9_init_tile_data(a1);
  create_enc_workers(a1, v4);
  if (v4 < 1)
  {
    return;
  }

  v5 = (a1 + 933940);
  v6 = (a1 + 49200);
  v7 = (a1 + 176620);
  v8 = 8;
  v9 = v4;
  do
  {
    v10 = *(a1 + 933952);
    v11 = *(v10 + v8);
    if (v11 != v6)
    {
      memcpy(v11, (a1 + 49200), 0x15210uLL);
      memcpy((*(v10 + v8) + 86544), (a1 + 135744), 0x6C38uLL);
      v11 = *(v10 + v8);
    }

    v12 = v11[14281];
    if (v12 != v7)
    {
      memcpy(v12, (a1 + 176620), 0x33A8uLL);
    }

    if (*(a1 + 739940))
    {
      v13 = *(v10 + v8);
      v14 = v13[14284];
      v13[1025] = v14[52];
      v13[1024] = v14[61];
      v13[3114] = v14[70];
      v13[1026] = v14[79];
      v13[2063] = v14[55];
      v13[2062] = v14[64];
      v13[3131] = v14[73];
      v13[2064] = v14[82];
      v13[3101] = v14[58];
      v13[3100] = v14[67];
      v13[3148] = v14[76];
      v13[3102] = v14[85];
    }

    v8 += 280;
    --v9;
  }

  while (v9);
  v15 = *(a1 + 933944);
  v16 = *(a1 + 933952);
  if (v4 == 1)
  {
    v17 = 0;
LABEL_18:
    v21 = v4 - v17;
    v22 = v16 + 280 * v17;
    v23 = (v15 + 56 * v17 + 40);
    do
    {
      *(v23 - 2) = enc_worker_hook;
      *(v23 - 1) = v22;
      *v23 = 0;
      v23 += 7;
      v22 += 280;
      --v21;
    }

    while (v21);
    goto LABEL_20;
  }

  v17 = v4 & 0x7FFFFFFE;
  v18 = (v15 + 96);
  v19 = *(a1 + 933952);
  v20 = v17;
  do
  {
    *(v18 - 9) = enc_worker_hook;
    *(v18 - 8) = v19;
    *(v18 - 2) = enc_worker_hook;
    *(v18 - 1) = v19 + 280;
    *(v18 - 7) = 0;
    *v18 = 0;
    v18 += 14;
    v19 += 560;
    v20 -= 2;
  }

  while (v20);
  if (v17 != v4)
  {
    goto LABEL_18;
  }

LABEL_20:
  v24 = 0;
  for (i = 0; i != v4; ++i)
  {
    *(*(*(v5 + 1) + v24 + 32) + 16) = i;
    if (i == *v5 - 1)
    {
      v26 = 4;
    }

    else
    {
      v26 = 3;
    }

    g_worker_interface[v26]();
    v24 += 56;
  }

  v27 = 0;
  v28 = v4;
  do
  {
    off_28100B630();
    v27 += 56;
    --v28;
  }

  while (v28);
  v29 = 0;
  v30 = 32;
  do
  {
    if (v29 < *v5 - 1)
    {
      v31 = *(*(v5 + 1) + v30);
      vp9_accumulate_frame_counts(v7, *(*(v31 + 8) + 114248), 0);
      accumulate_rd_opt(v6, *(v31 + 8));
    }

    ++v29;
    v30 += 56;
  }

  while (v4 != v29);
}

void create_enc_workers(_DWORD *a1, int a2)
{
  v2 = a2;
  v3 = a1 + 233485;
  if (a1[188635] && !a1[235512])
  {
    v9 = a1 + 42997;
    v10 = (((a1[47498] + 7) >> 3) + 7) >> 3;
    v11 = -1;
    do
    {
      ++v11;
    }

    while (64 << v11 < v10);
    v12 = -1;
    do
    {
      v13 = v10 >> (v12++ + 2);
    }

    while (v13 > 3);
    v14 = a1[47584];
    if (v14 < v12)
    {
      v12 = a1[47584];
    }

    if (v14 >= v11)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (a1[47589] == 1)
    {
      v16 = *v9;
      v17 = a1[42998];
      v18 = v17 * *v9;
      if (v16 <= v17)
      {
        v16 = a1[42998];
      }

      v19 = &dword_273BCFFC0;
      v20 = 245;
      do
      {
        if (*v19 >= v18 && v19[1] >= v16)
        {
          v21 = __clz(*(v19 + 32)) ^ 0x1F;
          goto LABEL_59;
        }

        v19 += 16;
        --v20;
      }

      while (v20);
      v21 = 0x7FFFFFFF;
LABEL_59:
      if (v21 > v11)
      {
        LOBYTE(v11) = v21;
      }

      if (v15 > v21)
      {
        LOBYTE(v15) = v11;
      }
    }

    if (a1[47588] >= 1 << v15)
    {
      v2 = 1 << v15;
    }

    else
    {
      v2 = a1[47588];
    }

    v45 = a1;
    if (v2 == *v3)
    {
      return;
    }
  }

  else
  {
    v45 = a1;
    if (a2 == *v3)
    {
      return;
    }
  }

  vp9_loop_filter_dealloc((v45 + 933960));
  v4 = *(v3 + 27);
  if (v4)
  {
    v5 = *v3;
    if (*v3 < 2)
    {
      goto LABEL_28;
    }

    v6 = 1;
    v7 = 736;
    do
    {
      v8 = *(*(v3 + 27) + v7);
      if (v8)
      {
        free(*(v8 - 8));
        v5 = *v3;
      }

      ++v6;
      v7 += 736;
    }

    while (v6 < v5);
    v4 = *(v3 + 27);
    if (v4)
    {
LABEL_28:
      free(*(v4 - 8));
    }

    *(v3 + 27) = 0;
  }

  vp9_encode_free_mt_data(v45);
  v22 = 56 * v2 + 23;
  if (v22 > 0x10000000000 || (v23 = malloc_type_malloc(v22, 0xD93B561uLL)) == 0)
  {
    *(v3 + 1) = 0;
LABEL_36:
    vpx_internal_error(v45 + 171696, 2, "Failed to allocate cpi->workers");
    if (v2 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v24 - 8) = v23;
  *(v3 + 1) = v24;
  if (!v24)
  {
    goto LABEL_36;
  }

  if (v2 < 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  v25 = malloc_type_malloc(280 * v2 + 23, 0xD93B561uLL);
  if (!v25 || (v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF0, *(v26 - 8) = v25, !v26))
  {
LABEL_41:
    *(v3 + 3) = 0;
    vpx_internal_error(v45 + 171696, 2, "Failed to allocate cpi->tile_thr_data");
    v27 = (v2 - 1);
    if (v2 >= 1)
    {
      goto LABEL_42;
    }

    return;
  }

  bzero(((v25 + 23) & 0xFFFFFFFFFFFFFFF0), 280 * v2);
  *(v3 + 3) = v26;
  v27 = (v2 - 1);
  if (v2 >= 1)
  {
LABEL_42:
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v2;
    p_superclass = &OBJC_METACLASS___WK_RTCVideoDecoderVTBVP9.superclass;
    v44 = v31;
    while (1)
    {
      v33 = *(v3 + 1) + v28;
      v34 = *(v3 + 3);
      ++*v3;
      (p_superclass[196])(v33);
      *(v33 + 16) = "vpx enc worker";
      *(v34 + v29) = v45;
      if (v30 < v27)
      {
        break;
      }

      *(v34 + v29 + 8) = v45 + 49200;
LABEL_44:
      off_28100B630();
      ++v30;
      v29 += 280;
      v28 += 56;
      if (v31 == v30)
      {
        return;
      }
    }

    v35 = v27;
    v36 = malloc_type_malloc(0x1BE97uLL, 0xD93B561uLL);
    if (v36)
    {
      v37 = v36;
      v38 = ((v36 + 39) & 0xFFFFFFFFFFFFFFE0);
      *(v38 - 1) = v37;
      *(v34 + v29 + 8) = v38;
      v39 = v34 + v29 + 8;
      if (v38)
      {
        v40 = v45;
        goto LABEL_52;
      }

      v39 = v34 + 280 * v30 + 8;
    }

    else
    {
      *(v34 + v29 + 8) = 0;
      v39 = v34 + v29 + 8;
    }

    v40 = v45;
    vpx_internal_error(v45 + 171696, 2, "Failed to allocate thread_data->td");
    v38 = *v39;
LABEL_52:
    bzero(v38, 0x1BE70uLL);
    v41 = *v39;
    *(v41 + 114256) = 0u;
    vp9_setup_pc_tree(v40 + 171696, v41);
    v42 = malloc_type_malloc(0x33BFuLL, 0xD93B561uLL);
    if (v42 && (v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF0, *(v43 - 8) = v42, v43))
    {
      bzero(((v42 + 23) & 0xFFFFFFFFFFFFFFF0), 0x33A8uLL);
      *(*v39 + 114248) = v43;
    }

    else
    {
      *(*v39 + 114248) = 0;
      vpx_internal_error(v45 + 171696, 2, "Failed to allocate thread_data->td->counts");
    }

    p_superclass = (&OBJC_METACLASS___WK_RTCVideoDecoderVTBVP9 + 8);
    v27 = v35;
    v31 = v44;
    if (!off_28100B628(v33))
    {
      vpx_internal_error(v45 + 171696, 1, "Tile encoder thread creation failed");
    }

    goto LABEL_44;
  }
}

uint64_t enc_worker_hook(uint64_t a1)
{
  v1 = *a1;
  v2 = (*a1 + 189928);
  v3 = *(a1 + 16);
  v4 = 1 << *(*a1 + 189932) << *v2;
  if (v3 < v4)
  {
    v5 = 1 << *v2;
    do
    {
      v6 = (*(v1 + 194488) + 3720 * (((v3 / v5) << *v2) + v3 % v5));
      v8 = *v6;
      v7 = v6[1];
      if (v8 < v7)
      {
        v9 = *(a1 + 8);
        do
        {
          vp9_encode_sb_row(v1, v9, v3 / v5, v3 % v5, v8);
          v8 = (v8 + 8);
        }

        while (v8 < v7);
      }

      v3 += *(v1 + 933940);
    }

    while (v3 < v4);
  }

  return 1;
}

uint64_t accumulate_rd_opt(void *a1, void *a2)
{
  v2 = 0;
  a1[14274] += a2[14274];
  a1[14275] += a2[14275];
  a1[14276] += a2[14276];
  a1[14277] += a2[14277];
  a1[14278] += a2[14278];
  a1[14279] += a2[14279];
  v3 = a1 + 10821;
  a1[14280] += a2[14280];
  v4 = a2 + 86588;
  v5 = a1 + 11037;
  v6 = a2 + 88316;
  do
  {
    v7 = 0;
    LOBYTE(result) = 1;
    do
    {
      v9 = 0;
      v10 = result;
      v11 = 432 * v7;
      v12 = &v3[v11];
      v13 = &v4[v11 * 8];
      do
      {
        v14 = v13;
        v15 = v12;
        v16 = 6;
        do
        {
          v17 = *(v15 - 5);
          *(v15 - 6) += *(v14 - 11);
          *(v15 - 5) = v17 + *(v14 - 10);
          v18 = *(v15 - 3);
          *(v15 - 4) += *(v14 - 9);
          *(v15 - 3) = v18 + *(v14 - 8);
          v19 = *(v15 - 1);
          *(v15 - 2) += *(v14 - 7);
          *(v15 - 1) = v19 + *(v14 - 6);
          v20 = v15[1];
          *v15 += *(v14 - 5);
          v15[1] = v20 + *(v14 - 4);
          v21 = v15[3];
          v15[2] += *(v14 - 3);
          v15[3] = v21 + *(v14 - 2);
          v22 = v15[5];
          v15[4] += *(v14 - 1);
          v23 = *v14;
          v14 += 48;
          v15[5] = v22 + v23;
          v15 += 12;
          --v16;
        }

        while (v16);
        ++v9;
        v12 += 72;
        v13 += 288;
      }

      while (v9 != 6);
      v24 = 0;
      v25 = &v5[v11];
      v26 = &v6[v11 * 8];
      do
      {
        v27 = v26;
        v28 = v25;
        v29 = 6;
        do
        {
          v30 = *(v28 - 5);
          *(v28 - 6) += *(v27 - 11);
          *(v28 - 5) = v30 + *(v27 - 10);
          v31 = *(v28 - 3);
          *(v28 - 4) += *(v27 - 9);
          *(v28 - 3) = v31 + *(v27 - 8);
          v32 = *(v28 - 1);
          *(v28 - 2) += *(v27 - 7);
          *(v28 - 1) = v32 + *(v27 - 6);
          v33 = v28[1];
          *v28 += *(v27 - 5);
          v28[1] = v33 + *(v27 - 4);
          v34 = v28[3];
          v28[2] += *(v27 - 3);
          v28[3] = v34 + *(v27 - 2);
          v35 = v28[5];
          v28[4] += *(v27 - 1);
          v36 = *v27;
          v27 += 48;
          v28[5] = v35 + v36;
          v28 += 12;
          --v29;
        }

        while (v29);
        ++v24;
        v25 += 72;
        v26 += 288;
      }

      while (v24 != 6);
      result = 0;
      v7 = 1;
    }

    while ((v10 & 1) != 0);
    ++v2;
    v3 += 864;
    v4 += 6912;
    v5 += 864;
    v6 += 6912;
  }

  while (v2 != 4);
  return result;
}

uint64_t vp9_row_mt_sync_mem_alloc(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  *(a1 + 28) = a3;
  v6 = a3;
  v7 = (a3 << 6) | 0x17;
  if (v7 <= 0x10000000000 && (v8 = malloc_type_malloc(v7, 0xD93B561uLL)) != 0)
  {
    v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v9 - 8) = v8;
    *a1 = v9;
    if (v9)
    {
      if (v3 < 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *a1 = 0;
  }

  vpx_internal_error(a2, 2, "Failed to allocate row_mt_sync->mutex");
  if (v3 >= 1 && *a1)
  {
LABEL_9:
    v10 = 0;
    v11 = v3;
    do
    {
      pthread_mutex_init((*a1 + v10), 0);
      v10 += 64;
      --v11;
    }

    while (v11);
  }

LABEL_11:
  v12 = 48 * v6 + 23;
  if (v12 <= 0x10000000000 && (v13 = malloc_type_malloc(v12, 0xD93B561uLL)) != 0)
  {
    v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v14 - 8) = v13;
    *(a1 + 8) = v14;
    v15 = (a1 + 8);
    if (v14)
    {
      if (v3 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    v15 = (a1 + 8);
  }

  vpx_internal_error(a2, 2, "Failed to allocate row_mt_sync->cond");
  if (v3 >= 1 && *v15)
  {
LABEL_19:
    v16 = 0;
    v3 = v3;
    do
    {
      pthread_cond_init((*v15 + v16), 0);
      v16 += 48;
      --v3;
    }

    while (v3);
  }

LABEL_21:
  v17 = 4 * v6 + 23;
  if (v17 > 0x10000000000 || (result = malloc_type_malloc(v17, 0xD93B561uLL)) == 0)
  {
    *(a1 + 16) = 0;
LABEL_26:
    result = vpx_internal_error(a2, 2, "Failed to allocate row_mt_sync->cur_col");
    goto LABEL_27;
  }

  v19 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = result;
  *(a1 + 16) = v19;
  if (!v19)
  {
    goto LABEL_26;
  }

LABEL_27:
  *(a1 + 24) = 1;
  return result;
}

double vp9_row_mt_sync_mem_dealloc(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (a1[7] < 1)
      {
        goto LABEL_7;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        pthread_mutex_destroy((*a1 + v3));
        ++v4;
        v3 += 64;
      }

      while (v4 < a1[7]);
      v2 = *a1;
      if (*a1)
      {
LABEL_7:
        free(*(v2 - 8));
      }
    }

    v5 = *(a1 + 1);
    if (v5)
    {
      if (a1[7] < 1)
      {
        goto LABEL_13;
      }

      v6 = 0;
      v7 = 0;
      do
      {
        pthread_cond_destroy((*(a1 + 1) + v6));
        ++v7;
        v6 += 48;
      }

      while (v7 < a1[7]);
      v5 = *(a1 + 1);
      if (v5)
      {
LABEL_13:
        free(*(v5 - 8));
      }
    }

    v8 = *(a1 + 2);
    if (v8)
    {
      free(*(v8 - 8));
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}