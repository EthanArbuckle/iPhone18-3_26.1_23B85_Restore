uint8x8_t sub_2774578D0(uint64_t a1, int8x8_t *a2, uint64_t a3, uint8x8_t *a4)
{
  v4 = vpadd_s16(vpaddl_u8(vuzp1_s8(*a2, a2[2])), vpaddl_u8(vuzp2_s8(*a2, a2[2])));
  *v5.i8 = vpadd_s16(v4, v4);
  v5.i64[1] = v5.i64[0];
  result = vqrshrn_n_u16(v5, 3uLL);
  *a4 = result;
  *(a4 + a3) = result;
  v7 = (a4 + a3 + a3);
  *v7 = result;
  *(v7 + a3) = result;
  return result;
}

int16x8_t sub_277457914(uint64_t a1, _OWORD *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v23[0] = *a2;
  v23[1] = v5;
  v6 = a2[3];
  v23[2] = a2[2];
  v23[3] = v6;
  do
  {
    v7 = v23[v4];
    v8 = vdupq_lane_s16(*v7.i8, 0);
    v9 = vdupq_lane_s16(*v7.i8, 1);
    v10 = vdupq_lane_s16(*v7.i8, 2);
    v11 = vdupq_lane_s16(*v7.i8, 3);
    v12 = vdupq_laneq_s16(v7, 4);
    v13 = vdupq_laneq_s16(v7, 5);
    v14 = vdupq_laneq_s16(v7, 6);
    result = vdupq_laneq_s16(v7, 7);
    *a4 = v8;
    a4[1] = v8;
    a4[2] = v8;
    a4[3] = v8;
    v16 = (a4 + a3);
    *v16 = v9;
    v16[1] = v9;
    v16[2] = v9;
    v16[3] = v9;
    v17 = (a4 + a3 + a3);
    *v17 = v10;
    v17[1] = v10;
    v17[2] = v10;
    v17[3] = v10;
    v18 = (v17 + a3);
    *v18 = v11;
    v18[1] = v11;
    v18[2] = v11;
    v18[3] = v11;
    v19 = (v18 + a3);
    *v19 = v12;
    v19[1] = v12;
    v19[2] = v12;
    v19[3] = v12;
    v20 = (v19 + a3);
    *v20 = v13;
    v20[1] = v13;
    v20[2] = v13;
    v20[3] = v13;
    v21 = (v20 + a3);
    *v21 = v14;
    v21[1] = v14;
    v21[2] = v14;
    v21[3] = v14;
    v22 = (v21 + a3);
    *v22 = result;
    v22[1] = result;
    v22[2] = result;
    v22[3] = result;
    a4 = (v22 + a3);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

void sub_277457A04(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = 1;
  do
  {
    v7 = vdupq_lane_s16(*v5.i8, 0);
    v8 = v6;
    v9 = vdupq_lane_s16(*v5.i8, 1);
    v10 = vdupq_lane_s16(*v5.i8, 2);
    v11 = vdupq_lane_s16(*v5.i8, 3);
    v12 = vdupq_laneq_s16(v5, 4);
    v13 = vdupq_laneq_s16(v5, 5);
    v14 = vdupq_laneq_s16(v5, 6);
    v15 = vdupq_laneq_s16(v5, 7);
    *a4 = v7;
    a4[1] = v7;
    v16 = (a4 + a3);
    *v16 = v9;
    v16[1] = v9;
    v17 = (a4 + a3 + a3);
    *v17 = v10;
    v17[1] = v10;
    v18 = (v17 + a3);
    *v18 = v11;
    v18[1] = v11;
    v19 = (v18 + a3);
    *v19 = v12;
    v19[1] = v12;
    v20 = (v19 + a3);
    *v20 = v13;
    v20[1] = v13;
    v21 = (v20 + a3);
    *v21 = v14;
    v21[1] = v14;
    v22 = (v21 + a3);
    a4 = (v22 + a3);
    v5 = v4;
    *v22 = v15;
    v22[1] = v15;
    v6 = 0;
  }

  while ((v8 & 1) != 0);
}

int16x8_t sub_277457A80(uint64_t a1, int16x4_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vdupq_lane_s16(*a2, 1);
  v5 = vdupq_lane_s16(*a2, 2);
  v6 = vdupq_lane_s16(*a2, 3);
  v7 = vdupq_laneq_s16(*a2->i8, 4);
  v8 = vdupq_laneq_s16(*a2->i8, 5);
  v9 = vdupq_laneq_s16(*a2->i8, 6);
  result = vdupq_laneq_s16(*a2->i8, 7);
  *a4 = vdupq_lane_s16(*a2, 0);
  *(a4 + a3) = v4;
  v11 = (a4 + a3 + a3);
  *v11 = v5;
  v12 = (v11 + a3);
  *v12 = v6;
  v13 = (v12 + a3);
  *v13 = v7;
  v14 = (v13 + a3);
  *v14 = v8;
  v15 = (v14 + a3);
  *v15 = v9;
  *(v15 + a3) = result;
  return result;
}

int16x4_t sub_277457AE0(uint64_t a1, int16x4_t *a2, uint64_t a3, int16x4_t *a4)
{
  v4 = vdup_lane_s16(*a2, 1);
  v5 = vdup_lane_s16(*a2, 2);
  result = vdup_lane_s16(*a2, 3);
  *a4 = vdup_lane_s16(*a2, 0);
  *(a4 + a3) = v4;
  v7 = (a4 + a3 + a3);
  *v7 = v5;
  *(v7 + a3) = result;
  return result;
}

void sub_277457B10(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[8];
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[11];
  v8 = (a4 + 32);
  v9 = 32;
  do
  {
    *(v8 - 2) = v4;
    *(v8 - 1) = v5;
    *v8 = v6;
    v8[1] = v7;
    v8 = (v8 + a3);
    --v9;
  }

  while (v9);
}

void sub_277457B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = (a4 + 16);
  v7 = 16;
  do
  {
    *(v6 - 1) = v4;
    *v6 = v5;
    v6 = (v6 + a3);
    --v7;
  }

  while (v7);
}

void sub_277457B58(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(a2 + 32);
  v5 = 8;
  do
  {
    *a4 = v4;
    a4 = (a4 + a3);
    --v5;
  }

  while (v5);
}

double sub_277457B74(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  result = *(a2 + 16);
  *a4 = result;
  *(a4 + a3) = result;
  v5 = (a4 + a3 + a3);
  *v5 = result;
  *(v5 + a3) = result;
  return result;
}

int8x16_t *sub_277457B94(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 0;
  v48[8] = *MEMORY[0x277D85DE8];
  v48[0] = 0x1C1C1D1D1E1E1F1FLL;
  v48[1] = 0x181819191A1A1B1BLL;
  v48[2] = 0x1414151516161717;
  v48[3] = 0x1010111112121313;
  v48[4] = 0xC0C0D0D0E0E0F0FLL;
  v48[5] = 0x80809090A0A0B0BLL;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v46[0] = *a2;
  v46[1] = v5;
  i16 = a2[4].i16;
  v13 = vld1_dup_s16(i16);
  v46[2] = v6;
  v46[3] = v7;
  v47 = v13;
  v44 = vextq_s8(v9, v9, 8uLL).u64[0];
  v43 = vextq_s8(v10, v10, 8uLL).u64[0];
  v14 = a2[12].i16;
  *v5.i8 = vld1_dup_s16(v14);
  v45[0] = vmull_u8(0x404030302020101, v13);
  v45[1] = vmull_u8(0x808070706060505, v13);
  v45[2] = vmull_u8(0xC0C0B0B0A0A0909, v13);
  v45[3] = vmull_u8(0x10100F0F0E0E0D0DLL, v13);
  v42 = vmull_u8(0x404030302020101, *v5.i8);
  v15 = vmull_u8(0x808070706060505, *v5.i8);
  v45[4] = vmull_u8(0x1414131312121111, v13);
  v45[5] = vmull_u8(0x1818171716161515, v13);
  v16 = vmull_u8(0xC0C0B0B0A0A0909, *v5.i8);
  v17 = vmull_u8(0x10100F0F0E0E0D0DLL, *v5.i8);
  v18 = vmull_u8(0x1414131312121111, *v5.i8);
  v19 = vmull_u8(0x1818171716161515, *v5.i8);
  v20 = vmull_u8(0x1C1C1B1B1A1A1919, *v5.i8);
  v21 = vmull_u8(0x20201F1F1E1E1D1DLL, *v5.i8);
  v22 = vextq_s8(v11, v11, 8uLL).u64[0];
  v48[6] = 0x404050506060707;
  v48[7] = 0x10102020303;
  v23 = a4 + 2;
  v45[6] = vmull_u8(0x1C1C1B1B1A1A1919, v13);
  v45[7] = vmull_u8(0x20201F1F1E1E1D1DLL, v13);
  v24 = vextq_s8(v8, v8, 8uLL).u64[0];
  do
  {
    v25 = v45[v4];
    v26 = vdupq_lane_s32(*v25.i8, 0);
    v27 = vdupq_lane_s32(*v25.i8, 1);
    v28 = vdupq_laneq_s32(v25, 2);
    v29 = vdupq_laneq_s32(v25, 3);
    v30 = *(v46 + 8 * v4);
    v31 = vdup_lane_s16(v30, 0);
    v32 = vdup_lane_s16(v30, 1);
    v33 = vdup_lane_s16(v30, 2);
    v34 = v48[v4];
    v35 = vdup_lane_s16(v34, 0);
    *v25.i8 = vdup_lane_s16(v34, 1);
    v36 = vdup_lane_s16(v34, 2);
    v37 = vdup_lane_s16(v30, 3);
    v38 = vdup_lane_s16(v34, 3);
    v23[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vaddq_s16(vmlal_u8(v42, 0x1C1C1D1D1E1E1F1FLL, v31), v26), *v8.i8, v35), 6uLL), vmlal_u8(vaddq_s16(vmlal_u8(v15, 0x181819191A1A1B1BLL, v31), v26), v24, v35), 6uLL);
    v39 = (v23 + a3);
    v39[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vaddq_s16(vmlal_u8(v42, 0x1C1C1D1D1E1E1F1FLL, v32), v27), *v8.i8, *v25.i8), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v15, v27), 0x181819191A1A1B1BLL, v32), v24, *v25.i8), 6uLL);
    result = (v23 + 2 * a3);
    result[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v42, v28), 0x1C1C1D1D1E1E1F1FLL, v33), *v8.i8, v36), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v15, v28), 0x181819191A1A1B1BLL, v33), v24, v36), 6uLL);
    v41 = (v23 + 3 * a3);
    v41[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v42, v29), 0x1C1C1D1D1E1E1F1FLL, v37), *v8.i8, v38), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v15, v29), 0x181819191A1A1B1BLL, v37), v24, v38), 6uLL);
    v23[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v26), 0x1414151516161717, v31), *v9.i8, v35), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v26), 0x1010111112121313, v31), v44, v35), 6uLL);
    v39[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v27), 0x1414151516161717, v32), *v9.i8, *v25.i8), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v27), 0x1010111112121313, v32), v44, *v25.i8), 6uLL);
    result[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v28), 0x1414151516161717, v33), *v9.i8, v36), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v28), 0x1010111112121313, v33), v44, v36), 6uLL);
    v41[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v29), 0x1414151516161717, v37), *v9.i8, v38), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v29), 0x1010111112121313, v37), v44, v38), 6uLL);
    *v23 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v18, v26), 0xC0C0D0D0E0E0F0FLL, v31), *v10.i8, v35), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v19, v26), 0x80809090A0A0B0BLL, v31), v43, v35), 6uLL);
    *v39 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v18, v27), 0xC0C0D0D0E0E0F0FLL, v32), *v10.i8, *v25.i8), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v19, v27), 0x80809090A0A0B0BLL, v32), v43, *v25.i8), 6uLL);
    *result = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v18, v28), 0xC0C0D0D0E0E0F0FLL, v33), *v10.i8, v36), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v19, v28), 0x80809090A0A0B0BLL, v33), v43, v36), 6uLL);
    *v41 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v18, v29), 0xC0C0D0D0E0E0F0FLL, v37), *v10.i8, v38), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v19, v29), 0x80809090A0A0B0BLL, v37), v43, v38), 6uLL);
    v23[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v20, v26), 0x404050506060707, v31), *v11.i8, v35), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v21, v26), 0x10102020303, v31), v22, v35), 6uLL);
    v39[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v20, v27), 0x404050506060707, v32), *v11.i8, *v25.i8), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v21, v27), 0x10102020303, v32), v22, *v25.i8), 6uLL);
    result[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v20, v28), 0x404050506060707, v33), *v11.i8, v36), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v21, v28), 0x10102020303, v33), v22, v36), 6uLL);
    v41[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v20, v29), 0x404050506060707, v37), *v11.i8, v38), 6uLL), vmlal_u8(vmlal_u8(vaddq_s16(v21, v29), 0x10102020303, v37), v22, v38), 6uLL);
    ++v4;
    v23 = (v23 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

void sub_277458040(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 0;
  v38[4] = *MEMORY[0x277D85DE8];
  v38[0] = 0xC0C0D0D0E0E0F0FLL;
  v38[1] = 0x80809090A0A0B0BLL;
  v38[2] = 0x404050506060707;
  v38[3] = 0x10102020303;
  v5 = a2[1];
  v6 = a2[4];
  v7 = a2[5];
  v36[0] = *a2;
  v36[1] = v5;
  i16 = a2[2].i16;
  v9 = vld1_dup_s16(i16);
  v37 = v9;
  v10 = vextq_s8(v6, v6, 8uLL).u64[0];
  v11 = vextq_s8(v7, v7, 8uLL).u64[0];
  v12 = a2[6].i16;
  v13 = vld1_dup_s16(v12);
  v35[0] = vmull_u8(0x404030302020101, v9);
  v35[1] = vmull_u8(0x808070706060505, v9);
  v35[2] = vmull_u8(0xC0C0B0B0A0A0909, v9);
  v35[3] = vmull_u8(0x10100F0F0E0E0D0DLL, v9);
  v14 = vmull_u8(0x404030302020101, v13);
  v15 = vmull_u8(0x808070706060505, v13);
  v16 = vmull_u8(0xC0C0B0B0A0A0909, v13);
  v17 = vmull_u8(0x10100F0F0E0E0D0DLL, v13);
  do
  {
    v18 = *(v36 + 8 * v4);
    v19 = v35[v4];
    v20 = vdupq_lane_s32(*v19.i8, 0);
    v21 = vdupq_lane_s32(*v19.i8, 1);
    v22 = vdupq_laneq_s32(v19, 2);
    v23 = vdupq_laneq_s32(v19, 3);
    v24 = vdup_lane_s16(v18, 0);
    v25 = vdup_lane_s16(v18, 1);
    *v19.i8 = vdup_lane_s16(v18, 2);
    v26 = vdup_lane_s16(v18, 3);
    v27 = v38[v4];
    v28 = vdup_lane_s16(v27, 0);
    v29 = vdup_lane_s16(v27, 1);
    v30 = vdup_lane_s16(v27, 2);
    v31 = vdup_lane_s16(v27, 3);
    *a4 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vaddq_s16(vmlal_u8(v14, 0xC0C0D0D0E0E0F0FLL, v24), v20), *v6.i8, v28), 5uLL), vmlal_u8(vaddq_s16(vmlal_u8(v15, 0x80809090A0A0B0BLL, v24), v20), v10, v28), 5uLL);
    v32 = (a4 + a3);
    *v32 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vaddq_s16(vmlal_u8(v14, 0xC0C0D0D0E0E0F0FLL, v25), v21), *v6.i8, v29), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v15, v21), 0x80809090A0A0B0BLL, v25), v10, v29), 5uLL);
    v33 = (a4 + 2 * a3);
    *v33 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v14, v22), 0xC0C0D0D0E0E0F0FLL, *v19.i8), *v6.i8, v30), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v15, v22), 0x80809090A0A0B0BLL, *v19.i8), v10, v30), 5uLL);
    v34 = (a4 + 3 * a3);
    *v34 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v14, v23), 0xC0C0D0D0E0E0F0FLL, v26), *v6.i8, v31), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v15, v23), 0x80809090A0A0B0BLL, v26), v10, v31), 5uLL);
    a4[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v20), 0x404050506060707, v24), *v7.i8, v28), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v20), 0x10102020303, v24), v11, v28), 5uLL);
    v32[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v21), 0x404050506060707, v25), *v7.i8, v29), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v21), 0x10102020303, v25), v11, v29), 5uLL);
    v33[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v22), 0x404050506060707, *v19.i8), *v7.i8, v30), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v22), 0x10102020303, *v19.i8), v11, v30), 5uLL);
    v34[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmlal_u8(vaddq_s16(v16, v23), 0x404050506060707, v26), *v7.i8, v31), 5uLL), vmlal_u8(vmlal_u8(vaddq_s16(v17, v23), 0x10102020303, v26), v11, v31), 5uLL);
    ++v4;
    a4 = (a4 + 4 * a3);
  }

  while (v4 != 4);
}

int8x16_t sub_2774582E0(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = *a2;
  v5 = *(a2 + 32);
  v6 = (a2 + 16);
  v7 = vld1_dup_s16(v6);
  v8 = (a2 + 48);
  v9 = vld1_dup_s16(v8);
  v10 = vmull_u8(0x404030302020101, v7);
  v11 = vmull_u8(0x808070706060505, v7);
  v12 = vmull_u8(0x404030302020101, v9);
  v13 = vmull_u8(0x808070706060505, v9);
  v14 = vdupq_lane_s32(*v10.i8, 0);
  v15 = vdupq_lane_s32(*v10.i8, 1);
  v10.i64[0] = vdupq_laneq_s64(v10, 1).u64[0];
  v16 = vdupq_lane_s32(*v10.i8, 0);
  v17 = vdupq_lane_s32(*v10.i8, 1);
  v18 = vdup_lane_s16(*a2, 0);
  v19 = vmlal_u8(vmlal_u8(v14, 0x404030302020101, v9), 0x404050506060707, v18);
  v20 = vmlal_u8(vmlal_u8(v14, 0x808070706060505, v9), 0x10102020303, v18);
  v21 = vdup_lane_s16(*a2, 1);
  v22 = vmlal_u8(vmlal_u8(v15, 0x404030302020101, v9), 0x404050506060707, v21);
  v23 = vmlal_u8(vmlal_u8(v15, 0x808070706060505, v9), 0x10102020303, v21);
  v24 = vdup_lane_s16(*a2, 2);
  v25 = vmlal_u8(vmlal_u8(v16, 0x404030302020101, v9), 0x404050506060707, v24);
  v26 = vmlal_u8(vmlal_u8(v16, 0x808070706060505, v9), 0x10102020303, v24);
  v27 = vdup_lane_s16(*a2, 3);
  v28 = vmlal_u8(vmlal_u8(v17, 0x404030302020101, v9), 0x404050506060707, v27);
  v29 = vmlal_u8(vmlal_u8(v17, 0x808070706060505, v9), 0x10102020303, v27);
  v30.i64[0] = 0x707070707070707;
  v30.i64[1] = 0x707070707070707;
  v31 = vmlal_high_u8(v20, v5, v30);
  v30.i64[0] = 0x606060606060606;
  v30.i64[1] = 0x606060606060606;
  v32 = vmlal_high_u8(v23, v5, v30);
  v30.i64[0] = 0x505050505050505;
  v30.i64[1] = 0x505050505050505;
  v33 = vmlal_high_u8(v26, v5, v30);
  v30.i64[0] = 0x404040404040404;
  v30.i64[1] = 0x404040404040404;
  *a4 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(v19, *v5.i8, 0x707070707070707), 4uLL), v31, 4uLL);
  *(a4 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(v22, *v5.i8, 0x606060606060606), 4uLL), v32, 4uLL);
  v34 = (a4 + a3 + a3);
  *v34 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(v25, *v5.i8, 0x505050505050505), 4uLL), v33, 4uLL);
  *(v34 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(v28, *v5.i8, 0x404040404040404), 4uLL), vmlal_high_u8(v29, v5, v30), 4uLL);
  v35 = (a4 + 4 * a3);
  v36 = vdupq_lane_s32(*v11.i8, 0);
  v37 = vmlal_u8(v36, 0x404030302020101, v9);
  v38 = vdupq_lane_s32(*v11.i8, 1);
  v39 = vmlal_u8(v38, 0x404030302020101, v9);
  v40 = vmlal_u8(v38, 0x808070706060505, v9);
  v11.i64[0] = vdupq_laneq_s64(v11, 1).u64[0];
  v41 = vdupq_lane_s32(*v11.i8, 0);
  v42 = vdupq_lane_s32(*v11.i8, 1);
  v43 = vmlal_u8(v42, 0x404030302020101, v9);
  v44 = vdup_laneq_s16(v4, 4);
  v45 = vmlal_u8(v42, 0x808070706060505, v9);
  v46 = vmlal_u8(vmlal_u8(v36, 0x808070706060505, v9), 0x10102020303, v44);
  v47 = vdup_laneq_s16(v4, 5);
  v48 = vmlal_u8(v39, 0x404050506060707, v47);
  v49 = vmlal_u8(v40, 0x10102020303, v47);
  v50 = vdup_laneq_s16(v4, 6);
  *v4.i8 = vdup_laneq_s16(v4, 7);
  v51 = vmlal_u8(v43, 0x404050506060707, *v4.i8);
  v52 = vmlal_u8(v45, 0x10102020303, *v4.i8);
  v4.i64[0] = 0x303030303030303;
  v4.i64[1] = 0x303030303030303;
  v53 = vmlal_u8(vmlal_u8(v37, 0x404050506060707, v44), *v5.i8, 0x303030303030303);
  v54 = vmlal_high_u8(v46, v5, v4);
  v4.i64[0] = 0x202020202020202;
  v4.i64[1] = 0x202020202020202;
  v55 = vmlal_u8(v48, *v5.i8, 0x202020202020202);
  v56 = vmlal_high_u8(v49, v5, v4);
  v57 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vaddq_s16(vaddw_u8(v12, *v5.i8), v41), 0x404050506060707, v50), 4uLL), vmlal_u8(vaddq_s16(vaddw_high_u8(v13, v5), v41), 0x10102020303, v50), 4uLL);
  result = vrshrn_high_n_s16(vrshrn_n_s16(v51, 4uLL), v52, 4uLL);
  *v35 = vrshrn_high_n_s16(vrshrn_n_s16(v53, 4uLL), v54, 4uLL);
  v59 = (v35 + a3);
  *v59 = vrshrn_high_n_s16(vrshrn_n_s16(v55, 4uLL), v56, 4uLL);
  v60 = (v59 + a3);
  *v60 = v57;
  *(v60 + a3) = result;
  return result;
}

int8x8_t sub_2774584EC(uint64_t a1, int16x4_t *a2, uint64_t a3, int8x8_t *a4)
{
  v4 = &a2[1];
  v5 = vld1_dup_s16(v4);
  v6 = a2[2];
  v7 = &a2[3];
  v8 = vld1_dup_s16(v7);
  v9 = vmull_u8(0x404030302020101, v8);
  v10 = vmull_u8(0x404030302020101, v5);
  v11 = vdupq_lane_s32(*v10.i8, 0);
  v12 = vdupq_lane_s32(*v10.i8, 1);
  v10.i64[0] = vdupq_laneq_s64(v10, 1).u64[0];
  v13 = vdupq_lane_s32(*v10.i8, 0);
  v14 = vmlal_u8(vmlal_u8(vdupq_lane_s32(*v10.i8, 1), 0x404030302020101, v8), 0x10102020303, vdup_lane_s16(*a2, 3));
  v15 = vmlal_u8(vaddq_s16(vmlal_u8(vmull_u8(0x10102020303, vdup_lane_s16(*a2, 0)), 0x404030302020101, v8), v11), v6, 0x303030303030303);
  v16 = vmlal_u8(vaddq_s16(vmlal_u8(vmull_u8(0x10102020303, vdup_lane_s16(*a2, 1)), 0x404030302020101, v8), v12), v6, 0x202020202020202);
  result = vrshrn_n_s16(vaddq_s16(vmlal_u8(vaddw_u8(v9, v6), 0x10102020303, vdup_lane_s16(*a2, 2)), v13), 3uLL);
  *a4 = vrshrn_n_s16(v15, 3uLL);
  *(a4 + a3) = vrshrn_n_s16(v16, 3uLL);
  v18 = (a4 + a3 + a3);
  *v18 = result;
  *(v18 + a3) = vrshrn_n_s16(v14, 3uLL);
  return result;
}

void sub_2774585A8(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = 0;
  i16 = a2[4].i16;
  v6 = vld1q_dup_s16(i16);
  v7 = a2[12].i16;
  v8 = vld1q_dup_s16(v7);
  v9 = vmulq_s16(v8, xmmword_27750D420);
  v10 = vmulq_s16(v8, xmmword_27750D430);
  v11 = vmulq_s16(v8, xmmword_27750D440);
  v12 = vmulq_s16(v8, xmmword_27750D450);
  v13 = a2[8];
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];
  v17 = vshlq_n_s16(v13, 5uLL);
  v18 = vshlq_n_s16(v14, 5uLL);
  v19 = vshlq_n_s16(v15, 5uLL);
  v20 = vshlq_n_s16(v16, 5uLL);
  v21 = a4 + 2;
  v22 = v6;
  do
  {
    v23 = &a2->i16[v4];
    v24 = vld1q_dup_s16(v23);
    v17 = vsubq_s16(v17, v13);
    v18 = vsubq_s16(v18, v14);
    v21[-2] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v17, v9), v22), v24, xmmword_27750D3E0), 6uLL);
    v21[-1] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v18, v10), v22), v24, xmmword_27750D3F0), 6uLL);
    v19 = vsubq_s16(v19, v15);
    v20 = vsubq_s16(v20, v16);
    *v21 = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v19, v11), v22), v24, xmmword_27750D400), 6uLL);
    v21[1] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v20, v12), v22), v24, xmmword_27750D410), 6uLL);
    v22 = vaddq_s16(v22, v6);
    ++v4;
    v21 = (v21 + 2 * a3);
  }

  while (v4 != 32);
}

void sub_2774586A8(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a2[8], *a2), vaddq_s16(a2[1], a2[9])), vaddq_s16(vaddq_s16(a2[2], a2[10]), a2[3])), a2[11]);
  v5 = vpaddq_s16(v4, v4);
  v6 = vpaddq_s16(v5, v5);
  v7 = vrshrq_n_u16(vpaddq_s16(v6, v6), 6uLL);
  v8 = a4 + 2;
  v9 = 32;
  do
  {
    v8[-2] = v7;
    v8[-1] = v7;
    *v8 = v7;
    v8[1] = v7;
    v8 = (v8 + 2 * a3);
    --v9;
  }

  while (v9);
}

void sub_277458708(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = 0;
  i16 = a2[2].i16;
  v6 = vld1q_dup_s16(i16);
  v7 = a2[6].i16;
  v8 = vld1q_dup_s16(v7);
  v9 = vmulq_s16(v8, xmmword_27750D420);
  v10 = vmulq_s16(v8, xmmword_27750D430);
  v11 = a2[4];
  v12 = a2[5];
  v13 = vshlq_n_s16(v11, 4uLL);
  v14 = vshlq_n_s16(v12, 4uLL);
  v15 = a4 + 1;
  v16 = v6;
  do
  {
    v17 = &a2->i16[v4];
    v18 = vld1q_dup_s16(v17);
    v13 = vsubq_s16(v13, v11);
    v14 = vsubq_s16(v14, v12);
    v15[-1] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v13, v9), v16), v18, xmmword_27750D400), 5uLL);
    *v15 = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v14, v10), v16), v18, xmmword_27750D410), 5uLL);
    v16 = vaddq_s16(v16, v6);
    ++v4;
    v15 = (v15 + 2 * a3);
  }

  while (v4 != 16);
}

void sub_2774587A8(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = vpaddlq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a2[16], *a2), vaddq_s16(a2[1], a2[17])), vaddq_s16(vaddq_s16(a2[2], a2[18]), a2[3])), vaddq_s16(vaddq_s16(vaddq_s16(a2[19], a2[4]), a2[20]), a2[5])), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a2[21], a2[6]), a2[22]), a2[7]), a2[23])));
  v5 = vpaddq_s32(v4, v4);
  v6 = vrshrq_n_u32(vpaddq_s32(v5, v5), 7uLL);
  v7 = vtrn1q_s16(v6, v6);
  v8 = a4 + 4;
  v9 = 64;
  do
  {
    v8[-4] = v7;
    v8[-3] = v7;
    v8[-2] = v7;
    v8[-1] = v7;
    *v8 = v7;
    v8[1] = v7;
    v8[2] = v7;
    v8[3] = v7;
    v8 = (v8 + 2 * a3);
    --v9;
  }

  while (v9);
}

void sub_277458844(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = 0;
  v5 = vaddq_s16(vaddq_s16(a2[4], *a2), vaddq_s16(a2[1], a2[5]));
  v6 = vpaddq_s16(v5, v5);
  v7 = vpaddq_s16(v6, v6);
  v8 = vrshrq_n_u16(vpaddq_s16(v7, v7), 5uLL);
  v9 = a4 + 1;
  *(v9 + 2 * a3) = v8;
  *(v9 + 4 * a3) = v8;
  *(v9 + 6 * a3) = v8;
  do
  {
    *(v9 + 8 * a3) = v8;
    *(v9 + 10 * a3) = v8;
    *(v9 + 12 * a3) = v8;
    *(v9 + 14 * a3) = v8;
    v4 += 4;
    v9 = (v9 + 8 * a3);
  }

  while (v4 < 0xC);
  v10 = vaddq_s16(v8, v8);
  v11 = vaddq_s16(*a2, v8);
  v12 = vaddq_s16(v11, v10);
  v10.i16[0] = v11.i16[0];
  v13 = vrshrq_n_u16(vaddq_s16(vaddq_s16(a2[4], v8), v10), 2uLL);
  v14 = vrshrq_n_u16(v12, 2uLL);
  v11.i64[0] = 0x3000300030003;
  v11.i64[1] = 0x3000300030003;
  v15 = vmulq_s16(v8, v11);
  v16 = vaddq_s16(v15, a2[5]);
  v17 = vrshrq_n_u16(vaddq_s16(v15, a2[1]), 2uLL);
  v18 = vextq_s8(v14, v8, 0xEuLL);
  v19 = v8;
  v19.i16[0] = v17.i16[0];
  v20 = vextq_s8(v17, v8, 0xEuLL);
  v21 = vextq_s8(v14, v8, 2uLL);
  v22 = vextq_s8(v17, v8, 2uLL);
  *a4 = v13;
  a4[1] = vrshrq_n_u16(v16, 2uLL);
  *(a4 + 14 * a3) = v18;
  a4[a3] = v19;
  *(a4 + 30 * a3) = v20;
  v23 = -1;
  v24 = &xmmword_27750E250;
  do
  {
    v25 = *(v24 - 1);
    *(a4 + 2 * a3) = vqtbl1q_s8(v21, v25);
    *(a4 + 18 * a3) = vqtbl1q_s8(v22, v25);
    v26 = *v24;
    v24 += 2;
    *(a4 + 4 * a3) = vqtbl1q_s8(v21, v26);
    *(a4 + 20 * a3) = vqtbl1q_s8(v22, v26);
    v23 += 2;
    a4 = (a4 + 4 * a3);
  }

  while (v23 < 5);
}

int16x8_t *sub_27745899C(int16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v84[27] = *MEMORY[0x277D85DE8];
  v4 = v83;
  v5 = byte_27750DFFA[result];
  v6 = a2 + 256;
  if (result <= 0x11)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 256;
  }

  if (v5 < 0)
  {
    if (result > 0x11)
    {
      v6 = a2;
    }

    v9 = byte_27750DFFA[result];
    if (v9 < 0)
    {
      v10 = v6 - 2;
      v11 = 2 * byte_27750DFFA[result];
      v12 = word_27750E120[result - 11];
      v13 = 2 * v9 * v12 + 128;
      v8 = 64;
      do
      {
        v83[v11 - 1] = *(v10 + 2 * (v13 >> 8));
        v13 += v12;
        v14 = __CFADD__(v11++, 1);
      }

      while (!v14);
    }

    else
    {
      v8 = 64;
    }
  }

  else
  {
    v8 = 128;
  }

  v15 = 0;
  v16 = v84;
  v17 = (v7 + 32);
  do
  {
    v18 = *(v17 - 1);
    *(v16 - 3) = *(v17 - 2);
    *(v16 - 2) = v18;
    v19 = *v17;
    v20 = v17[1];
    v17 += 4;
    *(v16 - 1) = v19;
    *v16 = v20;
    v15 += 32;
    v16 += 4;
  }

  while (v15 < v8);
  v82 = *(a2 - 2);
  if ((v5 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v42 = 0;
      v43.i64[0] = 0x20002000200020;
      v43.i64[1] = 0x20002000200020;
      result = a4;
      v44 = v5;
      do
      {
        v45 = 0;
        v46 = &a4[v42];
        do
        {
          v47 = 0;
          v48 = vdupq_n_s16(v44 & 0x1F);
          v49 = vsubq_s16(v43, v48);
          v50 = 1;
          do
          {
            v51 = v50;
            v52 = &v83[v47 + (v44 >> 5)];
            v53 = v47 | v45;
            *(v46 + 2 * v53 * a3) = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v52, v49), *(v52 + 1), v48), 5uLL);
            *(v46 + 2 * (v53 | 8) * a3) = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 1), v49), *(v52 + 9), v48), 5uLL);
            *(v46 + 2 * (v53 | 0x10) * a3) = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 2), v49), *(v52 + 17), v48), 5uLL);
            *(v46 + 2 * (v53 | 0x18) * a3) = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v52 + 3), v49), *(v52 + 25), v48), 5uLL);
            v47 = 32;
            v50 = 0;
          }

          while ((v51 & 1) != 0);
          ++v45;
          v44 += v5;
        }

        while (v45 != 8);
        v54 = -8;
        v55 = result;
        do
        {
          v56 = *(v55 + 2 * a3);
          v57 = *(v55 + 4 * a3);
          v58 = *(v55 + 6 * a3);
          v59 = *(v55 + 8 * a3);
          v60 = *(v55 + 10 * a3);
          v61 = *(v55 + 12 * a3);
          v62 = *(v55 + 14 * a3);
          v63 = vtrn1q_s16(*v55, v56);
          v64 = vtrn2q_s16(*v55, v56);
          v65 = vtrn1q_s16(v57, v58);
          v66 = vtrn2q_s16(v57, v58);
          v67 = vtrn1q_s32(v63, v65);
          v68 = vtrn2q_s32(v63, v65);
          v69 = vtrn1q_s32(v64, v66);
          v70 = vtrn2q_s32(v64, v66);
          v71 = vtrn1q_s16(v59, v60);
          v72 = vtrn2q_s16(v59, v60);
          v73 = vtrn1q_s16(v61, v62);
          v74 = vtrn2q_s16(v61, v62);
          v75 = vtrn1q_s32(v71, v73);
          v76 = vtrn2q_s32(v71, v73);
          v77 = vtrn1q_s32(v72, v74);
          v78 = vtrn2q_s32(v72, v74);
          v79 = vzip2q_s64(v67, v75);
          v67.i64[1] = v75.i64[0];
          v80 = vzip2q_s64(v69, v77);
          v69.i64[1] = v77.i64[0];
          v81 = vzip2q_s64(v68, v76);
          v68.i64[1] = v76.i64[0];
          v76.i64[0] = v70.i64[0];
          v76.i64[1] = v78.i64[0];
          *v55 = v67;
          *(v55 + 2 * a3) = v69;
          *(v55 + 4 * a3) = v68;
          *(v55 + 6 * a3) = v76;
          *(v55 + 8 * a3) = v79;
          *(v55 + 10 * a3) = v80;
          *(v55 + 12 * a3) = v81;
          *(v55 + 14 * a3) = vzip2q_s64(v70, v78);
          v54 += 8;
          v55 += a3;
        }

        while (v54 < 0x38);
        ++result;
        v14 = v42++ >= 7;
      }

      while (!v14);
    }

    else
    {
      v21 = 0;
      v22.i64[0] = 0x20002000200020;
      v22.i64[1] = 0x20002000200020;
      v23 = v5;
      do
      {
        v24 = 0;
        v25 = vdupq_n_s16(v23 & 0x1F);
        v26 = vsubq_s16(v22, v25);
        v27 = 1;
        do
        {
          v28 = &v83[v24 * 8 + (v23 >> 5)];
          v29 = a4[v24].i64 + 2 * v21 * a3;
          v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v28 + 1), v26), *(v28 + 9), v25), 5uLL);
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v28, v26), *(v28 + 1), v25), 5uLL);
          *(v29 + 16) = v30;
          v31 = vmlaq_s16(vmulq_s16(*(v28 + 2), v26), *(v28 + 17), v25);
          v32 = vmlaq_s16(vmulq_s16(*(v28 + 3), v26), *(v28 + 25), v25);
          LOBYTE(v28) = v27;
          *(v29 + 32) = vrshrq_n_u16(v31, 5uLL);
          *(v29 + 48) = vrshrq_n_u16(v32, 5uLL);
          v24 = 4;
          v27 = 0;
        }

        while ((v28 & 1) != 0);
        ++v21;
        v23 += v5;
      }

      while (v21 != 64);
    }
  }

  else
  {
    v33 = 0;
    v34 = v5 >> 5;
    do
    {
      v35 = 0;
      v36 = 1;
      v4 += v34;
      do
      {
        v37 = &v4[v35 * 8];
        v38 = v37[1];
        v39 = v37[2];
        v40 = v37[3];
        v41 = &a4[v35].i8[2 * v33 * a3];
        *v41 = *v37;
        *(v41 + 1) = v38;
        LOBYTE(v37) = v36;
        *(v41 + 2) = v39;
        *(v41 + 3) = v40;
        v35 = 4;
        v36 = 0;
      }

      while ((v37 & 1) != 0);
      ++v33;
    }

    while (v33 != 64);
  }

  return result;
}

_WORD *sub_277458DB8(_WORD *result, _OWORD *a2, uint64_t a3, uint16x8_t *a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = (a2 + 8);
  if (result <= 0x11)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 8;
  }

  if (v4 < 0)
  {
    v8 = 0;
    v9 = result - 18;
    if (result > 0x11)
    {
      v5 = a2;
    }

    v10 = a2[8 * (result < 0x12)];
    v11 = *(v5 + 16);
    v12 = *(v5 + 32);
    v13 = *(v5 + 48);
    LODWORD(v5) = 18 - result;
    if (v9 < 0)
    {
      v5 = v5;
    }

    else
    {
      v5 = v9;
    }

    v14 = &unk_27750E3C0 + 64 * v5;
    v7 = 32;
    do
    {
      *&v84[v8] = vqtbl4q_s8(*&v10, *&v14[v8]);
      v8 += 16;
    }

    while (v8 != 64);
  }

  else
  {
    v7 = 64;
  }

  v15 = 0;
  v16 = v88;
  v17 = v6 + 2;
  do
  {
    v18 = *(v17 - 1);
    *(v16 - 3) = *(v17 - 2);
    *(v16 - 2) = v18;
    v19 = *v17;
    v20 = v17[1];
    v17 += 4;
    *(v16 - 1) = v19;
    *v16 = v20;
    v15 += 32;
    v16 += 4;
  }

  while (v15 < v7);
  v85 = *(a2 - 1);
  if ((v4 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v38 = 0;
      v39 = 4 * a3;
      v40 = 6 * a3;
      v41 = 8 * a3;
      v42 = 10 * a3;
      v43 = 12 * a3;
      v44 = a3;
      result = v87;
      v45 = 3 * a3;
      v46 = 2 * a3;
      v47 = 2 * a3;
      v48.i64[0] = 0x20002000200020;
      v48.i64[1] = 0x20002000200020;
      v49 = v4;
      v50 = 14 * a3;
      do
      {
        v51 = a4;
        v52 = 8;
        do
        {
          v53 = vdupq_n_s16(v49 & 0x1F);
          v54 = vsubq_s16(v48, v53);
          *v51 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v86[v49 >> 5], v54), *&v86[(v49 >> 5) + 1], v53), 5uLL);
          v51[v44] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v86[(v49 >> 5) + 8], v54), *&v86[(v49 >> 5) + 9], v53), 5uLL);
          v51[v47] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v87[v49 >> 5], v54), *&v87[(v49 >> 5) + 1], v53), 5uLL);
          v51[v45] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v88[2 * (v49 >> 5)], v54), *&v88[2 * (v49 >> 5) + 2], v53), 5uLL);
          v49 += v4;
          v51 = (v51 + v46);
          --v52;
        }

        while (v52);
        v55 = -8;
        v56 = a4;
        do
        {
          v57 = *(v56 + v46);
          v58 = *(v56 + v39);
          v59 = *(v56 + v40);
          v60 = *(v56 + v41);
          v61 = *(v56 + v42);
          v62 = *(v56 + v43);
          v63 = *(v56 + v50);
          v64 = vtrn1q_s16(*v56, v57);
          v65 = vtrn2q_s16(*v56, v57);
          v66 = vtrn1q_s16(v58, v59);
          v67 = vtrn2q_s16(v58, v59);
          v68 = vtrn1q_s32(v64, v66);
          v69 = vtrn2q_s32(v64, v66);
          v70 = vtrn1q_s32(v65, v67);
          v71 = vtrn2q_s32(v65, v67);
          v72 = vtrn1q_s16(v60, v61);
          v73 = vtrn2q_s16(v60, v61);
          v74 = vtrn1q_s16(v62, v63);
          v75 = vtrn2q_s16(v62, v63);
          v76 = vtrn1q_s32(v72, v74);
          v77 = vtrn2q_s32(v72, v74);
          v78 = vtrn1q_s32(v73, v75);
          v79 = vtrn2q_s32(v73, v75);
          v80 = vzip2q_s64(v68, v76);
          v68.i64[1] = v76.i64[0];
          v81 = vzip2q_s64(v70, v78);
          v70.i64[1] = v78.i64[0];
          v82 = vzip2q_s64(v69, v77);
          v69.i64[1] = v77.i64[0];
          v77.i64[0] = v71.i64[0];
          v77.i64[1] = v79.i64[0];
          *v56 = v68;
          *(v56 + v46) = v70;
          *(v56 + v39) = v69;
          *(v56 + v40) = v77;
          *(v56 + v41) = v80;
          *(v56 + v42) = v81;
          *(v56 + v43) = v82;
          *(v56 + v50) = vzip2q_s64(v71, v79);
          v55 += 8;
          v56 = (v56 + v44 * 16);
        }

        while (v55 < 0x18);
        ++a4;
        v83 = v38 >= 0x18;
        v38 += 8;
      }

      while (!v83);
    }

    else
    {
      v21 = a4 + 2;
      v22 = 32;
      v23.i64[0] = 0x20002000200020;
      v23.i64[1] = 0x20002000200020;
      v24 = v4;
      do
      {
        v25 = vdupq_n_s16(v24 & 0x1F);
        v26 = vsubq_s16(v23, v25);
        v27 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v86[(v24 >> 5) + 8], v26), *&v86[(v24 >> 5) + 9], v25), 5uLL);
        v21[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v86[v24 >> 5], v26), *&v86[(v24 >> 5) + 1], v25), 5uLL);
        v21[-1] = v27;
        result = &v87[v24 >> 5];
        v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*result, v26), *(result + 1), v25), 5uLL);
        v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v88[2 * (v24 >> 5)], v26), *&v88[2 * (v24 >> 5) + 2], v25), 5uLL);
        *v21 = v28;
        v21[1] = v29;
        v24 += v4;
        v21 = (v21 + 2 * a3);
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v30 = v4 >> 5;
    v31 = a4 + 2;
    v32 = 2 * v30;
    v33 = &v88[v32];
    v34 = 32;
    do
    {
      v35 = v33[-2];
      v36 = v33[-1];
      v37 = *v33;
      v31[-2] = v33[-3];
      v31[-1] = v35;
      *v31 = v36;
      v31[1] = v37;
      v33 = (v33 + v32);
      v31 = (v31 + 2 * a3);
      --v34;
    }

    while (v34);
  }

  return result;
}

uint64_t sub_277459190(uint64_t result, _OWORD *a2, uint64_t a3, uint16x8_t *a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 4;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result <= 0x11)
    {
      v7 = a2 + 4;
    }

    else
    {
      v7 = a2;
    }

    v8 = a2[4 * (result < 0x12)];
    v9 = v7[1];
    if (v6 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v10 = (&unk_27750E3C0 + 64 * v6);
    v11 = vqtbl2q_s8(*&v8, v10[2]);
    v12 = vqtbl2q_s8(*&v8, v10[3]);
    v72 = v11;
    v73 = v12;
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v13 = v5[1];
  v14 = v5[2];
  v74 = a2[4 * (result > 0x11)];
  v75[0] = v13;
  v15 = v5[3];
  v75[1] = v14;
  v75[2] = v15;
  v73.i16[7] = *(a2 - 1);
  if ((v4 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v33 = 0;
      v34 = 1;
      v35.i64[0] = 0x20002000200020;
      v35.i64[1] = 0x20002000200020;
      v36 = v4;
      result = 14 * a3;
      do
      {
        v37 = v34;
        v38 = &a4[v33];
        v39 = v38;
        v40 = 8;
        do
        {
          v41 = vdupq_n_s16(v36 & 0x1F);
          v42 = vsubq_s16(v35, v41);
          *v39 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v75[-1] + 2 * (v36 >> 5)), v42), *(&v75[-1] + 2 * (v36 >> 5) + 2), v41), 5uLL);
          v39[a3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v75 + 2 * (v36 >> 5)), v42), *(v75 + 2 * (v36 >> 5) + 2), v41), 5uLL);
          v36 += v4;
          v39 = (v39 + 2 * a3);
          --v40;
        }

        while (v40);
        v43 = 1;
        do
        {
          v44 = (v38 + 2 * v40 * a3);
          v45 = *(v44 + 2 * a3);
          v46 = *(v44 + 4 * a3);
          v47 = *(v44 + 6 * a3);
          v48 = *(v44 + 8 * a3);
          v49 = *(v44 + 10 * a3);
          v50 = *(v44 + 12 * a3);
          v51 = *(v44 + 14 * a3);
          v52 = vtrn1q_s16(*v44, v45);
          v53 = vtrn2q_s16(*v44, v45);
          v54 = vtrn1q_s16(v46, v47);
          v55 = vtrn2q_s16(v46, v47);
          v56 = vtrn1q_s32(v52, v54);
          v57 = vtrn2q_s32(v52, v54);
          v58 = vtrn1q_s32(v53, v55);
          v59 = vtrn2q_s32(v53, v55);
          v60 = vtrn1q_s16(v48, v49);
          v61 = vtrn2q_s16(v48, v49);
          v62 = vtrn1q_s16(v50, v51);
          v63 = vtrn2q_s16(v50, v51);
          v64 = vtrn1q_s32(v60, v62);
          v65 = vtrn2q_s32(v60, v62);
          v66 = vtrn1q_s32(v61, v63);
          v67 = vtrn2q_s32(v61, v63);
          v68 = vzip2q_s64(v56, v64);
          v56.i64[1] = v64.i64[0];
          v69 = vzip2q_s64(v58, v66);
          v58.i64[1] = v66.i64[0];
          v70 = vzip2q_s64(v57, v65);
          v57.i64[1] = v65.i64[0];
          v65.i64[0] = v59.i64[0];
          v65.i64[1] = v67.i64[0];
          *v44 = v56;
          *(v44 + 2 * a3) = v58;
          *(v44 + 4 * a3) = v57;
          *(v44 + 6 * a3) = v65;
          v71 = v43;
          *(v44 + 8 * a3) = v68;
          *(v44 + 10 * a3) = v69;
          *(v44 + 12 * a3) = v70;
          *(v44 + 14 * a3) = vzip2q_s64(v59, v67);
          v40 = 8;
          v43 = 0;
        }

        while ((v71 & 1) != 0);
        v34 = 0;
        v33 = 1;
      }

      while ((v37 & 1) != 0);
    }

    else
    {
      v16 = a4 + 1;
      v17 = 16;
      v18.i64[0] = 0x20002000200020;
      v18.i64[1] = 0x20002000200020;
      v19 = v4;
      do
      {
        v20 = vdupq_n_s16(v19 & 0x1F);
        v21 = vsubq_s16(v18, v20);
        v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v75[-1] + 2 * (v19 >> 5)), v21), *(&v75[-1] + 2 * (v19 >> 5) + 2), v20), 5uLL);
        v23 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v75 + 2 * (v19 >> 5)), v21), *(v75 + 2 * (v19 >> 5) + 2), v20), 5uLL);
        v16[-1] = v22;
        *v16 = v23;
        v19 += v4;
        v16 = (v16 + 2 * a3);
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v24 = v4 >> 4;
    v25 = (v75 + 2 * (v4 >> 5));
    v26 = 2 * v24;
    v27 = (v75 + v26);
    v28 = -2;
    do
    {
      v29 = *v25;
      v30 = *(v27 - 1);
      v31 = *v27;
      *a4 = v25[-1];
      a4[1] = v29;
      v32 = &a4->i8[2 * a3];
      v28 += 2;
      *v32 = v30;
      *(v32 + 1) = v31;
      v25 = (v25 + v26);
      a4 = (a4 + 4 * a3);
      v27 = (v27 + v26);
    }

    while (v28 < 0xE);
  }

  return result;
}

uint64_t sub_2774594B8(uint64_t result, int8x16_t *a2, uint64_t a3, int16x8_t *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 2;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result - 18 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v48 = vqtbl1q_s8(a2[2 * (result < 0x12)], xmmword_27750E3C0[4 * v6 + 3]);
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v7 = a2[2 * (result > 0x11)];
  v8 = v5[1];
  v49[0] = v7;
  v49[1] = v8;
  v48.i16[7] = a2[-1].i16[7];
  if ((v4 & 0x1F) != 0)
  {
    v9 = 8;
    v10.i64[0] = 0x20002000200020;
    v10.i64[1] = 0x20002000200020;
    v11 = a4;
    v12 = v4;
    do
    {
      v13 = vdupq_n_s16(v12 & 0x1F);
      *v11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v49 + 2 * (v12 >> 5)), vsubq_s16(v10, v13)), *(v49 + 2 * (v12 >> 5) + 2), v13), 5uLL);
      v12 += v4;
      v11 = (v11 + 2 * a3);
      --v9;
    }

    while (v9);
    if (result < 0x12)
    {
      v14 = *(a4 + 2 * a3);
      v15 = *(a4 + 4 * a3);
      v16 = *(a4 + 6 * a3);
      v17 = *(a4 + 8 * a3);
      v18 = *(a4 + 10 * a3);
      v19 = *(a4 + 12 * a3);
      v20 = *(a4 + 14 * a3);
      v21 = vtrn1q_s16(*a4, v14);
      v22 = vtrn2q_s16(*a4, v14);
      v23 = vtrn1q_s16(v15, v16);
      v24 = vtrn2q_s16(v15, v16);
      v25 = vtrn1q_s32(v21, v23);
      v26 = vtrn2q_s32(v21, v23);
      v27 = vtrn1q_s32(v22, v24);
      v28 = vtrn2q_s32(v22, v24);
      v29 = vtrn1q_s16(v17, v18);
      v30 = vtrn2q_s16(v17, v18);
      v31 = vtrn1q_s16(v19, v20);
      v32 = vtrn2q_s16(v19, v20);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vzip2q_s64(v25, v33);
      v25.i64[1] = v33.i64[0];
      v37 = vzip2q_s64(v27, v35);
      v27.i64[1] = v35.i64[0];
      v38 = vtrn2q_s32(v30, v32);
      v39 = vzip2q_s64(v26, v34);
      v26.i64[1] = v34.i64[0];
      v40 = vzip2q_s64(v28, v38);
      *a4 = v25;
      *(a4 + 2 * a3) = v27;
      *(a4 + 4 * a3) = v26;
      v28.i64[1] = v38.i64[0];
      *(a4 + 6 * a3) = v28;
      *(a4 + 8 * a3) = v36;
      *(a4 + 10 * a3) = v37;
      *(a4 + 12 * a3) = v39;
      *(a4 + 14 * a3) = v40;
    }
  }

  else
  {
    if (v4 < 0)
    {
      v8 = v48;
      v41 = vextq_s8(v48, v7, 0xEuLL);
      v42 = vextq_s8(v48, v7, 0xCuLL);
      v43 = vextq_s8(v48, v7, 0xAuLL);
      v44 = vextq_s8(v48, v7, 8uLL);
      v45 = vextq_s8(v48, v7, 6uLL);
      v46 = vextq_s8(v48, v7, 4uLL);
      v47 = vextq_s8(v48, v7, 2uLL);
    }

    else
    {
      v41 = vextq_s8(v7, v8, 2uLL);
      v42 = vextq_s8(v7, v8, 4uLL);
      v43 = vextq_s8(v7, v8, 6uLL);
      v44 = vextq_s8(v7, v8, 8uLL);
      v45 = vextq_s8(v7, v8, 0xAuLL);
      v46 = vextq_s8(v7, v8, 0xCuLL);
      v47 = vextq_s8(v7, v8, 0xEuLL);
    }

    *a4 = v41;
    *(a4 + 2 * a3) = v42;
    *(a4 + 4 * a3) = v43;
    *(a4 + 6 * a3) = v44;
    *(a4 + 8 * a3) = v45;
    *(a4 + 10 * a3) = v46;
    *(a4 + 12 * a3) = v47;
    *(a4 + 14 * a3) = v8;
  }

  return result;
}

uint64_t sub_277459730(uint64_t result, int8x16_t *a2, uint64_t a3, unint64_t *a4)
{
  LODWORD(v4) = result - 18;
  v5 = byte_27750DFFA[result];
  if (result - 18 < 0)
  {
    v4 = (18 - result);
  }

  else
  {
    v4 = v4;
  }

  v6 = a2[result > 0x11];
  if ((v5 & 0x1F) != 0)
  {
    if (v5 < 0)
    {
      v12 = a2[result < 0x12];
      v12.i64[1] = *(&a2[-1].i64[1] + 6);
      v13 = &xmmword_27750E3C0[4 * v4 + 3].i64[1];
      v14 = vld1q_dup_f64(v13);
      v12.i64[0] = vqtbl1q_s8(v12, v14).u64[0];
      v12.i64[1] = a2[result > 0x11].i64[0];
      v7 = ~(v5 >> 4);
      v6 = v12;
    }

    else
    {
      v7 = (v5 >> 4) + 6;
    }

    v15 = *(&unk_27750E5C0 + 8 * v7);
    v16 = *(&unk_27750E5C0 + 8 * byte_27750E618[v4 - 1]);
    v17.i64[0] = 0x202020202020202;
    v17.i64[1] = 0x202020202020202;
    v18 = vqtbl1q_s8(v6, vaddq_s8(v15, v17));
    v19 = vqtbl1q_s8(v6, vaddq_s8(v16, v17));
    v20 = vqtbl1q_s8(v6, v15);
    v21 = vqtbl1q_s8(v6, v16);
    v22.i64[0] = 0x1F001F001F001FLL;
    v22.i64[1] = 0x1F001F001F001FLL;
    v23 = vandq_s8(vmull_s8(vdup_n_s8(v5), 0x404030302020101), v22);
    v24 = vzip2q_s32(v23, v23);
    v25 = vzip1q_s32(v23, v23);
    v26.i64[0] = 0x20002000200020;
    v26.i64[1] = 0x20002000200020;
    v27 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v25, v18), vsubq_s16(v26, v25), v20), 5uLL);
    v28 = vsubq_s16(v26, v24);
    v29 = vmlaq_s16(vmulq_s16(v24, v19), v28, v21);
    v30 = vrshrq_n_u16(v29, 5uLL);
    v28.i32[0] = result;
    v29.i32[0] = 18;
    v31 = vdupq_lane_s32(*&vcgtq_u32(v29, v28), 0);
    v32 = vzip1q_s16(v27, v30);
    v33 = vzip2q_s16(v27, v30);
    v6 = vbslq_s8(v31, vzip2q_s16(v32, v33), v30);
    v34 = vbslq_s8(v31, vzip1q_s16(v32, v33), v27);
    *a4 = v34.i64[0];
    *(a4 + 2 * a3) = v34.u64[1];
    *(a4 + 4 * a3) = v6.i64[0];
  }

  else
  {
    if (result == 18)
    {
      v8 = a2[1];
      v6 = vqtbl1q_s8(*(a2 - 2), xmmword_27750D460);
      v9 = vextq_s8(v6, v8, 0xEuLL).u64[0];
      v10 = vextq_s8(v6, v8, 0xCuLL).u64[0];
      v11 = vextq_s8(v6, v8, 0xAuLL).u64[0];
    }

    else
    {
      v9 = vextq_s8(v6, v6, 2uLL).u64[0];
      v10 = vextq_s8(v6, v6, 4uLL).u64[0];
      v11 = vextq_s8(v6, v6, 6uLL).u64[0];
    }

    *a4 = v9;
    *(a4 + 2 * a3) = v10;
    *(a4 + 4 * a3) = v11;
  }

  *(a4 + 6 * a3) = v6.u64[1];
  return result;
}

int16x8_t sub_2774598D4(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 4;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-4] = result;
    v5[-3] = result;
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v5[2] = result;
    v5[3] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 128);
  return result;
}

int16x8_t sub_27745990C(uint64_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_s16(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 2;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

int16x8_t sub_27745993C(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = vld1q_dup_s16(a2->i16);
  v7 = a2[5];
  v8.i64[0] = 0xFF00FF00FF00FFLL;
  v8.i64[1] = 0xFF00FF00FF00FFLL;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(a2[4], v5), 1uLL), 0), v8);
  v9 = 4 * a3;
  a4[1] = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(v7, v5), 1uLL), 0), v8);
  v10 = &a2->i16[2];
  v11 = (a4 + 4 * a3 + 16);
  v12 = (a4 + 2 * a3 + 16);
  v13 = -1;
  do
  {
    v14 = v10 - 1;
    v15 = vld1q_dup_s16(v14);
    v16 = vld1q_dup_s16(v10);
    v12[-1] = v15;
    *v12 = v15;
    v13 += 2;
    v11[-1] = v16;
    *v11 = v16;
    v10 += 2;
    v11 = (v11 + v9);
    v12 = (v12 + v9);
  }

  while (v13 < 0xD);
  v17 = &a2[1].i16[7];
  result = vld1q_dup_s16(v17);
  v19 = 30 * a3;
  *(a4 + v19) = result;
  *(a4 + v19 + 16) = result;
  return result;
}

int16x8_t sub_2774599E0(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xFF00FF00FF00FFLL;
  v7.i64[1] = 0xFF00FF00FF00FFLL;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2->i8, 0), vsubq_s16(a2[2], v5), 1uLL), 0), v7);
  *(a4 + 2 * a3) = vdupq_lane_s16(*v6.i8, 1);
  *(a4 + 4 * a3) = vdupq_lane_s16(*v6.i8, 2);
  *(a4 + 6 * a3) = vdupq_lane_s16(*v6.i8, 3);
  *(a4 + 8 * a3) = vdupq_laneq_s16(v6, 4);
  *(a4 + 10 * a3) = vdupq_laneq_s16(v6, 5);
  *(a4 + 12 * a3) = vdupq_laneq_s16(v6, 6);
  result = vdupq_laneq_s16(v6, 7);
  *(a4 + 14 * a3) = result;
  return result;
}

int16x4_t sub_277459A78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xFF00FF00FF00FFLL;
  v7.i64[1] = 0xFF00FF00FF00FFLL;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2, 0), vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v7).u64[0];
  *(a4 + 2 * a3) = vdup_lane_s16(v6, 1);
  *(a4 + 4 * a3) = vdup_lane_s16(v6, 2);
  result = vdup_lane_s16(v6, 3);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_277459AD4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[16];
  v5 = a2[17];
  v6 = a2[18];
  v7 = a2[19];
  v8 = a2[20];
  v9 = a2[21];
  v10 = (a4 + 64);
  v11 = 64;
  v12 = a2[22];
  v13 = a2[23];
  do
  {
    *(v10 - 4) = v4;
    *(v10 - 3) = v5;
    *(v10 - 2) = v6;
    *(v10 - 1) = v7;
    *v10 = v8;
    v10[1] = v9;
    v10[2] = v12;
    v10[3] = v13;
    v10 = (v10 + 2 * a3);
    --v11;
  }

  while (v11);
}

void sub_277459B10(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[8];
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[11];
  v8 = (a4 + 32);
  v9 = 32;
  do
  {
    *(v8 - 2) = v4;
    *(v8 - 1) = v5;
    *v8 = v6;
    v8[1] = v7;
    v8 = (v8 + 2 * a3);
    --v9;
  }

  while (v9);
}

void sub_277459B3C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = vdupq_lane_s16(*&v6, 0);
  v9.i64[0] = 0xFF00FF00FF00FFLL;
  v9.i64[1] = 0xFF00FF00FF00FFLL;
  v10 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*a2, v5), 1uLL), 0), v9);
  v11 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v9);
  v12 = v6;
  LOWORD(v12) = v10.i16[0];
  *a4 = v12;
  v13 = v6;
  LOWORD(v13) = v11.i16[0];
  a4[a3] = v13;
  a4[1] = v7;
  v14 = a4 + 1;
  v14[a3] = v7;
  v15 = (v14 + 18 * a3);
  v16 = 2 * a3;
  v17 = (v14 + 2 * a3);
  v18 = 7;
  do
  {
    v10 = vextq_s8(v10, v10, 2uLL);
    v11 = vextq_s8(v11, v11, 2uLL);
    v19 = v6;
    LOWORD(v19) = v10.i16[0];
    *(v17 - 1) = v19;
    v20 = v6;
    LOWORD(v20) = v11.i16[0];
    *(v15 - 1) = v20;
    *v17 = v7;
    *v15 = v7;
    v15 = (v15 + v16);
    v17 = (v17 + v16);
    --v18;
  }

  while (v18);
}

double sub_277459BEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 32);
  v7.i64[0] = 0xFF00FF00FF00FFLL;
  v7.i64[1] = 0xFF00FF00FF00FFLL;
  v8 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*&v6, 0), vsubq_s16(*a2, v5), 1uLL), 0), v7);
  v9 = v6;
  LOWORD(v9) = v8.i16[0];
  *a4 = v9;
  v10 = v6;
  LOWORD(v10) = vdupq_lane_s16(*v8.i8, 1).u16[0];
  *(a4 + 2 * a3) = v10;
  v11 = v6;
  LOWORD(v11) = vdupq_lane_s16(*v8.i8, 2).u16[0];
  *(a4 + 4 * a3) = v11;
  v12 = v6;
  LOWORD(v12) = vdupq_lane_s16(*v8.i8, 3).u16[0];
  *(a4 + 6 * a3) = v12;
  v13 = v6;
  LOWORD(v13) = vdupq_laneq_s16(v8, 4).u16[0];
  *(a4 + 8 * a3) = v13;
  v14 = v6;
  LOWORD(v14) = vdupq_laneq_s16(v8, 5).u16[0];
  *(a4 + 10 * a3) = v14;
  v15 = v6;
  LOWORD(v15) = vdupq_laneq_s16(v8, 6).u16[0];
  *(a4 + 12 * a3) = v15;
  *&result = vdupq_laneq_s16(v8, 7).u64[0];
  LOWORD(v6) = LOWORD(result);
  *(a4 + 14 * a3) = v6;
  return result;
}

int8x16_t sub_277459CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  *v5.i8 = vmin_s16(vmax_s16(vadd_s16(*&vshrq_n_s16(vsubq_s16(*a2, v5), 1uLL), *&vdupq_lane_s16(*(a2 + 16), 0)), 0), 0xFF00FF00FF00FFLL);
  v5.i64[1] = *(a2 + 16);
  v6 = vqtbl1q_s8(v5, xmmword_27750D470);
  result = vqtbl1q_s8(v5, xmmword_27750D480);
  *a4 = v6.i64[0];
  *(a4 + 2 * a3) = v6.i64[1];
  *(a4 + 4 * a3) = result.i64[0];
  *(a4 + 6 * a3) = result.i64[1];
  return result;
}

void sub_277459D2C(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  i16 = a2[1].i16;
  v5 = vld1q_dup_s16(i16);
  v6 = a2[3].i16;
  v7 = vld1q_dup_s16(v6);
  v8 = vmulq_s16(v7, xmmword_27750D420);
  v9 = a2[2];
  v10 = vshlq_n_s16(v9, 3uLL);
  v11 = &a2->i16[1];
  v12 = -2;
  v13 = v5;
  do
  {
    v14 = v11 - 1;
    v15 = vld1q_dup_s16(v14);
    v16 = vsubq_s16(v10, v9);
    *a4 = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v16, v8), v13), v15, xmmword_27750D410), 4uLL);
    v17 = vaddq_s16(v13, v5);
    v18 = vld1q_dup_s16(v11);
    v10 = vsubq_s16(v16, v9);
    *(a4 + 2 * a3) = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v10, v8), v17), v18, xmmword_27750D410), 4uLL);
    v13 = vaddq_s16(v17, v5);
    v12 += 2;
    a4 = (a4 + 4 * a3);
    v11 += 2;
  }

  while (v12 < 6);
}

uint16x8_t sub_277459DC8(uint64_t a1, int8x16x2_t *a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  v4 = vmulq_s16(vqtbl2q_s8(*a2, xmmword_27750D490), xmmword_27750D4A0);
  v5 = vdupq_laneq_s64(v4, 1);
  v6 = vdupq_lane_s64(v9.val[1].i64[0], 0);
  v7 = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vmlaq_s16(vqtbl1q_s8(v4, xmmword_27750D4B0), vqtbl1q_s8(xmmword_27750D4D0, xmmword_27750D4B0), v6), v5), vqtbl1q_s8(a2->val[0], xmmword_27750D4B0), xmmword_27750D4D0), 3uLL);
  result = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vmlaq_s16(vqtbl1q_s8(v4, xmmword_27750D4C0), vqtbl1q_s8(xmmword_27750D4D0, xmmword_27750D4C0), v6), v5), vqtbl1q_s8(a2->val[0], xmmword_27750D4C0), xmmword_27750D4D0), 3uLL);
  *a4 = v7.i64[0];
  *(a4 + 2 * a3) = v7.i64[1];
  *(a4 + 4 * a3) = result.i64[0];
  *(a4 + 6 * a3) = result.i64[1];
  return result;
}

int8x16_t sub_277459E60(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = a2[2];
  v5 = vaddq_s16(v4, *a2);
  v6 = vpaddq_s16(v5, v5);
  v7 = vpaddq_s16(v6, v6);
  v8 = vpaddq_s16(v7, v7);
  v9 = vrshrq_n_u16(v8, 4uLL);
  v10 = vaddq_s16(v9, v9);
  v11 = vrsraq_n_u16(v4, v8, 4uLL);
  v12 = vrsraq_n_u16(*a2, v8, 4uLL);
  v13 = vaddq_s16(v12, v10);
  v10.i16[0] = v12.i16[0];
  v14 = vrshrq_n_u16(vaddq_s16(v11, v10), 2uLL);
  v15 = vrshrq_n_u16(v13, 2uLL);
  v16 = vextq_s8(v15, v9, 2uLL);
  *a4 = v14;
  *(a4 + 2 * a3) = vqtbl1q_s8(v16, xmmword_27750D4E0);
  *(a4 + 4 * a3) = vqtbl1q_s8(v16, xmmword_27750D4F0);
  *(a4 + 6 * a3) = vqtbl1q_s8(v16, xmmword_27750D500);
  *(a4 + 8 * a3) = vqtbl1q_s8(v16, xmmword_27750D510);
  *(a4 + 10 * a3) = vqtbl1q_s8(v16, xmmword_27750D520);
  result = vextq_s8(v15, v9, 0xEuLL);
  *(a4 + 12 * a3) = vqtbl1q_s8(v16, xmmword_27750D530);
  *(a4 + 14 * a3) = result;
  return result;
}

uint16x8_t sub_277459F3C(uint64_t a1, int16x8_t *a2, uint64_t a3, void *a4)
{
  v4 = a2[1];
  v5 = vdupq_lane_s64(vaddq_s16(v4, *a2).i64[0], 0);
  v6 = vpaddq_s16(v5, v5);
  v7 = vrshrq_n_u16(vpaddq_s16(v6, v6), 3uLL);
  v8 = vaddq_s16(v7, v7);
  *v4.i8 = vadd_s16(*v7.i8, *v4.i8);
  v4.i64[1] = v8.i64[0];
  *v9.i8 = vadd_s16(*v7.i8, *a2->i8);
  v9.i64[1] = v8.i64[0];
  v10 = vqtbl1q_s8(v9, xmmword_27750D480);
  result = vrshrq_n_u16(vaddq_s16(v4, vqtbl1q_s8(v9, xmmword_27750D470)), 2uLL);
  v12 = vrshrq_n_u16(vaddq_s16(v8, v10), 2uLL);
  *a4 = result.i64[0];
  *(a4 + 2 * a3) = result.i64[1];
  *(a4 + 4 * a3) = v12.i64[0];
  *(a4 + 6 * a3) = v12.i64[1];
  return result;
}

uint16x8_t sub_277459FB4(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = vdupq_n_s16(v2);
  a2[-1].i16[7] = (a1->u16[0] + 2 * v2 + a1[8].u16[0] + 2) >> 2;
  v4 = a1[7].i16[7];
  v5 = a1[15].i16[7];
  v6 = *a1;
  v7 = a1[8];
  v8 = a2 + 8;
  v9 = a1 + 9;
  v10 = -8;
  v11 = v3;
  do
  {
    v12 = v7;
    v13 = v6;
    v6 = v9[-8];
    v14 = *v9++;
    v7 = v14;
    v8[-8] = vrhaddq_u16(vhaddq_u16(vextq_s8(v3, v13, 0xEuLL), vextq_s8(v13, v6, 2uLL)), v13);
    v10 += 8;
    *v8++ = vrhaddq_u16(vhaddq_u16(vextq_s8(v11, v12, 0xEuLL), vextq_s8(v12, v14, 2uLL)), v12);
    v3 = v13;
    v11 = v12;
  }

  while (v10 < 0x30);
  a2[7] = vrhaddq_u16(vhaddq_u16(vextq_s8(v13, v6, 0xEuLL), vextq_s8(v6, v6, 2uLL)), v6);
  result = vrhaddq_u16(vhaddq_u16(vextq_s8(v12, v7, 0xEuLL), vextq_s8(v7, v7, 2uLL)), v7);
  a2[15] = result;
  a2[7].i16[7] = v4;
  a2[15].i16[7] = v5;
  return result;
}

int32x4_t sub_27745A078(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = a1[7].u16[7];
  v4 = v3 + v2 - 2 * a1[3].u16[7];
  if (v4 < 0)
  {
    v4 = 2 * a1[3].u16[7] - (v3 + v2);
  }

  if (v4 > 7)
  {
    goto LABEL_7;
  }

  v5 = a1[15].u16[7];
  v6 = v5 + v2 - 2 * a1[11].u16[7];
  if (v6 < 0)
  {
    v6 = 2 * a1[11].u16[7] - (v5 + v2);
  }

  if (v6 < 8)
  {
    a2[-1].i16[7] = v2;
    v8 = vdup_n_s16(v5 - v2);
    result = vmull_s16(v8, 0x4000300020001);
    v9 = vmull_s16(v8, 0x8000700060005);
    v10 = vdup_n_s16(v3 - v2);
    v11 = vmull_s16(v10, 0x4000300020001);
    v12 = vmull_s16(v10, 0x8000700060005);
    v13 = vshll_n_s16(v8, 3uLL);
    v14 = vshll_n_s16(v10, 3uLL);
    v15 = &a2[8];
    v16 = vdupq_n_s16(v2);
    v17 = -8;
    do
    {
      *v15 = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(result, 6uLL), vrshrq_n_s32(v9, 6uLL)));
      v15[-8] = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(v11, 6uLL), vrshrq_n_s32(v12, 6uLL)));
      result = vaddq_s32(result, v13);
      v9 = vaddq_s32(v9, v13);
      v11 = vaddq_s32(v11, v14);
      v12 = vaddq_s32(v12, v14);
      v17 += 8;
      ++v15;
    }

    while (v17 < 0x38);
  }

  else
  {
LABEL_7:
    result.i64[0] = sub_277459FB4(a1, a2).u64[0];
  }

  return result;
}

uint16x8_t sub_27745A154(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = vdupq_n_s16(v2);
  a2[-1].i16[7] = (a1->u16[0] + 2 * v2 + a1[4].u16[0] + 2) >> 2;
  v4 = a1[3].i16[7];
  v5 = a1[7].i16[7];
  v6 = *a1;
  v7 = a1[4];
  v8 = a2 + 4;
  v9 = a1 + 5;
  v10 = -8;
  v11 = v3;
  do
  {
    v12 = v7;
    v13 = v6;
    v6 = v9[-4];
    v14 = *v9++;
    v7 = v14;
    v8[-4] = vrhaddq_u16(vhaddq_u16(vextq_s8(v3, v13, 0xEuLL), vextq_s8(v13, v6, 2uLL)), v13);
    v10 += 8;
    *v8++ = vrhaddq_u16(vhaddq_u16(vextq_s8(v11, v12, 0xEuLL), vextq_s8(v12, v14, 2uLL)), v12);
    v3 = v13;
    v11 = v12;
  }

  while (v10 < 0x10);
  a2[3] = vrhaddq_u16(vhaddq_u16(vextq_s8(v13, v6, 0xEuLL), vextq_s8(v6, v6, 2uLL)), v6);
  result = vrhaddq_u16(vhaddq_u16(vextq_s8(v12, v7, 0xEuLL), vextq_s8(v7, v7, 2uLL)), v7);
  a2[7] = result;
  a2[3].i16[7] = v4;
  a2[7].i16[7] = v5;
  return result;
}

uint16x8_t sub_27745A218(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = vdupq_n_s16(v2);
  a2[-1].i16[7] = (a1->u16[0] + 2 * v2 + a1[2].u16[0] + 2) >> 2;
  LOWORD(v2) = a1[1].i16[7];
  v4 = a1[3].u16[7];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = vrhaddq_u16(vhaddq_u16(vextq_s8(v3, *a1, 0xEuLL), vextq_s8(*a1, v5, 2uLL)), *a1);
  result = vrhaddq_u16(vhaddq_u16(vextq_s8(v3, v6, 0xEuLL), vextq_s8(v6, v7, 2uLL)), v6);
  v10 = vrhaddq_u16(vhaddq_u16(vextq_s8(*a1, v5, 0xEuLL), vextq_s8(v5, v5, 2uLL)), v5);
  *a2 = v8;
  a2[1] = v10;
  a2[2] = result;
  a2[3] = vrhaddq_u16(vhaddq_u16(vextq_s8(v6, v7, 0xEuLL), vextq_s8(v7, v7, 2uLL)), v7);
  a2[1].i16[7] = v2;
  a2[3].i16[7] = v4;
  return result;
}

int16x8_t sub_27745A2A0(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = vld1q_dup_s16(a2->i16);
  v7 = a2[5];
  v8.i64[0] = 0xFE00FE00FE00FE00;
  v8.i64[1] = 0xFE00FE00FE00FE00;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(a2[4], v5), 1uLL), 0), v8);
  v9 = 4 * a3;
  a4[1] = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(v7, v5), 1uLL), 0), v8);
  v10 = &a2->i16[2];
  v11 = (a4 + 4 * a3 + 16);
  v12 = (a4 + 2 * a3 + 16);
  v13 = -1;
  do
  {
    v14 = v10 - 1;
    v15 = vld1q_dup_s16(v14);
    v16 = vld1q_dup_s16(v10);
    v12[-1] = v15;
    *v12 = v15;
    v13 += 2;
    v11[-1] = v16;
    *v11 = v16;
    v10 += 2;
    v11 = (v11 + v9);
    v12 = (v12 + v9);
  }

  while (v13 < 0xD);
  v17 = &a2[1].i16[7];
  result = vld1q_dup_s16(v17);
  v19 = 30 * a3;
  *(a4 + v19) = result;
  *(a4 + v19 + 16) = result;
  return result;
}

int16x8_t sub_27745A344(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xFE00FE00FE00FE00;
  v7.i64[1] = 0xFE00FE00FE00FE00;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2->i8, 0), vsubq_s16(a2[2], v5), 1uLL), 0), v7);
  *(a4 + 2 * a3) = vdupq_lane_s16(*v6.i8, 1);
  *(a4 + 4 * a3) = vdupq_lane_s16(*v6.i8, 2);
  *(a4 + 6 * a3) = vdupq_lane_s16(*v6.i8, 3);
  *(a4 + 8 * a3) = vdupq_laneq_s16(v6, 4);
  *(a4 + 10 * a3) = vdupq_laneq_s16(v6, 5);
  *(a4 + 12 * a3) = vdupq_laneq_s16(v6, 6);
  result = vdupq_laneq_s16(v6, 7);
  *(a4 + 14 * a3) = result;
  return result;
}

int16x4_t sub_27745A3DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xFE00FE00FE00FE00;
  v7.i64[1] = 0xFE00FE00FE00FE00;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2, 0), vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v7).u64[0];
  *(a4 + 2 * a3) = vdup_lane_s16(v6, 1);
  *(a4 + 4 * a3) = vdup_lane_s16(v6, 2);
  result = vdup_lane_s16(v6, 3);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745A438(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = vdupq_lane_s16(*&v6, 0);
  v9.i64[0] = 0xFE00FE00FE00FE00;
  v9.i64[1] = 0xFE00FE00FE00FE00;
  v10 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*a2, v5), 1uLL), 0), v9);
  v11 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v9);
  v12 = v6;
  LOWORD(v12) = v10.i16[0];
  *a4 = v12;
  v13 = v6;
  LOWORD(v13) = v11.i16[0];
  a4[a3] = v13;
  a4[1] = v7;
  v14 = a4 + 1;
  v14[a3] = v7;
  v15 = (v14 + 18 * a3);
  v16 = 2 * a3;
  v17 = (v14 + 2 * a3);
  v18 = 7;
  do
  {
    v10 = vextq_s8(v10, v10, 2uLL);
    v11 = vextq_s8(v11, v11, 2uLL);
    v19 = v6;
    LOWORD(v19) = v10.i16[0];
    *(v17 - 1) = v19;
    v20 = v6;
    LOWORD(v20) = v11.i16[0];
    *(v15 - 1) = v20;
    *v17 = v7;
    *v15 = v7;
    v15 = (v15 + v16);
    v17 = (v17 + v16);
    --v18;
  }

  while (v18);
}

double sub_27745A4E8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 32);
  v7.i64[0] = 0xFE00FE00FE00FE00;
  v7.i64[1] = 0xFE00FE00FE00FE00;
  v8 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*&v6, 0), vsubq_s16(*a2, v5), 1uLL), 0), v7);
  v9 = v6;
  LOWORD(v9) = v8.i16[0];
  *a4 = v9;
  v10 = v6;
  LOWORD(v10) = vdupq_lane_s16(*v8.i8, 1).u16[0];
  *(a4 + 2 * a3) = v10;
  v11 = v6;
  LOWORD(v11) = vdupq_lane_s16(*v8.i8, 2).u16[0];
  *(a4 + 4 * a3) = v11;
  v12 = v6;
  LOWORD(v12) = vdupq_lane_s16(*v8.i8, 3).u16[0];
  *(a4 + 6 * a3) = v12;
  v13 = v6;
  LOWORD(v13) = vdupq_laneq_s16(v8, 4).u16[0];
  *(a4 + 8 * a3) = v13;
  v14 = v6;
  LOWORD(v14) = vdupq_laneq_s16(v8, 5).u16[0];
  *(a4 + 10 * a3) = v14;
  v15 = v6;
  LOWORD(v15) = vdupq_laneq_s16(v8, 6).u16[0];
  *(a4 + 12 * a3) = v15;
  *&result = vdupq_laneq_s16(v8, 7).u64[0];
  LOWORD(v6) = LOWORD(result);
  *(a4 + 14 * a3) = v6;
  return result;
}

int8x16_t sub_27745A5BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  *v5.i8 = vmin_s16(vmax_s16(vadd_s16(*&vshrq_n_s16(vsubq_s16(*a2, v5), 1uLL), *&vdupq_lane_s16(*(a2 + 16), 0)), 0), 0xFE00FE00FE00FE00);
  v5.i64[1] = *(a2 + 16);
  v6 = vqtbl1q_s8(v5, xmmword_27750D470);
  result = vqtbl1q_s8(v5, xmmword_27750D480);
  *a4 = v6.i64[0];
  *(a4 + 2 * a3) = v6.i64[1];
  *(a4 + 4 * a3) = result.i64[0];
  *(a4 + 6 * a3) = result.i64[1];
  return result;
}

int32x4_t sub_27745A628(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = a1[7].u16[7];
  v4 = v3 + v2 - 2 * a1[3].u16[7];
  if (v4 < 0)
  {
    v4 = 2 * a1[3].u16[7] - (v3 + v2);
  }

  if (v4 > 0xF)
  {
    goto LABEL_7;
  }

  v5 = a1[15].u16[7];
  v6 = v5 + v2 - 2 * a1[11].u16[7];
  if (v6 < 0)
  {
    v6 = 2 * a1[11].u16[7] - (v5 + v2);
  }

  if (v6 < 0x10)
  {
    a2[-1].i16[7] = v2;
    v8 = vdup_n_s16(v5 - v2);
    result = vmull_s16(v8, 0x4000300020001);
    v9 = vmull_s16(v8, 0x8000700060005);
    v10 = vdup_n_s16(v3 - v2);
    v11 = vmull_s16(v10, 0x4000300020001);
    v12 = vmull_s16(v10, 0x8000700060005);
    v13 = vshll_n_s16(v8, 3uLL);
    v14 = vshll_n_s16(v10, 3uLL);
    v15 = &a2[8];
    v16 = vdupq_n_s16(v2);
    v17 = -8;
    do
    {
      *v15 = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(result, 6uLL), vrshrq_n_s32(v9, 6uLL)));
      v15[-8] = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(v11, 6uLL), vrshrq_n_s32(v12, 6uLL)));
      result = vaddq_s32(result, v13);
      v9 = vaddq_s32(v9, v13);
      v11 = vaddq_s32(v11, v14);
      v12 = vaddq_s32(v12, v14);
      v17 += 8;
      ++v15;
    }

    while (v17 < 0x38);
  }

  else
  {
LABEL_7:
    result.i64[0] = sub_277459FB4(a1, a2).u64[0];
  }

  return result;
}

int16x8_t sub_27745A704(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = vld1q_dup_s16(a2->i16);
  v7 = a2[5];
  v8.i64[0] = 0xFC00FC00FC00FC00;
  v8.i64[1] = 0xFC00FC00FC00FC00;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(a2[4], v5), 1uLL), 0), v8);
  v9 = 4 * a3;
  a4[1] = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(v7, v5), 1uLL), 0), v8);
  v10 = &a2->i16[2];
  v11 = (a4 + 4 * a3 + 16);
  v12 = (a4 + 2 * a3 + 16);
  v13 = -1;
  do
  {
    v14 = v10 - 1;
    v15 = vld1q_dup_s16(v14);
    v16 = vld1q_dup_s16(v10);
    v12[-1] = v15;
    *v12 = v15;
    v13 += 2;
    v11[-1] = v16;
    *v11 = v16;
    v10 += 2;
    v11 = (v11 + v9);
    v12 = (v12 + v9);
  }

  while (v13 < 0xD);
  v17 = &a2[1].i16[7];
  result = vld1q_dup_s16(v17);
  v19 = 30 * a3;
  *(a4 + v19) = result;
  *(a4 + v19 + 16) = result;
  return result;
}

int16x8_t sub_27745A7A8(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xFC00FC00FC00FC00;
  v7.i64[1] = 0xFC00FC00FC00FC00;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2->i8, 0), vsubq_s16(a2[2], v5), 1uLL), 0), v7);
  *(a4 + 2 * a3) = vdupq_lane_s16(*v6.i8, 1);
  *(a4 + 4 * a3) = vdupq_lane_s16(*v6.i8, 2);
  *(a4 + 6 * a3) = vdupq_lane_s16(*v6.i8, 3);
  *(a4 + 8 * a3) = vdupq_laneq_s16(v6, 4);
  *(a4 + 10 * a3) = vdupq_laneq_s16(v6, 5);
  *(a4 + 12 * a3) = vdupq_laneq_s16(v6, 6);
  result = vdupq_laneq_s16(v6, 7);
  *(a4 + 14 * a3) = result;
  return result;
}

int16x4_t sub_27745A840(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xFC00FC00FC00FC00;
  v7.i64[1] = 0xFC00FC00FC00FC00;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2, 0), vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v7).u64[0];
  *(a4 + 2 * a3) = vdup_lane_s16(v6, 1);
  *(a4 + 4 * a3) = vdup_lane_s16(v6, 2);
  result = vdup_lane_s16(v6, 3);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745A89C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = vdupq_lane_s16(*&v6, 0);
  v9.i64[0] = 0xFC00FC00FC00FC00;
  v9.i64[1] = 0xFC00FC00FC00FC00;
  v10 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*a2, v5), 1uLL), 0), v9);
  v11 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v9);
  v12 = v6;
  LOWORD(v12) = v10.i16[0];
  *a4 = v12;
  v13 = v6;
  LOWORD(v13) = v11.i16[0];
  a4[a3] = v13;
  a4[1] = v7;
  v14 = a4 + 1;
  v14[a3] = v7;
  v15 = (v14 + 18 * a3);
  v16 = 2 * a3;
  v17 = (v14 + 2 * a3);
  v18 = 7;
  do
  {
    v10 = vextq_s8(v10, v10, 2uLL);
    v11 = vextq_s8(v11, v11, 2uLL);
    v19 = v6;
    LOWORD(v19) = v10.i16[0];
    *(v17 - 1) = v19;
    v20 = v6;
    LOWORD(v20) = v11.i16[0];
    *(v15 - 1) = v20;
    *v17 = v7;
    *v15 = v7;
    v15 = (v15 + v16);
    v17 = (v17 + v16);
    --v18;
  }

  while (v18);
}

double sub_27745A94C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 32);
  v7.i64[0] = 0xFC00FC00FC00FC00;
  v7.i64[1] = 0xFC00FC00FC00FC00;
  v8 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*&v6, 0), vsubq_s16(*a2, v5), 1uLL), 0), v7);
  v9 = v6;
  LOWORD(v9) = v8.i16[0];
  *a4 = v9;
  v10 = v6;
  LOWORD(v10) = vdupq_lane_s16(*v8.i8, 1).u16[0];
  *(a4 + 2 * a3) = v10;
  v11 = v6;
  LOWORD(v11) = vdupq_lane_s16(*v8.i8, 2).u16[0];
  *(a4 + 4 * a3) = v11;
  v12 = v6;
  LOWORD(v12) = vdupq_lane_s16(*v8.i8, 3).u16[0];
  *(a4 + 6 * a3) = v12;
  v13 = v6;
  LOWORD(v13) = vdupq_laneq_s16(v8, 4).u16[0];
  *(a4 + 8 * a3) = v13;
  v14 = v6;
  LOWORD(v14) = vdupq_laneq_s16(v8, 5).u16[0];
  *(a4 + 10 * a3) = v14;
  v15 = v6;
  LOWORD(v15) = vdupq_laneq_s16(v8, 6).u16[0];
  *(a4 + 12 * a3) = v15;
  *&result = vdupq_laneq_s16(v8, 7).u64[0];
  LOWORD(v6) = LOWORD(result);
  *(a4 + 14 * a3) = v6;
  return result;
}

int8x16_t sub_27745AA20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  *v5.i8 = vmin_s16(vmax_s16(vadd_s16(*&vshrq_n_s16(vsubq_s16(*a2, v5), 1uLL), *&vdupq_lane_s16(*(a2 + 16), 0)), 0), 0xFC00FC00FC00FC00);
  v5.i64[1] = *(a2 + 16);
  v6 = vqtbl1q_s8(v5, xmmword_27750D470);
  result = vqtbl1q_s8(v5, xmmword_27750D480);
  *a4 = v6.i64[0];
  *(a4 + 2 * a3) = v6.i64[1];
  *(a4 + 4 * a3) = result.i64[0];
  *(a4 + 6 * a3) = result.i64[1];
  return result;
}

int32x4_t sub_27745AA8C(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = a1[7].u16[7];
  v4 = v3 + v2 - 2 * a1[3].u16[7];
  if (v4 < 0)
  {
    v4 = 2 * a1[3].u16[7] - (v3 + v2);
  }

  if (v4 > 0x1F)
  {
    goto LABEL_7;
  }

  v5 = a1[15].u16[7];
  v6 = v5 + v2 - 2 * a1[11].u16[7];
  if (v6 < 0)
  {
    v6 = 2 * a1[11].u16[7] - (v5 + v2);
  }

  if (v6 < 0x20)
  {
    a2[-1].i16[7] = v2;
    v8 = vdup_n_s16(v5 - v2);
    result = vmull_s16(v8, 0x4000300020001);
    v9 = vmull_s16(v8, 0x8000700060005);
    v10 = vdup_n_s16(v3 - v2);
    v11 = vmull_s16(v10, 0x4000300020001);
    v12 = vmull_s16(v10, 0x8000700060005);
    v13 = vshll_n_s16(v8, 3uLL);
    v14 = vshll_n_s16(v10, 3uLL);
    v15 = &a2[8];
    v16 = vdupq_n_s16(v2);
    v17 = -8;
    do
    {
      *v15 = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(result, 6uLL), vrshrq_n_s32(v9, 6uLL)));
      v15[-8] = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(v11, 6uLL), vrshrq_n_s32(v12, 6uLL)));
      result = vaddq_s32(result, v13);
      v9 = vaddq_s32(v9, v13);
      v11 = vaddq_s32(v11, v14);
      v12 = vaddq_s32(v12, v14);
      v17 += 8;
      ++v15;
    }

    while (v17 < 0x38);
  }

  else
  {
LABEL_7:
    result.i64[0] = sub_277459FB4(a1, a2).u64[0];
  }

  return result;
}

int16x8_t sub_27745AB68(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = vld1q_dup_s16(a2->i16);
  v7 = a2[5];
  v8.i64[0] = 0xF800F800F800F800;
  v8.i64[1] = 0xF800F800F800F800;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(a2[4], v5), 1uLL), 0), v8);
  v9 = 4 * a3;
  a4[1] = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(v7, v5), 1uLL), 0), v8);
  v10 = &a2->i16[2];
  v11 = (a4 + 4 * a3 + 16);
  v12 = (a4 + 2 * a3 + 16);
  v13 = -1;
  do
  {
    v14 = v10 - 1;
    v15 = vld1q_dup_s16(v14);
    v16 = vld1q_dup_s16(v10);
    v12[-1] = v15;
    *v12 = v15;
    v13 += 2;
    v11[-1] = v16;
    *v11 = v16;
    v10 += 2;
    v11 = (v11 + v9);
    v12 = (v12 + v9);
  }

  while (v13 < 0xD);
  v17 = &a2[1].i16[7];
  result = vld1q_dup_s16(v17);
  v19 = 30 * a3;
  *(a4 + v19) = result;
  *(a4 + v19 + 16) = result;
  return result;
}

int16x8_t sub_27745AC0C(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xF800F800F800F800;
  v7.i64[1] = 0xF800F800F800F800;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2->i8, 0), vsubq_s16(a2[2], v5), 1uLL), 0), v7);
  *(a4 + 2 * a3) = vdupq_lane_s16(*v6.i8, 1);
  *(a4 + 4 * a3) = vdupq_lane_s16(*v6.i8, 2);
  *(a4 + 6 * a3) = vdupq_lane_s16(*v6.i8, 3);
  *(a4 + 8 * a3) = vdupq_laneq_s16(v6, 4);
  *(a4 + 10 * a3) = vdupq_laneq_s16(v6, 5);
  *(a4 + 12 * a3) = vdupq_laneq_s16(v6, 6);
  result = vdupq_laneq_s16(v6, 7);
  *(a4 + 14 * a3) = result;
  return result;
}

int16x4_t sub_27745ACA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xF800F800F800F800;
  v7.i64[1] = 0xF800F800F800F800;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2, 0), vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v7).u64[0];
  *(a4 + 2 * a3) = vdup_lane_s16(v6, 1);
  *(a4 + 4 * a3) = vdup_lane_s16(v6, 2);
  result = vdup_lane_s16(v6, 3);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745AD00(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = vdupq_lane_s16(*&v6, 0);
  v9.i64[0] = 0xF800F800F800F800;
  v9.i64[1] = 0xF800F800F800F800;
  v10 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*a2, v5), 1uLL), 0), v9);
  v11 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v9);
  v12 = v6;
  LOWORD(v12) = v10.i16[0];
  *a4 = v12;
  v13 = v6;
  LOWORD(v13) = v11.i16[0];
  a4[a3] = v13;
  a4[1] = v7;
  v14 = a4 + 1;
  v14[a3] = v7;
  v15 = (v14 + 18 * a3);
  v16 = 2 * a3;
  v17 = (v14 + 2 * a3);
  v18 = 7;
  do
  {
    v10 = vextq_s8(v10, v10, 2uLL);
    v11 = vextq_s8(v11, v11, 2uLL);
    v19 = v6;
    LOWORD(v19) = v10.i16[0];
    *(v17 - 1) = v19;
    v20 = v6;
    LOWORD(v20) = v11.i16[0];
    *(v15 - 1) = v20;
    *v17 = v7;
    *v15 = v7;
    v15 = (v15 + v16);
    v17 = (v17 + v16);
    --v18;
  }

  while (v18);
}

double sub_27745ADB0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 32);
  v7.i64[0] = 0xF800F800F800F800;
  v7.i64[1] = 0xF800F800F800F800;
  v8 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*&v6, 0), vsubq_s16(*a2, v5), 1uLL), 0), v7);
  v9 = v6;
  LOWORD(v9) = v8.i16[0];
  *a4 = v9;
  v10 = v6;
  LOWORD(v10) = vdupq_lane_s16(*v8.i8, 1).u16[0];
  *(a4 + 2 * a3) = v10;
  v11 = v6;
  LOWORD(v11) = vdupq_lane_s16(*v8.i8, 2).u16[0];
  *(a4 + 4 * a3) = v11;
  v12 = v6;
  LOWORD(v12) = vdupq_lane_s16(*v8.i8, 3).u16[0];
  *(a4 + 6 * a3) = v12;
  v13 = v6;
  LOWORD(v13) = vdupq_laneq_s16(v8, 4).u16[0];
  *(a4 + 8 * a3) = v13;
  v14 = v6;
  LOWORD(v14) = vdupq_laneq_s16(v8, 5).u16[0];
  *(a4 + 10 * a3) = v14;
  v15 = v6;
  LOWORD(v15) = vdupq_laneq_s16(v8, 6).u16[0];
  *(a4 + 12 * a3) = v15;
  *&result = vdupq_laneq_s16(v8, 7).u64[0];
  LOWORD(v6) = LOWORD(result);
  *(a4 + 14 * a3) = v6;
  return result;
}

int8x16_t sub_27745AE84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  *v5.i8 = vmin_s16(vmax_s16(vadd_s16(*&vshrq_n_s16(vsubq_s16(*a2, v5), 1uLL), *&vdupq_lane_s16(*(a2 + 16), 0)), 0), 0xF800F800F800F800);
  v5.i64[1] = *(a2 + 16);
  v6 = vqtbl1q_s8(v5, xmmword_27750D470);
  result = vqtbl1q_s8(v5, xmmword_27750D480);
  *a4 = v6.i64[0];
  *(a4 + 2 * a3) = v6.i64[1];
  *(a4 + 4 * a3) = result.i64[0];
  *(a4 + 6 * a3) = result.i64[1];
  return result;
}

int32x4_t sub_27745AEF0(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = a1[7].u16[7];
  v4 = v3 + v2 - 2 * a1[3].u16[7];
  if (v4 < 0)
  {
    v4 = 2 * a1[3].u16[7] - (v3 + v2);
  }

  if (v4 > 0x3F)
  {
    goto LABEL_7;
  }

  v5 = a1[15].u16[7];
  v6 = v5 + v2 - 2 * a1[11].u16[7];
  if (v6 < 0)
  {
    v6 = 2 * a1[11].u16[7] - (v5 + v2);
  }

  if (v6 < 0x40)
  {
    a2[-1].i16[7] = v2;
    v8 = vdup_n_s16(v5 - v2);
    result = vmull_s16(v8, 0x4000300020001);
    v9 = vmull_s16(v8, 0x8000700060005);
    v10 = vdup_n_s16(v3 - v2);
    v11 = vmull_s16(v10, 0x4000300020001);
    v12 = vmull_s16(v10, 0x8000700060005);
    v13 = vshll_n_s16(v8, 3uLL);
    v14 = vshll_n_s16(v10, 3uLL);
    v15 = &a2[8];
    v16 = vdupq_n_s16(v2);
    v17 = -8;
    do
    {
      *v15 = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(result, 6uLL), vrshrq_n_s32(v9, 6uLL)));
      v15[-8] = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(v11, 6uLL), vrshrq_n_s32(v12, 6uLL)));
      result = vaddq_s32(result, v13);
      v9 = vaddq_s32(v9, v13);
      v11 = vaddq_s32(v11, v14);
      v12 = vaddq_s32(v12, v14);
      v17 += 8;
      ++v15;
    }

    while (v17 < 0x38);
  }

  else
  {
LABEL_7:
    result.i64[0] = sub_277459FB4(a1, a2).u64[0];
  }

  return result;
}

uint64_t sub_27745AFCC(uint64_t result, int64x2_t *a2, uint64_t a3, int16x8_t *a4)
{
  v79[27] = *MEMORY[0x277D85DE8];
  v4 = v78;
  v5 = byte_27750DFFA[result];
  v6 = a2 + 16;
  if (result <= 0x11)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 16;
  }

  if (v5 < 0)
  {
    if (result > 0x11)
    {
      v6 = a2;
    }

    v9 = byte_27750DFFA[result];
    if (v9 < 0)
    {
      v10 = &v6[-1].i64[1] + 6;
      v11 = 2 * byte_27750DFFA[result];
      v12 = word_27750E120[result - 11];
      v13 = 2 * v9 * v12 + 128;
      v8 = 64;
      do
      {
        v78[v11 - 1] = *(v10 + 2 * (v13 >> 8));
        v13 += v12;
        v14 = __CFADD__(v11++, 1);
      }

      while (!v14);
    }

    else
    {
      v8 = 64;
    }
  }

  else
  {
    v8 = 128;
  }

  v15 = 0;
  v16 = v79;
  v17 = v7 + 2;
  do
  {
    v18 = v17[-1];
    v16[-3] = v17[-2];
    v16[-2] = v18;
    v19 = *v17;
    v20 = v17[1];
    v17 += 4;
    v16[-1] = v19;
    *v16 = v20;
    v15 += 32;
    v16 += 4;
  }

  while (v15 < v8);
  v77 = a2[-1].i16[7];
  if ((v5 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v40 = 0;
      result = 32;
      v41 = a4;
      v42 = v5;
      do
      {
        v43 = 0;
        v44 = &a4[v40];
        do
        {
          v45 = 0;
          v19.i32[0] = v42 & 0x1F;
          v20.i32[0] = 32 - v19.i32[0];
          v46 = 1;
          do
          {
            v47 = &v78[v45 + (v42 >> 5)];
            v48 = v45 | v43;
            *(v44 + 2 * v48 * a3) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v47 + 1), *v19.i8, 0), *v47, *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v47 + 1), *v19.i8, 0), *v47, *v20.i8, 0), 5uLL);
            v49 = v46;
            *(v44 + 2 * (v48 | 8) * a3) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v47 + 9), *v19.i8, 0), *(v47 + 8), *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v47 + 9), *v19.i8, 0), *(v47 + 1), *v20.i8, 0), 5uLL);
            *(v44 + 2 * (v48 | 0x10) * a3) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v47 + 17), *v19.i8, 0), *(v47 + 16), *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v47 + 17), *v19.i8, 0), *(v47 + 2), *v20.i8, 0), 5uLL);
            *(v44 + 2 * (v48 | 0x18) * a3) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v47 + 25), *v19.i8, 0), *(v47 + 24), *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v47 + 25), *v19.i8, 0), *(v47 + 3), *v20.i8, 0), 5uLL);
            v45 = 32;
            v46 = 0;
          }

          while ((v49 & 1) != 0);
          ++v43;
          v42 += v5;
        }

        while (v43 != 8);
        v50 = -8;
        v51 = v41;
        do
        {
          v52 = *(v51 + 2 * a3);
          v53 = *(v51 + 4 * a3);
          v54 = *(v51 + 6 * a3);
          v55 = *(v51 + 8 * a3);
          v56 = *(v51 + 10 * a3);
          v57 = *(v51 + 12 * a3);
          v58 = *(v51 + 14 * a3);
          v59 = vtrn1q_s16(*v51, v52);
          v60 = vtrn2q_s16(*v51, v52);
          v61 = vtrn1q_s16(v53, v54);
          v62 = vtrn2q_s16(v53, v54);
          v63 = vtrn1q_s32(v59, v61);
          v20 = vtrn2q_s32(v59, v61);
          v64 = vtrn1q_s32(v60, v62);
          v65 = vtrn2q_s32(v60, v62);
          v66 = vtrn1q_s16(v55, v56);
          v67 = vtrn2q_s16(v55, v56);
          v68 = vtrn1q_s16(v57, v58);
          v69 = vtrn2q_s16(v57, v58);
          v70 = vtrn1q_s32(v66, v68);
          v71 = vtrn2q_s32(v66, v68);
          v72 = vtrn1q_s32(v67, v69);
          v73 = vtrn2q_s32(v67, v69);
          v74 = vzip2q_s64(v63, v70);
          v63.i64[1] = v70.i64[0];
          v75 = vzip2q_s64(v64, v72);
          v64.i64[1] = v72.i64[0];
          v76 = vzip2q_s64(v20, v71);
          v20.i64[1] = v71.i64[0];
          v71.i64[0] = v65.i64[0];
          v71.i64[1] = v73.i64[0];
          *v51 = v63;
          *(v51 + 2 * a3) = v64;
          *(v51 + 4 * a3) = v20;
          *(v51 + 6 * a3) = v71;
          *(v51 + 8 * a3) = v74;
          *(v51 + 10 * a3) = v75;
          *(v51 + 12 * a3) = v76;
          v19 = vzip2q_s64(v65, v73);
          *(v51 + 14 * a3) = v19;
          v50 += 8;
          v51 += a3;
        }

        while (v50 < 0x38);
        ++v41;
        v14 = v40++ >= 7;
      }

      while (!v14);
    }

    else
    {
      v21 = 0;
      v22 = v5;
      do
      {
        v23 = 0;
        v19.i32[0] = v22 & 0x1F;
        v20.i32[0] = 32 - v19.i32[0];
        v24 = 1;
        do
        {
          v25 = &v78[v23 * 8 + (v22 >> 5)];
          v26 = a4[v23].i64 + 2 * v21 * a3;
          v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 9), *v19.i8, 0), *(v25 + 8), *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v25 + 9), *v19.i8, 0), *(v25 + 1), *v20.i8, 0), 5uLL);
          *v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 1), *v19.i8, 0), *v25, *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v25 + 1), *v19.i8, 0), *v25, *v20.i8, 0), 5uLL);
          *(v26 + 16) = v27;
          v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v25 + 17), *v19.i8, 0), *(v25 + 16), *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v25 + 17), *v19.i8, 0), *(v25 + 2), *v20.i8, 0), 5uLL);
          v29 = *(v25 + 3);
          v30 = *(v25 + 25);
          LOBYTE(v25) = v24;
          *(v26 + 32) = v28;
          *(v26 + 48) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v30.i8, *v19.i8, 0), *v29.i8, *v20.i8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v30, *v19.i8, 0), v29, *v20.i8, 0), 5uLL);
          v23 = 4;
          v24 = 0;
        }

        while ((v25 & 1) != 0);
        ++v21;
        v22 += v5;
      }

      while (v21 != 64);
    }
  }

  else
  {
    v31 = 0;
    v32 = v5 >> 5;
    do
    {
      v33 = 0;
      v34 = 1;
      v4 += v32;
      do
      {
        v35 = &v4[v33 * 8];
        v36 = v35[1];
        v37 = v35[2];
        v38 = v35[3];
        v39 = &a4[v33].i8[2 * v31 * a3];
        *v39 = *v35;
        *(v39 + 1) = v36;
        LOBYTE(v35) = v34;
        *(v39 + 2) = v37;
        *(v39 + 3) = v38;
        v33 = 4;
        v34 = 0;
      }

      while ((v35 & 1) != 0);
      ++v31;
    }

    while (v31 != 64);
  }

  return result;
}

_WORD *sub_27745B450(_WORD *result, _OWORD *a2, uint64_t a3, int16x8_t *a4)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = (a2 + 8);
  if (result <= 0x11)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 8;
  }

  if (v4 < 0)
  {
    v8 = 0;
    v9 = result - 18;
    if (result > 0x11)
    {
      v5 = a2;
    }

    v10 = a2[8 * (result < 0x12)];
    v11 = *(v5 + 16);
    v12 = *(v5 + 32);
    v13 = *(v5 + 48);
    LODWORD(v5) = 18 - result;
    if (v9 < 0)
    {
      v5 = v5;
    }

    else
    {
      v5 = v9;
    }

    v14 = &xmmword_27750E3C0[4 * v5];
    v7 = 32;
    do
    {
      *&v82[v8 * 16] = vqtbl4q_s8(*&v10, v14[v8]);
      ++v8;
    }

    while (v8 != 4);
  }

  else
  {
    v7 = 64;
  }

  v15 = 0;
  v16 = v86;
  v17 = v6 + 2;
  do
  {
    v18 = *(v17 - 1);
    *(v16 - 3) = *(v17 - 2);
    *(v16 - 2) = v18;
    v19 = *v17;
    v20 = v17[1];
    v17 += 4;
    *(v16 - 1) = v19;
    *v16 = v20;
    v15 += 32;
    v16 += 4;
  }

  while (v15 < v7);
  v83 = *(a2 - 1);
  if ((v4 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v37 = 0;
      v38 = 4 * a3;
      v39 = 6 * a3;
      v40 = 8 * a3;
      v41 = 10 * a3;
      v42 = 12 * a3;
      v43 = a3;
      result = v85;
      v44 = 3 * a3;
      v45 = 2 * a3;
      v46 = 2 * a3;
      v47 = v4;
      v48 = 14 * a3;
      do
      {
        v49 = a4;
        v50 = 8;
        do
        {
          v51 = vdupq_n_s16(32 - (v47 & 0x1Fu));
          v52 = vdupq_n_s16(v47 & 0x1F);
          *v49 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v84[(v47 >> 5) + 1], *v52.i8), *&v84[v47 >> 5], *v51.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v84[(v47 >> 5) + 1], v52), *&v84[v47 >> 5], v51), 5uLL);
          v49[v43] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v84[(v47 >> 5) + 9], *v52.i8), *&v84[(v47 >> 5) + 8], *v51.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v84[(v47 >> 5) + 9], v52), *&v84[(v47 >> 5) + 8], v51), 5uLL);
          v49[v46] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v85[(v47 >> 5) + 1], *v52.i8), *&v85[v47 >> 5], *v51.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v85[(v47 >> 5) + 1], v52), *&v85[v47 >> 5], v51), 5uLL);
          v49[v44] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v86[2 * (v47 >> 5) + 2], *v52.i8), *&v86[2 * (v47 >> 5)], *v51.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v86[2 * (v47 >> 5) + 2], v52), *&v86[2 * (v47 >> 5)], v51), 5uLL);
          v47 += v4;
          v49 = (v49 + v45);
          --v50;
        }

        while (v50);
        v53 = -8;
        v54 = a4;
        do
        {
          v55 = *(v54 + v45);
          v56 = *(v54 + v38);
          v57 = *(v54 + v39);
          v58 = *(v54 + v40);
          v59 = *(v54 + v41);
          v60 = *(v54 + v42);
          v61 = *(v54 + v48);
          v62 = vtrn1q_s16(*v54, v55);
          v63 = vtrn2q_s16(*v54, v55);
          v64 = vtrn1q_s16(v56, v57);
          v65 = vtrn2q_s16(v56, v57);
          v66 = vtrn1q_s32(v62, v64);
          v67 = vtrn2q_s32(v62, v64);
          v68 = vtrn1q_s32(v63, v65);
          v69 = vtrn2q_s32(v63, v65);
          v70 = vtrn1q_s16(v58, v59);
          v71 = vtrn2q_s16(v58, v59);
          v72 = vtrn1q_s16(v60, v61);
          v73 = vtrn2q_s16(v60, v61);
          v74 = vtrn1q_s32(v70, v72);
          v75 = vtrn2q_s32(v70, v72);
          v76 = vtrn1q_s32(v71, v73);
          v77 = vtrn2q_s32(v71, v73);
          v78 = vzip2q_s64(v66, v74);
          v66.i64[1] = v74.i64[0];
          v79 = vzip2q_s64(v68, v76);
          v68.i64[1] = v76.i64[0];
          v80 = vzip2q_s64(v67, v75);
          v67.i64[1] = v75.i64[0];
          v75.i64[0] = v69.i64[0];
          v75.i64[1] = v77.i64[0];
          *v54 = v66;
          *(v54 + v45) = v68;
          *(v54 + v38) = v67;
          *(v54 + v39) = v75;
          *(v54 + v40) = v78;
          *(v54 + v41) = v79;
          *(v54 + v42) = v80;
          *(v54 + v48) = vzip2q_s64(v69, v77);
          v53 += 8;
          v54 = (v54 + v43 * 16);
        }

        while (v53 < 0x18);
        ++a4;
        v81 = v37 >= 0x18;
        v37 += 8;
      }

      while (!v81);
    }

    else
    {
      v21 = a4 + 2;
      v22 = 32;
      v23 = v4;
      do
      {
        v24 = vdupq_n_s16(32 - (v23 & 0x1Fu));
        v25 = vdupq_n_s16(v23 & 0x1F);
        v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v84[(v23 >> 5) + 9], *v25.i8), *&v84[(v23 >> 5) + 8], *v24.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v84[(v23 >> 5) + 9], v25), *&v84[(v23 >> 5) + 8], v24), 5uLL);
        v21[-2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v84[(v23 >> 5) + 1], *v25.i8), *&v84[v23 >> 5], *v24.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v84[(v23 >> 5) + 1], v25), *&v84[v23 >> 5], v24), 5uLL);
        v21[-1] = v26;
        v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v85[(v23 >> 5) + 1], *v25.i8), *&v85[v23 >> 5], *v24.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v85[(v23 >> 5) + 1], v25), *&v85[v23 >> 5], v24), 5uLL);
        result = &v86[2 * (v23 >> 5)];
        v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(result + 1), *v25.i8), *result, *v24.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(result + 1), v25), *result, v24), 5uLL);
        *v21 = v27;
        v21[1] = v28;
        v23 += v4;
        v21 = (v21 + 2 * a3);
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v29 = v4 >> 5;
    v30 = a4 + 2;
    v31 = 2 * v29;
    v32 = &v86[v31];
    v33 = 32;
    do
    {
      v34 = v32[-2];
      v35 = v32[-1];
      v36 = *v32;
      v30[-2] = v32[-3];
      v30[-1] = v34;
      *v30 = v35;
      v30[1] = v36;
      v32 = (v32 + v31);
      v30 = (v30 + 2 * a3);
      --v33;
    }

    while (v33);
  }

  return result;
}

uint64_t sub_27745B898(uint64_t result, _OWORD *a2, uint64_t a3, int16x8_t *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 4;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result <= 0x11)
    {
      v7 = a2 + 4;
    }

    else
    {
      v7 = a2;
    }

    v8 = a2[4 * (result < 0x12)];
    v9 = v7[1];
    if (v6 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v10 = &xmmword_27750E3C0[4 * v6];
    v11 = vqtbl2q_s8(*&v8, v10[2]);
    v12 = vqtbl2q_s8(*&v8, v10[3]);
    v69 = v11;
    v70 = v12;
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v13 = v5[1];
  v14 = v5[2];
  v71 = a2[4 * (result > 0x11)];
  v72[0] = v13;
  v15 = v5[3];
  v72[1] = v14;
  v72[2] = v15;
  v70.i16[7] = *(a2 - 1);
  if ((v4 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v32 = 0;
      v33 = 1;
      LODWORD(result) = v4;
      do
      {
        v34 = v33;
        v35 = &a4[v32];
        v36 = v35;
        v37 = 8;
        do
        {
          v38 = vdupq_n_s16(32 - (result & 0x1F));
          v39 = vdupq_n_s16(result & 0x1F);
          *v36 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(&v72[-1] + 2 * (result >> 5) + 2), *v39.i8), *(&v72[-1] + 2 * (result >> 5)), *v38.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(&v72[-1] + 2 * (result >> 5) + 2), v39), *(&v72[-1] + 2 * (result >> 5)), v38), 5uLL);
          v36[a3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v72 + 2 * (result >> 5) + 2), *v39.i8), *(v72 + 2 * (result >> 5)), *v38.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v72 + 2 * (result >> 5) + 2), v39), *(v72 + 2 * (result >> 5)), v38), 5uLL);
          result = (result + v4);
          v36 = (v36 + 2 * a3);
          --v37;
        }

        while (v37);
        v40 = 1;
        do
        {
          v41 = (v35 + 2 * v37 * a3);
          v42 = *(v41 + 2 * a3);
          v43 = *(v41 + 4 * a3);
          v44 = *(v41 + 6 * a3);
          v45 = *(v41 + 8 * a3);
          v46 = *(v41 + 10 * a3);
          v47 = *(v41 + 12 * a3);
          v48 = *(v41 + 14 * a3);
          v49 = vtrn1q_s16(*v41, v42);
          v50 = vtrn2q_s16(*v41, v42);
          v51 = vtrn1q_s16(v43, v44);
          v52 = vtrn2q_s16(v43, v44);
          v53 = vtrn1q_s32(v49, v51);
          v54 = vtrn2q_s32(v49, v51);
          v55 = vtrn1q_s32(v50, v52);
          v56 = vtrn2q_s32(v50, v52);
          v57 = vtrn1q_s16(v45, v46);
          v58 = vtrn2q_s16(v45, v46);
          v59 = vtrn1q_s16(v47, v48);
          v60 = vtrn2q_s16(v47, v48);
          v61 = vtrn1q_s32(v57, v59);
          v62 = vtrn2q_s32(v57, v59);
          v63 = vtrn1q_s32(v58, v60);
          v64 = vtrn2q_s32(v58, v60);
          v65 = vzip2q_s64(v53, v61);
          v53.i64[1] = v61.i64[0];
          v66 = vzip2q_s64(v55, v63);
          v55.i64[1] = v63.i64[0];
          v67 = vzip2q_s64(v54, v62);
          v54.i64[1] = v62.i64[0];
          v62.i64[0] = v56.i64[0];
          v62.i64[1] = v64.i64[0];
          *v41 = v53;
          *(v41 + 2 * a3) = v55;
          *(v41 + 4 * a3) = v54;
          *(v41 + 6 * a3) = v62;
          v68 = v40;
          *(v41 + 8 * a3) = v65;
          *(v41 + 10 * a3) = v66;
          *(v41 + 12 * a3) = v67;
          *(v41 + 14 * a3) = vzip2q_s64(v56, v64);
          v37 = 8;
          v40 = 0;
        }

        while ((v68 & 1) != 0);
        v33 = 0;
        v32 = 1;
      }

      while ((v34 & 1) != 0);
    }

    else
    {
      v16 = a4 + 1;
      v17 = 16;
      v18 = v4;
      do
      {
        v19 = vdupq_n_s16(32 - (v18 & 0x1Fu));
        v20 = vdupq_n_s16(v18 & 0x1F);
        v21 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(&v72[-1] + 2 * (v18 >> 5) + 2), *v20.i8), *(&v72[-1] + 2 * (v18 >> 5)), *v19.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(&v72[-1] + 2 * (v18 >> 5) + 2), v20), *(&v72[-1] + 2 * (v18 >> 5)), v19), 5uLL);
        v22 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v72 + 2 * (v18 >> 5) + 2), *v20.i8), *(v72 + 2 * (v18 >> 5)), *v19.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v72 + 2 * (v18 >> 5) + 2), v20), *(v72 + 2 * (v18 >> 5)), v19), 5uLL);
        v16[-1] = v21;
        *v16 = v22;
        v18 += v4;
        v16 = (v16 + 2 * a3);
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v23 = v4 >> 4;
    v24 = (v72 + 2 * (v4 >> 5));
    v25 = 2 * v23;
    v26 = (v72 + v25);
    v27 = -2;
    do
    {
      v28 = *v24;
      v29 = *(v26 - 1);
      v30 = *v26;
      *a4 = v24[-1];
      a4[1] = v28;
      v31 = &a4->i8[2 * a3];
      v27 += 2;
      *v31 = v29;
      *(v31 + 1) = v30;
      v24 = (v24 + v25);
      a4 = (a4 + 4 * a3);
      v26 = (v26 + v25);
    }

    while (v27 < 0xE);
  }

  return result;
}

uint64_t sub_27745BC00(uint64_t result, int8x16_t *a2, uint64_t a3, int16x8_t *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 2;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result - 18 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v48 = vqtbl1q_s8(a2[2 * (result < 0x12)], xmmword_27750E3C0[4 * v6 + 3]);
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v7 = a2[2 * (result > 0x11)];
  v8 = v5[1];
  v49[0] = v7;
  v49[1] = v8;
  v48.i16[7] = a2[-1].i16[7];
  if ((v4 & 0x1F) != 0)
  {
    v9 = 8;
    v10 = a4;
    v11 = v4;
    do
    {
      v12 = vdupq_n_s16(32 - (v11 & 0x1Fu));
      v13 = vdupq_n_s16(v11 & 0x1F);
      *v10 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v49 + 2 * (v11 >> 5) + 2), *v13.i8), *(v49 + 2 * (v11 >> 5)), *v12.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v49 + 2 * (v11 >> 5) + 2), v13), *(v49 + 2 * (v11 >> 5)), v12), 5uLL);
      v11 += v4;
      v10 = (v10 + 2 * a3);
      --v9;
    }

    while (v9);
    if (result < 0x12)
    {
      v14 = *(a4 + 2 * a3);
      v15 = *(a4 + 4 * a3);
      v16 = *(a4 + 6 * a3);
      v17 = *(a4 + 8 * a3);
      v18 = *(a4 + 10 * a3);
      v19 = *(a4 + 12 * a3);
      v20 = *(a4 + 14 * a3);
      v21 = vtrn1q_s16(*a4, v14);
      v22 = vtrn2q_s16(*a4, v14);
      v23 = vtrn1q_s16(v15, v16);
      v24 = vtrn2q_s16(v15, v16);
      v25 = vtrn1q_s32(v21, v23);
      v26 = vtrn2q_s32(v21, v23);
      v27 = vtrn1q_s32(v22, v24);
      v28 = vtrn2q_s32(v22, v24);
      v29 = vtrn1q_s16(v17, v18);
      v30 = vtrn2q_s16(v17, v18);
      v31 = vtrn1q_s16(v19, v20);
      v32 = vtrn2q_s16(v19, v20);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vzip2q_s64(v25, v33);
      v25.i64[1] = v33.i64[0];
      v37 = vzip2q_s64(v27, v35);
      v27.i64[1] = v35.i64[0];
      v38 = vtrn2q_s32(v30, v32);
      v39 = vzip2q_s64(v26, v34);
      v26.i64[1] = v34.i64[0];
      v40 = vzip2q_s64(v28, v38);
      *a4 = v25;
      *(a4 + 2 * a3) = v27;
      *(a4 + 4 * a3) = v26;
      v28.i64[1] = v38.i64[0];
      *(a4 + 6 * a3) = v28;
      *(a4 + 8 * a3) = v36;
      *(a4 + 10 * a3) = v37;
      *(a4 + 12 * a3) = v39;
      *(a4 + 14 * a3) = v40;
    }
  }

  else
  {
    if (v4 < 0)
    {
      v8 = v48;
      v41 = vextq_s8(v48, v7, 0xEuLL);
      v42 = vextq_s8(v48, v7, 0xCuLL);
      v43 = vextq_s8(v48, v7, 0xAuLL);
      v44 = vextq_s8(v48, v7, 8uLL);
      v45 = vextq_s8(v48, v7, 6uLL);
      v46 = vextq_s8(v48, v7, 4uLL);
      v47 = vextq_s8(v48, v7, 2uLL);
    }

    else
    {
      v41 = vextq_s8(v7, v8, 2uLL);
      v42 = vextq_s8(v7, v8, 4uLL);
      v43 = vextq_s8(v7, v8, 6uLL);
      v44 = vextq_s8(v7, v8, 8uLL);
      v45 = vextq_s8(v7, v8, 0xAuLL);
      v46 = vextq_s8(v7, v8, 0xCuLL);
      v47 = vextq_s8(v7, v8, 0xEuLL);
    }

    *a4 = v41;
    *(a4 + 2 * a3) = v42;
    *(a4 + 4 * a3) = v43;
    *(a4 + 6 * a3) = v44;
    *(a4 + 8 * a3) = v45;
    *(a4 + 10 * a3) = v46;
    *(a4 + 12 * a3) = v47;
    *(a4 + 14 * a3) = v8;
  }

  return result;
}

uint64_t sub_27745BE88(uint64_t result, int8x16_t *a2, uint64_t a3, unint64_t *a4)
{
  LODWORD(v4) = result - 18;
  v5 = byte_27750DFFA[result];
  if (result - 18 < 0)
  {
    v4 = (18 - result);
  }

  else
  {
    v4 = v4;
  }

  v6 = a2[result > 0x11];
  if ((v5 & 0x1F) != 0)
  {
    if (v5 < 0)
    {
      v12 = a2[result < 0x12];
      v12.i64[1] = *(&a2[-1].i64[1] + 6);
      v13 = &xmmword_27750E3C0[4 * v4 + 3].i64[1];
      v14 = vld1q_dup_f64(v13);
      v12.i64[0] = vqtbl1q_s8(v12, v14).u64[0];
      v12.i64[1] = a2[result > 0x11].i64[0];
      v7 = ~(v5 >> 4);
      v6 = v12;
    }

    else
    {
      v7 = (v5 >> 4) + 6;
    }

    v15 = *(&unk_27750E5C0 + 8 * v7);
    v16 = *(&unk_27750E5C0 + 8 * byte_27750E618[v4 - 1]);
    v17.i64[0] = 0x202020202020202;
    v17.i64[1] = 0x202020202020202;
    v18 = vqtbl1q_s8(v6, vaddq_s8(v15, v17));
    v19 = vqtbl1q_s8(v6, vaddq_s8(v16, v17));
    v20 = vqtbl1q_s8(v6, v15);
    v21 = vqtbl1q_s8(v6, v16);
    v22.i64[0] = 0x1F001F001F001FLL;
    v22.i64[1] = 0x1F001F001F001FLL;
    v23 = vandq_s8(vmull_s8(vdup_n_s8(v5), 0x404030302020101), v22);
    v24 = vzip2q_s32(v23, v23);
    v25 = vzip1q_s32(v23, v23);
    v26.i64[0] = 0x20002000200020;
    v26.i64[1] = 0x20002000200020;
    v27 = vsubq_s16(v26, v25);
    v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v18.i8, *v25.i8), *v20.i8, *v27.i8), 5uLL), vmlal_high_u16(vmull_high_u16(v18, v25), v20, v27), 5uLL);
    v29 = vsubq_s16(v26, v24);
    v30 = vmlal_u16(vmull_u16(*v19.i8, *v24.i8), *v21.i8, *v29.i8);
    v31 = vmlal_high_u16(vmull_high_u16(v19, v24), v21, v29);
    v32 = vrshrn_high_n_s32(vrshrn_n_s32(v30, 5uLL), v31, 5uLL);
    v29.i32[0] = result;
    v31.i32[0] = 18;
    v33 = vdupq_lane_s32(*&vcgtq_u32(v31, v29), 0);
    v34 = vzip1q_s16(v28, v32);
    v35 = vzip2q_s16(v28, v32);
    v6 = vbslq_s8(v33, vzip2q_s16(v34, v35), v32);
    v36 = vbslq_s8(v33, vzip1q_s16(v34, v35), v28);
    *a4 = v36.i64[0];
    *(a4 + 2 * a3) = v36.u64[1];
    *(a4 + 4 * a3) = v6.i64[0];
  }

  else
  {
    if (result == 18)
    {
      v8 = a2[1];
      v6 = vqtbl1q_s8(*(a2 - 2), xmmword_27750D460);
      v9 = vextq_s8(v6, v8, 0xEuLL).u64[0];
      v10 = vextq_s8(v6, v8, 0xCuLL).u64[0];
      v11 = vextq_s8(v6, v8, 0xAuLL).u64[0];
    }

    else
    {
      v9 = vextq_s8(v6, v6, 2uLL).u64[0];
      v10 = vextq_s8(v6, v6, 4uLL).u64[0];
      v11 = vextq_s8(v6, v6, 6uLL).u64[0];
    }

    *a4 = v9;
    *(a4 + 2 * a3) = v10;
    *(a4 + 4 * a3) = v11;
  }

  *(a4 + 6 * a3) = v6.u64[1];
  return result;
}

int16x8_t sub_27745C044(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = vld1q_dup_s16(a2->i16);
  v7 = a2[5];
  v8.i64[0] = 0xF000F000F000F000;
  v8.i64[1] = 0xF000F000F000F000;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(a2[4], v5), 1uLL), 0), v8);
  v9 = 4 * a3;
  a4[1] = vminq_s16(vmaxq_s16(vsraq_n_s16(v6, vsubq_s16(v7, v5), 1uLL), 0), v8);
  v10 = &a2->i16[2];
  v11 = (a4 + 4 * a3 + 16);
  v12 = (a4 + 2 * a3 + 16);
  v13 = -1;
  do
  {
    v14 = v10 - 1;
    v15 = vld1q_dup_s16(v14);
    v16 = vld1q_dup_s16(v10);
    v12[-1] = v15;
    *v12 = v15;
    v13 += 2;
    v11[-1] = v16;
    *v11 = v16;
    v10 += 2;
    v11 = (v11 + v9);
    v12 = (v12 + v9);
  }

  while (v13 < 0xD);
  v17 = &a2[1].i16[7];
  result = vld1q_dup_s16(v17);
  v19 = 30 * a3;
  *(a4 + v19) = result;
  *(a4 + v19 + 16) = result;
  return result;
}

int16x8_t sub_27745C0E8(uint64_t a1, int16x8_t *a2, uint64_t a3, int16x8_t *a4)
{
  v4 = &a2[-1].i16[7];
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2->i8, 0), vsubq_s16(a2[2], v5), 1uLL), 0), v7);
  *(a4 + 2 * a3) = vdupq_lane_s16(*v6.i8, 1);
  *(a4 + 4 * a3) = vdupq_lane_s16(*v6.i8, 2);
  *(a4 + 6 * a3) = vdupq_lane_s16(*v6.i8, 3);
  *(a4 + 8 * a3) = vdupq_laneq_s16(v6, 4);
  *(a4 + 10 * a3) = vdupq_laneq_s16(v6, 5);
  *(a4 + 12 * a3) = vdupq_laneq_s16(v6, 6);
  result = vdupq_laneq_s16(v6, 7);
  *(a4 + 14 * a3) = result;
  return result;
}

int16x4_t sub_27745C180(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *a2;
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  *a4 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*a2, 0), vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v7).u64[0];
  *(a4 + 2 * a3) = vdup_lane_s16(v6, 1);
  *(a4 + 4 * a3) = vdup_lane_s16(v6, 2);
  result = vdup_lane_s16(v6, 3);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745C1DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = vdupq_lane_s16(*&v6, 0);
  v9.i64[0] = 0xF000F000F000F000;
  v9.i64[1] = 0xF000F000F000F000;
  v10 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*a2, v5), 1uLL), 0), v9);
  v11 = vminq_s16(vmaxq_s16(vsraq_n_s16(v8, vsubq_s16(*(a2 + 16), v5), 1uLL), 0), v9);
  v12 = v6;
  LOWORD(v12) = v10.i16[0];
  *a4 = v12;
  v13 = v6;
  LOWORD(v13) = v11.i16[0];
  a4[a3] = v13;
  a4[1] = v7;
  v14 = a4 + 1;
  v14[a3] = v7;
  v15 = (v14 + 18 * a3);
  v16 = 2 * a3;
  v17 = (v14 + 2 * a3);
  v18 = 7;
  do
  {
    v10 = vextq_s8(v10, v10, 2uLL);
    v11 = vextq_s8(v11, v11, 2uLL);
    v19 = v6;
    LOWORD(v19) = v10.i16[0];
    *(v17 - 1) = v19;
    v20 = v6;
    LOWORD(v20) = v11.i16[0];
    *(v15 - 1) = v20;
    *v17 = v7;
    *v15 = v7;
    v15 = (v15 + v16);
    v17 = (v17 + v16);
    --v18;
  }

  while (v18);
}

double sub_27745C28C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  v6 = *(a2 + 32);
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  v8 = vminq_s16(vmaxq_s16(vsraq_n_s16(vdupq_lane_s16(*&v6, 0), vsubq_s16(*a2, v5), 1uLL), 0), v7);
  v9 = v6;
  LOWORD(v9) = v8.i16[0];
  *a4 = v9;
  v10 = v6;
  LOWORD(v10) = vdupq_lane_s16(*v8.i8, 1).u16[0];
  *(a4 + 2 * a3) = v10;
  v11 = v6;
  LOWORD(v11) = vdupq_lane_s16(*v8.i8, 2).u16[0];
  *(a4 + 4 * a3) = v11;
  v12 = v6;
  LOWORD(v12) = vdupq_lane_s16(*v8.i8, 3).u16[0];
  *(a4 + 6 * a3) = v12;
  v13 = v6;
  LOWORD(v13) = vdupq_laneq_s16(v8, 4).u16[0];
  *(a4 + 8 * a3) = v13;
  v14 = v6;
  LOWORD(v14) = vdupq_laneq_s16(v8, 5).u16[0];
  *(a4 + 10 * a3) = v14;
  v15 = v6;
  LOWORD(v15) = vdupq_laneq_s16(v8, 6).u16[0];
  *(a4 + 12 * a3) = v15;
  *&result = vdupq_laneq_s16(v8, 7).u64[0];
  LOWORD(v6) = LOWORD(result);
  *(a4 + 14 * a3) = v6;
  return result;
}

int8x16_t sub_27745C360(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 - 2);
  v5 = vld1q_dup_s16(v4);
  *v5.i8 = vmin_s16(vmax_s16(vadd_s16(*&vshrq_n_s16(vsubq_s16(*a2, v5), 1uLL), *&vdupq_lane_s16(*(a2 + 16), 0)), 0), 0xF000F000F000F000);
  v5.i64[1] = *(a2 + 16);
  v6 = vqtbl1q_s8(v5, xmmword_27750D470);
  result = vqtbl1q_s8(v5, xmmword_27750D480);
  *a4 = v6.i64[0];
  *(a4 + 2 * a3) = v6.i64[1];
  *(a4 + 4 * a3) = result.i64[0];
  *(a4 + 6 * a3) = result.i64[1];
  return result;
}

int32x4_t sub_27745C3CC(int8x16_t *a1, uint16x8_t *a2)
{
  v2 = a1[-1].u16[7];
  v3 = a1[7].u16[7];
  v4 = v3 + v2 - 2 * a1[3].u16[7];
  if (v4 < 0)
  {
    v4 = 2 * a1[3].u16[7] - (v3 + v2);
  }

  if (v4 > 0x7F)
  {
    goto LABEL_7;
  }

  v5 = a1[15].u16[7];
  v6 = v5 + v2 - 2 * a1[11].u16[7];
  if (v6 < 0)
  {
    v6 = 2 * a1[11].u16[7] - (v5 + v2);
  }

  if (v6 < 0x80)
  {
    a2[-1].i16[7] = v2;
    v8 = vdup_n_s16(v5 - v2);
    result = vmull_s16(v8, 0x4000300020001);
    v9 = vmull_s16(v8, 0x8000700060005);
    v10 = vdup_n_s16(v3 - v2);
    v11 = vmull_s16(v10, 0x4000300020001);
    v12 = vmull_s16(v10, 0x8000700060005);
    v13 = vshll_n_s16(v8, 3uLL);
    v14 = vshll_n_s16(v10, 3uLL);
    v15 = &a2[8];
    v16 = vdupq_n_s16(v2);
    v17 = -8;
    do
    {
      *v15 = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(result, 6uLL), vrshrq_n_s32(v9, 6uLL)));
      v15[-8] = vaddq_s16(v16, vuzp1q_s16(vrshrq_n_s32(v11, 6uLL), vrshrq_n_s32(v12, 6uLL)));
      result = vaddq_s32(result, v13);
      v9 = vaddq_s32(v9, v13);
      v11 = vaddq_s32(v11, v14);
      v12 = vaddq_s32(v12, v14);
      v17 += 8;
      ++v15;
    }

    while (v17 < 0x38);
  }

  else
  {
LABEL_7:
    result.i64[0] = sub_277459FB4(a1, a2).u64[0];
  }

  return result;
}

void sub_27745C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 128);
  v6 = (a2 + 384);
  v7 = vld1q_dup_f32(v6);
  v17[0] = vmulq_s16(v7, xmmword_27750D540);
  v17[1] = vmulq_s16(v7, xmmword_27750D550);
  v17[2] = vmulq_s16(v7, xmmword_27750D560);
  v17[3] = vmulq_s16(v7, xmmword_27750D570);
  v17[4] = vmulq_s16(v7, xmmword_27750D580);
  v17[5] = vmulq_s16(v7, xmmword_27750D590);
  v8 = vmulq_s16(v7, xmmword_27750D5A0);
  v9 = vmulq_s16(v7, xmmword_27750D5B0);
  v10 = vld1q_dup_f32(v5);
  v17[6] = v8;
  v17[7] = v9;
  v11 = v10;
  do
  {
    v12 = 0;
    v13 = xmmword_27750E2C0 + v4;
    v14 = vld1q_dup_f32(v13);
    v15 = (a2 + 4 * v4);
    v16 = vld1q_dup_f32(v15);
    do
    {
      *(a4 + v12 * 16) = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vmlaq_s16(v11, xmmword_27750E2C0[v12], v16), v17[v12]), *(a2 + 256 + v12 * 16), v14), 6uLL);
      ++v12;
    }

    while (v12 != 8);
    v11 = vaddq_s16(v11, v10);
    ++v4;
    a4 += 2 * a3;
  }

  while (v4 != 32);
}

void sub_27745C5E4(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a2[16], *a2), vaddq_s16(a2[1], a2[17])), vaddq_s16(vaddq_s16(a2[2], a2[18]), a2[3])), vaddq_s16(vaddq_s16(vaddq_s16(a2[19], a2[4]), a2[20]), a2[5])), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a2[21], a2[6]), a2[22]), a2[7]), a2[23]));
  v5 = vpaddq_s32(v4, v4);
  v6 = vrshrq_n_u16(vpaddq_s32(v5, v5), 6uLL);
  v7 = a4 + 4;
  v8 = 32;
  do
  {
    v7[-4] = v6;
    v7[-3] = v6;
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[3] = v6;
    v7 = (v7 + 2 * a3);
    --v8;
  }

  while (v8);
}

void sub_27745C678(uint64_t a1, _OWORD *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = 0;
  v5 = (a2 + 4);
  v6 = vld1q_dup_f32(v5);
  v7 = (a2 + 12);
  v8 = vld1q_dup_f32(v7);
  v9 = vmulq_s16(v8, xmmword_27750D540);
  v10 = vmulq_s16(v8, xmmword_27750D550);
  v11 = vmulq_s16(v8, xmmword_27750D560);
  v12 = vmulq_s16(v8, xmmword_27750D570);
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  v15 = *(a2 + 10);
  v16 = *(a2 + 11);
  v17 = vshlq_n_s16(v13, 4uLL);
  v18 = vshlq_n_s16(v14, 4uLL);
  v19 = vshlq_n_s16(v15, 4uLL);
  v20 = vshlq_n_s16(v16, 4uLL);
  v21 = a4 + 2;
  v22 = v6;
  do
  {
    v23 = (a2 + v4);
    v24 = vld1q_dup_f32(v23);
    v17 = vsubq_s16(v17, v13);
    v18 = vsubq_s16(v18, v14);
    v21[-2] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v17, v9), v22), v24, xmmword_27750D5C0), 5uLL);
    v21[-1] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v18, v10), v22), v24, xmmword_27750D5D0), 5uLL);
    v19 = vsubq_s16(v19, v15);
    v20 = vsubq_s16(v20, v16);
    *v21 = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v19, v11), v22), v24, xmmword_27750D5E0), 5uLL);
    v21[1] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v20, v12), v22), v24, xmmword_27750D5F0), 5uLL);
    v22 = vaddq_s16(v22, v6);
    v4 += 4;
    v21 = (v21 + 2 * a3);
  }

  while (v4 != 64);
}

void sub_27745C778(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(a2[8], *a2), vaddq_s16(a2[1], a2[9])), vaddq_s16(vaddq_s16(a2[2], a2[10]), a2[3])), a2[11]);
  v5 = vpaddq_s32(v4, v4);
  v6 = vrshrq_n_u16(vpaddq_s32(v5, v5), 5uLL);
  v7 = a4 + 2;
  v8 = 16;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + 2 * a3);
    --v8;
  }

  while (v8);
}

uint64_t sub_27745C7D4(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v80[27] = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 256;
  if (result <= 0x11)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 256;
  }

  if (v4 < 0)
  {
    if (result > 0x11)
    {
      v5 = a2;
    }

    v8 = byte_27750DFFA[result];
    if (v8 < 0)
    {
      v9 = v5 - 4;
      v10 = word_27750E120[result - 11];
      v11 = v8 * v10 + 128;
      v7 = 32;
      do
      {
        v79[v8] = *(v9 + 4 * (v11 >> 8));
        v11 += v10;
        v12 = __CFADD__(v8++, 1);
      }

      while (!v12);
    }

    else
    {
      v7 = 32;
    }
  }

  else
  {
    v7 = 64;
  }

  v13 = 0;
  v14 = v80;
  v15 = (v6 + 32);
  do
  {
    v16 = *(v15 - 1);
    *(v14 - 3) = *(v15 - 2);
    *(v14 - 2) = v16;
    v17 = *v15;
    v18 = v15[1];
    v15 += 4;
    *(v14 - 1) = v17;
    *v14 = v18;
    v13 += 16;
    v14 += 4;
  }

  while (v13 < v7);
  v79[0] = *(a2 - 4);
  if ((v4 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v40 = 0;
      v41 = 2 * v4;
      v42 = 6 * a3;
      v43 = 8 * a3;
      v44 = 4 * a3;
      v45 = 2 * a3;
      v46.i64[0] = 0x20002000200020;
      v46.i64[1] = 0x20002000200020;
      v47 = v4;
      result = (3 * v4);
      do
      {
        v48 = vdupq_n_s16(v47 & 0x1F);
        v49 = vsubq_s16(v46, v48);
        v50 = vdupq_n_s16((v47 + v4) & 0x1F);
        v51 = vsubq_s16(v46, v50);
        v52 = vdupq_n_s16((v47 + v41) & 0x1F);
        v53 = &v79[(v47 >> 5) + 2];
        v54 = vdupq_n_s16((v47 + result) & 0x1F);
        v55 = &v79[((v47 + result) >> 5) + 2];
        v56 = vsubq_s16(v46, v52);
        v57 = vsubq_s16(v46, v54);
        v58 = &v79[((v47 + v4) >> 5) + 2];
        v59 = &v79[((v47 + v41) >> 5) + 2];
        v60 = -4;
        v61 = a4;
        do
        {
          v62 = *(v53 - 4);
          v63 = *v53++;
          v64 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v62, v49), v63, v48), 5uLL);
          v65 = *(v58 - 4);
          v66 = *v58++;
          v67 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v65, v51), v66, v50), 5uLL);
          v68 = *(v59 - 4);
          v69 = *v59++;
          v70 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v56), v69, v52), 5uLL);
          v71 = *(v55 - 4);
          v72 = *v55++;
          v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v57), v72, v54), 5uLL);
          v74 = vtrn1q_s32(v64, v67);
          v75 = vtrn2q_s32(v64, v67);
          v76 = vtrn1q_s32(v70, v73);
          v77 = vtrn2q_s32(v70, v73);
          v78 = vzip2q_s64(v74, v76);
          v74.i64[1] = v76.i64[0];
          v76.i64[0] = v75.i64[0];
          v76.i64[1] = v77.i64[0];
          *v61 = v74;
          *(v61 + v45) = v76;
          *(v61 + v44) = v78;
          *(v61 + v42) = vzip2q_s64(v75, v77);
          v60 += 4;
          v61 = (v61 + v43);
        }

        while (v60 < 0x1C);
        v47 += 4 * v4;
        ++a4;
        v12 = v40 >= 0x1C;
        v40 += 4;
      }

      while (!v12);
    }

    else
    {
      v19 = 0;
      v20.i64[0] = 0x20002000200020;
      v20.i64[1] = 0x20002000200020;
      v21 = v4;
      do
      {
        v22 = 0;
        v23 = vdupq_n_s16(v21 & 0x1F);
        v24 = vsubq_s16(v20, v23);
        v25 = 1;
        do
        {
          v26 = &v79[v22 * 4 + 1 + (v21 >> 5)];
          v27 = &a4[v22] + 2 * v19 * a3;
          v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 + 1), v24), *(v26 + 5), v23), 5uLL);
          *v27 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v26, v24), *(v26 + 1), v23), 5uLL);
          *(v27 + 16) = v28;
          v29 = vmlaq_s16(vmulq_s16(*(v26 + 2), v24), *(v26 + 9), v23);
          v30 = vmlaq_s16(vmulq_s16(*(v26 + 3), v24), *(v26 + 13), v23);
          LOBYTE(v26) = v25;
          *(v27 + 32) = vrshrq_n_u16(v29, 5uLL);
          *(v27 + 48) = vrshrq_n_u16(v30, 5uLL);
          v22 = 4;
          v25 = 0;
        }

        while ((v26 & 1) != 0);
        ++v19;
        v21 += v4;
      }

      while (v19 != 32);
    }
  }

  else
  {
    v31 = v4 >> 5;
    v32 = a4 + 4;
    v33 = 4 * v31;
    v34 = (&v80[8] + v33);
    v35 = 32;
    do
    {
      v36 = *(v34 - 6);
      *(v32 - 4) = *(v34 - 7);
      *(v32 - 3) = v36;
      v37 = *(v34 - 4);
      *(v32 - 2) = *(v34 - 5);
      *(v32 - 1) = v37;
      v38 = *(v34 - 2);
      *v32 = *(v34 - 3);
      v32[1] = v38;
      v39 = *v34;
      v32[2] = *(v34 - 1);
      v32[3] = v39;
      v32 = (v32 + 2 * a3);
      v34 = (v34 + v33);
      --v35;
    }

    while (v35);
  }

  return result;
}

unint64_t sub_27745CB38(unint64_t result, _OWORD *a2, uint64_t a3, _OWORD *a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = (a2 + 8);
  if (result <= 0x11)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 8;
  }

  if (v4 < 0)
  {
    v8 = 0;
    v9 = result - 18;
    if (result > 0x11)
    {
      v5 = a2;
    }

    v10 = a2[8 * (result < 0x12)];
    v11 = *(v5 + 16);
    v12 = *(v5 + 32);
    v13 = *(v5 + 48);
    LODWORD(v5) = 18 - result;
    if (v9 < 0)
    {
      v5 = v5;
    }

    else
    {
      v5 = v9;
    }

    v14 = &unk_27750E640 + 64 * v5;
    v7 = 16;
    do
    {
      *&v78[v8] = vqtbl4q_s8(*&v10, *&v14[v8]);
      v8 += 16;
    }

    while (v8 != 64);
  }

  else
  {
    v7 = 32;
  }

  v15 = 0;
  v16 = v81;
  v17 = v6 + 2;
  do
  {
    v18 = *(v17 - 1);
    *(v16 - 3) = *(v17 - 2);
    *(v16 - 2) = v18;
    v19 = *v17;
    v20 = v17[1];
    v17 += 4;
    *(v16 - 1) = v19;
    *v16 = v20;
    v15 += 16;
    v16 += 4;
  }

  while (v15 < v7);
  v79 = *(a2 - 1);
  if ((v4 & 0x1F) != 0)
  {
    if (result <= 0x11)
    {
      v38 = 0;
      v39 = 2 * v4;
      v40 = 6 * a3;
      v41 = 8 * a3;
      v42 = 4 * a3;
      v43 = 2 * a3;
      v44.i64[0] = 0x20002000200020;
      v44.i64[1] = 0x20002000200020;
      v45 = v4;
      result = (3 * v4);
      do
      {
        v46 = vdupq_n_s16(v45 & 0x1F);
        v47 = vsubq_s16(v44, v46);
        v48 = vdupq_n_s16((v45 + v4) & 0x1F);
        v49 = vsubq_s16(v44, v48);
        v50 = vdupq_n_s16((v45 + v39) & 0x1F);
        v51 = &v80[4 * (v45 >> 5) + 4];
        v52 = vdupq_n_s16((v45 + result) & 0x1F);
        v53 = &v80[4 * ((v45 + result) >> 5) + 4];
        v54 = vsubq_s16(v44, v50);
        v55 = vsubq_s16(v44, v52);
        v56 = &v80[4 * ((v45 + v4) >> 5) + 4];
        v57 = &v80[4 * ((v45 + v39) >> 5) + 4];
        v58 = -4;
        v59 = a4;
        do
        {
          v60 = *(v51 - 4);
          v61 = *v51++;
          v62 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60, v47), v61, v46), 5uLL);
          v63 = *(v56 - 4);
          v64 = *v56++;
          v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v63, v49), v64, v48), 5uLL);
          v66 = *(v57 - 4);
          v67 = *v57++;
          v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v54), v67, v50), 5uLL);
          v69 = *(v53 - 4);
          v70 = *v53++;
          v71 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v69, v55), v70, v52), 5uLL);
          v72 = vtrn1q_s32(v62, v65);
          v73 = vtrn2q_s32(v62, v65);
          v74 = vtrn1q_s32(v68, v71);
          v75 = vtrn2q_s32(v68, v71);
          v76 = vzip2q_s64(v72, v74);
          v72.i64[1] = v74.i64[0];
          v74.i64[0] = v73.i64[0];
          v74.i64[1] = v75.i64[0];
          *v59 = v72;
          *(v59 + v43) = v74;
          *(v59 + v42) = v76;
          *(v59 + v40) = vzip2q_s64(v73, v75);
          v58 += 4;
          v59 = (v59 + v41);
        }

        while (v58 < 0xC);
        v45 += 4 * v4;
        ++a4;
        v77 = v38 >= 0xC;
        v38 += 4;
      }

      while (!v77);
    }

    else
    {
      v21 = (a4 + 2);
      v22 = 16;
      v23.i64[0] = 0x20002000200020;
      v23.i64[1] = 0x20002000200020;
      v24 = v4;
      do
      {
        v25 = vdupq_n_s16(v24 & 0x1F);
        v26 = vsubq_s16(v23, v25);
        v27 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v80[4 * (v24 >> 5)], v26), *&v80[4 * (v24 >> 5) + 4], v25), 5uLL);
        v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v80[4 * (v24 >> 5) + 16], v26), *&v80[4 * (v24 >> 5) + 20], v25), 5uLL);
        result = &v80[4 * (v24 >> 5) + 32];
        v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*result, v26), *(result + 4), v25), 5uLL);
        v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v81[4 * (v24 >> 5)], v26), *&v81[4 * (v24 >> 5) + 4], v25), 5uLL);
        v21[-2] = v27;
        v21[-1] = v28;
        *v21 = v29;
        v21[1] = v30;
        v24 += v4;
        v21 = (v21 + 2 * a3);
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v31 = v4 >> 5;
    v32 = a4 + 2;
    v33 = 4 * v31;
    v34 = &v81[v33];
    v35 = 16;
    do
    {
      v36 = *(v34 - 2);
      *(v32 - 2) = *(v34 - 3);
      *(v32 - 1) = v36;
      v37 = *v34;
      *v32 = *(v34 - 1);
      v32[1] = v37;
      v32 = (v32 + 2 * a3);
      v34 = (v34 + v33);
      --v35;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_27745CE88(uint64_t result, _OWORD *a2, uint64_t a3, uint16x8_t *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 4;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result <= 0x11)
    {
      v7 = a2 + 4;
    }

    else
    {
      v7 = a2;
    }

    v8 = a2[4 * (result < 0x12)];
    v9 = v7[1];
    if (v6 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v10 = (&unk_27750E640 + 64 * v6);
    v11 = vqtbl2q_s8(*&v8, v10[2]);
    v12 = vqtbl2q_s8(*&v8, v10[3]);
    v64 = v11;
    v65 = v12;
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v13 = v5[1];
  v14 = v5[2];
  v66 = a2[4 * (result > 0x11)];
  v67[0] = v13;
  v15 = v5[3];
  v67[1] = v14;
  v67[2] = v15;
  v65.i32[3] = *(a2 - 1);
  if ((v4 & 0x1F) != 0)
  {
    if (result <= 0x11)
    {
      v33 = 0;
      v34 = 2 * v4;
      v35 = 1;
      v36.i64[0] = 0x20002000200020;
      v36.i64[1] = 0x20002000200020;
      v37 = v4;
      v38 = 3 * v4;
      do
      {
        v39 = 0;
        v40 = v35;
        v41 = vdupq_n_s16(v37 & 0x1F);
        v42 = vsubq_s16(v36, v41);
        v43 = vdupq_n_s16((v37 + v4) & 0x1F);
        v44 = vsubq_s16(v36, v43);
        result = (v37 + v34) >> 5;
        v45 = vdupq_n_s16((v37 + v34) & 0x1F);
        v46 = vsubq_s16(v36, v45);
        v47 = vdupq_n_s16((v37 + v38) & 0x1F);
        v48 = vsubq_s16(v36, v47);
        v49 = &a4[v33];
        v50 = 1;
        do
        {
          v51 = &v67[v39 / 4 - 1];
          v52 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 4 * (v37 >> 5)), v42), *(v51 + 4 * (v37 >> 5) + 4), v41), 5uLL);
          v53 = v51 + 4 * ((v37 + v4) >> 5);
          v54 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v44), *(v53 + 4), v43), 5uLL);
          v55 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 4 * result), v46), *(v51 + 4 * result + 4), v45), 5uLL);
          v56 = v51 + 4 * ((v37 + v38) >> 5);
          v57 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v56, v48), *(v56 + 4), v47), 5uLL);
          v58 = vtrn1q_s32(v52, v54);
          v59 = vtrn2q_s32(v52, v54);
          v60 = vtrn1q_s32(v55, v57);
          v61 = vtrn2q_s32(v55, v57);
          v62 = vzip2q_s64(v58, v60);
          v58.i64[1] = v60.i64[0];
          v63 = vzip2q_s64(v59, v61);
          v59.i64[1] = v61.i64[0];
          *(v49 + 2 * v39 * a3) = v58;
          LOBYTE(v56) = v50;
          *(v49 + 2 * (v39 | 1) * a3) = v59;
          *(v49 + 2 * (v39 | 2) * a3) = v62;
          *(v49 + 2 * (v39 | 3) * a3) = v63;
          v39 = 4;
          v50 = 0;
        }

        while ((v56 & 1) != 0);
        v35 = 0;
        v37 += 4 * v4;
        v33 = 1;
      }

      while ((v40 & 1) != 0);
    }

    else
    {
      v16 = a4 + 1;
      v17 = 8;
      v18.i64[0] = 0x20002000200020;
      v18.i64[1] = 0x20002000200020;
      v19 = v4;
      do
      {
        v20 = vdupq_n_s16(v19 & 0x1F);
        v21 = vsubq_s16(v18, v20);
        v22 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v67[-1] + 4 * (v19 >> 5)), v21), *(&v67[-1] + 4 * (v19 >> 5) + 4), v20), 5uLL);
        v23 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 + 4 * (v19 >> 5)), v21), *(v67 + 4 * (v19 >> 5) + 4), v20), 5uLL);
        v16[-1] = v22;
        *v16 = v23;
        v19 += v4;
        v16 = (v16 + 2 * a3);
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v24 = v4 >> 5;
    v25 = 4 * (v4 >> 4);
    v26 = (v67 + v25);
    v27 = (v67 + 4 * v24);
    v28 = 2 * a3;
    v29 = -2;
    do
    {
      v30 = *v27;
      *a4 = v27[-1];
      a4[1] = v30;
      v31 = &a4->i8[v28];
      v32 = *v26;
      v29 += 2;
      *v31 = *(v26 - 1);
      *(v31 + 1) = v32;
      v26 = (v26 + v25);
      v27 = (v27 + v25);
      a4 = (a4 + v28 + v28);
    }

    while (v29 < 6);
  }

  return result;
}

uint64_t sub_27745D190(uint64_t result, int8x16_t *a2, uint64_t a3, _OWORD *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 2;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result - 18 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v27 = vqtbl1q_s8(a2[2 * (result < 0x12)], xmmword_27750E640[4 * v6 + 3]);
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v7 = a2[2 * (result > 0x11)];
  v8 = v5[1];
  v28[0] = v7;
  v28[1] = v8;
  v27.i32[3] = a2[-1].i32[3];
  if ((v4 & 0x1F) != 0)
  {
    v9.i64[0] = 0x20002000200020;
    v9.i64[1] = 0x20002000200020;
    v10 = vdupq_n_s16((2 * v4) & 0x1E);
    v11 = vdupq_n_s16((3 * v4) & 0x1F);
    v12 = vsubq_s16(v9, v11);
    v13 = v4 >> 3;
    v14 = vdupq_n_s16(4 * (v4 & 7u));
    v15 = vsubq_s16(v9, v14);
    v16 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v28 + 4 * (v4 >> 5)), vsubq_s16(v9, vdupq_n_s16(v4 & 0x1F))), *(v28 + 4 * (v4 >> 5) + 4), vmovl_u8(vdup_n_s8(v4 & 0x1F))), 5uLL);
    v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v28 + 4 * (v4 >> 4)), vsubq_s16(v9, v10)), *(v28 + 4 * (v4 >> 4) + 4), v10), 5uLL);
    v18 = v28 + 4 * ((3 * v4) >> 5);
    v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v18, v12), *(v18 + 4), v11), 5uLL);
    v20 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v28 + 4 * v13), v15), *(v28 + 4 * v13 + 4), v14), 5uLL);
    if (result < 0x12)
    {
      v21 = vtrn2q_s32(v16, v17);
      v16 = vtrn1q_s32(v16, v17);
      v22 = vtrn1q_s32(v19, v20);
      v23 = vtrn2q_s32(v19, v20);
      v19 = vzip2q_s64(v16, v22);
      v16.i64[1] = v22.i64[0];
      v17.i64[0] = v21.i64[0];
      v17.i64[1] = v23.i64[0];
      v20 = vzip2q_s64(v21, v23);
    }

    *a4 = v16;
    *(a4 + 2 * a3) = v17;
    *(a4 + 4 * a3) = v19;
    *(a4 + 6 * a3) = v20;
  }

  else
  {
    if (v4 < 0)
    {
      v8 = v27;
      v24 = vextq_s8(v27, v7, 0xCuLL);
      v25 = vextq_s8(v27, v7, 8uLL);
      v26 = vextq_s8(v27, v7, 4uLL);
    }

    else
    {
      v24 = vextq_s8(v7, v8, 4uLL);
      v25 = vextq_s8(v7, v8, 8uLL);
      v26 = vextq_s8(v7, v8, 0xCuLL);
    }

    *a4 = v24;
    *(a4 + 2 * a3) = v25;
    *(a4 + 4 * a3) = v26;
    *(a4 + 6 * a3) = v8;
  }

  return result;
}

float32x4_t sub_27745D39C(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v4 = 0;
  v5 = a4 + 4;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_f32(v6);
    v5[-4] = result;
    v5[-3] = result;
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v5[2] = result;
    v5[3] = result;
    v4 += 4;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 128);
  return result;
}

float32x4_t sub_27745D3D4(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v4 = 0;
  v5 = a4 + 2;
  do
  {
    v6 = (a2 + v4);
    result = vld1q_dup_f32(v6);
    v5[-2] = result;
    v5[-1] = result;
    *v5 = result;
    v5[1] = result;
    v4 += 4;
    v5 = (v5 + 2 * a3);
  }

  while (v4 != 64);
  return result;
}

float32x4_t sub_27745D404(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v4 = (a2 + 4);
  v5 = -2;
  do
  {
    v6 = v4 - 1;
    result = vld1q_dup_f32(v6);
    v8 = vld1q_dup_f32(v4);
    *a4 = result;
    a4[1] = result;
    v9 = (a4 + 2 * a3);
    *v9 = v8;
    v9[1] = v8;
    v5 += 2;
    v4 += 2;
    a4 = (a4 + 4 * a3);
  }

  while (v5 < 6);
  return result;
}

float32x4_t sub_27745D444(uint64_t a1, const float *a2, uint64_t a3, float32x4_t *a4)
{
  v4 = a2 + 2;
  v5 = a2;
  v6 = vld1q_dup_f32(v5++);
  *a4 = v6;
  v7 = vld1q_dup_f32(v5);
  *(a4 + 2 * a3) = v7;
  v8 = a2 + 3;
  v9 = vld1q_dup_f32(v4);
  *(a4 + 4 * a3) = v9;
  result = vld1q_dup_f32(v8);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745D484(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[16];
  v5 = a2[17];
  v6 = a2[18];
  v7 = a2[19];
  v8 = a2[20];
  v9 = a2[21];
  v10 = (a4 + 64);
  v11 = 32;
  v12 = a2[22];
  v13 = a2[23];
  do
  {
    *(v10 - 4) = v4;
    *(v10 - 3) = v5;
    *(v10 - 2) = v6;
    *(v10 - 1) = v7;
    *v10 = v8;
    v10[1] = v9;
    v10[2] = v12;
    v10[3] = v13;
    v10 = (v10 + 2 * a3);
    --v11;
  }

  while (v11);
}

void sub_27745D4C0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[8];
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[11];
  v8 = (a4 + 32);
  v9 = 16;
  do
  {
    *(v8 - 2) = v4;
    *(v8 - 1) = v5;
    *v8 = v6;
    v8[1] = v7;
    v8 = (v8 + 2 * a3);
    --v9;
  }

  while (v9);
}

void sub_27745D4EC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = -2;
  do
  {
    *a4 = v4;
    a4[1] = v5;
    v7 = (a4 + 2 * a3);
    *v7 = v4;
    v7[1] = v5;
    v6 += 2;
    a4 = (a4 + 4 * a3);
  }

  while (v6 < 6);
}

__n128 sub_27745D51C(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4)
{
  result = a2[2];
  *a4 = result;
  *(a4 + 2 * a3) = result;
  *(a4 + 4 * a3) = result;
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745D544(uint64_t a1, uint64_t a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = 0;
  v5 = (a2 + 32);
  v6 = vld1q_dup_f32(v5);
  v7 = (a2 + 96);
  v8 = vld1q_dup_f32(v7);
  v9 = vmulq_s16(v8, xmmword_27750D540);
  v10 = vmulq_s16(v8, xmmword_27750D550);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v13 = vshlq_n_s16(v11, 3uLL);
  v14 = vshlq_n_s16(v12, 3uLL);
  v15 = a4 + 1;
  v16 = v6;
  do
  {
    v17 = (a2 + v4);
    v18 = vld1q_dup_f32(v17);
    v13 = vsubq_s16(v13, v11);
    v14 = vsubq_s16(v14, v12);
    v15[-1] = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v13, v9), v16), v18, xmmword_27750D5E0), 4uLL);
    *v15 = vrshrq_n_u16(vmlaq_s16(vaddq_s16(vaddq_s16(v14, v10), v16), v18, xmmword_27750D5F0), 4uLL);
    v16 = vaddq_s16(v16, v6);
    v4 += 4;
    v15 = (v15 + 2 * a3);
  }

  while (v4 != 32);
}

uint16x8_t sub_27745D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = (a2 + 48);
  v5 = vld1q_dup_f32(v4);
  v6 = vmulq_s16(v5, xmmword_27750D540);
  v7 = *a2;
  v8 = *(a2 + 32);
  v9.i64[0] = 0x3000300030003;
  v9.i64[1] = 0x3000300030003;
  v10 = (a2 + 16);
  v11 = vld1q_dup_f32(v10);
  *a4 = vrshrq_n_u16(vaddq_s16(vmlaq_s16(vmlaq_s16(v6, v8, v9), vdupq_lane_s32(*a2, 0), xmmword_27750D5F0), v11), 3uLL);
  *(a4 + 2 * a3) = vrshrq_n_u16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v8, v8), v6), vdupq_lane_s32(*v7.i8, 1), xmmword_27750D5F0), vaddq_s16(v11, v11)), 3uLL);
  *(a4 + 4 * a3) = vrshrq_n_u16(vmlaq_s16(vmlaq_s16(vaddq_s16(v6, v8), vdupq_laneq_s32(v7, 2), xmmword_27750D5F0), v11, v9), 3uLL);
  result = vrshrq_n_u16(vaddq_s16(vmlaq_s16(v6, vdupq_laneq_s32(v7, 3), xmmword_27750D5F0), vshlq_n_s16(v11, 2uLL)), 3uLL);
  *(a4 + 6 * a3) = result;
  return result;
}

void sub_27745D694(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vaddq_s16(vaddq_s16(a2[4], *a2), vaddq_s16(a2[1], a2[5]));
  v5 = vpaddq_s32(v4, v4);
  v6 = vrshrq_n_u16(vpaddq_s32(v5, v5), 4uLL);
  v7 = -2;
  do
  {
    *a4 = v6;
    a4[1] = v6;
    v8 = (a4 + 2 * a3);
    *v8 = v6;
    v8[1] = v6;
    v7 += 2;
    a4 = (a4 + 4 * a3);
  }

  while (v7 < 6);
}

uint16x8_t sub_27745D6E0(uint64_t a1, int16x8_t *a2, uint64_t a3, uint16x8_t *a4)
{
  v4 = vaddq_s16(a2[2], *a2);
  v5 = vpaddq_s32(v4, v4);
  result = vrshrq_n_u16(vpaddq_s32(v5, v5), 3uLL);
  *a4 = result;
  *(a4 + 2 * a3) = result;
  *(a4 + 4 * a3) = result;
  *(a4 + 6 * a3) = result;
  return result;
}

uint64_t sub_27745D71C(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6, uint16x4_t a7, uint16x4_t a8, uint16x4_t a9, uint16x4_t a10, uint16x4_t a11, uint16x4_t a12)
{
  v77[27] = *MEMORY[0x277D85DE8];
  v12 = byte_27750DFFA[result];
  v13 = a2 + 256;
  if (result <= 0x11)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + 256;
  }

  if (v12 < 0)
  {
    if (result > 0x11)
    {
      v13 = a2;
    }

    v16 = byte_27750DFFA[result];
    if (v16 < 0)
    {
      v17 = v13 - 4;
      v18 = word_27750E120[result - 11];
      v19 = v16 * v18 + 128;
      v15 = 32;
      do
      {
        v76[v16] = *(v17 + 4 * (v19 >> 8));
        v19 += v18;
        v20 = __CFADD__(v16++, 1);
      }

      while (!v20);
    }

    else
    {
      v15 = 32;
    }
  }

  else
  {
    v15 = 64;
  }

  v21 = 0;
  v22 = v77;
  v23 = (v14 + 32);
  do
  {
    v24 = *(v23 - 1);
    *(v22 - 3) = *(v23 - 2);
    *(v22 - 2) = v24;
    v25 = *v23;
    v26 = v23[1];
    v23 += 4;
    *(v22 - 1) = v25;
    *v22 = v26;
    v21 += 16;
    v22 += 4;
  }

  while (v21 < v15);
  v76[0] = *(a2 - 4);
  if ((v12 & 0x1F) != 0)
  {
    if (result < 0x12)
    {
      v46 = 0;
      v47 = 2 * v12;
      v48 = 6 * a3;
      v49 = 8 * a3;
      v50 = 4 * a3;
      v51 = 2 * a3;
      LODWORD(result) = v12;
      v52 = 3 * v12;
      do
      {
        v53 = &v76[(result >> 5) + 2];
        v54 = &v76[((result + v52) >> 5) + 2];
        v55 = -4;
        v56 = a4;
        v57 = &v76[((result + v12) >> 5) + 2];
        v58 = &v76[((result + v47) >> 5) + 2];
        do
        {
          v59 = *(v53 - 4);
          v60 = *v53++;
          LODWORD(v25) = result & 0x1F;
          LODWORD(v26) = 32 - v25;
          v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v60.i8, *&v25, 0), *v59.i8, *&v26, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v60, *&v25, 0), v59, *&v26, 0), 5uLL);
          v62 = *(v57 - 4);
          v63 = *v57++;
          a7.i32[0] = (result + v12) & 0x1F;
          a8.i32[0] = 32 - a7.i32[0];
          v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v63.i8, a7, 0), *v62.i8, a8, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v63, a7, 0), v62, a8, 0), 5uLL);
          v65 = *(v58 - 4);
          v66 = *v58++;
          a9.i32[0] = (result + v47) & 0x1F;
          a10.i32[0] = 32 - a9.i32[0];
          v67 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v66.i8, a9, 0), *v65.i8, a10, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v66, a9, 0), v65, a10, 0), 5uLL);
          v68 = *(v54 - 4);
          v69 = *v54++;
          a11.i32[0] = (result + v52) & 0x1F;
          a12.i32[0] = 32 - a11.i32[0];
          v70 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v69.i8, a11, 0), *v68.i8, a12, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v69, a11, 0), v68, a12, 0), 5uLL);
          v71 = vtrn1q_s32(v61, v64);
          v72 = vtrn2q_s32(v61, v64);
          v73 = vtrn1q_s32(v67, v70);
          v74 = vtrn2q_s32(v67, v70);
          v75 = vzip2q_s64(v71, v73);
          v71.i64[1] = v73.i64[0];
          v73.i64[0] = v72.i64[0];
          v73.i64[1] = v74.i64[0];
          *v56 = v71;
          *(v56 + v51) = v73;
          *(v56 + v50) = v75;
          *(v56 + v48) = vzip2q_s64(v72, v74);
          v55 += 4;
          v56 = (v56 + v49);
        }

        while (v55 < 0x1C);
        result = (result + 4 * v12);
        ++a4;
        v20 = v46 >= 0x1C;
        v46 += 4;
      }

      while (!v20);
    }

    else
    {
      v27 = 0;
      v28 = v12;
      do
      {
        v29 = 0;
        LODWORD(v25) = v28 & 0x1F;
        LODWORD(v26) = 32 - v25;
        v30 = 1;
        do
        {
          v31 = &v76[v29 * 4 + 1 + (v28 >> 5)];
          v32 = &a4[v29] + 2 * v27 * a3;
          v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v31 + 5), *&v25, 0), *(v31 + 4), *&v26, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v31 + 5), *&v25, 0), *(v31 + 1), *&v26, 0), 5uLL);
          *v32 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v31 + 1), *&v25, 0), *v31, *&v26, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v31 + 1), *&v25, 0), *v31, *&v26, 0), 5uLL);
          *(v32 + 16) = v33;
          v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v31 + 9), *&v25, 0), *(v31 + 8), *&v26, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v31 + 9), *&v25, 0), *(v31 + 2), *&v26, 0), 5uLL);
          v35 = *(v31 + 3);
          v36 = *(v31 + 13);
          LOBYTE(v31) = v30;
          *(v32 + 32) = v34;
          *(v32 + 48) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v36.i8, *&v25, 0), *v35.i8, *&v26, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v36, *&v25, 0), v35, *&v26, 0), 5uLL);
          v29 = 4;
          v30 = 0;
        }

        while ((v31 & 1) != 0);
        ++v27;
        v28 += v12;
      }

      while (v27 != 32);
    }
  }

  else
  {
    v37 = v12 >> 5;
    v38 = a4 + 4;
    v39 = 4 * v37;
    v40 = (&v77[8] + v39);
    v41 = 32;
    do
    {
      v42 = *(v40 - 6);
      *(v38 - 4) = *(v40 - 7);
      *(v38 - 3) = v42;
      v43 = *(v40 - 4);
      *(v38 - 2) = *(v40 - 5);
      *(v38 - 1) = v43;
      v44 = *(v40 - 2);
      *v38 = *(v40 - 3);
      v38[1] = v44;
      v45 = *v40;
      v38[2] = *(v40 - 1);
      v38[3] = v45;
      v38 = (v38 + 2 * a3);
      v40 = (v40 + v39);
      --v41;
    }

    while (v41);
  }

  return result;
}

unint64_t sub_27745DAF4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9, uint16x4_t a10, uint16x4_t a11, uint16x4_t a12)
{
  v80 = *MEMORY[0x277D85DE8];
  v12 = byte_27750DFFA[result];
  v13 = a2 + 128;
  if (result <= 0x11)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + 128;
  }

  if (v12 < 0)
  {
    v16 = 0;
    v17 = result - 18;
    if (result > 0x11)
    {
      v13 = a2;
    }

    v18 = *(a2 + ((result < 0x12) << 7));
    v19 = *(v13 + 16);
    a7 = *(v13 + 32);
    a8 = *(v13 + 48);
    LODWORD(v13) = 18 - result;
    if (v17 < 0)
    {
      v13 = v13;
    }

    else
    {
      v13 = v17;
    }

    v20 = &xmmword_27750E640[4 * v13];
    v15 = 16;
    do
    {
      a9 = vqtbl4q_s8(*(&a7 - 2), v20[v16]);
      *&v76[v16 * 16] = a9;
      ++v16;
    }

    while (v16 != 4);
  }

  else
  {
    v15 = 32;
  }

  v21 = 0;
  v22 = v79;
  v23 = (v14 + 32);
  do
  {
    v24 = *(v23 - 1);
    *(v22 - 3) = *(v23 - 2);
    *(v22 - 2) = v24;
    v25 = *v23;
    v26 = v23[1];
    v23 += 4;
    *(v22 - 1) = v25;
    *v22 = v26;
    v21 += 16;
    v22 += 4;
  }

  while (v21 < v15);
  v77 = *(a2 - 4);
  if ((v12 & 0x1F) != 0)
  {
    if (result <= 0x11)
    {
      v45 = 0;
      v46 = 2 * v12;
      v47 = 6 * a3;
      v48 = 8 * a3;
      v49 = 4 * a3;
      v50 = 2 * a3;
      LODWORD(result) = v12;
      v51 = 3 * v12;
      do
      {
        v52 = &v78[4 * (result >> 5) + 4];
        v53 = &v78[4 * ((result + v51) >> 5) + 4];
        v54 = -4;
        v55 = a4;
        v56 = &v78[4 * ((result + v12) >> 5) + 4];
        v57 = &v78[4 * ((result + v46) >> 5) + 4];
        do
        {
          v58 = *(v52 - 4);
          v59 = *v52++;
          LODWORD(v25) = result & 0x1F;
          LODWORD(v26) = 32 - v25;
          v60 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v59.i8, *&v25, 0), *v58.i8, *&v26, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v59, *&v25, 0), v58, *&v26, 0), 5uLL);
          v61 = *(v56 - 4);
          v62 = *v56++;
          a7.n128_u32[0] = (result + v12) & 0x1F;
          a8.n128_u32[0] = 32 - a7.n128_u32[0];
          v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v62.i8, a7.n128_u64[0], 0), *v61.i8, a8.n128_u64[0], 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v62, a7.n128_u64[0], 0), v61, a8.n128_u64[0], 0), 5uLL);
          v64 = *(v57 - 4);
          v65 = *v57++;
          a9.n128_u32[0] = (result + v46) & 0x1F;
          a10.i32[0] = 32 - a9.n128_u32[0];
          v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v65.i8, a9.n128_u64[0], 0), *v64.i8, a10, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v65, a9.n128_u64[0], 0), v64, a10, 0), 5uLL);
          v67 = *(v53 - 4);
          v68 = *v53++;
          a11.i32[0] = (result + v51) & 0x1F;
          a12.i32[0] = 32 - a11.i32[0];
          v69 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v68.i8, a11, 0), *v67.i8, a12, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v68, a11, 0), v67, a12, 0), 5uLL);
          v70 = vtrn1q_s32(v60, v63);
          v71 = vtrn2q_s32(v60, v63);
          v72 = vtrn1q_s32(v66, v69);
          v73 = vtrn2q_s32(v66, v69);
          v74 = vzip2q_s64(v70, v72);
          v70.i64[1] = v72.i64[0];
          v72.i64[0] = v71.i64[0];
          v72.i64[1] = v73.i64[0];
          *v55 = v70;
          *(v55 + v50) = v72;
          *(v55 + v49) = v74;
          *(v55 + v47) = vzip2q_s64(v71, v73);
          v54 += 4;
          v55 = (v55 + v48);
        }

        while (v54 < 0xC);
        result = (result + 4 * v12);
        ++a4;
        v75 = v45 >= 0xC;
        v45 += 4;
      }

      while (!v75);
    }

    else
    {
      v27 = (a4 + 2);
      v28 = 16;
      v29 = v12;
      do
      {
        v30 = vdupq_n_s16(32 - (v29 & 0x1Fu));
        v31 = vdupq_n_s16(v29 & 0x1F);
        v32 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v78[4 * (v29 >> 5) + 4], *v31.i8), *&v78[4 * (v29 >> 5)], *v30.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v78[4 * (v29 >> 5) + 4], v31), *&v78[4 * (v29 >> 5)], v30), 5uLL);
        v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v78[4 * (v29 >> 5) + 20], *v31.i8), *&v78[4 * (v29 >> 5) + 16], *v30.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v78[4 * (v29 >> 5) + 20], v31), *&v78[4 * (v29 >> 5) + 16], v30), 5uLL);
        v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*&v78[4 * (v29 >> 5) + 36], *v31.i8), *&v78[4 * (v29 >> 5) + 32], *v30.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*&v78[4 * (v29 >> 5) + 36], v31), *&v78[4 * (v29 >> 5) + 32], v30), 5uLL);
        result = &v79[4 * (v29 >> 5)];
        v35 = *(result + 4);
        v36 = vmlal_u16(vmull_u16(*v35.i8, *v31.i8), *result, *v30.i8);
        v37 = vmlal_high_u16(vmull_high_u16(v35, v31), *result, v30);
        v27[-2] = v32;
        v27[-1] = v33;
        *v27 = v34;
        v27[1] = vrshrn_high_n_s32(vrshrn_n_s32(v36, 5uLL), v37, 5uLL);
        v29 += v12;
        v27 = (v27 + 2 * a3);
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    v38 = v12 >> 5;
    v39 = a4 + 2;
    v40 = 4 * v38;
    v41 = &v79[v40];
    v42 = 16;
    do
    {
      v43 = *(v41 - 2);
      *(v39 - 2) = *(v41 - 3);
      *(v39 - 1) = v43;
      v44 = *v41;
      *v39 = *(v41 - 1);
      v39[1] = v44;
      v39 = (v39 + 2 * a3);
      v41 = (v41 + v40);
      --v42;
    }

    while (v42);
  }

  return result;
}

uint64_t sub_27745DEC0(uint64_t result, _OWORD *a2, uint64_t a3, int16x8_t *a4, double a5, double a6, double a7, int8x16_t a8, uint16x4_t a9, uint16x4_t a10, uint16x4_t a11, uint16x4_t a12)
{
  v72 = *MEMORY[0x277D85DE8];
  v12 = byte_27750DFFA[result];
  v13 = a2 + 4;
  if (v12 < 0)
  {
    LODWORD(v14) = result - 18;
    if (result <= 0x11)
    {
      v15 = a2 + 4;
    }

    else
    {
      v15 = a2;
    }

    v16 = a2[4 * (result < 0x12)];
    v17 = v15[1];
    if (v14 < 0)
    {
      v14 = (18 - result);
    }

    else
    {
      v14 = v14;
    }

    v18 = &xmmword_27750E640[4 * v14];
    a8 = v18[3];
    v68 = vqtbl2q_s8(*&v16, v18[2]);
    v69 = vqtbl2q_s8(*&v16, a8);
  }

  if (result <= 0x11)
  {
    v13 = a2;
  }

  v19 = v13[1];
  v20 = v13[2];
  v70 = a2[4 * (result > 0x11)];
  v71[0] = v19;
  v21 = v13[3];
  v71[1] = v20;
  v71[2] = v21;
  v69.i32[3] = *(a2 - 1);
  if ((v12 & 0x1F) != 0)
  {
    if (result <= 0x11)
    {
      v38 = 0;
      v39 = 2 * v12;
      v40 = 1;
      v41 = v12;
      v42 = 3 * v12;
      do
      {
        v43 = 0;
        v44 = v40;
        LODWORD(v21) = v41 & 0x1F;
        LODWORD(v19) = 32 - v21;
        LODWORD(v20) = (v41 + v12) & 0x1F;
        a8.i32[0] = 32 - ((v41 + v12) & 0x1F);
        result = (v41 + v12) >> 5;
        v45 = &a4[v38];
        v46 = 1;
        do
        {
          v47 = &v71[v43 / 4 - 1];
          v48 = v47 + 4 * (v41 >> 5);
          v49 = *(v48 + 4);
          v50 = vmlal_lane_u16(vmull_lane_u16(*v49.i8, *&v21, 0), *v48, *&v19, 0);
          v51 = vmlal_high_lane_u16(vmull_high_lane_u16(v49, *&v21, 0), *v48, *&v19, 0);
          v52 = v47 + 4 * result;
          v53 = *(v52 + 4);
          v54 = vmlal_lane_u16(vmull_lane_u16(*v53.i8, *&v20, 0), *v52, *a8.i8, 0);
          v55 = vmlal_high_lane_u16(vmull_high_lane_u16(v53, *&v20, 0), *v52, *a8.i8, 0);
          v56 = v47 + 4 * ((v41 + v39) >> 5);
          v57 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 5uLL), v51, 5uLL);
          v58 = v47 + 4 * ((v41 + v42) >> 5);
          v59 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 5uLL), v55, 5uLL);
          a9.i32[0] = (v41 + v39) & 0x1F;
          a10.i32[0] = 32 - ((v41 + v39) & 0x1F);
          v60 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v56 + 4), a9, 0), *v56, a10, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v56 + 4), a9, 0), *v56, a10, 0), 5uLL);
          a11.i32[0] = (v41 + v42) & 0x1F;
          a12.i32[0] = 32 - a11.i32[0];
          v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v58 + 4), a11, 0), *v58, a12, 0), 5uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v58 + 4), a11, 0), *v58, a12, 0), 5uLL);
          v62 = vtrn1q_s32(v57, v59);
          v63 = vtrn2q_s32(v57, v59);
          v64 = vtrn1q_s32(v60, v61);
          v65 = vtrn2q_s32(v60, v61);
          v66 = vzip2q_s64(v62, v64);
          v67 = vzip2q_s64(v63, v65);
          v62.i64[1] = v64.i64[0];
          v63.i64[1] = v65.i64[0];
          *(v45 + 2 * v43 * a3) = v62;
          LOBYTE(v58) = v46;
          *(v45 + 2 * (v43 | 1) * a3) = v63;
          *(v45 + 2 * (v43 | 2) * a3) = v66;
          *(v45 + 2 * (v43 | 3) * a3) = v67;
          v43 = 4;
          v46 = 0;
        }

        while ((v58 & 1) != 0);
        v40 = 0;
        v41 += 4 * v12;
        v38 = 1;
      }

      while ((v44 & 1) != 0);
    }

    else
    {
      v22 = a4 + 1;
      v23 = 8;
      v24 = v12;
      do
      {
        v25 = vdupq_n_s16(32 - (v24 & 0x1Fu));
        v26 = vdupq_n_s16(v24 & 0x1F);
        v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(&v71[-1] + 4 * (v24 >> 5) + 4), *v26.i8), *(&v71[-1] + 4 * (v24 >> 5)), *v25.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(&v71[-1] + 4 * (v24 >> 5) + 4), v26), *(&v71[-1] + 4 * (v24 >> 5)), v25), 5uLL);
        v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v71 + 4 * (v24 >> 5) + 4), *v26.i8), *(v71 + 4 * (v24 >> 5)), *v25.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v71 + 4 * (v24 >> 5) + 4), v26), *(v71 + 4 * (v24 >> 5)), v25), 5uLL);
        v22[-1] = v27;
        *v22 = v28;
        v24 += v12;
        v22 = (v22 + 2 * a3);
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v29 = v12 >> 5;
    v30 = 4 * (v12 >> 4);
    v31 = (v71 + v30);
    v32 = (v71 + 4 * v29);
    v33 = 2 * a3;
    v34 = -2;
    do
    {
      v35 = *v32;
      *a4 = v32[-1];
      a4[1] = v35;
      v36 = &a4->i8[v33];
      v37 = *v31;
      v34 += 2;
      *v36 = *(v31 - 1);
      *(v36 + 1) = v37;
      v31 = (v31 + v30);
      v32 = (v32 + v30);
      a4 = (a4 + v33 + v33);
    }

    while (v34 < 6);
  }

  return result;
}

uint64_t sub_27745E22C(uint64_t result, int8x16_t *a2, uint64_t a3, _OWORD *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = byte_27750DFFA[result];
  v5 = a2 + 2;
  if (v4 < 0)
  {
    LODWORD(v6) = result - 18;
    if (result - 18 < 0)
    {
      v6 = (18 - result);
    }

    else
    {
      v6 = v6;
    }

    v34 = vqtbl1q_s8(a2[2 * (result < 0x12)], xmmword_27750E640[4 * v6 + 3]);
  }

  if (result <= 0x11)
  {
    v5 = a2;
  }

  v7 = a2[2 * (result > 0x11)];
  v8 = v5[1];
  v35[0] = v7;
  v35[1] = v8;
  v34.i32[3] = a2[-1].i32[3];
  if ((v4 & 0x1F) != 0)
  {
    v9 = v4 >> 5;
    v10 = vdupq_n_s16(32 - (v4 & 0x1Fu));
    v11 = vdupq_n_s16(v4 & 0x1F);
    v12 = v4 >> 4;
    v13 = (2 * v4) & 0x1E;
    v14 = vdupq_n_s16(32 - v13);
    v15 = vdupq_n_s16(v13);
    v16 = (3 * v4) >> 5;
    v17 = (3 * v4) & 0x1F;
    v18 = vdupq_n_s16(32 - v17);
    v19 = vdupq_n_s16(v17);
    v20 = v4 >> 3;
    v21 = 4 * (v4 & 7);
    v22 = vdupq_n_s16(32 - v21);
    v23 = vdupq_n_s16(v21);
    v24 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v35 + 4 * v9 + 4), *v11.i8), *(v35 + 4 * v9), *v10.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v35 + 4 * v9 + 4), v11), *(v35 + 4 * v9), v10), 5uLL);
    v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v35 + 4 * v12 + 4), *v15.i8), *(v35 + 4 * v12), *v14.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v35 + 4 * v12 + 4), v15), *(v35 + 4 * v12), v14), 5uLL);
    v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v35 + 4 * v16 + 4), *v19.i8), *(v35 + 4 * v16), *v18.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v35 + 4 * v16 + 4), v19), *(v35 + 4 * v16), v18), 5uLL);
    v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v35 + 4 * v20 + 4), *v23.i8), *(v35 + 4 * v20), *v22.i8), 5uLL), vmlal_high_u16(vmull_high_u16(*(v35 + 4 * v20 + 4), v23), *(v35 + 4 * v20), v22), 5uLL);
    if (result < 0x12)
    {
      v28 = vtrn2q_s32(v24, v25);
      v24 = vtrn1q_s32(v24, v25);
      v29 = vtrn1q_s32(v26, v27);
      v30 = vtrn2q_s32(v26, v27);
      v26 = vzip2q_s64(v24, v29);
      v24.i64[1] = v29.i64[0];
      v25.i64[0] = v28.i64[0];
      v25.i64[1] = v30.i64[0];
      v27 = vzip2q_s64(v28, v30);
    }

    *a4 = v24;
    *(a4 + 2 * a3) = v25;
    *(a4 + 4 * a3) = v26;
    *(a4 + 6 * a3) = v27;
  }

  else
  {
    if (v4 < 0)
    {
      v8 = v34;
      v31 = vextq_s8(v34, v7, 0xCuLL);
      v32 = vextq_s8(v34, v7, 8uLL);
      v33 = vextq_s8(v34, v7, 4uLL);
    }

    else
    {
      v31 = vextq_s8(v7, v8, 4uLL);
      v32 = vextq_s8(v7, v8, 8uLL);
      v33 = vextq_s8(v7, v8, 0xCuLL);
    }

    *a4 = v31;
    *(a4 + 2 * a3) = v32;
    *(a4 + 4 * a3) = v33;
    *(a4 + 6 * a3) = v8;
  }

  return result;
}

uint64_t sub_27745E470(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 != a2[1])
  {
    return 0;
  }

  if (v3 == 15)
  {
    v5 = 1;
  }

  else
  {
    v7 = *(a1 + 2) - *(a2 + 2);
    if (v7 < 0)
    {
      v7 = *(a2 + 2) - *(a1 + 2);
    }

    if (v7 <= a3)
    {
      v8 = *(a1 + 3) - *(a2 + 3);
      if (v8 < 0)
      {
        v8 = *(a2 + 3) - *(a1 + 3);
      }

      v5 = v8 <= a3;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4 == 15)
  {
    v9 = 1;
  }

  else
  {
    v10 = *(a1 + 4) - *(a2 + 4);
    if (v10 < 0)
    {
      v10 = *(a2 + 4) - *(a1 + 4);
    }

    if (v10 <= a3)
    {
      v11 = *(a1 + 5) - *(a2 + 5);
      if (v11 < 0)
      {
        v11 = *(a2 + 5) - *(a1 + 5);
      }

      v9 = v11 <= a3;
    }

    else
    {
      v9 = 0;
    }
  }

  return v5 & v9;
}

uint64_t sub_27745E530(unsigned __int8 *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 8) >> 4;
  if (v2 != *a1)
  {
    return 0;
  }

  v3 = *(a2 + 9) >> 4;
  if (v3 != a1[1])
  {
    return 0;
  }

  if (v2 == 15)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a2 == *(a1 + 2) && a2[1] == *(a1 + 3);
  }

  if (v3 == 15)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2[2] == *(a1 + 4) && a2[3] == *(a1 + 5);
  }

  return v4 & v6;
}

uint64_t sub_27745E5D8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 96) = 0;
  v5 = a1 + 96;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 124) = 1;
  v6 = a1 + 8;
  while (1)
  {
    result = *(v6 + v4);
    if (!result)
    {
      break;
    }

    result = sub_27745E5D8(result, a2);
    v8 = *(*(v6 + v4) + 128);
    v9 = *(a1 + 120) + *(v8 + 24);
    *(a1 + 120) = v9;
    v10 = *(a1 + 96) + *v8;
    *(a1 + 96) = v10;
    v4 += 8;
    if (v4 == 32)
    {
      v11 = v9 + 12;
      *(a1 + 120) = v11;
      v12 = v10 + ((v11 * *(a2 + 2 * *(a1 + 124) + 24)) >> (8 * (*(a1 + 124) == 0)));
      *(a1 + 112) = v12;
      goto LABEL_6;
    }
  }

  v12 = *(a1 + 112);
LABEL_6:
  v13 = *(a1 + 88);
  v14 = *(v13 + 16) > v12;
  if (v14)
  {
    v13 = v5;
  }

  *(a1 + 136) = v14;
  *(a1 + 128) = v13;
  return result;
}

uint64_t sub_27745E6C8(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0u;
  *(result + 20) = 0u;
  *(result + 36) = 0u;
  *(result + 52) = 0;
  v1 = (result + 200);
  v2 = 12240;
  do
  {
    *(v1 - 6) = 0;
    *(v1 - 1) = 0;
    *v1 = 0;
    *(v1 - 136) = 0uLL;
    *(v1 - 120) = 0uLL;
    *(v1 - 13) = 0;
    v1 += 144;
    v2 -= 144;
  }

  while (v2);
  v3 = 0;
  *(result + 12648) = 0;
  *(result + 12664) = 0;
  v4 = 85;
  do
  {
    *(result + v3 + 120) = 0;
    v5 = result + v3 + 120;
    *(v5 + 24) = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = -1;
    *(v5 + 28) = 1;
    *(v5 + 32) = v5;
    *(v5 + 72) = 0;
    v3 += 144;
    *(v5 + 80) = 0;
    --v4;
  }

  while (v4);
  *(result + 12656) = 0;
  return result;
}

uint64_t sub_27745E758(uint64_t a1, int a2, int a3)
{
  v3 = a1 + 64;
  v4 = a1 + 64 + 144 * a2;
  *v4 = a3;
  *(v4 + 4) = a2;
  v5 = (a2 + 1);
  v6 = (v4 + 8);
  if (a3 == 3)
  {
    *v6 = 0u;
    *(v4 + 24) = 0u;
  }

  else
  {
    for (i = 0; i != 32; i += 8)
    {
      *(v6 + i) = v3 + 144 * v5;
      v5 = sub_27745E758(a1);
    }
  }

  return v5;
}

uint64_t sub_27745E7E4(uint64_t a1, int a2, int a3, signed int a4)
{
  if (*a1 != 1)
  {
    return 0;
  }

  if (*(a1 + 32) == a2 && *(a1 + 36) == a3 && *(a1 + 40) == a4)
  {
    return 0;
  }

  if (*(a1 + 8) > a4)
  {
    return 4294954394;
  }

  v6 = *(a1 + 4);
  if (v6 < a4)
  {
    return 4294954394;
  }

  v7 = *(a1 + 24);
  if (v7 > a2)
  {
    return 4294954394;
  }

  if (a4 + a2 > v7 + v6)
  {
    return 4294954394;
  }

  v8 = *(a1 + 28);
  if (v8 > a3 || a4 + a3 > v8 + v6)
  {
    return 4294954394;
  }

  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  v9 = __clz(__rbit32(a4)) & 0x1F;
  *(a1 + 40) = a4;
  *(a1 + 44) = v9;
  *(a1 + 48) = *(a1 + 16) - v9;
  v10 = sub_27745E8E8(a1, a2, a3, a4, (a1 + 52));
  result = 0;
  *(a1 + 56) = v10;
  *(a1 + 12648) = a1 + 4 * v10 + 12304;
  return result;
}

uint64_t sub_27745E8E8(uint64_t result, int a2, int a3, int a4, int *a5)
{
  v5 = 4 - *(result + 12);
  v6 = *(result + 4) >> 1;
  v7 = v6 >= a4 && v5 <= 3;
  if (v7)
  {
    v9 = result;
    LODWORD(result) = 0;
    v10 = *(v9 + 24);
    v11 = a3 - *(v9 + 28);
    v12 = a2 - v10;
    v13 = v5;
    do
    {
      v8 = dword_27750E840[v13];
      result = result + v8 * ((v12 >= v6) | (2 * (v11 >= v6))) + 1;
      if (v6 >> 1 < a4)
      {
        break;
      }

      v11 %= v6;
      v12 %= v6;
      v6 >>= 1;
      v7 = v13++ < 3;
    }

    while (v7);
  }

  else
  {
    result = 0;
    v8 = 85;
  }

  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

uint64_t sub_27745E990(uint64_t a1, int a2, int a3, int a4)
{
  if (*a1 != 1)
  {
    return 0;
  }

  if (*(a1 + 8) > a4)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (v4 < a4)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5 > a2)
  {
    return 0;
  }

  if (a4 + a2 > v5 + v4)
  {
    return 0;
  }

  v6 = *(a1 + 28);
  if (v6 > a3 || a4 + a3 > v6 + v4)
  {
    return 0;
  }

  v8 = a1 + 144 * sub_27745E8E8(a1, a2, a3, a4, 0);
  if (*(v8 + 192))
  {
    return v8 + 64;
  }

  else
  {
    return 0;
  }
}

void sub_27745EA44(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6, char a7, char a8)
{
  *(a1 + 12690) = 0;
  *(a1 + 12692) = -1;
  *(a1 + 12700) = -1;
  *(a1 + 12708) = 0x4000000040;
  *(a1 + 12716) = a4;
  *(a1 + 12736) = 0x40FFC00040FFC0;
  *(a1 + 12720) = a5;
  *(a1 + 12744) = vdup_n_s32(0x40FFC0u);
  *(a1 + 12850) = a6;
  *(a1 + 12849) = a7;
  *(a1 + 12848) = a8;
  *a1 = a1 + 12752;
  *(a1 + 8) = a1 + 12800;
  *(a1 + 12856) = 0u;
  *(a1 + 12944) = a2;
  *(a1 + 12952) = a3;
  v11 = sub_277464560;
  *(a1 + 13072) = sub_277464560;
  *(a1 + 13080) = 0;
  if (*(*(a2 + 4768) + 221))
  {
    v12 = sub_277464270;
  }

  else
  {
    v12 = sub_277464560;
  }

  *(a1 + 13056) = v12;
  *(a1 + 13064) = 0;
  if (*(*(a2 + 4768) + 222))
  {
    v11 = sub_277463FF4;
  }

  *(a1 + 13040) = v11;
  *(a1 + 13048) = 0;
  v13 = *(a2 + 4768);
  v14 = v13[19];
  v15 = sub_2774636C4;
  switch(v14)
  {
    case 1:
      goto LABEL_10;
    case 3:
      goto LABEL_12;
    case 2:
      *(a1 + 12848) = 256;
LABEL_10:
      *(a1 + 13040) = sub_277463FF4;
      *(a1 + 13048) = 0;
      v13 = *(a2 + 4768);
      break;
  }

  v15 = sub_2774639A0;
LABEL_12:
  *(a1 + 13168) = v15;
  *(a1 + 13176) = 0;
  v16 = v13[18];
  v17 = nullsub_23;
  if (v16 <= 2)
  {
    if (v16 == 1)
    {
      *(a1 + 12724) = 16;
      v18 = 0x300000003;
      goto LABEL_20;
    }

    if (v16 == 2)
    {
      *(a1 + 12724) = 5;
      v18 = 0x2000000003;
LABEL_20:
      *(a1 + 12728) = v18;
      v17 = sub_277462464;
      goto LABEL_22;
    }

LABEL_18:
    v17 = sub_277462F60;
    goto LABEL_22;
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  *(a1 + 13168) = sub_2774636C4;
  v17 = sub_2774629EC;
LABEL_22:
  *(a1 + 13184) = v17;
  *(a1 + 13192) = 0;
  v19 = v13[20];
  v20 = sub_277460D34;
  switch(v19)
  {
    case 0:
      goto LABEL_28;
    case 2:
      *(a1 + 12716) = 0x100000001;
      break;
    case 1:
      *(a1 + 12716) = 0x800000008;
      v20 = sub_277461650;
      goto LABEL_28;
  }

  v20 = sub_2774629EC;
LABEL_28:
  *(a1 + 13200) = v20;
  *(a1 + 13208) = 0;
  *(a1 + 12688) = 0;
  v21 = *(a2 + 16);
  v22 = *(v21 + 2096);
  *(a1 + 12689) = v22;
  v23 = *(v21 + 2117);
  if (v22 == 8)
  {
    *(a1 + 12960) = sub_277460CE4;
    *(a1 + 12968) = sub_277460C94;
    *(a1 + 12976) = sub_277460C44;
    *(a1 + 12984) = sub_277460BF4;
    *(a1 + 12992) = sub_277460BA4;
    *(a1 + 13000) = sub_277460B38;
    *(a1 + 13008) = sub_277460ACC;
    *(a1 + 13016) = sub_277460A60;
    *(a1 + 13024) = sub_2774609F4;
    *(a1 + 13032) = sub_277460988;
    *(a1 + 13088) = sub_2774608DC;
    *(a1 + 13096) = sub_277460830;
    *(a1 + 13104) = sub_277460784;
    *(a1 + 13112) = sub_2774606D8;
    *(a1 + 13120) = sub_27746062C;
    *(a1 + 13128) = sub_277460558;
    *(a1 + 13136) = sub_277460478;
    *(a1 + 13144) = sub_277460398;
    *(a1 + 13152) = sub_2774602B8;
    *(a1 + 13160) = sub_2774601D8;
    *(a1 + 13216) = sub_277460178;
    *(a1 + 13224) = sub_277460118;
    *(a1 + 13232) = sub_2774600B8;
    *(a1 + 13240) = sub_277460058;
    v24 = (v23 * v23);
    v25 = *(a1 + 12872);
    v26 = *(a1 + 12880) - v25;
    if (v24 <= v26)
    {
      if (v24 < v26)
      {
        *(a1 + 12880) = v25 + v24;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 12872), v24 - v26);
    }

    v30 = *(a1 + 12896);
    v31 = *(a1 + 12904) - v30;
    if (v24 <= v31)
    {
      if (v24 < v31)
      {
        *(a1 + 12904) = v30 + v24;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 12896), v24 - v31);
    }

    v34 = *(a1 + 12920);
    v35 = *(a1 + 12928) - v34;
    if (v24 <= v35)
    {
      if (v24 < v35)
      {
        *(a1 + 12928) = v34 + v24;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 12920), v24 - v35);
    }

    *(a1 + 12960) = sub_277505BBC;
    *(a1 + 12968) = sub_277505B38;
    *(a1 + 12976) = sub_277505AB4;
    *(a1 + 12984) = sub_277505A48;
    *(a1 + 12992) = sub_2775059DC;
    *(a1 + 13216) = sub_277505938;
    *(a1 + 13224) = sub_277505870;
    *(a1 + 13232) = sub_277505750;
    v38 = sub_277505630;
  }

  else
  {
    *(a1 + 12960) = sub_27745FFFC;
    *(a1 + 12968) = sub_27745FFA0;
    *(a1 + 12976) = sub_27745FF44;
    *(a1 + 12984) = sub_27745FEE8;
    *(a1 + 12992) = sub_27745FE8C;
    *(a1 + 13000) = sub_27745FE14;
    *(a1 + 13008) = sub_27745FD9C;
    *(a1 + 13016) = sub_27745FD24;
    *(a1 + 13024) = sub_27745FCAC;
    *(a1 + 13032) = sub_27745FC34;
    *(a1 + 13088) = sub_27745FB8C;
    *(a1 + 13096) = sub_27745FAE0;
    *(a1 + 13104) = sub_27745FA34;
    *(a1 + 13112) = sub_27745F988;
    *(a1 + 13120) = sub_27745F8DC;
    *(a1 + 13128) = sub_27745F804;
    *(a1 + 13136) = sub_27745F724;
    *(a1 + 13144) = sub_27745F644;
    *(a1 + 13152) = sub_27745F564;
    *(a1 + 13160) = sub_27745F484;
    *(a1 + 13216) = sub_27745F418;
    *(a1 + 13224) = sub_27745F3AC;
    *(a1 + 13232) = sub_27745F340;
    *(a1 + 13240) = sub_27745F2D4;
    v27 = (2 * v23 * v23);
    v28 = *(a1 + 12872);
    v29 = *(a1 + 12880) - v28;
    if (v27 <= v29)
    {
      if (v27 < v29)
      {
        *(a1 + 12880) = v28 + v27;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 12872), v27 - v29);
    }

    v32 = *(a1 + 12896);
    v33 = *(a1 + 12904) - v32;
    if (v27 <= v33)
    {
      if (v27 < v33)
      {
        *(a1 + 12904) = v32 + v27;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 12896), v27 - v33);
    }

    v36 = *(a1 + 12920);
    v37 = *(a1 + 12928) - v36;
    if (v27 <= v37)
    {
      if (v27 < v37)
      {
        *(a1 + 12928) = v36 + v27;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 12920), v27 - v37);
    }

    *(a1 + 12960) = sub_277506214;
    *(a1 + 12968) = sub_277506184;
    *(a1 + 12976) = sub_27750610C;
    *(a1 + 12984) = sub_277506094;
    *(a1 + 12992) = sub_277505FDC;
    *(a1 + 13216) = sub_277505F14;
    *(a1 + 13224) = sub_277505E1C;
    *(a1 + 13232) = sub_277505D1C;
    v38 = sub_277505C1C;
  }

  *(a1 + 13240) = v38;
  v39 = *(a2 + 4768);
  if ((v39[530] & 1) != 0 || (v39[528] & 1) != 0 || (v39[532] & 1) != 0 || v39[531] == 1)
  {
    *(a1 + 12680) = a3;
    v40 = v39[178];
    v41 = v39[177];
    *(a1 + 32) = v40;
    *(a1 + 36) = v41;
    *(a1 + 20) = 1 << v40;
    *(a1 + 24) = 1 << v41;
    v42 = v40 - v41;
    *(a1 + 28) = v42;
    if (v42 <= 3)
    {
      if ((*(a1 + 16) & 1) == 0)
      {
        sub_27745E758(a1 + 16, 0, 0);
      }

      *(a1 + 16) = 1;
    }
  }

  else
  {
    *(a1 + 16) = 0;
  }

  *(a1 + 12852) = 5;
}

uint64_t sub_27745F2D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 128; i += 2)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0x3FF)
        {
          v10 = 1023;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745F340(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 64; i += 2)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0x3FF)
        {
          v10 = 1023;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745F3AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 32; i += 2)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0x3FF)
        {
          v10 = 1023;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745F418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 16; i += 2)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0x3FF)
        {
          v10 = 1023;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745F484(uint64_t result, char a2, int *a3, _DWORD *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 4);
    v13 = a2 - 3;
    v14 = *a3;
    v15 = a3[1];
    v16 = *a6;
    v17 = a6[1];
    v18 = (a7[1] + a4[1] + 1) << (a2 - 4);
    do
    {
      v19 = 0;
      v20 = -2;
      do
      {
        v21 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        if (v21 >= 0x3FF)
        {
          LOWORD(v22) = 1023;
        }

        else
        {
          v22 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        }

        if (v21 <= 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        *(a10 + v19) = v23;
        v24 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        if (v24 >= 0x3FF)
        {
          LOWORD(v25) = 1023;
        }

        else
        {
          v25 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        }

        if (v24 <= 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        *(a10 + v19 + 2) = v26;
        v20 += 2;
        v19 += 4;
      }

      while (v20 < 0x3E);
      ++v10;
      a5 += 128;
      a8 += 128;
      a10 += 2 * a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_27745F564(uint64_t result, char a2, int *a3, _DWORD *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 4);
    v13 = a2 - 3;
    v14 = *a3;
    v15 = a3[1];
    v16 = *a6;
    v17 = a6[1];
    v18 = (a7[1] + a4[1] + 1) << (a2 - 4);
    do
    {
      v19 = 0;
      v20 = -2;
      do
      {
        v21 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        if (v21 >= 0x3FF)
        {
          LOWORD(v22) = 1023;
        }

        else
        {
          v22 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        }

        if (v21 <= 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        *(a10 + v19) = v23;
        v24 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        if (v24 >= 0x3FF)
        {
          LOWORD(v25) = 1023;
        }

        else
        {
          v25 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        }

        if (v24 <= 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        *(a10 + v19 + 2) = v26;
        v20 += 2;
        v19 += 4;
      }

      while (v20 < 0x1E);
      ++v10;
      a5 += 64;
      a8 += 64;
      a10 += 2 * a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_27745F644(uint64_t result, char a2, int *a3, _DWORD *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 4);
    v13 = a2 - 3;
    v14 = *a3;
    v15 = a3[1];
    v16 = *a6;
    v17 = a6[1];
    v18 = (a7[1] + a4[1] + 1) << (a2 - 4);
    do
    {
      v19 = 0;
      v20 = -2;
      do
      {
        v21 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        if (v21 >= 0x3FF)
        {
          LOWORD(v22) = 1023;
        }

        else
        {
          v22 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        }

        if (v21 <= 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        *(a10 + v19) = v23;
        v24 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        if (v24 >= 0x3FF)
        {
          LOWORD(v25) = 1023;
        }

        else
        {
          v25 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        }

        if (v24 <= 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        *(a10 + v19 + 2) = v26;
        v20 += 2;
        v19 += 4;
      }

      while (v20 < 0xE);
      ++v10;
      a5 += 32;
      a8 += 32;
      a10 += 2 * a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_27745F724(uint64_t result, char a2, int *a3, _DWORD *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 4);
    v13 = a2 - 3;
    v14 = *a3;
    v15 = a3[1];
    v16 = *a6;
    v17 = a6[1];
    v18 = (a7[1] + a4[1] + 1) << (a2 - 4);
    do
    {
      v19 = 0;
      v20 = -2;
      do
      {
        v21 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        if (v21 >= 0x3FF)
        {
          LOWORD(v22) = 1023;
        }

        else
        {
          v22 = (v12 + v14 * *(a5 + v19) + v16 * *(a8 + v19)) >> v13;
        }

        if (v21 <= 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        *(a10 + v19) = v23;
        v24 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        if (v24 >= 0x3FF)
        {
          LOWORD(v25) = 1023;
        }

        else
        {
          v25 = (v18 + v15 * *(a5 + v19 + 2) + v17 * *(a8 + v19 + 2)) >> v13;
        }

        if (v24 <= 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        *(a10 + v19 + 2) = v26;
        v20 += 2;
        v19 += 4;
      }

      while (v20 < 6);
      ++v10;
      a5 += 16;
      a8 += 16;
      a10 += 2 * a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_27745F804(uint64_t result, char a2, int *a3, _DWORD *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 4);
    v13 = a2 - 3;
    v14 = *a3;
    v15 = a3[1];
    v16 = *a6;
    v17 = a6[1];
    v18 = (a7[1] + a4[1] + 1) << (a2 - 4);
    do
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = (v12 + v14 * *(a5 + 2 * v19) + v16 * *(a8 + 2 * v19)) >> v13;
        if (v21 >= 0x3FF)
        {
          LOWORD(v22) = 1023;
        }

        else
        {
          v22 = (v12 + v14 * *(a5 + 2 * v19) + v16 * *(a8 + 2 * v19)) >> v13;
        }

        if (v21 <= 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        *(a10 + 2 * v19) = v23;
        v24 = (2 * v19) | 2;
        v25 = v20;
        v26 = (v18 + v15 * *(a5 + v24) + v17 * *(a8 + v24)) >> v13;
        if (v26 >= 0x3FF)
        {
          LOWORD(v27) = 1023;
        }

        else
        {
          v27 = (v18 + v15 * *(a5 + v24) + v17 * *(a8 + v24)) >> v13;
        }

        if (v26 <= 0)
        {
          v28 = 0;
        }

        else
        {
          v28 = v27;
        }

        *(a10 + v24) = v28;
        v19 = 2;
        v20 = 0;
      }

      while ((v25 & 1) != 0);
      ++v10;
      a5 += 8;
      a8 += 8;
      a10 += 2 * a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_27745F8DC(uint64_t result, char a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 4;
    v9 = 1 << (a2 - 4) >> 1;
    v10 = *a3;
    v11 = a3[1];
    v12 = *a4;
    v13 = a4[1];
    v14 = 2 * a6;
    do
    {
      v15 = 0;
      v16 = -2;
      do
      {
        v17 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        if (v17 >= 0x3FF)
        {
          LOWORD(v18) = 1023;
        }

        else
        {
          v18 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        *(a7 + v15) = v19;
        v20 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        if (v20 >= 0x3FF)
        {
          LOWORD(v21) = 1023;
        }

        else
        {
          v21 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        }

        if (v20 <= 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        *(a7 + v15 + 2) = v22;
        v16 += 2;
        v15 += 4;
      }

      while (v16 < 0x3E);
      ++v7;
      a5 += 128;
      a7 += v14;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745F988(uint64_t result, char a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 4;
    v9 = 1 << (a2 - 4) >> 1;
    v10 = *a3;
    v11 = a3[1];
    v12 = *a4;
    v13 = a4[1];
    v14 = 2 * a6;
    do
    {
      v15 = 0;
      v16 = -2;
      do
      {
        v17 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        if (v17 >= 0x3FF)
        {
          LOWORD(v18) = 1023;
        }

        else
        {
          v18 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        *(a7 + v15) = v19;
        v20 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        if (v20 >= 0x3FF)
        {
          LOWORD(v21) = 1023;
        }

        else
        {
          v21 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        }

        if (v20 <= 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        *(a7 + v15 + 2) = v22;
        v16 += 2;
        v15 += 4;
      }

      while (v16 < 0x1E);
      ++v7;
      a5 += 64;
      a7 += v14;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FA34(uint64_t result, char a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 4;
    v9 = 1 << (a2 - 4) >> 1;
    v10 = *a3;
    v11 = a3[1];
    v12 = *a4;
    v13 = a4[1];
    v14 = 2 * a6;
    do
    {
      v15 = 0;
      v16 = -2;
      do
      {
        v17 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        if (v17 >= 0x3FF)
        {
          LOWORD(v18) = 1023;
        }

        else
        {
          v18 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        *(a7 + v15) = v19;
        v20 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        if (v20 >= 0x3FF)
        {
          LOWORD(v21) = 1023;
        }

        else
        {
          v21 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        }

        if (v20 <= 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        *(a7 + v15 + 2) = v22;
        v16 += 2;
        v15 += 4;
      }

      while (v16 < 0xE);
      ++v7;
      a5 += 32;
      a7 += v14;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FAE0(uint64_t result, char a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 4;
    v9 = 1 << (a2 - 4) >> 1;
    v10 = *a3;
    v11 = a3[1];
    v12 = *a4;
    v13 = a4[1];
    v14 = 2 * a6;
    do
    {
      v15 = 0;
      v16 = -2;
      do
      {
        v17 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        if (v17 >= 0x3FF)
        {
          LOWORD(v18) = 1023;
        }

        else
        {
          v18 = ((v9 + v10 * *(a5 + v15)) >> v8) + v12;
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        *(a7 + v15) = v19;
        v20 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        if (v20 >= 0x3FF)
        {
          LOWORD(v21) = 1023;
        }

        else
        {
          v21 = ((v9 + v11 * *(a5 + v15 + 2)) >> v8) + v13;
        }

        if (v20 <= 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        *(a7 + v15 + 2) = v22;
        v16 += 2;
        v15 += 4;
      }

      while (v16 < 6);
      ++v7;
      a5 += 16;
      a7 += v14;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FB8C(uint64_t result, char a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 4;
    v9 = 1 << (a2 - 4) >> 1;
    v10 = *a3;
    v11 = a3[1];
    v12 = *a4;
    v13 = a4[1];
    do
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = 2 * v14;
        v17 = ((v9 + v10 * *(a5 + 2 * v14)) >> v8) + v12;
        if (v17 >= 0x3FF)
        {
          LOWORD(v18) = 1023;
        }

        else
        {
          v18 = ((v9 + v10 * *(a5 + 2 * v14)) >> v8) + v12;
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        *(a7 + 2 * v14) = v19;
        v20 = v16 | 2;
        v21 = v15;
        v22 = ((v9 + v11 * *(a5 + (v16 | 2))) >> v8) + v13;
        if (v22 >= 0x3FF)
        {
          LOWORD(v23) = 1023;
        }

        else
        {
          v23 = ((v9 + v11 * *(a5 + (v16 | 2))) >> v8) + v13;
        }

        if (v22 <= 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        *(a7 + v20) = v24;
        v14 = 2;
        v15 = 0;
      }

      while ((v21 & 1) != 0);
      ++v7;
      a5 += 8;
      a7 += 2 * a6;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FC34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 128; i += 2)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_27745FCAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 64; i += 2)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_27745FD24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 32; i += 2)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_27745FD9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 16; i += 2)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_27745FE14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 8; i += 2)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_27745FE8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 128; i += 2)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FEE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 64; i += 2)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FF44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 32; i += 2)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FFA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 16; i += 2)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_27745FFFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 8; i += 2)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += 2 * a6;
      a5 += 2 * a4;
      a3 += 2 * a2;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460058(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 64; ++i)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0xFF)
        {
          v10 = -1;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_2774600B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 32; ++i)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0xFF)
        {
          v10 = -1;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 16; ++i)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0xFF)
        {
          v10 = -1;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460178(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 8; ++i)
      {
        v9 = 2 * *(a3 + i) - *(a5 + i);
        if (v9 >= 0xFF)
        {
          v10 = -1;
        }

        else
        {
          v10 = 2 * *(a3 + i) - *(a5 + i);
        }

        if (v9 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *(a7 + i) = v11;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_2774601D8(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 6);
    v13 = a2 - 5;
    v14 = (a7[1] + a4[1] + 1) << (a2 - 6);
    do
    {
      v15 = 1;
      do
      {
        v16 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        if (v16 >= 0xFF)
        {
          LOBYTE(v17) = -1;
        }

        else
        {
          v17 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        }

        if (v16 <= 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        *(a10 + v15 - 1) = v18;
        v19 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        if (v19 >= 0xFF)
        {
          LOBYTE(v20) = -1;
        }

        else
        {
          v20 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        }

        if (v19 <= 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(a10 + v15) = v21;
        v22 = v15 - 1;
        v15 += 2;
      }

      while (v22 < 0x3E);
      ++v10;
      a5 += 64;
      a8 += 64;
      a10 += a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_2774602B8(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 6);
    v13 = a2 - 5;
    v14 = (a7[1] + a4[1] + 1) << (a2 - 6);
    do
    {
      v15 = 1;
      do
      {
        v16 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        if (v16 >= 0xFF)
        {
          LOBYTE(v17) = -1;
        }

        else
        {
          v17 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        }

        if (v16 <= 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        *(a10 + v15 - 1) = v18;
        v19 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        if (v19 >= 0xFF)
        {
          LOBYTE(v20) = -1;
        }

        else
        {
          v20 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        }

        if (v19 <= 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(a10 + v15) = v21;
        v22 = v15 - 1;
        v15 += 2;
      }

      while (v22 < 0x1E);
      ++v10;
      a5 += 32;
      a8 += 32;
      a10 += a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_277460398(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 6);
    v13 = a2 - 5;
    v14 = (a7[1] + a4[1] + 1) << (a2 - 6);
    do
    {
      v15 = 1;
      do
      {
        v16 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        if (v16 >= 0xFF)
        {
          LOBYTE(v17) = -1;
        }

        else
        {
          v17 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        }

        if (v16 <= 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        *(a10 + v15 - 1) = v18;
        v19 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        if (v19 >= 0xFF)
        {
          LOBYTE(v20) = -1;
        }

        else
        {
          v20 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        }

        if (v19 <= 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(a10 + v15) = v21;
        v22 = v15 - 1;
        v15 += 2;
      }

      while (v22 < 0xE);
      ++v10;
      a5 += 16;
      a8 += 16;
      a10 += a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_277460478(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 6);
    v13 = a2 - 5;
    v14 = (a7[1] + a4[1] + 1) << (a2 - 6);
    do
    {
      v15 = 1;
      do
      {
        v16 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        if (v16 >= 0xFF)
        {
          LOBYTE(v17) = -1;
        }

        else
        {
          v17 = (v12 + *a3 * *(a5 + v15 - 1) + *a6 * *(a8 + v15 - 1)) >> v13;
        }

        if (v16 <= 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        *(a10 + v15 - 1) = v18;
        v19 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        if (v19 >= 0xFF)
        {
          LOBYTE(v20) = -1;
        }

        else
        {
          v20 = (v14 + a3[1] * *(a5 + v15) + a6[1] * *(a8 + v15)) >> v13;
        }

        if (v19 <= 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(a10 + v15) = v21;
        v22 = v15 - 1;
        v15 += 2;
      }

      while (v22 < 6);
      ++v10;
      a5 += 8;
      a8 += 8;
      a10 += a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_277460558(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result >= 1)
  {
    v10 = 0;
    v12 = (*a7 + *a4 + 1) << (a2 - 6);
    v13 = a2 - 5;
    v14 = (a7[1] + a4[1] + 1) << (a2 - 6);
    do
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = v16;
        v18 = (v12 + *a3 * *(a5 + v15) + *a6 * *(a8 + v15)) >> v13;
        if (v18 >= 0xFF)
        {
          LOBYTE(v19) = -1;
        }

        else
        {
          v19 = (v12 + *a3 * *(a5 + v15) + *a6 * *(a8 + v15)) >> v13;
        }

        if (v18 <= 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19;
        }

        *(a10 + v15) = v20;
        v21 = v15 | 1;
        v22 = (v14 + a3[1] * *(a5 + v21) + a6[1] * *(a8 + v21)) >> v13;
        if (v22 >= 0xFF)
        {
          LOBYTE(v23) = -1;
        }

        else
        {
          v23 = (v14 + a3[1] * *(a5 + v21) + a6[1] * *(a8 + v21)) >> v13;
        }

        if (v22 <= 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        *(a10 + v21) = v24;
        v15 = 2;
        v16 = 0;
      }

      while ((v17 & 1) != 0);
      ++v10;
      a5 += 4;
      a8 += 4;
      a10 += a9;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_27746062C(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 6;
    v9 = 1 << (a2 - 6) >> 1;
    do
    {
      v10 = 1;
      do
      {
        v11 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        if (v11 >= 0xFF)
        {
          LOBYTE(v12) = -1;
        }

        else
        {
          v12 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        }

        if (v11 <= 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        *(a7 + v10 - 1) = v13;
        v14 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        if (v14 >= 0xFF)
        {
          LOBYTE(v15) = -1;
        }

        else
        {
          v15 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        }

        if (v14 <= 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        *(a7 + v10) = v16;
        v17 = v10 - 1;
        v10 += 2;
      }

      while (v17 < 0x3E);
      ++v7;
      a5 += 64;
      a7 += a6;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_2774606D8(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 6;
    v9 = 1 << (a2 - 6) >> 1;
    do
    {
      v10 = 1;
      do
      {
        v11 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        if (v11 >= 0xFF)
        {
          LOBYTE(v12) = -1;
        }

        else
        {
          v12 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        }

        if (v11 <= 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        *(a7 + v10 - 1) = v13;
        v14 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        if (v14 >= 0xFF)
        {
          LOBYTE(v15) = -1;
        }

        else
        {
          v15 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        }

        if (v14 <= 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        *(a7 + v10) = v16;
        v17 = v10 - 1;
        v10 += 2;
      }

      while (v17 < 0x1E);
      ++v7;
      a5 += 32;
      a7 += a6;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460784(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 6;
    v9 = 1 << (a2 - 6) >> 1;
    do
    {
      v10 = 1;
      do
      {
        v11 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        if (v11 >= 0xFF)
        {
          LOBYTE(v12) = -1;
        }

        else
        {
          v12 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        }

        if (v11 <= 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        *(a7 + v10 - 1) = v13;
        v14 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        if (v14 >= 0xFF)
        {
          LOBYTE(v15) = -1;
        }

        else
        {
          v15 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        }

        if (v14 <= 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        *(a7 + v10) = v16;
        v17 = v10 - 1;
        v10 += 2;
      }

      while (v17 < 0xE);
      ++v7;
      a5 += 16;
      a7 += a6;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460830(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 6;
    v9 = 1 << (a2 - 6) >> 1;
    do
    {
      v10 = 1;
      do
      {
        v11 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        if (v11 >= 0xFF)
        {
          LOBYTE(v12) = -1;
        }

        else
        {
          v12 = ((v9 + *a3 * *(a5 + v10 - 1)) >> v8) + *a4;
        }

        if (v11 <= 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        *(a7 + v10 - 1) = v13;
        v14 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        if (v14 >= 0xFF)
        {
          LOBYTE(v15) = -1;
        }

        else
        {
          v15 = ((v9 + a3[1] * *(a5 + v10)) >> v8) + a4[1];
        }

        if (v14 <= 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        *(a7 + v10) = v16;
        v17 = v10 - 1;
        v10 += 2;
      }

      while (v17 < 6);
      ++v7;
      a5 += 8;
      a7 += a6;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_2774608DC(uint64_t result, char a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = a2 - 6;
    v9 = 1 << (a2 - 6) >> 1;
    do
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        v13 = ((v9 + *a3 * *(a5 + v10)) >> v8) + *a4;
        if (v13 >= 0xFF)
        {
          LOBYTE(v14) = -1;
        }

        else
        {
          v14 = ((v9 + *a3 * *(a5 + v10)) >> v8) + *a4;
        }

        if (v13 <= 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        *(a7 + v10) = v15;
        v16 = v10 | 1;
        v17 = ((v9 + a3[1] * *(a5 + v16)) >> v8) + a4[1];
        if (v17 >= 0xFF)
        {
          LOBYTE(v18) = -1;
        }

        else
        {
          v18 = ((v9 + a3[1] * *(a5 + v16)) >> v8) + a4[1];
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        *(a7 + v16) = v19;
        v10 = 2;
        v11 = 0;
      }

      while ((v12 & 1) != 0);
      ++v7;
      a5 += 4;
      a7 += a6;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 64; ++i)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_2774609F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 32; ++i)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_277460A60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 16; ++i)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_277460ACC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 8; ++i)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_277460B38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11)
{
  if (result >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(a7 + i) = ((a9 << (a11 + 1)) + (1 << a11) + (*(a5 + i) + *(a3 + i)) * a8) >> (a11 + 1);
      }

      ++v11;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_277460BA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 64; ++i)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460BF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 32; ++i)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460C44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 16; ++i)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460C94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 8; ++i)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460CE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(a7 + i) = (*(a3 + i) + *(a5 + i) + 1) >> 1;
      }

      ++v7;
      a7 += a6;
      a3 += a2;
      a5 += a4;
    }

    while (v7 != result);
  }

  return result;
}

uint64_t sub_277460D34(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, signed int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v59 = a6;
  v14 = *(a1[1] + 4 * a6 + 4);
  v15 = a1[1619];
  v16 = a1[1607];
  v17 = a1[1608];
  v63[0] = a4;
  v63[1] = a5;
  v63[2] = 1;
  v64 = v16;
  v65 = v17;
  v18 = v15 + 8 * __clz(__rbit32(a4));
  v19 = *(v18 + 208);
  v66 = a8;
  v67 = v19;
  v20 = *(v18 + 520);
  v68 = v20;
  sub_277461180(a1, a2, a3, a4, a5, a6, v14, a10);
  v22 = a1[1];
  *(v22 + 40) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = -1;
  *(v22 + 44) = 1;
  v23 = a1[1634];
  v24 = a1[1635];
  v25 = (a1 + (v24 >> 1));
  if (v24)
  {
    v23 = *(*v25 + v23);
  }

  v26 = a3;
  v23(v25, a1[1], a2, a3, a4, a5, a8, a9, a6);
  v27 = a1[1];
  v28 = v27 + 4 * v59;
  v29 = *(v28 + 4) - a7;
  v30 = *(v28 + 6) - (a7 >> 16);
  if ((v29 + 64) >= 0x80)
  {
    if (v29 >= 0)
    {
      v32 = v29;
    }

    else
    {
      v32 = -v29;
    }

    v31 = 63 - 2 * __clz((v29 < 1) | (2 * v32));
  }

  else
  {
    v31 = byte_277533E48[v29 + 64];
  }

  if ((v30 + 64) >= 0x80)
  {
    if (v30 >= 0)
    {
      v34 = v30;
    }

    else
    {
      v34 = -v30;
    }

    v33 = 63 - 2 * __clz((v30 < 1) | (2 * v34));
  }

  else
  {
    v33 = byte_277533E48[v30 + 64];
  }

  *(v27 + 40) = v33 + v31;
  if (a4 >= 5 && a4 == a5)
  {
    if (a1[1583])
    {
      v35 = a1[1583];
    }

    else
    {
      v35 = a1 + 1540;
    }

    v36 = v20(v16, v17, a9, a8, v35);
    v37 = a1[1];
    *(v37 + 2) = v36;
    v38 = a1[1583];
    if (!v38)
    {
      v38 = (a1 + 1540);
    }

    if (*(a1 + 16) == 1)
    {
      v39 = *v37;
      v26 = a3;
      if (v39 == 15)
      {
        v40 = 0;
        v41 = *(v37 + 10);
      }

      else
      {
        v42 = v37[1];
        v43 = *(v37 + 10);
        if (v42 != 15)
        {
          v43 += *(a1 + 3168);
        }

        v40 = v42 != 15;
        if (v39 == 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v39 + 1;
        }

        v41 = v44 + v43;
      }

      v45 = *(a1 + 17);
      if (v45 >= 1)
      {
        v46 = *v37;
        v47 = BYTE1(*v37);
        v48.i64[0] = -1;
        v48.i16[6] = 1;
        v48.i16[7] = HIWORD(*(v37 + 2));
        v49 = BYTE1(*v37);
        if (v47 != 1)
        {
          ++v49;
        }

        if (v47 == 15)
        {
          v49 = 0;
        }

        v48.i32[2] = v49 + v41;
        v50 = &a1[18 * *(a1 + 18) + 19];
        v51.i64[1] = 0;
        do
        {
          v52 = *v38++;
          v51.i64[0] = v52 >> v40;
          v53 = vextq_s8(v48, v48, 8uLL).u64[0];
          v48.i64[0] = ((v48.i32[2] * *(a1[1585] + 2 * v48.i16[6] + 24)) >> (8 * (v48.i16[6] == 0))) + v51.i64[0];
          v48.i64[1] = v53;
          if (v48.i64[0] < v50->i64[0])
          {
            v50[-2] = v46;
            v50[-1] = v51;
            *v50 = v48;
          }

          v50 += 9;
          --v45;
        }

        while (v45);
        v37 = a1[1];
        v36 = *(v37 + 2);
      }
    }

    else
    {
      v26 = a3;
    }
  }

  else
  {
    v36 = v19(a4, a5, v16, v17, a9, a8);
    v37 = a1[1];
    *(v37 + 2) = v36;
  }

  v54 = v36 + ((*(v37 + 10) * *(a1[1619] + 2 * *(v37 + 22) + 24)) >> (8 * (*(v37 + 22) == 0)));
  *(v37 + 4) = v54;
  v55 = *a1;
  if (v54 < *(*a1 + 32))
  {
    *(v55 + v59) = v37[v59];
    *(v55 + 4 * v59 + 4) = *&v37[4 * v59 + 4];
    *(v55 + 16) = *(v37 + 2);
    *(v55 + 40) = *(v37 + 10);
    *(v55 + 32) = *(v37 + 4);
  }

  result = sub_2774612E0(a1, a2, v26, a4, a5, a6, a7, a8, a9, v63, a10);
  if (a10)
  {
    v57 = *a1;
    v58 = *(*a1 + 16) + 1;
    *(v57 + 16) = v58 >> 1;
    *(v57 + 32) = ((*(v57 + 40) * *(a1[1619] + 2 * *(v57 + 44) + 24)) >> (8 * (*(v57 + 44) == 0))) + (v58 >> 1);
  }

  return result;
}

uint64_t sub_277461180(uint64_t result, __int16 a2, __int16 a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((a7 & 0x8000u) != 0)
  {
    v8 = -(-a7 >> 2);
  }

  else
  {
    LOWORD(v8) = a7 >> 2;
  }

  if (a7 >> 16 < 0)
  {
    v9 = -(-(a7 >> 16) >> 2);
  }

  else
  {
    LOWORD(v9) = (a7 >> 16) >> 2;
  }

  v10 = 12708;
  if (a8)
  {
    v10 = 12716;
  }

  v11 = *(result + v10);
  v12 = 12712;
  if (a8)
  {
    v12 = 12720;
  }

  v13 = *(result + v12);
  if (*(*(*(result + 12944) + 4768) + 232))
  {
    v14 = 0;
  }

  else
  {
    v14 = -3 - a5;
  }

  if (*(*(*(result + 12944) + 4768) + 232))
  {
    v15 = 0;
  }

  else
  {
    v15 = -3 - a4;
  }

  v16 = v9 + a3;
  v17 = v16 - v13;
  v18 = v13 + v16;
  v19 = v8 + a2;
  v20 = v19 - v11;
  v21 = v11 + v19;
  v22 = result + 4 * a6;
  v23 = *(v22 + 12700) + 2;
  if (v17 >= v23)
  {
    v24 = *(v22 + 12700) + 2;
  }

  else
  {
    LOWORD(v24) = v17;
  }

  if (v17 <= v14)
  {
    v25 = v14;
  }

  else
  {
    v25 = v24;
  }

  v26 = 4 * (v25 - a3);
  if (v18 < v23)
  {
    LOWORD(v23) = v18;
  }

  if (v18 > v14)
  {
    LOWORD(v14) = v23;
  }

  v27 = 4 * (v14 - a3);
  v28 = *(v22 + 12692) + 2;
  v29 = v20;
  if (v20 >= v28)
  {
    v20 = v28;
  }

  if (v29 <= v15)
  {
    v30 = v15;
  }

  else
  {
    v30 = v20;
  }

  v31 = 4 * (v30 - a2);
  if (v21 < v28)
  {
    LOWORD(v28) = v21;
  }

  if (v21 > v15)
  {
    LOWORD(v15) = v28;
  }

  v32 = v27 - v26;
  v33 = v15 - a2;
  v34 = (4 * v33) - v31;
  v33 *= 4;
  *(result + 12740) = v26;
  *(result + 12742) = v27;
  *(result + 12736) = v31;
  *(result + 12738) = v33;
  *(result + 12748) = v26 + (v32 >> 3);
  *(result + 12750) = v27 - (v32 >> 3);
  *(result + 12744) = v31 + (v34 >> 3);
  *(result + 12746) = v33 - (v34 >> 3);
  return result;
}

uint64_t sub_2774612E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned int *a10, char a11)
{
  v16 = *(*(a1[1618] + 4768) + 207);
  v17 = a1[1619];
  v18 = a1[1607];
  v19 = a1[1608];
  *a10 = a4;
  a10[1] = a5;
  *(a10 + 2) = v18;
  v20 = v17 + 184;
  v21 = v17 + 536;
  if (a5 >= 9 && a4 >= 9 && v16 == 1)
  {
    if (a5 >= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = a5;
    }

    v23 = __clz(__rbit32(v22)) - 2;
    *(a10 + 5) = *(v20 + 8 * v23 + 120);
    a10[2] = 3;
    v24 = *(v21 + 8 * v23);
    *(a10 + 3) = v19;
    *(a10 + 4) = a8;
    *(a10 + 6) = v24;
    v25 = *a1;
    *(v25 + 40) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = -1;
    *(v25 + 44) = 3;
    v26 = a1[1646];
    v27 = a1[1647];
    v28 = (a1 + (v27 >> 1));
    if (v27)
    {
      v26 = *(*v28 + v26);
    }

    v36 = a7;
    v60 = a2;
    v61 = a3;
    v26(v28, a2, a3, a4, a5, a6, a7, 1, a8, a9, a10, a11);
    v37 = a1[1646];
    v38 = a1[1647];
    v39 = (a1 + (v38 >> 1));
    if (v38)
    {
      v37 = *(*v39 + v37);
    }

    LOBYTE(v58) = a11;
    v37(v39, v60, v61, a4, a5, a6, v36, 0, a8, a9, a10, v58);
    v40 = a1[1619];
    v41 = a1[1607];
    v42 = a1[1608];
    *a10 = a4;
    a10[1] = a5;
    a10[2] = 2;
    *(a10 + 2) = v41;
    *(a10 + 3) = v42;
    v43 = v40 + 8 * v23;
    v44 = *(v43 + 264);
    *(a10 + 4) = a8;
    *(a10 + 5) = v44;
    *(a10 + 6) = *(v43 + 536);
    v45 = *a1;
    *(v45 + 44) = 2;
    v46 = &a1[2 * (((*(v45 + 4 * a6 + 6) | *(v45 + 4 * a6 + 4)) & 1) == 0)];
    v47 = v46[1630];
    v48 = v46[1631];
    v49 = (a1 + (v48 >> 1));
    if (v48)
    {
      v47 = *(*v49 + v47);
    }

    v47(v49);
    result = (*(a10 + 5))(*a10, a10[1], *(a10 + 2), *(a10 + 3), a9, *(a10 + 4));
    v51 = *a1;
    *(v51 + 16) = result;
    *(v51 + 32) = ((*(v51 + 40) * *(a1[1619] + 2 * *(v51 + 44) + 24)) >> (8 * (*(v51 + 44) == 0))) + result;
  }

  else
  {
    if (a5 >= a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = a5;
    }

    v30 = 8 * __clz(__rbit32(v29)) - 16;
    *(a10 + 5) = *(v20 + v30 + 80);
    a10[2] = 2;
    v31 = *(v21 + v30);
    *(a10 + 3) = v19;
    *(a10 + 4) = a8;
    *(a10 + 6) = v31;
    v32 = *a1;
    *(v32 + 40) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = -1;
    *(v32 + 44) = 2;
    v33 = a1[1646];
    v34 = a1[1647];
    v35 = (a1 + (v34 >> 1));
    if (v34)
    {
      v33 = *(*v35 + v33);
    }

    v52 = a7;
    v33(v35, a2, a3, a4, a5, a6, a7, 1, a8, a9, a10, a11);
    v55 = a1[1646];
    v56 = a1[1647];
    v57 = (a1 + (v56 >> 1));
    if (v56)
    {
      v55 = *(*v57 + v55);
    }

    LOBYTE(v59) = a11;
    return v55(v57, a2, a3, a4, a5, a6, v52, 0, a8, a9, a10, v59);
  }

  return result;
}

uint64_t sub_277461650(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = a6;
  v18 = *(a1[1] + 4 * a6 + 4);
  v19 = a1[1619];
  v20 = a1[1607];
  v21 = a1[1608];
  v47[0] = a4;
  v47[1] = a5;
  v47[2] = 1;
  v48 = v20;
  v49 = v21;
  v22 = v19 + 8 * __clz(__rbit32(a4));
  v23 = *(v22 + 208);
  v50 = a8;
  v51 = v23;
  v52 = *(v22 + 520);
  v45 = v18;
  sub_277461180(a1, a2, a3, a4, a5, a6, v18, a10);
  v24 = a1[1];
  *(v24 + 40) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 44) = 1;
  v25 = a1[1634];
  v26 = a1[1635];
  v27 = (a1 + (v26 >> 1));
  if (v26)
  {
    v25 = *(*v27 + v25);
  }

  v25(v27, a1[1], a2, a3, a4, a5, a8, a9, a6);
  v28 = a1[1];
  v29 = v28 + 4 * v17;
  v30 = *(v29 + 4) - a7;
  v31 = *(v29 + 6) - (a7 >> 16);
  if ((v30 + 64) >= 0x80)
  {
    if (v30 >= 0)
    {
      v33 = v30;
    }

    else
    {
      v33 = -v30;
    }

    v32 = 63 - 2 * __clz((v30 < 1) | (2 * v33));
  }

  else
  {
    v32 = byte_277533E48[v30 + 64];
  }

  if ((v31 + 64) >= 0x80)
  {
    if (v31 >= 0)
    {
      v35 = v31;
    }

    else
    {
      v35 = -v31;
    }

    v34 = 63 - 2 * __clz((v31 < 1) | (2 * v35));
  }

  else
  {
    v34 = byte_277533E48[v31 + 64];
  }

  *(v28 + 40) = v34 + v32;
  v36 = a1[1656];
  v37 = a1[1657];
  v38 = (a1 + (v37 >> 1));
  if (v37)
  {
    v36 = *(*v38 + v36);
  }

  v36(v38);
  v40 = *a1;
  v39 = a1[1];
  v41 = *(v39 + 16) + ((*(v39 + 40) * *(a1[1619] + 2 * *(v39 + 44) + 24)) >> (8 * (*(v39 + 44) == 0)));
  *(v39 + 32) = v41;
  if (v41 < *(v40 + 32))
  {
    *(v40 + v17) = *(v39 + v17);
    *(v40 + 4 * v17 + 4) = *(v39 + 4 * v17 + 4);
    *(v40 + 16) = *(v39 + 16);
    *(v40 + 40) = *(v39 + 40);
    *(v40 + 32) = *(v39 + 32);
  }

  sub_277461984(a1, a2, a3, a4, a5, a6, a7, a8, a9, v47, v45, SHIDWORD(v45), 1);
  result = sub_2774612E0(a1, a2, a3, a4, a5, a6, a7, a8, a9, v47, a10);
  if (a10)
  {
    v43 = *a1;
    v44 = *(*a1 + 16) + 1;
    *(v43 + 16) = v44 >> 1;
    *(v43 + 32) = ((*(v43 + 40) * *(a1[1619] + 2 * *(v43 + 44) + 24)) >> (8 * (*(v43 + 44) == 0))) + (v44 >> 1);
  }

  return result;
}

uint64_t sub_277461984(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13)
{
  v77 = *MEMORY[0x277D85DE8];
  v72[0] = 0;
  v44 = a4;
  v45 = a2;
  v43 = a3;
  v71 = a5;
  v62 = sub_277462244(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, 0xFFFF0000uLL, v72);
  v57 = sub_277462244(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, 0xFFFFuLL, v72);
  v53 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, 0x10000uLL, v72);
  v20 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, 1uLL, v72);
  v21 = 0;
  if (!v62 && !v57 && !v53 && !v20)
  {
    if (a13 <= 1)
    {
      return v72[0];
    }

    v21 = 1;
  }

  v36 = v21;
  v22 = &dword_27750E8C4;
  v23 = 3;
  while (1)
  {
    v54 = v23;
    v63 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, *(v22 - 2), v72);
    v64 = v63 | sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, *(v22 - 1), v72);
    v58 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, *v22, v72);
    v24 = v64 | v58 | sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v22[1], v72);
    if (a13 == 1 && (v24 & 1) == 0)
    {
      break;
    }

    v65 = v24;
    v59 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v22[2], v72);
    v60 = v59 | sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v22[3], v72);
    v47 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v22[4], v72);
    if ((v65 | v60 | v47 | sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v22[5], v72)))
    {
      v25 = v54;
    }

    else
    {
      ++v36;
      v25 = v54;
      if (v36 >= a13)
      {
        return v72[0];
      }
    }

    v22 += 8;
    v23 = v25 - 1;
    if (!v23)
    {
      v74 = 0x10000000100;
      v75 = 0;
      memset(v76, 0, sizeof(v76));
      v26 = 4;
      v73 = 257;
      do
      {
        v35 = v23;
        v27 = (&unk_27750E8AC + 32 * v26);
        v61 = *v27;
        v66 = 1 << v26;
        v50 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, *v27, v72);
        v55 = v27[1];
        v48 = v50 | sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v55, v72);
        v51 = v27[2];
        v41 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v51, v72);
        v37 = v27[3];
        v28 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, v37, v72);
        *(&v72[1] + v66 + 3) = 1;
        v29 = v48 | (v41 || v28);
        v30 = v66 >> 2;
        v40 = v55 >> 2;
        v39 = v51 >> 18;
        v38 = v37 >> 2;
        v31 = v30;
        v32 = 1;
        v42 = v30;
        do
        {
          if ((*(&v72[1] + v31 + 3) & 1) == 0)
          {
            v67 = v29;
            v49 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, ((v61 >> 18) * v32) << 16, v72);
            v52 = v49 | sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, (v40 * v32), v72);
            v56 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, (v39 * v32) << 16, v72);
            v33 = sub_277462244(a1, v45, v43, v44, v71, a6, a7, a8, a9, a10, a11, (v38 * v32), v72);
            v30 = v42;
            v29 = v67 | v52 | (v56 || v33);
          }

          v31 += v30;
          ++v32;
        }

        while (v32 != 4);
        if ((v29 & 1) == 0 && ++v36 >= a13)
        {
          break;
        }

        LOBYTE(v23) = 1;
        v26 = 5;
      }

      while ((v35 & 1) == 0);
      return v72[0];
    }
  }

  return v72[0];
}

BOOL sub_277462244(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unint64_t a12, unsigned int *a13)
{
  v15 = a6;
  *(a1[1] + 4 * a6 + 4) = ((a11 & 0xFFFF0000) + ((a12 >> 16) << 18)) & 0xFFFF0000 | (a11 + 4 * a12);
  v16 = a1[1634];
  v17 = a1[1635];
  v18 = (a1 + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v18 + v16);
  }

  v16(v18, a1[1], a2, a3, a4, a5, a8, a9, a6);
  v19 = a1[1];
  v20 = v19 + 4 * v15;
  v21 = *(v20 + 4) - a7;
  v22 = *(v20 + 6) - (a7 >> 16);
  if ((v21 + 64) >= 0x80)
  {
    if (v21 >= 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = -v21;
    }

    v23 = 63 - 2 * __clz((v21 < 1) | (2 * v24));
  }

  else
  {
    v23 = byte_277533E48[v21 + 64];
  }

  if ((v22 + 64) >= 0x80)
  {
    if (v22 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = -v22;
    }

    v25 = 63 - 2 * __clz((v22 < 1) | (2 * v26));
  }

  else
  {
    v25 = byte_277533E48[v22 + 64];
  }

  *(v19 + 40) = v25 + v23;
  v27 = a1[1656];
  v28 = a1[1657];
  v29 = (a1 + (v28 >> 1));
  if (v28)
  {
    v27 = *(*v29 + v27);
  }

  v27(v29);
  v31 = *a1;
  v30 = a1[1];
  v32 = *(v30 + 16) + ((*(v30 + 40) * *(a1[1619] + 2 * *(v30 + 44) + 24)) >> (8 * (*(v30 + 44) == 0)));
  *(v30 + 32) = v32;
  v33 = *(v31 + 32);
  if (v32 < v33)
  {
    *(v31 + v15) = *(v30 + v15);
    *(v31 + 4 * v15 + 4) = *(v30 + 4 * v15 + 4);
    *(v31 + 16) = *(v30 + 16);
    *(v31 + 40) = *(v30 + 40);
    *(v31 + 32) = *(v30 + 32);
    v34 = a12;
    if ((a12 & 0x8000u) != 0)
    {
      v34 = -a12;
    }

    v35 = SWORD1(a12);
    if ((a12 & 0x80000000) != 0)
    {
      v35 = -SWORD1(a12);
    }

    if (v34 <= v35)
    {
      v34 = v35;
    }

    *a13 = v34;
  }

  return v32 < v33;
}

uint64_t sub_277462464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v18 = a9;
  v19 = *(a1 + 12952);
  v20 = *(a1 + 12856);
  v21 = *(a1 + 12864);
  v60[0] = a4;
  v60[1] = a5;
  v60[2] = 1;
  v61 = v20;
  v62 = v21;
  v22 = v19 + 8 * __clz(__rbit32(a4));
  v23 = *(v22 + 208);
  v63 = a8;
  v64 = v23;
  v65 = *(v22 + 520);
  sub_277461180(a1, a2, a3, a4, a5, a6, *(*a1 + 4 * a6 + 4), a10);
  v24 = *(a1 + 8);
  v25 = *(v24 + 4 * a6 + 4);
  *(v24 + 40) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 44) = 1;
  v26 = sub_277461984(a1, a2, a3, a4, a5, a6, a7, a8, a9, v60, v25, SHIDWORD(v25), *(a1 + 12728));
  v27 = v26;
  v56 = a2;
  if (v26 == 1)
  {
    v28 = sub_2774627F0(a1, a2, a3, a4, a5, a6, a7, a8, a9, v60, v25);
    v27 = 1;
    goto LABEL_13;
  }

  v53 = v25;
  v29 = *(a1 + 12724);
  if (v26 <= v29)
  {
    v28 = 1;
    v18 = a9;
LABEL_13:
    v31 = a5;
    v32 = a6;
    v33 = a4;
    v34 = a7;
    v43 = a8;
    v35 = a3;
    if (!v28)
    {
      return sub_2774612E0(a1, v56, v35, v33, v31, v32, v34, v43, v18, v60, a10);
    }

    goto LABEL_14;
  }

  v52 = v26;
  v30 = *(a1 + 12708);
  v31 = a5;
  v32 = a6;
  v33 = a4;
  v34 = a7;
  v35 = a3;
  if (v30 >= 1)
  {
    v36 = -v30;
    v37 = *(a1 + 12712);
    v38 = v29 << 16;
    v58 = a4;
    v59 = a3;
    v57 = a5;
    do
    {
      if (v37 >= 1)
      {
        v54 = v36;
        v39 = -v37;
        v40 = v32;
        v41 = v36 - (v37 << 16);
        do
        {
          v42 = v29;
          sub_277462244(a1, a2, v59, v58, v57, v40, a7, a8, a9, v60, v53, v41, v66);
          v29 = v42;
          v39 += v42;
          v37 = *(a1 + 12712);
          v41 += v38;
        }

        while (v39 < v37);
        v30 = *(a1 + 12708);
        v32 = v40;
        v31 = v57;
        v33 = v58;
        v35 = v59;
        v34 = a7;
        v36 = v54;
      }

      v36 += v29;
    }

    while (v36 < v30);
  }

  v43 = a8;
  v18 = a9;
  v27 = v52;
LABEL_14:
  if (v27 >= 1)
  {
    v55 = v32;
    do
    {
      v44 = *(*a1 + 4 * v55 + 4);
      v45 = v31;
      v46 = v32;
      v47 = v33;
      v48 = v34;
      v49 = sub_277461984(a1, v56, v35, v33, v31, v32, v34, v43, v18, v60, v44, 0, *(a1 + 12732));
      if (v49 == 1)
      {
        v50 = sub_2774627F0(a1, v56, v35, v47, v45, v46, v48, v43, a9, v60, v44);
      }

      else
      {
        v50 = 1;
      }

      v31 = v45;
      v32 = v46;
      v33 = v47;
      v34 = v48;
      v18 = a9;
    }

    while (v50 && v49 > 0);
  }

  return sub_2774612E0(a1, v56, v35, v33, v31, v32, v34, v43, v18, v60, a10);
}

uint64_t sub_2774627F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v11 = *(*a1 + 4 * a6 + 4);
  v12 = (v11 - a11) << 16 >> 18;
  v13 = (HIWORD(v11) - HIWORD(a11)) >> 2;
  if ((v12 - 2) < 0xFFFFFFFD || (v13 - 2) < 0xFFFFFFFD)
  {
    return 1;
  }

  result = 0;
  v17 = v12 | (v13 << 16);
  if (v17 <= 65534)
  {
    v18 = 4294901759;
    if (v17 > -2)
    {
      if (v17 != -1)
      {
        if (v17 != 1)
        {
          return result;
        }

        v28 = 65538;
        v18 = 4294901762;
        goto LABEL_24;
      }

      v19 = 4294967294;
    }

    else
    {
      if (v17 != -65536)
      {
        if (v17 != -65535)
        {
          return result;
        }

        v28 = 4294901762;
        v18 = 4294836225;
        goto LABEL_24;
      }

      v19 = 4294836225;
    }

    goto LABEL_23;
  }

  if (v17 > 0x10000)
  {
    if (v17 == 65537)
    {
      v28 = 131073;
      v18 = 65538;
      goto LABEL_24;
    }

    if (v17 != 0x1FFFF)
    {
      return result;
    }

    v18 = 131070;
    v19 = 196607;
    goto LABEL_23;
  }

  if (v17 != 0xFFFF)
  {
    v18 = 196607;
    v19 = 131073;
LABEL_23:
    v28 = v19;
    goto LABEL_24;
  }

  v28 = 131070;
  v18 = 4294967294;
LABEL_24:
  v27 = sub_277462244(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v18, &v29);
  return v27 | sub_277462244(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v28, &v29);
}

uint64_t sub_2774629EC(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, signed int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v14 = a1 + 1536;
  v15 = a1[1619];
  v16 = a1[1607];
  v17 = a1[1608];
  v85[0] = a4;
  v85[1] = a5;
  v85[2] = 1;
  v80 = v17;
  v81 = v16;
  v86 = v16;
  v87 = v17;
  v18 = v15 + 8 * __clz(__rbit32(a4));
  v19 = *(v18 + 208);
  v88 = a8;
  v89 = v19;
  v78 = *(v18 + 520);
  v79 = v19;
  v90 = v78;
  v20 = a6;
  sub_277461180(a1, a2, a3, a4, a5, a6, *(a1[1] + 4 * a6 + 4), a10);
  v21 = v14;
  v22 = a1[1];
  *(v22 + 40) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = -1;
  *(v22 + 44) = 1;
  v23 = *(v14 + 226);
  if (v23 <= *(v14 + 227))
  {
    v25 = a4 > 4 && a4 == a5;
    v26.i64[0] = -1;
    v26.i64[1] = 0xFFFF0001FFFFFFFFLL;
    v77 = v26;
    do
    {
      v76 = v23;
      *(a1[1] + 4 * v20 + 6) = v23;
      for (i = *(v21 + 224); i <= *(v21 + 225); i += 4)
      {
        *(a1[1] + 4 * v20 + 4) = i;
        v28 = a1[1];
        *(v28 + 40) = 0;
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = -1;
        *(v28 + 44) = 1;
        v29 = a1[1];
        v30 = v29 + 4 * v20;
        v31 = *(v30 + 4) - a7;
        if ((v31 + 64) >= 0x80)
        {
          if (v31 >= 0)
          {
            v33 = *(v30 + 4) - a7;
          }

          else
          {
            v33 = a7 - *(v30 + 4);
          }

          v32 = 63 - 2 * __clz((v31 < 1) | (2 * v33));
        }

        else
        {
          v32 = byte_277533E48[v31 + 64];
        }

        v34 = *(v30 + 6) - (a7 >> 16);
        if ((v34 + 64) >= 0x80)
        {
          if (v34 >= 0)
          {
            v36 = v34;
          }

          else
          {
            v36 = -v34;
          }

          v35 = 63 - 2 * __clz((v34 < 1) | (2 * v36));
        }

        else
        {
          v35 = byte_277533E48[v34 + 64];
        }

        *(v29 + 40) = v35 + v32;
        v37 = a1[1634];
        v38 = a1[1635];
        v39 = (a1 + (v38 >> 1));
        if (v38)
        {
          v37 = *(*v39 + v37);
        }

        v37(v39);
        if (!v25)
        {
          v41 = v79(a4, a5, v81, v80, a9, a8);
          v42 = a1[1];
          *(v42 + 2) = v41;
LABEL_35:
          v21 = v14;
          goto LABEL_36;
        }

        if (a1[1583])
        {
          v40 = a1[1583];
        }

        else
        {
          v40 = a1 + 1540;
        }

        v41 = v78(v81, v80, a9, a8, v40);
        v42 = a1[1];
        *(v42 + 2) = v41;
        v43 = a1[1583];
        if (!v43)
        {
          v43 = (a1 + 1540);
        }

        if (*(a1 + 16) != 1)
        {
          goto LABEL_35;
        }

        v44 = *v42;
        v21 = v14;
        if (v44 == 15)
        {
          v45 = 0;
          v46 = *(v42 + 10);
        }

        else
        {
          v49 = v42[1];
          v50 = *(v42 + 10);
          if (v49 != 15)
          {
            v50 += *(a1 + 3168);
          }

          v45 = v49 != 15;
          if (v44 == 1)
          {
            v51 = 1;
          }

          else
          {
            v51 = v44 + 1;
          }

          v46 = v51 + v50;
        }

        v52 = *(a1 + 17);
        if (v52 >= 1)
        {
          v53 = *v42;
          v54 = BYTE1(*v42);
          v55 = v77;
          v55.i16[7] = HIWORD(*(v42 + 2));
          v56 = BYTE1(*v42);
          if (v54 != 1)
          {
            v56 = v53.i8[1] + 1;
          }

          if (v54 == 15)
          {
            v57 = 0;
          }

          else
          {
            v57 = v56;
          }

          v55.i32[2] = v57 + v46;
          v58 = &a1[18 * *(a1 + 18) + 19];
          v59.i64[1] = 0;
          do
          {
            v60 = *v43++;
            v59.i64[0] = v60 >> v45;
            v61 = vextq_s8(v55, v55, 8uLL).u64[0];
            v55.i64[0] = ((v55.i32[2] * *(a1[1585] + 2 * v55.i16[6] + 24)) >> (8 * (v55.i16[6] == 0))) + v59.i64[0];
            v55.i64[1] = v61;
            if (v55.i64[0] < v58->i64[0])
            {
              v58[-2] = v53;
              v58[-1] = v59;
              *v58 = v55;
            }

            v58 += 9;
            --v52;
          }

          while (v52);
          v42 = a1[1];
          v41 = *(v42 + 2);
        }

LABEL_36:
        v47 = v41 + ((*(v42 + 10) * *(a1[1619] + 2 * *(v42 + 22) + 24)) >> (8 * (*(v42 + 22) == 0)));
        *(v42 + 4) = v47;
        v48 = *a1;
        if (v47 < *(*a1 + 32))
        {
          *(v48 + v20) = v42[v20];
          *(v48 + 4 * v20 + 4) = *&v42[4 * v20 + 4];
          *(v48 + 16) = *(v42 + 2);
          *(v48 + 40) = *(v42 + 10);
          *(v48 + 32) = *(v42 + 4);
        }
      }

      v23 = v76 + 4;
    }

    while (v76 + 4 <= *(v21 + 227));
  }

  v62 = *a1 + 4 * v20;
  v63 = *(v62 + 4);
  v64 = *(a1 + 3184);
  if (v64 << 16 <= (v63 + 3) << 16 && v64 >> 16 >= (v63 + 3))
  {
    v65 = 0;
    v69 = *(v62 + 6);
    v70 = *(a1 + 3185);
    if (v70 <= (v69 + 3) && v70 >> 16 >= (v69 + 3))
    {
      v65 = 0;
      v71 = v63 - 3;
      if (v64 << 16 <= v71 << 16 && v64 >> 16 >= v71)
      {
        v72 = v69 - 3;
        v73 = (v69 - 3);
        v65 = v70 <= v72 && v70 >> 16 >= v73;
      }
    }
  }

  else
  {
    v65 = 0;
  }

  *(v21 + 400) = v65;
  result = sub_2774612E0(a1, a2, a3, a4, a5, a6, a7, a8, a9, v85, a10);
  if (a10)
  {
    v67 = *a1;
    v68 = *(*a1 + 16) + 1;
    *(v67 + 16) = v68 >> 1;
    *(v67 + 32) = ((*(v67 + 40) * *(a1[1619] + 2 * *(v67 + 44) + 24)) >> (8 * (*(v67 + 44) == 0))) + (v68 >> 1);
  }

  return result;
}

uint64_t sub_277462F60(int *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v13 = *(a1 + 1619);
  v14 = *(a1 + 1607);
  v15 = *(a1 + 1608);
  v123[0] = a4;
  v123[1] = a5;
  v123[2] = 1;
  v124 = v14;
  v125 = v15;
  v16 = v13 + 8 * __clz(__rbit32(a4));
  v17 = *(v16 + 208);
  v126 = a8;
  v127 = v17;
  v128 = *(v16 + 520);
  v18 = a6;
  sub_277461180(a1, a2, a3, a4, a5, a6, *(*a1 + 4 * a6 + 4), a10);
  v19 = *(a1 + 1);
  v121 = a6;
  v20 = v19 + 4 * a6;
  v21 = *(v20 + 4);
  v22 = *(v20 + 6);
  v23 = a1[3184];
  v24 = v23 << 16;
  if (v23 << 16 <= (v21 + 8) << 16)
  {
    v26 = v23 >> 16;
    if (v26 < (v21 + 8) || ((v27 = a1[3185], v28 = v27, v29 = v27 >> 16, v28 <= (v22 + 8)) ? (v30 = v29 < (v22 + 8)) : (v30 = 1), v30))
    {
      v25 = 0;
    }

    else
    {
      v32 = v28 <= (v22 - 8) && v29 >= (v22 - 8);
      v25 = v24 <= (v21 - 8) << 16 && v26 >= (v21 - 8) && v32;
    }
  }

  else
  {
    v25 = 0;
  }

  v34 = 0;
  *(v19 + 40) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = -1;
  v113 = a7;
  v115 = a7 >> 16;
  v116 = a7;
  v35 = &byte_27750E889;
  v36 = -6;
  *(v19 + 44) = 1;
  do
  {
    *(*(a1 + 1) + 4 * v18 + 4) = v21 + *(v35 - 1);
    *(*(a1 + 1) + 4 * v18 + 6) = v22 + *v35;
    v37 = *(a1 + 1);
    if (v25 || (v41 = *(v37 + 4 * v18 + 4), v42 = a1[3184], v41 << 16 >= v42 << 16) && v41 <= v42 >> 16 && ((v43 = a1[3185], v44 = v41 >> 16, v44 >= v43) ? (v45 = v44 <= v43 >> 16) : (v45 = 0), v45))
    {
      *(v37 + 40) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = -1;
      *(v37 + 44) = 1;
      v38 = *(a1 + 1634);
      v39 = *(a1 + 1635);
      v40 = (a1 + (v39 >> 1));
      if (v39)
      {
        v38 = *(*v40 + v38);
      }

      v38(v40, *(a1 + 1), a2, a3, a4, a5, a8, a9, a6);
      v46 = *(a1 + 1656);
      v47 = *(a1 + 1657);
      v48 = (a1 + (v47 >> 1));
      if (v47)
      {
        v46 = *(*v48 + v46);
      }

      v46(v48, *(a1 + 1), v123, a9);
      v49 = *(a1 + 1);
      v50 = v49 + 4 * v18;
      v52 = *(v50 + 4);
      v51 = v50 + 4;
      v53 = v52 - v116;
      v54 = v52 - v116 + 64;
      if (v54 >= 0x80)
      {
        if (v53 >= 0)
        {
          v56 = v53;
        }

        else
        {
          v56 = -v53;
        }

        v55 = 63 - 2 * __clz((v53 < 1) | (2 * v56));
      }

      else
      {
        v55 = byte_277533E48[v54];
      }

      v57 = *(v51 + 2) - v115;
      if ((v57 + 64) >= 0x80)
      {
        if (v57 >= 0)
        {
          v59 = *(v51 + 2) - v115;
        }

        else
        {
          v59 = v115 - *(v51 + 2);
        }

        v58 = 63 - 2 * __clz((v57 < 1) | (2 * v59));
      }

      else
      {
        v58 = byte_277533E48[v57 + 64];
      }

      v60 = v58 + v55;
      *(v49 + 40) = v60;
      v61 = *(v49 + 16) + ((v60 * *(*(a1 + 1619) + 2 * *(v49 + 44) + 24)) >> (8 * (*(v49 + 44) == 0)));
      *(v49 + 32) = v61;
      v62 = *a1;
      if (v61 < *(*a1 + 32))
      {
        *(v62 + v18) = *(v49 + v18);
        *(v62 + 4 * v18 + 4) = *v51;
        *(v62 + 16) = *(v49 + 16);
        *(v62 + 40) = *(v49 + 40);
        *(v62 + 32) = *(v49 + 32);
        v34 = v36 + 7;
      }
    }

    v35 += 2;
  }

  while (!__CFADD__(v36++, 1));
  if (v34 && *(a1 + 12850))
  {
    v64 = 0;
    do
    {
      v65 = 0;
      v66 = *a1 + 4 * v18;
      v67 = *(v66 + 6);
      v68 = *(v66 + 4);
      v114 = v34;
      v69 = &byte_27750E894[3 * v34];
      v70 = -1;
      do
      {
        v71 = &unk_27750E886 + 2 * v69[v65];
        *(*(a1 + 1) + 4 * v18 + 4) = v68 + *v71;
        *(*(a1 + 1) + 4 * v18 + 6) = v67 + v71[1];
        v72 = *(a1 + 1);
        v73 = *(v72 + 4 * v18 + 4);
        v74 = a1[3184];
        if (v73 << 16 >= v74 << 16 && v73 <= v74 >> 16)
        {
          v75 = a1[3185];
          v76 = v73 >> 16;
          if (v76 >= v75 && v76 <= v75 >> 16)
          {
            *(v72 + 40) = 0;
            *(v72 + 16) = 0;
            *(v72 + 24) = 0;
            *(v72 + 32) = -1;
            *(v72 + 44) = 1;
            v78 = *(a1 + 1634);
            v79 = *(a1 + 1635);
            v80 = (a1 + (v79 >> 1));
            if (v79)
            {
              v78 = *(*v80 + v78);
            }

            v78(v80, *(a1 + 1), a2, a3, a4, a5, a8, a9, v121);
            v81 = *(a1 + 1656);
            v82 = *(a1 + 1657);
            v83 = (a1 + (v82 >> 1));
            if (v82)
            {
              v81 = *(*v83 + v81);
            }

            v81(v83, *(a1 + 1), v123, a9);
            v84 = *(a1 + 1);
            v85 = v84 + 4 * v18;
            v87 = *(v85 + 4);
            v86 = v85 + 4;
            v88 = v87 - v116;
            v89 = v87 - v116 + 64;
            if (v89 >= 0x80)
            {
              if (v88 >= 0)
              {
                v91 = v88;
              }

              else
              {
                v91 = -v88;
              }

              v90 = 63 - 2 * __clz((v88 < 1) | (2 * v91));
            }

            else
            {
              v90 = byte_277533E48[v89];
            }

            v92 = *(v86 + 2) - v115;
            if ((v92 + 64) >= 0x80)
            {
              if (v92 >= 0)
              {
                v94 = *(v86 + 2) - v115;
              }

              else
              {
                v94 = v115 - *(v86 + 2);
              }

              v93 = 63 - 2 * __clz((v92 < 1) | (2 * v94));
            }

            else
            {
              v93 = byte_277533E48[v92 + 64];
            }

            v95 = v93 + v90;
            *(v84 + 40) = v95;
            v96 = *(v84 + 16) + ((v95 * *(*(a1 + 1619) + 2 * *(v84 + 44) + 24)) >> (8 * (*(v84 + 44) == 0)));
            *(v84 + 32) = v96;
            v97 = *a1;
            if (v96 < *(*a1 + 32))
            {
              *(v97 + v18) = *(v84 + v18);
              *(v97 + 4 * v18 + 4) = *v86;
              *(v97 + 16) = *(v84 + 16);
              *(v97 + 40) = *(v84 + 40);
              *(v97 + 32) = *(v84 + 32);
              v70 = v65;
            }
          }
        }

        ++v65;
      }

      while (v65 != 3);
      if (v70 == -1)
      {
        break;
      }

      v34 = byte_27750E894[3 * v114 + v70];
      ++v64;
    }

    while (v64 < *(a1 + 12850));
  }

  v98 = *(a1 + 12848) + 2 * *(a1 + 12849) + 7;
  v99 = *a1 + 4 * v18;
  v100 = *(v99 + 4);
  v101 = a1[3184];
  v102 = v101 << 16;
  if (v101 << 16 <= (v98 + v100) << 16)
  {
    v105 = v101 >> 16;
    v104 = v113;
    v103 = 0;
    if (v105 >= (v98 + v100))
    {
      v108 = *(v99 + 6);
      v109 = a1[3185];
      if (v109 <= (v108 + v98) && v109 >> 16 >= (v108 + v98))
      {
        v103 = 0;
        v110 = v100 - v98;
        if (v102 <= v110 << 16 && v105 >= v110)
        {
          v111 = (v108 - v98);
          v103 = v109 <= v111 && v109 >> 16 >= v111;
        }
      }
    }
  }

  else
  {
    v103 = 0;
    v104 = v113;
  }

  *(a1 + 12688) = v103;
  v106 = v104;
  sub_2774636C4(a1, a2, a3, a4, a5, v121, v104, 2, a8, a9, v123);
  return sub_2774612E0(a1, a2, a3, a4, a5, v121, v106, a8, a9, v123, a10);
}