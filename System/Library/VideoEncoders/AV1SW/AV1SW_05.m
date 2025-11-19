uint64_t sub_277986A18(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 32);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 32);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277986AC4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 64);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 64);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277986B70(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 128);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 128);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277986C1C(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 128);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 128);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277986CE0(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 256);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 256);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277986DA4(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 512);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 512);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277986E68(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 512);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 512);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_277986F88(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 1024);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 1024);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_2779870A8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 2048);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 2048);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_2779871C8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 2048);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 2048);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

uint64_t sub_2779873C8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 4096);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 4096);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

uint64_t sub_2779875C8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 0x2000);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 0x2000);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

uint64_t sub_2779877C8(uint8x16_t *a1, int a2, uint64_t a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  v11 = a1 + 4;
  v12 = 0uLL;
  v13 = a6 + 4;
  v14 = a3 + 64;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  if (a8)
  {
    do
    {
      v21 = v13[-4];
      v22 = v13[-3];
      v23 = vsubq_s8(v10, v21);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v23.i8, *(v14 - 64)), *v21.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v23, *(v14 - 64)), v21, *(a5 + v8)), 6uLL), v11[-4]));
      v24 = vsubq_s8(v10, v22);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *(v14 - 48)), *v22.i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v24, *(v14 - 48)), v22, *(a5 + v8 + 16)), 6uLL), v11[-3]));
      v25 = v13[-2];
      v26 = v13[-1];
      v27 = vsubq_s8(v10, v25);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *(v14 - 32)), *v25.i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *(v14 - 32)), v25, *(a5 + v8 + 32)), 6uLL), v11[-2]));
      v28 = vsubq_s8(v10, v26);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *(v14 - 16)), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *(v14 - 16)), v26, *(a5 + v8 + 48)), 6uLL), v11[-1]));
      v29 = v13[1];
      v30 = vsubq_s8(v10, *v13);
      v31 = *(v14 + 16);
      v32 = *(a5 + v8 + 80);
      v33 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v14), *v13->i8, *(a5 + v8 + 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v30, *v14), *v13, *(a5 + v8 + 64)), 6uLL);
      v34 = vsubq_s8(v10, v29);
      v35 = vmlal_u8(vmull_u8(*v34.i8, *v31.i8), *v29.i8, *v32.i8);
      v36 = vmlal_high_u8(vmull_high_u8(v34, v31), v29, v32);
      v37 = v13[2];
      v38 = v13[3];
      v39 = vsubq_s8(v10, v37);
      v16 = vpadalq_u8(v16, vabdq_u8(v33, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v35, 6uLL), v36, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, *(v14 + 32)), *v37.i8, *(a5 + v8 + 96)), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *(v14 + 32)), v37, *(a5 + v8 + 96)), 6uLL), v11[2]));
      v40 = vsubq_s8(v10, v38);
      v41 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(v14 + 48)), *v38.i8, *(a5 + v8 + 112)), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(v14 + 48)), v38, *(a5 + v8 + 112)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v41);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x2000);
  }

  else
  {
    do
    {
      v42 = v13[-4];
      v43 = v13[-3];
      v44 = vsubq_s8(v10, v42);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v44.i8, *(a5 + v8)), *v42.i8, *(v14 - 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v44, *(a5 + v8)), v42, *(v14 - 64)), 6uLL), v11[-4]));
      v45 = vsubq_s8(v10, v43);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, *(a5 + v8 + 16)), *v43.i8, *(v14 - 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *(a5 + v8 + 16)), v43, *(v14 - 48)), 6uLL), v11[-3]));
      v46 = v13[-2];
      v47 = v13[-1];
      v48 = vsubq_s8(v10, v46);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v48.i8, *(a5 + v8 + 32)), *v46.i8, *(v14 - 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v48, *(a5 + v8 + 32)), v46, *(v14 - 32)), 6uLL), v11[-2]));
      v49 = vsubq_s8(v10, v47);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v49.i8, *(a5 + v8 + 48)), *v47.i8, *(v14 - 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v49, *(a5 + v8 + 48)), v47, *(v14 - 16)), 6uLL), v11[-1]));
      v50 = v13[1];
      v51 = vsubq_s8(v10, *v13);
      v52 = *(a5 + v8 + 80);
      v53 = *(v14 + 16);
      v54 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v51.i8, *(a5 + v8 + 64)), *v13->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v51, *(a5 + v8 + 64)), *v13, *v14), 6uLL);
      v55 = vsubq_s8(v10, v50);
      v56 = vmlal_u8(vmull_u8(*v55.i8, *v52.i8), *v50.i8, *v53.i8);
      v57 = vmlal_high_u8(vmull_high_u8(v55, v52), v50, v53);
      v58 = v13[2];
      v59 = v13[3];
      v60 = vsubq_s8(v10, v58);
      v16 = vpadalq_u8(v16, vabdq_u8(v54, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v56, 6uLL), v57, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *(a5 + v8 + 96)), *v58.i8, *(v14 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v60, *(a5 + v8 + 96)), v58, *(v14 + 32)), 6uLL), v11[2]));
      v61 = vsubq_s8(v10, v59);
      v62 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v61.i8, *(a5 + v8 + 112)), *v59.i8, *(v14 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v61, *(a5 + v8 + 112)), v59, *(v14 + 48)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v62);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x2000);
  }

  return vaddlvq_u16(v19) + vaddlvq_u16(v20) + vaddlvq_u16(v18) + vaddlvq_u16(v17) + vaddlvq_u16(v16) + vaddlvq_u16(v15) + vaddlvq_u16(v12) + vaddlvq_u16(v9);
}

uint64_t sub_277987B68(uint8x16_t *a1, int a2, uint64_t a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  v11 = a1 + 4;
  v12 = 0uLL;
  v13 = a6 + 4;
  v14 = a3 + 64;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  if (a8)
  {
    do
    {
      v21 = v13[-4];
      v22 = v13[-3];
      v23 = vsubq_s8(v10, v21);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v23.i8, *(v14 - 64)), *v21.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v23, *(v14 - 64)), v21, *(a5 + v8)), 6uLL), v11[-4]));
      v24 = vsubq_s8(v10, v22);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *(v14 - 48)), *v22.i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v24, *(v14 - 48)), v22, *(a5 + v8 + 16)), 6uLL), v11[-3]));
      v25 = v13[-2];
      v26 = v13[-1];
      v27 = vsubq_s8(v10, v25);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *(v14 - 32)), *v25.i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *(v14 - 32)), v25, *(a5 + v8 + 32)), 6uLL), v11[-2]));
      v28 = vsubq_s8(v10, v26);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, *(v14 - 16)), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *(v14 - 16)), v26, *(a5 + v8 + 48)), 6uLL), v11[-1]));
      v29 = v13[1];
      v30 = vsubq_s8(v10, *v13);
      v31 = *(v14 + 16);
      v32 = *(a5 + v8 + 80);
      v33 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *v14), *v13->i8, *(a5 + v8 + 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v30, *v14), *v13, *(a5 + v8 + 64)), 6uLL);
      v34 = vsubq_s8(v10, v29);
      v35 = vmlal_u8(vmull_u8(*v34.i8, *v31.i8), *v29.i8, *v32.i8);
      v36 = vmlal_high_u8(vmull_high_u8(v34, v31), v29, v32);
      v37 = v13[2];
      v38 = v13[3];
      v39 = vsubq_s8(v10, v37);
      v16 = vpadalq_u8(v16, vabdq_u8(v33, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v35, 6uLL), v36, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, *(v14 + 32)), *v37.i8, *(a5 + v8 + 96)), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *(v14 + 32)), v37, *(a5 + v8 + 96)), 6uLL), v11[2]));
      v40 = vsubq_s8(v10, v38);
      v41 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(v14 + 48)), *v38.i8, *(a5 + v8 + 112)), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(v14 + 48)), v38, *(a5 + v8 + 112)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v41);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x4000);
  }

  else
  {
    do
    {
      v42 = v13[-4];
      v43 = v13[-3];
      v44 = vsubq_s8(v10, v42);
      v20 = vpadalq_u8(v20, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v44.i8, *(a5 + v8)), *v42.i8, *(v14 - 64)), 6uLL), vmlal_high_u8(vmull_high_u8(v44, *(a5 + v8)), v42, *(v14 - 64)), 6uLL), v11[-4]));
      v45 = vsubq_s8(v10, v43);
      v19 = vpadalq_u8(v19, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, *(a5 + v8 + 16)), *v43.i8, *(v14 - 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *(a5 + v8 + 16)), v43, *(v14 - 48)), 6uLL), v11[-3]));
      v46 = v13[-2];
      v47 = v13[-1];
      v48 = vsubq_s8(v10, v46);
      v18 = vpadalq_u8(v18, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v48.i8, *(a5 + v8 + 32)), *v46.i8, *(v14 - 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v48, *(a5 + v8 + 32)), v46, *(v14 - 32)), 6uLL), v11[-2]));
      v49 = vsubq_s8(v10, v47);
      v17 = vpadalq_u8(v17, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v49.i8, *(a5 + v8 + 48)), *v47.i8, *(v14 - 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v49, *(a5 + v8 + 48)), v47, *(v14 - 16)), 6uLL), v11[-1]));
      v50 = v13[1];
      v51 = vsubq_s8(v10, *v13);
      v52 = *(a5 + v8 + 80);
      v53 = *(v14 + 16);
      v54 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v51.i8, *(a5 + v8 + 64)), *v13->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v51, *(a5 + v8 + 64)), *v13, *v14), 6uLL);
      v55 = vsubq_s8(v10, v50);
      v56 = vmlal_u8(vmull_u8(*v55.i8, *v52.i8), *v50.i8, *v53.i8);
      v57 = vmlal_high_u8(vmull_high_u8(v55, v52), v50, v53);
      v58 = v13[2];
      v59 = v13[3];
      v60 = vsubq_s8(v10, v58);
      v16 = vpadalq_u8(v16, vabdq_u8(v54, *v11));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v56, 6uLL), v57, 6uLL), v11[1]));
      v12 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *(a5 + v8 + 96)), *v58.i8, *(v14 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v60, *(a5 + v8 + 96)), v58, *(v14 + 32)), 6uLL), v11[2]));
      v61 = vsubq_s8(v10, v59);
      v62 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v61.i8, *(a5 + v8 + 112)), *v59.i8, *(v14 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v61, *(a5 + v8 + 112)), v59, *(v14 + 48)), 6uLL), v11[3]);
      v8 += 128;
      v9 = vpadalq_u8(v9, v62);
      v11 = (v11 + a2);
      v13 = (v13 + a7);
      v14 += a4;
    }

    while (v8 != 0x4000);
  }

  return vaddlvq_u16(v19) + vaddlvq_u16(v20) + vaddlvq_u16(v18) + vaddlvq_u16(v17) + vaddlvq_u16(v16) + vaddlvq_u16(v15) + vaddlvq_u16(v12) + vaddlvq_u16(v9);
}

uint64_t sub_277987F08(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8)
{
  v8 = 2 * a2;
  v9 = 2 * a4;
  v10 = 2 * a7;
  v11 = 0;
  v12 = 0;
  if (a8)
  {
    do
    {
      v13.i32[0] = *a6;
      v13.i32[1] = *(a6 + a7);
      v14.i32[0] = *a3;
      v14.i32[1] = *(a3 + a4);
      v15.i32[0] = *a1;
      v15.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v13), v14), v13, *(a5 + v11)), 6uLL), v15));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 64);
  }

  else
  {
    do
    {
      v16.i32[0] = *a6;
      v16.i32[1] = *(a6 + a7);
      v17.i32[0] = *a3;
      v17.i32[1] = *(a3 + a4);
      v18.i32[0] = *a1;
      v18.i32[1] = *(a1 + a2);
      v12 = vpadal_u8(v12, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v16), *(a5 + v11)), v16, v17), 6uLL), v18));
      a1 = (a1 + v8);
      a3 = (a3 + v9);
      a6 = (a6 + v10);
      v11 += 8;
    }

    while (v11 != 64);
  }

  return vaddlv_u16(v12);
}

uint64_t sub_277987FF0(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 64);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 64);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_2779880B4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x8_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0;
  if (a8)
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *a3), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 256);
  }

  else
  {
    do
    {
      v9 = vpadal_u8(v9, vabd_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a6), *(a5 + v8)), *a6, *a3), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 8;
    }

    while (v8 != 256);
  }

  return vaddlv_u16(v9);
}

uint64_t sub_277988160(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a3 + 2;
  v10 = a6 + 1;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v14 = v10[-1];
      v15 = vsubq_s8(v13, v14);
      v16 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, v9[-2]), *v14.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *v9[-2].i8), v14, *(a5 + v8)), 6uLL), v11[-1]));
      v17 = vsubq_s8(v13, *v10);
      v12 = vpadalq_u8(v16, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v17.i8, *v9), *v10->i8, *(a5 + v8 + 16)), 6uLL), vmlal_high_u8(vmull_high_u8(v17, *v9->i8), *v10, *(a5 + v8 + 16)), 6uLL), *v11));
      v9 = (v9 + a4);
      v8 += 32;
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 256);
  }

  else
  {
    do
    {
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v18);
      v20 = vpadalq_u8(v12, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *(a5 + v8)), *v18.i8, v9[-2]), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *(a5 + v8)), v18, *v9[-2].i8), 6uLL), v11[-1]));
      v21 = vsubq_s8(v13, *v10);
      v22 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *(a5 + v8 + 16)), *v10->i8, *v9), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *(a5 + v8 + 16)), *v10, *v9->i8), 6uLL), *v11);
      v8 += 32;
      v12 = vpadalq_u8(v20, v22);
      v9 = (v9 + a4);
      v10 = (v10 + a7);
      v11 = (v11 + a2);
    }

    while (v8 != 256);
  }

  return vaddlvq_u16(v12);
}

uint64_t sub_277988280(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = 0uLL;
  v10.i64[0] = 0x4040404040404040;
  v10.i64[1] = 0x4040404040404040;
  if (a8)
  {
    do
    {
      v11 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11.i8, *a3), *a6->i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v11, *a3->i8), *a6, *(a5 + v8)), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 1024);
  }

  else
  {
    do
    {
      v12 = vsubq_s8(v10, *a6);
      v9 = vpadalq_u8(v9, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v12.i8, *(a5 + v8)), *a6->i8, *a3), 6uLL), vmlal_high_u8(vmull_high_u8(v12, *(a5 + v8)), *a6, *a3->i8), 6uLL), *a1));
      a1 = (a1 + a2);
      a3 = (a3 + a4);
      a6 = (a6 + a7);
      v8 += 16;
    }

    while (v8 != 1024);
  }

  return vaddlvq_u16(v9);
}

uint64_t sub_277988344(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, int8x16_t *a6, int a7, int a8)
{
  v8 = 0;
  v9 = a1 + 2;
  v10 = a6 + 2;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13.i64[0] = 0x4040404040404040;
  v13.i64[1] = 0x4040404040404040;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (a8)
  {
    do
    {
      v17 = v10[-2];
      v18 = v10[-1];
      v19 = vsubq_s8(v13, v17);
      v20 = *v11[-2].i8;
      v21 = *(a5 + v8 + 16);
      v22 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, v11[-4]), *v17.i8, *(a5 + v8)), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v11[-4].i8), v17, *(a5 + v8)), 6uLL);
      v23 = vsubq_s8(v13, v18);
      v24 = vmlal_u8(vmull_u8(*v23.i8, *v20.i8), *v18.i8, *v21.i8);
      v25 = vmlal_high_u8(vmull_high_u8(v23, v20), v18, v21);
      v26 = v10[1];
      v27 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v22, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v24, 6uLL), v25, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, *v11), *v10->i8, *(a5 + v8 + 32)), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v11->i8), *v10, *(a5 + v8 + 32)), 6uLL), *v9));
      v28 = vsubq_s8(v13, v26);
      v29 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v28.i8, v11[2]), *v26.i8, *(a5 + v8 + 48)), 6uLL), vmlal_high_u8(vmull_high_u8(v28, *v11[2].i8), v26, *(a5 + v8 + 48)), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v29);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 1024);
  }

  else
  {
    do
    {
      v30 = v10[-2];
      v31 = v10[-1];
      v32 = vsubq_s8(v13, v30);
      v33 = *(a5 + v8 + 16);
      v34 = *v11[-2].i8;
      v35 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(a5 + v8)), *v30.i8, v11[-4]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(a5 + v8)), v30, *v11[-4].i8), 6uLL);
      v36 = vsubq_s8(v13, v31);
      v37 = vmlal_u8(vmull_u8(*v36.i8, *v33.i8), *v31.i8, *v34.i8);
      v38 = vmlal_high_u8(vmull_high_u8(v36, v33), v31, v34);
      v39 = v10[1];
      v40 = vsubq_s8(v13, *v10);
      v16 = vpadalq_u8(v16, vabdq_u8(v35, v9[-2]));
      v15 = vpadalq_u8(v15, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(v37, 6uLL), v38, 6uLL), v9[-1]));
      v14 = vpadalq_u8(v14, vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, *(a5 + v8 + 32)), *v10->i8, *v11), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *(a5 + v8 + 32)), *v10, *v11->i8), 6uLL), *v9));
      v41 = vsubq_s8(v13, v39);
      v42 = vabdq_u8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, *(a5 + v8 + 48)), *v39.i8, v11[2]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *(a5 + v8 + 48)), v39, *v11[2].i8), 6uLL), v9[1]);
      v8 += 64;
      v12 = vpadalq_u8(v12, v42);
      v9 = (v9 + a2);
      v10 = (v10 + a7);
      v11 = (v11 + a4);
    }

    while (v8 != 1024);
  }

  return vaddlvq_u16(v15) + vaddlvq_u16(v16) + vaddlvq_u16(v14) + vaddlvq_u16(v12);
}

int8x16_t *sub_277988544(int8x16_t *result, int a2, uint16x4_t *a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, char a9)
{
  v9 = vdup_n_s16(~(-1 << a9));
  v10 = &result[-1].u64[1] + 2;
  if (a5 >= 5)
  {
    v66 = a2;
    v67 = vmulq_s32(vdupq_n_s32(a8), xmmword_277BB7060);
    v68.i64[0] = 0x7E0000007ELL;
    v68.i64[1] = 0x7E0000007ELL;
    v69.i64[0] = 0x800000008;
    v69.i64[1] = 0x800000008;
    v70 = vdupq_n_s64(&unk_277BEBCC0);
    v71.i64[0] = 0x600000006;
    v71.i64[1] = 0x600000006;
    do
    {
      v72 = vdupq_n_s64(v10);
      v73 = a5 + 4;
      v74 = a3;
      v75 = a7;
      do
      {
        v76 = vaddq_s32(vdupq_n_s32(v75), v67);
        v77 = *&vshrq_n_s32(v76, 0xDuLL) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL);
        v78 = vandq_s8(vshrq_n_u32(v76, 7uLL), v68);
        v79 = vaddw_s32(v72, *&v77);
        v80 = vaddw_high_s32(v72, v77);
        v81 = vmlal_s32(v70, *v78.i8, 0x800000008);
        v82 = vmlal_high_s32(v70, v78, v69);
        result = v80.i64[0];
        v83 = v81.i64[1];
        v84 = *v81.i64[0];
        v85 = v82.i64[1];
        v86 = *v82.i64[0];
        v87 = vextq_s8(v84, v84, 8uLL).u64[0];
        v88 = vextq_s8(*v83, *v83, 8uLL).u64[0];
        v89 = vextq_s8(v86, v86, 8uLL).u64[0];
        v90 = vextq_s8(*v85, *v85, 8uLL).u64[0];
        v91 = vtrn1_s16(*v84.i8, *v83->i8);
        *v84.i8 = vtrn2_s16(*v84.i8, *v83->i8);
        v92 = vtrn1_s16(*v86.i8, *v85->i8);
        *v86.i8 = vtrn2_s16(*v86.i8, *v85->i8);
        v93 = vzip1_s32(v91, v92);
        v94 = vtrn1_s16(*v79.i64[0], *v79.i64[1]);
        v95 = vtrn2_s16(*v79.i64[0], *v79.i64[1]);
        v96 = vtrn1_s16(*v80.i64[0], *v80.i64[1]);
        v97 = vtrn2_s16(*v80.i64[0], *v80.i64[1]);
        v98 = vzip2_s32(v91, v92);
        v99 = vzip1_s32(v94, v96);
        v100 = vzip2_s32(v94, v96);
        v101 = vzip1_s32(v95, v97);
        v102 = vzip2_s32(v95, v97);
        v103 = vzip1_s32(*v84.i8, *v86.i8);
        *v84.i8 = vzip2_s32(*v84.i8, *v86.i8);
        *v86.i8 = vtrn1_s16(v87, v88);
        v78.i64[0] = vextq_s8(*v79.i64[0], *v79.i64[0], 8uLL).u64[0];
        v80.i64[0] = vextq_s8(*v79.i64[1], *v79.i64[1], 8uLL).u64[0];
        v79.i64[0] = vextq_s8(*result, *result, 8uLL).u64[0];
        v104 = vextq_s8(*v80.i64[1], *v80.i64[1], 8uLL).u64[0];
        v105 = vtrn2_s16(v87, v88);
        v106 = vtrn1_s16(*v78.i8, *v80.i8);
        *v78.i8 = vtrn2_s16(*v78.i8, *v80.i8);
        *v80.i8 = vtrn1_s16(*v79.i8, v104);
        *v79.i8 = vtrn2_s16(*v79.i8, v104);
        v107 = vtrn1_s16(v89, v90);
        v108 = vtrn2_s16(v89, v90);
        *v74++ = vmin_u16(vqmovun_s32(vqrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v101, v103), v99, v93), v100, v98), v102, *v84.i8), vzip1_s32(v106, *v80.i8), vzip1_s32(*v86.i8, v107)), vzip1_s32(*v78.i8, *v79.i8), vzip1_s32(v105, v108)), vzip2_s32(v106, *v80.i8), vzip2_s32(*v86.i8, v107)), vzip2_s32(*v78.i8, *v79.i8), vzip2_s32(v105, v108)), v71)), v9);
        v75 += 4 * a8;
        v73 -= 4;
      }

      while (v73 > 4);
      v10 += 2 * v66;
      a3 = (a3 + 2 * a4);
      v109 = __OFSUB__(a6--, 1);
    }

    while (!((a6 < 0) ^ v109 | (a6 == 0)));
  }

  else
  {
    v11 = vmlaq_s32(vdupq_n_s32(a7), vdupq_n_s32(a8), xmmword_277BB7060);
    v12 = vshrq_n_s32(v11, 0xDuLL);
    v13.i64[0] = 0x7E0000007ELL;
    v13.i64[1] = 0x7E0000007ELL;
    v14 = vandq_s8(vshrq_n_u32(v11, 7uLL), v13);
    v15.i64[0] = (v12.i32[0] & 0xFFFFFFFE);
    v15.i64[1] = (v12.i32[1] & 0xFFFFFFFE);
    v16 = v15;
    v15.i64[0] = (v12.i32[2] & 0xFFFFFFFE);
    v15.i64[1] = (v12.i32[3] & 0xFFFFFFFE);
    v17 = v15;
    v18.i64[0] = 0x800000008;
    v18.i64[1] = 0x800000008;
    v19 = vdupq_n_s64(&unk_277BEBCC0);
    v20 = vmlal_s32(v19, *v14.i8, 0x800000008);
    v21 = vmlal_high_s32(v19, v14, v18);
    v22 = v20.i64[0];
    v23 = v21.i64[0];
    v24 = a6 + 1;
    v25.i64[0] = 0x600000006;
    v25.i64[1] = 0x600000006;
    do
    {
      v26 = vdupq_n_s64(v10);
      v27 = vaddq_s64(v26, v16);
      v28 = vaddq_s64(v26, v17);
      v29 = v27.i64[1];
      v30 = *v27.i64[0];
      v31 = v28.i64[1];
      v32 = *v28.i64[0];
      v33 = vextq_s8(*v22, *v22, 8uLL).u64[0];
      v34 = vextq_s8(*v20.i64[1], *v20.i64[1], 8uLL).u64[0];
      v35 = vextq_s8(*v23, *v23, 8uLL).u64[0];
      v36 = vextq_s8(*v21.i64[1], *v21.i64[1], 8uLL).u64[0];
      v37 = vtrn1_s16(*v22->i8, *v20.i64[1]);
      v38 = vtrn2_s16(*v22->i8, *v20.i64[1]);
      v39 = vtrn1_s16(*v23->i8, *v21.i64[1]);
      v40 = vtrn2_s16(*v23->i8, *v21.i64[1]);
      v41 = vzip1_s32(v37, v39);
      v42 = vzip2_s32(v37, v39);
      v43 = vzip1_s32(v38, v40);
      v44 = vzip2_s32(v38, v40);
      v45 = vtrn1_s16(v33, v34);
      v46 = vtrn2_s16(v33, v34);
      v47 = vtrn1_s16(v35, v36);
      v48 = vtrn2_s16(v35, v36);
      v49 = vzip1_s32(v45, v47);
      v50 = vzip2_s32(v45, v47);
      v51 = vzip1_s32(v46, v48);
      v52 = vzip2_s32(v46, v48);
      v53 = vextq_s8(v30, v30, 8uLL).u64[0];
      v54 = vextq_s8(*v29, *v29, 8uLL).u64[0];
      v55 = vextq_s8(v32, v32, 8uLL).u64[0];
      v56 = vextq_s8(*v31, *v31, 8uLL).u64[0];
      v57 = vtrn1_s16(*v30.i8, *v29->i8);
      *v30.i8 = vtrn2_s16(*v30.i8, *v29->i8);
      v58 = vtrn1_s16(*v32.i8, *v31->i8);
      *v32.i8 = vtrn2_s16(*v32.i8, *v31->i8);
      v59 = vzip1_s32(v57, v58);
      v60 = vzip2_s32(v57, v58);
      v61 = vzip1_s32(*v30.i8, *v32.i8);
      *v32.i8 = vzip2_s32(*v30.i8, *v32.i8);
      *v30.i8 = vtrn1_s16(v53, v54);
      v62 = vtrn2_s16(v53, v54);
      v63 = vtrn1_s16(v55, v56);
      v64 = vtrn2_s16(v55, v56);
      v65 = vmin_u16(vqmovun_s32(vqrshlq_s32(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v61, v43), v59, v41), v60, v42), *v32.i8, v44), vzip1_s32(*v30.i8, v63), v49), vzip1_s32(v62, v64), v51), vzip2_s32(*v30.i8, v63), v50), vzip2_s32(v62, v64), v52), v25)), v9);
      if (a5 == 2)
      {
        a3->i32[0] = v65.i32[0];
      }

      else
      {
        *a3 = v65;
      }

      a3 = (a3 + 2 * a4);
      --v24;
      v10 += 2 * a2;
    }

    while (v24 > 1);
  }

  return result;
}

uint64_t sub_2779888C0(uint64_t a1, int a2, int a3, int a4)
{
  if (a4 < 1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    for (i = 0; i != a4; ++i)
    {
      if (a3 >= 1)
      {
        for (j = 0; j != a3; ++j)
        {
          v8 = *(a1 + j);
          v5 += (v8 * v8);
          v4 += v8;
        }
      }

      a1 += a2;
    }
  }

  return v5 - v4 * v4 / (a4 * a3);
}

uint64_t sub_277988938(_DWORD *a1, int *a2, unsigned int a3, int a4, unsigned int a5, uint8x16_t a6, uint8x16_t a7)
{
  v598 = *MEMORY[0x277D85DE8];
  v10 = a1 + 4;
  v9 = a1[4];
  v12 = a1 + 6;
  v11 = a1[6];
  v14 = a2 + 4;
  v13 = a2[4];
  v16 = a2 + 6;
  v15 = a2[6];
  v17 = v9 == 2 * v13 && 2 * v15 == v11;
  if (v17 || ((v18 = 4 * v13, v19 = 4 * v15, v18 == v9) ? (v20 = v19 == v11) : (v20 = 0), v20))
  {
    v21 = 1;
  }

  else
  {
    if (v18 != 3 * v9)
    {
      goto LABEL_101;
    }

    v21 = v19 == 3 * v11;
  }

  if (a5 < 2)
  {
    if (v21)
    {
LABEL_20:
      v28 = 0;
      if (a5 >= 3)
      {
        v29 = 3;
      }

      else
      {
        v29 = a5;
      }

      v542 = &off_27A7196D8 + 2 * a3;
      v558 = a1 + 8;
      v559 = a1 + 10;
      v556 = a2 + 8;
      v557 = a2 + 10;
      v541 = a4 & 0xF;
      v30 = (a4 + 21) >> 4;
      v31 = &v593[8 * v30];
      v32 = (a4 + 42) >> 4;
      v33 = &v593[8 * v32];
      v34 = &v593[8 * v30 + 32];
      v543 = &unk_277BB8200 + 16 * a4;
      v544 = v29;
      v35 = &v593[8 * v32 + 32];
      v539 = (a4 + 42) & 0xF;
      v540 = (a4 + 21) & 0xF;
      v537 = &unk_277BB8200 + 16 * v539;
      v538 = &unk_277BB8200 + 16 * v540;
      v550 = a4;
      v549 = a3;
      v547 = a1 + 6;
      v548 = a1 + 4;
      v545 = a2 + 6;
      v546 = a2 + 4;
      while (1)
      {
        v36 = v28 != 0;
        v37 = v10[v28 != 0];
        v38 = v12[v28 != 0];
        v39 = v14[v28 != 0];
        v40 = v16[v28 != 0];
        v41 = (*v14 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v42 = *v16 + 1;
        v43 = v42 & 0xFFFFFFFFFFFFFFFELL;
        if (v37 == 2 * v39 && 2 * v40 == v38)
        {
          if (!a4)
          {
            v176 = *&v559[2 * v28];
            v177 = *&v557[2 * v28];
            v178 = v39 + 15;
            v179 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
            v180 = 2 * (v558[v28 != 0] - v179);
            v181 = v556[v28 != 0] - v179;
            v182 = -(v178 & 0xFFFFFFF0);
            do
            {
              v183 = v182;
              do
              {
                *a6.i8 = vld2q_s8(v176);
                v176 += 32;
                *v177++ = a6;
                v183 += 16;
              }

              while (v183);
              v176 += v180;
              v177 = (v177 + v181);
              --v40;
            }

            while (v40);
            goto LABEL_96;
          }

          if (a3 == 3)
          {
            v156 = *&v559[2 * v28];
            v157 = v558[v28 != 0];
            v158 = *&v557[2 * v28];
            v159 = v39 + 15;
            v160 = v159 & 0xFFFFFFFFFFFFFFF0;
            v161 = &v156[v157];
            a6.i8[0] = v543[6];
            a7.i8[0] = v543[8];
            v162 = 2 * (v157 - v160);
            v163 = v556[v28 != 0] - v160;
            v164 = -(v159 & 0xFFFFFFF0);
            a6 = vdupq_lane_s8(*a6.i8, 0);
            a7 = vdupq_lane_s8(*a7.i8, 0);
            do
            {
              v165 = v164;
              do
              {
                v601 = vld2q_s8(v156);
                v156 += 32;
                v602 = vld2q_s8(v161);
                v161 += 32;
                *v158++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v602.val[1].i8, *a7.i8), *v602.val[0].i8, *a6.i8), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v601.val[1].i8, *a7.i8), *v601.val[0].i8, *a6.i8), 7uLL), *a6.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v602.val[1], a7), v602.val[0], a6), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v601.val[1], a7), v601.val[0], a6), 7uLL), *a6.i8), 7uLL);
                v165 += 16;
              }

              while (v165);
              v156 += v162;
              v161 += v162;
              v158 = (v158 + v163);
              --v40;
            }

            while (v40);
            goto LABEL_96;
          }

          v562 = v14[v28 != 0];
          v554 = v16[v28 != 0];
          v560 = v28;
          v184 = malloc_type_malloc(((2 * v43 + 13) & 0x3FFFFFFFFFFFFFF8) * ((v41 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0x100004077774924uLL);
          if (!v184)
          {
            break;
          }

          v185 = v558[v36];
          v186 = *&v557[2 * v560];
          v187 = v556[v36];
          v188 = (v562 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v189 = *(*v542 + 16 * a4);
          v190 = (v38 + 13) & 0xFFFFFFF8;
          v589 = 2 * v188;
          v191 = vdupq_lane_s16(*v189.i8, 0);
          v192 = vdupq_lane_s16(*v189.i8, 1);
          v193 = vdupq_lane_s16(*v189.i8, 2);
          v194 = vdupq_laneq_s16(v189, 5);
          v195 = vdupq_laneq_s16(v189, 6);
          v196 = vdupq_laneq_s16(v189, 7);
          v197 = vdupq_lane_s16(*v189.i8, 3);
          v198 = vdupq_laneq_s16(v189, 4);
          v199 = 6 * v188;
          v200 = 4 * v185 + 8;
          v201 = *&v559[2 * v560] + -3 * v185 - 5;
          v202 = 2 * v185 + 8;
          v551 = v184;
          v203 = v184;
          v204 = 7 * v188;
          do
          {
            v591 = v190;
            v205 = 0;
            v206.i64[0] = *(v201 + 2);
            v207 = (v201 + 2 + v185);
            v208.i64[0] = *v207;
            v209 = (v207 + v185);
            v210.i64[0] = *v209;
            v211 = (v209 + v185);
            v212.i64[0] = *v211;
            v213 = (v211 + v185);
            v214 = *v213;
            v215 = (v213 + v185);
            v216 = *v215;
            v217 = (v215 + v185);
            v206.i64[1] = v214;
            v208.i64[1] = v216;
            v218 = vtrn1q_s8(v206, v208);
            v219 = vtrn2q_s8(v206, v208);
            v210.i64[1] = *v217;
            v212.i64[1] = *(v217 + v185);
            v220 = vtrn1q_s8(v210, v212);
            v221 = vtrn2q_s8(v210, v212);
            v222 = vtrn1q_s16(v218, v220);
            v223 = vtrn2q_s16(v218, v220);
            v224 = vtrn1q_s16(v219, v221);
            v225 = vuzp1q_s32(v222, v224);
            v226 = vuzp2q_s32(v222, v224);
            v227 = vuzp1q_s32(v223, vtrn2q_s16(v219, v221));
            v228 = vextq_s8(v225, v225, 8uLL).u64[0];
            v229 = vextq_s8(v227, v227, 8uLL).u64[0];
            v230 = v204;
            v231 = v203 + v204;
            v232 = v203 + v199;
            v233 = vextq_s8(v226, v226, 8uLL).u64[0];
            v234 = v201;
            do
            {
              v235 = *(v234 + 8);
              v234 += 8;
              v236.i64[0] = v235;
              v237.i64[0] = *(v201 + v185 + 8);
              v238.i64[0] = *(v201 + v202);
              v239.i64[0] = *(v201 + v202 + v185);
              v236.i64[1] = *(v201 + v200);
              v237.i64[1] = *(v201 + v200 + v185);
              v240 = vtrn1q_s8(v236, v237);
              v238.i64[1] = *(v201 + 6 * v185 + 8);
              v239.i64[1] = *(v201 + 7 * v185 + 8);
              v241 = vtrn2q_s8(v236, v237);
              v242 = vtrn1q_s8(v238, v239);
              v243 = vtrn2q_s8(v238, v239);
              v244 = vtrn1q_s16(v240, v242);
              v245 = vtrn2q_s16(v240, v242);
              v246 = vtrn1q_s16(v241, v243);
              v247 = vtrn2q_s16(v241, v243);
              v248 = vuzp1q_s32(v244, v246);
              v249 = vmovl_u8(*v227.i8);
              v227 = vuzp2q_s32(v244, v246);
              v250 = vmovl_u8(*v225.i8);
              v251 = vmovl_u8(*v226.i8);
              v225 = vuzp1q_s32(v245, v247);
              v226 = vuzp2q_s32(v245, v247);
              v252 = vmovl_u8(v228);
              v228 = vextq_s8(v225, v225, 8uLL).u64[0];
              v253 = vmovl_u8(v229);
              v254 = vmovl_u8(v233);
              v255 = vmovl_u8(*v248.i8);
              v256 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v194, v254), v193, v249), v192, v252), v191, v250);
              v257 = vmovl_high_u8(v248);
              v258 = vmovl_u8(*v225.i8);
              v259 = vqaddq_s16(vmlaq_s16(vmlaq_s16(v256, v195, v255), v196, v257), vmulq_s16(v197, v253));
              v260 = vmovl_high_u8(v225);
              v261 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v193, v251), v192, v253), v191, v249), v194, v257);
              v262 = vqaddq_s16(v259, vmulq_s16(v198, v251));
              v263 = vqaddq_s16(vmlaq_s16(vmlaq_s16(v261, v195, v258), v196, v260), vmulq_s16(v197, v254));
              *v262.i8 = vqrshrun_n_s16(v262, 7uLL);
              v264 = vmovl_u8(*v227.i8);
              v265 = vmovl_high_u8(v227);
              *v263.i8 = vqrshrun_n_s16(vqaddq_s16(v263, vmulq_s16(v198, v255)), 7uLL);
              *v254.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v192, v254), v191, v251), v193, v255), v194, v260), v195, v264), v196, v265), vmulq_s16(v197, v257)), vmulq_s16(v198, v258)), 7uLL);
              *v257.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v191, v255), v192, v257), v193, v258), v194, v265), v195, vmovl_u8(*v226.i8)), v196, vmovl_high_u8(v226)), vmulq_s16(v197, v260)), vmulq_s16(v198, v264)), 7uLL);
              *v250.i8 = vtrn1_s8(*v262.i8, *v263.i8);
              *v262.i8 = vtrn2_s8(*v262.i8, *v263.i8);
              *v263.i8 = vtrn1_s8(*v254.i8, *v257.i8);
              *v254.i8 = vtrn2_s8(*v254.i8, *v257.i8);
              *v257.i8 = vtrn1_s16(*v250.i8, *v263.i8);
              *v263.i8 = vtrn2_s16(*v250.i8, *v263.i8);
              *v250.i8 = vtrn1_s16(*v262.i8, *v254.i8);
              *v262.i8 = vtrn2_s16(*v262.i8, *v254.i8);
              v203->i32[v205 / 4] = v257.i32[0];
              *(v203->i32 + v188 + v205) = v250.i32[0];
              *(v203->i32 + v589 + v205) = v263.i32[0];
              *(v203->i32 + 3 * v188 + v205) = v262.i32[0];
              v203->i32[v188 + v205 / 4] = v257.i32[1];
              *(v203->i32 + 5 * v188 + v205) = v250.i32[1];
              v266 = &v231[v205];
              *&v232[v205] = v263.i32[1];
              v233 = vextq_s8(v226, v226, 8uLL).u64[0];
              v229 = vextq_s8(v227, v227, 8uLL).u64[0];
              v205 += 4;
              *v266 = v262.i32[1];
              v201 = v234;
            }

            while (((v562 + 3) & 0xFFFFFFFC) != v205);
            v201 = v234 + 8 * v185 - v589;
            v204 = v230;
            v203 = (v203 + v205 + v230);
            v190 = v591 - 8;
            v199 = 6 * v188;
          }

          while (v591 != 8);
          v267 = (v562 + 7) & 0xFFFFFFF8;
          v268 = (v554 + 3) & 0xFFFFFFFC;
          v269 = -(v187 * v268);
          v270 = -v268;
          a4 = v550;
          v47 = v551;
          v271 = v551;
          a3 = v549;
          v10 = v548;
          do
          {
            v272 = *v271;
            v273 = *(v271 + v188);
            v274 = (v271 + v188 + v188);
            v275 = *v274;
            v276 = (v274 + v188);
            v277 = *v276;
            v278 = (v276 + v188);
            v279 = *v278;
            v280 = *(v278 + v188);
            v281 = (v271 + 6 * v188);
            v282 = v270;
            do
            {
              v283 = *(v281 + v188);
              v284 = vmovl_u8(v272);
              v272 = *(v281 + 2 * v188);
              v285 = vmovl_u8(v273);
              v273 = *(v281 + 3 * v188);
              v286 = vmovl_u8(v275);
              v275 = *(v281 + 4 * v188);
              v287 = vmovl_u8(v277);
              v277 = *(v281 + 5 * v188);
              v288 = vmovl_u8(v279);
              v279 = *(v281 + 6 * v188);
              v289 = vmovl_u8(v280);
              v280 = *(v281 + 7 * v188);
              v290 = vmovl_u8(*v281);
              v281 += v188;
              v291 = vmovl_u8(v283);
              v292 = vmovl_u8(v272);
              v293 = vmovl_u8(v273);
              v294 = vmovl_u8(v275);
              v295 = vmovl_u8(v277);
              *v186 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v194, v289), v193, v286), v192, v285), v191, v284), v195, v290), v196, v291), vmulq_s16(v197, v287)), vmulq_s16(v198, v288)), 7uLL);
              *(v186 + v187) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v193, v288), v192, v287), v191, v286), v194, v291), v195, v292), v196, v293), vmulq_s16(v197, v289)), vmulq_s16(v198, v290)), 7uLL);
              *(v186 + 2 * v187) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v192, v289), v191, v288), v193, v290), v194, v293), v195, v294), v196, v295), vmulq_s16(v197, v291)), vmulq_s16(v198, v292)), 7uLL);
              *(v186 + 3 * v187) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v191, v290), v192, v291), v193, v292), v194, v295), v195, vmovl_u8(v279)), v196, vmovl_u8(v280)), vmulq_s16(v197, v293)), vmulq_s16(v198, v294)), 7uLL);
              v186 = (v186 + 4 * v187);
              v282 += 4;
            }

            while (v282);
            v271 = (v281 - ((2 * (v554 + 3)) | 6) * v188 + 8);
            v186 = (v186 + v269 + 8);
            v267 -= 8;
          }

          while (v267);
        }

        else
        {
          v45 = 4 * v40;
          if (v37 == 4 * v39 && v45 == v38)
          {
            if (!a4)
            {
              v431 = *&v559[2 * v28];
              v432 = *&v557[2 * v28];
              v433 = v39 + 15;
              v434 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
              v435 = 4 * (v558[v28 != 0] - v434);
              v436 = v556[v28 != 0] - v434;
              v437 = -(v433 & 0xFFFFFFF0);
              do
              {
                v438 = v437;
                do
                {
                  *a6.i8 = vld4q_s8(v431);
                  v431 += 64;
                  *v432++ = a6;
                  v438 += 16;
                }

                while (v438);
                v431 += v435;
                v432 = (v432 + v436);
                --v40;
              }

              while (v40);
              goto LABEL_96;
            }

            if (a3 == 3)
            {
              v166 = *&v559[2 * v28];
              v167 = v558[v28 != 0];
              v168 = *&v557[2 * v28];
              v169 = v39 + 15;
              v170 = v169 & 0xFFFFFFFFFFFFFFF0;
              v171 = &v166[v167];
              a6.i8[0] = v543[6];
              a7.i8[0] = v543[8];
              v172 = 4 * (v167 - v170);
              v173 = v556[v28 != 0] - v170;
              v174 = -(v169 & 0xFFFFFFF0);
              a6 = vdupq_lane_s8(*a6.i8, 0);
              a7 = vdupq_lane_s8(*a7.i8, 0);
              do
              {
                v175 = v174;
                do
                {
                  v603 = vld4q_s8(v166);
                  v166 += 64;
                  v604 = vld4q_s8(v171);
                  v171 += 64;
                  *v168++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v604.val[1].i8, *a7.i8), *v604.val[0].i8, *a6.i8), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v603.val[1].i8, *a7.i8), *v603.val[0].i8, *a6.i8), 7uLL), *a6.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v604.val[1], a7), v604.val[0], a6), 7uLL), *a7.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v603.val[1], a7), v603.val[0], a6), 7uLL), *a6.i8), 7uLL);
                  v175 += 16;
                }

                while (v175);
                v166 += v172;
                v171 += v172;
                v168 = (v168 + v173);
                --v40;
              }

              while (v40);
              goto LABEL_96;
            }

            v563 = v14[v28 != 0];
            v555 = v16[v28 != 0];
            v560 = v28;
            v47 = malloc_type_malloc((((((4 * v42) | 6) + 7) & 0xFFFFFFF8) * v41), 0x100004077774924uLL);
            if (!v47)
            {
              break;
            }

            v439 = v558[v36];
            v440 = *&v557[2 * v560];
            v441 = v556[v36];
            v442 = (v563 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v443 = *(*v542 + 16 * a4);
            v444 = (v38 + 13) & 0xFFFFFFF8;
            v445 = 4 * v442;
            v446 = vdupq_lane_s16(*v443.i8, 0);
            v447 = vdupq_lane_s16(*v443.i8, 1);
            v448 = vdupq_lane_s16(*v443.i8, 2);
            v449 = vdupq_laneq_s16(v443, 5);
            v450 = vdupq_laneq_s16(v443, 6);
            v451 = vdupq_laneq_s16(v443, 7);
            v452 = vdupq_lane_s16(*v443.i8, 3);
            v453 = vdupq_laneq_s16(v443, 4);
            v454 = 4 * v439 + 8;
            v455 = *&v559[2 * v560] + -3 * v439 - 7;
            v456 = 2 * v439 + 8;
            v585 = 8 * v439 - v445;
            v457 = v47;
            v458 = 7 * v442;
            do
            {
              v459 = 0;
              v460 = (v455 + 4 + v439);
              v461 = *v460;
              v462 = (v460 + v439);
              v463 = *v462;
              v464 = (v462 + v439);
              v465 = *v464;
              v466 = (v464 + v439);
              v467 = *v466;
              v468 = (v466 + v439);
              v469 = *v468;
              v470 = (v468 + v439);
              v471 = vzip1_s32(*(v455 + 4), v467);
              v472 = vzip1_s32(v461, v469);
              v473 = vzip1_s32(v463, *v470);
              v474 = vzip1_s32(v465, *(v470 + v439));
              v475 = vtrn1_s16(v471, v473);
              v476 = vtrn2_s16(v471, v473);
              v477 = vtrn1_s16(v472, v474);
              v478 = vtrn2_s16(v472, v474);
              *v479.i8 = vtrn1_s8(v475, v477);
              v480 = vtrn2_s8(v475, v477);
              *v481.i8 = vtrn1_s8(v476, v478);
              v482 = v457 + v445;
              v483 = vtrn2_s8(v476, v478);
              v484 = v455;
              do
              {
                v485 = *(v484 + 8);
                v484 += 8;
                v486.i64[0] = v485;
                v487.i64[0] = *(v455 + v439 + 8);
                v488.i64[0] = *(v455 + v456);
                v489.i64[0] = *(v455 + v456 + v439);
                v486.i64[1] = *(v455 + v454);
                v487.i64[1] = *(v455 + v454 + v439);
                v488.i64[1] = *(v455 + 6 * v439 + 8);
                v489.i64[1] = *(v455 + 7 * v439 + 8);
                v490 = vtrn1q_s8(v486, v487);
                v491 = vtrn2q_s8(v486, v487);
                v492 = vtrn1q_s8(v488, v489);
                v493 = vtrn2q_s8(v488, v489);
                v494 = vtrn1q_s16(v490, v492);
                v495 = vtrn1q_s16(v491, v493);
                v496 = vtrn2q_s16(v490, v492);
                v497 = vtrn2q_s16(v491, v493);
                v498 = vuzp1q_s32(v494, v495);
                v499 = vmovl_u8(*v479.i8);
                v479 = vuzp2q_s32(v494, v495);
                v500 = vmovl_u8(*v481.i8);
                v501 = vuzp1q_s32(v496, v497);
                v481 = vuzp2q_s32(v496, v497);
                v502 = vmovl_u8(v480);
                v480 = vextq_s8(v479, v479, 8uLL).u64[0];
                v503 = vmovl_u8(v483);
                v504 = vmovl_u8(*v498.i8);
                v483 = vextq_s8(v481, v481, 8uLL).u64[0];
                v505 = vmovl_high_u8(v498);
                v506 = vmovl_u8(*v501.i8);
                v507 = vmlaq_s16(vmlaq_s16(vmulq_s16(v448, v500), v447, v502), v446, v499);
                v508 = vmovl_high_u8(v501);
                *v503.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v507, v449, v505), v450, v506), v451, v508), vmulq_s16(v452, v503)), vmulq_s16(v453, v504)), 7uLL);
                *v508.i8 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v446, v504), v447, v505), v448, v506), v449, vmovl_high_u8(v479)), v450, vmovl_u8(*v481.i8)), v451, vmovl_high_u8(v481)), vmulq_s16(v452, v508)), vmulq_s16(v453, vmovl_u8(*v479.i8))), 7uLL);
                *v505.i8 = vtrn1_s8(*v503.i8, *v508.i8);
                *v508.i8 = vtrn2_s8(*v503.i8, *v508.i8);
                v457->i16[v459 / 2] = v505.i16[0];
                *(v457->i16 + v442 + v459) = v508.i16[0];
                v457->i16[v442 + v459 / 2] = v505.i16[1];
                *(v457->i16 + 3 * v442 + v459) = v508.i16[1];
                *&v482[v459] = v505.i16[2];
                *(v457->i16 + 5 * v442 + v459) = v508.i16[2];
                v457->i16[3 * v442 + v459 / 2] = v505.i16[3];
                v509 = v457 + v458 + v459;
                v459 += 2;
                *v509 = v508.i16[3];
                v455 = v484;
              }

              while (((v563 + 1) & 0xFFFFFFFE) != v459);
              v455 = v484 + v585;
              v458 = 7 * v442;
              v457 = (v457 + v459 + v458);
              v444 -= 8;
              v445 = 4 * v442;
            }

            while (v444);
            v510 = (v555 + 1) & 0xFFFFFFFE;
            v511 = -(v441 * v510);
            v512 = (v563 + 7) & 0xFFFFFFF8;
            v513 = -v510;
            a4 = v550;
            v514 = v47;
            a3 = v549;
            v10 = v548;
            do
            {
              v515 = *v514;
              v516 = *(v514 + v442);
              v517 = (v514 + v442 + v442);
              v518 = *v517;
              v519 = *(v517 + v442);
              v520 = (v514 + 4 * v442);
              v521 = v513;
              do
              {
                v522 = *v520;
                v523 = *(v520 + v442);
                v524 = *(v520 + 2 * v442);
                v525 = *(v520 + 3 * v442);
                v526 = *(v520 + 4 * v442);
                v527 = *(v520 + 5 * v442);
                v528 = *(v520 + 6 * v442);
                v529 = *(v520 + 7 * v442);
                v520 += v442;
                v530 = vmovl_u8(v522);
                v531 = vmovl_u8(v523);
                v532 = vmovl_u8(v524);
                v533 = vmovl_u8(v525);
                *v440 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v448, vmovl_u8(v518)), v447, vmovl_u8(v516)), v446, vmovl_u8(v515)), v449, v531), v450, v532), v451, v533), vmulq_s16(v452, vmovl_u8(v519))), vmulq_s16(v453, v530)), 7uLL);
                *(v440 + v441) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v446, v530), v447, v531), v448, v532), v449, vmovl_u8(v527)), v450, vmovl_u8(v528)), v451, vmovl_u8(v529)), vmulq_s16(v452, v533)), vmulq_s16(v453, vmovl_u8(v526))), 7uLL);
                v440 = (v440 + 2 * v441);
                v519 = v529;
                v518 = v528;
                v516 = v527;
                v515 = v526;
                v521 += 2;
              }

              while (v521);
              v514 = (v520 - ((4 * (v555 + 1)) | 4) * v442 + 8);
              v440 = (v440 + v511 + 8);
              v512 -= 8;
            }

            while (v512);
          }

          else
          {
            v561 = v14[v28 != 0];
            v553 = v16[v28 != 0];
            v560 = v28;
            v47 = malloc_type_malloc(((4 * v43 / 3 + 14) & 0x7FFFFFF8) * (6 * ((v41 + 5) / 6) + 2), 0x100004077774924uLL);
            if (!v47)
            {
              break;
            }

            if (a3 == 3)
            {
              v54 = *&v559[2 * v560];
              v55 = v558[v36];
              v56 = *&v557[2 * v560];
              v57 = v556[v36];
              v58 = 6 * ((v561 + 5) / 6);
              v59 = ((v45 / 3) & 0xFFFFFFF8) + 8;
              v50.i8[0] = v543[6];
              v51.i8[0] = v543[8];
              v52.i8[0] = v538[6];
              v53.i8[0] = v538[8];
              v48.i8[0] = v537[6];
              v49.i8[0] = v537[8];
              v60 = ((34359738360 * ((v561 + 5) / 6)) >> 32) - 24 * ((v561 + 5) / 6);
              v61 = ((v60 >> 1) + (v60 >> 31) + 8 * v55);
              v62 = v58 + 2;
              v63 = 7 * (v58 + 2);
              v64.i64[0] = 0;
              v65 = vdup_lane_s8(v50, 0);
              v66 = vdup_lane_s8(v51, 0);
              v67 = vdup_lane_s8(v52, 0);
              v68 = vdup_lane_s8(v53, 0);
              v69 = vdup_lane_s8(v48, 0);
              v70 = vdup_lane_s8(v49, 0);
              v71 = 0;
              v72 = v47;
              do
              {
                v73 = 0;
                *v593 = *v54;
                v74.i64[0] = *v593;
                *&v593[8] = *(v54 + v55);
                v75.i64[0] = *&v593[8];
                v76 = (v54 + v55 + v55);
                *&v593[16] = *v76;
                v77.i64[0] = *&v593[16];
                v78 = (v76 + v55);
                *&v593[24] = *v78;
                v79.i64[0] = *&v593[24];
                v80 = (v78 + v55);
                *&v593[32] = *v80;
                v81 = (v80 + v55);
                *&v593[40] = *v81;
                v82 = (v81 + v55);
                *&v593[48] = *v82;
                v74.i64[1] = *&v593[32];
                v83 = (v54 + 1);
                v75.i64[1] = *&v593[40];
                v84 = vtrn1q_s8(v74, v75);
                v77.i64[1] = *&v593[48];
                v85 = vtrn2q_s8(v74, v75);
                v79.i64[1] = *(v82 + v55);
                v86 = vtrn1q_s8(v77, v79);
                v87 = vtrn2q_s8(v77, v79);
                v88 = vtrn1q_s16(v84, v86);
                v89 = vtrn2q_s16(v84, v86);
                v90 = vtrn1q_s16(v85, v87);
                v91 = vtrn2q_s16(v85, v87);
                v92 = vuzp1q_s32(v88, v90);
                *v593 = v92;
                *&v593[16] = vuzp1q_s32(v89, v91);
                *&v593[32] = vuzp2q_s32(v88, v90);
                *&v593[48] = vuzp2q_s32(v89, v91);
                do
                {
                  *&v593[8] = *v83;
                  v93.i64[0] = *&v593[8];
                  *&v593[16] = *(v83 + v55);
                  v94.i64[0] = *&v593[16];
                  v95 = (v83 + v55 + v55);
                  *&v593[24] = *v95;
                  v96.i64[0] = *&v593[24];
                  v97 = (v95 + v55);
                  *&v593[32] = *v97;
                  v98.i64[0] = *&v593[32];
                  v99 = (v97 + v55);
                  *&v593[40] = *v99;
                  v100 = (v99 + v55);
                  *&v593[48] = *v100;
                  v101 = (v100 + v55);
                  *&v593[56] = *v101;
                  v93.i64[1] = *&v593[40];
                  v94.i64[1] = *&v593[48];
                  v102 = vtrn1q_s8(v93, v94);
                  v96.i64[1] = *&v593[56];
                  v98.i64[1] = *(v101 + v55);
                  v103 = vtrn2q_s8(v93, v94);
                  v104 = vtrn1q_s8(v96, v98);
                  v105 = vtrn2q_s8(v96, v98);
                  v106 = vtrn1q_s16(v102, v104);
                  v107 = vtrn2q_s16(v102, v104);
                  v108 = vtrn1q_s16(v103, v105);
                  v109 = vtrn2q_s16(v103, v105);
                  v599 = v56;
                  *&v593[8] = vuzp1q_s32(v106, v108);
                  *&v593[24] = vuzp1q_s32(v107, v109);
                  *&v593[40] = vuzp2q_s32(v106, v108);
                  *&v593[56] = vuzp2q_s32(v107, v109);
                  *v105.i8 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v593[40], v66), *&v593[32], v65), 7uLL);
                  *v109.i8 = vrshrn_n_s16(vmlal_u8(vmull_u8(v33[1], v70), *v33, v69), 7uLL);
                  v110 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v593[8], v66), *v92.i8, v65), 7uLL), vmlal_u8(vmull_u8(v34[1], v68), *v34, v67), 7uLL);
                  v111 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v31[1], v68), *v31, v67), 7uLL), vmlal_u8(vmull_u8(v35[1], v70), *v35, v69), 7uLL);
                  v109.i64[1] = v64.i64[0];
                  v105.i64[1] = v71;
                  v112 = vtrn1q_s8(v110, v111);
                  v113 = vtrn2q_s8(v110, v111);
                  v114 = vtrn1q_s8(v109, v105);
                  v115 = vtrn2q_s8(v109, v105);
                  v116 = vtrn1q_s16(v112, v114);
                  v117 = vtrn2q_s16(v112, v114);
                  v118 = vtrn1q_s16(v113, v115);
                  v119 = vtrn2q_s16(v113, v115);
                  v120 = vuzp1q_s32(v116, v118);
                  v92 = vuzp2q_s32(v116, v118);
                  v121 = vuzp1q_s32(v117, v119);
                  v64 = vuzp2q_s32(v117, v119);
                  ++v83;
                  v71 = vextq_s8(v64, v64, 8uLL).u64[0];
                  *(v72 + v73) = *v120.i8;
                  *(v72 + v62 + v73) = vextq_s8(v120, v120, 8uLL).u64[0];
                  *(v72 + 2 * v58 + v73 + 4) = *v121.i8;
                  *(v72 + 3 * v58 + v73 + 6) = vextq_s8(v121, v121, 8uLL).u64[0];
                  *(&v72[v58 / 2u + 1] + v73) = *v92.i8;
                  *(&v72[1] + 2 * (5 * v58 / 2u) + v73 + 2) = vextq_s8(v92, v92, 8uLL).u64[0];
                  *(&v72[1] + 6 * v58 + v73 + 4) = *v64.i8;
                  *(v72 + v63 + v73) = v71;
                  v92.i64[0] = *&v593[64];
                  *v593 = *&v593[64];
                  v73 += 6;
                }

                while (v58 != v73);
                v54 = (v83 + v61 - 1);
                v72 = (v72 + v73 + v63 + 2);
                v59 -= 8;
              }

              while (v59);
              v122 = (v561 + 7) & 0xFFFFFFF8;
              v123 = 34359738384 * ((v553 + 5) / 6);
              v124 = -(v62 + v62 * (HIDWORD(v123) + (v123 >> 63)));
              v125 = vdup_lane_s8(v50, 0);
              v126 = vdup_lane_s8(v51, 0);
              v127 = vdup_lane_s8(v52, 0);
              v128 = vdup_lane_s8(v53, 0);
              v129 = vdup_lane_s8(v48, 0);
              v130 = vdup_lane_s8(v49, 0);
              v131 = v47;
              a4 = v550;
              v10 = v548;
              do
              {
                v132 = *v131;
                *v593 = *v131;
                v133 = (v131 + v62);
                *&v593[8] = *(v131 + v62);
                v134 = (v131 + v62 + v62);
                *&v593[16] = *v134;
                v135 = (v134 + v62);
                *&v593[24] = *v135;
                v136 = (v135 + v62);
                *&v593[32] = *v136;
                v137 = (v136 + v62);
                *&v593[40] = *v137;
                v138 = (v137 + v62);
                *&v593[48] = *v138;
                *&v593[56] = *(v138 + v62);
                v139 = (v553 + 5) % 6 - v553 - 5;
                do
                {
                  v140 = v133;
                  *&v593[8] = *v133;
                  v141 = (v133 + v62);
                  v142 = *v141;
                  v143 = (v141 + v62);
                  *&v593[16] = v142;
                  *&v593[24] = *v143;
                  v144 = (v143 + v62);
                  v145 = *v144;
                  v146 = (v144 + v62);
                  *&v593[32] = v145;
                  *&v593[40] = *v146;
                  v147 = (v146 + v62);
                  v148 = *v147;
                  v149 = (v147 + v62);
                  *&v593[48] = v148;
                  *&v593[56] = *v149;
                  v150 = (v149 + v62);
                  *&v593[64] = *v150;
                  v151 = vrshrn_n_s16(vmlal_u8(vmull_u8(v31[1], v128), *v31, v127), 7uLL);
                  v152 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v593[40], v126), v145, v125), 7uLL);
                  v153 = vrshrn_n_s16(vmlal_u8(vmull_u8(v33[1], v130), *v33, v129), 7uLL);
                  v154 = vrshrn_n_s16(vmlal_u8(vmull_u8(v34[1], v128), *v34, v127), 7uLL);
                  v155 = vrshrn_n_s16(vmlal_u8(vmull_u8(v35[1], v130), *v35, v129), 7uLL);
                  *v56 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v593[8], v126), v132, v125), 7uLL);
                  *(v56 + v57) = v151;
                  *(v56 + 2 * v57) = v153;
                  *(v56 + 3 * v57) = v152;
                  *(v56 + 4 * v57) = v154;
                  *(v56 + 5 * v57) = v155;
                  v132 = *&v593[64];
                  *v593 = *&v593[64];
                  v56 = (v56 + 6 * v57);
                  v133 = (&v150[v62] - 7 * v62);
                  v139 += 6;
                }

                while (v139);
                v131 = (&v140[v62 + 1] + v124);
                v56 = (v56 - v57 * 6 * ((v553 + 5) / 6) + 8);
                v122 -= 8;
              }

              while (v122);
            }

            else
            {
              v296 = v558[v36];
              v297 = *&v557[2 * v560];
              v298 = v556[v36];
              v299 = 6 * ((v561 + 5) / 6);
              v300 = *(*v542 + 16 * v541);
              v301 = *(*v542 + 16 * v540);
              v302 = *(*v542 + 16 * v539);
              v303 = *&v559[2 * v560] + -3 * v296 - 4;
              v304 = ((34359738360 * ((v561 + 5) / 6)) >> 32) - 24 * ((v561 + 5) / 6);
              v566 = ((v304 >> 1) + (v304 >> 31) + 8 * v296);
              v590 = vdupq_lane_s16(*v300.i8, 1);
              v592 = vdupq_lane_s16(*v300.i8, 0);
              v587 = vdupq_laneq_s16(v300, 5);
              v588 = vdupq_lane_s16(*v300.i8, 2);
              v584 = vdupq_laneq_s16(v300, 7);
              v586 = vdupq_laneq_s16(v300, 6);
              v582 = vdupq_laneq_s16(v300, 4);
              v583 = vdupq_lane_s16(*v300.i8, 3);
              v580 = vdupq_lane_s16(*v301.i8, 1);
              v581 = vdupq_lane_s16(*v301.i8, 0);
              v578 = vdupq_laneq_s16(v301, 5);
              v579 = vdupq_lane_s16(*v301.i8, 2);
              v576 = vdupq_laneq_s16(v301, 7);
              v577 = vdupq_laneq_s16(v301, 6);
              v574 = vdupq_laneq_s16(v301, 4);
              v575 = vdupq_lane_s16(*v301.i8, 3);
              v572 = vdupq_lane_s16(*v302.i8, 1);
              v573 = vdupq_lane_s16(*v302.i8, 0);
              v570 = vdupq_laneq_s16(v302, 5);
              v571 = vdupq_lane_s16(*v302.i8, 2);
              v305 = v299 + 2;
              v568 = vdupq_laneq_s16(v302, 7);
              v569 = vdupq_laneq_s16(v302, 6);
              v306 = (v45 / 3 + 14) & 0xFFFFFFF8;
              v564 = vdupq_laneq_s16(v302, 4);
              v565 = vdupq_lane_s16(*v302.i8, 3);
              v307 = 7 * (v299 + 2);
              v308 = 4 * v296 + 8;
              v309 = 2 * v296 + 8;
              v310 = 0;
              v311.i64[0] = 0;
              v552 = v47;
              do
              {
                v312 = 0;
                *v593 = *(v303 + 1);
                v313.i64[0] = *v593;
                v314 = (v303 + 1 + v296);
                *&v593[8] = *v314;
                v315.i64[0] = *&v593[8];
                v316 = (v314 + v296);
                *&v593[16] = *v316;
                v317.i64[0] = *&v593[16];
                v318 = (v316 + v296);
                *&v593[24] = *v318;
                v319.i64[0] = *&v593[24];
                v320 = (v318 + v296);
                *&v593[32] = *v320;
                v321 = (v320 + v296);
                *&v593[40] = *v321;
                v322 = (v321 + v296);
                *&v593[48] = *v322;
                v313.i64[1] = *&v593[32];
                v315.i64[1] = *&v593[40];
                v323 = vtrn1q_s8(v313, v315);
                v324 = vtrn2q_s8(v313, v315);
                v317.i64[1] = *&v593[48];
                v319.i64[1] = *(v322 + v296);
                v325 = vtrn1q_s8(v317, v319);
                v326 = vtrn2q_s8(v317, v319);
                v327 = vtrn1q_s16(v323, v325);
                v328 = vtrn2q_s16(v323, v325);
                v329 = vtrn1q_s16(v324, v326);
                v330 = vtrn2q_s16(v324, v326);
                v331 = vuzp1q_s32(v327, v329);
                v332 = vuzp2q_s32(v327, v329);
                v333 = vuzp1q_s32(v328, v330);
                v334 = vuzp2q_s32(v328, v330);
                v335 = v331.u64[1];
                v336 = v333.u64[1];
                v337 = v332.u64[1];
                *v593 = v331;
                *&v593[16] = v333;
                v338 = v307;
                v339 = v47 + v307;
                *&v593[32] = v332;
                *&v593[48] = v334;
                v340 = v303;
                do
                {
                  v341 = *(v340 + 8);
                  v340 += 8;
                  v342.i64[0] = v341;
                  *&v593[56] = v341;
                  *&v593[64] = *(v303 + v296 + 8);
                  v343.i64[0] = *&v593[64];
                  v594 = *(v303 + v309);
                  *v344.i8 = v594;
                  v595.i64[0] = *(v303 + v309 + v296);
                  v345.i64[0] = v595.i64[0];
                  v595.i64[1] = *(v303 + v308);
                  v342.i64[1] = v595.i64[1];
                  v596.i64[0] = *(v303 + v308 + v296);
                  v343.i64[1] = v596.i64[0];
                  v346 = vtrn1q_s8(v342, v343);
                  v347 = vtrn2q_s8(v342, v343);
                  v596.i64[1] = *(v303 + 6 * v296 + 8);
                  v344.i64[1] = v596.i64[1];
                  v345.i64[1] = *(v303 + 7 * v296 + 8);
                  v348 = vtrn1q_s8(v344, v345);
                  v349 = vtrn2q_s8(v344, v345);
                  v350 = vtrn1q_s16(v346, v348);
                  v351 = vtrn2q_s16(v346, v348);
                  v352 = vtrn1q_s16(v347, v349);
                  v353 = vtrn2q_s16(v347, v349);
                  v354 = vuzp1q_s32(v351, v353);
                  v355 = vuzp2q_s32(v351, v353);
                  v356 = vuzp2q_s32(v350, v352);
                  *&v593[56] = vuzp1q_s32(v350, v352);
                  v594 = *v354.i8;
                  v595 = vextq_s8(v354, v356, 8uLL);
                  v596 = vextq_s8(v356, v355, 8uLL);
                  v597 = vextq_s8(v355, v355, 8uLL).u64[0];
                  v357 = vmovl_u8(v336);
                  v358 = vmovl_u8(*v332.i8);
                  v359 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v586, vmovl_u8(*v334.i8)), v587, vmovl_u8(v337)), v588, vmovl_u8(*v333.i8)), v590, vmovl_u8(v335)), v592, vmovl_u8(*v331.i8)), v584, vmovl_u8(*&v593[56])), vmulq_s16(v583, v357));
                  v333 = vmovl_u8(v31[4]);
                  v360 = vmovl_u8(v31[5]);
                  v361 = vmovl_u8(v31[6]);
                  v332 = vmovl_u8(v31[7]);
                  v331 = vqaddq_s16(v359, vmulq_s16(v582, v358));
                  v362 = vmovl_u8(v33[5]);
                  v363 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v592, v358), v590, vmovl_u8(*&v593[40])), v588, vmovl_u8(*&v593[48])), v587, vmovl_u8(*v354.i8)), v586, vmovl_u8(*v595.i8)), v584, vmovl_u8(v595.u64[1])), vmulq_s16(v583, vmovl_u8(*&v593[56]))), vmulq_s16(v582, vmovl_u8(*&v593[64])));
                  v364 = vmlaq_s16(vmulq_s16(v581, v333), v580, v360);
                  v365 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v581, vmovl_u8(*v31)), v580, vmovl_u8(v31[1])), v579, vmovl_u8(v31[2])), v578, v360), v577, v361), v576, v332), vmulq_s16(v575, vmovl_u8(v31[3])));
                  v366 = vmovl_u8(v33[6]);
                  v334 = vmovl_u8(v33[7]);
                  v367 = vmlaq_s16(vmlaq_s16(v364, v579, v361), v578, vmovl_u8(v34[5]));
                  v368 = vmovl_u8(v33[4]);
                  v369 = vmlaq_s16(vmulq_s16(v573, v368), v572, v362);
                  v370 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v573, vmovl_u8(*v33)), v572, vmovl_u8(v33[1])), v571, vmovl_u8(v33[2])), v570, v362), v569, v366), v568, v334), vmulq_s16(v565, vmovl_u8(v33[3]))), vmulq_s16(v564, v368));
                  v371 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(v367, v577, vmovl_u8(v34[6])), v576, vmovl_u8(v34[7])), vmulq_s16(v575, v332)), vmulq_s16(v574, vmovl_u8(v34[4])));
                  v372 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v369, v571, v366), v570, vmovl_u8(v35[5])), v569, vmovl_u8(v35[6])), v568, vmovl_u8(v35[7])), vmulq_s16(v565, v334));
                  *v370.i8 = vqrshrun_n_s16(v370, 7uLL);
                  *v363.i8 = vqrshrun_n_s16(v363, 7uLL);
                  v373 = vqrshrun_high_n_s16(vqrshrun_n_s16(v331, 7uLL), v371, 7uLL);
                  v374 = vqrshrun_high_n_s16(vqrshrun_n_s16(vqaddq_s16(v365, vmulq_s16(v574, v333)), 7uLL), vqaddq_s16(v372, vmulq_s16(v564, vmovl_u8(v35[4]))), 7uLL);
                  v375 = vtrn1q_s8(v373, v374);
                  v370.i64[1] = v311.i64[0];
                  v363.i64[1] = v310;
                  v376 = vtrn2q_s8(v373, v374);
                  v377 = vtrn1q_s8(v370, v363);
                  v378 = vtrn2q_s8(v370, v363);
                  v379 = vtrn1q_s16(v375, v377);
                  v380 = vtrn2q_s16(v375, v377);
                  v381 = vtrn1q_s16(v376, v378);
                  v382 = vuzp1q_s32(v379, v381);
                  *(v47 + v312) = *v382.i8;
                  v383 = vtrn2q_s16(v376, v378);
                  *(v47 + v305 + v312) = vextq_s8(v382, v382, 8uLL).u64[0];
                  v384 = vuzp2q_s32(v379, v381);
                  v385 = vuzp1q_s32(v380, v383);
                  *(v47 + 2 * v299 + v312 + 4) = *v385.i8;
                  *(v47 + 3 * v299 + v312 + 6) = vextq_s8(v385, v385, 8uLL).u64[0];
                  *(&v47[v299 / 2u + 1] + v312) = *v384.i8;
                  *(&v47[1] + 2 * (5 * v299 / 2u) + v312 + 2) = vextq_s8(v384, v384, 8uLL).u64[0];
                  v311 = vuzp2q_s32(v380, v383);
                  *(&v47[1] + 6 * v299 + v312 + 4) = *v311.i8;
                  v310 = vextq_s8(v311, v311, 8uLL).u64[0];
                  *&v339[v312] = v310;
                  v331.i64[0] = *&v593[64];
                  v335 = v594;
                  v333.i64[0] = v595.i64[0];
                  *v593 = *&v593[64];
                  *&v593[8] = v594;
                  v336 = v595.u64[1];
                  *&v593[16] = v595;
                  v337 = v596.u64[1];
                  v332.i64[0] = v596.i64[0];
                  *&v593[32] = v596;
                  v334.i64[0] = v597;
                  *&v593[48] = v597;
                  v312 += 6;
                  v303 = v340;
                }

                while (v299 != v312);
                v303 = v340 + v566;
                v307 = v338;
                v47 = (v47 + v312 + v338 + 2);
                v306 -= 8;
              }

              while (v306);
              v386 = (v561 + 7) & 0xFFFFFFF8;
              v387 = 34359738384 * ((v553 + 5) / 6);
              v388 = -((HIDWORD(v387) + (v387 >> 63) + 7) * v305);
              a4 = v550;
              v47 = v552;
              v389 = v552;
              v10 = v548;
              do
              {
                v390 = *v389;
                *v593 = *v389;
                v391 = *(v389 + v305);
                *&v593[8] = v391;
                v392 = (v389 + v305 + v305);
                v393 = *v392;
                *&v593[16] = *v392;
                v394 = (v392 + v305);
                v395 = *v394;
                *&v593[24] = *v394;
                v396 = (v394 + v305);
                v397 = *v396;
                *&v593[32] = *v396;
                v398 = (v396 + v305);
                v399 = *v398;
                *&v593[40] = *v398;
                v400 = (v398 + v305);
                v401 = *v400;
                *&v593[48] = *v400;
                *&v593[56] = *(v400 + v305);
                v402 = (v389 + v307);
                v403 = (v553 + 5) % 6 - v553 - 5;
                do
                {
                  v404 = v402;
                  *&v593[56] = *v402;
                  v405 = (v402 + v305);
                  *&v593[64] = *v405;
                  v406 = (v405 + v305);
                  v594 = *v406;
                  v407 = (v406 + v305);
                  v595.i64[0] = *v407;
                  v408 = (v407 + v305);
                  v595.i64[1] = *v408;
                  v409 = (v408 + v305);
                  v596.i64[0] = *v409;
                  v410 = (v409 + v305);
                  v596.i64[1] = *v410;
                  v411 = (v410 + v305);
                  v597 = *v411;
                  v412 = vmovl_u8(v391);
                  v413 = vmovl_u8(v395);
                  v414 = vmovl_u8(v397);
                  v415 = vmovl_u8(*&v593[56]);
                  v567 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v586, vmovl_u8(v401)), v587, vmovl_u8(v399)), v588, vmovl_u8(v393)), v590, v412), v592, vmovl_u8(v390)), v584, v415), vmulq_s16(v583, v413)), vmulq_s16(v582, v414));
                  v416 = vmovl_u8(v31[5]);
                  v417 = vmovl_u8(v31[6]);
                  v418 = vmovl_u8(v31[7]);
                  v419 = vmovl_u8(v33[5]);
                  v420 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v592, v414), v587, vmovl_u8(v594)), v586, vmovl_u8(*v595.i8)), v584, vmovl_u8(v595.u64[1])), v590, vmovl_u8(*&v593[40])), v588, vmovl_u8(*&v593[48]));
                  v421 = vmovl_u8(v33[6]);
                  v422 = vmovl_u8(v33[7]);
                  v423 = vmovl_u8(v31[4]);
                  v424 = vqaddq_s16(vqaddq_s16(v420, vmulq_s16(v583, v415)), vmulq_s16(v582, vmovl_u8(*&v593[64])));
                  v425 = vmovl_u8(v33[4]);
                  v426 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v573, vmovl_u8(*v33)), v572, vmovl_u8(v33[1])), v571, vmovl_u8(v33[2])), v570, v419), v569, v421), v568, v422), vmulq_s16(v565, vmovl_u8(v33[3]))), vmulq_s16(v564, v425));
                  v427 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v581, v423), v580, v416), v579, v417), v578, vmovl_u8(v34[5])), v577, vmovl_u8(v34[6])), v576, vmovl_u8(v34[7])), vmulq_s16(v575, v418)), vmulq_s16(v574, vmovl_u8(v34[4])));
                  v428 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v573, v425), v572, v419), v571, v421), v570, vmovl_u8(v35[5])), v569, vmovl_u8(v35[6])), v568, vmovl_u8(v35[7])), vmulq_s16(v565, v422));
                  v429 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v581, vmovl_u8(*v31)), v580, vmovl_u8(v31[1])), v579, vmovl_u8(v31[2])), v578, v416), v577, v417), v576, v418), vmulq_s16(v575, vmovl_u8(v31[3]))), vmulq_s16(v574, v423)), 7uLL);
                  v430 = vmulq_s16(v564, vmovl_u8(v35[4]));
                  *v297 = vqrshrun_n_s16(v567, 7uLL);
                  *(v297 + v298) = v429;
                  *(v297 + 2 * v298) = vqrshrun_n_s16(v426, 7uLL);
                  *(v297 + 3 * v298) = vqrshrun_n_s16(v424, 7uLL);
                  *(v297 + 4 * v298) = vqrshrun_n_s16(v427, 7uLL);
                  *(v297 + 5 * v298) = vqrshrun_n_s16(vqaddq_s16(v428, v430), 7uLL);
                  v390 = *&v593[64];
                  v391 = v594;
                  v393 = *v595.i8;
                  *v593 = *&v593[64];
                  *&v593[8] = v594;
                  v395 = v595.u64[1];
                  *&v593[16] = v595;
                  v399 = v596.u64[1];
                  v397 = *v596.i8;
                  *&v593[32] = v596;
                  v401 = v597;
                  *&v593[48] = v597;
                  v297 = (v297 + 6 * v298);
                  v402 = (&v411[v305] - 7 * v305);
                  v403 += 6;
                }

                while (v403);
                v389 = (&v404[v305 + 1] + v388);
                v297 = (v297 - v298 * 6 * ((v553 + 5) / 6) + 8);
                v386 -= 8;
              }

              while (v386);
            }

            a3 = v549;
          }
        }

        free(v47);
        v14 = v546;
        v12 = v547;
        v29 = v544;
        v16 = v545;
        v28 = v560;
LABEL_96:
        if (++v28 == v29)
        {

          return sub_277A48A28(a2, a5);
        }
      }
    }
  }

  else if (v21)
  {
    v22 = a1[5];
    v23 = a1[7];
    v24 = a2[5];
    v25 = a2[7];
    if (v22 == 2 * v24 && 2 * v25 == v23)
    {
      goto LABEL_20;
    }

    v26 = 4 * v24;
    v27 = 4 * v25;
    if (v26 == v22 && v27 == v23)
    {
      goto LABEL_20;
    }

    if (v26 == 3 * v22 && v27 == 3 * v23)
    {
      goto LABEL_20;
    }
  }

LABEL_101:

  return sub_2779F3C40();
}

uint64_t sub_27798AA18(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = 8 * v1 * v1;
  if (v2 <= 0x1FFFFFFE9 && (v4 = *(a1 + 52), v5 = *a1, (v6 = malloc_type_malloc(v2 + 23, 0x5F484EBFuLL)) != 0) && (v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0, *(v7 - 8) = v6, v7))
  {
    memcpy(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5, 8 * v1 * v1);
    if (v1 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v4 + v4) / v1;
      v11 = 1;
      v12 = v7;
      do
      {
        if (v11 >= v1 - 1)
        {
          v13 = v1 - 1;
        }

        else
        {
          v13 = v11;
        }

        v14 = v13 + v8;
        if (v9 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v9;
        }

        ++v9;
        *(v7 + 8 * (v15 + v8 - 1)) = *(v7 + 8 * (v15 + v8 - 1)) - v10;
        *(v12 + 8 * v8) = *(v12 + 8 * v8) + v10 * 2.0;
        *(v7 + 8 * v14) = *(v7 + 8 * v14) - v10;
        v12 += 8;
        v8 += v1;
        ++v11;
      }

      while (v1 != v9);
      v16 = 0;
      v17 = v1 + 1;
      v18 = *(a1 + 56) / *(a1 + 52) * 0.000122070312;
      v19 = *(a1 + 8);
      do
      {
        *(v7 + 8 * v16) = *(v7 + 8 * v16) + 0.000122070312;
        *v19 = v18 + *v19;
        ++v19;
        v16 += v17;
        --v1;
      }

      while (v1);
    }

    *a1 = v7;
    v20 = sub_27798ABBC(a1);
    *a1 = v5;
    free(*(v7 - 8));
    return v20;
  }

  else
  {
    fwrite("Unable to allocate copy of A\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

uint64_t sub_27798ABBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 8 * v2;
  if ((8 * v2) <= 0x1FFFFFFE9 && (v4 = malloc_type_malloc(v3 + 23, 0x5F484EBFuLL)) != 0)
  {
    v5 = ((v4 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v5 - 1) = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 * v2) > 0x1FFFFFFE9 || (v6 = malloc_type_malloc(v3 * v2 + 23, 0x5F484EBFuLL)) == 0)
  {
    v7 = 0;
LABEL_35:
    fprintf(*MEMORY[0x277D85DF8], "Unable to allocate temp values of size %dx%d\n", v2, v2);
    goto LABEL_36;
  }

  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v7 - 8) = v6;
  if (v7)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_35;
  }

  memcpy(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), *a1, v3 * v2);
  memcpy(v5, *(a1 + 8), 8 * v2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 16);
  v11 = (v2 - 1);
  if (v2 > 1)
  {
    v12 = 0;
    v13 = 8 * v9;
    v14 = v7 + 8 * v9;
    v15 = v7;
LABEL_13:
    v16 = (v7 + 8 * (v2 - 1) * v9);
    v17 = (v7 + 8 * (v2 - 2) * v9);
    v18 = v2 - 1;
    v19 = v7 + 8 * v12;
    do
    {
      v20 = v18 - 1;
      if (fabs(*(v19 + 8 * (v18 - 1) * v9)) < fabs(*(v19 + 8 * v18 * v9)))
      {
        v21 = v16;
        v22 = v17;
        v23 = v2;
        do
        {
          v24 = *v21;
          *v21++ = *v22;
          *v22++ = v24;
          --v23;
        }

        while (v23);
        *&v5[v20] = vextq_s8(*&v5[v20], *&v5[v20], 8uLL);
      }

      v17 -= v9;
      v16 -= v9;
      v18 = v20;
    }

    while (v20 > v12);
    v25 = v14;
    v26 = v12;
    while (1)
    {
      v27 = *(v19 + 8 * v9 * v12);
      if (fabs(v27) < 1.0e-16)
      {
        break;
      }

      v28 = -*(v19 + 8 * ++v26 * v9) / v27;
      v29 = v15;
      v30 = v25;
      v31 = v2;
      do
      {
        v32 = *v29++;
        *v30 = *v30 + v28 * v32;
        ++v30;
        --v31;
      }

      while (v31);
      *&v5[v26] = *&v5[v26] + v28 * *&v5[v12];
      v25 = (v25 + v13);
      if (v26 == v11)
      {
        ++v12;
        v14 += v13;
        v15 = (v15 + v13);
        if (v12 != v11)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }
    }

LABEL_36:
    v45 = 0;
    if (!v5)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_25:
  if (v2 < 1)
  {
LABEL_33:
    v45 = 1;
  }

  else
  {
    v33 = v11 - v2 + 1;
    v34 = (v10 + 8 * v2);
    v35 = (v7 + 8 * (v2 - 1) * v9 + 8 * v2);
    while (1)
    {
      v36 = *(v7 + 8 * (v2 - 1) + 8 * v9 * (v2 - 1));
      if (fabs(v36) < 1.0e-16)
      {
        break;
      }

      v37 = 0.0;
      if (v2 <= v11)
      {
        v38 = v35;
        v39 = v34;
        v40 = v33;
        do
        {
          v41 = *v38++;
          v42 = v41;
          v43 = *v39++;
          v37 = v37 + v42 * v43;
          --v40;
        }

        while (v40);
      }

      *(v10 + 8 * (v2 - 1)) = (*&v5[v2 - 1] - v37) / v36;
      ++v33;
      --v34;
      v35 += ~v9;
      if (v2-- <= 1)
      {
        goto LABEL_33;
      }
    }

    v45 = 0;
  }

LABEL_37:
  free(*(v5 - 1));
LABEL_38:
  if (v7)
  {
    free(*(v7 - 8));
  }

  return v45;
}

double sub_27798AECC(uint64_t a1, int a2)
{
  v4 = 8 * a2;
  v5 = v4 * a2;
  if (v5 <= 0x1FFFFFFE9)
  {
    v6 = malloc_type_malloc(v5 + 23, 0x5F484EBFuLL);
    if (v6)
    {
      v7 = v6;
      v6 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v6 - 1) = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  if (v4 <= 0x1FFFFFFE9)
  {
    v10 = malloc_type_malloc(v4 + 23, 0x5F484EBFuLL);
    if (v10)
    {
      v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v11 - 8) = v10;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 8) = v11;
    v9 = (a1 + 8);
    v12 = malloc_type_malloc(v4 + 23, 0x5F484EBFuLL);
    if (v12)
    {
      v8 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v8 - 8) = v12;
    }

    else
    {
      v8 = 0;
    }

    v6 = *a1;
  }

  else
  {
    v8 = 0;
    *(a1 + 8) = 0;
    v9 = (a1 + 8);
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = a2;
  if (v6 && *v9 && v8)
  {
    bzero(v6, v5);
    bzero(*(a1 + 16), v4);
    bzero(*(a1 + 8), v4);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed to allocate system of equations of size %d\n", a2);
    if (*a1)
    {
      free(*(*a1 - 8));
    }

    if (*v9)
    {
      free(*(*v9 - 8));
    }

    v14 = *(a1 + 16);
    if (v14)
    {
      free(*(v14 - 8));
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_27798B064(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      free(*(*a1 - 8));
    }

    v2 = a1[1];
    if (v2)
    {
      free(*(v2 - 8));
    }

    v3 = a1[2];
    if (v3)
    {
      free(*(v3 - 8));
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t sub_27798B0C4(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a3)
  {
    goto LABEL_23;
  }

  v4 = *(a1 + 48);
  if (v4 < 1)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 40);
  *(a3 + 2) = 0;
  if (v4 > 0x1FFFFFFE || (v8 = malloc_type_malloc(16 * v4 + 23, 0x5F484EBFuLL)) == 0)
  {
    *a3 = 0;
    goto LABEL_23;
  }

  v9 = v8;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v10 - 1) = v9;
  *a3 = v10;
  if (!v10)
  {
LABEL_23:
    fwrite("Failed to init lut\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  *(a3 + 2) = v4;
  bzero(v10, 16 * v4);
  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 16);
    v14 = (*a3 + 8);
    do
    {
      *(v14 - 1) = *(a1 + 32) + v12 / (v11 - 1) * (*(a1 + 40) - *(a1 + 32));
      *v14 = *(v13 + 8 * v12);
      v14 += 2;
      ++v12;
    }

    while (v11 != v12);
  }

  v15 = 8 * v11;
  if (v15 <= 0x1FFFFFFE9 && (v16 = malloc_type_malloc(v15 + 23, 0x5F484EBFuLL)) != 0 && (v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0, *(v17 - 8) = v16, v17))
  {
    bzero(((v16 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * *(a1 + 48));
    sub_27798B33C(a1, a3, v17, 0, *(a1 + 48));
    v18 = *(a3 + 2);
    if (v18 >= 3)
    {
      v19 = v6 * 0.00625 / 255.0;
      do
      {
        v20 = 1;
        v21 = 1;
        do
        {
          if (*(v17 + 8 * v20) < *(v17 + 8 * v21))
          {
            v21 = v20;
          }

          ++v20;
        }

        while (v18 - 1 != v20);
        v22 = v21 + 1;
        v23 = v21 - 1;
        v24 = *a3;
        if (v18 <= a2 && *(v17 + 8 * v21) / (*(v24 + 16 * v22) - *(v24 + 16 * v23)) > v19)
        {
          break;
        }

        memmove((v24 + 16 * v21), (v24 + 16 * v21 + 16), 16 * (v18 + ~v21));
        --*(a3 + 2);
        sub_27798B33C(a1, a3, v17, v23, v22);
        v18 = *(a3 + 2);
      }

      while (v18 > 2);
    }

    free(*(v17 - 8));
    return 1;
  }

  else
  {
    if (*a3)
    {
      free(*(*a3 - 8));
    }

    result = 0;
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_27798B33C(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  if (a4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a4;
  }

  LODWORD(v6) = *(a2 + 2) - 1;
  if (v6 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = v6;
  }

  if (v5 < v6)
  {
    v7 = *(result + 48);
    v8 = *a2;
    v9 = (v7 - 1);
    do
    {
      v10 = v8 + 16 * v5;
      v11 = *(v10 - 16);
      v12 = *(result + 32);
      v13 = *(result + 40);
      if (v13 >= v11)
      {
        v14 = *(v10 - 16);
      }

      else
      {
        v14 = *(result + 40);
      }

      if (v12 <= v11)
      {
        v15 = v14;
      }

      else
      {
        v15 = *(result + 32);
      }

      v16 = v13 - v12;
      v17 = vcvtmd_s64_f64((v15 - v12) * v9 / (v13 - v12));
      v18 = v17 & ~(v17 >> 31);
      v19 = v5 + 1;
      v20 = (v8 + 16 * (v5 + 1));
      v21 = *v20;
      if (v13 >= *v20)
      {
        v13 = *v20;
      }

      if (v12 > v21)
      {
        v13 = *(result + 32);
      }

      v22 = vcvtpd_s64_f64((v13 - v12) * v9 / v16);
      if (v7 <= v22)
      {
        v22 = v7 - 1;
      }

      v23 = 0.0;
      if (v18 <= v22)
      {
        v24 = (v22 + 1);
        do
        {
          v25 = v12 + v18 / v9 * v16;
          if (v25 >= v11 && v25 < v21)
          {
            v23 = v23 + vabdd_f64(*(*(result + 16) + 8 * v18), (v25 - v11) / (v21 - v11) * v20[1] + *(v10 - 8) * (1.0 - (v25 - v11) / (v21 - v11)));
          }

          ++v18;
        }

        while (v24 != v18);
      }

      *(a3 + 8 * v5++) = 255.0 / v7 * v23;
    }

    while (v19 != v6);
  }

  return result;
}

uint64_t sub_27798B464(uint64_t a1, signed int a2, char a3, int a4)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_27798AECC(&v27, 3);
  if (!v8)
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed to init equation system for block_size=%d\n", a2);
    return 0;
  }

  v9 = malloc_type_malloc(0x5FuLL, 0x5F484EBFuLL);
  if (v9)
  {
    v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v10 - 8) = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((3 * a2 * a2) > 0x3FFFFFFD || (v11 = malloc_type_malloc(8 * (3 * a2 * a2) + 23, 0x5F484EBFuLL)) == 0)
  {
    v12 = 0;
LABEL_23:
    fprintf(*MEMORY[0x277D85DF8], "Failed to alloc A or AtA_inv for block_size=%d\n", a2);
    if (v10)
    {
      free(*(v10 - 8));
    }

    if (v12)
    {
      free(*(v12 - 8));
    }

    sub_27798B064(&v27);
    return 0;
  }

  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 - 8) = v11;
  if (!v10 || !v12)
  {
    goto LABEL_23;
  }

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 20) = a2;
  *(a1 + 24) = ~(-1 << a3);
  *(a1 + 32) = a4;
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = vcvtd_n_f64_u32(a2, 1uLL);
    v15 = v27;
    do
    {
      v16 = 0;
      do
      {
        v17 = 0;
        v29[0] = (v13 - v14) / v14;
        v29[1] = (v16 - v14) / v14;
        v29[2] = 1.0;
        v18 = v12 + 24 * (v16 + v13 * a2);
        *v18 = v29[0];
        *(v18 + 8) = (v16 - v14) / v14;
        *(v18 + 16) = 0x3FF0000000000000;
        v19 = v15;
        do
        {
          v20 = 0;
          v21 = v29[v17];
          do
          {
            *(v19 + v20 * 8) = *(v19 + v20 * 8) + v21 * v29[v20];
            ++v20;
          }

          while (v20 != 3);
          ++v17;
          v19 += 24;
        }

        while (v17 != 3);
        ++v16;
      }

      while (v16 != a2);
      ++v13;
    }

    while (v13 != a2);
  }

  for (i = 0; i != 24; i += 8)
  {
    v23 = *(&v27 + 1);
    **(&v27 + 1) = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + i) = 0x3FF0000000000000;
    sub_27798ABBC(&v27);
    v24 = (v10 + i);
    v25 = v28;
    *v24 = *v28;
    v24[3] = *(v25 + 8);
    v24[6] = *(v25 + 16);
  }

  sub_27798B064(&v27);
  return 1;
}

double sub_27798B6EC(double *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double *a8, double a9, double *a10)
{
  v10 = a10;
  v61 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 5);
  v12 = (v11 * v11);
  v14 = *a1;
  v13 = *(a1 + 1);
  if (*(a1 + 8))
  {
    if (v11 >= 1)
    {
      v15 = 0;
      v16 = a6;
      v17 = a4 - 1;
      v18 = a7;
      v19 = a10;
      do
      {
        if (v15 + v18 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v15 + v18;
        }

        if (v15 + v18 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 * a5;
        v23 = v16;
        v24 = v19;
        v25 = v11;
        do
        {
          if (v23 >= a3 - 1)
          {
            v26 = a3 - 1;
          }

          else
          {
            v26 = v23;
          }

          if (v23 < 0)
          {
            v26 = 0;
          }

          LOWORD(a9) = *(a2 + 2 * (v26 + v22));
          a9 = *&a9 / a1[3];
          *v24++ = a9;
          ++v23;
          --v25;
        }

        while (v25);
        ++v15;
        v19 += v11;
      }

      while (v15 != v11);
    }
  }

  else if (v11 >= 1)
  {
    v27 = 0;
    v28 = a4 - 1;
    v29 = a6;
    v30 = a7;
    v31 = a10;
    do
    {
      if (v27 + v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v27 + v30;
      }

      if (v27 + v30 >= 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33 * a5;
      v35 = v29;
      v36 = v31;
      v37 = v11;
      do
      {
        if (v35 >= a3 - 1)
        {
          v38 = a3 - 1;
        }

        else
        {
          v38 = v35;
        }

        if (v35 < 0)
        {
          v38 = 0;
        }

        LOBYTE(a9) = *(a2 + v38 + v34);
        a9 = *&a9 / a1[3];
        *v36++ = a9;
        ++v35;
        --v37;
      }

      while (v37);
      ++v27;
      v31 += v11;
    }

    while (v27 != v11);
  }

  v39 = 0;
  v40 = v59;
  v41 = v13;
  do
  {
    v42 = 0.0;
    if (v11)
    {
      v43 = a10;
      v44 = v41;
      v45 = (v11 * v11);
      do
      {
        v46 = *v43++;
        v47 = v46;
        v48 = *v44;
        v44 += 3;
        v42 = v42 + v47 * v48;
        --v45;
      }

      while (v45);
    }

    *v40++ = v42;
    ++v39;
    ++v41;
  }

  while (v39 != 3);
  v49 = 0;
  v50 = v60;
  do
  {
    v51 = 0;
    result = 0.0;
    do
    {
      result = result + *(*&v14 + v51) * *&v59[v51];
      v51 += 8;
    }

    while (v51 != 24);
    *v50++ = result;
    ++v49;
    *&v14 += 24;
  }

  while (v49 != 3);
  if (v11)
  {
    v53 = 0;
    v54 = 0;
    v55 = a8;
    do
    {
      v56 = 0;
      v57 = 0.0;
      do
      {
        v57 = v57 + v13[v53 + v56] * *&v60[v56 * 8];
        ++v56;
      }

      while (v56 != 3);
      *v55++ = v57;
      ++v54;
      v53 += 3;
    }

    while (v54 != v12);
    do
    {
      v58 = *a8++;
      result = *v10 - v58;
      *v10++ = result;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_27798B964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > 0.0;
  }
}

void sub_27798B980(uint64_t a1, int a2, char a3)
{
  sub_27798AECC(a1, a2);
  if (v6)
  {
    *(a1 + 32) = 0u;
    v7 = a1 + 32;
    *(v7 + 72) = 0x3FF0000000000000;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 64) = 0;
    *(v7 + 40) = ~(-1 << a3);
    *(v7 + 48) = 20;

    sub_27798AECC(v7, 20);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed initialization noise state with size %d\n", a2);
  }
}

void sub_27798BA44(void *a1)
{
  if (a1)
  {
    v2 = a1[86];
    if (v2)
    {
      free(*(v2 - 8));
    }

    for (i = 6; i != 48; i += 14)
    {
      sub_27798B064(&a1[i + 38]);
      sub_27798B064(&a1[i - 4]);
      sub_27798B064(&a1[i + 42]);
      sub_27798B064(&a1[i]);
    }

    bzero(a1, 0x2C0uLL);
  }
}

uint64_t sub_27798BAD0(uint64_t a1, int a2)
{
  result = sub_27798ABBC(a1);
  *(a1 + 104) = 0x3FF0000000000000;
  if (result)
  {
    v5 = *(a1 + 24);
    v6 = (v5 - a2);
    if (v5 <= a2)
    {
      v17 = 0.0;
      v21 = 0.0 / v6;
    }

    else
    {
      v7 = 0;
      v8 = *a1;
      v9 = *(a1 + 96);
      v10 = 0.0;
      v11 = (v5 - a2);
      do
      {
        v10 = v10 + *(v8 + 8 * v7) / v9;
        v7 += v5 + 1;
        --v11;
      }

      while (v11);
      v12 = v6;
      v13 = v5 - 1;
      v14 = *(a1 + 8);
      v15 = (v8 + 8 * (v5 - 1));
      v16 = 8 * v5;
      v17 = 0.0;
      v18 = *(a1 + 16);
      do
      {
        v19 = *v14;
        if (a2)
        {
          v19 = v19 - *v15 * *(*(a1 + 16) + 8 * v13);
        }

        v20 = *v18++;
        v17 = v17 + v19 * v20 / v9;
        v15 = (v15 + v16);
        ++v14;
        --v6;
      }

      while (v6);
      v21 = v10 / v12;
    }

    v22 = sqrt(fmax(v21 / fmax(v21 - v17, 0.000001), 0.000001));
    if (v22 < 1.0)
    {
      v22 = 1.0;
    }

    *(a1 + 104) = v22;
  }

  return result;
}

double sub_27798BBD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = v2 - 1;
  bzero(*(a1 + 16), 8 * v2);
  result = *(*a1 + 8 * (v3 + v3 * *(a1 + 24)));
  if (fabs(result) > 0.000001)
  {
    result = *(*(a1 + 8) + 8 * v3) / result;
    *(*(a1 + 16) + 8 * v3) = result;
  }

  return result;
}

double sub_27798BC3C(uint64_t a1, double **a2)
{
  v2 = *(a1 + 24);
  if (v2 >= 1)
  {
    v3 = 0;
    v5 = *a2;
    v4 = a2[1];
    v6 = 8 * v2;
    v8 = *a1;
    v7 = *(a1 + 8);
    do
    {
      v9 = v5;
      v10 = v8;
      v11 = v2;
      do
      {
        v12 = *v9++;
        *v10 = v12 + *v10;
        ++v10;
        --v11;
      }

      while (v11);
      result = v4[v3] + *(v7 + 8 * v3);
      *(v7 + 8 * v3++) = result;
      v8 = (v8 + v6);
      v5 = (v5 + v6);
    }

    while (v3 != v2);
  }

  return result;
}

unint64_t sub_27798BCA4(unsigned int a1)
{
  if (a1 * a1 > 0x7FFFFFFA)
  {
    return 0;
  }

  v2 = malloc_type_malloc(4 * a1 * a1 + 23, 0x5F484EBFuLL);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v3 - 8) = v2;
  if (v3)
  {
    v4 = a1 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = 0;
    v6 = a1;
    v45 = vdupq_n_s64(a1 - 1);
    v32 = a1;
    v37 = vdupq_lane_s64(COERCE__INT64(a1), 0);
    v7 = (a1 + 3) & 0xFFFFFFFC;
    v35 = vdupq_n_s64(0xBFF921FB54442D18);
    v36 = vdupq_n_s64(0x400921FB54442D18uLL);
    v8 = (v3 + 8);
    v9 = 4 * a1;
    __asm { FMOV            V0.2D, #0.5 }

    v33 = _Q0;
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v15 = cos((v5 + 0.5) * 3.14159265 / v32 + -1.57079633);
      v16 = 0;
      v17 = v8;
      v18 = xmmword_277BB70A0;
      v19 = xmmword_277BB7090;
      do
      {
        v43 = v19;
        v20 = vorr_s8(vdup_n_s32(v16), 0x300000002);
        v44 = v18;
        v21 = vmovn_s64(vcgeq_u64(v45, v18));
        v40 = vuzp1_s16(v21, v20).u8[0];
        v22.i64[0] = v16;
        v22.i64[1] = (v16 + 1);
        v23 = vcvtq_f64_u64(v22);
        v22.i64[0] = v20.u32[0];
        v22.i64[1] = v20.u32[1];
        v46 = vaddq_f64(vdivq_f64(vmulq_f64(vaddq_f64(v23, v33), v36), v37), v35);
        __xa = vaddq_f64(vdivq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_u64(v22), v33), v36), v37), v35);
        v39 = cos(__xa.f64[1]);
        __x = cos(__xa.f64[0]);
        v38 = cos(v46.f64[1]);
        v24.f64[0] = cos(v46.f64[0]);
        v24.f64[1] = v38;
        if (v40)
        {
          v25 = v15 * v24.f64[0];
          *(v17 - 2) = v25;
        }

        if (vuzp1_s16(v21, *&v24).i8[2])
        {
          v26 = vmuld_lane_f64(v15, v24, 1);
          *(v17 - 1) = v26;
        }

        v27.f64[0] = __x;
        v27.f64[1] = v39;
        v28 = vmovn_s64(vcgeq_u64(v45, v43));
        if (vuzp1_s16(v28, v28).i32[1])
        {
          v29 = v15 * __x;
          *v17 = v29;
          v30 = vmuld_lane_f64(v15, v27, 1);
          v17[1] = v30;
        }

        v16 += 4;
        v19 = vaddq_s64(v43, v34);
        v18 = vaddq_s64(v44, v34);
        v17 += 4;
      }

      while (v7 != v16);
      ++v5;
      v8 = (v8 + v9);
    }

    while (v5 != v6);
  }

  return v3;
}

void sub_27798BF78(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(*(v2 - 8));
  }

  v3 = (a1 + 40);
  v4 = 3;
  do
  {
    v5 = v3[3];
    if (v5)
    {
      free(*(v5 - 8));
    }

    if (*v3)
    {
      free(*(*v3 - 8));
    }

    ++v3;
    --v4;
  }

  while (v4);
  sub_27798BA44((a1 + 136));
  v6 = *(a1 + 104);
  if (v6)
  {
    free(*(v6 - 8));
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    free(*(v7 - 8));
  }

  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v8 = *(a1 - 8);

  free(v8);
}

int16x4_t sub_27798C02C(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 8);
  v7 = *(a1 - 8);
  v8 = (a1 - 8 + a2);
  v9 = (v8 + a2);
  v10 = *&v9->i8[a2];
  v11 = vtrn1_s8(*v7.i8, *v8);
  v12 = vtrn2_s8(*v7.i8, *v8);
  v13 = vtrn1_s8(*v9, *v10.i8);
  v14 = vtrn2_s8(*v9, *v10.i8);
  v15 = vtrn1_s16(v11, v13);
  v16 = vtrn2_s16(v11, v13);
  v17 = vtrn1_s16(v12, v14);
  v18 = vtrn2_s16(v12, v14);
  v7.i64[0] = vextq_s8(v7, v7, 8uLL).u64[0];
  v19 = vextq_s8(*v8->i8, *v8->i8, 8uLL).u64[0];
  v20 = vextq_s8(*v9->i8, *v9->i8, 8uLL).u64[0];
  v10.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
  v21 = vtrn1_s8(*v7.i8, v19);
  *v7.i8 = vtrn2_s8(*v7.i8, v19);
  v22 = vtrn1_s8(v20, *v10.i8);
  v23 = vtrn2_s8(v20, *v10.i8);
  *v10.i8 = vtrn1_s16(v21, v22);
  v24 = vtrn2_s16(v21, v22);
  v25 = vtrn1_s16(*v7.i8, v23);
  v56 = v15;
  v57 = vtrn2_s16(*v7.i8, v23);
  *v7.i8 = vdup_lane_s32(v57, 0);
  v7.i32[0] = v15.i32[1];
  v26 = vrev64_s32(v25);
  v27 = __PAIR64__(v26.u32[0], v16.u32[0]);
  v26.i32[0] = v16.i32[1];
  *v10.i8 = vrev64_s32(*v10.i8);
  v28 = __PAIR64__(v10.u32[0], v18.u32[0]);
  v10.i32[0] = v18.i32[1];
  v29 = vrev64_s32(v24);
  v54 = __PAIR64__(v29.u32[0], v17.u32[0]);
  v55 = v17;
  v29.i32[0] = v17.i32[1];
  v62 = v26;
  v63 = *v10.i8;
  v60 = *v7.i8;
  v61 = v29;
  v59 = v28;
  v58 = v27;
  sub_27798C1E8(&v58, &v59, &v60, &v61, &v62, &v63, a3, a4, v54, a5);
  v30 = vzip1_s32(v56, v60);
  v31 = vzip1_s32(v58, v62);
  v32 = vzip1_s32(v59, v63);
  v33 = vzip1_s32(v55, v61);
  v34 = vzip2_s32(v60, v57);
  v35 = vzip2_s32(v62, v58);
  v36 = vzip2_s32(v63, v59);
  v37 = vzip2_s32(v61, v54);
  v38 = vtrn1_s8(v36, v35);
  v39 = vtrn2_s8(v36, v35);
  v40 = vtrn1_s8(v37, v34);
  v41 = vtrn2_s8(v37, v34);
  v42 = vtrn1_s16(v38, v40);
  v43 = vtrn2_s16(v38, v40);
  v44 = vtrn1_s16(v39, v41);
  result = vtrn2_s16(v39, v41);
  v46 = vtrn1_s8(v30, v33);
  v47 = vtrn2_s8(v30, v33);
  v48 = vtrn1_s8(v31, v32);
  v49 = vtrn2_s8(v31, v32);
  *&v50 = vtrn1_s16(v46, v48);
  *&v51 = vtrn2_s16(v46, v48);
  *&v52 = vtrn1_s16(v47, v49);
  *&v53 = vtrn2_s16(v47, v49);
  *(&v50 + 1) = v42;
  *(&v52 + 1) = v44;
  *(&v51 + 1) = v43;
  *(&v53 + 1) = result;
  *v6 = v50;
  *v8->i8 = v52;
  *v9->i8 = v51;
  *&v9->i8[a2] = v53;
  return result;
}

uint8x8_t sub_27798C1E8(uint8x8_t *a1, uint8x8_t *a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, uint8x8_t *a6, unsigned int a7, unsigned int a8, uint8x8_t a9, unsigned __int8 a10)
{
  v10 = vabd_u8(*a6, *a5);
  v11 = vcge_u8(vdup_n_s8(a8), vmax_u8(vmax_u8(vabd_u8(*a3, *a4), vabd_u8(*a4, *a5)), v10));
  v12 = vabdl_u8(vzip1_s32(*a6, *a5), vzip2_s32(*a6, *a5));
  v13 = vcge_u16(vdup_n_s16(a7), vsra_n_u16(vadd_s16(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL), 1uLL));
  v14 = vand_s8(vuzp1_s8(v13, v13), vand_s8(vrev64_s32(v11), v11));
  v15 = vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(v10, vabd_u8(*a4, *a6)), vabd_u8(*a3, *a6)));
  v16 = vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(vabd_u8(*a2, *a6), vabd_u8(*a1, *a6)), vabd_u8(a9, *a6)));
  v17 = veor_s8(*a6, 0x8080808080808080);
  v18 = vdup_lane_s32(v17, 0);
  v19 = vdup_lane_s32(v17, 1);
  v20 = veor_s8(*a5, 0x8080808080808080);
  v21 = vdup_lane_s32(v20, 0);
  v22 = vdup_lane_s32(v20, 1);
  v23 = vcgt_u8(v10, vdup_n_s8(a10));
  v24 = vorr_s8(vrev64_s32(v23), v23);
  v25 = vand_s8(vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(v19, v18), 0x303030303030303), vand_s8(v24, vqsub_s8(v21, v22)))), v14);
  v26 = vshr_n_s8(vqadd_s8(v25, 0x404040404040404), 3uLL);
  v27 = vbic_s8(vrshr_n_s8(v26, 1uLL), v24);
  v28 = vext_s8(veor_s8(vqadd_s8(v18, vshr_n_s8(vqadd_s8(v25, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(v19, v26), 0x8080808080808080), 4uLL);
  v29 = vext_s8(veor_s8(vqadd_s8(v21, v27), 0x8080808080808080), veor_s8(vqsub_s8(v22, v27), 0x8080808080808080), 4uLL);
  v30 = vrev64_s32(*a6);
  v31 = vrev64_s32(*a5);
  v32 = vaddl_u8(*a4, *a3);
  v33 = vaddw_u8(vaddw_u8(vaddw_u8(v32, *a5), *a6), v30);
  v34 = vaddw_u8(v33, *a3);
  v35 = vaddq_s16(v32, v34);
  v36 = vaddl_u8(v31, vrev64_s32(*a4));
  v37 = vrshrn_n_s16(vaddq_s16(vaddw_u8(v36, *a6), v33), 3uLL);
  *v34.i8 = vrshrn_n_s16(vaddq_s16(vaddl_u8(v31, *a5), v34), 3uLL);
  v38 = vaddw_u8(vaddw_u8(vaddw_u8(v33, a9), *a1), *a2);
  v39 = vaddw_u8(v38, *a2);
  v40 = vaddw_u8(v39, *a3);
  v41 = vaddw_u8(v38, *a5);
  v42 = vaddw_u8(v41, *a4);
  v43 = vaddw_u8(vmull_u8(a9, 0x606060606060606), *a1);
  v44 = vaddq_s16(vaddq_s16(vaddl_u8(*a1, v31), vshll_n_u8(a9, 2uLL)), v40);
  v45 = vaddq_s16(vmlal_u8(vaddw_u8(v36, *a4), a9, 0x303030303030303), v40);
  v46 = vaddw_u8(v36, vrev64_s32(*a3));
  v47 = vaddq_s16(vaddq_s16(vaddw_u8(v46, *a3), vshll_n_u8(a9, 1uLL)), v42);
  v48 = vaddw_u8(v46, vrev64_s32(*a2));
  *v41.i8 = vrshrn_n_s16(vaddq_s16(vaddq_s16(vaddw_u8(vaddl_u8(v30, *a6), vrev64_s32(*a1)), v48), v41), 4uLL);
  v49 = vrshrn_n_s16(vaddq_s16(vaddw_u8(vaddw_u8(v48, *a6), a9), v42), 4uLL);
  v50 = vand_s8(vand_s8(vrev64_s32(v15), v15), v14);
  v51 = vand_s8(vand_s8(vrev64_s32(v16), v16), v50);
  *a6 = vbsl_s8(v50, *a6, v28);
  *a5 = vbsl_s8(v50, *a5, v29);
  *a6 = vbsl_s8(v50, v37, *a6);
  *a5 = vbsl_s8(v50, *v34.i8, *a5);
  *a4 = vbsl_s8(v50, vrshrn_n_s16(v35, 3uLL), *a4);
  *a6 = vbsl_s8(v51, *v41.i8, *a6);
  *a5 = vbsl_s8(v51, v49, *a5);
  *a4 = vbsl_s8(v51, vrshrn_n_s16(v47, 4uLL), *a4);
  *a3 = vbsl_s8(v51, vrshrn_n_s16(v45, 4uLL), *a3);
  *a2 = vbsl_s8(v51, vrshrn_n_s16(v44, 4uLL), *a2);
  result = vbsl_s8(v51, vrshrn_n_s16(vaddq_s16(v43, v39), 4uLL), *a1);
  *a1 = result;
  return result;
}

int16x4_t sub_27798C498(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 4);
  v7 = *(a1 - 4);
  v8 = (a1 - 4 + a2);
  v9 = (v8 + a2);
  v10 = *(v9 + a2);
  v11 = vtrn1_s8(v7, *v8);
  v12 = vtrn2_s8(v7, *v8);
  v13 = vtrn1_s8(*v9, v10);
  v14 = vtrn2_s8(*v9, v10);
  v15 = vtrn1_s16(v11, v13);
  v16 = vtrn2_s16(v11, v13);
  v17 = vtrn1_s16(v12, v14);
  v18 = vrev64_s32(vtrn2_s16(v12, v14));
  v32 = __PAIR64__(v18.u32[0], v15.u32[0]);
  v33 = v15.i32[0];
  v19 = vrev64_s32(v16);
  v20 = vzip2_s32(v19, v17);
  v17.i32[1] = v19.i32[0];
  v36 = vzip2_s32(v18, v15);
  v34 = v17;
  v35 = v20;
  sub_27798C5B0(&v34, &v35, &v36, a3, a4, a5, __PAIR64__(v18.u32[0], v15.u32[0]));
  v21 = vrev64_s32(v36);
  v22 = __PAIR64__(v21.u32[0], v33);
  v23.i32[0] = v34.i32[0];
  v24 = vrev64_s32(v35);
  v25 = vzip2_s32(v24, v34);
  v23.i32[1] = v24.i32[0];
  v26 = vzip2_s32(v21, v32);
  v27 = vtrn1_s8(v22, v23);
  v28 = vtrn2_s8(v22, v23);
  v29 = vtrn1_s8(v25, v26);
  v30 = vtrn2_s8(v25, v26);
  *v6 = vtrn1_s16(v27, v29);
  *v8 = vtrn1_s16(v28, v30);
  result = vtrn2_s16(v28, v30);
  *v9 = vtrn2_s16(v27, v29);
  *(v9 + a2) = result;
  return result;
}

uint8x8_t sub_27798C5B0(uint8x8_t *a1, uint8x8_t *a2, uint8x8_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, uint8x8_t a7)
{
  v7 = vabd_u8(*a3, *a2);
  v8 = vcge_u8(vdup_n_s8(a5), vmax_u8(vmax_u8(vabd_u8(a7, *a1), vabd_u8(*a1, *a2)), v7));
  v9 = vabdl_u8(vzip1_s32(*a3, *a2), vzip2_s32(*a3, *a2));
  v10 = vcge_u16(vdup_n_s16(a4), vsra_n_u16(vadd_s16(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL), 1uLL));
  v11 = vand_s8(vuzp1_s8(v10, v10), vand_s8(vrev64_s32(v8), v8));
  v12 = vcgt_u8(0x202020202020202, vmax_u8(vmax_u8(v7, vabd_u8(*a1, *a3)), vabd_u8(a7, *a3)));
  v13 = veor_s8(*a3, 0x8080808080808080);
  v14 = vdup_lane_s32(v13, 0);
  v15 = vdup_lane_s32(v13, 1);
  *v9.i8 = veor_s8(*a2, 0x8080808080808080);
  v16 = vdup_lane_s32(*v9.i8, 0);
  *v9.i8 = vdup_lane_s32(*v9.i8, 1);
  v17 = vcgt_u8(v7, vdup_n_s8(a6));
  v18 = vorr_s8(vrev64_s32(v17), v17);
  v19 = vand_s8(vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(v15, v14), 0x303030303030303), vand_s8(v18, vqsub_s8(v16, *v9.i8)))), v11);
  v20 = vshr_n_s8(vqadd_s8(v19, 0x404040404040404), 3uLL);
  v21 = vbic_s8(vrshr_n_s8(v20, 1uLL), v18);
  v22 = vext_s8(veor_s8(vqadd_s8(v14, vshr_n_s8(vqadd_s8(v19, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(v15, v20), 0x8080808080808080), 4uLL);
  *v9.i8 = vext_s8(veor_s8(vqadd_s8(v16, v21), 0x8080808080808080), veor_s8(vqsub_s8(*v9.i8, v21), 0x8080808080808080), 4uLL);
  v23 = vaddl_u8(*a1, a7);
  v24 = vrev64_s32(*a2);
  v25 = vaddw_u8(vaddw_u8(vaddw_u8(v23, *a2), *a3), vrev64_s32(*a3));
  v26 = vaddw_u8(v25, a7);
  v27 = vaddq_s16(v23, v26);
  v28 = vrshrn_n_s16(vaddq_s16(vaddw_u8(vaddl_u8(vrev64_s32(*a1), *a3), v24), v25), 3uLL);
  *v26.i8 = vrshrn_n_s16(vaddq_s16(vaddl_u8(v24, *a2), v26), 3uLL);
  v29 = vand_s8(vand_s8(vrev64_s32(v12), v12), v11);
  *a3 = vbsl_s8(v29, *a3, v22);
  *a2 = vbsl_s8(v29, *a2, *v9.i8);
  *a3 = vbsl_s8(v29, v28, *a3);
  *a2 = vbsl_s8(v29, *v26.i8, *a2);
  result = vbsl_s8(v29, vrshrn_n_s16(v27, 3uLL), *a1);
  *a1 = result;
  return result;
}

int16x4_t sub_27798C73C(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 4);
  v7 = *(a1 - 4);
  v8 = (a1 - 4 + a2);
  v9 = (v8 + a2);
  v10 = *(v9 + a2);
  v11 = vtrn1_s8(v7, *v8);
  v12 = vtrn2_s8(v7, *v8);
  v13 = vtrn1_s8(*v9, v10);
  v14 = vtrn2_s8(*v9, v10);
  v15 = vtrn1_s16(v11, v13);
  v16 = vtrn1_s16(v12, v14);
  v33 = vtrn2_s16(v12, v14);
  v17 = vrev64_s32(vtrn2_s16(v11, v13));
  v18 = v16;
  v31 = v15.i32[0];
  v32 = v16.i32[0];
  v16.i32[1] = v17.i32[0];
  v30 = v16;
  v34 = vzip2_s32(v17, v18);
  v35 = vzip2_s32(vdup_lane_s32(v33, 0), v15);
  sub_27798C844(&v34, &v35, a3, a4, a5, v16);
  v19 = vrev64_s32(v35);
  v20 = __PAIR64__(v19.u32[0], v31);
  v21.i32[0] = v32;
  v22 = vrev64_s32(v34);
  v21.i32[1] = v22.i32[0];
  v23 = vzip2_s32(v19, v33);
  v24 = vzip2_s32(v22, v30);
  v25 = vtrn1_s8(v20, v21);
  v26 = vtrn2_s8(v20, v21);
  v27 = vtrn1_s8(v24, v23);
  v28 = vtrn2_s8(v24, v23);
  *v6 = vtrn1_s16(v25, v27);
  *v8 = vtrn1_s16(v26, v28);
  result = vtrn2_s16(v26, v28);
  *v9 = vtrn2_s16(v25, v27);
  *(v9 + a2) = result;
  return result;
}

uint8x8_t sub_27798C844(uint8x8_t *a1, uint8x8_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint8x8_t a6)
{
  v6 = vabd_u8(*a2, *a1);
  v7 = vcge_u8(vdup_n_s8(a4), vmax_u8(vabd_u8(a6, *a1), v6));
  v8 = vabdl_u8(vzip1_s32(*a2, *a1), vzip2_s32(*a2, *a1));
  v9 = vcge_u16(vdup_n_s16(a3), vsra_n_u16(vadd_s16(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL), 1uLL));
  v10 = vand_s8(vuzp1_s8(v9, v9), vand_s8(vrev64_s32(v7), v7));
  v11 = vcgt_u8(0x202020202020202, vmax_u8(v6, vabd_u8(a6, *a2)));
  v12 = veor_s8(*a2, 0x8080808080808080);
  v13 = vdup_lane_s32(v12, 0);
  *v8.i8 = vdup_lane_s32(v12, 1);
  v14 = veor_s8(*a1, 0x8080808080808080);
  v15 = vdup_lane_s32(v14, 0);
  v16 = vdup_lane_s32(v14, 1);
  v17 = vcgt_u8(v6, vdup_n_s8(a5));
  v18 = vorr_s8(vrev64_s32(v17), v17);
  v19 = vand_s8(v10, vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(*v8.i8, v13), 0x303030303030303), vand_s8(v18, vqsub_s8(v15, v16)))));
  v20 = vshr_n_s8(vqadd_s8(v19, 0x404040404040404), 3uLL);
  v21 = vbic_s8(vrshr_n_s8(v20, 1uLL), v18);
  *v8.i8 = vext_s8(veor_s8(vqadd_s8(v13, vshr_n_s8(vqadd_s8(v19, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(*v8.i8, v20), 0x8080808080808080), 4uLL);
  v22 = vaddl_u8(*a2, *a1);
  v23 = vrev64_s32(*a2);
  v24 = vaddw_u8(vaddw_u8(vaddq_s16(v22, v22), a6), v23);
  v25 = vrshrn_n_s16(vaddq_s16(vaddl_u8(v23, vrev64_s32(*a1)), v24), 3uLL);
  v26 = vand_s8(vand_s8(vrev64_s32(v11), v11), v10);
  *a2 = vbsl_s8(v26, *a2, *v8.i8);
  *a1 = vbsl_s8(v26, *a1, vext_s8(veor_s8(vqadd_s8(v15, v21), 0x8080808080808080), veor_s8(vqsub_s8(v16, v21), 0x8080808080808080), 4uLL));
  *a2 = vbsl_s8(v26, v25, *a2);
  result = vbsl_s8(v26, vrshrn_n_s16(vaddq_s16(v24, vshll_n_u8(a6, 1uLL)), 3uLL), *a1);
  *a1 = result;
  return result;
}

int16x4_t sub_27798C99C(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798C73C(a1, a2, *a3, *a4, *a5);
  sub_27798C73C(a1 + 4 * a2, a2, *a3, *a4, *a5);
  v10 = a1 + 8 * a2;
  sub_27798C73C(v10, a2, *a3, *a4, *a5);
  v11 = *a5;
  v12 = *a4;
  v13 = *a3;

  return sub_27798C73C(v10 + 4 * a2, a2, v13, v12, v11);
}

int8x8_t sub_27798CA44(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v7 = (a1 - 2);
  v8.i32[0] = *(a1 - 2);
  v8.i32[1] = *(a1 - 2 + a2);
  v9 = (a1 - 2 + 2 * a2);
  v10.i32[0] = *v9;
  v10.i32[1] = *(v9 + a2);
  v11 = vtrn1_s16(v8, v10);
  v12 = vtrn2_s16(v8, v10);
  v13 = vzip1_s32(v11, v12);
  v14 = vzip2_s32(v11, v12);
  v15 = vtrn1_s8(v13, v14);
  v16 = vtrn2_s8(v13, v14);
  v17 = vzip1_s32(v15, v16);
  v18 = vzip2_s32(v16, v15);
  v19 = __PAIR64__(v18.u32[0], v17.u32[0]);
  v18.i32[0] = v17.i32[1];
  v28 = v19;
  v29 = v18;
  sub_27798CB24(&v28, &v29, a3, a4, a5);
  v20 = vzip1_s32(v28, v29);
  v21 = vtrn1_s16(v20, __PAIR64__(v28.u32[1], v29.u32[1]));
  v22 = vtrn2_s16(v20, __PAIR64__(v28.u32[1], v29.u32[1]));
  v23 = vzip1_s32(v21, v22);
  v24 = vzip2_s32(v21, v22);
  v25 = vtrn1_s8(v23, v24);
  result = vtrn2_s8(v23, v24);
  *v7 = v25.i32[0];
  *v9 = v25.i32[1];
  v27 = a1 + a2;
  *(v27 - 2) = result.i32[0];
  *(v27 - 2 + 2 * a2) = result.i32[1];
  return result;
}

uint8x8_t sub_27798CB24(uint8x8_t *a1, uint8x8_t *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = vabd_u8(*a2, *a1);
  v6 = vcge_u8(vdup_n_s8(a4), v5);
  v7 = vabdl_u8(vzip1_s32(*a2, *a1), vzip2_s32(*a2, *a1));
  v8 = vcge_u16(vdup_n_s16(a3), vsra_n_u16(vadd_s16(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL), 1uLL));
  v9 = veor_s8(*a2, 0x8080808080808080);
  v10 = vdup_lane_s32(v9, 0);
  v11 = vdup_lane_s32(v9, 1);
  v12 = veor_s8(*a1, 0x8080808080808080);
  v13 = vdup_lane_s32(v12, 0);
  v14 = vdup_lane_s32(v12, 1);
  v15 = vcgt_u8(v5, vdup_n_s8(a5));
  v16 = vorr_s8(vrev64_s32(v15), v15);
  v17 = vand_s8(vqmovn_s16(vaddw_s8(vmull_s8(vqsub_s8(v11, v10), 0x303030303030303), vand_s8(v16, vqsub_s8(v13, v14)))), vand_s8(vand_s8(vrev64_s32(v6), v6), vuzp1_s8(v8, v8)));
  v18 = vshr_n_s8(vqadd_s8(v17, 0x404040404040404), 3uLL);
  v19 = vbic_s8(vrshr_n_s8(v18, 1uLL), v16);
  *a2 = vext_s8(veor_s8(vqadd_s8(v10, vshr_n_s8(vqadd_s8(v17, 0x303030303030303), 3uLL)), 0x8080808080808080), veor_s8(vqsub_s8(v11, v18), 0x8080808080808080), 4uLL);
  result = vext_s8(veor_s8(vqadd_s8(v13, v19), 0x8080808080808080), veor_s8(vqsub_s8(v14, v19), 0x8080808080808080), 4uLL);
  *a1 = result;
  return result;
}

int8x8_t sub_27798CC04(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798CA44(a1, a2, *a3, *a4, *a5);
  sub_27798CA44(a1 + 4 * a2, a2, *a3, *a4, *a5);
  v10 = a1 + 8 * a2;
  sub_27798CA44(v10, a2, *a3, *a4, *a5);
  v11 = *a5;
  v12 = *a4;
  v13 = *a3;

  return sub_27798CA44(v10 + 4 * a2, a2, v13, v12, v11);
}

double sub_27798CCAC(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = 7 * a2;
  v7.i32[0] = *(a1 - v6);
  v7.i32[1] = *(a1 + 13 * a2 - v6);
  v8 = (a1 - 6 * a2);
  v27 = (v8 + 11 * a2);
  v9.i32[0] = *v8;
  v9.i32[1] = *v27;
  v33 = *&v9;
  v10 = 5 * a2;
  v11 = (a1 - v10);
  v26 = (a1 + 9 * a2 - v10);
  v9.i32[0] = *(a1 - v10);
  v9.i32[1] = *v26;
  v32 = v9;
  v12 = &a1[-a2];
  v13 = (v12 + v6);
  v9.i32[0] = *v12;
  v9.i32[1] = *(v12 + v6);
  v31 = v9;
  v14 = 3 * a2;
  v15 = (a1 - v14);
  v16 = (a1 + v10 - v14);
  v9.i32[0] = *(a1 - v14);
  v9.i32[1] = *v16;
  v30 = v9;
  v17 = (a1 - 2 * a2);
  v18 = (v17 + v14);
  v9.i32[0] = *v17;
  v9.i32[1] = *(v17 + v14);
  v29 = v9;
  v19 = (a1 - a2);
  v9.i32[0] = *v19;
  v9.i32[1] = *a1;
  v28 = v9;
  sub_27798C1E8(&v33, &v32, &v31, &v30, &v29, &v28, a3, a4, v7, a5);
  v20 = v28.i32[1];
  *v19 = v28.i32[0];
  *a1 = v20;
  v21 = v29.i32[1];
  *v17 = v29.i32[0];
  *v18 = v21;
  v22 = v30.i32[1];
  *v15 = v30.i32[0];
  *v16 = v22;
  v23 = v31.i32[1];
  *v12 = v31.i32[0];
  *v13 = v23;
  v24 = v32.i32[1];
  *v11 = v32.i32[0];
  *v26 = v24;
  result = v33;
  *v8 = LODWORD(v33);
  *v27 = HIDWORD(result);
  return result;
}

double sub_27798CE30(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = 3 * a2;
  v7 = (a1 - a2);
  v8.i32[0] = *v7;
  v8.i32[1] = *a1;
  v9 = (a1 + v6);
  v10 = (a1 - 2 * a2);
  v20 = v8;
  v11 = (a1 + a2);
  v8.i32[0] = *v10;
  v8.i32[1] = *v11;
  v12 = (a1 - v6);
  v19 = v8;
  v13 = (a1 + 2 * a2);
  v8.i32[0] = *(a1 - v6);
  v8.i32[1] = *v13;
  v18 = *&v8;
  v14 = *(a1 + v6);
  v8.i32[0] = a1[-a2];
  v8.i32[1] = v14;
  sub_27798C5B0(&v18, &v19, &v20, a3, a4, a5, v8);
  result = v18;
  v16 = v19;
  *v12 = LODWORD(v18);
  *v10 = v16.i32[0];
  v17 = v20.i32[1];
  *v7 = v20.i32[0];
  *a1 = v17;
  *v11 = v16.i32[1];
  *v13 = HIDWORD(result);
  *v9 = v14;
  return result;
}

double sub_27798CF14(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - a2);
  v7.i32[0] = *v6;
  v7.i32[1] = *a1;
  v8 = (a1 + 2 * a2);
  v9 = (a1 - 2 * a2);
  v15 = v7;
  v10 = (a1 + a2);
  v7.i32[0] = *v9;
  v7.i32[1] = *v10;
  v14 = *&v7;
  v11 = *v8;
  v7.i32[0] = *(a1 - 3 * a2);
  v7.i32[1] = *v8;
  sub_27798C844(&v14, &v15, a3, a4, a5, v7);
  result = v14;
  v13 = v15;
  *v9 = LODWORD(v14);
  *v6 = v13.i32[0];
  *a1 = v13.i32[1];
  *v10 = HIDWORD(result);
  *v8 = v11;
  return result;
}

double sub_27798CFBC(__int32 *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798CF14(a1, a2, *a3, *a4, *a5);
  sub_27798CF14(a1 + 1, a2, *a3, *a4, *a5);
  sub_27798CF14(a1 + 2, a2, *a3, *a4, *a5);
  v10 = *a5;
  v11 = *a4;
  v12 = *a3;

  return sub_27798CF14(a1 + 3, a2, v12, v11, v10);
}

double sub_27798D060(__int32 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v6 = (a1 - 2 * a2);
  v7 = (v6 + 3 * a2);
  LODWORD(v8) = *v6;
  HIDWORD(v8) = *v7;
  v13 = v8;
  v9 = (a1 - a2);
  LODWORD(v8) = *v9;
  HIDWORD(v8) = *a1;
  v12 = v8;
  sub_27798CB24(&v13, &v12, a3, a4, a5);
  v10 = HIDWORD(v12);
  *v9 = LODWORD(v12);
  *a1 = v10;
  result = v13;
  *v6 = LODWORD(v13);
  *v7 = HIDWORD(result);
  return result;
}

double sub_27798D0F0(__int32 *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  sub_27798D060(a1, a2, *a3, *a4, *a5);
  sub_27798D060(a1 + 1, a2, *a3, *a4, *a5);
  sub_27798D060(a1 + 2, a2, *a3, *a4, *a5);
  v10 = *a5;
  v11 = *a4;
  v12 = *a3;

  return sub_27798D060(a1 + 3, a2, v12, v11, v10);
}

void sub_27798D194(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, __int16 *a10, _WORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v48 = a2;
  v53 = *MEMORY[0x277D85DE8];
  v17 = 1 << a15 >> 1;
  v51 = (v17 + a3) >> a15;
  v52 = (v17 + a4) >> a15;
  v50[0] = -v51;
  v50[1] = -v52;
  v18 = 4 * a2;
  bzero(a8, 4 * a2);
  bzero(a9, v18);
  v19.i32[0] = *a10;
  v19.i32[1] = a10[1];
  v20 = v48;
  v49 = vshr_n_s32(vmla_s32(0x4000000040, v19, vdup_n_s32(0x145u)), 7uLL);
  do
  {
    if (v20 < 1)
    {
      goto LABEL_41;
    }

    v21 = v20;
    v22 = *(a12 - 2 + 2 * v20);
    if (a13)
    {
      v23 = *(a13 + v22);
    }

    else
    {
      v23 = 32;
    }

    v24 = *(a1 + 4 * v22) * v23;
    v25 = v22 != 0;
    v26 = *(&v49 | (4 * v25));
    if (v24 >= v26 + 32 * *(&v51 + v25))
    {
      break;
    }

    --v20;
  }

  while (v24 > 32 * v50[v25] - v26);
  v27 = 0;
  v28 = v21 & 0x7FFFFFFF;
  v29 = -1;
  v30 = -1;
  do
  {
    v31 = *(a12 + 2 * v27);
    v32 = *(a1 + 4 * v31);
    if (v32 >= 0)
    {
      v33 = *(a1 + 4 * v31);
    }

    else
    {
      v33 = -v32;
    }

    if (a13)
    {
      v34 = *(a13 + v31);
    }

    else
    {
      v34 = 32;
    }

    if (v33 * v34 >= 32 * *(&v51 + (v31 != 0)))
    {
      v35 = v32 >> 31;
      v36 = ((v17 + *(a5 + 2 * (v31 != 0))) >> a15) + v33;
      if (v36 >= 0x7FFF)
      {
        v36 = 0x7FFF;
      }

      if (v36 <= -32768)
      {
        v36 = -32768;
      }

      v37 = ((((v34 * v36 * *(a6 + 2 * (v31 != 0))) >> 16) + v34 * v36) * *(a7 + 2 * (v31 != 0))) >> (21 - a15);
      *(a8 + v31) = (v35 ^ v37) - v35;
      if (a14)
      {
        v38 = *(a14 + v31);
      }

      else
      {
        v38 = 32;
      }

      *(a9 + v31) = (((((v38 * a10[v31 != 0] + 16) >> 5) * v37) >> a15) ^ v35) - v35;
      if (v37)
      {
        if (v30 == -1)
        {
          v30 = v27;
        }

        v29 = v27;
      }
    }

    ++v27;
  }

  while (v28 != v27);
  if ((v29 & 0x80000000) == 0 && v30 == v29)
  {
    v39 = *(a12 + 2 * v30);
    v40 = *(a8 + v39);
    if (v40 == 1 || v40 == -1)
    {
      v42 = a13 ? *(a13 + v39) : 32;
      v43 = *(a1 + 4 * v39) * v42;
      v44 = (525 * a10[v39 != 0] + 64) >> 7;
      if (v43 < v44 + 32 * *(&v51 + (v39 != 0)))
      {
        LOWORD(v29) = v30;
        if (v43 <= 32 * v50[v39 != 0] - v44)
        {
          goto LABEL_43;
        }

        *(a8 + v39) = 0;
        *(a9 + v39) = 0;
LABEL_41:
        LOWORD(v29) = -1;
        goto LABEL_43;
      }
    }

    LOWORD(v29) = v30;
  }

LABEL_43:
  *a11 = v29 + 1;
}

uint64_t sub_27798D4C4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double *a8, double *a9)
{
  v9 = 0;
  v88 = *MEMORY[0x277D85DE8];
  v10 = a7;
  v11 = (~a7 + a1 + a3 + a7 * a4);
  v12 = v11;
  do
  {
    *(&v84 + v9) = vsubl_u8(*v12, *&vextq_s8(*v12->i8, *v12->i8, 2uLL));
    v9 += 16;
    v12 = (v12 + a7);
  }

  while (v9 != 160);
  v13 = 0;
  v14 = v85;
  v15 = vaddq_s16(v85, v84);
  do
  {
    v16 = v87[v13 - 1];
    v17 = vaddq_s16(v16, v14);
    *&v82[v13 * 16 + 128] = vaddq_s16(v17, v15);
    ++v13;
    v14 = v16;
    v15 = v17;
  }

  while (v13 != 8);
  for (i = 0; i != 160; i += 16)
  {
    *(&v84 + i) = vaddq_s16(vaddl_u8(*&vextq_s8(*v11, *v11, 2uLL), *v11->i8), vshll_n_u8(*&vextq_s8(*v11, *v11, 1uLL), 1uLL));
    v11 = (v11 + a7);
  }

  v19 = 0;
  v83[0] = v84;
  v83[1] = v85;
  v83[2] = v86;
  v83[3] = v87[0];
  v83[4] = v87[1];
  v83[5] = v87[2];
  v83[6] = v87[3];
  v83[7] = v87[4];
  v83[8] = v87[5];
  v83[9] = v87[6];
  do
  {
    *&v82[v19 * 16] = vsubq_s16(v83[v19], v83[v19 + 2]);
    ++v19;
  }

  while (v19 != 8);
  v20 = 0;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  do
  {
    v24 = *&v82[v20 + 128];
    v25 = *&v82[v20];
    v21 = vmlal_high_s16(vmlal_s16(v21, *v24.i8, *v24.i8), v24, v24);
    v22 = vmlal_high_s16(vmlal_s16(v22, *v24.i8, *v25.i8), v24, v25);
    v23 = vmlal_high_s16(vmlal_s16(v23, *v25.i8, *v25.i8), v25, v25);
    v20 += 16;
  }

  while (v20 != 128);
  v26 = 0;
  v27 = vpaddq_s32(vpaddq_s32(v21, v22), vpaddq_s32(v22, v23));
  v28 = v27.i32[0] + 1.0;
  v29 = v27.i32[3] + 1.0;
  v30 = 1.0 / (v28 * v29 - v27.i32[1] * v27.i32[2]);
  v31 = v29 * v30;
  v32 = -(v27.i32[1] * v30);
  v33 = v28 * v30;
  v34 = *a9;
  v35 = (a1 + a3 + a7 * a4);
  v36 = vdupq_n_s64(0x40D0000000000000uLL);
  do
  {
    v37 = 0;
    v38 = *a8;
    v39 = vcvtmd_s64_f64(v34);
    v40 = vcvtmd_s64_f64(*a8) + a3;
    if (v40 >= a5)
    {
      v41 = a5;
    }

    else
    {
      v41 = v40;
    }

    if (v40 >= -9)
    {
      v42 = v41;
    }

    else
    {
      v42 = -9;
    }

    v43 = v39 + a4;
    if (v43 >= a6)
    {
      v44 = a6;
    }

    else
    {
      v44 = v43;
    }

    v45 = v43 <= -10;
    v46 = v38 - floor(v38);
    v47 = v34 - floor(v34);
    v48 = v46 * v46;
    v49.f64[0] = v46 * (v46 * v46);
    v50.f64[0] = v46 * v46 + v46 * -0.5;
    v51 = v46 * v46 * -2.5 + 1.0;
    v52.f64[0] = v48 + v48 + v46 * 0.5;
    v50.f64[1] = v51;
    v49.f64[1] = v48;
    v52.f64[1] = v49.f64[0] * 0.5;
    v53 = vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmlaq_n_f64(v50, xmmword_277BB70C0, v49.f64[0]), v36)));
    v54 = vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vmlaq_f64(v52, xmmword_277BB70B0, v49), v36)));
    v50.f64[0] = v47 * (v47 * v47);
    v55.f64[0] = v47 * v47 + v47 * -0.5;
    v56.f64[0] = v47 * v47 + v47 * v47 + v47 * 0.5;
    v55.f64[1] = v47 * v47 * -2.5 + 1.0;
    v50.f64[1] = v47 * v47;
    v56.f64[1] = v50.f64[0] * 0.5;
    v57 = vmulq_f64(vmlaq_n_f64(v55, xmmword_277BB70C0, v50.f64[0]), v36);
    v58 = vmulq_f64(vmlaq_f64(v56, xmmword_277BB70B0, v50), v36);
    v59 = v44 - 1;
    if (v45)
    {
      v59 = -10;
    }

    v60 = (a2 + v10 * v59 + v42 - 1);
    v61 = vmovn_s32(vuzp1q_s32(v53, v54));
    do
    {
      v62 = vmovl_u8(*v60);
      v63 = vmovl_high_u8(*v60->i8);
      v64 = vextq_s8(v62, v63, 2uLL);
      v65 = vextq_s8(v62, v63, 4uLL);
      v66 = vextq_s8(v62, v63, 6uLL);
      *(&v84 + v37) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v64.i8, v61, 1), *v62.i8, v61, 0), *v65.i8, v61, 2), *v66.i8, v61, 3), 8uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v64, v61, 1), v62, v61, 0), v65, v61, 2), v66, v61, 3), 8uLL);
      v37 += 16;
      v60 = (v60 + v10);
    }

    while (v37 != 176);
    v67 = 0;
    v68 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v57)), vcvtq_s64_f64(vrndxq_f64(v58))));
    v69 = v35;
    do
    {
      v83[v67] = vsubq_s16(vuzp1q_s16(vrshrq_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(&v84 + v67 * 16 + 16), v68, 1), *&v84.i8[v67 * 16], v68, 0), *&v87[v67 - 1], v68, 2), *&v87[v67], v68, 3), 0x11uLL), vrshrq_n_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(&v84 + v67 * 16 + 16), v68, 1), *(&v84 + v67 * 16), v68, 0), v87[v67 - 1], v68, 2), v87[v67], v68, 3), 0x11uLL)), vshll_n_u8(*v69, 3uLL));
      v69 = (v69 + v10);
      ++v67;
    }

    while (v67 != 8);
    v70 = 0;
    v71 = 0uLL;
    v72 = 0uLL;
    do
    {
      v73 = v83[v70 / 0x10];
      v72 = vmlal_high_s16(vmlal_s16(v72, *&v82[v70 + 128], *v73.i8), *&v82[v70 + 128], v73);
      v71 = vmlal_high_s16(vmlal_s16(v71, *&v82[v70], *v73.i8), *&v82[v70], v73);
      v70 += 16;
    }

    while (v70 != 128);
    v74 = vpaddq_s32(v72, v71);
    v74.i64[0] = vpaddq_s32(v74, v74).u64[0];
    result = v74.u32[1];
    v76 = v74.i32[0];
    v77 = v32 * result + v31 * v76;
    v78 = v33 * result + -(v27.i32[2] * v30) * v76;
    if (v77 <= 2.0)
    {
      v79 = v32 * result + v31 * v76;
    }

    else
    {
      v79 = 2.0;
    }

    if (v77 < -2.0)
    {
      v79 = -2.0;
    }

    *a8 = v38 + v79;
    if (v78 <= 2.0)
    {
      v80 = v78;
    }

    else
    {
      v80 = 2.0;
    }

    if (v78 < -2.0)
    {
      v80 = -2.0;
    }

    v34 = *a9 + v80;
    *a9 = v34;
    ++v26;
  }

  while (fabs(v77) + fabs(v78) >= 0.125 && v26 != 4);
  return result;
}

__n128 sub_27798D978(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 116) >= 8 && *(a1 + 112) >= 8 && !*(a4 + 10728))
  {
    v5 = *(a4 + 10744);
    v6 = *(a5 + a3 + 16);
    v7 = *(a1 + 168);
    v8 = *v7;
    if (*v7 == -1 || (v9 = v7[1], v9 == -1) || v8 == 0x4000 && v9 == 0x4000)
    {
      *(a1 + 40) = 0;
      result.n128_u64[0] = 0;
      *(a1 + 8) = xmmword_277C3A208;
      *(a1 + 24) = unk_277C3A218;
      if (a2[1] && !*(a5 + 61))
      {
        v11 = a5 + 28;
LABEL_15:
        result = *v11;
        v12 = *(v11 + 16);
        *(a1 + 40) = *(v11 + 32);
        *(a1 + 24) = v12;
        *(a1 + 8) = result;
        *a1 = 1;
        return result;
      }

      if (*a2)
      {
        v11 = v5 + 36 * v6;
        if (!*(v11 + 33))
        {
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

void sub_27798DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  if (*a5 == 1)
  {
    v15 = *(a5 + 136);
    v16 = *(a5 + 144);
    v17 = *(a5 + 148);
    v18 = *(a5 + 152);
    v20 = *(a5 + 120);
    v19 = *(a5 + 124);
    v21 = *(a5 + 112);
    v22 = *(a5 + 116);
    v23 = *(a5 + 160);
    v24 = *(a5 + 164);
    if (*(a5 + 180))
    {
      sub_27797B398((a5 + 8), 2 * v15, v16, v17, v18, (2 * a3), v19, v20, v21, v22, a4, v23, SHIWORD(v23), v24, *(a5 + 176), (a5 + 48), *(a5 + 32), WORD1(*(a5 + 32)), WORD2(*(a5 + 32)), HIWORD(*(a5 + 32)));
    }

    else
    {
      off_280ABC820(a5 + 8, v15, v16, v17, v18, a3, v19, v20, __PAIR64__(v22, v21), __PAIR64__(v23, a4), v24, a5 + 48, *(a5 + 32));
    }
  }

  else if (!*a5)
  {
    v9 = *(a5 + 112);
    v8 = *(a5 + 116);
    if (*(a5 + 180))
    {
      v10 = *(a5 + 176);
      v11 = *a6;
      v12 = a6[1];
      v14 = a6[2];
      v13 = a6[3];
      if (v11 == 1024 && v12 == 1024)
      {
        sub_27797E014(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v14 >> 6, 0x10u, v13 >> 6, 16, 0, a5 + 48, v10);
      }

      else
      {
        sub_27797E014(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v14, v11, v13, v12, 1, a5 + 48, v10);
      }
    }

    else
    {
      v25 = *a6;
      v26 = a6[1];
      v28 = a6[2];
      v27 = a6[3];
      if (v25 == 1024 && v26 == 1024)
      {
        sub_27797D7D4(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v28 >> 6, 16, v27 >> 6, 16, 0, a5 + 48);
      }

      else
      {
        sub_27797D7D4(a1, a2, a3, a4, v9, v8, *(a5 + 96), *(a5 + 104), v28, v25, v27, v26, 1, a5 + 48);
      }
    }
  }
}

void sub_27798DBDC()
{
  v0 = 0;
  v1 = &unk_280A76FB0;
  v2 = -2;
  v3 = 16;
  v64[33] = unk_277BB8B11;
  *&v64[34] = unk_277BB8B12;
  *&v64[36] = unk_277BB8B14;
  *&v64[40] = unk_277BB8B18;
  v65 = xmmword_277BB8B00;
  strcpy(v64, "@@@@@@@@@@@@@@@@+9>@@@@@@@@@@@@@");
  v4 = 0x40u;
  do
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      memcpy(v1, &a20591468023457[-v3 + 126], v3 + 64);
      memset(&v1[v3 + 64], 64, -v3);
      v5 = v3 - 1;
      v6 = (v0 << 6) | 0x40;
      v7 = &unk_280A73FB0 + v6 + 12288;
LABEL_4:
      v8 = 1 - v3;
      v9 = v3 + 63;
      memcpy(v7, &unk_277BB8AC0 + v8, v9);
      memset(&v7[v9], 64, v8);
      goto LABEL_7;
    }

    memcpy(&v1[v3], "", 64 - v3);
    bzero(v1, v3);
    v7 = v1 + 64;
    if (!v3)
    {
      v5 = -1;
      v6 = v4;
      goto LABEL_4;
    }

    v5 = v3 - 1;
    memcpy(&v1[v3 + 63], &unk_277BB8AC0, 65 - v3);
    bzero(v1 + 64, v3 - 1);
    v6 = v4;
LABEL_7:
    v3 = v5;
    v10 = (v1 - 0x2000);
    *v10 = v65;
    v10[1] = *&v64[32];
    v10[2] = *&v64[16];
    v10[3] = *v64;
    v11 = (&unk_280A73FB0 + v6);
    v11[256] = v65;
    v11[257] = *&v64[32];
    v0 += 2;
    v2 += 2;
    v11[258] = *&v64[16];
    v1 += 128;
    v4 += 128;
    v11[259] = *v64;
  }

  while (v2 < 0x3E);
  v12 = 0;
  v13 = 0;
  v14 = 0xA03Fu;
  v15 = 0x403Fu;
  v16 = 0xBFC0u;
  v17 = 0x5FC0u;
  do
  {
    v18 = v12;
    v19 = v13;
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v23 = v14;
    v24 = 64;
    do
    {
      v25 = &unk_280A73FB0 + v18;
      v26 = *(&unk_280A73FB0 + v18 + 12288);
      v27 = &unk_280A73FB0 + v19;
      v27[0x2000] = v26;
      *(&unk_280A73FB0 + v20) = 64 - v26;
      *(&unk_280A73FB0 + v22) = 64 - v26;
      v27[0x8000] = 64 - v26;
      v25[36864] = 64 - v26;
      *(&unk_280A73FB0 + v21) = v26;
      *(&unk_280A73FB0 + v23) = v26;
      v28 = *(&unk_280A73FB0 + v18 + 4096);
      v27[24576] = 64 - v28;
      *v27 = v28;
      v25[28672] = 64 - v28;
      --v23;
      --v22;
      v21 -= 64;
      v20 -= 64;
      v19 += 64;
      ++v18;
      --v24;
    }

    while (v24);
    ++v13;
    v14 += 64;
    v15 += 64;
    ++v16;
    ++v17;
    v12 += 64;
  }

  while (v13 != 64);
  bzero(&unk_280A729A8, 0x1600uLL);
  v29 = 0;
  v30 = &unk_280A7FFB0;
  do
  {
    v31 = &dword_27A722360[8 * v29];
    v32 = *v31;
    v63 = v29;
    if (v32 > 0)
    {
      v33 = byte_277C3CAFE[v29];
      v34 = byte_277C3CAE8[v29];
      v35 = *(v31 + 2);
      *&v64[32] = 8 * v34;
      LODWORD(v65) = v34;
      *&v64[16] = (v34 * v33);
      v36 = (*(v31 + 1) + 8);
      v37 = 128;
      *v64 = v31;
      do
      {
        v38 = *&v64[32];
        v39 = v65;
        sub_277BB3A8C(&unk_280A73FB0 + 24576 * *v35 + 4096 * *(v36 - 8) + (2048 - ((*v36 * *&v64[32]) & 0xFFFFFFC0)) - ((*(v36 - 1) * v33) >> 3) + 32, 64, v30, v33, v33, v65);
        v40 = (*(v31 + 3) + v37);
        *(v40 - 16) = v30;
        v41 = *&v64[16];
        v42 = (v30 + *&v64[16]);
        v43 = *v35++;
        sub_277BB3A8C(&unk_280A73FB0 + 24576 * (v43 ^ 1u) + 4096 * *(v36 - 8) + (2048 - ((*v36 * v38) & 0xFFFFFFC0)) - ((*(v36 - 1) * v33) >> 3) + 32, 64, v42, v33, v33, v39);
        *v40 = v42;
        v31 = *v64;
        v30 = (v42 + v41);
        v37 += 8;
        v36 += 3;
        --v32;
      }

      while (v32);
    }

    v29 = v63 + 1;
  }

  while (v63 != 21);
  v44 = 0;
  do
  {
    v45 = 0;
    v46 = &unk_280A9FFB0 + 22528 * v44;
    *&v65 = v44;
    v47 = v44;
    do
    {
      if ((((0x20F800uLL >> v45) | (0x10F400uLL >> v45)) & 1) == 0)
      {
        v48 = byte_277C3CAFE[v45];
        v49 = byte_277C3CAE8[v45];
        v50 = byte_277BB8B40[v45];
        v51 = &v46[1024 * v45];
        switch(v47)
        {
          case 1:
            if (v49 <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = byte_277C3CAE8[v45];
            }

            v61 = byte_277BB8B56;
            do
            {
              memset(v51, *v61, v48);
              v51 += v48;
              v61 += v50;
              --v60;
            }

            while (v60);
            break;
          case 2:
            v56 = 0;
            if (v48 <= 1)
            {
              v57 = 1;
            }

            else
            {
              v57 = byte_277C3CAFE[v45];
            }

            if (v49 <= 1)
            {
              v49 = 1;
            }

            do
            {
              v58 = 0;
              v59 = byte_277BB8B56;
              do
              {
                v51[v58++] = *v59;
                v59 += v50;
              }

              while (v57 != v58);
              v51 += v48;
              ++v56;
            }

            while (v56 != v49);
            break;
          case 3:
            v52 = 0;
            if (v48 <= 1)
            {
              v53 = 1;
            }

            else
            {
              v53 = byte_277C3CAFE[v45];
            }

            if (v49 <= 1)
            {
              v49 = 1;
            }

            do
            {
              v54 = 0;
              do
              {
                if (v52 >= v54)
                {
                  v55 = v54;
                }

                else
                {
                  v55 = v52;
                }

                v51[v54++] = byte_277BB8B56[v50 * v55];
              }

              while (v53 != v54);
              v51 += v48;
              ++v52;
            }

            while (v52 != v49);
            break;
          default:
            if (v49 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = byte_277C3CAE8[v45];
            }

            do
            {
              memset(v51, 32, v48);
              v51 += v48;
              --v62;
            }

            while (v62);
            break;
        }
      }

      ++v45;
    }

    while (v45 != 22);
    v44 = v65 + 1;
  }

  while (v65 != 3);
}

uint64_t sub_27798E17C(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int a6)
{
  if (!a6 || (*(a2 + 167) & 0x200) != 0)
  {
    *a3 = 8;
    *a4 = 8;
    *a5 = 0;
    return result;
  }

  *a5 = 1;
  v6 = *(a2 + 16);
  if ((v6 - 1) > 7 || (v7 = *(result + 4 * (v6 - 1) + 240), v7 == -1))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(result + 8 * v7 + 416);
  }

  v9 = *(a2 + 17);
  if ((v9 - 1) <= 7)
  {
    v10 = *(result + 4 * (v9 - 1) + 240);
    if (v10 != -1)
    {
      v11 = *(result + 8 * v10 + 416);
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_14:
      v12 = *(v8 + 4);
      if (!v11)
      {
        goto LABEL_12;
      }

LABEL_15:
      v13 = *(v11 + 4);
      goto LABEL_16;
    }
  }

  v11 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 0;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = 0;
LABEL_16:
  v14 = *(result + 24696);
  if (*(v14 + 40))
  {
    v15 = *(*(result + 232) + 4);
    v16 = 1 << *(v14 + 44);
    v17 = ((v16 - 1) & (v13 - v15)) - (v16 & (v13 - v15));
    if ((v17 & 0x80000000) != 0)
    {
      v17 = -v17;
    }

    if (v17 >= 0x1F)
    {
      v17 = 31;
    }

    v18 = ((v16 - 1) & (v15 - v12)) - (v16 & (v15 - v12));
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -v18;
  }

  if (v19 >= 0x1F)
  {
    v20 = 31;
  }

  else
  {
    v20 = v19;
  }

  v21 = v19 >= v17;
  if (v17 && v18)
  {
    v22 = 0;
    v23 = v19 < v17;
    v24 = (&unk_277BB89E0 + 4 * v23);
    v25 = (&unk_277BB89E0 + 4 * v21);
    do
    {
      v27 = *v25;
      v25 += 2;
      v26 = v27;
      v28 = *v24;
      v24 += 2;
      result = v19 >= v17;
      v29 = v26 * v17;
      v30 = v29 < v28 * v20;
      v31 = v29 > v28 * v20 && v19 >= v17;
      if (v30 && v19 < v17)
      {
        break;
      }

      if (v31)
      {
        break;
      }

      ++v22;
    }

    while (v22 != 3);
    v33 = &unk_277BB89C0 + 8 * v22;
    *a3 = *&v33[4 * v21];
    v34 = &v33[4 * v23];
  }

  else
  {
    *a3 = dword_277BB89D8[v21];
    v34 = &dword_277BB89D8[v19 < v17];
  }

  *a4 = *v34;
  return result;
}

uint64_t sub_27798E348(uint64_t result, char a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a7 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a7;
  }

  if (v7 > a6)
  {
    v8 = a3 + 40;
    v9 = a3 + 16;
    v10 = a3 + 24;
    v11 = a3 + 32;
    v12 = (0x20005uLL >> a2) & 1;
    v13 = (0x10003uLL >> a2) & 1;
    v14 = a6;
    v15 = (result + 2608 * a6 + 40);
    do
    {
      v16 = *(v15 - 8);
      if (v16)
      {
        v17 = (a4 & 1) == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12;
      }

      v19 = a4 - v18;
      if (*(v15 - 9))
      {
        v20 = (a5 & 1) == 0;
      }

      else
      {
        v20 = 1;
      }

      v21 = *(v8 + 8 * v14);
      v22 = *(v9 + 4 * (v14 > 0));
      v23 = *(v10 + 4 * (v14 > 0));
      v24 = *(v11 + 4 * (v14 > 0));
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v13;
      }

      result = v21 + v24 * ((4 * v19) >> v16) + ((4 * (a5 - v25)) >> *(v15 - 9));
      *(v15 - 3) = result;
      *(v15 - 2) = v21;
      *(v15 - 2) = v22;
      *(v15 - 1) = v23;
      *v15 = v24;
      ++v14;
      v15 += 652;
    }

    while (v7 != v14);
  }

  return result;
}

uint64_t sub_27798E424(uint64_t result, unsigned int a2, uint64_t a3, int a4, int a5, int *a6, unsigned int a7)
{
  if (a3)
  {
    v7 = 0;
    if (a7 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = a7;
    }

    v9 = *(result + 7864);
    v10 = (a3 + 40);
    v11 = result + 32 * a2;
    do
    {
      _X20 = result + 7844 + v7;
      __asm { PRFM            #0, [X20] }

      v17 = *(result + v7 + 24);
      if (v17)
      {
        _ZF = (a4 & 1) == 0;
      }

      else
      {
        _ZF = 1;
      }

      v19 = **v9;
      v20 = (0x20005uLL >> v19) & 1;
      if (_ZF)
      {
        LODWORD(v20) = 0;
      }

      v21 = a4 - v20;
      if (*(result + v7 + 20))
      {
        v22 = (a5 & 1) == 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = (0x10003uLL >> v19) & 1;
      if (v22)
      {
        LODWORD(v23) = 0;
      }

      v24 = (4 * (a5 - v23)) >> *(result + v7 + 20);
      v25 = (4 * v21) >> v17;
      if (a6)
      {
        v26 = *a6;
        if (*a6 != -1)
        {
          v27 = a6[1];
          if (v27 != -1 && (v26 != 0x4000 || v27 != 0x4000))
          {
            v28 = 8 * v26 - 0x20000 + v26 * v24;
            if (v28 < 0)
            {
              v29 = -((128 - v28) >> 8);
            }

            else
            {
              v29 = (v28 + 128) >> 8;
            }

            v24 = v29 >> 6;
            v30 = 8 * v27 - 0x20000 + v27 * v25;
            if (v30 < 0)
            {
              v31 = -((128 - v30) >> 8);
            }

            else
            {
              v31 = (v30 + 128) >> 8;
            }

            v25 = v31 >> 6;
          }
        }
      }

      v32 = v11 + v7;
      v33 = *v10++;
      v34 = *(a3 + 16 + 4 * (v7 != 0));
      v35 = *(a3 + 24 + 4 * (v7 != 0));
      v36 = *(a3 + 32 + 4 * (v7 != 0));
      *(v32 + 64) = v33 + v36 * v25 + v24;
      *(v32 + 72) = v33;
      *(v32 + 80) = v34;
      *(v32 + 84) = v35;
      *(v32 + 88) = v36;
      v7 += 2608;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *sub_27798E5AC(int a1)
{
  if (a1 <= 7)
  {
    if (a1 == 1)
    {
      return &unk_277BB8A00;
    }

    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return "'2;@$*059=@@%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
      }

      return 0;
    }

    return "-@'2;@$*059=@@%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
  }

  else if (a1 > 31)
  {
    if (a1 != 32)
    {
      if (a1 == 64)
      {
        return "!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
      }

      return 0;
    }

    return "!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
  }

  else
  {
    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return "%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
      }

      return 0;
    }

    return "$*059=@@%(+.1468:<=@@@@!#$&()+,-/02345789:;<<=>@@@@@@@@!##$%&'(()*+,,,-.//0123334456788899::;<<<<<=>>>>>????@@@@@@@@@@";
  }
}

uint64_t sub_27798E650(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 7864);
  v3 = *v2;
  v3[26] = 0;
  v4 = *v3;
  v5 = byte_277C3CAFE[v4];
  v6 = byte_277C3CAE8[v4];
  if (v5 < v6)
  {
    v6 = v5;
  }

  if (v6 >= 8)
  {
    if (*(a2 + 7872) != 1)
    {
      goto LABEL_26;
    }

    v7 = *(a2 + 4);
    v8 = v7 + *(a2 + 8308);
    if (v8 >= *(result + 536))
    {
      v8 = *(result + 536);
    }

    if (v7 >= v8)
    {
      goto LABEL_26;
    }

    v9 = 0;
    v10 = 0;
    v11 = &(&v2[-v7])[-*(a2 + 8)];
    do
    {
      v12 = (v11 + 8 * v7);
      v13 = **v12;
      if ((0x1F07FFuLL >> v13))
      {
        v14 = byte_277C3F990[v13];
      }

      else
      {
        v14 = 16;
      }

      v15 = v7;
      v16 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v17 = v14 == 1;
      if (v14 == 1)
      {
        v18 = 2;
      }

      else
      {
        v18 = v14;
      }

      if (v14 == 1)
      {
        v19 = v16;
      }

      else
      {
        v19 = v15;
      }

      if (v17)
      {
        v12 = (v11 + 8 + 8 * v16);
      }

      v20 = *v12;
      if ((*(v20 + 167) & 0x80) != 0 || *(v20 + 16) >= 1)
      {
        ++v10;
        v3[26] = ++v9;
      }

      LODWORD(v7) = v19 + v18;
    }

    while (v7 < v8 && v10 != 0x7FFFFFFF);
    if (!v9)
    {
LABEL_26:
      if (*(a2 + 7873) == 1)
      {
        v21 = *a2;
        v22 = *a2 + *(a2 + 8309);
        if (v22 >= *(result + 532))
        {
          v22 = *(result + 532);
        }

        if (v21 < v22)
        {
          v23 = 0;
          v24 = 0;
          v25 = *(a2 + 7864) - 8 * *(a2 + 8) * v21 - 8;
          do
          {
            v26 = *(a2 + 8);
            v27 = *(v25 + 8 * v26 * v21);
            v28 = *v27;
            if ((0x2F0BFFuLL >> v28))
            {
              if ((0x20005uLL >> v28))
              {
                v29 = v21 | 1;
                v21 &= ~1u;
                v27 = *(v25 + 8 * v26 * v29);
                result = 2;
              }

              else
              {
                result = byte_277C36D60[v28];
              }
            }

            else
            {
              result = 16;
            }

            if ((*(v27 + 167) & 0x80) != 0 || v27[16] >= 1)
            {
              ++v24;
              v3[26] = ++v23;
            }

            v21 += result;
          }

          while (v21 < v22 && v24 != 0x7FFFFFFF);
        }
      }
    }
  }

  return result;
}

int8x8_t *sub_27798E850(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v170 = result;
  v6 = *(a2 + 7864);
  v169 = **v6;
  v183 = (a2 + 7872);
  if (*(a2 + 7872) == 1)
  {
    v171 = *(a2 + 4);
    v7 = v171 + *(a2 + 8308);
    if (v7 >= result[67].i32[0])
    {
      v7 = result[67].i32[0];
    }

    v175 = v7;
    if (((0x3EFFFCuLL >> v169) & 1) != 0 && v171 < v7)
    {
      v8 = 0;
      v172 = dword_277C31E5C[byte_277C42228[v169]];
      v173 = &(&v6[-v171])[-*(a2 + 8)];
      v9 = a2 + 16;
      if (*(*&result[3087] + 77))
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      v11 = *(a2 + 4);
      v184 = v10;
      do
      {
        v12 = **(v173 + 8 * v11);
        if ((0x1F07FFuLL >> v12))
        {
          v13 = byte_277C3F990[v12];
        }

        else
        {
          v13 = 16;
        }

        v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
        v15 = v173 + 8 + 8 * v14;
        v16 = v13 == 1;
        if (v13 == 1)
        {
          v13 = 2;
        }

        else
        {
          LODWORD(v14) = v11;
        }

        if (v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = (v173 + 8 * v11);
        }

        v18 = *v17;
        if ((*(v18 + 167) & 0x80) != 0 || *(v18 + 16) >= 1)
        {
          v179 = v13;
          if (v183[436] >= v13)
          {
            v19 = v13;
          }

          else
          {
            v19 = v183[436];
          }

          v20 = ***(a2 + 7864);
          if ((0x2F0BFFuLL >> v20))
          {
            v21 = byte_277C3CAE8[v20] >> 1;
          }

          else
          {
            v21 = 32;
          }

          v197 = v21;
          v22 = 0;
          v181 = v8 + 1;
          v177 = v14;
          v193 = 4 * (v14 - v171);
          v195 = 4 * v19;
          v23 = &byte_277C3BCDE[4 * v20];
          v190 = v23;
          do
          {
            v24 = v9 + 2608 * v22;
            v25 = *(v24 + 4);
            v26 = *(v24 + 8);
            if (v23[2 * v25 + v26] >= 3u)
            {
              v27 = v195 >> v25;
              v28 = v197 >> v26;
              v29 = v193 >> v25;
              v30 = *(v24 + 40);
              v31 = *(v24 + 40);
              v32 = (*(v24 + 16) + v29);
              v33 = *(a4 + 4 * v22);
              v34 = *(a4 + 4 * v22);
              v35 = (*(a3 + 8 * v22) + v29);
              result = sub_27798E5AC(v28);
              if ((*(*(a2 + 7960) + 192) & 8) != 0)
              {
                v42 = (2 * v32);
                v43 = (2 * v35);
                if (v27 < 8)
                {
                  v10 = v184;
                  v56.i64[0] = 0x40004000400040;
                  v56.i64[1] = 0x40004000400040;
                  v37.i64[0] = 0x40004000400040;
                  v23 = v190;
                  if (v27 == 4)
                  {
                    do
                    {
                      v57 = vdup_n_s16(result->u8[0]);
                      v58 = vdup_n_s16(result->u8[1]);
                      *v59.i8 = v57;
                      v59.u64[1] = v58;
                      v60 = vsubq_s16(v56, v59);
                      v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v43, *v60.i8), *v42, v57), 6uLL), vmlal_u16(vmull_u16(*(v43 + 2 * v33), *&vextq_s8(v60, v60, 8uLL)), *(v42 + 2 * v30), v58), 6uLL);
                      *v42 = *v61.i8;
                      *(v42 + 2 * v30) = v61.u64[1];
                      v42 = (v42 + 2 * (2 * v30));
                      v43 = (v43 + 2 * (2 * v33));
                      result = (result + 2);
                      LODWORD(v28) = v28 - 2;
                    }

                    while (v28);
                  }

                  else if (v27 == 2 && v28 >= 8)
                  {
                    do
                    {
                      v78 = result->u16[0];
                      result = (result + 2);
                      v36.i32[0] = v78;
                      v79 = vzip1_s8(*v36.i8, *v36.i8);
                      v80.i32[0] = v42->i32[0];
                      v80.i32[1] = *(v42->i32 + 2 * v30);
                      v81.i32[0] = v43->i32[0];
                      v81.i32[1] = *(v43->i32 + 2 * v33);
                      *v36.i8 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(v37, v79), v81), *&vmovl_u8(v79), v80), 6uLL);
                      v42->i32[0] = v36.i32[0];
                      *(v42->i32 + 2 * v30) = v36.i32[1];
                      v42 = (v42 + 2 * (2 * v30));
                      v43 = (v43 + 2 * (2 * v33));
                      LODWORD(v28) = v28 - 2;
                    }

                    while (v28);
                  }

                  else if (v28)
                  {
                    v63 = 0;
                    v64 = 0;
                    for (i = 0; i != v28; ++i)
                    {
                      if (v27)
                      {
                        v66 = result->u8[i];
                        v67 = v63;
                        v68 = v64;
                        v69 = v27;
                        do
                        {
                          v42->i16[v67] = ((64 - v66) * v43->u16[v68++] + v42->u16[v67] * v66 + 32) >> 6;
                          ++v67;
                          --v69;
                        }

                        while (v69);
                      }

                      v64 += v34;
                      v63 += v31;
                    }
                  }
                }

                else
                {
                  v10 = v184;
                  v44.i64[0] = 0x40004000400040;
                  v44.i64[1] = 0x40004000400040;
                  v23 = v190;
                  do
                  {
                    v45 = 0;
                    v46 = 0;
                    v47 = vld1_dup_s8(result);
                    v48 = vmovl_u8(v47);
                    v49 = vsubw_u8(v44, v47);
                    do
                    {
                      *v42[v45].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v43[v45], *v49.i8), v42[v45], *v48.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v43[v45].i8, v49), *v42[v45].i8, v48), 6uLL);
                      v46 += 8;
                      v45 += 2;
                    }

                    while (v46 < v27);
                    result = (result + 1);
                    v43 = (v43 + 2 * v33);
                    v42 = (v42 + 2 * v30);
                    LODWORD(v28) = v28 - 1;
                  }

                  while (v28);
                }
              }

              else if (v27 < 9)
              {
                v10 = v184;
                v23 = v190;
                if (v27 == 8)
                {
                  do
                  {
                    v55 = vld1_dup_s8(result);
                    result = (result + 1);
                    *v32 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v55), *v35), v55, *v32), 6uLL);
                    v32 = (v32 + v30);
                    v35 = (v35 + v33);
                    LODWORD(v28) = v28 - 1;
                  }

                  while (v28);
                }

                else if (v27 == 4)
                {
                  do
                  {
                    v50 = result;
                    v51.i32[0] = vld1_dup_s8(v50++).u32[0];
                    v52 = vld1_dup_s8(v50);
                    v51.i32[1] = v52.i32[1];
                    v52.i32[0] = v32->i32[0];
                    v52.i32[1] = *(v32->i32 + v30);
                    v53.i32[0] = v35->i32[0];
                    v53.i32[1] = *(v35->i32 + v33);
                    v54 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v51), v53), v51, v52), 6uLL);
                    v32->i32[0] = v54.i32[0];
                    *(v32->i32 + v30) = v54.i32[1];
                    result = (result + 2);
                    v32 = (v32 + (2 * v31));
                    v35 = (v35 + (2 * v34));
                    LODWORD(v28) = v28 - 2;
                  }

                  while (v28);
                }

                else if (v27 == 2 && v28 >= 0x10)
                {
                  v83 = v32;
                  do
                  {
                    v85 = result->u16[0];
                    result = (result + 2);
                    v86 = vzip1_s8(v85, v85);
                    v87 = vld1_dup_s16(v83);
                    v82 = (2 * v31);
                    v83 = (v83 + v82);
                    v87.i16[1] = *(v32->i16 + v31);
                    v88 = (v35 + v34);
                    v89 = vld1_dup_s16(v35);
                    v84 = (2 * v33);
                    v35 = (v35 + v84);
                    v89.i16[1] = *v88;
                    v86.i32[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v86), v89), v86, v87), 6uLL).u32[0];
                    v32->i16[0] = v86.i16[0];
                    *(v32->i16 + v30) = v86.i16[1];
                    v32 = v83;
                    LODWORD(v28) = v28 - 2;
                  }

                  while (v28);
                }

                else if (v28)
                {
                  v71 = 0;
                  v72 = 0;
                  for (j = 0; j != v28; ++j)
                  {
                    if (v27)
                    {
                      v74 = result->u8[j];
                      v75 = v71;
                      v76 = v72;
                      v77 = v27;
                      do
                      {
                        v32->i8[v75] = ((64 - v74) * v35->u8[v76++] + v32->u8[v75] * v74 + 32) >> 6;
                        ++v75;
                        --v77;
                      }

                      while (v77);
                    }

                    v72 += v34;
                    v71 += v31;
                  }
                }
              }

              else
              {
                v10 = v184;
                v38.i64[0] = 0x4040404040404040;
                v38.i64[1] = 0x4040404040404040;
                v23 = v190;
                do
                {
                  v39 = 0;
                  v36.i8[0] = result->i8[0];
                  v40 = vsubq_s8(v38, v36).u64[0];
                  v36 = vdupq_lane_s8(*v36.i8, 0);
                  v41 = vdupq_lane_s8(v40, 0);
                  do
                  {
                    *v32[v39 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v41.i8, v35[v39 / 8]), *v36.i8, v32[v39 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v41, *v35[v39 / 8].i8), v36, *v32[v39 / 8].i8), 6uLL);
                    v39 += 16;
                  }

                  while (v39 < v27);
                  result = (result + 1);
                  v32 = (v32 + v30);
                  v35 = (v35 + v33);
                  LODWORD(v28) = v28 - 1;
                }

                while (v28);
              }
            }

            ++v22;
          }

          while (v22 != v10);
          v8 = v181;
          LODWORD(v14) = v177;
          v13 = v179;
        }

        v11 = v14 + v13;
      }

      while ((v14 + v13) < v175 && v8 < v172);
    }
  }

  if (v183[1] == 1)
  {
    v174 = *a2;
    v90 = *a2 + v183[437];
    if (v90 >= v170[66].i32[1])
    {
      v90 = v170[66].i32[1];
    }

    v178 = v90;
    if (((0x3DFFFAuLL >> v169) & 1) != 0 && v174 < v90)
    {
      v91 = 0;
      v176 = dword_277C31E5C[byte_277C3CFCC[v169]];
      v180 = *(a2 + 7864) - 8 * *(a2 + 8) * v174 - 8;
      v92 = 3;
      if (*(*&v170[3087] + 77))
      {
        v92 = 1;
      }

      v189 = v92;
      v93 = *a2;
      do
      {
        v94 = *(a2 + 8);
        v95 = *(v180 + 8 * v94 * v93);
        v96 = *v95;
        if ((0x2F0BFFuLL >> v96))
        {
          if ((0x20005uLL >> v96))
          {
            v98 = v93 | 1;
            v93 &= ~1u;
            v95 = *(v180 + 8 * v94 * v98);
            v97 = 2;
          }

          else
          {
            v97 = byte_277C36D60[v96];
          }
        }

        else
        {
          v97 = 16;
        }

        if ((*(v95 + 167) & 0x80) != 0 || v95[16] >= 1)
        {
          v99 = v183[437];
          if (v99 >= v97)
          {
            v99 = v97;
          }

          v100 = ***(a2 + 7864);
          v182 = v97;
          if ((0x1F07FFuLL >> v100))
          {
            v101 = byte_277C3CAFE[v100] >> 1;
          }

          else
          {
            v101 = 32;
          }

          v198 = v101;
          v102 = 0;
          v187 = v91 + 1;
          v185 = v93;
          v194 = 4 * (v93 - v174);
          v196 = 4 * v99;
          do
          {
            v103 = a2 + 16 + 2608 * v102;
            v104 = *(v103 + 8);
            v105 = v198 >> *(v103 + 4);
            v106 = v196 >> v104;
            v107 = *(v103 + 40);
            v108 = (*(v103 + 16) + v107 * (v194 >> v104));
            v109 = *(a6 + 4 * v102);
            v110 = (*(a5 + 8 * v102) + v109 * (v194 >> v104));
            result = sub_27798E5AC(v198 >> *(v103 + 4));
            if ((*(*(a2 + 7960) + 192) & 8) != 0)
            {
              v116 = (2 * v108);
              v117 = (2 * v110);
              v118.i64[0] = 0x40004000400040;
              v118.i64[1] = 0x40004000400040;
              if (v105 < 8)
              {
                if (v105 == 4)
                {
                  v126 = vld1_dup_f32(result);
                  v127 = vmovl_u8(v126);
                  v128 = vsubw_u8(v118, v126);
                  v129 = vextq_s8(v127, v127, 8uLL).u64[0];
                  v130 = vextq_s8(v128, v128, 8uLL).u64[0];
                  do
                  {
                    v131 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v117, *v128.i8), *v116, *v127.i8), 6uLL), vmlal_u16(vmull_u16(*(v117 + 2 * v109), v130), *(v116 + 2 * v107), v129), 6uLL);
                    *v116 = *v131.i8;
                    *(v116 + 2 * v107) = v131.u64[1];
                    v116 = (v116 + 2 * (2 * v107));
                    v117 = (v117 + 2 * (2 * v109));
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v105 == 2 && v106 >= 8)
                {
                  v155 = vld1_dup_s16(result);
                  v156 = vmovl_u8(v155).u64[0];
                  v111.i64[0] = 0x40004000400040;
                  v157 = vsubw_u8(v111, v155).u64[0];
                  do
                  {
                    v158.i32[0] = v116->i32[0];
                    v158.i32[1] = *(v116->i32 + 2 * v107);
                    v159.i32[0] = v117->i32[0];
                    v159.i32[1] = *(v117->i32 + 2 * v109);
                    v160 = vrshrn_n_s32(vmlal_u16(vmull_u16(v157, v159), v156, v158), 6uLL);
                    v116->i32[0] = v160.i32[0];
                    *(v116->i32 + 2 * v107) = v160.i32[1];
                    v116 = (v116 + 2 * (2 * v107));
                    v117 = (v117 + 2 * (2 * v109));
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v106)
                {
                  v133 = 0;
                  v134 = 0;
                  for (k = 0; k != v106; ++k)
                  {
                    if (v105)
                    {
                      v136 = result;
                      v137 = v133;
                      v138 = v134;
                      v139 = v105;
                      do
                      {
                        v140 = v136->u8[0];
                        v136 = (v136 + 1);
                        v116->i16[v137] = ((64 - v140) * v117->u16[v138++] + v116->u16[v137] * v140 + 32) >> 6;
                        ++v137;
                        --v139;
                      }

                      while (v139);
                    }

                    v134 += v109;
                    v133 += v107;
                  }
                }
              }

              else
              {
                do
                {
                  v119 = 0;
                  for (m = 0; m < v105; m += 8)
                  {
                    v121 = result[m / 8];
                    v122 = vmovl_u8(v121);
                    v123 = vsubw_u8(v118, v121);
                    *v116[v119].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v117[v119], *v123.i8), v116[v119], *v122.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v117[v119].i8, v123), *v116[v119].i8, v122), 6uLL);
                    v119 += 2;
                  }

                  v117 = (v117 + 2 * v109);
                  v116 = (v116 + 2 * v107);
                  --v106;
                }

                while (v106);
              }
            }

            else
            {
              v112.i64[0] = 0x4040404040404040;
              v112.i64[1] = 0x4040404040404040;
              if (v105 < 9)
              {
                if (v105 == 4)
                {
                  v141 = vld1_dup_f32(result);
                  v142 = vsub_s8(0x4040404040404040, v141);
                  do
                  {
                    v143.i32[0] = v108->i32[0];
                    v143.i32[1] = *(v108->i32 + v107);
                    v144.i32[0] = v110->i32[0];
                    v144.i32[1] = *(v110->i32 + v109);
                    v145 = vrshrn_n_s16(vmlal_u8(vmull_u8(v142, v144), v141, v143), 6uLL);
                    v108->i32[0] = v145.i32[0];
                    *(v108->i32 + v107) = v145.i32[1];
                    v108 = (v108 + (2 * v107));
                    v110 = (v110 + (2 * v109));
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v105 == 8)
                {
                  v124 = *result;
                  v125 = vsub_s8(0x4040404040404040, *result);
                  do
                  {
                    *v108 = vrshrn_n_s16(vmlal_u8(vmull_u8(v125, *v110), v124, *v108), 6uLL);
                    v108 = (v108 + v107);
                    v110 = (v110 + v109);
                    --v106;
                  }

                  while (v106);
                }

                else if (v105 == 2 && v106 >= 0x10)
                {
                  v161 = vld1_dup_s16(result);
                  v162 = vsub_s8(0x4040404040404040, v161);
                  v165 = v108;
                  do
                  {
                    v166 = vld1_dup_s16(v165);
                    v163 = (2 * v107);
                    v165 = (v165 + v163);
                    v166.i16[1] = *(v108->i16 + v107);
                    v167 = (v110 + v109);
                    v168 = vld1_dup_s16(v110);
                    v164 = (2 * v109);
                    v110 = (v110 + v164);
                    v168.i16[1] = *v167;
                    v166.i32[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(v162, v168), v161, v166), 6uLL).u32[0];
                    v108->i16[0] = v166.i16[0];
                    *(v108->i16 + v107) = v166.i16[1];
                    v108 = v165;
                    v106 -= 2;
                  }

                  while (v106);
                }

                else if (v106)
                {
                  v147 = 0;
                  v148 = 0;
                  for (n = 0; n != v106; ++n)
                  {
                    if (v105)
                    {
                      v150 = result;
                      v151 = v147;
                      v152 = v148;
                      v153 = v105;
                      do
                      {
                        v154 = v150->u8[0];
                        v150 = (v150 + 1);
                        v108->i8[v151] = ((64 - v154) * v110->u8[v152++] + v108->u8[v151] * v154 + 32) >> 6;
                        ++v151;
                        --v153;
                      }

                      while (v153);
                    }

                    v148 += v109;
                    v147 += v107;
                  }
                }
              }

              else
              {
                do
                {
                  for (ii = 0; ii < v105; ii += 16)
                  {
                    v114 = *result[ii / 8].i8;
                    v115 = vsubq_s8(v112, v114);
                    *v108[ii / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v115.i8, v110[ii / 8]), *v114.i8, v108[ii / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v115, *v110[ii / 8].i8), v114, *v108[ii / 8].i8), 6uLL);
                  }

                  v108 = (v108 + v107);
                  v110 = (v110 + v109);
                  --v106;
                }

                while (v106);
              }
            }

            ++v102;
          }

          while (v102 != v189);
          v91 = v187;
          v93 = v185;
          v97 = v182;
        }

        v93 += v97;
      }

      while (v93 < v178 && v91 < v176);
    }
  }

  return result;
}

int8x8_t *sub_27798F60C()
{
  result = MEMORY[0x28223BE20]();
  v6 = v5;
  v7 = v4;
  __b[2048] = *MEMORY[0x277D85DE8];
  v9 = &result[326 * v8];
  v10 = byte_277C3BCDE[4 * v1 + 2 * v9[2].i32[1] + v9[3].i32[0]];
  v11 = **&result[983];
  v12 = *(v11 + 65);
  v13 = v9[4];
  v14 = byte_277C3CAFE[v10];
  v15 = v9[7].u32[0];
  v16 = byte_277C3CAE8[v10];
  if ((*(*&result[995] + 192) & 8) != 0)
  {
    if ((*(v11 + 167) & 0x400) != 0)
    {
      if (dword_27A722360[8 * v1] >= 1)
      {
        LODWORD(v37) = v14 == 2 * byte_277C3F990[v1];
        HIDWORD(v37) = v16 == 2 * byte_277C36D60[v1];
        return sub_277A7D91C(v13, v15, v4, v5, v2, v3, *(*&dword_27A722360[8 * v1 + 6] + 8 * v12), byte_277C3CAFE[v1], v14, v16, v37);
      }
    }

    else
    {
      v38 = v2;
      v39 = v3;
      v17 = *(v11 + 64);
      v18 = byte_277BB8B40[v10];
      switch(v17)
      {
        case 1:
          if (v16 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = byte_277C3CAE8[v10];
          }

          v32 = __b;
          v33 = byte_277BB8B56;
          do
          {
            memset(v32, *v33, v14);
            v32 = (v32 + v14);
            v33 += v18;
            --v31;
          }

          while (v31);
          break;
        case 2:
          v25 = 0;
          if (v14 <= 1)
          {
            v26 = 1;
          }

          else
          {
            v26 = byte_277C3CAFE[v10];
          }

          if (v16 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = byte_277C3CAE8[v10];
          }

          v28 = __b;
          do
          {
            v29 = 0;
            v30 = byte_277BB8B56;
            do
            {
              v28->i8[v29++] = *v30;
              v30 += v18;
            }

            while (v26 != v29);
            v28 = (v28 + v14);
            ++v25;
          }

          while (v25 != v27);
          break;
        case 3:
          v19 = 0;
          if (v14 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = byte_277C3CAFE[v10];
          }

          if (v16 <= 1)
          {
            v21 = 1;
          }

          else
          {
            v21 = byte_277C3CAE8[v10];
          }

          v22 = __b;
          do
          {
            v23 = 0;
            do
            {
              if (v19 >= v23)
              {
                v24 = v23;
              }

              else
              {
                v24 = v19;
              }

              v22->i8[v23++] = byte_277BB8B56[v18 * v24];
            }

            while (v20 != v23);
            v22 = (v22 + v14);
            ++v19;
          }

          while (v19 != v21);
          break;
        default:
          if (v16 <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = byte_277C3CAE8[v10];
          }

          v35 = __b;
          do
          {
            memset(v35, 32, v14);
            v35 = (v35 + v14);
            --v34;
          }

          while (v34);
          break;
      }

      return sub_277A7D91C(v13, v15, v7, v6, v38, v39, __b, v14, v14, v16, 0);
    }
  }

  else if ((*(v11 + 167) & 0x400) != 0)
  {
    if (dword_27A722360[8 * v1] >= 1)
    {
      LODWORD(v36) = v14 == 2 * byte_277C3F990[v1];
      HIDWORD(v36) = v16 == 2 * byte_277C36D60[v1];
      return sub_277A862F8(v13, v15, v4, v5, v2, v3, *(*&dword_27A722360[8 * v1 + 6] + 8 * v12), byte_277C3CAFE[v1], v14, v16, v36);
    }
  }

  else
  {
    return sub_277A862F8(v13, v15, v4, v5, v2, v3, &qword_280A9FFB0[2816 * *(v11 + 64) + 128 * v10], v14, v14, v16, 0);
  }

  return result;
}

__n128 sub_27798F98C(uint64_t a1)
{
  v2 = *(a1 + 616);
  if (v2 >= 21)
  {
    if (v2 >= 0x3D)
    {
      if (v2 < 0x79)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  memcpy(*(a1 + 24704), &unk_277BB8BD6 + 390 * v3, 0x186uLL);
  memcpy((*(a1 + 24704) + 390), &unk_277BB91EE + 540 * v3, 0x21CuLL);
  v4 = *(a1 + 24704) + 930;
  v5 = &unk_277BB9A5E + 36 * v3;
  *(v4 + 32) = *(v5 + 8);
  *(v4 + 16) = *(v5 + 1);
  *v4 = *v5;
  memcpy((*(a1 + 24704) + 5990), &unk_277BB9AEE + 2100 * v3, 0x834uLL);
  memcpy((*(a1 + 24704) + 1790), &unk_277BBBBBE + 4200 * v3, 0x1068uLL);
  memcpy((*(a1 + 24704) + 1470), &unk_277BBFD5E + 320 * v3, 0x140uLL);
  v6 = (*(a1 + 24704) + 966);
  v7 = (&unk_277BC025E + 48 * v3);
  v6[2] = v7[2];
  v6[1] = v7[1];
  *v6 = *v7;
  v8 = *(a1 + 24704) + 1014;
  v9 = &unk_277BC031E + 56 * v3;
  *(v8 + 48) = *(v9 + 6);
  *(v8 + 32) = *(v9 + 2);
  *(v8 + 16) = *(v9 + 1);
  *v8 = *v9;
  v10 = (*(a1 + 24704) + 1070);
  v11 = &xmmword_277BC03FE[4 * v3];
  *v10 = *v11;
  v10[1] = v11[1];
  v10[2] = v11[2];
  v10[3] = v11[3];
  v12 = *(a1 + 24704) + 1134;
  v13 = &unk_277BC04FE + 72 * v3;
  *(v12 + 16) = *(v13 + 1);
  *(v12 + 32) = *(v13 + 2);
  *(v12 + 48) = *(v13 + 3);
  *(v12 + 64) = *(v13 + 8);
  *v12 = *v13;
  v14 = (*(a1 + 24704) + 1206);
  v15 = (&unk_277BC061E + 80 * v3);
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = *(a1 + 24704) + 1286;
  v17 = &unk_277BC075E + 88 * v3;
  *(v16 + 32) = *(v17 + 2);
  *(v16 + 48) = *(v17 + 3);
  *(v16 + 64) = *(v17 + 4);
  *(v16 + 80) = *(v17 + 10);
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 1);
  v18 = *(a1 + 24704) + 1374;
  v19 = &unk_277BC08BE + 96 * v3;
  *(v18 + 32) = *(v19 + 2);
  *(v18 + 48) = *(v19 + 3);
  *(v18 + 64) = *(v19 + 4);
  *(v18 + 80) = *(v19 + 5);
  *v18 = *v19;
  result = *(v19 + 1);
  *(v18 + 16) = result;
  return result;
}

int64x2_t sub_27798FC58(_WORD *a1)
{
  v1 = xmmword_277BB7090;
  v2 = vdupq_n_s64(0x41uLL);
  v3 = xmmword_277BB70A0;
  v4 = a1 + 8;
  v5 = vdupq_n_s64(4uLL);
  v6 = 68;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v2, v3)), *v1.i8).u8[0])
    {
      *(v4 - 6) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v3)), *&v1).i8[2])
    {
      *(v4 - 3) = 0;
    }

    if (vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v1))).i32[1])
    {
      *v4 = 0;
      v4[3] = 0;
    }

    v1 = vaddq_s64(v1, v5);
    v3 = vaddq_s64(v3, v5);
    v4 += 12;
    v6 -= 4;
  }

  while (v6);
  v7 = xmmword_277BB7070;
  v8 = xmmword_277BB7080;
  v9 = xmmword_277BB7090;
  v10 = xmmword_277BB70A0;
  v11 = a1 + 197;
  v12 = 96;
  v13 = vdupq_n_s64(0x5AuLL);
  v14 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v10)), *v7.i8), *v7.i8).u8[0])
    {
      *v11 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v10)), *&v7), *&v7).i8[1])
    {
      v11[3] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v9))), *&v7).i8[2])
    {
      v11[6] = 0;
      v11[9] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v8)), *&v7)).i32[1])
    {
      v11[12] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v8)), *&v7)).i8[5])
    {
      v11[15] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5AuLL), *&v7)))).i8[6])
    {
      v11[18] = 0;
      v11[21] = 0;
    }

    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s64(v9, v14);
    v10 = vaddq_s64(v10, v14);
    v11 += 24;
    v7 = vaddq_s64(v7, v14);
    v12 -= 8;
  }

  while (v12);
  v15 = xmmword_277BB70A0;
  v16 = a1 + 470;
  v17 = vdupq_n_s64(2uLL);
  v18 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v15)).u8[0])
    {
      *(v16 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v15)).i32[1])
    {
      *v16 = 0;
    }

    v15 = vaddq_s64(v15, v17);
    v16 += 6;
    v18 -= 2;
  }

  while (v18);
  v19 = 0;
  a1[488] = 0;
  a1[494] = 0;
  a1[500] = 0;
  a1[506] = 0;
  a1[513] = 0;
  a1[520] = 0;
  a1[527] = 0;
  a1[534] = 0;
  a1[542] = 0;
  a1[550] = 0;
  a1[558] = 0;
  a1[566] = 0;
  a1[575] = 0;
  a1[584] = 0;
  a1[593] = 0;
  a1[602] = 0;
  a1[612] = 0;
  a1[622] = 0;
  a1[632] = 0;
  a1[642] = 0;
  a1[653] = 0;
  a1[664] = 0;
  a1[675] = 0;
  a1[686] = 0;
  a1[698] = 0;
  a1[710] = 0;
  a1[722] = 0;
  a1[734] = 0;
  do
  {
    a1[v19 + 738] = 0;
    v19 += 4;
  }

  while (v19 != 160);
  v20 = xmmword_277BB7070;
  v21 = xmmword_277BB7080;
  v22 = xmmword_277BB7090;
  v23 = xmmword_277BB70A0;
  v24 = a1 + 899;
  v25 = 424;
  v26 = vdupq_n_s64(0x1A4uLL);
  v27 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v26, v23)), *v20.i8), *v20.i8).u8[0])
    {
      *v24 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v23)), *&v20), *&v20).i8[1])
    {
      v24[5] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v22))), *&v20).i8[2])
    {
      v24[10] = 0;
      v24[15] = 0;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v21)), *&v20)).i32[1])
    {
      v24[20] = 0;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v21)), *&v20)).i8[5])
    {
      v24[25] = 0;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1A4uLL), *&v20)))).i8[6])
    {
      v24[30] = 0;
      v24[35] = 0;
    }

    v21 = vaddq_s64(v21, v27);
    v22 = vaddq_s64(v22, v27);
    v23 = vaddq_s64(v23, v27);
    v24 += 40;
    v20 = vaddq_s64(v20, v27);
    v25 -= 8;
  }

  while (v25);
  v28 = a1 + 2999;
  v29 = xmmword_277BB7070;
  v30 = xmmword_277BB7080;
  v31 = xmmword_277BB7090;
  v32 = xmmword_277BB70A0;
  v33 = 216;
  v34 = vdupq_n_s64(0xD2uLL);
  v35 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v34, v32)), *v29.i8), *v29.i8).u8[0])
    {
      *v28 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v32)), *&v29), *&v29).i8[1])
    {
      v28[5] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v31))), *&v29).i8[2])
    {
      v28[10] = 0;
      v28[15] = 0;
    }

    if (vuzp1_s8(*&v29, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v30)), *&v29)).i32[1])
    {
      v28[20] = 0;
    }

    if (vuzp1_s8(*&v29, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v30)), *&v29)).i8[5])
    {
      v28[25] = 0;
    }

    if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xD2uLL), *&v29)))).i8[6])
    {
      v28[30] = 0;
      v28[35] = 0;
    }

    v30 = vaddq_s64(v30, v35);
    v31 = vaddq_s64(v31, v35);
    v32 = vaddq_s64(v32, v35);
    v28 += 40;
    v29 = vaddq_s64(v29, v35);
    v33 -= 8;
  }

  while (v33);
  v36 = a1 + 4050;
  v37 = xmmword_277BB70A0;
  v38 = vdupq_n_s64(2uLL);
  v39 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v37)).u8[0])
    {
      *(v36 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v37)).i32[1])
    {
      *v36 = 0;
    }

    v37 = vaddq_s64(v37, v38);
    v36 += 6;
    v39 -= 2;
  }

  while (v39);
  a1[4065] = 0;
  a1[4068] = 0;
  v40 = a1 + 4074;
  v41 = xmmword_277BB70A0;
  v42 = vdupq_n_s64(2uLL);
  v43 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v41)).u8[0])
    {
      *(v40 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v41)).i32[1])
    {
      *v40 = 0;
    }

    v41 = vaddq_s64(v41, v42);
    v40 += 6;
    v43 -= 2;
  }

  while (v43);
  v44 = 0;
  a1[4089] = 0;
  a1[4092] = 0;
  a1[4095] = 0;
  do
  {
    a1[v44 + 4104] = 0;
    v44 += 9;
  }

  while (v44 != 72);
  v45 = xmmword_277BB7070;
  v46 = xmmword_277BB7080;
  v47 = xmmword_277BB7090;
  v48 = xmmword_277BB70A0;
  v49 = 24;
  v50 = vdupq_n_s64(0x16uLL);
  v51 = a1 + 4182;
  v52 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v50, v48)), *v45.i8), *v45.i8).u8[0])
    {
      *(v51 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v48)), *&v45), *&v45).i8[1])
    {
      *(v51 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v47))), *&v45).i8[2])
    {
      *(v51 - 6) = 0;
      *(v51 - 3) = 0;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v46)), *&v45)).i32[1])
    {
      *v51 = 0;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v46)), *&v45)).i8[5])
    {
      v51[3] = 0;
    }

    if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v45)))).i8[6])
    {
      v51[6] = 0;
      v51[9] = 0;
    }

    v46 = vaddq_s64(v46, v52);
    v47 = vaddq_s64(v47, v52);
    v48 = vaddq_s64(v48, v52);
    v51 += 24;
    v45 = vaddq_s64(v45, v52);
    v49 -= 8;
  }

  while (v49);
  v53 = xmmword_277BB7070;
  v54 = xmmword_277BB7080;
  v55 = xmmword_277BB7090;
  v56 = xmmword_277BB70A0;
  v57 = a1 + 4318;
  v58 = 24;
  v59 = vdupq_n_s64(0x16uLL);
  v60 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v59, v56)), *v53.i8), *v53.i8).u8[0])
    {
      *(v57 - 68) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v56)), *&v53), *&v53).i8[1])
    {
      *(v57 - 51) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v55))), *&v53).i8[2])
    {
      *(v57 - 34) = 0;
      *(v57 - 17) = 0;
    }

    if (vuzp1_s8(*&v53, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v54)), *&v53)).i32[1])
    {
      *v57 = 0;
    }

    if (vuzp1_s8(*&v53, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v54)), *&v53)).i8[5])
    {
      v57[17] = 0;
    }

    if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v53)))).i8[6])
    {
      v57[34] = 0;
      v57[51] = 0;
    }

    v54 = vaddq_s64(v54, v60);
    v55 = vaddq_s64(v55, v60);
    v56 = vaddq_s64(v56, v60);
    v57 += 136;
    v53 = vaddq_s64(v53, v60);
    v58 -= 8;
  }

  while (v58);
  a1[4610] = 0;
  a1[4613] = 0;
  a1[4616] = 0;
  a1[4619] = 0;
  v61 = xmmword_277BB7070;
  v62 = xmmword_277BB7080;
  v63 = xmmword_277BB7090;
  v64 = xmmword_277BB70A0;
  v65 = a1 + 4634;
  v66 = 24;
  v67 = vdupq_n_s64(0x16uLL);
  v68 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v67, v64)), *v61.i8), *v61.i8).u8[0])
    {
      *(v65 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v64)), *&v61), *&v61).i8[1])
    {
      *(v65 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v61, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v63))), *&v61).i8[2])
    {
      *(v65 - 6) = 0;
      *(v65 - 3) = 0;
    }

    if (vuzp1_s8(*&v61, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v62)), *&v61)).i32[1])
    {
      *v65 = 0;
    }

    if (vuzp1_s8(*&v61, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v62)), *&v61)).i8[5])
    {
      v65[3] = 0;
    }

    if (vuzp1_s8(*&v61, vuzp1_s16(*&v61, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v61)))).i8[6])
    {
      v65[6] = 0;
      v65[9] = 0;
    }

    v62 = vaddq_s64(v62, v68);
    v63 = vaddq_s64(v63, v68);
    v64 = vaddq_s64(v64, v68);
    v65 += 24;
    v61 = vaddq_s64(v61, v68);
    v66 -= 8;
  }

  while (v66);
  a1[4690] = 0;
  a1[4695] = 0;
  a1[4700] = 0;
  a1[4705] = 0;
  v69 = xmmword_277BB7070;
  v70 = xmmword_277BB7080;
  v71 = xmmword_277BB7090;
  v72 = xmmword_277BB70A0;
  v73 = a1 + 4725;
  v74 = 24;
  v75 = vdupq_n_s64(0x16uLL);
  v76 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v75, v72)), *v69.i8), *v69.i8).u8[0])
    {
      *(v73 - 16) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v72)), *&v69), *&v69).i8[1])
    {
      *(v73 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v69, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v71))), *&v69).i8[2])
    {
      *(v73 - 8) = 0;
      *(v73 - 4) = 0;
    }

    if (vuzp1_s8(*&v69, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v70)), *&v69)).i32[1])
    {
      *v73 = 0;
    }

    if (vuzp1_s8(*&v69, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v70)), *&v69)).i8[5])
    {
      v73[4] = 0;
    }

    if (vuzp1_s8(*&v69, vuzp1_s16(*&v69, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v69)))).i8[6])
    {
      v73[8] = 0;
      v73[12] = 0;
    }

    v70 = vaddq_s64(v70, v76);
    v71 = vaddq_s64(v71, v76);
    v72 = vaddq_s64(v72, v76);
    v73 += 32;
    v69 = vaddq_s64(v69, v76);
    v74 -= 8;
  }

  while (v74);
  v77 = xmmword_277BB7070;
  v78 = xmmword_277BB7080;
  v79 = xmmword_277BB7090;
  v80 = xmmword_277BB70A0;
  v81 = a1 + 4808;
  v82 = 24;
  v83 = vdupq_n_s64(0x16uLL);
  v84 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v83, v80)), *v77.i8), *v77.i8).u8[0])
    {
      *(v81 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v80)), *&v77), *&v77).i8[1])
    {
      *(v81 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v77, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v79))), *&v77).i8[2])
    {
      *(v81 - 6) = 0;
      *(v81 - 3) = 0;
    }

    if (vuzp1_s8(*&v77, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v78)), *&v77)).i32[1])
    {
      *v81 = 0;
    }

    if (vuzp1_s8(*&v77, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v78)), *&v77)).i8[5])
    {
      v81[3] = 0;
    }

    if (vuzp1_s8(*&v77, vuzp1_s16(*&v77, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v77)))).i8[6])
    {
      v81[6] = 0;
      v81[9] = 0;
    }

    v78 = vaddq_s64(v78, v84);
    v79 = vaddq_s64(v79, v84);
    v80 = vaddq_s64(v80, v84);
    v81 += 24;
    v77 = vaddq_s64(v77, v84);
    v82 -= 8;
  }

  while (v82);
  a1[4867] = 0;
  a1[4875] = 0;
  a1[4883] = 0;
  a1[4891] = 0;
  a1[4899] = 0;
  a1[4907] = 0;
  a1[4915] = 0;
  a1[4923] = 0;
  a1[4931] = 0;
  a1[4939] = 0;
  a1[4947] = 0;
  a1[4955] = 0;
  a1[4963] = 0;
  v85 = a1 + 4974;
  v86 = 2;
  a1[4971] = 0;
  do
  {
    *v85 = 0;
    v85[9] = 0;
    v85[18] = 0;
    v85[27] = 0;
    v85[36] = 0;
    v85[315] = 0;
    v85[324] = 0;
    v85[333] = 0;
    ++v86;
    v85[342] = 0;
    v85[351] = 0;
    v85 += 46;
  }

  while (v86 != 9);
  v87 = xmmword_277BB7070;
  v88 = xmmword_277BB7080;
  v89 = xmmword_277BB7090;
  v90 = xmmword_277BB70A0;
  v91 = a1 + 5616;
  v92 = 24;
  v93 = vdupq_n_s64(0x15uLL);
  v94 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v93, v90)), *v87.i8), *v87.i8).u8[0])
    {
      *(v91 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v90)), *&v87), *&v87).i8[1])
    {
      *(v91 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v87, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v89))), *&v87).i8[2])
    {
      *(v91 - 6) = 0;
      *(v91 - 3) = 0;
    }

    if (vuzp1_s8(*&v87, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v88)), *&v87)).i32[1])
    {
      *v91 = 0;
    }

    if (vuzp1_s8(*&v87, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v88)), *&v87)).i8[5])
    {
      v91[3] = 0;
    }

    if (vuzp1_s8(*&v87, vuzp1_s16(*&v87, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v87)))).i8[6])
    {
      v91[6] = 0;
      v91[9] = 0;
    }

    v88 = vaddq_s64(v88, v94);
    v89 = vaddq_s64(v89, v94);
    v90 = vaddq_s64(v90, v94);
    v91 += 24;
    v87 = vaddq_s64(v87, v94);
    v92 -= 8;
  }

  while (v92);
  a1[5667] = 0;
  a1[5670] = 0;
  a1[5673] = 0;
  a1[5676] = 0;
  a1[5679] = 0;
  a1[5682] = 0;
  a1[5685] = 0;
  v95 = a1 + 5691;
  v96 = xmmword_277BB70A0;
  v97 = 18;
  v98 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), v96)).u8[0])
    {
      *(v95 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v96)).i32[1])
    {
      *v95 = 0;
    }

    v96 = vaddq_s64(v96, v98);
    v95 += 6;
    v97 -= 2;
  }

  while (v97);
  a1[5742] = 0;
  a1[5745] = 0;
  a1[5748] = 0;
  a1[5751] = 0;
  a1[5754] = 0;
  v99 = xmmword_277BB70A0;
  v100 = a1 + 5760;
  v101 = 10;
  v102 = vdupq_n_s64(9uLL);
  v103 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v102, v99)).u8[0])
    {
      *(v100 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v99)).i32[1])
    {
      *v100 = 0;
    }

    v99 = vaddq_s64(v99, v103);
    v100 += 6;
    v101 -= 2;
  }

  while (v101);
  v104 = xmmword_277BB70A0;
  v105 = a1 + 5787;
  v106 = 10;
  v107 = vdupq_n_s64(9uLL);
  v108 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v107, v104)).u8[0])
    {
      *(v105 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v104)).i32[1])
    {
      *v105 = 0;
    }

    v104 = vaddq_s64(v104, v108);
    v105 += 6;
    v106 -= 2;
  }

  while (v106);
  v109 = xmmword_277BB70A0;
  v110 = a1 + 5814;
  v111 = vdupq_n_s64(2uLL);
  v112 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v109)).u8[0])
    {
      *(v110 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v109)).i32[1])
    {
      *v110 = 0;
    }

    v109 = vaddq_s64(v109, v111);
    v110 += 6;
    v112 -= 2;
  }

  while (v112);
  v113 = xmmword_277BB7070;
  v114 = xmmword_277BB7080;
  v115 = xmmword_277BB7090;
  v116 = xmmword_277BB70A0;
  v117 = a1 + 5841;
  v118 = 24;
  v119 = vdupq_n_s64(0x15uLL);
  v120 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v119, v116)), *v113.i8), *v113.i8).u8[0])
    {
      *(v117 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v116)), *&v113), *&v113).i8[1])
    {
      *(v117 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v113, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v115))), *&v113).i8[2])
    {
      *(v117 - 6) = 0;
      *(v117 - 3) = 0;
    }

    if (vuzp1_s8(*&v113, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v114)), *&v113)).i32[1])
    {
      *v117 = 0;
    }

    if (vuzp1_s8(*&v113, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v114)), *&v113)).i8[5])
    {
      v117[3] = 0;
    }

    if (vuzp1_s8(*&v113, vuzp1_s16(*&v113, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), *&v113)))).i8[6])
    {
      v117[6] = 0;
      v117[9] = 0;
    }

    v114 = vaddq_s64(v114, v120);
    v115 = vaddq_s64(v115, v120);
    v116 = vaddq_s64(v116, v120);
    v117 += 24;
    v113 = vaddq_s64(v113, v120);
    v118 -= 8;
  }

  while (v118);
  v121 = xmmword_277BB70A0;
  v122 = a1 + 5895;
  v123 = vdupq_n_s64(2uLL);
  v124 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v121)).u8[0])
    {
      *(v122 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v121)).i32[1])
    {
      *v122 = 0;
    }

    v121 = vaddq_s64(v121, v123);
    v122 += 6;
    v124 -= 2;
  }

  while (v124);
  v125 = xmmword_277BB70A0;
  v126 = a1 + 5913;
  v127 = vdupq_n_s64(2uLL);
  v128 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v125)).u8[0])
    {
      *(v126 - 3) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v125)).i32[1])
    {
      *v126 = 0;
    }

    v125 = vaddq_s64(v125, v127);
    v126 += 6;
    v128 -= 2;
  }

  while (v128);
  v129 = 0;
  a1[5928] = 0;
  a1[5931] = 0;
  a1[5934] = 0;
  a1[5937] = 0;
  a1[5940] = 0;
  a1[5943] = 0;
  a1[5946] = 0;
  a1[5949] = 0;
  a1[5952] = 0;
  a1[5955] = 0;
  a1[5960] = 0;
  LOBYTE(v130) = 1;
  v131 = vdupq_n_s64(2uLL);
  do
  {
    v132 = &a1[69 * v129 + 5961];
    v132[11] = 0;
    v132[16] = 0;
    v133 = v130;
    v132[21] = 0;
    v132[26] = 0;
    v132[29] = 0;
    v132[32] = 0;
    v132[35] = 0;
    v132[38] = 0;
    v134 = v132 + 44;
    v130 = 10;
    v135 = xmmword_277BB70A0;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v135)).u8[0])
      {
        *(v134 - 3) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v135)).i32[1])
      {
        *v134 = 0;
      }

      v135 = vaddq_s64(v135, v131);
      v134 += 6;
      v130 -= 2;
    }

    while (v130);
    v129 = 1;
  }

  while ((v133 & 1) != 0);
  v136 = 0;
  a1[6103] = 0;
  LOBYTE(v137) = 1;
  v138 = vdupq_n_s64(2uLL);
  do
  {
    v139 = &a1[69 * v136 + 6104];
    v139[11] = 0;
    v139[16] = 0;
    v140 = v137;
    v139[21] = 0;
    v139[26] = 0;
    v139[29] = 0;
    v139[32] = 0;
    v139[35] = 0;
    v139[38] = 0;
    v141 = v139 + 44;
    v137 = 10;
    v142 = xmmword_277BB70A0;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v142)).u8[0])
      {
        *(v141 - 3) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v142)).i32[1])
      {
        *v141 = 0;
      }

      v142 = vaddq_s64(v142, v138);
      v141 += 6;
      v137 -= 2;
    }

    while (v137);
    v136 = 1;
  }

  while ((v140 & 1) != 0);
  a1[6244] = 0;
  a1[6247] = 0;
  a1[6250] = 0;
  a1[6253] = 0;
  a1[6262] = 0;
  a1[6271] = 0;
  a1[6280] = 0;
  v143 = xmmword_277BB7070;
  v144 = xmmword_277BB7080;
  v145 = xmmword_277BB7090;
  v146 = xmmword_277BB70A0;
  v147 = a1 + 6295;
  v148 = 24;
  v149 = vdupq_n_s64(0x16uLL);
  v150 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v149, v146)), *v143.i8), *v143.i8).u8[0])
    {
      *(v147 - 12) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v146)), *&v143), *&v143).i8[1])
    {
      *(v147 - 9) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v143, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v145))), *&v143).i8[2])
    {
      *(v147 - 6) = 0;
      *(v147 - 3) = 0;
    }

    if (vuzp1_s8(*&v143, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v144)), *&v143)).i32[1])
    {
      *v147 = 0;
    }

    if (vuzp1_s8(*&v143, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v144)), *&v143)).i8[5])
    {
      v147[3] = 0;
    }

    if (vuzp1_s8(*&v143, vuzp1_s16(*&v143, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v143)))).i8[6])
    {
      v147[6] = 0;
      v147[9] = 0;
    }

    v144 = vaddq_s64(v144, v150);
    v145 = vaddq_s64(v145, v150);
    v146 = vaddq_s64(v146, v150);
    v147 += 24;
    v143 = vaddq_s64(v143, v150);
    v148 -= 8;
  }

  while (v148);
  a1[6352] = 0;
  a1[6356] = 0;
  a1[6359] = 0;
  a1[6362] = 0;
  a1[6376] = 0;
  a1[6390] = 0;
  a1[6404] = 0;
  a1[6418] = 0;
  v151 = xmmword_277BB70A0;
  v152 = a1 + 6447;
  v153 = 14;
  v154 = vdupq_n_s64(0xDuLL);
  v155 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v154, v151)).u8[0])
    {
      *(v152 - 15) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xDuLL), *&v151)).i32[1])
    {
      *v152 = 0;
    }

    v151 = vaddq_s64(v151, v155);
    v152 += 30;
    v153 -= 2;
  }

  while (v153);
  v156 = xmmword_277BB70A0;
  v157 = a1 + 6643;
  v158 = 14;
  v159 = vdupq_n_s64(0xDuLL);
  v160 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v159, v156)).u8[0])
    {
      *(v157 - 15) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xDuLL), *&v156)).i32[1])
    {
      *v157 = 0;
    }

    v156 = vaddq_s64(v156, v160);
    v157 += 30;
    v158 -= 2;
  }

  while (v158);
  v161 = 0;
  v162 = xmmword_277BB7090;
  v163 = xmmword_277BB70A0;
  v164 = vdupq_n_s64(0x14uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v164, v163)), *v162.i8).u8[0])
    {
      if (v158 >= 0x10)
      {
        v165 = 8;
      }

      else
      {
        v165 = 10;
      }

      if (!(v161 * 2))
      {
        v165 = 4;
      }

      a1[v165 + 6809 + v161] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x14uLL), *&v163)), *&v162).i8[2])
    {
      if (v158 >= 0x10)
      {
        v166 = 8;
      }

      else
      {
        v166 = 10;
      }

      if (!(v161 * 2))
      {
        v166 = 4;
      }

      a1[v166 + 6820 + v161] = 0;
    }

    if (vuzp1_s16(*&v162, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x14uLL), *&v162))).i32[1])
    {
      if (v158 >= 0x10)
      {
        v167 = 8;
      }

      else
      {
        v167 = 10;
      }

      if (!(v161 * 2))
      {
        v167 = 4;
      }

      a1[v167 + 6831 + v161] = 0;
    }

    if (vuzp1_s16(*&v162, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x14uLL), *&v162))).i8[6])
    {
      if (v158 >= 0x10)
      {
        v168 = 8;
      }

      else
      {
        v168 = 10;
      }

      if (!(v161 * 2))
      {
        v168 = 4;
      }

      a1[v168 + 6842 + v161] = 0;
    }

    v158 += 4;
    v169 = vdupq_n_s64(4uLL);
    v162 = vaddq_s64(v162, v169);
    v163 = vaddq_s64(v163, v169);
    v161 += 44;
  }

  while (v161 != 220);
  for (i = 0; i != 64; i += 4)
  {
    a1[i + 7032] = 0;
  }

  v171 = xmmword_277BB7090;
  v172 = xmmword_277BB70A0;
  v173 = a1 + 7148;
  v174 = 28;
  v175 = vdupq_n_s64(0x19uLL);
  v176 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v175, v172)), *v171.i8).u8[0])
    {
      *(v173 - 42) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v172)), *&v171).i8[2])
    {
      *(v173 - 28) = 0;
    }

    if (vuzp1_s16(*&v171, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v171))).i32[1])
    {
      *(v173 - 14) = 0;
      *v173 = 0;
    }

    v171 = vaddq_s64(v171, v176);
    v172 = vaddq_s64(v172, v176);
    v173 += 56;
    v174 -= 4;
  }

  while (v174);
  for (j = 0; j != 64; j += 8)
  {
    a1[j + 7450] = 0;
  }

  a1[7509] = 0;
  a1[7513] = 0;
  a1[7517] = 0;
  a1[7522] = 0;
  a1[7526] = 0;
  a1[7530] = 0;
  a1[7534] = 0;
  a1[7538] = 0;
  a1[7542] = 0;
  a1[7546] = 0;
  a1[7550] = 0;
  a1[7554] = 0;
  a1[7559] = 0;
  a1[7584] = 0;
  a1[7564] = 0;
  a1[7569] = 0;
  a1[7574] = 0;
  a1[7579] = 0;
  v178 = xmmword_277BB7090;
  v179 = vdupq_n_s64(4uLL);
  v180 = a1 + 8527;
  v181 = 52;
  v182 = xmmword_277BB70A0;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), v182)), *v178.i8).u8[0])
    {
      *(v180 - 51) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v182)), *&v178).i8[2])
    {
      *(v180 - 34) = 0;
    }

    if (vuzp1_s16(*&v178, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v178))).i32[1])
    {
      *(v180 - 17) = 0;
      *v180 = 0;
    }

    v178 = vaddq_s64(v178, v179);
    v182 = vaddq_s64(v182, v179);
    v180 += 68;
    v181 -= 4;
  }

  while (v181);
  v183 = xmmword_277BB7090;
  v184 = xmmword_277BB70A0;
  v185 = a1 + 9409;
  v186 = vdupq_n_s64(4uLL);
  v187 = 52;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), v184)), *v183.i8).u8[0])
    {
      *(v185 - 51) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v184)), *&v183).i8[2])
    {
      *(v185 - 34) = 0;
    }

    if (vuzp1_s16(*&v183, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x34uLL), *&v183))).i32[1])
    {
      *(v185 - 17) = 0;
      *v185 = 0;
    }

    v183 = vaddq_s64(v183, v186);
    v184 = vaddq_s64(v184, v186);
    v185 += 68;
    v187 -= 4;
  }

  while (v187);
  a1[10321] = 0;
  a1[10338] = 0;
  a1[10355] = 0;
  a1[10372] = 0;
  a1[10385] = 0;
  a1[10402] = 0;
  a1[10419] = 0;
  a1[10436] = 0;
  a1[10443] = 0;
  a1[10460] = 0;
  a1[10477] = 0;
  a1[10494] = 0;
  a1[10517] = 0;
  v188 = a1 + 10551;
  result = xmmword_277BB70A0;
  v190 = vdupq_n_s64(2uLL);
  v191 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), result)).u8[0])
    {
      *(v188 - 17) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&result)).i32[1])
    {
      *v188 = 0;
    }

    result = vaddq_s64(result, v190);
    v188 += 34;
    v191 -= 2;
  }

  while (v191);
  return result;
}

_DWORD *sub_2779915E8(_DWORD *result, unsigned int a2, int a3, unsigned int a4, unsigned int a5)
{
  v6 = result;
  v7 = 2 * a4;
  v8 = a2 - 1 - a4;
  v9 = a2 - 1 - a5;
  v10 = 2 * (v8 - v9) - 1;
  if (v9 >= v8)
  {
    v10 = 2 * (v9 - v8);
  }

  if (v9 <= 2 * v8)
  {
    v9 = v10;
  }

  v11 = 2 * (a4 - a5) - 1;
  if (a5 >= a4)
  {
    v11 = 2 * (a5 - a4);
  }

  if (v7 < a5)
  {
    v11 = a5;
  }

  if (v7 > a2)
  {
    v11 = v9;
  }

  if (3 << a3 >= a2)
  {
    LOWORD(v18) = 0;
LABEL_23:
    v25 = (a2 - v18);
    if (v25 >= 2)
    {
      v26 = __clz(v25) ^ 0x1F;
      v27 = (2 << v26) - (a2 - v18);
      v28 = (v11 - v18);
      v29 = v28 - v27;
      if (v28 >= v27)
      {
        v47 = v27 + (v29 >> 1);
        v48 = v26 + 1;
        do
        {
          v49 = *(v6 + 20);
          v50 = (v49 >> 1) & 0x7F80 | 4;
          v51 = 1 << (v48 - 2);
          v52 = v49 - v50;
          v53 = (v47 & v51) == 0;
          if ((v47 & v51) != 0)
          {
            v54 = v52;
          }

          else
          {
            v54 = 0;
          }

          if (v53)
          {
            v55 = v52;
          }

          else
          {
            v55 = v50;
          }

          sub_277A64F90(v6 + 4, *(v6 + 4) + v54, v55);
          --v48;
        }

        while (v48 > 1);
        v56 = *(v6 + 20);
        v57 = (v56 >> 1) & 0x7F80 | 4;
        v58 = v56 - v57;
        if (v29)
        {
          v59 = v57;
        }

        else
        {
          v59 = v58;
        }

        v60 = *(v6 + 4) + ((v29 << 31 >> 31) & v58);

        return sub_277A64F90(v6 + 4, v60, v59);
      }

      else
      {
        v30 = v26 + 1;
        do
        {
          v31 = *(v6 + 20);
          v32 = (v31 >> 1) & 0x7F80 | 4;
          v33 = 1 << (v30 - 2);
          v34 = v31 - v32;
          v35 = (v33 & v28) == 0;
          if ((v33 & v28) != 0)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0;
          }

          if (v35)
          {
            v37 = v34;
          }

          else
          {
            v37 = v32;
          }

          result = sub_277A64F90(v6 + 4, *(v6 + 4) + v36, v37);
          --v30;
        }

        while (v30 > 1);
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v61 = v11;
    v15 = v11;
    v16 = a3;
    v17 = a3;
    while (1)
    {
      v18 = (1 << v17) + v14;
      v19 = *(v6 + 20);
      v20 = (v19 >> 1) & 0x7F80 | 4;
      v21 = v19 - v20;
      v22 = v18 <= v15 ? v21 : 0;
      v23 = v18 <= v15 ? v20 : v21;
      result = sub_277A64F90(v6 + 4, *(v6 + 4) + v22, v23);
      if (v18 > v15)
      {
        break;
      }

      v17 = v13 + a3;
      ++v13;
      v24 = (3 << v16++) + v18;
      v14 = v18;
      if (v24 >= a2)
      {
        v11 = v61;
        goto LABEL_23;
      }
    }

    if (v17 >= 1)
    {
      v38 = v15 - v14;
      v39 = v17 + 1;
      do
      {
        v40 = *(v6 + 20);
        v41 = (v40 >> 1) & 0x7F80 | 4;
        v42 = 1 << (v39 - 2);
        v43 = v40 - v41;
        v44 = (v38 & v42) == 0;
        if ((v38 & v42) != 0)
        {
          v45 = v43;
        }

        else
        {
          v45 = 0;
        }

        if (v44)
        {
          v46 = v43;
        }

        else
        {
          v46 = v41;
        }

        result = sub_277A64F90(v6 + 4, *(v6 + 4) + v45, v46);
        --v39;
      }

      while (v39 > 1);
    }
  }

  return result;
}

uint64_t sub_2779918C0(unsigned int a1, int a2, unsigned int a3, unsigned int a4)
{
  v4 = 2 * a3;
  v5 = a1 - 1 - a3;
  v6 = a1 - 1 - a4;
  v7 = 2 * (v5 - v6) - 1;
  if (v6 >= v5)
  {
    v7 = 2 * (v6 - v5);
  }

  if (v6 <= 2 * v5)
  {
    v6 = v7;
  }

  v8 = 2 * (a3 - a4) - 1;
  if (a4 >= a3)
  {
    v8 = 2 * (a4 - a3);
  }

  if (v4 < a4)
  {
    v8 = a4;
  }

  if (v4 <= a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (3 << a2 >= a1)
  {
    LOWORD(v11) = 0;
    v13 = 0;
LABEL_18:
    v15 = a1 - v11;
    v16 = (a1 - v11);
    if (v16 >= 2)
    {
      v18 = v9 - v11;
      v19 = __clz(v16) ^ 0x1F;
      if ((2 << v19) - v15 > v18)
      {
        v17 = v19;
      }

      else
      {
        v17 = v19 + 1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v17 + v13;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = a2;
    while (1)
    {
      v11 += 1 << v12;
      v13 = v10 + 1;
      if (v11 > v9)
      {
        return (v13 + v12);
      }

      v12 = v10 + a2;
      v14 = (3 << (v10++ + a2)) + v11;
      if (v14 >= a1)
      {
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_2779919C4(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 a3, int a4)
{
  v4 = 0;
  if (a4 <= 8)
  {
    if ((a4 - 6) < 3)
    {
      a1 += *(&dword_277BC0C7C[4 * ((a2 & 0xF) >> 2)] + (a3 & 0xC));
      return *a1;
    }
  }

  else if (a4 > 10)
  {
    if (a4 == 12)
    {
      return *a1;
    }

    if (a4 == 11)
    {
      if (((a3 | a2) & 0xF) == 0)
      {
        return *++a1;
      }

      v4 = 0;
      if ((a2 & 0xF) != 0 && (a3 & 0xF) == 0)
      {
        a1 += 2;
        return *a1;
      }
    }
  }

  else if (a4 == 9)
  {
    if (((a3 | a2) & 0xF) == 0)
    {
      a1 += 5;
      return *a1;
    }

    if ((a2 & 0xF) == 0 && (a3 & 0xF) != 0)
    {
      a1 += 6;
      return *a1;
    }

    if ((a2 & 0xF) != 0 && (a3 & 0xF) == 0)
    {
      a1 += 7;
      return *a1;
    }

    v4 = 0;
    if ((a2 & 0xF) != 0 && (a3 & 0xF) != 0)
    {
      a1 += 8;
      return *a1;
    }
  }

  else
  {
    if (((a3 | a2) & 0xF) == 0)
    {
      a1 += 3;
      return *a1;
    }

    v4 = 0;
    if ((a2 & 0xF) == 0 && (a3 & 0xF) != 0)
    {
      a1 += 4;
      return *a1;
    }
  }

  return v4;
}

uint64_t sub_277991ACC(unsigned __int8 *a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = 0;
  v5 = a3 & 0x1F;
  v6 = (a2 >> 3) & 2 | (a3 >> 4) & 1;
  if (a4 <= 10)
  {
    v7 = (a2 >> 2) & 2 | (a3 >> 3) & 1;
    if ((a4 - 6) < 3)
    {
      v8 = ((a2 >> 1) & 2 | (a3 >> 2) & 1 | (16 * v6) | (4 * v7)) + 41;
LABEL_20:
      a1 += v8;
      return *a1;
    }

    if (a4 == 9)
    {
      v8 = (v7 | (4 * v6)) + 25;
      goto LABEL_20;
    }

    if (a4 == 10)
    {
      a1 += ((a2 >> 2) & 4 | (v5 >> 3)) + 17;
      return *a1;
    }

    return v4;
  }

  if (a4 <= 12)
  {
    if (a4 == 11)
    {
      a1 += ((a2 >> 3) & 1 | (2 * ((a3 >> 4) & 1)) | (a2 >> 2) & 4) + 9;
    }

    else
    {
      a1 += v6 + 5;
    }

    return *a1;
  }

  switch(a4)
  {
    case 13:
      v9 = v5 == 0;
      v8 = 3;
LABEL_16:
      if (!v9)
      {
        ++v8;
      }

      goto LABEL_20;
    case 15:
      return *a1;
    case 14:
      v9 = (a2 & 0x1F) == 0;
      v8 = 1;
      goto LABEL_16;
  }

  return v4;
}

uint64_t sub_277991BD0(uint64_t result, int a2)
{
  if (*(result + 395528) == 2)
  {
    v3 = result;
    result = sub_277991C5C(result, result + 529112, 0, a2, 0, 0, 0, 0, 0);
    *(v3 + 529152) = (a2 >> 3) + 15;
  }

  return result;
}

uint64_t sub_277991C5C(uint64_t result, uint64_t a2, unint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = result + 395132;
  v10 = (result + 270312);
  v11 = result + 245616;
  v12 = 120;
  if ((*(result + 245616) & 0xFD) != 0)
  {
    v12 = 1;
  }

  v13 = *(*v10 + 72);
  if (a4 >= 0xFF)
  {
    v14 = 255;
  }

  else
  {
    v14 = a4;
  }

  if (a4 < 0)
  {
    v14 = 0;
  }

  switch(v13)
  {
    case 8:
      v15 = &unk_277BFE1FA;
      goto LABEL_14;
    case 12:
      v15 = &unk_277BFE5FA;
      goto LABEL_14;
    case 10:
      v15 = &unk_277BFE3FA;
LABEL_14:
      v16 = v15[v14];
      goto LABEL_16;
  }

  v16 = -1;
LABEL_16:
  v17 = v12 * v16;
  v18 = *(result + 396600);
  v19 = *(result + 245676) * *(result + 245672);
  if ((*(result + 245616) & 0xFD) != 0)
  {
    v20 = (result + 643796);
    v22 = v19 <= 307200 || a5 == 0 || *(result + 644224) == 0;
    if (!v22 && *(result + 245632) >= 0x3Du)
    {
      v23 = *(result + 644232);
      v24 = *(result + 644236);
      if (v23 <= 2 * v24)
      {
        if (v23 > v24 && !*(result + 396456))
        {
          v17 += v17 >> 2;
        }
      }

      else
      {
        v17 = (5 * v17) >> 1;
      }
    }

    v29 = *(result + 272140);
    v30 = *(*result + 85780);
    result = v17 >> 1;
    if (v30)
    {
      v31 = v17 >> 1;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + v17;
    v33 = v32 >> 2;
    if (v29 <= 7)
    {
      v33 = 0;
    }

    v34 = v33 + v32;
    if (a6 >= 3 && v29 >= 11)
    {
      result = 32 * v34;
      if (*v9)
      {
        v34 *= 32;
      }
    }

    v35 = *(v11 + 616);
    v36 = v34 >> 1;
    *a2 = v34 >> 1;
    *(a2 + 8) = v34;
    v37 = v34 << v18;
    *(a2 + 24) = v37;
    if (v19 <= 921599)
    {
      if (v19 < 101377)
      {
        v38 = *(v9 + 1472);
        v39 = v38 & ~(v38 >> 31);
        if (a7 >= 3)
        {
          v39 = 0;
        }

        if (v38 <= 2)
        {
          v38 = v39;
        }

        v40 = (&unk_277BC0CBC + 8 * v38);
        v41 = v40[1];
        v42 = v41 - v35;
        if (v41 <= v35)
        {
          v46 = 5 * v34;
          v47 = v46 >> 1;
          v34 = v46 >> 4;
          v36 = 4 * v47;
          *(a2 + 8) = v34;
          *(a2 + 16) = 4 * v47;
          v37 = 32 * v47;
        }

        else
        {
          v43 = *v40;
          v44 = v35 - *v40;
          if (v35 >= v43)
          {
            result = v42;
            LODWORD(v48) = v41 - v43;
            if (v48 <= 1)
            {
              v48 = 1;
            }

            else
            {
              v48 = v48;
            }

            v49 = (((5 * v34) >> 1) * v44 + v34 * v42) / v48;
            v34 = v49 >> 3;
            v36 = (v49 * v44 + (v49 >> 1) * v42) / v48;
            *(a2 + 8) = v49 >> 3;
            *(a2 + 16) = v36;
            v37 = v49 * (32 * v44 + 8 * v42) / v48;
          }

          else
          {
            v37 = 8 * v34;
            v34 >>= 3;
            *(a2 + 8) = v34;
            *(a2 + 16) = v36;
          }
        }

        *(a2 + 24) = v37;
LABEL_76:
        v50 = *(v9 + 1324);
        if (v50 < 3)
        {
          if (v50 == 2)
          {
            v60 = 3 * v36;
            if (a6 >= 3)
            {
              v60 = v36;
            }

            *(a2 + 8) = v34 << (2 * (a6 < 3));
            *(a2 + 16) = v60;
            goto LABEL_119;
          }

          if (v50 < 1)
          {
            goto LABEL_119;
          }

          v65 = 1;
          if (a6 <= 2)
          {
            v65 = 2;
          }

          v66 = 0.0;
          if ((v35 - 145) >= 0xFFFFFFA6)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = 1.0;
          }

          v68 = 1.0 - v67;
          if (v35 <= 0x91)
          {
            v66 = v68;
          }

          if (v35 < 55)
          {
            v66 = 1.0;
          }

          *(a2 + 8) = (v66 * v34 + (1.0 - v66) * (2 * v34));
          *(a2 + 16) = (v66 * v36 + (1.0 - v66) * (2 * v36));
          v69 = (v66 * v37 + (1.0 - v66) * (v37 << v65));
        }

        else
        {
          v51 = 1.0;
          if (v35 >= 80)
          {
            v51 = 0.0;
            if (v35 <= 0x78)
            {
              v52 = 0.0;
              if ((v35 - 120) < 0xFFFFFFD8)
              {
                v52 = 1.0;
              }

              v51 = 1.0 - v52;
            }
          }

          if (v19 >= 307201)
          {
            v61 = vaddq_s64(*a2, *a2);
            v62 = vaddq_s64(*(a2 + 16), *(a2 + 16));
            *a2 = v61;
            *(a2 + 16) = v62;
            if ((a8 & 1) == 0 && (a6 != 4 || *(v9 + 4) >= 0xC351uLL))
            {
              *a2 = v61.i64[0] + (v61.i64[0] >> 1);
              *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
              if (v35 >= 101)
              {
                v63 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_s64(*(a2 + 8)), v51), vcvtq_f64_s64(vaddq_s64(*(a2 + 8), *(a2 + 8))), 1.0 - v51)));
                *&v64 = v63.i32[0];
                *(&v64 + 1) = v63.i32[1];
                *(a2 + 8) = v64;
              }
            }

            goto LABEL_119;
          }

          if (v19 < 101377)
          {
            *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
            v53 = 4;
            if (a6 < 3)
            {
              v53 = 5;
            }

            v54 = 1;
            if (!a8)
            {
              v54 = 2;
            }

            v55 = *(a2 + 8) << v54;
            v56 = 3;
            if (!a8)
            {
              v56 = v53;
            }

            v57 = v36 << v56;
            *(a2 + 8) = v55;
            *(a2 + 16) = v57;
            if (!*v20)
            {
              v72 = v20[2] <= 1;
              v59 = 40000;
              if (v20[2] <= 1)
              {
                v59 = 25000;
              }

              v58 = 50000;
              if (!v72)
              {
                v58 = 70000;
              }

              if (a8)
              {
                goto LABEL_119;
              }

              goto LABEL_128;
            }

            v58 = 50000;
            v59 = 25000;
            if ((a8 & 1) == 0)
            {
LABEL_128:
              if (a3 >= 0x61A9 && *(v9 + 4) < v59 && !a9 && v58 > a3)
              {
                v73 = (3 * v57) >> 2;
                *(a2 + 16) = v73;
                *(a2 + 24) = 8 * v73;
              }
            }

LABEL_119:
            if (v35 <= 127)
            {
              if (*(v9 + 544))
              {
                *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            return result;
          }

          if (v35 < 101 || (a8 & 1) != 0 || a6 == 4 && *(v9 + 4) < 0xC351uLL)
          {
            goto LABEL_119;
          }

          v70 = vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_s64(*(a2 + 8)), v51), vcvtq_f64_s64(vshlq_u64(*(a2 + 8), xmmword_277BB70D0)), 1.0 - v51)));
          *&v71 = v70.i32[0];
          *(&v71 + 1) = v70.i32[1];
          *(a2 + 8) = v71;
          v69 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *(a2 + 24) = v69;
        goto LABEL_119;
      }

      v36 = v34 + (v34 >> 2);
    }

    else
    {
      v37 *= 2;
      *(a2 + 24) = v37;
      if (v19 >> 10 > 0x7E8)
      {
        if (v10[421] == 1)
        {
          if (v19 >> 14 > 0xE0)
          {
            v45 = 7 * v34;
          }

          else
          {
            v45 = 5 * v34;
          }

          v36 = v45 >> 1;
        }

        else
        {
          v36 = 3 * v34;
          if (v29 >= 8)
          {
            v36 = 6 * v34;
          }
        }
      }

      else
      {
        v36 = 2 * v34;
      }
    }

    *(a2 + 16) = v36;
    goto LABEL_76;
  }

  v25 = *(result + 396552);
  if (v25)
  {
    if (*(result + 272208) == 2)
    {
      v26 = -7;
    }

    else
    {
      v26 = -8;
    }

    v17 <<= v26 + v18;
  }

  *a2 = v17;
  *(a2 + 8) = v17;
  v27 = v17 >> (2 * (v25 == 0));
  if (v19 < 921600)
  {
    v28 = v17 / 3;
  }

  else
  {
    v28 = v27;
  }

  if (v19 < 921600)
  {
    v27 = v17 >> 1;
  }

  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
  *(a2 + 32) = 4 * v17;
  return result;
}

void sub_277992240(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v649 = *MEMORY[0x277D85DE8];
  v536 = (a4 + 86592);
  v8 = a1 + 160948;
  v559 = a1 + 98778;
  v9 = a1 + 67578;
  v10 = a1 + 61404;
  v637[0] = 0;
  v637[1] = 0;
  sub_277AF62F8(v637, a1[61418], a1[61419], a1[61418], a1[61419]);
  if ((*v10 & 0xFD) != 0)
  {
    v11 = a1;
    if (*(*a1 + 51016))
    {
      v12 = *(*(v8 + 43) + 13176 * v8[1] + 13168) != 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = a4;
  }

  else
  {
    v12 = 1;
    v13 = a4;
    v11 = a1;
  }

  v14 = *v9;
  v540 = *(*v9 + 28);
  if (v540 == 12)
  {
    v15 = 12;
  }

  else
  {
    v15 = 15;
  }

  if (v559[395] && v559[4] && *(*v11 + 85780))
  {
    sub_277A536A0(v11, *(a2 + 4), *(a2 + 12), *(v10 + 71) + 8 * (a6 + v10[145] * a5), a5, a6, v15);
    *v536 = 1;
    return;
  }

  v16 = *(v11 + 529128);
  v638 = *(v11 + 529112);
  v639 = v16;
  v640 = *(v11 + 529144);
  v17 = *(**(v13 + 8280) + 167) & 7;
  v18 = *(v8 + 100);
  v557 = v11;
  if (v18 && *v8 == v8[2] - 1)
  {
    v19 = *(v18 + 8 * (a6 / (*(v14 + 32) >> (v540 == 15)) + a5 / (*(v14 + 32) >> (v540 == 15)) * (((*(v14 + 32) >> (v540 == 15)) + v10[134] - 1) / (*(v14 + 32) >> (v540 == 15)))));
  }

  else
  {
    v19 = 0;
  }

  v20 = (v13 + 153152);
  v534 = (v13 + 101280);
  v554 = v15;
  v560 = a3;
  v551 = *(**(v13 + 8280) + 167) & 7;
  if (*(v9 + 1016) == 3 && *(v11 + 264608) && (v17 - 1) <= 1)
  {
    v21 = v10[154];
    if (*(v11 + 4 * v17 + 264740))
    {
      v22 = v12;
      v24 = v21 + *(v11 + 16 * v17 + 264612);
      if (v24 >= 0xFF)
      {
        v25 = 255;
      }

      else
      {
        v25 = v21 + *(v11 + 16 * v17 + 264612);
      }

      if (v24 >= 0)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v22 = v12;
    }

    v23 = 1;
  }

  else
  {
    v22 = v12;
    v23 = 0;
    v21 = v10[154];
  }

  v26 = v10;
  v27 = v536[712];
  sub_277991C5C(v11, &v638, v19, v21, v536[715], v27, v536[713], v23, v536[714]);
  v28 = a4;
  v29 = *(a4 + 48);
  v30 = *(a4 + 72);
  v644[0] = 0;
  *v534 = 0u;
  v534[1] = 0u;
  v534[2] = 0u;
  v534[3] = 0u;
  v534[4] = 0u;
  v534[5] = 0u;
  *(v534 + 89) = 0u;
  v31 = v26;
  if ((*v26 & 0xFD) != 0)
  {
    v32 = v26[60];
    v33 = v559;
    if (v32 == -1 || (v34 = v557[v32 + 30754]) == 0)
    {
      LODWORD(v35) = 0;
      v22 = 1;
    }

    else if (*(v34 + 1272) == v26[15] && *(v34 + 1264) == v26[14])
    {
      LODWORD(v35) = 0;
    }

    else
    {
      v36 = *(v9 + 422);
      if (v36)
      {
        v37 = v36 == v34;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37;
      v22 |= v38;
      LODWORD(v35) = 1;
    }
  }

  else
  {
    LODWORD(v35) = 0;
    v33 = v559;
  }

  *v20 = -1;
  v558 = v31;
  v620 = v22;
  if (v33[318] && v27 >= 3)
  {
    v39 = sub_277A5D00C(*v557, a4 + 416, v29, v30, *(*v9 + 28), 0, (*(*(a4 + 8376) + 192) >> 3) & 1);
    v31 = v558;
    v33 = v559;
    v28 = a4;
    *v20 = v39;
  }

  v541 = v8;
  if ((v22 & 1) == 0)
  {
    if (*(*v9 + 77))
    {
      v41 = 1;
    }

    else
    {
      v41 = 3;
    }

    v42 = **(v28 + 8280);
    v552 = v9;
    if (v35)
    {
      v43 = *(v9 + 422);
      v44 = v31[60];
      if (v44 == -1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v557[v44 + 30754];
      }

      v48 = v43 == v45 || v43 == 0;
      v49 = v43 + 1248;
      if (v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }
    }

    else
    {
      v46 = v31[60];
      if (v46 == -1)
      {
        v47 = 0;
      }

      else
      {
        v47 = v557[v46 + 30754];
      }

      if (v47)
      {
        v50 = v47 + 1248;
      }

      else
      {
        v50 = 0;
      }
    }

    v51 = v33[68];
    v52 = (v51 & 1) != 0 || v8[2] > 1;
    if (*(*v557 + 85776) || v33[319])
    {
      v53 = 1;
    }

    else if (v33[320])
    {
      v53 = v33[323] == 1;
    }

    else
    {
      v53 = 0;
    }

    v54 = 0;
    v55 = v8[2];
    v634 = -1;
    if ((v51 & 8) != 0 && v55 == 1)
    {
      if (v536[712] == 0 && v52 || (v56 = v31[63], v56 == -1) || (v57 = v557[v56 + 30754]) == 0)
      {
        v54 = 0;
LABEL_86:
        v634 = -1;
        v55 = 1;
        goto LABEL_87;
      }

      if (*(v57 + 1272) == v31[15] && *(v57 + 1264) == v31[14])
      {
        v54 = v57 + 1248;
        v33 = v559;
        if (v57 + 1248 != v50)
        {
          v58 = &v557[2 * v56 + 30738];
LABEL_129:
          v615 = v54;
          sub_27798E424(v28 + 416, 0, v54, a5, a6, v58, v41);
          v77 = (*(*v557 + (v554 << 7) + 51440))(*(a4 + 48), *(a4 + 72), *(a4 + 480), *(a4 + 504));
          v54 = v615;
          v28 = a4;
          v634 = v77;
          v55 = v8[2];
          v31 = v558;
          v33 = v559;
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      v54 = 0;
      v76 = *(v552 + 425);
      v634 = -1;
      v55 = 1;
      v33 = v559;
      if (v76 && v76 != v557[v56 + 30754])
      {
        v54 = v76 + 1248;
        if (v76 + 1248 != v50)
        {
          v58 = 0;
          goto LABEL_129;
        }

        goto LABEL_86;
      }
    }

LABEL_87:
    if (v55 == 1 && v53 && (v33[68] & 0x40) != 0 && (v536[712] != 0 || !v52) && (v59 = v31[66], v59 != -1) && (v60 = v557[v59 + 30754]) != 0)
    {
      if (*(v60 + 1272) != v31[15] || *(v60 + 1264) != v31[14])
      {
        v61 = 0;
        v78 = *(v552 + 428);
        v64 = -1;
        v33 = v559;
        if (!v78)
        {
          goto LABEL_98;
        }

        if (v78 == v557[v59 + 30754])
        {
          goto LABEL_98;
        }

        v61 = v78 + 1248;
        if (v78 + 1248 == v50)
        {
          goto LABEL_98;
        }

        v630 = v35;
        v614 = v54;
        v63 = 0;
        v62 = v557;
        goto LABEL_135;
      }

      v61 = v60 + 1248;
      v33 = v559;
      if (v60 + 1248 != v50)
      {
        v630 = v35;
        v614 = v54;
        v62 = v557;
        v63 = &v557[2 * v59 + 30738];
LABEL_135:
        v35 = v61;
        sub_27798E424(v28 + 416, 0, v61, a5, a6, v63, v41);
        v64 = (*(*v62 + (v554 << 7) + 51440))(*(a4 + 48), *(a4 + 72), *(a4 + 480), *(a4 + 504));
        v61 = v35;
        v28 = a4;
        v31 = v558;
        v33 = v559;
        v54 = v614;
        LOBYTE(v35) = v630;
        goto LABEL_98;
      }
    }

    else
    {
      v61 = 0;
    }

    v64 = -1;
LABEL_98:
    v622 = v64;
    if (!v52)
    {
      v69 = -1;
      v9 = v552;
      goto LABEL_147;
    }

    v65 = v536[712];
    v631 = v35;
    if (v35)
    {
      v66 = v61;
      v67 = v54;
      v68 = 0;
    }

    else
    {
      v66 = v61;
      v67 = v54;
      v70 = v31[60];
      if (v70 == -1)
      {
        v68 = 0;
      }

      else
      {
        v68 = &v557[2 * v70 + 30738];
      }
    }

    v626 = v41;
    sub_27798E424(v28 + 416, 0, v50, a5, a6, v68, v41);
    v28 = a4;
    *(v42 + 16) = -255;
    v9 = v552;
    *v42 = *(*v552 + 28);
    *(v42 + 8) = 0;
    *(v42 + 20) = 196611;
    if (v65 <= 3 || v559[313] <= 2)
    {
      v72 = v559[313];
    }

    else
    {
      v72 = 2;
    }

    if ((v72 - 1) > 1 || (*(a4 + 8344) & 0x80000000) != 0 || (*(a4 + 8352) & 0x80000000) != 0 || *v20 < 0x65u || v65 < 3)
    {
      goto LABEL_139;
    }

    v73 = *(*v552 + 28);
    if (v552[421] == 1)
    {
      v643[0] = 0;
      v74 = sub_277B9F090(v557, a4, v73, a5, a6, word_277BC0CE4, v643, 0x60u, 0xC0u);
      v69 = v643[0];
      if (v74 < v643[0] >> 1)
      {
        v75 = *(*v552 + 28) == 15 ? 50000 : 20000;
        if (v74 < v75)
        {
          v20[2] = 1;
          v20[4] = *(v42 + 8);
          v69 = v74;
          v28 = a4;
          v33 = v559;
          goto LABEL_140;
        }
      }

      v20[2] = 0;
      *(v42 + 8) = 0;
    }

    else
    {
      v69 = sub_277B9F090(v557, a4, v73, a5, a6, word_277BC0CE4, v643, byte_277C3CAFE[v73] >> 1, byte_277C3CAE8[v73] >> 1);
    }

    v33 = v559;
    v28 = a4;
    if (v69 == -1)
    {
LABEL_139:
      v79 = (*(*v557 + (v554 << 7) + 51440))(*(v28 + 48), *(v28 + 72), *(v28 + 480), *(v28 + 504));
      v33 = v559;
      v28 = a4;
      v69 = v79;
    }

LABEL_140:
    v31 = v558;
    v61 = v66;
    if (v72 < 2)
    {
      v41 = v626;
      v54 = v67;
      LOBYTE(v35) = v631;
      goto LABEL_147;
    }

    v80 = v28 + 8288;
    v54 = v67;
    LOBYTE(v35) = v631;
    if ((*(v28 + 8288) & 1) == 0 && *(v28 + 8289) != 1 || (v81 = v536[712], v72 != 2) && v81 > 3)
    {
      v8 = v541;
      v41 = v626;
      goto LABEL_147;
    }

    v486 = v69;
    v487 = **(v28 + 8280);
    v489 = v81 <= 2 || v72 == 2;
    v488.i32[1] = *(v28 + 128740);
    v488.i32[0] = *(v28 + 128748);
    v490 = vmax_s32(vshl_n_s32(v488, 3uLL), vdup_n_s32(0xFFFFE008));
    v488.i32[0] = *(v28 + 128752);
    v488.i32[1] = *(v28 + 128744);
    v491 = vmin_s32(vmax_s32(v490, vmin_s32(vshl_n_s32(v488, 3uLL), vdup_n_s32(0x1FF8u))), 0x3F0000003FLL);
    v488.i32[0] = *(v487 + 8);
    v488.i32[1] = *(v487 + 10);
    v492 = vshr_n_u32(vadd_s32(vsub_s32(v488, vcgez_s32(v488)), 0x300000003), 3uLL);
    if (v489)
    {
      v493 = 8;
    }

    else
    {
      v493 = 7;
    }

    if (*(v28 + 8288))
    {
      v494 = *(v28 + 8304);
      if (*(v494 + 2) >= 0xDu && *(v494 + 16) == 1)
      {
        v495 = *(v494 + 8);
        v496.i32[0] = v495 << 16;
        v496.i32[1] = v495;
        v497 = vshr_n_s32(v496, 0x10uLL);
        v498 = vbsl_s8(vcgt_s32(v490, v497), v490, vmin_s32(v497, v491));
        v499 = vshr_n_u32(vadd_s32(vsra_n_s32(vbic_s8(0x100000001, vshr_n_u32(v498, 0xFuLL)), vshl_n_s32(v498, 0x10uLL), 0x10uLL), 0x300000003), 3uLL);
        v500 = vshr_n_s32(vshl_n_s32(v499, 0x10uLL), 0x10uLL);
        v501 = vabd_s32(vshr_n_s32(vshl_n_s32(v492, 0x10uLL), 0x10uLL), v500);
        if (vorr_s8(v501, vdup_lane_s32(v501, 1)).u32[0])
        {
          v502 = v54;
          v35 = v61;
          v606 = v491;
          v612 = v490;
          v600 = v499;
          v503 = (*(*v557 + (v554 << 7) + 51440))(*(v28 + 48), *(v28 + 72), *(v28 + 480) + v500.i32[1] + *(v28 + 504) * v500.i32[0]);
          v499 = v600;
          v491 = v606;
          v490 = v612;
          v69 = v486;
          v61 = v35;
          LOBYTE(v35) = v631;
          v54 = v502;
          v31 = v558;
          v33 = v559;
          v28 = a4;
          v504 = v503;
          goto LABEL_600;
        }
      }

      else
      {
        v499 = 0;
      }

      v504 = -1;
    }

    else
    {
      v499 = 0;
      v504 = -1;
    }

LABEL_600:
    if (*(v80 + 1) == 1)
    {
      v505 = *(v28 + 8296);
      v8 = v541;
      if (*(v505 + 2) >= 0xDu && *(v505 + 16) == 1)
      {
        v506 = *(v505 + 8);
        v507.i32[0] = v506 << 16;
        v507.i32[1] = v506;
        v508 = vshr_n_s32(v507, 0x10uLL);
        v509 = vbsl_s8(vcgt_s32(v490, v508), v490, vmin_s32(v508, v491));
        v510 = vshr_n_u32(vadd_s32(vsra_n_s32(vbic_s8(0x100000001, vshr_n_u32(v509, 0xFuLL)), vshl_n_s32(v509, 0x10uLL), 0x10uLL), 0x300000003), 3uLL);
        v511 = vshr_n_s32(vshl_n_s32(v510, 0x10uLL), 0x10uLL);
        v512 = vabd_s32(vshr_n_s32(vshl_n_s32(v492, 0x10uLL), 0x10uLL), v511);
        if (vorr_s8(v512, vdup_lane_s32(v512, 1)).u32[0])
        {
          v513 = vabd_s32(vshr_n_s32(vshl_n_s32(v499, 0x10uLL), 0x10uLL), v511);
          if (vorr_s8(v513, vdup_lane_s32(v513, 1)).u32[0])
          {
            v619 = v54;
            v35 = v61;
            v607 = v491;
            v613 = v490;
            v596 = v510;
            v601 = v499;
            v514 = (*(*v557 + (v554 << 7) + 51440))(*(v28 + 48), *(v28 + 72), *(v28 + 480) + v511.i32[1] + *(v28 + 504) * v511.i32[0]);
            v510 = v596;
            v499 = v601;
            v491 = v607;
            v490 = v613;
            v69 = v486;
            v61 = v35;
            LOBYTE(v35) = v631;
            v54 = v619;
            v31 = v558;
            v33 = v559;
            v28 = a4;
            goto LABEL_609;
          }
        }
      }

      else
      {
        v510 = 0;
      }

      v514 = -1;
    }

    else
    {
      v510 = 0;
      v514 = -1;
      v8 = v541;
    }

LABEL_609:
    v515 = (v493 * v69) >> 3;
    if (v504 < v515 && v504 < v514)
    {
      v516 = vshl_n_s32(v499, 3uLL);
      v517 = v491.i16[2];
      if (v516.i16[2] < v491.i32[1])
      {
        v517 = v516.i16[2];
      }

      v518 = vcgt_s32(v490, vshr_n_s32(vshl_n_s32(v516, 0x10uLL), 0x10uLL));
      if (v518.i8[4])
      {
        v517 = v490.i16[2];
      }

      *(v487 + 10) = v517;
      v519 = v491.i16[0];
      if (v516.i16[0] < v491.i32[0])
      {
        v519 = v516.i16[0];
      }

      if (v518.i8[0])
      {
        v519 = v490.i16[0];
      }

      *(v487 + 8) = v519;
      v515 = (v504 * v493) >> 3;
      v69 = v504;
    }

    if (v514 >= v515)
    {
      v9 = v552;
      v41 = v626;
    }

    else
    {
      v520 = v514 >= v504;
      v9 = v552;
      v41 = v626;
      if (!v520)
      {
        v521 = vshr_n_s32(vshl_n_s32(v510, 0x13uLL), 0x10uLL);
        v522 = v521.i16[2];
        if (v521.i32[1] >= v491.i32[1])
        {
          v522 = v491.i16[2];
        }

        v523 = vcgt_s32(v490, v521);
        if (v523.i8[4])
        {
          v522 = v490.i16[2];
        }

        *(v487 + 10) = v522;
        v524 = v521.i16[0];
        if (v521.i32[0] >= v491.i32[0])
        {
          v524 = v491.i16[0];
        }

        if (v523.i8[0])
        {
          v524 = v490.i16[0];
        }

        *(v487 + 8) = v524;
        v69 = v514;
      }
    }

LABEL_147:
    v82 = v69 * 0.9;
    if (v82 > v634)
    {
      v83 = v622;
      if (v82 <= v622)
      {
        if (v634 >= v622)
        {
LABEL_163:
          *(v28 + 94720) = v33[317];
          v532 = 1;
          v84 = v69;
          v548 = v69;
          goto LABEL_164;
        }
      }

      else if (v634 >= v622)
      {
        if (v622 >= v634)
        {
          goto LABEL_163;
        }

        goto LABEL_154;
      }

      v84 = v69;
      v87 = v31[63];
      if (v87 == -1)
      {
        v88 = 0;
      }

      else
      {
        v88 = &v557[2 * v87 + 30738];
      }

      sub_27798E424(v28 + 416, 0, v54, a5, a6, v88, v41);
      v83 = v622;
      v28 = a4;
      v532 = 4;
      *(v42 + 16) = 4;
      *(v42 + 8) = 0;
      *(a4 + 94720) = 0;
      v20[2] = 0;
      v548 = v634;
LABEL_164:
      if (*(v42 + 8))
      {
        if (v35)
        {
          v89 = v637;
          *(v28 + 8360) = v637;
        }

        else
        {
          v90 = *(v42 + 16);
          v91 = *(v42 + 17);
          if (v90 > 8)
          {
            goto LABEL_172;
          }

          if (v90 <= 1)
          {
            v90 = 1;
          }

          v92 = *(v557 + (v90 - 1) + 61464);
          if (v92 == -1)
          {
LABEL_172:
            v93 = 0;
          }

          else
          {
            v93 = &v557[2 * v92 + 30738];
          }

          *(v28 + 8360) = v93;
          if (v91 > 8)
          {
            goto LABEL_178;
          }

          if (v91 <= 1)
          {
            v91 = 1;
          }

          v94 = *(v557 + (v91 - 1) + 61464);
          if (v94 == -1)
          {
LABEL_178:
            v89 = 0;
          }

          else
          {
            v89 = &v557[2 * v94 + 30738];
          }
        }

        *(v28 + 8368) = v89;
        sub_2779CCAB4();
        v28 = a4;
        v83 = v622;
      }

      v562 = **(v28 + 8280);
      v583 = *(v562 + 8);
      v95 = 472;
      if (!v583)
      {
        v95 = 504;
      }

      v96 = 448;
      if (!v583)
      {
        v96 = 480;
      }

      v625 = *(v28 + v95);
      v629 = *(v28 + v96);
      v642[0] = 0;
      if (v9[271])
      {
LABEL_309:
        v40 = v548;
        goto LABEL_310;
      }

      v97 = v536[712];
      if (v9[421] == 1)
      {
        v616 = 6;
        v98 = v557;
        if (v559[4])
        {
          v99 = 1;
          v100 = 7;
LABEL_200:
          v102 = v558[60];
          if (v102 == -1)
          {
            v103 = 0;
          }

          else
          {
            v103 = v98[v102 + 30754];
          }

          if (v103)
          {
            v104 = v103 + 1248;
          }

          else
          {
            v104 = 0;
          }

          v550 = v104;
          v105 = v558[63];
          if (v105 == -1)
          {
            v106 = 0;
          }

          else
          {
            v106 = v98[v105 + 30754];
          }

          if (v106)
          {
            v107 = v106 + 1248;
          }

          else
          {
            v107 = 0;
          }

          v572 = v107;
          v108 = v558[66];
          if (v108 == -1)
          {
            v109 = 0;
          }

          else
          {
            v109 = v98[v108 + 30754];
          }

          v110 = 0;
          v111 = 0;
          v112 = 0;
          if (v109)
          {
            v113 = v109 + 1248;
          }

          else
          {
            v113 = 0;
          }

          v569 = v113;
          v114 = &v98[2 * v102 + 30738];
          v586 = v558[60];
          v578 = v114;
          if (v102 == -1)
          {
            v114 = 0;
          }

          v566 = v114;
          v608 = v28 + 432;
          v602 = v84 >> v99;
          v575 = v84 >> v100;
          v597 = v28 + 153120;
          v590 = v28 + 153124;
          v593 = v28 + 153122;
          v115 = 48;
          v116 = 1;
          while (1)
          {
            v117 = v110;
            v118 = v608 + 2608 * v116;
            v119 = *(v118 + 4);
            v120 = *(v118 + 8);
            v121 = byte_277C3BCDE[4 * v554 + 2 * v119 + v120];
            if (v121 != 255)
            {
              v122 = v28 + 136 * v116;
              if (v583)
              {
                v123 = (*(*v98 + (v121 << 7) + 51440))(*(v122 + 48), *(v122 + 72), *(v118 + 16), *(v118 + 40));
              }

              else if (*(v562 + 16) == 1)
              {
                v123 = (*(*v98 + (v121 << 7) + 51440))(*(v122 + 48), *(v122 + 72), *(v118 + 48), *(v118 + 72));
              }

              else
              {
                v124 = ***(v28 + 8280);
                v125 = *(v28 + 416);
                v126 = *(v28 + 420);
                v127 = (v125 & 1) == 0 || v120 == 0;
                v128 = (0x20005uLL >> v124) & 1;
                if (v127)
                {
                  LODWORD(v128) = 0;
                }

                v129 = v125 - v128;
                v130 = (v126 & 1) == 0 || v119 == 0;
                v131 = (0x10003uLL >> v124) & 1;
                if (v130)
                {
                  LODWORD(v131) = 0;
                }

                v132 = (4 * (v126 - v131)) >> v119;
                v133 = (4 * v129) >> v120;
                if (v586 == -1 || (v134 = *v578, *v578 == -1))
                {
                  v136 = v557;
                }

                else
                {
                  v135 = *(v566 + 4);
                  v136 = v557;
                  if (v135 != -1 && (v134 != 0x4000 || v135 != 0x4000))
                  {
                    v137 = 8 * v134 - 0x20000 + v134 * v132;
                    if (v137 < 0)
                    {
                      v138 = -((128 - v137) >> 8);
                    }

                    else
                    {
                      v138 = (v137 + 128) >> 8;
                    }

                    v132 = v138 >> 6;
                    v139 = 8 * v135 - 0x20000 + v135 * v133;
                    if (v139 < 0)
                    {
                      v140 = -((128 - v139) >> 8);
                    }

                    else
                    {
                      v140 = (v139 + 128) >> 8;
                    }

                    v133 = v140 >> 6;
                  }
                }

                v123 = (*(*v136 + (v121 << 7) + 51440))(*(v122 + 48), *(v122 + 72), *(v550 + v115) + *(v550 + 36) * v133 + v132, *(v550 + 36));
              }

              *&v641[4 * v116] = v123;
              v28 = a4;
              if (v634 != -1)
              {
                v141 = ***(a4 + 8280);
                v142 = *(v118 + 8);
                if (v142)
                {
                  v143 = (*(a4 + 416) & 1) == 0;
                }

                else
                {
                  v143 = 1;
                }

                v144 = (0x20005uLL >> v141) & 1;
                if (v143)
                {
                  LODWORD(v144) = 0;
                }

                if (*(v118 + 4))
                {
                  v145 = (*(a4 + 420) & 1) == 0;
                }

                else
                {
                  v145 = 1;
                }

                v146 = (0x10003uLL >> v141) & 1;
                if (v145)
                {
                  LODWORD(v146) = 0;
                }

                v147 = (4 * (*(a4 + 420) - v146)) >> *(v118 + 4);
                v148 = (4 * (*(a4 + 416) - v144)) >> v142;
                if (v586 == -1)
                {
                  v150 = v557;
                }

                else
                {
                  v149 = *v578;
                  v150 = v557;
                  if (*v578 != -1)
                  {
                    v151 = *(v566 + 4);
                    if (v151 != -1 && (v149 != 0x4000 || v151 != 0x4000))
                    {
                      v152 = 8 * v149 - 0x20000 + v149 * v147;
                      if (v152 < 0)
                      {
                        v153 = -((128 - v152) >> 8);
                      }

                      else
                      {
                        v153 = (v152 + 128) >> 8;
                      }

                      v147 = v153 >> 6;
                      v154 = 8 * v151 - 0x20000 + v151 * v148;
                      if (v154 < 0)
                      {
                        v155 = -((128 - v154) >> 8);
                      }

                      else
                      {
                        v155 = (v154 + 128) >> 8;
                      }

                      v148 = v155 >> 6;
                    }
                  }
                }

                v111 = (*(*v150 + (v121 << 7) + 51440))(*(v122 + 48), *(v122 + 72), *(v572 + v115) + *(v572 + 36) * v148 + v147);
                v28 = a4;
              }

              v83 = v622;
              if (v622 == -1)
              {
                v98 = v557;
              }

              else
              {
                v156 = ***(v28 + 8280);
                v157 = *(v118 + 8);
                if (v157)
                {
                  v158 = (*(v28 + 416) & 1) == 0;
                }

                else
                {
                  v158 = 1;
                }

                v159 = (0x20005uLL >> v156) & 1;
                if (v158)
                {
                  LODWORD(v159) = 0;
                }

                if (*(v118 + 4))
                {
                  v160 = (*(v28 + 420) & 1) == 0;
                }

                else
                {
                  v160 = 1;
                }

                v161 = (0x10003uLL >> v156) & 1;
                if (v160)
                {
                  LODWORD(v161) = 0;
                }

                v162 = (4 * (*(v28 + 420) - v161)) >> *(v118 + 4);
                v163 = (4 * (*(v28 + 416) - v159)) >> v157;
                if (v586 == -1)
                {
                  v165 = v557;
                }

                else
                {
                  v164 = *v578;
                  v165 = v557;
                  if (*v578 != -1)
                  {
                    v166 = *(v566 + 4);
                    if (v166 != -1 && (v164 != 0x4000 || v166 != 0x4000))
                    {
                      v167 = 8 * v164 - 0x20000 + v164 * v162;
                      if (v167 < 0)
                      {
                        v168 = -((128 - v167) >> 8);
                      }

                      else
                      {
                        v168 = (v167 + 128) >> 8;
                      }

                      v162 = v168 >> 6;
                      v169 = 8 * v166 - 0x20000 + v166 * v163;
                      if (v169 < 0)
                      {
                        v170 = -((128 - v169) >> 8);
                      }

                      else
                      {
                        v170 = (v169 + 128) >> 8;
                      }

                      v163 = v170 >> 6;
                    }
                  }
                }

                v171 = (*(*v165 + (v121 << 7) + 51440))(*(v122 + 48), *(v122 + 72), *(v569 + v115) + *(v569 + 36) * v163 + v162);
                v98 = v557;
                v112 = v171;
                v28 = a4;
                v83 = v622;
              }
            }

            v172 = v116 - 1;
            v173 = *(v642 + v116 - 1);
            if (v173 > v602)
            {
              break;
            }

            if (v173 >= v575)
            {
              v174 = v597;
              v175 = 2;
              goto LABEL_306;
            }

            *(v597 + v172) = 0;
LABEL_307:
            *(v593 + v172) = v111 > v634 / v616;
            *(v590 + v172) = v112 > v83 / v616;
            v110 = 1;
            v115 = 56;
            v116 = 2;
            if (v117)
            {
              v8 = v541;
              v9 = v552;
              goto LABEL_309;
            }
          }

          v174 = v597;
          v175 = 1;
LABEL_306:
          *(v174 + v172) = v175;
          goto LABEL_307;
        }
      }

      else
      {
        if (v558[15] * v558[14] <= 2073599)
        {
          v101 = 5;
        }

        else
        {
          v101 = 3;
        }

        v616 = v101;
        v98 = v557;
      }

      if (v97 < 3 || *v20 < 0x1F5u || v558[15] * v558[14] <= 230399)
      {
        v99 = 1;
        v100 = 3;
      }

      else
      {
        if (v97 == 3)
        {
          v100 = 4;
        }

        else
        {
          v100 = 5;
        }

        v99 = 2;
      }

      goto LABEL_200;
    }

    v83 = v622;
    if (v622 >= v634 || v82 <= v622)
    {
      goto LABEL_163;
    }

LABEL_154:
    v84 = v69;
    v85 = v31[66];
    if (v85 == -1)
    {
      v86 = 0;
    }

    else
    {
      v86 = &v557[2 * v85 + 30738];
    }

    sub_27798E424(v28 + 416, 0, v61, a5, a6, v86, v41);
    v83 = v622;
    v28 = a4;
    v532 = 7;
    *(v42 + 16) = 7;
    *(v42 + 8) = 0;
    *(a4 + 94720) = 0;
    v20[2] = 0;
    v548 = v622;
    goto LABEL_164;
  }

  v625 = 0;
  v629 = 0;
  v642[0] = 0;
  v40 = -1;
  v532 = 1;
LABEL_310:
  *v536 = 0;
  v176 = malloc_type_malloc(0x6FuLL, 0x5F484EBFuLL);
  if (!v176 || (v177 = (v176 + 23) & 0xFFFFFFFFFFFFFFF0, *(v177 - 8) = v176, !v177))
  {
    sub_2779F5C10(*(a4 + 11152), 2, "Failed to allocate vt");
    v177 = 0;
  }

  v178 = v559;
  v589 = v177;
  v594 = *(v560 + 154984);
  *(v177 + 80) = v594;
  v179 = a4;
  v180 = v620;
  if (v620)
  {
    goto LABEL_319;
  }

  v181 = v559[381];
  if (!v181)
  {
    goto LABEL_319;
  }

  if (v532 != 1)
  {
    goto LABEL_319;
  }

  if (*v559 < 31)
  {
    goto LABEL_319;
  }

  if (v551)
  {
    goto LABEL_319;
  }

  if (*(**(a4 + 8280) + 8))
  {
    goto LABEL_319;
  }

  v484 = v559[391];
  if (!v484)
  {
    goto LABEL_319;
  }

  v485 = v536[712];
  if (v484 < 3)
  {
    if (v484 == 2)
    {
      if (v485 >= 2)
      {
        goto LABEL_319;
      }
    }

    else if (v484 < 1 || v485)
    {
      goto LABEL_319;
    }

LABEL_634:
    v525 = *(*v9 + 28);
    if (byte_277C3F990[v525] + a6 <= *(a2 + 12))
    {
      v526 = v559[362] != 0;
      v527 = *(v557 + v554 + 161173) << v526;
      v528 = (3 * v527) >> 2 << v526;
      v529 = v528 >> 3;
      if (v181 != 1)
      {
        v529 = v528;
      }

      if (v485)
      {
        v528 = v529;
      }

      if (byte_277C36D60[v525] + a5 <= *(a2 + 4) && v527 > v40 && LODWORD(v642[0]) < v528 && HIDWORD(v642[0]) < v528)
      {
        if (v558[134] > a6 && v558[133] > a5)
        {
          v530 = byte_277C3F990[*(v558 + 560)];
          v531 = (*(v558 + 68) + 176 * (a6 / v530 + v558[139] * (a5 / v530)));
          *(*(v558 + 71) + 8 * (a6 + v558[145] * a5)) = v531;
          *v531 = v554;
        }

        *v536 = 1;
        v374 = v589;
        goto LABEL_577;
      }
    }

    v178 = v559;
    if (v181 >= 2 && !v485)
    {
      *v536 = 2;
    }

    goto LABEL_319;
  }

  if (v485 < 3)
  {
    goto LABEL_634;
  }

LABEL_319:
  if (v8[108])
  {
    v182 = v8[110];
    v183 = v8[111];
    v185 = v182 > 2 * v183 || v182 > v183;
    v535 = v185;
  }

  else
  {
    v535 = 0;
  }

  v561 = 0;
  if (v540 == 12)
  {
    v186 = 64;
  }

  else
  {
    v186 = 128;
  }

  v187 = ((*(a4 + 8344) >> 31) & (*(a4 + 8344) >> 3)) + v186;
  v188 = ((*(a4 + 8352) >> 31) & (*(a4 + 8352) >> 3)) + v186;
  v189 = 0;
  if (v620 & 1 | (v178[375] == 0))
  {
    v190 = 0;
  }

  else
  {
    v190 = 4;
  }

  v191 = v187 - v190;
  v192 = v188 - v190;
  v567 = *(&v639 + 1);
  v193 = 248;
  v194 = 320;
  v195 = v594;
  v570 = v188;
  do
  {
    v196 = 0;
    v197 = v561;
    v545 = (v561 & 1) << 6;
    v198 = 32 * v561;
    v544 = 4 * v561++;
    v644[v561] = 0;
    v199 = 0;
    v539 = v189;
    v563 = &v644[4 * v197 + 5];
    v542 = v198 & 0x7FFFFFC0;
    v543 = v189 & 0xFFFFFFC0;
    v584 = &v642[2 * v197 + 9];
    v587 = &v643[4 * v197];
    v200 = v194;
    v201 = v193;
    v579 = v197;
    v581 = &v642[2 * v197 + 1];
    v573 = v194;
    v576 = v193;
    do
    {
      v202 = 0;
      v203 = 0;
      v549 = v199;
      v563[v196] = 0;
      *(v587 + v196) = 0;
      v617 = (32 * (v196 & 1)) | v545;
      v609 = (16 * v196) & 0x20 | v542;
      *(v584 + v196) = 0;
      *(v581 + v196) = 0x7FFFFFFF;
      v591 = v196;
      v555 = v543 + (v199 & 0xFFFFFFE0);
      v546 = v201;
      v547 = v200;
      v204 = v200;
      v205 = v201;
      v623 = &v644[4 * v196 + 21 + 4 * v544];
      v553 = v545 + 32 * (v196 & 1);
      do
      {
        v206 = v617 | (16 * (v203 & 1));
        v207 = v609 | (8 * v203) & 0x10;
        v623[v203] = 0;
        v635 = v205;
        if (v180)
        {
          v208 = v203;
          v209 = 0;
          v210 = *(*(v179 + 8376) + 192);
          v211 = v204;
          do
          {
            v212 = 0;
            v213 = 0;
            v214 = v204;
            do
            {
              v215 = (8 * (v209 & 1)) | v206 | v212 & 4;
              v216 = (4 * v209) & 8 | v213 & 4 | v207;
              if (v215 < v191 && v216 < v192)
              {
                v220 = (v29 + v216 * v30 + v215);
                if ((v210 & 8) != 0)
                {
                  v224 = vaddlv_u16(vadd_s16(vadd_s16(vadd_s16(*(2 * v220 + 2 * v30), *(2 * v220)), *(2 * v220 + 2 * v30 + 2 * v30)), *(2 * v220 + 2 * v30 + 2 * v30 + 2 * v30)));
                }

                else
                {
                  v221.i32[0] = *v220;
                  v221.i32[1] = *(v220 + v30);
                  v222 = (v220 + 2 * v30);
                  v223.i32[0] = *v222;
                  v223.i32[1] = *(v222 + v30);
                  v224 = vaddlvq_u16(vaddl_u8(v223, v221));
                }

                v219 = ((v224 + 8) >> 4) - 128;
                v218 = v219 * v219;
              }

              else
              {
                v218 = 0;
                v219 = 0;
              }

              v225 = (v195 + v214);
              *v225 = v218;
              v225[1] = v219;
              v225[2] = 0;
              v213 += 2;
              v212 += 4;
              v214 += 144;
            }

            while (v213 != 8);
            ++v209;
            v204 += 656;
          }

          while (v209 != 4);
          v203 = v208;
          v226 = v211;
        }

        else
        {
          v598 = v204;
          v603 = v202;
          if ((*(*(v179 + 8376) + 192) & 8) != 0)
          {
            v232 = 0;
            v233 = 0;
            v234 = (v195 + v205);
            do
            {
              v235 = v232 & 8 | v206;
              v236 = v233 & 8 | v207;
              if (v235 < v187 && v236 < v188)
              {
                v240 = (2 * (v29 + v236 * v30 + v235));
                v241 = *v240;
                v242 = (v240 + 2 * v30);
                v243 = *v242;
                v244 = (v242 + 2 * v30);
                v245 = *v244;
                v246 = (v244 + 2 * v30);
                LODWORD(v246) = (vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v243, v241), v245), *v246), *(v246 + 2 * v30)), *(v246 + 2 * v30 + 2 * v30)), *(v246 + 2 * v30 + 2 * v30 + 2 * v30)), *(v246 + 2 * v30 + 2 * v30 + 2 * v30 + 2 * v30))) + 32) >> 6;
                v247 = (2 * (v629 + v236 * v625 + v235));
                v248 = *v247;
                v249 = (v247 + 2 * v625);
                v250 = *v249;
                v251 = (v249 + 2 * v625);
                v252 = *v251;
                v253 = (v251 + 2 * v625);
                v254 = *v253;
                v255 = (v253 + 2 * v625);
                v238 = v246 - ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v250, v248), v252), v254), *v255), *(v255 + 2 * v625)), *(v255 + 2 * v625 + 2 * v625)), *(v255 + 2 * v625 + 2 * v625 + 2 * v625))) + 32) >> 6);
                v239 = v238 * v238;
              }

              else
              {
                v238 = 0;
                v239 = 0;
              }

              *(v234 - 2) = v239;
              *(v234 - 1) = v238;
              *v234 = 0;
              v233 += 4;
              v232 += 8;
              v234 += 164;
            }

            while (v233 != 16);
            v256 = v179;
            v257 = v594;
          }

          else
          {
            v227 = 0;
            v228 = 0;
            v648 = 0uLL;
            v647 = 0uLL;
            v229 = 1;
            do
            {
              if ((v228 & 8 | v206) >= v187 || (v227 & 8 | v207) >= v188)
              {
                v229 = 0;
              }

              v228 += 8;
              v227 += 4;
            }

            while (v228 != 32);
            v595 = v203;
            v231 = v589;
            if (v229)
            {
              sub_277B31FC8(v29, v30, v206, v207, &v646);
              sub_277B31FC8(v629, v625, v206, v207, &v645);
              v231 = v589;
              v647 = vsubq_s32(v646, v645);
              v648 = vmulq_s32(v647, v647);
            }

            else
            {
              v258 = 0;
              for (i = 0; i != 4; ++i)
              {
                v260 = (8 * (i & 1)) | v206;
                if (v260 < v187)
                {
                  v261 = (4 * i) & 8 | v207;
                  if (v261 < v188)
                  {
                    v262 = v555 + (v202 & 0xFFFFFFF0) + (v258 & 0xFFFFFFF8);
                    v263 = v553 + 16 * (v203 & 1) + 8 * (i & 1);
                    v264 = (v629 + 2 * v625 + v263 + (v625 * v262));
                    v265 = (v29 + 2 * v30 + v263 + (v30 * v262));
                    v266 = (v29 + v261 * v30 + v260);
                    v267 = vaddl_u8(*(v266 + v30), *v266);
                    v268 = 6;
                    do
                    {
                      v267 = vaddw_u8(v267, *v265);
                      v265 = (v265 + v30);
                      --v268;
                    }

                    while (v268);
                    v269 = vaddlvq_u16(v267) + 32;
                    v270 = (v629 + v261 * v625 + v260);
                    v271 = vaddl_u8(*(v270 + v625), *v270);
                    v272 = 6;
                    do
                    {
                      v271 = vaddw_u8(v271, *v264);
                      v264 = (v264 + v625);
                      --v272;
                    }

                    while (v272);
                    v273 = (v269 >> 6) - ((vaddlvq_u16(v271) + 32) >> 6);
                    v647.i32[i] = v273;
                    v648.i32[i] = v273 * v273;
                  }
                }

                v258 += 4;
              }
            }

            v274 = 0;
            v275 = v195 + v205;
            do
            {
              v276 = v647.u32[v274];
              *(v275 - 8) = v648.i32[v274];
              *(v275 - 4) = v276;
              ++v274;
              v275 += 656;
            }

            while (v274 != 4);
            v257 = v231[10];
            v256 = a4;
            v203 = v595;
          }

          v277 = (v195 + 43664 * v579 + 10896 * v591 + 2704 * v203);
          v278 = v277[224];
          v279 = v277[60];
          v280 = v277[61];
          v281 = v277[225];
          v282 = v277[62];
          v277[44] = v278 + v279;
          v277[45] = v281 + v280;
          v277[46] = v282 + 1;
          v283 = v277[388];
          v284 = v277[552];
          v285 = v277[389];
          v286 = v277[553];
          v287 = v277[390] + 1;
          v277[48] = v284 + v283;
          v277[49] = v286 + v285;
          v277[50] = v287;
          v288 = v283 + v279;
          v289 = v285 + v280;
          v277[52] = v288;
          v277[53] = v289;
          v277[54] = v282 + 1;
          v290 = v284 + v278;
          v291 = v286 + v281;
          v292 = v277[226] + 1;
          v277[56] = v290;
          v277[57] = v291;
          v277[58] = v292;
          v277[40] = v290 + v288;
          v277[41] = v291 + v289;
          v277[42] = v282 + 2;
          v293 = (v257 + 43664 * v579 + 10896 * v591 + 2704 * v203);
          v294 = (v293[40] - ((v293[41] * v293[41]) >> v293[42])) << 8 >> v293[42];
          v293[43] = v294;
          *(v587 + v591) += v294;
          v295 = *(v581 + v591);
          if (v295 >= v294)
          {
            v295 = v294;
          }

          *(v581 + v591) = v295;
          v296 = *(v584 + v591);
          if (v296 <= v294)
          {
            v296 = v294;
          }

          *(v584 + v591) = v296;
          v594 = v257;
          if (v567 >= v294)
          {
            v195 = v257;
          }

          else
          {
            v623[v203] = 1;
            v563[v591] = 1;
            v195 = v257;
            v644[v561] = 1;
            v644[0] = 1;
          }

          v188 = v570;
          v194 = v573;
          v193 = v576;
          v179 = v256;
          v180 = v620;
          v202 = v603;
          v226 = v598;
        }

        ++v203;
        v205 = v635 + 2704;
        v202 += 8;
        v204 = v226 + 2704;
      }

      while (v203 != 4);
      v196 = v591 + 1;
      v201 = v546 + 10896;
      v199 = v549 + 16;
      v200 = v547 + 10896;
    }

    while (v591 != 3);
    if (v540 == 12)
    {
      break;
    }

    v193 += 43664;
    v189 = v539 + 32;
    v194 += 43664;
  }

  while (v579 < 3);
  v297 = 0;
  v568 = 0;
  v571 = 0;
  v298 = 4;
  if (v540 == 12)
  {
    v298 = 1;
  }

  v574 = v298;
  v636 = *(&v639 + 1);
  v632 = 4 * *(&v639 + 1);
  v299 = v644[0];
  v300 = v594 + 464;
  v301 = v594 + 252;
  v564 = 0x7FFFFFFF;
  do
  {
    v599 = 0;
    v302 = 0;
    v303 = v297;
    v618 = 4 * v297;
    v610 = 4 * v297++ + 5;
    v592 = 0x7FFFFFFF;
    v588 = &v642[2 * v303 + 9];
    v304 = v594;
    v604 = v594 + 43664 * v303;
    v577 = v301;
    v580 = v300;
    v305 = v301;
    v624 = v303;
    v582 = &v643[4 * v303];
    v585 = &v642[2 * v303 + 1];
    do
    {
      v594 = v304;
      v306 = 0;
      v307 = v610 + v302;
      v627 = v305;
      v308 = v305;
      v309 = v300;
      do
      {
        if (v180)
        {
          v310 = (v604 + 10896 * v302 + 2704 * v306);
          v311 = v309;
          v312 = 4;
          do
          {
            v313 = *v311;
            v314 = *(v311 - 36);
            v315 = *(v311 - 35);
            v316 = *v311 + v314;
            v317 = *(v311 - 34);
            *(v311 - 50) = v317 + 1;
            v318 = v311[72];
            v319 = v311[36];
            v320 = v311[37];
            v321 = v311[73];
            v322 = v311[38] + 1;
            *(v311 - 48) = v318 + v319;
            *(v311 - 47) = v321 + v320;
            *(v311 - 46) = v322;
            *(v311 - 44) = v319 + v314;
            *(v311 - 43) = v320 + v315;
            *(v311 - 42) = v317 + 1;
            v323 = v318 + v313;
            *(v311 - 40) = v323;
            v324 = vadd_s32(*(v311 + 1), (v321 | 0x100000000));
            v325 = *(v311 + 1) + v315;
            *(v311 - 52) = v316;
            *(v311 - 51) = v325;
            *(v311 - 39) = v324;
            *(v311 - 56) = v323 + v319 + v314;
            *(v311 - 55) = v324.i32[0] + v320 + v315;
            *(v311 - 54) = v317 + 2;
            v311 += 164;
            --v312;
          }

          while (v312);
          v326 = v310[224];
          v327 = v310[60];
          v328 = v310[61];
          v329 = v310[225];
          v330 = v310[62];
          v310[44] = v326 + v327;
          v310[45] = v329 + v328;
          v310[46] = v330 + 1;
          v331 = v310[388];
          v332 = v310[552];
          v333 = v310[389];
          v334 = v310[553];
          v335 = v310[390] + 1;
          v310[48] = v332 + v331;
          v310[49] = v334 + v333;
          v310[50] = v335;
          v336 = v333 + v328;
          v310[52] = v331 + v327;
          v310[53] = v333 + v328;
          v310[54] = v330 + 1;
          v337 = v332 + v326;
          v338 = v310[226] + 1;
          v310[56] = v337;
          v310[57] = v334 + v329;
          v310[58] = v338;
          v339 = v337 + v331 + v327;
          v310[40] = v339;
          v310[41] = v334 + v329 + v336;
          v340 = (v339 - (((v334 + v329 + v336) * (v334 + v329 + v336)) >> (v330 + 2))) << 8 >> (v330 + 2);
          v310[42] = v330 + 2;
          v310[43] = v340;
          v180 = v620;
          if (v636 < v340)
          {
            v299 = 1;
            v341 = 1;
            if (*(v559 + 1544) == 1)
            {
              v342 = 0;
              v343 = 0x7FFFFFFF;
              v344 = v308;
              v345 = 4;
              do
              {
                v346 = (*(v344 - 3) - ((*(v344 - 2) * *(v344 - 2)) >> *(v344 - 1))) << 8 >> *(v344 - 1);
                *v344 = v346;
                if (v346 > v342)
                {
                  v342 = v346;
                }

                if (v346 < v343)
                {
                  v343 = v346;
                }

                v344 += 164;
                --v345;
              }

              while (v345);
              if (v632 < v342 - v343)
              {
                v341 = 1;
              }

              else
              {
                v341 = 2;
              }
            }

            v644[4 * v302 + 21 + 4 * v618 + v306] = v341;
            v644[v307] = 1;
            v644[v297] = 1;
          }
        }

        ++v306;
        v309 += 676;
        v308 += 676;
      }

      while (v306 != 4);
      v347 = (v304 + 43664 * v624 + 10896 * v302);
      v348 = v347[716];
      v349 = v347[40];
      v350 = v347[41];
      v351 = v347[717];
      v352 = v347[42];
      v347[24] = v348 + v349;
      v347[25] = v351 + v350;
      v347[26] = v352 + 1;
      v353 = v347[1392];
      v354 = v347[2068];
      v355 = v347[1393];
      v356 = v347[2069];
      v357 = v347[1394] + 1;
      v347[28] = v354 + v353;
      v347[29] = v356 + v355;
      v347[30] = v357;
      v358 = v353 + v349;
      v359 = v355 + v350;
      v347[32] = v358;
      v347[33] = v359;
      v347[34] = v352 + 1;
      v360 = v354 + v348;
      v361 = v360 + v358;
      v347[20] = v360 + v358;
      v362 = v347 + 20;
      v363 = v362[698] + 1;
      v362[16] = v360;
      v362[17] = v356 + v351;
      v362[18] = v363;
      v364 = v356 + v351 + v359;
      v362[1] = v364;
      v362[2] = v352 + 2;
      v365 = v558[14];
      v366 = v558[15];
      if (v541[3] <= 2)
      {
        v367 = 20000;
      }

      else
      {
        v367 = 20000;
        if (!v541[1])
        {
          v367 = 40000;
        }
      }

      v180 = v620;
      if (!v644[v307])
      {
        v368 = (v361 - ((v364 * v364) >> (v352 + 2))) << 8 >> (v352 + 2);
        v362[3] = v368;
        v369 = v599;
        if (v368 > v599)
        {
          v369 = (v361 - ((v364 * v364) >> (v352 + 2))) << 8 >> (v352 + 2);
        }

        v599 = v369;
        v370 = v592;
        if (v368 < v592)
        {
          v370 = (v361 - ((v364 * v364) >> (v352 + 2))) << 8 >> (v352 + 2);
        }

        v592 = v370;
        if (v639 < v368 || (v620 & 1) == 0 && ((v371 = *(v588 + v302), v372 = *(v585 + v302), v639 >> 1 < v368) && v368 > v582[v302] >> 1 || v366 * v365 <= 230400 && (v639 >> 1 < v371 - v372 && v639 < v371 || v559[336] && v536[712] >= 3u && *(v559 + 5) < v367 && v639 >> 4 < v371 && v371 > 4 * v372)))
        {
          v299 = 1;
          v644[v307] = 1;
          v644[v297] = 1;
        }
      }

      ++v302;
      v300 += 10896;
      v305 = v627 + 2724;
    }

    while (v302 != 4);
    if (v644[v297])
    {
      v373 = a4;
      v374 = v589;
      v375 = v580;
      goto LABEL_462;
    }

    v376 = (v304 + 43664 * v624);
    v377 = v376[11].i32[0];
    v376[3].i32[0] = v377 + 1;
    v378 = v376[2735].i32[0] + 1;
    v379 = v376[2734];
    v380 = v376[4096];
    v376[4] = vadd_s32(v380, v379);
    v376[5].i32[0] = v378;
    v381 = v376[10];
    v382 = vadd_s32(v379, v381);
    v376[6] = v382;
    v376[7].i32[0] = v377 + 1;
    v383 = v376[1373].i32[0] + 1;
    v384 = v376[1372];
    v376[2] = vadd_s32(v384, v381);
    v385 = vadd_s32(v380, v384);
    v376[8] = v385;
    v376[9].i32[0] = v383;
    v386 = vadd_s32(v385, v382);
    v387 = v377 + 2;
    *v376 = v386;
    v388 = (v386.i32[0] - ((v386.i32[1] * v386.i32[1]) >> (v377 + 2))) << 8 >> (v377 + 2);
    v376[1].i32[0] = v387;
    v376[1].i32[1] = v388;
    v389 = v571;
    if (v388 > v571)
    {
      v389 = v388;
    }

    v571 = v389;
    v390 = v564;
    if (v388 < v564)
    {
      v390 = v388;
    }

    v564 = v390;
    v373 = a4;
    v374 = v589;
    v375 = v580;
    if (v535 || *(*v557 + 51016))
    {
      v391 = 0;
      if ((v620 & 1) == 0)
      {
        goto LABEL_453;
      }
    }

    else
    {
      v391 = v559[336] == 0;
      if ((v620 & 1) == 0)
      {
LABEL_453:
        v393 = 3 * (*(&v638 + 1) >> 3) >= v599 - v592 || *(&v638 + 1) >> 1 >= v599;
        if (!v393 && !v391)
        {
          v299 = 1;
          v644[v297] = 1;
        }
      }
    }

    v568 += v388;
LABEL_462:
    if (v540 == 12)
    {
      v299 = 1;
    }

    v300 = v375 + 43664;
    v301 = v577 + 43664;
  }

  while (v297 != v574);
  v644[0] = v299;
  if (!v299)
  {
    v394 = vdupq_n_s64(v304);
    v395 = vaddq_s64(v394, xmmword_277BB70E0);
    v396 = vaddq_s64(v394, xmmword_277BB70F0);
    v397 = *(v395.i64[0] + 8) + 1;
    v374[2] = vadd_s32(*v395.i64[1], *v395.i64[0]);
    v374[3].i32[0] = v397;
    v398 = *(v396.i64[0] + 8) + 1;
    v374[4] = vadd_s32(*v396.i64[1], *v396.i64[0]);
    v374[5].i32[0] = v398;
    v399 = *(v395.i64[0] + 8);
    v374[7].i32[0] = v399 + 1;
    v374[9].i32[0] = *(v395.i64[1] + 8) + 1;
    v399 += 2;
    *v395.i8 = vadd_s32(*v396.i64[0], *v395.i64[0]);
    v374[6] = *v395.i8;
    *v396.i8 = vadd_s32(*v396.i64[1], *v395.i64[1]);
    v374[8] = *v396.i8;
    *v395.i8 = vadd_s32(*v396.i8, *v395.i8);
    *v374 = *v395.i8;
    v400 = (v395.i32[0] - ((v395.i32[1] * v395.i32[1]) >> v399)) << 8 >> v399;
    v374[1].i32[0] = v399;
    v374[1].i32[1] = v400;
    v299 = (v620 & 1) == 0 && (3 * (v638 >> 3) < v571 - v564 && v638 >> 1 < v571 || v400 > (9 * v568) >> 5);
  }

  v403 = v557;
  if (a6 + 32 > *(a2 + 12) || a5 + 32 > *(a2 + 4) || (v404 = sub_2779953CC(v557, v373 + 416, a2, v374, 0xFu, a5, a6, v638, 6u, v299), v374 = v589, v403 = v557, v373 = a4, !v404))
  {
    v405 = 0;
    v605 = *(&v638 + 1);
    v621 = v639;
    do
    {
      v611 = v405 + 1;
      v633 = a5 + 16 * (v405 >> 1);
      v628 = 16 * (v405 & 1) + a6;
      v406 = sub_2779953CC(v403, v373 + 416, a2, (*&v374[10] + 43664 * v405), 0xCu, v633, v628, v605, 6u, v644[v405 + 1]);
      v374 = v589;
      v403 = v557;
      v373 = a4;
      if (!v406)
      {
        for (j = 0; j != 4; ++j)
        {
          v408 = ((4 * j) & 8) + v633;
          v409 = 8 * (j & 1) + v628;
          v410 = sub_2779953CC(v403, v373 + 416, a2, (*&v374[10] + 43664 * v405 + 10896 * j + 80), 9u, v408, v409, v621, 6u, v644[4 * v405 + 5 + j]);
          v374 = v589;
          v403 = v557;
          v373 = a4;
          if (!v410)
          {
            v411 = 0;
            do
            {
              if (!sub_2779953CC(v403, v373 + 416, a2, (*&v374[10] + 43664 * v405 + 10896 * j + 2704 * v411 + 160), 6u, ((2 * v411) & 4) + v408, 4 * (v411 & 1) + v409, v636, 3u, v644[16 * v405 + 21 + 4 * j + v411]))
              {
                v412 = 0;
                v413 = 0;
                v414 = v558[134];
                do
                {
                  v415 = (v412 & 2) + 4 * (v411 & 1) + v409;
                  if (v414 > v415)
                  {
                    v416 = (v413 & 2) + ((2 * v411) & 4) + v408;
                    if (v558[133] > v416)
                    {
                      v417 = v415 + v558[145] * v416;
                      v418 = byte_277C3F990[*(v558 + 560)];
                      v419 = (*(v558 + 68) + 176 * (v415 / v418 + v558[139] * (v416 / v418)));
                      *(*(v558 + 71) + 8 * v417) = v419;
                      *v419 = 3;
                    }
                  }

                  ++v413;
                  v412 += 2;
                }

                while (v413 != 4);
              }

              ++v411;
              v373 = a4;
              v403 = v557;
              v374 = v589;
            }

            while (v411 != 4);
          }
        }
      }

      ++v405;
    }

    while (v611 != v574);
  }

  if (v533 != 1 || !v559[325])
  {
LABEL_576:
    if (v374)
    {
      goto LABEL_577;
    }

    return;
  }

  if (v540 != 12)
  {
    v427 = ***(v373 + 8280);
    switch(v427)
    {
      case 15:
        v432 = v374[1].i32[1];
        goto LABEL_535;
      case 14:
        v451 = 0;
        v452 = v638 >> 2;
        v453 = 1;
        do
        {
          v454 = v453;
          if (v452 > v374[2 * v451 + 3].i32[1])
          {
            *(v534 + v451 + 1) = 1;
          }

          v453 = 0;
          v451 = 1;
        }

        while ((v454 & 1) != 0);
        goto LABEL_577;
      case 13:
        v428 = 0;
        v429 = v638 >> 2;
        v430 = 1;
        do
        {
          v431 = v430;
          if (v429 > v374[2 * v428 + 7].i32[1])
          {
            *(v534 + v428 + 3) = 1;
          }

          v430 = 0;
          v428 = 1;
        }

        while ((v431 & 1) != 0);
        goto LABEL_577;
    }

    v455 = 0;
    v456 = (5 * *(&v638 + 1)) >> 4;
    v457 = (5 * *(&v638 + 1)) >> 3;
    v458 = (5 * v639) >> 3;
    v459 = v373 + 101321;
    v460 = 172;
    do
    {
      v461 = (&unk_277BC0CE8 + 8 * v455);
      v462 = v461[1];
      v463 = *v461 + a5;
      v464 = v462 + a6;
      v465 = v462 + a6 + v463 * v558[145];
      v466 = *(*(v558 + 71) + 8 * v465);
      if (v466 && v558[134] > v464 && v558[133] > v463)
      {
        v467 = *v466;
        switch(v467)
        {
          case 12:
            if (v457 > *(*&v589[10] + 43664 * v455 + 12))
            {
              *(v534 + v455 + 5) = 1;
            }

            break;
          case 11:
            v471 = 0;
            v472 = 1;
            do
            {
              v473 = v472;
              if (v456 > *(*&v589[10] + 43664 * v455 + 16 * v471 + 28))
              {
                *(v534 + 2 * v455 + v471 + 9) = 1;
              }

              v472 = 0;
              v471 = 1;
            }

            while ((v473 & 1) != 0);
            break;
          case 10:
            v468 = 0;
            v469 = 1;
            do
            {
              v470 = v469;
              if (v456 > *(*&v589[10] + 43664 * v455 + 16 * v468 + 60))
              {
                *(v534 + 2 * v455 + v468 + 17) = 1;
              }

              v469 = 0;
              v468 = 1;
            }

            while ((v470 & 1) != 0);
            break;
          default:
            v474 = 0;
            v475 = v460;
            v476 = v459;
            do
            {
              v477 = (&unk_277BC0D08 + 8 * v474);
              v478 = *v477;
              v479 = v477[1];
              v480 = *(*(v558 + 71) + 8 * v465 + 8 * (v479 + v478 * v558[145]));
              if (v480 && v558[134] > v479 + v464 && v558[133] > v478 + v463)
              {
                v481 = *v480;
                if ((v481 - 6) >= 3)
                {
                  if (v481 == 9 && v458 > *(*&v589[10] + 43664 * v455 + 10896 * v474 + 92))
                  {
                    *(v534 + 4 * v455 + v474 + 25) = 1;
                  }
                }

                else
                {
                  v482 = 0;
                  v483 = v475;
                  do
                  {
                    if (v636 >> 8 > *(*&v589[10] + v483))
                    {
                      *(v476 + v482) = 1;
                    }

                    ++v482;
                    v483 += 2704;
                  }

                  while (v482 != 4);
                }
              }

              ++v474;
              v476 += 4;
              v475 += 10896;
            }

            while (v474 != 4);
            break;
        }
      }

      ++v455;
      v459 += 16;
      v460 += 43664;
      v374 = v589;
    }

    while (v455 != 4);
    goto LABEL_576;
  }

  v420 = v374[10];
  v421 = ***(v373 + 8280);
  if (v421 != 12)
  {
    if (v421 == 11)
    {
      v433 = 0;
      v434 = *&v420 + 16;
      v435 = v638 >> 2;
      v436 = 1;
      do
      {
        v437 = v436;
        if (v435 > *(v434 + 16 * v433 + 12))
        {
          *(v534 + v433 + 1) = 1;
        }

        v436 = 0;
        v433 = 1;
      }

      while ((v437 & 1) != 0);
    }

    else if (v421 == 10)
    {
      v422 = 0;
      v423 = *&v420 + 48;
      v424 = v638 >> 2;
      v425 = 1;
      do
      {
        v426 = v425;
        if (v424 > *(v423 + 16 * v422 + 12))
        {
          *(v534 + v422 + 3) = 1;
        }

        v425 = 0;
        v422 = 1;
      }

      while ((v426 & 1) != 0);
    }

    else
    {
      v438 = 0;
      v439 = *&v420 + 80;
      v440 = v639 >> 8;
      v441 = (5 * *(&v638 + 1)) >> 3;
      v442 = v373 + 101289;
      v443 = (*&v420 + 172);
      do
      {
        v444 = (&unk_277BC0D08 + 8 * v438);
        v445 = v444[1] + a6;
        if (v558[134] > v445)
        {
          v446 = *v444 + a5;
          if (v558[133] > v446)
          {
            v447 = *(*(v558 + 71) + 8 * (v445 + v446 * v558[145]));
            if (v447)
            {
              v448 = *v447;
              if ((v448 - 6) >= 3)
              {
                if (v448 == 9 && v441 > *(v439 + 10896 * v438 + 12))
                {
                  *(v534 + v438 + 5) = 1;
                }
              }

              else
              {
                v449 = 0;
                v450 = v443;
                do
                {
                  if (v440 > *v450)
                  {
                    *(v442 + v449) = 1;
                  }

                  v450 += 676;
                  ++v449;
                }

                while (v449 != 4);
              }
            }
          }
        }

        ++v438;
        v442 += 4;
        v443 += 2724;
      }

      while (v438 != 4);
    }

    goto LABEL_576;
  }

  v432 = *(*&v420 + 12);
LABEL_535:
  if (v432 < v638 >> 1)
  {
    *v534 = 1;
  }

LABEL_577:
  free(*&v374[-1]);
}