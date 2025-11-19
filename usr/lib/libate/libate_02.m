int16x4_t *CheckPartitionRow_4x4(int16x4_t *result, int32x4_t *a2, int32x4_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = 0;
  v8 = *a2;
  v9 = vdup_n_s16(a6);
  v10 = HIDWORD(*a2);
  v11 = *a3;
  v12 = *result;
  v13 = vdup_n_s16(~a7);
  v14 = a4;
  do
  {
    v15 = *(a4 + 8 * v7);
    if (!v15.i16[0])
    {
      break;
    }

    v16 = veor_s8(v15, v9);
    v17 = vminq_s32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(vmovl_u16(vand_s8(v16, v13))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(vmovl_u16(vbic_s8(v13, v16))))));
    if (vminvq_s32(v17) < v10)
    {
      for (i = 0; i != 4; ++i)
      {
        v24 = v17;
        v19 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
        if (v19 < v10)
        {
          v20 = *(a5 + 2 * i);
          if ((v20 & 0x80000000) == 0)
          {
            if (v19 >= v8.i32[0])
            {
              if (v19 >= v8.i32[1])
              {
                if (v19 >= v8.i32[2])
                {
                  if (v19 < v8.i32[3])
                  {
                    v12.i16[3] = *(v14 + 2 * i);
                    v8.i32[3] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                    v11.i32[3] = *(a5 + 2 * i);
                  }
                }

                else
                {
                  v21.i32[0] = v12.i32[0];
                  v21.i16[2] = *(v14 + 2 * i);
                  v21.i16[3] = v12.i16[2];
                  v22.i64[0] = v8.i64[0];
                  v22.i32[2] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                  v22.i32[3] = v8.i32[2];
                  v23.i64[0] = v11.i64[0];
                  v23.i64[1] = __PAIR64__(v11.u32[2], v20);
                  v12 = v21;
                  v11 = v23;
                  v8 = v22;
                }
              }

              else
              {
                v12 = vzip1_s16(v12, vzip2_s16(v12, v12));
                v8 = vzip1q_s32(v8, vzip2q_s32(v8, v8));
                v11 = vzip1q_s32(v11, vzip2q_s32(v11, v11));
                v12.i16[1] = *(v14 + 2 * i);
                v8.i32[1] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                v11.i32[1] = *(a5 + 2 * i);
              }
            }

            else
            {
              v12 = vext_s8(*v8.i8, v12, 6uLL);
              v8 = vextq_s8(v8, v8, 0xCuLL);
              v11 = vextq_s8(v8, v11, 0xCuLL);
              v12.i16[0] = *(v14 + 2 * i);
              v8.i32[0] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
              v11.i32[0] = *(a5 + 2 * i);
            }

            v10 = v8.i32[3];
          }
        }
      }
    }

    ++v7;
    v14 += 8;
    a5 += 8;
  }

  while (v7 != 9);
  *a2 = v8;
  *a3 = v11;
  *result = v12;
  return result;
}

float32x4_t Read_4x4_BGRA8_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = *a1;
  v7 = (a1 + *a2);
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = *v7;
  v10 = vandq_s8(*v7, v8);
  v11 = (v7 + a2[1]);
  v12 = *(v11 + a2[2]);
  v13 = *v11;
  v14 = *&vandq_s8(*v11, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v15 = *&vandq_s8(v12, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v16 = *&vandq_s8(*a1, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v17 = vaddq_f32(v16, v8);
  v18 = vdupq_n_s32(0x3B808081u);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  a3[17] = vmulq_f32(v17, v18);
  a3[18] = vmulq_f32(vaddq_f32((*&v10 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  a3[19] = vmulq_f32(vaddq_f32(v14, v8), v18);
  a3[20] = vmulq_f32(vaddq_f32(v15, v8), v18);
  v19 = vdupq_n_s32(0x3B800000u);
  a3[13] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v6, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  a3[14] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v9, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  a3[15] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  a3[16] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  v20 = vshrq_n_u32(v13, 0x10uLL);
  v21 = vshrq_n_u32(v12, 0x10uLL);
  v22 = vshrq_n_u32(v9, 0x10uLL);
  v23 = vshrq_n_u32(v6, 0x10uLL);
  v20.i32[0] = v20.i32[0] & 0xB4FF00FF | 0x4B000000;
  v20.i32[1] = v20.i32[1] & 0xB4FF00FF | 0x4B000000;
  v20.i32[2] = v20.i32[2] & 0xB4FF00FF | 0x4B000000;
  v20.i32[3] = v20.i32[3] & 0xB4FF00FF | 0x4B000000;
  v21.i32[0] = v21.i32[0] & 0xB4FF00FF | 0x4B000000;
  v21.i32[1] = v21.i32[1] & 0xB4FF00FF | 0x4B000000;
  v21.i32[2] = v21.i32[2] & 0xB4FF00FF | 0x4B000000;
  v21.i32[3] = v21.i32[3] & 0xB4FF00FF | 0x4B000000;
  v22.i32[0] = v22.i32[0] & 0xB4FF00FF | 0x4B000000;
  v22.i32[1] = v22.i32[1] & 0xB4FF00FF | 0x4B000000;
  v22.i32[2] = v22.i32[2] & 0xB4FF00FF | 0x4B000000;
  v22.i32[3] = v22.i32[3] & 0xB4FF00FF | 0x4B000000;
  v23.i32[0] = v23.i32[0] & 0xB4FF00FF | 0x4B000000;
  v23.i32[1] = v23.i32[1] & 0xB4FF00FF | 0x4B000000;
  v23.i32[2] = v23.i32[2] & 0xB4FF00FF | 0x4B000000;
  v23.i32[3] = v23.i32[3] & 0xB4FF00FF | 0x4B000000;
  a3[9] = vmulq_f32(vaddq_f32(v23, v8), v18);
  a3[10] = vmulq_f32(vaddq_f32(v22, v8), v18);
  a3[11] = vmulq_f32(vaddq_f32(v20, v8), v18);
  a3[12] = vmulq_f32(vaddq_f32(v21, v8), v18);
  a3[21] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v6, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[22] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v9, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  result = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[23] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[24] = result;
  return result;
}

float32x4_t Read_4x4_RA8_vec@<Q0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v23.val[1].i64[0] = *a1;
  v6 = (a1 + *a2);
  v7 = *v6;
  v8 = (v6 + a2[1]);
  v9.i64[0] = *v8;
  v23.val[1].i64[1] = v7;
  v23.val[0].i64[0] = 0x4B004B004B004B00;
  v23.val[0].i64[1] = 0x4B004B004B004B00;
  v10 = vqtbl2q_s8(v23, xmmword_298495960);
  v11 = vqtbl2q_s8(v23, xmmword_298495970);
  v9.i64[1] = *(v8 + a2[2]);
  v23.val[1] = v9;
  v12 = vqtbl2q_s8(v23, xmmword_298495960);
  v23.val[0] = vqtbl2q_s8(v23, xmmword_298495970);
  v13.i64[0] = 0xCB000000CB000000;
  v13.i64[1] = 0xCB000000CB000000;
  v14 = vdupq_n_s32(0x3B808081u);
  v23.val[1] = vmulq_f32(vaddq_f32((*v23.val & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  v15 = vmulq_f32(vaddq_f32((*&v12 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  v16 = vmulq_f32(vaddq_f32((*&v11 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  v17 = vmulq_f32(vaddq_f32((*&v10 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  *(a3 + 144) = v16;
  *(a3 + 160) = v17;
  *(a3 + 176) = v23.val[1];
  *(a3 + 192) = v15;
  *(a3 + 208) = v16;
  *(a3 + 224) = v17;
  *(a3 + 240) = v23.val[1];
  *(a3 + 256) = v15;
  *(a3 + 272) = v16;
  *(a3 + 288) = v17;
  *(a3 + 304) = v23.val[1];
  *(a3 + 320) = v15;
  v18 = vaddq_f32((*&v10 & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v19 = vaddq_f32((*&v11 & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v20 = vaddq_f32((*&v12 & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v23.val[0] = vaddq_f32((*v23.val & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v21 = vdupq_n_s32(0x37808081u);
  result = vmulq_f32(v23.val[0], v21);
  *(a3 + 336) = vmulq_f32(v19, v21);
  *(a3 + 352) = vmulq_f32(v18, v21);
  *(a3 + 368) = result;
  *(a3 + 384) = vmulq_f32(v20, v21);
  *(a3 + 124) = 2139095040;
  *(a3 + 656) = v16;
  *(a3 + 672) = v17;
  *(a3 + 688) = v23.val[1];
  *(a3 + 704) = v15;
  return result;
}

float32x4_t Read_4x4_R8_vec@<Q0>(__int32 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  v6 = (a1 + *a2);
  v7.i32[0] = *a1;
  v7.i32[1] = *v6;
  v8 = (v6 + a2[1]);
  v9.i32[0] = *v8;
  v9.i32[1] = *(v8 + a2[2]);
  v10 = vmovl_u8(v9);
  v11 = vmovl_u8(v7);
  v12.i64[0] = 0xCB000000CB000000;
  v12.i64[1] = 0xCB000000CB000000;
  v13 = vaddq_f32((*&vmovl_high_u16(v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v14 = vaddq_f32((*&vmovl_u16(*v10.i8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v15 = vaddq_f32((*&vmovl_high_u16(v11) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v16 = vaddq_f32((*&vmovl_u16(*v11.i8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v17 = vdupq_n_s32(0x3B808081u);
  result = vmulq_f32(v16, v17);
  v19 = vmulq_f32(v15, v17);
  *(a3 + 144) = result;
  *(a3 + 160) = v19;
  v20 = vmulq_f32(v14, v17);
  v21 = vmulq_f32(v13, v17);
  *(a3 + 176) = v20;
  *(a3 + 192) = v21;
  *(a3 + 208) = result;
  *(a3 + 224) = v19;
  *(a3 + 240) = v20;
  *(a3 + 256) = v21;
  *(a3 + 272) = result;
  *(a3 + 288) = v19;
  *(a3 + 304) = v20;
  *(a3 + 320) = v21;
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0;
  __asm { FMOV            V4.4S, #1.0 }

  *(a3 + 368) = _Q4;
  *(a3 + 384) = _Q4;
  *(a3 + 336) = _Q4;
  *(a3 + 352) = _Q4;
  *(a3 + 124) = 2139095040;
  *(a3 + 688) = v20;
  *(a3 + 704) = v21;
  *(a3 + 656) = result;
  *(a3 + 672) = v19;
  return result;
}

float32x4_t Read_4x4_R16_vec@<Q0>(uint16x4_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  v6 = (a1 + *a2);
  v7 = *v6;
  v8 = (v6 + a2[1]);
  v9 = vdupq_n_s32(0x4B400000u);
  v10 = vorrq_s8(vmovl_u16(*v8), v9);
  v11 = vorrq_s8(vmovl_u16(*(v8 + a2[2])), v9);
  v12 = vorrq_s8(vmovl_u16(v7), v9);
  v13 = vorrq_s8(vmovl_u16(*a1), v9);
  v14 = vdupq_n_s32(0xCB400000);
  v15 = vaddq_f32(v13, v14);
  v16 = vaddq_f32(v12, v14);
  v17 = vaddq_f32(v11, v14);
  v18 = vaddq_f32(v10, v14);
  v19 = vdupq_n_s32(0x37800080u);
  v20 = vmulq_f32(v18, v19);
  v21 = vmulq_f32(v16, v19);
  result = vmulq_f32(v15, v19);
  *(a3 + 272) = result;
  *(a3 + 288) = v21;
  v23 = vmulq_f32(v17, v19);
  *(a3 + 304) = v20;
  *(a3 + 320) = v23;
  *(a3 + 208) = result;
  *(a3 + 224) = v21;
  *(a3 + 240) = v20;
  *(a3 + 256) = v23;
  *(a3 + 144) = result;
  *(a3 + 160) = v21;
  *(a3 + 176) = v20;
  *(a3 + 192) = v23;
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0;
  __asm { FMOV            V4.4S, #1.0 }

  *(a3 + 368) = _Q4;
  *(a3 + 384) = _Q4;
  *(a3 + 336) = _Q4;
  *(a3 + 352) = _Q4;
  *(a3 + 124) = 2139095040;
  *(a3 + 688) = v20;
  *(a3 + 704) = v23;
  *(a3 + 656) = result;
  *(a3 + 672) = v21;
  return result;
}

float32x4_t Read_4x4_RA16_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v6 = (a1 + *a2);
  v7 = (v6 + a2[1]);
  v8.i64[0] = 0xFFFF0000FFFFLL;
  v8.i64[1] = 0xFFFF0000FFFFLL;
  v9 = *(v7 + a2[2]);
  v10 = vandq_s8(*a1, v8);
  v11 = vandq_s8(*v6, v8);
  v12 = vandq_s8(v9, v8);
  v13 = *&vandq_s8(*v7, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v14 = vshrq_n_u32(*v6, 0x10uLL);
  v15 = vshrq_n_u32(*v7, 0x10uLL);
  v16 = vshrq_n_u32(*a1, 0x10uLL);
  v17.i64[0] = 0xCB000000CB000000;
  v17.i64[1] = 0xCB000000CB000000;
  v18 = vdupq_n_s32(0x37800080u);
  v19 = vmulq_f32(vaddq_f32((*&v11 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  v20 = vmulq_f32(vaddq_f32((*&v10 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[17] = v20;
  a3[18] = v19;
  v21 = vmulq_f32(vaddq_f32(v13, v17), v18);
  v22 = vmulq_f32(vaddq_f32((*&v12 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[19] = v21;
  a3[20] = v22;
  a3[13] = v20;
  a3[14] = v19;
  a3[15] = v21;
  a3[16] = v22;
  a3[9] = v20;
  a3[10] = v19;
  result = vmulq_f32(vaddq_f32((*&v14 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[11] = v21;
  a3[12] = v22;
  a3[21] = vmulq_f32(vaddq_f32((*&v16 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[22] = result;
  a3[23] = vmulq_f32(vaddq_f32((*&v15 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[24] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v9, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[7].i32[3] = 2139095040;
  a3[41] = v20;
  a3[42] = v19;
  a3[43] = v21;
  a3[44] = v22;
  return result;
}

int32x4_t Read_4x4_RGBA16_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, int32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v6 = a1[1];
  v7 = (a1 + *a2);
  v8.i64[0] = 0xFFFF0000FFFFLL;
  v8.i64[1] = 0xFFFF0000FFFFLL;
  v9 = v7[1];
  v10 = *&vandq_s8(v9, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v11 = *&vandq_s8(*v7, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v12 = vshrq_n_u32(*v7, 0x10uLL);
  v13 = (v7 + a2[1]);
  v14 = *&vshrq_n_u32(v9, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v16 = *v13;
  v15 = v13[1];
  v17.i64[0] = 0xCB000000CB000000;
  v17.i64[1] = 0xCB000000CB000000;
  v18 = (v13 + a2[2]);
  v19 = vaddq_f32(v11, v17);
  v20 = v18[1];
  v21 = vdupq_n_s32(0x37800080u);
  v22 = vmulq_f32(vaddq_f32((*&vandq_s8(v6, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v23 = vmulq_f32(vaddq_f32((*&vandq_s8(*a1, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v24 = vmulq_f32(vaddq_f32(v10, v17), v21);
  v25 = vmulq_f32(v19, v21);
  v26 = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v6, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v27 = vmulq_f32(vaddq_f32((*&vshrq_n_u32(*a1, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v28 = vmulq_f32(vaddq_f32(v14, v17), v21);
  v29 = vmulq_f32(vaddq_f32((*&v12 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v30 = vandq_s8(*v18, v8);
  v31 = vandq_s8(v20, v8);
  v32 = vandq_s8(v16, v8);
  v33 = vmulq_f32(vaddq_f32((*&vandq_s8(v15, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v34 = vmulq_f32(vaddq_f32((*&v32 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v35 = vmulq_f32(vaddq_f32((*&v31 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v36 = vmulq_f32(vaddq_f32((*&v30 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v37 = vaddq_f32((*&vshrq_n_u32(*v18, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17);
  v38 = vaddq_f32((*&vshrq_n_u32(v20, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17);
  v39 = vaddq_f32((*&vshrq_n_u32(v16, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17);
  a3[9] = vuzp1q_s32(v23, v22);
  a3[10] = vuzp1q_s32(v25, v24);
  a3[11] = vuzp1q_s32(v34, v33);
  a3[12] = vuzp1q_s32(v36, v35);
  a3[13] = vuzp1q_s32(v27, v26);
  a3[14] = vuzp1q_s32(v29, v28);
  v40 = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v15, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v41 = vmulq_f32(v39, v21);
  v42 = vmulq_f32(v38, v21);
  v43 = vmulq_f32(v37, v21);
  a3[15] = vuzp1q_s32(v41, v40);
  a3[16] = vuzp1q_s32(v43, v42);
  a3[17] = vuzp2q_s32(v23, v22);
  a3[18] = vuzp2q_s32(v25, v24);
  a3[19] = vuzp2q_s32(v34, v33);
  a3[20] = vuzp2q_s32(v36, v35);
  a3[21] = vuzp2q_s32(v27, v26);
  a3[22] = vuzp2q_s32(v29, v28);
  result = vuzp2q_s32(v43, v42);
  a3[23] = vuzp2q_s32(v41, v40);
  a3[24] = result;
  return result;
}

float32x4_t Read_4x4_Rf16_vec@<Q0>(float16x4_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  v6 = (a1 + *a2);
  v7 = *v6;
  v8 = (v6 + a2[1]);
  __asm { FMOV            V5.4S, #1.0 }

  result = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*a1), 0), _Q5);
  v15 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(v7), 0), _Q5);
  v16 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v8), 0), _Q5);
  v17 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*(v8 + a2[2])), 0), _Q5);
  *(a3 + 144) = result;
  *(a3 + 160) = v15;
  *(a3 + 176) = v16;
  *(a3 + 192) = v17;
  *(a3 + 208) = result;
  *(a3 + 224) = v15;
  *(a3 + 240) = v16;
  *(a3 + 256) = v17;
  *(a3 + 272) = result;
  *(a3 + 288) = v15;
  *(a3 + 304) = v16;
  *(a3 + 320) = v17;
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0;
  *(a3 + 368) = _Q5;
  *(a3 + 384) = _Q5;
  *(a3 + 336) = _Q5;
  *(a3 + 352) = _Q5;
  *(a3 + 124) = 2139095040;
  *(a3 + 688) = v16;
  *(a3 + 704) = v17;
  *(a3 + 656) = result;
  *(a3 + 672) = v15;
  return result;
}

float32x4_t Read_4x4_RAf16_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v6 = (a1 + *a2);
  v7 = (v6 + a2[1]);
  v8 = vqtbl1q_s8(*v6, xmmword_298495980);
  v9 = vqtbl1q_s8(*a1, xmmword_298495980);
  v10 = vqtbl1q_s8(*(v7 + a2[2]), xmmword_298495980);
  v11 = vqtbl1q_s8(*v7, xmmword_298495980);
  __asm { FMOV            V7.4S, #1.0 }

  v17 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v9.i8), 0), _Q7);
  v18 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v8.i8), 0), _Q7);
  a3[9] = v17;
  a3[10] = v18;
  v19 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v11.i8), 0), _Q7);
  v20 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v10.i8), 0), _Q7);
  a3[11] = v19;
  a3[12] = v20;
  a3[21] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v9, v9, 8uLL)), 0), _Q7);
  a3[22] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v8, v8, 8uLL)), 0), _Q7);
  result = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v10, v10, 8uLL)), 0), _Q7);
  a3[23] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v11, v11, 8uLL)), 0), _Q7);
  a3[24] = result;
  a3[13] = v17;
  a3[14] = v18;
  a3[15] = v19;
  a3[16] = v20;
  a3[17] = v17;
  a3[18] = v18;
  a3[19] = v19;
  a3[20] = v20;
  a3[7].i32[3] = 2139095040;
  a3[41] = v17;
  a3[42] = v18;
  a3[43] = v19;
  a3[44] = v20;
  return result;
}

float32x4_t Read_4x4_RGBAf16_vec@<Q0>(int8x16x2_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = (a1 + *a2);
  v7 = (v6 + a2[1]);
  v8 = vqtbl2q_s8(*a1, xmmword_298495990);
  v9 = vqtbl2q_s8(*a1, xmmword_2984959A0);
  v10 = vqtbl2q_s8(*v6, xmmword_298495990);
  v11 = vqtbl2q_s8(*v6, xmmword_2984959A0);
  v12 = vqtbl2q_s8(*v7, xmmword_298495990);
  v13 = vqtbl2q_s8(*v7, xmmword_2984959A0);
  v26 = *(v7 + a2[2]);
  v14 = vqtbl2q_s8(v26, xmmword_298495990);
  v15 = vqtbl2q_s8(v26, xmmword_2984959A0);
  v16 = vcvtq_f32_f16(*v9.i8);
  v17 = vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v9, v9, 8uLL)), 0);
  __asm { FMOV            V0.4S, #1.0 }

  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v23 = vcvtq_f32_f16(*v12.i8);
  v24 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v12, v12, 8uLL)), 0), _Q0);
  a3[9] = vminnmq_f32(vmaxnmq_f32(v16, 0), _Q0);
  a3[10] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v11.i8), 0), _Q0);
  a3[11] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v13.i8), 0), _Q0);
  a3[12] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.i8), 0), _Q0);
  a3[13] = vminnmq_f32(v17, _Q0);
  a3[14] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v11, v11, 8uLL)), 0), _Q0);
  a3[15] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v13, v13, 8uLL)), 0), _Q0);
  a3[16] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15, v15, 8uLL)), 0), _Q0);
  a3[17] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v8.i8), 0), _Q0);
  a3[18] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v10.i8), 0), _Q0);
  a3[19] = vminnmq_f32(vmaxnmq_f32(v23, 0), _Q0);
  a3[20] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v14.i8), 0), _Q0);
  a3[21] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v8, v8, 8uLL)), 0), _Q0);
  a3[22] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v10, v10, 8uLL)), 0), _Q0);
  result = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v14, v14, 8uLL)), 0), _Q0);
  a3[23] = v24;
  a3[24] = result;
  return result;
}

void Read_8x8_RGBA8_vec(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v9 = vdupq_n_s32(0x3B808081u);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  v11 = vdupq_n_s32(0x37808081u);
  do
  {
    v12 = *a1;
    v13 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v14 = (a3 + 32 * v6);
    v14[9] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[10] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[25] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v14[26] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v15 = vshrq_n_u32(v12, 0x10uLL);
    v16 = vshrq_n_u32(v13, 0x10uLL);
    v15.i32[0] = v15.i32[0] & 0xB4FF00FF | 0x4B000000;
    v15.i32[1] = v15.i32[1] & 0xB4FF00FF | 0x4B000000;
    v15.i32[2] = v15.i32[2] & 0xB4FF00FF | 0x4B000000;
    v15.i32[3] = v15.i32[3] & 0xB4FF00FF | 0x4B000000;
    v16.i32[0] = v16.i32[0] & 0xB4FF00FF | 0x4B000000;
    v16.i32[1] = v16.i32[1] & 0xB4FF00FF | 0x4B000000;
    v16.i32[2] = v16.i32[2] & 0xB4FF00FF | 0x4B000000;
    v16.i32[3] = v16.i32[3] & 0xB4FF00FF | 0x4B000000;
    v14[41] = vmulq_f32(vaddq_f32(v15, v8), v9);
    v14[42] = vmulq_f32(vaddq_f32(v16, v8), v9);
    v14[57] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[58] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_BGRA8_vec(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v9 = vdupq_n_s32(0x3B808081u);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  v11 = vdupq_n_s32(0x37808081u);
  do
  {
    v12 = *a1;
    v13 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v14 = (a3 + 32 * v6);
    v14[41] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[42] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[25] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v14[26] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v15 = vshrq_n_u32(v12, 0x10uLL);
    v16 = vshrq_n_u32(v13, 0x10uLL);
    v15.i32[0] = v15.i32[0] & 0xB4FF00FF | 0x4B000000;
    v15.i32[1] = v15.i32[1] & 0xB4FF00FF | 0x4B000000;
    v15.i32[2] = v15.i32[2] & 0xB4FF00FF | 0x4B000000;
    v15.i32[3] = v15.i32[3] & 0xB4FF00FF | 0x4B000000;
    v16.i32[0] = v16.i32[0] & 0xB4FF00FF | 0x4B000000;
    v16.i32[1] = v16.i32[1] & 0xB4FF00FF | 0x4B000000;
    v16.i32[2] = v16.i32[2] & 0xB4FF00FF | 0x4B000000;
    v16.i32[3] = v16.i32[3] & 0xB4FF00FF | 0x4B000000;
    v14[9] = vmulq_f32(vaddq_f32(v15, v8), v9);
    v14[10] = vmulq_f32(vaddq_f32(v16, v8), v9);
    v14[57] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[58] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_RA8_vec(uint16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7 = vdupq_n_s32(0x4B400000u);
  v8 = vdupq_n_s32(0xCB400000);
  v9 = vdupq_n_s32(0x3B808081u);
  v10 = vdupq_n_s32(0x3B008081u);
  do
  {
    v11 = *a1;
    a1 = (a1 + *(a2 + 8 * v6));
    v12 = vshrq_n_u16(v11, 8uLL);
    v13 = *&v11 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    v14 = vmovl_high_u16(v13);
    v15 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&v13), v7), v8), v9);
    v16 = vmulq_f32(vaddq_f32(vorrq_s8(v14, v7), v8), v9);
    v17 = a3 + 32 * v6;
    *(v17 + 2464) = v16;
    *(v17 + 2448) = v15;
    *(v17 + 656) = v15;
    *(v17 + 672) = v16;
    *(v17 + 400) = v15;
    *(v17 + 416) = v16;
    *(v17 + 144) = v15;
    *(v17 + 160) = v16;
    v18 = vmovl_high_u16(v12);
    v19 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v12.i8), v7), v8), v9);
    v20 = vmulq_f32(vaddq_f32(vorrq_s8(v18, v7), v8), v9);
    *(v17 + 912) = v19;
    *(v17 + 928) = v20;
    *(v17 + 2208) = vcgtq_f32(v10, v20);
    *(v17 + 2192) = vcgtq_f32(v10, v19);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_R8_vec(uint8x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  v7 = vdupq_n_s32(0x4B400000u);
  v8 = vdupq_n_s32(0xCB400000);
  *(a3 + 132) = 392;
  v9 = vdupq_n_s32(0x3B808081u);
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v15 = *a1;
    a1 = (a1 + *(a2 + 8 * v6));
    v16 = vmovl_u8(v15);
    v17 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_high_u16(v16), v7), v8), v9);
    v18 = (a3 + 32 * v6);
    v18[154] = v17;
    v19 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v16.i8), v7), v8), v9);
    v18[153] = v19;
    v18[41] = v19;
    v18[42] = v17;
    v18[25] = v19;
    v18[26] = v17;
    v18[9] = v19;
    v18[10] = v17;
    v18[57] = _Q3;
    v18[58] = _Q3;
    v18[138] = 0uLL;
    v18[137] = 0uLL;
    ++v6;
  }

  while (v6 != 8);
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
}

void Read_8x8_R16_vec(uint16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  v7 = vdupq_n_s32(0x4B400000u);
  v8 = vdupq_n_s32(0xCB400000);
  *(a3 + 132) = 392;
  v9 = vdupq_n_s32(0x37800080u);
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v15 = *a1;
    a1 = (a1 + *(a2 + 8 * v6));
    v16 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_high_u16(v15), v7), v8), v9);
    v17 = (a3 + 32 * v6);
    v17[154] = v16;
    v18 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v15.i8), v7), v8), v9);
    v17[153] = v18;
    v17[41] = v18;
    v17[42] = v16;
    v17[25] = v18;
    v17[26] = v16;
    v17[9] = v18;
    v17[10] = v16;
    v17[57] = _Q3;
    v17[58] = _Q3;
    v17[138] = 0uLL;
    v17[137] = 0uLL;
    ++v6;
  }

  while (v6 != 8);
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
}

void Read_8x8_RA16_vec(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFFFF0000FFFFLL;
  v7.i64[1] = 0xFFFF0000FFFFLL;
  v8 = vdupq_n_s32(0x37800080u);
  do
  {
    v10 = *a1;
    v9 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(v10, v7)), v8);
    v12 = vmulq_f32(vcvtq_f32_u32(vandq_s8(v9, v7)), v8);
    v13 = (a3 + 32 * v6);
    v13[154] = v12;
    v13[153] = v11;
    v13[41] = v11;
    v13[42] = v12;
    v13[25] = v11;
    v13[26] = v12;
    v13[9] = v11;
    v13[10] = v12;
    v13[57] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v10, 0x10uLL)), v8);
    v13[58] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v9, 0x10uLL)), v8);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_RGBA16_vec(int16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFFFF0000FFFFLL;
  v7.i64[1] = 0xFFFF0000FFFFLL;
  v8 = vdupq_n_s32(0x37800080u);
  do
  {
    v9 = a1[1];
    v10 = vuzp1q_s16(*a1, v9);
    v11 = vuzp2q_s16(*a1, v9);
    v12 = a1[2];
    v13 = a1[3];
    v14 = vuzp1q_s16(v12, v13);
    v15 = vuzp2q_s16(v12, v13);
    a1 = (a1 + *(a2 + 8 * v6));
    v16 = (a3 + 32 * v6);
    v16[9] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v10, v7)), v8);
    v16[10] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v14, v7)), v8);
    v16[25] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v11, v7)), v8);
    v16[26] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v15, v7)), v8);
    v16[41] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v10, 0x10uLL)), v8);
    v16[42] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v14, 0x10uLL)), v8);
    v16[57] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v11, 0x10uLL)), v8);
    v16[58] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x10uLL)), v8);
    ++v6;
  }

  while (v6 != 8);
}

__n128 Read_8x8_Rf16_vec@<Q0>(float16x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a3 + 272);
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 392;
  v7 = (a3 + 688);
  v8 = (a2 + 8);
  v9 = 4;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v15 = *v8;
    v16 = (a1 + *(v8 - 1));
    v17 = vcvt_hight_f32_f16(*v16);
    v18 = vmaxnmq_f32(vcvtq_f32_f16(*v16->i8), 0);
    v19 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*a1), 0), _Q0);
    v20 = vminnmq_f32(vmaxnmq_f32(vcvt_hight_f32_f16(*a1->i8), 0), _Q0);
    v21 = v7 - 34;
    *v21 = v19;
    v21[1] = v20;
    v22 = vminnmq_f32(v18, _Q0);
    v23 = vminnmq_f32(vmaxnmq_f32(v17, 0), _Q0);
    v24 = v7 - 32;
    *v24 = v22;
    v24[1] = v23;
    a1 = &v16->i8[v15];
    v25 = v7 - 18;
    *v25 = v19;
    v25[1] = v20;
    v7[-16] = v22;
    v7[-15] = v23;
    v7[-2] = v19;
    v7[-1] = v20;
    *v7 = v22;
    v7[1] = v23;
    v7 += 4;
    v8 += 2;
    --v9;
  }

  while (v9);
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 2192) = 0u;
  *(a3 + 2208) = 0u;
  *(a3 + 2224) = 0u;
  *(a3 + 2240) = 0u;
  *(a3 + 2256) = 0u;
  *(a3 + 2272) = 0u;
  *(a3 + 2288) = 0u;
  *(a3 + 2304) = 0u;
  *(a3 + 2320) = 0u;
  *(a3 + 2336) = 0u;
  *(a3 + 2352) = 0u;
  *(a3 + 2368) = 0u;
  *(a3 + 2384) = 0u;
  *(a3 + 2400) = 0u;
  *(a3 + 2416) = 0u;
  *(a3 + 2432) = 0u;
  v6[40] = _Q0;
  v6[41] = _Q0;
  v6[42] = _Q0;
  v6[43] = _Q0;
  v6[44] = _Q0;
  v6[45] = _Q0;
  v6[46] = _Q0;
  v6[47] = _Q0;
  v6[48] = _Q0;
  v6[49] = _Q0;
  v6[50] = _Q0;
  v6[51] = _Q0;
  v6[52] = _Q0;
  v6[53] = _Q0;
  v6[54] = _Q0;
  v6[55] = _Q0;
  *(a3 + 124) = 2139095040;
  v26 = *(a3 + 144);
  v6[137] = *(a3 + 160);
  v6[136] = v26;
  v27 = *(a3 + 176);
  v6[139] = *(a3 + 192);
  v6[138] = v27;
  v28 = *(a3 + 224);
  v6[140] = *(a3 + 208);
  v6[141] = v28;
  v29 = *(a3 + 240);
  v6[143] = *(a3 + 256);
  v6[142] = v29;
  v30 = *v6;
  v6[145] = v6[1];
  v6[144] = v30;
  v31 = v6[2];
  v6[147] = v6[3];
  v6[146] = v31;
  v32 = v6[4];
  v6[149] = v6[5];
  v6[148] = v32;
  result = v6[6];
  v6[151] = v6[7];
  v6[150] = result;
  return result;
}

__n128 Read_8x8_RAf16_vec@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  __asm { FMOV            V2.4S, #1.0 }

  do
  {
    v13 = *a1;
    v12 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v14 = vqtbl1q_s8(v12, xmmword_298495980);
    v15 = vqtbl1q_s8(v13, xmmword_298495980);
    v16 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.i8), 0), _Q2);
    v17 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v14.i8), 0), _Q2);
    v18 = (a3 + 32 * v6);
    v18[41] = v16;
    v18[42] = v17;
    v18[25] = v16;
    v18[26] = v17;
    v18[9] = v16;
    v18[10] = v17;
    v18[57] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15, v15, 8uLL)), 0), _Q2);
    v18[58] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v14, v14, 8uLL)), 0), _Q2);
    ++v6;
  }

  while (v6 != 8);
  *(a3 + 124) = 2139095040;
  v19 = *(a3 + 144);
  *(a3 + 2464) = *(a3 + 160);
  *(a3 + 2448) = v19;
  v20 = *(a3 + 176);
  *(a3 + 2496) = *(a3 + 192);
  *(a3 + 2480) = v20;
  v21 = *(a3 + 208);
  *(a3 + 2528) = *(a3 + 224);
  *(a3 + 2512) = v21;
  v22 = *(a3 + 240);
  *(a3 + 2560) = *(a3 + 256);
  *(a3 + 2544) = v22;
  v23 = *(a3 + 272);
  *(a3 + 2592) = *(a3 + 288);
  *(a3 + 2576) = v23;
  v24 = *(a3 + 304);
  *(a3 + 2624) = *(a3 + 320);
  *(a3 + 2608) = v24;
  v25 = *(a3 + 336);
  *(a3 + 2656) = *(a3 + 352);
  *(a3 + 2640) = v25;
  result = *(a3 + 368);
  *(a3 + 2688) = *(a3 + 384);
  *(a3 + 2672) = result;
  return result;
}

void Read_8x8_RGBAf16_vec(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  __asm { FMOV            V2.4S, #1.0 }

  do
  {
    v14 = *(a1 + 32);
    v15 = *a1;
    a1 += *(a2 + 8 * v6);
    v12 = vqtbl2q_s8(v15, xmmword_298495990);
    v15.val[0] = vqtbl2q_s8(v15, xmmword_2984959A0);
    v15.val[1] = vqtbl2q_s8(v14, xmmword_298495990);
    v14.val[0] = vqtbl2q_s8(v14, xmmword_2984959A0);
    v13 = (a3 + 32 * v6);
    v13[9] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.val[0].i8), 0), _Q2);
    v13[10] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v14.val[0].i8), 0), _Q2);
    v13[25] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15.val[0], v15.val[0], 8uLL)), 0), _Q2);
    v13[26] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v14.val[0], v14.val[0], 8uLL)), 0), _Q2);
    v13[41] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v12.i8), 0), _Q2);
    v13[42] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.val[1].i8), 0), _Q2);
    v13[57] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v12, v12, 8uLL)), 0), _Q2);
    v13[58] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15.val[1], v15.val[1], 8uLL)), 0), _Q2);
    ++v6;
  }

  while (v6 != 8);
}

float32x2_t SetAlphaOne_4x4_vec(uint64_t a1)
{
  *(a1 + 134) = 0;
  *(a1 + 136) = 1;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  __asm { FMOV            V7.4S, #1.0 }

  *(a1 + 368) = _Q7;
  *(a1 + 384) = _Q7;
  *(a1 + 336) = _Q7;
  *(a1 + 352) = _Q7;
  if (*(a1 + 124) >= 0.0)
  {
    v8 = *(a1 + 176);
    v7 = *(a1 + 192);
    v10 = *(a1 + 144);
    v9 = *(a1 + 160);
    v12 = *(a1 + 240);
    v11 = *(a1 + 256);
    v14 = *(a1 + 208);
    v13 = *(a1 + 224);
    v16 = *(a1 + 304);
    v15 = *(a1 + 320);
    v18 = *(a1 + 272);
    v17 = *(a1 + 288);
  }

  else
  {
    v6 = *(a1 + 32);
    v8 = *(a1 + 176);
    v7 = *(a1 + 192);
    v10 = *(a1 + 144);
    v9 = *(a1 + 160);
    v12 = *(a1 + 240);
    v11 = *(a1 + 256);
    v14 = *(a1 + 208);
    v13 = *(a1 + 224);
    v16 = *(a1 + 304);
    v15 = *(a1 + 320);
    v18 = *(a1 + 272);
    v17 = *(a1 + 288);
    if (v6)
    {
      v19 = *v6;
    }

    else
    {
      v19 = xmmword_2984959B0;
    }

    v20 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v19.f32, 1), v7, v19.f32[0]), v15, v19, 2);
    v21 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v19.f32, 1), v8, v19.f32[0]), v16, v19, 2);
    v22 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v13, *v19.f32, 1), v9, v19.f32[0]), v17, v19, 2);
    v23 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v19.f32, 1), v10, v19.f32[0]), v18, v19, 2);
    *(a1 + 656) = v23;
    *(a1 + 672) = v22;
    *(a1 + 688) = v21;
    *(a1 + 704) = v20;
    v24 = vsubq_f32(v9, v22);
    v25 = vsubq_f32(v7, v20);
    v26 = vsubq_f32(v10, v23);
    v27 = vsubq_f32(v8, v21);
    v28 = vsubq_f32(v12, v21);
    v29 = vsubq_f32(v14, v23);
    v30 = vsubq_f32(v11, v20);
    v31 = vsubq_f32(v13, v22);
    v32 = vsubq_f32(v16, v21);
    v33 = vsubq_f32(v18, v23);
    v34 = vsubq_f32(v15, v20);
    v35 = vsubq_f32(v17, v22);
    v36 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v29, v29), v26, v26), v33, v33), vmlaq_f32(vmlaq_f32(vmulq_f32(v28, v28), v27, v27), v32, v32)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v31, v31), v24, v24), v35, v35), vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v30), v25, v25), v34, v34)));
    v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
    v36.f32[0] = vrecpes_f32(vpadd_f32(*v36.f32, *v36.f32).f32[0]);
    *(a1 + 124) = (v36.f32[0] * 3.0) + (v36.f32[0] * 3.0);
  }

  v37 = vzip1q_s32(v10, v18);
  v38 = vzip2q_s32(v9, v17);
  v39 = vzip2q_s32(v10, v18);
  v40 = vzip2q_s32(v14, _Q7);
  v41 = vzip1q_s32(v39, v40);
  v42 = vzip2q_s32(v39, v40);
  v43 = vextq_s8(_Q7, _Q7, 0xCuLL);
  v44 = vzip1q_s32(v37, v43);
  v44.i32[1] = v14.i32[0];
  v45 = vzip1q_s32(_Q7, _Q7);
  v46 = vzip2q_s32(v37, v45);
  v46.i32[1] = v14.i32[1];
  *(a1 + 432) = v41;
  *(a1 + 448) = v42;
  v41.i64[0] = __PAIR64__(v13.u32[0], v9.u32[0]);
  v41.i64[1] = __PAIR64__(1.0, v17.u32[0]);
  v47 = vextq_s8(vuzp2q_s32(_Q7, v9), _Q7, 8uLL);
  v47.i32[1] = v13.i32[1];
  v47.i32[2] = v17.i32[1];
  v48 = vextq_s8(_Q7, _Q7, 4uLL);
  v49 = vzip1q_s32(v38, v48);
  v49.i32[1] = v13.i32[2];
  v50 = vzip2q_s32(v38, _Q7);
  v50.i32[1] = v13.i32[3];
  *(a1 + 400) = v44;
  *(a1 + 416) = v46;
  *(a1 + 496) = v49;
  *(a1 + 512) = v50;
  *(a1 + 464) = v41;
  *(a1 + 480) = v47;
  v51 = vzip1q_s32(v8, v16);
  v52 = vzip2q_s32(v7, v15);
  v53 = vzip2q_s32(v8, v16);
  v54 = vzip2q_s32(v12, _Q7);
  v55 = vzip1q_s32(v51, v43);
  v55.i32[1] = v12.i32[0];
  v56 = vzip2q_s32(v51, v45);
  v56.i32[1] = v12.i32[1];
  *(a1 + 560) = vzip1q_s32(v53, v54);
  *(a1 + 576) = vzip2q_s32(v53, v54);
  v53.i64[0] = __PAIR64__(v11.u32[0], v7.u32[0]);
  v53.i64[1] = __PAIR64__(1.0, v15.u32[0]);
  v57 = vextq_s8(vuzp2q_s32(_Q7, v7), _Q7, 8uLL);
  v57.i32[1] = v11.i32[1];
  v57.i32[2] = v15.i32[1];
  v58 = vzip1q_s32(v52, v48);
  v58.i32[1] = v11.i32[2];
  *(a1 + 528) = v55;
  *(a1 + 544) = v56;
  v59 = vzip2q_s32(v52, _Q7);
  v59.i32[1] = v11.i32[3];
  *(a1 + 624) = v58;
  *(a1 + 640) = v59;
  *(a1 + 592) = v53;
  *(a1 + 608) = v57;
  v60 = vmulq_f32(v7, v7);
  v61 = vmulq_f32(v8, v8);
  v62 = vpaddq_f32(vaddq_f32(vaddq_f32(v10, v8), vaddq_f32(v9, v7)), vaddq_f32(vaddq_f32(v14, v12), vaddq_f32(v13, v11)));
  __asm { FMOV            V16.4S, #4.0 }

  v64 = vpaddq_f32(v62, vpaddq_f32(vaddq_f32(vaddq_f32(v18, v16), vaddq_f32(v17, v15)), _Q16));
  v65 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v61, v10, v10), vmlaq_f32(v60, v9, v9)), vaddq_f32(vmlaq_f32(vmulq_f32(v12, v12), v14, v14), vmlaq_f32(vmulq_f32(v11, v11), v13, v13))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v16, v16), v18, v18), vmlaq_f32(vmulq_f32(v15, v15), v17, v17)), _Q16));
  v66 = vmulq_f32(v64, vdupq_n_s32(0x3D800000u));
  v67 = vmlsq_f32(v65, v66, v64);
  *(a1 + 16) = v66;
  v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
  result = vpadd_f32(*v67.f32, *v67.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenNon_4x4_vec(uint64_t a1)
{
  v1 = *a1;
  v2 = vdupq_lane_s32(*a1, 0);
  v3 = *(a1 + 368);
  v4 = *(a1 + 384);
  v6 = *(a1 + 336);
  v5 = *(a1 + 352);
  v7 = vmlaq_f32(v2, vsubq_f32(*(a1 + 160), v2), v5);
  v8 = vmlaq_f32(v2, vsubq_f32(*(a1 + 144), v2), v6);
  v9 = vmlaq_f32(v2, vsubq_f32(*(a1 + 192), v2), v4);
  v10 = vmlaq_f32(v2, vsubq_f32(*(a1 + 176), v2), v3);
  *(a1 + 176) = v10;
  *(a1 + 192) = v9;
  *(a1 + 144) = v8;
  *(a1 + 160) = v7;
  v11 = vdupq_lane_s32(*v1.i8, 1);
  v12 = vmlaq_f32(v11, vsubq_f32(*(a1 + 224), v11), v5);
  v13 = vmlaq_f32(v11, vsubq_f32(*(a1 + 208), v11), v6);
  v14 = vmlaq_f32(v11, vsubq_f32(*(a1 + 256), v11), v4);
  v15 = vmlaq_f32(v11, vsubq_f32(*(a1 + 240), v11), v3);
  *(a1 + 240) = v15;
  *(a1 + 256) = v14;
  v16 = vdupq_laneq_s32(v1, 2);
  *(a1 + 208) = v13;
  *(a1 + 224) = v12;
  v17 = vmlaq_f32(v16, vsubq_f32(*(a1 + 288), v16), v5);
  v18 = vmlaq_f32(v16, vsubq_f32(*(a1 + 272), v16), v6);
  v19 = vmlaq_f32(v16, vsubq_f32(*(a1 + 320), v16), v4);
  v20 = vmlaq_f32(v16, vsubq_f32(*(a1 + 304), v16), v3);
  *(a1 + 304) = v20;
  *(a1 + 320) = v19;
  *(a1 + 272) = v18;
  *(a1 + 288) = v17;
  *(a1 + 134) = 0;
  *(a1 + 136) = 1;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  __asm { FMOV            V20.4S, #1.0 }

  *(a1 + 368) = _Q20;
  *(a1 + 384) = _Q20;
  *(a1 + 336) = _Q20;
  *(a1 + 352) = _Q20;
  if (*(a1 + 124) < 0.0)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = xmmword_2984959B0;
    }

    v28 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v27.f32, 1), v9, v27.f32[0]), v19, v27, 2);
    v29 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v27.f32, 1), v10, v27.f32[0]), v20, v27, 2);
    v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v27.f32, 1), v7, v27.f32[0]), v17, v27, 2);
    v31 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v13, *v27.f32, 1), v8, v27.f32[0]), v18, v27, 2);
    *(a1 + 656) = v31;
    *(a1 + 672) = v30;
    *(a1 + 688) = v29;
    *(a1 + 704) = v28;
    v32 = vsubq_f32(v7, v30);
    v33 = vsubq_f32(v9, v28);
    v34 = vsubq_f32(v8, v31);
    v35 = vsubq_f32(v10, v29);
    v36 = vsubq_f32(v15, v29);
    v37 = vsubq_f32(v13, v31);
    v38 = vsubq_f32(v14, v28);
    v39 = vsubq_f32(v12, v30);
    v40 = vsubq_f32(v20, v29);
    v41 = vsubq_f32(v18, v31);
    v42 = vsubq_f32(v19, v28);
    v43 = vsubq_f32(v17, v30);
    v44 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v37, v37), v34, v34), v41, v41), vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v35, v35), v40, v40)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v39), v32, v32), v43, v43), vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v38), v33, v33), v42, v42)));
    v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
    v44.f32[0] = vrecpes_f32(vpadd_f32(*v44.f32, *v44.f32).f32[0]);
    *(a1 + 124) = (v44.f32[0] * 3.0) + (v44.f32[0] * 3.0);
  }

  v45 = vzip1q_s32(v8, v18);
  v46 = vzip2q_s32(v7, v17);
  v47 = vzip2q_s32(v8, v18);
  v48 = vzip2q_s32(v13, _Q20);
  v49 = vzip1q_s32(v47, v48);
  v50 = vzip2q_s32(v47, v48);
  v51 = vextq_s8(_Q20, _Q20, 0xCuLL);
  v52 = vzip1q_s32(v45, v51);
  v52.i32[1] = v13.i32[0];
  v53 = vzip1q_s32(_Q20, _Q20);
  v54 = vzip2q_s32(v45, v53);
  v54.i32[1] = v13.i32[1];
  *(a1 + 432) = v49;
  *(a1 + 448) = v50;
  v49.i64[0] = __PAIR64__(v12.u32[0], v7.u32[0]);
  v49.i64[1] = __PAIR64__(1.0, v17.u32[0]);
  v55 = vextq_s8(vuzp2q_s32(_Q20, v7), _Q20, 8uLL);
  v55.i32[1] = v12.i32[1];
  v55.i32[2] = v17.i32[1];
  v56 = vextq_s8(_Q20, _Q20, 4uLL);
  v57 = vzip1q_s32(v46, v56);
  v57.i32[1] = v12.i32[2];
  v58 = vzip2q_s32(v46, _Q20);
  v58.i32[1] = v12.i32[3];
  *(a1 + 400) = v52;
  *(a1 + 416) = v54;
  *(a1 + 496) = v57;
  *(a1 + 512) = v58;
  *(a1 + 464) = v49;
  *(a1 + 480) = v55;
  v59 = vzip1q_s32(v10, v20);
  v60 = vzip2q_s32(v9, v19);
  v61 = vzip2q_s32(v10, v20);
  v62 = vzip2q_s32(v15, _Q20);
  v63 = vzip1q_s32(v59, v51);
  v63.i32[1] = v15.i32[0];
  v64 = vzip2q_s32(v59, v53);
  v64.i32[1] = v15.i32[1];
  *(a1 + 560) = vzip1q_s32(v61, v62);
  *(a1 + 576) = vzip2q_s32(v61, v62);
  v61.i64[0] = __PAIR64__(v14.u32[0], v9.u32[0]);
  v61.i64[1] = __PAIR64__(1.0, v19.u32[0]);
  v65 = vextq_s8(vuzp2q_s32(_Q20, v9), _Q20, 8uLL);
  v65.i32[1] = v14.i32[1];
  v65.i32[2] = v19.i32[1];
  v66 = vzip1q_s32(v60, v56);
  v66.i32[1] = v14.i32[2];
  *(a1 + 528) = v63;
  *(a1 + 544) = v64;
  v67 = vzip2q_s32(v60, _Q20);
  v67.i32[1] = v14.i32[3];
  *(a1 + 624) = v66;
  *(a1 + 640) = v67;
  *(a1 + 592) = v61;
  *(a1 + 608) = v65;
  v68 = vmulq_f32(v9, v9);
  v69 = vmulq_f32(v10, v10);
  v70 = vpaddq_f32(vaddq_f32(vaddq_f32(v8, v10), vaddq_f32(v7, v9)), vaddq_f32(vaddq_f32(v13, v15), vaddq_f32(v12, v14)));
  __asm { FMOV            V4.4S, #4.0 }

  v72 = vpaddq_f32(v70, vpaddq_f32(vaddq_f32(vaddq_f32(v18, v20), vaddq_f32(v17, v19)), _Q4));
  v73 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v69, v8, v8), vmlaq_f32(v68, v7, v7)), vaddq_f32(vmlaq_f32(vmulq_f32(v15, v15), v13, v13), vmlaq_f32(vmulq_f32(v14, v14), v12, v12))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v20, v20), v18, v18), vmlaq_f32(vmulq_f32(v19, v19), v17, v17)), _Q4));
  v74 = vmulq_f32(v72, vdupq_n_s32(0x3D800000u));
  v75 = vmlsq_f32(v73, v74, v72);
  *(a1 + 16) = v74;
  v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
  result = vpadd_f32(*v75.f32, *v75.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenPre_4x4_vec(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = *(a1 + 352);
  v3 = *(a1 + 368);
  v4 = *(a1 + 384);
  __asm { FMOV            V0.4S, #1.0 }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v1, _Q0), vceqq_f32(v3, _Q0)), vandq_s8(vceqq_f32(v2, _Q0), vceqq_f32(v4, _Q0)))) & 0x80000000) == 0)
  {
    v10 = vminnmq_f32(*(a1 + 208), v1);
    v11 = vminnmq_f32(*(a1 + 224), v2);
    v12 = vminnmq_f32(*(a1 + 240), v3);
    v13 = vminnmq_f32(*(a1 + 256), v4);
    v14 = vminnmq_f32(*(a1 + 272), v1);
    v15 = vminnmq_f32(*(a1 + 288), v2);
    v16 = vminnmq_f32(*(a1 + 304), v3);
    v17 = vminnmq_f32(*(a1 + 320), v4);
    v18 = *a1;
    v19 = vdupq_lane_s32(*a1, 0);
    v20 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 192), v4), v19), v4, *a1, 0);
    v21 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 176), v3), v19), v3, *a1, 0);
    v22 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 160), v2), v19), v2, *a1, 0);
    *(a1 + 144) = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 144), v1), v19), v1, *a1, 0);
    *(a1 + 160) = v22;
    *(a1 + 176) = v21;
    *(a1 + 192) = v20;
    v23 = vdupq_lane_s32(*v18.f32, 1);
    *(a1 + 208) = vmlsq_lane_f32(vaddq_f32(v10, v23), v1, *v18.f32, 1);
    *(a1 + 224) = vmlsq_lane_f32(vaddq_f32(v11, v23), v2, *v18.f32, 1);
    *(a1 + 240) = vmlsq_lane_f32(vaddq_f32(v12, v23), v3, *v18.f32, 1);
    *(a1 + 256) = vmlsq_lane_f32(vaddq_f32(v13, v23), v4, *v18.f32, 1);
    v24 = vdupq_laneq_s32(v18, 2);
    *(a1 + 272) = vmlsq_laneq_f32(vaddq_f32(v14, v24), v1, v18, 2);
    *(a1 + 288) = vmlsq_laneq_f32(vaddq_f32(v15, v24), v2, v18, 2);
    *(a1 + 304) = vmlsq_laneq_f32(vaddq_f32(v16, v24), v3, v18, 2);
    *(a1 + 320) = vmlsq_laneq_f32(vaddq_f32(v17, v24), v4, v18, 2);
  }

  *(a1 + 134) = 0;
  *(a1 + 136) = 1;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = _Q0;
  v25 = *(a1 + 124);
  *(a1 + 336) = _Q0;
  *(a1 + 352) = _Q0;
  if (v25 >= 0.0)
  {
    v28 = *(a1 + 176);
    v27 = *(a1 + 192);
    v30 = *(a1 + 144);
    v29 = *(a1 + 160);
    v32 = *(a1 + 240);
    v31 = *(a1 + 256);
    v34 = *(a1 + 208);
    v33 = *(a1 + 224);
    v36 = *(a1 + 304);
    v35 = *(a1 + 320);
    v38 = *(a1 + 272);
    v37 = *(a1 + 288);
  }

  else
  {
    v26 = *(a1 + 32);
    v28 = *(a1 + 176);
    v27 = *(a1 + 192);
    v30 = *(a1 + 144);
    v29 = *(a1 + 160);
    v32 = *(a1 + 240);
    v31 = *(a1 + 256);
    v34 = *(a1 + 208);
    v33 = *(a1 + 224);
    v36 = *(a1 + 304);
    v35 = *(a1 + 320);
    v38 = *(a1 + 272);
    v37 = *(a1 + 288);
    if (v26)
    {
      v39 = *v26;
    }

    else
    {
      v39 = xmmword_2984959B0;
    }

    v40 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v31, *v39.f32, 1), v27, v39.f32[0]), v35, v39, 2);
    v41 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v32, *v39.f32, 1), v28, v39.f32[0]), v36, v39, 2);
    v42 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v33, *v39.f32, 1), v29, v39.f32[0]), v37, v39, 2);
    v43 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v34, *v39.f32, 1), v30, v39.f32[0]), v38, v39, 2);
    *(a1 + 656) = v43;
    *(a1 + 672) = v42;
    *(a1 + 688) = v41;
    *(a1 + 704) = v40;
    v44 = vsubq_f32(v29, v42);
    v45 = vsubq_f32(v27, v40);
    v46 = vsubq_f32(v30, v43);
    v47 = vsubq_f32(v28, v41);
    v48 = vsubq_f32(v32, v41);
    v49 = vsubq_f32(v34, v43);
    v50 = vsubq_f32(v31, v40);
    v51 = vsubq_f32(v33, v42);
    v52 = vsubq_f32(v36, v41);
    v53 = vsubq_f32(v38, v43);
    v54 = vsubq_f32(v35, v40);
    v55 = vsubq_f32(v37, v42);
    v56 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v49, v49), v46, v46), v53, v53), vmlaq_f32(vmlaq_f32(vmulq_f32(v48, v48), v47, v47), v52, v52)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v51, v51), v44, v44), v55, v55), vmlaq_f32(vmlaq_f32(vmulq_f32(v50, v50), v45, v45), v54, v54)));
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v56.f32[0] = vrecpes_f32(vpadd_f32(*v56.f32, *v56.f32).f32[0]);
    *(a1 + 124) = (v56.f32[0] * 3.0) + (v56.f32[0] * 3.0);
  }

  v57 = vzip1q_s32(v30, v38);
  v58 = vzip2q_s32(v29, v37);
  v59 = vzip2q_s32(v30, v38);
  v60 = vzip2q_s32(v34, _Q0);
  v61 = vzip1q_s32(v59, v60);
  v62 = vzip2q_s32(v59, v60);
  v63 = vextq_s8(_Q0, _Q0, 0xCuLL);
  v64 = vzip1q_s32(v57, v63);
  v64.i32[1] = v34.i32[0];
  v65 = vzip1q_s32(_Q0, _Q0);
  v66 = vzip2q_s32(v57, v65);
  v66.i32[1] = v34.i32[1];
  *(a1 + 432) = v61;
  *(a1 + 448) = v62;
  v61.i64[0] = __PAIR64__(v33.u32[0], v29.u32[0]);
  v61.i64[1] = __PAIR64__(1.0, v37.u32[0]);
  v67 = vextq_s8(vuzp2q_s32(_Q0, v29), _Q0, 8uLL);
  v67.i32[1] = v33.i32[1];
  v67.i32[2] = v37.i32[1];
  v68 = vextq_s8(_Q0, _Q0, 4uLL);
  v69 = vzip1q_s32(v58, v68);
  v69.i32[1] = v33.i32[2];
  v70 = vzip2q_s32(v58, _Q0);
  v70.i32[1] = v33.i32[3];
  *(a1 + 400) = v64;
  *(a1 + 416) = v66;
  *(a1 + 496) = v69;
  *(a1 + 512) = v70;
  *(a1 + 464) = v61;
  *(a1 + 480) = v67;
  v71 = vzip1q_s32(v28, v36);
  v72 = vzip2q_s32(v27, v35);
  v73 = vzip2q_s32(v28, v36);
  v74 = vzip2q_s32(v32, _Q0);
  v75 = vzip1q_s32(v71, v63);
  v75.i32[1] = v32.i32[0];
  v76 = vzip2q_s32(v71, v65);
  v76.i32[1] = v32.i32[1];
  *(a1 + 560) = vzip1q_s32(v73, v74);
  *(a1 + 576) = vzip2q_s32(v73, v74);
  v73.i64[0] = __PAIR64__(v31.u32[0], v27.u32[0]);
  v73.i64[1] = __PAIR64__(1.0, v35.u32[0]);
  v77 = vextq_s8(vuzp2q_s32(_Q0, v27), _Q0, 8uLL);
  v77.i32[1] = v31.i32[1];
  v77.i32[2] = v35.i32[1];
  v78 = vzip1q_s32(v72, v68);
  v78.i32[1] = v31.i32[2];
  *(a1 + 528) = v75;
  *(a1 + 544) = v76;
  v79 = vzip2q_s32(v72, _Q0);
  v79.i32[1] = v31.i32[3];
  *(a1 + 624) = v78;
  *(a1 + 640) = v79;
  *(a1 + 592) = v73;
  *(a1 + 608) = v77;
  v80 = vmulq_f32(v27, v27);
  v81 = vmulq_f32(v28, v28);
  v82 = vpaddq_f32(vaddq_f32(vaddq_f32(v30, v28), vaddq_f32(v29, v27)), vaddq_f32(vaddq_f32(v34, v32), vaddq_f32(v33, v31)));
  __asm { FMOV            V16.4S, #4.0 }

  v84 = vpaddq_f32(v82, vpaddq_f32(vaddq_f32(vaddq_f32(v38, v36), vaddq_f32(v37, v35)), _Q16));
  v85 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v81, v30, v30), vmlaq_f32(v80, v29, v29)), vaddq_f32(vmlaq_f32(vmulq_f32(v32, v32), v34, v34), vmlaq_f32(vmulq_f32(v31, v31), v33, v33))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v36, v36), v38, v38), vmlaq_f32(vmulq_f32(v35, v35), v37, v37)), _Q16));
  v86 = vmulq_f32(v84, vdupq_n_s32(0x3D800000u));
  v87 = vmlsq_f32(v85, v86, v84);
  *(a1 + 16) = v86;
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  result = vpadd_f32(*v87.f32, *v87.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

uint64_t Premultiply_4x4_vec(uint64_t result)
{
  v2 = *(result + 336);
  v1 = *(result + 352);
  v3 = *(result + 368);
  v4 = *(result + 384);
  __asm { FMOV            V23.4S, #1.0 }

  v10 = vminnmq_f32(vmulq_f32(*(result + 144), v2), _Q23);
  v11 = vminnmq_f32(vmulq_f32(*(result + 160), v1), _Q23);
  v12 = vminnmq_f32(vmulq_f32(*(result + 176), v3), _Q23);
  v13 = vminnmq_f32(vmulq_f32(*(result + 192), v4), _Q23);
  *(result + 176) = v12;
  *(result + 192) = v13;
  *(result + 144) = v10;
  *(result + 160) = v11;
  v14 = vminnmq_f32(vmulq_f32(v2, *(result + 208)), _Q23);
  v15 = vminnmq_f32(vmulq_f32(v1, *(result + 224)), _Q23);
  v16 = vminnmq_f32(vmulq_f32(v3, *(result + 240)), _Q23);
  v17 = vminnmq_f32(vmulq_f32(v4, *(result + 256)), _Q23);
  *(result + 240) = v16;
  *(result + 256) = v17;
  *(result + 208) = v14;
  *(result + 224) = v15;
  v18 = vminnmq_f32(vmulq_f32(v2, *(result + 272)), _Q23);
  v19 = vminnmq_f32(vmulq_f32(v1, *(result + 288)), _Q23);
  v20 = vminnmq_f32(vmulq_f32(v3, *(result + 304)), _Q23);
  v21 = vminnmq_f32(vmulq_f32(v4, *(result + 320)), _Q23);
  *(result + 304) = v20;
  *(result + 320) = v21;
  v22 = *(result + 124);
  *(result + 272) = v18;
  *(result + 288) = v19;
  if (v22 < 0.0)
  {
    v23 = *(result + 32);
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = xmmword_2984959B0;
    }

    v25 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v17, *v24.f32, 1), v13, v24.f32[0]), v21, v24, 2);
    v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v24.f32, 1), v12, v24.f32[0]), v20, v24, 2);
    v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v24.f32, 1), v11, v24.f32[0]), v19, v24, 2);
    v28 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v24.f32, 1), v10, v24.f32[0]), v18, v24, 2);
    *(result + 656) = v28;
    *(result + 672) = v27;
    *(result + 688) = v26;
    *(result + 704) = v25;
    v29 = vsubq_f32(v11, v27);
    v30 = vsubq_f32(v13, v25);
    v31 = vsubq_f32(v10, v28);
    v32 = vsubq_f32(v12, v26);
    v33 = vsubq_f32(v16, v26);
    v34 = vsubq_f32(v14, v28);
    v35 = vsubq_f32(v17, v25);
    v36 = vsubq_f32(v15, v27);
    v37 = vsubq_f32(v20, v26);
    v38 = vsubq_f32(v18, v28);
    v39 = vsubq_f32(v21, v25);
    v40 = vsubq_f32(v19, v27);
    v41 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v34), v31, v31), v38, v38), vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v33), v32, v32), v37, v37)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v29, v29), v40, v40), vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v30, v30), v39, v39)));
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    v41.f32[0] = vrecpes_f32(vpadd_f32(*v41.f32, *v41.f32).f32[0]);
    *(result + 124) = (v41.f32[0] * 3.0) + (v41.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v42 = vdupq_n_s32(0x3B808081u);
    v43 = vcgeq_f32(v42, v3);
    v44 = vcgeq_f32(v42, v4);
    v45 = vcgeq_f32(v42, v1);
    v46 = vcgeq_f32(v42, v2);
    *(result + 720) = v46;
    *(result + 736) = v45;
    *(result + 752) = v43;
    *(result + 768) = v44;
    v47 = vorrq_s8(vandq_s8(vuzp1q_s16(v46, v45), xmmword_298495650), vandq_s8(vuzp1q_s16(v43, v44), xmmword_298495640));
    v47.i16[0] = vaddvq_s16(v47);
    *(result + 784) = v47.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v47.i8));
  }

  v48 = vzip1q_s32(v11, v19);
  v49 = vzip1q_s32(v10, v18);
  v50 = vzip2q_s32(v11, v19);
  v51 = vzip2q_s32(v10, v18);
  v52 = vzip2q_s32(v14, v2);
  v53 = vzip1q_s32(v51, v52);
  v54 = vzip2q_s32(v51, v52);
  v55 = vzip2q_s32(v49, vuzp2q_s32(v49, v14));
  v55.i32[3] = v2.i32[1];
  v56 = vzip1q_s32(v49, v14);
  v56.i32[3] = v2.i32[0];
  *(result + 432) = v53;
  *(result + 448) = v54;
  v57 = vzip2q_s32(v48, vuzp2q_s32(v48, v15));
  v57.i32[3] = v1.i32[1];
  *(result + 400) = v56;
  *(result + 416) = v55;
  v58 = vzip1q_s32(v48, v15);
  v58.i32[3] = v1.i32[0];
  v59 = vextq_s8(vzip2q_s32(v15, v50), v50, 4uLL);
  v59.i32[3] = v1.i32[3];
  v60 = vzip2q_s32(vextq_s8(v50, v50, 8uLL), v15);
  v60.i32[3] = v1.i32[2];
  *(result + 496) = v60;
  *(result + 512) = v59;
  *(result + 464) = v58;
  *(result + 480) = v57;
  v61 = vzip1q_s32(v13, v21);
  v62 = vzip1q_s32(v12, v20);
  v63 = vzip2q_s32(v13, v21);
  v64 = vzip2q_s32(v12, v20);
  v65 = vzip2q_s32(v16, v3);
  v66 = vzip1q_s32(v64, v65);
  v67 = vzip2q_s32(v62, vuzp2q_s32(v62, v16));
  v67.i32[3] = v3.i32[1];
  v68 = vzip1q_s32(v62, v16);
  v68.i32[3] = v3.i32[0];
  v69 = vzip2q_s32(v61, vuzp2q_s32(v61, v17));
  v69.i32[3] = v4.i32[1];
  v70 = vzip1q_s32(v61, v17);
  v70.i32[3] = v4.i32[0];
  v71 = vzip2q_s32(v64, v65);
  v72 = vextq_s8(vzip2q_s32(v17, v63), v63, 4uLL);
  v72.i32[3] = v4.i32[3];
  *(result + 560) = v66;
  *(result + 576) = v71;
  v73 = vzip2q_s32(vextq_s8(v63, v63, 8uLL), v17);
  v73.i32[3] = v4.i32[2];
  *(result + 528) = v68;
  *(result + 544) = v67;
  *(result + 624) = v73;
  *(result + 640) = v72;
  *(result + 592) = v70;
  *(result + 608) = v69;
  v74 = vmulq_f32(v3, v3);
  v75 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v10, v12), vaddq_f32(v11, v13)), vaddq_f32(vaddq_f32(v14, v16), vaddq_f32(v15, v17))), vpaddq_f32(vaddq_f32(vaddq_f32(v18, v20), vaddq_f32(v19, v21)), vaddq_f32(vaddq_f32(v2, v3), vaddq_f32(v1, v4))));
  v76 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v12, v12), v10, v10), vmlaq_f32(vmulq_f32(v13, v13), v11, v11)), vaddq_f32(vmlaq_f32(vmulq_f32(v16, v16), v14, v14), vmlaq_f32(vmulq_f32(v17, v17), v15, v15))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v20, v20), v18, v18), vmlaq_f32(vmulq_f32(v21, v21), v19, v19)), vaddq_f32(vmlaq_f32(v74, v2, v2), vmlaq_f32(vmulq_f32(v4, v4), v1, v1))));
  v77 = vmulq_f32(v75, vdupq_n_s32(0x3D800000u));
  v78 = vmlsq_f32(v76, v77, v75);
  *(result + 16) = v77;
  v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
  *(result + 120) = vpadd_f32(*v78.f32, *v78.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v77.f32[3] >= 0.99988;
  }

  return result;
}

uint64_t PassThrough_4x4_vec(uint64_t result)
{
  if (*(result + 124) < 0.0)
  {
    v1 = *(result + 32);
    v2 = *(result + 176);
    v3 = *(result + 192);
    v4 = *(result + 144);
    v5 = *(result + 160);
    v7 = *(result + 240);
    v6 = *(result + 256);
    v9 = *(result + 208);
    v8 = *(result + 224);
    v11 = *(result + 304);
    v10 = *(result + 320);
    v13 = *(result + 272);
    v12 = *(result + 288);
    if (v1)
    {
      v14 = *v1;
    }

    else
    {
      v14 = xmmword_2984959B0;
    }

    v15 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v6, *v14.f32, 1), v3, v14.f32[0]), v10, v14, 2);
    v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7, *v14.f32, 1), v2, v14.f32[0]), v11, v14, 2);
    v17 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *v14.f32, 1), v5, v14.f32[0]), v12, v14, 2);
    v18 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v14.f32, 1), v4, v14.f32[0]), v13, v14, 2);
    *(result + 656) = v18;
    *(result + 672) = v17;
    *(result + 688) = v16;
    *(result + 704) = v15;
    v19 = vsubq_f32(v5, v17);
    v20 = vsubq_f32(v3, v15);
    v21 = vsubq_f32(v4, v18);
    v22 = vsubq_f32(v2, v16);
    v23 = vsubq_f32(v7, v16);
    v24 = vsubq_f32(v9, v18);
    v25 = vsubq_f32(v6, v15);
    v26 = vsubq_f32(v8, v17);
    v27 = vsubq_f32(v11, v16);
    v28 = vsubq_f32(v13, v18);
    v29 = vsubq_f32(v10, v15);
    v30 = vsubq_f32(v12, v17);
    v31 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v24, v24), v21, v21), v28, v28), vmlaq_f32(vmlaq_f32(vmulq_f32(v23, v23), v22, v22), v27, v27)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v26, v26), v19, v19), v30, v30), vmlaq_f32(vmlaq_f32(vmulq_f32(v25, v25), v20, v20), v29, v29)));
    v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
    v31.f32[0] = vrecpes_f32(vpadd_f32(*v31.f32, *v31.f32).f32[0]);
    *(result + 124) = (v31.f32[0] * 3.0) + (v31.f32[0] * 3.0);
  }

  v33 = *(result + 368);
  v32 = *(result + 384);
  v35 = *(result + 336);
  v34 = *(result + 352);
  if (*(result + 134) < 0)
  {
    v36 = vdupq_n_s32(0x3B808081u);
    v37 = vcgeq_f32(v36, v33);
    v38 = vcgeq_f32(v36, v32);
    v39 = vcgeq_f32(v36, v34);
    v40 = vcgeq_f32(v36, v35);
    *(result + 720) = v40;
    *(result + 736) = v39;
    *(result + 752) = v37;
    *(result + 768) = v38;
    v41 = vorrq_s8(vandq_s8(vuzp1q_s16(v40, v39), xmmword_298495650), vandq_s8(vuzp1q_s16(v37, v38), xmmword_298495640));
    v41.i16[0] = vaddvq_s16(v41);
    *(result + 784) = v41.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v41.i8));
  }

  v42 = *(result + 176);
  v43 = *(result + 192);
  v44 = *(result + 144);
  v45 = *(result + 160);
  v47 = *(result + 240);
  v46 = *(result + 256);
  v48 = *(result + 208);
  v49 = *(result + 224);
  v50 = *(result + 304);
  v51 = *(result + 320);
  v52 = *(result + 272);
  v53 = *(result + 288);
  v54 = vzip1q_s32(v45, v53);
  v55 = vzip1q_s32(v44, v52);
  v56 = vzip2q_s32(v45, v53);
  v57 = vzip2q_s32(v44, v52);
  v58 = vzip2q_s32(v48, v35);
  v59 = vzip1q_s32(v57, v58);
  v60 = vzip2q_s32(v57, v58);
  v61 = vzip2q_s32(v55, vuzp2q_s32(v55, v48));
  v61.i32[3] = v35.i32[1];
  v62 = vzip1q_s32(v55, v48);
  v62.i32[3] = v35.i32[0];
  *(result + 432) = v59;
  *(result + 448) = v60;
  v63 = vzip2q_s32(v54, vuzp2q_s32(v54, v49));
  v63.i32[3] = v34.i32[1];
  *(result + 400) = v62;
  *(result + 416) = v61;
  v64 = vzip1q_s32(v54, v49);
  v64.i32[3] = v34.i32[0];
  v65 = vextq_s8(vzip2q_s32(v49, v56), v56, 4uLL);
  v65.i32[3] = v34.i32[3];
  v66 = vzip2q_s32(vextq_s8(v56, v56, 8uLL), v49);
  v66.i32[3] = v34.i32[2];
  *(result + 496) = v66;
  *(result + 512) = v65;
  *(result + 464) = v64;
  *(result + 480) = v63;
  v67 = vzip1q_s32(v43, v51);
  v68 = vzip1q_s32(v42, v50);
  v69 = vzip2q_s32(v43, v51);
  v70 = vzip2q_s32(v42, v50);
  v71 = vzip2q_s32(v47, v33);
  v72 = vzip1q_s32(v70, v71);
  v73 = vzip2q_s32(v68, vuzp2q_s32(v68, v47));
  v73.i32[3] = v33.i32[1];
  v74 = vzip1q_s32(v68, v47);
  v74.i32[3] = v33.i32[0];
  v75 = vzip2q_s32(v67, vuzp2q_s32(v67, v46));
  v75.i32[3] = v32.i32[1];
  v76 = vzip1q_s32(v67, v46);
  v76.i32[3] = v32.i32[0];
  v77 = vzip2q_s32(v70, v71);
  v78 = vextq_s8(vzip2q_s32(v46, v69), v69, 4uLL);
  v78.i32[3] = v32.i32[3];
  *(result + 560) = v72;
  *(result + 576) = v77;
  v79 = vzip2q_s32(vextq_s8(v69, v69, 8uLL), v46);
  v79.i32[3] = v32.i32[2];
  *(result + 528) = v74;
  *(result + 544) = v73;
  *(result + 624) = v79;
  *(result + 640) = v78;
  *(result + 592) = v76;
  *(result + 608) = v75;
  v80 = vmulq_f32(v32, v32);
  v81 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v44, v42), vaddq_f32(v45, v43)), vaddq_f32(vaddq_f32(v48, v47), vaddq_f32(v49, v46))), vpaddq_f32(vaddq_f32(vaddq_f32(v52, v50), vaddq_f32(v53, v51)), vaddq_f32(vaddq_f32(v35, v33), vaddq_f32(v34, v32))));
  v82 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v42, v42), v44, v44), vmlaq_f32(vmulq_f32(v43, v43), v45, v45)), vaddq_f32(vmlaq_f32(vmulq_f32(v47, v47), v48, v48), vmlaq_f32(vmulq_f32(v46, v46), v49, v49))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v50, v50), v52, v52), vmlaq_f32(vmulq_f32(v51, v51), v53, v53)), vaddq_f32(vmlaq_f32(vmulq_f32(v33, v33), v35, v35), vmlaq_f32(v80, v34, v34))));
  v83 = vmulq_f32(v81, vdupq_n_s32(0x3D800000u));
  v84 = vmlsq_f32(v82, v83, v81);
  *(result + 16) = v83;
  v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
  *(result + 120) = vpadd_f32(*v84.f32, *v84.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v83.f32[3] >= 0.99988;
  }

  return result;
}

float32x2_t SetAlphaOne_8x8_vec(uint64_t a1)
{
  if (*(a1 + 136) != 1)
  {
    *(a1 + 134) = 0;
    *(a1 + 136) = 1;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2272) = 0u;
    *(a1 + 2288) = 0u;
    *(a1 + 2304) = 0u;
    *(a1 + 2320) = 0u;
    *(a1 + 2336) = 0u;
    *(a1 + 2352) = 0u;
    *(a1 + 2368) = 0u;
    *(a1 + 2384) = 0u;
    *(a1 + 2400) = 0u;
    *(a1 + 2416) = 0u;
    *(a1 + 2432) = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 912) = _Q0;
    *(a1 + 928) = _Q0;
    *(a1 + 944) = _Q0;
    *(a1 + 960) = _Q0;
    *(a1 + 976) = _Q0;
    *(a1 + 992) = _Q0;
    *(a1 + 1008) = _Q0;
    *(a1 + 1024) = _Q0;
    *(a1 + 1040) = _Q0;
    *(a1 + 1056) = _Q0;
    *(a1 + 1072) = _Q0;
    *(a1 + 1088) = _Q0;
    *(a1 + 1104) = _Q0;
    *(a1 + 1120) = _Q0;
    *(a1 + 1136) = _Q0;
    *(a1 + 1152) = _Q0;
  }

  if (*(a1 + 124) < 0.0)
  {
    v6 = *(a1 + 32);
    v7 = 0uLL;
    v8 = 8;
    v9 = a1;
    v10 = 0uLL;
    do
    {
      v11 = xmmword_2984959B0;
      if (v6)
      {
        v11 = *v6;
      }

      v13 = v9[9];
      v12 = v9[10];
      v15 = v9[25];
      v14 = v9[26];
      v17 = v9[41];
      v16 = v9[42];
      v18 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v11.f32, 1), v12, v11.f32[0]), v16, v11, 2);
      v19 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v11.f32, 1), v13, v11.f32[0]), v17, v11, 2);
      v9[153] = v19;
      v9[154] = v18;
      v20 = vsubq_f32(v12, v18);
      v21 = vsubq_f32(v13, v19);
      v22 = vsubq_f32(v15, v19);
      v23 = vsubq_f32(v14, v18);
      v24 = vsubq_f32(v17, v19);
      v25 = vsubq_f32(v16, v18);
      v7 = vaddq_f32(v7, vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v22), v21, v21), v24, v24));
      v10 = vaddq_f32(v10, vmlaq_f32(vmlaq_f32(vmulq_f32(v23, v23), v20, v20), v25, v25));
      v9 += 2;
      --v8;
    }

    while (v8);
    v26 = vaddq_f32(v7, v10);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    v26.f32[0] = vrecpes_f32(vpadd_f32(*v26.f32, *v26.f32).f32[0]);
    *(a1 + 124) = (v26.f32[0] * 3.0) + (v26.f32[0] * 3.0);
  }

  if (*(a1 + 134) < 0)
  {
    v27 = (a1 + 2192);
    v28 = 0uLL;
    v29 = 8;
    v30 = vdupq_n_s32(0x3B808081u);
    v31 = 0uLL;
    do
    {
      v32 = vcgeq_f32(v30, v27[-80]);
      v33 = vcgeq_f32(v30, v27[-79]);
      *v27 = v32;
      v27[1] = v33;
      v27 += 2;
      v31 = vsubq_s32(v31, v33);
      v28 = vsubq_s32(v28, v32);
      --v29;
    }

    while (v29);
    v34 = vaddq_s32(v28, v31);
    v34.i64[0] = vpaddq_s32(v34, v34).u64[0];
    *(a1 + 134) = vpadd_s32(*v34.i8, *v34.i8).u8[0];
  }

  v35 = 0;
  v36 = 400;
  do
  {
    v37 = *(a1 + v36 - 256);
    v38 = *(a1 + v36 - 240);
    v39 = *(a1 + v36);
    v40 = *(a1 + v36 + 16);
    v41 = *(a1 + v36 + 256);
    v42 = *(a1 + v36 + 272);
    v43 = *(a1 + v36 + 512);
    v44 = *(a1 + v36 + 528);
    v79.val[0] = vzip1q_s32(v37, v41);
    v79.val[1] = vzip1q_s32(v39, v43);
    v45 = (a1 + v35 + 1168);
    vst2q_f32(v45, v79);
    v79.val[0] = vzip2q_s32(v38, v42);
    v80.val[0] = vzip1q_s32(v38, v42);
    v78.val[0] = vzip2q_s32(v37, v41);
    v78.val[1] = vzip2q_s32(v39, v43);
    v46 = (a1 + v35 + 1200);
    vst2q_f32(v46, v78);
    v80.val[1] = vzip1q_s32(v40, v44);
    v47 = (a1 + v35 + 1232);
    vst2q_f32(v47, v80);
    v79.val[1] = vzip2q_s32(v40, v44);
    v48 = (a1 + v35 + 1264);
    vst2q_f32(v48, v79);
    v35 += 128;
    v36 += 32;
  }

  while (v35 != 1024);
  v49 = *(a1 + 144);
  v50 = *(a1 + 160);
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v53 = *(a1 + 656);
  v54 = *(a1 + 672);
  v55 = vmulq_f32(v50, v50);
  v56 = vmulq_f32(v49, v49);
  v57 = *(a1 + 912);
  v58 = *(a1 + 928);
  v59 = vmulq_f32(v52, v52);
  v60 = vmulq_f32(v51, v51);
  v61 = vmulq_f32(v54, v54);
  v62 = vmulq_f32(v53, v53);
  v63 = vmulq_f32(v58, v58);
  v64 = vmulq_f32(v57, v57);
  for (i = 432; i != 656; i += 32)
  {
    v66 = *(a1 + i - 256);
    v67 = *(a1 + i - 240);
    v68 = *(a1 + i);
    v69 = *(a1 + i + 16);
    v70 = *(a1 + i + 256);
    v71 = *(a1 + i + 272);
    v72 = *(a1 + i + 512);
    v73 = *(a1 + i + 528);
    v50 = vaddq_f32(v50, v67);
    v49 = vaddq_f32(v49, v66);
    v52 = vaddq_f32(v52, v69);
    v51 = vaddq_f32(v51, v68);
    v54 = vaddq_f32(v54, v71);
    v53 = vaddq_f32(v53, v70);
    v58 = vaddq_f32(v58, v73);
    v57 = vaddq_f32(v57, v72);
    v55 = vmlaq_f32(v55, v67, v67);
    v56 = vmlaq_f32(v56, v66, v66);
    v59 = vmlaq_f32(v59, v69, v69);
    v60 = vmlaq_f32(v60, v68, v68);
    v61 = vmlaq_f32(v61, v71, v71);
    v62 = vmlaq_f32(v62, v70, v70);
    v63 = vmlaq_f32(v63, v73, v73);
    v64 = vmlaq_f32(v64, v72, v72);
  }

  v74 = vpaddq_f32(vpaddq_f32(vaddq_f32(v49, v50), vaddq_f32(v51, v52)), vpaddq_f32(vaddq_f32(v53, v54), vaddq_f32(v57, v58)));
  v75 = vmulq_f32(v74, vdupq_n_s32(0x3C800000u));
  v76 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v56, v55), vaddq_f32(v60, v59)), vpaddq_f32(vaddq_f32(v62, v61), vaddq_f32(v64, v63))), v75, v74);
  *(a1 + 16) = v75;
  v74.i64[0] = vpaddq_f32(v76, v76).u64[0];
  result = vpadd_f32(*v74.f32, *v74.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenNon_8x8_vec(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 0)
  {
    v2 = vdupq_lane_s32(*a1, 0);
    v3 = vdupq_lane_s32(*a1, 1);
    v4 = vdupq_laneq_s32(*a1, 2);
    for (i = 400; i != 656; i += 32)
    {
      v6 = (a1 + i);
      v7 = *(a1 + i + 512);
      v8 = *(a1 + i + 528);
      v9 = vmlaq_f32(v2, vsubq_f32(*(a1 + i - 240), v2), v8);
      v6[-16] = vmlaq_f32(v2, vsubq_f32(*(a1 + i - 256), v2), v7);
      v6[-15] = v9;
      v10 = vmlaq_f32(v3, vsubq_f32(*(a1 + i + 16), v3), v8);
      *v6 = vmlaq_f32(v3, vsubq_f32(*(a1 + i), v3), v7);
      v6[1] = v10;
      v11 = vmlaq_f32(v4, vsubq_f32(*(a1 + i + 272), v4), v8);
      v6[16] = vmlaq_f32(v4, vsubq_f32(*(a1 + i + 256), v4), v7);
      v6[17] = v11;
    }
  }

  if (v1 != 1)
  {
    *(a1 + 134) = 0;
    *(a1 + 136) = 1;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2272) = 0u;
    *(a1 + 2288) = 0u;
    *(a1 + 2304) = 0u;
    *(a1 + 2320) = 0u;
    *(a1 + 2336) = 0u;
    *(a1 + 2352) = 0u;
    *(a1 + 2368) = 0u;
    *(a1 + 2384) = 0u;
    *(a1 + 2400) = 0u;
    *(a1 + 2416) = 0u;
    *(a1 + 2432) = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 912) = _Q0;
    *(a1 + 928) = _Q0;
    *(a1 + 944) = _Q0;
    *(a1 + 960) = _Q0;
    *(a1 + 976) = _Q0;
    *(a1 + 992) = _Q0;
    *(a1 + 1008) = _Q0;
    *(a1 + 1024) = _Q0;
    *(a1 + 1040) = _Q0;
    *(a1 + 1056) = _Q0;
    *(a1 + 1072) = _Q0;
    *(a1 + 1088) = _Q0;
    *(a1 + 1104) = _Q0;
    *(a1 + 1120) = _Q0;
    *(a1 + 1136) = _Q0;
    *(a1 + 1152) = _Q0;
  }

  if (*(a1 + 124) < 0.0)
  {
    v17 = *(a1 + 32);
    v18 = 0uLL;
    v19 = 8;
    v20 = a1;
    v21 = 0uLL;
    do
    {
      v22 = xmmword_2984959B0;
      if (v17)
      {
        v22 = *v17;
      }

      v24 = v20[9];
      v23 = v20[10];
      v26 = v20[25];
      v25 = v20[26];
      v28 = v20[41];
      v27 = v20[42];
      v29 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25, *v22.f32, 1), v23, v22.f32[0]), v27, v22, 2);
      v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v26, *v22.f32, 1), v24, v22.f32[0]), v28, v22, 2);
      v20[153] = v30;
      v20[154] = v29;
      v31 = vsubq_f32(v23, v29);
      v32 = vsubq_f32(v24, v30);
      v33 = vsubq_f32(v26, v30);
      v34 = vsubq_f32(v25, v29);
      v35 = vsubq_f32(v28, v30);
      v36 = vsubq_f32(v27, v29);
      v18 = vaddq_f32(v18, vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v33), v32, v32), v35, v35));
      v21 = vaddq_f32(v21, vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v34), v31, v31), v36, v36));
      v20 += 2;
      --v19;
    }

    while (v19);
    v37 = vaddq_f32(v18, v21);
    v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
    v37.f32[0] = vrecpes_f32(vpadd_f32(*v37.f32, *v37.f32).f32[0]);
    *(a1 + 124) = (v37.f32[0] * 3.0) + (v37.f32[0] * 3.0);
  }

  if (*(a1 + 134) < 0)
  {
    v38 = (a1 + 2192);
    v39 = 0uLL;
    v40 = 8;
    v41 = vdupq_n_s32(0x3B808081u);
    v42 = 0uLL;
    do
    {
      v43 = vcgeq_f32(v41, v38[-80]);
      v44 = vcgeq_f32(v41, v38[-79]);
      *v38 = v43;
      v38[1] = v44;
      v38 += 2;
      v42 = vsubq_s32(v42, v44);
      v39 = vsubq_s32(v39, v43);
      --v40;
    }

    while (v40);
    v45 = vaddq_s32(v39, v42);
    v45.i64[0] = vpaddq_s32(v45, v45).u64[0];
    *(a1 + 134) = vpadd_s32(*v45.i8, *v45.i8).u8[0];
  }

  v46 = 0;
  v47 = 400;
  do
  {
    v48 = *(a1 + v47 - 256);
    v49 = *(a1 + v47 - 240);
    v50 = *(a1 + v47);
    v51 = *(a1 + v47 + 16);
    v52 = *(a1 + v47 + 256);
    v53 = *(a1 + v47 + 272);
    v54 = *(a1 + v47 + 512);
    v55 = *(a1 + v47 + 528);
    v90.val[0] = vzip1q_s32(v48, v52);
    v90.val[1] = vzip1q_s32(v50, v54);
    v56 = (a1 + v46 + 1168);
    vst2q_f32(v56, v90);
    v90.val[0] = vzip2q_s32(v49, v53);
    v91.val[0] = vzip1q_s32(v49, v53);
    v89.val[0] = vzip2q_s32(v48, v52);
    v89.val[1] = vzip2q_s32(v50, v54);
    v57 = (a1 + v46 + 1200);
    vst2q_f32(v57, v89);
    v91.val[1] = vzip1q_s32(v51, v55);
    v58 = (a1 + v46 + 1232);
    vst2q_f32(v58, v91);
    v90.val[1] = vzip2q_s32(v51, v55);
    v59 = (a1 + v46 + 1264);
    vst2q_f32(v59, v90);
    v46 += 128;
    v47 += 32;
  }

  while (v46 != 1024);
  v60 = *(a1 + 144);
  v61 = *(a1 + 160);
  v62 = *(a1 + 400);
  v63 = *(a1 + 416);
  v64 = *(a1 + 656);
  v65 = *(a1 + 672);
  v66 = vmulq_f32(v61, v61);
  v67 = vmulq_f32(v60, v60);
  v68 = *(a1 + 912);
  v69 = *(a1 + 928);
  v70 = vmulq_f32(v63, v63);
  v71 = vmulq_f32(v62, v62);
  v72 = vmulq_f32(v65, v65);
  v73 = vmulq_f32(v64, v64);
  v74 = vmulq_f32(v69, v69);
  v75 = vmulq_f32(v68, v68);
  for (j = 432; j != 656; j += 32)
  {
    v77 = *(a1 + j - 256);
    v78 = *(a1 + j - 240);
    v79 = *(a1 + j);
    v80 = *(a1 + j + 16);
    v81 = *(a1 + j + 256);
    v82 = *(a1 + j + 272);
    v83 = *(a1 + j + 512);
    v84 = *(a1 + j + 528);
    v61 = vaddq_f32(v61, v78);
    v60 = vaddq_f32(v60, v77);
    v63 = vaddq_f32(v63, v80);
    v62 = vaddq_f32(v62, v79);
    v65 = vaddq_f32(v65, v82);
    v64 = vaddq_f32(v64, v81);
    v69 = vaddq_f32(v69, v84);
    v68 = vaddq_f32(v68, v83);
    v66 = vmlaq_f32(v66, v78, v78);
    v67 = vmlaq_f32(v67, v77, v77);
    v70 = vmlaq_f32(v70, v80, v80);
    v71 = vmlaq_f32(v71, v79, v79);
    v72 = vmlaq_f32(v72, v82, v82);
    v73 = vmlaq_f32(v73, v81, v81);
    v74 = vmlaq_f32(v74, v84, v84);
    v75 = vmlaq_f32(v75, v83, v83);
  }

  v85 = vpaddq_f32(vpaddq_f32(vaddq_f32(v60, v61), vaddq_f32(v62, v63)), vpaddq_f32(vaddq_f32(v64, v65), vaddq_f32(v68, v69)));
  v86 = vmulq_f32(v85, vdupq_n_s32(0x3C800000u));
  v87 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v67, v66), vaddq_f32(v71, v70)), vpaddq_f32(vaddq_f32(v73, v72), vaddq_f32(v75, v74))), v86, v85);
  *(a1 + 16) = v86;
  v85.i64[0] = vpaddq_f32(v87, v87).u64[0];
  result = vpadd_f32(*v85.f32, *v85.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenPre_8x8_vec(uint64_t a1)
{
  if (*(a1 + 136) <= 0)
  {
    v1 = 400;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v7 = (a1 + v1);
      v8 = *(a1 + v1 + 512);
      v9 = *(a1 + v1 + 528);
      if ((vminvq_u32(vandq_s8(vceqq_f32(v8, _Q0), vceqq_f32(v9, _Q0))) & 0x80000000) == 0)
      {
        v10 = vminnmq_f32(*v7, v8);
        v11 = vminnmq_f32(v7[1], v9);
        v12 = vminnmq_f32(v7[16], v8);
        v13 = vminnmq_f32(v7[17], v9);
        v14 = *a1;
        v15 = vdupq_lane_s32(*a1, 0);
        v16 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(v7[-15], v9), v15), v9, *a1, 0);
        v7[-16] = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(v7[-16], v8), v15), v8, *a1, 0);
        v7[-15] = v16;
        v17 = vdupq_lane_s32(*v14.f32, 1);
        *v7 = vmlsq_lane_f32(vaddq_f32(v10, v17), v8, *v14.f32, 1);
        v7[1] = vmlsq_lane_f32(vaddq_f32(v11, v17), v9, *v14.f32, 1);
        v18 = vdupq_laneq_s32(v14, 2);
        v7[16] = vmlsq_laneq_f32(vaddq_f32(v12, v18), v8, v14, 2);
        v7[17] = vmlsq_laneq_f32(vaddq_f32(v13, v18), v9, v14, 2);
      }

      v1 += 32;
    }

    while (v1 != 656);
    *(a1 + 134) = 0;
    *(a1 + 136) = 1;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2272) = 0u;
    *(a1 + 2288) = 0u;
    *(a1 + 2304) = 0u;
    *(a1 + 2320) = 0u;
    *(a1 + 2336) = 0u;
    *(a1 + 2352) = 0u;
    *(a1 + 2368) = 0u;
    *(a1 + 2384) = 0u;
    *(a1 + 2400) = 0u;
    *(a1 + 2416) = 0u;
    *(a1 + 2432) = 0u;
    *(a1 + 912) = _Q0;
    *(a1 + 928) = _Q0;
    *(a1 + 944) = _Q0;
    *(a1 + 960) = _Q0;
    *(a1 + 976) = _Q0;
    *(a1 + 992) = _Q0;
    *(a1 + 1008) = _Q0;
    *(a1 + 1024) = _Q0;
    *(a1 + 1040) = _Q0;
    *(a1 + 1056) = _Q0;
    *(a1 + 1072) = _Q0;
    *(a1 + 1088) = _Q0;
    *(a1 + 1104) = _Q0;
    *(a1 + 1120) = _Q0;
    *(a1 + 1136) = _Q0;
    *(a1 + 1152) = _Q0;
  }

  if (*(a1 + 124) < 0.0)
  {
    v19 = *(a1 + 32);
    v20 = 0uLL;
    v21 = 8;
    v22 = a1;
    v23 = 0uLL;
    do
    {
      v24 = xmmword_2984959B0;
      if (v19)
      {
        v24 = *v19;
      }

      v26 = v22[9];
      v25 = v22[10];
      v28 = v22[25];
      v27 = v22[26];
      v30 = v22[41];
      v29 = v22[42];
      v31 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v27, *v24.f32, 1), v25, v24.f32[0]), v29, v24, 2);
      v32 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v28, *v24.f32, 1), v26, v24.f32[0]), v30, v24, 2);
      v22[153] = v32;
      v22[154] = v31;
      v33 = vsubq_f32(v25, v31);
      v34 = vsubq_f32(v26, v32);
      v35 = vsubq_f32(v28, v32);
      v36 = vsubq_f32(v27, v31);
      v37 = vsubq_f32(v30, v32);
      v38 = vsubq_f32(v29, v31);
      v20 = vaddq_f32(v20, vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v37, v37));
      v23 = vaddq_f32(v23, vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v33, v33), v38, v38));
      v22 += 2;
      --v21;
    }

    while (v21);
    v39 = vaddq_f32(v20, v23);
    v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
    v39.f32[0] = vrecpes_f32(vpadd_f32(*v39.f32, *v39.f32).f32[0]);
    *(a1 + 124) = (v39.f32[0] * 3.0) + (v39.f32[0] * 3.0);
  }

  if (*(a1 + 134) < 0)
  {
    v40 = (a1 + 2192);
    v41 = 0uLL;
    v42 = 8;
    v43 = vdupq_n_s32(0x3B808081u);
    v44 = 0uLL;
    do
    {
      v45 = vcgeq_f32(v43, v40[-80]);
      v46 = vcgeq_f32(v43, v40[-79]);
      *v40 = v45;
      v40[1] = v46;
      v40 += 2;
      v44 = vsubq_s32(v44, v46);
      v41 = vsubq_s32(v41, v45);
      --v42;
    }

    while (v42);
    v47 = vaddq_s32(v41, v44);
    v47.i64[0] = vpaddq_s32(v47, v47).u64[0];
    *(a1 + 134) = vpadd_s32(*v47.i8, *v47.i8).u8[0];
  }

  v48 = 0;
  v49 = 400;
  do
  {
    v50 = *(a1 + v49 - 256);
    v51 = *(a1 + v49 - 240);
    v52 = *(a1 + v49);
    v53 = *(a1 + v49 + 16);
    v54 = *(a1 + v49 + 256);
    v55 = *(a1 + v49 + 272);
    v56 = *(a1 + v49 + 512);
    v57 = *(a1 + v49 + 528);
    v92.val[0] = vzip1q_s32(v50, v54);
    v92.val[1] = vzip1q_s32(v52, v56);
    v58 = (a1 + v48 + 1168);
    vst2q_f32(v58, v92);
    v92.val[0] = vzip2q_s32(v51, v55);
    v93.val[0] = vzip1q_s32(v51, v55);
    v91.val[0] = vzip2q_s32(v50, v54);
    v91.val[1] = vzip2q_s32(v52, v56);
    v59 = (a1 + v48 + 1200);
    vst2q_f32(v59, v91);
    v93.val[1] = vzip1q_s32(v53, v57);
    v60 = (a1 + v48 + 1232);
    vst2q_f32(v60, v93);
    v92.val[1] = vzip2q_s32(v53, v57);
    v61 = (a1 + v48 + 1264);
    vst2q_f32(v61, v92);
    v48 += 128;
    v49 += 32;
  }

  while (v48 != 1024);
  v62 = *(a1 + 144);
  v63 = *(a1 + 160);
  v64 = *(a1 + 400);
  v65 = *(a1 + 416);
  v66 = *(a1 + 656);
  v67 = *(a1 + 672);
  v68 = vmulq_f32(v63, v63);
  v69 = vmulq_f32(v62, v62);
  v70 = *(a1 + 912);
  v71 = *(a1 + 928);
  v72 = vmulq_f32(v65, v65);
  v73 = vmulq_f32(v64, v64);
  v74 = vmulq_f32(v67, v67);
  v75 = vmulq_f32(v66, v66);
  v76 = vmulq_f32(v71, v71);
  v77 = vmulq_f32(v70, v70);
  for (i = 432; i != 656; i += 32)
  {
    v79 = *(a1 + i - 256);
    v80 = *(a1 + i - 240);
    v81 = *(a1 + i);
    v82 = *(a1 + i + 16);
    v83 = *(a1 + i + 256);
    v84 = *(a1 + i + 272);
    v85 = *(a1 + i + 512);
    v86 = *(a1 + i + 528);
    v63 = vaddq_f32(v63, v80);
    v62 = vaddq_f32(v62, v79);
    v65 = vaddq_f32(v65, v82);
    v64 = vaddq_f32(v64, v81);
    v67 = vaddq_f32(v67, v84);
    v66 = vaddq_f32(v66, v83);
    v71 = vaddq_f32(v71, v86);
    v70 = vaddq_f32(v70, v85);
    v68 = vmlaq_f32(v68, v80, v80);
    v69 = vmlaq_f32(v69, v79, v79);
    v72 = vmlaq_f32(v72, v82, v82);
    v73 = vmlaq_f32(v73, v81, v81);
    v74 = vmlaq_f32(v74, v84, v84);
    v75 = vmlaq_f32(v75, v83, v83);
    v76 = vmlaq_f32(v76, v86, v86);
    v77 = vmlaq_f32(v77, v85, v85);
  }

  v87 = vpaddq_f32(vpaddq_f32(vaddq_f32(v62, v63), vaddq_f32(v64, v65)), vpaddq_f32(vaddq_f32(v66, v67), vaddq_f32(v70, v71)));
  v88 = vmulq_f32(v87, vdupq_n_s32(0x3C800000u));
  v89 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v69, v68), vaddq_f32(v73, v72)), vpaddq_f32(vaddq_f32(v75, v74), vaddq_f32(v77, v76))), v88, v87);
  *(a1 + 16) = v88;
  v87.i64[0] = vpaddq_f32(v89, v89).u64[0];
  result = vpadd_f32(*v87.f32, *v87.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

uint64_t Premultiply_8x8_vec(uint64_t result)
{
  v1 = *(result + 136);
  if (v1 <= 0)
  {
    v2 = 400;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v8 = (result + v2);
      v9 = *(result + v2 + 512);
      v10 = *(result + v2 + 528);
      v11 = vminnmq_f32(vmulq_f32(*(result + v2 - 240), v10), _Q0);
      v8[-16] = vminnmq_f32(vmulq_f32(*(result + v2 - 256), v9), _Q0);
      v8[-15] = v11;
      v12 = vminnmq_f32(vmulq_f32(v10, *(result + v2 + 16)), _Q0);
      *v8 = vminnmq_f32(vmulq_f32(v9, *(result + v2)), _Q0);
      v8[1] = v12;
      v13 = vminnmq_f32(vmulq_f32(v10, *(result + v2 + 272)), _Q0);
      v8[16] = vminnmq_f32(vmulq_f32(v9, *(result + v2 + 256)), _Q0);
      v8[17] = v13;
      v2 += 32;
    }

    while (v2 != 656);
  }

  if (*(result + 124) < 0.0)
  {
    v14 = *(result + 32);
    v15 = 0uLL;
    v16 = 8;
    v17 = result;
    v18 = 0uLL;
    do
    {
      v19 = xmmword_2984959B0;
      if (v14)
      {
        v19 = *v14;
      }

      v21 = v17[9];
      v20 = v17[10];
      v23 = v17[25];
      v22 = v17[26];
      v25 = v17[41];
      v24 = v17[42];
      v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v22, *v19.f32, 1), v20, v19.f32[0]), v24, v19, 2);
      v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v19.f32, 1), v21, v19.f32[0]), v25, v19, 2);
      v17[153] = v27;
      v17[154] = v26;
      v28 = vsubq_f32(v20, v26);
      v29 = vsubq_f32(v21, v27);
      v30 = vsubq_f32(v23, v27);
      v31 = vsubq_f32(v22, v26);
      v32 = vsubq_f32(v25, v27);
      v33 = vsubq_f32(v24, v26);
      v15 = vaddq_f32(v15, vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v30), v29, v29), v32, v32));
      v18 = vaddq_f32(v18, vmlaq_f32(vmlaq_f32(vmulq_f32(v31, v31), v28, v28), v33, v33));
      v17 += 2;
      --v16;
    }

    while (v16);
    v34 = vaddq_f32(v15, v18);
    v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
    v34.f32[0] = vrecpes_f32(vpadd_f32(*v34.f32, *v34.f32).f32[0]);
    *(result + 124) = (v34.f32[0] * 3.0) + (v34.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v35 = (result + 2192);
    v36 = 0uLL;
    v37 = 8;
    v38 = vdupq_n_s32(0x3B808081u);
    v39 = 0uLL;
    do
    {
      v40 = vcgeq_f32(v38, v35[-80]);
      v41 = vcgeq_f32(v38, v35[-79]);
      *v35 = v40;
      v35[1] = v41;
      v35 += 2;
      v39 = vsubq_s32(v39, v41);
      v36 = vsubq_s32(v36, v40);
      --v37;
    }

    while (v37);
    v42 = vaddq_s32(v36, v39);
    v42.i64[0] = vpaddq_s32(v42, v42).u64[0];
    *(result + 134) = vpadd_s32(*v42.i8, *v42.i8).u8[0];
  }

  v43 = 0;
  v44 = 400;
  do
  {
    v45 = *(result + v44 - 256);
    v46 = *(result + v44 - 240);
    v47 = *(result + v44);
    v48 = *(result + v44 + 16);
    v49 = *(result + v44 + 256);
    v50 = *(result + v44 + 272);
    v51 = *(result + v44 + 512);
    v52 = *(result + v44 + 528);
    v86.val[0] = vzip1q_s32(v45, v49);
    v86.val[1] = vzip1q_s32(v47, v51);
    v53 = (result + v43 + 1168);
    vst2q_f32(v53, v86);
    v86.val[0] = vzip2q_s32(v46, v50);
    v87.val[0] = vzip1q_s32(v46, v50);
    v85.val[0] = vzip2q_s32(v45, v49);
    v85.val[1] = vzip2q_s32(v47, v51);
    v54 = (result + v43 + 1200);
    vst2q_f32(v54, v85);
    v87.val[1] = vzip1q_s32(v48, v52);
    v55 = (result + v43 + 1232);
    vst2q_f32(v55, v87);
    v86.val[1] = vzip2q_s32(v48, v52);
    v56 = (result + v43 + 1264);
    vst2q_f32(v56, v86);
    v43 += 128;
    v44 += 32;
  }

  while (v43 != 1024);
  v57 = *(result + 144);
  v58 = *(result + 160);
  v59 = *(result + 400);
  v60 = *(result + 416);
  v61 = *(result + 656);
  v62 = *(result + 672);
  v63 = vmulq_f32(v58, v58);
  v64 = vmulq_f32(v57, v57);
  v65 = *(result + 912);
  v66 = *(result + 928);
  v67 = vmulq_f32(v60, v60);
  v68 = vmulq_f32(v59, v59);
  v69 = vmulq_f32(v62, v62);
  v70 = vmulq_f32(v61, v61);
  v71 = vmulq_f32(v66, v66);
  v72 = vmulq_f32(v65, v65);
  for (i = 432; i != 656; i += 32)
  {
    v74 = *(result + i - 256);
    v75 = *(result + i - 240);
    v76 = *(result + i);
    v77 = *(result + i + 16);
    v78 = *(result + i + 256);
    v79 = *(result + i + 272);
    v80 = *(result + i + 512);
    v81 = *(result + i + 528);
    v58 = vaddq_f32(v58, v75);
    v57 = vaddq_f32(v57, v74);
    v60 = vaddq_f32(v60, v77);
    v59 = vaddq_f32(v59, v76);
    v62 = vaddq_f32(v62, v79);
    v61 = vaddq_f32(v61, v78);
    v66 = vaddq_f32(v66, v81);
    v65 = vaddq_f32(v65, v80);
    v63 = vmlaq_f32(v63, v75, v75);
    v64 = vmlaq_f32(v64, v74, v74);
    v67 = vmlaq_f32(v67, v77, v77);
    v68 = vmlaq_f32(v68, v76, v76);
    v69 = vmlaq_f32(v69, v79, v79);
    v70 = vmlaq_f32(v70, v78, v78);
    v71 = vmlaq_f32(v71, v81, v81);
    v72 = vmlaq_f32(v72, v80, v80);
  }

  v82 = vpaddq_f32(vpaddq_f32(vaddq_f32(v57, v58), vaddq_f32(v59, v60)), vpaddq_f32(vaddq_f32(v61, v62), vaddq_f32(v65, v66)));
  v83 = vmulq_f32(v82, vdupq_n_s32(0x3C800000u));
  v84 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v64, v63), vaddq_f32(v68, v67)), vpaddq_f32(vaddq_f32(v70, v69), vaddq_f32(v72, v71))), v83, v82);
  *(result + 16) = v83;
  v82.i64[0] = vpaddq_f32(v84, v84).u64[0];
  *(result + 120) = vpadd_f32(*v82.f32, *v82.f32).u32[0];
  if (v1 < 1)
  {
    *(result + 136) = v83.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t Unpremultiply_8x8_vec(uint64_t result)
{
  v1 = result;
  v2 = *(result + 136);
  if (v2 <= 0)
  {
    result = Unpremultiply_8x8_vec_cold_1(result);
  }

  if (*(v1 + 124) < 0.0)
  {
    v3 = *(v1 + 32);
    v4 = 0uLL;
    v5 = 8;
    v6 = v1;
    v7 = 0uLL;
    do
    {
      v8 = xmmword_2984959B0;
      if (v3)
      {
        v8 = *v3;
      }

      v10 = v6[9];
      v9 = v6[10];
      v12 = v6[25];
      v11 = v6[26];
      v14 = v6[41];
      v13 = v6[42];
      v15 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v8.f32, 1), v9, v8.f32[0]), v13, v8, 2);
      v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v8.f32, 1), v10, v8.f32[0]), v14, v8, 2);
      v6[153] = v16;
      v6[154] = v15;
      v17 = vsubq_f32(v9, v15);
      v18 = vsubq_f32(v10, v16);
      v19 = vsubq_f32(v12, v16);
      v20 = vsubq_f32(v11, v15);
      v21 = vsubq_f32(v14, v16);
      v22 = vsubq_f32(v13, v15);
      v4 = vaddq_f32(v4, vmlaq_f32(vmlaq_f32(vmulq_f32(v19, v19), v18, v18), v21, v21));
      v7 = vaddq_f32(v7, vmlaq_f32(vmlaq_f32(vmulq_f32(v20, v20), v17, v17), v22, v22));
      v6 += 2;
      --v5;
    }

    while (v5);
    v23 = vaddq_f32(v4, v7);
    v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
    v23.f32[0] = vrecpes_f32(vpadd_f32(*v23.f32, *v23.f32).f32[0]);
    *(v1 + 124) = (v23.f32[0] * 3.0) + (v23.f32[0] * 3.0);
  }

  if (*(v1 + 134) < 0)
  {
    v24 = (v1 + 2192);
    v25 = 0uLL;
    v26 = 8;
    v27 = vdupq_n_s32(0x3B808081u);
    v28 = 0uLL;
    do
    {
      v29 = vcgeq_f32(v27, v24[-80]);
      v30 = vcgeq_f32(v27, v24[-79]);
      *v24 = v29;
      v24[1] = v30;
      v24 += 2;
      v28 = vsubq_s32(v28, v30);
      v25 = vsubq_s32(v25, v29);
      --v26;
    }

    while (v26);
    v31 = vaddq_s32(v25, v28);
    v31.i64[0] = vpaddq_s32(v31, v31).u64[0];
    *(v1 + 134) = vpadd_s32(*v31.i8, *v31.i8).u8[0];
  }

  v32 = 0;
  v33 = 400;
  do
  {
    v34 = *(v1 + v33 - 256);
    v35 = *(v1 + v33 - 240);
    v36 = *(v1 + v33);
    v37 = *(v1 + v33 + 16);
    v38 = *(v1 + v33 + 256);
    v39 = *(v1 + v33 + 272);
    v40 = *(v1 + v33 + 512);
    v41 = *(v1 + v33 + 528);
    v75.val[0] = vzip1q_s32(v34, v38);
    v75.val[1] = vzip1q_s32(v36, v40);
    v42 = (v1 + v32 + 1168);
    vst2q_f32(v42, v75);
    v75.val[0] = vzip2q_s32(v35, v39);
    v76.val[0] = vzip1q_s32(v35, v39);
    v74.val[0] = vzip2q_s32(v34, v38);
    v74.val[1] = vzip2q_s32(v36, v40);
    v43 = (v1 + v32 + 1200);
    vst2q_f32(v43, v74);
    v76.val[1] = vzip1q_s32(v37, v41);
    v44 = (v1 + v32 + 1232);
    vst2q_f32(v44, v76);
    v75.val[1] = vzip2q_s32(v37, v41);
    v45 = (v1 + v32 + 1264);
    vst2q_f32(v45, v75);
    v32 += 128;
    v33 += 32;
  }

  while (v32 != 1024);
  v46 = *(v1 + 144);
  v47 = *(v1 + 160);
  v48 = *(v1 + 400);
  v49 = *(v1 + 416);
  v50 = *(v1 + 656);
  v51 = *(v1 + 672);
  v52 = vmulq_f32(v47, v47);
  v53 = vmulq_f32(v46, v46);
  v54 = *(v1 + 912);
  v55 = *(v1 + 928);
  v56 = vmulq_f32(v49, v49);
  v57 = vmulq_f32(v48, v48);
  v58 = vmulq_f32(v51, v51);
  v59 = vmulq_f32(v50, v50);
  v60 = vmulq_f32(v55, v55);
  v61 = vmulq_f32(v54, v54);
  for (i = 432; i != 656; i += 32)
  {
    v63 = *(v1 + i - 256);
    v64 = *(v1 + i - 240);
    v65 = *(v1 + i);
    v66 = *(v1 + i + 16);
    v67 = *(v1 + i + 256);
    v68 = *(v1 + i + 272);
    v69 = *(v1 + i + 512);
    v70 = *(v1 + i + 528);
    v47 = vaddq_f32(v47, v64);
    v46 = vaddq_f32(v46, v63);
    v49 = vaddq_f32(v49, v66);
    v48 = vaddq_f32(v48, v65);
    v51 = vaddq_f32(v51, v68);
    v50 = vaddq_f32(v50, v67);
    v55 = vaddq_f32(v55, v70);
    v54 = vaddq_f32(v54, v69);
    v52 = vmlaq_f32(v52, v64, v64);
    v53 = vmlaq_f32(v53, v63, v63);
    v56 = vmlaq_f32(v56, v66, v66);
    v57 = vmlaq_f32(v57, v65, v65);
    v58 = vmlaq_f32(v58, v68, v68);
    v59 = vmlaq_f32(v59, v67, v67);
    v60 = vmlaq_f32(v60, v70, v70);
    v61 = vmlaq_f32(v61, v69, v69);
  }

  v71 = vpaddq_f32(vpaddq_f32(vaddq_f32(v46, v47), vaddq_f32(v48, v49)), vpaddq_f32(vaddq_f32(v50, v51), vaddq_f32(v54, v55)));
  v72 = vmulq_f32(v71, vdupq_n_s32(0x3C800000u));
  v73 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v53, v52), vaddq_f32(v57, v56)), vpaddq_f32(vaddq_f32(v59, v58), vaddq_f32(v61, v60))), v72, v71);
  *(v1 + 16) = v72;
  v71.i64[0] = vpaddq_f32(v73, v73).u64[0];
  *(v1 + 120) = vpadd_f32(*v71.f32, *v71.f32).u32[0];
  if (v2 < 1)
  {
    *(v1 + 136) = v72.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t ClampPremultiplied_8x8_vec(uint64_t result)
{
  for (i = 400; i != 656; i += 32)
  {
    v2 = (result + i);
    v4 = *(result + i + 512);
    v3 = *(result + i + 528);
    v5 = vminnmq_f32(*(result + i - 240), v3);
    v2[-16] = vminnmq_f32(*(result + i - 256), v4);
    v2[-15] = v5;
    v6 = vminnmq_f32(*(result + i + 16), v3);
    *v2 = vminnmq_f32(*(result + i), v4);
    v2[1] = v6;
    v7 = vminnmq_f32(*(result + i + 272), v3);
    v2[16] = vminnmq_f32(*(result + i + 256), v4);
    v2[17] = v7;
  }

  if (*(result + 124) < 0.0)
  {
    v8 = *(result + 32);
    v9 = 0uLL;
    v10 = 8;
    v11 = result;
    v12 = 0uLL;
    do
    {
      v13 = xmmword_2984959B0;
      if (v8)
      {
        v13 = *v8;
      }

      v15 = v11[9];
      v14 = v11[10];
      v17 = v11[25];
      v16 = v11[26];
      v19 = v11[41];
      v18 = v11[42];
      v20 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v13.f32, 1), v14, v13.f32[0]), v18, v13, 2);
      v21 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v17, *v13.f32, 1), v15, v13.f32[0]), v19, v13, 2);
      v11[153] = v21;
      v11[154] = v20;
      v22 = vsubq_f32(v14, v20);
      v23 = vsubq_f32(v15, v21);
      v24 = vsubq_f32(v17, v21);
      v25 = vsubq_f32(v16, v20);
      v26 = vsubq_f32(v19, v21);
      v27 = vsubq_f32(v18, v20);
      v9 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v24, v24), v23, v23), v26, v26));
      v12 = vaddq_f32(v12, vmlaq_f32(vmlaq_f32(vmulq_f32(v25, v25), v22, v22), v27, v27));
      v11 += 2;
      --v10;
    }

    while (v10);
    v28 = vaddq_f32(v9, v12);
    v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
    v28.f32[0] = vrecpes_f32(vpadd_f32(*v28.f32, *v28.f32).f32[0]);
    *(result + 124) = (v28.f32[0] * 3.0) + (v28.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v29 = (result + 2192);
    v30 = 0uLL;
    v31 = 8;
    v32 = vdupq_n_s32(0x3B808081u);
    v33 = 0uLL;
    do
    {
      v34 = vcgeq_f32(v32, v29[-80]);
      v35 = vcgeq_f32(v32, v29[-79]);
      *v29 = v34;
      v29[1] = v35;
      v29 += 2;
      v33 = vsubq_s32(v33, v35);
      v30 = vsubq_s32(v30, v34);
      --v31;
    }

    while (v31);
    v36 = vaddq_s32(v30, v33);
    v36.i64[0] = vpaddq_s32(v36, v36).u64[0];
    *(result + 134) = vpadd_s32(*v36.i8, *v36.i8).u8[0];
  }

  v37 = 0;
  v38 = 400;
  do
  {
    v39 = *(result + v38 - 256);
    v40 = *(result + v38 - 240);
    v41 = *(result + v38);
    v42 = *(result + v38 + 16);
    v43 = *(result + v38 + 256);
    v44 = *(result + v38 + 272);
    v45 = *(result + v38 + 512);
    v46 = *(result + v38 + 528);
    v80.val[0] = vzip1q_s32(v39, v43);
    v80.val[1] = vzip1q_s32(v41, v45);
    v47 = (result + v37 + 1168);
    vst2q_f32(v47, v80);
    v80.val[0] = vzip2q_s32(v40, v44);
    v81.val[0] = vzip1q_s32(v40, v44);
    v79.val[0] = vzip2q_s32(v39, v43);
    v79.val[1] = vzip2q_s32(v41, v45);
    v48 = (result + v37 + 1200);
    vst2q_f32(v48, v79);
    v81.val[1] = vzip1q_s32(v42, v46);
    v49 = (result + v37 + 1232);
    vst2q_f32(v49, v81);
    v80.val[1] = vzip2q_s32(v42, v46);
    v50 = (result + v37 + 1264);
    vst2q_f32(v50, v80);
    v37 += 128;
    v38 += 32;
  }

  while (v37 != 1024);
  v51 = *(result + 144);
  v52 = *(result + 160);
  v53 = *(result + 400);
  v54 = *(result + 416);
  v55 = *(result + 656);
  v56 = *(result + 672);
  v57 = vmulq_f32(v52, v52);
  v58 = vmulq_f32(v51, v51);
  v59 = *(result + 912);
  v60 = *(result + 928);
  v61 = vmulq_f32(v54, v54);
  v62 = vmulq_f32(v53, v53);
  v63 = vmulq_f32(v56, v56);
  v64 = vmulq_f32(v55, v55);
  v65 = vmulq_f32(v60, v60);
  v66 = vmulq_f32(v59, v59);
  for (j = 432; j != 656; j += 32)
  {
    v68 = *(result + j - 256);
    v69 = *(result + j - 240);
    v70 = *(result + j);
    v71 = *(result + j + 16);
    v72 = *(result + j + 256);
    v73 = *(result + j + 272);
    v74 = *(result + j + 512);
    v75 = *(result + j + 528);
    v52 = vaddq_f32(v52, v69);
    v51 = vaddq_f32(v51, v68);
    v54 = vaddq_f32(v54, v71);
    v53 = vaddq_f32(v53, v70);
    v56 = vaddq_f32(v56, v73);
    v55 = vaddq_f32(v55, v72);
    v60 = vaddq_f32(v60, v75);
    v59 = vaddq_f32(v59, v74);
    v57 = vmlaq_f32(v57, v69, v69);
    v58 = vmlaq_f32(v58, v68, v68);
    v61 = vmlaq_f32(v61, v71, v71);
    v62 = vmlaq_f32(v62, v70, v70);
    v63 = vmlaq_f32(v63, v73, v73);
    v64 = vmlaq_f32(v64, v72, v72);
    v65 = vmlaq_f32(v65, v75, v75);
    v66 = vmlaq_f32(v66, v74, v74);
  }

  v76 = vpaddq_f32(vpaddq_f32(vaddq_f32(v51, v52), vaddq_f32(v53, v54)), vpaddq_f32(vaddq_f32(v55, v56), vaddq_f32(v59, v60)));
  v77 = vmulq_f32(v76, vdupq_n_s32(0x3C800000u));
  v78 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v58, v57), vaddq_f32(v62, v61)), vpaddq_f32(vaddq_f32(v64, v63), vaddq_f32(v66, v65))), v77, v76);
  *(result + 16) = v77;
  v76.i64[0] = vpaddq_f32(v78, v78).u64[0];
  *(result + 120) = vpadd_f32(*v76.f32, *v76.f32).u32[0];
  if (*(result + 136) < 1)
  {
    *(result + 136) = v77.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t PassThrough_8x8_vec(uint64_t result)
{
  if (*(result + 124) < 0.0)
  {
    v1 = *(result + 32);
    v2 = 0uLL;
    v3 = 8;
    v4 = result;
    v5 = 0uLL;
    do
    {
      v6 = xmmword_2984959B0;
      if (v1)
      {
        v6 = *v1;
      }

      v8 = v4[9];
      v7 = v4[10];
      v10 = v4[25];
      v9 = v4[26];
      v12 = v4[41];
      v11 = v4[42];
      v13 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v6.f32, 1), v7, v6.f32[0]), v11, v6, 2);
      v14 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *v6.f32, 1), v8, v6.f32[0]), v12, v6, 2);
      v4[153] = v14;
      v4[154] = v13;
      v15 = vsubq_f32(v7, v13);
      v16 = vsubq_f32(v8, v14);
      v17 = vsubq_f32(v10, v14);
      v18 = vsubq_f32(v9, v13);
      v19 = vsubq_f32(v12, v14);
      v20 = vsubq_f32(v11, v13);
      v2 = vaddq_f32(v2, vmlaq_f32(vmlaq_f32(vmulq_f32(v17, v17), v16, v16), v19, v19));
      v5 = vaddq_f32(v5, vmlaq_f32(vmlaq_f32(vmulq_f32(v18, v18), v15, v15), v20, v20));
      v4 += 2;
      --v3;
    }

    while (v3);
    v21 = vaddq_f32(v2, v5);
    v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
    v21.f32[0] = vrecpes_f32(vpadd_f32(*v21.f32, *v21.f32).f32[0]);
    *(result + 124) = (v21.f32[0] * 3.0) + (v21.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v22 = (result + 2192);
    v23 = 0uLL;
    v24 = 8;
    v25 = vdupq_n_s32(0x3B808081u);
    v26 = 0uLL;
    do
    {
      v27 = vcgeq_f32(v25, v22[-80]);
      v28 = vcgeq_f32(v25, v22[-79]);
      *v22 = v27;
      v22[1] = v28;
      v22 += 2;
      v26 = vsubq_s32(v26, v28);
      v23 = vsubq_s32(v23, v27);
      --v24;
    }

    while (v24);
    v29 = vaddq_s32(v23, v26);
    v29.i64[0] = vpaddq_s32(v29, v29).u64[0];
    *(result + 134) = vpadd_s32(*v29.i8, *v29.i8).u8[0];
  }

  v30 = 0;
  v31 = 400;
  do
  {
    v32 = *(result + v31 - 256);
    v33 = *(result + v31 - 240);
    v34 = *(result + v31);
    v35 = *(result + v31 + 16);
    v36 = *(result + v31 + 256);
    v37 = *(result + v31 + 272);
    v38 = *(result + v31 + 512);
    v39 = *(result + v31 + 528);
    v73.val[0] = vzip1q_s32(v32, v36);
    v73.val[1] = vzip1q_s32(v34, v38);
    v40 = (result + v30 + 1168);
    vst2q_f32(v40, v73);
    v73.val[0] = vzip2q_s32(v33, v37);
    v74.val[0] = vzip1q_s32(v33, v37);
    v72.val[0] = vzip2q_s32(v32, v36);
    v72.val[1] = vzip2q_s32(v34, v38);
    v41 = (result + v30 + 1200);
    vst2q_f32(v41, v72);
    v74.val[1] = vzip1q_s32(v35, v39);
    v42 = (result + v30 + 1232);
    vst2q_f32(v42, v74);
    v73.val[1] = vzip2q_s32(v35, v39);
    v43 = (result + v30 + 1264);
    vst2q_f32(v43, v73);
    v30 += 128;
    v31 += 32;
  }

  while (v30 != 1024);
  v44 = *(result + 144);
  v45 = *(result + 160);
  v46 = *(result + 400);
  v47 = *(result + 416);
  v48 = *(result + 656);
  v49 = *(result + 672);
  v50 = vmulq_f32(v45, v45);
  v51 = vmulq_f32(v44, v44);
  v52 = *(result + 912);
  v53 = *(result + 928);
  v54 = vmulq_f32(v47, v47);
  v55 = vmulq_f32(v46, v46);
  v56 = vmulq_f32(v49, v49);
  v57 = vmulq_f32(v48, v48);
  v58 = vmulq_f32(v53, v53);
  v59 = vmulq_f32(v52, v52);
  for (i = 432; i != 656; i += 32)
  {
    v61 = *(result + i - 256);
    v62 = *(result + i - 240);
    v63 = *(result + i);
    v64 = *(result + i + 16);
    v65 = *(result + i + 256);
    v66 = *(result + i + 272);
    v67 = *(result + i + 512);
    v68 = *(result + i + 528);
    v45 = vaddq_f32(v45, v62);
    v44 = vaddq_f32(v44, v61);
    v47 = vaddq_f32(v47, v64);
    v46 = vaddq_f32(v46, v63);
    v49 = vaddq_f32(v49, v66);
    v48 = vaddq_f32(v48, v65);
    v53 = vaddq_f32(v53, v68);
    v52 = vaddq_f32(v52, v67);
    v50 = vmlaq_f32(v50, v62, v62);
    v51 = vmlaq_f32(v51, v61, v61);
    v54 = vmlaq_f32(v54, v64, v64);
    v55 = vmlaq_f32(v55, v63, v63);
    v56 = vmlaq_f32(v56, v66, v66);
    v57 = vmlaq_f32(v57, v65, v65);
    v58 = vmlaq_f32(v58, v68, v68);
    v59 = vmlaq_f32(v59, v67, v67);
  }

  v69 = vpaddq_f32(vpaddq_f32(vaddq_f32(v44, v45), vaddq_f32(v46, v47)), vpaddq_f32(vaddq_f32(v48, v49), vaddq_f32(v52, v53)));
  v70 = vmulq_f32(v69, vdupq_n_s32(0x3C800000u));
  v71 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v51, v50), vaddq_f32(v55, v54)), vpaddq_f32(vaddq_f32(v57, v56), vaddq_f32(v59, v58))), v70, v69);
  *(result + 16) = v70;
  v69.i64[0] = vpaddq_f32(v71, v71).u64[0];
  *(result + 120) = vpadd_f32(*v69.f32, *v69.f32).u32[0];
  if (*(result + 136) < 1)
  {
    *(result + 136) = v70.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t Write_R8_vec(uint64_t result, int a2, uint64_t a3, _BYTE *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9.i64[0] = 0xFFFF0000FFFF0000;
    v9.i64[1] = 0xFFFF0000FFFF0000;
    v10.i64[0] = 0x800000008000;
    v10.i64[1] = 0x800000008000;
    do
    {
      v11 = a5;
      v12 = v7;
      v13 = a4;
      if (a5)
      {
        do
        {
          v14 = vmulq_s32(*(result + 288 + 16 * v12), xmmword_2984959C0);
          v15 = vaddq_s32(vextq_s8(v14, v14, 8uLL), v14);
          v16 = vaddq_s32(vrev64q_s32(v15), v15);
          *v16.i8 = vqadd_u16(vqmovun_s32(vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v9, v16), v10), v16), 0x10uLL)), 0x80008000800080);
          *v13++ = vqsub_u16(*&v16, vshr_n_u16(*&v16, 8uLL)).i8[1];
          ++v12;
          --v11;
        }

        while (v11);
      }

      a4 += *a7;
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RA8_vec(uint64_t result, int a2, uint64_t a3, _BYTE *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = result + 288;
    v10.i64[0] = 0xFFFF0000FFFF0000;
    v10.i64[1] = 0xFFFF0000FFFF0000;
    v11.i64[0] = 0x800000008000;
    v11.i64[1] = 0x800000008000;
    do
    {
      v12 = a5;
      v13 = v7;
      v14 = a4;
      if (a5)
      {
        do
        {
          v15 = vmulq_s32(*(v9 + 16 * v13), xmmword_2984959C0);
          v16 = vaddq_s32(vextq_s8(v15, v15, 8uLL), v15);
          v17 = vaddq_s32(vrev64q_s32(v16), v16);
          v18 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v10, v17), v11), v17), 0x10uLL);
          v18.i32[3] = HIDWORD(*(v9 + 16 * v13));
          v19 = vqadd_u16(vqmovun_s32(v18), 0x80008000800080);
          v20 = vqsub_u16(v19, vshr_n_u16(v19, 8uLL));
          v14[1] = v20.i8[7];
          *v14 = v20.i8[1];
          v14 += 2;
          ++v13;
          --v12;
        }

        while (v12);
      }

      a4 += *a7;
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RGBA8_vec(uint64_t result, int a2, uint64_t a3, _DWORD *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    for (i = 0; i != a6; ++i)
    {
      v9 = a5;
      v10 = v7;
      v11 = a4;
      if (a5)
      {
        do
        {
          v12 = *(result + 288 + 16 * v10);
          *v12.i8 = vqadd_u16(vqmovun_s32(v12), 0x80008000800080);
          *v12.i8 = vqsub_u16(*v12.i8, vshr_n_u16(*v12.i8, 8uLL));
          *v11++ = vmovn_s16(vrev16q_s8(v12)).u32[0];
          ++v10;
          --v9;
        }

        while (v9);
      }

      a4 = (a4 + *a7);
      v7 += a2;
    }
  }

  return result;
}

uint64_t Write_BGRA8_vec(uint64_t result, int a2, double a3, double a4, int16x8_t a5, uint64_t a6, _DWORD *a7, unsigned int a8, int a9, void *a10)
{
  if (a9)
  {
    v10 = 0;
    for (i = 0; i != a9; ++i)
    {
      v12 = a8;
      v13 = v10;
      v14 = a7;
      if (a8)
      {
        do
        {
          v15 = vqadd_u16(vqmovun_s32(*(result + 288 + 16 * v13)), 0x80008000800080);
          v16 = vqsub_u16(v15, vshr_n_u16(v15, 8uLL));
          a5.i16[0] = v16.u8[5];
          a5.i16[1] = v16.u8[3];
          a5.i16[2] = v16.u8[1];
          a5.i16[3] = v16.u8[7];
          *v14++ = vmovn_s16(a5).u32[0];
          ++v13;
          --v12;
        }

        while (v12);
      }

      a7 = (a7 + *a10);
      v10 += a2;
    }
  }

  return result;
}

uint64_t Write_R16_vec(uint64_t result, int a2, uint64_t a3, _WORD *a4, unsigned int a5, int a6, uint64_t *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a7;
    v10.i64[0] = 0xFFFF0000FFFF0000;
    v10.i64[1] = 0xFFFF0000FFFF0000;
    v11.i64[0] = 0x800000008000;
    v11.i64[1] = 0x800000008000;
    do
    {
      v12 = a5;
      v13 = v7;
      v14 = a4;
      if (a5)
      {
        do
        {
          v15 = vmulq_s32(*(result + 288 + 16 * v13), xmmword_2984959C0);
          v16 = vaddq_s32(vextq_s8(v15, v15, 8uLL), v15);
          v17 = vaddq_s32(vrev64q_s32(v16), v16);
          *v14++ = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v10, v17), v11), v17), 0x10uLL).u16[0];
          ++v13;
          --v12;
        }

        while (v12);
      }

      a4 = (a4 + v9);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RA16_vec(uint64_t result, int a2, uint64_t a3, _WORD *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = result + 288;
    v10.i64[0] = 0xFFFF0000FFFF0000;
    v10.i64[1] = 0xFFFF0000FFFF0000;
    v11.i64[0] = 0x800000008000;
    v11.i64[1] = 0x800000008000;
    do
    {
      v12 = a5;
      v13 = v7;
      v14 = a4;
      if (a5)
      {
        do
        {
          v15 = vmulq_s32(*(v9 + 16 * v13), xmmword_2984959C0);
          v16 = vaddq_s32(vextq_s8(v15, v15, 8uLL), v15);
          v17 = vaddq_s32(vrev64q_s32(v16), v16);
          v18 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v10, v17), v11), v17), 0x10uLL);
          v18.i32[3] = HIDWORD(*(v9 + 16 * v13));
          v19 = vmovn_s32(v18);
          v14[1] = v19.i16[3];
          *v14 = v19.i16[0];
          v14 += 2;
          ++v13;
          --v12;
        }

        while (v12);
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RGBA16_vec(uint64_t result, int a2, uint64_t a3, int16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    for (i = 0; i != a6; ++i)
    {
      v9 = a5;
      v10 = v7;
      v11 = a4;
      if (a5)
      {
        do
        {
          *v11++ = vmovn_s32(*(result + 288 + 16 * v10++));
          --v9;
        }

        while (v9);
      }

      a4 = (a4 + *a7);
      v7 += a2;
    }
  }

  return result;
}

uint64_t Write_Rf16_vec(uint64_t result, int a2, uint64_t a3, float16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = result + 288;
    v10 = vdupq_n_s32(0x37800000u);
    v11 = vdupq_n_s32(0x477FE000u);
    v12 = vdupq_n_s32(0xC77FE000);
    v13.i64[0] = 0xFFFF0000FFFF0000;
    v13.i64[1] = 0xFFFF0000FFFF0000;
    v14.i64[0] = 0x800000008000;
    v14.i64[1] = 0x800000008000;
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    v16.i64[0] = 0x1000000010000;
    v16.i64[1] = 0x1000000010000;
    v17.i64[0] = 0x300000003;
    v17.i64[1] = 0x300000003;
    v18.i64[0] = 0x1F0000001FLL;
    v18.i64[1] = 0x1F0000001FLL;
    do
    {
      if (a5 >= 4)
      {
        v21 = 0;
        v20 = a4;
        do
        {
          v22 = v7 + v21;
          v23 = *(v9 + 16 * (v7 + v21));
          if (*(result + 2612))
          {
            v24 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(v23)), xmmword_2984959D0);
            v25 = vaddq_f32(v24, vextq_s8(v24, v24, 8uLL));
            v26 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(*(v9 + 16 * (v22 + 1)))), xmmword_2984959D0);
            v27 = vaddq_f32(v26, vextq_s8(v26, v26, 8uLL));
            v28 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(*(v9 + 16 * (v22 + 2)))), xmmword_2984959D0);
            v29 = vaddq_f32(v28, vextq_s8(v28, v28, 8uLL));
            v30 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(*(v9 + 16 * (v22 + 3)))), xmmword_2984959D0);
            v31 = vaddq_f32(v30, vextq_s8(v30, v30, 8uLL));
            v32 = vzip1_s16(vzip1_s16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v25, vrev64q_s32(v25)), v11), v12), v18)), vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v29, vrev64q_s32(v29)), v11), v12), v18))), vzip1_s16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v27, vrev64q_s32(v27)), v11), v12), v18)), vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v31, vrev64q_s32(v31)), v11), v12), v18))));
          }

          else
          {
            v33 = vmulq_s32(v23, xmmword_2984959C0);
            v34 = vaddq_s32(vextq_s8(v33, v33, 8uLL), v33);
            v35 = vaddq_s32(vrev64q_s32(v34), v34);
            v36 = vmulq_s32(*(v9 + 16 * (v22 + 1)), xmmword_2984959C0);
            v37 = vaddq_s32(vextq_s8(v36, v36, 8uLL), v36);
            v38 = vaddq_s32(vrev64q_s32(v37), v37);
            v39 = vmulq_s32(*(v9 + 16 * (v22 + 2)), xmmword_2984959C0);
            v40 = vaddq_s32(vextq_s8(v39, v39, 8uLL), v39);
            v41 = vaddq_s32(vrev64q_s32(v40), v40);
            v42 = vmulq_s32(*(v9 + 16 * (v22 + 3)), xmmword_2984959C0);
            v43 = vaddq_s32(vextq_s8(v42, v42, 8uLL), v42);
            v44 = vaddq_s32(vrev64q_s32(v43), v43);
            v45 = vzip1q_s32(vzip1q_s32(vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v35), v14), v35), 0x10uLL), vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v41), v14), v41), 0x10uLL)), vzip1q_s32(vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v38), v14), v38), 0x10uLL), vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v44), v14), v44), 0x10uLL)));
            v46 = vbslq_s8(vceqq_s32(v45, v15), v16, v45);
            v32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v46, vcgtq_u32(v46, v17))), v10), v11), v12), v18));
          }

          *v20++ = v32;
          LODWORD(v19) = v21 + 4;
          v47 = v21 + 8;
          v21 += 4;
        }

        while (v47 <= a5);
      }

      else
      {
        LODWORD(v19) = 0;
        v20 = a4;
      }

      if (v19 < a5)
      {
        v48 = *(result + 2612);
        v19 = v19;
        do
        {
          v49 = *(v9 + 16 * (v7 + v19));
          if (v48)
          {
            v50 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(v49)), xmmword_2984959D0);
            v51 = vaddq_f32(v50, vextq_s8(v50, v50, 8uLL));
            v52 = vaddq_f32(v51, vrev64q_s32(v51));
          }

          else
          {
            v53 = vmulq_s32(v49, xmmword_2984959C0);
            v54 = vaddq_s32(vextq_s8(v53, v53, 8uLL), v53);
            v55 = vaddq_s32(vrev64q_s32(v54), v54);
            v56 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v55), v14), v55), 0x10uLL);
            v57 = vbslq_s8(vceqq_s32(v56, v15), v16, v56);
            v52 = vmulq_f32(vcvtq_f32_u32(vandq_s8(v57, vcgtq_u32(v57, v17))), v10);
          }

          v20->i16[v19++ & 3] = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v52, v11), v12), v18)).u16[0];
        }

        while (a5 != v19);
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RAf16_vec(uint64_t result, int a2, uint64_t a3, float16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = vdupq_n_s32(0x37800000u);
    v10 = vdupq_n_s32(0x477FE000u);
    v11 = vdupq_n_s32(0xC77FE000);
    v12 = result + 288;
    v13.i64[0] = 0xFFFF0000FFFF0000;
    v13.i64[1] = 0xFFFF0000FFFF0000;
    v14.i64[0] = 0x800000008000;
    v14.i64[1] = 0x800000008000;
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    v16.i64[0] = 0x1000000010000;
    v16.i64[1] = 0x1000000010000;
    v17.i64[0] = 0x300000003;
    v17.i64[1] = 0x300000003;
    v18.i64[0] = 0x1F0000001FLL;
    v18.i64[1] = 0x1F0000001FLL;
    do
    {
      if (a5 >= 2)
      {
        v21 = 0;
        v20 = a4;
        do
        {
          v22 = v7 + v21;
          v23 = *(v12 + 16 * (v7 + v21));
          if (*(result + 2612))
          {
            v24 = vmovn_s32(v23);
            v25 = vmulq_f32(vcvtq_f32_f16(v24), xmmword_2984959D0);
            v26 = vaddq_f32(v25, vextq_s8(v25, v25, 8uLL));
            *v26.f32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v26, vrev64q_s32(v26)), v10), v11), v18));
            v27 = *v26.f32;
            v27.i16[3] = v24.i16[3];
            v28 = vmovn_s32(*(v12 + 16 * (v22 + 1)));
            v29 = vmulq_f32(vcvtq_f32_f16(v28), xmmword_2984959D0);
            v30 = vaddq_f32(v29, vextq_s8(v29, v29, 8uLL));
            *v30.f32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v30, vrev64q_s32(v30)), v10), v11), v18));
            v31 = *v30.f32;
            v31.i16[3] = v28.i16[3];
            v27.i16[1] = v26.i16[0];
            v31.i16[1] = v30.i16[0];
            v32 = vuzp2_s16(v27, v31);
          }

          else
          {
            v33 = vmulq_s32(v23, xmmword_2984959C0);
            v34 = vaddq_s32(vextq_s8(v33, v33, 8uLL), v33);
            v35 = vaddq_s32(vrev64q_s32(v34), v34);
            v36 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v35), v14), v35), 0x10uLL);
            v36.i32[3] = HIDWORD(*(v12 + 16 * v22));
            v37 = v22 + 1;
            v38 = vmulq_s32(*(v12 + 16 * v37), xmmword_2984959C0);
            v39 = vaddq_s32(vextq_s8(v38, v38, 8uLL), v38);
            v40 = vaddq_s32(vrev64q_s32(v39), v39);
            v41 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v40), v14), v40), 0x10uLL);
            v41.i32[3] = HIDWORD(*(v12 + 16 * v37));
            v36.i32[1] = v36.i32[0];
            v41.i32[1] = v41.i32[0];
            v42 = vuzp2q_s32(v36, v41);
            v43 = vbslq_s8(vceqq_s32(v42, v15), v16, v42);
            v32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v43, vcgtq_s32(v43, v17))), v9), v10), v11), v18));
          }

          *v20++ = v32;
          v19 = v21 + 2;
          v44 = v21 + 4;
          v21 += 2;
        }

        while (v44 <= a5);
      }

      else
      {
        v19 = 0;
        v20 = a4;
      }

      if (v19 < a5)
      {
        v45 = v19 + v8 * a2;
        v46 = *(v12 + 16 * v45);
        if (*(result + 2612))
        {
          v47 = vmovn_s32(v46);
          v48 = vmulq_f32(vcvtq_f32_f16(v47), xmmword_2984959D0);
          v49 = vaddq_f32(v48, vextq_s8(v48, v48, 8uLL));
          v49.i16[0] = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v49, vrev64q_s32(v49)), v10), v11), v18)).u16[0];
          v49.i16[3] = v47.i16[3];
        }

        else
        {
          v50 = vmulq_s32(v46, xmmword_2984959C0);
          v51 = vaddq_s32(vextq_s8(v50, v50, 8uLL), v50);
          v52 = vaddq_s32(vrev64q_s32(v51), v51);
          v53 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v52), v14), v52), 0x10uLL);
          v53.i32[3] = HIDWORD(*(v12 + 16 * v45));
          v49 = vbslq_s8(vceqq_s32(v53, v15), v16, v53);
          *v49.f32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v49, vcgtq_s32(v49, v17))), v9), v10), v11), v18));
        }

        v20->i16[1] = v49.i16[3];
        v20->i16[0] = v49.i16[0];
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RGBAf16_vec(uint64_t result, int a2, uint64_t a3, float16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9.i64[0] = 0xFFFF0000FFFFLL;
    v9.i64[1] = 0xFFFF0000FFFFLL;
    v10.i64[0] = 0x1000000010000;
    v10.i64[1] = 0x1000000010000;
    v11.i64[0] = 0x300000003;
    v11.i64[1] = 0x300000003;
    v12 = vdupq_n_s32(0x37800000u);
    v13 = vdupq_n_s32(0x477FE000u);
    v14 = vdupq_n_s32(0xC77FE000);
    v15.i64[0] = 0x1F0000001FLL;
    v15.i64[1] = 0x1F0000001FLL;
    do
    {
      v16 = a5;
      v17 = v7;
      v18 = a4;
      if (a5)
      {
        do
        {
          v19 = *(result + 288 + 16 * v17);
          if (*(result + 2612))
          {
            v20 = vmovn_s32(v19);
          }

          else
          {
            v21 = vbslq_s8(vceqq_s32(v19, v9), v10, v19);
            v20 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v21, vcgtq_s32(v21, v11))), v12), v13), v14), v15));
          }

          *v18++ = v20;
          ++v17;
          --v16;
        }

        while (v16);
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t FlattenNon_vec(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 18;
    v5 = vdupq_n_s32(0x37800080u);
    v6 = vdupq_n_s32(0x477FFF00u);
    v7 = vdupq_n_s32(0x477FE000u);
    v8 = vdupq_n_s32(0xC77FE000);
    v9.i64[0] = 0x1F0000001FLL;
    v9.i64[1] = 0x1F0000001FLL;
    do
    {
      v10 = v4[v3];
      v11 = a3[162];
      if (a3[163].i32[1])
      {
        _Q7 = vcvtq_f32_f16(vmovn_s32(v10));
        _Q16 = vsubq_f32(_Q7, v11);
        v14.i64[0] = vmlaq_laneq_f32(v11, _Q16, _Q7, 3).u64[0];
        _Q16.i32[0] = _Q16.i32[2];
        __asm { FMLA            S6, S16, V7.S[3] }

        v14.i64[1] = __PAIR64__(_Q7.u32[3], _S6);
        v20 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v14, v7), v8), v9)));
      }

      else
      {
        _Q7 = vmulq_f32(vcvtq_f32_s32(v10), v5);
        v22 = vsubq_f32(_Q7, v11);
        _S17 = v22.i32[2];
        __asm { FMLA            S6, S17, V7.S[3] }

        v25.i64[0] = vmlaq_laneq_f32(v11, v22, _Q7, 3).u64[0];
        v25.i64[1] = __PAIR64__(_Q7.u32[3], _S6);
        v26.i64[0] = 0x3F0000003F000000;
        v26.i64[1] = 0x3F0000003F000000;
        v20 = vcvtq_s32_f32(vrndq_f32(vmlaq_f32(v26, v6, v25)));
      }

      v4[v3++] = v20;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

uint64_t FlattenPre_vec(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  if (HIDWORD(result) * result)
  {
    v4 = 0;
    v5 = a3 + 18;
    v6 = vdupq_n_s32(0x37800080u);
    v7 = vdup_n_s32(0x477FFF00u);
    v8 = vdupq_n_s32(0x477FE000u);
    v9 = vdupq_n_s32(0xC77FE000);
    v10.i64[0] = 0x1F0000001FLL;
    v10.i64[1] = 0x1F0000001FLL;
    do
    {
      v11 = v5[v4];
      if (a3[163].i32[1])
      {
        if (v11.i32[3] != 15360)
        {
          _Q16 = vcvtq_f32_f16(vmovn_s32(v11));
          v3.i32[0] = _Q16.i32[3];
          _S19 = a3[162].i64[1];
          __asm { FMLS            S21, S19, V16.S[3] }

          v19.i64[0] = vmlsq_lane_f32(vaddq_f32(_Q16, a3[162]), a3[162], v3, 0).u64[0];
          v19.i64[1] = __PAIR64__(1.0, _S21);
          v20 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v19, v8), v9), v10)));
LABEL_8:
          v5[v4] = v20;
        }
      }

      else if (v11.i32[3] != 0xFFFF)
      {
        _Q16 = vmulq_f32(vcvtq_f32_s32(v11), v6);
        v3.i32[0] = _Q16.i32[3];
        _S19 = a3[162].i64[1];
        __asm { FMLS            S21, S19, V16.S[3] }

        *v20.i8 = vcvt_s32_f32(vrnd_f32(vmla_f32(0x3F0000003F000000, v7, vmls_lane_f32(*&vaddq_f32(_Q16, a3[162]), *a3[162].f32, v3, 0))));
        v20.i32[2] = ((_S21 * 65535.0) + 0.5);
        v20.i32[3] = 0xFFFF;
        goto LABEL_8;
      }

      ++v4;
    }

    while (HIDWORD(result) * result > v4);
  }

  return result;
}

uint64_t Premultiply_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 288;
    v5 = vdupq_n_s32(0x37800080u);
    v6 = vdupq_n_s32(0x477FFF00u);
    v7 = vdupq_n_s32(0x477FE000u);
    v8 = vdupq_n_s32(0xC77FE000);
    v9.i64[0] = 0x1F0000001FLL;
    v9.i64[1] = 0x1F0000001FLL;
    do
    {
      v10 = *(v4 + 16 * v3);
      if (*(a3 + 2612))
      {
        v11 = vcvtq_f32_f16(vmovn_s32(v10));
        v12 = vmulq_laneq_f32(v11, v11, 3);
        v12.i32[3] = 0;
        v13 = vminnmq_f32(v12, xmmword_2984959E0);
        v13.i32[3] = v11.i32[3];
        v14 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v13, v7), v8), v9)));
      }

      else
      {
        v15 = vmulq_f32(vcvtq_f32_s32(v10), v5);
        v16 = vmulq_laneq_f32(v15, v15, 3);
        v16.i32[3] = 0;
        v17 = vminnmq_f32(v16, xmmword_2984959E0);
        v17.i32[3] = v15.i32[3];
        v15.i64[0] = 0x3F0000003F000000;
        v15.i64[1] = 0x3F0000003F000000;
        v14 = vcvtq_s32_f32(vrndq_f32(vmlaq_f32(v15, v6, v17)));
      }

      *(v4 + 16 * v3++) = v14;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

uint64_t Unpremultiply_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 288;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FE000u);
    v7 = vdupq_n_s32(0xC77FE000);
    v8.i64[0] = 0x1F0000001FLL;
    v8.i64[1] = 0x1F0000001FLL;
    while (1)
    {
      v9 = *(v4 + 16 * v3);
      if (!v9.i32[3])
      {
        break;
      }

      if (*(a3 + 2612))
      {
        if (v9.i32[3] != 15360)
        {
          v10 = vcvtq_f32_f16(vmovn_s32(v9));
          v11 = vminnmq_f32(v10, vdupq_laneq_s32(v10, 3));
          v12 = vmulq_n_f32(v11, 1.0 / v11.f32[3]);
          v12.i32[3] = v11.i32[3];
          v13 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v12, v6), v7), v8)));
LABEL_10:
          *(v4 + 16 * v3) = v13;
        }
      }

      else if (v9.i32[3] != 0xFFFF)
      {
        v14 = vcvtq_f32_s32(v9);
        v15 = vminnmq_f32(v14, vdupq_laneq_s32(v14, 3));
        v16 = vmulq_n_f32(v15, 65535.0 / v15.f32[3]);
        v16.i32[3] = v15.i32[3];
        v13 = vcvtq_s32_f32(vaddq_f32(v16, v5));
        goto LABEL_10;
      }

      if (HIDWORD(result) * result <= ++v3)
      {
        return result;
      }
    }

    v13 = 0uLL;
    goto LABEL_10;
  }

  return result;
}

uint64_t SetAlphaOne_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    if (*(a3 + 2612))
    {
      v4 = 15360;
    }

    else
    {
      v4 = 0xFFFF;
    }

    do
    {
      *(a3 + 300 + 16 * v3++) = v4;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

uint64_t ClampPremultiplied_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 288;
    v5 = vdupq_n_s32(0x477FE000u);
    v6 = vdupq_n_s32(0xC77FE000);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    do
    {
      v8 = *(v4 + 16 * v3);
      if (*(a3 + 2612))
      {
        v9 = vcvtq_f32_f16(vmovn_s32(v8));
        v10 = v9;
        v10.i32[3] = 0;
        v11 = vdupq_laneq_s32(v9, 3);
        v11.i32[3] = 0;
        v12 = vminnmq_f32(v10, v11);
        v12.i32[3] = v9.i32[3];
        v13 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v12, v5), v6), v7)));
      }

      else
      {
        v14 = *(v4 + 16 * v3);
        v14.i32[3] = 0;
        v15 = vdupq_laneq_s32(v8, 3);
        v15.i32[3] = 0;
        v13 = vminq_s32(v14, v15);
        v13.i32[3] = HIDWORD(*(v4 + 16 * v3));
      }

      *(v4 + 16 * v3++) = v13;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

void EncodeASTC_8x8_RGBA_vec()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v4 = v3;
  v5 = v1;
  v6 = v0;
  STACK[0x23F8] = *MEMORY[0x29EDCA608];
  *&STACK[0x1630] = 0u;
  *&STACK[0x1620] = 0u;
  v7 = v0 + 272;
  *&STACK[0x1610] = 0u;
  *&STACK[0x1600] = 0u;
  *&STACK[0x15F0] = 0u;
  *&STACK[0x15E0] = 0u;
  *&STACK[0x15D0] = 0u;
  *&STACK[0x15C0] = 0u;
  *&STACK[0x15B0] = 0u;
  *&STACK[0x15A0] = 0u;
  *&STACK[0x1590] = 0u;
  *&STACK[0x1580] = 0u;
  *&STACK[0x1570] = 0u;
  *&STACK[0x1560] = 0u;
  *&STACK[0x1550] = 0u;
  *&STACK[0x1540] = 0u;
  *&STACK[0x1530] = 0u;
  *&STACK[0x1520] = 0u;
  *&STACK[0x1510] = 0u;
  *&STACK[0x1500] = 0u;
  *&STACK[0x14F0] = 0u;
  *&STACK[0x14E0] = 0u;
  *&STACK[0x14D0] = 0u;
  *&STACK[0x14C0] = 0u;
  *&STACK[0x14B0] = 0u;
  *&STACK[0x14A0] = 0u;
  *&STACK[0x1490] = 0u;
  *&STACK[0x1480] = 0u;
  *&STACK[0x1470] = 0u;
  *&STACK[0x1460] = 0u;
  *&STACK[0x1450] = 0u;
  *&STACK[0x1440] = 0u;
  v8 = *(v0 + 16);
  v9 = *(v0 + 134);
  if (v9 >= 1 && *(v0 + 135))
  {
    v10 = 0;
    v11 = vcgezq_s32(*(v0 + 2192));
    v12 = vcgezq_s32(*(v0 + 2208));
    v13 = vandq_s8(*(v0 + 160), v12);
    v14 = vandq_s8(*(v0 + 144), v11);
    v15 = vandq_s8(*(v0 + 416), v12);
    v16 = vandq_s8(*(v0 + 400), v11);
    v17 = vandq_s8(*(v0 + 672), v12);
    v18 = vandq_s8(*(v0 + 656), v11);
    v19 = vandq_s8(*(v0 + 928), v12);
    v20 = vandq_s8(*(v0 + 912), v11);
    do
    {
      v21 = vcgezq_s32(*(v0 + v10 + 2240));
      v22 = vcgezq_s32(*(v0 + v10 + 2224));
      v13 = vaddq_f32(v13, vandq_s8(*(v0 + v10 + 192), v21));
      v14 = vaddq_f32(v14, vandq_s8(*(v0 + v10 + 176), v22));
      v15 = vaddq_f32(v15, vandq_s8(*(v0 + v10 + 448), v21));
      v16 = vaddq_f32(v16, vandq_s8(*(v0 + v10 + 432), v22));
      v17 = vaddq_f32(v17, vandq_s8(*(v0 + v10 + 704), v21));
      v18 = vaddq_f32(v18, vandq_s8(*(v0 + v10 + 688), v22));
      v19 = vaddq_f32(v19, vandq_s8(*(v0 + v10 + 960), v21));
      v20 = vaddq_f32(v20, vandq_s8(*(v0 + v10 + 944), v22));
      v10 += 32;
    }

    while (v10 != 224);
    v8 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v14, v13), vaddq_f32(v16, v15)), vpaddq_f32(vaddq_f32(v18, v17), vaddq_f32(v20, v19))), ReciprocalTable[64 - v9]);
  }

  v23 = *(v0 + 124);
  v24 = *v1;
  *&STACK[0xE90] = 0uLL;
  *&STACK[0xE80] = 0uLL;
  *&STACK[0xE70] = 0uLL;
  *&STACK[0xE60] = 0uLL;
  *&STACK[0xE50] = 0uLL;
  *&STACK[0xE40] = 0uLL;
  *&STACK[0xE30] = 0uLL;
  *&STACK[0xE20] = 0uLL;
  *&STACK[0xE10] = 0uLL;
  *&STACK[0xE00] = 0uLL;
  *&STACK[0xDF0] = 0uLL;
  *&STACK[0xDE0] = 0uLL;
  *&STACK[0xDD0] = 0uLL;
  *&STACK[0xDC0] = 0uLL;
  *&STACK[0xDB0] = 0uLL;
  *&STACK[0xDA0] = 0uLL;
  *&STACK[0xD90] = 0uLL;
  *&STACK[0xD80] = 0uLL;
  *&STACK[0xD70] = 0uLL;
  *&STACK[0xD60] = 0uLL;
  *&STACK[0xD50] = 0uLL;
  *&STACK[0xD40] = 0uLL;
  *&STACK[0xD30] = 0uLL;
  *&STACK[0xD20] = 0uLL;
  *&STACK[0xD10] = 0uLL;
  *&STACK[0xD00] = 0uLL;
  *&STACK[0xCF0] = 0uLL;
  *&STACK[0xCE0] = 0uLL;
  *&STACK[0xCD0] = 0uLL;
  *&STACK[0xCC0] = 0uLL;
  __asm { FMOV            V2.4S, #3.0 }

  *&STACK[0x3A0] = _Q2;
  *&STACK[0xCB0] = 0uLL;
  *&STACK[0xCA0] = 0uLL;
  if (!(_NF ^ _VF | _ZF))
  {
    LODWORD(STACK[0x1434]) = 1;
    if (*(v0 + 136))
    {
      v28 = WeightInfoForSingleLineSingleWeight_8x8(2, 2);
      v29 = 0;
      STACK[0x21F0] = v28;
      v30.i64[0] = 0x7F0000007FLL;
      v30.i64[1] = 0x7F0000007FLL;
      v31 = vnegq_f32(v30);
      v32 = v6 + 2448;
      v33 = v31;
      v34.i64[0] = 0x7F0000007FLL;
      v34.i64[1] = 0x7F0000007FLL;
      do
      {
        v36 = *(v32 + v29);
        v35 = *(v32 + v29 + 16);
        v31 = vminnmq_f32(v36, v31);
        v33 = vminnmq_f32(v35, v33);
        v30 = vmaxnmq_f32(v36, v30);
        v34 = vmaxnmq_f32(v35, v34);
        v29 += 32;
      }

      while (v29 != 256);
      v37 = vminnmq_f32(v31, v33);
      v38 = vmaxnmq_f32(v30, v34);
      v39 = vminnmq_f32(v37, vextq_s8(v37, v37, 8uLL));
      v40 = vmaxnmq_f32(v38, vextq_s8(v38, v38, 8uLL));
      v41 = vminnmq_f32(v39, vrev64q_s32(v39));
      v42 = vmaxnmq_f32(v40, vrev64q_s32(v40));
      v41.i32[3] = 0;
      v42.i32[3] = 0;
      v43 = vorrq_s8(v42, xmmword_298492170);
      v44 = vorrq_s8(v41, xmmword_298492170);
      goto LABEL_139;
    }

    v89 = *(v0 + 32);
    if (v89)
    {
      v90 = *v89;
      v90.i32[3] = 0;
    }

    else
    {
      v90 = xmmword_2984959B0;
    }

    v554 = vmulq_f32(v8, v90);
    *v554.i8 = vadd_f32(*v554.i8, *&vextq_s8(v554, v554, 8uLL));
    v555 = vadd_f32(*v554.i8, vdup_lane_s32(*v554.i8, 1));
    v556 = vaddv_f32(*v554.i8);
    v557 = vdupq_lane_s32(v555, 0);
    v558 = v0 + 2448;
    v559 = v0 + 912;
    v560 = vdupq_laneq_s32(v8, 3);
    v561 = *(v0 + 135);
    v562 = xmmword_298495620;
    v563 = xmmword_298495600;
    v564 = v0 + 2192;
    v565.i64[0] = -1;
    v565.i64[1] = -1;
    v566.i64[0] = 0x7F0000007FLL;
    v566.i64[1] = 0x7F0000007FLL;
    v567 = 8;
    v568.i64[0] = 0x800000008;
    v568.i64[1] = 0x800000008;
    v569 = v0 + 2192;
    v570.i64[0] = 0x7F0000007FLL;
    v570.i64[1] = 0x7F0000007FLL;
    v571.i64[0] = 0x7F0000007FLL;
    v571.i64[1] = 0x7F0000007FLL;
    v572.i64[0] = -1;
    v572.i64[1] = -1;
    do
    {
      v573 = vsubq_f32(*(v569 + 256), v557);
      v574 = vsubq_f32(*(v569 + 272), v557);
      v575 = vsubq_f32(*(v569 - 1264), v560);
      v576 = vsubq_f32(*(v569 - 1280), v560);
      v577 = vmlaq_f32(vmulq_f32(v575, v575), v574, v574);
      v578 = vmlaq_f32(vmulq_f32(v576, v576), v573, v573);
      if (*(v0 + 135))
      {
        v577 = vbslq_s8(vcltzq_s32(*(v569 + 16)), v566, v577);
        v578 = vbslq_s8(vcltzq_s32(*v569), v566, v578);
      }

      v565 = vbslq_s8(vcgtq_f32(v578, v570), v563, v565);
      v572 = vbslq_s8(vcgtq_f32(v577, v571), v562, v572);
      v570 = vmaxnmq_f32(v570, v578);
      v571 = vmaxnmq_f32(v571, v577);
      v563 = vaddq_s32(v563, v568);
      v562 = vaddq_s32(v562, v568);
      v569 += 32;
      --v567;
    }

    while (v567);
    v579 = vmaxnmq_f32(v570, v571);
    v580 = vbslq_s8(vcgtq_f32(v570, v571), v565, v572);
    v581 = vextq_s8(v579, v579, 8uLL);
    v582 = vcgtq_f32(v579, v581);
    v583 = vbslq_s8(v582, v580, vextq_s8(v580, v580, 8uLL));
    v584 = vmaxnmq_f32(v579, v581);
    v587 = vbslq_s8(vcgtq_f32(v584, vrev64q_s32(v584)), v583, vdupq_lane_s32(*v583.i8, 1)).u64[0];
    v585 = v587.i32[0];
    v586 = v587.i32[0];
    v587.i32[0] = *(v558 + 4 * v587.i32[0]);
    LODWORD(v2) = *(v559 + 4 * v586);
    *v582.i32 = v556 - *v587.i32;
    v588 = vdupq_lane_s32(v587, 0);
    v589 = vdupq_lane_s32(*&v2, 0);
    v590 = v8.f32[3] - *&v2;
    v591 = vdupq_lane_s32(*v582.i8, 0);
    v592 = xmmword_298495620;
    v593 = xmmword_298495600;
    v594.i64[0] = -1;
    v594.i64[1] = -1;
    v595.i64[0] = 0x7F0000007FLL;
    v595.i64[1] = 0x7F0000007FLL;
    v596 = 8;
    v597.i64[0] = 0x800000008;
    v597.i64[1] = 0x800000008;
    v598.i64[0] = 0x7F0000007FLL;
    v598.i64[1] = 0x7F0000007FLL;
    v599.i64[0] = 0x7F0000007FLL;
    v599.i64[1] = 0x7F0000007FLL;
    v600.i64[0] = -1;
    v600.i64[1] = -1;
    do
    {
      v601 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v564 - 1264), v589), v590), v591, vsubq_f32(*(v564 + 272), v588));
      v602 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v564 - 1280), v589), v590), v591, vsubq_f32(*(v564 + 256), v588));
      if (*(v0 + 135))
      {
        v601 = vbslq_s8(vcltzq_s32(*(v564 + 16)), v595, v601);
        v602 = vbslq_s8(vcltzq_s32(*v564), v595, v602);
      }

      v594 = vbslq_s8(vcgtq_f32(v602, v598), v593, v594);
      v600 = vbslq_s8(vcgtq_f32(v601, v599), v592, v600);
      v598 = vmaxnmq_f32(v598, v602);
      v599 = vmaxnmq_f32(v599, v601);
      v593 = vaddq_s32(v593, v597);
      v592 = vaddq_s32(v592, v597);
      v564 += 32;
      --v596;
    }

    while (v596);
    v603 = vdupq_lane_s32(v587, 0);
    v603.i32[3] = *(v559 + 4 * v586);
    *&STACK[0x350] = v603;
    v604 = vmaxnmq_f32(v598, v599);
    v605 = vbslq_s8(vcgtq_f32(v598, v599), v594, v600);
    v606 = vextq_s8(v604, v604, 8uLL);
    v607 = vbslq_s8(vcgtq_f32(v604, v606), v605, vextq_s8(v605, v605, 8uLL));
    v608 = vmaxnmq_f32(v604, v606);
    v609 = vcgtq_f32(v608, vrev64q_s32(v608));
    v610 = vbslq_s8(v609, v607, vdupq_lane_s32(*v607.i8, 1));
    *&STACK[0x370] = v610;
    v611 = v610.i32[0];
    v612 = (v558 + 4 * v610.i32[0]);
    v613 = vld1q_dup_f32(v612);
    v609.i32[0] = *(v559 + 4 * v611);
    *&STACK[0x380] = v609;
    *&STACK[0x390] = v2;
    v613.i32[3] = v609.i32[0];
    *&STACK[0x360] = v613;
    STACK[0x21F0] = WeightInfoForSingleLineSingleWeight_8x8(64, 4);
    if (!*(v6 + 134))
    {
      v44 = *&STACK[0x350];
      v43 = *&STACK[0x360];
      goto LABEL_139;
    }

    if (*(v6 + 135))
    {
      v44 = *&STACK[0x350];
      v43 = *&STACK[0x360];
      if (COERCE_FLOAT(*&STACK[0x390]) != 0.0)
      {
        v616 = *&STACK[0x380];
        if (COERCE_FLOAT(*&STACK[0x380]) != 0.0)
        {
          v617 = vsubq_f32(v43, v44);
          v616.i32[0] = v617.i32[3];
          if (v617.f32[3] == 0.0)
          {
            if (*(v6 + 134) == 63)
            {
              goto LABEL_135;
            }

            v614.i64[0] = 0x3F0000003FLL;
            v614.i64[1] = 0x3F0000003FLL;
            v44 = vnegq_f32(v614);
          }

          v614.i64[0] = 0;
          v2692 = vdupq_lane_s32(*&vcgtq_f32(v614, v616), 0);
          v2693 = vbslq_s8(v2692, vnegq_f32(v617), v617);
          v2694 = vbslq_s8(v2692, v43, v44);
          v615.f32[0] = v2694.f32[3] / v2693.f32[3];
          v2695 = vmlsq_lane_f32(v2694, v2693, v615, 0);
          if ((vminvq_u32(vandq_s8(vcgtq_f32(v2695, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v2695))) & 0x80000000) != 0)
          {
            v43 = vbslq_s8(v2692, v44, v43);
            v2700 = vmaxnmq_f32(v2695, 0);
            __asm { FMOV            V1.4S, #1.0 }

            v44 = vminnmq_f32(v2700, _Q1);
          }

          else
          {
            v2696 = *&STACK[0x370];
            v2697 = (v558 + 4 * v585);
            v44 = vld1q_dup_f32(v2697);
            v44.i32[3] = *(v559 + 4 * v585);
            v2698 = (v558 + 4 * v2696);
            v43 = vld1q_dup_f32(v2698);
            v43.i32[3] = *(v559 + 4 * v2696);
          }
        }
      }

      goto LABEL_139;
    }

    v553 = vdupq_lane_s32(*&vcgtq_f32(*&STACK[0x380], *&STACK[0x390]), 0);
    v44 = *&STACK[0x350];
    v43 = *&STACK[0x360];
LABEL_138:
    v43 = vandq_s8(v43, v553);
    v44 = vbicq_s8(v44, v553);
    goto LABEL_139;
  }

  v45 = 0;
  __asm { FMOV            V11.4S, #1.0 }

  LODWORD(STACK[0x1434]) = 0;
  v47 = vdupq_lane_s32(*v8.f32, 0);
  v48 = vdupq_lane_s32(*v8.f32, 1);
  v49 = vdupq_laneq_s32(v8, 2);
  v50 = vdupq_laneq_s32(v8, 3);
  v51.i64[0] = -1;
  v51.i64[1] = -1;
  v52 = *(v0 + 32);
  v53.i64[0] = 0x7F0000007FLL;
  v53.i64[1] = 0x7F0000007FLL;
  v54 = xmmword_298495620;
  v55.i64[0] = 0x800000008;
  v55.i64[1] = 0x800000008;
  v56.i64[0] = 0x7F0000007FLL;
  v56.i64[1] = 0x7F0000007FLL;
  v57 = xmmword_298495600;
  v58.i64[0] = 0x7F0000007FLL;
  v58.i64[1] = 0x7F0000007FLL;
  v59.i64[0] = -1;
  v59.i64[1] = -1;
  v60 = *(v0 + 135);
  do
  {
    v61 = vsubq_f32(*(v0 + v45 + 144), v47);
    v62 = vsubq_f32(*(v0 + v45 + 160), v47);
    v63 = vsubq_f32(*(v0 + v45 + 400), v48);
    v64 = vsubq_f32(*(v0 + v45 + 416), v48);
    v65 = vsubq_f32(*(v0 + v45 + 656), v49);
    v66 = vsubq_f32(*(v0 + v45 + 672), v49);
    v67 = vsubq_f32(*(v0 + v45 + 912), v50);
    v68 = vsubq_f32(*(v0 + v45 + 928), v50);
    v69 = vmulq_f32(v62, v62);
    v70 = vmulq_f32(v61, v61);
    v71 = vmulq_f32(v64, v64);
    v72 = vmulq_f32(v63, v63);
    v73 = vmulq_f32(v66, v66);
    v74 = vmulq_f32(v65, v65);
    v75 = vmulq_f32(v68, v68);
    v76 = vmulq_f32(v67, v67);
    if (v52)
    {
      v77 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v71, *v52, 1), v69, COERCE_FLOAT(*v52->f32)), v73, *v52->f32, 2), v75, *v52->f32, 3), *&STACK[0x3A0]);
      v78 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v72, *v52, 1), v70, COERCE_FLOAT(*v52->f32)), v74, *v52->f32, 2), v76, *v52->f32, 3), *&STACK[0x3A0]);
      if (!*(v0 + 135))
      {
        goto LABEL_15;
      }

LABEL_14:
      v77 = vbslq_s8(vcltzq_s32(*(v0 + v45 + 2208)), v53, v77);
      v78 = vbslq_s8(vcltzq_s32(*(v0 + v45 + 2192)), v53, v78);
      goto LABEL_15;
    }

    v78 = vaddq_f32(vaddq_f32(vaddq_f32(v70, v72), v74), v76);
    v77 = vaddq_f32(vaddq_f32(vaddq_f32(v69, v71), v73), v75);
    if (*(v0 + 135))
    {
      goto LABEL_14;
    }

LABEL_15:
    v51 = vbslq_s8(vcgtq_f32(v78, v56), v57, v51);
    v59 = vbslq_s8(vcgtq_f32(v77, v58), v54, v59);
    v56 = vmaxnmq_f32(v56, v78);
    v58 = vmaxnmq_f32(v58, v77);
    v57 = vaddq_s32(v57, v55);
    v54 = vaddq_s32(v54, v55);
    v45 += 32;
  }

  while (v45 != 256);
  v79 = vmaxnmq_f32(v56, v58);
  v80 = vbslq_s8(vcgtq_f32(v56, v58), v51, v59);
  v81 = vextq_s8(v79, v79, 8uLL);
  v82 = vbslq_s8(vcgtq_f32(v79, v81), v80, vextq_s8(v80, v80, 8uLL));
  v83 = vmaxnmq_f32(v79, v81);
  v82.i32[0] = vbslq_s8(vcgtq_f32(v83, vrev64q_s32(v83)), v82, vdupq_lane_s32(*v82.i8, 1)).u32[0];
  v84 = v82.i32[0] & ~(v82.i32[0] >> 31);
  v85 = v0 + 1168;
  v86 = *(v0 + 1168 + 16 * v84);
  v87 = vsubq_f32(v8, v86);
  if (v52)
  {
    v88 = *v52->f32;
  }

  else
  {
    v88 = vdupq_n_s32(0x3EAAAAABu);
  }

  v91 = 0;
  v92 = vmulq_f32(v87, v88);
  v93 = vdupq_lane_s32(*v86.f32, 0);
  v94 = vdupq_lane_s32(*v86.f32, 1);
  v95 = vdupq_laneq_s32(v86, 2);
  v96 = vdupq_laneq_s32(v86, 3);
  v97 = vdupq_lane_s32(*v92.i8, 0);
  v98 = vdupq_laneq_s32(v92, 2);
  v99.i64[0] = -1;
  v99.i64[1] = -1;
  v100.i64[0] = 0x7F0000007FLL;
  v100.i64[1] = 0x7F0000007FLL;
  v101 = vdupq_laneq_s32(v92, 3);
  v102.i64[0] = 0x800000008;
  v102.i64[1] = 0x800000008;
  v103.i64[0] = 0x7F0000007FLL;
  v103.i64[1] = 0x7F0000007FLL;
  v104 = xmmword_298495620;
  v105.i64[0] = 0x7F0000007FLL;
  v105.i64[1] = 0x7F0000007FLL;
  v106 = xmmword_298495600;
  v107.i64[0] = -1;
  v107.i64[1] = -1;
  do
  {
    v108 = (v0 + v91);
    v109 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v0 + v91 + 416), v94), *v92.i8, 1), v97, vsubq_f32(*(v0 + v91 + 160), v93)), v98, vsubq_f32(*(v0 + v91 + 672), v95)), v101, vsubq_f32(*(v0 + v91 + 928), v96));
    v110 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v0 + v91 + 400), v94), *v92.i8, 1), v97, vsubq_f32(*(v0 + v91 + 144), v93)), v98, vsubq_f32(*(v0 + v91 + 656), v95)), v101, vsubq_f32(*(v0 + v91 + 912), v96));
    if (*(v0 + 135))
    {
      v109 = vbslq_s8(vcltzq_s32(v108[138]), v100, v109);
      v110 = vbslq_s8(vcltzq_s32(v108[137]), v100, v110);
    }

    v99 = vbslq_s8(vcgtq_f32(v110, v103), v106, v99);
    v107 = vbslq_s8(vcgtq_f32(v109, v105), v104, v107);
    v103 = vmaxnmq_f32(v103, v110);
    v105 = vmaxnmq_f32(v105, v109);
    v106 = vaddq_s32(v106, v102);
    v104 = vaddq_s32(v104, v102);
    v91 += 32;
  }

  while (v91 != 256);
  *&STACK[0x320] = v95;
  *&STACK[0x330] = v94;
  *&STACK[0x340] = v24;
  v111 = vmaxnmq_f32(v103, v105);
  v112 = vbslq_s8(vcgtq_f32(v103, v105), v99, v107);
  v113 = vextq_s8(v111, v111, 8uLL);
  v114 = vbslq_s8(vcgtq_f32(v111, v113), v112, vextq_s8(v112, v112, 8uLL));
  v115 = vmaxnmq_f32(v111, v113);
  v116 = vbslq_s8(vcgtq_f32(v115, vrev64q_s32(v115)), v114, vdupq_lane_s32(*v114.i8, 1)).u32[0];
  if (v116 == -1)
  {
    v117 = 1;
  }

  else
  {
    v117 = v116;
  }

  v118 = *(v85 + 16 * v117);
  *&STACK[0x350] = v86;
  *&STACK[0x360] = v118;
  v119 = vsubq_f32(v118, v86);
  v120 = vmulq_f32(v119, v119);
  *v120.i32 = vaddv_f32(vadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL)));
  _NF = *v120.i32 < 0.000015259;
  v121 = vrecpes_f32(*v120.i32);
  if (_NF)
  {
    v121 = 0.0;
  }

  v122 = _Q11;
  v123 = _Q11;
  if (v52)
  {
    v123 = vmulq_f32(*v52->f32, *&STACK[0x3A0]);
  }

  v124 = 0;
  v125 = vdupq_lane_s32(*v119.f32, 0);
  v126 = vdupq_lane_s32(*v119.f32, 1);
  v127 = vdupq_laneq_s32(v119, 2);
  v128 = vdupq_laneq_s32(v119, 3);
  v129 = vdupq_lane_s32(*v123.i8, 0);
  v130 = vdupq_laneq_s32(v123, 2);
  v131 = vdupq_laneq_s32(v123, 3);
  v132 = *&STACK[0x320];
  v133 = *&STACK[0x330];
  do
  {
    v134 = *(v0 + v124 + 144);
    v135 = *(v0 + v124 + 160);
    v137 = *(v0 + v124 + 400);
    v136 = *(v0 + v124 + 416);
    v138 = *(v0 + v124 + 656);
    v139 = *(v0 + v124 + 672);
    v140 = *(v0 + v124 + 912);
    v141 = *(v0 + v124 + 928);
    v142 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v137, v133), *v119.f32, 1), v125, vsubq_f32(v134, v93)), v127, vsubq_f32(v138, v132)), v128, vsubq_f32(v140, v96)), v121), v122), 0);
    v143 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v136, v133), *v119.f32, 1), v125, vsubq_f32(v135, v93)), v127, vsubq_f32(v139, v132)), v128, vsubq_f32(v141, v96)), v121), v122), 0);
    v144 = vmlaq_f32(v93, v143, v125);
    v145 = vmlaq_f32(v133, v143, v126);
    v146 = vmlaq_f32(v132, v142, v127);
    v147 = vmlaq_f32(v132, v143, v127);
    v148 = vmlaq_f32(v96, v143, v128);
    v149 = vmlaq_f32(v96, v142, v128);
    v150 = vsubq_f32(vmlaq_f32(v93, v142, v125), v134);
    v151 = vsubq_f32(v144, v135);
    v152 = vsubq_f32(v145, v136);
    v153 = vsubq_f32(vmlaq_f32(v133, v142, v126), v137);
    v154 = vsubq_f32(v147, v139);
    v155 = vsubq_f32(v146, v138);
    v156 = vsubq_f32(v149, v140);
    v157 = vsubq_f32(v148, v141);
    v158 = (&STACK[0xE30] + v124);
    *v158 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v153, v153), *v123.i8, 1), v129, vmulq_f32(v150, v150)), v130, vmulq_f32(v155, v155)), v131, vmulq_f32(v156, v156));
    v158[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v152, v152), *v123.i8, 1), v129, vmulq_f32(v151, v151)), v130, vmulq_f32(v154, v154)), v131, vmulq_f32(v157, v157));
    v124 += 32;
  }

  while (v124 != 256);
  *&STACK[0x300] = v93;
  v159 = 0;
  v160 = xmmword_298495620;
  v161 = xmmword_298495600;
  v162 = 0uLL;
  v163.i64[0] = 0x7F0000007FLL;
  v163.i64[1] = 0x7F0000007FLL;
  v164.i64[0] = 0x800000008;
  v164.i64[1] = 0x800000008;
  v165.i64[0] = 0x7F0000007FLL;
  v165.i64[1] = 0x7F0000007FLL;
  v166 = 0uLL;
  do
  {
    v168 = *(&STACK[0xE30] + v159);
    v167 = *(&STACK[0xE30] + v159 + 16);
    v169 = vcgtq_f32(v168, v163);
    v170 = vcgtq_f32(v167, v165);
    v163 = vmaxnmq_f32(v163, v168);
    v165 = vmaxnmq_f32(v165, v167);
    v166 = vbslq_s8(v170, v160, v166);
    v162 = vbslq_s8(v169, v161, v162);
    v161 = vaddq_s32(v161, v164);
    v160 = vaddq_s32(v160, v164);
    v159 += 32;
  }

  while (v159 != 256);
  v171 = 0;
  v172 = vbslq_s8(vcgtq_f32(v165, v163), v166, v162);
  v173 = vmaxnmq_f32(v163, v165);
  v174 = vextq_s8(v173, v173, 8uLL);
  v175 = vbslq_s8(vcgtq_f32(v174, v173), vextq_s8(v172, v172, 8uLL), v172);
  v176 = vmaxnmq_f32(v173, v174);
  v177 = *(v85 + 16 * vbslq_s8(vcgtq_f32(vrev64q_s32(v176), v176), vdupq_lane_s32(*v175.i8, 1), v175).i32[0]);
  v179 = *&STACK[0xE30];
  v178 = *&STACK[0xE40];
  v180 = *&STACK[0x350];
  v181 = *&STACK[0x360];
  do
  {
    v178 = vaddq_f32(v178, *(&STACK[0xE50] + v171 + 16));
    v179 = vaddq_f32(v179, *(&STACK[0xE50] + v171));
    v171 += 32;
  }

  while (v171 != 224);
  v182 = vaddq_f32(v179, v178);
  v182.i64[0] = vpaddq_f32(v182, v182).u64[0];
  v182.f32[0] = vpadd_f32(*v182.f32, *v182.f32).f32[0];
  *&STACK[0xDA0] = v180;
  *&STACK[0xDB0] = v181;
  *&STACK[0xDC0] = v180;
  *&STACK[0xDD0] = v181;
  *&STACK[0xDE0] = v177;
  *&STACK[0xDF0] = v177;
  LODWORD(STACK[0xE0C]) = v182.i32[0];
  v183.i64[0] = 0x7F0000007FLL;
  v183.i64[1] = 0x7F0000007FLL;
  *&STACK[0xE10] = vnegq_f32(v183);
  LODWORD(STACK[0xE20]) = 2139095040;
  if (v182.f32[0] <= 0.0019685)
  {
    v24 = *&STACK[0x340];
  }

  else
  {
    *&STACK[0x310] = v177;
    v184 = vsubq_f32(v177, v180);
    v185 = vmulq_f32(v184, v184);
    *v185.i32 = vaddv_f32(vadd_f32(*v185.i8, *&vextq_s8(v185, v185, 8uLL)));
    v186 = 0.0;
    _NF = *v185.i32 < 0.000015259;
    v187 = vrecpes_f32(*v185.i32);
    if (!_NF)
    {
      v186 = v187;
    }

    __asm { FMOV            V7.4S, #1.0 }

    v189 = _Q7;
    if (v52)
    {
      v189 = vmulq_f32(*v52->f32, *&STACK[0x3A0]);
    }

    v190 = 0;
    v191 = vdupq_lane_s32(*v184.f32, 0);
    v192 = vdupq_lane_s32(*v184.f32, 1);
    v193 = vdupq_laneq_s32(v184, 2);
    v194 = vdupq_laneq_s32(v184, 3);
    v195 = vdupq_lane_s32(*v189.i8, 0);
    v196 = vdupq_laneq_s32(v189, 2);
    v197 = vdupq_laneq_s32(v189, 3);
    v198 = *&STACK[0x300];
    v200 = *&STACK[0x320];
    v199 = *&STACK[0x330];
    do
    {
      v201 = *(v0 + v190 + 144);
      v202 = *(v0 + v190 + 160);
      v204 = *(v0 + v190 + 400);
      v203 = *(v0 + v190 + 416);
      v205 = *(v0 + v190 + 656);
      v206 = *(v0 + v190 + 672);
      v207 = *(v0 + v190 + 912);
      v208 = *(v0 + v190 + 928);
      v209 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v204, v199), *v184.f32, 1), v191, vsubq_f32(v201, v198)), v193, vsubq_f32(v205, v200)), v194, vsubq_f32(v207, v96)), v186), _Q7), 0);
      v210 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v203, v199), *v184.f32, 1), v191, vsubq_f32(v202, v198)), v193, vsubq_f32(v206, v200)), v194, vsubq_f32(v208, v96)), v186), _Q7), 0);
      v211 = vmlaq_f32(v198, v210, v191);
      v212 = vmlaq_f32(v199, v210, v192);
      v213 = vmlaq_f32(v200, v209, v193);
      v214 = vmlaq_f32(v200, v210, v193);
      v215 = vmlaq_f32(v96, v210, v194);
      v216 = vmlaq_f32(v96, v209, v194);
      v217 = vsubq_f32(vmlaq_f32(v198, v209, v191), v201);
      v218 = vsubq_f32(v211, v202);
      v219 = vsubq_f32(v212, v203);
      v220 = vsubq_f32(vmlaq_f32(v199, v209, v192), v204);
      v221 = vsubq_f32(v214, v206);
      v222 = vsubq_f32(v213, v205);
      v223 = vsubq_f32(v216, v207);
      v224 = vsubq_f32(v215, v208);
      v225 = (&STACK[0xF30] + v190);
      *v225 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v220, v220), *v189.i8, 1), v195, vmulq_f32(v217, v217)), v196, vmulq_f32(v222, v222)), v197, vmulq_f32(v223, v223));
      v225[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v219, v219), *v189.i8, 1), v195, vmulq_f32(v218, v218)), v196, vmulq_f32(v221, v221)), v197, vmulq_f32(v224, v224));
      v190 += 32;
    }

    while (v190 != 256);
    v226 = *&STACK[0x360];
    v227 = vsubq_f32(*&STACK[0x310], *&STACK[0x360]);
    v228 = vmulq_f32(v227, v227);
    *v228.i32 = vaddv_f32(vadd_f32(*v228.i8, *&vextq_s8(v228, v228, 8uLL)));
    _NF = *v228.i32 < 0.000015259;
    v229 = vrecpes_f32(*v228.i32);
    if (_NF)
    {
      v191.f32[0] = 0.0;
    }

    else
    {
      v191.f32[0] = v229;
    }

    __asm { FMOV            V19.4S, #1.0 }

    *&STACK[0x390] = _Q19;
    if (v52)
    {
      *&STACK[0x390] = vmulq_f32(*v52->f32, *&STACK[0x3A0]);
    }

    v231 = 0;
    v232 = vdupq_lane_s32(*v226.i8, 0);
    v233 = vdupq_lane_s32(*v226.i8, 1);
    v234 = vdupq_laneq_s32(v226, 2);
    v235 = vdupq_laneq_s32(v226, 3);
    v236 = *v227.f32;
    v237 = vdupq_lane_s32(*v227.f32, 0);
    v238 = vdupq_lane_s32(*v227.f32, 1);
    v239 = vdupq_laneq_s32(v227, 2);
    v240 = vdupq_laneq_s32(v227, 3);
    v241 = vdupq_lane_s32(*&STACK[0x390], 0);
    v242 = vdupq_laneq_s32(*&STACK[0x390], 2);
    v243 = vdupq_laneq_s32(*&STACK[0x390], 3);
    do
    {
      v244 = *(v0 + v231 + 144);
      v245 = *(v0 + v231 + 160);
      v247 = *(v0 + v231 + 400);
      v246 = *(v0 + v231 + 416);
      v249 = *(v0 + v231 + 656);
      v248 = *(v0 + v231 + 672);
      v251 = *(v0 + v231 + 912);
      v250 = *(v0 + v231 + 928);
      v252 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v247, v233), v236, 1), v237, vsubq_f32(v244, v232)), v239, vsubq_f32(v249, v234)), v240, vsubq_f32(v251, v235)), v191.f32[0]), _Q19), 0);
      v253 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v246, v233), v236, 1), v237, vsubq_f32(v245, v232)), v239, vsubq_f32(v248, v234)), v240, vsubq_f32(v250, v235)), v191.f32[0]), _Q19), 0);
      v254 = vmlaq_f32(v232, v253, v237);
      v255 = vmlaq_f32(v233, v252, v238);
      v256 = vmlaq_f32(v233, v253, v238);
      v257 = vmlaq_f32(v234, v252, v239);
      v258 = vmlaq_f32(v234, v253, v239);
      v259 = _Q19;
      v260 = v191;
      v261 = vmlaq_f32(v235, v253, v240);
      v262 = vmlaq_f32(v235, v252, v240);
      v263 = vsubq_f32(vmlaq_f32(v232, v252, v237), v244);
      v264 = vsubq_f32(v254, v245);
      v265 = vsubq_f32(v256, v246);
      v266 = vsubq_f32(v255, v247);
      v267 = vsubq_f32(v258, v248);
      v268 = vsubq_f32(v257, v249);
      v269 = vsubq_f32(v262, v251);
      v270 = vsubq_f32(v261, v250);
      v271 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v265, v265), *&STACK[0x390], 1), v241, vmulq_f32(v264, v264)), v242, vmulq_f32(v267, v267)), v243, vmulq_f32(v270, v270));
      v272 = (&STACK[0x1030] + v231);
      *v272 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v266, v266), *&STACK[0x390], 1), v241, vmulq_f32(v263, v263)), v242, vmulq_f32(v268, v268)), v243, vmulq_f32(v269, v269));
      v272[1] = v271;
      v191 = v260;
      _Q19 = v259;
      v231 += 32;
    }

    while (v231 != 256);
    v273 = xmmword_298495620;
    v274 = xmmword_298495600;
    v275 = 0uLL;
    v276.i64[0] = -1;
    v276.i64[1] = -1;
    v277 = 400;
    v278.i64[0] = 0x800000008;
    v278.i64[1] = 0x800000008;
    v279.i64[0] = -1;
    v279.i64[1] = -1;
    v280 = 0uLL;
    do
    {
      v281 = vminnmq_f32(vminnmq_f32(*(&STACK[0xCA0] + v277), *(&STACK[0xCA0] + v277 + 256)), *(&STACK[0xCA0] + v277 + 512));
      v282 = vminnmq_f32(vminnmq_f32(*(&STACK[0xCA0] + v277 + 16), *(&STACK[0xCA0] + v277 + 272)), *(&STACK[0xCA0] + v277 + 528));
      v279 = vbslq_s8(vcgtq_f32(v282, v280), v273, v279);
      v276 = vbslq_s8(vcgtq_f32(v281, v275), v274, v276);
      v275 = vmaxnmq_f32(v275, v281);
      v280 = vmaxnmq_f32(v280, v282);
      v274 = vaddq_s32(v274, v278);
      v273 = vaddq_s32(v273, v278);
      v277 += 32;
    }

    while (v277 != 656);
    *&STACK[0x2E0] = v232;
    v283 = vbslq_s8(vcgtq_f32(v280, v275), v279, v276);
    v284 = vmaxnmq_f32(v275, v280);
    v285 = vextq_s8(v284, v284, 8uLL);
    v286 = vbslq_s8(vcgtq_f32(v285, v284), vextq_s8(v283, v283, 8uLL), v283);
    v287 = vmaxnmq_f32(v284, v285);
    v288 = vbslq_s8(vcgtq_f32(vrev64q_s32(v287), v287), vdupq_lane_s32(*v286.i8, 1), v286).u32[0];
    if (v288 == -1)
    {
      v117 = 2;
    }

    else
    {
      v117 = v288;
    }

    v289 = *(v85 + 16 * v117);
    *&STACK[0xDF0] = v289;
    v290 = *&STACK[0x350];
    *&STACK[0x2F0] = v289;
    v291 = vsubq_f32(v289, v290);
    v292 = vmulq_f32(v291, v291);
    *v292.i32 = vaddv_f32(vadd_f32(*v292.i8, *&vextq_s8(v292, v292, 8uLL)));
    _NF = *v292.i32 < 0.000015259;
    v293 = vrecpes_f32(*v292.i32);
    if (_NF)
    {
      *v278.i32 = 0.0;
    }

    else
    {
      *v278.i32 = v293;
    }

    __asm { FMOV            V23.4S, #1.0 }

    *&STACK[0x390] = _Q23;
    if (v52)
    {
      *&STACK[0x390] = vmulq_f32(*v52->f32, *&STACK[0x3A0]);
    }

    v295 = 0;
    v296 = vdupq_lane_s32(*v291.f32, 0);
    v297 = vdupq_laneq_s32(v291, 2);
    v298 = vdupq_laneq_s32(v291, 3);
    v299 = *&STACK[0x390];
    *&STACK[0x370] = vdupq_lane_s32(*&STACK[0x390], 0);
    *&STACK[0x380] = vdupq_lane_s32(*v291.f32, 1);
    v300 = vdupq_laneq_s32(v299, 2);
    v301 = vdupq_laneq_s32(v299, 3);
    v302 = *&STACK[0x300];
    v304 = *&STACK[0x320];
    v303 = *&STACK[0x330];
    do
    {
      v305 = *(v0 + v295 + 144);
      v306 = *(v0 + v295 + 160);
      v308 = *(v0 + v295 + 400);
      v307 = *(v0 + v295 + 416);
      v310 = *(v0 + v295 + 656);
      v309 = *(v0 + v295 + 672);
      v312 = *(v0 + v295 + 912);
      v311 = *(v0 + v295 + 928);
      v313 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v308, v303), *v291.f32, 1), v296, vsubq_f32(v305, v302)), v297, vsubq_f32(v310, v304)), v298, vsubq_f32(v312, v96)), *v278.i32), _Q23), 0);
      v314 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v307, v303), *v291.f32, 1), v296, vsubq_f32(v306, v302)), v297, vsubq_f32(v309, v304)), v298, vsubq_f32(v311, v96)), *v278.i32), _Q23), 0);
      v315 = vmlaq_f32(v302, v314, v296);
      v316 = vmlaq_f32(v303, v313, *&STACK[0x380]);
      v317 = vmlaq_f32(v303, v314, *&STACK[0x380]);
      v318 = vmlaq_f32(v304, v313, v297);
      v319 = vmlaq_f32(v304, v314, v297);
      v320 = _Q23;
      v321 = v278;
      v322 = v291;
      v323 = vmlaq_f32(v96, v314, v298);
      v324 = vmlaq_f32(v96, v313, v298);
      v325 = vsubq_f32(vmlaq_f32(v302, v313, v296), v305);
      v326 = vsubq_f32(v315, v306);
      v327 = vsubq_f32(v317, v307);
      v328 = vsubq_f32(v316, v308);
      v329 = vsubq_f32(v319, v309);
      v330 = vsubq_f32(v318, v310);
      v331 = vsubq_f32(v324, v312);
      v332 = vsubq_f32(v323, v311);
      v333 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v328, v328), *&STACK[0x390], 1), *&STACK[0x370], vmulq_f32(v325, v325)), v300, vmulq_f32(v330, v330)), v301, vmulq_f32(v331, v331));
      v334 = vmulq_f32(v332, v332);
      v291 = v322;
      v278 = v321;
      _Q23 = v320;
      v335 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v327, v327), *&STACK[0x390], 1), *&STACK[0x370], vmulq_f32(v326, v326)), v300, vmulq_f32(v329, v329)), v301, v334);
      v336 = (&STACK[0x1330] + v295);
      *v336 = v333;
      v336[1] = v335;
      v295 += 32;
    }

    while (v295 != 256);
    v337 = vsubq_f32(*&STACK[0x2F0], *&STACK[0x360]);
    v338 = vmulq_f32(v337, v337);
    *v338.i32 = vaddv_f32(vadd_f32(*v338.i8, *&vextq_s8(v338, v338, 8uLL)));
    v339 = 0.0;
    _NF = *v338.i32 < 0.000015259;
    v340 = vrecpes_f32(*v338.i32);
    if (!_NF)
    {
      v339 = v340;
    }

    __asm { FMOV            V3.4S, #1.0 }

    v342 = _Q3;
    if (v52)
    {
      v342 = vmulq_f32(*v52->f32, *&STACK[0x3A0]);
    }

    v343 = 0;
    v344 = vdupq_lane_s32(*v337.f32, 0);
    v345 = vdupq_lane_s32(*v337.f32, 1);
    v346 = vdupq_laneq_s32(v337, 2);
    v347 = vdupq_laneq_s32(v337, 3);
    v348 = vdupq_lane_s32(*v342.i8, 0);
    v349 = vdupq_laneq_s32(v342, 2);
    v350 = vdupq_laneq_s32(v342, 3);
    v351 = *&STACK[0x2E0];
    do
    {
      v352 = *(v0 + v343 + 144);
      v353 = *(v0 + v343 + 160);
      v355 = *(v0 + v343 + 400);
      v354 = *(v0 + v343 + 416);
      v356 = *(v0 + v343 + 656);
      v357 = *(v0 + v343 + 672);
      v358 = *(v0 + v343 + 912);
      v359 = *(v0 + v343 + 928);
      v360 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v355, v233), *v337.f32, 1), v344, vsubq_f32(v352, v351)), v346, vsubq_f32(v356, v234)), v347, vsubq_f32(v358, v235)), v339), _Q3), 0);
      v361 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v354, v233), *v337.f32, 1), v344, vsubq_f32(v353, v351)), v346, vsubq_f32(v357, v234)), v347, vsubq_f32(v359, v235)), v339), _Q3), 0);
      v362 = vmlaq_f32(v351, v361, v344);
      v363 = vmlaq_f32(v233, v361, v345);
      v364 = vmlaq_f32(v234, v360, v346);
      v365 = vmlaq_f32(v234, v361, v346);
      v366 = vmlaq_f32(v235, v361, v347);
      v367 = vmlaq_f32(v235, v360, v347);
      v368 = vsubq_f32(vmlaq_f32(v351, v360, v344), v352);
      v369 = vsubq_f32(v362, v353);
      v370 = vsubq_f32(v363, v354);
      v371 = vsubq_f32(vmlaq_f32(v233, v360, v345), v355);
      v372 = vsubq_f32(v365, v357);
      v373 = vsubq_f32(v364, v356);
      v374 = vsubq_f32(v367, v358);
      v375 = vsubq_f32(v366, v359);
      v376 = (&STACK[0x1230] + v343);
      *v376 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v371, v371), *v342.i8, 1), v348, vmulq_f32(v368, v368)), v349, vmulq_f32(v373, v373)), v350, vmulq_f32(v374, v374));
      v376[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v370, v370), *v342.i8, 1), v348, vmulq_f32(v369, v369)), v349, vmulq_f32(v372, v372)), v350, vmulq_f32(v375, v375));
      v343 += 32;
    }

    while (v343 != 256);
    v377 = *&STACK[0x310];
    v378 = vsubq_f32(*&STACK[0x2F0], *&STACK[0x310]);
    v379 = vmulq_f32(v378, v378);
    *v379.i32 = vaddv_f32(vadd_f32(*v379.i8, *&vextq_s8(v379, v379, 8uLL)));
    v380 = 0.0;
    _NF = *v379.i32 < 0.000015259;
    v381 = vrecpes_f32(*v379.i32);
    if (!_NF)
    {
      v380 = v381;
    }

    __asm { FMOV            V3.4S, #1.0 }

    v383 = _Q3;
    if (v52)
    {
      v383 = vmulq_f32(*v52->f32, *&STACK[0x3A0]);
    }

    v384 = 0;
    v385 = vdupq_lane_s32(*v377.i8, 0);
    v386 = vdupq_lane_s32(*v377.i8, 1);
    v387 = vdupq_laneq_s32(v377, 2);
    v388 = vdupq_laneq_s32(v377, 3);
    v389 = vdupq_lane_s32(*v378.f32, 0);
    v390 = vdupq_lane_s32(*v378.f32, 1);
    v391 = vdupq_laneq_s32(v378, 2);
    v392 = vdupq_laneq_s32(v378, 3);
    v393 = vdupq_lane_s32(*v383.i8, 0);
    v394 = vdupq_laneq_s32(v383, 2);
    v395 = vdupq_laneq_s32(v383, 3);
    do
    {
      v396 = *(v0 + v384 + 144);
      v397 = *(v0 + v384 + 160);
      v399 = *(v0 + v384 + 400);
      v398 = *(v0 + v384 + 416);
      v400 = *(v0 + v384 + 656);
      v401 = *(v0 + v384 + 672);
      v402 = *(v0 + v384 + 912);
      v403 = *(v0 + v384 + 928);
      v404 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v399, v386), *v378.f32, 1), v389, vsubq_f32(v396, v385)), v391, vsubq_f32(v400, v387)), v392, vsubq_f32(v402, v388)), v380), _Q3), 0);
      v405 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v398, v386), *v378.f32, 1), v389, vsubq_f32(v397, v385)), v391, vsubq_f32(v401, v387)), v392, vsubq_f32(v403, v388)), v380), _Q3), 0);
      v406 = vmlaq_f32(v385, v405, v389);
      v407 = vmlaq_f32(v386, v405, v390);
      v408 = vmlaq_f32(v387, v404, v391);
      v409 = vmlaq_f32(v387, v405, v391);
      v410 = vmlaq_f32(v388, v405, v392);
      v411 = vmlaq_f32(v388, v404, v392);
      v412 = vsubq_f32(vmlaq_f32(v385, v404, v389), v396);
      v413 = vsubq_f32(v406, v397);
      v414 = vsubq_f32(v407, v398);
      v415 = vsubq_f32(vmlaq_f32(v386, v404, v390), v399);
      v416 = vsubq_f32(v409, v401);
      v417 = vsubq_f32(v408, v400);
      v418 = vsubq_f32(v411, v402);
      v419 = vsubq_f32(v410, v403);
      v420 = (&STACK[0x1130] + v384);
      *v420 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v415, v415), *v383.i8, 1), v393, vmulq_f32(v412, v412)), v394, vmulq_f32(v417, v417)), v395, vmulq_f32(v418, v418));
      v420[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v414, v414), *v383.i8, 1), v393, vmulq_f32(v413, v413)), v394, vmulq_f32(v416, v416)), v395, vmulq_f32(v419, v419));
      v384 += 32;
    }

    while (v384 != 256);
    v421 = 0;
    v423 = *&STACK[0xF30];
    v422 = *&STACK[0xF40];
    do
    {
      v422 = vaddq_f32(v422, *(&STACK[0xF50] + v421 + 16));
      v423 = vaddq_f32(v423, *(&STACK[0xF50] + v421));
      v421 += 32;
    }

    while (v421 != 224);
    v424 = 0;
    v425 = vaddq_f32(v423, v422);
    v425.i64[0] = vpaddq_f32(v425, v425).u64[0];
    LODWORD(STACK[0xE10]) = vpadd_f32(*v425.f32, *v425.f32).u32[0];
    v427 = *&STACK[0x1030];
    v426 = *&STACK[0x1040];
    v24 = *&STACK[0x340];
    v428 = *&STACK[0x350];
    v429 = *&STACK[0x360];
    do
    {
      v426 = vaddq_f32(v426, *(&STACK[0x1050] + v424 + 16));
      v427 = vaddq_f32(v427, *(&STACK[0x1050] + v424));
      v424 += 32;
    }

    while (v424 != 224);
    v430 = 0;
    v431 = vaddq_f32(v427, v426);
    v431.i64[0] = vpaddq_f32(v431, v431).u64[0];
    LODWORD(STACK[0xE14]) = vpadd_f32(*v431.f32, *v431.f32).u32[0];
    v433 = *&STACK[0x1130];
    v432 = *&STACK[0x1140];
    do
    {
      v432 = vaddq_f32(v432, *(&STACK[0x1150] + v430 + 16));
      v433 = vaddq_f32(v433, *(&STACK[0x1150] + v430));
      v430 += 32;
    }

    while (v430 != 224);
    v434 = 0;
    v435 = vaddq_f32(v433, v432);
    v435.i64[0] = vpaddq_f32(v435, v435).u64[0];
    LODWORD(STACK[0xE18]) = vpadd_f32(*v435.f32, *v435.f32).u32[0];
    v437 = *&STACK[0x1230];
    v436 = *&STACK[0x1240];
    v438 = *&STACK[0x310];
    do
    {
      v436 = vaddq_f32(v436, *(&STACK[0x1250] + v434 + 16));
      v437 = vaddq_f32(v437, *(&STACK[0x1250] + v434));
      v434 += 32;
    }

    while (v434 != 224);
    v439 = 0;
    v440 = vaddq_f32(v437, v436);
    v440.i64[0] = vpaddq_f32(v440, v440).u64[0];
    LODWORD(STACK[0xE1C]) = vpadd_f32(*v440.f32, *v440.f32).u32[0];
    v442 = *&STACK[0x1330];
    v441 = *&STACK[0x1340];
    do
    {
      v441 = vaddq_f32(v441, *(&STACK[0x1350] + v439 + 16));
      v442 = vaddq_f32(v442, *(&STACK[0x1350] + v439));
      v439 += 32;
    }

    while (v439 != 224);
    v443 = 0;
    v444 = 0;
    v445 = vaddq_f32(v442, v441);
    v445.i64[0] = vpaddq_f32(v445, v445).u64[0];
    LODWORD(STACK[0xE20]) = vpadd_f32(*v445.f32, *v445.f32).u32[0];
    do
    {
      v446 = *(&STACK[0xE10] + v443++);
      if (v446 < *(&STACK[0xE0C] + v444))
      {
        v444 = v443;
      }
    }

    while (v443 != 5);
    *&STACK[0x440] = v428;
    *&STACK[0x450] = v429;
    *&STACK[0x460] = v438;
    *&STACK[0x470] = *&STACK[0x2F0];
    v447 = colorVertexTable[v444];
    v448 = *(&STACK[0x440] + (v447 & 3));
    v449 = *(&STACK[0x440] + (v447 & 0xF0));
    *&STACK[0x350] = v448;
    *&STACK[0x360] = v449;
    *&STACK[0xDB0] = v449;
    *&STACK[0xDA0] = v448;
    LODWORD(STACK[0x1430]) = v444;
  }

  if (*(v0 + 136))
  {
    v450 = 6;
  }

  else
  {
    v450 = 8;
  }

  v451 = WeightInfoForSingleLineSingleWeight_8x8(64, v450);
  v452 = 0;
  STACK[0x21F0] = v451;
  *v453.i32 = ReciprocalTable[BYTE4(v451)];
  *v454.i32 = *v453.i32 * *v453.i32;
  v44 = *&STACK[0x350];
  v43 = *&STACK[0x360];
  v455 = vsubq_f32(*&STACK[0x360], *&STACK[0x350]);
  v456.i64[0] = 0x8000000080000000;
  v456.i64[1] = 0x8000000080000000;
  v457 = vdupq_n_s32(0x3B808081u);
  v458 = vorrq_s8(vandq_s8(v455, v456), v457);
  v459 = vabdq_f32(*&STACK[0x360], *&STACK[0x350]);
  v460 = vcgtq_f32(v457, v459);
  v461 = vbslq_s8(v460, v458, v455);
  __asm { FMOV            V0.4S, #1.0 }

  v463 = vdivq_f32(_Q0, v461);
  v464 = vdupq_lane_s32(*v463.f32, 0);
  *v460.i32 = vmuls_n_f32(COERCE_FLOAT(*&STACK[0x350]), v463.f32[0]);
  v465 = vnegq_f32(vdupq_lane_s32(*v460.i8, 0));
  v466.i32[0] = v463.i32[1];
  v467 = vdupq_lane_s32(*v463.f32, 1);
  v459.f32[0] = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(STACK[0x350])), *v463.f32, 1);
  v468 = vnegq_f32(vdupq_lane_s32(*v459.f32, 0));
  v469.i32[0] = v463.i32[2];
  v470 = vdupq_laneq_s32(v463, 2);
  *v471.i32 = vmuls_lane_f32(COERCE_FLOAT(STACK[0x358]), v463, 2);
  v472 = vnegq_f32(vdupq_lane_s32(v471, 0));
  v473.i32[0] = v463.i32[3];
  v474 = vdupq_laneq_s32(v463, 3);
  *v475.i32 = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*&STACK[0x350])), v463, 3);
  v476 = vnegq_f32(vdupq_lane_s32(v475, 0));
  v477 = vdupq_lane_s32(v454, 0);
  v478 = 0uLL;
  v479 = 0uLL;
  do
  {
    v480 = vmlaq_f32(v465, v464, *(v6 + v452 + 144));
    v481 = vmlaq_f32(v465, v464, *(v6 + v452 + 160));
    v482 = vmlaq_f32(v468, v467, *(v6 + v452 + 416));
    v483 = vmlaq_f32(v468, v467, *(v6 + v452 + 400));
    v484 = vmlaq_f32(v472, v470, *(v6 + v452 + 672));
    v485 = vmlaq_f32(v472, v470, *(v6 + v452 + 656));
    v486 = vmlaq_f32(v476, v474, *(v6 + v452 + 912));
    v487 = vmlaq_f32(v476, v474, *(v6 + v452 + 928));
    v488 = vcgtq_f32(v477, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v483, v483), v480, v480), v485, v485), v486, v486));
    v489 = vcgtq_f32(v477, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v482, v482), v481, v481), v484, v484), v487, v487));
    v490 = (&STACK[0x440] + v452);
    *v490 = v488;
    v490[1] = v489;
    v479 = vsubq_s32(v479, v489);
    v478 = vsubq_s32(v478, v488);
    v452 += 32;
  }

  while (v452 != 256);
  v491 = vaddq_s32(v478, v479);
  v491.i64[0] = vpaddq_s32(v491, v491).u64[0];
  v492 = vpadd_s32(*v491.i8, *v491.i8).u8[0];
  if ((v492 & 0xFE) != 0)
  {
    v493 = 0;
    v494 = vcltzq_s32(*&STACK[0x440]);
    v495 = vcltzq_s32(*&STACK[0x450]);
    v496 = vandq_s8(v495, *(v6 + 160));
    v497 = vandq_s8(v494, *(v6 + 144));
    v498 = vandq_s8(*(v7 + 144), v495);
    v499 = vandq_s8(*(v7 + 128), v494);
    v500 = vandq_s8(*(v7 + 400), v495);
    v501 = vandq_s8(*(v7 + 384), v494);
    v502 = vandq_s8(*(v7 + 656), v495);
    v503 = vandq_s8(*(v7 + 640), v494);
    do
    {
      v504 = vcltzq_s32(*(&STACK[0x460] + v493 + 16));
      v505 = vcltzq_s32(*(&STACK[0x460] + v493));
      v496 = vaddq_f32(v496, vandq_s8(v504, *(v6 + v493 + 192)));
      v497 = vaddq_f32(v497, vandq_s8(v505, *(v6 + v493 + 176)));
      v498 = vaddq_f32(v498, vandq_s8(*(v6 + v493 + 448), v504));
      v499 = vaddq_f32(v499, vandq_s8(*(v6 + v493 + 432), v505));
      v500 = vaddq_f32(v500, vandq_s8(*(v6 + v493 + 704), v504));
      v501 = vaddq_f32(v501, vandq_s8(*(v6 + v493 + 688), v505));
      v502 = vaddq_f32(v502, vandq_s8(*(v6 + v493 + 960), v504));
      v503 = vaddq_f32(v503, vandq_s8(*(v6 + v493 + 944), v505));
      v493 += 32;
    }

    while (v493 != 224);
    v44 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v497, v496), vaddq_f32(v499, v498)), vpaddq_f32(vaddq_f32(v501, v500), vaddq_f32(v503, v502))), ReciprocalTable[v492]);
  }

  v506 = 0;
  v463.f32[0] = v463.f32[0] * v43.f32[0];
  v507 = vnegq_f32(vdupq_lane_s32(*v463.f32, 0));
  *v466.i32 = vmuls_lane_f32(*v466.i32, *v43.f32, 1);
  v508 = vnegq_f32(vdupq_lane_s32(v466, 0));
  *v469.i32 = vmuls_lane_f32(*v469.i32, v43, 2);
  v509 = vnegq_f32(vdupq_lane_s32(v469, 0));
  *v473.i32 = vmuls_lane_f32(*v473.i32, v43, 3);
  v510 = vnegq_f32(vdupq_lane_s32(v473, 0));
  v511 = 0uLL;
  v512 = 0uLL;
  do
  {
    v513 = vmlaq_f32(v507, v464, *(v6 + v506 + 144));
    v514 = vmlaq_f32(v507, v464, *(v6 + v506 + 160));
    v515 = vmlaq_f32(v508, v467, *(v6 + v506 + 416));
    v516 = vmlaq_f32(v508, v467, *(v6 + v506 + 400));
    v517 = vmlaq_f32(v509, v470, *(v6 + v506 + 672));
    v518 = vmlaq_f32(v509, v470, *(v6 + v506 + 656));
    v519 = vmlaq_f32(v510, v474, *(v6 + v506 + 912));
    v520 = vmlaq_f32(v510, v474, *(v6 + v506 + 928));
    v521 = vcgtq_f32(v477, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v516, v516), v513, v513), v518, v518), v519, v519));
    v522 = vcgtq_f32(v477, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v515, v515), v514, v514), v517, v517), v520, v520));
    v523 = (&STACK[0x440] + v506);
    *v523 = v521;
    v523[1] = v522;
    v512 = vsubq_s32(v512, v522);
    v511 = vsubq_s32(v511, v521);
    v506 += 32;
  }

  while (v506 != 256);
  v524 = vaddq_s32(v511, v512);
  v525 = vpaddq_s32(v524, v524);
  *v525.f32 = vpadd_s32(*v525.f32, *v525.f32);
  v526 = v525.i8[0];
  if ((v525.i8[0] & 0xFE) != 0)
  {
    v527 = 0;
    v528 = vcltzq_s32(*&STACK[0x440]);
    v529 = vcltzq_s32(*&STACK[0x450]);
    v530 = vandq_s8(v529, *(v6 + 160));
    v531 = vandq_s8(v528, *(v6 + 144));
    v532 = vandq_s8(*(v7 + 144), v529);
    v533 = vandq_s8(*(v7 + 128), v528);
    v534 = vandq_s8(*(v7 + 400), v529);
    v535 = vandq_s8(*(v7 + 384), v528);
    v536 = vandq_s8(*(v7 + 656), v529);
    v537 = vandq_s8(*(v7 + 640), v528);
    do
    {
      v538 = vcltzq_s32(*(&STACK[0x460] + v527 + 16));
      v539 = vcltzq_s32(*(&STACK[0x460] + v527));
      v530 = vaddq_f32(v530, vandq_s8(v538, *(v6 + v527 + 192)));
      v531 = vaddq_f32(v531, vandq_s8(v539, *(v6 + v527 + 176)));
      v532 = vaddq_f32(v532, vandq_s8(*(v6 + v527 + 448), v538));
      v533 = vaddq_f32(v533, vandq_s8(*(v6 + v527 + 432), v539));
      v534 = vaddq_f32(v534, vandq_s8(*(v6 + v527 + 704), v538));
      v535 = vaddq_f32(v535, vandq_s8(*(v6 + v527 + 688), v539));
      v536 = vaddq_f32(v536, vandq_s8(*(v6 + v527 + 960), v538));
      v537 = vaddq_f32(v537, vandq_s8(*(v6 + v527 + 944), v539));
      v527 += 32;
    }

    while (v527 != 224);
    v540 = vaddq_f32(v531, v530);
    v541 = vaddq_f32(v533, v532);
    v470 = vaddq_f32(v535, v534);
    v474 = vaddq_f32(v537, v536);
    v542 = vpaddq_f32(v540, v541);
    v467 = vpaddq_f32(v470, v474);
    v525 = vpaddq_f32(v542, v467);
    v43 = vmulq_n_f32(v525, ReciprocalTable[v526]);
  }

  if (!*(v6 + 134))
  {
    goto LABEL_139;
  }

  v525.i32[0] = v44.i32[3];
  if (!*(v6 + 135))
  {
    v553 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v43, 3), v525), 0);
    goto LABEL_138;
  }

  if (v44.f32[3] != 0.0 && v43.f32[3] != 0.0)
  {
    v543 = vsubq_f32(v43, v44);
    v467.i32[0] = v543.i32[3];
    if (v543.f32[3] == 0.0)
    {
      if (*(v6 + 134) != 63)
      {
        v470.i64[0] = 0x3F0000003FLL;
        v470.i64[1] = 0x3F0000003FLL;
        v44 = vnegq_f32(v470);
        goto LABEL_117;
      }

LABEL_135:
      v44 = 0uLL;
    }

    else
    {
LABEL_117:
      v470.i64[0] = 0;
      v544 = vdupq_lane_s32(*&vcgtq_f32(v470, v467), 0);
      v545 = vbslq_s8(v544, vnegq_f32(v543), v543);
      v546 = vbslq_s8(v544, v43, v44);
      v474.f32[0] = v546.f32[3] / v545.f32[3];
      v547 = vmlsq_lane_f32(v546, v545, *v474.f32, 0);
      v545.f32[0] = -*v453.i32;
      *v453.i32 = *v453.i32 + 1.0;
      if ((vminvq_u32(vandq_s8(vcgtq_f32(v547, vdupq_lane_s32(*v545.f32, 0)), vcgtq_f32(vdupq_lane_s32(v453, 0), v547))) & 0x80000000) != 0)
      {
        v43 = vbslq_s8(v544, v44, v43);
        v44 = vminnmq_f32(vmaxnmq_f32(v547, 0), _Q0);
      }

      else
      {
        v548 = *(v85 + 16 * v84);
        v549 = *(v85 + 16 * v117);
        v550 = v548;
        v550.i32[3] = 0;
        v551 = v549;
        v551.i32[3] = 0;
        v552 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v549, v548)), 3)), 0x1FuLL));
        v43 = vbslq_s8(v552, v549, v551);
        v44 = vbslq_s8(v552, v550, v548);
      }
    }
  }

LABEL_139:
  v618 = &STACK[0x1550];
  *&STACK[0x460] = 0u;
  *&STACK[0x450] = 0u;
  *&STACK[0x440] = 0u;
  v619 = *(v6 + 32);
  *&STACK[0x2300] = v43;
  *&STACK[0x22F0] = v44;
  FindColorVectors(&STACK[0x22F0], v619, 1, 392, &STACK[0x21F0], &STACK[0x440]);
  v620 = STACK[0x21F0];
  v621 = (STACK[0x21F0] >> 13) & 0xF;
  v622 = *&STACK[0x450];
  LODWORD(v623) = HIDWORD(*&STACK[0x450]);
  v624 = 0.0;
  v625 = vrecpes_f32(v623);
  if (fabsf(v623) < 0.0039062)
  {
    v625 = 0.0;
  }

  if (v621 > 5)
  {
    v639 = *(v6 + 32);
    if (v639)
    {
      *&STACK[0x340] = v24;
      v640 = 0;
      v627 = 0;
      v641 = vandq_s8(vcgezq_s32(gNormalMasks[(v620 >> 13) & 0xF]), *v639);
      v642 = *&STACK[0x440];
      v643 = vdupq_lane_s32(*&STACK[0x440], 0);
      v644 = vdupq_lane_s32(*&STACK[0x440], 1);
      v645 = vdupq_laneq_s32(*&STACK[0x440], 2);
      *&STACK[0x370] = *&STACK[0x440];
      v646 = vdupq_laneq_s32(v642, 3);
      v647 = vmulq_f32(v622, v641);
      v648 = vmulq_f32(v622, v647);
      *v642.i32 = vaddv_f32(vadd_f32(*v648.i8, *&vextq_s8(v648, v648, 8uLL)));
      LODWORD(STACK[0x380]) = v642.i32[0];
      *&STACK[0x390] = fabsf(*v642.i32);
      v649 = vdupq_lane_s32(*v647.f32, 0);
      v650 = vdupq_laneq_s32(v647, 2);
      v651 = vdupq_laneq_s32(v647, 3);
      v652 = 48;
      v653.i64[0] = 0x3F0000003F000000;
      v653.i64[1] = 0x3F0000003F000000;
      do
      {
        v654 = (v6 + v640);
        v655 = vsubq_f32(*(v6 + v640 + 176), v643);
        v656 = vsubq_f32(*(v6 + v640 + 160), v643);
        v657 = vsubq_f32(*(v6 + v640 + 144), v643);
        v658 = vsubq_f32(*(v6 + v640 + 192), v643);
        v659 = vsubq_f32(*(v6 + v640 + 432), v644);
        v660 = vsubq_f32(*(v6 + v640 + 416), v644);
        v661 = vsubq_f32(*(v6 + v640 + 400), v644);
        v662 = vsubq_f32(*(v6 + v640 + 448), v644);
        v663 = vsubq_f32(*(v6 + v640 + 688), v645);
        v664 = vsubq_f32(*(v6 + v640 + 672), v645);
        v665 = vsubq_f32(*(v6 + v640 + 656), v645);
        v666 = vsubq_f32(*(v6 + v640 + 704), v645);
        v667 = vsubq_f32(*(v6 + v640 + 944), v646);
        v668 = vsubq_f32(*(v6 + v640 + 928), v646);
        v669 = vsubq_f32(*(v6 + v640 + 912), v646);
        v670 = vsubq_f32(*(v6 + v640 + 960), v646);
        v671 = vrecpes_f32(*&STACK[0x380]);
        if (*&STACK[0x390] < 0.000015259)
        {
          v671 = 0.0;
        }

        v672 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v661, *v647.f32, 1), v649, v657), v650, v665), v651, v669);
        v673 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v660, *v647.f32, 1), v649, v656), v650, v664), v651, v668);
        v674 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v662, *v647.f32, 1), v649, v658), v650, v666), v651, v670);
        __asm { FMOV            V31.4S, #1.0 }

        v676 = vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v659, *v647.f32, 1), v649, v655), v650, v663), v651, v667), v671), _Q31);
        v677 = vminnmq_f32(vmulq_n_f32(v674, v671), _Q31);
        v678 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v672, v671), _Q31), 0);
        v679 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v673, v671), _Q31), 0);
        v680 = vmaxnmq_f32(v676, 0);
        v681 = vmaxnmq_f32(v677, 0);
        if (*(v6 + 134) >= 1)
        {
          v680 = vbslq_s8(vcltzq_s32(v654[139]), vmulq_n_f32(v667, v625), v680);
          v679 = vbslq_s8(vcltzq_s32(v654[138]), vmulq_n_f32(v668, v625), v679);
          v678 = vbslq_s8(vcltzq_s32(v654[137]), vmulq_n_f32(v669, v625), v678);
          v681 = vbslq_s8(vcltzq_s32(v654[140]), vmulq_n_f32(v670, v625), v681);
        }

        v682 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v678, v653), vcgeq_f32(v679, v653)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v680, v653), vcgeq_f32(v681, v653)), xmmword_298495640));
        v682.i16[0] = vaddvq_s16(v682);
        v627 |= v682.u32[0] << v652;
        v640 += 64;
        v652 -= 16;
      }

      while (v640 != 256);
      v24 = *&STACK[0x340];
      v629 = *&STACK[0x370];
    }

    else
    {
      v700 = 0;
      v627 = 0;
      v629 = *&STACK[0x440];
      v701 = vdupq_lane_s32(*&STACK[0x440], 0);
      v702 = vdupq_lane_s32(*&STACK[0x440], 1);
      v703 = vdupq_laneq_s32(*&STACK[0x440], 2);
      v704 = vdupq_laneq_s32(*&STACK[0x440], 3);
      v705 = vmulq_f32(v622, v622);
      v706 = vrecpes_f32(vaddv_f32(vadd_f32(*v705.i8, *&vextq_s8(v705, v705, 8uLL))));
      v707 = vdupq_lane_s32(*v622.f32, 0);
      v708 = vdupq_laneq_s32(v622, 2);
      v709 = vdupq_laneq_s32(v622, 3);
      v710 = 48;
      v711.i64[0] = 0x3F0000003F000000;
      v711.i64[1] = 0x3F0000003F000000;
      do
      {
        v712 = (v6 + v700);
        v713 = vsubq_f32(*(v6 + v700 + 960), v704);
        v714 = vsubq_f32(*(v6 + v700 + 944), v704);
        v715 = vsubq_f32(*(v6 + v700 + 928), v704);
        v716 = vsubq_f32(*(v6 + v700 + 912), v704);
        __asm { FMOV            V30.4S, #1.0 }

        v718 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v6 + v700 + 400), v702), *v622.f32, 1), v707, vsubq_f32(*(v6 + v700 + 144), v701)), v708, vsubq_f32(*(v6 + v700 + 656), v703)), v709, v716), v706), _Q30), 0);
        v719 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v6 + v700 + 416), v702), *v622.f32, 1), v707, vsubq_f32(*(v6 + v700 + 160), v701)), v708, vsubq_f32(*(v6 + v700 + 672), v703)), v709, v715), v706), _Q30), 0);
        v720 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v6 + v700 + 432), v702), *v622.f32, 1), v707, vsubq_f32(*(v6 + v700 + 176), v701)), v708, vsubq_f32(*(v6 + v700 + 688), v703)), v709, v714), v706), _Q30), 0);
        v721 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v6 + v700 + 448), v702), *v622.f32, 1), v707, vsubq_f32(*(v6 + v700 + 192), v701)), v708, vsubq_f32(*(v6 + v700 + 704), v703)), v709, v713), v706), _Q30), 0);
        if (*(v6 + 134) >= 1)
        {
          v720 = vbslq_s8(vcltzq_s32(v712[139]), vmulq_n_f32(v714, v625), v720);
          v719 = vbslq_s8(vcltzq_s32(v712[138]), vmulq_n_f32(v715, v625), v719);
          v718 = vbslq_s8(vcltzq_s32(v712[137]), vmulq_n_f32(v716, v625), v718);
          v721 = vbslq_s8(vcltzq_s32(v712[140]), vmulq_n_f32(v713, v625), v721);
        }

        v722 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v718, v711), vcgeq_f32(v719, v711)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v720, v711), vcgeq_f32(v721, v711)), xmmword_298495640));
        v722.i16[0] = vaddvq_s16(v722);
        v627 |= v722.u32[0] << v710;
        v700 += 64;
        v710 -= 16;
      }

      while (v700 != 256);
    }
  }

  else
  {
    v626 = v7 + 1920;
    if (v621 > 3)
    {
      v627 = 0;
      v683 = (v623 * v623) + (v622.f32[0] * v622.f32[0]);
      v684 = 0.0;
      v685 = vrecpes_f32(v683);
      v629 = *&STACK[0x440];
      v686 = vdupq_lane_s32(*&STACK[0x440], 0);
      if (fabsf(v683) >= 0.000015259)
      {
        v684 = v685;
      }

      v687 = vdupq_laneq_s32(v629, 3);
      v688 = vdupq_lane_s32(*v622.f32, 0);
      v689 = 48;
      v690.i64[0] = 0x3F0000003F000000;
      v690.i64[1] = 0x3F0000003F000000;
      do
      {
        v691 = vsubq_f32(*(v626 - 1232), v687);
        v692 = vsubq_f32(*(v626 - 1280), v687);
        v693 = vsubq_f32(*(v626 - 1264), v687);
        v694 = vsubq_f32(*(v626 - 1248), v687);
        v695 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v694, v622, 3), v688, vsubq_f32(*(v626 + 288), v686)), v684);
        v696 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v693, v622, 3), v688, vsubq_f32(*(v626 + 272), v686)), v684);
        v697 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v692, v622, 3), v688, vsubq_f32(*(v626 + 256), v686)), v684);
        v698 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v691, v622, 3), v688, vsubq_f32(*(v626 + 304), v686)), v684);
        if (*(v6 + 134) >= 1)
        {
          v696 = vbslq_s8(vcltzq_s32(*(v626 + 16)), vmulq_n_f32(v693, v625), v696);
          v697 = vbslq_s8(vcltzq_s32(*v626), vmulq_n_f32(v692, v625), v697);
          v695 = vbslq_s8(vcltzq_s32(*(v626 + 32)), vmulq_n_f32(v694, v625), v695);
          v698 = vbslq_s8(vcltzq_s32(*(v626 + 48)), vmulq_n_f32(v691, v625), v698);
        }

        v699 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v697, v690), vcgeq_f32(v696, v690)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v695, v690), vcgeq_f32(v698, v690)), xmmword_298495640));
        v699.i16[0] = vaddvq_s16(v699);
        v627 |= v699.u32[0] << v689;
        v626 += 64;
        v689 -= 16;
      }

      while (v689 != -16);
    }

    else
    {
      v627 = 0;
      v628 = vrecpes_f32(v622.f32[0]);
      if (fabsf(v622.f32[0]) >= 0.000015259)
      {
        v624 = v628;
      }

      v629 = *&STACK[0x440];
      v630 = vdupq_lane_s32(*&STACK[0x440], 0);
      v631 = vdupq_laneq_s32(*&STACK[0x440], 3);
      v632 = 48;
      v633.i64[0] = 0x3F0000003F000000;
      v633.i64[1] = 0x3F0000003F000000;
      do
      {
        v634 = vmulq_n_f32(vsubq_f32(*(v626 + 272), v630), v624);
        v635 = vmulq_n_f32(vsubq_f32(*(v626 + 256), v630), v624);
        v636 = vmulq_n_f32(vsubq_f32(*(v626 + 288), v630), v624);
        v637 = vmulq_n_f32(vsubq_f32(*(v626 + 304), v630), v624);
        if (*(v6 + 134) >= 1)
        {
          v636 = vbslq_s8(vcltzq_s32(*(v626 + 32)), vmulq_n_f32(vsubq_f32(*(v626 - 1248), v631), v625), v636);
          v634 = vbslq_s8(vcltzq_s32(*(v626 + 16)), vmulq_n_f32(vsubq_f32(*(v626 - 1264), v631), v625), v634);
          v635 = vbslq_s8(vcltzq_s32(*v626), vmulq_n_f32(vsubq_f32(*(v626 - 1280), v631), v625), v635);
          v637 = vbslq_s8(vcltzq_s32(*(v626 + 48)), vmulq_n_f32(vsubq_f32(*(v626 - 1232), v631), v625), v637);
        }

        v638 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v635, v633), vcgeq_f32(v634, v633)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v636, v633), vcgeq_f32(v637, v633)), xmmword_298495640));
        v638.i16[0] = vaddvq_s16(v638);
        v627 |= v638.u32[0] << v632;
        v626 += 64;
        v632 -= 16;
      }

      while (v632 != -16);
    }
  }

  v723 = 0;
  v724 = STACK[0x460];
  v725 = vaddq_f32(v622, v629);
  v726 = vdupq_lane_s32(*v629.f32, 0);
  v727 = vdupq_lane_s32(*v725.i8, 0);
  v728 = vdupq_lane_s32(*v629.f32, 1);
  v729 = vdupq_lane_s32(*v725.i8, 1);
  v730 = vdupq_laneq_s32(v629, 2);
  v731 = vdupq_laneq_s32(v725, 2);
  v732 = vdupq_laneq_s32(v629, 3);
  v733 = vdupq_laneq_s32(v725, 3);
  v734 = 0uLL;
  v735 = 56;
  v736 = 0uLL;
  do
  {
    v737 = vcltzq_s32(VectorMaskForBitMask[(v627 >> v735) & 0xF]);
    v738 = vcltzq_s32(*(VectorMaskForBitMask + ((v627 >> v735) & 0xF0)));
    v739 = vsubq_f32(vbslq_s8(v737, v727, v726), *(v6 + v723 + 160));
    v740 = vsubq_f32(vbslq_s8(v738, v729, v728), *(v6 + v723 + 400));
    v741 = vsubq_f32(vbslq_s8(v737, v729, v728), *(v6 + v723 + 416));
    v742 = vsubq_f32(vbslq_s8(v738, v727, v726), *(v6 + v723 + 144));
    v743 = vsubq_f32(vbslq_s8(v738, v731, v730), *(v6 + v723 + 656));
    v744 = vsubq_f32(vbslq_s8(v737, v731, v730), *(v6 + v723 + 672));
    v745 = vsubq_f32(vbslq_s8(v737, v733, v732), *(v6 + v723 + 928));
    v746 = vsubq_f32(vbslq_s8(v738, v733, v732), *(v6 + v723 + 912));
    v747 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v740, v740), v742, v742), v743, v743), v746, v746);
    v748 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v741, v741), v739, v739), v744, v744), v745, v745);
    v736 = vaddq_f32(v736, v748);
    v734 = vaddq_f32(v734, v747);
    v749 = (&STACK[0xCA0] + v723);
    *v749 = v747;
    v749[1] = v748;
    v723 += 32;
    v735 -= 8;
  }

  while (v723 != 256);
  v750 = vaddq_f32(v734, v736);
  v750.i64[0] = vpaddq_f32(v750, v750).u64[0];
  v751 = vpadd_f32(*v750.f32, *v750.f32).f32[0];
  *&STACK[0xE08] = v751;
  STACK[0xE00] = v627;
  v752 = *v5;
  if (v751 >= *v5)
  {
    v627 = 0;
    v753 = 0;
    LOBYTE(v754) = 0;
    LOBYTE(v755) = 0;
    v756 = 0uLL;
  }

  else
  {
    v753 = v620 & 0x1FFFF;
    v754 = HIDWORD(v620);
    v755 = v620 >> 40;
    *v5 = v751;
    v756 = vmovl_u8(v724);
    v752 = v751;
  }

  if (v24 > v752)
  {
    v757 = v754 + 1;
    v758 = __clz(__rbit32(v757));
    v759 = v757 >> v758;
    v760 = (v757 >> v758);
    if (v758 && v760 != 1)
    {
      v761 = vsubq_s16(vdupq_n_s16(v754), v756);
      if (v760 == 3)
      {
        v762 = 21846;
      }

      else
      {
        v762 = 13108;
      }

      v763 = vdupq_n_s16(v762);
      v764 = vminq_u16(v756, v761);
      v765 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v764.i8, *v763.i8), 0x10uLL), vmull_high_u16(v764, v763), 0x10uLL);
      v763.i64[0] = 0x1000100010001;
      v763.i64[1] = 0x1000100010001;
      v756 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v764, v765, vmovl_u8(vdup_n_s8(v759))), vdupq_n_s16(v758)), vaddq_s16(v765, v765)), vbicq_s8(v763, vceqq_s16(v764, v756)));
    }

    v766 = vandq_s8(v756, vcgtq_u16(vdupq_n_s16(v755), xmmword_298495BB0));
    switch(v760)
    {
      case 5:
        v801 = vdupq_n_s16(v758);
        v802 = vshlq_u16(v766, vnegq_s16(v801));
        *v802.i8 = vmovn_s16(v802);
        v803 = vqtbl1q_s8(v802, xmmword_298495BC0);
        v804 = vqtbl1q_s8(v802, xmmword_298495BD0);
        v805 = vpaddq_s16(vmull_u8(*v803.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v803, v803, 8uLL), 0x2001200120012001));
        v803.i64[0] = 0x7000700070007;
        v803.i64[1] = 0x7000700070007;
        v806 = vandq_s8(v805, v803);
        v807 = vandq_s8(vshrq_n_u16(v805, 5uLL), v803);
        v808.i64[0] = 0x4000400040004;
        v808.i64[1] = 0x4000400040004;
        v809 = vceqq_s16(v804, v808);
        v810 = vceqq_s16(v807, v808);
        v811 = vsubq_s8(vaddq_s16(v805, vshlq_n_s16(v804, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v806), v810));
        if ((vmaxvq_u16(v809) & 0x8000) != 0)
        {
          v812.i64[0] = 0x18001800180018;
          v812.i64[1] = 0x18001800180018;
          v811.i64[0] = vsubq_s8(v811, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v806), v809), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v806), v809), v810)), vandq_s8(vmulq_s16(v807, v812), vandq_s8(vceqq_s16(v806, v808), v809)))).u64[0];
        }

        v811.i64[1] = v811.i64[0];
        v813 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v811, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v801), vandq_s8(v766, vdupq_n_s16(~(-1 << v758)))), vaddq_s16(vdupq_n_s32(v758 << 16), xmmword_298495C10));
        v814 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v813, v813)), vaddq_s32(vdupq_n_s64(v758 << 33), xmmword_298495C20));
        v814.i64[0] = vpaddq_s32(v814, v814).u64[0];
        v774 = v814.u32[0];
        v775 = (v814.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v758);
LABEL_191:
        v800 = v775 | v774;
        break;
      case 3:
        *v766.i8 = vmovn_s16(v766);
        v776 = vandq_s8(v766, xmmword_298495C30);
        v777 = vdupq_n_s8(v758);
        v778 = vshlq_u8(v776, vnegq_s8(v777));
        v779 = vqtbl1q_s8(v778, xmmword_298495C40);
        v780 = vqtbl1q_s8(v778, xmmword_298495C50);
        v781 = vpaddq_s16(vmull_u8(*v779.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v779, v779, 8uLL), 0x8010040180100401));
        v781.i64[0] = vpaddq_s16(v781, v781).u64[0];
        v782 = vmovl_s16(*v781.i8);
        v783 = vshlq_n_s32(v780, 5uLL);
        v779.i64[0] = 0x3000000030;
        v779.i64[1] = 0x3000000030;
        v784.i64[0] = 0x2000000020;
        v784.i64[1] = 0x2000000020;
        v785 = vceqq_s32(vandq_s8(v782, v779), v784);
        v786 = vaddw_s16(v783, *v781.i8);
        v784.i64[0] = 0xFF000000FFLL;
        v784.i64[1] = 0xFF000000FFLL;
        v787 = vcgtq_s32(v786, v784);
        if ((vmaxvq_u32(vorrq_s8(v785, v787)) & 0x80000000) != 0)
        {
          v788.i64[0] = 0x200000002;
          v788.i64[1] = 0x200000002;
          v789 = vceqq_s32(v780, v788);
          v790 = vshrq_n_u32(v782, 2uLL);
          v791 = vandq_s8(v787, v789);
          v792.i64[0] = 0xF0000000FLL;
          v792.i64[1] = 0xF0000000FLL;
          v793 = vandq_s8(v782, v792);
          v794.i64[0] = 0x303030303030303;
          v794.i64[1] = 0x303030303030303;
          v795.i64[0] = 0x6060606060606060;
          v795.i64[1] = 0x6060606060606060;
          v786.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v795, v783, v794), v787), v786), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v793), v785), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v790, v792)), v791))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v793), vandq_s8(v785, v791))).u64[0];
        }

        v786.i64[1] = v786.i64[0];
        v796 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v786, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v777.i8), vand_s8(*v776.i8, vdup_n_s8((1 << v758) - 1))));
        v797 = vadd_s32(vdup_n_s32(2 * v758), 0x300000004);
        v798.i64[0] = v797.u32[0];
        v798.i64[1] = v797.u32[1];
        v799 = vshlq_u32(vmlal_u16((*&v796 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v796, 0x10uLL), vshl_u16(vdup_n_s16(1 << v758), 0x2000100010002)), vtrn1q_s32(0, v798));
        v799.i64[0] = vpaddq_s32(v799, v799).u64[0];
        v800 = (v799.u32[1] << (4 * v758 + 7)) | v799.u32[0];
        break;
      case 1:
        v767.i64[0] = 0xFFFF0000FFFFLL;
        v767.i64[1] = 0xFFFF0000FFFFLL;
        v768.i64[0] = 0xFFFF0000FFFF0000;
        v768.i64[1] = 0xFFFF0000FFFF0000;
        v769 = vorrq_s8(vshlq_u32(vandq_s8(v766, v768), vnegq_s32(vdupq_n_s32(16 - v758))), vandq_s8(v766, v767));
        v767.i64[0] = 0xFFFFFFFFLL;
        v767.i64[1] = 0xFFFFFFFFLL;
        v770 = vandq_s8(v769, v767);
        v768.i64[0] = 0xFFFFFFFF00000000;
        v768.i64[1] = 0xFFFFFFFF00000000;
        v771 = vandq_s8(v769, v768);
        *v768.i8 = vdup_n_s32(2 * (16 - v758));
        v772.i64[0] = v768.u32[0];
        v772.i64[1] = v768.u32[1];
        v773 = vorrq_s8(vshlq_u64(v771, vnegq_s64(v772)), v770);
        v774 = v773.i64[0];
        v775 = v773.i64[1] << (4 * v758);
        goto LABEL_191;
      default:
        v800 = 0;
        break;
    }

    v815.i64[0] = v753 | (v800 << 17);
    v815.i64[1] = v800 >> 47;
    v816.i64[0] = 0;
    v816.i64[1] = v627;
    *v4 = vorrq_s8(v815, v816);
    v752 = *v5;
  }

  if (v752 <= v5[1])
  {
    goto LABEL_828;
  }

  bzero(&STACK[0x440], 0x840uLL);
  v817 = 0;
  LOWORD(STACK[0x4C4]) = 375;
  LOBYTE(STACK[0x4C6]) = -1;
  LOBYTE(STACK[0x4C8]) = -1;
  v818 = vdupq_n_s32(0x3DD00000u);
  v819 = *(v6 + 48);
  v820 = *(v6 + 56);
  v821 = vmulq_f32(v820[23], v818);
  v822 = vmulq_f32(v820[39], v818);
  v823 = vmulq_f32(v820[40], v818);
  v824 = vmulq_f32(v820[55], v818);
  v825 = vmulq_f32(v820[56], v818);
  v826 = vmulq_f32(v820[71], v818);
  v827 = vmulq_f32(v820[72], v818);
  v828 = *(v6 + 144);
  v829 = *(v6 + 160);
  v830 = vdupq_n_s32(0x3F4C0000u);
  v831 = vmlaq_f32(vmulq_f32(v820[24], v818), v830, v829);
  v832 = vdupq_n_s32(0x3D400000u);
  *&STACK[0x380] = v832;
  *&STACK[0x390] = v830;
  v833 = vmlaq_f32(v821, v830, v828);
  v834 = vmulq_f32(v828, v832);
  v835 = vmulq_f32(v829, v832);
  v836 = *(v7 + 128);
  v837 = *(v7 + 144);
  v838 = vmlaq_f32(v823, v830, v837);
  v839 = vmlaq_f32(v822, v830, v836);
  v840 = vmulq_f32(v837, v832);
  v841 = vmulq_f32(v836, v832);
  v842 = *(v7 + 384);
  v843 = *(v7 + 400);
  v844 = vmlaq_f32(v825, v830, v843);
  v845 = vmlaq_f32(v824, v830, v842);
  v846 = vmulq_f32(v843, v832);
  v847 = vmulq_f32(v842, v832);
  v848 = *(v7 + 640);
  v849 = *(v7 + 656);
  v850 = vmlaq_f32(v827, v830, v849);
  v851 = vmlaq_f32(v826, v830, v848);
  v852 = vmulq_f32(v849, v832);
  v853 = vmulq_f32(v848, v832);
  v854 = *(v6 + 176);
  v855 = *(v6 + 192);
  *&STACK[0x2300] = vmlaq_f32(v831, v818, v855);
  *&STACK[0x22F0] = vmlaq_f32(v833, v818, v854);
  v856 = vdupq_n_s32(0x3F420000u);
  v857 = vmlaq_f32(v835, v856, v855);
  v858 = vdupq_n_s32(0x3CA00000u);
  v859 = vmulq_f32(v855, v858);
  v861 = *(v7 + 160);
  v860 = *(v7 + 176);
  *&STACK[0x2200] = vmlaq_f32(v838, v818, v860);
  *&STACK[0x21F0] = vmlaq_f32(v839, v818, v861);
  v862 = vmlaq_f32(v840, v856, v860);
  v863 = vmulq_f32(v860, v858);
  v865 = *(v7 + 416);
  v864 = *(v7 + 432);
  *&STACK[0x2100] = vmlaq_f32(v844, v818, v864);
  *&STACK[0x20F0] = vmlaq_f32(v845, v818, v865);
  v866 = vmlaq_f32(v847, v856, v865);
  v867 = vmlaq_f32(v846, v856, v864);
  v868 = vmulq_f32(v865, v858);
  v869 = vmulq_f32(v864, v858);
  v871 = *(v7 + 672);
  v870 = *(v7 + 688);
  *&STACK[0x2020] = vmlaq_f32(v850, v818, v870);
  *&STACK[0x2010] = vmlaq_f32(v851, v818, v871);
  v872 = vmlaq_f32(v853, v856, v871);
  v873 = vmlaq_f32(v852, v856, v870);
  v874 = vmulq_f32(v871, v858);
  v875 = vmulq_f32(v870, v858);
  v877 = *(v6 + 208);
  v876 = *(v6 + 224);
  __asm { FMOV            V5.4S, #0.19531 }

  *&STACK[0x2320] = vmlaq_f32(v857, _Q5, v876);
  *&STACK[0x2310] = vmlaq_f32(vmlaq_f32(v834, v856, v854), _Q5, v877);
  v879 = vdupq_n_s32(0x3F270000u);
  v880 = vmlaq_f32(v859, v879, v876);
  v857.i64[0] = 0x3C0000003C000000;
  v857.i64[1] = 0x3C0000003C000000;
  v881 = vmulq_f32(v876, v857);
  v882 = *(v7 + 192);
  v883 = *(v7 + 208);
  *&STACK[0x2210] = vmlaq_f32(vmlaq_f32(v841, v856, v861), _Q5, v882);
  *&STACK[0x2220] = vmlaq_f32(v862, _Q5, v883);
  v884 = vmlaq_f32(v863, v879, v883);
  v885 = vmlaq_f32(vmulq_f32(v861, v858), v879, v882);
  v886 = vmulq_f32(v883, v857);
  v887 = vmulq_f32(v882, v857);
  v888 = *(v7 + 448);
  v889 = *(v7 + 464);
  *&STACK[0x2110] = vmlaq_f32(v866, _Q5, v888);
  *&STACK[0x2120] = vmlaq_f32(v867, _Q5, v889);
  v890 = vmlaq_f32(v869, v879, v889);
  v891 = vmlaq_f32(v868, v879, v888);
  v892 = vmulq_f32(v889, v857);
  v893 = vmulq_f32(v888, v857);
  v894 = *(v7 + 704);
  v895 = *(v7 + 720);
  *&STACK[0x2030] = vmlaq_f32(v872, _Q5, v894);
  *&STACK[0x2040] = vmlaq_f32(v873, _Q5, v895);
  v896 = vmlaq_f32(v874, v879, v894);
  v897 = vmulq_f32(v894, v857);
  v899 = *(v6 + 240);
  v898 = *(v6 + 256);
  __asm { FMOV            V16.4S, #0.32812 }

  *&STACK[0x2340] = vmlaq_f32(v880, _Q16, v898);
  *&STACK[0x2330] = vmlaq_f32(vmlaq_f32(vmulq_f32(v854, v858), v879, v877), _Q16, v899);
  v901 = vdupq_n_s32(0x3EFC0000u);
  v902 = vmlaq_f32(v881, v901, v898);
  v904 = *(v7 + 224);
  v903 = *(v7 + 240);
  *&STACK[0x2240] = vmlaq_f32(v884, _Q16, v903);
  *&STACK[0x2230] = vmlaq_f32(v885, _Q16, v904);
  v905 = vmlaq_f32(v887, v901, v904);
  v906 = vmlaq_f32(v886, v901, v903);
  v908 = *(v7 + 480);
  v907 = *(v7 + 496);
  *&STACK[0x2140] = vmlaq_f32(v890, _Q16, v907);
  *&STACK[0x2130] = vmlaq_f32(v891, _Q16, v908);
  v909 = vmlaq_f32(v893, v901, v908);
  v910 = vmlaq_f32(v892, v901, v907);
  v912 = *(v7 + 736);
  v911 = *(v7 + 752);
  *&STACK[0x2060] = vmlaq_f32(vmlaq_f32(v875, v879, v895), _Q16, v911);
  *&STACK[0x2050] = vmlaq_f32(v896, _Q16, v912);
  v913 = vmlaq_f32(vmulq_f32(v895, v857), v901, v911);
  v914 = vmlaq_f32(v897, v901, v912);
  v915 = *(v7 + 16);
  v916 = vmlaq_f32(v902, v901, v915);
  v917 = vmlaq_f32(vmlaq_f32(vmulq_f32(v877, v857), v901, v899), v901, *v7);
  v918 = vmulq_f32(*v7, _Q16);
  v919 = vmulq_f32(v915, _Q16);
  v920 = *(v7 + 256);
  v921 = *(v7 + 272);
  v922 = vmlaq_f32(v906, v901, v921);
  v923 = vmlaq_f32(v905, v901, v920);
  v924 = vmulq_f32(v920, _Q16);
  v925 = vmulq_f32(v921, _Q16);
  v926 = *(v7 + 512);
  v927 = *(v7 + 528);
  v928 = vmlaq_f32(v910, v901, v927);
  v929 = vmlaq_f32(v909, v901, v926);
  v930 = vmulq_f32(v926, _Q16);
  v931 = vmulq_f32(v927, _Q16);
  v932 = *(v7 + 768);
  v933 = *(v7 + 784);
  v934 = vmlaq_f32(v913, v901, v933);
  v935 = vmulq_f32(v933, _Q16);
  v936 = *(v7 + 32);
  v937 = *(v7 + 48);
  *&STACK[0x2360] = vmlaq_f32(v916, v857, v937);
  *&STACK[0x2350] = vmlaq_f32(v917, v857, v936);
  v939 = *(v7 + 288);
  v938 = *(v7 + 304);
  *&STACK[0x2260] = vmlaq_f32(v922, v857, v938);
  *&STACK[0x2250] = vmlaq_f32(v923, v857, v939);
  v940 = vmlaq_f32(v925, v879, v938);
  v941 = vmlaq_f32(v924, v879, v939);
  v942 = vmulq_f32(v939, _Q5);
  v943 = vmulq_f32(v938, _Q5);
  v945 = *(v7 + 544);
  v944 = *(v7 + 560);
  *&STACK[0x2160] = vmlaq_f32(v928, v857, v944);
  *&STACK[0x2150] = vmlaq_f32(v929, v857, v945);
  v946 = vmlaq_f32(v931, v879, v944);
  v947 = vmlaq_f32(v930, v879, v945);
  v948 = vmulq_f32(v945, _Q5);
  v949 = vmulq_f32(v944, _Q5);
  v950 = *(v7 + 800);
  v951 = *(v7 + 816);
  *&STACK[0x2070] = vmlaq_f32(vmlaq_f32(v914, v901, v932), v857, v950);
  *&STACK[0x2080] = vmlaq_f32(v934, v857, v951);
  v952 = vmlaq_f32(v935, v879, v951);
  v953 = vmlaq_f32(vmulq_f32(v932, _Q16), v879, v950);
  v954 = vmulq_f32(v950, _Q5);
  v955 = vmulq_f32(v951, _Q5);
  v956 = *(v7 + 64);
  v957 = *(v7 + 80);
  *&STACK[0x2380] = vmlaq_f32(vmlaq_f32(v919, v879, v937), v858, v957);
  *&STACK[0x2370] = vmlaq_f32(vmlaq_f32(v918, v879, v936), v858, v956);
  v959 = *(v7 + 320);
  v958 = *(v7 + 336);
  *&STACK[0x2280] = vmlaq_f32(v940, v858, v958);
  *&STACK[0x2270] = vmlaq_f32(v941, v858, v959);
  v960 = vmlaq_f32(v943, v856, v958);
  v961 = vmlaq_f32(v942, v856, v959);
  v962 = vmulq_f32(v959, v818);
  v963 = vmulq_f32(v958, v818);
  v965 = *(v7 + 576);
  v964 = *(v7 + 592);
  *&STACK[0x2180] = vmlaq_f32(v946, v858, v964);
  *&STACK[0x2170] = vmlaq_f32(v947, v858, v965);
  v966 = vmlaq_f32(v949, v856, v964);
  v967 = vmlaq_f32(v948, v856, v965);
  v968 = vmulq_f32(v965, v818);
  v969 = vmulq_f32(v964, v818);
  v971 = *(v7 + 832);
  v970 = *(v7 + 848);
  *&STACK[0x20A0] = vmlaq_f32(v952, v858, v970);
  *&STACK[0x2090] = vmlaq_f32(v953, v858, v971);
  v972 = vmlaq_f32(v955, v856, v970);
  v973 = vmlaq_f32(v954, v856, v971);
  v974 = vmulq_f32(v971, v818);
  v975 = vmulq_f32(v970, v818);
  v977 = *(v7 + 96);
  v976 = *(v7 + 112);
  v979 = *&STACK[0x380];
  v978 = *&STACK[0x390];
  v980 = vmlaq_f32(vmlaq_f32(vmulq_f32(v936, _Q5), v856, v956), *&STACK[0x380], v977);
  *&STACK[0x23A0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v937, _Q5), v856, v957), *&STACK[0x380], v976);
  *&STACK[0x2390] = v980;
  v981 = vmlaq_f32(vmulq_f32(v957, v818), v978, v976);
  v982 = vmlaq_f32(vmulq_f32(v956, v818), v978, v977);
  v984 = *(v7 + 352);
  v983 = *(v7 + 368);
  *&STACK[0x22A0] = vmlaq_f32(v960, v979, v983);
  *&STACK[0x2290] = vmlaq_f32(v961, v979, v984);
  v985 = vmlaq_f32(v963, v978, v983);
  v986 = vmlaq_f32(v962, v978, v984);
  v988 = *(v7 + 608);
  v987 = *(v7 + 624);
  *&STACK[0x21A0] = vmlaq_f32(v966, v979, v987);
  *&STACK[0x2190] = vmlaq_f32(v967, v979, v988);
  v989 = vmlaq_f32(v969, v978, v987);
  v990 = vmlaq_f32(v968, v978, v988);
  v992 = *(v7 + 864);
  v991 = *(v7 + 880);
  *&STACK[0x20C0] = vmlaq_f32(v972, v979, v991);
  *&STACK[0x20B0] = vmlaq_f32(v973, v979, v992);
  v993 = *(v6 + 104);
  v994 = *(v6 + 112);
  v995 = vmlaq_f32(v982, v818, v993[9]);
  *&STACK[0x23C0] = vmlaq_f32(v981, v818, v993[10]);
  *&STACK[0x23B0] = v995;
  v996 = vmlaq_f32(v986, v818, v993[25]);
  *&STACK[0x22C0] = vmlaq_f32(v985, v818, v993[26]);
  *&STACK[0x22B0] = v996;
  v997 = vmlaq_f32(v990, v818, v993[41]);
  *&STACK[0x21C0] = vmlaq_f32(v989, v818, v993[42]);
  *&STACK[0x21B0] = v997;
  v998 = vmlaq_f32(vmlaq_f32(v974, v978, v992), v818, v993[57]);
  v999 = vmlaq_f32(vmlaq_f32(v975, v978, v991), v818, v993[58]);
  v991.i32[0] = vdupq_laneq_s32(v819[24], 3).u32[0];
  v991.i32[1] = v819[40].i32[3];
  v991.i32[2] = v819[56].i32[3];
  *&STACK[0x20E0] = v999;
  *&STACK[0x20D0] = v998;
  v991.i32[3] = v819[72].i32[3];
  v1000 = *(v6 + 64);
  v1001 = *(v6 + 72);
  v992.i64[0] = vzip1q_s32(v1000[23], v1000[39]).u64[0];
  v992.i32[2] = v1000[55].i32[0];
  v992.i32[3] = v1000[71].i32[0];
  v995.i32[0] = vdupq_laneq_s32(v1001[10], 3).u32[0];
  v995.i32[1] = v1001[26].i32[3];
  v995.i32[2] = v1001[42].i32[3];
  v995.i32[3] = v1001[58].i32[3];
  v1003 = *(v6 + 88);
  v1002 = *(v6 + 96);
  v981.i64[0] = vzip1q_s32(v1003[9], v1003[25]).u64[0];
  v981.i32[2] = v1003[41].i32[0];
  v981.i32[3] = v1003[57].i32[0];
  v996.i32[0] = vdupq_laneq_s32(v1001[12], 3).u32[0];
  v996.i32[1] = v1001[28].i32[3];
  v996.i32[2] = v1001[44].i32[3];
  v996.i32[3] = v1001[60].i32[3];
  v985.i64[0] = vzip1q_s32(v1003[11], v1003[27]).u64[0];
  v985.i32[2] = v1003[43].i32[0];
  v985.i32[3] = v1003[59].i32[0];
  *&STACK[0x1F40] = vmlaq_f32(vmlaq_f32(vmulq_f32(v992, v818), v978, v981), v818, v985);
  *&STACK[0x1F30] = vmlaq_f32(vmlaq_f32(vmulq_f32(v991, v818), v978, v995), v818, v996);
  v1004 = vmlaq_f32(vmulq_f32(v995, v979), v856, v996);
  v1005 = vmulq_f32(v996, v858);
  v992.i32[0] = vdupq_laneq_s32(v1001[14], 3).u32[0];
  v992.i32[1] = v1001[30].i32[3];
  v992.i32[2] = v1001[46].i32[3];
  v992.i32[3] = v1001[62].i32[3];
  v996.i64[0] = vzip1q_s32(v1003[13], v1003[29]).u64[0];
  v996.i32[2] = v1003[45].i32[0];
  v996.i32[3] = v1003[61].i32[0];
  *&STACK[0x1F60] = vmlaq_f32(vmlaq_f32(vmulq_f32(v981, v979), v856, v985), _Q5, v996);
  *&STACK[0x1F50] = vmlaq_f32(v1004, _Q5, v992);
  v1006 = vmlaq_f32(vmulq_f32(v985, v858), v879, v996);
  v1007 = vmulq_f32(v996, v857);
  v981.i32[0] = vdupq_laneq_s32(v1001[16], 3).u32[0];
  v981.i32[1] = v1001[32].i32[3];
  v981.i32[2] = v1001[48].i32[3];
  v981.i32[3] = v1001[64].i32[3];
  v996.i64[0] = vzip1q_s32(v1003[15], v1003[31]).u64[0];
  v996.i32[2] = v1003[47].i32[0];
  v996.i32[3] = v1003[63].i32[0];
  *&STACK[0x1F80] = vmlaq_f32(v1006, _Q16, v996);
  *&STACK[0x1F70] = vmlaq_f32(vmlaq_f32(v1005, v879, v992), _Q16, v981);
  v1008 = vmlaq_f32(vmulq_f32(v992, v857), v901, v981);
  v1005.i32[0] = vdupq_laneq_s32(v1001[18], 3).u32[0];
  v1005.i32[1] = v1001[34].i32[3];
  v1005.i32[2] = v1001[50].i32[3];
  v1005.i32[3] = v1001[66].i32[3];
  v981.i64[0] = vzip1q_s32(v1003[17], v1003[33]).u64[0];
  v981.i32[2] = v1003[49].i32[0];
  v981.i32[3] = v1003[65].i32[0];
  v1009 = vmlaq_f32(vmlaq_f32(v1007, v901, v996), v901, v981);
  v1010 = vmlaq_f32(v1008, v901, v1005);
  v1011 = vmulq_f32(v1005, _Q16);
  v901.i32[0] = vdupq_laneq_s32(v1001[20], 3).u32[0];
  v901.i32[1] = v1001[36].i32[3];
  v901.i32[2] = v1001[52].i32[3];
  v901.i32[3] = v1001[68].i32[3];
  v996.i64[0] = vzip1q_s32(v1003[19], v1003[35]).u64[0];
  v996.i32[2] = v1003[51].i32[0];
  v996.i32[3] = v1003[67].i32[0];
  *&STACK[0x1FA0] = vmlaq_f32(v1009, v857, v996);
  *&STACK[0x1F90] = vmlaq_f32(v1010, v857, v901);
  v1012 = vmlaq_f32(vmulq_f32(v981, _Q16), v879, v996);
  v1013 = vmlaq_f32(v1011, v879, v901);
  v1014 = vmulq_f32(v901, _Q5);
  v879.i32[0] = vdupq_laneq_s32(v1001[22], 3).u32[0];
  v879.i32[1] = v1001[38].i32[3];
  v879.i32[2] = v1001[54].i32[3];
  v879.i32[3] = v1001[70].i32[3];
  v857.i64[0] = vzip1q_s32(v1003[21], v1003[37]).u64[0];
  v857.i32[2] = v1003[53].i32[0];
  v857.i32[3] = v1003[69].i32[0];
  *&STACK[0x1FC0] = vmlaq_f32(v1012, v858, v857);
  *&STACK[0x1FB0] = vmlaq_f32(v1013, v858, v879);
  v1015 = vmlaq_f32(vmulq_f32(v996, _Q5), v856, v857);
  v1016 = vmlaq_f32(v1014, v856, v879);
  v1013.i32[0] = vdupq_laneq_s32(v1001[24], 3).u32[0];
  v1013.i32[1] = v1001[40].i32[3];
  v1013.i32[2] = v1001[56].i32[3];
  v1013.i32[3] = v1001[72].i32[3];
  v856.i64[0] = vzip1q_s32(v1003[23], v1003[39]).u64[0];
  v856.i32[2] = v1003[55].i32[0];
  v856.i32[3] = v1003[71].i32[0];
  *&STACK[0x1FE0] = vmlaq_f32(v1015, v979, v856);
  *&STACK[0x1FD0] = vmlaq_f32(v1016, v979, v1013);
  v1017 = vmlaq_f32(vmulq_f32(v879, v818), v978, v1013);
  v1013.i32[0] = vdupq_laneq_s32(v1002[10], 3).u32[0];
  v1013.i32[1] = v1002[26].i32[3];
  v1013.i32[2] = v1002[42].i32[3];
  v1013.i32[3] = v1002[58].i32[3];
  v1016.i64[0] = vzip1q_s32(v994[9], v994[25]).u64[0];
  v1016.i32[2] = v994[41].i32[0];
  v1016.i32[3] = v994[57].i32[0];
  v1018 = &STACK[0x4D0];
  v1019 = &STACK[0x590];
  v1020 = &STACK[0x650];
  v1021 = &STACK[0x710];
  *&STACK[0x2000] = vmlaq_f32(vmlaq_f32(vmulq_f32(v857, v818), v978, v856), v818, v1016);
  *&STACK[0x1FF0] = vmlaq_f32(v1017, v818, v1013);
  while (1)
  {
    v1022 = *(&STACK[0x22F0] + v817);
    v1023 = *(&STACK[0x22F0] + v817 + 16);
    v1024 = *(&STACK[0x21F0] + v817);
    v1025 = *(&STACK[0x21F0] + v817 + 16);
    v1026 = *(&STACK[0x20F0] + v817);
    v1027 = *(&STACK[0x20F0] + v817 + 16);
    v1028 = vmulq_f32(*(&STACK[0x1F30] + v817 + 16), v818);
    v1029 = vmulq_f32(*(&STACK[0x1F30] + v817), v818);
    v1030 = vzip2q_s32(v1029, v1028);
    v1031 = vzip1q_s32(v1029, v1028);
    v1032 = vpaddq_f32(vmulq_f32(v1022, xmmword_298495E60), vmulq_f32(v1023, xmmword_298495E50));
    v1033 = *(&STACK[0x2010] + v817);
    v1034 = *(&STACK[0x2010] + v817 + 16);
    v1035 = vpaddq_f32(vmulq_f32(v1024, xmmword_298495E60), vmulq_f32(v1025, xmmword_298495E50));
    v1036 = vpaddq_f32(vmulq_f32(v1026, xmmword_298495E60), vmulq_f32(v1027, xmmword_298495E50));
    v1037 = vpaddq_f32(vmulq_f32(v1033, xmmword_298495E60), vmulq_f32(v1034, xmmword_298495E50));
    v1038 = vaddq_f32(v1035, vqtbl1q_s8(v1035, xmmword_298495EB0));
    v1039 = vaddq_f32(v1037, vqtbl1q_s8(v1037, xmmword_298495EB0));
    v1040 = vaddq_f32(vaddq_f32(v1032, vqtbl1q_s8(v1032, xmmword_298495EB0)), vqtbl1q_s8(v1031, xmmword_298495EC0));
    v1041 = vaddq_f32(v1038, vqtbl1q_s8(v1031, xmmword_298495ED0));
    v1042 = vaddq_f32(vaddq_f32(v1036, vqtbl1q_s8(v1036, xmmword_298495EB0)), vqtbl1q_s8(v1030, xmmword_298495EC0));
    v1043 = vaddq_f32(v1039, vqtbl1q_s8(v1030, xmmword_298495ED0));
    v1044 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1022, xmmword_298495E80), vmulq_f32(v1023, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1022, xmmword_298495EA0), vmulq_f32(v1023, xmmword_298495E90)));
    v1045 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1024, xmmword_298495E80), vmulq_f32(v1025, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1024, xmmword_298495EA0), vmulq_f32(v1025, xmmword_298495E90)));
    v1046 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1026, xmmword_298495E80), vmulq_f32(v1027, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1026, xmmword_298495EA0), vmulq_f32(v1027, xmmword_298495E90)));
    v1047 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1033, xmmword_298495E80), vmulq_f32(v1034, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1033, xmmword_298495EA0), vmulq_f32(v1034, xmmword_298495E90)));
    v1048 = vuzp1q_s32(v1044, vrev64q_s32(v1044));
    v1049 = vuzp1q_s32(v1045, vrev64q_s32(v1045));
    v1050 = vuzp1q_s32(v1046, vrev64q_s32(v1046));
    v1051 = vuzp1q_s32(v1047, vrev64q_s32(v1047));
    v1052 = vzip1q_s32(v1040, v1048);
    v1053 = vrev64q_s32(v1040);
    v1053.i64[0] = v1048.i64[1];
    v1054 = vzip1q_s32(v1041, v1049);
    v1055 = vrev64q_s32(v1041);
    v1055.i64[0] = v1049.i64[1];
    v1056 = vrev64q_s32(v1042);
    v1056.i64[0] = v1050.i64[1];
    v1057 = vzip1q_s32(v1042, v1050);
    v1058 = vzip1q_s32(v1043, v1051);
    v1059 = vrev64q_s32(v1043);
    v1059.i64[0] = v1051.i64[1];
    v1060 = vrev64q_s32(v1052);
    v1060.i64[0] = v1052.i64[0];
    v1061 = vrev64q_s32(v1054);
    v1061.i64[0] = v1054.i64[0];
    v1062 = vrev64q_s32(v1057);
    v1062.i64[0] = v1057.i64[0];
    v1063 = vrev64q_s32(v1058);
    v1063.i64[0] = v1058.i64[0];
    if (v817 == 192)
    {
      break;
    }

    *v1018 = v1060;
    *(v1018 + 1) = v1053;
    v1018 = (v1018 + 28);
    *v1019 = v1061;
    *(v1019 + 1) = v1055;
    v1019 = (v1019 + 28);
    *v1020 = v1062;
    *(v1020 + 1) = v1056;
    v1020 = (v1020 + 28);
    *v1021 = v1063;
    *(v1021 + 1) = v1059;
    v1021 = (v1021 + 28);
    v817 += 32;
  }

  *v1018 = v1060;
  *v1019 = v1061;
  *v1020 = v1062;
  *v1021 = v1063;
  v1018[2] = v1053.i64[0];
  v1019[2] = v1055.i64[0];
  v1020[2] = v1056.i64[0];
  v1021[2] = v1059.i64[0];
  v1064.i32[0] = vdupq_laneq_s32(v1040, 3).u32[0];
  v1064.i32[1] = v1041.i32[3];
  v1064.i64[1] = __PAIR64__(v1043.u32[3], v1042.u32[3]);
  *&STACK[0xC60] = v1064;
  *&STACK[0x440] = *v6;
  v1065 = *(v6 + 32);
  STACK[0x460] = v1065;
  STACK[0x468] = v6;
  v1066 = *(v6 + 135);
  LOBYTE(STACK[0x4C7]) = v1066;
  if (!v1066)
  {
    v1068 = *&STACK[0x710];
    v1067 = *&STACK[0x720];
    v1069 = vminnmq_f32(*&STACK[0x4E0], *&STACK[0x720]);
    *&STACK[0x4D0] = vminnmq_f32(*&STACK[0x4D0], *&STACK[0x710]);
    *&STACK[0x4E0] = v1069;
    v1071 = *&STACK[0x730];
    v1070 = *&STACK[0x740];
    v1072 = vminnmq_f32(*&STACK[0x500], *&STACK[0x740]);
    *&STACK[0x4F0] = vminnmq_f32(*&STACK[0x4F0], *&STACK[0x730]);
    *&STACK[0x500] = v1072;
    v1074 = *&STACK[0x750];
    v1073 = *&STACK[0x760];
    v1075 = vminnmq_f32(*&STACK[0x520], *&STACK[0x760]);
    *&STACK[0x510] = vminnmq_f32(*&STACK[0x510], *&STACK[0x750]);
    *&STACK[0x520] = v1075;
    v1077 = *&STACK[0x770];
    v1076 = *&STACK[0x780];
    v1078 = vminnmq_f32(*&STACK[0x540], *&STACK[0x780]);
    *&STACK[0x530] = vminnmq_f32(*&STACK[0x530], *&STACK[0x770]);
    *&STACK[0x540] = v1078;
    v1080 = *&STACK[0x790];
    v1079 = *&STACK[0x7A0];
    v1081 = vminnmq_f32(*&STACK[0x560], *&STACK[0x7A0]);
    *&STACK[0x550] = vminnmq_f32(*&STACK[0x550], *&STACK[0x790]);
    *&STACK[0x560] = v1081;
    v1083 = *&STACK[0x7B0];
    v1082 = *&STACK[0x7C0];
    v1084 = vminnmq_f32(*&STACK[0x580], *&STACK[0x7C0]);
    *&STACK[0x570] = vminnmq_f32(*&STACK[0x570], *&STACK[0x7B0]);
    *&STACK[0x580] = v1084;
    v1085 = vminnmq_f32(*&STACK[0x5A0], v1067);
    *&STACK[0x590] = vminnmq_f32(*&STACK[0x590], v1068);
    *&STACK[0x5A0] = v1085;
    v1086 = vminnmq_f32(*&STACK[0x5C0], v1070);
    *&STACK[0x5B0] = vminnmq_f32(*&STACK[0x5B0], v1071);
    *&STACK[0x5C0] = v1086;
    v1087 = vminnmq_f32(*&STACK[0x5E0], v1073);
    *&STACK[0x5D0] = vminnmq_f32(*&STACK[0x5D0], v1074);
    *&STACK[0x5E0] = v1087;
    v1088 = vminnmq_f32(*&STACK[0x600], v1076);
    *&STACK[0x5F0] = vminnmq_f32(*&STACK[0x5F0], v1077);
    *&STACK[0x600] = v1088;
    v1089 = vminnmq_f32(*&STACK[0x620], v1079);
    *&STACK[0x610] = vminnmq_f32(*&STACK[0x610], v1080);
    *&STACK[0x620] = v1089;
    v1090 = vminnmq_f32(*&STACK[0x640], v1082);
    *&STACK[0x630] = vminnmq_f32(*&STACK[0x630], v1083);
    *&STACK[0x640] = v1090;
    v1091 = vminnmq_f32(*&STACK[0x660], v1067);
    *&STACK[0x650] = vminnmq_f32(*&STACK[0x650], v1068);
    *&STACK[0x660] = v1091;
    v1092 = vminnmq_f32(*&STACK[0x680], v1070);
    *&STACK[0x670] = vminnmq_f32(*&STACK[0x670], v1071);
    *&STACK[0x680] = v1092;
    v1093 = vminnmq_f32(*&STACK[0x6A0], v1073);
    *&STACK[0x690] = vminnmq_f32(*&STACK[0x690], v1074);
    *&STACK[0x6A0] = v1093;
    v1094 = vminnmq_f32(*&STACK[0x6C0], v1076);
    *&STACK[0x6B0] = vminnmq_f32(*&STACK[0x6B0], v1077);
    *&STACK[0x6C0] = v1094;
    v1095 = vminnmq_f32(*&STACK[0x6E0], v1079);
    *&STACK[0x6D0] = vminnmq_f32(*&STACK[0x6D0], v1080);
    *&STACK[0x6E0] = v1095;
    v1096 = vminnmq_f32(*&STACK[0x700], v1082);
    *&STACK[0x6F0] = vminnmq_f32(*&STACK[0x6F0], v1083);
    *&STACK[0x700] = v1096;
    *&STACK[0xC60] = vminnmq_f32(v1064, vdupq_laneq_s32(v1043, 3));
  }

  if (*&STACK[0x4BC] < 0.0)
  {
    v1097 = 0uLL;
    v1098 = &STACK[0x440];
    v1099 = 3;
    v1100 = 0uLL;
    v1101 = 0uLL;
    v1102 = 0uLL;
    do
    {
      v1103 = xmmword_2984959B0;
      if (v1065)
      {
        v1103 = *v1065;
      }

      v1105 = *(v1098 + 11);
      v1104 = *(v1098 + 12);
      v1107 = *(v1098 + 9);
      v1106 = *(v1098 + 10);
      v1109 = *(v1098 + 23);
      v1108 = *(v1098 + 24);
      v1111 = *(v1098 + 21);
      v1110 = *(v1098 + 22);
      v1113 = *(v1098 + 35);
      v1112 = *(v1098 + 36);
      v1115 = *(v1098 + 33);
      v1114 = *(v1098 + 34);
      v1116 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1108, *v1103.f32, 1), v1104, v1103.f32[0]), v1112, v1103, 2);
      v1117 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1109, *v1103.f32, 1), v1105, v1103.f32[0]), v1113, v1103, 2);
      v1118 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1110, *v1103.f32, 1), v1106, v1103.f32[0]), v1114, v1103, 2);
      v1119 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1111, *v1103.f32, 1), v1107, v1103.f32[0]), v1115, v1103, 2);
      *(v1098 + 57) = v1119;
      *(v1098 + 58) = v1118;
      *(v1098 + 59) = v1117;
      *(v1098 + 60) = v1116;
      v1120 = vsubq_f32(v1104, v1116);
      v1121 = vsubq_f32(v1105, v1117);
      v1122 = vsubq_f32(v1106, v1118);
      v1123 = vsubq_f32(v1107, v1119);
      v1124 = vsubq_f32(v1111, v1119);
      v1125 = vsubq_f32(v1110, v1118);
      v1126 = vsubq_f32(v1109, v1117);
      v1127 = vsubq_f32(v1108, v1116);
      v1128 = vsubq_f32(v1115, v1119);
      v1129 = vsubq_f32(v1114, v1118);
      v1130 = vsubq_f32(v1113, v1117);
      v1131 = vsubq_f32(v1112, v1116);
      v1097 = vaddq_f32(v1097, vmlaq_f32(vmlaq_f32(vmulq_f32(v1124, v1124), v1123, v1123), v1128, v1128));
      v1100 = vaddq_f32(v1100, vmlaq_f32(vmlaq_f32(vmulq_f32(v1125, v1125), v1122, v1122), v1129, v1129));
      v1101 = vaddq_f32(v1101, vmlaq_f32(vmlaq_f32(vmulq_f32(v1126, v1126), v1121, v1121), v1130, v1130));
      v1102 = vaddq_f32(v1102, vmlaq_f32(vmlaq_f32(vmulq_f32(v1127, v1127), v1120, v1120), v1131, v1131));
      v1098 += 8;
      --v1099;
    }

    while (v1099);
    v1132 = *&STACK[0xC60];
    if (v1065)
    {
      v1133 = *v1065;
      v1133.i32[3] = 0;
    }

    else
    {
      v1133 = xmmword_2984959B0;
    }

    v1134 = vmulq_f32(v1132, v1133);
    *v1134.i8 = vadd_f32(*v1134.i8, *&vextq_s8(v1134, v1134, 8uLL));
    v1135 = vsubq_f32(v1132, vdupq_lane_s32(vadd_f32(*v1134.i8, vdup_lane_s32(*v1134.i8, 1)), 0));
    v1135.i32[3] = 0;
    v1136 = vaddq_f32(vaddq_f32(v1097, v1101), vaddq_f32(v1100, v1102));
    v1136.i64[0] = vpaddq_f32(v1136, v1136).u64[0];
    v1137 = vmulq_f32(v1135, v1135);
    v1137.i64[0] = vpaddq_f32(v1137, v1137).u64[0];
    v1136.f32[0] = vrecpes_f32(vadd_f32(vpadd_f32(*v1136.f32, *v1136.f32), vpadd_f32(*v1137.f32, *v1137.f32)).f32[0]);
    *&STACK[0xC70] = vaddv_f32(*v1134.i8);
    *&STACK[0x4BC] = (v1136.f32[0] * 3.0) + (v1136.f32[0] * 3.0);
  }

  if (SLOBYTE(STACK[0x4C6]) < 0)
  {
    v1138 = &STACK[0x890];
    v1139 = 0uLL;
    v1140 = 3;
    v1141 = vdupq_n_s32(0x3B808081u);
    v1142 = 0uLL;
    v1143 = 0uLL;
    v1144 = 0uLL;
    do
    {
      v1145 = vcgeq_f32(v1141, *(v1138 - 24));
      v1146 = vcgeq_f32(v1141, *(v1138 - 23));
      v1147 = vcgeq_f32(v1141, *(v1138 - 22));
      v1148 = vcgeq_f32(v1141, *(v1138 - 21));
      *(v1138 + 2) = v1147;
      *(v1138 + 3) = v1148;
      *v1138 = v1145;
      *(v1138 + 1) = v1146;
      v1138 += 8;
      v1144 = vsubq_s32(v1144, v1148);
      v1143 = vsubq_s32(v1143, v1147);
      v1142 = vsubq_s32(v1142, v1146);
      v1139 = vsubq_s32(v1139, v1145);
      --v1140;
    }

    while (v1140);
    v1149 = vaddq_s32(vaddq_s32(v1139, v1143), vaddq_s32(v1142, v1144));
    v1149.i64[0] = vpaddq_s32(v1149, v1149).u64[0];
    v1150 = vpadd_s32(*v1149.i8, *v1149.i8).u8[0];
    if (*&STACK[0xC6C] <= 0.0039216)
    {
      ++v1150;
    }

    LOBYTE(STACK[0x4C6]) = v1150;
  }

  v1151 = 1296;
  v1152 = 336;
  do
  {
    v1153 = (&STACK[0x440] + v1151);
    v1154 = *(&STACK[0x440] + v1152 - 192);
    v1155 = *(&STACK[0x440] + v1152 - 176);
    v1156 = *(&STACK[0x440] + v1152);
    v1157 = *(&STACK[0x440] + v1152 + 16);
    v1158 = *(&STACK[0x440] + v1152 + 192);
    v1159 = *(&STACK[0x440] + v1152 + 208);
    v1160 = *(&STACK[0x440] + v1152 + 384);
    v1161 = *(&STACK[0x440] + v1152 + 400);
    v4107.val[0] = vzip1q_s32(v1154, v1158);
    v4107.val[1] = vzip1q_s32(v1156, v1160);
    v1162 = (&STACK[0x440] + v1151 + 64);
    v1163 = (&STACK[0x440] + v1151 + 96);
    vst2q_f32(v1153, v4107);
    v1153 += 8;
    v4107.val[0] = vzip2q_s32(v1154, v1158);
    v4107.val[1] = vzip2q_s32(v1156, v1160);
    vst2q_f32(v1153, v4107);
    v4107.val[0] = vzip1q_s32(v1155, v1159);
    v4107.val[1] = vzip1q_s32(v1157, v1161);
    vst2q_f32(v1162, v4107);
    v4103.val[0] = vzip2q_s32(v1155, v1159);
    v4103.val[1] = vzip2q_s32(v1157, v1161);
    vst2q_f32(v1163, v4103);
    v1151 += 128;
    v1152 += 32;
  }

  while (v1151 != 2064);
  v1164 = 0;
  v1165 = *&STACK[0x590];
  v1166 = *&STACK[0x5A0];
  v1167 = *&STACK[0x5B0];
  v1168 = *&STACK[0x5C0];
  v1169 = *&STACK[0xC60];
  v1170 = *&STACK[0x500];
  v1171 = *&STACK[0x4F0];
  v1172 = *&STACK[0x4E0];
  v1173 = *&STACK[0x4D0];
  *&STACK[0x380] = *&STACK[0x5A0];
  *&STACK[0x390] = vmulq_f32(v1170, v1170);
  v1174 = v1167;
  v1175 = v1168;
  v1176 = vmulq_f32(v1171, v1171);
  v1177 = vmulq_f32(v1172, v1172);
  v1178 = vmulq_f32(v1173, v1173);
  v1179 = vmulq_f32(v1168, v1168);
  v1180 = *&STACK[0x650];
  v1181 = *&STACK[0x660];
  v1182 = vmulq_f32(v1174, v1174);
  v1183 = vmulq_f32(v1166, v1166);
  v1184 = v1165;
  v1185 = vmulq_f32(v1165, v1165);
  v1186 = *&STACK[0x670];
  v1187 = *&STACK[0x680];
  v1188 = vmulq_f32(v1187, v1187);
  v1189 = vmulq_f32(v1186, v1186);
  v1190 = vmulq_f32(v1181, v1181);
  v1191 = *&STACK[0x730];
  v1192 = *&STACK[0x740];
  v1193 = vmulq_f32(v1180, v1180);
  v1194 = vmulq_f32(v1192, v1192);
  v1195 = vmulq_f32(v1191, v1191);
  v1197 = *&STACK[0x710];
  v1196 = *&STACK[0x720];
  v1198 = vmulq_f32(v1196, v1196);
  *&STACK[0x370] = v1169;
  *&STACK[0xC50] = v1169;
  v1199 = vmulq_f32(v1197, v1197);
  do
  {
    v1200 = *(&STACK[0x440] + v1164 + 224);
    v1201 = *(&STACK[0x440] + v1164 + 240);
    v1171 = vaddq_f32(v1171, v1201);
    v1176 = vmlaq_f32(v1176, v1201, v1201);
    v1172 = vaddq_f32(v1172, v1200);
    v1177 = vmlaq_f32(v1177, v1200, v1200);
    v1202 = *(&STACK[0x440] + v1164 + 208);
    v1173 = vaddq_f32(v1173, v1202);
    v1178 = vmlaq_f32(v1178, v1202, v1202);
    v1203 = *(&STACK[0x440] + v1164 + 256);
    *&STACK[0x390] = vmlaq_f32(*&STACK[0x390], v1203, v1203);
    v1170 = vaddq_f32(v1170, v1203);
    v1204 = *(&STACK[0x440] + v1164 + 432);
    v1174 = vaddq_f32(v1174, v1204);
    v1182 = vmlaq_f32(v1182, v1204, v1204);
    v1205 = *(&STACK[0x440] + v1164 + 416);
    *&STACK[0x380] = vaddq_f32(*&STACK[0x380], v1205);
    v1183 = vmlaq_f32(v1183, v1205, v1205);
    v1206 = *(&STACK[0x440] + v1164 + 400);
    v1184 = vaddq_f32(v1184, v1206);
    v1185 = vmlaq_f32(v1185, v1206, v1206);
    v1207 = *(&STACK[0x440] + v1164 + 448);
    v1175 = vaddq_f32(v1175, v1207);
    v1179 = vmlaq_f32(v1179, v1207, v1207);
    v1208 = *(&STACK[0x440] + v1164 + 608);
    v1209 = *(&STACK[0x440] + v1164 + 624);
    v1186 = vaddq_f32(v1186, v1209);
    v1189 = vmlaq_f32(v1189, v1209, v1209);
    v1181 = vaddq_f32(v1181, v1208);
    v1190 = vmlaq_f32(v1190, v1208, v1208);
    v1210 = *(&STACK[0x440] + v1164 + 592);
    v1180 = vaddq_f32(v1180, v1210);
    v1193 = vmlaq_f32(v1193, v1210, v1210);
    v1211 = *(&STACK[0x440] + v1164 + 640);
    v1187 = vaddq_f32(v1187, v1211);
    v1188 = vmlaq_f32(v1188, v1211, v1211);
    v1212 = *(&STACK[0x440] + v1164 + 816);
    v1191 = vaddq_f32(v1191, v1212);
    v1195 = vmlaq_f32(v1195, v1212, v1212);
    v1213 = *(&STACK[0x440] + v1164 + 800);
    v1196 = vaddq_f32(v1196, v1213);
    v1198 = vmlaq_f32(v1198, v1213, v1213);
    v1214 = *(&STACK[0x440] + v1164 + 784);
    v1197 = vaddq_f32(v1197, v1214);
    v1199 = vmlaq_f32(v1199, v1214, v1214);
    v1215 = *(&STACK[0x440] + v1164 + 832);
    v1192 = vaddq_f32(v1192, v1215);
    v1194 = vmlaq_f32(v1194, v1215, v1215);
    v1164 += 64;
  }

  while (v1164 != 128);
  v1216 = vaddq_f32(*&STACK[0x370], vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1173, v1171), vaddq_f32(v1172, v1170)), vaddq_f32(vaddq_f32(v1184, v1174), vaddq_f32(*&STACK[0x380], v1175))), vpaddq_f32(vaddq_f32(vaddq_f32(v1180, v1186), vaddq_f32(v1181, v1187)), vaddq_f32(vaddq_f32(v1197, v1191), vaddq_f32(v1196, v1192)))));
  v1217 = vmulq_f32(v1216, vdupq_n_s32(0x3CA72F05u));
  v1218 = vmlsq_f32(vmlaq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1178, v1176), vaddq_f32(v1177, *&STACK[0x390])), vaddq_f32(vaddq_f32(v1185, v1182), vaddq_f32(v1183, v1179))), vpaddq_f32(vaddq_f32(vaddq_f32(v1193, v1189), vaddq_f32(v1190, v1188)), vaddq_f32(vaddq_f32(v1199, v1195), vaddq_f32(v1198, v1194)))), *&STACK[0x370], *&STACK[0x370]), v1217, v1216);
  *&STACK[0x450] = v1217;
  v1216.i64[0] = vpaddq_f32(v1218, v1218).u64[0];
  LODWORD(STACK[0x4B8]) = vpadd_f32(*v1216.f32, *v1216.f32).u32[0];
  if (SLOBYTE(STACK[0x4C8]) < 1)
  {
    LOBYTE(STACK[0x4C8]) = v1217.f32[3] >= 0.99996;
  }

  memcpy(&STACK[0x1440], &STACK[0x440], 0x840uLL);
  v1220 = *&STACK[0x1450];
  v1221 = SLOBYTE(STACK[0x14C6]);
  v1222 = LOBYTE(STACK[0x14C7]);
  if (v1221 >= 1 && LOBYTE(STACK[0x14C7]))
  {
    v1223 = 0;
    v1224 = vcgezq_s32(*&STACK[0x1890]);
    v1225 = vcgezq_s32(*&STACK[0x18A0]);
    v1226 = vcgezq_s32(*&STACK[0x18B0]);
    v1227 = vcgezq_s32(*&STACK[0x18C0]);
    v1228 = vandq_s8(*&STACK[0x1500], v1227);
    v1229 = vandq_s8(*&STACK[0x14F0], v1226);
    v1230 = vandq_s8(*&STACK[0x14E0], v1225);
    v1231 = vandq_s8(*&STACK[0x14D0], v1224);
    v1232 = vandq_s8(*&STACK[0x15C0], v1227);
    v1233 = vandq_s8(*&STACK[0x15B0], v1226);
    v1234 = vandq_s8(*&STACK[0x15A0], v1225);
    v1235 = vandq_s8(*&STACK[0x1590], v1224);
    v1236 = vandq_s8(*&STACK[0x1680], v1227);
    v1237 = vandq_s8(*&STACK[0x1670], v1226);
    v1238 = vandq_s8(*&STACK[0x1660], v1225);
    v1239 = vandq_s8(*&STACK[0x1650], v1224);
    v1240 = vandq_s8(*&STACK[0x1740], v1227);
    v1241 = vandq_s8(*&STACK[0x1730], v1226);
    v1242 = vandq_s8(*&STACK[0x1720], v1225);
    v1243 = vandq_s8(*&STACK[0x1710], v1224);
    do
    {
      v1244 = vcgezq_s32(*(&STACK[0x1440] + v1223 + 1216));
      v1245 = vcgezq_s32(*(&STACK[0x1440] + v1223 + 1200));
      v1246 = vcgezq_s32(*(&STACK[0x1440] + v1223 + 1184));
      v1247 = vcgezq_s32(*(&STACK[0x1440] + v1223 + 1168));
      v1228 = vaddq_f32(v1228, vandq_s8(*(&STACK[0x1440] + v1223 + 256), v1244));
      v1229 = vaddq_f32(v1229, vandq_s8(*(&STACK[0x1440] + v1223 + 240), v1245));
      v1230 = vaddq_f32(v1230, vandq_s8(*(&STACK[0x1440] + v1223 + 224), v1246));
      v1231 = vaddq_f32(v1231, vandq_s8(*(&STACK[0x1440] + v1223 + 208), v1247));
      v1232 = vaddq_f32(v1232, vandq_s8(*(&STACK[0x1440] + v1223 + 448), v1244));
      v1233 = vaddq_f32(v1233, vandq_s8(*(&STACK[0x1440] + v1223 + 432), v1245));
      v1234 = vaddq_f32(v1234, vandq_s8(*(&STACK[0x1440] + v1223 + 416), v1246));
      v1235 = vaddq_f32(v1235, vandq_s8(*(&STACK[0x1440] + v1223 + 400), v1247));
      v1236 = vaddq_f32(v1236, vandq_s8(*(&STACK[0x1440] + v1223 + 640), v1244));
      v1237 = vaddq_f32(v1237, vandq_s8(*(&STACK[0x1440] + v1223 + 624), v1245));
      v1238 = vaddq_f32(v1238, vandq_s8(*(&STACK[0x1440] + v1223 + 608), v1246));
      v1239 = vaddq_f32(v1239, vandq_s8(*(&STACK[0x1440] + v1223 + 592), v1247));
      v1248 = vandq_s8(*(&STACK[0x1440] + v1223 + 784), v1247);
      v1240 = vaddq_f32(v1240, vandq_s8(*(&STACK[0x1440] + v1223 + 832), v1244));
      v1241 = vaddq_f32(v1241, vandq_s8(*(&STACK[0x1440] + v1223 + 816), v1245));
      v1242 = vaddq_f32(v1242, vandq_s8(*(&STACK[0x1440] + v1223 + 800), v1246));
      v1223 += 64;
      v1243 = vaddq_f32(v1243, v1248);
    }

    while (v1223 != 128);
    v1249 = vaddq_f32(v1231, v1229);
    v1219 = vaddq_f32(vaddq_f32(v1243, v1241), vaddq_f32(v1242, v1240));
    v1220 = vmulq_n_f32(vaddq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v1249, vaddq_f32(v1230, v1228)), vaddq_f32(vaddq_f32(v1235, v1233), vaddq_f32(v1234, v1232))), vpaddq_f32(vaddq_f32(vaddq_f32(v1239, v1237), vaddq_f32(v1238, v1236)), v1219)), *&STACK[0x1C60]), ReciprocalTable[49 - v1221]);
  }

  v1250 = LOBYTE(STACK[0x14C8]);
  v4102 = v5;
  v4099 = *v5;
  if (*&STACK[0x14BC] <= 2401.0)
  {
    v1274 = 0;
    *&STACK[0x370] = vdupq_lane_s32(*v1220.f32, 1);
    *&STACK[0x380] = vdupq_lane_s32(*v1220.f32, 0);
    *&STACK[0x340] = v1220;
    *&STACK[0x350] = vdupq_laneq_s32(v1220, 3);
    *&STACK[0x360] = vdupq_laneq_s32(v1220, 2);
    v1275 = xmmword_298495630;
    v1276.i64[0] = -1;
    v1276.i64[1] = -1;
    v1277 = xmmword_298495610;
    v1278 = xmmword_298495620;
    v1279.i64[0] = 0x7F0000007FLL;
    v1279.i64[1] = 0x7F0000007FLL;
    v1280.i64[0] = 0x7F0000007FLL;
    v1280.i64[1] = 0x7F0000007FLL;
    v1281 = xmmword_298495600;
    v1282.i64[0] = 0x7F0000007FLL;
    v1282.i64[1] = 0x7F0000007FLL;
    v1283.i64[0] = 0x7F0000007FLL;
    v1283.i64[1] = 0x7F0000007FLL;
    v1284 = STACK[0x1460];
    v1285.i64[0] = -1;
    v1285.i64[1] = -1;
    v1286.i64[0] = -1;
    v1286.i64[1] = -1;
    v1287.i64[0] = -1;
    v1287.i64[1] = -1;
    do
    {
      *&STACK[0x390] = v1276;
      v1288 = vsubq_f32(*(&STACK[0x1440] + v1274 + 192), *&STACK[0x380]);
      v1289 = vsubq_f32(*(&STACK[0x1440] + v1274 + 144), *&STACK[0x380]);
      v1290 = vsubq_f32(*(&STACK[0x1440] + v1274 + 160), *&STACK[0x380]);
      v1291 = vsubq_f32(*(&STACK[0x1440] + v1274 + 176), *&STACK[0x380]);
      v1292 = vsubq_f32(*(&STACK[0x1440] + v1274 + 384), *&STACK[0x370]);
      v1293 = vsubq_f32(*(&STACK[0x1440] + v1274 + 336), *&STACK[0x370]);
      v1294 = vsubq_f32(*(&STACK[0x1440] + v1274 + 352), *&STACK[0x370]);
      v1295 = vsubq_f32(*(&STACK[0x1440] + v1274 + 368), *&STACK[0x370]);
      v1296 = vsubq_f32(*(&STACK[0x1440] + v1274 + 576), *&STACK[0x360]);
      v1297 = vsubq_f32(*(&STACK[0x1440] + v1274 + 528), *&STACK[0x360]);
      v1298 = vsubq_f32(*(&STACK[0x1440] + v1274 + 544), *&STACK[0x360]);
      v1299 = vsubq_f32(*(&STACK[0x1440] + v1274 + 560), *&STACK[0x360]);
      v1300 = vsubq_f32(*(&STACK[0x1440] + v1274 + 768), *&STACK[0x350]);
      v1301 = vsubq_f32(*(&STACK[0x1440] + v1274 + 720), *&STACK[0x350]);
      v1302 = vsubq_f32(*(&STACK[0x1440] + v1274 + 736), *&STACK[0x350]);
      v1303 = vsubq_f32(*(&STACK[0x1440] + v1274 + 752), *&STACK[0x350]);
      v1304 = vmulq_f32(v1291, v1291);
      v1305 = vmulq_f32(v1290, v1290);
      v1306 = vmulq_f32(v1289, v1289);
      v1307 = vmulq_f32(v1288, v1288);
      v1308 = vmulq_f32(v1295, v1295);
      v1309 = vmulq_f32(v1294, v1294);
      v1310 = vmulq_f32(v1293, v1293);
      v1311 = vmulq_f32(v1292, v1292);
      v1312 = vmulq_f32(v1299, v1299);
      v1313 = vmulq_f32(v1298, v1298);
      v1314 = vmulq_f32(v1297, v1297);
      v1315 = vmulq_f32(v1296, v1296);
      v1316 = vmulq_f32(v1303, v1303);
      v1317 = vmulq_f32(v1302, v1302);
      v1318 = vmulq_f32(v1301, v1301);
      v1319 = vmulq_f32(v1300, v1300);
      if (v1284)
      {
        v1320 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1309, *v1284, 1), v1305, COERCE_FLOAT(*v1284->f32)), v1313, *v1284->f32, 2), v1317, *v1284->f32, 3), *&STACK[0x3A0]);
        v1321 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1310, *v1284, 1), v1306, COERCE_FLOAT(*v1284->f32)), v1314, *v1284->f32, 2), v1318, *v1284->f32, 3), *&STACK[0x3A0]);
        v1322 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1308, *v1284, 1), v1304, COERCE_FLOAT(*v1284->f32)), v1312, *v1284->f32, 2), v1316, *v1284->f32, 3), *&STACK[0x3A0]);
        v1323 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1311, *v1284, 1), v1307, COERCE_FLOAT(*v1284->f32)), v1315, *v1284->f32, 2), v1319, *v1284->f32, 3), *&STACK[0x3A0]);
      }

      else
      {
        v1321 = vaddq_f32(vaddq_f32(vaddq_f32(v1306, v1310), v1314), v1318);
        v1320 = vaddq_f32(vaddq_f32(vaddq_f32(v1305, v1309), v1313), v1317);
        v1322 = vaddq_f32(vaddq_f32(vaddq_f32(v1304, v1308), v1312), v1316);
        v1323 = vaddq_f32(vaddq_f32(vaddq_f32(v1307, v1311), v1315), v1319);
      }

      if (v1222)
      {
        v1324.i64[0] = 0x7F0000007FLL;
        v1324.i64[1] = 0x7F0000007FLL;
        v1323 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1274 + 1152)), v1324, v1323);
        v1322 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1274 + 1136)), v1324, v1322);
        v1320 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1274 + 1120)), v1324, v1320);
        v1321 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1274 + 1104)), v1324, v1321);
      }

      v1276 = vbslq_s8(vcgtq_f32(v1321, v1279), v1281, *&STACK[0x390]);
      v1285 = vbslq_s8(vcgtq_f32(v1320, v1280), v1278, v1285);
      v1286 = vbslq_s8(vcgtq_f32(v1322, v1282), v1277, v1286);
      v1287 = vbslq_s8(vcgtq_f32(v1323, v1283), v1275, v1287);
      v1279 = vmaxnmq_f32(v1279, v1321);
      v1280 = vmaxnmq_f32(v1280, v1320);
      v1282 = vmaxnmq_f32(v1282, v1322);
      v1283 = vmaxnmq_f32(v1283, v1323);
      v1325.i64[0] = 0x1000000010;
      v1325.i64[1] = 0x1000000010;
      v1281 = vaddq_s32(v1281, v1325);
      v1278 = vaddq_s32(v1278, v1325);
      v1277 = vaddq_s32(v1277, v1325);
      v1274 += 64;
      v1275 = vaddq_s32(v1275, v1325);
    }

    while (v1274 != 192);
    v1326 = vmaxnmq_f32(v1279, v1282);
    v1327 = vmaxnmq_f32(v1280, v1283);
    v1328 = vbslq_s8(vcgtq_f32(v1279, v1282), v1276, v1286);
    v1329 = vcgtq_f32(v1326, v1327);
    v1330 = vmaxnmq_f32(v1326, v1327);
    v1331 = vbslq_s8(v1329, v1328, vbslq_s8(vcgtq_f32(v1280, v1283), v1285, v1287));
    v1332 = vextq_s8(v1330, v1330, 8uLL);
    v1333 = vbslq_s8(vcgtq_f32(v1330, v1332), v1331, vextq_s8(v1331, v1331, 8uLL));
    v1334 = vmaxnmq_f32(v1330, v1332);
    v1335 = vbslq_s8(vcgtq_f32(v1334, vrev64q_s32(v1334)), v1333, vdupq_lane_s32(*v1333.i8, 1)).u32[0];
    v1336 = *(&STACK[0x1950] + v1335);
    if (v1250)
    {
      v1337 = 0;
    }

    else
    {
      v1337 = -1;
    }

    v1338 = *&STACK[0x1C60];
    LODWORD(v1339) = HIDWORD(*&STACK[0x1C60]);
    _ZF = v1339 <= 0.0 && v1222 == 0;
    v1341 = !_ZF;
    if (_ZF)
    {
      v1342 = *&STACK[0x340];
    }

    else
    {
      v1342 = *&STACK[0x340];
      v1343 = vsubq_f32(v1336, *&STACK[0x340]);
      v1344 = vsubq_f32(v1338, *&STACK[0x340]);
      v1345 = vmulq_f32(v1343, v1343);
      v1346 = vmulq_f32(v1344, v1344);
      if (v1284)
      {
        _Q4 = vmulq_f32(v1345, *v1284->f32);
        *_Q4.i8 = vadd_f32(*_Q4.i8, *&vextq_s8(_Q4, _Q4, 8uLL));
        v1348 = vmulq_f32(v1346, *v1284->f32);
        *v1348.i8 = vadd_f32(*v1348.i8, *&vextq_s8(v1348, v1348, 8uLL));
        *v1348.i8 = vadd_f32(vzip1_s32(*_Q4.i8, *v1348.i8), vzip2_s32(*_Q4.i8, *v1348.i8));
        __asm { FMOV            V4.2S, #3.0 }

        v1349 = vmul_f32(*v1348.i8, *_Q4.i8);
      }

      else
      {
        v1351 = vpaddq_f32(v1345, v1345).u64[0];
        v1352 = vpaddq_f32(v1346, v1346).u64[0];
        v1349 = vzip1_s32(vpadd_f32(v1351, v1351), vpadd_f32(v1352, v1352));
      }

      v1353 = v1339 != 0.0 || v1222 == 0;
      v1354 = v1349.f32[1];
      if (!v1353)
      {
        v1354 = 0.0;
      }

      if (v1354 > v1349.f32[0])
      {
        v1336 = *&STACK[0x1C60];
      }
    }

    v1355 = vsubq_f32(v1342, v1336);
    *&STACK[0x320] = v1338;
    *&STACK[0x310] = v1339;
    if (v1284)
    {
      v1356 = *v1284->f32;
    }

    else
    {
      v1356 = vdupq_n_s32(0x3EAAAAABu);
    }

    v1357 = 0;
    v1358 = v1335;
    v1359 = xmmword_298495630;
    v1360 = vmulq_f32(v1355, v1356);
    v1361.i64[0] = -1;
    v1361.i64[1] = -1;
    *&STACK[0x380] = vdupq_lane_s32(*v1336.f32, 0);
    v1362 = xmmword_298495610;
    *&STACK[0x360] = vdupq_laneq_s32(v1336, 2);
    *&STACK[0x370] = vdupq_lane_s32(*v1336.f32, 1);
    v1363.i64[0] = 0x7F0000007FLL;
    v1363.i64[1] = 0x7F0000007FLL;
    *&STACK[0x330] = v1336;
    *&STACK[0x340] = vdupq_lane_s32(*v1360.i8, 0);
    *&STACK[0x350] = vdupq_laneq_s32(v1336, 3);
    v1364.i64[0] = 0x7F0000007FLL;
    v1364.i64[1] = 0x7F0000007FLL;
    v1365.i64[0] = 0x7F0000007FLL;
    v1365.i64[1] = 0x7F0000007FLL;
    v1366 = vdupq_laneq_s32(v1360, 2);
    *&STACK[0x390] = v1360;
    v1367 = vdupq_laneq_s32(v1360, 3);
    v1368.i64[0] = 0x7F0000007FLL;
    v1368.i64[1] = 0x7F0000007FLL;
    v1369.i64[0] = -1;
    v1369.i64[1] = -1;
    v1370 = xmmword_298495620;
    v1371.i64[0] = -1;
    v1371.i64[1] = -1;
    v1372.i64[0] = -1;
    v1372.i64[1] = -1;
    v1373 = xmmword_298495600;
    do
    {
      v1374 = (&STACK[0x1440] + v1357);
      v1375 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1357 + 368), *&STACK[0x370]), *&STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1357 + 176), *&STACK[0x380])), v1366, vsubq_f32(*(&STACK[0x1440] + v1357 + 560), *&STACK[0x360])), v1367, vsubq_f32(*(&STACK[0x1440] + v1357 + 752), *&STACK[0x350]));
      v1376 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1357 + 352), *&STACK[0x370]), *&STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1357 + 160), *&STACK[0x380])), v1366, vsubq_f32(*(&STACK[0x1440] + v1357 + 544), *&STACK[0x360])), v1367, vsubq_f32(*(&STACK[0x1440] + v1357 + 736), *&STACK[0x350]));
      v1377 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1357 + 336), *&STACK[0x370]), *&STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1357 + 144), *&STACK[0x380])), v1366, vsubq_f32(*(&STACK[0x1440] + v1357 + 528), *&STACK[0x360])), v1367, vsubq_f32(*(&STACK[0x1440] + v1357 + 720), *&STACK[0x350]));
      v1378 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1357 + 384), *&STACK[0x370]), *&STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1357 + 192), *&STACK[0x380])), v1366, vsubq_f32(*(&STACK[0x1440] + v1357 + 576), *&STACK[0x360])), v1367, vsubq_f32(*(&STACK[0x1440] + v1357 + 768), *&STACK[0x350]));
      if (v1222)
      {
        v1379.i64[0] = 0x7F0000007FLL;
        v1379.i64[1] = 0x7F0000007FLL;
        v1378 = vbslq_s8(vcltzq_s32(v1374[72]), v1379, v1378);
        v1375 = vbslq_s8(vcltzq_s32(v1374[71]), v1379, v1375);
        v1376 = vbslq_s8(vcltzq_s32(v1374[70]), v1379, v1376);
        v1377 = vbslq_s8(vcltzq_s32(v1374[69]), v1379, v1377);
      }

      v1361 = vbslq_s8(vcgtq_f32(v1377, v1363), v1373, v1361);
      v1369 = vbslq_s8(vcgtq_f32(v1376, v1364), v1370, v1369);
      v1371 = vbslq_s8(vcgtq_f32(v1375, v1365), v1362, v1371);
      v1372 = vbslq_s8(vcgtq_f32(v1378, v1368), v1359, v1372);
      v1363 = vmaxnmq_f32(v1363, v1377);
      v1364 = vmaxnmq_f32(v1364, v1376);
      v1365 = vmaxnmq_f32(v1365, v1375);
      v1368 = vmaxnmq_f32(v1368, v1378);
      v1380.i64[0] = 0x1000000010;
      v1380.i64[1] = 0x1000000010;
      v1373 = vaddq_s32(v1373, v1380);
      v1370 = vaddq_s32(v1370, v1380);
      v1362 = vaddq_s32(v1362, v1380);
      v1357 += 64;
      v1359 = vaddq_s32(v1359, v1380);
    }

    while (v1357 != 192);
    v1381 = vmaxnmq_f32(v1363, v1365);
    v1382 = vmaxnmq_f32(v1364, v1368);
    v1383 = vcgtq_f32(v1381, v1382);
    v1384 = vmaxnmq_f32(v1381, v1382);
    v1385 = vbslq_s8(v1383, vbslq_s8(vcgtq_f32(v1363, v1365), v1361, v1371), vbslq_s8(vcgtq_f32(v1364, v1368), v1369, v1372));
    v1386 = vextq_s8(v1384, v1384, 8uLL);
    v1387 = vbslq_s8(vcgtq_f32(v1384, v1386), v1385, vextq_s8(v1385, v1385, 8uLL));
    v1388 = vmaxnmq_f32(v1384, v1386);
    v1389 = vbslq_s8(vcgtq_f32(v1388, vrev64q_s32(v1388)), v1387, vdupq_lane_s32(*v1387.i8, 1)).u32[0];
    v1390 = *(&STACK[0x1950] + v1389);
    v1391 = *&STACK[0x330];
    v1392 = vsubq_f32(v1390, *&STACK[0x330]);
    STACK[0x300] = v1358;
    if (v1341)
    {
      v1393 = vsubq_f32(*&STACK[0x320], v1391);
      v1394 = vmulq_f32(v1392, v1392);
      v1395 = vmulq_f32(v1393, v1393);
      if (v1284)
      {
        _Q2 = vmulq_f32(v1394, *v1284->f32);
        *_Q2.i8 = vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL));
        v1397 = vmulq_f32(v1395, *v1284->f32);
        *v1397.i8 = vadd_f32(*v1397.i8, *&vextq_s8(v1397, v1397, 8uLL));
        *v1397.i8 = vadd_f32(vzip1_s32(*_Q2.i8, *v1397.i8), vzip2_s32(*_Q2.i8, *v1397.i8));
        __asm { FMOV            V2.2S, #3.0 }

        v1398 = vmul_f32(*v1397.i8, *_Q2.i8);
      }

      else
      {
        v1399 = vpaddq_f32(v1394, v1394).u64[0];
        v1400 = vpaddq_f32(v1395, v1395).u64[0];
        v1398 = vzip1_s32(vpadd_f32(v1399, v1399), vpadd_f32(v1400, v1400));
      }

      v1401 = *&STACK[0x310] != 0.0 || v1222 == 0;
      v1402 = v1398.f32[1];
      if (!v1401)
      {
        v1402 = 0.0;
      }

      if (v1402 > v1398.f32[0])
      {
        v1392 = v1393;
        v1390 = *&STACK[0x320];
      }
    }

    *&STACK[0x380] = v1392;
    *&STACK[0x390] = v1390;
    v1403 = v1389;
    if (v1250)
    {
      v1404 = 3;
    }

    else
    {
      v1404 = 4;
    }

    if (v1250)
    {
      v1405 = 6;
    }

    else
    {
      v1405 = 8;
    }

    v1406 = WeightInfoForSingleLineSingleWeight_7x7(49, v1405);
    v1407 = 0;
    v1408 = ReciprocalTable[BYTE4(v1406)];
    *&STACK[0x320] = v1408;
    *&v1409 = v1408 * (vcvts_n_f32_u32(v1404 + v1337, 2uLL) * v1408);
    v1410.i64[0] = 0x8000000080000000;
    v1410.i64[1] = 0x8000000080000000;
    v1411 = vdupq_n_s32(0x3B808081u);
    v1412 = vbslq_s8(vcgtq_f32(v1411, vabsq_f32(*&STACK[0x380])), vorrq_s8(vandq_s8(*&STACK[0x380], v1410), v1411), *&STACK[0x380]);
    __asm { FMOV            V1.4S, #1.0 }

    *&STACK[0x310] = _Q1;
    v1414 = vdivq_f32(_Q1, v1412);
    v1415 = vdupq_lane_s32(*v1414.f32, 0);
    v1416 = vmulq_f32(*&STACK[0x330], v1414);
    v1417 = vnegq_f32(vdupq_lane_s32(*v1416.i8, 0));
    v1418 = vdupq_lane_s32(*v1414.f32, 1);
    LODWORD(STACK[0x360]) = v1414.i32[1];
    v1419 = vnegq_f32(vdupq_lane_s32(*v1416.i8, 1));
    v1420 = vdupq_laneq_s32(v1414, 2);
    LODWORD(STACK[0x350]) = v1414.i32[2];
    v1421 = vnegq_f32(vdupq_laneq_s32(v1416, 2));
    v1422 = vdupq_laneq_s32(v1414, 3);
    LODWORD(STACK[0x340]) = v1414.i32[3];
    v1423 = vnegq_f32(vdupq_laneq_s32(v1416, 3));
    *&STACK[0x380] = v1409;
    v1424 = vdupq_lane_s32(*&v1409, 0);
    v1425 = 0uLL;
    v1426 = 0uLL;
    v1427 = 0uLL;
    v1428 = 0uLL;
    do
    {
      v1429 = vmlaq_f32(v1417, v1415, *(&STACK[0x1440] + v1407 + 192));
      v1430 = vmlaq_f32(v1417, v1415, *(&STACK[0x1440] + v1407 + 144));
      v1431 = vmlaq_f32(v1417, v1415, *(&STACK[0x1440] + v1407 + 160));
      v1432 = vmlaq_f32(v1419, v1418, *(&STACK[0x1440] + v1407 + 368));
      v1433 = vmlaq_f32(v1419, v1418, *(&STACK[0x1440] + v1407 + 352));
      v1434 = vmlaq_f32(v1419, v1418, *(&STACK[0x1440] + v1407 + 336));
      v1435 = vmlaq_f32(v1419, v1418, *(&STACK[0x1440] + v1407 + 384));
      v1436 = vmlaq_f32(v1417, v1415, *(&STACK[0x1440] + v1407 + 176));
      v1437 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1407 + 560));
      v1438 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1407 + 544));
      v1439 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1407 + 528));
      v1440 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1407 + 576));
      v1441 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1407 + 768));
      v1442 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1407 + 720));
      v1443 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1407 + 736));
      v1444 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1407 + 752));
      v1445 = vmulq_f32(v1435, v1435);
      v1446 = vmulq_f32(v1434, v1434);
      v1447 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1433, v1433), v1431, v1431), v1438, v1438), v1443, v1443);
      v1448 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(v1445, v1429, v1429), v1440, v1440), v1441, v1441));
      v1449 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(v1446, v1430, v1430), v1439, v1439), v1442, v1442));
      v1450 = vcgtq_f32(v1424, v1447);
      v1451 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1432, v1432), v1436, v1436), v1437, v1437), v1444, v1444));
      v1452 = (&STACK[0x440] + v1407);
      *v1452 = v1449;
      v1452[1] = v1450;
      v1452[2] = v1451;
      v1452[3] = v1448;
      v1427 = vsubq_s32(v1427, v1451);
      v1426 = vsubq_s32(v1426, v1450);
      v1425 = vsubq_s32(v1425, v1449);
      v1428 = vsubq_s32(v1428, v1448);
      v1407 += 64;
    }

    while (v1407 != 192);
    v1453 = vaddq_s32(vaddq_s32(v1425, v1427), vaddq_s32(v1426, v1428));
    v1453.i64[0] = vpaddq_s32(v1453, v1453).u64[0];
    v1454 = vpadd_s32(*v1453.i8, *v1453.i8).u8[0];
    v1455 = *&STACK[0x1C60];
    v1456 = vmulq_f32(v1414, vsubq_f32(*&STACK[0x1C60], *&STACK[0x330]));
    v1457 = vmulq_f32(v1456, v1456);
    v1457.i64[0] = vpaddq_f32(v1457, v1457).u64[0];
    v1458 = vpadd_f32(*v1457.f32, *v1457.f32).f32[0];
    if (v1458 >= COERCE_FLOAT(*&STACK[0x380]))
    {
      v1459 = v1454;
    }

    else
    {
      v1459 = v1454 + 1;
    }

    if (v1458 >= COERCE_FLOAT(*&STACK[0x380]))
    {
      v1460 = 0;
    }

    else
    {
      v1460 = -1;
    }

    v5 = v4102;
    *&STACK[0x370] = v1455;
    if (v1459 > 1u)
    {
      v1461 = vcltzq_s32(*&STACK[0x440]);
      v1462 = vcltzq_s32(*&STACK[0x450]);
      v1463 = vcltzq_s32(*&STACK[0x460]);
      v1464 = vcltzq_s32(*&STACK[0x470]);
      v1465 = vandq_s8(v1464, *&STACK[0x1500]);
      v1466 = vandq_s8(v1463, *&STACK[0x14F0]);
      v1467 = vandq_s8(v1462, *&STACK[0x14E0]);
      v1468 = vandq_s8(v1461, *&STACK[0x14D0]);
      v1469 = vandq_s8(*&STACK[0x15C0], v1464);
      v1470 = vandq_s8(*&STACK[0x15B0], v1463);
      v1471 = vandq_s8(*&STACK[0x15A0], v1462);
      v1472 = vandq_s8(*&STACK[0x1590], v1461);
      v1473 = vandq_s8(*&STACK[0x1680], v1464);
      v1474 = vandq_s8(*&STACK[0x1670], v1463);
      v1475 = vandq_s8(*&STACK[0x1660], v1462);
      v1476 = vandq_s8(*&STACK[0x1650], v1461);
      v1477 = vandq_s8(*&STACK[0x1740], v1464);
      v1478 = vandq_s8(*&STACK[0x1730], v1463);
      v1479 = vandq_s8(*&STACK[0x1720], v1462);
      v1480 = vandq_s8(*&STACK[0x1710], v1461);
      v1481 = &STACK[0x1750];
      for (i = 1; i != 3; ++i)
      {
        v1483 = (&STACK[0x440] + 8 * i);
        v1484 = vcltzq_s32(v1483[3]);
        v1485 = vcltzq_s32(v1483[2]);
        v1486 = vcltzq_s32(v1483[1]);
        v1487 = vcltzq_s32(*v1483);
        v1465 = vaddq_f32(v1465, vandq_s8(v1484, *(v1481 - 33)));
        v1466 = vaddq_f32(v1466, vandq_s8(v1485, *(v1481 - 34)));
        v1467 = vaddq_f32(v1467, vandq_s8(v1486, *(v1481 - 35)));
        v1468 = vaddq_f32(v1468, vandq_s8(v1487, *(v1481 - 36)));
        v1469 = vaddq_f32(v1469, vandq_s8(*(v1481 - 21), v1484));
        v1470 = vaddq_f32(v1470, vandq_s8(*(v1481 - 22), v1485));
        v1471 = vaddq_f32(v1471, vandq_s8(*(v1481 - 23), v1486));
        v1472 = vaddq_f32(v1472, vandq_s8(*(v1481 - 24), v1487));
        v1473 = vaddq_f32(v1473, vandq_s8(*(v1481 - 9), v1484));
        v1474 = vaddq_f32(v1474, vandq_s8(*(v1481 - 10), v1485));
        v1475 = vaddq_f32(v1475, vandq_s8(*(v1481 - 11), v1486));
        v1476 = vaddq_f32(v1476, vandq_s8(*(v1481 - 12), v1487));
        v1489 = *(v1481 + 2);
        v1488 = *(v1481 + 3);
        v1491 = *v1481;
        v1490 = *(v1481 + 1);
        v1481 += 8;
        v1477 = vaddq_f32(v1477, vandq_s8(v1488, v1484));
        v1478 = vaddq_f32(v1478, vandq_s8(v1489, v1485));
        v1479 = vaddq_f32(v1479, vandq_s8(v1490, v1486));
        v1480 = vaddq_f32(v1480, vandq_s8(v1491, v1487));
      }

      v1448 = vandq_s8(vdupq_n_s32(v1460), v1455);
      v1423 = vaddq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1468, v1466), vaddq_f32(v1467, v1465)), vaddq_f32(vaddq_f32(v1472, v1470), vaddq_f32(v1471, v1469))), vpaddq_f32(vaddq_f32(vaddq_f32(v1476, v1474), vaddq_f32(v1475, v1473)), vaddq_f32(vaddq_f32(v1480, v1478), vaddq_f32(v1479, v1477)))), v1448);
      *&STACK[0x330] = vmulq_n_f32(v1423, ReciprocalTable[v1459]);
    }

    v1492 = *&STACK[0x390];
    v1493 = 0;
    v1423.f32[0] = v1414.f32[0] * COERCE_FLOAT(*&STACK[0x390]);
    v1494 = vdupq_lane_s32(*v1423.f32, 0);
    v1495 = vnegq_f32(v1494);
    v1494.f32[0] = vmuls_lane_f32(*&STACK[0x360], *&STACK[0x390], 1);
    v1496 = vdupq_lane_s32(*v1494.f32, 0);
    v1448.f32[0] = vmuls_lane_f32(*&STACK[0x350], *&STACK[0x390], 2);
    v1497 = vdupq_lane_s32(*v1448.f32, 0);
    v1498 = vnegq_f32(v1496);
    v1499 = vnegq_f32(v1497);
    *&STACK[0x390] = *&STACK[0x390];
    v1496.f32[0] = vmuls_lane_f32(*&STACK[0x340], v1492, 3);
    v1500 = vnegq_f32(vdupq_lane_s32(*v1496.f32, 0));
    v1501 = 0uLL;
    v1502 = 0uLL;
    v1503 = 0uLL;
    v1504 = 0uLL;
    do
    {
      v1505 = vmlaq_f32(v1495, v1415, *(&STACK[0x1440] + v1493 + 192));
      v1506 = vmlaq_f32(v1495, v1415, *(&STACK[0x1440] + v1493 + 144));
      v1507 = vmlaq_f32(v1495, v1415, *(&STACK[0x1440] + v1493 + 160));
      v1508 = vmlaq_f32(v1498, v1418, *(&STACK[0x1440] + v1493 + 368));
      v1509 = vmlaq_f32(v1498, v1418, *(&STACK[0x1440] + v1493 + 352));
      v1510 = vmlaq_f32(v1498, v1418, *(&STACK[0x1440] + v1493 + 336));
      v1511 = vmlaq_f32(v1498, v1418, *(&STACK[0x1440] + v1493 + 384));
      v1512 = vmlaq_f32(v1495, v1415, *(&STACK[0x1440] + v1493 + 176));
      v1513 = vmlaq_f32(v1499, v1420, *(&STACK[0x1440] + v1493 + 560));
      v1514 = vmlaq_f32(v1499, v1420, *(&STACK[0x1440] + v1493 + 544));
      v1515 = vmlaq_f32(v1499, v1420, *(&STACK[0x1440] + v1493 + 528));
      v1516 = vmlaq_f32(v1499, v1420, *(&STACK[0x1440] + v1493 + 576));
      v1517 = vmlaq_f32(v1500, v1422, *(&STACK[0x1440] + v1493 + 768));
      v1518 = vmlaq_f32(v1500, v1422, *(&STACK[0x1440] + v1493 + 720));
      v1519 = vmlaq_f32(v1500, v1422, *(&STACK[0x1440] + v1493 + 736));
      v1520 = vmlaq_f32(v1500, v1422, *(&STACK[0x1440] + v1493 + 752));
      v1521 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1511, v1511), v1505, v1505), v1516, v1516), v1517, v1517));
      v1522 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1510, v1510), v1506, v1506), v1515, v1515), v1518, v1518));
      v1523 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1509, v1509), v1507, v1507), v1514, v1514), v1519, v1519));
      v1524 = vcgtq_f32(v1424, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1508, v1508), v1512, v1512), v1513, v1513), v1520, v1520));
      v1525 = (&STACK[0x440] + v1493);
      *v1525 = v1522;
      v1525[1] = v1523;
      v1525[2] = v1524;
      v1525[3] = v1521;
      v1503 = vsubq_s32(v1503, v1524);
      v1502 = vsubq_s32(v1502, v1523);
      v1501 = vsubq_s32(v1501, v1522);
      v1504 = vsubq_s32(v1504, v1521);
      v1493 += 64;
    }

    while (v1493 != 192);
    v1526 = vaddq_s32(vaddq_s32(v1501, v1503), vaddq_s32(v1502, v1504));
    v1526.i64[0] = vpaddq_s32(v1526, v1526).u64[0];
    v1527 = vpadd_s32(*v1526.i8, *v1526.i8).u8[0];
    v1528 = v1527 + v1454;
    v1529 = vmulq_f32(v1414, vsubq_f32(*&STACK[0x370], *&STACK[0x390]));
    v1530 = vmulq_f32(v1529, v1529);
    v1530.i64[0] = vpaddq_f32(v1530, v1530).u64[0];
    if (vpadd_f32(*v1530.f32, *v1530.f32).f32[0] >= COERCE_FLOAT(*&STACK[0x380]))
    {
      v1531 = 0;
    }

    else
    {
      ++v1527;
      v1531 = -1;
    }

    if (v1527 > 1u)
    {
      v1532 = vcltzq_s32(*&STACK[0x440]);
      v1533 = vcltzq_s32(*&STACK[0x450]);
      v1534 = vcltzq_s32(*&STACK[0x460]);
      v1535 = vcltzq_s32(*&STACK[0x470]);
      v1536 = vandq_s8(v1535, *&STACK[0x1500]);
      v1537 = vandq_s8(v1534, *&STACK[0x14F0]);
      v1538 = vandq_s8(v1533, *&STACK[0x14E0]);
      v1539 = vandq_s8(v1532, *&STACK[0x14D0]);
      v1540 = vandq_s8(*&STACK[0x15C0], v1535);
      v1541 = vandq_s8(*&STACK[0x15B0], v1534);
      v1542 = vandq_s8(*&STACK[0x15A0], v1533);
      v1543 = vandq_s8(*&STACK[0x1590], v1532);
      v1544 = vandq_s8(*&STACK[0x1680], v1535);
      v1545 = vandq_s8(*&STACK[0x1670], v1534);
      v1546 = vandq_s8(*&STACK[0x1660], v1533);
      v1547 = vandq_s8(*&STACK[0x1650], v1532);
      v1548 = vandq_s8(*&STACK[0x1740], v1535);
      v1549 = vandq_s8(*&STACK[0x1730], v1534);
      v1550 = vandq_s8(*&STACK[0x1720], v1533);
      v1551 = vandq_s8(*&STACK[0x1710], v1532);
      v1552 = &STACK[0x1750];
      for (j = 1; j != 3; ++j)
      {
        v1554 = (&STACK[0x440] + 8 * j);
        v1555 = vcltzq_s32(v1554[3]);
        v1556 = vcltzq_s32(v1554[2]);
        v1557 = vcltzq_s32(v1554[1]);
        v1558 = vcltzq_s32(*v1554);
        v1536 = vaddq_f32(v1536, vandq_s8(v1555, *(v1552 - 33)));
        v1537 = vaddq_f32(v1537, vandq_s8(v1556, *(v1552 - 34)));
        v1538 = vaddq_f32(v1538, vandq_s8(v1557, *(v1552 - 35)));
        v1539 = vaddq_f32(v1539, vandq_s8(v1558, *(v1552 - 36)));
        v1540 = vaddq_f32(v1540, vandq_s8(*(v1552 - 21), v1555));
        v1541 = vaddq_f32(v1541, vandq_s8(*(v1552 - 22), v1556));
        v1542 = vaddq_f32(v1542, vandq_s8(*(v1552 - 23), v1557));
        v1543 = vaddq_f32(v1543, vandq_s8(*(v1552 - 24), v1558));
        v1544 = vaddq_f32(v1544, vandq_s8(*(v1552 - 9), v1555));
        v1545 = vaddq_f32(v1545, vandq_s8(*(v1552 - 10), v1556));
        v1546 = vaddq_f32(v1546, vandq_s8(*(v1552 - 11), v1557));
        v1547 = vaddq_f32(v1547, vandq_s8(*(v1552 - 12), v1558));
        v1560 = *(v1552 + 2);
        v1559 = *(v1552 + 3);
        v1562 = *v1552;
        v1561 = *(v1552 + 1);
        v1552 += 8;
        v1548 = vaddq_f32(v1548, vandq_s8(v1559, v1555));
        v1549 = vaddq_f32(v1549, vandq_s8(v1560, v1556));
        v1550 = vaddq_f32(v1550, vandq_s8(v1561, v1557));
        v1551 = vaddq_f32(v1551, vandq_s8(v1562, v1558));
      }

      *&STACK[0x390] = vmulq_n_f32(vaddq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1539, v1537), vaddq_f32(v1538, v1536)), vaddq_f32(vaddq_f32(v1543, v1541), vaddq_f32(v1542, v1540))), vpaddq_f32(vaddq_f32(vaddq_f32(v1547, v1545), vaddq_f32(v1546, v1544)), vaddq_f32(vaddq_f32(v1551, v1549), vaddq_f32(v1550, v1548)))), vandq_s8(vdupq_n_s32(v1531), *&STACK[0x370])), ReciprocalTable[v1527]);
    }

    STACK[0x20F0] = WeightInfoForSingleLineSingleWeight_7x7(v1528, v1405);
    if (!LOBYTE(STACK[0x14C6]))
    {
      v1273 = *&STACK[0x330];
      v1272 = *&STACK[0x390];
      goto LABEL_362;
    }

    v1273 = *&STACK[0x330];
    v1563.i32[0] = HIDWORD(*&STACK[0x330]);
    v1272 = *&STACK[0x390];
    if (LOBYTE(STACK[0x14C7]))
    {
      if (v1563.f32[0] != 0.0 && v1272.f32[3] != 0.0)
      {
        v1567 = vsubq_f32(v1272, v1273);
        v1564.i32[0] = v1567.i32[3];
        if (v1567.f32[3] == 0.0)
        {
          if (LOBYTE(STACK[0x14C6]) == 48)
          {
            v1273 = 0uLL;
            goto LABEL_362;
          }

          v1565.i64[0] = 0x3F0000003FLL;
          v1565.i64[1] = 0x3F0000003FLL;
          v1273 = vnegq_f32(v1565);
        }

        v1565.i64[0] = 0;
        v1664 = vdupq_lane_s32(*&vcgtq_f32(v1565, v1564), 0);
        v1665 = vbslq_s8(v1664, vnegq_f32(v1567), v1567);
        v1666 = vbslq_s8(v1664, v1272, v1273);
        v1566.f32[0] = v1666.f32[3] / v1665.f32[3];
        v1667 = vmlsq_lane_f32(v1666, v1665, v1566, 0);
        v1665.f32[0] = -*&STACK[0x320];
        v1566.f32[0] = *&STACK[0x320] + 1.0;
        if ((vminvq_u32(vandq_s8(vcgtq_f32(v1667, vdupq_lane_s32(*v1665.f32, 0)), vcgtq_f32(vdupq_lane_s32(v1566, 0), v1667))) & 0x80000000) != 0)
        {
          v1272 = vbslq_s8(v1664, v1273, v1272);
          v1273 = vminnmq_f32(vmaxnmq_f32(v1667, 0), *&STACK[0x310]);
        }

        else
        {
          v1668 = *(&STACK[0x1950] + STACK[0x300]);
          v1669 = *(&STACK[0x1950] + v1403);
          v1670 = v1668;
          v1670.i32[3] = 0;
          v1671 = v1669;
          v1671.i32[3] = 0;
          v1672 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v1669, v1668)), 3)), 0x1FuLL));
          v1272 = vbslq_s8(v1672, v1669, v1671);
          v1273 = vbslq_s8(v1672, v1670, v1668);
        }
      }

      goto LABEL_362;
    }

LABEL_315:
    v1568 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v1272, 3), v1563), 0);
    v1272 = vandq_s8(v1272, v1568);
    v1273 = vbicq_s8(v1273, v1568);
    goto LABEL_362;
  }

  if (LOBYTE(STACK[0x14C8]))
  {
    v1251 = WeightInfoForSingleLineSingleWeight_7x7(2, 2);
    v1252 = 0;
    STACK[0x20F0] = v1251;
    v1253.i64[0] = 0x7F0000007FLL;
    v1253.i64[1] = 0x7F0000007FLL;
    v1254 = vnegq_f32(v1253);
    v1255 = v1254;
    v1256 = v1254;
    v1257 = v1254;
    v1258.i64[0] = 0x7F0000007FLL;
    v1258.i64[1] = 0x7F0000007FLL;
    v1259.i64[0] = 0x7F0000007FLL;
    v1259.i64[1] = 0x7F0000007FLL;
    v1260.i64[0] = 0x7F0000007FLL;
    v1260.i64[1] = 0x7F0000007FLL;
    do
    {
      v1262 = *(&STACK[0x17D0] + v1252 + 32);
      v1261 = *(&STACK[0x17D0] + v1252 + 48);
      v1264 = *(&STACK[0x17D0] + v1252);
      v1263 = *(&STACK[0x17D0] + v1252 + 16);
      v1254 = vminnmq_f32(v1264, v1254);
      v1255 = vminnmq_f32(v1263, v1255);
      v1256 = vminnmq_f32(v1262, v1256);
      v1257 = vminnmq_f32(v1261, v1257);
      v1253 = vmaxnmq_f32(v1264, v1253);
      v1258 = vmaxnmq_f32(v1263, v1258);
      v1259 = vmaxnmq_f32(v1262, v1259);
      v1260 = vmaxnmq_f32(v1261, v1260);
      v1252 += 64;
    }

    while (v1252 != 192);
    v1265 = vminnmq_f32(vminnmq_f32(v1254, v1256), vminnmq_f32(v1255, v1257));
    v1266 = vmaxnmq_f32(vmaxnmq_f32(v1253, v1259), vmaxnmq_f32(v1258, v1260));
    v1267 = vminnmq_f32(v1265, vextq_s8(v1265, v1265, 8uLL));
    v1268 = vmaxnmq_f32(v1266, vextq_s8(v1266, v1266, 8uLL));
    v1269 = vdupq_lane_s32(*&STACK[0x1C70], 0);
    v1270 = vminnmq_f32(vminnmq_f32(v1267, vrev64q_s32(v1267)), v1269);
    v1271 = vmaxnmq_f32(vmaxnmq_f32(v1268, vrev64q_s32(v1268)), v1269);
    v1270.i32[3] = 0;
    v1271.i32[3] = 0;
    v1272 = vorrq_s8(v1271, xmmword_298492170);
    v1273 = vorrq_s8(v1270, xmmword_298492170);
    goto LABEL_362;
  }

  if (STACK[0x1460])
  {
    v1350 = *STACK[0x1460];
    v1350.i32[3] = 0;
  }

  else
  {
    v1350 = xmmword_2984959B0;
  }

  v1569 = vmulq_f32(v1220, v1350);
  *v1569.i8 = vadd_f32(*v1569.i8, *&vextq_s8(v1569, v1569, 8uLL));
  v1219.f32[0] = vaddv_f32(*v1569.i8);
  v1570 = vdupq_lane_s32(vadd_f32(*v1569.i8, vdup_lane_s32(*v1569.i8, 1)), 0);
  v1571 = v1220.f32[3];
  v1572 = vdupq_laneq_s32(v1220, 3);
  v1573 = xmmword_298495630;
  v1574 = xmmword_298495610;
  v1575 = xmmword_298495620;
  v1576.i64[0] = -1;
  v1576.i64[1] = -1;
  v1577.i64[0] = 0x7F0000007FLL;
  v1577.i64[1] = 0x7F0000007FLL;
  v1578.i64[0] = 0x1000000010;
  v1578.i64[1] = 0x1000000010;
  v1579.i64[0] = 0x7F0000007FLL;
  v1579.i64[1] = 0x7F0000007FLL;
  v1580 = xmmword_298495600;
  v1581 = &STACK[0x1890];
  v1582 = 3;
  v1583 = &STACK[0x1890];
  v1584.i64[0] = 0x7F0000007FLL;
  v1584.i64[1] = 0x7F0000007FLL;
  v1585.i64[0] = 0x7F0000007FLL;
  v1585.i64[1] = 0x7F0000007FLL;
  v1586.i64[0] = 0x7F0000007FLL;
  v1586.i64[1] = 0x7F0000007FLL;
  v1587.i64[0] = -1;
  v1587.i64[1] = -1;
  v1588.i64[0] = -1;
  v1588.i64[1] = -1;
  v1589.i64[0] = -1;
  v1589.i64[1] = -1;
  do
  {
    v1590 = vsubq_f32(v1583[-9], v1570);
    v1591 = vsubq_f32(v1583[-12], v1570);
    v1592 = vsubq_f32(v1583[-11], v1570);
    v1593 = vsubq_f32(v1583[-10], v1570);
    v1594 = vsubq_f32(v1583[-22], v1572);
    v1595 = vsubq_f32(v1583[-23], v1572);
    v1596 = vsubq_f32(v1583[-24], v1572);
    v1597 = vsubq_f32(v1583[-21], v1572);
    v1598 = vmlaq_f32(vmulq_f32(v1594, v1594), v1593, v1593);
    v1599 = vmlaq_f32(vmulq_f32(v1595, v1595), v1592, v1592);
    v1600 = vmlaq_f32(vmulq_f32(v1596, v1596), v1591, v1591);
    v1601 = vmlaq_f32(vmulq_f32(v1597, v1597), v1590, v1590);
    if (LOBYTE(STACK[0x14C7]))
    {
      v1598 = vbslq_s8(vcltzq_s32(v1583[2]), v1577, v1598);
      v1599 = vbslq_s8(vcltzq_s32(v1583[1]), v1577, v1599);
      v1600 = vbslq_s8(vcltzq_s32(*v1583), v1577, v1600);
      v1601 = vbslq_s8(vcltzq_s32(v1583[3]), v1577, v1601);
    }

    v1576 = vbslq_s8(vcgtq_f32(v1600, v1579), v1580, v1576);
    v1587 = vbslq_s8(vcgtq_f32(v1599, v1584), v1575, v1587);
    v1588 = vbslq_s8(vcgtq_f32(v1598, v1585), v1574, v1588);
    v1589 = vbslq_s8(vcgtq_f32(v1601, v1586), v1573, v1589);
    v1579 = vmaxnmq_f32(v1579, v1600);
    v1584 = vmaxnmq_f32(v1584, v1599);
    v1585 = vmaxnmq_f32(v1585, v1598);
    v1586 = vmaxnmq_f32(v1586, v1601);
    v1580 = vaddq_s32(v1580, v1578);
    v1575 = vaddq_s32(v1575, v1578);
    v1574 = vaddq_s32(v1574, v1578);
    v1583 += 4;
    v1573 = vaddq_s32(v1573, v1578);
    --v1582;
  }

  while (v1582);
  v1602 = vmaxnmq_f32(v1579, v1585);
  v1603 = vmaxnmq_f32(v1584, v1586);
  v1604 = vcgtq_f32(v1602, v1603);
  v1605 = vmaxnmq_f32(v1602, v1603);
  v1606 = vbslq_s8(v1604, vbslq_s8(vcgtq_f32(v1579, v1585), v1576, v1588), vbslq_s8(vcgtq_f32(v1584, v1586), v1587, v1589));
  v1607 = vextq_s8(v1605, v1605, 8uLL);
  v1610 = vbslq_s8(vcgtq_f32(v1605, v1607), v1606, vextq_s8(v1606, v1606, 8uLL));
  v1608 = vmaxnmq_f32(v1605, v1607);
  v1609 = vbslq_s8(vcgtq_f32(v1608, vrev64q_s32(v1608)), v1610, vdupq_lane_s32(*v1610.i8, 1)).u32[0];
  v1610.i32[0] = *(&STACK[0x17D0] + v1609);
  v1611 = vdupq_lane_s32(*v1610.i8, 0);
  v1611.i32[3] = *(&STACK[0x1710] + v1609);
  v1612 = *&STACK[0x1C60];
  LODWORD(v1613) = HIDWORD(*&STACK[0x1C60]);
  v1614 = v1613 <= 0.0 && v1222 == 0;
  v1615 = !v1614;
  if (v1614)
  {
    v1617 = v1571;
  }

  else
  {
    v1616 = v1613 != 0.0 || v1222 == 0;
    v1617 = v1571;
    v1618 = ((*(&STACK[0x1710] + v1609) - v1571) * (*(&STACK[0x1710] + v1609) - v1571)) + ((*v1610.i32 - v1219.f32[0]) * (*v1610.i32 - v1219.f32[0]));
    v1610.i32[0] = STACK[0x1C70];
    v1619 = ((v1613 - v1571) * (v1613 - v1571)) + ((*v1610.i32 - v1219.f32[0]) * (*v1610.i32 - v1219.f32[0]));
    if (!v1616)
    {
      v1619 = 0.0;
    }

    if (v1619 > v1618)
    {
      v1611 = vdupq_lane_s32(*v1610.i8, 0);
      v1611.i32[3] = HIDWORD(*&STACK[0x1C60]);
    }
  }

  v1620 = v1609;
  v1219.f32[0] = v1219.f32[0] - *v1611.i32;
  v1621 = vdupq_lane_s32(*v1611.i8, 0);
  v1622 = vdupq_laneq_s32(v1611, 3);
  v1623 = v1617 - *&v1611.i32[3];
  v1624 = vdupq_lane_s32(*v1219.f32, 0);
  v1625 = xmmword_298495630;
  v1626 = xmmword_298495610;
  v1627 = xmmword_298495620;
  v1628.i64[0] = -1;
  v1628.i64[1] = -1;
  v1629.i64[0] = 0x7F0000007FLL;
  v1629.i64[1] = 0x7F0000007FLL;
  v1630.i64[0] = 0x1000000010;
  v1630.i64[1] = 0x1000000010;
  v1631.i64[0] = 0x7F0000007FLL;
  v1631.i64[1] = 0x7F0000007FLL;
  v1632 = xmmword_298495600;
  v1633 = 3;
  v1634.i64[0] = 0x7F0000007FLL;
  v1634.i64[1] = 0x7F0000007FLL;
  v1635.i64[0] = 0x7F0000007FLL;
  v1635.i64[1] = 0x7F0000007FLL;
  v1636.i64[0] = 0x7F0000007FLL;
  v1636.i64[1] = 0x7F0000007FLL;
  v1637.i64[0] = -1;
  v1637.i64[1] = -1;
  v1638.i64[0] = -1;
  v1638.i64[1] = -1;
  v1639.i64[0] = -1;
  v1639.i64[1] = -1;
  do
  {
    v1640 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1581[-22], v1622), v1623), v1624, vsubq_f32(v1581[-10], v1621));
    v1641 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1581[-23], v1622), v1623), v1624, vsubq_f32(v1581[-11], v1621));
    v1642 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1581[-24], v1622), v1623), v1624, vsubq_f32(v1581[-12], v1621));
    v1643 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1581[-21], v1622), v1623), v1624, vsubq_f32(v1581[-9], v1621));
    if (LOBYTE(STACK[0x14C7]))
    {
      v1640 = vbslq_s8(vcltzq_s32(v1581[2]), v1629, v1640);
      v1641 = vbslq_s8(vcltzq_s32(v1581[1]), v1629, v1641);
      v1642 = vbslq_s8(vcltzq_s32(*v1581), v1629, v1642);
      v1643 = vbslq_s8(vcltzq_s32(v1581[3]), v1629, v1643);
    }

    v1628 = vbslq_s8(vcgtq_f32(v1642, v1631), v1632, v1628);
    v1637 = vbslq_s8(vcgtq_f32(v1641, v1634), v1627, v1637);
    v1638 = vbslq_s8(vcgtq_f32(v1640, v1635), v1626, v1638);
    v1639 = vbslq_s8(vcgtq_f32(v1643, v1636), v1625, v1639);
    v1631 = vmaxnmq_f32(v1631, v1642);
    v1634 = vmaxnmq_f32(v1634, v1641);
    v1635 = vmaxnmq_f32(v1635, v1640);
    v1636 = vmaxnmq_f32(v1636, v1643);
    v1632 = vaddq_s32(v1632, v1630);
    v1627 = vaddq_s32(v1627, v1630);
    v1626 = vaddq_s32(v1626, v1630);
    v1581 += 4;
    v1625 = vaddq_s32(v1625, v1630);
    --v1633;
  }

  while (v1633);
  v1644 = vmaxnmq_f32(v1631, v1635);
  v1645 = vmaxnmq_f32(v1634, v1636);
  v1646 = vbslq_s8(vcgtq_f32(v1631, v1635), v1628, v1638);
  v1647 = vcgtq_f32(v1644, v1645);
  v1648 = vmaxnmq_f32(v1644, v1645);
  v1649 = vbslq_s8(v1647, v1646, vbslq_s8(vcgtq_f32(v1634, v1636), v1637, v1639));
  v1650 = vextq_s8(v1648, v1648, 8uLL);
  v1651 = vbslq_s8(vcgtq_f32(v1648, v1650), v1649, vextq_s8(v1649, v1649, 8uLL));
  v1652 = vmaxnmq_f32(v1648, v1650);
  v1654 = vbslq_s8(vcgtq_f32(v1652, vrev64q_s32(v1652)), v1651, vdupq_lane_s32(*v1651.i8, 1));
  *&STACK[0x380] = v1654;
  v1653 = v1654.i32[0];
  v1654.i32[0] = *(&STACK[0x17D0] + v1654.i32[0]);
  v1656 = vdupq_lane_s32(*v1654.i8, 0);
  v1655 = *(&STACK[0x1710] + v1653);
  *&v1656.i32[3] = v1655;
  *&STACK[0x330] = v1611;
  if (v1615)
  {
    v1657 = v1613 != 0.0 || v1222 == 0;
    v1658 = (v1623 * (v1655 - *&v1611.i32[3])) + ((*v1654.i32 - *v1611.i32) * v1219.f32[0]);
    v1659 = ((v1613 - *&v1611.i32[3]) * (v1613 - *&v1611.i32[3])) + ((*&STACK[0x1C70] - *v1611.i32) * (*&STACK[0x1C70] - *v1611.i32));
    if (!v1657)
    {
      v1659 = 0.0;
    }

    if (v1659 > v1658)
    {
      v1219.i32[0] = STACK[0x1C70];
      v1656 = vdupq_lane_s32(*v1219.f32, 0);
      v1656.i32[3] = HIDWORD(v1612);
    }
  }

  *&STACK[0x390] = v1656;
  STACK[0x20F0] = WeightInfoForSingleLineSingleWeight_7x7(2, 4);
  if (!LOBYTE(STACK[0x14C6]))
  {
    v1273 = *&STACK[0x330];
    v1272 = *&STACK[0x390];
    goto LABEL_362;
  }

  v1273 = *&STACK[0x330];
  v1563.i32[0] = HIDWORD(*&STACK[0x330]);
  v1272 = *&STACK[0x390];
  if (!LOBYTE(STACK[0x14C7]))
  {
    goto LABEL_315;
  }

  if (v1563.f32[0] != 0.0 && v1272.f32[3] != 0.0)
  {
    v1663 = vsubq_f32(v1272, v1273);
    v1660.i32[0] = v1663.i32[3];
    if (v1663.f32[3] == 0.0)
    {
      if (LOBYTE(STACK[0x14C6]) == 48)
      {
        v1273 = 0uLL;
        goto LABEL_362;
      }

      v1661.i64[0] = 0x3F0000003FLL;
      v1661.i64[1] = 0x3F0000003FLL;
      v1273 = vnegq_f32(v1661);
    }

    v1661.i64[0] = 0;
    v2711 = vdupq_lane_s32(*&vcgtq_f32(v1661, v1660), 0);
    v2712 = vbslq_s8(v2711, vnegq_f32(v1663), v1663);
    v2713 = vbslq_s8(v2711, v1272, v1273);
    v1662.f32[0] = v2713.f32[3] / v2712.f32[3];
    v2714 = vmlsq_lane_f32(v2713, v2712, v1662, 0);
    if ((vminvq_u32(vandq_s8(vcgtq_f32(v2714, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v2714))) & 0x80000000) != 0)
    {
      v1272 = vbslq_s8(v2711, v1273, v1272);
      __asm { FMOV            V1.4S, #1.0 }

      v1273 = vminnmq_f32(vmaxnmq_f32(v2714, 0), _Q1);
    }

    else
    {
      v2715 = *&STACK[0x380];
      v2716 = &STACK[0x17D0] + v1620;
      v1273 = vld1q_dup_f32(v2716);
      v1273.i32[3] = *(&STACK[0x1710] + v1620);
      v2717 = &STACK[0x17D0] + v2715;
      v1272 = vld1q_dup_f32(v2717);
      v1272.i32[3] = *(&STACK[0x1710] + v2715);
    }
  }

LABEL_362:
  *&STACK[0x2210] = 0u;
  *&STACK[0x2200] = 0u;
  *&STACK[0x21F0] = 0u;
  v1673 = STACK[0x1460];
  *&STACK[0x450] = v1272;
  *&STACK[0x440] = v1273;
  FindColorVectors(&STACK[0x440], v1673, 1, 375, &STACK[0x20F0], &STACK[0x21F0]);
  v1674 = STACK[0x20F0];
  v1675 = (STACK[0x20F0] >> 13) & 0xF;
  v1676 = STACK[0x20F0] >> 27;
  v1677 = *&STACK[0x2200];
  v1678.i32[0] = HIDWORD(*&STACK[0x2200]);
  v1679 = 0.0;
  if (fabsf(*v1678.i32) >= 0.0039062)
  {
    v1679 = vrecpes_f32(*v1678.i32);
  }

  v1680 = STACK[0x2210];
  if (v1675 > 5)
  {
    if (STACK[0x1460])
    {
      v4088 = STACK[0x2210];
      v1696 = 0;
      _Q5 = vandq_s8(vcgezq_s32(gNormalMasks[(v1674 >> 13) & 0xF]), *STACK[0x1460]);
      v1698 = vdupq_lane_s32(*&STACK[0x21F0], 0);
      v1699 = vdupq_lane_s32(*&STACK[0x21F0], 1);
      v1700 = vdupq_laneq_s32(*&STACK[0x21F0], 2);
      v4080 = *&STACK[0x21F0];
      v4084 = *&STACK[0x2200];
      v1701 = vdupq_laneq_s32(*&STACK[0x21F0], 3);
      v1702 = vmulq_f32(v1677, _Q5);
      v1703 = vmulq_f32(v1677, v1702);
      v1704 = vaddv_f32(vadd_f32(*v1703.i8, *&vextq_s8(v1703, v1703, 8uLL)));
      v1705 = fabsf(v1704);
      v1706 = vdupq_lane_s32(*v1702.f32, 0);
      v1707 = vdupq_laneq_s32(v1702, 2);
      v1708 = vdupq_laneq_s32(v1702, 3);
      v1709 = SLOBYTE(STACK[0x14C6]);
      do
      {
        v1710 = (&STACK[0x1440] + v1696);
        v1711 = vsubq_f32(*(&STACK[0x1440] + v1696 + 176), v1698);
        v1712 = vsubq_f32(*(&STACK[0x1440] + v1696 + 160), v1698);
        v1713 = vsubq_f32(*(&STACK[0x1440] + v1696 + 144), v1698);
        v1714 = vsubq_f32(*(&STACK[0x1440] + v1696 + 192), v1698);
        v1715 = vsubq_f32(*(&STACK[0x1440] + v1696 + 368), v1699);
        v1716 = vsubq_f32(*(&STACK[0x1440] + v1696 + 352), v1699);
        v1717 = vsubq_f32(*(&STACK[0x1440] + v1696 + 336), v1699);
        v1718 = vsubq_f32(*(&STACK[0x1440] + v1696 + 384), v1699);
        v1719 = vsubq_f32(*(&STACK[0x1440] + v1696 + 560), v1700);
        v1720 = vsubq_f32(*(&STACK[0x1440] + v1696 + 544), v1700);
        v1721 = vsubq_f32(*(&STACK[0x1440] + v1696 + 528), v1700);
        v1722 = vsubq_f32(*(&STACK[0x1440] + v1696 + 576), v1700);
        v1723 = vsubq_f32(*(&STACK[0x1440] + v1696 + 752), v1701);
        v1724 = vsubq_f32(*(&STACK[0x1440] + v1696 + 736), v1701);
        v1725 = vsubq_f32(*(&STACK[0x1440] + v1696 + 720), v1701);
        v1726 = vsubq_f32(*(&STACK[0x1440] + v1696 + 768), v1701);
        v1727 = vrecpes_f32(v1704);
        if (v1705 < 0.000015259)
        {
          v1727 = 0.0;
        }

        v1728 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1716, *v1702.f32, 1), v1706, v1712), v1707, v1720), v1708, v1724);
        v1729 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1718, *v1702.f32, 1), v1706, v1714), v1707, v1722), v1708, v1726);
        v1730 = vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1715, *v1702.f32, 1), v1706, v1711), v1707, v1719), v1708, v1723), v1727);
        __asm { FMOV            V31.4S, #1.0 }

        v1732 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1717, *v1702.f32, 1), v1706, v1713), v1707, v1721), v1708, v1725), v1727), _Q31), 0);
        v1733 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v1728, v1727), _Q31), 0);
        v1734 = vmaxnmq_f32(vminnmq_f32(v1730, _Q31), 0);
        v1735 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v1729, v1727), _Q31), 0);
        if (v1709 >= 1)
        {
          v1734 = vbslq_s8(vcltzq_s32(v1710[71]), vmulq_n_f32(v1723, v1679), v1734);
          v1733 = vbslq_s8(vcltzq_s32(v1710[70]), vmulq_n_f32(v1724, v1679), v1733);
          v1732 = vbslq_s8(vcltzq_s32(v1710[69]), vmulq_n_f32(v1725, v1679), v1732);
          v1735 = vbslq_s8(vcltzq_s32(v1710[72]), vmulq_n_f32(v1726, v1679), v1735);
        }

        v1736 = (&STACK[0x22F0] + v1696);
        *v1736 = v1732;
        v1736[1] = v1733;
        v1736[2] = v1734;
        v1736[3] = v1735;
        v1696 += 64;
      }

      while (v1696 != 192);
      v1683 = v4080;
      _Q2 = vsubq_f32(*&STACK[0x1C60], v4080);
      _S7 = _Q2.i32[2];
      v1739 = vaddv_f32(vadd_f32(*v1702.f32, *&vextq_s8(v1702, v1702, 8uLL)));
      if (fabsf(v1739) >= 0.0039062)
      {
        v1678.i32[0] = _Q5.i32[3];
        v1680 = v4088;
        v1677 = v4084;
      }

      else
      {
        v1677 = v4084;
        _Q5 = vmulq_f32(v1677, v1677);
        v1739 = vaddv_f32(vadd_f32(*_Q5.f32, *&vextq_s8(_Q5, _Q5, 8uLL)));
        _Q5.i32[2] = v4084.i32[2];
        v1680 = v4088;
      }

      __asm { FMLA            S2, S7, V5.S[2] }

      v1801 = fminf(vrecpes_f32(v1739) * (_Q2.f32[0] + (_Q2.f32[3] * *v1678.i32)), 1.0);
      v1678.i64[0] = 0;
      _Q2.f32[0] = fmaxf(v1801, 0.0);
      if (fabsf(COERCE_FLOAT(HIDWORD(*&STACK[0x1C60]))) >= 0.0039216)
      {
        v1802 = _Q2.f32[0];
      }

      else
      {
        v1802 = v1679 * _Q2.f32[3];
      }

      *&STACK[0x23B0] = v1802;
      v1690 = v1676;
      if (v1676)
      {
        *v1678.i32 = vrecpes_f32(v1690);
      }

      for (k = 0; k != 192; k += 64)
      {
        v1804 = (&STACK[0x22F0] + k);
        v1805 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k + 48), v1690)), *v1678.i32);
        v1806 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k + 16), v1690)), *v1678.i32);
        v1807 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k + 32), v1690)), *v1678.i32);
        *v1804 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k), v1690)), *v1678.i32);
        v1804[1] = v1806;
        v1804[2] = v1807;
        v1804[3] = v1805;
      }
    }

    else
    {
      v1764 = 0;
      v1683 = *&STACK[0x21F0];
      v1765 = vdupq_lane_s32(*&STACK[0x21F0], 0);
      v1766 = vdupq_lane_s32(*&STACK[0x21F0], 1);
      v1767 = vdupq_laneq_s32(*&STACK[0x21F0], 2);
      v1768 = vdupq_laneq_s32(*&STACK[0x21F0], 3);
      v1769 = vmulq_f32(v1677, v1677);
      v1770 = vrecpes_f32(vaddv_f32(vadd_f32(*v1769.i8, *&vextq_s8(v1769, v1769, 8uLL))));
      v1771 = vdupq_lane_s32(*v1677.f32, 0);
      v1772 = vdupq_laneq_s32(v1677, 2);
      v1773 = vdupq_laneq_s32(v1677, 3);
      v1774 = SLOBYTE(STACK[0x14C6]);
      do
      {
        v1775 = (&STACK[0x1440] + v1764);
        v1776 = vsubq_f32(*(&STACK[0x1440] + v1764 + 768), v1768);
        v1777 = vsubq_f32(*(&STACK[0x1440] + v1764 + 752), v1768);
        v1778 = vsubq_f32(*(&STACK[0x1440] + v1764 + 736), v1768);
        v1779 = vsubq_f32(*(&STACK[0x1440] + v1764 + 720), v1768);
        __asm { FMOV            V26.4S, #1.0 }

        v1781 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1764 + 336), v1766), *v1677.f32, 1), v1771, vsubq_f32(*(&STACK[0x1440] + v1764 + 144), v1765)), v1772, vsubq_f32(*(&STACK[0x1440] + v1764 + 528), v1767)), v1773, v1779), v1770), _Q26), 0);
        v1782 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1764 + 352), v1766), *v1677.f32, 1), v1771, vsubq_f32(*(&STACK[0x1440] + v1764 + 160), v1765)), v1772, vsubq_f32(*(&STACK[0x1440] + v1764 + 544), v1767)), v1773, v1778), v1770), _Q26), 0);
        v1783 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1764 + 368), v1766), *v1677.f32, 1), v1771, vsubq_f32(*(&STACK[0x1440] + v1764 + 176), v1765)), v1772, vsubq_f32(*(&STACK[0x1440] + v1764 + 560), v1767)), v1773, v1777), v1770), _Q26), 0);
        v1784 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1764 + 384), v1766), *v1677.f32, 1), v1771, vsubq_f32(*(&STACK[0x1440] + v1764 + 192), v1765)), v1772, vsubq_f32(*(&STACK[0x1440] + v1764 + 576), v1767)), v1773, v1776), v1770), _Q26), 0);
        if (v1774 >= 1)
        {
          v1785 = v1775[71];
          v1786 = v1775[69];
          v1787 = v1775[72];
          v1788 = v1775[70];
          if ((vmaxvq_u32(vorrq_s8(vorrq_s8(v1786, v1785), vorrq_s8(v1788, v1787))) & 0x80000000) != 0)
          {
            v1781 = vbslq_s8(vcltzq_s32(v1786), vmulq_n_f32(v1779, v1679), v1781);
            v1782 = vbslq_s8(vcltzq_s32(v1788), vmulq_n_f32(v1778, v1679), v1782);
            v1783 = vbslq_s8(vcltzq_s32(v1785), vmulq_n_f32(v1777, v1679), v1783);
            v1784 = vbslq_s8(vcltzq_s32(v1787), vmulq_n_f32(v1776, v1679), v1784);
          }
        }

        v1789 = (&STACK[0x22F0] + v1764);
        *v1789 = v1781;
        v1789[1] = v1782;
        v1789[2] = v1783;
        v1789[3] = v1784;
        v1764 += 64;
      }

      while (v1764 != 192);
      v1790 = 0;
      v1791 = vsubq_f32(*&STACK[0x1C60], v1683);
      v1792 = vmulq_f32(v1677, v1791);
      *v1792.i32 = fminf(v1770 * vaddv_f32(vadd_f32(*v1792.i8, *&vextq_s8(v1792, v1792, 8uLL))), 1.0);
      v1678.i64[0] = 0;
      v1793 = fmaxf(*v1792.i32, 0.0);
      v1794 = vmuls_lane_f32(v1679, v1791, 3);
      if (fabsf(COERCE_FLOAT(HIDWORD(*&STACK[0x1C60]))) >= 0.0039216)
      {
        v1795 = v1793;
      }

      else
      {
        v1795 = v1794;
      }

      *&STACK[0x23B0] = v1795;
      v1690 = v1676;
      v1796 = vrecpes_f32(v1676);
      if (v1676)
      {
        *v1678.i32 = v1796;
      }

      do
      {
        v1797 = (&STACK[0x22F0] + v1790);
        v1798 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1790 + 48), v1690)), *v1678.i32);
        v1799 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1790 + 16), v1690)), *v1678.i32);
        v1800 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1790 + 32), v1690)), *v1678.i32);
        *v1797 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1790), v1690)), *v1678.i32);
        v1797[1] = v1799;
        v1797[2] = v1800;
        v1797[3] = v1798;
        v1790 += 64;
      }

      while (v1790 != 192);
    }
  }

  else if (v1675 > 3)
  {
    v1740 = 0;
    v1741 = &STACK[0x1890];
    v1742 = (*v1678.i32 * *v1678.i32) + (v1677.f32[0] * v1677.f32[0]);
    _NF = fabsf(v1742) < 0.000015259;
    v1743 = vrecpes_f32(v1742);
    v1683 = *&STACK[0x21F0];
    v1744 = vdupq_lane_s32(*&STACK[0x21F0], 0);
    v1745 = vdupq_laneq_s32(*&STACK[0x21F0], 3);
    if (_NF)
    {
      v1743 = 0.0;
    }

    v1746 = vdupq_lane_s32(*v1677.f32, 0);
    v1747 = SLOBYTE(STACK[0x14C6]);
    do
    {
      v1748 = vsubq_f32(v1741[-21], v1745);
      v1749 = vsubq_f32(v1741[-24], v1745);
      v1750 = vsubq_f32(v1741[-23], v1745);
      v1751 = vsubq_f32(v1741[-22], v1745);
      v1752 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1751, v1677, 3), v1746, vsubq_f32(v1741[-10], v1744)), v1743);
      v1753 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1750, v1677, 3), v1746, vsubq_f32(v1741[-11], v1744)), v1743);
      v1754 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1749, v1677, 3), v1746, vsubq_f32(v1741[-12], v1744)), v1743);
      v1755 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1748, v1677, 3), v1746, vsubq_f32(v1741[-9], v1744)), v1743);
      if (v1747 >= 1)
      {
        v1753 = vbslq_s8(vcltzq_s32(v1741[1]), vmulq_n_f32(v1750, v1679), v1753);
        v1754 = vbslq_s8(vcltzq_s32(*v1741), vmulq_n_f32(v1749, v1679), v1754);
        v1752 = vbslq_s8(vcltzq_s32(v1741[2]), vmulq_n_f32(v1751, v1679), v1752);
        v1755 = vbslq_s8(vcltzq_s32(v1741[3]), vmulq_n_f32(v1748, v1679), v1755);
      }

      __asm { FMOV            V19.4S, #1.0 }

      v1757 = (&STACK[0x22F0] + v1740);
      *v1757 = vminnmq_f32(vmaxnmq_f32(v1754, 0), _Q19);
      v1757[1] = vminnmq_f32(vmaxnmq_f32(v1753, 0), _Q19);
      v1757[2] = vminnmq_f32(vmaxnmq_f32(v1752, 0), _Q19);
      v1757[3] = vminnmq_f32(vmaxnmq_f32(v1755, 0), _Q19);
      v1741 += 4;
      v1740 += 64;
    }

    while (v1740 != 192);
    v1758 = 0;
    *&STACK[0x23B0] = fminf(fmaxf(v1743 * ((*v1678.i32 * (*&STACK[0x1C6C] - v1683.f32[3])) + ((*&STACK[0x1C70] - v1683.f32[0]) * v1677.f32[0])), 0.0), 1.0);
    v1690 = v1676;
    v1759 = vrecpes_f32(v1676);
    if (v1676)
    {
      *v1678.i32 = v1759;
    }

    else
    {
      *v1678.i32 = 0.0;
    }

    do
    {
      v1760 = (&STACK[0x22F0] + v1758);
      v1761 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1758 + 48), v1690)), *v1678.i32);
      v1762 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1758 + 16), v1690)), *v1678.i32);
      v1763 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1758 + 32), v1690)), *v1678.i32);
      *v1760 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1758), v1690)), *v1678.i32);
      v1760[1] = v1762;
      v1760[2] = v1763;
      v1760[3] = v1761;
      v1758 += 64;
    }

    while (v1758 != 192);
  }

  else
  {
    v1681 = 0;
    v1682 = vrecpes_f32(v1677.f32[0]);
    if (fabsf(v1677.f32[0]) < 0.000015259)
    {
      v1682 = 0.0;
    }

    v1683 = *&STACK[0x21F0];
    v1684 = vdupq_lane_s32(*&STACK[0x21F0], 0);
    __asm { FMOV            V3.4S, #1.0 }

    do
    {
      v1686 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1681 + 16), v1684), v1682), 0), _Q3);
      v1687 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1681 + 32), v1684), v1682), 0), _Q3);
      v1678 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1681 + 48), v1684), v1682), 0), _Q3);
      v1688 = (&STACK[0x22F0] + v1681);
      *v1688 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1681), v1684), v1682), 0), _Q3);
      v1688[1] = v1686;
      v1688[2] = v1687;
      v1688[3] = v1678;
      v1681 += 64;
    }

    while (v1681 != 192);
    v1689 = 0;
    *&STACK[0x23B0] = fminf(fmaxf(v1682 * (*&STACK[0x1C70] - v1683.f32[0]), 0.0), 1.0);
    v1690 = v1676;
    v1691 = vrecpes_f32(v1676);
    if (v1676)
    {
      *v1678.i32 = v1691;
    }

    else
    {
      *v1678.i32 = 0.0;
    }

    do
    {
      v1692 = (&STACK[0x22F0] + v1689);
      v1693 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1689 + 48), v1690)), *v1678.i32);
      v1694 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1689 + 16), v1690)), *v1678.i32);
      v1695 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1689 + 32), v1690)), *v1678.i32);
      *v1692 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1689), v1690)), *v1678.i32);
      v1692[1] = v1694;
      v1692[2] = v1695;
      v1692[3] = v1693;
      v1689 += 64;
    }

    while (v1689 != 192);
  }

  v1808 = *v1678.i32 * rintf(v1690 * *&STACK[0x23B0]);
  *&STACK[0x23B0] = v1808;
  v1809 = &STACK[0x1440];
  do
  {
    v1810 = v1809;
    v1809 = v1809[5];
  }

  while (v1809);
  if (STACK[0x1460])
  {
    _Q0 = vmulq_f32(*STACK[0x1460], *&STACK[0x3A0]);
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  v1812 = *(v1810 + 66);
  if (v1812 == 392)
  {
    v4092 = _Q0;
    v1872 = 0;
    v1678.i32[0] = 0;
    v1873 = *&STACK[0x2300];
    v1874 = *&STACK[0x22F0];
    v1875 = *&STACK[0x231C];
    v1876 = *&STACK[0x230C];
    v1877 = *&STACK[0x2338];
    v1878 = *&STACK[0x2328];
    v1879 = *&STACK[0x2354];
    v1880 = *&STACK[0x2344];
    v1881 = vzip1q_s32(*&STACK[0x22F0], vuzp1q_s32(v1874, v1874));
    v1882 = vextq_s8(*&STACK[0x22F0], *&STACK[0x2300], 0xCuLL);
    v1873.i32[3] = STACK[0x2308];
    v1874.i32[0] = HIDWORD(STACK[0x22F0]);
    v1883 = vmlaq_f32(vmulq_f32(v1873, xmmword_298495EF0), xmmword_298495F00, v1882);
    v1884 = vmlaq_f32(vmulq_f32(v1873, xmmword_298495F30), xmmword_298495F40, v1882);
    v1885 = vextq_s8(*&STACK[0x230C], *&STACK[0x231C], 0xCuLL);
    v1886 = vzip1q_s32(*&STACK[0x230C], vuzp1q_s32(v1876, v1876));
    v1876.i32[0] = HIDWORD(STACK[0x230C]);
    v1875.i32[3] = STACK[0x2324];
    v1887 = vmlaq_f32(vmlaq_f32(v1884, xmmword_298495F70, v1885), xmmword_298495F80, v1875);
    v1888 = vmlaq_f32(vmulq_f32(v1875, xmmword_298495FB0), xmmword_298495FC0, v1885);
    v1889 = *&STACK[0x2370];
    v1890 = *&STACK[0x2360];
    v1891 = vextq_s8(*&STACK[0x2328], *&STACK[0x2338], 0xCuLL);
    v1892 = vzip1q_s32(*&STACK[0x2328], vuzp1q_s32(v1878, v1878));
    v1878.i32[0] = HIDWORD(STACK[0x2328]);
    v1877.i32[3] = STACK[0x2340];
    v1893 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1876, xmmword_298495FA0), xmmword_298495FD0, v1886), xmmword_298495FE0, v1892), xmmword_298496010, v1878);
    v1894 = vextq_s8(*&STACK[0x2344], *&STACK[0x2354], 0xCuLL);
    v1879.i32[3] = STACK[0x235C];
    v1895 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1877, xmmword_298496030), xmmword_298496040, v1891), xmmword_298496070, v1894), xmmword_298496080, v1879);
    v1896 = vmlaq_f32(vmulq_f32(v1878, xmmword_298496020), xmmword_298496050, v1892);
    v1897 = vzip1q_s32(*&STACK[0x2344], vuzp1q_s32(v1880, v1880));
    v1880.i32[0] = HIDWORD(STACK[0x2344]);
    v1898 = vmlaq_f32(vmlaq_f32(v1896, xmmword_298496060, v1897), xmmword_298496090, v1880);
    v1899 = vmlaq_f32(vmulq_f32(v1874, xmmword_298495EE0), xmmword_298495F10, v1881);
    v1900 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1874, xmmword_298495F20), xmmword_298495F50, v1881), xmmword_298495F60, v1886), xmmword_298495F90, v1876);
    v1901 = vmlaq_f32(vmlaq_f32(v1888, xmmword_298495FF0, v1891), xmmword_298496000, v1877);
    v1902 = vextq_s8(*&STACK[0x2360], *&STACK[0x2370], 0xCuLL);
    v1889.i32[3] = STACK[0x2378];
    v1903 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1879, xmmword_298496080), xmmword_298496070, v1894), xmmword_298496040, v1902), xmmword_298496030, v1889);
    v1904 = vmlaq_f32(vmulq_f32(v1889, xmmword_298496000), xmmword_2984960B0, v1902);
    v1905 = *&STACK[0x238C];
    v1906 = vzip1q_s32(*&STACK[0x2360], vuzp1q_s32(v1890, v1890));
    v1907 = *&STACK[0x237C];
    v1890.i32[0] = HIDWORD(STACK[0x2360]);
    v1908 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1880, xmmword_298496090), xmmword_298496060, v1897), xmmword_298496050, v1906), xmmword_298496020, v1890);
    v1909 = vmlaq_f32(vmulq_f32(v1890, xmmword_2984960A0), xmmword_2984960C0, v1906);
    v1910 = vextq_s8(*&STACK[0x237C], *&STACK[0x238C], 0xCuLL);
    v1905.i32[3] = STACK[0x2394];
    v1911 = vmlaq_f32(vmlaq_f32(v1904, xmmword_2984960E0, v1910), xmmword_298495FB0, v1905);
    v1912 = vmlaq_f32(vmulq_f32(v1905, xmmword_298496100), xmmword_298496110, v1910);
    v1913 = vzip1q_s32(*&STACK[0x237C], vuzp1q_s32(v1907, v1907));
    v1907.i32[0] = HIDWORD(STACK[0x237C]);
    v1914 = vmlaq_f32(vmlaq_f32(v1909, xmmword_2984960D0, v1913), xmmword_2984960F0, v1907);
    v1915 = *&STACK[0x23A4];
    v1916 = *&STACK[0x2394];
    v1917 = vmlaq_f32(vmulq_f32(v1907, xmmword_298495F90), xmmword_298495F60, v1913);
    v1918 = vextq_s8(*&STACK[0x2394], *&STACK[0x23A4], 4uLL);
    v1918.i32[0] = STACK[0x239C];
    v1916.i32[0] = HIDWORD(STACK[0x2394]);
    v1919 = vextq_s8(*&STACK[0x23A4], vdupq_laneq_s32(*&STACK[0x23A4], 3), 4uLL);
    v1920 = vmlaq_f32(vmlaq_f32(v1912, xmmword_298496120, *&STACK[0x23A4]), xmmword_298496130, v1919);
    v1921 = vdupq_n_s32(0x3D800000u);
    *&STACK[0x450] = vmulq_f32(v1883, v1921);
    *&STACK[0x440] = vmulq_f32(v1899, v1921);
    *&STACK[0x470] = vmulq_f32(v1887, v1921);
    *&STACK[0x460] = vmulq_f32(v1900, v1921);
    *&STACK[0x490] = vmulq_f32(v1901, v1921);
    *&STACK[0x480] = vmulq_f32(v1893, v1921);
    *&STACK[0x4B0] = vmulq_f32(v1895, v1921);
    *&STACK[0x4A0] = vmulq_f32(v1898, v1921);
    v1922 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1917, xmmword_298495F50, v1916), xmmword_298495F20, v1918), v1921);
    *&STACK[0x4D0] = vmulq_f32(v1903, v1921);
    *&STACK[0x4C0] = vmulq_f32(v1908, v1921);
    v1923 = vmulq_f32(v1920, v1921);
    *&STACK[0x4F0] = vmulq_f32(v1911, v1921);
    *&STACK[0x4E0] = vmulq_f32(v1914, v1921);
    v1924 = vmulq_f32(vmlaq_f32(vmulq_f32(v1918, xmmword_298495EE0), xmmword_298495F10, v1916), v1921);
    v1925 = vmulq_f32(vmlaq_f32(vmulq_f32(v1919, xmmword_298495EF0), xmmword_298495F00, v1915), v1921);
    v1926 = vdupq_lane_s32(*v1683.f32, 0);
    v1927 = vdupq_lane_s32(*v1677.f32, 0);
    v1928 = 0uLL;
    v1921.i32[0] = LOBYTE(STACK[0x14C7]);
    v1917.i64[0] = vceqq_s8(v1921, v1678).u64[0];
    *&STACK[0x510] = v1923;
    *&STACK[0x500] = v1922;
    v1929 = vdupq_lane_s32(*v1683.f32, 1);
    v1930 = 0uLL;
    v1931 = vdupq_lane_s32(*v1677.f32, 1);
    v1932 = vdupq_laneq_s32(v1683, 2);
    v1933 = 0uLL;
    v1934 = 0uLL;
    v1935 = 0uLL;
    *&STACK[0x530] = v1925;
    *&STACK[0x520] = v1924;
    v1936 = 0uLL;
    v1937 = vdupq_laneq_s32(v1677, 2);
    v1938 = vdupq_laneq_s32(v1683, 3);
    v1939 = 0uLL;
    v1940 = vdupq_laneq_s32(v1677, 3);
    v1941 = 0uLL;
    v1942 = vdupq_lane_s8(*v1917.f32, 0);
    do
    {
      v1943 = *(&STACK[0x440] + v1872 * 8);
      v1944 = *(&STACK[0x440] + v1872 * 8 + 16);
      v1945 = vsubq_f32(vmlaq_f32(v1932, v1943, v1937), *&v1810[v1872 + 82]);
      v1946 = *&v1810[v1872 + 114];
      v1947 = *&v1810[v1872 + 116];
      v1948 = vbslq_s8(v1942, v1945, vmulq_f32(v1945, v1946));
      v1949 = vsubq_f32(vmlaq_f32(v1932, v1944, v1937), *&v1810[v1872 + 84]);
      v1950 = vbslq_s8(v1942, v1949, vmulq_f32(v1949, v1947));
      v1951 = vsubq_f32(vmlaq_f32(v1929, v1943, v1931), *&v1810[v1872 + 50]);
      v1952 = vbslq_s8(v1942, v1951, vmulq_f32(v1951, v1946));
      v1953 = vsubq_f32(vmlaq_f32(v1929, v1944, v1931), *&v1810[v1872 + 52]);
      v1954 = vbslq_s8(v1942, v1953, vmulq_f32(v1953, v1947));
      v1955 = vsubq_f32(vmlaq_f32(v1926, v1943, v1927), *&v1810[v1872 + 18]);
      v1956 = vbslq_s8(v1942, v1955, vmulq_f32(v1955, v1946));
      v1957 = vsubq_f32(vmlaq_f32(v1926, v1944, v1927), *&v1810[v1872 + 20]);
      v1958 = vbslq_s8(v1942, v1957, vmulq_f32(v1957, v1947));
      v1959 = vsubq_f32(vmlaq_f32(v1938, v1943, v1940), v1946);
      v1960 = vsubq_f32(vmlaq_f32(v1938, v1944, v1940), v1947);
      v1941 = vmlaq_f32(v1941, v1958, v1958);
      v1939 = vmlaq_f32(v1939, v1956, v1956);
      v1936 = vmlaq_f32(v1936, v1954, v1954);
      v1935 = vmlaq_f32(v1935, v1952, v1952);
      v1934 = vmlaq_f32(v1934, v1950, v1950);
      v1933 = vmlaq_f32(v1933, v1948, v1948);
      v1930 = vmlaq_f32(v1930, v1960, v1960);
      v1928 = vmlaq_f32(v1928, v1959, v1959);
      v1872 += 4;
    }

    while (v1872 != 32);
    v1808 = v1915.f32[3];
    v1870 = vpaddq_f32(vpaddq_f32(vaddq_f32(v1939, v1941), vaddq_f32(v1935, v1936)), vpaddq_f32(vaddq_f32(v1933, v1934), vaddq_f32(v1928, v1930)));
    v1871 = v4092;
LABEL_428:
    v1961 = vmulq_f32(v1871, v1870);
    v1961.i64[0] = vpaddq_f32(v1961, v1961).u64[0];
    LODWORD(v1962) = vpadd_f32(*v1961.f32, *v1961.f32).u32[0];
  }

  else
  {
    if (v1812 == 375)
    {
      v4078 = v1808;
      v4081 = v1683;
      v4091 = _Q0;
      v4089 = v1680;
      _Q0.i32[0] = 0;
      v1813 = 0;
      *&STACK[0x300] = vdupq_lane_s32(*v1677.f32, 0);
      *&STACK[0x310] = vdupq_lane_s32(*v1683.f32, 0);
      *&STACK[0x2E0] = vdupq_lane_s32(*v1677.f32, 1);
      *&STACK[0x2F0] = vdupq_lane_s32(*v1683.f32, 1);
      *&STACK[0x2C0] = vdupq_laneq_s32(v1677, 2);
      *&STACK[0x2D0] = vdupq_laneq_s32(v1683, 2);
      v4085 = v1677;
      v1814 = vdupq_laneq_s32(v1677, 3);
      *&STACK[0x2A0] = v1814;
      *&STACK[0x2B0] = vdupq_laneq_s32(v1683, 3);
      v1814.i32[0] = LOBYTE(STACK[0x14C7]);
      v1815 = vdupq_lane_s8(*&vceqq_s8(v1814, _Q0), 0);
      v1816 = 0uLL;
      v1817 = 0uLL;
      v1818 = 0uLL;
      v1819 = 0uLL;
      v1820 = 0uLL;
      v1821 = 0uLL;
      v1822 = 0uLL;
      v1823 = 0uLL;
      v1824 = 0uLL;
      v1825 = 0uLL;
      v1826 = 0uLL;
      v1827 = 0uLL;
      v1828 = 0uLL;
      v1829 = 0uLL;
      v1830 = 0uLL;
      v1831 = 0uLL;
      do
      {
        *&STACK[0x360] = v1819;
        *&STACK[0x370] = v1818;
        *&STACK[0x380] = v1817;
        *&STACK[0x390] = v1816;
        v1833 = *&STACK[0x2C0];
        v1832 = *&STACK[0x2D0];
        v1834 = *(&STACK[0x22F0] + v1813 + 32);
        v1835 = *(&STACK[0x22F0] + v1813 + 48);
        v1836 = *(&STACK[0x1440] + v1813 + 560);
        v1837 = vsubq_f32(vmlaq_f32(*&STACK[0x2D0], v1835, *&STACK[0x2C0]), *(&STACK[0x1440] + v1813 + 576));
        v1839 = *(&STACK[0x1440] + v1813 + 752);
        v1838 = *(&STACK[0x1440] + v1813 + 768);
        *&STACK[0x350] = vbslq_s8(v1815, v1837, vmulq_f32(v1837, v1838));
        v1840 = *(&STACK[0x22F0] + v1813);
        v1841 = *(&STACK[0x22F0] + v1813 + 16);
        v1842 = *(&STACK[0x1440] + v1813 + 544);
        v1843 = vsubq_f32(vmlaq_f32(v1832, v1840, v1833), *(&STACK[0x1440] + v1813 + 528));
        v1845 = *(&STACK[0x1440] + v1813 + 720);
        v1844 = *(&STACK[0x1440] + v1813 + 736);
        *&STACK[0x340] = vbslq_s8(v1815, v1843, vmulq_f32(v1843, v1845));
        v1846 = vsubq_f32(vmlaq_f32(v1832, v1841, v1833), v1842);
        *&STACK[0x330] = vbslq_s8(v1815, v1846, vmulq_f32(v1846, v1844));
        v1847 = vsubq_f32(vmlaq_f32(v1832, v1834, v1833), v1836);
        *&STACK[0x320] = vbslq_s8(v1815, v1847, vmulq_f32(v1847, v1839));
        v1848 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1835, *&STACK[0x2E0]), *(&STACK[0x1440] + v1813 + 384));
        v1849 = vbslq_s8(v1815, v1848, vmulq_f32(v1848, v1838));
        v1850 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1840, *&STACK[0x2E0]), *(&STACK[0x1440] + v1813 + 336));
        v1851 = vbslq_s8(v1815, v1850, vmulq_f32(v1850, v1845));
        v1852 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1841, *&STACK[0x2E0]), *(&STACK[0x1440] + v1813 + 352));
        v1853 = vbslq_s8(v1815, v1852, vmulq_f32(v1852, v1844));
        v1854 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1834, *&STACK[0x2E0]), *(&STACK[0x1440] + v1813 + 368));
        v1855 = vbslq_s8(v1815, v1854, vmulq_f32(v1854, v1839));
        v1856 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1835, *&STACK[0x300]), *(&STACK[0x1440] + v1813 + 192));
        v1857 = vbslq_s8(v1815, v1856, vmulq_f32(v1856, v1838));
        v1858 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1840, *&STACK[0x300]), *(&STACK[0x1440] + v1813 + 144));
        v1859 = vbslq_s8(v1815, v1858, vmulq_f32(v1858, v1845));
        v1860 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1841, *&STACK[0x300]), *(&STACK[0x1440] + v1813 + 160));
        v1861 = vbslq_s8(v1815, v1860, vmulq_f32(v1860, v1844));
        v1862 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1834, *&STACK[0x300]), *(&STACK[0x1440] + v1813 + 176));
        v1863 = vbslq_s8(v1815, v1862, vmulq_f32(v1862, v1839));
        v1864 = vmlaq_f32(*&STACK[0x2B0], v1834, *&STACK[0x2A0]);
        v1865 = vsubq_f32(vmlaq_f32(*&STACK[0x2B0], v1835, *&STACK[0x2A0]), v1838);
        v1866 = vsubq_f32(vmlaq_f32(*&STACK[0x2B0], v1840, *&STACK[0x2A0]), v1845);
        v1867 = vsubq_f32(vmlaq_f32(*&STACK[0x2B0], v1841, *&STACK[0x2A0]), v1844);
        v1868 = vsubq_f32(v1864, v1839);
        v1830 = vmlaq_f32(v1830, v1863, v1863);
        v1829 = vmlaq_f32(v1829, v1861, v1861);
        v1828 = vmlaq_f32(v1828, v1859, v1859);
        v1831 = vmlaq_f32(v1831, v1857, v1857);
        v1826 = vmlaq_f32(v1826, v1855, v1855);
        v1825 = vmlaq_f32(v1825, v1853, v1853);
        v1824 = vmlaq_f32(v1824, v1851, v1851);
        v1827 = vmlaq_f32(v1827, v1849, v1849);
        v1822 = vmlaq_f32(v1822, *&STACK[0x320], *&STACK[0x320]);
        v1821 = vmlaq_f32(v1821, *&STACK[0x330], *&STACK[0x330]);
        v1820 = vmlaq_f32(v1820, *&STACK[0x340], *&STACK[0x340]);
        v1823 = vmlaq_f32(v1823, *&STACK[0x350], *&STACK[0x350]);
        v1818 = vmlaq_f32(*&STACK[0x370], v1868, v1868);
        v1817 = vmlaq_f32(*&STACK[0x380], v1867, v1867);
        v1816 = vmlaq_f32(*&STACK[0x390], v1866, v1866);
        v1819 = vmlaq_f32(*&STACK[0x360], v1865, v1865);
        v1813 += 64;
      }

      while (v1813 != 192);
      v1808 = v4078;
      v1869 = vsubq_f32(vmlaq_n_f32(v4081, v4085, v4078), *&STACK[0x1C50]);
      v1870 = vmulq_f32(v4091, vmlaq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1828, v1830), vaddq_f32(v1829, v1831)), vaddq_f32(vaddq_f32(v1824, v1826), vaddq_f32(v1825, v1827))), vpaddq_f32(vaddq_f32(vaddq_f32(v1820, v1822), vaddq_f32(v1821, v1823)), vaddq_f32(vaddq_f32(v1816, v1818), vaddq_f32(v1817, v1819)))), v1869, v1869));
      v1871 = v4091;
      v1680 = v4089;
      goto LABEL_428;
    }

    v1962 = INFINITY;
  }

  if (v1962 >= *v5)
  {
    v1970 = 0;
    LOBYTE(v1971) = 0;
    LOBYTE(v1972) = 0;
    v1967 = 0uLL;
    v1973 = 0uLL;
    v1962 = *v5;
    v1969 = v4099;
  }

  else
  {
    if (v1676 == 1)
    {
      v1963 = 0;
      v1964 = 0uLL;
      v1965.i64[0] = 0x3F0000003F000000;
      v1965.i64[1] = 0x3F0000003F000000;
      do
      {
        v1966 = vaddvq_s16(vandq_s8(vuzp1q_s16(vcgeq_f32(*(&STACK[0x22F0] + 2 * v1963), v1965), vcgeq_f32(*(&STACK[0x22F0] + 2 * v1963 + 1), v1965)), xmmword_298495640));
        *&STACK[0x420] = v1964;
        *(&STACK[0x420] | v1963 & 0xF) = v1966;
        v1964 = *&STACK[0x420];
        ++v1963;
      }

      while (v1963 != 6);
      v1964.i8[6] = v1808 >= 0.5;
      v1967 = vqtbl1q_s8(vrbitq_s8(v1964), xmmword_298495DE0);
      v1968 = v1674;
      v1969 = v4099;
    }

    else
    {
      v1974 = *&STACK[0x2380];
      v1975 = *&STACK[0x2370];
      v1976 = *&STACK[0x23A0];
      v1977 = *&STACK[0x2390];
      v1978.i64[0] = 0x3F0000003F000000;
      v1978.i64[1] = 0x3F0000003F000000;
      v1979.i64[0] = 0x3F0000003F000000;
      v1979.i64[1] = 0x3F0000003F000000;
      v1980.i64[0] = 0x3F0000003F000000;
      v1980.i64[1] = 0x3F0000003F000000;
      v1981.i64[0] = 0x3F0000003F000000;
      v1981.i64[1] = 0x3F0000003F000000;
      v1982.i64[0] = 0x3F0000003F000000;
      v1982.i64[1] = 0x3F0000003F000000;
      v1983 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1981, *&STACK[0x22F0], v1676)), vcvtq_s32_f32(vmlaq_n_f32(v1982, *&STACK[0x2300], v1676))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1979, *&STACK[0x2310], v1676)), vcvtq_s32_f32(vmlaq_n_f32(v1980, *&STACK[0x2320], v1676))));
      v1982.i64[0] = 0x3F0000003F000000;
      v1982.i64[1] = 0x3F0000003F000000;
      v1981.i64[0] = 0x3F0000003F000000;
      v1981.i64[1] = 0x3F0000003F000000;
      v1980.i64[0] = 0x3F0000003F000000;
      v1980.i64[1] = 0x3F0000003F000000;
      v1984.i64[0] = 0x3F0000003F000000;
      v1984.i64[1] = 0x3F0000003F000000;
      v1985 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1980, *&STACK[0x2330], v1676)), vcvtq_s32_f32(vmlaq_n_f32(v1984, *&STACK[0x2340], v1676))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1982, *&STACK[0x2350], v1676)), vcvtq_s32_f32(vmlaq_n_f32(v1981, *&STACK[0x2360], v1676))));
      *&STACK[0x450] = v1985;
      *&STACK[0x440] = v1983;
      v1981.i64[0] = 0x3F0000003F000000;
      v1981.i64[1] = 0x3F0000003F000000;
      v1980.i64[0] = 0x3F0000003F000000;
      v1980.i64[1] = 0x3F0000003F000000;
      v1986.i64[0] = 0x3F0000003F000000;
      v1986.i64[1] = 0x3F0000003F000000;
      *&STACK[0x470] = ((v1808 * v1676) + 0.5);
      *&STACK[0x460] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1986, v1975, v1676)), vcvtq_s32_f32(vmlaq_n_f32(v1978, v1974, v1676))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1981, v1977, v1676)), vcvtq_s32_f32(vmlaq_n_f32(v1980, v1976, v1676))));
      v1987 = vqtbl1q_s8(v1983, xmmword_298495C40);
      v1988 = vqtbl1q_s8(v1985, xmmword_298496140);
      v1989 = vqtbl1q_s8(*&STACK[0x45E], xmmword_298495C40);
      v1990 = vqtbl1q_s8(*&STACK[0x46E], xmmword_298496140);
      v1991 = vpaddq_s16(vpaddq_s16(vmull_u8(*v1987.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1987, v1987, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v1988.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1988, v1988, 8uLL), 0x8010040180100401)));
      v1992 = vpaddq_s16(vpaddq_s16(vmull_u8(*v1989.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1989, v1989, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v1990.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1990, v1990, 8uLL), 0x8010040180100401)));
      v1993 = vuzp1q_s16(vqtbl1q_s8(v1983, xmmword_298495C50), vqtbl1q_s8(v1985, xmmword_298495CA0));
      v1994 = vuzp1q_s16(vqtbl1q_s8(*&STACK[0x45E], xmmword_298495C50), vqtbl1q_s8(*&STACK[0x46E], xmmword_298495CA0));
      v1995 = vaddq_s16(v1991, vqtbl1q_s8(v1991, xmmword_298495CB0));
      v1996 = vaddq_s16(v1992, vqtbl1q_s8(v1992, xmmword_298495CB0));
      v1997 = v1995;
      v1997.i16[3] = 0;
      v1998 = v1996;
      v1998.i16[3] = 0;
      v1980.i64[0] = 0x20002000200020;
      v1980.i64[1] = 0x20002000200020;
      v1999 = vceqq_s16(vandq_s8(v1995, xmmword_298495CC0), v1980);
      v2000 = vceqq_s16(vandq_s8(v1996, xmmword_298495CC0), v1980);
      v1983.i64[0] = 0xFF00FF00FF00FFLL;
      v1983.i64[1] = 0xFF00FF00FF00FFLL;
      v2001 = vcgtq_u16(v1997, v1983);
      v2002 = vcgtq_u16(v1998, v1983);
      v2003 = vshlq_n_s16(v1993, 5uLL);
      v2004 = vshlq_n_s16(v1994, 5uLL);
      v2005 = vaddq_s16(v1997, v2003);
      if ((vmaxvq_u16(vorrq_s8(v1999, v2001)) & 0x8000) != 0)
      {
        v2006.i64[0] = 0x2000200020002;
        v2006.i64[1] = 0x2000200020002;
        v2007 = vandq_s8(v2001, vceqq_s16(v1993, v2006));
        v2008 = vandq_s8(v1995, xmmword_298495CD0);
        v2009.i64[0] = 0x303030303030303;
        v2009.i64[1] = 0x303030303030303;
        v2010.i64[0] = 0x6060606060606060;
        v2010.i64[1] = 0x6060606060606060;
        v2011 = vmlaq_s8(v2010, v2003, v2009);
        v2012.i64[0] = 0xF000F000F000FLL;
        v2012.i64[1] = 0xF000F000F000FLL;
        v2005 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v2011, v2001), v2005), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v2008), v1999), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(vshrq_n_u16(v1997, 2uLL), v2012)), v2007))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v2008), v1999), v2007));
      }

      v2013 = vaddq_s16(v1998, v2004);
      if ((vmaxvq_u16(vorrq_s8(v2000, v2002)) & 0x8000) != 0)
      {
        v2014 = vshrq_n_u16(v1998, 2uLL);
        v2015.i64[0] = 0xFF00FF00FF00FFLL;
        v2015.i64[1] = 0xFF00FF00FF00FFLL;
        v2016 = vcgtq_u16(v1998, v2015);
        v2015.i64[0] = 0x2000200020002;
        v2015.i64[1] = 0x2000200020002;
        v2017 = vandq_s8(v2016, vceqq_s16(v1994, v2015));
        v2018 = vandq_s8(v1996, xmmword_298495CD0);
        v2015.i64[0] = 0x303030303030303;
        v2015.i64[1] = 0x303030303030303;
        v2019.i64[0] = 0x6060606060606060;
        v2019.i64[1] = 0x6060606060606060;
        v2020 = vmlaq_s8(v2019, v2004, v2015);
        v2021.i64[0] = 0xF000F000F000FLL;
        v2021.i64[1] = 0xF000F000F000FLL;
        v2013 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v2020, v2002), v2013), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v2018), v2000), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v2014, v2021)), v2017))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v2018), v2000), v2017));
      }

      v1969 = v4099;
      v1967 = vqtbl1q_s8(vrbitq_s8(vorrq_s8(vqtbl1q_s8(v2013, xmmword_298496160), vqtbl1q_s8(v2005, xmmword_298496150))), xmmword_298495DE0);
      v1968 = STACK[0x20F0];
      v1674 = STACK[0x20F0];
    }

    v1970 = v1968 & 0x1FFFF;
    v1971 = HIDWORD(v1674);
    v1972 = v1674 >> 40;
    *v5 = v1962;
    v1973 = vmovl_u8(v1680);
  }

  if (v1969 > v1962)
  {
    v2022 = v1971 + 1;
    v2023 = __clz(__rbit32(v2022));
    v2024 = v2022 >> v2023;
    v2025 = (v2022 >> v2023);
    if (v2023 && v2025 != 1)
    {
      v2026 = vsubq_s16(vdupq_n_s16(v1971), v1973);
      if (v2025 == 3)
      {
        v2027 = 21846;
      }

      else
      {
        v2027 = 13108;
      }

      v2028 = vdupq_n_s16(v2027);
      v2029 = vminq_u16(v1973, v2026);
      v2030 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v2029.i8, *v2028.i8), 0x10uLL), vmull_high_u16(v2029, v2028), 0x10uLL);
      v2028.i64[0] = 0x1000100010001;
      v2028.i64[1] = 0x1000100010001;
      v1973 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v2029, v2030, vmovl_u8(vdup_n_s8(v2024))), vdupq_n_s16(v2023)), vaddq_s16(v2030, v2030)), vbicq_s8(v2028, vceqq_s16(v2029, v1973)));
    }

    v2031 = vandq_s8(v1973, vcgtq_u16(vdupq_n_s16(v1972), xmmword_298495BB0));
    switch(v2025)
    {
      case 5:
        v2066 = vdupq_n_s16(v2023);
        v2067 = vshlq_u16(v2031, vnegq_s16(v2066));
        *v2067.i8 = vmovn_s16(v2067);
        v2068 = vqtbl1q_s8(v2067, xmmword_298495BC0);
        v2069 = vqtbl1q_s8(v2067, xmmword_298495BD0);
        v2070 = vpaddq_s16(vmull_u8(*v2068.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v2068, v2068, 8uLL), 0x2001200120012001));
        v2068.i64[0] = 0x7000700070007;
        v2068.i64[1] = 0x7000700070007;
        v2071 = vandq_s8(v2070, v2068);
        v2072 = vandq_s8(vshrq_n_u16(v2070, 5uLL), v2068);
        v2073.i64[0] = 0x4000400040004;
        v2073.i64[1] = 0x4000400040004;
        v2074 = vceqq_s16(v2069, v2073);
        v2075 = vceqq_s16(v2072, v2073);
        v2076 = vsubq_s8(vaddq_s16(v2070, vshlq_n_s16(v2069, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v2071), v2075));
        if ((vmaxvq_u16(v2074) & 0x8000) != 0)
        {
          v2077.i64[0] = 0x18001800180018;
          v2077.i64[1] = 0x18001800180018;
          v2076.i64[0] = vsubq_s8(v2076, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v2071), v2074), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v2071), v2074), v2075)), vandq_s8(vmulq_s16(v2072, v2077), vandq_s8(vceqq_s16(v2071, v2073), v2074)))).u64[0];
        }

        v2076.i64[1] = v2076.i64[0];
        v2078 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v2076, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v2066), vandq_s8(v2031, vdupq_n_s16(~(-1 << v2023)))), vaddq_s16(vdupq_n_s32(v2023 << 16), xmmword_298495C10));
        v2079 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v2078, v2078)), vaddq_s32(vdupq_n_s64(v2023 << 33), xmmword_298495C20));
        v2079.i64[0] = vpaddq_s32(v2079, v2079).u64[0];
        v2039 = v2079.u32[0];
        v2040 = (v2079.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v2023);
LABEL_459:
        v2065 = v2040 | v2039;
        break;
      case 3:
        *v2031.i8 = vmovn_s16(v2031);
        v2041 = vandq_s8(v2031, xmmword_298495C30);
        v2042 = vdupq_n_s8(v2023);
        v2043 = vshlq_u8(v2041, vnegq_s8(v2042));
        v2044 = vqtbl1q_s8(v2043, xmmword_298495C40);
        v2045 = vqtbl1q_s8(v2043, xmmword_298495C50);
        v2046 = vpaddq_s16(vmull_u8(*v2044.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v2044, v2044, 8uLL), 0x8010040180100401));
        v2046.i64[0] = vpaddq_s16(v2046, v2046).u64[0];
        v2047 = vmovl_s16(*v2046.i8);
        v2048 = vshlq_n_s32(v2045, 5uLL);
        v2044.i64[0] = 0x3000000030;
        v2044.i64[1] = 0x3000000030;
        v2049.i64[0] = 0x2000000020;
        v2049.i64[1] = 0x2000000020;
        v2050 = vceqq_s32(vandq_s8(v2047, v2044), v2049);
        v2051 = vaddw_s16(v2048, *v2046.i8);
        v2049.i64[0] = 0xFF000000FFLL;
        v2049.i64[1] = 0xFF000000FFLL;
        v2052 = vcgtq_s32(v2051, v2049);
        if ((vmaxvq_u32(vorrq_s8(v2050, v2052)) & 0x80000000) != 0)
        {
          v2053.i64[0] = 0x200000002;
          v2053.i64[1] = 0x200000002;
          v2054 = vceqq_s32(v2045, v2053);
          v2055 = vshrq_n_u32(v2047, 2uLL);
          v2056 = vandq_s8(v2052, v2054);
          v2057.i64[0] = 0xF0000000FLL;
          v2057.i64[1] = 0xF0000000FLL;
          v2058 = vandq_s8(v2047, v2057);
          v2059.i64[0] = 0x303030303030303;
          v2059.i64[1] = 0x303030303030303;
          v2060.i64[0] = 0x6060606060606060;
          v2060.i64[1] = 0x6060606060606060;
          v2051.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v2060, v2048, v2059), v2052), v2051), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v2058), v2050), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v2055, v2057)), v2056))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v2058), vandq_s8(v2050, v2056))).u64[0];
        }

        v2051.i64[1] = v2051.i64[0];
        v2061 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v2051, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v2042.i8), vand_s8(*v2041.i8, vdup_n_s8((1 << v2023) - 1))));
        v2062 = vadd_s32(vdup_n_s32(2 * v2023), 0x300000004);
        v2063.i64[0] = v2062.u32[0];
        v2063.i64[1] = v2062.u32[1];
        v2064 = vshlq_u32(vmlal_u16((*&v2061 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v2061, 0x10uLL), vshl_u16(vdup_n_s16(1 << v2023), 0x2000100010002)), vtrn1q_s32(0, v2063));
        v2064.i64[0] = vpaddq_s32(v2064, v2064).u64[0];
        v2065 = (v2064.u32[1] << (4 * v2023 + 7)) | v2064.u32[0];
        break;
      case 1:
        v2032.i64[0] = 0xFFFF0000FFFFLL;
        v2032.i64[1] = 0xFFFF0000FFFFLL;
        v2033.i64[0] = 0xFFFF0000FFFF0000;
        v2033.i64[1] = 0xFFFF0000FFFF0000;
        v2034 = vorrq_s8(vshlq_u32(vandq_s8(v2031, v2033), vnegq_s32(vdupq_n_s32(16 - v2023))), vandq_s8(v2031, v2032));
        v2032.i64[0] = 0xFFFFFFFFLL;
        v2032.i64[1] = 0xFFFFFFFFLL;
        v2035 = vandq_s8(v2034, v2032);
        v2033.i64[0] = 0xFFFFFFFF00000000;
        v2033.i64[1] = 0xFFFFFFFF00000000;
        v2036 = vandq_s8(v2034, v2033);
        *v2033.i8 = vdup_n_s32(2 * (16 - v2023));
        v2037.i64[0] = v2033.u32[0];
        v2037.i64[1] = v2033.u32[1];
        v2038 = vorrq_s8(vshlq_u64(v2036, vnegq_s64(v2037)), v2035);
        v2039 = v2038.i64[0];
        v2040 = v2038.i64[1] << (4 * v2023);
        goto LABEL_459;
      default:
        v2065 = 0;
        break;
    }

    v2080.i64[0] = v1970 | (v2065 << 17);
    v2080.i64[1] = v2065 >> 47;
    *v4 = vorrq_s8(v2080, v1967);
    v1962 = *v5;
  }

  if (v1962 <= v5[1])
  {
    goto LABEL_828;
  }

  bzero(&STACK[0x440], 0x570uLL);
  v2081 = 0;
  LOWORD(STACK[0x4C4]) = 342;
  LOBYTE(STACK[0x4C6]) = -1;
  LOBYTE(STACK[0x4C8]) = -1;
  v2082 = *(v6 + 48);
  v2083 = *(v6 + 56);
  v2084 = vdupq_n_s32(0x3C800000u);
  __asm { FMOV            V1.4S, #0.21875 }

  v2087 = *(v6 + 144);
  v2086 = *(v6 + 160);
  __asm { FMOV            V2.4S, #0.53125 }

  v2089 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[21], v2084), _Q1, v2083[23]), _Q2, v2087);
  v2090 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[22], v2084), _Q1, v2083[24]), _Q2, v2086);
  v2091 = vdupq_n_s32(0x3D100000u);
  v2092 = vmulq_f32(v2086, v2091);
  v2093 = vmulq_f32(v2087, v2091);
  v2095 = *(v7 + 128);
  v2094 = *(v7 + 144);
  v2096 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[37], v2084), _Q1, v2083[39]), _Q2, v2095);
  v2097 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[38], v2084), _Q1, v2083[40]), _Q2, v2094);
  v2098 = vmulq_f32(v2094, v2091);
  v2099 = vmulq_f32(v2095, v2091);
  v2101 = *(v7 + 384);
  v2100 = *(v7 + 400);
  v2102 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[53], v2084), _Q1, v2083[55]), _Q2, v2101);
  v2103 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[54], v2084), _Q1, v2083[56]), _Q2, v2100);
  v2104 = vmulq_f32(v2100, v2091);
  v2105 = vmulq_f32(v2101, v2091);
  v2107 = *(v7 + 640);
  v2106 = *(v7 + 656);
  v2108 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[69], v2084), _Q1, v2083[71]), _Q2, v2107);
  v2109 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2083[70], v2084), _Q1, v2083[72]), _Q2, v2106);
  v2110 = vmulq_f32(v2106, v2091);
  v2111 = vmulq_f32(v2107, v2091);
  v2112 = *(v6 + 176);
  v2113 = *(v6 + 192);
  v2114 = vmlaq_f32(v2090, _Q1, v2113);
  v2115 = vmlaq_f32(v2089, _Q1, v2112);
  v2116 = vdupq_n_s32(0x3EA60000u);
  v2117 = vmlaq_f32(v2093, v2116, v2112);
  v2118 = vmlaq_f32(v2092, v2116, v2113);
  v2119 = *(v7 + 160);
  v2120 = *(v7 + 176);
  v2121 = vmlaq_f32(v2097, _Q1, v2120);
  v2122 = vmlaq_f32(v2096, _Q1, v2119);
  v2123 = vmlaq_f32(v2099, v2116, v2119);
  v2124 = vmlaq_f32(v2098, v2116, v2120);
  v2125 = *(v7 + 416);
  v2126 = *(v7 + 432);
  v2127 = vmlaq_f32(v2103, _Q1, v2126);
  v2128 = vmlaq_f32(v2102, _Q1, v2125);
  v2129 = vmlaq_f32(v2105, v2116, v2125);
  v2130 = vmlaq_f32(v2104, v2116, v2126);
  v2131 = *(v7 + 672);
  v2132 = *(v7 + 688);
  v2133 = vmlaq_f32(v2109, _Q1, v2132);
  v2134 = vmlaq_f32(v2108, _Q1, v2131);
  v2135 = vmlaq_f32(v2111, v2116, v2131);
  v2136 = vmlaq_f32(v2110, v2116, v2132);
  v2138 = *(v6 + 208);
  v2137 = *(v6 + 224);
  v2139 = vdupq_n_s32(0x3F020000u);
  *&STACK[0x2300] = vmlaq_f32(v2114, v2084, v2137);
  *&STACK[0x22F0] = vmlaq_f32(v2115, v2084, v2138);
  v2140 = vmlaq_f32(v2118, v2139, v2137);
  v2141 = vmlaq_f32(v2117, v2139, v2138);
  v2142 = vdupq_n_s32(0x3D900000u);
  v2143 = vmulq_f32(v2137, v2142);
  v2144 = vmulq_f32(v2138, v2142);
  v2145 = *(v7 + 192);
  v2146 = *(v7 + 208);
  *&STACK[0x2200] = vmlaq_f32(v2121, v2084, v2146);
  *&STACK[0x21F0] = vmlaq_f32(v2122, v2084, v2145);
  v2147 = vmlaq_f32(v2124, v2139, v2146);
  v2148 = vmlaq_f32(v2123, v2139, v2145);
  v2149 = vmulq_f32(v2145, v2142);
  v2150 = vmulq_f32(v2146, v2142);
  v2151 = *(v7 + 448);
  v2152 = *(v7 + 464);
  *&STACK[0x2100] = vmlaq_f32(v2127, v2084, v2152);
  *&STACK[0x20F0] = vmlaq_f32(v2128, v2084, v2151);
  v2153 = vmlaq_f32(v2130, v2139, v2152);
  v2154 = vmlaq_f32(v2129, v2139, v2151);
  v2155 = vmulq_f32(v2151, v2142);
  v2156 = vmulq_f32(v2152, v2142);
  v2158 = *(v7 + 704);
  v2157 = *(v7 + 720);
  *&STACK[0x2020] = vmlaq_f32(v2133, v2084, v2157);
  *&STACK[0x2010] = vmlaq_f32(v2134, v2084, v2158);
  v2160 = *(v6 + 240);
  v2159 = *(v6 + 256);
  __asm { FMOV            V7.4S, #0.13281 }

  *&STACK[0x2320] = vmlaq_f32(v2140, _Q7, v2159);
  *&STACK[0x2310] = vmlaq_f32(v2141, _Q7, v2160);
  v2162 = vdupq_n_s32(0x3EDC0000u);
  v2164 = *(v7 + 224);
  v2163 = *(v7 + 240);
  *&STACK[0x2220] = vmlaq_f32(v2147, _Q7, v2163);
  *&STACK[0x2210] = vmlaq_f32(v2148, _Q7, v2164);
  v2166 = *(v7 + 480);
  v2165 = *(v7 + 496);
  *&STACK[0x2120] = vmlaq_f32(v2153, _Q7, v2165);
  *&STACK[0x2110] = vmlaq_f32(v2154, _Q7, v2166);
  v2168 = *(v7 + 736);
  v2167 = *(v7 + 752);
  *&STACK[0x2040] = vmlaq_f32(vmlaq_f32(v2136, v2139, v2157), _Q7, v2167);
  *&STACK[0x2030] = vmlaq_f32(vmlaq_f32(v2135, v2139, v2158), _Q7, v2168);
  v2169 = *(v7 + 16);
  v2170 = vmlaq_f32(vmlaq_f32(v2143, v2162, v2159), v2162, v2169);
  v2171 = vmlaq_f32(vmlaq_f32(v2144, v2162, v2160), v2162, *v7);
  v2172 = vmulq_f32(v2169, _Q7);
  v2173 = vmulq_f32(*v7, _Q7);
  v2175 = *(v7 + 256);
  v2174 = *(v7 + 272);
  v2176 = vmlaq_f32(vmlaq_f32(v2149, v2162, v2164), v2162, v2175);
  v2177 = vmlaq_f32(vmlaq_f32(v2150, v2162, v2163), v2162, v2174);
  v2178 = vmulq_f32(v2174, _Q7);
  v2179 = vmulq_f32(v2175, _Q7);
  v2181 = *(v7 + 512);
  v2180 = *(v7 + 528);
  v2182 = vmlaq_f32(vmlaq_f32(v2155, v2162, v2166), v2162, v2181);
  v2183 = vmlaq_f32(vmlaq_f32(v2156, v2162, v2165), v2162, v2180);
  v2184 = vmulq_f32(v2180, _Q7);
  v2185 = vmulq_f32(v2181, _Q7);
  v2187 = *(v7 + 768);
  v2186 = *(v7 + 784);
  v2188 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2158, v2142), v2162, v2168), v2162, v2187);
  v2189 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2157, v2142), v2162, v2167), v2162, v2186);
  v2190 = vmulq_f32(v2187, _Q7);
  v2191 = vmulq_f32(v2186, _Q7);
  v2192 = *(v7 + 32);
  v2193 = *(v7 + 48);
  *&STACK[0x2340] = vmlaq_f32(v2170, v2142, v2193);
  *&STACK[0x2330] = vmlaq_f32(v2171, v2142, v2192);
  v2194 = *(v7 + 288);
  v2195 = *(v7 + 304);
  *&STACK[0x2230] = vmlaq_f32(v2176, v2142, v2194);
  *&STACK[0x2240] = vmlaq_f32(v2177, v2142, v2195);
  v2196 = *(v7 + 544);
  v2197 = *(v7 + 560);
  *&STACK[0x2130] = vmlaq_f32(v2182, v2142, v2196);
  *&STACK[0x2140] = vmlaq_f32(v2183, v2142, v2197);
  v2198 = *(v7 + 800);
  v2199 = *(v7 + 816);
  *&STACK[0x2050] = vmlaq_f32(v2188, v2142, v2198);
  *&STACK[0x2060] = vmlaq_f32(v2189, v2142, v2199);
  v2200 = *(v7 + 64);
  v2201 = *(v7 + 80);
  v2202 = vmlaq_f32(vmlaq_f32(v2172, v2139, v2193), v2116, v2201);
  v2203 = vmlaq_f32(vmlaq_f32(v2173, v2139, v2192), v2116, v2200);
  v2204 = vmlaq_f32(vmulq_f32(v2193, v2084), _Q1, v2201);
  v2205 = vmlaq_f32(vmulq_f32(v2192, v2084), _Q1, v2200);
  v2206 = *(v7 + 320);
  v2207 = *(v7 + 336);
  v2208 = vmlaq_f32(vmlaq_f32(v2178, v2139, v2195), v2116, v2207);
  v2209 = vmlaq_f32(vmlaq_f32(v2179, v2139, v2194), v2116, v2206);
  v2210 = vmlaq_f32(vmulq_f32(v2195, v2084), _Q1, v2207);
  v2211 = vmlaq_f32(vmulq_f32(v2194, v2084), _Q1, v2206);
  v2212 = *(v7 + 576);
  v2213 = *(v7 + 592);
  v2214 = vmlaq_f32(vmlaq_f32(v2184, v2139, v2197), v2116, v2213);
  v2215 = vmlaq_f32(vmlaq_f32(v2185, v2139, v2196), v2116, v2212);
  v2216 = vmlaq_f32(vmulq_f32(v2197, v2084), _Q1, v2213);
  v2217 = vmlaq_f32(vmulq_f32(v2196, v2084), _Q1, v2212);
  v2219 = *(v7 + 832);
  v2218 = *(v7 + 848);
  v2220 = vmlaq_f32(vmlaq_f32(v2190, v2139, v2198), v2116, v2219);
  v2221 = vmlaq_f32(vmlaq_f32(v2191, v2139, v2199), v2116, v2218);
  v2222 = vmlaq_f32(vmulq_f32(v2199, v2084), _Q1, v2218);
  v2223 = vmlaq_f32(vmulq_f32(v2198, v2084), _Q1, v2219);
  v2225 = *(v7 + 96);
  v2224 = *(v7 + 112);
  *&STACK[0x2360] = vmlaq_f32(v2202, v2091, v2224);
  *&STACK[0x2350] = vmlaq_f32(v2203, v2091, v2225);
  v2226 = vmlaq_f32(v2205, _Q2, v2225);
  v2227 = vmlaq_f32(v2204, _Q2, v2224);
  v2229 = *(v7 + 352);
  v2228 = *(v7 + 368);
  *&STACK[0x2260] = vmlaq_f32(v2208, v2091, v2228);
  *&STACK[0x2250] = vmlaq_f32(v2209, v2091, v2229);
  v2230 = vmlaq_f32(v2211, _Q2, v2229);
  v2231 = vmlaq_f32(v2210, _Q2, v2228);
  v2233 = *(v7 + 608);
  v2232 = *(v7 + 624);
  *&STACK[0x2160] = vmlaq_f32(v2214, v2091, v2232);
  *&STACK[0x2150] = vmlaq_f32(v2215, v2091, v2233);
  v2234 = vmlaq_f32(v2216, _Q2, v2232);
  v2235 = *(v7 + 864);
  v2236 = *(v7 + 880);
  *&STACK[0x2070] = vmlaq_f32(v2220, v2091, v2235);
  *&STACK[0x2080] = vmlaq_f32(v2221, v2091, v2236);
  v2237 = *(v6 + 104);
  v2238 = *(v6 + 112);
  v2239 = vmlaq_f32(v2231, _Q1, v2237[26]);
  v2240 = vmlaq_f32(v2230, _Q1, v2237[25]);
  v2241 = vmlaq_f32(v2234, _Q1, v2237[42]);
  v2242 = vmlaq_f32(vmlaq_f32(v2217, _Q2, v2233), _Q1, v2237[41]);
  v2243 = vmlaq_f32(vmlaq_f32(v2222, _Q2, v2236), _Q1, v2237[58]);
  v2244 = vmlaq_f32(vmlaq_f32(v2223, _Q2, v2235), _Q1, v2237[57]);
  v2245 = vmlaq_f32(vmlaq_f32(v2226, _Q1, v2237[9]), v2084, v2237[11]);
  *&STACK[0x2380] = vmlaq_f32(vmlaq_f32(v2227, _Q1, v2237[10]), v2084, v2237[12]);
  *&STACK[0x2370] = v2245;
  v2246 = vmlaq_f32(v2240, v2084, v2237[27]);
  *&STACK[0x2280] = vmlaq_f32(v2239, v2084, v2237[28]);
  *&STACK[0x2270] = v2246;
  v2247 = vmlaq_f32(v2242, v2084, v2237[43]);
  *&STACK[0x2180] = vmlaq_f32(v2241, v2084, v2237[44]);
  *&STACK[0x2170] = v2247;
  v2248 = vmlaq_f32(v2244, v2084, v2237[59]);
  v2249 = vmlaq_f32(v2243, v2084, v2237[60]);
  v2245.i32[0] = vdupq_laneq_s32(v2082[22], 3).u32[0];
  v2245.i32[1] = v2082[38].i32[3];
  v2245.i32[2] = v2082[54].i32[3];
  v2245.i32[3] = v2082[70].i32[3];
  v2251 = *(v6 + 64);
  v2250 = *(v6 + 72);
  v2227.i64[0] = vzip1q_s32(v2251[21], v2251[37]).u64[0];
  v2227.i32[2] = v2251[53].i32[0];
  v2227.i32[3] = v2251[69].i32[0];
  *&STACK[0x20A0] = v2249;
  *&STACK[0x2090] = v2248;
  v2252 = vmulq_f32(v2245, v2084);
  v2253 = vmulq_f32(v2227, v2084);
  v2245.i32[0] = vdupq_laneq_s32(v2082[24], 3).u32[0];
  v2245.i32[1] = v2082[40].i32[3];
  v2245.i32[2] = v2082[56].i32[3];
  v2245.i32[3] = v2082[72].i32[3];
  v2227.i64[0] = vzip1q_s32(v2251[23], v2251[39]).u64[0];
  v2227.i32[2] = v2251[55].i32[0];
  v2227.i32[3] = v2251[71].i32[0];
  v2246.i32[0] = vdupq_laneq_s32(v2250[10], 3).u32[0];
  v2246.i32[1] = v2250[26].i32[3];
  v2246.i32[2] = v2250[42].i32[3];
  v2246.i32[3] = v2250[58].i32[3];
  v2254 = vmlaq_f32(v2253, _Q1, v2227);
  v2256 = *(v6 + 88);
  v2255 = *(v6 + 96);
  v2227.i64[0] = vzip1q_s32(v2256[9], v2256[25]).u64[0];
  v2227.i32[2] = v2256[41].i32[0];
  v2227.i32[3] = v2256[57].i32[0];
  v2257 = vmlaq_f32(vmlaq_f32(v2252, _Q1, v2245), _Q2, v2246);
  v2258 = vmlaq_f32(v2254, _Q2, v2227);
  v2259 = vmulq_f32(v2227, v2091);
  v2260 = vmulq_f32(v2246, v2091);
  v2246.i32[0] = vdupq_laneq_s32(v2250[12], 3).u32[0];
  v2246.i32[1] = v2250[28].i32[3];
  v2246.i32[2] = v2250[44].i32[3];
  v2246.i32[3] = v2250[60].i32[3];
  v2239.i64[0] = vzip1q_s32(v2256[11], v2256[27]).u64[0];
  v2239.i32[2] = v2256[43].i32[0];
  v2239.i32[3] = v2256[59].i32[0];
  v2261 = vmlaq_f32(v2258, _Q1, v2239);
  v2262 = vmlaq_f32(v2257, _Q1, v2246);
  v2263 = vmlaq_f32(v2260, v2116, v2246);
  v2264 = vmlaq_f32(v2259, v2116, v2239);
  v2246.i32[0] = vdupq_laneq_s32(v2250[14], 3).u32[0];
  v2246.i32[1] = v2250[30].i32[3];
  v2246.i32[2] = v2250[46].i32[3];
  v2246.i32[3] = v2250[62].i32[3];
  v2239.i64[0] = vzip1q_s32(v2256[13], v2256[29]).u64[0];
  v2239.i32[2] = v2256[45].i32[0];
  v2239.i32[3] = v2256[61].i32[0];
  *&STACK[0x1F40] = vmlaq_f32(v2261, v2084, v2239);
  *&STACK[0x1F30] = vmlaq_f32(v2262, v2084, v2246);
  v2265 = vmlaq_f32(v2264, v2139, v2239);
  v2266 = vmlaq_f32(v2263, v2139, v2246);
  v2267 = vmulq_f32(v2239, v2142);
  v2268 = vmulq_f32(v2246, v2142);
  v2246.i32[0] = vdupq_laneq_s32(v2250[16], 3).u32[0];
  v2246.i32[1] = v2250[32].i32[3];
  v2246.i32[2] = v2250[48].i32[3];
  v2246.i32[3] = v2250[64].i32[3];
  v2239.i64[0] = vzip1q_s32(v2256[15], v2256[31]).u64[0];
  v2239.i32[2] = v2256[47].i32[0];
  v2239.i32[3] = v2256[63].i32[0];
  *&STACK[0x1F60] = vmlaq_f32(v2265, _Q7, v2239);
  *&STACK[0x1F50] = vmlaq_f32(v2266, _Q7, v2246);
  v2265.i32[0] = vdupq_laneq_s32(v2250[18], 3).u32[0];
  v2265.i32[1] = v2250[34].i32[3];
  v2265.i32[2] = v2250[50].i32[3];
  v2265.i32[3] = v2250[66].i32[3];
  v2266.i64[0] = vzip1q_s32(v2256[17], v2256[33]).u64[0];
  v2266.i32[2] = v2256[49].i32[0];
  v2266.i32[3] = v2256[65].i32[0];
  v2269 = vmlaq_f32(vmlaq_f32(v2267, v2162, v2239), v2162, v2266);
  v2270 = vmlaq_f32(vmlaq_f32(v2268, v2162, v2246), v2162, v2265);
  v2271 = vmulq_f32(v2266, _Q7);
  v2272 = vmulq_f32(v2265, _Q7);
  _Q7.i32[0] = vdupq_laneq_s32(v2250[20], 3).u32[0];
  _Q7.i32[1] = v2250[36].i32[3];
  _Q7.i32[2] = v2250[52].i32[3];
  _Q7.i32[3] = v2250[68].i32[3];
  v2162.i64[0] = vzip1q_s32(v2256[19], v2256[35]).u64[0];
  v2162.i32[2] = v2256[51].i32[0];
  v2162.i32[3] = v2256[67].i32[0];
  *&STACK[0x1F80] = vmlaq_f32(v2269, v2142, v2162);
  *&STACK[0x1F70] = vmlaq_f32(v2270, v2142, _Q7);
  v2273 = vmlaq_f32(v2272, v2139, _Q7);
  v2274 = vmlaq_f32(v2271, v2139, v2162);
  v2139.i32[0] = vdupq_laneq_s32(v2250[22], 3).u32[0];
  v2139.i32[1] = v2250[38].i32[3];
  v2139.i32[2] = v2250[54].i32[3];
  v2139.i32[3] = v2250[70].i32[3];
  v2287.i64[0] = vzip1q_s32(v2256[21], v2256[37]).u64[0];
  v2287.i32[2] = v2256[53].i32[0];
  v2287.i32[3] = v2256[69].i32[0];
  v2275 = vmlaq_f32(v2274, v2116, v2287);
  v2276 = vmlaq_f32(v2273, v2116, v2139);
  v2277 = vmlaq_f32(vmulq_f32(_Q7, v2084), _Q1, v2139);
  v2116.i32[0] = vdupq_laneq_s32(v2250[24], 3).u32[0];
  v2116.i32[1] = v2250[40].i32[3];
  v2116.i32[2] = v2250[56].i32[3];
  v2116.i32[3] = v2250[72].i32[3];
  v2139.i64[0] = vzip1q_s32(v2256[23], v2256[39]).u64[0];
  v2139.i32[2] = v2256[55].i32[0];
  v2139.i32[3] = v2256[71].i32[0];
  *&STACK[0x1FA0] = vmlaq_f32(v2275, v2091, v2139);
  *&STACK[0x1F90] = vmlaq_f32(v2276, v2091, v2116);
  v2278 = vmlaq_f32(v2277, _Q2, v2116);
  v2279 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2162, v2084), _Q1, v2287), _Q2, v2139);
  _Q2.i32[0] = vdupq_laneq_s32(v2255[10], 3).u32[0];
  _Q2.i32[1] = v2255[26].i32[3];
  _Q2.i32[2] = v2255[42].i32[3];
  _Q2.i32[3] = v2255[58].i32[3];
  v2091.i64[0] = vzip1q_s32(v2238[9], v2238[25]).u64[0];
  v2091.i32[2] = v2238[41].i32[0];
  v2091.i32[3] = v2238[57].i32[0];
  v2280 = vmlaq_f32(v2279, _Q1, v2091);
  v2281 = vmlaq_f32(v2278, _Q1, _Q2);
  _Q1.i32[0] = vdupq_laneq_s32(v2255[12], 3).u32[0];
  _Q1.i32[1] = v2255[28].i32[3];
  _Q1.i32[2] = v2255[44].i32[3];
  _Q1.i32[3] = v2255[60].i32[3];
  v2286.i64[0] = vzip1q_s32(v2238[11], v2238[27]).u64[0];
  v2286.i32[2] = v2238[43].i32[0];
  v2286.i32[3] = v2238[59].i32[0];
  v2282 = vmlaq_f32(v2280, v2084, v2286);
  v2283 = &STACK[0x4D0];
  v2284 = &STACK[0x5D0];
  v2285 = &STACK[0x650];
  v2286.i64[1] = 0x3D3000003F090000;
  v2287.i64[1] = 0x7060504FFFFFFFFLL;
  v2288 = &STACK[0x550];
  v2289 = &STACK[0x650];
  *&STACK[0x1FC0] = v2282;
  *&STACK[0x1FB0] = vmlaq_f32(v2281, v2084, _Q1);
  __asm { FMOV            V8.4S, #0.16406 }

  do
  {
    v2291 = *(&STACK[0x22F0] + v2081);
    v2292 = *(&STACK[0x22F0] + v2081 + 16);
    v2293 = *(&STACK[0x21F0] + v2081);
    v2294 = *(&STACK[0x21F0] + v2081 + 16);
    v2295 = *(&STACK[0x20F0] + v2081);
    v2296 = *(&STACK[0x20F0] + v2081 + 16);
    v2297 = vmulq_f32(*(&STACK[0x1F30] + v2081 + 16), _Q8);
    v2298 = vmulq_f32(*(&STACK[0x1F30] + v2081), _Q8);
    v2299 = vzip2q_s32(v2298, v2297);
    v2300 = vzip1q_s32(v2298, v2297);
    v2301 = vpaddq_f32(vmulq_f32(v2291, xmmword_298496180), vmulq_f32(v2292, xmmword_298496170));
    v2302 = *(&STACK[0x2010] + v2081);
    v2303 = *(&STACK[0x2010] + v2081 + 16);
    v2304 = vpaddq_f32(vmulq_f32(v2293, xmmword_298496180), vmulq_f32(v2294, xmmword_298496170));
    v2305 = vpaddq_f32(vmulq_f32(v2295, xmmword_298496180), vmulq_f32(v2296, xmmword_298496170));
    v2306 = vpaddq_f32(vmulq_f32(v2302, xmmword_298496180), vmulq_f32(v2303, xmmword_298496170));
    v2307 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2291, xmmword_2984961A0), vmulq_f32(v2291, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2292, xmmword_298496190), vmulq_f32(v2292, xmmword_2984961B0)));
    v2308 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2293, xmmword_2984961A0), vmulq_f32(v2293, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2294, xmmword_298496190), vmulq_f32(v2294, xmmword_2984961B0)));
    v2309 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2295, xmmword_2984961A0), vmulq_f32(v2295, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2296, xmmword_298496190), vmulq_f32(v2296, xmmword_2984961B0)));
    v2310 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2302, xmmword_2984961A0), vmulq_f32(v2302, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2303, xmmword_298496190), vmulq_f32(v2303, xmmword_2984961B0)));
    v2311 = vaddq_f32(vaddq_f32(v2306, vqtbl1q_s8(v2306, xmmword_298495EB0)), vqtbl1q_s8(v2299, xmmword_298495ED0));
    v2312 = vaddq_f32(v2310, vqtbl1q_s8(v2310, xmmword_2984961D0));
    v2313 = vextq_s8(v2311, v2311, 4uLL);
    v2314 = vextq_s8(vextq_s8(v2313, v2312, 8uLL), v2313, 4uLL);
    v2311.i32[1] = v2312.i32[2];
    v2315 = vaddq_f32(vaddq_f32(v2305, vqtbl1q_s8(v2305, xmmword_298495EB0)), vqtbl1q_s8(v2299, xmmword_298495EC0));
    v2316 = vaddq_f32(v2309, vqtbl1q_s8(v2309, xmmword_2984961D0));
    v2317 = vextq_s8(v2315, v2315, 4uLL);
    v2315.i32[1] = v2316.i32[2];
    v2318 = vaddq_f32(vaddq_f32(v2304, vqtbl1q_s8(v2304, xmmword_298495EB0)), vqtbl1q_s8(v2300, xmmword_298495ED0));
    v2319 = vaddq_f32(v2308, vqtbl1q_s8(v2308, xmmword_2984961D0));
    v2320 = vaddq_f32(vaddq_f32(v2301, vqtbl1q_s8(v2301, xmmword_298495EB0)), vqtbl1q_s8(v2300, xmmword_298495EC0));
    v2321 = vaddq_f32(v2307, vqtbl1q_s8(v2307, xmmword_2984961D0));
    v2322 = vextq_s8(v2320, v2320, 4uLL);
    v2320.i32[1] = v2321.i32[2];
    *v2283 = vextq_s8(vextq_s8(v2322, v2321, 8uLL), v2322, 4uLL);
    *(v2283 + 1) = vuzp2q_s32(v2320, v2320);
    v2323 = vextq_s8(v2318, v2318, 4uLL);
    v2318.i32[1] = v2319.i32[2];
    *v2288 = vextq_s8(vextq_s8(v2323, v2319, 8uLL), v2323, 4uLL);
    *(v2288 + 1) = vuzp2q_s32(v2318, v2318);
    *v2284 = vextq_s8(vextq_s8(v2317, v2316, 8uLL), v2317, 4uLL);
    *(v2284 + 1) = vuzp2q_s32(v2315, v2315);
    *v2289 = v2314;
    *(v2289 + 1) = vuzp2q_s32(v2311, v2311);
    v2289 += 3;
    v2284 += 3;
    v2288 += 3;
    v2283 += 3;
    v2081 += 32;
  }

  while (v2081 != 160);
  *&STACK[0x440] = *v6;
  v2324 = *(v6 + 32);
  STACK[0x460] = v2324;
  STACK[0x468] = v6;
  v2325 = *(v6 + 135);
  LOBYTE(STACK[0x4C7]) = v2325;
  if (!v2325)
  {
    v2326 = *&STACK[0x650];
    v2286 = *&STACK[0x660];
    v2327 = vminnmq_f32(*&STACK[0x4E0], *&STACK[0x660]);
    *&STACK[0x4D0] = vminnmq_f32(*&STACK[0x4D0], *&STACK[0x650]);
    *&STACK[0x4E0] = v2327;
    v2329 = *&STACK[0x670];
    v2328 = *&STACK[0x680];
    v2330 = vminnmq_f32(*&STACK[0x500], *&STACK[0x680]);
    *&STACK[0x4F0] = vminnmq_f32(*&STACK[0x4F0], *&STACK[0x670]);
    *&STACK[0x500] = v2330;
    v2331 = *&STACK[0x690];
    v2287 = *&STACK[0x6A0];
    v2332 = vminnmq_f32(*&STACK[0x520], *&STACK[0x6A0]);
    *&STACK[0x510] = vminnmq_f32(*&STACK[0x510], *&STACK[0x690]);
    *&STACK[0x520] = v2332;
    v2334 = *&STACK[0x6B0];
    v2333 = *&STACK[0x6C0];
    v2335 = vminnmq_f32(*&STACK[0x540], *&STACK[0x6C0]);
    *&STACK[0x530] = vminnmq_f32(*&STACK[0x530], *&STACK[0x6B0]);
    *&STACK[0x540] = v2335;
    v2336 = vminnmq_f32(*&STACK[0x560], v2286);
    *&STACK[0x550] = vminnmq_f32(*&STACK[0x550], v2326);
    *&STACK[0x560] = v2336;
    v2337 = vminnmq_f32(*&STACK[0x580], v2328);
    *&STACK[0x570] = vminnmq_f32(*&STACK[0x570], v2329);
    *&STACK[0x580] = v2337;
    v2338 = vminnmq_f32(*&STACK[0x5A0], v2287);
    *&STACK[0x590] = vminnmq_f32(*&STACK[0x590], v2331);
    *&STACK[0x5A0] = v2338;
    v2339 = vminnmq_f32(*&STACK[0x5C0], v2333);
    *&STACK[0x5B0] = vminnmq_f32(*&STACK[0x5B0], v2334);
    *&STACK[0x5C0] = v2339;
    v2340 = vminnmq_f32(*&STACK[0x5E0], v2286);
    *&STACK[0x5D0] = vminnmq_f32(*&STACK[0x5D0], v2326);
    *&STACK[0x5E0] = v2340;
    v2341 = vminnmq_f32(*&STACK[0x600], v2328);
    *&STACK[0x5F0] = vminnmq_f32(*&STACK[0x5F0], v2329);
    *&STACK[0x600] = v2341;
    v2342 = vminnmq_f32(*&STACK[0x620], v2287);
    *&STACK[0x610] = vminnmq_f32(*&STACK[0x610], v2331);
    *&STACK[0x620] = v2342;
    v2343 = vminnmq_f32(*&STACK[0x640], v2333);
    *&STACK[0x630] = vminnmq_f32(*&STACK[0x630], v2334);
    *&STACK[0x640] = v2343;
  }

  if (*&STACK[0x4BC] < 0.0)
  {
    v2344 = 0;
    v2345 = 0uLL;
    v2286.i64[0] = 96;
    v2346 = 0uLL;
    do
    {
      v2347 = xmmword_2984959B0;
      if (v2324)
      {
        v2347 = *v2324;
      }

      v2348 = (&STACK[0x440] + v2344);
      v2350 = *(&STACK[0x440] + v2344 + 144);
      v2349 = *(&STACK[0x440] + v2344 + 160);
      v2352 = *(&STACK[0x440] + v2344 + 272);
      v2351 = *(&STACK[0x440] + v2344 + 288);
      v2354 = *(&STACK[0x440] + v2344 + 400);
      v2353 = *(&STACK[0x440] + v2344 + 416);
      v2355 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2351, *v2347.f32, 1), v2349, v2347.f32[0]), v2353, v2347, 2);
      v2356 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2352, *v2347.f32, 1), v2350, v2347.f32[0]), v2354, v2347, 2);
      v2348[79] = v2356;
      v2348[80] = v2355;
      v2357 = vsubq_f32(v2350, v2356);
      v2358 = vsubq_f32(v2349, v2355);
      v2359 = vsubq_f32(v2351, v2355);
      v2360 = vsubq_f32(v2352, v2356);
      v2361 = vsubq_f32(v2353, v2355);
      v2362 = vsubq_f32(v2354, v2356);
      v2363 = vmlaq_f32(vmulq_f32(v2360, v2360), v2357, v2357);
      v2287 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2359, v2359), v2358, v2358), v2361, v2361);
      v2357.i64[0] = v2344;
      v2346 = vaddq_f32(v2346, vbslq_s8(vdupq_lane_s64(vceqq_s64(v2357, v2286).i64[0], 0), v2287.u64[0], v2287));
      v2345 = vaddq_f32(v2345, vmlaq_f32(v2363, v2362, v2362));
      v2344 += 32;
    }

    while (v2344 != 128);
    v2364 = vaddq_f32(v2345, v2346);
    v2364.i64[0] = vpaddq_f32(v2364, v2364).u64[0];
    v2364.f32[0] = vrecpes_f32(vpadd_f32(*v2364.f32, *v2364.f32).f32[0]);
    *&STACK[0x4BC] = (v2364.f32[0] * 3.0) + (v2364.f32[0] * 3.0);
  }

  if (SLOBYTE(STACK[0x4C6]) < 0)
  {
    v2365 = 0uLL;
    v2366 = 528;
    v2367 = vdupq_n_s32(0x3B808081u);
    v2286.i64[0] = 624;
    v2368 = 0uLL;
    do
    {
      v2369 = (&STACK[0x440] + v2366);
      v2370 = vcgeq_f32(v2367, *(&STACK[0x440] + v2366));
      v2371 = vcgeq_f32(v2367, *(&STACK[0x440] + v2366 + 16));
      v2287.i64[0] = v2366;
      v2287 = vdupq_lane_s64(vceqq_s64(v2287, v2286).i64[0], 0);
      v2369[38] = v2370;
      v2369[39] = v2371;
      v2368 = vsubq_s32(v2368, vbslq_s8(v2287, v2371.u64[0], v2371));
      v2365 = vsubq_s32(v2365, v2370);
      v2366 += 32;
    }

    while (v2366 != 656);
    v2372 = vaddq_s32(v2365, v2368);
    v2372.i64[0] = vpaddq_s32(v2372, v2372).u64[0];
    LOBYTE(STACK[0x4C6]) = vpadd_s32(*v2372.i8, *v2372.i8).u8[0];
  }

  for (m = 656; ; m += 128)
  {
    v2375 = *(v2285 - 24);
    v2374 = *(v2285 - 23);
    v2377 = *(v2285 - 16);
    v2376 = *(v2285 - 15);
    v2379 = *(v2285 - 8);
    v2378 = *(v2285 - 7);
    v2381 = *v2285;
    v2380 = *(v2285 + 1);
    v4108.val[0] = vzip1q_s32(v2374, v2378);
    v4108.val[1] = vzip1q_s32(v2376, v2380);
    v4109.val[0] = vzip1q_s32(v2375, v2379);
    v4109.val[1] = vzip1q_s32(v2377, *v2285);
    v2382 = (&STACK[0x440] + m);
    vst2q_f32(v2382, v4109);
    v2382 += 8;
    v4109.val[0] = vzip2q_s32(v2375, v2379);
    v4109.val[1] = vzip2q_s32(v2377, v2381);
    vst2q_f32(v2382, v4109);
    v2383 = (&STACK[0x440] + m + 64);
    vst2q_f32(v2383, v4108);
    if (m == 1040)
    {
      break;
    }

    v4105.val[0] = vzip2q_s32(v2374, v2378);
    v4105.val[1] = vzip2q_s32(v2376, v2380);
    v2384 = (&STACK[0x440] + m + 96);
    vst2q_f32(v2384, v4105);
    v2285 += 4;
  }

  v2385 = 0;
  v2386 = *&STACK[0x4E0];
  v2387 = *&STACK[0x4D0];
  v2388 = *&STACK[0x550];
  v2389 = *&STACK[0x560];
  v2390 = *&STACK[0x5D0];
  v2391 = *&STACK[0x5E0];
  v2392 = vmulq_f32(v2386, v2386);
  v2393 = vmulq_f32(v2387, v2387);
  v2394 = *&STACK[0x650];
  v2395 = *&STACK[0x660];
  v2396 = vmulq_f32(v2389, v2389);
  v2397 = vmulq_f32(v2388, v2388);
  v2398 = vmulq_f32(v2391, v2391);
  v2399 = vmulq_f32(v2390, v2390);
  v2400 = vmulq_f32(v2395, v2395);
  v2401 = vmulq_f32(v2394, v2394);
  do
  {
    v2402 = (&STACK[0x440] + v2385);
    v2403 = *(&STACK[0x440] + v2385 + 192);
    v2404 = *(&STACK[0x440] + v2385 + 320);
    v2405 = *(&STACK[0x440] + v2385 + 448);
    v2406 = *(&STACK[0x440] + v2385 + 576);
    if (v2385 == 64)
    {
      v2406.i64[1] = 0;
      v2405.i64[1] = 0;
      v2404.i64[1] = 0;
      v2403.i64[1] = 0;
    }

    v2407 = v2402[11];
    v2408 = v2402[19];
    v2409 = v2402[27];
    v2410 = v2402[35];
    v2387 = vaddq_f32(v2387, v2407);
    v2386 = vaddq_f32(v2386, v2403);
    v2388 = vaddq_f32(v2388, v2408);
    v2389 = vaddq_f32(v2389, v2404);
    v2390 = vaddq_f32(v2390, v2409);
    v2391 = vaddq_f32(v2391, v2405);
    v2394 = vaddq_f32(v2394, v2410);
    v2395 = vaddq_f32(v2395, v2406);
    v2393 = vmlaq_f32(v2393, v2407, v2407);
    v2392 = vmlaq_f32(v2392, v2403, v2403);
    v2397 = vmlaq_f32(v2397, v2408, v2408);
    v2396 = vmlaq_f32(v2396, v2404, v2404);
    v2399 = vmlaq_f32(v2399, v2409, v2409);
    v2398 = vmlaq_f32(v2398, v2405, v2405);
    v2401 = vmlaq_f32(v2401, v2410, v2410);
    v2385 += 32;
    v2400 = vmlaq_f32(v2400, v2406, v2406);
  }

  while (v2385 != 96);
  v4053 = _Q8;
  v2411 = vpaddq_f32(vpaddq_f32(vaddq_f32(v2387, v2386), vaddq_f32(v2388, v2389)), vpaddq_f32(vaddq_f32(v2390, v2391), vaddq_f32(v2394, v2395)));
  v2412 = vmulq_f32(v2411, vdupq_n_s32(0x3D088889u));
  v2413 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v2393, v2392), vaddq_f32(v2397, v2396)), vpaddq_f32(vaddq_f32(v2399, v2398), vaddq_f32(v2401, v2400))), v2412, v2411);
  *&STACK[0x450] = v2412;
  v2413.i64[0] = vpaddq_f32(v2413, v2413).u64[0];
  LODWORD(STACK[0x4B8]) = vpadd_f32(*v2413.f32, *v2413.f32).u32[0];
  if (SLOBYTE(STACK[0x4C8]) < 1)
  {
    LOBYTE(STACK[0x4C8]) = v2412.f32[3] >= 0.99993;
  }

  memcpy(&STACK[0x1440], &STACK[0x440], 0x570uLL);
  v2418 = *&STACK[0x1450];
  v2419 = SLOBYTE(STACK[0x14C6]);
  v2420 = LOBYTE(STACK[0x14C7]);
  if (v2419 >= 1 && LOBYTE(STACK[0x14C7]))
  {
    v2421 = 0;
    v2422 = vcgezq_s32(*&STACK[0x18B0]);
    v2423 = vcgezq_s32(*&STACK[0x18C0]);
    v2424 = vandq_s8(*&STACK[0x14E0], v2423);
    v2425 = vandq_s8(*&STACK[0x14D0], v2422);
    v2426 = vandq_s8(*&STACK[0x1560], v2423);
    v2427 = vandq_s8(*&STACK[0x1550], v2422);
    v2428 = vandq_s8(*&STACK[0x15E0], v2423);
    v2414 = vandq_s8(*&STACK[0x15D0], v2422);
    v2430 = *&STACK[0x1650];
    v2415 = vandq_s8(*&STACK[0x1660], v2423);
    v2429 = vandq_s8(*&STACK[0x1650], v2422);
    v2430.i64[0] = 64;
    do
    {
      v2416.i64[0] = v2421;
      v2431.i64[0] = *(&STACK[0x1440] + v2421 + 1184);
      v2431.i64[1] = -1;
      v2432 = vcgezq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v2416, v2430).i64[0], 0), v2431, *(&STACK[0x1440] + v2421 + 1184)));
      v2433 = vcgezq_s32(*(&STACK[0x1440] + v2421 + 1168));
      v2425 = vaddq_f32(v2425, vandq_s8(*(&STACK[0x1440] + v2421 + 176), v2433));
      v2424 = vaddq_f32(v2424, vandq_s8(*(&STACK[0x1440] + v2421 + 192), v2432));
      v2427 = vaddq_f32(v2427, vandq_s8(*(&STACK[0x1440] + v2421 + 304), v2433));
      v2426 = vaddq_f32(v2426, vandq_s8(*(&STACK[0x1440] + v2421 + 320), v2432));
      v2414 = vaddq_f32(v2414, vandq_s8(*(&STACK[0x1440] + v2421 + 432), v2433));
      v2428 = vaddq_f32(v2428, vandq_s8(*(&STACK[0x1440] + v2421 + 448), v2432));
      v2416 = vandq_s8(*(&STACK[0x1440] + v2421 + 560), v2433);
      v2429 = vaddq_f32(v2429, v2416);
      v2415 = vaddq_f32(v2415, vandq_s8(*(&STACK[0x1440] + v2421 + 576), v2432));
      v2421 += 32;
    }

    while (v2421 != 96);
    v2418 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v2425, v2424), vaddq_f32(v2427, v2426)), vpaddq_f32(vaddq_f32(v2414, v2428), vaddq_f32(v2429, v2415))), ReciprocalTable[30 - v2419]);
  }

  v2434 = *v5;
  v2435 = LOBYTE(STACK[0x14C8]);
  v2436 = *&STACK[0x14BC] <= 900.0;
  v2437 = vdupq_lane_s32(*v2418.f32, 0);
  v2438 = vdupq_lane_s32(*v2418.f32, 1);
  *&STACK[0x380] = vdupq_laneq_s32(v2418, 2);
  *&STACK[0x390] = vdupq_laneq_s32(v2418, 3);
  STACK[0x310] = &STACK[0x1550];
  v4090 = v2418;
  v4065 = v2438;
  v4066 = v2437;
  v4054 = v2434;
  if (v2436)
  {
    v2455 = 0;
    v2456 = xmmword_298495620;
    v2457 = xmmword_298495600;
    v2458.i64[0] = -1;
    v2458.i64[1] = -1;
    v2459.i64[0] = 0x7F0000007FLL;
    v2459.i64[1] = 0x7F0000007FLL;
    v2460 = STACK[0x1460];
    v2414.i64[0] = 96;
    v2461.i64[0] = 0x800000008;
    v2461.i64[1] = 0x800000008;
    v2462.i64[0] = 0x7F0000007FLL;
    v2462.i64[1] = 0x7F0000007FLL;
    v2463.i64[0] = 0x7F0000007FLL;
    v2463.i64[1] = 0x7F0000007FLL;
    v2464.i64[0] = -1;
    v2464.i64[1] = -1;
    while (1)
    {
      v2465 = vsubq_f32(*(&STACK[0x1440] + v2455 + 144), v2437);
      v2466 = vsubq_f32(*(&STACK[0x1440] + v2455 + 160), v2437);
      v2467 = vsubq_f32(*(&STACK[0x1440] + v2455 + 272), v2438);
      v2468 = vsubq_f32(*(&STACK[0x1440] + v2455 + 288), v2438);
      v2469 = vsubq_f32(*(&STACK[0x1440] + v2455 + 400), *&STACK[0x380]);
      v2470 = vsubq_f32(*(&STACK[0x1440] + v2455 + 416), *&STACK[0x380]);
      v2471 = vsubq_f32(*(&STACK[0x1440] + v2455 + 528), *&STACK[0x390]);
      v2472 = vsubq_f32(*(&STACK[0x1440] + v2455 + 544), *&STACK[0x390]);
      v2473 = vmulq_f32(v2466, v2466);
      v2474 = vmulq_f32(v2465, v2465);
      v2475 = vmulq_f32(v2468, v2468);
      v2476 = vmulq_f32(v2467, v2467);
      v2477 = vmulq_f32(v2470, v2470);
      v2478 = vmulq_f32(v2469, v2469);
      v2479 = vmulq_f32(v2472, v2472);
      v2480 = vmulq_f32(v2471, v2471);
      if (!v2460)
      {
        break;
      }

      v2481 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2475, *v2460, 1), v2473, COERCE_FLOAT(*v2460->f32)), v2477, *v2460->f32, 2), v2479, *v2460->f32, 3), *&STACK[0x3A0]);
      v2482 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2476, *v2460, 1), v2474, COERCE_FLOAT(*v2460->f32)), v2478, *v2460->f32, 2), v2480, *v2460->f32, 3), *&STACK[0x3A0]);
      if (v2420)
      {
        goto LABEL_499;
      }

LABEL_500:
      v2478.i64[0] = v2455;
      v2483 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2478, v2414).i64[0], 0), v2481.u64[0], v2481);
      v2464 = vbslq_s8(vcgtq_f32(v2483, v2463), v2456, v2464);
      v2458 = vbslq_s8(vcgtq_f32(v2482, v2462), v2457, v2458);
      v2462 = vmaxnmq_f32(v2462, v2482);
      v2463 = vmaxnmq_f32(v2463, v2483);
      v2457 = vaddq_s32(v2457, v2461);
      v2456 = vaddq_s32(v2456, v2461);
      v2455 += 32;
      if (v2455 == 128)
      {
        if (v2435)
        {
          v2484 = 0;
        }

        else
        {
          v2484 = -1;
        }

        v2485 = vmaxnmq_f32(v2462, v2463);
        v2486 = vbslq_s8(vcgtq_f32(v2462, v2463), v2458, v2464);
        v2487 = vextq_s8(v2485, v2485, 8uLL);
        v2488 = vbslq_s8(vcgtq_f32(v2485, v2487), v2486, vextq_s8(v2486, v2486, 8uLL));
        v2489 = vmaxnmq_f32(v2485, v2487);
        v2490 = vcgtq_f32(v2489, vrev64q_s32(v2489));
        v2491 = vbslq_s8(v2490, v2488, vdupq_lane_s32(*v2488.i8, 1)).u32[0];
        v2492 = *(&STACK[0x16D0] + v2491);
        v2493 = vsubq_f32(v2418, v2492);
        if (v2460)
        {
          v2494 = *v2460->f32;
        }

        else
        {
          v2494 = vdupq_n_s32(0x3EAAAAABu);
        }

        v2496 = 0;
        v2497 = xmmword_298495620;
        v2490.i64[0] = 96;
        STACK[0x350] = v2491;
        v2498 = vdupq_lane_s32(*v2492.f32, 0);
        v2499 = vdupq_lane_s32(*v2492.f32, 1);
        v2500 = vmulq_f32(v2493, v2494);
        v2501.i64[0] = -1;
        v2501.i64[1] = -1;
        v2502 = vdupq_laneq_s32(v2492, 2);
        *&STACK[0x370] = v2492;
        v2503 = vdupq_laneq_s32(v2492, 3);
        v2504.i64[0] = 0x7F0000007FLL;
        v2504.i64[1] = 0x7F0000007FLL;
        v2505.i64[0] = 0x800000008;
        v2505.i64[1] = 0x800000008;
        v2506 = vdupq_lane_s32(*v2500.i8, 0);
        v2507 = vdupq_laneq_s32(v2500, 2);
        v2508.i64[0] = 0x7F0000007FLL;
        v2508.i64[1] = 0x7F0000007FLL;
        v2509 = vdupq_laneq_s32(v2500, 3);
        v2510.i64[0] = 0x7F0000007FLL;
        v2510.i64[1] = 0x7F0000007FLL;
        v2511.i64[0] = -1;
        v2511.i64[1] = -1;
        v2512 = xmmword_298495600;
        do
        {
          v2513 = (&STACK[0x1440] + v2496);
          v2514 = vsubq_f32(*(&STACK[0x1440] + v2496 + 144), v2498);
          v2515 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2496 + 288), v2499), *v2500.i8, 1), v2506, vsubq_f32(*(&STACK[0x1440] + v2496 + 160), v2498)), v2507, vsubq_f32(*(&STACK[0x1440] + v2496 + 416), v2502)), v2509, vsubq_f32(*(&STACK[0x1440] + v2496 + 544), v2503));
          v2516 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2496 + 272), v2499), *v2500.i8, 1), v2506, v2514), v2507, vsubq_f32(*(&STACK[0x1440] + v2496 + 400), v2502)), v2509, vsubq_f32(*(&STACK[0x1440] + v2496 + 528), v2503));
          if (v2420)
          {
            v2514 = vcltzq_s32(v2513[72]);
            v2515 = vbslq_s8(v2514, v2504, v2515);
            v2516 = vbslq_s8(vcltzq_s32(v2513[71]), v2504, v2516);
          }

          v2514.i64[0] = v2496;
          v2517 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2514, v2490).i64[0], 0), v2515.u64[0], v2515);
          v2511 = vbslq_s8(vcgtq_f32(v2517, v2510), v2497, v2511);
          v2501 = vbslq_s8(vcgtq_f32(v2516, v2508), v2512, v2501);
          v2508 = vmaxnmq_f32(v2508, v2516);
          v2510 = vmaxnmq_f32(v2510, v2517);
          v2512 = vaddq_s32(v2512, v2505);
          v2497 = vaddq_s32(v2497, v2505);
          v2496 += 32;
        }

        while (v2496 != 128);
        v2518 = vmaxnmq_f32(v2508, v2510);
        v2519 = vbslq_s8(vcgtq_f32(v2508, v2510), v2501, v2511);
        v2520 = vextq_s8(v2518, v2518, 8uLL);
        v2521 = vbslq_s8(vcgtq_f32(v2518, v2520), v2519, vextq_s8(v2519, v2519, 8uLL));
        v2522 = vmaxnmq_f32(v2518, v2520);
        v2523 = vbslq_s8(vcgtq_f32(v2522, vrev64q_s32(v2522)), v2521, vdupq_lane_s32(*v2521.i8, 1)).i32[0];
        *&STACK[0x360] = *(&STACK[0x16D0] + v2523);
        if (v2435)
        {
          v2524 = 3;
        }

        else
        {
          v2524 = 4;
        }

        if (v2435)
        {
          v2525 = 6;
        }

        else
        {
          v2525 = 8;
        }

        v2526 = WeightInfoForSingleLineSingleWeight_6x5(30, v2525);
        v2528 = *&STACK[0x360];
        v2527 = *&STACK[0x370];
        v2529 = 0;
        v2530 = ReciprocalTable[BYTE4(v2526)];
        *v2531.i32 = v2530 * (vcvts_n_f32_u32(v2524 + v2484, 2uLL) * v2530);
        v2532 = vsubq_f32(*&STACK[0x360], *&STACK[0x370]);
        v2533.i64[0] = 0x8000000080000000;
        v2533.i64[1] = 0x8000000080000000;
        v2534 = vdupq_n_s32(0x3B808081u);
        v2535 = vbslq_s8(vcgtq_f32(v2534, vabdq_f32(*&STACK[0x360], *&STACK[0x370])), vorrq_s8(vandq_s8(v2532, v2533), v2534), v2532);
        __asm { FMOV            V1.4S, #1.0 }

        *&STACK[0x340] = _Q1;
        v2537 = vdivq_f32(_Q1, v2535);
        v2538 = vdupq_lane_s32(*v2537.f32, 0);
        v2539 = vmulq_f32(v2527, v2537);
        v2540 = vnegq_f32(vdupq_lane_s32(*v2539.i8, 0));
        v2541.i32[0] = v2537.i32[1];
        v2542 = vdupq_lane_s32(*v2537.f32, 1);
        v2543 = vnegq_f32(vdupq_lane_s32(*v2539.i8, 1));
        v2544.i32[0] = v2537.i32[2];
        v2545 = vdupq_laneq_s32(v2537, 2);
        v2546 = vnegq_f32(vdupq_laneq_s32(v2539, 2));
        v2547.i32[0] = v2537.i32[3];
        v2548 = vdupq_laneq_s32(v2537, 3);
        v2549 = vnegq_f32(vdupq_laneq_s32(v2539, 3));
        v2550 = vdupq_lane_s32(v2531, 0);
        v2551 = 0uLL;
        v2552 = STACK[0x310];
        v2553 = 0uLL;
        do
        {
          v2554 = vmlaq_f32(v2540, v2538, v2552[-8]);
          v2555 = vmlaq_f32(v2540, v2538, v2552[-7]);
          v2556 = vmlaq_f32(v2543, v2542, v2552[1]);
          v2557 = vmlaq_f32(v2543, v2542, *v2552);
          v2558 = vmlaq_f32(v2546, v2545, v2552[9]);
          v2559 = vmlaq_f32(v2546, v2545, v2552[8]);
          v2560 = vmlaq_f32(v2549, v2548, v2552[16]);
          v2561 = vmlaq_f32(v2549, v2548, v2552[17]);
          v2562 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2556, v2556), v2555, v2555), v2558, v2558), v2561, v2561);
          v2563 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2557, v2557), v2554, v2554), v2559, v2559), v2560, v2560);
          v2564 = vcgtq_f32(v2550, v2562);
          v2554.i64[0] = v2529;
          v2559.i64[0] = 3;
          v2565 = vcgtq_f32(v2550, v2563);
          v2566 = &STACK[0x440] + 4 * v2529;
          v2567 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2554, v2559).i64[0], 0), v2564.u64[0], v2564);
          *v2566 = v2565;
          *(v2566 + 1) = v2567;
          v2553 = vsubq_s32(v2553, v2567);
          v2551 = vsubq_s32(v2551, v2565);
          ++v2529;
          v2552 += 2;
        }

        while (v2529 != 4);
        v2568 = vaddq_s32(v2551, v2553);
        v2568.i64[0] = vpaddq_s32(v2568, v2568).u64[0];
        v2569 = vpadd_s32(*v2568.i8, *v2568.i8).u8[0];
        if ((v2569 & 0xFE) != 0)
        {
          v2570 = 0;
          v2571 = vcltzq_s32(*&STACK[0x440]);
          v2572 = vcltzq_s32(*&STACK[0x450]);
          v2573 = vandq_s8(v2572, *&STACK[0x14E0]);
          v2574 = vandq_s8(v2571, *&STACK[0x14D0]);
          v618 = STACK[0x310];
          v2575 = vandq_s8(*(STACK[0x310] + 16), v2572);
          v2576 = vandq_s8(*STACK[0x310], v2571);
          v2577 = vandq_s8(*(STACK[0x310] + 144), v2572);
          v2578 = vandq_s8(*(STACK[0x310] + 128), v2571);
          v2581 = *(STACK[0x310] + 256);
          v2579 = vandq_s8(*(STACK[0x310] + 272), v2572);
          v2580 = vandq_s8(v2581, v2571);
          v2581.i64[0] = 64;
          v5 = v4102;
          do
          {
            v2562.i64[0] = v2570;
            v2582 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v2562, v2581).i64[0], 0), *(&STACK[0x460] + v2570 + 16), *(&STACK[0x460] + v2570 + 16)));
            v2583 = vcltzq_s32(*(&STACK[0x460] + v2570));
            v2574 = vaddq_f32(v2574, vandq_s8(v2583, *(&STACK[0x1440] + v2570 + 176)));
            v2573 = vaddq_f32(v2573, vandq_s8(v2582, *(&STACK[0x1440] + v2570 + 192)));
            v2576 = vaddq_f32(v2576, vandq_s8(v2583, *(&STACK[0x1440] + v2570 + 304)));
            v2575 = vaddq_f32(v2575, vandq_s8(v2582, *(&STACK[0x1440] + v2570 + 320)));
            v2578 = vaddq_f32(v2578, vandq_s8(*(&STACK[0x1440] + v2570 + 432), v2583));
            v2577 = vaddq_f32(v2577, vandq_s8(*(&STACK[0x1440] + v2570 + 448), v2582));
            v2562 = *(&STACK[0x1440] + v2570 + 560);
            v2580 = vaddq_f32(v2580, vandq_s8(v2562, v2583));
            v2579 = vaddq_f32(v2579, vandq_s8(*(&STACK[0x1440] + v2570 + 576), v2582));
            v2570 += 32;
          }

          while (v2570 != 96);
          v2584 = vpaddq_f32(vaddq_f32(v2574, v2573), vaddq_f32(v2576, v2575));
          v2543 = vpaddq_f32(vaddq_f32(v2578, v2577), vaddq_f32(v2580, v2579));
          v2527 = vmulq_n_f32(vpaddq_f32(v2584, v2543), ReciprocalTable[v2569]);
        }

        else
        {
          v5 = v4102;
          v618 = STACK[0x310];
        }

        v2585 = 0;
        v2537.f32[0] = v2537.f32[0] * v2528.f32[0];
        v2586 = vnegq_f32(vdupq_lane_s32(*v2537.f32, 0));
        *v2541.i32 = vmuls_lane_f32(*v2541.i32, *v2528.f32, 1);
        *v2544.i32 = vmuls_lane_f32(*v2544.i32, v2528, 2);
        v2587 = vnegq_f32(vdupq_lane_s32(v2541, 0));
        v2588 = vnegq_f32(vdupq_lane_s32(v2544, 0));
        *v2547.i32 = vmuls_lane_f32(*v2547.i32, v2528, 3);
        v2589 = vnegq_f32(vdupq_lane_s32(v2547, 0));
        v2590 = 0uLL;
        v2543.i64[0] = 3;
        v2591 = v618;
        v2592 = 0uLL;
        do
        {
          v2593 = vmlaq_f32(v2586, v2538, v2591[-8]);
          v2594 = vmlaq_f32(v2586, v2538, v2591[-7]);
          v2595 = vmlaq_f32(v2587, v2542, v2591[1]);
          v2596 = vmlaq_f32(v2587, v2542, *v2591);
          v2597 = vmlaq_f32(v2588, v2545, v2591[9]);
          v2598 = vmlaq_f32(v2588, v2545, v2591[8]);
          v2599 = vmlaq_f32(v2589, v2548, v2591[16]);
          v2600 = vmlaq_f32(v2589, v2548, v2591[17]);
          v2601 = vcgtq_f32(v2550, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2595, v2595), v2594, v2594), v2597, v2597), v2600, v2600));
          v2594.i64[0] = v2585;
          v2602 = vcgtq_f32(v2550, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2596, v2596), v2593, v2593), v2598, v2598), v2599, v2599));
          v2603 = &STACK[0x440] + 4 * v2585;
          v2604 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2594, v2543).i64[0], 0), v2601.u64[0], v2601);
          *v2603 = v2602;
          *(v2603 + 1) = v2604;
          v2592 = vsubq_s32(v2592, v2604);
          v2590 = vsubq_s32(v2590, v2602);
          ++v2585;
          v2591 += 2;
        }

        while (v2585 != 4);
        v2605 = vaddq_s32(v2590, v2592);
        v2605.i64[0] = vpaddq_s32(v2605, v2605).u64[0];
        v2606 = vpadd_s32(*v2605.i8, *v2605.i8).u8[0];
        v2607 = v2606 + v2569;
        *&STACK[0x370] = v2527;
        if ((v2606 & 0xFE) != 0)
        {
          v2608 = 0;
          v2609 = vcltzq_s32(*&STACK[0x440]);
          v2610 = vcltzq_s32(*&STACK[0x450]);
          v2611 = vandq_s8(v2610, *&STACK[0x14E0]);
          v2612 = vandq_s8(v2609, *&STACK[0x14D0]);
          v2613 = vandq_s8(*(v618 + 1), v2610);
          v2614 = vandq_s8(*v618, v2609);
          v2615 = vandq_s8(*(v618 + 9), v2610);
          v2616 = vandq_s8(*(v618 + 8), v2609);
          v2619 = *(v618 + 16);
          v2617 = vandq_s8(*(v618 + 17), v2610);
          v2618 = vandq_s8(v2619, v2609);
          v2619.i64[0] = 64;
          do
          {
            v2592.i64[0] = v2608;
            v2620 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v2592, v2619).i64[0], 0), *(&STACK[0x460] + v2608 + 16), *(&STACK[0x460] + v2608 + 16)));
            v2621 = vcltzq_s32(*(&STACK[0x460] + v2608));
            v2612 = vaddq_f32(v2612, vandq_s8(v2621, *(&STACK[0x1440] + v2608 + 176)));
            v2611 = vaddq_f32(v2611, vandq_s8(v2620, *(&STACK[0x1440] + v2608 + 192)));
            v2614 = vaddq_f32(v2614, vandq_s8(v2621, *(&STACK[0x1440] + v2608 + 304)));
            v2613 = vaddq_f32(v2613, vandq_s8(v2620, *(&STACK[0x1440] + v2608 + 320)));
            v2616 = vaddq_f32(v2616, vandq_s8(*(&STACK[0x1440] + v2608 + 432), v2621));
            v2615 = vaddq_f32(v2615, vandq_s8(*(&STACK[0x1440] + v2608 + 448), v2620));
            v2592 = *(&STACK[0x1440] + v2608 + 560);
            v2618 = vaddq_f32(v2618, vandq_s8(v2592, v2621));
            v2617 = vaddq_f32(v2617, vandq_s8(*(&STACK[0x1440] + v2608 + 576), v2620));
            v2608 += 32;
          }

          while (v2608 != 96);
          *&STACK[0x360] = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v2612, v2611), vaddq_f32(v2614, v2613)), vpaddq_f32(vaddq_f32(v2616, v2615), vaddq_f32(v2618, v2617))), ReciprocalTable[v2606]);
        }

        else
        {
          *&STACK[0x360] = v2528;
        }

        STACK[0x438] = WeightInfoForSingleLineSingleWeight_6x5(v2607, v2525);
        if (LOBYTE(STACK[0x14C6]))
        {
          v2453 = *&STACK[0x360];
          v2454 = *&STACK[0x370];
          v2622.i32[0] = HIDWORD(*&STACK[0x370]);
          if (LOBYTE(STACK[0x14C7]))
          {
            if (v2622.f32[0] != 0.0 && v2453.f32[3] != 0.0)
            {
              v2626 = vsubq_f32(v2453, v2454);
              v2623.i32[0] = v2626.i32[3];
              if (v2626.f32[3] == 0.0)
              {
                if (LOBYTE(STACK[0x14C6]) == 48)
                {
                  v2454 = 0uLL;
                  goto LABEL_579;
                }

                v2624.i64[0] = 0x3F0000003FLL;
                v2624.i64[1] = 0x3F0000003FLL;
                v2454 = vnegq_f32(v2624);
              }

              v2624.i64[0] = 0;
              v2702 = vdupq_lane_s32(*&vcgtq_f32(v2624, v2623), 0);
              v2703 = vbslq_s8(v2702, vnegq_f32(v2626), v2626);
              v2704 = vbslq_s8(v2702, v2453, v2454);
              v2625.f32[0] = v2704.f32[3] / v2703.f32[3];
              v2705 = vmlsq_lane_f32(v2704, v2703, v2625, 0);
              v2703.f32[0] = -v2530;
              v2625.f32[0] = v2530 + 1.0;
              if ((vminvq_u32(vandq_s8(vcgtq_f32(v2705, vdupq_lane_s32(*v2703.f32, 0)), vcgtq_f32(vdupq_lane_s32(v2625, 0), v2705))) & 0x80000000) != 0)
              {
                v2453 = vbslq_s8(v2702, v2454, v2453);
                v2454 = vminnmq_f32(vmaxnmq_f32(v2705, 0), *&STACK[0x340]);
              }

              else
              {
                v2706 = *(&STACK[0x16D0] + STACK[0x350]);
                v2707 = *(&STACK[0x16D0] + v2523);
                v2708 = v2706;
                v2708.i32[3] = 0;
                v2709 = v2707;
                v2709.i32[3] = 0;
                v2710 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v2707, v2706)), 3)), 0x1FuLL));
                v2453 = vbslq_s8(v2710, v2707, v2709);
                v2454 = vbslq_s8(v2710, v2708, v2706);
              }
            }
          }

          else
          {
            v2627 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v2453, 3), v2622), 0);
            v2453 = vandq_s8(v2453, v2627);
            v2454 = vbicq_s8(v2454, v2627);
          }

          goto LABEL_579;
        }

LABEL_560:
        v2453 = *&STACK[0x360];
        v2454 = *&STACK[0x370];
        goto LABEL_579;
      }
    }

    v2478 = vaddq_f32(vaddq_f32(v2474, v2476), v2478);
    v2482 = vaddq_f32(v2478, v2480);
    v2481 = vaddq_f32(vaddq_f32(vaddq_f32(v2473, v2475), v2477), v2479);
    if (!v2420)
    {
      goto LABEL_500;
    }

LABEL_499:
    v2478 = vcltzq_s32(*(&STACK[0x1440] + v2455 + 1152));
    v2481 = vbslq_s8(v2478, v2459, v2481);
    v2482 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v2455 + 1136)), v2459, v2482);
    goto LABEL_500;
  }

  if (v2435)
  {
    v2439 = WeightInfoForSingleLineSingleWeight_6x5(2, 2);
    v2440 = 0;
    STACK[0x438] = v2439;
    v2441.i64[0] = 0x7F0000007FLL;
    v2441.i64[1] = 0x7F0000007FLL;
    v2442 = vnegq_f32(v2441);
    v2443 = v2442;
    v2444.i64[0] = 0x7F0000007FLL;
    v2444.i64[1] = 0x7F0000007FLL;
    do
    {
      v2446 = *(&STACK[0x1930] + v2440);
      v2445 = *(&STACK[0x1930] + v2440 + 16);
      v2442 = vminnmq_f32(v2446, v2442);
      v2443 = vminnmq_f32(v2445, v2443);
      v2441 = vmaxnmq_f32(v2446, v2441);
      v2444 = vmaxnmq_f32(v2445, v2444);
      v2440 += 32;
    }

    while (v2440 != 128);
    v2447 = vminnmq_f32(v2442, v2443);
    v2448 = vmaxnmq_f32(v2441, v2444);
    v2449 = vminnmq_f32(v2447, vextq_s8(v2447, v2447, 8uLL));
    v2450 = vmaxnmq_f32(v2448, vextq_s8(v2448, v2448, 8uLL));
    v2451 = vminnmq_f32(v2449, vrev64q_s32(v2449));
    v2452 = vmaxnmq_f32(v2450, vrev64q_s32(v2450));
    v2451.i32[3] = 0;
    v2452.i32[3] = 0;
    v2453 = vorrq_s8(v2452, xmmword_298492170);
    v2454 = vorrq_s8(v2451, xmmword_298492170);
    goto LABEL_579;
  }

  if (STACK[0x1460])
  {
    v2495 = *STACK[0x1460];
    v2495.i32[3] = 0;
  }

  else
  {
    v2495 = xmmword_2984959B0;
  }

  v2628 = vmulq_f32(v2418, v2495);
  *v2628.i8 = vadd_f32(*v2628.i8, *&vextq_s8(v2628, v2628, 8uLL));
  v2629 = vadd_f32(*v2628.i8, vdup_lane_s32(*v2628.i8, 1));
  v2630 = vaddv_f32(*v2628.i8);
  v2631 = vdupq_lane_s32(v2629, 0);
  v2632 = xmmword_298495620;
  v2633 = xmmword_298495600;
  v2634 = &STACK[0x18B0];
  v2635.i64[0] = -1;
  v2635.i64[1] = -1;
  v2636.i64[0] = 0x7F0000007FLL;
  v2636.i64[1] = 0x7F0000007FLL;
  v2637 = 4;
  v2415.i64[0] = 1;
  v2638.i64[0] = 0x800000008;
  v2638.i64[1] = 0x800000008;
  v2639 = &STACK[0x18B0];
  v2640.i64[0] = 0x7F0000007FLL;
  v2640.i64[1] = 0x7F0000007FLL;
  v2641.i64[0] = 0x7F0000007FLL;
  v2641.i64[1] = 0x7F0000007FLL;
  v2642.i64[0] = -1;
  v2642.i64[1] = -1;
  v2643 = *&STACK[0x390];
  do
  {
    v2644 = vsubq_f32(*(v2639 + 8), v2631);
    v2645 = vsubq_f32(*(v2639 + 9), v2631);
    v2646 = vsubq_f32(*(v2639 - 37), v2643);
    v2647 = vsubq_f32(*(v2639 - 38), v2643);
    v2648 = vmlaq_f32(vmulq_f32(v2646, v2646), v2645, v2645);
    v2649 = vmlaq_f32(vmulq_f32(v2647, v2647), v2644, v2644);
    if (v2420)
    {
      v2644 = vcltzq_s32(*(v2639 + 1));
      v2648 = vbslq_s8(v2644, v2636, v2648);
      v2649 = vbslq_s8(vcltzq_s32(*v2639), v2636, v2649);
    }

    v2644.i64[0] = v2637;
    v2650 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2644, v2415).i64[0], 0), v2648.u64[0], v2648);
    v2642 = vbslq_s8(vcgtq_f32(v2650, v2641), v2632, v2642);
    v2635 = vbslq_s8(vcgtq_f32(v2649, v2640), v2633, v2635);
    v2640 = vmaxnmq_f32(v2640, v2649);
    v2641 = vmaxnmq_f32(v2641, v2650);
    v2633 = vaddq_s32(v2633, v2638);
    v2632 = vaddq_s32(v2632, v2638);
    v2639 += 4;
    --v2637;
  }

  while (v2637);
  v2651 = vmaxnmq_f32(v2640, v2641);
  v2652 = vbslq_s8(vcgtq_f32(v2640, v2641), v2635, v2642);
  v2653 = vextq_s8(v2651, v2651, 8uLL);
  v2654 = vbslq_s8(vcgtq_f32(v2651, v2653), v2652, vextq_s8(v2652, v2652, 8uLL));
  v2655 = vmaxnmq_f32(v2651, v2653);
  v2656 = vcgtq_f32(v2655, vrev64q_s32(v2655));
  v2659 = vbslq_s8(v2656, v2654, vdupq_lane_s32(*v2654.i8, 1)).u64[0];
  v2657 = v2659.i32[0];
  v2658 = v2659.i32[0];
  v2659.i32[0] = *(&STACK[0x1930] + v2659.i32[0]);
  LODWORD(v2417) = *(&STACK[0x1650] + v2658);
  *v2656.i32 = v2630 - *v2659.i32;
  v2660 = vdupq_lane_s32(v2659, 0);
  v2661 = vdupq_lane_s32(*&v2417, 0);
  v2662 = vdupq_lane_s32(*v2656.i8, 0);
  v2663 = v2418.f32[3] - *&v2417;
  v2664 = xmmword_298495620;
  v2665 = xmmword_298495600;
  v2666.i64[0] = -1;
  v2666.i64[1] = -1;
  v2667.i64[0] = 0x7F0000007FLL;
  v2667.i64[1] = 0x7F0000007FLL;
  v2668 = 4;
  v2650.i64[0] = 1;
  v2669.i64[0] = 0x800000008;
  v2669.i64[1] = 0x800000008;
  v2670.i64[0] = 0x7F0000007FLL;
  v2670.i64[1] = 0x7F0000007FLL;
  v2671.i64[0] = 0x7F0000007FLL;
  v2671.i64[1] = 0x7F0000007FLL;
  v2672.i64[0] = -1;
  v2672.i64[1] = -1;
  do
  {
    v2673 = vsubq_f32(*(v2634 + 8), v2660);
    v2674 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v2634 - 37), v2661), v2663), v2662, vsubq_f32(*(v2634 + 9), v2660));
    v2675 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v2634 - 38), v2661), v2663), v2662, v2673);
    if (v2420)
    {
      v2673 = vcltzq_s32(*(v2634 + 1));
      v2674 = vbslq_s8(v2673, v2667, v2674);
      v2675 = vbslq_s8(vcltzq_s32(*v2634), v2667, v2675);
    }

    v2673.i64[0] = v2668;
    v2676 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2673, v2650).i64[0], 0), v2674.u64[0], v2674);
    v2672 = vbslq_s8(vcgtq_f32(v2676, v2671), v2664, v2672);
    v2666 = vbslq_s8(vcgtq_f32(v2675, v2670), v2665, v2666);
    v2670 = vmaxnmq_f32(v2670, v2675);
    v2671 = vmaxnmq_f32(v2671, v2676);
    v2665 = vaddq_s32(v2665, v2669);
    v2664 = vaddq_s32(v2664, v2669);
    v2634 += 4;
    --v2668;
  }

  while (v2668);
  v2677 = vdupq_lane_s32(v2659, 0);
  v2677.i32[3] = *(&STACK[0x1650] + v2658);
  *&STACK[0x370] = v2677;
  v2678 = vmaxnmq_f32(v2670, v2671);
  v2679 = vbslq_s8(vcgtq_f32(v2670, v2671), v2666, v2672);
  v2680 = vextq_s8(v2678, v2678, 8uLL);
  v2681 = vbslq_s8(vcgtq_f32(v2678, v2680), v2679, vextq_s8(v2679, v2679, 8uLL));
  v2682 = vmaxnmq_f32(v2678, v2680);
  v2683 = vcgtq_f32(v2682, vrev64q_s32(v2682));
  v2684 = vbslq_s8(v2683, v2681, vdupq_lane_s32(*v2681.i8, 1));
  *&STACK[0x330] = v2684;
  v2685 = v2684.i32[0];
  v2686 = &STACK[0x1930] + v2684.i32[0];
  v2687 = vld1q_dup_f32(v2686);
  v2683.i32[0] = *(&STACK[0x1650] + v2685);
  *&STACK[0x340] = v2683;
  *&STACK[0x350] = v2417;
  v2687.i32[3] = v2683.i32[0];
  *&STACK[0x360] = v2687;
  STACK[0x438] = WeightInfoForSingleLineSingleWeight_6x5(2, 4);
  if (!LOBYTE(STACK[0x14C6]))
  {
    goto LABEL_560;
  }

  if (LOBYTE(STACK[0x14C7]))
  {
    v2453 = *&STACK[0x360];
    v2454 = *&STACK[0x370];
    if (COERCE_FLOAT(*&STACK[0x350]) != 0.0)
    {
      v2690 = *&STACK[0x340];
      if (COERCE_FLOAT(*&STACK[0x340]) != 0.0)
      {
        v2691 = vsubq_f32(v2453, v2454);
        v2690.i32[0] = v2691.i32[3];
        if (v2691.f32[3] == 0.0)
        {
          if (LOBYTE(STACK[0x14C6]) == 48)
          {
            v2454 = 0uLL;
            goto LABEL_579;
          }

          v2688.i64[0] = 0x3F0000003FLL;
          v2688.i64[1] = 0x3F0000003FLL;
          v2454 = vnegq_f32(v2688);
        }

        v2688.i64[0] = 0;
        v2719 = vdupq_lane_s32(*&vcgtq_f32(v2688, v2690), 0);
        v2720 = vbslq_s8(v2719, vnegq_f32(v2691), v2691);
        v2721 = vbslq_s8(v2719, v2453, v2454);
        v2689.f32[0] = v2721.f32[3] / v2720.f32[3];
        v2722 = vmlsq_lane_f32(v2721, v2720, v2689, 0);
        if ((vminvq_u32(vandq_s8(vcgtq_f32(v2722, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v2722))) & 0x80000000) != 0)
        {
          v2453 = vbslq_s8(v2719, v2454, v2453);
          v2726 = vmaxnmq_f32(v2722, 0);
          __asm { FMOV            V1.4S, #1.0 }

          v2454 = vminnmq_f32(v2726, _Q1);
        }

        else
        {
          v2723 = *&STACK[0x330];
          v2724 = &STACK[0x1930] + v2657;
          v2454 = vld1q_dup_f32(v2724);
          v2454.i32[3] = *(&STACK[0x1650] + v2657);
          v2725 = &STACK[0x1930] + v2723;
          v2453 = vld1q_dup_f32(v2725);
          v2453.i32[3] = *(&STACK[0x1650] + v2723);
        }
      }
    }
  }

  else
  {
    v2699 = vdupq_lane_s32(*&vcgtq_f32(*&STACK[0x340], *&STACK[0x350]), 0);
    v2453 = vandq_s8(*&STACK[0x360], v2699);
    v2454 = vbicq_s8(*&STACK[0x370], v2699);
  }

LABEL_579:
  *&STACK[0x2030] = 0u;
  *&STACK[0x2020] = 0u;
  *&STACK[0x2010] = 0u;
  v2728 = STACK[0x1460];
  *&STACK[0x450] = v2453;
  *&STACK[0x440] = v2454;
  FindColorVectors(&STACK[0x440], v2728, 1, 342, &STACK[0x438], &STACK[0x2010]);
  v4061 = STACK[0x2030];
  v2731 = STACK[0x438];
  v2732 = (STACK[0x438] >> 13) & 0xF;
  v2733 = STACK[0x438] >> 27;
  v4093 = v618 + 108;
  v2734 = *&STACK[0x2020];
  LODWORD(v2735) = HIDWORD(*&STACK[0x2020]);
  v2736 = vrecpes_f32(v2735);
  if (fabsf(v2735) < 0.0039062)
  {
    v2736 = 0.0;
  }

  if (v2732 > 5)
  {
    if (STACK[0x1460])
    {
      v2751 = 0;
      v2740 = *&STACK[0x2010];
      v2741 = vdupq_lane_s32(*&STACK[0x2010], 0);
      v2752 = vdupq_lane_s32(*&STACK[0x2010], 1);
      v2753 = vdupq_laneq_s32(*&STACK[0x2010], 2);
      v2754 = vdupq_laneq_s32(*&STACK[0x2010], 3);
      v2755 = vmulq_f32(v2734, vandq_s8(vcgezq_s32(gNormalMasks[(v2731 >> 13) & 0xF]), *STACK[0x1460]));
      v2756 = vmulq_f32(v2734, v2755);
      v2757 = vaddv_f32(vadd_f32(*v2756.i8, *&vextq_s8(v2756, v2756, 8uLL)));
      v2758 = vdupq_lane_s32(*v2755.f32, 0);
      v2759 = vdupq_laneq_s32(v2755, 2);
      v2760 = fabsf(v2757);
      v2761 = vdupq_laneq_s32(v2755, 3);
      v2762 = SLOBYTE(STACK[0x14C6]);
      v2763 = vrecpes_f32(v2757);
      __asm { FMOV            V23.4S, #1.0 }

      do
      {
        v2765 = (&STACK[0x1440] + v2751);
        v2766 = vsubq_f32(*(&STACK[0x1440] + v2751 + 160), v2741);
        v2767 = vsubq_f32(*(&STACK[0x1440] + v2751 + 144), v2741);
        v2768 = vsubq_f32(*(&STACK[0x1440] + v2751 + 288), v2752);
        v2769 = vsubq_f32(*(&STACK[0x1440] + v2751 + 272), v2752);
        v2770 = vsubq_f32(*(&STACK[0x1440] + v2751 + 416), v2753);
        v2771 = vsubq_f32(*(&STACK[0x1440] + v2751 + 400), v2753);
        v2730 = vsubq_f32(*(&STACK[0x1440] + v2751 + 544), v2754);
        v2772 = vsubq_f32(*(&STACK[0x1440] + v2751 + 528), v2754);
        if (v2760 >= 0.000015259)
        {
          v2773 = v2763;
        }

        else
        {
          v2773 = 0.0;
        }

        v2774 = vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v2768, *v2755.f32, 1), v2758, v2766), v2759, v2770), v2761, v2730), v2773), _Q23);
        v2775 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v2769, *v2755.f32, 1), v2758, v2767), v2759, v2771), v2761, v2772), v2773), _Q23), 0);
        v2776 = vmaxnmq_f32(v2774, 0);
        if (v2762 >= 1)
        {
          v2730 = vmulq_n_f32(v2730, v2736);
          v2776 = vbslq_s8(vcltzq_s32(v2765[72]), v2730, v2776);
          v2775 = vbslq_s8(vcltzq_s32(v2765[71]), vmulq_n_f32(v2772, v2736), v2775);
        }

        v2777 = (&STACK[0x22F0] + v2751);
        *v2777 = v2775;
        v2777[1] = v2776;
        v2751 += 32;
      }

      while (v2751 != 128);
      v2778 = 0;
      v2779 = v2733;
      v2741.i64[0] = 0;
      v2780 = vrecpes_f32(v2733);
      if (v2733)
      {
        v2741.f32[0] = v2780;
      }

      do
      {
        v2781 = (&STACK[0x22F0] + v2778);
        v2782 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2778 + 16), v2779)), v2741.f32[0]);
        v2750 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2778), v2779)), v2741.f32[0]);
        *v2781 = v2750;
        v2781[1] = v2782;
        v2778 += 32;
      }

      while (v2778 != 128);
    }

    else
    {
      v2802 = 0;
      v2740 = *&STACK[0x2010];
      v2741 = vdupq_lane_s32(*&STACK[0x2010], 0);
      v2803 = vdupq_lane_s32(*&STACK[0x2010], 1);
      v2804 = vdupq_laneq_s32(*&STACK[0x2010], 2);
      v2805 = vdupq_laneq_s32(*&STACK[0x2010], 3);
      v2806 = vmulq_f32(v2734, v2734);
      v2807 = vaddv_f32(vadd_f32(*v2806.i8, *&vextq_s8(v2806, v2806, 8uLL)));
      v2808 = vdupq_lane_s32(*v2734.f32, 0);
      v2809 = vdupq_laneq_s32(v2734, 2);
      v2810 = vdupq_laneq_s32(v2734, 3);
      v2811 = vrecpes_f32(v2807);
      v2812 = SLOBYTE(STACK[0x14C6]);
      __asm { FMOV            V19.4S, #1.0 }

      do
      {
        v2814 = (&STACK[0x1440] + v2802);
        v2815 = vsubq_f32(*(&STACK[0x1440] + v2802 + 544), v2805);
        v2816 = vsubq_f32(*(&STACK[0x1440] + v2802 + 528), v2805);
        v2730 = vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2802 + 288), v2803), *v2734.f32, 1), v2808, vsubq_f32(*(&STACK[0x1440] + v2802 + 160), v2741)), v2809, vsubq_f32(*(&STACK[0x1440] + v2802 + 416), v2804)), v2810, v2815), v2811), _Q19);
        v2817 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2802 + 272), v2803), *v2734.f32, 1), v2808, vsubq_f32(*(&STACK[0x1440] + v2802 + 144), v2741)), v2809, vsubq_f32(*(&STACK[0x1440] + v2802 + 400), v2804)), v2810, v2816), v2811), _Q19), 0);
        v2818 = vmaxnmq_f32(v2730, 0);
        if (v2812 >= 1)
        {
          v2819 = v2814[72];
          v2730 = v2814[71];
          if ((vmaxvq_u32(vorrq_s8(v2730, v2819)) & 0x80000000) != 0)
          {
            v2730 = vcltzq_s32(v2730);
            v2817 = vbslq_s8(v2730, vmulq_n_f32(v2816, v2736), v2817);
            v2818 = vbslq_s8(vcltzq_s32(v2819), vmulq_n_f32(v2815, v2736), v2818);
          }
        }

        v2820 = (&STACK[0x22F0] + v2802);
        *v2820 = v2817;
        v2820[1] = v2818;
        v2802 += 32;
      }

      while (v2802 != 128);
      v2821 = 0;
      v2822 = v2733;
      v2741.i64[0] = 0;
      v2823 = vrecpes_f32(v2733);
      if (v2733)
      {
        v2741.f32[0] = v2823;
      }

      do
      {
        v2824 = (&STACK[0x22F0] + v2821);
        v2825 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2821 + 16), v2822)), v2741.f32[0]);
        v2750 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2821), v2822)), v2741.f32[0]);
        *v2824 = v2750;
        v2824[1] = v2825;
        v2821 += 32;
      }

      while (v2821 != 128);
    }
  }

  else if (v2732 > 3)
  {
    v2783 = 0;
    v2784 = (v2735 * v2735) + (v2734.f32[0] * v2734.f32[0]);
    v2785 = 0.0;
    _NF = fabsf(v2784) < 0.000015259;
    v2786 = vrecpes_f32(v2784);
    v2740 = *&STACK[0x2010];
    v2741 = vdupq_lane_s32(*&STACK[0x2010], 0);
    v2787 = vdupq_laneq_s32(*&STACK[0x2010], 3);
    v2788 = vdupq_lane_s32(*v2734.f32, 0);
    if (!_NF)
    {
      v2785 = v2786;
    }

    v2789 = SLOBYTE(STACK[0x14C6]);
    __asm { FMOV            V16.4S, #1.0 }

    v2791 = v618 + 108;
    do
    {
      v2792 = vsubq_f32(*(v2791 - 38), v2787);
      v2793 = vsubq_f32(*(v2791 - 37), v2787);
      v2794 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v2793, v2734, 3), v2788, vsubq_f32(*(v2791 + 9), v2741)), v2785);
      v2795 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v2792, v2734, 3), v2788, vsubq_f32(*(v2791 + 8), v2741)), v2785);
      if (v2789 >= 1)
      {
        v2794 = vbslq_s8(vcltzq_s32(*(v2791 + 1)), vmulq_n_f32(v2793, v2736), v2794);
        v2795 = vbslq_s8(vcltzq_s32(*v2791), vmulq_n_f32(v2792, v2736), v2795);
      }

      v2729 = vminnmq_f32(vmaxnmq_f32(v2795, 0), _Q16);
      v2796 = (&STACK[0x22F0] + v2783);
      *v2796 = v2729;
      v2796[1] = vminnmq_f32(vmaxnmq_f32(v2794, 0), _Q16);
      v2791 += 4;
      v2783 += 32;
    }

    while (v2783 != 96);
    v2797 = 0;
    v2798 = v2733;
    v2741.i64[0] = 0;
    v2799 = vrecpes_f32(v2733);
    if (v2733)
    {
      v2741.f32[0] = v2799;
    }

    do
    {
      v2800 = (&STACK[0x22F0] + v2797);
      v2801 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2797 + 16), v2798)), v2741.f32[0]);
      v2750 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2797), v2798)), v2741.f32[0]);
      *v2800 = v2750;
      v2800[1] = v2801;
      v2797 += 32;
    }

    while (v2797 != 128);
  }

  else
  {
    v2737 = 0;
    v2738 = 0.0;
    v2739 = vrecpes_f32(v2734.f32[0]);
    if (fabsf(v2734.f32[0]) >= 0.000015259)
    {
      v2738 = v2739;
    }

    v2740 = *&STACK[0x2010];
    v2741 = vdupq_lane_s32(*&STACK[0x2010], 0);
    __asm { FMOV            V5.4S, #1.0 }

    do
    {
      v2743 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x1930] + v2737 + 16), v2741), v2738), 0), _Q5);
      v2744 = (&STACK[0x22F0] + v2737);
      *v2744 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x1930] + v2737), v2741), v2738), 0), _Q5);
      v2744[1] = v2743;
      v2737 += 32;
    }

    while (v2737 != 128);
    v2745 = 0;
    v2746 = v2733;
    v2741.i64[0] = 0;
    v2747 = vrecpes_f32(v2733);
    if (v2733)
    {
      v2741.f32[0] = v2747;
    }

    do
    {
      v2748 = (&STACK[0x22F0] + v2745);
      v2749 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2745 + 16), v2746)), v2741.f32[0]);
      v2750 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2745), v2746)), v2741.f32[0]);
      *v2748 = v2750;
      v2748[1] = v2749;
      v2745 += 32;
    }

    while (v2745 != 128);
  }

  v2826 = *&STACK[0x2360];
  v2826.i64[1] = 0;
  *&STACK[0x2360] = *&STACK[0x2360];
  v2827 = &STACK[0x1440];
  do
  {
    v2828 = v2827;
    v2827 = v2827[5];
  }

  while (v2827);
  v2829 = STACK[0x1460];
  if (STACK[0x1460])
  {
    v2826 = *v2829;
    v2741 = *&STACK[0x3A0];
    _Q12 = vmulq_f32(*v2829, *&STACK[0x3A0]);
  }

  else
  {
    __asm { FMOV            V12.4S, #1.0 }
  }

  v2831 = *(v2828 + 66);
  v4055 = v7;
  v4056 = v4;
  if (v2831 == 392)
  {
    *&STACK[0x370] = _Q12;
    v2868 = 0;
    v2741.i32[0] = 0;
    v2869 = *&STACK[0x22F0];
    v2870 = vextq_s8(*&STACK[0x22F0], *&STACK[0x2300], 8uLL);
    v2871 = vzip1q_s32(*&STACK[0x22F0], vuzp1q_s32(v2869, v2869));
    v2872 = vzip1q_s32(*&STACK[0x2300], *&STACK[0x2300]);
    v2872.i32[0] = HIDWORD(*&STACK[0x22F0]);
    v2869.i32[0] = HIDWORD(STACK[0x22F0]);
    v2873 = *&STACK[0x2308];
    v2874 = vzip1q_s32(*&STACK[0x2308], vuzp1q_s32(v2873, v2873));
    v2875 = vextq_s8(*&STACK[0x2308], *&STACK[0x2318], 8uLL);
    v2876 = vzip1q_s32(*&STACK[0x2318], *&STACK[0x2318]);
    v2876.i32[0] = HIDWORD(*&STACK[0x2308]);
    v2873.i32[0] = HIDWORD(STACK[0x2308]);
    v2877 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2869, xmmword_298496220), xmmword_298496230, v2871), xmmword_298496260, v2874), xmmword_298496270, v2873);
    v2878 = *&STACK[0x2320];
    v2879 = *&STACK[0x2338];
    v2880 = vzip1q_s32(*&STACK[0x2320], vuzp1q_s32(v2878, v2878));
    v2881 = vextq_s8(*&STACK[0x2320], *&STACK[0x2330], 8uLL);
    v2882 = vzip1q_s32(*&STACK[0x2330], *&STACK[0x2330]);
    v2882.i32[0] = HIDWORD(*&STACK[0x2320]);
    v2878.i32[0] = HIDWORD(STACK[0x2320]);
    v2883 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2873, xmmword_2984962A0), xmmword_2984962B0, v2874), xmmword_2984962E0, v2880), xmmword_2984962F0, v2878);
    v2884 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2876, xmmword_298496290), xmmword_2984962C0, v2875), xmmword_2984962D0, v2881), xmmword_298495FB0, v2882);
    v2885 = vmulq_f32(v2873, xmmword_298496310);
    v2886 = *&STACK[0x2348];
    v2887 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v2885, xmmword_298496320, v2874), xmmword_298496350, v2880), xmmword_298496360, v2878);
    v2888 = vmlaq_f32(vmulq_f32(v2878, xmmword_298496360), xmmword_298496350, v2880);
    v2889 = vmlaq_f32(vmulq_f32(v2878, xmmword_2984962F0), xmmword_2984962E0, v2880);
    v2890 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2876, xmmword_298496300), xmmword_298496330, v2875), xmmword_298496340, v2881), xmmword_298496370, v2882);
    v2891 = vmlaq_f32(vmulq_f32(v2882, xmmword_298496370), xmmword_298496340, v2881);
    v2892 = vmlaq_f32(vmulq_f32(v2882, xmmword_298496380), xmmword_298496390, v2881);
    v2893 = vzip1q_s32(*&STACK[0x2338], vuzp1q_s32(v2879, v2879));
    v2894 = vextq_s8(*&STACK[0x2338], *&STACK[0x2348], 8uLL);
    v2895 = vzip1q_s32(v2886, v2886);
    v2895.i32[0] = HIDWORD(*&STACK[0x2338]);
    v2879.i32[0] = HIDWORD(STACK[0x2338]);
    v2896 = vmlaq_f32(vmlaq_f32(v2888, xmmword_298496320, v2893), xmmword_298496310, v2879);
    v2897 = vmlaq_f32(vmlaq_f32(v2889, xmmword_2984962B0, v2893), xmmword_2984962A0, v2879);
    v2898 = vmulq_f32(v2879, xmmword_298496270);
    v2899 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2872, xmmword_298495F80), xmmword_298496240, v2870), xmmword_298496250, v2875), xmmword_298496280, v2876);
    v2900 = vmlaq_f32(vmulq_f32(v2872, xmmword_2984961E0), xmmword_298496210, v2870);
    v2901 = vdupq_n_s32(0x3D800000u);
    *&STACK[0x440] = vmulq_f32(vmlaq_f32(vmulq_f32(v2869, xmmword_2984961F0), xmmword_298496200, v2871), v2901);
    *&STACK[0x450] = vmulq_f32(v2900, v2901);
    *&STACK[0x460] = vmulq_f32(v2877, v2901);
    *&STACK[0x470] = vmulq_f32(v2899, v2901);
    *&STACK[0x480] = vmulq_f32(v2883, v2901);
    *&STACK[0x490] = vmulq_f32(v2884, v2901);
    *&STACK[0x4A0] = vmulq_f32(v2887, v2901);
    *&STACK[0x4B0] = vmulq_f32(v2890, v2901);
    *&STACK[0x4C0] = vmulq_f32(v2896, v2901);
    *&STACK[0x4D0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v2891, xmmword_298496330, v2894), xmmword_298496300, v2895), v2901);
    *&STACK[0x4E0] = vmulq_f32(v2897, v2901);
    v2902 = *&STACK[0x2358];
    *&STACK[0x4F0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v2892, xmmword_2984963A0, v2894), xmmword_2984963B0, v2895), v2901);
    v2903 = vextq_s8(v2886, v2902, 4uLL);
    v2903.i32[0] = v2886.i32[2];
    v2904 = vextq_s8(v2902, vdupq_laneq_s32(v2902, 3), 4uLL);
    v2905 = vextq_s8(v2886, vextq_s8(v2886, v2902, 0xCuLL), 0xCuLL);
    *&STACK[0x500] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v2898, xmmword_298496260, v2893), xmmword_298496230, v2903), xmmword_298496220, v2905), v2901);
    *&STACK[0x510] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2895, xmmword_298496280), xmmword_298496250, v2894), xmmword_298496240, v2902), xmmword_298495F80, v2904), v2901);
    v2906 = vmulq_f32(vmlaq_f32(vmulq_f32(v2904, xmmword_2984961E0), xmmword_298496210, v2902), v2901);
    *&STACK[0x530] = v2906;
    *&STACK[0x520] = vmulq_f32(vmlaq_f32(vmulq_f32(v2905, xmmword_2984961F0), xmmword_298496200, v2903), v2901);
    v2750 = vdupq_lane_s32(*v2740.i8, 0);
    v2907 = vdupq_lane_s32(*v2734.f32, 0);
    v2908 = 0uLL;
    v2906.i32[0] = LOBYTE(STACK[0x14C7]);
    v2909 = vdupq_lane_s32(*v2740.i8, 1);
    v2906.i64[0] = vceqq_s8(v2906, v2741).u64[0];
    v2910 = vdupq_lane_s32(*v2734.f32, 1);
    v2911 = vdupq_laneq_s32(v2740, 2);
    v2912 = 0uLL;
    v2913 = vdupq_laneq_s32(v2734, 2);
    v2914 = 0uLL;
    v2915 = vdupq_laneq_s32(v2740, 3);
    v2916 = vdupq_laneq_s32(v2734, 3);
    v2917 = 0uLL;
    v2918 = vdupq_lane_s8(*v2906.i8, 0);
    v2919 = 0uLL;
    v2920 = 0uLL;
    v2921 = 0uLL;
    v2730 = 0uLL;
    do
    {
      v2922 = *(&STACK[0x440] + v2868 * 8);
      v2923 = *(&STACK[0x440] + v2868 * 8 + 16);
      v2924 = vsubq_f32(vmlaq_f32(v2911, v2922, v2913), *&v2828[v2868 + 82]);
      v2925 = *&v2828[v2868 + 114];
      v2926 = *&v2828[v2868 + 116];
      v2927 = vbslq_s8(v2918, v2924, vmulq_f32(v2924, v2925));
      v2928 = vsubq_f32(vmlaq_f32(v2911, v2923, v2913), *&v2828[v2868 + 84]);
      v2929 = vbslq_s8(v2918, v2928, vmulq_f32(v2928, v2926));
      v2930 = vsubq_f32(vmlaq_f32(v2909, v2922, v2910), *&v2828[v2868 + 50]);
      v2931 = vbslq_s8(v2918, v2930, vmulq_f32(v2930, v2925));
      v2932 = vsubq_f32(vmlaq_f32(v2909, v2923, v2910), *&v2828[v2868 + 52]);
      v2933 = vbslq_s8(v2918, v2932, vmulq_f32(v2932, v2926));
      v2934 = vsubq_f32(vmlaq_f32(v2750, v2922, v2907), *&v2828[v2868 + 18]);
      v2935 = vbslq_s8(v2918, v2934, vmulq_f32(v2934, v2925));
      v2936 = vsubq_f32(vmlaq_f32(v2750, v2923, v2907), *&v2828[v2868 + 20]);
      v2937 = vbslq_s8(v2918, v2936, vmulq_f32(v2936, v2926));
      v2938 = vsubq_f32(vmlaq_f32(v2915, v2922, v2916), v2925);
      v2939 = vsubq_f32(vmlaq_f32(v2915, v2923, v2916), v2926);
      v2730 = vmlaq_f32(v2730, v2937, v2937);
      v2921 = vmlaq_f32(v2921, v2935, v2935);
      v2920 = vmlaq_f32(v2920, v2933, v2933);
      v2919 = vmlaq_f32(v2919, v2931, v2931);
      v2917 = vmlaq_f32(v2917, v2929, v2929);
      v2914 = vmlaq_f32(v2914, v2927, v2927);
      v2912 = vmlaq_f32(v2912, v2939, v2939);
      v2908 = vmlaq_f32(v2908, v2938, v2938);
      v2868 += 4;
    }

    while (v2868 != 32);
    v2867 = vpaddq_f32(vpaddq_f32(vaddq_f32(v2921, v2730), vaddq_f32(v2919, v2920)), vpaddq_f32(vaddq_f32(v2914, v2917), vaddq_f32(v2908, v2912)));
    _Q12 = *&STACK[0x370];
LABEL_634:
    v2940 = vmulq_f32(_Q12, v2867);
    v2734 = vpaddq_f32(v2940, v2940);
    *v2730.f32 = vpadd_f32(*v2734.f32, *v2734.f32);
  }

  else
  {
    if (v2831 == 342)
    {
      v2826.i32[0] = 0;
      v2832 = 0;
      v2833 = vdupq_lane_s32(*v2740.i8, 0);
      v2750 = vdupq_lane_s32(*v2734.f32, 0);
      v2834 = vdupq_lane_s32(*v2740.i8, 1);
      v2835 = vdupq_lane_s32(*v2734.f32, 1);
      v2836 = vdupq_laneq_s32(v2740, 2);
      v2837 = vdupq_laneq_s32(v2734, 2);
      v2838 = vdupq_laneq_s32(v2740, 3);
      v2839 = vdupq_laneq_s32(v2734, 3);
      v2840 = 0uLL;
      v2729.i32[0] = LOBYTE(STACK[0x14C7]);
      v2841 = vdupq_lane_s8(*&vceqq_s8(v2729, v2826), 0);
      v2842 = 0uLL;
      v2843 = v618;
      v2844 = 0uLL;
      v2845 = 0uLL;
      v2846 = 0uLL;
      v2847 = 0uLL;
      v2848 = 0uLL;
      v2730 = 0uLL;
      do
      {
        v2849 = &STACK[0x22F0] + 4 * v2832;
        v2850 = *(v2849 + 1);
        v2851 = vsubq_f32(vmlaq_f32(v2836, *v2849, v2837), v2843[8]);
        v2852 = v2843[16];
        v2853 = v2843[17];
        v2854 = vbslq_s8(v2841, v2851, vmulq_f32(v2851, v2852));
        v2855 = vsubq_f32(vmlaq_f32(v2836, v2850, v2837), v2843[9]);
        v2856 = vbslq_s8(v2841, v2855, vmulq_f32(v2855, v2853));
        v2857 = vsubq_f32(vmlaq_f32(v2834, *v2849, v2835), *v2843);
        v2858 = vbslq_s8(v2841, v2857, vmulq_f32(v2857, v2852));
        v2859 = vsubq_f32(vmlaq_f32(v2834, v2850, v2835), v2843[1]);
        v2860 = vbslq_s8(v2841, v2859, vmulq_f32(v2859, v2853));
        v2861 = vsubq_f32(vmlaq_f32(v2833, *v2849, v2750), v2843[-8]);
        v2862 = vbslq_s8(v2841, v2861, vmulq_f32(v2861, v2852));
        v2863 = vsubq_f32(vmlaq_f32(v2833, v2850, v2750), v2843[-7]);
        v2864 = vbslq_s8(v2841, v2863, vmulq_f32(v2863, v2853));
        v2865 = vsubq_f32(vmlaq_f32(v2838, *v2849, v2839), v2852);
        v2866 = vsubq_f32(vmlaq_f32(v2838, v2850, v2839), v2853);
        v2730 = vmlaq_f32(v2730, v2864, v2864);
        v2848 = vmlaq_f32(v2848, v2862, v2862);
        v2847 = vmlaq_f32(v2847, v2860, v2860);
        v2846 = vmlaq_f32(v2846, v2858, v2858);
        v2845 = vmlaq_f32(v2845, v2856, v2856);
        v2844 = vmlaq_f32(v2844, v2854, v2854);
        v2842 = vmlaq_f32(v2842, v2866, v2866);
        v2840 = vmlaq_f32(v2840, v2865, v2865);
        ++v2832;
        v2843 += 2;
      }

      while (v2832 != 4);
      v2867 = vpaddq_f32(vpaddq_f32(vaddq_f32(v2848, v2730), vaddq_f32(v2846, v2847)), vpaddq_f32(vaddq_f32(v2844, v2845), vaddq_f32(v2840, v2842)));
      goto LABEL_634;
    }

    v2730.i32[0] = 2139095040;
  }

  v2941 = 0uLL;
  *&STACK[0x23E0] = 0u;
  *&STACK[0x23D0] = 0u;
  *&STACK[0x23C0] = 0u;
  *&STACK[0x23B0] = 0u;
  *&STACK[0x23A0] = 0u;
  *&STACK[0x2390] = 0u;
  *&STACK[0x2380] = 0u;
  *&STACK[0x2370] = 0u;
  if ((v2731 & 0x18000) != 0)
  {
    v4060 = v2731;
    v2734.i32[0] = 0;
    vars0 = v2734;
    v2750.i32[0] = 0;
    v4059 = 0;
    v2942 = 0;
    LODWORD(STACK[0x2F0]) = LOBYTE(STACK[0x14C8]);
    STACK[0x300] = &STACK[0x16D0];
    v4064 = v618 + 124;
    v2943 = v618;
    v2944 = &STACK[0x2210];
    v4063 = (v2943 + 128);
    LODWORD(STACK[0x2D0]) = 2139095040;
    LODWORD(STACK[0x2E0]) = 1148207104;
    v2734.i64[0] = 1;
    v4062 = v2734;
    v2734.i64[0] = 96;
    *&STACK[0x370] = v2734;
    v2945.i64[0] = 0x3F0000003FLL;
    v2945.i64[1] = 0x3F0000003FLL;
    v2946 = vnegq_f32(v2945);
    v4052 = v2946;
    v2946.i64[0] = 64;
    v4057 = v2946;
    *&STACK[0x340] = v2750;
    while (v2730.f32[0] >= v5[1] && (!LODWORD(STACK[0x2F0]) || v2942 != 3))
    {
      v2436 = *&STACK[0x14BC] <= *&STACK[0x2E0];
      v2947 = vdupq_n_s32(0x3A88642Au);
      LODWORD(STACK[0x330]) = EncodeStandardSinglePartitionBlock_6x5_channelSearchOrder[v2942];
      *&STACK[0x320] = v2730;
      if (v2436)
      {
        *&STACK[0x350] = v2947;
        v2991 = v2944;
        v2992 = v2942;
        v2993 = LOBYTE(STACK[0x14C8]);
        if (LOBYTE(STACK[0x14C8]))
        {
          v2994 = 6;
        }

        else
        {
          v2994 = 8;
        }

        WeightInfoForSingleLineDualWeight_6x5(2, v2994);
        v2995 = STACK[0x330];
        v2996.i64[0] = 0x800000008;
        v2996.i64[1] = 0x800000008;
        v2997.i64[0] = 0x7F0000007FLL;
        v2997.i64[1] = 0x7F0000007FLL;
        v2998 = 0;
        v2999 = __clz(STACK[0x330]);
        v3000 = 31 - v2999;
        v3001 = FindDualWeights_6x5_kVectorMask[31 - v2999];
        *&STACK[0x410] = v4090;
        v3002 = (&STACK[0x410] & 0xFFFFFFFFFFFFFFF3 | (4 * ((31 - v2999) & 3)));
        v3003 = vld1q_dup_f32(v3002);
        v3004 = &STACK[0x14D0] + 16 * (31 - v2999);
        v3005 = STACK[0x1460];
        v3006 = xmmword_298495620;
        v3007 = xmmword_298495600;
        v3008.i64[0] = -1;
        v3008.i64[1] = -1;
        v3009 = 0uLL;
        v3010 = 31 - v2999;
        v3012 = LOBYTE(STACK[0x14C7]);
        v3013 = 0uLL;
        v3014.i64[0] = -1;
        v3014.i64[1] = -1;
        while (1)
        {
          v3015 = vsubq_f32(*(&STACK[0x1440] + v2998 + 144), v4066);
          v3016 = vsubq_f32(*(&STACK[0x1440] + v2998 + 160), v4066);
          v3017 = vsubq_f32(*(&STACK[0x1440] + v2998 + 272), v4065);
          v3018 = vsubq_f32(*(&STACK[0x1440] + v2998 + 288), v4065);
          v3019 = vsubq_f32(*(&STACK[0x1440] + v2998 + 400), *&STACK[0x380]);
          v3020 = vsubq_f32(*(&STACK[0x1440] + v2998 + 416), *&STACK[0x380]);
          v3021 = vsubq_f32(*(&STACK[0x1440] + v2998 + 528), *&STACK[0x390]);
          v3022 = vsubq_f32(*(&STACK[0x1440] + v2998 + 544), *&STACK[0x390]);
          v3023 = vsubq_f32(*&v3004[v2998 / 8 + 2], v3003);
          v3024 = vsubq_f32(*&v3004[v2998 / 8], v3003);
          v3025 = vmulq_f32(v3016, v3016);
          v3026 = vmulq_f32(v3015, v3015);
          v3027 = vmulq_f32(v3018, v3018);
          v3028 = vmulq_f32(v3017, v3017);
          v3029 = vmulq_f32(v3020, v3020);
          v3030 = vmulq_f32(v3019, v3019);
          v3031 = vmulq_f32(v3022, v3022);
          v3032 = vmulq_f32(v3021, v3021);
          if (!v3005)
          {
            break;
          }

          v3033 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3027, *v3005, 1), v3025, COERCE_FLOAT(*v3005->f32)), v3029, *v3005->f32, 2), v3031, *v3005->f32, 3);
          v3034 = *&STACK[0x3A0];
          v3035 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3028, *v3005, 1), v3026, COERCE_FLOAT(*v3005->f32)), v3030, *v3005->f32, 2), v3032, *v3005->f32, 3), *&STACK[0x3A0]);
          *&STACK[0x400] = *v3005->f32;
          v3011 = (&STACK[0x400] & 0xFFFFFFFFFFFFFFF3 | (4 * ((31 - v2999) & 3)));
          v3036 = vld1q_dup_f32(v3011);
          v3037 = vnegq_f32(v3036);
          v3038 = vmlaq_f32(vmulq_f32(v3033, v3034), v3023, vmulq_f32(v3023, v3037));
          v3039 = vmlaq_f32(v3035, v3024, vmulq_f32(v3024, v3037));
          if (v3012)
          {
            goto LABEL_653;
          }

LABEL_654:
          v3023.i64[0] = v2998;
          v3040.i64[0] = v3038.i64[0];
          v3040.i64[1] = 0x7F0000007FLL;
          v3041 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v3023, *&STACK[0x370]).i64[0], 0), v3040, v3038);
          v3042 = vcgtq_f32(v3041, v3013);
          v3043 = vcgtq_f32(v3039, v3009);
          v3009 = vmaxnmq_f32(v3039, v3009);
          v3013 = vmaxnmq_f32(v3041, v3013);
          v3014 = vbslq_s8(v3042, v3006, v3014);
          v3008 = vbslq_s8(v3043, v3007, v3008);
          v3007 = vaddq_s32(v3007, v2996);
          v3006 = vaddq_s32(v3006, v2996);
          v2998 += 32;
          if (v2998 == 128)
          {
            if (v2993)
            {
              v3044 = 0;
            }

            else
            {
              v3044 = -1;
            }

            v4100 = v3044;
            v3045 = vmaxnmq_f32(v3009, v3013);
            v3046 = vbslq_s8(vcgtq_f32(v3013, v3009), v3014, v3008);
            v3047 = vextq_s8(v3045, v3045, 8uLL);
            v3048 = vcgtq_f32(v3047, v3045);
            v3049 = vmaxnmq_f32(v3045, v3047);
            v3050 = vbslq_s8(v3048, vextq_s8(v3046, v3046, 8uLL), v3046);
            v3051 = vbslq_s8(vcgtq_f32(vrev64q_s32(v3049), v3049), vdupq_lane_s32(*v3050.i8, 1), v3050).u32[0];
            v3052 = *(STACK[0x300] + 16 * v3051);
            v3053 = vcltzq_s32(v3001);
            v3054 = vbicq_s8(vsubq_f32(v4090, v3052), v3053);
            if (v3005)
            {
              v3055 = vmulq_f32(*v3005->f32, v3054);
            }

            else
            {
              v3055 = vmulq_f32(v3054, vdupq_n_s32(0x3EAAAAABu));
            }

            v3056 = 0;
            v3057 = (&STACK[0x3E0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3010 & 3)));
            v3058 = (&STACK[0x3F0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3010 & 3)));
            v4082 = v3051;
            *&STACK[0x2A0] = v3053;
            v4086 = vmvnq_s8(v3053);
            v3059 = vdupq_lane_s32(*v3052.f32, 0);
            v3060 = vdupq_lane_s32(*v3052.f32, 1);
            v3061 = vdupq_laneq_s32(v3052, 2);
            *&STACK[0x3F0] = v3052;
            v3062 = vld1q_dup_f32(v3058);
            *&STACK[0x3E0] = v3055;
            v3063 = vld1q_dup_f32(v3057);
            *&STACK[0x360] = v3063;
            *&STACK[0x2C0] = v3052;
            v3064 = vdupq_laneq_s32(v3052, 3);
            v3066 = (v2995 >> 3) & 1;
            if (!v3012)
            {
              LOBYTE(v3066) = 1;
            }

            v3067.i64[0] = 0x7F0000007FLL;
            v3067.i64[1] = 0x7F0000007FLL;
            v3068 = vnegq_f32(v3067);
            v3069 = xmmword_298495620;
            v3070 = xmmword_298495600;
            v3071.i64[0] = -1;
            v3071.i64[1] = -1;
            v3072 = 0uLL;
            v3073 = 0uLL;
            v3074.i64[0] = -1;
            v3074.i64[1] = -1;
            v3075 = v3068;
            v3076.i64[0] = 0x7F0000007FLL;
            v3076.i64[1] = 0x7F0000007FLL;
            do
            {
              v3077 = *&v3004[v3056 / 8];
              v3078 = *&v3004[v3056 / 8 + 2];
              v3079 = vsubq_f32(v3078, v3062);
              v3080 = vsubq_f32(v3077, v3062);
              v3081 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 160), v3059), v3055.f32[0]);
              v3082 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 144), v3059), v3055.f32[0]);
              v3083 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 288), v3060), *v3055.f32, 1);
              v3084 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 272), v3060), *v3055.f32, 1);
              v3085 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 416), v3061), v3055, 2);
              v3086 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 400), v3061), v3055, 2);
              v3087 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 544), v3064), v3055, 3);
              v3088 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3056 + 528), v3064), v3055, 3);
              if (v3005)
              {
                v3089 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3083, *v3005, 1), v3081, COERCE_FLOAT(*v3005->f32)), v3085, *v3005->f32, 2), v3087, *v3005->f32, 3);
                v3090 = *&STACK[0x3A0];
                v3091 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3084, *v3005, 1), v3082, COERCE_FLOAT(*v3005->f32)), v3086, *v3005->f32, 2), v3088, *v3005->f32, 3), *&STACK[0x3A0]);
                *&STACK[0x3D0] = *v3005->f32;
                v3065 = (&STACK[0x3D0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3010 & 3)));
                v3092 = vld1q_dup_f32(v3065);
                v3093 = vnegq_f32(v3092);
                v3094 = vmulq_f32(v3080, v3093);
                v3095 = vmulq_f32(v3079, v3093);
                v3096 = vmlaq_f32(vmulq_f32(v3089, v3090), *&STACK[0x360], v3095);
                v3097 = vmlaq_f32(v3091, *&STACK[0x360], v3094);
              }

              else
              {
                v3094 = vaddq_f32(vaddq_f32(v3082, v3084), v3086);
                v3095 = vaddq_f32(vaddq_f32(v3081, v3083), v3085);
                v3097 = vmlsq_f32(vaddq_f32(v3094, v3088), v3080, v3080);
                v3096 = vmlsq_f32(vaddq_f32(v3095, v3087), v3079, v3079);
              }

              v3098.i64[0] = 0x7F0000007FLL;
              v3098.i64[1] = 0x7F0000007FLL;
              v3099.i64[0] = 0x800000008;
              v3099.i64[1] = 0x800000008;
              if (v3012)
              {
                v3094 = vcltzq_s32(*(&STACK[0x1440] + v3056 + 1136));
                v3095 = vcltzq_s32(*(&STACK[0x1440] + v3056 + 1152));
                v3096 = vbslq_s8(v3095, v3098, v3096);
                v3097 = vbslq_s8(v3094, v3098, v3097);
              }

              v3100 = 0uLL;
              v3101 = 0uLL;
              if ((v3066 & 1) == 0)
              {
                v3101 = *(&STACK[0x1440] + v3056 + 1152);
                v3100 = *(&STACK[0x1440] + v3056 + 1136);
              }

              v3095.i64[0] = v3056;
              v3094.i64[0] = 96;
              v3102 = vdupq_lane_s64(vceqq_s64(v3095, v3094).i64[0], 0);
              v3103.i64[0] = v3096.i64[0];
              v3103.i64[1] = v3098.i64[0];
              v3104 = vbslq_s8(v3102, v3103, v3096);
              v3105 = vcgtq_f32(v3104, v3073);
              v3106 = vcgtq_f32(v3097, v3072);
              v3072 = vmaxnmq_f32(v3097, v3072);
              v3073 = vmaxnmq_f32(v3104, v3073);
              v3074 = vbslq_s8(v3105, v3069, v3074);
              v3071 = vbslq_s8(v3106, v3070, v3071);
              v3104.i64[0] = v3056;
              v3105.i64[0] = 96;
              v3107 = vdupq_lane_s64(vceqq_s64(v3104, v3105).i64[0], 0);
              v3105.i64[0] = v3101.i64[0];
              v3105.i64[1] = -1;
              v3108 = vcltzq_s32(vbslq_s8(v3107, v3105, v3101));
              v3109 = vcltzq_s32(v3100);
              v3110 = vnegq_f32(v3098);
              v3068 = vminnmq_f32(v3068, vbslq_s8(v3109, v3110, v3077));
              v3075 = vminnmq_f32(v3075, vbslq_s8(v3108, v3110, v3078));
              v3067 = vmaxnmq_f32(v3067, vbslq_s8(v3109, v3098, v3077));
              v3076 = vmaxnmq_f32(v3076, vbslq_s8(v3108, v3098, v3078));
              v3070 = vaddq_s32(v3070, v3099);
              v3069 = vaddq_s32(v3069, v3099);
              v3056 += 32;
            }

            while (v3056 != 128);
            v3055.i32[0] = 0;
            v3111 = vmaxnmq_f32(v3072, v3073);
            v3112 = vbslq_s8(vcgtq_f32(v3073, v3072), v3074, v3071);
            v3113 = vextq_s8(v3111, v3111, 8uLL);
            v3114 = vcgtq_f32(v3113, v3111);
            v3115 = vmaxnmq_f32(v3111, v3113);
            v3116 = vbslq_s8(v3114, vextq_s8(v3112, v3112, 8uLL), v3112);
            v3117 = *(STACK[0x300] + 16 * vbslq_s8(vcgtq_f32(vrev64q_s32(v3115), v3115), vdupq_lane_s32(*v3116.i8, 1), v3116).i32[0]);
            v3118 = vmaxnmq_f32(v3067, v3076);
            v3119 = vminnmq_f32(v3068, v3075);
            v3120 = vmaxnmq_f32(v3118, vextq_s8(v3118, v3118, 8uLL));
            v3121 = vminnmq_f32(v3119, vextq_s8(v3119, v3119, 8uLL));
            v3122 = vmaxnmq_f32(v3120, vrev64q_s32(v3120));
            v3123 = vminnmq_f32(v3121, vrev64q_s32(v3121));
            v3124 = vcgtq_f32(*&STACK[0x2C0], v3117);
            v3125 = v3124.i32[1];
            if (v2999 == 30)
            {
              v3125 = v3124.i32[0];
            }

            v3124.i32[0] = v3125;
            v3126 = vdupq_lane_s32(*&vceqq_s32(v3124, v3055), 0);
            v3127 = vbslq_s8(v3126, v3122, v3123);
            v3128 = vbslq_s8(v3126, v3123, v3122);
            v3129 = *&STACK[0x2A0];
            v3130 = vcltzq_s32(vshlq_n_s32(*&STACK[0x2A0], 0x1FuLL));
            v3131 = vbslq_s8(v3130, v3128, *&STACK[0x2C0]);
            v3132 = vbslq_s8(v3130, v3127, v3117);
            STACK[0x2B0] = v3010;
            if (v2993)
            {
              v3133 = (&unk_298496760 + 32 * v3000);
              v3134 = vsubq_f32(vqtbl1q_s8(v3131, *v3133), v3131);
              v3135 = vsubq_f32(vqtbl1q_s8(v3132, v3133[1]), v3132);
              v3136 = vmlaq_f32(vmulq_f32(v3135, v3135), v3134, v3134);
              v3136.i64[0] = vpaddq_f32(v3136, v3136).u64[0];
              v3137 = *&STACK[0x350];
              if (vpadd_f32(*v3136.f32, *v3136.f32).f32[0] >= 0.00049212)
              {
                v3148 = 6;
              }

              else
              {
                v3138 = vmaxnmq_f32(v3131, v3132);
                v3139 = vminnmq_f32(v3131, v3132);
                v3140 = vmaxnmq_f32(v3138, vuzp2q_s32(vextq_s8(v3138, v3138, 4uLL), v3138));
                v3141 = vminnmq_f32(v3139, vuzp2q_s32(vextq_s8(v3139, v3139, 4uLL), v3139));
                v3142 = vmaxnmq_f32(v3140, vzip2q_s32(vzip1q_s32(v3140, vextq_s8(v3140, v3140, 0xCuLL)), v3140));
                v3143 = vminnmq_f32(v3141, vzip2q_s32(vzip1q_s32(v3141, vextq_s8(v3141, v3141, 0xCuLL)), v3141));
                v3144 = vabdq_f32(v3132, v3131);
                v3145 = vpaddq_f32(v3144, v3144);
                *v3145.f32 = vpadd_f32(*v3145.f32, *v3145.f32);
                v3145.f32[0] = v3145.f32[0] + v3145.f32[0];
                v3146 = vsubq_f32(v3142, v3143);
                v3146.f32[0] = 3.0 * v3146.f32[0];
                v3147 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3145, v3146)), 0);
                v3132 = vbslq_s8(v3147, v3132, v3142);
                v3131 = vbslq_s8(v3147, v3131, v3143);
                if (v3145.f32[0] >= v3146.f32[0])
                {
                  v3148 = 2;
                }

                else
                {
                  v3148 = 6;
                }
              }
            }

            else
            {
              v3148 = 8;
              v3137 = *&STACK[0x350];
            }

            v3149 = v2999;
            STACK[0x2C0] = v3000;
            v3150 = 0;
            v3151 = vmovn_s32(v3129);
            v3152 = vdupq_lane_s32(*v3132.f32, 0);
            v3153 = vdupq_lane_s32(*v3132.f32, 1);
            v3154 = vdupq_laneq_s32(v3132, 2);
            *&STACK[0x350] = v3131;
            *&STACK[0x360] = v3132;
            v3155 = vdupq_laneq_s32(v3132, 3);
            v3156 = vdupq_lane_s32(*v3131.f32, 0);
            v3157 = vdupq_lane_s32(*v3131.f32, 1);
            v3158 = 0uLL;
            v3159 = vdupq_laneq_s32(v3131, 2);
            v3160 = 0uLL;
            v3161 = vdupq_laneq_s32(v3131, 3);
            do
            {
              v3162 = *(&STACK[0x1440] + v3150 + 144);
              v3163 = *(&STACK[0x1440] + v3150 + 160);
              v3164 = vsubq_f32(v3163, v3152);
              v3165 = vsubq_f32(v3162, v3152);
              v3167 = *(&STACK[0x1440] + v3150 + 272);
              v3166 = *(&STACK[0x1440] + v3150 + 288);
              v3168 = vsubq_f32(v3167, v3153);
              v3169 = vsubq_f32(v3166, v3153);
              v3171 = *(&STACK[0x1440] + v3150 + 400);
              v3170 = *(&STACK[0x1440] + v3150 + 416);
              v3172 = vsubq_f32(v3171, v3154);
              v3173 = *(&STACK[0x1440] + v3150 + 528);
              v3174 = *(&STACK[0x1440] + v3150 + 544);
              v3175 = vsubq_f32(v3170, v3154);
              v3176 = vsubq_f32(v3174, v3155);
              v3177 = vsubq_f32(v3173, v3155);
              v3178 = vsubq_f32(v3163, v3156);
              v3179 = vsubq_f32(v3162, v3156);
              v3180 = vsubq_f32(v3167, v3157);
              v3181 = vsubq_f32(v3166, v3157);
              v3182 = vsubq_f32(v3171, v3159);
              v3183 = vsubq_f32(v3170, v3159);
              v3184 = vsubq_f32(v3174, v3161);
              v3185 = vsubq_f32(v3173, v3161);
              v3186 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3180, v3180), v3179, v3179), v3182, v3182), v3185, v3185);
              v3187 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3181, v3181), v3178, v3178), v3183, v3183), v3184, v3184);
              v3188 = vminnmq_f32(v3187, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3169, v3169), v3164, v3164), v3175, v3175), v3176, v3176));
              v3189 = *(&STACK[0x1440] + v3150 + 1152);
              v3190 = vorrq_s8(v3189, vcgtq_f32(v3137, v3188));
              v3189.i64[0] = v3150;
              v3187.i64[0] = 96;
              v3160 = vsubq_s32(v3160, vbslq_s8(vdupq_lane_s64(vceqq_s64(v3189, v3187).i64[0], 0), v3190.u64[0], v3190));
              v3158 = vsubq_s32(v3158, vorrq_s8(*(&STACK[0x1440] + v3150 + 1136), vcgtq_f32(v3137, vminnmq_f32(v3186, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3168, v3168), v3165, v3165), v3172, v3172), v3177, v3177)))));
              v3150 += 32;
            }

            while (v3150 != 128);
            v4094 = v3161;
            v4096 = v3159;
            *&STACK[0x2A0] = v3156;
            v3191 = vaddq_s32(v3158, v3160);
            v3191.i64[0] = vpaddq_s32(v3191, v3191).u64[0];
            v3192 = WeightInfoForSingleLineDualWeight_6x5(vpadd_s32(*v3191.i8, *v3191.i8).u8[0], v3148);
            STACK[0x430] = v3192;
            if (v3148 == 2)
            {
              v2961 = v4102;
              v2990 = 0uLL;
              v2989 = STACK[0x2C0];
              v2942 = v2992;
              v2944 = v2991;
              v2988 = STACK[0x2B0];
              v2987 = *&STACK[0x350];
              v2986 = *&STACK[0x360];
              goto LABEL_738;
            }

            v3195 = 0;
            *v3194.i32 = ReciprocalTable[v3192 >> 27];
            *v3193.i32 = *v3194.i32 * (vcvts_n_f32_u32(v4100 + (v3148 >> 1), 2uLL) * *v3194.i32);
            v2987 = *&STACK[0x350];
            v2986 = *&STACK[0x360];
            v3196 = vsubq_f32(*&STACK[0x360], *&STACK[0x350]);
            v3197.i64[0] = 0x8000000080000000;
            v3197.i64[1] = 0x8000000080000000;
            v3198 = vdupq_n_s32(0x3B808081u);
            v3199 = vbslq_s8(vcgtq_f32(v3198, vabdq_f32(*&STACK[0x360], *&STACK[0x350])), vorrq_s8(vandq_s8(v3196, v3197), v3198), v3196);
            __asm { FMOV            V0.4S, #1.0 }

            v3201 = vdupq_lane_s32(v3193, 0);
            v3202 = vdivq_f32(_Q0, v3199);
            v3203 = LOBYTE(STACK[0x14C7]);
            v3204 = v3149;
            v3205 = 992 - 32 * v3149;
            v3206 = 0uLL;
            v3207 = &STACK[0x440];
            v3208 = 0uLL;
            v2990 = 0uLL;
            v3209.i64[0] = 0x800000008;
            v3209.i64[1] = 0x800000008;
            v2942 = v2992;
            v2944 = v2991;
            v2988 = STACK[0x2B0];
            v3210 = *&STACK[0x2A0];
            v3211.i64[1] = v3157.i64[1];
            while (1)
            {
              v3212 = (&STACK[0x1440] + v3195);
              v3213 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 144), v3210), v3202.f32[0]);
              v3214 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 160), v3210), v3202.f32[0]);
              *v3207 = v3213;
              *(v3207 + 1) = v3214;
              v3215 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 272), v3157), *v3202.f32, 1);
              v3216 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 288), v3157), *v3202.f32, 1);
              *(v3207 + 2) = v3215;
              *(v3207 + 3) = v3216;
              v3217 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 400), v4096), v3202, 2);
              v3218 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 416), v4096), v3202, 2);
              *(v3207 + 4) = v3217;
              *(v3207 + 5) = v3218;
              v3219 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 528), v4094), v3202, 3);
              v3220 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3195 + 544), v4094), v3202, 3);
              *(v3207 + 6) = v3219;
              *(v3207 + 7) = v3220;
              v3221 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3216, v3216), v3214, v3214), v3218, v3218), v3220, v3220), *(v3207 + v3205 + 16), *(v3207 + v3205 + 16));
              v3222 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3215, v3215), v3213, v3213), v3217, v3217), v3219, v3219), *(v3207 + v3205), *(v3207 + v3205));
              v3223 = vcgtq_f32(v3201, v3222);
              v3224 = vcgtq_f32(v3201, v3221);
              v3225 = (&STACK[0x21F0] + v3195);
              *v3225 = v3223;
              v3225[1] = v3224;
              if (v3203)
              {
                v3223 = vbicq_s8(vcgtq_f32(v3201, v3222), v3212[71]);
                v3224 = vbicq_s8(vcgtq_f32(v3201, v3221), v3212[72]);
                *v3225 = v3223;
                v3225[1] = v3224;
              }

              if (v3195 == 96)
              {
                break;
              }

              v3206 = vsubq_s32(v3206, v3223);
              v3208 = vsubq_s32(v3208, v3224);
              v3195 += 32;
              v3207 += 16;
            }

            *&STACK[0x2250] = v3223;
            *&STACK[0x2260] = v3224.u64[0];
            v3226 = vsubq_s32(v3208, v3224.u64[0]);
            v3227 = vaddq_s32(vsubq_s32(v3206, v3223), v3226);
            v3227.i64[0] = vpaddq_s32(v3227, v3227).u64[0];
            v3228 = vpadd_s32(*v3227.i8, *v3227.i8).u8[0];
            v3229 = vmovl_u16(v3151);
            if ((v3228 & 0xFE) != 0)
            {
              v3230 = 0;
              v3231 = vcltzq_s32(*&STACK[0x21F0]);
              v3232 = vcltzq_s32(*&STACK[0x2200]);
              v3233 = vandq_s8(v3232, *&STACK[0x14E0]);
              v3234 = vandq_s8(v3231, *&STACK[0x14D0]);
              v3235 = vandq_s8(*(STACK[0x310] + 16), v3232);
              v3236 = vandq_s8(*STACK[0x310], v3231);
              v3237 = vandq_s8(*(STACK[0x310] + 144), v3232);
              v3238 = vandq_s8(*(STACK[0x310] + 128), v3231);
              v3239 = vandq_s8(*(STACK[0x310] + 272), v3232);
              v3240 = vandq_s8(*(STACK[0x310] + 256), v3231);
              do
              {
                v3210.i64[0] = v3230;
                v3211.i64[0] = 64;
                v3241 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v3210, v3211).i64[0], 0), v2944[v3230 / 8 + 2], *&v2944[v3230 / 8 + 2]));
                v3242 = vcltzq_s32(*&v2944[v3230 / 8]);
                v3234 = vaddq_f32(v3234, vandq_s8(v3242, *(&STACK[0x1440] + v3230 + 176)));
                v3233 = vaddq_f32(v3233, vandq_s8(v3241, *(&STACK[0x1440] + v3230 + 192)));
                v3236 = vaddq_f32(v3236, vandq_s8(v3242, *(&STACK[0x1440] + v3230 + 304)));
                v3235 = vaddq_f32(v3235, vandq_s8(v3241, *(&STACK[0x1440] + v3230 + 320)));
                v3238 = vaddq_f32(v3238, vandq_s8(*(&STACK[0x1440] + v3230 + 432), v3242));
                v3237 = vaddq_f32(v3237, vandq_s8(*(&STACK[0x1440] + v3230 + 448), v3241));
                v3210 = *(&STACK[0x1440] + v3230 + 560);
                v3211 = *(&STACK[0x1440] + v3230 + 576);
                v3240 = vaddq_f32(v3240, vandq_s8(v3210, v3242));
                v3239 = vaddq_f32(v3239, vandq_s8(v3211, v3241));
                v3230 += 32;
              }

              while (v3230 != 96);
              v3226 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v3234, v3233), vaddq_f32(v3236, v3235)), vpaddq_f32(vaddq_f32(v3238, v3237), vaddq_f32(v3240, v3239))), ReciprocalTable[v3228]);
              v2987 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3229, 0x1FuLL)), v2987, v3226);
            }

            if (v2942 != 3)
            {
              v3243 = 0;
              *v3226.i32 = *v3194.i32 * (*v3194.i32 * 0.25);
              v3244 = vdupq_lane_s32(*v3226.i8, 0);
              v3245 = (&STACK[0x820] - 4 * v3204);
              v3246 = 0uLL;
              v3247 = 0uLL;
              v3248 = 0uLL;
              v3249 = 0uLL;
              do
              {
                v3250 = vmulq_f32(v3245[1], v3245[1]);
                v3251 = vmulq_f32(*v3245, *v3245);
                v3252 = vcgtq_f32(v3244, v3251);
                v3253 = vcgtq_f32(v3244, v3250);
                v3254 = (&STACK[0x21F0] + v3243 * 8);
                *v3254 = v3252;
                v3254[1] = v3253;
                if (v3203)
                {
                  v3252 = vbicq_s8(vcgtq_f32(v3244, v3251), *(&STACK[0x1440] + v3243 * 8 + 1136));
                  v3253 = vbicq_s8(vcgtq_f32(v3244, v3250), *(&STACK[0x1440] + v3243 * 8 + 1152));
                  *v3254 = v3252;
                  v3254[1] = v3253;
                }

                if (v3243 == 12)
                {
                  v3253.i64[1] = 0;
                  *&STACK[0x2250] = v3252;
                  *&STACK[0x2260] = v3253.u64[0];
                }

                v3248 = vsubq_s32(v3248, v3252);
                v3249 = vsubq_s32(v3249, v3253);
                v3247 = vaddq_f32(v3247, vandq_s8(vcltzq_s32(v3253), *&v3004[v3243 + 2]));
                v3246 = vaddq_f32(v3246, vandq_s8(vcltzq_s32(v3252), *&v3004[v3243]));
                v3243 += 4;
                v3245 += 8;
              }

              while (v3243 != 16);
              v3255 = vaddq_s32(v3248, v3249);
              v3256 = vpaddq_s32(v3255, v3255);
              *v3256.f32 = vpadd_s32(*v3256.f32, *v3256.f32);
              if ((v3256.i8[0] & 0xFE) != 0)
              {
                v3257 = vaddq_f32(v3246, v3247);
                v3258 = vpaddq_f32(v3257, v3257);
                *v3258.f32 = vpadd_f32(*v3258.f32, *v3258.f32);
                v3256.f32[0] = ReciprocalTable[v3256.u8[0]];
                v2987 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3229, 0x1FuLL)), vdupq_lane_s32(*&vmulq_f32(v3258, v3256), 0), v2987);
              }
            }

            v3259 = 0;
            v3260 = vdupq_lane_s32(*v2986.f32, 0);
            v3261 = vdupq_lane_s32(*v2986.f32, 1);
            v3262 = vdupq_laneq_s32(v2986, 2);
            v3263 = 992 - 32 * v3204;
            v3264 = 0uLL;
            v3265 = vdupq_laneq_s32(v2986, 3);
            v3266 = &STACK[0x440];
            v3267 = 0uLL;
            while (1)
            {
              v3268 = (&STACK[0x1440] + v3259);
              v3269 = vmulq_n_f32(vsubq_f32(v3260, *(&STACK[0x1440] + v3259 + 144)), v3202.f32[0]);
              v3270 = vmulq_n_f32(vsubq_f32(v3260, *(&STACK[0x1440] + v3259 + 160)), v3202.f32[0]);
              *v3266 = v3269;
              *(v3266 + 1) = v3270;
              v3271 = vmulq_lane_f32(vsubq_f32(v3261, *(&STACK[0x1440] + v3259 + 272)), *v3202.f32, 1);
              v3272 = vmulq_lane_f32(vsubq_f32(v3261, *(&STACK[0x1440] + v3259 + 288)), *v3202.f32, 1);
              *(v3266 + 2) = v3271;
              *(v3266 + 3) = v3272;
              v3273 = vmulq_laneq_f32(vsubq_f32(v3262, *(&STACK[0x1440] + v3259 + 400)), v3202, 2);
              v3274 = vmulq_laneq_f32(vsubq_f32(v3262, *(&STACK[0x1440] + v3259 + 416)), v3202, 2);
              *(v3266 + 4) = v3273;
              *(v3266 + 5) = v3274;
              v3275 = vmulq_laneq_f32(vsubq_f32(v3265, *(&STACK[0x1440] + v3259 + 528)), v3202, 3);
              v3276 = vmulq_laneq_f32(vsubq_f32(v3265, *(&STACK[0x1440] + v3259 + 544)), v3202, 3);
              *(v3266 + 6) = v3275;
              *(v3266 + 7) = v3276;
              v3277 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3272, v3272), v3270, v3270), v3274, v3274), v3276, v3276), *(v3266 + v3263 + 16), *(v3266 + v3263 + 16));
              v3278 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3271, v3271), v3269, v3269), v3273, v3273), v3275, v3275), *(v3266 + v3263), *(v3266 + v3263));
              v3279 = vcgtq_f32(v3201, v3278);
              v3280 = vcgtq_f32(v3201, v3277);
              v3281 = (&STACK[0x21F0] + v3259);
              *v3281 = v3279;
              v3281[1] = v3280;
              if (v3203)
              {
                v3279 = vbicq_s8(vcgtq_f32(v3201, v3278), v3268[71]);
                v3280 = vbicq_s8(vcgtq_f32(v3201, v3277), v3268[72]);
                *v3281 = v3279;
                v3281[1] = v3280;
              }

              if (v3259 == 96)
              {
                break;
              }

              v3264 = vsubq_s32(v3264, v3279);
              v3267 = vsubq_s32(v3267, v3280);
              v3259 += 32;
              v3266 += 16;
            }

            *&STACK[0x2250] = v3279;
            *&STACK[0x2260] = v3280.u64[0];
            v3282 = vaddq_s32(vsubq_s32(v3264, v3279), vsubq_s32(v3267, v3280.u64[0]));
            v3282.i64[0] = vpaddq_s32(v3282, v3282).u64[0];
            v3283 = vpadd_s32(*v3282.i8, *v3282.i8).u8[0];
            if ((v3283 & 0xFE) != 0)
            {
              v3284 = 0;
              v3285 = vcltzq_s32(*&STACK[0x21F0]);
              v3286 = vcltzq_s32(*&STACK[0x2200]);
              v3287 = vandq_s8(v3286, *&STACK[0x14E0]);
              v3288 = vandq_s8(v3285, *&STACK[0x14D0]);
              v3289 = vandq_s8(*(STACK[0x310] + 16), v3286);
              v3290 = vandq_s8(*STACK[0x310], v3285);
              v3291 = vandq_s8(*(STACK[0x310] + 144), v3286);
              v3292 = vandq_s8(*(STACK[0x310] + 128), v3285);
              v3293 = vandq_s8(*(STACK[0x310] + 272), v3286);
              v3294 = vandq_s8(*(STACK[0x310] + 256), v3285);
              do
              {
                v3279.i64[0] = v3284;
                v3295 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v3279, v4057).i64[0], 0), v2944[v3284 / 8 + 2], *&v2944[v3284 / 8 + 2]));
                v3296 = vcltzq_s32(*&v2944[v3284 / 8]);
                v3288 = vaddq_f32(v3288, vandq_s8(v3296, *(&STACK[0x1440] + v3284 + 176)));
                v3287 = vaddq_f32(v3287, vandq_s8(v3295, *(&STACK[0x1440] + v3284 + 192)));
                v3290 = vaddq_f32(v3290, vandq_s8(v3296, *(&STACK[0x1440] + v3284 + 304)));
                v3289 = vaddq_f32(v3289, vandq_s8(v3295, *(&STACK[0x1440] + v3284 + 320)));
                v3292 = vaddq_f32(v3292, vandq_s8(*(&STACK[0x1440] + v3284 + 432), v3296));
                v3291 = vaddq_f32(v3291, vandq_s8(*(&STACK[0x1440] + v3284 + 448), v3295));
                v3279 = *(&STACK[0x1440] + v3284 + 560);
                v3294 = vaddq_f32(v3294, vandq_s8(v3279, v3296));
                v3293 = vaddq_f32(v3293, vandq_s8(*(&STACK[0x1440] + v3284 + 576), v3295));
                v3284 += 32;
              }

              while (v3284 != 96);
              v2986 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3229, 0x1FuLL)), v2986, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v3288, v3287), vaddq_f32(v3290, v3289)), vpaddq_f32(vaddq_f32(v3292, v3291), vaddq_f32(v3294, v3293))), ReciprocalTable[v3283]));
            }

            if (v2942 == 3)
            {
              v2961 = v4102;
LABEL_737:
              v2989 = STACK[0x2C0];
              goto LABEL_738;
            }

            v3297 = 0;
            *v3194.i32 = *v3194.i32 * (*v3194.i32 * 0.25);
            v3298 = vdupq_lane_s32(v3194, 0);
            v3299 = (&STACK[0x820] - 4 * v3204);
            v3300 = 0uLL;
            v3301 = 0uLL;
            v3302 = 0uLL;
            v3303 = 0uLL;
            do
            {
              v3304 = vmulq_f32(v3299[1], v3299[1]);
              v3305 = vmulq_f32(*v3299, *v3299);
              v3306 = vcgtq_f32(v3298, v3305);
              v3307 = vcgtq_f32(v3298, v3304);
              v3308 = (&STACK[0x21F0] + v3297 * 8);
              *v3308 = v3306;
              v3308[1] = v3307;
              if (v3203)
              {
                v3306 = vbicq_s8(vcgtq_f32(v3298, v3305), *(&STACK[0x1440] + v3297 * 8 + 1136));
                v3307 = vbicq_s8(vcgtq_f32(v3298, v3304), *(&STACK[0x1440] + v3297 * 8 + 1152));
                *v3308 = v3306;
                v3308[1] = v3307;
              }

              if (v3297 == 12)
              {
                v3307.i64[1] = 0;
                *&STACK[0x2250] = v3306;
                *&STACK[0x2260] = v3307.u64[0];
              }

              v3302 = vsubq_s32(v3302, v3306);
              v3303 = vsubq_s32(v3303, v3307);
              v3301 = vaddq_f32(v3301, vandq_s8(vcltzq_s32(v3307), *&v3004[v3297 + 2]));
              v3300 = vaddq_f32(v3300, vandq_s8(vcltzq_s32(v3306), *&v3004[v3297]));
              v3297 += 4;
              v3299 += 8;
            }

            while (v3297 != 16);
            v3309 = vaddq_s32(v3302, v3303);
            v3310 = vpaddq_s32(v3309, v3309);
            *v3310.f32 = vpadd_s32(*v3310.f32, *v3310.f32);
            if ((v3310.i8[0] & 0xFE) != 0)
            {
              v3311 = vaddq_f32(v3300, v3301);
              v3312 = vpaddq_f32(v3311, v3311);
              *v3312.f32 = vpadd_f32(*v3312.f32, *v3312.f32);
              v3310.f32[0] = ReciprocalTable[v3310.u8[0]];
              v3300 = vdupq_lane_s32(*&vmulq_f32(v3312, v3310), 0);
              v2986 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3229, 0x1FuLL)), v3300, v2986);
            }

            v2961 = v4102;
            if (!LOBYTE(STACK[0x14C6]))
            {
              goto LABEL_737;
            }

            if (!v3203)
            {
              v3314 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v2986, 3), vdupq_laneq_s32(v2987, 3)), 0);
              v2986 = vandq_s8(v2986, v3314);
              v2987 = vbicq_s8(v2987, v3314);
              goto LABEL_737;
            }

            v3313 = vsubq_f32(v2986, v2987);
            v3300.i32[0] = v3313.i32[3];
            if (v3313.f32[3] == 0.0)
            {
              if (LOBYTE(STACK[0x14C6]) == 29)
              {
                v2987 = 0uLL;
                goto LABEL_737;
              }

              v2987 = v4052;
            }

            v3301.i64[0] = 0;
            v3315 = vdupq_lane_s32(*&vcgtq_f32(v3301, v3300), 0);
            v3316 = vbslq_s8(v3315, v2987, v2986);
            v3317 = vbslq_s8(v3315, vnegq_f32(v3313), v3313);
            v3318 = vbslq_s8(v3315, v2986, v2987);
            *v3303.i32 = v3318.f32[3] / v3317.f32[3];
            v3319 = ReciprocalTable[BYTE4(v3192)];
            v3320 = vmlsq_lane_f32(v3318, v3317, *v3303.i8, 0);
            v3317.f32[0] = -v3319;
            *v3303.i32 = v3319 + 1.0;
            if ((vminvq_u32(vandq_s8(vcgtq_f32(v3320, vdupq_lane_s32(*v3317.f32, 0)), vcgtq_f32(vdupq_lane_s32(*v3303.i8, 0), v3320))) & 0x80000000) != 0)
            {
              v2987 = vminnmq_f32(vmaxnmq_f32(v3320, 0), _Q0);
              v2986 = v3316;
            }

            else
            {
              v3321 = vcltzq_s32(vshlq_n_s32(v3229, 0x1FuLL));
              v3322 = vbslq_s8(v3321, v3318, *(STACK[0x300] + 16 * v4082));
              v3323 = vandq_s8(vsubq_f32(v4090, v3322), v4086);
              v3324 = vdupq_lane_s32(*v3322.f32, 0);
              v3325 = vdupq_lane_s32(*v3322.f32, 1);
              v3326 = vdupq_laneq_s32(v3322, 2);
              v3327 = vdupq_laneq_s32(v3322, 3);
              v3328 = vdupq_lane_s32(*v3323.i8, 0);
              v3329 = vdupq_laneq_s32(v3323, 2);
              v3330 = vdupq_laneq_s32(v3323, 3);
              v3331 = xmmword_298495620;
              v3332 = xmmword_298495600;
              v3333.i64[0] = -1;
              v3333.i64[1] = -1;
              v3334.i64[0] = 0x7F0000007FLL;
              v3334.i64[1] = 0x7F0000007FLL;
              v3335 = STACK[0x310];
              v3336 = 4;
              v3337.i64[0] = 0x7F0000007FLL;
              v3337.i64[1] = 0x7F0000007FLL;
              v3338.i64[0] = -1;
              v3338.i64[1] = -1;
              do
              {
                v3339 = vsubq_f32(v3335[-7], v3324);
                v3340 = vsubq_f32(v3335[-8], v3324);
                v3341 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*v3335, v3325), *v3323.i8, 1), v3328, v3340), v3329, vsubq_f32(v3335[8], v3326));
                v3342 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v3335[1], v3325), *v3323.i8, 1), v3328, v3339), v3329, vsubq_f32(v3335[9], v3326)), v3330, vsubq_f32(v3335[17], v3327));
                v3340.i64[0] = v3336;
                v3339.i64[0] = 1;
                v3343 = vmlaq_f32(v3341, v3330, vsubq_f32(v3335[16], v3327));
                v3344 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v3340, v3339).i64[0], 0), v3342.u64[0], v3342);
                v3345 = vcgtq_f32(v3344, v3337);
                v3346 = vcgtq_f32(v3343, v3334);
                v3334 = vmaxnmq_f32(v3334, v3343);
                v3337 = vmaxnmq_f32(v3337, v3344);
                v3338 = vbslq_s8(v3345, v3331, v3338);
                v3333 = vbslq_s8(v3346, v3332, v3333);
                v3332 = vaddq_s32(v3332, v3209);
                v3331 = vaddq_s32(v3331, v3209);
                v3335 += 2;
                --v3336;
              }

              while (v3336);
              v3347 = vbslq_s8(vcgtq_f32(v3337, v3334), v3338, v3333);
              v3348 = vmaxnmq_f32(v3334, v3337);
              v3349 = vextq_s8(v3348, v3348, 8uLL);
              v3350 = vbslq_s8(vcgtq_f32(v3349, v3348), vextq_s8(v3347, v3347, 8uLL), v3347);
              v3351 = vmaxnmq_f32(v3348, v3349);
              v3352 = vbslq_s8(v3321, v3316, *(STACK[0x300] + 16 * vbslq_s8(vcgtq_f32(vrev64q_s32(v3351), v3351), vdupq_lane_s32(*v3350.i8, 1), v3350).i32[0]));
              v3353 = v3322;
              v3353.i32[3] = 0;
              v3354 = v3352;
              v3354.i32[3] = 0;
              v3355 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vmvnq_s8(vcgeq_f32(v3352, v3322))), 3)), 0x1FuLL));
              v2986 = vbslq_s8(v3355, v3354, v3352);
              v2987 = vbslq_s8(v3355, v3322, v3353);
            }

            goto LABEL_737;
          }
        }

        v3039 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v3026, v3028), v3030), v3032), v3024, v3024);
        v3038 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v3025, v3027), v3029), v3031), v3023, v3023);
        if (!v3012)
        {
          goto LABEL_654;
        }

LABEL_653:
        v3023 = vcltzq_s32(*(&STACK[0x1440] + v2998 + 1152));
        v3038 = vbslq_s8(v3023, v2997, v3038);
        v3039 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v2998 + 1136)), v2997, v3039);
        goto LABEL_654;
      }

      v2949 = *(STACK[0x310] + 992);
      v2948 = *(STACK[0x310] + 1008);
      v2950 = v4063;
      v2951 = 3;
      v2953 = *(STACK[0x310] + 256);
      v2952 = *(STACK[0x310] + 272);
      v2954 = v2949;
      v2955 = v2948;
      v2956 = v2953;
      v2957 = v2952;
      do
      {
        v2958 = v2950[1];
        v2949 = vmaxnmq_f32(v2949, *v2950);
        v2948 = vmaxnmq_f32(v2948, v2958);
        v2954 = vminnmq_f32(v2954, *v2950);
        v2955 = vminnmq_f32(v2955, v2958);
        v2960 = v2950[-46];
        v2959 = v2950[-45];
        v2953 = vmaxnmq_f32(v2953, v2960);
        v2952 = vmaxnmq_f32(v2952, v2959);
        v2956 = vminnmq_f32(v2956, v2960);
        v2957 = vminnmq_f32(v2957, v2959);
        v2950 += 2;
        --v2951;
      }

      while (v2951);
      v2961 = v5;
      v2962 = vmaxnmq_f32(v2949, v2948);
      v2963 = vmaxnmq_f32(v2953, v2952);
      v2964 = vminnmq_f32(v2954, v2955);
      v2965 = vminnmq_f32(v2956, v2957);
      v2966 = vmaxnmq_f32(vzip1q_s32(v2962, v2963), vzip2q_s32(v2962, v2963));
      v2967 = vminnmq_f32(vzip1q_s32(v2964, v2965), vzip2q_s32(v2964, v2965));
      v2968 = vmaxnmq_f32(v2966, vextq_s8(v2966, v2966, 8uLL));
      v2969 = vminnmq_f32(v2967, vextq_s8(v2967, v2967, 8uLL));
      v2970 = vdupq_lane_s32(*v2969.i8, 0);
      v2971 = vdupq_lane_s32(*v2968.i8, 0);
      v2972 = vdupq_lane_s32(*v2969.i8, 1);
      v2973 = vdupq_lane_s32(*v2968.i8, 1);
      v2974 = 0uLL;
      v2975 = v4064;
      v2976 = 4;
      v2977 = 0uLL;
      do
      {
        v2978 = v2975[1];
        v2979 = vuzp1q_s16(vcgtq_f32(v2947, vsubq_f32(*v2975, v2970)), vcgtq_f32(v2947, vsubq_f32(v2978, v2970)));
        *v2978.f32 = vmovn_s16(vorrq_s8(vorrq_s8(v2979, vuzp1q_s16(vcgtq_f32(v2947, vsubq_f32(v2971, *v2975)), vcgtq_f32(v2947, vsubq_f32(v2971, v2978)))), vorrq_s8(vuzp1q_s16(vcgtq_f32(v2947, vsubq_f32(v2973, v2975[-46])), vcgtq_f32(v2947, vsubq_f32(v2973, v2975[-45]))), vuzp1q_s16(vcgtq_f32(v2947, vsubq_f32(v2975[-46], v2972)), vcgtq_f32(v2947, vsubq_f32(v2975[-45], v2972))))));
        v2980 = vshlq_n_s32(vmovl_u16(vzip1_s8(*v2978.f32, *v2969.i8)), 0x1FuLL);
        v2981 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v2978.f32, *v2969.i8)), 0x1FuLL));
        v2979.i64[0] = v2976;
        v2977 = vsubq_s32(v2977, vbslq_s8(vdupq_lane_s64(vceqq_s64(v2979, v4062).i64[0], 0), v2981.u64[0], v2981));
        v2974 = vsubq_s32(v2974, vcltzq_s32(v2980));
        v2975 += 2;
        --v2976;
      }

      while (v2976);
      v2982 = vzip1q_s32(v2968, v2968);
      v2982.i32[2] = v2968.i32[0];
      v2983 = vzip1q_s32(v2969, v2969);
      v2983.i32[2] = v2969.i32[0];
      *&STACK[0x350] = v2983;
      *&STACK[0x360] = v2982;
      v2984 = vaddq_s32(v2974, v2977);
      v2984.i64[0] = vpaddq_s32(v2984, v2984).u64[0];
      v2985 = WeightInfoForSingleLineDualWeight_6x5(vpadd_s32(*v2984.i8, *v2984.i8).u8[0], 4);
      v2987 = *&STACK[0x350];
      v2986 = *&STACK[0x360];
      STACK[0x430] = v2985;
      LODWORD(v2988) = 31 - __clz(STACK[0x330]);
      v2989 = v2988;
      v2990 = 0uLL;
LABEL_738:
      *&STACK[0x1F50] = v2990;
      *&STACK[0x1F40] = v2990;
      *&STACK[0x1F30] = v2990;
      v3356 = STACK[0x1460];
      *&STACK[0x450] = v2986;
      *&STACK[0x440] = v2987;
      FindColorVectors(&STACK[0x440], v3356, 2, 342, &STACK[0x430], &STACK[0x1F30]);
      v2941 = 0uLL;
      v3358 = 0;
      v3359 = STACK[0x430];
      v3360 = *&STACK[0x1F40];
      v3361 = *&STACK[0x1F30];
      v3362 = vandq_s8(vcgezq_s32(FindDualWeights_6x5_kVectorMask[v2989]), *&STACK[0x1F40]);
      v3363 = vmulq_f32(v3362, v3362);
      v3364 = vrecpes_f32(vaddv_f32(vadd_f32(*v3363.i8, *&vextq_s8(v3363, v3363, 8uLL))));
      v3365 = vdupq_lane_s32(*&STACK[0x1F30], 0);
      v3366 = vdupq_lane_s32(*&STACK[0x1F30], 1);
      v3367 = vdupq_laneq_s32(*&STACK[0x1F30], 2);
      v3368 = vdupq_laneq_s32(*&STACK[0x1F30], 3);
      v3369 = vdupq_lane_s32(*v3362.f32, 0);
      v3370 = vdupq_laneq_s32(v3362, 2);
      v3371 = vdupq_laneq_s32(v3362, 3);
      do
      {
        __asm { FMOV            V4.4S, #1.0 }

        v3373 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3358 + 288), v3366), *v3362.f32, 1), v3369, vsubq_f32(*(&STACK[0x1440] + v3358 + 160), v3365)), v3370, vsubq_f32(*(&STACK[0x1440] + v3358 + 416), v3367)), v3371, vsubq_f32(*(&STACK[0x1440] + v3358 + 544), v3368)), v3364), _Q4), 0);
        v3374 = (&STACK[0x21F0] + v3358);
        *v3374 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3358 + 272), v3366), *v3362.f32, 1), v3369, vsubq_f32(*(&STACK[0x1440] + v3358 + 144), v3365)), v3370, vsubq_f32(*(&STACK[0x1440] + v3358 + 400), v3367)), v3371, vsubq_f32(*(&STACK[0x1440] + v3358 + 528), v3368)), v3364), _Q4), 0);
        v3374[1] = v3373;
        v3358 += 32;
      }

      while (v3358 != 128);
      v3375 = *&STACK[0x22E0];
      *&STACK[0x2260] = *&STACK[0x2260];
      *&STACK[0x22E0] = v3375;
      v3376 = STACK[0x330];
      v5 = v2961;
      if ((STACK[0x330] & 8) == 0 && SLOBYTE(STACK[0x14C6]) >= 1)
      {
        v3377 = 0.0;
        if (fabsf(*&v3360.i32[3]) >= 0.0039216)
        {
          v3377 = vrecpes_f32(*&v3360.i32[3]);
        }

        v3378 = &STACK[0x21F0];
        v3379 = v4093;
        v3380 = 4;
        do
        {
          v3381 = vmulq_n_f32(vsubq_f32(*(v3379 - 38), v3368), v3377);
          v3382 = vmulq_n_f32(vsubq_f32(*(v3379 - 37), v3368), v3377);
          v3384 = *v3379;
          v3383 = *(v3379 + 1);
          v3379 += 4;
          v3385 = vbslq_s8(vcltzq_s32(v3383), v3382, v3378[1]);
          *v3378 = vbslq_s8(vcltzq_s32(v3384), v3381, *v3378);
          v3378[1] = v3385;
          v3378 += 2;
          --v3380;
        }

        while (v3380);
        *&STACK[0x2260] = *&STACK[0x2260];
      }

      *&STACK[0x3C0] = v3360;
      v3386 = *(&STACK[0x3C0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v2988 & 3)));
      v3387 = 0.0;
      if (fabsf(v3386) >= 0.00024414)
      {
        v3387 = vrecpes_f32(v3386);
      }

      *&STACK[0x3B0] = v3361;
      v3388 = (&STACK[0x3B0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v2988 & 3)));
      v3389 = vld1q_dup_f32(v3388);
      v3390 = 128 * v2988 + 144;
      for (n = 4; n != 8; ++n)
      {
        v3392 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3390 + 16), v3389), v3387);
        v3393 = &STACK[0x21F0] + 4 * n;
        *v3393 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3390), v3389), v3387);
        *(v3393 + 1) = v3392;
        v3390 += 32;
      }

      v3394 = 0;
      *&STACK[0x22E0] = *&STACK[0x22E0];
      v3395 = v3359 >> 27;
      v3396 = &ReciprocalTable[v3395];
      v3397 = v3395;
      v3398 = vld1q_dup_f32(v3396);
      do
      {
        v3399 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3394 + 144), 0), _Q4), v3397));
        v3400 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3394 + 128), 0), _Q4), v3397));
        v3401 = vmulq_f32(v3398, vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3394 + 16), 0), _Q4), v3397)));
        v3402 = (&STACK[0x20F0] + v3394);
        *v3402 = vmulq_f32(v3398, vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3394), 0), _Q4), v3397)));
        v3402[1] = v3401;
        v3402[8] = vmulq_f32(v3398, v3400);
        v3402[9] = vmulq_f32(v3398, v3399);
        v3394 += 32;
      }

      while (v3394 != 128);
      if (STACK[0x1460])
      {
        _Q4 = vmulq_f32(*STACK[0x1460], *&STACK[0x3A0]);
      }

      v3403 = &STACK[0x1440];
      do
      {
        v3404 = v3403;
        v3403 = v3403[5];
      }

      while (v3403);
      v3405 = *(v3404 + 66);
      if (v3405 == 392)
      {
        v3459 = 0;
        v3460 = *&STACK[0x2108];
        v3461 = vzip1q_s32(*&STACK[0x2108], vuzp1q_s32(v3460, v3460));
        v3462 = vextq_s8(*&STACK[0x2108], *&STACK[0x2118], 8uLL);
        v3463 = vzip1q_s32(*&STACK[0x2118], *&STACK[0x2118]);
        v3463.i32[0] = HIDWORD(*&STACK[0x2108]);
        v3460.i32[0] = HIDWORD(STACK[0x2108]);
        *&STACK[0x350] = xmmword_2984962A0;
        v4077 = v3460;
        *&STACK[0x2C0] = xmmword_2984962B0;
        v3464 = v3461;
        v4071 = v3461;
        v3465 = vmlaq_f32(vmulq_f32(v3460, xmmword_2984962A0), xmmword_2984962B0, v3461);
        v4101 = v3365;
        v3466 = *&STACK[0x2130];
        v3467 = *&STACK[0x2120];
        v3468 = vzip1q_s32(*&STACK[0x2120], vuzp1q_s32(v3467, v3467));
        v3469 = vextq_s8(*&STACK[0x2120], *&STACK[0x2130], 8uLL);
        *&STACK[0x2A0] = v3360;
        v3470 = vmlaq_f32(v3465, xmmword_2984962E0, v3468);
        v3471 = vzip1q_s32(v3466, v3466);
        v3471.i32[0] = v3467.i32[3];
        v3467.i32[0] = v3467.i32[1];
        v4098 = vmlaq_f32(v3470, xmmword_2984962F0, v3467);
        v4095 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3463, xmmword_298496290), xmmword_2984962C0, v3462), xmmword_2984962D0, v3469), xmmword_298495FB0, v3471);
        *&STACK[0x2B0] = v3367;
        v4087 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3463, xmmword_298496300), xmmword_298496330, v3462), xmmword_298496340, v3469), xmmword_298496370, v3471);
        v3472 = vmlaq_f32(vmulq_f32(v3471, xmmword_298496370), xmmword_298496340, v3469);
        v3473 = vmlaq_f32(vmulq_f32(v3471, xmmword_298496380), xmmword_298496390, v3469);
        v4097 = v3366;
        v3474 = *&STACK[0x2188];
        v3475 = vzip1q_s32(*&STACK[0x2198], *&STACK[0x2198]);
        v3475.i32[0] = HIDWORD(*&STACK[0x2188]);
        v4075 = vextq_s8(*&STACK[0x2188], *&STACK[0x2198], 8uLL);
        v3476 = *&STACK[0x21A0];
        v3477 = vextq_s8(*&STACK[0x21A0], *&STACK[0x21B0], 8uLL);
        v3478 = vzip1q_s32(*&STACK[0x21B0], *&STACK[0x21B0]);
        v3478.i32[0] = HIDWORD(*&STACK[0x21A0]);
        v4083 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3475, xmmword_298496290), xmmword_2984962C0, v4075), xmmword_2984962D0, v3477), xmmword_298495FB0, v3478);
        v4079 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3475, xmmword_298496300), xmmword_298496330, v4075), xmmword_298496340, v3477), xmmword_298496370, v3478);
        v3479 = vmlaq_f32(vmulq_f32(v3478, xmmword_298496370), xmmword_298496340, v3477);
        v3480 = vmlaq_f32(vmulq_f32(v3478, xmmword_298496380), xmmword_298496390, v3477);
        v3481 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v4077, xmmword_298496310), xmmword_298496320, v3464), xmmword_298496350, v3468), xmmword_298496360, v3467);
        v3482 = vmlaq_f32(vmulq_f32(v3467, xmmword_298496360), xmmword_298496350, v3468);
        v3483 = vzip1q_s32(v3474, vuzp1q_s32(v3474, v3474));
        v3474.i32[0] = DWORD1(*&STACK[0x2188]);
        v3484 = vzip1q_s32(v3476, vuzp1q_s32(v3476, v3476));
        v3476.i32[0] = DWORD1(*&STACK[0x21A0]);
        v3485 = vmlaq_f32(vmulq_f32(v3467, xmmword_2984962F0), xmmword_2984962E0, v3468);
        v4068 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3474, xmmword_298496310), xmmword_298496320, v3483), xmmword_298496350, v3484), xmmword_298496360, v3476);
        *&STACK[0x360] = vmlaq_f32(vmulq_f32(v3476, xmmword_298496360), xmmword_298496350, v3484);
        v3486 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3474, *&STACK[0x350]), *&STACK[0x2C0], v3483), xmmword_2984962E0, v3484), xmmword_2984962F0, v3476);
        v3487 = vmlaq_f32(vmulq_f32(v3476, xmmword_2984962F0), xmmword_2984962E0, v3484);
        v3488 = *&STACK[0x20F0];
        v3489 = vzip1q_s32(*&STACK[0x2100], *&STACK[0x2100]);
        v3489.i32[0] = HIDWORD(*&STACK[0x20F0]);
        v4067 = vextq_s8(*&STACK[0x20F0], *&STACK[0x2100], 8uLL);
        v3490 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3489, xmmword_298495F80), xmmword_298496240, v4067), xmmword_298496250, v3462), xmmword_298496280, v3463);
        v3491 = *&STACK[0x2138];
        v3492 = *&STACK[0x2148];
        v3493 = vextq_s8(*&STACK[0x2138], *&STACK[0x2148], 8uLL);
        v3494 = vzip1q_s32(v3492, v3492);
        v3494.i32[0] = HIDWORD(*&STACK[0x2138]);
        v4070 = vmlaq_f32(vmlaq_f32(v3472, xmmword_298496330, v3493), xmmword_298496300, v3494);
        v4069 = vmlaq_f32(vmlaq_f32(v3473, xmmword_2984963A0, v3493), xmmword_2984963B0, v3494);
        v3495 = vmlaq_f32(vmulq_f32(v3494, xmmword_298496280), xmmword_298496250, v3493);
        v3496 = *&STACK[0x2170];
        v3497 = vzip1q_s32(*&STACK[0x2180], *&STACK[0x2180]);
        v3497.i32[0] = HIDWORD(*&STACK[0x2170]);
        v4072 = v3497;
        v4073 = vextq_s8(*&STACK[0x2170], *&STACK[0x2180], 8uLL);
        v3498 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3497, xmmword_298495F80), xmmword_298496240, v4073), xmmword_298496250, v4075), xmmword_298496280, v3475);
        v3499 = *&STACK[0x21B8];
        v3500 = *&STACK[0x21C8];
        v3501 = vextq_s8(*&STACK[0x21B8], *&STACK[0x21C8], 8uLL);
        v3502 = vzip1q_s32(v3500, v3500);
        v3502.i32[0] = HIDWORD(*&STACK[0x21B8]);
        v4074 = vmlaq_f32(vmlaq_f32(v3480, xmmword_2984963A0, v3501), xmmword_2984963B0, v3502);
        v4076 = vmlaq_f32(vmlaq_f32(v3479, xmmword_298496330, v3501), xmmword_298496300, v3502);
        v3503 = vzip1q_s32(v3488, vuzp1q_s32(v3488, v3488));
        v3488.i32[0] = DWORD1(*&STACK[0x20F0]);
        v3504 = vmlaq_f32(vmulq_f32(v3502, xmmword_298496280), xmmword_298496250, v3501);
        v3505 = vzip1q_s32(v3491, vuzp1q_s32(v3491, v3491));
        v3491.i32[0] = DWORD1(*&STACK[0x2138]);
        v3506 = vmlaq_f32(vmlaq_f32(v3482, xmmword_298496320, v3505), xmmword_298496310, v3491);
        v3507 = *&STACK[0x2C0];
        v3508 = *&STACK[0x350];
        v3509 = vmlaq_f32(vmlaq_f32(v3485, *&STACK[0x2C0], v3505), *&STACK[0x350], v3491);
        v3510 = vmlaq_f32(vmulq_f32(v3491, xmmword_298496270), xmmword_298496260, v3505);
        v3511 = vzip1q_s32(v3496, vuzp1q_s32(v3496, v3496));
        v3496.i32[0] = DWORD1(*&STACK[0x2170]);
        v3512 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3496, xmmword_298496220), xmmword_298496230, v3511), xmmword_298496260, v3483), xmmword_298496270, v3474);
        v3513 = vzip1q_s32(v3499, vuzp1q_s32(v3499, v3499));
        v3499.i32[0] = DWORD1(*&STACK[0x21B8]);
        *&STACK[0x360] = vmlaq_f32(vmlaq_f32(*&STACK[0x360], xmmword_298496320, v3513), xmmword_298496310, v3499);
        v3514 = vmlaq_f32(vmlaq_f32(v3487, v3507, v3513), v3508, v3499);
        v3515 = vmlaq_f32(vmulq_f32(v3499, xmmword_298496270), xmmword_298496260, v3513);
        v3516 = vdupq_n_s32(0x3D800000u);
        *&STACK[0x440] = vmulq_f32(vmlaq_f32(vmulq_f32(v3488, xmmword_2984961F0), xmmword_298496200, v3503), v3516);
        *&STACK[0x450] = vmulq_f32(vmlaq_f32(vmulq_f32(v3489, xmmword_2984961E0), xmmword_298496210, v4067), v3516);
        *&STACK[0x460] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3488, xmmword_298496220), xmmword_298496230, v3503), xmmword_298496260, v4071), xmmword_298496270, v4077), v3516);
        *&STACK[0x470] = vmulq_f32(v3490, v3516);
        *&STACK[0x480] = vmulq_f32(v4098, v3516);
        *&STACK[0x490] = vmulq_f32(v4095, v3516);
        *&STACK[0x4A0] = vmulq_f32(v3481, v3516);
        *&STACK[0x4B0] = vmulq_f32(v4087, v3516);
        *&STACK[0x4C0] = vmulq_f32(v3506, v3516);
        *&STACK[0x4D0] = vmulq_f32(v4070, v3516);
        *&STACK[0x4E0] = vmulq_f32(v3509, v3516);
        v3517 = *&STACK[0x2158];
        *&STACK[0x4F0] = vmulq_f32(v4069, v3516);
        v3518 = vextq_s8(v3492, v3517, 4uLL);
        v3518.i32[0] = v3492.i32[2];
        v3519 = vextq_s8(v3492, vextq_s8(v3492, v3517, 0xCuLL), 0xCuLL);
        v3520 = vextq_s8(v3517, vdupq_laneq_s32(v3517, 3), 4uLL);
        *&STACK[0x500] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3510, xmmword_298496230, v3518), xmmword_298496220, v3519), v3516);
        *&STACK[0x510] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3495, xmmword_298496240, v3517), xmmword_298495F80, v3520), v3516);
        *&STACK[0x530] = vmulq_f32(vmlaq_f32(vmulq_f32(v3520, xmmword_2984961E0), xmmword_298496210, v3517), v3516);
        *&STACK[0x520] = vmulq_f32(vmlaq_f32(vmulq_f32(v3519, xmmword_2984961F0), xmmword_298496200, v3518), v3516);
        *&STACK[0x550] = vmulq_f32(vmlaq_f32(vmulq_f32(v4072, xmmword_2984961E0), xmmword_298496210, v4073), v3516);
        *&STACK[0x540] = vmulq_f32(vmlaq_f32(vmulq_f32(v3496, xmmword_2984961F0), xmmword_298496200, v3511), v3516);
        *&STACK[0x570] = vmulq_f32(v3498, v3516);
        *&STACK[0x560] = vmulq_f32(v3512, v3516);
        *&STACK[0x590] = vmulq_f32(v4083, v3516);
        *&STACK[0x580] = vmulq_f32(v3486, v3516);
        *&STACK[0x5B0] = vmulq_f32(v4079, v3516);
        *&STACK[0x5A0] = vmulq_f32(v4068, v3516);
        v3521 = vmulq_f32(*&STACK[0x360], v3516);
        *&STACK[0x5D0] = vmulq_f32(v4076, v3516);
        *&STACK[0x5C0] = v3521;
        v3522 = vmulq_f32(v3514, v3516);
        v3523 = *&STACK[0x2B0];
        *&STACK[0x5F0] = vmulq_f32(v4074, v3516);
        v3524 = *&STACK[0x21D8];
        *&STACK[0x5E0] = v3522;
        v3525 = vextq_s8(v3500, v3524, 4uLL);
        v3525.i32[0] = v3500.i32[2];
        v3526 = vextq_s8(v3500, vextq_s8(v3500, v3524, 0xCuLL), 0xCuLL);
        v3527 = vextq_s8(v3524, vdupq_laneq_s32(v3524, 3), 4uLL);
        *&STACK[0x610] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3504, xmmword_298496240, v3524), xmmword_298495F80, v3527), v3516);
        *&STACK[0x600] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3515, xmmword_298496230, v3525), xmmword_298496220, v3526), v3516);
        *&STACK[0x630] = vmulq_f32(vmlaq_f32(vmulq_f32(v3527, xmmword_2984961E0), xmmword_298496210, v3524), v3516);
        *&STACK[0x620] = vmulq_f32(vmlaq_f32(vmulq_f32(v3526, xmmword_2984961F0), xmmword_298496200, v3525), v3516);
        v3528 = *&STACK[0x2A0];
        v3529 = vdupq_lane_s32(*&STACK[0x2A0], 0);
        v3530 = vdupq_lane_s32(*&STACK[0x2A0], 1);
        v3531 = &STACK[0x440] + 32 * ((v3376 >> 3) & 1);
        v3532 = vdupq_laneq_s32(*&STACK[0x2A0], 2);
        v3533 = vdupq_laneq_s32(*&STACK[0x2A0], 3);
        v3534 = &STACK[0x440] + 32 * ((v3376 >> 2) & 1);
        v3535 = &STACK[0x440] + 32 * ((v3376 >> 1) & 1);
        v3536 = &STACK[0x440] + 32 * (v3376 & 1);
        v3537 = 0uLL;
        v3538 = 0uLL;
        v3539 = 0uLL;
        v3540 = 0uLL;
        v3541 = 0uLL;
        v3542 = 0uLL;
        v3543 = 0uLL;
        v3544 = 0uLL;
        do
        {
          v3528.i32[0] = LOBYTE(STACK[0x14C7]);
          v3545 = vdupq_lane_s8(*&vceqq_s8(v3528, vars0), 0);
          v3546 = vsubq_f32(vmlaq_f32(v3523, *&v3534[v3459], v3532), *&v3404[v3459 + 82]);
          v3547 = *&v3404[v3459 + 114];
          v3548 = *&v3404[v3459 + 116];
          v3549 = vbslq_s8(v3545, v3546, vmulq_f32(v3546, v3547));
          v3550 = vsubq_f32(vmlaq_f32(v3523, *&v3534[v3459 + 2], v3532), *&v3404[v3459 + 84]);
          v3551 = vbslq_s8(v3545, v3550, vmulq_f32(v3550, v3548));
          v3552 = vsubq_f32(vmlaq_f32(v4097, *&v3535[v3459], v3530), *&v3404[v3459 + 50]);
          v3528 = vbslq_s8(v3545, v3552, vmulq_f32(v3552, v3547));
          v3553 = vsubq_f32(vmlaq_f32(v4097, *&v3535[v3459 + 2], v3530), *&v3404[v3459 + 52]);
          v3554 = vbslq_s8(v3545, v3553, vmulq_f32(v3553, v3548));
          v3555 = vsubq_f32(vmlaq_f32(v4101, *&v3536[v3459], v3529), *&v3404[v3459 + 18]);
          v3556 = vbslq_s8(v3545, v3555, vmulq_f32(v3555, v3547));
          v3557 = vsubq_f32(vmlaq_f32(v4101, *&v3536[v3459 + 2], v3529), *&v3404[v3459 + 20]);
          v3558 = vbslq_s8(v3545, v3557, vmulq_f32(v3557, v3548));
          v3559 = vsubq_f32(vmlaq_f32(v3368, *&v3531[v3459], v3533), v3547);
          v3560 = vsubq_f32(vmlaq_f32(v3368, *&v3531[v3459 + 2], v3533), v3548);
          v3544 = vmlaq_f32(v3544, v3558, v3558);
          v3543 = vmlaq_f32(v3543, v3556, v3556);
          v3542 = vmlaq_f32(v3542, v3554, v3554);
          v3541 = vmlaq_f32(v3541, v3528, v3528);
          v3540 = vmlaq_f32(v3540, v3551, v3551);
          v3539 = vmlaq_f32(v3539, v3549, v3549);
          v3538 = vmlaq_f32(v3538, v3560, v3560);
          v3537 = vmlaq_f32(v3537, v3559, v3559);
          v3459 += 4;
        }

        while (v3459 != 32);
        v3457 = vpaddq_f32(vpaddq_f32(vaddq_f32(v3543, v3544), vaddq_f32(v3541, v3542)), vpaddq_f32(vaddq_f32(v3539, v3540), vaddq_f32(v3537, v3538)));
        v3458 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3541, *_Q4.f32, 1), v3543, _Q4.f32[0]), v3539, _Q4, 2), v3537, _Q4, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3542, *_Q4.f32, 1), v3544, _Q4.f32[0]), v3540, _Q4, 2), v3538, _Q4, 3));
        goto LABEL_765;
      }

      if (v3405 == 342)
      {
        v3406 = 0;
        *&STACK[0x350] = vdupq_lane_s32(*v3360.i8, 1);
        *&STACK[0x360] = vdupq_lane_s32(*v3360.i8, 0);
        v3407 = vdupq_laneq_s32(v3360, 2);
        v3408 = vdupq_laneq_s32(v3360, 3);
        v3409 = vdupq_lane_s32(*_Q4.f32, 0);
        v3410 = vdupq_laneq_s32(_Q4, 2);
        v3411 = &STACK[0x20F0] + 16 * (v3376 & 1);
        v3412 = vdupq_laneq_s32(_Q4, 3);
        v3413 = 0uLL;
        v3414 = 0uLL;
        v3415 = 0uLL;
        v3416 = 0uLL;
        v3417 = &STACK[0x20F0] + 16 * ((v3376 >> 1) & 1);
        v3418 = &STACK[0x20F0] + 16 * ((v3376 >> 3) & 1);
        v3419 = 0uLL;
        v3420 = 0uLL;
        v3421 = 0uLL;
        v3422 = 0uLL;
        v3423 = &STACK[0x20F0] + 16 * ((v3376 >> 2) & 1);
        v3424 = 0uLL;
        v3425 = 0uLL;
        do
        {
          v3357.i32[0] = LOBYTE(STACK[0x14C7]);
          v3426 = vdupq_lane_s8(*&vceqq_s8(v3357, *&STACK[0x340]), 0);
          v3427 = vsubq_f32(vmlaq_f32(v3367, *&v3423[v3406 + 2], v3407), *(&STACK[0x1440] + v3406 * 8 + 416));
          v3428 = v3367;
          v3429 = v3367;
          v3431 = *(&STACK[0x1440] + v3406 * 8 + 528);
          v3430 = *(&STACK[0x1440] + v3406 * 8 + 544);
          v3432 = vsubq_f32(vmlaq_f32(v3428, *&v3423[v3406], v3407), *(&STACK[0x1440] + v3406 * 8 + 400));
          v3433 = vbslq_s8(v3426, v3427, vmulq_f32(v3427, v3430));
          v3434 = vbslq_s8(v3426, v3432, vmulq_f32(v3432, v3431));
          v3435 = vsubq_f32(vmlaq_f32(v3366, *&v3417[v3406 + 2], *&STACK[0x350]), *(&STACK[0x1440] + v3406 * 8 + 288));
          v3436 = vsubq_f32(vmlaq_f32(v3366, *&v3417[v3406], *&STACK[0x350]), *(&STACK[0x1440] + v3406 * 8 + 272));
          v3437 = vbslq_s8(v3426, v3435, vmulq_f32(v3435, v3430));
          v3438 = vbslq_s8(v3426, v3436, vmulq_f32(v3436, v3431));
          v3439 = vsubq_f32(vmlaq_f32(v3365, *&v3411[v3406], *&STACK[0x360]), *(&STACK[0x1440] + v3406 * 8 + 144));
          v3440 = vbslq_s8(v3426, v3439, vmulq_f32(v3439, v3431));
          v3441 = vsubq_f32(vmlaq_f32(v3365, *&v3411[v3406 + 2], *&STACK[0x360]), *(&STACK[0x1440] + v3406 * 8 + 160));
          v3442 = vbslq_s8(v3426, v3441, vmulq_f32(v3441, v3430));
          v3443 = vsubq_f32(vmlaq_f32(v3368, *&v3418[v3406], v3408), v3431);
          v3444 = vsubq_f32(vmlaq_f32(v3368, *&v3418[v3406 + 2], v3408), v3430);
          v3445 = vmulq_f32(v3442, v3442);
          v3446 = vmulq_f32(v3438, v3438);
          v3447 = vmulq_f32(v3437, v3437);
          v3448 = vmulq_f32(v3440, v3440);
          v3449 = vmlaq_f32(vmulq_lane_f32(v3447, *_Q4.f32, 1), v3445, v3409);
          v3425 = vaddq_f32(v3425, v3445);
          v3450 = vmlaq_f32(vmulq_lane_f32(v3446, *_Q4.f32, 1), v3448, v3409);
          v3424 = vaddq_f32(v3424, v3448);
          v3367 = v3429;
          v3422 = vaddq_f32(v3422, v3447);
          v3421 = vaddq_f32(v3421, v3446);
          v3451 = vmulq_f32(v3433, v3433);
          v3452 = vmlaq_f32(v3449, v3451, v3410);
          v3420 = vaddq_f32(v3420, v3451);
          v3453 = vmulq_f32(v3434, v3434);
          v3454 = vmlaq_f32(v3450, v3453, v3410);
          v3419 = vaddq_f32(v3419, v3453);
          v3455 = vmulq_f32(v3444, v3444);
          v3456 = vmlaq_f32(v3452, v3455, v3412);
          v3416 = vaddq_f32(v3416, v3455);
          v3357 = vmulq_f32(v3443, v3443);
          v3415 = vaddq_f32(v3415, v3357);
          v3414 = vaddq_f32(v3414, v3456);
          v3413 = vaddq_f32(v3413, vmlaq_f32(v3454, v3357, v3412));
          v3406 += 4;
        }

        while (v3406 != 16);
        v3457 = vpaddq_f32(vpaddq_f32(vaddq_f32(v3424, v3425), vaddq_f32(v3421, v3422)), vpaddq_f32(vaddq_f32(v3419, v3420), vaddq_f32(v3415, v3416)));
        v3458 = vaddq_f32(v3413, v3414);
LABEL_765:
        v3561 = vpaddq_f32(v3458, v3458).u64[0];
        v3562 = vpadd_f32(v3561, v3561).f32[0];
        v2941 = 0uLL;
        v3563 = vpaddq_f32(v3457, v3457).u64[0];
        LODWORD(v3564) = vpadd_f32(v3563, v3563).u32[0];
        v2730 = *&STACK[0x320];
        _NF = v3562 < COERCE_FLOAT(*&STACK[0x320]) && v3564 < *&STACK[0x2D0];
        if (_NF)
        {
          v3566 = *&STACK[0x21C0];
          *&STACK[0x23B0] = *&STACK[0x21B0];
          *&STACK[0x23C0] = v3566;
          v3567 = *&STACK[0x21E0];
          *&STACK[0x23D0] = *&STACK[0x21D0];
          *&STACK[0x23E0] = v3567;
          v3568 = *&STACK[0x2180];
          *&STACK[0x2370] = *&STACK[0x2170];
          *&STACK[0x2380] = v3568;
          v3569 = *&STACK[0x21A0];
          *&STACK[0x2390] = *&STACK[0x2190];
          *&STACK[0x23A0] = v3569;
          v3570 = *&STACK[0x2140];
          *&STACK[0x2330] = *&STACK[0x2130];
          *&STACK[0x2340] = v3570;
          v3571 = *&STACK[0x2160];
          *&STACK[0x2350] = *&STACK[0x2150];
          *&STACK[0x2360] = v3571;
          v3572 = *&STACK[0x2100];
          *&STACK[0x22F0] = *&STACK[0x20F0];
          *&STACK[0x2300] = v3572;
          v3573 = *&STACK[0x2120];
          v4060 = v3359;
          *&STACK[0x2310] = *&STACK[0x2110];
          *&STACK[0x2320] = v3573;
          *&STACK[0x2D0] = v3564;
          v4059 = v3376;
          v2730.f32[0] = v3562;
          v4061 = STACK[0x1F50];
        }

        goto LABEL_772;
      }

      v2730 = *&STACK[0x320];
LABEL_772:
      if (++v2942 == 4)
      {
        break;
      }
    }

    v3574 = v4059;
    v2731 = v4060;
  }

  else
  {
    v3574 = 0;
  }

  v3575 = *v5;
  if (v2730.f32[0] >= *v5)
  {
    v3580 = 0;
    v3574 = 0;
    LODWORD(v3576) = 0;
    LOBYTE(v3581) = 0;
    LOBYTE(v3582) = 0;
    v3583 = 0uLL;
    v3579 = 0uLL;
    v3578 = 0uLL;
    v3577 = 0uLL;
  }

  else
  {
    v3576 = v2731 >> 27;
    v3577 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2330], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2340], v3576)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2350], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2360], v3576)))));
    v3578 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x22F0], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2300], v3576)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2310], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2320], v3576)))));
    v3579 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23B0], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23C0], v3576)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23D0], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23E0], v3576)))));
    v3580 = v2731 & 0x1FFFF;
    v3581 = HIDWORD(v2731);
    v3582 = v2731 >> 40;
    v3583 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2370], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2380], v3576)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2390], v3576))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23A0], v3576)))));
    *v5 = v2730.f32[0];
    v3575 = v2730.f32[0];
    v2941 = vmovl_u8(v4061);
  }

  if (v4054 > v3575)
  {
    v3584 = v3581 + 1;
    v3585 = __clz(__rbit32(v3584));
    v3586 = v3584 >> v3585;
    v3587 = (v3584 >> v3585);
    if (v3585 && v3587 != 1)
    {
      v3588 = vsubq_s16(vdupq_n_s16(v3581), v2941);
      if (v3587 == 3)
      {
        v3589 = 21846;
      }

      else
      {
        v3589 = 13108;
      }

      v3590 = vdupq_n_s16(v3589);
      v3591 = vminq_u16(v2941, v3588);
      v3592 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v3591.i8, *v3590.i8), 0x10uLL), vmull_high_u16(v3591, v3590), 0x10uLL);
      v3590.i64[0] = 0x1000100010001;
      v3590.i64[1] = 0x1000100010001;
      v2941 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v3591, v3592, vmovl_u8(vdup_n_s8(v3586))), vdupq_n_s16(v3585)), vaddq_s16(v3592, v3592)), vbicq_s8(v3590, vceqq_s16(v3591, v2941)));
    }

    v3593 = vandq_s8(v2941, vcgtq_u16(vdupq_n_s16(v3582), xmmword_298495BB0));
    switch(v3587)
    {
      case 5:
        v3628 = vdupq_n_s16(v3585);
        v3629 = vshlq_u16(v3593, vnegq_s16(v3628));
        *v3629.i8 = vmovn_s16(v3629);
        v3630 = vqtbl1q_s8(v3629, xmmword_298495BC0);
        v3631 = vqtbl1q_s8(v3629, xmmword_298495BD0);
        v3632 = vpaddq_s16(vmull_u8(*v3630.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v3630, v3630, 8uLL), 0x2001200120012001));
        v3630.i64[0] = 0x7000700070007;
        v3630.i64[1] = 0x7000700070007;
        v3633 = vandq_s8(v3632, v3630);
        v3634 = vandq_s8(vshrq_n_u16(v3632, 5uLL), v3630);
        v3635.i64[0] = 0x4000400040004;
        v3635.i64[1] = 0x4000400040004;
        v3636 = vceqq_s16(v3631, v3635);
        v3637 = vceqq_s16(v3634, v3635);
        v3638 = vsubq_s8(vaddq_s16(v3632, vshlq_n_s16(v3631, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v3633), v3637));
        if ((vmaxvq_u16(v3636) & 0x8000) != 0)
        {
          v3639.i64[0] = 0x18001800180018;
          v3639.i64[1] = 0x18001800180018;
          v3638.i64[0] = vsubq_s8(v3638, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v3633), v3636), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v3633), v3636), v3637)), vandq_s8(vmulq_s16(v3634, v3639), vandq_s8(vceqq_s16(v3633, v3635), v3636)))).u64[0];
        }

        v3638.i64[1] = v3638.i64[0];
        v3640 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v3638, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v3628), vandq_s8(v3593, vdupq_n_s16(~(-1 << v3585)))), vaddq_s16(vdupq_n_s32(v3585 << 16), xmmword_298495C10));
        v3641 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v3640, v3640)), vaddq_s32(vdupq_n_s64(v3585 << 33), xmmword_298495C20));
        v3641.i64[0] = vpaddq_s32(v3641, v3641).u64[0];
        v3601 = v3641.u32[0];
        v3602 = (v3641.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v3585);
LABEL_795:
        v3627 = v3602 | v3601;
        break;
      case 3:
        *v3593.i8 = vmovn_s16(v3593);
        v3603 = vandq_s8(v3593, xmmword_298495C30);
        v3604 = vdupq_n_s8(v3585);
        v3605 = vshlq_u8(v3603, vnegq_s8(v3604));
        v3606 = vqtbl1q_s8(v3605, xmmword_298495C40);
        v3607 = vqtbl1q_s8(v3605, xmmword_298495C50);
        v3608 = vpaddq_s16(vmull_u8(*v3606.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3606, v3606, 8uLL), 0x8010040180100401));
        v3608.i64[0] = vpaddq_s16(v3608, v3608).u64[0];
        v3609 = vmovl_s16(*v3608.i8);
        v3610 = vshlq_n_s32(v3607, 5uLL);
        v3606.i64[0] = 0x3000000030;
        v3606.i64[1] = 0x3000000030;
        v3611.i64[0] = 0x2000000020;
        v3611.i64[1] = 0x2000000020;
        v3612 = vceqq_s32(vandq_s8(v3609, v3606), v3611);
        v3613 = vaddw_s16(v3610, *v3608.i8);
        v3611.i64[0] = 0xFF000000FFLL;
        v3611.i64[1] = 0xFF000000FFLL;
        v3614 = vcgtq_s32(v3613, v3611);
        if ((vmaxvq_u32(vorrq_s8(v3612, v3614)) & 0x80000000) != 0)
        {
          v3615.i64[0] = 0x200000002;
          v3615.i64[1] = 0x200000002;
          v3616 = vceqq_s32(v3607, v3615);
          v3617 = vshrq_n_u32(v3609, 2uLL);
          v3618 = vandq_s8(v3614, v3616);
          v3619.i64[0] = 0xF0000000FLL;
          v3619.i64[1] = 0xF0000000FLL;
          v3620 = vandq_s8(v3609, v3619);
          v3621.i64[0] = 0x303030303030303;
          v3621.i64[1] = 0x303030303030303;
          v3622.i64[0] = 0x6060606060606060;
          v3622.i64[1] = 0x6060606060606060;
          v3613.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v3622, v3610, v3621), v3614), v3613), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v3620), v3612), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v3617, v3619)), v3618))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v3620), vandq_s8(v3612, v3618))).u64[0];
        }

        v3613.i64[1] = v3613.i64[0];
        v3623 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v3613, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v3604.i8), vand_s8(*v3603.i8, vdup_n_s8((1 << v3585) - 1))));
        v3624 = vadd_s32(vdup_n_s32(2 * v3585), 0x300000004);
        v3625.i64[0] = v3624.u32[0];
        v3625.i64[1] = v3624.u32[1];
        v3626 = vshlq_u32(vmlal_u16((*&v3623 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v3623, 0x10uLL), vshl_u16(vdup_n_s16(1 << v3585), 0x2000100010002)), vtrn1q_s32(0, v3625));
        v3626.i64[0] = vpaddq_s32(v3626, v3626).u64[0];
        v3627 = (v3626.u32[1] << (4 * v3585 + 7)) | v3626.u32[0];
        break;
      case 1:
        v3594.i64[0] = 0xFFFF0000FFFFLL;
        v3594.i64[1] = 0xFFFF0000FFFFLL;
        v3595.i64[0] = 0xFFFF0000FFFF0000;
        v3595.i64[1] = 0xFFFF0000FFFF0000;
        v3596 = vorrq_s8(vshlq_u32(vandq_s8(v3593, v3595), vnegq_s32(vdupq_n_s32(16 - v3585))), vandq_s8(v3593, v3594));
        v3594.i64[0] = 0xFFFFFFFFLL;
        v3594.i64[1] = 0xFFFFFFFFLL;
        v3597 = vandq_s8(v3596, v3594);
        v3595.i64[0] = 0xFFFFFFFF00000000;
        v3595.i64[1] = 0xFFFFFFFF00000000;
        v3598 = vandq_s8(v3596, v3595);
        *v3595.i8 = vdup_n_s32(2 * (16 - v3585));
        v3599.i64[0] = v3595.u32[0];
        v3599.i64[1] = v3595.u32[1];
        v3600 = vorrq_s8(vshlq_u64(v3598, vnegq_s64(v3599)), v3597);
        v3601 = v3600.i64[0];
        v3602 = v3600.i64[1] << (4 * v3585);
        goto LABEL_795;
      default:
        v3627 = 0;
        break;
    }

    v3642 = __clz(__rbit32(v3576 + 1));
    v3643 = (v3576 + 1) >> v3642;
    LOBYTE(STACK[0x22F2]) = v3642;
    LOWORD(STACK[0x22F0]) = v3576 | (v3643 << 8);
    if ((v3580 & 0x400) == 0)
    {
      *&STACK[0x440] = v3578;
      *&STACK[0x450] = v3577;
      *v3644.i64 = PackWeights(&STACK[0x22F0], &STACK[0x440]);
      goto LABEL_813;
    }

    if (v3643 == 1)
    {
      v3645 = vzip2q_s8(v3578, v3583);
      v3646 = vzip1q_s8(v3578, v3583);
      v3647 = vzip2q_s8(v3577, v3579);
      v3648 = vzip1q_s8(v3577, v3579);
      v3649 = 60 * v3642;
      v4106.val[1] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3645));
      v4106.val[0] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3646));
      v4104.val[1] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3647));
      v4104.val[0] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3648));
      v3650 = vaddvq_s32(vorrq_s8(vqtbl2q_s8(v4106, xmmword_298496430), vqtbl2q_s8(v4106, xmmword_298496420))) | (vaddvq_s32(vorrq_s8(vqtbl2q_s8(v4104, xmmword_298496430), vqtbl2q_s8(v4104, xmmword_298496420))) << 32);
    }

    else
    {
      if (v3642)
      {
        v3649 = 60 * v3642;
        v3650 = 0uLL;
        if (v3643 != 3)
        {
          goto LABEL_812;
        }
      }

      else
      {
        if (v3643 != 3)
        {
          v3649 = 0;
          v3650 = 0uLL;
          goto LABEL_812;
        }

        v3651 = vzip2q_s8(v3577, v3579);
        v3652 = vzip1q_s8(v3577, v3579);
        v3653 = vzip2q_s8(v3578, v3583);
        v3654 = vzip1q_s8(v3578, v3583);
        v3655 = vqtbl1q_s8(v3654, xmmword_298495C40);
        v3656 = vqtbl1q_s8(v3653, xmmword_298495C90);
        v3657 = vqtbl1q_s8(v3652, xmmword_2984963C0);
        v3658 = vqtbl1q_s8(v3651, xmmword_2984963D0);
        v3659 = vqtbl1q_s8(v3654, xmmword_298495C50);
        v3660 = vpaddq_s16(vpaddq_s16(vmull_u8(*v3655.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3655, v3655, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v3656.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3656, v3656, 8uLL), 0x8010040180100401)));
        v3661 = vpaddq_s16(vpaddq_s16(vmull_u8(*v3657.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3657, v3657, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v3658.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3658, v3658, 8uLL), 0x8010040180100401)));
        v3665 = vaddq_s16(v3660, vqtbl1q_s8(v3660, xmmword_298495CB0));
        v3663 = vaddq_s16(v3661, vqtbl1q_s8(v3661, xmmword_298495CB0));
        v3665.i16[3] = 0;
        v3662 = vuzp1q_s16(v3659, vqtbl1q_s8(v3653, xmmword_298495CA0));
        v3663.i16[0] += v3665.i16[7];
        v3663.i16[3] = 0;
        v3664 = vuzp1q_s16(vqtbl1q_s8(v3652, xmmword_2984963E0), vqtbl1q_s8(v3651, xmmword_2984963F0));
        v3665.i16[7] = 0;
        v3652.i64[0] = 0x30003000300030;
        v3652.i64[1] = 0x30003000300030;
        v3660.i64[0] = 0x20002000200020;
        v3660.i64[1] = 0x20002000200020;
        v3666 = vceqq_s16(vandq_s8(v3665, v3652), v3660);
        v3667 = vceqq_s16(vandq_s8(v3663, v3652), v3660);
        v3652.i64[0] = 0xFF00FF00FF00FFLL;
        v3652.i64[1] = 0xFF00FF00FF00FFLL;
        v3668 = vcgtq_u16(v3665, v3652);
        v3669 = vcgtq_u16(v3663, v3652);
        v3670 = vshlq_n_s16(v3662, 5uLL);
        v3671 = vshlq_n_s16(v3664, 5uLL);
        v3672 = vaddq_s16(v3665, v3670);
        if ((vmaxvq_u16(vorrq_s8(v3666, v3668)) & 0x8000) != 0)
        {
          v3673.i64[0] = 0x2000200020002;
          v3673.i64[1] = 0x2000200020002;
          v3674 = vceqq_s16(v3662, v3673);
          v3675 = vshrq_n_u16(v3665, 2uLL);
          v3676 = vandq_s8(v3668, v3674);
          v3677.i64[0] = 0xF000F000F000FLL;
          v3677.i64[1] = 0xF000F000F000FLL;
          v3678 = vandq_s8(v3665, v3677);
          v3679.i64[0] = 0x303030303030303;
          v3679.i64[1] = 0x303030303030303;
          v3680.i64[0] = 0x6060606060606060;
          v3680.i64[1] = 0x6060606060606060;
          v3672 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v3680, v3670, v3679), v3668), v3672), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v3678), v3666), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v3675, v3677)), v3676))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v3678), vandq_s8(v3666, v3676)));
        }

        v3681 = vaddq_s16(v3663, v3671);
        if ((vmaxvq_u16(vorrq_s8(v3667, v3669)) & 0x8000) != 0)
        {
          v3682 = vshrq_n_u16(v3663, 2uLL);
          v3683.i64[0] = 0xFF00FF00FF00FFLL;
          v3683.i64[1] = 0xFF00FF00FF00FFLL;
          v3684.i64[0] = 0x2000200020002;
          v3684.i64[1] = 0x2000200020002;
          v3685 = vandq_s8(vcgtq_u16(v3663, v3683), vceqq_s16(v3664, v3684));
          v3684.i64[0] = 0xF000F000F000FLL;
          v3684.i64[1] = 0xF000F000F000FLL;
          v3686 = vandq_s8(v3663, v3684);
          v3687.i64[0] = 0x303030303030303;
          v3687.i64[1] = 0x303030303030303;
          v3688.i64[0] = 0x6060606060606060;
          v3688.i64[1] = 0x6060606060606060;
          v3681 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v3688, v3671, v3687), v3669), v3681), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v3686), v3667), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v3682, v3684)), v3685))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v3686), vandq_s8(v3667, v3685)));
        }

        v3649 = 0;
        v3650 = vaddq_s8(vqtbl1q_s8(v3681, xmmword_298496400), vqtbl1q_s8(v3672, xmmword_298496150));
      }

      v3649 += 96;
    }

LABEL_812:
    v3689 = vqtbl1q_s8((31 - __clz(v3574)), vsubq_s8(xmmword_298451AC0, vdupq_n_s8((126 - v3649) >> 3)));
    v3644 = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v3689, xmmword_298451AD0), vdupq_n_s64((126 - v3649) | 0xFFFFFFFFFFFFFFF8)), vshlq_u64(v3689, vdupq_n_s64((126 - v3649) & 7))), vqtbl1q_s8(vrbitq_s8(v3650), xmmword_298495DE0));
LABEL_813:
    v3690.i64[0] = v3580 | (v3627 << 17);
    v3690.i64[1] = v3627 >> 47;
    *v4056 = vorrq_s8(v3644, v3690);
    v3575 = *v5;
  }

  if (v3575 > v5[1])
  {
    bzero(&STACK[0x440], 0x320uLL);
    v3691 = 0;
    LOWORD(STACK[0x4C4]) = 324;
    LOBYTE(STACK[0x4C6]) = -1;
    LOBYTE(STACK[0x4C8]) = -1;
    v3692 = vdupq_n_s32(0x3D500000u);
    v3693 = *(v6 + 48);
    v3694 = *(v6 + 56);
    v3695 = vdupq_n_s32(0x3E7C0000u);
    v3697 = *(v6 + 144);
    v3696 = *(v6 + 160);
    __asm { FMOV            V2.4S, #0.40625 }

    v3699 = vdupq_n_s32(0x3CC00000u);
    v3701 = v4055[8];
    v3700 = v4055[9];
    v3702 = v4055[24];
    v3703 = v4055[25];
    v3704 = v4055[40];
    v3705 = v4055[41];
    v3706 = *(v6 + 176);
    v3707 = *(v6 + 192);
    v3708 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[22], v3692), v3695, v3694[24]), _Q2, v3696), v3695, v3707);
    v3709 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[21], v3692), v3695, v3694[23]), _Q2, v3697), v3695, v3706);
    v3710 = vmlaq_f32(vmulq_f32(v3697, v3699), v4053, v3706);
    v3711 = vmlaq_f32(vmulq_f32(v3696, v3699), v4053, v3707);
    v3712 = v4055[10];
    v3713 = v4055[11];
    v3714 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[38], v3692), v3695, v3694[40]), _Q2, v3700), v3695, v3713);
    v3715 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[37], v3692), v3695, v3694[39]), _Q2, v3701), v3695, v3712);
    v3716 = vmlaq_f32(vmulq_f32(v3701, v3699), v4053, v3712);
    v3717 = vmlaq_f32(vmulq_f32(v3700, v3699), v4053, v3713);
    v3718 = v4055[26];
    v3719 = v4055[27];
    v3720 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[54], v3692), v3695, v3694[56]), _Q2, v3703), v3695, v3719);
    v3721 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[53], v3692), v3695, v3694[55]), _Q2, v3702), v3695, v3718);
    v3722 = vmlaq_f32(vmulq_f32(v3703, v3699), v4053, v3719);
    v3723 = vmlaq_f32(vmulq_f32(v3702, v3699), v4053, v3718);
    v3724 = v4055[42];
    v3725 = v4055[43];
    v3726 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[70], v3692), v3695, v3694[72]), _Q2, v3705), v3695, v3725);
    v3727 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3694[69], v3692), v3695, v3694[71]), _Q2, v3704), v3695, v3724);
    v3728 = vmlaq_f32(vmulq_f32(v3705, v3699), v4053, v3725);
    v3729 = vmlaq_f32(vmulq_f32(v3704, v3699), v4053, v3724);
    v3731 = *(v6 + 208);
    v3730 = *(v6 + 224);
    *&STACK[0x2200] = vmlaq_f32(v3708, v3692, v3730);
    *&STACK[0x21F0] = vmlaq_f32(v3709, v3692, v3731);
    v3732 = vdupq_n_s32(0x3EC40000u);
    v3708.i64[0] = 0x3C0000003C000000;
    v3708.i64[1] = 0x3C0000003C000000;
    v3734 = v4055[12];
    v3733 = v4055[13];
    *&STACK[0x2100] = vmlaq_f32(v3714, v3692, v3733);
    *&STACK[0x20F0] = vmlaq_f32(v3715, v3692, v3734);
    v3735 = vmlaq_f32(v3717, v3732, v3733);
    v3736 = vmlaq_f32(v3716, v3732, v3734);
    v3737 = vmulq_f32(v3733, v3708);
    v3738 = vmulq_f32(v3734, v3708);
    v3740 = v4055[28];
    v3739 = v4055[29];
    *&STACK[0x2020] = vmlaq_f32(v3720, v3692, v3739);
    *&STACK[0x2010] = vmlaq_f32(v3721, v3692, v3740);
    v3741 = vmlaq_f32(v3723, v3732, v3740);
    v3742 = vmlaq_f32(v3722, v3732, v3739);
    v3743 = vmulq_f32(v3739, v3708);
    v3744 = vmulq_f32(v3740, v3708);
    v3745 = v4055[44];
    v3746 = v4055[45];
    *&STACK[0x1F40] = vmlaq_f32(v3726, v3692, v3746);
    *&STACK[0x1F30] = vmlaq_f32(v3727, v3692, v3745);
    v3748 = *(v6 + 240);
    v3747 = *(v6 + 256);
    v3749 = vdupq_n_s32(0x3EA60000u);
    v3750 = vmlaq_f32(vmlaq_f32(v3710, v3732, v3731), v3749, v3748);
    v3751 = vmlaq_f32(vmlaq_f32(v3711, v3732, v3730), v3749, v3747);
    v3752 = vdupq_n_s32(0x3DC80000u);
    v3753 = vmlaq_f32(vmulq_f32(v3731, v3708), v3752, v3748);
    v3754 = vmlaq_f32(vmulq_f32(v3730, v3708), v3752, v3747);
    v3756 = v4055[14];
    v3755 = v4055[15];
    v3757 = vmlaq_f32(v3736, v3749, v3756);
    v3758 = vmlaq_f32(v3735, v3749, v3755);
    v3759 = vmlaq_f32(v3738, v3752, v3756);
    v3760 = vmlaq_f32(v3737, v3752, v3755);
    v3761 = v4055[30];
    v3762 = v4055[31];
    v3763 = vmlaq_f32(v3742, v3749, v3762);
    v3764 = vmlaq_f32(v3741, v3749, v3761);
    v3765 = vmlaq_f32(v3744, v3752, v3761);
    v3766 = vmlaq_f32(v3743, v3752, v3762);
    v3767 = v4055[46];
    v3768 = v4055[47];
    v3769 = vmlaq_f32(vmlaq_f32(v3728, v3732, v3746), v3749, v3768);
    v3770 = vmlaq_f32(vmlaq_f32(v3729, v3732, v3745), v3749, v3767);
    v3771 = vmlaq_f32(vmulq_f32(v3746, v3708), v3752, v3768);
    v3772 = vmlaq_f32(vmulq_f32(v3745, v3708), v3752, v3767);
    v3773 = v4055[1];
    v3774 = vmlaq_f32(v3751, v3752, v3773);
    v3775 = vmlaq_f32(v3754, v3749, v3773);
    v3776 = vmlaq_f32(v3753, v3749, *v4055);
    v3777 = v4055[16];
    v3778 = v4055[17];
    v3779 = vmlaq_f32(v3758, v3752, v3778);
    v3780 = vmlaq_f32(v3757, v3752, v3777);
    v3781 = vmlaq_f32(v3760, v3749, v3778);
    v3782 = vmlaq_f32(v3759, v3749, v3777);
    v3784 = v4055[32];
    v3783 = v4055[33];
    v3785 = vmlaq_f32(v3764, v3752, v3784);
    v3786 = vmlaq_f32(v3763, v3752, v3783);
    v3787 = vmlaq_f32(v3766, v3749, v3783);
    v3788 = vmlaq_f32(v3765, v3749, v3784);
    v3790 = v4055[48];
    v3789 = v4055[49];
    v3791 = vmlaq_f32(v3770, v3752, v3790);
    v3792 = vmlaq_f32(v3769, v3752, v3789);
    v3793 = vmlaq_f32(v3772, v3749, v3790);
    v3794 = vmlaq_f32(v3771, v3749, v3789);
    v3796 = v4055[2];
    v3795 = v4055[3];
    v3797 = vmlaq_f32(vmlaq_f32(v3750, v3752, *v4055), v3708, v3796);
    *&STACK[0x2220] = vmlaq_f32(v3774, v3708, v3795);
    *&STACK[0x2210] = v3797;
    v3798 = vmlaq_f32(v3776, v3732, v3796);
    v3799 = vmlaq_f32(v3775, v3732, v3795);
    v3800 = vmulq_f32(v3796, v3692);
    v3801 = vmulq_f32(v3795, v3692);
    v3803 = v4055[18];
    v3802 = v4055[19];
    *&STACK[0x2120] = vmlaq_f32(v3779, v3708, v3802);
    *&STACK[0x2110] = vmlaq_f32(v3780, v3708, v3803);
    v3804 = vmlaq_f32(v3782, v3732, v3803);
    v3805 = vmlaq_f32(v3781, v3732, v3802);
    v3806 = vmulq_f32(v3803, v3692);
    v3807 = vmulq_f32(v3802, v3692);
    v3808 = v4055[34];
    v3809 = v4055[35];
    *&STACK[0x2030] = vmlaq_f32(v3785, v3708, v3808);
    *&STACK[0x2040] = vmlaq_f32(v3786, v3708, v3809);
    v3810 = vmlaq_f32(v3788, v3732, v3808);
    v3811 = vmlaq_f32(v3787, v3732, v3809);
    v3812 = vmulq_f32(v3808, v3692);
    v3813 = vmulq_f32(v3809, v3692);
    v3814 = v4055[50];
    v3815 = v4055[51];
    *&STACK[0x1F50] = vmlaq_f32(v3791, v3708, v3814);
    *&STACK[0x1F60] = vmlaq_f32(v3792, v3708, v3815);
    v3816 = vmlaq_f32(v3794, v3732, v3815);
    v3817 = vmlaq_f32(v3793, v3732, v3814);
    v3818 = vmulq_f32(v3814, v3692);
    v3819 = vmulq_f32(v3815, v3692);
    v3820 = v4055[4];
    v3821 = v4055[5];
    v3822 = vmlaq_f32(v3799, v4053, v3821);
    v3823 = vmlaq_f32(v3798, v4053, v3820);
    v3824 = vmlaq_f32(v3801, v3695, v3821);
    v3825 = vmlaq_f32(v3800, v3695, v3820);
    v3826 = v4055[20];
    v3827 = v4055[21];
    v3828 = vmlaq_f32(v3805, v4053, v3827);
    v3829 = vmlaq_f32(v3804, v4053, v3826);
    v3830 = vmlaq_f32(v3807, v3695, v3827);
    v3831 = vmlaq_f32(v3806, v3695, v3826);
    v3832 = v4055[36];
    v3833 = v4055[37];
    v3834 = vmlaq_f32(v3811, v4053, v3833);
    v3835 = vmlaq_f32(v3810, v4053, v3832);
    v3836 = vmlaq_f32(v3813, v3695, v3833);
    v3837 = vmlaq_f32(v3812, v3695, v3832);
    v3839 = v4055[52];
    v3838 = v4055[53];
    v3840 = vmlaq_f32(v3817, v4053, v3839);
    v3841 = vmlaq_f32(v3816, v4053, v3838);
    v3842 = vmlaq_f32(v3819, v3695, v3838);
    v3843 = vmlaq_f32(v3818, v3695, v3839);
    v3845 = v4055[6];
    v3844 = v4055[7];
    *&STACK[0x2240] = vmlaq_f32(v3822, v3699, v3844);
    *&STACK[0x2230] = vmlaq_f32(v3823, v3699, v3845);
    v3847 = v4055[22];
    v3846 = v4055[23];
    *&STACK[0x2140] = vmlaq_f32(v3828, v3699, v3846);
    *&STACK[0x2130] = vmlaq_f32(v3829, v3699, v3847);
    v3848 = vmlaq_f32(v3831, _Q2, v3847);
    v3849 = vmlaq_f32(v3830, _Q2, v3846);
    v3851 = v4055[38];
    v3850 = v4055[39];
    *&STACK[0x2060] = vmlaq_f32(v3834, v3699, v3850);
    *&STACK[0x2050] = vmlaq_f32(v3835, v3699, v3851);
    v3852 = vmlaq_f32(v3837, _Q2, v3851);
    v3853 = vmlaq_f32(v3836, _Q2, v3850);
    v3854 = v4055[54];
    v3855 = v4055[55];
    *&STACK[0x1F70] = vmlaq_f32(v3840, v3699, v3854);
    *&STACK[0x1F80] = vmlaq_f32(v3841, v3699, v3855);
    v3856 = *(v6 + 104);
    v3857 = *(v6 + 112);
    v3858 = vmlaq_f32(v3849, v3695, v3856[26]);
    v3859 = vmlaq_f32(v3848, v3695, v3856[25]);
    v3860 = vmlaq_f32(v3853, v3695, v3856[42]);
    v3861 = vmlaq_f32(v3852, v3695, v3856[41]);
    v3862 = vmlaq_f32(vmlaq_f32(v3842, _Q2, v3855), v3695, v3856[58]);
    v3863 = vmlaq_f32(vmlaq_f32(v3843, _Q2, v3854), v3695, v3856[57]);
    v3864 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3825, _Q2, v3845), v3695, v3856[9]), v3692, v3856[11]);
    *&STACK[0x2260] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3824, _Q2, v3844), v3695, v3856[10]), v3692, v3856[12]);
    *&STACK[0x2250] = v3864;
    v3865 = vmlaq_f32(v3859, v3692, v3856[27]);
    *&STACK[0x2160] = vmlaq_f32(v3858, v3692, v3856[28]);
    *&STACK[0x2150] = v3865;
    v3866 = vmlaq_f32(v3861, v3692, v3856[43]);
    *&STACK[0x2080] = vmlaq_f32(v3860, v3692, v3856[44]);
    *&STACK[0x2070] = v3866;
    v3867 = vmlaq_f32(v3863, v3692, v3856[59]);
    *&STACK[0x1FA0] = vmlaq_f32(v3862, v3692, v3856[60]);
    *&STACK[0x1F90] = v3867;
    v3869 = *(v6 + 64);
    v3868 = *(v6 + 72);
    v3870 = vmlaq_f32(vmulq_f32(vextq_s8(v3693[70], v3869[69], 8uLL), v3692), v3695, vextq_s8(v3693[72], v3869[71], 8uLL));
    v3871 = vmlaq_f32(vmulq_f32(vextq_s8(v3693[54], v3869[53], 8uLL), v3692), v3695, vextq_s8(v3693[56], v3869[55], 8uLL));
    v3872 = vmlaq_f32(vmulq_f32(vextq_s8(v3693[38], v3869[37], 8uLL), v3692), v3695, vextq_s8(v3693[40], v3869[39], 8uLL));
    v3873 = vmlaq_f32(vmulq_f32(vextq_s8(v3693[22], v3869[21], 8uLL), v3692), v3695, vextq_s8(v3693[24], v3869[23], 8uLL));
    v3875 = *(v6 + 88);
    v3874 = *(v6 + 96);
    v3876 = vextq_s8(v3868[10], v3875[9], 8uLL);
    v3877 = vextq_s8(v3868[26], v3875[25], 8uLL);
    v3878 = vextq_s8(v3868[42], v3875[41], 8uLL);
    v3879 = vextq_s8(v3868[58], v3875[57], 8uLL);
    v3880 = vextq_s8(v3868[12], v3875[11], 8uLL);
    v3881 = vextq_s8(v3868[28], v3875[27], 8uLL);
    v3882 = vextq_s8(v3868[44], v3875[43], 8uLL);
    v3883 = vextq_s8(v3868[60], v3875[59], 8uLL);
    v3884 = vmlaq_f32(vmlaq_f32(v3870, _Q2, v3879), v3695, v3883);
    v3885 = vmlaq_f32(vmlaq_f32(v3871, _Q2, v3878), v3695, v3882);
    v3886 = vmlaq_f32(vmlaq_f32(v3872, _Q2, v3877), v3695, v3881);
    v3887 = vmlaq_f32(vmlaq_f32(v3873, _Q2, v3876), v3695, v3880);
    v3888 = vmlaq_f32(vmulq_f32(v3876, v3699), v4053, v3880);
    v3889 = vmlaq_f32(vmulq_f32(v3877, v3699), v4053, v3881);
    v3890 = vmlaq_f32(vmulq_f32(v3878, v3699), v4053, v3882);
    v3891 = vmlaq_f32(vmulq_f32(v3879, v3699), v4053, v3883);
    v3892 = vextq_s8(v3868[14], v3875[13], 8uLL);
    v3893 = vextq_s8(v3868[30], v3875[29], 8uLL);
    v3894 = vextq_s8(v3868[46], v3875[45], 8uLL);
    v3895 = vextq_s8(v3868[62], v3875[61], 8uLL);
    *&STACK[0x2320] = vmlaq_f32(v3884, v3692, v3895);
    *&STACK[0x2310] = vmlaq_f32(v3885, v3692, v3894);
    *&STACK[0x2300] = vmlaq_f32(v3886, v3692, v3893);
    *&STACK[0x22F0] = vmlaq_f32(v3887, v3692, v3892);
    v3896 = vmlaq_f32(v3891, v3732, v3895);
    v3897 = vmlaq_f32(v3890, v3732, v3894);
    v3898 = vmlaq_f32(v3889, v3732, v3893);
    v3899 = vmlaq_f32(v3888, v3732, v3892);
    v3900 = vmulq_f32(v3895, v3708);
    v3901 = vmulq_f32(v3894, v3708);
    v3902 = vmulq_f32(v3893, v3708);
    v3903 = vmulq_f32(v3892, v3708);
    v3904 = vextq_s8(v3868[16], v3875[15], 8uLL);
    v3905 = vextq_s8(v3868[32], v3875[31], 8uLL);
    v3906 = vextq_s8(v3868[48], v3875[47], 8uLL);
    v3907 = vextq_s8(v3868[64], v3875[63], 8uLL);
    v3908 = vmlaq_f32(v3899, v3749, v3904);
    v3909 = vmlaq_f32(v3898, v3749, v3905);
    v3910 = vmlaq_f32(v3897, v3749, v3906);
    v3911 = vmlaq_f32(v3896, v3749, v3907);
    v3912 = vmlaq_f32(v3903, v3752, v3904);
    v3913 = vmlaq_f32(v3902, v3752, v3905);
    v3914 = vmlaq_f32(v3901, v3752, v3906);
    v3915 = vmlaq_f32(v3900, v3752, v3907);
    v3916 = vextq_s8(v3868[18], v3875[17], 8uLL);
    v3917 = vextq_s8(v3868[34], v3875[33], 8uLL);
    v3918 = vextq_s8(v3868[50], v3875[49], 8uLL);
    v3919 = vextq_s8(v3868[66], v3875[65], 8uLL);
    v3920 = vmlaq_f32(v3910, v3752, v3918);
    v3921 = vmlaq_f32(v3909, v3752, v3917);
    v3922 = vmlaq_f32(v3908, v3752, v3916);
    v3923 = vmlaq_f32(v3915, v3749, v3919);
    v3924 = vmlaq_f32(v3914, v3749, v3918);
    v3925 = vmlaq_f32(v3913, v3749, v3917);
    v3926 = vmlaq_f32(v3912, v3749, v3916);
    v3927 = vextq_s8(v3868[20], v3875[19], 8uLL);
    v3928 = vextq_s8(v3868[36], v3875[35], 8uLL);
    v3929 = vextq_s8(v3868[52], v3875[51], 8uLL);
    v3930 = vextq_s8(v3868[68], v3875[67], 8uLL);
    *&STACK[0x2360] = vmlaq_f32(vmlaq_f32(v3911, v3752, v3919), v3708, v3930);
    *&STACK[0x2350] = vmlaq_f32(v3920, v3708, v3929);
    *&STACK[0x2340] = vmlaq_f32(v3921, v3708, v3928);
    *&STACK[0x2330] = vmlaq_f32(v3922, v3708, v3927);
    v3931 = vmlaq_f32(v3926, v3732, v3927);
    v3932 = vmulq_f32(v3927, v3692);
    v3933 = vextq_s8(v3868[22], v3875[21], 8uLL);
    v3934 = vextq_s8(v3868[38], v3875[37], 8uLL);
    v3935 = vextq_s8(v3868[54], v3875[53], 8uLL);
    v3936 = vextq_s8(v3868[70], v3875[69], 8uLL);
    v3937 = vmlaq_f32(vmlaq_f32(v3923, v3732, v3930), v4053, v3936);
    v3938 = vmlaq_f32(vmlaq_f32(v3924, v3732, v3929), v4053, v3935);
    v3939 = vmlaq_f32(vmlaq_f32(v3925, v3732, v3928), v4053, v3934);
    v3940 = vmlaq_f32(v3931, v4053, v3933);
    v3941 = vmlaq_f32(vmulq_f32(v3930, v3692), v3695, v3936);
    v3942 = vmlaq_f32(vmulq_f32(v3929, v3692), v3695, v3935);
    v3943 = vmlaq_f32(vmulq_f32(v3928, v3692), v3695, v3934);
    v3944 = vmlaq_f32(v3932, v3695, v3933);
    v3945 = vextq_s8(v3868[24], v3875[23], 8uLL);
    v3946 = vextq_s8(v3868[40], v3875[39], 8uLL);
    v3947 = vextq_s8(v3868[56], v3875[55], 8uLL);
    v3948 = vextq_s8(v3868[72], v3875[71], 8uLL);
    *&STACK[0x23A0] = vmlaq_f32(v3937, v3699, v3948);
    *&STACK[0x2390] = vmlaq_f32(v3938, v3699, v3947);
    *&STACK[0x2380] = vmlaq_f32(v3939, v3699, v3946);
    *&STACK[0x2370] = vmlaq_f32(v3940, v3699, v3945);
    v3949 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3944, _Q2, v3945), v3695, vextq_s8(v3874[10], v3857[9], 8uLL)), v3692, vextq_s8(v3874[12], v3857[11], 8uLL));
    v3950 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3943, _Q2, v3946), v3695, vextq_s8(v3874[26], v3857[25], 8uLL)), v3692, vextq_s8(v3874[28], v3857[27], 8uLL));
    v3951 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3942, _Q2, v3947), v3695, vextq_s8(v3874[42], v3857[41], 8uLL)), v3692, vextq_s8(v3874[44], v3857[43], 8uLL));
    *&STACK[0x23E0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3941, _Q2, v3948), v3695, vextq_s8(v3874[58], v3857[57], 8uLL)), v3692, vextq_s8(v3874[60], v3857[59], 8uLL));
    *&STACK[0x23D0] = v3951;
    v3952 = &STACK[0x510];
    *&STACK[0x23C0] = v3950;
    *&STACK[0x23B0] = v3949;
    do
    {
      v3953 = &STACK[0x21F0] + 4 * v3691;
      v3954 = *v3953;
      v3955 = *(v3953 + 1);
      v3956 = vmulq_f32(*v3953, xmmword_298496450);
      v3957 = &STACK[0x20F0] + 4 * v3691;
      v3958 = *v3957;
      v3959 = *(v3957 + 1);
      v3960 = vmulq_f32(*v3957, xmmword_298496450);
      v3961 = &STACK[0x2010] + 4 * v3691;
      v3962 = *v3961;
      v3963 = *(v3961 + 1);
      v3964 = vmulq_f32(*v3961, xmmword_298496450);
      v3965 = &STACK[0x1F30] + 4 * v3691;
      v3966 = *v3965;
      v3967 = *(v3965 + 1);
      v3968 = (&STACK[0x22F0] + 8 * v3691);
      v3969 = vpaddq_f32(vmulq_f32(*v3968, xmmword_2984964A0), vmulq_f32(v3968[1], xmmword_2984964A0));
      v3970 = vpaddq_f32(vmulq_f32(v3968[2], xmmword_2984964A0), vmulq_f32(v3968[3], xmmword_2984964A0));
      v3971 = vpaddq_f32(vpaddq_f32(v3956, vmulq_f32(v3955, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3955, xmmword_298496460), xmmword_298496470, v3954), vmlaq_f32(vmulq_f32(v3955, xmmword_298496480), xmmword_298496490, v3954)));
      v3972 = vpaddq_f32(vpaddq_f32(v3960, vmulq_f32(v3959, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3959, xmmword_298496460), xmmword_298496470, v3958), vmlaq_f32(vmulq_f32(v3959, xmmword_298496480), xmmword_298496490, v3958)));
      v3973.i64[0] = vaddq_f32(v3969, v3971).u64[0];
      v3973.i64[1] = v3971.i64[1];
      v3974 = vpaddq_f32(vpaddq_f32(v3964, vmulq_f32(v3963, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3963, xmmword_298496460), xmmword_298496470, v3962), vmlaq_f32(vmulq_f32(v3963, xmmword_298496480), xmmword_298496490, v3962)));
      *v3956.f32 = vadd_f32(*&vextq_s8(v3969, v3969, 8uLL), *v3972.i8);
      v3956.i64[1] = vextq_s8(v3972, v3972, 8uLL).u64[0];
      v3975 = vpaddq_f32(vpaddq_f32(vmulq_f32(v3966, xmmword_298496450), vmulq_f32(v3967, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3967, xmmword_298496460), xmmword_298496470, v3966), vmlaq_f32(vmulq_f32(v3967, xmmword_298496480), xmmword_298496490, v3966)));
      v3976.i64[0] = vaddq_f32(v3970, v3974).u64[0];
      *v3958.f32 = vadd_f32(*&vextq_s8(v3970, v3970, 8uLL), *v3975.i8);
      v3976.i64[1] = v3974.i64[1];
      v3958.i64[1] = vextq_s8(v3975, v3975, 8uLL).u64[0];
      v3952[-4] = vuzp1q_s32(v3973, vextq_s8(v3973, v3973, 0xCuLL));
      *v3952 = vuzp1q_s32(v3956, vextq_s8(v3956, v3956, 0xCuLL));
      v3952[4] = vuzp1q_s32(v3976, vextq_s8(v3976, v3976, 0xCuLL));
      v3952[8] = vuzp1q_s32(v3958, vextq_s8(v3958, v3958, 0xCuLL));
      ++v3691;
      ++v3952;
    }

    while (v3691 != 4);
    *&STACK[0x440] = *v6;
    v3977 = *(v6 + 32);
    STACK[0x460] = v3977;
    STACK[0x468] = v6;
    v3978 = *(v6 + 135);
    LOBYTE(STACK[0x4C7]) = v3978;
    v3979 = *&STACK[0x500];
    v3980 = *&STACK[0x4F0];
    v3981 = *&STACK[0x4E0];
    v3982 = *&STACK[0x4D0];
    v3983 = *&STACK[0x540];
    v3984 = *&STACK[0x530];
    v3985 = *&STACK[0x520];
    v3986 = *&STACK[0x510];
    v3988 = *&STACK[0x570];
    v3987 = *&STACK[0x580];
    v3990 = *&STACK[0x550];
    v3989 = *&STACK[0x560];
    if (!v3978)
    {
      v3992 = *&STACK[0x5B0];
      v3991 = *&STACK[0x5C0];
      v3994 = *&STACK[0x590];
      v3993 = *&STACK[0x5A0];
      v3982 = vminnmq_f32(v3982, *&STACK[0x590]);
      v3981 = vminnmq_f32(v3981, *&STACK[0x5A0]);
      v3980 = vminnmq_f32(v3980, *&STACK[0x5B0]);
      v3979 = vminnmq_f32(v3979, *&STACK[0x5C0]);
      *&STACK[0x4E0] = v3981;
      *&STACK[0x4D0] = v3982;
      *&STACK[0x4F0] = v3980;
      *&STACK[0x500] = v3979;
      v3986 = vminnmq_f32(v3986, v3994);
      v3985 = vminnmq_f32(v3985, v3993);
      v3984 = vminnmq_f32(v3984, v3992);
      v3983 = vminnmq_f32(v3983, v3991);
      *&STACK[0x520] = v3985;
      *&STACK[0x510] = v3986;
      *&STACK[0x530] = v3984;
      *&STACK[0x540] = v3983;
      v3990 = vminnmq_f32(v3990, v3994);
      v3989 = vminnmq_f32(v3989, v3993);
      v3988 = vminnmq_f32(v3988, v3992);
      v3987 = vminnmq_f32(v3987, v3991);
      *&STACK[0x550] = v3990;
      *&STACK[0x560] = v3989;
      *&STACK[0x570] = v3988;
      *&STACK[0x580] = v3987;
    }

    if (*&STACK[0x4BC] < 0.0)
    {
      if (v3977)
      {
        v3995 = *v3977;
      }

      else
      {
        v3995 = xmmword_2984959B0;
      }

      v3996 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3983, *v3995.f32, 1), v3979, v3995.f32[0]), v3987, v3995, 2);
      v3997 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3984, *v3995.f32, 1), v3980, v3995.f32[0]), v3988, v3995, 2);
      v3998 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3985, *v3995.f32, 1), v3981, v3995.f32[0]), v3989, v3995, 2);
      v3999 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3986, *v3995.f32, 1), v3982, v3995.f32[0]), v3990, v3995, 2);
      *&STACK[0x6D0] = v3999;
      *&STACK[0x6E0] = v3998;
      *&STACK[0x6F0] = v3997;
      *&STACK[0x700] = v3996;
      v4000 = vsubq_f32(v3981, v3998);
      v4001 = vsubq_f32(v3979, v3996);
      v4002 = vsubq_f32(v3982, v3999);
      v4003 = vsubq_f32(v3980, v3997);
      v4004 = vsubq_f32(v3984, v3997);
      v4005 = vsubq_f32(v3986, v3999);
      v4006 = vsubq_f32(v3983, v3996);
      v4007 = vsubq_f32(v3985, v3998);
      v4008 = vsubq_f32(v3988, v3997);
      v4009 = vsubq_f32(v3990, v3999);
      v4010 = vsubq_f32(v3987, v3996);
      v4011 = vsubq_f32(v3989, v3998);
      v4012 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v4005, v4005), v4002, v4002), v4009, v4009), vmlaq_f32(vmlaq_f32(vmulq_f32(v4004, v4004), v4003, v4003), v4008, v4008)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v4007, v4007), v4000, v4000), v4011, v4011), vmlaq_f32(vmlaq_f32(vmulq_f32(v4006, v4006), v4001, v4001), v4010, v4010)));
      v4012.i64[0] = vpaddq_f32(v4012, v4012).u64[0];
      v4012.f32[0] = vrecpes_f32(vpadd_f32(*v4012.f32, *v4012.f32).f32[0]);
      *&STACK[0x4BC] = (v4012.f32[0] * 3.0) + (v4012.f32[0] * 3.0);
    }

    v4013 = *&STACK[0x590];
    v4014 = *&STACK[0x5A0];
    v4015 = vdupq_n_s32(0x3B808081u);
    v4016 = vcgeq_f32(v4015, *&STACK[0x5A0]);
    v4017 = vcgeq_f32(v4015, *&STACK[0x590]);
    v4018 = *&STACK[0x5B0];
    v4019 = *&STACK[0x5C0];
    v4020 = vcgeq_f32(v4015, *&STACK[0x5C0]);
    v4021 = vcgeq_f32(v4015, *&STACK[0x5B0]);
    *&STACK[0x730] = v4021;
    *&STACK[0x740] = v4020;
    *&STACK[0x710] = v4017;
    *&STACK[0x720] = v4016;
    v4022 = vorrq_s8(vandq_s8(vuzp1q_s16(v4017, v4016), xmmword_298495650), vandq_s8(vuzp1q_s16(v4021, v4020), xmmword_298495640));
    v4022.i16[0] = vaddvq_s16(v4022);
    LOWORD(STACK[0x750]) = v4022.i16[0];
    LOBYTE(STACK[0x4C6]) = vaddlv_u8(vcnt_s8(*v4022.i8));
    v4023 = vzip1q_s32(v3981, v3989);
    v4024 = vzip1q_s32(v3982, v3990);
    v4025 = vzip2q_s32(v3981, v3989);
    v4026 = vzip2q_s32(v3982, v3990);
    v4027 = vzip2q_s32(v3986, v4013);
    v4028 = vzip2q_s32(v4024, vuzp2q_s32(v4024, v3986));
    v4028.i32[3] = v4013.i32[1];
    v4029 = vzip1q_s32(v4024, v3986);
    v4029.i32[3] = v4013.i32[0];
    *&STACK[0x5F0] = vzip1q_s32(v4026, v4027);
    *&STACK[0x600] = vzip2q_s32(v4026, v4027);
    *&STACK[0x5D0] = v4029;
    *&STACK[0x5E0] = v4028;
    v4030 = vzip2q_s32(v4023, vuzp2q_s32(v4023, v3985));
    v4030.i32[3] = v4014.i32[1];
    v4031 = vzip1q_s32(v4023, v3985);
    v4031.i32[3] = v4014.i32[0];
    v4032 = vextq_s8(vzip2q_s32(v3985, v4025), v4025, 4uLL);
    v4032.i32[3] = v4014.i32[3];
    v4033 = vzip2q_s32(vextq_s8(v4025, v4025, 8uLL), v3985);
    v4033.i32[3] = v4014.i32[2];
    *&STACK[0x630] = v4033;
    *&STACK[0x640] = v4032;
    *&STACK[0x610] = v4031;
    *&STACK[0x620] = v4030;
    v4034 = vzip1q_s32(v3979, v3987);
    v4035 = vzip1q_s32(v3980, v3988);
    v4036 = vzip2q_s32(v3979, v3987);
    v4037 = vzip2q_s32(v3980, v3988);
    v4038 = vzip2q_s32(v3984, v4018);
    v4039 = vzip1q_s32(v4037, v4038);
    v4040 = vzip2q_s32(v4037, v4038);
    v4041 = vzip2q_s32(v4035, vuzp2q_s32(v4035, v3984));
    v4041.i32[3] = v4018.i32[1];
    v4042 = vzip1q_s32(v4035, v3984);
    v4042.i32[3] = v4018.i32[0];
    *&STACK[0x670] = v4039;
    *&STACK[0x680] = v4040;
    v4043 = vzip2q_s32(v4034, vuzp2q_s32(v4034, v3983));
    v4043.i32[3] = v4019.i32[1];
    v4044 = vzip1q_s32(v4034, v3983);
    v4044.i32[3] = v4019.i32[0];
    *&STACK[0x650] = v4042;
    *&STACK[0x660] = v4041;
    v4045 = vextq_s8(vzip2q_s32(v3983, v4036), v4036, 4uLL);
    v4045.i32[3] = v4019.i32[3];
    v4046 = vzip2q_s32(vextq_s8(v4036, v4036, 8uLL), v3983);
    v4046.i32[3] = v4019.i32[2];
    *&STACK[0x6B0] = v4046;
    *&STACK[0x6C0] = v4045;
    *&STACK[0x690] = v4044;
    *&STACK[0x6A0] = v4043;
    v4047 = vmulq_f32(v3979, v3979);
    v4048 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v3982, v3980), vaddq_f32(v3981, v3979)), vaddq_f32(vaddq_f32(v3986, v3984), vaddq_f32(v3985, v3983))), vpaddq_f32(vaddq_f32(vaddq_f32(v3990, v3988), vaddq_f32(v3989, v3987)), vaddq_f32(vaddq_f32(v4013, v4018), vaddq_f32(v4014, v4019))));
    v4049 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v3980, v3980), v3982, v3982), vmlaq_f32(v4047, v3981, v3981)), vaddq_f32(vmlaq_f32(vmulq_f32(v3984, v3984), v3986, v3986), vmlaq_f32(vmulq_f32(v3983, v3983), v3985, v3985))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v3988, v3988), v3990, v3990), vmlaq_f32(vmulq_f32(v3987, v3987), v3989, v3989)), vaddq_f32(vmlaq_f32(vmulq_f32(v4018, v4018), v4013, v4013), vmlaq_f32(vmulq_f32(v4019, v4019), v4014, v4014))));
    v4050 = vmulq_f32(v4048, vdupq_n_s32(0x3D800000u));
    v4051 = vmlsq_f32(v4049, v4050, v4048);
    *&STACK[0x450] = v4050;
    v4051.i64[0] = vpaddq_f32(v4051, v4051).u64[0];
    LODWORD(STACK[0x4B8]) = vpadd_f32(*v4051.f32, *v4051.f32).u32[0];
    LOBYTE(STACK[0x4C8]) = v4050.f32[3] >= 0.99988;
    memcpy(&STACK[0x1440], &STACK[0x440], 0x320uLL);
    EncodeBasicBlock_4x4(&STACK[0x1440], v4056, v5, 0);
    if (*v5 > v5[1] && !LODWORD(STACK[0x1434]) && *&STACK[0xE10] != INFINITY)
    {
      EncodeDualPartitionBlock(v6, v6, v6, v6, v4056, v5, &STACK[0xCA0]);
    }
  }

LABEL_828:
  _VF = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x23F8]);
}