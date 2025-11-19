uint64_t sub_27742B550(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = vdupq_lane_s16(v10, 0);
  v13 = vdupq_lane_s16(v10, 3);
  v14 = vdupq_lane_s16(v10, 1);
  v15 = vdupq_lane_s16(v10, 2);
  v16 = a5 + 4 * a4 + 12;
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v18 = (a5 + 2 * (-2 - a4));
    v19 = v18[1];
    v20 = vextq_s8(*v18, v19, 8uLL);
    v21 = vmlaq_s16(vmulq_s16(*v18, v12), vextq_s8(*v18, v19, 0xCuLL), v13);
    v22 = vmulq_s16(vextq_s8(*v18, v19, 4uLL), v14);
    v23 = vmulq_s16(v20, v15);
    v24 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v23.i8, *v22.i8), *v21.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v22, v23), v21), 2uLL);
    v25 = *(a5 - 4);
    v26 = *(a5 + 12);
    v27 = a5 - 4 + 2 * a4;
    v28 = vextq_s8(v25, v26, 4uLL);
    v29 = vextq_s8(v25, v26, 8uLL);
    v30 = vmlaq_s16(vmulq_s16(v25, v12), vextq_s8(v25, v26, 0xCuLL), v13);
    v31 = vmulq_s16(v28, v14);
    v32 = vmulq_s16(v29, v15);
    v33 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v32.i8, *v31.i8), *v30.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v31, v32), v30), 2uLL);
    v34 = *(v27 + 16);
    v35 = vextq_s8(*v27, v34, 8uLL);
    v36 = vmlaq_s16(vmulq_s16(*v27, v12), vextq_s8(*v27, v34, 0xCuLL), v13);
    v37 = vmulq_s16(vextq_s8(*v27, v34, 4uLL), v14);
    v38 = vmulq_s16(v35, v15);
    v39 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v38.i8, *v37.i8), *v36.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v37, v38), v36), 2uLL);
    v40 = a2 + 1;
    v41 = a7;
    v42 = v16;
    do
    {
      v43 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v24.i8, v11, 0);
      v44 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v24, v11, 0);
      v24 = v33;
      v33 = v39;
      v45 = v42[-1];
      v46 = vextq_s8(v45, *v42, 4uLL);
      v47 = vextq_s8(v45, *v42, 8uLL);
      v48 = vmlaq_s16(vmulq_s16(v45, v12), vextq_s8(v45, *v42, 0xCuLL), v13);
      v49 = vmulq_s16(v46, v14);
      v50 = vmulq_s16(v47, v15);
      v51 = vaddl_u16(*v50.i8, *v49.i8);
      v52 = vaddw_high_s16(vaddl_high_u16(v49, v50), v48);
      *v48.i8 = vshrn_n_s32(vaddw_s16(v51, *v48.i8), 2uLL);
      v53 = vmlal_lane_s16(vmlal_lane_s16(v43, *v33.i8, v11, 2), *v48.i8, v11, 3);
      v39 = vshrn_high_n_s32(*v48.i8, v52, 2uLL);
      *v41 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v53, 0xAuLL), vmlal_lane_s16(vmlal_high_lane_s16(v44, v33, v11, 2), vshrn_n_s32(v52, 2uLL), v11, 3), 0xAuLL), v17);
      v42 = (v42 + v8);
      v41 = (v41 + v9);
      --v40;
    }

    while (v40 > 1);
    a7 += 2;
    a5 += 16;
    v54 = result - 8;
    v16 += 16;
    v55 = result > 0xF;
    result = (result - 8);
  }

  while (v55);
  if (v54)
  {
LABEL_9:
    v56 = qword_27750DD60[2 * (a3 & 7) - 2];
    v57 = qword_27750DD60[2 * v7 - 2];
    v58 = a5 + 2 * (-2 - a4);
    v59 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v58 + 4), v56, 1), *v58, v56, 0), *&vextq_s8(*(v58 + 4), *(v58 + 4), 4uLL), v56, 2), *(v58 + 4), v56, 3), 2uLL);
    v60 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a5, v56, 1), *(a5 - 4), v56, 0), *&vextq_s8(*a5, *a5, 4uLL), v56, 2), *a5, v56, 3), 2uLL);
    v61 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(a5 + 2 * a4), v56, 1), *(a5 - 4 + 2 * a4), v56, 0), *&vextq_s8(*(a5 + 2 * a4), *(a5 + 2 * a4), 4uLL), v56, 2), *(a5 + 2 * a4), v56, 3), 2uLL);
    v62 = (a5 + 4 * a4);
    v63 = a2 + 1;
    do
    {
      v64 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v60, v57, 1), v59, v57, 0), v61, v57, 2);
      v59 = v60;
      v60 = v61;
      v61 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v62, v56, 1), *(v62 - 4), v56, 0), *&vextq_s8(*v62->i8, *v62->i8, 4uLL), v56, 2), *v62->i8, v56, 3), 2uLL);
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v64, v61, v57, 3), 0xAuLL), 0xFC00FC00FC00FC00);
      v62 = (v62 + v8);
      a7 = (a7 + v9);
      --v63;
    }

    while (v63 > 1);
  }

  return result;
}

uint64_t sub_27742B814(uint64_t result, int a2, unint64_t a3, uint64_t a4, int16x4_t *a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * v7 - 2];
  v11 = vdupq_lane_s16(v10, 0);
  v12 = vdupq_lane_s16(v10, 3);
  v13 = vdupq_lane_s16(v10, 1);
  v14 = vdupq_lane_s16(v10, 2);
  v15 = a7 + 2 * a6;
  v16 = a5 + 6 * a4;
  v17 = a5 + 4 * a4;
  v18.i64[0] = 0xFC00FC00FC00FC00;
  v18.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = *&a5->i8[-2 * a4];
    v22 = *a5->i8;
    v23 = a2 + 2;
    v24 = *&a5->i8[2 * a4];
    do
    {
      v25 = v24;
      v26 = vmulq_s16(v22, v13);
      v27 = *&v17[v19];
      v28 = vmulq_s16(v24, v14);
      v29 = vmulq_s16(v24, v13);
      v24 = *&v16[v19];
      v30 = vmlaq_s16(vmulq_s16(v21, v11), v27, v12);
      v31 = vaddl_u16(*v26.i8, *v28.i8);
      v32 = vaddl_high_u16(v26, v28);
      v33 = vaddw_s16(v31, *v30.i8);
      v34 = vaddw_high_s16(v32, v30);
      v35 = vmlaq_s16(vmulq_s16(v22, v11), v24, v12);
      v36 = vmulq_s16(v27, v14);
      *&a7->i8[v20] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v33, 6uLL), v34, 6uLL), v18);
      *&v15[v20] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v36.i8, *v29.i8), *v35.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v36, v29), v35), 6uLL), v18);
      v21 = v25;
      v20 += v8;
      v19 += v9;
      v23 -= 2;
      v22 = v27;
    }

    while (v23 > 2);
    a7 += 2;
    a5 += 2;
    v37 = result - 8;
    v15 += 16;
    v16 += 16;
    v17 += 16;
    v38 = result > 0xF;
    result = (result - 8);
  }

  while (v38);
  if (v37)
  {
LABEL_9:
    v39 = qword_27750DD60[2 * v7 - 2];
    v40 = *(a5 - 2 * a4);
    v41 = *(a5 + 2 * a4);
    v42 = *a5;
    v43 = a2 + 2;
    do
    {
      v44 = vmlal_lane_s16(vmull_lane_s16(v42, v39, 1), v40, v39, 0);
      v40 = v41;
      v45 = vmlal_lane_s16(v44, v41, v39, 2);
      v46 = vmull_lane_s16(v41, v39, 1);
      v41 = *(a5 + 6 * a4);
      a5 = (a5 + v9);
      v47 = vmlal_lane_s16(v46, v42, v39, 0);
      v42 = *a5;
      v48 = vmlal_lane_s16(vmlal_lane_s16(v47, *a5, v39, 2), v41, v39, 3);
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v45, *a5, v39, 3), 6uLL), 0xFC00FC00FC00FC00);
      *(a7 + 2 * a6) = vmin_u16(vqrshrun_n_s32(v48, 6uLL), 0xFC00FC00FC00FC00);
      a7 = (a7 + v8);
      v43 -= 2;
    }

    while (v43 > 2);
  }

  return result;
}

uint64_t sub_27742B9D4(uint64_t result, int a2, char a3, uint64_t a4, int16x4_t *a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = 2 * a4;
  v8 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = qword_27750DD60[2 * (a3 & 7) - 2];
  v10 = vdupq_lane_s16(v9, 0);
  v11 = vdupq_lane_s16(v9, 3);
  v12 = vdupq_lane_s16(v9, 1);
  v13 = vdupq_lane_s16(v9, 2);
  v14 = (&a5[1] + 4);
  v15.i64[0] = 0xFC00FC00FC00FC00;
  v15.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v16 = a2 + 1;
    v17 = a7;
    v18 = v14;
    do
    {
      v19 = v18[-1];
      v20 = vextq_s8(v19, *v18, 4uLL);
      v21 = vextq_s8(v19, *v18, 8uLL);
      v22 = vmlaq_s16(vmulq_s16(v19, v10), vextq_s8(v19, *v18, 0xCuLL), v11);
      v23 = vmulq_s16(v20, v12);
      v24 = vmulq_s16(v21, v13);
      *v17 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v24.i8, *v23.i8), *v22.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v23, v24), v22), 6uLL), v15);
      v18 = (v18 + v7);
      v17 = (v17 + v8);
      --v16;
    }

    while (v16 > 1);
    a7 += 2;
    a5 += 2;
    v25 = result - 8;
    ++v14;
    v26 = result <= 15;
    result = (result - 8);
  }

  while (!v26);
  if (v25)
  {
LABEL_10:
    v27 = qword_27750DD60[2 * (a3 & 7) - 2];
    v28 = a2 + 1;
    do
    {
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a5, v27, 1), *(a5 - 4), v27, 0), *&vextq_s8(*a5->i8, *a5->i8, 4uLL), v27, 2), *a5->i8, v27, 3), 6uLL), 0xFC00FC00FC00FC00);
      a5 = (a5 + v7);
      a7 = (a7 + v8);
      --v28;
    }

    while (v28 > 1);
  }

  return result;
}

uint64_t sub_27742BAF8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = 0;
  *a1 = a3;
  *(a1 + 1) = a4;
  *(a1 + 2) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 34) = 0;
  *(a1 + 1600) = 0;
  v6 = 40;
  do
  {
    v7 = 0;
    if (v5)
    {
      v8 = 65;
    }

    else
    {
      v8 = 17;
    }

    v9 = v6;
    do
    {
      if (v5)
      {
        v10 = &unk_27750DBE0 + ((v7 > 2) | ((v7 > 2) << 6));
      }

      else
      {
        v10 = &unk_27750DBCF;
      }

      memcpy((a1 + v9), v10, v8);
      ++v7;
      v9 += 65;
    }

    while (v7 != 6);
    ++v5;
    v6 += 390;
  }

  while (v5 != 4);
  *(a1 + 1608) = 0;
  *(a1 + 1636) = 0;
  *(a1 + 1618) = 0;
  *(a1 + 1626) = 0;
  *(a1 + 1610) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1737) = 0u;
  *(a1 + 1760) = 0;
  *(a1 + 1768) = a2;
  return a1;
}

uint64_t sub_27742BC1C(uint64_t result, FILE *__stream)
{
  v3 = result;
  v4 = dword_280B9A880;
  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "=========== Picture Parameter Set ID: %d ===========\n", *result);
    v4 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "pps_pic_parameter_set_id", *v3);
      v4 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "pps_seq_parameter_set_id", v3[1]);
        v4 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "dependent_slice_segments_enabled_flag", v3[2]);
          v4 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "  %-44s : %lld\n", "output_flag_present_flag", v3[3]);
            v4 = dword_280B9A880;
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "  %-44s : %lld\n", "num_extra_slice_header_bits", v3[4]);
              v4 = dword_280B9A880;
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "  %-44s : %lld\n", "sign_data_hiding_flag", v3[5]);
                v4 = dword_280B9A880;
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(__stream, "  %-44s : %lld\n", "cabac_init_present_flag", v3[6]);
                  v4 = dword_280B9A880;
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(__stream, "  %-44s : %lld\n", "num_ref_idx_l0_default_active_minus1", v3[7]);
                    v4 = dword_280B9A880;
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(__stream, "  %-44s : %lld\n", "num_ref_idx_l1_default_active_minus1", v3[8]);
                      v4 = dword_280B9A880;
                      if (dword_280B9A880 >= 6)
                      {
                        result = fprintf(__stream, "  %-44s : %lld\n", "init_qp_minus26", v3[9]);
                        v4 = dword_280B9A880;
                        if (dword_280B9A880 >= 6)
                        {
                          result = fprintf(__stream, "  %-44s : %lld\n", "constrained_intra_pred_flag", v3[10]);
                          v4 = dword_280B9A880;
                          if (dword_280B9A880 >= 6)
                          {
                            result = fprintf(__stream, "  %-44s : %lld\n", "transform_skip_enabled_flag", v3[11]);
                            v4 = dword_280B9A880;
                            if (dword_280B9A880 >= 6)
                            {
                              result = fprintf(__stream, "  %-44s : %lld\n", "cu_qp_delta_enabled_flag", v3[12]);
                              v4 = dword_280B9A880;
                              if (v3[12] == 1 && dword_280B9A880 >= 6)
                              {
                                result = fprintf(__stream, "  %-44s : %lld\n", "diff_cu_qp_delta_depth", v3[13]);
                                v4 = dword_280B9A880;
                              }

                              if (v4 >= 6)
                              {
                                result = fprintf(__stream, "  %-44s : %lld\n", "pps_cb_qp_offset", v3[14]);
                                v4 = dword_280B9A880;
                                if (dword_280B9A880 >= 6)
                                {
                                  result = fprintf(__stream, "  %-44s : %lld\n", "pps_cr_qp_offset", v3[15]);
                                  v4 = dword_280B9A880;
                                  if (dword_280B9A880 >= 6)
                                  {
                                    result = fprintf(__stream, "  %-44s : %lld\n", "pps_slice_chroma_qp_offsets_present_flag", v3[16]);
                                    v4 = dword_280B9A880;
                                    if (dword_280B9A880 >= 6)
                                    {
                                      result = fprintf(__stream, "  %-44s : %lld\n", "weighted_pred_flag", v3[17]);
                                      v4 = dword_280B9A880;
                                      if (dword_280B9A880 >= 6)
                                      {
                                        result = fprintf(__stream, "  %-44s : %lld\n", "weighted_bipred_flag", v3[18]);
                                        v4 = dword_280B9A880;
                                        if (dword_280B9A880 >= 6)
                                        {
                                          result = fprintf(__stream, "  %-44s : %lld\n", "transquant_bypass_enabled_flag", v3[19]);
                                          v4 = dword_280B9A880;
                                          if (dword_280B9A880 >= 6)
                                          {
                                            result = fprintf(__stream, "  %-44s : %lld\n", "tiles_enabled_flag", v3[20]);
                                            v4 = dword_280B9A880;
                                            if (dword_280B9A880 >= 6)
                                            {
                                              result = fprintf(__stream, "  %-44s : %lld\n", "entropy_coding_sync_enabled_flag", v3[21]);
                                              v4 = dword_280B9A880;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v3[20] != 1)
  {
    goto LABEL_46;
  }

  if (v4 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "num_tile_columns_minus1", *(v3 + 11));
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "num_tile_rows_minus1", *(v3 + 12));
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "uniform_spacing_flag", v3[26]);
      }
    }
  }

  if (v3[26] == 1)
  {
    v4 = dword_280B9A880;
  }

  else
  {
    v5 = *(v3 + 11);
    v4 = dword_280B9A880;
    if (*(v3 + 11))
    {
      v6 = 0;
      do
      {
        if (v4 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "tiles_.column_width_minus1", *(*(v3 + 206) + 2 * v6));
          v4 = dword_280B9A880;
          v5 = *(v3 + 11);
        }

        ++v6;
      }

      while (v6 < v5);
    }

    v7 = *(v3 + 12);
    if (*(v3 + 12))
    {
      v8 = 0;
      do
      {
        if (v4 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "tiles_.row_height_minus1", *(*(v3 + 209) + 2 * v8));
          v4 = dword_280B9A880;
          v7 = *(v3 + 12);
        }

        ++v8;
      }

      while (v8 < v7);
    }
  }

  if (v4 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "loop_filter_across_tiles_enabled_flag", v3[27]);
    v4 = dword_280B9A880;
LABEL_46:
    if (v4 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "loop_filter_across_slices_enabled_flag", v3[28]);
      v4 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "deblocking_filter_control_present_flag", v3[29]);
        v4 = dword_280B9A880;
      }
    }
  }

  if (v3[29] == 1)
  {
    if (v4 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "deblocking_filter_override_enabled_flag", v3[30]);
      v4 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "pps_deblocking_filter_disabled_flag", v3[31]);
        v4 = dword_280B9A880;
      }
    }

    if ((v3[31] & 1) == 0)
    {
      if (v4 < 6)
      {
        goto LABEL_59;
      }

      result = fprintf(__stream, "  %-44s : %lld\n", "pps_beta_offset_div2", v3[32]);
      if (dword_280B9A880 < 6)
      {
        goto LABEL_59;
      }

      result = fprintf(__stream, "  %-44s : %lld\n", "pps_tc_offset_div2", v3[33]);
      v4 = dword_280B9A880;
    }
  }

  if (v4 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "pps_scaling_list_data_present_flag", v3[34]);
  }

LABEL_59:
  if (v3[34] == 1)
  {
    result = sub_2773FCD80((v3 + 40), __stream);
  }

  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "lists_modification_present_flag", v3[1608]);
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "log2_parallel_merge_level_minus2", *(v3 + 805));
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "slice_header_extension_present_flag", v3[1612]);
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "pps_extension_present_flag", v3[1613]);
        }
      }
    }
  }

  if (v3[1613] == 1)
  {
    v9 = dword_280B9A880;
    if (v3[11] == 1 && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "rext.log2_max_transform_skip_block_size_minus2", v3[1615]);
      v9 = dword_280B9A880;
    }

    if (v9 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "rext.cross_component_prediction_enabled_flag", v3[1616]);
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "rext.chroma_qp_offset_list_enabled_flag", v3[1617]);
      }
    }

    if (v3[1617] == 1)
    {
      v10 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "rext.diff_cu_chroma_qp_offset_depth", v3[1618]);
        v10 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "rext.chroma_qp_offset_list_len_minus1", v3[1619]);
          v10 = dword_280B9A880;
        }
      }

      v11 = 1626;
      do
      {
        if (v10 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "rext.cb_qp_offset_list", v3[v11 - 6]);
          v10 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "rext.cr_qp_offset_list", v3[v11]);
            v10 = dword_280B9A880;
          }
        }

        v12 = v11 - 1626;
        ++v11;
      }

      while (v12 < v3[1619]);
      if (v10 > 5)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "rext.log2_sao_offset_scale_luma", v3[1632]);
        if (dword_280B9A880 >= 6)
        {
          return fprintf(__stream, "  %-44s : %lld\n", "rext.log2_sao_offset_scale_chroma", v3[1633]);
        }
      }
    }
  }

  return result;
}

void sub_27742C5B0(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void sub_27742C6E4(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *), __n128 a4)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (a2 - a1 < 6145)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    while (1)
    {
      v10 = operator new(48 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  sub_27742C7F4(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_27742C7DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_27742C7F4(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *), unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = a1;
    if (a4 == 2)
    {
      v10 = a2 - 3;
      if ((*a3)(a2 - 3, a1))
      {
        a7 = *v9;
        v11 = v9[1];
        v12 = v9[2];
        v14 = a2[-2];
        v13 = a2[-1];
        *v9 = *v10;
        v9[1] = v14;
        v9[2] = v13;
        a2[-2] = v11;
        a2[-1] = v12;
        *v10 = a7;
      }
    }

    else if (a4 > 128)
    {
      v27 = a5;
      v28 = a4 >> 1;
      v29 = &a1[3 * (a4 >> 1)];
      v30 = a4 >> 1;
      if (a4 <= a6)
      {
        v31 = sub_27742CAAC(a1, v29, a3, v30, a5, a7);
        v32 = &v27[3 * v28];
        a7 = sub_27742CAAC(&v9[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v32, v31);
        v33 = &v27[3 * a4];
        v34 = v32;
        while (v34 != v33)
        {
          if ((*a3)(v34, v27, a7))
          {
            a7 = *v34;
            v35 = v34[2];
            v9[1] = v34[1];
            v9[2] = v35;
            *v9 = a7;
            v34 += 3;
          }

          else
          {
            a7 = *v27;
            v36 = v27[2];
            v9[1] = v27[1];
            v9[2] = v36;
            *v9 = a7;
            v27 += 3;
          }

          v9 += 3;
          if (v27 == v32)
          {
            while (v34 != v33)
            {
              a7 = *v34;
              v38 = v34[2];
              v9[1] = v34[1];
              v9[2] = v38;
              *v9 = a7;
              v9 += 3;
              v34 += 3;
            }

            return a7.n128_f64[0];
          }
        }

        while (v27 != v32)
        {
          a7 = *v27;
          v37 = v27[2];
          v9[1] = v27[1];
          v9[2] = v37;
          *v9 = a7;
          v9 += 3;
          v27 += 3;
        }
      }

      else
      {
        sub_27742C7F4(a1, v29, a3, v30, a5, a6);
        sub_27742C7F4(&v9[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v27, a6);

        a7.n128_u64[0] = sub_27742CD28(v9, &v9[3 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v27, a6).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v16 = a1 + 3;
      if (&a1[3] != a2)
      {
        v17 = 0;
        v18 = a1;
        do
        {
          v19 = v18;
          v18 = v16;
          if ((*a3)(v16, v19))
          {
            v20 = v18[1];
            v40 = *v18;
            v41 = v20;
            v42 = v18[2];
            v21 = v17;
            while (1)
            {
              v22 = (v9->n128_u64 + v21);
              v23 = *(&v9[1] + v21);
              v22[3] = *(v9 + v21);
              v22[4] = v23;
              v22[5] = *(&v9[2] + v21);
              if (!v21)
              {
                break;
              }

              v21 -= 48;
              if (((*a3)(&v40, v9 + v21) & 1) == 0)
              {
                v24 = (v9 + v21 + 48);
                goto LABEL_16;
              }
            }

            v24 = v9;
LABEL_16:
            v25 = v41;
            *v24 = v40;
            v24[1] = v25;
            a7.n128_u64[0] = v42.n128_u64[0];
            v24[2] = v42;
          }

          v16 = v18 + 3;
          v17 += 48;
        }

        while (&v18[3] != a2);
      }
    }
  }

  return a7.n128_f64[0];
}

__n128 sub_27742CAAC(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *), unint64_t a4, __n128 *a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v10 = a1;
    if (a4 == 2)
    {
      v12 = a2 - 3;
      if ((*a3)(a2 - 3, a1))
      {
        v13 = *v12;
        v14 = v12[2];
        v6[1] = v12[1];
        v6[2] = v14;
        *v6 = v13;
        result = *v10;
        v15 = v10[1];
        v16 = v10[2];
      }

      else
      {
        v27 = *v10;
        v28 = v10[2];
        v6[1] = v10[1];
        v6[2] = v28;
        *v6 = v27;
        result = *v12;
        v15 = v12[1];
        v16 = v12[2];
      }

      v6[4] = v15;
      v6[5] = v16;
      v6[3] = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v11 = a1[2];
      a5[1] = a1[1];
      a5[2] = v11;
      *a5 = result;
    }

    else if (a4 > 8)
    {
      v29 = &a1[3 * (a4 >> 1)];
      sub_27742C7F4(a1, v29, a3, a4 >> 1, a5, a4 >> 1);
      sub_27742C7F4(&v10[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &v6[3 * (a4 >> 1)], a4 - (a4 >> 1));
      v30 = &v10[3 * (a4 >> 1)];
      while (v30 != a2)
      {
        if ((*a3)(v30, v10))
        {
          result = *v30;
          v31 = v30[2];
          v6[1] = v30[1];
          v6[2] = v31;
          *v6 = result;
          v30 += 3;
        }

        else
        {
          result = *v10;
          v32 = v10[2];
          v6[1] = v10[1];
          v6[2] = v32;
          *v6 = result;
          v10 += 3;
        }

        v6 += 3;
        if (v10 == v29)
        {
          while (v30 != a2)
          {
            result = *v30;
            v34 = v30[2];
            v6[1] = v30[1];
            v6[2] = v34;
            *v6 = result;
            v6 += 3;
            v30 += 3;
          }

          return result;
        }
      }

      while (v10 != v29)
      {
        result = *v10;
        v33 = v10[2];
        v6[1] = v10[1];
        v6[2] = v33;
        *v6 = result;
        v6 += 3;
        v10 += 3;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v17 = a1[2];
      a5[1] = a1[1];
      a5[2] = v17;
      *a5 = result;
      v18 = a1 + 3;
      if (&a1[3] != a2)
      {
        v19 = 0;
        v20 = a5;
        do
        {
          v21 = v20;
          v20 += 3;
          v22 = v20;
          if ((*a3)(v18, v21))
          {
            v23 = v21[1];
            *v20 = *v21;
            v20[1] = v23;
            v20[2] = v21[2];
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v19;
              while (1)
              {
                v22 = (v6 + v24);
                if (!(*a3)(v18, (v6 + v24 - 48)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 32);
                *v22 = *(v6 + v24 - 48);
                v22[1] = v25;
                v22[2] = *(v6 + v24 - 16);
                v24 -= 48;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v18;
          v26 = v18[2];
          v22[1] = v18[1];
          v22[2] = v26;
          *v22 = result;
          v18 += 3;
          v19 += 48;
        }

        while (v18 != a2);
      }
    }
  }

  return result;
}

__n128 sub_27742CD28(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      while (((*a4)(a2, a1) & 1) == 0)
      {
        a1 += 3;
        if (!--a5)
        {
          return result;
        }
      }

      v79 = a4;
      v80 = a7;
      v78 = v10;
      if (a5 >= v10)
      {
        if (a5 == 1)
        {
          v89 = a1[1];
          v94 = a1[2];
          v85 = *a1;
          v74 = *a2;
          v75 = a2[2];
          a1[1] = a2[1];
          a1[2] = v75;
          *a1 = v74;
          result = v85;
          a2[1] = v89;
          a2[2] = v94;
          *a2 = v85;
          return result;
        }

        v77 = a5 / 2;
        v20 = &a1[3 * (a5 / 2)];
        v23 = a3 - a2;
        if (a3 == a2)
        {
          v28 = a3;
          v29 = a3;
          v18 = a2;
        }

        else
        {
          v76 = a3;
          v24 = *v79;
          v25 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 4);
          v18 = a2;
          do
          {
            v26 = &v18[3 * (v25 >> 1)];
            v27 = v24(v26, &a1[3 * (a5 / 2)]);
            if (v27)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v27)
            {
              v18 = v26 + 3;
            }
          }

          while (v25);
          v28 = v18;
          v29 = a2;
          a3 = v76;
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * (v28 - v29);
      }

      else
      {
        v17 = v10 / 2;
        v18 = &a2[3 * (v10 / 2)];
        if (a2 == a1)
        {
          v21 = a2;
          v22 = a2;
          v20 = a1;
        }

        else
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
          v20 = a1;
          do
          {
            if ((*v79)(&a2[3 * (v10 / 2)], &v20[3 * (v19 >> 1)]))
            {
              v19 >>= 1;
            }

            else
            {
              v20 += 3 * (v19 >> 1) + 3;
              v19 += ~(v19 >> 1);
            }
          }

          while (v19);
          v21 = v20;
          v22 = a1;
          v17 = v10 / 2;
        }

        v77 = 0xAAAAAAAAAAAAAAABLL * (v21 - v22);
      }

      v30 = v18;
      if (v20 != a2)
      {
        v30 = v20;
        if (a2 != v18)
        {
          v31 = v20 + 3;
          if (&v20[3] == a2)
          {
            v87 = v20[1];
            v91 = v20[2];
            v82 = *v20;
            v39 = v17;
            memmove(v20, v31, v18 - a2);
            v17 = v39;
            v30 = (v20 + v18 - a2);
            *v30 = v82;
            v30[1] = v87;
            v30[2] = v91;
          }

          else
          {
            v32 = a2 + 3;
            if (&a2[3] == v18)
            {
              v30 = v20 + 3;
              v88 = v18[-2];
              v92 = v18[-1];
              v83 = v18[-3];
              if (&v18[-3] != v20)
              {
                v40 = v17;
                memmove(&v20[3], v20, &v18[-3] - v20);
                v17 = v40;
              }

              v20[1] = v88;
              v20[2] = v92;
              *v20 = v83;
            }

            else
            {
              v33 = a2 - v20;
              v34 = 0xAAAAAAAAAAAAAAABLL * (a2 - v20);
              v35 = 0xAAAAAAAAAAAAAAABLL * (v18 - a2);
              if (v34 == v35)
              {
                do
                {
                  v86 = v31[-2];
                  v90 = v31[-1];
                  v81 = v31[-3];
                  v36 = v32[-3];
                  v37 = v32[-1];
                  v31[-2] = v32[-2];
                  v31[-1] = v37;
                  v31[-3] = v36;
                  v32[-2] = v86;
                  v32[-1] = v90;
                  v32[-3] = v81;
                  if (v31 == a2)
                  {
                    break;
                  }

                  v31 += 3;
                  v38 = v32 == v18;
                  v32 += 3;
                }

                while (!v38);
                v30 = a2;
              }

              else
              {
                v41 = 0xAAAAAAAAAAAAAAABLL * (a2 - v20);
                do
                {
                  v42 = v41;
                  v41 = v35;
                  v35 = v42 % v35;
                }

                while (v35);
                v43 = &v20[3 * v41];
                do
                {
                  v44 = v43[-3];
                  v45 = v43[-2];
                  v46 = v43[-1];
                  v43 -= 3;
                  v93 = v46;
                  v84 = v44;
                  v47 = (v43 + v33);
                  v48 = v43;
                  do
                  {
                    v49 = v48;
                    v48 = v47;
                    v50 = *v47;
                    v51 = v47[2];
                    v49[1] = v47[1];
                    v49[2] = v51;
                    *v49 = v50;
                    v52 = 0xAAAAAAAAAAAAAAABLL * (v18 - v47);
                    v53 = __OFSUB__(v34, v52);
                    v55 = v34 - v52;
                    v54 = (v55 < 0) ^ v53;
                    v47 = &v20[3 * v55];
                    if (v54)
                    {
                      v47 = (v48 + v33);
                    }
                  }

                  while (v47 != v43);
                  v48[1] = v45;
                  v48[2] = v93;
                  *v48 = v84;
                }

                while (v43 != v20);
                v30 = (v20 + v18 - a2);
              }
            }
          }
        }
      }

      a5 -= v77;
      v10 = v78 - v17;
      if (v77 + v17 >= a5 + v78 - v17)
      {
        v57 = a5;
        v58 = v17;
        sub_27742CD28(v30, v18, a3, v79, v57, v78 - v17, v80, a8);
        v18 = v20;
        a4 = v79;
        v10 = v58;
        a5 = v77;
        a3 = v30;
      }

      else
      {
        v56 = v20;
        a4 = v79;
        sub_27742CD28(a1, v56, v30, v79, v77, v17, v80, a8);
        a1 = v30;
      }

      a2 = v18;
      a7 = v80;
      if (!v10)
      {
        return result;
      }
    }

    if (a5 <= v10)
    {
      if (a1 != a2)
      {
        v68 = a7;
        v69 = a1;
        do
        {
          v70 = *v69;
          v71 = v69[2];
          *(v68 + 1) = v69[1];
          *(v68 + 2) = v71;
          *v68 = v70;
          v68 += 48;
          v69 += 3;
        }

        while (v69 != a2);
        while (a2 != a3)
        {
          if ((*a4)(a2, a7))
          {
            result = *a2;
            v72 = a2[2];
            a1[1] = a2[1];
            a1[2] = v72;
            *a1 = result;
            a2 += 3;
          }

          else
          {
            result = *a7;
            v73 = *(a7 + 2);
            a1[1] = *(a7 + 1);
            a1[2] = v73;
            *a1 = result;
            a7 += 48;
          }

          a1 += 3;
          if (a7 == v68)
          {
            return result;
          }
        }

        memmove(a1, a7, v68 - a7);
      }
    }

    else if (a2 != a3)
    {
      v59 = a7;
      v60 = a2;
      do
      {
        result = *v60;
        v61 = v60[2];
        *(v59 + 1) = v60[1];
        *(v59 + 2) = v61;
        *v59 = result;
        v59 += 48;
        v60 += 3;
      }

      while (v60 != a3);
      while (a2 != a1)
      {
        v62 = (*a4)((v59 - 48), &a2[-3]);
        if (v62)
        {
          v63 = a2 - 3;
        }

        else
        {
          v63 = (v59 - 48);
        }

        v64 = v63[1];
        result = v63[2];
        a3[-3] = *v63;
        a3[-2] = v64;
        a3[-1] = result;
        a3 -= 3;
        if (v62)
        {
          a2 -= 3;
        }

        else
        {
          v59 -= 48;
        }

        if (v59 == a7)
        {
          return result;
        }
      }

      if (v59 != a7)
      {
        v65 = 0xFFFFFFFFFFFFFFDLL;
        do
        {
          result = *(v59 - 3);
          v66 = *(v59 - 1);
          v67 = &a3[v65];
          v67[1] = *(v59 - 2);
          v67[2] = v66;
          *v67 = result;
          v65 -= 3;
          v59 -= 48;
        }

        while (v59 != a7);
      }
    }
  }

  return result;
}

BOOL sub_27742D334(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  v3 = *(a2 + 36);
  if (v3 < 0)
  {
    v3 = -v3;
  }

  return v2 < v3;
}

uint64_t sub_27742D380(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int8x8_t a6)
{
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[2];
  v13 = a3 - 2;
  v214 = v7;
  if (2 * a3 < 2)
  {
    LODWORD(v14) = 0;
    LODWORD(v17) = 0;
  }

  else
  {
    v14 = 0;
    v15 = &unk_27753583D + 36 * (a5 > 0) + 9 * a3 - 18;
    v16 = v7 + 83;
    v17 = (2 * a3 - 1);
    while (1)
    {
      v18 = v15[v14];
      v19 = v16[v18];
      v20 = byte_27750DDF3[(v9 & 0xC0) + (v19 >> 1)];
      LODWORD(v21) = v9 - v20;
      v22 = v8 >= (v9 - v20) << 55;
      if (v8 < (v9 - v20) << 55)
      {
        v21 = v21;
      }

      else
      {
        v21 = byte_27750DDF3[(v9 & 0xC0) + (v19 >> 1)];
      }

      if (v8 < (v9 - v20) << 55)
      {
        v23 = 0;
      }

      else
      {
        v8 -= (v9 - v20) << 55;
        v23 = 1;
      }

      if (v22)
      {
        v24 = v19 + 1;
      }

      else
      {
        v24 = v16[v18];
      }

      v25 = __clz(v21) - 55;
      v8 <<= v25;
      v16[v18] = byte_27750DDF3[2 * v19 + 256 + v23];
      v12 += v25;
      if (v12 >= 0)
      {
        v26 = *v10++;
        v8 += bswap32(v26) << v12;
        v12 -= 32;
        if (v10 >= v11)
        {
          v10 = v11;
        }
      }

      v9 = v21 << v25;
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (v17 == ++v14)
      {
        LODWORD(v14) = 2 * a3 - 1;
        break;
      }
    }

    v27 = 0;
    v28 = *(a1 + 40) + 101;
    while (1)
    {
      v29 = v15[v27];
      v30 = *(v28 + v29);
      v31 = byte_27750DDF3[(v9 & 0xC0) + (v30 >> 1)];
      LODWORD(v32) = v9 - v31;
      v33 = v8 >= (v9 - v31) << 55;
      if (v8 < (v9 - v31) << 55)
      {
        v32 = v32;
      }

      else
      {
        v32 = byte_27750DDF3[(v9 & 0xC0) + (v30 >> 1)];
      }

      if (v8 < (v9 - v31) << 55)
      {
        v34 = 0;
      }

      else
      {
        v8 -= (v9 - v31) << 55;
        v34 = 1;
      }

      if (v33)
      {
        v35 = v30 + 1;
      }

      else
      {
        v35 = *(v28 + v29);
      }

      v36 = __clz(v32) - 55;
      v8 <<= v36;
      *(v28 + v29) = byte_27750DDF3[2 * v30 + 256 + v34];
      v12 += v36;
      if (v12 >= 0)
      {
        v37 = *v10++;
        v8 += bswap32(v37) << v12;
        v12 -= 32;
        if (v10 >= v11)
        {
          v10 = v11;
        }
      }

      v9 = v32 << v36;
      if ((v35 & 1) == 0)
      {
        break;
      }

      if (v17 == ++v27)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v17) = v27;
LABEL_36:
    if (v14 >= 4)
    {
      v38 = 0;
      v39 = v14 >> 1;
      v40 = (v14 >> 1) - 1;
      v41 = v9 << 54;
      do
      {
        v42 = v8 >= v41;
        if (v8 < v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = v9 << 54;
        }

        v8 = 2 * (v8 - v43);
        v38 = v42 | (2 * v38);
        --v39;
      }

      while (v39 > 1);
      v12 += v40;
      if (v12 >= 0)
      {
        v44 = *v10++;
        v8 += bswap32(v44) << v12;
        v12 -= 32;
        if (v10 >= v11)
        {
          v10 = v11;
        }
      }

      LODWORD(v14) = v38 + ((v14 & 1 | 2) << v40);
    }

    if (v17 >= 4)
    {
      v45 = 0;
      v46 = v17 >> 1;
      v47 = (v17 >> 1) - 1;
      v48 = v9 << 54;
      do
      {
        v49 = v8 >= v48;
        if (v8 < v48)
        {
          v50 = 0;
        }

        else
        {
          v50 = v9 << 54;
        }

        v8 = 2 * (v8 - v50);
        v45 = v49 | (2 * v45);
        --v46;
      }

      while (v46 > 1);
      v12 += v47;
      if (v12 >= 0)
      {
        v51 = *v10++;
        v8 += bswap32(v51) << v12;
        v12 -= 32;
        if (v10 >= v11)
        {
          v10 = v11;
        }
      }

      LODWORD(v17) = v45 + ((v17 & 1 | 2) << v47);
    }
  }

  v216 = v6 + 4096;
  if (a4 == 2)
  {
    v52 = v17;
  }

  else
  {
    v52 = v14;
  }

  if (a4 == 2)
  {
    LODWORD(v17) = v14;
  }

  v53 = 4 * a4;
  if (a3 != 3)
  {
    v53 = 0;
  }

  v54 = (v17 >> 2 << (a3 - 2)) + (v52 >> 2);
  v55 = v52 & 3;
  v56 = **(v6 + 48);
  v57 = v56 >> 9;
  v58 = *(v6 + 32);
  if (a5)
  {
    v59 = v57 + *(v58 + a5 + 656) + *(*(v6 + 24) + a5 + 2);
    v60 = *(v58 + 16);
    v61 = v60[2099];
    if ((v59 + v61 < 0) ^ __OFADD__(v59, v61) | (v59 + v61 == 0))
    {
      v57 = -v61;
    }

    else
    {
      v57 += *(v58 + a5 + 656) + *(*(v6 + 24) + a5 + 2);
    }

    if (v60[2148] == 1)
    {
      if (v59 >= 30)
      {
        if (v57 >= 57)
        {
          v62 = 57;
        }

        else
        {
          v62 = v57;
        }

        v57 = byte_27753C740[v62 - 30];
      }
    }

    else if (v57 >= 51)
    {
      v57 = 51;
    }

    v63 = a3;
    v64 = v60 + 223;
  }

  else
  {
    v63 = a3;
    v60 = *(v58 + 16);
    v61 = v60[2097];
    v64 = v60 + 222;
  }

  v223 = 0;
  v65 = *(v6 + 40);
  v66 = v55 & 0xFFFFFFF3 | (4 * (v17 & 3));
  v226 = *(*(&off_27A7166D0 + v13) + v53 + v54);
  v67 = v61 & (v57 >> 31);
  v68 = *(v6 + 6426);
  v69 = *(v58 + 32);
  if (*(v69 + 5) == 1 && (**(v6 + 48) & 0x100) == 0)
  {
    v223 = *(v6 + 6427) == 0;
  }

  v249 = &unk_27753D160 + 64 * a4 + 16 * v13;
  v70 = v63 + (*v64 & (v57 >> 31)) + 3;
  v71 = v60[402] & (v68 | ((v56 & 0x100) >> 8));
  v215 = byte_27753DDA0[16 * a4 + v66];
  v72 = *(&off_27A716BD8 + v13) + v53;
  if (v60[274] != 1 || ((v63 > 2) & v68) != 0)
  {
    v74 = 0;
    v70 = v63 + (*v64 & (v57 >> 31)) - 1;
  }

  else
  {
    if (*(v6 + 4) == 1)
    {
      v73 = 0;
    }

    else
    {
      v73 = 3;
    }

    v74 = v69 + 390 * v13 + 65 * (v73 + a5) + 40;
  }

  v75 = v226;
  v245 = v74;
  v225 = v65 + 2 * (a5 > 0) + 119;
  v217 = v65 + 4 * (a5 > 0) + 191;
  v218 = v65 + 16 * (a5 > 0) + 167;
  v236 = (1 << v72[v226]) | (1 << *v72);
  v76 = v215 & 0xF;
  v77 = (1 << v76);
  v231 = ~(-1 << v13);
  v234 = 1 << v13;
  v233 = (1 << v13) - 1;
  v78 = v63;
  v230 = 4 << v63;
  if ((a5 < 1) | v71 & 1)
  {
    v79 = 0;
  }

  else
  {
    v79 = 27;
  }

  v229 = v79;
  if (a5)
  {
    v80 = 43;
  }

  else
  {
    v80 = 42;
  }

  v228 = v80;
  if (a4)
  {
    v81 = 15;
  }

  else
  {
    v81 = 9;
  }

  v240 = v63 - 3;
  if (v63 == 3)
  {
    v82 = 9;
  }

  else
  {
    v82 = 12;
  }

  v235 = v82;
  v242 = ~(-1 << v63);
  if (v63 == 3)
  {
    v83 = v81;
  }

  else
  {
    v83 = 21;
  }

  v227 = v83;
  v241 = a39H[(v67 + v57) % 6] << ((v67 + v57) / 6);
  v243 = v70;
  v244 = 1 << (v70 - 1);
  v84 = v226;
  v85 = 1;
  v238 = v63;
  v222 = a5;
  v232 = v6;
  v239 = v11;
  v220 = v71;
  v219 = v72;
  v221 = v13;
  do
  {
    v237 = v84;
    v86 = v72[v84];
    v87 = v86 >> v13;
    if ((v233 & v86) >= v233)
    {
      v88 = 0;
    }

    else
    {
      v88 = (v236 >> v86) & 2;
    }

    v89 = (v236 >> (v234 + v86)) & 1;
    if (v87 >= v233)
    {
      LODWORD(v89) = 0;
    }

    v90 = v89 | v88;
    v91 = v84 == v75 || v84 == 0;
    v92 = v91;
    if (!v91)
    {
      v93 = v225;
      if (v90)
      {
        v93 = (v225 + 1);
      }

      v94 = *v93;
      v95 = byte_27750DDF3[(v9 & 0xC0) + (v94 >> 1)];
      LODWORD(v96) = v9 - v95;
      v97 = v8 >= (v9 - v95) << 55;
      if (v8 < (v9 - v95) << 55)
      {
        v96 = v96;
      }

      else
      {
        v96 = byte_27750DDF3[(v9 & 0xC0) + (v94 >> 1)];
      }

      if (v8 < (v9 - v95) << 55)
      {
        v98 = 0;
      }

      else
      {
        v8 -= (v9 - v95) << 55;
        v98 = 1;
      }

      if (v97)
      {
        v99 = v94 + 1;
      }

      else
      {
        v99 = *v93;
      }

      v100 = __clz(v96) - 55;
      v8 <<= v100;
      *v93 = byte_27750DDF3[2 * v94 + 256 + v98];
      v12 += v100;
      if (v12 >= 0)
      {
        v101 = *v10++;
        v8 += bswap32(v101) << v12;
        v12 -= 32;
        if (v10 >= v11)
        {
          v10 = v11;
        }
      }

      v9 = v96 << v100;
      if ((v99 & 1) == 0)
      {
        goto LABEL_323;
      }

      v236 |= 1 << v86;
    }

    v247 = v87 * v230 + 4 * (v86 & v231);
    v102 = *(v6 + 40) + v229 + 123;
    v103 = v92 ^ 1u;
    if (v76 <= v103)
    {
      v105 = v228;
    }

    else
    {
      v104 = v76 - 1;
      v105 = v228;
      do
      {
        if ((v71 & 1) == 0)
        {
          v106 = v249[v104];
          v107 = v247 + v106;
          if (v78 == 2)
          {
            v105 = byte_27753DE10[v107 + 64];
          }

          else if (v107 < 1)
          {
            v105 = 0;
          }

          else
          {
            v108 = byte_27753DE10[16 * v90 + (v106 & 3 | (4 * ((v107 >> v78) & 3)))];
            if (a5)
            {
              v109 = v235;
            }

            else
            {
              if ((v107 & v242 | (v107 >> v78)) >= 4)
              {
                v109 = v108 + 3;
              }

              else
              {
                v109 = v108;
              }

              v108 = v227;
            }

            v105 = v109 + v108;
          }
        }

        v110 = *(v102 + v105);
        v111 = byte_27750DDF3[(v9 & 0xC0) + (v110 >> 1)];
        LODWORD(v112) = v9 - v111;
        v113 = v8 >= (v9 - v111) << 55;
        if (v8 < (v9 - v111) << 55)
        {
          v112 = v112;
        }

        else
        {
          v112 = byte_27750DDF3[(v9 & 0xC0) + (v110 >> 1)];
        }

        if (v8 < (v9 - v111) << 55)
        {
          v114 = 0;
        }

        else
        {
          v8 -= (v9 - v111) << 55;
          v114 = 1;
        }

        if (v113)
        {
          v115 = v110 + 1;
        }

        else
        {
          v115 = *(v102 + v105);
        }

        v116 = __clz(v112) - 55;
        v8 <<= v116;
        *(v102 + v105) = byte_27750DDF3[2 * v110 + 256 + v114];
        v12 += v116;
        if (v12 >= 0)
        {
          v117 = *v10++;
          v8 += bswap32(v117) << v12;
          v12 -= 32;
          if (v10 >= v11)
          {
            v10 = v11;
          }
        }

        v9 = v112 << v116;
        v77 = ((v115 & 1) << v104) | v77;
        v134 = v104-- <= v103;
      }

      while (!v134);
    }

    v118 = v237;
    if ((v92 & 1) == 0)
    {
      if (v77)
      {
        if ((v71 & 1) == 0)
        {
          if (v78 == 2)
          {
            v105 = byte_27753DE10[v247 + 64];
          }

          else if (v247 < 1)
          {
            v105 = 0;
          }

          else
          {
            v120 = byte_27753DE10[16 * v90 + 4 * ((v247 >> v78) & 3)];
            v121 = v235 + v120;
            if ((v247 & v242 | (v247 >> v78)) >= 4)
            {
              v120 += 3;
            }

            v122 = v120 + v227;
            if (a5)
            {
              v105 = v121;
            }

            else
            {
              v105 = v122;
            }
          }
        }

        v123 = *(v102 + v105);
        v124 = byte_27750DDF3[(v9 & 0xC0) + (v123 >> 1)];
        LODWORD(v125) = v9 - v124;
        v126 = v8 >= (v9 - v124) << 55;
        if (v8 < (v9 - v124) << 55)
        {
          v125 = v125;
        }

        else
        {
          v125 = byte_27750DDF3[(v9 & 0xC0) + (v123 >> 1)];
        }

        if (v8 < (v9 - v124) << 55)
        {
          v127 = 0;
        }

        else
        {
          v8 -= (v9 - v124) << 55;
          v127 = 1;
        }

        if (v126)
        {
          v128 = v123 + 1;
        }

        else
        {
          v128 = *(v102 + v105);
        }

        v129 = __clz(v125);
        v130 = v129 - 55;
        v9 = v125 << (v129 - 55);
        v8 <<= v129 - 55;
        v119 = v128 & 1;
        *(v102 + v105) = byte_27750DDF3[2 * v123 + 256 + v127];
        v12 += v130;
        if (v12 >= 0)
        {
          v131 = *v10++;
          v8 += bswap32(v131) << v12;
          v12 -= 32;
          if (v10 >= v11)
          {
            v10 = v11;
          }
        }

        v118 = v237;
      }

      else
      {
        v119 = 1;
      }

      v77 = v119 | v77;
    }

    if (!v77)
    {
      v76 = 16;
      goto LABEL_324;
    }

    v132 = 0;
    v133 = 0;
    if (v118)
    {
      v134 = a5 <= 0;
    }

    else
    {
      v134 = 0;
    }

    if (v134)
    {
      v135 = 2;
    }

    else
    {
      v135 = 0;
    }

    if (v85)
    {
      v136 = v135;
    }

    else
    {
      v136 = v135 + 1;
    }

    v137 = v218 + 4 * v136;
    a6.i32[0] = v77;
    a6 = vcnt_s8(a6);
    a6.i16[0] = vaddlv_u8(a6);
    if (a6.i32[0] >= 8u)
    {
      v138 = 8;
    }

    else
    {
      v138 = a6.i32[0];
    }

    v85 = 1;
    do
    {
      while (1)
      {
        v139 = *(v137 + v85);
        v140 = byte_27750DDF3[(v9 & 0xC0) + (v139 >> 1)];
        LODWORD(v141) = v9 - v140;
        v142 = v8 >= (v9 - v140) << 55;
        if (v8 < (v9 - v140) << 55)
        {
          v141 = v141;
        }

        else
        {
          v141 = byte_27750DDF3[(v9 & 0xC0) + (v139 >> 1)];
        }

        if (v8 < (v9 - v140) << 55)
        {
          v143 = 0;
        }

        else
        {
          v8 -= (v9 - v140) << 55;
          v143 = 1;
        }

        if (v142)
        {
          v144 = v139 + 1;
        }

        else
        {
          v144 = *(v137 + v85);
        }

        v145 = __clz(v141) - 55;
        v8 <<= v145;
        *(v137 + v85) = byte_27750DDF3[2 * v139 + 256 + v143];
        v12 += v145;
        if (v12 >= 0)
        {
          v146 = *v10++;
          v8 += bswap32(v146) << v12;
          v12 -= 32;
          if (v10 >= v11)
          {
            v10 = v11;
          }
        }

        v9 = v141 << v145;
        v132 |= (v144 & 1) << v133;
        if ((v144 & 1) == 0)
        {
          break;
        }

        v85 = 0;
        if (++v133 == v138)
        {
          v248 = a2 + 2 * v247;
          v148 = a6.i32[0] > 8u;
          v147 = v241;
          goto LABEL_224;
        }
      }

      if ((v85 - 1) < 2)
      {
        ++v85;
      }

      ++v133;
    }

    while (v133 != v138);
    v248 = a2 + 2 * v247;
    v148 = a6.i32[0] > 8u;
    v147 = v241;
    if (v85)
    {
      v149 = 0;
      v150 = 0;
      goto LABEL_237;
    }

LABEL_224:
    v151 = *(v217 + v136);
    v152 = byte_27750DDF3[((v141 << v145) & 0xC0) + (v151 >> 1)];
    LODWORD(v153) = v9 - v152;
    v154 = v8 >= (v9 - v152) << 55;
    if (v8 < (v9 - v152) << 55)
    {
      v153 = v153;
    }

    else
    {
      v153 = byte_27750DDF3[((v141 << v145) & 0xC0) + (v151 >> 1)];
    }

    if (v8 < (v9 - v152) << 55)
    {
      v155 = 0;
    }

    else
    {
      v8 -= (v9 - v152) << 55;
      v155 = 1;
    }

    if (v154)
    {
      v156 = v151 + 1;
    }

    else
    {
      v156 = *(v217 + v136);
    }

    v157 = __clz(v153) - 55;
    v9 = v153 << v157;
    v8 <<= v157;
    v150 = v156 & 1;
    *(v217 + v136) = byte_27750DDF3[2 * v151 + 256 + v155];
    v85 = 0;
    v12 += v157;
    if (v12 >= 0)
    {
      v158 = *v10++;
      v8 += bswap32(v158) << v12;
      v12 -= 32;
      if (v10 >= v11)
      {
        v10 = v11;
      }
    }

    v149 = 1;
LABEL_237:
    v159 = 0;
    v160 = __clz(v77);
    v161 = v160 ^ 0x1F;
    v162 = v160 + 1;
    v163 = ((v160 ^ 0x1F) - __clz(__rbit32(v77))) > 3 && v223;
    v164 = v9 << 54;
    v165 = a6.i32[0] - v163 + 1;
    do
    {
      v166 = v8 >= v164;
      if (v8 < v164)
      {
        v167 = 0;
      }

      else
      {
        v167 = v9 << 54;
      }

      v8 = 2 * (v8 - v167);
      v159 = v166 | (2 * v159);
      --v165;
    }

    while (v165 > 1);
    v168 = v78;
    v12 += (a6.i32[0] - v163);
    if (v12 >= 0)
    {
      v169 = *v10++;
      v8 += bswap32(v169) << v12;
      v12 -= 32;
      if (v10 >= v11)
      {
        v10 = v11;
      }
    }

    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = v77 << v162;
    v175 = v159 << (v163 - a6.i8[0]);
    v246 = __clz(__rbit32(v132));
    v176 = v148 | v149;
    v177 = *(v232 + 48);
    if (a6.i32[0] <= 1u)
    {
      v178 = 1;
    }

    else
    {
      v178 = a6.i32[0];
    }

    v179 = v178 - 1;
    v180 = !v163;
    v181 = v132;
    while (1)
    {
      if (v181)
      {
        v182 = v150 + 2;
      }

      else
      {
        v182 = 1;
      }

      if (v181)
      {
        v150 = 0;
      }

      if (v176)
      {
        v183 = (v181 & 1) == 0;
        if (v246 != v170 || v132 == 0)
        {
          v185 = 2;
        }

        else
        {
          v185 = 3;
        }

        v186 = v185 == v182;
        if (v170 < 8)
        {
          v183 = v186;
        }

        if (v183)
        {
          if (v173 <= 3 << v172)
          {
            v187 = v172;
          }

          else
          {
            v187 = v172 + 1;
          }

          if (v187 >= 4)
          {
            v172 = 4;
          }

          else
          {
            v172 = v187;
          }

          if (v8 >= v164)
          {
            v189 = 0;
            do
            {
              v188 = v189 + 1;
              v8 = 2 * (v8 - v164);
            }

            while (v8 >= v164 && v189++ < 0x11);
          }

          else
          {
            v188 = 0;
          }

          v8 *= 2;
          v12 += v188 + 1;
          if (v12 >= 0)
          {
            v191 = *v10++;
            v8 += bswap32(v191) << v12;
            v12 -= 32;
            if (v10 >= v239)
            {
              v10 = v239;
            }
          }

          v192 = v188 - 3;
          if (v188 <= 2)
          {
            v192 = 0;
          }

          else
          {
            v188 = (1 << (v188 - 3)) + 2;
          }

          v193 = v188 << v172;
          v194 = v192 + v172;
          if (v192 + v172)
          {
            v195 = 0;
            v196 = v192 + v172 + 1;
            do
            {
              v197 = v8 >= v164;
              if (v8 < v164)
              {
                v198 = 0;
              }

              else
              {
                v198 = v9 << 54;
              }

              v8 = 2 * (v8 - v198);
              v195 = v197 | (2 * v195);
              --v196;
            }

            while (v196 > 1);
            v12 += v194;
            if (v12 >= 0)
            {
              v199 = *v10++;
              v8 += bswap32(v199) << v12;
              v12 -= 32;
              if (v10 >= v239)
              {
                v10 = v239;
              }
            }

            v168 = v238;
            v193 += v195;
          }

          else
          {
            v168 = v238;
          }

          v173 = v193 + v182;
          v182 = v173;
        }
      }

      v171 += v182;
      if (v170 == a6.i32[0] - 1)
      {
        v200 = v180;
      }

      else
      {
        v200 = 1;
      }

      v201 = (v182 ^ (v175 >> 31)) - (v175 >> 31);
      if (v171)
      {
        v182 = -v182;
      }

      if (v200)
      {
        v175 *= 2;
        v202 = v201;
      }

      else
      {
        v202 = v182;
      }

      v203 = v249[v161];
      if ((*v177 & 0x100) == 0)
      {
        v204 = v147;
        if (v245)
        {
          v205 = v247 + v203;
          v147 = v241;
          v206 = ((v205 & v242) >> v240) + 8 * (v205 >> v168 >> v240);
          if (v168 < 4)
          {
            v206 = v247 + v203;
          }

          if (v205)
          {
            v207 = v206 + 1;
          }

          else
          {
            v207 = v206;
          }

          v204 = *(v245 + v207) * v241;
        }

        v208 = (v244 + v204 * v202) >> v243;
        if (v208 >= 0x7FFF)
        {
          v208 = 0x7FFFLL;
        }

        if (v208 <= -32768)
        {
          LOWORD(v202) = 0x8000;
        }

        else
        {
          LOWORD(v202) = v208;
        }
      }

      *(v248 + 2 * v249[v161]) = v202;
      if (v170 == v179)
      {
        break;
      }

      ++v170;
      v181 >>= 1;
      v209 = __clz(v174) + 1;
      LODWORD(v174) = v174 << v209;
      v161 -= v209;
    }

    v77 = 0;
    v76 = 16;
    a5 = v222;
    v13 = v221;
    v6 = v232;
    v11 = v239;
    v75 = v226;
    LOBYTE(v71) = v220;
    v72 = v219;
    v78 = v168;
LABEL_323:
    v118 = v237;
LABEL_324:
    v84 = v118 - 1;
  }

  while (v118 > 0);
  v210 = *(v6 + 32);
  if (*(v216 + 2330) == 1)
  {
    v211 = *(v210 + 2280);
    v212 = a5 != 0;
    if (*(v216 + 2331))
    {
      (*(v211 + 8 * v212 + 936))(a2);
    }

    else
    {
      (*(v211 + 32 * v212 + 8 * v13 + 728))(a2);
    }
  }

  else if (*(v216 + 2331))
  {
    (*(*(v210 + 2280) + 8 * (*(v216 + 2331) - 1) + 920))(a2);
  }

  *v214 = v8;
  v214[1] = v9;
  v214[2] = v12;
  v214[3] = v10;
  return (v215 + 16 * v75 + 1);
}

void sub_27742E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = v12;
  a10[1] = v13;
  a10[2] = v10;
  a10[3] = v11;
  _Unwind_Resume(a1);
}

uint64_t sub_27742E250(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int8x8_t a6)
{
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *v7;
  v9 = v7[1];
  v11 = v7[3];
  v10 = v7[4];
  v12 = v7[2];
  v13 = a3 - 2;
  v250 = v10;
  v223 = v7;
  if (2 * a3 < 2)
  {
    LODWORD(v14) = 0;
    LODWORD(v17) = 0;
  }

  else
  {
    v14 = 0;
    v15 = &unk_27753583D + 36 * (a5 > 0) + 9 * a3 - 18;
    v16 = v7 + 83;
    v17 = (2 * a3 - 1);
    while (1)
    {
      v18 = v15[v14];
      v19 = v16[v18];
      v20 = byte_27750DDF3[(v9 & 0xC0) + (v19 >> 1)];
      LODWORD(v21) = v9 - v20;
      v22 = v8 >= (v9 - v20) << 55;
      if (v8 < (v9 - v20) << 55)
      {
        v21 = v21;
      }

      else
      {
        v21 = byte_27750DDF3[(v9 & 0xC0) + (v19 >> 1)];
      }

      if (v8 < (v9 - v20) << 55)
      {
        v23 = 0;
      }

      else
      {
        v8 -= (v9 - v20) << 55;
        v23 = 1;
      }

      if (v22)
      {
        v24 = v19 + 1;
      }

      else
      {
        v24 = v16[v18];
      }

      v25 = __clz(v21) - 55;
      v8 <<= v25;
      v16[v18] = byte_27750DDF3[2 * v19 + 256 + v23];
      v12 += v25;
      if (v12 >= 0)
      {
        v26 = *v11++;
        v8 += bswap32(v26) << v12;
        v12 -= 32;
        if (v11 >= v10)
        {
          v11 = v10;
        }
      }

      v9 = v21 << v25;
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (v17 == ++v14)
      {
        LODWORD(v14) = 2 * a3 - 1;
        break;
      }
    }

    v27 = 0;
    v28 = *(a1 + 40) + 101;
    while (1)
    {
      v29 = v15[v27];
      v30 = *(v28 + v29);
      v31 = byte_27750DDF3[(v9 & 0xC0) + (v30 >> 1)];
      LODWORD(v32) = v9 - v31;
      v33 = v8 >= (v9 - v31) << 55;
      if (v8 < (v9 - v31) << 55)
      {
        v32 = v32;
      }

      else
      {
        v32 = byte_27750DDF3[(v9 & 0xC0) + (v30 >> 1)];
      }

      if (v8 < (v9 - v31) << 55)
      {
        v34 = 0;
      }

      else
      {
        v8 -= (v9 - v31) << 55;
        v34 = 1;
      }

      if (v33)
      {
        v35 = v30 + 1;
      }

      else
      {
        v35 = *(v28 + v29);
      }

      v36 = __clz(v32) - 55;
      v8 <<= v36;
      *(v28 + v29) = byte_27750DDF3[2 * v30 + 256 + v34];
      v12 += v36;
      if (v12 >= 0)
      {
        v37 = *v11++;
        v8 += bswap32(v37) << v12;
        v12 -= 32;
        if (v11 >= v10)
        {
          v11 = v10;
        }
      }

      v9 = v32 << v36;
      if ((v35 & 1) == 0)
      {
        break;
      }

      if (v17 == ++v27)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v17) = v27;
LABEL_36:
    if (v14 >= 4)
    {
      v38 = 0;
      v39 = v14 >> 1;
      v40 = (v14 >> 1) - 1;
      v41 = v9 << 54;
      do
      {
        v42 = v8 >= v41;
        if (v8 < v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = v9 << 54;
        }

        v8 = 2 * (v8 - v43);
        v38 = v42 | (2 * v38);
        --v39;
      }

      while (v39 > 1);
      v12 += v40;
      if (v12 >= 0)
      {
        v44 = *v11++;
        v8 += bswap32(v44) << v12;
        v12 -= 32;
        if (v11 >= v10)
        {
          v11 = v10;
        }
      }

      LODWORD(v14) = v38 + ((v14 & 1 | 2) << v40);
    }

    if (v17 >= 4)
    {
      v45 = 0;
      v46 = v17 >> 1;
      v47 = (v17 >> 1) - 1;
      v48 = v9 << 54;
      do
      {
        v49 = v8 >= v48;
        if (v8 < v48)
        {
          v50 = 0;
        }

        else
        {
          v50 = v9 << 54;
        }

        v8 = 2 * (v8 - v50);
        v45 = v49 | (2 * v45);
        --v46;
      }

      while (v46 > 1);
      v12 += v47;
      if (v12 >= 0)
      {
        v51 = *v11++;
        v8 += bswap32(v51) << v12;
        v12 -= 32;
        if (v11 >= v10)
        {
          v11 = v10;
        }
      }

      LODWORD(v17) = v45 + ((v17 & 1 | 2) << v47);
    }
  }

  v235 = v6 + 4096;
  if (a4 == 2)
  {
    v52 = v17;
  }

  else
  {
    v52 = v14;
  }

  if (a4 == 2)
  {
    LODWORD(v17) = v14;
  }

  v53 = 4 * a4;
  if (a3 != 3)
  {
    v53 = 0;
  }

  v55 = (v17 >> 2 << (a3 - 2)) + (v52 >> 2);
  v56 = v52 & 3;
  v57 = **(v6 + 48);
  v58 = v57 >> 9;
  v59 = *(v6 + 32);
  if (a5)
  {
    v60 = v58 + *(v59 + a5 + 656) + *(*(v6 + 24) + a5 + 2);
    v61 = *(v59 + 16);
    v62 = v61[2099];
    if ((v60 + v62 < 0) ^ __OFADD__(v60, v62) | (v60 + v62 == 0))
    {
      v58 = -v62;
    }

    else
    {
      v58 += *(v59 + a5 + 656) + *(*(v6 + 24) + a5 + 2);
    }

    if (v61[2148] == 1)
    {
      if (v60 >= 30)
      {
        if (v58 >= 57)
        {
          v63 = 57;
        }

        else
        {
          v63 = v58;
        }

        v58 = byte_27753C740[v63 - 30];
      }
    }

    else if (v58 >= 51)
    {
      v58 = 51;
    }

    v64 = v61 + 223;
  }

  else
  {
    v61 = *(v59 + 16);
    v62 = v61[2097];
    v64 = v61 + 222;
  }

  v231 = 0;
  v65 = *(v6 + 40);
  v66 = v56 & 0xFFFFFFF3 | (4 * (v17 & 3));
  v67 = *(*(&off_27A7166D0 + v13) + v53 + v55);
  v68 = v62 & (v58 >> 31);
  v69 = *(v6 + 6426);
  v70 = v57 & 0x100;
  v71 = *(v59 + 32);
  if (*(v71 + 5) == 1 && !v70)
  {
    v231 = *(v6 + 6427) == 0;
  }

  v261 = &unk_27753D160 + 64 * a4 + 16 * v13;
  v72 = a3 + (*v64 & (v58 >> 31)) + 3;
  v73 = v61[402] & (v69 | BYTE1(v70));
  v74 = byte_27753DDA0[16 * a4 + v66];
  v75 = v68 + v58;
  v76 = *(&off_27A716BD8 + v13) + v53;
  if (v61[274] != 1 || ((a3 > 2) & v69) != 0)
  {
    v78 = 0;
    LOBYTE(v72) = v72 - 4;
  }

  else
  {
    if (*(v6 + 4) == 1)
    {
      v77 = 0;
    }

    else
    {
      v77 = 3;
    }

    v78 = v71 + 390 * v13 + 65 * (v77 + a5) + 40;
  }

  v79 = v250;
  v256 = v78;
  v234 = v65 + 2 * (a5 > 0) + 119;
  v226 = v65 + 16 * (a5 > 0) + 167;
  v224 = v65 + 4 * (a5 > 0) + 191;
  v242 = 1 << v13;
  v241 = (1 << v13) - 1;
  v80 = 27;
  if ((a5 < 1) | v73 & 1)
  {
    v80 = 0;
  }

  v240 = v80;
  v245 = (1 << v76[v67]) | (1 << *v76);
  v222 = byte_27753DDA0[16 * a4 + v66];
  v81 = v74 & 0xF;
  v82 = (1 << (v74 & 0xF));
  v239 = ~(-1 << v13);
  v83 = a3;
  v238 = 4 << a3;
  if (a5)
  {
    v84 = 43;
  }

  else
  {
    v84 = 42;
  }

  v237 = v84;
  if (a4)
  {
    v85 = 15;
  }

  else
  {
    v85 = 9;
  }

  v251 = v83 - 3;
  if (v83 == 3)
  {
    v86 = 9;
  }

  else
  {
    v86 = 12;
  }

  v243 = v86;
  v253 = ~(-1 << v83);
  if (v83 == 3)
  {
    v87 = v85;
  }

  else
  {
    v87 = 21;
  }

  v236 = v87;
  v225 = 2 * (a5 == 0);
  v252 = a39H[v75 % 6] << (v75 / 6);
  v254 = v72;
  v255 = 1 << (v72 - 1);
  v88 = v67;
  v89 = 1;
  v249 = v83;
  v230 = a5;
  v229 = v13;
  v232 = v67;
  v228 = v73;
  v227 = v76;
  do
  {
    v248 = v88;
    v90 = v76[v88];
    v91 = v90 >> v13;
    if ((v241 & v90) >= v241)
    {
      v92 = 0;
    }

    else
    {
      v92 = (v245 >> v90) & 2;
    }

    v93 = (v245 >> (v242 + v90)) & 1;
    if (v91 >= v241)
    {
      LODWORD(v93) = 0;
    }

    v94 = v93 | v92;
    v95 = v88 == v67 || v88 == 0;
    v96 = v95;
    if (!v95)
    {
      if (v94)
      {
        v97 = (v234 + 1);
      }

      else
      {
        v97 = v234;
      }

      v98 = *v97;
      v99 = byte_27750DDF3[(v9 & 0xC0) + (v98 >> 1)];
      LODWORD(v100) = v9 - v99;
      v101 = v8 >= (v9 - v99) << 55;
      if (v8 < (v9 - v99) << 55)
      {
        v100 = v100;
      }

      else
      {
        v100 = byte_27750DDF3[(v9 & 0xC0) + (v98 >> 1)];
      }

      if (v8 < (v9 - v99) << 55)
      {
        v102 = 0;
      }

      else
      {
        v8 -= (v9 - v99) << 55;
        v102 = 1;
      }

      if (v101)
      {
        v103 = v98 + 1;
      }

      else
      {
        v103 = *v97;
      }

      v104 = __clz(v100) - 55;
      v8 <<= v104;
      *v97 = byte_27750DDF3[2 * v98 + 256 + v102];
      v12 += v104;
      if (v12 >= 0)
      {
        v105 = *v11++;
        v8 += bswap32(v105) << v12;
        v12 -= 32;
        if (v11 >= v79)
        {
          v11 = v79;
        }
      }

      v9 = v100 << v104;
      if ((v103 & 1) == 0)
      {
LABEL_328:
        v123 = v248;
        goto LABEL_329;
      }

      v245 |= 1 << v90;
    }

    v259 = v91 * v238 + 4 * (v90 & v239);
    v106 = *(v6 + 40) + v240 + 123;
    v107 = v96 ^ 1u;
    if (v81 <= v107)
    {
      v109 = v237;
      v110 = v259;
    }

    else
    {
      v108 = v81 - 1;
      v109 = v237;
      v110 = v259;
      do
      {
        if ((v73 & 1) == 0)
        {
          v111 = v261[v108];
          v112 = v110 + v111;
          if (v83 == 2)
          {
            v110 = v259;
            v109 = byte_27753DE10[v112 + 64];
          }

          else if (v112 < 1)
          {
            v109 = 0;
          }

          else
          {
            v113 = byte_27753DE10[16 * v94 + (v111 & 3 | (4 * ((v112 >> v83) & 3)))];
            if (a5)
            {
              v109 = v243 + v113;
            }

            else
            {
              if ((v112 & v253 | (v112 >> v83)) >= 4)
              {
                v114 = v113 + 3;
              }

              else
              {
                v114 = v113;
              }

              v109 = v114 + v236;
            }

            v110 = v259;
          }
        }

        v115 = *(v106 + v109);
        v116 = byte_27750DDF3[(v9 & 0xC0) + (v115 >> 1)];
        LODWORD(v117) = v9 - v116;
        v118 = v8 >= (v9 - v116) << 55;
        if (v8 < (v9 - v116) << 55)
        {
          v117 = v117;
        }

        else
        {
          v117 = byte_27750DDF3[(v9 & 0xC0) + (v115 >> 1)];
        }

        if (v8 < (v9 - v116) << 55)
        {
          v119 = 0;
        }

        else
        {
          v8 -= (v9 - v116) << 55;
          v119 = 1;
        }

        if (v118)
        {
          v120 = v115 + 1;
        }

        else
        {
          v120 = *(v106 + v109);
        }

        v121 = __clz(v117) - 55;
        v8 <<= v121;
        *(v106 + v109) = byte_27750DDF3[2 * v115 + 256 + v119];
        v12 += v121;
        if (v12 >= 0)
        {
          v122 = *v11++;
          v8 += bswap32(v122) << v12;
          v12 -= 32;
          if (v11 >= v79)
          {
            v11 = v79;
          }
        }

        v9 = v117 << v121;
        v82 = ((v120 & 1) << v108) | v82;
        v139 = v108-- <= v107;
      }

      while (!v139);
    }

    v123 = v248;
    if ((v96 & 1) == 0)
    {
      if (v82)
      {
        if ((v73 & 1) == 0)
        {
          if (v83 == 2)
          {
            v110 = v259;
            v109 = byte_27753DE10[v259 + 64];
          }

          else if (v110 < 1)
          {
            v109 = 0;
          }

          else
          {
            v125 = byte_27753DE10[16 * v94 + 4 * ((v110 >> v83) & 3)];
            v126 = v243 + v125;
            if ((v259 & v253 | (v110 >> v83)) >= 4)
            {
              v125 += 3;
            }

            v127 = v125 + v236;
            v110 = v259;
            if (a5)
            {
              v109 = v126;
            }

            else
            {
              v109 = v127;
            }
          }
        }

        v128 = *(v106 + v109);
        v129 = byte_27750DDF3[(v9 & 0xC0) + (v128 >> 1)];
        LODWORD(v130) = v9 - v129;
        v131 = v8 >= (v9 - v129) << 55;
        if (v8 < (v9 - v129) << 55)
        {
          v130 = v130;
        }

        else
        {
          v130 = byte_27750DDF3[(v9 & 0xC0) + (v128 >> 1)];
        }

        if (v8 < (v9 - v129) << 55)
        {
          v132 = 0;
        }

        else
        {
          v8 -= (v9 - v129) << 55;
          v132 = 1;
        }

        if (v131)
        {
          v133 = v128 + 1;
        }

        else
        {
          v133 = *(v106 + v109);
        }

        v134 = __clz(v130);
        v135 = v134 - 55;
        v9 = v130 << (v134 - 55);
        v8 <<= v134 - 55;
        v124 = v133 & 1;
        *(v106 + v109) = byte_27750DDF3[2 * v128 + 256 + v132];
        v12 += v135;
        if (v12 >= 0)
        {
          v136 = *v11++;
          v8 += bswap32(v136) << v12;
          v12 -= 32;
          if (v11 >= v79)
          {
            v11 = v79;
          }
        }
      }

      else
      {
        v124 = 1;
      }

      v82 = v124 | v82;
    }

    if (v82)
    {
      v137 = 0;
      v138 = 0;
      if (v248)
      {
        v139 = a5 <= 0;
      }

      else
      {
        v139 = 0;
      }

      if (v139)
      {
        v140 = 2;
      }

      else
      {
        v140 = 0;
      }

      if (!v89)
      {
        ++v140;
      }

      v141 = v226 + 4 * v140;
      a6.i32[0] = v82;
      a6 = vcnt_s8(a6);
      a6.i16[0] = vaddlv_u8(a6);
      if (a6.i32[0] >= 8u)
      {
        v142 = 8;
      }

      else
      {
        v142 = a6.i32[0];
      }

      v89 = 1;
      do
      {
        while (1)
        {
          v143 = *(v141 + v89);
          v144 = byte_27750DDF3[(v9 & 0xC0) + (v143 >> 1)];
          LODWORD(v145) = v9 - v144;
          v146 = v8 >= (v9 - v144) << 55;
          if (v8 < (v9 - v144) << 55)
          {
            v145 = v145;
          }

          else
          {
            v145 = byte_27750DDF3[(v9 & 0xC0) + (v143 >> 1)];
          }

          if (v8 < (v9 - v144) << 55)
          {
            v147 = 0;
          }

          else
          {
            v8 -= (v9 - v144) << 55;
            v147 = 1;
          }

          if (v146)
          {
            v148 = v143 + 1;
          }

          else
          {
            v148 = *(v141 + v89);
          }

          v149 = __clz(v145) - 55;
          v8 <<= v149;
          *(v141 + v89) = byte_27750DDF3[2 * v143 + 256 + v147];
          v12 += v149;
          if (v12 >= 0)
          {
            v150 = *v11++;
            v8 += bswap32(v150) << v12;
            v12 -= 32;
            if (v11 >= v79)
            {
              v11 = v79;
            }
          }

          v9 = v145 << v149;
          v137 |= (v148 & 1) << v138;
          if ((v148 & 1) == 0)
          {
            break;
          }

          v89 = 0;
          if (++v138 == v142)
          {
            v260 = a2 + 2 * v110;
            v152 = a6.i32[0] > 8u;
            v151 = v252;
            goto LABEL_222;
          }
        }

        if ((v89 - 1) < 2)
        {
          ++v89;
        }

        ++v138;
      }

      while (v138 != v142);
      v260 = a2 + 2 * v110;
      v152 = a6.i32[0] > 8u;
      v151 = v252;
      if (v89)
      {
        v153 = 0;
        v154 = 0;
        goto LABEL_235;
      }

LABEL_222:
      v155 = *(v224 + v140);
      v156 = byte_27750DDF3[(v9 & 0xC0) + (v155 >> 1)];
      LODWORD(v157) = v9 - v156;
      v158 = v8 >= (v9 - v156) << 55;
      if (v8 < (v9 - v156) << 55)
      {
        v157 = v157;
      }

      else
      {
        v157 = byte_27750DDF3[(v9 & 0xC0) + (v155 >> 1)];
      }

      if (v8 < (v9 - v156) << 55)
      {
        v159 = 0;
      }

      else
      {
        v8 -= (v9 - v156) << 55;
        v159 = 1;
      }

      if (v158)
      {
        v160 = v155 + 1;
      }

      else
      {
        v160 = *(v224 + v140);
      }

      v161 = __clz(v157) - 55;
      v9 = v157 << v161;
      v8 <<= v161;
      v154 = v160 & 1;
      *(v224 + v140) = byte_27750DDF3[2 * v155 + 256 + v159];
      v89 = 0;
      v12 += v161;
      if (v12 >= 0)
      {
        v162 = *v11++;
        v8 += bswap32(v162) << v12;
        v12 -= 32;
        if (v11 >= v79)
        {
          v11 = v79;
        }
      }

      v153 = 1;
LABEL_235:
      v163 = 0;
      v164 = __clz(v82);
      v165 = v164 ^ 0x1F;
      v166 = v164 + 1;
      v167 = ((v164 ^ 0x1F) - __clz(__rbit32(v82))) > 3 && v231;
      v168 = v9 << 54;
      v169 = a6.i32[0] - v167 + 1;
      do
      {
        v170 = v8 >= v168;
        if (v8 < v168)
        {
          v171 = 0;
        }

        else
        {
          v171 = v9 << 54;
        }

        v8 = 2 * (v8 - v171);
        v163 = v170 | (2 * v163);
        --v169;
      }

      while (v169 > 1);
      v12 += (a6.i32[0] - v167);
      if (v12 >= 0)
      {
        v172 = *v11++;
        v8 += bswap32(v172) << v12;
        v12 -= 32;
        if (v11 >= v79)
        {
          v11 = v79;
        }
      }

      v173 = v83;
      if (*(v235 + 2330))
      {
        v174 = 1;
      }

      else
      {
        v174 = (**(v6 + 48) >> 8) & 1;
      }

      v175 = 0;
      v176 = 0;
      v177 = 0;
      v178 = v82 << v166;
      v179 = v163 << (v167 - a6.i8[0]);
      v258 = __clz(__rbit32(v137));
      v180 = v6;
      v246 = v174 + v225;
      v181 = *(*(v6 + 40) + v174 + v225 + 213) >> 2;
      v182 = v152 | v153;
      v247 = 3 << (*(*(v6 + 40) + v174 + v225 + 213) >> 2);
      if (a6.i32[0] <= 1u)
      {
        v183 = 1;
      }

      else
      {
        v183 = a6.i32[0];
      }

      v184 = v183 - 1;
      v257 = 1;
      v185 = !v167;
      v244 = v181;
      v186 = v181;
      v187 = v137;
      while (2)
      {
        if (v187)
        {
          v188 = v154 + 2;
        }

        else
        {
          v188 = 1;
        }

        if (v187)
        {
          v154 = 0;
        }

        if (v182)
        {
          v189 = (v187 & 1) == 0;
          if (v258 != v176 || v137 == 0)
          {
            v191 = 2;
          }

          else
          {
            v191 = 3;
          }

          v192 = v191 == v188;
          if (v176 < 8)
          {
            v189 = v192;
          }

          if (v189)
          {
            v193 = v175 > 3 << v186;
            if (v193)
            {
              v194 = (v186 + 1);
            }

            else
            {
              v194 = v186;
            }

            if (v8 >= v168)
            {
              v196 = 0;
              do
              {
                v195 = v196 + 1;
                v8 = 2 * (v8 - v168);
              }

              while (v8 >= v168 && v196++ < 0x11);
            }

            else
            {
              v195 = 0;
            }

            v8 *= 2;
            v12 += v195 + 1;
            if (v12 >= 0)
            {
              v198 = *v11++;
              v8 += bswap32(v198) << v12;
              v12 -= 32;
              if (v11 >= v250)
              {
                v11 = v250;
              }
            }

            v199 = v195 - 3;
            if (v195 <= 2)
            {
              v200 = 0;
            }

            else
            {
              v195 = (1 << (v195 - 3)) + 2;
              v200 = v199;
            }

            v201 = v195 << v194;
            v202 = v200 + v194;
            if (v200 + v194)
            {
              v203 = 0;
              v204 = v200 + v186 + v193 + 1;
              do
              {
                v205 = v8 >= v168;
                if (v8 < v168)
                {
                  v206 = 0;
                }

                else
                {
                  v206 = v9 << 54;
                }

                v8 = 2 * (v8 - v206);
                v203 = v205 | (2 * v203);
                --v204;
              }

              while (v204 > 1);
              v12 += v202;
              if (v12 >= 0)
              {
                v207 = *v11++;
                v8 += bswap32(v207) << v12;
                v12 -= 32;
                if (v11 >= v250)
                {
                  v11 = v250;
                }
              }

              v201 += v203;
            }

            v175 = v201 + v188;
            if (v257)
            {
              if (v201 < v247)
              {
                if ((2 * v201) >> v244)
                {
                  goto LABEL_299;
                }

                v217 = *(v180 + 40) + 213;
                v173 = v249;
                v257 = 0;
                if (*(v217 + v246))
                {
                  --*(v217 + v246);
                }

                v188 += v201;
LABEL_302:
                v177 += v188;
                if (v176 == a6.i32[0] - 1)
                {
                  v208 = v185;
                }

                else
                {
                  v208 = 1;
                }

                v209 = (v188 ^ (v179 >> 31)) - (v179 >> 31);
                if (v177)
                {
                  v188 = -v188;
                }

                if (v208)
                {
                  v179 *= 2;
                  v210 = v209;
                }

                else
                {
                  v210 = v188;
                }

                v211 = v261[v165];
                if ((**(v180 + 48) & 0x100) == 0)
                {
                  v212 = v151;
                  if (v256)
                  {
                    v151 = v252;
                    v213 = (((v259 + v211) & v253) >> v251) + 8 * ((v259 + v211) >> v173 >> v251);
                    if (v173 < 4)
                    {
                      v213 = v259 + v211;
                    }

                    if (v259 + v211)
                    {
                      v214 = v213 + 1;
                    }

                    else
                    {
                      v214 = v213;
                    }

                    v212 = *(v256 + v214) * v252;
                  }

                  v215 = (v255 + v212 * v210) >> v254;
                  if (v215 >= 0x7FFF)
                  {
                    v215 = 0x7FFFLL;
                  }

                  LOWORD(v210) = 0x8000;
                  if (v215 > -32768)
                  {
                    LOWORD(v210) = v215;
                  }
                }

                *(v260 + 2 * v261[v165]) = v210;
                if (v176 == v184)
                {
                  v82 = 0;
                  v81 = 16;
                  a5 = v230;
                  v13 = v229;
                  v6 = v180;
                  v67 = v232;
                  v73 = v228;
                  v76 = v227;
                  v83 = v173;
                  v79 = v250;
                  goto LABEL_328;
                }

                ++v176;
                v187 >>= 1;
                v216 = __clz(v178) + 1;
                LODWORD(v178) = v178 << v216;
                v165 -= v216;
                v186 = v194;
                continue;
              }

              v257 = 0;
              ++*(*(v180 + 40) + v246 + 213);
            }

            else
            {
LABEL_299:
              v257 = 0;
            }

            v188 += v201;
            v173 = v249;
            goto LABEL_302;
          }
        }

        break;
      }

      v194 = v186;
      goto LABEL_302;
    }

    v81 = 16;
LABEL_329:
    v88 = v123 - 1;
  }

  while (v123 > 0);
  v218 = *(v6 + 32);
  if (*(v235 + 2330) == 1)
  {
    v219 = *(v218 + 2280);
    v220 = a5 != 0;
    if (*(v235 + 2331))
    {
      (*(v219 + 8 * v220 + 936))(a2);
    }

    else
    {
      (*(v219 + 32 * v220 + 8 * v13 + 728))(a2);
    }

    LODWORD(v67) = v232;
  }

  else if (*(v235 + 2331))
  {
    (*(*(v218 + 2280) + 8 * (*(v235 + 2331) - 1) + 920))(a2);
    LODWORD(v67) = v232;
  }

  *v223 = v8;
  v223[1] = v9;
  v223[2] = v12;
  v223[3] = v11;
  return (v222 + 16 * v67 + 1);
}

void sub_27742F20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  *a11 = v13;
  a11[1] = v14;
  a11[2] = v11;
  a11[3] = v12;
  _Unwind_Resume(a1);
}

uint64_t sub_27742F21C(uint64_t a1, uint64_t a2, int8x8_t a3, uint64_t a4, int a5, int a6)
{
  v7 = 0;
  v8 = 0;
  v9 = a1 + 4096;
  v10 = *(a1 + 40);
  v11 = *v10;
  v12 = v10[1];
  v14 = v10[3];
  v13 = v10[4];
  v15 = v10[2];
  v16 = &unk_27753583D + 36 * (a6 > 0);
  v174 = v10;
  v17 = v10 + 83;
  do
  {
    v18 = v16[v7];
    v19 = v17[v18];
    v20 = byte_27750DDF3[(v12 & 0xC0) + (v19 >> 1)];
    LODWORD(v21) = v12 - v20;
    v22 = v11 >= (v12 - v20) << 55;
    if (v11 < (v12 - v20) << 55)
    {
      v21 = v21;
    }

    else
    {
      v21 = byte_27750DDF3[(v12 & 0xC0) + (v19 >> 1)];
    }

    if (v11 < (v12 - v20) << 55)
    {
      v23 = 0;
    }

    else
    {
      v11 -= (v12 - v20) << 55;
      v23 = 1;
    }

    if (v22)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = v17[v18];
    }

    v25 = __clz(v21) - 55;
    v12 = v21 << v25;
    v11 <<= v25;
    v8 += v25;
    v17[v18] = byte_27750DDF3[2 * v19 + 256 + v23];
    if ((v24 & 1) == 0)
    {
      break;
    }

    ++v7;
  }

  while (v7 != 3);
  v26 = v15 + v8;
  if (v26 >= 0)
  {
    v27 = *v14++;
    v11 += bswap32(v27) << v26;
    v26 -= 32;
    if (v14 >= v13)
    {
      v14 = v13;
    }
  }

  v28 = 0;
  v29 = 0;
  v30 = *(a1 + 40) + 101;
  do
  {
    v31 = v16[v28];
    v32 = *(v30 + v31);
    v33 = byte_27750DDF3[(v12 & 0xC0) + (v32 >> 1)];
    LODWORD(v34) = v12 - v33;
    v35 = v11 >= (v12 - v33) << 55;
    if (v11 < (v12 - v33) << 55)
    {
      v34 = v34;
    }

    else
    {
      v34 = byte_27750DDF3[(v12 & 0xC0) + (v32 >> 1)];
    }

    if (v11 < (v12 - v33) << 55)
    {
      v36 = 0;
    }

    else
    {
      v11 -= (v12 - v33) << 55;
      v36 = 1;
    }

    if (v35)
    {
      v37 = v32 + 1;
    }

    else
    {
      v37 = *(v30 + v31);
    }

    v38 = __clz(v34) - 55;
    v12 = v34 << v38;
    v11 <<= v38;
    v29 += v38;
    *(v30 + v31) = byte_27750DDF3[2 * v32 + 256 + v36];
    if ((v37 & 1) == 0)
    {
      break;
    }

    ++v28;
  }

  while (v28 != 3);
  v39 = v26 + v29;
  if (v39 >= 0)
  {
    v40 = *v14++;
    v11 += bswap32(v40) << v39;
    v39 -= 32;
    if (v14 >= v13)
    {
      v14 = v13;
    }
  }

  v41 = a6 > 0;
  if (a5 == 2)
  {
    v42 = v28;
  }

  else
  {
    v42 = v7;
  }

  if (a5 == 2)
  {
    v43 = v7;
  }

  else
  {
    v43 = v28;
  }

  v44 = **(a1 + 48);
  v45 = v44 >> 9;
  v46 = *(a1 + 32);
  if (a6)
  {
    v47 = v45 + *(v46 + a6 + 656) + *(*(a1 + 24) + a6 + 2);
    v48 = *(v46 + 16);
    v49 = v48[2099];
    if ((v47 + v49 < 0) ^ __OFADD__(v47, v49) | (v47 + v49 == 0))
    {
      v45 = -v49;
    }

    else
    {
      v45 += *(v46 + a6 + 656) + *(*(a1 + 24) + a6 + 2);
    }

    if (v48[2148] == 1)
    {
      if (v47 >= 30)
      {
        if (v45 >= 57)
        {
          v45 = 57;
        }

        v45 = byte_27753C740[v45 - 30];
      }
    }

    else if (v45 >= 51)
    {
      v45 = 51;
    }

    v50 = v48 + 223;
  }

  else
  {
    v48 = *(v46 + 16);
    v49 = v48[2097];
    v50 = v48 + 222;
  }

  v51 = 0;
  v52 = a5;
  v53 = v42 + 4 * v43;
  v54 = &byte_27753DDA0[16 * a5];
  if (v45 >= 0)
  {
    v55 = 5;
  }

  else
  {
    v55 = *v50 + 5;
  }

  v56 = v49 & (v45 >> 31);
  v57 = *(v9 + 2330) | ((v44 & 0x100) >> 8);
  v58 = *(v46 + 32);
  if (*(v58 + 5) == 1 && (**(a1 + 48) & 0x100) == 0)
  {
    v51 = *(v9 + 2331) == 0;
  }

  v59 = *(a1 + 40);
  v179 = &unk_27753D160 + 64 * v52;
  v60 = v48[402] & v57;
  v61 = v54[v53];
  v62 = v56 + v45;
  v172 = v57;
  if (v48[274] == 1)
  {
    if (*(a1 + 4) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = 3;
    }

    v64 = v58 + 65 * (v63 + a6) + 40;
  }

  else
  {
    v64 = 0;
    v55 -= 4;
  }

  v65 = ((10923 * v62) >> 16) + ((10923 * v62) >> 31);
  v66 = a39H[v62 % 6];
  if ((a6 < 1) | v60 & 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = 27;
  }

  v68 = 1;
  v177 = v64;
  if ((v61 & 0xF) != 0)
  {
    v69 = v59 + v67 + 123;
    LODWORD(v68) = 1 << (v61 & 0xF);
    if (a6)
    {
      v70 = 43;
    }

    else
    {
      v70 = 42;
    }

    v71 = (v61 & 0xF) - 1;
    do
    {
      if ((v60 & 1) == 0)
      {
        v70 = byte_27753DE10[v179[v71] + 64];
      }

      v72 = *(v69 + v70);
      v73 = byte_27750DDF3[(v12 & 0xC0) + (v72 >> 1)];
      LODWORD(v74) = v12 - v73;
      v75 = v11 >= (v12 - v73) << 55;
      if (v11 < (v12 - v73) << 55)
      {
        v74 = v74;
      }

      else
      {
        v74 = byte_27750DDF3[(v12 & 0xC0) + (v72 >> 1)];
      }

      if (v11 < (v12 - v73) << 55)
      {
        v76 = 0;
      }

      else
      {
        v11 -= (v12 - v73) << 55;
        v76 = 1;
      }

      if (v75)
      {
        v77 = v72 + 1;
      }

      else
      {
        v77 = *(v69 + v70);
      }

      v78 = __clz(v74) - 55;
      v11 <<= v78;
      *(v69 + v70) = byte_27750DDF3[2 * v72 + 256 + v76];
      v39 += v78;
      if (v39 >= 0)
      {
        v79 = *v14++;
        v11 += bswap32(v79) << v39;
        v39 -= 32;
        if (v14 >= v13)
        {
          v14 = v13;
        }
      }

      v64 = v177;
      v12 = v74 << v78;
      v68 = ((v77 & 1) << v71) | v68;
      v80 = v71-- + 1;
    }

    while (v80 > 1);
  }

  v171 = v9;
  v81 = 0;
  v82 = 0;
  v83 = v59 + 16 * v41 + 167;
  v84 = v59 + 191;
  v85 = 4 * v41;
  v86 = v66 << v65;
  a3.i32[0] = v68;
  v87 = vcnt_s8(a3);
  v87.i16[0] = vaddlv_u8(v87);
  if (v87.i32[0] >= 8u)
  {
    v88 = 8;
  }

  else
  {
    v88 = v87.i32[0];
  }

  if (v88 <= 1)
  {
    v89 = 1;
  }

  else
  {
    v89 = v88;
  }

  v90 = 1;
  do
  {
    while (1)
    {
      v91 = *(v83 + v90);
      v92 = byte_27750DDF3[(v12 & 0xC0) + (v91 >> 1)];
      LODWORD(v93) = v12 - v92;
      v94 = v11 >= (v12 - v92) << 55;
      if (v11 < (v12 - v92) << 55)
      {
        v93 = v93;
      }

      else
      {
        v93 = byte_27750DDF3[(v12 & 0xC0) + (v91 >> 1)];
      }

      if (v11 < (v12 - v92) << 55)
      {
        v95 = 0;
      }

      else
      {
        v11 -= (v12 - v92) << 55;
        v95 = 1;
      }

      if (v94)
      {
        v96 = v91 + 1;
      }

      else
      {
        v96 = *(v83 + v90);
      }

      v97 = __clz(v93) - 55;
      v11 <<= v97;
      *(v83 + v90) = byte_27750DDF3[2 * v91 + 256 + v95];
      v39 += v97;
      if (v39 >= 0)
      {
        v98 = *v14++;
        v11 += bswap32(v98) << v39;
        v39 -= 32;
        if (v14 >= v13)
        {
          v14 = v13;
        }
      }

      v12 = v93 << v97;
      v81 |= (v96 & 1) << v82;
      if ((v96 & 1) == 0)
      {
        break;
      }

      v90 = 0;
      if (++v82 == v89)
      {
        v99 = v87.i32[0] > 8u;
        goto LABEL_113;
      }
    }

    if ((v90 - 1) < 2)
    {
      ++v90;
    }

    ++v82;
  }

  while (v82 != v89);
  v99 = v87.i32[0] > 8u;
  if (v90)
  {
    v100 = 0;
    v101 = 0;
    goto LABEL_126;
  }

LABEL_113:
  v102 = *(v84 + v85);
  v103 = byte_27750DDF3[(v12 & 0xC0) + (v102 >> 1)];
  LODWORD(v104) = v12 - v103;
  v105 = v11 >= (v12 - v103) << 55;
  if (v11 < (v12 - v103) << 55)
  {
    v104 = v104;
  }

  else
  {
    v104 = byte_27750DDF3[(v12 & 0xC0) + (v102 >> 1)];
  }

  if (v11 < (v12 - v103) << 55)
  {
    v106 = 0;
  }

  else
  {
    v11 -= (v12 - v103) << 55;
    v106 = 1;
  }

  if (v105)
  {
    v107 = v102 + 1;
  }

  else
  {
    v107 = *(v84 + v85);
  }

  v108 = __clz(v104);
  v109 = v108 - 55;
  v12 = v104 << (v108 - 55);
  v11 <<= v108 - 55;
  v101 = v107 & 1;
  *(v84 + v85) = byte_27750DDF3[2 * v102 + 256 + v106];
  v39 += v109;
  if (v39 >= 0)
  {
    v110 = *v14++;
    v11 += bswap32(v110) << v39;
    v39 -= 32;
    if (v14 >= v13)
    {
      v14 = v13;
    }
  }

  v100 = 1;
LABEL_126:
  v111 = 0;
  v112 = __clz(v68);
  v113 = v112 ^ 0x1F;
  v114 = v112 + 1;
  v115 = (v113 - __clz(__rbit32(v68))) > 3 && v51;
  v116 = v12 << 54;
  v117 = v87.i32[0] - v115 + 1;
  do
  {
    v118 = v11 >= v116;
    if (v11 < v116)
    {
      v119 = 0;
    }

    else
    {
      v119 = v12 << 54;
    }

    v11 = 2 * (v11 - v119);
    v111 = v118 | (2 * v111);
    --v117;
  }

  while (v117 > 1);
  v120 = v68 << v114;
  v121 = v39 + (v87.i32[0] - v115);
  v170 = v61;
  if (v121 >= 0)
  {
    v122 = *v14++;
    v11 += bswap32(v122) << v121;
    v121 -= 32;
    if (v14 >= v13)
    {
      v14 = v13;
    }
  }

  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  LODWORD(v127) = v111 << (v115 - v87.i8[0]);
  v176 = __clz(__rbit32(v81));
  v128 = v99 | v100;
  v129 = v55 - 1;
  v173 = a1;
  v130 = *(a1 + 48);
  v131 = v55;
  v132 = v86;
  v175 = 1 << v129;
  if (v87.i32[0] <= 1u)
  {
    v133 = 1;
  }

  else
  {
    v133 = v87.i32[0];
  }

  v134 = v133 - 1;
  v135 = !v115;
  v136 = v81;
  v137 = v131;
  while (1)
  {
    if (v136)
    {
      v138 = v101 + 2;
    }

    else
    {
      v138 = 1;
    }

    if (v136)
    {
      v101 = 0;
    }

    if (v128)
    {
      v139 = (v136 & 1) == 0;
      if (v176 != v123 || v81 == 0)
      {
        v141 = 2;
      }

      else
      {
        v141 = 3;
      }

      v142 = v141 == v138;
      if (v123 < 8)
      {
        v139 = v142;
      }

      if (v139)
      {
        if (v126 <= 3 << v125)
        {
          v143 = v125;
        }

        else
        {
          v143 = v125 + 1;
        }

        if (v143 >= 4)
        {
          v125 = 4;
        }

        else
        {
          v125 = v143;
        }

        if (v11 >= v116)
        {
          v145 = 0;
          do
          {
            v144 = v145 + 1;
            v11 = 2 * (v11 - v116);
          }

          while (v11 >= v116 && v145++ < 0x11);
        }

        else
        {
          v144 = 0;
        }

        v11 *= 2;
        v121 += v144 + 1;
        if (v121 >= 0)
        {
          v147 = *v14++;
          v11 += bswap32(v147) << v121;
          v121 -= 32;
          if (v14 >= v13)
          {
            v14 = v13;
          }
        }

        v148 = v144 - 3;
        if (v144 <= 2)
        {
          v148 = 0;
        }

        else
        {
          v144 = (1 << (v144 - 3)) + 2;
        }

        v149 = v144 << v125;
        v150 = v148 + v125;
        if (v148 + v125)
        {
          v151 = 0;
          v152 = v148 + v125 + 1;
          do
          {
            v153 = v11 >= v116;
            if (v11 < v116)
            {
              v154 = 0;
            }

            else
            {
              v154 = v12 << 54;
            }

            v11 = 2 * (v11 - v154);
            v151 = v153 | (2 * v151);
            --v152;
          }

          while (v152 > 1);
          v121 += v150;
          if (v121 >= 0)
          {
            v155 = *v14++;
            v11 += bswap32(v155) << v121;
            v121 -= 32;
            if (v14 >= v13)
            {
              v14 = v13;
            }
          }

          v64 = v177;
          v149 += v151;
        }

        v126 = v149 + v138;
        v138 = v126;
      }
    }

    v124 += v138;
    if (v123 == v87.i32[0] - 1)
    {
      v156 = v135;
    }

    else
    {
      v156 = 1;
    }

    v157 = (v138 ^ (v127 >> 31)) - (v127 >> 31);
    if (v124)
    {
      v158 = -v138;
    }

    else
    {
      v158 = v138;
    }

    if (v156)
    {
      v127 = (2 * v127);
    }

    else
    {
      v127 = v127;
    }

    if (v156)
    {
      v158 = v157;
    }

    v159 = v179[v113];
    if ((*v130 & 0x100) == 0)
    {
      v160 = v132;
      if (v64)
      {
        if (v179[v113])
        {
          v161 = v159 + 1;
        }

        else
        {
          v161 = v179[v113];
        }

        v160 = *(v64 + v161) * v132;
      }

      v162 = (v175 + v160 * v158) >> v137;
      if (v162 >= 0x7FFF)
      {
        v162 = 0x7FFFLL;
      }

      if (v162 <= -32768)
      {
        LOWORD(v158) = 0x8000;
      }

      else
      {
        LOWORD(v158) = v162;
      }
    }

    *(a2 + 2 * v159) = v158;
    if (v123 == v134)
    {
      break;
    }

    ++v123;
    v136 >>= 1;
    v163 = __clz(v120) + 1;
    v120 = (v120 << v163);
    v113 -= v163;
  }

  v164 = *(v173 + 32);
  if ((*(*(v164 + 16) + 401) & v172 & 1) != 0 && *(v173 + 4) == 1)
  {
    (*(*(v164 + 2280) + 792))(a2, v120);
  }

  if (*(v171 + 2330) == 1)
  {
    v165 = *(v164 + 2280);
    v166 = *(v171 + 2331);
    v167 = a6 != 0;
    if (*(v171 + 2331))
    {
      (*(v165 + 8 * v167 + 936))(a2, 2, v166, v125, v127);
    }

    else
    {
      (*(v165 + 32 * v167 + 728))(a2, v120, v166, v125, v127);
    }
  }

  else if (*(v171 + 2331))
  {
    (*(*(v164 + 2280) + 8 * (*(v171 + 2331) - 1) + 920))(a2, 2);
  }

  *v174 = v11;
  v174[1] = v12;
  result = (v170 + 1);
  v174[2] = v121;
  v174[3] = v14;
  return result;
}

void sub_27742FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  *a15 = v16;
  a15[1] = v17;
  a15[2] = v18;
  a15[3] = v15;
  _Unwind_Resume(a1);
}

uint64_t sub_27742FB7C(uint64_t a1, uint64_t a2, int8x8_t a3, uint64_t a4, int a5, int a6)
{
  v8 = 0;
  v9 = 0;
  v10 = a1 + 4096;
  v11 = *(a1 + 40);
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[3];
  v14 = v11[4];
  v16 = v11[2];
  v17 = &unk_27753583D + 36 * (a6 > 0);
  v174 = v11;
  v18 = v11 + 83;
  do
  {
    v19 = v17[v8];
    v20 = v18[v19];
    v21 = byte_27750DDF3[(v13 & 0xC0) + (v20 >> 1)];
    LODWORD(v22) = v13 - v21;
    v23 = v12 >= (v13 - v21) << 55;
    if (v12 < (v13 - v21) << 55)
    {
      v22 = v22;
    }

    else
    {
      v22 = byte_27750DDF3[(v13 & 0xC0) + (v20 >> 1)];
    }

    if (v12 < (v13 - v21) << 55)
    {
      v24 = 0;
    }

    else
    {
      v12 -= (v13 - v21) << 55;
      v24 = 1;
    }

    if (v23)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = v18[v19];
    }

    v26 = __clz(v22) - 55;
    v13 = v22 << v26;
    v12 <<= v26;
    v9 += v26;
    v18[v19] = byte_27750DDF3[2 * v20 + 256 + v24];
    if ((v25 & 1) == 0)
    {
      break;
    }

    ++v8;
  }

  while (v8 != 3);
  v27 = v16 + v9;
  if (v27 >= 0)
  {
    v28 = *v15++;
    v12 += bswap32(v28) << v27;
    v27 -= 32;
    if (v15 >= v14)
    {
      v15 = v14;
    }
  }

  v29 = 0;
  v30 = 0;
  v31 = *(a1 + 40) + 101;
  do
  {
    v32 = v17[v29];
    v33 = *(v31 + v32);
    v34 = byte_27750DDF3[(v13 & 0xC0) + (v33 >> 1)];
    LODWORD(v35) = v13 - v34;
    v36 = v12 >= (v13 - v34) << 55;
    if (v12 < (v13 - v34) << 55)
    {
      v35 = v35;
    }

    else
    {
      v35 = byte_27750DDF3[(v13 & 0xC0) + (v33 >> 1)];
    }

    if (v12 < (v13 - v34) << 55)
    {
      v37 = 0;
    }

    else
    {
      v12 -= (v13 - v34) << 55;
      v37 = 1;
    }

    if (v36)
    {
      v38 = v33 + 1;
    }

    else
    {
      v38 = *(v31 + v32);
    }

    v39 = __clz(v35) - 55;
    v13 = v35 << v39;
    v12 <<= v39;
    v30 += v39;
    *(v31 + v32) = byte_27750DDF3[2 * v33 + 256 + v37];
    if ((v38 & 1) == 0)
    {
      break;
    }

    ++v29;
  }

  while (v29 != 3);
  v40 = v27 + v30;
  if (v40 >= 0)
  {
    v41 = *v15++;
    v12 += bswap32(v41) << v40;
    v40 -= 32;
    if (v15 >= v14)
    {
      v15 = v14;
    }
  }

  if (a5 == 2)
  {
    v42 = v29;
  }

  else
  {
    v42 = v8;
  }

  if (a5 == 2)
  {
    v43 = v8;
  }

  else
  {
    v43 = v29;
  }

  v44 = **(a1 + 48);
  v45 = v44 >> 9;
  v46 = *(a1 + 32);
  if (a6)
  {
    v47 = v45 + *(v46 + a6 + 656) + *(*(a1 + 24) + a6 + 2);
    v48 = *(v46 + 16);
    v49 = v48[2099];
    if ((v47 + v49 < 0) ^ __OFADD__(v47, v49) | (v47 + v49 == 0))
    {
      v45 = -v49;
    }

    else
    {
      v45 += *(v46 + a6 + 656) + *(*(a1 + 24) + a6 + 2);
    }

    if (v48[2148] == 1)
    {
      if (v47 >= 30)
      {
        if (v45 >= 57)
        {
          v45 = 57;
        }

        v45 = byte_27753C740[v45 - 30];
      }
    }

    else if (v45 >= 51)
    {
      v45 = 51;
    }

    v50 = v48 + 223;
  }

  else
  {
    v48 = *(v46 + 16);
    v49 = v48[2097];
    v50 = v48 + 222;
  }

  v51 = 0;
  v52 = a5;
  v53 = v42 + 4 * v43;
  v54 = &byte_27753DDA0[16 * a5];
  if (v45 >= 0)
  {
    v55 = 5;
  }

  else
  {
    v55 = *v50 + 5;
  }

  v56 = v49 & (v45 >> 31);
  v57 = v44 & 0x100;
  v58 = *(v10 + 2330) | (v57 >> 8);
  v59 = *(v46 + 32);
  if (*(v59 + 5) == 1 && !v57)
  {
    v51 = *(v10 + 2331) == 0;
  }

  v60 = *(a1 + 40);
  v182 = &unk_27753D160 + 64 * v52;
  v61 = v48[402] & v58;
  v62 = v54[v53];
  v63 = v56 + v45;
  if (v48[274] == 1)
  {
    if (*(a1 + 4) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = 3;
    }

    v65 = v59 + 65 * (v64 + a6) + 40;
  }

  else
  {
    v65 = 0;
    v55 -= 4;
  }

  v179 = v55;
  v180 = v65;
  v66 = ((10923 * v63) >> 16) + ((10923 * v63) >> 31);
  v67 = a39H[v63 % 6];
  v68 = 27;
  if ((a6 < 1) | v61 & 1)
  {
    v68 = 0;
  }

  v69 = 1;
  v173 = v58;
  if ((v62 & 0xF) != 0)
  {
    v70 = v60 + v68 + 123;
    LODWORD(v69) = 1 << (v62 & 0xF);
    if (a6)
    {
      v71 = 43;
    }

    else
    {
      v71 = 42;
    }

    v72 = (v62 & 0xF) - 1;
    do
    {
      if ((v61 & 1) == 0)
      {
        v71 = byte_27753DE10[v182[v72] + 64];
      }

      v73 = *(v70 + v71);
      v74 = byte_27750DDF3[(v13 & 0xC0) + (v73 >> 1)];
      LODWORD(v75) = v13 - v74;
      v76 = v12 >= (v13 - v74) << 55;
      if (v12 < (v13 - v74) << 55)
      {
        v75 = v75;
      }

      else
      {
        v75 = byte_27750DDF3[(v13 & 0xC0) + (v73 >> 1)];
      }

      if (v12 < (v13 - v74) << 55)
      {
        v77 = 0;
      }

      else
      {
        v12 -= (v13 - v74) << 55;
        v77 = 1;
      }

      if (v76)
      {
        v78 = v73 + 1;
      }

      else
      {
        v78 = *(v70 + v71);
      }

      v79 = __clz(v75) - 55;
      v12 <<= v79;
      *(v70 + v71) = byte_27750DDF3[2 * v73 + 256 + v77];
      v40 += v79;
      if (v40 >= 0)
      {
        v80 = *v15++;
        v12 += bswap32(v80) << v40;
        v40 -= 32;
        if (v15 >= v14)
        {
          v15 = v14;
        }
      }

      v13 = v75 << v79;
      v69 = ((v78 & 1) << v72) | v69;
      v81 = v72-- + 1;
    }

    while (v81 > 1);
  }

  v82 = 0;
  v83 = 0;
  v84 = v60 + 16 * (a6 > 0) + 167;
  v85 = v60 + 191;
  v86 = v67 << v66;
  a3.i32[0] = v69;
  v87 = vcnt_s8(a3);
  v87.i16[0] = vaddlv_u8(v87);
  v88 = v87.i32[0];
  if (v87.i32[0] >= 8u)
  {
    v89 = 8;
  }

  else
  {
    v89 = v87.i32[0];
  }

  if (v89 <= 1)
  {
    v90 = 1;
  }

  else
  {
    v90 = v89;
  }

  v91 = 1;
  do
  {
    while (1)
    {
      v92 = *(v84 + v91);
      v93 = byte_27750DDF3[(v13 & 0xC0) + (v92 >> 1)];
      LODWORD(v94) = v13 - v93;
      v95 = v12 >= (v13 - v93) << 55;
      if (v12 < (v13 - v93) << 55)
      {
        v94 = v94;
      }

      else
      {
        v94 = byte_27750DDF3[(v13 & 0xC0) + (v92 >> 1)];
      }

      if (v12 < (v13 - v93) << 55)
      {
        v96 = 0;
      }

      else
      {
        v12 -= (v13 - v93) << 55;
        v96 = 1;
      }

      if (v95)
      {
        v97 = v92 + 1;
      }

      else
      {
        v97 = *(v84 + v91);
      }

      v98 = __clz(v94) - 55;
      v12 <<= v98;
      *(v84 + v91) = byte_27750DDF3[2 * v92 + 256 + v96];
      v40 += v98;
      if (v40 >= 0)
      {
        v99 = *v15++;
        v12 += bswap32(v99) << v40;
        v40 -= 32;
        if (v15 >= v14)
        {
          v15 = v14;
        }
      }

      v13 = v94 << v98;
      v82 |= (v97 & 1) << v83;
      if ((v97 & 1) == 0)
      {
        break;
      }

      v91 = 0;
      if (++v83 == v90)
      {
        v100 = v87.i32[0] > 8u;
        goto LABEL_112;
      }
    }

    if ((v91 - 1) < 2)
    {
      ++v91;
    }

    ++v83;
  }

  while (v83 != v90);
  v100 = v87.i32[0] > 8u;
  if (v91)
  {
    v101 = 0;
    v102 = 0;
    goto LABEL_125;
  }

LABEL_112:
  v103 = *(v85 + 4 * (a6 > 0));
  v104 = byte_27750DDF3[((v94 << v98) & 0xC0) + (v103 >> 1)];
  LODWORD(v105) = v13 - v104;
  v106 = v12 >= (v13 - v104) << 55;
  if (v12 < (v13 - v104) << 55)
  {
    v105 = v105;
  }

  else
  {
    v105 = byte_27750DDF3[((v94 << v98) & 0xC0) + (v103 >> 1)];
  }

  if (v12 < (v13 - v104) << 55)
  {
    v107 = 0;
  }

  else
  {
    v12 -= (v13 - v104) << 55;
    v107 = 1;
  }

  if (v106)
  {
    v108 = v103 + 1;
  }

  else
  {
    v108 = *(v85 + 4 * (a6 > 0));
  }

  v109 = __clz(v105);
  v110 = v109 - 55;
  v13 = v105 << (v109 - 55);
  v12 <<= v109 - 55;
  v102 = v108 & 1;
  *(v85 + 4 * (a6 > 0)) = byte_27750DDF3[2 * v103 + 256 + v107];
  v40 += v110;
  if (v40 >= 0)
  {
    v111 = *v15++;
    v12 += bswap32(v111) << v40;
    v40 -= 32;
    if (v15 >= v14)
    {
      v15 = v14;
    }
  }

  v101 = 1;
LABEL_125:
  v112 = 0;
  v113 = __clz(v69);
  v114 = v113 ^ 0x1F;
  v115 = v113 + 1;
  v116 = (v114 - __clz(__rbit32(v69))) > 3 && v51;
  v117 = v13 << 54;
  v118 = v87.i32[0] - v116 + 1;
  do
  {
    v119 = v12 >= v117;
    if (v12 < v117)
    {
      v120 = 0;
    }

    else
    {
      v120 = v13 << 54;
    }

    v12 = 2 * (v12 - v120);
    v112 = v119 | (2 * v112);
    --v118;
  }

  while (v118 > 1);
  v121 = v40 + (v87.i32[0] - v116);
  if (v121 >= 0)
  {
    v122 = *v15++;
    v12 += bswap32(v122) << v121;
    v121 -= 32;
    if (v15 >= v14)
    {
      v15 = v14;
    }
  }

  v123 = v69 << v115;
  LODWORD(v69) = v112 << (v116 - v87.i8[0]);
  v124 = __rbit32(v82);
  v125 = 2 * (a6 == 0);
  v170 = a6;
  v171 = v62;
  v172 = v10;
  if (*(v10 + 2330))
  {
    v126 = 1;
  }

  else
  {
    v126 = (**(a1 + 48) >> 8) & 1;
  }

  v127 = 0;
  v128 = 0;
  v129 = 0;
  v130 = __clz(v124);
  v131 = a1;
  v176 = v126 + v125;
  v132 = *(*(a1 + 40) + v126 + v125 + 213) >> 2;
  v133 = v100 | v101;
  v177 = 3 << v132;
  v178 = v130;
  v134 = v86;
  if (v87.i32[0] <= 1u)
  {
    v88 = 1;
  }

  v135 = v88 - 1;
  v136 = !v116;
  v175 = v132;
  v137 = 1;
  v138 = v82;
  while (1)
  {
    if (v138)
    {
      v139 = v102 + 2;
    }

    else
    {
      v139 = 1;
    }

    if (v138)
    {
      v102 = 0;
    }

    if (!v133)
    {
      goto LABEL_162;
    }

    v140 = (v138 & 1) == 0;
    if (v130 != v128 || v82 == 0)
    {
      v142 = 2;
    }

    else
    {
      v142 = 3;
    }

    v143 = v142 == v139;
    if (v128 < 8)
    {
      v140 = v143;
    }

    if (!v140)
    {
LABEL_162:
      v145 = v132;
      goto LABEL_192;
    }

    v144 = v127 > 3 << v132;
    if (v144)
    {
      v145 = (v132 + 1);
    }

    else
    {
      v145 = v132;
    }

    if (v12 >= v117)
    {
      v147 = 0;
      do
      {
        v146 = v147 + 1;
        v12 = 2 * (v12 - v117);
      }

      while (v12 >= v117 && v147++ < 0x11);
    }

    else
    {
      v146 = 0;
    }

    v12 *= 2;
    v121 += v146 + 1;
    if (v121 >= 0)
    {
      v149 = *v15++;
      v12 += bswap32(v149) << v121;
      v121 -= 32;
      if (v15 >= v14)
      {
        v15 = v14;
      }
    }

    v150 = v146 - 3;
    if (v146 <= 2)
    {
      v151 = 0;
    }

    else
    {
      v146 = (1 << (v146 - 3)) + 2;
      v151 = v150;
    }

    v152 = v146 << v145;
    v153 = v151 + v145;
    if (v151 + v145)
    {
      v154 = 0;
      v155 = v151 + v132 + v144 + 1;
      do
      {
        v156 = v12 >= v117;
        if (v12 < v117)
        {
          v157 = 0;
        }

        else
        {
          v157 = v13 << 54;
        }

        v12 = 2 * (v12 - v157);
        v154 = v156 | (2 * v154);
        --v155;
      }

      while (v155 > 1);
      v121 += v153;
      if (v121 >= 0)
      {
        v158 = *v15++;
        v12 += bswap32(v158) << v121;
        v121 -= 32;
        if (v15 >= v14)
        {
          v15 = v14;
        }
      }

      v130 = v178;
      v152 += v154;
    }

    else
    {
      v130 = v178;
    }

    v127 = v152 + v139;
    if (v137)
    {
      if (v152 >= v177)
      {
        v137 = 0;
        ++*(*(v131 + 40) + v176 + 213);
        goto LABEL_191;
      }

      if (!((2 * v152) >> v175))
      {
        v165 = *(v131 + 40) + 213;
        if (*(v165 + v176))
        {
          v137 = 0;
          --*(v165 + v176);
          goto LABEL_191;
        }
      }
    }

    v137 = 0;
LABEL_191:
    v139 += v152;
LABEL_192:
    v129 += v139;
    if (v128 == v87.i32[0] - 1)
    {
      v159 = v136;
    }

    else
    {
      v159 = 1;
    }

    LODWORD(v160) = (v139 ^ (v69 >> 31)) - (v69 >> 31);
    if (v129)
    {
      v139 = -v139;
    }

    if (v159)
    {
      v69 = (2 * v69);
    }

    else
    {
      v69 = v69;
    }

    if ((v159 & 1) == 0)
    {
      LODWORD(v160) = v139;
    }

    v161 = v182[v114];
    if ((**(v131 + 48) & 0x100) == 0)
    {
      v162 = v134;
      if (v180)
      {
        if (v182[v114])
        {
          v163 = v161 + 1;
        }

        else
        {
          v163 = v182[v114];
        }

        v162 = *(v180 + v163) * v134;
      }

      v160 = ((1 << (v179 - 1)) + v162 * v160) >> v179;
      if (v160 >= 0x7FFF)
      {
        v160 = 0x7FFFLL;
      }

      if (v160 <= -32768)
      {
        LOWORD(v160) = 0x8000;
      }
    }

    *(a2 + 2 * v161) = v160;
    if (v128 == v135)
    {
      break;
    }

    ++v128;
    v138 >>= 1;
    v164 = __clz(v123) + 1;
    LODWORD(v123) = v123 << v164;
    v114 -= v164;
    v132 = v145;
  }

  v166 = *(v131 + 32);
  if ((*(*(v166 + 16) + 401) & v173 & 1) != 0 && *(v131 + 4) == 1)
  {
    (*(*(v166 + 2280) + 792))(a2, v69, v137);
  }

  if (*(v172 + 2330) == 1)
  {
    v167 = *(v166 + 2280);
    v168 = v170 != 0;
    if (*(v172 + 2331))
    {
      (*(v167 + 8 * v168 + 936))(a2, 2);
    }

    else
    {
      (*(v167 + 32 * v168 + 728))(a2, v69);
    }
  }

  else if (*(v172 + 2331))
  {
    (*(*(v166 + 2280) + 8 * (*(v172 + 2331) - 1) + 920))(a2, 2, v137);
  }

  *v174 = v12;
  v174[1] = v13;
  result = (v171 + 1);
  v174[2] = v121;
  v174[3] = v15;
  return result;
}

void sub_277430590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *a14 = v15;
  a14[1] = v16;
  a14[2] = v17;
  a14[3] = v14;
  _Unwind_Resume(a1);
}

uint64_t sub_2774305A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int32x2_t *a7, double a8, int32x2_t a9)
{
  v9 = a5;
  v232 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 32);
  v14 = *a7;
  v15 = HIDWORD(*a7);
  if (v15 == 1)
  {
    v17 = 0;
    *(a1 + 6424) = *(a1 + 2 * a4 + 6416);
  }

  else if (v15)
  {
    v17 = 0;
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = v16 != 0;
    if (*(a1 + 4) == 3)
    {
      if (*(*(v13 + 16) + 272))
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 == 0;
      }

      v17 = !v18;
    }
  }

  v19 = *(v13 + 16);
  if (v14.i32[0] <= *(v19 + 2114))
  {
    goto LABEL_30;
  }

  if (v14.i32[0] > *(v19 + 2115) || v17)
  {
    v20 = 1;
    goto LABEL_31;
  }

  if (v15 >= *(a1 + 12))
  {
LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

  v21 = *(a1 + 40);
  v22 = v21 - v14.i32[0];
  v23 = v22[76];
  v25 = *v21;
  v24 = v21[1];
  v26 = byte_27750DDF3[(v24 & 0xC0) + (v23 >> 1)];
  LODWORD(v27) = v24 - v26;
  if (*v21 < ((v24 - v26) << 55))
  {
    v27 = v27;
  }

  else
  {
    v27 = byte_27750DDF3[(v24 & 0xC0) + (v23 >> 1)];
  }

  if (*v21 < ((v24 - v26) << 55))
  {
    v28 = 0;
  }

  else
  {
    v25 = *v21 - ((v24 - v26) << 55);
    v28 = 1;
  }

  if (*v21 < ((v24 - v26) << 55))
  {
    v29 = v22[76];
  }

  else
  {
    v29 = v23 + 1;
  }

  v30 = byte_27750DDF3[2 * v23 + 256 + v28];
  v31 = __clz(v27) - 55;
  v32 = v25 << v31;
  v21[1] = v27 << v31;
  v22[76] = v30;
  v33 = v21[2] + v31;
  if (v33 >= 0)
  {
    v34 = v21[3];
    v36 = *v34;
    v35 = v34 + 1;
    v32 += bswap32(v36) << v33;
    v33 -= 32;
    if (v35 >= v21[4])
    {
      v35 = v21[4];
    }

    v21[3] = v35;
  }

  v21[2] = v33;
  *v21 = v32;
  v20 = v29 & 1;
LABEL_31:
  v37 = 0;
  v38 = 0;
  v39 = *(a1 + 40) + 76;
  v40 = 1;
  do
  {
    v41 = v40;
    if ((a6 >> v37))
    {
      v42 = *(a1 + 40);
      v43 = *(v39 + v15);
      v45 = *v42;
      v44 = v42[1];
      v46 = byte_27750DDF3[(v44 & 0xC0) + (v43 >> 1)];
      LODWORD(v47) = v44 - v46;
      if (*v42 < ((v44 - v46) << 55))
      {
        v47 = v47;
      }

      else
      {
        v47 = byte_27750DDF3[(v44 & 0xC0) + (v43 >> 1)];
      }

      if (*v42 < ((v44 - v46) << 55))
      {
        v48 = 0;
      }

      else
      {
        v45 = *v42 - ((v44 - v46) << 55);
        v48 = 1;
      }

      if (*v42 < ((v44 - v46) << 55))
      {
        v49 = *(v39 + v15);
      }

      else
      {
        v49 = v43 + 1;
      }

      v50 = byte_27750DDF3[2 * v43 + 256 + v48];
      v51 = __clz(v47) - 55;
      v52 = v45 << v51;
      v42[1] = v47 << v51;
      *(v39 + v15) = v50;
      v53 = v42[2] + v51;
      if (v53 >= 0)
      {
        v54 = v42[3];
        v56 = *v54;
        v55 = v54 + 1;
        v52 += bswap32(v56) << v53;
        v53 -= 32;
        if (v55 >= v42[4])
        {
          v55 = v42[4];
        }

        v42[3] = v55;
      }

      v42[2] = v53;
      *v42 = v52;
      v38 = ((v49 & 1) << v37) | v38;
    }

    v40 = 0;
    v37 = 1;
  }

  while ((v41 & 1) != 0);
  if (v20)
  {
    v230 = vadd_s32(v14, 0x1FFFFFFFFLL);
    v57 = 1 << v230.i8[0];
    v231 = a5;
    v58 = (a5 & 0xF0) != 0;
    if ((a5 & 0xF0) != 0)
    {
      v59 = 15;
    }

    else
    {
      v59 = 0;
    }

    v60 = v59 | a5 & 0x1FF0;
    v61 = (a5 & 0x1E00) != 0;
    if ((a5 & 0x1E00) != 0)
    {
      v62 = 122880;
    }

    else
    {
      v62 = 0;
    }

    sub_2774305A0(a1, a2, a3, 0, v60 | v62, v38, &v230);
    sub_2774305A0(a1, (v57 + a2), a3, 1, v9 & 0x1FE00 | (v61 << 8) | 0xF0, v38, &v230);
    sub_2774305A0(a1, a2, (v57 + a3), 2, v9 | (v58 << 8) | 0x1FE00u, v38, &v230);
    return sub_2774305A0(a1, (v57 + a2), (v57 + a3), 3, 8176, v38, &v230);
  }

  else
  {
    v229 = a5;
    v64 = *(a1 + 32);
    v65 = *(v64 + 8);
    v66 = *(v65 + 416);
    v224 = a3;
    v219 = (v66 * a3 + a2) << *(v65 + 531);
    v221 = *(v65 + 400);
    v67 = a7->u32[1];
    LODWORD(v68) = 1;
    v227 = a7->u32[0];
    v69 = 1 << v227;
    v223 = *(v64 + 2280);
    if (*(a1 + 4) != 1 && !(v67 | v38))
    {
      goto LABEL_80;
    }

    v18 = v67 == 0;
    v70 = *(a1 + 40);
    if (v18)
    {
      v71 = v70 + 1;
    }

    else
    {
      v71 = *(a1 + 40);
    }

    v72 = v71[74];
    v74 = *v70;
    v73 = v70[1];
    v75 = byte_27750DDF3[(v73 & 0xC0) + (v72 >> 1)];
    LODWORD(v76) = v73 - v75;
    if (*v70 < ((v73 - v75) << 55))
    {
      v76 = v76;
    }

    else
    {
      v76 = byte_27750DDF3[(v73 & 0xC0) + (v72 >> 1)];
    }

    if (*v70 < ((v73 - v75) << 55))
    {
      v77 = 0;
    }

    else
    {
      v74 = *v70 - ((v73 - v75) << 55);
      v77 = 1;
    }

    if (*v70 < ((v73 - v75) << 55))
    {
      v78 = v71[74];
    }

    else
    {
      v78 = v72 + 1;
    }

    v79 = byte_27750DDF3[2 * v72 + 256 + v77];
    v80 = __clz(v76) - 55;
    v81 = v74 << v80;
    v70[1] = v76 << v80;
    v71[74] = v79;
    v82 = v70[2] + v80;
    if (v82 >= 0)
    {
      v83 = v70[3];
      v85 = *v83;
      v84 = v83 + 1;
      v81 += bswap32(v85) << v82;
      v82 -= 32;
      if (v84 >= v70[4])
      {
        v84 = v70[4];
      }

      v70[3] = v84;
    }

    v70[2] = v82;
    *v70 = v81;
    LODWORD(v68) = v78 & 1;
    if (*(a1 + 4) == 1)
    {
      v86 = *(a1 + 32);
      v87 = sub_27743123C(v86, a2, a3, v69, v69, &v229, v14, a9);
      v88 = *(a1 + 6424);
      if (*(a1 + 6425) == 35)
      {
        v89 = *(a1 + 6424);
      }

      else
      {
        v89 = *(a1 + 6425);
      }

      if (v227 > 3)
      {
        LODWORD(v226) = 0;
        v213 = 0;
      }

      else
      {
        v213 = byte_2775353B8[*(a1 + 6424)];
        LODWORD(v226) = byte_2775353B8[v89];
      }

      HIDWORD(v226) = v89;
      if ((**(a1 + 48) & 0x100) != 0)
      {
        if ((v88 & 0xEF) == 0xA)
        {
          v90 = *(*(v86 + 16) + 403);
        }

        else
        {
          v90 = 0;
        }
      }

      else
      {
        v90 = 0;
      }

      v9 = v229;
      v217 = v87;
      sub_2774115D0(v223 + 8, v88, v227, v229, v87, v90, v66, v221 + v219);
      v91 = *(*(a1 + 32) + 8);
      v92 = vshld_u64(0x202020202020202uLL, *&vdup_n_s32((2 << v227) - 64));
      v93 = v91[117];
      v94 = a3 >> 2;
      v95 = v91[121];
      v96 = v91[116];
      v97 = a2 >> 2;
      v98 = v91[118];
      if (v69 >= 5)
      {
        v99 = v98 + v96 * (a3 >> 3);
        v100 = vmax_s8(*(v99 + v97), v92);
        *(v95 + v93 * (a2 >> 3) + v94) = vmax_s8(*(v95 + v93 * (a2 >> 3) + v94), v92);
        *(v99 + v97) = v100;
      }

      v212 = v227 == 2;
      v101 = v98 + v96 * ((v69 + a3) >> 3);
      v102 = v95 + v93 * ((v69 + a2) >> 3);
      v103 = vmax_s8(*(v102 + v94), v92);
      v104 = vmax_s8(*(v101 + v97), v92);
      *(v102 + v94) = v103;
      *(v101 + v97) = v104;
    }

    else
    {
LABEL_80:
      v226 = 0;
      v212 = 0;
      v217 = 0;
      v213 = 0;
    }

    result = sub_2774316E8(a1, a2, a3, v68, v38);
    v105 = *(a1 + 32);
    v106 = *(v105 + 32);
    if (*(v106 + 11) == 1)
    {
      v107 = HIBYTE(**(a1 + 48)) & 1;
    }

    else
    {
      LOBYTE(v107) = 1;
    }

    v108 = a1 + 4096;
    v109 = *(v106 + 1615) + 2;
    v215 = v107;
    if (v68)
    {
      *(a1 + 6426) = 0;
      if (v227 > v109)
      {
        v110 = 1;
      }

      else
      {
        v110 = v107;
      }

      if ((v110 & 1) == 0)
      {
        v111 = *(a1 + 40);
        v112 = *(v111 + 81);
        v114 = *v111;
        v113 = v111[1];
        v115 = byte_27750DDF3[(v113 & 0xC0) + (v112 >> 1)];
        LODWORD(v116) = v113 - v115;
        if (*v111 < ((v113 - v115) << 55))
        {
          v116 = v116;
        }

        else
        {
          v116 = byte_27750DDF3[(v113 & 0xC0) + (v112 >> 1)];
        }

        if (*v111 < ((v113 - v115) << 55))
        {
          v117 = 0;
        }

        else
        {
          v114 = *v111 - ((v113 - v115) << 55);
          v117 = 1;
        }

        if (*v111 < ((v113 - v115) << 55))
        {
          v118 = *(v111 + 81);
        }

        else
        {
          v118 = v112 + 1;
        }

        v119 = byte_27750DDF3[2 * v112 + 256 + v117];
        v120 = __clz(v116) - 55;
        v121 = v114 << v120;
        v111[1] = v116 << v120;
        *(v111 + 81) = v119;
        v122 = v111[2] + v120;
        if (v122 >= 0)
        {
          v123 = v111[3];
          v125 = *v123;
          v124 = v123 + 1;
          v121 += bswap32(v125) << v122;
          v122 -= 32;
          if (v124 >= v111[4])
          {
            v124 = v111[4];
          }

          v111[3] = v124;
        }

        v111[2] = v122;
        *v111 = v121;
        *(a1 + 6426) = v118 & 1;
      }

      *(a1 + 6427) = sub_277431B5C(a1, 0, *(a1 + 6424));
      v126 = a1 + 16 * (v227 > 2);
      v127 = *(v126 + 6368);
      v128 = *(v126 + 6376);
      v129 = (a1 + (v128 >> 1));
      if (v128)
      {
        v127 = *(*v129 + v127);
      }

      v130 = v127(v129, a1 + 64, v227, v213, 0);
      v68 = 0;
      if (*(*(*(a1 + 32) + 32) + 1616) == 1)
      {
        v68 = *(a1 + 4) == 3 || *(a1 + 6425) == 35;
      }

      if ((**(a1 + 48) & 0x100) != 0 || *(a1 + 6426) == 1)
      {
        result = (*(v223 + 8 * v227 + 784))(v221 + v219, v66, a1 + 64, v68, v130);
      }

      else
      {
        result = (*(v223 + 552 + 16 * v227 + 8 * v212 - 32))(v221 + v219, v66, a1 + 64, v68, v130);
      }

      v105 = *(a1 + 32);
      v108 = a1 + 4096;
      if (*(a1 + 4) != 1)
      {
        v131 = *(v105 + 8);
        v132 = vshld_u64(0x101010101010101uLL, *&vdup_n_s32((2 << v227) - 64));
        v133 = v131[117];
        v134 = a3 >> 2;
        v135 = v131[121];
        v136 = v131[116];
        v137 = a2 >> 2;
        v138 = v131[118];
        if (v69 >= 5)
        {
          v139 = v138 + v136 * (a3 >> 3);
          v140 = vmax_s8(*(v139 + v137), v132);
          *(v135 + v133 * (a2 >> 3) + v134) = vmax_s8(*(v135 + v133 * (a2 >> 3) + v134), v132);
          *(v139 + v137) = v140;
        }

        v141 = v138 + v136 * ((v69 + a3) >> 3);
        v142 = v135 + v133 * ((v69 + a2) >> 3);
        v143 = vmax_s8(*(v142 + v134), v132);
        v144 = vmax_s8(*(v141 + v137), v132);
        *(v142 + v134) = v143;
        *(v141 + v137) = v144;
        v105 = *(a1 + 32);
      }
    }

    v145 = *(v105 + 8);
    v146 = *(v145 + 424);
    v147 = v146 * v224 + 2 * a2;
    v148 = *(v145 + 408);
    v149 = v147 << *(v145 + 531);
    if (*(a1 + 4) == 1)
    {
      result = sub_277411768(v223 + 8, HIDWORD(v226), v227, v9, v217, v146, v148 + v149);
      v108 = a1 + 4096;
    }

    if (v38 != 0 || v68)
    {
      v218 = v149;
      v220 = v148;
      v222 = v146;
      v150 = 0;
      v151 = 0;
      v152 = v69 << v227;
      v153 = v69 << v227;
      if (!v68)
      {
        v153 = 0;
      }

      v154 = a1 + 2 * v153;
      v155 = v154 + 64;
      v156 = v154 + 64 + 2 * v152;
      v228 = 0;
      v157 = v215;
      if (v227 > v109)
      {
        v157 = 1;
      }

      v225 = v157;
      v214 = v227 - 2;
      v216 = v154 + 64;
      do
      {
        v158 = v150;
        if (v68)
        {
          v159 = *(a1 + 40);
          v160 = *v159;
          v161 = 4 * v150 + 203;
          v162 = -1;
          do
          {
            v163 = v162;
            v164 = *(v159 + v161);
            v165 = v159[1] - byte_27750DDF3[(v159[1] & 0xC0) + (v164 >> 1)];
            v166 = v160 >= v165 << 55;
            v167 = v160 - (v165 << 55);
            if (v160 < v165 << 55)
            {
              v165 = v165;
            }

            else
            {
              v165 = byte_27750DDF3[(v159[1] & 0xC0) + (v164 >> 1)];
            }

            if (v166)
            {
              v160 = v167;
              v168 = 1;
            }

            else
            {
              v168 = 0;
            }

            if (v166)
            {
              v169 = v164 + 1;
            }

            else
            {
              v169 = *(v159 + v161);
            }

            v170 = byte_27750DDF3[2 * v164 + 256 + v168];
            v171 = __clz(v165) - 55;
            v160 <<= v171;
            v159[1] = v165 << v171;
            *(v159 + v161) = v170;
            v172 = v159[2] + v171;
            if (v172 >= 0)
            {
              v173 = v159[3];
              v175 = *v173;
              v174 = v173 + 1;
              v160 += bswap32(v175) << v172;
              v172 -= 32;
              if (v174 >= v159[4])
              {
                v174 = v159[4];
              }

              v159[3] = v174;
            }

            v162 = v163 + 1;
            v159[2] = v172;
            *v159 = v160;
            if ((v169 & 1) == 0)
            {
              break;
            }

            ++v161;
          }

          while (v162 < 3);
          v176 = (v169 & 1) == 0;
          if (v163 + 2 == v176)
          {
            LOWORD(v177) = 0;
          }

          else
          {
            v178 = *(v159 + v150 + 211);
            v179 = v159[1];
            v180 = byte_27750DDF3[(v179 & 0xC0) + (v178 >> 1)];
            LODWORD(v181) = v179 - v180;
            v182 = v160 >= (v179 - v180) << 55;
            if (v160 < (v179 - v180) << 55)
            {
              v181 = v181;
            }

            else
            {
              v181 = byte_27750DDF3[(v179 & 0xC0) + (v178 >> 1)];
            }

            if (v160 < (v179 - v180) << 55)
            {
              v183 = 0;
            }

            else
            {
              v160 -= (v179 - v180) << 55;
              v183 = 1;
            }

            if (v182)
            {
              v184 = v178 + 1;
            }

            else
            {
              v184 = *(v159 + v150 + 211);
            }

            v185 = byte_27750DDF3[2 * v178 + 256 + v183];
            v186 = __clz(v181) - 55;
            v187 = v160 << v186;
            v159[1] = v181 << v186;
            *(v159 + v150 + 211) = v185;
            v188 = v172 + v186;
            if (v188 >= 0)
            {
              v189 = v159[3];
              v191 = *v189;
              v190 = v189 + 1;
              v187 += bswap32(v191) << v188;
              v188 -= 32;
              if (v190 >= v159[4])
              {
                v190 = v159[4];
              }

              v159[3] = v190;
            }

            v159[2] = v188;
            *v159 = v187;
            v177 = 1 << (v162 + (v176 << 31 >> 31));
            if (v184)
            {
              v177 = -v177;
            }
          }

          v151 = &v230;
          v230.i16[v150] = v177;
          v230.i16[2] = *(*(*(a1 + 32) + 16) + 2096);
        }

        if (v38)
        {
          *(v108 + 2330) = 0;
          if ((v225 & 1) == 0)
          {
            v192 = *(a1 + 40);
            v193 = *(v192 + 82);
            v195 = *v192;
            v194 = v192[1];
            v196 = byte_27750DDF3[(v194 & 0xC0) + (v193 >> 1)];
            LODWORD(v197) = v194 - v196;
            if (*v192 < ((v194 - v196) << 55))
            {
              v197 = v197;
            }

            else
            {
              v197 = byte_27750DDF3[(v194 & 0xC0) + (v193 >> 1)];
            }

            if (*v192 < ((v194 - v196) << 55))
            {
              v198 = 0;
            }

            else
            {
              v195 = *v192 - ((v194 - v196) << 55);
              v198 = 1;
            }

            if (*v192 < ((v194 - v196) << 55))
            {
              v199 = *(v192 + 82);
            }

            else
            {
              v199 = v193 + 1;
            }

            v200 = byte_27750DDF3[2 * v193 + 256 + v198];
            v201 = __clz(v197) - 55;
            v202 = v195 << v201;
            v192[1] = v197 << v201;
            *(v192 + 82) = v200;
            v203 = v192[2] + v201;
            if (v203 >= 0)
            {
              v204 = v192[3];
              v206 = *v204;
              v205 = v204 + 1;
              v202 += bswap32(v206) << v203;
              v203 -= 32;
              if (v205 >= v192[4])
              {
                v205 = v192[4];
              }

              v192[3] = v205;
            }

            v192[2] = v203;
            *v192 = v202;
            *(v108 + 2330) = v199 & 1;
          }

          *(a1 + 6427) = sub_277431B5C(a1, 1u, SHIDWORD(v226));
          v207 = *(a1 + 16 * (v227 > 2) + 6368);
          v208 = *(a1 + 16 * (v227 > 2) + 6376);
          v209 = (a1 + (v208 >> 1));
          if (v208)
          {
            v207 = *(*v209 + v207);
          }

          ++v150;
          v210 = v207(v209, v155, v227, v226, v158 + 1);
          v108 = a1 + 4096;
          if (*(a1 + 6426))
          {
            v211 = -1;
          }

          else
          {
            v211 = v210;
          }

          *(&v228 + v158) = v211;
        }

        else
        {
          ++v150;
        }

        LODWORD(v38) = v38 >> 1;
        v155 = v156;
      }

      while (!v158);
      if ((**(a1 + 48) & 0x100) != 0)
      {
        return (*(v223 + 8 * v214 + 832))(v220 + v218, v222, v216, v156, v151);
      }

      else
      {
        return (*(v223 + 8 * v214 + 680))(v220 + v218, v222, v216, v156, v151, &v228);
      }
    }
  }

  return result;
}

uint64_t sub_27743123C(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int *a6, int32x2_t a7, int32x2_t a8)
{
  v8 = *a6;
  v9 = *(a1 + 8);
  v10 = *(v9 + 524);
  if ((*a6 & 0x1E000) != 0 && (v11 = *(v9 + 520), a2 + 2 * a4 > v11))
  {
    v8 &= 0xFFFE1FFF;
    v12 = (v11 - (a4 + a2)) >> 3;
    v13 = v12 - 1;
    if (v12 >= 1)
    {
      v14 = v8;
      v15 = (v12 + 3) & 0x7FFFFFFC;
      a8.i32[0] = v13;
      v16 = xmmword_27750D390;
      v17.i64[0] = 0x200000002000;
      v17.i64[1] = 0x200000002000;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      do
      {
        v19 = v14;
        v20 = v16;
        v14 = vorrq_s8(vshlq_u32(v17, v16), v14);
        v16 = vaddq_s32(v16, v18);
        v15 -= 4;
      }

      while (v15);
      v21 = vbslq_s8(vcgtq_u32(v20, vdupq_lane_s32(a8, 0)), v19, v14);
      a7 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      v8 = a7.i32[0] | a7.i32[1];
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = a3 + 2 * a5;
  if ((v8 & 0xF) != 0 && v23 > v10)
  {
    v8 &= 0xFFFFFFF0;
    v25 = (v10 - (a5 + a3)) >> 3;
    v26 = v25 - 1;
    if (v25 >= 1)
    {
      v27 = (v25 + 3) & 0x7FFFFFFC;
      v28 = v8;
      a7.i32[0] = v26;
      v29 = xmmword_27750D390;
      v30 = vdupq_n_s32(a5 >> 3);
      v31.i64[0] = 0x100000001;
      v31.i64[1] = 0x100000001;
      v32.i64[0] = 0x400000004;
      v32.i64[1] = 0x400000004;
      do
      {
        v33 = v28;
        v34 = v29;
        v28 = vorrq_s8(vshlq_u32(v31, vaddq_s32(v30, vmvnq_s8(v29))), v28);
        v29 = vaddq_s32(v29, v32);
        v27 -= 4;
      }

      while (v27);
      v35 = vbslq_s8(vcgtq_u32(v34, vdupq_lane_s32(a7, 0)), v33, v28);
      *v35.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      v8 = v35.i32[0] | v35.i32[1];
    }

    v22 = 1;
  }

  *a6 = v8;
  if (*(*(a1 + 32) + 10) == 1 && *(a1 + 58) != 2)
  {
    *a6 = 0;
    if ((v8 & 0x100) != 0)
    {
      v36 = *(v9 + 856) + 12 * *(v9 + 848) * ((a3 - 1) >> 2) + 12 * ((a2 - 1) >> 2);
      if (!v36)
      {
LABEL_25:
        if (a5 == 4)
        {
          if ((v8 & 0xF) != 0)
          {
            v37 = *(v9 + 856) + 12 * *(v9 + 848) * ((a3 + 4) >> 2) + 12 * ((a2 - 1) >> 2);
            if (v37)
            {
              if (*(v37 + 10) == 1)
              {
                LODWORD(v36) = v36 | 0xF;
                *a6 = v36;
              }
            }
          }

          if ((v8 & 0xF0) != 0)
          {
            v38 = *(v9 + 856) + 12 * *(v9 + 848) * (a3 >> 2) + 12 * ((a2 - 1) >> 2);
            if (v38)
            {
              if (*(v38 + 10) == 1)
              {
                LODWORD(v36) = v36 | 0xF0;
                *a6 = v36;
              }
            }
          }
        }

        else
        {
          if ((v8 & 0xF) != 0 && a5 >> 3 >= 1)
          {
            v39 = 0;
            v40 = *(v9 + 848);
            v41 = *(v9 + 856) + 12 * ((a2 - 1) >> 2);
            v42 = v23 - 8;
            do
            {
              v43 = v41 + 12 * v40 * (v42 >> 2);
              if (v43 && *(v43 + 10) == 1)
              {
                LODWORD(v36) = v36 | (1 << v39);
                *a6 = v36;
              }

              ++v39;
              v42 -= 8;
            }

            while (a5 >> 3 != v39);
          }

          if ((v8 & 0xF0) != 0 && a5 >> 3 >= 1)
          {
            v44 = 0;
            v45 = *(v9 + 848);
            v46 = *(v9 + 856) + 12 * ((a2 - 1) >> 2);
            v47 = a5 + a3 - 8;
            do
            {
              v48 = v46 + 12 * v45 * (v47 >> 2);
              if (v48 && *(v48 + 10) == 1)
              {
                LODWORD(v36) = v36 | (16 << v44);
                *a6 = v36;
              }

              ++v44;
              v47 -= 8;
            }

            while (a5 >> 3 != v44);
          }
        }

        if (a4 == 4)
        {
          if ((v8 & 0x1E00) != 0)
          {
            v49 = *(v9 + 856) + 12 * *(v9 + 848) * ((a3 - 1) >> 2) + 12 * (a2 >> 2);
            if (v49)
            {
              if (*(v49 + 10) == 1)
              {
                LODWORD(v36) = v36 | 0x1E00;
                *a6 = v36;
              }
            }
          }

          if ((v8 & 0x1E000) != 0)
          {
            v50 = *(v9 + 856) + 12 * *(v9 + 848) * ((a3 - 1) >> 2) + 12 * ((a2 + 4) >> 2);
            if (v50)
            {
              if (*(v50 + 10) == 1)
              {
                *a6 = v36 | 0x1E000;
              }
            }
          }
        }

        else
        {
          v51 = a4 >> 3;
          if ((v8 & 0x1E00) != 0 && v51 >= 1)
          {
            v52 = 0;
            v53 = *(v9 + 856) + 12 * *(v9 + 848) * ((a3 - 1) >> 2);
            v54 = a2;
            do
            {
              v55 = v53 + 12 * (v54 >> 2);
              if (v55 && *(v55 + 10) == 1)
              {
                LODWORD(v36) = v36 | (512 << v52);
                *a6 = v36;
              }

              ++v52;
              v54 += 8;
            }

            while (v51 != v52);
          }

          if ((v8 & 0x1E000) != 0 && v51 >= 1)
          {
            v56 = 0;
            v57 = a4 + a2;
            v58 = *(v9 + 856) + 12 * *(v9 + 848) * ((a3 - 1) >> 2);
            do
            {
              v59 = v58 + 12 * (v57 >> 2);
              if (v59 && *(v59 + 10) == 1)
              {
                LODWORD(v36) = v36 | (0x2000 << v56);
                *a6 = v36;
              }

              ++v56;
              v57 += 8;
            }

            while (v51 != v56);
          }
        }

        return 1;
      }

      if (*(v36 + 10) == 1)
      {
        LODWORD(v36) = 256;
        *a6 = 256;
        goto LABEL_25;
      }
    }

    LODWORD(v36) = 0;
    goto LABEL_25;
  }

  return v22;
}

void *sub_2774316E8(void *result, int a2, int a3, int a4, int a5)
{
  v5 = result[3];
  if (*(v5 + 1) != 1 || (a4 | a5) == 0)
  {
    if (!a5)
    {
      return result;
    }

    goto LABEL_56;
  }

  v7 = 0;
  v8 = 0;
  v9 = result[5];
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[2];
  v15 = v9 + 49;
  do
  {
    v16 = *v15;
    v17 = byte_27750DDF3[(v11 & 0xC0) + (v16 >> 1)];
    v18 = v11 - v17;
    v19 = v10 >= v18 << 55;
    v20 = v10 - (v18 << 55);
    if (v10 < v18 << 55)
    {
      v18 = v18;
    }

    else
    {
      v18 = v17;
    }

    if (v19)
    {
      v10 = v20;
      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    if (v19)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = *v15;
    }

    v23 = __clz(v18) - 55;
    v11 = v18 << v23;
    v10 <<= v23;
    v7 += v23;
    v8 += v22 & 1;
    *v15 = byte_27750DDF3[2 * v16 + 256 + v21];
    if ((v22 & 1) == 0)
    {
      break;
    }

    v15 = v9 + 50;
  }

  while (v8 < 5);
  v24 = v14 + v7;
  if (v24 >= 0)
  {
    v25 = *v12++;
    v10 += bswap32(v25) << v24;
    v24 -= 32;
    if (v12 >= v13)
    {
      v12 = v13;
    }
  }

  if (v8)
  {
    v26 = v11 << 54;
    if (v22)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        if (v10 < v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v11 << 54;
        }

        v30 = v10 - v29;
        v31 = v27 + 1;
        v19 = v10 >= v26;
        v32 = v10 >= v26;
        v10 = 2 * v30;
        v28 += v32 << v27;
        if (!v19)
        {
          break;
        }

        v19 = v27++ >= 0x18;
      }

      while (!v19);
      v24 += v31;
      if (v24 >= 0)
      {
        v33 = *v12++;
        v10 += bswap32(v33) << v24;
        v24 -= 32;
        if (v12 >= v13)
        {
          v12 = v13;
        }
      }

      v8 += v28;
    }

    else
    {
      v31 = 1;
    }

    v35 = 0;
    v36 = v31 + 1;
    do
    {
      v37 = v35;
      v38 = v10;
      v39 = v10 >= v26;
      if (v10 < v26)
      {
        v40 = 0;
      }

      else
      {
        v40 = v11 << 54;
      }

      v10 = 2 * (v38 - v40);
      v35 = v39 | (2 * v37);
      --v36;
    }

    while (v36 > 1);
    v24 += v31;
    if (v24 >= 0)
    {
      v41 = *v12++;
      v10 += bswap32(v41) << v24;
      v24 -= 32;
      if (v12 >= v13)
      {
        v12 = v13;
      }
    }

    v42 = (v37 & 0x7FFFFFFF) + v8;
    if (v38 >= v26)
    {
      v42 = -v42;
    }

    v34 = v42 + 52;
  }

  else
  {
    v34 = 52;
  }

  *v9 = v10;
  v9[1] = v11;
  v9[2] = v24;
  v9[3] = v12;
  v43 = result[3];
  v44 = result[4];
  v45 = v44[2];
  v46 = result[6];
  v47 = *v43;
  v48 = v45[2113] - (*v46 & 3);
  if (v48 <= *(v44[4] + 1636))
  {
    LOBYTE(v48) = *(v44[4] + 1636);
  }

  v49 = -1 << v48;
  v50 = v45[2117] - 1;
  v51 = (-1 << v48) & a2;
  v52 = v49 & a3;
  v53 = *v43;
  if ((v51 & v50) != 0)
  {
    v53 = *(*(v44[1] + 776) + 2 * *(v44[1] + 768) * (v52 >> 3) + 2 * ((v51 - 1) >> 3)) >> 9;
  }

  v54 = v45[2097];
  if ((v52 & v50) != 0)
  {
    v47 = *(*(v44[1] + 776) + 2 * *(v44[1] + 768) * ((v52 - 1) >> 3) + 2 * (v51 >> 3)) >> 9;
  }

  v55 = (v34 + 2 * v54 + ((v53 + v47 + 1) >> 1)) % (v54 + 52) - v54;
  *v43 = v55;
  *v46 = *v46 & 0x1FF | (v55 << 9);
  v5 = result[3];
  *(v5 + 1) = 0;
  if (a5)
  {
LABEL_56:
    if ((*(v5 + 2) & 1) != 0 && (*result[6] & 0x100) == 0)
    {
      v56 = result[5];
      v57 = *(v56 + 201);
      v59 = *v56;
      v58 = v56[1];
      v60 = byte_27750DDF3[(v58 & 0xC0) + (v57 >> 1)];
      LODWORD(v61) = v58 - v60;
      if (*v56 < ((v58 - v60) << 55))
      {
        v61 = v61;
      }

      else
      {
        v61 = byte_27750DDF3[(v58 & 0xC0) + (v57 >> 1)];
      }

      if (*v56 < ((v58 - v60) << 55))
      {
        v62 = 0;
      }

      else
      {
        v59 = *v56 - ((v58 - v60) << 55);
        v62 = 1;
      }

      if (*v56 < ((v58 - v60) << 55))
      {
        v63 = *(v56 + 201);
      }

      else
      {
        v63 = v57 + 1;
      }

      v64 = byte_27750DDF3[2 * v57 + 256 + v62];
      v65 = __clz(v61) - 55;
      v66 = v59 << v65;
      v56[1] = v61 << v65;
      *(v56 + 201) = v64;
      v67 = v56[2] + v65;
      if (v67 >= 0)
      {
        v68 = v56[3];
        v70 = *v68;
        v69 = v68 + 1;
        v66 += bswap32(v70) << v67;
        v67 -= 32;
        if (v69 >= v56[4])
        {
          v69 = v56[4];
        }

        v56[3] = v69;
      }

      v56[2] = v67;
      *v56 = v66;
      if (v63)
      {
        v71 = *(result[4] + 32);
        v72 = *(v71 + 1619);
        if (*(v71 + 1619))
        {
          v73 = 0;
          v74 = result[5];
          v75 = *(v74 + 202);
          v76 = *v74;
          v77 = *(v74 + 8);
          do
          {
            v78 = byte_27750DDF3[(v77 & 0xC0) + (v75 >> 1)];
            v79 = v77 - v78;
            v80 = v76 >= v79 << 55;
            v81 = v76 - (v79 << 55);
            if (v76 < v79 << 55)
            {
              v79 = v79;
            }

            else
            {
              v79 = v78;
            }

            if (v80)
            {
              v76 = v81;
              v82 = 1;
            }

            else
            {
              v82 = 0;
            }

            if (v80)
            {
              v83 = v75 + 1;
            }

            else
            {
              v83 = v75;
            }

            LOBYTE(v75) = byte_27750DDF3[2 * v75 + 256 + v82];
            v84 = __clz(v79) - 55;
            v77 = v79 << v84;
            v76 <<= v84;
            *(v74 + 8) = v77;
            *(v74 + 202) = v75;
            v85 = *(v74 + 16) + v84;
            if (v85 >= 0)
            {
              v86 = *(v74 + 24);
              v88 = *v86;
              v87 = v86 + 1;
              v76 += bswap32(v88) << v85;
              v85 -= 32;
              if (v87 >= *(v74 + 32))
              {
                v87 = *(v74 + 32);
              }

              *(v74 + 24) = v87;
            }

            *(v74 + 16) = v85;
            *v74 = v76;
            ++v73;
            if ((v83 & 1) == 0)
            {
              break;
            }

            v75 = v75;
          }

          while (v73 < v72);
          v89 = ((__PAIR64__(v73, v83 & 1) - 1) >> 32);
          v71 = *(result[4] + 32);
        }

        else
        {
          v89 = 0;
        }

        *(result[3] + 3) = *(v71 + v89 + 1620);
        *(result[3] + 4) = *(*(result[4] + 32) + v89 + 1626);
      }

      else
      {
        *(result[3] + 3) = 0;
      }

      *(result[3] + 2) = 0;
    }
  }

  return result;
}

uint64_t sub_277431B5C(uint64_t a1, unsigned int a2, int a3)
{
  if ((*(a1 + 6426) & 1) == 0 && (**(a1 + 48) & 0x100) == 0)
  {
    return 0;
  }

  v3 = *(*(a1 + 32) + 16);
  if (*(a1 + 4) == 1)
  {
    if (a3 == 26)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (a3 & 0xFFFFFFEF) == 0xA && (*(v3 + 403))
    {
      return result;
    }

    return 0;
  }

  if (*(v3 + 404) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = v5 + a2;
  v7 = v6[197];
  v9 = *v5;
  v8 = v5[1];
  v10 = byte_27750DDF3[(v8 & 0xC0) + (v7 >> 1)];
  LODWORD(v11) = v8 - v10;
  if (*v5 < ((v8 - v10) << 55))
  {
    v11 = v11;
  }

  else
  {
    v11 = byte_27750DDF3[(v8 & 0xC0) + (v7 >> 1)];
  }

  if (*v5 < ((v8 - v10) << 55))
  {
    v12 = 0;
  }

  else
  {
    v9 = *v5 - ((v8 - v10) << 55);
    v12 = 1;
  }

  if (*v5 < ((v8 - v10) << 55))
  {
    v13 = v6[197];
  }

  else
  {
    v13 = v7 + 1;
  }

  v14 = byte_27750DDF3[2 * v7 + 256 + v12];
  v15 = __clz(v11) - 55;
  v16 = v9 << v15;
  v5[1] = v11 << v15;
  v6[197] = v14;
  v17 = v5[2] + v15;
  if (v17 >= 0)
  {
    v18 = v5[3];
    v20 = *v18;
    v19 = v18 + 1;
    v16 += bswap32(v20) << v17;
    v17 -= 32;
    if (v19 >= v5[4])
    {
      v19 = v5[4];
    }

    v5[3] = v19;
  }

  v5[2] = v17;
  *v5 = v16;
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v21 = *(a1 + 40);
  v22 = v21 + a2;
  v23 = v22[199];
  v24 = *v21;
  v25 = v21[1] - byte_27750DDF3[(v21[1] & 0xC0) + (v23 >> 1)];
  v26 = *v21 >= v25 << 55;
  v27 = *v21 - (v25 << 55);
  if (*v21 < v25 << 55)
  {
    v25 = v25;
  }

  else
  {
    v25 = byte_27750DDF3[(v21[1] & 0xC0) + (v23 >> 1)];
  }

  if (v26)
  {
    v24 = v27;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (v26)
  {
    v29 = v23 + 1;
  }

  else
  {
    v29 = v22[199];
  }

  v30 = byte_27750DDF3[2 * v23 + 256 + v28];
  v31 = __clz(v25);
  v32 = v31 - 55;
  v33 = v25 << (v31 - 55);
  v34 = v24 << (v31 - 55);
  v21[1] = v33;
  v22[199] = v30;
  v35 = v21[2] + v32;
  if (v35 >= 0)
  {
    v36 = v21[3];
    v38 = *v36;
    v37 = v36 + 1;
    v34 += bswap32(v38) << v35;
    v35 -= 32;
    if (v37 >= v21[4])
    {
      v37 = v21[4];
    }

    v21[3] = v37;
  }

  v21[2] = v35;
  *v21 = v34;
  return (v29 & 1u) + 1;
}

void *sub_277431CFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, int32x2_t *a7, double a8, int32x2_t a9)
{
  v252 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 32);
  v16 = *a7;
  v17 = HIDWORD(*a7);
  if (v17 == 1)
  {
    v19 = 0;
    *(a1 + 6424) = *(a1 + 2 * a4 + 6416);
  }

  else if (v17)
  {
    v19 = 0;
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = v18 != 0;
    if (*(a1 + 4) == 3)
    {
      if (*(*(v15 + 16) + 272))
      {
        v20 = 1;
      }

      else
      {
        v20 = v18 == 0;
      }

      v19 = !v20;
    }
  }

  v21 = *(v15 + 16);
  if (v16.i32[0] <= *(v21 + 2114))
  {
    goto LABEL_30;
  }

  if (v16.i32[0] > *(v21 + 2115) || v19)
  {
    v22 = 1;
    goto LABEL_31;
  }

  if (v17 >= *(a1 + 12))
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = v23 - v16.i32[0];
    v25 = v24[76];
    v27 = *v23;
    v26 = v23[1];
    v28 = byte_27750DDF3[(v26 & 0xC0) + (v25 >> 1)];
    LODWORD(v29) = v26 - v28;
    if (*v23 < ((v26 - v28) << 55))
    {
      v29 = v29;
    }

    else
    {
      v29 = byte_27750DDF3[(v26 & 0xC0) + (v25 >> 1)];
    }

    if (*v23 < ((v26 - v28) << 55))
    {
      v30 = 0;
    }

    else
    {
      v27 = *v23 - ((v26 - v28) << 55);
      v30 = 1;
    }

    if (*v23 < ((v26 - v28) << 55))
    {
      v31 = v24[76];
    }

    else
    {
      v31 = v25 + 1;
    }

    v32 = byte_27750DDF3[2 * v25 + 256 + v30];
    v33 = __clz(v29) - 55;
    v34 = v27 << v33;
    v23[1] = v29 << v33;
    v24[76] = v32;
    v35 = v23[2] + v33;
    if (v35 >= 0)
    {
      v36 = v23[3];
      v38 = *v36;
      v37 = v36 + 1;
      v34 += bswap32(v38) << v35;
      v35 -= 32;
      if (v37 >= v23[4])
      {
        v37 = v23[4];
      }

      v23[3] = v37;
    }

    v23[2] = v35;
    *v23 = v34;
    v22 = v31 & 1;
  }

LABEL_31:
  if (v16.i32[0] < 3)
  {
    v42 = a6;
  }

  else
  {
    v39 = *(a1 + 40) + 76;
    if (v16.i32[0] == 3)
    {
      v40 = 0;
    }

    else
    {
      v40 = v22;
    }

    if (v40)
    {
      v41 = 0;
      v42 = 0;
      v43 = 1;
      do
      {
        v44 = v43;
        if ((a6 >> v41))
        {
          v45 = *(a1 + 40);
          v46 = *(v39 + v17);
          v48 = *v45;
          v47 = v45[1];
          v49 = byte_27750DDF3[(v47 & 0xC0) + (v46 >> 1)];
          LODWORD(v50) = v47 - v49;
          if (*v45 < ((v47 - v49) << 55))
          {
            v50 = v50;
          }

          else
          {
            v50 = byte_27750DDF3[(v47 & 0xC0) + (v46 >> 1)];
          }

          if (*v45 < ((v47 - v49) << 55))
          {
            v51 = 0;
          }

          else
          {
            v48 = *v45 - ((v47 - v49) << 55);
            v51 = 1;
          }

          if (*v45 < ((v47 - v49) << 55))
          {
            v52 = *(v39 + v17);
          }

          else
          {
            v52 = v46 + 1;
          }

          v53 = byte_27750DDF3[2 * v46 + 256 + v51];
          v54 = __clz(v50) - 55;
          v55 = v48 << v54;
          v45[1] = v50 << v54;
          *(v39 + v17) = v53;
          v56 = v45[2] + v54;
          if (v56 >= 0)
          {
            v57 = v45[3];
            v59 = *v57;
            v58 = v57 + 1;
            v55 += bswap32(v59) << v56;
            v56 -= 32;
            if (v58 >= v45[4])
            {
              v58 = v45[4];
            }

            v45[3] = v58;
          }

          v45[2] = v56;
          *v45 = v55;
          v42 = ((v52 & 1) << v41) | v42;
        }

        v43 = 0;
        v41 = 1;
      }

      while ((v44 & 1) != 0);
    }

    else
    {
      v60 = 0;
      v42 = 0;
      v61 = 1;
      do
      {
        v62 = v61;
        if ((a6 >> v60))
        {
          v63 = *(a1 + 40);
          v64 = *(v39 + v17);
          v66 = *v63;
          v65 = v63[1];
          v67 = byte_27750DDF3[(v65 & 0xC0) + (v64 >> 1)];
          LODWORD(v68) = v65 - v67;
          if (*v63 < ((v65 - v67) << 55))
          {
            v68 = v68;
          }

          else
          {
            v68 = byte_27750DDF3[(v65 & 0xC0) + (v64 >> 1)];
          }

          if (*v63 < ((v65 - v67) << 55))
          {
            v69 = 0;
          }

          else
          {
            v66 = *v63 - ((v65 - v67) << 55);
            v69 = 1;
          }

          if (*v63 < ((v65 - v67) << 55))
          {
            v70 = *(v39 + v17);
          }

          else
          {
            v70 = v64 + 1;
          }

          v71 = byte_27750DDF3[2 * v64 + 256 + v69];
          v72 = __clz(v68) - 55;
          v73 = v66 << v72;
          v63[1] = v68 << v72;
          *(v39 + v17) = v71;
          v74 = v63[2] + v72;
          if (v74 >= 0)
          {
            v75 = v63[3];
            v77 = *v75;
            v76 = v75 + 1;
            v73 += bswap32(v77) << v74;
            v74 -= 32;
            if (v76 >= v63[4])
            {
              v76 = v63[4];
            }

            v63[3] = v76;
          }

          v63[2] = v74;
          *v63 = v73;
          v78 = *(a1 + 40);
          v79 = *(v39 + v17);
          v81 = *v78;
          v80 = v78[1];
          v82 = byte_27750DDF3[(v80 & 0xC0) + (v79 >> 1)];
          LODWORD(v83) = v80 - v82;
          if (*v78 < ((v80 - v82) << 55))
          {
            v83 = v83;
          }

          else
          {
            v83 = byte_27750DDF3[(v80 & 0xC0) + (v79 >> 1)];
          }

          if (*v78 < ((v80 - v82) << 55))
          {
            v84 = 0;
          }

          else
          {
            v81 = *v78 - ((v80 - v82) << 55);
            v84 = 1;
          }

          if (*v78 < ((v80 - v82) << 55))
          {
            v85 = *(v39 + v17);
          }

          else
          {
            v85 = v79 + 1;
          }

          v86 = byte_27750DDF3[2 * v79 + 256 + v84];
          v87 = __clz(v83) - 55;
          v88 = v81 << v87;
          v78[1] = v83 << v87;
          *(v39 + v17) = v86;
          v89 = v78[2] + v87;
          if (v89 >= 0)
          {
            v90 = v78[3];
            v92 = *v90;
            v91 = v90 + 1;
            v88 += bswap32(v92) << v89;
            v89 -= 32;
            if (v91 >= v78[4])
            {
              v91 = v78[4];
            }

            v78[3] = v91;
          }

          v78[2] = v89;
          *v78 = v88;
          v42 = ((v85 & 1) << ((2 * v60) | 1)) | ((v70 & 1) << (2 * v60)) | v42;
        }

        v61 = 0;
        v60 = 1;
      }

      while ((v62 & 1) != 0);
    }
  }

  if (v22)
  {
    v250 = vadd_s32(v16, 0x1FFFFFFFFLL);
    v93 = a1;
    v94 = 1 << v250.i8[0];
    LODWORD(v251) = a5;
    if ((a5 & 0xF0) != 0)
    {
      v95 = 15;
    }

    else
    {
      v95 = 0;
    }

    v96 = v95 | a5 & 0x1FF0;
    v97 = a3;
    if ((a5 & 0x1E00) != 0)
    {
      v98 = 122880;
    }

    else
    {
      v98 = 0;
    }

    sub_277431CFC(v93, a2, a3, 0, v96 | v98, v42, &v250);
    sub_277431CFC(v93, (v94 + a2), v97, 1, a5 & 0x1FE00 | (((a5 & 0x1E00) != 0) << 8) | 0xF0, v42, &v250);
    sub_277431CFC(v93, a2, (v94 + v97), 2, a5 | (((a5 & 0xF0) != 0) << 8) | 0x1FE00u, v42, &v250);
    return sub_277431CFC(v93, (v94 + a2), (v94 + v97), 3, 8176, v42, &v250);
  }

  else
  {
    v248 = a5;
    v100 = *(a1 + 32);
    v101 = *(v100 + 8);
    v245 = *(v101 + 416);
    v243 = (v245 * a3 + a2) << *(v101 + 531);
    v244 = *(v101 + 400);
    v102 = a7->u32[1];
    v103 = 1;
    v104 = a7->u32[0];
    v233 = *(v100 + 2280);
    v234 = 1 << v104;
    v238 = a3;
    if (*(a1 + 4) != 1 && !(v102 | v42))
    {
      goto LABEL_116;
    }

    v20 = v102 == 0;
    v105 = *(a1 + 40);
    if (v20)
    {
      v106 = v105 + 1;
    }

    else
    {
      v106 = *(a1 + 40);
    }

    v107 = v106[74];
    v109 = *v105;
    v108 = v105[1];
    v110 = byte_27750DDF3[(v108 & 0xC0) + (v107 >> 1)];
    LODWORD(v111) = v108 - v110;
    if (*v105 < ((v108 - v110) << 55))
    {
      v111 = v111;
    }

    else
    {
      v111 = byte_27750DDF3[(v108 & 0xC0) + (v107 >> 1)];
    }

    if (*v105 < ((v108 - v110) << 55))
    {
      v112 = 0;
    }

    else
    {
      v109 = *v105 - ((v108 - v110) << 55);
      v112 = 1;
    }

    if (*v105 < ((v108 - v110) << 55))
    {
      v113 = v106[74];
    }

    else
    {
      v113 = v107 + 1;
    }

    v114 = byte_27750DDF3[2 * v107 + 256 + v112];
    v115 = __clz(v111) - 55;
    v116 = v109 << v115;
    v105[1] = v111 << v115;
    v106[74] = v114;
    v117 = v105[2] + v115;
    if (v117 >= 0)
    {
      v118 = v105[3];
      v120 = *v118;
      v119 = v118 + 1;
      v116 += bswap32(v120) << v117;
      v117 -= 32;
      if (v119 >= v105[4])
      {
        v119 = v105[4];
      }

      v105[3] = v119;
    }

    v105[2] = v117;
    *v105 = v116;
    v103 = v113 & 1;
    if (*(a1 + 4) == 1)
    {
      v121 = *(a1 + 32);
      v122 = sub_27743123C(v121, a2, a3, v234, v234, &v248, v16, a9);
      v123 = *(a1 + 6424);
      v124 = *(a1 + 6425);
      if (v124 == 35)
      {
        v124 = *(a1 + 6416);
      }

      v232 = byte_27750DDD0[v124];
      if (v104 > 3)
      {
        v241 = 0;
        v125 = 0;
      }

      else
      {
        v125 = byte_2775353B8[*(a1 + 6424)];
        v241 = byte_2775353B8[byte_27750DDD0[v124]];
      }

      v239 = v125;
      if ((**(a1 + 48) & 0x100) != 0)
      {
        if ((v123 & 0xEF) == 0xA)
        {
          v126 = *(*(v121 + 16) + 403);
        }

        else
        {
          v126 = 0;
        }
      }

      else
      {
        v126 = 0;
      }

      a5 = v248;
      sub_2774115D0(v233 + 8, v123, v104, v248, v122, v126, v245, v244 + v243);
      v127 = *(*(a1 + 32) + 8);
      v128 = vshld_u64(0x202020202020202uLL, *&vdup_n_s32((2 << v104) - 64));
      v129 = v127[117];
      LODWORD(a3) = v238;
      v130 = v238 >> 2;
      v131 = v127[121];
      v132 = v127[116];
      v133 = a2 >> 2;
      v134 = v127[118];
      if (v234 >= 5)
      {
        v135 = v134 + v132 * (v238 >> 3);
        v136 = vmax_s8(*(v135 + v133), v128);
        *(v131 + v129 * (a2 >> 3) + v130) = vmax_s8(*(v131 + v129 * (a2 >> 3) + v130), v128);
        *(v135 + v133) = v136;
      }

      v236 = v104 == 2;
      v137 = v134 + v132 * ((v234 + v238) >> 3);
      v138 = v131 + v129 * ((v234 + a2) >> 3);
      v139 = vmax_s8(*(v138 + v130), v128);
      v140 = vmax_s8(*(v137 + v133), v128);
      *(v138 + v130) = v139;
      *(v137 + v133) = v140;
    }

    else
    {
LABEL_116:
      v232 = 0;
      v236 = 0;
      v241 = 0;
      v239 = 0;
    }

    result = sub_2774316E8(a1, a2, a3, v103, v42);
    v141 = *(a1 + 32);
    v142 = *(v141 + 32);
    v143 = a4;
    if (*(v142 + 11) == 1)
    {
      v144 = HIBYTE(**(a1 + 48)) & 1;
    }

    else
    {
      LOBYTE(v144) = 1;
    }

    v145 = a1 + 4096;
    v146 = *(v142 + 1615) + 2;
    if (v103)
    {
      *(a1 + 6426) = 0;
      v229 = v144;
      if (v104 > v146)
      {
        v147 = 1;
      }

      else
      {
        v147 = v144;
      }

      if ((v147 & 1) == 0)
      {
        v148 = *(a1 + 40);
        v149 = *(v148 + 81);
        v151 = *v148;
        v150 = v148[1];
        v152 = byte_27750DDF3[(v150 & 0xC0) + (v149 >> 1)];
        LODWORD(v153) = v150 - v152;
        if (*v148 < ((v150 - v152) << 55))
        {
          v153 = v153;
        }

        else
        {
          v153 = byte_27750DDF3[(v150 & 0xC0) + (v149 >> 1)];
        }

        if (*v148 < ((v150 - v152) << 55))
        {
          v154 = 0;
        }

        else
        {
          v151 = *v148 - ((v150 - v152) << 55);
          v154 = 1;
        }

        if (*v148 < ((v150 - v152) << 55))
        {
          v155 = *(v148 + 81);
        }

        else
        {
          v155 = v149 + 1;
        }

        v156 = byte_27750DDF3[2 * v149 + 256 + v154];
        v157 = __clz(v153) - 55;
        v158 = v151 << v157;
        v148[1] = v153 << v157;
        *(v148 + 81) = v156;
        v159 = v148[2] + v157;
        if (v159 >= 0)
        {
          v160 = v148[3];
          v162 = *v160;
          v161 = v160 + 1;
          v158 += bswap32(v162) << v159;
          v159 -= 32;
          if (v161 >= v148[4])
          {
            v161 = v148[4];
          }

          v148[3] = v161;
        }

        v148[2] = v159;
        *v148 = v158;
        *(a1 + 6426) = v155 & 1;
      }

      *(a1 + 6427) = sub_277431B5C(a1, 0, *(a1 + 6424));
      v163 = a1 + 16 * (v104 > 2);
      v164 = *(v163 + 6368);
      v165 = *(v163 + 6376);
      v166 = (a1 + (v165 >> 1));
      if (v165)
      {
        v164 = *(*v166 + v164);
      }

      v167 = v164(v166, a1 + 64, v104, v239, 0);
      if ((**(a1 + 48) & 0x100) != 0 || *(a1 + 6426) == 1)
      {
        result = (*(v233 + 8 * v104 + 784))(v244 + v243, v245, a1 + 64, 0);
      }

      else
      {
        result = (*(v233 + 552 + 16 * v104 + 8 * v236 - 32))(v244 + v243, v245, a1 + 64, 0, v167);
      }

      v141 = *(a1 + 32);
      if (*(a1 + 4) == 1)
      {
        v145 = a1 + 4096;
      }

      else
      {
        v168 = *(v141 + 8);
        v169 = vshld_u64(0x101010101010101uLL, *&vdup_n_s32((2 << v104) - 64));
        v170 = v168[117];
        v171 = v238 >> 2;
        v172 = v168[121];
        v173 = v168[116];
        v174 = a2 >> 2;
        v175 = v168[118];
        v145 = a1 + 4096;
        if (v234 >= 5)
        {
          v176 = v175 + v173 * (v238 >> 3);
          v177 = vmax_s8(*(v176 + v174), v169);
          *(v172 + v170 * (a2 >> 3) + v171) = vmax_s8(*(v172 + v170 * (a2 >> 3) + v171), v169);
          *(v176 + v174) = v177;
        }

        v178 = v175 + v173 * ((v234 + v238) >> 3);
        v179 = v172 + v170 * ((v234 + a2) >> 3);
        v180 = vmax_s8(*(v179 + v171), v169);
        v181 = vmax_s8(*(v178 + v174), v169);
        *(v179 + v171) = v180;
        *(v178 + v174) = v181;
        v141 = *(a1 + 32);
      }

      LOBYTE(v144) = v229;
    }

    v246 = *(*(v141 + 8) + 424);
    v182 = v104;
    if (v104 < 3)
    {
      v184 = v232;
      if (v143 != 3)
      {
        return result;
      }

      v230 = a7[1].u32[0];
      v248 = v230;
      v183 = v234;
      v237 = a2 - v234;
      v238 -= v234;
    }

    else
    {
      v230 = a5;
      v237 = a2;
      v182 = (v104 - 1);
      v183 = v234 >> 1;
      v184 = v232;
    }

    v185 = 0;
    v250 = 0;
    v251 = 0;
    v186 = a1 + 64;
    if (v182 > v146)
    {
      v187 = 1;
    }

    else
    {
      v187 = v144;
    }

    v240 = v187;
    v235 = v183;
    v228 = (v183 * v183);
    v188 = a1 + 64;
    do
    {
      if (v42)
      {
        *(v145 + 2330) = 0;
        if ((v240 & 1) == 0)
        {
          v189 = *(a1 + 40);
          v190 = *(v189 + 82);
          v192 = *v189;
          v191 = v189[1];
          v193 = byte_27750DDF3[(v191 & 0xC0) + (v190 >> 1)];
          LODWORD(v194) = v191 - v193;
          if (*v189 < ((v191 - v193) << 55))
          {
            v194 = v194;
          }

          else
          {
            v194 = byte_27750DDF3[(v191 & 0xC0) + (v190 >> 1)];
          }

          if (*v189 < ((v191 - v193) << 55))
          {
            v195 = 0;
          }

          else
          {
            v192 = *v189 - ((v191 - v193) << 55);
            v195 = 1;
          }

          if (*v189 < ((v191 - v193) << 55))
          {
            v196 = *(v189 + 82);
          }

          else
          {
            v196 = v190 + 1;
          }

          v197 = byte_27750DDF3[2 * v190 + 256 + v195];
          v198 = __clz(v194) - 55;
          v199 = v192 << v198;
          v189[1] = v194 << v198;
          *(v189 + 82) = v197;
          v200 = v189[2] + v198;
          if (v200 >= 0)
          {
            v201 = v189[3];
            v203 = *v201;
            v202 = v201 + 1;
            v199 += bswap32(v203) << v200;
            v200 -= 32;
            if (v202 >= v189[4])
            {
              v202 = v189[4];
            }

            v189[3] = v202;
          }

          v189[2] = v200;
          *v189 = v199;
          *(v145 + 2330) = v196 & 1;
        }

        *(a1 + 6427) = sub_277431B5C(a1, 1u, v184);
        v204 = *(a1 + 16 * (v182 > 2) + 6368);
        v205 = *(a1 + 16 * (v182 > 2) + 6376);
        v206 = (a1 + (v205 >> 1));
        if (v205)
        {
          v204 = *(*v206 + v204);
        }

        v207 = v204(v206, v188, v182, v241, (v185 >> 1) + 1);
        v145 = a1 + 4096;
        if (*(a1 + 6426))
        {
          v208 = -1;
        }

        else
        {
          v208 = v207;
        }

        v250.i32[v185] = v208;
      }

      ++v185;
      LODWORD(v42) = v42 >> 1;
      v188 += 2 * v228;
    }

    while (v185 != 4);
    v209 = a1;
    v210 = v182;
    v211 = 0;
    v212 = vand_s8(vdup_n_s32(v230), 0xFFFE00FFFFFFFFF0);
    v213 = (v230 & 0xF0) == 0;
    v214 = (v237 & 0xFFFFFFFE);
    v231 = v210;
    v215 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v213), 0x1FuLL)), 0x1E0000000000, 0x1F000000000FLL);
    v242 = v210 - 2;
    v216 = 2 * 2 * v235 * v235;
    v217 = vorr_s8(v215, v212);
    v249 = v217;
    v218 = &v249;
    v219 = 1;
    v220 = &v250;
    do
    {
      v221 = v219;
      v222 = *(v209 + 32);
      v223 = *(v222 + 8);
      v224 = v238 + v211 * v235;
      v225 = *(v223 + 408);
      v226 = (v214 + *(v223 + 424) * v224) << *(v223 + 531);
      if (*(v209 + 4) == 1)
      {
        v227 = sub_27743123C(v222, v214, v224, 2 * v235, v235, v218, v217, v215);
        sub_277411768(v233 + 8, v232, v231, *v218, v227, v246, v225 + v226);
      }

      v247[0] = v220->i32[0];
      v247[1] = *(&v250 + v211 + 2);
      if (*(*(v209 + 48) + 1))
      {
        result = (*(v233 + 832 + 8 * v242))(v225 + v226, v246, v186, v186 + v216, 0);
      }

      else
      {
        result = (*(v233 + 680 + 8 * v242))(v225 + v226, v246, v186, v186 + v216, 0, v247);
      }

      v219 = 0;
      v186 += 2 * v228;
      v220 = (&v250 + 4);
      v218 = &v249 + 1;
      v211 = 1;
    }

    while ((v221 & 1) != 0);
  }

  return result;
}

uint64_t sub_277432AD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int32 a5, uint64_t a6, int32x2_t *a7, double a8, int32x2_t a9)
{
  v12 = a3;
  v15 = *(a1 + 32);
  v16 = *a7;
  v17 = HIDWORD(*a7);
  if (v17 == 1)
  {
    v19 = 0;
    *(a1 + 6424) = *(a1 + 2 * a4 + 6416);
  }

  else if (v17)
  {
    v19 = 0;
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = v18 != 0;
    if (*(a1 + 4) == 3)
    {
      if (*(*(v15 + 16) + 272))
      {
        v20 = 1;
      }

      else
      {
        v20 = v18 == 0;
      }

      v19 = !v20;
    }
  }

  v21 = *(v15 + 16);
  if (v16.i32[0] <= *(v21 + 2114))
  {
    goto LABEL_30;
  }

  if (v16.i32[0] > *(v21 + 2115) || v19)
  {
    v22 = 1;
    goto LABEL_31;
  }

  if (v17 >= *(a1 + 12))
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = v23 - v16.i32[0];
    v25 = v24[76];
    v27 = *v23;
    v26 = v23[1];
    v28 = byte_27750DDF3[(v26 & 0xC0) + (v25 >> 1)];
    LODWORD(v29) = v26 - v28;
    if (*v23 < ((v26 - v28) << 55))
    {
      v29 = v29;
    }

    else
    {
      v29 = byte_27750DDF3[(v26 & 0xC0) + (v25 >> 1)];
    }

    if (*v23 < ((v26 - v28) << 55))
    {
      v30 = 0;
    }

    else
    {
      v27 = *v23 - ((v26 - v28) << 55);
      v30 = 1;
    }

    if (*v23 < ((v26 - v28) << 55))
    {
      v31 = v24[76];
    }

    else
    {
      v31 = v25 + 1;
    }

    v32 = byte_27750DDF3[2 * v25 + 256 + v30];
    v33 = __clz(v29) - 55;
    v34 = v27 << v33;
    v23[1] = v29 << v33;
    v24[76] = v32;
    v35 = v23[2] + v33;
    if (v35 >= 0)
    {
      v36 = v23[3];
      v38 = *v36;
      v37 = v36 + 1;
      v34 += bswap32(v38) << v35;
      v35 -= 32;
      if (v37 >= v23[4])
      {
        v37 = v23[4];
      }

      v23[3] = v37;
    }

    v23[2] = v35;
    *v23 = v34;
    v22 = v31 & 1;
  }

LABEL_31:
  if (v16.i32[0] < 3)
  {
    v40 = a6;
    if (v22)
    {
LABEL_50:
      v193 = vadd_s32(v16, 0x1FFFFFFFFLL);
      v59 = 1 << v193.i8[0];
      v194 = a5;
      v60 = (a5 & 0xF0) != 0;
      if ((a5 & 0xF0) != 0)
      {
        v61 = 15;
      }

      else
      {
        v61 = 0;
      }

      v62 = v61 | a5 & 0x1FF0;
      v63 = (a5 & 0x1E00) != 0;
      if ((a5 & 0x1E00) != 0)
      {
        v64 = 122880;
      }

      else
      {
        v64 = 0;
      }

      sub_277432AD8(a1, a2, a3, 0, v62 | v64, v40, &v193);
      sub_277432AD8(a1, (v59 + a2), v12, 1, a5 & 0x1FE00 | (v63 << 8) | 0xF0u, v40, &v193);
      sub_277432AD8(a1, a2, (v59 + v12), 2, a5 | (v60 << 8) | 0x1FE00u, v40, &v193);
      return sub_277432AD8(a1, (v59 + a2), (v59 + v12), 3, 8176, v40, &v193);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = *(a1 + 40) + 76;
    v42 = 1;
    do
    {
      v43 = v42;
      if ((a6 >> v39))
      {
        v44 = *(a1 + 40);
        v45 = *(v41 + v17);
        v47 = *v44;
        v46 = v44[1];
        v48 = byte_27750DDF3[(v46 & 0xC0) + (v45 >> 1)];
        LODWORD(v49) = v46 - v48;
        if (*v44 < ((v46 - v48) << 55))
        {
          v49 = v49;
        }

        else
        {
          v49 = byte_27750DDF3[(v46 & 0xC0) + (v45 >> 1)];
        }

        if (*v44 < ((v46 - v48) << 55))
        {
          v50 = 0;
        }

        else
        {
          v47 = *v44 - ((v46 - v48) << 55);
          v50 = 1;
        }

        if (*v44 < ((v46 - v48) << 55))
        {
          v51 = *(v41 + v17);
        }

        else
        {
          v51 = v45 + 1;
        }

        v52 = byte_27750DDF3[2 * v45 + 256 + v50];
        v53 = __clz(v49) - 55;
        v54 = v47 << v53;
        v44[1] = v49 << v53;
        *(v41 + v17) = v52;
        v55 = v44[2] + v53;
        if (v55 >= 0)
        {
          v56 = v44[3];
          v58 = *v56;
          v57 = v56 + 1;
          v54 += bswap32(v58) << v55;
          v55 -= 32;
          if (v57 >= v44[4])
          {
            v57 = v44[4];
          }

          v44[3] = v57;
        }

        v44[2] = v55;
        *v44 = v54;
        v40 = ((v51 & 1) << v39) | v40;
      }

      v42 = 0;
      v39 = 1;
    }

    while ((v43 & 1) != 0);
    if (v22)
    {
      goto LABEL_50;
    }
  }

  v193.i32[0] = a5;
  v66 = *(a1 + 32);
  v67 = *(v66 + 8);
  v189 = *(v67 + 416);
  v185 = (v189 * a3 + a2) << *(v67 + 531);
  v187 = *(v67 + 400);
  v68 = a7->u32[1];
  v69 = 1;
  v70 = a7->u32[0];
  v71 = 1 << v70;
  v191 = *(v66 + 2280);
  if (*(a1 + 4) != 1 && !(v68 | v40))
  {
    goto LABEL_81;
  }

  v20 = v68 == 0;
  v72 = *(a1 + 40);
  if (v20)
  {
    v73 = v72 + 1;
  }

  else
  {
    v73 = *(a1 + 40);
  }

  v74 = v73[74];
  v76 = *v72;
  v75 = v72[1];
  v77 = byte_27750DDF3[(v75 & 0xC0) + (v74 >> 1)];
  LODWORD(v78) = v75 - v77;
  if (*v72 < ((v75 - v77) << 55))
  {
    v78 = v78;
  }

  else
  {
    v78 = byte_27750DDF3[(v75 & 0xC0) + (v74 >> 1)];
  }

  if (*v72 < ((v75 - v77) << 55))
  {
    v79 = 0;
  }

  else
  {
    v76 = *v72 - ((v75 - v77) << 55);
    v79 = 1;
  }

  if (*v72 < ((v75 - v77) << 55))
  {
    v80 = v73[74];
  }

  else
  {
    v80 = v74 + 1;
  }

  v81 = byte_27750DDF3[2 * v74 + 256 + v79];
  v82 = __clz(v78) - 55;
  v83 = v76 << v82;
  v72[1] = v78 << v82;
  v73[74] = v81;
  v84 = v72[2] + v82;
  if (v84 >= 0)
  {
    v85 = v72[3];
    v87 = *v85;
    v86 = v85 + 1;
    v83 += bswap32(v87) << v84;
    v84 -= 32;
    if (v86 >= v72[4])
    {
      v86 = v72[4];
    }

    v72[3] = v86;
  }

  v72[2] = v84;
  *v72 = v83;
  v69 = v80 & 1;
  if (*(a1 + 4) == 1)
  {
    v181 = *(a1 + 32);
    v88 = sub_27743123C(v181, a2, a3, 1 << v70, 1 << v70, &v193, v16, a9);
    v89 = *(a1 + 6424);
    HIDWORD(v192) = *(a1 + 6425);
    if (HIDWORD(v192) == 35)
    {
      HIDWORD(v192) = *(a1 + 6416);
    }

    if (v70 > 3)
    {
      LODWORD(v192) = 0;
      v183 = 0;
    }

    else
    {
      v183 = byte_2775353B8[*(a1 + 6424)];
      LODWORD(v192) = byte_2775353B8[HIDWORD(v192)];
    }

    if ((**(a1 + 48) & 0x100) != 0)
    {
      if ((v89 & 0xEF) == 0xA)
      {
        v90 = *(*(v181 + 16) + 403);
      }

      else
      {
        v90 = 0;
      }
    }

    else
    {
      v90 = 0;
    }

    sub_2774115D0(v191 + 8, v89, v70, v193.u32[0], v88, v90, v189, v187 + v185);
    v91 = *(*(a1 + 32) + 8);
    v92 = vshld_u64(0x202020202020202uLL, *&vdup_n_s32((2 << v70) - 64));
    v93 = v91[117];
    v94 = v12 >> 2;
    v95 = v91[121];
    v96 = v91[116];
    v97 = a2 >> 2;
    v98 = v91[118];
    if (v71 >= 5)
    {
      v99 = v98 + v96 * (v12 >> 3);
      v100 = vmax_s8(*(v99 + v97), v92);
      *(v95 + v93 * (a2 >> 3) + v94) = vmax_s8(*(v95 + v93 * (a2 >> 3) + v94), v92);
      *(v99 + v97) = v100;
    }

    v182 = v70 == 2;
    v101 = v98 + v96 * ((v71 + v12) >> 3);
    v102 = v95 + v93 * ((v71 + a2) >> 3);
    v103 = vmax_s8(*(v102 + v94), v92);
    v104 = vmax_s8(*(v101 + v97), v92);
    *(v102 + v94) = v103;
    *(v101 + v97) = v104;
  }

  else
  {
LABEL_81:
    v192 = 0;
    v182 = 0;
    v183 = 0;
  }

  sub_2774316E8(a1, a2, v12, v69, v40);
  result = *(a1 + 32);
  v107 = *(result + 32);
  if (*(v107 + 11) == 1)
  {
    v108 = HIBYTE(**(a1 + 48)) & 1;
  }

  else
  {
    LOBYTE(v108) = 1;
  }

  v109 = *(v107 + 1615) + 2;
  if (v69)
  {
    *(a1 + 6426) = 0;
    v179 = v109;
    v180 = v108;
    if (v70 > v109)
    {
      v110 = 1;
    }

    else
    {
      v110 = v108;
    }

    if ((v110 & 1) == 0)
    {
      v111 = *(a1 + 40);
      v112 = *(v111 + 81);
      v114 = *v111;
      v113 = v111[1];
      v115 = byte_27750DDF3[(v113 & 0xC0) + (v112 >> 1)];
      LODWORD(v116) = v113 - v115;
      if (*v111 < ((v113 - v115) << 55))
      {
        v116 = v116;
      }

      else
      {
        v116 = byte_27750DDF3[(v113 & 0xC0) + (v112 >> 1)];
      }

      if (*v111 < ((v113 - v115) << 55))
      {
        v117 = 0;
      }

      else
      {
        v114 = *v111 - ((v113 - v115) << 55);
        v117 = 1;
      }

      if (*v111 < ((v113 - v115) << 55))
      {
        v118 = *(v111 + 81);
      }

      else
      {
        v118 = v112 + 1;
      }

      v119 = byte_27750DDF3[2 * v112 + 256 + v117];
      v120 = __clz(v116) - 55;
      v121 = v114 << v120;
      v111[1] = v116 << v120;
      *(v111 + 81) = v119;
      v122 = v111[2] + v120;
      if (v122 >= 0)
      {
        v123 = v111[3];
        v125 = *v123;
        v124 = v123 + 1;
        v121 += bswap32(v125) << v122;
        v122 -= 32;
        if (v124 >= v111[4])
        {
          v124 = v111[4];
        }

        v111[3] = v124;
      }

      v111[2] = v122;
      *v111 = v121;
      *(a1 + 6426) = v118 & 1;
    }

    *(a1 + 6427) = sub_277431B5C(a1, 0, *(a1 + 6424));
    v126 = a1 + 16 * (v70 > 2);
    v127 = *(v126 + 6368);
    v128 = *(v126 + 6376);
    v129 = (a1 + (v128 >> 1));
    if (v128)
    {
      v127 = *(*v129 + v127);
    }

    v130 = v127(v129, a1 + 64, v70, v183, 0);
    if ((**(a1 + 48) & 0x100) != 0 || *(a1 + 6426) == 1)
    {
      (*(v191 + 8 * v70 + 784))(v187 + v185, v189, a1 + 64, 0);
    }

    else
    {
      (*(v191 + 552 + 16 * v70 + 8 * v182 - 32))(v187 + v185, v189, a1 + 64, 0, v130);
    }

    result = *(a1 + 32);
    if (*(a1 + 4) != 1)
    {
      v131 = *(result + 8);
      v132 = vshld_u64(0x101010101010101uLL, *&vdup_n_s32((2 << v70) - 64));
      v133 = v131[117];
      v134 = v12 >> 2;
      v135 = v131[121];
      v136 = v131[116];
      v137 = a2 >> 2;
      v138 = v131[118];
      if (v71 >= 5)
      {
        v139 = v138 + v136 * (v12 >> 3);
        v140 = vmax_s8(*(v139 + v137), v132);
        *(v135 + v133 * (a2 >> 3) + v134) = vmax_s8(*(v135 + v133 * (a2 >> 3) + v134), v132);
        *(v139 + v137) = v140;
      }

      v141 = v138 + v136 * ((v71 + v12) >> 3);
      v142 = v135 + v133 * ((v71 + a2) >> 3);
      v106 = vmax_s8(*(v142 + v134), v132);
      v105 = vmax_s8(*(v141 + v137), v132);
      *(v142 + v134) = v106;
      *(v141 + v137) = v105;
      result = *(a1 + 32);
    }

    v109 = v179;
    LOBYTE(v108) = v180;
  }

  v143 = *(result + 8);
  v190 = *(v143 + 424);
  if (v70 < 3)
  {
    if (a4 != 3)
    {
      return result;
    }

    v193.i32[0] = a7[1].i32[0];
    LODWORD(a2) = a2 - v71;
    LODWORD(v12) = v12 - v71;
  }

  else
  {
    v70 = (v70 - 1);
    v71 >>= 1;
  }

  v144 = a2 & 0xFFFFFFFE;
  v145 = *(v143 + 408);
  v146 = (v190 * (v12 >> 1) + (a2 & 0xFFFFFFFE)) << *(v143 + 531);
  if (*(a1 + 4) == 1)
  {
    v147 = v12 & 0xFFFFFFFE;
    v148 = v108;
    v149 = v109;
    v150 = sub_27743123C(result, v144, v147, 2 * v71, 2 * v71, &v193, v105, v106);
    result = sub_277411768(v191 + 8, HIDWORD(v192), v70, v193.u32[0], v150, v190, v145 + v146);
    v109 = v149;
    LOBYTE(v108) = v148;
  }

  if (v40)
  {
    v186 = v146;
    v188 = v145;
    v151 = 0;
    v152 = a1 + 64 + 2 * (v71 * v71);
    v195 = 0;
    if (v70 > v109)
    {
      v153 = 1;
    }

    else
    {
      v153 = v108;
    }

    v154 = v70;
    v155 = a1 + 16 * (v70 > 2) + 6368;
    v184 = a1 + 64;
    v156 = a1 + 64;
    do
    {
      v157 = v151;
      if (v40)
      {
        *(a1 + 6426) = 0;
        if ((v153 & 1) == 0)
        {
          v158 = *(a1 + 40);
          v159 = *(v158 + 82);
          v161 = *v158;
          v160 = v158[1];
          v162 = byte_27750DDF3[(v160 & 0xC0) + (v159 >> 1)];
          LODWORD(v163) = v160 - v162;
          if (*v158 < ((v160 - v162) << 55))
          {
            v163 = v163;
          }

          else
          {
            v163 = byte_27750DDF3[(v160 & 0xC0) + (v159 >> 1)];
          }

          if (*v158 < ((v160 - v162) << 55))
          {
            v164 = 0;
          }

          else
          {
            v161 = *v158 - ((v160 - v162) << 55);
            v164 = 1;
          }

          if (*v158 < ((v160 - v162) << 55))
          {
            v165 = *(v158 + 82);
          }

          else
          {
            v165 = v159 + 1;
          }

          v166 = byte_27750DDF3[2 * v159 + 256 + v164];
          v167 = __clz(v163) - 55;
          v168 = v161 << v167;
          v158[1] = v163 << v167;
          *(v158 + 82) = v166;
          v169 = v158[2] + v167;
          if (v169 >= 0)
          {
            v170 = v158[3];
            v172 = *v170;
            v171 = v170 + 1;
            v168 += bswap32(v172) << v169;
            v169 -= 32;
            if (v171 >= v158[4])
            {
              v171 = v158[4];
            }

            v158[3] = v171;
          }

          v158[2] = v169;
          *v158 = v168;
          *(a1 + 6426) = v165 & 1;
        }

        *(a1 + 6427) = sub_277431B5C(a1, 1u, SHIDWORD(v192));
        v173 = *v155;
        v174 = *(v155 + 8);
        v175 = (a1 + (v174 >> 1));
        if (v174)
        {
          v173 = *(*v175 + v173);
        }

        ++v151;
        v176 = v173(v175, v156, v154, v192, v157 + 1);
        if (*(a1 + 6426))
        {
          v177 = -1;
        }

        else
        {
          v177 = v176;
        }

        *(&v195 + v157) = v177;
      }

      else
      {
        ++v151;
      }

      LODWORD(v40) = v40 >> 1;
      v156 = v152;
    }

    while (!v157);
    v178 = v154 - 2;
    if ((**(a1 + 48) & 0x100) != 0)
    {
      return (*(v191 + 8 * v178 + 832))(v188 + v186, v190, v184, v152, 0);
    }

    else
    {
      return (*(v191 + 8 * v178 + 680))(v188 + v186, v190, v184, v152, 0, &v195);
    }
  }

  return result;
}

int8x8_t sub_2774335B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int32 a5, uint64_t a6, int32x2_t *a7, double a8, int32x2_t a9)
{
  v14 = *(a1 + 32);
  v15 = *a7;
  v16 = HIDWORD(*a7);
  if (v16 == 1)
  {
    v18 = 0;
    *(a1 + 6424) = *(a1 + 2 * a4 + 6416);
  }

  else if (v16)
  {
    v18 = 0;
  }

  else
  {
    v17 = *(a1 + 8);
    v18 = v17 != 0;
    if (*(a1 + 4) == 3)
    {
      if (*(v14[2] + 272))
      {
        v19 = 1;
      }

      else
      {
        v19 = v17 == 0;
      }

      v18 = !v19;
    }
  }

  v20 = v14[2];
  if (v15.i32[0] > *(v20 + 2114))
  {
    if (v15.i32[0] > *(v20 + 2115) || v18)
    {
LABEL_14:
      v126 = vadd_s32(v15, 0x1FFFFFFFFLL);
      v21 = 1 << v126.i8[0];
      v127 = a5;
      v22 = (a5 & 0xF0) != 0;
      if ((a5 & 0xF0) != 0)
      {
        v23 = 15;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23 | a5 & 0x1FF0;
      v25 = (a5 & 0x1E00) != 0;
      if ((a5 & 0x1E00) != 0)
      {
        v26 = 122880;
      }

      else
      {
        v26 = 0;
      }

      sub_2774335B4(a1, a2, a3, 0, v24 | v26, a6, &v126);
      sub_2774335B4(a1, (v21 + a2), a3, 1, a5 & 0x1FE00 | (v25 << 8) | 0xF0u, a6, &v126);
      sub_2774335B4(a1, a2, (v21 + a3), 2, a5 | (v22 << 8) | 0x1FE00u, a6, &v126);
      sub_2774335B4(a1, (v21 + a2), (v21 + a3), 3, 8176, a6, &v126);
      return result;
    }

    if (v16 < *(a1 + 12))
    {
      v28 = *(a1 + 40);
      v29 = v28 - v15.i32[0];
      v30 = v29[76];
      v32 = *v28;
      v31 = v28[1];
      v33 = byte_27750DDF3[(v31 & 0xC0) + (v30 >> 1)];
      LODWORD(v34) = v31 - v33;
      if (*v28 < ((v31 - v33) << 55))
      {
        v34 = v34;
      }

      else
      {
        v34 = byte_27750DDF3[(v31 & 0xC0) + (v30 >> 1)];
      }

      if (*v28 < ((v31 - v33) << 55))
      {
        v35 = 0;
      }

      else
      {
        v32 = *v28 - ((v31 - v33) << 55);
        v35 = 1;
      }

      if (*v28 < ((v31 - v33) << 55))
      {
        v36 = v29[76];
      }

      else
      {
        v36 = v30 + 1;
      }

      v37 = byte_27750DDF3[2 * v30 + 256 + v35];
      v38 = __clz(v34) - 55;
      v39 = v32 << v38;
      v28[1] = v34 << v38;
      v29[76] = v37;
      v40 = v28[2] + v38;
      if (v40 >= 0)
      {
        v41 = v28[3];
        v43 = *v41;
        v42 = v41 + 1;
        v39 += bswap32(v43) << v40;
        v40 -= 32;
        if (v42 >= v28[4])
        {
          v42 = v28[4];
        }

        v28[3] = v42;
      }

      v28[2] = v40;
      *v28 = v39;
      if (v36)
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 32);
    }
  }

  v126.i32[0] = a5;
  v44 = v14[1];
  v45 = *(v44 + 416);
  v124 = (v45 * a3 + a2) << *(v44 + 531);
  v125 = *(v44 + 400);
  v47 = a7->u32[0];
  v46 = a7->u32[1];
  v48 = 1;
  v49 = 1 << v47;
  v123 = v14[285];
  if (*(a1 + 4) != 1 && !(v46 | a6))
  {
    goto LABEL_58;
  }

  v50 = *(a1 + 40);
  if (v46)
  {
    v51 = *(a1 + 40);
  }

  else
  {
    v51 = v50 + 1;
  }

  v52 = v51[74];
  v54 = *v50;
  v53 = v50[1];
  v55 = byte_27750DDF3[(v53 & 0xC0) + (v52 >> 1)];
  LODWORD(v56) = v53 - v55;
  if (*v50 < ((v53 - v55) << 55))
  {
    v56 = v56;
  }

  else
  {
    v56 = byte_27750DDF3[(v53 & 0xC0) + (v52 >> 1)];
  }

  if (*v50 < ((v53 - v55) << 55))
  {
    v57 = 0;
  }

  else
  {
    v54 = *v50 - ((v53 - v55) << 55);
    v57 = 1;
  }

  if (*v50 < ((v53 - v55) << 55))
  {
    v58 = v51[74];
  }

  else
  {
    v58 = v52 + 1;
  }

  v59 = byte_27750DDF3[2 * v52 + 256 + v57];
  v60 = __clz(v56) - 55;
  v61 = v54 << v60;
  v50[1] = v56 << v60;
  v51[74] = v59;
  v62 = v50[2] + v60;
  if (v62 >= 0)
  {
    v63 = v50[3];
    v65 = *v63;
    v64 = v63 + 1;
    v61 += bswap32(v65) << v62;
    v62 -= 32;
    if (v64 >= v50[4])
    {
      v64 = v50[4];
    }

    v50[3] = v64;
  }

  v50[2] = v62;
  *v50 = v61;
  v48 = v58 & 1;
  if (*(a1 + 4) == 1)
  {
    v66 = *(a1 + 32);
    v67 = sub_27743123C(v66, a2, a3, 1 << v47, 1 << v47, &v126, v15, a9);
    v68 = *(a1 + 6424);
    if (v47 > 3)
    {
      v122 = 0;
    }

    else
    {
      v122 = byte_2775353B8[*(a1 + 6424)];
    }

    if ((**(a1 + 48) & 0x100) != 0)
    {
      if ((v68 & 0xEF) == 0xA)
      {
        v70 = *(*(v66 + 16) + 403);
      }

      else
      {
        v70 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    sub_2774115D0(v123 + 8, v68, v47, v126.u32[0], v67, v70, v45, v125 + v124);
    v71 = *(*(a1 + 32) + 8);
    v72 = vshld_u64(0x202020202020202uLL, *&vdup_n_s32((2 << v47) - 64));
    v73 = v71[117];
    v74 = a3 >> 2;
    v75 = v71[121];
    v76 = v71[116];
    v77 = a2 >> 2;
    v78 = v71[118];
    if (v49 >= 5)
    {
      v79 = v78 + v76 * (a3 >> 3);
      v80 = vmax_s8(*(v79 + v77), v72);
      *(v75 + v73 * (a2 >> 3) + v74) = vmax_s8(*(v75 + v73 * (a2 >> 3) + v74), v72);
      *(v79 + v77) = v80;
    }

    v69 = v47 == 2;
    v81 = v78 + v76 * ((v49 + a3) >> 3);
    v82 = v75 + v73 * ((v49 + a2) >> 3);
    v83 = vmax_s8(*(v82 + v74), v72);
    v84 = vmax_s8(*(v81 + v77), v72);
    *(v82 + v74) = v83;
    *(v81 + v77) = v84;
  }

  else
  {
LABEL_58:
    v69 = 0;
    v122 = 0;
  }

  sub_2774316E8(a1, a2, a3, v48, a6);
  v85 = *(*(a1 + 32) + 32);
  if (*(v85 + 11) == 1)
  {
    v86 = HIBYTE(**(a1 + 48)) & 1;
    if (!v48)
    {
      return result;
    }
  }

  else
  {
    LOBYTE(v86) = 1;
    if (!v48)
    {
      return result;
    }
  }

  v87 = *(v85 + 1615) + 2;
  *(a1 + 6426) = 0;
  if (v47 > v87)
  {
    v88 = 1;
  }

  else
  {
    v88 = v86;
  }

  if ((v88 & 1) == 0)
  {
    v89 = *(a1 + 40);
    v90 = *(v89 + 81);
    v92 = *v89;
    v91 = v89[1];
    v93 = byte_27750DDF3[(v91 & 0xC0) + (v90 >> 1)];
    LODWORD(v94) = v91 - v93;
    if (*v89 < ((v91 - v93) << 55))
    {
      v94 = v94;
    }

    else
    {
      v94 = byte_27750DDF3[(v91 & 0xC0) + (v90 >> 1)];
    }

    if (*v89 < ((v91 - v93) << 55))
    {
      v95 = 0;
    }

    else
    {
      v92 = *v89 - ((v91 - v93) << 55);
      v95 = 1;
    }

    if (*v89 < ((v91 - v93) << 55))
    {
      v96 = *(v89 + 81);
    }

    else
    {
      v96 = v90 + 1;
    }

    v97 = byte_27750DDF3[2 * v90 + 256 + v95];
    v98 = __clz(v94) - 55;
    v99 = v92 << v98;
    v89[1] = v94 << v98;
    *(v89 + 81) = v97;
    v100 = v89[2] + v98;
    if (v100 >= 0)
    {
      v101 = v89[3];
      v103 = *v101;
      v102 = v101 + 1;
      v99 += bswap32(v103) << v100;
      v100 -= 32;
      if (v102 >= v89[4])
      {
        v102 = v89[4];
      }

      v89[3] = v102;
    }

    v89[2] = v100;
    *v89 = v99;
    *(a1 + 6426) = v96 & 1;
  }

  *(a1 + 6427) = sub_277431B5C(a1, 0, *(a1 + 6424));
  v104 = a1 + 16 * (v47 > 2);
  v105 = *(v104 + 6368);
  v106 = *(v104 + 6376);
  v107 = (a1 + (v106 >> 1));
  if (v106)
  {
    v105 = *(*v107 + v105);
  }

  v108 = v105(v107, a1 + 64, v47, v122, 0);
  if ((**(a1 + 48) & 0x100) != 0 || *(a1 + 6426) == 1)
  {
    (*(v123 + 8 * v47 + 784))(v125 + v124, v45, a1 + 64, 0);
  }

  else
  {
    (*(v123 + 552 + 16 * v47 + 8 * v69 - 32))(v125 + v124, v45, a1 + 64, 0, v108);
  }

  if (*(a1 + 4) != 1)
  {
    v109 = *(*(a1 + 32) + 8);
    v110 = vshld_u64(0x101010101010101uLL, *&vdup_n_s32((2 << v47) - 64));
    v111 = v109[117];
    v112 = a3 >> 2;
    v113 = v109[121];
    v114 = v109[116];
    v115 = a2 >> 2;
    v116 = v109[118];
    if (v49 >= 5)
    {
      v117 = v116 + v114 * (a3 >> 3);
      v118 = vmax_s8(*(v117 + v115), v110);
      *(v113 + v111 * (a2 >> 3) + v112) = vmax_s8(*(v113 + v111 * (a2 >> 3) + v112), v110);
      *(v117 + v115) = v118;
    }

    v119 = v116 + v114 * ((v49 + a3) >> 3);
    v120 = v113 + v111 * ((v49 + a2) >> 3);
    v121 = vmax_s8(*(v120 + v112), v110);
    result = vmax_s8(*(v119 + v115), v110);
    *(v120 + v112) = v121;
    *(v119 + v115) = result;
  }

  return result;
}

void sub_277433CE0(void *a1)
{
  *a1 = &unk_2886628F8;
  v2 = a1[294];
  if (v2)
  {
    a1[295] = v2;
    operator delete(v2);
  }

  sub_2773F77B0(a1);

  JUMPOUT(0x277CAD370);
}

void *sub_277433D54(void *a1)
{
  *a1 = &unk_2886628F8;
  v2 = a1[294];
  if (v2)
  {
    a1[295] = v2;
    operator delete(v2);
  }

  return sub_2773F77B0(a1);
}

uint64_t sub_277433DE4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + a2 + 516);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2;
  do
  {
    v4 |= sub_2773FB848(a1 + 1608, 1) << v5++;
  }

  while (v2 != v5);
  if (*(*(a1 + 16) + 201))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v7 |= sub_2773FB848(a1 + 1608, 1) << v8++;
    }

    while (v2 != v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
  v10 = a1 + 672 + (v6 << 8);
  v40 = v10;
  while (1)
  {
    v11 = 1 << *(a1 + 556);
    v12 = (v10 + 16 * v9);
    v41 = v9;
    if (v4)
    {
      v13 = sub_2773FB90C(a1 + 1608);
      v14 = (-((v13 + 1) & 1) ^ ((v13 + 1) >> 1)) + ((v13 + 1) & 1);
      v15 = sub_2773FB90C(a1 + 1608);
      if (v14 != v14)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "delta_luma_weight_l%d[%d] %d not in [-128, 127]!\n", a2, v9, v14);
          syslog(27, "delta_luma_weight_l%d[%d] %d not in [-128, 127]!\n");
        }

        return 4294954387;
      }

      v16 = (-((v15 + 1) & 1) ^ ((v15 + 1) >> 1)) + ((v15 + 1) & 1);
      v17 = *(a1 + 16);
      v18 = *(v17 + 2102);
      if (v18 <= v16 || v16 < -v18)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "luma_offset_l%d[%d] %d not in range! (%d)\n", a2, v9, v16, v18);
          syslog(27, "luma_offset_l%d[%d] %d not in range! (%d)\n");
        }

        return 4294954387;
      }

      LOWORD(v11) = v14 + v11;
      v20 = v16 << *(v17 + 2100);
      v12[3] = v20;
      v12[2] = v20;
    }

    else
    {
      *(v12 + 1) = 0;
    }

    v12[1] = v11;
    *v12 = v11;
    v21 = 1 << *(a1 + 662);
    v12[5] = v21;
    v12[4] = v21;
    v22 = v12 + 6;
    if (v7)
    {
      break;
    }

    *v22 = 0;
LABEL_33:
    v10 = v40;
    v9 = v41 + 1;
    v4 >>= 1;
    v7 >>= 1;
    if (v41 + 1 == v2)
    {
      return 0;
    }
  }

  v23 = 0;
  v24 = v12 + 4;
  v25 = 1;
  while (1)
  {
    v26 = v25;
    v27 = sub_2773FB90C(a1 + 1608);
    v28 = (-((v27 + 1) & 1) ^ ((v27 + 1) >> 1)) + ((v27 + 1) & 1);
    v29 = sub_2773FB90C(a1 + 1608);
    if (v28 != v28)
    {
      break;
    }

    v30 = (-((v29 + 1) & 1) ^ ((v29 + 1) >> 1)) + ((v29 + 1) & 1);
    v31 = *(a1 + 16);
    if (v30 >= 4 * *(v31 + 2104) || -4 * *(v31 + 2104) > v30)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "delta_chroma_offset_l%d %d not in range!\n", a2, v30);
        syslog(27, "delta_chroma_offset_l%d %d not in range!\n");
      }

      return 4294954387;
    }

    v25 = 0;
    v33 = v24[v23] + v28;
    v24[v23] = v33;
    v34 = *(v31 + 2104);
    v35 = v30 + v34 - ((v34 * v33) >> *(a1 + 662));
    v36 = v34 - 1;
    if (v35 < v34 - 1)
    {
      v36 = v35;
    }

    if (v35 <= -v34)
    {
      v37 = -v34;
    }

    else
    {
      v37 = v36;
    }

    *(v22 + v23) = v37 << *(v31 + 2101);
    v23 = 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "delta_chroma_weight_l%d %d not in [-128, 127]!\n", a2, v28);
    syslog(27, "delta_chroma_weight_l%d %d not in [-128, 127]!\n");
  }

  return 4294954387;
}