uint64_t sub_277A1AD14(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, __int32 *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v32 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = vdup_lane_s8(a9, 0);
  v15 = vdup_lane_s8(a10, 0);
  do
  {
    v16.i32[0] = *a1;
    v16.i32[1] = *(a1 + a2);
    v17.i32[0] = *(a1 + 1);
    v17.i32[1] = *(a1 + a2 + 1);
    v18 = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v15), v16, v14), 3uLL);
    *&v31[v13] = v18;
    a1 = (a1 + 2 * a2);
    v13 += 2;
  }

  while ((v13 * 4) != 24);
  v19 = 0;
  v14.i32[0] = 8 - a4;
  v15.i32[0] = a4;
  v20 = v31[0];
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v15, 0);
  do
  {
    v18.i32[0] = v20;
    v23 = *&v31[v19 + 1];
    v18 = vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v22), vzip1_s32(v18, v23), v21), 3uLL);
    *&v30[v19 * 4] = v18;
    v20 = v23.i32[1];
    v19 += 2;
  }

  while ((v19 * 4) != 16);
  v24 = 0;
  v25 = v30;
  if (a12)
  {
    v26 = a7;
  }

  else
  {
    v26 = v30;
  }

  if (!a12)
  {
    v25 = a7;
  }

  do
  {
    v27.i32[0] = *a8;
    v27.i32[1] = *(a8 + a11);
    *&v29[v24] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v27), *&v25[v24]), v27, *&v26[v24]), 6uLL);
    a8 = (a8 + 2 * a11);
    v24 += 8;
  }

  while (v24 != 16);
  return off_280ABCC50(v29, 4, a5, a6, a13);
}

uint64_t sub_277A1AE9C(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, __int32 *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v32 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = vdup_lane_s8(a9, 0);
  v15 = vdup_lane_s8(a10, 0);
  do
  {
    v16.i32[0] = *a1;
    v16.i32[1] = *(a1 + a2);
    v17.i32[0] = *(a1 + 1);
    v17.i32[1] = *(a1 + a2 + 1);
    v18 = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v15), v16, v14), 3uLL);
    *&v31[v13] = v18;
    a1 = (a1 + 2 * a2);
    v13 += 2;
  }

  while ((v13 * 4) != 40);
  v19 = 0;
  v14.i32[0] = 8 - a4;
  v15.i32[0] = a4;
  v20 = v31[0];
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v15, 0);
  do
  {
    v18.i32[0] = v20;
    v23 = *&v31[v19 + 1];
    v18 = vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v22), vzip1_s32(v18, v23), v21), 3uLL);
    *&v30[v19 * 4] = v18;
    v20 = v23.i32[1];
    v19 += 2;
  }

  while ((v19 * 4) != 32);
  v24 = 0;
  v25 = v30;
  if (a12)
  {
    v26 = a7;
  }

  else
  {
    v26 = v30;
  }

  if (!a12)
  {
    v25 = a7;
  }

  do
  {
    v27.i32[0] = *a8;
    v27.i32[1] = *(a8 + a11);
    *&v29[v24] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v27), *&v25[v24]), v27, *&v26[v24]), 6uLL);
    a8 = (a8 + 2 * a11);
    v24 += 8;
  }

  while (v24 != 32);
  return off_280ABCC58(v29, 4, a5, a6, a13);
}

uint64_t sub_277A1B024(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, int8x8_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v28[5] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = (a1 + 1);
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v28[v13++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, v16), *(v14 - 1), v15), 3uLL);
    v14 = (v14 + a2);
  }

  while ((v13 * 8) != 40);
  v17 = 0;
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v18 = v28[0];
  v19 = vdup_lane_s8(v15, 0);
  v20 = vdup_lane_s8(v16, 0);
  do
  {
    v21 = v28[v17 + 1];
    *&v27[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v21, v20), v18, v19), 3uLL);
    ++v17;
    v18 = v21;
  }

  while ((v17 * 8) != 32);
  v22 = 0;
  v23 = v27;
  if (a12)
  {
    v24 = a7;
  }

  else
  {
    v24 = v27;
  }

  if (!a12)
  {
    v23 = a7;
  }

  do
  {
    *&v26[v22] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a8), *&v23[v22]), *a8, *&v24[v22]), 6uLL);
    a8 = (a8 + a11);
    v22 += 8;
  }

  while (v22 != 32);
  return off_280ABCC90(v26, 8, a5, a6, a13);
}

uint64_t sub_277A1B184(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, int8x8_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v28[9] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = (a1 + 1);
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v28[v13++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, v16), *(v14 - 1), v15), 3uLL);
    v14 = (v14 + a2);
  }

  while ((v13 * 8) != 72);
  v17 = 0;
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v18 = v28[0];
  v19 = vdup_lane_s8(v15, 0);
  v20 = vdup_lane_s8(v16, 0);
  do
  {
    v21 = v28[v17 + 1];
    *&v27[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v21, v20), v18, v19), 3uLL);
    ++v17;
    v18 = v21;
  }

  while ((v17 * 8) != 64);
  v22 = 0;
  v23 = v27;
  if (a12)
  {
    v24 = a7;
  }

  else
  {
    v24 = v27;
  }

  if (!a12)
  {
    v23 = a7;
  }

  do
  {
    *&v26[v22] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a8), *&v23[v22]), *a8, *&v24[v22]), 6uLL);
    a8 = (a8 + a11);
    v22 += 8;
  }

  while (v22 != 64);
  return off_280ABCC98(v26, 8, a5, a6, a13);
}

uint64_t sub_277A1B2E4(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, int8x8_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v28[17] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = (a1 + 1);
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v28[v13++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, v16), *(v14 - 1), v15), 3uLL);
    v14 = (v14 + a2);
  }

  while ((v13 * 8) != 136);
  v17 = 0;
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v18 = v28[0];
  v19 = vdup_lane_s8(v15, 0);
  v20 = vdup_lane_s8(v16, 0);
  do
  {
    v21 = v28[v17 + 1];
    *&v27[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v21, v20), v18, v19), 3uLL);
    ++v17;
    v18 = v21;
  }

  while ((v17 * 8) != 128);
  v22 = 0;
  v23 = v27;
  if (a12)
  {
    v24 = a7;
  }

  else
  {
    v24 = v27;
  }

  if (!a12)
  {
    v23 = a7;
  }

  do
  {
    *&v26[v22] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a8), *&v23[v22]), *a8, *&v24[v22]), 6uLL);
    a8 = (a8 + a11);
    v22 += 8;
  }

  while (v22 != 128);
  return off_280ABCC80(v26, 8, a5, a6, a13);
}

uint64_t sub_277A1B44C(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, int8x16_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v31 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = (a1 + 1);
  v15 = vdupq_lane_s8(a9, 0);
  v16 = vdupq_lane_s8(a10, 0);
  do
  {
    v30[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, *v16.i8), *(v14 - 1), *v15.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v14->i8, v16), *(&v14[-1].u32[1] + 3), v15), 3uLL);
    v14 = (v14 + a2);
  }

  while ((v13 * 16) != 144);
  v17 = 0;
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v18 = v30[0];
  v19 = vdupq_lane_s8(*v15.i8, 0);
  v20 = vdupq_lane_s8(*v16.i8, 0);
  do
  {
    v21 = v30[v17 + 1];
    *&v29[v17 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *v20.i8), *v18.i8, *v19.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v21, v20), v18, v19), 3uLL);
    ++v17;
    v18 = v21;
  }

  while ((v17 * 16) != 128);
  v22 = 0;
  v23 = v29;
  if (a12)
  {
    v24 = a7;
  }

  else
  {
    v24 = v29;
  }

  if (!a12)
  {
    v23 = a7;
  }

  v25.i64[0] = 0x4040404040404040;
  v25.i64[1] = 0x4040404040404040;
  do
  {
    v26 = vsubq_s8(v25, *a8);
    *&v28[v22] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v26.i8, *&v23[v22]), *a8->i8, *&v24[v22]), 6uLL), vmlal_high_u8(vmull_high_u8(v26, *&v23[v22]), *a8, *&v24[v22]), 6uLL);
    a8 = (a8 + a11);
    v22 += 16;
  }

  while (v22 != 128);
  return off_280ABCC20(v28, 16, a5, a6, a13);
}

uint64_t sub_277A1B5D8(_OWORD *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint8x8_t *a7, int8x16_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v74 = 0;
      v75 = (a1 + 1);
      do
      {
        v96[v74++] = vrhaddq_u8(*(v75 - 1), *v75);
        v75 = (v75 + a2);
      }

      while ((v74 * 16) != 272);
      v76 = 0;
      v77 = v96[0];
      do
      {
        v78 = v96[v76 + 1];
        *&v94[v76 * 16] = vrhaddq_u8(v77, v78);
        ++v76;
        v77 = v78;
      }

      while ((v76 * 16) != 256);
      v79 = 0;
      v80 = v94;
      if (a12)
      {
        v81 = a7;
      }

      else
      {
        v81 = v94;
      }

      if (!a12)
      {
        v80 = a7;
      }

      v82.i64[0] = 0x4040404040404040;
      v82.i64[1] = 0x4040404040404040;
      do
      {
        v83 = vsubq_s8(v82, *a8);
        *&v95[v79 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v83.i8, v80[v79]), *a8->i8, v81[v79]), 6uLL), vmlal_high_u8(vmull_high_u8(v83, *v80[v79].i8), *a8, *v81[v79].i8), 6uLL);
        a8 = (a8 + a11);
        v79 += 2;
      }

      while ((v79 * 8) != 256);
    }

    else
    {
      v21 = 0;
      v22 = (a1 + 1);
      if (!a4)
      {
        do
        {
          v96[v21++] = vrhaddq_u8(*(v22 - 1), *v22);
          v22 = (v22 + a2);
        }

        while ((v21 * 16) != 256);
        v23 = 0;
        v24 = v96;
        if (a12)
        {
          v25 = a7;
        }

        else
        {
          v25 = v96;
        }

        if (!a12)
        {
          v24 = a7;
        }

        v26.i64[0] = 0x4040404040404040;
        v26.i64[1] = 0x4040404040404040;
        do
        {
          v27 = vsubq_s8(v26, *a8);
          *&v94[v23 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, v24[v23]), *a8->i8, v25[v23]), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v24[v23].i8), *a8, *v25[v23].i8), 6uLL);
          a8 = (a8 + a11);
          v23 += 2;
        }

        while ((v23 * 8) != 256);
        return (off_280ABCC00)(v94, 16, a5, a6, a13);
      }

      do
      {
        v28 = *v22;
        v29 = vrhaddq_u8(*(v22 - 1), *v22);
        v96[v21++] = v29;
        v22 = (v22 + a2);
      }

      while ((v21 * 16) != 272);
      v30 = 0;
      v29.i32[0] = 8 - a4;
      v28.i32[0] = a4;
      v31 = v96[0];
      v32 = vdupq_lane_s8(*v29.i8, 0);
      v33 = vdupq_lane_s8(*v28.i8, 0);
      do
      {
        v34 = v96[v30 + 1];
        *&v94[v30 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v34.i8, *v33.i8), *v31.i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v34, v33), v31, v32), 3uLL);
        ++v30;
        v31 = v34;
      }

      while ((v30 * 16) != 256);
      v35 = 0;
      v36 = v94;
      if (a12)
      {
        v37 = a7;
      }

      else
      {
        v37 = v94;
      }

      if (!a12)
      {
        v36 = a7;
      }

      v38.i64[0] = 0x4040404040404040;
      v38.i64[1] = 0x4040404040404040;
      do
      {
        v39 = vsubq_s8(v38, *a8);
        *&v95[v35 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, v36[v35]), *a8->i8, v37[v35]), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *v36[v35].i8), *a8, *v37[v35].i8), 6uLL);
        a8 = (a8 + a11);
        v35 += 2;
      }

      while ((v35 * 8) != 256);
    }

    return (off_280ABCC00)(v95, 16, a5, a6, a13);
  }

  v13 = 0;
  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v40 = (a1 + 1);
    v41 = vdupq_lane_s8(a9, 0);
    v42 = vdupq_lane_s8(a10, 0);
    if (a4 == 4)
    {
      do
      {
        v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
        v40 = (v40 + a2);
      }

      while ((v13 * 16) != 272);
      v48 = 0;
      v49 = v96[0];
      do
      {
        v50 = v96[v48 + 1];
        *&v94[v48 * 16] = vrhaddq_u8(v49, v50);
        ++v48;
        v49 = v50;
      }

      while ((v48 * 16) != 256);
      v51 = 0;
      v52 = v94;
      if (a12)
      {
        v53 = a7;
      }

      else
      {
        v53 = v94;
      }

      if (!a12)
      {
        v52 = a7;
      }

      v54.i64[0] = 0x4040404040404040;
      v54.i64[1] = 0x4040404040404040;
      do
      {
        v55 = vsubq_s8(v54, *a8);
        *&v95[v51 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v55.i8, v52[v51]), *a8->i8, v53[v51]), 6uLL), vmlal_high_u8(vmull_high_u8(v55, *v52[v51].i8), *a8, *v53[v51].i8), 6uLL);
        a8 = (a8 + a11);
        v51 += 2;
      }

      while ((v51 * 8) != 256);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
          v40 = (v40 + a2);
        }

        while ((v13 * 16) != 256);
        v43 = 0;
        v44 = v96;
        if (a12)
        {
          v45 = a7;
        }

        else
        {
          v45 = v96;
        }

        if (!a12)
        {
          v44 = a7;
        }

        v46.i64[0] = 0x4040404040404040;
        v46.i64[1] = 0x4040404040404040;
        do
        {
          v47 = vsubq_s8(v46, *a8);
          *&v94[v43 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v47.i8, v44[v43]), *a8->i8, v45[v43]), 6uLL), vmlal_high_u8(vmull_high_u8(v47, *v44[v43].i8), *a8, *v45[v43].i8), 6uLL);
          a8 = (a8 + a11);
          v43 += 2;
        }

        while ((v43 * 8) != 256);
        return (off_280ABCC00)(v94, 16, a5, a6, a13);
      }

      do
      {
        v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
        v40 = (v40 + a2);
      }

      while ((v13 * 16) != 272);
      v56 = 0;
      v41.i32[0] = 8 - a4;
      v42.i32[0] = a4;
      v57 = v96[0];
      v58 = vdupq_lane_s8(*v41.i8, 0);
      v59 = vdupq_lane_s8(*v42.i8, 0);
      do
      {
        v60 = v96[v56 + 1];
        *&v94[v56 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *v59.i8), *v57.i8, *v58.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v60, v59), v57, v58), 3uLL);
        ++v56;
        v57 = v60;
      }

      while ((v56 * 16) != 256);
      v61 = 0;
      v62 = v94;
      if (a12)
      {
        v63 = a7;
      }

      else
      {
        v63 = v94;
      }

      if (!a12)
      {
        v62 = a7;
      }

      v64.i64[0] = 0x4040404040404040;
      v64.i64[1] = 0x4040404040404040;
      do
      {
        v65 = vsubq_s8(v64, *a8);
        *&v95[v61 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v65.i8, v62[v61]), *a8->i8, v63[v61]), 6uLL), vmlal_high_u8(vmull_high_u8(v65, *v62[v61].i8), *a8, *v63[v61].i8), 6uLL);
        a8 = (a8 + a11);
        v61 += 2;
      }

      while ((v61 * 8) != 256);
    }

    return (off_280ABCC00)(v95, 16, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v66 = *a1;
    v67 = (a1 + a2);
    do
    {
      v68 = *v67;
      v96[v13++] = vrhaddq_u8(v66, *v67);
      v67 = (v67 + a2);
      v66 = v68;
    }

    while ((v13 * 16) != 256);
    v69 = 0;
    v70 = v96;
    if (a12)
    {
      v71 = a7;
    }

    else
    {
      v71 = v96;
    }

    if (!a12)
    {
      v70 = a7;
    }

    v72.i64[0] = 0x4040404040404040;
    v72.i64[1] = 0x4040404040404040;
    do
    {
      v73 = vsubq_s8(v72, *a8);
      *&v94[v69 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v73.i8, v70[v69]), *a8->i8, v71[v69]), 6uLL), vmlal_high_u8(vmull_high_u8(v73, *v70[v69].i8), *a8, *v71[v69].i8), 6uLL);
      a8 = (a8 + a11);
      v69 += 2;
    }

    while ((v69 * 8) != 256);
    return (off_280ABCC00)(v94, 16, a5, a6, a13);
  }

  if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v84 = *a1;
    v85 = (a1 + a2);
    v86 = vdupq_lane_s8(a9, 0);
    v87 = vdupq_lane_s8(a10, 0);
    do
    {
      v88 = *v85->i8;
      v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v85, *v87.i8), *v84.i8, *v86.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v85->i8, v87), v84, v86), 3uLL);
      v85 = (v85 + a2);
      v84 = v88;
    }

    while ((v13 * 16) != 256);
    v89 = 0;
    v90 = v96;
    if (a12)
    {
      v91 = a7;
    }

    else
    {
      v91 = v96;
    }

    if (!a12)
    {
      v90 = a7;
    }

    v92.i64[0] = 0x4040404040404040;
    v92.i64[1] = 0x4040404040404040;
    do
    {
      v93 = vsubq_s8(v92, *a8);
      *&v94[v89 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v93.i8, v90[v89]), *a8->i8, v91[v89]), 6uLL), vmlal_high_u8(vmull_high_u8(v93, *v90[v89].i8), *a8, *v91[v89].i8), 6uLL);
      a8 = (a8 + a11);
      v89 += 2;
    }

    while ((v89 * 8) != 256);
    return (off_280ABCC00)(v94, 16, a5, a6, a13);
  }

  if (a12)
  {
    v14 = a7;
  }

  else
  {
    v14 = a1;
  }

  if (a12)
  {
    v15 = a1;
  }

  else
  {
    v15 = a7;
  }

  if (a12)
  {
    v16 = 16;
  }

  else
  {
    v16 = a2;
  }

  if (a12)
  {
    v17 = a2;
  }

  else
  {
    v17 = 16;
  }

  v18.i64[0] = 0x4040404040404040;
  v18.i64[1] = 0x4040404040404040;
  do
  {
    v19 = vsubq_s8(v18, *a8);
    v96[v13] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *v15), *a8->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v15->i8), *a8, *v14->i8), 6uLL);
    v14 = (v14 + v16);
    v15 = (v15 + v17);
    a8 = (a8 + a11);
    ++v13;
  }

  while ((v13 * 16) != 256);
  return (off_280ABCC00)(v96, 16, a5, a6, a13);
}

uint64_t sub_277A1BCF0(_OWORD *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint8x8_t *a7, int8x16_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v74 = 0;
      v75 = (a1 + 1);
      do
      {
        v96[v74++] = vrhaddq_u8(*(v75 - 1), *v75);
        v75 = (v75 + a2);
      }

      while ((v74 * 16) != 528);
      v76 = 0;
      v77 = v96[0];
      do
      {
        v78 = v96[v76 + 1];
        *&v94[v76 * 16] = vrhaddq_u8(v77, v78);
        ++v76;
        v77 = v78;
      }

      while ((v76 * 16) != 512);
      v79 = 0;
      v80 = v94;
      if (a12)
      {
        v81 = a7;
      }

      else
      {
        v81 = v94;
      }

      if (!a12)
      {
        v80 = a7;
      }

      v82.i64[0] = 0x4040404040404040;
      v82.i64[1] = 0x4040404040404040;
      do
      {
        v83 = vsubq_s8(v82, *a8);
        *&v95[v79 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v83.i8, v80[v79]), *a8->i8, v81[v79]), 6uLL), vmlal_high_u8(vmull_high_u8(v83, *v80[v79].i8), *a8, *v81[v79].i8), 6uLL);
        a8 = (a8 + a11);
        v79 += 2;
      }

      while ((v79 * 8) != 512);
    }

    else
    {
      v21 = 0;
      v22 = (a1 + 1);
      if (!a4)
      {
        do
        {
          v96[v21++] = vrhaddq_u8(*(v22 - 1), *v22);
          v22 = (v22 + a2);
        }

        while ((v21 * 16) != 512);
        v23 = 0;
        v24 = v96;
        if (a12)
        {
          v25 = a7;
        }

        else
        {
          v25 = v96;
        }

        if (!a12)
        {
          v24 = a7;
        }

        v26.i64[0] = 0x4040404040404040;
        v26.i64[1] = 0x4040404040404040;
        do
        {
          v27 = vsubq_s8(v26, *a8);
          *&v94[v23 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, v24[v23]), *a8->i8, v25[v23]), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v24[v23].i8), *a8, *v25[v23].i8), 6uLL);
          a8 = (a8 + a11);
          v23 += 2;
        }

        while ((v23 * 8) != 512);
        return (off_280ABCC08)(v94, 16, a5, a6, a13);
      }

      do
      {
        v28 = *v22;
        v29 = vrhaddq_u8(*(v22 - 1), *v22);
        v96[v21++] = v29;
        v22 = (v22 + a2);
      }

      while ((v21 * 16) != 528);
      v30 = 0;
      v29.i32[0] = 8 - a4;
      v28.i32[0] = a4;
      v31 = v96[0];
      v32 = vdupq_lane_s8(*v29.i8, 0);
      v33 = vdupq_lane_s8(*v28.i8, 0);
      do
      {
        v34 = v96[v30 + 1];
        *&v94[v30 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v34.i8, *v33.i8), *v31.i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v34, v33), v31, v32), 3uLL);
        ++v30;
        v31 = v34;
      }

      while ((v30 * 16) != 512);
      v35 = 0;
      v36 = v94;
      if (a12)
      {
        v37 = a7;
      }

      else
      {
        v37 = v94;
      }

      if (!a12)
      {
        v36 = a7;
      }

      v38.i64[0] = 0x4040404040404040;
      v38.i64[1] = 0x4040404040404040;
      do
      {
        v39 = vsubq_s8(v38, *a8);
        *&v95[v35 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, v36[v35]), *a8->i8, v37[v35]), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *v36[v35].i8), *a8, *v37[v35].i8), 6uLL);
        a8 = (a8 + a11);
        v35 += 2;
      }

      while ((v35 * 8) != 512);
    }

    return (off_280ABCC08)(v95, 16, a5, a6, a13);
  }

  v13 = 0;
  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v40 = (a1 + 1);
    v41 = vdupq_lane_s8(a9, 0);
    v42 = vdupq_lane_s8(a10, 0);
    if (a4 == 4)
    {
      do
      {
        v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
        v40 = (v40 + a2);
      }

      while ((v13 * 16) != 528);
      v48 = 0;
      v49 = v96[0];
      do
      {
        v50 = v96[v48 + 1];
        *&v94[v48 * 16] = vrhaddq_u8(v49, v50);
        ++v48;
        v49 = v50;
      }

      while ((v48 * 16) != 512);
      v51 = 0;
      v52 = v94;
      if (a12)
      {
        v53 = a7;
      }

      else
      {
        v53 = v94;
      }

      if (!a12)
      {
        v52 = a7;
      }

      v54.i64[0] = 0x4040404040404040;
      v54.i64[1] = 0x4040404040404040;
      do
      {
        v55 = vsubq_s8(v54, *a8);
        *&v95[v51 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v55.i8, v52[v51]), *a8->i8, v53[v51]), 6uLL), vmlal_high_u8(vmull_high_u8(v55, *v52[v51].i8), *a8, *v53[v51].i8), 6uLL);
        a8 = (a8 + a11);
        v51 += 2;
      }

      while ((v51 * 8) != 512);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
          v40 = (v40 + a2);
        }

        while ((v13 * 16) != 512);
        v43 = 0;
        v44 = v96;
        if (a12)
        {
          v45 = a7;
        }

        else
        {
          v45 = v96;
        }

        if (!a12)
        {
          v44 = a7;
        }

        v46.i64[0] = 0x4040404040404040;
        v46.i64[1] = 0x4040404040404040;
        do
        {
          v47 = vsubq_s8(v46, *a8);
          *&v94[v43 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v47.i8, v44[v43]), *a8->i8, v45[v43]), 6uLL), vmlal_high_u8(vmull_high_u8(v47, *v44[v43].i8), *a8, *v45[v43].i8), 6uLL);
          a8 = (a8 + a11);
          v43 += 2;
        }

        while ((v43 * 8) != 512);
        return (off_280ABCC08)(v94, 16, a5, a6, a13);
      }

      do
      {
        v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
        v40 = (v40 + a2);
      }

      while ((v13 * 16) != 528);
      v56 = 0;
      v41.i32[0] = 8 - a4;
      v42.i32[0] = a4;
      v57 = v96[0];
      v58 = vdupq_lane_s8(*v41.i8, 0);
      v59 = vdupq_lane_s8(*v42.i8, 0);
      do
      {
        v60 = v96[v56 + 1];
        *&v94[v56 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *v59.i8), *v57.i8, *v58.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v60, v59), v57, v58), 3uLL);
        ++v56;
        v57 = v60;
      }

      while ((v56 * 16) != 512);
      v61 = 0;
      v62 = v94;
      if (a12)
      {
        v63 = a7;
      }

      else
      {
        v63 = v94;
      }

      if (!a12)
      {
        v62 = a7;
      }

      v64.i64[0] = 0x4040404040404040;
      v64.i64[1] = 0x4040404040404040;
      do
      {
        v65 = vsubq_s8(v64, *a8);
        *&v95[v61 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v65.i8, v62[v61]), *a8->i8, v63[v61]), 6uLL), vmlal_high_u8(vmull_high_u8(v65, *v62[v61].i8), *a8, *v63[v61].i8), 6uLL);
        a8 = (a8 + a11);
        v61 += 2;
      }

      while ((v61 * 8) != 512);
    }

    return (off_280ABCC08)(v95, 16, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v66 = *a1;
    v67 = (a1 + a2);
    do
    {
      v68 = *v67;
      v96[v13++] = vrhaddq_u8(v66, *v67);
      v67 = (v67 + a2);
      v66 = v68;
    }

    while ((v13 * 16) != 512);
    v69 = 0;
    v70 = v96;
    if (a12)
    {
      v71 = a7;
    }

    else
    {
      v71 = v96;
    }

    if (!a12)
    {
      v70 = a7;
    }

    v72.i64[0] = 0x4040404040404040;
    v72.i64[1] = 0x4040404040404040;
    do
    {
      v73 = vsubq_s8(v72, *a8);
      *&v94[v69 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v73.i8, v70[v69]), *a8->i8, v71[v69]), 6uLL), vmlal_high_u8(vmull_high_u8(v73, *v70[v69].i8), *a8, *v71[v69].i8), 6uLL);
      a8 = (a8 + a11);
      v69 += 2;
    }

    while ((v69 * 8) != 512);
    return (off_280ABCC08)(v94, 16, a5, a6, a13);
  }

  if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v84 = *a1;
    v85 = (a1 + a2);
    v86 = vdupq_lane_s8(a9, 0);
    v87 = vdupq_lane_s8(a10, 0);
    do
    {
      v88 = *v85->i8;
      v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v85, *v87.i8), *v84.i8, *v86.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v85->i8, v87), v84, v86), 3uLL);
      v85 = (v85 + a2);
      v84 = v88;
    }

    while ((v13 * 16) != 512);
    v89 = 0;
    v90 = v96;
    if (a12)
    {
      v91 = a7;
    }

    else
    {
      v91 = v96;
    }

    if (!a12)
    {
      v90 = a7;
    }

    v92.i64[0] = 0x4040404040404040;
    v92.i64[1] = 0x4040404040404040;
    do
    {
      v93 = vsubq_s8(v92, *a8);
      *&v94[v89 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v93.i8, v90[v89]), *a8->i8, v91[v89]), 6uLL), vmlal_high_u8(vmull_high_u8(v93, *v90[v89].i8), *a8, *v91[v89].i8), 6uLL);
      a8 = (a8 + a11);
      v89 += 2;
    }

    while ((v89 * 8) != 512);
    return (off_280ABCC08)(v94, 16, a5, a6, a13);
  }

  if (a12)
  {
    v14 = a7;
  }

  else
  {
    v14 = a1;
  }

  if (a12)
  {
    v15 = a1;
  }

  else
  {
    v15 = a7;
  }

  if (a12)
  {
    v16 = 16;
  }

  else
  {
    v16 = a2;
  }

  if (a12)
  {
    v17 = a2;
  }

  else
  {
    v17 = 16;
  }

  v18.i64[0] = 0x4040404040404040;
  v18.i64[1] = 0x4040404040404040;
  do
  {
    v19 = vsubq_s8(v18, *a8);
    v96[v13] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *v15), *a8->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v15->i8), *a8, *v14->i8), 6uLL);
    v14 = (v14 + v16);
    v15 = (v15 + v17);
    a8 = (a8 + a11);
    ++v13;
  }

  while ((v13 * 16) != 512);
  return (off_280ABCC08)(v96, 16, a5, a6, a13);
}

uint64_t sub_277A1C408(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint8x16_t *a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v164[63] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v86 = 0;
      v87 = (a1 + 17);
      do
      {
        v88 = &v163[v86];
        v89 = vrhaddq_u8(*(v87 - 1), *v87);
        *v88 = vrhaddq_u8(*(v87 - 17), v87[-1]);
        v88[1] = v89;
        v86 += 2;
        v87 = (v87 + a2);
      }

      while ((v86 * 16) != 544);
      v90 = v163[0];
      v91 = v164;
      v92 = 32;
      do
      {
        v93 = &v161[v92];
        v95 = v91[-2];
        v94 = v91[-1];
        v96 = *v91;
        v91 += 2;
        v93[-2] = vrhaddq_u8(v90, v94);
        v93[-1] = vrhaddq_u8(v95, v96);
        v92 += 32;
        v90 = v94;
      }

      while (v92 != 544);
      v97 = v161;
      if (a12)
      {
        v98 = a7;
      }

      else
      {
        v98 = v161;
      }

      if (!a12)
      {
        v97 = a7;
      }

      v99 = v162;
      v100 = 16;
      v101.i64[0] = 0x4040404040404040;
      v101.i64[1] = 0x4040404040404040;
      do
      {
        v102 = 0;
        do
        {
          v103 = *(a8 + v102 * 16);
          v104 = vsubq_s8(v101, v103);
          *&v99[v102 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v104.i8, *v97[v102].i8), *v103.i8, *v98[v102].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v104, v97[v102]), v103, v98[v102]), 6uLL);
          ++v102;
        }

        while ((v102 * 16) != 32);
        v98 += 2;
        v97 += 2;
        a8 += a11;
        v99 += 32;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 0;
      v27 = (a1 + 17);
      if (!a4)
      {
        do
        {
          v28 = &v163[v26];
          v29 = vrhaddq_u8(*(v27 - 1), *v27);
          *v28 = vrhaddq_u8(*(v27 - 17), v27[-1]);
          v28[1] = v29;
          v26 += 2;
          v27 = (v27 + a2);
        }

        while ((v26 * 16) != 512);
        v30 = v163;
        if (a12)
        {
          v31 = a7;
        }

        else
        {
          v31 = v163;
        }

        if (!a12)
        {
          v30 = a7;
        }

        v32 = v161;
        v33 = 16;
        v34.i64[0] = 0x4040404040404040;
        v34.i64[1] = 0x4040404040404040;
        do
        {
          v35 = 0;
          do
          {
            v36 = *(a8 + v35 * 16);
            v37 = vsubq_s8(v34, v36);
            *&v32[v35 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v37.i8, *v30[v35].i8), *v36.i8, *v31[v35].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v37, v30[v35]), v36, v31[v35]), 6uLL);
            ++v35;
          }

          while ((v35 * 16) != 32);
          v31 += 2;
          v30 += 2;
          a8 += a11;
          v32 += 32;
          --v33;
        }

        while (v33);
        return (off_280ABCC28)(v161, 32, a5, a6, a13);
      }

      do
      {
        v38 = &v163[v26];
        v39 = vrhaddq_u8(*(v27 - 17), v27[-1]);
        v40 = vrhaddq_u8(*(v27 - 1), *v27);
        *v38 = v39;
        v38[1] = v40;
        v26 += 2;
        v27 = (v27 + a2);
      }

      while ((v26 * 16) != 544);
      v39.i32[0] = 8 - a4;
      v40.i32[0] = a4;
      v41 = v163;
      v42 = v161;
      v43 = 16;
      v44 = vdupq_lane_s8(*v39.i8, 0);
      v45 = vdupq_lane_s8(*v40.i8, 0);
      do
      {
        v46 = 0;
        v47 = 1;
        do
        {
          v48 = v47;
          *&v42[v46 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v41[v46 + 2], *v45.i8), *&v41[v46], *v44.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v41[v46 + 2], v45), v41[v46], v44), 3uLL);
          v46 = 1;
          v47 = 0;
        }

        while ((v48 & 1) != 0);
        v41 += 2;
        v42 += 32;
        --v43;
      }

      while (v43);
      v49 = v161;
      if (a12)
      {
        v50 = a7;
      }

      else
      {
        v50 = v161;
      }

      if (!a12)
      {
        v49 = a7;
      }

      v51 = v162;
      v52 = 16;
      v53.i64[0] = 0x4040404040404040;
      v53.i64[1] = 0x4040404040404040;
      do
      {
        v54 = 0;
        do
        {
          v55 = *(a8 + v54 * 16);
          v56 = vsubq_s8(v53, v55);
          *&v51[v54 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, *v49[v54].i8), *v55.i8, *v50[v54].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v56, v49[v54]), v55, v50[v54]), 6uLL);
          ++v54;
        }

        while ((v54 * 16) != 32);
        v50 += 2;
        v49 += 2;
        a8 += a11;
        v51 += 32;
        --v52;
      }

      while (v52);
    }

    return (off_280ABCC28)(v162, 32, a5, a6, a13);
  }

  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v57 = v163;
    if (a4 == 4)
    {
      v120 = 17;
      v121 = vdupq_lane_s8(a9, 0);
      v122 = vdupq_lane_s8(a10, 0);
      do
      {
        v123 = 0;
        v124 = 1;
        do
        {
          v125 = v124;
          v57[v123] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v123].i8[1], *v122.i8), *a1[v123].i8, *v121.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v123] + 1), v122), a1[v123], v121), 3uLL);
          v123 = 1;
          v124 = 0;
        }

        while ((v125 & 1) != 0);
        a1 = (a1 + a2);
        v57 += 2;
        --v120;
      }

      while (v120);
      v126 = 0;
      v127 = v163[0];
      do
      {
        v128 = &v161[v126 * 16];
        v129 = v163[v126 + 2];
        v130 = vrhaddq_u8(v163[v126 + 1], v163[v126 + 3]);
        *v128 = vrhaddq_u8(v127, v129);
        v128[1] = v130;
        v126 += 2;
        v127 = v129;
      }

      while ((v126 * 16) != 512);
      v131 = v161;
      if (a12)
      {
        v132 = a7;
      }

      else
      {
        v132 = v161;
      }

      if (!a12)
      {
        v131 = a7;
      }

      v133 = v162;
      v134 = 16;
      v135.i64[0] = 0x4040404040404040;
      v135.i64[1] = 0x4040404040404040;
      do
      {
        v136 = 0;
        do
        {
          v137 = *(a8 + v136 * 16);
          v138 = vsubq_s8(v135, v137);
          *&v133[v136 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v138.i8, *v131[v136].i8), *v137.i8, *v132[v136].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v138, v131[v136]), v137, v132[v136]), 6uLL);
          ++v136;
        }

        while ((v136 * 16) != 32);
        v132 += 2;
        v131 += 2;
        a8 += a11;
        v133 += 32;
        --v134;
      }

      while (v134);
    }

    else
    {
      if (!a4)
      {
        v58 = 16;
        v59 = vdupq_lane_s8(a9, 0);
        v60 = vdupq_lane_s8(a10, 0);
        do
        {
          v61 = 0;
          v62 = 1;
          do
          {
            v63 = v62;
            v57[v61] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v61].i8[1], *v60.i8), *a1[v61].i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v61] + 1), v60), a1[v61], v59), 3uLL);
            v61 = 1;
            v62 = 0;
          }

          while ((v63 & 1) != 0);
          a1 = (a1 + a2);
          v57 += 2;
          --v58;
        }

        while (v58);
        v64 = v163;
        if (a12)
        {
          v65 = a7;
        }

        else
        {
          v65 = v163;
        }

        if (!a12)
        {
          v64 = a7;
        }

        v66 = v161;
        v67 = 16;
        v68.i64[0] = 0x4040404040404040;
        v68.i64[1] = 0x4040404040404040;
        do
        {
          v69 = 0;
          do
          {
            v70 = *(a8 + v69 * 16);
            v71 = vsubq_s8(v68, v70);
            *&v66[v69 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v71.i8, *v64[v69].i8), *v70.i8, *v65[v69].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v71, v64[v69]), v70, v65[v69]), 6uLL);
            ++v69;
          }

          while ((v69 * 16) != 32);
          v65 += 2;
          v64 += 2;
          a8 += a11;
          v66 += 32;
          --v67;
        }

        while (v67);
        return (off_280ABCC28)(v161, 32, a5, a6, a13);
      }

      v139 = 17;
      v140 = vdupq_lane_s8(a9, 0);
      v141 = vdupq_lane_s8(a10, 0);
      do
      {
        v142 = 0;
        v143 = 1;
        do
        {
          v144 = v143;
          v57[v142] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v142].i8[1], *v141.i8), *a1[v142].i8, *v140.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v142] + 1), v141), a1[v142], v140), 3uLL);
          v142 = 1;
          v143 = 0;
        }

        while ((v144 & 1) != 0);
        a1 = (a1 + a2);
        v57 += 2;
        --v139;
      }

      while (v139);
      v140.i32[0] = 8 - a4;
      v141.i32[0] = a4;
      v145 = v163;
      v146 = v161;
      v147 = 16;
      v148 = vdupq_lane_s8(*v140.i8, 0);
      v149 = vdupq_lane_s8(*v141.i8, 0);
      do
      {
        v150 = 0;
        v151 = 1;
        do
        {
          v152 = v151;
          *&v146[v150 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v145[v150 + 2], *v149.i8), *&v145[v150], *v148.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v145[v150 + 2], v149), v145[v150], v148), 3uLL);
          v150 = 1;
          v151 = 0;
        }

        while ((v152 & 1) != 0);
        v145 += 2;
        v146 += 32;
        --v147;
      }

      while (v147);
      v153 = v161;
      if (a12)
      {
        v154 = a7;
      }

      else
      {
        v154 = v161;
      }

      if (!a12)
      {
        v153 = a7;
      }

      v155 = v162;
      v156 = 16;
      v157.i64[0] = 0x4040404040404040;
      v157.i64[1] = 0x4040404040404040;
      do
      {
        v158 = 0;
        do
        {
          v159 = *(a8 + v158 * 16);
          v160 = vsubq_s8(v157, v159);
          *&v155[v158 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v160.i8, *v153[v158].i8), *v159.i8, *v154[v158].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v160, v153[v158]), v159, v154[v158]), 6uLL);
          ++v158;
        }

        while ((v158 * 16) != 32);
        v154 += 2;
        v153 += 2;
        a8 += a11;
        v155 += 32;
        --v156;
      }

      while (v156);
    }

    return (off_280ABCC28)(v162, 32, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v72 = 0;
    v73 = *a1;
    do
    {
      v74 = &v163[v72];
      v75 = a1[1];
      a1 = (a1 + a2);
      v76 = *a1;
      v77 = vrhaddq_u8(v75, a1[1]);
      *v74 = vrhaddq_u8(v73, *a1);
      v74[1] = v77;
      v72 += 2;
      v73 = v76;
    }

    while ((v72 * 16) != 512);
    v78 = v163;
    if (a12)
    {
      v79 = a7;
    }

    else
    {
      v79 = v163;
    }

    if (!a12)
    {
      v78 = a7;
    }

    v80 = v161;
    v81 = 16;
    v82.i64[0] = 0x4040404040404040;
    v82.i64[1] = 0x4040404040404040;
    do
    {
      v83 = 0;
      do
      {
        v84 = *(a8 + v83 * 16);
        v85 = vsubq_s8(v82, v84);
        *&v80[v83 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v85.i8, *v78[v83].i8), *v84.i8, *v79[v83].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v85, v78[v83]), v84, v79[v83]), 6uLL);
        ++v83;
      }

      while ((v83 * 16) != 32);
      v79 += 2;
      v78 += 2;
      a8 += a11;
      v80 += 32;
      --v81;
    }

    while (v81);
    return (off_280ABCC28)(v161, 32, a5, a6, a13);
  }

  if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v105 = v163;
    v106 = 16;
    v107 = vdupq_lane_s8(a9, 0);
    v108 = vdupq_lane_s8(a10, 0);
    do
    {
      v109 = 0;
      v110 = 1;
      do
      {
        v111 = v110;
        v105[v109] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v109].i8[a2], *v108.i8), *a1[v109].i8, *v107.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v109] + a2), v108), a1[v109], v107), 3uLL);
        v109 = 1;
        v110 = 0;
      }

      while ((v111 & 1) != 0);
      a1 = (a1 + a2);
      v105 += 2;
      --v106;
    }

    while (v106);
    v112 = v163;
    if (a12)
    {
      v113 = a7;
    }

    else
    {
      v113 = v163;
    }

    if (!a12)
    {
      v112 = a7;
    }

    v114 = v161;
    v115 = 16;
    v116.i64[0] = 0x4040404040404040;
    v116.i64[1] = 0x4040404040404040;
    do
    {
      v117 = 0;
      do
      {
        v118 = *(a8 + v117 * 16);
        v119 = vsubq_s8(v116, v118);
        *&v114[v117 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v119.i8, *v112[v117].i8), *v118.i8, *v113[v117].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v119, v112[v117]), v118, v113[v117]), 6uLL);
        ++v117;
      }

      while ((v117 * 16) != 32);
      v113 += 2;
      v112 += 2;
      a8 += a11;
      v114 += 32;
      --v115;
    }

    while (v115);
    return (off_280ABCC28)(v161, 32, a5, a6, a13);
  }

  if (a12)
  {
    v13 = a7;
  }

  else
  {
    v13 = a1;
  }

  if (a12)
  {
    v14 = a1;
  }

  else
  {
    v14 = a7;
  }

  if (a12)
  {
    v15 = 32;
  }

  else
  {
    v15 = a2;
  }

  if (a12)
  {
    v16 = a2;
  }

  else
  {
    v16 = 32;
  }

  v17 = v15;
  v18 = v16;
  v19 = v163;
  v20 = 16;
  v21.i64[0] = 0x4040404040404040;
  v21.i64[1] = 0x4040404040404040;
  do
  {
    v22 = 0;
    do
    {
      v23 = *(a8 + v22 * 16);
      v24 = vsubq_s8(v21, v23);
      v19[v22] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *v14[v22].i8), *v23.i8, *v13[v22].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v24, v14[v22]), v23, v13[v22]), 6uLL);
      ++v22;
    }

    while ((v22 * 16) != 32);
    v13 = (v13 + v17);
    v14 = (v14 + v18);
    a8 += a11;
    v19 += 2;
    --v20;
  }

  while (v20);
  return (off_280ABCC28)(v163, 32, a5, a6, a13);
}

uint64_t sub_277A1CCE8(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint8x16_t *a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v162[127] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v84 = 0;
      v85 = (a1 + 17);
      do
      {
        v86 = &v161[v84];
        v87 = vrhaddq_u8(*(v85 - 1), *v85);
        *v86 = vrhaddq_u8(*(v85 - 17), v85[-1]);
        v86[1] = v87;
        v84 += 2;
        v85 = (v85 + a2);
      }

      while ((v84 * 16) != 1056);
      v88 = v161[0];
      v89 = v162;
      v90 = 32;
      do
      {
        v91 = &v159[v90];
        v93 = v89[-2];
        v92 = v89[-1];
        v94 = *v89;
        v89 += 2;
        v91[-2] = vrhaddq_u8(v88, v92);
        v91[-1] = vrhaddq_u8(v93, v94);
        v90 += 32;
        v88 = v92;
      }

      while (v90 != 1056);
      v95 = v159;
      if (a12)
      {
        v96 = a7;
      }

      else
      {
        v96 = v159;
      }

      if (!a12)
      {
        v95 = a7;
      }

      v97 = v160;
      v98 = 32;
      v99.i64[0] = 0x4040404040404040;
      v99.i64[1] = 0x4040404040404040;
      do
      {
        v100 = 0;
        do
        {
          v101 = *(a8 + v100 * 16);
          v102 = vsubq_s8(v99, v101);
          *&v97[v100 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v102.i8, *v95[v100].i8), *v101.i8, *v96[v100].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v102, v95[v100]), v101, v96[v100]), 6uLL);
          ++v100;
        }

        while ((v100 * 16) != 32);
        v96 += 2;
        v95 += 2;
        a8 += a11;
        v97 += 32;
        --v98;
      }

      while (v98);
    }

    else
    {
      v24 = 0;
      v25 = (a1 + 17);
      if (!a4)
      {
        do
        {
          v26 = &v161[v24];
          v27 = vrhaddq_u8(*(v25 - 1), *v25);
          *v26 = vrhaddq_u8(*(v25 - 17), v25[-1]);
          v26[1] = v27;
          v24 += 2;
          v25 = (v25 + a2);
        }

        while ((v24 * 16) != 1024);
        v28 = v161;
        if (a12)
        {
          v29 = a7;
        }

        else
        {
          v29 = v161;
        }

        if (!a12)
        {
          v28 = a7;
        }

        v30 = v159;
        v31 = 32;
        v32.i64[0] = 0x4040404040404040;
        v32.i64[1] = 0x4040404040404040;
        do
        {
          v33 = 0;
          do
          {
            v34 = *(a8 + v33 * 16);
            v35 = vsubq_s8(v32, v34);
            *&v30[v33 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v35.i8, *v28[v33].i8), *v34.i8, *v29[v33].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v35, v28[v33]), v34, v29[v33]), 6uLL);
            ++v33;
          }

          while ((v33 * 16) != 32);
          v29 += 2;
          v28 += 2;
          a8 += a11;
          v30 += 32;
          --v31;
        }

        while (v31);
        return (off_280ABCC30)(v159, 32, a5, a6, a13);
      }

      do
      {
        v36 = &v161[v24];
        v37 = vrhaddq_u8(*(v25 - 17), v25[-1]);
        v38 = vrhaddq_u8(*(v25 - 1), *v25);
        *v36 = v37;
        v36[1] = v38;
        v24 += 2;
        v25 = (v25 + a2);
      }

      while ((v24 * 16) != 1056);
      v37.i32[0] = 8 - a4;
      v38.i32[0] = a4;
      v39 = v161;
      v40 = v159;
      v41 = 32;
      v42 = vdupq_lane_s8(*v37.i8, 0);
      v43 = vdupq_lane_s8(*v38.i8, 0);
      do
      {
        v44 = 0;
        v45 = 1;
        do
        {
          v46 = v45;
          *&v40[v44 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v39[v44 + 2], *v43.i8), *&v39[v44], *v42.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v39[v44 + 2], v43), v39[v44], v42), 3uLL);
          v44 = 1;
          v45 = 0;
        }

        while ((v46 & 1) != 0);
        v39 += 2;
        v40 += 32;
        --v41;
      }

      while (v41);
      v47 = v159;
      if (a12)
      {
        v48 = a7;
      }

      else
      {
        v48 = v159;
      }

      if (!a12)
      {
        v47 = a7;
      }

      v49 = v160;
      v50 = 32;
      v51.i64[0] = 0x4040404040404040;
      v51.i64[1] = 0x4040404040404040;
      do
      {
        v52 = 0;
        do
        {
          v53 = *(a8 + v52 * 16);
          v54 = vsubq_s8(v51, v53);
          *&v49[v52 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v54.i8, *v47[v52].i8), *v53.i8, *v48[v52].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v54, v47[v52]), v53, v48[v52]), 6uLL);
          ++v52;
        }

        while ((v52 * 16) != 32);
        v48 += 2;
        v47 += 2;
        a8 += a11;
        v49 += 32;
        --v50;
      }

      while (v50);
    }

    return (off_280ABCC30)(v160, 32, a5, a6, a13);
  }

  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v55 = v161;
    if (a4 == 4)
    {
      v118 = 33;
      v119 = vdupq_lane_s8(a9, 0);
      v120 = vdupq_lane_s8(a10, 0);
      do
      {
        v121 = 0;
        v122 = 1;
        do
        {
          v123 = v122;
          v55[v121] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v121].i8[1], *v120.i8), *a1[v121].i8, *v119.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v121] + 1), v120), a1[v121], v119), 3uLL);
          v121 = 1;
          v122 = 0;
        }

        while ((v123 & 1) != 0);
        a1 = (a1 + a2);
        v55 += 2;
        --v118;
      }

      while (v118);
      v124 = 0;
      v125 = v161[0];
      do
      {
        v126 = &v159[v124 * 16];
        v127 = v161[v124 + 2];
        v128 = vrhaddq_u8(v161[v124 + 1], v161[v124 + 3]);
        *v126 = vrhaddq_u8(v125, v127);
        v126[1] = v128;
        v124 += 2;
        v125 = v127;
      }

      while ((v124 * 16) != 1024);
      v129 = v159;
      if (a12)
      {
        v130 = a7;
      }

      else
      {
        v130 = v159;
      }

      if (!a12)
      {
        v129 = a7;
      }

      v131 = v160;
      v132 = 32;
      v133.i64[0] = 0x4040404040404040;
      v133.i64[1] = 0x4040404040404040;
      do
      {
        v134 = 0;
        do
        {
          v135 = *(a8 + v134 * 16);
          v136 = vsubq_s8(v133, v135);
          *&v131[v134 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v136.i8, *v129[v134].i8), *v135.i8, *v130[v134].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v136, v129[v134]), v135, v130[v134]), 6uLL);
          ++v134;
        }

        while ((v134 * 16) != 32);
        v130 += 2;
        v129 += 2;
        a8 += a11;
        v131 += 32;
        --v132;
      }

      while (v132);
    }

    else
    {
      if (!a4)
      {
        v56 = 32;
        v57 = vdupq_lane_s8(a9, 0);
        v58 = vdupq_lane_s8(a10, 0);
        do
        {
          v59 = 0;
          v60 = 1;
          do
          {
            v61 = v60;
            v55[v59] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v59].i8[1], *v58.i8), *a1[v59].i8, *v57.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v59] + 1), v58), a1[v59], v57), 3uLL);
            v59 = 1;
            v60 = 0;
          }

          while ((v61 & 1) != 0);
          a1 = (a1 + a2);
          v55 += 2;
          --v56;
        }

        while (v56);
        v62 = v161;
        if (a12)
        {
          v63 = a7;
        }

        else
        {
          v63 = v161;
        }

        if (!a12)
        {
          v62 = a7;
        }

        v64 = v159;
        v65 = 32;
        v66.i64[0] = 0x4040404040404040;
        v66.i64[1] = 0x4040404040404040;
        do
        {
          v67 = 0;
          do
          {
            v68 = *(a8 + v67 * 16);
            v69 = vsubq_s8(v66, v68);
            *&v64[v67 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v69.i8, *v62[v67].i8), *v68.i8, *v63[v67].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v69, v62[v67]), v68, v63[v67]), 6uLL);
            ++v67;
          }

          while ((v67 * 16) != 32);
          v63 += 2;
          v62 += 2;
          a8 += a11;
          v64 += 32;
          --v65;
        }

        while (v65);
        return (off_280ABCC30)(v159, 32, a5, a6, a13);
      }

      v137 = 33;
      v138 = vdupq_lane_s8(a9, 0);
      v139 = vdupq_lane_s8(a10, 0);
      do
      {
        v140 = 0;
        v141 = 1;
        do
        {
          v142 = v141;
          v55[v140] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v140].i8[1], *v139.i8), *a1[v140].i8, *v138.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v140] + 1), v139), a1[v140], v138), 3uLL);
          v140 = 1;
          v141 = 0;
        }

        while ((v142 & 1) != 0);
        a1 = (a1 + a2);
        v55 += 2;
        --v137;
      }

      while (v137);
      v138.i32[0] = 8 - a4;
      v139.i32[0] = a4;
      v143 = v161;
      v144 = v159;
      v145 = 32;
      v146 = vdupq_lane_s8(*v138.i8, 0);
      v147 = vdupq_lane_s8(*v139.i8, 0);
      do
      {
        v148 = 0;
        v149 = 1;
        do
        {
          v150 = v149;
          *&v144[v148 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v143[v148 + 2], *v147.i8), *&v143[v148], *v146.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v143[v148 + 2], v147), v143[v148], v146), 3uLL);
          v148 = 1;
          v149 = 0;
        }

        while ((v150 & 1) != 0);
        v143 += 2;
        v144 += 32;
        --v145;
      }

      while (v145);
      v151 = v159;
      if (a12)
      {
        v152 = a7;
      }

      else
      {
        v152 = v159;
      }

      if (!a12)
      {
        v151 = a7;
      }

      v153 = v160;
      v154 = 32;
      v155.i64[0] = 0x4040404040404040;
      v155.i64[1] = 0x4040404040404040;
      do
      {
        v156 = 0;
        do
        {
          v157 = *(a8 + v156 * 16);
          v158 = vsubq_s8(v155, v157);
          *&v153[v156 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v158.i8, *v151[v156].i8), *v157.i8, *v152[v156].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v158, v151[v156]), v157, v152[v156]), 6uLL);
          ++v156;
        }

        while ((v156 * 16) != 32);
        v152 += 2;
        v151 += 2;
        a8 += a11;
        v153 += 32;
        --v154;
      }

      while (v154);
    }

    return (off_280ABCC30)(v160, 32, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v70 = 0;
    v71 = *a1;
    do
    {
      v72 = &v161[v70];
      v73 = a1[1];
      a1 = (a1 + a2);
      v74 = *a1;
      v75 = vrhaddq_u8(v73, a1[1]);
      *v72 = vrhaddq_u8(v71, *a1);
      v72[1] = v75;
      v70 += 2;
      v71 = v74;
    }

    while ((v70 * 16) != 1024);
    v76 = v161;
    if (a12)
    {
      v77 = a7;
    }

    else
    {
      v77 = v161;
    }

    if (!a12)
    {
      v76 = a7;
    }

    v78 = v159;
    v79 = 32;
    v80.i64[0] = 0x4040404040404040;
    v80.i64[1] = 0x4040404040404040;
    do
    {
      v81 = 0;
      do
      {
        v82 = *(a8 + v81 * 16);
        v83 = vsubq_s8(v80, v82);
        *&v78[v81 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v83.i8, *v76[v81].i8), *v82.i8, *v77[v81].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v83, v76[v81]), v82, v77[v81]), 6uLL);
        ++v81;
      }

      while ((v81 * 16) != 32);
      v77 += 2;
      v76 += 2;
      a8 += a11;
      v78 += 32;
      --v79;
    }

    while (v79);
    return (off_280ABCC30)(v159, 32, a5, a6, a13);
  }

  if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v103 = v161;
    v104 = 32;
    v105 = vdupq_lane_s8(a9, 0);
    v106 = vdupq_lane_s8(a10, 0);
    do
    {
      v107 = 0;
      v108 = 1;
      do
      {
        v109 = v108;
        v103[v107] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v107].i8[a2], *v106.i8), *a1[v107].i8, *v105.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v107] + a2), v106), a1[v107], v105), 3uLL);
        v107 = 1;
        v108 = 0;
      }

      while ((v109 & 1) != 0);
      a1 = (a1 + a2);
      v103 += 2;
      --v104;
    }

    while (v104);
    v110 = v161;
    if (a12)
    {
      v111 = a7;
    }

    else
    {
      v111 = v161;
    }

    if (!a12)
    {
      v110 = a7;
    }

    v112 = v159;
    v113 = 32;
    v114.i64[0] = 0x4040404040404040;
    v114.i64[1] = 0x4040404040404040;
    do
    {
      v115 = 0;
      do
      {
        v116 = *(a8 + v115 * 16);
        v117 = vsubq_s8(v114, v116);
        *&v112[v115 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v117.i8, *v110[v115].i8), *v116.i8, *v111[v115].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v117, v110[v115]), v116, v111[v115]), 6uLL);
        ++v115;
      }

      while ((v115 * 16) != 32);
      v111 += 2;
      v110 += 2;
      a8 += a11;
      v112 += 32;
      --v113;
    }

    while (v113);
    return (off_280ABCC30)(v159, 32, a5, a6, a13);
  }

  if (a12)
  {
    v13 = a7;
  }

  else
  {
    v13 = a1;
  }

  if (a12)
  {
    v14 = a1;
  }

  else
  {
    v14 = a7;
  }

  v15 = 32;
  if (a12)
  {
    v16 = 32;
  }

  else
  {
    v16 = a2;
  }

  if (a12)
  {
    v17 = a2;
  }

  else
  {
    v17 = 32;
  }

  v18 = v161;
  v19.i64[0] = 0x4040404040404040;
  v19.i64[1] = 0x4040404040404040;
  do
  {
    v20 = 0;
    do
    {
      v21 = *(a8 + v20 * 16);
      v22 = vsubq_s8(v19, v21);
      v18[v20] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v22.i8, *v14[v20].i8), *v21.i8, *v13[v20].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v22, v14[v20]), v21, v13[v20]), 6uLL);
      ++v20;
    }

    while ((v20 * 16) != 32);
    v13 = (v13 + v16);
    v14 = (v14 + v17);
    a8 += a11;
    v18 += 2;
    --v15;
  }

  while (v15);
  return (off_280ABCC30)(v161, 32, a5, a6, a13);
}

uint64_t sub_277A1D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v172[255] = *MEMORY[0x277D85DE8];
  if (v13 == 4)
  {
    if (v14 == 4)
    {
      v94 = 0;
      v95 = (v11 + 17);
      do
      {
        v96 = &v171[v94];
        v97 = vrhaddq_u8(*(v95 - 1), *v95);
        *v96 = vrhaddq_u8(*(v95 - 17), v95[-1]);
        v96[1] = v97;
        v94 += 2;
        v95 = (v95 + v12);
      }

      while ((v94 * 16) != 2080);
      v98 = v171[0];
      v99 = v172;
      v100 = 32;
      do
      {
        v101 = (v170 + v100 + 2078);
        v103 = v99[-2];
        v102 = v99[-1];
        v104 = *v99;
        v99 += 2;
        v101[-2] = vrhaddq_u8(v98, v102);
        v101[-1] = vrhaddq_u8(v103, v104);
        v100 += 32;
        v98 = v102;
      }

      while (v100 != 2080);
      v105 = &v169;
      if (a10)
      {
        v106 = v17;
      }

      else
      {
        v106 = &v169;
      }

      if (!a10)
      {
        v105 = v17;
      }

      v107 = v170;
      v108 = 64;
      v109.i64[0] = 0x4040404040404040;
      v109.i64[1] = 0x4040404040404040;
      do
      {
        v110 = 0;
        do
        {
          v111 = *(v18 + v110 * 16);
          v112 = vsubq_s8(v109, v111);
          *&v107[v110 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v112.i8, *v105[v110].i8), *v111.i8, *v106[v110].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v112, v105[v110]), v111, v106[v110]), 6uLL);
          ++v110;
        }

        while ((v110 * 16) != 32);
        v106 += 2;
        v105 += 2;
        v18 += a9;
        v107 += 32;
        --v108;
      }

      while (v108);
    }

    else
    {
      v34 = 0;
      v35 = (v11 + 17);
      if (!v14)
      {
        do
        {
          v36 = &v171[v34];
          v37 = vrhaddq_u8(*(v35 - 1), *v35);
          *v36 = vrhaddq_u8(*(v35 - 17), v35[-1]);
          v36[1] = v37;
          v34 += 2;
          v35 = (v35 + v12);
        }

        while ((v34 * 16) != 2048);
        v38 = v171;
        if (a10)
        {
          v39 = v17;
        }

        else
        {
          v39 = v171;
        }

        if (!a10)
        {
          v38 = v17;
        }

        v40 = &v169;
        v41 = 64;
        v42.i64[0] = 0x4040404040404040;
        v42.i64[1] = 0x4040404040404040;
        do
        {
          v43 = 0;
          do
          {
            v44 = *(v18 + v43 * 16);
            v45 = vsubq_s8(v42, v44);
            *&v40[v43 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, *v38[v43].i8), *v44.i8, *v39[v43].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v45, v38[v43]), v44, v39[v43]), 6uLL);
            ++v43;
          }

          while ((v43 * 16) != 32);
          v39 += 2;
          v38 += 2;
          v18 += a9;
          v40 += 32;
          --v41;
        }

        while (v41);
        return (off_280ABCC38)(&v169, 32, v15, v16, a11);
      }

      do
      {
        v46 = &v171[v34];
        v47 = vrhaddq_u8(*(v35 - 17), v35[-1]);
        v48 = vrhaddq_u8(*(v35 - 1), *v35);
        *v46 = v47;
        v46[1] = v48;
        v34 += 2;
        v35 = (v35 + v12);
      }

      while ((v34 * 16) != 2080);
      v47.i32[0] = 8 - v14;
      v48.i32[0] = v14;
      v49 = v171;
      v50 = &v169;
      v51 = 64;
      v52 = vdupq_lane_s8(*v47.i8, 0);
      v53 = vdupq_lane_s8(*v48.i8, 0);
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          *&v50[v54 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v49[v54 + 2], *v53.i8), *&v49[v54], *v52.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v49[v54 + 2], v53), v49[v54], v52), 3uLL);
          v54 = 1;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v49 += 2;
        v50 += 32;
        --v51;
      }

      while (v51);
      v57 = &v169;
      if (a10)
      {
        v58 = v17;
      }

      else
      {
        v58 = &v169;
      }

      if (!a10)
      {
        v57 = v17;
      }

      v59 = v170;
      v60 = 64;
      v61.i64[0] = 0x4040404040404040;
      v61.i64[1] = 0x4040404040404040;
      do
      {
        v62 = 0;
        do
        {
          v63 = *(v18 + v62 * 16);
          v64 = vsubq_s8(v61, v63);
          *&v59[v62 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v64.i8, *v57[v62].i8), *v63.i8, *v58[v62].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v64, v57[v62]), v63, v58[v62]), 6uLL);
          ++v62;
        }

        while ((v62 * 16) != 32);
        v58 += 2;
        v57 += 2;
        v18 += a9;
        v59 += 32;
        --v60;
      }

      while (v60);
    }

    return (off_280ABCC38)(v170, 32, v15, v16, a11);
  }

  if (v13)
  {
    v19.i32[0] = 8 - v13;
    v20.i32[0] = v13;
    v65 = v171;
    if (v14 == 4)
    {
      v128 = 65;
      v129 = vdupq_lane_s8(v19, 0);
      v130 = vdupq_lane_s8(v20, 0);
      do
      {
        v131 = 0;
        v132 = 1;
        do
        {
          v133 = v132;
          v65[v131] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v11[v131].i8[1], *v130.i8), *v11[v131].i8, *v129.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v11[v131] + 1), v130), v11[v131], v129), 3uLL);
          v131 = 1;
          v132 = 0;
        }

        while ((v133 & 1) != 0);
        v11 = (v11 + v12);
        v65 += 2;
        --v128;
      }

      while (v128);
      v134 = 0;
      v135 = v171[0];
      do
      {
        v136 = (v170 + v134 * 16 + 2078);
        v137 = v171[v134 + 2];
        v138 = vrhaddq_u8(v171[v134 + 1], v171[v134 + 3]);
        *v136 = vrhaddq_u8(v135, v137);
        v136[1] = v138;
        v134 += 2;
        v135 = v137;
      }

      while ((v134 * 16) != 2048);
      v139 = &v169;
      if (a10)
      {
        v140 = v17;
      }

      else
      {
        v140 = &v169;
      }

      if (!a10)
      {
        v139 = v17;
      }

      v141 = v170;
      v142 = 64;
      v143.i64[0] = 0x4040404040404040;
      v143.i64[1] = 0x4040404040404040;
      do
      {
        v144 = 0;
        do
        {
          v145 = *(v18 + v144 * 16);
          v146 = vsubq_s8(v143, v145);
          *&v141[v144 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v146.i8, *v139[v144].i8), *v145.i8, *v140[v144].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v146, v139[v144]), v145, v140[v144]), 6uLL);
          ++v144;
        }

        while ((v144 * 16) != 32);
        v140 += 2;
        v139 += 2;
        v18 += a9;
        v141 += 32;
        --v142;
      }

      while (v142);
    }

    else
    {
      if (!v14)
      {
        v66 = 64;
        v67 = vdupq_lane_s8(v19, 0);
        v68 = vdupq_lane_s8(v20, 0);
        do
        {
          v69 = 0;
          v70 = 1;
          do
          {
            v71 = v70;
            v65[v69] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v11[v69].i8[1], *v68.i8), *v11[v69].i8, *v67.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v11[v69] + 1), v68), v11[v69], v67), 3uLL);
            v69 = 1;
            v70 = 0;
          }

          while ((v71 & 1) != 0);
          v11 = (v11 + v12);
          v65 += 2;
          --v66;
        }

        while (v66);
        v72 = v171;
        if (a10)
        {
          v73 = v17;
        }

        else
        {
          v73 = v171;
        }

        if (!a10)
        {
          v72 = v17;
        }

        v74 = &v169;
        v75 = 64;
        v76.i64[0] = 0x4040404040404040;
        v76.i64[1] = 0x4040404040404040;
        do
        {
          v77 = 0;
          do
          {
            v78 = *(v18 + v77 * 16);
            v79 = vsubq_s8(v76, v78);
            *&v74[v77 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v79.i8, *v72[v77].i8), *v78.i8, *v73[v77].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v79, v72[v77]), v78, v73[v77]), 6uLL);
            ++v77;
          }

          while ((v77 * 16) != 32);
          v73 += 2;
          v72 += 2;
          v18 += a9;
          v74 += 32;
          --v75;
        }

        while (v75);
        return (off_280ABCC38)(&v169, 32, v15, v16, a11);
      }

      v147 = 65;
      v148 = vdupq_lane_s8(v19, 0);
      v149 = vdupq_lane_s8(v20, 0);
      do
      {
        v150 = 0;
        v151 = 1;
        do
        {
          v152 = v151;
          v65[v150] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v11[v150].i8[1], *v149.i8), *v11[v150].i8, *v148.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v11[v150] + 1), v149), v11[v150], v148), 3uLL);
          v150 = 1;
          v151 = 0;
        }

        while ((v152 & 1) != 0);
        v11 = (v11 + v12);
        v65 += 2;
        --v147;
      }

      while (v147);
      v148.i32[0] = 8 - v14;
      v149.i32[0] = v14;
      v153 = v171;
      v154 = &v169;
      v155 = 64;
      v156 = vdupq_lane_s8(*v148.i8, 0);
      v157 = vdupq_lane_s8(*v149.i8, 0);
      do
      {
        v158 = 0;
        v159 = 1;
        do
        {
          v160 = v159;
          *&v154[v158 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v153[v158 + 2], *v157.i8), *&v153[v158], *v156.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v153[v158 + 2], v157), v153[v158], v156), 3uLL);
          v158 = 1;
          v159 = 0;
        }

        while ((v160 & 1) != 0);
        v153 += 2;
        v154 += 32;
        --v155;
      }

      while (v155);
      v161 = &v169;
      if (a10)
      {
        v162 = v17;
      }

      else
      {
        v162 = &v169;
      }

      if (!a10)
      {
        v161 = v17;
      }

      v163 = v170;
      v164 = 64;
      v165.i64[0] = 0x4040404040404040;
      v165.i64[1] = 0x4040404040404040;
      do
      {
        v166 = 0;
        do
        {
          v167 = *(v18 + v166 * 16);
          v168 = vsubq_s8(v165, v167);
          *&v163[v166 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v168.i8, *v161[v166].i8), *v167.i8, *v162[v166].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v168, v161[v166]), v167, v162[v166]), 6uLL);
          ++v166;
        }

        while ((v166 * 16) != 32);
        v162 += 2;
        v161 += 2;
        v18 += a9;
        v163 += 32;
        --v164;
      }

      while (v164);
    }

    return (off_280ABCC38)(v170, 32, v15, v16, a11);
  }

  if (v14 == 4)
  {
    v80 = 0;
    v81 = *v11;
    do
    {
      v82 = &v171[v80];
      v83 = v11[1];
      v11 = (v11 + v12);
      v84 = *v11;
      v85 = vrhaddq_u8(v83, v11[1]);
      *v82 = vrhaddq_u8(v81, *v11);
      v82[1] = v85;
      v80 += 2;
      v81 = v84;
    }

    while ((v80 * 16) != 2048);
    v86 = v171;
    if (a10)
    {
      v87 = v17;
    }

    else
    {
      v87 = v171;
    }

    if (!a10)
    {
      v86 = v17;
    }

    v88 = &v169;
    v89 = 64;
    v90.i64[0] = 0x4040404040404040;
    v90.i64[1] = 0x4040404040404040;
    do
    {
      v91 = 0;
      do
      {
        v92 = *(v18 + v91 * 16);
        v93 = vsubq_s8(v90, v92);
        *&v88[v91 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v93.i8, *v86[v91].i8), *v92.i8, *v87[v91].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v93, v86[v91]), v92, v87[v91]), 6uLL);
        ++v91;
      }

      while ((v91 * 16) != 32);
      v87 += 2;
      v86 += 2;
      v18 += a9;
      v88 += 32;
      --v89;
    }

    while (v89);
    return (off_280ABCC38)(&v169, 32, v15, v16, a11);
  }

  if (v14)
  {
    v19.i32[0] = 8 - v14;
    v20.i32[0] = v14;
    v113 = v171;
    v114 = 64;
    v115 = vdupq_lane_s8(v19, 0);
    v116 = vdupq_lane_s8(v20, 0);
    do
    {
      v117 = 0;
      v118 = 1;
      do
      {
        v119 = v118;
        v113[v117] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v11[v117].i8[v12], *v116.i8), *v11[v117].i8, *v115.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&v11[v117] + v12), v116), v11[v117], v115), 3uLL);
        v117 = 1;
        v118 = 0;
      }

      while ((v119 & 1) != 0);
      v11 = (v11 + v12);
      v113 += 2;
      --v114;
    }

    while (v114);
    v120 = v171;
    if (a10)
    {
      v121 = v17;
    }

    else
    {
      v121 = v171;
    }

    if (!a10)
    {
      v120 = v17;
    }

    v122 = &v169;
    v123 = 64;
    v124.i64[0] = 0x4040404040404040;
    v124.i64[1] = 0x4040404040404040;
    do
    {
      v125 = 0;
      do
      {
        v126 = *(v18 + v125 * 16);
        v127 = vsubq_s8(v124, v126);
        *&v122[v125 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v127.i8, *v120[v125].i8), *v126.i8, *v121[v125].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v127, v120[v125]), v126, v121[v125]), 6uLL);
        ++v125;
      }

      while ((v125 * 16) != 32);
      v121 += 2;
      v120 += 2;
      v18 += a9;
      v122 += 32;
      --v123;
    }

    while (v123);
    return (off_280ABCC38)(&v169, 32, v15, v16, a11);
  }

  if (a10)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (a10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  if (a10)
  {
    v23 = 32;
  }

  else
  {
    v23 = v12;
  }

  if (a10)
  {
    v24 = v12;
  }

  else
  {
    v24 = 32;
  }

  v25 = v23;
  v26 = v24;
  v27 = v171;
  v28 = 64;
  v29.i64[0] = 0x4040404040404040;
  v29.i64[1] = 0x4040404040404040;
  do
  {
    v30 = 0;
    do
    {
      v31 = *(v18 + v30 * 16);
      v32 = vsubq_s8(v29, v31);
      v27[v30] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *v22[v30].i8), *v31.i8, *v21[v30].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v32, v22[v30]), v31, v21[v30]), 6uLL);
      ++v30;
    }

    while ((v30 * 16) != 32);
    v21 = (v21 + v25);
    v22 = (v22 + v26);
    v18 += a9;
    v27 += 2;
    --v28;
  }

  while (v28);
  return (off_280ABCC38)(v171, 32, v15, v16, a11);
}

uint64_t sub_277A1DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v153[264] = *MEMORY[0x277D85DE8];
  if (v13 == 4)
  {
    v34 = v153;
    if (v14 == 4)
    {
      v71 = 33;
      do
      {
        v72 = 0;
        do
        {
          *&v34[v72] = vrhaddq_u8(*(v11 + v72 * 8), *(v11 + v72 * 8 + 1));
          v37 = v72 >= 6;
          v72 += 2;
        }

        while (!v37);
        v11 += v12;
        v34 += 8;
        --v71;
      }

      while (v71);
      v73 = v153;
      v74 = v151;
      v75 = 32;
      do
      {
        v76 = 0;
        do
        {
          *&v74[v76 * 8] = vrhaddq_u8(*&v73[v76], *&v73[v76 + 8]);
          v37 = v76 >= 6;
          v76 += 2;
        }

        while (!v37);
        v73 += 8;
        v74 += 64;
        --v75;
      }

      while (v75);
      v77 = v151;
      if (a10)
      {
        v78 = v17;
      }

      else
      {
        v78 = v151;
      }

      if (!a10)
      {
        v77 = v17;
      }

      v79 = v152;
      v80 = 32;
      v81.i64[0] = 0x4040404040404040;
      v81.i64[1] = 0x4040404040404040;
      do
      {
        v82 = 0;
        do
        {
          v83 = *(v18 + v82);
          v84 = vsubq_s8(v81, v83);
          *&v79[v82] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v84.i8, *&v77[v82]), *v83.i8, *&v78[v82]), 6uLL), vmlal_high_u8(vmull_high_u8(v84, *&v77[v82]), v83, *&v78[v82]), 6uLL);
          v82 += 16;
        }

        while (v82 != 64);
        v78 += 64;
        v77 += 64;
        v18 += a9;
        v79 += 64;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v14)
      {
        v35 = 32;
        do
        {
          v36 = 0;
          do
          {
            *&v34[v36] = vrhaddq_u8(*(v11 + v36 * 8), *(v11 + v36 * 8 + 1));
            v37 = v36 >= 6;
            v36 += 2;
          }

          while (!v37);
          v11 += v12;
          v34 += 8;
          --v35;
        }

        while (v35);
        v38 = v153;
        if (a10)
        {
          v39 = v17;
        }

        else
        {
          v39 = v153;
        }

        if (!a10)
        {
          v38 = v17;
        }

        v40 = v151;
        v41 = 32;
        v42.i64[0] = 0x4040404040404040;
        v42.i64[1] = 0x4040404040404040;
        do
        {
          v43 = 0;
          do
          {
            v44 = *(v18 + v43 * 8);
            v45 = vsubq_s8(v42, v44);
            *&v40[v43 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, v38[v43]), *v44.i8, v39[v43]), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *&v38[v43]), v44, *&v39[v43]), 6uLL);
            v43 += 2;
          }

          while ((v43 * 8) != 64);
          v39 += 8;
          v38 += 8;
          v18 += a9;
          v40 += 64;
          --v41;
        }

        while (v41);
        return (off_280ABCC70)(v151, 64, v15, v16, a11);
      }

      v99 = 33;
      do
      {
        v100 = 0;
        do
        {
          v101 = *(v11 + v100 * 8 + 1);
          v102 = vrhaddq_u8(*(v11 + v100 * 8), v101);
          *&v34[v100] = v102;
          v37 = v100 >= 6;
          v100 += 2;
        }

        while (!v37);
        v11 += v12;
        v34 += 8;
        --v99;
      }

      while (v99);
      v102.i32[0] = 8 - v14;
      v101.i32[0] = v14;
      v103 = v153;
      v104 = v151;
      v105 = 32;
      v106 = vdupq_lane_s8(*v102.i8, 0);
      v107 = vdupq_lane_s8(*v101.i8, 0);
      do
      {
        v108 = 0;
        do
        {
          *&v104[v108 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v103[v108 + 8], *v107.i8), v103[v108], *v106.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v103[v108 + 8], v107), *&v103[v108], v106), 3uLL);
          v37 = v108 >= 6;
          v108 += 2;
        }

        while (!v37);
        v103 += 8;
        v104 += 64;
        --v105;
      }

      while (v105);
      v109 = v151;
      if (a10)
      {
        v110 = v17;
      }

      else
      {
        v110 = v151;
      }

      if (!a10)
      {
        v109 = v17;
      }

      v111 = v152;
      v112 = 32;
      v113.i64[0] = 0x4040404040404040;
      v113.i64[1] = 0x4040404040404040;
      do
      {
        v114 = 0;
        do
        {
          v115 = *(v18 + v114);
          v116 = vsubq_s8(v113, v115);
          *&v111[v114] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v116.i8, *&v109[v114]), *v115.i8, *&v110[v114]), 6uLL), vmlal_high_u8(vmull_high_u8(v116, *&v109[v114]), v115, *&v110[v114]), 6uLL);
          v114 += 16;
        }

        while (v114 != 64);
        v110 += 64;
        v109 += 64;
        v18 += a9;
        v111 += 64;
        --v112;
      }

      while (v112);
    }

    return (off_280ABCC70)(v152, 64, v15, v16, a11);
  }

  if (v13)
  {
    v19.i32[0] = 8 - v13;
    v20.i32[0] = v13;
    v46 = v153;
    if (v14 == 4)
    {
      v117 = 33;
      v118 = vdupq_lane_s8(v19, 0);
      v119 = vdupq_lane_s8(v20, 0);
      do
      {
        v120 = 0;
        do
        {
          *&v46[v120 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v120 + 1), *v119.i8), *(v11 + v120), *v118.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v120 + 1), v119), *(v11 + v120), v118), 3uLL);
          v37 = v120 >= 0x30;
          v120 += 16;
        }

        while (!v37);
        v11 += v12;
        v46 += 8;
        --v117;
      }

      while (v117);
      v121 = v153;
      v122 = v151;
      v123 = 32;
      do
      {
        v124 = 0;
        do
        {
          *&v122[v124 * 8] = vrhaddq_u8(*&v121[v124], *&v121[v124 + 8]);
          v37 = v124 >= 6;
          v124 += 2;
        }

        while (!v37);
        v121 += 8;
        v122 += 64;
        --v123;
      }

      while (v123);
      v125 = v151;
      if (a10)
      {
        v126 = v17;
      }

      else
      {
        v126 = v151;
      }

      if (!a10)
      {
        v125 = v17;
      }

      v127 = v152;
      v128 = 32;
      v129.i64[0] = 0x4040404040404040;
      v129.i64[1] = 0x4040404040404040;
      do
      {
        v130 = 0;
        do
        {
          v131 = *(v18 + v130);
          v132 = vsubq_s8(v129, v131);
          *&v127[v130] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v132.i8, *&v125[v130]), *v131.i8, *&v126[v130]), 6uLL), vmlal_high_u8(vmull_high_u8(v132, *&v125[v130]), v131, *&v126[v130]), 6uLL);
          v130 += 16;
        }

        while (v130 != 64);
        v126 += 64;
        v125 += 64;
        v18 += a9;
        v127 += 64;
        --v128;
      }

      while (v128);
    }

    else
    {
      if (!v14)
      {
        v47 = 32;
        v48 = vdupq_lane_s8(v19, 0);
        v49 = vdupq_lane_s8(v20, 0);
        do
        {
          v50 = 0;
          do
          {
            *&v46[v50 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v50 + 1), *v49.i8), *(v11 + v50), *v48.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v50 + 1), v49), *(v11 + v50), v48), 3uLL);
            v37 = v50 >= 0x30;
            v50 += 16;
          }

          while (!v37);
          v11 += v12;
          v46 += 8;
          --v47;
        }

        while (v47);
        v51 = v153;
        if (a10)
        {
          v52 = v17;
        }

        else
        {
          v52 = v153;
        }

        if (!a10)
        {
          v51 = v17;
        }

        v53 = v151;
        v54 = 32;
        v55.i64[0] = 0x4040404040404040;
        v55.i64[1] = 0x4040404040404040;
        do
        {
          v56 = 0;
          do
          {
            v57 = *(v18 + v56 * 8);
            v58 = vsubq_s8(v55, v57);
            *&v53[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v58.i8, v51[v56]), *v57.i8, v52[v56]), 6uLL), vmlal_high_u8(vmull_high_u8(v58, *&v51[v56]), v57, *&v52[v56]), 6uLL);
            v56 += 2;
          }

          while ((v56 * 8) != 64);
          v52 += 8;
          v51 += 8;
          v18 += a9;
          v53 += 64;
          --v54;
        }

        while (v54);
        return (off_280ABCC70)(v151, 64, v15, v16, a11);
      }

      v133 = 33;
      v134 = vdupq_lane_s8(v19, 0);
      v135 = vdupq_lane_s8(v20, 0);
      do
      {
        v136 = 0;
        do
        {
          *&v46[v136 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v136 + 1), *v135.i8), *(v11 + v136), *v134.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v136 + 1), v135), *(v11 + v136), v134), 3uLL);
          v37 = v136 >= 0x30;
          v136 += 16;
        }

        while (!v37);
        v11 += v12;
        v46 += 8;
        --v133;
      }

      while (v133);
      v134.i32[0] = 8 - v14;
      v135.i32[0] = v14;
      v137 = v153;
      v138 = v151;
      v139 = 32;
      v140 = vdupq_lane_s8(*v134.i8, 0);
      v141 = vdupq_lane_s8(*v135.i8, 0);
      do
      {
        v142 = 0;
        do
        {
          *&v138[v142 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v137[v142 + 8], *v141.i8), v137[v142], *v140.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v137[v142 + 8], v141), *&v137[v142], v140), 3uLL);
          v37 = v142 >= 6;
          v142 += 2;
        }

        while (!v37);
        v137 += 8;
        v138 += 64;
        --v139;
      }

      while (v139);
      v143 = v151;
      if (a10)
      {
        v144 = v17;
      }

      else
      {
        v144 = v151;
      }

      if (!a10)
      {
        v143 = v17;
      }

      v145 = v152;
      v146 = 32;
      v147.i64[0] = 0x4040404040404040;
      v147.i64[1] = 0x4040404040404040;
      do
      {
        v148 = 0;
        do
        {
          v149 = *(v18 + v148);
          v150 = vsubq_s8(v147, v149);
          *&v145[v148] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v150.i8, *&v143[v148]), *v149.i8, *&v144[v148]), 6uLL), vmlal_high_u8(vmull_high_u8(v150, *&v143[v148]), v149, *&v144[v148]), 6uLL);
          v148 += 16;
        }

        while (v148 != 64);
        v144 += 64;
        v143 += 64;
        v18 += a9;
        v145 += 64;
        --v146;
      }

      while (v146);
    }

    return (off_280ABCC70)(v152, 64, v15, v16, a11);
  }

  if (v14 == 4)
  {
    v59 = v153;
    v60 = 32;
    v61 = v11 + v12;
    do
    {
      v62 = 0;
      do
      {
        *&v59[v62] = vrhaddq_u8(*(v11 + v62 * 8), *(v61 + v62 * 8));
        v37 = v62 >= 6;
        v62 += 2;
      }

      while (!v37);
      v11 += v12;
      v59 += 8;
      v61 += v12;
      --v60;
    }

    while (v60);
    v63 = v153;
    if (a10)
    {
      v64 = v17;
    }

    else
    {
      v64 = v153;
    }

    if (!a10)
    {
      v63 = v17;
    }

    v65 = v151;
    v66 = 32;
    v67.i64[0] = 0x4040404040404040;
    v67.i64[1] = 0x4040404040404040;
    do
    {
      v68 = 0;
      do
      {
        v69 = *(v18 + v68 * 8);
        v70 = vsubq_s8(v67, v69);
        *&v65[v68 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v70.i8, v63[v68]), *v69.i8, v64[v68]), 6uLL), vmlal_high_u8(vmull_high_u8(v70, *&v63[v68]), v69, *&v64[v68]), 6uLL);
        v68 += 2;
      }

      while ((v68 * 8) != 64);
      v64 += 8;
      v63 += 8;
      v18 += a9;
      v65 += 64;
      --v66;
    }

    while (v66);
    return (off_280ABCC70)(v151, 64, v15, v16, a11);
  }

  if (v14)
  {
    v19.i32[0] = 8 - v14;
    v20.i32[0] = v14;
    v85 = v11 + v12;
    v86 = v153;
    v87 = 32;
    v88 = vdupq_lane_s8(v19, 0);
    v89 = vdupq_lane_s8(v20, 0);
    do
    {
      v90 = 0;
      do
      {
        *&v86[v90 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v85 + v90), *v89.i8), *(v11 + v90), *v88.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v85 + v90), v89), *(v11 + v90), v88), 3uLL);
        v37 = v90 >= 0x30;
        v90 += 16;
      }

      while (!v37);
      v11 += v12;
      v86 += 8;
      v85 += v12;
      --v87;
    }

    while (v87);
    v91 = v153;
    if (a10)
    {
      v92 = v17;
    }

    else
    {
      v92 = v153;
    }

    if (!a10)
    {
      v91 = v17;
    }

    v93 = v151;
    v94 = 32;
    v95.i64[0] = 0x4040404040404040;
    v95.i64[1] = 0x4040404040404040;
    do
    {
      v96 = 0;
      do
      {
        v97 = *(v18 + v96 * 8);
        v98 = vsubq_s8(v95, v97);
        *&v93[v96 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v98.i8, v91[v96]), *v97.i8, v92[v96]), 6uLL), vmlal_high_u8(vmull_high_u8(v98, *&v91[v96]), v97, *&v92[v96]), 6uLL);
        v96 += 2;
      }

      while ((v96 * 8) != 64);
      v92 += 8;
      v91 += 8;
      v18 += a9;
      v93 += 64;
      --v94;
    }

    while (v94);
    return (off_280ABCC70)(v151, 64, v15, v16, a11);
  }

  if (a10)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (a10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  if (a10)
  {
    v23 = 64;
  }

  else
  {
    v23 = v12;
  }

  if (a10)
  {
    v24 = v12;
  }

  else
  {
    v24 = 64;
  }

  v25 = v23;
  v26 = v24;
  v27 = v153;
  v28 = 32;
  v29.i64[0] = 0x4040404040404040;
  v29.i64[1] = 0x4040404040404040;
  do
  {
    v30 = 0;
    do
    {
      v31 = *(v18 + v30);
      v32 = vsubq_s8(v29, v31);
      *&v27[v30 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(v22 + v30)), *v31.i8, *(v21 + v30)), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(v22 + v30)), v31, *(v21 + v30)), 6uLL);
      v30 += 16;
    }

    while (v30 != 64);
    v21 += v25;
    v22 += v26;
    v18 += a9;
    v27 += 8;
    --v28;
  }

  while (v28);
  return (off_280ABCC70)(v153, 64, v15, v16, a11);
}

uint64_t sub_277A1E854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v151[520] = *MEMORY[0x277D85DE8];
  if (v13 == 4)
  {
    v32 = v151;
    if (v14 == 4)
    {
      v69 = 65;
      do
      {
        v70 = 0;
        do
        {
          *&v32[v70] = vrhaddq_u8(*(v11 + v70 * 8), *(v11 + v70 * 8 + 1));
          v35 = v70 >= 6;
          v70 += 2;
        }

        while (!v35);
        v11 += v12;
        v32 += 8;
        --v69;
      }

      while (v69);
      v71 = v151;
      v72 = v149;
      v73 = 64;
      do
      {
        v74 = 0;
        do
        {
          *&v72[v74 * 8] = vrhaddq_u8(*&v71[v74], *&v71[v74 + 8]);
          v35 = v74 >= 6;
          v74 += 2;
        }

        while (!v35);
        v71 += 8;
        v72 += 64;
        --v73;
      }

      while (v73);
      v75 = v149;
      if (a10)
      {
        v76 = v17;
      }

      else
      {
        v76 = v149;
      }

      if (!a10)
      {
        v75 = v17;
      }

      v77 = v150;
      v78 = 64;
      v79.i64[0] = 0x4040404040404040;
      v79.i64[1] = 0x4040404040404040;
      do
      {
        v80 = 0;
        do
        {
          v81 = *(v18 + v80);
          v82 = vsubq_s8(v79, v81);
          *&v77[v80] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v82.i8, *&v75[v80]), *v81.i8, *&v76[v80]), 6uLL), vmlal_high_u8(vmull_high_u8(v82, *&v75[v80]), v81, *&v76[v80]), 6uLL);
          v80 += 16;
        }

        while (v80 != 64);
        v76 += 64;
        v75 += 64;
        v18 += a9;
        v77 += 64;
        --v78;
      }

      while (v78);
    }

    else
    {
      if (!v14)
      {
        v33 = 64;
        do
        {
          v34 = 0;
          do
          {
            *&v32[v34] = vrhaddq_u8(*(v11 + v34 * 8), *(v11 + v34 * 8 + 1));
            v35 = v34 >= 6;
            v34 += 2;
          }

          while (!v35);
          v11 += v12;
          v32 += 8;
          --v33;
        }

        while (v33);
        v36 = v151;
        if (a10)
        {
          v37 = v17;
        }

        else
        {
          v37 = v151;
        }

        if (!a10)
        {
          v36 = v17;
        }

        v38 = v149;
        v39 = 64;
        v40.i64[0] = 0x4040404040404040;
        v40.i64[1] = 0x4040404040404040;
        do
        {
          v41 = 0;
          do
          {
            v42 = *(v18 + v41 * 8);
            v43 = vsubq_s8(v40, v42);
            *&v38[v41 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v43.i8, v36[v41]), *v42.i8, v37[v41]), 6uLL), vmlal_high_u8(vmull_high_u8(v43, *&v36[v41]), v42, *&v37[v41]), 6uLL);
            v41 += 2;
          }

          while ((v41 * 8) != 64);
          v37 += 8;
          v36 += 8;
          v18 += a9;
          v38 += 64;
          --v39;
        }

        while (v39);
        return (off_280ABCC78)(v149, 64, v15, v16, a11);
      }

      v97 = 65;
      do
      {
        v98 = 0;
        do
        {
          v99 = *(v11 + v98 * 8 + 1);
          v100 = vrhaddq_u8(*(v11 + v98 * 8), v99);
          *&v32[v98] = v100;
          v35 = v98 >= 6;
          v98 += 2;
        }

        while (!v35);
        v11 += v12;
        v32 += 8;
        --v97;
      }

      while (v97);
      v100.i32[0] = 8 - v14;
      v99.i32[0] = v14;
      v101 = v151;
      v102 = v149;
      v103 = 64;
      v104 = vdupq_lane_s8(*v100.i8, 0);
      v105 = vdupq_lane_s8(*v99.i8, 0);
      do
      {
        v106 = 0;
        do
        {
          *&v102[v106 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v101[v106 + 8], *v105.i8), v101[v106], *v104.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v101[v106 + 8], v105), *&v101[v106], v104), 3uLL);
          v35 = v106 >= 6;
          v106 += 2;
        }

        while (!v35);
        v101 += 8;
        v102 += 64;
        --v103;
      }

      while (v103);
      v107 = v149;
      if (a10)
      {
        v108 = v17;
      }

      else
      {
        v108 = v149;
      }

      if (!a10)
      {
        v107 = v17;
      }

      v109 = v150;
      v110 = 64;
      v111.i64[0] = 0x4040404040404040;
      v111.i64[1] = 0x4040404040404040;
      do
      {
        v112 = 0;
        do
        {
          v113 = *(v18 + v112);
          v114 = vsubq_s8(v111, v113);
          *&v109[v112] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v114.i8, *&v107[v112]), *v113.i8, *&v108[v112]), 6uLL), vmlal_high_u8(vmull_high_u8(v114, *&v107[v112]), v113, *&v108[v112]), 6uLL);
          v112 += 16;
        }

        while (v112 != 64);
        v108 += 64;
        v107 += 64;
        v18 += a9;
        v109 += 64;
        --v110;
      }

      while (v110);
    }

    return (off_280ABCC78)(v150, 64, v15, v16, a11);
  }

  if (v13)
  {
    v19.i32[0] = 8 - v13;
    v20.i32[0] = v13;
    v44 = v151;
    if (v14 == 4)
    {
      v115 = 65;
      v116 = vdupq_lane_s8(v19, 0);
      v117 = vdupq_lane_s8(v20, 0);
      do
      {
        v118 = 0;
        do
        {
          *&v44[v118 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v118 + 1), *v117.i8), *(v11 + v118), *v116.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v118 + 1), v117), *(v11 + v118), v116), 3uLL);
          v35 = v118 >= 0x30;
          v118 += 16;
        }

        while (!v35);
        v11 += v12;
        v44 += 8;
        --v115;
      }

      while (v115);
      v119 = v151;
      v120 = v149;
      v121 = 64;
      do
      {
        v122 = 0;
        do
        {
          *&v120[v122 * 8] = vrhaddq_u8(*&v119[v122], *&v119[v122 + 8]);
          v35 = v122 >= 6;
          v122 += 2;
        }

        while (!v35);
        v119 += 8;
        v120 += 64;
        --v121;
      }

      while (v121);
      v123 = v149;
      if (a10)
      {
        v124 = v17;
      }

      else
      {
        v124 = v149;
      }

      if (!a10)
      {
        v123 = v17;
      }

      v125 = v150;
      v126 = 64;
      v127.i64[0] = 0x4040404040404040;
      v127.i64[1] = 0x4040404040404040;
      do
      {
        v128 = 0;
        do
        {
          v129 = *(v18 + v128);
          v130 = vsubq_s8(v127, v129);
          *&v125[v128] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v130.i8, *&v123[v128]), *v129.i8, *&v124[v128]), 6uLL), vmlal_high_u8(vmull_high_u8(v130, *&v123[v128]), v129, *&v124[v128]), 6uLL);
          v128 += 16;
        }

        while (v128 != 64);
        v124 += 64;
        v123 += 64;
        v18 += a9;
        v125 += 64;
        --v126;
      }

      while (v126);
    }

    else
    {
      if (!v14)
      {
        v45 = 64;
        v46 = vdupq_lane_s8(v19, 0);
        v47 = vdupq_lane_s8(v20, 0);
        do
        {
          v48 = 0;
          do
          {
            *&v44[v48 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v48 + 1), *v47.i8), *(v11 + v48), *v46.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v48 + 1), v47), *(v11 + v48), v46), 3uLL);
            v35 = v48 >= 0x30;
            v48 += 16;
          }

          while (!v35);
          v11 += v12;
          v44 += 8;
          --v45;
        }

        while (v45);
        v49 = v151;
        if (a10)
        {
          v50 = v17;
        }

        else
        {
          v50 = v151;
        }

        if (!a10)
        {
          v49 = v17;
        }

        v51 = v149;
        v52 = 64;
        v53.i64[0] = 0x4040404040404040;
        v53.i64[1] = 0x4040404040404040;
        do
        {
          v54 = 0;
          do
          {
            v55 = *(v18 + v54 * 8);
            v56 = vsubq_s8(v53, v55);
            *&v51[v54 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, v49[v54]), *v55.i8, v50[v54]), 6uLL), vmlal_high_u8(vmull_high_u8(v56, *&v49[v54]), v55, *&v50[v54]), 6uLL);
            v54 += 2;
          }

          while ((v54 * 8) != 64);
          v50 += 8;
          v49 += 8;
          v18 += a9;
          v51 += 64;
          --v52;
        }

        while (v52);
        return (off_280ABCC78)(v149, 64, v15, v16, a11);
      }

      v131 = 65;
      v132 = vdupq_lane_s8(v19, 0);
      v133 = vdupq_lane_s8(v20, 0);
      do
      {
        v134 = 0;
        do
        {
          *&v44[v134 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v134 + 1), *v133.i8), *(v11 + v134), *v132.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v134 + 1), v133), *(v11 + v134), v132), 3uLL);
          v35 = v134 >= 0x30;
          v134 += 16;
        }

        while (!v35);
        v11 += v12;
        v44 += 8;
        --v131;
      }

      while (v131);
      v132.i32[0] = 8 - v14;
      v133.i32[0] = v14;
      v135 = v151;
      v136 = v149;
      v137 = 64;
      v138 = vdupq_lane_s8(*v132.i8, 0);
      v139 = vdupq_lane_s8(*v133.i8, 0);
      do
      {
        v140 = 0;
        do
        {
          *&v136[v140 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v135[v140 + 8], *v139.i8), v135[v140], *v138.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v135[v140 + 8], v139), *&v135[v140], v138), 3uLL);
          v35 = v140 >= 6;
          v140 += 2;
        }

        while (!v35);
        v135 += 8;
        v136 += 64;
        --v137;
      }

      while (v137);
      v141 = v149;
      if (a10)
      {
        v142 = v17;
      }

      else
      {
        v142 = v149;
      }

      if (!a10)
      {
        v141 = v17;
      }

      v143 = v150;
      v144 = 64;
      v145.i64[0] = 0x4040404040404040;
      v145.i64[1] = 0x4040404040404040;
      do
      {
        v146 = 0;
        do
        {
          v147 = *(v18 + v146);
          v148 = vsubq_s8(v145, v147);
          *&v143[v146] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v148.i8, *&v141[v146]), *v147.i8, *&v142[v146]), 6uLL), vmlal_high_u8(vmull_high_u8(v148, *&v141[v146]), v147, *&v142[v146]), 6uLL);
          v146 += 16;
        }

        while (v146 != 64);
        v142 += 64;
        v141 += 64;
        v18 += a9;
        v143 += 64;
        --v144;
      }

      while (v144);
    }

    return (off_280ABCC78)(v150, 64, v15, v16, a11);
  }

  if (v14 == 4)
  {
    v57 = v151;
    v58 = 64;
    v59 = v11 + v12;
    do
    {
      v60 = 0;
      do
      {
        *&v57[v60] = vrhaddq_u8(*(v11 + v60 * 8), *(v59 + v60 * 8));
        v35 = v60 >= 6;
        v60 += 2;
      }

      while (!v35);
      v11 += v12;
      v57 += 8;
      v59 += v12;
      --v58;
    }

    while (v58);
    v61 = v151;
    if (a10)
    {
      v62 = v17;
    }

    else
    {
      v62 = v151;
    }

    if (!a10)
    {
      v61 = v17;
    }

    v63 = v149;
    v64 = 64;
    v65.i64[0] = 0x4040404040404040;
    v65.i64[1] = 0x4040404040404040;
    do
    {
      v66 = 0;
      do
      {
        v67 = *(v18 + v66 * 8);
        v68 = vsubq_s8(v65, v67);
        *&v63[v66 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v68.i8, v61[v66]), *v67.i8, v62[v66]), 6uLL), vmlal_high_u8(vmull_high_u8(v68, *&v61[v66]), v67, *&v62[v66]), 6uLL);
        v66 += 2;
      }

      while ((v66 * 8) != 64);
      v62 += 8;
      v61 += 8;
      v18 += a9;
      v63 += 64;
      --v64;
    }

    while (v64);
    return (off_280ABCC78)(v149, 64, v15, v16, a11);
  }

  if (v14)
  {
    v19.i32[0] = 8 - v14;
    v20.i32[0] = v14;
    v83 = v11 + v12;
    v84 = v151;
    v85 = 64;
    v86 = vdupq_lane_s8(v19, 0);
    v87 = vdupq_lane_s8(v20, 0);
    do
    {
      v88 = 0;
      do
      {
        *&v84[v88 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v83 + v88), *v87.i8), *(v11 + v88), *v86.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v83 + v88), v87), *(v11 + v88), v86), 3uLL);
        v35 = v88 >= 0x30;
        v88 += 16;
      }

      while (!v35);
      v11 += v12;
      v84 += 8;
      v83 += v12;
      --v85;
    }

    while (v85);
    v89 = v151;
    if (a10)
    {
      v90 = v17;
    }

    else
    {
      v90 = v151;
    }

    if (!a10)
    {
      v89 = v17;
    }

    v91 = v149;
    v92 = 64;
    v93.i64[0] = 0x4040404040404040;
    v93.i64[1] = 0x4040404040404040;
    do
    {
      v94 = 0;
      do
      {
        v95 = *(v18 + v94 * 8);
        v96 = vsubq_s8(v93, v95);
        *&v91[v94 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v96.i8, v89[v94]), *v95.i8, v90[v94]), 6uLL), vmlal_high_u8(vmull_high_u8(v96, *&v89[v94]), v95, *&v90[v94]), 6uLL);
        v94 += 2;
      }

      while ((v94 * 8) != 64);
      v90 += 8;
      v89 += 8;
      v18 += a9;
      v91 += 64;
      --v92;
    }

    while (v92);
    return (off_280ABCC78)(v149, 64, v15, v16, a11);
  }

  if (a10)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (a10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  v23 = 64;
  if (a10)
  {
    v24 = 64;
  }

  else
  {
    v24 = v12;
  }

  if (a10)
  {
    v25 = v12;
  }

  else
  {
    v25 = 64;
  }

  v26 = v151;
  v27.i64[0] = 0x4040404040404040;
  v27.i64[1] = 0x4040404040404040;
  do
  {
    v28 = 0;
    do
    {
      v29 = *(v18 + v28);
      v30 = vsubq_s8(v27, v29);
      *&v26[v28 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *(v22 + v28)), *v29.i8, *(v21 + v28)), 6uLL), vmlal_high_u8(vmull_high_u8(v30, *(v22 + v28)), v29, *(v21 + v28)), 6uLL);
      v28 += 16;
    }

    while (v28 != 64);
    v21 += v24;
    v22 += v25;
    v18 += a9;
    v26 += 8;
    --v23;
  }

  while (v23);
  return (off_280ABCC78)(v151, 64, v15, v16, a11);
}

uint64_t sub_277A1F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v153[1032] = *MEMORY[0x277D85DE8];
  if (v13 == 4)
  {
    v34 = v153;
    if (v14 == 4)
    {
      v71 = 129;
      do
      {
        v72 = 0;
        do
        {
          *&v34[v72] = vrhaddq_u8(*(v11 + v72 * 8), *(v11 + v72 * 8 + 1));
          v37 = v72 >= 6;
          v72 += 2;
        }

        while (!v37);
        v11 += v12;
        v34 += 8;
        --v71;
      }

      while (v71);
      v73 = v153;
      v74 = v151;
      v75 = 128;
      do
      {
        v76 = 0;
        do
        {
          *&v74[v76 * 8] = vrhaddq_u8(*&v73[v76], *&v73[v76 + 8]);
          v37 = v76 >= 6;
          v76 += 2;
        }

        while (!v37);
        v73 += 8;
        v74 += 64;
        --v75;
      }

      while (v75);
      v77 = v151;
      if (a10)
      {
        v78 = v17;
      }

      else
      {
        v78 = v151;
      }

      if (!a10)
      {
        v77 = v17;
      }

      v79 = v152;
      v80 = 128;
      v81.i64[0] = 0x4040404040404040;
      v81.i64[1] = 0x4040404040404040;
      do
      {
        v82 = 0;
        do
        {
          v83 = *(v18 + v82);
          v84 = vsubq_s8(v81, v83);
          *&v79[v82] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v84.i8, *&v77[v82]), *v83.i8, *&v78[v82]), 6uLL), vmlal_high_u8(vmull_high_u8(v84, *&v77[v82]), v83, *&v78[v82]), 6uLL);
          v82 += 16;
        }

        while (v82 != 64);
        v78 += 64;
        v77 += 64;
        v18 += a9;
        v79 += 64;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v14)
      {
        v35 = 128;
        do
        {
          v36 = 0;
          do
          {
            *&v34[v36] = vrhaddq_u8(*(v11 + v36 * 8), *(v11 + v36 * 8 + 1));
            v37 = v36 >= 6;
            v36 += 2;
          }

          while (!v37);
          v11 += v12;
          v34 += 8;
          --v35;
        }

        while (v35);
        v38 = v153;
        if (a10)
        {
          v39 = v17;
        }

        else
        {
          v39 = v153;
        }

        if (!a10)
        {
          v38 = v17;
        }

        v40 = v151;
        v41 = 128;
        v42.i64[0] = 0x4040404040404040;
        v42.i64[1] = 0x4040404040404040;
        do
        {
          v43 = 0;
          do
          {
            v44 = *(v18 + v43 * 8);
            v45 = vsubq_s8(v42, v44);
            *&v40[v43 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, v38[v43]), *v44.i8, v39[v43]), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *&v38[v43]), v44, *&v39[v43]), 6uLL);
            v43 += 2;
          }

          while ((v43 * 8) != 64);
          v39 += 8;
          v38 += 8;
          v18 += a9;
          v40 += 64;
          --v41;
        }

        while (v41);
        return (off_280ABCC60)(v151, 64, v15, v16, a11);
      }

      v99 = 129;
      do
      {
        v100 = 0;
        do
        {
          v101 = *(v11 + v100 * 8 + 1);
          v102 = vrhaddq_u8(*(v11 + v100 * 8), v101);
          *&v34[v100] = v102;
          v37 = v100 >= 6;
          v100 += 2;
        }

        while (!v37);
        v11 += v12;
        v34 += 8;
        --v99;
      }

      while (v99);
      v102.i32[0] = 8 - v14;
      v101.i32[0] = v14;
      v103 = v153;
      v104 = v151;
      v105 = 128;
      v106 = vdupq_lane_s8(*v102.i8, 0);
      v107 = vdupq_lane_s8(*v101.i8, 0);
      do
      {
        v108 = 0;
        do
        {
          *&v104[v108 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v103[v108 + 8], *v107.i8), v103[v108], *v106.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v103[v108 + 8], v107), *&v103[v108], v106), 3uLL);
          v37 = v108 >= 6;
          v108 += 2;
        }

        while (!v37);
        v103 += 8;
        v104 += 64;
        --v105;
      }

      while (v105);
      v109 = v151;
      if (a10)
      {
        v110 = v17;
      }

      else
      {
        v110 = v151;
      }

      if (!a10)
      {
        v109 = v17;
      }

      v111 = v152;
      v112 = 128;
      v113.i64[0] = 0x4040404040404040;
      v113.i64[1] = 0x4040404040404040;
      do
      {
        v114 = 0;
        do
        {
          v115 = *(v18 + v114);
          v116 = vsubq_s8(v113, v115);
          *&v111[v114] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v116.i8, *&v109[v114]), *v115.i8, *&v110[v114]), 6uLL), vmlal_high_u8(vmull_high_u8(v116, *&v109[v114]), v115, *&v110[v114]), 6uLL);
          v114 += 16;
        }

        while (v114 != 64);
        v110 += 64;
        v109 += 64;
        v18 += a9;
        v111 += 64;
        --v112;
      }

      while (v112);
    }

    return (off_280ABCC60)(v152, 64, v15, v16, a11);
  }

  if (v13)
  {
    v19.i32[0] = 8 - v13;
    v20.i32[0] = v13;
    v46 = v153;
    if (v14 == 4)
    {
      v117 = 129;
      v118 = vdupq_lane_s8(v19, 0);
      v119 = vdupq_lane_s8(v20, 0);
      do
      {
        v120 = 0;
        do
        {
          *&v46[v120 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v120 + 1), *v119.i8), *(v11 + v120), *v118.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v120 + 1), v119), *(v11 + v120), v118), 3uLL);
          v37 = v120 >= 0x30;
          v120 += 16;
        }

        while (!v37);
        v11 += v12;
        v46 += 8;
        --v117;
      }

      while (v117);
      v121 = v153;
      v122 = v151;
      v123 = 128;
      do
      {
        v124 = 0;
        do
        {
          *&v122[v124 * 8] = vrhaddq_u8(*&v121[v124], *&v121[v124 + 8]);
          v37 = v124 >= 6;
          v124 += 2;
        }

        while (!v37);
        v121 += 8;
        v122 += 64;
        --v123;
      }

      while (v123);
      v125 = v151;
      if (a10)
      {
        v126 = v17;
      }

      else
      {
        v126 = v151;
      }

      if (!a10)
      {
        v125 = v17;
      }

      v127 = v152;
      v128 = 128;
      v129.i64[0] = 0x4040404040404040;
      v129.i64[1] = 0x4040404040404040;
      do
      {
        v130 = 0;
        do
        {
          v131 = *(v18 + v130);
          v132 = vsubq_s8(v129, v131);
          *&v127[v130] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v132.i8, *&v125[v130]), *v131.i8, *&v126[v130]), 6uLL), vmlal_high_u8(vmull_high_u8(v132, *&v125[v130]), v131, *&v126[v130]), 6uLL);
          v130 += 16;
        }

        while (v130 != 64);
        v126 += 64;
        v125 += 64;
        v18 += a9;
        v127 += 64;
        --v128;
      }

      while (v128);
    }

    else
    {
      if (!v14)
      {
        v47 = 128;
        v48 = vdupq_lane_s8(v19, 0);
        v49 = vdupq_lane_s8(v20, 0);
        do
        {
          v50 = 0;
          do
          {
            *&v46[v50 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v50 + 1), *v49.i8), *(v11 + v50), *v48.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v50 + 1), v49), *(v11 + v50), v48), 3uLL);
            v37 = v50 >= 0x30;
            v50 += 16;
          }

          while (!v37);
          v11 += v12;
          v46 += 8;
          --v47;
        }

        while (v47);
        v51 = v153;
        if (a10)
        {
          v52 = v17;
        }

        else
        {
          v52 = v153;
        }

        if (!a10)
        {
          v51 = v17;
        }

        v53 = v151;
        v54 = 128;
        v55.i64[0] = 0x4040404040404040;
        v55.i64[1] = 0x4040404040404040;
        do
        {
          v56 = 0;
          do
          {
            v57 = *(v18 + v56 * 8);
            v58 = vsubq_s8(v55, v57);
            *&v53[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v58.i8, v51[v56]), *v57.i8, v52[v56]), 6uLL), vmlal_high_u8(vmull_high_u8(v58, *&v51[v56]), v57, *&v52[v56]), 6uLL);
            v56 += 2;
          }

          while ((v56 * 8) != 64);
          v52 += 8;
          v51 += 8;
          v18 += a9;
          v53 += 64;
          --v54;
        }

        while (v54);
        return (off_280ABCC60)(v151, 64, v15, v16, a11);
      }

      v133 = 129;
      v134 = vdupq_lane_s8(v19, 0);
      v135 = vdupq_lane_s8(v20, 0);
      do
      {
        v136 = 0;
        do
        {
          *&v46[v136 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v136 + 1), *v135.i8), *(v11 + v136), *v134.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v136 + 1), v135), *(v11 + v136), v134), 3uLL);
          v37 = v136 >= 0x30;
          v136 += 16;
        }

        while (!v37);
        v11 += v12;
        v46 += 8;
        --v133;
      }

      while (v133);
      v134.i32[0] = 8 - v14;
      v135.i32[0] = v14;
      v137 = v153;
      v138 = v151;
      v139 = 128;
      v140 = vdupq_lane_s8(*v134.i8, 0);
      v141 = vdupq_lane_s8(*v135.i8, 0);
      do
      {
        v142 = 0;
        do
        {
          *&v138[v142 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v137[v142 + 8], *v141.i8), v137[v142], *v140.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v137[v142 + 8], v141), *&v137[v142], v140), 3uLL);
          v37 = v142 >= 6;
          v142 += 2;
        }

        while (!v37);
        v137 += 8;
        v138 += 64;
        --v139;
      }

      while (v139);
      v143 = v151;
      if (a10)
      {
        v144 = v17;
      }

      else
      {
        v144 = v151;
      }

      if (!a10)
      {
        v143 = v17;
      }

      v145 = v152;
      v146 = 128;
      v147.i64[0] = 0x4040404040404040;
      v147.i64[1] = 0x4040404040404040;
      do
      {
        v148 = 0;
        do
        {
          v149 = *(v18 + v148);
          v150 = vsubq_s8(v147, v149);
          *&v145[v148] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v150.i8, *&v143[v148]), *v149.i8, *&v144[v148]), 6uLL), vmlal_high_u8(vmull_high_u8(v150, *&v143[v148]), v149, *&v144[v148]), 6uLL);
          v148 += 16;
        }

        while (v148 != 64);
        v144 += 64;
        v143 += 64;
        v18 += a9;
        v145 += 64;
        --v146;
      }

      while (v146);
    }

    return (off_280ABCC60)(v152, 64, v15, v16, a11);
  }

  if (v14 == 4)
  {
    v59 = v153;
    v60 = 128;
    v61 = v11 + v12;
    do
    {
      v62 = 0;
      do
      {
        *&v59[v62] = vrhaddq_u8(*(v11 + v62 * 8), *(v61 + v62 * 8));
        v37 = v62 >= 6;
        v62 += 2;
      }

      while (!v37);
      v11 += v12;
      v59 += 8;
      v61 += v12;
      --v60;
    }

    while (v60);
    v63 = v153;
    if (a10)
    {
      v64 = v17;
    }

    else
    {
      v64 = v153;
    }

    if (!a10)
    {
      v63 = v17;
    }

    v65 = v151;
    v66 = 128;
    v67.i64[0] = 0x4040404040404040;
    v67.i64[1] = 0x4040404040404040;
    do
    {
      v68 = 0;
      do
      {
        v69 = *(v18 + v68 * 8);
        v70 = vsubq_s8(v67, v69);
        *&v65[v68 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v70.i8, v63[v68]), *v69.i8, v64[v68]), 6uLL), vmlal_high_u8(vmull_high_u8(v70, *&v63[v68]), v69, *&v64[v68]), 6uLL);
        v68 += 2;
      }

      while ((v68 * 8) != 64);
      v64 += 8;
      v63 += 8;
      v18 += a9;
      v65 += 64;
      --v66;
    }

    while (v66);
    return (off_280ABCC60)(v151, 64, v15, v16, a11);
  }

  if (v14)
  {
    v19.i32[0] = 8 - v14;
    v20.i32[0] = v14;
    v85 = v11 + v12;
    v86 = v153;
    v87 = 128;
    v88 = vdupq_lane_s8(v19, 0);
    v89 = vdupq_lane_s8(v20, 0);
    do
    {
      v90 = 0;
      do
      {
        *&v86[v90 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v85 + v90), *v89.i8), *(v11 + v90), *v88.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v85 + v90), v89), *(v11 + v90), v88), 3uLL);
        v37 = v90 >= 0x30;
        v90 += 16;
      }

      while (!v37);
      v11 += v12;
      v86 += 8;
      v85 += v12;
      --v87;
    }

    while (v87);
    v91 = v153;
    if (a10)
    {
      v92 = v17;
    }

    else
    {
      v92 = v153;
    }

    if (!a10)
    {
      v91 = v17;
    }

    v93 = v151;
    v94 = 128;
    v95.i64[0] = 0x4040404040404040;
    v95.i64[1] = 0x4040404040404040;
    do
    {
      v96 = 0;
      do
      {
        v97 = *(v18 + v96 * 8);
        v98 = vsubq_s8(v95, v97);
        *&v93[v96 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v98.i8, v91[v96]), *v97.i8, v92[v96]), 6uLL), vmlal_high_u8(vmull_high_u8(v98, *&v91[v96]), v97, *&v92[v96]), 6uLL);
        v96 += 2;
      }

      while ((v96 * 8) != 64);
      v92 += 8;
      v91 += 8;
      v18 += a9;
      v93 += 64;
      --v94;
    }

    while (v94);
    return (off_280ABCC60)(v151, 64, v15, v16, a11);
  }

  if (a10)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (a10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  if (a10)
  {
    v23 = 64;
  }

  else
  {
    v23 = v12;
  }

  if (a10)
  {
    v24 = v12;
  }

  else
  {
    v24 = 64;
  }

  v25 = v23;
  v26 = v24;
  v27 = v153;
  v28 = 128;
  v29.i64[0] = 0x4040404040404040;
  v29.i64[1] = 0x4040404040404040;
  do
  {
    v30 = 0;
    do
    {
      v31 = *(v18 + v30);
      v32 = vsubq_s8(v29, v31);
      *&v27[v30 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(v22 + v30)), *v31.i8, *(v21 + v30)), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(v22 + v30)), v31, *(v21 + v30)), 6uLL);
      v30 += 16;
    }

    while (v30 != 64);
    v21 += v25;
    v22 += v26;
    v18 += a9;
    v27 += 8;
    --v28;
  }

  while (v28);
  return (off_280ABCC60)(v153, 64, v15, v16, a11);
}

uint64_t sub_277A1FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v153[1040] = *MEMORY[0x277D85DE8];
  if (v13 == 4)
  {
    v34 = v153;
    if (v14 == 4)
    {
      v71 = 65;
      do
      {
        v72 = 0;
        do
        {
          *&v34[v72] = vrhaddq_u8(*(v11 + v72 * 8), *(v11 + v72 * 8 + 1));
          v37 = v72 >= 14;
          v72 += 2;
        }

        while (!v37);
        v11 += v12;
        v34 += 16;
        --v71;
      }

      while (v71);
      v73 = v153;
      v74 = v151;
      v75 = 64;
      do
      {
        v76 = 0;
        do
        {
          *&v74[v76 * 8] = vrhaddq_u8(*&v73[v76], *&v73[v76 + 16]);
          v37 = v76 >= 14;
          v76 += 2;
        }

        while (!v37);
        v73 += 16;
        v74 += 128;
        --v75;
      }

      while (v75);
      v77 = v151;
      if (a10)
      {
        v78 = v17;
      }

      else
      {
        v78 = v151;
      }

      if (!a10)
      {
        v77 = v17;
      }

      v79 = v152;
      v80 = 64;
      v81.i64[0] = 0x4040404040404040;
      v81.i64[1] = 0x4040404040404040;
      do
      {
        v82 = 0;
        do
        {
          v83 = *(v18 + v82);
          v84 = vsubq_s8(v81, v83);
          *&v79[v82] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v84.i8, *&v77[v82]), *v83.i8, *&v78[v82]), 6uLL), vmlal_high_u8(vmull_high_u8(v84, *&v77[v82]), v83, *&v78[v82]), 6uLL);
          v82 += 16;
        }

        while (v82 != 128);
        v78 += 128;
        v77 += 128;
        v18 += a9;
        v79 += 128;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v14)
      {
        v35 = 64;
        do
        {
          v36 = 0;
          do
          {
            *&v34[v36] = vrhaddq_u8(*(v11 + v36 * 8), *(v11 + v36 * 8 + 1));
            v37 = v36 >= 14;
            v36 += 2;
          }

          while (!v37);
          v11 += v12;
          v34 += 16;
          --v35;
        }

        while (v35);
        v38 = v153;
        if (a10)
        {
          v39 = v17;
        }

        else
        {
          v39 = v153;
        }

        if (!a10)
        {
          v38 = v17;
        }

        v40 = v151;
        v41 = 64;
        v42.i64[0] = 0x4040404040404040;
        v42.i64[1] = 0x4040404040404040;
        do
        {
          v43 = 0;
          do
          {
            v44 = *(v18 + v43 * 8);
            v45 = vsubq_s8(v42, v44);
            *&v40[v43 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v45.i8, v38[v43]), *v44.i8, v39[v43]), 6uLL), vmlal_high_u8(vmull_high_u8(v45, *&v38[v43]), v44, *&v39[v43]), 6uLL);
            v43 += 2;
          }

          while ((v43 * 8) != 128);
          v39 += 16;
          v38 += 16;
          v18 += a9;
          v40 += 128;
          --v41;
        }

        while (v41);
        return (off_280ABCBF8)(v151, 128, v15, v16, a11);
      }

      v99 = 65;
      do
      {
        v100 = 0;
        do
        {
          v101 = *(v11 + v100 * 8 + 1);
          v102 = vrhaddq_u8(*(v11 + v100 * 8), v101);
          *&v34[v100] = v102;
          v37 = v100 >= 14;
          v100 += 2;
        }

        while (!v37);
        v11 += v12;
        v34 += 16;
        --v99;
      }

      while (v99);
      v102.i32[0] = 8 - v14;
      v101.i32[0] = v14;
      v103 = v153;
      v104 = v151;
      v105 = 64;
      v106 = vdupq_lane_s8(*v102.i8, 0);
      v107 = vdupq_lane_s8(*v101.i8, 0);
      do
      {
        v108 = 0;
        do
        {
          *&v104[v108 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v103[v108 + 16], *v107.i8), v103[v108], *v106.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v103[v108 + 16], v107), *&v103[v108], v106), 3uLL);
          v37 = v108 >= 14;
          v108 += 2;
        }

        while (!v37);
        v103 += 16;
        v104 += 128;
        --v105;
      }

      while (v105);
      v109 = v151;
      if (a10)
      {
        v110 = v17;
      }

      else
      {
        v110 = v151;
      }

      if (!a10)
      {
        v109 = v17;
      }

      v111 = v152;
      v112 = 64;
      v113.i64[0] = 0x4040404040404040;
      v113.i64[1] = 0x4040404040404040;
      do
      {
        v114 = 0;
        do
        {
          v115 = *(v18 + v114);
          v116 = vsubq_s8(v113, v115);
          *&v111[v114] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v116.i8, *&v109[v114]), *v115.i8, *&v110[v114]), 6uLL), vmlal_high_u8(vmull_high_u8(v116, *&v109[v114]), v115, *&v110[v114]), 6uLL);
          v114 += 16;
        }

        while (v114 != 128);
        v110 += 128;
        v109 += 128;
        v18 += a9;
        v111 += 128;
        --v112;
      }

      while (v112);
    }

    return (off_280ABCBF8)(v152, 128, v15, v16, a11);
  }

  if (v13)
  {
    v19.i32[0] = 8 - v13;
    v20.i32[0] = v13;
    v46 = v153;
    if (v14 == 4)
    {
      v117 = 65;
      v118 = vdupq_lane_s8(v19, 0);
      v119 = vdupq_lane_s8(v20, 0);
      do
      {
        v120 = 0;
        do
        {
          *&v46[v120 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v120 + 1), *v119.i8), *(v11 + v120), *v118.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v120 + 1), v119), *(v11 + v120), v118), 3uLL);
          v37 = v120 >= 0x70;
          v120 += 16;
        }

        while (!v37);
        v11 += v12;
        v46 += 16;
        --v117;
      }

      while (v117);
      v121 = v153;
      v122 = v151;
      v123 = 64;
      do
      {
        v124 = 0;
        do
        {
          *&v122[v124 * 8] = vrhaddq_u8(*&v121[v124], *&v121[v124 + 16]);
          v37 = v124 >= 14;
          v124 += 2;
        }

        while (!v37);
        v121 += 16;
        v122 += 128;
        --v123;
      }

      while (v123);
      v125 = v151;
      if (a10)
      {
        v126 = v17;
      }

      else
      {
        v126 = v151;
      }

      if (!a10)
      {
        v125 = v17;
      }

      v127 = v152;
      v128 = 64;
      v129.i64[0] = 0x4040404040404040;
      v129.i64[1] = 0x4040404040404040;
      do
      {
        v130 = 0;
        do
        {
          v131 = *(v18 + v130);
          v132 = vsubq_s8(v129, v131);
          *&v127[v130] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v132.i8, *&v125[v130]), *v131.i8, *&v126[v130]), 6uLL), vmlal_high_u8(vmull_high_u8(v132, *&v125[v130]), v131, *&v126[v130]), 6uLL);
          v130 += 16;
        }

        while (v130 != 128);
        v126 += 128;
        v125 += 128;
        v18 += a9;
        v127 += 128;
        --v128;
      }

      while (v128);
    }

    else
    {
      if (!v14)
      {
        v47 = 64;
        v48 = vdupq_lane_s8(v19, 0);
        v49 = vdupq_lane_s8(v20, 0);
        do
        {
          v50 = 0;
          do
          {
            *&v46[v50 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v50 + 1), *v49.i8), *(v11 + v50), *v48.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v50 + 1), v49), *(v11 + v50), v48), 3uLL);
            v37 = v50 >= 0x70;
            v50 += 16;
          }

          while (!v37);
          v11 += v12;
          v46 += 16;
          --v47;
        }

        while (v47);
        v51 = v153;
        if (a10)
        {
          v52 = v17;
        }

        else
        {
          v52 = v153;
        }

        if (!a10)
        {
          v51 = v17;
        }

        v53 = v151;
        v54 = 64;
        v55.i64[0] = 0x4040404040404040;
        v55.i64[1] = 0x4040404040404040;
        do
        {
          v56 = 0;
          do
          {
            v57 = *(v18 + v56 * 8);
            v58 = vsubq_s8(v55, v57);
            *&v53[v56 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v58.i8, v51[v56]), *v57.i8, v52[v56]), 6uLL), vmlal_high_u8(vmull_high_u8(v58, *&v51[v56]), v57, *&v52[v56]), 6uLL);
            v56 += 2;
          }

          while ((v56 * 8) != 128);
          v52 += 16;
          v51 += 16;
          v18 += a9;
          v53 += 128;
          --v54;
        }

        while (v54);
        return (off_280ABCBF8)(v151, 128, v15, v16, a11);
      }

      v133 = 65;
      v134 = vdupq_lane_s8(v19, 0);
      v135 = vdupq_lane_s8(v20, 0);
      do
      {
        v136 = 0;
        do
        {
          *&v46[v136 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v136 + 1), *v135.i8), *(v11 + v136), *v134.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v136 + 1), v135), *(v11 + v136), v134), 3uLL);
          v37 = v136 >= 0x70;
          v136 += 16;
        }

        while (!v37);
        v11 += v12;
        v46 += 16;
        --v133;
      }

      while (v133);
      v134.i32[0] = 8 - v14;
      v135.i32[0] = v14;
      v137 = v153;
      v138 = v151;
      v139 = 64;
      v140 = vdupq_lane_s8(*v134.i8, 0);
      v141 = vdupq_lane_s8(*v135.i8, 0);
      do
      {
        v142 = 0;
        do
        {
          *&v138[v142 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v137[v142 + 16], *v141.i8), v137[v142], *v140.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v137[v142 + 16], v141), *&v137[v142], v140), 3uLL);
          v37 = v142 >= 14;
          v142 += 2;
        }

        while (!v37);
        v137 += 16;
        v138 += 128;
        --v139;
      }

      while (v139);
      v143 = v151;
      if (a10)
      {
        v144 = v17;
      }

      else
      {
        v144 = v151;
      }

      if (!a10)
      {
        v143 = v17;
      }

      v145 = v152;
      v146 = 64;
      v147.i64[0] = 0x4040404040404040;
      v147.i64[1] = 0x4040404040404040;
      do
      {
        v148 = 0;
        do
        {
          v149 = *(v18 + v148);
          v150 = vsubq_s8(v147, v149);
          *&v145[v148] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v150.i8, *&v143[v148]), *v149.i8, *&v144[v148]), 6uLL), vmlal_high_u8(vmull_high_u8(v150, *&v143[v148]), v149, *&v144[v148]), 6uLL);
          v148 += 16;
        }

        while (v148 != 128);
        v144 += 128;
        v143 += 128;
        v18 += a9;
        v145 += 128;
        --v146;
      }

      while (v146);
    }

    return (off_280ABCBF8)(v152, 128, v15, v16, a11);
  }

  if (v14 == 4)
  {
    v59 = v153;
    v60 = 64;
    v61 = v11 + v12;
    do
    {
      v62 = 0;
      do
      {
        *&v59[v62] = vrhaddq_u8(*(v11 + v62 * 8), *(v61 + v62 * 8));
        v37 = v62 >= 14;
        v62 += 2;
      }

      while (!v37);
      v11 += v12;
      v59 += 16;
      v61 += v12;
      --v60;
    }

    while (v60);
    v63 = v153;
    if (a10)
    {
      v64 = v17;
    }

    else
    {
      v64 = v153;
    }

    if (!a10)
    {
      v63 = v17;
    }

    v65 = v151;
    v66 = 64;
    v67.i64[0] = 0x4040404040404040;
    v67.i64[1] = 0x4040404040404040;
    do
    {
      v68 = 0;
      do
      {
        v69 = *(v18 + v68 * 8);
        v70 = vsubq_s8(v67, v69);
        *&v65[v68 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v70.i8, v63[v68]), *v69.i8, v64[v68]), 6uLL), vmlal_high_u8(vmull_high_u8(v70, *&v63[v68]), v69, *&v64[v68]), 6uLL);
        v68 += 2;
      }

      while ((v68 * 8) != 128);
      v64 += 16;
      v63 += 16;
      v18 += a9;
      v65 += 128;
      --v66;
    }

    while (v66);
    return (off_280ABCBF8)(v151, 128, v15, v16, a11);
  }

  if (v14)
  {
    v19.i32[0] = 8 - v14;
    v20.i32[0] = v14;
    v85 = v11 + v12;
    v86 = v153;
    v87 = 64;
    v88 = vdupq_lane_s8(v19, 0);
    v89 = vdupq_lane_s8(v20, 0);
    do
    {
      v90 = 0;
      do
      {
        *&v86[v90 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v85 + v90), *v89.i8), *(v11 + v90), *v88.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v85 + v90), v89), *(v11 + v90), v88), 3uLL);
        v37 = v90 >= 0x70;
        v90 += 16;
      }

      while (!v37);
      v11 += v12;
      v86 += 16;
      v85 += v12;
      --v87;
    }

    while (v87);
    v91 = v153;
    if (a10)
    {
      v92 = v17;
    }

    else
    {
      v92 = v153;
    }

    if (!a10)
    {
      v91 = v17;
    }

    v93 = v151;
    v94 = 64;
    v95.i64[0] = 0x4040404040404040;
    v95.i64[1] = 0x4040404040404040;
    do
    {
      v96 = 0;
      do
      {
        v97 = *(v18 + v96 * 8);
        v98 = vsubq_s8(v95, v97);
        *&v93[v96 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v98.i8, v91[v96]), *v97.i8, v92[v96]), 6uLL), vmlal_high_u8(vmull_high_u8(v98, *&v91[v96]), v97, *&v92[v96]), 6uLL);
        v96 += 2;
      }

      while ((v96 * 8) != 128);
      v92 += 16;
      v91 += 16;
      v18 += a9;
      v93 += 128;
      --v94;
    }

    while (v94);
    return (off_280ABCBF8)(v151, 128, v15, v16, a11);
  }

  if (a10)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (a10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  if (a10)
  {
    v23 = 128;
  }

  else
  {
    v23 = v12;
  }

  if (a10)
  {
    v24 = v12;
  }

  else
  {
    v24 = 128;
  }

  v25 = v23;
  v26 = v24;
  v27 = v153;
  v28 = 64;
  v29.i64[0] = 0x4040404040404040;
  v29.i64[1] = 0x4040404040404040;
  do
  {
    v30 = 0;
    do
    {
      v31 = *(v18 + v30);
      v32 = vsubq_s8(v29, v31);
      *&v27[v30 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, *(v22 + v30)), *v31.i8, *(v21 + v30)), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *(v22 + v30)), v31, *(v21 + v30)), 6uLL);
      v30 += 16;
    }

    while (v30 != 128);
    v21 += v25;
    v22 += v26;
    v18 += a9;
    v27 += 16;
    --v28;
  }

  while (v28);
  return (off_280ABCBF8)(v153, 128, v15, v16, a11);
}

uint64_t sub_277A20488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v151[2064] = *MEMORY[0x277D85DE8];
  if (v13 == 4)
  {
    v32 = v151;
    if (v14 == 4)
    {
      v69 = 129;
      do
      {
        v70 = 0;
        do
        {
          *&v32[v70] = vrhaddq_u8(*(v11 + v70 * 8), *(v11 + v70 * 8 + 1));
          v35 = v70 >= 14;
          v70 += 2;
        }

        while (!v35);
        v11 += v12;
        v32 += 16;
        --v69;
      }

      while (v69);
      v71 = v151;
      v72 = v149;
      v73 = 128;
      do
      {
        v74 = 0;
        do
        {
          *&v72[v74 * 8] = vrhaddq_u8(*&v71[v74], *&v71[v74 + 16]);
          v35 = v74 >= 14;
          v74 += 2;
        }

        while (!v35);
        v71 += 16;
        v72 += 128;
        --v73;
      }

      while (v73);
      v75 = v149;
      if (a10)
      {
        v76 = v17;
      }

      else
      {
        v76 = v149;
      }

      if (!a10)
      {
        v75 = v17;
      }

      v77 = v150;
      v78 = 128;
      v79.i64[0] = 0x4040404040404040;
      v79.i64[1] = 0x4040404040404040;
      do
      {
        v80 = 0;
        do
        {
          v81 = *(v18 + v80);
          v82 = vsubq_s8(v79, v81);
          *&v77[v80] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v82.i8, *&v75[v80]), *v81.i8, *&v76[v80]), 6uLL), vmlal_high_u8(vmull_high_u8(v82, *&v75[v80]), v81, *&v76[v80]), 6uLL);
          v80 += 16;
        }

        while (v80 != 128);
        v76 += 128;
        v75 += 128;
        v18 += a9;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

    else
    {
      if (!v14)
      {
        v33 = 128;
        do
        {
          v34 = 0;
          do
          {
            *&v32[v34] = vrhaddq_u8(*(v11 + v34 * 8), *(v11 + v34 * 8 + 1));
            v35 = v34 >= 14;
            v34 += 2;
          }

          while (!v35);
          v11 += v12;
          v32 += 16;
          --v33;
        }

        while (v33);
        v36 = v151;
        if (a10)
        {
          v37 = v17;
        }

        else
        {
          v37 = v151;
        }

        if (!a10)
        {
          v36 = v17;
        }

        v38 = v149;
        v39 = 128;
        v40.i64[0] = 0x4040404040404040;
        v40.i64[1] = 0x4040404040404040;
        do
        {
          v41 = 0;
          do
          {
            v42 = *(v18 + v41 * 8);
            v43 = vsubq_s8(v40, v42);
            *&v38[v41 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v43.i8, v36[v41]), *v42.i8, v37[v41]), 6uLL), vmlal_high_u8(vmull_high_u8(v43, *&v36[v41]), v42, *&v37[v41]), 6uLL);
            v41 += 2;
          }

          while ((v41 * 8) != 128);
          v37 += 16;
          v36 += 16;
          v18 += a9;
          v38 += 128;
          --v39;
        }

        while (v39);
        return (off_280ABCBF0)(v149, 128, v15, v16, a11);
      }

      v97 = 129;
      do
      {
        v98 = 0;
        do
        {
          v99 = *(v11 + v98 * 8 + 1);
          v100 = vrhaddq_u8(*(v11 + v98 * 8), v99);
          *&v32[v98] = v100;
          v35 = v98 >= 14;
          v98 += 2;
        }

        while (!v35);
        v11 += v12;
        v32 += 16;
        --v97;
      }

      while (v97);
      v100.i32[0] = 8 - v14;
      v99.i32[0] = v14;
      v101 = v151;
      v102 = v149;
      v103 = 128;
      v104 = vdupq_lane_s8(*v100.i8, 0);
      v105 = vdupq_lane_s8(*v99.i8, 0);
      do
      {
        v106 = 0;
        do
        {
          *&v102[v106 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v101[v106 + 16], *v105.i8), v101[v106], *v104.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v101[v106 + 16], v105), *&v101[v106], v104), 3uLL);
          v35 = v106 >= 14;
          v106 += 2;
        }

        while (!v35);
        v101 += 16;
        v102 += 128;
        --v103;
      }

      while (v103);
      v107 = v149;
      if (a10)
      {
        v108 = v17;
      }

      else
      {
        v108 = v149;
      }

      if (!a10)
      {
        v107 = v17;
      }

      v109 = v150;
      v110 = 128;
      v111.i64[0] = 0x4040404040404040;
      v111.i64[1] = 0x4040404040404040;
      do
      {
        v112 = 0;
        do
        {
          v113 = *(v18 + v112);
          v114 = vsubq_s8(v111, v113);
          *&v109[v112] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v114.i8, *&v107[v112]), *v113.i8, *&v108[v112]), 6uLL), vmlal_high_u8(vmull_high_u8(v114, *&v107[v112]), v113, *&v108[v112]), 6uLL);
          v112 += 16;
        }

        while (v112 != 128);
        v108 += 128;
        v107 += 128;
        v18 += a9;
        v109 += 128;
        --v110;
      }

      while (v110);
    }

    return (off_280ABCBF0)(v150, 128, v15, v16, a11);
  }

  if (v13)
  {
    v19.i32[0] = 8 - v13;
    v20.i32[0] = v13;
    v44 = v151;
    if (v14 == 4)
    {
      v115 = 129;
      v116 = vdupq_lane_s8(v19, 0);
      v117 = vdupq_lane_s8(v20, 0);
      do
      {
        v118 = 0;
        do
        {
          *&v44[v118 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v118 + 1), *v117.i8), *(v11 + v118), *v116.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v118 + 1), v117), *(v11 + v118), v116), 3uLL);
          v35 = v118 >= 0x70;
          v118 += 16;
        }

        while (!v35);
        v11 += v12;
        v44 += 16;
        --v115;
      }

      while (v115);
      v119 = v151;
      v120 = v149;
      v121 = 128;
      do
      {
        v122 = 0;
        do
        {
          *&v120[v122 * 8] = vrhaddq_u8(*&v119[v122], *&v119[v122 + 16]);
          v35 = v122 >= 14;
          v122 += 2;
        }

        while (!v35);
        v119 += 16;
        v120 += 128;
        --v121;
      }

      while (v121);
      v123 = v149;
      if (a10)
      {
        v124 = v17;
      }

      else
      {
        v124 = v149;
      }

      if (!a10)
      {
        v123 = v17;
      }

      v125 = v150;
      v126 = 128;
      v127.i64[0] = 0x4040404040404040;
      v127.i64[1] = 0x4040404040404040;
      do
      {
        v128 = 0;
        do
        {
          v129 = *(v18 + v128);
          v130 = vsubq_s8(v127, v129);
          *&v125[v128] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v130.i8, *&v123[v128]), *v129.i8, *&v124[v128]), 6uLL), vmlal_high_u8(vmull_high_u8(v130, *&v123[v128]), v129, *&v124[v128]), 6uLL);
          v128 += 16;
        }

        while (v128 != 128);
        v124 += 128;
        v123 += 128;
        v18 += a9;
        v125 += 128;
        --v126;
      }

      while (v126);
    }

    else
    {
      if (!v14)
      {
        v45 = 128;
        v46 = vdupq_lane_s8(v19, 0);
        v47 = vdupq_lane_s8(v20, 0);
        do
        {
          v48 = 0;
          do
          {
            *&v44[v48 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v48 + 1), *v47.i8), *(v11 + v48), *v46.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v48 + 1), v47), *(v11 + v48), v46), 3uLL);
            v35 = v48 >= 0x70;
            v48 += 16;
          }

          while (!v35);
          v11 += v12;
          v44 += 16;
          --v45;
        }

        while (v45);
        v49 = v151;
        if (a10)
        {
          v50 = v17;
        }

        else
        {
          v50 = v151;
        }

        if (!a10)
        {
          v49 = v17;
        }

        v51 = v149;
        v52 = 128;
        v53.i64[0] = 0x4040404040404040;
        v53.i64[1] = 0x4040404040404040;
        do
        {
          v54 = 0;
          do
          {
            v55 = *(v18 + v54 * 8);
            v56 = vsubq_s8(v53, v55);
            *&v51[v54 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, v49[v54]), *v55.i8, v50[v54]), 6uLL), vmlal_high_u8(vmull_high_u8(v56, *&v49[v54]), v55, *&v50[v54]), 6uLL);
            v54 += 2;
          }

          while ((v54 * 8) != 128);
          v50 += 16;
          v49 += 16;
          v18 += a9;
          v51 += 128;
          --v52;
        }

        while (v52);
        return (off_280ABCBF0)(v149, 128, v15, v16, a11);
      }

      v131 = 129;
      v132 = vdupq_lane_s8(v19, 0);
      v133 = vdupq_lane_s8(v20, 0);
      do
      {
        v134 = 0;
        do
        {
          *&v44[v134 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v11 + v134 + 1), *v133.i8), *(v11 + v134), *v132.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v11 + v134 + 1), v133), *(v11 + v134), v132), 3uLL);
          v35 = v134 >= 0x70;
          v134 += 16;
        }

        while (!v35);
        v11 += v12;
        v44 += 16;
        --v131;
      }

      while (v131);
      v132.i32[0] = 8 - v14;
      v133.i32[0] = v14;
      v135 = v151;
      v136 = v149;
      v137 = 128;
      v138 = vdupq_lane_s8(*v132.i8, 0);
      v139 = vdupq_lane_s8(*v133.i8, 0);
      do
      {
        v140 = 0;
        do
        {
          *&v136[v140 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v135[v140 + 16], *v139.i8), v135[v140], *v138.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v135[v140 + 16], v139), *&v135[v140], v138), 3uLL);
          v35 = v140 >= 14;
          v140 += 2;
        }

        while (!v35);
        v135 += 16;
        v136 += 128;
        --v137;
      }

      while (v137);
      v141 = v149;
      if (a10)
      {
        v142 = v17;
      }

      else
      {
        v142 = v149;
      }

      if (!a10)
      {
        v141 = v17;
      }

      v143 = v150;
      v144 = 128;
      v145.i64[0] = 0x4040404040404040;
      v145.i64[1] = 0x4040404040404040;
      do
      {
        v146 = 0;
        do
        {
          v147 = *(v18 + v146);
          v148 = vsubq_s8(v145, v147);
          *&v143[v146] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v148.i8, *&v141[v146]), *v147.i8, *&v142[v146]), 6uLL), vmlal_high_u8(vmull_high_u8(v148, *&v141[v146]), v147, *&v142[v146]), 6uLL);
          v146 += 16;
        }

        while (v146 != 128);
        v142 += 128;
        v141 += 128;
        v18 += a9;
        v143 += 128;
        --v144;
      }

      while (v144);
    }

    return (off_280ABCBF0)(v150, 128, v15, v16, a11);
  }

  if (v14 == 4)
  {
    v57 = v151;
    v58 = 128;
    v59 = v11 + v12;
    do
    {
      v60 = 0;
      do
      {
        *&v57[v60] = vrhaddq_u8(*(v11 + v60 * 8), *(v59 + v60 * 8));
        v35 = v60 >= 14;
        v60 += 2;
      }

      while (!v35);
      v11 += v12;
      v57 += 16;
      v59 += v12;
      --v58;
    }

    while (v58);
    v61 = v151;
    if (a10)
    {
      v62 = v17;
    }

    else
    {
      v62 = v151;
    }

    if (!a10)
    {
      v61 = v17;
    }

    v63 = v149;
    v64 = 128;
    v65.i64[0] = 0x4040404040404040;
    v65.i64[1] = 0x4040404040404040;
    do
    {
      v66 = 0;
      do
      {
        v67 = *(v18 + v66 * 8);
        v68 = vsubq_s8(v65, v67);
        *&v63[v66 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v68.i8, v61[v66]), *v67.i8, v62[v66]), 6uLL), vmlal_high_u8(vmull_high_u8(v68, *&v61[v66]), v67, *&v62[v66]), 6uLL);
        v66 += 2;
      }

      while ((v66 * 8) != 128);
      v62 += 16;
      v61 += 16;
      v18 += a9;
      v63 += 128;
      --v64;
    }

    while (v64);
    return (off_280ABCBF0)(v149, 128, v15, v16, a11);
  }

  if (v14)
  {
    v19.i32[0] = 8 - v14;
    v20.i32[0] = v14;
    v83 = v11 + v12;
    v84 = v151;
    v85 = 128;
    v86 = vdupq_lane_s8(v19, 0);
    v87 = vdupq_lane_s8(v20, 0);
    do
    {
      v88 = 0;
      do
      {
        *&v84[v88 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*(v83 + v88), *v87.i8), *(v11 + v88), *v86.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(v83 + v88), v87), *(v11 + v88), v86), 3uLL);
        v35 = v88 >= 0x70;
        v88 += 16;
      }

      while (!v35);
      v11 += v12;
      v84 += 16;
      v83 += v12;
      --v85;
    }

    while (v85);
    v89 = v151;
    if (a10)
    {
      v90 = v17;
    }

    else
    {
      v90 = v151;
    }

    if (!a10)
    {
      v89 = v17;
    }

    v91 = v149;
    v92 = 128;
    v93.i64[0] = 0x4040404040404040;
    v93.i64[1] = 0x4040404040404040;
    do
    {
      v94 = 0;
      do
      {
        v95 = *(v18 + v94 * 8);
        v96 = vsubq_s8(v93, v95);
        *&v91[v94 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v96.i8, v89[v94]), *v95.i8, v90[v94]), 6uLL), vmlal_high_u8(vmull_high_u8(v96, *&v89[v94]), v95, *&v90[v94]), 6uLL);
        v94 += 2;
      }

      while ((v94 * 8) != 128);
      v90 += 16;
      v89 += 16;
      v18 += a9;
      v91 += 128;
      --v92;
    }

    while (v92);
    return (off_280ABCBF0)(v149, 128, v15, v16, a11);
  }

  if (a10)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (a10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  v23 = 128;
  if (a10)
  {
    v24 = 128;
  }

  else
  {
    v24 = v12;
  }

  if (a10)
  {
    v25 = v12;
  }

  else
  {
    v25 = 128;
  }

  v26 = v151;
  v27.i64[0] = 0x4040404040404040;
  v27.i64[1] = 0x4040404040404040;
  do
  {
    v28 = 0;
    do
    {
      v29 = *(v18 + v28);
      v30 = vsubq_s8(v27, v29);
      *&v26[v28 / 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v30.i8, *(v22 + v28)), *v29.i8, *(v21 + v28)), 6uLL), vmlal_high_u8(vmull_high_u8(v30, *(v22 + v28)), v29, *(v21 + v28)), 6uLL);
      v28 += 16;
    }

    while (v28 != 128);
    v21 += v24;
    v22 += v25;
    v18 += a9;
    v26 += 16;
    --v23;
  }

  while (v23);
  return (off_280ABCBF0)(v151, 128, v15, v16, a11);
}

uint64_t sub_277A20DEC(__int32 *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, __int32 *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v32 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = vdup_lane_s8(a9, 0);
  v15 = vdup_lane_s8(a10, 0);
  do
  {
    v16.i32[0] = *a1;
    v16.i32[1] = *(a1 + a2);
    v17.i32[0] = *(a1 + 1);
    v17.i32[1] = *(a1 + a2 + 1);
    v18 = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v15), v16, v14), 3uLL);
    *&v31[v13] = v18;
    a1 = (a1 + 2 * a2);
    v13 += 2;
  }

  while ((v13 * 4) != 72);
  v19 = 0;
  v14.i32[0] = 8 - a4;
  v15.i32[0] = a4;
  v20 = v31[0];
  v21 = vdup_lane_s8(v14, 0);
  v22 = vdup_lane_s8(v15, 0);
  do
  {
    v18.i32[0] = v20;
    v23 = *&v31[v19 + 1];
    v18 = vrshrn_n_s16(vmlal_u8(vmull_u8(v23, v22), vzip1_s32(v18, v23), v21), 3uLL);
    *&v30[v19 * 4] = v18;
    v20 = v23.i32[1];
    v19 += 2;
  }

  while ((v19 * 4) != 64);
  v24 = 0;
  v25 = v30;
  if (a12)
  {
    v26 = a7;
  }

  else
  {
    v26 = v30;
  }

  if (!a12)
  {
    v25 = a7;
  }

  do
  {
    v27.i32[0] = *a8;
    v27.i32[1] = *(a8 + a11);
    *&v29[v24] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v27), *&v25[v24]), v27, *&v26[v24]), 6uLL);
    a8 = (a8 + 2 * a11);
    v24 += 8;
  }

  while (v24 != 64);
  return off_280ABCC48(v29, 4, a5, a6, a13);
}

uint64_t sub_277A20F74(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, int8x8_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v28[33] = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = (a1 + 1);
  v15 = vdup_lane_s8(a9, 0);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v28[v13++] = vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, v16), *(v14 - 1), v15), 3uLL);
    v14 = (v14 + a2);
  }

  while ((v13 * 8) != 264);
  v17 = 0;
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v18 = v28[0];
  v19 = vdup_lane_s8(v15, 0);
  v20 = vdup_lane_s8(v16, 0);
  do
  {
    v21 = v28[v17 + 1];
    *&v27[v17 * 8] = vrshrn_n_s16(vmlal_u8(vmull_u8(v21, v20), v18, v19), 3uLL);
    ++v17;
    v18 = v21;
  }

  while ((v17 * 8) != 256);
  v22 = 0;
  v23 = v27;
  if (a12)
  {
    v24 = a7;
  }

  else
  {
    v24 = v27;
  }

  if (!a12)
  {
    v23 = a7;
  }

  do
  {
    *&v26[v22] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a8), *&v23[v22]), *a8, *&v24[v22]), 6uLL);
    a8 = (a8 + a11);
    v22 += 8;
  }

  while (v22 != 256);
  return off_280ABCC88(v26, 8, a5, a6, a13);
}

uint64_t sub_277A210DC(uint64_t a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, int8x16_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v13 = 0;
  v31 = *MEMORY[0x277D85DE8];
  a9.i32[0] = 8 - a3;
  a10.i32[0] = a3;
  v14 = (a1 + 1);
  v15 = vdupq_lane_s8(a9, 0);
  v16 = vdupq_lane_s8(a10, 0);
  do
  {
    v30[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, *v16.i8), *(v14 - 1), *v15.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v14->i8, v16), *(&v14[-1].u32[1] + 3), v15), 3uLL);
    v14 = (v14 + a2);
  }

  while ((v13 * 16) != 80);
  v17 = 0;
  v15.i32[0] = 8 - a4;
  v16.i32[0] = a4;
  v18 = v30[0];
  v19 = vdupq_lane_s8(*v15.i8, 0);
  v20 = vdupq_lane_s8(*v16.i8, 0);
  do
  {
    v21 = v30[v17 + 1];
    *&v29[v17 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, *v20.i8), *v18.i8, *v19.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v21, v20), v18, v19), 3uLL);
    ++v17;
    v18 = v21;
  }

  while ((v17 * 16) != 64);
  v22 = 0;
  v23 = v29;
  if (a12)
  {
    v24 = a7;
  }

  else
  {
    v24 = v29;
  }

  if (!a12)
  {
    v23 = a7;
  }

  v25.i64[0] = 0x4040404040404040;
  v25.i64[1] = 0x4040404040404040;
  do
  {
    v26 = vsubq_s8(v25, *a8);
    *&v28[v22] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v26.i8, *&v23[v22]), *a8->i8, *&v24[v22]), 6uLL), vmlal_high_u8(vmull_high_u8(v26, *&v23[v22]), *a8, *&v24[v22]), 6uLL);
    a8 = (a8 + a11);
    v22 += 16;
  }

  while (v22 != 64);
  return off_280ABCC10(v28, 16, a5, a6, a13);
}

uint64_t sub_277A21260(_OWORD *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint8x8_t *a7, int8x16_t *a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v74 = 0;
      v75 = (a1 + 1);
      do
      {
        v96[v74++] = vrhaddq_u8(*(v75 - 1), *v75);
        v75 = (v75 + a2);
      }

      while ((v74 * 16) != 1040);
      v76 = 0;
      v77 = v96[0];
      do
      {
        v78 = v96[v76 + 1];
        *&v94[v76 * 16] = vrhaddq_u8(v77, v78);
        ++v76;
        v77 = v78;
      }

      while ((v76 * 16) != 1024);
      v79 = 0;
      v80 = v94;
      if (a12)
      {
        v81 = a7;
      }

      else
      {
        v81 = v94;
      }

      if (!a12)
      {
        v80 = a7;
      }

      v82.i64[0] = 0x4040404040404040;
      v82.i64[1] = 0x4040404040404040;
      do
      {
        v83 = vsubq_s8(v82, *a8);
        *&v95[v79 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v83.i8, v80[v79]), *a8->i8, v81[v79]), 6uLL), vmlal_high_u8(vmull_high_u8(v83, *v80[v79].i8), *a8, *v81[v79].i8), 6uLL);
        a8 = (a8 + a11);
        v79 += 2;
      }

      while ((v79 * 8) != 1024);
    }

    else
    {
      v21 = 0;
      v22 = (a1 + 1);
      if (!a4)
      {
        do
        {
          v96[v21++] = vrhaddq_u8(*(v22 - 1), *v22);
          v22 = (v22 + a2);
        }

        while ((v21 * 16) != 1024);
        v23 = 0;
        v24 = v96;
        if (a12)
        {
          v25 = a7;
        }

        else
        {
          v25 = v96;
        }

        if (!a12)
        {
          v24 = a7;
        }

        v26.i64[0] = 0x4040404040404040;
        v26.i64[1] = 0x4040404040404040;
        do
        {
          v27 = vsubq_s8(v26, *a8);
          *&v94[v23 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v27.i8, v24[v23]), *a8->i8, v25[v23]), 6uLL), vmlal_high_u8(vmull_high_u8(v27, *v24[v23].i8), *a8, *v25[v23].i8), 6uLL);
          a8 = (a8 + a11);
          v23 += 2;
        }

        while ((v23 * 8) != 1024);
        return (off_280ABCC18)(v94, 16, a5, a6, a13);
      }

      do
      {
        v28 = *v22;
        v29 = vrhaddq_u8(*(v22 - 1), *v22);
        v96[v21++] = v29;
        v22 = (v22 + a2);
      }

      while ((v21 * 16) != 1040);
      v30 = 0;
      v29.i32[0] = 8 - a4;
      v28.i32[0] = a4;
      v31 = v96[0];
      v32 = vdupq_lane_s8(*v29.i8, 0);
      v33 = vdupq_lane_s8(*v28.i8, 0);
      do
      {
        v34 = v96[v30 + 1];
        *&v94[v30 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v34.i8, *v33.i8), *v31.i8, *v32.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v34, v33), v31, v32), 3uLL);
        ++v30;
        v31 = v34;
      }

      while ((v30 * 16) != 1024);
      v35 = 0;
      v36 = v94;
      if (a12)
      {
        v37 = a7;
      }

      else
      {
        v37 = v94;
      }

      if (!a12)
      {
        v36 = a7;
      }

      v38.i64[0] = 0x4040404040404040;
      v38.i64[1] = 0x4040404040404040;
      do
      {
        v39 = vsubq_s8(v38, *a8);
        *&v95[v35 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v39.i8, v36[v35]), *a8->i8, v37[v35]), 6uLL), vmlal_high_u8(vmull_high_u8(v39, *v36[v35].i8), *a8, *v37[v35].i8), 6uLL);
        a8 = (a8 + a11);
        v35 += 2;
      }

      while ((v35 * 8) != 1024);
    }

    return (off_280ABCC18)(v95, 16, a5, a6, a13);
  }

  v13 = 0;
  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v40 = (a1 + 1);
    v41 = vdupq_lane_s8(a9, 0);
    v42 = vdupq_lane_s8(a10, 0);
    if (a4 == 4)
    {
      do
      {
        v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
        v40 = (v40 + a2);
      }

      while ((v13 * 16) != 1040);
      v48 = 0;
      v49 = v96[0];
      do
      {
        v50 = v96[v48 + 1];
        *&v94[v48 * 16] = vrhaddq_u8(v49, v50);
        ++v48;
        v49 = v50;
      }

      while ((v48 * 16) != 1024);
      v51 = 0;
      v52 = v94;
      if (a12)
      {
        v53 = a7;
      }

      else
      {
        v53 = v94;
      }

      if (!a12)
      {
        v52 = a7;
      }

      v54.i64[0] = 0x4040404040404040;
      v54.i64[1] = 0x4040404040404040;
      do
      {
        v55 = vsubq_s8(v54, *a8);
        *&v95[v51 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v55.i8, v52[v51]), *a8->i8, v53[v51]), 6uLL), vmlal_high_u8(vmull_high_u8(v55, *v52[v51].i8), *a8, *v53[v51].i8), 6uLL);
        a8 = (a8 + a11);
        v51 += 2;
      }

      while ((v51 * 8) != 1024);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
          v40 = (v40 + a2);
        }

        while ((v13 * 16) != 1024);
        v43 = 0;
        v44 = v96;
        if (a12)
        {
          v45 = a7;
        }

        else
        {
          v45 = v96;
        }

        if (!a12)
        {
          v44 = a7;
        }

        v46.i64[0] = 0x4040404040404040;
        v46.i64[1] = 0x4040404040404040;
        do
        {
          v47 = vsubq_s8(v46, *a8);
          *&v94[v43 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v47.i8, v44[v43]), *a8->i8, v45[v43]), 6uLL), vmlal_high_u8(vmull_high_u8(v47, *v44[v43].i8), *a8, *v45[v43].i8), 6uLL);
          a8 = (a8 + a11);
          v43 += 2;
        }

        while ((v43 * 8) != 1024);
        return (off_280ABCC18)(v94, 16, a5, a6, a13);
      }

      do
      {
        v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40, *v42.i8), *(v40 - 1), *v41.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v40->i8, v42), *(&v40[-1].u32[1] + 3), v41), 3uLL);
        v40 = (v40 + a2);
      }

      while ((v13 * 16) != 1040);
      v56 = 0;
      v41.i32[0] = 8 - a4;
      v42.i32[0] = a4;
      v57 = v96[0];
      v58 = vdupq_lane_s8(*v41.i8, 0);
      v59 = vdupq_lane_s8(*v42.i8, 0);
      do
      {
        v60 = v96[v56 + 1];
        *&v94[v56 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v60.i8, *v59.i8), *v57.i8, *v58.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v60, v59), v57, v58), 3uLL);
        ++v56;
        v57 = v60;
      }

      while ((v56 * 16) != 1024);
      v61 = 0;
      v62 = v94;
      if (a12)
      {
        v63 = a7;
      }

      else
      {
        v63 = v94;
      }

      if (!a12)
      {
        v62 = a7;
      }

      v64.i64[0] = 0x4040404040404040;
      v64.i64[1] = 0x4040404040404040;
      do
      {
        v65 = vsubq_s8(v64, *a8);
        *&v95[v61 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v65.i8, v62[v61]), *a8->i8, v63[v61]), 6uLL), vmlal_high_u8(vmull_high_u8(v65, *v62[v61].i8), *a8, *v63[v61].i8), 6uLL);
        a8 = (a8 + a11);
        v61 += 2;
      }

      while ((v61 * 8) != 1024);
    }

    return (off_280ABCC18)(v95, 16, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v66 = *a1;
    v67 = (a1 + a2);
    do
    {
      v68 = *v67;
      v96[v13++] = vrhaddq_u8(v66, *v67);
      v67 = (v67 + a2);
      v66 = v68;
    }

    while ((v13 * 16) != 1024);
    v69 = 0;
    v70 = v96;
    if (a12)
    {
      v71 = a7;
    }

    else
    {
      v71 = v96;
    }

    if (!a12)
    {
      v70 = a7;
    }

    v72.i64[0] = 0x4040404040404040;
    v72.i64[1] = 0x4040404040404040;
    do
    {
      v73 = vsubq_s8(v72, *a8);
      *&v94[v69 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v73.i8, v70[v69]), *a8->i8, v71[v69]), 6uLL), vmlal_high_u8(vmull_high_u8(v73, *v70[v69].i8), *a8, *v71[v69].i8), 6uLL);
      a8 = (a8 + a11);
      v69 += 2;
    }

    while ((v69 * 8) != 1024);
    return (off_280ABCC18)(v94, 16, a5, a6, a13);
  }

  if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v84 = *a1;
    v85 = (a1 + a2);
    v86 = vdupq_lane_s8(a9, 0);
    v87 = vdupq_lane_s8(a10, 0);
    do
    {
      v88 = *v85->i8;
      v96[v13++] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v85, *v87.i8), *v84.i8, *v86.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*v85->i8, v87), v84, v86), 3uLL);
      v85 = (v85 + a2);
      v84 = v88;
    }

    while ((v13 * 16) != 1024);
    v89 = 0;
    v90 = v96;
    if (a12)
    {
      v91 = a7;
    }

    else
    {
      v91 = v96;
    }

    if (!a12)
    {
      v90 = a7;
    }

    v92.i64[0] = 0x4040404040404040;
    v92.i64[1] = 0x4040404040404040;
    do
    {
      v93 = vsubq_s8(v92, *a8);
      *&v94[v89 * 8] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v93.i8, v90[v89]), *a8->i8, v91[v89]), 6uLL), vmlal_high_u8(vmull_high_u8(v93, *v90[v89].i8), *a8, *v91[v89].i8), 6uLL);
      a8 = (a8 + a11);
      v89 += 2;
    }

    while ((v89 * 8) != 1024);
    return (off_280ABCC18)(v94, 16, a5, a6, a13);
  }

  if (a12)
  {
    v14 = a7;
  }

  else
  {
    v14 = a1;
  }

  if (a12)
  {
    v15 = a1;
  }

  else
  {
    v15 = a7;
  }

  if (a12)
  {
    v16 = 16;
  }

  else
  {
    v16 = a2;
  }

  if (a12)
  {
    v17 = a2;
  }

  else
  {
    v17 = 16;
  }

  v18.i64[0] = 0x4040404040404040;
  v18.i64[1] = 0x4040404040404040;
  do
  {
    v19 = vsubq_s8(v18, *a8);
    v96[v13] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v19.i8, *v15), *a8->i8, *v14), 6uLL), vmlal_high_u8(vmull_high_u8(v19, *v15->i8), *a8, *v14->i8), 6uLL);
    v14 = (v14 + v16);
    v15 = (v15 + v17);
    a8 = (a8 + a11);
    ++v13;
  }

  while ((v13 * 16) != 1024);
  return (off_280ABCC18)(v96, 16, a5, a6, a13);
}

uint64_t sub_277A21978(uint8x16_t *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, uint8x16_t *a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v166[31] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v86 = 0;
      v87 = (a1 + 17);
      do
      {
        v88 = &v165[v86];
        v89 = vrhaddq_u8(*(v87 - 1), *v87);
        *v88 = vrhaddq_u8(*(v87 - 17), v87[-1]);
        v88[1] = v89;
        v86 += 2;
        v87 = (v87 + a2);
      }

      while ((v86 * 16) != 288);
      v90 = v165[0];
      v91 = v166;
      v92 = 32;
      do
      {
        v93 = &v163[v92];
        v95 = v91[-2];
        v94 = v91[-1];
        v96 = *v91;
        v91 += 2;
        v93[-2] = vrhaddq_u8(v90, v94);
        v93[-1] = vrhaddq_u8(v95, v96);
        v92 += 32;
        v90 = v94;
      }

      while (v92 != 288);
      v97 = v163;
      if (a12)
      {
        v98 = a7;
      }

      else
      {
        v98 = v163;
      }

      if (!a12)
      {
        v97 = a7;
      }

      v99 = v164;
      v100 = 8;
      v101.i64[0] = 0x4040404040404040;
      v101.i64[1] = 0x4040404040404040;
      do
      {
        v102 = 0;
        do
        {
          v103 = *(a8 + v102 * 16);
          v104 = vsubq_s8(v101, v103);
          *&v99[v102 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v104.i8, *v97[v102].i8), *v103.i8, *v98[v102].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v104, v97[v102]), v103, v98[v102]), 6uLL);
          ++v102;
        }

        while ((v102 * 16) != 32);
        v98 += 2;
        v97 += 2;
        a8 += a11;
        v99 += 32;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 0;
      v27 = (a1 + 17);
      if (!a4)
      {
        do
        {
          v28 = &v165[v26];
          v29 = vrhaddq_u8(*(v27 - 1), *v27);
          *v28 = vrhaddq_u8(*(v27 - 17), v27[-1]);
          v28[1] = v29;
          v26 += 2;
          v27 = (v27 + a2);
        }

        while ((v26 * 16) != 256);
        v30 = v165;
        if (a12)
        {
          v31 = a7;
        }

        else
        {
          v31 = v165;
        }

        if (!a12)
        {
          v30 = a7;
        }

        v32 = v163;
        v33 = 8;
        v34.i64[0] = 0x4040404040404040;
        v34.i64[1] = 0x4040404040404040;
        do
        {
          v35 = 0;
          do
          {
            v36 = *(a8 + v35 * 16);
            v37 = vsubq_s8(v34, v36);
            *&v32[v35 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v37.i8, *v30[v35].i8), *v36.i8, *v31[v35].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v37, v30[v35]), v36, v31[v35]), 6uLL);
            ++v35;
          }

          while ((v35 * 16) != 32);
          v31 += 2;
          v30 += 2;
          a8 += a11;
          v32 += 32;
          --v33;
        }

        while (v33);
        return (off_280ABCC40)(v163, 32, a5, a6, a13);
      }

      do
      {
        v38 = &v165[v26];
        v39 = vrhaddq_u8(*(v27 - 17), v27[-1]);
        v40 = vrhaddq_u8(*(v27 - 1), *v27);
        *v38 = v39;
        v38[1] = v40;
        v26 += 2;
        v27 = (v27 + a2);
      }

      while ((v26 * 16) != 288);
      v41 = 8;
      v39.i32[0] = 8 - a4;
      v40.i32[0] = a4;
      v42 = v165;
      v43 = v163;
      v44 = vdupq_lane_s8(*v39.i8, 0);
      v45 = vdupq_lane_s8(*v40.i8, 0);
      do
      {
        v46 = 0;
        v47 = 1;
        do
        {
          v48 = v47;
          *&v43[v46 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v42[v46 + 2], *v45.i8), *&v42[v46], *v44.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v42[v46 + 2], v45), v42[v46], v44), 3uLL);
          v46 = 1;
          v47 = 0;
        }

        while ((v48 & 1) != 0);
        v42 += 2;
        v43 += 32;
        --v41;
      }

      while (v41);
      v49 = v163;
      if (a12)
      {
        v50 = a7;
      }

      else
      {
        v50 = v163;
      }

      if (!a12)
      {
        v49 = a7;
      }

      v51 = v164;
      v52 = 8;
      v53.i64[0] = 0x4040404040404040;
      v53.i64[1] = 0x4040404040404040;
      do
      {
        v54 = 0;
        do
        {
          v55 = *(a8 + v54 * 16);
          v56 = vsubq_s8(v53, v55);
          *&v51[v54 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v56.i8, *v49[v54].i8), *v55.i8, *v50[v54].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v56, v49[v54]), v55, v50[v54]), 6uLL);
          ++v54;
        }

        while ((v54 * 16) != 32);
        v50 += 2;
        v49 += 2;
        a8 += a11;
        v51 += 32;
        --v52;
      }

      while (v52);
    }

    return (off_280ABCC40)(v164, 32, a5, a6, a13);
  }

  if (a3)
  {
    v57 = 8;
    if (a4 == 4)
    {
      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v120 = v165;
      v121 = 9;
      v122 = vdupq_lane_s8(a9, 0);
      v123 = vdupq_lane_s8(a10, 0);
      do
      {
        v124 = 0;
        v125 = 1;
        do
        {
          v126 = v125;
          v120[v124] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v124].i8[1], *v123.i8), *a1[v124].i8, *v122.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v124] + 1), v123), a1[v124], v122), 3uLL);
          v124 = 1;
          v125 = 0;
        }

        while ((v126 & 1) != 0);
        a1 = (a1 + a2);
        v120 += 2;
        --v121;
      }

      while (v121);
      v127 = 0;
      v128 = v165[0];
      do
      {
        v129 = &v163[v127 * 16];
        v130 = v165[v127 + 2];
        v131 = vrhaddq_u8(v165[v127 + 1], v165[v127 + 3]);
        *v129 = vrhaddq_u8(v128, v130);
        v129[1] = v131;
        v127 += 2;
        v128 = v130;
      }

      while ((v127 * 16) != 256);
      v132 = v163;
      if (a12)
      {
        v133 = a7;
      }

      else
      {
        v133 = v163;
      }

      if (!a12)
      {
        v132 = a7;
      }

      v134 = v164;
      v135 = 8;
      v136.i64[0] = 0x4040404040404040;
      v136.i64[1] = 0x4040404040404040;
      do
      {
        v137 = 0;
        do
        {
          v138 = *(a8 + v137 * 16);
          v139 = vsubq_s8(v136, v138);
          *&v134[v137 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v139.i8, *v132[v137].i8), *v138.i8, *v133[v137].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v139, v132[v137]), v138, v133[v137]), 6uLL);
          ++v137;
        }

        while ((v137 * 16) != 32);
        v133 += 2;
        v132 += 2;
        a8 += a11;
        v134 += 32;
        --v135;
      }

      while (v135);
    }

    else
    {
      if (!a4)
      {
        a9.i32[0] = 8 - a3;
        a10.i32[0] = a3;
        v58 = v165;
        v59 = vdupq_lane_s8(a9, 0);
        v60 = vdupq_lane_s8(a10, 0);
        do
        {
          v61 = 0;
          v62 = 1;
          do
          {
            v63 = v62;
            v58[v61] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v61].i8[1], *v60.i8), *a1[v61].i8, *v59.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v61] + 1), v60), a1[v61], v59), 3uLL);
            v61 = 1;
            v62 = 0;
          }

          while ((v63 & 1) != 0);
          a1 = (a1 + a2);
          v58 += 2;
          --v57;
        }

        while (v57);
        v64 = v165;
        if (a12)
        {
          v65 = a7;
        }

        else
        {
          v65 = v165;
        }

        if (!a12)
        {
          v64 = a7;
        }

        v66 = v163;
        v67 = 8;
        v68.i64[0] = 0x4040404040404040;
        v68.i64[1] = 0x4040404040404040;
        do
        {
          v69 = 0;
          do
          {
            v70 = *(a8 + v69 * 16);
            v71 = vsubq_s8(v68, v70);
            *&v66[v69 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v71.i8, *v64[v69].i8), *v70.i8, *v65[v69].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v71, v64[v69]), v70, v65[v69]), 6uLL);
            ++v69;
          }

          while ((v69 * 16) != 32);
          v65 += 2;
          v64 += 2;
          a8 += a11;
          v66 += 32;
          --v67;
        }

        while (v67);
        return (off_280ABCC40)(v163, 32, a5, a6, a13);
      }

      a9.i32[0] = 8 - a3;
      a10.i32[0] = a3;
      v140 = v165;
      v141 = 9;
      v142 = vdupq_lane_s8(a9, 0);
      v143 = vdupq_lane_s8(a10, 0);
      do
      {
        v144 = 0;
        v145 = 1;
        do
        {
          v146 = v145;
          v140[v144] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v144].i8[1], *v143.i8), *a1[v144].i8, *v142.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v144] + 1), v143), a1[v144], v142), 3uLL);
          v144 = 1;
          v145 = 0;
        }

        while ((v146 & 1) != 0);
        a1 = (a1 + a2);
        v140 += 2;
        --v141;
      }

      while (v141);
      v147 = 8;
      v142.i32[0] = 8 - a4;
      v143.i32[0] = a4;
      v148 = v165;
      v149 = v163;
      v150 = vdupq_lane_s8(*v142.i8, 0);
      v151 = vdupq_lane_s8(*v143.i8, 0);
      do
      {
        v152 = 0;
        v153 = 1;
        do
        {
          v154 = v153;
          *&v149[v152 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v148[v152 + 2], *v151.i8), *&v148[v152], *v150.i8), 3uLL), vmlal_high_u8(vmull_high_u8(v148[v152 + 2], v151), v148[v152], v150), 3uLL);
          v152 = 1;
          v153 = 0;
        }

        while ((v154 & 1) != 0);
        v148 += 2;
        v149 += 32;
        --v147;
      }

      while (v147);
      v155 = v163;
      if (a12)
      {
        v156 = a7;
      }

      else
      {
        v156 = v163;
      }

      if (!a12)
      {
        v155 = a7;
      }

      v157 = v164;
      v158 = 8;
      v159.i64[0] = 0x4040404040404040;
      v159.i64[1] = 0x4040404040404040;
      do
      {
        v160 = 0;
        do
        {
          v161 = *(a8 + v160 * 16);
          v162 = vsubq_s8(v159, v161);
          *&v157[v160 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v162.i8, *v155[v160].i8), *v161.i8, *v156[v160].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v162, v155[v160]), v161, v156[v160]), 6uLL);
          ++v160;
        }

        while ((v160 * 16) != 32);
        v156 += 2;
        v155 += 2;
        a8 += a11;
        v157 += 32;
        --v158;
      }

      while (v158);
    }

    return (off_280ABCC40)(v164, 32, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v72 = 0;
    v73 = *a1;
    do
    {
      v74 = &v165[v72];
      v75 = a1[1];
      a1 = (a1 + a2);
      v76 = *a1;
      v77 = vrhaddq_u8(v75, a1[1]);
      *v74 = vrhaddq_u8(v73, *a1);
      v74[1] = v77;
      v72 += 2;
      v73 = v76;
    }

    while ((v72 * 16) != 256);
    v78 = v165;
    if (a12)
    {
      v79 = a7;
    }

    else
    {
      v79 = v165;
    }

    if (!a12)
    {
      v78 = a7;
    }

    v80 = v163;
    v81 = 8;
    v82.i64[0] = 0x4040404040404040;
    v82.i64[1] = 0x4040404040404040;
    do
    {
      v83 = 0;
      do
      {
        v84 = *(a8 + v83 * 16);
        v85 = vsubq_s8(v82, v84);
        *&v80[v83 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v85.i8, *v78[v83].i8), *v84.i8, *v79[v83].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v85, v78[v83]), v84, v79[v83]), 6uLL);
        ++v83;
      }

      while ((v83 * 16) != 32);
      v79 += 2;
      v78 += 2;
      a8 += a11;
      v80 += 32;
      --v81;
    }

    while (v81);
    return (off_280ABCC40)(v163, 32, a5, a6, a13);
  }

  if (a4)
  {
    v105 = 8;
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v106 = v165;
    v107 = vdupq_lane_s8(a9, 0);
    v108 = vdupq_lane_s8(a10, 0);
    do
    {
      v109 = 0;
      v110 = 1;
      do
      {
        v111 = v110;
        v106[v109] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v109].i8[a2], *v108.i8), *a1[v109].i8, *v107.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*(&a1[v109] + a2), v108), a1[v109], v107), 3uLL);
        v109 = 1;
        v110 = 0;
      }

      while ((v111 & 1) != 0);
      a1 = (a1 + a2);
      v106 += 2;
      --v105;
    }

    while (v105);
    v112 = v165;
    if (a12)
    {
      v113 = a7;
    }

    else
    {
      v113 = v165;
    }

    if (!a12)
    {
      v112 = a7;
    }

    v114 = v163;
    v115 = 8;
    v116.i64[0] = 0x4040404040404040;
    v116.i64[1] = 0x4040404040404040;
    do
    {
      v117 = 0;
      do
      {
        v118 = *(a8 + v117 * 16);
        v119 = vsubq_s8(v116, v118);
        *&v114[v117 * 16] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v119.i8, *v112[v117].i8), *v118.i8, *v113[v117].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v119, v112[v117]), v118, v113[v117]), 6uLL);
        ++v117;
      }

      while ((v117 * 16) != 32);
      v113 += 2;
      v112 += 2;
      a8 += a11;
      v114 += 32;
      --v115;
    }

    while (v115);
    return (off_280ABCC40)(v163, 32, a5, a6, a13);
  }

  if (a12)
  {
    v13 = a7;
  }

  else
  {
    v13 = a1;
  }

  if (a12)
  {
    v14 = a1;
  }

  else
  {
    v14 = a7;
  }

  if (a12)
  {
    v15 = 32;
  }

  else
  {
    v15 = a2;
  }

  if (a12)
  {
    v16 = a2;
  }

  else
  {
    v16 = 32;
  }

  v17 = v15;
  v18 = v16;
  v19 = v165;
  v20 = 8;
  v21.i64[0] = 0x4040404040404040;
  v21.i64[1] = 0x4040404040404040;
  do
  {
    v22 = 0;
    do
    {
      v23 = *(a8 + v22 * 16);
      v24 = vsubq_s8(v21, v23);
      v19[v22] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *v14[v22].i8), *v23.i8, *v13[v22].i8), 6uLL), vmlal_high_u8(vmull_high_u8(v24, v14[v22]), v23, v13[v22]), 6uLL);
      ++v22;
    }

    while ((v22 * 16) != 32);
    v13 = (v13 + v17);
    v14 = (v14 + v18);
    a8 += a11;
    v19 += 2;
    --v20;
  }

  while (v20);
  return (off_280ABCC40)(v165, 32, a5, a6, a13);
}

uint64_t sub_277A22270(_BYTE *a1, int a2, __int32 a3, __int32 a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, int8x8_t a9, int8x8_t a10, int a11, int a12, uint64_t a13)
{
  v146 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v26 = v145;
    if (a4 == 4)
    {
      v63 = 17;
      do
      {
        v64 = 0;
        do
        {
          *&v26[v64] = vrhaddq_u8(*&a1[v64], *&a1[v64 + 1]);
          v29 = v64 >= 0x30;
          v64 += 16;
        }

        while (!v29);
        a1 += a2;
        v26 += 64;
        --v63;
      }

      while (v63);
      v65 = v145;
      v66 = v143;
      v67 = 16;
      do
      {
        v68 = 0;
        do
        {
          *&v66[v68] = vrhaddq_u8(*&v65[v68], *&v65[v68 + 64]);
          v29 = v68 >= 0x30;
          v68 += 16;
        }

        while (!v29);
        v65 += 64;
        v66 += 64;
        --v67;
      }

      while (v67);
      v69 = v143;
      if (a12)
      {
        v70 = a7;
      }

      else
      {
        v70 = v143;
      }

      if (!a12)
      {
        v69 = a7;
      }

      v71 = v144;
      v72 = 16;
      v73.i64[0] = 0x4040404040404040;
      v73.i64[1] = 0x4040404040404040;
      do
      {
        v74 = 0;
        do
        {
          v75 = *(a8 + v74);
          v76 = vsubq_s8(v73, v75);
          *&v71[v74] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v76.i8, *&v69[v74]), *v75.i8, *&v70[v74]), 6uLL), vmlal_high_u8(vmull_high_u8(v76, *&v69[v74]), v75, *&v70[v74]), 6uLL);
          v74 += 16;
        }

        while (v74 != 64);
        v70 += 64;
        v69 += 64;
        a8 += a11;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v27 = 16;
        do
        {
          v28 = 0;
          do
          {
            *&v26[v28] = vrhaddq_u8(*&a1[v28], *&a1[v28 + 1]);
            v29 = v28 >= 0x30;
            v28 += 16;
          }

          while (!v29);
          a1 += a2;
          v26 += 64;
          --v27;
        }

        while (v27);
        v30 = v145;
        if (a12)
        {
          v31 = a7;
        }

        else
        {
          v31 = v145;
        }

        if (!a12)
        {
          v30 = a7;
        }

        v32 = v143;
        v33 = 16;
        v34.i64[0] = 0x4040404040404040;
        v34.i64[1] = 0x4040404040404040;
        do
        {
          v35 = 0;
          do
          {
            v36 = *(a8 + v35);
            v37 = vsubq_s8(v34, v36);
            *&v32[v35] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v37.i8, *&v30[v35]), *v36.i8, *&v31[v35]), 6uLL), vmlal_high_u8(vmull_high_u8(v37, *&v30[v35]), v36, *&v31[v35]), 6uLL);
            v35 += 16;
          }

          while (v35 != 64);
          v31 += 64;
          v30 += 64;
          a8 += a11;
          v32 += 64;
          --v33;
        }

        while (v33);
        return (off_280ABCC68)(v143, 64, a5, a6, a13);
      }

      v91 = 17;
      do
      {
        v92 = 0;
        do
        {
          v93 = *&a1[v92 + 1];
          v94 = vrhaddq_u8(*&a1[v92], v93);
          *&v26[v92] = v94;
          v29 = v92 >= 0x30;
          v92 += 16;
        }

        while (!v29);
        a1 += a2;
        v26 += 64;
        --v91;
      }

      while (v91);
      v94.i32[0] = 8 - a4;
      v93.i32[0] = a4;
      v95 = v145;
      v96 = v143;
      v97 = 16;
      v98 = vdupq_lane_s8(*v94.i8, 0);
      v99 = vdupq_lane_s8(*v93.i8, 0);
      do
      {
        v100 = 0;
        do
        {
          *&v96[v100] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v95[v100 + 64], *v99.i8), *&v95[v100], *v98.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v95[v100 + 64], v99), *&v95[v100], v98), 3uLL);
          v29 = v100 >= 0x30;
          v100 += 16;
        }

        while (!v29);
        v95 += 64;
        v96 += 64;
        --v97;
      }

      while (v97);
      v101 = v143;
      if (a12)
      {
        v102 = a7;
      }

      else
      {
        v102 = v143;
      }

      if (!a12)
      {
        v101 = a7;
      }

      v103 = v144;
      v104 = 16;
      v105.i64[0] = 0x4040404040404040;
      v105.i64[1] = 0x4040404040404040;
      do
      {
        v106 = 0;
        do
        {
          v107 = *(a8 + v106);
          v108 = vsubq_s8(v105, v107);
          *&v103[v106] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v108.i8, *&v101[v106]), *v107.i8, *&v102[v106]), 6uLL), vmlal_high_u8(vmull_high_u8(v108, *&v101[v106]), v107, *&v102[v106]), 6uLL);
          v106 += 16;
        }

        while (v106 != 64);
        v102 += 64;
        v101 += 64;
        a8 += a11;
        v103 += 64;
        --v104;
      }

      while (v104);
    }

    return (off_280ABCC68)(v144, 64, a5, a6, a13);
  }

  if (a3)
  {
    a9.i32[0] = 8 - a3;
    a10.i32[0] = a3;
    v38 = v145;
    if (a4 == 4)
    {
      v109 = 17;
      v110 = vdupq_lane_s8(a9, 0);
      v111 = vdupq_lane_s8(a10, 0);
      do
      {
        v112 = 0;
        do
        {
          *&v38[v112] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v112 + 1], *v111.i8), *&a1[v112], *v110.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&a1[v112 + 1], v111), *&a1[v112], v110), 3uLL);
          v29 = v112 >= 0x30;
          v112 += 16;
        }

        while (!v29);
        a1 += a2;
        v38 += 64;
        --v109;
      }

      while (v109);
      v113 = v145;
      v114 = v143;
      v115 = 16;
      do
      {
        v116 = 0;
        do
        {
          *&v114[v116] = vrhaddq_u8(*&v113[v116], *&v113[v116 + 64]);
          v29 = v116 >= 0x30;
          v116 += 16;
        }

        while (!v29);
        v113 += 64;
        v114 += 64;
        --v115;
      }

      while (v115);
      v117 = v143;
      if (a12)
      {
        v118 = a7;
      }

      else
      {
        v118 = v143;
      }

      if (!a12)
      {
        v117 = a7;
      }

      v119 = v144;
      v120 = 16;
      v121.i64[0] = 0x4040404040404040;
      v121.i64[1] = 0x4040404040404040;
      do
      {
        v122 = 0;
        do
        {
          v123 = *(a8 + v122);
          v124 = vsubq_s8(v121, v123);
          *&v119[v122] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v124.i8, *&v117[v122]), *v123.i8, *&v118[v122]), 6uLL), vmlal_high_u8(vmull_high_u8(v124, *&v117[v122]), v123, *&v118[v122]), 6uLL);
          v122 += 16;
        }

        while (v122 != 64);
        v118 += 64;
        v117 += 64;
        a8 += a11;
        v119 += 64;
        --v120;
      }

      while (v120);
    }

    else
    {
      if (!a4)
      {
        v39 = 16;
        v40 = vdupq_lane_s8(a9, 0);
        v41 = vdupq_lane_s8(a10, 0);
        do
        {
          v42 = 0;
          do
          {
            *&v38[v42] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v42 + 1], *v41.i8), *&a1[v42], *v40.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&a1[v42 + 1], v41), *&a1[v42], v40), 3uLL);
            v29 = v42 >= 0x30;
            v42 += 16;
          }

          while (!v29);
          a1 += a2;
          v38 += 64;
          --v39;
        }

        while (v39);
        v43 = v145;
        if (a12)
        {
          v44 = a7;
        }

        else
        {
          v44 = v145;
        }

        if (!a12)
        {
          v43 = a7;
        }

        v45 = v143;
        v46 = 16;
        v47.i64[0] = 0x4040404040404040;
        v47.i64[1] = 0x4040404040404040;
        do
        {
          v48 = 0;
          do
          {
            v49 = *(a8 + v48);
            v50 = vsubq_s8(v47, v49);
            *&v45[v48] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v50.i8, *&v43[v48]), *v49.i8, *&v44[v48]), 6uLL), vmlal_high_u8(vmull_high_u8(v50, *&v43[v48]), v49, *&v44[v48]), 6uLL);
            v48 += 16;
          }

          while (v48 != 64);
          v44 += 64;
          v43 += 64;
          a8 += a11;
          v45 += 64;
          --v46;
        }

        while (v46);
        return (off_280ABCC68)(v143, 64, a5, a6, a13);
      }

      v125 = 17;
      v126 = vdupq_lane_s8(a9, 0);
      v127 = vdupq_lane_s8(a10, 0);
      do
      {
        v128 = 0;
        do
        {
          *&v38[v128] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&a1[v128 + 1], *v127.i8), *&a1[v128], *v126.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&a1[v128 + 1], v127), *&a1[v128], v126), 3uLL);
          v29 = v128 >= 0x30;
          v128 += 16;
        }

        while (!v29);
        a1 += a2;
        v38 += 64;
        --v125;
      }

      while (v125);
      v126.i32[0] = 8 - a4;
      v127.i32[0] = a4;
      v129 = v145;
      v130 = v143;
      v131 = 16;
      v132 = vdupq_lane_s8(*v126.i8, 0);
      v133 = vdupq_lane_s8(*v127.i8, 0);
      do
      {
        v134 = 0;
        do
        {
          *&v130[v134] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v129[v134 + 64], *v133.i8), *&v129[v134], *v132.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v129[v134 + 64], v133), *&v129[v134], v132), 3uLL);
          v29 = v134 >= 0x30;
          v134 += 16;
        }

        while (!v29);
        v129 += 64;
        v130 += 64;
        --v131;
      }

      while (v131);
      v135 = v143;
      if (a12)
      {
        v136 = a7;
      }

      else
      {
        v136 = v143;
      }

      if (!a12)
      {
        v135 = a7;
      }

      v137 = v144;
      v138 = 16;
      v139.i64[0] = 0x4040404040404040;
      v139.i64[1] = 0x4040404040404040;
      do
      {
        v140 = 0;
        do
        {
          v141 = *(a8 + v140);
          v142 = vsubq_s8(v139, v141);
          *&v137[v140] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v142.i8, *&v135[v140]), *v141.i8, *&v136[v140]), 6uLL), vmlal_high_u8(vmull_high_u8(v142, *&v135[v140]), v141, *&v136[v140]), 6uLL);
          v140 += 16;
        }

        while (v140 != 64);
        v136 += 64;
        v135 += 64;
        a8 += a11;
        v137 += 64;
        --v138;
      }

      while (v138);
    }

    return (off_280ABCC68)(v144, 64, a5, a6, a13);
  }

  if (a4 == 4)
  {
    v51 = v145;
    v52 = 16;
    v53 = &a1[a2];
    do
    {
      v54 = 0;
      do
      {
        *&v51[v54] = vrhaddq_u8(*&a1[v54], *&v53[v54]);
        v29 = v54 >= 0x30;
        v54 += 16;
      }

      while (!v29);
      a1 += a2;
      v51 += 64;
      v53 += a2;
      --v52;
    }

    while (v52);
    v55 = v145;
    if (a12)
    {
      v56 = a7;
    }

    else
    {
      v56 = v145;
    }

    if (!a12)
    {
      v55 = a7;
    }

    v57 = v143;
    v58 = 16;
    v59.i64[0] = 0x4040404040404040;
    v59.i64[1] = 0x4040404040404040;
    do
    {
      v60 = 0;
      do
      {
        v61 = *(a8 + v60);
        v62 = vsubq_s8(v59, v61);
        *&v57[v60] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v62.i8, *&v55[v60]), *v61.i8, *&v56[v60]), 6uLL), vmlal_high_u8(vmull_high_u8(v62, *&v55[v60]), v61, *&v56[v60]), 6uLL);
        v60 += 16;
      }

      while (v60 != 64);
      v56 += 64;
      v55 += 64;
      a8 += a11;
      v57 += 64;
      --v58;
    }

    while (v58);
    return (off_280ABCC68)(v143, 64, a5, a6, a13);
  }

  if (a4)
  {
    a9.i32[0] = 8 - a4;
    a10.i32[0] = a4;
    v77 = &a1[a2];
    v78 = v145;
    v79 = 16;
    v80 = vdupq_lane_s8(a9, 0);
    v81 = vdupq_lane_s8(a10, 0);
    do
    {
      v82 = 0;
      do
      {
        *&v78[v82] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*&v77[v82], *v81.i8), *&a1[v82], *v80.i8), 3uLL), vmlal_high_u8(vmull_high_u8(*&v77[v82], v81), *&a1[v82], v80), 3uLL);
        v29 = v82 >= 0x30;
        v82 += 16;
      }

      while (!v29);
      a1 += a2;
      v78 += 64;
      v77 += a2;
      --v79;
    }

    while (v79);
    v83 = v145;
    if (a12)
    {
      v84 = a7;
    }

    else
    {
      v84 = v145;
    }

    if (!a12)
    {
      v83 = a7;
    }

    v85 = v143;
    v86 = 16;
    v87.i64[0] = 0x4040404040404040;
    v87.i64[1] = 0x4040404040404040;
    do
    {
      v88 = 0;
      do
      {
        v89 = *(a8 + v88);
        v90 = vsubq_s8(v87, v89);
        *&v85[v88] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v90.i8, *&v83[v88]), *v89.i8, *&v84[v88]), 6uLL), vmlal_high_u8(vmull_high_u8(v90, *&v83[v88]), v89, *&v84[v88]), 6uLL);
        v88 += 16;
      }

      while (v88 != 64);
      v84 += 64;
      v83 += 64;
      a8 += a11;
      v85 += 64;
      --v86;
    }

    while (v86);
    return (off_280ABCC68)(v143, 64, a5, a6, a13);
  }

  if (a12)
  {
    v13 = a7;
  }

  else
  {
    v13 = a1;
  }

  if (a12)
  {
    v14 = a1;
  }

  else
  {
    v14 = a7;
  }

  if (a12)
  {
    v15 = 64;
  }

  else
  {
    v15 = a2;
  }

  if (a12)
  {
    v16 = a2;
  }

  else
  {
    v16 = 64;
  }

  v17 = v15;
  v18 = v16;
  v19 = v145;
  v20 = 16;
  v21.i64[0] = 0x4040404040404040;
  v21.i64[1] = 0x4040404040404040;
  do
  {
    v22 = 0;
    do
    {
      v23 = *(a8 + v22);
      v24 = vsubq_s8(v21, v23);
      *&v19[v22] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v24.i8, *&v14[v22]), *v23.i8, *&v13[v22]), 6uLL), vmlal_high_u8(vmull_high_u8(v24, *&v14[v22]), v23, *&v13[v22]), 6uLL);
      v22 += 16;
    }

    while (v22 != 64);
    v13 += v17;
    v14 += v18;
    a8 += a11;
    v19 += 64;
    --v20;
  }

  while (v20);
  return (off_280ABCC68)(v145, 64, a5, a6, a13);
}

uint64_t sub_277A22B74(uint64_t result, uint8x8_t **a2, __n128 *a3, int a4, unsigned int a5, unsigned int a6)
{
  v468[3] = *MEMORY[0x277D85DE8];
  v6 = result + 245568;
  v7 = *(result + 246152);
  if (v7 < 1)
  {
    return result;
  }

  v8 = a6;
  v10 = result;
  v11 = 0;
  v383 = 0;
  v12 = 0;
  v364 = &a3[8046].n128_i32[1];
  v371 = a3 + 518;
  v347 = (result + 644576);
  v13 = result + 634344;
  v334 = (result + 463456);
  v14 = (result + 395460);
  v359 = (result + 270312);
  v15 = byte_277C3F990[a5];
  v16 = byte_277C42228[a5];
  v333 = (v7 + (1 << v16 >> 1)) >> v16;
  v17 = byte_277C3CFCC[a5];
  v343 = (a4 + (1 << v17 >> 1)) >> v17;
  v342 = *result;
  v332 = *result + 74728;
  v331 = *v332 + 96 * *(*result + 74752);
  v18 = (4 << v16);
  v19 = 4 << v17;
  v387 = a5;
  v329 = 0x20005uLL >> a5;
  v330 = 0x3EFFFCuLL >> a5;
  v328 = (v15 - 1) & a4;
  v20 = &off_27A71DA38;
  if (v18 >= 5)
  {
    v21 = &off_27A71DA38;
  }

  else
  {
    v21 = &off_27A71D9F8;
  }

  if (v19 < 5)
  {
    v20 = &off_27A71D9F8;
  }

  v349 = v20;
  v388 = vdupq_n_s64(v18 - 1);
  v346 = vdupq_n_s64(0x10uLL);
  v348 = a3 + 967;
  v356 = &a3[522].n128_i8[8];
  v400 = 4 << v17;
  v373 = v19 * v18 - 16;
  v374 = 4 * a4;
  v341 = 4 * v15;
  v325 = v18 - 1;
  v372 = v18;
  v402 = (result + 396704);
  v322 = v18 + 15;
  v323 = (v18 + 7) & 0xFFFFFFF8;
  v327 = &a3[37].n128_i8[9];
  v324 = v18 + 7;
  v320 = 2 * (v18 + 7);
  v321 = (v18 + 15) & 0xFFFFFFF0;
  v319 = v18 + 6;
  v317 = v18 + 5;
  v318 = 2 * (v18 + 6);
  v315 = v18 + 4;
  v316 = 2 * (v18 + 5);
  v313 = v18 | 3;
  v314 = 2 * (v18 + 4);
  v311 = v18 | 2;
  v312 = 2 * (v18 | 3);
  v309 = v18 | 1;
  v310 = 2 * (v18 | 2);
  v307 = 2 * v18;
  v308 = 2 * (v18 | 1);
  v305 = v18 + 13;
  v306 = v18 + 14;
  v303 = v18 + 11;
  v304 = v18 + 12;
  v301 = v18 + 9;
  v302 = v18 + 10;
  v395 = v18;
  v300 = v18 + 8;
  v360 = byte_277C3F990[a5];
  if (v15 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = byte_277C3F990[a5];
  }

  v326 = v22;
  v415 = result;
  v335 = result + 245568;
  v357 = result + 634344;
  v408 = result + 395460;
  v350 = v21;
  do
  {
    (*(v13 + 448))(v342 + 74872, v343, v12);
    if (*v357 >= 2)
    {
      pthread_mutex_lock(*(v357 + 440));
      v29 = *(v357 + 432);
      result = pthread_mutex_unlock(*(v357 + 440));
      if (v29)
      {
        return result;
      }
    }

    v30 = *(v332 + 184);
    v31 = 8 - (v30 + 4 * v383);
    v32 = v383 + v360;
    if (v31 <= (-8 - 4 * (v383 + v360)))
    {
      v31 = -8 - 4 * (v383 + v360);
    }

    *v364 = v31;
    v33 = *(v6 + 584);
    v34 = v30 + 4 * (v33 - v383 - v360) - 8;
    if (v34 >= 4 * (v33 - v383) + 8)
    {
      v34 = 4 * (v33 - v383) + 8;
    }

    v364[1] = v34;
    a3[521].n128_u32[1] = -32 * v383;
    v365 = v383 + v360;
    v35 = v33 - v32;
    a3[521].n128_u32[2] = 8 * (v33 - v32);
    v378 = a3[692].n128_u32[0];
    v36 = a3[523].n128_u64[1];
    v37 = *(v36 + 192);
    v336 = *v10 + 74728;
    v38 = *(*v10 + 74752);
    v352 = *v10;
    v384 = *(*v10 + 54268);
    v39 = *v334;
    v409 = *(v36 + 32);
    v40 = *(v36 + 40);
    v403 = *v36;
    v397 = *v336 + 96 * v38;
    v41 = *(v397 + 24);
    v355 = v14[7];
    v42 = *(v41 + 40);
    v453 = *(v41 + 56);
    v43 = *(v41 + 32);
    v450 = *(v41 + 36);
    v451 = v450;
    v45 = *(v36 + 144);
    v44 = *(v36 + 148);
    a3[190].n128_u32[1] = v45;
    a3[190].n128_u32[2] = v44;
    a3[353].n128_u32[1] = v45;
    a3[353].n128_u32[2] = v44;
    v46 = *a2;
    v380 = a2[1];
    v381 = a2[2];
    v354 = a2[3];
    v353 = a2[4];
    v47 = byte_277C36D60[a5];
    v48 = *(v6 + 628);
    v49 = byte_277C3F990[*(v6 + 608)];
    v50 = v383 + v48 * a4;
    v51 = a4 / v49;
    v52 = v383 / v49;
    *(*(v6 + 616) + 8 * v50) = *(v6 + 592) + 176 * (v52 + *(v6 + 604) * v51);
    v376 = (v37 >> 3) & 1;
    if (v376)
    {
      v46 >>= 1;
    }

    v401 = v46;
    v53 = (*(v6 + 616) + 8 * v50);
    a3[517].n128_u64[1] = v53;
    a3[520].n128_u64[1] = *(v6 + 632) + v50;
    a3[521].n128_u32[0] = v48;
    a3[1047].n128_u64[1] = *v6 + 84 * (v52 + *(v6 + 12) * v51);
    a3[522].n128_u32[0] = 32 * (*(v6 + 580) - a4 - v47);
    a3[521].n128_u32[1] = -32 * v383;
    a3[521].n128_u32[2] = 32 * v35;
    v54 = a3[516].n128_i32[0];
    v55 = v54 < a4;
    v56 = a3[516].n128_i32[2];
    v57 = v56 < v383;
    v371->n128_u8[1] = v57;
    if (!(v330 & 1 | (v45 == 0)))
    {
      v57 = v383 - 1 > v56;
    }

    v449 = v43;
    v452 = v42;
    v432 = 1;
    v431 = 1;
    v58.i64[0] = 0;
    v426 = 0u;
    v425 = 0u;
    v424 = 0u;
    v423 = 0u;
    v422 = 0u;
    v421 = 0u;
    v420 = 0u;
    v419 = 0u;
    v418 = 0u;
    v427 = 0xFFFFLL;
    a3[521].n128_u32[3] = -32 * a4;
    a3[26].n128_u32[0] = a4;
    a3[26].n128_u32[1] = v383;
    v371->n128_u8[0] = v55;
    v371->n128_u8[2] = v55;
    v371->n128_u8[3] = v57;
    if ((v329 & 1) != 0 && v44)
    {
      v55 = a4 - 1 > v54;
      v371->n128_u8[2] = v55;
    }

    if (v54 >= a4)
    {
      v59 = 0;
    }

    else
    {
      v59 = v53[-a3[26].n128_i32[2]];
    }

    a3[519].n128_u64[0] = v59;
    if (v56 >= v383)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(v53 - 1);
    }

    a3[518].n128_u64[1] = v60;
    if (a4 & 1) == 0 && v44 && (v47)
    {
      a3[26].n128_u8[12] = 0;
    }

    else
    {
      if (v360 & 1) == 0 || (v383)
      {
        a3[26].n128_u8[12] = 1;
LABEL_39:
        v61 = a3[26].n128_u32[2];
        v62 = &(&v53[-(v45 & v383)])[-(v61 * (v44 & a4))];
        if (v55)
        {
          v63 = v62[v45 - v61];
        }

        else
        {
          v63 = 0;
        }

        a3[520].n128_u64[0] = v63;
        if (v57)
        {
          v64 = v62[(v61 * v44) - 1];
        }

        else
        {
          v64 = 0;
        }

        a3[519].n128_u64[1] = v64;
        goto LABEL_46;
      }

      a3[26].n128_u8[12] = v45 == 0;
      if (!v45)
      {
        goto LABEL_39;
      }
    }

LABEL_46:
    v371[27].n128_u8[5] = v47;
    v371[27].n128_u8[4] = v360;
    v371[172].n128_u8[8] = 0;
    if (v360 < v47 && ((v47 - 1) & v365) == 0)
    {
      v371[172].n128_u8[8] = 1;
    }

    v339 = v12;
    v369 = 4 * v383;
    v375 = v378 & 0xFFFFFFFEFFFFFFFFLL | (((v37 >> 3) & 1) << 32);
    v345 = v38 - v39;
    v411 = (v40 + v409 * v374 + v369);
    v393 = v42.i64[0] + v43 * v374 + v369;
    v66 = v360 > v47 && v328 == 0;
    v371[172].n128_u8[9] = v66;
    v351 = v47;
    v67 = 3;
    if (*(*v359 + 77))
    {
      v67 = 1;
    }

    v68 = v327;
    __b = v401;
    do
    {
      v70 = (v341 >> *(v68 - 165));
      v71 = ((4 * v47) >> *(v68 - 161));
      if (v70 <= 4)
      {
        LOBYTE(v70) = 4;
      }

      *(v68 - 1) = v70;
      if (v71 <= 4)
      {
        v72 = 4;
      }

      else
      {
        v72 = v71;
      }

      *v68 = v72;
      v68 += 2608;
      --v67;
    }

    while (v67);
    v73 = *v53;
    *v73 = a5;
    v73[24] = 0;
    v73[16] = 0;
    if (v371->n128_u8[1] == 1 && *&byte_277BFDB54[4 * v8] + a4 < a3[516].n128_u32[1])
    {
      if ((*(a3[523].n128_u64[1] + 192) & 8) != 0)
      {
        if (v395 >= 1)
        {
          v99 = 2 * v393 - 2;
          v100 = *(v99 + 2 * v43 * v325);
          v42 = xmmword_277BB7070;
          v58 = xmmword_277BB7080;
          v23 = xmmword_277BB7090;
          v24 = xmmword_277BB70A0;
          v101 = v323;
          do
          {
            v102 = vmovn_s64(vcgeq_u64(v388, v24));
            if (vuzp1_s8(vuzp1_s16(v102, *v42.i8), *v42.i8).u8[0])
            {
              *(v99 + v307 * v43) = v100;
            }

            if (vuzp1_s8(vuzp1_s16(v102, *&v42), *&v42).i8[1])
            {
              *(v99 + v308 * v43) = v100;
            }

            if (vuzp1_s8(vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v388, *&v23))), *&v42).i8[2])
            {
              *(v99 + v310 * v43) = v100;
              *(v99 + v312 * v43) = v100;
            }

            v103 = vmovn_s64(vcgeq_u64(v388, v58));
            if (vuzp1_s8(*&v42, vuzp1_s16(v103, *&v42)).i32[1])
            {
              *(v99 + v314 * v43) = v100;
            }

            if (vuzp1_s8(*&v42, vuzp1_s16(v103, *&v42)).i8[5])
            {
              *(v99 + v316 * v43) = v100;
            }

            v104 = vmovn_s64(vcgeq_u64(v388, v42));
            *v26.i8 = vuzp1_s8(*v42.i8, vuzp1_s16(*v42.i8, v104));
            if (v26.i8[6])
            {
              *(v99 + v318 * v43) = v100;
            }

            if (vuzp1_s8(*&v42, vuzp1_s16(*&v42, v104)).i8[7])
            {
              *(v99 + v320 * v43) = v100;
            }

            v25 = vdupq_n_s64(8uLL);
            v58 = vaddq_s64(v58, v25);
            v23 = vaddq_s64(v23, v25);
            v24 = vaddq_s64(v24, v25);
            v42 = vaddq_s64(v42, v25);
            v99 += 16 * v43;
            v101 -= 8;
          }

          while (v101);
        }
      }

      else if (v395 >= 1)
      {
        v74 = *(v393 - 1 + v43 * v325);
        v75 = v11 + v43 * v374;
        v76 = v42.i64[0] - 1;
        v77 = v42.i64[0] - 1 + v322 * v43;
        v78 = 16 * v43;
        v79 = v42.i64[0] - 1 + v306 * v43;
        v80 = v42.i64[0] - 1 + v305 * v43;
        v81 = v42.i64[0] - 1 + v304 * v43;
        v82 = v42.i64[0] - 1 + v303 * v43;
        v83 = v42.i64[0] - 1 + v302 * v43;
        v84 = v42.i64[0] - 1 + v301 * v43;
        v85 = v42.i64[0] - 1 + v300 * v43;
        v86 = v42.i64[0] - 1 + v324 * v43;
        v87 = v42.i64[0] - 1 + v319 * v43;
        v88 = v42.i64[0] - 1 + v317 * v43;
        v89 = v42.i64[0] - 1 + v315 * v43;
        v90 = v42.i64[0] - 1 + v313 * v43;
        v91 = v321;
        v42 = xmmword_277BB70A0;
        v58 = xmmword_277BB7090;
        v92 = v76 + v311 * v43;
        v23 = xmmword_277BB7080;
        v24 = xmmword_277BB7070;
        v93 = v76 + v309 * v43;
        v25 = xmmword_277BB7480;
        v26 = xmmword_277BB7470;
        v27 = xmmword_277BB7460;
        v28 = xmmword_277BB7450;
        v94 = v76 + v395 * v43;
        do
        {
          v95 = vmovn_s64(vcgeq_u64(v388, v42));
          if (vuzp1_s8(vuzp1_s16(v95, *v42.i8), *v42.i8).u8[0])
          {
            *(v94 + v75) = v74;
          }

          if (vuzp1_s8(vuzp1_s16(v95, *&v42), *&v42).i8[1])
          {
            *(v93 + v75) = v74;
          }

          if (vuzp1_s8(vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v388, *&v58))), *&v42).i8[2])
          {
            *(v92 + v75) = v74;
            *(v90 + v75) = v74;
          }

          v96 = vmovn_s64(vcgeq_u64(v388, v23));
          if (vuzp1_s8(*&v42, vuzp1_s16(v96, *&v42)).i32[1])
          {
            *(v89 + v75) = v74;
          }

          if (vuzp1_s8(*&v42, vuzp1_s16(v96, *&v42)).i8[5])
          {
            *(v88 + v75) = v74;
          }

          if (vuzp1_s8(*&v42, vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v388, *&v24)))).i8[6])
          {
            *(v87 + v75) = v74;
            *(v86 + v75) = v74;
          }

          v97 = vmovn_s64(vcgeq_u64(v388, v25));
          if (vuzp1_s8(vuzp1_s16(v97, *v42.i8), *v42.i8).u8[0])
          {
            *(v85 + v75) = v74;
          }

          if (vuzp1_s8(vuzp1_s16(v97, *&v42), *&v42).i8[1])
          {
            *(v84 + v75) = v74;
          }

          if (vuzp1_s8(vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v388, *&v26))), *&v42).i8[2])
          {
            *(v83 + v75) = v74;
            *(v82 + v75) = v74;
          }

          v98 = vmovn_s64(vcgeq_u64(v388, v27));
          if (vuzp1_s8(*&v42, vuzp1_s16(v98, *&v42)).i32[1])
          {
            *(v81 + v75) = v74;
          }

          if (vuzp1_s8(*&v42, vuzp1_s16(v98, *&v42)).i8[5])
          {
            *(v80 + v75) = v74;
          }

          if (vuzp1_s8(*&v42, vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v388, *&v28)))).i8[6])
          {
            *(v79 + v75) = v74;
            *(v77 + v75) = v74;
          }

          v77 += v78;
          v23 = vaddq_s64(v23, v346);
          v58 = vaddq_s64(v58, v346);
          v79 += v78;
          v80 += v78;
          v81 += v78;
          v82 += v78;
          v42 = vaddq_s64(v42, v346);
          v24 = vaddq_s64(v24, v346);
          v83 += v78;
          v84 += v78;
          v85 += v78;
          v86 += v78;
          v25 = vaddq_s64(v25, v346);
          v26 = vaddq_s64(v26, v346);
          v27 = vaddq_s64(v27, v346);
          v87 += v78;
          v88 += v78;
          v89 += v78;
          v90 += v78;
          v28 = vaddq_s64(v28, v346);
          v92 += v78;
          v93 += v78;
          v94 += v78;
          v91 -= 16;
        }

        while (v91);
      }
    }

    v340 = v11;
    v105 = 0;
    v106 = 0;
    v107 = *v359;
    if (*v408)
    {
      v108 = 3;
    }

    else
    {
      v108 = 13;
    }

    v391 = byte_277C3CAFE[a5];
    v389 = byte_277C3CAE8[a5];
    v399 = 0x7FFFFFFF;
    do
    {
      v109 = v106;
      sub_277A792E0(&a3[26], *(v107 + 28), *(v107 + 61), v391, v389, a6, v105, 0, *v42.i64, *v58.i64, *v23.i64, *v24.i64, *v25.i64, v26, v27, *v28.i8, 0, 5u, v393, v43, __b, v395, 0, 0, 0);
      if (*(v397 + 92))
      {
        v110 = (*(*v10 + (a5 << 7) + 51440))(v411, v409, __b, v395);
        v106 = v109;
      }

      else
      {
        sub_277A8E2E0(v375, v400, v395, v380, v372, v411, v409, __b, v372);
        v454.n128_u64[0] = 0;
        v454.n128_u8[1] = a6;
        v454.n128_u64[1] = __PAIR64__(v376, v378);
        v455.n128_u64[0] = 5;
        sub_277ADCA70(v380, v381, v395, &v454);
        v24 = *(v381 + 48);
        v23 = vabsq_s32(*(v381 + 32));
        v111 = vaddq_s32(vabsq_s32(*(v381 + 16)), vabsq_s32(*v381));
        v58 = vaddq_s32(vabsq_s32(v24), v23);
        v112 = v373;
        if (v373)
        {
          v113 = (v381 + 112);
          v106 = v109;
          do
          {
            v24 = v113[-2];
            v25 = v113[-1];
            v26 = *v113;
            v111 = vaddq_s32(vaddq_s32(vabsq_s32(v113[-3]), v111), vabsq_s32(v25));
            v23 = vabsq_s32(*v113);
            v58 = vaddq_s32(vaddq_s32(vabsq_s32(v24), v58), v23);
            v113 += 4;
            v112 -= 16;
          }

          while (v112);
        }

        else
        {
          v106 = v109;
        }

        v42 = vaddq_s32(v111, v58);
        v42.i32[0] = vaddvq_s32(v42);
        v110 = v42.i32[0];
        __b = v401;
      }

      v114 = v399;
      if (v110 < v399)
      {
        v106 = v105;
        v114 = v110;
      }

      v399 = v114;
      ++v105;
    }

    while (v105 != v108);
    if (*(v397 + 92))
    {
      v115 = v106;
      sub_277A792E0(&a3[26], *(v107 + 28), *(v107 + 61), v391, v389, a6, v106, 0, *v42.i64, *v58.i64, *v23.i64, *v24.i64, *v25.i64, v26, v27, *v28.i8, 0, 5u, v393, v43, __b, v395, 0, 0, 0);
      sub_277A8E2E0(v375, v400, v395, v380, v372, v411, v409, __b, v372);
      v454.n128_u64[0] = 0;
      v454.n128_u8[1] = a6;
      v454.n128_u64[1] = __PAIR64__(v376, v378);
      v455.n128_u64[0] = 5;
      sub_277ADCA70(v380, v381, v395, &v454);
      v24 = *(v381 + 48);
      v23 = vabsq_s32(*(v381 + 32));
      v116 = vaddq_s32(vabsq_s32(*(v381 + 16)), vabsq_s32(*v381));
      v58 = vaddq_s32(vabsq_s32(v24), v23);
      v117 = v373;
      if (v373)
      {
        v118 = (v381 + 112);
        do
        {
          v24 = v118[-2];
          v25 = v118[-1];
          v26 = *v118;
          v116 = vaddq_s32(vaddq_s32(vabsq_s32(v118[-3]), v116), vabsq_s32(v25));
          v23 = vabsq_s32(*v118);
          v58 = vaddq_s32(vaddq_s32(vabsq_s32(v24), v58), v23);
          v118 += 4;
          v117 -= 16;
        }

        while (v117);
      }

      v42 = vaddq_s32(v116, v58);
      v42.i32[0] = vaddvq_s32(v42);
      v399 = v42.i32[0];
      v10 = v415;
      LOBYTE(v106) = v115;
    }

    v430 = 1;
    v344 = v106;
    if (v347[8])
    {
      sub_277A25308(&v430, &v432, &v431, v380, v381, v354, v353, *v359, *v42.i64, *v58.i64, *v23.i64, *v24.i64, *v25.i64, v26, v27, *v28.i8, a3, 0, &v452, &v449, a6, v106, a4, v383, v355, 1);
      v119 = v432;
      v120 = v431;
      *(&v418 + 1) = 16 * v432;
      *&v418 = 16 * v431;
      DWORD2(v424) = v430;
    }

    else
    {
      v120 = 1;
      v119 = 1;
    }

    v121 = v371;
    v337 = v120;
    v338 = v119;
    if (*v347 && v345 < *(*v347 + 18128) && *(v336 + 24) < *(v352 + 6664) && (v122 = MEMORY[0x16], MEMORY[0x16] <= 0xCu) && v108 <= MEMORY[0x16])
    {
      v8 = a6;
      sub_277A792E0(&a3[26], *(v107 + 28), *(v107 + 61), v391, v389, a6, MEMORY[0x16], 0, *v42.i64, *v58.i64, *v23.i64, *v24.i64, *v25.i64, v26, v27, *v28.i8, 0, 5u, v393, v43, __b, v395, 0, 0, 0);
      v123 = v411;
      sub_277A8E2E0(v375, v400, v395, v380, v372, v411, v409, __b, v372);
      v454.n128_u64[0] = 0;
      v454.n128_u8[1] = a6;
      v454.n128_u64[1] = __PAIR64__(v376, v378);
      v455.n128_u64[0] = 5;
      sub_277ADCA70(v380, v381, v395, &v454);
      v24 = *(v381 + 48);
      v23 = vabsq_s32(*(v381 + 32));
      v124 = vaddq_s32(vabsq_s32(*(v381 + 16)), vabsq_s32(*v381));
      v58 = vaddq_s32(vabsq_s32(v24), v23);
      v125 = v373;
      if (v373)
      {
        v126 = (v381 + 112);
        v14 = v408;
        v121 = v371;
        v127 = v409;
        do
        {
          v24 = v126[-2];
          v25 = v126[-1];
          v26 = *v126;
          v124 = vaddq_s32(vaddq_s32(vabsq_s32(v126[-3]), v124), vabsq_s32(v25));
          v23 = vabsq_s32(*v126);
          v58 = vaddq_s32(vaddq_s32(vabsq_s32(v24), v58), v23);
          v126 += 4;
          v125 -= 16;
        }

        while (v125);
      }

      else
      {
        v14 = v408;
        v121 = v371;
        v127 = v409;
      }

      v297 = vaddvq_s32(vaddq_s32(v124, v58));
      v298 = v399;
      v299 = v344;
      if (v297 < v399)
      {
        v299 = v122;
      }

      v344 = v299;
      if (v297 < v399)
      {
        v298 = v297;
      }

      v399 = v298;
    }

    else
    {
      v14 = v408;
      v8 = a6;
      v123 = v411;
      v127 = v409;
    }

    v128 = 0;
    *(*a3[517].n128_u64[1] + 16) = 0;
    *(*a3[517].n128_u64[1] + 17) = -1;
    v129 = v352 + 74816;
    v130 = v352 + 74760;
    v366 = (a4 - v351) >> v384;
    v363 = v383 >> v384;
    v362 = a4 >> v384;
    v361 = (v383 - v360) >> v384;
    *(*a3[517].n128_u64[1] + 167) |= 0x200u;
    v448 = 0x8000800080008000;
    v358 = v365 >> v384;
    v392 = 0x7FFFFFFF;
    v390 = -1;
    LODWORD(v394) = -2147450880;
    v379 = v352 + 74816;
    v377 = v352 + 74760;
    do
    {
      v447[v128] = -2147450880;
      if (!*(v129 + 8 * v128) || (v131 = *(v130 + 8 * v128)) == 0)
      {
        *(&v425 + v128 + 1) = -2147450880;
        goto LABEL_232;
      }

      v132 = *(v131 + 32);
      v133 = *(v131 + 40);
      v406 = *v131;
      v429 = 0;
      __base = xmmword_277BED840;
      v446 = unk_277BED850;
      v134 = v121->n128_u8[0];
      if (v134 == 1)
      {
        v135 = *(*(v397 + 8) + 200 * (v363 + *(v397 + 64) * v366) + 4 * v128 + 164);
        v136 = dword_277BED878[v14[2]];
        v137 = v135 >> 16;
        if (v135 >> 16 < 0)
        {
          v137 = -v137;
        }

        v138 = 0uLL;
        if (v137 >= v136)
        {
          goto LABEL_158;
        }

        v139 = v135;
        if ((v135 & 0x8000u) != 0)
        {
          v139 = -v135;
        }

        if (v139 >= v136)
        {
LABEL_158:
          DWORD2(__base) = *(*(v397 + 8) + 200 * (v363 + *(v397 + 64) * v366) + 4 * v128 + 164);
          v140 = 2;
        }

        else
        {
          v140 = 1;
        }
      }

      else
      {
        v140 = 1;
        v138 = 0uLL;
      }

      if (v121->n128_u8[1] == 1)
      {
        v141 = dword_277BED878[v14[2]];
        v142 = *(*(v397 + 8) + 200 * (v361 + *(v397 + 64) * v362) + 4 * v128 + 164);
        v143 = &__base + 1;
        v144 = v140;
        while (1)
        {
          v145 = *v143 - (v142 >> 16);
          if (v145 < 0)
          {
            v145 = (v142 >> 16) - *v143;
          }

          if (v145 < v141)
          {
            v146 = *(v143 - 1) - v142;
            if (v146 < 0)
            {
              v146 = v142 - *(v143 - 1);
            }

            if (v146 < v141)
            {
              break;
            }
          }

          v143 += 4;
          if (!--v144)
          {
            *(&__base + 2 * v140++) = v142;
            break;
          }
        }
      }

      if (v134 && v365 < a3[516].n128_u32[3])
      {
        v147 = dword_277BED878[v14[2]];
        v148 = *(*(v397 + 8) + 200 * (v358 + *(v397 + 64) * v366) + 4 * v128 + 164);
        v149 = &__base + 1;
        v150 = v140;
        while (1)
        {
          v151 = *v149 - (v148 >> 16);
          if (v151 < 0)
          {
            v151 = (v148 >> 16) - *v149;
          }

          if (v151 < v147)
          {
            v152 = *(v149 - 1) - v148;
            if (v152 < 0)
            {
              v152 = v148 - *(v149 - 1);
            }

            if (v152 < v147)
            {
              break;
            }
          }

          v149 += 4;
          if (!--v150)
          {
            *(&__base + 2 * v140++) = v148;
            break;
          }
        }
      }

      v153 = v133 + v369 + v132 * v374;
      v385 = v128;
      if (!v14[4] || v140 < 2)
      {
        goto LABEL_203;
      }

      v368 = v140;
      v154 = v140;
      v155 = &__base + 1;
      __nel = v140;
      do
      {
        v156 = *(v155 - 2) + ((*(v155 - 1) & 0x8000) == 0) + 3;
        v157 = *(v155 - 1) + ((*(v155 - 1) & 0x8000) == 0) + 3;
        v158 = v157 >> 3;
        if (v157 >> 3 >= v364[1])
        {
          LOWORD(v158) = v364[1];
        }

        if (*v364 <= v157 >> 3)
        {
          v159 = v158;
        }

        else
        {
          v159 = *v364;
        }

        v160 = v156 >> 3;
        if (v156 >> 3 >= v364[3])
        {
          LOWORD(v160) = v364[3];
        }

        if (v364[2] <= v156 >> 3)
        {
          v161 = v160;
        }

        else
        {
          v161 = v364[2];
        }

        *v155 = (*(*v10 + (v387 << 7) + 51440))(v411, v409, v153 + v161 * v132 + v159, v132, v138);
        v155 += 2;
        --v154;
      }

      while (v154);
      qsort(&__base, __nel, 8uLL, sub_277A25DF4);
      v14 = v408;
      v162 = 4 - *(v408 + 16);
      if (v162 >= v368)
      {
        v162 = v368;
      }

      if (v162 >= 2)
      {
        v163 = *(&__base + 2 * (v162 - 2) + 1);
        if (5 * (*(&__base + 2 * (v162 - 1) + 1) - v163) <= v163)
        {
          v140 = v162;
        }

        else
        {
          v140 = v162 - 1;
        }

        v138 = 0uLL;
LABEL_203:
        v164 = 0;
        v165 = -1;
        p_base = &__base;
        v167 = v140;
        do
        {
          v428 = 0;
          v168 = *p_base;
          p_base += 2;
          v436 = v168;
          v435 = 0;
          v434 = 0;
          v433 = 0;
          a3[3].n128_u64[0] = v411;
          v169 = ((((v168 >> 16) + (v168 >= 0)) << 13) + 24576) & 0xFFFF0000 | (((((v168 >> 15) & 1) == 0) + v168 + 3) >> 3);
          a3[4].n128_u32[2] = v409;
          a3[4].n128_u32[0] = v403;
          a3[30].n128_u64[0] = v153;
          a3[31].n128_u32[2] = v132;
          a3[31].n128_u32[0] = v406;
          if (*(v408 + 4) >= 9)
          {
            v170 = 9;
          }

          else
          {
            v170 = *(v408 + 4);
          }

          v171 = 418944;
          if (*(v415 + 399884) == v132)
          {
            v171 = 396712;
          }

          v467 = v138;
          v466 = v138;
          v465 = v138;
          v464 = v138;
          v463 = v138;
          v462 = v138;
          v461 = v138;
          v460 = v138;
          v459 = v138;
          v458 = v138;
          v457 = v138;
          v456 = v138;
          v455 = v138;
          v454 = v138;
          sub_277B99138(&v454, v415, a3, a5, &v436, v169, v415 + v171, *(v408 + 13), 0);
          if (*(v408 + 232))
          {
            if (*(v408 + 320))
            {
              v172 = v468;
            }

            else
            {
              v172 = 0;
            }
          }

          else
          {
            v172 = 0;
          }

          v173 = sub_277B99630(v169, &v454, v170, v172, &v428, &v434, 0);
          if (*(v408 + 12) == 3)
          {
            v428 = (8 * (v428 & 0x1FFF)) | (HIWORD(v428) << 19);
          }

          else
          {
            v444 = 0;
            memset(v443, 0, sizeof(v443));
            v442 = 0u;
            v441 = 0u;
            v440 = 0u;
            v439 = 0u;
            v438 = 0u;
            v437 = 0u;
            v174 = sub_277B99474(&v437, v415, a3, a5, &v436, v468);
            LOBYTE(v438) = *(v408 + 12);
            LOBYTE(v443[0]) = 1;
            BYTE4(v440) = 4;
            LODWORD(v434) = 0;
            v173 = (*v402)(a3 + 26, v415 + 245616, &v437, ((HIWORD(v428) & 0x1FFF) << 19) | (8 * (v428 & 0x1FFF)), &v434, &v428, &v433 + 4, &v433, v174, 0);
          }

          v138 = 0uLL;
          if (v173 < v165)
          {
            v164 = v428;
            v165 = v173;
          }

          --v167;
        }

        while (v167);
        v429 = v164;
        v8 = a6;
        v10 = v415;
        v14 = v408;
        goto LABEL_221;
      }

      v138 = 0uLL;
      if (v162 == 1)
      {
        v140 = 1;
        goto LABEL_203;
      }

      v164 = 0;
      v8 = a6;
LABEL_221:
      *(&v425 + v385 + 1) = v164;
      v447[v385] = v164;
      v123 = v411;
      v127 = v409;
      v175 = sub_277A259D0(v10, *(a3[523].n128_u64[1] + 192), a3[692].n128_i32[0], v411, v409, a2, a5, v8, a4, v383, v385, &v429, *(v397 + 92));
      if (v175 <= 1)
      {
        v176 = 1;
      }

      else
      {
        v176 = v175;
      }

      *(&v420 + v385) = v176;
      v177 = v392;
      v178 = v175 < v392;
      if (v175 >= v392)
      {
        v179 = v394;
      }

      else
      {
        v179 = v164;
      }

      v128 = v385;
      LODWORD(v394) = v179;
      if (v175 < v392)
      {
        v177 = v175;
      }

      v392 = v177;
      v180 = v390;
      if (v178)
      {
        v180 = v385;
      }

      v390 = v180;
      v121 = v371;
      v129 = v352 + 74816;
      v130 = v352 + 74760;
LABEL_232:
      ++v128;
    }

    while (v128 != 7);
    LODWORD(v448) = v394;
    if (v392 == 0x7FFFFFFF)
    {
      v181 = 0x7FFFFFFF;
    }

    else
    {
      if (*(v397 + 92))
      {
        v392 = sub_277A259D0(v10, *(a3[523].n128_u64[1] + 192), a3[692].n128_i32[0], v123, v127, a2, a5, v8, a4, v383, v390, &v448, 0);
      }

      if (v390 == -1)
      {
        v130 = v352 + 74760;
        v181 = v392;
      }

      else
      {
        v181 = v392;
        if (v392 < v399)
        {
          *(*a3[517].n128_u64[1] + 16) = v390 + 1;
          *(*a3[517].n128_u64[1] + 8) = v394;
          v344 = 16;
        }

        v130 = v352 + 74760;
      }
    }

    *&v446 = 0x600000003;
    v182.i64[0] = 0x400000000;
    __base = xmmword_277BED860;
    v183 = v14[6];
    if (v183)
    {
      v184 = 3;
    }

    else
    {
      v184 = 0;
    }

    if (!*v347 || v345 >= *(*v347 + 18128) || *(v336 + 24) >= *(v352 + 6664) || MEMORY[0x14] < 1 || MEMORY[0x15] < 1)
    {
      a3[26].n128_u32[0] = a4;
      a3[26].n128_u32[1] = v383;
      if (v183)
      {
        v188 = 0;
        v187 = v356;
        goto LABEL_260;
      }

      v189 = -1;
      LODWORD(v230) = -2147450880;
LABEL_302:
      v231 = v351;
      v233 = v337;
      v232 = v338;
      goto LABEL_303;
    }

    v185 = &__base + 1;
    v186 = 3;
    v187 = v356;
    while (*(v185 - 1) + 1 != MEMORY[0x14] || *v185 + 1 != MEMORY[0x15])
    {
      v185 += 2;
      if (!--v186)
      {
        LODWORD(v446) = MEMORY[0x14] - 1;
        DWORD1(v446) = MEMORY[0x15] - 1;
        if (!v183)
        {
          goto LABEL_379;
        }

LABEL_377:
        v188 = 0;
        goto LABEL_380;
      }
    }

    if (v183)
    {
      goto LABEL_377;
    }

    LODWORD(v446) = MEMORY[0x14] - 1;
    DWORD1(v446) = MEMORY[0x15] - 1;
LABEL_379:
    v184 = 3;
    v188 = 2;
LABEL_380:
    a3[26].n128_u32[0] = a4;
    a3[26].n128_u32[1] = v383;
LABEL_260:
    v189 = -1;
    v394 = v448;
    v386 = v184;
    do
    {
      v190 = &__base + 2 * v188;
      v191 = *v190;
      if (*(v129 + 8 * v191))
      {
        v192 = *(v130 + 8 * v191);
        if (v192)
        {
          v193 = v190[1];
          if (*(v129 + 8 * v193))
          {
            v194 = *(v130 + 8 * v193);
            if (v194)
            {
              v398 = v188;
              v404 = v189;
              *(*a3[517].n128_u64[1] + 16) = v191 + 1;
              *(*a3[517].n128_u64[1] + 17) = v193 + 1;
              v195 = a3[517].n128_u64[1];
              v196 = *v195;
              *(v196 + 2) = 24;
              v197 = *(v196 + 17);
              v198 = *(v196 + 16);
              if (v197 >= 1)
              {
                if (v197 >= 5 && v198 < 5)
                {
LABEL_274:
                  LOBYTE(v198) = v198 + 4 * v197 - 13;
                }

                else
                {
                  v200 = 0;
                  while (byte_277C3BCCC[v200] != v198 || v197 != byte_277C3BCD5[v200])
                  {
                    if (++v200 == 9)
                    {
                      goto LABEL_274;
                    }
                  }

                  LOBYTE(v198) = v200 + 20;
                }
              }

              v201 = 0;
              v202 = &v348[2 * v198];
              v203 = v447[v191];
              v202->n128_u32[2 * ((*(v196 + 167) >> 4) & 3)] = v203;
              v204 = v447[v193];
              v202->n128_u32[2 * ((*(*v195 + 167) >> 4) & 3) + 1] = v204;
              v205 = &v437;
              v206 = 1;
              v207 = v192;
              do
              {
                v208 = v206;
                sub_277A8B4EC(&a3[26], v205, v207, *&v187[8 * v201], *&v187[8 * v201], 3);
                v209 = 0;
                v210 = &v437 + 6 * v201;
                v211 = 32 * v201 + 480;
                do
                {
                  v212 = (a3->n128_u64 + v211);
                  v213 = v210[v209 + 1];
                  *v212 = v210[v209];
                  v212[1] = v213;
                  v209 += 2;
                  v211 += 2608;
                }

                while (v209 != 6);
                v206 = 0;
                v205 = v443;
                v207 = v194;
                v201 = 1;
              }

              while ((v208 & 1) != 0);
              v468[0] = __PAIR64__(v204, v203);
              LODWORD(v434) = 0;
              sub_277A50334(v415, a3, a5, v468, 0, 0, &v434, *(v408 + 344) == 0, 2);
              v214 = 0;
              v215 = 1;
              do
              {
                v216 = v215;
                v217 = *(v192 + 40);
                v218 = *v192;
                v219 = *(v192 + 8);
                v220 = *(v192 + 32);
                v467.n128_u64[0] = 0;
                v466 = 0u;
                v465 = 0u;
                v464 = 0u;
                v463 = 0u;
                v462 = 0u;
                v461 = 0u;
                v460 = 0u;
                v459 = 0u;
                v458 = 0u;
                v457 = 0u;
                v456 = 0u;
                v455 = 0u;
                v454 = 0u;
                v221 = a3[692].n128_i32[0];
                v222 = (*(a3[523].n128_u64[1] + 192) >> 3) & 1;
                v461.n128_u64[0] = __PAIR64__(v400, v395);
                v461.n128_u32[2] = 4 * a4;
                v461.n128_u32[3] = 4 * v383;
                v465.n128_u64[0] = __PAIR64__(v222, v221);
                v467.n128_u64[0] = vdup_n_s32(0xFFFB9000);
                v460.n128_u64[0] = v350;
                v460.n128_u64[1] = v349;
                v464.n128_u64[1] = v352 + 74736;
                v462.n128_u64[1] = v217;
                v463.n128_u64[0] = __PAIR64__(v219, v218);
                v463.n128_u32[2] = v220;
                v454.n128_u32[1] = 1;
                v223 = a3[965].n128_u64[1];
                v224 = v221 - 7;
                if (v221 <= 10)
                {
                  v224 = 3;
                }

                v457.n128_u32[0] = v214;
                v457.n128_u64[1] = v223;
                v458.n128_u32[0] = 128;
                *(v458.n128_u64 + 4) = v224 | 0x700000000;
                v459 = 1uLL;
                sub_2779CAFC0();
                v215 = 0;
                v192 = v194;
                v214 = 1;
              }

              while ((v216 & 1) != 0);
              sub_277A8E2E0(v375, v400, v395, v380, v372, v411, v409, v401, v372);
              v454.n128_u64[0] = 0;
              v8 = a6;
              v454.n128_u8[1] = a6;
              v454.n128_u64[1] = __PAIR64__(v376, v378);
              v455.n128_u64[0] = 5;
              sub_277ADCA70(v380, v381, v395, &v454);
              v24 = *(v381 + 48);
              v23 = vabsq_s32(*(v381 + 32));
              v225 = vaddq_s32(vabsq_s32(*(v381 + 16)), vabsq_s32(*v381));
              v58 = vaddq_s32(vabsq_s32(v24), v23);
              v226 = v373;
              if (v373)
              {
                v227 = (v381 + 112);
                v10 = v415;
                v14 = v408;
                v187 = v356;
                v129 = v352 + 74816;
                v130 = v352 + 74760;
                v189 = v404;
                v184 = v386;
                v188 = v398;
                do
                {
                  v24 = v227[-2];
                  v25 = v227[-1];
                  v26 = *v227;
                  v225 = vaddq_s32(vaddq_s32(vabsq_s32(v227[-3]), v225), vabsq_s32(v25));
                  v23 = vabsq_s32(*v227);
                  v58 = vaddq_s32(vaddq_s32(vabsq_s32(v24), v58), v23);
                  v227 += 4;
                  v226 -= 16;
                }

                while (v226);
              }

              else
              {
                v10 = v415;
                v14 = v408;
                v187 = v356;
                v129 = v352 + 74816;
                v130 = v352 + 74760;
                v189 = v404;
                v184 = v386;
                v188 = v398;
              }

              v182 = vaddq_s32(v225, v58);
              v182.i32[0] = vaddvq_s32(v182);
              v228 = v182.i32[0] < v181;
              v229 = v394;
              if (v182.i32[0] < v181)
              {
                v229 = v468[0];
              }

              v394 = v229;
              if (v182.i32[0] < v181)
              {
                v181 = v182.i32[0];
              }

              if (v228)
              {
                v189 = v188;
              }
            }

            else
            {
              v14 = v408;
            }
          }
        }
      }

      ++v188;
    }

    while (v188 != v184);
    v448 = v394;
    v230 = HIDWORD(v394);
    if (v189 == -1)
    {
      goto LABEL_302;
    }

    v231 = v351;
    v233 = v337;
    v232 = v338;
    if (v181 < v399)
    {
      v234 = &__base + 8 * v189;
      v235 = *v234;
      LOBYTE(v234) = v234[4];
      *(*a3[517].n128_u64[1] + 16) = v235 + 1;
      *(*a3[517].n128_u64[1] + 17) = v234 + 1;
      v236 = 24;
      goto LABEL_305;
    }

LABEL_303:
    v237 = 0;
    if (v181 == 0x7FFFFFFF)
    {
      v236 = v344;
    }

    else
    {
      v236 = v344;
      if ((v344 - 25) >= 0xF4u)
      {
LABEL_305:
        *(*a3[517].n128_u64[1] + 8) = v394;
        v412 = v230;
        *(*a3[517].n128_u64[1] + 12) = v230;
        v238 = v189;
        if ((v189 & 0x80000000) != 0)
        {
          v241 = 0;
          v240 = v390;
        }

        else
        {
          v239 = &__base + 2 * v189;
          v240 = *v239;
          v241 = *(v130 + 8 * v239[1]);
        }

        v454.n128_u64[0] = *(v130 + 8 * v240);
        v454.n128_u64[1] = v241;
        v430 = 1;
        sub_277A25308(&v430, &v432, &v431, v380, v381, v354, v353, *v359, *v182.i64, *v58.i64, *v23.i64, *v24.i64, *v25.i64, v26, v27, *v28.i8, a3, &v454, &v452, &v449, v8, v236, a4, v383, v355, 0);
        v237 = v430;
        LODWORD(v424) = v430;
        v232 = v432;
        v233 = v431;
        v189 = v238;
        LODWORD(v230) = v412;
      }
    }

    v242 = v399;
    if (v399 <= 1)
    {
      v242 = 1;
    }

    if (v242 >= v181)
    {
      v243 = v181;
    }

    else
    {
      v243 = v242;
    }

    *(&v423 + 1) = __PAIR64__(v243, v242);
    v244 = 16 * v232;
    *(&v416 + 1) = 16 * v232;
    *&v416 = 16 * v233;
    v430 = 0;
    v405 = v189;
    v413 = v230;
    if (v236 == 24)
    {
      v245 = v237;
      v246 = &__base + 2 * v189;
      v248 = *v246;
      v247 = v246[1];
      v454.n128_u64[0] = *(v379 + 8 * v248);
      v249 = *(v379 + 8 * v247);
      v250 = 24;
    }

    else
    {
      if ((v390 & 0x80000000) != 0)
      {
        v251 = 0;
      }

      else
      {
        v251 = *(v379 + 8 * v390);
      }

      v245 = v237;
      v249 = 0;
      v454.n128_u64[0] = v251;
      v250 = v236;
    }

    v454.n128_u64[1] = v249;
    sub_277A25308(&v430, &v432, &v431, v380, v381, v354, v353, *v359, *v182.i64, *v58.i64, *v23.i64, *v24.i64, *v25.i64, v26, v27, *v28.i8, a3, &v454, &v452, &v449, v8, v250, a4, v383, v355, 1);
    *&v417 = 16 * v431;
    if ((v236 - 25) <= 0xF3u)
    {
      *(&v416 + 1) = 16 * v432;
      *&v416 = 16 * v431;
      *(&v417 + 1) = 16 * v432;
      LODWORD(v424) = v430;
      DWORD1(v424) = v430;
      goto LABEL_353;
    }

    v260 = v236;
    if (v244 <= 16 * v432)
    {
      v261 = 16 * v432;
    }

    else
    {
      v261 = v244;
    }

    *(&v417 + 1) = v261;
    if (v245 <= v430)
    {
      v262 = v430;
    }

    else
    {
      v262 = v245;
    }

    DWORD1(v424) = v262;
    if (v260 == 24)
    {
      v263 = &__base + 2 * v405;
      v410 = *v263;
      v407 = v263[1];
      v454.n128_u64[0] = *(v379 + 8 * v410);
      v454.n128_u64[1] = *(v377 + 8 * v407);
      sub_277A25308(&v430, &v432, &v431, v380, v381, v354, v353, *v359, v252, v253, v254, v255, v256, v257, v258, v259, a3, &v454, &v452, &v449, v8, 0x18u, a4, v383, v355, 1);
      if (v244 <= 16 * v432)
      {
        v272 = 16 * v432;
      }

      else
      {
        v272 = v244;
      }

      if (v245 <= v430)
      {
        v273 = v430;
      }

      else
      {
        v273 = v245;
      }

      if (v261 < v272)
      {
        v272 = v261;
      }

      *&v419 = v272;
      if (v262 >= v273)
      {
        v274 = v273;
      }

      else
      {
        v274 = v262;
      }

      HIDWORD(v424) = v274;
      v275 = *(v377 + 8 * v410);
      v430 = 0;
      v454.n128_u64[0] = v275;
      v454.n128_u64[1] = *(v379 + 8 * v407);
      v8 = a6;
      sub_277A25308(&v430, &v432, &v431, v380, v381, v354, v353, *v359, v264, v265, v266, v267, v268, v269, v270, v271, a3, &v454, &v452, &v449, a6, 0x18u, a4, v383, v355, 1);
      if (v244 <= 16 * v432)
      {
        v276 = 16 * v432;
      }

      else
      {
        v276 = v244;
      }

      if (v245 <= v430)
      {
        v277 = v430;
      }

      else
      {
        v277 = v245;
      }

      if (v261 < v276)
      {
        v276 = v261;
      }

      *(&v419 + 1) = v276;
      if (v262 >= v277)
      {
        v278 = v277;
      }

      else
      {
        v278 = v262;
      }

      LODWORD(v425) = v278;
      LOBYTE(v427) = v410;
      BYTE1(v427) = v407;
      v14 = v408;
      v231 = v351;
      *(&v425 + v410 + 1) = v394;
      *(&v425 + SBYTE1(v427) + 1) = v413;
      v10 = v415;
LABEL_353:
      v279 = v357;
      v280 = v326;
    }

    else
    {
      v10 = v415;
      v279 = v357;
      v280 = v326;
      if (v260 == 16)
      {
        *(&v425 + v390 + 1) = v394;
        LOBYTE(v427) = v390;
        BYTE1(v427) = -1;
      }
    }

    v281 = 0;
    if (v231 <= 1)
    {
      v282 = 1;
    }

    else
    {
      v282 = v231;
    }

    v283 = v360 + (a3[521].n128_i32[2] >> 5);
    v6 = v335;
    do
    {
      v284 = 0;
      do
      {
        if (v283 > v284 && (v281 - v231) < a3[522].n128_i32[0] >> 5)
        {
          *(a3[517].n128_u64[1] + 8 * (v284 + *(v335 + 628) * v281)) = *a3[517].n128_u64[1];
        }

        ++v284;
      }

      while (v280 != v284);
      ++v281;
    }

    while (v281 != v282);
    v285 = *(v331 + 8) + 200 * ((v383 >> *(v342 + 54268)) + (a4 >> *(v342 + 54268)) * *(v331 + 64));
    *(v285 + 32) = v418;
    *(v285 + 48) = v419;
    v286 = v421;
    v287 = v423;
    v288 = v424;
    *(v285 + 112) = v422;
    *(v285 + 128) = v287;
    *(v285 + 80) = v420;
    *(v285 + 96) = v286;
    *(v285 + 192) = v427;
    v289 = v426;
    *(v285 + 160) = v425;
    *(v285 + 176) = v289;
    *(v285 + 144) = v288;
    *v285 = v416;
    *(v285 + 16) = v417;
    v290 = vdupq_n_s64(1uLL);
    v291 = vcgtq_s64(*v285, v290);
    *v285 = vsubq_s64(vandq_s8(*v285, v291), vmvnq_s8(v291));
    v292 = *(v285 + 144);
    v293 = vmax_s32(*(v285 + 136), 0x100000001);
    v294 = *(v285 + 24);
    if (v294 <= 1)
    {
      v294 = 1;
    }

    *(v285 + 24) = v294;
    *(v285 + 136) = v293;
    *(v285 + 144) = vmax_s32(v292, 0x100000001);
    v295 = *(v285 + 48);
    v296 = vcgtq_s64(v295, v290);
    *(v285 + 48) = vsubq_s64(vandq_s8(v295, v296), vmvnq_s8(v296));
    *(v285 + 64) = 0u;
    *(v285 + 156) = vmax_s32(*(v285 + 156), 0x100000001);
    result = (*(v279 + 456))(v342 + 74872, v343, v339, v333);
    v13 = v357;
    v12 = v339 + 1;
    v11 = v340 + v341;
    v383 += v360;
  }

  while (v365 < *(v335 + 584));
  return result;
}