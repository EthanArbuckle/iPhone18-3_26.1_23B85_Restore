int32x2_t from_422_to_v216<2,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 20;
  v7 = a2 + 4;
  if (a4 > 0)
  {
    v8.i16[0] = a2[16];
    v8.i16[1] = *a2;
    v8.i16[2] = *v6;
    v8.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v9 = vmin_s16(v8, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v9, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[17];
    v10.i16[1] = *v7;
    v10.i16[2] = a2[21];
    v10.i16[3] = a2[5];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = a2 + 22;
    a1 = (a1 + a3);
    v7 = a2 + 6;
    if (a4 != 1)
    {
      v11.i16[0] = a2[18];
      v11.i16[1] = a2[2];
      v11.i16[2] = *v6;
      v11.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[19];
      v11.i16[1] = *v7;
      v11.i16[2] = a2[23];
      v11.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      v6 = a2 + 24;
      a1 = (a1 + a3);
      v7 = a2 + 8;
    }
  }

  if (a4 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  v13 = v12 - 2;
  if (v13)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[4];
    a6.i32[0] = *v7;
    v14 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v15 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v14, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v16 = vrev32_s16(v15);
    v17 = vuzp1_s16(v15, v16);
    *a1 = v17;
    v17.i16[0] = v6[1];
    v17.i16[1] = v6[5];
    v16.i32[0] = *(v7 + 2);
    v18 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v17, v16), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v19 = vrev32_s16(v18);
    v20 = vuzp1_s16(v18, v19);
    a1[1] = v20;
    if (v13 != 1)
    {
      v21 = (a1 + a3);
      v20.i16[0] = v6[2];
      v20.i16[1] = v6[6];
      v19.i32[0] = *(v7 + 1);
      v22 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v20, v19), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v23 = vrev32_s16(v22);
      v24 = vuzp1_s16(v22, v23);
      *v21 = v24;
      v24.i16[0] = v6[3];
      v24.i16[1] = v6[7];
      v23.i32[0] = *(v7 + 3);
      v25 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v24, v23), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v25, vrev32_s16(v25));
      v21[1] = result;
    }
  }

  return result;
}

int8x8_t from_422_to_v216<2,1,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[8];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[10];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6.i16[0] = a2[9];
    v6.i16[1] = a2[2];
    v6.i16[2] = a2[11];
    v6.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v7 = (a1 + a3);
      v8.i16[0] = a2[12];
      v8.i16[1] = a2[4];
      v8.i16[2] = a2[14];
      v8.i16[3] = a2[5];
      *v7 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v8.i16[0] = a2[13];
      v8.i16[1] = a2[6];
      v8.i16[2] = a2[15];
      v8.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v7[1] = result;
    }
  }

  return result;
}

int8x8_t from_422_to_v216<2,1,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[8];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[10];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6.i16[0] = a2[9];
    v6.i16[1] = a2[2];
    v6.i16[2] = a2[11];
    v6.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v7 = (a1 + a3);
      v8.i16[0] = a2[12];
      v8.i16[1] = a2[4];
      v8.i16[2] = a2[14];
      v8.i16[3] = a2[5];
      *v7 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v8.i16[0] = a2[13];
      v8.i16[1] = a2[6];
      v8.i16[2] = a2[15];
      v8.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v8, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v7[1] = result;
    }
  }

  return result;
}

int8x8_t from_422_to_v216<1,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 > 0)
  {
    v4.i16[0] = a2[8];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[10];
    v4.i16[3] = a2[2];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = (a1 + a3);
    if (a4 != 1)
    {
      v7.i16[0] = a2[9];
      v7.i16[1] = a2[1];
      v7.i16[2] = a2[11];
      v7.i16[3] = a2[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v7, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *v6 = result;
      v8 = (v6 + a3);
      if (a4 <= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = a4;
      }

      v10 = v9 - 2;
      if (v10)
      {
        v11.i16[0] = a2[12];
        v11.i16[1] = a2[4];
        v11.i16[2] = a2[14];
        v11.i16[3] = a2[6];
        result = 0xF000F000F000F000;
        *v8 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        if (v10 != 1)
        {
          v12.i16[0] = a2[13];
          v12.i16[1] = a2[5];
          v12.i16[2] = a2[15];
          v12.i16[3] = a2[7];
          result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          *(v8 + a3) = result;
        }
      }
    }
  }

  return result;
}

int8x8_t from_422_to_v216<1,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 > 0)
  {
    v4.i16[0] = a2[8];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[10];
    v4.i16[3] = a2[2];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = (a1 + a3);
    if (a4 != 1)
    {
      v7.i16[0] = a2[9];
      v7.i16[1] = a2[1];
      v7.i16[2] = a2[11];
      v7.i16[3] = a2[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v7, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *v6 = result;
      v8 = (v6 + a3);
      if (a4 <= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = a4;
      }

      v10 = v9 - 2;
      if (v10)
      {
        v11.i16[0] = a2[12];
        v11.i16[1] = a2[4];
        v11.i16[2] = a2[14];
        v11.i16[3] = a2[6];
        result = 0xF000F000F000F000;
        *v8 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        if (v10 != 1)
        {
          v12.i16[0] = a2[13];
          v12.i16[1] = a2[5];
          v12.i16[2] = a2[15];
          v12.i16[3] = a2[7];
          result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          *(v8 + a3) = result;
        }
      }
    }
  }

  return result;
}

int8x8_t from_422_to_v216<1,1,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *(a1 + a3) = result;
    }
  }

  return result;
}

int8x8_t from_422_to_v216<1,1,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v4, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v6, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      *(a1 + a3) = result;
    }
  }

  return result;
}

int32x4_t *from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A71800, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71808, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v105 = a5;
    v99 = result;
    v103 = a2;
    v95 = a4;
    v97 = a6;
    v101 = a3;
    from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>();
    a4 = v95;
    a6 = v97;
    result = v99;
    a3 = v101;
    a2 = v103;
    a5 = v105;
    if (atomic_load_explicit(&qword_280A71808, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v106 = a5;
  v100 = result;
  v104 = a2;
  v96 = a4;
  v98 = a6;
  v102 = a3;
  from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>();
  a4 = v96;
  a6 = v98;
  result = v100;
  a3 = v102;
  a2 = v104;
  a5 = v106;
  if (v96 <= 8)
  {
    v94 = 0;
  }

  else
  {
    v94 = v96 - 8;
  }

  v7 = v96 - v94;
  if (!v94)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A71C80;
  v10 = *algn_280A71C90;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = a2;
    v14 = (a5 + 8 * a6 + 16);
    v15 = (result + v8 * 4);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 6uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 6uLL), v12);
    v18 = *&vrhaddq_u16(vextq_s8(v16, 0, 2uLL), v16) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v19 = vzip1q_s16(v16, v18);
    v20 = *&vrhaddq_u16(vextq_s8(v17, 0, 2uLL), v17) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v21 = vzip1q_s16(v17, v20);
    v22 = vzip2q_s16(v16, v18);
    v23 = vzip2q_s16(v17, v20);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 6uLL), v12);
    v25 = vzip1q_s16(*a5, v24);
    v26 = vzip2q_s16(*a5, v24);
    v27 = vzip1q_s16(v19, v21);
    v28 = vzip2q_s16(v19, v21);
    *result = vzip1q_s32(v25, v27);
    result[1] = vzip2q_s32(v25, v27);
    result[2] = vzip1q_s32(v26, v28);
    result[3] = vzip2q_s32(v26, v28);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 6uLL), v12);
    v30 = a5[1];
    v31 = vzip1q_s16(v30, v29);
    v32 = vzip2q_s16(v30, v29);
    v33 = vzip1q_s16(v22, v23);
    v34 = vzip2q_s16(v22, v23);
    result[4] = vzip1q_s32(v31, v33);
    result[5] = vzip2q_s32(v31, v33);
    result[6] = vzip1q_s32(v32, v34);
    result[7] = vzip2q_s32(v32, v34);
    v35 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 6uLL), v12);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 6uLL), v12);
    v37 = *&vrhaddq_u16(vextq_s8(v35, 0, 2uLL), v35) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v38 = vzip1q_s16(v35, v37);
    v39 = *&vrhaddq_u16(vextq_s8(v36, 0, 2uLL), v36) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v40 = vzip1q_s16(v36, v39);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 6uLL), v12);
    v42 = *(a5 + 8 * a6);
    v43 = vzip1q_s16(v42, v41);
    v44 = vzip2q_s16(v42, v41);
    v45 = vzip1q_s16(v38, v40);
    v46 = &result->i32[v8];
    vst2_f32(v46, v43);
    v46 += 4;
    v47 = vzip2q_s16(v38, v40);
    *v46 = vzip2q_s32(v43, v45);
    v48 = &result[2].i32[v8];
    vst2_f32(v48, v44);
    v15[3] = vzip2q_s32(v44, v47);
    a2 = v13 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    v49 = vzip2q_s16(v35, v37);
    v50 = vzip2q_s16(v36, v39);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v13[24], v9), v10), 6uLL), v12);
    v52 = vzip1q_s16(*v14, v51);
    v53 = vzip2q_s16(*v14, v51);
    v54 = vzip1q_s16(v49, v50);
    v55 = vzip2q_s16(v49, v50);
    i32 = v15[4].i32;
    vst2_f32(i32, v52);
    v15[5] = vzip2q_s32(v52, v54);
    v57 = v15[6].i32;
    vst2_f32(v57, v53);
    v15[7] = vzip2q_s32(v53, v55);
    --v11;
  }

  while (v11 > 1);
LABEL_9:
  v58 = a2 + 8;
  v59 = a2 + 32;
  v60 = a2 + 40;
  if (v7 >= 1)
  {
    v61 = xmmword_280A71C80;
    v62 = *algn_280A71C90;
    v63 = v7 + 1;
    v64 = a5 + 1;
    v65 = result + 4;
    v66.i64[0] = 0x8000800080008000;
    v66.i64[1] = 0x8000800080008000;
    v67 = result[4].i32;
    do
    {
      v68 = *v59++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v61), v62), 6uLL), v66);
      v70 = *v60++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v61), v62), 6uLL), v66);
      v72 = *&vrhaddq_u16(vextq_s8(v69, 0, 2uLL), v69) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v73 = vzip1q_s16(v69, v72);
      v74 = *&vrhaddq_u16(vextq_s8(v71, 0, 2uLL), v71) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v75 = vzip1q_s16(v71, v74);
      v76 = *a2++;
      v77 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v61), v62), 6uLL), v66);
      v78 = v64[-1];
      v79 = vzip1q_s16(v78, v77);
      v80 = vzip2q_s16(v78, v77);
      v81 = vzip1q_s16(v73, v75);
      v82 = vzip2q_s16(v73, v75);
      v83 = v65[-4].i32;
      v84 = vzip2q_s16(v69, v72);
      vst2_f32(v83, v79);
      v65[-3] = vzip2q_s32(v79, v81);
      v85 = v65[-2].i32;
      vst2_f32(v85, v80);
      v65[-1] = vzip2q_s32(v80, v82);
      v86 = *v58++;
      v87 = vzip2q_s16(v71, v74);
      v88 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v86, v61), v62), 6uLL), v66);
      v89 = vzip1q_s16(*v64, v88);
      v90 = vzip2q_s16(*v64, v88);
      v91 = vzip1q_s16(v84, v87);
      vst2_f32(v67, v89);
      v67 = (v67 + a3);
      v92 = vzip2q_s16(v84, v87);
      v65[1] = vzip2q_s32(v89, v91);
      v93 = v65[2].i32;
      vst2_f32(v93, v90);
      v65[3] = vzip2q_s32(v90, v92);
      --v63;
      v64 = (v64 + a6);
      v65 = v67;
    }

    while (v63 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A71810, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71818, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v105 = a5;
    v99 = result;
    v103 = a2;
    v95 = a4;
    v97 = a6;
    v101 = a3;
    from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>();
    a4 = v95;
    a6 = v97;
    result = v99;
    a3 = v101;
    a2 = v103;
    a5 = v105;
    if (atomic_load_explicit(&qword_280A71818, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v106 = a5;
  v100 = result;
  v104 = a2;
  v96 = a4;
  v98 = a6;
  v102 = a3;
  from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>();
  a4 = v96;
  a6 = v98;
  result = v100;
  a3 = v102;
  a2 = v104;
  a5 = v106;
  if (v96 <= 8)
  {
    v94 = 0;
  }

  else
  {
    v94 = v96 - 8;
  }

  v7 = v96 - v94;
  if (!v94)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A71CA0;
  v10 = *algn_280A71CB0;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = a2;
    v14 = (a5 + 8 * a6 + 16);
    v15 = (result + v8 * 4);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 6uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 6uLL), v12);
    v18 = *&vrhaddq_u16(vextq_s8(v16, 0, 2uLL), v16) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v19 = vzip1q_s16(v16, v18);
    v20 = *&vrhaddq_u16(vextq_s8(v17, 0, 2uLL), v17) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v21 = vzip1q_s16(v17, v20);
    v22 = vzip2q_s16(v16, v18);
    v23 = vzip2q_s16(v17, v20);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 6uLL), v12);
    v25 = vzip1q_s16(*a5, v24);
    v26 = vzip2q_s16(*a5, v24);
    v27 = vzip1q_s16(v19, v21);
    v28 = vzip2q_s16(v19, v21);
    *result = vzip1q_s32(v25, v27);
    result[1] = vzip2q_s32(v25, v27);
    result[2] = vzip1q_s32(v26, v28);
    result[3] = vzip2q_s32(v26, v28);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 6uLL), v12);
    v30 = a5[1];
    v31 = vzip1q_s16(v30, v29);
    v32 = vzip2q_s16(v30, v29);
    v33 = vzip1q_s16(v22, v23);
    v34 = vzip2q_s16(v22, v23);
    result[4] = vzip1q_s32(v31, v33);
    result[5] = vzip2q_s32(v31, v33);
    result[6] = vzip1q_s32(v32, v34);
    result[7] = vzip2q_s32(v32, v34);
    v35 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 6uLL), v12);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 6uLL), v12);
    v37 = *&vrhaddq_u16(vextq_s8(v35, 0, 2uLL), v35) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v38 = vzip1q_s16(v35, v37);
    v39 = *&vrhaddq_u16(vextq_s8(v36, 0, 2uLL), v36) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v40 = vzip1q_s16(v36, v39);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 6uLL), v12);
    v42 = *(a5 + 8 * a6);
    v43 = vzip1q_s16(v42, v41);
    v44 = vzip2q_s16(v42, v41);
    v45 = vzip1q_s16(v38, v40);
    v46 = &result->i32[v8];
    vst2_f32(v46, v43);
    v46 += 4;
    v47 = vzip2q_s16(v38, v40);
    *v46 = vzip2q_s32(v43, v45);
    v48 = &result[2].i32[v8];
    vst2_f32(v48, v44);
    v15[3] = vzip2q_s32(v44, v47);
    a2 = v13 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    v49 = vzip2q_s16(v35, v37);
    v50 = vzip2q_s16(v36, v39);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v13[24], v9), v10), 6uLL), v12);
    v52 = vzip1q_s16(*v14, v51);
    v53 = vzip2q_s16(*v14, v51);
    v54 = vzip1q_s16(v49, v50);
    v55 = vzip2q_s16(v49, v50);
    i32 = v15[4].i32;
    vst2_f32(i32, v52);
    v15[5] = vzip2q_s32(v52, v54);
    v57 = v15[6].i32;
    vst2_f32(v57, v53);
    v15[7] = vzip2q_s32(v53, v55);
    --v11;
  }

  while (v11 > 1);
LABEL_9:
  v58 = a2 + 8;
  v59 = a2 + 32;
  v60 = a2 + 40;
  if (v7 >= 1)
  {
    v61 = xmmword_280A71CA0;
    v62 = *algn_280A71CB0;
    v63 = v7 + 1;
    v64 = a5 + 1;
    v65 = result + 4;
    v66.i64[0] = 0x8000800080008000;
    v66.i64[1] = 0x8000800080008000;
    v67 = result[4].i32;
    do
    {
      v68 = *v59++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v61), v62), 6uLL), v66);
      v70 = *v60++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v61), v62), 6uLL), v66);
      v72 = *&vrhaddq_u16(vextq_s8(v69, 0, 2uLL), v69) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v73 = vzip1q_s16(v69, v72);
      v74 = *&vrhaddq_u16(vextq_s8(v71, 0, 2uLL), v71) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v75 = vzip1q_s16(v71, v74);
      v76 = *a2++;
      v77 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v61), v62), 6uLL), v66);
      v78 = v64[-1];
      v79 = vzip1q_s16(v78, v77);
      v80 = vzip2q_s16(v78, v77);
      v81 = vzip1q_s16(v73, v75);
      v82 = vzip2q_s16(v73, v75);
      v83 = v65[-4].i32;
      v84 = vzip2q_s16(v69, v72);
      vst2_f32(v83, v79);
      v65[-3] = vzip2q_s32(v79, v81);
      v85 = v65[-2].i32;
      vst2_f32(v85, v80);
      v65[-1] = vzip2q_s32(v80, v82);
      v86 = *v58++;
      v87 = vzip2q_s16(v71, v74);
      v88 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v86, v61), v62), 6uLL), v66);
      v89 = vzip1q_s16(*v64, v88);
      v90 = vzip2q_s16(*v64, v88);
      v91 = vzip1q_s16(v84, v87);
      vst2_f32(v67, v89);
      v67 = (v67 + a3);
      v92 = vzip2q_s16(v84, v87);
      v65[1] = vzip2q_s32(v89, v91);
      v93 = v65[2].i32;
      vst2_f32(v93, v90);
      v65[3] = vzip2q_s32(v90, v92);
      --v63;
      v64 = (v64 + a6);
      v65 = v67;
    }

    while (v63 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71820, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71828, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v96 = result;
    v92 = a2;
    v94 = a3;
    v90 = a4;
    from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>();
    a4 = v90;
    a2 = v92;
    a3 = v94;
    result = v96;
    if (atomic_load_explicit(&qword_280A71828, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v97 = result;
  v93 = a2;
  v95 = a3;
  v91 = a4;
  from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>();
  a4 = v91;
  a2 = v93;
  a3 = v95;
  result = v97;
  if (v91 <= 8)
  {
    v89 = 0;
  }

  else
  {
    v89 = v91 - 8;
  }

  v5 = v91 - v89;
  if (!v89)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = 2 * a3;
  v7 = xmmword_280A71CC0;
  v8 = *algn_280A71CD0;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  do
  {
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v7), v8), 6uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v7), v8), 6uLL), v10);
    v14 = *&vrhaddq_u16(vextq_s8(v12, 0, 2uLL), v12) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v15 = vzip1q_s16(v12, v14);
    v16 = *&vrhaddq_u16(vextq_s8(v13, 0, 2uLL), v13) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v17 = vzip1q_s16(v13, v16);
    v18 = vzip2q_s16(v12, v14);
    v19 = vzip2q_s16(v13, v16);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v7), v8), 6uLL), v10);
    v21 = vzip1q_s16(v11, v20);
    v22 = vzip2q_s16(v11, v20);
    v23 = vzip1q_s16(v15, v17);
    v24 = vzip2q_s16(v15, v17);
    *result = vzip1q_s32(v21, v23);
    result[1] = vzip2q_s32(v21, v23);
    result[2] = vzip1q_s32(v22, v24);
    result[3] = vzip2q_s32(v22, v24);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v7), v8), 6uLL), v10);
    v26 = vzip1q_s16(v11, v25);
    v27 = vzip2q_s16(v11, v25);
    v28 = vzip1q_s16(v18, v19);
    v29 = vzip2q_s16(v18, v19);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v7), v8), 6uLL), v10);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v7), v8), 6uLL), v10);
    v32 = *&vrhaddq_u16(vextq_s8(v30, 0, 2uLL), v30) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v33 = vzip1q_s16(v30, v32);
    v34 = *&vrhaddq_u16(vextq_s8(v31, 0, 2uLL), v31) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v35 = vzip1q_s16(v31, v34);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v7), v8), 6uLL), v10);
    v37 = vzip1q_s16(v11, v36);
    v38 = vzip2q_s16(v11, v36);
    v39 = vzip1q_s16(v33, v35);
    v40 = vzip2q_s16(v33, v35);
    v41 = (result + v6 * 4);
    v42 = &result->i32[v6];
    vst2_f32(v42, v37);
    v42 += 4;
    *v42 = vzip2q_s32(v37, v39);
    v43 = &result[2].i32[v6];
    vst2_f32(v43, v38);
    v41[3] = vzip2q_s32(v38, v40);
    v44 = a2[24];
    ++a2;
    result = (result + a3);
    --v5;
    v45 = vzip2q_s16(v30, v32);
    v46 = vzip2q_s16(v31, v34);
    v47 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v44, v7), v8), 6uLL), v10);
    v48 = vzip1q_s16(v11, v47);
    v49 = vzip2q_s16(v11, v47);
    v50 = vzip1q_s16(v45, v46);
    v51 = vzip2q_s16(v45, v46);
    i32 = v41[4].i32;
    vst2_f32(i32, v48);
    v41[5] = vzip2q_s32(v48, v50);
    v53 = v41[6].i32;
    vst2_f32(v53, v49);
    v41[7] = vzip2q_s32(v49, v51);
    --v9;
  }

  while (v9 > 1);
LABEL_9:
  v54 = a2 + 8;
  v55 = a2 + 32;
  v56 = a2 + 40;
  if (v5 >= 1)
  {
    v57 = xmmword_280A71CC0;
    v58 = *algn_280A71CD0;
    v59 = v5 + 1;
    v60 = result + 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = result[4].i32;
    do
    {
      v64 = *v55++;
      v65 = v60[-4].i32;
      v66 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v64, v57), v58), 6uLL), v61);
      v67 = *v56++;
      v68 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v67, v57), v58), 6uLL), v61);
      v69 = *&vrhaddq_u16(vextq_s8(v66, 0, 2uLL), v66) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v70 = vzip1q_s16(v66, v69);
      v71 = *&vrhaddq_u16(vextq_s8(v68, 0, 2uLL), v68) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v72 = vzip1q_s16(v68, v71);
      v73 = vzip2q_s16(v66, v69);
      v74 = vzip2q_s16(v68, v71);
      v75 = *a2++;
      v76 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v75, v57), v58), 6uLL), v61);
      v77 = vzip1q_s16(v62, v76);
      v78 = vzip2q_s16(v62, v76);
      v79 = vzip1q_s16(v70, v72);
      v80 = vzip2q_s16(v70, v72);
      vst2_f32(v65, v77);
      v60[-3] = vzip2q_s32(v77, v79);
      v81 = v60[-2].i32;
      vst2_f32(v81, v78);
      v60[-1] = vzip2q_s32(v78, v80);
      v82 = *v54++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v57), v58), 6uLL), v61);
      v84 = vzip1q_s16(v62, v83);
      v85 = vzip1q_s16(v73, v74);
      vst2_f32(v63, v84);
      v63 = (v63 + a3);
      v86 = vzip2q_s16(v62, v83);
      v87 = vzip2q_s16(v73, v74);
      v88 = v60[2].i32;
      vst2_f32(v88, v86);
      v60[1] = vzip2q_s32(v84, v85);
      v60[3] = vzip2q_s32(v86, v87);
      --v59;
      v60 = v63;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71830, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71838, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v96 = result;
    v92 = a2;
    v94 = a3;
    v90 = a4;
    from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>();
    a4 = v90;
    a2 = v92;
    a3 = v94;
    result = v96;
    if (atomic_load_explicit(&qword_280A71838, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v97 = result;
  v93 = a2;
  v95 = a3;
  v91 = a4;
  from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>();
  a4 = v91;
  a2 = v93;
  a3 = v95;
  result = v97;
  if (v91 <= 8)
  {
    v89 = 0;
  }

  else
  {
    v89 = v91 - 8;
  }

  v5 = v91 - v89;
  if (!v89)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = 2 * a3;
  v7 = xmmword_280A71CE0;
  v8 = *algn_280A71CF0;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  do
  {
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v7), v8), 6uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v7), v8), 6uLL), v10);
    v14 = *&vrhaddq_u16(vextq_s8(v12, 0, 2uLL), v12) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v15 = vzip1q_s16(v12, v14);
    v16 = *&vrhaddq_u16(vextq_s8(v13, 0, 2uLL), v13) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v17 = vzip1q_s16(v13, v16);
    v18 = vzip2q_s16(v12, v14);
    v19 = vzip2q_s16(v13, v16);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v7), v8), 6uLL), v10);
    v21 = vzip1q_s16(v11, v20);
    v22 = vzip2q_s16(v11, v20);
    v23 = vzip1q_s16(v15, v17);
    v24 = vzip2q_s16(v15, v17);
    *result = vzip1q_s32(v21, v23);
    result[1] = vzip2q_s32(v21, v23);
    result[2] = vzip1q_s32(v22, v24);
    result[3] = vzip2q_s32(v22, v24);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v7), v8), 6uLL), v10);
    v26 = vzip1q_s16(v11, v25);
    v27 = vzip2q_s16(v11, v25);
    v28 = vzip1q_s16(v18, v19);
    v29 = vzip2q_s16(v18, v19);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v7), v8), 6uLL), v10);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v7), v8), 6uLL), v10);
    v32 = *&vrhaddq_u16(vextq_s8(v30, 0, 2uLL), v30) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v33 = vzip1q_s16(v30, v32);
    v34 = *&vrhaddq_u16(vextq_s8(v31, 0, 2uLL), v31) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
    v35 = vzip1q_s16(v31, v34);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v7), v8), 6uLL), v10);
    v37 = vzip1q_s16(v11, v36);
    v38 = vzip2q_s16(v11, v36);
    v39 = vzip1q_s16(v33, v35);
    v40 = vzip2q_s16(v33, v35);
    v41 = (result + v6 * 4);
    v42 = &result->i32[v6];
    vst2_f32(v42, v37);
    v42 += 4;
    *v42 = vzip2q_s32(v37, v39);
    v43 = &result[2].i32[v6];
    vst2_f32(v43, v38);
    v41[3] = vzip2q_s32(v38, v40);
    v44 = a2[24];
    ++a2;
    result = (result + a3);
    --v5;
    v45 = vzip2q_s16(v30, v32);
    v46 = vzip2q_s16(v31, v34);
    v47 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v44, v7), v8), 6uLL), v10);
    v48 = vzip1q_s16(v11, v47);
    v49 = vzip2q_s16(v11, v47);
    v50 = vzip1q_s16(v45, v46);
    v51 = vzip2q_s16(v45, v46);
    i32 = v41[4].i32;
    vst2_f32(i32, v48);
    v41[5] = vzip2q_s32(v48, v50);
    v53 = v41[6].i32;
    vst2_f32(v53, v49);
    v41[7] = vzip2q_s32(v49, v51);
    --v9;
  }

  while (v9 > 1);
LABEL_9:
  v54 = a2 + 8;
  v55 = a2 + 32;
  v56 = a2 + 40;
  if (v5 >= 1)
  {
    v57 = xmmword_280A71CE0;
    v58 = *algn_280A71CF0;
    v59 = v5 + 1;
    v60 = result + 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = result[4].i32;
    do
    {
      v64 = *v55++;
      v65 = v60[-4].i32;
      v66 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v64, v57), v58), 6uLL), v61);
      v67 = *v56++;
      v68 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v67, v57), v58), 6uLL), v61);
      v69 = *&vrhaddq_u16(vextq_s8(v66, 0, 2uLL), v66) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v70 = vzip1q_s16(v66, v69);
      v71 = *&vrhaddq_u16(vextq_s8(v68, 0, 2uLL), v68) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0);
      v72 = vzip1q_s16(v68, v71);
      v73 = vzip2q_s16(v66, v69);
      v74 = vzip2q_s16(v68, v71);
      v75 = *a2++;
      v76 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v75, v57), v58), 6uLL), v61);
      v77 = vzip1q_s16(v62, v76);
      v78 = vzip2q_s16(v62, v76);
      v79 = vzip1q_s16(v70, v72);
      v80 = vzip2q_s16(v70, v72);
      vst2_f32(v65, v77);
      v60[-3] = vzip2q_s32(v77, v79);
      v81 = v60[-2].i32;
      vst2_f32(v81, v78);
      v60[-1] = vzip2q_s32(v78, v80);
      v82 = *v54++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v57), v58), 6uLL), v61);
      v84 = vzip1q_s16(v62, v83);
      v85 = vzip1q_s16(v73, v74);
      vst2_f32(v63, v84);
      v63 = (v63 + a3);
      v86 = vzip2q_s16(v62, v83);
      v87 = vzip2q_s16(v73, v74);
      v88 = v60[2].i32;
      vst2_f32(v88, v86);
      v60[1] = vzip2q_s32(v84, v85);
      v60[3] = vzip2q_s32(v86, v87);
      --v59;
      v60 = v63;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A71840, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71848, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v105 = a5;
    v99 = result;
    v103 = a2;
    v95 = a4;
    v97 = a6;
    v101 = a3;
    from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>();
    a4 = v95;
    a6 = v97;
    result = v99;
    a3 = v101;
    a2 = v103;
    a5 = v105;
    if (atomic_load_explicit(&qword_280A71848, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v106 = a5;
  v100 = result;
  v104 = a2;
  v96 = a4;
  v98 = a6;
  v102 = a3;
  from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>();
  a4 = v96;
  a6 = v98;
  result = v100;
  a3 = v102;
  a2 = v104;
  a5 = v106;
  if (v96 <= 8)
  {
    v94 = 0;
  }

  else
  {
    v94 = v96 - 8;
  }

  v7 = v96 - v94;
  if (!v94)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A71D00;
  v10 = *algn_280A71D10;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = a2;
    v14 = (a5 + 8 * a6 + 16);
    v15 = (result + v8 * 4);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 4uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 4uLL), v12);
    v18 = *&vrhaddq_u16(vextq_s8(v16, 0, 2uLL), v16) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v19 = vzip1q_s16(v16, v18);
    v20 = *&vrhaddq_u16(vextq_s8(v17, 0, 2uLL), v17) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v21 = vzip1q_s16(v17, v20);
    v22 = vzip2q_s16(v16, v18);
    v23 = vzip2q_s16(v17, v20);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 4uLL), v12);
    v25 = vzip1q_s16(*a5, v24);
    v26 = vzip2q_s16(*a5, v24);
    v27 = vzip1q_s16(v19, v21);
    v28 = vzip2q_s16(v19, v21);
    *result = vzip1q_s32(v25, v27);
    result[1] = vzip2q_s32(v25, v27);
    result[2] = vzip1q_s32(v26, v28);
    result[3] = vzip2q_s32(v26, v28);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 4uLL), v12);
    v30 = a5[1];
    v31 = vzip1q_s16(v30, v29);
    v32 = vzip2q_s16(v30, v29);
    v33 = vzip1q_s16(v22, v23);
    v34 = vzip2q_s16(v22, v23);
    result[4] = vzip1q_s32(v31, v33);
    result[5] = vzip2q_s32(v31, v33);
    result[6] = vzip1q_s32(v32, v34);
    result[7] = vzip2q_s32(v32, v34);
    v35 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 4uLL), v12);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 4uLL), v12);
    v37 = *&vrhaddq_u16(vextq_s8(v35, 0, 2uLL), v35) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v38 = vzip1q_s16(v35, v37);
    v39 = *&vrhaddq_u16(vextq_s8(v36, 0, 2uLL), v36) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v40 = vzip1q_s16(v36, v39);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 4uLL), v12);
    v42 = *(a5 + 8 * a6);
    v43 = vzip1q_s16(v42, v41);
    v44 = vzip2q_s16(v42, v41);
    v45 = vzip1q_s16(v38, v40);
    v46 = &result->i32[v8];
    vst2_f32(v46, v43);
    v46 += 4;
    v47 = vzip2q_s16(v38, v40);
    *v46 = vzip2q_s32(v43, v45);
    v48 = &result[2].i32[v8];
    vst2_f32(v48, v44);
    v15[3] = vzip2q_s32(v44, v47);
    a2 = v13 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    v49 = vzip2q_s16(v35, v37);
    v50 = vzip2q_s16(v36, v39);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v13[24], v9), v10), 4uLL), v12);
    v52 = vzip1q_s16(*v14, v51);
    v53 = vzip2q_s16(*v14, v51);
    v54 = vzip1q_s16(v49, v50);
    v55 = vzip2q_s16(v49, v50);
    i32 = v15[4].i32;
    vst2_f32(i32, v52);
    v15[5] = vzip2q_s32(v52, v54);
    v57 = v15[6].i32;
    vst2_f32(v57, v53);
    v15[7] = vzip2q_s32(v53, v55);
    --v11;
  }

  while (v11 > 1);
LABEL_9:
  v58 = a2 + 8;
  v59 = a2 + 32;
  v60 = a2 + 40;
  if (v7 >= 1)
  {
    v61 = xmmword_280A71D00;
    v62 = *algn_280A71D10;
    v63 = v7 + 1;
    v64 = a5 + 1;
    v65 = result + 4;
    v66.i64[0] = 0x8000800080008000;
    v66.i64[1] = 0x8000800080008000;
    v67 = result[4].i32;
    do
    {
      v68 = *v59++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v61), v62), 4uLL), v66);
      v70 = *v60++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v61), v62), 4uLL), v66);
      v72 = *&vrhaddq_u16(vextq_s8(v69, 0, 2uLL), v69) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v73 = vzip1q_s16(v69, v72);
      v74 = *&vrhaddq_u16(vextq_s8(v71, 0, 2uLL), v71) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v75 = vzip1q_s16(v71, v74);
      v76 = *a2++;
      v77 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v61), v62), 4uLL), v66);
      v78 = v64[-1];
      v79 = vzip1q_s16(v78, v77);
      v80 = vzip2q_s16(v78, v77);
      v81 = vzip1q_s16(v73, v75);
      v82 = vzip2q_s16(v73, v75);
      v83 = v65[-4].i32;
      v84 = vzip2q_s16(v69, v72);
      vst2_f32(v83, v79);
      v65[-3] = vzip2q_s32(v79, v81);
      v85 = v65[-2].i32;
      vst2_f32(v85, v80);
      v65[-1] = vzip2q_s32(v80, v82);
      v86 = *v58++;
      v87 = vzip2q_s16(v71, v74);
      v88 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v86, v61), v62), 4uLL), v66);
      v89 = vzip1q_s16(*v64, v88);
      v90 = vzip2q_s16(*v64, v88);
      v91 = vzip1q_s16(v84, v87);
      vst2_f32(v67, v89);
      v67 = (v67 + a3);
      v92 = vzip2q_s16(v84, v87);
      v65[1] = vzip2q_s32(v89, v91);
      v93 = v65[2].i32;
      vst2_f32(v93, v90);
      v65[3] = vzip2q_s32(v90, v92);
      --v63;
      v64 = (v64 + a6);
      v65 = v67;
    }

    while (v63 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4, int16x8_t *a5, unsigned int a6)
{
  if (atomic_load_explicit(&qword_280A71850, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71858, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v105 = a5;
    v99 = result;
    v103 = a2;
    v95 = a4;
    v97 = a6;
    v101 = a3;
    from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>();
    a4 = v95;
    a6 = v97;
    result = v99;
    a3 = v101;
    a2 = v103;
    a5 = v105;
    if (atomic_load_explicit(&qword_280A71858, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = a4 - 8;
      }

      v7 = a4 - v6;
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v106 = a5;
  v100 = result;
  v104 = a2;
  v96 = a4;
  v98 = a6;
  v102 = a3;
  from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>();
  a4 = v96;
  a6 = v98;
  result = v100;
  a3 = v102;
  a2 = v104;
  a5 = v106;
  if (v96 <= 8)
  {
    v94 = 0;
  }

  else
  {
    v94 = v96 - 8;
  }

  v7 = v96 - v94;
  if (!v94)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 2 * a3;
  v9 = xmmword_280A71D20;
  v10 = *algn_280A71D30;
  v11 = a4 - 7;
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  do
  {
    v13 = a2;
    v14 = (a5 + 8 * a6 + 16);
    v15 = (result + v8 * 4);
    v16 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), 4uLL), v12);
    v17 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), 4uLL), v12);
    v18 = *&vrhaddq_u16(vextq_s8(v16, 0, 2uLL), v16) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v19 = vzip1q_s16(v16, v18);
    v20 = *&vrhaddq_u16(vextq_s8(v17, 0, 2uLL), v17) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v21 = vzip1q_s16(v17, v20);
    v22 = vzip2q_s16(v16, v18);
    v23 = vzip2q_s16(v17, v20);
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), 4uLL), v12);
    v25 = vzip1q_s16(*a5, v24);
    v26 = vzip2q_s16(*a5, v24);
    v27 = vzip1q_s16(v19, v21);
    v28 = vzip2q_s16(v19, v21);
    *result = vzip1q_s32(v25, v27);
    result[1] = vzip2q_s32(v25, v27);
    result[2] = vzip1q_s32(v26, v28);
    result[3] = vzip2q_s32(v26, v28);
    v29 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), 4uLL), v12);
    v30 = a5[1];
    v31 = vzip1q_s16(v30, v29);
    v32 = vzip2q_s16(v30, v29);
    v33 = vzip1q_s16(v22, v23);
    v34 = vzip2q_s16(v22, v23);
    result[4] = vzip1q_s32(v31, v33);
    result[5] = vzip2q_s32(v31, v33);
    result[6] = vzip1q_s32(v32, v34);
    result[7] = vzip2q_s32(v32, v34);
    v35 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), 4uLL), v12);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), 4uLL), v12);
    v37 = *&vrhaddq_u16(vextq_s8(v35, 0, 2uLL), v35) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v38 = vzip1q_s16(v35, v37);
    v39 = *&vrhaddq_u16(vextq_s8(v36, 0, 2uLL), v36) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v40 = vzip1q_s16(v36, v39);
    v41 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), 4uLL), v12);
    v42 = *(a5 + 8 * a6);
    v43 = vzip1q_s16(v42, v41);
    v44 = vzip2q_s16(v42, v41);
    v45 = vzip1q_s16(v38, v40);
    v46 = &result->i32[v8];
    vst2_f32(v46, v43);
    v46 += 4;
    v47 = vzip2q_s16(v38, v40);
    *v46 = vzip2q_s32(v43, v45);
    v48 = &result[2].i32[v8];
    vst2_f32(v48, v44);
    v15[3] = vzip2q_s32(v44, v47);
    a2 = v13 + 1;
    result = (result + a3);
    --v7;
    a5 = (a5 + a6);
    v49 = vzip2q_s16(v35, v37);
    v50 = vzip2q_s16(v36, v39);
    v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v13[24], v9), v10), 4uLL), v12);
    v52 = vzip1q_s16(*v14, v51);
    v53 = vzip2q_s16(*v14, v51);
    v54 = vzip1q_s16(v49, v50);
    v55 = vzip2q_s16(v49, v50);
    i32 = v15[4].i32;
    vst2_f32(i32, v52);
    v15[5] = vzip2q_s32(v52, v54);
    v57 = v15[6].i32;
    vst2_f32(v57, v53);
    v15[7] = vzip2q_s32(v53, v55);
    --v11;
  }

  while (v11 > 1);
LABEL_9:
  v58 = a2 + 8;
  v59 = a2 + 32;
  v60 = a2 + 40;
  if (v7 >= 1)
  {
    v61 = xmmword_280A71D20;
    v62 = *algn_280A71D30;
    v63 = v7 + 1;
    v64 = a5 + 1;
    v65 = result + 4;
    v66.i64[0] = 0x8000800080008000;
    v66.i64[1] = 0x8000800080008000;
    v67 = result[4].i32;
    do
    {
      v68 = *v59++;
      v69 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v68, v61), v62), 4uLL), v66);
      v70 = *v60++;
      v71 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v70, v61), v62), 4uLL), v66);
      v72 = *&vrhaddq_u16(vextq_s8(v69, 0, 2uLL), v69) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v73 = vzip1q_s16(v69, v72);
      v74 = *&vrhaddq_u16(vextq_s8(v71, 0, 2uLL), v71) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v75 = vzip1q_s16(v71, v74);
      v76 = *a2++;
      v77 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v76, v61), v62), 4uLL), v66);
      v78 = v64[-1];
      v79 = vzip1q_s16(v78, v77);
      v80 = vzip2q_s16(v78, v77);
      v81 = vzip1q_s16(v73, v75);
      v82 = vzip2q_s16(v73, v75);
      v83 = v65[-4].i32;
      v84 = vzip2q_s16(v69, v72);
      vst2_f32(v83, v79);
      v65[-3] = vzip2q_s32(v79, v81);
      v85 = v65[-2].i32;
      vst2_f32(v85, v80);
      v65[-1] = vzip2q_s32(v80, v82);
      v86 = *v58++;
      v87 = vzip2q_s16(v71, v74);
      v88 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v86, v61), v62), 4uLL), v66);
      v89 = vzip1q_s16(*v64, v88);
      v90 = vzip2q_s16(*v64, v88);
      v91 = vzip1q_s16(v84, v87);
      vst2_f32(v67, v89);
      v67 = (v67 + a3);
      v92 = vzip2q_s16(v84, v87);
      v65[1] = vzip2q_s32(v89, v91);
      v93 = v65[2].i32;
      vst2_f32(v93, v90);
      v65[3] = vzip2q_s32(v90, v92);
      --v63;
      v64 = (v64 + a6);
      v65 = v67;
    }

    while (v63 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71860, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71868, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v96 = result;
    v92 = a2;
    v94 = a3;
    v90 = a4;
    from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>();
    a4 = v90;
    a2 = v92;
    a3 = v94;
    result = v96;
    if (atomic_load_explicit(&qword_280A71868, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v97 = result;
  v93 = a2;
  v95 = a3;
  v91 = a4;
  from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>();
  a4 = v91;
  a2 = v93;
  a3 = v95;
  result = v97;
  if (v91 <= 8)
  {
    v89 = 0;
  }

  else
  {
    v89 = v91 - 8;
  }

  v5 = v91 - v89;
  if (!v89)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = 2 * a3;
  v7 = xmmword_280A71D40;
  v8 = *algn_280A71D50;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  do
  {
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v7), v8), 4uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v7), v8), 4uLL), v10);
    v14 = *&vrhaddq_u16(vextq_s8(v12, 0, 2uLL), v12) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v15 = vzip1q_s16(v12, v14);
    v16 = *&vrhaddq_u16(vextq_s8(v13, 0, 2uLL), v13) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v17 = vzip1q_s16(v13, v16);
    v18 = vzip2q_s16(v12, v14);
    v19 = vzip2q_s16(v13, v16);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v7), v8), 4uLL), v10);
    v21 = vzip1q_s16(v11, v20);
    v22 = vzip2q_s16(v11, v20);
    v23 = vzip1q_s16(v15, v17);
    v24 = vzip2q_s16(v15, v17);
    *result = vzip1q_s32(v21, v23);
    result[1] = vzip2q_s32(v21, v23);
    result[2] = vzip1q_s32(v22, v24);
    result[3] = vzip2q_s32(v22, v24);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v7), v8), 4uLL), v10);
    v26 = vzip1q_s16(v11, v25);
    v27 = vzip2q_s16(v11, v25);
    v28 = vzip1q_s16(v18, v19);
    v29 = vzip2q_s16(v18, v19);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v7), v8), 4uLL), v10);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v7), v8), 4uLL), v10);
    v32 = *&vrhaddq_u16(vextq_s8(v30, 0, 2uLL), v30) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v33 = vzip1q_s16(v30, v32);
    v34 = *&vrhaddq_u16(vextq_s8(v31, 0, 2uLL), v31) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v35 = vzip1q_s16(v31, v34);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v7), v8), 4uLL), v10);
    v37 = vzip1q_s16(v11, v36);
    v38 = vzip2q_s16(v11, v36);
    v39 = vzip1q_s16(v33, v35);
    v40 = vzip2q_s16(v33, v35);
    v41 = (result + v6 * 4);
    v42 = &result->i32[v6];
    vst2_f32(v42, v37);
    v42 += 4;
    *v42 = vzip2q_s32(v37, v39);
    v43 = &result[2].i32[v6];
    vst2_f32(v43, v38);
    v41[3] = vzip2q_s32(v38, v40);
    v44 = a2[24];
    ++a2;
    result = (result + a3);
    --v5;
    v45 = vzip2q_s16(v30, v32);
    v46 = vzip2q_s16(v31, v34);
    v47 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v44, v7), v8), 4uLL), v10);
    v48 = vzip1q_s16(v11, v47);
    v49 = vzip2q_s16(v11, v47);
    v50 = vzip1q_s16(v45, v46);
    v51 = vzip2q_s16(v45, v46);
    i32 = v41[4].i32;
    vst2_f32(i32, v48);
    v41[5] = vzip2q_s32(v48, v50);
    v53 = v41[6].i32;
    vst2_f32(v53, v49);
    v41[7] = vzip2q_s32(v49, v51);
    --v9;
  }

  while (v9 > 1);
LABEL_9:
  v54 = a2 + 8;
  v55 = a2 + 32;
  v56 = a2 + 40;
  if (v5 >= 1)
  {
    v57 = xmmword_280A71D40;
    v58 = *algn_280A71D50;
    v59 = v5 + 1;
    v60 = result + 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = result[4].i32;
    do
    {
      v64 = *v55++;
      v65 = v60[-4].i32;
      v66 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v64, v57), v58), 4uLL), v61);
      v67 = *v56++;
      v68 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v67, v57), v58), 4uLL), v61);
      v69 = *&vrhaddq_u16(vextq_s8(v66, 0, 2uLL), v66) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v70 = vzip1q_s16(v66, v69);
      v71 = *&vrhaddq_u16(vextq_s8(v68, 0, 2uLL), v68) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v72 = vzip1q_s16(v68, v71);
      v73 = vzip2q_s16(v66, v69);
      v74 = vzip2q_s16(v68, v71);
      v75 = *a2++;
      v76 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v75, v57), v58), 4uLL), v61);
      v77 = vzip1q_s16(v62, v76);
      v78 = vzip2q_s16(v62, v76);
      v79 = vzip1q_s16(v70, v72);
      v80 = vzip2q_s16(v70, v72);
      vst2_f32(v65, v77);
      v60[-3] = vzip2q_s32(v77, v79);
      v81 = v60[-2].i32;
      vst2_f32(v81, v78);
      v60[-1] = vzip2q_s32(v78, v80);
      v82 = *v54++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v57), v58), 4uLL), v61);
      v84 = vzip1q_s16(v62, v83);
      v85 = vzip1q_s16(v73, v74);
      vst2_f32(v63, v84);
      v63 = (v63 + a3);
      v86 = vzip2q_s16(v62, v83);
      v87 = vzip2q_s16(v73, v74);
      v88 = v60[2].i32;
      vst2_f32(v88, v86);
      v60[1] = vzip2q_s32(v84, v85);
      v60[3] = vzip2q_s32(v86, v87);
      --v59;
      v60 = v63;
    }

    while (v59 > 1);
  }

  return result;
}

int32x4_t *from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>(int32x4_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71870, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71878, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v96 = result;
    v92 = a2;
    v94 = a3;
    v90 = a4;
    from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>();
    a4 = v90;
    a2 = v92;
    a3 = v94;
    result = v96;
    if (atomic_load_explicit(&qword_280A71878, memory_order_acquire))
    {
LABEL_3:
      if (a4 <= 8)
      {
        v4 = 0;
      }

      else
      {
        v4 = a4 - 8;
      }

      v5 = a4 - v4;
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v97 = result;
  v93 = a2;
  v95 = a3;
  v91 = a4;
  from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>();
  a4 = v91;
  a2 = v93;
  a3 = v95;
  result = v97;
  if (v91 <= 8)
  {
    v89 = 0;
  }

  else
  {
    v89 = v91 - 8;
  }

  v5 = v91 - v89;
  if (!v89)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = 2 * a3;
  v7 = xmmword_280A71D60;
  v8 = *algn_280A71D70;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  do
  {
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[32], v7), v8), 4uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[40], v7), v8), 4uLL), v10);
    v14 = *&vrhaddq_u16(vextq_s8(v12, 0, 2uLL), v12) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v15 = vzip1q_s16(v12, v14);
    v16 = *&vrhaddq_u16(vextq_s8(v13, 0, 2uLL), v13) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v17 = vzip1q_s16(v13, v16);
    v18 = vzip2q_s16(v12, v14);
    v19 = vzip2q_s16(v13, v16);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v7), v8), 4uLL), v10);
    v21 = vzip1q_s16(v11, v20);
    v22 = vzip2q_s16(v11, v20);
    v23 = vzip1q_s16(v15, v17);
    v24 = vzip2q_s16(v15, v17);
    *result = vzip1q_s32(v21, v23);
    result[1] = vzip2q_s32(v21, v23);
    result[2] = vzip1q_s32(v22, v24);
    result[3] = vzip2q_s32(v22, v24);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v7), v8), 4uLL), v10);
    v26 = vzip1q_s16(v11, v25);
    v27 = vzip2q_s16(v11, v25);
    v28 = vzip1q_s16(v18, v19);
    v29 = vzip2q_s16(v18, v19);
    result[4] = vzip1q_s32(v26, v28);
    result[5] = vzip2q_s32(v26, v28);
    result[6] = vzip1q_s32(v27, v29);
    result[7] = vzip2q_s32(v27, v29);
    v30 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[48], v7), v8), 4uLL), v10);
    v31 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[56], v7), v8), 4uLL), v10);
    v32 = *&vrhaddq_u16(vextq_s8(v30, 0, 2uLL), v30) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v33 = vzip1q_s16(v30, v32);
    v34 = *&vrhaddq_u16(vextq_s8(v31, 0, 2uLL), v31) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v35 = vzip1q_s16(v31, v34);
    v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[16], v7), v8), 4uLL), v10);
    v37 = vzip1q_s16(v11, v36);
    v38 = vzip2q_s16(v11, v36);
    v39 = vzip1q_s16(v33, v35);
    v40 = vzip2q_s16(v33, v35);
    v41 = (result + v6 * 4);
    v42 = &result->i32[v6];
    vst2_f32(v42, v37);
    v42 += 4;
    *v42 = vzip2q_s32(v37, v39);
    v43 = &result[2].i32[v6];
    vst2_f32(v43, v38);
    v41[3] = vzip2q_s32(v38, v40);
    v44 = a2[24];
    ++a2;
    result = (result + a3);
    --v5;
    v45 = vzip2q_s16(v30, v32);
    v46 = vzip2q_s16(v31, v34);
    v47 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v44, v7), v8), 4uLL), v10);
    v48 = vzip1q_s16(v11, v47);
    v49 = vzip2q_s16(v11, v47);
    v50 = vzip1q_s16(v45, v46);
    v51 = vzip2q_s16(v45, v46);
    i32 = v41[4].i32;
    vst2_f32(i32, v48);
    v41[5] = vzip2q_s32(v48, v50);
    v53 = v41[6].i32;
    vst2_f32(v53, v49);
    v41[7] = vzip2q_s32(v49, v51);
    --v9;
  }

  while (v9 > 1);
LABEL_9:
  v54 = a2 + 8;
  v55 = a2 + 32;
  v56 = a2 + 40;
  if (v5 >= 1)
  {
    v57 = xmmword_280A71D60;
    v58 = *algn_280A71D70;
    v59 = v5 + 1;
    v60 = result + 4;
    v61.i64[0] = 0x8000800080008000;
    v61.i64[1] = 0x8000800080008000;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = result[4].i32;
    do
    {
      v64 = *v55++;
      v65 = v60[-4].i32;
      v66 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v64, v57), v58), 4uLL), v61);
      v67 = *v56++;
      v68 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v67, v57), v58), 4uLL), v61);
      v69 = *&vrhaddq_u16(vextq_s8(v66, 0, 2uLL), v66) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v70 = vzip1q_s16(v66, v69);
      v71 = *&vrhaddq_u16(vextq_s8(v68, 0, 2uLL), v68) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
      v72 = vzip1q_s16(v68, v71);
      v73 = vzip2q_s16(v66, v69);
      v74 = vzip2q_s16(v68, v71);
      v75 = *a2++;
      v76 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v75, v57), v58), 4uLL), v61);
      v77 = vzip1q_s16(v62, v76);
      v78 = vzip2q_s16(v62, v76);
      v79 = vzip1q_s16(v70, v72);
      v80 = vzip2q_s16(v70, v72);
      vst2_f32(v65, v77);
      v60[-3] = vzip2q_s32(v77, v79);
      v81 = v60[-2].i32;
      vst2_f32(v81, v78);
      v60[-1] = vzip2q_s32(v78, v80);
      v82 = *v54++;
      v83 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v82, v57), v58), 4uLL), v61);
      v84 = vzip1q_s16(v62, v83);
      v85 = vzip1q_s16(v73, v74);
      vst2_f32(v63, v84);
      v63 = (v63 + a3);
      v86 = vzip2q_s16(v62, v83);
      v87 = vzip2q_s16(v73, v74);
      v88 = v60[2].i32;
      vst2_f32(v88, v86);
      v60[1] = vzip2q_s32(v84, v85);
      v60[3] = vzip2q_s32(v86, v87);
      --v59;
      v60 = v63;
    }

    while (v59 > 1);
  }

  return result;
}

uint64_t from_422_to_r4fl<8,8,(AlphaOutputMethod)1,false>(uint64_t result, int16x8_t *a2, int a3, int a4, int32x4_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v108 = a2 + 8;
    v109 = a2 + 32;
    v110 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0xF000F000F000F000;
  v9.i64[1] = 0xF000F000F000F000;
  v10 = vdupq_n_s16(0xFE0u);
  v11.i64[0] = 0xE000E000E000E00;
  v11.i64[1] = 0xE000E000E000E00;
  v12.i64[0] = 0x1000100010001000;
  v12.i64[1] = 0x1000100010001000;
  v13 = vdupq_n_s32(0x39008081u);
  do
  {
    v14 = (a5 + 8 * a6);
    v15 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), v11);
    v16 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), v11);
    v17 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), v12);
    v18 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), v12);
    v19 = vzip1q_s16(v17, v18);
    v20 = vcltzq_s16(v15);
    v21 = vzip1q_s16(v15, v20);
    v22 = vzip2q_s16(v15, v20);
    v23 = vzip1q_s16(v19, 0);
    v24 = vzip2q_s16(v19, 0);
    v25 = vcvtq_f32_s32(v21);
    v26 = vcvtq_f32_s32(v22);
    v27 = vcvtq_f32_u32(v23);
    v28 = vmulq_f32(v25, v13);
    v29 = vmulq_f32(v27, v13);
    v30 = vzip1q_s32(*a5, v28);
    v31 = vzip2q_s32(*a5, v28);
    v32 = vmulq_f32(vcvtq_f32_u32(v24), v13);
    v33 = vextq_s8(v30, v29, 8uLL);
    v30.i64[1] = v29.i64[0];
    *result = v30;
    *(result + 16) = v33;
    v34 = vzip2q_s64(v31, v29);
    v31.i64[1] = v29.i64[1];
    *(result + 32) = v31;
    *(result + 48) = v34;
    v35 = vmulq_f32(v26, v13);
    v36 = a5[1];
    v37 = vzip1q_s32(v36, v35);
    v38 = vzip2q_s32(v36, v35);
    v39 = vextq_s8(v37, v32, 8uLL);
    v40 = vzip2q_s16(v17, v18);
    v37.i64[1] = v32.i64[0];
    v41 = vzip2q_s64(v38, v32);
    v38.i64[1] = v32.i64[1];
    *(result + 64) = v37;
    *(result + 80) = v39;
    *(result + 96) = v38;
    *(result + 112) = v41;
    v42 = vcltzq_s16(v16);
    v43 = vzip1q_s16(v16, v42);
    v44 = vzip2q_s16(v16, v42);
    v45 = vzip1q_s16(v40, 0);
    v46 = vzip2q_s16(v40, 0);
    v47 = vcvtq_f32_s32(v43);
    v48 = vcvtq_f32_s32(v44);
    v49 = vcvtq_f32_u32(v45);
    v50 = vmulq_f32(v47, v13);
    v51 = vmulq_f32(v49, v13);
    v52 = vcvtq_f32_u32(v46);
    v53 = a5[2];
    v54 = vzip1q_s32(v53, v50);
    v55 = vzip2q_s32(v53, v50);
    v56 = vmulq_f32(v52, v13);
    v57 = vextq_s8(v54, v51, 8uLL);
    v54.i64[1] = v51.i64[0];
    *(result + 128) = v54;
    *(result + 144) = v57;
    v58 = vzip2q_s64(v55, v51);
    v55.i64[1] = v51.i64[1];
    *(result + 160) = v55;
    *(result + 176) = v58;
    v59 = vmulq_f32(v48, v13);
    v60 = a5[3];
    v61 = vzip1q_s32(v60, v59);
    v62 = vextq_s8(v61, v56, 8uLL);
    v61.i64[1] = v56.i64[0];
    v63 = vzip2q_s32(v60, v59);
    v64 = vzip2q_s64(v63, v56);
    v63.i64[1] = v56.i64[1];
    v65 = result + 8 * a3;
    v30.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
    *(result + 24) = vmul_f32(vadd_f32(*v29.i8, *v30.i8), 0x3F0000003F000000);
    *(result + 56) = vmul_f32(vadd_f32(*v30.i8, *v32.i8), 0x3F0000003F000000);
    v29.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
    *(result + 88) = vmul_f32(vadd_f32(*v32.i8, *v29.i8), 0x3F0000003F000000);
    *(result + 120) = vmul_f32(vadd_f32(*v29.i8, *v51.i8), 0x3F0000003F000000);
    v32.i32[0] = vextq_s8(v51, v51, 8uLL).u32[0];
    *(result + 192) = v61;
    *(result + 208) = v62;
    v32.i32[1] = *(result + 172);
    *(result + 224) = v63;
    *(result + 240) = v64;
    *(result + 152) = vmul_f32(vadd_f32(*v51.i8, *v32.i8), 0x3F0000003F000000);
    v56.i32[1] = *(result + 204);
    *(result + 184) = vmul_f32(vadd_f32(*v32.i8, *v56.i8), 0x3F0000003F000000);
    *(result + 216) = vmul_f32(vadd_f32(*v56.i8, *(result + 232)), 0x3F0000003F000000);
    v66 = a2 + 1;
    a5 = (a5 + a6);
    v67 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), v11);
    v68 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v9), v10), v11);
    v69 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), v12);
    v70 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), v12);
    v71 = vzip1q_s16(v69, v70);
    v72 = vcltzq_s16(v67);
    v73 = vzip1q_s16(v67, v72);
    v74 = vzip2q_s16(v71, 0);
    v75 = vcvtq_f32_s32(vzip2q_s16(v67, v72));
    v76 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v71, 0)), v13);
    v77 = vmulq_f32(vcvtq_f32_u32(v74), v13);
    v78 = vmulq_f32(vcvtq_f32_s32(v73), v13);
    v79 = vzip1q_s32(*v14, v78);
    v80 = vzip2q_s32(*v14, v78);
    v81 = vextq_s8(v79, v76, 8uLL);
    v82 = vmulq_f32(v75, v13);
    v79.i64[1] = v76.i64[0];
    v83 = vzip2q_s64(v80, v76);
    v80.i64[1] = v76.i64[1];
    *v65 = v79;
    *(v65 + 16) = v81;
    *(v65 + 32) = v80;
    *(v65 + 48) = v83;
    v84 = v14[1];
    v85 = vzip1q_s32(v84, v82);
    v86 = vzip2q_s16(v69, v70);
    v87 = vzip2q_s32(v84, v82);
    v88 = vextq_s8(v85, v77, 8uLL);
    v89 = vzip2q_s64(v87, v77);
    v87.i64[1] = v77.i64[1];
    v85.i64[1] = v77.i64[0];
    *(v65 + 96) = v87;
    *(v65 + 112) = v89;
    *(v65 + 64) = v85;
    *(v65 + 80) = v88;
    v90 = vcltzq_s16(v68);
    v91 = vzip1q_s16(v68, v90);
    v92 = vzip2q_s16(v86, 0);
    v93 = vcvtq_f32_s32(vzip2q_s16(v68, v90));
    v94 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v86, 0)), v13);
    v95 = vmulq_f32(vcvtq_f32_u32(v92), v13);
    v96 = vmulq_f32(vcvtq_f32_s32(v91), v13);
    v97 = v14[2];
    v98 = vzip1q_s32(v97, v96);
    v99 = vzip2q_s32(v97, v96);
    v100 = vextq_s8(v98, v94, 8uLL);
    v101 = vmulq_f32(v93, v13);
    v98.i64[1] = v94.i64[0];
    v102 = vzip2q_s64(v99, v94);
    v99.i64[1] = v94.i64[1];
    *(v65 + 128) = v98;
    *(v65 + 144) = v100;
    *(v65 + 160) = v99;
    *(v65 + 176) = v102;
    v103 = v14[3];
    v104 = vzip1q_s32(v103, v101);
    result += a3;
    v105 = vzip2q_s32(v103, v101);
    v106 = vextq_s8(v104, v95, 8uLL);
    v104.i64[1] = v95.i64[0];
    v107 = vzip2q_s64(v105, v95);
    v105.i64[1] = v95.i64[1];
    v102.i64[0] = vextq_s8(v76, v76, 8uLL).u64[0];
    *(v65 + 24) = vmul_f32(vadd_f32(*v76.i8, *v102.i8), 0x3F0000003F000000);
    *v76.i8 = vmul_f32(vadd_f32(*v102.i8, *v77.i8), 0x3F0000003F000000);
    v102.i64[0] = vextq_s8(v77, v77, 8uLL).u64[0];
    *(v65 + 56) = v76.i64[0];
    *(v65 + 88) = vmul_f32(vadd_f32(*v77.i8, *v102.i8), 0x3F0000003F000000);
    *(v65 + 120) = vmul_f32(vadd_f32(*v102.i8, *v94.i8), 0x3F0000003F000000);
    v77.i32[0] = vextq_s8(v94, v94, 8uLL).u32[0];
    v77.i32[1] = *(v65 + 172);
    *(v65 + 192) = v104;
    *(v65 + 208) = v106;
    v95.i32[1] = *(v65 + 204);
    *(v65 + 224) = v105;
    *(v65 + 240) = v107;
    *(v65 + 152) = vmul_f32(vadd_f32(*v94.i8, *v77.i8), 0x3F0000003F000000);
    *v76.i8 = vadd_f32(*v95.i8, *(v65 + 232));
    *(v65 + 184) = vmul_f32(vadd_f32(*v77.i8, *v95.i8), 0x3F0000003F000000);
    *(v65 + 216) = vmul_f32(*v76.i8, 0x3F0000003F000000);
    --v7;
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v108 = v66 + 8;
  v109 = v66 + 32;
  v110 = v66 + 40;
  a2 = v66;
  if (v7 >= 1)
  {
LABEL_10:
    v111 = v7 + 1;
    v112 = a5 + 2;
    v113 = result + 120;
    v114.i64[0] = 0xF000F000F000F000;
    v114.i64[1] = 0xF000F000F000F000;
    v115 = vdupq_n_s16(0xFE0u);
    v116.i64[0] = 0xE000E000E000E00;
    v116.i64[1] = 0xE000E000E000E00;
    v117.i64[0] = 0x1000100010001000;
    v117.i64[1] = 0x1000100010001000;
    v118 = vdupq_n_s32(0x39008081u);
    do
    {
      v119 = *a2++;
      v120 = vminq_s16(vmaxq_s16(v119, v114), v115);
      v121 = *v108++;
      v122 = vminq_s16(vmaxq_s16(v121, v114), v115);
      v123 = *v109++;
      v124 = vmaxq_s16(v123, v114);
      v125 = *v110++;
      v126 = vminq_s16(v124, v115);
      v127 = vaddq_s16(v120, v116);
      v128 = vaddq_s16(v122, v116);
      v129 = vaddq_s16(v126, v117);
      v130 = vaddq_s16(vminq_s16(vmaxq_s16(v125, v114), v115), v117);
      v131 = vzip1q_s16(v129, v130);
      v132 = vzip2q_s16(v129, v130);
      v133 = vcltzq_s16(v127);
      v134 = vzip1q_s16(v127, v133);
      v135 = vzip1q_s16(v131, 0);
      v136 = vzip2q_s16(v127, v133);
      v137 = vzip2q_s16(v131, 0);
      v138 = vmulq_f32(vcvtq_f32_s32(v134), v118);
      v139 = vcvtq_f32_u32(v135);
      v140 = vmulq_f32(vcvtq_f32_s32(v136), v118);
      v141 = vmulq_f32(v139, v118);
      v142 = v112[-2];
      v143 = vzip1q_s32(v142, v138);
      v144 = vzip2q_s32(v142, v138);
      v145 = vextq_s8(v143, v141, 8uLL);
      v143.i64[1] = v141.i64[0];
      *(v113 - 104) = v145;
      v146 = vzip2q_s64(v144, v141);
      *(v113 - 120) = v143;
      v144.i64[1] = v141.i64[1];
      *(v113 - 88) = v144;
      *(v113 - 72) = v146;
      v147 = v112[-1];
      v148 = vmulq_f32(vcvtq_f32_u32(v137), v118);
      v149 = vzip1q_s32(v147, v140);
      v150 = vzip2q_s32(v147, v140);
      v151 = vextq_s8(v149, v148, 8uLL);
      v149.i64[1] = v148.i64[0];
      *(v113 - 40) = v151;
      v152 = vzip2q_s64(v150, v148);
      v150.i64[1] = v148.i64[1];
      *(v113 - 24) = v150;
      *(v113 - 56) = v149;
      *(v113 - 8) = v152;
      v153 = vcltzq_s16(v128);
      v154 = vzip1q_s16(v128, v153);
      v155 = vzip2q_s16(v132, 0);
      v156 = vzip2q_s16(v128, v153);
      v157 = vmulq_f32(vcvtq_f32_s32(v154), v118);
      v158 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v132, 0)), v118);
      v159 = vmulq_f32(vcvtq_f32_s32(v156), v118);
      v160 = vmulq_f32(vcvtq_f32_u32(v155), v118);
      v161 = vzip1q_s32(*v112, v157);
      v162 = vzip2q_s32(*v112, v157);
      v163 = vextq_s8(v161, v158, 8uLL);
      v161.i64[1] = v158.i64[0];
      *(v113 + 24) = v163;
      v164 = vzip2q_s64(v162, v158);
      *(v113 + 8) = v161;
      v162.i64[1] = v158.i64[1];
      *(v113 + 40) = v162;
      *(v113 + 56) = v164;
      v165 = v112[1];
      v166 = vzip1q_s32(v165, v159);
      v167 = vzip2q_s32(v165, v159);
      v168 = vextq_s8(v166, v160, 8uLL);
      v166.i64[1] = v160.i64[0];
      v169 = vzip2q_s64(v167, v160);
      v167.i64[1] = v160.i64[1];
      v170 = vextq_s8(v141, v141, 8uLL).u64[0];
      *(v113 + 88) = v168;
      *(v113 - 96) = vmul_f32(vadd_f32(*v141.i8, v170), 0x3F0000003F000000);
      *(v113 - 64) = vmul_f32(vadd_f32(v170, *v148.i8), 0x3F0000003F000000);
      *(v113 + 120) = v169;
      v141.i64[0] = vextq_s8(v148, v148, 8uLL).u64[0];
      *(v113 - 32) = vmul_f32(vadd_f32(*v148.i8, *v141.i8), 0x3F0000003F000000);
      *(v113 + 72) = v166;
      v148.i32[0] = vextq_s8(v158, v158, 8uLL).u32[0];
      v148.i32[1] = *(v113 + 52);
      *(v113 + 104) = v167;
      *v113 = vmul_f32(vadd_f32(*v141.i8, *v158.i8), 0x3F0000003F000000);
      v160.i32[1] = *(v113 + 84);
      *(v113 + 32) = vmul_f32(vadd_f32(*v158.i8, *v148.i8), 0x3F0000003F000000);
      *v141.i8 = vmul_f32(vadd_f32(*v148.i8, *v160.i8), 0x3F0000003F000000);
      *v148.i8 = vadd_f32(*v160.i8, *(v113 + 112));
      *(v113 + 64) = v141.i64[0];
      *(v113 + 96) = vmul_f32(*v148.i8, 0x3F0000003F000000);
      --v111;
      v112 = (v112 + a6);
      v113 += a3;
    }

    while (v111 > 1);
  }

  return result;
}

uint64_t from_422_to_r4fl<8,8,(AlphaOutputMethod)1,true>(uint64_t result, int16x8_t *a2, int a3, int a4, int32x4_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v108 = a2 + 8;
    v109 = a2 + 32;
    v110 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0xF000F000F000F000;
  v9.i64[1] = 0xF000F000F000F000;
  v10 = vdupq_n_s16(0xFE0u);
  v11.i64[0] = 0xE000E000E000E00;
  v11.i64[1] = 0xE000E000E000E00;
  v12.i64[0] = 0x1000100010001000;
  v12.i64[1] = 0x1000100010001000;
  v13 = vdupq_n_s32(0x39008081u);
  do
  {
    v14 = (a5 + 8 * a6);
    v15 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v9), v10), v11);
    v16 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v9), v10), v11);
    v17 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v9), v10), v12);
    v18 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v9), v10), v12);
    v19 = vzip1q_s16(v17, v18);
    v20 = vcltzq_s16(v15);
    v21 = vzip1q_s16(v15, v20);
    v22 = vzip2q_s16(v15, v20);
    v23 = vzip1q_s16(v19, 0);
    v24 = vzip2q_s16(v19, 0);
    v25 = vcvtq_f32_s32(v21);
    v26 = vcvtq_f32_s32(v22);
    v27 = vcvtq_f32_u32(v23);
    v28 = vmulq_f32(v25, v13);
    v29 = vmulq_f32(v27, v13);
    v30 = vzip1q_s32(*a5, v28);
    v31 = vzip2q_s32(*a5, v28);
    v32 = vmulq_f32(vcvtq_f32_u32(v24), v13);
    v33 = vextq_s8(v30, v29, 8uLL);
    v30.i64[1] = v29.i64[0];
    *result = v30;
    *(result + 16) = v33;
    v34 = vzip2q_s64(v31, v29);
    v31.i64[1] = v29.i64[1];
    *(result + 32) = v31;
    *(result + 48) = v34;
    v35 = vmulq_f32(v26, v13);
    v36 = a5[1];
    v37 = vzip1q_s32(v36, v35);
    v38 = vzip2q_s32(v36, v35);
    v39 = vextq_s8(v37, v32, 8uLL);
    v40 = vzip2q_s16(v17, v18);
    v37.i64[1] = v32.i64[0];
    v41 = vzip2q_s64(v38, v32);
    v38.i64[1] = v32.i64[1];
    *(result + 64) = v37;
    *(result + 80) = v39;
    *(result + 96) = v38;
    *(result + 112) = v41;
    v42 = vcltzq_s16(v16);
    v43 = vzip1q_s16(v16, v42);
    v44 = vzip2q_s16(v16, v42);
    v45 = vzip1q_s16(v40, 0);
    v46 = vzip2q_s16(v40, 0);
    v47 = vcvtq_f32_s32(v43);
    v48 = vcvtq_f32_s32(v44);
    v49 = vcvtq_f32_u32(v45);
    v50 = vmulq_f32(v47, v13);
    v51 = vmulq_f32(v49, v13);
    v52 = vcvtq_f32_u32(v46);
    v53 = a5[2];
    v54 = vzip1q_s32(v53, v50);
    v55 = vzip2q_s32(v53, v50);
    v56 = vmulq_f32(v52, v13);
    v57 = vextq_s8(v54, v51, 8uLL);
    v54.i64[1] = v51.i64[0];
    *(result + 128) = v54;
    *(result + 144) = v57;
    v58 = vzip2q_s64(v55, v51);
    v55.i64[1] = v51.i64[1];
    *(result + 160) = v55;
    *(result + 176) = v58;
    v59 = vmulq_f32(v48, v13);
    v60 = a5[3];
    v61 = vzip1q_s32(v60, v59);
    v62 = vextq_s8(v61, v56, 8uLL);
    v61.i64[1] = v56.i64[0];
    v63 = vzip2q_s32(v60, v59);
    v64 = vzip2q_s64(v63, v56);
    v63.i64[1] = v56.i64[1];
    v65 = result + 8 * a3;
    v30.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
    *(result + 24) = vmul_f32(vadd_f32(*v29.i8, *v30.i8), 0x3F0000003F000000);
    *(result + 56) = vmul_f32(vadd_f32(*v30.i8, *v32.i8), 0x3F0000003F000000);
    v29.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
    *(result + 88) = vmul_f32(vadd_f32(*v32.i8, *v29.i8), 0x3F0000003F000000);
    *(result + 120) = vmul_f32(vadd_f32(*v29.i8, *v51.i8), 0x3F0000003F000000);
    v32.i32[0] = vextq_s8(v51, v51, 8uLL).u32[0];
    *(result + 192) = v61;
    *(result + 208) = v62;
    v32.i32[1] = *(result + 172);
    *(result + 224) = v63;
    *(result + 240) = v64;
    *(result + 152) = vmul_f32(vadd_f32(*v51.i8, *v32.i8), 0x3F0000003F000000);
    v56.i32[1] = *(result + 204);
    *(result + 184) = vmul_f32(vadd_f32(*v32.i8, *v56.i8), 0x3F0000003F000000);
    *(result + 216) = vmul_f32(vadd_f32(*v56.i8, *(result + 232)), 0x3F0000003F000000);
    v66 = a2 + 1;
    a5 = (a5 + a6);
    v67 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v9), v10), v11);
    v68 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v9), v10), v11);
    v69 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v9), v10), v12);
    v70 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v9), v10), v12);
    v71 = vzip1q_s16(v69, v70);
    v72 = vcltzq_s16(v67);
    v73 = vzip1q_s16(v67, v72);
    v74 = vzip2q_s16(v71, 0);
    v75 = vcvtq_f32_s32(vzip2q_s16(v67, v72));
    v76 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v71, 0)), v13);
    v77 = vmulq_f32(vcvtq_f32_u32(v74), v13);
    v78 = vmulq_f32(vcvtq_f32_s32(v73), v13);
    v79 = vzip1q_s32(*v14, v78);
    v80 = vzip2q_s32(*v14, v78);
    v81 = vextq_s8(v79, v76, 8uLL);
    v82 = vmulq_f32(v75, v13);
    v79.i64[1] = v76.i64[0];
    v83 = vzip2q_s64(v80, v76);
    v80.i64[1] = v76.i64[1];
    *v65 = v79;
    *(v65 + 16) = v81;
    *(v65 + 32) = v80;
    *(v65 + 48) = v83;
    v84 = v14[1];
    v85 = vzip1q_s32(v84, v82);
    v86 = vzip2q_s16(v69, v70);
    v87 = vzip2q_s32(v84, v82);
    v88 = vextq_s8(v85, v77, 8uLL);
    v89 = vzip2q_s64(v87, v77);
    v87.i64[1] = v77.i64[1];
    v85.i64[1] = v77.i64[0];
    *(v65 + 96) = v87;
    *(v65 + 112) = v89;
    *(v65 + 64) = v85;
    *(v65 + 80) = v88;
    v90 = vcltzq_s16(v68);
    v91 = vzip1q_s16(v68, v90);
    v92 = vzip2q_s16(v86, 0);
    v93 = vcvtq_f32_s32(vzip2q_s16(v68, v90));
    v94 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v86, 0)), v13);
    v95 = vmulq_f32(vcvtq_f32_u32(v92), v13);
    v96 = vmulq_f32(vcvtq_f32_s32(v91), v13);
    v97 = v14[2];
    v98 = vzip1q_s32(v97, v96);
    v99 = vzip2q_s32(v97, v96);
    v100 = vextq_s8(v98, v94, 8uLL);
    v101 = vmulq_f32(v93, v13);
    v98.i64[1] = v94.i64[0];
    v102 = vzip2q_s64(v99, v94);
    v99.i64[1] = v94.i64[1];
    *(v65 + 128) = v98;
    *(v65 + 144) = v100;
    *(v65 + 160) = v99;
    *(v65 + 176) = v102;
    v103 = v14[3];
    v104 = vzip1q_s32(v103, v101);
    result += a3;
    v105 = vzip2q_s32(v103, v101);
    v106 = vextq_s8(v104, v95, 8uLL);
    v104.i64[1] = v95.i64[0];
    v107 = vzip2q_s64(v105, v95);
    v105.i64[1] = v95.i64[1];
    v102.i64[0] = vextq_s8(v76, v76, 8uLL).u64[0];
    *(v65 + 24) = vmul_f32(vadd_f32(*v76.i8, *v102.i8), 0x3F0000003F000000);
    *v76.i8 = vmul_f32(vadd_f32(*v102.i8, *v77.i8), 0x3F0000003F000000);
    v102.i64[0] = vextq_s8(v77, v77, 8uLL).u64[0];
    *(v65 + 56) = v76.i64[0];
    *(v65 + 88) = vmul_f32(vadd_f32(*v77.i8, *v102.i8), 0x3F0000003F000000);
    *(v65 + 120) = vmul_f32(vadd_f32(*v102.i8, *v94.i8), 0x3F0000003F000000);
    v77.i32[0] = vextq_s8(v94, v94, 8uLL).u32[0];
    v77.i32[1] = *(v65 + 172);
    *(v65 + 192) = v104;
    *(v65 + 208) = v106;
    v95.i32[1] = *(v65 + 204);
    *(v65 + 224) = v105;
    *(v65 + 240) = v107;
    *(v65 + 152) = vmul_f32(vadd_f32(*v94.i8, *v77.i8), 0x3F0000003F000000);
    *v76.i8 = vadd_f32(*v95.i8, *(v65 + 232));
    *(v65 + 184) = vmul_f32(vadd_f32(*v77.i8, *v95.i8), 0x3F0000003F000000);
    *(v65 + 216) = vmul_f32(*v76.i8, 0x3F0000003F000000);
    --v7;
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v108 = v66 + 8;
  v109 = v66 + 32;
  v110 = v66 + 40;
  a2 = v66;
  if (v7 >= 1)
  {
LABEL_10:
    v111 = v7 + 1;
    v112 = a5 + 2;
    v113 = result + 120;
    v114.i64[0] = 0xF000F000F000F000;
    v114.i64[1] = 0xF000F000F000F000;
    v115 = vdupq_n_s16(0xFE0u);
    v116.i64[0] = 0xE000E000E000E00;
    v116.i64[1] = 0xE000E000E000E00;
    v117.i64[0] = 0x1000100010001000;
    v117.i64[1] = 0x1000100010001000;
    v118 = vdupq_n_s32(0x39008081u);
    do
    {
      v119 = *a2++;
      v120 = vminq_s16(vmaxq_s16(v119, v114), v115);
      v121 = *v108++;
      v122 = vminq_s16(vmaxq_s16(v121, v114), v115);
      v123 = *v109++;
      v124 = vmaxq_s16(v123, v114);
      v125 = *v110++;
      v126 = vminq_s16(v124, v115);
      v127 = vaddq_s16(v120, v116);
      v128 = vaddq_s16(v122, v116);
      v129 = vaddq_s16(v126, v117);
      v130 = vaddq_s16(vminq_s16(vmaxq_s16(v125, v114), v115), v117);
      v131 = vzip1q_s16(v129, v130);
      v132 = vzip2q_s16(v129, v130);
      v133 = vcltzq_s16(v127);
      v134 = vzip1q_s16(v127, v133);
      v135 = vzip1q_s16(v131, 0);
      v136 = vzip2q_s16(v127, v133);
      v137 = vzip2q_s16(v131, 0);
      v138 = vmulq_f32(vcvtq_f32_s32(v134), v118);
      v139 = vcvtq_f32_u32(v135);
      v140 = vmulq_f32(vcvtq_f32_s32(v136), v118);
      v141 = vmulq_f32(v139, v118);
      v142 = v112[-2];
      v143 = vzip1q_s32(v142, v138);
      v144 = vzip2q_s32(v142, v138);
      v145 = vextq_s8(v143, v141, 8uLL);
      v143.i64[1] = v141.i64[0];
      *(v113 - 104) = v145;
      v146 = vzip2q_s64(v144, v141);
      *(v113 - 120) = v143;
      v144.i64[1] = v141.i64[1];
      *(v113 - 88) = v144;
      *(v113 - 72) = v146;
      v147 = v112[-1];
      v148 = vmulq_f32(vcvtq_f32_u32(v137), v118);
      v149 = vzip1q_s32(v147, v140);
      v150 = vzip2q_s32(v147, v140);
      v151 = vextq_s8(v149, v148, 8uLL);
      v149.i64[1] = v148.i64[0];
      *(v113 - 40) = v151;
      v152 = vzip2q_s64(v150, v148);
      v150.i64[1] = v148.i64[1];
      *(v113 - 24) = v150;
      *(v113 - 56) = v149;
      *(v113 - 8) = v152;
      v153 = vcltzq_s16(v128);
      v154 = vzip1q_s16(v128, v153);
      v155 = vzip2q_s16(v132, 0);
      v156 = vzip2q_s16(v128, v153);
      v157 = vmulq_f32(vcvtq_f32_s32(v154), v118);
      v158 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v132, 0)), v118);
      v159 = vmulq_f32(vcvtq_f32_s32(v156), v118);
      v160 = vmulq_f32(vcvtq_f32_u32(v155), v118);
      v161 = vzip1q_s32(*v112, v157);
      v162 = vzip2q_s32(*v112, v157);
      v163 = vextq_s8(v161, v158, 8uLL);
      v161.i64[1] = v158.i64[0];
      *(v113 + 24) = v163;
      v164 = vzip2q_s64(v162, v158);
      *(v113 + 8) = v161;
      v162.i64[1] = v158.i64[1];
      *(v113 + 40) = v162;
      *(v113 + 56) = v164;
      v165 = v112[1];
      v166 = vzip1q_s32(v165, v159);
      v167 = vzip2q_s32(v165, v159);
      v168 = vextq_s8(v166, v160, 8uLL);
      v166.i64[1] = v160.i64[0];
      v169 = vzip2q_s64(v167, v160);
      v167.i64[1] = v160.i64[1];
      v170 = vextq_s8(v141, v141, 8uLL).u64[0];
      *(v113 + 88) = v168;
      *(v113 - 96) = vmul_f32(vadd_f32(*v141.i8, v170), 0x3F0000003F000000);
      *(v113 - 64) = vmul_f32(vadd_f32(v170, *v148.i8), 0x3F0000003F000000);
      *(v113 + 120) = v169;
      v141.i64[0] = vextq_s8(v148, v148, 8uLL).u64[0];
      *(v113 - 32) = vmul_f32(vadd_f32(*v148.i8, *v141.i8), 0x3F0000003F000000);
      *(v113 + 72) = v166;
      v148.i32[0] = vextq_s8(v158, v158, 8uLL).u32[0];
      v148.i32[1] = *(v113 + 52);
      *(v113 + 104) = v167;
      *v113 = vmul_f32(vadd_f32(*v141.i8, *v158.i8), 0x3F0000003F000000);
      v160.i32[1] = *(v113 + 84);
      *(v113 + 32) = vmul_f32(vadd_f32(*v158.i8, *v148.i8), 0x3F0000003F000000);
      *v141.i8 = vmul_f32(vadd_f32(*v148.i8, *v160.i8), 0x3F0000003F000000);
      *v148.i8 = vadd_f32(*v160.i8, *(v113 + 112));
      *(v113 + 64) = v141.i64[0];
      *(v113 + 96) = vmul_f32(*v148.i8, 0x3F0000003F000000);
      --v111;
      v112 = (v112 + a6);
      v113 += a3;
    }

    while (v111 > 1);
  }

  return result;
}

uint64_t from_422_to_r4fl<8,8,(AlphaOutputMethod)2,false>(uint64_t result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  __asm { FMOV            V0.4S, #1.0 }

  if (v4)
  {
    v11 = 8 * a3;
    v12 = a4 - 7;
    v13.i64[0] = 0xF000F000F000F000;
    v13.i64[1] = 0xF000F000F000F000;
    v14 = vdupq_n_s16(0xFE0u);
    v15.i64[0] = 0xE000E000E000E00;
    v15.i64[1] = 0xE000E000E000E00;
    v16.i64[0] = 0x1000100010001000;
    v16.i64[1] = 0x1000100010001000;
    v17 = vdupq_n_s32(0x39008081u);
    do
    {
      v18 = result + v11;
      v19 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v13), v14), v15);
      v20 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v13), v14), v15);
      v21 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v13), v14), v16);
      v22 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v13), v14), v16);
      v23 = vzip1q_s16(v21, v22);
      v24 = vzip2q_s16(v21, v22);
      v25 = vcltzq_s16(v19);
      v26 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v19, v25)), v17);
      v27 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v19, v25)), v17);
      v28 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v23, 0)), v17);
      v29 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v23, 0)), v17);
      v30 = vzip1q_s32(_Q0, v26);
      v31 = vzip2q_s32(_Q0, v26);
      v32 = vextq_s8(v30, v28, 8uLL);
      *&v33 = v30.i64[0];
      v34 = vzip2q_s64(v31, v28);
      v35 = vzip1q_s32(_Q0, v27);
      v31.i64[1] = v28.i64[1];
      v36 = vzip2q_s32(_Q0, v27);
      v37 = vextq_s8(v35, v29, 8uLL);
      *&v38 = v35.i64[0];
      v39 = vzip2q_s64(v36, v29);
      v36.i64[1] = v29.i64[1];
      v40 = vcltzq_s16(v20);
      *(&v33 + 1) = v28.i64[0];
      v41 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v20, v40)), v17);
      *(&v38 + 1) = v29.i64[0];
      v42 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v20, v40)), v17);
      v43 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v24, 0)), v17);
      *(result + 32) = v31;
      *(result + 48) = v34;
      v44 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v24, 0)), v17);
      v45 = vzip1q_s32(_Q0, v41);
      v46 = vzip2q_s32(_Q0, v41);
      v47 = vextq_s8(v45, v43, 8uLL);
      *(result + 96) = v36;
      *(result + 112) = v39;
      v45.i64[1] = v43.i64[0];
      v48 = vzip2q_s64(v46, v43);
      *result = v33;
      *(result + 16) = v32;
      v46.i64[1] = v43.i64[1];
      *(result + 160) = v46;
      *(result + 176) = v48;
      *(result + 64) = v38;
      *(result + 80) = v37;
      v49 = vzip1q_s32(_Q0, v42);
      v50 = vzip2q_s32(_Q0, v42);
      v51 = vextq_s8(v49, v44, 8uLL);
      *(result + 128) = v45;
      *(result + 144) = v47;
      v49.i64[1] = v44.i64[0];
      v52 = vzip2q_s64(v50, v44);
      *(result + 192) = v49;
      *(result + 208) = v51;
      v50.i64[1] = v44.i64[1];
      v49.i64[0] = vextq_s8(v28, v28, 8uLL).u64[0];
      *(result + 224) = v50;
      *(result + 240) = v52;
      *(result + 56) = vmul_f32(vadd_f32(*v49.i8, *v29.i8), 0x3F0000003F000000);
      v52.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
      *(result + 24) = vmul_f32(vadd_f32(*v28.i8, *v49.i8), 0x3F0000003F000000);
      *(result + 120) = vmul_f32(vadd_f32(*v52.i8, *v43.i8), 0x3F0000003F000000);
      *(result + 88) = vmul_f32(vadd_f32(*v29.i8, *v52.i8), 0x3F0000003F000000);
      v29.i32[0] = vextq_s8(v43, v43, 8uLL).u32[0];
      v29.i32[1] = *(result + 172);
      v44.i32[1] = *(result + 204);
      *(result + 152) = vmul_f32(vadd_f32(*v43.i8, *v29.i8), 0x3F0000003F000000);
      *(result + 184) = vmul_f32(vadd_f32(*v29.i8, *v44.i8), 0x3F0000003F000000);
      *(result + 216) = vmul_f32(vadd_f32(*v44.i8, *(result + 232)), 0x3F0000003F000000);
      --v5;
      v53 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v13), v14), v15);
      v54 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v13), v14), v15);
      v55 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v13), v14), v16);
      v56 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v13), v14), v16);
      v57 = vzip1q_s16(v55, v56);
      v58 = vzip2q_s16(v55, v56);
      v59 = vcltzq_s16(v53);
      v60 = vzip1q_s16(v53, v59);
      v61 = vzip2q_s16(v53, v59);
      v62 = vmulq_f32(vcvtq_f32_s32(v60), v17);
      v63 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v57, 0)), v17);
      v64 = vmulq_f32(vcvtq_f32_s32(v61), v17);
      v65 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v57, 0)), v17);
      v66 = vzip1q_s32(_Q0, v62);
      v67 = vzip2q_s32(_Q0, v62);
      v68 = vextq_s8(v66, v63, 8uLL);
      v69 = vzip2q_s64(v67, v63);
      v67.i64[1] = v63.i64[1];
      v70 = vzip1q_s32(_Q0, v64);
      v71 = vzip2q_s32(_Q0, v64);
      v72 = vextq_s8(v70, v65, 8uLL);
      v73 = vzip2q_s64(v71, v65);
      v71.i64[1] = v65.i64[1];
      v74 = vcltzq_s16(v54);
      v66.i64[1] = v63.i64[0];
      v75 = vzip2q_s16(v58, 0);
      v70.i64[1] = v65.i64[0];
      v76 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v54, v74)), v17);
      v77 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v54, v74)), v17);
      *(v18 + 32) = v67;
      *(v18 + 48) = v69;
      v78 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v58, 0)), v17);
      v79 = vzip1q_s32(_Q0, v76);
      *(v18 + 96) = v71;
      *(v18 + 112) = v73;
      v80 = vextq_s8(v79, v78, 8uLL);
      v79.i64[1] = v78.i64[0];
      *v18 = v66;
      *(v18 + 16) = v68;
      v81 = vzip2q_s32(_Q0, v76);
      v82 = vzip2q_s64(v81, v78);
      v81.i64[1] = v78.i64[1];
      *(v18 + 64) = v70;
      *(v18 + 80) = v72;
      v83 = vmulq_f32(vcvtq_f32_u32(v75), v17);
      *(v18 + 160) = v81;
      *(v18 + 176) = v82;
      v84 = vzip1q_s32(_Q0, v77);
      *(v18 + 128) = v79;
      *(v18 + 144) = v80;
      v85 = vzip2q_s32(_Q0, v77);
      v86 = vextq_s8(v84, v83, 8uLL);
      v84.i64[1] = v83.i64[0];
      *(v18 + 192) = v84;
      *(v18 + 208) = v86;
      v87 = vzip2q_s64(v85, v83);
      v85.i64[1] = v83.i64[1];
      *(v18 + 224) = v85;
      *(v18 + 240) = v87;
      v85.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
      *(v18 + 24) = vmul_f32(vadd_f32(*v63.i8, *v85.i8), 0x3F0000003F000000);
      *(v18 + 56) = vmul_f32(vadd_f32(*v85.i8, *v65.i8), 0x3F0000003F000000);
      v63.i64[0] = vextq_s8(v65, v65, 8uLL).u64[0];
      *(v18 + 88) = vmul_f32(vadd_f32(*v65.i8, *v63.i8), 0x3F0000003F000000);
      *v65.i8 = vmul_f32(vadd_f32(*v63.i8, *v78.i8), 0x3F0000003F000000);
      v63.i32[0] = vextq_s8(v78, v78, 8uLL).u32[0];
      v63.i32[1] = *(result + v11 + 172);
      *(v18 + 120) = v65.i64[0];
      v83.i32[1] = *(result + v11 + 204);
      *(v18 + 152) = vmul_f32(vadd_f32(*v78.i8, *v63.i8), 0x3F0000003F000000);
      *v65.i8 = vmul_f32(vadd_f32(*v63.i8, *v83.i8), 0x3F0000003F000000);
      *v63.i8 = vadd_f32(*v83.i8, *(result + v11 + 232));
      *(v18 + 184) = v65.i64[0];
      *(v18 + 216) = vmul_f32(*v63.i8, 0x3F0000003F000000);
      ++a2;
      result += a3;
      --v12;
    }

    while (v12 > 1);
  }

  v88 = a2 + 8;
  v89 = a2 + 32;
  v90 = a2 + 40;
  if (v5 >= 1)
  {
    v91 = v5 + 1;
    v92 = result + 120;
    v93.i64[0] = 0xF000F000F000F000;
    v93.i64[1] = 0xF000F000F000F000;
    v94 = vdupq_n_s16(0xFE0u);
    v95.i64[0] = 0xE000E000E000E00;
    v95.i64[1] = 0xE000E000E000E00;
    v96.i64[0] = 0x1000100010001000;
    v96.i64[1] = 0x1000100010001000;
    v97 = vdupq_n_s32(0x39008081u);
    do
    {
      v98 = *a2++;
      v99 = vmaxq_s16(v98, v93);
      v100 = *v88++;
      v101 = vmaxq_s16(v100, v93);
      v102 = *v89++;
      v103 = vmaxq_s16(v102, v93);
      v104 = *v90++;
      v105 = vaddq_s16(vminq_s16(v99, v94), v95);
      v106 = vaddq_s16(vminq_s16(v101, v94), v95);
      v107 = vaddq_s16(vminq_s16(v103, v94), v96);
      v108 = vaddq_s16(vminq_s16(vmaxq_s16(v104, v93), v94), v96);
      v109 = vzip1q_s16(v107, v108);
      v110 = vzip2q_s16(v107, v108);
      v111 = vcltzq_s16(v105);
      v112 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v105, v111)), v97);
      v113 = vcvtq_f32_s32(vzip2q_s16(v105, v111));
      v114 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v109, 0)), v97);
      v115 = vmulq_f32(v113, v97);
      v116 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v109, 0)), v97);
      v117 = vzip1q_s32(_Q0, v112);
      v118 = vzip2q_s32(_Q0, v112);
      v119 = vextq_s8(v117, v114, 8uLL);
      v120 = vzip2q_s64(v118, v114);
      v118.i64[1] = v114.i64[1];
      v121 = vzip1q_s32(_Q0, v115);
      v117.i64[1] = v114.i64[0];
      v122 = vzip2q_s32(_Q0, v115);
      v123 = vextq_s8(v121, v116, 8uLL);
      v121.i64[1] = v116.i64[0];
      *(v92 - 104) = v119;
      v124 = vzip2q_s64(v122, v116);
      v122.i64[1] = v116.i64[1];
      v125 = vcltzq_s16(v106);
      v126 = vzip1q_s16(v106, v125);
      *(v92 - 72) = v120;
      v127 = vzip2q_s16(v106, v125);
      v128 = vmulq_f32(vcvtq_f32_s32(v126), v97);
      *(v92 - 40) = v123;
      v129 = vmulq_f32(vcvtq_f32_s32(v127), v97);
      v130 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v110, 0)), v97);
      *(v92 - 8) = v124;
      v131 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v110, 0)), v97);
      v132 = vzip1q_s32(_Q0, v128);
      v133 = vzip2q_s32(_Q0, v128);
      v134 = vextq_s8(v132, v130, 8uLL);
      *(v92 - 88) = v118;
      v132.i64[1] = v130.i64[0];
      v135 = vzip2q_s64(v133, v130);
      v133.i64[1] = v130.i64[1];
      *(v92 - 24) = v122;
      *(v92 + 24) = v134;
      *(v92 + 56) = v135;
      v136 = vzip1q_s32(_Q0, v129);
      v137 = vzip2q_s32(_Q0, v129);
      v138 = vextq_s8(v136, v131, 8uLL);
      *(v92 + 40) = v133;
      v136.i64[1] = v131.i64[0];
      *(v92 + 88) = v138;
      v139 = vzip2q_s64(v137, v131);
      *(v92 - 120) = v117;
      v137.i64[1] = v131.i64[1];
      *(v92 + 120) = v139;
      v117.i64[0] = vextq_s8(v114, v114, 8uLL).u64[0];
      *(v92 - 56) = v121;
      *(v92 - 96) = vmul_f32(vadd_f32(*v114.i8, *v117.i8), 0x3F0000003F000000);
      *(v92 + 8) = v132;
      *(v92 - 64) = vmul_f32(vadd_f32(*v117.i8, *v116.i8), 0x3F0000003F000000);
      v114.i64[0] = vextq_s8(v116, v116, 8uLL).u64[0];
      *(v92 - 32) = vmul_f32(vadd_f32(*v116.i8, *v114.i8), 0x3F0000003F000000);
      *(v92 + 72) = v136;
      *v92 = vmul_f32(vadd_f32(*v114.i8, *v130.i8), 0x3F0000003F000000);
      v116.i32[0] = vextq_s8(v130, v130, 8uLL).u32[0];
      *(v92 + 104) = v137;
      v116.i32[1] = *(v92 + 52);
      *(v92 + 32) = vmul_f32(vadd_f32(*v130.i8, *v116.i8), 0x3F0000003F000000);
      v131.i32[1] = *(v92 + 84);
      v114.i64[0] = *(v92 + 112);
      *(v92 + 64) = vmul_f32(vadd_f32(*v116.i8, *v131.i8), 0x3F0000003F000000);
      *(v92 + 96) = vmul_f32(vadd_f32(*v131.i8, *v114.i8), 0x3F0000003F000000);
      --v91;
      v92 += a3;
    }

    while (v91 > 1);
  }

  return result;
}

uint64_t from_422_to_r4fl<8,8,(AlphaOutputMethod)2,true>(uint64_t result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  __asm { FMOV            V0.4S, #1.0 }

  if (v4)
  {
    v11 = 8 * a3;
    v12 = a4 - 7;
    v13.i64[0] = 0xF000F000F000F000;
    v13.i64[1] = 0xF000F000F000F000;
    v14 = vdupq_n_s16(0xFE0u);
    v15.i64[0] = 0xE000E000E000E00;
    v15.i64[1] = 0xE000E000E000E00;
    v16.i64[0] = 0x1000100010001000;
    v16.i64[1] = 0x1000100010001000;
    v17 = vdupq_n_s32(0x39008081u);
    do
    {
      v18 = result + v11;
      v19 = vaddq_s16(vminq_s16(vmaxq_s16(*a2, v13), v14), v15);
      v20 = vaddq_s16(vminq_s16(vmaxq_s16(a2[8], v13), v14), v15);
      v21 = vaddq_s16(vminq_s16(vmaxq_s16(a2[32], v13), v14), v16);
      v22 = vaddq_s16(vminq_s16(vmaxq_s16(a2[40], v13), v14), v16);
      v23 = vzip1q_s16(v21, v22);
      v24 = vzip2q_s16(v21, v22);
      v25 = vcltzq_s16(v19);
      v26 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v19, v25)), v17);
      v27 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v19, v25)), v17);
      v28 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v23, 0)), v17);
      v29 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v23, 0)), v17);
      v30 = vzip1q_s32(_Q0, v26);
      v31 = vzip2q_s32(_Q0, v26);
      v32 = vextq_s8(v30, v28, 8uLL);
      *&v33 = v30.i64[0];
      v34 = vzip2q_s64(v31, v28);
      v35 = vzip1q_s32(_Q0, v27);
      v31.i64[1] = v28.i64[1];
      v36 = vzip2q_s32(_Q0, v27);
      v37 = vextq_s8(v35, v29, 8uLL);
      *&v38 = v35.i64[0];
      v39 = vzip2q_s64(v36, v29);
      v36.i64[1] = v29.i64[1];
      v40 = vcltzq_s16(v20);
      *(&v33 + 1) = v28.i64[0];
      v41 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v20, v40)), v17);
      *(&v38 + 1) = v29.i64[0];
      v42 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v20, v40)), v17);
      v43 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v24, 0)), v17);
      *(result + 32) = v31;
      *(result + 48) = v34;
      v44 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v24, 0)), v17);
      v45 = vzip1q_s32(_Q0, v41);
      v46 = vzip2q_s32(_Q0, v41);
      v47 = vextq_s8(v45, v43, 8uLL);
      *(result + 96) = v36;
      *(result + 112) = v39;
      v45.i64[1] = v43.i64[0];
      v48 = vzip2q_s64(v46, v43);
      *result = v33;
      *(result + 16) = v32;
      v46.i64[1] = v43.i64[1];
      *(result + 160) = v46;
      *(result + 176) = v48;
      *(result + 64) = v38;
      *(result + 80) = v37;
      v49 = vzip1q_s32(_Q0, v42);
      v50 = vzip2q_s32(_Q0, v42);
      v51 = vextq_s8(v49, v44, 8uLL);
      *(result + 128) = v45;
      *(result + 144) = v47;
      v49.i64[1] = v44.i64[0];
      v52 = vzip2q_s64(v50, v44);
      *(result + 192) = v49;
      *(result + 208) = v51;
      v50.i64[1] = v44.i64[1];
      v49.i64[0] = vextq_s8(v28, v28, 8uLL).u64[0];
      *(result + 224) = v50;
      *(result + 240) = v52;
      *(result + 56) = vmul_f32(vadd_f32(*v49.i8, *v29.i8), 0x3F0000003F000000);
      v52.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
      *(result + 24) = vmul_f32(vadd_f32(*v28.i8, *v49.i8), 0x3F0000003F000000);
      *(result + 120) = vmul_f32(vadd_f32(*v52.i8, *v43.i8), 0x3F0000003F000000);
      *(result + 88) = vmul_f32(vadd_f32(*v29.i8, *v52.i8), 0x3F0000003F000000);
      v29.i32[0] = vextq_s8(v43, v43, 8uLL).u32[0];
      v29.i32[1] = *(result + 172);
      v44.i32[1] = *(result + 204);
      *(result + 152) = vmul_f32(vadd_f32(*v43.i8, *v29.i8), 0x3F0000003F000000);
      *(result + 184) = vmul_f32(vadd_f32(*v29.i8, *v44.i8), 0x3F0000003F000000);
      *(result + 216) = vmul_f32(vadd_f32(*v44.i8, *(result + 232)), 0x3F0000003F000000);
      --v5;
      v53 = vaddq_s16(vminq_s16(vmaxq_s16(a2[16], v13), v14), v15);
      v54 = vaddq_s16(vminq_s16(vmaxq_s16(a2[24], v13), v14), v15);
      v55 = vaddq_s16(vminq_s16(vmaxq_s16(a2[48], v13), v14), v16);
      v56 = vaddq_s16(vminq_s16(vmaxq_s16(a2[56], v13), v14), v16);
      v57 = vzip1q_s16(v55, v56);
      v58 = vzip2q_s16(v55, v56);
      v59 = vcltzq_s16(v53);
      v60 = vzip1q_s16(v53, v59);
      v61 = vzip2q_s16(v53, v59);
      v62 = vmulq_f32(vcvtq_f32_s32(v60), v17);
      v63 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v57, 0)), v17);
      v64 = vmulq_f32(vcvtq_f32_s32(v61), v17);
      v65 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v57, 0)), v17);
      v66 = vzip1q_s32(_Q0, v62);
      v67 = vzip2q_s32(_Q0, v62);
      v68 = vextq_s8(v66, v63, 8uLL);
      v69 = vzip2q_s64(v67, v63);
      v67.i64[1] = v63.i64[1];
      v70 = vzip1q_s32(_Q0, v64);
      v71 = vzip2q_s32(_Q0, v64);
      v72 = vextq_s8(v70, v65, 8uLL);
      v73 = vzip2q_s64(v71, v65);
      v71.i64[1] = v65.i64[1];
      v74 = vcltzq_s16(v54);
      v66.i64[1] = v63.i64[0];
      v75 = vzip2q_s16(v58, 0);
      v70.i64[1] = v65.i64[0];
      v76 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v54, v74)), v17);
      v77 = vmulq_f32(vcvtq_f32_s32(vzip2q_s16(v54, v74)), v17);
      *(v18 + 32) = v67;
      *(v18 + 48) = v69;
      v78 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v58, 0)), v17);
      v79 = vzip1q_s32(_Q0, v76);
      *(v18 + 96) = v71;
      *(v18 + 112) = v73;
      v80 = vextq_s8(v79, v78, 8uLL);
      v79.i64[1] = v78.i64[0];
      *v18 = v66;
      *(v18 + 16) = v68;
      v81 = vzip2q_s32(_Q0, v76);
      v82 = vzip2q_s64(v81, v78);
      v81.i64[1] = v78.i64[1];
      *(v18 + 64) = v70;
      *(v18 + 80) = v72;
      v83 = vmulq_f32(vcvtq_f32_u32(v75), v17);
      *(v18 + 160) = v81;
      *(v18 + 176) = v82;
      v84 = vzip1q_s32(_Q0, v77);
      *(v18 + 128) = v79;
      *(v18 + 144) = v80;
      v85 = vzip2q_s32(_Q0, v77);
      v86 = vextq_s8(v84, v83, 8uLL);
      v84.i64[1] = v83.i64[0];
      *(v18 + 192) = v84;
      *(v18 + 208) = v86;
      v87 = vzip2q_s64(v85, v83);
      v85.i64[1] = v83.i64[1];
      *(v18 + 224) = v85;
      *(v18 + 240) = v87;
      v85.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
      *(v18 + 24) = vmul_f32(vadd_f32(*v63.i8, *v85.i8), 0x3F0000003F000000);
      *(v18 + 56) = vmul_f32(vadd_f32(*v85.i8, *v65.i8), 0x3F0000003F000000);
      v63.i64[0] = vextq_s8(v65, v65, 8uLL).u64[0];
      *(v18 + 88) = vmul_f32(vadd_f32(*v65.i8, *v63.i8), 0x3F0000003F000000);
      *v65.i8 = vmul_f32(vadd_f32(*v63.i8, *v78.i8), 0x3F0000003F000000);
      v63.i32[0] = vextq_s8(v78, v78, 8uLL).u32[0];
      v63.i32[1] = *(result + v11 + 172);
      *(v18 + 120) = v65.i64[0];
      v83.i32[1] = *(result + v11 + 204);
      *(v18 + 152) = vmul_f32(vadd_f32(*v78.i8, *v63.i8), 0x3F0000003F000000);
      *v65.i8 = vmul_f32(vadd_f32(*v63.i8, *v83.i8), 0x3F0000003F000000);
      *v63.i8 = vadd_f32(*v83.i8, *(result + v11 + 232));
      *(v18 + 184) = v65.i64[0];
      *(v18 + 216) = vmul_f32(*v63.i8, 0x3F0000003F000000);
      ++a2;
      result += a3;
      --v12;
    }

    while (v12 > 1);
  }

  v88 = a2 + 8;
  v89 = a2 + 32;
  v90 = a2 + 40;
  if (v5 >= 1)
  {
    v91 = v5 + 1;
    v92 = result + 120;
    v93.i64[0] = 0xF000F000F000F000;
    v93.i64[1] = 0xF000F000F000F000;
    v94 = vdupq_n_s16(0xFE0u);
    v95.i64[0] = 0xE000E000E000E00;
    v95.i64[1] = 0xE000E000E000E00;
    v96.i64[0] = 0x1000100010001000;
    v96.i64[1] = 0x1000100010001000;
    v97 = vdupq_n_s32(0x39008081u);
    do
    {
      v98 = *a2++;
      v99 = vmaxq_s16(v98, v93);
      v100 = *v88++;
      v101 = vmaxq_s16(v100, v93);
      v102 = *v89++;
      v103 = vmaxq_s16(v102, v93);
      v104 = *v90++;
      v105 = vaddq_s16(vminq_s16(v99, v94), v95);
      v106 = vaddq_s16(vminq_s16(v101, v94), v95);
      v107 = vaddq_s16(vminq_s16(v103, v94), v96);
      v108 = vaddq_s16(vminq_s16(vmaxq_s16(v104, v93), v94), v96);
      v109 = vzip1q_s16(v107, v108);
      v110 = vzip2q_s16(v107, v108);
      v111 = vcltzq_s16(v105);
      v112 = vmulq_f32(vcvtq_f32_s32(vzip1q_s16(v105, v111)), v97);
      v113 = vcvtq_f32_s32(vzip2q_s16(v105, v111));
      v114 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v109, 0)), v97);
      v115 = vmulq_f32(v113, v97);
      v116 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v109, 0)), v97);
      v117 = vzip1q_s32(_Q0, v112);
      v118 = vzip2q_s32(_Q0, v112);
      v119 = vextq_s8(v117, v114, 8uLL);
      v120 = vzip2q_s64(v118, v114);
      v118.i64[1] = v114.i64[1];
      v121 = vzip1q_s32(_Q0, v115);
      v117.i64[1] = v114.i64[0];
      v122 = vzip2q_s32(_Q0, v115);
      v123 = vextq_s8(v121, v116, 8uLL);
      v121.i64[1] = v116.i64[0];
      *(v92 - 104) = v119;
      v124 = vzip2q_s64(v122, v116);
      v122.i64[1] = v116.i64[1];
      v125 = vcltzq_s16(v106);
      v126 = vzip1q_s16(v106, v125);
      *(v92 - 72) = v120;
      v127 = vzip2q_s16(v106, v125);
      v128 = vmulq_f32(vcvtq_f32_s32(v126), v97);
      *(v92 - 40) = v123;
      v129 = vmulq_f32(vcvtq_f32_s32(v127), v97);
      v130 = vmulq_f32(vcvtq_f32_u32(vzip1q_s16(v110, 0)), v97);
      *(v92 - 8) = v124;
      v131 = vmulq_f32(vcvtq_f32_u32(vzip2q_s16(v110, 0)), v97);
      v132 = vzip1q_s32(_Q0, v128);
      v133 = vzip2q_s32(_Q0, v128);
      v134 = vextq_s8(v132, v130, 8uLL);
      *(v92 - 88) = v118;
      v132.i64[1] = v130.i64[0];
      v135 = vzip2q_s64(v133, v130);
      v133.i64[1] = v130.i64[1];
      *(v92 - 24) = v122;
      *(v92 + 24) = v134;
      *(v92 + 56) = v135;
      v136 = vzip1q_s32(_Q0, v129);
      v137 = vzip2q_s32(_Q0, v129);
      v138 = vextq_s8(v136, v131, 8uLL);
      *(v92 + 40) = v133;
      v136.i64[1] = v131.i64[0];
      *(v92 + 88) = v138;
      v139 = vzip2q_s64(v137, v131);
      *(v92 - 120) = v117;
      v137.i64[1] = v131.i64[1];
      *(v92 + 120) = v139;
      v117.i64[0] = vextq_s8(v114, v114, 8uLL).u64[0];
      *(v92 - 56) = v121;
      *(v92 - 96) = vmul_f32(vadd_f32(*v114.i8, *v117.i8), 0x3F0000003F000000);
      *(v92 + 8) = v132;
      *(v92 - 64) = vmul_f32(vadd_f32(*v117.i8, *v116.i8), 0x3F0000003F000000);
      v114.i64[0] = vextq_s8(v116, v116, 8uLL).u64[0];
      *(v92 - 32) = vmul_f32(vadd_f32(*v116.i8, *v114.i8), 0x3F0000003F000000);
      *(v92 + 72) = v136;
      *v92 = vmul_f32(vadd_f32(*v114.i8, *v130.i8), 0x3F0000003F000000);
      v116.i32[0] = vextq_s8(v130, v130, 8uLL).u32[0];
      *(v92 + 104) = v137;
      v116.i32[1] = *(v92 + 52);
      *(v92 + 32) = vmul_f32(vadd_f32(*v130.i8, *v116.i8), 0x3F0000003F000000);
      v131.i32[1] = *(v92 + 84);
      v114.i64[0] = *(v92 + 112);
      *(v92 + 64) = vmul_f32(vadd_f32(*v116.i8, *v131.i8), 0x3F0000003F000000);
      *(v92 + 96) = vmul_f32(vadd_f32(*v131.i8, *v114.i8), 0x3F0000003F000000);
      --v91;
      v92 += a3;
    }

    while (v91 > 1);
  }

  return result;
}

int8x16_t *from_444_to_2vuy<8,8,(AlphaOutputMethod)0,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v20 = a2 + 8;
    v21 = a2 + 32;
    v22 = a2 + 40;
    v23 = a2 + 64;
    v24 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 7;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[8 * a3];
    v12 = *&vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v12 = vqmovun_s16(v12);
    v13 = *&vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v13 = vqmovun_s16(v13);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v7), v8), v9);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v12, v13), v7), v8), v9);
    *result = vzip1q_s8(v15, v14);
    result[1] = vzip2q_s8(v15, v14);
    result = (result + a3);
    v16 = *&vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v16 = vqmovun_s16(v16);
    v17 = *&vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v17 = vqmovun_s16(v17);
    v18 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v7), v8), v9);
    v19 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v16, v17), v7), v8), v9);
    vst2_s8(v11, *(&v18 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v19, v18);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v20 = v10 + 8;
  v21 = v10 + 32;
  v22 = v10 + 40;
  v23 = v10 + 64;
  v24 = v10 + 72;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v25 = v5 + 1;
    v26 = result + 1;
    v27.i64[0] = 0x8080808080808080;
    v27.i64[1] = 0x8080808080808080;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    v29.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v29.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v30 = *a2++;
      v31 = v30;
      i8 = v26[-1].i8;
      v33 = *v20++;
      v34 = v33;
      v35 = *v21++;
      v36 = v35;
      v37 = vqmovn_high_s16(vqmovn_s16(v31), v34);
      v38 = *v23++;
      v39 = v38;
      v40 = *v22++;
      v41 = v40;
      v42 = vqmovn_high_s16(vqmovn_s16(v36), v39);
      v43 = *v24++;
      v39.i64[1] = v43.i64[1];
      v44 = *&v42 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *v39.i8 = vqmovun_s16(v44);
      *&v44 = vqmovun_s16((*&vqmovn_high_s16(vqmovn_s16(v41), v43) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v45 = vminq_u8(vmaxq_u8(veorq_s8(v37, v27), v28), v29);
      v46 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v39, v44), v27), v28), v29);
      vst2_s8(i8, *(&v45 - 8));
      *v26 = vzip2q_s8(v46, v45);
      --v25;
      v26 = (v26 + a3);
    }

    while (v25 > 1);
  }

  return result;
}

int8x16_t *from_444_to_2vuy<8,8,(AlphaOutputMethod)0,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v20 = a2 + 8;
    v21 = a2 + 32;
    v22 = a2 + 40;
    v23 = a2 + 64;
    v24 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 7;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[8 * a3];
    v12 = *&vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v12 = vqmovun_s16(v12);
    v13 = *&vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v13 = vqmovun_s16(v13);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v7), v8), v9);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v12, v13), v7), v8), v9);
    *result = vzip1q_s8(v15, v14);
    result[1] = vzip2q_s8(v15, v14);
    result = (result + a3);
    v16 = *&vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v16 = vqmovun_s16(v16);
    v17 = *&vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v17 = vqmovun_s16(v17);
    v18 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v7), v8), v9);
    v19 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v16, v17), v7), v8), v9);
    vst2_s8(v11, *(&v18 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v19, v18);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v20 = v10 + 8;
  v21 = v10 + 32;
  v22 = v10 + 40;
  v23 = v10 + 64;
  v24 = v10 + 72;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v25 = v5 + 1;
    v26 = result + 1;
    v27.i64[0] = 0x8080808080808080;
    v27.i64[1] = 0x8080808080808080;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    v29.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v29.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v30 = *a2++;
      v31 = v30;
      i8 = v26[-1].i8;
      v33 = *v20++;
      v34 = v33;
      v35 = *v21++;
      v36 = v35;
      v37 = vqmovn_high_s16(vqmovn_s16(v31), v34);
      v38 = *v23++;
      v39 = v38;
      v40 = *v22++;
      v41 = v40;
      v42 = vqmovn_high_s16(vqmovn_s16(v36), v39);
      v43 = *v24++;
      v39.i64[1] = v43.i64[1];
      v44 = *&v42 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *v39.i8 = vqmovun_s16(v44);
      *&v44 = vqmovun_s16((*&vqmovn_high_s16(vqmovn_s16(v41), v43) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v45 = vminq_u8(vmaxq_u8(veorq_s8(v37, v27), v28), v29);
      v46 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v39, v44), v27), v28), v29);
      vst2_s8(i8, *(&v45 - 8));
      *v26 = vzip2q_s8(v46, v45);
      --v25;
      v26 = (v26 + a3);
    }

    while (v25 > 1);
  }

  return result;
}

int8x16_t *from_444_to_2vuy<8,4,(AlphaOutputMethod)0,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v20 = a2 + 4;
    v21 = a2 + 16;
    v22 = a2 + 20;
    v23 = a2 + 32;
    v24 = a2 + 36;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 3;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[4 * a3];
    v12 = *&vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v12 = vqmovun_s16(v12);
    v13 = *&vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v13 = vqmovun_s16(v13);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v7), v8), v9);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v12, v13), v7), v8), v9);
    *result = vzip1q_s8(v15, v14);
    result[1] = vzip2q_s8(v15, v14);
    result = (result + a3);
    v16 = *&vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v16 = vqmovun_s16(v16);
    v17 = *&vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v17 = vqmovun_s16(v17);
    v18 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v7), v8), v9);
    v19 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v16, v17), v7), v8), v9);
    vst2_s8(v11, *(&v18 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v19, v18);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v20 = v10 + 4;
  v21 = v10 + 16;
  v22 = v10 + 20;
  v23 = v10 + 32;
  v24 = v10 + 36;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v25 = v5 + 1;
    v26 = result + 1;
    v27.i64[0] = 0x8080808080808080;
    v27.i64[1] = 0x8080808080808080;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    v29.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v29.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v30 = *a2++;
      v31 = v30;
      i8 = v26[-1].i8;
      v33 = *v20++;
      v34 = v33;
      v35 = *v21++;
      v36 = v35;
      v37 = vqmovn_high_s16(vqmovn_s16(v31), v34);
      v38 = *v23++;
      v39 = v38;
      v40 = *v22++;
      v41 = v40;
      v42 = vqmovn_high_s16(vqmovn_s16(v36), v39);
      v43 = *v24++;
      v39.i64[1] = v43.i64[1];
      v44 = *&v42 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *v39.i8 = vqmovun_s16(v44);
      *&v44 = vqmovun_s16((*&vqmovn_high_s16(vqmovn_s16(v41), v43) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v45 = vminq_u8(vmaxq_u8(veorq_s8(v37, v27), v28), v29);
      v46 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v39, v44), v27), v28), v29);
      vst2_s8(i8, *(&v45 - 8));
      *v26 = vzip2q_s8(v46, v45);
      --v25;
      v26 = (v26 + a3);
    }

    while (v25 > 1);
  }

  return result;
}

int8x16_t *from_444_to_2vuy<8,4,(AlphaOutputMethod)0,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v20 = a2 + 4;
    v21 = a2 + 16;
    v22 = a2 + 20;
    v23 = a2 + 32;
    v24 = a2 + 36;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 3;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[4 * a3];
    v12 = *&vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v12 = vqmovun_s16(v12);
    v13 = *&vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v13 = vqmovun_s16(v13);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v7), v8), v9);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v12, v13), v7), v8), v9);
    *result = vzip1q_s8(v15, v14);
    result[1] = vzip2q_s8(v15, v14);
    result = (result + a3);
    v16 = *&vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v16 = vqmovun_s16(v16);
    v17 = *&vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v17 = vqmovun_s16(v17);
    v18 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v7), v8), v9);
    v19 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v16, v17), v7), v8), v9);
    vst2_s8(v11, *(&v18 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v19, v18);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v20 = v10 + 4;
  v21 = v10 + 16;
  v22 = v10 + 20;
  v23 = v10 + 32;
  v24 = v10 + 36;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v25 = v5 + 1;
    v26 = result + 1;
    v27.i64[0] = 0x8080808080808080;
    v27.i64[1] = 0x8080808080808080;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    v29.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v29.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v30 = *a2++;
      v31 = v30;
      i8 = v26[-1].i8;
      v33 = *v20++;
      v34 = v33;
      v35 = *v21++;
      v36 = v35;
      v37 = vqmovn_high_s16(vqmovn_s16(v31), v34);
      v38 = *v23++;
      v39 = v38;
      v40 = *v22++;
      v41 = v40;
      v42 = vqmovn_high_s16(vqmovn_s16(v36), v39);
      v43 = *v24++;
      v39.i64[1] = v43.i64[1];
      v44 = *&v42 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *v39.i8 = vqmovun_s16(v44);
      *&v44 = vqmovun_s16((*&vqmovn_high_s16(vqmovn_s16(v41), v43) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v45 = vminq_u8(vmaxq_u8(veorq_s8(v37, v27), v28), v29);
      v46 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s8(v39, v44), v27), v28), v29);
      vst2_s8(i8, *(&v45 - 8));
      *v26 = vzip2q_s8(v46, v45);
      --v25;
      v26 = (v26 + a3);
    }

    while (v25 > 1);
  }

  return result;
}

void *from_444_to_2vuy<2,4,(AlphaOutputMethod)0,false>(void *result, int16x8_t *a2, int a3, int a4)
{
  v4 = (result + 4 * a3);
  if (a4 == 8)
  {
    v5 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v6 = *&vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v6 = vqmovun_s16(v6);
    v7 = *&vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v7 = vqmovun_s16(v7);
    v8 = vzip1q_s8(v6, v7);
    *&v7 = 0x8080808080808080;
    *(&v7 + 1) = 0x8080808080808080;
    v9.i64[0] = 0x101010101010101;
    v9.i64[1] = 0x101010101010101;
    v10.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v10.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v11 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v5, vdupq_laneq_s64(v5, 1)), v7), v9), v10);
    v12 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v8, vdupq_laneq_s64(v8, 1)), v7), v9), v10);
    v13 = vzip1q_s8(v12, v11);
    *result = v13.i64[0];
    *(result + a3) = v13.i64[1];
    v14 = (result + 2 * a3);
    v15 = vzip2q_s8(v12, v11);
    *v14 = v15.i64[0];
    *(v14 + a3) = v15.i64[1];
    v16 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v17 = *&vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v17 = vqmovun_s16(v17);
    v18 = *&vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v18 = vqmovun_s16(v18);
    v19 = vzip1q_s8(v17, v18);
    v20 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v16, vdupq_laneq_s64(v16, 1)), v7), v9), v10);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v19, vdupq_laneq_s64(v19, 1)), v7), v9), v10);
    v22 = vzip1q_s8(v21, v20);
    *v4 = v22.i64[0];
    *(v4 + a3) = v22.i64[1];
    v4 = (v4 + 2 * a3);
    v23 = vzip2q_s8(v21, v20);
LABEL_3:
    *v4 = v23.i64[0];
    *(v4 + a3) = v23.i64[1];
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v42 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v43 = *&vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *&v43 = vqmovun_s16(v43);
      v44 = *&vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *&v44 = vqmovun_s16(v44);
      v45 = vzip1q_s8(v43, v44);
      v46 = vzip1q_s16(v45, vdupq_laneq_s64(v45, 1));
      v47.i64[0] = 0x8080808080808080;
      v47.i64[1] = 0x8080808080808080;
      v48.i64[0] = 0x101010101010101;
      v48.i64[1] = 0x101010101010101;
      v49.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v49.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v50 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v42, vdupq_laneq_s64(v42, 1)), v47), v48), v49);
      v51 = vminq_u8(vmaxq_u8(veorq_s8(v46, v47), v48), v49);
      v52 = vzip1q_s8(v51, v50);
      if (a4 < 3)
      {
        *result = v52.i64[0];
        if (a4 == 2)
        {
          *(result + a3) = v52.i64[1];
        }
      }

      else
      {
        *result = v52.i64[0];
        *(result + a3) = v52.i64[1];
        v4 = (result + 2 * a3);
        v23 = vzip2q_s8(v51, v50);
        if (a4 != 3)
        {
          goto LABEL_3;
        }

        *v4 = v23.i64[0];
      }
    }
  }

  else
  {
    v24 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v25 = *&vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v25 = vqmovun_s16(v25);
    v26 = *&vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v26 = vqmovun_s16(v26);
    v27 = vzip1q_s8(v25, v26);
    *&v26 = 0x8080808080808080;
    *(&v26 + 1) = 0x8080808080808080;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    v29.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v29.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v30 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v24, vdupq_laneq_s64(v24, 1)), v26), v28), v29);
    v31 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v27, vdupq_laneq_s64(v27, 1)), v26), v28), v29);
    v32 = vzip1q_s8(v31, v30);
    *result = v32.i64[0];
    *(result + a3) = v32.i64[1];
    v33 = (result + 2 * a3);
    v34 = vzip2q_s8(v31, v30);
    *v33 = v34.i64[0];
    *(v33 + a3) = v34.i64[1];
    v35 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v36 = *&vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v36 = vqmovun_s16(v36);
    v37 = *&vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v37 = vqmovun_s16(v37);
    v38 = vzip1q_s8(v36, v37);
    v39 = vzip1q_s16(v38, vdupq_laneq_s64(v38, 1));
    v40 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v35, vdupq_laneq_s64(v35, 1)), v26), v28), v29);
    v41 = vminq_u8(vmaxq_u8(veorq_s8(v39, v26), v28), v29);
    v23 = vzip1q_s8(v41, v40);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        goto LABEL_3;
      }

      *v4 = v23.i64[0];
    }

    else
    {
      *v4 = v23.i64[0];
      *(v4 + a3) = v23.i64[1];
      v4 = (v4 + 2 * a3);
      v23 = vzip2q_s8(v41, v40);
      if (a4 != 7)
      {
        goto LABEL_3;
      }

      *v4 = v23.i64[0];
    }
  }

  return result;
}

void *from_444_to_2vuy<2,4,(AlphaOutputMethod)0,true>(void *result, int16x8_t *a2, int a3, int a4)
{
  v4 = (result + 4 * a3);
  if (a4 == 8)
  {
    v5 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v6 = *&vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v6 = vqmovun_s16(v6);
    v7 = *&vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v7 = vqmovun_s16(v7);
    v8 = vzip1q_s8(v6, v7);
    *&v7 = 0x8080808080808080;
    *(&v7 + 1) = 0x8080808080808080;
    v9.i64[0] = 0x101010101010101;
    v9.i64[1] = 0x101010101010101;
    v10.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v10.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v11 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v5, vdupq_laneq_s64(v5, 1)), v7), v9), v10);
    v12 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v8, vdupq_laneq_s64(v8, 1)), v7), v9), v10);
    v13 = vzip1q_s8(v12, v11);
    *result = v13.i64[0];
    *(result + a3) = v13.i64[1];
    v14 = (result + 2 * a3);
    v15 = vzip2q_s8(v12, v11);
    *v14 = v15.i64[0];
    *(v14 + a3) = v15.i64[1];
    v16 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v17 = *&vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v17 = vqmovun_s16(v17);
    v18 = *&vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v18 = vqmovun_s16(v18);
    v19 = vzip1q_s8(v17, v18);
    v20 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v16, vdupq_laneq_s64(v16, 1)), v7), v9), v10);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v19, vdupq_laneq_s64(v19, 1)), v7), v9), v10);
    v22 = vzip1q_s8(v21, v20);
    *v4 = v22.i64[0];
    *(v4 + a3) = v22.i64[1];
    v4 = (v4 + 2 * a3);
    v23 = vzip2q_s8(v21, v20);
LABEL_3:
    *v4 = v23.i64[0];
    *(v4 + a3) = v23.i64[1];
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v42 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v43 = *&vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *&v43 = vqmovun_s16(v43);
      v44 = *&vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *&v44 = vqmovun_s16(v44);
      v45 = vzip1q_s8(v43, v44);
      v46 = vzip1q_s16(v45, vdupq_laneq_s64(v45, 1));
      v47.i64[0] = 0x8080808080808080;
      v47.i64[1] = 0x8080808080808080;
      v48.i64[0] = 0x101010101010101;
      v48.i64[1] = 0x101010101010101;
      v49.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v49.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v50 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v42, vdupq_laneq_s64(v42, 1)), v47), v48), v49);
      v51 = vminq_u8(vmaxq_u8(veorq_s8(v46, v47), v48), v49);
      v52 = vzip1q_s8(v51, v50);
      if (a4 < 3)
      {
        *result = v52.i64[0];
        if (a4 == 2)
        {
          *(result + a3) = v52.i64[1];
        }
      }

      else
      {
        *result = v52.i64[0];
        *(result + a3) = v52.i64[1];
        v4 = (result + 2 * a3);
        v23 = vzip2q_s8(v51, v50);
        if (a4 != 3)
        {
          goto LABEL_3;
        }

        *v4 = v23.i64[0];
      }
    }
  }

  else
  {
    v24 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v25 = *&vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v25 = vqmovun_s16(v25);
    v26 = *&vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v26 = vqmovun_s16(v26);
    v27 = vzip1q_s8(v25, v26);
    *&v26 = 0x8080808080808080;
    *(&v26 + 1) = 0x8080808080808080;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    v29.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v29.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v30 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v24, vdupq_laneq_s64(v24, 1)), v26), v28), v29);
    v31 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v27, vdupq_laneq_s64(v27, 1)), v26), v28), v29);
    v32 = vzip1q_s8(v31, v30);
    *result = v32.i64[0];
    *(result + a3) = v32.i64[1];
    v33 = (result + 2 * a3);
    v34 = vzip2q_s8(v31, v30);
    *v33 = v34.i64[0];
    *(v33 + a3) = v34.i64[1];
    v35 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v36 = *&vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v36 = vqmovun_s16(v36);
    v37 = *&vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    *&v37 = vqmovun_s16(v37);
    v38 = vzip1q_s8(v36, v37);
    v39 = vzip1q_s16(v38, vdupq_laneq_s64(v38, 1));
    v40 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v35, vdupq_laneq_s64(v35, 1)), v26), v28), v29);
    v41 = vminq_u8(vmaxq_u8(veorq_s8(v39, v26), v28), v29);
    v23 = vzip1q_s8(v41, v40);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        goto LABEL_3;
      }

      *v4 = v23.i64[0];
    }

    else
    {
      *v4 = v23.i64[0];
      *(v4 + a3) = v23.i64[1];
      v4 = (v4 + 2 * a3);
      v23 = vzip2q_s8(v41, v40);
      if (a4 != 7)
      {
        goto LABEL_3;
      }

      *v4 = v23.i64[0];
    }
  }

  return result;
}

double from_444_to_2vuy<2,2,(AlphaOutputMethod)0,false>(void *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = *&vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(a2[2], vrev64q_s32(a2[2]))), vuzp1q_s32(a2[3], vrev64q_s32(a2[3]))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  *&v4 = vqmovun_s16(v4);
  v5 = *&vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(a2[4], vrev64q_s32(a2[4]))), vuzp1q_s32(a2[5], vrev64q_s32(a2[5]))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  *&v5 = vqmovun_s16(v5);
  v6 = vzip1q_s16(v4, v5);
  *&v5 = 0x8080808080808080;
  *(&v5 + 1) = 0x8080808080808080;
  v7.i64[0] = 0x101010101010101;
  v7.i64[1] = 0x101010101010101;
  v8.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v8.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v9 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(a2[1], vrev64q_s32(a2[1]))), v5), v7), v8);
  v10 = vminq_u8(vmaxq_u8(veorq_s8(v6, v5), v7), v8);
  if (a4 == 4)
  {
    v11 = vzip1q_s8(v10, v9);
    *a1 = v11.i64[0];
    *(a1 + a3) = v11.i64[1];
    v12 = (a1 + 2 * a3);
    v9 = vzip2q_s8(v10, v9);
    *v12 = v9.i64[0];
    *(v12 + a3) = v9.i64[1];
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      v9.i64[0] = vzip1q_s8(v10, v9).u64[0];
      *a1 = v9.i64[0];
    }
  }

  else
  {
    v13 = vzip1q_s8(v10, v9);
    *a1 = v13.i64[0];
    *(a1 + a3) = v13.i64[1];
    if (a4 == 3)
    {
      v9.i64[0] = vzip2q_s8(v10, v9).u64[0];
      *(a1 + 2 * a3) = v9.i64[0];
    }
  }

  return *v9.i64;
}

double from_444_to_2vuy<2,2,(AlphaOutputMethod)0,true>(void *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = *&vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(a2[2], vrev64q_s32(a2[2]))), vuzp1q_s32(a2[3], vrev64q_s32(a2[3]))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  *&v4 = vqmovun_s16(v4);
  v5 = *&vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(a2[4], vrev64q_s32(a2[4]))), vuzp1q_s32(a2[5], vrev64q_s32(a2[5]))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  *&v5 = vqmovun_s16(v5);
  v6 = vzip1q_s16(v4, v5);
  *&v5 = 0x8080808080808080;
  *(&v5 + 1) = 0x8080808080808080;
  v7.i64[0] = 0x101010101010101;
  v7.i64[1] = 0x101010101010101;
  v8.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v8.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v9 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(a2[1], vrev64q_s32(a2[1]))), v5), v7), v8);
  v10 = vminq_u8(vmaxq_u8(veorq_s8(v6, v5), v7), v8);
  if (a4 == 4)
  {
    v11 = vzip1q_s8(v10, v9);
    *a1 = v11.i64[0];
    *(a1 + a3) = v11.i64[1];
    v12 = (a1 + 2 * a3);
    v9 = vzip2q_s8(v10, v9);
    *v12 = v9.i64[0];
    *(v12 + a3) = v9.i64[1];
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      v9.i64[0] = vzip1q_s8(v10, v9).u64[0];
      *a1 = v9.i64[0];
    }
  }

  else
  {
    v13 = vzip1q_s8(v10, v9);
    *a1 = v13.i64[0];
    *(a1 + a3) = v13.i64[1];
    if (a4 == 3)
    {
      v9.i64[0] = vzip2q_s8(v10, v9).u64[0];
      *(a1 + 2 * a3) = v9.i64[0];
    }
  }

  return *v9.i64;
}

int8x8_t from_444_to_2vuy<1,2,(AlphaOutputMethod)0,false>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  v4 = a2 + 10;
  v5 = a2 + 2;
  if (a4 > 0)
  {
    v6.i16[0] = a2[8];
    v6.i16[1] = *a2;
    v6.i16[2] = *v4;
    v6.i16[3] = *v5;
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    a1 = (a1 + a3);
    v5 = a2 + 3;
    v4 = a2 + 11;
    if (a4 != 1)
    {
      v8.i16[0] = a2[9];
      v8.i16[1] = a2[1];
      v8.i16[2] = *v4;
      v8.i16[3] = *v5;
      v9 = veor_s8(vmax_s16(vmin_s16(v8, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v9, v9);
      *a1 = result.i32[0];
      a1 = (a1 + a3);
      v5 = a2 + 4;
      v4 = a2 + 12;
    }
  }

  if (a4 <= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10 - 2;
  if (v11)
  {
    v12.i16[0] = *v4;
    v12.i16[1] = *v5;
    v12.i16[2] = v4[2];
    v12.i16[3] = v5[2];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v12, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (v11 != 1)
    {
      v13.i16[0] = v4[1];
      v13.i16[1] = v5[1];
      v13.i16[2] = v4[3];
      v13.i16[3] = v5[3];
      v14 = veor_s8(vmax_s16(vmin_s16(v13, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v14, v14);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int8x8_t from_444_to_2vuy<1,2,(AlphaOutputMethod)0,true>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  v4 = a2 + 10;
  v5 = a2 + 2;
  if (a4 > 0)
  {
    v6.i16[0] = a2[8];
    v6.i16[1] = *a2;
    v6.i16[2] = *v4;
    v6.i16[3] = *v5;
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    a1 = (a1 + a3);
    v5 = a2 + 3;
    v4 = a2 + 11;
    if (a4 != 1)
    {
      v8.i16[0] = a2[9];
      v8.i16[1] = a2[1];
      v8.i16[2] = *v4;
      v8.i16[3] = *v5;
      v9 = veor_s8(vmax_s16(vmin_s16(v8, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v9, v9);
      *a1 = result.i32[0];
      a1 = (a1 + a3);
      v5 = a2 + 4;
      v4 = a2 + 12;
    }
  }

  if (a4 <= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10 - 2;
  if (v11)
  {
    v12.i16[0] = *v4;
    v12.i16[1] = *v5;
    v12.i16[2] = v4[2];
    v12.i16[3] = v5[2];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v12, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (v11 != 1)
    {
      v13.i16[0] = v4[1];
      v13.i16[1] = v5[1];
      v13.i16[2] = v4[3];
      v13.i16[3] = v5[3];
      v14 = veor_s8(vmax_s16(vmin_s16(v13, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v14, v14);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int8x8_t from_444_to_2vuy<1,1,(AlphaOutputMethod)0,false>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v4, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      v7 = veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v7, v7);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int8x8_t from_444_to_2vuy<1,1,(AlphaOutputMethod)0,true>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v4, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      v7 = veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v7, v7);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

void from_444_to_y408<8,8,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v29 = a2 + 8;
    v30 = a2 + 32;
    v31 = a2 + 40;
    v32 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  do
  {
    v10 = a2 + 1;
    v11 = (a1 + 8 * a3);
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v9);
    v13 = vzip1q_s8(*a5, v12);
    v14 = vzip2q_s8(*a5, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v9);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    *a1 = vzip1q_s8(v13, v17);
    a1[1] = vzip2q_s8(v13, v17);
    a1[2] = vzip1q_s8(v14, v18);
    a1[3] = vzip2q_s8(v14, v18);
    a1 = (a1 + a3);
    --v7;
    v19 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v9);
    v21 = vzip1q_s8(v19, v20);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v9);
    v24 = vzip1q_s8(v22, v23);
    v25 = v11;
    vst2_s8(v25, v21);
    v25 += 16;
    v26 = vzip2q_s8(v19, v20);
    v27 = vzip2q_s8(v22, v23);
    i8 = v11[2].i8;
    vst2_s8(i8, v26);
    *v25 = vzip2q_s8(v21, v24);
    v11[3] = vzip2q_s8(v26, v27);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v29 = v10 + 8;
  v30 = v10 + 32;
  v31 = v10 + 40;
  v32 = v10 + 64;
  v33 = v10 + 72;
  a2 = v10;
  if (v7 >= 1)
  {
LABEL_10:
    v34 = a1 + 2;
    v35 = v7 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37 = a1[2].i8;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = *v29++;
      v41 = v40;
      v42 = v34[-2].i8;
      v43 = *v30++;
      v44 = v43;
      v45 = *v32++;
      v46 = v45;
      v47 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      *v41.i8 = vqmovn_s16(v44);
      v48 = *v31++;
      v49 = v48;
      v50 = *v33++;
      v51 = veorq_s8(vqmovn_high_s16(*v41.i8, v46), v36);
      v52 = vzip1q_s8(*a5, v51);
      v53 = vzip2q_s8(*a5, v51);
      v54 = veorq_s8(v47, v36);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v49), v50), v36);
      v56 = vzip1q_s8(v54, v55);
      vst2_s8(v42, v52);
      v57 = vzip2q_s8(v54, v55);
      v34[-1] = vzip2q_s8(v52, v56);
      vst2_s8(v37, v53);
      v37 += a3;
      v34[1] = vzip2q_s8(v53, v57);
      a5 = (a5 + a6);
      --v35;
      v34 = v37;
    }

    while (v35 > 1);
  }
}

void from_444_to_y408<8,8,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v29 = a2 + 8;
    v30 = a2 + 32;
    v31 = a2 + 40;
    v32 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  do
  {
    v10 = a2 + 1;
    v11 = (a1 + 8 * a3);
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v9);
    v13 = vzip1q_s8(*a5, v12);
    v14 = vzip2q_s8(*a5, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v9);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    *a1 = vzip1q_s8(v13, v17);
    a1[1] = vzip2q_s8(v13, v17);
    a1[2] = vzip1q_s8(v14, v18);
    a1[3] = vzip2q_s8(v14, v18);
    a1 = (a1 + a3);
    --v7;
    v19 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v9);
    v21 = vzip1q_s8(v19, v20);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v9);
    v24 = vzip1q_s8(v22, v23);
    v25 = v11;
    vst2_s8(v25, v21);
    v25 += 16;
    v26 = vzip2q_s8(v19, v20);
    v27 = vzip2q_s8(v22, v23);
    i8 = v11[2].i8;
    vst2_s8(i8, v26);
    *v25 = vzip2q_s8(v21, v24);
    v11[3] = vzip2q_s8(v26, v27);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v29 = v10 + 8;
  v30 = v10 + 32;
  v31 = v10 + 40;
  v32 = v10 + 64;
  v33 = v10 + 72;
  a2 = v10;
  if (v7 >= 1)
  {
LABEL_10:
    v34 = a1 + 2;
    v35 = v7 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37 = a1[2].i8;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = *v29++;
      v41 = v40;
      v42 = v34[-2].i8;
      v43 = *v30++;
      v44 = v43;
      v45 = *v32++;
      v46 = v45;
      v47 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      *v41.i8 = vqmovn_s16(v44);
      v48 = *v31++;
      v49 = v48;
      v50 = *v33++;
      v51 = veorq_s8(vqmovn_high_s16(*v41.i8, v46), v36);
      v52 = vzip1q_s8(*a5, v51);
      v53 = vzip2q_s8(*a5, v51);
      v54 = veorq_s8(v47, v36);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v49), v50), v36);
      v56 = vzip1q_s8(v54, v55);
      vst2_s8(v42, v52);
      v57 = vzip2q_s8(v54, v55);
      v34[-1] = vzip2q_s8(v52, v56);
      vst2_s8(v37, v53);
      v37 += a3;
      v34[1] = vzip2q_s8(v53, v57);
      a5 = (a5 + a6);
      --v35;
      v34 = v37;
    }

    while (v35 > 1);
  }
}

void from_444_to_y408<8,4,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v30 = a2 + 4;
    v31 = a2 + 16;
    v32 = a2 + 20;
    v33 = a2 + 32;
    v34 = a2 + 36;
    if (v8 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  do
  {
    v11 = a2 + 1;
    v12 = (a1 + 4 * a3);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v10);
    v14 = vzip1q_s8(*a5, v13);
    v15 = vzip2q_s8(*a5, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10);
    v17 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v10);
    v18 = vzip1q_s8(v16, v17);
    v19 = vzip2q_s8(v16, v17);
    *a1 = vzip1q_s8(v14, v18);
    a1[1] = vzip2q_s8(v14, v18);
    a1[2] = vzip1q_s8(v15, v19);
    a1[3] = vzip2q_s8(v15, v19);
    a1 = (a1 + a3);
    --v8;
    v20 = *(a5 + (8 * a6));
    a5 = (a5 + v6);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v10);
    v22 = vzip1q_s8(v20, v21);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v10);
    v25 = vzip1q_s8(v23, v24);
    v26 = v12;
    vst2_s8(v26, v22);
    v26 += 16;
    v27 = vzip2q_s8(v20, v21);
    v28 = vzip2q_s8(v23, v24);
    i8 = v12[2].i8;
    vst2_s8(i8, v27);
    *v26 = vzip2q_s8(v22, v25);
    v12[3] = vzip2q_s8(v27, v28);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v30 = v11 + 4;
  v31 = v11 + 16;
  v32 = v11 + 20;
  v33 = v11 + 32;
  v34 = v11 + 36;
  a2 = v11;
  if (v8 >= 1)
  {
LABEL_10:
    v35 = a1 + 2;
    v36 = v8 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38 = a1[2].i8;
    do
    {
      v39 = *a2++;
      v40 = v39;
      v41 = *v30++;
      v42 = v41;
      v43 = v35[-2].i8;
      v44 = *v31++;
      v45 = v44;
      v46 = *v33++;
      v47 = v46;
      v48 = vqmovn_high_s16(vqmovn_s16(v40), v42);
      *v42.i8 = vqmovn_s16(v45);
      v49 = *v32++;
      v50 = v49;
      v51 = *v34++;
      v52 = veorq_s8(vqmovn_high_s16(*v42.i8, v47), v37);
      v53 = vzip1q_s8(*a5, v52);
      v54 = vzip2q_s8(*a5, v52);
      v55 = veorq_s8(v48, v37);
      v56 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v50), v51), v37);
      v57 = vzip1q_s8(v55, v56);
      vst2_s8(v43, v53);
      v58 = vzip2q_s8(v55, v56);
      v35[-1] = vzip2q_s8(v53, v57);
      vst2_s8(v38, v54);
      v38 += a3;
      v35[1] = vzip2q_s8(v54, v58);
      a5 = (a5 + v6);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }
}

void from_444_to_y408<8,4,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v30 = a2 + 4;
    v31 = a2 + 16;
    v32 = a2 + 20;
    v33 = a2 + 32;
    v34 = a2 + 36;
    if (v8 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  do
  {
    v11 = a2 + 1;
    v12 = (a1 + 4 * a3);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v10);
    v14 = vzip1q_s8(*a5, v13);
    v15 = vzip2q_s8(*a5, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10);
    v17 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v10);
    v18 = vzip1q_s8(v16, v17);
    v19 = vzip2q_s8(v16, v17);
    *a1 = vzip1q_s8(v14, v18);
    a1[1] = vzip2q_s8(v14, v18);
    a1[2] = vzip1q_s8(v15, v19);
    a1[3] = vzip2q_s8(v15, v19);
    a1 = (a1 + a3);
    --v8;
    v20 = *(a5 + (8 * a6));
    a5 = (a5 + v6);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v10);
    v22 = vzip1q_s8(v20, v21);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v10);
    v25 = vzip1q_s8(v23, v24);
    v26 = v12;
    vst2_s8(v26, v22);
    v26 += 16;
    v27 = vzip2q_s8(v20, v21);
    v28 = vzip2q_s8(v23, v24);
    i8 = v12[2].i8;
    vst2_s8(i8, v27);
    *v26 = vzip2q_s8(v22, v25);
    v12[3] = vzip2q_s8(v27, v28);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v30 = v11 + 4;
  v31 = v11 + 16;
  v32 = v11 + 20;
  v33 = v11 + 32;
  v34 = v11 + 36;
  a2 = v11;
  if (v8 >= 1)
  {
LABEL_10:
    v35 = a1 + 2;
    v36 = v8 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38 = a1[2].i8;
    do
    {
      v39 = *a2++;
      v40 = v39;
      v41 = *v30++;
      v42 = v41;
      v43 = v35[-2].i8;
      v44 = *v31++;
      v45 = v44;
      v46 = *v33++;
      v47 = v46;
      v48 = vqmovn_high_s16(vqmovn_s16(v40), v42);
      *v42.i8 = vqmovn_s16(v45);
      v49 = *v32++;
      v50 = v49;
      v51 = *v34++;
      v52 = veorq_s8(vqmovn_high_s16(*v42.i8, v47), v37);
      v53 = vzip1q_s8(*a5, v52);
      v54 = vzip2q_s8(*a5, v52);
      v55 = veorq_s8(v48, v37);
      v56 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v50), v51), v37);
      v57 = vzip1q_s8(v55, v56);
      vst2_s8(v43, v53);
      v58 = vzip2q_s8(v55, v56);
      v35[-1] = vzip2q_s8(v53, v57);
      vst2_s8(v38, v54);
      v38 += a3;
      v35[1] = vzip2q_s8(v54, v58);
      a5 = (a5 + v6);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }
}

int8x16_t from_444_to_y408<2,4,(AlphaOutputMethod)1,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int8x16_t result)
{
  v7 = &a1[4 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v12 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v13 = vzip1q_s16(v10, vdupq_laneq_s64(v10, 1));
    v14 = vzip1q_s16(v11, vdupq_laneq_s64(v11, 1));
    v10.i64[0] = 0xFF000000FFLL;
    v10.i64[1] = 0xFF000000FFLL;
    v15 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v10)), vandq_s8(*(a5 + v9), v10))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v10)), vandq_s8(*(a5 + v9 + v9 + v9), v10)));
    v11.i64[0] = 0x8080808080808080;
    v11.i64[1] = 0x8080808080808080;
    v16 = veorq_s8(v14, v11);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    v19 = veorq_s8(v13, v11);
    v20 = veorq_s8(vzip1q_s16(v12, vdupq_laneq_s64(v12, 1)), v11);
    v21 = vzip1q_s8(v19, v20);
    v22 = vzip2q_s8(v19, v20);
    vst2_s8(a1, v17);
    v23 = &a1[a3];
    *v23 = vzip2q_s8(v17, v21);
    v24 = &v23->i8[a3];
    vst2_s8(v24, v18);
    v25 = &v24[a3];
    *v25 = vzip2q_s8(v18, v22);
    v26 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v27 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v28 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v29 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v10)), vandq_s8(*(v8 + v9), v10))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v10)), vandq_s8(*(v8 + v9 + v9 + v9), v10)));
    v30 = veorq_s8(vzip1q_s16(v27, vdupq_laneq_s64(v27, 1)), v11);
    v31 = vzip1q_s8(v29, v30);
    v32 = vzip2q_s8(v29, v30);
    v33 = veorq_s8(vzip1q_s16(v26, vdupq_laneq_s64(v26, 1)), v11);
    v34 = veorq_s8(vzip1q_s16(v28, vdupq_laneq_s64(v28, 1)), v11);
    v35 = vzip1q_s8(v33, v34);
    v36 = vzip2q_s8(v33, v34);
    vst2_s8(v7, v31);
    v37 = &v7[a3];
    *v37 = vzip2q_s8(v31, v35);
    v38 = &v37->i8[a3];
    vst2_s8(v38, v32);
    v39 = &v38[a3];
    result = vzip2q_s8(v32, v36);
    *v39 = result;
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v69 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v70 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v71 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v72 = vzip1q_s16(v69, vdupq_laneq_s64(v69, 1));
      v73 = vzip1q_s16(v71, vdupq_laneq_s64(v71, 1));
      v74.i64[0] = 0xFF000000FFLL;
      v74.i64[1] = 0xFF000000FFLL;
      v75 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v74)), vandq_s8(*(a5 + v9), v74))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v74)), vandq_s8(*(a5 + v9 + v9 + v9), v74)));
      v76.i64[0] = 0x8080808080808080;
      v76.i64[1] = 0x8080808080808080;
      v77 = veorq_s8(vzip1q_s16(v70, vdupq_laneq_s64(v70, 1)), v76);
      result = vzip1q_s8(v75, v77);
      v78 = veorq_s8(v72, v76);
      v79 = veorq_s8(v73, v76);
      v80 = vzip1q_s8(v78, v79);
      vst2_s8(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(result, v80);
          *&a1[a3] = result;
        }
      }

      else
      {
        v62 = vzip2q_s8(v75, v77);
        v65 = vzip2q_s8(v78, v79);
        result = vzip2q_s8(result, v80);
        *&a1[a3] = result;
        v7 = &a1[a3 + a3];
        vst2_s8(v7, v62);
        if (a4 == 4)
        {
LABEL_11:
          result = vzip2q_s8(v62, v65);
          *&v7[a3] = result;
        }
      }
    }
  }

  else
  {
    v40 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v41 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v42 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v43 = vzip1q_s16(v40, vdupq_laneq_s64(v40, 1));
    v44 = vzip1q_s16(v41, vdupq_laneq_s64(v41, 1));
    v40.i64[0] = 0xFF000000FFLL;
    v40.i64[1] = 0xFF000000FFLL;
    v45 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v40)), vandq_s8(*(a5 + v9), v40))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v40)), vandq_s8(*(a5 + v9 + v9 + v9), v40)));
    v41.i64[0] = 0x8080808080808080;
    v41.i64[1] = 0x8080808080808080;
    v46 = veorq_s8(v44, v41);
    v47 = vzip1q_s8(v45, v46);
    v48 = vzip2q_s8(v45, v46);
    v49 = veorq_s8(v43, v41);
    v50 = veorq_s8(vzip1q_s16(v42, vdupq_laneq_s64(v42, 1)), v41);
    v51 = vzip1q_s8(v49, v50);
    v52 = vzip2q_s8(v49, v50);
    vst2_s8(a1, v47);
    v53 = &a1[a3];
    *v53 = vzip2q_s8(v47, v51);
    v54 = &v53->i8[a3];
    vst2_s8(v54, v48);
    v55 = &v54[a3];
    *v55 = vzip2q_s8(v48, v52);
    v56 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v57 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v58 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v59 = vzip1q_s16(v56, vdupq_laneq_s64(v56, 1));
    v60 = vzip1q_s16(v58, vdupq_laneq_s64(v58, 1));
    result = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v40)), vandq_s8(*(v8 + v9), v40))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v40)), vandq_s8(*(v8 + v9 + v9 + v9), v40)));
    v61 = veorq_s8(vzip1q_s16(v57, vdupq_laneq_s64(v57, 1)), v41);
    v62 = vzip1q_s8(result, v61);
    v63 = veorq_s8(v59, v41);
    v64 = veorq_s8(v60, v41);
    v65 = vzip1q_s8(v63, v64);
    vst2_s8(v7, v62);
    if (a4 >= 7)
    {
      result = vzip2q_s8(result, v61);
      v66 = vzip2q_s8(v63, v64).u64[0];
      v67 = &v7[a3];
      *v67 = vzip2q_s8(v62, v65);
      v68 = &v67->i8[a3];
      vst2_s8(v68, result);
      return result;
    }

    if (a4 == 6)
    {
      goto LABEL_11;
    }
  }

  return result;
}

int8x16_t from_444_to_y408<2,4,(AlphaOutputMethod)1,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int8x16_t result)
{
  v7 = &a1[4 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v12 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v13 = vzip1q_s16(v10, vdupq_laneq_s64(v10, 1));
    v14 = vzip1q_s16(v11, vdupq_laneq_s64(v11, 1));
    v10.i64[0] = 0xFF000000FFLL;
    v10.i64[1] = 0xFF000000FFLL;
    v15 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v10)), vandq_s8(*(a5 + v9), v10))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v10)), vandq_s8(*(a5 + v9 + v9 + v9), v10)));
    v11.i64[0] = 0x8080808080808080;
    v11.i64[1] = 0x8080808080808080;
    v16 = veorq_s8(v14, v11);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    v19 = veorq_s8(v13, v11);
    v20 = veorq_s8(vzip1q_s16(v12, vdupq_laneq_s64(v12, 1)), v11);
    v21 = vzip1q_s8(v19, v20);
    v22 = vzip2q_s8(v19, v20);
    vst2_s8(a1, v17);
    v23 = &a1[a3];
    *v23 = vzip2q_s8(v17, v21);
    v24 = &v23->i8[a3];
    vst2_s8(v24, v18);
    v25 = &v24[a3];
    *v25 = vzip2q_s8(v18, v22);
    v26 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v27 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v28 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v29 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v10)), vandq_s8(*(v8 + v9), v10))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v10)), vandq_s8(*(v8 + v9 + v9 + v9), v10)));
    v30 = veorq_s8(vzip1q_s16(v27, vdupq_laneq_s64(v27, 1)), v11);
    v31 = vzip1q_s8(v29, v30);
    v32 = vzip2q_s8(v29, v30);
    v33 = veorq_s8(vzip1q_s16(v26, vdupq_laneq_s64(v26, 1)), v11);
    v34 = veorq_s8(vzip1q_s16(v28, vdupq_laneq_s64(v28, 1)), v11);
    v35 = vzip1q_s8(v33, v34);
    v36 = vzip2q_s8(v33, v34);
    vst2_s8(v7, v31);
    v37 = &v7[a3];
    *v37 = vzip2q_s8(v31, v35);
    v38 = &v37->i8[a3];
    vst2_s8(v38, v32);
    v39 = &v38[a3];
    result = vzip2q_s8(v32, v36);
    *v39 = result;
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v69 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v70 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v71 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v72 = vzip1q_s16(v69, vdupq_laneq_s64(v69, 1));
      v73 = vzip1q_s16(v71, vdupq_laneq_s64(v71, 1));
      v74.i64[0] = 0xFF000000FFLL;
      v74.i64[1] = 0xFF000000FFLL;
      v75 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v74)), vandq_s8(*(a5 + v9), v74))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v74)), vandq_s8(*(a5 + v9 + v9 + v9), v74)));
      v76.i64[0] = 0x8080808080808080;
      v76.i64[1] = 0x8080808080808080;
      v77 = veorq_s8(vzip1q_s16(v70, vdupq_laneq_s64(v70, 1)), v76);
      result = vzip1q_s8(v75, v77);
      v78 = veorq_s8(v72, v76);
      v79 = veorq_s8(v73, v76);
      v80 = vzip1q_s8(v78, v79);
      vst2_s8(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(result, v80);
          *&a1[a3] = result;
        }
      }

      else
      {
        v62 = vzip2q_s8(v75, v77);
        v65 = vzip2q_s8(v78, v79);
        result = vzip2q_s8(result, v80);
        *&a1[a3] = result;
        v7 = &a1[a3 + a3];
        vst2_s8(v7, v62);
        if (a4 == 4)
        {
LABEL_11:
          result = vzip2q_s8(v62, v65);
          *&v7[a3] = result;
        }
      }
    }
  }

  else
  {
    v40 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v41 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v42 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v43 = vzip1q_s16(v40, vdupq_laneq_s64(v40, 1));
    v44 = vzip1q_s16(v41, vdupq_laneq_s64(v41, 1));
    v40.i64[0] = 0xFF000000FFLL;
    v40.i64[1] = 0xFF000000FFLL;
    v45 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v40)), vandq_s8(*(a5 + v9), v40))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v40)), vandq_s8(*(a5 + v9 + v9 + v9), v40)));
    v41.i64[0] = 0x8080808080808080;
    v41.i64[1] = 0x8080808080808080;
    v46 = veorq_s8(v44, v41);
    v47 = vzip1q_s8(v45, v46);
    v48 = vzip2q_s8(v45, v46);
    v49 = veorq_s8(v43, v41);
    v50 = veorq_s8(vzip1q_s16(v42, vdupq_laneq_s64(v42, 1)), v41);
    v51 = vzip1q_s8(v49, v50);
    v52 = vzip2q_s8(v49, v50);
    vst2_s8(a1, v47);
    v53 = &a1[a3];
    *v53 = vzip2q_s8(v47, v51);
    v54 = &v53->i8[a3];
    vst2_s8(v54, v48);
    v55 = &v54[a3];
    *v55 = vzip2q_s8(v48, v52);
    v56 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v57 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v58 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v59 = vzip1q_s16(v56, vdupq_laneq_s64(v56, 1));
    v60 = vzip1q_s16(v58, vdupq_laneq_s64(v58, 1));
    result = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v40)), vandq_s8(*(v8 + v9), v40))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v40)), vandq_s8(*(v8 + v9 + v9 + v9), v40)));
    v61 = veorq_s8(vzip1q_s16(v57, vdupq_laneq_s64(v57, 1)), v41);
    v62 = vzip1q_s8(result, v61);
    v63 = veorq_s8(v59, v41);
    v64 = veorq_s8(v60, v41);
    v65 = vzip1q_s8(v63, v64);
    vst2_s8(v7, v62);
    if (a4 >= 7)
    {
      result = vzip2q_s8(result, v61);
      v66 = vzip2q_s8(v63, v64).u64[0];
      v67 = &v7[a3];
      *v67 = vzip2q_s8(v62, v65);
      v68 = &v67->i8[a3];
      vst2_s8(v68, result);
      return result;
    }

    if (a4 == 6)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void from_444_to_y408<2,2,(AlphaOutputMethod)1,false>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v7)), vandq_s8(*(a5 + v6), v7))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v7)), vandq_s8(*(a5 + v6 + v6 + v6), v7)));
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v9);
  v11 = vzip1q_s8(v8, v10);
  v12 = vzip2q_s8(v8, v10);
  v13 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v14 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v15 = vzip1q_s16(v13, v14);
  v16 = vzip2q_s16(v13, v14);
  v17 = veorq_s8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v9);
  v18 = veorq_s8(vzip1q_s8(v16, vdupq_laneq_s64(v16, 1)), v9);
  if (a4 == 4)
  {
    v19 = a3;
    vst2_s16(a1, v11);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v11, v17);
    v21 = (v20->i16 + a3);
    vst2_s16(v21, v12);
    v22 = (v21 + v19);
    *v22 = vzip2q_s16(v12, v18);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v11);
    }
  }

  else
  {
    v23 = a3;
    vst2_s16(a1, v11);
    v24 = (a1 + v23);
    *v24 = vzip2q_s16(v11, v17);
    if (a4 == 3)
    {
      v25 = (v24->i16 + a3);
      vst2_s16(v25, v12);
    }
  }
}

void from_444_to_y408<2,2,(AlphaOutputMethod)1,true>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v7)), vandq_s8(*(a5 + v6), v7))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v7)), vandq_s8(*(a5 + v6 + v6 + v6), v7)));
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v9);
  v11 = vzip1q_s8(v8, v10);
  v12 = vzip2q_s8(v8, v10);
  v13 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v14 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v15 = vzip1q_s16(v13, v14);
  v16 = vzip2q_s16(v13, v14);
  v17 = veorq_s8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v9);
  v18 = veorq_s8(vzip1q_s8(v16, vdupq_laneq_s64(v16, 1)), v9);
  if (a4 == 4)
  {
    v19 = a3;
    vst2_s16(a1, v11);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v11, v17);
    v21 = (v20->i16 + a3);
    vst2_s16(v21, v12);
    v22 = (v21 + v19);
    *v22 = vzip2q_s16(v12, v18);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v11);
    }
  }

  else
  {
    v23 = a3;
    vst2_s16(a1, v11);
    v24 = (a1 + v23);
    *v24 = vzip2q_s16(v11, v17);
    if (a4 == 3)
    {
      v25 = (v24->i16 + a3);
      vst2_s16(v25, v12);
    }
  }
}

int8x16_t *from_444_to_y408<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v28 = a2 + 8;
    v29 = a2 + 32;
    v30 = a2 + 40;
    v31 = a2 + 64;
    v32 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v8);
    v12 = vzip1q_s8(v9, v11);
    v13 = vzip2q_s8(v9, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v8);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    *result = vzip1q_s8(v12, v16);
    result[1] = vzip2q_s8(v12, v16);
    result[2] = vzip1q_s8(v13, v17);
    result[3] = vzip2q_s8(v13, v17);
    v18 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v8);
    v19 = vzip1q_s8(v9, v18);
    v20 = vzip2q_s8(v9, v18);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v8);
    v23 = vzip1q_s8(v21, v22);
    v24 = vzip2q_s8(v21, v22);
    v25 = &result->i8[v6];
    vst2_s8(v25, v19);
    v25 += 16;
    v26 = &result[2].i8[v6];
    vst2_s8(v26, v20);
    v27 = a2 + 1;
    result = (result + a3);
    --v5;
    *v25 = vzip2q_s8(v19, v23);
    v10[3] = vzip2q_s8(v20, v24);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v28 = v27 + 8;
  v29 = v27 + 32;
  v30 = v27 + 40;
  v31 = v27 + 64;
  v32 = v27 + 72;
  a2 = v27;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = v33[-2].i8;
      v41 = *v28++;
      v42 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v43 = *v29++;
      v44 = v43;
      v45 = *v31++;
      v46 = vqmovn_high_s16(vqmovn_s16(v44), v45);
      v47 = *v30++;
      v48 = v47;
      v49 = *v32++;
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = veorq_s8(v42, v35);
      v54 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v35);
      v55 = vzip1q_s8(v53, v54);
      vst2_s8(v40, v51);
      v56 = vzip2q_s8(v53, v54);
      v33[-1] = vzip2q_s8(v51, v55);
      vst2_s8(i8, v52);
      i8 += a3;
      v33[1] = vzip2q_s8(v52, v56);
      --v34;
      v33 = i8;
    }

    while (v34 > 1);
  }

  return result;
}

int8x16_t *from_444_to_y408<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v28 = a2 + 8;
    v29 = a2 + 32;
    v30 = a2 + 40;
    v31 = a2 + 64;
    v32 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v8);
    v12 = vzip1q_s8(v9, v11);
    v13 = vzip2q_s8(v9, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v8);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    *result = vzip1q_s8(v12, v16);
    result[1] = vzip2q_s8(v12, v16);
    result[2] = vzip1q_s8(v13, v17);
    result[3] = vzip2q_s8(v13, v17);
    v18 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v8);
    v19 = vzip1q_s8(v9, v18);
    v20 = vzip2q_s8(v9, v18);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v8);
    v23 = vzip1q_s8(v21, v22);
    v24 = vzip2q_s8(v21, v22);
    v25 = &result->i8[v6];
    vst2_s8(v25, v19);
    v25 += 16;
    v26 = &result[2].i8[v6];
    vst2_s8(v26, v20);
    v27 = a2 + 1;
    result = (result + a3);
    --v5;
    *v25 = vzip2q_s8(v19, v23);
    v10[3] = vzip2q_s8(v20, v24);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v28 = v27 + 8;
  v29 = v27 + 32;
  v30 = v27 + 40;
  v31 = v27 + 64;
  v32 = v27 + 72;
  a2 = v27;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = v33[-2].i8;
      v41 = *v28++;
      v42 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v43 = *v29++;
      v44 = v43;
      v45 = *v31++;
      v46 = vqmovn_high_s16(vqmovn_s16(v44), v45);
      v47 = *v30++;
      v48 = v47;
      v49 = *v32++;
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = veorq_s8(v42, v35);
      v54 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v35);
      v55 = vzip1q_s8(v53, v54);
      vst2_s8(v40, v51);
      v56 = vzip2q_s8(v53, v54);
      v33[-1] = vzip2q_s8(v51, v55);
      vst2_s8(i8, v52);
      i8 += a3;
      v33[1] = vzip2q_s8(v52, v56);
      --v34;
      v33 = i8;
    }

    while (v34 > 1);
  }

  return result;
}

int8x16_t *from_444_to_y408<8,4,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v28 = a2 + 4;
    v29 = a2 + 16;
    v30 = a2 + 20;
    v31 = a2 + 32;
    v32 = a2 + 36;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v8);
    v12 = vzip1q_s8(v9, v11);
    v13 = vzip2q_s8(v9, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v8);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    *result = vzip1q_s8(v12, v16);
    result[1] = vzip2q_s8(v12, v16);
    result[2] = vzip1q_s8(v13, v17);
    result[3] = vzip2q_s8(v13, v17);
    v18 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v8);
    v19 = vzip1q_s8(v9, v18);
    v20 = vzip2q_s8(v9, v18);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v8);
    v23 = vzip1q_s8(v21, v22);
    v24 = vzip2q_s8(v21, v22);
    v25 = &result->i8[v6];
    vst2_s8(v25, v19);
    v25 += 16;
    v26 = &result[2].i8[v6];
    vst2_s8(v26, v20);
    v27 = a2 + 1;
    result = (result + a3);
    --v5;
    *v25 = vzip2q_s8(v19, v23);
    v10[3] = vzip2q_s8(v20, v24);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v28 = v27 + 4;
  v29 = v27 + 16;
  v30 = v27 + 20;
  v31 = v27 + 32;
  v32 = v27 + 36;
  a2 = v27;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = v33[-2].i8;
      v41 = *v28++;
      v42 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v43 = *v29++;
      v44 = v43;
      v45 = *v31++;
      v46 = vqmovn_high_s16(vqmovn_s16(v44), v45);
      v47 = *v30++;
      v48 = v47;
      v49 = *v32++;
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = veorq_s8(v42, v35);
      v54 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v35);
      v55 = vzip1q_s8(v53, v54);
      vst2_s8(v40, v51);
      v56 = vzip2q_s8(v53, v54);
      v33[-1] = vzip2q_s8(v51, v55);
      vst2_s8(i8, v52);
      i8 += a3;
      v33[1] = vzip2q_s8(v52, v56);
      --v34;
      v33 = i8;
    }

    while (v34 > 1);
  }

  return result;
}

int8x16_t *from_444_to_y408<8,4,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v28 = a2 + 4;
    v29 = a2 + 16;
    v30 = a2 + 20;
    v31 = a2 + 32;
    v32 = a2 + 36;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v8);
    v12 = vzip1q_s8(v9, v11);
    v13 = vzip2q_s8(v9, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v8);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    *result = vzip1q_s8(v12, v16);
    result[1] = vzip2q_s8(v12, v16);
    result[2] = vzip1q_s8(v13, v17);
    result[3] = vzip2q_s8(v13, v17);
    v18 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v8);
    v19 = vzip1q_s8(v9, v18);
    v20 = vzip2q_s8(v9, v18);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v8);
    v23 = vzip1q_s8(v21, v22);
    v24 = vzip2q_s8(v21, v22);
    v25 = &result->i8[v6];
    vst2_s8(v25, v19);
    v25 += 16;
    v26 = &result[2].i8[v6];
    vst2_s8(v26, v20);
    v27 = a2 + 1;
    result = (result + a3);
    --v5;
    *v25 = vzip2q_s8(v19, v23);
    v10[3] = vzip2q_s8(v20, v24);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v28 = v27 + 4;
  v29 = v27 + 16;
  v30 = v27 + 20;
  v31 = v27 + 32;
  v32 = v27 + 36;
  a2 = v27;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = v33[-2].i8;
      v41 = *v28++;
      v42 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v43 = *v29++;
      v44 = v43;
      v45 = *v31++;
      v46 = vqmovn_high_s16(vqmovn_s16(v44), v45);
      v47 = *v30++;
      v48 = v47;
      v49 = *v32++;
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = veorq_s8(v42, v35);
      v54 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v35);
      v55 = vzip1q_s8(v53, v54);
      vst2_s8(v40, v51);
      v56 = vzip2q_s8(v53, v54);
      v33[-1] = vzip2q_s8(v51, v55);
      vst2_s8(i8, v52);
      i8 += a3;
      v33[1] = vzip2q_s8(v52, v56);
      --v34;
      v33 = i8;
    }

    while (v34 > 1);
  }

  return result;
}

int8x16_t from_444_to_y408<4,8,(AlphaOutputMethod)2,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v28 = a2 + 4;
    v29 = a2 + 8;
    v30 = a2 + 12;
    v31 = a2 + 16;
    v32 = a2 + 20;
    v33 = a2 + 24;
    v34 = a2 + 28;
    v35 = a2 + 32;
    v36 = a2 + 36;
    v37 = a2 + 40;
    v38 = a2 + 44;
    v39 = (a1 + v5);
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40.i64[0] = 0x8080808080808080;
      v40.i64[1] = 0x8080808080808080;
      v41 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v33), *v37), v40);
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v40);
      v44 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v34), *v38), v40);
      v45 = vzip1q_s8(v43, v44);
      result = vzip1q_s8(vzip2q_s8(v42, v41), vzip2q_s8(v43, v44));
      *v39 = vzip1q_s8(vzip1q_s8(v42, v41), v45);
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v46 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    do
    {
      v48 = v7;
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v31[v46]), v35[v46]), result);
      v50 = vzip1q_s8(v47, v49);
      v51 = vzip2q_s8(v47, v49);
      v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v46]), v28[v46]), result);
      v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32[v46]), v36[v46]), result);
      v54 = vzip1q_s8(v52, v53);
      v55 = vzip2q_s8(v52, v53);
      *a1 = vzip1q_s8(v50, v54);
      a1[1] = vzip1q_s8(v51, v55);
      v56 = (a1 + a3);
      *v56 = vzip2q_s8(v50, v54);
      v56[1] = vzip2q_s8(v51, v55);
      a1 = (a1 + 2 * a3);
      v7 = v48 - 2;
      ++v46;
    }

    while (v48 > 3);
    a2 = (a2 + v46 * 16);
    v28 = (v28 + v46 * 16);
    v31 = (v31 + v46 * 16);
    v32 = (v32 + v46 * 16);
    v35 = (v35 + v46 * 16);
    v36 = (v36 + v46 * 16);
    if (v48 != 3)
    {
      return result;
    }

LABEL_18:
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    v58 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v31), *v35), v57);
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v28), v57);
    v61 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v32), *v36), v57);
    v62 = vzip1q_s8(v60, v61);
    result = vzip1q_s8(vzip2q_s8(v59, v58), vzip2q_s8(v60, v61));
    *a1 = vzip1q_s8(vzip1q_s8(v59, v58), v62);
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 8;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i8[v5];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), result);
    v13 = vzip1q_s8(v8, v12);
    v14 = vzip2q_s8(v8, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), result);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), result);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    *a1 = vzip1q_s8(v13, v17);
    a1[1] = vzip1q_s8(v14, v18);
    v19 = (a1 + a3);
    *v19 = vzip2q_s8(v13, v17);
    v19[1] = vzip2q_s8(v14, v18);
    v20 = (a1 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v7 -= 2;
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), result);
    v22 = vzip1q_s8(v8, v21);
    v23 = vzip2q_s8(v8, v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), result);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), result);
    v26 = vzip1q_s8(v24, v25);
    v27 = vzip2q_s8(v24, v25);
    vst2_s8(v11, v22);
    v11 += 16;
    vst2_s8(v11, v23);
    *v20 = vzip2q_s8(v22, v26);
    v20[1] = vzip2q_s8(v23, v27);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v28 = v10 + 4;
  v29 = v10 + 8;
  v30 = v10 + 12;
  v31 = v10 + 16;
  v32 = v10 + 20;
  v33 = v10 + 24;
  v34 = v10 + 28;
  v35 = v10 + 32;
  v36 = v10 + 36;
  v37 = v10 + 40;
  v38 = v10 + 44;
  v39 = (a1 + v5);
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_444_to_y408<4,8,(AlphaOutputMethod)2,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v28 = a2 + 4;
    v29 = a2 + 8;
    v30 = a2 + 12;
    v31 = a2 + 16;
    v32 = a2 + 20;
    v33 = a2 + 24;
    v34 = a2 + 28;
    v35 = a2 + 32;
    v36 = a2 + 36;
    v37 = a2 + 40;
    v38 = a2 + 44;
    v39 = (a1 + v5);
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40.i64[0] = 0x8080808080808080;
      v40.i64[1] = 0x8080808080808080;
      v41 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v33), *v37), v40);
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v40);
      v44 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v34), *v38), v40);
      v45 = vzip1q_s8(v43, v44);
      result = vzip1q_s8(vzip2q_s8(v42, v41), vzip2q_s8(v43, v44));
      *v39 = vzip1q_s8(vzip1q_s8(v42, v41), v45);
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v46 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    do
    {
      v48 = v7;
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v31[v46]), v35[v46]), result);
      v50 = vzip1q_s8(v47, v49);
      v51 = vzip2q_s8(v47, v49);
      v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v46]), v28[v46]), result);
      v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32[v46]), v36[v46]), result);
      v54 = vzip1q_s8(v52, v53);
      v55 = vzip2q_s8(v52, v53);
      *a1 = vzip1q_s8(v50, v54);
      a1[1] = vzip1q_s8(v51, v55);
      v56 = (a1 + a3);
      *v56 = vzip2q_s8(v50, v54);
      v56[1] = vzip2q_s8(v51, v55);
      a1 = (a1 + 2 * a3);
      v7 = v48 - 2;
      ++v46;
    }

    while (v48 > 3);
    a2 = (a2 + v46 * 16);
    v28 = (v28 + v46 * 16);
    v31 = (v31 + v46 * 16);
    v32 = (v32 + v46 * 16);
    v35 = (v35 + v46 * 16);
    v36 = (v36 + v46 * 16);
    if (v48 != 3)
    {
      return result;
    }

LABEL_18:
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    v58 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v31), *v35), v57);
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v28), v57);
    v61 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v32), *v36), v57);
    v62 = vzip1q_s8(v60, v61);
    result = vzip1q_s8(vzip2q_s8(v59, v58), vzip2q_s8(v60, v61));
    *a1 = vzip1q_s8(vzip1q_s8(v59, v58), v62);
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 8;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i8[v5];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), result);
    v13 = vzip1q_s8(v8, v12);
    v14 = vzip2q_s8(v8, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), result);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), result);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    *a1 = vzip1q_s8(v13, v17);
    a1[1] = vzip1q_s8(v14, v18);
    v19 = (a1 + a3);
    *v19 = vzip2q_s8(v13, v17);
    v19[1] = vzip2q_s8(v14, v18);
    v20 = (a1 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v7 -= 2;
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), result);
    v22 = vzip1q_s8(v8, v21);
    v23 = vzip2q_s8(v8, v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), result);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), result);
    v26 = vzip1q_s8(v24, v25);
    v27 = vzip2q_s8(v24, v25);
    vst2_s8(v11, v22);
    v11 += 16;
    vst2_s8(v11, v23);
    *v20 = vzip2q_s8(v22, v26);
    v20[1] = vzip2q_s8(v23, v27);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v28 = v10 + 4;
  v29 = v10 + 8;
  v30 = v10 + 12;
  v31 = v10 + 16;
  v32 = v10 + 20;
  v33 = v10 + 24;
  v34 = v10 + 28;
  v35 = v10 + 32;
  v36 = v10 + 36;
  v37 = v10 + 40;
  v38 = v10 + 44;
  v39 = (a1 + v5);
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_444_to_y408<4,4,(AlphaOutputMethod)2,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v28 = a2 + 2;
    v29 = a2 + 4;
    v30 = a2 + 6;
    v31 = a2 + 8;
    v32 = a2 + 10;
    v33 = a2 + 12;
    v34 = a2 + 14;
    v35 = a2 + 16;
    v36 = a2 + 18;
    v37 = a2 + 20;
    v38 = a2 + 22;
    v39 = (a1 + v5);
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40.i64[0] = 0x8080808080808080;
      v40.i64[1] = 0x8080808080808080;
      v41 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v33), *v37), v40);
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v40);
      v44 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v34), *v38), v40);
      v45 = vzip1q_s8(v43, v44);
      result = vzip1q_s8(vzip2q_s8(v42, v41), vzip2q_s8(v43, v44));
      *v39 = vzip1q_s8(vzip1q_s8(v42, v41), v45);
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v46 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    do
    {
      v48 = v7;
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v31[v46]), v35[v46]), result);
      v50 = vzip1q_s8(v47, v49);
      v51 = vzip2q_s8(v47, v49);
      v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v46]), v28[v46]), result);
      v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32[v46]), v36[v46]), result);
      v54 = vzip1q_s8(v52, v53);
      v55 = vzip2q_s8(v52, v53);
      *a1 = vzip1q_s8(v50, v54);
      a1[1] = vzip1q_s8(v51, v55);
      v56 = (a1 + a3);
      *v56 = vzip2q_s8(v50, v54);
      v56[1] = vzip2q_s8(v51, v55);
      a1 = (a1 + 2 * a3);
      v7 = v48 - 2;
      ++v46;
    }

    while (v48 > 3);
    a2 = (a2 + v46 * 16);
    v28 = (v28 + v46 * 16);
    v31 = (v31 + v46 * 16);
    v32 = (v32 + v46 * 16);
    v35 = (v35 + v46 * 16);
    v36 = (v36 + v46 * 16);
    if (v48 != 3)
    {
      return result;
    }

LABEL_18:
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    v58 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v31), *v35), v57);
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v28), v57);
    v61 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v32), *v36), v57);
    v62 = vzip1q_s8(v60, v61);
    result = vzip1q_s8(vzip2q_s8(v59, v58), vzip2q_s8(v60, v61));
    *a1 = vzip1q_s8(vzip1q_s8(v59, v58), v62);
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 4;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i8[v5];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[16]), result);
    v13 = vzip1q_s8(v8, v12);
    v14 = vzip2q_s8(v8, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[2]), result);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[10]), a2[18]), result);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    *a1 = vzip1q_s8(v13, v17);
    a1[1] = vzip1q_s8(v14, v18);
    v19 = (a1 + a3);
    *v19 = vzip2q_s8(v13, v17);
    v19[1] = vzip2q_s8(v14, v18);
    v20 = (a1 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v7 -= 2;
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[20]), result);
    v22 = vzip1q_s8(v8, v21);
    v23 = vzip2q_s8(v8, v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]), result);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[14]), a2[22]), result);
    v26 = vzip1q_s8(v24, v25);
    v27 = vzip2q_s8(v24, v25);
    vst2_s8(v11, v22);
    v11 += 16;
    vst2_s8(v11, v23);
    *v20 = vzip2q_s8(v22, v26);
    v20[1] = vzip2q_s8(v23, v27);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v28 = v10 + 2;
  v29 = v10 + 4;
  v30 = v10 + 6;
  v31 = v10 + 8;
  v32 = v10 + 10;
  v33 = v10 + 12;
  v34 = v10 + 14;
  v35 = v10 + 16;
  v36 = v10 + 18;
  v37 = v10 + 20;
  v38 = v10 + 22;
  v39 = (a1 + v5);
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_444_to_y408<4,4,(AlphaOutputMethod)2,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v28 = a2 + 2;
    v29 = a2 + 4;
    v30 = a2 + 6;
    v31 = a2 + 8;
    v32 = a2 + 10;
    v33 = a2 + 12;
    v34 = a2 + 14;
    v35 = a2 + 16;
    v36 = a2 + 18;
    v37 = a2 + 20;
    v38 = a2 + 22;
    v39 = (a1 + v5);
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40.i64[0] = 0x8080808080808080;
      v40.i64[1] = 0x8080808080808080;
      v41 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v33), *v37), v40);
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v40);
      v44 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v34), *v38), v40);
      v45 = vzip1q_s8(v43, v44);
      result = vzip1q_s8(vzip2q_s8(v42, v41), vzip2q_s8(v43, v44));
      *v39 = vzip1q_s8(vzip1q_s8(v42, v41), v45);
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v46 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    do
    {
      v48 = v7;
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v31[v46]), v35[v46]), result);
      v50 = vzip1q_s8(v47, v49);
      v51 = vzip2q_s8(v47, v49);
      v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v46]), v28[v46]), result);
      v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32[v46]), v36[v46]), result);
      v54 = vzip1q_s8(v52, v53);
      v55 = vzip2q_s8(v52, v53);
      *a1 = vzip1q_s8(v50, v54);
      a1[1] = vzip1q_s8(v51, v55);
      v56 = (a1 + a3);
      *v56 = vzip2q_s8(v50, v54);
      v56[1] = vzip2q_s8(v51, v55);
      a1 = (a1 + 2 * a3);
      v7 = v48 - 2;
      ++v46;
    }

    while (v48 > 3);
    a2 = (a2 + v46 * 16);
    v28 = (v28 + v46 * 16);
    v31 = (v31 + v46 * 16);
    v32 = (v32 + v46 * 16);
    v35 = (v35 + v46 * 16);
    v36 = (v36 + v46 * 16);
    if (v48 != 3)
    {
      return result;
    }

LABEL_18:
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    v58 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v31), *v35), v57);
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v28), v57);
    v61 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v32), *v36), v57);
    v62 = vzip1q_s8(v60, v61);
    result = vzip1q_s8(vzip2q_s8(v59, v58), vzip2q_s8(v60, v61));
    *a1 = vzip1q_s8(vzip1q_s8(v59, v58), v62);
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 4;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i8[v5];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[16]), result);
    v13 = vzip1q_s8(v8, v12);
    v14 = vzip2q_s8(v8, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[2]), result);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[10]), a2[18]), result);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    *a1 = vzip1q_s8(v13, v17);
    a1[1] = vzip1q_s8(v14, v18);
    v19 = (a1 + a3);
    *v19 = vzip2q_s8(v13, v17);
    v19[1] = vzip2q_s8(v14, v18);
    v20 = (a1 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v7 -= 2;
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[20]), result);
    v22 = vzip1q_s8(v8, v21);
    v23 = vzip2q_s8(v8, v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]), result);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[14]), a2[22]), result);
    v26 = vzip1q_s8(v24, v25);
    v27 = vzip2q_s8(v24, v25);
    vst2_s8(v11, v22);
    v11 += 16;
    vst2_s8(v11, v23);
    *v20 = vzip2q_s8(v22, v26);
    v20[1] = vzip2q_s8(v23, v27);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v28 = v10 + 2;
  v29 = v10 + 4;
  v30 = v10 + 6;
  v31 = v10 + 8;
  v32 = v10 + 10;
  v33 = v10 + 12;
  v34 = v10 + 14;
  v35 = v10 + 16;
  v36 = v10 + 18;
  v37 = v10 + 20;
  v38 = v10 + 22;
  v39 = (a1 + v5);
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_444_to_y408<4,2,(AlphaOutputMethod)2,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v28 = a2 + 1;
    v29 = a2 + 2;
    v30 = a2 + 3;
    v31 = a2 + 4;
    v32 = a2 + 5;
    v33 = a2 + 6;
    v34 = a2 + 7;
    v35 = a2 + 8;
    v36 = a2 + 9;
    v37 = a2 + 10;
    v38 = a2 + 11;
    v39 = (a1 + v5);
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40.i64[0] = 0x8080808080808080;
      v40.i64[1] = 0x8080808080808080;
      v41 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v33), *v37), v40);
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v40);
      v44 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v34), *v38), v40);
      v45 = vzip1q_s8(v43, v44);
      result = vzip1q_s8(vzip2q_s8(v42, v41), vzip2q_s8(v43, v44));
      *v39 = vzip1q_s8(vzip1q_s8(v42, v41), v45);
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v46 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    do
    {
      v48 = v7;
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v31[v46]), v35[v46]), result);
      v50 = vzip1q_s8(v47, v49);
      v51 = vzip2q_s8(v47, v49);
      v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v46]), v28[v46]), result);
      v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32[v46]), v36[v46]), result);
      v54 = vzip1q_s8(v52, v53);
      v55 = vzip2q_s8(v52, v53);
      *a1 = vzip1q_s8(v50, v54);
      a1[1] = vzip1q_s8(v51, v55);
      v56 = (a1 + a3);
      *v56 = vzip2q_s8(v50, v54);
      v56[1] = vzip2q_s8(v51, v55);
      a1 = (a1 + v5);
      v7 = v48 - 2;
      ++v46;
    }

    while (v48 > 3);
    a2 = (a2 + v46 * 16);
    v28 = (v28 + v46 * 16);
    v31 = (v31 + v46 * 16);
    v32 = (v32 + v46 * 16);
    v35 = (v35 + v46 * 16);
    v36 = (v36 + v46 * 16);
    if (v48 != 3)
    {
      return result;
    }

LABEL_18:
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    v58 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v31), *v35), v57);
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v28), v57);
    v61 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v32), *v36), v57);
    v62 = vzip1q_s8(v60, v61);
    result = vzip1q_s8(vzip2q_s8(v59, v58), vzip2q_s8(v60, v61));
    *a1 = vzip1q_s8(vzip1q_s8(v59, v58), v62);
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = a2;
  do
  {
    v10 = v9[1];
    ++v9;
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]), result);
    v12 = vzip1q_s8(v8, v11);
    v13 = vzip2q_s8(v8, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), v10), result);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]), result);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    *a1 = vzip1q_s8(v12, v16);
    a1[1] = vzip1q_s8(v13, v17);
    v18 = (a1 + a3);
    v19 = (a1 + a3 + v5);
    a1 = (a1 + v5);
    *v18 = vzip2q_s8(v12, v16);
    v18[1] = vzip2q_s8(v13, v17);
    v7 -= 2;
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]), result);
    v21 = vzip1q_s8(v8, v20);
    v22 = vzip2q_s8(v8, v20);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]), result);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]), result);
    v25 = vzip1q_s8(v23, v24);
    v26 = vzip2q_s8(v23, v24);
    v27 = a1;
    vst2_s8(v27, v21);
    v27 += 16;
    vst2_s8(v27, v22);
    *v19 = vzip2q_s8(v21, v25);
    v19[1] = vzip2q_s8(v22, v26);
    a4 -= 2;
    a2 = v9;
  }

  while (a4 > 3);
  v28 = v9 + 1;
  v29 = v9 + 2;
  v30 = v9 + 3;
  v31 = v9 + 4;
  v32 = v9 + 5;
  v33 = v9 + 6;
  v34 = v9 + 7;
  v35 = v9 + 8;
  v36 = v9 + 9;
  v37 = v9 + 10;
  v38 = v9 + 11;
  v6 = a4 - 2;
  v39 = (a1 + v5);
  a2 = v9;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_444_to_y408<4,2,(AlphaOutputMethod)2,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v28 = a2 + 1;
    v29 = a2 + 2;
    v30 = a2 + 3;
    v31 = a2 + 4;
    v32 = a2 + 5;
    v33 = a2 + 6;
    v34 = a2 + 7;
    v35 = a2 + 8;
    v36 = a2 + 9;
    v37 = a2 + 10;
    v38 = a2 + 11;
    v39 = (a1 + v5);
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40.i64[0] = 0x8080808080808080;
      v40.i64[1] = 0x8080808080808080;
      v41 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v33), *v37), v40);
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v43 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v40);
      v44 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v34), *v38), v40);
      v45 = vzip1q_s8(v43, v44);
      result = vzip1q_s8(vzip2q_s8(v42, v41), vzip2q_s8(v43, v44));
      *v39 = vzip1q_s8(vzip1q_s8(v42, v41), v45);
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v46 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    do
    {
      v48 = v7;
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v31[v46]), v35[v46]), result);
      v50 = vzip1q_s8(v47, v49);
      v51 = vzip2q_s8(v47, v49);
      v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[v46]), v28[v46]), result);
      v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32[v46]), v36[v46]), result);
      v54 = vzip1q_s8(v52, v53);
      v55 = vzip2q_s8(v52, v53);
      *a1 = vzip1q_s8(v50, v54);
      a1[1] = vzip1q_s8(v51, v55);
      v56 = (a1 + a3);
      *v56 = vzip2q_s8(v50, v54);
      v56[1] = vzip2q_s8(v51, v55);
      a1 = (a1 + v5);
      v7 = v48 - 2;
      ++v46;
    }

    while (v48 > 3);
    a2 = (a2 + v46 * 16);
    v28 = (v28 + v46 * 16);
    v31 = (v31 + v46 * 16);
    v32 = (v32 + v46 * 16);
    v35 = (v35 + v46 * 16);
    v36 = (v36 + v46 * 16);
    if (v48 != 3)
    {
      return result;
    }

LABEL_18:
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    v58 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v31), *v35), v57);
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), *v28), v57);
    v61 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v32), *v36), v57);
    v62 = vzip1q_s8(v60, v61);
    result = vzip1q_s8(vzip2q_s8(v59, v58), vzip2q_s8(v60, v61));
    *a1 = vzip1q_s8(vzip1q_s8(v59, v58), v62);
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = a2;
  do
  {
    v10 = v9[1];
    ++v9;
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]), result);
    v12 = vzip1q_s8(v8, v11);
    v13 = vzip2q_s8(v8, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), v10), result);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]), result);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    *a1 = vzip1q_s8(v12, v16);
    a1[1] = vzip1q_s8(v13, v17);
    v18 = (a1 + a3);
    v19 = (a1 + a3 + v5);
    a1 = (a1 + v5);
    *v18 = vzip2q_s8(v12, v16);
    v18[1] = vzip2q_s8(v13, v17);
    v7 -= 2;
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]), result);
    v21 = vzip1q_s8(v8, v20);
    v22 = vzip2q_s8(v8, v20);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]), result);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]), result);
    v25 = vzip1q_s8(v23, v24);
    v26 = vzip2q_s8(v23, v24);
    v27 = a1;
    vst2_s8(v27, v21);
    v27 += 16;
    vst2_s8(v27, v22);
    *v19 = vzip2q_s8(v21, v25);
    v19[1] = vzip2q_s8(v22, v26);
    a4 -= 2;
    a2 = v9;
  }

  while (a4 > 3);
  v28 = v9 + 1;
  v29 = v9 + 2;
  v30 = v9 + 3;
  v31 = v9 + 4;
  v32 = v9 + 5;
  v33 = v9 + 6;
  v34 = v9 + 7;
  v35 = v9 + 8;
  v36 = v9 + 9;
  v37 = v9 + 10;
  v38 = v9 + 11;
  v6 = a4 - 2;
  v39 = (a1 + v5);
  a2 = v9;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_444_to_y408<2,4,(AlphaOutputMethod)2,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = &a1[4 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v8 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v9.i64[0] = 0x8080808080808080;
    v9.i64[1] = 0x8080808080808080;
    v10 = veorq_s8(vzip1q_s16(v7, vdupq_laneq_s64(v7, 1)), v9);
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    v12 = vzip1q_s8(v11, v10);
    v13 = vzip2q_s8(v11, v10);
    v14 = veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v9);
    v15 = veorq_s8(vzip1q_s16(v8, vdupq_laneq_s64(v8, 1)), v9);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    vst2_s8(a1, v12);
    v18 = &a1[a3];
    *v18 = vzip2q_s8(v12, v16);
    v19 = &v18->i8[a3];
    vst2_s8(v19, v13);
    v20 = &v19[a3];
    *v20 = vzip2q_s8(v13, v17);
    v21 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v22 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v24 = veorq_s8(vzip1q_s16(v22, vdupq_laneq_s64(v22, 1)), v9);
    v25 = vzip1q_s8(v11, v24);
    v26 = vzip2q_s8(v11, v24);
    v27 = veorq_s8(vzip1q_s16(v21, vdupq_laneq_s64(v21, 1)), v9);
    v28 = veorq_s8(vzip1q_s16(v23, vdupq_laneq_s64(v23, 1)), v9);
    v29 = vzip1q_s8(v27, v28);
    v30 = vzip2q_s8(v27, v28);
    vst2_s8(v5, v25);
    v31 = &v5[a3];
    *v31 = vzip2q_s8(v25, v29);
    v32 = &v31->i8[a3];
    vst2_s8(v32, v26);
    v33 = &v32[a3];
    result = vzip2q_s8(v26, v30);
    *v33 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v63 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v64 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v65 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v66 = vzip1q_s16(v63, vdupq_laneq_s64(v63, 1));
      v67 = vzip1q_s16(v65, vdupq_laneq_s64(v65, 1));
      v68.i64[0] = 0x8080808080808080;
      v68.i64[1] = 0x8080808080808080;
      v69 = veorq_s8(vzip1q_s16(v64, vdupq_laneq_s64(v64, 1)), v68);
      v70.i64[0] = -1;
      v70.i64[1] = -1;
      result = vzip1q_s8(v70, v69);
      v71 = veorq_s8(v66, v68);
      v72 = veorq_s8(v67, v68);
      v73 = vzip1q_s8(v71, v72);
      vst2_s8(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(result, v73);
          *&a1[a3] = result;
        }
      }

      else
      {
        v74 = vzip2q_s8(v70, v69);
        v75 = vzip2q_s8(v71, v72);
        result = vzip2q_s8(result, v73);
        *&a1[a3] = result;
        v76 = &a1[a3 + a3];
        vst2_s8(v76, v74);
        if (a4 == 4)
        {
          result = vzip2q_s8(v74, v75);
          *&v76[a3] = result;
        }
      }
    }
  }

  else
  {
    v34 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v35 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v36 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v37 = vzip1q_s16(v34, vdupq_laneq_s64(v34, 1));
    v38 = vzip1q_s16(v35, vdupq_laneq_s64(v35, 1));
    v39 = vzip1q_s16(v36, vdupq_laneq_s64(v36, 1));
    v40.i64[0] = 0x8080808080808080;
    v40.i64[1] = 0x8080808080808080;
    v41 = veorq_s8(v38, v40);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v42 = vzip1q_s8(result, v41);
    v43 = vzip2q_s8(result, v41);
    v44 = veorq_s8(v37, v40);
    v45 = veorq_s8(v39, v40);
    v46 = vzip1q_s8(v44, v45);
    v47 = vzip2q_s8(v44, v45);
    vst2_s8(a1, v42);
    v48 = &a1[a3];
    *v48 = vzip2q_s8(v42, v46);
    v49 = &v48->i8[a3];
    vst2_s8(v49, v43);
    v50 = &v49[a3];
    *v50 = vzip2q_s8(v43, v47);
    v51 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v52 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v53 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v54 = vzip1q_s16(v51, vdupq_laneq_s64(v51, 1));
    v55 = vzip1q_s16(v53, vdupq_laneq_s64(v53, 1));
    v56 = veorq_s8(vzip1q_s16(v52, vdupq_laneq_s64(v52, 1)), v40);
    v57 = vzip1q_s8(result, v56);
    v58 = veorq_s8(v54, v40);
    v59 = veorq_s8(v55, v40);
    v60 = vzip1q_s8(v58, v59);
    vst2_s8(v5, v57);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s8(v57, v60);
        *&v5[a3] = result;
      }
    }

    else
    {
      v77.val[0] = vzip2q_s8(result, v56).u64[0];
      v77.val[1] = vzip2q_s8(v58, v59).u64[0];
      v61 = &v5[a3];
      result = vzip2q_s8(v57, v60);
      *v61 = result;
      v62 = &v61->i8[a3];
      vst2_s8(v62, v77);
    }
  }

  return result;
}

int8x16_t from_444_to_y408<2,4,(AlphaOutputMethod)2,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = &a1[4 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v8 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v9.i64[0] = 0x8080808080808080;
    v9.i64[1] = 0x8080808080808080;
    v10 = veorq_s8(vzip1q_s16(v7, vdupq_laneq_s64(v7, 1)), v9);
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    v12 = vzip1q_s8(v11, v10);
    v13 = vzip2q_s8(v11, v10);
    v14 = veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v9);
    v15 = veorq_s8(vzip1q_s16(v8, vdupq_laneq_s64(v8, 1)), v9);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    vst2_s8(a1, v12);
    v18 = &a1[a3];
    *v18 = vzip2q_s8(v12, v16);
    v19 = &v18->i8[a3];
    vst2_s8(v19, v13);
    v20 = &v19[a3];
    *v20 = vzip2q_s8(v13, v17);
    v21 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v22 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v24 = veorq_s8(vzip1q_s16(v22, vdupq_laneq_s64(v22, 1)), v9);
    v25 = vzip1q_s8(v11, v24);
    v26 = vzip2q_s8(v11, v24);
    v27 = veorq_s8(vzip1q_s16(v21, vdupq_laneq_s64(v21, 1)), v9);
    v28 = veorq_s8(vzip1q_s16(v23, vdupq_laneq_s64(v23, 1)), v9);
    v29 = vzip1q_s8(v27, v28);
    v30 = vzip2q_s8(v27, v28);
    vst2_s8(v5, v25);
    v31 = &v5[a3];
    *v31 = vzip2q_s8(v25, v29);
    v32 = &v31->i8[a3];
    vst2_s8(v32, v26);
    v33 = &v32[a3];
    result = vzip2q_s8(v26, v30);
    *v33 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v63 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v64 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v65 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v66 = vzip1q_s16(v63, vdupq_laneq_s64(v63, 1));
      v67 = vzip1q_s16(v65, vdupq_laneq_s64(v65, 1));
      v68.i64[0] = 0x8080808080808080;
      v68.i64[1] = 0x8080808080808080;
      v69 = veorq_s8(vzip1q_s16(v64, vdupq_laneq_s64(v64, 1)), v68);
      v70.i64[0] = -1;
      v70.i64[1] = -1;
      result = vzip1q_s8(v70, v69);
      v71 = veorq_s8(v66, v68);
      v72 = veorq_s8(v67, v68);
      v73 = vzip1q_s8(v71, v72);
      vst2_s8(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(result, v73);
          *&a1[a3] = result;
        }
      }

      else
      {
        v74 = vzip2q_s8(v70, v69);
        v75 = vzip2q_s8(v71, v72);
        result = vzip2q_s8(result, v73);
        *&a1[a3] = result;
        v76 = &a1[a3 + a3];
        vst2_s8(v76, v74);
        if (a4 == 4)
        {
          result = vzip2q_s8(v74, v75);
          *&v76[a3] = result;
        }
      }
    }
  }

  else
  {
    v34 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v35 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v36 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v37 = vzip1q_s16(v34, vdupq_laneq_s64(v34, 1));
    v38 = vzip1q_s16(v35, vdupq_laneq_s64(v35, 1));
    v39 = vzip1q_s16(v36, vdupq_laneq_s64(v36, 1));
    v40.i64[0] = 0x8080808080808080;
    v40.i64[1] = 0x8080808080808080;
    v41 = veorq_s8(v38, v40);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v42 = vzip1q_s8(result, v41);
    v43 = vzip2q_s8(result, v41);
    v44 = veorq_s8(v37, v40);
    v45 = veorq_s8(v39, v40);
    v46 = vzip1q_s8(v44, v45);
    v47 = vzip2q_s8(v44, v45);
    vst2_s8(a1, v42);
    v48 = &a1[a3];
    *v48 = vzip2q_s8(v42, v46);
    v49 = &v48->i8[a3];
    vst2_s8(v49, v43);
    v50 = &v49[a3];
    *v50 = vzip2q_s8(v43, v47);
    v51 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v52 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v53 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v54 = vzip1q_s16(v51, vdupq_laneq_s64(v51, 1));
    v55 = vzip1q_s16(v53, vdupq_laneq_s64(v53, 1));
    v56 = veorq_s8(vzip1q_s16(v52, vdupq_laneq_s64(v52, 1)), v40);
    v57 = vzip1q_s8(result, v56);
    v58 = veorq_s8(v54, v40);
    v59 = veorq_s8(v55, v40);
    v60 = vzip1q_s8(v58, v59);
    vst2_s8(v5, v57);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s8(v57, v60);
        *&v5[a3] = result;
      }
    }

    else
    {
      v77.val[0] = vzip2q_s8(result, v56).u64[0];
      v77.val[1] = vzip2q_s8(v58, v59).u64[0];
      v61 = &v5[a3];
      result = vzip2q_s8(v57, v60);
      *v61 = result;
      v62 = &v61->i8[a3];
      vst2_s8(v62, v77);
    }
  }

  return result;
}

void from_444_to_y408<2,2,(AlphaOutputMethod)2,false>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4);
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  v7 = vzip1q_s8(v6, v5);
  v8 = vzip2q_s8(v6, v5);
  v9 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v10 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v11 = vzip1q_s16(v9, v10);
  v12 = vzip2q_s16(v9, v10);
  v13 = veorq_s8(vzip1q_s8(v11, vdupq_laneq_s64(v11, 1)), v4);
  v14 = veorq_s8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v4);
  if (a4 == 4)
  {
    v15 = a3;
    vst2_s16(a1, v7);
    v16 = (a1 + v15);
    *v16 = vzip2q_s16(v7, v13);
    v17 = (v16->i16 + a3);
    vst2_s16(v17, v8);
    v18 = (v17 + v15);
    *v18 = vzip2q_s16(v8, v14);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v7);
    }
  }

  else
  {
    v19 = a3;
    vst2_s16(a1, v7);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v7, v13);
    if (a4 == 3)
    {
      v21 = (v20->i16 + a3);
      vst2_s16(v21, v8);
    }
  }
}

void from_444_to_y408<2,2,(AlphaOutputMethod)2,true>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4);
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  v7 = vzip1q_s8(v6, v5);
  v8 = vzip2q_s8(v6, v5);
  v9 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v10 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v11 = vzip1q_s16(v9, v10);
  v12 = vzip2q_s16(v9, v10);
  v13 = veorq_s8(vzip1q_s8(v11, vdupq_laneq_s64(v11, 1)), v4);
  v14 = veorq_s8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v4);
  if (a4 == 4)
  {
    v15 = a3;
    vst2_s16(a1, v7);
    v16 = (a1 + v15);
    *v16 = vzip2q_s16(v7, v13);
    v17 = (v16->i16 + a3);
    vst2_s16(v17, v8);
    v18 = (v17 + v15);
    *v18 = vzip2q_s16(v8, v14);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v7);
    }
  }

  else
  {
    v19 = a3;
    vst2_s16(a1, v7);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v7, v13);
    if (a4 == 3)
    {
      v21 = (v20->i16 + a3);
      vst2_s16(v21, v8);
    }
  }
}

void from_444_to_r408<8,8,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v33 = a2 + 64;
    v34 = a2 + 72;
    if (v7 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x1010101010101010;
  v10.i64[1] = 0x1010101010101010;
  do
  {
    v11 = a2 + 1;
    v12 = (a1 + 8 * a3);
    v13 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v9);
    v15 = vzip1q_s8(*a5, v14);
    v16 = vzip2q_s8(*a5, v14);
    v17 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v9);
    v18 = vzip1q_s8(v13, v17);
    v19 = vzip2q_s8(v13, v17);
    *a1 = vzip1q_s8(v15, v18);
    a1[1] = vzip2q_s8(v15, v18);
    a1[2] = vzip1q_s8(v16, v19);
    a1[3] = vzip2q_s8(v16, v19);
    a1 = (a1 + a3);
    v20 = *(a5 + 8 * a6);
    --v7;
    a5 = (a5 + a6);
    v21 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v9);
    v23 = vzip1q_s8(v20, v22);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v9);
    v25 = vzip1q_s8(v21, v24);
    v26 = v12;
    vst2_s8(v26, v23);
    v26 += 16;
    v27 = vzip2q_s8(v20, v22);
    v28 = vzip2q_s8(v21, v24);
    i8 = v12[2].i8;
    vst2_s8(i8, v27);
    *v26 = vzip2q_s8(v23, v25);
    v12[3] = vzip2q_s8(v27, v28);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v30 = v11 + 8;
  v31 = v11 + 32;
  v32 = v11 + 40;
  v33 = v11 + 64;
  v34 = v11 + 72;
  a2 = v11;
  if (v7 >= 1)
  {
LABEL_10:
    v35 = a1 + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x1010101010101010;
    v38.i64[1] = 0x1010101010101010;
    v39 = a1[2].i8;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v35[-2].i8;
      v43 = *v30++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v31++;
      v46 = v45;
      v47 = *v33++;
      v48 = vqmovn_high_s16(vqmovn_s16(v46), v47);
      v49 = *v32++;
      v50 = v49;
      v51 = *v34++;
      v52 = vqsubq_u8(veorq_s8(v44, v37), v38);
      v53 = veorq_s8(v48, v37);
      v54 = vzip1q_s8(*a5, v53);
      v55 = vzip2q_s8(*a5, v53);
      v56 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v50), v51), v37);
      v57 = vzip1q_s8(v52, v56);
      vst2_s8(v42, v54);
      v58 = vzip2q_s8(v52, v56);
      v35[-1] = vzip2q_s8(v54, v57);
      vst2_s8(v39, v55);
      v39 += a3;
      v35[1] = vzip2q_s8(v55, v58);
      a5 = (a5 + a6);
      --v36;
      v35 = v39;
    }

    while (v36 > 1);
  }
}

void from_444_to_r408<8,8,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v33 = a2 + 64;
    v34 = a2 + 72;
    if (v7 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x1010101010101010;
  v10.i64[1] = 0x1010101010101010;
  do
  {
    v11 = a2 + 1;
    v12 = (a1 + 8 * a3);
    v13 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v9);
    v15 = vzip1q_s8(*a5, v14);
    v16 = vzip2q_s8(*a5, v14);
    v17 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v9);
    v18 = vzip1q_s8(v13, v17);
    v19 = vzip2q_s8(v13, v17);
    *a1 = vzip1q_s8(v15, v18);
    a1[1] = vzip2q_s8(v15, v18);
    a1[2] = vzip1q_s8(v16, v19);
    a1[3] = vzip2q_s8(v16, v19);
    a1 = (a1 + a3);
    v20 = *(a5 + 8 * a6);
    --v7;
    a5 = (a5 + a6);
    v21 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v9);
    v23 = vzip1q_s8(v20, v22);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v9);
    v25 = vzip1q_s8(v21, v24);
    v26 = v12;
    vst2_s8(v26, v23);
    v26 += 16;
    v27 = vzip2q_s8(v20, v22);
    v28 = vzip2q_s8(v21, v24);
    i8 = v12[2].i8;
    vst2_s8(i8, v27);
    *v26 = vzip2q_s8(v23, v25);
    v12[3] = vzip2q_s8(v27, v28);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v30 = v11 + 8;
  v31 = v11 + 32;
  v32 = v11 + 40;
  v33 = v11 + 64;
  v34 = v11 + 72;
  a2 = v11;
  if (v7 >= 1)
  {
LABEL_10:
    v35 = a1 + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x1010101010101010;
    v38.i64[1] = 0x1010101010101010;
    v39 = a1[2].i8;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v35[-2].i8;
      v43 = *v30++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v31++;
      v46 = v45;
      v47 = *v33++;
      v48 = vqmovn_high_s16(vqmovn_s16(v46), v47);
      v49 = *v32++;
      v50 = v49;
      v51 = *v34++;
      v52 = vqsubq_u8(veorq_s8(v44, v37), v38);
      v53 = veorq_s8(v48, v37);
      v54 = vzip1q_s8(*a5, v53);
      v55 = vzip2q_s8(*a5, v53);
      v56 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v50), v51), v37);
      v57 = vzip1q_s8(v52, v56);
      vst2_s8(v42, v54);
      v58 = vzip2q_s8(v52, v56);
      v35[-1] = vzip2q_s8(v54, v57);
      vst2_s8(v39, v55);
      v39 += a3;
      v35[1] = vzip2q_s8(v55, v58);
      a5 = (a5 + a6);
      --v36;
      v35 = v39;
    }

    while (v36 > 1);
  }
}

void from_444_to_r408<8,4,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v31 = a2 + 4;
    v32 = a2 + 16;
    v33 = a2 + 20;
    v34 = a2 + 32;
    v35 = a2 + 36;
    if (v8 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  v11.i64[0] = 0x1010101010101010;
  v11.i64[1] = 0x1010101010101010;
  do
  {
    v12 = a2 + 1;
    v13 = (a1 + 4 * a3);
    v14 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10), v11);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v10);
    v16 = vzip1q_s8(*a5, v15);
    v17 = vzip2q_s8(*a5, v15);
    v18 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v10);
    v19 = vzip1q_s8(v14, v18);
    v20 = vzip2q_s8(v14, v18);
    *a1 = vzip1q_s8(v16, v19);
    a1[1] = vzip2q_s8(v16, v19);
    a1[2] = vzip1q_s8(v17, v20);
    a1[3] = vzip2q_s8(v17, v20);
    a1 = (a1 + a3);
    v21 = *(a5 + (8 * a6));
    --v8;
    a5 = (a5 + v6);
    v22 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10), v11);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v10);
    v24 = vzip1q_s8(v21, v23);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v10);
    v26 = vzip1q_s8(v22, v25);
    v27 = v13;
    vst2_s8(v27, v24);
    v27 += 16;
    v28 = vzip2q_s8(v21, v23);
    v29 = vzip2q_s8(v22, v25);
    i8 = v13[2].i8;
    vst2_s8(i8, v28);
    *v27 = vzip2q_s8(v24, v26);
    v13[3] = vzip2q_s8(v28, v29);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v31 = v12 + 4;
  v32 = v12 + 16;
  v33 = v12 + 20;
  v34 = v12 + 32;
  v35 = v12 + 36;
  a2 = v12;
  if (v8 >= 1)
  {
LABEL_10:
    v36 = a1 + 2;
    v37 = v8 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x1010101010101010;
    v39.i64[1] = 0x1010101010101010;
    v40 = a1[2].i8;
    do
    {
      v41 = *a2++;
      v42 = v41;
      v43 = v36[-2].i8;
      v44 = *v31++;
      v45 = vqmovn_high_s16(vqmovn_s16(v42), v44);
      v46 = *v32++;
      v47 = v46;
      v48 = *v34++;
      v49 = vqmovn_high_s16(vqmovn_s16(v47), v48);
      v50 = *v33++;
      v51 = v50;
      v52 = *v35++;
      v53 = vqsubq_u8(veorq_s8(v45, v38), v39);
      v54 = veorq_s8(v49, v38);
      v55 = vzip1q_s8(*a5, v54);
      v56 = vzip2q_s8(*a5, v54);
      v57 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51), v52), v38);
      v58 = vzip1q_s8(v53, v57);
      vst2_s8(v43, v55);
      v59 = vzip2q_s8(v53, v57);
      v36[-1] = vzip2q_s8(v55, v58);
      vst2_s8(v40, v56);
      v40 += a3;
      v36[1] = vzip2q_s8(v56, v59);
      a5 = (a5 + v6);
      --v37;
      v36 = v40;
    }

    while (v37 > 1);
  }
}

void from_444_to_r408<8,4,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v31 = a2 + 4;
    v32 = a2 + 16;
    v33 = a2 + 20;
    v34 = a2 + 32;
    v35 = a2 + 36;
    if (v8 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  v11.i64[0] = 0x1010101010101010;
  v11.i64[1] = 0x1010101010101010;
  do
  {
    v12 = a2 + 1;
    v13 = (a1 + 4 * a3);
    v14 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10), v11);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v10);
    v16 = vzip1q_s8(*a5, v15);
    v17 = vzip2q_s8(*a5, v15);
    v18 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v10);
    v19 = vzip1q_s8(v14, v18);
    v20 = vzip2q_s8(v14, v18);
    *a1 = vzip1q_s8(v16, v19);
    a1[1] = vzip2q_s8(v16, v19);
    a1[2] = vzip1q_s8(v17, v20);
    a1[3] = vzip2q_s8(v17, v20);
    a1 = (a1 + a3);
    v21 = *(a5 + (8 * a6));
    --v8;
    a5 = (a5 + v6);
    v22 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10), v11);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v10);
    v24 = vzip1q_s8(v21, v23);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v10);
    v26 = vzip1q_s8(v22, v25);
    v27 = v13;
    vst2_s8(v27, v24);
    v27 += 16;
    v28 = vzip2q_s8(v21, v23);
    v29 = vzip2q_s8(v22, v25);
    i8 = v13[2].i8;
    vst2_s8(i8, v28);
    *v27 = vzip2q_s8(v24, v26);
    v13[3] = vzip2q_s8(v28, v29);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v31 = v12 + 4;
  v32 = v12 + 16;
  v33 = v12 + 20;
  v34 = v12 + 32;
  v35 = v12 + 36;
  a2 = v12;
  if (v8 >= 1)
  {
LABEL_10:
    v36 = a1 + 2;
    v37 = v8 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x1010101010101010;
    v39.i64[1] = 0x1010101010101010;
    v40 = a1[2].i8;
    do
    {
      v41 = *a2++;
      v42 = v41;
      v43 = v36[-2].i8;
      v44 = *v31++;
      v45 = vqmovn_high_s16(vqmovn_s16(v42), v44);
      v46 = *v32++;
      v47 = v46;
      v48 = *v34++;
      v49 = vqmovn_high_s16(vqmovn_s16(v47), v48);
      v50 = *v33++;
      v51 = v50;
      v52 = *v35++;
      v53 = vqsubq_u8(veorq_s8(v45, v38), v39);
      v54 = veorq_s8(v49, v38);
      v55 = vzip1q_s8(*a5, v54);
      v56 = vzip2q_s8(*a5, v54);
      v57 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51), v52), v38);
      v58 = vzip1q_s8(v53, v57);
      vst2_s8(v43, v55);
      v59 = vzip2q_s8(v53, v57);
      v36[-1] = vzip2q_s8(v55, v58);
      vst2_s8(v40, v56);
      v40 += a3;
      v36[1] = vzip2q_s8(v56, v59);
      a5 = (a5 + v6);
      --v37;
      v36 = v40;
    }

    while (v37 > 1);
  }
}

int8x16_t from_444_to_r408<2,4,(AlphaOutputMethod)1,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int8x16_t result)
{
  v7 = &a1[4 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v12 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v13 = vzip1q_s16(v10, vdupq_laneq_s64(v10, 1));
    v14 = vzip1q_s16(v11, vdupq_laneq_s64(v11, 1));
    v15 = vzip1q_s16(v12, vdupq_laneq_s64(v12, 1));
    v10.i64[0] = 0x8080808080808080;
    v10.i64[1] = 0x8080808080808080;
    v12.i64[0] = 0x1010101010101010;
    v12.i64[1] = 0x1010101010101010;
    v16 = vqsubq_u8(veorq_s8(v13, v10), v12);
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    v17 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v11)), vandq_s8(*(a5 + v9), v11))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v11)), vandq_s8(*(a5 + v9 + v9 + v9), v11)));
    v18 = veorq_s8(v14, v10);
    v19 = vzip1q_s8(v17, v18);
    v20 = vzip2q_s8(v17, v18);
    v21 = veorq_s8(v15, v10);
    v22 = vzip1q_s8(v16, v21);
    v23 = vzip2q_s8(v16, v21);
    vst2_s8(a1, v19);
    v24 = &a1[a3];
    *v24 = vzip2q_s8(v19, v22);
    v25 = &v24->i8[a3];
    vst2_s8(v25, v20);
    v26 = &v25[a3];
    *v26 = vzip2q_s8(v20, v23);
    v27 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v28 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v29 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v30 = vqsubq_u8(veorq_s8(vzip1q_s16(v27, vdupq_laneq_s64(v27, 1)), v10), v12);
    v31 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v11)), vandq_s8(*(v8 + v9), v11))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v11)), vandq_s8(*(v8 + v9 + v9 + v9), v11)));
    v32 = veorq_s8(vzip1q_s16(v28, vdupq_laneq_s64(v28, 1)), v10);
    v33 = vzip1q_s8(v31, v32);
    v34 = vzip2q_s8(v31, v32);
    v35 = veorq_s8(vzip1q_s16(v29, vdupq_laneq_s64(v29, 1)), v10);
    v36 = vzip1q_s8(v30, v35);
    v37 = vzip2q_s8(v30, v35);
    vst2_s8(v7, v33);
    v38 = &v7[a3];
    *v38 = vzip2q_s8(v33, v36);
    v39 = &v38->i8[a3];
    vst2_s8(v39, v34);
    v40 = &v39[a3];
    result = vzip2q_s8(v34, v37);
    *v40 = result;
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v71 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v72 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v73 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v74 = vzip1q_s16(v73, vdupq_laneq_s64(v73, 1));
      v75.i64[0] = 0x8080808080808080;
      v75.i64[1] = 0x8080808080808080;
      v73.i64[0] = 0x1010101010101010;
      v73.i64[1] = 0x1010101010101010;
      result = vqsubq_u8(veorq_s8(vzip1q_s16(v71, vdupq_laneq_s64(v71, 1)), v75), v73);
      v76.i64[0] = 0xFF000000FFLL;
      v76.i64[1] = 0xFF000000FFLL;
      v77 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v76)), vandq_s8(*(a5 + v9), v76))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v76)), vandq_s8(*(a5 + v9 + v9 + v9), v76)));
      v78 = veorq_s8(vzip1q_s16(v72, vdupq_laneq_s64(v72, 1)), v75);
      v79 = vzip1q_s8(v77, v78);
      v80 = veorq_s8(v74, v75);
      v81 = vzip1q_s8(result, v80);
      vst2_s8(a1, v79);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(v79, v81);
          *&a1[a3] = result;
        }
      }

      else
      {
        v65 = vzip2q_s8(v77, v78);
        v67 = vzip2q_s8(result, v80);
        result = vzip2q_s8(v79, v81);
        *&a1[a3] = result;
        v7 = &a1[a3 + a3];
        vst2_s8(v7, v65);
        if (a4 == 4)
        {
LABEL_11:
          result = vzip2q_s8(v65, v67);
          *&v7[a3] = result;
        }
      }
    }
  }

  else
  {
    v41 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v42 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v43 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v44 = vzip1q_s16(v41, vdupq_laneq_s64(v41, 1));
    v45 = vzip1q_s16(v42, vdupq_laneq_s64(v42, 1));
    v46 = vzip1q_s16(v43, vdupq_laneq_s64(v43, 1));
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v43.i64[0] = 0x1010101010101010;
    v43.i64[1] = 0x1010101010101010;
    v47 = vqsubq_u8(veorq_s8(v44, result), v43);
    v42.i64[0] = 0xFF000000FFLL;
    v42.i64[1] = 0xFF000000FFLL;
    v48 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v42)), vandq_s8(*(a5 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v42)), vandq_s8(*(a5 + v9 + v9 + v9), v42)));
    v49 = veorq_s8(v45, result);
    v50 = vzip1q_s8(v48, v49);
    v51 = vzip2q_s8(v48, v49);
    v52 = veorq_s8(v46, result);
    v53 = vzip1q_s8(v47, v52);
    v54 = vzip2q_s8(v47, v52);
    vst2_s8(a1, v50);
    v55 = &a1[a3];
    *v55 = vzip2q_s8(v50, v53);
    v56 = &v55->i8[a3];
    vst2_s8(v56, v51);
    v57 = &v56[a3];
    *v57 = vzip2q_s8(v51, v54);
    v58 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v59 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v60 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v61 = vzip1q_s16(v60, vdupq_laneq_s64(v60, 1));
    v62 = vqsubq_u8(veorq_s8(vzip1q_s16(v58, vdupq_laneq_s64(v58, 1)), result), v43);
    v63 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v42)), vandq_s8(*(v8 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v42)), vandq_s8(*(v8 + v9 + v9 + v9), v42)));
    v64 = veorq_s8(vzip1q_s16(v59, vdupq_laneq_s64(v59, 1)), result);
    v65 = vzip1q_s8(v63, v64);
    v66 = veorq_s8(v61, result);
    v67 = vzip1q_s8(v62, v66);
    vst2_s8(v7, v65);
    if (a4 >= 7)
    {
      result = vzip2q_s8(v63, v64);
      v68 = vzip2q_s8(v62, v66).u64[0];
      v69 = &v7[a3];
      *v69 = vzip2q_s8(v65, v67);
      v70 = &v69->i8[a3];
      vst2_s8(v70, result);
      return result;
    }

    if (a4 == 6)
    {
      goto LABEL_11;
    }
  }

  return result;
}

int8x16_t from_444_to_r408<2,4,(AlphaOutputMethod)1,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int8x16_t result)
{
  v7 = &a1[4 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v12 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v13 = vzip1q_s16(v10, vdupq_laneq_s64(v10, 1));
    v14 = vzip1q_s16(v11, vdupq_laneq_s64(v11, 1));
    v15 = vzip1q_s16(v12, vdupq_laneq_s64(v12, 1));
    v10.i64[0] = 0x8080808080808080;
    v10.i64[1] = 0x8080808080808080;
    v12.i64[0] = 0x1010101010101010;
    v12.i64[1] = 0x1010101010101010;
    v16 = vqsubq_u8(veorq_s8(v13, v10), v12);
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    v17 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v11)), vandq_s8(*(a5 + v9), v11))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v11)), vandq_s8(*(a5 + v9 + v9 + v9), v11)));
    v18 = veorq_s8(v14, v10);
    v19 = vzip1q_s8(v17, v18);
    v20 = vzip2q_s8(v17, v18);
    v21 = veorq_s8(v15, v10);
    v22 = vzip1q_s8(v16, v21);
    v23 = vzip2q_s8(v16, v21);
    vst2_s8(a1, v19);
    v24 = &a1[a3];
    *v24 = vzip2q_s8(v19, v22);
    v25 = &v24->i8[a3];
    vst2_s8(v25, v20);
    v26 = &v25[a3];
    *v26 = vzip2q_s8(v20, v23);
    v27 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v28 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v29 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v30 = vqsubq_u8(veorq_s8(vzip1q_s16(v27, vdupq_laneq_s64(v27, 1)), v10), v12);
    v31 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v11)), vandq_s8(*(v8 + v9), v11))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v11)), vandq_s8(*(v8 + v9 + v9 + v9), v11)));
    v32 = veorq_s8(vzip1q_s16(v28, vdupq_laneq_s64(v28, 1)), v10);
    v33 = vzip1q_s8(v31, v32);
    v34 = vzip2q_s8(v31, v32);
    v35 = veorq_s8(vzip1q_s16(v29, vdupq_laneq_s64(v29, 1)), v10);
    v36 = vzip1q_s8(v30, v35);
    v37 = vzip2q_s8(v30, v35);
    vst2_s8(v7, v33);
    v38 = &v7[a3];
    *v38 = vzip2q_s8(v33, v36);
    v39 = &v38->i8[a3];
    vst2_s8(v39, v34);
    v40 = &v39[a3];
    result = vzip2q_s8(v34, v37);
    *v40 = result;
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v71 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v72 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v73 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v74 = vzip1q_s16(v73, vdupq_laneq_s64(v73, 1));
      v75.i64[0] = 0x8080808080808080;
      v75.i64[1] = 0x8080808080808080;
      v73.i64[0] = 0x1010101010101010;
      v73.i64[1] = 0x1010101010101010;
      result = vqsubq_u8(veorq_s8(vzip1q_s16(v71, vdupq_laneq_s64(v71, 1)), v75), v73);
      v76.i64[0] = 0xFF000000FFLL;
      v76.i64[1] = 0xFF000000FFLL;
      v77 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v76)), vandq_s8(*(a5 + v9), v76))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v76)), vandq_s8(*(a5 + v9 + v9 + v9), v76)));
      v78 = veorq_s8(vzip1q_s16(v72, vdupq_laneq_s64(v72, 1)), v75);
      v79 = vzip1q_s8(v77, v78);
      v80 = veorq_s8(v74, v75);
      v81 = vzip1q_s8(result, v80);
      vst2_s8(a1, v79);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(v79, v81);
          *&a1[a3] = result;
        }
      }

      else
      {
        v65 = vzip2q_s8(v77, v78);
        v67 = vzip2q_s8(result, v80);
        result = vzip2q_s8(v79, v81);
        *&a1[a3] = result;
        v7 = &a1[a3 + a3];
        vst2_s8(v7, v65);
        if (a4 == 4)
        {
LABEL_11:
          result = vzip2q_s8(v65, v67);
          *&v7[a3] = result;
        }
      }
    }
  }

  else
  {
    v41 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v42 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v43 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v44 = vzip1q_s16(v41, vdupq_laneq_s64(v41, 1));
    v45 = vzip1q_s16(v42, vdupq_laneq_s64(v42, 1));
    v46 = vzip1q_s16(v43, vdupq_laneq_s64(v43, 1));
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v43.i64[0] = 0x1010101010101010;
    v43.i64[1] = 0x1010101010101010;
    v47 = vqsubq_u8(veorq_s8(v44, result), v43);
    v42.i64[0] = 0xFF000000FFLL;
    v42.i64[1] = 0xFF000000FFLL;
    v48 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v42)), vandq_s8(*(a5 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v42)), vandq_s8(*(a5 + v9 + v9 + v9), v42)));
    v49 = veorq_s8(v45, result);
    v50 = vzip1q_s8(v48, v49);
    v51 = vzip2q_s8(v48, v49);
    v52 = veorq_s8(v46, result);
    v53 = vzip1q_s8(v47, v52);
    v54 = vzip2q_s8(v47, v52);
    vst2_s8(a1, v50);
    v55 = &a1[a3];
    *v55 = vzip2q_s8(v50, v53);
    v56 = &v55->i8[a3];
    vst2_s8(v56, v51);
    v57 = &v56[a3];
    *v57 = vzip2q_s8(v51, v54);
    v58 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v59 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v60 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v61 = vzip1q_s16(v60, vdupq_laneq_s64(v60, 1));
    v62 = vqsubq_u8(veorq_s8(vzip1q_s16(v58, vdupq_laneq_s64(v58, 1)), result), v43);
    v63 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v42)), vandq_s8(*(v8 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v42)), vandq_s8(*(v8 + v9 + v9 + v9), v42)));
    v64 = veorq_s8(vzip1q_s16(v59, vdupq_laneq_s64(v59, 1)), result);
    v65 = vzip1q_s8(v63, v64);
    v66 = veorq_s8(v61, result);
    v67 = vzip1q_s8(v62, v66);
    vst2_s8(v7, v65);
    if (a4 >= 7)
    {
      result = vzip2q_s8(v63, v64);
      v68 = vzip2q_s8(v62, v66).u64[0];
      v69 = &v7[a3];
      *v69 = vzip2q_s8(v65, v67);
      v70 = &v69->i8[a3];
      vst2_s8(v70, result);
      return result;
    }

    if (a4 == 6)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void from_444_to_r408<2,2,(AlphaOutputMethod)1,false>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v7), v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v10)), vandq_s8(*(a5 + v6), v10))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v10)), vandq_s8(*(a5 + v6 + v6 + v6), v10)));
  v12 = vzip1q_s8(v11, v9);
  v13 = vzip2q_s8(v11, v9);
  v14 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v15 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v16 = vzip1q_s16(v14, v15);
  v17 = vzip2q_s16(v14, v15);
  v18 = veorq_s8(vzip1q_s8(v16, vdupq_laneq_s64(v16, 1)), v7);
  v19 = veorq_s8(vzip1q_s8(v17, vdupq_laneq_s64(v17, 1)), v7);
  if (a4 == 4)
  {
    v20 = a3;
    vst2_s16(a1, v12);
    v21 = (a1 + v20);
    *v21 = vzip2q_s16(v12, v18);
    v22 = (v21->i16 + a3);
    vst2_s16(v22, v13);
    v23 = (v22 + v20);
    *v23 = vzip2q_s16(v13, v19);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v12);
    }
  }

  else
  {
    v24 = a3;
    vst2_s16(a1, v12);
    v25 = (a1 + v24);
    *v25 = vzip2q_s16(v12, v18);
    if (a4 == 3)
    {
      v26 = (v25->i16 + a3);
      vst2_s16(v26, v13);
    }
  }
}

void from_444_to_r408<2,2,(AlphaOutputMethod)1,true>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v7), v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v10)), vandq_s8(*(a5 + v6), v10))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v10)), vandq_s8(*(a5 + v6 + v6 + v6), v10)));
  v12 = vzip1q_s8(v11, v9);
  v13 = vzip2q_s8(v11, v9);
  v14 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v15 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v16 = vzip1q_s16(v14, v15);
  v17 = vzip2q_s16(v14, v15);
  v18 = veorq_s8(vzip1q_s8(v16, vdupq_laneq_s64(v16, 1)), v7);
  v19 = veorq_s8(vzip1q_s8(v17, vdupq_laneq_s64(v17, 1)), v7);
  if (a4 == 4)
  {
    v20 = a3;
    vst2_s16(a1, v12);
    v21 = (a1 + v20);
    *v21 = vzip2q_s16(v12, v18);
    v22 = (v21->i16 + a3);
    vst2_s16(v22, v13);
    v23 = (v22 + v20);
    *v23 = vzip2q_s16(v13, v19);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v12);
    }
  }

  else
  {
    v24 = a3;
    vst2_s16(a1, v12);
    v25 = (a1 + v24);
    *v25 = vzip2q_s16(v12, v18);
    if (a4 == 3)
    {
      v26 = (v25->i16 + a3);
      vst2_s16(v26, v13);
    }
  }
}

int8x16_t *from_444_to_r408<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v29 = a2 + 8;
    v30 = a2 + 32;
    v31 = a2 + 40;
    v32 = a2 + 64;
    v33 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v8);
    v14 = vzip1q_s8(v10, v13);
    v15 = vzip2q_s8(v10, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v8);
    v17 = vzip1q_s8(v12, v16);
    v18 = vzip2q_s8(v12, v16);
    *result = vzip1q_s8(v14, v17);
    result[1] = vzip2q_s8(v14, v17);
    result[2] = vzip1q_s8(v15, v18);
    result[3] = vzip2q_s8(v15, v18);
    v19 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v8);
    v21 = vzip1q_s8(v10, v20);
    v22 = vzip2q_s8(v10, v20);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v8);
    v24 = vzip1q_s8(v19, v23);
    v25 = vzip2q_s8(v19, v23);
    v26 = &result->i8[v6];
    vst2_s8(v26, v21);
    v26 += 16;
    v27 = &result[2].i8[v6];
    vst2_s8(v27, v22);
    v28 = a2 + 1;
    result = (result + a3);
    --v5;
    *v26 = vzip2q_s8(v21, v24);
    v11[3] = vzip2q_s8(v22, v25);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v29 = v28 + 8;
  v30 = v28 + 32;
  v31 = v28 + 40;
  v32 = v28 + 64;
  v33 = v28 + 72;
  a2 = v28;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = *v29++;
      v43 = v42;
      v44 = v34[-2].i8;
      v45 = *v30++;
      v46 = v45;
      v47 = *v32++;
      v48 = v47;
      v49 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      *v43.i8 = vqmovn_s16(v46);
      v50 = *v31++;
      v51 = v50;
      v52 = *v33++;
      v53 = vqsubq_u8(veorq_s8(v49, v36), v37);
      v54 = veorq_s8(vqmovn_high_s16(*v43.i8, v48), v36);
      v55 = vzip1q_s8(v38, v54);
      v56 = vzip2q_s8(v38, v54);
      v57 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51), v52), v36);
      v58 = vzip1q_s8(v53, v57);
      vst2_s8(v44, v55);
      v59 = vzip2q_s8(v53, v57);
      v34[-1] = vzip2q_s8(v55, v58);
      vst2_s8(i8, v56);
      i8 += a3;
      v34[1] = vzip2q_s8(v56, v59);
      --v35;
      v34 = i8;
    }

    while (v35 > 1);
  }

  return result;
}

int8x16_t *from_444_to_r408<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v29 = a2 + 8;
    v30 = a2 + 32;
    v31 = a2 + 40;
    v32 = a2 + 64;
    v33 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v8);
    v14 = vzip1q_s8(v10, v13);
    v15 = vzip2q_s8(v10, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v8);
    v17 = vzip1q_s8(v12, v16);
    v18 = vzip2q_s8(v12, v16);
    *result = vzip1q_s8(v14, v17);
    result[1] = vzip2q_s8(v14, v17);
    result[2] = vzip1q_s8(v15, v18);
    result[3] = vzip2q_s8(v15, v18);
    v19 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v8);
    v21 = vzip1q_s8(v10, v20);
    v22 = vzip2q_s8(v10, v20);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v8);
    v24 = vzip1q_s8(v19, v23);
    v25 = vzip2q_s8(v19, v23);
    v26 = &result->i8[v6];
    vst2_s8(v26, v21);
    v26 += 16;
    v27 = &result[2].i8[v6];
    vst2_s8(v27, v22);
    v28 = a2 + 1;
    result = (result + a3);
    --v5;
    *v26 = vzip2q_s8(v21, v24);
    v11[3] = vzip2q_s8(v22, v25);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v29 = v28 + 8;
  v30 = v28 + 32;
  v31 = v28 + 40;
  v32 = v28 + 64;
  v33 = v28 + 72;
  a2 = v28;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = *v29++;
      v43 = v42;
      v44 = v34[-2].i8;
      v45 = *v30++;
      v46 = v45;
      v47 = *v32++;
      v48 = v47;
      v49 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      *v43.i8 = vqmovn_s16(v46);
      v50 = *v31++;
      v51 = v50;
      v52 = *v33++;
      v53 = vqsubq_u8(veorq_s8(v49, v36), v37);
      v54 = veorq_s8(vqmovn_high_s16(*v43.i8, v48), v36);
      v55 = vzip1q_s8(v38, v54);
      v56 = vzip2q_s8(v38, v54);
      v57 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51), v52), v36);
      v58 = vzip1q_s8(v53, v57);
      vst2_s8(v44, v55);
      v59 = vzip2q_s8(v53, v57);
      v34[-1] = vzip2q_s8(v55, v58);
      vst2_s8(i8, v56);
      i8 += a3;
      v34[1] = vzip2q_s8(v56, v59);
      --v35;
      v34 = i8;
    }

    while (v35 > 1);
  }

  return result;
}

int8x16_t *from_444_to_r408<8,4,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v29 = a2 + 4;
    v30 = a2 + 16;
    v31 = a2 + 20;
    v32 = a2 + 32;
    v33 = a2 + 36;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v8);
    v14 = vzip1q_s8(v10, v13);
    v15 = vzip2q_s8(v10, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v8);
    v17 = vzip1q_s8(v12, v16);
    v18 = vzip2q_s8(v12, v16);
    *result = vzip1q_s8(v14, v17);
    result[1] = vzip2q_s8(v14, v17);
    result[2] = vzip1q_s8(v15, v18);
    result[3] = vzip2q_s8(v15, v18);
    v19 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8), v9);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v8);
    v21 = vzip1q_s8(v10, v20);
    v22 = vzip2q_s8(v10, v20);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v8);
    v24 = vzip1q_s8(v19, v23);
    v25 = vzip2q_s8(v19, v23);
    v26 = &result->i8[v6];
    vst2_s8(v26, v21);
    v26 += 16;
    v27 = &result[2].i8[v6];
    vst2_s8(v27, v22);
    v28 = a2 + 1;
    result = (result + a3);
    --v5;
    *v26 = vzip2q_s8(v21, v24);
    v11[3] = vzip2q_s8(v22, v25);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v29 = v28 + 4;
  v30 = v28 + 16;
  v31 = v28 + 20;
  v32 = v28 + 32;
  v33 = v28 + 36;
  a2 = v28;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = *v29++;
      v43 = v42;
      v44 = v34[-2].i8;
      v45 = *v30++;
      v46 = v45;
      v47 = *v32++;
      v48 = v47;
      v49 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      *v43.i8 = vqmovn_s16(v46);
      v50 = *v31++;
      v51 = v50;
      v52 = *v33++;
      v53 = vqsubq_u8(veorq_s8(v49, v36), v37);
      v54 = veorq_s8(vqmovn_high_s16(*v43.i8, v48), v36);
      v55 = vzip1q_s8(v38, v54);
      v56 = vzip2q_s8(v38, v54);
      v57 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51), v52), v36);
      v58 = vzip1q_s8(v53, v57);
      vst2_s8(v44, v55);
      v59 = vzip2q_s8(v53, v57);
      v34[-1] = vzip2q_s8(v55, v58);
      vst2_s8(i8, v56);
      i8 += a3;
      v34[1] = vzip2q_s8(v56, v59);
      --v35;
      v34 = i8;
    }

    while (v35 > 1);
  }

  return result;
}

int8x16_t *from_444_to_r408<8,4,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v29 = a2 + 4;
    v30 = a2 + 16;
    v31 = a2 + 20;
    v32 = a2 + 32;
    v33 = a2 + 36;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[32]), v8);
    v14 = vzip1q_s8(v10, v13);
    v15 = vzip2q_s8(v10, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[20]), a2[36]), v8);
    v17 = vzip1q_s8(v12, v16);
    v18 = vzip2q_s8(v12, v16);
    *result = vzip1q_s8(v14, v17);
    result[1] = vzip2q_s8(v14, v17);
    result[2] = vzip1q_s8(v15, v18);
    result[3] = vzip2q_s8(v15, v18);
    v19 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8), v9);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[40]), v8);
    v21 = vzip1q_s8(v10, v20);
    v22 = vzip2q_s8(v10, v20);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[28]), a2[44]), v8);
    v24 = vzip1q_s8(v19, v23);
    v25 = vzip2q_s8(v19, v23);
    v26 = &result->i8[v6];
    vst2_s8(v26, v21);
    v26 += 16;
    v27 = &result[2].i8[v6];
    vst2_s8(v27, v22);
    v28 = a2 + 1;
    result = (result + a3);
    --v5;
    *v26 = vzip2q_s8(v21, v24);
    v11[3] = vzip2q_s8(v22, v25);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v29 = v28 + 4;
  v30 = v28 + 16;
  v31 = v28 + 20;
  v32 = v28 + 32;
  v33 = v28 + 36;
  a2 = v28;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i8 = result[2].i8;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = *v29++;
      v43 = v42;
      v44 = v34[-2].i8;
      v45 = *v30++;
      v46 = v45;
      v47 = *v32++;
      v48 = v47;
      v49 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      *v43.i8 = vqmovn_s16(v46);
      v50 = *v31++;
      v51 = v50;
      v52 = *v33++;
      v53 = vqsubq_u8(veorq_s8(v49, v36), v37);
      v54 = veorq_s8(vqmovn_high_s16(*v43.i8, v48), v36);
      v55 = vzip1q_s8(v38, v54);
      v56 = vzip2q_s8(v38, v54);
      v57 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v51), v52), v36);
      v58 = vzip1q_s8(v53, v57);
      vst2_s8(v44, v55);
      v59 = vzip2q_s8(v53, v57);
      v34[-1] = vzip2q_s8(v55, v58);
      vst2_s8(i8, v56);
      i8 += a3;
      v34[1] = vzip2q_s8(v56, v59);
      --v35;
      v34 = i8;
    }

    while (v35 > 1);
  }

  return result;
}

int8x16_t from_444_to_r408<2,4,(AlphaOutputMethod)2,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = &a1[4 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v8 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v9.i64[0] = 0x8080808080808080;
    v9.i64[1] = 0x8080808080808080;
    v10.i64[0] = 0x1010101010101010;
    v10.i64[1] = 0x1010101010101010;
    v11 = vqsubq_u8(veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v9), v10);
    v12 = veorq_s8(vzip1q_s16(v7, vdupq_laneq_s64(v7, 1)), v9);
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vzip1q_s8(v13, v12);
    v15 = vzip2q_s8(v13, v12);
    v16 = veorq_s8(vzip1q_s16(v8, vdupq_laneq_s64(v8, 1)), v9);
    v17 = vzip1q_s8(v11, v16);
    v18 = vzip2q_s8(v11, v16);
    vst2_s8(a1, v14);
    v19 = &a1[a3];
    *v19 = vzip2q_s8(v14, v17);
    v20 = &v19->i8[a3];
    vst2_s8(v20, v15);
    v21 = &v20[a3];
    *v21 = vzip2q_s8(v15, v18);
    v22 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v25 = vqsubq_u8(veorq_s8(vzip1q_s16(v22, vdupq_laneq_s64(v22, 1)), v9), v10);
    v26 = veorq_s8(vzip1q_s16(v23, vdupq_laneq_s64(v23, 1)), v9);
    v27 = vzip1q_s8(v13, v26);
    v28 = vzip2q_s8(v13, v26);
    v29 = veorq_s8(vzip1q_s16(v24, vdupq_laneq_s64(v24, 1)), v9);
    v30 = vzip1q_s8(v25, v29);
    v31 = vzip2q_s8(v25, v29);
    vst2_s8(v5, v27);
    v32 = &v5[a3];
    *v32 = vzip2q_s8(v27, v30);
    v33 = &v32->i8[a3];
    vst2_s8(v33, v28);
    v34 = &v33[a3];
    result = vzip2q_s8(v28, v31);
    *v34 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v61 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v62 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v63 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v64 = vzip1q_s16(v63, vdupq_laneq_s64(v63, 1));
      v65.i64[0] = 0x8080808080808080;
      v65.i64[1] = 0x8080808080808080;
      v63.i64[0] = 0x1010101010101010;
      v63.i64[1] = 0x1010101010101010;
      v66 = vqsubq_u8(veorq_s8(vzip1q_s16(v61, vdupq_laneq_s64(v61, 1)), v65), v63);
      v67 = veorq_s8(vzip1q_s16(v62, vdupq_laneq_s64(v62, 1)), v65);
      v68.i64[0] = -1;
      v68.i64[1] = -1;
      result = vzip1q_s8(v68, v67);
      v69 = veorq_s8(v64, v65);
      v70 = vzip1q_s8(v66, v69);
      vst2_s8(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(result, v70);
          *&a1[a3] = result;
        }
      }

      else
      {
        v71 = vzip2q_s8(v68, v67);
        v72 = vzip2q_s8(v66, v69);
        result = vzip2q_s8(result, v70);
        *&a1[a3] = result;
        v73 = &a1[a3 + a3];
        vst2_s8(v73, v71);
        if (a4 == 4)
        {
          result = vzip2q_s8(v71, v72);
          *&v73[a3] = result;
        }
      }
    }
  }

  else
  {
    v35 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v36 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v37 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x1010101010101010;
    v39.i64[1] = 0x1010101010101010;
    v40 = vqsubq_u8(veorq_s8(vzip1q_s16(v35, vdupq_laneq_s64(v35, 1)), v38), v39);
    v41 = veorq_s8(vzip1q_s16(v36, vdupq_laneq_s64(v36, 1)), v38);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v42 = vzip1q_s8(result, v41);
    v43 = vzip2q_s8(result, v41);
    v44 = veorq_s8(vzip1q_s16(v37, vdupq_laneq_s64(v37, 1)), v38);
    v45 = vzip1q_s8(v40, v44);
    v46 = vzip2q_s8(v40, v44);
    vst2_s8(a1, v42);
    v47 = &a1[a3];
    *v47 = vzip2q_s8(v42, v45);
    v48 = &v47->i8[a3];
    vst2_s8(v48, v43);
    v49 = &v48[a3];
    *v49 = vzip2q_s8(v43, v46);
    v50 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v51 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v52 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v53 = vzip1q_s16(v52, vdupq_laneq_s64(v52, 1));
    v54 = vqsubq_u8(veorq_s8(vzip1q_s16(v50, vdupq_laneq_s64(v50, 1)), v38), v39);
    v55 = veorq_s8(vzip1q_s16(v51, vdupq_laneq_s64(v51, 1)), v38);
    v56 = vzip1q_s8(result, v55);
    v57 = veorq_s8(v53, v38);
    v58 = vzip1q_s8(v54, v57);
    vst2_s8(v5, v56);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s8(v56, v58);
        *&v5[a3] = result;
      }
    }

    else
    {
      v74.val[0] = vzip2q_s8(result, v55).u64[0];
      v74.val[1] = vzip2q_s8(v54, v57).u64[0];
      v59 = &v5[a3];
      result = vzip2q_s8(v56, v58);
      *v59 = result;
      v60 = &v59->i8[a3];
      vst2_s8(v60, v74);
    }
  }

  return result;
}

int8x16_t from_444_to_r408<2,4,(AlphaOutputMethod)2,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = &a1[4 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v8 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v9.i64[0] = 0x8080808080808080;
    v9.i64[1] = 0x8080808080808080;
    v10.i64[0] = 0x1010101010101010;
    v10.i64[1] = 0x1010101010101010;
    v11 = vqsubq_u8(veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v9), v10);
    v12 = veorq_s8(vzip1q_s16(v7, vdupq_laneq_s64(v7, 1)), v9);
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vzip1q_s8(v13, v12);
    v15 = vzip2q_s8(v13, v12);
    v16 = veorq_s8(vzip1q_s16(v8, vdupq_laneq_s64(v8, 1)), v9);
    v17 = vzip1q_s8(v11, v16);
    v18 = vzip2q_s8(v11, v16);
    vst2_s8(a1, v14);
    v19 = &a1[a3];
    *v19 = vzip2q_s8(v14, v17);
    v20 = &v19->i8[a3];
    vst2_s8(v20, v15);
    v21 = &v20[a3];
    *v21 = vzip2q_s8(v15, v18);
    v22 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v25 = vqsubq_u8(veorq_s8(vzip1q_s16(v22, vdupq_laneq_s64(v22, 1)), v9), v10);
    v26 = veorq_s8(vzip1q_s16(v23, vdupq_laneq_s64(v23, 1)), v9);
    v27 = vzip1q_s8(v13, v26);
    v28 = vzip2q_s8(v13, v26);
    v29 = veorq_s8(vzip1q_s16(v24, vdupq_laneq_s64(v24, 1)), v9);
    v30 = vzip1q_s8(v25, v29);
    v31 = vzip2q_s8(v25, v29);
    vst2_s8(v5, v27);
    v32 = &v5[a3];
    *v32 = vzip2q_s8(v27, v30);
    v33 = &v32->i8[a3];
    vst2_s8(v33, v28);
    v34 = &v33[a3];
    result = vzip2q_s8(v28, v31);
    *v34 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v61 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v62 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
      v63 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
      v64 = vzip1q_s16(v63, vdupq_laneq_s64(v63, 1));
      v65.i64[0] = 0x8080808080808080;
      v65.i64[1] = 0x8080808080808080;
      v63.i64[0] = 0x1010101010101010;
      v63.i64[1] = 0x1010101010101010;
      v66 = vqsubq_u8(veorq_s8(vzip1q_s16(v61, vdupq_laneq_s64(v61, 1)), v65), v63);
      v67 = veorq_s8(vzip1q_s16(v62, vdupq_laneq_s64(v62, 1)), v65);
      v68.i64[0] = -1;
      v68.i64[1] = -1;
      result = vzip1q_s8(v68, v67);
      v69 = veorq_s8(v64, v65);
      v70 = vzip1q_s8(v66, v69);
      vst2_s8(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s8(result, v70);
          *&a1[a3] = result;
        }
      }

      else
      {
        v71 = vzip2q_s8(v68, v67);
        v72 = vzip2q_s8(v66, v69);
        result = vzip2q_s8(result, v70);
        *&a1[a3] = result;
        v73 = &a1[a3 + a3];
        vst2_s8(v73, v71);
        if (a4 == 4)
        {
          result = vzip2q_s8(v71, v72);
          *&v73[a3] = result;
        }
      }
    }
  }

  else
  {
    v35 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v36 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[8]);
    v37 = vqmovn_high_s16(vqmovn_s16(a2[5]), a2[9]);
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x1010101010101010;
    v39.i64[1] = 0x1010101010101010;
    v40 = vqsubq_u8(veorq_s8(vzip1q_s16(v35, vdupq_laneq_s64(v35, 1)), v38), v39);
    v41 = veorq_s8(vzip1q_s16(v36, vdupq_laneq_s64(v36, 1)), v38);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v42 = vzip1q_s8(result, v41);
    v43 = vzip2q_s8(result, v41);
    v44 = veorq_s8(vzip1q_s16(v37, vdupq_laneq_s64(v37, 1)), v38);
    v45 = vzip1q_s8(v40, v44);
    v46 = vzip2q_s8(v40, v44);
    vst2_s8(a1, v42);
    v47 = &a1[a3];
    *v47 = vzip2q_s8(v42, v45);
    v48 = &v47->i8[a3];
    vst2_s8(v48, v43);
    v49 = &v48[a3];
    *v49 = vzip2q_s8(v43, v46);
    v50 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v51 = vqmovn_high_s16(vqmovn_s16(a2[6]), a2[10]);
    v52 = vqmovn_high_s16(vqmovn_s16(a2[7]), a2[11]);
    v53 = vzip1q_s16(v52, vdupq_laneq_s64(v52, 1));
    v54 = vqsubq_u8(veorq_s8(vzip1q_s16(v50, vdupq_laneq_s64(v50, 1)), v38), v39);
    v55 = veorq_s8(vzip1q_s16(v51, vdupq_laneq_s64(v51, 1)), v38);
    v56 = vzip1q_s8(result, v55);
    v57 = veorq_s8(v53, v38);
    v58 = vzip1q_s8(v54, v57);
    vst2_s8(v5, v56);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s8(v56, v58);
        *&v5[a3] = result;
      }
    }

    else
    {
      v74.val[0] = vzip2q_s8(result, v55).u64[0];
      v74.val[1] = vzip2q_s8(v54, v57).u64[0];
      v59 = &v5[a3];
      result = vzip2q_s8(v56, v58);
      *v59 = result;
      v60 = &v59->i8[a3];
      vst2_s8(v60, v74);
    }
  }

  return result;
}

void from_444_to_r408<2,2,(AlphaOutputMethod)2,false>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  v6 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4), v5);
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  v7 = vzip1q_s8(v5, v6);
  v8 = vzip2q_s8(v5, v6);
  v9 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v10 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v11 = vzip1q_s16(v9, v10);
  v12 = vzip2q_s16(v9, v10);
  v13 = veorq_s8(vzip1q_s8(v11, vdupq_laneq_s64(v11, 1)), v4);
  v14 = veorq_s8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v4);
  if (a4 == 4)
  {
    v15 = a3;
    vst2_s16(a1, v7);
    v16 = (a1 + v15);
    *v16 = vzip2q_s16(v7, v13);
    v17 = (v16->i16 + a3);
    vst2_s16(v17, v8);
    v18 = (v17 + v15);
    *v18 = vzip2q_s16(v8, v14);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v7);
    }
  }

  else
  {
    v19 = a3;
    vst2_s16(a1, v7);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v7, v13);
    if (a4 == 3)
    {
      v21 = (v20->i16 + a3);
      vst2_s16(v21, v8);
    }
  }
}

void from_444_to_r408<2,2,(AlphaOutputMethod)2,true>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  v6 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4), v5);
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  v7 = vzip1q_s8(v5, v6);
  v8 = vzip2q_s8(v5, v6);
  v9 = vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48));
  v10 = vqmovn_high_s16(vqmovn_s16(*(a2 + 64)), *(a2 + 80));
  v11 = vzip1q_s16(v9, v10);
  v12 = vzip2q_s16(v9, v10);
  v13 = veorq_s8(vzip1q_s8(v11, vdupq_laneq_s64(v11, 1)), v4);
  v14 = veorq_s8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v4);
  if (a4 == 4)
  {
    v15 = a3;
    vst2_s16(a1, v7);
    v16 = (a1 + v15);
    *v16 = vzip2q_s16(v7, v13);
    v17 = (v16->i16 + a3);
    vst2_s16(v17, v8);
    v18 = (v17 + v15);
    *v18 = vzip2q_s16(v8, v14);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v7);
    }
  }

  else
  {
    v19 = a3;
    vst2_s16(a1, v7);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v7, v13);
    if (a4 == 3)
    {
      v21 = (v20->i16 + a3);
      vst2_s16(v21, v8);
    }
  }
}

void from_444_to_v408<8,8,(AlphaOutputMethod)1,false>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v31 = a2 + 8;
    v32 = a2 + 32;
    v33 = a2 + 40;
    v34 = a2 + 64;
    v35 = a2 + 72;
    if (v7 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x101010101010101;
  v10.i64[1] = 0x101010101010101;
  v11.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v12 = a2 + 1;
    v13 = (a1 + 8 * a3);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10), v11);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v9), v10), v11);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v9), v10), v11);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    v19 = vzip1q_s8(v14, *a5);
    v20 = vzip2q_s8(v14, *a5);
    *a1 = vzip1q_s8(v17, v19);
    a1[1] = vzip2q_s8(v17, v19);
    a1[2] = vzip1q_s8(v18, v20);
    a1[3] = vzip2q_s8(v18, v20);
    a1 = (a1 + a3);
    --v7;
    v21 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10), v11);
    v23 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v9), v10), v11);
    v24 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v9), v10), v11);
    v25 = vzip1q_s8(v23, v24);
    v26 = vzip1q_s8(v22, v21);
    v27 = v13;
    vst2_s8(v27, v25);
    v27 += 16;
    v28 = vzip2q_s8(v23, v24);
    v29 = vzip2q_s8(v22, v21);
    i8 = v13[2].i8;
    vst2_s8(i8, v28);
    *v27 = vzip2q_s8(v25, v26);
    v13[3] = vzip2q_s8(v28, v29);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v31 = v12 + 8;
  v32 = v12 + 32;
  v33 = v12 + 40;
  v34 = v12 + 64;
  v35 = v12 + 72;
  a2 = v12;
  if (v7 >= 1)
  {
LABEL_10:
    v36 = a1 + 2;
    v37 = v7 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v40.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v41 = a1[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = *v31++;
      v45 = v44;
      v46 = v36[-2].i8;
      v47 = *v32++;
      v48 = v47;
      v49 = *v34++;
      v50 = v49;
      v51 = vqmovn_high_s16(vqmovn_s16(v43), v45);
      *v45.i8 = vqmovn_s16(v48);
      v52 = *v33++;
      v53 = v52;
      v54 = *v35++;
      v55 = vminq_u8(vmaxq_u8(veorq_s8(v51, v38), v39), v40);
      v56 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(*v45.i8, v50), v38), v39), v40);
      v57 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v53), v54), v38), v39), v40);
      v58 = vzip1q_s8(v56, v57);
      v59 = vzip2q_s8(v56, v57);
      v60 = *a5;
      v61 = vzip1q_s8(v55, *a5);
      vst2_s8(v46, v58);
      v62 = vzip2q_s8(v55, v60);
      v36[-1] = vzip2q_s8(v58, v61);
      vst2_s8(v41, v59);
      v41 += a3;
      v36[1] = vzip2q_s8(v59, v62);
      a5 = (a5 + a6);
      --v37;
      v36 = v41;
    }

    while (v37 > 1);
  }
}

void from_444_to_v408<8,8,(AlphaOutputMethod)1,true>(int8x16_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v31 = a2 + 8;
    v32 = a2 + 32;
    v33 = a2 + 40;
    v34 = a2 + 64;
    v35 = a2 + 72;
    if (v7 < 1)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x101010101010101;
  v10.i64[1] = 0x101010101010101;
  v11.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v12 = a2 + 1;
    v13 = (a1 + 8 * a3);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10), v11);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v9), v10), v11);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v9), v10), v11);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    v19 = vzip1q_s8(v14, *a5);
    v20 = vzip2q_s8(v14, *a5);
    *a1 = vzip1q_s8(v17, v19);
    a1[1] = vzip2q_s8(v17, v19);
    a1[2] = vzip1q_s8(v18, v20);
    a1[3] = vzip2q_s8(v18, v20);
    a1 = (a1 + a3);
    --v7;
    v21 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10), v11);
    v23 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v9), v10), v11);
    v24 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v9), v10), v11);
    v25 = vzip1q_s8(v23, v24);
    v26 = vzip1q_s8(v22, v21);
    v27 = v13;
    vst2_s8(v27, v25);
    v27 += 16;
    v28 = vzip2q_s8(v23, v24);
    v29 = vzip2q_s8(v22, v21);
    i8 = v13[2].i8;
    vst2_s8(i8, v28);
    *v27 = vzip2q_s8(v25, v26);
    v13[3] = vzip2q_s8(v28, v29);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v31 = v12 + 8;
  v32 = v12 + 32;
  v33 = v12 + 40;
  v34 = v12 + 64;
  v35 = v12 + 72;
  a2 = v12;
  if (v7 >= 1)
  {
LABEL_10:
    v36 = a1 + 2;
    v37 = v7 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v40.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v41 = a1[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = *v31++;
      v45 = v44;
      v46 = v36[-2].i8;
      v47 = *v32++;
      v48 = v47;
      v49 = *v34++;
      v50 = v49;
      v51 = vqmovn_high_s16(vqmovn_s16(v43), v45);
      *v45.i8 = vqmovn_s16(v48);
      v52 = *v33++;
      v53 = v52;
      v54 = *v35++;
      v55 = vminq_u8(vmaxq_u8(veorq_s8(v51, v38), v39), v40);
      v56 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(*v45.i8, v50), v38), v39), v40);
      v57 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v53), v54), v38), v39), v40);
      v58 = vzip1q_s8(v56, v57);
      v59 = vzip2q_s8(v56, v57);
      v60 = *a5;
      v61 = vzip1q_s8(v55, *a5);
      vst2_s8(v46, v58);
      v62 = vzip2q_s8(v55, v60);
      v36[-1] = vzip2q_s8(v58, v61);
      vst2_s8(v41, v59);
      v41 += a3;
      v36[1] = vzip2q_s8(v59, v62);
      a5 = (a5 + a6);
      --v37;
      v36 = v41;
    }

    while (v37 > 1);
  }
}

int8x16_t *from_444_to_v408<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v33 = a2 + 64;
    v34 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x101010101010101;
  v9.i64[1] = 0x101010101010101;
  v10.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v10.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v11.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
  do
  {
    v12 = (result + v6);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9), v10);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v8), v9), v10);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v8), v9), v10);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    v18 = vzip1q_s8(v13, v11);
    v19 = vzip2q_s8(v13, v11);
    *result = vzip1q_s8(v16, v18);
    result[1] = vzip2q_s8(v16, v18);
    result[2] = vzip1q_s8(v17, v19);
    result[3] = vzip2q_s8(v17, v19);
    v20 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9), v10);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v8), v9), v10);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v8), v9), v10);
    v23 = vzip1q_s8(v21, v22);
    v24 = vzip2q_s8(v21, v22);
    v25 = vzip1q_s8(v20, v11);
    v26 = vzip2q_s8(v20, v11);
    v27 = &result->i8[v6];
    vst2_s8(v27, v23);
    v27 += 16;
    v28 = &result[2].i8[v6];
    vst2_s8(v28, v24);
    v29 = a2 + 1;
    result = (result + a3);
    --v5;
    *v27 = vzip2q_s8(v23, v25);
    v12[3] = vzip2q_s8(v24, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v30 = v29 + 8;
  v31 = v29 + 32;
  v32 = v29 + 40;
  v33 = v29 + 64;
  v34 = v29 + 72;
  a2 = v29;
  if (v5 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v5 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v39.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v39.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
    v40.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
    i8 = result[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = v35[-2].i8;
      v45 = *v30++;
      v46 = vqmovn_high_s16(vqmovn_s16(v43), v45);
      v47 = *v31++;
      v48 = v47;
      v49 = *v33++;
      v50 = vqmovn_high_s16(vqmovn_s16(v48), v49);
      v51 = *v32++;
      v52 = v51;
      v53 = *v34++;
      v54 = vminq_u8(vmaxq_u8(veorq_s8(v46, v37), v38), v39);
      v55 = vminq_u8(vmaxq_u8(veorq_s8(v50, v37), v38), v39);
      v56 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v52), v53), v37), v38), v39);
      v57 = vzip1q_s8(v55, v56);
      v58 = vzip2q_s8(v55, v56);
      v59 = vzip1q_s8(v54, v40);
      vst2_s8(v44, v57);
      v60 = vzip2q_s8(v54, v40);
      v35[-1] = vzip2q_s8(v57, v59);
      vst2_s8(i8, v58);
      i8 += a3;
      v35[1] = vzip2q_s8(v58, v60);
      --v36;
      v35 = i8;
    }

    while (v36 > 1);
  }

  return result;
}

int8x16_t *from_444_to_v408<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v33 = a2 + 64;
    v34 = a2 + 72;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x101010101010101;
  v9.i64[1] = 0x101010101010101;
  v10.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v10.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v11.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
  do
  {
    v12 = (result + v6);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9), v10);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[64]), v8), v9), v10);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[40]), a2[72]), v8), v9), v10);
    v16 = vzip1q_s8(v14, v15);
    v17 = vzip2q_s8(v14, v15);
    v18 = vzip1q_s8(v13, v11);
    v19 = vzip2q_s8(v13, v11);
    *result = vzip1q_s8(v16, v18);
    result[1] = vzip2q_s8(v16, v18);
    result[2] = vzip1q_s8(v17, v19);
    result[3] = vzip2q_s8(v17, v19);
    v20 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9), v10);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[80]), v8), v9), v10);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[56]), a2[88]), v8), v9), v10);
    v23 = vzip1q_s8(v21, v22);
    v24 = vzip2q_s8(v21, v22);
    v25 = vzip1q_s8(v20, v11);
    v26 = vzip2q_s8(v20, v11);
    v27 = &result->i8[v6];
    vst2_s8(v27, v23);
    v27 += 16;
    v28 = &result[2].i8[v6];
    vst2_s8(v28, v24);
    v29 = a2 + 1;
    result = (result + a3);
    --v5;
    *v27 = vzip2q_s8(v23, v25);
    v12[3] = vzip2q_s8(v24, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v30 = v29 + 8;
  v31 = v29 + 32;
  v32 = v29 + 40;
  v33 = v29 + 64;
  v34 = v29 + 72;
  a2 = v29;
  if (v5 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v5 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v39.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v39.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
    v40.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
    i8 = result[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = v35[-2].i8;
      v45 = *v30++;
      v46 = vqmovn_high_s16(vqmovn_s16(v43), v45);
      v47 = *v31++;
      v48 = v47;
      v49 = *v33++;
      v50 = vqmovn_high_s16(vqmovn_s16(v48), v49);
      v51 = *v32++;
      v52 = v51;
      v53 = *v34++;
      v54 = vminq_u8(vmaxq_u8(veorq_s8(v46, v37), v38), v39);
      v55 = vminq_u8(vmaxq_u8(veorq_s8(v50, v37), v38), v39);
      v56 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v52), v53), v37), v38), v39);
      v57 = vzip1q_s8(v55, v56);
      v58 = vzip2q_s8(v55, v56);
      v59 = vzip1q_s8(v54, v40);
      vst2_s8(v44, v57);
      v60 = vzip2q_s8(v54, v40);
      v35[-1] = vzip2q_s8(v57, v59);
      vst2_s8(i8, v58);
      i8 += a3;
      v35[1] = vzip2q_s8(v58, v60);
      --v36;
      v35 = i8;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A718C0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A718C8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v66 = a2;
    v58 = result;
    v62 = a3;
    v54 = a4;
    from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
    a4 = v54;
    result = v58;
    a3 = v62;
    a2 = v66;
    if (atomic_load_explicit(&qword_280A718C8, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A718D0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v68 = a2;
      v60 = result;
      v64 = a3;
      v56 = a4;
      from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
      a4 = v56;
      result = v60;
      a3 = v64;
      a2 = v68;
      if (atomic_load_explicit(&qword_280A718D8, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v67 = a2;
  v59 = result;
  v63 = a3;
  v55 = a4;
  from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
  a4 = v55;
  result = v59;
  a3 = v63;
  a2 = v67;
  if ((atomic_load_explicit(&qword_280A718D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A718D8, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v69 = a2;
  v61 = result;
  v65 = a3;
  v57 = a4;
  from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
  a4 = v57;
  result = v61;
  a3 = v65;
  a2 = v69;
LABEL_5:
  v4 = xmmword_280A71E20;
  v5 = *algn_280A71E30;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    v34 = a2 + 64;
    v33 = a2 + 72;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  do
  {
    v10 = (result + 8 * a3);
    v11 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*a2, v4), v5), 6uLL), v9);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(a2[8], v4), v5), 6uLL), v9);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[32], a2[40]), vzip2q_s16(a2[32], a2[40])), v4), v5), 6uLL), v9);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(vzip1q_s16(a2[64], a2[72]), vzip2q_s16(a2[64], a2[72])), v4), v5), 6uLL), v9);
    *result = vzip1q_s16(v13, v11);
    result[1] = vzip2q_s16(v13, v11);
    result[2] = vzip1q_s16(v14, v12);
    result[3] = vzip2q_s16(v14, v12);
    v15 = a2[48];
    v16 = a2[56];
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = a2[80];
    v20 = a2[88];
    v21 = a2[16];
    v22 = a2[24];
    ++a2;
    result = (result + a3);
    --v7;
    v23 = vuzp1q_s32(vzip1q_s16(v19, v20), vzip2q_s16(v19, v20));
    v24 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v21, v4), v5), 6uLL), v9);
    v25 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v22, v4), v5), 6uLL), v9);
    v26 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(vuzp1q_s32(v17, v18), v4), v5), 6uLL), v9);
    v27 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v23, v4), v5), 6uLL), v9);
    v28 = v10;
    vst2_s16(v28, *(&v24 - 8));
    v28 += 8;
    *v28 = vzip2q_s16(v26, v24);
    i16 = v10[2].i16;
    vst2_s16(i16, *(&v25 - 8));
    v10[3] = vzip2q_s16(v27, v25);
    --v8;
  }

  while (v8 > 1);
  v30 = a2 + 8;
  v31 = a2 + 32;
  v32 = a2 + 40;
  v33 = a2 + 72;
  v34 = a2 + 64;
  if (v7 >= 1)
  {
LABEL_14:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8000800080008000;
    v37.i64[1] = 0x8000800080008000;
    v38 = result[2].i16;
    do
    {
      v39 = *v31++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vuzp1q_s32(vzip1q_s16(v40, v42), vzip2q_s16(v40, v42));
      v44 = *v34++;
      v45 = v44;
      v46 = *v33++;
      v47 = vuzp1q_s32(vzip1q_s16(v45, v46), vzip2q_s16(v45, v46));
      v48 = *a2++;
      v49 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v48, v4), v5), 6uLL), v37);
      v50 = *v30++;
      v51 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v50, v4), v5), 6uLL), v37);
      v52 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v43, v4), v5), 6uLL), v37);
      vst2_s16(v41, *(&v49 - 8));
      v53 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v47, v4), v5), 6uLL), v37);
      v35[-1] = vzip2q_s16(v52, v49);
      vst2_s16(v38, *(&v51 - 8));
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v53, v51);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}