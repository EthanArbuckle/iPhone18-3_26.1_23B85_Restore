_DWORD *aom_blend_a64_hmask_neon(_DWORD *result, unsigned int a2, uint8x8_t *a3, unsigned int a4, uint8x8_t *a5, unsigned int a6, const float *a7, int a8, int a9)
{
  v9 = a9;
  if (a8 < 9)
  {
    if (a8 == 4)
    {
      v16 = vld1_dup_f32(a7);
      v17 = vsub_s8(0x4040404040404040, v16);
      do
      {
        v18.i32[0] = a3->i32[0];
        v18.i32[1] = *(a3->i32 + a4);
        v19.i32[0] = a5->i32[0];
        v19.i32[1] = *(a5->i32 + a6);
        v20 = vrshrn_n_s16(vmlal_u8(vmull_u8(v17, v19), v16, v18), 6uLL);
        *result = v20.i32[0];
        *(result + a2) = v20.i32[1];
        a3 = (a3 + 2 * a4);
        a5 = (a5 + 2 * a6);
        result = (result + 2 * a2);
        v9 -= 2;
      }

      while (v9);
    }

    else if (a8 == 8)
    {
      v14 = *a7;
      v15 = vsub_s8(0x4040404040404040, *a7);
      do
      {
        *result = vrshrn_n_s16(vmlal_u8(vmull_u8(v15, *a5), v14, *a3), 6uLL);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        result = (result + a2);
        --v9;
      }

      while (v9);
    }

    else if (a8 == 2 && a9 >= 16)
    {
      v21 = vld1_dup_s16(a7);
      v22 = vsub_s8(0x4040404040404040, v21);
      do
      {
        v25 = (a3 + a4);
        v26 = vld1_dup_s16(a3);
        v23 = 2 * a4;
        a3 = (a3 + v23);
        v26.i16[1] = *v25;
        v27 = (a5 + a6);
        v28 = vld1_dup_s16(a5);
        v24 = 2 * a6;
        a5 = (a5 + v24);
        v28.i16[1] = *v27;
        v26.i32[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(v22, v28), v21, v26), 6uLL).u32[0];
        *result = v26.i16[0];
        *(result + a2) = v26.i16[1];
        result = (result + 2 * a2);
        v9 -= 2;
      }

      while (v9);
    }

    else if (a8 >= 1 && a9 >= 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      do
      {
        *(result + v31) = ((64 - *a7) * a5->u8[v30] + a3->u8[v29] * *a7 + 32) >> 6;
        if (a8 != 1)
        {
          *(result + v31 + 1) = ((64 - *(a7 + 1)) * a5->u8[v30 + 1] + a3->u8[v29 + 1] * *(a7 + 1) + 32) >> 6;
          if (a8 != 2)
          {
            *(result + v31 + 2) = ((64 - *(a7 + 2)) * a5->u8[v30 + 2] + a3->u8[v29 + 2] * *(a7 + 2) + 32) >> 6;
            if (a8 != 3)
            {
              *(result + v31 + 3) = ((64 - *(a7 + 3)) * a5->u8[v30 + 3] + a3->u8[v29 + 3] * *(a7 + 3) + 32) >> 6;
              *(result + v31 + 4) = ((64 - *(a7 + 4)) * a5->u8[v30 + 4] + a3->u8[v29 + 4] * *(a7 + 4) + 32) >> 6;
              if (a8 != 5)
              {
                *(result + v31 + 5) = ((64 - *(a7 + 5)) * a5->u8[v30 + 5] + a3->u8[v29 + 5] * *(a7 + 5) + 32) >> 6;
                if (a8 != 6)
                {
                  *(result + v31 + 6) = ((64 - *(a7 + 6)) * a5->u8[v30 + 6] + a3->u8[v29 + 6] * *(a7 + 6) + 32) >> 6;
                }
              }
            }
          }
        }

        v31 += a2;
        v30 += a6;
        v29 += a4;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v10.i64[0] = 0x4040404040404040;
    v10.i64[1] = 0x4040404040404040;
    do
    {
      for (i = 0; i < a8; i += 16)
      {
        v12 = *&a7[i / 4];
        v13 = vsubq_s8(v10, v12);
        *&result[i / 4] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v13.i8, a5[i / 8]), *v12.i8, a3[i / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v13, *a5[i / 8].i8), v12, *a3[i / 8].i8), 6uLL);
      }

      a3 = (a3 + a4);
      a5 = (a5 + a6);
      result = (result + a2);
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *aom_lowbd_blend_a64_d16_mask_neon(_DWORD *result, unsigned int a2, uint16x4_t *a3, unsigned int a4, uint16x4_t *a5, unsigned int a6, int8x8_t *a7, unsigned int a8, int a9, int a10, uint64_t a11)
{
  if (a11)
  {
    if (a11 == 1 && HIDWORD(a11) == 1)
    {
      if (a9 <= 7)
      {
        v49.i64[0] = 0x40004000400040;
        v49.i64[1] = 0x40004000400040;
        v50.i64[0] = 0x1800180018001800;
        v50.i64[1] = 0x1800180018001800;
        do
        {
          v51 = vrshr_n_u8(vqadd_u8(vpadd_s8(*a7, *(a7 + 2 * a8)), vpadd_s8(*(a7 + a8), *(a7 + 3 * a8))), 2uLL);
          v52 = vmovl_u8(v51);
          v53 = vsubw_u8(v49, v51);
          *v53.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v53.i8, *a5), *v52.i8, *a3), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v53, v53, 8uLL), *(a5 + 2 * a6)), *&vextq_s8(v52, v52, 8uLL), *(a3 + 2 * a4)), 6uLL), v50), 4uLL);
          a7 = (a7 + 4 * a8);
          *result = v53.i32[0];
          *(result + a2) = v53.i32[1];
          result = (result + 2 * a2);
          a5 = (a5 + 4 * a6);
          a3 = (a3 + 4 * a4);
          a10 -= 2;
        }

        while (a10);
      }

      else
      {
        v30.i64[0] = 0x40004000400040;
        v30.i64[1] = 0x40004000400040;
        v31.i64[0] = 0x1800180018001800;
        v31.i64[1] = 0x1800180018001800;
        do
        {
          v32 = 0;
          for (i = 0; i < a9; i += 8)
          {
            v34 = vrshr_n_u8(vqadd_u8(vpadd_s8(a7[v32], a7[v32 + 1]), vpadd_s8(*(a7 + a8 + v32 * 8), *(&a7[1] + a8 + v32 * 8))), 2uLL);
            v35 = vsubw_u8(v30, v34);
            v36 = vmovl_u8(v34);
            *&result[i / 4] = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v35.i8, a5[v32]), *v36.i8, a3[v32]), 6uLL), vmlal_high_u16(vmull_high_u16(v35, *a5[v32].i8), v36, *a3[v32].i8), 6uLL), v31), 4uLL);
            v32 += 2;
          }

          a7 = (a7 + 2 * a8);
          result = (result + a2);
          a5 = (a5 + 2 * a6);
          a3 = (a3 + 2 * a4);
          --a10;
        }

        while (a10);
      }
    }

    else if (a11 == 1 && HIDWORD(a11) == 0)
    {
      if (a9 <= 7)
      {
        v61.i64[0] = 0x40004000400040;
        v61.i64[1] = 0x40004000400040;
        v62.i64[0] = 0x1800180018001800;
        v62.i64[1] = 0x1800180018001800;
        do
        {
          v63 = vrshr_n_u8(vpadd_s8(*a7, *(a7 + a8)), 1uLL);
          v64 = vmovl_u8(v63);
          v65 = vsubw_u8(v61, v63);
          *v65.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v65.i8, *a5), *v64.i8, *a3), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v65, v65, 8uLL), *(a5 + 2 * a6)), *&vextq_s8(v64, v64, 8uLL), *(a3 + 2 * a4)), 6uLL), v62), 4uLL);
          a7 = (a7 + 2 * a8);
          *result = v65.i32[0];
          *(result + a2) = v65.i32[1];
          result = (result + 2 * a2);
          a5 = (a5 + 4 * a6);
          a3 = (a3 + 4 * a4);
          a10 -= 2;
        }

        while (a10);
      }

      else
      {
        v42.i64[0] = 0x40004000400040;
        v42.i64[1] = 0x40004000400040;
        v43.i64[0] = 0x1800180018001800;
        v43.i64[1] = 0x1800180018001800;
        do
        {
          v44 = 0;
          for (j = 0; j < a9; j += 8)
          {
            v46 = vrshr_n_u8(vpadd_s8(a7[v44], a7[v44 + 1]), 1uLL);
            v47 = vsubw_u8(v42, v46);
            v48 = vmovl_u8(v46);
            *&result[j / 4] = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v47.i8, a5[v44]), *v48.i8, a3[v44]), 6uLL), vmlal_high_u16(vmull_high_u16(v47, *a5[v44].i8), v48, *a3[v44].i8), 6uLL), v43), 4uLL);
            v44 += 2;
          }

          a7 = (a7 + a8);
          result = (result + a2);
          a5 = (a5 + 2 * a6);
          a3 = (a3 + 2 * a4);
          --a10;
        }

        while (a10);
      }
    }

    else
    {
      v14 = 2 * a8;
      if (a9 <= 7)
      {
        v54.i64[0] = 0x40004000400040;
        v54.i64[1] = 0x40004000400040;
        v55.i64[0] = 0x1800180018001800;
        v55.i64[1] = 0x1800180018001800;
        do
        {
          v56.i32[0] = a7->i32[0];
          v57.i32[0] = *(a7->i32 + a8);
          v56.i32[1] = *(a7->i32 + v14);
          v57.i32[1] = *(a7->i32 + v14 + a8);
          v58 = vrhadd_u8(v56, v57);
          v59 = vmovl_u8(v58);
          v60 = vsubw_u8(v54, v58);
          *v60.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v60.i8, *a5), *v59.i8, *a3), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v60, v60, 8uLL), *(a5 + 2 * a6)), *&vextq_s8(v59, v59, 8uLL), *(a3 + 2 * a4)), 6uLL), v55), 4uLL);
          a7 = (a7 + 4 * a8);
          *result = v60.i32[0];
          *(result + a2) = v60.i32[1];
          result = (result + 2 * a2);
          a5 = (a5 + 4 * a6);
          a3 = (a3 + 4 * a4);
          a10 -= 2;
        }

        while (a10);
      }

      else
      {
        v15 = a7 + a8;
        v16.i64[0] = 0x40004000400040;
        v16.i64[1] = 0x40004000400040;
        v17.i64[0] = 0x1800180018001800;
        v17.i64[1] = 0x1800180018001800;
        do
        {
          v18 = 0;
          for (k = 0; k < a9; k += 8)
          {
            v20 = vrhadd_u8(a7[k / 8], *&v15[k]);
            v21 = vmovl_u8(v20);
            v22 = vsubw_u8(v16, v20);
            *&result[k / 4] = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v22.i8, a5[v18]), *v21.i8, a3[v18]), 6uLL), vmlal_high_u16(vmull_high_u16(v22, *a5[v18].i8), v21, *a3[v18].i8), 6uLL), v17), 4uLL);
            v18 += 2;
          }

          a7 = (a7 + v14);
          result = (result + a2);
          a5 = (a5 + 2 * a6);
          a3 = (a3 + 2 * a4);
          v15 += v14;
          --a10;
        }

        while (a10);
      }
    }
  }

  else if (a9 <= 7)
  {
    v37.i64[0] = 0x40004000400040;
    v37.i64[1] = 0x40004000400040;
    v38.i64[0] = 0x1800180018001800;
    v38.i64[1] = 0x1800180018001800;
    do
    {
      v39.i32[0] = a7->i32[0];
      v39.i32[1] = *(a7->i32 + a8);
      v40 = vmovl_u8(v39);
      v41 = vsubw_u8(v37, v39);
      *v41.i8 = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v41.i8, *a5), *v40.i8, *a3), 6uLL), vmlal_u16(vmull_u16(*&vextq_s8(v41, v41, 8uLL), *(a5 + 2 * a6)), *&vextq_s8(v40, v40, 8uLL), *(a3 + 2 * a4)), 6uLL), v38), 4uLL);
      *result = v41.i32[0];
      a7 = (a7 + 2 * a8);
      *(result + a2) = v41.i32[1];
      result = (result + 2 * a2);
      a5 = (a5 + 4 * a6);
      a3 = (a3 + 4 * a4);
      a10 -= 2;
    }

    while (a10);
  }

  else
  {
    v23.i64[0] = 0x40004000400040;
    v23.i64[1] = 0x40004000400040;
    v24.i64[0] = 0x1800180018001800;
    v24.i64[1] = 0x1800180018001800;
    do
    {
      v25 = 0;
      for (m = 0; m < a9; m += 8)
      {
        v27 = a7[m / 8];
        v28 = vmovl_u8(v27);
        v29 = vsubw_u8(v23, v27);
        *&result[m / 4] = vqrshrn_n_u16(vqsubq_u16(vshrn_high_n_s32(vshrn_n_s32(vmlal_u16(vmull_u16(*v29.i8, a5[v25]), *v28.i8, a3[v25]), 6uLL), vmlal_high_u16(vmull_high_u16(v29, *a5[v25].i8), v28, *a3[v25].i8), 6uLL), v24), 4uLL);
        v25 += 2;
      }

      a7 = (a7 + a8);
      result = (result + a2);
      a5 = (a5 + 2 * a6);
      a3 = (a3 + 2 * a4);
      --a10;
    }

    while (a10);
  }

  return result;
}

int8x8_t *aom_blend_a64_mask_neon(int8x8_t *result, unsigned int a2, uint8x8_t *a3, unsigned int a4, uint8x8_t *a5, unsigned int a6, int8x8_t *a7, unsigned int a8, int a9, int a10, uint64_t a11)
{
  if (a11)
  {
    if ((HIDWORD(a11) & a11) == 1)
    {
      v12 = 2 * a8;
      if (a9 < 9)
      {
        if (a9 == 8)
        {
          do
          {
            v34 = vrshr_n_u8(vqadd_u8(vpadd_s8(*a7, a7[1]), vpadd_s8(*(a7 + a8), *(&a7[1] + a8))), 2uLL);
            a7 = (a7 + v12);
            *result = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v34), *a5), v34, *a3), 6uLL);
            a3 = (a3 + a4);
            a5 = (a5 + a6);
            result = (result + a2);
            --a10;
          }

          while (a10);
        }

        else
        {
          do
          {
            v47.i32[0] = a3->i32[0];
            v47.i32[1] = *(a3->i32 + a4);
            v48.i32[0] = a5->i32[0];
            v48.i32[1] = *(a5->i32 + a6);
            v49 = vrshr_n_u8(vqadd_u8(vpadd_s8(*a7, *(a7 + v12)), vpadd_s8(*(a7 + a8), *(a7 + 3 * a8))), 2uLL);
            v50 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v49), v48), v49, v47), 6uLL);
            result->i32[0] = v50.i32[0];
            a7 = (a7 + 4 * a8);
            *(result->i32 + a2) = v50.i32[1];
            a3 = (a3 + 2 * a4);
            a5 = (a5 + 2 * a6);
            result = (result + 2 * a2);
            a10 -= 2;
          }

          while (a10);
        }
      }

      else
      {
        v13 = a2;
        v14 = &a7[2];
        v15.i64[0] = 0x4040404040404040;
        v15.i64[1] = 0x4040404040404040;
        v16 = &a7[2] + a8;
        do
        {
          v17 = 0;
          v18 = v16;
          v19 = v14;
          do
          {
            v20 = vrshrq_n_u8(vqaddq_u8(vpaddq_s8(v19[-1], *v19), vpaddq_s8(v18[-1], *v18)), 2uLL);
            v21 = vsubq_s8(v15, v20);
            *result[v17 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, a5[v17 / 8]), *v20.i8, a3[v17 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *a5[v17 / 8].i8), v20, *a3[v17 / 8].i8), 6uLL);
            v17 += 16;
            v19 += 2;
            v18 += 2;
          }

          while (v17 < a9);
          a3 = (a3 + a4);
          a5 = (a5 + a6);
          result = (result + v13);
          v14 = (v14 + v12);
          v16 += v12;
          --a10;
        }

        while (a10);
      }
    }

    else if (a11 == 1 && HIDWORD(a11) == 0)
    {
      if (a9 < 9)
      {
        if (a9 == 8)
        {
          v51 = a7 + 1;
          do
          {
            v52 = vrshr_n_u8(vpadd_s8(v51[-1], *v51), 1uLL);
            v53 = vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v52), *a5), v52, *a3);
            a3 = (a3 + a4);
            *result = vrshrn_n_s16(v53, 6uLL);
            a5 = (a5 + a6);
            result = (result + a2);
            v51 = (v51 + a8);
            --a10;
          }

          while (a10);
        }

        else
        {
          do
          {
            v62.i32[0] = a3->i32[0];
            v62.i32[1] = *(a3->i32 + a4);
            v63.i32[0] = a5->i32[0];
            v63.i32[1] = *(a5->i32 + a6);
            v64 = vrshr_n_u8(vpadd_s8(*a7, *(a7 + a8)), 1uLL);
            v65 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v64), v63), v64, v62), 6uLL);
            result->i32[0] = v65.i32[0];
            a7 = (a7 + 2 * a8);
            *(result->i32 + a2) = v65.i32[1];
            a3 = (a3 + 2 * a4);
            a5 = (a5 + 2 * a6);
            result = (result + 2 * a2);
            a10 -= 2;
          }

          while (a10);
        }
      }

      else
      {
        v35 = &a7[2];
        v36.i64[0] = 0x4040404040404040;
        v36.i64[1] = 0x4040404040404040;
        do
        {
          v37 = 0;
          v38 = v35;
          do
          {
            v39 = vrshrq_n_u8(vpaddq_s8(v38[-1], *v38), 1uLL);
            v40 = vsubq_s8(v36, v39);
            *result[v37 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, a5[v37 / 8]), *v39.i8, a3[v37 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *a5[v37 / 8].i8), v39, *a3[v37 / 8].i8), 6uLL);
            v37 += 16;
            v38 += 2;
          }

          while (v37 < a9);
          a3 = (a3 + a4);
          a5 = (a5 + a6);
          result = (result + a2);
          v35 = (v35 + a8);
          --a10;
        }

        while (a10);
      }
    }

    else if (a9 < 9)
    {
      v45 = a2;
      if (a9 == 8)
      {
        do
        {
          v46 = vrhadd_u8(*a7, *(a7 + a8));
          a7 = (a7 + 2 * a8);
          *result = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v46), *a5), v46, *a3), 6uLL);
          a3 = (a3 + a4);
          a5 = (a5 + a6);
          result = (result + a2);
          --a10;
        }

        while (a10);
      }

      else
      {
        v54 = (2 * a8);
        v55 = 2 * a2;
        do
        {
          v56.i32[0] = a7->i32[0];
          v56.i32[1] = *(a7->i32 + v54);
          v57.i32[0] = *(a7->i32 + a8);
          v57.i32[1] = *(a7->i32 + v54 + a8);
          v58.i32[0] = a3->i32[0];
          v58.i32[1] = *(a3->i32 + a4);
          v59.i32[0] = a5->i32[0];
          v59.i32[1] = *(a5->i32 + a6);
          v60 = vrhadd_u8(v56, v57);
          v61 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v60), v59), v60, v58), 6uLL);
          result->i32[0] = v61.i32[0];
          a7 = (a7 + 4 * a8);
          *(result->i32 + v45) = v61.i32[1];
          a3 = (a3 + 2 * a4);
          a5 = (a5 + 2 * a6);
          result = (result + v55);
          a10 -= 2;
        }

        while (a10);
      }
    }

    else
    {
      v27 = 2 * a8;
      v28.i64[0] = 0x4040404040404040;
      v28.i64[1] = 0x4040404040404040;
      v29 = a7 + a8;
      do
      {
        for (i = 0; i < a9; i += 16)
        {
          v31 = vrhaddq_u8(*a7[i / 8].i8, *&v29[i]);
          v32 = vsubq_s8(v28, v31);
          *result[i / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, a5[i / 8]), *v31.i8, a3[i / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *a5[i / 8].i8), v31, *a3[i / 8].i8), 6uLL);
        }

        a7 = (a7 + v27);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        result = (result + a2);
        v29 += v27;
        --a10;
      }

      while (a10);
    }
  }

  else if (a9 < 9)
  {
    if (a9 == 8)
    {
      do
      {
        v33 = vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a7), *a5), *a7, *a3);
        a7 = (a7 + a8);
        *result = vrshrn_n_s16(v33, 6uLL);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        result = (result + a2);
        --a10;
      }

      while (a10);
    }

    else
    {
      do
      {
        v41.i32[0] = a7->i32[0];
        v41.i32[1] = *(a7->i32 + a8);
        v42.i32[0] = a3->i32[0];
        v42.i32[1] = *(a3->i32 + a4);
        v43.i32[0] = a5->i32[0];
        v43.i32[1] = *(a5->i32 + a6);
        v44 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v41), v43), v41, v42), 6uLL);
        result->i32[0] = v44.i32[0];
        a7 = (a7 + 2 * a8);
        *(result->i32 + a2) = v44.i32[1];
        a3 = (a3 + 2 * a4);
        a5 = (a5 + 2 * a6);
        result = (result + 2 * a2);
        a10 -= 2;
      }

      while (a10);
    }
  }

  else
  {
    v22.i64[0] = 0x4040404040404040;
    v22.i64[1] = 0x4040404040404040;
    do
    {
      for (j = 0; j < a9; j += 16)
      {
        v24 = *a7[j / 8].i8;
        v25 = vsubq_s8(v22, v24);
        *result[j / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v25.i8, a5[j / 8]), *v24.i8, a3[j / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v25, *a5[j / 8].i8), v24, *a3[j / 8].i8), 6uLL);
      }

      a7 = (a7 + a8);
      a3 = (a3 + a4);
      a5 = (a5 + a6);
      result = (result + a2);
      --a10;
    }

    while (a10);
  }

  return result;
}

int8x8_t *aom_blend_a64_vmask_neon(int8x8_t *result, unsigned int a2, uint8x8_t *a3, unsigned int a4, uint8x8_t *a5, unsigned int a6, unsigned __int8 *a7, int a8, double a9, int8x16_t a10, int a11)
{
  v11 = a11;
  if (a8 < 9)
  {
    if (a8 == 8)
    {
      do
      {
        v21 = vld1_dup_s8(a7++);
        *result = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v21), *a5), v21, *a3), 6uLL);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        result = (result + a2);
        LODWORD(v11) = v11 - 1;
      }

      while (v11);
    }

    else if (a8 == 4)
    {
      do
      {
        v16 = a7;
        v17.i32[0] = vld1_dup_s8(v16++).u32[0];
        v18 = vld1_dup_s8(v16);
        v17.i32[1] = v18.i32[1];
        v18.i32[0] = a3->i32[0];
        v18.i32[1] = *(a3->i32 + a4);
        v19.i32[0] = a5->i32[0];
        v19.i32[1] = *(a5->i32 + a6);
        v20 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v17), v19), v17, v18), 6uLL);
        a7 += 2;
        result->i32[0] = v20.i32[0];
        *(result->i32 + a2) = v20.i32[1];
        a3 = (a3 + 2 * a4);
        a5 = (a5 + 2 * a6);
        result = (result + 2 * a2);
        LODWORD(v11) = v11 - 2;
      }

      while (v11);
    }

    else if (a8 == 2 && a11 >= 16)
    {
      do
      {
        v24 = *a7;
        a7 += 2;
        v25 = vzip1_s8(v24, v24);
        v26 = (a3 + a4);
        v27 = vld1_dup_s16(a3);
        v22 = 2 * a4;
        a3 = (a3 + v22);
        v27.i16[1] = *v26;
        v28 = (a5 + a6);
        v29 = vld1_dup_s16(a5);
        v23 = 2 * a6;
        a5 = (a5 + v23);
        v29.i16[1] = *v28;
        v25.i32[0] = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v25), v29), v25, v27), 6uLL).u32[0];
        result->i16[0] = v25.i16[0];
        *(result->i16 + a2) = v25.i16[1];
        result = (result + 2 * a2);
        LODWORD(v11) = v11 - 2;
      }

      while (v11);
    }

    else if (a8 >= 1 && a11 >= 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      do
      {
        v34 = *a7++;
        v33 = v34;
        v35 = 64 - v34;
        result->i8[v32] = ((64 - v34) * a5->u8[v31] + a3->u8[v30] * v34 + 32) >> 6;
        if (a8 != 1)
        {
          result->i8[v32 + 1] = (v35 * a5->u8[v31 + 1] + a3->u8[v30 + 1] * v33 + 32) >> 6;
          if (a8 != 2)
          {
            result->i8[v32 + 2] = (v35 * a5->u8[v31 + 2] + a3->u8[v30 + 2] * v33 + 32) >> 6;
            if (a8 != 3)
            {
              result->i8[v32 + 3] = (v35 * a5->u8[v31 + 3] + a3->u8[v30 + 3] * v33 + 32) >> 6;
              result->i8[v32 + 4] = (v35 * a5->u8[v31 + 4] + a3->u8[v30 + 4] * v33 + 32) >> 6;
              if (a8 != 5)
              {
                result->i8[v32 + 5] = (v35 * a5->u8[v31 + 5] + a3->u8[v30 + 5] * v33 + 32) >> 6;
                if (a8 != 6)
                {
                  result->i8[v32 + 6] = (v35 * a5->u8[v31 + 6] + a3->u8[v30 + 6] * v33 + 32) >> 6;
                }
              }
            }
          }
        }

        v32 += a2;
        v31 += a6;
        v30 += a4;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v12.i64[0] = 0x4040404040404040;
    v12.i64[1] = 0x4040404040404040;
    do
    {
      v13 = 0;
      a10.i8[0] = *a7;
      v14 = vsubq_s8(v12, a10).u64[0];
      a10 = vdupq_lane_s8(*a10.i8, 0);
      v15 = vdupq_lane_s8(v14, 0);
      do
      {
        *result[v13 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v15.i8, a5[v13 / 8]), *a10.i8, a3[v13 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v15, *a5[v13 / 8].i8), a10, *a3[v13 / 8].i8), 6uLL);
        v13 += 16;
      }

      while (v13 < a8);
      ++a7;
      a3 = (a3 + a4);
      a5 = (a5 + a6);
      result = (result + a2);
      LODWORD(v11) = v11 - 1;
    }

    while (v11);
  }

  return result;
}

void av1_set_entropy_contexts(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int __c, int a7, int a8)
{
  v11 = (*(a2 + 112) + a7);
  v12 = (*(a2 + 120) + a8);
  v13 = tx_size_wide_unit_1[a5];
  v14 = tx_size_high_unit_1[a5];
  if (__c)
  {
    v17 = *(a1 + 7928);
    v25 = a3;
    if (v17 < 0)
    {
      v19 = (((v17 >> (*(a1 + 2608 * a3 + 20) + 3)) + block_size_wide_4[a4]) >> 2) - a7;
      if (v13 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = tx_size_wide_unit_1[a5];
      }

      v21 = *(a2 + 112) + a7;
      v22 = tx_size_wide_unit_1[a5];
      memset(v11, __c, v20);
      bzero((v21 + v20), v22 - v20);
      v18 = *(a1 + 7936);
      if (v18 < 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      memset(v11, __c, v13);
      v18 = *(a1 + 7936);
      if (v18 < 0)
      {
LABEL_13:
        v23 = (((v18 >> (*(a1 + 2608 * v25 + 24) + 3)) + block_size_high_3[a4]) >> 2) - a8;
        if (v14 >= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v14;
        }

        memset(v12, __c, v24);

        bzero(&v12[v24], v14 - v24);
        return;
      }
    }
  }

  else
  {
    bzero(v11, tx_size_wide_unit_1[a5]);
  }

  memset(v12, __c, v14);
}

void av1_reset_entropy_context(uint64_t a1, int a2, int a3)
{
  v3 = (a3 - 1) * *(a1 + 12);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = (a1 + 136);
    v6 = &av1_ss_size_lookup[4 * a2];
    do
    {
      v7 = v6[2 * *(v5 - 29) + *(v5 - 28)];
      v8 = mi_size_high_5[v7];
      bzero(*(v5 - 1), mi_size_wide_6[v7]);
      bzero(*v5, v8);
      v5 += 326;
      --v4;
    }

    while (v4);
  }
}

void av1_cdef_init_fb_row(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(a1 + 24680);
  v12 = *(v11 + 77);
  v13 = *(a1 + 532);
  v15 = v13 + 15;
  v14 = v13 < -15;
  v16 = v13 + 30;
  if (!v14)
  {
    v16 = v15;
  }

  v17 = v16 >> 4;
  v18 = 4 * *(a1 + 536) + 15;
  *(a3 + 592) = a7 == 0;
  v19 = v17 - 1;
  v20 = 16 * a7 + 16;
  v21 = v17 - 1 == a7 || v20 == *(a1 + 532);
  v22 = v18 & 0xFFFFFFF0;
  *(a3 + 600) = v21;
  *a3 = a5;
  *(a3 + 608) = *(a1 + 23568);
  *(a3 + 612) = *(v11 + 72) - 8;
  bzero((a3 + 628), 0x400uLL);
  bzero((a3 + 1652), 0x400uLL);
  v23 = 2 * (a7 & 1);
  v24 = v23 ^ 2;
  if (v19 == a7)
  {
    v25 = v22 >> *(a2 + 20);
    *(a3 + 32) = *a4 + 8 * v25;
    *(a3 + 8) = *a4 + 2 * v25 * v24;
    if (!v12)
    {
      v26 = v22 >> *(a2 + 2628);
      *(a3 + 40) = a4[1] + 8 * v26;
      *(a3 + 16) = a4[1] + 2 * v26 * v24;
      v27 = v22 >> *(a2 + 5236);
      *(a3 + 48) = a4[2] + 8 * v27;
      *(a3 + 24) = a4[2] + 2 * v27 * v24;
    }
  }

  else
  {
    v28 = *(a2 + 24);
    v29 = v22 >> *(a2 + 20);
    v30 = *a4;
    *(a3 + 32) = *a4 + 8 * v29;
    v31 = v20 << (2 - v28);
    cdef_copy_rect8_8bit_to_16bit_neon((v30 + 2 * v29 * v23), v29, (*(a2 + 32) + *(a2 + 56) * (v31 - 2)), *(a2 + 56), v29, 2);
    *(a3 + 8) = *a4 + 2 * v29 * v24;
    cdef_copy_rect8_8bit_to_16bit_neon(*(a3 + 32), v29, (*(a2 + 32) + *(a2 + 56) * v31), *(a2 + 56), v29, 2);
    if (!v12)
    {
      v32 = *(a2 + 2632);
      v33 = v22 >> *(a2 + 2628);
      v34 = a4[1];
      *(a3 + 40) = v34 + 8 * v33;
      v35 = v20 << (2 - v32);
      cdef_copy_rect8_8bit_to_16bit_neon((v34 + 2 * v33 * v23), v33, (*(a2 + 2640) + *(a2 + 2664) * (v35 - 2)), *(a2 + 2664), v33, 2);
      *(a3 + 16) = a4[1] + 2 * v33 * v24;
      cdef_copy_rect8_8bit_to_16bit_neon(*(a3 + 40), v33, (*(a2 + 2640) + *(a2 + 2664) * v35), *(a2 + 2664), v33, 2);
      v36 = *(a2 + 5240);
      v37 = v22 >> *(a2 + 5236);
      v38 = a4[2];
      *(a3 + 48) = v38 + 8 * v37;
      v39 = v20 << (2 - v36);
      cdef_copy_rect8_8bit_to_16bit_neon((v38 + 2 * v37 * v23), v37, (*(a2 + 5248) + *(a2 + 5272) * (v39 - 2)), *(a2 + 5272), v37, 2);
      *(a3 + 24) = a4[2] + 2 * v37 * v24;
      v40 = *(a3 + 48);
      v41 = *(a2 + 5272);
      v42 = (*(a2 + 5248) + v41 * v39);

      cdef_copy_rect8_8bit_to_16bit_neon(v40, v37, v42, v41, v37, 2);
    }
  }
}

uint64_t av1_cdef_fb_row(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(void), uint64_t a8)
{
  v98 = *MEMORY[0x277D85DE8];
  memset(v79, 0, 448);
  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  v11 = *(a1 + 536);
  v97 = 1;
  if (v11 >= -15)
  {
    v12 = v11 + 15;
  }

  else
  {
    v12 = v11 + 30;
  }

  v96 = 0x100000001;
  result = a7();
  if (!a8 || *(a1 + 23712) <= 1 || (pthread_mutex_lock(*a8), v14 = *(a8 + 28), result = pthread_mutex_unlock(*a8), (v14 & 1) == 0))
  {
    if (v11 >= 1)
    {
      v15 = 0;
      LODWORD(v16) = v12 >> 4;
      if (v12 >> 4 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v16;
      }

      v68 = v16;
      v69 = ((v12 >> 4) - 1);
      v76 = 16 * a6;
      do
      {
        v84 = v15 == 0;
        if (v15 == v69)
        {
          v17 = 1;
          v18 = 16 * v69;
        }

        else
        {
          v18 = 16 * v15;
          v17 = 16 * v15 + 16 == *(a1 + 536);
        }

        v85 = v17;
        v19 = *(a1 + 568);
        v20 = *(a1 + 580);
        v21 = (*(*(v19 + 8 * v18 + 8 * v20 * v76) + 167) << 17 >> 4) & 0xFF000000;
        if (*(*(a1 + 24680) + 77))
        {
          v22 = 1;
        }

        else
        {
          v22 = 3;
        }

        if (v21 == -16777216)
        {
          goto LABEL_105;
        }

        v23 = *(a1 + 23576 + 4 * (v21 >> 24));
        v24 = v23 + 3;
        if (v23 >= 0)
        {
          v25 = *(a1 + 23576 + 4 * (v21 >> 24));
        }

        else
        {
          v25 = v23 + 3;
        }

        v26 = v23 - (v25 & 0xFFFFFFFC);
        if (v26 == 3)
        {
          v26 = 4;
        }

        v73 = v26;
        v28 = v24 < 7 && v26 == 0;
        if (*(*(a1 + 24680) + 77))
        {
          v71 = 0;
          v72 = 0;
          v29 = 1;
          if (v28)
          {
            goto LABEL_105;
          }
        }

        else
        {
          v30 = *(a1 + 23640 + 4 * (v21 >> 24));
          v31 = v30 + 3;
          if (v30 >= 0)
          {
            v32 = v30;
          }

          else
          {
            v32 = v30 + 3;
          }

          v33 = v30 - (v32 & 0xFFFFFFFC);
          if (v33 == 3)
          {
            v33 = 4;
          }

          v71 = v33;
          v72 = v32 >> 2;
          v29 = v31 < 7 && v33 == 0;
          if (!v29)
          {
            v28 = 0;
          }

          if (v28)
          {
            goto LABEL_105;
          }
        }

        v35 = *(a1 + 532) - v76;
        if (v35 < 1 || (v36 = *(a1 + 536), _VF = __OFSUB__(v36, v18), v38 = v36 - v18, ((v38 & 0x80000000) != 0) ^ _VF | (v38 == 0)))
        {
          v90 = 0;
          goto LABEL_105;
        }

        v39 = 0;
        v40 = 0;
        v41 = 0;
        v70 = v25 >> 2;
        if (v35 >= 0x10)
        {
          v42 = 16;
        }

        else
        {
          v42 = v35;
        }

        v43 = v19 + 64;
        result = 8 * v18;
        v44 = (v19 + 64 + 8 * v18 + 128 * a6 * v20);
        v45 = 16 * v20;
        v46 = (v43 + 8 * v18 + (((16 * a6) >> 4 << 7) | 8) * v20);
        do
        {
          if (!*(*(v44 - 8) + 144) || !*(*(v44 - 7) + 144) || !*(*(v46 - 8) + 144) || !*(*(v46 - 7) + 144))
          {
            v48 = v79 + 2 * v41;
            *v48 = v39;
            v48[1] = 0;
            ++v41;
          }

          if (v38 >= 3)
          {
            if (!*(*(v44 - 6) + 144) || !*(*(v44 - 5) + 144) || !*(*(v46 - 6) + 144) || !*(*(v46 - 5) + 144))
            {
              v49 = v79 + 2 * v41;
              *v49 = v39;
              result = 1;
              v49[1] = 1;
              ++v41;
            }

            if (v38 >= 5)
            {
              if (!*(*(v44 - 4) + 144) || !*(*(v44 - 3) + 144) || !*(*(v46 - 4) + 144) || !*(*(v46 - 3) + 144))
              {
                v50 = v79 + 2 * v41;
                *v50 = v39;
                result = 2;
                v50[1] = 2;
                ++v41;
              }

              if (v38 >= 7)
              {
                if (!*(*(v44 - 2) + 144) || !*(*(v44 - 1) + 144) || !*(*(v46 - 2) + 144) || !*(*(v46 - 1) + 144))
                {
                  v51 = v79 + 2 * v41;
                  *v51 = v39;
                  result = 3;
                  v51[1] = 3;
                  ++v41;
                }

                if (v38 >= 9)
                {
                  if (!*(*v44 + 144) || !*(v44[1] + 144) || !*(*v46 + 144) || !*(v46[1] + 144))
                  {
                    v52 = v79 + 2 * v41;
                    *v52 = v39;
                    v52[1] = 4;
                    ++v41;
                  }

                  if (v38 >= 0xB)
                  {
                    if (!*(v44[2] + 144) || !*(v44[3] + 144) || !*(v46[2] + 144) || !*(v46[3] + 144))
                    {
                      v53 = v79 + 2 * v41;
                      *v53 = v39;
                      result = 5;
                      v53[1] = 5;
                      ++v41;
                    }

                    if (v38 >= 0xD)
                    {
                      if (!*(v44[4] + 144) || !*(v44[5] + 144) || !*(v46[4] + 144) || !*(v46[5] + 144))
                      {
                        v54 = v79 + 2 * v41;
                        *v54 = v39;
                        result = 6;
                        v54[1] = 6;
                        ++v41;
                      }

                      if (v38 >= 0xF && (!*(v44[6] + 144) || !*(v44[7] + 144) || !*(v46[6] + 144) || !*(v46[7] + 144)))
                      {
                        v47 = v79 + 2 * v41;
                        *v47 = v39;
                        result = 7;
                        v47[1] = 7;
                        ++v41;
                      }
                    }
                  }
                }
              }
            }
          }

          v40 += 2;
          ++v39;
          v44 = (v44 + v45);
          v46 = (v46 + v45);
        }

        while (v40 < v42);
        v90 = v41;
        if (v41)
        {
          v55 = 0;
          v56 = 0;
          v57 = 2608 * v22;
          v58 = &v96;
          while (v56)
          {
            if (v29)
            {
              *v58++ = 0;
              v56 += 2608;
              ++v55;
              if (v57 == v56)
              {
                goto LABEL_106;
              }
            }

            else
            {
              _X8 = a2 + v56 + 2640;
              v88 = v72;
              v89 = v71;
              __asm { PRFM            #0, [X8] }

              *(&v78 + 1) = *(a2 + v56 + 32);
              v93 = *(a2 + v56 + 56);
              v66 = *(a2 + v56 + 24);
              v80 = *(a2 + v56 + 20);
              v81 = v66;
              v82 = 2 - v80;
              v83 = 2 - v66;
              v95 = v76 << (2 - v66);
              v94 = v18 << (2 - v80);
              cdef_prepare_fb(a1, v77, a4, *v58, v15, a6, v55);
              v67 = *(&v78 + 1) + v95 * v93 + v94;
              if (*(*(a1 + 24680) + 76))
              {
                result = av1_cdef_filter_fb(0, 2 * v67, v93, *&v77[0] + 592, v80, v81, v91, 0, v92, v55, v79, v90, v88, v89, v86, v87);
              }

              else
              {
                result = av1_cdef_filter_fb(v67, 0, v93, *&v77[0] + 592, v80, v81, v91, 0, v92, v55, v79, v90, v88, v89, v86, v87);
              }

              v59 = v58;
LABEL_110:
              *v59 = 1;
              v56 += 2608;
              ++v58;
              ++v55;
              if (v57 == v56)
              {
                goto LABEL_106;
              }
            }
          }

          v88 = v70;
          v89 = v73;
          *(&v78 + 1) = *(a2 + 32);
          v93 = *(a2 + 56);
          v60 = *(a2 + 24);
          v80 = *(a2 + 20);
          v81 = v60;
          v82 = 2 - v80;
          v83 = 2 - v60;
          v95 = v76 << (2 - v60);
          v94 = v18 << (2 - v80);
          cdef_prepare_fb(a1, v77, a4, v96, v15, a6, 0);
          v61 = *(&v78 + 1) + v95 * v93 + v94;
          if (*(*(a1 + 24680) + 76))
          {
            result = av1_cdef_filter_fb(0, 2 * v61, v93, *&v77[0] + 592, v80, v81, v91, 0, v92, 0, v79, v90, v88, v89, v86, v87);
          }

          else
          {
            result = av1_cdef_filter_fb(v61, 0, v93, *&v77[0] + 592, v80, v81, v91, 0, v92, 0, v79, v90, v88, v89, v86, v87);
          }

          v59 = &v96;
          goto LABEL_110;
        }

LABEL_105:
        result = __memset_chk();
LABEL_106:
        ++v15;
      }

      while (v15 != v68);
    }
  }

  return result;
}

uint64_t av1_cdef_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *(a2 + 24680);
  if (*(v7 + 77))
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(a2 + 532);
  result = av1_setup_dst_planes(a3 + 16, *(v7 + 28), a1, 0, 0, 0, v8);
  if (v9 >= 1)
  {
    v11 = 0;
    v12 = (v9 + 15) >> 4;
    do
    {
      result = av1_cdef_fb_row(a2, a3, a2 + 23480, a2 + 23456, *(a2 + 23504), v11++, a4, 0);
    }

    while (v12 != v11);
  }

  return result;
}

void cdef_prepare_fb(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v9 = *a2;
  v10 = *(a1 + 536);
  v11 = (4 * v10 + 15) & 0xFFFFFFF0;
  v12 = *(a1 + 532);
  v13 = v12 + 15;
  if (v12 < -15)
  {
    v13 = v12 + 30;
  }

  v14 = v13 >> 4;
  v15 = v10 + 15;
  if (v10 < -15)
  {
    v15 = v10 + 30;
  }

  v16 = v15 >> 4;
  if (a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = -8;
  }

  v18 = v10 - 16 * a5;
  if (v18 >= 16)
  {
    v18 = 16;
  }

  v19 = v12 - 16 * a6;
  if (v19 >= 16)
  {
    v19 = 16;
  }

  v20 = (v18 << *(a2 + 584));
  v21 = v19 << *(a2 + 588);
  v22 = a2 + 8 * a7;
  v23 = 144 * (v21 + 2);
  if (a7)
  {
    v24 = *(*(a1 + 24680) + 96);
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v25 = *(v22 + 32);
  v126 = *(v22 + 8);
  v127 = v11 >> v24;
  v26 = v20 + 8;
  v125 = v16 - 1;
  if (v16 - 1 == a5)
  {
    v26 = v20;
  }

  v27 = v14 - 1;
  cdef_copy_rect8_8bit_to_16bit_neon(&v9[v17 + 296], 144, (*(a2 + 56) + *(a2 + 2676) * *(a2 + 2684) + *(a2 + 2680) + v17), *(a2 + 2676), v26 - v17, v21);
  v28 = &v9[v23];
  if (v27 == a6)
  {
    v29 = v21;
  }

  else
  {
    v29 = v21 + 2;
  }

  v120 = v27;
  v121 = v29;
  if (v27 <= a6)
  {
    v45 = v25;
    if (v20 > 0)
    {
      memset_pattern16(v28 + 8, &unk_273BDEBE0, (2 * v20));
      memset_pattern16(v28 + 152, &unk_273BDEBE0, (2 * v20));
    }

    v49 = a5 > 0;
    goto LABEL_39;
  }

  v30 = *(a2 + 2680);
  if (v20 >= 1)
  {
    if (v20 < 4 || (v31 = v23, &v9[v31 + 8] - v25 + -2 * v30 < 0x20))
    {
      v32 = 0;
      goto LABEL_25;
    }

    if (v20 >= 0x10)
    {
      v32 = v20 & 0x7FFFFFF0;
      v102 = (2 * v30 + v25 + 16);
      v103 = &v9[v31 + 16];
      v104 = v32;
      do
      {
        v105 = *v102;
        *(v103 - 1) = *(v102 - 1);
        *v103 = v105;
        v102 += 2;
        v103 += 2;
        v104 -= 16;
      }

      while (v104);
      if (v32 == v20)
      {
        goto LABEL_27;
      }

      if ((v20 & 0xC) == 0)
      {
LABEL_25:
        v33 = v20 - v32;
        v34 = 2 * v32;
        v35 = &v9[v32 + 8 + v23];
        v36 = (v25 + v34 + 2 * v30);
        do
        {
          v37 = *v36++;
          *v35++ = v37;
          --v33;
        }

        while (v33);
        goto LABEL_27;
      }
    }

    else
    {
      v32 = 0;
    }

    v106 = v32;
    v32 = v20 & 0x7FFFFFFC;
    v107 = (v25 + 2 * v106 + 2 * v30);
    v108 = &v9[v106 + 8 + v23];
    v109 = v106 - v32;
    do
    {
      v110 = *v107++;
      *v108++ = v110;
      v109 += 4;
    }

    while (v109);
    if (v32 != v20)
    {
      goto LABEL_25;
    }

LABEL_27:
    if (v20 < 4 || (v38 = v23, &v9[v38 + 152] + -v25 + -2 * v30 + -2 * v127 < 0x20))
    {
      v39 = 0;
LABEL_30:
      v40 = v20 - v39;
      v41 = 2 * v39;
      v42 = &v9[v39 + 152 + v23];
      v43 = (v25 + v41 + 2 * v127 + 2 * v30);
      do
      {
        v44 = *v43++;
        *v42++ = v44;
        --v40;
      }

      while (v40);
      goto LABEL_32;
    }

    if (v20 >= 0x10)
    {
      v39 = v20 & 0x7FFFFFF0;
      v111 = (2 * v127 + 2 * v30 + v25 + 16);
      v112 = &v9[v38 + 160];
      v113 = v39;
      do
      {
        v114 = *v111;
        *(v112 - 1) = *(v111 - 1);
        *v112 = v114;
        v111 += 2;
        v112 += 2;
        v113 -= 16;
      }

      while (v113);
      if (v39 == v20)
      {
        goto LABEL_32;
      }

      if ((v20 & 0xC) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v39 = 0;
    }

    v115 = v39;
    v39 = v20 & 0x7FFFFFFC;
    v116 = (v25 + 2 * v115 + 2 * v127 + 2 * v30);
    v117 = &v9[v115 + 152 + v23];
    v118 = v115 - v39;
    do
    {
      v119 = *v116++;
      *v117++ = v119;
      v118 += 4;
    }

    while (v118);
    if (v39 == v20)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_32:
  if (a5 >= 1)
  {
    v45 = v25;
    v46 = (v25 + 2 * v30);
    v47 = *(v46 - 8);
    v46 -= 8;
    *v28 = v47;
    v28[1] = v46[1];
    v28[2] = v46[2];
    v28[3] = v46[3];
    v28[4] = v46[4];
    v28[5] = v46[5];
    v28[6] = v46[6];
    v28[7] = v46[7];
    v48 = &v46[v127];
    v28[144] = *v48;
    v28[145] = v48[1];
    v28[146] = v48[2];
    v28[147] = v48[3];
    v28[148] = v48[4];
    v28[149] = v48[5];
    v28[150] = v48[6];
    v28[151] = v48[7];
    v49 = 1;
    v50 = &v9[v23 + v20];
    if (v125 <= a5)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v45 = v25;
  v49 = 0;
LABEL_39:
  memset_pattern16(&v9[v23], &unk_273BDEBE0, 0x10uLL);
  memset_pattern16(v28 + 144, &unk_273BDEBE0, 0x10uLL);
  v50 = &v9[v23 + v20];
  if (v125 <= a5)
  {
    goto LABEL_44;
  }

LABEL_40:
  if (v120 > a6)
  {
    v51 = (v45 + 2 * (*(a2 + 2680) + v20));
    v50[8] = *v51;
    v50[9] = v51[1];
    v50[10] = v51[2];
    v50[11] = v51[3];
    v50[12] = v51[4];
    v50[13] = v51[5];
    v50[14] = v51[6];
    v50[15] = v51[7];
    v52 = &v51[v127];
    v50[152] = *v52;
    v50[153] = v52[1];
    v50[154] = v52[2];
    v50[155] = v52[3];
    v50[156] = v52[4];
    v50[157] = v52[5];
    v50[158] = v52[6];
    v50[159] = v52[7];
    if (a6 >= 1)
    {
      goto LABEL_45;
    }

LABEL_42:
    if (v20 >= 1)
    {
      memset_pattern16(v9 + 8, &unk_273BDEBE0, (2 * v20));
      memset_pattern16(v9 + 152, &unk_273BDEBE0, (2 * v20));
    }

LABEL_58:
    memset_pattern16(v9, &unk_273BDEBE0, 0x10uLL);
    memset_pattern16(v9 + 144, &unk_273BDEBE0, 0x10uLL);
    v69 = &v9[v20];
    v70 = (v69 + 8);
    if (a6 < 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_44:
  memset_pattern16(v50 + 8, &unk_273BDEBE0, 0x10uLL);
  memset_pattern16(v50 + 152, &unk_273BDEBE0, 0x10uLL);
  if (a6 < 1)
  {
    goto LABEL_42;
  }

LABEL_45:
  v53 = *(a2 + 2680);
  if (v20 < 1)
  {
    goto LABEL_56;
  }

  if (v20 < 4 || v9 + -v126 + -2 * v53 + 16 < 0x20)
  {
    v54 = 0;
    goto LABEL_49;
  }

  if (v20 >= 0x10)
  {
    v54 = v20 & 0x7FFFFFF0;
    v84 = (2 * v53 + v126 + 16);
    v85 = v9 + 16;
    v86 = v54;
    do
    {
      v87 = *v84;
      *(v85 - 1) = *(v84 - 1);
      *v85 = v87;
      v84 += 2;
      v85 += 2;
      v86 -= 16;
    }

    while (v86);
    if (v54 == v20)
    {
      goto LABEL_51;
    }

    if ((v20 & 0xC) == 0)
    {
LABEL_49:
      v55 = v20 - v54;
      v56 = 2 * v54;
      v57 = &v9[v54 + 8];
      v58 = (v126 + v56 + 2 * v53);
      do
      {
        v59 = *v58++;
        *v57++ = v59;
        --v55;
      }

      while (v55);
      goto LABEL_51;
    }
  }

  else
  {
    v54 = 0;
  }

  v88 = v54;
  v54 = v20 & 0x7FFFFFFC;
  v89 = (v126 + 2 * v88 + 2 * v53);
  v90 = &v9[v88 + 8];
  v91 = v88 - v54;
  do
  {
    v92 = *v89++;
    *v90++ = v92;
    v91 += 4;
  }

  while (v91);
  if (v54 != v20)
  {
    goto LABEL_49;
  }

LABEL_51:
  if (v20 < 4 || v9 + -v126 + -2 * v53 + -2 * v127 + 304 < 0x20)
  {
    v60 = 0;
    goto LABEL_54;
  }

  if (v20 >= 0x10)
  {
    v60 = v20 & 0x7FFFFFF0;
    v93 = (2 * v127 + 2 * v53 + v126 + 16);
    v94 = v9 + 160;
    v95 = v60;
    do
    {
      v96 = *v93;
      *(v94 - 1) = *(v93 - 1);
      *v94 = v96;
      v93 += 2;
      v94 += 2;
      v95 -= 16;
    }

    while (v95);
    if (v60 == v20)
    {
      goto LABEL_56;
    }

    if ((v20 & 0xC) == 0)
    {
LABEL_54:
      v61 = v20 - v60;
      v62 = 2 * v60;
      v63 = &v9[v60 + 152];
      v64 = (v126 + v62 + 2 * v127 + 2 * v53);
      do
      {
        v65 = *v64++;
        *v63++ = v65;
        --v61;
      }

      while (v61);
      goto LABEL_56;
    }
  }

  else
  {
    v60 = 0;
  }

  v97 = v60;
  v60 = v20 & 0x7FFFFFFC;
  v98 = (v126 + 2 * v97 + 2 * v127 + 2 * v53);
  v99 = &v9[v97 + 152];
  v100 = v97 - v60;
  do
  {
    v101 = *v98++;
    *v99++ = v101;
    v100 += 4;
  }

  while (v100);
  if (v60 != v20)
  {
    goto LABEL_54;
  }

LABEL_56:
  if (!v49)
  {
    goto LABEL_58;
  }

  v66 = (v126 + 2 * v53);
  v67 = *(v66 - 8);
  v66 -= 8;
  *v9 = v67;
  v9[1] = v66[1];
  v9[2] = v66[2];
  v9[3] = v66[3];
  v9[4] = v66[4];
  v9[5] = v66[5];
  v9[6] = v66[6];
  v9[7] = v66[7];
  v68 = &v66[v127];
  v9[144] = *v68;
  v9[145] = v68[1];
  v9[146] = v68[2];
  v9[147] = v68[3];
  v9[148] = v68[4];
  v9[149] = v68[5];
  v9[150] = v68[6];
  v9[151] = v68[7];
  v69 = &v9[v20];
  v70 = (v69 + 8);
LABEL_59:
  if (v125 > a5)
  {
    v71 = (v126 + 2 * (*(a2 + 2680) + v20));
    v69[8] = *v71;
    v69[9] = v71[1];
    v69[10] = v71[2];
    v69[11] = v71[3];
    v69[12] = v71[4];
    v69[13] = v71[5];
    v69[14] = v71[6];
    v69[15] = v71[7];
    v72 = &v71[v127];
    v69[152] = *v72;
    v69[153] = v72[1];
    v69[154] = v72[2];
    v69[155] = v72[3];
    v69[156] = v72[4];
    v69[157] = v72[5];
    v69[158] = v72[6];
    v69[159] = v72[7];
    v73 = *(a3 + 8 * a7);
    v74 = v121;
    if (!a4)
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

LABEL_62:
  memset_pattern16(v70, &unk_273BDEBE0, 0x10uLL);
  memset_pattern16(v69 + 152, &unk_273BDEBE0, 0x10uLL);
  v73 = *(a3 + 8 * a7);
  v74 = v121;
  if (!a4)
  {
    goto LABEL_66;
  }

LABEL_63:
  if (v74 < -1)
  {
    goto LABEL_69;
  }

  v75 = (v74 + 2);
  v76 = (v73 + 8);
  v77 = v9 + 4;
  do
  {
    *(v77 - 4) = *(v76 - 4);
    *(v77 - 3) = *(v76 - 3);
    *(v77 - 2) = *(v76 - 2);
    *(v77 - 1) = *(v76 - 1);
    *v77 = *v76;
    v77[1] = v76[1];
    v77[2] = v76[2];
    v77[3] = v76[3];
    v76 += 8;
    v77 += 144;
    --v75;
  }

  while (v75);
LABEL_66:
  if (v74 >= -1)
  {
    v78 = (v74 + 2);
    v79 = &v9[v20 + 4];
    v80 = (v73 + 8);
    do
    {
      *(v80 - 4) = *(v79 - 4);
      *(v80 - 3) = *(v79 - 3);
      *(v80 - 2) = *(v79 - 2);
      *(v80 - 1) = *(v79 - 1);
      *v80 = *v79;
      v80[1] = v79[1];
      v80[2] = v79[2];
      v80[3] = v79[3];
      v79 += 144;
      v80 += 8;
      --v78;
    }

    while (v78);
  }

LABEL_69:
  if (*(a2 + 596) && v21 >= -3)
  {
    v81 = (v21 + 4);
    do
    {
      memset_pattern16(v9, &unk_273BDEBE0, 0x10uLL);
      v9 += 144;
      --v81;
    }

    while (v81);
  }

  if (*(a2 + 604))
  {
    v82 = v21 < -3;
  }

  else
  {
    v82 = 1;
  }

  if (!v82)
  {
    v83 = (v21 + 4);
    do
    {
      memset_pattern16(v70, &unk_273BDEBE0, 0x10uLL);
      v70 += 288;
      --v83;
    }

    while (v83);
  }
}

uint64_t av1_cdef_filter_fb(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, size_t __n, _DWORD *a8, uint64_t a9, int a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16)
{
  v17 = a4;
  v95 = result;
  v19 = a10;
  v20 = a12;
  v21 = a13 << a16;
  v22 = a14 << a16;
  v23 = 3 - a5;
  v98 = 3 - a6;
  if (a8 && (!v21 ? (v24 = v22 == 0) : (v24 = 0), v24))
  {
    if (a12 >= 1 && a6 != -28)
    {
      v25 = 0;
      if (1 << v98 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = (1 << v98);
      }

      do
      {
        v27 = 0;
        v28 = (v17 + 2 * (*(a11 + 2 * v25 + 1) << v23) + 288 * (*(a11 + 2 * v25) << v98));
        do
        {
          result = memcpy((a2 + 2 * ((v27++ << v23) + (v25 << (v98 + v23)))), v28, 2 << v23);
          v28 += 288;
        }

        while (v26 != v27);
        ++v25;
        v17 = a4;
      }

      while (v25 != a12);
    }
  }

  else
  {
    v29 = a9;
    v93 = a8;
    if (a10 == 1)
    {
      if (a5 != a6 && a12 >= 1)
      {
        v38 = &av1_cdef_filter_fb_conv422;
        if (!a5)
        {
          v38 = &av1_cdef_filter_fb_conv440;
        }

        v39 = (a11 + 1);
        v40 = a12;
        do
        {
          v41 = *(v39 - 1);
          v42 = *v39;
          v39 += 2;
          *(__n + (v41 << 6) + 4 * v42) = v38[*(__n + (v41 << 6) + 4 * v42)];
          --v40;
        }

        while (v40);
      }
    }

    else if (!a10)
    {
      if (a8)
      {
        if (!*a8)
        {
          if (a12 < 2)
          {
            v37 = 0;
          }

          else
          {
            v30 = 0;
            v31 = (a11 + 3);
            do
            {
              v32 = *(v31 - 3);
              v33 = *(v31 - 2);
              v34 = *(v31 - 1);
              v35 = *v31;
              v31 += 4;
              v86 = v29 + (v34 << 6);
              v36 = 4 * v35;
              v88 = __n + (v34 << 6);
              v90 = (v17 + 2304 * v34 + 16 * v35);
              *(__n + v32 + 4 * v33) = cdef_find_dir_neon((v17 + 2304 * v32 + 16 * v33), 144, (v29 + (v32 << 6) + 4 * v33), a16);
              v17 = a4;
              result = cdef_find_dir_neon(v90, 144, (v86 + v36), a16);
              *(v88 + v36) = result;
              v29 = a9;
              v30 += 2;
            }

            while (a12 - 1 > v30);
            v37 = v30 & 0xFFFFFFFE;
            v19 = a10;
            v22 = a14 << a16;
            v21 = a13 << a16;
            a8 = v93;
          }

          if (a12)
          {
            v58 = (a11 + 2 * v37);
            v59 = *v58;
            v60 = v58[1];
            v61 = (v17 + 2304 * v59 + 16 * v60);
            v62 = v59 << 6;
            v63 = 4 * v60;
            result = cdef_find_dir_neon(v61, 144, (v29 + (v59 << 6) + 4 * v60), a16);
            a8 = v93;
            v22 = a14 << a16;
            v21 = a13 << a16;
            v19 = a10;
            v64 = __n + v62;
            v17 = a4;
            *(v64 + v63) = result;
          }

          *a8 = 1;
        }
      }

      else
      {
        if (a12 < 2)
        {
          v50 = 0;
        }

        else
        {
          v43 = 0;
          v44 = (a11 + 3);
          do
          {
            v45 = *(v44 - 3);
            v46 = *(v44 - 2);
            v47 = *(v44 - 1);
            v48 = *v44;
            v44 += 4;
            v87 = v29 + (v47 << 6);
            v49 = 4 * v48;
            v89 = __n + (v47 << 6);
            v91 = (v17 + 2304 * v47 + 16 * v48);
            *(__n + v45 + 4 * v46) = cdef_find_dir_neon((v17 + 2304 * v45 + 16 * v46), 144, (v29 + (v45 << 6) + 4 * v46), a16);
            v17 = a4;
            result = cdef_find_dir_neon(v91, 144, (v87 + v49), a16);
            *(v89 + v49) = result;
            v29 = a9;
            v43 += 2;
          }

          while (a12 - 1 > v43);
          v50 = v43 & 0xFFFFFFFE;
          v19 = a10;
          v22 = a14 << a16;
          v21 = a13 << a16;
          a8 = v93;
        }

        if (a12)
        {
          v51 = (a11 + 2 * v50);
          v52 = *v51;
          v53 = v51[1];
          v54 = (v17 + 2304 * v52 + 16 * v53);
          v55 = __n;
          v56 = v52 << 6;
          v57 = 4 * v53;
          result = cdef_find_dir_neon(v54, 144, (v29 + (v52 << 6) + 4 * v53), a16);
          a8 = v93;
          v22 = a14 << a16;
          v21 = a13 << a16;
          v19 = a10;
          *(v55 + v56 + v57) = result;
          v17 = a4;
        }
      }
    }

    if (v95)
    {
      if (a12 >= 1)
      {
        v65 = (a11 + 1);
        v66 = 8 * (v22 == 0);
        do
        {
          v67 = *(v65 - 1);
          v68 = *v65;
          if (v19)
          {
            v69 = v21 == 0;
          }

          else
          {
            v70 = *(a9 + (v67 << 6) + 4 * *v65);
            if (v70 >= 0x40)
            {
              v72 = __clz(v70 >> 6) ^ 0x1F;
              if (v72 >= 0xC)
              {
                v71 = 16;
              }

              else
              {
                v71 = v72 + 4;
              }
            }

            else
            {
              v71 = 4;
            }

            v73 = (v71 * v21 + 8) >> 4;
            if (v70)
            {
              v74 = v73;
            }

            else
            {
              v74 = 0;
            }

            v69 = v74 == 0;
          }

          v65 += 2;
          result = (*(off_2882AC788 + (v66 | (16 * v69))))(v95 + (v68 << v23) + (v67 << v98) * a3);
          v21 = a13 << a16;
          --v20;
          v19 = a10;
        }

        while (v20);
      }
    }

    else if (a12 >= 1)
    {
      v75 = 0;
      v76 = 1 << v23;
      if (!a8)
      {
        v76 = a3;
      }

      v92 = v76;
      v77 = (a11 + 1);
      v94 = 8 * (v22 == 0);
      do
      {
        v78 = *(v77 - 1);
        v79 = *v77;
        v80 = v21;
        if (!v19)
        {
          v81 = *(a9 + (v78 << 6) + 4 * *v77);
          if (v81 >= 0x40)
          {
            v83 = __clz(v81 >> 6) ^ 0x1F;
            if (v83 >= 0xC)
            {
              v82 = 16;
            }

            else
            {
              v82 = v83 + 4;
            }
          }

          else
          {
            v82 = 4;
          }

          v84 = (v82 * v21 + 8) >> 4;
          if (v81)
          {
            v80 = v84;
          }

          else
          {
            v80 = 0;
          }
        }

        v85 = (v79 << v23) + (v78 << v98) * a3;
        if (a8)
        {
          v85 = v75 << (v98 + v23);
        }

        v77 += 2;
        result = (*(off_2882AC7A8 + (v94 | (16 * (v80 == 0)))))(a2 + 2 * v85, v92, v17 + 2 * (((144 * v78) << v98) + (v79 << v23)));
        v21 = a13 << a16;
        ++v75;
        v19 = a10;
        a8 = v93;
      }

      while (a12 != v75);
    }
  }

  return result;
}

uint16x8_t *cdef_copy_rect8_8bit_to_16bit_neon(uint16x8_t *result, int a2, uint8x8_t *a3, int a4, int a5, int a6)
{
  if (a5 >= 16)
  {
    v6 = 0uLL;
    while (1)
    {
      v7 = 0;
      v8 = a5;
      v9 = result;
      do
      {
        v10 = *&a3->i8[v7];
        vst2q_s8(v9, *(&v6 - 1));
        v9 += 32;
        v7 += 16;
        v8 -= 16;
      }

      while (v8 > 15);
      if (v8 > 7)
      {
        *v9 = vmovl_u8(*(a3 + v7));
        LODWORD(v7) = v7 + 8;
        if (a5 - v7 == 4)
        {
LABEL_10:
          result->i16[v7] = a3->u8[v7];
          result->i16[v7 + 1] = a3->u8[v7 + 1];
          result->i16[v7 + 2] = a3->u8[v7 + 2];
          result->i16[v7 + 3] = a3->u8[v7 + 3];
        }
      }

      else if (a5 - v7 == 4)
      {
        goto LABEL_10;
      }

      a3 = (a3 + a4);
      result = (result + 2 * a2);
      if (!--a6)
      {
        return result;
      }
    }
  }

  if (a5 < 8)
  {
    if (a5 == 4)
    {
      v13 = &result->i16[2];
      v14 = (a3 + 1);
      do
      {
        *(v13 - 2) = v14[-1].u8[7];
        *(v13 - 1) = v14->u8[0];
        *v13 = v14->u8[1];
        v13[1] = v14->u8[2];
        v13 += a2;
        v14 = (v14 + a4);
        --a6;
      }

      while (a6);
    }
  }

  else if (a5 == 12)
  {
    v11 = &result[1].i16[3];
    v12 = (a3 + 11);
    do
    {
      *(v11 - 11) = vmovl_u8(*(v12 - 11));
      *(v11 - 3) = v12[-1].u8[5];
      *(v11 - 2) = v12[-1].u8[6];
      *(v11 - 1) = v12[-1].u8[7];
      *v11 = v12->u8[0];
      v11 += a2;
      v12 = (v12 + a4);
      --a6;
    }

    while (a6);
  }

  else
  {
    do
    {
      *result = vmovl_u8(*a3);
      a3 = (a3 + a4);
      result = (result + 2 * a2);
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t cdef_find_dir_neon(uint16x8_t *a1, int a2, __int32 *a3, int a4)
{
  v4 = vdupq_n_s16(-a4);
  v66 = *MEMORY[0x277D85DE8];
  v5.i64[0] = 0x7F007F007F007FLL;
  v5.i64[1] = 0x7F007F007F007FLL;
  v6 = vaddq_s16(vshlq_u16(*a1, v4), v5);
  v7 = vaddq_s16(vshlq_u16(*(a1 + 2 * a2), v4), v5);
  v8 = vaddq_s16(vshlq_u16(*(a1 + 4 * a2), v4), v5);
  v9 = vaddq_s16(vshlq_u16(*(a1 + 6 * a2), v4), v5);
  v10 = vaddq_s16(vshlq_u16(*(a1 + 8 * a2), v4), v5);
  v11 = vaddq_s16(vshlq_u16(*(a1 + 10 * a2), v4), v5);
  v12 = vaddq_s16(vshlq_u16(*(a1 + 12 * a2), v4), v5);
  v13 = vaddq_s16(vshlq_u16(*(a1 + 14 * a2), v4), v5);
  v14 = vaddq_s16(v7, v6);
  v15 = vaddq_s16(v9, v8);
  v16 = vaddq_s16(vextq_s8(0, v15, 8uLL), vextq_s8(0, v14, 6uLL));
  v17 = vaddq_s16(vextq_s8(v15, 0, 8uLL), vextq_s8(v14, 0, 6uLL));
  v18 = vaddq_s16(vextq_s8(0, v15, 0xAuLL), vextq_s8(0, v14, 0xCuLL));
  v19 = vaddq_s16(vextq_s8(v15, 0, 0xAuLL), vextq_s8(v14, 0, 0xCuLL));
  v20 = vaddq_s16(v15, v14);
  v21 = vextq_s8(0, v11, 0xCuLL);
  v22 = vextq_s8(v11, 0, 0xCuLL);
  v23 = vaddq_s16(v11, v10);
  v24 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vextq_s8(0, v7, 4uLL), vextq_s8(0, v6, 2uLL)), vextq_s8(0, v8, 6uLL)), vaddq_s16(vextq_s8(0, v9, 8uLL), vextq_s8(0, v10, 0xAuLL))), vaddq_s16(vaddq_s16(v21, vextq_s8(0, v12, 0xEuLL)), v13));
  v25 = vaddq_s16(v13, v12);
  v26 = vaddq_s16(v16, vaddq_s16(vextq_s8(0, v23, 0xAuLL), vextq_s8(0, v25, 0xCuLL)));
  v27 = vaddq_s16(v17, vaddq_s16(vextq_s8(v23, 0, 0xAuLL), vextq_s8(v25, 0, 0xCuLL)));
  v28 = vaddq_s16(v18, vaddq_s16(vextq_s8(0, v23, 8uLL), vextq_s8(0, v25, 6uLL)));
  v29 = vaddq_s16(v19, vaddq_s16(vextq_s8(v23, 0, 8uLL), vextq_s8(v25, 0, 6uLL)));
  v30 = vaddq_s16(v20, vaddq_s16(v23, v25));
  v31 = vmlal_high_s16(vmull_s16(*v30.i8, *v30.i8), v30, v30);
  v32 = vqtbl1q_s8(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vextq_s8(v7, 0, 4uLL), vextq_s8(v6, 0, 2uLL)), vextq_s8(v8, 0, 6uLL)), vaddq_s16(vextq_s8(v9, 0, 8uLL), vextq_s8(v10, 0, 0xAuLL))), vaddq_s16(v22, vextq_s8(v12, 0, 0xEuLL))), unk_273BDECA0);
  v33 = vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v32.i8, *v32.i8), *v24.i8, *v24.i8), xmmword_273BDECB0), vmlal_high_s16(vmull_high_s16(v32, v32), v24, v24), xmmword_273BDECC0);
  v34 = vqtbl1q_s8(v27, unk_273BDECA0);
  v35 = vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v34.i8, *v34.i8), *v26.i8, *v26.i8), xmmword_273BDECD0), vmlal_high_s16(vmull_high_s16(v34, v34), v26, v26), xmmword_273BDECE0);
  v34.i64[0] = 0x6900000069;
  v34.i64[1] = 0x6900000069;
  v36 = vqtbl1q_s8(v29, unk_273BDECA0);
  v37 = vpaddq_s32(vpaddq_s32(v33, v35), vpaddq_s32(vmulq_s32(v31, v34), vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v36.i8, *v36.i8), *v28.i8, *v28.i8), xmmword_273BDECD0), vmlal_high_s16(vmull_high_s16(v36, v36), v28, v28), xmmword_273BDECE0)));
  v38 = vextq_s8(0, v8, 0xCuLL);
  v39 = vextq_s8(v8, 0, 0xCuLL);
  v40 = vaddq_s16(vaddq_s16(v39, vextq_s8(v7, 0, 0xEuLL)), vextq_s8(v9, 0, 0xAuLL));
  v41 = vaddq_s16(vaddq_s16(vaddq_s16(vextq_s8(0, v7, 0xCuLL), v6), vextq_s8(0, v8, 8uLL)), vextq_s8(0, v9, 4uLL));
  v42 = vaddq_s16(vaddq_s16(vextq_s8(v7, 0, 8uLL), vextq_s8(v6, 0, 4uLL)), v39);
  v43 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vextq_s8(0, v7, 0xEuLL), v6), v38), vaddq_s16(vextq_s8(0, v9, 0xAuLL), vextq_s8(0, v10, 8uLL))), vaddq_s16(vaddq_s16(vextq_s8(0, v11, 6uLL), vextq_s8(0, v12, 4uLL)), vextq_s8(0, v13, 2uLL)));
  v44 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vextq_s8(v8, 0, 8uLL), vextq_s8(v7, 0, 0xCuLL)), vextq_s8(v9, 0, 4uLL)), vaddq_s16(v10, v21)), vaddq_s16(vextq_s8(0, v12, 8uLL), vextq_s8(0, v13, 4uLL)));
  v45 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vextq_s8(0, v7, 8uLL), vextq_s8(0, v6, 4uLL)), vaddq_s16(v38, v9)), vaddq_s16(vextq_s8(v10, 0, 4uLL), vextq_s8(v11, 0, 8uLL))), vextq_s8(v12, 0, 0xCuLL));
  v46 = vaddq_s16(vaddq_s16(vextq_s8(0, v11, 8uLL), vextq_s8(0, v10, 4uLL)), vaddq_s16(vextq_s8(0, v12, 0xCuLL), v13));
  v47 = vpaddlq_s16(vpaddq_s16(vpaddq_s16(v6, v7), vpaddq_s16(v8, v9)));
  v48 = vpaddlq_s16(vpaddq_s16(vpaddq_s16(v10, v11), vpaddq_s16(v12, v13)));
  v49 = vqtbl1q_s8(vaddq_s16(vaddq_s16(v40, vaddq_s16(vextq_s8(v10, 0, 8uLL), vextq_s8(v11, 0, 6uLL))), vaddq_s16(vextq_s8(v12, 0, 4uLL), vextq_s8(v13, 0, 2uLL))), unk_273BDECA0);
  v50 = vmlaq_s32(vmulq_s32(vmlal_s16(vmull_s16(*v49.i8, *v49.i8), *v43.i8, *v43.i8), xmmword_273BDECB0), vmlal_high_s16(vmull_high_s16(v49, v49), v43, v43), xmmword_273BDECC0);
  v51 = vqtbl1q_s8(vaddq_s16(vaddq_s16(vextq_s8(v12, 0, 8uLL), v22), vextq_s8(v13, 0, 4uLL)), xmmword_273BDECF0);
  v52 = vpaddlq_s16(v41);
  v53 = vpaddlq_s16(v44);
  v54 = vpaddlq_s16(v51);
  v55 = vmlaq_s32(vmulq_s32(vmulq_s32(v53, v53), v34), vmlaq_s32(vmulq_s32(v52, v52), v54, v54), xmmword_273BDED00);
  v56 = vmulq_s32(vmlaq_s32(vmulq_s32(v47, v47), v48, v48), v34);
  v57 = vpaddlq_s16(v46);
  v58 = vpaddlq_s16(v45);
  v59 = vpaddlq_s16(vqtbl1q_s8(v42, xmmword_273BDECF0));
  v65[0] = vpaddq_s32(vpaddq_s32(v50, v55), vpaddq_s32(v56, vmlaq_s32(vmulq_s32(vmulq_s32(v58, v58), v34), vmlaq_s32(vmulq_s32(v57, v57), v59, v59), xmmword_273BDED00)));
  v65[1] = v37;
  v60 = vmaxq_u32(v65[0], v37);
  v60.i32[0] = vmaxvq_u32(v60);
  v61 = vdupq_lane_s32(*v60.i8, 0);
  v62 = v60.i32[0];
  v67.val[0] = vceqq_s32(v61, v65[0]);
  v67.val[1] = vceqq_s32(v61, v37);
  v63 = __clz(*&vqtbl2_s8(v67, 0x4080C1014181CLL));
  *a3 = (v62 - v65[0].i32[(v63 >> 3) & 7 ^ 4]) >> 10;
  return v63 >> 3;
}

int8x8_t *cdef_filter_8_0_neon(int8x8_t *result, int a2, uint16x8_t *a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, char a9, int a10, int a11)
{
  v12 = (&cdef_directions_padded + 8 * a6);
  v13 = v12[4];
  v14 = v12[5];
  v16 = v12[8];
  v15 = v12[9];
  v18 = *v12;
  v17 = v12[1];
  v19 = (&cdef_pri_taps + 8 * ((a4 >> a9) & 1));
  v20 = __clz(a4) ^ 0x1F;
  v21 = __OFSUB__(a7, v20);
  v22 = a7 - v20;
  if (v22 < 0 != v21)
  {
    v22 = 0;
  }

  if (!a4)
  {
    v22 = a7;
  }

  v23 = __clz(a5) ^ 0x1F;
  v21 = __OFSUB__(a8, v23);
  v24 = a8 - v23;
  v25 = vdupq_n_s16(a4);
  if (v24 < 0 != v21)
  {
    v24 = 0;
  }

  v26 = vdupq_n_s16(-v22);
  v27 = vld1q_dup_s16(v19);
  v28 = v19 + 2;
  v29 = vld1q_dup_s16(v28);
  v30 = vdupq_n_s16(a5);
  if (a5)
  {
    v31 = v24;
  }

  else
  {
    v31 = a8;
  }

  v32 = vdupq_n_s16(-v31);
  v33 = 2 * v17;
  if (a10 == 8)
  {
    v34 = 2 * v13;
    v35 = -2 * v13;
    do
    {
      v36 = *(a3 + v34);
      v37 = *(a3 + v35);
      v38 = *(a3 + 2 * v14);
      v39 = *(a3 - 2 * v14);
      v40 = vabdq_u16(v36, *a3);
      v41 = vcgtq_u16(v36, *a3);
      v42 = vminq_u16(v40, vqsubq_u16(v25, vshlq_u16(v40, v26)));
      v43 = vabdq_u16(v37, *a3);
      v44 = vcgtq_u16(v37, *a3);
      v45 = vminq_u16(v43, vqsubq_u16(v25, vshlq_u16(v43, v26)));
      v46 = vabdq_u16(v38, *a3);
      v47 = vcgtq_u16(v38, *a3);
      v48 = vminq_u16(v46, vqsubq_u16(v25, vshlq_u16(v46, v26)));
      v49 = vabdq_u16(v39, *a3);
      v50 = vcgtq_u16(v39, *a3);
      v51 = vminq_u16(v49, vqsubq_u16(v25, vshlq_u16(v49, v26)));
      v52 = *&vmaxq_u8(vmaxq_u8(v36, v37), vmaxq_u8(v38, v39)) & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL);
      v53 = vminq_u16(v36, v37);
      v54 = *(a3 + 2 * v16);
      v55 = *(a3 - 2 * v16);
      v56 = vminq_u16(v38, v39);
      v57 = *(a3 + 2 * v18);
      v58 = *(a3 - 2 * v18);
      v59 = vbslq_s8(v41, v42, vnegq_s16(v42));
      v60 = *(a3 + 2 * v15);
      v61 = *(a3 - 2 * v15);
      v62 = vbslq_s8(v44, v45, vnegq_s16(v45));
      v63 = vminq_u16(*a3, vminq_u16(v53, v56));
      v64 = *(a3 + v33);
      v65 = *(a3 - v33);
      v66 = vbslq_s8(v47, v48, vnegq_s16(v48));
      v67 = vabdq_u16(v54, *a3);
      v68 = vminq_u16(v67, vqsubq_u16(v30, vshlq_u16(v67, v32)));
      v69 = vbslq_s8(v50, v51, vnegq_s16(v51));
      v70 = vabdq_u16(v55, *a3);
      v71 = vminq_u16(v70, vqsubq_u16(v30, vshlq_u16(v70, v32)));
      v72 = vabdq_u16(v57, *a3);
      v73 = vminq_u16(v72, vqsubq_u16(v30, vshlq_u16(v72, v32)));
      v74 = vabdq_u16(v58, *a3);
      v75 = vaddq_s16(v62, v59);
      v76 = vminq_u16(v74, vqsubq_u16(v30, vshlq_u16(v74, v32)));
      v77 = vaddq_s16(v69, v66);
      v78 = vabdq_u16(v60, *a3);
      v79 = vaddq_s16(vbslq_s8(vcgtq_u16(v55, *a3), v71, vnegq_s16(v71)), vbslq_s8(vcgtq_u16(v54, *a3), v68, vnegq_s16(v68)));
      v80 = vminq_u16(v78, vqsubq_u16(v30, vshlq_u16(v78, v32)));
      v81 = vabdq_u16(v61, *a3);
      v82 = vaddq_s16(vbslq_s8(vcgtq_u16(v57, *a3), v73, vnegq_s16(v73)), vbslq_s8(vcgtq_u16(v58, *a3), v76, vnegq_s16(v76)));
      v83 = vminq_u16(v81, vqsubq_u16(v30, vshlq_u16(v81, v32)));
      v84 = vabdq_u16(v64, *a3);
      v85 = vminq_u16(v84, vqsubq_u16(v30, vshlq_u16(v84, v32)));
      v86 = vaddq_s16(v79, v82);
      v87 = vbslq_s8(vcgtq_u16(v64, *a3), v85, vnegq_s16(v85));
      v88 = vabdq_u16(v65, *a3);
      v89 = vminq_u16(v88, vqsubq_u16(v30, vshlq_u16(v88, v32)));
      v90 = vaddq_s16(vmlaq_s16(vmulq_s16(v75, v27), v77, v29), v87);
      v91 = *&vmaxq_u8(vmaxq_u8(vmaxq_u8(v54, v55), vmaxq_u8(v57, v58)), vmaxq_u8(vmaxq_u8(v60, v61), vmaxq_u8(v64, v65))) & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL);
      v92 = vminq_u16(vminq_u16(v54, v55), vminq_u16(v57, v58));
      v93 = vaddq_s16(v90, vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v86, v86), vbslq_s8(vcgtq_u16(v60, *a3), v80, vnegq_s16(v80))), vbslq_s8(vcgtq_u16(v61, *a3), v83, vnegq_s16(v83))), vbslq_s8(vcgtq_u16(v65, *a3), v89, vnegq_s16(v89))));
      *result = vqmovun_s16(vminq_s16(vmaxq_s16(vrsraq_n_s16(*a3, vsraq_n_s16(v93, v93, 0xFuLL), 4uLL), vminq_u16(v63, vminq_u16(v92, vminq_u16(vminq_u16(v60, v61), vminq_u16(v64, v65))))), vmaxq_u16(vmaxq_u16(*a3, v52), v91)));
      a3 += 18;
      result = (result + a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    v94 = 2 * v15;
    do
    {
      v95.i64[0] = a3->i64[0];
      v95.i64[1] = a3[18].i64[0];
      v96.i64[0] = *(a3->i64 + 2 * v13);
      v96.i64[1] = *(a3[18].i64 + 2 * v13);
      v97.i64[0] = *(a3->i64 - 2 * v13);
      v97.i64[1] = *(a3[18].i64 - 2 * v13);
      v98.i64[0] = *(a3->i64 + 2 * v14);
      v98.i64[1] = *(a3[18].i64 + 2 * v14);
      v99.i64[0] = *(a3->i64 - 2 * v14);
      v99.i64[1] = *(a3[18].i64 - 2 * v14);
      v100 = vabdq_u16(v96, v95);
      v101 = vcgtq_u16(v96, v95);
      v102 = vabdq_u16(v97, v95);
      v103 = vcgtq_u16(v97, v95);
      v104 = vminq_u16(v100, vqsubq_u16(v25, vshlq_u16(v100, v26)));
      v105 = vabdq_u16(v98, v95);
      v106 = vcgtq_u16(v98, v95);
      v107 = vminq_u16(v102, vqsubq_u16(v25, vshlq_u16(v102, v26)));
      v108 = vabdq_u16(v99, v95);
      v109 = vcgtq_u16(v99, v95);
      v110 = vminq_u16(v105, vqsubq_u16(v25, vshlq_u16(v105, v26)));
      v111 = *&vmaxq_u8(vmaxq_u8(v96, v97), vmaxq_u8(v98, v99)) & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL);
      v112 = vminq_u16(v108, vqsubq_u16(v25, vshlq_u16(v108, v26)));
      v113 = vminq_u16(v95, vminq_u16(vminq_u16(v96, v97), vminq_u16(v98, v99)));
      v114 = vmaxq_u16(v95, v111);
      v98.i64[0] = *(a3->i64 + 2 * v16);
      v98.i64[1] = *(a3[18].i64 + 2 * v16);
      v99.i64[0] = *(a3->i64 - 2 * v16);
      v99.i64[1] = *(a3[18].i64 - 2 * v16);
      *&v111 = *(a3->i64 + 2 * v18);
      *(&v111 + 1) = *(a3[18].i64 + 2 * v18);
      v105.i64[0] = *(a3->i64 - 2 * v18);
      v105.i64[1] = *(a3[18].i64 - 2 * v18);
      v108.i64[0] = *(a3->i64 + v94);
      v108.i64[1] = *(a3[18].i64 + v94);
      v115 = vbslq_s8(v101, v104, vnegq_s16(v104));
      v101.i64[0] = *(a3->i64 - v94);
      v101.i64[1] = *(a3[18].i64 - v94);
      v116 = vbslq_s8(v103, v107, vnegq_s16(v107));
      v103.i64[0] = *(a3->i64 + v33);
      v103.i64[1] = *(a3[18].i64 + v33);
      v117 = vbslq_s8(v106, v110, vnegq_s16(v110));
      v106.i64[0] = *(a3->i64 - v33);
      v106.i64[1] = *(a3[18].i64 - v33);
      v118 = vabdq_u16(v98, v95);
      v119 = vbslq_s8(v109, v112, vnegq_s16(v112));
      v120 = vminq_u16(v118, vqsubq_u16(v30, vshlq_u16(v118, v32)));
      v121 = vabdq_u16(v99, v95);
      v122 = vminq_u16(v121, vqsubq_u16(v30, vshlq_u16(v121, v32)));
      v123 = vbslq_s8(vcgtq_u16(v99, v95), v122, vnegq_s16(v122));
      v124 = vabdq_u16(v111, v95);
      v125 = vminq_u16(v124, vqsubq_u16(v30, vshlq_u16(v124, v32)));
      v126 = vaddq_s16(v116, v115);
      v127 = vbslq_s8(vcgtq_u16(v111, v95), v125, vnegq_s16(v125));
      v128 = vabdq_u16(v105, v95);
      v129 = vaddq_s16(v119, v117);
      v130 = vminq_u16(v128, vqsubq_u16(v30, vshlq_u16(v128, v32)));
      v131 = vabdq_u16(v108, v95);
      v132 = vaddq_s16(v123, vbslq_s8(vcgtq_u16(v98, v95), v120, vnegq_s16(v120)));
      v133 = vminq_u16(v131, vqsubq_u16(v30, vshlq_u16(v131, v32)));
      v134 = vaddq_s16(v127, vbslq_s8(vcgtq_u16(v105, v95), v130, vnegq_s16(v130)));
      v135 = vbslq_s8(vcgtq_u16(v108, v95), v133, vnegq_s16(v133));
      v136 = vabdq_u16(v101, v95);
      v137 = vminq_u16(v136, vqsubq_u16(v30, vshlq_u16(v136, v32)));
      v138 = vabdq_u16(v103, v95);
      v139 = vaddq_s16(v132, v134);
      v140 = vminq_u16(v138, vqsubq_u16(v30, vshlq_u16(v138, v32)));
      v141 = vabdq_u16(v106, v95);
      v142 = vminq_u16(v141, vqsubq_u16(v30, vshlq_u16(v141, v32)));
      v143 = vmlaq_s16(vmulq_s16(v126, v27), v129, v29);
      v144 = vaddq_s16(vaddq_s16(vaddq_s16(v139, v139), v135), vbslq_s8(vcgtq_u16(v101, v95), v137, vnegq_s16(v137)));
      v145 = *&vmaxq_u8(vmaxq_u8(vmaxq_u8(v98, v99), vmaxq_u8(v111, v105)), vmaxq_u8(vmaxq_u8(v108, v101), vmaxq_u8(v103, v106))) & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL);
      v146 = vminq_u16(v98, v99);
      v147 = vminq_u16(v111, v105);
      v148 = vaddq_s16(vaddq_s16(v143, vbslq_s8(vcgtq_u16(v103, v95), v140, vnegq_s16(v140))), vaddq_s16(v144, vbslq_s8(vcgtq_u16(v106, v95), v142, vnegq_s16(v142))));
      *v95.i8 = vqmovun_s16(vminq_s16(vmaxq_s16(vrsraq_n_s16(v95, vsraq_n_s16(v148, v148, 0xFuLL), 4uLL), vminq_u16(v113, vminq_u16(vminq_u16(v146, v147), vminq_u16(vminq_u16(v108, v101), vminq_u16(v103, v106))))), vmaxq_u16(v114, v145)));
      result->i32[0] = v95.i32[0];
      *(result->i32 + a2) = v95.i32[1];
      a3 += 36;
      result = (result + 2 * a2);
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

int8x8_t *cdef_filter_8_1_neon(int8x8_t *result, int a2, uint16x8_t *a3, unsigned int a4, uint64_t a5, int a6, int a7, uint64_t a8, char a9, int a10, int a11)
{
  v12 = &cdef_directions_padded + 8 * a6;
  v13 = (&cdef_pri_taps + 8 * ((a4 >> a9) & 1));
  v14 = __clz(a4) ^ 0x1F;
  v15 = __OFSUB__(a7, v14);
  v16 = a7 - v14;
  if (v16 < 0 != v15)
  {
    v16 = 0;
  }

  if (!a4)
  {
    v16 = a7;
  }

  v17 = vdupq_n_s16(a4);
  v18 = vdupq_n_s16(-v16);
  v19 = vld1q_dup_s16(v13);
  v21 = *(v12 + 4);
  v20 = *(v12 + 5);
  v22 = v13 + 2;
  v23 = vld1q_dup_s16(v22);
  if (a10 == 8)
  {
    v24 = 2 * v20;
    v25 = -2 * v20;
    v26 = 2 * v21;
    v27 = -2 * v21;
    do
    {
      v28 = *(a3 + v26);
      v29 = *(a3 + v27);
      v30 = *(a3 + v24);
      v31 = *(a3 + v25);
      v32 = vabdq_u16(v28, *a3);
      v33 = vminq_u16(v32, vqsubq_u16(v17, vshlq_u16(v32, v18)));
      v34 = vabdq_u16(v29, *a3);
      v35 = vbslq_s8(vcgtq_u16(v28, *a3), v33, vnegq_s16(v33));
      v36 = vminq_u16(v34, vqsubq_u16(v17, vshlq_u16(v34, v18)));
      v37 = vabdq_u16(v30, *a3);
      v38 = vbslq_s8(vcgtq_u16(v29, *a3), v36, vnegq_s16(v36));
      v39 = vminq_u16(v37, vqsubq_u16(v17, vshlq_u16(v37, v18)));
      v40 = vaddq_s16(v38, v35);
      v41 = vbslq_s8(vcgtq_u16(v30, *a3), v39, vnegq_s16(v39));
      v42 = vabdq_u16(v31, *a3);
      v43 = vminq_u16(v42, vqsubq_u16(v17, vshlq_u16(v42, v18)));
      v44 = vmlaq_s16(vmulq_s16(v40, v19), vaddq_s16(vbslq_s8(vcgtq_u16(v31, *a3), v43, vnegq_s16(v43)), v41), v23);
      *result = vqmovun_s16(vrsraq_n_s16(*a3, vsraq_n_s16(v44, v44, 0xFuLL), 4uLL));
      a3 += 18;
      result = (result + a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    i64 = a3[18].i64;
    v46 = 2 * v20;
    v47 = (a3->i64 - 2 * v20);
    v48 = 2 * v21;
    v49 = (a3->i64 + 2 * v21);
    v50 = (a3->i64 + v46);
    v51 = (a3->i64 - v48);
    do
    {
      v52.i64[0] = *(i64 - 36);
      v53.i64[0] = *v49;
      v52.i64[1] = *i64;
      v53.i64[1] = v49[36];
      v54.i64[0] = *v51;
      v54.i64[1] = v51[36];
      v55.i64[0] = *v50;
      v56.i64[0] = *v47;
      v55.i64[1] = v50[36];
      v56.i64[1] = v47[36];
      v57 = vabdq_u16(v53, v52);
      v58 = vminq_u16(v57, vqsubq_u16(v17, vshlq_u16(v57, v18)));
      v59 = vabdq_u16(v54, v52);
      v60 = vbslq_s8(vcgtq_u16(v53, v52), v58, vnegq_s16(v58));
      v61 = vminq_u16(v59, vqsubq_u16(v17, vshlq_u16(v59, v18)));
      v62 = vabdq_u16(v55, v52);
      v63 = vbslq_s8(vcgtq_u16(v54, v52), v61, vnegq_s16(v61));
      v64 = vminq_u16(v62, vqsubq_u16(v17, vshlq_u16(v62, v18)));
      v65 = vaddq_s16(v63, v60);
      v66 = vabdq_u16(v56, v52);
      v67 = vminq_u16(v66, vqsubq_u16(v17, vshlq_u16(v66, v18)));
      v68 = vmlaq_s16(vmulq_s16(v65, v19), vaddq_s16(vbslq_s8(vcgtq_u16(v56, v52), v67, vnegq_s16(v67)), vbslq_s8(vcgtq_u16(v55, v52), v64, vnegq_s16(v64))), v23);
      *v52.i8 = vqmovun_s16(vrsraq_n_s16(v52, vsraq_n_s16(v68, v68, 0xFuLL), 4uLL));
      result->i32[0] = v52.i32[0];
      v69 = (result + a2);
      i64 += 72;
      v47 += 72;
      result = (result + 2 * a2);
      v69->i32[0] = v52.i32[1];
      v49 += 72;
      v50 += 72;
      v51 += 72;
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

int8x8_t *cdef_filter_8_2_neon(int8x8_t *result, int a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  v12 = (&cdef_directions_padded + 8 * a6);
  v14 = v12[8];
  v13 = v12[9];
  v16 = *v12;
  v15 = v12[1];
  LODWORD(v12) = __clz(a5) ^ 0x1F;
  v17 = __OFSUB__(a8, v12);
  v18 = a8 - v12;
  if (v18 < 0 != v17)
  {
    v18 = 0;
  }

  v19 = vdupq_n_s16(a5);
  if (!a5)
  {
    v18 = a8;
  }

  v20 = vdupq_n_s16(-v18);
  v21 = 2 * v15;
  if (a10 == 8)
  {
    v22 = 2 * v14;
    do
    {
      v23 = *(a3 + v22);
      v24 = *(a3 - v22);
      v25 = *(a3 + 2 * v16);
      v26 = *(a3 - 2 * v16);
      v27 = *(a3 + 2 * v13);
      v28 = *(a3 - 2 * v13);
      v29 = *(a3 + v21);
      v30 = *(a3 - v21);
      v31 = vabdq_u16(v23, *a3);
      v32 = vminq_u16(v31, vqsubq_u16(v19, vshlq_u16(v31, v20)));
      v33 = vabdq_u16(v24, *a3);
      v34 = vbslq_s8(vcgtq_u16(v23, *a3), v32, vnegq_s16(v32));
      v35 = vminq_u16(v33, vqsubq_u16(v19, vshlq_u16(v33, v20)));
      v36 = vabdq_u16(v25, *a3);
      v37 = vbslq_s8(vcgtq_u16(v24, *a3), v35, vnegq_s16(v35));
      v38 = vminq_u16(v36, vqsubq_u16(v19, vshlq_u16(v36, v20)));
      v39 = vabdq_u16(v26, *a3);
      v40 = vbslq_s8(vcgtq_u16(v25, *a3), v38, vnegq_s16(v38));
      v41 = vminq_u16(v39, vqsubq_u16(v19, vshlq_u16(v39, v20)));
      v42 = vabdq_u16(v27, *a3);
      v43 = vbslq_s8(vcgtq_u16(v26, *a3), v41, vnegq_s16(v41));
      v44 = vminq_u16(v42, vqsubq_u16(v19, vshlq_u16(v42, v20)));
      v45 = vbslq_s8(vcgtq_u16(v27, *a3), v44, vnegq_s16(v44));
      v46 = vabdq_u16(v28, *a3);
      v47 = vminq_u16(v46, vqsubq_u16(v19, vshlq_u16(v46, v20)));
      v48 = vaddq_s16(v37, v34);
      v49 = vbslq_s8(vcgtq_u16(v28, *a3), v47, vnegq_s16(v47));
      v50 = vabdq_u16(v29, *a3);
      v51 = vaddq_s16(v40, v43);
      v52 = vminq_u16(v50, vqsubq_u16(v19, vshlq_u16(v50, v20)));
      v53 = vabdq_u16(v30, *a3);
      v54 = vaddq_s16(v48, v51);
      v55 = vminq_u16(v53, vqsubq_u16(v19, vshlq_u16(v53, v20)));
      v56 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v45, v49), vbslq_s8(vcgtq_u16(v29, *a3), v52, vnegq_s16(v52))), vbslq_s8(vcgtq_u16(v30, *a3), v55, vnegq_s16(v55))), vaddq_s16(v54, v54));
      *result = vqmovun_s16(vrsraq_n_s16(*a3, vsraq_n_s16(v56, v56, 0xFuLL), 4uLL));
      a3 += 18;
      result = (result + a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    v57 = 2 * v14;
    v58 = -2 * v14;
    v59 = 2 * v13;
    v60 = 2 * v16;
    v61 = -2 * v16;
    do
    {
      v62.i64[0] = a3->i64[0];
      v62.i64[1] = a3[18].i64[0];
      v63.i64[0] = *(a3->i64 + v57);
      v63.i64[1] = *(a3[18].i64 + v57);
      v64.i64[0] = *(a3->i64 + v58);
      v64.i64[1] = *(a3[18].i64 + v58);
      v65.i64[0] = *(a3->i64 + v60);
      v65.i64[1] = *(a3[18].i64 + v60);
      v66.i64[0] = *(a3->i64 + v61);
      v66.i64[1] = *(a3[18].i64 + v61);
      v67.i64[0] = *(a3->i64 + v59);
      v67.i64[1] = *(a3[18].i64 + v59);
      v68.i64[0] = *(a3->i64 - v59);
      v68.i64[1] = *(a3[18].i64 - v59);
      v69.i64[0] = *(a3->i64 + v21);
      v69.i64[1] = *(a3[18].i64 + v21);
      v70.i64[0] = *(a3->i64 - v21);
      v70.i64[1] = *(a3[18].i64 - v21);
      v71 = vabdq_u16(v63, v62);
      v72 = vminq_u16(v71, vqsubq_u16(v19, vshlq_u16(v71, v20)));
      v73 = vabdq_u16(v64, v62);
      v74 = vminq_u16(v73, vqsubq_u16(v19, vshlq_u16(v73, v20)));
      v75 = vabdq_u16(v65, v62);
      v76 = vbslq_s8(vcgtq_u16(v63, v62), v72, vnegq_s16(v72));
      v77 = vminq_u16(v75, vqsubq_u16(v19, vshlq_u16(v75, v20)));
      v78 = vbslq_s8(vcgtq_u16(v64, v62), v74, vnegq_s16(v74));
      v79 = vabdq_u16(v66, v62);
      v80 = vminq_u16(v79, vqsubq_u16(v19, vshlq_u16(v79, v20)));
      v81 = vbslq_s8(vcgtq_u16(v65, v62), v77, vnegq_s16(v77));
      v82 = vabdq_u16(v67, v62);
      v83 = vminq_u16(v82, vqsubq_u16(v19, vshlq_u16(v82, v20)));
      v84 = vabdq_u16(v68, v62);
      v85 = vbslq_s8(vcgtq_u16(v67, v62), v83, vnegq_s16(v83));
      v86 = vminq_u16(v84, vqsubq_u16(v19, vshlq_u16(v84, v20)));
      v87 = vbslq_s8(vcgtq_u16(v68, v62), v86, vnegq_s16(v86));
      v88 = vabdq_u16(v69, v62);
      v89 = vaddq_s16(v78, v76);
      v90 = vminq_u16(v88, vqsubq_u16(v19, vshlq_u16(v88, v20)));
      v91 = vbslq_s8(vcgtq_u16(v69, v62), v90, vnegq_s16(v90));
      v92 = vabdq_u16(v70, v62);
      v93 = vaddq_s16(v89, vaddq_s16(v81, vbslq_s8(vcgtq_u16(v66, v62), v80, vnegq_s16(v80))));
      v94 = vminq_u16(v92, vqsubq_u16(v19, vshlq_u16(v92, v20)));
      v95 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v85, v87), v91), vbslq_s8(vcgtq_u16(v70, v62), v94, vnegq_s16(v94))), vaddq_s16(v93, v93));
      *v62.i8 = vqmovun_s16(vrsraq_n_s16(v62, vsraq_n_s16(v95, v95, 0xFuLL), 4uLL));
      result->i32[0] = v62.i32[0];
      *(result->i32 + a2) = v62.i32[1];
      a3 += 36;
      result = (result + 2 * a2);
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

uint8x8_t *cdef_filter_8_3_neon(uint8x8_t *result, int a2, uint16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  if (a10 == 8)
  {
    do
    {
      *result = vqmovn_u16(*a3);
      a3 += 18;
      result = (result + a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    do
    {
      v12.i64[0] = a3->i64[0];
      v12.i64[1] = a3[18].i64[0];
      *v12.i8 = vqmovn_u16(v12);
      result->i32[0] = v12.i32[0];
      *(result->i32 + a2) = v12.i32[1];
      a3 += 36;
      result = (result + 2 * a2);
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

int16x8_t *cdef_filter_16_0_neon(int16x8_t *result, unsigned int a2, uint16x8_t *a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, char a9, int a10, int a11)
{
  v12 = (&cdef_directions_padded + 8 * a6);
  v13 = v12[4];
  v14 = v12[5];
  v16 = v12[8];
  v15 = v12[9];
  v18 = *v12;
  v17 = v12[1];
  v19 = (&cdef_pri_taps + 8 * ((a4 >> a9) & 1));
  v20 = __clz(a4) ^ 0x1F;
  v21 = __OFSUB__(a7, v20);
  v22 = a7 - v20;
  if (v22 < 0 != v21)
  {
    v22 = 0;
  }

  if (!a4)
  {
    v22 = a7;
  }

  v23 = __clz(a5) ^ 0x1F;
  v21 = __OFSUB__(a8, v23);
  v24 = a8 - v23;
  if (v24 < 0 != v21)
  {
    v24 = 0;
  }

  v25 = vdupq_n_s16(a4);
  v26 = vdupq_n_s16(-v22);
  if (a5)
  {
    v27 = v24;
  }

  else
  {
    v27 = a8;
  }

  v28 = vld1q_dup_s16(v19);
  v29 = v19 + 2;
  v30 = vld1q_dup_s16(v29);
  v31 = vdupq_n_s16(a5);
  v32 = vdupq_n_s16(-v27);
  if (a10 == 8)
  {
    v33 = 2 * v17;
    v34 = 2 * v13;
    v35 = -2 * v13;
    do
    {
      v36 = *(a3 + v34);
      v37 = *(a3 + v35);
      v38 = *(a3 + 2 * v14);
      v39 = *(a3 - 2 * v14);
      v40 = vabdq_u16(v36, *a3);
      v41 = vcgtq_u16(v36, *a3);
      v42 = vabdq_u16(v37, *a3);
      v43 = vcgtq_u16(v37, *a3);
      v44 = vminq_u16(v40, vqsubq_u16(v25, vshlq_u16(v40, v26)));
      v45 = vabdq_u16(v38, *a3);
      v46 = vcgtq_u16(v38, *a3);
      v47 = vminq_u16(v42, vqsubq_u16(v25, vshlq_u16(v42, v26)));
      v48 = vminq_u16(v45, vqsubq_u16(v25, vshlq_u16(v45, v26)));
      v49 = vabdq_u16(v39, *a3);
      v50 = vcgtq_u16(v39, *a3);
      v51 = vminq_u16(v49, vqsubq_u16(v25, vshlq_u16(v49, v26)));
      v52 = vminq_u16(*a3, vminq_u16(vminq_u16(v36, v37), vminq_u16(v38, v39)));
      v53 = vmaxq_u16((*&v36 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v37 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)));
      v54 = *(a3 + 2 * v16);
      v55 = *(a3 - 2 * v16);
      v56 = vmaxq_u16((*&v38 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v39 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)));
      v57 = *(a3 + 2 * v18);
      v58 = *(a3 - 2 * v18);
      v59 = vbslq_s8(v41, v44, vnegq_s16(v44));
      v60 = *(a3 + 2 * v15);
      v61 = *(a3 - 2 * v15);
      v62 = vbslq_s8(v43, v47, vnegq_s16(v47));
      v63 = *(a3 + v33);
      v64 = *(a3 - v33);
      v65 = vbslq_s8(v46, v48, vnegq_s16(v48));
      v66 = vabdq_u16(v54, *a3);
      v67 = vminq_u16(v66, vqsubq_u16(v31, vshlq_u16(v66, v32)));
      v68 = vbslq_s8(v50, v51, vnegq_s16(v51));
      v69 = vabdq_u16(v55, *a3);
      v70 = vminq_u16(v69, vqsubq_u16(v31, vshlq_u16(v69, v32)));
      v71 = vabdq_u16(v57, *a3);
      v72 = vminq_u16(v71, vqsubq_u16(v31, vshlq_u16(v71, v32)));
      v73 = vabdq_u16(v58, *a3);
      v74 = vminq_u16(v73, vqsubq_u16(v31, vshlq_u16(v73, v32)));
      v75 = vaddq_s16(v68, v65);
      v76 = vbslq_s8(vcgtq_u16(v58, *a3), v74, vnegq_s16(v74));
      v77 = vabdq_u16(v60, *a3);
      v78 = vaddq_s16(vbslq_s8(vcgtq_u16(v55, *a3), v70, vnegq_s16(v70)), vbslq_s8(vcgtq_u16(v54, *a3), v67, vnegq_s16(v67)));
      v79 = vminq_u16(v77, vqsubq_u16(v31, vshlq_u16(v77, v32)));
      v80 = vabdq_u16(v61, *a3);
      v81 = vaddq_s16(vbslq_s8(vcgtq_u16(v57, *a3), v72, vnegq_s16(v72)), v76);
      v82 = vminq_u16(v80, vqsubq_u16(v31, vshlq_u16(v80, v32)));
      v83 = vabdq_u16(v63, *a3);
      v84 = vminq_u16(v83, vqsubq_u16(v31, vshlq_u16(v83, v32)));
      v85 = vaddq_s16(v78, v81);
      v86 = vbslq_s8(vcgtq_u16(v63, *a3), v84, vnegq_s16(v84));
      v87 = vabdq_u16(v64, *a3);
      v88 = vminq_u16(v87, vqsubq_u16(v31, vshlq_u16(v87, v32)));
      v89 = vaddq_s16(vaddq_s16(vmlaq_s16(vmulq_s16(vaddq_s16(v62, v59), v28), v75, v30), v86), vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v85, v85), vbslq_s8(vcgtq_u16(v60, *a3), v79, vnegq_s16(v79))), vbslq_s8(vcgtq_u16(v61, *a3), v82, vnegq_s16(v82))), vbslq_s8(vcgtq_u16(v64, *a3), v88, vnegq_s16(v88))));
      *result = vminq_s16(vmaxq_s16(vrsraq_n_s16(*a3, vsraq_n_s16(v89, v89, 0xFuLL), 4uLL), vminq_u16(v52, vminq_u16(vminq_u16(vminq_u16(v54, v55), vminq_u16(v57, v58)), vminq_u16(vminq_u16(v60, v61), vminq_u16(v63, v64))))), vmaxq_u16(vmaxq_u16(*a3, vmaxq_u16(v53, v56)), vmaxq_u16(vmaxq_u16(vmaxq_u16((*&v54 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v55 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL))), vmaxq_u16((*&v57 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v58 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)))), vmaxq_u16(vmaxq_u16((*&v60 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v61 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL))), vmaxq_u16((*&v63 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v64 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)))))));
      a3 += 18;
      result = (result + 2 * a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    v90 = 2 * (2 * a2);
    v91 = 2 * v17;
    v92 = 2 * v13;
    v93 = -2 * v13;
    v94 = 2 * v15;
    v95 = 2 * v14;
    v96 = -2 * v14;
    v97 = 2 * v16;
    v98 = -2 * v16;
    v99 = 2 * a2;
    do
    {
      v100.i64[0] = a3->i64[0];
      v100.i64[1] = a3[18].i64[0];
      v101.i64[0] = *(a3->i64 + v92);
      v101.i64[1] = *(a3[18].i64 + v92);
      v102.i64[0] = *(a3->i64 + v93);
      v103 = (a3[18].i64 + v95);
      v102.i64[1] = *(a3[18].i64 + v93);
      v104.i64[0] = *(a3->i64 + v95);
      v105.i64[0] = *(a3->i64 + v96);
      v104.i64[1] = *v103;
      v105.i64[1] = *(a3[18].i64 + v96);
      v106 = vabdq_u16(v101, v100);
      v107 = vcgtq_u16(v101, v100);
      v108 = vabdq_u16(v102, v100);
      v109 = vcgtq_u16(v102, v100);
      v110 = vabdq_u16(v104, v100);
      v111 = vminq_u16(v106, vqsubq_u16(v25, vshlq_u16(v106, v26)));
      v112 = vcgtq_u16(v104, v100);
      v113 = vabdq_u16(v105, v100);
      v114 = vcgtq_u16(v105, v100);
      v115 = vminq_u16(v108, vqsubq_u16(v25, vshlq_u16(v108, v26)));
      v116 = vminq_u16(v110, vqsubq_u16(v25, vshlq_u16(v110, v26)));
      v117 = vminq_u16(v100, vminq_u16(vminq_u16(v101, v102), vminq_u16(v104, v105)));
      v104.i64[0] &= 0xBFFFBFFFBFFFBFFFLL;
      v104.i32[2] = *v103 & 0xBFFFBFFF;
      v104.i16[6] = HIDWORD(*v103) & 0xBFFF;
      v104.i16[7] = v104.i16[6];
      v118 = vminq_u16(v113, vqsubq_u16(v25, vshlq_u16(v113, v26)));
      v119 = vmaxq_u16(v100, vmaxq_u16(vmaxq_u16((*&v101 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v102 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL))), vmaxq_u16(v104, (*&v105 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)))));
      v102.i64[0] = *(a3->i64 + v97);
      v102.i64[1] = *(a3[18].i64 + v97);
      v104.i64[0] = *(a3->i64 + v98);
      v104.i64[1] = *(a3[18].i64 + v98);
      v105.i64[0] = *(a3->i64 + 2 * v18);
      v105.i64[1] = *(a3[18].i64 + 2 * v18);
      v113.i64[0] = *(a3->i64 - 2 * v18);
      v113.i64[1] = *(a3[18].i64 - 2 * v18);
      v108.i64[0] = *(a3->i64 + v94);
      v108.i64[1] = *(a3[18].i64 + v94);
      v120 = vbslq_s8(v107, v111, vnegq_s16(v111));
      v107.i64[0] = *(a3->i64 - v94);
      v107.i64[1] = *(a3[18].i64 - v94);
      v121 = vbslq_s8(v109, v115, vnegq_s16(v115));
      v109.i64[0] = *(a3->i64 + v91);
      v109.i64[1] = *(a3[18].i64 + v91);
      v122 = (a3[18].i64 - v91);
      v123 = vbslq_s8(v112, v116, vnegq_s16(v116));
      v112.i64[0] = *(a3->i64 - v91);
      v112.i64[1] = *v122;
      v124 = vabdq_u16(v102, v100);
      v125 = vbslq_s8(v114, v118, vnegq_s16(v118));
      v126 = vminq_u16(v124, vqsubq_u16(v31, vshlq_u16(v124, v32)));
      v127 = vabdq_u16(v104, v100);
      v128 = vminq_u16(v127, vqsubq_u16(v31, vshlq_u16(v127, v32)));
      v129 = vbslq_s8(vcgtq_u16(v104, v100), v128, vnegq_s16(v128));
      v130 = vabdq_u16(v105, v100);
      v131 = vminq_u16(v130, vqsubq_u16(v31, vshlq_u16(v130, v32)));
      v132 = vaddq_s16(v121, v120);
      v133 = vbslq_s8(vcgtq_u16(v105, v100), v131, vnegq_s16(v131));
      v134 = vabdq_u16(v113, v100);
      v135 = vaddq_s16(v125, v123);
      v136 = vminq_u16(v134, vqsubq_u16(v31, vshlq_u16(v134, v32)));
      v137 = vabdq_u16(v108, v100);
      v138 = vaddq_s16(v129, vbslq_s8(vcgtq_u16(v102, v100), v126, vnegq_s16(v126)));
      v139 = vminq_u16(v137, vqsubq_u16(v31, vshlq_u16(v137, v32)));
      v140 = vaddq_s16(v133, vbslq_s8(vcgtq_u16(v113, v100), v136, vnegq_s16(v136)));
      v141 = vbslq_s8(vcgtq_u16(v108, v100), v139, vnegq_s16(v139));
      v142 = vabdq_u16(v107, v100);
      v143 = vminq_u16(v142, vqsubq_u16(v31, vshlq_u16(v142, v32)));
      v144 = vabdq_u16(v109, v100);
      v145 = vaddq_s16(v138, v140);
      v146 = vminq_u16(v144, vqsubq_u16(v31, vshlq_u16(v144, v32)));
      v147 = vabdq_u16(v112, v100);
      v148 = vminq_u16(v147, vqsubq_u16(v31, vshlq_u16(v147, v32)));
      v149 = vmlaq_s16(vmulq_s16(v132, v28), v135, v30);
      v150 = vaddq_s16(vaddq_s16(v145, v145), v141);
      v151 = vminq_u16(vminq_u16(vminq_u16(v102, v104), vminq_u16(v105, v113)), vminq_u16(vminq_u16(v108, v107), vminq_u16(v109, v112)));
      v152 = vaddq_s16(vaddq_s16(v150, vbslq_s8(vcgtq_u16(v107, v100), v143, vnegq_s16(v143))), vbslq_s8(vcgtq_u16(v112, v100), v148, vnegq_s16(v148)));
      v112.i64[0] &= 0xBFFFBFFFBFFFBFFFLL;
      v112.i32[2] = *v122 & 0xBFFFBFFF;
      v112.i16[6] = HIDWORD(*v122) & 0xBFFF;
      v112.i16[7] = v112.i16[6];
      v153 = vmaxq_u16((*&v102 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v104 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)));
      v154 = vmaxq_u16((*&v105 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v113 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)));
      v155 = vaddq_s16(vaddq_s16(v149, vbslq_s8(vcgtq_u16(v109, v100), v146, vnegq_s16(v146))), v152);
      v156 = vminq_s16(vmaxq_s16(vrsraq_n_s16(v100, vsraq_n_s16(v155, v155, 0xFuLL), 4uLL), vminq_u16(v117, v151)), vmaxq_u16(v119, vmaxq_u16(vmaxq_u16(v153, v154), vmaxq_u16(vmaxq_u16((*&v108 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), (*&v107 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL))), vmaxq_u16((*&v109 & __PAIR128__(0xBFFFBFFFBFFFBFFFLL, 0xBFFFBFFFBFFFBFFFLL)), v112)))));
      result->i64[0] = v156.i64[0];
      *(result->i64 + v99) = v156.i64[1];
      a3 += 36;
      result = (result + v90);
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

int16x8_t *cdef_filter_16_1_neon(int16x8_t *result, unsigned int a2, uint16x8_t *a3, unsigned int a4, uint64_t a5, int a6, int a7, uint64_t a8, char a9, int a10, int a11)
{
  v12 = &cdef_directions_padded + 8 * a6;
  v14 = *(v12 + 4);
  v13 = *(v12 + 5);
  v15 = (&cdef_pri_taps + 8 * ((a4 >> a9) & 1));
  v16 = __clz(a4) ^ 0x1F;
  v17 = __OFSUB__(a7, v16);
  v18 = a7 - v16;
  if (v18 < 0 != v17)
  {
    v18 = 0;
  }

  if (!a4)
  {
    v18 = a7;
  }

  v19 = vdupq_n_s16(a4);
  v20 = vdupq_n_s16(-v18);
  v21 = vld1q_dup_s16(v15);
  v22 = v15 + 2;
  v23 = vld1q_dup_s16(v22);
  if (a10 == 8)
  {
    v24 = 2 * v13;
    v25 = -2 * v13;
    v26 = 2 * v14;
    do
    {
      v27 = *(a3 + v26);
      v28 = *(a3 - v26);
      v29 = *(a3 + v24);
      v30 = *(a3 + v25);
      v31 = vabdq_u16(v27, *a3);
      v32 = vminq_u16(v31, vqsubq_u16(v19, vshlq_u16(v31, v20)));
      v33 = vabdq_u16(v28, *a3);
      v34 = vbslq_s8(vcgtq_u16(v27, *a3), v32, vnegq_s16(v32));
      v35 = vminq_u16(v33, vqsubq_u16(v19, vshlq_u16(v33, v20)));
      v36 = vbslq_s8(vcgtq_u16(v28, *a3), v35, vnegq_s16(v35));
      v37 = vabdq_u16(v29, *a3);
      v38 = vminq_u16(v37, vqsubq_u16(v19, vshlq_u16(v37, v20)));
      v39 = vaddq_s16(v36, v34);
      v40 = vbslq_s8(vcgtq_u16(v29, *a3), v38, vnegq_s16(v38));
      v41 = vabdq_u16(v30, *a3);
      v42 = vminq_u16(v41, vqsubq_u16(v19, vshlq_u16(v41, v20)));
      v43 = vmlaq_s16(vmulq_s16(v39, v21), vaddq_s16(vbslq_s8(vcgtq_u16(v30, *a3), v42, vnegq_s16(v42)), v40), v23);
      *result = vrsraq_n_s16(*a3, vsraq_n_s16(v43, v43, 0xFuLL), 4uLL);
      a3 += 18;
      result = (result + 2 * a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    i64 = a3[18].i64;
    v45 = 2 * v13;
    v46 = (a3->i64 - 2 * v13);
    v47 = 2 * v14;
    v48 = (a3->i64 + 2 * v14);
    v49 = (a3->i64 + v45);
    v50 = (a3->i64 - v47);
    do
    {
      v51.i64[0] = *(i64 - 36);
      v52.i64[0] = *v48;
      v51.i64[1] = *i64;
      v52.i64[1] = v48[36];
      v53.i64[0] = *v50;
      v53.i64[1] = v50[36];
      v54.i64[0] = *v49;
      v54.i64[1] = v49[36];
      v55.i64[0] = *v46;
      v55.i64[1] = v46[36];
      v56 = vabdq_u16(v52, v51);
      v57 = vminq_u16(v56, vqsubq_u16(v19, vshlq_u16(v56, v20)));
      v58 = vabdq_u16(v53, v51);
      v59 = vbslq_s8(vcgtq_u16(v52, v51), v57, vnegq_s16(v57));
      v60 = vminq_u16(v58, vqsubq_u16(v19, vshlq_u16(v58, v20)));
      v61 = vabdq_u16(v54, v51);
      v62 = vbslq_s8(vcgtq_u16(v53, v51), v60, vnegq_s16(v60));
      v63 = vminq_u16(v61, vqsubq_u16(v19, vshlq_u16(v61, v20)));
      v64 = vaddq_s16(v62, v59);
      v65 = vbslq_s8(vcgtq_u16(v54, v51), v63, vnegq_s16(v63));
      v66 = vabdq_u16(v55, v51);
      v67 = vminq_u16(v66, vqsubq_u16(v19, vshlq_u16(v66, v20)));
      v68 = vmlaq_s16(vmulq_s16(v64, v21), vaddq_s16(vbslq_s8(vcgtq_u16(v55, v51), v67, vnegq_s16(v67)), v65), v23);
      v69 = vrsraq_n_s16(v51, vsraq_n_s16(v68, v68, 0xFuLL), 4uLL);
      result->i64[0] = v69.i64[0];
      v70 = (result->i64 + 2 * a2);
      i64 += 72;
      v46 += 72;
      result = (result + 2 * (2 * a2));
      *v70 = v69.i64[1];
      v48 += 72;
      v49 += 72;
      v50 += 72;
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

int16x8_t *cdef_filter_16_2_neon(int16x8_t *result, unsigned int a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  v12 = (&cdef_directions_padded + 8 * a6);
  v14 = v12[8];
  v13 = v12[9];
  v16 = *v12;
  v15 = v12[1];
  LODWORD(v12) = __clz(a5) ^ 0x1F;
  v17 = __OFSUB__(a8, v12);
  v18 = a8 - v12;
  if (v18 < 0 != v17)
  {
    v18 = 0;
  }

  if (!a5)
  {
    v18 = a8;
  }

  v19 = vdupq_n_s16(a5);
  v20 = vdupq_n_s16(-v18);
  if (a10 == 8)
  {
    v21 = 2 * v15;
    v22 = 2 * v14;
    do
    {
      v23 = *(a3 + v22);
      v24 = *(a3 - v22);
      v25 = *(a3 + 2 * v16);
      v26 = *(a3 - 2 * v16);
      v27 = *(a3 + 2 * v13);
      v28 = *(a3 - 2 * v13);
      v29 = *(a3 + v21);
      v30 = *(a3 - v21);
      v31 = vabdq_u16(v23, *a3);
      v32 = vminq_u16(v31, vqsubq_u16(v19, vshlq_u16(v31, v20)));
      v33 = vabdq_u16(v24, *a3);
      v34 = vminq_u16(v33, vqsubq_u16(v19, vshlq_u16(v33, v20)));
      v35 = vabdq_u16(v25, *a3);
      v36 = vbslq_s8(vcgtq_u16(v23, *a3), v32, vnegq_s16(v32));
      v37 = vminq_u16(v35, vqsubq_u16(v19, vshlq_u16(v35, v20)));
      v38 = vabdq_u16(v26, *a3);
      v39 = vbslq_s8(vcgtq_u16(v24, *a3), v34, vnegq_s16(v34));
      v40 = vminq_u16(v38, vqsubq_u16(v19, vshlq_u16(v38, v20)));
      v41 = vabdq_u16(v27, *a3);
      v42 = vbslq_s8(vcgtq_u16(v25, *a3), v37, vnegq_s16(v37));
      v43 = vminq_u16(v41, vqsubq_u16(v19, vshlq_u16(v41, v20)));
      v44 = vbslq_s8(vcgtq_u16(v27, *a3), v43, vnegq_s16(v43));
      v45 = vabdq_u16(v28, *a3);
      v46 = vaddq_s16(v39, v36);
      v47 = vminq_u16(v45, vqsubq_u16(v19, vshlq_u16(v45, v20)));
      v48 = vbslq_s8(vcgtq_u16(v28, *a3), v47, vnegq_s16(v47));
      v49 = vabdq_u16(v29, *a3);
      v50 = vaddq_s16(v42, vbslq_s8(vcgtq_u16(v26, *a3), v40, vnegq_s16(v40)));
      v51 = vminq_u16(v49, vqsubq_u16(v19, vshlq_u16(v49, v20)));
      v52 = vaddq_s16(v46, v50);
      v53 = vabdq_u16(v30, *a3);
      v54 = vminq_u16(v53, vqsubq_u16(v19, vshlq_u16(v53, v20)));
      v55 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v44, v48), vbslq_s8(vcgtq_u16(v29, *a3), v51, vnegq_s16(v51))), vbslq_s8(vcgtq_u16(v30, *a3), v54, vnegq_s16(v54))), vaddq_s16(v52, v52));
      *result = vrsraq_n_s16(*a3, vsraq_n_s16(v55, v55, 0xFuLL), 4uLL);
      a3 += 18;
      result = (result + 2 * a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    v56 = 2 * (2 * a2);
    v57 = 2 * v15;
    v58 = 2 * v14;
    v59 = -2 * v14;
    v60 = 2 * v13;
    v61 = 2 * v16;
    v62 = -2 * v16;
    v63 = 2 * a2;
    do
    {
      v64.i64[0] = a3->i64[0];
      v64.i64[1] = a3[18].i64[0];
      v65.i64[0] = *(a3->i64 + v58);
      v65.i64[1] = *(a3[18].i64 + v58);
      v66.i64[0] = *(a3->i64 + v59);
      v66.i64[1] = *(a3[18].i64 + v59);
      v67.i64[0] = *(a3->i64 + v61);
      v67.i64[1] = *(a3[18].i64 + v61);
      v68.i64[0] = *(a3->i64 + v62);
      v68.i64[1] = *(a3[18].i64 + v62);
      v69.i64[0] = *(a3->i64 + v60);
      v69.i64[1] = *(a3[18].i64 + v60);
      v70.i64[0] = *(a3->i64 - v60);
      v70.i64[1] = *(a3[18].i64 - v60);
      v71.i64[0] = *(a3->i64 + v57);
      v71.i64[1] = *(a3[18].i64 + v57);
      v72.i64[0] = *(a3->i64 - v57);
      v72.i64[1] = *(a3[18].i64 - v57);
      v73 = vabdq_u16(v65, v64);
      v74 = vminq_u16(v73, vqsubq_u16(v19, vshlq_u16(v73, v20)));
      v75 = vabdq_u16(v66, v64);
      v76 = vminq_u16(v75, vqsubq_u16(v19, vshlq_u16(v75, v20)));
      v77 = vbslq_s8(vcgtq_u16(v65, v64), v74, vnegq_s16(v74));
      v78 = vabdq_u16(v67, v64);
      v79 = vminq_u16(v78, vqsubq_u16(v19, vshlq_u16(v78, v20)));
      v80 = vabdq_u16(v68, v64);
      v81 = vbslq_s8(vcgtq_u16(v67, v64), v79, vnegq_s16(v79));
      v82 = vminq_u16(v80, vqsubq_u16(v19, vshlq_u16(v80, v20)));
      v83 = vabdq_u16(v69, v64);
      v84 = vbslq_s8(vcgtq_u16(v68, v64), v82, vnegq_s16(v82));
      v85 = vminq_u16(v83, vqsubq_u16(v19, vshlq_u16(v83, v20)));
      v86 = vabdq_u16(v70, v64);
      v87 = vbslq_s8(vcgtq_u16(v69, v64), v85, vnegq_s16(v85));
      v88 = vminq_u16(v86, vqsubq_u16(v19, vshlq_u16(v86, v20)));
      v89 = vaddq_s16(vbslq_s8(vcgtq_u16(v66, v64), v76, vnegq_s16(v76)), v77);
      v90 = vabdq_u16(v71, v64);
      v91 = vminq_u16(v90, vqsubq_u16(v19, vshlq_u16(v90, v20)));
      v92 = vaddq_s16(v81, v84);
      v93 = vabdq_u16(v72, v64);
      v94 = vaddq_s16(v89, v92);
      v95 = vminq_u16(v93, vqsubq_u16(v19, vshlq_u16(v93, v20)));
      v96 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v87, vbslq_s8(vcgtq_u16(v70, v64), v88, vnegq_s16(v88))), vbslq_s8(vcgtq_u16(v71, v64), v91, vnegq_s16(v91))), vbslq_s8(vcgtq_u16(v72, v64), v95, vnegq_s16(v95))), vaddq_s16(v94, v94));
      v97 = vrsraq_n_s16(v64, vsraq_n_s16(v96, v96, 0xFuLL), 4uLL);
      result->i64[0] = v97.i64[0];
      *(result->i64 + v63) = v97.i64[1];
      a3 += 36;
      result = (result + v56);
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

_OWORD *cdef_filter_16_3_neon(_OWORD *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  if (a10 == 8)
  {
    do
    {
      *result = *a3;
      a3 += 288;
      result = (result + 2 * a2);
      --a11;
    }

    while (a11);
  }

  else
  {
    do
    {
      v12 = *(a3 + 288);
      *result = *a3;
      *(result + 2 * a2) = v12;
      a3 += 576;
      result = (result + 2 * (2 * a2));
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

uint64_t av1_cfl_predict_block(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  v8 = **(a1 + 7864);
  if (*(a1 + 15012))
  {
    goto LABEL_33;
  }

  v9 = tx_size_wide_4[a4];
  v10 = tx_size_high_3[a4];
  v11 = a1 + 10776;
  v12 = *(a1 + 15008);
  v13 = (v9 - v12);
  v14 = *(a1 + 15004);
  v15 = v10 - v14;
  if (v13 >= 1)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = 2 * v12;
      v18 = v11 + 2 * v12;
      v19 = (v17 + a1 + 10792);
      do
      {
        v20 = *(v18 - 2);
        if (v13 >= 4)
        {
          if (v13 < 0x10)
          {
            v22 = 0;
LABEL_14:
            v26 = vdup_n_s16(v20);
            v27 = 2 * v22;
            v28 = v22 - (v13 & 0x7FFFFFFC);
            do
            {
              *(v18 + v27) = v26;
              v27 += 8;
              v28 += 4;
            }

            while (v28);
            v21 = v13 & 0x7FFFFFFC;
            if (v21 == v13)
            {
              goto LABEL_5;
            }

            goto LABEL_17;
          }

          v23 = vdupq_n_s16(v20);
          v24 = v13 & 0x7FFFFFF0;
          v25 = v19;
          do
          {
            v25[-1] = v23;
            *v25 = v23;
            v25 += 2;
            v24 -= 16;
          }

          while (v24);
          if ((v13 & 0x7FFFFFF0) == v13)
          {
            goto LABEL_5;
          }

          v22 = v13 & 0x7FFFFFF0;
          v21 = v22;
          if ((v13 & 0xC) != 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v21 = 0;
        }

        do
        {
LABEL_17:
          *(v18 + 2 * v21++) = v20;
        }

        while (v13 != v21);
LABEL_5:
        v18 += 64;
        ++v16;
        v19 += 4;
      }

      while (v16 != v14);
    }

    *(a1 + 15008) = v9;
  }

  v29 = a2;
  v30 = a3;
  if (v15 < 1)
  {
    goto LABEL_32;
  }

  v31 = 0;
  v32 = 64 * v14;
  v33 = (v11 + v32);
  v34 = v32 + a1 + 10712;
  do
  {
    if ((0x2021uLL >> a4))
    {
      v37 = 0;
      do
      {
LABEL_29:
        *(v33 + v37) = *(v34 + 2 * v37);
        ++v37;
      }

      while (v9 != v37);
      goto LABEL_22;
    }

    v35 = v9 & 0x7FFFFFF8;
    v36 = v33;
    do
    {
      *v36 = *(v36 - 4);
      ++v36;
      v35 -= 8;
    }

    while (v35);
    v37 = v9 & 0x7FFFFFF8;
    if (v37 != v9)
    {
      goto LABEL_29;
    }

LABEL_22:
    v33 += 4;
    ++v31;
    v34 += 64;
  }

  while (v31 != v15);
  *(a1 + 15004) = v10;
LABEL_32:
  cfl_get_subtract_average_fn_neon_sub_avg[(a4 - 19 * ((27 * a4) >> 9))]();
  *(a1 + 15012) = 1;
  a3 = v30;
  a2 = v29;
LABEL_33:
  v38 = *(v8 + 93);
  v39 = *(v8 + 92);
  v40 = -3 * ((11 * (v39 + 1)) >> 5) + v39 + 1;
  v41 = (11 * v39 + 11) >> 5;
  if (a5 != 1)
  {
    v41 = v40;
  }

  v42 = v38 >> 4;
  v43 = v38 & 0xF;
  if (a5 == 1)
  {
    v43 = v42;
  }

  if (v41 == 2)
  {
    v44 = v43 + 1;
  }

  else
  {
    v44 = ~v43;
  }

  v45 = cfl_get_predict_lbd_fn_neon_pred[(a4 - 19 * ((27 * a4) >> 9))];
  if (v41)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  return (v45)(a1 + 12824, a2, a3, v46);
}

uint64_t cfl_store_tx(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v6 = *(a1 + 56);
  if ((0x20005uLL >> a5) & 1) != 0 || (v7 = a2, v8 = a3, ((0x10003uLL >> a5)))
  {
    v7 = a2;
    if (*a1)
    {
      if (*(a1 + 15020))
      {
        v7 = a2 + 1;
      }

      else
      {
        v7 = a2;
      }
    }

    if (*(a1 + 4))
    {
      if (*(a1 + 15016))
      {
        v8 = a3 + 1;
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a3;
    }
  }

  v9 = *(a1 + 15016);
  v10 = *(a1 + 15020);
  v11 = v7 << (2 - v10);
  v12 = v8 << (2 - v9);
  v13 = *(a1 + 32);
  v14 = tx_size_high_3[a4] >> v10;
  v15 = tx_size_wide_4[a4] >> v9;
  *(a1 + 15012) = 0;
  if (v8 | v7)
  {
    v16 = v12 + v15;
    if (v12 + v15 <= *(a1 + 15008))
    {
      v16 = *(a1 + 15008);
    }

    *(a1 + 15008) = v16;
    v17 = v11 + v14;
    if (v11 + v14 <= *(a1 + 15004))
    {
      v17 = *(a1 + 15004);
    }

    *(a1 + 15004) = v17;
  }

  else
  {
    *(a1 + 15008) = v15;
    *(a1 + 15004) = v14;
  }

  v18 = cfl_get_luma_subsampling_422_lbd_neon_subfn_422;
  if (v10 == 1)
  {
    v18 = cfl_get_luma_subsampling_420_lbd_neon_subfn_420;
  }

  if (v9 != 1)
  {
    v18 = cfl_get_luma_subsampling_444_lbd_neon_subfn_444;
  }

  return (v18[a4])(v13 + 4 * (a3 + v6 * a2));
}

uint64_t cfl_store_block(uint64_t a1, int a2, int a3)
{
  if ((0x20005uLL >> a2) & 1) != 0 || ((0x10003uLL >> a2))
  {
    v7 = *(a1 + 4);
    if (*a1)
    {
      v3 = *(a1 + 15020) != 0;
      if (v7)
      {
LABEL_7:
        v4 = *(a1 + 15016) != 0;
        v5 = block_size_wide_5[a2];
        v6 = *(a1 + 7928);
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if (v7)
      {
        goto LABEL_7;
      }
    }

    v4 = 0;
    v5 = block_size_wide_5[a2];
    v6 = *(a1 + 7928);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0;
  v5 = block_size_wide_5[a2];
  v6 = *(a1 + 7928);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  v5 += v6 >> (*(a1 + 20) + 3);
LABEL_12:
  v8 = -1 << tx_size_wide_log2_1[a3];
  v9 = ((v5 & 0xFFFFFFFC) + ~v8) & v8;
  v10 = block_size_high_4[a2];
  v11 = *(a1 + 7936);
  if (v11 < 0)
  {
    v10 += v11 >> (*(a1 + 24) + 3);
  }

  v12 = -1 << tx_size_high_log2_1[a3];
  v13 = ((v10 & 0xFFFFFFFC) + ~v12) & v12;
  if (v9 != v13)
  {
    if (v9 >= v13)
    {
      if (v9 != 2 * v13)
      {
        switch(v13)
        {
          case 4:
            v14 = 14;
            break;
          case 16:
            v14 = 18;
            break;
          case 8:
            v14 = 16;
            goto LABEL_45;
          default:
            goto LABEL_39;
        }

        goto LABEL_45;
      }

      HIDWORD(v18) = v13 - 4;
      LODWORD(v18) = v13 - 4;
      v15 = v18 >> 2;
      if (v15 < 8)
      {
        v17 = &unk_273BDEEB8;
        goto LABEL_27;
      }
    }

    else
    {
      if (v13 != 2 * v9)
      {
        switch(v9)
        {
          case 4:
            v14 = 13;
            break;
          case 16:
            v14 = 17;
            break;
          case 8:
            v14 = 15;
            goto LABEL_45;
          default:
            goto LABEL_39;
        }

        goto LABEL_45;
      }

      HIDWORD(v16) = v9 - 4;
      LODWORD(v16) = v9 - 4;
      v15 = v16 >> 2;
      if (v15 < 8)
      {
        v17 = &unk_273BDEE78;
LABEL_27:
        v14 = v17[v15];
        goto LABEL_45;
      }
    }

LABEL_39:
    v14 = 0;
    goto LABEL_45;
  }

  if (v9 <= 31)
  {
    if (v9 != 8)
    {
      if (v9 == 16)
      {
        v14 = 2;
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    v14 = 1;
  }

  else
  {
    v14 = 4;
    if (v9 != 128 && v9 != 64)
    {
      if (v9 == 32)
      {
        v14 = 3;
        goto LABEL_45;
      }

      goto LABEL_39;
    }
  }

LABEL_45:
  v19 = *(a1 + 32);
  v20 = *(a1 + 15016);
  v21 = *(a1 + 15020);
  v22 = v3 << (2 - v21);
  v23 = v4 << (2 - v20);
  v24 = *(a1 + 56);
  v25 = tx_size_high_3[v14] >> v21;
  v26 = tx_size_wide_4[v14] >> v20;
  *(a1 + 15012) = 0;
  if (v4 | v3)
  {
    v27 = v23 + v26;
    if (v23 + v26 <= *(a1 + 15008))
    {
      v27 = *(a1 + 15008);
    }

    *(a1 + 15008) = v27;
    v28 = v22 + v25;
    if (v22 + v25 <= *(a1 + 15004))
    {
      v28 = *(a1 + 15004);
    }

    *(a1 + 15004) = v28;
  }

  else
  {
    *(a1 + 15008) = v26;
    *(a1 + 15004) = v25;
  }

  v29 = cfl_get_luma_subsampling_422_lbd_neon_subfn_422;
  if (v21 == 1)
  {
    v29 = cfl_get_luma_subsampling_420_lbd_neon_subfn_420;
  }

  if (v20 != 1)
  {
    v29 = cfl_get_luma_subsampling_444_lbd_neon_subfn_444;
  }

  return (v29[v14])(v19, v24, a1 + 2 * (v23 + 32 * v22) + 10776);
}

int16x4_t cfl_subsample_lbd_420_4x4_neon(const float *a1, int a2, _DWORD *a3)
{
  v3 = 2 * a2;
  v4 = a2;
  v5 = (a1 + a2);
  v7 = vld1_dup_f32(a1);
  v6 = (a1 + v3);
  v8 = vld1_dup_f32(v5);
  v9 = vpadal_u8(vpaddl_u8(v8), v7);
  *a3 = vadd_s16(v9, v9).u32[0];
  v11 = vld1_dup_f32(v6);
  v10 = (v6 + v4);
  v12 = vld1_dup_f32(v10);
  v13 = vpadal_u8(vpaddl_u8(v12), v11);
  result = vadd_s16(v13, v13);
  a3[16] = result.i32[0];
  return result;
}

int16x4_t cfl_subsample_lbd_420_8x8_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  v3 = 2 * a2;
  v4 = vpadal_u8(vpaddl_u8(*(a1 + a2)), *a1);
  *a3 = vadd_s16(v4, v4);
  v5 = vpadal_u8(vpaddl_u8(*(a1 + v3 + a2)), *(a1 + v3));
  a3[8] = vadd_s16(v5, v5);
  v6 = (a1 + v3 + v3);
  v7 = vpadal_u8(vpaddl_u8(*(v6 + a2)), *v6);
  a3[16] = vadd_s16(v7, v7);
  v8 = vpadal_u8(vpaddl_u8(*(v6 + v3 + a2)), *(v6 + v3));
  result = vadd_s16(v8, v8);
  a3[24] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_420_16x16_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = vpadalq_u8(vpaddlq_u8(*(a1 + a2)), *a1);
  *a3 = vaddq_s16(v4, v4);
  v5 = vpadalq_u8(vpaddlq_u8(*(a1 + v3 + a2)), *(a1 + v3));
  a3[4] = vaddq_s16(v5, v5);
  v6 = (a1 + v3 + v3);
  v7 = vpadalq_u8(vpaddlq_u8(*(v6 + a2)), *v6);
  a3[8] = vaddq_s16(v7, v7);
  v8 = (v6 + v3);
  v9 = vpadalq_u8(vpaddlq_u8(*(v8 + a2)), *v8);
  a3[12] = vaddq_s16(v9, v9);
  v10 = (v8 + v3);
  v11 = vpadalq_u8(vpaddlq_u8(*(v10 + a2)), *v10);
  a3[16] = vaddq_s16(v11, v11);
  v12 = (v10 + v3);
  v13 = vpadalq_u8(vpaddlq_u8(*(v12 + a2)), *v12);
  a3[20] = vaddq_s16(v13, v13);
  v14 = (v12 + v3);
  v15 = vpadalq_u8(vpaddlq_u8(*(v14 + a2)), *v14);
  a3[24] = vaddq_s16(v15, v15);
  v16 = vpadalq_u8(vpaddlq_u8(*(v14 + v3 + a2)), *(v14 + v3));
  result = vaddq_s16(v16, v16);
  a3[28] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_420_32x32_neon(const char *a1, int a2, __int16 *a3)
{
  v3 = 2 * a2;
  v4 = a2;
  v5 = &a1[a2];
  v54 = vld4_s8(a1);
  v6 = &a1[v3];
  v70 = vld4_s8(v5);
  v7 = vaddw_u8(vaddw_u8(vaddl_u8(v54.val[0], v54.val[1]), v70.val[1]), v70.val[0]);
  v53.val[0] = vaddq_s16(v7, v7);
  *v54.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v54.val[2], v54.val[3]), v70.val[3]), v70.val[2]);
  v53.val[1] = vaddq_s16(*v54.val[0].i8, *v54.val[0].i8);
  vst2q_s16(a3, v53);
  v8 = &v6[a2];
  v55 = vld4_s8(v6);
  v9 = &v6[v3];
  v71 = vld4_s8(v8);
  v10 = a3 + 32;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v55.val[0], v55.val[1]), v71.val[1]), v71.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v55.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v55.val[2], v55.val[3]), v71.val[3]), v71.val[2]);
  v53.val[1] = vaddq_s16(*v55.val[0].i8, *v55.val[0].i8);
  vst2q_s16(v10, v53);
  v11 = &v9[a2];
  v56 = vld4_s8(v9);
  v12 = &v9[v3];
  v72 = vld4_s8(v11);
  v13 = a3 + 64;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v56.val[0], v56.val[1]), v72.val[1]), v72.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v56.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v56.val[2], v56.val[3]), v72.val[3]), v72.val[2]);
  v53.val[1] = vaddq_s16(*v56.val[0].i8, *v56.val[0].i8);
  vst2q_s16(v13, v53);
  v14 = &v12[a2];
  v57 = vld4_s8(v12);
  v15 = &v12[v3];
  v73 = vld4_s8(v14);
  v16 = a3 + 96;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v57.val[0], v57.val[1]), v73.val[1]), v73.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v57.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v57.val[2], v57.val[3]), v73.val[3]), v73.val[2]);
  v53.val[1] = vaddq_s16(*v57.val[0].i8, *v57.val[0].i8);
  vst2q_s16(v16, v53);
  v17 = &v15[a2];
  v58 = vld4_s8(v15);
  v18 = &v15[v3];
  v74 = vld4_s8(v17);
  v19 = a3 + 128;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v58.val[0], v58.val[1]), v74.val[1]), v74.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v58.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v58.val[2], v58.val[3]), v74.val[3]), v74.val[2]);
  v53.val[1] = vaddq_s16(*v58.val[0].i8, *v58.val[0].i8);
  vst2q_s16(v19, v53);
  v20 = &v18[a2];
  v59 = vld4_s8(v18);
  v21 = &v18[v3];
  v75 = vld4_s8(v20);
  v22 = a3 + 160;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v59.val[0], v59.val[1]), v75.val[1]), v75.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v59.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v59.val[2], v59.val[3]), v75.val[3]), v75.val[2]);
  v53.val[1] = vaddq_s16(*v59.val[0].i8, *v59.val[0].i8);
  vst2q_s16(v22, v53);
  v23 = &v21[a2];
  v60 = vld4_s8(v21);
  v24 = &v21[v3];
  v76 = vld4_s8(v23);
  v25 = a3 + 192;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v60.val[0], v60.val[1]), v76.val[1]), v76.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v60.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v60.val[2], v60.val[3]), v76.val[3]), v76.val[2]);
  v53.val[1] = vaddq_s16(*v60.val[0].i8, *v60.val[0].i8);
  vst2q_s16(v25, v53);
  v26 = &v24[a2];
  v61 = vld4_s8(v24);
  v27 = &v24[v3];
  v77 = vld4_s8(v26);
  v28 = a3 + 224;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v61.val[0], v61.val[1]), v77.val[1]), v77.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v61.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v61.val[2], v61.val[3]), v77.val[3]), v77.val[2]);
  v53.val[1] = vaddq_s16(*v61.val[0].i8, *v61.val[0].i8);
  vst2q_s16(v28, v53);
  v29 = &v27[a2];
  v62 = vld4_s8(v27);
  v30 = &v27[v3];
  v78 = vld4_s8(v29);
  v31 = a3 + 256;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v62.val[0], v62.val[1]), v78.val[1]), v78.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v62.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v62.val[2], v62.val[3]), v78.val[3]), v78.val[2]);
  v53.val[1] = vaddq_s16(*v62.val[0].i8, *v62.val[0].i8);
  vst2q_s16(v31, v53);
  v32 = &v30[a2];
  v63 = vld4_s8(v30);
  v33 = &v30[v3];
  v79 = vld4_s8(v32);
  v34 = a3 + 288;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v63.val[0], v63.val[1]), v79.val[1]), v79.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v63.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v63.val[2], v63.val[3]), v79.val[3]), v79.val[2]);
  v53.val[1] = vaddq_s16(*v63.val[0].i8, *v63.val[0].i8);
  vst2q_s16(v34, v53);
  v35 = &v33[a2];
  v64 = vld4_s8(v33);
  v36 = &v33[v3];
  v80 = vld4_s8(v35);
  v37 = a3 + 320;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v64.val[0], v64.val[1]), v80.val[1]), v80.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v64.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v64.val[2], v64.val[3]), v80.val[3]), v80.val[2]);
  v53.val[1] = vaddq_s16(*v64.val[0].i8, *v64.val[0].i8);
  vst2q_s16(v37, v53);
  v38 = &v36[a2];
  v65 = vld4_s8(v36);
  v39 = &v36[v3];
  v81 = vld4_s8(v38);
  v40 = a3 + 352;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v65.val[0], v65.val[1]), v81.val[1]), v81.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v65.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v65.val[2], v65.val[3]), v81.val[3]), v81.val[2]);
  v53.val[1] = vaddq_s16(*v65.val[0].i8, *v65.val[0].i8);
  vst2q_s16(v40, v53);
  v41 = &v39[a2];
  v66 = vld4_s8(v39);
  v42 = &v39[v3];
  v82 = vld4_s8(v41);
  v43 = a3 + 384;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v66.val[0], v66.val[1]), v82.val[1]), v82.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v66.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v66.val[2], v66.val[3]), v82.val[3]), v82.val[2]);
  v53.val[1] = vaddq_s16(*v66.val[0].i8, *v66.val[0].i8);
  vst2q_s16(v43, v53);
  v44 = &v42[a2];
  v67 = vld4_s8(v42);
  v45 = &v42[v3];
  v83 = vld4_s8(v44);
  v46 = a3 + 416;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v67.val[0], v67.val[1]), v83.val[1]), v83.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v67.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v67.val[2], v67.val[3]), v83.val[3]), v83.val[2]);
  v53.val[1] = vaddq_s16(*v67.val[0].i8, *v67.val[0].i8);
  vst2q_s16(v46, v53);
  v47 = &v45[a2];
  v68 = vld4_s8(v45);
  v48 = &v45[v3];
  v84 = vld4_s8(v47);
  v49 = a3 + 448;
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v68.val[0], v68.val[1]), v84.val[1]), v84.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  *v68.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v68.val[2], v68.val[3]), v84.val[3]), v84.val[2]);
  v53.val[1] = vaddq_s16(*v68.val[0].i8, *v68.val[0].i8);
  vst2q_s16(v49, v53);
  v50 = a3 + 480;
  v69 = vld4_s8(v48);
  v51 = &v48[v4];
  v85 = vld4_s8(v51);
  v53.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v69.val[0], v69.val[1]), v85.val[1]), v85.val[0]);
  v53.val[0] = vaddq_s16(v53.val[0], v53.val[0]);
  result = vaddw_u8(vaddw_u8(vaddl_u8(v69.val[2], v69.val[3]), v85.val[3]), v85.val[2]);
  v53.val[1] = vaddq_s16(result, result);
  vst2q_s16(v50, v53);
  return result;
}

int16x4_t cfl_subsample_lbd_420_4x8_neon(const float *a1, int a2, _DWORD *a3)
{
  v3 = 2 * a2;
  v4 = a2;
  v5 = (a1 + a2);
  v7 = vld1_dup_f32(a1);
  v6 = (a1 + v3);
  v8 = vld1_dup_f32(v5);
  v9 = vpadal_u8(vpaddl_u8(v8), v7);
  *a3 = vadd_s16(v9, v9).u32[0];
  v10 = (v6 + v3);
  v12 = vld1_dup_f32(v6);
  v11 = (v6 + v4);
  v13 = vld1_dup_f32(v11);
  v14 = vpadal_u8(vpaddl_u8(v13), v12);
  a3[16] = vadd_s16(v14, v14).u32[0];
  v15 = (v10 + a2);
  v17 = vld1_dup_f32(v10);
  v16 = (v10 + v3);
  v18 = vld1_dup_f32(v15);
  v19 = vpadal_u8(vpaddl_u8(v18), v17);
  a3[32] = vadd_s16(v19, v19).u32[0];
  v21 = vld1_dup_f32(v16);
  v20 = (v16 + v4);
  v22 = vld1_dup_f32(v20);
  v23 = vpadal_u8(vpaddl_u8(v22), v21);
  result = vadd_s16(v23, v23);
  a3[48] = result.i32[0];
  return result;
}

int16x4_t cfl_subsample_lbd_420_8x4_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  v3 = vpadal_u8(vpaddl_u8(*(a1 + a2)), *a1);
  *a3 = vadd_s16(v3, v3);
  v4 = vpadal_u8(vpaddl_u8(*(a1 + 2 * a2 + a2)), *(a1 + 2 * a2));
  result = vadd_s16(v4, v4);
  a3[8] = result;
  return result;
}

int16x4_t cfl_subsample_lbd_420_8x16_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  v3 = 2 * a2;
  v4 = vpadal_u8(vpaddl_u8(*(a1 + a2)), *a1);
  *a3 = vadd_s16(v4, v4);
  v5 = vpadal_u8(vpaddl_u8(*(a1 + v3 + a2)), *(a1 + v3));
  a3[8] = vadd_s16(v5, v5);
  v6 = (a1 + v3 + v3);
  v7 = vpadal_u8(vpaddl_u8(*(v6 + a2)), *v6);
  a3[16] = vadd_s16(v7, v7);
  v8 = (v6 + v3);
  v9 = vpadal_u8(vpaddl_u8(*(v8 + a2)), *v8);
  a3[24] = vadd_s16(v9, v9);
  v10 = (v8 + v3);
  v11 = vpadal_u8(vpaddl_u8(*(v10 + a2)), *v10);
  a3[32] = vadd_s16(v11, v11);
  v12 = (v10 + v3);
  v13 = vpadal_u8(vpaddl_u8(*(v12 + a2)), *v12);
  a3[40] = vadd_s16(v13, v13);
  v14 = (v12 + v3);
  v15 = vpadal_u8(vpaddl_u8(*(v14 + a2)), *v14);
  a3[48] = vadd_s16(v15, v15);
  v16 = vpadal_u8(vpaddl_u8(*(v14 + v3 + a2)), *(v14 + v3));
  result = vadd_s16(v16, v16);
  a3[56] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_420_16x8_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = vpadalq_u8(vpaddlq_u8(*(a1 + a2)), *a1);
  *a3 = vaddq_s16(v4, v4);
  v5 = vpadalq_u8(vpaddlq_u8(*(a1 + v3 + a2)), *(a1 + v3));
  a3[4] = vaddq_s16(v5, v5);
  v6 = (a1 + v3 + v3);
  v7 = vpadalq_u8(vpaddlq_u8(*(v6 + a2)), *v6);
  a3[8] = vaddq_s16(v7, v7);
  v8 = vpadalq_u8(vpaddlq_u8(*(v6 + v3 + a2)), *(v6 + v3));
  result = vaddq_s16(v8, v8);
  a3[12] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_420_16x32_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = vpadalq_u8(vpaddlq_u8(*(a1 + a2)), *a1);
  *a3 = vaddq_s16(v4, v4);
  v5 = vpadalq_u8(vpaddlq_u8(*(a1 + v3 + a2)), *(a1 + v3));
  a3[4] = vaddq_s16(v5, v5);
  v6 = (a1 + v3 + v3);
  v7 = vpadalq_u8(vpaddlq_u8(*(v6 + a2)), *v6);
  a3[8] = vaddq_s16(v7, v7);
  v8 = (v6 + v3);
  v9 = vpadalq_u8(vpaddlq_u8(*(v8 + a2)), *v8);
  a3[12] = vaddq_s16(v9, v9);
  v10 = (v8 + v3);
  v11 = vpadalq_u8(vpaddlq_u8(*(v10 + a2)), *v10);
  a3[16] = vaddq_s16(v11, v11);
  v12 = (v10 + v3);
  v13 = vpadalq_u8(vpaddlq_u8(*(v12 + a2)), *v12);
  a3[20] = vaddq_s16(v13, v13);
  v14 = (v12 + v3);
  v15 = vpadalq_u8(vpaddlq_u8(*(v14 + a2)), *v14);
  a3[24] = vaddq_s16(v15, v15);
  v16 = (v14 + v3);
  v17 = vpadalq_u8(vpaddlq_u8(*(v16 + a2)), *v16);
  a3[28] = vaddq_s16(v17, v17);
  v18 = (v16 + v3);
  v19 = vpadalq_u8(vpaddlq_u8(*(v18 + a2)), *v18);
  a3[32] = vaddq_s16(v19, v19);
  v20 = (v18 + v3);
  v21 = vpadalq_u8(vpaddlq_u8(*(v20 + a2)), *v20);
  a3[36] = vaddq_s16(v21, v21);
  v22 = (v20 + v3);
  v23 = vpadalq_u8(vpaddlq_u8(*(v22 + a2)), *v22);
  a3[40] = vaddq_s16(v23, v23);
  v24 = (v22 + v3);
  v25 = vpadalq_u8(vpaddlq_u8(*(v24 + a2)), *v24);
  a3[44] = vaddq_s16(v25, v25);
  v26 = (v24 + v3);
  v27 = vpadalq_u8(vpaddlq_u8(*(v26 + a2)), *v26);
  a3[48] = vaddq_s16(v27, v27);
  v28 = (v26 + v3);
  v29 = vpadalq_u8(vpaddlq_u8(*(v28 + a2)), *v28);
  a3[52] = vaddq_s16(v29, v29);
  v30 = (v28 + v3);
  v31 = vpadalq_u8(vpaddlq_u8(*(v30 + a2)), *v30);
  a3[56] = vaddq_s16(v31, v31);
  v32 = vpadalq_u8(vpaddlq_u8(*(v30 + v3 + a2)), *(v30 + v3));
  result = vaddq_s16(v32, v32);
  a3[60] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_420_32x16_neon(const char *a1, int a2, __int16 *a3)
{
  v3 = 2 * a2;
  v4 = a2;
  v5 = &a1[a2];
  v30 = vld4_s8(a1);
  v6 = &a1[v3];
  v38 = vld4_s8(v5);
  v7 = vaddw_u8(vaddw_u8(vaddl_u8(v30.val[0], v30.val[1]), v38.val[1]), v38.val[0]);
  v29.val[0] = vaddq_s16(v7, v7);
  *v30.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v30.val[2], v30.val[3]), v38.val[3]), v38.val[2]);
  v29.val[1] = vaddq_s16(*v30.val[0].i8, *v30.val[0].i8);
  vst2q_s16(a3, v29);
  v8 = &v6[a2];
  v31 = vld4_s8(v6);
  v9 = &v6[v3];
  v39 = vld4_s8(v8);
  v10 = a3 + 32;
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v31.val[0], v31.val[1]), v39.val[1]), v39.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  *v31.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v31.val[2], v31.val[3]), v39.val[3]), v39.val[2]);
  v29.val[1] = vaddq_s16(*v31.val[0].i8, *v31.val[0].i8);
  vst2q_s16(v10, v29);
  v11 = &v9[a2];
  v32 = vld4_s8(v9);
  v12 = &v9[v3];
  v40 = vld4_s8(v11);
  v13 = a3 + 64;
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v32.val[0], v32.val[1]), v40.val[1]), v40.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  *v32.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v32.val[2], v32.val[3]), v40.val[3]), v40.val[2]);
  v29.val[1] = vaddq_s16(*v32.val[0].i8, *v32.val[0].i8);
  vst2q_s16(v13, v29);
  v14 = &v12[a2];
  v33 = vld4_s8(v12);
  v15 = &v12[v3];
  v41 = vld4_s8(v14);
  v16 = a3 + 96;
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v33.val[0], v33.val[1]), v41.val[1]), v41.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  *v33.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v33.val[2], v33.val[3]), v41.val[3]), v41.val[2]);
  v29.val[1] = vaddq_s16(*v33.val[0].i8, *v33.val[0].i8);
  vst2q_s16(v16, v29);
  v17 = &v15[a2];
  v34 = vld4_s8(v15);
  v18 = &v15[v3];
  v42 = vld4_s8(v17);
  v19 = a3 + 128;
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v34.val[0], v34.val[1]), v42.val[1]), v42.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  *v34.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v34.val[2], v34.val[3]), v42.val[3]), v42.val[2]);
  v29.val[1] = vaddq_s16(*v34.val[0].i8, *v34.val[0].i8);
  vst2q_s16(v19, v29);
  v20 = &v18[a2];
  v35 = vld4_s8(v18);
  v21 = &v18[v3];
  v43 = vld4_s8(v20);
  v22 = a3 + 160;
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v35.val[0], v35.val[1]), v43.val[1]), v43.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  *v35.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v35.val[2], v35.val[3]), v43.val[3]), v43.val[2]);
  v29.val[1] = vaddq_s16(*v35.val[0].i8, *v35.val[0].i8);
  vst2q_s16(v22, v29);
  v23 = &v21[a2];
  v36 = vld4_s8(v21);
  v24 = &v21[v3];
  v44 = vld4_s8(v23);
  v25 = a3 + 192;
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v36.val[0], v36.val[1]), v44.val[1]), v44.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  *v36.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v36.val[2], v36.val[3]), v44.val[3]), v44.val[2]);
  v29.val[1] = vaddq_s16(*v36.val[0].i8, *v36.val[0].i8);
  vst2q_s16(v25, v29);
  v26 = a3 + 224;
  v37 = vld4_s8(v24);
  v27 = &v24[v4];
  v45 = vld4_s8(v27);
  v29.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v37.val[0], v37.val[1]), v45.val[1]), v45.val[0]);
  v29.val[0] = vaddq_s16(v29.val[0], v29.val[0]);
  result = vaddw_u8(vaddw_u8(vaddl_u8(v37.val[2], v37.val[3]), v45.val[3]), v45.val[2]);
  v29.val[1] = vaddq_s16(result, result);
  vst2q_s16(v26, v29);
  return result;
}

int16x4_t cfl_subsample_lbd_420_4x16_neon(const float *a1, int a2, _DWORD *a3)
{
  v3 = 2 * a2;
  v4 = a2;
  v5 = (a1 + a2);
  v7 = vld1_dup_f32(a1);
  v6 = (a1 + v3);
  v8 = vld1_dup_f32(v5);
  v9 = vpadal_u8(vpaddl_u8(v8), v7);
  *a3 = vadd_s16(v9, v9).u32[0];
  v10 = (v6 + v3);
  v12 = vld1_dup_f32(v6);
  v11 = (v6 + v4);
  v13 = vld1_dup_f32(v11);
  v14 = vpadal_u8(vpaddl_u8(v13), v12);
  a3[16] = vadd_s16(v14, v14).u32[0];
  v15 = (v10 + a2);
  v17 = vld1_dup_f32(v10);
  v16 = (v10 + v3);
  v18 = vld1_dup_f32(v15);
  v19 = vpadal_u8(vpaddl_u8(v18), v17);
  a3[32] = vadd_s16(v19, v19).u32[0];
  v20 = (v16 + v3);
  v22 = vld1_dup_f32(v16);
  v21 = (v16 + v4);
  v23 = vld1_dup_f32(v21);
  v24 = vpadal_u8(vpaddl_u8(v23), v22);
  a3[48] = vadd_s16(v24, v24).u32[0];
  v25 = (v20 + a2);
  v27 = vld1_dup_f32(v20);
  v26 = (v20 + v3);
  v28 = vld1_dup_f32(v25);
  v29 = vpadal_u8(vpaddl_u8(v28), v27);
  a3[64] = vadd_s16(v29, v29).u32[0];
  v30 = (v26 + v3);
  v32 = vld1_dup_f32(v26);
  v31 = (v26 + v4);
  v33 = vld1_dup_f32(v31);
  v34 = vpadal_u8(vpaddl_u8(v33), v32);
  a3[80] = vadd_s16(v34, v34).u32[0];
  v35 = (v30 + a2);
  v37 = vld1_dup_f32(v30);
  v36 = (v30 + v3);
  v38 = vld1_dup_f32(v35);
  v39 = vpadal_u8(vpaddl_u8(v38), v37);
  a3[96] = vadd_s16(v39, v39).u32[0];
  v41 = vld1_dup_f32(v36);
  v40 = (v36 + v4);
  v42 = vld1_dup_f32(v40);
  v43 = vpadal_u8(vpaddl_u8(v42), v41);
  result = vadd_s16(v43, v43);
  a3[112] = result.i32[0];
  return result;
}

int16x8_t cfl_subsample_lbd_420_16x4_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  v3 = vpadalq_u8(vpaddlq_u8(*(a1 + a2)), *a1);
  *a3 = vaddq_s16(v3, v3);
  v4 = vpadalq_u8(vpaddlq_u8(*(a1 + 2 * a2 + a2)), *(a1 + 2 * a2));
  result = vaddq_s16(v4, v4);
  a3[4] = result;
  return result;
}

int16x4_t cfl_subsample_lbd_420_8x32_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  v3 = 2 * a2;
  v4 = vpadal_u8(vpaddl_u8(*(a1 + a2)), *a1);
  *a3 = vadd_s16(v4, v4);
  v5 = vpadal_u8(vpaddl_u8(*(a1 + v3 + a2)), *(a1 + v3));
  a3[8] = vadd_s16(v5, v5);
  v6 = (a1 + v3 + v3);
  v7 = vpadal_u8(vpaddl_u8(*(v6 + a2)), *v6);
  a3[16] = vadd_s16(v7, v7);
  v8 = (v6 + v3);
  v9 = vpadal_u8(vpaddl_u8(*(v8 + a2)), *v8);
  a3[24] = vadd_s16(v9, v9);
  v10 = (v8 + v3);
  v11 = vpadal_u8(vpaddl_u8(*(v10 + a2)), *v10);
  a3[32] = vadd_s16(v11, v11);
  v12 = (v10 + v3);
  v13 = vpadal_u8(vpaddl_u8(*(v12 + a2)), *v12);
  a3[40] = vadd_s16(v13, v13);
  v14 = (v12 + v3);
  v15 = vpadal_u8(vpaddl_u8(*(v14 + a2)), *v14);
  a3[48] = vadd_s16(v15, v15);
  v16 = (v14 + v3);
  v17 = vpadal_u8(vpaddl_u8(*(v16 + a2)), *v16);
  a3[56] = vadd_s16(v17, v17);
  v18 = (v16 + v3);
  v19 = vpadal_u8(vpaddl_u8(*(v18 + a2)), *v18);
  a3[64] = vadd_s16(v19, v19);
  v20 = (v18 + v3);
  v21 = vpadal_u8(vpaddl_u8(*(v20 + a2)), *v20);
  a3[72] = vadd_s16(v21, v21);
  v22 = (v20 + v3);
  v23 = vpadal_u8(vpaddl_u8(*(v22 + a2)), *v22);
  a3[80] = vadd_s16(v23, v23);
  v24 = (v22 + v3);
  v25 = vpadal_u8(vpaddl_u8(*(v24 + a2)), *v24);
  a3[88] = vadd_s16(v25, v25);
  v26 = (v24 + v3);
  v27 = vpadal_u8(vpaddl_u8(*(v26 + a2)), *v26);
  a3[96] = vadd_s16(v27, v27);
  v28 = (v26 + v3);
  v29 = vpadal_u8(vpaddl_u8(*(v28 + a2)), *v28);
  a3[104] = vadd_s16(v29, v29);
  v30 = (v28 + v3);
  v31 = vpadal_u8(vpaddl_u8(*(v30 + a2)), *v30);
  a3[112] = vadd_s16(v31, v31);
  v32 = vpadal_u8(vpaddl_u8(*(v30 + v3 + a2)), *(v30 + v3));
  result = vadd_s16(v32, v32);
  a3[120] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_420_32x8_neon(const char *a1, int a2, __int16 *a3)
{
  v3 = 2 * a2;
  v4 = a2;
  v5 = &a1[a2];
  v18 = vld4_s8(a1);
  v6 = &a1[v3];
  v22 = vld4_s8(v5);
  v7 = vaddw_u8(vaddw_u8(vaddl_u8(v18.val[0], v18.val[1]), v22.val[1]), v22.val[0]);
  v17.val[0] = vaddq_s16(v7, v7);
  *v18.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v18.val[2], v18.val[3]), v22.val[3]), v22.val[2]);
  v17.val[1] = vaddq_s16(*v18.val[0].i8, *v18.val[0].i8);
  vst2q_s16(a3, v17);
  v8 = &v6[a2];
  v19 = vld4_s8(v6);
  v9 = &v6[v3];
  v23 = vld4_s8(v8);
  v10 = a3 + 32;
  v17.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v19.val[0], v19.val[1]), v23.val[1]), v23.val[0]);
  v17.val[0] = vaddq_s16(v17.val[0], v17.val[0]);
  *v19.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v19.val[2], v19.val[3]), v23.val[3]), v23.val[2]);
  v17.val[1] = vaddq_s16(*v19.val[0].i8, *v19.val[0].i8);
  vst2q_s16(v10, v17);
  v11 = &v9[a2];
  v20 = vld4_s8(v9);
  v12 = &v9[v3];
  v24 = vld4_s8(v11);
  v13 = a3 + 64;
  v17.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v20.val[0], v20.val[1]), v24.val[1]), v24.val[0]);
  v17.val[0] = vaddq_s16(v17.val[0], v17.val[0]);
  *v20.val[0].i8 = vaddw_u8(vaddw_u8(vaddl_u8(v20.val[2], v20.val[3]), v24.val[3]), v24.val[2]);
  v17.val[1] = vaddq_s16(*v20.val[0].i8, *v20.val[0].i8);
  vst2q_s16(v13, v17);
  v14 = a3 + 96;
  v21 = vld4_s8(v12);
  v15 = &v12[v4];
  v25 = vld4_s8(v15);
  v17.val[0] = vaddw_u8(vaddw_u8(vaddl_u8(v21.val[0], v21.val[1]), v25.val[1]), v25.val[0]);
  v17.val[0] = vaddq_s16(v17.val[0], v17.val[0]);
  result = vaddw_u8(vaddw_u8(vaddl_u8(v21.val[2], v21.val[3]), v25.val[3]), v25.val[2]);
  v17.val[1] = vaddq_s16(result, result);
  vst2q_s16(v14, v17);
  return result;
}

int16x4_t cfl_subsample_lbd_422_4x4_neon(const float *a1, int a2, _DWORD *a3)
{
  v3 = a2;
  v5 = vld1_dup_f32(a1);
  v4 = (a1 + v3);
  *a3 = vshl_n_s16(vpaddl_u8(v5), 2uLL).u32[0];
  v7 = vld1_dup_f32(v4);
  v6 = (v4 + v3);
  a3[16] = vshl_n_s16(vpaddl_u8(v7), 2uLL).u32[0];
  v9 = vld1_dup_f32(v6);
  v8 = (v6 + v3);
  a3[32] = vshl_n_s16(vpaddl_u8(v9), 2uLL).u32[0];
  v10 = vld1_dup_f32(v8);
  result = vshl_n_s16(vpaddl_u8(v10), 2uLL);
  a3[48] = result.i32[0];
  return result;
}

int16x4_t cfl_subsample_lbd_422_8x8_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  *a3 = vshl_n_s16(vpaddl_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[8] = vshl_n_s16(vpaddl_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[16] = vshl_n_s16(vpaddl_u8(*v4), 2uLL);
  v5 = (v4 + a2);
  a3[24] = vshl_n_s16(vpaddl_u8(*v5), 2uLL);
  v6 = (v5 + a2);
  a3[32] = vshl_n_s16(vpaddl_u8(*v6), 2uLL);
  v7 = (v6 + a2);
  a3[40] = vshl_n_s16(vpaddl_u8(*v7), 2uLL);
  v8 = (v7 + a2);
  a3[48] = vshl_n_s16(vpaddl_u8(*v8), 2uLL);
  result = vshl_n_s16(vpaddl_u8(*(v8 + a2)), 2uLL);
  a3[56] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_422_16x16_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  *a3 = vshlq_n_s16(vpaddlq_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[4] = vshlq_n_s16(vpaddlq_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[8] = vshlq_n_s16(vpaddlq_u8(*v4), 2uLL);
  v5 = (v4 + a2);
  a3[12] = vshlq_n_s16(vpaddlq_u8(*v5), 2uLL);
  v6 = (v5 + a2);
  a3[16] = vshlq_n_s16(vpaddlq_u8(*v6), 2uLL);
  v7 = (v6 + a2);
  a3[20] = vshlq_n_s16(vpaddlq_u8(*v7), 2uLL);
  v8 = (v7 + a2);
  a3[24] = vshlq_n_s16(vpaddlq_u8(*v8), 2uLL);
  v9 = (v8 + a2);
  a3[28] = vshlq_n_s16(vpaddlq_u8(*v9), 2uLL);
  v10 = (v9 + a2);
  a3[32] = vshlq_n_s16(vpaddlq_u8(*v10), 2uLL);
  v11 = (v10 + a2);
  a3[36] = vshlq_n_s16(vpaddlq_u8(*v11), 2uLL);
  v12 = (v11 + a2);
  a3[40] = vshlq_n_s16(vpaddlq_u8(*v12), 2uLL);
  v13 = (v12 + a2);
  a3[44] = vshlq_n_s16(vpaddlq_u8(*v13), 2uLL);
  v14 = (v13 + a2);
  a3[48] = vshlq_n_s16(vpaddlq_u8(*v14), 2uLL);
  v15 = (v14 + a2);
  a3[52] = vshlq_n_s16(vpaddlq_u8(*v15), 2uLL);
  v16 = (v15 + a2);
  a3[56] = vshlq_n_s16(vpaddlq_u8(*v16), 2uLL);
  result = vshlq_n_s16(vpaddlq_u8(*(v16 + a2)), 2uLL);
  a3[60] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_422_32x32_neon(const char *a1, int a2, __int16 *a3)
{
  v3 = a2;
  v68 = vld4_s8(a1);
  v4 = &a1[v3];
  v67.val[0] = vshlq_n_s16(vaddl_u8(v68.val[0], v68.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v68.val[2], v68.val[3]), 2uLL);
  vst2q_s16(a3, v67);
  v69 = vld4_s8(v4);
  v5 = &v4[v3];
  v6 = a3 + 32;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v69.val[0], v69.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v69.val[2], v69.val[3]), 2uLL);
  vst2q_s16(v6, v67);
  v70 = vld4_s8(v5);
  v7 = &v5[v3];
  v8 = a3 + 64;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v70.val[0], v70.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v70.val[2], v70.val[3]), 2uLL);
  vst2q_s16(v8, v67);
  v71 = vld4_s8(v7);
  v9 = &v7[v3];
  v10 = a3 + 96;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v71.val[0], v71.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v71.val[2], v71.val[3]), 2uLL);
  vst2q_s16(v10, v67);
  v72 = vld4_s8(v9);
  v11 = &v9[v3];
  v12 = a3 + 128;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v72.val[0], v72.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v72.val[2], v72.val[3]), 2uLL);
  vst2q_s16(v12, v67);
  v73 = vld4_s8(v11);
  v13 = &v11[v3];
  v14 = a3 + 160;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v73.val[0], v73.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v73.val[2], v73.val[3]), 2uLL);
  vst2q_s16(v14, v67);
  v74 = vld4_s8(v13);
  v15 = &v13[v3];
  v16 = a3 + 192;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v74.val[0], v74.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v74.val[2], v74.val[3]), 2uLL);
  vst2q_s16(v16, v67);
  v75 = vld4_s8(v15);
  v17 = &v15[v3];
  v18 = a3 + 224;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v75.val[0], v75.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v75.val[2], v75.val[3]), 2uLL);
  vst2q_s16(v18, v67);
  v76 = vld4_s8(v17);
  v19 = &v17[v3];
  v20 = a3 + 256;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v76.val[0], v76.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v76.val[2], v76.val[3]), 2uLL);
  vst2q_s16(v20, v67);
  v77 = vld4_s8(v19);
  v21 = &v19[v3];
  v22 = a3 + 288;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v77.val[0], v77.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v77.val[2], v77.val[3]), 2uLL);
  vst2q_s16(v22, v67);
  v78 = vld4_s8(v21);
  v23 = &v21[v3];
  v24 = a3 + 320;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v78.val[0], v78.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v78.val[2], v78.val[3]), 2uLL);
  vst2q_s16(v24, v67);
  v79 = vld4_s8(v23);
  v25 = &v23[v3];
  v26 = a3 + 352;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v79.val[0], v79.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v79.val[2], v79.val[3]), 2uLL);
  vst2q_s16(v26, v67);
  v80 = vld4_s8(v25);
  v27 = &v25[v3];
  v28 = a3 + 384;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v80.val[0], v80.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v80.val[2], v80.val[3]), 2uLL);
  vst2q_s16(v28, v67);
  v81 = vld4_s8(v27);
  v29 = &v27[v3];
  v30 = a3 + 416;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v81.val[0], v81.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v81.val[2], v81.val[3]), 2uLL);
  vst2q_s16(v30, v67);
  v82 = vld4_s8(v29);
  v31 = &v29[v3];
  v32 = a3 + 448;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v82.val[0], v82.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v82.val[2], v82.val[3]), 2uLL);
  vst2q_s16(v32, v67);
  v83 = vld4_s8(v31);
  v33 = &v31[v3];
  v34 = a3 + 480;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v83.val[0], v83.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v83.val[2], v83.val[3]), 2uLL);
  vst2q_s16(v34, v67);
  v84 = vld4_s8(v33);
  v35 = &v33[v3];
  v36 = a3 + 512;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v84.val[0], v84.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v84.val[2], v84.val[3]), 2uLL);
  vst2q_s16(v36, v67);
  v85 = vld4_s8(v35);
  v37 = &v35[v3];
  v38 = a3 + 544;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v85.val[0], v85.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v85.val[2], v85.val[3]), 2uLL);
  vst2q_s16(v38, v67);
  v86 = vld4_s8(v37);
  v39 = &v37[v3];
  v40 = a3 + 576;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v86.val[0], v86.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v86.val[2], v86.val[3]), 2uLL);
  vst2q_s16(v40, v67);
  v87 = vld4_s8(v39);
  v41 = &v39[v3];
  v42 = a3 + 608;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v87.val[0], v87.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v87.val[2], v87.val[3]), 2uLL);
  vst2q_s16(v42, v67);
  v88 = vld4_s8(v41);
  v43 = &v41[v3];
  v44 = a3 + 640;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v88.val[0], v88.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v88.val[2], v88.val[3]), 2uLL);
  vst2q_s16(v44, v67);
  v89 = vld4_s8(v43);
  v45 = &v43[v3];
  v46 = a3 + 672;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v89.val[0], v89.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v89.val[2], v89.val[3]), 2uLL);
  vst2q_s16(v46, v67);
  v90 = vld4_s8(v45);
  v47 = &v45[v3];
  v48 = a3 + 704;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v90.val[0], v90.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v90.val[2], v90.val[3]), 2uLL);
  vst2q_s16(v48, v67);
  v91 = vld4_s8(v47);
  v49 = &v47[v3];
  v50 = a3 + 736;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v91.val[0], v91.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v91.val[2], v91.val[3]), 2uLL);
  vst2q_s16(v50, v67);
  v92 = vld4_s8(v49);
  v51 = &v49[v3];
  v52 = a3 + 768;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v92.val[0], v92.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v92.val[2], v92.val[3]), 2uLL);
  vst2q_s16(v52, v67);
  v93 = vld4_s8(v51);
  v53 = &v51[v3];
  v54 = a3 + 800;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v93.val[0], v93.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v93.val[2], v93.val[3]), 2uLL);
  vst2q_s16(v54, v67);
  v94 = vld4_s8(v53);
  v55 = &v53[v3];
  v56 = a3 + 832;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v94.val[0], v94.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v94.val[2], v94.val[3]), 2uLL);
  vst2q_s16(v56, v67);
  v95 = vld4_s8(v55);
  v57 = &v55[v3];
  v58 = a3 + 864;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v95.val[0], v95.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v95.val[2], v95.val[3]), 2uLL);
  vst2q_s16(v58, v67);
  v96 = vld4_s8(v57);
  v59 = &v57[v3];
  v60 = a3 + 896;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v96.val[0], v96.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v96.val[2], v96.val[3]), 2uLL);
  vst2q_s16(v60, v67);
  v97 = vld4_s8(v59);
  v61 = &v59[v3];
  v62 = a3 + 928;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v97.val[0], v97.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v97.val[2], v97.val[3]), 2uLL);
  vst2q_s16(v62, v67);
  v98 = vld4_s8(v61);
  v63 = &v61[v3];
  v64 = a3 + 960;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v98.val[0], v98.val[1]), 2uLL);
  v67.val[1] = vshlq_n_s16(vaddl_u8(v98.val[2], v98.val[3]), 2uLL);
  vst2q_s16(v64, v67);
  v99 = vld4_s8(v63);
  v65 = a3 + 992;
  v67.val[0] = vshlq_n_s16(vaddl_u8(v99.val[0], v99.val[1]), 2uLL);
  result = vaddl_u8(v99.val[2], v99.val[3]);
  v67.val[1] = vshlq_n_s16(result, 2uLL);
  vst2q_s16(v65, v67);
  return result;
}

int16x4_t cfl_subsample_lbd_422_4x8_neon(const float *a1, int a2, _DWORD *a3)
{
  v3 = a2;
  v5 = vld1_dup_f32(a1);
  v4 = (a1 + v3);
  *a3 = vshl_n_s16(vpaddl_u8(v5), 2uLL).u32[0];
  v7 = vld1_dup_f32(v4);
  v6 = (v4 + v3);
  a3[16] = vshl_n_s16(vpaddl_u8(v7), 2uLL).u32[0];
  v9 = vld1_dup_f32(v6);
  v8 = (v6 + v3);
  a3[32] = vshl_n_s16(vpaddl_u8(v9), 2uLL).u32[0];
  v11 = vld1_dup_f32(v8);
  v10 = (v8 + v3);
  a3[48] = vshl_n_s16(vpaddl_u8(v11), 2uLL).u32[0];
  v13 = vld1_dup_f32(v10);
  v12 = (v10 + v3);
  a3[64] = vshl_n_s16(vpaddl_u8(v13), 2uLL).u32[0];
  v15 = vld1_dup_f32(v12);
  v14 = (v12 + v3);
  a3[80] = vshl_n_s16(vpaddl_u8(v15), 2uLL).u32[0];
  v17 = vld1_dup_f32(v14);
  v16 = (v14 + v3);
  a3[96] = vshl_n_s16(vpaddl_u8(v17), 2uLL).u32[0];
  v18 = vld1_dup_f32(v16);
  result = vshl_n_s16(vpaddl_u8(v18), 2uLL);
  a3[112] = result.i32[0];
  return result;
}

int16x4_t cfl_subsample_lbd_422_8x4_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  *a3 = vshl_n_s16(vpaddl_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[8] = vshl_n_s16(vpaddl_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[16] = vshl_n_s16(vpaddl_u8(*v4), 2uLL);
  result = vshl_n_s16(vpaddl_u8(*(v4 + a2)), 2uLL);
  a3[24] = result;
  return result;
}

int16x4_t cfl_subsample_lbd_422_8x16_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  *a3 = vshl_n_s16(vpaddl_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[8] = vshl_n_s16(vpaddl_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[16] = vshl_n_s16(vpaddl_u8(*v4), 2uLL);
  v5 = (v4 + a2);
  a3[24] = vshl_n_s16(vpaddl_u8(*v5), 2uLL);
  v6 = (v5 + a2);
  a3[32] = vshl_n_s16(vpaddl_u8(*v6), 2uLL);
  v7 = (v6 + a2);
  a3[40] = vshl_n_s16(vpaddl_u8(*v7), 2uLL);
  v8 = (v7 + a2);
  a3[48] = vshl_n_s16(vpaddl_u8(*v8), 2uLL);
  v9 = (v8 + a2);
  a3[56] = vshl_n_s16(vpaddl_u8(*v9), 2uLL);
  v10 = (v9 + a2);
  a3[64] = vshl_n_s16(vpaddl_u8(*v10), 2uLL);
  v11 = (v10 + a2);
  a3[72] = vshl_n_s16(vpaddl_u8(*v11), 2uLL);
  v12 = (v11 + a2);
  a3[80] = vshl_n_s16(vpaddl_u8(*v12), 2uLL);
  v13 = (v12 + a2);
  a3[88] = vshl_n_s16(vpaddl_u8(*v13), 2uLL);
  v14 = (v13 + a2);
  a3[96] = vshl_n_s16(vpaddl_u8(*v14), 2uLL);
  v15 = (v14 + a2);
  a3[104] = vshl_n_s16(vpaddl_u8(*v15), 2uLL);
  v16 = (v15 + a2);
  a3[112] = vshl_n_s16(vpaddl_u8(*v16), 2uLL);
  result = vshl_n_s16(vpaddl_u8(*(v16 + a2)), 2uLL);
  a3[120] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_422_16x8_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  *a3 = vshlq_n_s16(vpaddlq_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[4] = vshlq_n_s16(vpaddlq_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[8] = vshlq_n_s16(vpaddlq_u8(*v4), 2uLL);
  v5 = (v4 + a2);
  a3[12] = vshlq_n_s16(vpaddlq_u8(*v5), 2uLL);
  v6 = (v5 + a2);
  a3[16] = vshlq_n_s16(vpaddlq_u8(*v6), 2uLL);
  v7 = (v6 + a2);
  a3[20] = vshlq_n_s16(vpaddlq_u8(*v7), 2uLL);
  v8 = (v7 + a2);
  a3[24] = vshlq_n_s16(vpaddlq_u8(*v8), 2uLL);
  result = vshlq_n_s16(vpaddlq_u8(*(v8 + a2)), 2uLL);
  a3[28] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_422_16x32_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  *a3 = vshlq_n_s16(vpaddlq_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[4] = vshlq_n_s16(vpaddlq_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[8] = vshlq_n_s16(vpaddlq_u8(*v4), 2uLL);
  v5 = (v4 + a2);
  a3[12] = vshlq_n_s16(vpaddlq_u8(*v5), 2uLL);
  v6 = (v5 + a2);
  a3[16] = vshlq_n_s16(vpaddlq_u8(*v6), 2uLL);
  v7 = (v6 + a2);
  a3[20] = vshlq_n_s16(vpaddlq_u8(*v7), 2uLL);
  v8 = (v7 + a2);
  a3[24] = vshlq_n_s16(vpaddlq_u8(*v8), 2uLL);
  v9 = (v8 + a2);
  a3[28] = vshlq_n_s16(vpaddlq_u8(*v9), 2uLL);
  v10 = (v9 + a2);
  a3[32] = vshlq_n_s16(vpaddlq_u8(*v10), 2uLL);
  v11 = (v10 + a2);
  a3[36] = vshlq_n_s16(vpaddlq_u8(*v11), 2uLL);
  v12 = (v11 + a2);
  a3[40] = vshlq_n_s16(vpaddlq_u8(*v12), 2uLL);
  v13 = (v12 + a2);
  a3[44] = vshlq_n_s16(vpaddlq_u8(*v13), 2uLL);
  v14 = (v13 + a2);
  a3[48] = vshlq_n_s16(vpaddlq_u8(*v14), 2uLL);
  v15 = (v14 + a2);
  a3[52] = vshlq_n_s16(vpaddlq_u8(*v15), 2uLL);
  v16 = (v15 + a2);
  a3[56] = vshlq_n_s16(vpaddlq_u8(*v16), 2uLL);
  v17 = (v16 + a2);
  a3[60] = vshlq_n_s16(vpaddlq_u8(*v17), 2uLL);
  v18 = (v17 + a2);
  a3[64] = vshlq_n_s16(vpaddlq_u8(*v18), 2uLL);
  v19 = (v18 + a2);
  a3[68] = vshlq_n_s16(vpaddlq_u8(*v19), 2uLL);
  v20 = (v19 + a2);
  a3[72] = vshlq_n_s16(vpaddlq_u8(*v20), 2uLL);
  v21 = (v20 + a2);
  a3[76] = vshlq_n_s16(vpaddlq_u8(*v21), 2uLL);
  v22 = (v21 + a2);
  a3[80] = vshlq_n_s16(vpaddlq_u8(*v22), 2uLL);
  v23 = (v22 + a2);
  a3[84] = vshlq_n_s16(vpaddlq_u8(*v23), 2uLL);
  v24 = (v23 + a2);
  a3[88] = vshlq_n_s16(vpaddlq_u8(*v24), 2uLL);
  v25 = (v24 + a2);
  a3[92] = vshlq_n_s16(vpaddlq_u8(*v25), 2uLL);
  v26 = (v25 + a2);
  a3[96] = vshlq_n_s16(vpaddlq_u8(*v26), 2uLL);
  v27 = (v26 + a2);
  a3[100] = vshlq_n_s16(vpaddlq_u8(*v27), 2uLL);
  v28 = (v27 + a2);
  a3[104] = vshlq_n_s16(vpaddlq_u8(*v28), 2uLL);
  v29 = (v28 + a2);
  a3[108] = vshlq_n_s16(vpaddlq_u8(*v29), 2uLL);
  v30 = (v29 + a2);
  a3[112] = vshlq_n_s16(vpaddlq_u8(*v30), 2uLL);
  v31 = (v30 + a2);
  a3[116] = vshlq_n_s16(vpaddlq_u8(*v31), 2uLL);
  v32 = (v31 + a2);
  a3[120] = vshlq_n_s16(vpaddlq_u8(*v32), 2uLL);
  result = vshlq_n_s16(vpaddlq_u8(*(v32 + a2)), 2uLL);
  a3[124] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_422_32x16_neon(const char *a1, int a2, __int16 *a3)
{
  v3 = a2;
  v36 = vld4_s8(a1);
  v4 = &a1[v3];
  v35.val[0] = vshlq_n_s16(vaddl_u8(v36.val[0], v36.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v36.val[2], v36.val[3]), 2uLL);
  vst2q_s16(a3, v35);
  v37 = vld4_s8(v4);
  v5 = &v4[v3];
  v6 = a3 + 32;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v37.val[0], v37.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v37.val[2], v37.val[3]), 2uLL);
  vst2q_s16(v6, v35);
  v38 = vld4_s8(v5);
  v7 = &v5[v3];
  v8 = a3 + 64;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v38.val[0], v38.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v38.val[2], v38.val[3]), 2uLL);
  vst2q_s16(v8, v35);
  v39 = vld4_s8(v7);
  v9 = &v7[v3];
  v10 = a3 + 96;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v39.val[0], v39.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v39.val[2], v39.val[3]), 2uLL);
  vst2q_s16(v10, v35);
  v40 = vld4_s8(v9);
  v11 = &v9[v3];
  v12 = a3 + 128;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v40.val[0], v40.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v40.val[2], v40.val[3]), 2uLL);
  vst2q_s16(v12, v35);
  v41 = vld4_s8(v11);
  v13 = &v11[v3];
  v14 = a3 + 160;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v41.val[0], v41.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v41.val[2], v41.val[3]), 2uLL);
  vst2q_s16(v14, v35);
  v42 = vld4_s8(v13);
  v15 = &v13[v3];
  v16 = a3 + 192;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v42.val[0], v42.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v42.val[2], v42.val[3]), 2uLL);
  vst2q_s16(v16, v35);
  v43 = vld4_s8(v15);
  v17 = &v15[v3];
  v18 = a3 + 224;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v43.val[0], v43.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v43.val[2], v43.val[3]), 2uLL);
  vst2q_s16(v18, v35);
  v44 = vld4_s8(v17);
  v19 = &v17[v3];
  v20 = a3 + 256;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v44.val[0], v44.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v44.val[2], v44.val[3]), 2uLL);
  vst2q_s16(v20, v35);
  v45 = vld4_s8(v19);
  v21 = &v19[v3];
  v22 = a3 + 288;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v45.val[0], v45.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v45.val[2], v45.val[3]), 2uLL);
  vst2q_s16(v22, v35);
  v46 = vld4_s8(v21);
  v23 = &v21[v3];
  v24 = a3 + 320;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v46.val[0], v46.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v46.val[2], v46.val[3]), 2uLL);
  vst2q_s16(v24, v35);
  v47 = vld4_s8(v23);
  v25 = &v23[v3];
  v26 = a3 + 352;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v47.val[0], v47.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v47.val[2], v47.val[3]), 2uLL);
  vst2q_s16(v26, v35);
  v48 = vld4_s8(v25);
  v27 = &v25[v3];
  v28 = a3 + 384;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v48.val[0], v48.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v48.val[2], v48.val[3]), 2uLL);
  vst2q_s16(v28, v35);
  v49 = vld4_s8(v27);
  v29 = &v27[v3];
  v30 = a3 + 416;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v49.val[0], v49.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v49.val[2], v49.val[3]), 2uLL);
  vst2q_s16(v30, v35);
  v50 = vld4_s8(v29);
  v31 = &v29[v3];
  v32 = a3 + 448;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v50.val[0], v50.val[1]), 2uLL);
  v35.val[1] = vshlq_n_s16(vaddl_u8(v50.val[2], v50.val[3]), 2uLL);
  vst2q_s16(v32, v35);
  v51 = vld4_s8(v31);
  v33 = a3 + 480;
  v35.val[0] = vshlq_n_s16(vaddl_u8(v51.val[0], v51.val[1]), 2uLL);
  result = vaddl_u8(v51.val[2], v51.val[3]);
  v35.val[1] = vshlq_n_s16(result, 2uLL);
  vst2q_s16(v33, v35);
  return result;
}

int16x4_t cfl_subsample_lbd_422_4x16_neon(const float *a1, int a2, _DWORD *a3)
{
  v3 = a2;
  v5 = vld1_dup_f32(a1);
  v4 = (a1 + v3);
  *a3 = vshl_n_s16(vpaddl_u8(v5), 2uLL).u32[0];
  v7 = vld1_dup_f32(v4);
  v6 = (v4 + v3);
  a3[16] = vshl_n_s16(vpaddl_u8(v7), 2uLL).u32[0];
  v9 = vld1_dup_f32(v6);
  v8 = (v6 + v3);
  a3[32] = vshl_n_s16(vpaddl_u8(v9), 2uLL).u32[0];
  v11 = vld1_dup_f32(v8);
  v10 = (v8 + v3);
  a3[48] = vshl_n_s16(vpaddl_u8(v11), 2uLL).u32[0];
  v13 = vld1_dup_f32(v10);
  v12 = (v10 + v3);
  a3[64] = vshl_n_s16(vpaddl_u8(v13), 2uLL).u32[0];
  v15 = vld1_dup_f32(v12);
  v14 = (v12 + v3);
  a3[80] = vshl_n_s16(vpaddl_u8(v15), 2uLL).u32[0];
  v17 = vld1_dup_f32(v14);
  v16 = (v14 + v3);
  a3[96] = vshl_n_s16(vpaddl_u8(v17), 2uLL).u32[0];
  v19 = vld1_dup_f32(v16);
  v18 = (v16 + v3);
  a3[112] = vshl_n_s16(vpaddl_u8(v19), 2uLL).u32[0];
  v21 = vld1_dup_f32(v18);
  v20 = (v18 + v3);
  a3[128] = vshl_n_s16(vpaddl_u8(v21), 2uLL).u32[0];
  v23 = vld1_dup_f32(v20);
  v22 = (v20 + v3);
  a3[144] = vshl_n_s16(vpaddl_u8(v23), 2uLL).u32[0];
  v25 = vld1_dup_f32(v22);
  v24 = (v22 + v3);
  a3[160] = vshl_n_s16(vpaddl_u8(v25), 2uLL).u32[0];
  v27 = vld1_dup_f32(v24);
  v26 = (v24 + v3);
  a3[176] = vshl_n_s16(vpaddl_u8(v27), 2uLL).u32[0];
  v29 = vld1_dup_f32(v26);
  v28 = (v26 + v3);
  a3[192] = vshl_n_s16(vpaddl_u8(v29), 2uLL).u32[0];
  v31 = vld1_dup_f32(v28);
  v30 = (v28 + v3);
  a3[208] = vshl_n_s16(vpaddl_u8(v31), 2uLL).u32[0];
  v33 = vld1_dup_f32(v30);
  v32 = (v30 + v3);
  a3[224] = vshl_n_s16(vpaddl_u8(v33), 2uLL).u32[0];
  v34 = vld1_dup_f32(v32);
  result = vshl_n_s16(vpaddl_u8(v34), 2uLL);
  a3[240] = result.i32[0];
  return result;
}

int16x8_t cfl_subsample_lbd_422_16x4_neon(uint8x16_t *a1, int a2, int16x8_t *a3)
{
  *a3 = vshlq_n_s16(vpaddlq_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[4] = vshlq_n_s16(vpaddlq_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[8] = vshlq_n_s16(vpaddlq_u8(*v4), 2uLL);
  result = vshlq_n_s16(vpaddlq_u8(*(v4 + a2)), 2uLL);
  a3[12] = result;
  return result;
}

int16x4_t cfl_subsample_lbd_422_8x32_neon(uint8x8_t *a1, int a2, int16x4_t *a3)
{
  *a3 = vshl_n_s16(vpaddl_u8(*a1), 2uLL);
  v3 = (a1 + a2);
  a3[8] = vshl_n_s16(vpaddl_u8(*v3), 2uLL);
  v4 = (v3 + a2);
  a3[16] = vshl_n_s16(vpaddl_u8(*v4), 2uLL);
  v5 = (v4 + a2);
  a3[24] = vshl_n_s16(vpaddl_u8(*v5), 2uLL);
  v6 = (v5 + a2);
  a3[32] = vshl_n_s16(vpaddl_u8(*v6), 2uLL);
  v7 = (v6 + a2);
  a3[40] = vshl_n_s16(vpaddl_u8(*v7), 2uLL);
  v8 = (v7 + a2);
  a3[48] = vshl_n_s16(vpaddl_u8(*v8), 2uLL);
  v9 = (v8 + a2);
  a3[56] = vshl_n_s16(vpaddl_u8(*v9), 2uLL);
  v10 = (v9 + a2);
  a3[64] = vshl_n_s16(vpaddl_u8(*v10), 2uLL);
  v11 = (v10 + a2);
  a3[72] = vshl_n_s16(vpaddl_u8(*v11), 2uLL);
  v12 = (v11 + a2);
  a3[80] = vshl_n_s16(vpaddl_u8(*v12), 2uLL);
  v13 = (v12 + a2);
  a3[88] = vshl_n_s16(vpaddl_u8(*v13), 2uLL);
  v14 = (v13 + a2);
  a3[96] = vshl_n_s16(vpaddl_u8(*v14), 2uLL);
  v15 = (v14 + a2);
  a3[104] = vshl_n_s16(vpaddl_u8(*v15), 2uLL);
  v16 = (v15 + a2);
  a3[112] = vshl_n_s16(vpaddl_u8(*v16), 2uLL);
  v17 = (v16 + a2);
  a3[120] = vshl_n_s16(vpaddl_u8(*v17), 2uLL);
  v18 = (v17 + a2);
  a3[128] = vshl_n_s16(vpaddl_u8(*v18), 2uLL);
  v19 = (v18 + a2);
  a3[136] = vshl_n_s16(vpaddl_u8(*v19), 2uLL);
  v20 = (v19 + a2);
  a3[144] = vshl_n_s16(vpaddl_u8(*v20), 2uLL);
  v21 = (v20 + a2);
  a3[152] = vshl_n_s16(vpaddl_u8(*v21), 2uLL);
  v22 = (v21 + a2);
  a3[160] = vshl_n_s16(vpaddl_u8(*v22), 2uLL);
  v23 = (v22 + a2);
  a3[168] = vshl_n_s16(vpaddl_u8(*v23), 2uLL);
  v24 = (v23 + a2);
  a3[176] = vshl_n_s16(vpaddl_u8(*v24), 2uLL);
  v25 = (v24 + a2);
  a3[184] = vshl_n_s16(vpaddl_u8(*v25), 2uLL);
  v26 = (v25 + a2);
  a3[192] = vshl_n_s16(vpaddl_u8(*v26), 2uLL);
  v27 = (v26 + a2);
  a3[200] = vshl_n_s16(vpaddl_u8(*v27), 2uLL);
  v28 = (v27 + a2);
  a3[208] = vshl_n_s16(vpaddl_u8(*v28), 2uLL);
  v29 = (v28 + a2);
  a3[216] = vshl_n_s16(vpaddl_u8(*v29), 2uLL);
  v30 = (v29 + a2);
  a3[224] = vshl_n_s16(vpaddl_u8(*v30), 2uLL);
  v31 = (v30 + a2);
  a3[232] = vshl_n_s16(vpaddl_u8(*v31), 2uLL);
  v32 = (v31 + a2);
  a3[240] = vshl_n_s16(vpaddl_u8(*v32), 2uLL);
  result = vshl_n_s16(vpaddl_u8(*(v32 + a2)), 2uLL);
  a3[248] = result;
  return result;
}

int16x8_t cfl_subsample_lbd_422_32x8_neon(const char *a1, int a2, __int16 *a3)
{
  v3 = a2;
  v20 = vld4_s8(a1);
  v4 = &a1[v3];
  v19.val[0] = vshlq_n_s16(vaddl_u8(v20.val[0], v20.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v20.val[2], v20.val[3]), 2uLL);
  vst2q_s16(a3, v19);
  v21 = vld4_s8(v4);
  v5 = &v4[v3];
  v6 = a3 + 32;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v21.val[0], v21.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v21.val[2], v21.val[3]), 2uLL);
  vst2q_s16(v6, v19);
  v22 = vld4_s8(v5);
  v7 = &v5[v3];
  v8 = a3 + 64;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v22.val[0], v22.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v22.val[2], v22.val[3]), 2uLL);
  vst2q_s16(v8, v19);
  v23 = vld4_s8(v7);
  v9 = &v7[v3];
  v10 = a3 + 96;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v23.val[0], v23.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v23.val[2], v23.val[3]), 2uLL);
  vst2q_s16(v10, v19);
  v24 = vld4_s8(v9);
  v11 = &v9[v3];
  v12 = a3 + 128;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v24.val[0], v24.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v24.val[2], v24.val[3]), 2uLL);
  vst2q_s16(v12, v19);
  v25 = vld4_s8(v11);
  v13 = &v11[v3];
  v14 = a3 + 160;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v25.val[0], v25.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v25.val[2], v25.val[3]), 2uLL);
  vst2q_s16(v14, v19);
  v26 = vld4_s8(v13);
  v15 = &v13[v3];
  v16 = a3 + 192;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v26.val[0], v26.val[1]), 2uLL);
  v19.val[1] = vshlq_n_s16(vaddl_u8(v26.val[2], v26.val[3]), 2uLL);
  vst2q_s16(v16, v19);
  v27 = vld4_s8(v15);
  v17 = a3 + 224;
  v19.val[0] = vshlq_n_s16(vaddl_u8(v27.val[0], v27.val[1]), 2uLL);
  result = vaddl_u8(v27.val[2], v27.val[3]);
  v19.val[1] = vshlq_n_s16(result, 2uLL);
  vst2q_s16(v17, v19);
  return result;
}

int16x4_t cfl_subsample_lbd_444_4x4_neon(__int32 *a1, int a2, int16x4_t *a3, uint8x8_t a4)
{
  a4.i32[0] = *a1;
  v4 = vshl_n_s16(*&vmovl_u8(a4), 3uLL);
  *a3 = v4;
  v5 = (a1 + a2);
  v4.i32[0] = *v5;
  v6 = vshl_n_s16(*&vmovl_u8(v4), 3uLL);
  a3[8] = v6;
  v7 = (v5 + a2);
  v6.i32[0] = *v7;
  v8 = vshl_n_s16(*&vmovl_u8(v6), 3uLL);
  a3[16] = v8;
  v8.i32[0] = *(v7 + a2);
  result = vshl_n_s16(*&vmovl_u8(v8), 3uLL);
  a3[24] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_8x8_neon(uint8x8_t *a1, int a2, uint16x8_t *a3)
{
  *a3 = vshll_n_u8(*a1, 3uLL);
  v3 = (a1 + a2);
  a3[4] = vshll_n_u8(*v3, 3uLL);
  v4 = (v3 + a2);
  a3[8] = vshll_n_u8(*v4, 3uLL);
  v5 = (v4 + a2);
  a3[12] = vshll_n_u8(*v5, 3uLL);
  v6 = (v5 + a2);
  a3[16] = vshll_n_u8(*v6, 3uLL);
  v7 = (v6 + a2);
  a3[20] = vshll_n_u8(*v7, 3uLL);
  v8 = (v7 + a2);
  a3[24] = vshll_n_u8(*v8, 3uLL);
  result = vshll_n_u8(*(v8 + a2), 3uLL);
  a3[28] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_16x16_neon(uint8x16_t *a1, int a2, uint16x8_t *a3)
{
  v3 = vshll_high_n_u8(*a1, 3uLL);
  *a3 = vshll_n_u8(*a1->i8, 3uLL);
  a3[1] = v3;
  v4 = (a1 + a2);
  v5 = vshll_high_n_u8(*v4, 3uLL);
  a3[4] = vshll_n_u8(*v4->i8, 3uLL);
  a3[5] = v5;
  v6 = (v4 + a2);
  v7 = vshll_high_n_u8(*v6, 3uLL);
  a3[8] = vshll_n_u8(*v6->i8, 3uLL);
  a3[9] = v7;
  v8 = (v6 + a2);
  v9 = vshll_high_n_u8(*v8, 3uLL);
  a3[12] = vshll_n_u8(*v8->i8, 3uLL);
  a3[13] = v9;
  v10 = (v8 + a2);
  v11 = vshll_high_n_u8(*v10, 3uLL);
  a3[16] = vshll_n_u8(*v10->i8, 3uLL);
  a3[17] = v11;
  v12 = (v10 + a2);
  v13 = vshll_high_n_u8(*v12, 3uLL);
  a3[20] = vshll_n_u8(*v12->i8, 3uLL);
  a3[21] = v13;
  v14 = (v12 + a2);
  v15 = vshll_high_n_u8(*v14, 3uLL);
  a3[24] = vshll_n_u8(*v14->i8, 3uLL);
  a3[25] = v15;
  v16 = (v14 + a2);
  v17 = vshll_high_n_u8(*v16, 3uLL);
  a3[28] = vshll_n_u8(*v16->i8, 3uLL);
  a3[29] = v17;
  v18 = (v16 + a2);
  v19 = vshll_high_n_u8(*v18, 3uLL);
  a3[32] = vshll_n_u8(*v18->i8, 3uLL);
  a3[33] = v19;
  v20 = (v18 + a2);
  v21 = vshll_high_n_u8(*v20, 3uLL);
  a3[36] = vshll_n_u8(*v20->i8, 3uLL);
  a3[37] = v21;
  v22 = (v20 + a2);
  v23 = vshll_high_n_u8(*v22, 3uLL);
  a3[40] = vshll_n_u8(*v22->i8, 3uLL);
  a3[41] = v23;
  v24 = (v22 + a2);
  v25 = vshll_high_n_u8(*v24, 3uLL);
  a3[44] = vshll_n_u8(*v24->i8, 3uLL);
  a3[45] = v25;
  v26 = (v24 + a2);
  v27 = vshll_high_n_u8(*v26, 3uLL);
  a3[48] = vshll_n_u8(*v26->i8, 3uLL);
  a3[49] = v27;
  v28 = (v26 + a2);
  v29 = vshll_high_n_u8(*v28, 3uLL);
  a3[52] = vshll_n_u8(*v28->i8, 3uLL);
  a3[53] = v29;
  v30 = (v28 + a2);
  v31 = vshll_high_n_u8(*v30, 3uLL);
  a3[56] = vshll_n_u8(*v30->i8, 3uLL);
  a3[57] = v31;
  v32 = *(v30 + a2);
  v33 = vshll_n_u8(*v32.i8, 3uLL);
  result = vshll_high_n_u8(v32, 3uLL);
  a3[60] = v33;
  a3[61] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_32x32_neon(uint8x16_t *a1, int a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = 48;
  do
  {
    v5 = (a3 + v4);
    v6 = v3[-1];
    v5[-3] = vshll_n_u8(*v6.i8, 3uLL);
    v5[-2] = vshll_high_n_u8(v6, 3uLL);
    result = vshll_high_n_u8(*v3, 3uLL);
    v5[-1] = vshll_n_u8(*v3->i8, 3uLL);
    *v5 = result;
    v8 = v4 - 48;
    v4 += 64;
    v3 = (v3 + a2);
  }

  while (v8 < 0x7C0);
  return result;
}

int16x4_t cfl_subsample_lbd_444_4x8_neon(__int32 *a1, int a2, int16x4_t *a3, uint8x8_t a4)
{
  a4.i32[0] = *a1;
  v4 = vshl_n_s16(*&vmovl_u8(a4), 3uLL);
  *a3 = v4;
  v5 = (a1 + a2);
  v4.i32[0] = *v5;
  v6 = vshl_n_s16(*&vmovl_u8(v4), 3uLL);
  a3[8] = v6;
  v7 = (v5 + a2);
  v6.i32[0] = *v7;
  v8 = vshl_n_s16(*&vmovl_u8(v6), 3uLL);
  a3[16] = v8;
  v9 = (v7 + a2);
  v8.i32[0] = *v9;
  v10 = vshl_n_s16(*&vmovl_u8(v8), 3uLL);
  a3[24] = v10;
  v11 = (v9 + a2);
  v10.i32[0] = *v11;
  v12 = vshl_n_s16(*&vmovl_u8(v10), 3uLL);
  a3[32] = v12;
  v13 = (v11 + a2);
  v12.i32[0] = *v13;
  v14 = vshl_n_s16(*&vmovl_u8(v12), 3uLL);
  a3[40] = v14;
  v15 = (v13 + a2);
  v14.i32[0] = *v15;
  v16 = vshl_n_s16(*&vmovl_u8(v14), 3uLL);
  a3[48] = v16;
  v16.i32[0] = *(v15 + a2);
  result = vshl_n_s16(*&vmovl_u8(v16), 3uLL);
  a3[56] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_8x4_neon(uint8x8_t *a1, int a2, uint16x8_t *a3)
{
  *a3 = vshll_n_u8(*a1, 3uLL);
  v3 = (a1 + a2);
  a3[4] = vshll_n_u8(*v3, 3uLL);
  v4 = (v3 + a2);
  a3[8] = vshll_n_u8(*v4, 3uLL);
  result = vshll_n_u8(*(v4 + a2), 3uLL);
  a3[12] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_8x16_neon(uint8x8_t *a1, int a2, uint16x8_t *a3)
{
  *a3 = vshll_n_u8(*a1, 3uLL);
  v3 = (a1 + a2);
  a3[4] = vshll_n_u8(*v3, 3uLL);
  v4 = (v3 + a2);
  a3[8] = vshll_n_u8(*v4, 3uLL);
  v5 = (v4 + a2);
  a3[12] = vshll_n_u8(*v5, 3uLL);
  v6 = (v5 + a2);
  a3[16] = vshll_n_u8(*v6, 3uLL);
  v7 = (v6 + a2);
  a3[20] = vshll_n_u8(*v7, 3uLL);
  v8 = (v7 + a2);
  a3[24] = vshll_n_u8(*v8, 3uLL);
  v9 = (v8 + a2);
  a3[28] = vshll_n_u8(*v9, 3uLL);
  v10 = (v9 + a2);
  a3[32] = vshll_n_u8(*v10, 3uLL);
  v11 = (v10 + a2);
  a3[36] = vshll_n_u8(*v11, 3uLL);
  v12 = (v11 + a2);
  a3[40] = vshll_n_u8(*v12, 3uLL);
  v13 = (v12 + a2);
  a3[44] = vshll_n_u8(*v13, 3uLL);
  v14 = (v13 + a2);
  a3[48] = vshll_n_u8(*v14, 3uLL);
  v15 = (v14 + a2);
  a3[52] = vshll_n_u8(*v15, 3uLL);
  v16 = (v15 + a2);
  a3[56] = vshll_n_u8(*v16, 3uLL);
  result = vshll_n_u8(*(v16 + a2), 3uLL);
  a3[60] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_16x8_neon(uint8x16_t *a1, int a2, uint16x8_t *a3)
{
  v3 = vshll_high_n_u8(*a1, 3uLL);
  *a3 = vshll_n_u8(*a1->i8, 3uLL);
  a3[1] = v3;
  v4 = (a1 + a2);
  v5 = vshll_high_n_u8(*v4, 3uLL);
  a3[4] = vshll_n_u8(*v4->i8, 3uLL);
  a3[5] = v5;
  v6 = (v4 + a2);
  v7 = vshll_high_n_u8(*v6, 3uLL);
  a3[8] = vshll_n_u8(*v6->i8, 3uLL);
  a3[9] = v7;
  v8 = (v6 + a2);
  v9 = vshll_high_n_u8(*v8, 3uLL);
  a3[12] = vshll_n_u8(*v8->i8, 3uLL);
  a3[13] = v9;
  v10 = (v8 + a2);
  v11 = vshll_high_n_u8(*v10, 3uLL);
  a3[16] = vshll_n_u8(*v10->i8, 3uLL);
  a3[17] = v11;
  v12 = (v10 + a2);
  v13 = vshll_high_n_u8(*v12, 3uLL);
  a3[20] = vshll_n_u8(*v12->i8, 3uLL);
  a3[21] = v13;
  v14 = (v12 + a2);
  v15 = vshll_high_n_u8(*v14, 3uLL);
  a3[24] = vshll_n_u8(*v14->i8, 3uLL);
  a3[25] = v15;
  v16 = *(v14 + a2);
  v17 = vshll_n_u8(*v16.i8, 3uLL);
  result = vshll_high_n_u8(v16, 3uLL);
  a3[28] = v17;
  a3[29] = result;
  return result;
}

uint8x16_t *cfl_subsample_lbd_444_16x32_neon(uint8x16_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = (a3 + v3);
    v5 = vshll_high_n_u8(*result, 3uLL);
    *v4 = vshll_n_u8(*result->i8, 3uLL);
    v4[1] = v5;
    result = (result + a2);
    v6 = v3 >= 0x7C0;
    v3 += 64;
  }

  while (!v6);
  return result;
}

uint16x8_t cfl_subsample_lbd_444_32x16_neon(uint8x16_t *a1, int a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = 48;
  do
  {
    v5 = (a3 + v4);
    v6 = v3[-1];
    v5[-3] = vshll_n_u8(*v6.i8, 3uLL);
    v5[-2] = vshll_high_n_u8(v6, 3uLL);
    result = vshll_high_n_u8(*v3, 3uLL);
    v5[-1] = vshll_n_u8(*v3->i8, 3uLL);
    *v5 = result;
    v8 = v4 - 48;
    v4 += 64;
    v3 = (v3 + a2);
  }

  while (v8 < 0x3C0);
  return result;
}

int16x4_t cfl_subsample_lbd_444_4x16_neon(__int32 *a1, int a2, int16x4_t *a3, uint8x8_t a4)
{
  a4.i32[0] = *a1;
  v4 = vshl_n_s16(*&vmovl_u8(a4), 3uLL);
  *a3 = v4;
  v5 = (a1 + a2);
  v4.i32[0] = *v5;
  v6 = vshl_n_s16(*&vmovl_u8(v4), 3uLL);
  a3[8] = v6;
  v7 = (v5 + a2);
  v6.i32[0] = *v7;
  v8 = vshl_n_s16(*&vmovl_u8(v6), 3uLL);
  a3[16] = v8;
  v9 = (v7 + a2);
  v8.i32[0] = *v9;
  v10 = vshl_n_s16(*&vmovl_u8(v8), 3uLL);
  a3[24] = v10;
  v11 = (v9 + a2);
  v10.i32[0] = *v11;
  v12 = vshl_n_s16(*&vmovl_u8(v10), 3uLL);
  a3[32] = v12;
  v13 = (v11 + a2);
  v12.i32[0] = *v13;
  v14 = vshl_n_s16(*&vmovl_u8(v12), 3uLL);
  a3[40] = v14;
  v15 = (v13 + a2);
  v14.i32[0] = *v15;
  v16 = vshl_n_s16(*&vmovl_u8(v14), 3uLL);
  a3[48] = v16;
  v17 = (v15 + a2);
  v16.i32[0] = *v17;
  v18 = vshl_n_s16(*&vmovl_u8(v16), 3uLL);
  a3[56] = v18;
  v19 = (v17 + a2);
  v18.i32[0] = *v19;
  v20 = vshl_n_s16(*&vmovl_u8(v18), 3uLL);
  a3[64] = v20;
  v21 = (v19 + a2);
  v20.i32[0] = *v21;
  v22 = vshl_n_s16(*&vmovl_u8(v20), 3uLL);
  a3[72] = v22;
  v23 = (v21 + a2);
  v22.i32[0] = *v23;
  v24 = vshl_n_s16(*&vmovl_u8(v22), 3uLL);
  a3[80] = v24;
  v25 = (v23 + a2);
  v24.i32[0] = *v25;
  v26 = vshl_n_s16(*&vmovl_u8(v24), 3uLL);
  a3[88] = v26;
  v27 = (v25 + a2);
  v26.i32[0] = *v27;
  v28 = vshl_n_s16(*&vmovl_u8(v26), 3uLL);
  a3[96] = v28;
  v29 = (v27 + a2);
  v28.i32[0] = *v29;
  v30 = vshl_n_s16(*&vmovl_u8(v28), 3uLL);
  a3[104] = v30;
  v31 = (v29 + a2);
  v30.i32[0] = *v31;
  v32 = vshl_n_s16(*&vmovl_u8(v30), 3uLL);
  a3[112] = v32;
  v32.i32[0] = *(v31 + a2);
  result = vshl_n_s16(*&vmovl_u8(v32), 3uLL);
  a3[120] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_16x4_neon(uint8x16_t *a1, int a2, uint16x8_t *a3)
{
  v3 = vshll_high_n_u8(*a1, 3uLL);
  *a3 = vshll_n_u8(*a1->i8, 3uLL);
  a3[1] = v3;
  v4 = (a1 + a2);
  v5 = vshll_high_n_u8(*v4, 3uLL);
  a3[4] = vshll_n_u8(*v4->i8, 3uLL);
  a3[5] = v5;
  v6 = (v4 + a2);
  v7 = vshll_high_n_u8(*v6, 3uLL);
  a3[8] = vshll_n_u8(*v6->i8, 3uLL);
  a3[9] = v7;
  v8 = *(v6 + a2);
  v9 = vshll_n_u8(*v8.i8, 3uLL);
  result = vshll_high_n_u8(v8, 3uLL);
  a3[12] = v9;
  a3[13] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_8x32_neon(uint8x8_t *a1, int a2, uint16x8_t *a3)
{
  *a3 = vshll_n_u8(*a1, 3uLL);
  v3 = (a1 + a2);
  a3[4] = vshll_n_u8(*v3, 3uLL);
  v4 = (v3 + a2);
  a3[8] = vshll_n_u8(*v4, 3uLL);
  v5 = (v4 + a2);
  a3[12] = vshll_n_u8(*v5, 3uLL);
  v6 = (v5 + a2);
  a3[16] = vshll_n_u8(*v6, 3uLL);
  v7 = (v6 + a2);
  a3[20] = vshll_n_u8(*v7, 3uLL);
  v8 = (v7 + a2);
  a3[24] = vshll_n_u8(*v8, 3uLL);
  v9 = (v8 + a2);
  a3[28] = vshll_n_u8(*v9, 3uLL);
  v10 = (v9 + a2);
  a3[32] = vshll_n_u8(*v10, 3uLL);
  v11 = (v10 + a2);
  a3[36] = vshll_n_u8(*v11, 3uLL);
  v12 = (v11 + a2);
  a3[40] = vshll_n_u8(*v12, 3uLL);
  v13 = (v12 + a2);
  a3[44] = vshll_n_u8(*v13, 3uLL);
  v14 = (v13 + a2);
  a3[48] = vshll_n_u8(*v14, 3uLL);
  v15 = (v14 + a2);
  a3[52] = vshll_n_u8(*v15, 3uLL);
  v16 = (v15 + a2);
  a3[56] = vshll_n_u8(*v16, 3uLL);
  v17 = (v16 + a2);
  a3[60] = vshll_n_u8(*v17, 3uLL);
  v18 = (v17 + a2);
  a3[64] = vshll_n_u8(*v18, 3uLL);
  v19 = (v18 + a2);
  a3[68] = vshll_n_u8(*v19, 3uLL);
  v20 = (v19 + a2);
  a3[72] = vshll_n_u8(*v20, 3uLL);
  v21 = (v20 + a2);
  a3[76] = vshll_n_u8(*v21, 3uLL);
  v22 = (v21 + a2);
  a3[80] = vshll_n_u8(*v22, 3uLL);
  v23 = (v22 + a2);
  a3[84] = vshll_n_u8(*v23, 3uLL);
  v24 = (v23 + a2);
  a3[88] = vshll_n_u8(*v24, 3uLL);
  v25 = (v24 + a2);
  a3[92] = vshll_n_u8(*v25, 3uLL);
  v26 = (v25 + a2);
  a3[96] = vshll_n_u8(*v26, 3uLL);
  v27 = (v26 + a2);
  a3[100] = vshll_n_u8(*v27, 3uLL);
  v28 = (v27 + a2);
  a3[104] = vshll_n_u8(*v28, 3uLL);
  v29 = (v28 + a2);
  a3[108] = vshll_n_u8(*v29, 3uLL);
  v30 = (v29 + a2);
  a3[112] = vshll_n_u8(*v30, 3uLL);
  v31 = (v30 + a2);
  a3[116] = vshll_n_u8(*v31, 3uLL);
  v32 = (v31 + a2);
  a3[120] = vshll_n_u8(*v32, 3uLL);
  result = vshll_n_u8(*(v32 + a2), 3uLL);
  a3[124] = result;
  return result;
}

uint16x8_t cfl_subsample_lbd_444_32x8_neon(uint8x16_t *a1, int a2, uint16x8_t *a3)
{
  v3 = vshll_high_n_u8(*a1, 3uLL);
  *a3 = vshll_n_u8(*a1->i8, 3uLL);
  a3[1] = v3;
  v4 = a1[1];
  a3[2] = vshll_n_u8(*v4.i8, 3uLL);
  a3[3] = vshll_high_n_u8(v4, 3uLL);
  v5 = (a1 + a2);
  v6 = vshll_high_n_u8(*v5, 3uLL);
  a3[4] = vshll_n_u8(*v5->i8, 3uLL);
  a3[5] = v6;
  v7 = v5[1];
  a3[6] = vshll_n_u8(*v7.i8, 3uLL);
  a3[7] = vshll_high_n_u8(v7, 3uLL);
  v8 = (v5 + a2);
  v9 = vshll_high_n_u8(*v8, 3uLL);
  a3[8] = vshll_n_u8(*v8->i8, 3uLL);
  a3[9] = v9;
  v10 = v8[1];
  a3[10] = vshll_n_u8(*v10.i8, 3uLL);
  a3[11] = vshll_high_n_u8(v10, 3uLL);
  v11 = (v8 + a2);
  v12 = vshll_high_n_u8(*v11, 3uLL);
  a3[12] = vshll_n_u8(*v11->i8, 3uLL);
  a3[13] = v12;
  v13 = v11[1];
  a3[14] = vshll_n_u8(*v13.i8, 3uLL);
  a3[15] = vshll_high_n_u8(v13, 3uLL);
  v14 = (v11 + a2);
  v15 = vshll_high_n_u8(*v14, 3uLL);
  a3[16] = vshll_n_u8(*v14->i8, 3uLL);
  a3[17] = v15;
  v16 = v14[1];
  a3[18] = vshll_n_u8(*v16.i8, 3uLL);
  a3[19] = vshll_high_n_u8(v16, 3uLL);
  v17 = (v14 + a2);
  v18 = vshll_high_n_u8(*v17, 3uLL);
  a3[20] = vshll_n_u8(*v17->i8, 3uLL);
  a3[21] = v18;
  v19 = v17[1];
  a3[22] = vshll_n_u8(*v19.i8, 3uLL);
  a3[23] = vshll_high_n_u8(v19, 3uLL);
  v20 = (v17 + a2);
  v21 = vshll_high_n_u8(*v20, 3uLL);
  a3[24] = vshll_n_u8(*v20->i8, 3uLL);
  a3[25] = v21;
  v22 = v20[1];
  a3[26] = vshll_n_u8(*v22.i8, 3uLL);
  a3[27] = vshll_high_n_u8(v22, 3uLL);
  v23 = (v20 + a2);
  v24 = vshll_high_n_u8(*v23, 3uLL);
  a3[28] = vshll_n_u8(*v23->i8, 3uLL);
  a3[29] = v24;
  v25 = v23[1];
  v26 = vshll_n_u8(*v25.i8, 3uLL);
  result = vshll_high_n_u8(v25, 3uLL);
  a3[30] = v26;
  a3[31] = result;
  return result;
}

int16x4_t cfl_subtract_average_4x4_neon(int16x4_t *a1, int16x4_t *a2)
{
  v2 = vaddl_u16(vadd_s16(a1[24], a1[16]), vadd_s16(a1[8], *a1));
  v3 = vpaddq_s32(v2, v2);
  *v3.i8 = vqrshrn_n_u32(vpaddq_s32(v3, v3), 4uLL);
  *a2 = vsub_s16(*a1, *v3.i8);
  a2[8] = vsub_s16(a1[8], *v3.i8);
  a2[16] = vsub_s16(a1[16], *v3.i8);
  result = vsub_s16(a1[24], *v3.i8);
  a2[24] = result;
  return result;
}

int16x4_t cfl_subtract_average_4x8_neon(int16x4_t *a1, int16x4_t *a2)
{
  v2 = vaddw_u16(vaddw_u16(vaddl_u16(vadd_s16(a1[24], a1[16]), vadd_s16(a1[8], *a1)), vadd_s16(a1[40], a1[32])), vadd_s16(a1[56], a1[48]));
  v3 = vpaddq_s32(v2, v2);
  *v3.i8 = vqrshrn_n_u32(vpaddq_s32(v3, v3), 5uLL);
  *a2 = vsub_s16(*a1, *v3.i8);
  a2[8] = vsub_s16(a1[8], *v3.i8);
  a2[16] = vsub_s16(a1[16], *v3.i8);
  a2[24] = vsub_s16(a1[24], *v3.i8);
  a2[32] = vsub_s16(a1[32], *v3.i8);
  a2[40] = vsub_s16(a1[40], *v3.i8);
  a2[48] = vsub_s16(a1[48], *v3.i8);
  result = vsub_s16(a1[56], *v3.i8);
  a2[56] = result;
  return result;
}

int16x4_t cfl_subtract_average_4x16_neon(int16x4_t *a1, int16x4_t *a2)
{
  v2 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(vaddl_u16(vadd_s16(a1[24], a1[16]), vadd_s16(a1[8], *a1)), vadd_s16(a1[40], a1[32])), vadd_s16(a1[56], a1[48])), vadd_s16(a1[72], a1[64])), vadd_s16(a1[88], a1[80])), vadd_s16(a1[104], a1[96])), vadd_s16(a1[120], a1[112]));
  v3 = vpaddq_s32(v2, v2);
  *v3.i8 = vqrshrn_n_u32(vpaddq_s32(v3, v3), 6uLL);
  *a2 = vsub_s16(*a1, *v3.i8);
  a2[8] = vsub_s16(a1[8], *v3.i8);
  a2[16] = vsub_s16(a1[16], *v3.i8);
  a2[24] = vsub_s16(a1[24], *v3.i8);
  a2[32] = vsub_s16(a1[32], *v3.i8);
  a2[40] = vsub_s16(a1[40], *v3.i8);
  a2[48] = vsub_s16(a1[48], *v3.i8);
  a2[56] = vsub_s16(a1[56], *v3.i8);
  a2[64] = vsub_s16(a1[64], *v3.i8);
  a2[72] = vsub_s16(a1[72], *v3.i8);
  a2[80] = vsub_s16(a1[80], *v3.i8);
  a2[88] = vsub_s16(a1[88], *v3.i8);
  a2[96] = vsub_s16(a1[96], *v3.i8);
  a2[104] = vsub_s16(a1[104], *v3.i8);
  a2[112] = vsub_s16(a1[112], *v3.i8);
  result = vsub_s16(a1[120], *v3.i8);
  a2[120] = result;
  return result;
}

int16x8_t cfl_subtract_average_8x4_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[12], a1[8])), vaddq_s16(a1[4], *a1));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 5uLL), v4, 5uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  result = vsubq_s16(a1[12], v5);
  a2[12] = result;
  return result;
}

int16x8_t cfl_subtract_average_8x8_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[12], a1[8])), vaddq_s16(a1[4], *a1)), vaddq_s16(a1[20], a1[16])), vaddq_s16(a1[28], a1[24]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 6uLL), v4, 6uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[16] = vsubq_s16(a1[16], v5);
  a2[20] = vsubq_s16(a1[20], v5);
  a2[24] = vsubq_s16(a1[24], v5);
  result = vsubq_s16(a1[28], v5);
  a2[28] = result;
  return result;
}

int16x8_t cfl_subtract_average_8x16_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[12], a1[8])), vaddq_s16(a1[4], *a1)), vaddq_s16(a1[20], a1[16])), vaddq_s16(a1[28], a1[24])), vaddq_s16(a1[36], a1[32])), vaddq_s16(a1[44], a1[40])), vaddq_s16(a1[52], a1[48])), vaddq_s16(a1[60], a1[56]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 7uLL), v4, 7uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[16] = vsubq_s16(a1[16], v5);
  a2[20] = vsubq_s16(a1[20], v5);
  a2[24] = vsubq_s16(a1[24], v5);
  a2[28] = vsubq_s16(a1[28], v5);
  a2[32] = vsubq_s16(a1[32], v5);
  a2[36] = vsubq_s16(a1[36], v5);
  a2[40] = vsubq_s16(a1[40], v5);
  a2[44] = vsubq_s16(a1[44], v5);
  a2[48] = vsubq_s16(a1[48], v5);
  a2[52] = vsubq_s16(a1[52], v5);
  a2[56] = vsubq_s16(a1[56], v5);
  result = vsubq_s16(a1[60], v5);
  a2[60] = result;
  return result;
}

int16x8_t cfl_subtract_average_8x32_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[12], a1[8])), vaddq_s16(a1[4], *a1)), vaddq_s16(a1[20], a1[16])), vaddq_s16(a1[28], a1[24])), vaddq_s16(a1[36], a1[32])), vaddq_s16(a1[44], a1[40])), vaddq_s16(a1[52], a1[48])), vaddq_s16(a1[60], a1[56])), vaddq_s16(a1[68], a1[64])), vaddq_s16(a1[76], a1[72])), vaddq_s16(a1[84], a1[80])), vaddq_s16(a1[92], a1[88])), vaddq_s16(a1[100], a1[96])), vaddq_s16(a1[108], a1[104])), vaddq_s16(a1[116], a1[112])), vaddq_s16(a1[124], a1[120]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 8uLL), v4, 8uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[16] = vsubq_s16(a1[16], v5);
  a2[20] = vsubq_s16(a1[20], v5);
  a2[24] = vsubq_s16(a1[24], v5);
  a2[28] = vsubq_s16(a1[28], v5);
  a2[32] = vsubq_s16(a1[32], v5);
  a2[36] = vsubq_s16(a1[36], v5);
  a2[40] = vsubq_s16(a1[40], v5);
  a2[44] = vsubq_s16(a1[44], v5);
  a2[48] = vsubq_s16(a1[48], v5);
  a2[52] = vsubq_s16(a1[52], v5);
  a2[56] = vsubq_s16(a1[56], v5);
  a2[60] = vsubq_s16(a1[60], v5);
  a2[64] = vsubq_s16(a1[64], v5);
  a2[68] = vsubq_s16(a1[68], v5);
  a2[72] = vsubq_s16(a1[72], v5);
  a2[76] = vsubq_s16(a1[76], v5);
  a2[80] = vsubq_s16(a1[80], v5);
  a2[84] = vsubq_s16(a1[84], v5);
  a2[88] = vsubq_s16(a1[88], v5);
  a2[92] = vsubq_s16(a1[92], v5);
  a2[96] = vsubq_s16(a1[96], v5);
  a2[100] = vsubq_s16(a1[100], v5);
  a2[104] = vsubq_s16(a1[104], v5);
  a2[108] = vsubq_s16(a1[108], v5);
  a2[112] = vsubq_s16(a1[112], v5);
  a2[116] = vsubq_s16(a1[116], v5);
  a2[120] = vsubq_s16(a1[120], v5);
  result = vsubq_s16(a1[124], v5);
  a2[124] = result;
  return result;
}

int16x8_t cfl_subtract_average_16x4_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[1], *a1)), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 6uLL), v4, 6uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[1] = vsubq_s16(a1[1], v5);
  a2[5] = vsubq_s16(a1[5], v5);
  a2[9] = vsubq_s16(a1[9], v5);
  result = vsubq_s16(a1[13], v5);
  a2[13] = result;
  return result;
}

int16x8_t cfl_subtract_average_16x8_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[1], *a1)), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12])), vaddq_s16(a1[17], a1[16])), vaddq_s16(a1[21], a1[20])), vaddq_s16(a1[25], a1[24])), vaddq_s16(a1[29], a1[28]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 7uLL), v4, 7uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[1] = vsubq_s16(a1[1], v5);
  a2[5] = vsubq_s16(a1[5], v5);
  a2[9] = vsubq_s16(a1[9], v5);
  a2[13] = vsubq_s16(a1[13], v5);
  a2[16] = vsubq_s16(a1[16], v5);
  a2[20] = vsubq_s16(a1[20], v5);
  a2[24] = vsubq_s16(a1[24], v5);
  a2[28] = vsubq_s16(a1[28], v5);
  a2[17] = vsubq_s16(a1[17], v5);
  a2[21] = vsubq_s16(a1[21], v5);
  a2[25] = vsubq_s16(a1[25], v5);
  result = vsubq_s16(a1[29], v5);
  a2[29] = result;
  return result;
}

int16x8_t cfl_subtract_average_16x16_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[1], *a1)), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12])), vaddq_s16(a1[17], a1[16])), vaddq_s16(a1[21], a1[20])), vaddq_s16(a1[25], a1[24])), vaddq_s16(a1[29], a1[28])), vaddq_s16(a1[33], a1[32])), vaddq_s16(a1[37], a1[36])), vaddq_s16(a1[41], a1[40])), vaddq_s16(a1[45], a1[44])), vaddq_s16(a1[49], a1[48])), vaddq_s16(a1[53], a1[52])), vaddq_s16(a1[57], a1[56])), vaddq_s16(a1[61], a1[60]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 8uLL), v4, 8uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[1] = vsubq_s16(a1[1], v5);
  a2[5] = vsubq_s16(a1[5], v5);
  a2[9] = vsubq_s16(a1[9], v5);
  a2[13] = vsubq_s16(a1[13], v5);
  a2[16] = vsubq_s16(a1[16], v5);
  a2[20] = vsubq_s16(a1[20], v5);
  a2[24] = vsubq_s16(a1[24], v5);
  a2[28] = vsubq_s16(a1[28], v5);
  a2[17] = vsubq_s16(a1[17], v5);
  a2[21] = vsubq_s16(a1[21], v5);
  a2[25] = vsubq_s16(a1[25], v5);
  a2[29] = vsubq_s16(a1[29], v5);
  a2[32] = vsubq_s16(a1[32], v5);
  a2[36] = vsubq_s16(a1[36], v5);
  a2[40] = vsubq_s16(a1[40], v5);
  a2[44] = vsubq_s16(a1[44], v5);
  a2[33] = vsubq_s16(a1[33], v5);
  a2[37] = vsubq_s16(a1[37], v5);
  a2[41] = vsubq_s16(a1[41], v5);
  a2[45] = vsubq_s16(a1[45], v5);
  a2[48] = vsubq_s16(a1[48], v5);
  a2[52] = vsubq_s16(a1[52], v5);
  a2[56] = vsubq_s16(a1[56], v5);
  a2[60] = vsubq_s16(a1[60], v5);
  a2[49] = vsubq_s16(a1[49], v5);
  a2[53] = vsubq_s16(a1[53], v5);
  a2[57] = vsubq_s16(a1[57], v5);
  result = vsubq_s16(a1[61], v5);
  a2[61] = result;
  return result;
}

int16x8_t cfl_subtract_average_16x32_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vaddq_s16(a1[85], a1[84]);
  v3 = vaddq_s16(a1[89], a1[88]);
  v4 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[1], *a1)), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12])), vaddq_s16(a1[17], a1[16])), vaddq_s16(a1[21], a1[20])), vaddq_s16(a1[25], a1[24])), vaddq_s16(a1[29], a1[28])), vaddq_s16(a1[33], a1[32])), vaddq_s16(a1[37], a1[36])), vaddq_s16(a1[41], a1[40])), vaddq_s16(a1[45], a1[44])), vaddq_s16(a1[49], a1[48])), vaddq_s16(a1[53], a1[52])), vaddq_s16(a1[57], a1[56])), vaddq_s16(a1[61], a1[60])), vaddq_s16(a1[65], a1[64])), vaddq_s16(a1[69], a1[68])), vaddq_s16(a1[73], a1[72])), vaddq_s16(a1[77], a1[76])), vaddq_s16(a1[81], a1[80])), v2), v3);
  v5 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v4, vaddq_s16(a1[93], a1[92])), vaddq_s16(a1[97], a1[96])), vaddq_s16(a1[101], a1[100])), vaddq_s16(a1[105], a1[104])), vaddq_s16(a1[109], a1[108])), vaddq_s16(a1[113], a1[112])), vaddq_s16(a1[117], a1[116])), vaddq_s16(a1[121], a1[120])), vaddq_s16(a1[125], a1[124]));
  v6 = vpaddq_s32(v5, v5);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 9uLL), v7, 9uLL);
  *a2 = vsubq_s16(*a1, v8);
  a2[4] = vsubq_s16(a1[4], v8);
  a2[8] = vsubq_s16(a1[8], v8);
  a2[12] = vsubq_s16(a1[12], v8);
  a2[1] = vsubq_s16(a1[1], v8);
  a2[5] = vsubq_s16(a1[5], v8);
  a2[9] = vsubq_s16(a1[9], v8);
  a2[13] = vsubq_s16(a1[13], v8);
  a2[16] = vsubq_s16(a1[16], v8);
  a2[20] = vsubq_s16(a1[20], v8);
  a2[24] = vsubq_s16(a1[24], v8);
  a2[28] = vsubq_s16(a1[28], v8);
  a2[17] = vsubq_s16(a1[17], v8);
  a2[21] = vsubq_s16(a1[21], v8);
  a2[25] = vsubq_s16(a1[25], v8);
  a2[29] = vsubq_s16(a1[29], v8);
  a2[32] = vsubq_s16(a1[32], v8);
  a2[36] = vsubq_s16(a1[36], v8);
  a2[40] = vsubq_s16(a1[40], v8);
  a2[44] = vsubq_s16(a1[44], v8);
  a2[33] = vsubq_s16(a1[33], v8);
  a2[37] = vsubq_s16(a1[37], v8);
  a2[41] = vsubq_s16(a1[41], v8);
  a2[45] = vsubq_s16(a1[45], v8);
  a2[48] = vsubq_s16(a1[48], v8);
  a2[52] = vsubq_s16(a1[52], v8);
  a2[56] = vsubq_s16(a1[56], v8);
  a2[60] = vsubq_s16(a1[60], v8);
  a2[49] = vsubq_s16(a1[49], v8);
  a2[53] = vsubq_s16(a1[53], v8);
  a2[57] = vsubq_s16(a1[57], v8);
  a2[61] = vsubq_s16(a1[61], v8);
  a2[64] = vsubq_s16(a1[64], v8);
  a2[68] = vsubq_s16(a1[68], v8);
  a2[72] = vsubq_s16(a1[72], v8);
  a2[76] = vsubq_s16(a1[76], v8);
  a2[65] = vsubq_s16(a1[65], v8);
  a2[69] = vsubq_s16(a1[69], v8);
  a2[73] = vsubq_s16(a1[73], v8);
  a2[77] = vsubq_s16(a1[77], v8);
  a2[80] = vsubq_s16(a1[80], v8);
  a2[84] = vsubq_s16(a1[84], v8);
  a2[88] = vsubq_s16(a1[88], v8);
  a2[92] = vsubq_s16(a1[92], v8);
  a2[81] = vsubq_s16(a1[81], v8);
  a2[85] = vsubq_s16(a1[85], v8);
  a2[89] = vsubq_s16(a1[89], v8);
  a2[93] = vsubq_s16(a1[93], v8);
  a2[96] = vsubq_s16(a1[96], v8);
  a2[100] = vsubq_s16(a1[100], v8);
  a2[104] = vsubq_s16(a1[104], v8);
  a2[108] = vsubq_s16(a1[108], v8);
  a2[97] = vsubq_s16(a1[97], v8);
  a2[101] = vsubq_s16(a1[101], v8);
  a2[105] = vsubq_s16(a1[105], v8);
  a2[109] = vsubq_s16(a1[109], v8);
  a2[112] = vsubq_s16(a1[112], v8);
  a2[116] = vsubq_s16(a1[116], v8);
  a2[120] = vsubq_s16(a1[120], v8);
  a2[124] = vsubq_s16(a1[124], v8);
  a2[113] = vsubq_s16(a1[113], v8);
  a2[117] = vsubq_s16(a1[117], v8);
  a2[121] = vsubq_s16(a1[121], v8);
  result = vsubq_s16(a1[125], v8);
  a2[125] = result;
  return result;
}

int16x8_t cfl_subtract_average_32x8_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[1], *a1)), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12])), vaddq_s16(a1[3], a1[2])), vaddq_s16(a1[7], a1[6])), vaddq_s16(a1[11], a1[10])), vaddq_s16(a1[15], a1[14])), vaddq_s16(a1[17], a1[16])), vaddq_s16(a1[21], a1[20])), vaddq_s16(a1[25], a1[24])), vaddq_s16(a1[29], a1[28])), vaddq_s16(a1[19], a1[18])), vaddq_s16(a1[23], a1[22])), vaddq_s16(a1[27], a1[26])), vaddq_s16(a1[31], a1[30]));
  v3 = vpaddq_s32(v2, v2);
  v4 = vpaddq_s32(v3, v3);
  v5 = vqrshrn_high_n_u32(vqrshrn_n_u32(v4, 8uLL), v4, 8uLL);
  *a2 = vsubq_s16(*a1, v5);
  a2[4] = vsubq_s16(a1[4], v5);
  a2[8] = vsubq_s16(a1[8], v5);
  a2[12] = vsubq_s16(a1[12], v5);
  a2[1] = vsubq_s16(a1[1], v5);
  a2[5] = vsubq_s16(a1[5], v5);
  a2[9] = vsubq_s16(a1[9], v5);
  a2[13] = vsubq_s16(a1[13], v5);
  a2[2] = vsubq_s16(a1[2], v5);
  a2[6] = vsubq_s16(a1[6], v5);
  a2[10] = vsubq_s16(a1[10], v5);
  a2[14] = vsubq_s16(a1[14], v5);
  a2[3] = vsubq_s16(a1[3], v5);
  a2[7] = vsubq_s16(a1[7], v5);
  a2[11] = vsubq_s16(a1[11], v5);
  a2[15] = vsubq_s16(a1[15], v5);
  a2[16] = vsubq_s16(a1[16], v5);
  a2[20] = vsubq_s16(a1[20], v5);
  a2[24] = vsubq_s16(a1[24], v5);
  a2[28] = vsubq_s16(a1[28], v5);
  a2[17] = vsubq_s16(a1[17], v5);
  a2[21] = vsubq_s16(a1[21], v5);
  a2[25] = vsubq_s16(a1[25], v5);
  a2[29] = vsubq_s16(a1[29], v5);
  a2[18] = vsubq_s16(a1[18], v5);
  a2[22] = vsubq_s16(a1[22], v5);
  a2[26] = vsubq_s16(a1[26], v5);
  a2[30] = vsubq_s16(a1[30], v5);
  a2[19] = vsubq_s16(a1[19], v5);
  a2[23] = vsubq_s16(a1[23], v5);
  a2[27] = vsubq_s16(a1[27], v5);
  result = vsubq_s16(a1[31], v5);
  a2[31] = result;
  return result;
}

int16x8_t cfl_subtract_average_32x16_neon(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vaddq_s16(a1[39], a1[38]);
  v3 = vaddq_s16(a1[43], a1[42]);
  v4 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(a1[5], a1[4])), vaddq_s16(a1[1], *a1)), vaddq_s16(a1[9], a1[8])), vaddq_s16(a1[13], a1[12])), vaddq_s16(a1[3], a1[2])), vaddq_s16(a1[7], a1[6])), vaddq_s16(a1[11], a1[10])), vaddq_s16(a1[15], a1[14])), vaddq_s16(a1[17], a1[16])), vaddq_s16(a1[21], a1[20])), vaddq_s16(a1[25], a1[24])), vaddq_s16(a1[29], a1[28])), vaddq_s16(a1[19], a1[18])), vaddq_s16(a1[23], a1[22])), vaddq_s16(a1[27], a1[26])), vaddq_s16(a1[31], a1[30])), vaddq_s16(a1[33], a1[32])), vaddq_s16(a1[37], a1[36])), vaddq_s16(a1[41], a1[40])), vaddq_s16(a1[45], a1[44])), vaddq_s16(a1[35], a1[34])), v2), v3);
  v5 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v4, vaddq_s16(a1[47], a1[46])), vaddq_s16(a1[49], a1[48])), vaddq_s16(a1[53], a1[52])), vaddq_s16(a1[57], a1[56])), vaddq_s16(a1[61], a1[60])), vaddq_s16(a1[51], a1[50])), vaddq_s16(a1[55], a1[54])), vaddq_s16(a1[59], a1[58])), vaddq_s16(a1[63], a1[62]));
  v6 = vpaddq_s32(v5, v5);
  v7 = vpaddq_s32(v6, v6);
  v8 = vqrshrn_high_n_u32(vqrshrn_n_u32(v7, 9uLL), v7, 9uLL);
  *a2 = vsubq_s16(*a1, v8);
  a2[4] = vsubq_s16(a1[4], v8);
  a2[8] = vsubq_s16(a1[8], v8);
  a2[12] = vsubq_s16(a1[12], v8);
  a2[1] = vsubq_s16(a1[1], v8);
  a2[5] = vsubq_s16(a1[5], v8);
  a2[9] = vsubq_s16(a1[9], v8);
  a2[13] = vsubq_s16(a1[13], v8);
  a2[2] = vsubq_s16(a1[2], v8);
  a2[6] = vsubq_s16(a1[6], v8);
  a2[10] = vsubq_s16(a1[10], v8);
  a2[14] = vsubq_s16(a1[14], v8);
  a2[3] = vsubq_s16(a1[3], v8);
  a2[7] = vsubq_s16(a1[7], v8);
  a2[11] = vsubq_s16(a1[11], v8);
  a2[15] = vsubq_s16(a1[15], v8);
  a2[16] = vsubq_s16(a1[16], v8);
  a2[20] = vsubq_s16(a1[20], v8);
  a2[24] = vsubq_s16(a1[24], v8);
  a2[28] = vsubq_s16(a1[28], v8);
  a2[17] = vsubq_s16(a1[17], v8);
  a2[21] = vsubq_s16(a1[21], v8);
  a2[25] = vsubq_s16(a1[25], v8);
  a2[29] = vsubq_s16(a1[29], v8);
  a2[18] = vsubq_s16(a1[18], v8);
  a2[22] = vsubq_s16(a1[22], v8);
  a2[26] = vsubq_s16(a1[26], v8);
  a2[30] = vsubq_s16(a1[30], v8);
  a2[19] = vsubq_s16(a1[19], v8);
  a2[23] = vsubq_s16(a1[23], v8);
  a2[27] = vsubq_s16(a1[27], v8);
  a2[31] = vsubq_s16(a1[31], v8);
  a2[32] = vsubq_s16(a1[32], v8);
  a2[36] = vsubq_s16(a1[36], v8);
  a2[40] = vsubq_s16(a1[40], v8);
  a2[44] = vsubq_s16(a1[44], v8);
  a2[33] = vsubq_s16(a1[33], v8);
  a2[37] = vsubq_s16(a1[37], v8);
  a2[41] = vsubq_s16(a1[41], v8);
  a2[45] = vsubq_s16(a1[45], v8);
  a2[34] = vsubq_s16(a1[34], v8);
  a2[38] = vsubq_s16(a1[38], v8);
  a2[42] = vsubq_s16(a1[42], v8);
  a2[46] = vsubq_s16(a1[46], v8);
  a2[35] = vsubq_s16(a1[35], v8);
  a2[39] = vsubq_s16(a1[39], v8);
  a2[43] = vsubq_s16(a1[43], v8);
  a2[47] = vsubq_s16(a1[47], v8);
  a2[48] = vsubq_s16(a1[48], v8);
  a2[52] = vsubq_s16(a1[52], v8);
  a2[56] = vsubq_s16(a1[56], v8);
  a2[60] = vsubq_s16(a1[60], v8);
  a2[49] = vsubq_s16(a1[49], v8);
  a2[53] = vsubq_s16(a1[53], v8);
  a2[57] = vsubq_s16(a1[57], v8);
  a2[61] = vsubq_s16(a1[61], v8);
  a2[50] = vsubq_s16(a1[50], v8);
  a2[54] = vsubq_s16(a1[54], v8);
  a2[58] = vsubq_s16(a1[58], v8);
  a2[62] = vsubq_s16(a1[62], v8);
  a2[51] = vsubq_s16(a1[51], v8);
  a2[55] = vsubq_s16(a1[55], v8);
  a2[59] = vsubq_s16(a1[59], v8);
  result = vsubq_s16(a1[63], v8);
  a2[63] = result;
  return result;
}

int16x8_t *cfl_subtract_average_32x32_neon(int16x8_t *result, int16x8_t *a2)
{
  v2 = result + 8;
  v3 = vaddq_s16(result[39], result[38]);
  v4 = vaddq_s16(result[43], result[42]);
  v5 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vaddq_s16(result[5], result[4])), vaddq_s16(result[1], *result)), vaddq_s16(result[9], result[8])), vaddq_s16(result[13], result[12])), vaddq_s16(result[3], result[2])), vaddq_s16(result[7], result[6])), vaddq_s16(result[11], result[10])), vaddq_s16(result[15], result[14])), vaddq_s16(result[17], result[16])), vaddq_s16(result[21], result[20])), vaddq_s16(result[25], result[24])), vaddq_s16(result[29], result[28])), vaddq_s16(result[19], result[18])), vaddq_s16(result[23], result[22])), vaddq_s16(result[27], result[26])), vaddq_s16(result[31], result[30])), vaddq_s16(result[33], result[32])), vaddq_s16(result[37], result[36])), vaddq_s16(result[41], result[40])), vaddq_s16(result[45], result[44])), vaddq_s16(result[35], result[34])), v3), v4);
  v6 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v5, vaddq_s16(result[47], result[46])), vaddq_s16(result[49], result[48])), vaddq_s16(result[53], result[52])), vaddq_s16(result[57], result[56])), vaddq_s16(result[61], result[60])), vaddq_s16(result[51], result[50])), vaddq_s16(result[55], result[54])), vaddq_s16(result[59], result[58])), vaddq_s16(result[63], result[62])), vaddq_s16(result[65], result[64])), vaddq_s16(result[69], result[68])), vaddq_s16(result[73], result[72])), vaddq_s16(result[77], result[76])), vaddq_s16(result[67], result[66])), vaddq_s16(result[71], result[70])), vaddq_s16(result[75], result[74])), vaddq_s16(result[79], result[78])), vaddq_s16(result[81], result[80])), vaddq_s16(result[85], result[84])), vaddq_s16(result[89], result[88])), vaddq_s16(result[93], result[92]));
  v7 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(v6, vaddq_s16(result[83], result[82])), vaddq_s16(result[87], result[86])), vaddq_s16(result[91], result[90])), vaddq_s16(result[95], result[94])), vaddq_s16(result[97], result[96])), vaddq_s16(result[101], result[100])), vaddq_s16(result[105], result[104])), vaddq_s16(result[109], result[108])), vaddq_s16(result[99], result[98])), vaddq_s16(result[103], result[102])), vaddq_s16(result[107], result[106])), vaddq_s16(result[111], result[110])), vaddq_s16(result[113], result[112])), vaddq_s16(result[117], result[116])), vaddq_s16(result[121], result[120])), vaddq_s16(result[125], result[124])), vaddq_s16(result[115], result[114])), vaddq_s16(result[119], result[118])), vaddq_s16(result[123], result[122])), vaddq_s16(result[127], result[126]));
  v8 = vpaddq_s32(v7, v7);
  v9 = vpaddq_s32(v8, v8);
  v10 = vqrshrn_high_n_u32(vqrshrn_n_u32(v9, 0xAuLL), v9, 0xAuLL);
  v11 = 240;
  do
  {
    *a2 = vsubq_s16(v2[-8], v10);
    a2[4] = vsubq_s16(v2[-4], v10);
    a2[8] = vsubq_s16(*v2, v10);
    a2[12] = vsubq_s16(v2[4], v10);
    a2[1] = vsubq_s16(v2[-7], v10);
    a2[5] = vsubq_s16(v2[-3], v10);
    a2[9] = vsubq_s16(v2[1], v10);
    a2[13] = vsubq_s16(v2[5], v10);
    a2[2] = vsubq_s16(v2[-6], v10);
    a2[6] = vsubq_s16(v2[-2], v10);
    a2[10] = vsubq_s16(v2[2], v10);
    a2[14] = vsubq_s16(v2[6], v10);
    a2[3] = vsubq_s16(v2[-5], v10);
    a2[7] = vsubq_s16(v2[-1], v10);
    a2[11] = vsubq_s16(v2[3], v10);
    a2[15] = vsubq_s16(v2[7], v10);
    a2 += 16;
    v12 = v11 - 240;
    v11 += 256;
    v2 += 16;
  }

  while (v12 < 0x700);
  return result;
}

double cfl_predict_lbd_4x4_neon(int8x8_t *a1, _DWORD *a2, int a3, signed int a4, int16x8_t a5, double a6, double a7, int16x8_t a8)
{
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  *a5.i8 = vdup_n_s16(a4);
  v9 = vdup_n_s16(*a2);
  v10 = vdup_n_s16(v8 << 9);
  v11 = veor_s8(*a1, *a5.i8);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a1), v10), v11, 0xFuLL), vcltz_s16(v11)), v9);
  *a2 = vqmovun_s16(a8).u32[0];
  v12 = (a2 + a3);
  *a8.i8 = a1[8];
  v13 = veor_s8(*a8.i8, *a5.i8);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v13, 0xFuLL), vcltz_s16(v13)), v9);
  *v12 = vqmovun_s16(a8).u32[0];
  v14 = (v12 + a3);
  *a8.i8 = a1[16];
  v15 = veor_s8(*a8.i8, *a5.i8);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v15, 0xFuLL), vcltz_s16(v15)), v9);
  *v14 = vqmovun_s16(a8).u32[0];
  v16 = a1[24];
  *a5.i8 = veor_s8(v16, *a5.i8);
  *a5.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(v16), v10), *a5.i8, 0xFuLL), vcltz_s16(*a5.i8)), v9);
  *a5.i8 = vqmovun_s16(a5);
  *(v14 + a3) = a5.i32[0];
  return *a5.i64;
}

double cfl_predict_lbd_4x8_neon(int8x8_t *a1, _DWORD *a2, int a3, signed int a4, int16x8_t a5, double a6, double a7, int16x8_t a8)
{
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdup_n_s16(a4);
  *a5.i8 = vdup_n_s16(*a2);
  v10 = vdup_n_s16(v8 << 9);
  v11 = veor_s8(*a1, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a1), v10), v11, 0xFuLL), vcltz_s16(v11)), *a5.i8);
  *a2 = vqmovun_s16(a8).u32[0];
  v12 = (a2 + a3);
  *a8.i8 = a1[8];
  v13 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v13, 0xFuLL), vcltz_s16(v13)), *a5.i8);
  *v12 = vqmovun_s16(a8).u32[0];
  v14 = (v12 + a3);
  *a8.i8 = a1[16];
  v15 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v15, 0xFuLL), vcltz_s16(v15)), *a5.i8);
  *v14 = vqmovun_s16(a8).u32[0];
  v16 = (v14 + a3);
  *a8.i8 = a1[24];
  v17 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v17, 0xFuLL), vcltz_s16(v17)), *a5.i8);
  *v16 = vqmovun_s16(a8).u32[0];
  v18 = (v16 + a3);
  *a8.i8 = a1[32];
  v19 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v19, 0xFuLL), vcltz_s16(v19)), *a5.i8);
  *v18 = vqmovun_s16(a8).u32[0];
  v20 = (v18 + a3);
  *a8.i8 = a1[40];
  v21 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v21, 0xFuLL), vcltz_s16(v21)), *a5.i8);
  *v20 = vqmovun_s16(a8).u32[0];
  v22 = (v20 + a3);
  *a8.i8 = a1[48];
  v23 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v23, 0xFuLL), vcltz_s16(v23)), *a5.i8);
  *v22 = vqmovun_s16(a8).u32[0];
  v24 = a1[56];
  v25 = veor_s8(v24, v9);
  *a5.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(v24), v10), v25, 0xFuLL), vcltz_s16(v25)), *a5.i8);
  *a5.i8 = vqmovun_s16(a5);
  *(v22 + a3) = a5.i32[0];
  return *a5.i64;
}

double cfl_predict_lbd_4x16_neon(int8x8_t *a1, _DWORD *a2, int a3, signed int a4, int16x8_t a5, double a6, double a7, int16x8_t a8)
{
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdup_n_s16(a4);
  *a5.i8 = vdup_n_s16(*a2);
  v10 = vdup_n_s16(v8 << 9);
  v11 = veor_s8(*a1, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a1), v10), v11, 0xFuLL), vcltz_s16(v11)), *a5.i8);
  *a2 = vqmovun_s16(a8).u32[0];
  v12 = (a2 + a3);
  *a8.i8 = a1[8];
  v13 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v13, 0xFuLL), vcltz_s16(v13)), *a5.i8);
  *v12 = vqmovun_s16(a8).u32[0];
  v14 = (v12 + a3);
  *a8.i8 = a1[16];
  v15 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v15, 0xFuLL), vcltz_s16(v15)), *a5.i8);
  *v14 = vqmovun_s16(a8).u32[0];
  v16 = (v14 + a3);
  *a8.i8 = a1[24];
  v17 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v17, 0xFuLL), vcltz_s16(v17)), *a5.i8);
  *v16 = vqmovun_s16(a8).u32[0];
  v18 = (v16 + a3);
  *a8.i8 = a1[32];
  v19 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v19, 0xFuLL), vcltz_s16(v19)), *a5.i8);
  *v18 = vqmovun_s16(a8).u32[0];
  v20 = (v18 + a3);
  *a8.i8 = a1[40];
  v21 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v21, 0xFuLL), vcltz_s16(v21)), *a5.i8);
  *v20 = vqmovun_s16(a8).u32[0];
  v22 = (v20 + a3);
  *a8.i8 = a1[48];
  v23 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v23, 0xFuLL), vcltz_s16(v23)), *a5.i8);
  *v22 = vqmovun_s16(a8).u32[0];
  v24 = (v22 + a3);
  *a8.i8 = a1[56];
  v25 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v25, 0xFuLL), vcltz_s16(v25)), *a5.i8);
  *v24 = vqmovun_s16(a8).u32[0];
  v26 = (v24 + a3);
  *a8.i8 = a1[64];
  v27 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v27, 0xFuLL), vcltz_s16(v27)), *a5.i8);
  *v26 = vqmovun_s16(a8).u32[0];
  v28 = (v26 + a3);
  *a8.i8 = a1[72];
  v29 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v29, 0xFuLL), vcltz_s16(v29)), *a5.i8);
  *v28 = vqmovun_s16(a8).u32[0];
  v30 = (v28 + a3);
  *a8.i8 = a1[80];
  v31 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v31, 0xFuLL), vcltz_s16(v31)), *a5.i8);
  *v30 = vqmovun_s16(a8).u32[0];
  v32 = (v30 + a3);
  *a8.i8 = a1[88];
  v33 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v33, 0xFuLL), vcltz_s16(v33)), *a5.i8);
  *v32 = vqmovun_s16(a8).u32[0];
  v34 = (v32 + a3);
  *a8.i8 = a1[96];
  v35 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v35, 0xFuLL), vcltz_s16(v35)), *a5.i8);
  *v34 = vqmovun_s16(a8).u32[0];
  v36 = (v34 + a3);
  *a8.i8 = a1[104];
  v37 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v37, 0xFuLL), vcltz_s16(v37)), *a5.i8);
  *v36 = vqmovun_s16(a8).u32[0];
  v38 = (v36 + a3);
  *a8.i8 = a1[112];
  v39 = veor_s8(*a8.i8, v9);
  *a8.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(*a8.i8), v10), v39, 0xFuLL), vcltz_s16(v39)), *a5.i8);
  *v38 = vqmovun_s16(a8).u32[0];
  v40 = a1[120];
  v41 = veor_s8(v40, v9);
  *a5.i8 = vadd_s16(veor_s8(vsra_n_s16(vqrdmulh_s16(vabs_s16(v40), v10), v41, 0xFuLL), vcltz_s16(v41)), *a5.i8);
  *a5.i8 = vqmovun_s16(a5);
  *(v38 + a3) = a5.i32[0];
  return *a5.i64;
}

int8x8_t cfl_predict_lbd_8x4_neon(uint64_t a1, int8x8_t *a2, int a3, signed int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = -a4;
  }

  v5 = vdupq_n_s16(a4);
  v6 = vdupq_n_s16(a2->u8[0]);
  v7 = vdupq_n_s16(v4 << 9);
  v8 = veorq_s8(*a1, v5);
  *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(*a1), v7), v8, 0xFuLL), vcltzq_s16(v8)), v6));
  v9 = (a2 + a3);
  v10 = *(a1 + 64);
  v11 = veorq_s8(v10, v5);
  *v9 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v10), v7), v11, 0xFuLL), vcltzq_s16(v11)), v6));
  v12 = (v9 + a3);
  v13 = *(a1 + 128);
  v14 = veorq_s8(v13, v5);
  *v12 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v13), v7), v14, 0xFuLL), vcltzq_s16(v14)), v6));
  v15 = *(a1 + 192);
  v16 = veorq_s8(v15, v5);
  result = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v15), v7), v16, 0xFuLL), vcltzq_s16(v16)), v6));
  *(v12 + a3) = result;
  return result;
}

int8x8_t cfl_predict_lbd_8x8_neon(uint64_t a1, int8x8_t *a2, int a3, signed int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = -a4;
  }

  v5 = vdupq_n_s16(a4);
  v6 = vdupq_n_s16(a2->u8[0]);
  v7 = vdupq_n_s16(v4 << 9);
  v8 = veorq_s8(*a1, v5);
  *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(*a1), v7), v8, 0xFuLL), vcltzq_s16(v8)), v6));
  v9 = (a2 + a3);
  v10 = *(a1 + 64);
  v11 = veorq_s8(v10, v5);
  *v9 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v10), v7), v11, 0xFuLL), vcltzq_s16(v11)), v6));
  v12 = (v9 + a3);
  v13 = *(a1 + 128);
  v14 = veorq_s8(v13, v5);
  *v12 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v13), v7), v14, 0xFuLL), vcltzq_s16(v14)), v6));
  v15 = (v12 + a3);
  v16 = *(a1 + 192);
  v17 = veorq_s8(v16, v5);
  *v15 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v16), v7), v17, 0xFuLL), vcltzq_s16(v17)), v6));
  v18 = (v15 + a3);
  v19 = *(a1 + 256);
  v20 = veorq_s8(v19, v5);
  *v18 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v19), v7), v20, 0xFuLL), vcltzq_s16(v20)), v6));
  v21 = (v18 + a3);
  v22 = *(a1 + 320);
  v23 = veorq_s8(v22, v5);
  *v21 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v22), v7), v23, 0xFuLL), vcltzq_s16(v23)), v6));
  v24 = (v21 + a3);
  v25 = *(a1 + 384);
  v26 = veorq_s8(v25, v5);
  *v24 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v25), v7), v26, 0xFuLL), vcltzq_s16(v26)), v6));
  v27 = *(a1 + 448);
  v28 = veorq_s8(v27, v5);
  result = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v27), v7), v28, 0xFuLL), vcltzq_s16(v28)), v6));
  *(v24 + a3) = result;
  return result;
}

int8x8_t cfl_predict_lbd_8x16_neon(uint64_t a1, int8x8_t *a2, int a3, signed int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = -a4;
  }

  v5 = vdupq_n_s16(a4);
  v6 = vdupq_n_s16(a2->u8[0]);
  v7 = vdupq_n_s16(v4 << 9);
  v8 = veorq_s8(*a1, v5);
  *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(*a1), v7), v8, 0xFuLL), vcltzq_s16(v8)), v6));
  v9 = (a2 + a3);
  v10 = *(a1 + 64);
  v11 = veorq_s8(v10, v5);
  *v9 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v10), v7), v11, 0xFuLL), vcltzq_s16(v11)), v6));
  v12 = (v9 + a3);
  v13 = *(a1 + 128);
  v14 = veorq_s8(v13, v5);
  *v12 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v13), v7), v14, 0xFuLL), vcltzq_s16(v14)), v6));
  v15 = (v12 + a3);
  v16 = *(a1 + 192);
  v17 = veorq_s8(v16, v5);
  *v15 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v16), v7), v17, 0xFuLL), vcltzq_s16(v17)), v6));
  v18 = (v15 + a3);
  v19 = *(a1 + 256);
  v20 = veorq_s8(v19, v5);
  *v18 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v19), v7), v20, 0xFuLL), vcltzq_s16(v20)), v6));
  v21 = (v18 + a3);
  v22 = *(a1 + 320);
  v23 = veorq_s8(v22, v5);
  *v21 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v22), v7), v23, 0xFuLL), vcltzq_s16(v23)), v6));
  v24 = (v21 + a3);
  v25 = *(a1 + 384);
  v26 = veorq_s8(v25, v5);
  *v24 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v25), v7), v26, 0xFuLL), vcltzq_s16(v26)), v6));
  v27 = (v24 + a3);
  v28 = *(a1 + 448);
  v29 = veorq_s8(v28, v5);
  *v27 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v28), v7), v29, 0xFuLL), vcltzq_s16(v29)), v6));
  v30 = (v27 + a3);
  v31 = *(a1 + 512);
  v32 = veorq_s8(v31, v5);
  *v30 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v31), v7), v32, 0xFuLL), vcltzq_s16(v32)), v6));
  v33 = (v30 + a3);
  v34 = *(a1 + 576);
  v35 = veorq_s8(v34, v5);
  *v33 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v34), v7), v35, 0xFuLL), vcltzq_s16(v35)), v6));
  v36 = (v33 + a3);
  v37 = *(a1 + 640);
  v38 = veorq_s8(v37, v5);
  *v36 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v37), v7), v38, 0xFuLL), vcltzq_s16(v38)), v6));
  v39 = (v36 + a3);
  v40 = *(a1 + 704);
  v41 = veorq_s8(v40, v5);
  *v39 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v40), v7), v41, 0xFuLL), vcltzq_s16(v41)), v6));
  v42 = (v39 + a3);
  v43 = *(a1 + 768);
  v44 = veorq_s8(v43, v5);
  *v42 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v43), v7), v44, 0xFuLL), vcltzq_s16(v44)), v6));
  v45 = (v42 + a3);
  v46 = *(a1 + 832);
  v47 = veorq_s8(v46, v5);
  *v45 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v46), v7), v47, 0xFuLL), vcltzq_s16(v47)), v6));
  v48 = (v45 + a3);
  v49 = *(a1 + 896);
  v50 = veorq_s8(v49, v5);
  *v48 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v49), v7), v50, 0xFuLL), vcltzq_s16(v50)), v6));
  v51 = *(a1 + 960);
  v52 = veorq_s8(v51, v5);
  result = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v51), v7), v52, 0xFuLL), vcltzq_s16(v52)), v6));
  *(v48 + a3) = result;
  return result;
}

uint64_t cfl_predict_lbd_8x32_neon(uint64_t result, int8x8_t *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(a2->u8[0]);
  do
  {
    v11 = *(result + v7);
    v12 = veorq_s8(v11, v9);
    a7.i32[0] = v8 << 9;
    *a2 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v11), a7, 0), v12, 0xFuLL), vcltzq_s16(v12)), v10));
    a2 = (a2 + a3);
    v13 = v7 >= 0x7C0;
    v7 += 64;
  }

  while (!v13);
  return result;
}

int16x8_t cfl_predict_lbd_16x4_neon(const __int16 *a1, char *a2, int a3, signed int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = -a4;
  }

  v5 = vdupq_n_s16(a4);
  v6 = vdupq_n_s16(*a2);
  v7 = vdupq_n_s16(v4 << 9);
  v8 = a3;
  v27 = vld2q_s16(a1);
  v9 = veorq_s8(v27.val[0], v5);
  v10 = veorq_s8(v27.val[1], v5);
  v11 = vqrdmulhq_s16(vabsq_s16(v27.val[0]), v7);
  v27.val[0] = vqrdmulhq_s16(vabsq_s16(v27.val[1]), v7);
  *v27.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v11, v9, 0xFuLL), vcltzq_s16(v9)), v6));
  *v9.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v27.val[0], v10, 0xFuLL), vcltzq_s16(v10)), v6));
  vst2_s8(a2, v27.val[1]);
  v12 = &a2[v8];
  v13 = a1 + 32;
  v28 = vld2q_s16(v13);
  v14 = veorq_s8(v28.val[0], v5);
  v15 = veorq_s8(v28.val[1], v5);
  v16 = vqrdmulhq_s16(vabsq_s16(v28.val[0]), v7);
  v28.val[0] = vqrdmulhq_s16(vabsq_s16(v28.val[1]), v7);
  *v28.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v14, 0xFuLL), vcltzq_s16(v14)), v6));
  *v14.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v28.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v6));
  vst2_s8(v12, v28.val[1]);
  v17 = &v12[v8];
  v18 = a1 + 64;
  v29 = vld2q_s16(v18);
  v19 = veorq_s8(v29.val[0], v5);
  v20 = veorq_s8(v29.val[1], v5);
  v21 = vqrdmulhq_s16(vabsq_s16(v29.val[0]), v7);
  v29.val[0] = vqrdmulhq_s16(vabsq_s16(v29.val[1]), v7);
  *v29.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v21, v19, 0xFuLL), vcltzq_s16(v19)), v6));
  *v19.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v29.val[0], v20, 0xFuLL), vcltzq_s16(v20)), v6));
  vst2_s8(v17, v29.val[1]);
  v22 = &v17[v8];
  v23 = a1 + 96;
  v30 = vld2q_s16(v23);
  v24 = veorq_s8(v30.val[0], v5);
  v25 = veorq_s8(v30.val[1], v5);
  v30.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v30.val[0]), v7), v24, 0xFuLL), vcltzq_s16(v24)), v6);
  result = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v30.val[1]), v7), v25, 0xFuLL), vcltzq_s16(v25)), v6);
  *v25.i8 = vqmovun_s16(v30.val[0]);
  *v7.i8 = vqmovun_s16(result);
  vst2_s8(v22, *(&v7 - 8));
  return result;
}

int16x8_t cfl_predict_lbd_16x8_neon(const __int16 *a1, char *a2, int a3, signed int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = -a4;
  }

  v5 = vdupq_n_s16(a4);
  v6 = vdupq_n_s16(*a2);
  v7 = vdupq_n_s16(v4 << 9);
  v8 = a3;
  v47 = vld2q_s16(a1);
  v9 = veorq_s8(v47.val[0], v5);
  v10 = veorq_s8(v47.val[1], v5);
  v11 = vqrdmulhq_s16(vabsq_s16(v47.val[0]), v7);
  v47.val[0] = vqrdmulhq_s16(vabsq_s16(v47.val[1]), v7);
  *v47.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v11, v9, 0xFuLL), vcltzq_s16(v9)), v6));
  *v9.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v47.val[0], v10, 0xFuLL), vcltzq_s16(v10)), v6));
  vst2_s8(a2, v47.val[1]);
  v12 = &a2[v8];
  v13 = a1 + 32;
  v48 = vld2q_s16(v13);
  v14 = veorq_s8(v48.val[0], v5);
  v15 = veorq_s8(v48.val[1], v5);
  v16 = vqrdmulhq_s16(vabsq_s16(v48.val[0]), v7);
  v48.val[0] = vqrdmulhq_s16(vabsq_s16(v48.val[1]), v7);
  *v48.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v14, 0xFuLL), vcltzq_s16(v14)), v6));
  *v14.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v48.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v6));
  vst2_s8(v12, v48.val[1]);
  v17 = &v12[v8];
  v18 = a1 + 64;
  v49 = vld2q_s16(v18);
  v19 = veorq_s8(v49.val[0], v5);
  v20 = veorq_s8(v49.val[1], v5);
  v21 = vqrdmulhq_s16(vabsq_s16(v49.val[0]), v7);
  v49.val[0] = vqrdmulhq_s16(vabsq_s16(v49.val[1]), v7);
  *v49.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v21, v19, 0xFuLL), vcltzq_s16(v19)), v6));
  *v19.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v49.val[0], v20, 0xFuLL), vcltzq_s16(v20)), v6));
  vst2_s8(v17, v49.val[1]);
  v22 = &v17[v8];
  v23 = a1 + 96;
  v50 = vld2q_s16(v23);
  v24 = veorq_s8(v50.val[0], v5);
  v25 = veorq_s8(v50.val[1], v5);
  v26 = vqrdmulhq_s16(vabsq_s16(v50.val[0]), v7);
  v50.val[0] = vqrdmulhq_s16(vabsq_s16(v50.val[1]), v7);
  *v50.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v26, v24, 0xFuLL), vcltzq_s16(v24)), v6));
  *v24.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v50.val[0], v25, 0xFuLL), vcltzq_s16(v25)), v6));
  vst2_s8(v22, v50.val[1]);
  v27 = &v22[v8];
  v28 = a1 + 128;
  v51 = vld2q_s16(v28);
  v29 = veorq_s8(v51.val[0], v5);
  v30 = veorq_s8(v51.val[1], v5);
  v31 = vqrdmulhq_s16(vabsq_s16(v51.val[0]), v7);
  v51.val[0] = vqrdmulhq_s16(vabsq_s16(v51.val[1]), v7);
  *v51.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v31, v29, 0xFuLL), vcltzq_s16(v29)), v6));
  *v29.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v51.val[0], v30, 0xFuLL), vcltzq_s16(v30)), v6));
  vst2_s8(v27, v51.val[1]);
  v32 = &v27[v8];
  v33 = a1 + 160;
  v52 = vld2q_s16(v33);
  v34 = veorq_s8(v52.val[0], v5);
  v35 = veorq_s8(v52.val[1], v5);
  v36 = vqrdmulhq_s16(vabsq_s16(v52.val[0]), v7);
  v52.val[0] = vqrdmulhq_s16(vabsq_s16(v52.val[1]), v7);
  *v52.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v36, v34, 0xFuLL), vcltzq_s16(v34)), v6));
  *v34.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v52.val[0], v35, 0xFuLL), vcltzq_s16(v35)), v6));
  vst2_s8(v32, v52.val[1]);
  v37 = &v32[v8];
  v38 = a1 + 192;
  v53 = vld2q_s16(v38);
  v39 = veorq_s8(v53.val[0], v5);
  v40 = veorq_s8(v53.val[1], v5);
  v41 = vqrdmulhq_s16(vabsq_s16(v53.val[0]), v7);
  v53.val[0] = vqrdmulhq_s16(vabsq_s16(v53.val[1]), v7);
  *v53.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v41, v39, 0xFuLL), vcltzq_s16(v39)), v6));
  *v39.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v53.val[0], v40, 0xFuLL), vcltzq_s16(v40)), v6));
  vst2_s8(v37, v53.val[1]);
  v42 = &v37[v8];
  v43 = a1 + 224;
  v54 = vld2q_s16(v43);
  v44 = veorq_s8(v54.val[0], v5);
  v45 = veorq_s8(v54.val[1], v5);
  v54.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v54.val[0]), v7), v44, 0xFuLL), vcltzq_s16(v44)), v6);
  result = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v54.val[1]), v7), v45, 0xFuLL), vcltzq_s16(v45)), v6);
  *v45.i8 = vqmovun_s16(v54.val[0]);
  *v7.i8 = vqmovun_s16(result);
  vst2_s8(v42, *(&v7 - 8));
  return result;
}

uint64_t cfl_predict_lbd_16x16_neon(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v16 = vld2q_s16(v11);
    v12 = veorq_s8(v16.val[0], v9);
    v13 = veorq_s8(v16.val[1], v9);
    v14 = vqrdmulhq_lane_s16(vabsq_s16(v16.val[0]), a7, 0);
    v16.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v16.val[1]), a7, 0);
    *v16.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v14, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16.val[0], v13, 0xFuLL), vcltzq_s16(v13)), v10));
    vst2_s8(a2, v16.val[1]);
    a2 += a3;
    v15 = v7 >= 0x3C0;
    v7 += 64;
  }

  while (!v15);
  return result;
}

uint64_t cfl_predict_lbd_16x32_neon(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v16 = vld2q_s16(v11);
    v12 = veorq_s8(v16.val[0], v9);
    v13 = veorq_s8(v16.val[1], v9);
    v14 = vqrdmulhq_lane_s16(vabsq_s16(v16.val[0]), a7, 0);
    v16.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v16.val[1]), a7, 0);
    *v16.val[1].i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v14, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16.val[0], v13, 0xFuLL), vcltzq_s16(v13)), v10));
    vst2_s8(a2, v16.val[1]);
    a2 += a3;
    v15 = v7 >= 0x7C0;
    v7 += 64;
  }

  while (!v15);
  return result;
}

int16x8_t cfl_predict_lbd_32x8_neon(const __int16 *a1, char *a2, int a3, signed int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = -a4;
  }

  v5 = v4 << 9;
  v6 = vdupq_n_s16(a4);
  v7 = vdupq_n_s16(*a2);
  v8 = a1;
  v71 = vld4q_s16(v8);
  v8 += 32;
  v9 = a3;
  v10 = vdupq_n_s16(v5);
  v11 = veorq_s8(v71.val[0], v6);
  v12 = veorq_s8(v71.val[1], v6);
  v13 = veorq_s8(v71.val[2], v6);
  v14 = veorq_s8(v71.val[3], v6);
  v15 = vqrdmulhq_s16(vabsq_s16(v71.val[0]), v10);
  v16 = vqrdmulhq_s16(vabsq_s16(v71.val[2]), v10);
  v71.val[0] = vqrdmulhq_s16(vabsq_s16(v71.val[3]), v10);
  v71.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v71.val[1]), v10), v12, 0xFuLL), vcltzq_s16(v12)), v7);
  v71.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v16, v13, 0xFuLL), vcltzq_s16(v13)), v7);
  v71.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v71.val[0], v14, 0xFuLL), vcltzq_s16(v14)), v7);
  *v12.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v15, v11, 0xFuLL), vcltzq_s16(v11)), v7));
  *v13.i8 = vqmovun_s16(v71.val[2]);
  *v14.i8 = vqmovun_s16(v71.val[3]);
  *v15.i8 = vqmovun_s16(v71.val[0]);
  vst4_s8(a2, *v12.i8);
  v17 = &a2[v9];
  v72 = vld4q_s16(v8);
  v18 = a1 + 64;
  v19 = veorq_s8(v72.val[0], v6);
  v20 = veorq_s8(v72.val[1], v6);
  v21 = veorq_s8(v72.val[2], v6);
  v22 = veorq_s8(v72.val[3], v6);
  v23 = vqrdmulhq_s16(vabsq_s16(v72.val[0]), v10);
  v24 = vqrdmulhq_s16(vabsq_s16(v72.val[2]), v10);
  v72.val[0] = vqrdmulhq_s16(vabsq_s16(v72.val[3]), v10);
  v72.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v72.val[1]), v10), v20, 0xFuLL), vcltzq_s16(v20)), v7);
  v72.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v24, v21, 0xFuLL), vcltzq_s16(v21)), v7);
  v72.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v72.val[0], v22, 0xFuLL), vcltzq_s16(v22)), v7);
  *v20.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v23, v19, 0xFuLL), vcltzq_s16(v19)), v7));
  *v21.i8 = vqmovun_s16(v72.val[2]);
  *v22.i8 = vqmovun_s16(v72.val[3]);
  *v23.i8 = vqmovun_s16(v72.val[0]);
  vst4_s8(v17, *v20.i8);
  v25 = &v17[v9];
  v73 = vld4q_s16(v18);
  v26 = a1 + 96;
  v27 = veorq_s8(v73.val[0], v6);
  v28 = veorq_s8(v73.val[1], v6);
  v29 = veorq_s8(v73.val[2], v6);
  v30 = veorq_s8(v73.val[3], v6);
  v31 = vqrdmulhq_s16(vabsq_s16(v73.val[0]), v10);
  v32 = vqrdmulhq_s16(vabsq_s16(v73.val[2]), v10);
  v73.val[0] = vqrdmulhq_s16(vabsq_s16(v73.val[3]), v10);
  v73.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v73.val[1]), v10), v28, 0xFuLL), vcltzq_s16(v28)), v7);
  v73.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v32, v29, 0xFuLL), vcltzq_s16(v29)), v7);
  v73.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v73.val[0], v30, 0xFuLL), vcltzq_s16(v30)), v7);
  *v28.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v31, v27, 0xFuLL), vcltzq_s16(v27)), v7));
  *v29.i8 = vqmovun_s16(v73.val[2]);
  *v30.i8 = vqmovun_s16(v73.val[3]);
  *v31.i8 = vqmovun_s16(v73.val[0]);
  vst4_s8(v25, *v28.i8);
  v33 = &v25[v9];
  v74 = vld4q_s16(v26);
  v34 = a1 + 128;
  v35 = veorq_s8(v74.val[0], v6);
  v36 = veorq_s8(v74.val[1], v6);
  v37 = veorq_s8(v74.val[2], v6);
  v38 = veorq_s8(v74.val[3], v6);
  v39 = vqrdmulhq_s16(vabsq_s16(v74.val[0]), v10);
  v40 = vqrdmulhq_s16(vabsq_s16(v74.val[2]), v10);
  v74.val[0] = vqrdmulhq_s16(vabsq_s16(v74.val[3]), v10);
  v74.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v74.val[1]), v10), v36, 0xFuLL), vcltzq_s16(v36)), v7);
  v74.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v40, v37, 0xFuLL), vcltzq_s16(v37)), v7);
  v74.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v74.val[0], v38, 0xFuLL), vcltzq_s16(v38)), v7);
  *v36.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v39, v35, 0xFuLL), vcltzq_s16(v35)), v7));
  *v37.i8 = vqmovun_s16(v74.val[2]);
  *v38.i8 = vqmovun_s16(v74.val[3]);
  *v39.i8 = vqmovun_s16(v74.val[0]);
  vst4_s8(v33, *v36.i8);
  v41 = &v33[v9];
  v75 = vld4q_s16(v34);
  v42 = a1 + 160;
  v43 = veorq_s8(v75.val[0], v6);
  v44 = veorq_s8(v75.val[1], v6);
  v45 = veorq_s8(v75.val[2], v6);
  v46 = veorq_s8(v75.val[3], v6);
  v47 = vqrdmulhq_s16(vabsq_s16(v75.val[0]), v10);
  v48 = vqrdmulhq_s16(vabsq_s16(v75.val[2]), v10);
  v75.val[0] = vqrdmulhq_s16(vabsq_s16(v75.val[3]), v10);
  v75.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v75.val[1]), v10), v44, 0xFuLL), vcltzq_s16(v44)), v7);
  v75.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v48, v45, 0xFuLL), vcltzq_s16(v45)), v7);
  v75.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v75.val[0], v46, 0xFuLL), vcltzq_s16(v46)), v7);
  *v44.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v47, v43, 0xFuLL), vcltzq_s16(v43)), v7));
  *v45.i8 = vqmovun_s16(v75.val[2]);
  *v46.i8 = vqmovun_s16(v75.val[3]);
  *v47.i8 = vqmovun_s16(v75.val[0]);
  vst4_s8(v41, *v44.i8);
  v49 = &v41[v9];
  v76 = vld4q_s16(v42);
  v50 = a1 + 192;
  v51 = veorq_s8(v76.val[0], v6);
  v52 = veorq_s8(v76.val[1], v6);
  v53 = veorq_s8(v76.val[2], v6);
  v54 = veorq_s8(v76.val[3], v6);
  v55 = vqrdmulhq_s16(vabsq_s16(v76.val[0]), v10);
  v56 = vqrdmulhq_s16(vabsq_s16(v76.val[2]), v10);
  v76.val[0] = vqrdmulhq_s16(vabsq_s16(v76.val[3]), v10);
  v76.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v76.val[1]), v10), v52, 0xFuLL), vcltzq_s16(v52)), v7);
  v76.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v56, v53, 0xFuLL), vcltzq_s16(v53)), v7);
  v76.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v76.val[0], v54, 0xFuLL), vcltzq_s16(v54)), v7);
  *v52.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v55, v51, 0xFuLL), vcltzq_s16(v51)), v7));
  *v53.i8 = vqmovun_s16(v76.val[2]);
  *v54.i8 = vqmovun_s16(v76.val[3]);
  *v55.i8 = vqmovun_s16(v76.val[0]);
  vst4_s8(v49, *v52.i8);
  v57 = &v49[v9];
  v77 = vld4q_s16(v50);
  v58 = a1 + 224;
  v59 = veorq_s8(v77.val[0], v6);
  v60 = veorq_s8(v77.val[1], v6);
  v61 = veorq_s8(v77.val[2], v6);
  v62 = veorq_s8(v77.val[3], v6);
  v63 = vqrdmulhq_s16(vabsq_s16(v77.val[0]), v10);
  v64 = vqrdmulhq_s16(vabsq_s16(v77.val[2]), v10);
  v77.val[0] = vqrdmulhq_s16(vabsq_s16(v77.val[3]), v10);
  v77.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v77.val[1]), v10), v60, 0xFuLL), vcltzq_s16(v60)), v7);
  v77.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v64, v61, 0xFuLL), vcltzq_s16(v61)), v7);
  v77.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v77.val[0], v62, 0xFuLL), vcltzq_s16(v62)), v7);
  *v60.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v63, v59, 0xFuLL), vcltzq_s16(v59)), v7));
  *v61.i8 = vqmovun_s16(v77.val[2]);
  *v62.i8 = vqmovun_s16(v77.val[3]);
  *v63.i8 = vqmovun_s16(v77.val[0]);
  vst4_s8(v57, *v60.i8);
  v65 = &v57[v9];
  v78 = vld4q_s16(v58);
  v66 = veorq_s8(v78.val[0], v6);
  v67 = veorq_s8(v78.val[1], v6);
  v68 = veorq_s8(v78.val[2], v6);
  v69 = veorq_s8(v78.val[3], v6);
  v78.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v78.val[0]), v10), v66, 0xFuLL), vcltzq_s16(v66)), v7);
  v78.val[1] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v78.val[1]), v10), v67, 0xFuLL), vcltzq_s16(v67)), v7);
  v78.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v78.val[2]), v10), v68, 0xFuLL), vcltzq_s16(v68)), v7);
  result = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_s16(vabsq_s16(v78.val[3]), v10), v69, 0xFuLL), vcltzq_s16(v69)), v7);
  *v67.i8 = vqmovun_s16(v78.val[0]);
  *v68.i8 = vqmovun_s16(v78.val[1]);
  *v62.i8 = vqmovun_s16(v78.val[2]);
  *v63.i8 = vqmovun_s16(result);
  vst4_s8(v65, *(&v62 - 1));
  return result;
}

uint64_t cfl_predict_lbd_32x16_neon(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v19 = vld4q_s16(v11);
    v12 = veorq_s8(v19.val[0], v9);
    v13 = veorq_s8(v19.val[1], v9);
    v14 = veorq_s8(v19.val[2], v9);
    v15 = veorq_s8(v19.val[3], v9);
    v16 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[0]), a7, 0);
    v17 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[2]), a7, 0);
    v19.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v19.val[3]), a7, 0);
    v19.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v19.val[1]), a7, 0), v13, 0xFuLL), vcltzq_s16(v13)), v10);
    v19.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v17, v14, 0xFuLL), vcltzq_s16(v14)), v10);
    v19.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v19.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v10);
    *v13.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v14.i8 = vqmovun_s16(v19.val[2]);
    *v15.i8 = vqmovun_s16(v19.val[3]);
    *v16.i8 = vqmovun_s16(v19.val[0]);
    vst4_s8(a2, *v13.i8);
    a2 += a3;
    v18 = v7 >= 0x3C0;
    v7 += 64;
  }

  while (!v18);
  return result;
}

uint64_t cfl_predict_lbd_32x32_neon(uint64_t result, char *a2, int a3, signed int a4, double a5, double a6, int16x4_t a7)
{
  v7 = 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  v9 = vdupq_n_s16(a4);
  v10 = vdupq_n_s16(*a2);
  a7.i32[0] = v8 << 9;
  do
  {
    v11 = (result + v7);
    v19 = vld4q_s16(v11);
    v12 = veorq_s8(v19.val[0], v9);
    v13 = veorq_s8(v19.val[1], v9);
    v14 = veorq_s8(v19.val[2], v9);
    v15 = veorq_s8(v19.val[3], v9);
    v16 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[0]), a7, 0);
    v17 = vqrdmulhq_lane_s16(vabsq_s16(v19.val[2]), a7, 0);
    v19.val[0] = vqrdmulhq_lane_s16(vabsq_s16(v19.val[3]), a7, 0);
    v19.val[2] = vaddq_s16(veorq_s8(vsraq_n_s16(vqrdmulhq_lane_s16(vabsq_s16(v19.val[1]), a7, 0), v13, 0xFuLL), vcltzq_s16(v13)), v10);
    v19.val[3] = vaddq_s16(veorq_s8(vsraq_n_s16(v17, v14, 0xFuLL), vcltzq_s16(v14)), v10);
    v19.val[0] = vaddq_s16(veorq_s8(vsraq_n_s16(v19.val[0], v15, 0xFuLL), vcltzq_s16(v15)), v10);
    *v13.i8 = vqmovun_s16(vaddq_s16(veorq_s8(vsraq_n_s16(v16, v12, 0xFuLL), vcltzq_s16(v12)), v10));
    *v14.i8 = vqmovun_s16(v19.val[2]);
    *v15.i8 = vqmovun_s16(v19.val[3]);
    *v16.i8 = vqmovun_s16(v19.val[0]);
    vst4_s8(a2, *v13.i8);
    a2 += a3;
    v18 = v7 >= 0x7C0;
    v7 += 64;
  }

  while (!v18);
  return result;
}

uint64_t av1_dist_wtd_convolve_2d_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v553[4097] = *MEMORY[0x277D85DE8];
  v20 = *(v19 + 8);
  v21 = (*v19 + 2 * (a11 & 0xFu) * v20);
  if (v20 == 12)
  {
    v22 = 12;
  }

  else if (v21->u16[7] | v21->u16[0])
  {
    v22 = 8;
  }

  else if (v21->u16[6] | v21->u16[1])
  {
    v22 = 6;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= 6)
  {
    v23 = 6;
  }

  else
  {
    v23 = v22;
  }

  v24 = v17 + v23 - 1;
  v25 = *(v18 + 8);
  _X10 = (result - (((v23 >> 1) - 1) * v13) - (v25 >> 1) + 1);
  v27 = *v18 + 2 * (a9 & 0xF) * v25;
  v28 = *v21;
  if (v16 == 4)
  {
    v29 = vshr_n_s16(*(v27 + 4), 1uLL);
    *v30.i8 = vdup_lane_s16(v29, 0);
    *v31.i8 = vdup_lane_s16(v29, 1);
    v32 = vdup_lane_s16(v29, 2);
    v33 = vdup_lane_s16(v29, 3);
    v34 = (_X10 + 2);
    _X13 = v546;
    v36 = vdup_n_s16(0x2002u);
    do
    {
      v37 = vmovl_u8(*v34);
      __asm { PRFM            #0, [X13] }

      *_X13 = vshr_n_s16(vadd_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v37, v37, 2uLL), *v31.i8), *v37.i8, *v30.i8), *&vextq_s8(v37, v37, 4uLL), v32), *&vextq_s8(v37, v37, 6uLL), v33), v36), 2uLL);
      v34 = (v34 + v13);
      _X13 += 32;
      --v24;
    }

    while (v24);
  }

  else
  {
    v43 = vshrq_n_s16(*v27, 1uLL);
    v44 = v13;
    v45 = 8 * v13;
    v46 = 2 * v13;
    v47 = 3 * v13;
    v48 = 4 * v13;
    result = 5 * v13;
    v49 = 6 * v13;
    v30 = vdupq_lane_s16(*v43.i8, 0);
    v31 = vdupq_lane_s16(*v43.i8, 1);
    v50 = vdupq_lane_s16(*v43.i8, 2);
    v51 = vdupq_lane_s16(*v43.i8, 3);
    v52 = vdupq_laneq_s16(v43, 4);
    v53 = vdupq_laneq_s16(v43, 5);
    v54 = vdupq_laneq_s16(v43, 6);
    v55 = vdupq_laneq_s16(v43, 7);
    _X13 = v546;
    do
    {
      __asm { PRFM            #0, [X10] }

      _X20 = _X10 + v44;
      __asm { PRFM            #0, [X20] }

      _X21 = _X10 + v46;
      __asm { PRFM            #0, [X21] }

      _X21 = _X10 + v47;
      __asm { PRFM            #0, [X21] }

      _X21 = _X10 + v48;
      __asm { PRFM            #0, [X21] }

      _X21 = _X10 + result;
      __asm { PRFM            #0, [X21] }

      _X21 = _X10 + v49;
      __asm { PRFM            #0, [X21] }

      _X21 = _X10 + v45 - v44;
      __asm { PRFM            #0, [X21] }

      *v72.i8 = *_X10;
      *v73.i8 = *(_X10 + v44);
      v74 = (_X10 + v44 + v44);
      v75.i64[0] = *v74;
      v76 = (v74 + v44);
      v77.i64[0] = *v76;
      v78 = (v76 + v44);
      v79 = *v78;
      v80 = (v78 + v44);
      v81 = *v80;
      v82 = (v80 + v44);
      v72.i64[1] = v79;
      v73.i64[1] = v81;
      v83 = vtrn1q_s8(v72, v73);
      v75.i64[1] = *v82;
      v77.i64[1] = *(v82 + v44);
      v84 = vtrn2q_s8(v72, v73);
      v85 = vtrn1q_s8(v75, v77);
      v86 = vtrn2q_s8(v75, v77);
      v87 = vtrn1q_s16(v83, v85);
      v88 = vtrn2q_s16(v83, v85);
      v89 = vtrn1q_s16(v84, v86);
      v90 = vtrn2q_s16(v84, v86);
      v91 = vuzp1q_s32(v87, v89);
      v92 = vuzp2q_s32(v87, v89);
      v93 = vuzp1q_s32(v88, v90);
      v94 = vmovl_u8(*v91.i8);
      v95 = vmovl_high_u8(v91);
      v96 = vmovl_u8(*v93.i8);
      v97 = vmovl_high_u8(v93);
      v98 = vmovl_u8(*v92.i8);
      v99 = vmovl_high_u8(v92);
      v100 = vmovl_u8(vzip2_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL)));
      v101 = (_X10 + 7);
      __asm
      {
        PRFM            #0, [X13]
        PRFM            #0, [X13,#0x100]
        PRFM            #0, [X13,#0x200]
        PRFM            #0, [X13,#0x300]
        PRFM            #0, [X13,#0x400]
        PRFM            #0, [X13,#0x500]
        PRFM            #0, [X13,#0x600]
        PRFM            #0, [X13,#0x700]
      }

      v110 = v16 + 8;
      v111 = _X13;
      do
      {
        v112.i64[0] = *v101;
        v113.i64[0] = *(v101 + v44);
        v114 = (v101 + v44 + v44);
        v115.i64[0] = *v114;
        v116 = (v114 + v44);
        v117.i64[0] = *v116;
        v118 = *(v116 + v44);
        v119 = (v116 + v44 + v44);
        v120 = *v119;
        v121 = (v119 + v44);
        v112.i64[1] = v118;
        v113.i64[1] = v120;
        v122 = vtrn1q_s8(v112, v113);
        v123 = vtrn2q_s8(v112, v113);
        v115.i64[1] = *v121;
        v117.i64[1] = *(v121 + v44);
        v124 = vtrn1q_s8(v115, v117);
        v125 = vtrn2q_s8(v115, v117);
        v126 = vtrn1q_s16(v122, v124);
        v127 = vtrn2q_s16(v122, v124);
        v128 = vtrn1q_s16(v123, v125);
        v129 = vtrn2q_s16(v123, v125);
        v130 = vuzp1q_s32(v126, v128);
        v131 = vuzp2q_s32(v126, v128);
        v132 = vuzp1q_s32(v127, v129);
        v133 = vuzp2q_s32(v127, v129);
        v134 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v99, v53), v100, v54), v98, v52), v97, v51), v96, v50), v95, v31), v94, v30);
        v135 = vmovl_u8(*v130.i8);
        v136 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v99, v52), v100, v53), v98, v51), v97, v50), v96, v31), v95, v30);
        v94 = vmovl_high_u8(v130);
        v137 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v99, v51), v100, v52), v98, v50), v97, v31), v96, v30);
        v95 = vmovl_u8(*v132.i8);
        v96 = vmovl_high_u8(v132);
        v138 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v99, v50), v100, v51), v98, v31), v97, v30);
        v97 = vmovl_u8(*v131.i8);
        v139 = vmlaq_s16(vmlaq_s16(vmulq_s16(v99, v31), v100, v50), v98, v30);
        v98 = vmovl_high_u8(v131);
        v140 = vmulq_s16(v99, v30);
        v99 = vmovl_u8(*v133.i8);
        v141 = vdupq_n_s16(0x2002u);
        v142 = vmlaq_s16(v140, v100, v31);
        v143 = vmlaq_s16(vmulq_s16(v31, v135), v100, v30);
        v100 = vmovl_high_u8(v133);
        v144 = vshrq_n_s16(vaddq_s16(vmlaq_s16(v134, v55, v135), v141), 2uLL);
        v145 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(v136, v54, v135), v55, v94), v141), 2uLL);
        v146 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v137, v53, v135), v54, v94), v55, v95), v141), 2uLL);
        v147 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v138, v52, v135), v53, v94), v54, v95), v55, v96), v141), 2uLL);
        v148 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v139, v51, v135), v52, v94), v53, v95), v54, v96), v55, v97), v141), 2uLL);
        v149 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v142, v50, v135), v51, v94), v52, v95), v53, v96), v54, v97), v55, v98), v141), 2uLL);
        v150 = vmlaq_s16(vmulq_s16(v31, v94), v30, v135);
        v151 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v143, v50, v94), v51, v95), v52, v96), v53, v97), v54, v98), v55, v99), v141), 2uLL);
        v152 = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v150, v50, v95), v51, v96), v52, v97), v53, v98), v54, v99), v55, v100), v141), 2uLL);
        v153 = vtrn1q_s16(v144, v145);
        v154 = vtrn2q_s16(v144, v145);
        v155 = vtrn1q_s16(v146, v147);
        v156 = vtrn2q_s16(v146, v147);
        v157 = vtrn1q_s16(v148, v149);
        v158 = vtrn2q_s16(v148, v149);
        v159 = vtrn1q_s16(v151, v152);
        v160 = vtrn2q_s16(v151, v152);
        v161 = vtrn1q_s32(v153, v155);
        v162 = vtrn2q_s32(v153, v155);
        v163 = vtrn1q_s32(v154, v156);
        v164 = vtrn2q_s32(v154, v156);
        v165 = vtrn1q_s32(v157, v159);
        v166 = vtrn2q_s32(v157, v159);
        v167 = vtrn1q_s32(v158, v160);
        v168 = vzip2q_s64(v161, v165);
        v169 = vzip2q_s64(v163, v167);
        v161.i64[1] = v165.i64[0];
        v163.i64[1] = v167.i64[0];
        v170 = vzip2q_s64(v162, v166);
        v162.i64[1] = v166.i64[0];
        v171 = vtrn2q_s32(v158, v160);
        v172 = vzip2q_s64(v164, v171);
        v164.i64[1] = v171.i64[0];
        *v111 = v161;
        v111[16] = v163;
        v111[32] = v162;
        ++v101;
        v110 -= 8;
        v111[48] = v164;
        v111[64] = v168;
        v111[80] = v169;
        v111[96] = v170;
        v111[112] = v172;
        ++v111;
      }

      while (v110 > 8);
      _X10 = (_X10 + v45);
      _X13 += 256;
      v173 = v24 - 8;
      v174 = v24 <= 16;
      v24 -= 8;
    }

    while (!v174);
    v175 = vdupq_n_s16(0x2002u);
    do
    {
      v176 = vmovl_u8(*_X10);
      __asm { PRFM            #0, [X13] }

      v178 = v16 + 8;
      v179 = _X13;
      v180 = _X10;
      do
      {
        v181 = v180[1];
        ++v180;
        v182 = vmovl_u8(v181);
        *v179++ = vshrq_n_s16(vaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(vextq_s8(v176, v182, 2uLL), v31), v176, v30), vextq_s8(v176, v182, 4uLL), v50), vextq_s8(v176, v182, 6uLL), v51), vextq_s8(v176, v182, 8uLL), v52), vextq_s8(v176, v182, 0xAuLL), v53), vextq_s8(v176, v182, 0xCuLL), v54), vextq_s8(v176, v182, 0xEuLL), v55), v175), 2uLL);
        v178 -= 8;
        v176 = v182;
      }

      while (v178 > 8);
      _X10 = (_X10 + v44);
      _X13 += 32;
      --v173;
    }

    while (v173);
  }

  v183 = *a12;
  if (v22 > 6)
  {
    if (v183)
    {
      if (*(a12 + 36))
      {
        return dist_wtd_convolve_2d_vert_8tap_dist_wtd_avg_neon(v546, v14, v15, a12, v17, v16, v28, *v30.i8, *v31.i8);
      }

      else
      {
        v217 = *(a12 + 8);
        v218 = *(a12 + 16);
        if (v16 == 4)
        {
          v219 = v546[0];
          v220 = v547;
          v221 = v548;
          v222 = v549;
          v223 = v553;
          v224 = v550;
          v225 = v551[0];
          v226.i64[0] = 0xE800E800E800E800;
          v226.i64[1] = 0xE800E800E800E800;
          v227 = v552;
          do
          {
            v228.i64[0] = 0x8000000080000;
            v228.i64[1] = 0x8000000080000;
            v229 = vmlal_lane_s16(v228, v219, *v28.i8, 0);
            v219 = v224;
            v230 = vmlal_lane_s16(v229, v220, *v28.i8, 1);
            v231.i64[0] = 0x8000000080000;
            v231.i64[1] = 0x8000000080000;
            v232 = vmlal_lane_s16(v231, v220, *v28.i8, 0);
            v220 = v225;
            v233.i64[0] = 0x8000000080000;
            v233.i64[1] = 0x8000000080000;
            v234 = vmlal_lane_s16(vmlal_lane_s16(v230, v221, *v28.i8, 2), v222, *v28.i8, 3);
            v235 = vmlal_lane_s16(vmlal_lane_s16(v232, v221, *v28.i8, 1), v222, *v28.i8, 2);
            v236 = vmlal_lane_s16(vmlal_lane_s16(v233, v221, *v28.i8, 0), v222, *v28.i8, 1);
            v237.i64[0] = 0x8000000080000;
            v237.i64[1] = 0x8000000080000;
            v238 = vmlal_lane_s16(v237, v222, *v28.i8, 0);
            v222 = *v223;
            v239 = vmlal_laneq_s16(v234, v224, v28, 4);
            v240 = vmlal_lane_s16(v235, v224, *v28.i8, 3);
            v241 = vmlal_lane_s16(v236, v224, *v28.i8, 2);
            v242 = vmlal_lane_s16(v238, v224, *v28.i8, 1);
            v224 = v223[32];
            v243 = vmlal_laneq_s16(v239, v225, v28, 5);
            v244 = vmlal_laneq_s16(v240, v225, v28, 4);
            v245 = vmlal_lane_s16(v241, v225, *v28.i8, 3);
            v246 = vmlal_lane_s16(v242, v225, *v28.i8, 2);
            v225 = v223[64];
            v247 = vmlal_laneq_s16(v243, v227, v28, 6);
            v248 = vmlal_laneq_s16(v244, v227, v28, 5);
            v249 = vmlal_laneq_s16(v245, v227, v28, 4);
            v250 = vmlal_lane_s16(v246, v227, *v28.i8, 3);
            v221 = v227;
            v227 = v223[96];
            v251.i64[0] = *v217;
            v252 = (v217 + 2 * v218 + 2 * v218);
            v253.i64[0] = *v252;
            v251.i64[1] = *(v217 + 2 * v218);
            v254 = vhaddq_u16(v251, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v247, *v223, v28, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v248, *v223, v28, 6), v224, v28, 7), 7uLL));
            v253.i64[1] = *(v252 + 2 * v218);
            v255 = vaddq_s16(vhaddq_u16(v253, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v249, *v223, v28, 5), v224, v28, 6), v225, v28, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v250, *v223, v28, 4), v224, v28, 5), v225, v28, 6), v227, v28, 7), 7uLL)), v226);
            *v254.i8 = vqrshrun_n_s16(vaddq_s16(v254, v226), 4uLL);
            *v14 = v254.i32[0];
            *(v14 + v15) = v254.i32[1];
            *v254.i8 = vqrshrun_n_s16(v255, 4uLL);
            *(v14 + 2 * v15) = v254.i32[0];
            *(v14 + 2 * v15 + v15) = v254.i32[1];
            v14 += v15;
            v223 += 128;
            v217 += v218;
            v17 -= 4;
          }

          while (v17);
        }

        else
        {
          v384 = 0;
          v385 = 4 * v15;
          v386 = v546;
          v387 = 8 * v218;
          v388 = v217 + 6 * v218;
          v389 = v14 + 3 * v15;
          v390 = v14 + 2 * v15;
          v391 = v14 + v15;
          v392.i64[0] = 0xE800E800E800E800;
          v392.i64[1] = 0xE800E800E800E800;
          result = v217 + 4 * v218;
          v393 = v217 + 2 * v218;
          do
          {
            v394 = 0;
            v395 = *v386->i8;
            v396 = *v386[32].i8;
            v397 = *v386[64].i8;
            v398 = *v386[96].i8;
            v399 = v217;
            v400 = *v386[128].i8;
            v401 = v393;
            v402 = result;
            v403 = *v386[160].i8;
            v404 = v388;
            v405 = v553;
            v406 = v17;
            v407 = *v386[192].i8;
            do
            {
              v408.i64[0] = 0x8000000080000;
              v408.i64[1] = 0x8000000080000;
              v409 = vmlal_lane_s16(v408, *v395.i8, *v28.i8, 0);
              v410.i64[0] = 0x8000000080000;
              v410.i64[1] = 0x8000000080000;
              v411 = vmlal_high_lane_s16(v410, v395, *v28.i8, 0);
              v395 = v400;
              v412.i64[0] = 0x8000000080000;
              v412.i64[1] = 0x8000000080000;
              v413.i64[0] = 0x8000000080000;
              v413.i64[1] = 0x8000000080000;
              v414.i64[0] = 0x8000000080000;
              v414.i64[1] = 0x8000000080000;
              v415.i64[0] = 0x8000000080000;
              v415.i64[1] = 0x8000000080000;
              v416 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v412, *v396.i8, *v28.i8, 0), *v397.i8, *v28.i8, 1), *v398.i8, *v28.i8, 2);
              v417 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v413, v396, *v28.i8, 0), v397, *v28.i8, 1), v398, *v28.i8, 2);
              v418 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v409, *v396.i8, *v28.i8, 1), *v397.i8, *v28.i8, 2), *v398.i8, *v28.i8, 3);
              v419 = vmlal_lane_s16(vmlal_lane_s16(v414, *v397.i8, *v28.i8, 0), *v398.i8, *v28.i8, 1);
              v420 = vmlal_high_lane_s16(vmlal_high_lane_s16(v415, v397, *v28.i8, 0), v398, *v28.i8, 1);
              v421.i64[0] = 0x8000000080000;
              v421.i64[1] = 0x8000000080000;
              v422 = vmlal_lane_s16(v421, *v398.i8, *v28.i8, 0);
              v423.i64[0] = 0x8000000080000;
              v423.i64[1] = 0x8000000080000;
              v424 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v411, v396, *v28.i8, 1), v397, *v28.i8, 2), v398, *v28.i8, 3);
              v425 = vmlal_high_lane_s16(v423, v398, *v28.i8, 0);
              v398 = *&v405[v384];
              v426 = vmlal_laneq_s16(v418, *v400.i8, v28, 4);
              v427 = vmlal_lane_s16(v416, *v400.i8, *v28.i8, 3);
              v428 = vmlal_high_lane_s16(v417, v400, *v28.i8, 3);
              v429 = vmlal_high_laneq_s16(v424, v400, v28, 4);
              v430 = vmlal_lane_s16(v419, *v400.i8, *v28.i8, 2);
              v431 = vmlal_high_lane_s16(v420, v400, *v28.i8, 2);
              v432 = vmlal_lane_s16(v422, *v400.i8, *v28.i8, 1);
              v433 = vmlal_high_lane_s16(v425, v400, *v28.i8, 1);
              v400 = *&v405[v384 + 32];
              v434 = vmlal_laneq_s16(v426, *v403.i8, v28, 5);
              v435 = vmlal_laneq_s16(v427, *v403.i8, v28, 4);
              v436 = vmlal_high_laneq_s16(v428, v403, v28, 4);
              v437 = vmlal_lane_s16(v430, *v403.i8, *v28.i8, 3);
              v438 = vmlal_high_lane_s16(v431, v403, *v28.i8, 3);
              v439 = vmlal_high_laneq_s16(v429, v403, v28, 5);
              v440 = vmlal_lane_s16(v432, *v403.i8, *v28.i8, 2);
              v441 = vmlal_high_lane_s16(v433, v403, *v28.i8, 2);
              v396 = v403;
              v403 = *&v405[v384 + 64];
              v442 = vmlal_laneq_s16(v435, *v407.i8, v28, 5);
              v443 = vmlal_laneq_s16(v434, *v407.i8, v28, 6);
              v444 = vmlal_high_laneq_s16(v436, v407, v28, 5);
              v445 = vmlal_laneq_s16(v437, *v407.i8, v28, 4);
              v446 = vmlal_high_laneq_s16(v438, v407, v28, 4);
              v447 = vmlal_lane_s16(v440, *v407.i8, *v28.i8, 3);
              v448 = vmlal_high_lane_s16(v441, v407, *v28.i8, 3);
              v449 = vmlal_high_laneq_s16(v439, v407, v28, 6);
              v397 = v407;
              v407 = *&v405[v384 + 96];
              v450 = vhaddq_u16(*&v399[v384], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v443, *v398.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(v449, v398, v28, 7), 7uLL));
              v451 = vhaddq_u16(*&v401[v384 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v442, *v398.i8, v28, 6), *v400.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v444, v398, v28, 6), v400, v28, 7), 7uLL));
              v452 = vhaddq_u16(*&v404[v384 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v447, *v398.i8, v28, 4), *v400.i8, v28, 5), *v403.i8, v28, 6), *v407.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v448, v398, v28, 4), v400, v28, 5), v403, v28, 6), v407, v28, 7), 7uLL));
              *v442.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v402 + v384 * 8), vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v445, *v398.i8, v28, 5), *v400.i8, v28, 6), *v403.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v446, v398, v28, 5), v400, v28, 6), v403, v28, 7), 7uLL)), v392), 4uLL);
              *(v14 + v394) = vqrshrun_n_s16(vaddq_s16(v450, v392), 4uLL);
              *&v391[v394] = vqrshrun_n_s16(vaddq_s16(v451, v392), 4uLL);
              *&v390[v394] = v442.i64[0];
              v405 += 128;
              v404 += v387;
              *&v389[v394] = vqrshrun_n_s16(vaddq_s16(v452, v392), 4uLL);
              v402 += v387;
              v401 += v387;
              v399 = (v399 + v387);
              v394 += v385;
              v406 -= 4;
            }

            while (v406);
            v386 += 2;
            v14 += 2;
            v384 += 2;
            v389 += 8;
            v390 += 8;
            v391 += 8;
            v16 -= 8;
          }

          while (v16);
        }
      }
    }

    else
    {
      v287 = *(a12 + 8);
      v288 = *(a12 + 16);
      if (v16 == 4)
      {
        v289 = v546[0];
        v290 = v547;
        v291 = v548;
        v292 = v549;
        v293 = v553;
        v294 = v550;
        v295 = v551[0];
        v296 = 2 * v288;
        v297 = 6 * v288;
        v298 = 8 * v288;
        v299 = 4 * v288;
        v300 = v552;
        do
        {
          v301.i64[0] = 0x8000000080000;
          v301.i64[1] = 0x8000000080000;
          v302 = vmlal_lane_s16(v301, v289, *v28.i8, 0);
          v289 = v294;
          v303.i64[0] = 0x8000000080000;
          v303.i64[1] = 0x8000000080000;
          v304.i64[0] = 0x8000000080000;
          v304.i64[1] = 0x8000000080000;
          v305 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v302, v290, *v28.i8, 1), v291, *v28.i8, 2), v292, *v28.i8, 3);
          v306 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v303, v290, *v28.i8, 0), v291, *v28.i8, 1), v292, *v28.i8, 2);
          v307 = vmlal_lane_s16(vmlal_lane_s16(v304, v291, *v28.i8, 0), v292, *v28.i8, 1);
          v308.i64[0] = 0x8000000080000;
          v308.i64[1] = 0x8000000080000;
          v309 = vmlal_lane_s16(v308, v292, *v28.i8, 0);
          v292 = *v293;
          v310 = vmlal_laneq_s16(v305, v294, v28, 4);
          v311 = vmlal_lane_s16(v306, v294, *v28.i8, 3);
          v312 = vmlal_lane_s16(v307, v294, *v28.i8, 2);
          v313 = vmlal_lane_s16(v309, v294, *v28.i8, 1);
          v294 = v293[32];
          v314 = vmlal_laneq_s16(v310, v295, v28, 5);
          v315 = vmlal_laneq_s16(v311, v295, v28, 4);
          v316 = vmlal_lane_s16(v312, v295, *v28.i8, 3);
          v317 = vmlal_lane_s16(v313, v295, *v28.i8, 2);
          v290 = v295;
          v295 = v293[64];
          v318 = vmlal_laneq_s16(v314, v300, v28, 6);
          v319 = vmlal_laneq_s16(v315, v300, v28, 5);
          v320 = vmlal_laneq_s16(v316, v300, v28, 4);
          v321 = vmlal_lane_s16(v317, v300, *v28.i8, 3);
          v291 = v300;
          v300 = v293[96];
          *v319.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v319, *v293, v28, 6), v294, v28, 7), 7uLL);
          *v320.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v320, *v293, v28, 5), v294, v28, 6), v295, v28, 7), 7uLL);
          *v321.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v321, *v293, v28, 4), v294, v28, 5), v295, v28, 6), v300, v28, 7), 7uLL);
          *v287 = vqrshrun_n_s32(vmlal_laneq_s16(v318, *v293, v28, 7), 7uLL);
          *(v287 + v296) = *v319.i8;
          *(v287 + v299) = *v320.i8;
          *(v287 + v297) = *v321.i8;
          v293 += 128;
          v287 = (v287 + v298);
          v17 -= 4;
        }

        while (v17);
      }

      else
      {
        v495 = 8 * v288;
        v496 = v287 + 6 * v288;
        v497 = v287 + 4 * v288;
        v498 = v546;
        v499 = v287 + 2 * v288;
        do
        {
          v500 = 0;
          v501 = *v498->i8;
          v502 = *v498[32].i8;
          v503 = *v498[64].i8;
          v504 = *v498[96].i8;
          v505 = *v498[128].i8;
          v506 = *v498[160].i8;
          v507 = 224;
          v508 = v17;
          v509 = *v498[192].i8;
          do
          {
            v510.i64[0] = 0x8000000080000;
            v510.i64[1] = 0x8000000080000;
            v511 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v510, *v501.i8, *v28.i8, 0), *v502.i8, *v28.i8, 1), *v503.i8, *v28.i8, 2), *v504.i8, *v28.i8, 3);
            v512.i64[0] = 0x8000000080000;
            v512.i64[1] = 0x8000000080000;
            v513 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v512, v501, *v28.i8, 0), v502, *v28.i8, 1), v503, *v28.i8, 2), v504, *v28.i8, 3);
            v514.i64[0] = 0x8000000080000;
            v514.i64[1] = 0x8000000080000;
            v515 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v514, *v502.i8, *v28.i8, 0), *v503.i8, *v28.i8, 1), *v504.i8, *v28.i8, 2);
            v516.i64[0] = 0x8000000080000;
            v516.i64[1] = 0x8000000080000;
            v517 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v516, v502, *v28.i8, 0), v503, *v28.i8, 1), v504, *v28.i8, 2);
            v518.i64[0] = 0x8000000080000;
            v518.i64[1] = 0x8000000080000;
            v519 = vmlal_lane_s16(vmlal_lane_s16(v518, *v503.i8, *v28.i8, 0), *v504.i8, *v28.i8, 1);
            v520.i64[0] = 0x8000000080000;
            v520.i64[1] = 0x8000000080000;
            v521 = vmlal_high_lane_s16(vmlal_high_lane_s16(v520, v503, *v28.i8, 0), v504, *v28.i8, 1);
            v522.i64[0] = 0x8000000080000;
            v522.i64[1] = 0x8000000080000;
            v523 = vmlal_lane_s16(v522, *v504.i8, *v28.i8, 0);
            v524.i64[0] = 0x8000000080000;
            v524.i64[1] = 0x8000000080000;
            v525 = vmlal_high_lane_s16(v524, v504, *v28.i8, 0);
            v504 = *v498[v507].i8;
            v526 = vmlal_laneq_s16(v511, *v505.i8, v28, 4);
            v527 = vmlal_high_laneq_s16(v513, v505, v28, 4);
            v528 = vmlal_lane_s16(v515, *v505.i8, *v28.i8, 3);
            v529 = vmlal_high_lane_s16(v517, v505, *v28.i8, 3);
            v530 = vmlal_lane_s16(v519, *v505.i8, *v28.i8, 2);
            v531 = vmlal_high_lane_s16(v521, v505, *v28.i8, 2);
            v532 = vmlal_lane_s16(v523, *v505.i8, *v28.i8, 1);
            v533 = vmlal_high_lane_s16(v525, v505, *v28.i8, 1);
            v501 = v505;
            v505 = *v498[v507 + 32].i8;
            v534 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v526, *v506.i8, v28, 5), *v509.i8, v28, 6), *v504.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v527, v506, v28, 5), v509, v28, 6), v504, v28, 7), 7uLL);
            v535 = vmlal_laneq_s16(v528, *v506.i8, v28, 4);
            v536 = vmlal_high_laneq_s16(v529, v506, v28, 4);
            v537 = vmlal_lane_s16(v530, *v506.i8, *v28.i8, 3);
            v538 = vmlal_high_lane_s16(v531, v506, *v28.i8, 3);
            v539 = vmlal_lane_s16(v532, *v506.i8, *v28.i8, 2);
            v540 = vmlal_high_lane_s16(v533, v506, *v28.i8, 2);
            v502 = v506;
            v506 = *v498[v507 + 64].i8;
            v541 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v535, *v509.i8, v28, 5), *v504.i8, v28, 6), *v505.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v536, v509, v28, 5), v504, v28, 6), v505, v28, 7), 7uLL);
            v542 = vmlal_laneq_s16(v537, *v509.i8, v28, 4);
            v543 = vmlal_high_laneq_s16(v538, v509, v28, 4);
            v544 = vmlal_lane_s16(v539, *v509.i8, *v28.i8, 3);
            v545 = vmlal_high_lane_s16(v540, v509, *v28.i8, 3);
            v503 = v509;
            v509 = *v498[v507 + 96].i8;
            *&v287->i8[v500] = v534;
            *&v499[v500] = v541;
            *&v497[v500] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v542, *v504.i8, v28, 5), *v505.i8, v28, 6), *v506.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v543, v504, v28, 5), v505, v28, 6), v506, v28, 7), 7uLL);
            *&v496[v500] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v544, *v504.i8, v28, 4), *v505.i8, v28, 5), *v506.i8, v28, 6), *v509.i8, v28, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v545, v504, v28, 4), v505, v28, 5), v506, v28, 6), v509, v28, 7), 7uLL);
            v507 += 128;
            v500 += v495;
            v508 -= 4;
          }

          while (v508);
          v498 += 2;
          v287 += 2;
          v496 += 16;
          v497 += 16;
          v499 += 16;
          v16 -= 8;
        }

        while (v16);
      }
    }
  }

  else if (v183)
  {
    if (*(a12 + 36))
    {
      return dist_wtd_convolve_2d_vert_6tap_dist_wtd_avg_neon(v546, v14, v15, a12, v17, v16, v28, *v30.i8, *v31.i8);
    }

    else
    {
      v184 = *(a12 + 8);
      v185 = *(a12 + 16);
      if (v16 == 4)
      {
        v186 = v546[0];
        v187 = v547;
        v188 = v548;
        v189 = v549;
        v190 = v551;
        v191 = v550;
        v192.i64[0] = 0xE800E800E800E800;
        v192.i64[1] = 0xE800E800E800E800;
        do
        {
          v193.i64[0] = 0x8000000080000;
          v193.i64[1] = 0x8000000080000;
          v194 = vmlal_lane_s16(v193, v186, *v28.i8, 1);
          v186 = v191;
          v195 = vmlal_lane_s16(v194, v187, *v28.i8, 2);
          v196.i64[0] = 0x8000000080000;
          v196.i64[1] = 0x8000000080000;
          v197 = vmlal_lane_s16(v196, v187, *v28.i8, 1);
          v187 = *v190;
          v198 = vmlal_lane_s16(v195, v188, *v28.i8, 3);
          v199 = vmlal_lane_s16(v197, v188, *v28.i8, 2);
          v200.i64[0] = 0x8000000080000;
          v200.i64[1] = 0x8000000080000;
          v201 = vmlal_lane_s16(v200, v188, *v28.i8, 1);
          v188 = v190[32];
          v202 = vmlal_laneq_s16(v198, v189, v28, 4);
          v203 = vmlal_lane_s16(v199, v189, *v28.i8, 3);
          v204 = vmlal_lane_s16(v201, v189, *v28.i8, 2);
          v205.i64[0] = 0x8000000080000;
          v205.i64[1] = 0x8000000080000;
          v206 = vmlal_lane_s16(v205, v189, *v28.i8, 1);
          v189 = v190[64];
          v207 = vmlal_laneq_s16(v202, v191, v28, 5);
          v208 = vmlal_laneq_s16(v203, v191, v28, 4);
          v209 = vmlal_lane_s16(v204, v191, *v28.i8, 3);
          v210 = vmlal_lane_s16(v206, v191, *v28.i8, 2);
          v191 = v190[96];
          v211.i64[0] = *v184;
          v212 = (v184 + 2 * v185 + 2 * v185);
          v213.i64[0] = *v212;
          v211.i64[1] = *(v184 + 2 * v185);
          v214 = vhaddq_u16(v211, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v207, *v190, v28, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v208, *v190, v28, 5), v188, v28, 6), 7uLL));
          v213.i64[1] = *(v212 + 2 * v185);
          v215 = vaddq_s16(vhaddq_u16(v213, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v209, *v190, v28, 4), v188, v28, 5), v189, v28, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v210, *v190, *v28.i8, 3), v188, v28, 4), v189, v28, 5), v191, v28, 6), 7uLL)), v192);
          *v214.i8 = vqrshrun_n_s16(vaddq_s16(v214, v192), 4uLL);
          *v14 = v214.i32[0];
          *(v14 + v15) = v214.i32[1];
          *v214.i8 = vqrshrun_n_s16(v215, 4uLL);
          *(v14 + 2 * v15) = v214.i32[0];
          v216 = (v14 + 2 * v15 + v15);
          v14 += v15;
          v190 += 128;
          v184 += v185;
          *v216 = v214.i32[1];
          v17 -= 4;
        }

        while (v17);
      }

      else
      {
        v322 = 0;
        v323 = 4 * v15;
        v324 = v546;
        v325 = v184 + 6 * v185;
        v326 = 8 * v185;
        v327.i64[0] = 0xE800E800E800E800;
        v327.i64[1] = 0xE800E800E800E800;
        v328 = v14 + 3 * v15;
        v329 = v14 + 2 * v15;
        v330 = v14 + v15;
        result = v184 + 4 * v185;
        v331 = v184 + 2 * v185;
        do
        {
          v332 = 0;
          v333 = *v324->i8;
          v334 = *v324[32].i8;
          v335 = v184;
          v336 = *v324[64].i8;
          v337 = v331;
          v338 = result;
          v339 = *v324[96].i8;
          v340 = v325;
          v341 = v551;
          v342 = v17;
          v343 = *v324[128].i8;
          do
          {
            v344.i64[0] = 0x8000000080000;
            v344.i64[1] = 0x8000000080000;
            v345 = vmlal_lane_s16(v344, *v333.i8, *v28.i8, 1);
            v346.i64[0] = 0x8000000080000;
            v346.i64[1] = 0x8000000080000;
            v347 = vmlal_high_lane_s16(v346, v333, *v28.i8, 1);
            v333 = v343;
            v348 = vmlal_lane_s16(v345, *v334.i8, *v28.i8, 2);
            v349 = vmlal_high_lane_s16(v347, v334, *v28.i8, 2);
            v350.i64[0] = 0x8000000080000;
            v350.i64[1] = 0x8000000080000;
            v351 = vmlal_lane_s16(v350, *v334.i8, *v28.i8, 1);
            v352.i64[0] = 0x8000000080000;
            v352.i64[1] = 0x8000000080000;
            v353 = vmlal_high_lane_s16(v352, v334, *v28.i8, 1);
            v334 = *&v341[v322];
            v354 = vmlal_lane_s16(v348, *v336.i8, *v28.i8, 3);
            v355 = vmlal_lane_s16(v351, *v336.i8, *v28.i8, 2);
            v356 = vmlal_high_lane_s16(v353, v336, *v28.i8, 2);
            v357.i64[0] = 0x8000000080000;
            v357.i64[1] = 0x8000000080000;
            v358 = vmlal_lane_s16(v357, *v336.i8, *v28.i8, 1);
            v359 = vmlal_high_lane_s16(v349, v336, *v28.i8, 3);
            v360.i64[0] = 0x8000000080000;
            v360.i64[1] = 0x8000000080000;
            v361 = vmlal_high_lane_s16(v360, v336, *v28.i8, 1);
            v336 = *&v341[v322 + 32];
            v362 = vmlal_lane_s16(v355, *v339.i8, *v28.i8, 3);
            v363 = vmlal_high_lane_s16(v356, v339, *v28.i8, 3);
            v364 = vmlal_laneq_s16(v354, *v339.i8, v28, 4);
            v365 = vmlal_lane_s16(v358, *v339.i8, *v28.i8, 2);
            v366 = vmlal_high_lane_s16(v361, v339, *v28.i8, 2);
            v367.i64[0] = 0x8000000080000;
            v367.i64[1] = 0x8000000080000;
            v368 = vmlal_lane_s16(v367, *v339.i8, *v28.i8, 1);
            v369.i64[0] = 0x8000000080000;
            v369.i64[1] = 0x8000000080000;
            v370 = vmlal_high_laneq_s16(v359, v339, v28, 4);
            v371 = vmlal_high_lane_s16(v369, v339, *v28.i8, 1);
            v339 = *&v341[v322 + 64];
            v372 = vmlal_laneq_s16(v364, *v343.i8, v28, 5);
            v373 = vmlal_laneq_s16(v362, *v343.i8, v28, 4);
            v374 = vmlal_high_laneq_s16(v363, v343, v28, 4);
            v375 = vmlal_high_laneq_s16(v370, v343, v28, 5);
            v376 = vmlal_lane_s16(v365, *v343.i8, *v28.i8, 3);
            v377 = vmlal_high_lane_s16(v366, v343, *v28.i8, 3);
            v378 = vmlal_lane_s16(v368, *v343.i8, *v28.i8, 2);
            v379 = vmlal_high_lane_s16(v371, v343, *v28.i8, 2);
            v343 = *&v341[v322 + 96];
            v380 = vhaddq_u16(*&v335[v322], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v372, *v334.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(v375, v334, v28, 6), 7uLL));
            v381 = vhaddq_u16(*&v337[v322 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v373, *v334.i8, v28, 5), *v336.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v374, v334, v28, 5), v336, v28, 6), 7uLL));
            v382 = vaddq_s16(vhaddq_u16(*(v338 + v322 * 8), vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v376, *v334.i8, v28, 4), *v336.i8, v28, 5), *v339.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v377, v334, v28, 4), v336, v28, 5), v339, v28, 6), 7uLL)), v327);
            v383 = vaddq_s16(vhaddq_u16(*&v340[v322 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v378, *v334.i8, *v28.i8, 3), *v336.i8, v28, 4), *v339.i8, v28, 5), *v343.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v379, v334, *v28.i8, 3), v336, v28, 4), v339, v28, 5), v343, v28, 6), 7uLL)), v327);
            *(v14 + v332) = vqrshrun_n_s16(vaddq_s16(v380, v327), 4uLL);
            *&v330[v332] = vqrshrun_n_s16(vaddq_s16(v381, v327), 4uLL);
            v341 += 128;
            *&v329[v332] = vqrshrun_n_s16(v382, 4uLL);
            v340 += v326;
            v338 += v326;
            v337 += v326;
            *&v328[v332] = vqrshrun_n_s16(v383, 4uLL);
            v335 = (v335 + v326);
            v332 += v323;
            v342 -= 4;
          }

          while (v342);
          v324 += 2;
          v14 += 2;
          v322 += 2;
          v328 += 8;
          v329 += 8;
          v330 += 8;
          v16 -= 8;
        }

        while (v16);
      }
    }
  }

  else
  {
    v256 = *(a12 + 8);
    v257 = *(a12 + 16);
    if (v16 == 4)
    {
      v258 = v546[0];
      v259 = v547;
      v260 = v548;
      v261 = v549;
      v262 = 2 * v257;
      v263 = v550;
      v264 = 6 * v257;
      v265 = v551;
      v266 = 8 * v257;
      v267 = 4 * v257;
      do
      {
        v268.i64[0] = 0x8000000080000;
        v268.i64[1] = 0x8000000080000;
        v269 = vmlal_lane_s16(v268, v258, *v28.i8, 1);
        v258 = v263;
        v270 = vmlal_lane_s16(v269, v259, *v28.i8, 2);
        v271.i64[0] = 0x8000000080000;
        v271.i64[1] = 0x8000000080000;
        v272 = vmlal_lane_s16(v271, v259, *v28.i8, 1);
        v259 = *v265;
        v273 = vmlal_lane_s16(v270, v260, *v28.i8, 3);
        v274 = vmlal_lane_s16(v272, v260, *v28.i8, 2);
        v275.i64[0] = 0x8000000080000;
        v275.i64[1] = 0x8000000080000;
        v276 = vmlal_lane_s16(v275, v260, *v28.i8, 1);
        v260 = v265[32];
        v277 = vmlal_laneq_s16(v273, v261, v28, 4);
        v278 = vmlal_lane_s16(v274, v261, *v28.i8, 3);
        v279 = vmlal_lane_s16(v276, v261, *v28.i8, 2);
        v280.i64[0] = 0x8000000080000;
        v280.i64[1] = 0x8000000080000;
        v281 = vmlal_lane_s16(v280, v261, *v28.i8, 1);
        v261 = v265[64];
        v282 = vmlal_laneq_s16(v277, v263, v28, 5);
        v283 = vmlal_laneq_s16(v278, v263, v28, 4);
        v284 = vmlal_lane_s16(v279, v263, *v28.i8, 3);
        v285 = vmlal_lane_s16(v281, v263, *v28.i8, 2);
        v263 = v265[96];
        *v283.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v283, *v265, v28, 5), v260, v28, 6), 7uLL);
        *v284.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v284, *v265, v28, 4), v260, v28, 5), v261, v28, 6), 7uLL);
        v286 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v285, *v265, *v28.i8, 3), v260, v28, 4), v261, v28, 5);
        *v256 = vqrshrun_n_s32(vmlal_laneq_s16(v282, *v265, v28, 6), 7uLL);
        *(v256 + v262) = *v283.i8;
        *(v256 + v267) = *v284.i8;
        *(v256 + v264) = vqrshrun_n_s32(vmlal_laneq_s16(v286, v263, v28, 6), 7uLL);
        v265 += 128;
        v256 = (v256 + v266);
        v17 -= 4;
      }

      while (v17);
    }

    else
    {
      v453 = 8 * v257;
      v454 = v256 + 6 * v257;
      v455 = v256 + 4 * v257;
      v456 = v546;
      v457 = v256 + 2 * v257;
      do
      {
        v458 = 0;
        v459 = *v456->i8;
        v460 = *v456[32].i8;
        v461 = *v456[64].i8;
        v462 = *v456[96].i8;
        v463 = 160;
        v464 = v17;
        v465 = *v456[128].i8;
        do
        {
          v466.i64[0] = 0x8000000080000;
          v466.i64[1] = 0x8000000080000;
          v467 = vmlal_lane_s16(vmlal_lane_s16(v466, *v459.i8, *v28.i8, 1), *v460.i8, *v28.i8, 2);
          v468.i64[0] = 0x8000000080000;
          v468.i64[1] = 0x8000000080000;
          v469 = vmlal_high_lane_s16(vmlal_high_lane_s16(v468, v459, *v28.i8, 1), v460, *v28.i8, 2);
          v470.i64[0] = 0x8000000080000;
          v470.i64[1] = 0x8000000080000;
          v471 = vmlal_lane_s16(v470, *v460.i8, *v28.i8, 1);
          v472.i64[0] = 0x8000000080000;
          v472.i64[1] = 0x8000000080000;
          v473 = vmlal_high_lane_s16(v472, v460, *v28.i8, 1);
          v460 = *v456[v463].i8;
          v474 = vmlal_lane_s16(v467, *v461.i8, *v28.i8, 3);
          v475 = vmlal_high_lane_s16(v469, v461, *v28.i8, 3);
          v476 = vmlal_lane_s16(v471, *v461.i8, *v28.i8, 2);
          v477 = vmlal_high_lane_s16(v473, v461, *v28.i8, 2);
          v478.i64[0] = 0x8000000080000;
          v478.i64[1] = 0x8000000080000;
          v479 = vmlal_lane_s16(v478, *v461.i8, *v28.i8, 1);
          v480.i64[0] = 0x8000000080000;
          v480.i64[1] = 0x8000000080000;
          v481 = vmlal_high_lane_s16(v480, v461, *v28.i8, 1);
          v461 = *v456[v463 + 32].i8;
          v482 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v474, *v462.i8, v28, 4), *v465.i8, v28, 5), *v460.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v475, v462, v28, 4), v465, v28, 5), v460, v28, 6), 7uLL);
          v483 = vmlal_lane_s16(v476, *v462.i8, *v28.i8, 3);
          v484 = vmlal_high_lane_s16(v477, v462, *v28.i8, 3);
          v485 = vmlal_lane_s16(v479, *v462.i8, *v28.i8, 2);
          v486 = vmlal_high_lane_s16(v481, v462, *v28.i8, 2);
          v475.i64[0] = 0x8000000080000;
          v475.i64[1] = 0x8000000080000;
          v487 = vmlal_lane_s16(v475, *v462.i8, *v28.i8, 1);
          v488.i64[0] = 0x8000000080000;
          v488.i64[1] = 0x8000000080000;
          v489 = vmlal_high_lane_s16(v488, v462, *v28.i8, 1);
          v462 = *v456[v463 + 64].i8;
          v490 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v483, *v465.i8, v28, 4), *v460.i8, v28, 5), *v461.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v484, v465, v28, 4), v460, v28, 5), v461, v28, 6), 7uLL);
          v491 = vmlal_lane_s16(v485, *v465.i8, *v28.i8, 3);
          v492 = vmlal_high_lane_s16(v486, v465, *v28.i8, 3);
          v493 = vmlal_lane_s16(v487, *v465.i8, *v28.i8, 2);
          v494 = vmlal_high_lane_s16(v489, v465, *v28.i8, 2);
          v459 = v465;
          v465 = *v456[v463 + 96].i8;
          *&v256->i8[v458] = v482;
          *&v457[v458] = v490;
          *&v455[v458] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v491, *v460.i8, v28, 4), *v461.i8, v28, 5), *v462.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v492, v460, v28, 4), v461, v28, 5), v462, v28, 6), 7uLL);
          *&v454[v458] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v493, *v460.i8, *v28.i8, 3), *v461.i8, v28, 4), *v462.i8, v28, 5), *v465.i8, v28, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v494, v460, *v28.i8, 3), v461, v28, 4), v462, v28, 5), v465, v28, 6), 7uLL);
          v463 += 128;
          v458 += v453;
          v464 -= 4;
        }

        while (v464);
        v456 += 2;
        v256 += 2;
        v454 += 16;
        v455 += 16;
        v457 += 16;
        v16 -= 8;
      }

      while (v16);
    }
  }

  return result;
}

int16x4_t *dist_wtd_convolve_2d_vert_6tap_dist_wtd_avg_neon(int16x4_t *result, _DWORD *a2, int a3, uint64_t a4, int a5, int a6, int16x8_t a7, uint16x4_t a8, uint16x4_t a9)
{
  v10 = *(a4 + 40);
  v9 = *(a4 + 44);
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  if (a6 == 4)
  {
    v13 = *result;
    v14 = result[32];
    v15 = result[64];
    v16 = result[96];
    v17 = result + 160;
    a8.i32[0] = v10;
    a9.i32[0] = v9;
    v18 = result[128];
    v19.i64[0] = 0xE800E800E800E800;
    v19.i64[1] = 0xE800E800E800E800;
    do
    {
      v20.i64[0] = 0x8000000080000;
      v20.i64[1] = 0x8000000080000;
      v21 = vmlal_lane_s16(v20, v13, *a7.i8, 1);
      v13 = v18;
      v22.i64[0] = 0x8000000080000;
      v22.i64[1] = 0x8000000080000;
      v23 = vmlal_lane_s16(v21, v14, *a7.i8, 2);
      v24 = vmlal_lane_s16(v22, v14, *a7.i8, 1);
      v14 = *v17;
      v25 = vmlal_lane_s16(v24, v15, *a7.i8, 2);
      v26.i64[0] = 0x8000000080000;
      v26.i64[1] = 0x8000000080000;
      v27 = vmlal_lane_s16(v26, v15, *a7.i8, 1);
      v28 = vmlal_lane_s16(v23, v15, *a7.i8, 3);
      v15 = v17[32];
      v29 = vmlal_lane_s16(v25, v16, *a7.i8, 3);
      v30 = vmlal_lane_s16(v27, v16, *a7.i8, 2);
      v31.i64[0] = 0x8000000080000;
      v31.i64[1] = 0x8000000080000;
      v32 = vmlal_lane_s16(v31, v16, *a7.i8, 1);
      v33 = vmlal_laneq_s16(v28, v16, a7, 4);
      v16 = v17[64];
      v34 = vmlal_laneq_s16(v33, v18, a7, 5);
      v35 = vmlal_laneq_s16(v29, v18, a7, 4);
      v36 = vmlal_lane_s16(v30, v18, *a7.i8, 3);
      v37 = vmlal_lane_s16(v32, v18, *a7.i8, 2);
      v18 = v17[96];
      v38 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v34, *v17, a7, 6), 7uLL), a9, 0), *v11, a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v35, *v17, a7, 5), v15, a7, 6), 7uLL), a9, 0), *(v11 + 2 * v12), a8, 0), 4uLL);
      v39 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v36, *v17, a7, 4), v15, a7, 5), v16, a7, 6), 7uLL), a9, 0), *(v11 + 2 * v12 + 2 * v12), a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v37, *v17, *a7.i8, 3), v15, a7, 4), v16, a7, 5), v18, a7, 6), 7uLL), a9, 0), *(v11 + 2 * v12 + 2 * v12 + 2 * v12), a8, 0), 4uLL), v19);
      *v38.i8 = vqrshrun_n_s16(vaddq_s16(v38, v19), 4uLL);
      *a2 = v38.i32[0];
      *(a2 + a3) = v38.i32[1];
      *v38.i8 = vqrshrun_n_s16(v39, 4uLL);
      *(a2 + 2 * a3) = v38.i32[0];
      v40 = (a2 + 2 * a3 + a3);
      v17 += 128;
      v11 += v12;
      a2 += a3;
      *v40 = v38.i32[1];
      a5 -= 4;
    }

    while (a5);
  }

  else
  {
    v41 = 0;
    a8.i32[0] = v10;
    a9.i32[0] = v9;
    v42 = 4 * a3;
    v43 = result + 160;
    v44 = 8 * v12;
    v45.i64[0] = 0xE800E800E800E800;
    v45.i64[1] = 0xE800E800E800E800;
    v46 = v11 + 6 * v12;
    v47 = a2 + 3 * a3;
    v48 = a2 + 2 * a3;
    v49 = a2 + a3;
    v50 = v11 + 4 * v12;
    v51 = v11 + 2 * v12;
    do
    {
      v52 = 0;
      v53 = *result->i8;
      v54 = *result[32].i8;
      v55 = v11;
      v56 = *result[64].i8;
      v57 = v51;
      v58 = v50;
      v59 = *result[96].i8;
      v60 = v46;
      v61 = v43;
      v62 = a5;
      v63 = *result[128].i8;
      do
      {
        v64.i64[0] = 0x8000000080000;
        v64.i64[1] = 0x8000000080000;
        v65.i64[0] = 0x8000000080000;
        v65.i64[1] = 0x8000000080000;
        v66 = vmlal_lane_s16(v64, *v53.i8, *a7.i8, 1);
        v67 = vmlal_high_lane_s16(v65, v53, *a7.i8, 1);
        v53 = v63;
        v68 = vmlal_lane_s16(v66, *v54.i8, *a7.i8, 2);
        v69.i64[0] = 0x8000000080000;
        v69.i64[1] = 0x8000000080000;
        v70 = vmlal_high_lane_s16(v67, v54, *a7.i8, 2);
        v71 = vmlal_lane_s16(v69, *v54.i8, *a7.i8, 1);
        v72.i64[0] = 0x8000000080000;
        v72.i64[1] = 0x8000000080000;
        v73 = vmlal_high_lane_s16(v72, v54, *a7.i8, 1);
        v54 = *v61[v41].i8;
        v74 = vmlal_lane_s16(v71, *v56.i8, *a7.i8, 2);
        v75 = vmlal_lane_s16(v68, *v56.i8, *a7.i8, 3);
        v76 = vmlal_high_lane_s16(v73, v56, *a7.i8, 2);
        v77.i64[0] = 0x8000000080000;
        v77.i64[1] = 0x8000000080000;
        v78 = vmlal_lane_s16(v77, *v56.i8, *a7.i8, 1);
        v79.i64[0] = 0x8000000080000;
        v79.i64[1] = 0x8000000080000;
        v80 = vmlal_high_lane_s16(v79, v56, *a7.i8, 1);
        v81 = vmlal_high_lane_s16(v70, v56, *a7.i8, 3);
        v56 = *v61[v41 + 32].i8;
        v82 = vmlal_laneq_s16(v75, *v59.i8, a7, 4);
        v83 = vmlal_lane_s16(v74, *v59.i8, *a7.i8, 3);
        v84 = vmlal_high_lane_s16(v76, v59, *a7.i8, 3);
        v85 = vmlal_lane_s16(v78, *v59.i8, *a7.i8, 2);
        v86 = vmlal_high_laneq_s16(v81, v59, a7, 4);
        v87 = vmlal_high_lane_s16(v80, v59, *a7.i8, 2);
        v88.i64[0] = 0x8000000080000;
        v88.i64[1] = 0x8000000080000;
        v89 = vmlal_lane_s16(v88, *v59.i8, *a7.i8, 1);
        v90.i64[0] = 0x8000000080000;
        v90.i64[1] = 0x8000000080000;
        v91 = vmlal_high_lane_s16(v90, v59, *a7.i8, 1);
        v59 = *v61[v41 + 64].i8;
        v92 = vmlal_laneq_s16(v82, *v63.i8, a7, 5);
        v93 = vmlal_laneq_s16(v83, *v63.i8, a7, 4);
        v94 = vmlal_high_laneq_s16(v84, v63, a7, 4);
        v95 = vmlal_lane_s16(v85, *v63.i8, *a7.i8, 3);
        v96 = vmlal_high_lane_s16(v87, v63, *a7.i8, 3);
        v97 = vmlal_high_laneq_s16(v86, v63, a7, 5);
        v98 = vmlal_lane_s16(v89, *v63.i8, *a7.i8, 2);
        v99 = vmlal_high_lane_s16(v91, v63, *a7.i8, 2);
        v63 = *v61[v41 + 96].i8;
        v100 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v92, *v54.i8, a7, 6), 7uLL), a9, 0), v55[v41], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(v97, v54, a7, 6), 7uLL), a9, 0), *v55[v41].i8, a8, 0), 4uLL);
        v101 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v93, *v54.i8, a7, 5), *v56.i8, a7, 6), 7uLL), a9, 0), *&v57[v41 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v94, v54, a7, 5), v56, a7, 6), 7uLL), a9, 0), *&v57[v41 * 8], a8, 0), 4uLL);
        v102 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v95, *v54.i8, a7, 4), *v56.i8, a7, 5), *v59.i8, a7, 6), 7uLL), a9, 0), *&v58[v41 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v96, v54, a7, 4), v56, a7, 5), v59, a7, 6), 7uLL), a9, 0), *&v58[v41 * 8], a8, 0), 4uLL), v45);
        v103 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v98, *v54.i8, *a7.i8, 3), *v56.i8, a7, 4), *v59.i8, a7, 5), *v63.i8, a7, 6), 7uLL), a9, 0), *&v60[v41 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v99, v54, *a7.i8, 3), v56, a7, 4), v59, a7, 5), v63, a7, 6), 7uLL), a9, 0), *&v60[v41 * 8], a8, 0), 4uLL), v45);
        *(a2 + v52) = vqrshrun_n_s16(vaddq_s16(v100, v45), 4uLL);
        *&v49[v52] = vqrshrun_n_s16(vaddq_s16(v101, v45), 4uLL);
        v61 += 128;
        *&v48[v52] = vqrshrun_n_s16(v102, 4uLL);
        v60 += v44;
        v58 += v44;
        v57 += v44;
        *&v47[v52] = vqrshrun_n_s16(v103, 4uLL);
        v55 = (v55 + v44);
        v52 += v42;
        v62 -= 4;
      }

      while (v62);
      result += 2;
      a2 += 2;
      v41 += 2;
      v47 += 8;
      v48 += 8;
      v49 += 8;
      a6 -= 8;
    }

    while (a6);
  }

  return result;
}

int16x4_t *dist_wtd_convolve_2d_vert_8tap_dist_wtd_avg_neon(int16x4_t *result, _DWORD *a2, int a3, uint64_t a4, int a5, int a6, int16x8_t a7, uint16x4_t a8, uint16x4_t a9)
{
  v10 = *(a4 + 40);
  v9 = *(a4 + 44);
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  if (a6 == 4)
  {
    v13 = *result;
    v14 = result[32];
    v15 = result + 224;
    a8.i32[0] = v10;
    v16 = result[64];
    v17 = result[96];
    a9.i32[0] = v9;
    v18 = result[128];
    v19 = result[160];
    v20 = result[192];
    v21.i64[0] = 0xE800E800E800E800;
    v21.i64[1] = 0xE800E800E800E800;
    do
    {
      v22.i64[0] = 0x8000000080000;
      v22.i64[1] = 0x8000000080000;
      v23 = vmlal_lane_s16(v22, v13, *a7.i8, 0);
      v13 = v18;
      v24.i64[0] = 0x8000000080000;
      v24.i64[1] = 0x8000000080000;
      v25.i64[0] = 0x8000000080000;
      v25.i64[1] = 0x8000000080000;
      v26 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v24, v14, *a7.i8, 0), v16, *a7.i8, 1), v17, *a7.i8, 2);
      v27 = vmlal_lane_s16(vmlal_lane_s16(v25, v16, *a7.i8, 0), v17, *a7.i8, 1);
      v28 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v23, v14, *a7.i8, 1), v16, *a7.i8, 2), v17, *a7.i8, 3);
      v29.i64[0] = 0x8000000080000;
      v29.i64[1] = 0x8000000080000;
      v30 = vmlal_lane_s16(v29, v17, *a7.i8, 0);
      v17 = *v15;
      v31 = vmlal_lane_s16(v26, v18, *a7.i8, 3);
      v32 = vmlal_lane_s16(v27, v18, *a7.i8, 2);
      v33 = vmlal_laneq_s16(v28, v18, a7, 4);
      v34 = vmlal_lane_s16(v30, v18, *a7.i8, 1);
      v18 = v15[32];
      v35 = vmlal_laneq_s16(v31, v19, a7, 4);
      v36 = vmlal_lane_s16(v32, v19, *a7.i8, 3);
      v37 = vmlal_lane_s16(v34, v19, *a7.i8, 2);
      v38 = vmlal_laneq_s16(v33, v19, a7, 5);
      v14 = v19;
      v19 = v15[64];
      v39 = vmlal_laneq_s16(v35, v20, a7, 5);
      v40 = vmlal_laneq_s16(v36, v20, a7, 4);
      v41 = vmlal_lane_s16(v37, v20, *a7.i8, 3);
      v42 = vmlal_laneq_s16(v38, v20, a7, 6);
      v16 = v20;
      v20 = v15[96];
      v43 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v42, *v15, a7, 7), 7uLL), a9, 0), *v11, a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v39, *v15, a7, 6), v18, a7, 7), 7uLL), a9, 0), *(v11 + 2 * v12), a8, 0), 4uLL);
      v44 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v40, *v15, a7, 5), v18, a7, 6), v19, a7, 7), 7uLL), a9, 0), *(v11 + 2 * v12 + 2 * v12), a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v41, *v15, a7, 4), v18, a7, 5), v19, a7, 6), v20, a7, 7), 7uLL), a9, 0), *(v11 + 2 * v12 + 2 * v12 + 2 * v12), a8, 0), 4uLL), v21);
      *v43.i8 = vqrshrun_n_s16(vaddq_s16(v43, v21), 4uLL);
      *a2 = v43.i32[0];
      *(a2 + a3) = v43.i32[1];
      *v43.i8 = vqrshrun_n_s16(v44, 4uLL);
      *(a2 + 2 * a3) = v43.i32[0];
      *(a2 + 2 * a3 + a3) = v43.i32[1];
      a2 += a3;
      v15 += 128;
      v11 += v12;
      a5 -= 4;
    }

    while (a5);
  }

  else
  {
    v45 = 0;
    a8.i32[0] = v10;
    a9.i32[0] = v9;
    v46 = 4 * a3;
    v47 = result + 224;
    v48 = 8 * v12;
    v49.i64[0] = 0xE800E800E800E800;
    v49.i64[1] = 0xE800E800E800E800;
    v50 = v11 + 6 * v12;
    v51 = a2 + 3 * a3;
    v52 = a2 + 2 * a3;
    v53 = a2 + a3;
    v54 = v11 + 4 * v12;
    v55 = v11 + 2 * v12;
    do
    {
      v56 = 0;
      v57 = *result->i8;
      v58 = *result[32].i8;
      v59 = *result[64].i8;
      v60 = *result[96].i8;
      v61 = v11;
      v62 = *result[128].i8;
      v63 = v55;
      v64 = v54;
      v65 = *result[160].i8;
      v66 = v50;
      v67 = v47;
      v68 = a5;
      v69 = *result[192].i8;
      do
      {
        v70.i64[0] = 0x8000000080000;
        v70.i64[1] = 0x8000000080000;
        v71.i64[0] = 0x8000000080000;
        v71.i64[1] = 0x8000000080000;
        v72 = vmlal_lane_s16(v70, *v57.i8, *a7.i8, 0);
        v73 = vmlal_high_lane_s16(v71, v57, *a7.i8, 0);
        v57 = v62;
        v74 = vmlal_lane_s16(v72, *v58.i8, *a7.i8, 1);
        v75.i64[0] = 0x8000000080000;
        v75.i64[1] = 0x8000000080000;
        v76 = vmlal_lane_s16(v75, *v58.i8, *a7.i8, 0);
        v77 = vmlal_high_lane_s16(v73, v58, *a7.i8, 1);
        v78.i64[0] = 0x8000000080000;
        v78.i64[1] = 0x8000000080000;
        v79 = vmlal_high_lane_s16(v78, v58, *a7.i8, 0);
        v58 = v65;
        v80.i64[0] = 0x8000000080000;
        v80.i64[1] = 0x8000000080000;
        v81.i64[0] = 0x8000000080000;
        v81.i64[1] = 0x8000000080000;
        v82 = vmlal_lane_s16(vmlal_lane_s16(v74, *v59.i8, *a7.i8, 2), *v60.i8, *a7.i8, 3);
        v83 = vmlal_lane_s16(vmlal_lane_s16(v76, *v59.i8, *a7.i8, 1), *v60.i8, *a7.i8, 2);
        v84 = vmlal_high_lane_s16(vmlal_high_lane_s16(v79, v59, *a7.i8, 1), v60, *a7.i8, 2);
        v85 = vmlal_lane_s16(vmlal_lane_s16(v80, *v59.i8, *a7.i8, 0), *v60.i8, *a7.i8, 1);
        v86 = vmlal_high_lane_s16(vmlal_high_lane_s16(v77, v59, *a7.i8, 2), v60, *a7.i8, 3);
        v87 = vmlal_high_lane_s16(vmlal_high_lane_s16(v81, v59, *a7.i8, 0), v60, *a7.i8, 1);
        v88.i64[0] = 0x8000000080000;
        v88.i64[1] = 0x8000000080000;
        v89 = vmlal_lane_s16(v88, *v60.i8, *a7.i8, 0);
        v90.i64[0] = 0x8000000080000;
        v90.i64[1] = 0x8000000080000;
        v91 = vmlal_high_lane_s16(v90, v60, *a7.i8, 0);
        v60 = *v67[v45].i8;
        v92 = vmlal_laneq_s16(v82, *v62.i8, a7, 4);
        v93 = vmlal_lane_s16(v83, *v62.i8, *a7.i8, 3);
        v94 = vmlal_high_lane_s16(v84, v62, *a7.i8, 3);
        v95 = vmlal_lane_s16(v85, *v62.i8, *a7.i8, 2);
        v96 = vmlal_high_lane_s16(v87, v62, *a7.i8, 2);
        v97 = vmlal_high_laneq_s16(v86, v62, a7, 4);
        v98 = vmlal_lane_s16(v89, *v62.i8, *a7.i8, 1);
        v99 = vmlal_high_lane_s16(v91, v62, *a7.i8, 1);
        v62 = *v67[v45 + 32].i8;
        v100 = vmlal_laneq_s16(v93, *v65.i8, a7, 4);
        v101 = vmlal_laneq_s16(v92, *v65.i8, a7, 5);
        v102 = vmlal_high_laneq_s16(v94, v65, a7, 4);
        v103 = vmlal_lane_s16(v95, *v65.i8, *a7.i8, 3);
        v104 = vmlal_high_lane_s16(v96, v65, *a7.i8, 3);
        v105 = vmlal_lane_s16(v98, *v65.i8, *a7.i8, 2);
        v106 = vmlal_high_lane_s16(v99, v65, *a7.i8, 2);
        v107 = vmlal_high_laneq_s16(v97, v65, a7, 5);
        v65 = *v67[v45 + 64].i8;
        v108 = vmlal_laneq_s16(v101, *v69.i8, a7, 6);
        v109 = vmlal_laneq_s16(v100, *v69.i8, a7, 5);
        v110 = vmlal_high_laneq_s16(v102, v69, a7, 5);
        v111 = vmlal_high_laneq_s16(v107, v69, a7, 6);
        v112 = vmlal_laneq_s16(v103, *v69.i8, a7, 4);
        v113 = vmlal_high_laneq_s16(v104, v69, a7, 4);
        v114 = vmlal_lane_s16(v105, *v69.i8, *a7.i8, 3);
        v115 = vmlal_high_lane_s16(v106, v69, *a7.i8, 3);
        v59 = v69;
        v69 = *v67[v45 + 96].i8;
        v116 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v108, *v60.i8, a7, 7), 7uLL), a9, 0), v61[v45], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(v111, v60, a7, 7), 7uLL), a9, 0), *v61[v45].i8, a8, 0), 4uLL);
        v117 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v109, *v60.i8, a7, 6), *v62.i8, a7, 7), 7uLL), a9, 0), *&v63[v45 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v110, v60, a7, 6), v62, a7, 7), 7uLL), a9, 0), *&v63[v45 * 8], a8, 0), 4uLL);
        v118 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v114, *v60.i8, a7, 4), *v62.i8, a7, 5), *v65.i8, a7, 6), *v69.i8, a7, 7), 7uLL), a9, 0), *&v66[v45 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v115, v60, a7, 4), v62, a7, 5), v65, a7, 6), v69, a7, 7), 7uLL), a9, 0), *&v66[v45 * 8], a8, 0), 4uLL);
        *v109.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v112, *v60.i8, a7, 5), *v62.i8, a7, 6), *v65.i8, a7, 7), 7uLL), a9, 0), *&v64[v45 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v113, v60, a7, 5), v62, a7, 6), v65, a7, 7), 7uLL), a9, 0), *&v64[v45 * 8], a8, 0), 4uLL), v49), 4uLL);
        *(a2 + v56) = vqrshrun_n_s16(vaddq_s16(v116, v49), 4uLL);
        *&v53[v56] = vqrshrun_n_s16(vaddq_s16(v117, v49), 4uLL);
        *&v52[v56] = v109.i64[0];
        v67 += 128;
        v66 += v48;
        *&v51[v56] = vqrshrun_n_s16(vaddq_s16(v118, v49), 4uLL);
        v64 += v48;
        v63 += v48;
        v61 = (v61 + v48);
        v56 += v46;
        v68 -= 4;
      }

      while (v68);
      result += 2;
      a2 += 2;
      v45 += 2;
      v51 += 8;
      v52 += 8;
      v53 += 8;
      a6 -= 8;
    }

    while (a6);
  }

  return result;
}

uint8x8_t *av1_dist_wtd_convolve_2d_copy_neon(uint8x8_t *result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, uint16x4_t a8, uint16x8_t a9, uint16x8_t a10, uint16x8_t a11, int16x8_t a12, uint16x8_t a13, uint32x4_t a14)
{
  if (*a7)
  {
    if (*(a7 + 36))
    {

      return dist_wtd_convolve_2d_copy_dist_wtd_avg_neon(result, a2, a3, a4, a5, a6, a7, a8, *a9.i8, *a10.i64, *a11.i64, a12, a13, a14);
    }

    else
    {
      v15 = *(a7 + 8);
      v16 = *(a7 + 16);
      if (a5 == 4)
      {
        v17.i64[0] = 0x1800180018001800;
        v17.i64[1] = 0x1800180018001800;
        v18.i64[0] = 0xE800E800E800E800;
        v18.i64[1] = 0xE800E800E800E800;
        do
        {
          v19 = (result + a2 + a2);
          v20.i64[0] = vmull_u8(*result, 0x1010101010101010).u64[0];
          v21.i64[0] = vmull_u8(*v19, 0x1010101010101010).u64[0];
          v22 = vmull_u8(*(v19 + a2), 0x1010101010101010).u64[0];
          v23.i64[0] = *v15;
          v24 = (v15 + 2 * v16 + 2 * v16);
          v25.i64[0] = *v24;
          v23.i64[1] = *(v15 + 2 * v16);
          v20.i64[1] = vmull_u8(*(result + a2), 0x1010101010101010).u64[0];
          v25.i64[1] = *(v24 + 2 * v16);
          v21.i64[1] = v22;
          *v20.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v23, vaddq_s16(v20, v17)), v18), 4uLL);
          v26 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v25, vaddq_s16(v21, v17)), v18), 4uLL);
          *a3 = v20.i32[0];
          *(a3 + a4) = v20.i32[1];
          *(a3 + 2 * a4) = v26.i32[0];
          *(a3 + 2 * a4 + a4) = v26.i32[1];
          result = (result + 4 * a2);
          v15 += v16;
          a3 += a4;
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v35 = 4 * a2;
        v36 = a4;
        v37 = 4 * a4;
        v38 = result + 3 * a2;
        v39 = result + 2 * a2;
        v40 = result + a2;
        v41 = v15 + 6 * v16;
        v42 = 8 * v16;
        v43 = v15 + 4 * v16;
        v44 = 2 * a4;
        v45 = v15 + 2 * v16;
        v46 = a3 + v44 + v36;
        v47 = a3 + v44;
        v48 = a3 + v36;
        v49.i64[0] = 0xE800E800E800E800;
        v49.i64[1] = 0xE800E800E800E800;
        do
        {
          v50 = 0;
          v51 = 0;
          do
          {
            v52.i64[0] = 0x1800180018001800;
            v52.i64[1] = 0x1800180018001800;
            v53.i64[0] = 0x1800180018001800;
            v53.i64[1] = 0x1800180018001800;
            v54.i64[0] = 0x1800180018001800;
            v54.i64[1] = 0x1800180018001800;
            v55.i64[0] = 0x1800180018001800;
            v55.i64[1] = 0x1800180018001800;
            v56 = vaddq_s16(vhaddq_u16(*&v41[v50], vmlal_u8(v55, *&v38[v51], 0x1010101010101010)), v49);
            *v53.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v45[v50], vmlal_u8(v53, *&v40[v51], 0x1010101010101010)), v49), 4uLL);
            *v54.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v43[v50], vmlal_u8(v54, *&v39[v51], 0x1010101010101010)), v49), 4uLL);
            *&a3[v51 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v15[v50 / 8], vmlal_u8(v52, result[v51 / 8], 0x1010101010101010)), v49), 4uLL);
            *&v48[v51] = v53.i64[0];
            *&v47[v51] = v54.i64[0];
            *&v46[v51] = vqrshrun_n_s16(v56, 4uLL);
            v51 += 8;
            v50 += 16;
          }

          while (a5 != v51);
          result = (result + v35);
          a3 = (a3 + v37);
          v38 += v35;
          v39 += v35;
          v40 += v35;
          v41 += v42;
          v43 += v42;
          v45 += v42;
          v15 = (v15 + v42);
          v46 += v37;
          v47 += v37;
          v48 += v37;
          a6 -= 4;
        }

        while (a6);
      }
    }
  }

  else
  {
    v27 = *(a7 + 8);
    v28 = *(a7 + 16);
    v29 = 4 * v28;
    if (a5 == 4)
    {
      v30 = 2 * v28;
      v31 = 6 * v28;
      v32 = 2 * v29;
      v33 = 4 * v28;
      do
      {
        v34 = *(result + 3 * a2);
        a13.i32[0] = 402659328;
        a13.i16[2] = 6144;
        a13.i16[3] = 6144;
        a13 = vmlal_u8(a13, *result, 0x1010101010101010);
        a9.i32[0] = 402659328;
        a9.i16[2] = 6144;
        a9.i16[3] = 6144;
        a9 = vmlal_u8(a9, *(result + a2), 0x1010101010101010);
        a10.i32[0] = 402659328;
        a10.i16[2] = 6144;
        a10.i16[3] = 6144;
        a10 = vmlal_u8(a10, *(result + 2 * a2), 0x1010101010101010);
        a11.i32[0] = 402659328;
        a11.i16[2] = 6144;
        a11.i16[3] = 6144;
        *v27 = a13.i64[0];
        *(v27 + v30) = a9.i64[0];
        *(v27 + v33) = a10.i64[0];
        a11 = vmlal_u8(a11, v34, 0x1010101010101010);
        *(v27 + v31) = a11.i64[0];
        result = (result + 4 * a2);
        v27 = (v27 + v32);
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      v57 = 4 * a2;
      v58 = result + 3 * a2;
      v59 = result + 2 * a2;
      v60 = result + a2;
      v61 = 2 * v29;
      v62 = v27 + 4 * v28;
      v63 = v27 + 6 * v28;
      v64 = v27 + 2 * v28;
      do
      {
        v65 = 0;
        v66 = 0;
        do
        {
          v67 = *&v58[v66];
          v68.i64[0] = 0x1800180018001800;
          v68.i64[1] = 0x1800180018001800;
          v69.i64[0] = 0x1800180018001800;
          v69.i64[1] = 0x1800180018001800;
          v70 = vmlal_u8(v69, *&v60[v66], 0x1010101010101010);
          v71.i64[0] = 0x1800180018001800;
          v71.i64[1] = 0x1800180018001800;
          v72 = vmlal_u8(v71, *&v59[v66], 0x1010101010101010);
          v73.i64[0] = 0x1800180018001800;
          v73.i64[1] = 0x1800180018001800;
          *&v27[v65 / 8] = vmlal_u8(v68, result[v66 / 8], 0x1010101010101010);
          *&v64[v65] = v70;
          *&v62[v65] = v72;
          *&v63[v65] = vmlal_u8(v73, v67, 0x1010101010101010);
          v66 += 8;
          v65 += 16;
        }

        while (a5 != v66);
        result = (result + v57);
        v58 += v57;
        v59 += v57;
        v60 += v57;
        v63 += v61;
        v62 += v61;
        v64 += v61;
        v27 = (v27 + v61);
        a6 -= 4;
      }

      while (a6);
    }
  }

  return result;
}

uint8x8_t *dist_wtd_convolve_2d_copy_dist_wtd_avg_neon(uint8x8_t *result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, uint16x4_t a8, uint16x4_t a9, double a10, double a11, int16x8_t a12, int16x8_t a13, uint32x4_t a14)
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
      v18 = (result + a2 + a2);
      v14.i32[0] = 402659328;
      v14.i16[2] = 6144;
      v14.i16[3] = 6144;
      a12.i32[0] = 402659328;
      a12.i16[2] = 6144;
      a12.i16[3] = 6144;
      a13.i32[0] = 402659328;
      a13.i16[2] = 6144;
      a13.i16[3] = 6144;
      v19 = vmlal_u8(a13, *v18, 0x1010101010101010).u64[0];
      a14.i32[0] = 402659328;
      a14.i16[2] = 6144;
      a14.i16[3] = 6144;
      v20 = vmlal_u8(a14, *(v18 + a2), 0x1010101010101010).u64[0];
      v21 = (v15 + 2 * v16 + 2 * v16);
      v14 = vmlal_lane_u16(vmull_lane_u16(*&vmlal_u8(v14, *result, 0x1010101010101010), a9, 0), *v15, a8, 0);
      v22 = vshrn_high_n_s32(vshrn_n_s32(v14, 4uLL), vmlal_lane_u16(vmull_lane_u16(*&vmlal_u8(a12, *(result + a2), 0x1010101010101010), a9, 0), *(v15 + 2 * v16), a8, 0), 4uLL);
      a14 = vmlal_lane_u16(vmull_lane_u16(v20, a9, 0), *(v21 + 2 * v16), a8, 0);
      v23 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(v19, a9, 0), *v21, a8, 0), 4uLL), a14, 4uLL);
      a13 = vaddq_s16(v22, v17);
      a12 = vaddq_s16(v23, v17);
      *a13.i8 = vqrshrun_n_s16(a13, 4uLL);
      *a12.i8 = vqrshrun_n_s16(a12, 4uLL);
      *a3 = a13.i32[0];
      *(a3 + a4) = a13.i32[1];
      *(a3 + 2 * a4) = a12.i32[0];
      *(a3 + 2 * a4 + a4) = a12.i32[1];
      result = (result + 4 * a2);
      v15 += v16;
      a3 += a4;
      a6 -= 4;
    }

    while (a6);
  }

  else
  {
    v24 = 4 * a2;
    a8.i32[0] = *(a7 + 40);
    a9.i32[0] = *(a7 + 44);
    v25 = a4;
    v26 = 4 * a4;
    v27 = result + 3 * a2;
    v28 = result + 2 * a2;
    v29 = result + a2;
    v30 = v15 + 6 * v16;
    v31 = 8 * v16;
    v32 = v15 + 4 * v16;
    v33 = 2 * a4;
    v34 = v15 + 2 * v16;
    v35 = a3 + v33 + v25;
    v36 = a3 + v33;
    v37 = a3 + v25;
    v38.i64[0] = 0xE800E800E800E800;
    v38.i64[1] = 0xE800E800E800E800;
    do
    {
      v39 = 0;
      v40 = 0;
      do
      {
        v41.i64[0] = 0x1800180018001800;
        v41.i64[1] = 0x1800180018001800;
        v42 = vmlal_u8(v41, result[v40 / 8], 0x1010101010101010);
        v43.i64[0] = 0x1800180018001800;
        v43.i64[1] = 0x1800180018001800;
        v44 = vmlal_u8(v43, *&v29[v40], 0x1010101010101010);
        v45.i64[0] = 0x1800180018001800;
        v45.i64[1] = 0x1800180018001800;
        v46 = vmlal_u8(v45, *&v28[v40], 0x1010101010101010);
        v47.i64[0] = 0x1800180018001800;
        v47.i64[1] = 0x1800180018001800;
        v48 = vmlal_u8(v47, *&v27[v40], 0x1010101010101010);
        v49 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v42.i8, a9, 0), v15[v39 / 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v42, a9, 0), *v15[v39 / 8].i8, a8, 0), 4uLL);
        v50 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v44.i8, a9, 0), *&v34[v39], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v44, a9, 0), *&v34[v39], a8, 0), 4uLL);
        v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v46.i8, a9, 0), *&v32[v39], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v46, a9, 0), *&v32[v39], a8, 0), 4uLL);
        v52 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, a9, 0), *&v30[v39], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, a9, 0), *&v30[v39], a8, 0), 4uLL);
        *&a3[v40 / 4] = vqrshrun_n_s16(vaddq_s16(v49, v38), 4uLL);
        *&v37[v40] = vqrshrun_n_s16(vaddq_s16(v50, v38), 4uLL);
        *&v36[v40] = vqrshrun_n_s16(vaddq_s16(v51, v38), 4uLL);
        *&v35[v40] = vqrshrun_n_s16(vaddq_s16(v52, v38), 4uLL);
        v40 += 8;
        v39 += 16;
      }

      while (a5 != v40);
      result = (result + v24);
      a3 = (a3 + v26);
      v27 += v24;
      v28 += v24;
      v29 += v24;
      v30 += v31;
      v32 += v31;
      v34 += v31;
      v15 = (v15 + v31);
      v35 += v26;
      v36 += v26;
      v37 += v26;
      a6 -= 4;
    }

    while (a6);
  }

  return result;
}

uint64_t *av1_dist_wtd_convolve_x_neon(uint64_t *result, int a2, _DWORD *_X2, int a4, int a5, int a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint16x4_t a14, uint64_t a15)
{
  if (*a15)
  {
    v16 = *a7;
    v17 = *(a7 + 8);
    if (*(a15 + 36))
    {
      return dist_wtd_convolve_x_dist_wtd_avg_neon(result, a2, _X2, a4, a5, a6, v16, v17, a9, a10, a11, a12, a13, a14, a8, a15);
    }

    _X15 = *(a15 + 8);
    v19 = *(a15 + 16);
    v20 = v16 + 2 * (a8 & 0xF) * v17;
    v21 = result - (v17 >> 1);
    v22 = (v21 + 1);
    if (a5 == 4)
    {
      v23 = vshr_n_s16(*(v20 + 4), 1uLL);
      v24 = (v21 + 3);
      v25 = vdup_lane_s16(v23, 0);
      v26 = vdup_lane_s16(v23, 1);
      v27 = vdup_lane_s16(v23, 2);
      v28 = vdup_lane_s16(v23, 3);
      v29 = 2 * v19;
      do
      {
        v30 = vmovl_u8(*v24);
        __asm
        {
          PRFM            #0, [X15]
          PRFM            #0, [X2]
        }

        *v30.i8 = vadd_s16(vhadd_u16(*_X15, vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v30, v30, 2uLL), v26), *v30.i8, v25), *&vextq_s8(v30, v30, 4uLL), v27), *&vextq_s8(v30, v30, 6uLL), v28), 2uLL)), 0xE800E800E800E800);
        *_X2 = vqrshrun_n_s16(v30, 4uLL).u32[0];
        v24 = (v24 + a2);
        _X2 = (_X2 + a4);
        _X15 = (_X15 + v29);
        --a6;
      }

      while (a6);
      return result;
    }

    v51 = vshrq_n_s16(*v20, 1uLL);
    v52 = vdupq_lane_s16(*v51.i8, 0);
    v53 = vdupq_lane_s16(*v51.i8, 1);
    v54 = vdupq_lane_s16(*v51.i8, 2);
    v55 = vdupq_lane_s16(*v51.i8, 3);
    v56 = vdupq_laneq_s16(v51, 4);
    v57 = vdupq_laneq_s16(v51, 5);
    v58 = vdupq_laneq_s16(v51, 6);
    v59 = vdupq_laneq_s16(v51, 7);
    if (a6 < 8)
    {
      v187 = a6;
      v189 = a5;
      v190 = a2;
      if (a6 < 1)
      {
        return result;
      }
    }

    else
    {
      v332 = 4 * v19;
      v60 = 3 * a4;
      v61 = 4 * a4;
      v62 = _X2 + v60 + v61;
      result = (7 * v19);
      v63 = _X2 + 2 * a4;
      v64 = &v63[v61];
      v65 = 8 * a2;
      v66 = _X2 + a4;
      v67 = &v66[v61];
      v68 = &_X2[v61 / 4];
      v69 = _X2 + v60;
      v70 = 8 * a4;
      v71 = v21 + 8;
      v72.i64[0] = 0xE800E800E800E800;
      v72.i64[1] = 0xE800E800E800E800;
      do
      {
        v73 = 0;
        *v74.i8 = *v22;
        *v75.i8 = *(v22 + a2);
        v76 = (v22 + a2 + a2);
        v77.i64[0] = *v76;
        v78 = (v76 + a2);
        v79.i64[0] = *v78;
        v80 = (v78 + a2);
        v81 = *v80;
        v82 = (v80 + a2);
        v83 = *v82;
        v84 = (v82 + a2);
        v74.i64[1] = v81;
        v75.i64[1] = v83;
        v85 = vtrn1q_s8(v74, v75);
        v86 = vtrn2q_s8(v74, v75);
        v77.i64[1] = *v84;
        v79.i64[1] = *(v84 + a2);
        v87 = vtrn1q_s8(v77, v79);
        v88 = vtrn2q_s8(v77, v79);
        v89 = vtrn1q_s16(v85, v87);
        _X9 = _X15 + 2 * v19;
        v91 = vtrn2q_s16(v85, v87);
        v92 = vtrn1q_s16(v86, v88);
        v93 = vtrn2q_s16(v86, v88);
        v94 = vuzp1q_s32(v89, v92);
        v95 = vuzp2q_s32(v89, v92);
        v96 = vuzp1q_s32(v91, v93);
        __asm
        {
          PRFM            #0, [X15]
          PRFM            #0, [X9]
        }

        _X9 = _X15 + 4 * v19;
        __asm { PRFM            #0, [X9] }

        _X9 = _X15 + 6 * v19;
        __asm { PRFM            #0, [X9] }

        _X9 = &_X15[v332 / 4];
        v104 = vzip2_s32(*v91.i8, *&vextq_s8(v91, v91, 8uLL));
        v105 = vmovl_u8(*v94.i8);
        v106 = vmovl_high_u8(v94);
        v107 = vmovl_u8(*v96.i8);
        v108 = vmovl_high_u8(v96);
        v109 = vmovl_u8(*v95.i8);
        v110 = vmovl_high_u8(v95);
        v111 = vmovl_u8(v104);
        __asm { PRFM            #0, [X9] }

        _X9 = _X15 + 10 * v19;
        __asm { PRFM            #0, [X9] }

        _X9 = _X15 + 12 * v19;
        __asm { PRFM            #0, [X9] }

        _X9 = _X15 + 2 * result;
        __asm { PRFM            #0, [X9] }

        v119 = _X15;
        do
        {
          v120.i64[0] = *&v71[v73];
          v121 = &v71[v73 + a2];
          v122.i64[0] = *v121;
          v123 = (v121 + a2);
          v124.i64[0] = *v123;
          v125 = (v123 + a2);
          v126.i64[0] = *v125;
          v127 = (v125 + a2);
          v128 = *v127;
          v129 = (v127 + a2);
          v130 = *v129;
          v131 = (v129 + a2);
          v120.i64[1] = v128;
          v122.i64[1] = v130;
          v132 = vtrn1q_s8(v120, v122);
          v124.i64[1] = *v131;
          v133 = vtrn2q_s8(v120, v122);
          v126.i64[1] = *(v131 + a2);
          v134 = vtrn1q_s8(v124, v126);
          v135 = vtrn2q_s8(v124, v126);
          v136 = vtrn1q_s16(v132, v134);
          v137 = vtrn2q_s16(v132, v134);
          v138 = vtrn1q_s16(v133, v135);
          v139 = vtrn2q_s16(v133, v135);
          v140 = vuzp1q_s32(v136, v138);
          v141 = vuzp2q_s32(v136, v138);
          v142 = vuzp1q_s32(v137, v139);
          v143 = vuzp2q_s32(v137, v139);
          v144 = vmovl_u8(*v140.i8);
          v145 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v111, v58), v110, v57), v109, v56), v108, v55), v107, v54), v106, v53), v105, v52);
          v105 = vmovl_high_u8(v140);
          v146 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v111, v57), v110, v56), v109, v55), v108, v54), v107, v53), v106, v52);
          v106 = vmovl_u8(*v142.i8);
          v147 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v111, v56), v110, v55), v109, v54), v108, v53), v107, v52);
          v107 = vmovl_high_u8(v142);
          v148 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v111, v55), v110, v54), v109, v53), v108, v52);
          v108 = vmovl_u8(*v141.i8);
          v149 = vmlaq_s16(vmlaq_s16(vmulq_s16(v111, v54), v110, v53), v109, v52);
          v109 = vmovl_high_u8(v141);
          v150 = vmlaq_s16(vmulq_s16(v111, v53), v110, v52);
          v110 = vmovl_u8(*v143.i8);
          v151 = vmulq_s16(v111, v52);
          v111 = vmovl_high_u8(v143);
          v143.i64[0] = 0x1800180018001800;
          v143.i64[1] = 0x1800180018001800;
          v152 = vrsraq_n_s16(v143, vmlaq_s16(v145, v59, v144), 2uLL);
          v145.i64[0] = 0x1800180018001800;
          v145.i64[1] = 0x1800180018001800;
          v153 = vrsraq_n_s16(v145, vmlaq_s16(vmlaq_s16(v146, v58, v144), v59, v105), 2uLL);
          v146.i64[0] = 0x1800180018001800;
          v146.i64[1] = 0x1800180018001800;
          v154 = vrsraq_n_s16(v146, vmlaq_s16(vmlaq_s16(vmlaq_s16(v147, v57, v144), v58, v105), v59, v106), 2uLL);
          v147.i64[0] = 0x1800180018001800;
          v147.i64[1] = 0x1800180018001800;
          v155 = vrsraq_n_s16(v147, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v148, v56, v144), v57, v105), v58, v106), v59, v107), 2uLL);
          v148.i64[0] = 0x1800180018001800;
          v148.i64[1] = 0x1800180018001800;
          v156 = vrsraq_n_s16(v148, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v149, v55, v144), v56, v105), v57, v106), v58, v107), v59, v108), 2uLL);
          v149.i64[0] = 0x1800180018001800;
          v149.i64[1] = 0x1800180018001800;
          v157 = vrsraq_n_s16(v149, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v150, v54, v144), v55, v105), v56, v106), v57, v107), v58, v108), v59, v109), 2uLL);
          v150.i64[0] = 0x1800180018001800;
          v150.i64[1] = 0x1800180018001800;
          v158 = vrsraq_n_s16(v150, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v151, v53, v144), v54, v105), v55, v106), v56, v107), v57, v108), v58, v109), v59, v110), 2uLL);
          v159 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v53, v105), v52, v144), v54, v106), v55, v107), v56, v108), v57, v109), v58, v110), v59, v111);
          v144.i64[0] = 0x1800180018001800;
          v144.i64[1] = 0x1800180018001800;
          v160 = vrsraq_n_s16(v144, v159, 2uLL);
          v161 = vtrn1q_s16(v152, v153);
          v162 = vtrn2q_s16(v152, v153);
          v163 = vtrn1q_s16(v154, v155);
          v164 = vtrn2q_s16(v154, v155);
          v165 = vtrn1q_s16(v156, v157);
          v166 = vtrn2q_s16(v156, v157);
          v167 = vtrn1q_s16(v158, v160);
          v168 = vtrn2q_s16(v158, v160);
          v169 = vtrn1q_s32(v161, v163);
          v170 = vtrn2q_s32(v161, v163);
          v171 = vtrn1q_s32(v162, v164);
          v172 = vtrn2q_s32(v162, v164);
          v173 = vtrn1q_s32(v165, v167);
          v174 = vtrn2q_s32(v165, v167);
          v175 = vtrn1q_s32(v166, v168);
          v176 = vzip2q_s64(v169, v173);
          v169.i64[1] = v173.i64[0];
          v177 = vtrn2q_s32(v166, v168);
          v178 = vzip2q_s64(v171, v175);
          v171.i64[1] = v175.i64[0];
          v179 = vzip2q_s64(v170, v174);
          v170.i64[1] = v174.i64[0];
          v174.i64[0] = v172.i64[0];
          v174.i64[1] = v177.i64[0];
          v180 = vzip2q_s64(v172, v177);
          v181 = *(v119 + 4 * v19);
          v182 = *(v119 + 6 * v19);
          v183 = vhaddq_u16(*v119, v169);
          *v169.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v119 + 2 * v19), v171), v72), 4uLL);
          *&_X2[v73 / 4] = vqrshrun_n_s16(vaddq_s16(v183, v72), 4uLL);
          *&v66[v73] = v169.i64[0];
          *&v63[v73] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v181, v170), v72), 4uLL);
          *&v69[v73] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v182, v174), v72), 4uLL);
          v184 = vhaddq_u16(*(v119 + 2 * v19 + 2 * v332), v178);
          v185 = vaddq_s16(vhaddq_u16(*(v119 + 4 * v19 + 2 * v332), v179), v72);
          v186 = vaddq_s16(vhaddq_u16(*(v119 + 6 * v19 + 2 * v332), v180), v72);
          *&v68[v73 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v119 + 2 * v332), v176), v72), 4uLL);
          *&v67[v73] = vqrshrun_n_s16(vaddq_s16(v184, v72), 4uLL);
          *&v64[v73] = vqrshrun_n_s16(v185, 4uLL);
          *&v62[v73] = vqrshrun_n_s16(v186, 4uLL);
          ++v119;
          v73 += 8;
        }

        while (a5 != v73);
        _X15 += 2 * v19;
        v22 = (v22 + v65);
        _X2 = (_X2 + v70);
        v187 = a6 - 8;
        v62 += v70;
        v64 += v70;
        v67 += v70;
        v68 = (v68 + v70);
        v69 += v70;
        v63 += v70;
        v66 += v70;
        v71 += v65;
        v188 = a6 <= 15;
        a6 -= 8;
      }

      while (!v188);
      v189 = a5;
      v190 = a2;
      if (v187 < 1)
      {
        return result;
      }
    }

    v315.i64[0] = 0xE800E800E800E800;
    v315.i64[1] = 0xE800E800E800E800;
    do
    {
      v316 = 0;
      v317 = vmovl_u8(*v22);
      __asm { PRFM            #0, [X15] }

      v319 = _X15;
      do
      {
        v320 = vmovl_u8(v22[v316 / 2 + 1]);
        v321.i64[0] = 0x1800180018001800;
        v321.i64[1] = 0x1800180018001800;
        v322 = *v319++;
        *&_X2[v316] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v322, vrsraq_n_s16(v321, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v317, v52), vextq_s8(v317, v320, 2uLL), v53), vextq_s8(v317, v320, 4uLL), v54), vextq_s8(v317, v320, 6uLL), v55), vextq_s8(v317, v320, 8uLL), v56), vextq_s8(v317, v320, 0xAuLL), v57), vextq_s8(v317, v320, 0xCuLL), v58), vextq_s8(v317, v320, 0xEuLL), v59), 2uLL)), v315), 4uLL);
        v316 += 2;
        v317 = v320;
      }

      while (v189 != (v316 * 4));
      v22 = (v22 + v190);
      _X15 = (_X15 + 2 * v19);
      _X2 = (_X2 + a4);
      _VF = __OFSUB__(v187--, 1);
    }

    while (!((v187 < 0) ^ _VF | (v187 == 0)));
    return result;
  }

  v37 = *(a7 + 8);
  _X8 = *(a15 + 8);
  v39 = *(a15 + 16);
  v40 = *a7 + 2 * (a8 & 0xF) * v37;
  v41 = (result - (v37 >> 1) + 1);
  if (a5 == 4)
  {
    v42 = vshr_n_s16(*(v40 + 4), 1uLL);
    v43 = vdup_lane_s16(v42, 0);
    v44 = vdup_lane_s16(v42, 1);
    v45 = vdup_lane_s16(v42, 2);
    v46 = (result - (v37 >> 1) + 3);
    v47 = vdup_lane_s16(v42, 3);
    v48 = 2 * v39;
    do
    {
      v49 = vmovl_u8(*v46);
      __asm { PRFM            #0, [X8] }

      *_X8 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v49, v49, 2uLL), v44), *v49.i8, v43), *&vextq_s8(v49, v49, 4uLL), v45), *&vextq_s8(v49, v49, 6uLL), v47), 2uLL);
      v46 = (v46 + a2);
      _X8 = (_X8 + v48);
      --a6;
    }

    while (a6);
    return result;
  }

  v191 = vshrq_n_s16(*v40, 1uLL);
  v192 = vdupq_lane_s16(*v191.i8, 0);
  v193 = vdupq_lane_s16(*v191.i8, 1);
  v194 = vdupq_lane_s16(*v191.i8, 2);
  v195 = vdupq_lane_s16(*v191.i8, 3);
  v196 = vdupq_laneq_s16(v191, 4);
  v197 = vdupq_laneq_s16(v191, 5);
  v198 = vdupq_laneq_s16(v191, 6);
  v199 = vdupq_laneq_s16(v191, 7);
  if (a6 < 8)
  {
    v314 = a6;
    if (a6 < 1)
    {
      return result;
    }

    goto LABEL_35;
  }

  v200 = 2 * v39;
  result = (8 * a2);
  do
  {
    *v201.i8 = *v41;
    *v202.i8 = *(v41 + a2);
    v203 = (v41 + a2 + a2);
    v204.i64[0] = *v203;
    v205 = (v203 + a2);
    v206.i64[0] = *v205;
    v207 = (v205 + a2);
    v208 = *v207;
    v209 = (v207 + a2);
    v210 = *v209;
    v211 = (v209 + a2);
    v201.i64[1] = v208;
    v202.i64[1] = v210;
    v212 = vtrn1q_s8(v201, v202);
    v213 = vtrn2q_s8(v201, v202);
    v204.i64[1] = *v211;
    v206.i64[1] = *(v211 + a2);
    v214 = vtrn1q_s8(v204, v206);
    v215 = vtrn2q_s8(v204, v206);
    v216 = vtrn1q_s16(v212, v214);
    _X2 = _X8 + 2 * v39;
    v218 = vtrn2q_s16(v212, v214);
    v219 = vtrn1q_s16(v213, v215);
    v220 = vtrn2q_s16(v213, v215);
    v221 = vuzp1q_s32(v216, v219);
    v222 = vuzp2q_s32(v216, v219);
    v223 = vuzp1q_s32(v218, v220);
    _X3 = _X8 + 4 * v39;
    _X6 = _X8 + 6 * v39;
    v226 = vzip2_s32(*v218.i8, *&vextq_s8(v218, v218, 8uLL));
    v227 = vmovl_u8(*v221.i8);
    __asm
    {
      PRFM            #0, [X8]
      PRFM            #0, [X2]
    }

    _X2 = &_X8[v39];
    v231 = vmovl_high_u8(v221);
    v232 = vmovl_u8(*v223.i8);
    v233 = vmovl_high_u8(v223);
    v234 = vmovl_u8(*v222.i8);
    v235 = vmovl_high_u8(v222);
    v236 = vmovl_u8(v226);
    __asm
    {
      PRFM            #0, [X3]
      PRFM            #0, [X6]
      PRFM            #0, [X2]
    }

    _X2 = _X8 + 10 * v39;
    __asm { PRFM            #0, [X2] }

    _X2 = _X8 + 12 * v39;
    __asm { PRFM            #0, [X2] }

    _X2 = _X8 + 14 * v39;
    __asm { PRFM            #0, [X2] }

    v246 = (v41 + 7);
    v247 = a5;
    v248 = _X8;
    do
    {
      v249.i64[0] = *v246;
      v250.i64[0] = *(v246 + a2);
      v251 = (v246 + a2 + a2);
      v252.i64[0] = *v251;
      v253.i64[0] = *(v251 + a2);
      v254 = (v251 + a2 + a2);
      v255 = *v254;
      v256 = (v254 + a2);
      v257 = *v256;
      v258 = (v256 + a2);
      v249.i64[1] = v255;
      v250.i64[1] = v257;
      v252.i64[1] = *v258;
      v253.i64[1] = *(v258 + a2);
      v259 = vtrn1q_s8(v249, v250);
      v260 = vtrn2q_s8(v249, v250);
      v261 = vtrn1q_s8(v252, v253);
      v262 = vtrn2q_s8(v252, v253);
      v263 = vtrn1q_s16(v259, v261);
      v264 = vtrn2q_s16(v259, v261);
      v265 = vtrn1q_s16(v260, v262);
      v266 = vtrn2q_s16(v260, v262);
      v267 = vuzp1q_s32(v263, v265);
      v268 = vuzp2q_s32(v263, v265);
      v269 = vuzp1q_s32(v264, v266);
      v270 = vuzp2q_s32(v264, v266);
      v271 = vmovl_u8(*v267.i8);
      v272 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v236, v198), v235, v197), v234, v196), v233, v195), v232, v194), v231, v193), v227, v192);
      v227 = vmovl_high_u8(v267);
      v273 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v236, v197), v235, v196), v234, v195), v233, v194), v232, v193), v231, v192);
      v231 = vmovl_u8(*v269.i8);
      v274 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v236, v196), v235, v195), v234, v194), v233, v193), v232, v192);
      v232 = vmovl_high_u8(v269);
      v275 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v236, v195), v235, v194), v234, v193), v233, v192);
      v233 = vmovl_u8(*v268.i8);
      v276 = vmlaq_s16(vmlaq_s16(vmulq_s16(v236, v194), v235, v193), v234, v192);
      v234 = vmovl_high_u8(v268);
      v277 = vmlaq_s16(vmulq_s16(v236, v193), v235, v192);
      v235 = vmovl_u8(*v270.i8);
      v278 = vmulq_s16(v236, v192);
      v236 = vmovl_high_u8(v270);
      v270.i64[0] = 0x1800180018001800;
      v270.i64[1] = 0x1800180018001800;
      v279.i64[0] = 0x1800180018001800;
      v279.i64[1] = 0x1800180018001800;
      v280 = vrsraq_n_s16(v270, vmlaq_s16(v272, v199, v271), 2uLL);
      v272.i64[0] = 0x1800180018001800;
      v272.i64[1] = 0x1800180018001800;
      v281 = vrsraq_n_s16(v279, vmlaq_s16(vmlaq_s16(v273, v198, v271), v199, v227), 2uLL);
      v273.i64[0] = 0x1800180018001800;
      v273.i64[1] = 0x1800180018001800;
      v282 = vrsraq_n_s16(v272, vmlaq_s16(vmlaq_s16(vmlaq_s16(v274, v197, v271), v198, v227), v199, v231), 2uLL);
      v274.i64[0] = 0x1800180018001800;
      v274.i64[1] = 0x1800180018001800;
      v283 = vrsraq_n_s16(v273, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v275, v196, v271), v197, v227), v198, v231), v199, v232), 2uLL);
      v275.i64[0] = 0x1800180018001800;
      v275.i64[1] = 0x1800180018001800;
      v284 = vrsraq_n_s16(v274, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v276, v195, v271), v196, v227), v197, v231), v198, v232), v199, v233), 2uLL);
      v276.i64[0] = 0x1800180018001800;
      v276.i64[1] = 0x1800180018001800;
      v285 = vrsraq_n_s16(v275, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v277, v194, v271), v195, v227), v196, v231), v197, v232), v198, v233), v199, v234), 2uLL);
      v286 = vrsraq_n_s16(v276, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v278, v193, v271), v194, v227), v195, v231), v196, v232), v197, v233), v198, v234), v199, v235), 2uLL);
      v287 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v193, v227), v192, v271), v194, v231), v195, v232), v196, v233), v197, v234), v198, v235), v199, v236);
      v271.i64[0] = 0x1800180018001800;
      v271.i64[1] = 0x1800180018001800;
      v288 = vrsraq_n_s16(v271, v287, 2uLL);
      v289 = vtrn1q_s16(v280, v281);
      v290 = vtrn2q_s16(v280, v281);
      v291 = vtrn1q_s16(v282, v283);
      v292 = vtrn2q_s16(v282, v283);
      v293 = vtrn1q_s16(v284, v285);
      v294 = vtrn2q_s16(v284, v285);
      v295 = vtrn1q_s16(v286, v288);
      v296 = vtrn2q_s16(v286, v288);
      v297 = vtrn1q_s32(v289, v291);
      v298 = vtrn2q_s32(v289, v291);
      v299 = vtrn1q_s32(v290, v292);
      v300 = vtrn2q_s32(v290, v292);
      v301 = vtrn1q_s32(v293, v295);
      v302 = vtrn2q_s32(v293, v295);
      v303 = vtrn1q_s32(v294, v296);
      v304 = vzip2q_s64(v297, v301);
      v305 = vzip2q_s64(v299, v303);
      v297.i64[1] = v301.i64[0];
      v299.i64[1] = v303.i64[0];
      v306 = vzip2q_s64(v298, v302);
      v298.i64[1] = v302.i64[0];
      v307 = vtrn2q_s32(v294, v296);
      v308 = vzip2q_s64(v300, v307);
      v300.i64[1] = v307.i64[0];
      *v248 = v297;
      *(v248 + 2 * v39) = v299;
      v309 = (v248 + v200 + v200);
      *v309 = v298;
      v310 = (v309 + v200);
      *v310 = v300;
      v311 = (v310 + v200);
      *v311 = v304;
      v312 = (v311 + v200);
      *v312 = v305;
      v313 = (v312 + v200);
      *v313 = v306;
      *(v313 + 2 * v39) = v308;
      ++v246;
      ++v248;
      v247 -= 8;
    }

    while (v247);
    v41 = (result + v41);
    _X8 += 2 * v39;
    v314 = a6 - 8;
    v188 = a6 <= 15;
    a6 -= 8;
  }

  while (!v188);
  if (v314 >= 1)
  {
    do
    {
LABEL_35:
      v323 = vmovl_u8(*v41);
      __asm { PRFM            #0, [X8] }

      v325 = 1;
      v326 = a5;
      v327 = _X8;
      do
      {
        v328 = vmovl_u8(v41[v325]);
        v329.i64[0] = 0x1800180018001800;
        v329.i64[1] = 0x1800180018001800;
        *v327++ = vrsraq_n_s16(v329, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v323, v192), vextq_s8(v323, v328, 2uLL), v193), vextq_s8(v323, v328, 4uLL), v194), vextq_s8(v323, v328, 6uLL), v195), vextq_s8(v323, v328, 8uLL), v196), vextq_s8(v323, v328, 0xAuLL), v197), vextq_s8(v323, v328, 0xCuLL), v198), vextq_s8(v323, v328, 0xEuLL), v199), 2uLL);
        ++v325;
        v323 = v328;
        v326 -= 8;
      }

      while (v326);
      v41 = (v41 + a2);
      _X8 = (_X8 + 2 * v39);
      _VF = __OFSUB__(v314--, 1);
    }

    while (!((v314 < 0) ^ _VF | (v314 == 0)));
  }

  return result;
}

uint64_t *dist_wtd_convolve_x_dist_wtd_avg_neon(uint64_t *result, int a2, _DWORD *_X2, int a4, int a5, int a6, uint64_t a7, unsigned __int16 a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint16x4_t a14, char a15, uint64_t a16)
{
  v18 = a7 + 2 * (a15 & 0xF) * a8;
  v19 = result - (a8 >> 1);
  v20 = (v19 + 1);
  _X17 = *(a16 + 8);
  v22 = *(a16 + 16);
  if (a5 == 4)
  {
    v23 = vshr_n_s16(*(v18 + 4), 1uLL);
    v24 = (v19 + 3);
    v25 = vdup_lane_s16(v23, 0);
    v26 = vdup_lane_s16(v23, 1);
    v27 = vdup_lane_s16(v23, 2);
    v28 = vdup_lane_s16(v23, 3);
    a13.i32[0] = *(a16 + 40);
    a14.i32[0] = *(a16 + 44);
    v29 = 2 * v22;
    do
    {
      v30 = vmovl_u8(*v24);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X2]
      }

      v37 = vmlal_lane_u16(vmull_lane_u16(vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmul_s16(*&vextq_s8(v30, v30, 2uLL), v26), *v30.i8, v25), *&vextq_s8(v30, v30, 4uLL), v27), *&vextq_s8(v30, v30, 6uLL), v28), 2uLL), a14, 0), *_X17, a13, 0);
      *v37.i8 = vadd_s16(vshrn_n_s32(v37, 4uLL), 0xE800E800E800E800);
      *_X2 = vqrshrun_n_s16(v37, 4uLL).u32[0];
      v24 = (v24 + a2);
      _X2 = (_X2 + a4);
      _X17 = (_X17 + v29);
      --a6;
    }

    while (a6);
    return result;
  }

  v38 = vshrq_n_s16(*v18, 1uLL);
  v39 = vdupq_lane_s16(*v38.i8, 0);
  v40 = vdupq_lane_s16(*v38.i8, 1);
  v41 = vdupq_lane_s16(*v38.i8, 2);
  v42 = vdupq_lane_s16(*v38.i8, 3);
  v43 = vdupq_laneq_s16(v38, 4);
  v44 = vdupq_laneq_s16(v38, 5);
  v45 = vdupq_laneq_s16(v38, 6);
  v46 = vdupq_laneq_s16(v38, 7);
  v195 = *(a16 + 40);
  v196 = *(a16 + 44);
  if (a6 < 8)
  {
    v184 = a6;
    if (a6 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v198 = 4 * v22;
  v16.i32[0] = *(a16 + 40);
  v17.i32[0] = *(a16 + 44);
  v47 = 3 * a4;
  v48 = 4 * a4;
  v49 = _X2 + v47 + v48;
  v50 = _X2 + 2 * a4;
  v51 = &v50[v48];
  v52 = 8 * a2;
  v53 = _X2 + a4;
  v54 = &v53[v48];
  v55 = &_X2[v48 / 4];
  v56 = _X2 + v47;
  v57 = 8 * a4;
  v58 = v19 + 8;
  v59.i64[0] = 0xE800E800E800E800;
  v59.i64[1] = 0xE800E800E800E800;
  do
  {
    v60 = 0;
    *v61.i8 = *v20;
    *v62.i8 = *(v20 + a2);
    v63 = (v20 + a2 + a2);
    v64.i64[0] = *v63;
    v65 = (v63 + a2);
    v66.i64[0] = *v65;
    v67 = (v65 + a2);
    v68 = *v67;
    v69 = (v67 + a2);
    v70 = *v69;
    v71 = (v69 + a2);
    v61.i64[1] = v68;
    v62.i64[1] = v70;
    v72 = vtrn1q_s8(v61, v62);
    v73 = vtrn2q_s8(v61, v62);
    v64.i64[1] = *v71;
    v66.i64[1] = *(v71 + a2);
    v74 = vtrn1q_s8(v64, v66);
    v75 = vtrn2q_s8(v64, v66);
    v76 = vtrn1q_s16(v72, v74);
    _X8 = _X17 + 2 * v22;
    v78 = vtrn2q_s16(v72, v74);
    v79 = vtrn1q_s16(v73, v75);
    v80 = vtrn2q_s16(v73, v75);
    v81 = vuzp1q_s32(v76, v79);
    v82 = vuzp2q_s32(v76, v79);
    v83 = vuzp1q_s32(v78, v80);
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X8]
    }

    _X8 = _X17 + 4 * v22;
    __asm { PRFM            #0, [X8] }

    _X8 = _X17 + 6 * v22;
    __asm { PRFM            #0, [X8] }

    _X8 = &_X17[v198 / 4];
    v91 = vzip2_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
    v92 = vmovl_u8(*v81.i8);
    v93 = vmovl_high_u8(v81);
    v94 = vmovl_u8(*v83.i8);
    v95 = vmovl_high_u8(v83);
    v96 = vmovl_u8(*v82.i8);
    v97 = vmovl_high_u8(v82);
    v98 = vmovl_u8(v91);
    __asm { PRFM            #0, [X8] }

    _X8 = _X17 + 10 * v22;
    __asm { PRFM            #0, [X8] }

    _X8 = _X17 + 12 * v22;
    __asm { PRFM            #0, [X8] }

    _X8 = _X17 + 14 * v22;
    __asm { PRFM            #0, [X8] }

    v106 = _X17;
    do
    {
      v107.i64[0] = *&v58[v60];
      v108 = &v58[v60 + a2];
      v109.i64[0] = *v108;
      v110 = (v108 + a2);
      v111.i64[0] = *v110;
      v112 = (v110 + a2);
      v113.i64[0] = *v112;
      v114 = (v112 + a2);
      v115 = *v114;
      v116 = (v114 + a2);
      v117 = *v116;
      result = (v116 + a2);
      v107.i64[1] = v115;
      v109.i64[1] = v117;
      v118 = vtrn1q_s8(v107, v109);
      v119 = vtrn2q_s8(v107, v109);
      v111.i64[1] = *result;
      v113.i64[1] = *(result + a2);
      v120 = vtrn1q_s8(v111, v113);
      v121 = vtrn2q_s8(v111, v113);
      v122 = vtrn1q_s16(v118, v120);
      v123 = vtrn2q_s16(v118, v120);
      v124 = vtrn1q_s16(v119, v121);
      v125 = vtrn2q_s16(v119, v121);
      v126 = vuzp1q_s32(v122, v124);
      v127 = vuzp2q_s32(v122, v124);
      v128 = vuzp1q_s32(v123, v125);
      v129 = vuzp2q_s32(v123, v125);
      v130 = vmovl_u8(*v126.i8);
      v131 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v98, v45), v97, v44), v96, v43), v95, v42), v94, v41), v93, v40), v92, v39);
      v92 = vmovl_high_u8(v126);
      v132 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v98, v44), v97, v43), v96, v42), v95, v41), v94, v40), v93, v39);
      v93 = vmovl_u8(*v128.i8);
      v133 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v98, v43), v97, v42), v96, v41), v95, v40), v94, v39);
      v94 = vmovl_high_u8(v128);
      v134 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v98, v42), v97, v41), v96, v40), v95, v39);
      v95 = vmovl_u8(*v127.i8);
      v135 = vmlaq_s16(vmlaq_s16(vmulq_s16(v98, v41), v97, v40), v96, v39);
      v96 = vmovl_high_u8(v127);
      v136 = vmlaq_s16(vmulq_s16(v98, v40), v97, v39);
      v97 = vmovl_u8(*v129.i8);
      v137 = vmulq_s16(v98, v39);
      v98 = vmovl_high_u8(v129);
      v129.i64[0] = 0x1800180018001800;
      v129.i64[1] = 0x1800180018001800;
      v138 = vrsraq_n_s16(v129, vmlaq_s16(v131, v46, v130), 2uLL);
      v131.i64[0] = 0x1800180018001800;
      v131.i64[1] = 0x1800180018001800;
      v139 = vrsraq_n_s16(v131, vmlaq_s16(vmlaq_s16(v132, v45, v130), v46, v92), 2uLL);
      v132.i64[0] = 0x1800180018001800;
      v132.i64[1] = 0x1800180018001800;
      v140 = vrsraq_n_s16(v132, vmlaq_s16(vmlaq_s16(vmlaq_s16(v133, v44, v130), v45, v92), v46, v93), 2uLL);
      v133.i64[0] = 0x1800180018001800;
      v133.i64[1] = 0x1800180018001800;
      v141 = vrsraq_n_s16(v133, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v134, v43, v130), v44, v92), v45, v93), v46, v94), 2uLL);
      v134.i64[0] = 0x1800180018001800;
      v134.i64[1] = 0x1800180018001800;
      v142 = vrsraq_n_s16(v134, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v135, v42, v130), v43, v92), v44, v93), v45, v94), v46, v95), 2uLL);
      v135.i64[0] = 0x1800180018001800;
      v135.i64[1] = 0x1800180018001800;
      v143 = vrsraq_n_s16(v135, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v136, v41, v130), v42, v92), v43, v93), v44, v94), v45, v95), v46, v96), 2uLL);
      v136.i64[0] = 0x1800180018001800;
      v136.i64[1] = 0x1800180018001800;
      v144 = vrsraq_n_s16(v136, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v137, v40, v130), v41, v92), v42, v93), v43, v94), v44, v95), v45, v96), v46, v97), 2uLL);
      v145 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v40, v92), v39, v130), v41, v93), v42, v94), v43, v95), v44, v96), v45, v97), v46, v98);
      v130.i64[0] = 0x1800180018001800;
      v130.i64[1] = 0x1800180018001800;
      v146 = vrsraq_n_s16(v130, v145, 2uLL);
      v147 = vtrn1q_s16(v138, v139);
      v148 = vtrn2q_s16(v138, v139);
      v149 = vtrn1q_s16(v140, v141);
      v150 = vtrn2q_s16(v140, v141);
      v151 = vtrn1q_s16(v142, v143);
      v152 = vtrn2q_s16(v142, v143);
      v153 = vtrn1q_s16(v144, v146);
      v154 = vtrn2q_s16(v144, v146);
      v155 = vtrn1q_s32(v147, v149);
      v156 = vtrn2q_s32(v147, v149);
      v157 = vtrn1q_s32(v148, v150);
      v158 = vtrn2q_s32(v148, v150);
      v159 = vtrn1q_s32(v151, v153);
      v160 = vtrn2q_s32(v151, v153);
      v161 = vtrn1q_s32(v152, v154);
      v162 = vtrn2q_s32(v152, v154);
      v163 = vzip2q_s64(v155, v159);
      v164 = vdupq_lane_s16(v17, 0);
      v164.i64[0] = vextq_s8(v164, v164, 8uLL).u64[0];
      v165 = vmlal_high_lane_u16(vmull_u16(*v159.i8, *v164.i8), *v106, v16, 0);
      v166 = vzip2q_s64(v157, v161);
      v167 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v155.i8, v17, 0), *v106->i8, v16, 0), 4uLL), v165, 4uLL);
      v168 = *(v106 + 2 * v22);
      v169 = vmlal_lane_u16(vmull_lane_u16(*v157.i8, v17, 0), *v168.i8, v16, 0);
      v170 = vmlal_high_lane_u16(vmull_u16(*v161.i8, *v164.i8), v168, v16, 0);
      v171 = *(v106 + 4 * v22);
      v172 = vshrn_high_n_s32(vshrn_n_s32(v169, 4uLL), v170, 4uLL);
      v173 = vzip2q_s64(v156, v160);
      v174 = vmlal_lane_u16(vmull_lane_u16(*v156.i8, v17, 0), *v171.i8, v16, 0);
      v175 = vmlal_high_lane_u16(vmull_u16(*v160.i8, *v164.i8), v171, v16, 0);
      v176 = vmull_u16(*v162.i8, *v164.i8);
      v177 = vzip2q_s64(v158, v162);
      v178 = vshrn_high_n_s32(vshrn_n_s32(v174, 4uLL), v175, 4uLL);
      v179 = *(v106 + 6 * v22);
      *&_X2[v60 / 4] = vqrshrun_n_s16(vaddq_s16(v167, v59), 4uLL);
      *&v53[v60] = vqrshrun_n_s16(vaddq_s16(v172, v59), 4uLL);
      *&v50[v60] = vqrshrun_n_s16(vaddq_s16(v178, v59), 4uLL);
      *&v56[v60] = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v158.i8, v17, 0), *v179.i8, v16, 0), 4uLL), vmlal_high_lane_u16(v176, v179, v16, 0), 4uLL), v59), 4uLL);
      v180 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v163.i8, v17, 0), *&v106->i8[2 * v198], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v163, v17, 0), *(v106 + 2 * v198), v16, 0), 4uLL);
      v181 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v166.i8, v17, 0), *&v106->i8[2 * v22 + 2 * v198], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v166, v17, 0), *(v106 + 2 * v22 + 2 * v198), v16, 0), 4uLL);
      v182 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v173.i8, v17, 0), *&v106->i8[4 * v22 + 2 * v198], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v173, v17, 0), *(v106 + 4 * v22 + 2 * v198), v16, 0), 4uLL);
      v183 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v177.i8, v17, 0), *&v106->i8[6 * v22 + 2 * v198], v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v177, v17, 0), *(v106 + 6 * v22 + 2 * v198), v16, 0), 4uLL);
      *&v55[v60 / 4] = vqrshrun_n_s16(vaddq_s16(v180, v59), 4uLL);
      *&v54[v60] = vqrshrun_n_s16(vaddq_s16(v181, v59), 4uLL);
      *&v51[v60] = vqrshrun_n_s16(vaddq_s16(v182, v59), 4uLL);
      *&v49[v60] = vqrshrun_n_s16(vaddq_s16(v183, v59), 4uLL);
      ++v106;
      v60 += 8;
    }

    while (a5 != v60);
    _X17 += 2 * v22;
    v20 = (v20 + v52);
    _X2 = (_X2 + v57);
    v184 = a6 - 8;
    v49 += v57;
    v51 += v57;
    v54 += v57;
    v55 = (v55 + v57);
    v56 += v57;
    v50 += v57;
    v53 += v57;
    v58 += v52;
    v185 = a6 <= 15;
    a6 -= 8;
  }

  while (!v185);
  if (v184 >= 1)
  {
LABEL_14:
    v16.i32[0] = v195;
    v17.i32[0] = v196;
    v186.i64[0] = 0xE800E800E800E800;
    v186.i64[1] = 0xE800E800E800E800;
    do
    {
      v187 = 0;
      v188 = vmovl_u8(*v20);
      __asm { PRFM            #0, [X17] }

      v190 = _X17;
      do
      {
        v191 = vmovl_u8(v20[v187 / 2 + 1]);
        v192.i64[0] = 0x1800180018001800;
        v192.i64[1] = 0x1800180018001800;
        v193 = vrsraq_n_s16(v192, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v188, v39), vextq_s8(v188, v191, 2uLL), v40), vextq_s8(v188, v191, 4uLL), v41), vextq_s8(v188, v191, 6uLL), v42), vextq_s8(v188, v191, 8uLL), v43), vextq_s8(v188, v191, 0xAuLL), v44), vextq_s8(v188, v191, 0xCuLL), v45), vextq_s8(v188, v191, 0xEuLL), v46), 2uLL);
        v194 = *v190++;
        *&_X2[v187] = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v193.i8, v17, 0), *v194.i8, v16, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v193, v17, 0), v194, v16, 0), 4uLL), v186), 4uLL);
        v187 += 2;
        v188 = v191;
      }

      while (a5 != (v187 * 4));
      v20 = (v20 + a2);
      _X17 = (_X17 + 2 * v22);
      _X2 = (_X2 + a4);
      _VF = __OFSUB__(v184--, 1);
    }

    while (!((v184 < 0) ^ _VF | (v184 == 0)));
  }

  return result;
}

uint64_t av1_dist_wtd_convolve_y_neon(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, uint16x4_t a15, uint16x4_t a16, uint64_t a17)
{
  v31 = result;
  v32 = *(a7 + 8);
  v33 = *(*a7 + 2 * (a8 & 0xF) * v32);
  v34 = vshrq_n_s16(v33, 1uLL);
  v35 = (((v32 >> 1) - 1) * a2);
  _X26 = (result - v35);
  if (v32 == 12 || v33.i16[7] | v33.i16[0])
  {
    if (*a17)
    {
      if (*(a17 + 36))
      {
        v617 = (result - v35);

        return dist_wtd_convolve_y_8tap_dist_wtd_avg_neon(v617, a2, a3, a4, a5, a6, a17, v34, *v33.i8, *&a11);
      }

      else
      {
        v37 = a2;
        _X5 = *(a17 + 8);
        v641 = *(a17 + 16);
        v638 = 3 * a2;
        v639 = 2 * a2;
        v39 = 4 * a2;
        v637 = 6 * a2;
        v40 = a4;
        v41 = 2 * a4;
        v42 = 3 * a4;
        v636 = 5 * a2;
        if (a5 == 4 || a6 == 4)
        {
          v278 = 0;
          v654 = 2 * v641;
          v651 = 3 * v641;
          v279 = vdup_lane_s16(*v34.i8, 0);
          v280 = vdup_lane_s16(*v34.i8, 1);
          v281 = vdup_lane_s16(*v34.i8, 2);
          v282 = vdup_lane_s16(*v34.i8, 3);
          v283 = vdup_laneq_s16(v34, 4);
          v284 = vdup_laneq_s16(v34, 5);
          v285 = 7 * a2;
          v286 = vdup_laneq_s16(v34, 6);
          v287 = vdup_laneq_s16(v34, 7);
          v648 = a3 + v42;
          v646 = a3 + v41;
          v288 = 4 * a4;
          v633 = a3 + a4;
          v635 = a3 + a4 + v41;
          v631 = result + v285 + v638 - v35;
          v289.i64[0] = 0x1800180018001800;
          v629 = result + v285 + v639 - v35;
          v625 = result + v285 - v35;
          v627 = result + a2 + v285 - v35;
          v289.i64[1] = 0x1800180018001800;
          v290.i64[0] = 0xE800E800E800E800;
          v290.i64[1] = 0xE800E800E800E800;
          do
          {
            v291 = a5;
            __asm { PRFM            #0, [X26] }

            _X10 = _X26 + v37;
            __asm { PRFM            #0, [X10] }

            _X11 = _X26 + v639;
            __asm { PRFM            #0, [X11] }

            _X15 = _X26 + v638;
            __asm { PRFM            #0, [X15] }

            v21.i32[0] = *(_X26->i32 + v37);
            v22.i32[0] = *(_X26->i32 + v639);
            v23.i32[0] = *(_X26->i32 + v638);
            v24.i32[0] = _X26->i32[v39 / 4];
            v299 = _X26;
            v25.i32[0] = *(_X26->i32 + v636);
            v26.i32[0] = *(_X26->i32 + v637);
            v300 = vmovl_u8(_X26->u32[0]).u64[0];
            v301 = vmovl_u8(v21).u64[0];
            v21 = vmovl_u8(*v22.i8).u64[0];
            v302 = vmovl_u8(v23).u64[0];
            v23 = vmovl_u8(v24).u64[0];
            _X15 = _X5 + 2 * v641;
            _X16 = _X5 + 2 * v654;
            v24 = vmovl_u8(v25).u64[0];
            v22.i64[0] = vmovl_u8(*v26.i8).u64[0];
            _X17 = _X5 + 2 * v651;
            v306 = v625;
            v307 = v627;
            result = v629;
            v308 = v631;
            __asm
            {
              PRFM            #0, [X5]
              PRFM            #0, [X15]
            }

            v311 = _X5;
            _X25 = _X5;
            v313 = v633;
            v314 = v635;
            __asm
            {
              PRFM            #0, [X16]
              PRFM            #0, [X17]
            }

            v317 = v646;
            v318 = v648;
            v319 = a3;
            v320 = a6;
            do
            {
              _X17 = (v319 + v278);
              v17.i32[0] = *(v306 + v278);
              v25.i32[0] = *(v307 + v278);
              v27.i32[0] = *(result + v278);
              v29.i32[0] = *(v308 + v278);
              v322 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v22.i8, v286), v24, v284), v23, v283), v302, v282);
              v323 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v22.i8, v284), v24, v283), v23, v282), v302, v281);
              v324 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v22.i8, v283), v24, v282), v23, v281), v302, v280);
              v325 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(*v22.i8, v282), v24, v281), v23, v280), v302, v279);
              v302 = vmovl_u8(v17).u64[0];
              v326 = vmla_s16(vmla_s16(v322, v21, v281), v301, v280);
              v327 = vmla_s16(vmla_s16(v323, v21, v280), v301, v279);
              v301 = v24;
              v24 = vmovl_u8(*v27.i8).u64[0];
              v328 = vmla_s16(v326, v300, v279);
              v300 = v23;
              v23 = vmovl_u8(v25).u64[0];
              v329 = vmla_s16(v324, v21, v279);
              v21 = *v22.i8;
              v22.i64[0] = vmovl_u8(*v29.i8).u64[0];
              *v330.i8 = vrshr_n_s16(vmla_s16(v328, v302, v287), 2uLL);
              __asm { PRFM            #0, [X25] }

              _X1 = (_X25 + 2 * v641);
              __asm { PRFM            #0, [X1] }

              v334 = vrshr_n_s16(vmla_s16(vmla_s16(v327, v302, v286), v23, v287), 2uLL);
              _X3 = _X25 + 2 * v654;
              __asm { PRFM            #0, [X3] }

              _X3 = _X25 + 2 * v651;
              __asm
              {
                PRFM            #0, [X3]
                PRFM            #0, [X17]
              }

              *v27.i8 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(v329, v302, v284), v23, v286), v24, v287), 2uLL);
              _X3 = (v313 + v278);
              __asm { PRFM            #0, [X3] }

              _X5 = (v317 + v278);
              __asm { PRFM            #0, [X5] }

              _X23 = v318 + v278;
              v345 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v325, v302, v283), v23, v284), v24, v286), *v22.i8, v287), 2uLL);
              __asm { PRFM            #0, [X23] }

              v29.i64[0] = *(_X25 + 4 * v641);
              v347.i64[0] = *_X25;
              v17 = *_X1;
              v330.u64[1] = v334;
              v347.u64[1] = *_X1;
              v27.u64[1] = v345;
              v29.i64[1] = *(_X25 + 6 * v641);
              v26 = vaddq_s16(vhaddq_u16(v29, vaddq_s16(v27, v289)), v290);
              *v330.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v347, vaddq_s16(v330, v289)), v290), 4uLL);
              v348 = (v314 + v278);
              *_X17 = v330.i32[0];
              v319 += v288;
              v318 += v288;
              v317 += v288;
              v314 += v288;
              *_X3 = v330.i32[1];
              v25 = vqrshrun_n_s16(v26, 4uLL);
              v313 += v288;
              _X25 += v641;
              v308 += v39;
              result += v39;
              *_X5 = v25.i32[0];
              *v348 = v25.i32[1];
              v307 += v39;
              v306 += v39;
              v320 -= 4;
            }

            while (v320);
            _X26 = (v299 + 4);
            _X5 = v311 + 1;
            v278 += 4;
            a5 = v291 - 4;
          }

          while (v291 != 4);
        }

        else
        {
          v43 = 0;
          v44 = vdupq_lane_s16(*v34.i8, 0);
          v45 = 4 * a4;
          v46 = vdupq_lane_s16(*v34.i8, 1);
          v47 = vdupq_lane_s16(*v34.i8, 2);
          v48 = vdupq_lane_s16(*v34.i8, 3);
          v49 = vdupq_laneq_s16(v34, 4);
          v50 = vdupq_laneq_s16(v34, 5);
          v51 = vdupq_laneq_s16(v34, 6);
          v630 = 7 * a2;
          v628 = result + v630 - v35;
          v52 = 8 * v641;
          v53 = 2 * v641 + v52;
          v54 = 2 * v40;
          v626 = a3 + v45;
          v624 = v626 + 3 * v40;
          v645 = 8 * a2;
          v623 = a3 + 2 * v40 + v45;
          v55 = vdupq_laneq_s16(v34, 7);
          v56 = 16 * v641;
          v622 = a3 + v40;
          v621 = a3 + v40 + v45;
          v620 = 2 * v42;
          v619 = a3 + 3 * v40;
          v618 = a3 + 2 * v40;
          v57.i64[0] = 0xE800E800E800E800;
          v57.i64[1] = 0xE800E800E800E800;
          v58 = 2 * v45;
          _X19 = *(a17 + 8);
          v60 = 2 * v41;
          do
          {
            v634 = a5;
            __asm { PRFM            #0, [X26] }

            _X10 = _X26 + v37;
            __asm { PRFM            #0, [X10] }

            _X11 = _X26 + v639;
            __asm { PRFM            #0, [X11] }

            _X11 = _X26 + v638;
            __asm { PRFM            #0, [X11] }

            _X11 = _X26 + v39;
            __asm { PRFM            #0, [X11] }

            _X11 = _X26 + v636;
            __asm { PRFM            #0, [X11] }

            _X11 = _X26 + v637;
            __asm { PRFM            #0, [X11] }

            _X11 = _X26 + v630;
            __asm { PRFM            #0, [X11] }

            v632 = _X26;
            v80 = (_X26 + v37 + v37);
            v81 = *v80;
            v82 = (v80 + v37);
            v83 = *v82;
            v84 = (v82 + v37);
            v85 = *v84;
            v86 = (v84 + v37);
            v87 = *(v86 + v37);
            v88 = vmovl_u8(*_X26);
            v89 = a3;
            v90 = vmovl_u8(*(_X26 + v37));
            v91 = vmovl_u8(v81);
            v92 = v623;
            v94 = v621;
            v93 = v622;
            v95 = v618;
            v96 = v619;
            v97 = vmovl_u8(v83);
            v98 = vmovl_u8(v85);
            v99 = vmovl_u8(*v86);
            v100 = v624;
            v101 = v626;
            v102 = vmovl_u8(v87);
            _X4 = _X19;
            result = v628;
            v104 = a6;
            do
            {
              v105 = v56;
              v106 = v53;
              v107 = (result + v43 + v37);
              v108 = *v107;
              v109 = (v107 + v37);
              v110 = *v109;
              v111 = (v109 + v37);
              v112 = *v111;
              v113 = (v111 + v37);
              v114 = *v113;
              v115 = (v113 + v37);
              v116 = vmovl_u8(*(result + v43));
              v117 = vmulq_s16(v88, v44);
              v88 = vmovl_u8(v108);
              v118 = vmlaq_s16(v117, v90, v46);
              v119 = vmulq_s16(v90, v44);
              v90 = vmovl_u8(v110);
              v120 = vmlaq_s16(v118, v91, v47);
              v121 = vmlaq_s16(v119, v91, v46);
              v122 = vmulq_s16(v91, v44);
              v91 = vmovl_u8(v112);
              v123 = vmlaq_s16(v120, v97, v48);
              v124 = vmlaq_s16(v121, v97, v47);
              v125 = vmlaq_s16(v122, v97, v46);
              v126 = vmulq_s16(v97, v44);
              v97 = vmovl_u8(v114);
              v127 = vmlaq_s16(v123, v98, v49);
              v128 = vmlaq_s16(v124, v98, v48);
              v129 = vmlaq_s16(v125, v98, v47);
              v130 = vmlaq_s16(v126, v98, v46);
              v131 = vmulq_s16(v98, v44);
              v98 = vmovl_u8(*v115);
              v132 = vmlaq_s16(v127, v99, v50);
              v133 = vmlaq_s16(v128, v99, v49);
              v134 = vmlaq_s16(v129, v99, v48);
              v135 = vmlaq_s16(v130, v99, v47);
              v136 = vmlaq_s16(v131, v99, v46);
              v137 = vmulq_s16(v99, v44);
              v99 = vmovl_u8(*(v115 + v37));
              __asm { PRFM            #0, [X19] }

              _X8 = &_X19->i8[2 * v641];
              __asm { PRFM            #0, [X8] }

              _X8 = &_X19->i8[4 * v641];
              __asm { PRFM            #0, [X8] }

              _X8 = &_X19->i8[6 * v641];
              __asm { PRFM            #0, [X8] }

              v145 = vmlaq_s16(v133, v102, v50);
              v146 = vmlaq_s16(v132, v102, v51);
              v147 = vmlaq_s16(v134, v102, v49);
              v148 = vmlaq_s16(v135, v102, v48);
              v149 = vmlaq_s16(v136, v102, v47);
              v150 = vmlaq_s16(v137, v102, v46);
              v151 = vmulq_s16(v102, v44);
              v102 = vmovl_u8(*(v115 + v37 + v37));
              v152.i64[0] = 0x1800180018001800;
              v152.i64[1] = 0x1800180018001800;
              v153.i64[0] = 0x1800180018001800;
              v153.i64[1] = 0x1800180018001800;
              v154.i64[0] = 0x1800180018001800;
              v154.i64[1] = 0x1800180018001800;
              v155 = vrsraq_n_s16(v152, vmlaq_s16(v146, v55, v116), 2uLL);
              v156.i64[0] = 0x1800180018001800;
              v156.i64[1] = 0x1800180018001800;
              v157 = vrsraq_n_s16(v153, vmlaq_s16(vmlaq_s16(v145, v51, v116), v55, v88), 2uLL);
              v158.i64[0] = 0x1800180018001800;
              v158.i64[1] = 0x1800180018001800;
              v159 = vrsraq_n_s16(v154, vmlaq_s16(vmlaq_s16(vmlaq_s16(v147, v50, v116), v51, v88), v55, v90), 2uLL);
              v146.i64[0] = 0x1800180018001800;
              v146.i64[1] = 0x1800180018001800;
              v160 = vrsraq_n_s16(v158, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v149, v48, v116), v49, v88), v50, v90), v51, v91), v55, v97), 2uLL);
              v145.i64[0] = 0x1800180018001800;
              v145.i64[1] = 0x1800180018001800;
              v147.i64[0] = 0x1800180018001800;
              v147.i64[1] = 0x1800180018001800;
              __asm { PRFM            #0, [X4] }

              _X3 = &_X4->i8[v54];
              __asm { PRFM            #0, [X3] }

              _X3 = &_X4->i8[v60];
              __asm { PRFM            #0, [X3] }

              v166 = vrsraq_n_s16(v146, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v150, v47, v116), v48, v88), v49, v90), v50, v91), v51, v97), v55, v98), 2uLL);
              _X3 = &_X4->i8[v620];
              __asm { PRFM            #0, [X3] }

              v53 = v106;
              v56 = v105;
              v169 = vrsraq_n_s16(v145, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v151, v46, v116), v47, v88), v48, v90), v49, v91), v50, v97), v51, v98), v55, v99), 2uLL);
              v170 = vaddq_s16(vhaddq_u16(*(_X4 + 6 * v641), vrsraq_n_s16(v156, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v148, v49, v116), v50, v88), v51, v90), v55, v91), 2uLL)), v57);
              *v150.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(_X4 + 2 * v641), v157), v57), 4uLL);
              *v151.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(_X4 + 4 * v641), v159), v57), 4uLL);
              v171 = vrsraq_n_s16(v147, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v44, v116), v46, v88), v47, v90), v48, v91), v49, v97), v50, v98), v51, v99), v55, v102), 2uLL);
              *(v89 + v43) = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*_X4, v155), v57), 4uLL);
              *(v93 + v43) = v150.i64[0];
              *(v95 + v43) = v151.i64[0];
              *(v96 + v43) = vqrshrun_n_s16(v170, 4uLL);
              v172 = vhaddq_u16(*(_X4 + 8 * v641), v160);
              v173 = vhaddq_u16(*(_X4 + v53), v166);
              v174 = vhaddq_u16(*(_X4 + 4 * v641 + v52), v169);
              v175 = vhaddq_u16(*(_X4 + 6 * v641 + v52), v171);
              *(v101 + v43) = vqrshrun_n_s16(vaddq_s16(v172, v57), 4uLL);
              *(v94 + v43) = vqrshrun_n_s16(vaddq_s16(v173, v57), 4uLL);
              *(v92 + v43) = vqrshrun_n_s16(vaddq_s16(v174, v57), 4uLL);
              *(v100 + v43) = vqrshrun_n_s16(vaddq_s16(v175, v57), 4uLL);
              result += v645;
              _X4 = (_X4 + v105);
              v100 += v58;
              v92 += v58;
              v96 += v58;
              v94 += v58;
              v95 += v58;
              v93 += v58;
              v89 += v58;
              v101 += v58;
              v104 -= 8;
            }

            while (v104);
            _X26 = v632 + 1;
            ++_X19;
            v43 += 8;
            a5 -= 8;
          }

          while (v634 != 8);
        }
      }
    }

    else
    {
      _X8 = *(a17 + 8);
      v177 = *(a17 + 16);
      v178 = 2 * a2;
      v179 = 3 * a2;
      v180 = 4 * a2;
      if (a5 == 4 || a6 == 4)
      {
        v434 = vdup_lane_s16(*v34.i8, 0);
        v435 = vdup_lane_s16(*v34.i8, 1);
        v436 = vdup_lane_s16(*v34.i8, 2);
        v437 = vdup_lane_s16(*v34.i8, 3);
        v438 = vdup_laneq_s16(v34, 4);
        result = 7 * a2;
        v439 = vdup_laneq_s16(v34, 5);
        v440 = vdup_laneq_s16(v34, 6);
        v441 = vdup_laneq_s16(v34, 7);
        do
        {
          __asm { PRFM            #0, [X26] }

          _X5 = (_X26 + a2);
          __asm { PRFM            #0, [X5] }

          _X6 = _X26 + v178;
          __asm { PRFM            #0, [X6] }

          _X7 = _X26 + v179;
          __asm { PRFM            #0, [X7] }

          v449 = (_X26 + result);
          v19.i32[0] = *_X5;
          v20.i32[0] = *(_X26->i32 + v178);
          v21.i32[0] = *(_X26->i32 + v179);
          v22.i32[0] = _X26->i32[a2];
          v24.i32[0] = *(_X26->i32 + 5 * a2);
          v25.i32[0] = *(_X26->i32 + 6 * a2);
          v450 = vmovl_u8(_X26->u32[0]).u64[0];
          v19 = vmovl_u8(v19).u64[0];
          v451 = vmovl_u8(v20).u64[0];
          v20 = vmovl_u8(v21).u64[0];
          v452 = vmovl_u8(*v22.i8).u64[0];
          v22.i64[0] = vmovl_u8(v24).u64[0];
          v21 = vmovl_u8(v25).u64[0];
          __asm { PRFM            #0, [X8] }

          _X5 = _X8 + 2 * v177;
          __asm { PRFM            #0, [X5] }

          _X5 = _X8 + 4 * v177;
          __asm { PRFM            #0, [X5] }

          _X7 = _X8 + 6 * v177;
          v459 = _X8;
          v460 = a6;
          __asm { PRFM            #0, [X7] }

          do
          {
            v28.i32[0] = *v449;
            v24.i32[0] = *(v449 + a2);
            v25.i32[0] = *(v449 + v178);
            v462 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v21, v440), *v22.i8, v439), v452, v438), v20, v437), v451, v436), v19, v435), v450, v434);
            v463 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v21, v439), *v22.i8, v438), v452, v437), v20, v436), v451, v435), v19, v434);
            v464 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v21, v438), *v22.i8, v437), v452, v436), v20, v435);
            v465 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(v21, v437), *v22.i8, v436), v452, v435), v20, v434);
            v20.i32[0] = *(v449 + v179);
            v28.i64[0] = vmovl_u8(*v28.i8).u64[0];
            v450 = v452;
            v452 = vmovl_u8(v24).u64[0];
            v19 = *v22.i8;
            v22.i64[0] = vmovl_u8(v25).u64[0];
            v466 = vmla_s16(v464, v451, v434);
            v451 = v21;
            v21 = vmovl_u8(v20).u64[0];
            v24 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v463, *v28.i8, v440), v452, v441), 2uLL);
            v25 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v466, *v28.i8, v439), v452, v440), *v22.i8, v441), 2uLL);
            *v459 = vrsra_n_s16(0x1800180018001800, vmla_s16(v462, *v28.i8, v441), 2uLL);
            *(v459 + 2 * v177) = v24;
            *(v459 + 4 * v177) = v25;
            *(v459 + 6 * v177) = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v465, *v28.i8, v438), v452, v439), *v22.i8, v440), v21, v441), 2uLL);
            v449 = (v449 + v180);
            v459 += v177;
            v20 = *v28.i8;
            v460 -= 4;
          }

          while (v460);
          _X26 = (_X26 + 4);
          ++_X8;
          a5 -= 4;
        }

        while (a5);
      }

      else
      {
        v181 = 2 * v177;
        v182 = vdupq_lane_s16(*v34.i8, 0);
        v183 = vdupq_lane_s16(*v34.i8, 1);
        v184 = vdupq_lane_s16(*v34.i8, 2);
        v185 = vdupq_lane_s16(*v34.i8, 3);
        v186 = vdupq_laneq_s16(v34, 4);
        v187 = vdupq_laneq_s16(v34, 5);
        v188 = vdupq_laneq_s16(v34, 6);
        v189 = vdupq_laneq_s16(v34, 7);
        do
        {
          __asm { PRFM            #0, [X26] }

          _X0 = _X26 + a2;
          __asm { PRFM            #0, [X0] }

          _X4 = _X26 + v178;
          __asm { PRFM            #0, [X4] }

          _X4 = _X26 + v179;
          __asm { PRFM            #0, [X4] }

          _X4 = _X26 + v180;
          __asm { PRFM            #0, [X4] }

          _X4 = _X26 + 5 * a2;
          __asm { PRFM            #0, [X4] }

          _X4 = _X26 + 6 * a2;
          __asm { PRFM            #0, [X4] }

          _X4 = _X26 + 7 * a2;
          __asm { PRFM            #0, [X4] }

          v205 = &_X0[a2];
          v206 = *v205;
          v207 = (v205 + a2);
          v208 = *v207;
          v209 = (v207 + a2);
          v210 = *v209;
          v211 = (v209 + a2);
          v212 = *(v211 + a2);
          v213 = *v211;
          result = _X8 + 2 * v177;
          v214 = vmovl_u8(*_X26);
          v215 = vmovl_u8(*(_X26 + a2));
          v216 = vmovl_u8(v206);
          v217 = vmovl_u8(v208);
          v218 = vmovl_u8(v210);
          v219 = vmovl_u8(v213);
          v220 = vmovl_u8(v212);
          _X4 = _X8 + 4 * v177;
          _X5 = _X8 + 6 * v177;
          v223 = _X8;
          v224 = 7 * a2;
          v225 = a6;
          do
          {
            v226 = (_X26 + v224 + a2);
            v227 = *v226;
            v228 = (v226 + a2);
            v229 = *v228;
            v230 = (v228 + a2);
            v231 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v214, v182), v215, v183), v216, v184), v217, v185);
            v232 = *v230;
            v233 = (v230 + a2);
            v234 = *v233;
            v235 = (v233 + a2);
            v236 = *v235;
            v237 = (v235 + a2);
            v238 = vmlaq_s16(vmlaq_s16(vmulq_s16(v215, v182), v216, v183), v217, v184);
            v239 = vmovl_u8(*(_X26 + v224));
            v240 = vmlaq_s16(vmulq_s16(v216, v182), v217, v183);
            v214 = vmovl_u8(v227);
            v215 = vmovl_u8(v229);
            v241 = vmulq_s16(v217, v182);
            v216 = vmovl_u8(v232);
            v217 = vmovl_u8(v234);
            v242 = vmlaq_s16(v231, v218, v186);
            v243 = vmlaq_s16(v238, v218, v185);
            v244 = vmlaq_s16(v240, v218, v184);
            v245 = vmlaq_s16(v241, v218, v183);
            v246 = vmulq_s16(v218, v182);
            v218 = vmovl_u8(v236);
            v247 = vmlaq_s16(v242, v219, v187);
            v248 = vmlaq_s16(v243, v219, v186);
            v249 = vmlaq_s16(v244, v219, v185);
            v250 = vmlaq_s16(v245, v219, v184);
            v251 = vmlaq_s16(v246, v219, v183);
            v252 = vmulq_s16(v219, v182);
            v219 = vmovl_u8(*v237);
            v253 = vmlaq_s16(v247, v220, v188);
            v254 = vmlaq_s16(v248, v220, v187);
            v255 = vmlaq_s16(v249, v220, v186);
            v256 = vmlaq_s16(v250, v220, v185);
            v257 = vmlaq_s16(v251, v220, v184);
            v258 = vmlaq_s16(v252, v220, v183);
            v259 = vmulq_s16(v220, v182);
            v220 = vmovl_u8(*(v237 + a2));
            __asm
            {
              PRFM            #0, [X8]
              PRFM            #0, [X0]
              PRFM            #0, [X4]
              PRFM            #0, [X5]
            }

            v264.i64[0] = 0x1800180018001800;
            v264.i64[1] = 0x1800180018001800;
            v265 = vrsraq_n_s16(v264, vmlaq_s16(v253, v189, v239), 2uLL);
            v253.i64[0] = 0x1800180018001800;
            v253.i64[1] = 0x1800180018001800;
            v266 = vrsraq_n_s16(v253, vmlaq_s16(vmlaq_s16(v254, v188, v239), v189, v214), 2uLL);
            v254.i64[0] = 0x1800180018001800;
            v254.i64[1] = 0x1800180018001800;
            v267 = vrsraq_n_s16(v254, vmlaq_s16(vmlaq_s16(vmlaq_s16(v255, v187, v239), v188, v214), v189, v215), 2uLL);
            v255.i64[0] = 0x1800180018001800;
            v255.i64[1] = 0x1800180018001800;
            v268 = vrsraq_n_s16(v255, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v256, v186, v239), v187, v214), v188, v215), v189, v216), 2uLL);
            v256.i64[0] = 0x1800180018001800;
            v256.i64[1] = 0x1800180018001800;
            v269 = vrsraq_n_s16(v256, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v257, v185, v239), v186, v214), v187, v215), v188, v216), v189, v217), 2uLL);
            v257.i64[0] = 0x1800180018001800;
            v257.i64[1] = 0x1800180018001800;
            v270 = vrsraq_n_s16(v257, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v258, v184, v239), v185, v214), v186, v215), v187, v216), v188, v217), v189, v218), 2uLL);
            v258.i64[0] = 0x1800180018001800;
            v258.i64[1] = 0x1800180018001800;
            *v223 = v265;
            v265.i64[0] = 0x1800180018001800;
            v265.i64[1] = 0x1800180018001800;
            v271 = (v223 + v181);
            *v271 = v266;
            v272 = (v271 + v181);
            *v272 = v267;
            v273 = (v272 + v181);
            *v273 = v268;
            v274 = (v273 + v181);
            *v274 = v269;
            v275 = (v274 + v181);
            *v275 = v270;
            v276 = (v275 + v181);
            *v276 = vrsraq_n_s16(v258, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v259, v183, v239), v184, v214), v185, v215), v186, v216), v187, v217), v188, v218), v189, v219), 2uLL);
            v277 = (v276 + v181);
            v224 += 8 * a2;
            v223 = (v276 + v181 + 16 * v177 - 14 * v177);
            *v277 = vrsraq_n_s16(v265, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v182, v239), v183, v214), v184, v215), v185, v216), v186, v217), v187, v218), v188, v219), v189, v220), 2uLL);
            v225 -= 8;
          }

          while (v225);
          ++_X26;
          _X8 += 2;
          a5 -= 8;
        }

        while (a5);
      }
    }
  }

  else if (*a17)
  {
    v349 = a2;
    result = _X26 + a2;
    if (*(a17 + 36))
    {

      return dist_wtd_convolve_y_6tap_dist_wtd_avg_neon(result, a2, a3, a4, a5, a6, a17, v34, *v33.i64, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v350 = *(a17 + 8);
      v351 = *(a17 + 16);
      if (a5 == 4 || a6 == 4)
      {
        v535 = 0;
        v536 = 2 * a2;
        v537 = 3 * a2;
        v538 = 4 * a2;
        v539 = 5 * a2;
        v540 = vdup_lane_s16(*v34.i8, 1);
        v541 = vdup_lane_s16(*v34.i8, 2);
        v542 = vdup_lane_s16(*v34.i8, 3);
        v543 = vdup_laneq_s16(v34, 4);
        v544 = vdup_laneq_s16(v34, 5);
        v545 = vdup_laneq_s16(v34, 6);
        v546 = 2 * a4;
        v547 = 4 * a4;
        v653 = a3 + a4;
        v656 = a3 + v546;
        v650 = v653 + v546;
        v548 = &v350->i8[6 * v351];
        v549 = 8 * v351;
        v550 = v349 + v539;
        v551 = v537;
        v552 = v31 + v349 + v539 + v537 - v35;
        v553 = v536;
        v555.i64[0] = 0x1800180018001800;
        v554 = v539 + 2 * v349;
        v555.i64[1] = 0x1800180018001800;
        v556 = v31 + v349 + v539 + v536 - v35;
        v557.i64[0] = 0xE800E800E800E800;
        v557.i64[1] = 0xE800E800E800E800;
        v558 = v31 + v554 - v35;
        v559 = v31 + v550 - v35;
        v560 = &v350->i8[4 * v351];
        v561 = &v350->i8[2 * v351];
        do
        {
          v562 = a5;
          v563 = 0;
          v19.i32[0] = *(result + v349);
          v20.i32[0] = *(result + v553);
          v21.i32[0] = *(result + v551);
          v22.i32[0] = *(result + v538);
          v564 = vmovl_u8(*result).u64[0];
          v565 = v559;
          v566 = vmovl_u8(v19).u64[0];
          v20 = vmovl_u8(v20).u64[0];
          v567 = vmovl_u8(v21).u64[0];
          v568 = v558;
          v569 = v556;
          v570 = v552;
          v572 = v650;
          v571 = v653;
          v19 = vmovl_u8(*v22.i8).u64[0];
          v573 = v656;
          v574 = a3;
          v575 = a6;
          do
          {
            v27.i32[0] = *(v565 + v535);
            v26.i32[0] = *(v568 + v535);
            v28.i32[0] = *(v569 + v535);
            v21.i32[0] = *(v570 + v535);
            v576 = vmla_s16(vmla_s16(vmul_s16(v19, v544), v567, v543), v20, v542);
            v577 = vmla_s16(vmla_s16(vmul_s16(v19, v543), v567, v542), v20, v541);
            v578 = vmla_s16(vmla_s16(vmul_s16(v19, v542), v567, v541), v20, v540);
            v20 = vmovl_u8(*v26.i8).u64[0];
            v579 = vmla_s16(v576, v566, v541);
            v580 = vmla_s16(v577, v566, v540);
            v566 = vmovl_u8(*v27.i8).u64[0];
            v581 = vmla_s16(vmul_s16(v19, v541), v567, v540);
            v567 = vmovl_u8(*v28.i8).u64[0];
            v582 = vmla_s16(v579, v564, v540);
            v564 = v19;
            v19 = vmovl_u8(v21).u64[0];
            *v583.i8 = vrshr_n_s16(vmla_s16(v582, v566, v545), 2uLL);
            v584.i64[0] = *(v350->i64 + v563);
            v27.i64[0] = *&v561[v563];
            v28.i64[0] = *&v560[v563];
            *v585.i8 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(v578, v566, v543), v20, v544), v567, v545), 2uLL);
            *v26.i8 = vrshr_n_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v581, v566, v542), v20, v543), v567, v544), v19, v545), 2uLL);
            v583.u64[1] = vrshr_n_s16(vmla_s16(vmla_s16(v580, v566, v544), v20, v545), 2uLL);
            v584.i64[1] = v27.i64[0];
            v586 = vhaddq_u16(v584, vaddq_s16(v583, v555));
            v585.i64[1] = v26.i64[0];
            v28.i64[1] = *&v548[v563];
            v22 = vaddq_s16(vhaddq_u16(v28, vaddq_s16(v585, v555)), v557);
            *v586.i8 = vqrshrun_n_s16(vaddq_s16(v586, v557), 4uLL);
            *(v574 + v535) = v586.i32[0];
            v587 = (v572 + v535);
            *(v571 + v535) = v586.i32[1];
            v574 += v547;
            v572 += v547;
            v21 = vqrshrun_n_s16(v22, 4uLL);
            v571 += v547;
            *(v573 + v535) = v21.i32[0];
            v563 += v549;
            v570 += v538;
            v569 += v538;
            v568 += v538;
            v565 += v538;
            v573 += v547;
            *v587 = v21.i32[1];
            v575 -= 4;
          }

          while (v575);
          result += 4;
          v350 = (v350 + 8);
          v535 += 4;
          v548 += 8;
          v560 += 8;
          v561 += 8;
          a5 = v562 - 4;
        }

        while (v562 != 4);
      }

      else
      {
        v352 = 0;
        v353 = vdupq_lane_s16(*v34.i8, 1);
        v354 = vdupq_lane_s16(*v34.i8, 2);
        v355 = vdupq_lane_s16(*v34.i8, 3);
        v356 = vdupq_laneq_s16(v34, 4);
        v357 = vdupq_laneq_s16(v34, 5);
        v655 = v31 + a2 + (5 * a2) - v35;
        v358 = 2 * v351;
        v359 = 6 * v351;
        v360 = 8 * v351;
        v361 = 6 * v351 + v360;
        v362 = 4 * v351;
        v363 = 4 * v351 + v360;
        v364 = 2 * v351 + v360;
        v365 = 4 * a4;
        v649 = a3 + 2 * a4;
        v652 = a3 + 3 * a4 + v365;
        v647 = v649 + v365;
        v366 = vdupq_laneq_s16(v34, 6);
        v367 = 8 * a2;
        v368 = a3 + a4;
        v642 = v368 + v365;
        v369 = 16 * v351;
        v640 = a3 + v365;
        v370.i64[0] = 0xE800E800E800E800;
        v370.i64[1] = 0xE800E800E800E800;
        v371 = a3 + 3 * a4;
        v372 = 2 * v365;
        do
        {
          v373 = a5;
          v374 = (result + v349 + v349);
          v375 = *v374;
          v376 = (v374 + v349);
          v377 = vmovl_u8(*result);
          v379 = v642;
          v378 = a3;
          v380 = v368;
          v382 = v647;
          v381 = v649;
          v383 = vmovl_u8(*(result + v349));
          v384 = vmovl_u8(v375);
          v385 = vmovl_u8(*v376);
          v386 = v371;
          v387 = v640;
          v388 = vmovl_u8(*(v376 + v349));
          v389 = v652;
          v390 = v655;
          v391 = v350;
          v392 = a6;
          do
          {
            v393 = (v390 + v352 + v349);
            v394 = *v393;
            v395 = (v393 + v349);
            v396 = *v395;
            v397 = (v395 + v349);
            v398 = *v397;
            v399 = (v397 + v349);
            v400 = *v399;
            v401 = (v399 + v349);
            v402 = *v401;
            v403 = (v401 + v349);
            v404 = vmovl_u8(*(v390 + v352));
            v405 = vmovl_u8(v394);
            v406 = vmovl_u8(v396);
            v407 = vmulq_s16(v377, v353);
            v377 = vmovl_u8(v398);
            v408 = vmlaq_s16(vmlaq_s16(v407, v383, v354), v384, v355);
            v409 = vmlaq_s16(vmulq_s16(v383, v353), v384, v354);
            v410 = vmulq_s16(v384, v353);
            v383 = vmovl_u8(v400);
            v384 = vmovl_u8(v402);
            v411 = vmlaq_s16(v408, v385, v356);
            v412 = vmlaq_s16(v409, v385, v355);
            v413 = vmlaq_s16(v410, v385, v354);
            v414 = vmulq_s16(v385, v353);
            v385 = vmovl_u8(*v403);
            v415 = vmlaq_s16(v411, v388, v357);
            v416 = vmlaq_s16(v412, v388, v356);
            v417 = vmlaq_s16(v413, v388, v355);
            v418 = vmlaq_s16(v414, v388, v354);
            v419 = vmulq_s16(v388, v353);
            v388 = vmovl_u8(*(v403 + v349));
            v420.i64[0] = 0x1800180018001800;
            v420.i64[1] = 0x1800180018001800;
            v421.i64[0] = 0x1800180018001800;
            v421.i64[1] = 0x1800180018001800;
            v422 = vrsraq_n_s16(v420, vmlaq_s16(v415, v366, v404), 2uLL);
            v415.i64[0] = 0x1800180018001800;
            v415.i64[1] = 0x1800180018001800;
            v423 = vrsraq_n_s16(v421, vmlaq_s16(vmlaq_s16(v416, v357, v404), v366, v405), 2uLL);
            v424.i64[0] = 0x1800180018001800;
            v424.i64[1] = 0x1800180018001800;
            v425 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v419, v354, v404), v355, v405), v356, v406), v357, v377);
            v426.i64[0] = 0x1800180018001800;
            v426.i64[1] = 0x1800180018001800;
            v427.i64[0] = 0x1800180018001800;
            v427.i64[1] = 0x1800180018001800;
            v416.i64[0] = 0x1800180018001800;
            v416.i64[1] = 0x1800180018001800;
            v428 = vrsraq_n_s16(v427, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v353, v404), v354, v405), v355, v406), v356, v377), v357, v383), v366, v384), 2uLL);
            *v423.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v391 + v358), v423), v370), 4uLL);
            *v415.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v391 + v362), vrsraq_n_s16(v415, vmlaq_s16(vmlaq_s16(vmlaq_s16(v417, v356, v404), v357, v405), v366, v406), 2uLL)), v370), 4uLL);
            *v404.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v391 + v359), vrsraq_n_s16(v424, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v418, v355, v404), v356, v405), v357, v406), v366, v377), 2uLL)), v370), 4uLL);
            v429 = vrsraq_n_s16(v416, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v353, v405), v354, v406), v355, v377), v356, v383), v357, v384), v366, v385), 2uLL);
            *(v378 + v352) = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*v391, v422), v370), 4uLL);
            *(v380 + v352) = v423.i64[0];
            *(v381 + v352) = v415.i64[0];
            *(v386 + v352) = v404.i64[0];
            v422.i64[0] = 0x1800180018001800;
            v422.i64[1] = 0x1800180018001800;
            v430 = vrsraq_n_s16(v422, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v353, v406), v354, v377), v355, v383), v356, v384), v357, v385), v366, v388), 2uLL);
            v431 = vhaddq_u16(*(v391 + v360), vrsraq_n_s16(v426, vmlaq_s16(v425, v366, v383), 2uLL));
            v432 = vaddq_s16(vhaddq_u16(*(v391 + v363), v429), v370);
            v433 = vaddq_s16(vhaddq_u16(*(v391 + v361), v430), v370);
            *v405.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v391 + v364), v428), v370), 4uLL);
            *(v387 + v352) = vqrshrun_n_s16(vaddq_s16(v431, v370), 4uLL);
            *(v379 + v352) = v405.i64[0];
            *(v382 + v352) = vqrshrun_n_s16(v432, 4uLL);
            *(v389 + v352) = vqrshrun_n_s16(v433, 4uLL);
            v390 += v367;
            v391 = (v391 + v369);
            v389 += v372;
            v382 += v372;
            v379 += v372;
            v386 += v372;
            v381 += v372;
            v380 += v372;
            v378 += v372;
            v387 += v372;
            v392 -= 8;
          }

          while (v392);
          result += 8;
          ++v350;
          v352 += 8;
          a5 = v373 - 8;
        }

        while (v373 != 8);
      }
    }
  }

  else
  {
    v467 = a2;
    v468 = (_X26 + a2);
    v469 = *(a17 + 8);
    v470 = *(a17 + 16);
    if (a5 == 4 || a6 == 4)
    {
      v588 = 2 * a2;
      v589 = vdup_lane_s16(*v34.i8, 1);
      v590 = vdup_lane_s16(*v34.i8, 2);
      v591 = vdup_lane_s16(*v34.i8, 3);
      v592 = 4 * a2;
      v593 = vdup_laneq_s16(v34, 4);
      v594 = 5 * a2;
      v595 = vdup_laneq_s16(v34, 5);
      v596 = vdup_laneq_s16(v34, 6);
      v597 = 2 * v470;
      v598 = 6 * v470;
      result = 8 * v470;
      v599 = v31 + 4 * a2 - v35;
      v600 = v31 + v467 + v588 - v35;
      v601 = 4 * v470;
      v602 = _X26 + 2 * v467;
      do
      {
        a16.i32[0] = *(v468->i32 + v467);
        v18.i32[0] = *(v468->i32 + v588);
        v19.i32[0] = *(v468->i32 + 3 * v467);
        v21.i32[0] = v468->i32[v592 / 4];
        v603 = vmovl_u8(v468->u32[0]).u64[0];
        v604 = vmovl_u8(a16).u64[0];
        v605 = vmovl_u8(v18).u64[0];
        v18 = vmovl_u8(v19).u64[0];
        v606 = v468;
        v607 = v602;
        a16 = vmovl_u8(v21).u64[0];
        v608 = v600;
        v609 = v599;
        v610 = v469;
        v611 = a6;
        do
        {
          v24.i32[0] = *(v606->i32 + v594);
          v25.i32[0] = *&v607[v594];
          v26.i32[0] = *(v608 + v594);
          v612 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(a16, v595), v18, v593), v605, v591), v604, v590);
          v613 = vmla_s16(vmla_s16(vmla_s16(vmul_s16(a16, v593), v18, v591), v605, v590), v604, v589);
          v614 = vmla_s16(vmla_s16(vmul_s16(a16, v591), v18, v590), v605, v589);
          v615 = vmla_s16(vmul_s16(a16, v590), v18, v589);
          v27.i32[0] = *(v609 + v594);
          v604 = vmovl_u8(v24).u64[0];
          v605 = vmovl_u8(v25).u64[0];
          v18 = vmovl_u8(*v26.i8).u64[0];
          v616 = vmla_s16(v612, v603, v589);
          v603 = a16;
          a16 = vmovl_u8(*v27.i8).u64[0];
          v24 = vrsra_n_s16(0x1800180018001800, vmla_s16(v616, v604, v596), 2uLL);
          v19 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(v613, v604, v595), v605, v596), 2uLL);
          v21 = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(v614, v604, v593), v605, v595), v18, v596), 2uLL);
          *v610 = v24;
          *(v610 + v597) = v19;
          *(v610 + v601) = v21;
          *(v610 + v598) = vrsra_n_s16(0x1800180018001800, vmla_s16(vmla_s16(vmla_s16(vmla_s16(v615, v604, v591), v605, v593), v18, v595), a16, v596), 2uLL);
          v610 = (v610 + result);
          v609 += v592;
          v608 += v592;
          v607 += v592;
          v606 = (v606 + v592);
          v611 -= 4;
        }

        while (v611);
        v468 = (v468 + 4);
        ++v469;
        v599 += 4;
        v600 += 4;
        v602 += 4;
        a5 -= 4;
      }

      while (a5);
    }

    else
    {
      v471 = vdupq_lane_s16(*v34.i8, 1);
      v472 = vdupq_lane_s16(*v34.i8, 2);
      v473 = vdupq_lane_s16(*v34.i8, 3);
      v474 = vdupq_laneq_s16(v34, 4);
      v475 = vdupq_laneq_s16(v34, 5);
      v476 = vdupq_laneq_s16(v34, 6);
      v477 = 2 * v470;
      do
      {
        v478 = (v468 + 5 * a2);
        v479 = (v468 + a2 + a2);
        v480 = *v479;
        v481 = (v479 + a2);
        v482 = vmovl_u8(*v468);
        v483 = vmovl_u8(*(v468 + a2));
        v484 = vmovl_u8(v480);
        v485 = vmovl_u8(*v481);
        v486 = vmovl_u8(*(v481 + a2));
        v487 = v469;
        v488 = a6;
        do
        {
          v489 = *v478;
          v490 = (v478 + a2);
          v491 = *v490;
          v492 = (v490 + a2);
          v493 = vmlaq_s16(vmulq_s16(v482, v471), v483, v472);
          v494 = *v492;
          v495 = (v492 + a2);
          v496 = vmlaq_s16(vmlaq_s16(v493, v484, v473), v485, v474);
          v497 = *v495;
          v498 = (v495 + a2);
          v499 = vmulq_s16(v483, v471);
          v500 = *v498;
          v501 = (v498 + a2);
          v502 = *v501;
          v503 = (v501 + a2);
          v504 = *v503;
          v505 = (v503 + a2);
          v506 = vmovl_u8(v489);
          v507 = vmovl_u8(v491);
          v508 = vmlaq_s16(vmlaq_s16(v499, v484, v472), v485, v473);
          v509 = vmlaq_s16(vmulq_s16(v484, v471), v485, v472);
          v510 = vmovl_u8(v494);
          v482 = vmovl_u8(v497);
          v511 = vmulq_s16(v485, v471);
          v483 = vmovl_u8(v500);
          v484 = vmovl_u8(v502);
          v485 = vmovl_u8(v504);
          v512 = vmlaq_s16(v496, v486, v475);
          v513 = vmlaq_s16(v508, v486, v474);
          v514 = vmlaq_s16(v509, v486, v473);
          v515 = vmlaq_s16(v511, v486, v472);
          v516 = vmulq_s16(v486, v471);
          v486 = vmovl_u8(*v505);
          v517.i64[0] = 0x1800180018001800;
          v517.i64[1] = 0x1800180018001800;
          v518 = vrsraq_n_s16(v517, vmlaq_s16(v512, v476, v506), 2uLL);
          v512.i64[0] = 0x1800180018001800;
          v512.i64[1] = 0x1800180018001800;
          v519 = vrsraq_n_s16(v512, vmlaq_s16(vmlaq_s16(v513, v475, v506), v476, v507), 2uLL);
          v513.i64[0] = 0x1800180018001800;
          v513.i64[1] = 0x1800180018001800;
          v520 = vrsraq_n_s16(v513, vmlaq_s16(vmlaq_s16(vmlaq_s16(v514, v474, v506), v475, v507), v476, v510), 2uLL);
          v521.i64[0] = 0x1800180018001800;
          v521.i64[1] = 0x1800180018001800;
          v522 = vrsraq_n_s16(v521, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v515, v473, v506), v474, v507), v475, v510), v476, v482), 2uLL);
          v523.i64[0] = 0x1800180018001800;
          v523.i64[1] = 0x1800180018001800;
          v524 = vrsraq_n_s16(v523, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v516, v472, v506), v473, v507), v474, v510), v475, v482), v476, v483), 2uLL);
          v516.i64[0] = 0x1800180018001800;
          v516.i64[1] = 0x1800180018001800;
          v525 = vrsraq_n_s16(v516, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v471, v506), v472, v507), v473, v510), v474, v482), v475, v483), v476, v484), 2uLL);
          v506.i64[0] = 0x1800180018001800;
          v506.i64[1] = 0x1800180018001800;
          v526 = vrsraq_n_s16(v506, vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v471, v507), v472, v510), v473, v482), v474, v483), v475, v484), v476, v485), 2uLL);
          v527 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v471, v510), v472, v482), v473, v483), v474, v484), v475, v485), v476, v486);
          v510.i64[0] = 0x1800180018001800;
          v510.i64[1] = 0x1800180018001800;
          *v487 = v518;
          v528 = (v487 + v477);
          *v528 = v519;
          v529 = (v528 + v477);
          *v529 = v520;
          v530 = (v529 + v477);
          *v530 = v522;
          v531 = (v530 + v477);
          *v531 = v524;
          v532 = (v531 + v477);
          *v532 = v525;
          v533 = (v532 + v477);
          *v533 = v526;
          v534 = (v533 + v477);
          *v534 = vrsraq_n_s16(v510, v527, 2uLL);
          v478 = (&v505[a2] - 7 * a2);
          v487 = (v534 + 16 * v470 - 14 * v470);
          v488 -= 8;
        }

        while (v488);
        ++v468;
        v469 += 2;
        a5 -= 8;
      }

      while (a5);
    }
  }

  return result;
}