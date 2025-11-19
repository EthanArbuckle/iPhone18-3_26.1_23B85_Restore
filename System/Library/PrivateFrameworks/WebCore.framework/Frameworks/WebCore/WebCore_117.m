__int16 *vp8_encode_intra16x16mby(uint64_t a1)
{
  vp8_build_intra_predictors_mby_s(a1 + 4224, *(a1 + 7992) - *(a1 + 7952), (*(a1 + 7992) - 1), *(a1 + 7952), *(a1 + 7992), *(a1 + 7952));
  vpx_subtract_block_neon(16, 16, a1, 16, **(a1 + 1936), *(a1 + 1948), *(a1 + 7992), *(a1 + 7952));
  vp8_transform_intra_mby(a1);
  result = vp8_quantize_mby(a1);
  if (*(a1 + 8800))
  {

    return vp8_optimize_mby(a1);
  }

  return result;
}

int8x8_t vp8_encode_intra4x4block(uint64_t a1, int a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 0x8000;
  v3 = a1 + 56 * a2;
  v4 = a1 + 88 * a2;
  v5 = *(a1 + 7952);
  v6 = (*(a1 + 7992) + *(v3 + 6400));
  v7 = *(v6 - v5 - 1);
  v8 = *(v3 + 6416);
  v9 = *(v3 + 6384);
  v18[0] = *(v6 - 1);
  v18[1] = *(v6 + v5 - 1);
  v18[2] = *(v6 + 2 * v5 - 1);
  v18[3] = *(v6 + 3 * v5 - 1);
  v19[0] = *(v6 - v5);
  v18[11] = v7;
  (*(&pred_0 + v8))(v9, 16, v19, v18);
  vpx_subtract_block_neon(4, 4, *(v4 + 1864), 16, (**(v4 + 1936) + *(v4 + 1944)), *(v4 + 1948), *(v3 + 6384), 16);
  (*(v2 + 1488))(*(v4 + 1864), *(v4 + 1872), 32);
  (*(v2 + 1512))(v4 + 1864, v3 + 6368);
  v10 = *(v3 + 6376);
  if (**(v3 + 6408) < 2)
  {
    v13 = *(v3 + 6384);
    v14 = vdupq_n_s16((v10->i16[0] + 4) >> 3);
    v15.i32[0] = *v13;
    v15.i32[1] = v13[4];
    v16 = vqmovun_s16(vaddw_u8(v14, v15));
    *v6 = v16.i32[0];
    *(v6 + v5) = v16.i32[1];
    v17 = (v6 + v5 + v5);
    v16.i32[0] = v13[8];
    v16.i32[1] = v13[12];
    result = vqmovun_s16(vaddw_u8(v14, v16));
    *v17 = result.i32[0];
    *(v17 + v5) = result.i32[1];
  }

  else
  {
    v11 = *(v3 + 6384);

    return vp8_short_idct4x4llm_neon(v10, v11, 16, v6, v5);
  }

  return result;
}

int8x8_t vp8_encode_intra4x4mby(uint64_t a1)
{
  v2 = *(a1 + 7952);
  v3 = (*(a1 + 7992) - v2);
  v4 = v3[4];
  v3 += 4;
  v3[v2] = v4;
  v3[2 * v2] = v4;
  v3[3 * v2] = *v3;
  vp8_encode_intra4x4block(a1, 0);
  vp8_encode_intra4x4block(a1, 1);
  vp8_encode_intra4x4block(a1, 2);
  vp8_encode_intra4x4block(a1, 3);
  vp8_encode_intra4x4block(a1, 4);
  vp8_encode_intra4x4block(a1, 5);
  vp8_encode_intra4x4block(a1, 6);
  vp8_encode_intra4x4block(a1, 7);
  vp8_encode_intra4x4block(a1, 8);
  vp8_encode_intra4x4block(a1, 9);
  vp8_encode_intra4x4block(a1, 10);
  vp8_encode_intra4x4block(a1, 11);
  vp8_encode_intra4x4block(a1, 12);
  vp8_encode_intra4x4block(a1, 13);
  vp8_encode_intra4x4block(a1, 14);

  return vp8_encode_intra4x4block(a1, 15);
}

__int16 *vp8_encode_intra16x16mbuv(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1 + 0x8000;
  v3 = *(a1 + 8000);
  v4 = *(a1 + 7972);
  v5 = *(a1 + 8008);
  v6 = *(*(a1 + 8096) + 1);
  v14[8] = *(v3 - 1);
  v14[0] = *(v5 - 1);
  v14[9] = *(v3 - 1 + v4);
  v14[1] = *(v5 - 1 + v4);
  v14[10] = *(v3 - 1 + 2 * v4);
  v14[2] = *(v5 - 1 + 2 * v4);
  v14[11] = *(v3 - 1 + 3 * v4);
  v14[3] = *(v5 - 1 + 3 * v4);
  v14[12] = *(v3 - 1 + 4 * v4);
  v14[4] = *(v5 - 1 + 4 * v4);
  v14[13] = *(v3 - 1 + 5 * v4);
  v14[5] = *(v5 - 1 + 5 * v4);
  v14[14] = *(v3 - 1 + 6 * v4);
  v14[6] = *(v5 - 1 + 6 * v4);
  v14[15] = *(v3 - 1 + 7 * v4);
  v14[7] = *(v5 - 1 + 7 * v4);
  if (v6)
  {
    v7 = (&pred + 16 * v6);
  }

  else
  {
    v7 = &dc_pred[4 * *(a1 + 8116) + 2 * *(a1 + 8112)];
  }

  v8 = v7[1];
  v8();
  (v8)(v5, v4, v5 - v4, v14);
  v9 = *(a1 + 4136);
  v10 = *(a1 + 4100);
  v11 = *(a1 + 8008);
  v12 = *(a1 + 7972);
  vpx_subtract_block_neon(8, 8, (a1 + 512), 8, *(a1 + 4128), v10, *(a1 + 8000), v12);
  vpx_subtract_block_neon(8, 8, (a1 + 640), 8, v9, v10, v11, v12);
  (*(v2 + 1496))(*(a1 + 3272), *(a1 + 3280), 16);
  (*(v2 + 1496))(*(a1 + 3448), *(a1 + 3456), 16);
  (*(v2 + 1496))(*(a1 + 3624), *(a1 + 3632), 16);
  (*(v2 + 1496))(*(a1 + 3800), *(a1 + 3808), 16);
  (*(v2 + 1512))(a1 + 3272, a1 + 7264);
  (*(v2 + 1512))(a1 + 3360, a1 + 7320);
  (*(v2 + 1512))(a1 + 3448, a1 + 7376);
  (*(v2 + 1512))(a1 + 3536, a1 + 7432);
  (*(v2 + 1512))(a1 + 3624, a1 + 7488);
  (*(v2 + 1512))(a1 + 3712, a1 + 7544);
  (*(v2 + 1512))(a1 + 3800, a1 + 7600);
  result = (*(v2 + 1512))(a1 + 3888, a1 + 7656);
  if (*(a1 + 8800))
  {

    return vp8_optimize_mbuv(a1);
  }

  return result;
}

uint64_t vp8_transform_intra_mby(uint64_t a1)
{
  v2 = a1 + 0x8000;
  (*(a1 + 34264))(*(a1 + 1864), *(a1 + 1872), 32);
  (*(v2 + 1496))(*(a1 + 2040), *(a1 + 2048), 32);
  (*(v2 + 1496))(*(a1 + 2216), *(a1 + 2224), 32);
  (*(v2 + 1496))(*(a1 + 2392), *(a1 + 2400), 32);
  (*(v2 + 1496))(*(a1 + 2568), *(a1 + 2576), 32);
  (*(v2 + 1496))(*(a1 + 2744), *(a1 + 2752), 32);
  (*(v2 + 1496))(*(a1 + 2920), *(a1 + 2928), 32);
  (*(v2 + 1496))(*(a1 + 3096), *(a1 + 3104), 32);
  *(a1 + 768) = *(a1 + 800);
  *(a1 + 770) = *(a1 + 832);
  *(a1 + 772) = *(a1 + 864);
  *(a1 + 774) = *(a1 + 896);
  *(a1 + 776) = *(a1 + 928);
  *(a1 + 778) = *(a1 + 960);
  *(a1 + 780) = *(a1 + 992);
  *(a1 + 782) = *(a1 + 1024);
  *(a1 + 784) = *(a1 + 1056);
  *(a1 + 786) = *(a1 + 1088);
  *(a1 + 788) = *(a1 + 1120);
  *(a1 + 790) = *(a1 + 1152);
  *(a1 + 792) = *(a1 + 1184);
  *(a1 + 794) = *(a1 + 1216);
  *(a1 + 796) = *(a1 + 1248);
  *(a1 + 798) = *(a1 + 1280);
  v3 = *(v2 + 1504);
  v4 = *(a1 + 3976);
  v5 = *(a1 + 3984);

  return v3(v4, v5, 8);
}

__int16 *vp8_optimize_mby(__int16 *result)
{
  v1 = *(result + 1022);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 1023);
    if (v3)
    {
      v19 = *v1;
      v20 = *(v1 + 8);
      v17 = *v3;
      v18 = *(v3 + 8);
      v4 = **(result + 1012);
      v5 = v4 == 9 || v4 == 4;
      v6 = v5 ? 3 : 0;
      optimize_b(result, 0, v6, &v19, &v17);
      optimize_b(v2, 1, v6, &v19 + 1, &v17);
      optimize_b(v2, 2, v6, &v19 + 2, &v17);
      optimize_b(v2, 3, v6, &v19 + 3, &v17);
      optimize_b(v2, 4, v6, &v19, &v17 + 1);
      optimize_b(v2, 5, v6, &v19 + 1, &v17 + 1);
      optimize_b(v2, 6, v6, &v19 + 2, &v17 + 1);
      optimize_b(v2, 7, v6, &v19 + 3, &v17 + 1);
      optimize_b(v2, 8, v6, &v19, &v17 + 2);
      optimize_b(v2, 9, v6, &v19 + 1, &v17 + 2);
      optimize_b(v2, 10, v6, &v19 + 2, &v17 + 2);
      optimize_b(v2, 11, v6, &v19 + 3, &v17 + 2);
      optimize_b(v2, 12, v6, &v19, &v17 + 3);
      optimize_b(v2, 13, v6, &v19 + 1, &v17 + 3);
      optimize_b(v2, 14, v6, &v19 + 2, &v17 + 3);
      result = optimize_b(v2, 15, v6, &v19 + 3, &v17 + 3);
      if (v4 != 4 && v4 != 9)
      {
        result = optimize_b(v2, 24, 1u, &v20, &v18);
        v7 = *(v2 + 967);
        if (*v7 < 35 || v7[1] <= 34)
        {
          v8 = *(v2 + 969);
          v9 = *v8;
          if (v9 < 1)
          {
LABEL_21:
            *v8 = 0;
          }

          else
          {
            v10 = 0;
            v11 = *(v2 + 965);
            v12 = vp8_default_zig_zag1d;
            while (1)
            {
              v13 = *v12++;
              v14 = *(v11 + 2 * v13);
              if (v14 < 0)
              {
                v14 = -v14;
              }

              v10 += v14;
              if (v10 >= 0x23)
              {
                break;
              }

              if (!--v9)
              {
                v15 = *(v2 + 964);
                do
                {
                  v16 = vp8_default_zig_zag1d[v9];
                  *(v15 + 2 * v16) = 0;
                  *(v11 + 2 * v16) = 0;
                  ++v9;
                }

                while (v9 < *v8);
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__int16 *optimize_b(__int16 *result, int a2, unsigned int a3, BOOL *a4, BOOL *a5)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = plane_rd_mult[a3];
  v6 = &result[28 * a2];
  v7 = v6 + 6368;
  v8 = *(v6 + 799);
  v88 = *&result[44 * a2 + 936];
  v9 = *(v6 + 796);
  v10 = *(v6 + 797);
  v11 = a3 == 0;
  v12 = **(v6 + 801);
  v13 = *(result + 2162) * v5;
  if (*(*(result + 1012) + 2))
  {
    v14 = v13;
  }

  else
  {
    v14 = (9 * v13) >> 4;
  }

  v92 = result;
  v89 = *(result + 2161);
  v15 = &v93[6 * v12 + 2];
  *v15 = 0;
  v15[2] = 2832;
  v15[5] = 2832;
  *(v15 + 3) = 0;
  if (v12 <= v11)
  {
    if (a3)
    {
      v67 = -1;
    }

    else
    {
      v67 = 0;
    }

    goto LABEL_80;
  }

  v86 = v10;
  v87 = v8;
  v81 = v6 + 6368;
  v82 = a5;
  v83 = a4;
  v16 = 0;
  v17 = 0;
  v90 = a3 == 0;
  v91 = a3;
  v18 = &v93[6 * v12 - 1];
  result = dct_value_tokens;
  v19 = v12;
  v80 = v12;
  v20 = v12;
  v84 = v14;
  v85 = v9;
  do
  {
    v30 = v19--;
    v31 = vp8_default_zig_zag1d[v30 - 1];
    v32 = *(v9 + 2 * v31);
    v33 = &v93[6 * v20 + 2];
    if (*(v9 + 2 * v31))
    {
      v34 = *v33;
      v35 = v33[3];
      v36 = dct_value_tokens[2 * *(v9 + 2 * v31) + 4096];
      v37 = v35;
      if (v20 <= 15)
      {
        v38 = *(v92 + 1093) + 1152 * v91 + 144 * vp8_coef_bands[v30] + 48 * vp8_prev_token_class[v36];
        v34 += *(v38 + 4 * *(v33 + 9));
        v37 = *(v38 + 4 * *(v33 + 21)) + v35;
      }

      v39 = v33[1];
      v40 = v33[4];
      v41 = v39 * v89;
      v42 = v40 * v89;
      v43 = (v34 * v14 + 0x80);
      v44 = (v37 * v14 + 0x80);
      if (v39 * v89 + ((v34 * v14 + 128) >> 8) != v40 * v89 + ((v37 * v14 + 128) >> 8))
      {
        v43 = v39 * v89 + ((v34 * v14 + 128) >> 8);
        v44 = v40 * v89 + ((v37 * v14 + 128) >> 8);
      }

      v45 = *(v88 + 2 * v31);
      v46 = *(v86 + 2 * v31) - v45;
      v47 = v44 < v43;
      v48 = v44 < v43;
      if (v47)
      {
        v34 = v37;
      }

      v49 = v34 + dct_value_cost[v32 + 2048];
      if (v47)
      {
        v50 = v33[4];
      }

      else
      {
        v50 = v33[1];
      }

      *(v18 - 3) = v49;
      *(v18 - 2) = v50 + v46 * v46;
      *(v18 - 4) = v20;
      *(v18 - 3) = v36;
      *(v18 - 1) = v32;
      if (v32 >= 0)
      {
        v51 = v32;
      }

      else
      {
        v51 = -v32;
      }

      v52 = *(v87 + 2 * v31);
      v53 = v51 * v52;
      if (v45 >= 0)
      {
        v54 = v45;
      }

      else
      {
        v54 = -v45;
      }

      v24 = v53 <= v54;
      v55 = v52 + v54;
      v57 = v24 || v53 >= v55;
      v58 = v32 >> 15;
      v59 = v58 | 1;
      if (v57)
      {
        v59 = 0;
      }

      v60 = v32 - v59;
      if (v32 == v59)
      {
        if (*(v33 + 9) == 11)
        {
          v61 = 11;
        }

        else
        {
          v61 = 0;
        }

        if (*(v33 + 21) == 11)
        {
          v62 = 11;
        }

        else
        {
          v62 = 0;
        }

        v26 = *v33;
        if (v20 <= 15)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v61 = dct_value_tokens[2 * v60 + 4096];
        v62 = v61;
        v26 = *v33;
        if (v20 <= 15)
        {
LABEL_57:
          v66 = vp8_coef_bands[v30];
          if (v61 != 11)
          {
            v14 = v84;
            v26 += *(*(v92 + 1093) + 1152 * v91 + 144 * v66 + 48 * vp8_prev_token_class[v61] + 4 * *(v33 + 9));
          }

          if (v62 != 11)
          {
            v14 = v84;
            v35 += *(*(v92 + 1093) + 1152 * v91 + 144 * v66 + 48 * vp8_prev_token_class[v62] + 4 * *(v33 + 21));
          }
        }
      }

      v16 |= v48 << v19;
      v21 = (v26 * v14 + 0x80);
      v22 = (v35 * v14 + 0x80);
      if (v41 + ((v26 * v14 + 128) >> 8) != v42 + ((v35 * v14 + 128) >> 8))
      {
        v21 = v41 + ((v26 * v14 + 128) >> 8);
        v22 = v42 + ((v35 * v14 + 128) >> 8);
      }

      v23 = (v46 - ((v52 + v58) ^ v58)) * (v46 - ((v52 + v58) ^ v58));
      if (v57)
      {
        v23 = v46 * v46;
      }

      v24 = v22 < v21;
      v25 = v22 < v21;
      if (v24)
      {
        v26 = v35;
      }

      v27 = v26 + dct_value_cost[v60 + 2048];
      if (v24)
      {
        v28 = v40;
      }

      else
      {
        v28 = v39;
      }

      *v18 = v27;
      v18[1] = v28 + v23;
      *(v18 + 8) = v20;
      if (v24)
      {
        v29 = v62;
      }

      else
      {
        v29 = v61;
      }

      *(v18 + 9) = v29;
      *(v18 + 5) = v60;
      v17 |= v25 << v19;
      v20 = v19;
      v9 = v85;
      goto LABEL_19;
    }

    v63 = vp8_coef_bands[v30];
    v64 = *(v33 + 9);
    if (v64 == 11)
    {
      v65 = *(v33 + 21);
      if (v65 == 11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v33 += *(*(v92 + 1093) + 1152 * v91 + 144 * vp8_coef_bands[v30] + 4 * v64);
      *(v33 + 9) = 0;
      v65 = *(v33 + 21);
      if (v65 == 11)
      {
        goto LABEL_19;
      }
    }

    v33[3] += *(*(v92 + 1093) + 1152 * v91 + 144 * v63 + 4 * v65);
    *(v33 + 21) = 0;
LABEL_19:
    v18 -= 6;
  }

  while (v19 > v90);
  v93[0] = v16;
  v93[1] = v17;
  if (a3)
  {
    v67 = -1;
  }

  else
  {
    v67 = 0;
  }

  if (v20 >= v80)
  {
    a5 = v82;
    a4 = v83;
    v7 = v81;
  }

  else
  {
    a5 = v82;
    a4 = v83;
    v68 = &v93[6 * v20 + 2];
    v69 = *(v92 + 1093) + 1152 * v91 + 144 * vp8_coef_bands[v19] + 48 * (*v83 + *v82);
    v70 = (*v68 + *(v69 + 4 * *(v68 + 9))) * v14 + 128;
    v71 = v68[1] * v89 + (v70 >> 8);
    v73 = (v68[3] + *(v69 + 4 * *(v68 + 21))) * v14 + 128;
    v72 = v68[4] * v89 + (v73 >> 8);
    v73 = v73;
    if (v71 != v72)
    {
      v73 = v72;
    }

    v70 = v70;
    if (v71 != v72)
    {
      v70 = v71;
    }

    v74 = v73 < v70;
    v7 = v81;
    do
    {
      v75 = &v93[6 * v20 + 2 + 3 * v74];
      v76 = *(v75 + 5);
      result = vp8_default_zig_zag1d[v20];
      *(v9 + 2 * result) = v76;
      *(v86 + 2 * result) = *(v87 + 2 * result) * v76;
      v77 = v93[v74];
      if (v76)
      {
        v67 = v20;
      }

      v74 = (v77 >> v20) & 1;
      v20 = *(v75 + 8);
    }

    while (v20 < v80);
  }

LABEL_80:
  v78 = v67 + 1;
  *a5 = v78 != v11;
  *a4 = v78 != v11;
  **(v7 + 5) = v78;
  return result;
}

__int16 *vp8_optimize_mbuv(__int16 *result)
{
  v1 = *(result + 1022);
  if (v1)
  {
    v2 = *(result + 1023);
    if (v2)
    {
      v6 = *v1;
      v7 = *(v1 + 8);
      v4 = *v2;
      v5 = *(v2 + 8);
      v3 = result;
      optimize_b(result, 16, 2u, &v6 + 4, &v4 + 4);
      optimize_b(v3, 17, 2u, &v6 + 5, &v4 + 4);
      optimize_b(v3, 18, 2u, &v6 + 4, &v4 + 5);
      optimize_b(v3, 19, 2u, &v6 + 5, &v4 + 5);
      optimize_b(v3, 20, 2u, &v6 + 6, &v4 + 6);
      optimize_b(v3, 21, 2u, &v6 + 7, &v4 + 6);
      optimize_b(v3, 22, 2u, &v6 + 6, &v4 + 7);
      return optimize_b(v3, 23, 2u, &v6 + 7, &v4 + 7);
    }
  }

  return result;
}

__int16 *vp8_encode_inter16x16(uint64_t a1)
{
  v2 = a1 + 0x8000;
  vp8_build_inter_predictors_mb(a1 + 4224);
  vpx_subtract_block_neon(16, 16, a1, 16, **(a1 + 1936), *(a1 + 1948), *(a1 + 7992), *(a1 + 7952));
  v3 = *(a1 + 4136);
  v4 = *(a1 + 4100);
  v5 = *(a1 + 8008);
  v6 = *(a1 + 7972);
  vpx_subtract_block_neon(8, 8, (a1 + 512), 8, *(a1 + 4128), v4, *(a1 + 8000), v6);
  vpx_subtract_block_neon(8, 8, (a1 + 640), 8, v3, v4, v5, v6);
  (*(v2 + 1496))(*(a1 + 1864), *(a1 + 1872), 32);
  (*(v2 + 1496))(*(a1 + 2040), *(a1 + 2048), 32);
  (*(v2 + 1496))(*(a1 + 2216), *(a1 + 2224), 32);
  (*(v2 + 1496))(*(a1 + 2392), *(a1 + 2400), 32);
  (*(v2 + 1496))(*(a1 + 2568), *(a1 + 2576), 32);
  (*(v2 + 1496))(*(a1 + 2744), *(a1 + 2752), 32);
  (*(v2 + 1496))(*(a1 + 2920), *(a1 + 2928), 32);
  (*(v2 + 1496))(*(a1 + 3096), *(a1 + 3104), 32);
  if (**(a1 + 8096) != 9)
  {
    *(a1 + 768) = *(a1 + 800);
    *(a1 + 770) = *(a1 + 832);
    *(a1 + 772) = *(a1 + 864);
    *(a1 + 774) = *(a1 + 896);
    *(a1 + 776) = *(a1 + 928);
    *(a1 + 778) = *(a1 + 960);
    *(a1 + 780) = *(a1 + 992);
    *(a1 + 782) = *(a1 + 1024);
    *(a1 + 784) = *(a1 + 1056);
    *(a1 + 786) = *(a1 + 1088);
    *(a1 + 788) = *(a1 + 1120);
    *(a1 + 790) = *(a1 + 1152);
    *(a1 + 792) = *(a1 + 1184);
    *(a1 + 794) = *(a1 + 1216);
    *(a1 + 796) = *(a1 + 1248);
    *(a1 + 798) = *(a1 + 1280);
  }

  v7 = a1 + 1864;
  (*(v2 + 1496))(*(a1 + 3272), *(a1 + 3280), 16);
  (*(v2 + 1496))(*(a1 + 3448), *(a1 + 3456), 16);
  (*(v2 + 1496))(*(a1 + 3624), *(a1 + 3632), 16);
  (*(v2 + 1496))(*(a1 + 3800), *(a1 + 3808), 16);
  v8 = **(a1 + 8096);
  if (v8 != 9)
  {
    (*(v2 + 1504))(*(a1 + 3976), *(a1 + 3984), 8);
    v8 = **(a1 + 8096);
  }

  v9 = v8 == 9 || v8 == 4;
  v10 = a1 + 6368;
  if (v9)
  {
    v11 = 24;
  }

  else
  {
    v11 = 25;
  }

  do
  {
    result = (*(v2 + 1512))(v7, v10);
    v10 += 56;
    v7 += 88;
    --v11;
  }

  while (v11);
  if (*(a1 + 8800))
  {
    v13 = *(a1 + 8176);
    v30 = *v13;
    v31 = *(v13 + 8);
    v14 = *(a1 + 8184);
    v28 = *v14;
    v29 = *(v14 + 8);
    v15 = **(a1 + 8096);
    v16 = v15 == 9 || v15 == 4;
    v17 = v16 ? 3 : 0;
    optimize_b(a1, 0, v17, &v30, &v28);
    optimize_b(a1, 1, v17, &v30 + 1, &v28);
    optimize_b(a1, 2, v17, &v30 + 2, &v28);
    optimize_b(a1, 3, v17, &v30 + 3, &v28);
    optimize_b(a1, 4, v17, &v30, &v28 + 1);
    optimize_b(a1, 5, v17, &v30 + 1, &v28 + 1);
    optimize_b(a1, 6, v17, &v30 + 2, &v28 + 1);
    optimize_b(a1, 7, v17, &v30 + 3, &v28 + 1);
    optimize_b(a1, 8, v17, &v30, &v28 + 2);
    optimize_b(a1, 9, v17, &v30 + 1, &v28 + 2);
    optimize_b(a1, 10, v17, &v30 + 2, &v28 + 2);
    optimize_b(a1, 11, v17, &v30 + 3, &v28 + 2);
    optimize_b(a1, 12, v17, &v30, &v28 + 3);
    optimize_b(a1, 13, v17, &v30 + 1, &v28 + 3);
    optimize_b(a1, 14, v17, &v30 + 2, &v28 + 3);
    optimize_b(a1, 15, v17, &v30 + 3, &v28 + 3);
    optimize_b(a1, 16, 2u, &v30 + 4, &v28 + 4);
    optimize_b(a1, 17, 2u, &v30 + 5, &v28 + 4);
    optimize_b(a1, 18, 2u, &v30 + 4, &v28 + 5);
    optimize_b(a1, 19, 2u, &v30 + 5, &v28 + 5);
    optimize_b(a1, 20, 2u, &v30 + 6, &v28 + 6);
    optimize_b(a1, 21, 2u, &v30 + 7, &v28 + 6);
    optimize_b(a1, 22, 2u, &v30 + 6, &v28 + 7);
    result = optimize_b(a1, 23, 2u, &v30 + 7, &v28 + 7);
    if (v15 != 4 && v15 != 9)
    {
      result = optimize_b(a1, 24, 1u, &v31, &v29);
      v18 = *(a1 + 7736);
      if (*v18 < 35 || v18[1] <= 34)
      {
        v19 = *(a1 + 7752);
        v20 = *v19;
        if (v20 < 1)
        {
LABEL_31:
          *v19 = 0;
        }

        else
        {
          v21 = 0;
          v22 = *(a1 + 7720);
          v23 = vp8_default_zig_zag1d;
          while (1)
          {
            v24 = *v23++;
            v25 = *(v22 + 2 * v24);
            if (v25 < 0)
            {
              v25 = -v25;
            }

            v21 += v25;
            if (v21 >= 0x23)
            {
              break;
            }

            if (!--v20)
            {
              v26 = *(a1 + 7712);
              do
              {
                v27 = vp8_default_zig_zag1d[v20];
                *(v26 + 2 * v27) = 0;
                *(v22 + 2 * v27) = 0;
                ++v20;
              }

              while (v20 < *v19);
              goto LABEL_31;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t encode_mvcomponent(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v7 = *a3;
  if (v6 > 7)
  {
    vp8_encode_BOOL(a1, 1, v7);
    vp8_encode_BOOL(a1, v6 & 1, a3[9]);
    vp8_encode_BOOL(a1, (v6 >> 1) & 1, a3[10]);
    vp8_encode_BOOL(a1, (v6 >> 2) & 1, a3[11]);
    vp8_encode_BOOL(a1, (v6 >> 9) & 1, a3[18]);
    vp8_encode_BOOL(a1, (v6 >> 8) & 1, a3[17]);
    vp8_encode_BOOL(a1, (v6 >> 7) & 1, a3[16]);
    vp8_encode_BOOL(a1, (v6 >> 6) & 1, a3[15]);
    vp8_encode_BOOL(a1, (v6 >> 5) & 1, a3[14]);
    vp8_encode_BOOL(a1, (v6 >> 4) & 1, a3[13]);
    if ((v6 & 0xFFF0) != 0)
    {
      vp8_encode_BOOL(a1, (v6 >> 3) & 1, a3[12]);
    }
  }

  else
  {
    vp8_encode_BOOL(a1, 0, v7);
    vp8_encode_BOOL(a1, v6 >> 2, a3[2]);
    v8 = vp8_small_mvtree[v6 >> 2];
    vp8_encode_BOOL(a1, (v6 >> 1) & 1, a3[(v8 >> 1) + 2]);
    result = vp8_encode_BOOL(a1, v6 & 1, a3[(vp8_small_mvtree[((v6 >> 1) & 1) + v8] >> 1) + 2]);
    if (!a2)
    {
      return result;
    }
  }

  v10 = a3[1];

  return vp8_encode_BOOL(a1, a2 >> 31, v10);
}

void *vp8_build_component_cost_table(void *result, unsigned __int8 *a2, _DWORD *a3)
{
  v5 = result;
  if (*a3)
  {
    v6 = *result;
    v7 = *result;
    *v7 = vp8_prob_cost[a2[2]] + vp8_prob_cost[*a2] + vp8_prob_cost[a2[3]] + vp8_prob_cost[a2[4]];
    v8 = v7 - 1;
    for (i = 1; i != 1024; ++i)
    {
      result = cost_mvcomponent(i, a2);
      v6[i] = vp8_prob_cost[a2[1]] + result;
      *v8-- = vp8_prob_cost[~a2[1]] + result;
    }
  }

  if (a3[1])
  {
    v10 = v5[1];
    *v10 = vp8_prob_cost[a2[21]] + vp8_prob_cost[a2[19]] + vp8_prob_cost[a2[22]] + vp8_prob_cost[a2[23]];
    v11 = v10 - 1;
    for (j = 1; j != 1024; ++j)
    {
      result = cost_mvcomponent(j, a2 + 19);
      v10[j] = vp8_prob_cost[a2[20]] + result;
      *v11-- = vp8_prob_cost[~a2[20]] + result;
    }
  }

  return result;
}

uint64_t cost_mvcomponent(unint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (a1 > 7)
  {
    v5 = vp8_prob_cost[(a2[9] ^ -(a1 & 1))] + vp8_prob_cost[~v2] + vp8_prob_cost[(a2[10] ^ ((a1 << 30) >> 31))] + vp8_prob_cost[(a2[11] ^ ((a1 << 29) >> 31))] + vp8_prob_cost[(a2[18] ^ ((a1 << 22) >> 31))] + vp8_prob_cost[(a2[17] ^ ((a1 << 23) >> 31))] + vp8_prob_cost[(a2[16] ^ (a1 >> 7))] + vp8_prob_cost[(a2[15] ^ ((a1 << 25) >> 31))] + vp8_prob_cost[(a2[14] ^ ((a1 << 26) >> 31))] + vp8_prob_cost[(a2[13] ^ ((a1 << 27) >> 31))];
    if ((a1 & 0xFFF0) != 0)
    {
      return vp8_prob_cost[(a2[12] ^ ((a1 << 28) >> 31))] + v5;
    }

    return v5;
  }

  else
  {
    v3 = vp8_small_mvtree[(a1 >> 2) & 1];
    return vp8_prob_cost[(a2[2] ^ ((a1 << 29) >> 31))] + vp8_prob_cost[v2] + vp8_prob_cost[(a2[(v3 >> 1) + 2] ^ ((a1 << 30) >> 31))] + vp8_prob_cost[(a2[(vp8_small_mvtree[((a1 >> 1) & 1) + v3] >> 1) + 2] ^ -(a1 & 1))];
  }
}

uint64_t write_component_probs(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, _DWORD *a6)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v138 = *MEMORY[0x277D85DE8];
  v15 = *a3;
  v112 = a3[1];
  v113 = a3[2];
  v114 = a3[3];
  v115 = a3[4];
  v116 = a3[5];
  v117 = a3[6];
  v118 = a3[7];
  v119 = a3[8];
  v120 = a3[9];
  v121 = a3[10];
  LOBYTE(v16) = a3[11];
  LOBYTE(v17) = a3[12];
  LOBYTE(v18) = a3[13];
  LOBYTE(v19) = a3[14];
  LOBYTE(v20) = a3[15];
  LOBYTE(v21) = a3[16];
  LOBYTE(v22) = a3[17];
  v122 = a3[18];
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  v129 = 0;
  v131 = 0;
  v130 = 0;
  v132 = 0;
  v23 = 4088;
  v24 = *(a5 + 4092);
  v25 = v24;
  do
  {
    while (1)
    {
      v26 = v11 + 1;
      v27 = *(a5 + 4 * v11 + 4096);
      v28 = *(a5 + v23);
      v29 = v28 + v27;
      if ((v11 + 1) <= 7)
      {
        break;
      }

      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 9) & 1))) + 0x48) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 8) & 1))) + 0x40) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 7) & 1))) + 0x38) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 6) & 1))) + 0x30) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 5) & 1))) + 0x28) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 4) & 1))) + 0x20) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 3) & 1))) + 0x18) += v29;
      *((&v133 | v26 & 4) + 0x10) += v29;
      *((&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v26 >> 1) & 1))) + 8) += v29;
      v12 += v29;
      *(&v133 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v26 & 1))) += v29;
      v14 += v27;
      v13 += v28;
      ++v11;
      v23 -= 4;
      if (v11 == 1023)
      {
        goto LABEL_5;
      }
    }

    v25 += v29;
    *(&v129 + v11) += v29;
    v14 += v27;
    v13 += v28;
    ++v11;
    v23 -= 4;
  }

  while (v11 != 1023);
LABEL_5:
  if (v25 + v12)
  {
    v30 = (255 * v25 / (v25 + v12)) & 0xFE;
    if (v30)
    {
      v15 = v30;
    }

    else
    {
      v15 = 1;
    }
  }

  if (v13 + v14)
  {
    v31 = (255 * v14 / (v13 + v14)) & 0xFE;
    if (!v31)
    {
      LOBYTE(v31) = 1;
    }

    v112 = v31;
  }

  v32 = 0;
  v125 = 0u;
  v128 = 0;
  v127 = 0u;
  v126 = 0u;
  v124 = v24;
  DWORD1(v125) = v24;
  HIDWORD(v125) = v24;
  v33 = 2;
  v34 = v129;
  do
  {
    v35 = 1u >> v33;
    *(&v124 + 2 * (v32 >> 1) + v35) += v34;
    LODWORD(v35) = vp8_small_mvtree[v35 + v32];
    v32 = v35;
    --v33;
  }

  while (v35 > 0);
  LODWORD(v36) = 0;
  v37 = -1;
  v38 = HIDWORD(v129);
  do
  {
    *(&v124 + 2 * (v36 >> 1) + (v37 == 0)) += v38;
    v36 = v36;
    if (!v37)
    {
      v36 = v36 + 1;
    }

    v39 = vp8_small_mvtree[v36];
    LODWORD(v36) = vp8_small_mvtree[v36];
    ++v37;
  }

  while (v39 > 0);
  v40 = 0;
  v41 = 2;
  v42 = v130;
  do
  {
    v43 = (3u >> v41) & 1;
    *(&v124 + 2 * (v40 >> 1) + v43) += v42;
    LODWORD(v43) = vp8_small_mvtree[v43 + v40];
    v40 = v43;
    --v41;
  }

  while (v43 > 0);
  v44 = 0;
  LODWORD(v45) = 0;
  v46 = HIDWORD(v130);
  do
  {
    *(&v124 + 2 * (v45 >> 1) + (v44 == 0)) += v46;
    v45 = v45;
    if (!v44)
    {
      v45 = v45 + 1;
    }

    v47 = vp8_small_mvtree[v45];
    LODWORD(v45) = vp8_small_mvtree[v45];
    ++v44;
  }

  while (v47 > 0);
  v48 = 0;
  v49 = 2;
  v50 = v131;
  do
  {
    v51 = (5u >> v49) & 1;
    *(&v124 + 2 * (v48 >> 1) + v51) += v50;
    LODWORD(v51) = vp8_small_mvtree[v51 + v48];
    v48 = v51;
    --v49;
  }

  while (v51 > 0);
  v52 = 0;
  v53 = 2;
  v54 = HIDWORD(v131);
  do
  {
    v55 = (6u >> v53) & 1;
    *(&v124 + 2 * (v52 >> 1) + v55) += v54;
    LODWORD(v55) = vp8_small_mvtree[v55 + v52];
    v52 = v55;
    --v53;
  }

  while (v55 > 0);
  v56 = 0;
  v57 = 2;
  v58 = v132;
  do
  {
    v59 = (7u >> v57) & 1;
    *(&v124 + 2 * (v56 >> 1) + v59) += v58;
    LODWORD(v59) = vp8_small_mvtree[v59 + v56];
    v56 = v59;
    --v57;
  }

  while (v59 > 0);
  v105 = v125;
  if (v125 + v124)
  {
    v60 = (255 * v124 / (v125 + v124)) & 0xFE;
    if (!v60)
    {
      LOBYTE(v60) = 1;
    }

    v113 = v60;
  }

  v104 = DWORD2(v125);
  if (DWORD2(v125) + DWORD1(v125))
  {
    v61 = (255 * DWORD1(v125) / (DWORD2(v125) + DWORD1(v125))) & 0xFE;
    if (!v61)
    {
      LOBYTE(v61) = 1;
    }

    v114 = v61;
  }

  v103 = v126;
  if (v126 + HIDWORD(v125))
  {
    v62 = (255 * HIDWORD(v125) / (v126 + HIDWORD(v125))) & 0xFE;
    if (!v62)
    {
      LOBYTE(v62) = 1;
    }

    v115 = v62;
  }

  v101 = DWORD2(v126);
  if (DWORD2(v126) + DWORD1(v126))
  {
    v63 = (255 * DWORD1(v126) / (DWORD2(v126) + DWORD1(v126))) & 0xFE;
    if (!v63)
    {
      LOBYTE(v63) = 1;
    }

    v116 = v63;
  }

  v99 = v127;
  if (v127 + HIDWORD(v126))
  {
    v64 = (255 * HIDWORD(v126) / (v127 + HIDWORD(v126))) & 0xFE;
    if (!v64)
    {
      LOBYTE(v64) = 1;
    }

    v117 = v64;
  }

  v97 = DWORD2(v127);
  if (DWORD2(v127) + DWORD1(v127))
  {
    v65 = (255 * DWORD1(v127) / (DWORD2(v127) + DWORD1(v127))) & 0xFE;
    if (!v65)
    {
      LOBYTE(v65) = 1;
    }

    v118 = v65;
  }

  v95 = v128;
  if (v128 + HIDWORD(v127))
  {
    v66 = (255 * HIDWORD(v127) / (v128 + HIDWORD(v127))) & 0xFE;
    if (!v66)
    {
      LOBYTE(v66) = 1;
    }

    v119 = v66;
  }

  v93 = DWORD1(v133);
  if (DWORD1(v133) + v133)
  {
    v67 = (255 * v133 / (DWORD1(v133) + v133)) & 0xFE;
    if (!v67)
    {
      LOBYTE(v67) = 1;
    }

    v120 = v67;
  }

  v91 = HIDWORD(v133);
  if (HIDWORD(v133) + DWORD2(v133))
  {
    v68 = (255 * DWORD2(v133) / (HIDWORD(v133) + DWORD2(v133))) & 0xFE;
    if (!v68)
    {
      LOBYTE(v68) = 1;
    }

    v121 = v68;
  }

  v89 = DWORD1(v134);
  if (DWORD1(v134) + v134)
  {
    if (((255 * v134 / (DWORD1(v134) + v134)) & 0xFE) != 0)
    {
      v16 = (255 * v134 / (DWORD1(v134) + v134)) & 0xFE;
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  v87 = HIDWORD(v134);
  if (HIDWORD(v134) + DWORD2(v134))
  {
    if (((255 * DWORD2(v134) / (HIDWORD(v134) + DWORD2(v134))) & 0xFE) != 0)
    {
      v17 = (255 * DWORD2(v134) / (HIDWORD(v134) + DWORD2(v134))) & 0xFE;
    }

    else
    {
      LOBYTE(v17) = 1;
    }
  }

  v88 = DWORD2(v134);
  v85 = DWORD1(v135);
  if (DWORD1(v135) + v135)
  {
    if (((255 * v135 / (DWORD1(v135) + v135)) & 0xFE) != 0)
    {
      v18 = (255 * v135 / (DWORD1(v135) + v135)) & 0xFE;
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  v86 = v135;
  v107 = v18;
  v83 = HIDWORD(v135);
  if (HIDWORD(v135) + DWORD2(v135))
  {
    if (((255 * DWORD2(v135) / (HIDWORD(v135) + DWORD2(v135))) & 0xFE) != 0)
    {
      v19 = (255 * DWORD2(v135) / (HIDWORD(v135) + DWORD2(v135))) & 0xFE;
    }

    else
    {
      LOBYTE(v19) = 1;
    }
  }

  v108 = v19;
  v81 = DWORD1(v136);
  if (DWORD1(v136) + v136)
  {
    if (((255 * v136 / (DWORD1(v136) + v136)) & 0xFE) != 0)
    {
      v20 = (255 * v136 / (DWORD1(v136) + v136)) & 0xFE;
    }

    else
    {
      LOBYTE(v20) = 1;
    }
  }

  v106 = v17;
  v79 = HIDWORD(v136);
  if (HIDWORD(v136) + DWORD2(v136))
  {
    if (((255 * DWORD2(v136) / (HIDWORD(v136) + DWORD2(v136))) & 0xFE) != 0)
    {
      v21 = (255 * DWORD2(v136) / (HIDWORD(v136) + DWORD2(v136))) & 0xFE;
    }

    else
    {
      LOBYTE(v21) = 1;
    }
  }

  v80 = DWORD2(v136);
  v84 = DWORD2(v135);
  v109 = v20;
  v77 = DWORD1(v137);
  if (DWORD1(v137) + v137)
  {
    if (((255 * v137 / (DWORD1(v137) + v137)) & 0xFE) != 0)
    {
      v22 = (255 * v137 / (DWORD1(v137) + v137)) & 0xFE;
    }

    else
    {
      LOBYTE(v22) = 1;
    }
  }

  v78 = v137;
  v82 = v136;
  v90 = v134;
  v92 = DWORD2(v133);
  v94 = v133;
  v96 = HIDWORD(v127);
  v98 = DWORD1(v127);
  v100 = HIDWORD(v126);
  v102 = DWORD1(v126);
  v69 = HIDWORD(v125);
  v70 = DWORD1(v125);
  v71 = v124;
  v110 = v21;
  v111 = v22;
  v72 = DWORD2(v137);
  v76 = HIDWORD(v137);
  LOBYTE(v73) = v122;
  if (HIDWORD(v137) + DWORD2(v137))
  {
    if (((255 * DWORD2(v137) / (HIDWORD(v137) + DWORD2(v137))) & 0xFE) != 0)
    {
      v73 = (255 * DWORD2(v137) / (HIDWORD(v137) + DWORD2(v137))) & 0xFE;
    }

    else
    {
      LOBYTE(v73) = 1;
    }
  }

  v123 = v73;
  update(a1, v25, v12, a2, v15, *a4, a6);
  update(a1, v14, v13, a2 + 1, v112, a4[1], a6);
  update(a1, v71, v105, a2 + 2, v113, a4[2], a6);
  update(a1, v70, v104, a2 + 3, v114, a4[3], a6);
  update(a1, v69, v103, a2 + 4, v115, a4[4], a6);
  update(a1, v102, v101, a2 + 5, v116, a4[5], a6);
  update(a1, v100, v99, a2 + 6, v117, a4[6], a6);
  update(a1, v98, v97, a2 + 7, v118, a4[7], a6);
  update(a1, v96, v95, a2 + 8, v119, a4[8], a6);
  update(a1, v94, v93, a2 + 9, v120, a4[9], a6);
  update(a1, v92, v91, a2 + 10, v121, a4[10], a6);
  update(a1, v90, v89, a2 + 11, v16, a4[11], a6);
  update(a1, v88, v87, a2 + 12, v106, a4[12], a6);
  update(a1, v86, v85, a2 + 13, v107, a4[13], a6);
  update(a1, v84, v83, a2 + 14, v108, a4[14], a6);
  update(a1, v82, v81, a2 + 15, v109, a4[15], a6);
  update(a1, v80, v79, a2 + 16, v110, a4[16], a6);
  update(a1, v78, v77, a2 + 17, v111, a4[17], a6);
  v74 = a4[18];

  return update(a1, v72, v76, a2 + 18, v123, v74, a6);
}

uint64_t update(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4, unsigned int a5, int a6, _DWORD *a7)
{
  if ((((vp8_prob_cost[*a4] * a2 + vp8_prob_cost[~*a4] * a3) >> 8) - ((vp8_prob_cost[a5] * a2 + vp8_prob_cost[~a5] * a3) >> 8)) <= (((vp8_prob_cost[a6 ^ 0xFF] - vp8_prob_cost[a6] + 128) >> 8) + 6))
  {

    return vp8_encode_BOOL(a1, 0, a6);
  }

  else
  {
    *a4 = a5;
    vp8_encode_BOOL(a1, 1, a6);
    vp8_encode_BOOL_0(a1, a5 >> 7);
    vp8_encode_BOOL_0(a1, (a5 >> 6) & 1);
    vp8_encode_BOOL_0(a1, (a5 >> 5) & 1);
    vp8_encode_BOOL_0(a1, (a5 >> 4) & 1);
    vp8_encode_BOOL_0(a1, (a5 >> 3) & 1);
    vp8_encode_BOOL_0(a1, (a5 >> 2) & 1);
    result = vp8_encode_BOOL_0(a1, (a5 >> 1) & 1);
    *a7 = 1;
  }

  return result;
}

void vp8cx_init_mbrthread_data(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v68 = a2 + 30140;
    v7 = a2 + 0x2000;
    v8 = (a2 + 1880);
    v9 = (a1 + 110544);
    v66 = a1 + 109888;
    v67 = (a1 + 114776);
    v64 = a1 + 113813;
    v65 = a1 + 111616;
    v63 = (a2 + 6272);
    v62 = (a2 + 6240);
    v61 = (a2 + 6304);
    v60 = (a2 + 6336);
    v10 = (a2 + 29976);
    v11 = (a2 + 29896);
    v12 = a2 + 29828;
    v59 = a4;
    do
    {
      v13 = a3 + 34336 * v6;
      *(v13 + 8248) = *(a2 + 8248);
      *(v13 + 8256) = *(a2 + 8256);
      *(v13 + 8272) = *(a2 + 8272);
      v14 = *(a2 + 8776);
      *(v13 + 34304) = 0u;
      *(v13 + 34320) = 0;
      v15 = *(a2 + 8584);
      *(v13 + 8776) = v14;
      v16 = v15 + 132 * *(a2 + 8104) * ++v6;
      LODWORD(v15) = v9[129];
      *(v13 + 8576) = v16;
      *(v13 + 8108) = v15;
      v17 = *v67;
      v18 = **v67;
      *(v13 + 4080) = (*v67)[1];
      v20 = v17[2];
      v19 = v17[3];
      v21 = v17[4];
      *(v13 + 4144) = v17[5];
      *(v13 + 4128) = v21;
      *(v13 + 4096) = v20;
      *(v13 + 4112) = v19;
      v23 = v17[8];
      v22 = v17[9];
      v24 = v17[7];
      *(v13 + 4160) = v17[6];
      *(v13 + 4176) = v24;
      *(v13 + 4192) = v23;
      *(v13 + 4208) = v22;
      *(v13 + 4064) = v18;
      _X9 = v13 + 38456;
      v26 = (v66 + 160 * v9[1]);
      v27 = *v26;
      *(v13 + 7792) = v26[1];
      *(v13 + 7776) = v27;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];
      *(v13 + 7856) = v26[5];
      *(v13 + 7840) = v30;
      *(v13 + 7824) = v29;
      *(v13 + 7808) = v28;
      v31 = v26[6];
      v32 = v26[7];
      v33 = v26[8];
      *(v13 + 7920) = v26[9];
      *(v13 + 7904) = v33;
      *(v13 + 7888) = v32;
      *(v13 + 7872) = v31;
      v34 = (v66 + 160 * *v9);
      v35 = *v34;
      *(v13 + 7952) = v34[1];
      *(v13 + 7936) = v35;
      v36 = v34[2];
      v37 = v34[3];
      v38 = v34[4];
      *(v13 + 8016) = v34[5];
      *(v13 + 8000) = v38;
      *(v13 + 7984) = v37;
      *(v13 + 7968) = v36;
      v39 = v34[6];
      v40 = v34[7];
      v41 = v34[8];
      *(v13 + 8080) = v34[9];
      *(v13 + 8064) = v41;
      *(v13 + 8048) = v40;
      *(v13 + 8032) = v39;
      __asm { PRFM            #0, [X9] }

      LODWORD(_X9) = 8 * v6 * *(a2 + 4100);
      v47 = *(v13 + 4128);
      *(v13 + 4120) += 16 * v6 * *(a2 + 4080);
      *(v13 + 4128) = v47 + _X9;
      *(v13 + 4136) += _X9;
      vp8_build_block_offsets(v13);
      *(v13 + 8184) = v65;
      *(v13 + 8792) = v64;
      *(v13 + 8616) = *(a2 + 8616);
      *(v13 + 8624) = *(a2 + 8624);
      *(v13 + 8640) = *(a2 + 8640);
      *(v13 + 34256) = *(a2 + 34256);
      *(v13 + 34272) = *(a2 + 34272);
      *(v13 + 8800) = *(a2 + 8800);
      *(v13 + 8680) = *(a2 + 8680);
      *(v13 + 8688) = *(a2 + 8688);
      *(v13 + 8696) = *(a2 + 8696);
      *(v13 + 8704) = *(a2 + 8704);
      *(v13 + 8736) = *(a2 + 8736);
      *(v13 + 8712) = *(a2 + 8712);
      *(v13 + 8720) = *(a2 + 8720);
      *(v13 + 1880) = *v8;
      *(v13 + 1896) = v8[1];
      *(v13 + 1912) = v8[2];
      *(v13 + 1948) = *(a2 + 1948);
      *(v13 + 1968) = *(a2 + 1968);
      *(v13 + 1984) = *(a2 + 1984);
      *(v13 + 2000) = *(a2 + 2000);
      *(v13 + 2036) = *(a2 + 2036);
      *(v13 + 2056) = v8[11];
      *(v13 + 2072) = v8[12];
      *(v13 + 2088) = v8[13];
      *(v13 + 2124) = *(a2 + 2124);
      *(v13 + 2144) = *(a2 + 2144);
      *(v13 + 2160) = *(a2 + 2160);
      *(v13 + 2176) = *(a2 + 2176);
      *(v13 + 2212) = *(a2 + 2212);
      *(v13 + 2232) = v8[22];
      *(v13 + 2248) = v8[23];
      *(v13 + 2264) = v8[24];
      *(v13 + 2300) = *(a2 + 2300);
      *(v13 + 2320) = *(a2 + 2320);
      *(v13 + 2336) = *(a2 + 2336);
      *(v13 + 2352) = *(a2 + 2352);
      *(v13 + 2388) = *(a2 + 2388);
      *(v13 + 2408) = v8[33];
      *(v13 + 2424) = v8[34];
      *(v13 + 2440) = v8[35];
      *(v13 + 2476) = *(a2 + 2476);
      *(v13 + 2496) = *(a2 + 2496);
      *(v13 + 2512) = *(a2 + 2512);
      *(v13 + 2528) = *(a2 + 2528);
      *(v13 + 2564) = *(a2 + 2564);
      *(v13 + 2584) = v8[44];
      *(v13 + 2600) = v8[45];
      *(v13 + 2616) = v8[46];
      *(v13 + 2652) = *(a2 + 2652);
      *(v13 + 2672) = *(a2 + 2672);
      *(v13 + 2688) = *(a2 + 2688);
      *(v13 + 2704) = *(a2 + 2704);
      *(v13 + 2740) = *(a2 + 2740);
      *(v13 + 2760) = v8[55];
      *(v13 + 2776) = v8[56];
      *(v13 + 2792) = v8[57];
      *(v13 + 2828) = *(a2 + 2828);
      *(v13 + 2848) = *(a2 + 2848);
      *(v13 + 2864) = *(a2 + 2864);
      *(v13 + 2880) = *(a2 + 2880);
      *(v13 + 2916) = *(a2 + 2916);
      *(v13 + 2936) = v8[66];
      *(v13 + 2952) = v8[67];
      *(v13 + 2968) = v8[68];
      *(v13 + 3004) = *(a2 + 3004);
      *(v13 + 3024) = *(a2 + 3024);
      *(v13 + 3040) = *(a2 + 3040);
      *(v13 + 3056) = *(a2 + 3056);
      *(v13 + 3092) = *(a2 + 3092);
      *(v13 + 3112) = v8[77];
      *(v13 + 3128) = v8[78];
      *(v13 + 3144) = v8[79];
      *(v13 + 3180) = *(a2 + 3180);
      *(v13 + 3200) = *(a2 + 3200);
      *(v13 + 3216) = *(a2 + 3216);
      *(v13 + 3232) = *(a2 + 3232);
      *(v13 + 3268) = *(a2 + 3268);
      *(v13 + 3288) = v8[88];
      *(v13 + 3304) = v8[89];
      *(v13 + 3320) = v8[90];
      *(v13 + 3356) = *(a2 + 3356);
      *(v13 + 3376) = *(a2 + 3376);
      *(v13 + 3392) = *(a2 + 3392);
      *(v13 + 3408) = *(a2 + 3408);
      *(v13 + 3444) = *(a2 + 3444);
      *(v13 + 3464) = v8[99];
      *(v13 + 3480) = v8[100];
      *(v13 + 3496) = v8[101];
      *(v13 + 3532) = *(a2 + 3532);
      *(v13 + 3552) = *(a2 + 3552);
      *(v13 + 3568) = *(a2 + 3568);
      *(v13 + 3584) = *(a2 + 3584);
      *(v13 + 3620) = *(a2 + 3620);
      *(v13 + 3640) = v8[110];
      *(v13 + 3656) = v8[111];
      *(v13 + 3672) = v8[112];
      *(v13 + 3708) = *(a2 + 3708);
      *(v13 + 3728) = *(a2 + 3728);
      *(v13 + 3744) = *(a2 + 3744);
      *(v13 + 3760) = *(a2 + 3760);
      *(v13 + 3796) = *(a2 + 3796);
      *(v13 + 3816) = v8[121];
      *(v13 + 3832) = v8[122];
      *(v13 + 3848) = v8[123];
      *(v13 + 3884) = *(a2 + 3884);
      *(v13 + 3904) = *(a2 + 3904);
      *(v13 + 3920) = *(a2 + 3920);
      *(v13 + 3936) = *(a2 + 3936);
      *(v13 + 3972) = *(a2 + 3972);
      *(v13 + 3992) = v8[132];
      *(v13 + 4008) = v8[133];
      *(v13 + 4024) = v8[134];
      *(v13 + 4060) = *(a2 + 4060);
      *(v13 + 8804) = *(a2 + 8804);
      *(v13 + 8672) = *(a2 + 8672);
      *(v13 + 8248) = *(a2 + 8248);
      *(v13 + 8264) = *(v7 + 72);
      *(v13 + 0x2000) = *v7;
      *(v13 + 8195) = *(v7 + 3);
      *(v13 + 8199) = *(v7 + 7);
      v48 = *v63;
      *(v13 + 6288) = v63[1];
      *(v13 + 6272) = v48;
      v49 = *v62;
      *(v13 + 6256) = v62[1];
      *(v13 + 6240) = v49;
      v50 = *v61;
      *(v13 + 6320) = v61[1];
      *(v13 + 6304) = v50;
      v51 = *v60;
      *(v13 + 6352) = v60[1];
      *(v13 + 6336) = v51;
      *(v13 + 6392) = v13 + 6240;
      *(v13 + 6448) = v13 + 6240;
      *(v13 + 6504) = v13 + 6240;
      *(v13 + 6560) = v13 + 6240;
      *(v13 + 6616) = v13 + 6240;
      *(v13 + 6672) = v13 + 6240;
      *(v13 + 6728) = v13 + 6240;
      *(v13 + 6784) = v13 + 6240;
      *(v13 + 6840) = v13 + 6240;
      *(v13 + 6896) = v13 + 6240;
      *(v13 + 6952) = v13 + 6240;
      *(v13 + 7008) = v13 + 6240;
      *(v13 + 7064) = v13 + 6240;
      *(v13 + 7120) = v13 + 6240;
      *(v13 + 7176) = v13 + 6240;
      *(v13 + 7232) = v13 + 6240;
      *(v13 + 7288) = v13 + 6336;
      *(v13 + 7344) = v13 + 6336;
      *(v13 + 7400) = v13 + 6336;
      *(v13 + 7456) = v13 + 6336;
      *(v13 + 7512) = v13 + 6336;
      *(v13 + 7568) = v13 + 6336;
      *(v13 + 7624) = v13 + 6336;
      *(v13 + 7680) = v13 + 6336;
      *(v13 + 7736) = v13 + 6304;
      *(v13 + 29976) = *v10;
      v52 = v10[1];
      v53 = v10[2];
      v54 = v10[4];
      *(v13 + 30024) = v10[3];
      *(v13 + 30040) = v54;
      *(v13 + 29992) = v52;
      *(v13 + 30008) = v53;
      v55 = v11[4];
      v57 = v11[1];
      v56 = v11[2];
      *(v13 + 29944) = v11[3];
      *(v13 + 29960) = v55;
      *(v13 + 29912) = v57;
      *(v13 + 29928) = v56;
      *(v13 + 29896) = *v11;
      *(v13 + 30156) = *(v68 + 16);
      *(v13 + 30140) = *v68;
      bzero((v13 + 30160), 0x1000uLL);
      if (v9[139])
      {
        v58 = -8;
      }

      else
      {
        v58 = -1;
      }

      *(v13 + 7768) = v58;
      bzero((v13 + 8844), 0x1200uLL);
      *(v12 + 16) = 0;
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v13 + 8840) = 0;
      bzero((v13 + 13452), 0x3FF8uLL);
      *(v13 + 29872) = 0;
      *(v13 + 29864) = 0;
      *(v13 + 29880) = 0;
      *(v13 + 29888) = 0;
      *(v13 + 30056) = 0;
      *(v13 + 34288) = 0;
    }

    while (v6 != v59);
  }
}

uint64_t vp8cx_create_encoder_threads(uint64_t a1)
{
  v1 = a1 + 143188;
  v2 = *(a1 + 113864);
  if (v2 < 2 || (v3 = *(a1 + 114460), v3 < 2))
  {
    v5 = 0;
    if (!*(a1 + 143196))
    {
      return 0;
    }
  }

  else
  {
    if (v3 < v2)
    {
      v2 = *(a1 + 114460);
    }

    v4 = *(a1 + 111080) / *v1;
    if (v2 < v4)
    {
      v4 = v2;
    }

    v5 = v4 - 1;
    if (v4 - 1 == *(a1 + 143196))
    {
      return 0;
    }
  }

  vp8cx_remove_encoder_threads(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = 8 * v5 + 23;
  if (v6 > 0x10000000000 || (v7 = malloc_type_malloc(v6, 0xD93B561uLL)) == 0)
  {
    *(v1 + 20) = 0;
    v9 = (v1 + 20);
LABEL_17:
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->h_encoding_thread");
    v10 = 4 * v5 + 23;
    if (v10 >= 0x10000000001)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v8 - 8) = v7;
  *(v1 + 20) = v8;
  v9 = (v1 + 20);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = 4 * v5 + 23;
  if (v10 >= 0x10000000001)
  {
LABEL_15:
    *(v1 + 68) = 0;
    v11 = (v1 + 68);
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->h_event_start_encoding");
LABEL_26:
    *(v1 + 76) = 0;
    v16 = (v1 + 76);
    goto LABEL_27;
  }

LABEL_18:
  v12 = malloc_type_malloc(v10, 0xD93B561uLL);
  if (!v12)
  {
    *(v1 + 68) = 0;
    v11 = (v1 + 68);
LABEL_25:
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->h_event_start_encoding");
    v14 = malloc_type_malloc(v10, 0xD93B561uLL);
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v13 - 8) = v12;
  *(v1 + 68) = v13;
  v11 = (v1 + 68);
  if (!v13)
  {
    goto LABEL_25;
  }

  v14 = malloc_type_malloc(v10, 0xD93B561uLL);
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_21:
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v15 - 8) = v14;
  *(v1 + 76) = v15;
  v16 = (v1 + 76);
  if (v15)
  {
    v17 = 34336 * v5;
    v18 = v17 + 39;
    if (v17 + 39 > 0x10000000000)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_27:
  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->h_event_end_encoding");
  v17 = 34336 * v5;
  v18 = v17 + 39;
  if (v17 + 39 > 0x10000000000)
  {
LABEL_31:
    *(v1 + 36) = 0;
    v22 = (v1 + 36);
LABEL_32:
    vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->mb_row_ei");
    v21 = *v22;
    goto LABEL_33;
  }

LABEL_28:
  v19 = malloc_type_malloc(v18, 0xD93B561uLL);
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = v19;
  v21 = ((v19 + 39) & 0xFFFFFFFFFFFFFFE0);
  *(v21 - 1) = v20;
  *(v1 + 36) = v21;
  v22 = (v1 + 36);
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_33:
  bzero(v21, v17);
  v23 = 24 * v5 + 23;
  v46 = v11;
  if (v23 <= 0x10000000000 && (v24 = malloc_type_malloc(v23, 0xD93B561uLL)) != 0)
  {
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v25 - 8) = v24;
    *(v1 + 44) = v25;
    v45 = (v1 + 44);
    if (v25)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v1 + 44) = 0;
    v45 = (v1 + 44);
  }

  vpx_internal_error(a1 + 108032, 2, "Failed to allocate cpi->en_thread_data");
LABEL_39:
  atomic_store(1u, (v1 + 4));
  *(v1 + 8) = v5;
  v26 = MEMORY[0x277D85F48];
  if (v5 >= 1)
  {
    v43 = v22;
    v44 = v9;
    v41 = v5;
    v42 = v1;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 24 * v5;
    v32 = 1;
    while (1)
    {
      v33 = (*v45 + v30);
      vp8_setup_block_ptrs(*v43 + v28);
      vp8_setup_block_dptrs(*v43 + v28 + 4224);
      semaphore_create(*v26, (*v46 + v27), 0, 0);
      semaphore_create(*v26, (*v16 + v27), 0, 0);
      *v33 = v32 - 1;
      v34 = *v43 + v28;
      v33[1] = a1;
      v33[2] = v34;
      if (pthread_create((*v44 + v29), 0, thread_encoding_proc, v33))
      {
        break;
      }

      ++v32;
      v30 += 24;
      v29 += 8;
      v28 += 34336;
      v27 += 4;
      if (v31 == v30)
      {
        LODWORD(v35) = v41;
        v1 = v42;
        v22 = v43;
        v9 = v44;
        goto LABEL_45;
      }
    }

    v1 = v42;
    atomic_store(0, (v42 + 4));
    if (v30)
    {
      v22 = v43;
      v9 = v44;
      v36 = v46;
      do
      {
        MEMORY[0x2743DB130](*(*v46 + 4 * (v32 - 2)));
        MEMORY[0x2743DB130](*(*v16 + 4 * (v32 - 2)));
        pthread_join(*(*v44 + 8 * (v32 - 2)), 0);
        semaphore_destroy(*v26, *(*v46 + 4 * (v32 - 2)));
        semaphore_destroy(*v26, *(*v16 + 4 * (v32-- - 2)));
      }

      while (v32 > 1);
      v38 = 0xFFFFFFFFLL;
      v39 = *v46;
      if (!*v46)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v38 = 0xFFFFFFFFLL;
      v22 = v43;
      v9 = v44;
      v36 = v46;
      v39 = *v46;
      if (!*v46)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_50;
  }

  LODWORD(v35) = 0;
LABEL_45:
  semaphore_create(*v26, (v1 + 84), 0, 0);
  semaphore_create(*v26, (v1 + 88), 0, 0);
  *(v1 + 60) = a1;
  v36 = v46;
  if (!pthread_create((a1 + 143216), 0, thread_loopfilter, (a1 + 143240)))
  {
    return 0;
  }

  atomic_store(0, (v1 + 4));
  if (v35 >= 1)
  {
    v35 = v35;
    do
    {
      MEMORY[0x2743DB130](*(*v46 + 4 * v35 - 4));
      MEMORY[0x2743DB130](*(*v16 + 4 * v35 - 4));
      pthread_join(*(*v9 + 8 * v35 - 8), 0);
      semaphore_destroy(*v26, *(*v46 + 4 * v35 - 4));
      semaphore_destroy(*v26, *(*v16 + 4 * v35 - 4));
    }

    while (v35-- > 1);
  }

  semaphore_destroy(*v26, *(v1 + 88));
  semaphore_destroy(*v26, *(v1 + 84));
  v38 = 4294967294;
  v39 = *v46;
  if (*v46)
  {
LABEL_50:
    free(*(v39 - 8));
  }

LABEL_51:
  *v36 = 0;
  if (*v16)
  {
    free(*(*v16 - 8));
  }

  *v16 = 0;
  if (*v9)
  {
    free(*(*v9 - 8));
  }

  *v9 = 0;
  if (*v22)
  {
    free(*(*v22 - 1));
  }

  *v22 = 0;
  if (*v45)
  {
    free(*(*v45 - 8));
  }

  *(v1 + 44) = 0;
  *(v1 + 8) = 0;
  return v38;
}

void vp8cx_remove_encoder_threads(uint64_t a1)
{
  v1 = a1 + 139264;
  if (atomic_load_explicit((a1 + 143192), memory_order_acquire))
  {
    atomic_store(0, (a1 + 143192));
    v2 = MEMORY[0x277D85F48];
    if (*(a1 + 143196) >= 1)
    {
      v3 = 0;
      do
      {
        MEMORY[0x2743DB130](*(*(v1 + 3992) + 4 * v3));
        MEMORY[0x2743DB130](*(*(v1 + 4000) + 4 * v3));
        pthread_join(*(*(v1 + 3944) + 8 * v3), 0);
        semaphore_destroy(*v2, *(*(v1 + 3992) + 4 * v3));
        semaphore_destroy(*v2, *(*(v1 + 4000) + 4 * v3++));
      }

      while (v3 < *(v1 + 3932));
    }

    MEMORY[0x2743DB130](*(v1 + 4008));
    pthread_join(*(v1 + 3952), 0);
    semaphore_destroy(*v2, *(v1 + 4012));
    semaphore_destroy(*v2, *(v1 + 4008));
    *(v1 + 3936) = 0;
    v4 = *(v1 + 3912);
    if (v4)
    {
      free(*(v4 - 8));
    }

    *(v1 + 3912) = 0;
    *(v1 + 3920) = 0;
    v5 = *(v1 + 3992);
    if (v5)
    {
      free(*(v5 - 8));
    }

    *(v1 + 3992) = 0;
    v6 = *(v1 + 4000);
    if (v6)
    {
      free(*(v6 - 8));
    }

    *(v1 + 4000) = 0;
    v7 = *(v1 + 3944);
    if (v7)
    {
      free(*(v7 - 8));
    }

    *(v1 + 3944) = 0;
    v8 = *(v1 + 3960);
    if (v8)
    {
      free(*(v8 - 8));
    }

    *(v1 + 3960) = 0;
    v9 = *(v1 + 3968);
    if (v9)
    {
      free(*(v9 - 8));
    }

    *(v1 + 3968) = 0;
    *(v1 + 3932) = 0;
  }
}

uint64_t thread_encoding_proc(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v84 = *(a1 + 1);
  v3 = (v84 + 143048);
  v88 = 0;
  v87 = 0;
  if (atomic_load_explicit((v84 + 143192), memory_order_acquire))
  {
    v83 = (v2 + 34292);
    v81 = v1 + 1;
    v4 = v84 + 109888;
    v80 = v1;
    do
    {
      if (!MEMORY[0x2743DB140](*(*(v84 + 143256) + 4 * v1)))
      {
        v5 = *(v84 + 143188);
        v86 = 0;
        if (!atomic_load_explicit((v84 + 143192), memory_order_acquire))
        {
          return 0;
        }

        v6 = *(v84 + 111084);
        *(v2 + 8096) = *(v84 + 111136) + 76 * v6 * v81;
        *(v2 + 8104) = v6;
        v7 = (v2 + 4120);
        if (v81 < *(v84 + 111076))
        {
          v8 = *(v84 + 111080);
          v9 = v81;
          while (1)
          {
            v10 = *(v84 + 110544);
            v24 = v4 + 160 * *(v84 + 110548);
            v25 = *(v24 + 16);
            v26 = *(v24 + 36);
            v27 = v9 * v8;
            v28 = v9;
            v29 = (*(v84 + 143176) + 4 * v9);
            v86 = *(v84 + 115152) + 6144 * v9 * v8;
            *(*(v84 + 143280) + 16 * v9) = v86;
            *(v2 + 8176) = *(v84 + 111608);
            *(v2 + 8184) = &v87;
            v87 = 0;
            v88 = 0;
            *(v2 + 8112) = v9 != 0;
            *(v2 + 8656) = *(v84 + 148144) + 4 * v9 * v8;
            if (v8 > 0)
            {
              break;
            }

            LODWORD(v30) = 0;
LABEL_10:
            v11 = v4 + 160 * v10;
            v12 = (*(v2 + 7992) + 14 * *(v11 + 16));
            v13 = 6 * *(v11 + 36);
            v14 = (*(v2 + 8000) + v13);
            v15 = *(v2 + 8008);
            v12[16] = v12[15];
            v16 = (v15 + v13);
            v14[8] = v14[7];
            v16[8] = v16[7];
            v12[17] = v12[15];
            v14[9] = v14[7];
            v16[9] = v16[7];
            v12[18] = v12[15];
            v14[10] = v14[7];
            v16[10] = v16[7];
            v12[19] = v12[15];
            v14[11] = v14[7];
            v16[11] = v16[7];
            v17 = &v12[*(v11 + 16) + 16];
            v18 = *(v11 + 36);
            v19 = &v14[v18 + 8];
            v20 = &v16[v18 + 8];
            *v17 = *(v17 - 1);
            *v19 = *(v19 - 1);
            *v20 = *(v20 - 1);
            *(v17 + 1) = *(v17 - 1);
            v19[1] = *(v19 - 1);
            v20[1] = *(v20 - 1);
            *(v17 + 2) = *(v17 - 1);
            v19[2] = *(v19 - 1);
            v20[2] = *(v20 - 1);
            *(v17 + 3) = *(v17 - 1);
            v19[3] = *(v19 - 1);
            v20[3] = *(v20 - 1);
            atomic_store(v30 + v5, v29);
            LODWORD(v17) = *(v84 + 143196);
            LODWORD(v19) = *(v2 + 8104) * v17;
            v21 = *(v2 + 8096) + 76 * v19;
            v22 = *(v2 + 8576) + 132 * v19;
            v8 = *(v84 + 111080);
            *(v2 + 4120) += 16 * *(v2 + 4080) * (v17 + 1) - 16 * v8;
            v23 = 8 * (v17 + 1) * *(v2 + 4100) - 8 * v8;
            *(v2 + 4128) += v23;
            *(v2 + 4136) += v23;
            *(v2 + 8096) = v21 + 76;
            *(v2 + 8576) = v22 + 132;
            *(v2 + 8776) += v8 * v17;
            v9 = v17 + 1 + v28;
            if (v9 >= *(v84 + 111076))
            {
              goto LABEL_3;
            }
          }

          v30 = 0;
          v31 = v27;
          v82 = v10;
          v32 = (v4 + 160 * v10);
          v33 = v25 * 16 * v9;
          v34 = 8 * v9 * v26;
          v85 = v27;
          while (2)
          {
            if (!((v30 - 1) % v5))
            {
              atomic_store(v30 - 1, v29);
            }

            if (v28 && ((v5 - 1) & v30) == 0)
            {
                ;
              }
            }

            *(v2 + 8228) = -128 * v30;
            v36 = *(v84 + 111080) + ~v30;
            *(v2 + 8232) = v36 << 7;
            *(v2 + 8236) = -128 * v28;
            v37 = *(v84 + 111076) + ~v28;
            *(v2 + 8240) = v37 << 7;
            *(v2 + 8752) = 16 * ~v30;
            *(v2 + 8756) = 16 * v36 + 16;
            *(v2 + 8760) = (16 * v28) ^ 0xFFFFFFF0;
            *(v2 + 8764) = 16 * v37 + 16;
            v38 = v32[8];
            *(v2 + 7992) = v32[7] + v33;
            *(v2 + 8000) = v38 + v34;
            *(v2 + 8008) = v32[9] + v34;
            *(v2 + 8116) = v30 != 0;
            v39 = *(v84 + 115348);
            v40 = *(v84 + 115344);
            *(v2 + 8644) = v39;
            *(v2 + 8648) = v40;
            v41 = *(v2 + 4120);
            v42 = *(v2 + 4080);
            *(v2 + 1600) = *v41;
            v43 = (v41 + v42);
            *(v2 + 1616) = *v43;
            v44 = (v43 + v42);
            *(v2 + 1632) = *v44;
            v45 = (v44 + v42);
            *(v2 + 1648) = *v45;
            v46 = (v45 + v42);
            *(v2 + 1664) = *v46;
            v47 = (v46 + v42);
            *(v2 + 1680) = *v47;
            v48 = (v47 + v42);
            *(v2 + 1696) = *v48;
            v49 = (v48 + v42);
            *(v2 + 1712) = *v49;
            v50 = (v49 + v42);
            *(v2 + 1728) = *v50;
            v51 = (v50 + v42);
            *(v2 + 1744) = *v51;
            v52 = (v51 + v42);
            *(v2 + 1760) = *v52;
            v53 = (v52 + v42);
            *(v2 + 1776) = *v53;
            v54 = (v53 + v42);
            *(v2 + 1792) = *v54;
            v55 = (v54 + v42);
            *(v2 + 1808) = *v55;
            v56 = (v55 + v42);
            *(v2 + 1824) = *v56;
            *(v2 + 1840) = *(v56 + v42);
            if (*(v84 + 114512) == 1)
            {
              v57 = *(v2 + 8656);
              v58 = *(v84 + 148140);
              v59 = ((v58 + 2 * *v57) * v40 + (((2 * v58) + *v57) >> 1)) / ((2 * v58) + *v57);
              *(v2 + 8648) = v59;
              v60 = 100 * v59 / (110 * v39);
              if (v60 <= 1)
              {
                v60 = 1;
              }

              *(v2 + 8632) = v60;
              v61 = *v57;
              v62 = v61 + (4 * v58);
              v63 = v58 + 4 * v61;
              if (v61 <= v58)
              {
                v64 = 1 - (v62 + (v63 >> 1)) / v63;
              }

              else
              {
                v64 = (v63 + (v62 >> 1)) / v62 - 1;
              }

              *(v2 + 8672) = v64;
            }

            if (v7[254].i8[8])
            {
              v65 = *(*v3 + v30 + v31);
              if (v65 >= 4)
              {
                LOBYTE(v65) = 0;
              }

              *(*(v2 + 8096) + 11) = v65;
              vp8cx_mb_init_quantizer(v84, v2, 1);
              *(v2 + 8784) = *(v84 + 143080) + v85 + v30;
              if (!*(v84 + 111060))
              {
LABEL_13:
                *(v2 + 34320) += vp8cx_encode_intra_macroblock(v84, v2, &v86);
                v7 = (v2 + 4120);
                v31 = v85;
                goto LABEL_14;
              }
            }

            else
            {
              *(*(v2 + 8096) + 11) = 0;
              *(v2 + 8784) = *(v84 + 143080) + v31 + v30;
              if (!*(v84 + 111060))
              {
                goto LABEL_13;
              }
            }

            *(v2 + 34320) += vp8cx_encode_inter_macroblock(v84, v2, &v86, v33, v34, v28, v30);
            v7 = (v2 + 4120);
            v31 = v85;
            if (!*(v84 + 149248))
            {
              v66 = *(v2 + 8096);
              if (*v66 != 7 || v66[2] != 1)
              {
                v77 = v30 + v85;
                *(*(v84 + 143120) + v77) = 0;
                *(*(v84 + 143128) + v77) = 0;
                if (!*v83)
                {
                  goto LABEL_40;
                }

                goto LABEL_39;
              }

              v67 = *(v84 + 143120);
              v68 = v30 + v85;
              v69 = *(v67 + v30 + v85);
              if (v69 == 255)
              {
                v70 = *(v84 + 143128);
                v71 = *(v70 + v68);
                if (v71 == 255)
                {
                  goto LABEL_38;
                }

LABEL_48:
                *(v70 + v68) = v71 + 1;
                if (!*v83)
                {
                  goto LABEL_40;
                }

LABEL_39:
                *(*(v84 + 143128) + v30 + v85) = 0;
                goto LABEL_40;
              }

              *(v67 + v68) = v69 + 1;
              v70 = *(v84 + 143128);
              v71 = *(v70 + v68);
              if (v71 != 255)
              {
                goto LABEL_48;
              }

LABEL_38:
              if (*v83)
              {
                goto LABEL_39;
              }

LABEL_40:
              if (!*(v84 + 149248) && *(v84 + 143092) && *(v2 + 0x2000))
              {
                v72 = *(v2 + 8096);
                v73 = v72[11];
                v74 = v30 + v85;
                *(*v3 + v30 + v85) = v73;
                if (v73)
                {
                  v75 = *(v84 + 143112);
                  v76 = -1;
                  goto LABEL_55;
                }

                if (*v72 == 7 && v72[2] == 1)
                {
                  v78 = *(v84 + 143112);
                  if (*(v78 + v74) == 1)
                  {
                    *(v78 + v74) = 0;
                  }
                }

                else
                {
                  v75 = *(v84 + 143112);
                  v76 = 1;
LABEL_55:
                  *(v75 + v74) = v76;
                }
              }
            }

LABEL_14:
            *(*(v84 + 143280) + 16 * v28 + 8) = v86;
            ++*(v2 + 8776);
            *(v2 + 8656) += 4;
            *v7 = vaddq_s64(*v7, xmmword_273BC4E30);
            *(v2 + 4136) += 8;
            v33 += 16;
            v35 = *(v2 + 8096);
            ++*(v2 + 34304 + 4 * *(v35 + 11));
            v34 += 8;
            *(v2 + 8096) = v35 + 76;
            *(v2 + 8576) += 132;
            *(v2 + 8176) += 9;
            if (++v30 >= *(v84 + 111080))
            {
              v4 = v84 + 109888;
              v10 = v82;
              goto LABEL_10;
            }

            continue;
          }
        }

LABEL_3:
        v1 = v80;
        MEMORY[0x2743DB130](*(*(v84 + 143264) + 4 * v80));
      }
    }

    while (atomic_load_explicit((v84 + 143192), memory_order_acquire));
  }

  return 0;
}

uint64_t thread_loopfilter(uint64_t a1)
{
  v1 = *(a1 + 8);
  while (atomic_load_explicit((v1 + 143192), memory_order_acquire))
  {
    if (!MEMORY[0x2743DB140](*(v1 + 143272)))
    {
      if (!atomic_load_explicit((v1 + 143192), memory_order_acquire))
      {
        return 0;
      }

      vp8_loopfilter_frame(v1, v1 + 108032);
      MEMORY[0x2743DB130](*(v1 + 143276));
    }
  }

  return 0;
}

unsigned __int8 *vp8_copy_and_extend_frame(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  v6 = *a1;
  v5 = *(a1 + 4);
  v7 = *a2 + v4 - *a1;
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 56);
  if (v8 - v9 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  copy_and_extend_plane(v10, *(a1 + 16), *(a2 + 56), *(a2 + 16), v5, v6, v4, v4, *(a2 + 4) + v4 - v5, v7, 1);
  v12 = *(a2 + 104) >> 1;
  v14 = *(a1 + 20);
  v13 = *(a1 + 24);
  v15 = v12 + *(a2 + 24) - v13;
  v16 = *(a2 + 20) + v12;
  v17 = v16 - v14;
  copy_and_extend_plane(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), v13, v14, v12, v12, v15, v16 - v14, v11);
  return copy_and_extend_plane(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), *(a1 + 24), *(a1 + 20), v12, v12, v15, v17, v11);
}

unsigned __int8 *copy_and_extend_plane(unsigned __int8 *result, int a2, unint64_t a3, int a4, int a5, unsigned int a6, int a7, int a8, int a9, int a10, int a11)
{
  v12 = a8;
  v63 = -a8;
  __b = (a3 - a8);
  v13 = (a5 - 1);
  if (a5 >= 1)
  {
    v14 = result;
    v15 = ((a6 - 1) * a11);
    v64 = a2;
    if (a11 == 1)
    {
      v16 = a5;
      v17 = a3;
      do
      {
        memset(&v17[v63], *v14, v12);
        memcpy(v17, v14, a6);
        result = memset(&v17[a6], v14[v15], a10);
        v14 += v64;
        v17 += a4;
        --v16;
      }

      while (v16);
      goto LABEL_37;
    }

    if (a6 > 0)
    {
      v18 = 0;
      v19 = &result[v15];
      v20 = a3;
      v21 = (a3 + a6);
      v24 = &result[2 * a6 - 1 + a2 * v13] > a3 && a3 + a4 * v13 + a6 > result || (a4 | a2) < 0;
      v58 = v24;
      v25 = a6 & 0x1F;
      if ((a6 & 0x1F) == 0)
      {
        v25 = 32;
      }

      v50 = v25;
      v57 = a6 - v25;
      v26 = a6 & 7;
      if (!v26)
      {
        v26 = 8;
      }

      v54 = a6 - v26;
      v27 = (result + 32);
      v62 = (a3 + 16);
      v53 = v26 - a6;
      v28 = (a3 - a8);
      while (1)
      {
        v61 = v18;
        memset(v28, *v14, v12);
        if (a6 < 9 || v58)
        {
          v29 = 0;
          v30 = a10;
        }

        else
        {
          v30 = a10;
          if (a6 >= 0x21)
          {
            v32 = v57;
            v33 = v62;
            v34 = v27;
            do
            {
              v35 = v34 - 32;
              v36 = vld2q_s8(v35);
              v37 = vld2q_s8(v34);
              *(v33 - 1) = v36;
              *v33 = v37;
              v34 += 64;
              v33 += 2;
              v32 -= 32;
            }

            while (v32);
            v29 = v57;
            v31 = v57;
            if (v50 < 9)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v31 = 0;
          }

          v38 = 2 * v31;
          v39 = (v20 + v31);
          v40 = v53 + v31;
          do
          {
            v41 = &v14[v38];
            v42 = *vld2_s8(v41).val;
            *v39++ = v42;
            v38 += 16;
            v40 += 8;
          }

          while (v40);
          v29 = v54;
        }

LABEL_31:
        v43 = 2 * v29;
        do
        {
          *(v20 + v29++) = v14[v43];
          v43 += 2;
        }

        while (a6 != v29);
        result = memset(v21, *v19, v30);
        v14 += v64;
        v19 += v64;
        v28 += a4;
        v21 += a4;
        v18 = v61 + 1;
        v27 += v64;
        v62 = (v62 + a4);
        v20 += a4;
        if (v61 + 1 == a5)
        {
          goto LABEL_37;
        }
      }
    }

    v44 = a5;
    v45 = a3;
    do
    {
      memset((v45 + v63), *v14, v12);
      result = memset((v45 + a6), v14[v15], a10);
      v14 += v64;
      v45 += a4;
      --v44;
    }

    while (v44);
  }

LABEL_37:
  v46 = a9;
  v47 = a8 + a6 + a10;
  if (a7 >= 1)
  {
    v48 = (a3 + -(a4 * a7) + v63);
    do
    {
      result = memcpy(v48, __b, v47);
      v48 += a4;
      --a7;
    }

    while (a7);
  }

  if (a9 >= 1)
  {
    v49 = (a3 + a5 * a4 + v63);
    do
    {
      result = memcpy(v49, (a3 + (a5 - 1) * a4 + v63), v47);
      v49 += a4;
      --v46;
    }

    while (v46);
  }

  return result;
}

unsigned __int8 *vp8_copy_and_extend_frame_with_rect(uint64_t a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6)
{
  v10 = *(a2 + 104);
  v11 = *(a1 + 4);
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a2 + 104);
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 104);
  }

  if (a5 + a3 == v11)
  {
    v14 = *(a2 + 4) + v10 - v11;
  }

  else
  {
    v14 = 0;
  }

  if (a6 + a4 == *a1)
  {
    v15 = *a2 + v10 - *a1;
  }

  else
  {
    v15 = 0;
  }

  if (*(a1 + 72) - *(a1 + 64) == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = a4 >> 1;
  v26 = v17 + ((*(a2 + 36) * a3) >> 1);
  v18 = v17 + ((*(a1 + 36) * a3) >> 1);
  copy_and_extend_plane((*(a1 + 56) + a4 + (*(a1 + 16) * a3)), *(a1 + 16), *(a2 + 56) + a4 + (*(a2 + 16) * a3), *(a2 + 16), a5, a6, v12, v13, v14, v15, 1);
  v19 = (v13 + 1) >> 1;
  v25 = (v14 + 1) >> 1;
  v20 = (v15 + 1) >> 1;
  v21 = (a5 + 1) >> 1;
  v22 = (v12 + 1) >> 1;
  v23 = v19;
  copy_and_extend_plane((*(a1 + 64) + v18), *(a1 + 36), *(a2 + 64) + v26, *(a2 + 36), v21, (a6 + 1) >> 1, v22, v19, v25, v20, v16);
  return copy_and_extend_plane((*(a1 + 72) + v18), *(a1 + 36), *(a2 + 72) + v26, *(a2 + 36), v21, (a6 + 1) >> 1, v22, v23, v25, v20, v16);
}

int16x8_t vp8_fast_quantize_b_neon(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *v2;
  v4 = v2[1];
  v5 = a1[7];
  v6 = *v5;
  v7 = v5[1];
  v8 = a1[3];
  v9 = *v8;
  v10 = v8[1];
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  v14 = vcltzq_s16(v3);
  v15 = vcltzq_s16(v4);
  v16 = vqdmulhq_s16(vaddq_s16(vabsq_s16(v3), v6), v9);
  v17 = vqdmulhq_s16(vaddq_s16(vabsq_s16(v4), v7), v10);
  v7.i64[0] = 0x1000100010001;
  v7.i64[1] = 0x1000100010001;
  v18 = vsubq_s16(veorq_s8(vshrq_n_s16(v16, 1uLL), v14), v14);
  v19 = vsubq_s16(veorq_s8(vshrq_n_s16(v17, 1uLL), v15), v15);
  **(a2 + 40) = vmaxvq_u16(vmaxq_u16(vandq_s8(vcgtq_u16(v16, v7), xmmword_273BC6110), vandq_s8(vcgtq_u16(v17, v7), xmmword_273BC6120)));
  **a2 = v18;
  *(*a2 + 16) = v19;
  **(a2 + 8) = vmulq_s16(v18, v12);
  result = vmulq_s16(v19, v13);
  *(*(a2 + 8) + 16) = result;
  return result;
}

void vpx_fdct16x16_neon(int16x8_t *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v302 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = 2 * a3;
  v252 = 30 * a3;
  v7 = *(a1 + v252);
  v8 = *(a1 + v6);
  v9 = 14 * a3;
  v246 = a3;
  v251 = 28 * a3;
  v10 = *(a1 + v251);
  v286 = vaddq_s16(v7, *a1);
  v287 = vaddq_s16(v10, v8);
  v11 = 4 * a3;
  v12 = *(a1 + v11);
  v250 = 26 * a3;
  v13 = *(a1 + v250);
  v249 = 6 * a3;
  v14 = *(a1 + v249);
  v248 = 24 * a3;
  v15 = *(a1 + v248);
  v288 = vaddq_s16(v13, v12);
  v289 = vaddq_s16(v15, v14);
  v16 = 8 * a3;
  v17 = *(a1 + v16);
  v247 = 22 * a3;
  v18 = *(a1 + v247);
  v19 = 10 * a3;
  v20 = *(a1 + v19);
  v21 = 20 * a3;
  v22 = *(a1 + v21);
  v290 = vaddq_s16(v18, v17);
  v291 = vaddq_s16(v22, v20);
  v23 = 12 * a3;
  v24 = *(a1 + v23);
  v25 = 18 * a3;
  v26 = *(a1 + v25);
  v27 = *(a1 + v9);
  v28 = a1[v246];
  v292 = vaddq_s16(v26, v24);
  v293 = vaddq_s16(v28, v27);
  v294 = vsubq_s16(v27, v28);
  v295 = vsubq_s16(v24, v26);
  v296 = vsubq_s16(v20, v22);
  v297 = vsubq_s16(v17, v18);
  v298 = vsubq_s16(v14, v15);
  v299 = vsubq_s16(v12, v13);
  v300 = vsubq_s16(v8, v10);
  v301 = vsubq_s16(v5, v7);
  v270 = vshlq_n_s16(v286, 2uLL);
  v271 = vshlq_n_s16(v287, 2uLL);
  v272 = vshlq_n_s16(v288, 2uLL);
  v273 = vshlq_n_s16(v289, 2uLL);
  v274 = vshlq_n_s16(v290, 2uLL);
  v275 = vshlq_n_s16(v291, 2uLL);
  v276 = vshlq_n_s16(v292, 2uLL);
  v277 = vshlq_n_s16(v293, 2uLL);
  v278 = vshlq_n_s16(v294, 2uLL);
  v279 = vshlq_n_s16(v295, 2uLL);
  v280 = vshlq_n_s16(v296, 2uLL);
  v281 = vshlq_n_s16(v297, 2uLL);
  v282 = vshlq_n_s16(v298, 2uLL);
  v283 = vshlq_n_s16(v299, 2uLL);
  v284 = vshlq_n_s16(v300, 2uLL);
  v285 = vshlq_n_s16(v301, 2uLL);
  vpx_fdct8x16_body(&v270, &v286);
  v29 = v4[1];
  v30 = *(++v4 + v252);
  v31 = *(v4 + v6);
  v32 = *(v4 + v251);
  v270 = vaddq_s16(v30, v29);
  v271 = vaddq_s16(v32, v31);
  v33 = *(v4 + v11);
  v34 = *(v4 + v250);
  v35 = *(v4 + v249);
  v36 = *(v4 + v248);
  v272 = vaddq_s16(v34, v33);
  v273 = vaddq_s16(v36, v35);
  v37 = *(v4 + v16);
  v38 = *(v4 + v247);
  v39 = *(v4 + v19);
  v40 = *(v4 + v21);
  v274 = vaddq_s16(v38, v37);
  v275 = vaddq_s16(v40, v39);
  v41 = *(v4 + v23);
  v42 = *(v4 + v25);
  v43 = *(v4 + v9);
  v44 = v4[v246];
  v276 = vaddq_s16(v42, v41);
  v277 = vaddq_s16(v44, v43);
  v278 = vsubq_s16(v43, v44);
  v279 = vsubq_s16(v41, v42);
  v280 = vsubq_s16(v39, v40);
  v281 = vsubq_s16(v37, v38);
  v282 = vsubq_s16(v35, v36);
  v283 = vsubq_s16(v33, v34);
  v284 = vsubq_s16(v31, v32);
  v285 = vsubq_s16(v29, v30);
  v254 = vshlq_n_s16(v270, 2uLL);
  v255 = vshlq_n_s16(v271, 2uLL);
  v256 = vshlq_n_s16(v272, 2uLL);
  v257 = vshlq_n_s16(v273, 2uLL);
  v258 = vshlq_n_s16(v274, 2uLL);
  v259 = vshlq_n_s16(v275, 2uLL);
  v260 = vshlq_n_s16(v276, 2uLL);
  v261 = vshlq_n_s16(v277, 2uLL);
  v262 = vshlq_n_s16(v278, 2uLL);
  v263 = vshlq_n_s16(v279, 2uLL);
  v264 = vshlq_n_s16(v280, 2uLL);
  v265 = vshlq_n_s16(v281, 2uLL);
  v266 = vshlq_n_s16(v282, 2uLL);
  v267 = vshlq_n_s16(v283, 2uLL);
  v268 = vshlq_n_s16(v284, 2uLL);
  v269 = vshlq_n_s16(v285, 2uLL);
  vpx_fdct8x16_body(&v254, &v270);
  v45 = vtrn1q_s16(v286, v287);
  v46 = vtrn2q_s16(v286, v287);
  v47 = vtrn1q_s16(v288, v289);
  v48 = vtrn2q_s16(v288, v289);
  v49 = vtrn1q_s16(v290, v291);
  v50 = vtrn2q_s16(v290, v291);
  v51 = vtrn1q_s16(v292, v293);
  v52 = vtrn2q_s16(v292, v293);
  v53 = vtrn1q_s32(v45, v47);
  v54 = vtrn2q_s32(v45, v47);
  v55 = vtrn1q_s32(v46, v48);
  v56 = vtrn2q_s32(v46, v48);
  v57 = vtrn1q_s32(v49, v51);
  v58 = vtrn2q_s32(v49, v51);
  v59 = vtrn1q_s32(v50, v52);
  v60 = vtrn2q_s32(v50, v52);
  v61 = vzip2q_s64(v53, v57);
  v48.i64[0] = v53.i64[0];
  v48.i64[1] = v57.i64[0];
  v62 = vzip2q_s64(v55, v59);
  v55.i64[1] = v59.i64[0];
  v63 = vzip2q_s64(v54, v58);
  v59.i64[0] = v54.i64[0];
  v59.i64[1] = v58.i64[0];
  v64 = vzip2q_s64(v56, v60);
  v56.i64[1] = v60.i64[0];
  v65 = vtrn1q_s16(v270, v271);
  v66 = vtrn2q_s16(v270, v271);
  v67 = vtrn1q_s16(v272, v273);
  v68 = vtrn2q_s16(v272, v273);
  v69 = vtrn1q_s16(v274, v275);
  v70 = vtrn2q_s16(v274, v275);
  v71 = vtrn1q_s16(v276, v277);
  v72 = vtrn2q_s16(v276, v277);
  v73 = vtrn1q_s32(v65, v67);
  v74 = vtrn2q_s32(v65, v67);
  v75 = vtrn1q_s32(v66, v68);
  v76 = vtrn2q_s32(v66, v68);
  v77 = vtrn1q_s32(v69, v71);
  v78 = vtrn2q_s32(v69, v71);
  v79 = vtrn1q_s32(v70, v72);
  v80 = vtrn2q_s32(v70, v72);
  v81 = vzip2q_s64(v73, v77);
  v73.i64[1] = v77.i64[0];
  v82.i64[0] = v75.i64[0];
  v82.i64[1] = v79.i64[0];
  v83.i64[0] = v74.i64[0];
  v83.i64[1] = v78.i64[0];
  v84 = vzip2q_s64(v76, v80);
  v85.i64[0] = v76.i64[0];
  v86.i64[0] = 0x1000100010001;
  v86.i64[1] = 0x1000100010001;
  v87 = vaddq_s16(v48, v86);
  v88 = vaddq_s16(v55, v86);
  v254 = vshrq_n_s16(v87, 2uLL);
  v255 = vshrq_n_s16(v88, 2uLL);
  v89 = vaddq_s16(v59, v86);
  v90 = vaddq_s16(v56, v86);
  v256 = vshrq_n_s16(v89, 2uLL);
  v257 = vshrq_n_s16(v90, 2uLL);
  v91 = vaddq_s16(v61, v86);
  v92 = vaddq_s16(v62, v86);
  v258 = vshrq_n_s16(v91, 2uLL);
  v259 = vshrq_n_s16(v92, 2uLL);
  v93 = vaddq_s16(v63, v86);
  v94 = vaddq_s16(v64, v86);
  v260 = vshrq_n_s16(v93, 2uLL);
  v261 = vshrq_n_s16(v94, 2uLL);
  v262 = vshrq_n_s16(vaddq_s16(v73, v86), 2uLL);
  v263 = vshrq_n_s16(vaddq_s16(v82, v86), 2uLL);
  v85.i64[1] = v80.i64[0];
  v264 = vshrq_n_s16(vaddq_s16(v83, v86), 2uLL);
  v265 = vshrq_n_s16(vaddq_s16(v85, v86), 2uLL);
  v266 = vshrq_n_s16(vaddq_s16(v81, v86), 2uLL);
  v267 = vshrq_n_s16(vaddq_s16(vzip2q_s64(v75, v79), v86), 2uLL);
  v268 = vshrq_n_s16(vaddq_s16(vzip2q_s64(v74, v78), v86), 2uLL);
  v269 = vshrq_n_s16(vaddq_s16(v84, v86), 2uLL);
  v253[0] = vsraq_n_s16(v269, v87, 2uLL);
  v253[1] = vsraq_n_s16(v268, v88, 2uLL);
  v253[2] = vsraq_n_s16(v267, v89, 2uLL);
  v253[3] = vsraq_n_s16(v266, v90, 2uLL);
  v253[4] = vsraq_n_s16(v265, v91, 2uLL);
  v253[5] = vsraq_n_s16(v264, v92, 2uLL);
  v253[6] = vsraq_n_s16(v263, v93, 2uLL);
  v253[7] = vsraq_n_s16(v262, v94, 2uLL);
  v253[8] = vsubq_s16(v261, v262);
  v253[9] = vsubq_s16(v260, v263);
  v253[10] = vsubq_s16(v259, v264);
  v253[11] = vsubq_s16(v258, v265);
  v253[12] = vsubq_s16(v257, v266);
  v253[13] = vsubq_s16(v256, v267);
  v253[14] = vsubq_s16(v255, v268);
  v253[15] = vsubq_s16(v254, v269);
  vpx_fdct8x16_body(v253, &v254);
  v95 = vtrn1q_s16(v254, v255);
  v96 = vtrn2q_s16(v254, v255);
  v97 = vtrn1q_s16(v256, v257);
  v98 = vtrn2q_s16(v256, v257);
  v99 = vtrn1q_s16(v258, v259);
  v100 = vtrn2q_s16(v258, v259);
  v101 = vtrn1q_s16(v260, v261);
  v102 = vtrn2q_s16(v260, v261);
  v103 = vtrn1q_s32(v95, v97);
  v104 = vtrn1q_s32(v99, v101);
  v105 = vzip2q_s64(v103, v104);
  v106 = vmovl_s16(*v103.i8);
  v107.i64[0] = v103.i64[0];
  v107.i64[1] = v104.i64[0];
  v108 = vtrn1q_s32(v96, v98);
  v109 = vtrn1q_s32(v100, v102);
  v110 = vzip2q_s64(v108, v109);
  v111 = vmovl_s16(*v108.i8);
  v108.i64[1] = v109.i64[0];
  v112 = vtrn2q_s32(v95, v97);
  v113 = vtrn2q_s32(v99, v101);
  v114 = vzip2q_s64(v112, v113);
  v115 = vmovl_s16(*v112.i8);
  v112.i64[1] = v113.i64[0];
  v116 = vtrn2q_s32(v96, v98);
  v117 = vtrn2q_s32(v100, v102);
  v118 = vzip2q_s64(v116, v117);
  v119 = vmovl_s16(*v116.i8);
  v116.i64[1] = v117.i64[0];
  v254 = v107;
  v255 = v108;
  v256 = v112;
  v257 = v116;
  v258 = v105;
  v259 = v110;
  v260 = v114;
  v261 = v118;
  v120 = v118;
  v121 = vtrn1q_s16(v262, v263);
  v122 = vtrn2q_s16(v262, v263);
  v123 = vtrn1q_s16(v264, v265);
  v124 = vtrn2q_s16(v264, v265);
  v125 = vtrn1q_s16(v266, v267);
  v126 = vtrn2q_s16(v266, v267);
  v127 = vtrn1q_s16(v268, v269);
  v128 = vtrn2q_s16(v268, v269);
  v129 = vtrn1q_s32(v121, v123);
  v130 = vtrn1q_s32(v122, v124);
  v131 = vtrn2q_s32(v122, v124);
  v132 = vtrn1q_s32(v125, v127);
  v133 = vtrn2q_s32(v126, v128);
  v134 = vzip2q_s64(v129, v132);
  v129.i64[1] = v132.i64[0];
  v135 = vzip2q_s64(v131, v133);
  v85.i64[0] = v131.i64[0];
  v85.i64[1] = v133.i64[0];
  v136 = vtrn1q_s32(v126, v128);
  v137 = vzip2q_s64(v130, v136);
  v130.i64[1] = v136.i64[0];
  v138 = vtrn2q_s32(v121, v123);
  v139 = vtrn2q_s32(v125, v127);
  v140 = vzip2q_s64(v138, v139);
  v141 = vmovl_s16(*v138.i8);
  v138.i64[1] = v139.i64[0];
  v262 = v129;
  v263 = v130;
  v264 = v138;
  v265 = v85;
  v266 = v134;
  v267 = v137;
  v268 = v140;
  v269 = v135;
  *a2 = v106;
  *(a2 + 16) = vmovl_s16(*v104.i8);
  *(a2 + 64) = v111;
  *(a2 + 80) = vmovl_s16(*v109.i8);
  *(a2 + 128) = v115;
  *(a2 + 144) = vmovl_s16(*v113.i8);
  *(a2 + 192) = v119;
  *(a2 + 208) = vmovl_s16(*v117.i8);
  *(a2 + 256) = vmovl_s16(*v105.i8);
  *(a2 + 272) = vmovl_high_s16(v105);
  v142 = v260;
  v143 = vmovl_high_s16(v259);
  *(a2 + 320) = vmovl_s16(*v259.i8);
  *(a2 + 336) = v143;
  *(a2 + 384) = vmovl_s16(*v142.i8);
  *(a2 + 400) = vmovl_high_s16(v142);
  *(a2 + 448) = vmovl_s16(*v120.i8);
  *(a2 + 464) = vmovl_high_s16(v120);
  *(a2 + 32) = vmovl_s16(*v129.i8);
  *(a2 + 48) = vmovl_s16(*v132.i8);
  *(a2 + 96) = vmovl_s16(*v130.i8);
  *(a2 + 112) = vmovl_s16(*v136.i8);
  v144 = vmovl_s16(*v139.i8);
  v145 = vmovl_s16(*v265.i8);
  v146 = vmovl_high_s16(v265);
  v147 = vmovl_s16(*v266.i8);
  v148 = vmovl_high_s16(v266);
  v149 = vmovl_s16(*v267.i8);
  v150 = vmovl_high_s16(v267);
  v151 = vmovl_s16(*v268.i8);
  v152 = vmovl_high_s16(v268);
  v153 = vtrn1q_s16(v294, v295);
  v154 = vtrn2q_s16(v294, v295);
  v155 = vtrn1q_s16(v296, v297);
  v156 = vtrn2q_s16(v296, v297);
  v157 = vtrn1q_s16(v298, v299);
  v158 = vtrn2q_s16(v298, v299);
  v159 = vtrn1q_s16(v300, v301);
  v160 = vtrn2q_s16(v300, v301);
  v161 = vtrn1q_s32(v153, v155);
  *(a2 + 160) = v141;
  *(a2 + 176) = v144;
  v162 = vtrn2q_s32(v153, v155);
  v163 = vtrn1q_s32(v154, v156);
  v164 = vtrn2q_s32(v154, v156);
  *(a2 + 224) = v145;
  *(a2 + 240) = v146;
  v165 = vtrn1q_s32(v157, v159);
  v166 = vtrn2q_s32(v157, v159);
  v167 = vtrn1q_s32(v158, v160);
  v168 = vtrn2q_s32(v158, v160);
  v169 = vzip2q_s64(v161, v165);
  v145.i64[0] = v161.i64[0];
  v145.i64[1] = v165.i64[0];
  v170 = vzip2q_s64(v163, v167);
  v156.i64[0] = v163.i64[0];
  v156.i64[1] = v167.i64[0];
  v171 = vzip2q_s64(v162, v166);
  v162.i64[1] = v166.i64[0];
  v172 = vzip2q_s64(v164, v168);
  v158.i64[0] = v164.i64[0];
  v158.i64[1] = v168.i64[0];
  v173 = vtrn1q_s16(v278, v279);
  v174 = vtrn2q_s16(v278, v279);
  v175 = vtrn1q_s16(v280, v281);
  v176 = vtrn2q_s16(v280, v281);
  v177 = vtrn1q_s16(v282, v283);
  v178 = vtrn2q_s16(v282, v283);
  v179 = vtrn1q_s16(v284, v285);
  v180 = vtrn2q_s16(v284, v285);
  v181 = vmovl_s16(*v269.i8);
  v182 = vmovl_high_s16(v269);
  *(a2 + 288) = v147;
  *(a2 + 304) = v148;
  v183 = vtrn1q_s32(v173, v175);
  v184 = vtrn2q_s32(v173, v175);
  v185 = vtrn1q_s32(v174, v176);
  *(a2 + 352) = v149;
  *(a2 + 368) = v150;
  v186 = vtrn2q_s32(v174, v176);
  v187 = vtrn1q_s32(v177, v179);
  v188 = vtrn2q_s32(v177, v179);
  *(a2 + 416) = v151;
  *(a2 + 432) = v152;
  v189 = vtrn1q_s32(v178, v180);
  v190 = vzip2q_s64(v183, v187);
  v175.i64[0] = v183.i64[0];
  v175.i64[1] = v187.i64[0];
  v191 = vzip2q_s64(v185, v189);
  v177.i64[0] = v185.i64[0];
  v177.i64[1] = v189.i64[0];
  v192 = vtrn2q_s32(v178, v180);
  v193 = vzip2q_s64(v184, v188);
  v180.i64[0] = v184.i64[0];
  v180.i64[1] = v188.i64[0];
  *(a2 + 480) = v181;
  *(a2 + 496) = v182;
  v194 = vzip2q_s64(v186, v192);
  v181.i64[0] = v186.i64[0];
  v181.i64[1] = v192.i64[0];
  v195.i64[0] = 0x1000100010001;
  v195.i64[1] = 0x1000100010001;
  v196 = vaddq_s16(v145, v195);
  v197 = vaddq_s16(v156, v195);
  v270 = vshrq_n_s16(v196, 2uLL);
  v271 = vshrq_n_s16(v197, 2uLL);
  v198 = vaddq_s16(v162, v195);
  v199 = vaddq_s16(v158, v195);
  v272 = vshrq_n_s16(v198, 2uLL);
  v273 = vshrq_n_s16(v199, 2uLL);
  v200 = vaddq_s16(v169, v195);
  v201 = vaddq_s16(v170, v195);
  v274 = vshrq_n_s16(v200, 2uLL);
  v275 = vshrq_n_s16(v201, 2uLL);
  v202 = vaddq_s16(v171, v195);
  v203 = vaddq_s16(v172, v195);
  v276 = vshrq_n_s16(v202, 2uLL);
  v277 = vshrq_n_s16(v203, 2uLL);
  v278 = vshrq_n_s16(vaddq_s16(v175, v195), 2uLL);
  v279 = vshrq_n_s16(vaddq_s16(v177, v195), 2uLL);
  v280 = vshrq_n_s16(vaddq_s16(v180, v195), 2uLL);
  v281 = vshrq_n_s16(vaddq_s16(v181, v195), 2uLL);
  v282 = vshrq_n_s16(vaddq_s16(v190, v195), 2uLL);
  v283 = vshrq_n_s16(vaddq_s16(v191, v195), 2uLL);
  v180.i64[0] = 0x1000100010001;
  v180.i64[1] = 0x1000100010001;
  v284 = vshrq_n_s16(vaddq_s16(v193, v195), 2uLL);
  v285 = vshrq_n_s16(vaddq_s16(v194, v180), 2uLL);
  v286 = vsraq_n_s16(v285, v196, 2uLL);
  v287 = vsraq_n_s16(v284, v197, 2uLL);
  v288 = vsraq_n_s16(v283, v198, 2uLL);
  v289 = vsraq_n_s16(v282, v199, 2uLL);
  v290 = vsraq_n_s16(v281, v200, 2uLL);
  v291 = vsraq_n_s16(v280, v201, 2uLL);
  v292 = vsraq_n_s16(v279, v202, 2uLL);
  v293 = vsraq_n_s16(v278, v203, 2uLL);
  v294 = vsubq_s16(v277, v278);
  v295 = vsubq_s16(v276, v279);
  v296 = vsubq_s16(v275, v280);
  v297 = vsubq_s16(v274, v281);
  v298 = vsubq_s16(v273, v282);
  v299 = vsubq_s16(v272, v283);
  v300 = vsubq_s16(v271, v284);
  v301 = vsubq_s16(v270, v285);
  vpx_fdct8x16_body(&v286, &v270);
  v204 = vtrn1q_s16(v270, v271);
  v205 = vtrn2q_s16(v270, v271);
  v206 = vtrn1q_s16(v272, v273);
  v207 = vtrn2q_s16(v272, v273);
  v208 = vtrn1q_s16(v274, v275);
  v209 = vtrn2q_s16(v274, v275);
  v210 = vtrn1q_s16(v276, v277);
  v211 = vtrn2q_s16(v276, v277);
  v212 = vtrn2q_s32(v204, v206);
  v213 = vtrn1q_s32(v205, v207);
  v214 = vtrn2q_s32(v205, v207);
  v215 = vtrn2q_s32(v208, v210);
  v216 = vtrn1q_s32(v209, v211);
  v217 = vtrn2q_s32(v209, v211);
  v275 = vzip2q_s64(v213, v216);
  v276 = vzip2q_s64(v212, v215);
  v277 = vzip2q_s64(v214, v217);
  v218 = v277;
  v219 = vtrn1q_s16(v278, v279);
  v220 = vtrn2q_s16(v278, v279);
  v221 = vtrn1q_s16(v280, v281);
  v222 = vtrn2q_s16(v280, v281);
  v223 = vtrn1q_s16(v282, v283);
  v224 = vtrn2q_s16(v282, v283);
  v225 = vtrn1q_s16(v284, v285);
  v226 = vtrn2q_s16(v284, v285);
  v227 = vtrn2q_s32(v220, v222);
  v228 = vtrn2q_s32(v224, v226);
  v229 = vzip2q_s64(v227, v228);
  v227.i64[1] = v228.i64[0];
  v230 = vtrn1q_s32(v219, v221);
  v231 = vtrn2q_s32(v219, v221);
  v232 = vtrn1q_s32(v220, v222);
  v233 = vtrn1q_s32(v223, v225);
  v281 = v227;
  v282 = vzip2q_s64(v230, v233);
  v234 = vtrn2q_s32(v223, v225);
  v235 = vtrn1q_s32(v224, v226);
  v283 = vzip2q_s64(v232, v235);
  v284 = vzip2q_s64(v231, v234);
  v236 = vtrn1q_s32(v204, v206);
  v285 = v229;
  v237 = vtrn1q_s32(v208, v210);
  *(a2 + 512) = vmovl_s16(*v236.i8);
  *(a2 + 528) = vmovl_s16(*v237.i8);
  v238 = vzip2q_s64(v236, v237);
  *(a2 + 576) = vmovl_s16(*v213.i8);
  *(a2 + 592) = vmovl_s16(*v216.i8);
  *(a2 + 640) = vmovl_s16(*v212.i8);
  *(a2 + 656) = vmovl_s16(*v215.i8);
  *(a2 + 704) = vmovl_s16(*v214.i8);
  *(a2 + 720) = vmovl_s16(*v217.i8);
  *(a2 + 768) = vmovl_s16(*v238.i8);
  *(a2 + 784) = vmovl_high_s16(v238);
  v239 = v276;
  v240 = vmovl_high_s16(v275);
  *(a2 + 832) = vmovl_s16(*v275.i8);
  *(a2 + 848) = v240;
  *(a2 + 896) = vmovl_s16(*v239.i8);
  *(a2 + 912) = vmovl_high_s16(v239);
  *(a2 + 960) = vmovl_s16(*v218.i8);
  *(a2 + 976) = vmovl_high_s16(v218);
  *(a2 + 544) = vmovl_s16(*v230.i8);
  *(a2 + 560) = vmovl_s16(*v233.i8);
  *(a2 + 608) = vmovl_s16(*v232.i8);
  *(a2 + 624) = vmovl_s16(*v235.i8);
  *(a2 + 672) = vmovl_s16(*v231.i8);
  *(a2 + 688) = vmovl_s16(*v234.i8);
  v241 = v282;
  v242 = vmovl_high_s16(v281);
  *(a2 + 736) = vmovl_s16(*v281.i8);
  *(a2 + 752) = v242;
  *(a2 + 800) = vmovl_s16(*v241.i8);
  *(a2 + 816) = vmovl_high_s16(v241);
  v243 = v284;
  v244 = vmovl_high_s16(v283);
  *(a2 + 864) = vmovl_s16(*v283.i8);
  *(a2 + 880) = v244;
  *(a2 + 928) = vmovl_s16(*v243.i8);
  *(a2 + 944) = vmovl_high_s16(v243);
  v245 = vmovl_high_s16(v285);
  *(a2 + 992) = vmovl_s16(*v285.i8);
  *(a2 + 1008) = v245;
}

int16x8_t vpx_fdct8x16_body(int16x8_t *a1, int16x8_t *a2)
{
  v2 = a1[1];
  v4 = a1[6];
  v3 = a1[7];
  v5 = vaddq_s16(v3, *a1);
  v6 = vaddq_s16(v4, v2);
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = vaddq_s16(v9, v7);
  v12 = vaddq_s16(v10, v8);
  v13 = vsubq_s16(v8, v10);
  v14 = vsubq_s16(v7, v9);
  v15 = vsubq_s16(v2, v4);
  v16 = vsubq_s16(*a1, v3);
  v17 = vaddq_s16(v12, v5);
  v18 = vaddq_s16(v11, v6);
  v19 = vsubq_s16(v6, v11);
  v20 = vsubq_s16(v5, v12);
  v21 = vdupq_n_s32(0x5A820000u);
  *a2 = vuzp1q_s16(vqrdmulhq_s32(vaddl_s16(*v17.i8, *v18.i8), v21), vqrdmulhq_s32(vaddl_high_s16(v17, v18), v21));
  a2[8] = vuzp1q_s16(vqrdmulhq_s32(vsubl_s16(*v17.i8, *v18.i8), v21), vqrdmulhq_s32(vsubl_high_s16(v17, v18), v21));
  v22 = vdupq_n_s16(0x3B21u);
  v23 = vdupq_n_s16(0x187Eu);
  a2[4] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v19.i8, *v23.i8), *v20.i8, *v22.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v19, v23), v20, v22), 0xEuLL);
  a2[12] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(vmull_s16(*v20.i8, *v23.i8), *v19.i8, *v22.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v20, v23), v19, v22), 0xEuLL);
  v24 = vdupq_n_s16(0x5A82u);
  v25 = vqrdmulhq_s16(vaddq_s16(v14, v15), v24);
  v26 = vqrdmulhq_s16(vsubq_s16(v15, v14), v24);
  v27 = vaddq_s16(v26, v13);
  v28 = vsubq_s16(v13, v26);
  v29 = vsubq_s16(v16, v25);
  v30 = vdupq_n_s16(0x3EC5u);
  v31 = vaddq_s16(v25, v16);
  v32 = vdupq_n_s16(0xC7Cu);
  a2[2] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v27.i8, *v32.i8), *v31.i8, *v30.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v27, v32), v31, v30), 0xEuLL);
  a2[14] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(vmull_s16(*v31.i8, *v32.i8), *v27.i8, *v30.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v31, v32), v27, v30), 0xEuLL);
  v33 = vdupq_n_s16(0x238Eu);
  v34 = vdupq_n_s16(0x3537u);
  a2[10] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v28.i8, *v34.i8), *v29.i8, *v33.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v28, v34), v29, v33), 0xEuLL);
  a2[6] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(vmull_s16(*v29.i8, *v34.i8), *v28.i8, *v33.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v29, v34), v28, v33), 0xEuLL);
  v36 = a1[12];
  v35 = a1[13];
  v37 = a1[10];
  v38 = a1[11];
  v39 = vqrdmulhq_s16(vaddq_s16(v37, v35), v24);
  v40 = vqrdmulhq_s16(vsubq_s16(v35, v37), v24);
  v41 = vqrdmulhq_s16(vaddq_s16(v38, v36), v24);
  v42 = vqrdmulhq_s16(vsubq_s16(v36, v38), v24);
  v43 = a1[8];
  v44 = a1[9];
  v45 = vaddq_s16(v43, v42);
  v46 = vaddq_s16(v44, v40);
  v47 = vsubq_s16(v44, v40);
  v48 = vsubq_s16(v43, v42);
  v50 = a1[14];
  v49 = a1[15];
  v51 = vsubq_s16(v49, v41);
  v52 = vsubq_s16(v50, v39);
  v53 = vaddq_s16(v50, v39);
  v54 = vaddq_s16(v49, v41);
  v55 = vmlsl_s16(vmull_s16(*v53.i8, *v23.i8), *v46.i8, *v22.i8);
  v56 = vmlsl_high_s16(vmull_high_s16(v53, v23), v46, v22);
  v57 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v46.i8, *v23.i8), *v53.i8, *v22.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v46, v23), v53, v22), 0xEuLL);
  v58 = vqrshrn_high_n_s32(vqrshrn_n_s32(v55, 0xEuLL), v56, 0xEuLL);
  v59 = vmull_s16(*v47.i8, *v22.i8);
  v60 = vmull_high_s16(v47, v22);
  v61 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v52.i8, *v22.i8), *v47.i8, *v23.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v52, v22), v47, v23), 0xEuLL);
  v62 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(v59, *v52.i8, *v23.i8), 0xEuLL), vmlsl_high_s16(v60, v52, v23), 0xEuLL);
  v63 = vaddq_s16(v58, v45);
  v64 = vsubq_s16(v45, v58);
  v65 = vaddq_s16(v61, v48);
  v66 = vsubq_s16(v48, v61);
  v67 = vsubq_s16(v51, v62);
  v68 = vaddq_s16(v62, v51);
  v69 = vsubq_s16(v54, v57);
  v70 = vdupq_n_s16(0x289Au);
  v71 = vaddq_s16(v57, v54);
  v72 = vdupq_n_s16(0x3179u);
  a2[9] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v64.i8, *v72.i8), *v69.i8, *v70.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v64, v72), v69, v70), 0xEuLL);
  a2[7] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(vmull_s16(*v69.i8, *v72.i8), *v64.i8, *v70.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v69, v72), v64, v70), 0xEuLL);
  v73 = vdupq_n_s16(0x3FB1u);
  v74 = vdupq_n_s16(0x646u);
  a2[1] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v63.i8, *v74.i8), *v71.i8, *v73.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v63, v74), v71, v73), 0xEuLL);
  a2[15] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(vmull_s16(*v71.i8, *v74.i8), *v63.i8, *v73.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v71, v74), v63, v73), 0xEuLL);
  v75 = vdupq_n_s16(0x1294u);
  v76 = vdupq_n_s16(0x3D3Fu);
  a2[13] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v66.i8, *v76.i8), *v67.i8, *v75.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v66, v76), v67, v75), 0xEuLL);
  v77 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(vmull_s16(*v67.i8, *v76.i8), *v66.i8, *v75.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v67, v76), v66, v75), 0xEuLL);
  v78 = vdupq_n_s16(0x3871u);
  a2[3] = v77;
  v79 = vdupq_n_s16(0x1E2Bu);
  v80 = vmlsl_s16(vmull_s16(*v68.i8, *v79.i8), *v65.i8, *v78.i8);
  v81 = vmlsl_high_s16(vmull_high_s16(v68, v79), v65, v78);
  result = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v65.i8, *v79.i8), *v68.i8, *v78.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v65, v79), v68, v78), 0xEuLL);
  a2[5] = result;
  a2[11] = vqrshrn_high_n_s32(vqrshrn_n_s32(v80, 0xEuLL), v81, 0xEuLL);
  return result;
}

void vpx_highbd_fdct16x16_neon(int16x8_t *a1, float32x4_t *a2, int a3)
{
  v4 = a1;
  v312 = *MEMORY[0x277D85DE8];
  v5 = 2 * a3;
  v245 = 30 * a3;
  v6 = *(a1 + v245);
  v7 = *(a1 + v5);
  v8 = 16 * a3;
  v238 = 2 * (v8 - v5);
  v9 = *(a1 + v238);
  v10 = 4 * a3;
  v11 = *(a1 + v10);
  v231 = 26 * a3;
  v12 = *(a1 + v231);
  v224 = 6 * a3;
  v13 = *(a1 + v224);
  v221 = 24 * a3;
  v14 = *(a1 + v221);
  v15 = *a1;
  v16 = 8 * a3;
  v17 = *(a1 + v16);
  v216 = 22 * a3;
  v18 = *(a1 + v216);
  v213 = 10 * a3;
  v19 = *(a1 + v213);
  v20 = 20 * a3;
  v21 = *(a1 + v20);
  v22 = 12 * a3;
  v23 = *(a1 + v22);
  v24 = 18 * a3;
  v25 = *(a1 + v24);
  v26 = *(a1 + v8 - v5);
  v27 = a1[v8 / 0x10];
  v28 = vaddq_s16(v6, *a1);
  v29 = vaddq_s16(v9, v7);
  v296 = vshll_n_s16(*v28.i8, 2uLL);
  v297 = vshll_n_s16(*v29.i8, 2uLL);
  v30 = vaddq_s16(v12, v11);
  v31 = vaddq_s16(v14, v13);
  v298 = vshll_n_s16(*v30.i8, 2uLL);
  v299 = vshll_n_s16(*v31.i8, 2uLL);
  v32 = vaddq_s16(v18, v17);
  v33 = vaddq_s16(v21, v19);
  v300 = vshll_n_s16(*v32.i8, 2uLL);
  v301 = vshll_n_s16(*v33.i8, 2uLL);
  v34 = vaddq_s16(v25, v23);
  v35 = vaddq_s16(v27, v26);
  v302 = vshll_n_s16(*v34.i8, 2uLL);
  v303 = vshll_n_s16(*v35.i8, 2uLL);
  v36 = vsubq_s16(v26, v27);
  v37 = vsubq_s16(v23, v25);
  v304 = vshll_n_s16(*v36.i8, 2uLL);
  v305 = vshll_n_s16(*v37.i8, 2uLL);
  v38 = vsubq_s16(v19, v21);
  v39 = vsubq_s16(v17, v18);
  v306 = vshll_n_s16(*v38.i8, 2uLL);
  v307 = vshll_n_s16(*v39.i8, 2uLL);
  v40 = vsubq_s16(v13, v14);
  v41 = vsubq_s16(v11, v12);
  v308 = vshll_n_s16(*v40.i8, 2uLL);
  v309 = vshll_n_s16(*v41.i8, 2uLL);
  v42 = vsubq_s16(v7, v9);
  v43 = vsubq_s16(v15, v6);
  v310 = vshll_n_s16(*v42.i8, 2uLL);
  v311 = vshll_n_s16(*v43.i8, 2uLL);
  v264 = vshll_high_n_s16(v28, 2uLL);
  v265 = vshll_high_n_s16(v29, 2uLL);
  v266 = vshll_high_n_s16(v30, 2uLL);
  v267 = vshll_high_n_s16(v31, 2uLL);
  v268 = vshll_high_n_s16(v32, 2uLL);
  v269 = vshll_high_n_s16(v33, 2uLL);
  v270 = vshll_high_n_s16(v34, 2uLL);
  v271 = vshll_high_n_s16(v35, 2uLL);
  v272 = vshll_high_n_s16(v36, 2uLL);
  v273 = vshll_high_n_s16(v37, 2uLL);
  v274 = vshll_high_n_s16(v38, 2uLL);
  v275 = vshll_high_n_s16(v39, 2uLL);
  v276 = vshll_high_n_s16(v40, 2uLL);
  v277 = vshll_high_n_s16(v41, 2uLL);
  v278 = vshll_high_n_s16(v42, 2uLL);
  v279 = vshll_high_n_s16(v43, 2uLL);
  vpx_highbd_fdct8x16_body(&v296, &v264);
  v44 = v4[1];
  v45 = *(++v4 + v245);
  v46 = *(v4 + v5);
  v47 = vaddq_s16(v45, v44);
  v48 = *(v4 + v238);
  v49 = vaddq_s16(v48, v46);
  v50 = *(v4 + v10);
  v51 = *(v4 + v231);
  v52 = *(v4 + v224);
  v53 = *(v4 + v221);
  v54 = vaddq_s16(v51, v50);
  v55 = vaddq_s16(v53, v52);
  v56 = *(v4 + v16);
  v57 = *(v4 + v216);
  v58 = vaddq_s16(v57, v56);
  v59 = *(v4 + v213);
  v60 = *(v4 + v20);
  v61 = vaddq_s16(v60, v59);
  v62 = *(v4 + v22);
  v63 = *(v4 + v24);
  v64 = *(v4 + v8 - v5);
  v65 = vaddq_s16(v63, v62);
  v66 = v4[v8 / 0x10];
  v67 = vaddq_s16(v66, v64);
  v68 = vsubq_s16(v64, v66);
  v69 = vsubq_s16(v62, v63);
  v70 = vsubq_s16(v59, v60);
  v71 = vsubq_s16(v56, v57);
  v72 = vsubq_s16(v52, v53);
  v73 = vsubq_s16(v50, v51);
  v74 = vsubq_s16(v46, v48);
  v75 = vsubq_s16(v44, v45);
  v280 = vshll_n_s16(*v47.i8, 2uLL);
  v281 = vshll_n_s16(*v49.i8, 2uLL);
  v282 = vshll_n_s16(*v54.i8, 2uLL);
  v283 = vshll_n_s16(*v55.i8, 2uLL);
  v284 = vshll_n_s16(*v58.i8, 2uLL);
  v285 = vshll_n_s16(*v61.i8, 2uLL);
  v286 = vshll_n_s16(*v65.i8, 2uLL);
  v287 = vshll_n_s16(*v67.i8, 2uLL);
  v288 = vshll_n_s16(*v68.i8, 2uLL);
  v289 = vshll_n_s16(*v69.i8, 2uLL);
  v290 = vshll_n_s16(*v70.i8, 2uLL);
  v291 = vshll_n_s16(*v71.i8, 2uLL);
  v292 = vshll_n_s16(*v72.i8, 2uLL);
  v293 = vshll_n_s16(*v73.i8, 2uLL);
  v294 = vshll_n_s16(*v74.i8, 2uLL);
  v295 = vshll_n_s16(*v75.i8, 2uLL);
  v248 = vshll_high_n_s16(v47, 2uLL);
  v249 = vshll_high_n_s16(v49, 2uLL);
  v250 = vshll_high_n_s16(v54, 2uLL);
  v251 = vshll_high_n_s16(v55, 2uLL);
  v252 = vshll_high_n_s16(v58, 2uLL);
  v253 = vshll_high_n_s16(v61, 2uLL);
  v254 = vshll_high_n_s16(v65, 2uLL);
  v255 = vshll_high_n_s16(v67, 2uLL);
  v256 = vshll_high_n_s16(v68, 2uLL);
  v257 = vshll_high_n_s16(v69, 2uLL);
  v258 = vshll_high_n_s16(v70, 2uLL);
  v259 = vshll_high_n_s16(v71, 2uLL);
  v260 = vshll_high_n_s16(v72, 2uLL);
  v261 = vshll_high_n_s16(v73, 2uLL);
  v262 = vshll_high_n_s16(v74, 2uLL);
  v263 = vshll_high_n_s16(v75, 2uLL);
  vpx_highbd_fdct8x16_body(&v280, &v248);
  v76 = &v300;
  v329 = vld4q_f32(v76);
  v77 = &v268;
  v313 = vld4q_f32(v77);
  v217 = v313.val[0];
  v220 = v313.val[2];
  v78 = vtrn1q_s32(v296, v297);
  v79 = vtrn2q_s32(v296, v297);
  v313.val[2] = vtrn1q_s32(v298, v299);
  v80 = vtrn2q_s32(v298, v299);
  v81 = vtrn1q_s32(v264, v265);
  v82 = vtrn2q_s32(v264, v265);
  v83 = vtrn1q_s32(v266, v267);
  v84 = vtrn2q_s32(v266, v267);
  v232 = vzip2q_s64(v78, v313.val[2]);
  v78.i64[1] = v313.val[2].i64[0];
  v222 = vzip2q_s64(v79, v80);
  v239 = vzip2q_s64(v81, v83);
  v322 = vld4q_f32(v252.i32);
  v225 = vzip2q_s64(v82, v84);
  v85 = vtrn1q_s32(v280, v281);
  v86 = vtrn2q_s32(v280, v281);
  v87 = vtrn1q_s32(v282, v283);
  v88 = vtrn2q_s32(v282, v283);
  v89 = vtrn1q_s32(v248, v249);
  v90 = vtrn2q_s32(v248, v249);
  v313.val[0] = vtrn1q_s32(v250, v251);
  v79.i64[1] = v80.i64[0];
  v81.i64[1] = v83.i64[0];
  v82.i64[1] = v84.i64[0];
  v91 = vzip2q_s64(v85, v87);
  v84.i64[0] = v85.i64[0];
  v84.i64[1] = v87.i64[0];
  v92 = vzip2q_s64(v86, v88);
  v83.i64[0] = v86.i64[0];
  v83.i64[1] = v88.i64[0];
  v93 = vzip2q_s64(v89, v313.val[0]);
  v88.i64[0] = v89.i64[0];
  v88.i64[1] = v313.val[0].i64[0];
  v313.val[0] = vtrn2q_s32(v250, v251);
  v94 = vzip2q_s64(v90, v313.val[0]);
  v89.i64[0] = v90.i64[0];
  v89.i64[1] = v313.val[0].i64[0];
  v95.i64[0] = 0x100000001;
  v95.i64[1] = 0x100000001;
  v96 = vaddq_s32(v78, v95);
  v97 = vaddq_s32(v329.val[0], v95);
  v98 = vaddq_s32(v329.val[1], v95);
  v99 = vaddq_s32(v329.val[2], v95);
  v329.val[3] = vaddq_s32(v329.val[3], v95);
  v329.val[1] = vaddq_s32(v217, v95);
  v329.val[2] = vaddq_s32(v313.val[1], v95);
  v100 = vaddq_s32(v220, v95);
  v218 = vaddq_s32(v313.val[3], v95);
  v214 = vaddq_s32(v322.val[0], v95);
  v313.val[2] = vaddq_s32(v322.val[1], v95);
  v205 = vaddq_s32(v322.val[2], v95);
  v322.val[0] = vaddq_s32(v322.val[3], v95);
  v313.val[0] = vaddq_s32(v79, v95);
  v101 = vshrq_n_s32(vaddq_s32(v93, v95), 2uLL);
  v322.val[1] = vshrq_n_s32(vaddq_s32(v94, v95), 2uLL);
  v210 = vsubq_s32(vshrq_n_s32(v96, 2uLL), v322.val[1]);
  v211 = v313.val[2];
  v102 = vsraq_n_s32(v322.val[1], v96, 2uLL);
  v103 = vsubq_s32(vshrq_n_s32(v313.val[0], 2uLL), v101);
  *(&v322 + 16) = vld4q_f32(v284.i32);
  v104 = vsraq_n_s32(v101, v313.val[0], 2uLL);
  v296 = v102;
  v313.val[0] = vaddq_s32(v232, v95);
  v297 = v104;
  v105 = vaddq_s32(v222, v95);
  v313.val[3] = vshrq_n_s32(vaddq_s32(v89, v95), 2uLL);
  v313.val[1] = vsubq_s32(vshrq_n_s32(v313.val[0], 2uLL), v313.val[3]);
  v106 = vsraq_n_s32(v313.val[3], v313.val[0], 2uLL);
  v107 = vaddq_s32(v81, v95);
  v108 = vshrq_n_s32(vaddq_s32(v88, v95), 2uLL);
  v313.val[3] = vsubq_s32(vshrq_n_s32(v105, 2uLL), v108);
  v109 = vsraq_n_s32(v108, v105, 2uLL);
  v110 = vaddq_s32(v82, v95);
  v111 = vshrq_n_s32(vaddq_s32(v91, v95), 2uLL);
  v112 = vshrq_n_s32(vaddq_s32(v92, v95), 2uLL);
  v298 = v106;
  v299 = v109;
  v113 = vsubq_s32(vshrq_n_s32(v107, 2uLL), v112);
  v114 = vsraq_n_s32(v112, v107, 2uLL);
  v115 = &v304;
  v329 = vld4q_f32(v115);
  v233 = v116;
  v235 = v117;
  v236 = v118;
  v237 = v329.val[0];
  v119 = vsubq_s32(vshrq_n_s32(v110, 2uLL), v111);
  v300 = v114;
  v120 = vaddq_s32(v239, v95);
  v301 = vsraq_n_s32(v111, v110, 2uLL);
  v121 = vaddq_s32(v225, v95);
  v313.val[2] = vshrq_n_s32(vaddq_s32(v83, v95), 2uLL);
  v313.val[0] = vsubq_s32(vshrq_n_s32(v120, 2uLL), v313.val[2]);
  v122 = vsraq_n_s32(v313.val[2], v120, 2uLL);
  v123 = vshrq_n_s32(vaddq_s32(v84, v95), 2uLL);
  v313.val[2] = vsubq_s32(vshrq_n_s32(v121, 2uLL), v123);
  v302 = v122;
  v124 = vshrq_n_s32(v205, 2uLL);
  v125 = vshrq_n_s32(v322.val[0], 2uLL);
  v303 = vsraq_n_s32(v123, v121, 2uLL);
  v126 = vsubq_s32(vshrq_n_s32(v97, 2uLL), v125);
  v127 = vsubq_s32(vshrq_n_s32(v98, 2uLL), v124);
  v128 = &v272;
  v329 = vld4q_f32(v128);
  v240 = v129;
  v242 = v130;
  v243 = v131;
  v244 = v329.val[0];
  v264 = vsraq_n_s32(v125, v97, 2uLL);
  v265 = vsraq_n_s32(v124, v98, 2uLL);
  v132 = vshrq_n_s32(v211, 2uLL);
  v133 = vsubq_s32(vshrq_n_s32(v99, 2uLL), v132);
  v134 = vshrq_n_s32(v214, 2uLL);
  v135 = vsubq_s32(vshrq_n_s32(v329.val[3], 2uLL), v134);
  v266 = vsraq_n_s32(v132, v99, 2uLL);
  v267 = vsraq_n_s32(v134, v329.val[3], 2uLL);
  v137 = vshrq_n_s32(vaddq_s32(v136, v95), 2uLL);
  v138 = vsubq_s32(vshrq_n_s32(v329.val[1], 2uLL), v137);
  v139 = vshrq_n_s32(vaddq_s32(v322.val[3], v95), 2uLL);
  v140 = vsubq_s32(vshrq_n_s32(v329.val[2], 2uLL), v139);
  v141 = vsraq_n_s32(v137, v329.val[1], 2uLL);
  v142 = vsraq_n_s32(v139, v329.val[2], 2uLL);
  v143 = &v308;
  v329 = vld4q_f32(v143);
  v226 = v144;
  v228 = v329.val[0];
  v229 = v329.val[1];
  v230 = v329.val[2];
  v268 = v141;
  v269 = v142;
  v145 = vshrq_n_s32(vaddq_s32(v322.val[2], v95), 2uLL);
  v329.val[1] = vshrq_n_s32(vaddq_s32(v322.val[1], v95), 2uLL);
  v329.val[0] = vsubq_s32(vshrq_n_s32(v218, 2uLL), v329.val[1]);
  v146 = &v276;
  v323 = vld4q_f32(v146);
  v223 = v323;
  v270 = vsraq_n_s32(v145, v100, 2uLL);
  v271 = vsraq_n_s32(v329.val[1], v218, 2uLL);
  v304 = v313.val[2];
  v305 = v313.val[0];
  v306 = v119;
  v307 = v113;
  *(&v329 + 16) = vld4q_f32(v288.i32);
  v206 = v329.val[1];
  v207 = v329.val[2];
  v208 = v329.val[3];
  v209 = v147;
  v308 = v313.val[3];
  v309 = v313.val[1];
  v310 = v103;
  v311 = v210;
  v272 = v329.val[0];
  v273 = vsubq_s32(vshrq_n_s32(v100, 2uLL), v145);
  v314 = vld4q_f32(v256.i32);
  v212 = v314;
  v315 = vld4q_f32(v292.i32);
  v219 = v315;
  v274 = v140;
  v275 = v138;
  v276 = v135;
  v277 = v133;
  v278 = v127;
  v279 = v126;
  v316 = vld4q_f32(v260.i32);
  v215 = v316;
  vpx_highbd_fdct8x16_body(&v296, &v264);
  v136.i64[0] = 0x100000001;
  v136.i64[1] = 0x100000001;
  v323.val[1] = vaddq_s32(v233, v136);
  v323.val[0] = vaddq_s32(v235, v136);
  v148 = vaddq_s32(v236, v136);
  v149 = vaddq_s32(v237, v136);
  v150 = vaddq_s32(v240, v136);
  v151 = vaddq_s32(v242, v136);
  v152 = vaddq_s32(v243, v136);
  v153 = vaddq_s32(v244, v136);
  v154 = vaddq_s32(v206, v136);
  v155 = vaddq_s32(v207, v136);
  v156 = vaddq_s32(v208, v136);
  v323.val[2] = vaddq_s32(v209, v136);
  v323.val[3] = vaddq_s32(v212.val[0], v136);
  v157 = vaddq_s32(v212.val[1], v136);
  v158 = vaddq_s32(v212.val[2], v136);
  v159 = vaddq_s32(v226, v136);
  v160 = vaddq_s32(v228, v136);
  v161 = vaddq_s32(v229, v136);
  v162 = vaddq_s32(v230, v136);
  v163 = vaddq_s32(v223.val[0], v136);
  v164 = vaddq_s32(v223.val[1], v136);
  v165 = vaddq_s32(v223.val[2], v136);
  v166 = vaddq_s32(v223.val[3], v136);
  v241 = vaddq_s32(v219.val[0], v136);
  v234 = vaddq_s32(v219.val[1], v136);
  v227 = vaddq_s32(v219.val[2], v136);
  v223.val[0] = vaddq_s32(v219.val[3], v136);
  v167 = vaddq_s32(v215.val[0], v136);
  v168 = vaddq_s32(v215.val[1], v136);
  v219.val[0] = vaddq_s32(v215.val[2], v136);
  v169 = vaddq_s32(v215.val[3], v136);
  v170 = vshrq_n_s32(vaddq_s32(v212.val[3], v136), 2uLL);
  v171 = vsubq_s32(vshrq_n_s32(v323.val[1], 2uLL), v170);
  v172 = vsraq_n_s32(v170, v323.val[1], 2uLL);
  v173 = vshrq_n_s32(v158, 2uLL);
  v323.val[1] = vsubq_s32(vshrq_n_s32(v323.val[0], 2uLL), v173);
  v280 = v172;
  v281 = vsraq_n_s32(v173, v323.val[0], 2uLL);
  v174 = vshrq_n_s32(v157, 2uLL);
  v323.val[0] = vsubq_s32(vshrq_n_s32(v148, 2uLL), v174);
  v175 = vsraq_n_s32(v174, v148, 2uLL);
  v323.val[3] = vshrq_n_s32(v323.val[3], 2uLL);
  v176 = vsubq_s32(vshrq_n_s32(v149, 2uLL), v323.val[3]);
  v282 = v175;
  v283 = vsraq_n_s32(v323.val[3], v149, 2uLL);
  v323.val[2] = vshrq_n_s32(v323.val[2], 2uLL);
  v177 = vsubq_s32(vshrq_n_s32(v150, 2uLL), v323.val[2]);
  v323.val[2] = vsraq_n_s32(v323.val[2], v150, 2uLL);
  v178 = vshrq_n_s32(v156, 2uLL);
  v179 = vsubq_s32(vshrq_n_s32(v151, 2uLL), v178);
  v284 = v323.val[2];
  v285 = vsraq_n_s32(v178, v151, 2uLL);
  v180 = vshrq_n_s32(v155, 2uLL);
  v181 = vsubq_s32(vshrq_n_s32(v152, 2uLL), v180);
  v182 = vsraq_n_s32(v180, v152, 2uLL);
  v183 = vshrq_n_s32(v154, 2uLL);
  v184 = vsubq_s32(vshrq_n_s32(v153, 2uLL), v183);
  v286 = v182;
  v287 = vsraq_n_s32(v183, v153, 2uLL);
  v185 = vshrq_n_s32(v169, 2uLL);
  v186 = vsubq_s32(vshrq_n_s32(v159, 2uLL), v185);
  v187 = vsraq_n_s32(v185, v159, 2uLL);
  v188 = vshrq_n_s32(v219.val[0], 2uLL);
  v189 = vsubq_s32(vshrq_n_s32(v160, 2uLL), v188);
  v248 = v187;
  v249 = vsraq_n_s32(v188, v160, 2uLL);
  v190 = vshrq_n_s32(v168, 2uLL);
  v191 = vsubq_s32(vshrq_n_s32(v161, 2uLL), v190);
  v192 = vsraq_n_s32(v190, v161, 2uLL);
  v193 = vshrq_n_s32(v167, 2uLL);
  v194 = vsubq_s32(vshrq_n_s32(v162, 2uLL), v193);
  v250 = v192;
  v251 = vsraq_n_s32(v193, v162, 2uLL);
  v195 = vshrq_n_s32(v223.val[0], 2uLL);
  v196 = vsubq_s32(vshrq_n_s32(v163, 2uLL), v195);
  v197 = vsraq_n_s32(v195, v163, 2uLL);
  v198 = vshrq_n_s32(v227, 2uLL);
  v199 = vsubq_s32(vshrq_n_s32(v164, 2uLL), v198);
  v252 = v197;
  v253 = vsraq_n_s32(v198, v164, 2uLL);
  v200 = vshrq_n_s32(v234, 2uLL);
  v201 = vshrq_n_s32(v241, 2uLL);
  v254 = vsraq_n_s32(v200, v165, 2uLL);
  v255 = vsraq_n_s32(v201, v166, 2uLL);
  v288 = v184;
  v289 = v181;
  v290 = v179;
  v291 = v177;
  v292 = v176;
  v293 = v323.val[0];
  v294 = v323.val[1];
  v295 = v171;
  v256 = vsubq_s32(vshrq_n_s32(v166, 2uLL), v201);
  v257 = vsubq_s32(vshrq_n_s32(v165, 2uLL), v200);
  v258 = v199;
  v259 = v196;
  v260 = v194;
  v261 = v191;
  v262 = v189;
  v263 = v186;
  vpx_highbd_fdct8x16_body(&v280, &v248);
  v202 = &v300;
  v317 = vld4q_f32(v202);
  v203 = &v268;
  v326 = vld4q_f32(v203);
  v328 = vld4q_f32(v284.i32);
  v204 = &v252;
  v319 = vld4q_f32(v204);
  v247 = v319;
  v324 = vld4q_f32(v115);
  v325 = vld4q_f32(v128);
  v331 = vld4q_f32(v143);
  v320 = vld4q_f32(v146);
  v246 = v320;
  v321 = vld4q_f32(v288.i32);
  a2[1] = v317.val[0];
  a2[5] = v317.val[1];
  a2[9] = v317.val[2];
  a2[13] = v317.val[3];
  a2[17] = v326.val[0];
  v318 = vld4q_f32(v256.i32);
  a2[21] = v326.val[1];
  a2[22] = v325.val[1];
  a2[25] = v326.val[2];
  a2[26] = v325.val[2];
  a2[29] = v326.val[3];
  a2[30] = v325.val[3];
  a2[33] = v328.val[0];
  a2[34] = v321.val[0];
  a2[37] = v328.val[1];
  a2[38] = v321.val[1];
  a2[41] = v328.val[2];
  a2[42] = v321.val[2];
  v327 = vld4q_f32(v292.i32);
  v330 = vld4q_f32(v260.i32);
  a2[45] = v328.val[3];
  a2[46] = v321.val[3];
  a2[49] = v247.val[0];
  a2[50] = v318.val[0];
  a2[53] = v247.val[1];
  a2[54] = v318.val[1];
  a2[57] = v247.val[2];
  a2[58] = v318.val[2];
  a2[61] = v247.val[3];
  a2[62] = v318.val[3];
  a2[2] = v324.val[0];
  a2[3] = v331.val[0];
  a2[6] = v324.val[1];
  a2[7] = v331.val[1];
  a2[10] = v324.val[2];
  a2[11] = v331.val[2];
  a2[14] = v324.val[3];
  a2[15] = v331.val[3];
  v318.val[0] = v296;
  v318.val[1] = v297;
  v318.val[2] = v298;
  v318.val[3] = v299;
  v321.val[0] = vtrn1q_s32(v296, v297);
  v321.val[1] = vtrn1q_s32(v298, v299);
  v321.val[2] = vzip2q_s64(v321.val[0], v321.val[1]);
  v321.val[0].i64[1] = v321.val[1].i64[0];
  *a2 = v321.val[0];
  v318.val[0] = vtrn2q_s32(v318.val[0], v318.val[1]);
  v318.val[1] = vtrn2q_s32(v318.val[2], v318.val[3]);
  v318.val[2] = vzip2q_s64(v318.val[0], v318.val[1]);
  v318.val[0].i64[1] = v318.val[1].i64[0];
  a2[4] = v318.val[0];
  a2[8] = v321.val[2];
  a2[12] = v318.val[2];
  v318.val[0] = v264;
  v318.val[1] = v265;
  a2[18] = v325.val[0];
  a2[19] = v246.val[0];
  a2[23] = v246.val[1];
  a2[27] = v246.val[2];
  a2[31] = v246.val[3];
  v318.val[2] = v266;
  v318.val[3] = v267;
  v321.val[0] = vtrn1q_s32(v318.val[0], v318.val[1]);
  v321.val[1] = vtrn1q_s32(v266, v267);
  v321.val[2] = vzip2q_s64(v321.val[0], v321.val[1]);
  v321.val[0].i64[1] = v321.val[1].i64[0];
  a2[16] = v321.val[0];
  v318.val[0] = vtrn2q_s32(v318.val[0], v318.val[1]);
  v318.val[1] = vtrn2q_s32(v318.val[2], v318.val[3]);
  v318.val[2] = vzip2q_s64(v318.val[0], v318.val[1]);
  v318.val[0].i64[1] = v318.val[1].i64[0];
  a2[20] = v318.val[0];
  a2[24] = v321.val[2];
  a2[28] = v318.val[2];
  v318.val[0] = v280;
  v318.val[1] = v281;
  a2[47] = v327.val[3];
  v318.val[2] = v282;
  v318.val[3] = v283;
  v321.val[0] = vtrn1q_s32(v318.val[0], v318.val[1]);
  v321.val[1] = vtrn1q_s32(v282, v283);
  v321.val[2] = vzip2q_s64(v321.val[0], v321.val[1]);
  v321.val[0].i64[1] = v321.val[1].i64[0];
  a2[32] = v321.val[0];
  v318.val[0] = vtrn2q_s32(v318.val[0], v318.val[1]);
  v318.val[1] = vtrn2q_s32(v318.val[2], v318.val[3]);
  v318.val[2] = vzip2q_s64(v318.val[0], v318.val[1]);
  v318.val[0].i64[1] = v318.val[1].i64[0];
  a2[35] = v327.val[0];
  a2[36] = v318.val[0];
  a2[39] = v327.val[1];
  a2[40] = v321.val[2];
  a2[43] = v327.val[2];
  a2[44] = v318.val[2];
  v318.val[0] = v248;
  v318.val[1] = v249;
  a2[63] = v330.val[3];
  v318.val[2] = v250;
  v318.val[3] = v251;
  v321.val[0] = vtrn1q_s32(v318.val[0], v318.val[1]);
  v321.val[1] = vtrn1q_s32(v250, v251);
  v321.val[2] = vzip2q_s64(v321.val[0], v321.val[1]);
  v321.val[0].i64[1] = v321.val[1].i64[0];
  a2[48] = v321.val[0];
  v318.val[0] = vtrn2q_s32(v318.val[0], v318.val[1]);
  v318.val[1] = vtrn2q_s32(v318.val[2], v318.val[3]);
  v318.val[2] = vzip2q_s64(v318.val[0], v318.val[1]);
  v318.val[0].i64[1] = v318.val[1].i64[0];
  a2[51] = v330.val[0];
  a2[52] = v318.val[0];
  a2[55] = v330.val[1];
  a2[56] = v321.val[2];
  a2[59] = v330.val[2];
  a2[60] = v318.val[2];
}

int32x4_t vpx_highbd_fdct8x16_body(int32x4_t *a1, int32x4_t *a2)
{
  v2 = a1[1];
  v4 = a1[6];
  v3 = a1[7];
  v5 = a2[1];
  v6 = a2[6];
  v7 = a2[7];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v225 = vaddq_s32(v4, v2);
  v226 = vaddq_s32(v11, v9);
  v12 = a2[2];
  v13 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v197 = vaddq_s32(v6, v5);
  v198 = vaddq_s32(v14, v12);
  v223 = vaddq_s32(v3, *a1);
  v224 = vaddq_s32(v10, v8);
  v195 = vaddq_s32(v7, *a2);
  v196 = vaddq_s32(v15, v13);
  v16 = vsubq_s32(v8, v10);
  v17 = vsubq_s32(v13, v15);
  v18 = vsubq_s32(v9, v11);
  v19 = vsubq_s32(v12, v14);
  v20 = vsubq_s32(v2, v4);
  v21 = vsubq_s32(v5, v6);
  v22 = vsubq_s32(*a1, v3);
  v23 = vsubq_s32(*a2, v7);
  v24 = vsubq_s32(v225, v226);
  v25 = vsubq_s32(v223, v224);
  v26 = vdupq_n_s32(0x5A820000u);
  v27 = vdupq_n_s32(0x3B21u);
  v28 = vqrdmulhq_s32(vaddq_s32(v18, v20), v26);
  v29 = vqrdmulhq_s32(vaddq_s32(v19, v21), v26);
  v30 = vqrdmulhq_s32(vsubq_s32(v20, v18), v26);
  v31 = vqrdmulhq_s32(vsubq_s32(v21, v19), v26);
  v32 = vaddq_s32(v30, v16);
  v33 = vaddq_s32(v31, v17);
  v34 = vsubq_s32(v16, v30);
  v35 = vsubq_s32(v17, v31);
  v36 = vsubq_s32(v22, v28);
  v37 = vsubq_s32(v23, v29);
  v38 = vaddq_s32(v28, v22);
  v39 = vaddq_s32(v29, v23);
  v40 = vdupq_n_s32(0x3EC5u);
  v41 = vdupq_n_s32(0xC7Cu);
  v222 = vmlal_s32(vmull_s32(*v32.i8, *v41.i8), *v38.i8, *v40.i8);
  v220 = vmlal_s32(vmull_s32(*v33.i8, *v41.i8), *v39.i8, *v40.i8);
  v221 = vmlal_high_s32(vmull_high_s32(v32, v41), v38, v40);
  v218 = vmlsl_s32(vmull_s32(*v38.i8, *v41.i8), *v32.i8, *v40.i8);
  v219 = vmlal_high_s32(vmull_high_s32(v33, v41), v39, v40);
  v216 = vmlsl_high_s32(vmull_high_s32(v38, v41), v32, v40);
  v217 = vmlsl_s32(vmull_s32(*v39.i8, *v41.i8), *v33.i8, *v40.i8);
  v42 = vmlsl_high_s32(vmull_high_s32(v39, v41), v33, v40);
  v43 = vdupq_n_s32(0x238Eu);
  v44 = vdupq_n_s32(0x3537u);
  v45 = vmull_s32(*v36.i8, *v44.i8);
  v46 = vmull_high_s32(v36, v44);
  v214 = vmlal_s32(vmull_s32(*v34.i8, *v44.i8), *v36.i8, *v43.i8);
  v215 = v42;
  v212 = vmlal_s32(vmull_s32(*v35.i8, *v44.i8), *v37.i8, *v43.i8);
  v213 = vmlal_high_s32(vmull_high_s32(v34, v44), v36, v43);
  v47 = vdupq_n_s32(0x187Eu);
  v210 = vmlsl_s32(v45, *v34.i8, *v43.i8);
  v211 = vmlal_high_s32(vmull_high_s32(v35, v44), v37, v43);
  v208 = vmlsl_s32(vmull_s32(*v37.i8, *v44.i8), *v35.i8, *v43.i8);
  v209 = vmlsl_high_s32(v46, v34, v43);
  v204 = vmlal_s32(vmull_s32(*v24.i8, *v47.i8), *v25.i8, *v27.i8);
  v203 = vmlal_high_s32(vmull_high_s32(v24, v47), v25, v27);
  v206 = vmlsl_s32(vmull_s32(*v25.i8, *v47.i8), *v24.i8, *v27.i8);
  v207 = vmlsl_high_s32(vmull_high_s32(v37, v44), v35, v43);
  v205 = vmlsl_high_s32(vmull_high_s32(v25, v47), v24, v27);
  v48 = vsubq_s32(v197, v198);
  v49 = vsubq_s32(v195, v196);
  v200 = vmlal_s32(vmull_s32(*v48.i8, *v47.i8), *v49.i8, *v27.i8);
  v199 = vmlal_high_s32(vmull_high_s32(v48, v47), v49, v27);
  v201 = vmlsl_high_s32(vmull_high_s32(v49, v47), v48, v27);
  v202 = vmlsl_s32(vmull_s32(*v49.i8, *v47.i8), *v48.i8, *v27.i8);
  v50 = a1[10];
  v51 = a1[11];
  v52 = a1[13];
  v53 = vaddq_s32(v52, v50);
  v54 = vsubq_s32(v52, v50);
  v55 = a2[10];
  v56 = a2[11];
  v57 = a2[13];
  v58 = vaddq_s32(v57, v55);
  v59 = vsubq_s32(v57, v55);
  v60 = vqrdmulhq_s32(v54, v26);
  v61 = a1[9];
  v62 = vaddq_s32(v60, v61);
  v63 = vsubq_s32(v61, v60);
  v64 = vqrdmulhq_s32(v59, v26);
  v65 = a2[9];
  v66 = vaddq_s32(v64, v65);
  v67 = vsubq_s32(v65, v64);
  v68 = vqrdmulhq_s32(v53, v26);
  v69 = a1[14];
  v70 = vsubq_s32(v69, v68);
  v71 = vaddq_s32(v68, v69);
  v72 = vqrdmulhq_s32(v58, v26);
  v73 = a2[14];
  v184 = a1[15];
  v185 = a2[15];
  v74 = vsubq_s32(v73, v72);
  v75 = vaddq_s32(v72, v73);
  v76 = vmlal_s32(vmull_s32(*v62.i8, *v47.i8), *v71.i8, *v27.i8);
  v77 = vmlal_high_s32(vmull_high_s32(v62, v47), v71, v27);
  v78 = vmlsl_s32(vmull_s32(*v71.i8, *v47.i8), *v62.i8, *v27.i8);
  v79 = vmlsl_high_s32(vmull_high_s32(v71, v47), v62, v27);
  v80 = vmlal_s32(vmull_s32(*v66.i8, *v47.i8), *v75.i8, *v27.i8);
  v81 = vmlal_high_s32(vmull_high_s32(v66, v47), v75, v27);
  v82 = vmlsl_s32(vmull_s32(*v75.i8, *v47.i8), *v66.i8, *v27.i8);
  v83 = vmlsl_high_s32(vmull_high_s32(v75, v47), v66, v27);
  v186 = vmlal_s32(vmull_s32(*v70.i8, *v27.i8), *v63.i8, *v47.i8);
  v84 = vmlal_high_s32(vmull_high_s32(v70, v27), v63, v47);
  v85 = vmlal_s32(vmull_s32(*v74.i8, *v27.i8), *v67.i8, *v47.i8);
  v86 = vmlal_high_s32(vmull_high_s32(v74, v27), v67, v47);
  v87 = vmlsl_s32(vmull_s32(*v63.i8, *v27.i8), *v70.i8, *v47.i8);
  v88 = vmlsl_high_s32(vmull_high_s32(v63, v27), v70, v47);
  v89 = vmlsl_s32(vmull_s32(*v67.i8, *v27.i8), *v74.i8, *v47.i8);
  v90 = vmlsl_high_s32(vmull_high_s32(v67, v27), v74, v47);
  v91 = a1[12];
  v92 = vaddq_s32(v91, v51);
  v93 = vsubq_s32(v91, v51);
  v94 = a2[12];
  v95 = vaddq_s32(v94, v56);
  v96 = vsubq_s32(v94, v56);
  v97 = vrshrn_high_n_s64(vrshrn_n_s64(v76, 0xEuLL), v77, 0xEuLL);
  v98 = vrshrn_high_n_s64(vrshrn_n_s64(v80, 0xEuLL), v81, 0xEuLL);
  v99 = vrshrn_high_n_s64(vrshrn_n_s64(v78, 0xEuLL), v79, 0xEuLL);
  v100 = vrshrn_high_n_s64(vrshrn_n_s64(v82, 0xEuLL), v83, 0xEuLL);
  v101 = vqrdmulhq_s32(v92, v26);
  v102 = vqrdmulhq_s32(v95, v26);
  v103 = vqrdmulhq_s32(v93, v26);
  v104 = vqrdmulhq_s32(v96, v26);
  v105 = a1[8];
  v106 = vaddq_s32(v103, v105);
  v107 = vaddq_s32(v101, v184);
  v108 = vsubq_s32(v106, v99);
  v109 = vsubq_s32(v107, v97);
  v110 = vdupq_n_s32(0x289Au);
  v111 = vdupq_n_s32(0x3179u);
  v194 = vmlal_s32(vmull_s32(*v108.i8, *v111.i8), *v109.i8, *v110.i8);
  v193 = vmlal_high_s32(vmull_high_s32(v108, v111), v109, v110);
  v112 = vmull_s32(*v109.i8, *v111.i8);
  v113 = vmull_high_s32(v109, v111);
  v114 = a2[8];
  v115 = vaddq_s32(v104, v114);
  v116 = vaddq_s32(v102, v185);
  v117 = vsubq_s32(v115, v100);
  v118 = vsubq_s32(v116, v98);
  v192 = vmlal_s32(vmull_s32(*v117.i8, *v111.i8), *v118.i8, *v110.i8);
  v190 = vmlsl_s32(v112, *v108.i8, *v110.i8);
  v191 = vmlal_high_s32(vmull_high_s32(v117, v111), v118, v110);
  v188 = vmlsl_s32(vmull_s32(*v118.i8, *v111.i8), *v117.i8, *v110.i8);
  v189 = vmlsl_high_s32(v113, v108, v110);
  v187 = vmlsl_high_s32(vmull_high_s32(v118, v111), v117, v110);
  v119 = vaddq_s32(v99, v106);
  v120 = vaddq_s32(v100, v115);
  v121 = vaddq_s32(v97, v107);
  v122 = vaddq_s32(v98, v116);
  v123 = vdupq_n_s32(0x3FB1u);
  v124 = vdupq_n_s32(0x646u);
  v125 = vmlal_s32(vmull_s32(*v119.i8, *v124.i8), *v121.i8, *v123.i8);
  v126 = vmlal_high_s32(vmull_high_s32(v119, v124), v121, v123);
  v127 = vmull_s32(*v121.i8, *v124.i8);
  v128 = vmull_high_s32(v121, v124);
  v129 = vmlal_s32(vmull_s32(*v120.i8, *v124.i8), *v122.i8, *v123.i8);
  v130 = vmull_s32(*v122.i8, *v124.i8);
  v131 = vmull_high_s32(v122, v124);
  v132 = vmlal_high_s32(vmull_high_s32(v120, v124), v122, v123);
  v133 = vmlsl_s32(v127, *v119.i8, *v123.i8);
  v134 = vmlsl_high_s32(v128, v119, v123);
  v135 = vmlsl_s32(v130, *v120.i8, *v123.i8);
  v136 = vmlsl_high_s32(v131, v120, v123);
  v137 = vsubq_s32(v105, v103);
  v138 = vsubq_s32(v114, v104);
  v139 = vsubq_s32(v184, v101);
  v140 = vsubq_s32(v185, v102);
  v141 = vrshrn_high_n_s64(vrshrn_n_s64(v186, 0xEuLL), v84, 0xEuLL);
  v142 = vrshrn_high_n_s64(vrshrn_n_s64(v85, 0xEuLL), v86, 0xEuLL);
  v143 = vrshrn_high_n_s64(vrshrn_n_s64(v87, 0xEuLL), v88, 0xEuLL);
  v144 = vrshrn_high_n_s64(vrshrn_n_s64(v89, 0xEuLL), v90, 0xEuLL);
  v145 = vsubq_s32(v137, v141);
  v146 = vsubq_s32(v139, v143);
  v147 = vdupq_n_s32(0x1294u);
  v148 = vdupq_n_s32(0x3D3Fu);
  v149 = vmlal_s32(vmull_s32(*v145.i8, *v148.i8), *v146.i8, *v147.i8);
  v150 = vmlal_high_s32(vmull_high_s32(v145, v148), v146, v147);
  v151 = vmull_s32(*v146.i8, *v148.i8);
  v152 = vmull_high_s32(v146, v148);
  v153 = vsubq_s32(v138, v142);
  v154 = vsubq_s32(v140, v144);
  v155 = vmlal_s32(vmull_s32(*v153.i8, *v148.i8), *v154.i8, *v147.i8);
  v156 = vmull_s32(*v154.i8, *v148.i8);
  v157 = vmull_high_s32(v154, v148);
  v158 = vmlal_high_s32(vmull_high_s32(v153, v148), v154, v147);
  v159 = vmlsl_s32(v151, *v145.i8, *v147.i8);
  v160 = vmlsl_high_s32(v152, v145, v147);
  v161 = vmlsl_s32(v156, *v153.i8, *v147.i8);
  v162 = vmlsl_high_s32(v157, v153, v147);
  v163 = vaddq_s32(v141, v137);
  v164 = vaddq_s32(v142, v138);
  v165 = vaddq_s32(v143, v139);
  v166 = vaddq_s32(v144, v140);
  v167 = vdupq_n_s32(0x3871u);
  v168 = vdupq_n_s32(0x1E2Bu);
  v169 = vmlal_s32(vmull_s32(*v163.i8, *v168.i8), *v165.i8, *v167.i8);
  v170 = vmlal_high_s32(vmull_high_s32(v163, v168), v165, v167);
  v171 = vmull_s32(*v165.i8, *v168.i8);
  v172 = vmull_high_s32(v165, v168);
  v173 = vmlal_s32(vmull_s32(*v164.i8, *v168.i8), *v166.i8, *v167.i8);
  v174 = vmlal_high_s32(vmull_high_s32(v164, v168), v166, v167);
  v175 = vmlsl_s32(v171, *v163.i8, *v167.i8);
  v176 = vmlsl_high_s32(v172, v163, v167);
  v177 = vmlsl_s32(vmull_s32(*v166.i8, *v168.i8), *v164.i8, *v167.i8);
  v178 = vmlsl_high_s32(vmull_high_s32(v166, v168), v164, v167);
  v179 = vaddq_s32(v224, v223);
  v180 = vaddq_s32(v196, v195);
  v181 = vaddq_s32(v226, v225);
  v182 = vaddq_s32(v198, v197);
  *a1 = vqrdmulhq_s32(vaddq_s32(v179, v181), v26);
  *a2 = vqrdmulhq_s32(vaddq_s32(v180, v182), v26);
  a1[8] = vqrdmulhq_s32(vsubq_s32(v179, v181), v26);
  a2[8] = vqrdmulhq_s32(vsubq_s32(v180, v182), v26);
  a1[4] = vrshrn_high_n_s64(vrshrn_n_s64(v204, 0xEuLL), v203, 0xEuLL);
  a2[4] = vrshrn_high_n_s64(vrshrn_n_s64(v200, 0xEuLL), v199, 0xEuLL);
  a1[12] = vrshrn_high_n_s64(vrshrn_n_s64(v206, 0xEuLL), v205, 0xEuLL);
  a2[12] = vrshrn_high_n_s64(vrshrn_n_s64(v202, 0xEuLL), v201, 0xEuLL);
  a1[2] = vrshrn_high_n_s64(vrshrn_n_s64(v222, 0xEuLL), v221, 0xEuLL);
  a2[2] = vrshrn_high_n_s64(vrshrn_n_s64(v220, 0xEuLL), v219, 0xEuLL);
  a1[14] = vrshrn_high_n_s64(vrshrn_n_s64(v218, 0xEuLL), v216, 0xEuLL);
  a2[14] = vrshrn_high_n_s64(vrshrn_n_s64(v217, 0xEuLL), v215, 0xEuLL);
  a1[10] = vrshrn_high_n_s64(vrshrn_n_s64(v214, 0xEuLL), v213, 0xEuLL);
  a2[10] = vrshrn_high_n_s64(vrshrn_n_s64(v212, 0xEuLL), v211, 0xEuLL);
  a1[6] = vrshrn_high_n_s64(vrshrn_n_s64(v210, 0xEuLL), v209, 0xEuLL);
  a2[6] = vrshrn_high_n_s64(vrshrn_n_s64(v208, 0xEuLL), v207, 0xEuLL);
  a1[9] = vrshrn_high_n_s64(vrshrn_n_s64(v194, 0xEuLL), v193, 0xEuLL);
  a2[9] = vrshrn_high_n_s64(vrshrn_n_s64(v192, 0xEuLL), v191, 0xEuLL);
  a1[7] = vrshrn_high_n_s64(vrshrn_n_s64(v190, 0xEuLL), v189, 0xEuLL);
  a2[7] = vrshrn_high_n_s64(vrshrn_n_s64(v188, 0xEuLL), v187, 0xEuLL);
  a1[1] = vrshrn_high_n_s64(vrshrn_n_s64(v125, 0xEuLL), v126, 0xEuLL);
  a2[1] = vrshrn_high_n_s64(vrshrn_n_s64(v129, 0xEuLL), v132, 0xEuLL);
  a1[15] = vrshrn_high_n_s64(vrshrn_n_s64(v133, 0xEuLL), v134, 0xEuLL);
  a2[15] = vrshrn_high_n_s64(vrshrn_n_s64(v135, 0xEuLL), v136, 0xEuLL);
  a1[13] = vrshrn_high_n_s64(vrshrn_n_s64(v149, 0xEuLL), v150, 0xEuLL);
  a2[13] = vrshrn_high_n_s64(vrshrn_n_s64(v155, 0xEuLL), v158, 0xEuLL);
  a1[3] = vrshrn_high_n_s64(vrshrn_n_s64(v159, 0xEuLL), v160, 0xEuLL);
  a2[3] = vrshrn_high_n_s64(vrshrn_n_s64(v161, 0xEuLL), v162, 0xEuLL);
  a1[5] = vrshrn_high_n_s64(vrshrn_n_s64(v169, 0xEuLL), v170, 0xEuLL);
  a2[5] = vrshrn_high_n_s64(vrshrn_n_s64(v173, 0xEuLL), v174, 0xEuLL);
  a1[11] = vrshrn_high_n_s64(vrshrn_n_s64(v175, 0xEuLL), v176, 0xEuLL);
  result = vrshrn_high_n_s64(vrshrn_n_s64(v177, 0xEuLL), v178, 0xEuLL);
  a2[11] = result;
  return result;
}

void vpx_fdct32x32_neon(int16x8_t *a1, int32x4_t *a2, int a3)
{
  v4 = a1;
  v1214 = *MEMORY[0x277D85DE8];
  v5 = 2 * a3;
  v6 = 62 * a3;
  v7 = *(a1 + v6);
  v8 = *(a1 + v5);
  v9 = 32 * a3;
  v10 = 2 * (v9 - v5);
  v1013 = v9;
  v1014 = v9 - v5;
  v11 = *(a1 + v10);
  v12 = 4 * a3;
  v13 = *(a1 + v12);
  v14 = 58 * a3;
  v15 = *(a1 + v14);
  v16 = *(a1 + 6 * a3);
  v17 = 6 * a3;
  v18 = *a1;
  v1019 = v9 - v12;
  v19 = *(a1 + 2 * (v9 - v12));
  v20 = 2 * (v9 - v12);
  v21 = *(a1 + 8 * a3);
  v997 = 54 * a3;
  v22 = *(a1 + v997);
  v23 = v12;
  v1000 = v12;
  v996 = 10 * a3;
  v24 = *(a1 + v996);
  v995 = 52 * a3;
  v1011 = 26 * a3;
  v25 = *(a1 + v995);
  v1008 = 12 * a3;
  v26 = *(a1 + v1008);
  v1007 = 50 * a3;
  v27 = *(a1 + v1007);
  v28 = v5;
  v998 = 8 * a3;
  v999 = v5;
  v29 = *(a1 + 14 * a3);
  v1005 = 3 * a3;
  v1006 = 14 * a3;
  v30 = a1[v1005];
  v1004 = 46 * a3;
  v31 = a1[a3];
  v1012 = a3;
  v1022 = vshlq_n_s16(vaddq_s16(v7, *a1), 2uLL);
  v1023 = vshlq_n_s16(vaddq_s16(v11, v8), 2uLL);
  v32 = *(a1 + v1004);
  v1001 = 42 * a3;
  v1002 = 22 * a3;
  v1016 = 38 * a3;
  v1003 = 18 * a3;
  v33 = *(a1 + v1003);
  v1021 = 44 * a3;
  v34 = *(a1 + v1021);
  v1020 = 20 * a3;
  v35 = *(a1 + v1020);
  v36 = *(a1 + v1001);
  v37 = *(a1 + v1002);
  v1024 = vshlq_n_s16(vaddq_s16(v15, v13), 2uLL);
  v1025 = vshlq_n_s16(vaddq_s16(v19, v16), 2uLL);
  v1026 = vshlq_n_s16(vaddq_s16(v22, v21), 2uLL);
  v1027 = vshlq_n_s16(vaddq_s16(v25, v24), 2uLL);
  v1028 = vshlq_n_s16(vaddq_s16(v27, v26), 2uLL);
  v1029 = vshlq_n_s16(vaddq_s16(v30, v29), 2uLL);
  v38 = *(a1 + 40 * a3);
  v39 = vsubq_s16(v29, v30);
  v1017 = 24 * a3;
  v1018 = 40 * a3;
  v40 = *(a1 + v1017);
  v41 = vsubq_s16(v26, v27);
  v42 = *(a1 + v1016);
  v43 = vsubq_s16(v21, v22);
  v44 = *(a1 + v9 - v12);
  v1015 = 34 * a3;
  v45 = *(a1 + v1015);
  v1030 = vshlq_n_s16(vaddq_s16(v32, v31), 2uLL);
  v1031 = vshlq_n_s16(vaddq_s16(v34, v33), 2uLL);
  v46 = *(a1 + v9 - v5);
  v47 = vaddq_s16(v45, v44);
  v48 = a1[v9 / 0x10];
  v49 = vaddq_s16(v48, v46);
  v50 = vsubq_s16(v46, v48);
  v51 = *(a1 + v1011);
  v52 = vsubq_s16(v44, v45);
  v1010 = 36 * a3;
  v53 = *(a1 + v1010);
  v1032 = vshlq_n_s16(vaddq_s16(v36, v35), 2uLL);
  v1033 = vshlq_n_s16(vaddq_s16(v38, v37), 2uLL);
  v1034 = vshlq_n_s16(vaddq_s16(v42, v40), 2uLL);
  v1035 = vshlq_n_s16(vaddq_s16(v53, v51), 2uLL);
  v1036 = vshlq_n_s16(v47, 2uLL);
  v1037 = vshlq_n_s16(v49, 2uLL);
  v1038 = vshlq_n_s16(v50, 2uLL);
  v1039 = vshlq_n_s16(v52, 2uLL);
  v1040 = vshlq_n_s16(vsubq_s16(v51, v53), 2uLL);
  v1041 = vshlq_n_s16(vsubq_s16(v40, v42), 2uLL);
  v1042 = vshlq_n_s16(vsubq_s16(v37, v38), 2uLL);
  v1043 = vshlq_n_s16(vsubq_s16(v35, v36), 2uLL);
  v1044 = vshlq_n_s16(vsubq_s16(v33, v34), 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v31, v32), 2uLL);
  v1046 = vshlq_n_s16(v39, 2uLL);
  v1047 = vshlq_n_s16(v41, 2uLL);
  v1048 = vshlq_n_s16(vsubq_s16(v24, v25), 2uLL);
  v1049 = vshlq_n_s16(v43, 2uLL);
  v1050 = vshlq_n_s16(vsubq_s16(v16, v19), 2uLL);
  v1051 = vshlq_n_s16(vsubq_s16(v13, v15), 2uLL);
  v1052 = vshlq_n_s16(vsubq_s16(v8, v11), 2uLL);
  v1053 = vshlq_n_s16(vsubq_s16(v18, v7), 2uLL);
  dct_body_first_pass(&v1022, &v1150);
  v54 = v4[1];
  v55 = *(v4 + v6 + 16);
  v56 = vaddq_s16(v55, v54);
  v57 = *(v4 + v28 + 16);
  v58 = *(v4 + v10 + 16);
  v59 = vaddq_s16(v58, v57);
  v60 = *(v4 + v23 + 16);
  v61 = *(v4 + v14 + 16);
  v62 = *(v4 + v17 + 16);
  v63 = vaddq_s16(v61, v60);
  v64 = *(v4 + v20 + 16);
  v65 = vaddq_s16(v64, v62);
  v66 = *(v4 + v998 + 16);
  v67 = *(v4 + v997 + 16);
  v68 = *(v4 + v996 + 16);
  v69 = *(v4 + v995 + 16);
  v70 = vaddq_s16(v67, v66);
  v71 = vaddq_s16(v69, v68);
  v72 = *(v4 + v1008 + 16);
  v73 = *(v4 + v1007 + 16);
  v74 = vaddq_s16(v73, v72);
  v75 = *(v4 + v1006 + 16);
  v76 = v4[v1005 + 1];
  v77 = vaddq_s16(v76, v75);
  v78 = vsubq_s16(v75, v76);
  v79 = vsubq_s16(v72, v73);
  v80 = vsubq_s16(v68, v69);
  v81 = vsubq_s16(v66, v67);
  v82 = vsubq_s16(v62, v64);
  v83 = vsubq_s16(v60, v61);
  v993 = vsubq_s16(v57, v58);
  v84 = v4[v1012 + 1];
  v85 = vsubq_s16(v54, v55);
  v86 = *(v4 + v1003 + 16);
  v87 = *(v4 + v1021 + 16);
  v88 = *(v4 + v1020 + 16);
  v89 = *(v4 + v1001 + 16);
  v90 = *(v4 + v1002 + 16);
  v91 = *(v4 + v1018 + 16);
  v92 = *(v4 + v1017 + 16);
  v93 = *(v4 + v1016 + 16);
  v94 = *(v4 + v1011 + 16);
  v95 = *(v4 + v1010 + 16);
  v96 = *(v4 + v1019 + 16);
  v97 = *(v4 + v1015 + 16);
  v98 = *(v4 + v1014 + 16);
  v99 = *(v4 + v1013 + 16);
  v100 = vaddq_s16(v99, v98);
  v101 = vsubq_s16(v98, v99);
  v102 = vaddq_s16(v97, v96);
  v103 = vsubq_s16(v96, v97);
  v104 = vaddq_s16(v95, v94);
  v105 = vsubq_s16(v94, v95);
  v106 = vaddq_s16(v93, v92);
  v107 = vsubq_s16(v92, v93);
  v108 = vaddq_s16(v91, v90);
  v109 = vsubq_s16(v90, v91);
  v110 = vaddq_s16(v89, v88);
  v111 = vsubq_s16(v88, v89);
  v112 = vaddq_s16(v87, v86);
  v113 = vsubq_s16(v86, v87);
  v114 = *(v4 + v1004 + 16);
  v1022 = vshlq_n_s16(v56, 2uLL);
  v1023 = vshlq_n_s16(v59, 2uLL);
  v1024 = vshlq_n_s16(v63, 2uLL);
  v1025 = vshlq_n_s16(v65, 2uLL);
  v1026 = vshlq_n_s16(v70, 2uLL);
  v1027 = vshlq_n_s16(v71, 2uLL);
  v1028 = vshlq_n_s16(v74, 2uLL);
  v1029 = vshlq_n_s16(v77, 2uLL);
  v1030 = vshlq_n_s16(vaddq_s16(v114, v84), 2uLL);
  v1031 = vshlq_n_s16(v112, 2uLL);
  v1032 = vshlq_n_s16(v110, 2uLL);
  v1033 = vshlq_n_s16(v108, 2uLL);
  v1034 = vshlq_n_s16(v106, 2uLL);
  v1035 = vshlq_n_s16(v104, 2uLL);
  v1036 = vshlq_n_s16(v102, 2uLL);
  v1037 = vshlq_n_s16(v100, 2uLL);
  v1038 = vshlq_n_s16(v101, 2uLL);
  v1039 = vshlq_n_s16(v103, 2uLL);
  v1040 = vshlq_n_s16(v105, 2uLL);
  v1041 = vshlq_n_s16(v107, 2uLL);
  v1042 = vshlq_n_s16(v109, 2uLL);
  v1043 = vshlq_n_s16(v111, 2uLL);
  v1044 = vshlq_n_s16(v113, 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v84, v114), 2uLL);
  v1046 = vshlq_n_s16(v78, 2uLL);
  v1047 = vshlq_n_s16(v79, 2uLL);
  v1048 = vshlq_n_s16(v80, 2uLL);
  v1049 = vshlq_n_s16(v81, 2uLL);
  v1050 = vshlq_n_s16(v82, 2uLL);
  v1051 = vshlq_n_s16(v83, 2uLL);
  v1052 = vshlq_n_s16(v993, 2uLL);
  v1053 = vshlq_n_s16(v85, 2uLL);
  dct_body_first_pass(&v1022, &v1118);
  v115 = v4[2];
  v116 = *(v4 + v6 + 32);
  v117 = vaddq_s16(v116, v115);
  v118 = *(v4 + v999 + 32);
  v119 = *(v4 + v10 + 32);
  v120 = vaddq_s16(v119, v118);
  v121 = *(v4 + v1000 + 32);
  v122 = *(v4 + v14 + 32);
  v123 = *(v4 + v17 + 32);
  v124 = vaddq_s16(v122, v121);
  v125 = *(v4 + v20 + 32);
  v126 = vaddq_s16(v125, v123);
  v127 = *(v4 + v998 + 32);
  v128 = *(v4 + v997 + 32);
  v129 = *(v4 + v996 + 32);
  v130 = *(v4 + v995 + 32);
  v131 = vaddq_s16(v128, v127);
  v132 = vaddq_s16(v130, v129);
  v133 = *(v4 + v1008 + 32);
  v134 = *(v4 + v1007 + 32);
  v135 = vaddq_s16(v134, v133);
  v136 = *(v4 + v1006 + 32);
  v137 = v4[v1005 + 2];
  v138 = vaddq_s16(v137, v136);
  v139 = vsubq_s16(v136, v137);
  v140 = vsubq_s16(v133, v134);
  v141 = vsubq_s16(v129, v130);
  v142 = vsubq_s16(v127, v128);
  v143 = vsubq_s16(v123, v125);
  v144 = vsubq_s16(v121, v122);
  v994 = vsubq_s16(v118, v119);
  v145 = v4[v1012 + 2];
  v146 = vsubq_s16(v115, v116);
  v147 = *(v4 + v1003 + 32);
  v148 = *(v4 + v1021 + 32);
  v149 = *(v4 + v1020 + 32);
  v150 = *(v4 + v1001 + 32);
  v151 = *(v4 + v1002 + 32);
  v152 = *(v4 + v1018 + 32);
  v153 = *(v4 + v1017 + 32);
  v154 = *(v4 + v1016 + 32);
  v155 = *(v4 + v1011 + 32);
  v156 = *(v4 + v1010 + 32);
  v157 = *(v4 + v1019 + 32);
  v158 = *(v4 + v1015 + 32);
  v159 = *(v4 + v1014 + 32);
  v160 = *(v4 + v1013 + 32);
  v161 = vaddq_s16(v160, v159);
  v162 = vsubq_s16(v159, v160);
  v163 = vaddq_s16(v158, v157);
  v164 = vsubq_s16(v157, v158);
  v165 = vaddq_s16(v156, v155);
  v166 = vsubq_s16(v155, v156);
  v167 = vaddq_s16(v154, v153);
  v168 = vsubq_s16(v153, v154);
  v169 = vaddq_s16(v152, v151);
  v170 = vsubq_s16(v151, v152);
  v171 = vaddq_s16(v150, v149);
  v172 = vsubq_s16(v149, v150);
  v173 = vaddq_s16(v148, v147);
  v174 = vsubq_s16(v147, v148);
  v175 = *(v4 + v1004 + 32);
  v1022 = vshlq_n_s16(v117, 2uLL);
  v1023 = vshlq_n_s16(v120, 2uLL);
  v1024 = vshlq_n_s16(v124, 2uLL);
  v1025 = vshlq_n_s16(v126, 2uLL);
  v1026 = vshlq_n_s16(v131, 2uLL);
  v1027 = vshlq_n_s16(v132, 2uLL);
  v1028 = vshlq_n_s16(v135, 2uLL);
  v1029 = vshlq_n_s16(v138, 2uLL);
  v1030 = vshlq_n_s16(vaddq_s16(v175, v145), 2uLL);
  v1031 = vshlq_n_s16(v173, 2uLL);
  v1032 = vshlq_n_s16(v171, 2uLL);
  v1033 = vshlq_n_s16(v169, 2uLL);
  v1034 = vshlq_n_s16(v167, 2uLL);
  v1035 = vshlq_n_s16(v165, 2uLL);
  v1036 = vshlq_n_s16(v163, 2uLL);
  v1037 = vshlq_n_s16(v161, 2uLL);
  v1038 = vshlq_n_s16(v162, 2uLL);
  v1039 = vshlq_n_s16(v164, 2uLL);
  v1040 = vshlq_n_s16(v166, 2uLL);
  v1041 = vshlq_n_s16(v168, 2uLL);
  v1042 = vshlq_n_s16(v170, 2uLL);
  v1043 = vshlq_n_s16(v172, 2uLL);
  v1044 = vshlq_n_s16(v174, 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v145, v175), 2uLL);
  v1046 = vshlq_n_s16(v139, 2uLL);
  v1047 = vshlq_n_s16(v140, 2uLL);
  v1048 = vshlq_n_s16(v141, 2uLL);
  v1049 = vshlq_n_s16(v142, 2uLL);
  v1050 = vshlq_n_s16(v143, 2uLL);
  v1051 = vshlq_n_s16(v144, 2uLL);
  v1052 = vshlq_n_s16(v994, 2uLL);
  v1053 = vshlq_n_s16(v146, 2uLL);
  dct_body_first_pass(&v1022, &v1086);
  v176 = v4[3];
  v4 += 3;
  v177 = *(v4 + v6);
  v178 = vaddq_s16(v177, v176);
  v179 = *(v4 + v999);
  v180 = *(v4 + v10);
  v181 = vaddq_s16(v180, v179);
  v182 = *(v4 + v1000);
  v183 = *(v4 + v14);
  v184 = *(v4 + v17);
  v185 = vaddq_s16(v183, v182);
  v186 = *(v4 + v20);
  v187 = vaddq_s16(v186, v184);
  v188 = *(v4 + v998);
  v189 = *(v4 + v997);
  v190 = *(v4 + v996);
  v191 = *(v4 + v995);
  v192 = vaddq_s16(v189, v188);
  v193 = vaddq_s16(v191, v190);
  v194 = *(v4 + v1008);
  v195 = *(v4 + v1007);
  v196 = vaddq_s16(v195, v194);
  v197 = *(v4 + v1006);
  v198 = v4[v1005];
  v199 = vaddq_s16(v198, v197);
  v200 = vsubq_s16(v197, v198);
  v201 = vsubq_s16(v194, v195);
  v202 = vsubq_s16(v190, v191);
  v203 = vsubq_s16(v188, v189);
  v204 = vsubq_s16(v184, v186);
  v205 = vsubq_s16(v182, v183);
  v206 = vsubq_s16(v179, v180);
  v1009 = vsubq_s16(v176, v177);
  v207 = v4[v1012];
  v208 = *(v4 + v1003);
  v209 = *(v4 + v1021);
  v210 = *(v4 + v1020);
  v211 = *(v4 + v1001);
  v212 = *(v4 + v1002);
  v213 = *(v4 + v1018);
  v214 = *(v4 + v1017);
  v215 = *(v4 + v1016);
  v216 = *(v4 + v1011);
  v217 = *(v4 + v1010);
  v218 = *(v4 + v1019);
  v219 = *(v4 + v1015);
  v220 = *(v4 + v1014);
  v221 = *(v4 + v1013);
  v222 = vaddq_s16(v221, v220);
  v223 = vsubq_s16(v220, v221);
  v224 = vaddq_s16(v219, v218);
  v225 = vsubq_s16(v218, v219);
  v226 = vaddq_s16(v217, v216);
  v227 = vsubq_s16(v216, v217);
  v228 = vaddq_s16(v215, v214);
  v229 = vsubq_s16(v214, v215);
  v230 = vaddq_s16(v213, v212);
  v231 = vsubq_s16(v212, v213);
  v232 = vaddq_s16(v211, v210);
  v233 = vsubq_s16(v210, v211);
  v234 = vaddq_s16(v209, v208);
  v235 = vsubq_s16(v208, v209);
  v236 = *(v4 + v1004);
  v1022 = vshlq_n_s16(v178, 2uLL);
  v1023 = vshlq_n_s16(v181, 2uLL);
  v1024 = vshlq_n_s16(v185, 2uLL);
  v1025 = vshlq_n_s16(v187, 2uLL);
  v1026 = vshlq_n_s16(v192, 2uLL);
  v1027 = vshlq_n_s16(v193, 2uLL);
  v1028 = vshlq_n_s16(v196, 2uLL);
  v1029 = vshlq_n_s16(v199, 2uLL);
  v1030 = vshlq_n_s16(vaddq_s16(v236, v207), 2uLL);
  v1031 = vshlq_n_s16(v234, 2uLL);
  v1032 = vshlq_n_s16(v232, 2uLL);
  v1033 = vshlq_n_s16(v230, 2uLL);
  v1034 = vshlq_n_s16(v228, 2uLL);
  v1035 = vshlq_n_s16(v226, 2uLL);
  v1036 = vshlq_n_s16(v224, 2uLL);
  v1037 = vshlq_n_s16(v222, 2uLL);
  v1038 = vshlq_n_s16(v223, 2uLL);
  v1039 = vshlq_n_s16(v225, 2uLL);
  v1040 = vshlq_n_s16(v227, 2uLL);
  v1041 = vshlq_n_s16(v229, 2uLL);
  v1042 = vshlq_n_s16(v231, 2uLL);
  v1043 = vshlq_n_s16(v233, 2uLL);
  v1044 = vshlq_n_s16(v235, 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v207, v236), 2uLL);
  v1046 = vshlq_n_s16(v200, 2uLL);
  v1047 = vshlq_n_s16(v201, 2uLL);
  v1048 = vshlq_n_s16(v202, 2uLL);
  v1049 = vshlq_n_s16(v203, 2uLL);
  v1050 = vshlq_n_s16(v204, 2uLL);
  v1051 = vshlq_n_s16(v205, 2uLL);
  v1052 = vshlq_n_s16(v206, 2uLL);
  v1053 = vshlq_n_s16(v1009, 2uLL);
  dct_body_first_pass(&v1022, &v1054);
  v237 = vtrn1q_s16(v1150, v1151);
  v238 = vtrn2q_s16(v1150, v1151);
  v239 = vtrn1q_s16(v1152, v1153);
  v240 = vtrn2q_s16(v1152, v1153);
  v241 = vtrn1q_s16(v1154, v1155);
  v242 = vtrn2q_s16(v1154, v1155);
  v243 = vtrn1q_s16(v1156, v1157);
  v244 = vtrn2q_s16(v1156, v1157);
  v245 = vtrn1q_s32(v237, v239);
  v246 = vtrn1q_s32(v238, v240);
  v247 = vtrn1q_s32(v241, v243);
  v248 = vzip2q_s64(v245, v247);
  v245.i64[1] = v247.i64[0];
  v249 = vtrn1q_s32(v242, v244);
  v250 = vzip2q_s64(v246, v249);
  v246.i64[1] = v249.i64[0];
  v251 = vtrn2q_s32(v237, v239);
  v252 = vtrn2q_s32(v241, v243);
  v253 = vzip2q_s64(v251, v252);
  v251.i64[1] = v252.i64[0];
  v254 = vtrn2q_s32(v238, v240);
  v255 = vtrn2q_s32(v242, v244);
  v256 = vzip2q_s64(v254, v255);
  v254.i64[1] = v255.i64[0];
  v1182 = v245;
  v1183 = v246;
  v1184 = v251;
  v1185 = v254;
  v1186 = v248;
  v1187 = v250;
  v1188 = v253;
  v1189 = v256;
  v257 = vtrn1q_s16(v1118, v1119);
  v258 = vtrn2q_s16(v1118, v1119);
  v259 = vtrn1q_s16(v1120, v1121);
  v260 = vtrn2q_s16(v1120, v1121);
  v261 = vtrn1q_s16(v1122, v1123);
  v262 = vtrn2q_s16(v1122, v1123);
  v263 = vtrn1q_s16(v1124, v1125);
  v264 = vtrn2q_s16(v1124, v1125);
  v265 = vtrn1q_s32(v257, v259);
  v266 = vtrn2q_s32(v257, v259);
  v267 = vtrn1q_s32(v258, v260);
  v268 = vtrn2q_s32(v258, v260);
  v269 = vtrn1q_s32(v261, v263);
  v270 = vtrn2q_s32(v261, v263);
  v271 = vtrn1q_s32(v262, v264);
  v272 = vtrn2q_s32(v262, v264);
  v273 = vzip2q_s64(v265, v269);
  v265.i64[1] = v269.i64[0];
  v274 = vzip2q_s64(v267, v271);
  v267.i64[1] = v271.i64[0];
  v275 = vzip2q_s64(v266, v270);
  v266.i64[1] = v270.i64[0];
  v276 = vzip2q_s64(v268, v272);
  v268.i64[1] = v272.i64[0];
  v1190 = v265;
  v1191 = v267;
  v1192 = v266;
  v1193 = v268;
  v1194 = v273;
  v1195 = v274;
  v1196 = v275;
  v1197 = v276;
  v277 = vtrn1q_s16(v1086, v1087);
  v278 = vtrn2q_s16(v1086, v1087);
  v279 = vtrn1q_s16(v1088, v1089);
  v280 = vtrn2q_s16(v1088, v1089);
  v281 = vtrn1q_s16(v1090, v1091);
  v282 = vtrn2q_s16(v1090, v1091);
  v283 = vtrn1q_s16(v1092, v1093);
  v284 = vtrn2q_s16(v1092, v1093);
  v285 = vtrn1q_s32(v277, v279);
  v286 = vtrn2q_s32(v277, v279);
  v287 = vtrn1q_s32(v278, v280);
  v288 = vtrn2q_s32(v278, v280);
  v289 = vtrn1q_s32(v281, v283);
  v290 = vtrn2q_s32(v281, v283);
  v291 = vtrn1q_s32(v282, v284);
  v292 = vtrn2q_s32(v282, v284);
  v293 = vzip2q_s64(v285, v289);
  v285.i64[1] = v289.i64[0];
  v294 = vzip2q_s64(v287, v291);
  v287.i64[1] = v291.i64[0];
  v295 = vzip2q_s64(v286, v290);
  v286.i64[1] = v290.i64[0];
  v296 = vzip2q_s64(v288, v292);
  v288.i64[1] = v292.i64[0];
  v1198 = v285;
  v1199 = v287;
  v1200 = v286;
  v1201 = v288;
  v1202 = v293;
  v1203 = v294;
  v1204 = v295;
  v1205 = v296;
  v297 = vtrn1q_s16(v1054, v1055);
  v298 = vtrn2q_s16(v1054, v1055);
  v299 = vtrn1q_s16(v1056, v1057);
  v300 = vtrn2q_s16(v1056, v1057);
  v301 = vtrn1q_s16(v1058, v1059);
  v302 = vtrn2q_s16(v1058, v1059);
  v303 = vtrn1q_s16(v1060, v1061);
  v304 = vtrn2q_s16(v1060, v1061);
  v305 = vtrn1q_s32(v297, v299);
  v306 = vtrn2q_s32(v297, v299);
  v307 = vtrn1q_s32(v298, v300);
  v308 = vtrn2q_s32(v298, v300);
  v309 = vtrn1q_s32(v301, v303);
  v310 = vtrn2q_s32(v301, v303);
  v311 = vtrn1q_s32(v302, v304);
  v312 = vtrn2q_s32(v302, v304);
  v313 = vzip2q_s64(v305, v309);
  v305.i64[1] = v309.i64[0];
  v314 = vzip2q_s64(v307, v311);
  v307.i64[1] = v311.i64[0];
  v315 = vzip2q_s64(v306, v310);
  v306.i64[1] = v310.i64[0];
  v316 = vzip2q_s64(v308, v312);
  v308.i64[1] = v312.i64[0];
  v1206 = v305;
  v1207 = v307;
  v1208 = v306;
  v1209 = v308;
  v1210 = v313;
  v1211 = v314;
  v1212 = v315;
  v1213 = v316;
  dct_body_second_pass(&v1182, &v1022);
  v317 = vtrn1q_s16(v1022, v1023);
  v318 = vtrn2q_s16(v1022, v1023);
  v319 = vtrn1q_s16(v1024, v1025);
  v320 = vtrn2q_s16(v1024, v1025);
  v321 = vtrn1q_s16(v1026, v1027);
  v322 = vtrn2q_s16(v1026, v1027);
  v323 = vtrn1q_s16(v1028, v1029);
  v324 = vtrn2q_s16(v1028, v1029);
  v325 = vtrn1q_s32(v317, v319);
  v326 = vtrn1q_s32(v318, v320);
  v327 = vtrn1q_s32(v321, v323);
  v328 = vzip2q_s64(v325, v327);
  v325.i64[1] = v327.i64[0];
  v329 = vtrn1q_s32(v322, v324);
  v330 = vzip2q_s64(v326, v329);
  v326.i64[1] = v329.i64[0];
  v331 = vtrn2q_s32(v317, v319);
  v332 = vtrn2q_s32(v321, v323);
  v333 = vzip2q_s64(v331, v332);
  v331.i64[1] = v332.i64[0];
  v334 = vtrn2q_s32(v318, v320);
  v335 = vtrn2q_s32(v322, v324);
  v336 = vzip2q_s64(v334, v335);
  v334.i64[1] = v335.i64[0];
  v1022 = v325;
  v1023 = v326;
  v1024 = v331;
  v1025 = v334;
  v1026 = v328;
  v1027 = v330;
  v1028 = v333;
  v1029 = v336;
  v337 = vtrn1q_s16(v1030, v1031);
  v338 = vtrn2q_s16(v1030, v1031);
  v339 = vtrn1q_s16(v1032, v1033);
  v340 = vtrn2q_s16(v1032, v1033);
  v341 = vtrn1q_s16(v1034, v1035);
  v342 = vtrn2q_s16(v1034, v1035);
  v343 = vtrn1q_s16(v1036, v1037);
  v344 = vtrn2q_s16(v1036, v1037);
  v345 = vtrn1q_s32(v337, v339);
  v346 = vtrn2q_s32(v337, v339);
  v347 = vtrn1q_s32(v338, v340);
  v348 = vtrn2q_s32(v338, v340);
  v349 = vtrn1q_s32(v341, v343);
  v350 = vtrn2q_s32(v341, v343);
  v351 = vtrn1q_s32(v342, v344);
  v352 = vzip2q_s64(v345, v349);
  v345.i64[1] = v349.i64[0];
  v353 = vzip2q_s64(v347, v351);
  v347.i64[1] = v351.i64[0];
  v354 = vtrn2q_s32(v342, v344);
  v355 = vzip2q_s64(v346, v350);
  v346.i64[1] = v350.i64[0];
  v356 = vzip2q_s64(v348, v354);
  v348.i64[1] = v354.i64[0];
  v1030 = v345;
  v1031 = v347;
  v1032 = v346;
  v1033 = v348;
  v1034 = v352;
  v1035 = v353;
  v1036 = v355;
  v1037 = v356;
  v357 = vtrn1q_s16(v1038, v1039);
  v358 = vtrn2q_s16(v1038, v1039);
  v359 = vtrn1q_s16(v1040, v1041);
  v360 = vtrn2q_s16(v1040, v1041);
  v361 = vtrn1q_s16(v1042, v1043);
  v362 = vtrn2q_s16(v1042, v1043);
  v363 = vtrn1q_s16(v1044, v1045);
  v364 = vtrn2q_s16(v1044, v1045);
  v365 = vtrn1q_s32(v357, v359);
  v366 = vtrn2q_s32(v357, v359);
  v367 = vtrn1q_s32(v358, v360);
  v368 = vtrn2q_s32(v358, v360);
  v369 = vtrn1q_s32(v361, v363);
  v370 = vtrn2q_s32(v361, v363);
  v371 = vtrn1q_s32(v362, v364);
  v372 = vtrn2q_s32(v362, v364);
  v373 = vzip2q_s64(v365, v369);
  v374 = vmovl_s16(*v365.i8);
  v362.i64[0] = v365.i64[0];
  v362.i64[1] = v369.i64[0];
  v375 = vzip2q_s64(v367, v371);
  v367.i64[1] = v371.i64[0];
  v376 = vzip2q_s64(v366, v370);
  v366.i64[1] = v370.i64[0];
  v377 = vzip2q_s64(v368, v372);
  v368.i64[1] = v372.i64[0];
  v1038 = v362;
  v1039 = v367;
  v1040 = v366;
  v1041 = v368;
  v1044 = v376;
  v1045 = v377;
  v378 = v377;
  v379 = vtrn1q_s16(v1046, v1047);
  v380 = vtrn2q_s16(v1046, v1047);
  v381 = vtrn1q_s16(v1048, v1049);
  v382 = vtrn2q_s16(v1048, v1049);
  v383 = vtrn1q_s16(v1050, v1051);
  v384 = vtrn2q_s16(v1050, v1051);
  v385 = vtrn1q_s16(v1052, v1053);
  v386 = vtrn2q_s16(v1052, v1053);
  v387 = vtrn1q_s32(v379, v381);
  v388 = vtrn2q_s32(v379, v381);
  v389 = vtrn1q_s32(v380, v382);
  v390 = vtrn2q_s32(v380, v382);
  v391 = vtrn1q_s32(v383, v385);
  v392 = vtrn2q_s32(v383, v385);
  v393 = vtrn1q_s32(v384, v386);
  v394 = vtrn2q_s32(v384, v386);
  v395 = vzip2q_s64(v387, v391);
  v387.i64[1] = v391.i64[0];
  v396 = vzip2q_s64(v388, v392);
  v388.i64[1] = v392.i64[0];
  v397 = vzip2q_s64(v390, v394);
  v390.i64[1] = v394.i64[0];
  v398 = vzip2q_s64(v389, v393);
  v389.i64[1] = v393.i64[0];
  v1042 = v373;
  v1043 = v375;
  v1046 = v387;
  v1047 = v389;
  v1048 = v388;
  v1049 = v390;
  v1050 = v395;
  v1051 = v398;
  v1052 = v396;
  v1053 = v397;
  v399 = v1023;
  v400 = vmovl_high_s16(v1022);
  *a2 = vmovl_s16(*v1022.i8);
  a2[1] = v400;
  v401 = v1031;
  v402 = vmovl_high_s16(v1030);
  a2[2] = vmovl_s16(*v1030.i8);
  a2[3] = v402;
  a2[4] = v374;
  a2[5] = vmovl_s16(*v369.i8);
  a2[6] = vmovl_s16(*v387.i8);
  a2[7] = vmovl_s16(*v391.i8);
  a2[8] = vmovl_s16(*v399.i8);
  a2[9] = vmovl_high_s16(v399);
  a2[10] = vmovl_s16(*v401.i8);
  a2[11] = vmovl_high_s16(v401);
  v403 = v1040;
  v404 = vmovl_high_s16(v1039);
  a2[12] = vmovl_s16(*v1039.i8);
  a2[13] = v404;
  a2[14] = vmovl_s16(*v389.i8);
  a2[15] = vmovl_s16(*v393.i8);
  v405 = v1025;
  v406 = vmovl_high_s16(v1024);
  a2[16] = vmovl_s16(*v1024.i8);
  a2[17] = v406;
  v407 = v1033;
  v408 = vmovl_high_s16(v1032);
  a2[18] = vmovl_s16(*v1032.i8);
  a2[19] = v408;
  a2[20] = vmovl_s16(*v403.i8);
  a2[21] = vmovl_high_s16(v403);
  v409 = v1049;
  v410 = vmovl_high_s16(v1048);
  a2[22] = vmovl_s16(*v1048.i8);
  a2[23] = v410;
  a2[24] = vmovl_s16(*v405.i8);
  a2[25] = vmovl_high_s16(v405);
  a2[26] = vmovl_s16(*v407.i8);
  a2[27] = vmovl_high_s16(v407);
  v411 = v1042;
  v412 = vmovl_high_s16(v1041);
  a2[28] = vmovl_s16(*v1041.i8);
  a2[29] = v412;
  a2[30] = vmovl_s16(*v409.i8);
  a2[31] = vmovl_high_s16(v409);
  v413 = v1027;
  v414 = vmovl_high_s16(v1026);
  a2[32] = vmovl_s16(*v1026.i8);
  a2[33] = v414;
  v415 = v1035;
  v416 = vmovl_high_s16(v1034);
  a2[34] = vmovl_s16(*v1034.i8);
  a2[35] = v416;
  a2[36] = vmovl_s16(*v411.i8);
  a2[37] = vmovl_high_s16(v411);
  v417 = v1051;
  v418 = vmovl_high_s16(v1050);
  a2[38] = vmovl_s16(*v1050.i8);
  a2[39] = v418;
  a2[40] = vmovl_s16(*v413.i8);
  a2[41] = vmovl_high_s16(v413);
  a2[42] = vmovl_s16(*v415.i8);
  a2[43] = vmovl_high_s16(v415);
  v419 = v1044;
  v420 = vmovl_high_s16(v1043);
  a2[44] = vmovl_s16(*v1043.i8);
  a2[45] = v420;
  a2[46] = vmovl_s16(*v417.i8);
  a2[47] = vmovl_high_s16(v417);
  v421 = v1029;
  v422 = vmovl_high_s16(v1028);
  a2[48] = vmovl_s16(*v1028.i8);
  a2[49] = v422;
  v423 = v1037;
  v424 = vmovl_high_s16(v1036);
  a2[50] = vmovl_s16(*v1036.i8);
  a2[51] = v424;
  a2[52] = vmovl_s16(*v419.i8);
  a2[53] = vmovl_high_s16(v419);
  v425 = v1053;
  v426 = vmovl_high_s16(v1052);
  a2[54] = vmovl_s16(*v1052.i8);
  a2[55] = v426;
  a2[56] = vmovl_s16(*v421.i8);
  a2[57] = vmovl_high_s16(v421);
  a2[58] = vmovl_s16(*v423.i8);
  a2[59] = vmovl_high_s16(v423);
  a2[60] = vmovl_s16(*v378.i8);
  a2[61] = vmovl_high_s16(v378);
  a2[62] = vmovl_s16(*v425.i8);
  a2[63] = vmovl_high_s16(v425);
  v427 = vtrn1q_s16(v1158, v1159);
  v428 = vtrn2q_s16(v1158, v1159);
  v429 = vtrn1q_s16(v1160, v1161);
  v430 = vtrn2q_s16(v1160, v1161);
  v431 = vtrn1q_s16(v1162, v1163);
  v432 = vtrn2q_s16(v1162, v1163);
  v433 = vtrn1q_s16(v1164, v1165);
  v434 = vtrn2q_s16(v1164, v1165);
  v435 = vtrn1q_s32(v427, v429);
  v436 = vtrn2q_s32(v427, v429);
  v437 = vtrn1q_s32(v428, v430);
  v438 = vtrn2q_s32(v428, v430);
  v439 = vtrn1q_s32(v431, v433);
  v440 = vtrn2q_s32(v431, v433);
  v441 = vtrn1q_s32(v432, v434);
  v442 = vtrn2q_s32(v432, v434);
  v443 = vzip2q_s64(v435, v439);
  v435.i64[1] = v439.i64[0];
  v444 = vzip2q_s64(v437, v441);
  v437.i64[1] = v441.i64[0];
  v445 = vzip2q_s64(v436, v440);
  v436.i64[1] = v440.i64[0];
  v446 = vzip2q_s64(v438, v442);
  v438.i64[1] = v442.i64[0];
  v1182 = v435;
  v1183 = v437;
  v1184 = v436;
  v1185 = v438;
  v1186 = v443;
  v1187 = v444;
  v1188 = v445;
  v1189 = v446;
  v447 = vtrn1q_s16(v1126, v1127);
  v448 = vtrn2q_s16(v1126, v1127);
  v449 = vtrn1q_s16(v1128, v1129);
  v450 = vtrn2q_s16(v1128, v1129);
  v451 = vtrn1q_s16(v1130, v1131);
  v452 = vtrn2q_s16(v1130, v1131);
  v453 = vtrn1q_s16(v1132, v1133);
  v454 = vtrn2q_s16(v1132, v1133);
  v455 = vtrn1q_s32(v447, v449);
  v456 = vtrn2q_s32(v447, v449);
  v457 = vtrn1q_s32(v448, v450);
  v458 = vtrn2q_s32(v448, v450);
  v459 = vtrn1q_s32(v451, v453);
  v460 = vtrn2q_s32(v451, v453);
  v461 = vtrn1q_s32(v452, v454);
  v462 = vtrn2q_s32(v452, v454);
  v463 = vzip2q_s64(v455, v459);
  v455.i64[1] = v459.i64[0];
  v464 = vzip2q_s64(v457, v461);
  v457.i64[1] = v461.i64[0];
  v465 = vzip2q_s64(v456, v460);
  v456.i64[1] = v460.i64[0];
  v466 = vzip2q_s64(v458, v462);
  v458.i64[1] = v462.i64[0];
  v1190 = v455;
  v1191 = v457;
  v1192 = v456;
  v1193 = v458;
  v1194 = v463;
  v1195 = v464;
  v1196 = v465;
  v1197 = v466;
  v467 = vtrn1q_s16(v1094, v1095);
  v468 = vtrn2q_s16(v1094, v1095);
  v469 = vtrn1q_s16(v1096, v1097);
  v470 = vtrn2q_s16(v1096, v1097);
  v471 = vtrn1q_s16(v1098, v1099);
  v472 = vtrn2q_s16(v1098, v1099);
  v473 = vtrn1q_s16(v1100, v1101);
  v474 = vtrn2q_s16(v1100, v1101);
  v475 = vtrn1q_s32(v467, v469);
  v476 = vtrn2q_s32(v467, v469);
  v477 = vtrn1q_s32(v468, v470);
  v478 = vtrn2q_s32(v468, v470);
  v479 = vtrn1q_s32(v471, v473);
  v480 = vtrn2q_s32(v471, v473);
  v481 = vtrn1q_s32(v472, v474);
  v482 = vtrn2q_s32(v472, v474);
  v483 = vzip2q_s64(v475, v479);
  v475.i64[1] = v479.i64[0];
  v484 = vzip2q_s64(v477, v481);
  v477.i64[1] = v481.i64[0];
  v485 = vzip2q_s64(v476, v480);
  v476.i64[1] = v480.i64[0];
  v486 = vzip2q_s64(v478, v482);
  v478.i64[1] = v482.i64[0];
  v1198 = v475;
  v1199 = v477;
  v1200 = v476;
  v1201 = v478;
  v1202 = v483;
  v1203 = v484;
  v1204 = v485;
  v1205 = v486;
  v487 = vtrn1q_s16(v1062, v1063);
  v488 = vtrn2q_s16(v1062, v1063);
  v489 = vtrn1q_s16(v1064, v1065);
  v490 = vtrn2q_s16(v1064, v1065);
  v491 = vtrn1q_s16(v1066, v1067);
  v492 = vtrn2q_s16(v1066, v1067);
  v493 = vtrn1q_s16(v1068, v1069);
  v494 = vtrn2q_s16(v1068, v1069);
  v495 = vtrn1q_s32(v487, v489);
  v496 = vtrn2q_s32(v487, v489);
  v497 = vtrn1q_s32(v488, v490);
  v498 = vtrn2q_s32(v488, v490);
  v499 = vtrn1q_s32(v491, v493);
  v500 = vtrn2q_s32(v491, v493);
  v501 = vtrn1q_s32(v492, v494);
  v502 = vtrn2q_s32(v492, v494);
  v503 = vzip2q_s64(v495, v499);
  v495.i64[1] = v499.i64[0];
  v504 = vzip2q_s64(v497, v501);
  v497.i64[1] = v501.i64[0];
  v505 = vzip2q_s64(v496, v500);
  v496.i64[1] = v500.i64[0];
  v506 = vzip2q_s64(v498, v502);
  v498.i64[1] = v502.i64[0];
  v1206 = v495;
  v1207 = v497;
  v1208 = v496;
  v1209 = v498;
  v1210 = v503;
  v1211 = v504;
  v1212 = v505;
  v1213 = v506;
  dct_body_second_pass(&v1182, &v1022);
  v507 = vtrn1q_s16(v1022, v1023);
  v508 = vtrn2q_s16(v1022, v1023);
  v509 = vtrn1q_s16(v1024, v1025);
  v510 = vtrn2q_s16(v1024, v1025);
  v511 = vtrn1q_s16(v1026, v1027);
  v512 = vtrn2q_s16(v1026, v1027);
  v513 = vtrn1q_s16(v1028, v1029);
  v514 = vtrn2q_s16(v1028, v1029);
  v515 = vtrn1q_s32(v507, v509);
  v516 = vtrn1q_s32(v508, v510);
  v517 = vtrn1q_s32(v511, v513);
  v518 = vzip2q_s64(v515, v517);
  v515.i64[1] = v517.i64[0];
  v519 = vtrn1q_s32(v512, v514);
  v520 = vzip2q_s64(v516, v519);
  v516.i64[1] = v519.i64[0];
  v521 = vtrn2q_s32(v507, v509);
  v522 = vtrn2q_s32(v511, v513);
  v523 = vzip2q_s64(v521, v522);
  v521.i64[1] = v522.i64[0];
  v524 = vtrn2q_s32(v508, v510);
  v525 = vtrn2q_s32(v512, v514);
  v526 = vzip2q_s64(v524, v525);
  v524.i64[1] = v525.i64[0];
  v1022 = v515;
  v1023 = v516;
  v1024 = v521;
  v1025 = v524;
  v1026 = v518;
  v1027 = v520;
  v1028 = v523;
  v1029 = v526;
  v527 = vtrn1q_s16(v1030, v1031);
  v528 = vtrn2q_s16(v1030, v1031);
  v529 = vtrn1q_s16(v1032, v1033);
  v530 = vtrn2q_s16(v1032, v1033);
  v531 = vtrn1q_s16(v1034, v1035);
  v532 = vtrn2q_s16(v1034, v1035);
  v533 = vtrn1q_s16(v1036, v1037);
  v534 = vtrn2q_s16(v1036, v1037);
  v535 = vtrn1q_s32(v527, v529);
  v536 = vtrn2q_s32(v527, v529);
  v537 = vtrn1q_s32(v528, v530);
  v538 = vtrn2q_s32(v528, v530);
  v539 = vtrn1q_s32(v531, v533);
  v540 = vtrn2q_s32(v531, v533);
  v541 = vtrn1q_s32(v532, v534);
  v542 = vzip2q_s64(v535, v539);
  v535.i64[1] = v539.i64[0];
  v543 = vzip2q_s64(v537, v541);
  v537.i64[1] = v541.i64[0];
  v544 = vtrn2q_s32(v532, v534);
  v545 = vzip2q_s64(v536, v540);
  v536.i64[1] = v540.i64[0];
  v546 = vzip2q_s64(v538, v544);
  v538.i64[1] = v544.i64[0];
  v1030 = v535;
  v1031 = v537;
  v1032 = v536;
  v1033 = v538;
  v1034 = v542;
  v1035 = v543;
  v1036 = v545;
  v1037 = v546;
  v547 = vtrn1q_s16(v1038, v1039);
  v548 = vtrn2q_s16(v1038, v1039);
  v549 = vtrn1q_s16(v1040, v1041);
  v550 = vtrn2q_s16(v1040, v1041);
  v551 = vtrn1q_s16(v1042, v1043);
  v552 = vtrn2q_s16(v1042, v1043);
  v553 = vtrn1q_s16(v1044, v1045);
  v554 = vtrn2q_s16(v1044, v1045);
  v555 = vtrn1q_s32(v547, v549);
  v556 = vtrn2q_s32(v547, v549);
  v557 = vtrn1q_s32(v548, v550);
  v558 = vtrn2q_s32(v548, v550);
  v559 = vtrn1q_s32(v551, v553);
  v560 = vtrn2q_s32(v551, v553);
  v561 = vtrn1q_s32(v552, v554);
  v562 = vtrn2q_s32(v552, v554);
  v563 = vzip2q_s64(v555, v559);
  v564 = vmovl_s16(*v555.i8);
  v552.i64[0] = v555.i64[0];
  v552.i64[1] = v559.i64[0];
  v565 = vzip2q_s64(v557, v561);
  v557.i64[1] = v561.i64[0];
  v566 = vzip2q_s64(v556, v560);
  v556.i64[1] = v560.i64[0];
  v567 = vzip2q_s64(v558, v562);
  v558.i64[1] = v562.i64[0];
  v1038 = v552;
  v1039 = v557;
  v1040 = v556;
  v1041 = v558;
  v1044 = v566;
  v1045 = v567;
  v568 = v567;
  v569 = vtrn1q_s16(v1046, v1047);
  v570 = vtrn2q_s16(v1046, v1047);
  v571 = vtrn1q_s16(v1048, v1049);
  v572 = vtrn2q_s16(v1048, v1049);
  v573 = vtrn1q_s16(v1050, v1051);
  v574 = vtrn2q_s16(v1050, v1051);
  v575 = vtrn1q_s16(v1052, v1053);
  v576 = vtrn2q_s16(v1052, v1053);
  v577 = vtrn1q_s32(v569, v571);
  v578 = vtrn2q_s32(v569, v571);
  v579 = vtrn1q_s32(v570, v572);
  v580 = vtrn2q_s32(v570, v572);
  v581 = vtrn1q_s32(v573, v575);
  v582 = vtrn2q_s32(v573, v575);
  v583 = vtrn1q_s32(v574, v576);
  v584 = vtrn2q_s32(v574, v576);
  v585 = vzip2q_s64(v577, v581);
  v577.i64[1] = v581.i64[0];
  v586 = vzip2q_s64(v578, v582);
  v578.i64[1] = v582.i64[0];
  v587 = vzip2q_s64(v580, v584);
  v580.i64[1] = v584.i64[0];
  v588 = vzip2q_s64(v579, v583);
  v579.i64[1] = v583.i64[0];
  v1042 = v563;
  v1043 = v565;
  v1046 = v577;
  v1047 = v579;
  v1048 = v578;
  v1049 = v580;
  v1050 = v585;
  v1051 = v588;
  v1052 = v586;
  v1053 = v587;
  v589 = v1023;
  v590 = vmovl_high_s16(v1022);
  a2[64] = vmovl_s16(*v1022.i8);
  a2[65] = v590;
  v591 = v1031;
  v592 = vmovl_high_s16(v1030);
  a2[66] = vmovl_s16(*v1030.i8);
  a2[67] = v592;
  a2[68] = v564;
  a2[69] = vmovl_s16(*v559.i8);
  a2[70] = vmovl_s16(*v577.i8);
  a2[71] = vmovl_s16(*v581.i8);
  a2[72] = vmovl_s16(*v589.i8);
  a2[73] = vmovl_high_s16(v589);
  a2[74] = vmovl_s16(*v591.i8);
  a2[75] = vmovl_high_s16(v591);
  v593 = v1040;
  v594 = vmovl_high_s16(v1039);
  a2[76] = vmovl_s16(*v1039.i8);
  a2[77] = v594;
  a2[78] = vmovl_s16(*v579.i8);
  a2[79] = vmovl_s16(*v583.i8);
  v595 = v1025;
  v596 = vmovl_high_s16(v1024);
  a2[80] = vmovl_s16(*v1024.i8);
  a2[81] = v596;
  v597 = v1033;
  v598 = vmovl_high_s16(v1032);
  a2[82] = vmovl_s16(*v1032.i8);
  a2[83] = v598;
  a2[84] = vmovl_s16(*v593.i8);
  a2[85] = vmovl_high_s16(v593);
  v599 = v1049;
  v600 = vmovl_high_s16(v1048);
  a2[86] = vmovl_s16(*v1048.i8);
  a2[87] = v600;
  a2[88] = vmovl_s16(*v595.i8);
  a2[89] = vmovl_high_s16(v595);
  a2[90] = vmovl_s16(*v597.i8);
  a2[91] = vmovl_high_s16(v597);
  v601 = v1042;
  v602 = vmovl_high_s16(v1041);
  a2[92] = vmovl_s16(*v1041.i8);
  a2[93] = v602;
  a2[94] = vmovl_s16(*v599.i8);
  a2[95] = vmovl_high_s16(v599);
  v603 = v1027;
  v604 = vmovl_high_s16(v1026);
  a2[96] = vmovl_s16(*v1026.i8);
  a2[97] = v604;
  v605 = v1035;
  v606 = vmovl_high_s16(v1034);
  a2[98] = vmovl_s16(*v1034.i8);
  a2[99] = v606;
  a2[100] = vmovl_s16(*v601.i8);
  a2[101] = vmovl_high_s16(v601);
  v607 = v1051;
  v608 = vmovl_high_s16(v1050);
  a2[102] = vmovl_s16(*v1050.i8);
  a2[103] = v608;
  a2[104] = vmovl_s16(*v603.i8);
  a2[105] = vmovl_high_s16(v603);
  a2[106] = vmovl_s16(*v605.i8);
  a2[107] = vmovl_high_s16(v605);
  v609 = v1044;
  v610 = vmovl_high_s16(v1043);
  a2[108] = vmovl_s16(*v1043.i8);
  a2[109] = v610;
  a2[110] = vmovl_s16(*v607.i8);
  a2[111] = vmovl_high_s16(v607);
  v611 = v1029;
  v612 = vmovl_high_s16(v1028);
  a2[112] = vmovl_s16(*v1028.i8);
  a2[113] = v612;
  v613 = v1037;
  v614 = vmovl_high_s16(v1036);
  a2[114] = vmovl_s16(*v1036.i8);
  a2[115] = v614;
  a2[116] = vmovl_s16(*v609.i8);
  a2[117] = vmovl_high_s16(v609);
  v615 = v1053;
  v616 = vmovl_high_s16(v1052);
  a2[118] = vmovl_s16(*v1052.i8);
  a2[119] = v616;
  a2[120] = vmovl_s16(*v611.i8);
  a2[121] = vmovl_high_s16(v611);
  a2[122] = vmovl_s16(*v613.i8);
  a2[123] = vmovl_high_s16(v613);
  a2[124] = vmovl_s16(*v568.i8);
  a2[125] = vmovl_high_s16(v568);
  a2[126] = vmovl_s16(*v615.i8);
  a2[127] = vmovl_high_s16(v615);
  v617 = vtrn1q_s16(v1166, v1167);
  v618 = vtrn2q_s16(v1166, v1167);
  v619 = vtrn1q_s16(v1168, v1169);
  v620 = vtrn2q_s16(v1168, v1169);
  v621 = vtrn1q_s16(v1170, v1171);
  v622 = vtrn2q_s16(v1170, v1171);
  v623 = vtrn1q_s16(v1172, v1173);
  v624 = vtrn2q_s16(v1172, v1173);
  v625 = vtrn1q_s32(v617, v619);
  v626 = vtrn2q_s32(v617, v619);
  v627 = vtrn1q_s32(v618, v620);
  v628 = vtrn2q_s32(v618, v620);
  v629 = vtrn1q_s32(v621, v623);
  v630 = vtrn2q_s32(v621, v623);
  v631 = vtrn1q_s32(v622, v624);
  v632 = vtrn2q_s32(v622, v624);
  v633 = vzip2q_s64(v625, v629);
  v625.i64[1] = v629.i64[0];
  v634 = vzip2q_s64(v627, v631);
  v627.i64[1] = v631.i64[0];
  v635 = vzip2q_s64(v626, v630);
  v626.i64[1] = v630.i64[0];
  v636 = vzip2q_s64(v628, v632);
  v628.i64[1] = v632.i64[0];
  v1182 = v625;
  v1183 = v627;
  v1184 = v626;
  v1185 = v628;
  v1186 = v633;
  v1187 = v634;
  v1188 = v635;
  v1189 = v636;
  v637 = vtrn1q_s16(v1134, v1135);
  v638 = vtrn2q_s16(v1134, v1135);
  v639 = vtrn1q_s16(v1136, v1137);
  v640 = vtrn2q_s16(v1136, v1137);
  v641 = vtrn1q_s16(v1138, v1139);
  v642 = vtrn2q_s16(v1138, v1139);
  v643 = vtrn1q_s16(v1140, v1141);
  v644 = vtrn2q_s16(v1140, v1141);
  v645 = vtrn1q_s32(v637, v639);
  v646 = vtrn2q_s32(v637, v639);
  v647 = vtrn1q_s32(v638, v640);
  v648 = vtrn2q_s32(v638, v640);
  v649 = vtrn1q_s32(v641, v643);
  v650 = vtrn2q_s32(v641, v643);
  v651 = vtrn1q_s32(v642, v644);
  v652 = vtrn2q_s32(v642, v644);
  v653 = vzip2q_s64(v645, v649);
  v645.i64[1] = v649.i64[0];
  v654 = vzip2q_s64(v647, v651);
  v647.i64[1] = v651.i64[0];
  v655 = vzip2q_s64(v646, v650);
  v646.i64[1] = v650.i64[0];
  v656 = vzip2q_s64(v648, v652);
  v648.i64[1] = v652.i64[0];
  v1190 = v645;
  v1191 = v647;
  v1192 = v646;
  v1193 = v648;
  v1194 = v653;
  v1195 = v654;
  v1196 = v655;
  v1197 = v656;
  v657 = vtrn1q_s16(v1102, v1103);
  v658 = vtrn2q_s16(v1102, v1103);
  v659 = vtrn1q_s16(v1104, v1105);
  v660 = vtrn2q_s16(v1104, v1105);
  v661 = vtrn1q_s16(v1106, v1107);
  v662 = vtrn2q_s16(v1106, v1107);
  v663 = vtrn1q_s16(v1108, v1109);
  v664 = vtrn2q_s16(v1108, v1109);
  v665 = vtrn1q_s32(v657, v659);
  v666 = vtrn2q_s32(v657, v659);
  v667 = vtrn1q_s32(v658, v660);
  v668 = vtrn2q_s32(v658, v660);
  v669 = vtrn1q_s32(v661, v663);
  v670 = vtrn2q_s32(v661, v663);
  v671 = vtrn1q_s32(v662, v664);
  v672 = vtrn2q_s32(v662, v664);
  v673 = vzip2q_s64(v665, v669);
  v665.i64[1] = v669.i64[0];
  v674 = vzip2q_s64(v667, v671);
  v667.i64[1] = v671.i64[0];
  v675 = vzip2q_s64(v666, v670);
  v666.i64[1] = v670.i64[0];
  v676 = vzip2q_s64(v668, v672);
  v668.i64[1] = v672.i64[0];
  v1198 = v665;
  v1199 = v667;
  v1200 = v666;
  v1201 = v668;
  v1202 = v673;
  v1203 = v674;
  v1204 = v675;
  v1205 = v676;
  v677 = vtrn1q_s16(v1070, v1071);
  v678 = vtrn2q_s16(v1070, v1071);
  v679 = vtrn1q_s16(v1072, v1073);
  v680 = vtrn2q_s16(v1072, v1073);
  v681 = vtrn1q_s16(v1074, v1075);
  v682 = vtrn2q_s16(v1074, v1075);
  v683 = vtrn1q_s16(v1076, v1077);
  v684 = vtrn2q_s16(v1076, v1077);
  v685 = vtrn1q_s32(v677, v679);
  v686 = vtrn2q_s32(v677, v679);
  v687 = vtrn1q_s32(v678, v680);
  v688 = vtrn2q_s32(v678, v680);
  v689 = vtrn1q_s32(v681, v683);
  v690 = vtrn2q_s32(v681, v683);
  v691 = vtrn1q_s32(v682, v684);
  v692 = vtrn2q_s32(v682, v684);
  v693 = vzip2q_s64(v685, v689);
  v685.i64[1] = v689.i64[0];
  v694 = vzip2q_s64(v687, v691);
  v687.i64[1] = v691.i64[0];
  v695 = vzip2q_s64(v686, v690);
  v686.i64[1] = v690.i64[0];
  v696 = vzip2q_s64(v688, v692);
  v688.i64[1] = v692.i64[0];
  v1206 = v685;
  v1207 = v687;
  v1208 = v686;
  v1209 = v688;
  v1210 = v693;
  v1211 = v694;
  v1212 = v695;
  v1213 = v696;
  dct_body_second_pass(&v1182, &v1022);
  v697 = vtrn1q_s16(v1022, v1023);
  v698 = vtrn2q_s16(v1022, v1023);
  v699 = vtrn1q_s16(v1024, v1025);
  v700 = vtrn2q_s16(v1024, v1025);
  v701 = vtrn1q_s16(v1026, v1027);
  v702 = vtrn2q_s16(v1026, v1027);
  v703 = vtrn1q_s16(v1028, v1029);
  v704 = vtrn2q_s16(v1028, v1029);
  v705 = vtrn1q_s32(v697, v699);
  v706 = vtrn1q_s32(v698, v700);
  v707 = vtrn1q_s32(v701, v703);
  v708 = vzip2q_s64(v705, v707);
  v705.i64[1] = v707.i64[0];
  v709 = vtrn1q_s32(v702, v704);
  v710 = vzip2q_s64(v706, v709);
  v706.i64[1] = v709.i64[0];
  v711 = vtrn2q_s32(v697, v699);
  v712 = vtrn2q_s32(v701, v703);
  v713 = vzip2q_s64(v711, v712);
  v711.i64[1] = v712.i64[0];
  v714 = vtrn2q_s32(v698, v700);
  v715 = vtrn2q_s32(v702, v704);
  v716 = vzip2q_s64(v714, v715);
  v714.i64[1] = v715.i64[0];
  v1022 = v705;
  v1023 = v706;
  v1024 = v711;
  v1025 = v714;
  v1026 = v708;
  v1027 = v710;
  v1028 = v713;
  v1029 = v716;
  v717 = vtrn1q_s16(v1030, v1031);
  v718 = vtrn2q_s16(v1030, v1031);
  v719 = vtrn1q_s16(v1032, v1033);
  v720 = vtrn2q_s16(v1032, v1033);
  v721 = vtrn1q_s16(v1034, v1035);
  v722 = vtrn2q_s16(v1034, v1035);
  v723 = vtrn1q_s16(v1036, v1037);
  v724 = vtrn2q_s16(v1036, v1037);
  v725 = vtrn1q_s32(v717, v719);
  v726 = vtrn2q_s32(v717, v719);
  v727 = vtrn1q_s32(v718, v720);
  v728 = vtrn2q_s32(v718, v720);
  v729 = vtrn1q_s32(v721, v723);
  v730 = vtrn2q_s32(v721, v723);
  v731 = vtrn1q_s32(v722, v724);
  v732 = vzip2q_s64(v725, v729);
  v725.i64[1] = v729.i64[0];
  v733 = vzip2q_s64(v727, v731);
  v727.i64[1] = v731.i64[0];
  v734 = vtrn2q_s32(v722, v724);
  v735 = vzip2q_s64(v726, v730);
  v726.i64[1] = v730.i64[0];
  v736 = vzip2q_s64(v728, v734);
  v728.i64[1] = v734.i64[0];
  v1030 = v725;
  v1031 = v727;
  v1032 = v726;
  v1033 = v728;
  v1034 = v732;
  v1035 = v733;
  v1036 = v735;
  v1037 = v736;
  v737 = vtrn1q_s16(v1038, v1039);
  v738 = vtrn2q_s16(v1038, v1039);
  v739 = vtrn1q_s16(v1040, v1041);
  v740 = vtrn2q_s16(v1040, v1041);
  v741 = vtrn1q_s16(v1042, v1043);
  v742 = vtrn2q_s16(v1042, v1043);
  v743 = vtrn1q_s16(v1044, v1045);
  v744 = vtrn2q_s16(v1044, v1045);
  v745 = vtrn1q_s32(v737, v739);
  v746 = vtrn2q_s32(v737, v739);
  v747 = vtrn1q_s32(v738, v740);
  v748 = vtrn2q_s32(v738, v740);
  v749 = vtrn1q_s32(v741, v743);
  v750 = vtrn2q_s32(v741, v743);
  v751 = vtrn1q_s32(v742, v744);
  v752 = vtrn2q_s32(v742, v744);
  v753 = vzip2q_s64(v745, v749);
  v754 = vmovl_s16(*v745.i8);
  v742.i64[0] = v745.i64[0];
  v742.i64[1] = v749.i64[0];
  v755 = vzip2q_s64(v747, v751);
  v747.i64[1] = v751.i64[0];
  v756 = vzip2q_s64(v746, v750);
  v746.i64[1] = v750.i64[0];
  v757 = vzip2q_s64(v748, v752);
  v748.i64[1] = v752.i64[0];
  v1038 = v742;
  v1039 = v747;
  v1040 = v746;
  v1041 = v748;
  v1044 = v756;
  v1045 = v757;
  v758 = v757;
  v759 = vtrn1q_s16(v1046, v1047);
  v760 = vtrn2q_s16(v1046, v1047);
  v761 = vtrn1q_s16(v1048, v1049);
  v762 = vtrn2q_s16(v1048, v1049);
  v763 = vtrn1q_s16(v1050, v1051);
  v764 = vtrn2q_s16(v1050, v1051);
  v765 = vtrn1q_s16(v1052, v1053);
  v766 = vtrn2q_s16(v1052, v1053);
  v767 = vtrn1q_s32(v759, v761);
  v768 = vtrn2q_s32(v759, v761);
  v769 = vtrn1q_s32(v760, v762);
  v770 = vtrn2q_s32(v760, v762);
  v771 = vtrn1q_s32(v763, v765);
  v772 = vtrn2q_s32(v763, v765);
  v773 = vtrn1q_s32(v764, v766);
  v774 = vtrn2q_s32(v764, v766);
  v775 = vzip2q_s64(v767, v771);
  v767.i64[1] = v771.i64[0];
  v776 = vzip2q_s64(v768, v772);
  v768.i64[1] = v772.i64[0];
  v777 = vzip2q_s64(v770, v774);
  v770.i64[1] = v774.i64[0];
  v778 = vzip2q_s64(v769, v773);
  v769.i64[1] = v773.i64[0];
  v1042 = v753;
  v1043 = v755;
  v1046 = v767;
  v1047 = v769;
  v1048 = v768;
  v1049 = v770;
  v1050 = v775;
  v1051 = v778;
  v1052 = v776;
  v1053 = v777;
  v779 = v1023;
  v780 = vmovl_high_s16(v1022);
  a2[128] = vmovl_s16(*v1022.i8);
  a2[129] = v780;
  v781 = v1031;
  v782 = vmovl_high_s16(v1030);
  a2[130] = vmovl_s16(*v1030.i8);
  a2[131] = v782;
  a2[132] = v754;
  a2[133] = vmovl_s16(*v749.i8);
  a2[134] = vmovl_s16(*v767.i8);
  a2[135] = vmovl_s16(*v771.i8);
  a2[136] = vmovl_s16(*v779.i8);
  a2[137] = vmovl_high_s16(v779);
  a2[138] = vmovl_s16(*v781.i8);
  a2[139] = vmovl_high_s16(v781);
  v783 = v1040;
  v784 = vmovl_high_s16(v1039);
  a2[140] = vmovl_s16(*v1039.i8);
  a2[141] = v784;
  a2[142] = vmovl_s16(*v769.i8);
  a2[143] = vmovl_s16(*v773.i8);
  v785 = v1025;
  v786 = vmovl_high_s16(v1024);
  a2[144] = vmovl_s16(*v1024.i8);
  a2[145] = v786;
  v787 = v1033;
  v788 = vmovl_high_s16(v1032);
  a2[146] = vmovl_s16(*v1032.i8);
  a2[147] = v788;
  a2[148] = vmovl_s16(*v783.i8);
  a2[149] = vmovl_high_s16(v783);
  v789 = v1049;
  v790 = vmovl_high_s16(v1048);
  a2[150] = vmovl_s16(*v1048.i8);
  a2[151] = v790;
  a2[152] = vmovl_s16(*v785.i8);
  a2[153] = vmovl_high_s16(v785);
  a2[154] = vmovl_s16(*v787.i8);
  a2[155] = vmovl_high_s16(v787);
  v791 = v1042;
  v792 = vmovl_high_s16(v1041);
  a2[156] = vmovl_s16(*v1041.i8);
  a2[157] = v792;
  a2[158] = vmovl_s16(*v789.i8);
  a2[159] = vmovl_high_s16(v789);
  v793 = v1027;
  v794 = vmovl_high_s16(v1026);
  a2[160] = vmovl_s16(*v1026.i8);
  a2[161] = v794;
  v795 = v1035;
  v796 = vmovl_high_s16(v1034);
  a2[162] = vmovl_s16(*v1034.i8);
  a2[163] = v796;
  a2[164] = vmovl_s16(*v791.i8);
  a2[165] = vmovl_high_s16(v791);
  v797 = v1051;
  v798 = vmovl_high_s16(v1050);
  a2[166] = vmovl_s16(*v1050.i8);
  a2[167] = v798;
  a2[168] = vmovl_s16(*v793.i8);
  a2[169] = vmovl_high_s16(v793);
  a2[170] = vmovl_s16(*v795.i8);
  a2[171] = vmovl_high_s16(v795);
  v799 = v1044;
  v800 = vmovl_high_s16(v1043);
  a2[172] = vmovl_s16(*v1043.i8);
  a2[173] = v800;
  a2[174] = vmovl_s16(*v797.i8);
  a2[175] = vmovl_high_s16(v797);
  v801 = v1029;
  v802 = vmovl_high_s16(v1028);
  a2[176] = vmovl_s16(*v1028.i8);
  a2[177] = v802;
  v803 = v1037;
  v804 = vmovl_high_s16(v1036);
  a2[178] = vmovl_s16(*v1036.i8);
  a2[179] = v804;
  a2[180] = vmovl_s16(*v799.i8);
  a2[181] = vmovl_high_s16(v799);
  v805 = v1053;
  v806 = vmovl_high_s16(v1052);
  a2[182] = vmovl_s16(*v1052.i8);
  a2[183] = v806;
  a2[184] = vmovl_s16(*v801.i8);
  a2[185] = vmovl_high_s16(v801);
  a2[186] = vmovl_s16(*v803.i8);
  a2[187] = vmovl_high_s16(v803);
  a2[188] = vmovl_s16(*v758.i8);
  a2[189] = vmovl_high_s16(v758);
  a2[190] = vmovl_s16(*v805.i8);
  a2[191] = vmovl_high_s16(v805);
  v807 = vtrn1q_s16(v1174, v1175);
  v808 = vtrn2q_s16(v1174, v1175);
  v809 = vtrn1q_s16(v1176, v1177);
  v810 = vtrn2q_s16(v1176, v1177);
  v811 = vtrn1q_s16(v1178, v1179);
  v812 = vtrn2q_s16(v1178, v1179);
  v813 = vtrn1q_s16(v1180, v1181);
  v814 = vtrn2q_s16(v1180, v1181);
  v815 = vtrn1q_s32(v807, v809);
  v816 = vtrn2q_s32(v807, v809);
  v817 = vtrn1q_s32(v808, v810);
  v818 = vtrn2q_s32(v808, v810);
  v819 = vtrn1q_s32(v811, v813);
  v820 = vtrn2q_s32(v811, v813);
  v821 = vtrn1q_s32(v812, v814);
  v822 = vtrn2q_s32(v812, v814);
  v823 = vzip2q_s64(v815, v819);
  v815.i64[1] = v819.i64[0];
  v824 = vzip2q_s64(v817, v821);
  v817.i64[1] = v821.i64[0];
  v825 = vzip2q_s64(v816, v820);
  v816.i64[1] = v820.i64[0];
  v826 = vzip2q_s64(v818, v822);
  v818.i64[1] = v822.i64[0];
  v1182 = v815;
  v1183 = v817;
  v1184 = v816;
  v1185 = v818;
  v1186 = v823;
  v1187 = v824;
  v1188 = v825;
  v1189 = v826;
  v827 = vtrn1q_s16(v1142, v1143);
  v828 = vtrn2q_s16(v1142, v1143);
  v829 = vtrn1q_s16(v1144, v1145);
  v830 = vtrn2q_s16(v1144, v1145);
  v831 = vtrn1q_s16(v1146, v1147);
  v832 = vtrn2q_s16(v1146, v1147);
  v833 = vtrn1q_s16(v1148, v1149);
  v834 = vtrn2q_s16(v1148, v1149);
  v835 = vtrn1q_s32(v827, v829);
  v836 = vtrn2q_s32(v827, v829);
  v837 = vtrn1q_s32(v828, v830);
  v838 = vtrn2q_s32(v828, v830);
  v839 = vtrn1q_s32(v831, v833);
  v840 = vtrn2q_s32(v831, v833);
  v841 = vtrn1q_s32(v832, v834);
  v842 = vtrn2q_s32(v832, v834);
  v843 = vzip2q_s64(v835, v839);
  v835.i64[1] = v839.i64[0];
  v844 = vzip2q_s64(v837, v841);
  v837.i64[1] = v841.i64[0];
  v845 = vzip2q_s64(v836, v840);
  v836.i64[1] = v840.i64[0];
  v846 = vzip2q_s64(v838, v842);
  v838.i64[1] = v842.i64[0];
  v1190 = v835;
  v1191 = v837;
  v1192 = v836;
  v1193 = v838;
  v1194 = v843;
  v1195 = v844;
  v1196 = v845;
  v1197 = v846;
  v847 = vtrn1q_s16(v1110, v1111);
  v848 = vtrn2q_s16(v1110, v1111);
  v849 = vtrn1q_s16(v1112, v1113);
  v850 = vtrn2q_s16(v1112, v1113);
  v851 = vtrn1q_s16(v1114, v1115);
  v852 = vtrn2q_s16(v1114, v1115);
  v853 = vtrn1q_s16(v1116, v1117);
  v854 = vtrn2q_s16(v1116, v1117);
  v855 = vtrn1q_s32(v847, v849);
  v856 = vtrn2q_s32(v847, v849);
  v857 = vtrn1q_s32(v848, v850);
  v858 = vtrn2q_s32(v848, v850);
  v859 = vtrn1q_s32(v851, v853);
  v860 = vtrn2q_s32(v851, v853);
  v861 = vtrn1q_s32(v852, v854);
  v862 = vtrn2q_s32(v852, v854);
  v863 = vzip2q_s64(v855, v859);
  v855.i64[1] = v859.i64[0];
  v864 = vzip2q_s64(v857, v861);
  v857.i64[1] = v861.i64[0];
  v865 = vzip2q_s64(v856, v860);
  v856.i64[1] = v860.i64[0];
  v866 = vzip2q_s64(v858, v862);
  v858.i64[1] = v862.i64[0];
  v1198 = v855;
  v1199 = v857;
  v1200 = v856;
  v1201 = v858;
  v1202 = v863;
  v1203 = v864;
  v1204 = v865;
  v1205 = v866;
  v867 = vtrn1q_s16(v1078, v1079);
  v868 = vtrn2q_s16(v1078, v1079);
  v869 = vtrn1q_s16(v1080, v1081);
  v870 = vtrn2q_s16(v1080, v1081);
  v871 = vtrn1q_s16(v1082, v1083);
  v872 = vtrn2q_s16(v1082, v1083);
  v873 = vtrn1q_s16(v1084, v1085);
  v874 = vtrn2q_s16(v1084, v1085);
  v875 = vtrn1q_s32(v867, v869);
  v876 = vtrn2q_s32(v867, v869);
  v877 = vtrn1q_s32(v868, v870);
  v878 = vtrn2q_s32(v868, v870);
  v879 = vtrn1q_s32(v871, v873);
  v880 = vtrn2q_s32(v871, v873);
  v881 = vtrn1q_s32(v872, v874);
  v882 = vtrn2q_s32(v872, v874);
  v883 = vzip2q_s64(v875, v879);
  v875.i64[1] = v879.i64[0];
  v884 = vzip2q_s64(v877, v881);
  v877.i64[1] = v881.i64[0];
  v885 = vzip2q_s64(v876, v880);
  v876.i64[1] = v880.i64[0];
  v886 = vzip2q_s64(v878, v882);
  v878.i64[1] = v882.i64[0];
  v1206 = v875;
  v1207 = v877;
  v1208 = v876;
  v1209 = v878;
  v1210 = v883;
  v1211 = v884;
  v1212 = v885;
  v1213 = v886;
  dct_body_second_pass(&v1182, &v1022);
  v887 = vtrn1q_s16(v1022, v1023);
  v888 = vtrn2q_s16(v1022, v1023);
  v889 = vtrn1q_s16(v1024, v1025);
  v890 = vtrn2q_s16(v1024, v1025);
  v891 = vtrn1q_s16(v1026, v1027);
  v892 = vtrn2q_s16(v1026, v1027);
  v893 = vtrn1q_s16(v1028, v1029);
  v894 = vtrn2q_s16(v1028, v1029);
  v895 = vtrn1q_s32(v887, v889);
  v896 = vtrn1q_s32(v891, v893);
  v897 = vzip2q_s64(v895, v896);
  v895.i64[1] = v896.i64[0];
  v898 = vtrn1q_s32(v888, v890);
  v899 = vtrn1q_s32(v892, v894);
  v900 = vzip2q_s64(v898, v899);
  v898.i64[1] = v899.i64[0];
  v901 = vtrn2q_s32(v887, v889);
  v902 = vtrn2q_s32(v891, v893);
  v903 = vzip2q_s64(v901, v902);
  v901.i64[1] = v902.i64[0];
  v904 = vtrn2q_s32(v888, v890);
  v905 = vtrn2q_s32(v892, v894);
  v906 = vzip2q_s64(v904, v905);
  v904.i64[1] = v905.i64[0];
  v1022 = v895;
  v1023 = v898;
  v1024 = v901;
  v1025 = v904;
  v1026 = v897;
  v1027 = v900;
  v1028 = v903;
  v1029 = v906;
  v907 = vtrn1q_s16(v1030, v1031);
  v908 = vtrn2q_s16(v1030, v1031);
  v909 = vtrn1q_s16(v1032, v1033);
  v910 = vtrn2q_s16(v1032, v1033);
  v911 = vtrn1q_s16(v1034, v1035);
  v912 = vtrn2q_s16(v1034, v1035);
  v913 = vtrn1q_s16(v1036, v1037);
  v914 = vtrn2q_s16(v1036, v1037);
  v915 = vtrn1q_s32(v907, v909);
  v916 = vtrn2q_s32(v907, v909);
  v917 = vtrn1q_s32(v908, v910);
  v918 = vtrn2q_s32(v908, v910);
  v919 = vtrn1q_s32(v911, v913);
  v920 = vtrn2q_s32(v911, v913);
  v921 = vtrn1q_s32(v912, v914);
  v922 = vtrn2q_s32(v912, v914);
  v923 = vzip2q_s64(v915, v919);
  v915.i64[1] = v919.i64[0];
  v924 = vzip2q_s64(v917, v921);
  v917.i64[1] = v921.i64[0];
  v925 = vzip2q_s64(v916, v920);
  v916.i64[1] = v920.i64[0];
  v926 = vzip2q_s64(v918, v922);
  v918.i64[1] = v922.i64[0];
  v1030 = v915;
  v1031 = v917;
  v1032 = v916;
  v1033 = v918;
  v1034 = v923;
  v1035 = v924;
  v1036 = v925;
  v1037 = v926;
  v927 = vtrn1q_s16(v1038, v1039);
  v928 = vtrn2q_s16(v1038, v1039);
  v929 = vtrn1q_s16(v1040, v1041);
  v930 = vtrn2q_s16(v1040, v1041);
  v931 = vtrn1q_s16(v1042, v1043);
  v932 = vtrn2q_s16(v1042, v1043);
  v933 = vtrn1q_s16(v1044, v1045);
  v934 = vtrn2q_s16(v1044, v1045);
  v935 = vtrn1q_s32(v927, v929);
  v936 = vtrn2q_s32(v927, v929);
  v937 = vtrn1q_s32(v928, v930);
  v938 = vtrn2q_s32(v928, v930);
  v939 = vtrn1q_s32(v931, v933);
  v940 = vtrn2q_s32(v931, v933);
  v941 = vtrn1q_s32(v932, v934);
  v942 = vtrn2q_s32(v932, v934);
  v943 = vzip2q_s64(v937, v941);
  v937.i64[1] = v941.i64[0];
  v944 = vzip2q_s64(v936, v940);
  v936.i64[1] = v940.i64[0];
  v945 = vzip2q_s64(v938, v942);
  v938.i64[1] = v942.i64[0];
  v1039 = v937;
  v1040 = v936;
  v1041 = v938;
  v1042 = vzip2q_s64(v935, v939);
  v1043 = v943;
  v1044 = v944;
  v946 = v945;
  v947 = vtrn1q_s16(v1046, v1047);
  v948 = vtrn2q_s16(v1046, v1047);
  v949 = vtrn1q_s16(v1048, v1049);
  v950 = vtrn2q_s16(v1048, v1049);
  v951 = vtrn1q_s16(v1050, v1051);
  v952 = vtrn2q_s16(v1050, v1051);
  v953 = vtrn1q_s16(v1052, v1053);
  v954 = vtrn2q_s16(v1052, v1053);
  v955 = vtrn1q_s32(v947, v949);
  v956 = vtrn2q_s32(v947, v949);
  v957 = vtrn1q_s32(v948, v950);
  v958 = vtrn2q_s32(v948, v950);
  v959 = vtrn1q_s32(v951, v953);
  v960 = vtrn2q_s32(v951, v953);
  v961 = vtrn1q_s32(v952, v954);
  v962 = vtrn2q_s32(v952, v954);
  v963 = vzip2q_s64(v956, v960);
  v956.i64[1] = v960.i64[0];
  v964 = vzip2q_s64(v958, v962);
  v958.i64[1] = v962.i64[0];
  v1048 = v956;
  v1049 = v958;
  v1050 = vzip2q_s64(v955, v959);
  v1051 = vzip2q_s64(v957, v961);
  v1052 = v963;
  v1053 = v964;
  v965 = v1023;
  v966 = vmovl_high_s16(v1022);
  a2[192] = vmovl_s16(*v1022.i8);
  a2[193] = v966;
  v967 = v1031;
  v968 = vmovl_high_s16(v1030);
  a2[194] = vmovl_s16(*v1030.i8);
  a2[195] = v968;
  a2[196] = vmovl_s16(*v935.i8);
  a2[197] = vmovl_s16(*v939.i8);
  a2[198] = vmovl_s16(*v955.i8);
  a2[199] = vmovl_s16(*v959.i8);
  a2[200] = vmovl_s16(*v965.i8);
  a2[201] = vmovl_high_s16(v965);
  a2[202] = vmovl_s16(*v967.i8);
  a2[203] = vmovl_high_s16(v967);
  v969 = v1040;
  v970 = vmovl_high_s16(v1039);
  a2[204] = vmovl_s16(*v1039.i8);
  a2[205] = v970;
  a2[206] = vmovl_s16(*v957.i8);
  a2[207] = vmovl_s16(*v961.i8);
  v971 = v1025;
  v972 = vmovl_high_s16(v1024);
  a2[208] = vmovl_s16(*v1024.i8);
  a2[209] = v972;
  v973 = v1033;
  v974 = vmovl_high_s16(v1032);
  a2[210] = vmovl_s16(*v1032.i8);
  a2[211] = v974;
  a2[212] = vmovl_s16(*v969.i8);
  a2[213] = vmovl_high_s16(v969);
  v975 = v1049;
  v976 = vmovl_high_s16(v1048);
  a2[214] = vmovl_s16(*v1048.i8);
  a2[215] = v976;
  a2[216] = vmovl_s16(*v971.i8);
  a2[217] = vmovl_high_s16(v971);
  a2[218] = vmovl_s16(*v973.i8);
  a2[219] = vmovl_high_s16(v973);
  v977 = v1042;
  v978 = vmovl_high_s16(v1041);
  a2[220] = vmovl_s16(*v1041.i8);
  a2[221] = v978;
  a2[222] = vmovl_s16(*v975.i8);
  a2[223] = vmovl_high_s16(v975);
  v979 = v1027;
  v980 = vmovl_high_s16(v1026);
  a2[224] = vmovl_s16(*v1026.i8);
  a2[225] = v980;
  v981 = v1035;
  v982 = vmovl_high_s16(v1034);
  a2[226] = vmovl_s16(*v1034.i8);
  a2[227] = v982;
  a2[228] = vmovl_s16(*v977.i8);
  a2[229] = vmovl_high_s16(v977);
  v983 = v1051;
  v984 = vmovl_high_s16(v1050);
  a2[230] = vmovl_s16(*v1050.i8);
  a2[231] = v984;
  a2[232] = vmovl_s16(*v979.i8);
  a2[233] = vmovl_high_s16(v979);
  a2[234] = vmovl_s16(*v981.i8);
  a2[235] = vmovl_high_s16(v981);
  v985 = v1044;
  v986 = vmovl_high_s16(v1043);
  a2[236] = vmovl_s16(*v1043.i8);
  a2[237] = v986;
  a2[238] = vmovl_s16(*v983.i8);
  a2[239] = vmovl_high_s16(v983);
  v987 = v1029;
  v988 = vmovl_high_s16(v1028);
  a2[240] = vmovl_s16(*v1028.i8);
  a2[241] = v988;
  v989 = v1037;
  v990 = vmovl_high_s16(v1036);
  a2[242] = vmovl_s16(*v1036.i8);
  a2[243] = v990;
  a2[244] = vmovl_s16(*v985.i8);
  a2[245] = vmovl_high_s16(v985);
  v991 = v1053;
  v992 = vmovl_high_s16(v1052);
  a2[246] = vmovl_s16(*v1052.i8);
  a2[247] = v992;
  a2[248] = vmovl_s16(*v987.i8);
  a2[249] = vmovl_high_s16(v987);
  a2[250] = vmovl_s16(*v989.i8);
  a2[251] = vmovl_high_s16(v989);
  a2[252] = vmovl_s16(*v946.i8);
  a2[253] = vmovl_high_s16(v946);
  a2[254] = vmovl_s16(*v991.i8);
  a2[255] = vmovl_high_s16(v991);
}

int16x8_t dct_body_first_pass(int16x8_t *a1, int16x8_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[13];
  v4 = a1[14];
  v6 = vaddq_s16(v4, v2);
  v7 = a1[3];
  v9 = a1[11];
  v8 = a1[12];
  v10 = vaddq_s16(v5, v3);
  v320 = vaddq_s16(v8, v7);
  v11 = a1[4];
  v12 = a1[5];
  v14 = a1[9];
  v13 = a1[10];
  v318 = vaddq_s16(v9, v11);
  v15 = vaddq_s16(v13, v12);
  v16 = a1[6];
  v292 = a1[7];
  v294 = a1[8];
  v17 = vaddq_s16(v14, v16);
  v18 = vsubq_s16(v12, v13);
  v19 = vsubq_s16(v11, v9);
  v20 = vsubq_s16(v7, v8);
  v21 = vsubq_s16(v3, v5);
  v341 = vsubq_s16(v2, v4);
  v343 = vsubq_s16(v16, v14);
  v22 = vdupq_n_s16(0x2D41u);
  v24 = a1[26];
  v23 = a1[27];
  v25 = a1[20];
  v26 = a1[21];
  v27 = vuzp1q_s16(vrshrq_n_s32(vmlal_s16(vmull_s16(*v25.i8, *v22.i8), *v23.i8, *v22.i8), 0xEuLL), vrshrq_n_s32(vmlal_high_s16(vmull_high_s16(v25, v22), v23, v22), 0xEuLL));
  v28 = vuzp1q_s16(vrshrq_n_s32(vmlsl_s16(vmull_s16(*v23.i8, *v22.i8), *v25.i8, *v22.i8), 0xEuLL), vrshrq_n_s32(vmlsl_high_s16(vmull_high_s16(v23, v22), v25, v22), 0xEuLL));
  v29 = vuzp1q_s16(vrshrq_n_s32(vmlal_s16(vmull_s16(*v26.i8, *v22.i8), *v24.i8, *v22.i8), 0xEuLL), vrshrq_n_s32(vmlal_high_s16(vmull_high_s16(v26, v22), v24, v22), 0xEuLL));
  v30 = vuzp1q_s16(vrshrq_n_s32(vmlsl_s16(vmull_s16(*v24.i8, *v22.i8), *v26.i8, *v22.i8), 0xEuLL), vrshrq_n_s32(vmlsl_high_s16(vmull_high_s16(v24, v22), v26, v22), 0xEuLL));
  v32 = a1[24];
  v31 = a1[25];
  v33 = a1[22];
  v34 = a1[23];
  v316 = vmlal_s16(vmull_s16(*v33.i8, *v22.i8), *v31.i8, *v22.i8);
  v35 = vmlal_high_s16(vmull_high_s16(v33, v22), v31, v22);
  v337 = vmlsl_s16(vmull_s16(*v31.i8, *v22.i8), *v33.i8, *v22.i8);
  v339 = vmlsl_high_s16(vmull_high_s16(v31, v22), v33, v22);
  v335 = vmlal_s16(vmull_s16(*v34.i8, *v22.i8), *v32.i8, *v22.i8);
  v331 = vmlal_high_s16(vmull_high_s16(v34, v22), v32, v22);
  v333 = vmlsl_s16(vmull_s16(*v32.i8, *v22.i8), *v34.i8, *v22.i8);
  v351 = vaddq_s16(v17, v6);
  v352 = vaddq_s16(v15, v10);
  v36 = vsubq_s16(v10, v15);
  v37 = vsubq_s16(v6, v17);
  v326 = vuzp1q_s16(vrshrq_n_s32(vmlal_s16(vmull_s16(*v18.i8, *v22.i8), *v21.i8, *v22.i8), 0xEuLL), vrshrq_n_s32(vmlal_high_s16(vmull_high_s16(v18, v22), v21, v22), 0xEuLL));
  v329 = vmlsl_high_s16(vmull_high_s16(v32, v22), v34, v22);
  v38 = vuzp1q_s16(vrshrq_n_s32(vmlsl_s16(vmull_s16(*v21.i8, *v22.i8), *v18.i8, *v22.i8), 0xEuLL), vrshrq_n_s32(vmlsl_high_s16(vmull_high_s16(v21, v22), v18, v22), 0xEuLL));
  v313 = vmlal_s16(vmull_s16(*v19.i8, *v22.i8), *v20.i8, *v22.i8);
  v309 = vmlal_high_s16(vmull_high_s16(v19, v22), v20, v22);
  v311 = vmlsl_s16(vmull_s16(*v20.i8, *v22.i8), *v19.i8, *v22.i8);
  v307 = vmlsl_high_s16(vmull_high_s16(v20, v22), v19, v22);
  v39 = vmlal_s16(vmull_s16(*v36.i8, *v22.i8), *v37.i8, *v22.i8);
  v40 = vmlal_high_s16(vmull_high_s16(v36, v22), v37, v22);
  v41 = vmlsl_s16(vmull_s16(*v37.i8, *v22.i8), *v36.i8, *v22.i8);
  v42 = vmlsl_high_s16(vmull_high_s16(v37, v22), v36, v22);
  v44 = a1[18];
  v43 = a1[19];
  v45 = vaddq_s16(v44, v30);
  v46 = a1[28];
  v47 = a1[29];
  v48 = vaddq_s16(v47, v29);
  v49 = vdupq_n_s16(0x3B21u);
  v50 = vdupq_n_s16(0x187Eu);
  v51 = vmlal_s16(vmull_s16(*v45.i8, *v50.i8), *v48.i8, *v49.i8);
  v52 = vmlal_high_s16(vmull_high_s16(v45, v50), v48, v49);
  v53 = vmlsl_s16(vmull_s16(*v48.i8, *v50.i8), *v45.i8, *v49.i8);
  v54 = vmlsl_high_s16(vmull_high_s16(v48, v50), v45, v49);
  v55 = v28;
  v56 = vaddq_s16(v43, v28);
  v57 = vaddq_s16(v46, v27);
  v58 = v27;
  v305 = vmlal_s16(vmull_s16(*v56.i8, *v50.i8), *v57.i8, *v49.i8);
  v303 = vmlal_high_s16(vmull_high_s16(v56, v50), v57, v49);
  v299 = vmlsl_high_s16(vmull_high_s16(v57, v50), v56, v49);
  v301 = vmlsl_s16(vmull_s16(*v57.i8, *v50.i8), *v56.i8, *v49.i8);
  v297 = a1[15];
  v59 = vaddq_s16(v297, *a1);
  v60 = vaddq_s16(v294, v292);
  v349 = vaddq_s16(v60, v59);
  v350 = vaddq_s16(v318, v320);
  v61 = vsubq_s16(v351, v352);
  v62 = vsubq_s16(v349, v350);
  v348 = vmlal_s16(vmull_s16(*v61.i8, *v50.i8), *v62.i8, *v49.i8);
  v347 = vmlal_high_s16(vmull_high_s16(v61, v50), v62, v49);
  v345 = vmlsl_high_s16(vmull_high_s16(v62, v50), v61, v49);
  v346 = vmlsl_s16(vmull_s16(*v62.i8, *v50.i8), *v61.i8, *v49.i8);
  v63 = vaddq_s16(v343, v38);
  v64 = vaddq_s16(v341, v326);
  v65 = vmlal_s16(vmull_s16(*v63.i8, *v50.i8), *v64.i8, *v49.i8);
  v66 = vmlal_high_s16(vmull_high_s16(v63, v50), v64, v49);
  v67 = vmlsl_s16(vmull_s16(*v64.i8, *v50.i8), *v63.i8, *v49.i8);
  v68 = vmlsl_high_s16(vmull_high_s16(v64, v50), v63, v49);
  v69 = vsubq_s16(v43, v55);
  v70 = vsubq_s16(v44, v30);
  v71 = vsubq_s16(v47, v29);
  v72 = vsubq_s16(v46, v58);
  v73 = vsubq_s16(v343, v38);
  v74 = vdupq_n_s16(0xC4DFu);
  v75 = vsubq_s16(v341, v326);
  v327 = vmlal_s16(vmull_s16(*v69.i8, *v74.i8), *v72.i8, *v50.i8);
  v324 = vmlal_high_s16(vmull_high_s16(v69, v74), v72, v50);
  v278 = vmlsl_s16(vmull_s16(*v72.i8, *v74.i8), *v69.i8, *v50.i8);
  v322 = vmlsl_high_s16(vmull_high_s16(v72, v74), v69, v50);
  v76 = vmlal_s16(vmull_s16(*v70.i8, *v74.i8), *v71.i8, *v50.i8);
  v77 = vmlal_high_s16(vmull_high_s16(v70, v74), v71, v50);
  v78 = vmlsl_s16(vmull_s16(*v71.i8, *v74.i8), *v70.i8, *v50.i8);
  v79 = vmlsl_high_s16(vmull_high_s16(v71, v74), v70, v50);
  v287 = vmlal_s16(vmull_s16(*v73.i8, *v74.i8), *v75.i8, *v50.i8);
  v80 = vmlal_high_s16(vmull_high_s16(v73, v74), v75, v50);
  v81 = vmlsl_s16(vmull_s16(*v75.i8, *v74.i8), *v73.i8, *v50.i8);
  v82 = vmlsl_high_s16(vmull_high_s16(v75, v74), v73, v50);
  v83 = vuzp1q_s16(vrshrq_n_s32(v316, 0xEuLL), vrshrq_n_s32(v35, 0xEuLL));
  v84 = vuzp1q_s16(vrshrq_n_s32(v337, 0xEuLL), vrshrq_n_s32(v339, 0xEuLL));
  v85 = vsubq_s16(v320, v318);
  v86 = vsubq_s16(v59, v60);
  v87 = vuzp1q_s16(vrshrq_n_s32(v39, 0xEuLL), vrshrq_n_s32(v40, 0xEuLL));
  v88 = vuzp1q_s16(vrshrq_n_s32(v41, 0xEuLL), vrshrq_n_s32(v42, 0xEuLL));
  v89 = vqrshrn_high_n_s32(vqrshrn_n_s32(v51, 0xEuLL), v52, 0xEuLL);
  v90 = vqrshrn_high_n_s32(vqrshrn_n_s32(v53, 0xEuLL), v54, 0xEuLL);
  v91 = vaddq_s16(v85, v88);
  v92 = vdupq_n_s16(0x3EC5u);
  v93 = vaddq_s16(v86, v87);
  v94 = vdupq_n_s16(0xC7Cu);
  v344 = vmlal_s16(vmull_s16(*v91.i8, *v94.i8), *v93.i8, *v92.i8);
  v342 = vmlal_high_s16(vmull_high_s16(v91, v94), v93, v92);
  v338 = vmlsl_high_s16(vmull_high_s16(v93, v94), v91, v92);
  v340 = vmlsl_s16(vmull_s16(*v93.i8, *v94.i8), *v91.i8, *v92.i8);
  v95 = a1[17];
  v96 = vaddq_s16(v95, v84);
  v97 = a1[30];
  v98 = vaddq_s16(v97, v83);
  v99 = vaddq_s16(v90, v96);
  v100 = vaddq_s16(v89, v98);
  v101 = vmlal_s16(vmull_s16(*v99.i8, *v94.i8), *v100.i8, *v92.i8);
  v102 = vmlal_high_s16(vmull_high_s16(v99, v94), v100, v92);
  v103 = vmlsl_s16(vmull_s16(*v100.i8, *v94.i8), *v99.i8, *v92.i8);
  v104 = vmlsl_high_s16(vmull_high_s16(v100, v94), v99, v92);
  v105 = vsubq_s16(v96, v90);
  v106 = vsubq_s16(v98, v89);
  v107 = vdupq_n_s16(0xC13Bu);
  v108 = vmlal_s16(vmull_s16(*v105.i8, *v107.i8), *v106.i8, *v94.i8);
  v109 = vmull_s16(*v106.i8, *v107.i8);
  v110 = vmull_high_s16(v106, v107);
  v111 = vmlal_high_s16(vmull_high_s16(v105, v107), v106, v94);
  v112 = vmlsl_s16(v109, *v105.i8, *v94.i8);
  v113 = vmlsl_high_s16(v110, v105, v94);
  v114 = vsubq_s16(v95, v84);
  v115 = vsubq_s16(v97, v83);
  v116 = vqrshrn_high_n_s32(vqrshrn_n_s32(v76, 0xEuLL), v77, 0xEuLL);
  v117 = vqrshrn_high_n_s32(vqrshrn_n_s32(v78, 0xEuLL), v79, 0xEuLL);
  v118 = vsubq_s16(v85, v88);
  v119 = vsubq_s16(v86, v87);
  v120 = vdupq_n_s16(0x238Eu);
  v121 = vdupq_n_s16(0x3537u);
  v321 = vmlal_s16(vmull_s16(*v118.i8, *v121.i8), *v119.i8, *v120.i8);
  v319 = vmlal_high_s16(vmull_high_s16(v118, v121), v119, v120);
  v315 = vmlsl_high_s16(vmull_high_s16(v119, v121), v118, v120);
  v317 = vmlsl_s16(vmull_s16(*v119.i8, *v121.i8), *v118.i8, *v120.i8);
  v122 = vsubq_s16(v114, v117);
  v123 = vsubq_s16(v115, v116);
  v124 = vmlal_s16(vmull_s16(*v122.i8, *v121.i8), *v123.i8, *v120.i8);
  v125 = vmlal_high_s16(vmull_high_s16(v122, v121), v123, v120);
  v126 = vmlsl_s16(vmull_s16(*v123.i8, *v121.i8), *v122.i8, *v120.i8);
  v127 = vmlsl_high_s16(vmull_high_s16(v123, v121), v122, v120);
  v128 = vaddq_s16(v117, v114);
  v129 = vaddq_s16(v116, v115);
  v130 = vdupq_n_s16(0xDC72u);
  v291 = vmlal_s16(vmull_s16(*v128.i8, *v130.i8), *v129.i8, *v121.i8);
  v289 = vmlsl_s16(vmull_s16(*v129.i8, *v130.i8), *v128.i8, *v121.i8);
  v290 = vmlal_high_s16(vmull_high_s16(v128, v130), v129, v121);
  v286 = vmlsl_high_s16(vmull_high_s16(v129, v130), v128, v121);
  v131 = vsubq_s16(v292, v294);
  v132 = vsubq_s16(*a1, v297);
  v133 = vuzp1q_s16(vrshrq_n_s32(v313, 0xEuLL), vrshrq_n_s32(v309, 0xEuLL));
  v134 = vuzp1q_s16(vrshrq_n_s32(v311, 0xEuLL), vrshrq_n_s32(v307, 0xEuLL));
  v135 = vqrshrn_high_n_s32(vqrshrn_n_s32(v65, 0xEuLL), v66, 0xEuLL);
  v136 = vqrshrn_high_n_s32(vqrshrn_n_s32(v67, 0xEuLL), v68, 0xEuLL);
  v137 = vaddq_s16(v131, v134);
  v138 = vaddq_s16(v132, v133);
  v139 = vaddq_s16(v136, v137);
  v140 = vdupq_n_s16(0x3FB1u);
  v141 = vaddq_s16(v135, v138);
  v142 = vdupq_n_s16(0x646u);
  v314 = vmlal_s16(vmull_s16(*v139.i8, *v142.i8), *v141.i8, *v140.i8);
  v310 = vmlsl_s16(vmull_s16(*v141.i8, *v142.i8), *v139.i8, *v140.i8);
  v312 = vmlal_high_s16(vmull_high_s16(v139, v142), v141, v140);
  v308 = vmlsl_high_s16(vmull_high_s16(v141, v142), v139, v140);
  v143 = vsubq_s16(v137, v136);
  v144 = vdupq_n_s16(0x289Au);
  v145 = vdupq_n_s16(0x3179u);
  v146 = vsubq_s16(v138, v135);
  v298 = vmlal_s16(vmull_s16(*v143.i8, *v145.i8), *v146.i8, *v144.i8);
  v295 = vmlsl_s16(vmull_s16(*v146.i8, *v145.i8), *v143.i8, *v144.i8);
  v296 = vmlal_high_s16(vmull_high_s16(v143, v145), v146, v144);
  v293 = vmlsl_high_s16(vmull_high_s16(v146, v145), v143, v144);
  v147 = vsubq_s16(v131, v134);
  v148 = vsubq_s16(v132, v133);
  v149 = vqrshrn_high_n_s32(vqrshrn_n_s32(v287, 0xEuLL), v80, 0xEuLL);
  v150 = vqrshrn_high_n_s32(vqrshrn_n_s32(v81, 0xEuLL), v82, 0xEuLL);
  v151 = vsubq_s16(v147, v150);
  v152 = vsubq_s16(v148, v149);
  v153 = vdupq_n_s16(0x3871u);
  v154 = vdupq_n_s16(0x1E2Bu);
  v288 = vmlal_s16(vmull_s16(*v151.i8, *v154.i8), *v152.i8, *v153.i8);
  v284 = vmlsl_s16(vmull_s16(*v152.i8, *v154.i8), *v151.i8, *v153.i8);
  v285 = vmlal_high_s16(vmull_high_s16(v151, v154), v152, v153);
  v155 = vaddq_s16(v150, v147);
  v156 = vaddq_s16(v149, v148);
  v157 = vdupq_n_s16(0x1294u);
  v158 = vdupq_n_s16(0x3D3Fu);
  v282 = vmlal_s16(vmull_s16(*v155.i8, *v158.i8), *v156.i8, *v157.i8);
  v283 = vmlsl_high_s16(vmull_high_s16(v152, v154), v151, v153);
  v280 = vmlsl_s16(vmull_s16(*v156.i8, *v158.i8), *v155.i8, *v157.i8);
  v281 = vmlal_high_s16(vmull_high_s16(v155, v158), v156, v157);
  v279 = vmlsl_high_s16(vmull_high_s16(v156, v158), v155, v157);
  v159 = vuzp1q_s16(vrshrq_n_s32(v335, 0xEuLL), vrshrq_n_s32(v331, 0xEuLL));
  v160 = vuzp1q_s16(vrshrq_n_s32(v333, 0xEuLL), vrshrq_n_s32(v329, 0xEuLL));
  v161 = vqrshrn_high_n_s32(vqrshrn_n_s32(v305, 0xEuLL), v303, 0xEuLL);
  v162 = vqrshrn_high_n_s32(vqrshrn_n_s32(v301, 0xEuLL), v299, 0xEuLL);
  v163 = vqrshrn_high_n_s32(vqrshrn_n_s32(v101, 0xEuLL), v102, 0xEuLL);
  v164 = vqrshrn_high_n_s32(vqrshrn_n_s32(v103, 0xEuLL), v104, 0xEuLL);
  v165 = a1[16];
  v166 = a1[31];
  v167 = vaddq_s16(v165, v160);
  v168 = vaddq_s16(v166, v159);
  v169 = vaddq_s16(v162, v167);
  v170 = vaddq_s16(v161, v168);
  v171 = vaddq_s16(v164, v169);
  v172 = vdupq_n_s16(0x3FECu);
  v173 = vaddq_s16(v163, v170);
  v174 = vdupq_n_s16(0x324u);
  v336 = vmlal_s16(vmull_s16(*v171.i8, *v174.i8), *v173.i8, *v172.i8);
  v332 = vmlsl_s16(vmull_s16(*v173.i8, *v174.i8), *v171.i8, *v172.i8);
  v334 = vmlal_high_s16(vmull_high_s16(v171, v174), v173, v172);
  v330 = vmlsl_high_s16(vmull_high_s16(v173, v174), v171, v172);
  v175 = vsubq_s16(v169, v164);
  v176 = vdupq_n_s16(0x2AFBu);
  v177 = vdupq_n_s16(0x2F6Cu);
  v178 = vsubq_s16(v170, v163);
  v306 = vmlal_s16(vmull_s16(*v175.i8, *v177.i8), *v178.i8, *v176.i8);
  v302 = vmlsl_s16(vmull_s16(*v178.i8, *v177.i8), *v175.i8, *v176.i8);
  v304 = vmlal_high_s16(vmull_high_s16(v175, v177), v178, v176);
  v300 = vmlsl_high_s16(vmull_high_s16(v178, v177), v175, v176);
  v179 = vsubq_s16(v167, v162);
  v180 = vsubq_s16(v168, v161);
  v181 = vqrshrn_high_n_s32(vqrshrn_n_s32(v108, 0xEuLL), v111, 0xEuLL);
  v182 = vqrshrn_high_n_s32(vqrshrn_n_s32(v112, 0xEuLL), v113, 0xEuLL);
  v183 = vsubq_s16(v179, v182);
  v184 = vsubq_s16(v180, v181);
  v185 = vdupq_n_s16(0x39DBu);
  v186 = vdupq_n_s16(0x1B5Du);
  v277 = vmlal_s16(vmull_s16(*v183.i8, *v186.i8), *v184.i8, *v185.i8);
  v275 = vmlsl_s16(vmull_s16(*v184.i8, *v186.i8), *v183.i8, *v185.i8);
  v276 = vmlal_high_s16(vmull_high_s16(v183, v186), v184, v185);
  v187 = vaddq_s16(v182, v179);
  v188 = vaddq_s16(v181, v180);
  v189 = vdupq_n_s16(0x1590u);
  v190 = vdupq_n_s16(0x3C42u);
  v273 = vmlal_s16(vmull_s16(*v187.i8, *v190.i8), *v188.i8, *v189.i8);
  v274 = vmlsl_high_s16(vmull_high_s16(v184, v186), v183, v185);
  v271 = vmlsl_s16(vmull_s16(*v188.i8, *v190.i8), *v187.i8, *v189.i8);
  v272 = vmlal_high_s16(vmull_high_s16(v187, v190), v188, v189);
  v270 = vmlsl_high_s16(vmull_high_s16(v188, v190), v187, v189);
  v191 = vsubq_s16(v165, v160);
  v192 = vsubq_s16(v166, v159);
  v193 = vqrshrn_high_n_s32(vqrshrn_n_s32(v327, 0xEuLL), v324, 0xEuLL);
  v194 = vqrshrn_high_n_s32(vqrshrn_n_s32(v278, 0xEuLL), v322, 0xEuLL);
  v195 = vqrshrn_high_n_s32(vqrshrn_n_s32(v124, 0xEuLL), v125, 0xEuLL);
  v196 = vqrshrn_high_n_s32(vqrshrn_n_s32(v126, 0xEuLL), v127, 0xEuLL);
  v197 = vsubq_s16(v191, v194);
  v198 = vsubq_s16(v192, v193);
  v199 = vaddq_s16(v196, v197);
  v200 = vdupq_n_s16(0x3E15u);
  v201 = vdupq_n_s16(0xF8Du);
  v202 = vaddq_s16(v195, v198);
  v328 = vmlal_s16(vmull_s16(*v199.i8, *v201.i8), *v202.i8, *v200.i8);
  v203 = vmlal_high_s16(vmull_high_s16(v199, v201), v202, v200);
  v323 = vmlsl_high_s16(vmull_high_s16(v202, v201), v199, v200);
  v325 = vmlsl_s16(vmull_s16(*v202.i8, *v201.i8), *v199.i8, *v200.i8);
  v204 = vsubq_s16(v197, v196);
  v205 = vsubq_s16(v198, v195);
  v206 = vdupq_n_s16(0x20E7u);
  v207 = vdupq_n_s16(0x36E5u);
  v208 = vmlal_s16(vmull_s16(*v204.i8, *v207.i8), *v205.i8, *v206.i8);
  v209 = vmlal_high_s16(vmull_high_s16(v204, v207), v205, v206);
  v210 = vmlsl_s16(vmull_s16(*v205.i8, *v207.i8), *v204.i8, *v206.i8);
  v211 = vmlsl_high_s16(vmull_high_s16(v205, v207), v204, v206);
  v212 = vaddq_s16(v194, v191);
  v213 = vaddq_s16(v193, v192);
  v214 = vqrshrn_high_n_s32(vqrshrn_n_s32(v291, 0xEuLL), v290, 0xEuLL);
  v215 = vqrshrn_high_n_s32(vqrshrn_n_s32(v289, 0xEuLL), v286, 0xEuLL);
  v216 = vsubq_s16(v212, v215);
  v217 = vdupq_n_s16(0x3368u);
  v218 = vsubq_s16(v213, v214);
  v219 = vdupq_n_s16(0x2620u);
  v220 = vmlal_s16(vmull_s16(*v216.i8, *v219.i8), *v218.i8, *v217.i8);
  v221 = vmlal_high_s16(vmull_high_s16(v216, v219), v218, v217);
  v222 = vmlsl_s16(vmull_s16(*v218.i8, *v219.i8), *v216.i8, *v217.i8);
  v223 = vmlsl_high_s16(vmull_high_s16(v218, v219), v216, v217);
  v224 = vaddq_s16(v215, v212);
  v225 = vdupq_n_s16(0x964u);
  v226 = vdupq_n_s16(0x3F4Fu);
  v227 = vaddq_s16(v214, v213);
  v228 = vmlal_s16(vmull_s16(*v224.i8, *v226.i8), *v227.i8, *v225.i8);
  v229 = vmlal_high_s16(vmull_high_s16(v224, v226), v227, v225);
  v230 = vmlsl_s16(vmull_s16(*v227.i8, *v226.i8), *v224.i8, *v225.i8);
  v231 = vmlsl_high_s16(vmull_high_s16(v227, v226), v224, v225);
  v232 = vaddq_s16(v349, v350);
  v233 = vaddq_s16(v351, v352);
  v234 = vaddq_s16(v232, v233);
  v235 = vsubq_s16(v232, v233);
  v236 = vdupq_n_s16(0x5A82u);
  v237 = vqrdmulhq_s16(v234, v236);
  v238 = vqrdmulhq_s16(v235, v236);
  v239 = vqrshrn_high_n_s32(vqrshrn_n_s32(v348, 0xEuLL), v347, 0xEuLL);
  v240 = vqrshrn_high_n_s32(vqrshrn_n_s32(v346, 0xEuLL), v345, 0xEuLL);
  v241 = vqrshrn_high_n_s32(vqrshrn_n_s32(v344, 0xEuLL), v342, 0xEuLL);
  v242 = vqrshrn_high_n_s32(vqrshrn_n_s32(v340, 0xEuLL), v338, 0xEuLL);
  v243 = vqrshrn_high_n_s32(vqrshrn_n_s32(v321, 0xEuLL), v319, 0xEuLL);
  v244 = vqrshrn_high_n_s32(vqrshrn_n_s32(v317, 0xEuLL), v315, 0xEuLL);
  v245 = vqrshrn_high_n_s32(vqrshrn_n_s32(v314, 0xEuLL), v312, 0xEuLL);
  v246 = vqrshrn_high_n_s32(vqrshrn_n_s32(v310, 0xEuLL), v308, 0xEuLL);
  v247 = vqrshrn_high_n_s32(vqrshrn_n_s32(v298, 0xEuLL), v296, 0xEuLL);
  v248 = vqrshrn_high_n_s32(vqrshrn_n_s32(v295, 0xEuLL), v293, 0xEuLL);
  v249 = vqrshrn_high_n_s32(vqrshrn_n_s32(v288, 0xEuLL), v285, 0xEuLL);
  v250 = vqrshrn_high_n_s32(vqrshrn_n_s32(v284, 0xEuLL), v283, 0xEuLL);
  v251 = vqrshrn_high_n_s32(vqrshrn_n_s32(v282, 0xEuLL), v281, 0xEuLL);
  v252 = vqrshrn_high_n_s32(vqrshrn_n_s32(v280, 0xEuLL), v279, 0xEuLL);
  v253 = vqrshrn_high_n_s32(vqrshrn_n_s32(v336, 0xEuLL), v334, 0xEuLL);
  v254 = vqrshrn_high_n_s32(vqrshrn_n_s32(v332, 0xEuLL), v330, 0xEuLL);
  *a2 = vrshrq_n_s16(vsraq_n_s16(v237, v237, 0xFuLL), 2uLL);
  a2[1] = vrshrq_n_s16(vsraq_n_s16(v253, v253, 0xFuLL), 2uLL);
  a2[30] = vrshrq_n_s16(vsraq_n_s16(v246, v246, 0xFuLL), 2uLL);
  a2[31] = vrshrq_n_s16(vsraq_n_s16(v254, v254, 0xFuLL), 2uLL);
  v255 = vqrshrn_high_n_s32(vqrshrn_n_s32(v306, 0xEuLL), v304, 0xEuLL);
  v256 = vqrshrn_high_n_s32(vqrshrn_n_s32(v302, 0xEuLL), v300, 0xEuLL);
  a2[16] = vrshrq_n_s16(vsraq_n_s16(v238, v238, 0xFuLL), 2uLL);
  a2[17] = vrshrq_n_s16(vsraq_n_s16(v255, v255, 0xFuLL), 2uLL);
  a2[14] = vrshrq_n_s16(vsraq_n_s16(v248, v248, 0xFuLL), 2uLL);
  a2[15] = vrshrq_n_s16(vsraq_n_s16(v256, v256, 0xFuLL), 2uLL);
  v257 = vqrshrn_high_n_s32(vqrshrn_n_s32(v277, 0xEuLL), v276, 0xEuLL);
  v258 = vqrshrn_high_n_s32(vqrshrn_n_s32(v275, 0xEuLL), v274, 0xEuLL);
  a2[8] = vrshrq_n_s16(vsraq_n_s16(v239, v239, 0xFuLL), 2uLL);
  a2[9] = vrshrq_n_s16(vsraq_n_s16(v257, v257, 0xFuLL), 2uLL);
  a2[22] = vrshrq_n_s16(vsraq_n_s16(v250, v250, 0xFuLL), 2uLL);
  a2[23] = vrshrq_n_s16(vsraq_n_s16(v258, v258, 0xFuLL), 2uLL);
  v259 = vqrshrn_high_n_s32(vqrshrn_n_s32(v273, 0xEuLL), v272, 0xEuLL);
  v260 = vqrshrn_high_n_s32(vqrshrn_n_s32(v271, 0xEuLL), v270, 0xEuLL);
  a2[24] = vrshrq_n_s16(vsraq_n_s16(v240, v240, 0xFuLL), 2uLL);
  a2[25] = vrshrq_n_s16(vsraq_n_s16(v259, v259, 0xFuLL), 2uLL);
  a2[6] = vrshrq_n_s16(vsraq_n_s16(v252, v252, 0xFuLL), 2uLL);
  a2[7] = vrshrq_n_s16(vsraq_n_s16(v260, v260, 0xFuLL), 2uLL);
  v261 = vqrshrn_high_n_s32(vqrshrn_n_s32(v328, 0xEuLL), v203, 0xEuLL);
  v262 = vqrshrn_high_n_s32(vqrshrn_n_s32(v325, 0xEuLL), v323, 0xEuLL);
  a2[4] = vrshrq_n_s16(vsraq_n_s16(v241, v241, 0xFuLL), 2uLL);
  a2[5] = vrshrq_n_s16(vsraq_n_s16(v261, v261, 0xFuLL), 2uLL);
  a2[26] = vrshrq_n_s16(vsraq_n_s16(v251, v251, 0xFuLL), 2uLL);
  a2[27] = vrshrq_n_s16(vsraq_n_s16(v262, v262, 0xFuLL), 2uLL);
  v263 = vqrshrn_high_n_s32(vqrshrn_n_s32(v208, 0xEuLL), v209, 0xEuLL);
  v264 = vqrshrn_high_n_s32(vqrshrn_n_s32(v210, 0xEuLL), v211, 0xEuLL);
  a2[20] = vrshrq_n_s16(vsraq_n_s16(v243, v243, 0xFuLL), 2uLL);
  a2[21] = vrshrq_n_s16(vsraq_n_s16(v263, v263, 0xFuLL), 2uLL);
  a2[10] = vrshrq_n_s16(vsraq_n_s16(v249, v249, 0xFuLL), 2uLL);
  a2[11] = vrshrq_n_s16(vsraq_n_s16(v264, v264, 0xFuLL), 2uLL);
  v265 = vqrshrn_high_n_s32(vqrshrn_n_s32(v220, 0xEuLL), v221, 0xEuLL);
  v266 = vqrshrn_high_n_s32(vqrshrn_n_s32(v222, 0xEuLL), v223, 0xEuLL);
  a2[12] = vrshrq_n_s16(vsraq_n_s16(v244, v244, 0xFuLL), 2uLL);
  a2[13] = vrshrq_n_s16(vsraq_n_s16(v265, v265, 0xFuLL), 2uLL);
  a2[18] = vrshrq_n_s16(vsraq_n_s16(v247, v247, 0xFuLL), 2uLL);
  a2[19] = vrshrq_n_s16(vsraq_n_s16(v266, v266, 0xFuLL), 2uLL);
  v267 = vqrshrn_high_n_s32(vqrshrn_n_s32(v228, 0xEuLL), v229, 0xEuLL);
  v268 = vqrshrn_high_n_s32(vqrshrn_n_s32(v230, 0xEuLL), v231, 0xEuLL);
  a2[28] = vrshrq_n_s16(vsraq_n_s16(v242, v242, 0xFuLL), 2uLL);
  a2[29] = vrshrq_n_s16(vsraq_n_s16(v267, v267, 0xFuLL), 2uLL);
  result = vrshrq_n_s16(vsraq_n_s16(v245, v245, 0xFuLL), 2uLL);
  a2[2] = result;
  a2[3] = vrshrq_n_s16(vsraq_n_s16(v268, v268, 0xFuLL), 2uLL);
  return result;
}

int16x8_t dct_body_second_pass(int16x8_t *a1, int16x8_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = a1[26];
  v4 = a1[27];
  v6 = vaddq_s16(v5, v3);
  v7 = a1[10];
  v8 = a1[11];
  v10 = a1[20];
  v9 = a1[21];
  v11 = vaddq_s16(v9, v7);
  v12 = vaddq_s16(v10, v8);
  v13 = vsubq_s16(v8, v10);
  v14 = vsubq_s16(v7, v9);
  v558 = a1[8];
  v560 = a1[9];
  v571 = a1[23];
  v576 = a1[22];
  v579 = vaddq_s16(v4, v2);
  v15 = vsubq_s16(v560, v576);
  v16 = vsubq_s16(v558, v571);
  v18 = a1[6];
  v17 = a1[7];
  v20 = a1[24];
  v19 = a1[25];
  v21 = vsubq_s16(v17, v20);
  v22 = vsubq_s16(v18, v19);
  v23 = vsubq_s16(v3, v5);
  v24 = vsubq_s16(v2, v4);
  v25 = vdupq_n_s16(0x2D41u);
  v26 = vmlal_s16(vmull_s16(*v13.i8, *v25.i8), *v24.i8, *v25.i8);
  v569 = vmlal_high_s16(vmull_high_s16(v13, v25), v24, v25);
  v27 = vmlsl_s16(vmull_s16(*v24.i8, *v25.i8), *v13.i8, *v25.i8);
  v28 = vmlsl_high_s16(vmull_high_s16(v24, v25), v13, v25);
  v565 = vmlal_s16(vmull_s16(*v14.i8, *v25.i8), *v23.i8, *v25.i8);
  v567 = vmlal_high_s16(vmull_high_s16(v14, v25), v23, v25);
  v29 = vmlsl_s16(vmull_s16(*v23.i8, *v25.i8), *v14.i8, *v25.i8);
  v30 = vmlsl_high_s16(vmull_high_s16(v23, v25), v14, v25);
  v544 = vmlal_s16(vmull_s16(*v15.i8, *v25.i8), *v22.i8, *v25.i8);
  v546 = vmlsl_s16(vmull_s16(*v22.i8, *v25.i8), *v15.i8, *v25.i8);
  v548 = vmlsl_high_s16(vmull_high_s16(v22, v25), v15, v25);
  v550 = vmlal_high_s16(vmull_high_s16(v15, v25), v22, v25);
  v530 = vmlal_s16(vmull_s16(*v16.i8, *v25.i8), *v21.i8, *v25.i8);
  v532 = vmlsl_s16(vmull_s16(*v21.i8, *v25.i8), *v16.i8, *v25.i8);
  v534 = vmlsl_high_s16(vmull_high_s16(v21, v25), v16, v25);
  v536 = vmlal_high_s16(vmull_high_s16(v16, v25), v21, v25);
  v32 = a1[2];
  v31 = a1[3];
  v34 = a1[28];
  v33 = a1[29];
  v35 = vaddq_s16(v33, v32);
  v36 = a1[12];
  v37 = a1[13];
  v39 = a1[18];
  v38 = a1[19];
  v40 = vaddq_s16(v39, v37);
  v41 = vsubq_s16(v6, v11);
  v42 = vsubq_s16(v35, v40);
  v43 = vmlal_s16(vmull_s16(*v41.i8, *v25.i8), *v42.i8, *v25.i8);
  v563 = vmlal_high_s16(vmull_high_s16(v41, v25), v42, v25);
  v44 = vmlsl_s16(vmull_s16(*v42.i8, *v25.i8), *v41.i8, *v25.i8);
  v45 = vmlsl_high_s16(vmull_high_s16(v42, v25), v41, v25);
  v46 = vaddq_s16(v34, v31);
  v47 = vaddq_s16(v38, v36);
  v48 = vsubq_s16(v579, v12);
  v49 = vsubq_s16(v46, v47);
  v521 = vmlal_s16(vmull_s16(*v48.i8, *v25.i8), *v49.i8, *v25.i8);
  v523 = vmlal_high_s16(vmull_high_s16(v48, v25), v49, v25);
  v517 = vmlsl_s16(vmull_s16(*v49.i8, *v25.i8), *v48.i8, *v25.i8);
  v519 = vmlsl_high_s16(vmull_high_s16(v49, v25), v48, v25);
  v50 = vaddq_s16(v19, v18);
  v574 = vaddq_s16(v20, v17);
  v572 = vaddq_s16(v571, v558);
  v51 = vaddq_s16(v576, v560);
  v52 = vsubq_s16(v37, v39);
  v53 = vsubq_s16(v36, v38);
  v54 = vsubq_s16(v31, v34);
  v55 = vsubq_s16(v32, v33);
  v494 = vaddq_s16(v47, v46);
  v490 = vaddq_s16(v40, v35);
  v492 = vaddq_s16(v12, v579);
  v488 = vaddq_s16(v11, v6);
  v56 = vaddq_s16(v51, v50);
  v57 = vsubq_s16(v50, v51);
  v527 = a1[1];
  v538 = a1[30];
  v58 = vaddq_s16(v538, v527);
  v515 = a1[14];
  v525 = a1[17];
  v577 = a1[16];
  v580 = a1[15];
  v59 = vaddq_s16(v525, v515);
  v474 = vaddq_s16(v59, v58);
  v477 = v56;
  v60 = vsubq_s16(v58, v59);
  v61 = vshlq_n_s32(vrshrq_n_s32(v29, 0xEuLL), 0x10uLL);
  v62 = vmovl_s16(*v52.i8);
  v561 = vsubq_s32(v62, vshrq_n_s32(v61, 0x10uLL));
  v63 = vsraq_n_s32(v62, v61, 0x10uLL);
  v64 = vshlq_n_s32(vrshrq_n_s32(v27, 0xEuLL), 0x10uLL);
  v65 = vmovl_s16(*v53.i8);
  v66 = vsubq_s32(v65, vshrq_n_s32(v64, 0x10uLL));
  v67 = vsraq_n_s32(v65, v64, 0x10uLL);
  v68 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v28, 0xEuLL), 0x10uLL), 0x10uLL);
  v69 = vmovl_high_s16(v53);
  v70 = vaddw_high_s16(v68, v53);
  v71 = vsubq_s32(v69, v68);
  v72 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v30, 0xEuLL), 0x10uLL), 0x10uLL);
  v73 = vaddw_high_s16(v72, v52);
  v74 = vsubq_s32(vmovl_high_s16(v52), v72);
  v75 = vshlq_n_s32(vrshrq_n_s32(v26, 0xEuLL), 0x10uLL);
  v76 = vmovl_s16(*v54.i8);
  v77 = vsubq_s32(v76, vshrq_n_s32(v75, 0x10uLL));
  v78 = vsraq_n_s32(v76, v75, 0x10uLL);
  v79 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v569, 0xEuLL), 0x10uLL), 0x10uLL);
  v80 = vsubq_s32(vmovl_high_s16(v54), v79);
  v81 = vaddw_high_s16(v79, v54);
  v82 = vshlq_n_s32(vrshrq_n_s32(v565, 0xEuLL), 0x10uLL);
  v83 = vmovl_s16(*v55.i8);
  v84 = vsubq_s32(v83, vshrq_n_s32(v82, 0x10uLL));
  v85 = vsraq_n_s32(v83, v82, 0x10uLL);
  v86 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v567, 0xEuLL), 0x10uLL), 0x10uLL);
  v87 = vsubq_s32(vmovl_high_s16(v55), v86);
  v88 = vaddw_high_s16(v86, v55);
  v89 = vmovl_s16(*v57.i8);
  v498 = vsubq_s32(v89, vrshrq_n_s32(v44, 0xEuLL));
  v90 = vrsraq_n_s32(v89, v44, 0xEuLL);
  v91 = vrshrq_n_s32(v45, 0xEuLL);
  v92 = vaddw_high_s16(v91, v57);
  v93 = vsubq_s32(vmovl_high_s16(v57), v91);
  v94 = vmovl_s16(*v60.i8);
  v95 = vsubq_s32(v94, vrshrq_n_s32(v43, 0xEuLL));
  v96 = vrsraq_n_s32(v94, v43, 0xEuLL);
  v97 = vrshrq_n_s32(v563, 0xEuLL);
  v98 = vsubq_s32(vmovl_high_s16(v60), v97);
  v99 = vaddw_high_s16(v97, v60);
  v100 = vdupq_n_s32(0x3B21u);
  v101 = vdupq_n_s32(0x187Eu);
  v102 = vmlaq_s32(vmulq_s32(v85, v100), v63, v101);
  v103 = vdupq_n_s32(0xFFFFC4DF);
  v104 = vmlaq_s32(vmulq_s32(v85, v101), v63, v103);
  v105 = vmlaq_s32(vmulq_s32(v88, v100), v73, v101);
  v106 = vmlaq_s32(vmulq_s32(v88, v101), v73, v103);
  v480 = vmlaq_s32(vmulq_s32(v78, v101), v67, v103);
  v484 = vmlaq_s32(vmulq_s32(v81, v100), v70, v101);
  v486 = vmlaq_s32(vmulq_s32(v78, v100), v67, v101);
  v482 = vmlaq_s32(vmulq_s32(v81, v101), v70, v103);
  v107 = vdupq_n_s32(0xFFFFE782);
  v543 = vmlaq_s32(vmulq_s32(v77, v101), v66, v103);
  v541 = vmlaq_s32(vmulq_s32(v77, v103), v66, v107);
  v542 = vmlaq_s32(vmulq_s32(v80, v101), v71, v103);
  v540 = vmlaq_s32(vmulq_s32(v80, v103), v71, v107);
  v465 = vmlaq_s32(vmulq_s32(v84, v101), v561, v103);
  v108 = vmlaq_s32(vmulq_s32(v84, v103), v561, v107);
  v507 = vmlaq_s32(vmulq_s32(v87, v101), v74, v103);
  v109 = vmlaq_s32(vmulq_s32(v87, v103), v74, v107);
  v469 = a1[31];
  v511 = vaddq_s16(v577, v580);
  v513 = vaddq_s16(v469, *a1);
  v110 = vaddq_s16(v511, v513);
  v111 = vaddq_s16(v572, v574);
  v562 = vaddl_s16(*v474.i8, *v477.i8);
  v564 = vaddl_s16(*v490.i8, *v488.i8);
  v556 = vaddl_s16(*v110.i8, *v111.i8);
  v557 = vaddl_s16(*v494.i8, *v492.i8);
  v112 = vsubq_s32(v562, v564);
  v113 = vsubq_s32(v556, v557);
  v568 = vmlaq_s32(vmulq_s32(v112, v101), v113, v100);
  v570 = vmlaq_s32(vmulq_s32(v112, v103), v113, v101);
  v554 = vaddl_high_s16(v474, v477);
  v555 = vaddl_high_s16(v490, v488);
  v552 = vaddl_high_s16(v110, v111);
  v553 = vaddl_high_s16(v494, v492);
  v114 = vsubq_s32(v554, v555);
  v115 = vsubq_s32(v552, v553);
  v559 = vmlaq_s32(vmulq_s32(v114, v101), v115, v100);
  v566 = vmlaq_s32(vmulq_s32(v114, v103), v115, v101);
  v467 = vmlaq_s32(vmulq_s32(v96, v100), v90, v101);
  v505 = vmlaq_s32(vmulq_s32(v96, v101), v90, v103);
  v509 = vmlaq_s32(vmulq_s32(v99, v100), v92, v101);
  v116 = vmlaq_s32(vmulq_s32(v99, v101), v92, v103);
  v501 = vmlaq_s32(vmulq_s32(v98, v101), v93, v103);
  v503 = vmlaq_s32(vmulq_s32(v95, v101), v498, v103);
  v496 = vmlaq_s32(vmulq_s32(v98, v103), v93, v107);
  v499 = vmlaq_s32(vmulq_s32(v95, v103), v498, v107);
  v117 = vsubq_s16(v515, v525);
  v118 = vsubq_s16(v527, v538);
  v119 = vsubl_s16(*v494.i8, *v492.i8);
  v120 = vsubl_high_s16(v494, v492);
  v121 = vsubl_s16(*v490.i8, *v488.i8);
  v122 = vsubl_high_s16(v490, v488);
  v123 = vsubl_s16(*v474.i8, *v477.i8);
  v124 = vsubl_high_s16(v474, v477);
  v125 = vsubl_s16(*v110.i8, *v111.i8);
  v126 = vsubl_high_s16(v110, v111);
  v127 = vshlq_n_s32(vrshrq_n_s32(v544, 0xEuLL), 0x10uLL);
  v128 = vmovl_s16(*v118.i8);
  v129 = vsubq_s32(v128, vshrq_n_s32(v127, 0x10uLL));
  v130 = vsraq_n_s32(v128, v127, 0x10uLL);
  v131 = vaddq_s32(v123, v121);
  v132 = vsubq_s32(v123, v121);
  v133 = vaddq_s32(v124, v122);
  v134 = vsubq_s32(v124, v122);
  v528 = vshlq_n_s32(vrshrq_n_s32(v546, 0xEuLL), 0x10uLL);
  v135 = vmovl_s16(*v117.i8);
  v136 = vsraq_n_s32(v135, v528, 0x10uLL);
  v137 = vsubq_s32(v136, vrshrq_n_s32(v104, 0xEuLL));
  v138 = vrsraq_n_s32(v136, v104, 0xEuLL);
  v139 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v548, 0xEuLL), 0x10uLL), 0x10uLL);
  v140 = vaddw_high_s16(v139, v117);
  v141 = vsubq_s32(v140, vrshrq_n_s32(v106, 0xEuLL));
  v142 = vrsraq_n_s32(v140, v106, 0xEuLL);
  v143 = vsubq_s32(v130, vrshrq_n_s32(v102, 0xEuLL));
  v144 = vrsraq_n_s32(v130, v102, 0xEuLL);
  v145 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v550, 0xEuLL), 0x10uLL), 0x10uLL);
  v146 = vaddw_high_s16(v145, v118);
  v147 = vsubq_s32(v146, vrshrq_n_s32(v105, 0xEuLL));
  v148 = vrsraq_n_s32(v146, v105, 0xEuLL);
  v149 = vdupq_n_s32(0x5A820000u);
  v150 = vqrdmulhq_s32(v131, v149);
  v151 = vqrdmulhq_s32(v132, v149);
  v152 = v149;
  v153 = vaddq_s32(v150, v125);
  v154 = vdupq_n_s32(0x3EC5u);
  v155 = vdupq_n_s32(0xC7Cu);
  v156 = vaddq_s32(v151, v119);
  v547 = vmlaq_s32(vmulq_s32(v153, v154), v156, v155);
  v157 = vdupq_n_s32(0xFFFFC13B);
  v551 = vmlaq_s32(vmulq_s32(v153, v155), v156, v157);
  v539 = v152;
  v158 = vqrdmulhq_s32(v133, v152);
  v159 = vqrdmulhq_s32(v134, v152);
  v160 = vaddq_s32(v158, v126);
  v161 = vmulq_s32(v160, v154);
  v162 = vmulq_s32(v160, v155);
  v163 = vaddq_s32(v159, v120);
  v545 = vmlaq_s32(v161, v163, v155);
  v549 = vmlaq_s32(v162, v163, v157);
  v164 = vmlaq_s32(vmulq_s32(v144, v154), v138, v155);
  v165 = vmlaq_s32(vmulq_s32(v144, v155), v138, v157);
  v166 = vmlaq_s32(vmulq_s32(v148, v154), v142, v155);
  v167 = vmlaq_s32(vmulq_s32(v148, v155), v142, v157);
  v475 = vmlaq_s32(vmulq_s32(v143, v155), v137, v157);
  v478 = vmlaq_s32(vmulq_s32(v147, v155), v141, v157);
  v168 = vdupq_n_s32(0xFFFFF384);
  v169 = vmlaq_s32(vmulq_s32(v143, v157), v137, v168);
  v472 = vmlaq_s32(vmulq_s32(v147, v157), v141, v168);
  v170 = vsubq_s32(v135, vshrq_n_s32(v528, 0x10uLL));
  v171 = vsubq_s32(vmovl_high_s16(v117), v139);
  v172 = vsubq_s32(vmovl_high_s16(v118), v145);
  v173 = vsubq_s32(v119, v151);
  v174 = vsubq_s32(v120, v159);
  v175 = vsubq_s32(v125, v150);
  v176 = vsubq_s32(v126, v158);
  v177 = vsubq_s32(v170, vrshrq_n_s32(v108, 0xEuLL));
  v178 = vrsraq_n_s32(v170, v108, 0xEuLL);
  v179 = vsubq_s32(v171, vrshrq_n_s32(v109, 0xEuLL));
  v180 = vrsraq_n_s32(v171, v109, 0xEuLL);
  v181 = vsubq_s32(v129, vrshrq_n_s32(v465, 0xEuLL));
  v182 = vrsraq_n_s32(v129, v465, 0xEuLL);
  v183 = vsubq_s32(v172, vrshrq_n_s32(v507, 0xEuLL));
  v184 = vrsraq_n_s32(v172, v507, 0xEuLL);
  v185 = vdupq_n_s32(0x238Eu);
  v186 = vdupq_n_s32(0x3537u);
  v187 = vmulq_s32(v175, v186);
  v529 = vmlaq_s32(vmulq_s32(v175, v185), v173, v186);
  v188 = vdupq_n_s32(0xFFFFDC72);
  v489 = vmlaq_s32(v187, v173, v188);
  v526 = vmlaq_s32(vmulq_s32(v176, v185), v174, v186);
  v461 = vmlaq_s32(vmulq_s32(v176, v186), v174, v188);
  v189 = vmlaq_s32(vmulq_s32(v181, v185), v177, v186);
  v190 = vmlaq_s32(vmulq_s32(v181, v186), v177, v188);
  v191 = vmlaq_s32(vmulq_s32(v183, v185), v179, v186);
  v192 = vmlaq_s32(vmulq_s32(v183, v186), v179, v188);
  v193 = vmulq_s32(v184, v188);
  v194 = vmlaq_s32(vmulq_s32(v182, v186), v178, v188);
  v195 = vmlaq_s32(vmulq_s32(v184, v186), v180, v188);
  v196 = vdupq_n_s32(0xFFFFCAC9);
  v493 = vmlaq_s32(vmulq_s32(v182, v188), v178, v196);
  v495 = v195;
  v491 = vmlaq_s32(v193, v180, v196);
  v197 = vsubq_s16(v574, v572);
  v198 = vsubq_s16(v513, v511);
  v199 = vmovl_s16(*v197.i8);
  v200 = vsubq_s32(v199, vrshrq_n_s32(v517, 0xEuLL));
  v201 = vrsraq_n_s32(v199, v517, 0xEuLL);
  v202 = vmovl_s16(*v198.i8);
  v203 = vsubq_s32(v202, vrshrq_n_s32(v521, 0xEuLL));
  v204 = vrsraq_n_s32(v202, v521, 0xEuLL);
  v205 = vsubq_s32(v201, vrshrq_n_s32(v505, 0xEuLL));
  v206 = vrsraq_n_s32(v201, v505, 0xEuLL);
  v207 = vrshrq_n_s32(v519, 0xEuLL);
  v208 = vaddw_high_s16(v207, v197);
  v209 = vsubq_s32(v208, vrshrq_n_s32(v116, 0xEuLL));
  v210 = vrsraq_n_s32(v208, v116, 0xEuLL);
  v211 = vsubq_s32(v204, vrshrq_n_s32(v467, 0xEuLL));
  v212 = vrsraq_n_s32(v204, v467, 0xEuLL);
  v213 = vrshrq_n_s32(v523, 0xEuLL);
  v214 = vaddw_high_s16(v213, v198);
  v215 = vsubq_s32(v214, vrshrq_n_s32(v509, 0xEuLL));
  v216 = vdupq_n_s32(0x3FB1u);
  v217 = vrsraq_n_s32(v214, v509, 0xEuLL);
  v218 = vmulq_s32(v212, v216);
  v219 = vmulq_s32(v217, v216);
  v220 = vdupq_n_s32(0x646u);
  v221 = vmulq_s32(v212, v220);
  v222 = vdupq_n_s32(0xFFFFC04F);
  v518 = vmlaq_s32(v219, v210, v220);
  v520 = vmlaq_s32(v218, v206, v220);
  v573 = vmlaq_s32(v221, v206, v222);
  v575 = vmlaq_s32(vmulq_s32(v217, v220), v210, v222);
  v223 = vdupq_n_s32(0x289Au);
  v224 = vmulq_s32(v211, v223);
  v225 = vmulq_s32(v215, v223);
  v226 = vdupq_n_s32(0x3179u);
  v227 = vmulq_s32(v211, v226);
  v228 = vmulq_s32(v215, v226);
  v510 = vmlaq_s32(v224, v205, v226);
  v514 = vmlaq_s32(v225, v209, v226);
  v229 = vdupq_n_s32(0xFFFFD766);
  v522 = vmlaq_s32(v227, v205, v229);
  v524 = vmlaq_s32(v228, v209, v229);
  v230 = vsubq_s32(vmovl_high_s16(v197), v207);
  v231 = vsubq_s32(vmovl_high_s16(v198), v213);
  v232 = vsubq_s32(v200, vrshrq_n_s32(v499, 0xEuLL));
  v233 = vsubq_s32(v230, vrshrq_n_s32(v496, 0xEuLL));
  v234 = vsubq_s32(v203, vrshrq_n_s32(v503, 0xEuLL));
  v235 = vsubq_s32(v231, vrshrq_n_s32(v501, 0xEuLL));
  v236 = vdupq_n_s32(0x3871u);
  v237 = vmulq_s32(v234, v236);
  v238 = vmulq_s32(v235, v236);
  v239 = vdupq_n_s32(0x1E2Bu);
  v240 = vmulq_s32(v234, v239);
  v506 = vmlaq_s32(v237, v232, v239);
  v508 = vmlaq_s32(v238, v233, v239);
  v241 = vdupq_n_s32(0xFFFFC78F);
  v512 = vmlaq_s32(v240, v232, v241);
  v516 = vmlaq_s32(vmulq_s32(v235, v239), v233, v241);
  v242 = vrsraq_n_s32(v200, v499, 0xEuLL);
  v243 = vrsraq_n_s32(v230, v496, 0xEuLL);
  v244 = vrsraq_n_s32(v203, v503, 0xEuLL);
  v245 = vrsraq_n_s32(v231, v501, 0xEuLL);
  v246 = vdupq_n_s32(0x1294u);
  v247 = vdupq_n_s32(0x3D3Fu);
  v248 = vmulq_s32(v244, v247);
  v497 = vmlaq_s32(vmulq_s32(v244, v246), v242, v247);
  v500 = vmlaq_s32(vmulq_s32(v245, v246), v243, v247);
  v249 = vdupq_n_s32(0xFFFFED6C);
  v502 = vmlaq_s32(v248, v242, v249);
  v504 = vmlaq_s32(vmulq_s32(v245, v247), v243, v249);
  v250 = vsubq_s16(v580, v577);
  v251 = vsubq_s16(*a1, v469);
  v252 = vshlq_n_s32(vrshrq_n_s32(v530, 0xEuLL), 0x10uLL);
  v253 = vmovl_s16(*v251.i8);
  v254 = vsubq_s32(v253, vshrq_n_s32(v252, 0x10uLL));
  v255 = vsraq_n_s32(v253, v252, 0x10uLL);
  v256 = vshlq_n_s32(vrshrq_n_s32(v532, 0xEuLL), 0x10uLL);
  v257 = vmovl_s16(*v250.i8);
  v258 = vsraq_n_s32(v257, v256, 0x10uLL);
  v259 = vsubq_s32(v258, vrshrq_n_s32(v480, 0xEuLL));
  v260 = vrsraq_n_s32(v258, v480, 0xEuLL);
  v261 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v534, 0xEuLL), 0x10uLL), 0x10uLL);
  v262 = vaddw_high_s16(v261, v250);
  v263 = vsubq_s32(v262, vrshrq_n_s32(v482, 0xEuLL));
  v264 = vrsraq_n_s32(v262, v482, 0xEuLL);
  v265 = vsubq_s32(v255, vrshrq_n_s32(v486, 0xEuLL));
  v266 = vrsraq_n_s32(v255, v486, 0xEuLL);
  v267 = vshrq_n_s32(vshlq_n_s32(vrshrq_n_s32(v536, 0xEuLL), 0x10uLL), 0x10uLL);
  v268 = vaddw_high_s16(v267, v251);
  v269 = vsubq_s32(v268, vrshrq_n_s32(v484, 0xEuLL));
  v270 = vrsraq_n_s32(v268, v484, 0xEuLL);
  v271 = vsubq_s32(v260, vrshrq_n_s32(v165, 0xEuLL));
  v272 = vrsraq_n_s32(v260, v165, 0xEuLL);
  v273 = vsubq_s32(v264, vrshrq_n_s32(v167, 0xEuLL));
  v274 = vrsraq_n_s32(v264, v167, 0xEuLL);
  v275 = vsubq_s32(v266, vrshrq_n_s32(v164, 0xEuLL));
  v276 = vrsraq_n_s32(v266, v164, 0xEuLL);
  v277 = vsubq_s32(v270, vrshrq_n_s32(v166, 0xEuLL));
  v278 = vrsraq_n_s32(v270, v166, 0xEuLL);
  v279 = vdupq_n_s32(0x3FECu);
  v280 = vmulq_s32(v276, v279);
  v281 = vmulq_s32(v278, v279);
  v282 = vdupq_n_s32(0x324u);
  v283 = vmulq_s32(v276, v282);
  v284 = vmulq_s32(v278, v282);
  v535 = vmlaq_s32(v280, v272, v282);
  v537 = vmlaq_s32(v281, v274, v282);
  v285 = vdupq_n_s32(0xFFFFC014);
  v578 = vmlaq_s32(v283, v272, v285);
  v581 = vmlaq_s32(v284, v274, v285);
  v286 = vdupq_n_s32(0x2AFBu);
  v287 = vmulq_s32(v275, v286);
  v288 = vmulq_s32(v277, v286);
  v289 = vdupq_n_s32(0x2F6Cu);
  v290 = vmulq_s32(v275, v289);
  v485 = vmlaq_s32(v287, v271, v289);
  v487 = vmlaq_s32(v288, v273, v289);
  v291 = vdupq_n_s32(0xFFFFD505);
  v531 = vmlaq_s32(v290, v271, v291);
  v533 = vmlaq_s32(vmulq_s32(v277, v289), v273, v291);
  v292 = vsubq_s32(v259, vrshrq_n_s32(v169, 0xEuLL));
  v293 = vsubq_s32(v263, vrshrq_n_s32(v472, 0xEuLL));
  v294 = vsubq_s32(v265, vrshrq_n_s32(v475, 0xEuLL));
  v295 = vsubq_s32(v269, vrshrq_n_s32(v478, 0xEuLL));
  v296 = vdupq_n_s32(0x39DBu);
  v297 = vmulq_s32(v294, v296);
  v298 = vmulq_s32(v295, v296);
  v299 = vdupq_n_s32(0x1B5Du);
  v300 = vmulq_s32(v294, v299);
  v470 = vmlaq_s32(v297, v292, v299);
  v471 = vmlaq_s32(v298, v293, v299);
  v301 = vdupq_n_s32(0xFFFFC625);
  v481 = vmlaq_s32(v300, v292, v301);
  v483 = vmlaq_s32(vmulq_s32(v295, v299), v293, v301);
  v302 = vrsraq_n_s32(v259, v169, 0xEuLL);
  v303 = vrsraq_n_s32(v263, v472, 0xEuLL);
  v304 = vrsraq_n_s32(v265, v475, 0xEuLL);
  v305 = vdupq_n_s32(0x1590u);
  v306 = vrsraq_n_s32(v269, v478, 0xEuLL);
  v307 = vmulq_s32(v304, v305);
  v308 = vmulq_s32(v306, v305);
  v309 = vdupq_n_s32(0x3C42u);
  v473 = vmlaq_s32(v307, v302, v309);
  v310 = vdupq_n_s32(0xFFFFEA70);
  v468 = vmlaq_s32(v308, v303, v309);
  v476 = vmlaq_s32(vmulq_s32(v306, v309), v303, v310);
  v479 = vmlaq_s32(vmulq_s32(v304, v309), v302, v310);
  v311 = vsubq_s32(v257, vshrq_n_s32(v256, 0x10uLL));
  v312 = vsubq_s32(vmovl_high_s16(v250), v261);
  v313 = vsubq_s32(vmovl_high_s16(v251), v267);
  v314 = vsubq_s32(v311, vrshrq_n_s32(v541, 0xEuLL));
  v315 = vsubq_s32(v314, vrshrq_n_s32(v190, 0xEuLL));
  v316 = vrsraq_n_s32(v314, v190, 0xEuLL);
  v317 = vsubq_s32(v312, vrshrq_n_s32(v540, 0xEuLL));
  v318 = vsubq_s32(v317, vrshrq_n_s32(v192, 0xEuLL));
  v319 = vrsraq_n_s32(v317, v192, 0xEuLL);
  v320 = vsubq_s32(v254, vrshrq_n_s32(v543, 0xEuLL));
  v321 = vsubq_s32(v320, vrshrq_n_s32(v189, 0xEuLL));
  v322 = vrsraq_n_s32(v320, v189, 0xEuLL);
  v323 = vsubq_s32(v313, vrshrq_n_s32(v542, 0xEuLL));
  v324 = vsubq_s32(v323, vrshrq_n_s32(v191, 0xEuLL));
  v325 = vrsraq_n_s32(v323, v191, 0xEuLL);
  v326 = vdupq_n_s32(0x3E15u);
  v327 = vmulq_s32(v322, v326);
  v328 = vdupq_n_s32(0xF8Du);
  v329 = vmulq_s32(v325, v326);
  v330 = vmulq_s32(v322, v328);
  v463 = vmlaq_s32(v329, v319, v328);
  v464 = vmlaq_s32(v327, v316, v328);
  v331 = vdupq_n_s32(0xFFFFC1EB);
  v466 = vmlaq_s32(v330, v316, v331);
  v332 = vdupq_n_s32(0x20E7u);
  v462 = vmlaq_s32(vmulq_s32(v325, v328), v319, v331);
  v333 = vdupq_n_s32(0x36E5u);
  v334 = vmulq_s32(v321, v333);
  v335 = vmlaq_s32(vmulq_s32(v321, v332), v315, v333);
  v336 = vdupq_n_s32(0xFFFFDF19);
  v337 = vmlaq_s32(vmulq_s32(v324, v332), v318, v333);
  v338 = vmlaq_s32(v334, v315, v336);
  v339 = vmlaq_s32(vmulq_s32(v324, v333), v318, v336);
  v340 = vrsraq_n_s32(v311, v541, 0xEuLL);
  v341 = vrsraq_n_s32(v312, v540, 0xEuLL);
  v342 = vrsraq_n_s32(v254, v543, 0xEuLL);
  v343 = vrsraq_n_s32(v313, v542, 0xEuLL);
  v344 = vsubq_s32(v340, vrshrq_n_s32(v493, 0xEuLL));
  v345 = vsubq_s32(v341, vrshrq_n_s32(v491, 0xEuLL));
  v346 = vsubq_s32(v342, vrshrq_n_s32(v194, 0xEuLL));
  v347 = vsubq_s32(v343, vrshrq_n_s32(v495, 0xEuLL));
  v348 = vdupq_n_s32(0x3368u);
  v349 = vmulq_s32(v346, v348);
  v350 = vmulq_s32(v347, v348);
  v351 = vdupq_n_s32(0x2620u);
  v352 = vmulq_s32(v346, v351);
  v353 = vmlaq_s32(v349, v344, v351);
  v354 = vmlaq_s32(v350, v345, v351);
  v355 = vdupq_n_s32(0xFFFFCC98);
  v356 = vmlaq_s32(v352, v344, v355);
  v357 = vmlaq_s32(vmulq_s32(v347, v351), v345, v355);
  v358 = vrsraq_n_s32(v340, v493, 0xEuLL);
  v359 = vrsraq_n_s32(v341, v491, 0xEuLL);
  v360 = vrsraq_n_s32(v342, v194, 0xEuLL);
  v361 = vrsraq_n_s32(v343, v495, 0xEuLL);
  v362 = vdupq_n_s32(0x964u);
  v363 = vmulq_s32(v360, v362);
  v364 = vmulq_s32(v361, v362);
  v365 = vdupq_n_s32(0x3F4Fu);
  v366 = vmulq_s32(v361, v365);
  v367 = vmlaq_s32(v363, v358, v365);
  v368 = vmlaq_s32(v364, v359, v365);
  v369 = vdupq_n_s32(0xFFFFF69C);
  v370 = vmlaq_s32(vmulq_s32(v360, v365), v358, v369);
  v371 = vmlaq_s32(v366, v359, v369);
  v372 = vaddq_s32(v556, v557);
  v373 = vaddq_s32(v552, v553);
  v374 = vaddq_s32(v562, v564);
  v375 = vaddq_s32(v554, v555);
  v376 = vaddq_s32(v372, v374);
  v377 = vsubq_s32(v372, v374);
  v378 = vaddq_s32(v373, v375);
  v379 = vsubq_s32(v373, v375);
  v380 = vqrdmulhq_s32(v376, v539);
  v381 = vqrdmulhq_s32(v378, v539);
  v382 = vqrdmulhq_s32(v377, v539);
  v383 = vqrdmulhq_s32(v379, v539);
  v280.i64[0] = 0x100000001;
  v280.i64[1] = 0x100000001;
  v384 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v380, vshrq_n_u32(v380, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v381, vshrq_n_u32(v381, 0x1FuLL)), v280), 2uLL);
  v385 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v382, vshrq_n_u32(v382, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v383, vshrq_n_u32(v383, 0x1FuLL)), v280), 2uLL);
  v386 = vrshrq_n_s32(v568, 0xEuLL);
  v387 = vrshrq_n_s32(v559, 0xEuLL);
  v388 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v386, vshrq_n_u32(v386, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v387, vshrq_n_u32(v387, 0x1FuLL)), v280), 2uLL);
  v389 = vrshrq_n_s32(v570, 0xEuLL);
  v390 = vrshrq_n_s32(v566, 0xEuLL);
  v391 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v389, vshrq_n_u32(v389, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v390, vshrq_n_u32(v390, 0x1FuLL)), v280), 2uLL);
  v392 = vrshrq_n_s32(v547, 0xEuLL);
  v393 = vrshrq_n_s32(v545, 0xEuLL);
  v394 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v392, vshrq_n_u32(v392, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v393, vshrq_n_u32(v393, 0x1FuLL)), v280), 2uLL);
  v395 = vrshrq_n_s32(v529, 0xEuLL);
  v396 = vrshrq_n_s32(v526, 0xEuLL);
  v397 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v395, vshrq_n_u32(v395, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v396, vshrq_n_u32(v396, 0x1FuLL)), v280), 2uLL);
  v398 = vrshrq_n_s32(v489, 0xEuLL);
  v399 = vrshrq_n_s32(v461, 0xEuLL);
  v400 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v398, vshrq_n_u32(v398, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v399, vshrq_n_u32(v399, 0x1FuLL)), v280), 2uLL);
  v401 = vrshrq_n_s32(v551, 0xEuLL);
  v402 = vrshrq_n_s32(v549, 0xEuLL);
  v403 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v401, vshrq_n_u32(v401, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v402, vshrq_n_u32(v402, 0x1FuLL)), v280), 2uLL);
  v404 = vrshrq_n_s32(v520, 0xEuLL);
  v405 = vrshrq_n_s32(v518, 0xEuLL);
  v406 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v404, vshrq_n_u32(v404, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v405, vshrq_n_u32(v405, 0x1FuLL)), v280), 2uLL);
  v407 = vrshrq_n_s32(v510, 0xEuLL);
  v408 = vrshrq_n_s32(v514, 0xEuLL);
  v409 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v407, vshrq_n_u32(v407, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v408, vshrq_n_u32(v408, 0x1FuLL)), v280), 2uLL);
  v410 = vrshrq_n_s32(v506, 0xEuLL);
  v411 = vrshrq_n_s32(v508, 0xEuLL);
  v412 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v410, vshrq_n_u32(v410, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v411, vshrq_n_u32(v411, 0x1FuLL)), v280), 2uLL);
  v413 = vrshrq_n_s32(v497, 0xEuLL);
  v414 = vrshrq_n_s32(v500, 0xEuLL);
  v415 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v413, vshrq_n_u32(v413, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v414, vshrq_n_u32(v414, 0x1FuLL)), v280), 2uLL);
  v416 = vrshrq_n_s32(v502, 0xEuLL);
  v417 = vrshrq_n_s32(v504, 0xEuLL);
  v418 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v416, vshrq_n_u32(v416, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v417, vshrq_n_u32(v417, 0x1FuLL)), v280), 2uLL);
  v419 = vrshrq_n_s32(v512, 0xEuLL);
  v420 = vrshrq_n_s32(v516, 0xEuLL);
  v421 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v419, vshrq_n_u32(v419, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v420, vshrq_n_u32(v420, 0x1FuLL)), v280), 2uLL);
  v422 = vrshrq_n_s32(v522, 0xEuLL);
  v423 = vrshrq_n_s32(v524, 0xEuLL);
  v424 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v422, vshrq_n_u32(v422, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v423, vshrq_n_u32(v423, 0x1FuLL)), v280), 2uLL);
  v425 = vrshrq_n_s32(v573, 0xEuLL);
  v426 = vrshrq_n_s32(v575, 0xEuLL);
  v427 = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v425, vshrq_n_u32(v425, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v426, vshrq_n_u32(v426, 0x1FuLL)), v280), 2uLL);
  v428 = vrshrq_n_s32(v535, 0xEuLL);
  v429 = vrshrq_n_s32(v537, 0xEuLL);
  *a2 = v384;
  a2[1] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v428, vshrq_n_u32(v428, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v429, vshrq_n_u32(v429, 0x1FuLL)), v280), 2uLL);
  v430 = vrshrq_n_s32(v578, 0xEuLL);
  v431 = vrshrq_n_s32(v581, 0xEuLL);
  a2[30] = v427;
  a2[31] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v430, vshrq_n_u32(v430, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v431, vshrq_n_u32(v431, 0x1FuLL)), v280), 2uLL);
  v432 = vrshrq_n_s32(v485, 0xEuLL);
  v433 = vrshrq_n_s32(v487, 0xEuLL);
  a2[16] = v385;
  a2[17] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v432, vshrq_n_u32(v432, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v433, vshrq_n_u32(v433, 0x1FuLL)), v280), 2uLL);
  v434 = vrshrq_n_s32(v531, 0xEuLL);
  v435 = vrshrq_n_s32(v533, 0xEuLL);
  a2[14] = v424;
  a2[15] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v434, vshrq_n_u32(v434, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v435, vshrq_n_u32(v435, 0x1FuLL)), v280), 2uLL);
  v436 = vrshrq_n_s32(v470, 0xEuLL);
  v437 = vrshrq_n_s32(v471, 0xEuLL);
  a2[8] = v388;
  a2[9] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v436, vshrq_n_u32(v436, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v437, vshrq_n_u32(v437, 0x1FuLL)), v280), 2uLL);
  v438 = vrshrq_n_s32(v481, 0xEuLL);
  v439 = vrshrq_n_s32(v483, 0xEuLL);
  a2[22] = v421;
  a2[23] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v438, vshrq_n_u32(v438, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v439, vshrq_n_u32(v439, 0x1FuLL)), v280), 2uLL);
  v440 = vrshrq_n_s32(v473, 0xEuLL);
  v441 = vrshrq_n_s32(v468, 0xEuLL);
  a2[24] = v391;
  a2[25] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v440, vshrq_n_u32(v440, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v441, vshrq_n_u32(v441, 0x1FuLL)), v280), 2uLL);
  v442 = vrshrq_n_s32(v479, 0xEuLL);
  v443 = vrshrq_n_s32(v476, 0xEuLL);
  a2[6] = v418;
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v442, vshrq_n_u32(v442, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v443, vshrq_n_u32(v443, 0x1FuLL)), v280), 2uLL);
  v444 = vrshrq_n_s32(v464, 0xEuLL);
  v445 = vrshrq_n_s32(v463, 0xEuLL);
  a2[4] = v394;
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v444, vshrq_n_u32(v444, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v445, vshrq_n_u32(v445, 0x1FuLL)), v280), 2uLL);
  v446 = vrshrq_n_s32(v466, 0xEuLL);
  v447 = vrshrq_n_s32(v462, 0xEuLL);
  a2[26] = v415;
  a2[27] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v446, vshrq_n_u32(v446, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v447, vshrq_n_u32(v447, 0x1FuLL)), v280), 2uLL);
  v448 = vrshrq_n_s32(v335, 0xEuLL);
  v449 = vrshrq_n_s32(v337, 0xEuLL);
  a2[20] = v397;
  a2[21] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v448, vshrq_n_u32(v448, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v449, vshrq_n_u32(v449, 0x1FuLL)), v280), 2uLL);
  v450 = vrshrq_n_s32(v338, 0xEuLL);
  v451 = vrshrq_n_s32(v339, 0xEuLL);
  a2[10] = v412;
  a2[11] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v450, vshrq_n_u32(v450, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v451, vshrq_n_u32(v451, 0x1FuLL)), v280), 2uLL);
  v452 = vrshrq_n_s32(v353, 0xEuLL);
  v453 = vrshrq_n_s32(v354, 0xEuLL);
  a2[12] = v400;
  a2[13] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v452, vshrq_n_u32(v452, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v453, vshrq_n_u32(v453, 0x1FuLL)), v280), 2uLL);
  v454 = vrshrq_n_s32(v356, 0xEuLL);
  v455 = vrshrq_n_s32(v357, 0xEuLL);
  a2[18] = v409;
  a2[19] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v454, vshrq_n_u32(v454, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v455, vshrq_n_u32(v455, 0x1FuLL)), v280), 2uLL);
  v456 = vrshrq_n_s32(v367, 0xEuLL);
  v457 = vrshrq_n_s32(v368, 0xEuLL);
  a2[28] = v403;
  a2[29] = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v456, vshrq_n_u32(v456, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v457, vshrq_n_u32(v457, 0x1FuLL)), v280), 2uLL);
  v458 = vrshrq_n_s32(v370, 0xEuLL);
  v459 = vrshrq_n_s32(v371, 0xEuLL);
  result = vshrn_high_n_s32(vshrn_n_s32(vqaddq_s32(vqaddq_s32(v458, vshrq_n_u32(v458, 0x1FuLL)), v280), 2uLL), vqaddq_s32(vqaddq_s32(v459, vshrq_n_u32(v459, 0x1FuLL)), v280), 2uLL);
  a2[2] = v406;
  a2[3] = result;
  return result;
}

void vpx_fdct32x32_rd_neon(int16x8_t *a1, int32x4_t *a2, int a3)
{
  v4 = a1;
  v1214 = *MEMORY[0x277D85DE8];
  v5 = 2 * a3;
  v6 = 62 * a3;
  v7 = *(a1 + v6);
  v8 = *(a1 + v5);
  v9 = 32 * a3;
  v10 = 2 * (v9 - v5);
  v1013 = v9;
  v1014 = v9 - v5;
  v11 = *(a1 + v10);
  v12 = 4 * a3;
  v13 = *(a1 + v12);
  v14 = 58 * a3;
  v15 = *(a1 + v14);
  v16 = *(a1 + 6 * a3);
  v17 = 6 * a3;
  v18 = *a1;
  v1019 = v9 - v12;
  v19 = *(a1 + 2 * (v9 - v12));
  v20 = 2 * (v9 - v12);
  v21 = *(a1 + 8 * a3);
  v997 = 54 * a3;
  v22 = *(a1 + v997);
  v23 = v12;
  v1000 = v12;
  v996 = 10 * a3;
  v24 = *(a1 + v996);
  v995 = 52 * a3;
  v1011 = 26 * a3;
  v25 = *(a1 + v995);
  v1008 = 12 * a3;
  v26 = *(a1 + v1008);
  v1007 = 50 * a3;
  v27 = *(a1 + v1007);
  v28 = v5;
  v998 = 8 * a3;
  v999 = v5;
  v29 = *(a1 + 14 * a3);
  v1005 = 3 * a3;
  v1006 = 14 * a3;
  v30 = a1[v1005];
  v1004 = 46 * a3;
  v31 = a1[a3];
  v1012 = a3;
  v1022 = vshlq_n_s16(vaddq_s16(v7, *a1), 2uLL);
  v1023 = vshlq_n_s16(vaddq_s16(v11, v8), 2uLL);
  v32 = *(a1 + v1004);
  v1001 = 42 * a3;
  v1002 = 22 * a3;
  v1016 = 38 * a3;
  v1003 = 18 * a3;
  v33 = *(a1 + v1003);
  v1021 = 44 * a3;
  v34 = *(a1 + v1021);
  v1020 = 20 * a3;
  v35 = *(a1 + v1020);
  v36 = *(a1 + v1001);
  v37 = *(a1 + v1002);
  v1024 = vshlq_n_s16(vaddq_s16(v15, v13), 2uLL);
  v1025 = vshlq_n_s16(vaddq_s16(v19, v16), 2uLL);
  v1026 = vshlq_n_s16(vaddq_s16(v22, v21), 2uLL);
  v1027 = vshlq_n_s16(vaddq_s16(v25, v24), 2uLL);
  v1028 = vshlq_n_s16(vaddq_s16(v27, v26), 2uLL);
  v1029 = vshlq_n_s16(vaddq_s16(v30, v29), 2uLL);
  v38 = *(a1 + 40 * a3);
  v39 = vsubq_s16(v29, v30);
  v1017 = 24 * a3;
  v1018 = 40 * a3;
  v40 = *(a1 + v1017);
  v41 = vsubq_s16(v26, v27);
  v42 = *(a1 + v1016);
  v43 = vsubq_s16(v21, v22);
  v44 = *(a1 + v9 - v12);
  v1015 = 34 * a3;
  v45 = *(a1 + v1015);
  v1030 = vshlq_n_s16(vaddq_s16(v32, v31), 2uLL);
  v1031 = vshlq_n_s16(vaddq_s16(v34, v33), 2uLL);
  v46 = *(a1 + v9 - v5);
  v47 = vaddq_s16(v45, v44);
  v48 = a1[v9 / 0x10];
  v49 = vaddq_s16(v48, v46);
  v50 = vsubq_s16(v46, v48);
  v51 = *(a1 + v1011);
  v52 = vsubq_s16(v44, v45);
  v1010 = 36 * a3;
  v53 = *(a1 + v1010);
  v1032 = vshlq_n_s16(vaddq_s16(v36, v35), 2uLL);
  v1033 = vshlq_n_s16(vaddq_s16(v38, v37), 2uLL);
  v1034 = vshlq_n_s16(vaddq_s16(v42, v40), 2uLL);
  v1035 = vshlq_n_s16(vaddq_s16(v53, v51), 2uLL);
  v1036 = vshlq_n_s16(v47, 2uLL);
  v1037 = vshlq_n_s16(v49, 2uLL);
  v1038 = vshlq_n_s16(v50, 2uLL);
  v1039 = vshlq_n_s16(v52, 2uLL);
  v1040 = vshlq_n_s16(vsubq_s16(v51, v53), 2uLL);
  v1041 = vshlq_n_s16(vsubq_s16(v40, v42), 2uLL);
  v1042 = vshlq_n_s16(vsubq_s16(v37, v38), 2uLL);
  v1043 = vshlq_n_s16(vsubq_s16(v35, v36), 2uLL);
  v1044 = vshlq_n_s16(vsubq_s16(v33, v34), 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v31, v32), 2uLL);
  v1046 = vshlq_n_s16(v39, 2uLL);
  v1047 = vshlq_n_s16(v41, 2uLL);
  v1048 = vshlq_n_s16(vsubq_s16(v24, v25), 2uLL);
  v1049 = vshlq_n_s16(v43, 2uLL);
  v1050 = vshlq_n_s16(vsubq_s16(v16, v19), 2uLL);
  v1051 = vshlq_n_s16(vsubq_s16(v13, v15), 2uLL);
  v1052 = vshlq_n_s16(vsubq_s16(v8, v11), 2uLL);
  v1053 = vshlq_n_s16(vsubq_s16(v18, v7), 2uLL);
  dct_body_first_pass(&v1022, &v1150);
  v54 = v4[1];
  v55 = *(v4 + v6 + 16);
  v56 = vaddq_s16(v55, v54);
  v57 = *(v4 + v28 + 16);
  v58 = *(v4 + v10 + 16);
  v59 = vaddq_s16(v58, v57);
  v60 = *(v4 + v23 + 16);
  v61 = *(v4 + v14 + 16);
  v62 = *(v4 + v17 + 16);
  v63 = vaddq_s16(v61, v60);
  v64 = *(v4 + v20 + 16);
  v65 = vaddq_s16(v64, v62);
  v66 = *(v4 + v998 + 16);
  v67 = *(v4 + v997 + 16);
  v68 = *(v4 + v996 + 16);
  v69 = *(v4 + v995 + 16);
  v70 = vaddq_s16(v67, v66);
  v71 = vaddq_s16(v69, v68);
  v72 = *(v4 + v1008 + 16);
  v73 = *(v4 + v1007 + 16);
  v74 = vaddq_s16(v73, v72);
  v75 = *(v4 + v1006 + 16);
  v76 = v4[v1005 + 1];
  v77 = vaddq_s16(v76, v75);
  v78 = vsubq_s16(v75, v76);
  v79 = vsubq_s16(v72, v73);
  v80 = vsubq_s16(v68, v69);
  v81 = vsubq_s16(v66, v67);
  v82 = vsubq_s16(v62, v64);
  v83 = vsubq_s16(v60, v61);
  v993 = vsubq_s16(v57, v58);
  v84 = v4[v1012 + 1];
  v85 = vsubq_s16(v54, v55);
  v86 = *(v4 + v1003 + 16);
  v87 = *(v4 + v1021 + 16);
  v88 = *(v4 + v1020 + 16);
  v89 = *(v4 + v1001 + 16);
  v90 = *(v4 + v1002 + 16);
  v91 = *(v4 + v1018 + 16);
  v92 = *(v4 + v1017 + 16);
  v93 = *(v4 + v1016 + 16);
  v94 = *(v4 + v1011 + 16);
  v95 = *(v4 + v1010 + 16);
  v96 = *(v4 + v1019 + 16);
  v97 = *(v4 + v1015 + 16);
  v98 = *(v4 + v1014 + 16);
  v99 = *(v4 + v1013 + 16);
  v100 = vaddq_s16(v99, v98);
  v101 = vsubq_s16(v98, v99);
  v102 = vaddq_s16(v97, v96);
  v103 = vsubq_s16(v96, v97);
  v104 = vaddq_s16(v95, v94);
  v105 = vsubq_s16(v94, v95);
  v106 = vaddq_s16(v93, v92);
  v107 = vsubq_s16(v92, v93);
  v108 = vaddq_s16(v91, v90);
  v109 = vsubq_s16(v90, v91);
  v110 = vaddq_s16(v89, v88);
  v111 = vsubq_s16(v88, v89);
  v112 = vaddq_s16(v87, v86);
  v113 = vsubq_s16(v86, v87);
  v114 = *(v4 + v1004 + 16);
  v1022 = vshlq_n_s16(v56, 2uLL);
  v1023 = vshlq_n_s16(v59, 2uLL);
  v1024 = vshlq_n_s16(v63, 2uLL);
  v1025 = vshlq_n_s16(v65, 2uLL);
  v1026 = vshlq_n_s16(v70, 2uLL);
  v1027 = vshlq_n_s16(v71, 2uLL);
  v1028 = vshlq_n_s16(v74, 2uLL);
  v1029 = vshlq_n_s16(v77, 2uLL);
  v1030 = vshlq_n_s16(vaddq_s16(v114, v84), 2uLL);
  v1031 = vshlq_n_s16(v112, 2uLL);
  v1032 = vshlq_n_s16(v110, 2uLL);
  v1033 = vshlq_n_s16(v108, 2uLL);
  v1034 = vshlq_n_s16(v106, 2uLL);
  v1035 = vshlq_n_s16(v104, 2uLL);
  v1036 = vshlq_n_s16(v102, 2uLL);
  v1037 = vshlq_n_s16(v100, 2uLL);
  v1038 = vshlq_n_s16(v101, 2uLL);
  v1039 = vshlq_n_s16(v103, 2uLL);
  v1040 = vshlq_n_s16(v105, 2uLL);
  v1041 = vshlq_n_s16(v107, 2uLL);
  v1042 = vshlq_n_s16(v109, 2uLL);
  v1043 = vshlq_n_s16(v111, 2uLL);
  v1044 = vshlq_n_s16(v113, 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v84, v114), 2uLL);
  v1046 = vshlq_n_s16(v78, 2uLL);
  v1047 = vshlq_n_s16(v79, 2uLL);
  v1048 = vshlq_n_s16(v80, 2uLL);
  v1049 = vshlq_n_s16(v81, 2uLL);
  v1050 = vshlq_n_s16(v82, 2uLL);
  v1051 = vshlq_n_s16(v83, 2uLL);
  v1052 = vshlq_n_s16(v993, 2uLL);
  v1053 = vshlq_n_s16(v85, 2uLL);
  dct_body_first_pass(&v1022, &v1118);
  v115 = v4[2];
  v116 = *(v4 + v6 + 32);
  v117 = vaddq_s16(v116, v115);
  v118 = *(v4 + v999 + 32);
  v119 = *(v4 + v10 + 32);
  v120 = vaddq_s16(v119, v118);
  v121 = *(v4 + v1000 + 32);
  v122 = *(v4 + v14 + 32);
  v123 = *(v4 + v17 + 32);
  v124 = vaddq_s16(v122, v121);
  v125 = *(v4 + v20 + 32);
  v126 = vaddq_s16(v125, v123);
  v127 = *(v4 + v998 + 32);
  v128 = *(v4 + v997 + 32);
  v129 = *(v4 + v996 + 32);
  v130 = *(v4 + v995 + 32);
  v131 = vaddq_s16(v128, v127);
  v132 = vaddq_s16(v130, v129);
  v133 = *(v4 + v1008 + 32);
  v134 = *(v4 + v1007 + 32);
  v135 = vaddq_s16(v134, v133);
  v136 = *(v4 + v1006 + 32);
  v137 = v4[v1005 + 2];
  v138 = vaddq_s16(v137, v136);
  v139 = vsubq_s16(v136, v137);
  v140 = vsubq_s16(v133, v134);
  v141 = vsubq_s16(v129, v130);
  v142 = vsubq_s16(v127, v128);
  v143 = vsubq_s16(v123, v125);
  v144 = vsubq_s16(v121, v122);
  v994 = vsubq_s16(v118, v119);
  v145 = v4[v1012 + 2];
  v146 = vsubq_s16(v115, v116);
  v147 = *(v4 + v1003 + 32);
  v148 = *(v4 + v1021 + 32);
  v149 = *(v4 + v1020 + 32);
  v150 = *(v4 + v1001 + 32);
  v151 = *(v4 + v1002 + 32);
  v152 = *(v4 + v1018 + 32);
  v153 = *(v4 + v1017 + 32);
  v154 = *(v4 + v1016 + 32);
  v155 = *(v4 + v1011 + 32);
  v156 = *(v4 + v1010 + 32);
  v157 = *(v4 + v1019 + 32);
  v158 = *(v4 + v1015 + 32);
  v159 = *(v4 + v1014 + 32);
  v160 = *(v4 + v1013 + 32);
  v161 = vaddq_s16(v160, v159);
  v162 = vsubq_s16(v159, v160);
  v163 = vaddq_s16(v158, v157);
  v164 = vsubq_s16(v157, v158);
  v165 = vaddq_s16(v156, v155);
  v166 = vsubq_s16(v155, v156);
  v167 = vaddq_s16(v154, v153);
  v168 = vsubq_s16(v153, v154);
  v169 = vaddq_s16(v152, v151);
  v170 = vsubq_s16(v151, v152);
  v171 = vaddq_s16(v150, v149);
  v172 = vsubq_s16(v149, v150);
  v173 = vaddq_s16(v148, v147);
  v174 = vsubq_s16(v147, v148);
  v175 = *(v4 + v1004 + 32);
  v1022 = vshlq_n_s16(v117, 2uLL);
  v1023 = vshlq_n_s16(v120, 2uLL);
  v1024 = vshlq_n_s16(v124, 2uLL);
  v1025 = vshlq_n_s16(v126, 2uLL);
  v1026 = vshlq_n_s16(v131, 2uLL);
  v1027 = vshlq_n_s16(v132, 2uLL);
  v1028 = vshlq_n_s16(v135, 2uLL);
  v1029 = vshlq_n_s16(v138, 2uLL);
  v1030 = vshlq_n_s16(vaddq_s16(v175, v145), 2uLL);
  v1031 = vshlq_n_s16(v173, 2uLL);
  v1032 = vshlq_n_s16(v171, 2uLL);
  v1033 = vshlq_n_s16(v169, 2uLL);
  v1034 = vshlq_n_s16(v167, 2uLL);
  v1035 = vshlq_n_s16(v165, 2uLL);
  v1036 = vshlq_n_s16(v163, 2uLL);
  v1037 = vshlq_n_s16(v161, 2uLL);
  v1038 = vshlq_n_s16(v162, 2uLL);
  v1039 = vshlq_n_s16(v164, 2uLL);
  v1040 = vshlq_n_s16(v166, 2uLL);
  v1041 = vshlq_n_s16(v168, 2uLL);
  v1042 = vshlq_n_s16(v170, 2uLL);
  v1043 = vshlq_n_s16(v172, 2uLL);
  v1044 = vshlq_n_s16(v174, 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v145, v175), 2uLL);
  v1046 = vshlq_n_s16(v139, 2uLL);
  v1047 = vshlq_n_s16(v140, 2uLL);
  v1048 = vshlq_n_s16(v141, 2uLL);
  v1049 = vshlq_n_s16(v142, 2uLL);
  v1050 = vshlq_n_s16(v143, 2uLL);
  v1051 = vshlq_n_s16(v144, 2uLL);
  v1052 = vshlq_n_s16(v994, 2uLL);
  v1053 = vshlq_n_s16(v146, 2uLL);
  dct_body_first_pass(&v1022, &v1086);
  v176 = v4[3];
  v4 += 3;
  v177 = *(v4 + v6);
  v178 = vaddq_s16(v177, v176);
  v179 = *(v4 + v999);
  v180 = *(v4 + v10);
  v181 = vaddq_s16(v180, v179);
  v182 = *(v4 + v1000);
  v183 = *(v4 + v14);
  v184 = *(v4 + v17);
  v185 = vaddq_s16(v183, v182);
  v186 = *(v4 + v20);
  v187 = vaddq_s16(v186, v184);
  v188 = *(v4 + v998);
  v189 = *(v4 + v997);
  v190 = *(v4 + v996);
  v191 = *(v4 + v995);
  v192 = vaddq_s16(v189, v188);
  v193 = vaddq_s16(v191, v190);
  v194 = *(v4 + v1008);
  v195 = *(v4 + v1007);
  v196 = vaddq_s16(v195, v194);
  v197 = *(v4 + v1006);
  v198 = v4[v1005];
  v199 = vaddq_s16(v198, v197);
  v200 = vsubq_s16(v197, v198);
  v201 = vsubq_s16(v194, v195);
  v202 = vsubq_s16(v190, v191);
  v203 = vsubq_s16(v188, v189);
  v204 = vsubq_s16(v184, v186);
  v205 = vsubq_s16(v182, v183);
  v206 = vsubq_s16(v179, v180);
  v1009 = vsubq_s16(v176, v177);
  v207 = v4[v1012];
  v208 = *(v4 + v1003);
  v209 = *(v4 + v1021);
  v210 = *(v4 + v1020);
  v211 = *(v4 + v1001);
  v212 = *(v4 + v1002);
  v213 = *(v4 + v1018);
  v214 = *(v4 + v1017);
  v215 = *(v4 + v1016);
  v216 = *(v4 + v1011);
  v217 = *(v4 + v1010);
  v218 = *(v4 + v1019);
  v219 = *(v4 + v1015);
  v220 = *(v4 + v1014);
  v221 = *(v4 + v1013);
  v222 = vaddq_s16(v221, v220);
  v223 = vsubq_s16(v220, v221);
  v224 = vaddq_s16(v219, v218);
  v225 = vsubq_s16(v218, v219);
  v226 = vaddq_s16(v217, v216);
  v227 = vsubq_s16(v216, v217);
  v228 = vaddq_s16(v215, v214);
  v229 = vsubq_s16(v214, v215);
  v230 = vaddq_s16(v213, v212);
  v231 = vsubq_s16(v212, v213);
  v232 = vaddq_s16(v211, v210);
  v233 = vsubq_s16(v210, v211);
  v234 = vaddq_s16(v209, v208);
  v235 = vsubq_s16(v208, v209);
  v236 = *(v4 + v1004);
  v1022 = vshlq_n_s16(v178, 2uLL);
  v1023 = vshlq_n_s16(v181, 2uLL);
  v1024 = vshlq_n_s16(v185, 2uLL);
  v1025 = vshlq_n_s16(v187, 2uLL);
  v1026 = vshlq_n_s16(v192, 2uLL);
  v1027 = vshlq_n_s16(v193, 2uLL);
  v1028 = vshlq_n_s16(v196, 2uLL);
  v1029 = vshlq_n_s16(v199, 2uLL);
  v1030 = vshlq_n_s16(vaddq_s16(v236, v207), 2uLL);
  v1031 = vshlq_n_s16(v234, 2uLL);
  v1032 = vshlq_n_s16(v232, 2uLL);
  v1033 = vshlq_n_s16(v230, 2uLL);
  v1034 = vshlq_n_s16(v228, 2uLL);
  v1035 = vshlq_n_s16(v226, 2uLL);
  v1036 = vshlq_n_s16(v224, 2uLL);
  v1037 = vshlq_n_s16(v222, 2uLL);
  v1038 = vshlq_n_s16(v223, 2uLL);
  v1039 = vshlq_n_s16(v225, 2uLL);
  v1040 = vshlq_n_s16(v227, 2uLL);
  v1041 = vshlq_n_s16(v229, 2uLL);
  v1042 = vshlq_n_s16(v231, 2uLL);
  v1043 = vshlq_n_s16(v233, 2uLL);
  v1044 = vshlq_n_s16(v235, 2uLL);
  v1045 = vshlq_n_s16(vsubq_s16(v207, v236), 2uLL);
  v1046 = vshlq_n_s16(v200, 2uLL);
  v1047 = vshlq_n_s16(v201, 2uLL);
  v1048 = vshlq_n_s16(v202, 2uLL);
  v1049 = vshlq_n_s16(v203, 2uLL);
  v1050 = vshlq_n_s16(v204, 2uLL);
  v1051 = vshlq_n_s16(v205, 2uLL);
  v1052 = vshlq_n_s16(v206, 2uLL);
  v1053 = vshlq_n_s16(v1009, 2uLL);
  dct_body_first_pass(&v1022, &v1054);
  v237 = vtrn1q_s16(v1150, v1151);
  v238 = vtrn2q_s16(v1150, v1151);
  v239 = vtrn1q_s16(v1152, v1153);
  v240 = vtrn2q_s16(v1152, v1153);
  v241 = vtrn1q_s16(v1154, v1155);
  v242 = vtrn2q_s16(v1154, v1155);
  v243 = vtrn1q_s16(v1156, v1157);
  v244 = vtrn2q_s16(v1156, v1157);
  v245 = vtrn1q_s32(v237, v239);
  v246 = vtrn1q_s32(v238, v240);
  v247 = vtrn1q_s32(v241, v243);
  v248 = vzip2q_s64(v245, v247);
  v245.i64[1] = v247.i64[0];
  v249 = vtrn1q_s32(v242, v244);
  v250 = vzip2q_s64(v246, v249);
  v246.i64[1] = v249.i64[0];
  v251 = vtrn2q_s32(v237, v239);
  v252 = vtrn2q_s32(v241, v243);
  v253 = vzip2q_s64(v251, v252);
  v251.i64[1] = v252.i64[0];
  v254 = vtrn2q_s32(v238, v240);
  v255 = vtrn2q_s32(v242, v244);
  v256 = vzip2q_s64(v254, v255);
  v254.i64[1] = v255.i64[0];
  v1182 = v245;
  v1183 = v246;
  v1184 = v251;
  v1185 = v254;
  v1186 = v248;
  v1187 = v250;
  v1188 = v253;
  v1189 = v256;
  v257 = vtrn1q_s16(v1118, v1119);
  v258 = vtrn2q_s16(v1118, v1119);
  v259 = vtrn1q_s16(v1120, v1121);
  v260 = vtrn2q_s16(v1120, v1121);
  v261 = vtrn1q_s16(v1122, v1123);
  v262 = vtrn2q_s16(v1122, v1123);
  v263 = vtrn1q_s16(v1124, v1125);
  v264 = vtrn2q_s16(v1124, v1125);
  v265 = vtrn1q_s32(v257, v259);
  v266 = vtrn2q_s32(v257, v259);
  v267 = vtrn1q_s32(v258, v260);
  v268 = vtrn2q_s32(v258, v260);
  v269 = vtrn1q_s32(v261, v263);
  v270 = vtrn2q_s32(v261, v263);
  v271 = vtrn1q_s32(v262, v264);
  v272 = vtrn2q_s32(v262, v264);
  v273 = vzip2q_s64(v265, v269);
  v265.i64[1] = v269.i64[0];
  v274 = vzip2q_s64(v267, v271);
  v267.i64[1] = v271.i64[0];
  v275 = vzip2q_s64(v266, v270);
  v266.i64[1] = v270.i64[0];
  v276 = vzip2q_s64(v268, v272);
  v268.i64[1] = v272.i64[0];
  v1190 = v265;
  v1191 = v267;
  v1192 = v266;
  v1193 = v268;
  v1194 = v273;
  v1195 = v274;
  v1196 = v275;
  v1197 = v276;
  v277 = vtrn1q_s16(v1086, v1087);
  v278 = vtrn2q_s16(v1086, v1087);
  v279 = vtrn1q_s16(v1088, v1089);
  v280 = vtrn2q_s16(v1088, v1089);
  v281 = vtrn1q_s16(v1090, v1091);
  v282 = vtrn2q_s16(v1090, v1091);
  v283 = vtrn1q_s16(v1092, v1093);
  v284 = vtrn2q_s16(v1092, v1093);
  v285 = vtrn1q_s32(v277, v279);
  v286 = vtrn2q_s32(v277, v279);
  v287 = vtrn1q_s32(v278, v280);
  v288 = vtrn2q_s32(v278, v280);
  v289 = vtrn1q_s32(v281, v283);
  v290 = vtrn2q_s32(v281, v283);
  v291 = vtrn1q_s32(v282, v284);
  v292 = vtrn2q_s32(v282, v284);
  v293 = vzip2q_s64(v285, v289);
  v285.i64[1] = v289.i64[0];
  v294 = vzip2q_s64(v287, v291);
  v287.i64[1] = v291.i64[0];
  v295 = vzip2q_s64(v286, v290);
  v286.i64[1] = v290.i64[0];
  v296 = vzip2q_s64(v288, v292);
  v288.i64[1] = v292.i64[0];
  v1198 = v285;
  v1199 = v287;
  v1200 = v286;
  v1201 = v288;
  v1202 = v293;
  v1203 = v294;
  v1204 = v295;
  v1205 = v296;
  v297 = vtrn1q_s16(v1054, v1055);
  v298 = vtrn2q_s16(v1054, v1055);
  v299 = vtrn1q_s16(v1056, v1057);
  v300 = vtrn2q_s16(v1056, v1057);
  v301 = vtrn1q_s16(v1058, v1059);
  v302 = vtrn2q_s16(v1058, v1059);
  v303 = vtrn1q_s16(v1060, v1061);
  v304 = vtrn2q_s16(v1060, v1061);
  v305 = vtrn1q_s32(v297, v299);
  v306 = vtrn2q_s32(v297, v299);
  v307 = vtrn1q_s32(v298, v300);
  v308 = vtrn2q_s32(v298, v300);
  v309 = vtrn1q_s32(v301, v303);
  v310 = vtrn2q_s32(v301, v303);
  v311 = vtrn1q_s32(v302, v304);
  v312 = vtrn2q_s32(v302, v304);
  v313 = vzip2q_s64(v305, v309);
  v305.i64[1] = v309.i64[0];
  v314 = vzip2q_s64(v307, v311);
  v307.i64[1] = v311.i64[0];
  v315 = vzip2q_s64(v306, v310);
  v306.i64[1] = v310.i64[0];
  v316 = vzip2q_s64(v308, v312);
  v308.i64[1] = v312.i64[0];
  v1206 = v305;
  v1207 = v307;
  v1208 = v306;
  v1209 = v308;
  v1210 = v313;
  v1211 = v314;
  v1212 = v315;
  v1213 = v316;
  dct_body_second_pass_rd(&v1182, &v1022);
  v317 = vtrn1q_s16(v1022, v1023);
  v318 = vtrn2q_s16(v1022, v1023);
  v319 = vtrn1q_s16(v1024, v1025);
  v320 = vtrn2q_s16(v1024, v1025);
  v321 = vtrn1q_s16(v1026, v1027);
  v322 = vtrn2q_s16(v1026, v1027);
  v323 = vtrn1q_s16(v1028, v1029);
  v324 = vtrn2q_s16(v1028, v1029);
  v325 = vtrn1q_s32(v317, v319);
  v326 = vtrn1q_s32(v318, v320);
  v327 = vtrn1q_s32(v321, v323);
  v328 = vzip2q_s64(v325, v327);
  v325.i64[1] = v327.i64[0];
  v329 = vtrn1q_s32(v322, v324);
  v330 = vzip2q_s64(v326, v329);
  v326.i64[1] = v329.i64[0];
  v331 = vtrn2q_s32(v317, v319);
  v332 = vtrn2q_s32(v321, v323);
  v333 = vzip2q_s64(v331, v332);
  v331.i64[1] = v332.i64[0];
  v334 = vtrn2q_s32(v318, v320);
  v335 = vtrn2q_s32(v322, v324);
  v336 = vzip2q_s64(v334, v335);
  v334.i64[1] = v335.i64[0];
  v1022 = v325;
  v1023 = v326;
  v1024 = v331;
  v1025 = v334;
  v1026 = v328;
  v1027 = v330;
  v1028 = v333;
  v1029 = v336;
  v337 = vtrn1q_s16(v1030, v1031);
  v338 = vtrn2q_s16(v1030, v1031);
  v339 = vtrn1q_s16(v1032, v1033);
  v340 = vtrn2q_s16(v1032, v1033);
  v341 = vtrn1q_s16(v1034, v1035);
  v342 = vtrn2q_s16(v1034, v1035);
  v343 = vtrn1q_s16(v1036, v1037);
  v344 = vtrn2q_s16(v1036, v1037);
  v345 = vtrn1q_s32(v337, v339);
  v346 = vtrn2q_s32(v337, v339);
  v347 = vtrn1q_s32(v338, v340);
  v348 = vtrn2q_s32(v338, v340);
  v349 = vtrn1q_s32(v341, v343);
  v350 = vtrn2q_s32(v341, v343);
  v351 = vtrn1q_s32(v342, v344);
  v352 = vzip2q_s64(v345, v349);
  v345.i64[1] = v349.i64[0];
  v353 = vzip2q_s64(v347, v351);
  v347.i64[1] = v351.i64[0];
  v354 = vtrn2q_s32(v342, v344);
  v355 = vzip2q_s64(v346, v350);
  v346.i64[1] = v350.i64[0];
  v356 = vzip2q_s64(v348, v354);
  v348.i64[1] = v354.i64[0];
  v1030 = v345;
  v1031 = v347;
  v1032 = v346;
  v1033 = v348;
  v1034 = v352;
  v1035 = v353;
  v1036 = v355;
  v1037 = v356;
  v357 = vtrn1q_s16(v1038, v1039);
  v358 = vtrn2q_s16(v1038, v1039);
  v359 = vtrn1q_s16(v1040, v1041);
  v360 = vtrn2q_s16(v1040, v1041);
  v361 = vtrn1q_s16(v1042, v1043);
  v362 = vtrn2q_s16(v1042, v1043);
  v363 = vtrn1q_s16(v1044, v1045);
  v364 = vtrn2q_s16(v1044, v1045);
  v365 = vtrn1q_s32(v357, v359);
  v366 = vtrn2q_s32(v357, v359);
  v367 = vtrn1q_s32(v358, v360);
  v368 = vtrn2q_s32(v358, v360);
  v369 = vtrn1q_s32(v361, v363);
  v370 = vtrn2q_s32(v361, v363);
  v371 = vtrn1q_s32(v362, v364);
  v372 = vtrn2q_s32(v362, v364);
  v373 = vzip2q_s64(v365, v369);
  v374 = vmovl_s16(*v365.i8);
  v362.i64[0] = v365.i64[0];
  v362.i64[1] = v369.i64[0];
  v375 = vzip2q_s64(v367, v371);
  v367.i64[1] = v371.i64[0];
  v376 = vzip2q_s64(v366, v370);
  v366.i64[1] = v370.i64[0];
  v377 = vzip2q_s64(v368, v372);
  v368.i64[1] = v372.i64[0];
  v1038 = v362;
  v1039 = v367;
  v1040 = v366;
  v1041 = v368;
  v1044 = v376;
  v1045 = v377;
  v378 = v377;
  v379 = vtrn1q_s16(v1046, v1047);
  v380 = vtrn2q_s16(v1046, v1047);
  v381 = vtrn1q_s16(v1048, v1049);
  v382 = vtrn2q_s16(v1048, v1049);
  v383 = vtrn1q_s16(v1050, v1051);
  v384 = vtrn2q_s16(v1050, v1051);
  v385 = vtrn1q_s16(v1052, v1053);
  v386 = vtrn2q_s16(v1052, v1053);
  v387 = vtrn1q_s32(v379, v381);
  v388 = vtrn2q_s32(v379, v381);
  v389 = vtrn1q_s32(v380, v382);
  v390 = vtrn2q_s32(v380, v382);
  v391 = vtrn1q_s32(v383, v385);
  v392 = vtrn2q_s32(v383, v385);
  v393 = vtrn1q_s32(v384, v386);
  v394 = vtrn2q_s32(v384, v386);
  v395 = vzip2q_s64(v387, v391);
  v387.i64[1] = v391.i64[0];
  v396 = vzip2q_s64(v388, v392);
  v388.i64[1] = v392.i64[0];
  v397 = vzip2q_s64(v390, v394);
  v390.i64[1] = v394.i64[0];
  v398 = vzip2q_s64(v389, v393);
  v389.i64[1] = v393.i64[0];
  v1042 = v373;
  v1043 = v375;
  v1046 = v387;
  v1047 = v389;
  v1048 = v388;
  v1049 = v390;
  v1050 = v395;
  v1051 = v398;
  v1052 = v396;
  v1053 = v397;
  v399 = v1023;
  v400 = vmovl_high_s16(v1022);
  *a2 = vmovl_s16(*v1022.i8);
  a2[1] = v400;
  v401 = v1031;
  v402 = vmovl_high_s16(v1030);
  a2[2] = vmovl_s16(*v1030.i8);
  a2[3] = v402;
  a2[4] = v374;
  a2[5] = vmovl_s16(*v369.i8);
  a2[6] = vmovl_s16(*v387.i8);
  a2[7] = vmovl_s16(*v391.i8);
  a2[8] = vmovl_s16(*v399.i8);
  a2[9] = vmovl_high_s16(v399);
  a2[10] = vmovl_s16(*v401.i8);
  a2[11] = vmovl_high_s16(v401);
  v403 = v1040;
  v404 = vmovl_high_s16(v1039);
  a2[12] = vmovl_s16(*v1039.i8);
  a2[13] = v404;
  a2[14] = vmovl_s16(*v389.i8);
  a2[15] = vmovl_s16(*v393.i8);
  v405 = v1025;
  v406 = vmovl_high_s16(v1024);
  a2[16] = vmovl_s16(*v1024.i8);
  a2[17] = v406;
  v407 = v1033;
  v408 = vmovl_high_s16(v1032);
  a2[18] = vmovl_s16(*v1032.i8);
  a2[19] = v408;
  a2[20] = vmovl_s16(*v403.i8);
  a2[21] = vmovl_high_s16(v403);
  v409 = v1049;
  v410 = vmovl_high_s16(v1048);
  a2[22] = vmovl_s16(*v1048.i8);
  a2[23] = v410;
  a2[24] = vmovl_s16(*v405.i8);
  a2[25] = vmovl_high_s16(v405);
  a2[26] = vmovl_s16(*v407.i8);
  a2[27] = vmovl_high_s16(v407);
  v411 = v1042;
  v412 = vmovl_high_s16(v1041);
  a2[28] = vmovl_s16(*v1041.i8);
  a2[29] = v412;
  a2[30] = vmovl_s16(*v409.i8);
  a2[31] = vmovl_high_s16(v409);
  v413 = v1027;
  v414 = vmovl_high_s16(v1026);
  a2[32] = vmovl_s16(*v1026.i8);
  a2[33] = v414;
  v415 = v1035;
  v416 = vmovl_high_s16(v1034);
  a2[34] = vmovl_s16(*v1034.i8);
  a2[35] = v416;
  a2[36] = vmovl_s16(*v411.i8);
  a2[37] = vmovl_high_s16(v411);
  v417 = v1051;
  v418 = vmovl_high_s16(v1050);
  a2[38] = vmovl_s16(*v1050.i8);
  a2[39] = v418;
  a2[40] = vmovl_s16(*v413.i8);
  a2[41] = vmovl_high_s16(v413);
  a2[42] = vmovl_s16(*v415.i8);
  a2[43] = vmovl_high_s16(v415);
  v419 = v1044;
  v420 = vmovl_high_s16(v1043);
  a2[44] = vmovl_s16(*v1043.i8);
  a2[45] = v420;
  a2[46] = vmovl_s16(*v417.i8);
  a2[47] = vmovl_high_s16(v417);
  v421 = v1029;
  v422 = vmovl_high_s16(v1028);
  a2[48] = vmovl_s16(*v1028.i8);
  a2[49] = v422;
  v423 = v1037;
  v424 = vmovl_high_s16(v1036);
  a2[50] = vmovl_s16(*v1036.i8);
  a2[51] = v424;
  a2[52] = vmovl_s16(*v419.i8);
  a2[53] = vmovl_high_s16(v419);
  v425 = v1053;
  v426 = vmovl_high_s16(v1052);
  a2[54] = vmovl_s16(*v1052.i8);
  a2[55] = v426;
  a2[56] = vmovl_s16(*v421.i8);
  a2[57] = vmovl_high_s16(v421);
  a2[58] = vmovl_s16(*v423.i8);
  a2[59] = vmovl_high_s16(v423);
  a2[60] = vmovl_s16(*v378.i8);
  a2[61] = vmovl_high_s16(v378);
  a2[62] = vmovl_s16(*v425.i8);
  a2[63] = vmovl_high_s16(v425);
  v427 = vtrn1q_s16(v1158, v1159);
  v428 = vtrn2q_s16(v1158, v1159);
  v429 = vtrn1q_s16(v1160, v1161);
  v430 = vtrn2q_s16(v1160, v1161);
  v431 = vtrn1q_s16(v1162, v1163);
  v432 = vtrn2q_s16(v1162, v1163);
  v433 = vtrn1q_s16(v1164, v1165);
  v434 = vtrn2q_s16(v1164, v1165);
  v435 = vtrn1q_s32(v427, v429);
  v436 = vtrn2q_s32(v427, v429);
  v437 = vtrn1q_s32(v428, v430);
  v438 = vtrn2q_s32(v428, v430);
  v439 = vtrn1q_s32(v431, v433);
  v440 = vtrn2q_s32(v431, v433);
  v441 = vtrn1q_s32(v432, v434);
  v442 = vtrn2q_s32(v432, v434);
  v443 = vzip2q_s64(v435, v439);
  v435.i64[1] = v439.i64[0];
  v444 = vzip2q_s64(v437, v441);
  v437.i64[1] = v441.i64[0];
  v445 = vzip2q_s64(v436, v440);
  v436.i64[1] = v440.i64[0];
  v446 = vzip2q_s64(v438, v442);
  v438.i64[1] = v442.i64[0];
  v1182 = v435;
  v1183 = v437;
  v1184 = v436;
  v1185 = v438;
  v1186 = v443;
  v1187 = v444;
  v1188 = v445;
  v1189 = v446;
  v447 = vtrn1q_s16(v1126, v1127);
  v448 = vtrn2q_s16(v1126, v1127);
  v449 = vtrn1q_s16(v1128, v1129);
  v450 = vtrn2q_s16(v1128, v1129);
  v451 = vtrn1q_s16(v1130, v1131);
  v452 = vtrn2q_s16(v1130, v1131);
  v453 = vtrn1q_s16(v1132, v1133);
  v454 = vtrn2q_s16(v1132, v1133);
  v455 = vtrn1q_s32(v447, v449);
  v456 = vtrn2q_s32(v447, v449);
  v457 = vtrn1q_s32(v448, v450);
  v458 = vtrn2q_s32(v448, v450);
  v459 = vtrn1q_s32(v451, v453);
  v460 = vtrn2q_s32(v451, v453);
  v461 = vtrn1q_s32(v452, v454);
  v462 = vtrn2q_s32(v452, v454);
  v463 = vzip2q_s64(v455, v459);
  v455.i64[1] = v459.i64[0];
  v464 = vzip2q_s64(v457, v461);
  v457.i64[1] = v461.i64[0];
  v465 = vzip2q_s64(v456, v460);
  v456.i64[1] = v460.i64[0];
  v466 = vzip2q_s64(v458, v462);
  v458.i64[1] = v462.i64[0];
  v1190 = v455;
  v1191 = v457;
  v1192 = v456;
  v1193 = v458;
  v1194 = v463;
  v1195 = v464;
  v1196 = v465;
  v1197 = v466;
  v467 = vtrn1q_s16(v1094, v1095);
  v468 = vtrn2q_s16(v1094, v1095);
  v469 = vtrn1q_s16(v1096, v1097);
  v470 = vtrn2q_s16(v1096, v1097);
  v471 = vtrn1q_s16(v1098, v1099);
  v472 = vtrn2q_s16(v1098, v1099);
  v473 = vtrn1q_s16(v1100, v1101);
  v474 = vtrn2q_s16(v1100, v1101);
  v475 = vtrn1q_s32(v467, v469);
  v476 = vtrn2q_s32(v467, v469);
  v477 = vtrn1q_s32(v468, v470);
  v478 = vtrn2q_s32(v468, v470);
  v479 = vtrn1q_s32(v471, v473);
  v480 = vtrn2q_s32(v471, v473);
  v481 = vtrn1q_s32(v472, v474);
  v482 = vtrn2q_s32(v472, v474);
  v483 = vzip2q_s64(v475, v479);
  v475.i64[1] = v479.i64[0];
  v484 = vzip2q_s64(v477, v481);
  v477.i64[1] = v481.i64[0];
  v485 = vzip2q_s64(v476, v480);
  v476.i64[1] = v480.i64[0];
  v486 = vzip2q_s64(v478, v482);
  v478.i64[1] = v482.i64[0];
  v1198 = v475;
  v1199 = v477;
  v1200 = v476;
  v1201 = v478;
  v1202 = v483;
  v1203 = v484;
  v1204 = v485;
  v1205 = v486;
  v487 = vtrn1q_s16(v1062, v1063);
  v488 = vtrn2q_s16(v1062, v1063);
  v489 = vtrn1q_s16(v1064, v1065);
  v490 = vtrn2q_s16(v1064, v1065);
  v491 = vtrn1q_s16(v1066, v1067);
  v492 = vtrn2q_s16(v1066, v1067);
  v493 = vtrn1q_s16(v1068, v1069);
  v494 = vtrn2q_s16(v1068, v1069);
  v495 = vtrn1q_s32(v487, v489);
  v496 = vtrn2q_s32(v487, v489);
  v497 = vtrn1q_s32(v488, v490);
  v498 = vtrn2q_s32(v488, v490);
  v499 = vtrn1q_s32(v491, v493);
  v500 = vtrn2q_s32(v491, v493);
  v501 = vtrn1q_s32(v492, v494);
  v502 = vtrn2q_s32(v492, v494);
  v503 = vzip2q_s64(v495, v499);
  v495.i64[1] = v499.i64[0];
  v504 = vzip2q_s64(v497, v501);
  v497.i64[1] = v501.i64[0];
  v505 = vzip2q_s64(v496, v500);
  v496.i64[1] = v500.i64[0];
  v506 = vzip2q_s64(v498, v502);
  v498.i64[1] = v502.i64[0];
  v1206 = v495;
  v1207 = v497;
  v1208 = v496;
  v1209 = v498;
  v1210 = v503;
  v1211 = v504;
  v1212 = v505;
  v1213 = v506;
  dct_body_second_pass_rd(&v1182, &v1022);
  v507 = vtrn1q_s16(v1022, v1023);
  v508 = vtrn2q_s16(v1022, v1023);
  v509 = vtrn1q_s16(v1024, v1025);
  v510 = vtrn2q_s16(v1024, v1025);
  v511 = vtrn1q_s16(v1026, v1027);
  v512 = vtrn2q_s16(v1026, v1027);
  v513 = vtrn1q_s16(v1028, v1029);
  v514 = vtrn2q_s16(v1028, v1029);
  v515 = vtrn1q_s32(v507, v509);
  v516 = vtrn1q_s32(v508, v510);
  v517 = vtrn1q_s32(v511, v513);
  v518 = vzip2q_s64(v515, v517);
  v515.i64[1] = v517.i64[0];
  v519 = vtrn1q_s32(v512, v514);
  v520 = vzip2q_s64(v516, v519);
  v516.i64[1] = v519.i64[0];
  v521 = vtrn2q_s32(v507, v509);
  v522 = vtrn2q_s32(v511, v513);
  v523 = vzip2q_s64(v521, v522);
  v521.i64[1] = v522.i64[0];
  v524 = vtrn2q_s32(v508, v510);
  v525 = vtrn2q_s32(v512, v514);
  v526 = vzip2q_s64(v524, v525);
  v524.i64[1] = v525.i64[0];
  v1022 = v515;
  v1023 = v516;
  v1024 = v521;
  v1025 = v524;
  v1026 = v518;
  v1027 = v520;
  v1028 = v523;
  v1029 = v526;
  v527 = vtrn1q_s16(v1030, v1031);
  v528 = vtrn2q_s16(v1030, v1031);
  v529 = vtrn1q_s16(v1032, v1033);
  v530 = vtrn2q_s16(v1032, v1033);
  v531 = vtrn1q_s16(v1034, v1035);
  v532 = vtrn2q_s16(v1034, v1035);
  v533 = vtrn1q_s16(v1036, v1037);
  v534 = vtrn2q_s16(v1036, v1037);
  v535 = vtrn1q_s32(v527, v529);
  v536 = vtrn2q_s32(v527, v529);
  v537 = vtrn1q_s32(v528, v530);
  v538 = vtrn2q_s32(v528, v530);
  v539 = vtrn1q_s32(v531, v533);
  v540 = vtrn2q_s32(v531, v533);
  v541 = vtrn1q_s32(v532, v534);
  v542 = vzip2q_s64(v535, v539);
  v535.i64[1] = v539.i64[0];
  v543 = vzip2q_s64(v537, v541);
  v537.i64[1] = v541.i64[0];
  v544 = vtrn2q_s32(v532, v534);
  v545 = vzip2q_s64(v536, v540);
  v536.i64[1] = v540.i64[0];
  v546 = vzip2q_s64(v538, v544);
  v538.i64[1] = v544.i64[0];
  v1030 = v535;
  v1031 = v537;
  v1032 = v536;
  v1033 = v538;
  v1034 = v542;
  v1035 = v543;
  v1036 = v545;
  v1037 = v546;
  v547 = vtrn1q_s16(v1038, v1039);
  v548 = vtrn2q_s16(v1038, v1039);
  v549 = vtrn1q_s16(v1040, v1041);
  v550 = vtrn2q_s16(v1040, v1041);
  v551 = vtrn1q_s16(v1042, v1043);
  v552 = vtrn2q_s16(v1042, v1043);
  v553 = vtrn1q_s16(v1044, v1045);
  v554 = vtrn2q_s16(v1044, v1045);
  v555 = vtrn1q_s32(v547, v549);
  v556 = vtrn2q_s32(v547, v549);
  v557 = vtrn1q_s32(v548, v550);
  v558 = vtrn2q_s32(v548, v550);
  v559 = vtrn1q_s32(v551, v553);
  v560 = vtrn2q_s32(v551, v553);
  v561 = vtrn1q_s32(v552, v554);
  v562 = vtrn2q_s32(v552, v554);
  v563 = vzip2q_s64(v555, v559);
  v564 = vmovl_s16(*v555.i8);
  v552.i64[0] = v555.i64[0];
  v552.i64[1] = v559.i64[0];
  v565 = vzip2q_s64(v557, v561);
  v557.i64[1] = v561.i64[0];
  v566 = vzip2q_s64(v556, v560);
  v556.i64[1] = v560.i64[0];
  v567 = vzip2q_s64(v558, v562);
  v558.i64[1] = v562.i64[0];
  v1038 = v552;
  v1039 = v557;
  v1040 = v556;
  v1041 = v558;
  v1044 = v566;
  v1045 = v567;
  v568 = v567;
  v569 = vtrn1q_s16(v1046, v1047);
  v570 = vtrn2q_s16(v1046, v1047);
  v571 = vtrn1q_s16(v1048, v1049);
  v572 = vtrn2q_s16(v1048, v1049);
  v573 = vtrn1q_s16(v1050, v1051);
  v574 = vtrn2q_s16(v1050, v1051);
  v575 = vtrn1q_s16(v1052, v1053);
  v576 = vtrn2q_s16(v1052, v1053);
  v577 = vtrn1q_s32(v569, v571);
  v578 = vtrn2q_s32(v569, v571);
  v579 = vtrn1q_s32(v570, v572);
  v580 = vtrn2q_s32(v570, v572);
  v581 = vtrn1q_s32(v573, v575);
  v582 = vtrn2q_s32(v573, v575);
  v583 = vtrn1q_s32(v574, v576);
  v584 = vtrn2q_s32(v574, v576);
  v585 = vzip2q_s64(v577, v581);
  v577.i64[1] = v581.i64[0];
  v586 = vzip2q_s64(v578, v582);
  v578.i64[1] = v582.i64[0];
  v587 = vzip2q_s64(v580, v584);
  v580.i64[1] = v584.i64[0];
  v588 = vzip2q_s64(v579, v583);
  v579.i64[1] = v583.i64[0];
  v1042 = v563;
  v1043 = v565;
  v1046 = v577;
  v1047 = v579;
  v1048 = v578;
  v1049 = v580;
  v1050 = v585;
  v1051 = v588;
  v1052 = v586;
  v1053 = v587;
  v589 = v1023;
  v590 = vmovl_high_s16(v1022);
  a2[64] = vmovl_s16(*v1022.i8);
  a2[65] = v590;
  v591 = v1031;
  v592 = vmovl_high_s16(v1030);
  a2[66] = vmovl_s16(*v1030.i8);
  a2[67] = v592;
  a2[68] = v564;
  a2[69] = vmovl_s16(*v559.i8);
  a2[70] = vmovl_s16(*v577.i8);
  a2[71] = vmovl_s16(*v581.i8);
  a2[72] = vmovl_s16(*v589.i8);
  a2[73] = vmovl_high_s16(v589);
  a2[74] = vmovl_s16(*v591.i8);
  a2[75] = vmovl_high_s16(v591);
  v593 = v1040;
  v594 = vmovl_high_s16(v1039);
  a2[76] = vmovl_s16(*v1039.i8);
  a2[77] = v594;
  a2[78] = vmovl_s16(*v579.i8);
  a2[79] = vmovl_s16(*v583.i8);
  v595 = v1025;
  v596 = vmovl_high_s16(v1024);
  a2[80] = vmovl_s16(*v1024.i8);
  a2[81] = v596;
  v597 = v1033;
  v598 = vmovl_high_s16(v1032);
  a2[82] = vmovl_s16(*v1032.i8);
  a2[83] = v598;
  a2[84] = vmovl_s16(*v593.i8);
  a2[85] = vmovl_high_s16(v593);
  v599 = v1049;
  v600 = vmovl_high_s16(v1048);
  a2[86] = vmovl_s16(*v1048.i8);
  a2[87] = v600;
  a2[88] = vmovl_s16(*v595.i8);
  a2[89] = vmovl_high_s16(v595);
  a2[90] = vmovl_s16(*v597.i8);
  a2[91] = vmovl_high_s16(v597);
  v601 = v1042;
  v602 = vmovl_high_s16(v1041);
  a2[92] = vmovl_s16(*v1041.i8);
  a2[93] = v602;
  a2[94] = vmovl_s16(*v599.i8);
  a2[95] = vmovl_high_s16(v599);
  v603 = v1027;
  v604 = vmovl_high_s16(v1026);
  a2[96] = vmovl_s16(*v1026.i8);
  a2[97] = v604;
  v605 = v1035;
  v606 = vmovl_high_s16(v1034);
  a2[98] = vmovl_s16(*v1034.i8);
  a2[99] = v606;
  a2[100] = vmovl_s16(*v601.i8);
  a2[101] = vmovl_high_s16(v601);
  v607 = v1051;
  v608 = vmovl_high_s16(v1050);
  a2[102] = vmovl_s16(*v1050.i8);
  a2[103] = v608;
  a2[104] = vmovl_s16(*v603.i8);
  a2[105] = vmovl_high_s16(v603);
  a2[106] = vmovl_s16(*v605.i8);
  a2[107] = vmovl_high_s16(v605);
  v609 = v1044;
  v610 = vmovl_high_s16(v1043);
  a2[108] = vmovl_s16(*v1043.i8);
  a2[109] = v610;
  a2[110] = vmovl_s16(*v607.i8);
  a2[111] = vmovl_high_s16(v607);
  v611 = v1029;
  v612 = vmovl_high_s16(v1028);
  a2[112] = vmovl_s16(*v1028.i8);
  a2[113] = v612;
  v613 = v1037;
  v614 = vmovl_high_s16(v1036);
  a2[114] = vmovl_s16(*v1036.i8);
  a2[115] = v614;
  a2[116] = vmovl_s16(*v609.i8);
  a2[117] = vmovl_high_s16(v609);
  v615 = v1053;
  v616 = vmovl_high_s16(v1052);
  a2[118] = vmovl_s16(*v1052.i8);
  a2[119] = v616;
  a2[120] = vmovl_s16(*v611.i8);
  a2[121] = vmovl_high_s16(v611);
  a2[122] = vmovl_s16(*v613.i8);
  a2[123] = vmovl_high_s16(v613);
  a2[124] = vmovl_s16(*v568.i8);
  a2[125] = vmovl_high_s16(v568);
  a2[126] = vmovl_s16(*v615.i8);
  a2[127] = vmovl_high_s16(v615);
  v617 = vtrn1q_s16(v1166, v1167);
  v618 = vtrn2q_s16(v1166, v1167);
  v619 = vtrn1q_s16(v1168, v1169);
  v620 = vtrn2q_s16(v1168, v1169);
  v621 = vtrn1q_s16(v1170, v1171);
  v622 = vtrn2q_s16(v1170, v1171);
  v623 = vtrn1q_s16(v1172, v1173);
  v624 = vtrn2q_s16(v1172, v1173);
  v625 = vtrn1q_s32(v617, v619);
  v626 = vtrn2q_s32(v617, v619);
  v627 = vtrn1q_s32(v618, v620);
  v628 = vtrn2q_s32(v618, v620);
  v629 = vtrn1q_s32(v621, v623);
  v630 = vtrn2q_s32(v621, v623);
  v631 = vtrn1q_s32(v622, v624);
  v632 = vtrn2q_s32(v622, v624);
  v633 = vzip2q_s64(v625, v629);
  v625.i64[1] = v629.i64[0];
  v634 = vzip2q_s64(v627, v631);
  v627.i64[1] = v631.i64[0];
  v635 = vzip2q_s64(v626, v630);
  v626.i64[1] = v630.i64[0];
  v636 = vzip2q_s64(v628, v632);
  v628.i64[1] = v632.i64[0];
  v1182 = v625;
  v1183 = v627;
  v1184 = v626;
  v1185 = v628;
  v1186 = v633;
  v1187 = v634;
  v1188 = v635;
  v1189 = v636;
  v637 = vtrn1q_s16(v1134, v1135);
  v638 = vtrn2q_s16(v1134, v1135);
  v639 = vtrn1q_s16(v1136, v1137);
  v640 = vtrn2q_s16(v1136, v1137);
  v641 = vtrn1q_s16(v1138, v1139);
  v642 = vtrn2q_s16(v1138, v1139);
  v643 = vtrn1q_s16(v1140, v1141);
  v644 = vtrn2q_s16(v1140, v1141);
  v645 = vtrn1q_s32(v637, v639);
  v646 = vtrn2q_s32(v637, v639);
  v647 = vtrn1q_s32(v638, v640);
  v648 = vtrn2q_s32(v638, v640);
  v649 = vtrn1q_s32(v641, v643);
  v650 = vtrn2q_s32(v641, v643);
  v651 = vtrn1q_s32(v642, v644);
  v652 = vtrn2q_s32(v642, v644);
  v653 = vzip2q_s64(v645, v649);
  v645.i64[1] = v649.i64[0];
  v654 = vzip2q_s64(v647, v651);
  v647.i64[1] = v651.i64[0];
  v655 = vzip2q_s64(v646, v650);
  v646.i64[1] = v650.i64[0];
  v656 = vzip2q_s64(v648, v652);
  v648.i64[1] = v652.i64[0];
  v1190 = v645;
  v1191 = v647;
  v1192 = v646;
  v1193 = v648;
  v1194 = v653;
  v1195 = v654;
  v1196 = v655;
  v1197 = v656;
  v657 = vtrn1q_s16(v1102, v1103);
  v658 = vtrn2q_s16(v1102, v1103);
  v659 = vtrn1q_s16(v1104, v1105);
  v660 = vtrn2q_s16(v1104, v1105);
  v661 = vtrn1q_s16(v1106, v1107);
  v662 = vtrn2q_s16(v1106, v1107);
  v663 = vtrn1q_s16(v1108, v1109);
  v664 = vtrn2q_s16(v1108, v1109);
  v665 = vtrn1q_s32(v657, v659);
  v666 = vtrn2q_s32(v657, v659);
  v667 = vtrn1q_s32(v658, v660);
  v668 = vtrn2q_s32(v658, v660);
  v669 = vtrn1q_s32(v661, v663);
  v670 = vtrn2q_s32(v661, v663);
  v671 = vtrn1q_s32(v662, v664);
  v672 = vtrn2q_s32(v662, v664);
  v673 = vzip2q_s64(v665, v669);
  v665.i64[1] = v669.i64[0];
  v674 = vzip2q_s64(v667, v671);
  v667.i64[1] = v671.i64[0];
  v675 = vzip2q_s64(v666, v670);
  v666.i64[1] = v670.i64[0];
  v676 = vzip2q_s64(v668, v672);
  v668.i64[1] = v672.i64[0];
  v1198 = v665;
  v1199 = v667;
  v1200 = v666;
  v1201 = v668;
  v1202 = v673;
  v1203 = v674;
  v1204 = v675;
  v1205 = v676;
  v677 = vtrn1q_s16(v1070, v1071);
  v678 = vtrn2q_s16(v1070, v1071);
  v679 = vtrn1q_s16(v1072, v1073);
  v680 = vtrn2q_s16(v1072, v1073);
  v681 = vtrn1q_s16(v1074, v1075);
  v682 = vtrn2q_s16(v1074, v1075);
  v683 = vtrn1q_s16(v1076, v1077);
  v684 = vtrn2q_s16(v1076, v1077);
  v685 = vtrn1q_s32(v677, v679);
  v686 = vtrn2q_s32(v677, v679);
  v687 = vtrn1q_s32(v678, v680);
  v688 = vtrn2q_s32(v678, v680);
  v689 = vtrn1q_s32(v681, v683);
  v690 = vtrn2q_s32(v681, v683);
  v691 = vtrn1q_s32(v682, v684);
  v692 = vtrn2q_s32(v682, v684);
  v693 = vzip2q_s64(v685, v689);
  v685.i64[1] = v689.i64[0];
  v694 = vzip2q_s64(v687, v691);
  v687.i64[1] = v691.i64[0];
  v695 = vzip2q_s64(v686, v690);
  v686.i64[1] = v690.i64[0];
  v696 = vzip2q_s64(v688, v692);
  v688.i64[1] = v692.i64[0];
  v1206 = v685;
  v1207 = v687;
  v1208 = v686;
  v1209 = v688;
  v1210 = v693;
  v1211 = v694;
  v1212 = v695;
  v1213 = v696;
  dct_body_second_pass_rd(&v1182, &v1022);
  v697 = vtrn1q_s16(v1022, v1023);
  v698 = vtrn2q_s16(v1022, v1023);
  v699 = vtrn1q_s16(v1024, v1025);
  v700 = vtrn2q_s16(v1024, v1025);
  v701 = vtrn1q_s16(v1026, v1027);
  v702 = vtrn2q_s16(v1026, v1027);
  v703 = vtrn1q_s16(v1028, v1029);
  v704 = vtrn2q_s16(v1028, v1029);
  v705 = vtrn1q_s32(v697, v699);
  v706 = vtrn1q_s32(v698, v700);
  v707 = vtrn1q_s32(v701, v703);
  v708 = vzip2q_s64(v705, v707);
  v705.i64[1] = v707.i64[0];
  v709 = vtrn1q_s32(v702, v704);
  v710 = vzip2q_s64(v706, v709);
  v706.i64[1] = v709.i64[0];
  v711 = vtrn2q_s32(v697, v699);
  v712 = vtrn2q_s32(v701, v703);
  v713 = vzip2q_s64(v711, v712);
  v711.i64[1] = v712.i64[0];
  v714 = vtrn2q_s32(v698, v700);
  v715 = vtrn2q_s32(v702, v704);
  v716 = vzip2q_s64(v714, v715);
  v714.i64[1] = v715.i64[0];
  v1022 = v705;
  v1023 = v706;
  v1024 = v711;
  v1025 = v714;
  v1026 = v708;
  v1027 = v710;
  v1028 = v713;
  v1029 = v716;
  v717 = vtrn1q_s16(v1030, v1031);
  v718 = vtrn2q_s16(v1030, v1031);
  v719 = vtrn1q_s16(v1032, v1033);
  v720 = vtrn2q_s16(v1032, v1033);
  v721 = vtrn1q_s16(v1034, v1035);
  v722 = vtrn2q_s16(v1034, v1035);
  v723 = vtrn1q_s16(v1036, v1037);
  v724 = vtrn2q_s16(v1036, v1037);
  v725 = vtrn1q_s32(v717, v719);
  v726 = vtrn2q_s32(v717, v719);
  v727 = vtrn1q_s32(v718, v720);
  v728 = vtrn2q_s32(v718, v720);
  v729 = vtrn1q_s32(v721, v723);
  v730 = vtrn2q_s32(v721, v723);
  v731 = vtrn1q_s32(v722, v724);
  v732 = vzip2q_s64(v725, v729);
  v725.i64[1] = v729.i64[0];
  v733 = vzip2q_s64(v727, v731);
  v727.i64[1] = v731.i64[0];
  v734 = vtrn2q_s32(v722, v724);
  v735 = vzip2q_s64(v726, v730);
  v726.i64[1] = v730.i64[0];
  v736 = vzip2q_s64(v728, v734);
  v728.i64[1] = v734.i64[0];
  v1030 = v725;
  v1031 = v727;
  v1032 = v726;
  v1033 = v728;
  v1034 = v732;
  v1035 = v733;
  v1036 = v735;
  v1037 = v736;
  v737 = vtrn1q_s16(v1038, v1039);
  v738 = vtrn2q_s16(v1038, v1039);
  v739 = vtrn1q_s16(v1040, v1041);
  v740 = vtrn2q_s16(v1040, v1041);
  v741 = vtrn1q_s16(v1042, v1043);
  v742 = vtrn2q_s16(v1042, v1043);
  v743 = vtrn1q_s16(v1044, v1045);
  v744 = vtrn2q_s16(v1044, v1045);
  v745 = vtrn1q_s32(v737, v739);
  v746 = vtrn2q_s32(v737, v739);
  v747 = vtrn1q_s32(v738, v740);
  v748 = vtrn2q_s32(v738, v740);
  v749 = vtrn1q_s32(v741, v743);
  v750 = vtrn2q_s32(v741, v743);
  v751 = vtrn1q_s32(v742, v744);
  v752 = vtrn2q_s32(v742, v744);
  v753 = vzip2q_s64(v745, v749);
  v754 = vmovl_s16(*v745.i8);
  v742.i64[0] = v745.i64[0];
  v742.i64[1] = v749.i64[0];
  v755 = vzip2q_s64(v747, v751);
  v747.i64[1] = v751.i64[0];
  v756 = vzip2q_s64(v746, v750);
  v746.i64[1] = v750.i64[0];
  v757 = vzip2q_s64(v748, v752);
  v748.i64[1] = v752.i64[0];
  v1038 = v742;
  v1039 = v747;
  v1040 = v746;
  v1041 = v748;
  v1044 = v756;
  v1045 = v757;
  v758 = v757;
  v759 = vtrn1q_s16(v1046, v1047);
  v760 = vtrn2q_s16(v1046, v1047);
  v761 = vtrn1q_s16(v1048, v1049);
  v762 = vtrn2q_s16(v1048, v1049);
  v763 = vtrn1q_s16(v1050, v1051);
  v764 = vtrn2q_s16(v1050, v1051);
  v765 = vtrn1q_s16(v1052, v1053);
  v766 = vtrn2q_s16(v1052, v1053);
  v767 = vtrn1q_s32(v759, v761);
  v768 = vtrn2q_s32(v759, v761);
  v769 = vtrn1q_s32(v760, v762);
  v770 = vtrn2q_s32(v760, v762);
  v771 = vtrn1q_s32(v763, v765);
  v772 = vtrn2q_s32(v763, v765);
  v773 = vtrn1q_s32(v764, v766);
  v774 = vtrn2q_s32(v764, v766);
  v775 = vzip2q_s64(v767, v771);
  v767.i64[1] = v771.i64[0];
  v776 = vzip2q_s64(v768, v772);
  v768.i64[1] = v772.i64[0];
  v777 = vzip2q_s64(v770, v774);
  v770.i64[1] = v774.i64[0];
  v778 = vzip2q_s64(v769, v773);
  v769.i64[1] = v773.i64[0];
  v1042 = v753;
  v1043 = v755;
  v1046 = v767;
  v1047 = v769;
  v1048 = v768;
  v1049 = v770;
  v1050 = v775;
  v1051 = v778;
  v1052 = v776;
  v1053 = v777;
  v779 = v1023;
  v780 = vmovl_high_s16(v1022);
  a2[128] = vmovl_s16(*v1022.i8);
  a2[129] = v780;
  v781 = v1031;
  v782 = vmovl_high_s16(v1030);
  a2[130] = vmovl_s16(*v1030.i8);
  a2[131] = v782;
  a2[132] = v754;
  a2[133] = vmovl_s16(*v749.i8);
  a2[134] = vmovl_s16(*v767.i8);
  a2[135] = vmovl_s16(*v771.i8);
  a2[136] = vmovl_s16(*v779.i8);
  a2[137] = vmovl_high_s16(v779);
  a2[138] = vmovl_s16(*v781.i8);
  a2[139] = vmovl_high_s16(v781);
  v783 = v1040;
  v784 = vmovl_high_s16(v1039);
  a2[140] = vmovl_s16(*v1039.i8);
  a2[141] = v784;
  a2[142] = vmovl_s16(*v769.i8);
  a2[143] = vmovl_s16(*v773.i8);
  v785 = v1025;
  v786 = vmovl_high_s16(v1024);
  a2[144] = vmovl_s16(*v1024.i8);
  a2[145] = v786;
  v787 = v1033;
  v788 = vmovl_high_s16(v1032);
  a2[146] = vmovl_s16(*v1032.i8);
  a2[147] = v788;
  a2[148] = vmovl_s16(*v783.i8);
  a2[149] = vmovl_high_s16(v783);
  v789 = v1049;
  v790 = vmovl_high_s16(v1048);
  a2[150] = vmovl_s16(*v1048.i8);
  a2[151] = v790;
  a2[152] = vmovl_s16(*v785.i8);
  a2[153] = vmovl_high_s16(v785);
  a2[154] = vmovl_s16(*v787.i8);
  a2[155] = vmovl_high_s16(v787);
  v791 = v1042;
  v792 = vmovl_high_s16(v1041);
  a2[156] = vmovl_s16(*v1041.i8);
  a2[157] = v792;
  a2[158] = vmovl_s16(*v789.i8);
  a2[159] = vmovl_high_s16(v789);
  v793 = v1027;
  v794 = vmovl_high_s16(v1026);
  a2[160] = vmovl_s16(*v1026.i8);
  a2[161] = v794;
  v795 = v1035;
  v796 = vmovl_high_s16(v1034);
  a2[162] = vmovl_s16(*v1034.i8);
  a2[163] = v796;
  a2[164] = vmovl_s16(*v791.i8);
  a2[165] = vmovl_high_s16(v791);
  v797 = v1051;
  v798 = vmovl_high_s16(v1050);
  a2[166] = vmovl_s16(*v1050.i8);
  a2[167] = v798;
  a2[168] = vmovl_s16(*v793.i8);
  a2[169] = vmovl_high_s16(v793);
  a2[170] = vmovl_s16(*v795.i8);
  a2[171] = vmovl_high_s16(v795);
  v799 = v1044;
  v800 = vmovl_high_s16(v1043);
  a2[172] = vmovl_s16(*v1043.i8);
  a2[173] = v800;
  a2[174] = vmovl_s16(*v797.i8);
  a2[175] = vmovl_high_s16(v797);
  v801 = v1029;
  v802 = vmovl_high_s16(v1028);
  a2[176] = vmovl_s16(*v1028.i8);
  a2[177] = v802;
  v803 = v1037;
  v804 = vmovl_high_s16(v1036);
  a2[178] = vmovl_s16(*v1036.i8);
  a2[179] = v804;
  a2[180] = vmovl_s16(*v799.i8);
  a2[181] = vmovl_high_s16(v799);
  v805 = v1053;
  v806 = vmovl_high_s16(v1052);
  a2[182] = vmovl_s16(*v1052.i8);
  a2[183] = v806;
  a2[184] = vmovl_s16(*v801.i8);
  a2[185] = vmovl_high_s16(v801);
  a2[186] = vmovl_s16(*v803.i8);
  a2[187] = vmovl_high_s16(v803);
  a2[188] = vmovl_s16(*v758.i8);
  a2[189] = vmovl_high_s16(v758);
  a2[190] = vmovl_s16(*v805.i8);
  a2[191] = vmovl_high_s16(v805);
  v807 = vtrn1q_s16(v1174, v1175);
  v808 = vtrn2q_s16(v1174, v1175);
  v809 = vtrn1q_s16(v1176, v1177);
  v810 = vtrn2q_s16(v1176, v1177);
  v811 = vtrn1q_s16(v1178, v1179);
  v812 = vtrn2q_s16(v1178, v1179);
  v813 = vtrn1q_s16(v1180, v1181);
  v814 = vtrn2q_s16(v1180, v1181);
  v815 = vtrn1q_s32(v807, v809);
  v816 = vtrn2q_s32(v807, v809);
  v817 = vtrn1q_s32(v808, v810);
  v818 = vtrn2q_s32(v808, v810);
  v819 = vtrn1q_s32(v811, v813);
  v820 = vtrn2q_s32(v811, v813);
  v821 = vtrn1q_s32(v812, v814);
  v822 = vtrn2q_s32(v812, v814);
  v823 = vzip2q_s64(v815, v819);
  v815.i64[1] = v819.i64[0];
  v824 = vzip2q_s64(v817, v821);
  v817.i64[1] = v821.i64[0];
  v825 = vzip2q_s64(v816, v820);
  v816.i64[1] = v820.i64[0];
  v826 = vzip2q_s64(v818, v822);
  v818.i64[1] = v822.i64[0];
  v1182 = v815;
  v1183 = v817;
  v1184 = v816;
  v1185 = v818;
  v1186 = v823;
  v1187 = v824;
  v1188 = v825;
  v1189 = v826;
  v827 = vtrn1q_s16(v1142, v1143);
  v828 = vtrn2q_s16(v1142, v1143);
  v829 = vtrn1q_s16(v1144, v1145);
  v830 = vtrn2q_s16(v1144, v1145);
  v831 = vtrn1q_s16(v1146, v1147);
  v832 = vtrn2q_s16(v1146, v1147);
  v833 = vtrn1q_s16(v1148, v1149);
  v834 = vtrn2q_s16(v1148, v1149);
  v835 = vtrn1q_s32(v827, v829);
  v836 = vtrn2q_s32(v827, v829);
  v837 = vtrn1q_s32(v828, v830);
  v838 = vtrn2q_s32(v828, v830);
  v839 = vtrn1q_s32(v831, v833);
  v840 = vtrn2q_s32(v831, v833);
  v841 = vtrn1q_s32(v832, v834);
  v842 = vtrn2q_s32(v832, v834);
  v843 = vzip2q_s64(v835, v839);
  v835.i64[1] = v839.i64[0];
  v844 = vzip2q_s64(v837, v841);
  v837.i64[1] = v841.i64[0];
  v845 = vzip2q_s64(v836, v840);
  v836.i64[1] = v840.i64[0];
  v846 = vzip2q_s64(v838, v842);
  v838.i64[1] = v842.i64[0];
  v1190 = v835;
  v1191 = v837;
  v1192 = v836;
  v1193 = v838;
  v1194 = v843;
  v1195 = v844;
  v1196 = v845;
  v1197 = v846;
  v847 = vtrn1q_s16(v1110, v1111);
  v848 = vtrn2q_s16(v1110, v1111);
  v849 = vtrn1q_s16(v1112, v1113);
  v850 = vtrn2q_s16(v1112, v1113);
  v851 = vtrn1q_s16(v1114, v1115);
  v852 = vtrn2q_s16(v1114, v1115);
  v853 = vtrn1q_s16(v1116, v1117);
  v854 = vtrn2q_s16(v1116, v1117);
  v855 = vtrn1q_s32(v847, v849);
  v856 = vtrn2q_s32(v847, v849);
  v857 = vtrn1q_s32(v848, v850);
  v858 = vtrn2q_s32(v848, v850);
  v859 = vtrn1q_s32(v851, v853);
  v860 = vtrn2q_s32(v851, v853);
  v861 = vtrn1q_s32(v852, v854);
  v862 = vtrn2q_s32(v852, v854);
  v863 = vzip2q_s64(v855, v859);
  v855.i64[1] = v859.i64[0];
  v864 = vzip2q_s64(v857, v861);
  v857.i64[1] = v861.i64[0];
  v865 = vzip2q_s64(v856, v860);
  v856.i64[1] = v860.i64[0];
  v866 = vzip2q_s64(v858, v862);
  v858.i64[1] = v862.i64[0];
  v1198 = v855;
  v1199 = v857;
  v1200 = v856;
  v1201 = v858;
  v1202 = v863;
  v1203 = v864;
  v1204 = v865;
  v1205 = v866;
  v867 = vtrn1q_s16(v1078, v1079);
  v868 = vtrn2q_s16(v1078, v1079);
  v869 = vtrn1q_s16(v1080, v1081);
  v870 = vtrn2q_s16(v1080, v1081);
  v871 = vtrn1q_s16(v1082, v1083);
  v872 = vtrn2q_s16(v1082, v1083);
  v873 = vtrn1q_s16(v1084, v1085);
  v874 = vtrn2q_s16(v1084, v1085);
  v875 = vtrn1q_s32(v867, v869);
  v876 = vtrn2q_s32(v867, v869);
  v877 = vtrn1q_s32(v868, v870);
  v878 = vtrn2q_s32(v868, v870);
  v879 = vtrn1q_s32(v871, v873);
  v880 = vtrn2q_s32(v871, v873);
  v881 = vtrn1q_s32(v872, v874);
  v882 = vtrn2q_s32(v872, v874);
  v883 = vzip2q_s64(v875, v879);
  v875.i64[1] = v879.i64[0];
  v884 = vzip2q_s64(v877, v881);
  v877.i64[1] = v881.i64[0];
  v885 = vzip2q_s64(v876, v880);
  v876.i64[1] = v880.i64[0];
  v886 = vzip2q_s64(v878, v882);
  v878.i64[1] = v882.i64[0];
  v1206 = v875;
  v1207 = v877;
  v1208 = v876;
  v1209 = v878;
  v1210 = v883;
  v1211 = v884;
  v1212 = v885;
  v1213 = v886;
  dct_body_second_pass_rd(&v1182, &v1022);
  v887 = vtrn1q_s16(v1022, v1023);
  v888 = vtrn2q_s16(v1022, v1023);
  v889 = vtrn1q_s16(v1024, v1025);
  v890 = vtrn2q_s16(v1024, v1025);
  v891 = vtrn1q_s16(v1026, v1027);
  v892 = vtrn2q_s16(v1026, v1027);
  v893 = vtrn1q_s16(v1028, v1029);
  v894 = vtrn2q_s16(v1028, v1029);
  v895 = vtrn1q_s32(v887, v889);
  v896 = vtrn1q_s32(v891, v893);
  v897 = vzip2q_s64(v895, v896);
  v895.i64[1] = v896.i64[0];
  v898 = vtrn1q_s32(v888, v890);
  v899 = vtrn1q_s32(v892, v894);
  v900 = vzip2q_s64(v898, v899);
  v898.i64[1] = v899.i64[0];
  v901 = vtrn2q_s32(v887, v889);
  v902 = vtrn2q_s32(v891, v893);
  v903 = vzip2q_s64(v901, v902);
  v901.i64[1] = v902.i64[0];
  v904 = vtrn2q_s32(v888, v890);
  v905 = vtrn2q_s32(v892, v894);
  v906 = vzip2q_s64(v904, v905);
  v904.i64[1] = v905.i64[0];
  v1022 = v895;
  v1023 = v898;
  v1024 = v901;
  v1025 = v904;
  v1026 = v897;
  v1027 = v900;
  v1028 = v903;
  v1029 = v906;
  v907 = vtrn1q_s16(v1030, v1031);
  v908 = vtrn2q_s16(v1030, v1031);
  v909 = vtrn1q_s16(v1032, v1033);
  v910 = vtrn2q_s16(v1032, v1033);
  v911 = vtrn1q_s16(v1034, v1035);
  v912 = vtrn2q_s16(v1034, v1035);
  v913 = vtrn1q_s16(v1036, v1037);
  v914 = vtrn2q_s16(v1036, v1037);
  v915 = vtrn1q_s32(v907, v909);
  v916 = vtrn2q_s32(v907, v909);
  v917 = vtrn1q_s32(v908, v910);
  v918 = vtrn2q_s32(v908, v910);
  v919 = vtrn1q_s32(v911, v913);
  v920 = vtrn2q_s32(v911, v913);
  v921 = vtrn1q_s32(v912, v914);
  v922 = vtrn2q_s32(v912, v914);
  v923 = vzip2q_s64(v915, v919);
  v915.i64[1] = v919.i64[0];
  v924 = vzip2q_s64(v917, v921);
  v917.i64[1] = v921.i64[0];
  v925 = vzip2q_s64(v916, v920);
  v916.i64[1] = v920.i64[0];
  v926 = vzip2q_s64(v918, v922);
  v918.i64[1] = v922.i64[0];
  v1030 = v915;
  v1031 = v917;
  v1032 = v916;
  v1033 = v918;
  v1034 = v923;
  v1035 = v924;
  v1036 = v925;
  v1037 = v926;
  v927 = vtrn1q_s16(v1038, v1039);
  v928 = vtrn2q_s16(v1038, v1039);
  v929 = vtrn1q_s16(v1040, v1041);
  v930 = vtrn2q_s16(v1040, v1041);
  v931 = vtrn1q_s16(v1042, v1043);
  v932 = vtrn2q_s16(v1042, v1043);
  v933 = vtrn1q_s16(v1044, v1045);
  v934 = vtrn2q_s16(v1044, v1045);
  v935 = vtrn1q_s32(v927, v929);
  v936 = vtrn2q_s32(v927, v929);
  v937 = vtrn1q_s32(v928, v930);
  v938 = vtrn2q_s32(v928, v930);
  v939 = vtrn1q_s32(v931, v933);
  v940 = vtrn2q_s32(v931, v933);
  v941 = vtrn1q_s32(v932, v934);
  v942 = vtrn2q_s32(v932, v934);
  v943 = vzip2q_s64(v937, v941);
  v937.i64[1] = v941.i64[0];
  v944 = vzip2q_s64(v936, v940);
  v936.i64[1] = v940.i64[0];
  v945 = vzip2q_s64(v938, v942);
  v938.i64[1] = v942.i64[0];
  v1039 = v937;
  v1040 = v936;
  v1041 = v938;
  v1042 = vzip2q_s64(v935, v939);
  v1043 = v943;
  v1044 = v944;
  v946 = v945;
  v947 = vtrn1q_s16(v1046, v1047);
  v948 = vtrn2q_s16(v1046, v1047);
  v949 = vtrn1q_s16(v1048, v1049);
  v950 = vtrn2q_s16(v1048, v1049);
  v951 = vtrn1q_s16(v1050, v1051);
  v952 = vtrn2q_s16(v1050, v1051);
  v953 = vtrn1q_s16(v1052, v1053);
  v954 = vtrn2q_s16(v1052, v1053);
  v955 = vtrn1q_s32(v947, v949);
  v956 = vtrn2q_s32(v947, v949);
  v957 = vtrn1q_s32(v948, v950);
  v958 = vtrn2q_s32(v948, v950);
  v959 = vtrn1q_s32(v951, v953);
  v960 = vtrn2q_s32(v951, v953);
  v961 = vtrn1q_s32(v952, v954);
  v962 = vtrn2q_s32(v952, v954);
  v963 = vzip2q_s64(v956, v960);
  v956.i64[1] = v960.i64[0];
  v964 = vzip2q_s64(v958, v962);
  v958.i64[1] = v962.i64[0];
  v1048 = v956;
  v1049 = v958;
  v1050 = vzip2q_s64(v955, v959);
  v1051 = vzip2q_s64(v957, v961);
  v1052 = v963;
  v1053 = v964;
  v965 = v1023;
  v966 = vmovl_high_s16(v1022);
  a2[192] = vmovl_s16(*v1022.i8);
  a2[193] = v966;
  v967 = v1031;
  v968 = vmovl_high_s16(v1030);
  a2[194] = vmovl_s16(*v1030.i8);
  a2[195] = v968;
  a2[196] = vmovl_s16(*v935.i8);
  a2[197] = vmovl_s16(*v939.i8);
  a2[198] = vmovl_s16(*v955.i8);
  a2[199] = vmovl_s16(*v959.i8);
  a2[200] = vmovl_s16(*v965.i8);
  a2[201] = vmovl_high_s16(v965);
  a2[202] = vmovl_s16(*v967.i8);
  a2[203] = vmovl_high_s16(v967);
  v969 = v1040;
  v970 = vmovl_high_s16(v1039);
  a2[204] = vmovl_s16(*v1039.i8);
  a2[205] = v970;
  a2[206] = vmovl_s16(*v957.i8);
  a2[207] = vmovl_s16(*v961.i8);
  v971 = v1025;
  v972 = vmovl_high_s16(v1024);
  a2[208] = vmovl_s16(*v1024.i8);
  a2[209] = v972;
  v973 = v1033;
  v974 = vmovl_high_s16(v1032);
  a2[210] = vmovl_s16(*v1032.i8);
  a2[211] = v974;
  a2[212] = vmovl_s16(*v969.i8);
  a2[213] = vmovl_high_s16(v969);
  v975 = v1049;
  v976 = vmovl_high_s16(v1048);
  a2[214] = vmovl_s16(*v1048.i8);
  a2[215] = v976;
  a2[216] = vmovl_s16(*v971.i8);
  a2[217] = vmovl_high_s16(v971);
  a2[218] = vmovl_s16(*v973.i8);
  a2[219] = vmovl_high_s16(v973);
  v977 = v1042;
  v978 = vmovl_high_s16(v1041);
  a2[220] = vmovl_s16(*v1041.i8);
  a2[221] = v978;
  a2[222] = vmovl_s16(*v975.i8);
  a2[223] = vmovl_high_s16(v975);
  v979 = v1027;
  v980 = vmovl_high_s16(v1026);
  a2[224] = vmovl_s16(*v1026.i8);
  a2[225] = v980;
  v981 = v1035;
  v982 = vmovl_high_s16(v1034);
  a2[226] = vmovl_s16(*v1034.i8);
  a2[227] = v982;
  a2[228] = vmovl_s16(*v977.i8);
  a2[229] = vmovl_high_s16(v977);
  v983 = v1051;
  v984 = vmovl_high_s16(v1050);
  a2[230] = vmovl_s16(*v1050.i8);
  a2[231] = v984;
  a2[232] = vmovl_s16(*v979.i8);
  a2[233] = vmovl_high_s16(v979);
  a2[234] = vmovl_s16(*v981.i8);
  a2[235] = vmovl_high_s16(v981);
  v985 = v1044;
  v986 = vmovl_high_s16(v1043);
  a2[236] = vmovl_s16(*v1043.i8);
  a2[237] = v986;
  a2[238] = vmovl_s16(*v983.i8);
  a2[239] = vmovl_high_s16(v983);
  v987 = v1029;
  v988 = vmovl_high_s16(v1028);
  a2[240] = vmovl_s16(*v1028.i8);
  a2[241] = v988;
  v989 = v1037;
  v990 = vmovl_high_s16(v1036);
  a2[242] = vmovl_s16(*v1036.i8);
  a2[243] = v990;
  a2[244] = vmovl_s16(*v985.i8);
  a2[245] = vmovl_high_s16(v985);
  v991 = v1053;
  v992 = vmovl_high_s16(v1052);
  a2[246] = vmovl_s16(*v1052.i8);
  a2[247] = v992;
  a2[248] = vmovl_s16(*v987.i8);
  a2[249] = vmovl_high_s16(v987);
  a2[250] = vmovl_s16(*v989.i8);
  a2[251] = vmovl_high_s16(v989);
  a2[252] = vmovl_s16(*v946.i8);
  a2[253] = vmovl_high_s16(v946);
  a2[254] = vmovl_s16(*v991.i8);
  a2[255] = vmovl_high_s16(v991);
}

int16x8_t dct_body_second_pass_rd(int16x8_t *a1, int16x8_t *a2)
{
  v401 = a1[31];
  v364 = a1[30];
  v366 = a1[1];
  v388 = vaddq_s16(v401, *a1);
  v372 = vaddq_s16(v364, v366);
  v2 = a1[4];
  v3 = a1[5];
  v5 = a1[26];
  v4 = a1[27];
  v6 = vaddq_s16(v4, v2);
  v7 = vaddq_s16(v5, v3);
  v8 = a1[6];
  v9 = a1[7];
  v11 = a1[24];
  v10 = a1[25];
  v12 = a1[8];
  v13 = a1[9];
  v15 = a1[22];
  v14 = a1[23];
  v376 = vaddq_s16(v11, v9);
  v378 = vaddq_s16(v14, v12);
  v352 = vaddq_s16(v10, v8);
  v354 = vaddq_s16(v15, v13);
  v17 = a1[10];
  v16 = a1[11];
  v19 = a1[20];
  v18 = a1[21];
  v20 = vaddq_s16(v18, v17);
  v21 = vaddq_s16(v19, v16);
  v22 = vsubq_s16(v16, v19);
  v23 = vsubq_s16(v17, v18);
  v24 = vsubq_s16(v13, v15);
  v360 = a1[14];
  v362 = a1[17];
  v396 = a1[15];
  v398 = a1[16];
  v374 = vaddq_s16(v362, v360);
  v25 = vsubq_s16(v12, v14);
  v390 = vaddq_s16(v398, v396);
  v26 = vsubq_s16(v9, v11);
  v27 = vsubq_s16(v8, v10);
  v28 = vsubq_s16(v3, v5);
  v29 = vsubq_s16(v2, v4);
  v30 = vaddq_s16(v390, v388);
  v31 = vaddq_s16(v374, v372);
  v368 = a1[2];
  v370 = a1[29];
  v356 = a1[3];
  v358 = a1[28];
  v32 = vaddq_s16(v370, v368);
  v34 = a1[12];
  v33 = a1[13];
  v35 = a1[18];
  v36 = a1[19];
  v37 = vaddq_s16(v35, v33);
  v38 = vaddq_s16(v37, v32);
  v39 = vaddq_s16(v358, v356);
  v40 = vaddq_s16(v36, v34);
  v41 = vaddq_s16(v40, v39);
  v42 = vsubq_s16(vshrq_n_u16(v41, 0xFuLL), vmvnq_s8(v41));
  v43 = vaddq_s16(v21, v6);
  v44 = vsubq_s16(vshrq_n_u16(v43, 0xFuLL), vmvnq_s8(v43));
  v45 = vaddq_s16(v20, v7);
  v46 = vsubq_s16(vshrq_n_u16(v45, 0xFuLL), vmvnq_s8(v45));
  v47 = vaddq_s16(v354, v352);
  v48 = vsubq_s16(vshrq_n_u16(v47, 0xFuLL), vmvnq_s8(v47));
  v49 = vaddq_s16(v378, v376);
  v50 = vsubq_s16(vshrq_n_u16(v49, 0xFuLL), vmvnq_s8(v49));
  v51 = vsubq_s16(v7, v20);
  v52 = vsubq_s16(vshrq_n_u16(v51, 0xFuLL), vmvnq_s8(v51));
  v53 = vsubq_s16(v6, v21);
  v54 = vsubq_s16(v39, v40);
  v55 = vsubq_s16(v32, v37);
  v56 = vsubq_s16(vshrq_n_u16(v55, 0xFuLL), vmvnq_s8(v55));
  v57 = vdupq_n_s16(0x2D41u);
  v58 = vmlal_s16(vmull_s16(*v22.i8, *v57.i8), *v29.i8, *v57.i8);
  v59 = vmlal_high_s16(vmull_high_s16(v22, v57), v29, v57);
  v60 = vmlsl_s16(vmull_s16(*v29.i8, *v57.i8), *v22.i8, *v57.i8);
  v61 = vmlsl_high_s16(vmull_high_s16(v29, v57), v22, v57);
  v62 = vmlal_s16(vmull_s16(*v23.i8, *v57.i8), *v28.i8, *v57.i8);
  v63 = vmlal_high_s16(vmull_high_s16(v23, v57), v28, v57);
  v64 = vmlsl_s16(vmull_s16(*v28.i8, *v57.i8), *v23.i8, *v57.i8);
  v65 = vmlsl_high_s16(vmull_high_s16(v28, v57), v23, v57);
  v66 = vmlal_s16(vmull_s16(*v24.i8, *v57.i8), *v27.i8, *v57.i8);
  v67 = vmlal_high_s16(vmull_high_s16(v24, v57), v27, v57);
  v68 = vmlsl_s16(vmull_s16(*v27.i8, *v57.i8), *v24.i8, *v57.i8);
  v69 = vmlsl_high_s16(vmull_high_s16(v27, v57), v24, v57);
  v386 = vmlal_s16(vmull_s16(*v25.i8, *v57.i8), *v26.i8, *v57.i8);
  v384 = vmlal_high_s16(vmull_high_s16(v25, v57), v26, v57);
  v380 = vmlsl_high_s16(vmull_high_s16(v26, v57), v25, v57);
  v382 = vmlsl_s16(vmull_s16(*v26.i8, *v57.i8), *v25.i8, *v57.i8);
  v70 = vshrq_n_s16(v42, 2uLL);
  v71 = vsubq_s16(v70, vshrq_n_s16(v44, 2uLL));
  v72 = vsraq_n_s16(v70, v44, 2uLL);
  v73 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v38, 0xFuLL), vmvnq_s8(v38)), 2uLL);
  v74 = vsubq_s16(v73, vshrq_n_s16(v46, 2uLL));
  v75 = vsraq_n_s16(v73, v46, 2uLL);
  v76 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v31, 0xFuLL), vmvnq_s8(v31)), 2uLL);
  v77 = vsubq_s16(v76, vshrq_n_s16(v48, 2uLL));
  v78 = vsraq_n_s16(v76, v48, 2uLL);
  v79 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v30, 0xFuLL), vmvnq_s8(v30)), 2uLL);
  v340 = vsubq_s16(v79, vshrq_n_s16(v50, 2uLL));
  v342 = v71;
  v80 = vsraq_n_s16(v79, v50, 2uLL);
  v81 = vshrq_n_s16(v52, 2uLL);
  v82 = vshrq_n_s16(v56, 2uLL);
  v83 = vmlal_s16(vmull_s16(*v81.i8, *v57.i8), *v82.i8, *v57.i8);
  v84 = vmlal_high_s16(vmull_high_s16(v81, v57), v82, v57);
  v85 = vmlsl_s16(vmull_s16(*v82.i8, *v57.i8), *v81.i8, *v57.i8);
  v86 = vmlsl_high_s16(vmull_high_s16(v82, v57), v81, v57);
  v87 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v53, 0xFuLL), vmvnq_s8(v53)), 2uLL);
  v88 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v54, 0xFuLL), vmvnq_s8(v54)), 2uLL);
  v350 = vmlal_s16(vmull_s16(*v87.i8, *v57.i8), *v88.i8, *v57.i8);
  v348 = vmlal_high_s16(vmull_high_s16(v87, v57), v88, v57);
  v344 = vmlsl_high_s16(vmull_high_s16(v88, v57), v87, v57);
  v346 = vmlsl_s16(vmull_s16(*v88.i8, *v57.i8), *v87.i8, *v57.i8);
  v89 = vmlal_s16(vmull_s16(*v74.i8, *v57.i8), *v77.i8, *v57.i8);
  v90 = vmlal_high_s16(vmull_high_s16(v74, v57), v77, v57);
  v91 = vmlsl_s16(vmull_s16(*v77.i8, *v57.i8), *v74.i8, *v57.i8);
  v92 = vmlsl_high_s16(vmull_high_s16(v77, v57), v74, v57);
  v93 = vaddq_s16(v80, v72);
  v94 = vaddq_s16(v78, v75);
  v395 = vmlal_s16(vmull_s16(*v94.i8, *v57.i8), *v93.i8, *v57.i8);
  v394 = vmlal_high_s16(vmull_high_s16(v94, v57), v93, v57);
  v392 = vmlsl_high_s16(vmull_high_s16(v93, v57), v94, v57);
  v393 = vmlsl_s16(vmull_s16(*v93.i8, *v57.i8), *v94.i8, *v57.i8);
  v95 = vsubq_s16(v33, v35);
  v96 = vsubq_s16(v34, v36);
  v97 = vsubq_s16(v356, v358);
  v98 = vsubq_s16(v368, v370);
  v99 = vsubq_s16(v352, v354);
  v100 = vsubq_s16(vshrq_n_u16(v99, 0xFuLL), vmvnq_s8(v99));
  v101 = vsubq_s16(v372, v374);
  v102 = vsubq_s16(vshrq_n_u16(v101, 0xFuLL), vmvnq_s8(v101));
  v103 = vsubq_s16(vshrq_n_u16(v95, 0xFuLL), vmvnq_s8(v95));
  v104 = vsubq_s16(vshrq_n_u16(v96, 0xFuLL), vmvnq_s8(v96));
  v105 = vuzp1q_s16(vrshrq_n_s32(v58, 0xEuLL), vrshrq_n_s32(v59, 0xEuLL));
  v106 = vuzp1q_s16(vrshrq_n_s32(v60, 0xEuLL), vrshrq_n_s32(v61, 0xEuLL));
  v107 = vuzp1q_s16(vrshrq_n_s32(v62, 0xEuLL), vrshrq_n_s32(v63, 0xEuLL));
  v108 = vuzp1q_s16(vrshrq_n_s32(v64, 0xEuLL), vrshrq_n_s32(v65, 0xEuLL));
  v109 = vsubq_s16(vshrq_n_u16(v106, 0xFuLL), vmvnq_s8(v106));
  v110 = vsubq_s16(vshrq_n_u16(v107, 0xFuLL), vmvnq_s8(v107));
  v111 = vsubq_s16(vshrq_n_u16(v105, 0xFuLL), vmvnq_s8(v105));
  v112 = vsubq_s16(vshrq_n_u16(v97, 0xFuLL), vmvnq_s8(v97));
  v113 = vsubq_s16(vshrq_n_u16(v98, 0xFuLL), vmvnq_s8(v98));
  v114 = vuzp1q_s16(vrshrq_n_s32(v83, 0xEuLL), vrshrq_n_s32(v84, 0xEuLL));
  v115 = vuzp1q_s16(vrshrq_n_s32(v85, 0xEuLL), vrshrq_n_s32(v86, 0xEuLL));
  v116 = vshrq_n_s16(v109, 2uLL);
  v117 = vsubq_s16(vshrq_n_s16(v104, 2uLL), v116);
  v118 = vsraq_n_s16(v116, v104, 2uLL);
  v119 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v108, 0xFuLL), vmvnq_s8(v108)), 2uLL);
  v120 = vsubq_s16(vshrq_n_s16(v103, 2uLL), v119);
  v121 = vsraq_n_s16(v119, v103, 2uLL);
  v122 = vshrq_n_s16(v111, 2uLL);
  v123 = vsubq_s16(vshrq_n_s16(v112, 2uLL), v122);
  v124 = vsraq_n_s16(v122, v112, 2uLL);
  v125 = vshrq_n_s16(v110, 2uLL);
  v126 = vsubq_s16(vshrq_n_s16(v113, 2uLL), v125);
  v127 = vsraq_n_s16(v125, v113, 2uLL);
  v128 = vsubq_s16(v78, v75);
  v129 = vsubq_s16(v80, v72);
  v130 = vsubq_s16(vshrq_n_s16(v100, 2uLL), v115);
  v131 = vsraq_n_s16(v115, v100, 2uLL);
  v132 = vsubq_s16(vshrq_n_s16(v102, 2uLL), v114);
  v133 = vdupq_n_s16(0x3B21u);
  v134 = vdupq_n_s16(0x187Eu);
  v135 = vsraq_n_s16(v114, v102, 2uLL);
  v136 = vmlal_s16(vmull_s16(*v121.i8, *v134.i8), *v127.i8, *v133.i8);
  v137 = vmlal_high_s16(vmull_high_s16(v121, v134), v127, v133);
  v138 = vmlsl_s16(vmull_s16(*v127.i8, *v134.i8), *v121.i8, *v133.i8);
  v139 = vmlsl_high_s16(vmull_high_s16(v127, v134), v121, v133);
  v140 = vmlal_s16(vmull_s16(*v118.i8, *v134.i8), *v124.i8, *v133.i8);
  v141 = vmlal_high_s16(vmull_high_s16(v118, v134), v124, v133);
  v336 = vmlsl_s16(vmull_s16(*v124.i8, *v134.i8), *v118.i8, *v133.i8);
  v142 = vmlsl_high_s16(vmull_high_s16(v124, v134), v118, v133);
  v375 = vmlal_s16(vmull_s16(*v128.i8, *v134.i8), *v129.i8, *v133.i8);
  v373 = vmlal_high_s16(vmull_high_s16(v128, v134), v129, v133);
  v369 = vmlsl_high_s16(vmull_high_s16(v129, v134), v128, v133);
  v371 = vmlsl_s16(vmull_s16(*v129.i8, *v134.i8), *v128.i8, *v133.i8);
  v143 = vmlal_s16(vmull_s16(*v131.i8, *v134.i8), *v135.i8, *v133.i8);
  v144 = vmlal_high_s16(vmull_high_s16(v131, v134), v135, v133);
  v145 = vmlsl_s16(vmull_s16(*v135.i8, *v134.i8), *v131.i8, *v133.i8);
  v146 = vmlsl_high_s16(vmull_high_s16(v135, v134), v131, v133);
  v147 = vdupq_n_s16(0xC4DFu);
  v359 = vmlal_s16(vmull_s16(*v117.i8, *v147.i8), *v123.i8, *v134.i8);
  v357 = vmlal_high_s16(vmull_high_s16(v117, v147), v123, v134);
  v353 = vmlsl_high_s16(vmull_high_s16(v123, v147), v117, v134);
  v355 = vmlsl_s16(vmull_s16(*v123.i8, *v147.i8), *v117.i8, *v134.i8);
  v148 = vmlal_s16(vmull_s16(*v120.i8, *v147.i8), *v126.i8, *v134.i8);
  v149 = vmlal_high_s16(vmull_high_s16(v120, v147), v126, v134);
  v150 = vmlsl_s16(vmull_s16(*v126.i8, *v147.i8), *v120.i8, *v134.i8);
  v151 = vmlsl_high_s16(vmull_high_s16(v126, v147), v120, v134);
  v152 = vmlal_s16(vmull_s16(*v130.i8, *v147.i8), *v132.i8, *v134.i8);
  v153 = vmlal_high_s16(vmull_high_s16(v130, v147), v132, v134);
  v154 = vmlsl_s16(vmull_s16(*v132.i8, *v147.i8), *v130.i8, *v134.i8);
  v155 = vmlsl_high_s16(vmull_high_s16(v132, v147), v130, v134);
  v156 = vsubq_s16(v360, v362);
  v157 = vsubq_s16(v366, v364);
  v158 = vsubq_s16(vshrq_n_u16(v156, 0xFuLL), vmvnq_s8(v156));
  v159 = vuzp1q_s16(vrshrq_n_s32(v66, 0xEuLL), vrshrq_n_s32(v67, 0xEuLL));
  v160 = vuzp1q_s16(vrshrq_n_s32(v68, 0xEuLL), vrshrq_n_s32(v69, 0xEuLL));
  v161 = vsubq_s16(vshrq_n_u16(v159, 0xFuLL), vmvnq_s8(v159));
  v162 = vsubq_s16(vshrq_n_u16(v157, 0xFuLL), vmvnq_s8(v157));
  v163 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v160, 0xFuLL), vmvnq_s8(v160)), 2uLL);
  v164 = vsubq_s16(vshrq_n_s16(v158, 2uLL), v163);
  v165 = vsraq_n_s16(v163, v158, 2uLL);
  v166 = vshrq_n_s16(v161, 2uLL);
  v167 = vsubq_s16(vshrq_n_s16(v162, 2uLL), v166);
  v168 = vsraq_n_s16(v166, v162, 2uLL);
  v169 = vuzp1q_s16(vrshrq_n_s32(v89, 0xEuLL), vrshrq_n_s32(v90, 0xEuLL));
  v170 = vuzp1q_s16(vrshrq_n_s32(v91, 0xEuLL), vrshrq_n_s32(v92, 0xEuLL));
  v171 = vqrshrn_high_n_s32(vqrshrn_n_s32(v136, 0xEuLL), v137, 0xEuLL);
  v172 = vqrshrn_high_n_s32(vqrshrn_n_s32(v138, 0xEuLL), v139, 0xEuLL);
  v173 = vaddq_s16(v342, v170);
  v174 = vaddq_s16(v340, v169);
  v175 = vdupq_n_s16(0x3EC5u);
  v176 = vdupq_n_s16(0xC7Cu);
  v363 = vmlal_s16(vmull_s16(*v173.i8, *v176.i8), *v174.i8, *v175.i8);
  v361 = vmlal_high_s16(vmull_high_s16(v173, v176), v174, v175);
  v365 = vmlsl_high_s16(vmull_high_s16(v174, v176), v173, v175);
  v367 = vmlsl_s16(vmull_s16(*v174.i8, *v176.i8), *v173.i8, *v175.i8);
  v177 = vaddq_s16(v172, v165);
  v178 = vaddq_s16(v171, v168);
  v179 = vmlal_s16(vmull_s16(*v177.i8, *v176.i8), *v178.i8, *v175.i8);
  v180 = vmlal_high_s16(vmull_high_s16(v177, v176), v178, v175);
  v181 = vmlsl_s16(vmull_s16(*v178.i8, *v176.i8), *v177.i8, *v175.i8);
  v182 = vmlsl_high_s16(vmull_high_s16(v178, v176), v177, v175);
  v183 = vsubq_s16(v165, v172);
  v184 = vsubq_s16(v168, v171);
  v185 = vdupq_n_s16(0xC13Bu);
  v186 = vmlal_s16(vmull_s16(*v183.i8, *v185.i8), *v184.i8, *v176.i8);
  v187 = vmull_s16(*v184.i8, *v185.i8);
  v188 = vmull_high_s16(v184, v185);
  v189 = vmlal_high_s16(vmull_high_s16(v183, v185), v184, v176);
  v190 = vmlsl_s16(v187, *v183.i8, *v176.i8);
  v191 = vmlsl_high_s16(v188, v183, v176);
  v192 = vqrshrn_high_n_s32(vqrshrn_n_s32(v148, 0xEuLL), v149, 0xEuLL);
  v193 = vqrshrn_high_n_s32(vqrshrn_n_s32(v150, 0xEuLL), v151, 0xEuLL);
  v194 = vsubq_s16(v342, v170);
  v195 = vsubq_s16(v340, v169);
  v196 = vdupq_n_s16(0x238Eu);
  v197 = vdupq_n_s16(0x3537u);
  v343 = vmlal_s16(vmull_s16(*v194.i8, *v197.i8), *v195.i8, *v196.i8);
  v341 = vmlal_high_s16(vmull_high_s16(v194, v197), v195, v196);
  v338 = vmlsl_high_s16(vmull_high_s16(v195, v197), v194, v196);
  v339 = vmlsl_s16(vmull_s16(*v195.i8, *v197.i8), *v194.i8, *v196.i8);
  v198 = vsubq_s16(v164, v193);
  v199 = vsubq_s16(v167, v192);
  v200 = vmlal_s16(vmull_s16(*v198.i8, *v197.i8), *v199.i8, *v196.i8);
  v201 = vmlal_high_s16(vmull_high_s16(v198, v197), v199, v196);
  v202 = vmlsl_s16(vmull_s16(*v199.i8, *v197.i8), *v198.i8, *v196.i8);
  v203 = vmlsl_high_s16(vmull_high_s16(v199, v197), v198, v196);
  v204 = vaddq_s16(v193, v164);
  v205 = vaddq_s16(v192, v167);
  v206 = vdupq_n_s16(0xDC72u);
  v333 = vmlal_s16(vmull_s16(*v204.i8, *v206.i8), *v205.i8, *v197.i8);
  v331 = vmlsl_s16(vmull_s16(*v205.i8, *v206.i8), *v204.i8, *v197.i8);
  v332 = vmlal_high_s16(vmull_high_s16(v204, v206), v205, v197);
  v330 = vmlsl_high_s16(vmull_high_s16(v205, v206), v204, v197);
  v207 = vsubq_s16(v376, v378);
  v208 = vsubq_s16(vshrq_n_u16(v207, 0xFuLL), vmvnq_s8(v207));
  v209 = vsubq_s16(v388, v390);
  v210 = vsubq_s16(vshrq_n_u16(v209, 0xFuLL), vmvnq_s8(v209));
  v211 = vuzp1q_s16(vrshrq_n_s32(v350, 0xEuLL), vrshrq_n_s32(v348, 0xEuLL));
  v212 = vuzp1q_s16(vrshrq_n_s32(v346, 0xEuLL), vrshrq_n_s32(v344, 0xEuLL));
  v213 = vsubq_s16(vshrq_n_s16(v208, 2uLL), v212);
  v214 = vsraq_n_s16(v212, v208, 2uLL);
  v215 = vsubq_s16(vshrq_n_s16(v210, 2uLL), v211);
  v216 = vsraq_n_s16(v211, v210, 2uLL);
  v217 = vqrshrn_high_n_s32(vqrshrn_n_s32(v143, 0xEuLL), v144, 0xEuLL);
  v218 = vqrshrn_high_n_s32(vqrshrn_n_s32(v145, 0xEuLL), v146, 0xEuLL);
  v219 = vaddq_s16(v218, v214);
  v220 = vaddq_s16(v217, v216);
  v221 = vdupq_n_s16(0x3FB1u);
  v222 = vdupq_n_s16(0x646u);
  v391 = vmlal_s16(vmull_s16(*v219.i8, *v222.i8), *v220.i8, *v221.i8);
  v389 = vmlal_high_s16(vmull_high_s16(v219, v222), v220, v221);
  v349 = vmlsl_high_s16(vmull_high_s16(v220, v222), v219, v221);
  v351 = vmlsl_s16(vmull_s16(*v220.i8, *v222.i8), *v219.i8, *v221.i8);
  v223 = vsubq_s16(v214, v218);
  v224 = vsubq_s16(v216, v217);
  v225 = vdupq_n_s16(0x289Au);
  v226 = vdupq_n_s16(0x3179u);
  v379 = vmlal_s16(vmull_s16(*v223.i8, *v226.i8), *v224.i8, *v225.i8);
  v377 = vmlal_high_s16(vmull_high_s16(v223, v226), v224, v225);
  v334 = vmlsl_high_s16(vmull_high_s16(v224, v226), v223, v225);
  v335 = vmlsl_s16(vmull_s16(*v224.i8, *v226.i8), *v223.i8, *v225.i8);
  v227 = vqrshrn_high_n_s32(vqrshrn_n_s32(v152, 0xEuLL), v153, 0xEuLL);
  v228 = vqrshrn_high_n_s32(vqrshrn_n_s32(v154, 0xEuLL), v155, 0xEuLL);
  v229 = vsubq_s16(v213, v228);
  v230 = vsubq_s16(v215, v227);
  v231 = vdupq_n_s16(0x3871u);
  v232 = vdupq_n_s16(0x1E2Bu);
  v347 = vmlal_s16(vmull_s16(*v229.i8, *v232.i8), *v230.i8, *v231.i8);
  v345 = vmlal_high_s16(vmull_high_s16(v229, v232), v230, v231);
  v328 = vmlsl_high_s16(vmull_high_s16(v230, v232), v229, v231);
  v329 = vmlsl_s16(vmull_s16(*v230.i8, *v232.i8), *v229.i8, *v231.i8);
  v233 = vaddq_s16(v228, v213);
  v234 = vaddq_s16(v227, v215);
  v235 = vdupq_n_s16(0x1294u);
  v236 = vdupq_n_s16(0x3D3Fu);
  v327 = vmlal_s16(vmull_s16(*v233.i8, *v236.i8), *v234.i8, *v235.i8);
  v325 = vmlsl_s16(vmull_s16(*v234.i8, *v236.i8), *v233.i8, *v235.i8);
  v326 = vmlal_high_s16(vmull_high_s16(v233, v236), v234, v235);
  v324 = vmlsl_high_s16(vmull_high_s16(v234, v236), v233, v235);
  v237 = vsubq_s16(v396, v398);
  v238 = vsubq_s16(*a1, v401);
  v239 = vsubq_s16(vshrq_n_u16(v237, 0xFuLL), vmvnq_s8(v237));
  v240 = vuzp1q_s16(vrshrq_n_s32(v386, 0xEuLL), vrshrq_n_s32(v384, 0xEuLL));
  v241 = vuzp1q_s16(vrshrq_n_s32(v382, 0xEuLL), vrshrq_n_s32(v380, 0xEuLL));
  v242 = vsubq_s16(vshrq_n_u16(v240, 0xFuLL), vmvnq_s8(v240));
  v243 = vsubq_s16(vshrq_n_u16(v238, 0xFuLL), vmvnq_s8(v238));
  v244 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v241, 0xFuLL), vmvnq_s8(v241)), 2uLL);
  v245 = vsubq_s16(vshrq_n_s16(v239, 2uLL), v244);
  v246 = vsraq_n_s16(v244, v239, 2uLL);
  v247 = vshrq_n_s16(v242, 2uLL);
  v248 = vsubq_s16(vshrq_n_s16(v243, 2uLL), v247);
  v249 = vsraq_n_s16(v247, v243, 2uLL);
  v250 = vqrshrn_high_n_s32(vqrshrn_n_s32(v140, 0xEuLL), v141, 0xEuLL);
  v251 = vqrshrn_high_n_s32(vqrshrn_n_s32(v336, 0xEuLL), v142, 0xEuLL);
  v252 = vqrshrn_high_n_s32(vqrshrn_n_s32(v179, 0xEuLL), v180, 0xEuLL);
  v253 = vqrshrn_high_n_s32(vqrshrn_n_s32(v181, 0xEuLL), v182, 0xEuLL);
  v254 = vaddq_s16(v251, v246);
  v255 = vaddq_s16(v250, v249);
  v256 = vaddq_s16(v253, v254);
  v257 = vaddq_s16(v252, v255);
  v258 = vdupq_n_s16(0x3FECu);
  v259 = vdupq_n_s16(0x324u);
  v402 = vmlal_s16(vmull_s16(*v256.i8, *v259.i8), *v257.i8, *v258.i8);
  v400 = vmlsl_s16(vmull_s16(*v257.i8, *v259.i8), *v256.i8, *v258.i8);
  v397 = vmlal_high_s16(vmull_high_s16(v256, v259), v257, v258);
  v399 = vmlsl_high_s16(vmull_high_s16(v257, v259), v256, v258);
  v260 = vsubq_s16(v254, v253);
  v261 = vsubq_s16(v255, v252);
  v262 = vdupq_n_s16(0x2AFBu);
  v263 = vdupq_n_s16(0x2F6Cu);
  v387 = vmlal_s16(vmull_s16(*v260.i8, *v263.i8), *v261.i8, *v262.i8);
  v385 = vmlsl_s16(vmull_s16(*v261.i8, *v263.i8), *v260.i8, *v262.i8);
  v381 = vmlal_high_s16(vmull_high_s16(v260, v263), v261, v262);
  v383 = vmlsl_high_s16(vmull_high_s16(v261, v263), v260, v262);
  v264 = vsubq_s16(v246, v251);
  v265 = vsubq_s16(v249, v250);
  v266 = vqrshrn_high_n_s32(vqrshrn_n_s32(v186, 0xEuLL), v189, 0xEuLL);
  v267 = vqrshrn_high_n_s32(vqrshrn_n_s32(v190, 0xEuLL), v191, 0xEuLL);
  v268 = vsubq_s16(v264, v267);
  v269 = vsubq_s16(v265, v266);
  v270 = vdupq_n_s16(0x39DBu);
  v271 = vdupq_n_s16(0x1B5Du);
  v272 = vmlal_s16(vmull_s16(*v268.i8, *v271.i8), *v269.i8, *v270.i8);
  v273 = vmlal_high_s16(vmull_high_s16(v268, v271), v269, v270);
  v337 = vmlsl_s16(vmull_s16(*v269.i8, *v271.i8), *v268.i8, *v270.i8);
  v323 = vmlsl_high_s16(vmull_high_s16(v269, v271), v268, v270);
  v274 = vaddq_s16(v267, v264);
  v275 = vaddq_s16(v266, v265);
  v276 = vdupq_n_s16(0x1590u);
  v277 = vdupq_n_s16(0x3C42u);
  v278 = vmlal_s16(vmull_s16(*v274.i8, *v277.i8), *v275.i8, *v276.i8);
  v279 = vmlal_high_s16(vmull_high_s16(v274, v277), v275, v276);
  v280 = vmlsl_s16(vmull_s16(*v275.i8, *v277.i8), *v274.i8, *v276.i8);
  v281 = vmlsl_high_s16(vmull_high_s16(v275, v277), v274, v276);
  v282 = vqrshrn_high_n_s32(vqrshrn_n_s32(v359, 0xEuLL), v357, 0xEuLL);
  v283 = vqrshrn_high_n_s32(vqrshrn_n_s32(v355, 0xEuLL), v353, 0xEuLL);
  v284 = vqrshrn_high_n_s32(vqrshrn_n_s32(v200, 0xEuLL), v201, 0xEuLL);
  v285 = vqrshrn_high_n_s32(vqrshrn_n_s32(v202, 0xEuLL), v203, 0xEuLL);
  v286 = vsubq_s16(v245, v283);
  v287 = vsubq_s16(v248, v282);
  v288 = vaddq_s16(v285, v286);
  v289 = vaddq_s16(v284, v287);
  v290 = vdupq_n_s16(0x3E15u);
  v291 = vdupq_n_s16(0xF8Du);
  v292 = vmlal_s16(vmull_s16(*v288.i8, *v291.i8), *v289.i8, *v290.i8);
  v293 = vmlal_high_s16(vmull_high_s16(v288, v291), v289, v290);
  v294 = vmlsl_s16(vmull_s16(*v289.i8, *v291.i8), *v288.i8, *v290.i8);
  v295 = vmlsl_high_s16(vmull_high_s16(v289, v291), v288, v290);
  v296 = vsubq_s16(v286, v285);
  v297 = vsubq_s16(v287, v284);
  v298 = vdupq_n_s16(0x20E7u);
  v299 = vdupq_n_s16(0x36E5u);
  v300 = vmlal_s16(vmull_s16(*v296.i8, *v299.i8), *v297.i8, *v298.i8);
  v301 = vmlal_high_s16(vmull_high_s16(v296, v299), v297, v298);
  v302 = vmlsl_s16(vmull_s16(*v297.i8, *v299.i8), *v296.i8, *v298.i8);
  v303 = vmlsl_high_s16(vmull_high_s16(v297, v299), v296, v298);
  v304 = vaddq_s16(v283, v245);
  v305 = vaddq_s16(v282, v248);
  v306 = vqrshrn_high_n_s32(vqrshrn_n_s32(v333, 0xEuLL), v332, 0xEuLL);
  v307 = vqrshrn_high_n_s32(vqrshrn_n_s32(v331, 0xEuLL), v330, 0xEuLL);
  v308 = vsubq_s16(v304, v307);
  v309 = vsubq_s16(v305, v306);
  v310 = vdupq_n_s16(0x3368u);
  v311 = vdupq_n_s16(0x2620u);
  v312 = vmlal_s16(vmull_s16(*v308.i8, *v311.i8), *v309.i8, *v310.i8);
  v313 = vmlal_high_s16(vmull_high_s16(v308, v311), v309, v310);
  v314 = vmlsl_s16(vmull_s16(*v309.i8, *v311.i8), *v308.i8, *v310.i8);
  v315 = vmlsl_high_s16(vmull_high_s16(v309, v311), v308, v310);
  v316 = vaddq_s16(v307, v304);
  v317 = vaddq_s16(v306, v305);
  v318 = vdupq_n_s16(0x964u);
  v319 = vdupq_n_s16(0x3F4Fu);
  v320 = vmlsl_s16(vmull_s16(*v317.i8, *v319.i8), *v316.i8, *v318.i8);
  v321 = vmlsl_high_s16(vmull_high_s16(v317, v319), v316, v318);
  *a2 = vuzp1q_s16(vrshrq_n_s32(v395, 0xEuLL), vrshrq_n_s32(v394, 0xEuLL));
  a2[1] = vqrshrn_high_n_s32(vqrshrn_n_s32(v402, 0xEuLL), v397, 0xEuLL);
  a2[30] = vqrshrn_high_n_s32(vqrshrn_n_s32(v351, 0xEuLL), v349, 0xEuLL);
  a2[31] = vqrshrn_high_n_s32(vqrshrn_n_s32(v400, 0xEuLL), v399, 0xEuLL);
  a2[16] = vuzp1q_s16(vrshrq_n_s32(v393, 0xEuLL), vrshrq_n_s32(v392, 0xEuLL));
  a2[17] = vqrshrn_high_n_s32(vqrshrn_n_s32(v387, 0xEuLL), v381, 0xEuLL);
  a2[14] = vqrshrn_high_n_s32(vqrshrn_n_s32(v335, 0xEuLL), v334, 0xEuLL);
  a2[15] = vqrshrn_high_n_s32(vqrshrn_n_s32(v385, 0xEuLL), v383, 0xEuLL);
  a2[8] = vqrshrn_high_n_s32(vqrshrn_n_s32(v375, 0xEuLL), v373, 0xEuLL);
  a2[9] = vqrshrn_high_n_s32(vqrshrn_n_s32(v272, 0xEuLL), v273, 0xEuLL);
  a2[22] = vqrshrn_high_n_s32(vqrshrn_n_s32(v329, 0xEuLL), v328, 0xEuLL);
  a2[23] = vqrshrn_high_n_s32(vqrshrn_n_s32(v337, 0xEuLL), v323, 0xEuLL);
  a2[24] = vqrshrn_high_n_s32(vqrshrn_n_s32(v371, 0xEuLL), v369, 0xEuLL);
  a2[25] = vqrshrn_high_n_s32(vqrshrn_n_s32(v278, 0xEuLL), v279, 0xEuLL);
  a2[6] = vqrshrn_high_n_s32(vqrshrn_n_s32(v325, 0xEuLL), v324, 0xEuLL);
  a2[7] = vqrshrn_high_n_s32(vqrshrn_n_s32(v280, 0xEuLL), v281, 0xEuLL);
  a2[4] = vqrshrn_high_n_s32(vqrshrn_n_s32(v363, 0xEuLL), v361, 0xEuLL);
  a2[5] = vqrshrn_high_n_s32(vqrshrn_n_s32(v292, 0xEuLL), v293, 0xEuLL);
  a2[26] = vqrshrn_high_n_s32(vqrshrn_n_s32(v327, 0xEuLL), v326, 0xEuLL);
  a2[27] = vqrshrn_high_n_s32(vqrshrn_n_s32(v294, 0xEuLL), v295, 0xEuLL);
  a2[20] = vqrshrn_high_n_s32(vqrshrn_n_s32(v343, 0xEuLL), v341, 0xEuLL);
  a2[21] = vqrshrn_high_n_s32(vqrshrn_n_s32(v300, 0xEuLL), v301, 0xEuLL);
  a2[10] = vqrshrn_high_n_s32(vqrshrn_n_s32(v347, 0xEuLL), v345, 0xEuLL);
  a2[11] = vqrshrn_high_n_s32(vqrshrn_n_s32(v302, 0xEuLL), v303, 0xEuLL);
  a2[12] = vqrshrn_high_n_s32(vqrshrn_n_s32(v339, 0xEuLL), v338, 0xEuLL);
  a2[13] = vqrshrn_high_n_s32(vqrshrn_n_s32(v312, 0xEuLL), v313, 0xEuLL);
  a2[18] = vqrshrn_high_n_s32(vqrshrn_n_s32(v379, 0xEuLL), v377, 0xEuLL);
  a2[19] = vqrshrn_high_n_s32(vqrshrn_n_s32(v314, 0xEuLL), v315, 0xEuLL);
  a2[28] = vqrshrn_high_n_s32(vqrshrn_n_s32(v367, 0xEuLL), v365, 0xEuLL);
  a2[29] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v316.i8, *v319.i8), *v317.i8, *v318.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v316, v319), v317, v318), 0xEuLL);
  result = vqrshrn_high_n_s32(vqrshrn_n_s32(v391, 0xEuLL), v389, 0xEuLL);
  a2[2] = result;
  a2[3] = vqrshrn_high_n_s32(vqrshrn_n_s32(v320, 0xEuLL), v321, 0xEuLL);
  return result;
}

void vpx_highbd_fdct32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v990 = *MEMORY[0x277D85DE8];
  v8 = 62 * v7;
  v556 = *(v3 + 2 * v7);
  v9 = 32 * v7;
  v572 = 60 * v7;
  v595 = 30 * v7;
  v557 = *(v3 + v572);
  v558 = *(v3 + v8);
  v10 = 4 * v7;
  v627 = 58 * v7;
  v544 = *(v3 + v10);
  v546 = *(v3 + v627);
  v623 = 6 * v7;
  v565 = v10;
  v461 = v9;
  v619 = 2 * (v9 - v10);
  v539 = *(v3 + v623);
  v542 = *(v3 + v619);
  v11 = 8 * v7;
  v602 = 54 * v7;
  v535 = *(v3 + v11);
  v537 = *(v3 + v602);
  v616 = 10 * v7;
  v569 = 52 * v7;
  v587 = 26 * v7;
  v530 = *(v3 + v616);
  v532 = *(v3 + v569);
  v599 = 12 * v7;
  v12 = *(v3 + v599);
  v597 = 50 * v7;
  v528 = *(v3 + v597);
  v13 = v7;
  v644 = 14 * v7;
  v14 = 2 * v7;
  v15 = *(v3 + v644);
  v641 = 3 * v7;
  v16 = v3[v641];
  v17 = v3[v13];
  v575 = 46 * v7;
  v18 = *(v3 + v575);
  v638 = 18 * v7;
  v19 = *(v3 + v638);
  v561 = *v3;
  v552 = vaddq_s16(v557, v556);
  v554 = vaddq_s16(v558, *v3);
  v958 = vshll_n_s16(*v554.i8, 2uLL);
  v959 = vshll_n_s16(*v552.i8, 2uLL);
  v550 = vaddq_s16(v542, v539);
  v551 = vaddq_s16(v546, v544);
  v960 = vshll_n_s16(*v551.i8, 2uLL);
  v961 = vshll_n_s16(*v550.i8, 2uLL);
  v20 = vaddq_s16(v537, v535);
  v548 = vaddq_s16(v532, v530);
  v962 = vshll_n_s16(*v20.i8, 2uLL);
  v963 = vshll_n_s16(*v548.i8, 2uLL);
  v21 = vaddq_s16(v528, v12);
  v22 = vaddq_s16(v16, v15);
  v964 = vshll_n_s16(*v21.i8, 2uLL);
  v965 = vshll_n_s16(*v22.i8, 2uLL);
  v23 = 22 * v7;
  v613 = 44 * v7;
  v24 = *(v3 + v613);
  v25 = vaddq_s16(v18, v17);
  v26 = vaddq_s16(v24, v19);
  v966 = vshll_n_s16(*v25.i8, 2uLL);
  v635 = 20 * v7;
  v27 = *(v3 + v635);
  v632 = 42 * v7;
  v28 = *(v3 + v632);
  v967 = vshll_n_s16(*v26.i8, 2uLL);
  v29 = *(v3 + v23);
  v30 = *(v3 + 40 * v7);
  v31 = 40 * v7;
  v32 = vaddq_s16(v28, v27);
  v33 = vaddq_s16(v30, v29);
  v968 = vshll_n_s16(*v32.i8, 2uLL);
  v969 = vshll_n_s16(*v33.i8, 2uLL);
  v581 = 38 * v7;
  v584 = 36 * v7;
  v34 = *(v3 + 24 * v7);
  v35 = 24 * v7;
  v36 = *(v3 + v581);
  v37 = *(v3 + v587);
  v38 = *(v3 + v584);
  v39 = vaddq_s16(v36, v34);
  v40 = vaddq_s16(v38, v37);
  v970 = vshll_n_s16(*v39.i8, 2uLL);
  v971 = vshll_n_s16(*v40.i8, 2uLL);
  v578 = 34 * v7;
  v41 = *(v3 + v9 - v10);
  v42 = v9 - v10;
  v605 = v9 - v10;
  v43 = *(v3 + v578);
  v44 = *(v3 + v595);
  v45 = v3[v9 / 0x10];
  v46 = vaddq_s16(v43, v41);
  v47 = vaddq_s16(v45, v44);
  v972 = vshll_n_s16(*v46.i8, 2uLL);
  v973 = vshll_n_s16(*v47.i8, 2uLL);
  v48 = vsubq_s16(v44, v45);
  v49 = vsubq_s16(v41, v43);
  v974 = vshll_n_s16(*v48.i8, 2uLL);
  v975 = vshll_n_s16(*v49.i8, 2uLL);
  v50 = vsubq_s16(v37, v38);
  v51 = vsubq_s16(v34, v36);
  v976 = vshll_n_s16(*v50.i8, 2uLL);
  v977 = vshll_n_s16(*v51.i8, 2uLL);
  v52 = vsubq_s16(v29, v30);
  v53 = vsubq_s16(v27, v28);
  v978 = vshll_n_s16(*v52.i8, 2uLL);
  v979 = vshll_n_s16(*v53.i8, 2uLL);
  v54 = vsubq_s16(v19, v24);
  v55 = vsubq_s16(v17, v18);
  v980 = vshll_n_s16(*v54.i8, 2uLL);
  v981 = vshll_n_s16(*v55.i8, 2uLL);
  v56 = vsubq_s16(v15, v16);
  v57 = vsubq_s16(v12, v528);
  v982 = vshll_n_s16(*v56.i8, 2uLL);
  v983 = vshll_n_s16(*v57.i8, 2uLL);
  v58 = vsubq_s16(v530, v532);
  v59 = vsubq_s16(v535, v537);
  v984 = vshll_n_s16(*v58.i8, 2uLL);
  v985 = vshll_n_s16(*v59.i8, 2uLL);
  v60 = vsubq_s16(v539, v542);
  v61 = vsubq_s16(v544, v546);
  v986 = vshll_n_s16(*v60.i8, 2uLL);
  v987 = vshll_n_s16(*v61.i8, 2uLL);
  v62 = vsubq_s16(v556, v557);
  v63 = vsubq_s16(v561, v558);
  v988 = vshll_n_s16(*v62.i8, 2uLL);
  v989 = vshll_n_s16(*v63.i8, 2uLL);
  v830 = vshll_high_n_s16(v554, 2uLL);
  v831 = vshll_high_n_s16(v552, 2uLL);
  v832 = vshll_high_n_s16(v551, 2uLL);
  v833 = vshll_high_n_s16(v550, 2uLL);
  v834 = vshll_high_n_s16(v20, 2uLL);
  v835 = vshll_high_n_s16(v548, 2uLL);
  v836 = vshll_high_n_s16(v21, 2uLL);
  v837 = vshll_high_n_s16(v22, 2uLL);
  v838 = vshll_high_n_s16(v25, 2uLL);
  v839 = vshll_high_n_s16(v26, 2uLL);
  v840 = vshll_high_n_s16(v32, 2uLL);
  v841 = vshll_high_n_s16(v33, 2uLL);
  v842 = vshll_high_n_s16(v39, 2uLL);
  v843 = vshll_high_n_s16(v40, 2uLL);
  v844 = vshll_high_n_s16(v46, 2uLL);
  v845 = vshll_high_n_s16(v47, 2uLL);
  v846 = vshll_high_n_s16(v48, 2uLL);
  v847 = vshll_high_n_s16(v49, 2uLL);
  v848 = vshll_high_n_s16(v50, 2uLL);
  v849 = vshll_high_n_s16(v51, 2uLL);
  v850 = vshll_high_n_s16(v52, 2uLL);
  v851 = vshll_high_n_s16(v53, 2uLL);
  v852 = vshll_high_n_s16(v54, 2uLL);
  v853 = vshll_high_n_s16(v55, 2uLL);
  v854 = vshll_high_n_s16(v56, 2uLL);
  v855 = vshll_high_n_s16(v57, 2uLL);
  v856 = vshll_high_n_s16(v58, 2uLL);
  v857 = vshll_high_n_s16(v59, 2uLL);
  v858 = vshll_high_n_s16(v60, 2uLL);
  v859 = vshll_high_n_s16(v61, 2uLL);
  v860 = vshll_high_n_s16(v62, 2uLL);
  v861 = vshll_high_n_s16(v63, 2uLL);
  highbd_dct8x32_body_first_pass(&v958, &v830);
  v958 = vrshrq_n_s32(vsraq_n_s32(v958, v958, 0x1FuLL), 2uLL);
  v959 = vrshrq_n_s32(vsraq_n_s32(v959, v959, 0x1FuLL), 2uLL);
  v960 = vrshrq_n_s32(vsraq_n_s32(v960, v960, 0x1FuLL), 2uLL);
  v961 = vrshrq_n_s32(vsraq_n_s32(v961, v961, 0x1FuLL), 2uLL);
  v962 = vrshrq_n_s32(vsraq_n_s32(v962, v962, 0x1FuLL), 2uLL);
  v963 = vrshrq_n_s32(vsraq_n_s32(v963, v963, 0x1FuLL), 2uLL);
  v964 = vrshrq_n_s32(vsraq_n_s32(v964, v964, 0x1FuLL), 2uLL);
  v965 = vrshrq_n_s32(vsraq_n_s32(v965, v965, 0x1FuLL), 2uLL);
  v966 = vrshrq_n_s32(vsraq_n_s32(v966, v966, 0x1FuLL), 2uLL);
  v967 = vrshrq_n_s32(vsraq_n_s32(v967, v967, 0x1FuLL), 2uLL);
  v968 = vrshrq_n_s32(vsraq_n_s32(v968, v968, 0x1FuLL), 2uLL);
  v969 = vrshrq_n_s32(vsraq_n_s32(v969, v969, 0x1FuLL), 2uLL);
  v970 = vrshrq_n_s32(vsraq_n_s32(v970, v970, 0x1FuLL), 2uLL);
  v971 = vrshrq_n_s32(vsraq_n_s32(v971, v971, 0x1FuLL), 2uLL);
  v972 = vrshrq_n_s32(vsraq_n_s32(v972, v972, 0x1FuLL), 2uLL);
  v973 = vrshrq_n_s32(vsraq_n_s32(v973, v973, 0x1FuLL), 2uLL);
  v974 = vrshrq_n_s32(vsraq_n_s32(v974, v974, 0x1FuLL), 2uLL);
  v975 = vrshrq_n_s32(vsraq_n_s32(v975, v975, 0x1FuLL), 2uLL);
  v976 = vrshrq_n_s32(vsraq_n_s32(v976, v976, 0x1FuLL), 2uLL);
  v977 = vrshrq_n_s32(vsraq_n_s32(v977, v977, 0x1FuLL), 2uLL);
  v978 = vrshrq_n_s32(vsraq_n_s32(v978, v978, 0x1FuLL), 2uLL);
  v979 = vrshrq_n_s32(vsraq_n_s32(v979, v979, 0x1FuLL), 2uLL);
  v980 = vrshrq_n_s32(vsraq_n_s32(v980, v980, 0x1FuLL), 2uLL);
  v981 = vrshrq_n_s32(vsraq_n_s32(v981, v981, 0x1FuLL), 2uLL);
  v982 = vrshrq_n_s32(vsraq_n_s32(v982, v982, 0x1FuLL), 2uLL);
  v983 = vrshrq_n_s32(vsraq_n_s32(v983, v983, 0x1FuLL), 2uLL);
  v984 = vrshrq_n_s32(vsraq_n_s32(v984, v984, 0x1FuLL), 2uLL);
  v985 = vrshrq_n_s32(vsraq_n_s32(v985, v985, 0x1FuLL), 2uLL);
  v986 = vrshrq_n_s32(vsraq_n_s32(v986, v986, 0x1FuLL), 2uLL);
  v987 = vrshrq_n_s32(vsraq_n_s32(v987, v987, 0x1FuLL), 2uLL);
  v988 = vrshrq_n_s32(vsraq_n_s32(v988, v988, 0x1FuLL), 2uLL);
  v989 = vrshrq_n_s32(vsraq_n_s32(v989, v989, 0x1FuLL), 2uLL);
  v830 = vrshrq_n_s32(vsraq_n_s32(v830, v830, 0x1FuLL), 2uLL);
  v831 = vrshrq_n_s32(vsraq_n_s32(v831, v831, 0x1FuLL), 2uLL);
  v832 = vrshrq_n_s32(vsraq_n_s32(v832, v832, 0x1FuLL), 2uLL);
  v833 = vrshrq_n_s32(vsraq_n_s32(v833, v833, 0x1FuLL), 2uLL);
  v834 = vrshrq_n_s32(vsraq_n_s32(v834, v834, 0x1FuLL), 2uLL);
  v835 = vrshrq_n_s32(vsraq_n_s32(v835, v835, 0x1FuLL), 2uLL);
  v836 = vrshrq_n_s32(vsraq_n_s32(v836, v836, 0x1FuLL), 2uLL);
  v837 = vrshrq_n_s32(vsraq_n_s32(v837, v837, 0x1FuLL), 2uLL);
  v838 = vrshrq_n_s32(vsraq_n_s32(v838, v838, 0x1FuLL), 2uLL);
  v839 = vrshrq_n_s32(vsraq_n_s32(v839, v839, 0x1FuLL), 2uLL);
  v840 = vrshrq_n_s32(vsraq_n_s32(v840, v840, 0x1FuLL), 2uLL);
  v841 = vrshrq_n_s32(vsraq_n_s32(v841, v841, 0x1FuLL), 2uLL);
  v842 = vrshrq_n_s32(vsraq_n_s32(v842, v842, 0x1FuLL), 2uLL);
  v843 = vrshrq_n_s32(vsraq_n_s32(v843, v843, 0x1FuLL), 2uLL);
  v844 = vrshrq_n_s32(vsraq_n_s32(v844, v844, 0x1FuLL), 2uLL);
  v845 = vrshrq_n_s32(vsraq_n_s32(v845, v845, 0x1FuLL), 2uLL);
  v846 = vrshrq_n_s32(vsraq_n_s32(v846, v846, 0x1FuLL), 2uLL);
  v847 = vrshrq_n_s32(vsraq_n_s32(v847, v847, 0x1FuLL), 2uLL);
  v848 = vrshrq_n_s32(vsraq_n_s32(v848, v848, 0x1FuLL), 2uLL);
  v849 = vrshrq_n_s32(vsraq_n_s32(v849, v849, 0x1FuLL), 2uLL);
  v850 = vrshrq_n_s32(vsraq_n_s32(v850, v850, 0x1FuLL), 2uLL);
  v851 = vrshrq_n_s32(vsraq_n_s32(v851, v851, 0x1FuLL), 2uLL);
  v852 = vrshrq_n_s32(vsraq_n_s32(v852, v852, 0x1FuLL), 2uLL);
  v853 = vrshrq_n_s32(vsraq_n_s32(v853, v853, 0x1FuLL), 2uLL);
  v854 = vrshrq_n_s32(vsraq_n_s32(v854, v854, 0x1FuLL), 2uLL);
  v855 = vrshrq_n_s32(vsraq_n_s32(v855, v855, 0x1FuLL), 2uLL);
  v856 = vrshrq_n_s32(vsraq_n_s32(v856, v856, 0x1FuLL), 2uLL);
  v857 = vrshrq_n_s32(vsraq_n_s32(v857, v857, 0x1FuLL), 2uLL);
  v858 = vrshrq_n_s32(vsraq_n_s32(v858, v858, 0x1FuLL), 2uLL);
  v859 = vrshrq_n_s32(vsraq_n_s32(v859, v859, 0x1FuLL), 2uLL);
  v860 = vrshrq_n_s32(vsraq_n_s32(v860, v860, 0x1FuLL), 2uLL);
  v861 = vrshrq_n_s32(vsraq_n_s32(v861, v861, 0x1FuLL), 2uLL);
  v64 = v6[1];
  v65 = *(v6 + v8 + 16);
  v66 = *(v6 + v14 + 16);
  v67 = vaddq_s16(v65, v64);
  v68 = *(v6 + v572 + 16);
  v69 = vaddq_s16(v68, v66);
  v70 = *(v6 + v565 + 16);
  v71 = *(v6 + v627 + 16);
  v72 = *(v6 + v623 + 16);
  v73 = *(v6 + v619 + 16);
  v533 = vaddq_s16(v71, v70);
  v74 = vaddq_s16(v73, v72);
  v75 = *(v6 + v11 + 16);
  v76 = *(v6 + v602 + 16);
  v77 = vaddq_s16(v76, v75);
  v78 = *(v6 + v616 + 16);
  v79 = *(v6 + v569 + 16);
  v80 = vaddq_s16(v79, v78);
  v81 = *(v6 + v599 + 16);
  v82 = *(v6 + v597 + 16);
  v83 = *(v6 + v644 + 16);
  v84 = vaddq_s16(v82, v81);
  v85 = v6[v641 + 1];
  v86 = vaddq_s16(v85, v83);
  v87 = vsubq_s16(v83, v85);
  v88 = vsubq_s16(v81, v82);
  v89 = vsubq_s16(v78, v79);
  v90 = vsubq_s16(v75, v76);
  v91 = vsubq_s16(v72, v73);
  v92 = vsubq_s16(v70, v71);
  v559 = vsubq_s16(v64, v65);
  v562 = vsubq_s16(v66, v68);
  v93 = v6[v13 + 1];
  v94 = *(v6 + v638 + 16);
  v95 = *(v6 + v613 + 16);
  v96 = *(v6 + v635 + 16);
  v97 = *(v6 + v632 + 16);
  v98 = *(v6 + v23 + 16);
  v99 = *(v6 + v31 + 16);
  v100 = *(v6 + v35 + 16);
  v101 = *(v6 + v581 + 16);
  v102 = *(v6 + v587 + 16);
  v103 = *(v6 + v584 + 16);
  v104 = *(v6 + v42 + 16);
  v105 = *(v6 + v578 + 16);
  v106 = *(v6 + v595 + 16);
  v107 = *(v6 + v461 + 16);
  v108 = vaddq_s16(v107, v106);
  v109 = vsubq_s16(v106, v107);
  v110 = vaddq_s16(v105, v104);
  v111 = vsubq_s16(v104, v105);
  v112 = vaddq_s16(v103, v102);
  v113 = vsubq_s16(v102, v103);
  v114 = vaddq_s16(v101, v100);
  v115 = vsubq_s16(v100, v101);
  v116 = vaddq_s16(v99, v98);
  v117 = vsubq_s16(v98, v99);
  v118 = vaddq_s16(v97, v96);
  v119 = vsubq_s16(v96, v97);
  v120 = vaddq_s16(v95, v94);
  v121 = vsubq_s16(v94, v95);
  v122 = *(v6 + v575 + 16);
  v123 = vaddq_s16(v122, v93);
  v124 = vsubq_s16(v93, v122);
  v926 = vshll_n_s16(*v67.i8, 2uLL);
  v927 = vshll_n_s16(*v69.i8, 2uLL);
  v928 = vshll_n_s16(*v533.i8, 2uLL);
  v929 = vshll_n_s16(*v74.i8, 2uLL);
  v930 = vshll_n_s16(*v77.i8, 2uLL);
  v931 = vshll_n_s16(*v80.i8, 2uLL);
  v932 = vshll_n_s16(*v84.i8, 2uLL);
  v933 = vshll_n_s16(*v86.i8, 2uLL);
  v934 = vshll_n_s16(*v123.i8, 2uLL);
  v935 = vshll_n_s16(*v120.i8, 2uLL);
  v936 = vshll_n_s16(*v118.i8, 2uLL);
  v937 = vshll_n_s16(*v116.i8, 2uLL);
  v938 = vshll_n_s16(*v114.i8, 2uLL);
  v939 = vshll_n_s16(*v112.i8, 2uLL);
  v940 = vshll_n_s16(*v110.i8, 2uLL);
  v941 = vshll_n_s16(*v108.i8, 2uLL);
  v942 = vshll_n_s16(*v109.i8, 2uLL);
  v943 = vshll_n_s16(*v111.i8, 2uLL);
  v944 = vshll_n_s16(*v113.i8, 2uLL);
  v945 = vshll_n_s16(*v115.i8, 2uLL);
  v946 = vshll_n_s16(*v117.i8, 2uLL);
  v947 = vshll_n_s16(*v119.i8, 2uLL);
  v948 = vshll_n_s16(*v121.i8, 2uLL);
  v949 = vshll_n_s16(*v124.i8, 2uLL);
  v950 = vshll_n_s16(*v87.i8, 2uLL);
  v951 = vshll_n_s16(*v88.i8, 2uLL);
  v952 = vshll_n_s16(*v89.i8, 2uLL);
  v953 = vshll_n_s16(*v90.i8, 2uLL);
  v954 = vshll_n_s16(*v91.i8, 2uLL);
  v955 = vshll_n_s16(*v92.i8, 2uLL);
  v956 = vshll_n_s16(*v562.i8, 2uLL);
  v957 = vshll_n_s16(*v559.i8, 2uLL);
  v798 = vshll_high_n_s16(v67, 2uLL);
  v799 = vshll_high_n_s16(v69, 2uLL);
  v800 = vshll_high_n_s16(v533, 2uLL);
  v801 = vshll_high_n_s16(v74, 2uLL);
  v802 = vshll_high_n_s16(v77, 2uLL);
  v803 = vshll_high_n_s16(v80, 2uLL);
  v804 = vshll_high_n_s16(v84, 2uLL);
  v805 = vshll_high_n_s16(v86, 2uLL);
  v806 = vshll_high_n_s16(v123, 2uLL);
  v807 = vshll_high_n_s16(v120, 2uLL);
  v808 = vshll_high_n_s16(v118, 2uLL);
  v809 = vshll_high_n_s16(v116, 2uLL);
  v810 = vshll_high_n_s16(v114, 2uLL);
  v811 = vshll_high_n_s16(v112, 2uLL);
  v812 = vshll_high_n_s16(v110, 2uLL);
  v813 = vshll_high_n_s16(v108, 2uLL);
  v814 = vshll_high_n_s16(v109, 2uLL);
  v815 = vshll_high_n_s16(v111, 2uLL);
  v816 = vshll_high_n_s16(v113, 2uLL);
  v817 = vshll_high_n_s16(v115, 2uLL);
  v818 = vshll_high_n_s16(v117, 2uLL);
  v819 = vshll_high_n_s16(v119, 2uLL);
  v820 = vshll_high_n_s16(v121, 2uLL);
  v821 = vshll_high_n_s16(v124, 2uLL);
  v822 = vshll_high_n_s16(v87, 2uLL);
  v823 = vshll_high_n_s16(v88, 2uLL);
  v824 = vshll_high_n_s16(v89, 2uLL);
  v825 = vshll_high_n_s16(v90, 2uLL);
  v826 = vshll_high_n_s16(v91, 2uLL);
  v827 = vshll_high_n_s16(v92, 2uLL);
  v828 = vshll_high_n_s16(v562, 2uLL);
  v829 = vshll_high_n_s16(v559, 2uLL);
  highbd_dct8x32_body_first_pass(&v926, &v798);
  v926 = vrshrq_n_s32(vsraq_n_s32(v926, v926, 0x1FuLL), 2uLL);
  v927 = vrshrq_n_s32(vsraq_n_s32(v927, v927, 0x1FuLL), 2uLL);
  v928 = vrshrq_n_s32(vsraq_n_s32(v928, v928, 0x1FuLL), 2uLL);
  v929 = vrshrq_n_s32(vsraq_n_s32(v929, v929, 0x1FuLL), 2uLL);
  v930 = vrshrq_n_s32(vsraq_n_s32(v930, v930, 0x1FuLL), 2uLL);
  v931 = vrshrq_n_s32(vsraq_n_s32(v931, v931, 0x1FuLL), 2uLL);
  v932 = vrshrq_n_s32(vsraq_n_s32(v932, v932, 0x1FuLL), 2uLL);
  v933 = vrshrq_n_s32(vsraq_n_s32(v933, v933, 0x1FuLL), 2uLL);
  v934 = vrshrq_n_s32(vsraq_n_s32(v934, v934, 0x1FuLL), 2uLL);
  v935 = vrshrq_n_s32(vsraq_n_s32(v935, v935, 0x1FuLL), 2uLL);
  v936 = vrshrq_n_s32(vsraq_n_s32(v936, v936, 0x1FuLL), 2uLL);
  v937 = vrshrq_n_s32(vsraq_n_s32(v937, v937, 0x1FuLL), 2uLL);
  v938 = vrshrq_n_s32(vsraq_n_s32(v938, v938, 0x1FuLL), 2uLL);
  v939 = vrshrq_n_s32(vsraq_n_s32(v939, v939, 0x1FuLL), 2uLL);
  v940 = vrshrq_n_s32(vsraq_n_s32(v940, v940, 0x1FuLL), 2uLL);
  v941 = vrshrq_n_s32(vsraq_n_s32(v941, v941, 0x1FuLL), 2uLL);
  v942 = vrshrq_n_s32(vsraq_n_s32(v942, v942, 0x1FuLL), 2uLL);
  v943 = vrshrq_n_s32(vsraq_n_s32(v943, v943, 0x1FuLL), 2uLL);
  v944 = vrshrq_n_s32(vsraq_n_s32(v944, v944, 0x1FuLL), 2uLL);
  v945 = vrshrq_n_s32(vsraq_n_s32(v945, v945, 0x1FuLL), 2uLL);
  v946 = vrshrq_n_s32(vsraq_n_s32(v946, v946, 0x1FuLL), 2uLL);
  v947 = vrshrq_n_s32(vsraq_n_s32(v947, v947, 0x1FuLL), 2uLL);
  v948 = vrshrq_n_s32(vsraq_n_s32(v948, v948, 0x1FuLL), 2uLL);
  v949 = vrshrq_n_s32(vsraq_n_s32(v949, v949, 0x1FuLL), 2uLL);
  v950 = vrshrq_n_s32(vsraq_n_s32(v950, v950, 0x1FuLL), 2uLL);
  v951 = vrshrq_n_s32(vsraq_n_s32(v951, v951, 0x1FuLL), 2uLL);
  v952 = vrshrq_n_s32(vsraq_n_s32(v952, v952, 0x1FuLL), 2uLL);
  v953 = vrshrq_n_s32(vsraq_n_s32(v953, v953, 0x1FuLL), 2uLL);
  v954 = vrshrq_n_s32(vsraq_n_s32(v954, v954, 0x1FuLL), 2uLL);
  v955 = vrshrq_n_s32(vsraq_n_s32(v955, v955, 0x1FuLL), 2uLL);
  v956 = vrshrq_n_s32(vsraq_n_s32(v956, v956, 0x1FuLL), 2uLL);
  v957 = vrshrq_n_s32(vsraq_n_s32(v957, v957, 0x1FuLL), 2uLL);
  v798 = vrshrq_n_s32(vsraq_n_s32(v798, v798, 0x1FuLL), 2uLL);
  v799 = vrshrq_n_s32(vsraq_n_s32(v799, v799, 0x1FuLL), 2uLL);
  v800 = vrshrq_n_s32(vsraq_n_s32(v800, v800, 0x1FuLL), 2uLL);
  v801 = vrshrq_n_s32(vsraq_n_s32(v801, v801, 0x1FuLL), 2uLL);
  v802 = vrshrq_n_s32(vsraq_n_s32(v802, v802, 0x1FuLL), 2uLL);
  v803 = vrshrq_n_s32(vsraq_n_s32(v803, v803, 0x1FuLL), 2uLL);
  v804 = vrshrq_n_s32(vsraq_n_s32(v804, v804, 0x1FuLL), 2uLL);
  v805 = vrshrq_n_s32(vsraq_n_s32(v805, v805, 0x1FuLL), 2uLL);
  v806 = vrshrq_n_s32(vsraq_n_s32(v806, v806, 0x1FuLL), 2uLL);
  v807 = vrshrq_n_s32(vsraq_n_s32(v807, v807, 0x1FuLL), 2uLL);
  v808 = vrshrq_n_s32(vsraq_n_s32(v808, v808, 0x1FuLL), 2uLL);
  v809 = vrshrq_n_s32(vsraq_n_s32(v809, v809, 0x1FuLL), 2uLL);
  v810 = vrshrq_n_s32(vsraq_n_s32(v810, v810, 0x1FuLL), 2uLL);
  v811 = vrshrq_n_s32(vsraq_n_s32(v811, v811, 0x1FuLL), 2uLL);
  v812 = vrshrq_n_s32(vsraq_n_s32(v812, v812, 0x1FuLL), 2uLL);
  v813 = vrshrq_n_s32(vsraq_n_s32(v813, v813, 0x1FuLL), 2uLL);
  v814 = vrshrq_n_s32(vsraq_n_s32(v814, v814, 0x1FuLL), 2uLL);
  v815 = vrshrq_n_s32(vsraq_n_s32(v815, v815, 0x1FuLL), 2uLL);
  v816 = vrshrq_n_s32(vsraq_n_s32(v816, v816, 0x1FuLL), 2uLL);
  v817 = vrshrq_n_s32(vsraq_n_s32(v817, v817, 0x1FuLL), 2uLL);
  v818 = vrshrq_n_s32(vsraq_n_s32(v818, v818, 0x1FuLL), 2uLL);
  v819 = vrshrq_n_s32(vsraq_n_s32(v819, v819, 0x1FuLL), 2uLL);
  v820 = vrshrq_n_s32(vsraq_n_s32(v820, v820, 0x1FuLL), 2uLL);
  v821 = vrshrq_n_s32(vsraq_n_s32(v821, v821, 0x1FuLL), 2uLL);
  v822 = vrshrq_n_s32(vsraq_n_s32(v822, v822, 0x1FuLL), 2uLL);
  v823 = vrshrq_n_s32(vsraq_n_s32(v823, v823, 0x1FuLL), 2uLL);
  v824 = vrshrq_n_s32(vsraq_n_s32(v824, v824, 0x1FuLL), 2uLL);
  v825 = vrshrq_n_s32(vsraq_n_s32(v825, v825, 0x1FuLL), 2uLL);
  v826 = vrshrq_n_s32(vsraq_n_s32(v826, v826, 0x1FuLL), 2uLL);
  v827 = vrshrq_n_s32(vsraq_n_s32(v827, v827, 0x1FuLL), 2uLL);
  v828 = vrshrq_n_s32(vsraq_n_s32(v828, v828, 0x1FuLL), 2uLL);
  v829 = vrshrq_n_s32(vsraq_n_s32(v829, v829, 0x1FuLL), 2uLL);
  v125 = v6[2];
  v126 = *(v6 + v8 + 32);
  v127 = *(v6 + v14 + 32);
  v128 = vaddq_s16(v126, v125);
  v129 = *(v6 + v572 + 32);
  v130 = vaddq_s16(v129, v127);
  v131 = *(v6 + v565 + 32);
  v132 = *(v6 + v627 + 32);
  v133 = *(v6 + v623 + 32);
  v134 = *(v6 + v619 + 32);
  v135 = vaddq_s16(v132, v131);
  v136 = vaddq_s16(v134, v133);
  v137 = *(v6 + v11 + 32);
  v138 = *(v6 + v602 + 32);
  v139 = vaddq_s16(v138, v137);
  v140 = *(v6 + v616 + 32);
  v141 = *(v6 + v569 + 32);
  v142 = vaddq_s16(v141, v140);
  v143 = *(v6 + v599 + 32);
  v144 = *(v6 + v597 + 32);
  v145 = *(v6 + v644 + 32);
  v146 = vaddq_s16(v144, v143);
  v147 = v6[v641 + 2];
  v148 = vaddq_s16(v147, v145);
  v149 = vsubq_s16(v145, v147);
  v150 = vsubq_s16(v143, v144);
  v151 = vsubq_s16(v140, v141);
  v152 = vsubq_s16(v137, v138);
  v153 = vsubq_s16(v133, v134);
  v560 = vsubq_s16(v131, v132);
  v563 = vsubq_s16(v127, v129);
  v513 = vsubq_s16(v125, v126);
  v154 = v6[v13 + 2];
  v155 = *(v6 + v638 + 32);
  v156 = *(v6 + v613 + 32);
  v157 = *(v6 + v635 + 32);
  v158 = *(v6 + v632 + 32);
  v159 = *(v6 + v23 + 32);
  v160 = *(v6 + v31 + 32);
  v161 = *(v6 + v35 + 32);
  v162 = *(v6 + v581 + 32);
  v163 = *(v6 + v587 + 32);
  v164 = *(v6 + v584 + 32);
  v165 = *(v6 + v605 + 32);
  v166 = *(v6 + v578 + 32);
  v167 = *(v6 + v595 + 32);
  v168 = *(v6 + v461 + 32);
  v169 = vaddq_s16(v168, v167);
  v170 = vsubq_s16(v167, v168);
  v171 = vaddq_s16(v166, v165);
  v172 = vsubq_s16(v165, v166);
  v173 = vaddq_s16(v164, v163);
  v174 = vsubq_s16(v163, v164);
  v175 = vaddq_s16(v162, v161);
  v176 = vsubq_s16(v161, v162);
  v177 = vaddq_s16(v160, v159);
  v178 = vsubq_s16(v159, v160);
  v179 = vaddq_s16(v158, v157);
  v180 = vsubq_s16(v157, v158);
  v181 = vaddq_s16(v156, v155);
  v182 = vsubq_s16(v155, v156);
  v183 = *(v6 + v575 + 32);
  v184 = vaddq_s16(v183, v154);
  v185 = vsubq_s16(v154, v183);
  v894 = vshll_n_s16(*v128.i8, 2uLL);
  v895 = vshll_n_s16(*v130.i8, 2uLL);
  v896 = vshll_n_s16(*v135.i8, 2uLL);
  v897 = vshll_n_s16(*v136.i8, 2uLL);
  v898 = vshll_n_s16(*v139.i8, 2uLL);
  v899 = vshll_n_s16(*v142.i8, 2uLL);
  v900 = vshll_n_s16(*v146.i8, 2uLL);
  v901 = vshll_n_s16(*v148.i8, 2uLL);
  v902 = vshll_n_s16(*v184.i8, 2uLL);
  v903 = vshll_n_s16(*v181.i8, 2uLL);
  v904 = vshll_n_s16(*v179.i8, 2uLL);
  v905 = vshll_n_s16(*v177.i8, 2uLL);
  v906 = vshll_n_s16(*v175.i8, 2uLL);
  v907 = vshll_n_s16(*v173.i8, 2uLL);
  v908 = vshll_n_s16(*v171.i8, 2uLL);
  v909 = vshll_n_s16(*v169.i8, 2uLL);
  v910 = vshll_n_s16(*v170.i8, 2uLL);
  v911 = vshll_n_s16(*v172.i8, 2uLL);
  v912 = vshll_n_s16(*v174.i8, 2uLL);
  v913 = vshll_n_s16(*v176.i8, 2uLL);
  v914 = vshll_n_s16(*v178.i8, 2uLL);
  v915 = vshll_n_s16(*v180.i8, 2uLL);
  v916 = vshll_n_s16(*v182.i8, 2uLL);
  v917 = vshll_n_s16(*v185.i8, 2uLL);
  v918 = vshll_n_s16(*v149.i8, 2uLL);
  v919 = vshll_n_s16(*v150.i8, 2uLL);
  v920 = vshll_n_s16(*v151.i8, 2uLL);
  v921 = vshll_n_s16(*v152.i8, 2uLL);
  v922 = vshll_n_s16(*v153.i8, 2uLL);
  v923 = vshll_n_s16(*v560.i8, 2uLL);
  v924 = vshll_n_s16(*v563.i8, 2uLL);
  v925 = vshll_n_s16(*v513.i8, 2uLL);
  v766 = vshll_high_n_s16(v128, 2uLL);
  v767 = vshll_high_n_s16(v130, 2uLL);
  v768 = vshll_high_n_s16(v135, 2uLL);
  v769 = vshll_high_n_s16(v136, 2uLL);
  v770 = vshll_high_n_s16(v139, 2uLL);
  v771 = vshll_high_n_s16(v142, 2uLL);
  v772 = vshll_high_n_s16(v146, 2uLL);
  v773 = vshll_high_n_s16(v148, 2uLL);
  v774 = vshll_high_n_s16(v184, 2uLL);
  v775 = vshll_high_n_s16(v181, 2uLL);
  v776 = vshll_high_n_s16(v179, 2uLL);
  v777 = vshll_high_n_s16(v177, 2uLL);
  v778 = vshll_high_n_s16(v175, 2uLL);
  v779 = vshll_high_n_s16(v173, 2uLL);
  v780 = vshll_high_n_s16(v171, 2uLL);
  v781 = vshll_high_n_s16(v169, 2uLL);
  v782 = vshll_high_n_s16(v170, 2uLL);
  v783 = vshll_high_n_s16(v172, 2uLL);
  v784 = vshll_high_n_s16(v174, 2uLL);
  v785 = vshll_high_n_s16(v176, 2uLL);
  v786 = vshll_high_n_s16(v178, 2uLL);
  v787 = vshll_high_n_s16(v180, 2uLL);
  v788 = vshll_high_n_s16(v182, 2uLL);
  v789 = vshll_high_n_s16(v185, 2uLL);
  v790 = vshll_high_n_s16(v149, 2uLL);
  v791 = vshll_high_n_s16(v150, 2uLL);
  v792 = vshll_high_n_s16(v151, 2uLL);
  v793 = vshll_high_n_s16(v152, 2uLL);
  v794 = vshll_high_n_s16(v153, 2uLL);
  v795 = vshll_high_n_s16(v560, 2uLL);
  v796 = vshll_high_n_s16(v563, 2uLL);
  v797 = vshll_high_n_s16(v513, 2uLL);
  highbd_dct8x32_body_first_pass(&v894, &v766);
  v186 = v6[3];
  v6 += 3;
  v187 = *(v6 + v8);
  v188 = *(v6 + v14);
  v189 = *(v6 + v572);
  v190 = *(v6 + v565);
  v191 = *(v6 + v627);
  v192 = *(v6 + v623);
  v193 = *(v6 + v619);
  v194 = *(v6 + v11);
  v195 = *(v6 + v602);
  v196 = *(v6 + v616);
  v197 = *(v6 + v569);
  v198 = *(v6 + v599);
  v199 = *(v6 + v597);
  v200 = *(v6 + v644);
  v201 = v6[v641];
  v645 = v6[v13];
  v642 = *(v6 + v638);
  v202 = *(v6 + v613);
  v203 = *(v6 + v635);
  v204 = *(v6 + v632);
  v894 = vrshrq_n_s32(vsraq_n_s32(v894, v894, 0x1FuLL), 2uLL);
  v895 = vrshrq_n_s32(vsraq_n_s32(v895, v895, 0x1FuLL), 2uLL);
  v896 = vrshrq_n_s32(vsraq_n_s32(v896, v896, 0x1FuLL), 2uLL);
  v897 = vrshrq_n_s32(vsraq_n_s32(v897, v897, 0x1FuLL), 2uLL);
  v898 = vrshrq_n_s32(vsraq_n_s32(v898, v898, 0x1FuLL), 2uLL);
  v899 = vrshrq_n_s32(vsraq_n_s32(v899, v899, 0x1FuLL), 2uLL);
  v900 = vrshrq_n_s32(vsraq_n_s32(v900, v900, 0x1FuLL), 2uLL);
  v901 = vrshrq_n_s32(vsraq_n_s32(v901, v901, 0x1FuLL), 2uLL);
  v902 = vrshrq_n_s32(vsraq_n_s32(v902, v902, 0x1FuLL), 2uLL);
  v903 = vrshrq_n_s32(vsraq_n_s32(v903, v903, 0x1FuLL), 2uLL);
  v904 = vrshrq_n_s32(vsraq_n_s32(v904, v904, 0x1FuLL), 2uLL);
  v905 = vrshrq_n_s32(vsraq_n_s32(v905, v905, 0x1FuLL), 2uLL);
  v906 = vrshrq_n_s32(vsraq_n_s32(v906, v906, 0x1FuLL), 2uLL);
  v907 = vrshrq_n_s32(vsraq_n_s32(v907, v907, 0x1FuLL), 2uLL);
  v908 = vrshrq_n_s32(vsraq_n_s32(v908, v908, 0x1FuLL), 2uLL);
  v909 = vrshrq_n_s32(vsraq_n_s32(v909, v909, 0x1FuLL), 2uLL);
  v910 = vrshrq_n_s32(vsraq_n_s32(v910, v910, 0x1FuLL), 2uLL);
  v911 = vrshrq_n_s32(vsraq_n_s32(v911, v911, 0x1FuLL), 2uLL);
  v912 = vrshrq_n_s32(vsraq_n_s32(v912, v912, 0x1FuLL), 2uLL);
  v913 = vrshrq_n_s32(vsraq_n_s32(v913, v913, 0x1FuLL), 2uLL);
  v914 = vrshrq_n_s32(vsraq_n_s32(v914, v914, 0x1FuLL), 2uLL);
  v915 = vrshrq_n_s32(vsraq_n_s32(v915, v915, 0x1FuLL), 2uLL);
  v916 = vrshrq_n_s32(vsraq_n_s32(v916, v916, 0x1FuLL), 2uLL);
  v917 = vrshrq_n_s32(vsraq_n_s32(v917, v917, 0x1FuLL), 2uLL);
  v918 = vrshrq_n_s32(vsraq_n_s32(v918, v918, 0x1FuLL), 2uLL);
  v919 = vrshrq_n_s32(vsraq_n_s32(v919, v919, 0x1FuLL), 2uLL);
  v920 = vrshrq_n_s32(vsraq_n_s32(v920, v920, 0x1FuLL), 2uLL);
  v921 = vrshrq_n_s32(vsraq_n_s32(v921, v921, 0x1FuLL), 2uLL);
  v922 = vrshrq_n_s32(vsraq_n_s32(v922, v922, 0x1FuLL), 2uLL);
  v923 = vrshrq_n_s32(vsraq_n_s32(v923, v923, 0x1FuLL), 2uLL);
  v924 = vrshrq_n_s32(vsraq_n_s32(v924, v924, 0x1FuLL), 2uLL);
  v925 = vrshrq_n_s32(vsraq_n_s32(v925, v925, 0x1FuLL), 2uLL);
  v766 = vrshrq_n_s32(vsraq_n_s32(v766, v766, 0x1FuLL), 2uLL);
  v767 = vrshrq_n_s32(vsraq_n_s32(v767, v767, 0x1FuLL), 2uLL);
  v768 = vrshrq_n_s32(vsraq_n_s32(v768, v768, 0x1FuLL), 2uLL);
  v769 = vrshrq_n_s32(vsraq_n_s32(v769, v769, 0x1FuLL), 2uLL);
  v770 = vrshrq_n_s32(vsraq_n_s32(v770, v770, 0x1FuLL), 2uLL);
  v771 = vrshrq_n_s32(vsraq_n_s32(v771, v771, 0x1FuLL), 2uLL);
  v772 = vrshrq_n_s32(vsraq_n_s32(v772, v772, 0x1FuLL), 2uLL);
  v773 = vrshrq_n_s32(vsraq_n_s32(v773, v773, 0x1FuLL), 2uLL);
  v774 = vrshrq_n_s32(vsraq_n_s32(v774, v774, 0x1FuLL), 2uLL);
  v775 = vrshrq_n_s32(vsraq_n_s32(v775, v775, 0x1FuLL), 2uLL);
  v776 = vrshrq_n_s32(vsraq_n_s32(v776, v776, 0x1FuLL), 2uLL);
  v777 = vrshrq_n_s32(vsraq_n_s32(v777, v777, 0x1FuLL), 2uLL);
  v778 = vrshrq_n_s32(vsraq_n_s32(v778, v778, 0x1FuLL), 2uLL);
  v779 = vrshrq_n_s32(vsraq_n_s32(v779, v779, 0x1FuLL), 2uLL);
  v780 = vrshrq_n_s32(vsraq_n_s32(v780, v780, 0x1FuLL), 2uLL);
  v781 = vrshrq_n_s32(vsraq_n_s32(v781, v781, 0x1FuLL), 2uLL);
  v782 = vrshrq_n_s32(vsraq_n_s32(v782, v782, 0x1FuLL), 2uLL);
  v783 = vrshrq_n_s32(vsraq_n_s32(v783, v783, 0x1FuLL), 2uLL);
  v784 = vrshrq_n_s32(vsraq_n_s32(v784, v784, 0x1FuLL), 2uLL);
  v785 = vrshrq_n_s32(vsraq_n_s32(v785, v785, 0x1FuLL), 2uLL);
  v786 = vrshrq_n_s32(vsraq_n_s32(v786, v786, 0x1FuLL), 2uLL);
  v787 = vrshrq_n_s32(vsraq_n_s32(v787, v787, 0x1FuLL), 2uLL);
  v788 = vrshrq_n_s32(vsraq_n_s32(v788, v788, 0x1FuLL), 2uLL);
  v789 = vrshrq_n_s32(vsraq_n_s32(v789, v789, 0x1FuLL), 2uLL);
  v790 = vrshrq_n_s32(vsraq_n_s32(v790, v790, 0x1FuLL), 2uLL);
  v791 = vrshrq_n_s32(vsraq_n_s32(v791, v791, 0x1FuLL), 2uLL);
  v792 = vrshrq_n_s32(vsraq_n_s32(v792, v792, 0x1FuLL), 2uLL);
  v793 = vrshrq_n_s32(vsraq_n_s32(v793, v793, 0x1FuLL), 2uLL);
  v794 = vrshrq_n_s32(vsraq_n_s32(v794, v794, 0x1FuLL), 2uLL);
  v795 = vrshrq_n_s32(vsraq_n_s32(v795, v795, 0x1FuLL), 2uLL);
  v796 = vrshrq_n_s32(vsraq_n_s32(v796, v796, 0x1FuLL), 2uLL);
  v797 = vrshrq_n_s32(vsraq_n_s32(v797, v797, 0x1FuLL), 2uLL);
  v205 = vaddq_s16(v187, v186);
  v206 = vaddq_s16(v189, v188);
  v207 = vaddq_s16(v191, v190);
  v208 = vaddq_s16(v193, v192);
  v209 = vaddq_s16(v195, v194);
  v210 = vaddq_s16(v197, v196);
  v624 = vaddq_s16(v199, v198);
  v620 = vaddq_s16(v201, v200);
  v211 = vsubq_s16(v200, v201);
  v212 = vsubq_s16(v198, v199);
  v213 = vsubq_s16(v196, v197);
  v214 = vsubq_s16(v194, v195);
  v628 = vsubq_s16(v192, v193);
  v633 = vsubq_s16(v190, v191);
  v636 = vsubq_s16(v188, v189);
  v639 = vsubq_s16(v186, v187);
  v215 = *(v6 + v23);
  v216 = *(v6 + v31);
  v217 = *(v6 + v35);
  v218 = *(v6 + v581);
  v219 = *(v6 + v587);
  v220 = *(v6 + v584);
  v221 = *(v6 + v605);
  v222 = *(v6 + v578);
  v223 = *(v6 + v595);
  v224 = *(v6 + v461);
  v225 = vaddq_s16(v224, v223);
  v226 = vsubq_s16(v223, v224);
  v227 = vaddq_s16(v222, v221);
  v228 = vsubq_s16(v221, v222);
  v229 = vaddq_s16(v220, v219);
  v230 = vsubq_s16(v219, v220);
  v231 = vaddq_s16(v218, v217);
  v232 = vsubq_s16(v217, v218);
  v233 = vaddq_s16(v216, v215);
  v234 = vsubq_s16(v215, v216);
  v235 = vaddq_s16(v204, v203);
  v236 = vsubq_s16(v203, v204);
  v237 = vaddq_s16(v202, v642);
  v238 = vsubq_s16(v642, v202);
  v239 = *(v6 + v575);
  v240 = vaddq_s16(v239, v645);
  v862 = vshll_n_s16(*v205.i8, 2uLL);
  v863 = vshll_n_s16(*v206.i8, 2uLL);
  v864 = vshll_n_s16(*v207.i8, 2uLL);
  v865 = vshll_n_s16(*v208.i8, 2uLL);
  v866 = vshll_n_s16(*v209.i8, 2uLL);
  v867 = vshll_n_s16(*v210.i8, 2uLL);
  v868 = vshll_n_s16(*v624.i8, 2uLL);
  v869 = vshll_n_s16(*v620.i8, 2uLL);
  v870 = vshll_n_s16(*v240.i8, 2uLL);
  v871 = vshll_n_s16(*v237.i8, 2uLL);
  v872 = vshll_n_s16(*v235.i8, 2uLL);
  v873 = vshll_n_s16(*v233.i8, 2uLL);
  v874 = vshll_n_s16(*v231.i8, 2uLL);
  v875 = vshll_n_s16(*v229.i8, 2uLL);
  v876 = vshll_n_s16(*v227.i8, 2uLL);
  v877 = vshll_n_s16(*v225.i8, 2uLL);
  v878 = vshll_n_s16(*v226.i8, 2uLL);
  v879 = vshll_n_s16(*v228.i8, 2uLL);
  v880 = vshll_n_s16(*v230.i8, 2uLL);
  v881 = vshll_n_s16(*v232.i8, 2uLL);
  v882 = vshll_n_s16(*v234.i8, 2uLL);
  v883 = vshll_n_s16(*v236.i8, 2uLL);
  v241 = vshll_n_s16(*v238.i8, 2uLL);
  v242 = v238;
  v243 = vsubq_s16(v645, v239);
  v884 = v241;
  v885 = vshll_n_s16(*v243.i8, 2uLL);
  v886 = vshll_n_s16(*v211.i8, 2uLL);
  v887 = vshll_n_s16(*v212.i8, 2uLL);
  v888 = vshll_n_s16(*v213.i8, 2uLL);
  v889 = vshll_n_s16(*v214.i8, 2uLL);
  v890 = vshll_n_s16(*v628.i8, 2uLL);
  v891 = vshll_n_s16(*v633.i8, 2uLL);
  v892 = vshll_n_s16(*v636.i8, 2uLL);
  v893 = vshll_n_s16(*v639.i8, 2uLL);
  v734 = vshll_high_n_s16(v205, 2uLL);
  v735 = vshll_high_n_s16(v206, 2uLL);
  v736 = vshll_high_n_s16(v207, 2uLL);
  v737 = vshll_high_n_s16(v208, 2uLL);
  v738 = vshll_high_n_s16(v209, 2uLL);
  v739 = vshll_high_n_s16(v210, 2uLL);
  v740 = vshll_high_n_s16(v624, 2uLL);
  v741 = vshll_high_n_s16(v620, 2uLL);
  v742 = vshll_high_n_s16(v240, 2uLL);
  v743 = vshll_high_n_s16(v237, 2uLL);
  v744 = vshll_high_n_s16(v235, 2uLL);
  v745 = vshll_high_n_s16(v233, 2uLL);
  v746 = vshll_high_n_s16(v231, 2uLL);
  v747 = vshll_high_n_s16(v229, 2uLL);
  v748 = vshll_high_n_s16(v227, 2uLL);
  v749 = vshll_high_n_s16(v225, 2uLL);
  v750 = vshll_high_n_s16(v226, 2uLL);
  v751 = vshll_high_n_s16(v228, 2uLL);
  v752 = vshll_high_n_s16(v230, 2uLL);
  v753 = vshll_high_n_s16(v232, 2uLL);
  v754 = vshll_high_n_s16(v234, 2uLL);
  v755 = vshll_high_n_s16(v236, 2uLL);
  v756 = vshll_high_n_s16(v242, 2uLL);
  v757 = vshll_high_n_s16(v243, 2uLL);
  v758 = vshll_high_n_s16(v211, 2uLL);
  v759 = vshll_high_n_s16(v212, 2uLL);
  v760 = vshll_high_n_s16(v213, 2uLL);
  v761 = vshll_high_n_s16(v214, 2uLL);
  v762 = vshll_high_n_s16(v628, 2uLL);
  v763 = vshll_high_n_s16(v633, 2uLL);
  v764 = vshll_high_n_s16(v636, 2uLL);
  v765 = vshll_high_n_s16(v639, 2uLL);
  highbd_dct8x32_body_first_pass(&v862, &v734);
  v244 = &v834;
  v1065 = vld4q_f32(v244);
  v245 = &v930;
  v1054 = vld4q_f32(v245);
  v246 = &v802;
  v1075 = vld4q_f32(v246);
  v247 = &v898;
  v1035 = vld4q_f32(v247);
  v248 = &v770;
  v1029 = vld4q_f32(v248);
  v249 = vrshrq_n_s32(vsraq_n_s32(v866, v866, 0x1FuLL), 2uLL);
  v250 = vrshrq_n_s32(vsraq_n_s32(v867, v867, 0x1FuLL), 2uLL);
  v251 = vrshrq_n_s32(vsraq_n_s32(v868, v868, 0x1FuLL), 2uLL);
  v252 = vrshrq_n_s32(vsraq_n_s32(v869, v869, 0x1FuLL), 2uLL);
  v253 = vtrn1q_s32(v249, v250);
  v629 = vaddq_s32(v1035.val[3], v1075.val[0]);
  v625 = vaddq_s32(v1035.val[2], v1075.val[1]);
  v621 = vaddq_s32(v1035.val[1], v1075.val[2]);
  v617 = vaddq_s32(v1035.val[0], v1075.val[3]);
  v614 = vsubq_s32(v1075.val[3], v1035.val[0]);
  v611 = vsubq_s32(v1075.val[2], v1035.val[1]);
  v610 = vsubq_s32(v1075.val[1], v1035.val[2]);
  v608 = vsubq_s32(v1075.val[0], v1035.val[3]);
  v576 = vaddq_s32(v1029.val[2], v1054.val[1]);
  v579 = vaddq_s32(v1029.val[3], v1054.val[0]);
  v570 = vaddq_s32(v1029.val[0], v1054.val[3]);
  v573 = vaddq_s32(v1029.val[1], v1054.val[2]);
  v606 = vsubq_s32(v1054.val[3], v1029.val[0]);
  v603 = vsubq_s32(v1054.val[2], v1029.val[1]);
  v600 = vsubq_s32(v1054.val[1], v1029.val[2]);
  v598 = vsubq_s32(v1054.val[0], v1029.val[3]);
  v254 = vtrn1q_s32(v251, v252);
  v255 = vzip2q_s64(v253, v254);
  v253.i64[1] = v254.i64[0];
  v256 = vtrn2q_s32(v249, v250);
  v257 = vtrn2q_s32(v251, v252);
  v258 = vzip2q_s64(v256, v257);
  v256.i64[1] = v257.i64[0];
  v566 = vaddq_s32(v1065.val[0], v258);
  v498 = vaddq_s32(v1065.val[1], v255);
  v478 = vaddq_s32(v1065.val[2], v256);
  v474 = vaddq_s32(v1065.val[3], v253);
  v593 = vsubq_s32(v1065.val[3], v253);
  v592 = vsubq_s32(v1065.val[2], v256);
  v596 = vsubq_s32(v1065.val[1], v255);
  v594 = vsubq_s32(v1065.val[0], v258);
  v259 = vrshrq_n_s32(vsraq_n_s32(v738, v738, 0x1FuLL), 2uLL);
  v260 = vrshrq_n_s32(vsraq_n_s32(v739, v739, 0x1FuLL), 2uLL);
  v261 = vrshrq_n_s32(vsraq_n_s32(v740, v740, 0x1FuLL), 2uLL);
  v262 = vrshrq_n_s32(vsraq_n_s32(v741, v741, 0x1FuLL), 2uLL);
  v263 = vtrn1q_s32(v259, v260);
  v264 = vtrn1q_s32(v261, v262);
  v265 = vzip2q_s64(v263, v264);
  v263.i64[1] = v264.i64[0];
  v266 = vtrn2q_s32(v259, v260);
  v1054.val[0] = vtrn2q_s32(v261, v262);
  v1054.val[1] = vzip2q_s64(v266, v1054.val[0]);
  v267 = &v962;
  v1065 = vld4q_f32(v267);
  v266.i64[1] = v1054.val[0].i64[0];
  v521 = vaddq_s32(v1065.val[0], v263);
  v582 = vsubq_s32(v268, v266);
  v466 = vaddq_s32(v1054.val[3], v265);
  v470 = vaddq_s32(v268, v266);
  v590 = vsubq_s32(v1054.val[3], v265);
  v462 = vaddq_s32(v1054.val[2], v1054.val[1]);
  v585 = vsubq_s32(v1054.val[2], v1054.val[1]);
  v588 = vsubq_s32(v1065.val[0], v263);
  v866 = v249;
  v867 = v250;
  v868 = v251;
  v869 = v252;
  v870 = vrshrq_n_s32(vsraq_n_s32(v870, v870, 0x1FuLL), 2uLL);
  v871 = vrshrq_n_s32(vsraq_n_s32(v871, v871, 0x1FuLL), 2uLL);
  v872 = vrshrq_n_s32(vsraq_n_s32(v872, v872, 0x1FuLL), 2uLL);
  v873 = vrshrq_n_s32(vsraq_n_s32(v873, v873, 0x1FuLL), 2uLL);
  v874 = vrshrq_n_s32(vsraq_n_s32(v874, v874, 0x1FuLL), 2uLL);
  v875 = vrshrq_n_s32(vsraq_n_s32(v875, v875, 0x1FuLL), 2uLL);
  v876 = vrshrq_n_s32(vsraq_n_s32(v876, v876, 0x1FuLL), 2uLL);
  v877 = vrshrq_n_s32(vsraq_n_s32(v877, v877, 0x1FuLL), 2uLL);
  v878 = vrshrq_n_s32(vsraq_n_s32(v878, v878, 0x1FuLL), 2uLL);
  v879 = vrshrq_n_s32(vsraq_n_s32(v879, v879, 0x1FuLL), 2uLL);
  v880 = vrshrq_n_s32(vsraq_n_s32(v880, v880, 0x1FuLL), 2uLL);
  v881 = vrshrq_n_s32(vsraq_n_s32(v881, v881, 0x1FuLL), 2uLL);
  v882 = vrshrq_n_s32(vsraq_n_s32(v882, v882, 0x1FuLL), 2uLL);
  v883 = vrshrq_n_s32(vsraq_n_s32(v883, v883, 0x1FuLL), 2uLL);
  v884 = vrshrq_n_s32(vsraq_n_s32(v884, v884, 0x1FuLL), 2uLL);
  v885 = vrshrq_n_s32(vsraq_n_s32(v885, v885, 0x1FuLL), 2uLL);
  v886 = vrshrq_n_s32(vsraq_n_s32(v886, v886, 0x1FuLL), 2uLL);
  v887 = vrshrq_n_s32(vsraq_n_s32(v887, v887, 0x1FuLL), 2uLL);
  v888 = vrshrq_n_s32(vsraq_n_s32(v888, v888, 0x1FuLL), 2uLL);
  v889 = vrshrq_n_s32(vsraq_n_s32(v889, v889, 0x1FuLL), 2uLL);
  v890 = vrshrq_n_s32(vsraq_n_s32(v890, v890, 0x1FuLL), 2uLL);
  v891 = vrshrq_n_s32(vsraq_n_s32(v891, v891, 0x1FuLL), 2uLL);
  v892 = vrshrq_n_s32(vsraq_n_s32(v892, v892, 0x1FuLL), 2uLL);
  v893 = vrshrq_n_s32(vsraq_n_s32(v893, v893, 0x1FuLL), 2uLL);
  v738 = v259;
  v739 = v260;
  v740 = v261;
  v741 = v262;
  v750 = vrshrq_n_s32(vsraq_n_s32(v750, v750, 0x1FuLL), 2uLL);
  v751 = vrshrq_n_s32(vsraq_n_s32(v751, v751, 0x1FuLL), 2uLL);
  v752 = vrshrq_n_s32(vsraq_n_s32(v752, v752, 0x1FuLL), 2uLL);
  v753 = vrshrq_n_s32(vsraq_n_s32(v753, v753, 0x1FuLL), 2uLL);
  v754 = vrshrq_n_s32(vsraq_n_s32(v754, v754, 0x1FuLL), 2uLL);
  v755 = vrshrq_n_s32(vsraq_n_s32(v755, v755, 0x1FuLL), 2uLL);
  v756 = vrshrq_n_s32(vsraq_n_s32(v756, v756, 0x1FuLL), 2uLL);
  v757 = vrshrq_n_s32(vsraq_n_s32(v757, v757, 0x1FuLL), 2uLL);
  v758 = vrshrq_n_s32(vsraq_n_s32(v758, v758, 0x1FuLL), 2uLL);
  v759 = vrshrq_n_s32(vsraq_n_s32(v759, v759, 0x1FuLL), 2uLL);
  v760 = vrshrq_n_s32(vsraq_n_s32(v760, v760, 0x1FuLL), 2uLL);
  v761 = vrshrq_n_s32(vsraq_n_s32(v761, v761, 0x1FuLL), 2uLL);
  v762 = vrshrq_n_s32(vsraq_n_s32(v762, v762, 0x1FuLL), 2uLL);
  v763 = vrshrq_n_s32(vsraq_n_s32(v763, v763, 0x1FuLL), 2uLL);
  v764 = vrshrq_n_s32(vsraq_n_s32(v764, v764, 0x1FuLL), 2uLL);
  v765 = vrshrq_n_s32(vsraq_n_s32(v765, v765, 0x1FuLL), 2uLL);
  v1065.val[3] = vtrn1q_s32(v958, v959);
  v269 = vtrn1q_s32(v960, v961);
  v270 = vzip2q_s64(v1065.val[3], v269);
  v1065.val[3].i64[1] = v269.i64[0];
  v1065.val[2] = vtrn2q_s32(v958, v959);
  v271 = vtrn2q_s32(v960, v961);
  v453 = vzip2q_s64(v1065.val[2], v271);
  v457 = v270;
  v1065.val[2].i64[1] = v271.i64[0];
  v1035.val[2] = vtrn1q_s32(v830, v831);
  v272 = vtrn1q_s32(v832, v833);
  v273 = vzip2q_s64(v1035.val[2], v272);
  v1035.val[2].i64[1] = v272.i64[0];
  v1035.val[0] = vtrn2q_s32(v830, v831);
  v274 = vtrn2q_s32(v832, v833);
  v445 = vzip2q_s64(v1035.val[0], v274);
  v449 = v273;
  v1035.val[0].i64[1] = v274.i64[0];
  v1029.val[2] = vtrn1q_s32(v926, v927);
  v275 = vtrn1q_s32(v928, v929);
  v276 = vzip2q_s64(v1029.val[2], v275);
  v1029.val[2].i64[1] = v275.i64[0];
  v1029.val[1] = vtrn2q_s32(v926, v927);
  v277 = vtrn2q_s32(v928, v929);
  v437 = vzip2q_s64(v1029.val[1], v277);
  v441 = v276;
  v1029.val[1].i64[1] = v277.i64[0];
  v1075.val[3] = vtrn1q_s32(v798, v799);
  v278 = vtrn1q_s32(v800, v801);
  v279 = vzip2q_s64(v1075.val[3], v278);
  v1075.val[3].i64[1] = v278.i64[0];
  v1075.val[0] = vtrn2q_s32(v798, v799);
  v280 = vtrn2q_s32(v800, v801);
  v430 = vzip2q_s64(v1075.val[0], v280);
  v1075.val[0].i64[1] = v280.i64[0];
  v281 = vtrn1q_s32(v894, v895);
  v1054.val[3] = vtrn2q_s32(v894, v895);
  v282 = vtrn1q_s32(v896, v897);
  v283 = vtrn2q_s32(v896, v897);
  v1065.val[1] = vtrn1q_s32(v766, v767);
  v1065.val[0] = vtrn2q_s32(v766, v767);
  v284 = vtrn1q_s32(v768, v769);
  v285 = vtrn2q_s32(v768, v769);
  v286 = vzip2q_s64(v281, v282);
  v281.i64[1] = v282.i64[0];
  v425 = vzip2q_s64(v1054.val[3], v283);
  v1054.val[3].i64[1] = v283.i64[0];
  v1075.val[1] = vzip2q_s64(v1065.val[1], v284);
  v1065.val[1].i64[1] = v284.i64[0];
  v1075.val[2] = vzip2q_s64(v1065.val[0], v285);
  v1065.val[0].i64[1] = v285.i64[0];
  v287 = vrshrq_n_s32(vsraq_n_s32(v862, v862, 0x1FuLL), 2uLL);
  v288 = vrshrq_n_s32(vsraq_n_s32(v863, v863, 0x1FuLL), 2uLL);
  v289 = vrshrq_n_s32(vsraq_n_s32(v864, v864, 0x1FuLL), 2uLL);
  v290 = vrshrq_n_s32(vsraq_n_s32(v865, v865, 0x1FuLL), 2uLL);
  v1054.val[1] = vtrn1q_s32(v287, v288);
  v1054.val[2] = vtrn1q_s32(v289, v290);
  v1035.val[3] = vzip2q_s64(v1054.val[1], v1054.val[2]);
  v1054.val[1].i64[1] = v1054.val[2].i64[0];
  v862 = v287;
  v863 = v288;
  v1054.val[0] = vtrn2q_s32(v287, v288);
  v864 = v289;
  v865 = v290;
  v291 = vtrn2q_s32(v289, v290);
  v1035.val[1] = vzip2q_s64(v1054.val[0], v291);
  v1054.val[0].i64[1] = v291.i64[0];
  v292 = vrshrq_n_s32(vsraq_n_s32(v734, v734, 0x1FuLL), 2uLL);
  v293 = vrshrq_n_s32(vsraq_n_s32(v735, v735, 0x1FuLL), 2uLL);
  v294 = vrshrq_n_s32(vsraq_n_s32(v736, v736, 0x1FuLL), 2uLL);
  v295 = vrshrq_n_s32(vsraq_n_s32(v737, v737, 0x1FuLL), 2uLL);
  v296 = vtrn1q_s32(v292, v293);
  v297 = vtrn1q_s32(v294, v295);
  v1029.val[3] = vzip2q_s64(v296, v297);
  v296.i64[1] = v297.i64[0];
  v734 = v292;
  v735 = v293;
  v298 = vtrn2q_s32(v292, v293);
  v736 = v294;
  v737 = v295;
  v299 = vtrn2q_s32(v294, v295);
  v1029.val[0] = vzip2q_s64(v298, v299);
  v723 = vaddq_s32(v1065.val[3], v1029.val[0]);
  v724 = vaddq_s32(v1065.val[2], v1029.val[3]);
  v298.i64[1] = v299.i64[0];
  v725 = vaddq_s32(v457, v298);
  v726 = vaddq_s32(v453, v296);
  v727[0] = vaddq_s32(v1035.val[2], v1035.val[1]);
  v727[1] = vaddq_s32(v1035.val[0], v1035.val[3]);
  v727[2] = vaddq_s32(v449, v1054.val[0]);
  v727[3] = vaddq_s32(v445, v1054.val[1]);
  v728[0] = vaddq_s32(v1075.val[2], v1029.val[2]);
  v728[1] = vaddq_s32(v1075.val[1], v1029.val[1]);
  v728[2] = vaddq_s32(v1065.val[0], v441);
  v728[3] = vaddq_s32(v1065.val[1], v437);
  v729[0] = vaddq_s32(v425, v1075.val[3]);
  v729[1] = vaddq_s32(v286, v1075.val[0]);
  v729[2] = vaddq_s32(v1054.val[3], v279);
  v729[3] = vaddq_s32(v281, v430);
  v712 = v462;
  v713 = v466;
  v714 = v470;
  v715 = v521;
  v716[0] = v566;
  v716[1] = v498;
  v716[2] = v478;
  v716[3] = v474;
  v717[0] = v579;
  v717[1] = v576;
  v717[2] = v573;
  v717[3] = v570;
  v718[0] = v629;
  v718[1] = v625;
  v718[2] = v621;
  v718[3] = v617;
  v730[0] = vsubq_s32(v430, v281);
  v730[1] = vsubq_s32(v279, v1054.val[3]);
  v730[2] = vsubq_s32(v1075.val[0], v286);
  v730[3] = vsubq_s32(v1075.val[3], v425);
  v731[0] = vsubq_s32(v437, v1065.val[1]);
  v731[1] = vsubq_s32(v441, v1065.val[0]);
  v731[2] = vsubq_s32(v1029.val[1], v1075.val[1]);
  v731[3] = vsubq_s32(v1029.val[2], v1075.val[2]);
  v732[0] = vsubq_s32(v445, v1054.val[1]);
  v732[1] = vsubq_s32(v449, v1054.val[0]);
  v732[2] = vsubq_s32(v1035.val[0], v1035.val[3]);
  v732[3] = vsubq_s32(v1035.val[2], v1035.val[1]);
  v733[0] = vsubq_s32(v453, v296);
  v733[1] = vsubq_s32(v457, v298);
  v733[2] = vsubq_s32(v1065.val[2], v1029.val[3]);
  v733[3] = vsubq_s32(v1065.val[3], v1029.val[0]);
  v719[0] = v614;
  v719[1] = v611;
  v719[2] = v610;
  v719[3] = v608;
  v720[0] = v606;
  v720[1] = v603;
  v720[2] = v600;
  v720[3] = v598;
  v721[0] = v593;
  v721[1] = v592;
  v577 = vrshrq_n_s32(vsraq_n_s32(v743, v743, 0x1FuLL), 2uLL);
  v580 = vrshrq_n_s32(vsraq_n_s32(v742, v742, 0x1FuLL), 2uLL);
  v721[2] = v596;
  v721[3] = v594;
  v571 = vrshrq_n_s32(vsraq_n_s32(v745, v745, 0x1FuLL), 2uLL);
  v574 = vrshrq_n_s32(vsraq_n_s32(v744, v744, 0x1FuLL), 2uLL);
  v722[0] = v588;
  v722[1] = v582;
  v604 = vrshrq_n_s32(vsraq_n_s32(v746, v746, 0x1FuLL), 2uLL);
  v601 = vrshrq_n_s32(vsraq_n_s32(v747, v747, 0x1FuLL), 2uLL);
  v722[2] = v590;
  v722[3] = v585;
  v591 = vrshrq_n_s32(vsraq_n_s32(v748, v748, 0x1FuLL), 2uLL);
  v589 = vrshrq_n_s32(vsraq_n_s32(v749, v749, 0x1FuLL), 2uLL);
  v742 = v580;
  v743 = v577;
  v744 = v574;
  v745 = v571;
  v746 = v604;
  v747 = v601;
  v748 = v591;
  v749 = v589;
  highbd_dct8x32_body_first_pass(&v723, &v712);
  highbd_partial_add_round_shift(&v723, &v712);
  v300 = &v838;
  v991 = vld4q_f32(v300);
  v301 = &v934;
  v1039 = vld4q_f32(v301);
  v302 = &v806;
  v1064 = vld4q_f32(v302);
  v303 = &v902;
  v1074 = vld4q_f32(v303);
  v583 = vaddq_s32(v1074.val[2], v1064.val[1]);
  v586 = vaddq_s32(v1074.val[3], v1064.val[0]);
  v567 = vaddq_s32(v1074.val[1], v1064.val[2]);
  v529 = vaddq_s32(v1074.val[0], v1064.val[3]);
  v522 = vsubq_s32(v1064.val[3], v1074.val[0]);
  v509 = vsubq_s32(v1064.val[2], v1074.val[1]);
  v304 = &v774;
  v1010 = vld4q_f32(v304);
  v506 = vsubq_s32(v1064.val[1], v1074.val[2]);
  v499 = vsubq_s32(v1064.val[0], v1074.val[3]);
  v454 = vaddq_s32(v1010.val[2], v1039.val[1]);
  v458 = vaddq_s32(v1010.val[3], v1039.val[0]);
  v446 = vaddq_s32(v1010.val[0], v1039.val[3]);
  v450 = vaddq_s32(v1010.val[1], v1039.val[2]);
  v305 = &v870;
  v1064 = vld4q_f32(v305);
  v634 = vsubq_s32(v1039.val[3], v1010.val[0]);
  v482 = vsubq_s32(v1039.val[1], v1010.val[2]);
  v485 = vsubq_s32(v1039.val[2], v1010.val[1]);
  v479 = vsubq_s32(v1039.val[0], v1010.val[3]);
  v426 = vaddq_s32(v1064.val[0], v991.val[1]);
  v427 = vaddq_s32(v1064.val[1], v991.val[0]);
  v423 = vaddq_s32(v307, v991.val[3]);
  v424 = vaddq_s32(v306, v991.val[2]);
  v471 = vsubq_s32(v991.val[2], v306);
  v475 = vsubq_s32(v991.val[3], v307);
  v463 = vsubq_s32(v991.val[0], v1064.val[1]);
  v467 = vsubq_s32(v991.val[1], v1064.val[0]);
  v308 = &v810;
  v1040 = vld4q_f32(v308);
  v309 = &v906;
  v1011 = vld4q_f32(v309);
  v438 = vaddq_s32(v1011.val[2], v1040.val[1]);
  v442 = vaddq_s32(v1011.val[3], v1040.val[0]);
  v431 = vaddq_s32(v1011.val[0], v1040.val[3]);
  v434 = vaddq_s32(v1011.val[1], v1040.val[2]);
  v515 = vsubq_s32(v1040.val[3], v1011.val[0]);
  v488 = vsubq_s32(v1040.val[2], v1011.val[1]);
  v310 = &v938;
  *(&v1064 + 16) = vld4q_f32(v310);
  v311 = &v778;
  v992 = vld4q_f32(v311);
  v518 = vsubq_s32(v1040.val[1], v1011.val[2]);
  v491 = vsubq_s32(v1040.val[0], v1011.val[3]);
  v1035.val[1] = vaddq_s32(v992.val[3], v1064.val[1]);
  v1035.val[2] = vaddq_s32(v992.val[2], v1064.val[2]);
  v1029.val[2] = vaddq_s32(v992.val[1], v1064.val[3]);
  v1035.val[0] = vaddq_s32(v992.val[0], v312);
  v313 = &v842;
  v1041 = vld4q_f32(v313);
  v314 = &v874;
  v1012 = vld4q_f32(v314);
  v637 = vsubq_s32(v312, v992.val[0]);
  v540 = vsubq_s32(v1064.val[3], v992.val[1]);
  v421 = vsubq_s32(v1064.val[1], v992.val[3]);
  v422 = vsubq_s32(v1064.val[2], v992.val[2]);
  v1029.val[1] = vaddq_s32(v1012.val[3], v1041.val[0]);
  v1074.val[1] = vaddq_s32(v1012.val[2], v1041.val[1]);
  v1074.val[2] = vaddq_s32(v1012.val[1], v1041.val[2]);
  v1074.val[3] = vaddq_s32(v1012.val[0], v1041.val[3]);
  v1035.val[3] = vsubq_s32(v1041.val[3], v1012.val[0]);
  v1029.val[3] = vsubq_s32(v1041.val[2], v1012.val[1]);
  v1029.val[0] = vsubq_s32(v1041.val[1], v1012.val[2]);
  v315 = vsubq_s32(v1041.val[0], v1012.val[3]);
  v992.val[0] = vtrn1q_s32(v580, v577);
  v992.val[1] = vtrn1q_s32(v574, v571);
  v992.val[2] = vzip2q_s64(v992.val[0], v992.val[1]);
  v992.val[0].i64[1] = v992.val[1].i64[0];
  v992.val[1] = vtrn2q_s32(v580, v577);
  v992.val[3] = vtrn2q_s32(v574, v571);
  v1041.val[0] = vzip2q_s64(v992.val[1], v992.val[3]);
  v992.val[1].i64[1] = v992.val[3].i64[0];
  v316 = &v966;
  *(&v992 + 48) = vld4q_f32(v316);
  v1041.val[3] = vaddq_s32(v1012.val[2], v992.val[0]);
  v1074.val[0] = vsubq_s32(v1012.val[2], v992.val[0]);
  v1041.val[1] = vaddq_s32(v1012.val[1], v992.val[1]);
  v317 = vsubq_s32(v1012.val[1], v992.val[1]);
  v1012.val[3] = vaddq_s32(v1012.val[0], v992.val[2]);
  v1064.val[3] = vsubq_s32(v1012.val[0], v992.val[2]);
  v1064.val[1] = vaddq_s32(v992.val[3], v1041.val[0]);
  v1064.val[0] = vsubq_s32(v992.val[3], v1041.val[0]);
  v1012.val[0] = vtrn1q_s32(v604, v601);
  v1012.val[1] = vtrn1q_s32(v591, v589);
  v1064.val[2] = vzip2q_s64(v1012.val[0], v1012.val[1]);
  v1012.val[0].i64[1] = v1012.val[1].i64[0];
  v1012.val[1] = vtrn2q_s32(v604, v601);
  v1012.val[2] = vtrn2q_s32(v591, v589);
  v1041.val[0] = vzip2q_s64(v1012.val[1], v1012.val[2]);
  v318 = &v970;
  v993 = vld4q_f32(v318);
  v1012.val[1].i64[1] = v1012.val[2].i64[0];
  v701 = v1064.val[1];
  v702 = v1012.val[3];
  v703 = v1041.val[1];
  v704 = v1041.val[3];
  v705[0] = v427;
  v705[1] = v426;
  v705[2] = v424;
  v705[3] = v423;
  v706[0] = v458;
  v706[1] = v454;
  v706[2] = v450;
  v706[3] = v446;
  v707[0] = v586;
  v707[1] = v583;
  v707[2] = v567;
  v707[3] = v529;
  v690 = vaddq_s32(v993.val[0], v1041.val[0]);
  v691 = vaddq_s32(v993.val[1], v1064.val[2]);
  v692 = vaddq_s32(v993.val[2], v1012.val[1]);
  v693 = vaddq_s32(v993.val[3], v1012.val[0]);
  v694[0] = v1029.val[1];
  v694[1] = v1074.val[1];
  v694[2] = v1074.val[2];
  v694[3] = v1074.val[3];
  v695[0] = v1035.val[1];
  v695[1] = v1035.val[2];
  v695[2] = v1029.val[2];
  v695[3] = v1035.val[0];
  v696[0] = v442;
  v696[1] = v438;
  v696[2] = v434;
  v696[3] = v431;
  v708[0] = v522;
  v708[1] = v509;
  v708[2] = v506;
  v708[3] = v499;
  v709[0] = v634;
  v709[1] = v485;
  v709[2] = v482;
  v709[3] = v479;
  v710[0] = v475;
  v710[1] = v471;
  v710[2] = v467;
  v710[3] = v463;
  v711[0] = v1074.val[0];
  v711[1] = v317;
  v711[2] = v1064.val[3];
  v711[3] = v1064.val[0];
  v697[0] = v515;
  v697[1] = v488;
  v697[2] = v518;
  v697[3] = v491;
  v698[0] = v637;
  v698[1] = v540;
  v698[2] = v422;
  v698[3] = v421;
  v699[0] = v1035.val[3];
  v699[1] = v1029.val[3];
  v699[2] = v1029.val[0];
  v699[3] = v315;
  v700[0] = vsubq_s32(v993.val[3], v1012.val[0]);
  v700[1] = vsubq_s32(v993.val[2], v1012.val[1]);
  v700[2] = vsubq_s32(v993.val[1], v1064.val[2]);
  v700[3] = vsubq_s32(v993.val[0], v1041.val[0]);
  highbd_dct8x32_body_first_pass(&v701, &v690);
  highbd_partial_add_round_shift(&v701, &v690);
  v319 = &v846;
  v994 = vld4q_f32(v319);
  v320 = &v942;
  v1052 = vld4q_f32(v320);
  v321 = &v814;
  v1066 = vld4q_f32(v321);
  v322 = &v910;
  v1036 = vld4q_f32(v322);
  v323 = &v782;
  v1076 = vld4q_f32(v323);
  v324 = &v878;
  v1030 = vld4q_f32(v324);
  v640 = vaddq_s32(v1030.val[3], v994.val[0]);
  v568 = vaddq_s32(v1036.val[3], v1066.val[0]);
  v545 = vaddq_s32(v1036.val[1], v1066.val[2]);
  v547 = vaddq_s32(v1036.val[2], v1066.val[1]);
  v541 = vsubq_s32(v1066.val[3], v1036.val[0]);
  v543 = vaddq_s32(v1036.val[0], v1066.val[3]);
  v523 = vsubq_s32(v1066.val[1], v1036.val[2]);
  v525 = vsubq_s32(v1066.val[2], v1036.val[1]);
  v483 = vaddq_s32(v1076.val[2], v1052.val[1]);
  v486 = vaddq_s32(v1076.val[3], v1052.val[0]);
  v476 = vaddq_s32(v1076.val[0], v1052.val[3]);
  v480 = vaddq_s32(v1076.val[1], v1052.val[2]);
  v516 = vsubq_s32(v1052.val[3], v1076.val[0]);
  v519 = vsubq_s32(v1066.val[0], v1036.val[3]);
  v507 = vsubq_s32(v1052.val[1], v1076.val[2]);
  v510 = vsubq_s32(v1052.val[2], v1076.val[1]);
  v459 = vaddq_s32(v1030.val[1], v994.val[2]);
  v464 = vaddq_s32(v1030.val[2], v994.val[1]);
  v455 = vaddq_s32(v1030.val[0], v994.val[3]);
  v496 = vsubq_s32(v994.val[3], v1030.val[0]);
  v500 = vsubq_s32(v1052.val[0], v1076.val[3]);
  v492 = vsubq_s32(v994.val[1], v1030.val[2]);
  v494 = vsubq_s32(v994.val[2], v1030.val[1]);
  v489 = vsubq_s32(v994.val[0], v1030.val[3]);
  v325 = &v974;
  v995 = vld4q_f32(v325);
  v326 = &v750;
  *(&v1052 + 48) = vld4q_f32(v326);
  v1036.val[1] = vaddq_s32(v327, v995.val[0]);
  v1036.val[2] = vaddq_s32(v328, v995.val[1]);
  v1036.val[3] = vaddq_s32(v329, v995.val[2]);
  v1076.val[1] = vaddq_s32(v1052.val[3], v995.val[3]);
  v643 = vsubq_s32(v995.val[3], v1052.val[3]);
  v549 = vsubq_s32(v995.val[2], v329);
  v330 = &v818;
  v1031 = vld4q_f32(v330);
  v331 = &v914;
  v1013 = vld4q_f32(v331);
  v1066.val[1] = vsubq_s32(v995.val[1], v328);
  v502 = vsubq_s32(v995.val[0], v327);
  v435 = vaddq_s32(v1013.val[2], v1031.val[1]);
  v439 = vaddq_s32(v1013.val[3], v1031.val[0]);
  v428 = vaddq_s32(v1013.val[0], v1031.val[3]);
  v432 = vaddq_s32(v1013.val[1], v1031.val[2]);
  v332 = &v946;
  v1052 = vld4q_f32(v332);
  v333 = &v786;
  v996 = vld4q_f32(v333);
  v527 = vsubq_s32(v1031.val[3], v1013.val[0]);
  v504 = vsubq_s32(v1031.val[2], v1013.val[1]);
  v468 = vsubq_s32(v1031.val[0], v1013.val[3]);
  v472 = vsubq_s32(v1031.val[1], v1013.val[2]);
  v1076.val[0] = vaddq_s32(v996.val[3], v334);
  v1031.val[2] = vaddq_s32(v996.val[2], v1052.val[0]);
  v1031.val[3] = vaddq_s32(v996.val[1], v1052.val[1]);
  v1036.val[0] = vaddq_s32(v996.val[0], v1052.val[2]);
  v447 = vsubq_s32(v1052.val[1], v996.val[1]);
  v451 = vsubq_s32(v1052.val[2], v996.val[0]);
  v443 = vsubq_s32(v1052.val[0], v996.val[2]);
  v1031.val[1] = vsubq_s32(v334, v996.val[3]);
  v335 = &v850;
  v1052 = vld4q_f32(v335);
  v336 = &v882;
  v997 = vld4q_f32(v336);
  v338 = &v978;
  *(&v1052 + 48) = vld4q_f32(v338);
  v1014 = vld4q_f32(v754.i32);
  v679 = v1036.val[1];
  v680 = v1036.val[2];
  v681 = v1036.val[3];
  v682 = v1076.val[1];
  v683[0] = v640;
  v683[1] = v464;
  v683[2] = v459;
  v683[3] = v455;
  v684[0] = v486;
  v684[1] = v483;
  v684[2] = v480;
  v684[3] = v476;
  v685[0] = v568;
  v685[1] = v547;
  v685[2] = v545;
  v685[3] = v543;
  v668 = vaddq_s32(v1014.val[3], v1052.val[3]);
  v669 = vaddq_s32(v1014.val[2], v339);
  v670 = vaddq_s32(v1014.val[1], v340);
  v671 = vaddq_s32(v1014.val[0], v341);
  v672[0] = vaddq_s32(v997.val[3], v337);
  v672[1] = vaddq_s32(v997.val[2], v1052.val[0]);
  v672[2] = vaddq_s32(v997.val[1], v1052.val[1]);
  v672[3] = vaddq_s32(v997.val[0], v1052.val[2]);
  v673[0] = v1076.val[0];
  v673[1] = v1031.val[2];
  v673[2] = v1031.val[3];
  v673[3] = v1036.val[0];
  v674[0] = v439;
  v674[1] = v435;
  v674[2] = v432;
  v674[3] = v428;
  v686[0] = v541;
  v686[1] = v525;
  v686[2] = v523;
  v686[3] = v519;
  v687[0] = v516;
  v687[1] = v510;
  v687[2] = v507;
  v687[3] = v500;
  v688[0] = v496;
  v688[1] = v494;
  v688[2] = v492;
  v688[3] = v489;
  v689[0] = v643;
  v689[1] = v549;
  v689[2] = v1066.val[1];
  v689[3] = v502;
  v675[0] = v527;
  v675[1] = v504;
  v675[2] = v472;
  v675[3] = v468;
  v676[0] = v451;
  v676[1] = v447;
  v676[2] = v443;
  v676[3] = v1031.val[1];
  v677[0] = vsubq_s32(v1052.val[2], v997.val[0]);
  v677[1] = vsubq_s32(v1052.val[1], v997.val[1]);
  v677[2] = vsubq_s32(v1052.val[0], v997.val[2]);
  v677[3] = vsubq_s32(v337, v997.val[3]);
  v678[0] = vsubq_s32(v341, v1014.val[0]);
  v678[1] = vsubq_s32(v340, v1014.val[1]);
  v678[2] = vsubq_s32(v339, v1014.val[2]);
  v678[3] = vsubq_s32(v1052.val[3], v1014.val[3]);
  highbd_dct8x32_body_first_pass(&v679, &v668);
  highbd_partial_add_round_shift(&v679, &v668);
  v342 = &v854;
  v998 = vld4q_f32(v342);
  v343 = &v950;
  v1053 = vld4q_f32(v343);
  v344 = &v822;
  v1067 = vld4q_f32(v344);
  v345 = &v918;
  v1037 = vld4q_f32(v345);
  v346 = &v790;
  v1077 = vld4q_f32(v346);
  v1032 = vld4q_f32(v886.i32);
  v553 = vaddq_s32(v1032.val[3], v998.val[0]);
  v531 = vaddq_s32(v1037.val[2], v1067.val[1]);
  v534 = vaddq_s32(v1037.val[3], v1067.val[0]);
  v524 = vaddq_s32(v1037.val[0], v1067.val[3]);
  v526 = vaddq_s32(v1037.val[1], v1067.val[2]);
  v517 = vsubq_s32(v1067.val[2], v1037.val[1]);
  v520 = vsubq_s32(v1067.val[3], v1037.val[0]);
  v512 = vsubq_s32(v1067.val[0], v1037.val[3]);
  v514 = vsubq_s32(v1067.val[1], v1037.val[2]);
  v484 = vaddq_s32(v1077.val[2], v1053.val[1]);
  v487 = vaddq_s32(v1077.val[3], v1053.val[0]);
  v477 = vaddq_s32(v1077.val[0], v1053.val[3]);
  v481 = vaddq_s32(v1077.val[1], v1053.val[2]);
  v508 = vsubq_s32(v1053.val[2], v1077.val[1]);
  v511 = vsubq_s32(v1053.val[3], v1077.val[0]);
  v503 = vsubq_s32(v1053.val[0], v1077.val[3]);
  v505 = vsubq_s32(v1053.val[1], v1077.val[2]);
  v460 = vaddq_s32(v1032.val[1], v998.val[2]);
  v465 = vaddq_s32(v1032.val[2], v998.val[1]);
  v456 = vaddq_s32(v1032.val[0], v998.val[3]);
  v497 = vsubq_s32(v998.val[2], v1032.val[1]);
  v501 = vsubq_s32(v998.val[3], v1032.val[0]);
  v493 = vsubq_s32(v998.val[0], v1032.val[3]);
  v495 = vsubq_s32(v998.val[1], v1032.val[2]);
  v347 = &v982;
  v999 = vld4q_f32(v347);
  *(&v1053 + 48) = vld4q_f32(v758.i32);
  v1037.val[1] = vaddq_s32(v348, v999.val[0]);
  v1037.val[2] = vaddq_s32(v349, v999.val[1]);
  v1037.val[3] = vaddq_s32(v350, v999.val[2]);
  v1077.val[1] = vaddq_s32(v1053.val[3], v999.val[3]);
  v555 = vsubq_s32(v999.val[3], v1053.val[3]);
  v490 = vsubq_s32(v999.val[2], v350);
  v351 = &v826;
  v1033 = vld4q_f32(v351);
  v352 = &v922;
  v1015 = vld4q_f32(v352);
  v1067.val[1] = vsubq_s32(v999.val[1], v349);
  v536 = vsubq_s32(v999.val[0], v348);
  v436 = vaddq_s32(v1015.val[2], v1033.val[1]);
  v440 = vaddq_s32(v1015.val[3], v1033.val[0]);
  v429 = vaddq_s32(v1015.val[0], v1033.val[3]);
  v433 = vaddq_s32(v1015.val[1], v1033.val[2]);
  v353 = &v954;
  v1053 = vld4q_f32(v353);
  v354 = &v794;
  v1000 = vld4q_f32(v354);
  v564 = vsubq_s32(v1033.val[3], v1015.val[0]);
  v538 = vsubq_s32(v1033.val[2], v1015.val[1]);
  v469 = vsubq_s32(v1033.val[0], v1015.val[3]);
  v473 = vsubq_s32(v1033.val[1], v1015.val[2]);
  v1077.val[0] = vaddq_s32(v1000.val[3], v355);
  v1033.val[2] = vaddq_s32(v1000.val[2], v1053.val[0]);
  v1033.val[3] = vaddq_s32(v1000.val[1], v1053.val[1]);
  v1037.val[0] = vaddq_s32(v1000.val[0], v1053.val[2]);
  v448 = vsubq_s32(v1053.val[1], v1000.val[1]);
  v452 = vsubq_s32(v1053.val[2], v1000.val[0]);
  v444 = vsubq_s32(v1053.val[0], v1000.val[2]);
  v1033.val[1] = vsubq_s32(v355, v1000.val[3]);
  v356 = &v858;
  v1053 = vld4q_f32(v356);
  v1001 = vld4q_f32(v890.i32);
  v358 = &v986;
  *(&v1053 + 48) = vld4q_f32(v358);
  v1016 = vld4q_f32(v762.i32);
  v657 = v1037.val[1];
  v658 = v1037.val[2];
  v659 = v1037.val[3];
  v660 = v1077.val[1];
  v661[0] = v553;
  v661[1] = v465;
  v661[2] = v460;
  v661[3] = v456;
  v662[0] = v487;
  v662[1] = v484;
  v662[2] = v481;
  v662[3] = v477;
  v663[0] = v534;
  v663[1] = v531;
  v663[2] = v526;
  v663[3] = v524;
  v646 = vaddq_s32(v1016.val[3], v1053.val[3]);
  v647 = vaddq_s32(v1016.val[2], v359);
  v648 = vaddq_s32(v1016.val[1], v360);
  v649 = vaddq_s32(v1016.val[0], v361);
  v650[0] = vaddq_s32(v1001.val[3], v357);
  v650[1] = vaddq_s32(v1001.val[2], v1053.val[0]);
  v650[2] = vaddq_s32(v1001.val[1], v1053.val[1]);
  v650[3] = vaddq_s32(v1001.val[0], v1053.val[2]);
  v651[0] = v1077.val[0];
  v651[1] = v1033.val[2];
  v651[2] = v1033.val[3];
  v651[3] = v1037.val[0];
  v652[0] = v440;
  v652[1] = v436;
  v652[2] = v433;
  v652[3] = v429;
  v664[0] = v520;
  v664[1] = v517;
  v664[2] = v514;
  v664[3] = v512;
  v665[0] = v511;
  v665[1] = v508;
  v665[2] = v505;
  v665[3] = v503;
  v666[0] = v501;
  v666[1] = v497;
  v666[2] = v495;
  v666[3] = v493;
  v667[0] = v555;
  v667[1] = v490;
  v667[2] = v1067.val[1];
  v667[3] = v536;
  v653[0] = v564;
  v653[1] = v538;
  v653[2] = v473;
  v653[3] = v469;
  v654[0] = v452;
  v654[1] = v448;
  v654[2] = v444;
  v654[3] = v1033.val[1];
  v655[0] = vsubq_s32(v1053.val[2], v1001.val[0]);
  v655[1] = vsubq_s32(v1053.val[1], v1001.val[1]);
  v655[2] = vsubq_s32(v1053.val[0], v1001.val[2]);
  v655[3] = vsubq_s32(v357, v1001.val[3]);
  v656[0] = vsubq_s32(v361, v1016.val[0]);
  v656[1] = vsubq_s32(v360, v1016.val[1]);
  v656[2] = vsubq_s32(v359, v1016.val[2]);
  v656[3] = vsubq_s32(v1053.val[3], v1016.val[3]);
  highbd_dct8x32_body_first_pass(&v657, &v646);
  highbd_partial_add_round_shift(&v657, &v646);
  v362 = 0;
  v363 = v727;
  v1037 = vld4q_f32(v363);
  v364 = v716;
  v1002 = vld4q_f32(v364);
  v365 = v728;
  v1078 = vld4q_f32(v365);
  v366 = v717;
  v1068 = vld4q_f32(v366);
  v367 = v729;
  v1055 = vld4q_f32(v367);
  v368 = v718;
  v1017 = vld4q_f32(v368);
  v607 = v1017;
  v369 = v730;
  v1018 = vld4q_f32(v369);
  v609 = v1018;
  v370 = v719;
  v1042 = vld4q_f32(v370);
  v830 = v1033.val[1];
  v831 = v1033.val[2];
  v832 = v1033.val[3];
  v833 = v1037.val[0];
  v834 = v1002.val[0];
  v371 = v731;
  v1037 = vld4q_f32(v371);
  v835 = v1002.val[1];
  v836 = v1002.val[2];
  v837 = v1002.val[3];
  v926 = v1078.val[0];
  v927 = v1078.val[1];
  v928 = v1078.val[2];
  v372 = v720;
  v1019 = vld4q_f32(v372);
  v373 = v732;
  v1003 = vld4q_f32(v373);
  v929 = v1078.val[3];
  v930 = v1068.val[0];
  v931 = v1068.val[1];
  v932 = v1068.val[2];
  v933 = v1068.val[3];
  v798 = v1055.val[0];
  v374 = v721;
  v1069 = vld4q_f32(v374);
  v799 = v1055.val[1];
  v800 = v1055.val[2];
  v801 = v1055.val[3];
  v802 = v607.val[0];
  v803 = v607.val[1];
  v804 = v607.val[2];
  v375 = v733;
  v1079 = vld4q_f32(v375);
  v626 = v1079;
  v376 = v722;
  v1080 = vld4q_f32(v376);
  v630 = v1080;
  v805 = v607.val[3];
  v894 = v609.val[0];
  v895 = v609.val[1];
  v896 = v609.val[2];
  v897 = v609.val[3];
  v898 = v1042.val[0];
  v377 = v705;
  v1081 = vld4q_f32(v377);
  v899 = v1042.val[1];
  v900 = v1042.val[2];
  v901 = v1042.val[3];
  v766 = v1033.val[1];
  v767 = v1033.val[2];
  v768 = v1033.val[3];
  v378 = v694;
  v1056 = vld4q_f32(v378);
  v769 = v1037.val[0];
  v770 = v1019.val[0];
  v771 = v1019.val[1];
  v772 = v1019.val[2];
  v773 = v1019.val[3];
  v1019.val[3] = vtrn1q_s32(v723, v724);
  v1033.val[1] = vtrn2q_s32(v723, v724);
  v1019.val[2] = vtrn1q_s32(v725, v726);
  v1037.val[0] = vtrn2q_s32(v725, v726);
  v1033.val[3] = vtrn1q_s32(v712, v713);
  v1033.val[2] = vtrn2q_s32(v712, v713);
  v1033.val[0] = vtrn1q_s32(v714, v715);
  v615 = vtrn2q_s32(v714, v715);
  v862 = v1003.val[0];
  v863 = v1003.val[1];
  v864 = v1003.val[2];
  v865 = v1003.val[3];
  v379 = v706;
  v1043 = vld4q_f32(v379);
  v866 = v1069.val[0];
  v867 = v1069.val[1];
  v868 = v1069.val[2];
  v869 = v1069.val[3];
  v622 = vzip2q_s64(v1019.val[3], v1019.val[2]);
  v380 = v695;
  v1004 = vld4q_f32(v380);
  v1019.val[3].i64[1] = v1019.val[2].i64[0];
  v618 = v1019.val[3];
  v734 = v626.val[0];
  v735 = v626.val[1];
  v736 = v626.val[2];
  v737 = v626.val[3];
  v381 = v707;
  v1020 = vld4q_f32(v381);
  v738 = v630.val[0];
  v739 = v630.val[1];
  v740 = v630.val[2];
  v741 = v630.val[3];
  v626.val[0] = vzip2q_s64(v1033.val[1], v1037.val[0]);
  v382 = v696;
  v1070 = vld4q_f32(v382);
  v1033.val[1].i64[1] = v1037.val[0].i64[0];
  v838 = v1081.val[0];
  v839 = v1081.val[1];
  v840 = v1081.val[2];
  v841 = v1081.val[3];
  v383 = v708;
  v1038 = vld4q_f32(v383);
  v842 = v1056.val[0];
  v843 = v1056.val[1];
  v844 = v1056.val[2];
  v845 = v1056.val[3];
  v612 = vzip2q_s64(v1033.val[3], v1033.val[0]);
  v384 = v697;
  v1057 = vld4q_f32(v384);
  v631 = v1057;
  v1033.val[3].i64[1] = v1033.val[0].i64[0];
  v934 = v1043.val[0];
  v935 = v1043.val[1];
  v936 = v1043.val[2];
  v937 = v1043.val[3];
  v385 = v709;
  v1058 = vld4q_f32(v385);
  v938 = v1004.val[0];
  v939 = v1004.val[1];
  v940 = v1004.val[2];
  v941 = v1004.val[3];
  v1033.val[0] = vzip2q_s64(v1033.val[2], v615);
  v386 = v698;
  v1044 = vld4q_f32(v386);
  v1033.val[2].i64[1] = v615.i64[0];
  v806 = v1020.val[0];
  v807 = v1020.val[1];
  v808 = v1020.val[2];
  v809 = v1020.val[3];
  v387 = v710;
  v1082 = vld4q_f32(v387);
  v388 = v699;
  v1005 = vld4q_f32(v388);
  v958 = v618;
  v959 = v1033.val[1];
  v960 = v622;
  v961 = v626.val[0];
  v962 = v1033.val[3];
  v963 = v1033.val[2];
  v964 = v612;
  v965 = v1033.val[0];
  v810 = v1070.val[0];
  v811 = v1070.val[1];
  v812 = v1070.val[2];
  v813 = v1070.val[3];
  v902 = v1038.val[0];
  v903 = v1038.val[1];
  v904 = v1038.val[2];
  v905 = v1038.val[3];
  v1033.val[0] = vtrn1q_s32(v701, v702);
  v1020.val[0] = vtrn2q_s32(v701, v702);
  v1020.val[1] = vtrn1q_s32(v703, v704);
  v1070.val[0] = vtrn2q_s32(v703, v704);
  v1070.val[1] = vtrn1q_s32(v690, v691);
  v1020.val[2] = vtrn2q_s32(v690, v691);
  v1020.val[3] = vtrn1q_s32(v692, v693);
  v1070.val[2] = vtrn2q_s32(v692, v693);
  v1070.val[3] = vzip2q_s64(v1033.val[0], v1020.val[1]);
  v1033.val[0].i64[1] = v1020.val[1].i64[0];
  v1020.val[1] = vzip2q_s64(v1020.val[0], v1070.val[0]);
  v1020.val[0].i64[1] = v1070.val[0].i64[0];
  v1070.val[0] = vzip2q_s64(v1070.val[1], v1020.val[3]);
  v1070.val[1].i64[1] = v1020.val[3].i64[0];
  v1020.val[3] = vzip2q_s64(v1020.val[2], v1070.val[2]);
  v1020.val[2].i64[1] = v1070.val[2].i64[0];
  v966 = v1033.val[0];
  v967 = v1020.val[0];
  v968 = v1070.val[3];
  v969 = v1020.val[1];
  v970 = v1070.val[1];
  v971 = v1020.val[2];
  v972 = v1070.val[0];
  v973 = v1020.val[3];
  v906 = v631.val[0];
  v907 = v631.val[1];
  v908 = v631.val[2];
  v909 = v631.val[3];
  v774 = v1058.val[0];
  v775 = v1058.val[1];
  v776 = v1058.val[2];
  v777 = v1058.val[3];
  v778 = v1044.val[0];
  v779 = v1044.val[1];
  v389 = v711;
  v1021 = vld4q_f32(v389);
  v390 = v700;
  v1059 = vld4q_f32(v390);
  v780 = v1044.val[2];
  v781 = v1044.val[3];
  v870 = v1082.val[0];
  v871 = v1082.val[1];
  v872 = v1082.val[2];
  v873 = v1082.val[3];
  v874 = v1005.val[0];
  v875 = v1005.val[1];
  v876 = v1005.val[2];
  v877 = v1005.val[3];
  v742 = v1021.val[0];
  v743 = v1021.val[1];
  v744 = v1021.val[2];
  v745 = v1021.val[3];
  v746 = v1059.val[0];
  v747 = v1059.val[1];
  v748 = v1059.val[2];
  v749 = v1059.val[3];
  v391 = v683;
  v1006 = vld4q_f32(v391);
  v392 = v672;
  v1022 = vld4q_f32(v392);
  v1070.val[0] = vtrn1q_s32(v679, v680);
  v1044.val[0] = vtrn2q_s32(v679, v680);
  v1044.val[1] = vtrn1q_s32(v681, v682);
  v1059.val[0] = vtrn2q_s32(v681, v682);
  v1059.val[1] = vtrn1q_s32(v668, v669);
  v1044.val[2] = vtrn2q_s32(v668, v669);
  v1044.val[3] = vtrn1q_s32(v670, v671);
  v1059.val[2] = vtrn2q_s32(v670, v671);
  v1059.val[3] = vzip2q_s64(v1070.val[0], v1044.val[1]);
  v1070.val[0].i64[1] = v1044.val[1].i64[0];
  v1044.val[1] = vzip2q_s64(v1044.val[0], v1059.val[0]);
  v1044.val[0].i64[1] = v1059.val[0].i64[0];
  v1059.val[0] = vzip2q_s64(v1059.val[1], v1044.val[3]);
  v1059.val[1].i64[1] = v1044.val[3].i64[0];
  v1044.val[3] = vzip2q_s64(v1044.val[2], v1059.val[2]);
  v1044.val[2].i64[1] = v1059.val[2].i64[0];
  v974 = v1070.val[0];
  v975 = v1044.val[0];
  v976 = v1059.val[3];
  v977 = v1044.val[1];
  v978 = v1059.val[1];
  v979 = v1044.val[2];
  v980 = v1059.val[0];
  v981 = v1044.val[3];
  v846 = v1006.val[0];
  v847 = v1006.val[1];
  v848 = v1006.val[2];
  v849 = v1006.val[3];
  v850 = v1022.val[0];
  v851 = v1022.val[1];
  v852 = v1022.val[2];
  v853 = v1022.val[3];
  v393 = v684;
  v1007 = vld4q_f32(v393);
  v394 = v673;
  v1023 = vld4q_f32(v394);
  v395 = v685;
  v1045 = vld4q_f32(v395);
  v396 = v674;
  v1060 = vld4q_f32(v396);
  v942 = v1007.val[0];
  v943 = v1007.val[1];
  v944 = v1007.val[2];
  v945 = v1007.val[3];
  v946 = v1023.val[0];
  v947 = v1023.val[1];
  v948 = v1023.val[2];
  v949 = v1023.val[3];
  v814 = v1045.val[0];
  v815 = v1045.val[1];
  v816 = v1045.val[2];
  v817 = v1045.val[3];
  v397 = v686;
  v1008 = vld4q_f32(v397);
  v398 = v675;
  v1024 = vld4q_f32(v398);
  v399 = v687;
  v1046 = vld4q_f32(v399);
  v400 = v676;
  v1071 = vld4q_f32(v400);
  v818 = v1060.val[0];
  v819 = v1060.val[1];
  v820 = v1060.val[2];
  v821 = v1060.val[3];
  v910 = v1008.val[0];
  v911 = v1008.val[1];
  v912 = v1008.val[2];
  v913 = v1008.val[3];
  v914 = v1024.val[0];
  v915 = v1024.val[1];
  v916 = v1024.val[2];
  v917 = v1024.val[3];
  v782 = v1046.val[0];
  v783 = v1046.val[1];
  v784 = v1046.val[2];
  v785 = v1046.val[3];
  v786 = v1071.val[0];
  v787 = v1071.val[1];
  v401 = v688;
  v1009 = vld4q_f32(v401);
  v402 = v677;
  v1025 = vld4q_f32(v402);
  v403 = v689;
  v1047 = vld4q_f32(v403);
  v1061 = vld4q_f32(v678);
  v788 = v1071.val[2];
  v789 = v1071.val[3];
  v878 = v1009.val[0];
  v879 = v1009.val[1];
  v880 = v1009.val[2];
  v881 = v1009.val[3];
  v882 = v1025.val[0];
  v883 = v1025.val[1];
  v884 = v1025.val[2];
  v885 = v1025.val[3];
  v750 = v1047.val[0];
  v751 = v1047.val[1];
  v752 = v1047.val[2];
  v753 = v1047.val[3];
  v754 = v1061.val[0];
  v755 = v1061.val[1];
  v756 = v1061.val[2];
  v757 = v1061.val[3];
  v1026 = vld4q_f32(v661);
  v404 = v650;
  v1048 = vld4q_f32(v404);
  v1071.val[0] = vtrn1q_s32(v657, v658);
  v1009.val[0] = vtrn2q_s32(v657, v658);
  v1009.val[1] = vtrn1q_s32(v659, v660);
  v1061.val[0] = vtrn2q_s32(v659, v660);
  v1061.val[1] = vtrn1q_s32(v646, v647);
  v1009.val[3] = vtrn2q_s32(v646, v647);
  v1071.val[1] = vtrn1q_s32(v648, v649);
  v1061.val[2] = vtrn2q_s32(v648, v649);
  v1061.val[3] = vzip2q_s64(v1071.val[0], v1009.val[1]);
  v1071.val[0].i64[1] = v1009.val[1].i64[0];
  v1071.val[2] = vzip2q_s64(v1009.val[0], v1061.val[0]);
  v1071.val[3].i64[0] = v1009.val[0].i64[0];
  v1071.val[3].i64[1] = v1061.val[0].i64[0];
  v1009.val[0] = vzip2q_s64(v1061.val[1], v1071.val[1]);
  v1009.val[2].i64[0] = v1061.val[1].i64[0];
  v1009.val[2].i64[1] = v1071.val[1].i64[0];
  v1009.val[1] = vzip2q_s64(v1009.val[3], v1061.val[2]);
  v1009.val[3].i64[1] = v1061.val[2].i64[0];
  v982 = v1071.val[0];
  v983 = v1071.val[3];
  v854 = v1026.val[0];
  v855 = v1026.val[1];
  v856 = v1026.val[2];
  v857 = v1026.val[3];
  v858 = v1048.val[0];
  v859 = v1048.val[1];
  v860 = v1048.val[2];
  v861 = v1048.val[3];
  v405 = v662;
  v1027 = vld4q_f32(v405);
  v406 = v651;
  v1049 = vld4q_f32(v406);
  v407 = v663;
  v1082 = vld4q_f32(v407);
  v408 = v652;
  v1034 = vld4q_f32(v408);
  v984 = v1061.val[3];
  v985 = v1071.val[2];
  v950 = v1027.val[0];
  v951 = v1027.val[1];
  v952 = v1027.val[2];
  v953 = v1027.val[3];
  v954 = v1049.val[0];
  v955 = v1049.val[1];
  v956 = v1049.val[2];
  v957 = v1049.val[3];
  v822 = v1071.val[3];
  v823 = v1082.val[0];
  v824 = v1082.val[1];
  v825 = v1082.val[2];
  v826 = v1034.val[0];
  v827 = v1034.val[1];
  v828 = v1034.val[2];
  v829 = v1034.val[3];
  v409 = v664;
  v1028 = vld4q_f32(v409);
  v410 = v653;
  v1050 = vld4q_f32(v410);
  v411 = v665;
  v1062 = vld4q_f32(v411);
  v412 = v654;
  v1072 = vld4q_f32(v412);
  v986 = v1009.val[2];
  v987 = v1009.val[3];
  v918 = v1028.val[0];
  v919 = v1028.val[1];
  v920 = v1028.val[2];
  v921 = v1028.val[3];
  v922 = v1050.val[0];
  v923 = v1050.val[1];
  v924 = v1050.val[2];
  v925 = v1050.val[3];
  v790 = v1062.val[0];
  v791 = v1062.val[1];
  v792 = v1062.val[2];
  v793 = v1062.val[3];
  v794 = v1072.val[0];
  v795 = v1072.val[1];
  v796 = v1072.val[2];
  v797 = v1072.val[3];
  v413 = v666;
  *(&v1009 + 32) = vld4q_f32(v413);
  v1051 = vld4q_f32(v655);
  v1063 = vld4q_f32(v667);
  v1073 = vld4q_f32(v656);
  v988 = v1009.val[0];
  v989 = v1009.val[1];
  v886 = v1009.val[2];
  v887 = v1009.val[3];
  v888 = v1028.val[0];
  v889 = v1028.val[1];
  v890 = v1051.val[0];
  v891 = v1051.val[1];
  v892 = v1051.val[2];
  v893 = v1051.val[3];
  v758 = v1063.val[0];
  v759 = v1063.val[1];
  v760 = v1063.val[2];
  v761 = v1063.val[3];
  v762 = v1073.val[0];
  v763 = v1073.val[1];
  v764 = v1073.val[2];
  v765 = v1073.val[3];
  do
  {
    v414 = *(&v830 + v362);
    v415 = *(&v926 + v362);
    v416 = *(&v798 + v362);
    *v5 = *(&v958 + v362);
    *(v5 + 16) = v414;
    v417 = *(&v894 + v362);
    v418 = *(&v766 + v362);
    *(v5 + 32) = v415;
    *(v5 + 48) = v416;
    v419 = *(&v862 + v362);
    v420 = *(&v734 + v362);
    *(v5 + 64) = v417;
    *(v5 + 80) = v418;
    *(v5 + 96) = v419;
    *(v5 + 112) = v420;
    v5 += 128;
    v362 += 16;
  }

  while (v362 != 512);
}