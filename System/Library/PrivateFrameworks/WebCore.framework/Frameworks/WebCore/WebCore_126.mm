void vp8cx_pick_filter_level(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 114292);
  v5 = (a2 + 109880);
  v6 = *(a2 + 111104);
  if (*(a2 + 114968) && *(a2 + 111572))
  {
    if (v6 >= 7 && *(a2 + 111576) != 0)
    {
      goto LABEL_7;
    }
  }

  else if (v6 >= 7)
  {
LABEL_7:
    if (v6 < 0x11)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 >> 3;
    }

    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:
  v9 = *v5;
  v10 = *(a2 + 147512) > 8u;
  memset(v99, 0, 32);
  if (v10)
  {
    v11 = 47;
  }

  else
  {
    v11 = 63;
  }

  memset(&v99[2], 0, 224);
  *v5 = (a2 + 114992);
  v12 = *(a2 + 111060);
  if (v12)
  {
    v12 = *v4;
  }

  *(a2 + 111564) = v12;
  v13 = *(a2 + 111556);
  v81 = v11;
  v82 = v8;
  if (v13 < v11)
  {
    v11 = *(a2 + 111556);
  }

  if (v13 >= v8)
  {
    v14 = v11;
  }

  else
  {
    v14 = v8;
  }

  v15 = *(v9 + 7);
  v16 = *(a2 + 115048);
  v17 = v9[1];
  if ((v9[38] & 8) != 0)
  {
    if (v17 >= 1)
    {
      v19 = 0;
      v20 = (2 * v16);
      v21 = (2 * v15);
      do
      {
        memcpy(v20, v21, 2 * *v9);
        v21 += 2 * v9[4];
        v20 += 2 * v4[179];
        ++v19;
      }

      while (v19 < v9[1]);
    }
  }

  else if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      memcpy(v16, v15, *v9);
      v15 = v15 + v9[4];
      v16 = v16 + v4[179];
      ++v18;
    }

    while (v18 < v9[1]);
  }

  *(a2 + 81931) = *(a2 + 143060);
  vp8_loop_filter_frame_yonly(a2 + 108032, (a2 + 77952), v14);
  v22 = *(a1 + 4);
  v83 = a2;
  v93 = v9;
  v86 = v5;
  if (v22 < 1 || (v23 = *a1, *a1 < 1))
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = *v5;
    v27 = *(v26 + 56);
    v28 = *(a1 + 56);
    do
    {
      if (v23 >= 1)
      {
        v29 = 0;
        v30 = v28;
        v31 = v27;
        do
        {
          v98 = 0;
          v24 += vpx_mse16x16(v30, *(a1 + 16), v31, *(v26 + 16), &v98);
          v23 = *a1;
          v29 += 16;
          v31 += 16;
          v30 += 16;
        }

        while (*a1 > v29);
        v22 = *(a1 + 4);
        v9 = v93;
      }

      v28 += 16 * *(a1 + 16);
      v27 += 16 * *(v26 + 16);
      v25 += 16;
    }

    while (v25 < v22);
  }

  *(v99 + v14) = v24;
  if (v14 >= 16)
  {
    v32 = v14 >> 2;
  }

  else
  {
    v32 = 4;
  }

  if (v32)
  {
    v33 = 0;
    v34 = v83;
    v36 = v81;
    v35 = v82;
    while (1)
    {
      v39 = (v24 >> (15 - v14 / 8)) * v32;
      v42 = *(v34 + 147512);
      if (v42 <= 0x13)
      {
        v39 = v39 * v42 / 0x14;
      }

      v38 = (v32 + v14) >= v36 ? v36 : v32 + v14;
      LODWORD(v40) = (v14 - v32) <= v35 ? v35 : v14 - v32;
      if (v33 <= 0 && v40 != v14)
      {
        break;
      }

      v40 = v14;
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

LABEL_51:
      if (v40 < v14)
      {
        v41 = -1;
      }

      else
      {
        v41 = 1;
      }

      v32 >>= v40 == v14;
      if (v40 == v14)
      {
        v33 = 0;
      }

      else
      {
        v33 = v41;
      }

      v14 = v40;
      if (!v32)
      {
        goto LABEL_117;
      }
    }

    v43 = *(v99 + v40);
    if (!v43)
    {
      v84 = v40;
      v80 = v33;
      v94 = v38;
      v87 = v39;
      v89 = v32;
      v91 = v14;
      v44 = *v86;
      v45 = *(v9 + 7);
      v46 = *(*v86 + 56);
      v47 = v9[1];
      if ((v9[38] & 8) != 0)
      {
        if (v47 >= 1)
        {
          v49 = 0;
          v50 = (2 * v46);
          v51 = (2 * v45);
          do
          {
            memcpy(v50, v51, 2 * *v9);
            v51 += 2 * v9[4];
            v50 += 2 * *(v44 + 16);
            ++v49;
          }

          while (v49 < v9[1]);
        }
      }

      else if (v47 >= 1)
      {
        v48 = 0;
        do
        {
          memcpy(v46, v45, *v9);
          v45 = v45 + v9[4];
          v46 = v46 + *(v44 + 16);
          ++v48;
        }

        while (v48 < v9[1]);
      }

      *(v34 + 81931) = *(v34 + 143060);
      vp8_loop_filter_frame_yonly(v34 + 108032, (v34 + 77952), v84);
      v52 = *(a1 + 4);
      if (v52 < 1 || (v53 = *a1, *a1 < 1))
      {
        v43 = 0;
      }

      else
      {
        v43 = 0;
        v54 = 0;
        v55 = *v86;
        v56 = *(*v86 + 56);
        v57 = *(a1 + 56);
        v96 = v24;
        do
        {
          if (v53 >= 1)
          {
            v58 = 0;
            v59 = v57;
            v60 = v56;
            do
            {
              v98 = 0;
              v43 += vpx_mse16x16(v59, *(a1 + 16), v60, *(v55 + 16), &v98);
              v53 = *a1;
              v58 += 16;
              v60 += 16;
              v59 += 16;
            }

            while (*a1 > v58);
            v52 = *(a1 + 4);
            v24 = v96;
          }

          v57 += 16 * *(a1 + 16);
          v56 += 16 * *(v55 + 16);
          v54 += 16;
        }

        while (v54 < v52);
      }

      LODWORD(v40) = v84;
      *(v99 + v84) = v43;
      v34 = v83;
      v36 = v81;
      v35 = v82;
      v9 = v93;
      v38 = v94;
      v32 = v89;
      LODWORD(v14) = v91;
      v39 = v87;
      v33 = v80;
    }

    v61 = v43 - v39;
    if (v43 >= v24)
    {
      v62 = v24;
    }

    else
    {
      v62 = v43;
    }

    if (v61 >= v24)
    {
      v40 = v14;
    }

    else
    {
      v40 = v40;
    }

    if (v61 < v24)
    {
      v24 = v62;
    }

    if (v33 < 0)
    {
      goto LABEL_51;
    }

LABEL_98:
    if (v36 != v14)
    {
      v37 = *(v99 + v38);
      if (!v37)
      {
        v85 = v40;
        v95 = v38;
        v88 = v39;
        v90 = v32;
        v92 = v14;
        v63 = *v86;
        v64 = *(v9 + 7);
        v65 = *(*v86 + 56);
        v66 = v9[1];
        if ((v9[38] & 8) != 0)
        {
          if (v66 >= 1)
          {
            v68 = 0;
            v69 = (2 * v65);
            v70 = (2 * v64);
            do
            {
              memcpy(v69, v70, 2 * *v9);
              v70 += 2 * v9[4];
              v69 += 2 * *(v63 + 16);
              ++v68;
            }

            while (v68 < v9[1]);
          }
        }

        else if (v66 >= 1)
        {
          v67 = 0;
          do
          {
            memcpy(v65, v64, *v9);
            v64 = v64 + v9[4];
            v65 = v65 + *(v63 + 16);
            ++v67;
          }

          while (v67 < v9[1]);
        }

        *(v34 + 81931) = *(v34 + 143060);
        vp8_loop_filter_frame_yonly(v34 + 108032, (v34 + 77952), v95);
        v71 = *(a1 + 4);
        if (v71 < 1 || (v72 = *a1, *a1 < 1))
        {
          v37 = 0;
        }

        else
        {
          v37 = 0;
          v73 = 0;
          v74 = *v86;
          v75 = *(*v86 + 56);
          v76 = *(a1 + 56);
          v97 = v24;
          do
          {
            if (v72 >= 1)
            {
              v77 = 0;
              v78 = v76;
              v79 = v75;
              do
              {
                v98 = 0;
                v37 += vpx_mse16x16(v78, *(a1 + 16), v79, *(v74 + 16), &v98);
                v72 = *a1;
                v77 += 16;
                v79 += 16;
                v78 += 16;
              }

              while (*a1 > v77);
              v71 = *(a1 + 4);
              v24 = v97;
            }

            v76 += 16 * *(a1 + 16);
            v75 += 16 * *(v74 + 16);
            v73 += 16;
          }

          while (v73 < v71);
        }

        v9 = v93;
        v38 = v95;
        *(v99 + v95) = v37;
        v34 = v83;
        v36 = v81;
        v35 = v82;
        v32 = v90;
        LODWORD(v14) = v92;
        v39 = v88;
        LODWORD(v40) = v85;
      }

      if (v37 >= (v24 - v39))
      {
        v40 = v40;
      }

      else
      {
        v40 = v38;
      }

      if (v37 < (v24 - v39))
      {
        v24 = v37;
      }
    }

    goto LABEL_51;
  }

  LODWORD(v40) = v14;
LABEL_117:
  v86[419] = v40;
  *v86 = v9;
}

int8x8_t *vp8_deblock(int8x8_t *result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6, double a7, double a8, double a9, double a10, int8x16_t a11, int32x4_t a12)
{
  v14 = 0.306;
  a6.i64[0] = 0.5;
  v15 = a4 * -0.0067 * a4 + a4 * 0.00006 * a4 * a4 + a4 * 0.306 + 0.0065 + 0.5;
  if (v15 < 1)
  {

    return vp8_yv12_copy_frame_c(a2, a3);
  }

  else
  {
    v16 = result;
    if (result[380].i32[1] >= 1)
    {
      v17 = 0;
      v18 = result[377];
      v19 = v18 + 16 * result[381].i32[0];
      v20 = result[388];
      v21 = v15;
      do
      {
        if (v16[381].i32[0] >= 1)
        {
          v39 = 0;
          v40 = v18;
          do
          {
            v41 = 0x101010101010101 * (v21 >> (*(*&v20 + 9) != 0));
            *v40 = v41;
            v40[1] = v41;
            v40 += 2;
            *(v19 + 8 * v39) = v41;
            *&v20 += 76;
            ++v39;
          }

          while (v39 < v16[381].i32[0]);
        }

        *&v20 += 76;
        vpx_post_proc_down_and_across_mb_row_neon((*(a2 + 56) + *(a2 + 16) * (16 * v17)), (*(a3 + 56) + *(a3 + 16) * 16 * v17), *(a2 + 16), *(a3 + 16), *a2, v18, 16, v15, a6, v14, a8, a9, a10, a11, a12);
        v22 = 8 * v17;
        vpx_post_proc_down_and_across_mb_row_neon((*(a2 + 64) + *(a2 + 36) * v22), (*(a3 + 64) + *(a3 + 36) * v22), *(a2 + 36), *(a3 + 36), *(a2 + 20), v19, 8, v23, v24, v25, v26, v27, v28, v29, v30);
        result = vpx_post_proc_down_and_across_mb_row_neon((*(a2 + 72) + *(a2 + 36) * v22), (*(a3 + 72) + *(a3 + 36) * v22), *(a2 + 36), *(a3 + 36), *(a2 + 20), v19, 8, v31, v32, v33, v34, v35, v36, v37, v38);
        ++v17;
      }

      while (v17 < v16[380].i32[1]);
    }
  }

  return result;
}

void *vp8_de_noise(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a1 + 3044);
  v7 = *(a1 + 3016);
  result = memset(v7, (a3 * -0.0067 * a3 + a3 * 0.00006 * a3 * a3 + a3 * 0.306 + 0.0065 + 0.5), 16 * *(a1 + 3048));
  if (v6 >= 1)
  {
    if (a4 == 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(a2 + 16);
        v20 = (*(a2 + 56) + v18 * v19);
        vpx_post_proc_down_and_across_mb_row_neon(v20, v20, v19, v19, *a2, v7, 16, v9, v10, v11, v12, v13, v14, v15, v16);
        v21 = *(a2 + 36);
        v22 = (*(a2 + 64) + v21 * v17);
        vpx_post_proc_down_and_across_mb_row_neon(v22, v22, v21, v21, *(a2 + 20), v7, 8, v23, v24, v25, v26, v27, v28, v29, v30);
        v31 = *(a2 + 36);
        v32 = (*(a2 + 72) + v31 * v17);
        result = vpx_post_proc_down_and_across_mb_row_neon(v32, v32, v31, v31, *(a2 + 20), v7, 8, v33, v34, v35, v36, v37, v38, v39, v40);
        v18 += 16;
        v17 += 8;
        --v6;
      }

      while (v6);
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = *(a2 + 16);
        v43 = (*(a2 + 56) + v41 * v42);
        result = vpx_post_proc_down_and_across_mb_row_neon(v43, v43, v42, v42, *a2, v7, 16, v9, v10, v11, v12, v13, v14, v15, v16);
        v41 += 16;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t vp8_post_proc_frame(uint64_t a1, uint64_t a2, int *a3, double a4, int32x4_t a5, double a6, double a7, double a8, double a9, int8x16_t a10, int32x4_t a11)
{
  v138 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1848);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *a3;
  v14 = 7158278830 * *(a1 + 3524);
  v15 = HIDWORD(v14) + (v14 >> 63);
  if (v15 >= 63)
  {
    v16 = 63;
  }

  else
  {
    v16 = v15;
  }

  if (!v13)
  {
    result = 0;
    v32 = v11[1];
    *a2 = *v11;
    *(a2 + 16) = v32;
    v33 = v11[2];
    v34 = v11[3];
    v35 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v35;
    *(a2 + 32) = v33;
    *(a2 + 48) = v34;
    v36 = v11[6];
    v37 = v11[7];
    v38 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v38;
    *(a2 + 96) = v36;
    *(a2 + 112) = v37;
    v39 = *(a1 + 1828);
    *a2 = *(a1 + 1824);
    *(a2 + 4) = v39;
    *(a2 + 24) = v39 / 2;
    *(a1 + 5848) = *(a1 + 3072);
    *(a1 + 5852) = 1;
    return result;
  }

  v17 = a3[1];
  v18 = a3[2];
  if ((v13 & 4) == 0 || *(a1 + 5864))
  {
    v130 = a2;
    if ((v13 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  v41 = *(a1 + 1824);
  v42 = v41 + 256;
  if (v41 == -256)
  {
    v43 = 23;
  }

  else
  {
    if (v41 < -256)
    {
      goto LABEL_72;
    }

    v43 = v41 + 279;
    if ((v41 + 279) > 0x10000000000)
    {
      goto LABEL_72;
    }
  }

  v44 = malloc_type_malloc(v43, 0xD93B561uLL);
  if (!v44 || (v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF0, *(v45 - 8) = v44, !v45))
  {
LABEL_72:
    *(a1 + 5864) = 0;
    return 1;
  }

  bzero(((v44 + 23) & 0xFFFFFFFFFFFFFFF0), v42);
  *(a1 + 5864) = v45;
  v130 = a2;
  if ((v13 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  if (!*(a1 + 3008) && (v13 & 3) != 0)
  {
    v19 = *(a1 + 1824) + 15;
    v20 = *(a1 + 1828) + 15;
    if (*(a1 + 2944))
    {
      v21 = *(a1 + 2936);
      if (v21)
      {
        free(*(v21 - 8));
      }
    }

    *(a1 + 2976) = 0u;
    *(a1 + 2992) = 0u;
    *(a1 + 2944) = 0u;
    *(a1 + 2960) = 0u;
    *(a1 + 2912) = 0u;
    *(a1 + 2928) = 0u;
    *(a1 + 2880) = 0u;
    *(a1 + 2896) = 0u;
    *(a1 + 2848) = 0u;
    *(a1 + 2864) = 0u;
    if (vp8_yv12_realloc_frame_buffer(a1 + 2848, v19 & 0xFFFFFFF0, v20 & 0xFFFFFFF0, 32))
    {
      vpx_internal_error(a1, 2, "Failed to allocate MFQE framebuffer");
    }

    *(a1 + 3008) = 1;
    memset(*(a1 + 2936), 128, *(a1 + 2800));
  }

  if (!*(a1 + 5852) || *(a1 + 5820) < 0xBu || (v22 = *(a1 + 5848), v22 > 59) || *(a1 + 3072) - v22 < 20)
  {
LABEL_36:
    if ((v13 & 2) != 0)
    {
      v46 = v16 + 10 * v17 - 50;
      vp8_deblock(a1, *(a1 + 1848), a1 + 2688, v46, a4, a5, a6, a7, a8, a9, a10, a11);
      if (v46 <= 20)
      {
        v48 = 20;
      }

      else
      {
        v48 = v16 + 10 * v17 - 50;
      }

      v49 = 10 * v48;
      v50 = v49 - 500;
      v51 = v49 - 493;
      if (v50 >= 0)
      {
        v51 = v50;
      }

      v52 = (1431655766 * (((v51 >> 3) + 50) * ((v51 >> 3) + 50))) >> 32;
      vpx_mbpost_proc_across_ip_neon(*(a1 + 2744), *(a1 + 2704), *(a1 + 2692), *(a1 + 2688), (1431655766 * (((v51 >> 3) + 50) * ((v51 >> 3) + 50))) >> 32, v47);
      vpx_mbpost_proc_down_neon(*(a1 + 2744), *(a1 + 2704), *(a1 + 2692), *(a1 + 2688), v52, v53);
      *(a1 + 5848) = *(a1 + 3072);
      *(a1 + 5852) = 1;
      if ((v13 & 4) == 0)
      {
        goto LABEL_120;
      }
    }

    else if (v13)
    {
      vp8_deblock(a1, *(a1 + 1848), a1 + 2688, v16, a4, a5, a6, a7, a8, a9, a10, a11);
      *(a1 + 5848) = *(a1 + 3072);
      *(a1 + 5852) = 1;
      if ((v13 & 4) == 0)
      {
        goto LABEL_120;
      }
    }

    else
    {
      vp8_yv12_copy_frame_c(*(a1 + 1848), a1 + 2688);
      *(a1 + 5848) = *(a1 + 3072);
      *(a1 + 5852) = 1;
      if ((v13 & 4) == 0)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_48;
  }

  vp8_multiframe_quality_enhance(a1);
  if ((v13 & 3) != 0 && *(a1 + 3008))
  {
    vp8_yv12_copy_frame_c((a1 + 2688), a1 + 2848);
    if ((v13 & 2) != 0)
    {
      v128 = v16 + 10 * v17 - 50;
      vp8_deblock(a1, a1 + 2848, a1 + 2688, v128, v23, v24, v25, v26, v27, v28, v29, v30);
      vp8_de_mblock(a1 + 2688, v128, v129);
    }

    else if (v13)
    {
      vp8_deblock(a1, a1 + 2848, a1 + 2688, v16, v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  *(a1 + 5848) = (3 * *(a1 + 5848) + *(a1 + 3072)) >> 2;
  *(a1 + 5852) = 1;
  if ((v13 & 4) == 0)
  {
    goto LABEL_120;
  }

LABEL_48:
  if (*(a1 + 5840) == v16 && *(a1 + 5844) == v18)
  {
    v54 = *(a1 + 5856);
    goto LABEL_78;
  }

  v55 = 0;
  v56 = v18 + 0.5 + v16 * 0.6 / 63.0;
  v57 = *(a1 + 5864);
  v58 = *(a1 + 1824);
  v59 = (v58 + 256);
  v60 = 1.0 / (v56 * 2.50662827);
  v61 = v56 * (v56 + v56);
  v62 = -32;
  while (1)
  {
    v63 = (v60 * exp(-(v62 * v62) / v61) * 256.0 + 0.5);
    if (v63)
    {
      break;
    }

LABEL_54:
    if (++v62 == 32)
    {
      if (v55 <= 255)
      {
        bzero(&v137[v55], (256 - v55));
      }

      goto LABEL_75;
    }
  }

  if (v63 < 1)
  {
    LODWORD(v63) = 0;
LABEL_53:
    v55 += v63;
    goto LABEL_54;
  }

  if (v55 <= 256)
  {
    v64 = 256;
  }

  else
  {
    v64 = v55;
  }

  v65 = (v64 - v55);
  v66 = v63 - 1;
  if (v63 - 1 >= v65)
  {
    v66 = v65;
  }

  if (v66 >= 0x20)
  {
    v68 = v66 + 1;
    v69 = v68 & 0x1F;
    if ((v68 & 0x1F) == 0)
    {
      v69 = 32;
    }

    v67 = v68 - v69;
    v70 = vdupq_n_s8(v62);
    v71 = &v137[v55 + 16];
    v72 = v67;
    do
    {
      v71[-1] = v70;
      *v71 = v70;
      v71 += 2;
      v72 -= 32;
    }

    while (v72);
  }

  else
  {
    v67 = 0;
  }

  v73 = v63 - v67;
  v74 = &v137[v67 + v55];
  v75 = v65 - v67;
  while (v75)
  {
    *v74++ = v62;
    --v75;
    if (!--v73)
    {
      goto LABEL_53;
    }
  }

LABEL_75:
  if (v58 >= -255)
  {
    do
    {
      *v57++ = v137[rand()];
      --v59;
    }

    while (v59);
  }

  v54 = -v137[0];
  *(a1 + 5856) = v54;
  *(a1 + 5840) = v16;
  *(a1 + 5844) = v18;
LABEL_78:
  v76 = *(a1 + 2692);
  if (v76 < 1)
  {
    goto LABEL_120;
  }

  v77 = *(a1 + 2688);
  if (v77 > 0)
  {
    v78 = 0;
    v79 = *(a1 + 2744);
    v80 = *(a1 + 5864);
    v81 = *(a1 + 2704);
    v134 = (v79 + (v76 - 1) * v81 + v77);
    v136 = v80;
    v133 = v80 + v77;
    v82 = v77 & 0x7FFFFFFC;
    v135 = v79;
    v131 = vdupq_n_s32(2 * v54);
    v132 = vdupq_n_s32(v54);
    while (1)
    {
      v83 = rand();
      v86 = (v136 + v83);
      if (v77 < 4)
      {
        for (i = 0; i != v77; ++i)
        {
LABEL_84:
          v88 = v79->u8[i] - v54;
          if (v88 >= 0xFF)
          {
            v89 = 255;
          }

          else
          {
            v89 = v79->u8[i] - v54;
          }

          if (v88 >= 0)
          {
            v90 = v89;
          }

          else
          {
            v90 = 0;
          }

          v91 = v90 + 2 * v54;
          if (v91 >= 0xFF)
          {
            v92 = 255;
          }

          else
          {
            v92 = v91;
          }

          if (v91 >= 0)
          {
            v93 = v92;
          }

          else
          {
            v93 = 0;
          }

          v94 = v93 - v54;
          if (v94 >= 0xFF)
          {
            v95 = -1;
          }

          else
          {
            v95 = v94;
          }

          if (v94 >= 0)
          {
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          v79->i8[i] = v96 + v86->i8[i];
        }

        goto LABEL_81;
      }

      i = 0;
      v97 = v133 + v83;
      if (v86 < v134 && v135 < v97)
      {
        goto LABEL_84;
      }

      v99.i64[0] = 0xFF000000FFLL;
      v99.i64[1] = 0xFF000000FFLL;
      if ((v81 & 0x80000000) != 0)
      {
        goto LABEL_84;
      }

      if (v77 >= 0x10)
      {
        v101 = v77 & 0x7FFFFFF0;
        v102 = v86;
        v103 = v79;
        do
        {
          v104 = vsubq_s32(vqtbl1q_s8(*v103, xmmword_273B8E7D0), v132);
          v105 = vsubq_s32(vqtbl1q_s8(*v103, xmmword_273B8E7C0), v132);
          v106 = vsubq_s32(vqtbl1q_s8(*v103, xmmword_273B8E7B0), v132);
          v107 = vsubq_s32(vqtbl1q_s8(*v103, xmmword_273B8E7A0), v132);
          v108 = vaddq_s32(vandq_s8(vcgezq_s32(v107), vminq_u32(v107, v99)), v131);
          v109 = vaddq_s32(vandq_s8(vcgezq_s32(v106), vminq_u32(v106, v99)), v131);
          v110 = vaddq_s32(vandq_s8(vcgezq_s32(v105), vminq_u32(v105, v99)), v131);
          v111 = vaddq_s32(vandq_s8(vcgezq_s32(v104), vminq_u32(v104, v99)), v131);
          v112 = vsubq_s32(vandq_s8(vcgezq_s32(v111), vminq_u32(v111, v99)), v132);
          v113 = vsubq_s32(vandq_s8(vcgezq_s32(v110), vminq_u32(v110, v99)), v132);
          v85 = vsubq_s32(vandq_s8(vcgezq_s32(v109), vminq_u32(v109, v99)), v132);
          v114 = vsubq_s32(vandq_s8(vcgezq_s32(v108), vminq_u32(v108, v99)), v132);
          v139.val[3] = vminq_u32(v114, v99);
          v139.val[2] = vminq_u32(v85, v99);
          v139.val[1] = vminq_u32(v113, v99);
          v139.val[0] = vminq_u32(v112, v99);
          v115 = *v102++;
          v84 = vaddq_s8(vbicq_s8(vqtbl4q_s8(v139, xmmword_273B8E8C0), vuzp1q_s8(vuzp1q_s16(vcltzq_s32(v112), vcltzq_s32(v113)), vuzp1q_s16(vcltzq_s32(v85), vcltzq_s32(v114)))), v115);
          *v103++ = v84;
          v101 -= 16;
        }

        while (v101);
        if ((v77 & 0x7FFFFFF0) == v77)
        {
          goto LABEL_81;
        }

        i = v77 & 0x7FFFFFF0;
        v100 = i;
        if ((v77 & 0xC) == 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v100 = 0;
      }

      do
      {
        v84.i32[0] = *(v79->i32 + v100);
        v116 = vsubq_s32(vandq_s8(vmovl_u16(*&vmovl_u8(*v84.i8)), v99), v132);
        v117 = vaddq_s32(vandq_s8(vcgezq_s32(v116), vminq_u32(v116, v99)), v131);
        v118 = vsubq_s32(vandq_s8(vcgezq_s32(v117), vminq_u32(v117, v99)), v132);
        v119 = vmovn_s32(vcltzq_s32(v118));
        v84 = vminq_u32(v118, v99);
        v85.i32[0] = *(v86->i32 + v100);
        *v84.i8 = vbic_s8(vmovn_s32(v84), v119);
        v84.i64[0] = vaddw_u8(v84, *v85.i8).u64[0];
        *v84.i8 = vuzp1_s8(*v84.i8, *v84.i8);
        *(v79->i32 + v100) = v84.i32[0];
        v100 += 4;
      }

      while (v82 != v100);
      i = v77 & 0x7FFFFFFC;
      if (v82 != v77)
      {
        goto LABEL_84;
      }

LABEL_81:
      ++v78;
      v79 = (v79 + v81);
      if (v78 == v76)
      {
        goto LABEL_120;
      }
    }
  }

  do
  {
    rand();
    LODWORD(v76) = v76 - 1;
  }

  while (v76);
LABEL_120:
  result = 0;
  v120 = *(a1 + 2704);
  *v130 = *(a1 + 2688);
  *(v130 + 16) = v120;
  v121 = *(a1 + 2720);
  v122 = *(a1 + 2736);
  v123 = *(a1 + 2768);
  *(v130 + 64) = *(a1 + 2752);
  *(v130 + 80) = v123;
  *(v130 + 32) = v121;
  *(v130 + 48) = v122;
  v124 = *(a1 + 2784);
  v125 = *(a1 + 2800);
  v126 = *(a1 + 2832);
  *(v130 + 128) = *(a1 + 2816);
  *(v130 + 144) = v126;
  *(v130 + 96) = v124;
  *(v130 + 112) = v125;
  v127 = *(a1 + 1828);
  *v130 = *(a1 + 1824);
  *(v130 + 4) = v127;
  *(v130 + 24) = v127 / 2;
  return result;
}

uint8x8_t *vp8_de_mblock(uint64_t a1, int a2, int32x2_t a3)
{
  v4 = *(a1 + 56);
  if (a2 <= 20)
  {
    v5 = 20;
  }

  else
  {
    v5 = a2;
  }

  v6 = 10 * v5;
  v7 = v6 - 500;
  v8 = v6 - 493;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v9 = (1431655766 * (((v8 >> 3) + 50) * ((v8 >> 3) + 50))) >> 32;
  vpx_mbpost_proc_across_ip_neon(v4, *(a1 + 16), *(a1 + 4), *a1, (1431655766 * (((v8 >> 3) + 50) * ((v8 >> 3) + 50))) >> 32, a3);
  v11 = *(a1 + 56);
  v12 = *(a1 + 16);
  v14 = *a1;
  v13 = *(a1 + 4);

  return vpx_mbpost_proc_down_neon(v11, v12, v13, v14, v9, v10);
}

unint64_t tree_merge_probs_impl(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + a1);
  if (v10 <= 0)
  {
    v11 = *(a4 + 4 * -v10);
    v12 = *(a2 + a1 + 1);
    if (v12 > 0)
    {
LABEL_3:
      v13 = tree_merge_probs_impl();
      v14 = a1 >> 1;
      v15 = *(a3 + v14);
      result = v13 + v11;
      if (!result)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v11 = tree_merge_probs_impl();
    v12 = *(a2 + a1 + 1);
    if (v12 > 0)
    {
      goto LABEL_3;
    }
  }

  v14 = a1 >> 1;
  v15 = *(a3 + v14);
  result = *(a4 + 4 * -v12) + v11;
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (result >= 0x14)
  {
    v17 = 20;
  }

  else
  {
    v17 = result;
  }

  v18 = ((result >> 1) + (v11 << 8)) / result;
  v15 = (((v18 == 0) | ((255 - v18) >> 23) | v18) * count_to_update_factor[v17] + (256 - count_to_update_factor[v17]) * v15 + 128) >> 8;
LABEL_8:
  *(a5 + v14) = v15;
  return result;
}

uint64_t get_sse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, double a7, double a8, int32x4_t a9, int64x2_t a10)
{
  v11 = a3;
  v13 = a1;
  v14 = a5 + 15;
  if (a5 >= 0)
  {
    v14 = a5;
  }

  v15 = a5 - (v14 & 0xFFFFFFF0);
  v16 = a6 + 15;
  if (a6 >= 0)
  {
    v16 = a6;
  }

  v17 = a6 - (v16 & 0xFFFFFFF0);
  v18 = 0;
  if (v15 >= 1 && a6 >= 1)
  {
    v20 = 0;
    v21 = (v14 & 0xFFFFFFF0);
    v22 = a3 + v21;
    v23 = a1 + v21;
    do
    {
      v24 = 0;
      do
      {
        v18 += (*(v23 + v24) - *(v22 + v24)) * (*(v23 + v24) - *(v22 + v24));
        ++v24;
      }

      while (v15 != v24);
      v23 += a2;
      v22 += a4;
      ++v20;
    }

    while (v20 != a6);
  }

  if (v17 >= 1)
  {
    v25 = v14 & 0xFFFFFFF0;
    if (v25 >= 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = v11 + a4 * (v16 & 0xFFFFFFF0);
      v29 = a1 + a2 * (v16 & 0xFFFFFFF0);
      v30 = v14 & 0x7FFFFFF0;
      while (1)
      {
        if (v25 >= 4)
        {
          if (v25 >= 0x10)
          {
            v33 = 0;
            v34 = 0uLL;
            v35 = v26;
            v36 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            v40 = 0uLL;
            v41 = 0uLL;
            do
            {
              v42 = *(v29 + v33);
              v43 = *(v28 + v33);
              v44 = vsubl_u8(*v42.i8, *v43.i8);
              v45 = vsubl_high_u8(v42, v43);
              v46 = vmull_s16(*v45.i8, *v45.i8);
              v47 = vmull_high_s16(v44, v44);
              v48 = vmull_high_s16(v45, v45);
              v49 = vmull_s16(*v44.i8, *v44.i8);
              v37 = vaddw_high_u32(v37, v47);
              v39 = vaddw_high_u32(v39, v46);
              v38 = vaddw_u32(v38, *v46.i8);
              v36 = vaddw_u32(v36, *v47.i8);
              v34 = vaddw_high_u32(v34, v49);
              v40 = vaddw_u32(v40, *v48.i8);
              v35 = vaddw_u32(v35, *v49.i8);
              v41 = vaddw_high_u32(v41, v48);
              v33 += 16;
            }

            while (v30 != v33);
            a10 = vaddq_s64(v36, v40);
            a9 = vaddq_s64(v37, v41);
            v26 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v35, v38), a10), vaddq_s64(vaddq_s64(v34, v39), a9)));
            if (v30 == v25)
            {
              goto LABEL_16;
            }

            v31 = v14 & 0x7FFFFFF0;
          }

          else
          {
            v32 = 0;
            v50 = 0uLL;
            v51 = v26;
            do
            {
              a9.i32[0] = *(v29 + v32);
              a10.i32[0] = *(v28 + v32);
              a10.i64[0] = vmovl_u8(*a10.i8).u64[0];
              v52 = vsubl_u16(*&vmovl_u8(*a9.i8), *a10.i8);
              a9 = vmulq_s32(v52, v52);
              v50 = vaddw_high_u32(v50, a9);
              v51 = vaddw_u32(v51, *a9.i8);
              v32 += 4;
            }

            while (v30 != v32);
            v26 = vaddvq_s64(vaddq_s64(v51, v50));
            v31 = v14 & 0x7FFFFFF0;
            if (v30 == v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v31 = 0;
        }

        do
        {
          v26 += (*(v29 + v31) - *(v28 + v31)) * (*(v29 + v31) - *(v28 + v31));
          ++v31;
        }

        while (v25 != v31);
LABEL_16:
        v29 += a2;
        v28 += a4;
        if (++v27 == v17)
        {
          goto LABEL_31;
        }
      }
    }

    v26 = 0;
LABEL_31:
    v18 += v26;
  }

  if (a6 >= 16 && a5 >= 16)
  {
    v53 = 0;
    v57 = v16 >> 4;
    v58 = v14 >> 4;
    do
    {
      v54 = 0;
      v55 = v58;
      do
      {
        v18 += vpx_sse(v13 + v54, a2, v11 + v54, a4, 16, 16);
        v54 += 16;
        --v55;
      }

      while (v55);
      v13 += 16 * a2;
      v11 += 16 * a4;
      ++v53;
    }

    while (v53 != v57);
  }

  return v18;
}

uint64_t highbd_get_sse(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, double a7, int64x2_t a8, int32x4_t a9, int64x2_t a10, uint64x2_t a11)
{
  v12 = a3;
  v14 = a1;
  v15 = a5 + 15;
  if (a5 >= 0)
  {
    v15 = a5;
  }

  v16 = a6 + 15;
  if (a6 >= 0)
  {
    v16 = a6;
  }

  v17 = a6 - (v16 & 0xFFFFFFF0);
  if ((a5 - (v15 & 0xFFFFFFF0)) < 1 || a6 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = (v15 & 0xFFFFFFF0);
    v22 = 2 * (a1 + v21);
    v23 = 2 * (a3 + v21);
    do
    {
      v24 = 0;
      do
      {
        v20 += (*(v22 + v24) - *(v23 + v24)) * (*(v22 + v24) - *(v23 + v24));
        v24 += 2;
      }

      while (2 * (a5 - (v15 & 0xFFFFFFF0)) != v24);
      ++v19;
      v23 += 2 * a4;
      v22 += 2 * a2;
    }

    while (v19 != a6);
  }

  if (v17 >= 1)
  {
    v25 = v15 & 0xFFFFFFF0;
    if (v25 >= 1)
    {
      v26 = 0;
      v27 = 0.0;
      v28 = 2 * (v14 + (v16 & 0xFFFFFFF0) * a2);
      v29 = 2 * (a3 + (v16 & 0xFFFFFFF0) * a4);
      while (1)
      {
        if (v25 >= 4)
        {
          if (v25 < 0x10)
          {
            v52 = 0uLL;
            a8 = *&v27;
            v53 = 0;
            v54 = -(v15 & 0x7FFFFFF0);
            do
            {
              a10.i64[0] = *(v29 + v53);
              v55 = vsubl_u16(*(v28 + v53), *a10.i8);
              a9 = vmulq_s32(v55, v55);
              v52 = vaddw_high_u32(v52, a9);
              a8 = vaddw_u32(a8, *a9.i8);
              v53 += 8;
              v54 += 4;
            }

            while (v54);
            a7 = COERCE_DOUBLE(vaddvq_s64(vaddq_s64(a8, v52)));
            v27 = a7;
            v30 = v15 & 0x7FFFFFF0;
            if (v30 == (v15 & 0xFFFFFFF0))
            {
              goto LABEL_17;
            }
          }

          else
          {
            v31 = 0;
            v32 = 0uLL;
            v33 = *&v27;
            v34 = v15 & 0x7FFFFFF0;
            v35 = 0uLL;
            v36 = 0uLL;
            a11 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            do
            {
              v40 = *(v28 + v31);
              v41 = *(v28 + v31 + 16);
              v42 = *(v29 + v31);
              v43 = *(v29 + v31 + 16);
              v44 = vsubl_u16(*v40.i8, *v42.i8);
              v45 = vsubl_high_u16(v40, v42);
              v46 = vsubl_u16(*v41.i8, *v43.i8);
              v47 = vsubl_high_u16(v41, v43);
              v48 = vmulq_s32(v45, v45);
              v49 = vmulq_s32(v44, v44);
              v50 = vmulq_s32(v47, v47);
              v51 = vmulq_s32(v46, v46);
              v36 = vaddw_high_u32(v36, v48);
              v35 = vaddw_u32(v35, *v48.i8);
              v32 = vaddw_high_u32(v32, v49);
              v33 = vaddw_u32(v33, *v49.i8);
              v39 = vaddw_high_u32(v39, v50);
              v38 = vaddw_u32(v38, *v50.i8);
              v37 = vaddw_high_u32(v37, v51);
              a11 = vaddw_u32(a11, *v51.i8);
              v31 += 32;
              v34 -= 16;
            }

            while (v34);
            a10 = vaddq_s64(v39, v36);
            a9 = vaddq_s64(v38, v35);
            a8 = vaddq_s64(vaddq_s64(v37, v32), a10);
            a7 = COERCE_DOUBLE(vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(a11, v33), a9), a8)));
            v27 = a7;
            if ((v15 & 0x7FFFFFF0) == (v15 & 0xFFFFFFF0))
            {
              goto LABEL_17;
            }

            v30 = v15 & 0x7FFFFFF0;
          }
        }

        else
        {
          v30 = 0;
        }

        do
        {
          v56 = *(v28 + 2 * v30) - *(v29 + 2 * v30);
          *&v27 += (v56 * v56);
          ++v30;
        }

        while (v25 != v30);
LABEL_17:
        ++v26;
        v28 += 2 * a2;
        v29 += 2 * a4;
        if (v26 == v17)
        {
          goto LABEL_31;
        }
      }
    }

    v27 = 0.0;
LABEL_31:
    v20 += *&v27;
  }

  if (a6 >= 16 && a5 >= 16)
  {
    v57 = 0;
    v61 = v16 >> 4;
    v62 = v15 >> 4;
    do
    {
      v58 = 0;
      v59 = v62;
      do
      {
        v20 += vpx_highbd_sse_neon(v14 + v58, a2, v12 + v58, a4, 16, 16, a7, *a8.i64, *a9.i64, *a10.i64, a11);
        v58 += 16;
        --v59;
      }

      while (v59);
      v14 += 16 * a2;
      v12 += 16 * a4;
      ++v57;
    }

    while (v57 != v61);
  }

  return v20;
}

void vpx_calc_highbd_psnr(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, int64x2_t a7, int32x4_t a8, uint32x4_t a9, int64x2_t a10)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 12);
  v16 = *(a1 + 28);
  v17 = *(a1 + 32);
  v69[0] = *(a1 + 8);
  v69[1] = v16;
  v69[2] = v16;
  v68[0] = v15;
  v68[1] = v17;
  v68[2] = v17;
  v66 = *(a1 + 56);
  v67 = *(a1 + 72);
  v18 = *(a1 + 36);
  v65[0] = *(a1 + 16);
  v65[1] = v18;
  v65[2] = v18;
  v19 = *(a2 + 56);
  v64 = *(a2 + 72);
  v20 = *(a2 + 36);
  v21 = a4 - a5;
  v62[0] = *(a2 + 16);
  v62[1] = v20;
  v22 = a3 + 16;
  v23 = (a3 + 48);
  v62[2] = v20;
  v24 = ~(-1 << a5);
  v63 = v19;
  v25 = vdupq_n_s32(a4 - a5);
  v26 = vnegq_s32(v25);
  v61 = v26;
  do
  {
    while (1)
    {
      v28 = v69[v12];
      v29 = v68[v12];
      v30 = v29 * v28;
      v31 = *(&v66 + v12);
      if ((*(a1 + 152) & 8) == 0)
      {
        break;
      }

      if (a4 == a5)
      {
        sse = highbd_get_sse(v31, v65[v12], *(&v63 + v12), v62[v12], v28, v29, *v25.i64, a7, a8, a9, a10);
        goto LABEL_8;
      }

      if (v29 >= 1 && v28 >= 1)
      {
        v33 = 0;
        v27 = 0;
        v34 = 2 * v31;
        v35 = 2 * *(&v63 + v12);
        while (1)
        {
          if (v28 >= 4)
          {
            if (v28 < 0x10)
            {
              v37 = 0;
LABEL_26:
              v54 = 0uLL;
              a7 = v27;
              v55 = 2 * v37;
              v56 = v37 - (v28 & 0x7FFFFFFC);
              do
              {
                a9 = vshlq_u32(vmovl_u16(*(v35 + v55)), v26);
                a8 = vsubq_s32(vshlq_u32(vmovl_u16(*(v34 + v55)), v26), a9);
                v54 = vmlal_high_s32(v54, a8, a8);
                a7 = vmlal_s32(a7, *a8.i8, *a8.i8);
                v55 += 8;
                v56 += 4;
              }

              while (v56);
              v27 = vaddvq_s64(vaddq_s64(a7, v54));
              v36 = v28 & 0x7FFFFFFC;
              if (v36 == v28)
              {
                goto LABEL_17;
              }

              goto LABEL_29;
            }

            v38 = 0;
            v39 = 0uLL;
            v40 = v27;
            v41 = 0uLL;
            v42 = 0uLL;
            a10 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            do
            {
              v46 = *(v34 + v38);
              v47 = *(v34 + v38 + 16);
              v48 = *(v35 + v38);
              v49 = *(v35 + v38 + 16);
              v50 = vsubq_s32(vshlq_u32(vmovl_high_u16(v46), v26), vshlq_u32(vmovl_high_u16(v48), v26));
              v51 = vsubq_s32(vshlq_u32(vmovl_u16(*v46.i8), v26), vshlq_u32(vmovl_u16(*v48.i8), v26));
              v52 = vsubq_s32(vshlq_u32(vmovl_high_u16(v47), v26), vshlq_u32(vmovl_high_u16(v49), v26));
              v53 = vsubq_s32(vshlq_u32(vmovl_u16(*v47.i8), v26), vshlq_u32(vmovl_u16(*v49.i8), v26));
              v42 = vmlal_high_s32(v42, v50, v50);
              v41 = vmlal_s32(v41, *v50.i8, *v50.i8);
              v39 = vmlal_high_s32(v39, v51, v51);
              v40 = vmlal_s32(v40, *v51.i8, *v51.i8);
              v45 = vmlal_high_s32(v45, v52, v52);
              v44 = vmlal_s32(v44, *v52.i8, *v52.i8);
              v43 = vmlal_high_s32(v43, v53, v53);
              a10 = vmlal_s32(a10, *v53.i8, *v53.i8);
              v38 += 32;
            }

            while (32 * ((v28 >> 4) & 0x7FFFFFF) != v38);
            a9 = vaddq_s64(v45, v42);
            a8 = vaddq_s64(v44, v41);
            a7 = vaddq_s64(vaddq_s64(v43, v39), a9);
            v27 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(a10, v40), a8), a7));
            if ((v28 & 0x7FFFFFF0) == v28)
            {
              goto LABEL_17;
            }

            v37 = v28 & 0x7FFFFFF0;
            v36 = v37;
            if ((v28 & 0xC) != 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v36 = 0;
          }

          do
          {
LABEL_29:
            v57 = (*(v34 + 2 * v36) >> v21) - (*(v35 + 2 * v36) >> v21);
            v27 += v57 * v57;
            ++v36;
          }

          while (v28 != v36);
LABEL_17:
          ++v33;
          v34 += 2 * v65[v12];
          v35 += 2 * v62[v12];
          if (v33 == v29)
          {
            goto LABEL_9;
          }
        }
      }

      v27 = 0;
      ++v12;
      *(v22 + 8 * v12) = 0;
      *(a3 + 4 * v12) = v30;
LABEL_3:
      v25.i64[0] = 0x4059000000000000;
      v23[v12] = 100.0;
      v13 += v27;
      v14 += v30;
      if (v12 >= 3)
      {
        goto LABEL_31;
      }
    }

    sse = get_sse(v31, v65[v12], *(&v63 + v12), v62[v12], v28, v29, *v25.i64, *a7.i64, a8, a9);
LABEL_8:
    v26 = v61;
    v27 = sse;
LABEL_9:
    ++v12;
    *(v22 + 8 * v12) = v27;
    *(a3 + 4 * v12) = v30;
    if (!v27)
    {
      goto LABEL_3;
    }

    *v25.i64 = log10(v24 * v30 * v24 / v27);
    v26 = v61;
    *v25.i64 = *v25.i64 * 10.0;
    a7.i64[0] = 0x4059000000000000;
    if (*v25.i64 > 100.0)
    {
      *v25.i64 = 100.0;
    }

    v23[v12] = *v25.i64;
    v13 += v27;
    v14 += v30;
  }

  while (v12 < 3);
LABEL_31:
  *(a3 + 16) = v13;
  *a3 = v14;
  if (v13)
  {
    v58 = log10(v24 * v14 * v24 / v13) * 10.0;
    if (v58 > 100.0)
    {
      v58 = 100.0;
    }
  }

  else
  {
    v58 = 100.0;
  }

  *v23 = v58;
}

unsigned __int16 vpx_quantize_b_neon@<H0>(int16x8_t *_X0@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int32x4_t *a4@<X3>, int32x4_t *a5@<X4>, int16x8_t *a6@<X5>, unsigned __int16 *a7@<X6>, uint64_t a8@<X7>)
{
  v8 = *(a8 + 8);
  v9 = *a3[1033];
  v10 = *a3[1034];
  v11 = *a3[1031];
  v12 = *a3[1032];
  v13 = *a6;
  v15 = *v8;
  v14 = v8 + 1;
  v16 = vuzp1q_s16(*_X0, _X0[1]);
  v17 = vcltzq_s16(v16);
  v18 = vabsq_s16(v16);
  v19 = vcgtq_s16(v9, v18);
  v20 = vqaddq_s16(v18, v10);
  v21 = vbicq_s8(vsubq_s16(veorq_s8(vshrq_n_s16(vqdmulhq_s16(vsraq_n_s16(v20, vqdmulhq_s16(v20, v11), 1uLL), v12), 1uLL), v17), v17), v19);
  *a4 = vmovl_s16(*v21.i8);
  a4[1] = vmovl_high_s16(v21);
  *a5 = vmull_s16(*v21.i8, *v13.i8);
  a5[1] = vmull_high_s16(v21, v13);
  v22 = vbicq_s8(v15, vceqzq_s16(v21));
  __asm { PRFM            #0, [X0,#0x100] }

  v28 = vdupq_lane_s16(*v9.i8, 1);
  v29 = vdupq_lane_s16(*v10.i8, 1);
  _X9 = _X0 + 18;
  v31 = a5 + 3;
  v32 = a4 + 3;
  v33 = a2 + 8;
  do
  {
    v34 = *v14++;
    v35 = vuzp1q_s16(_X9[-16], _X9[-15]);
    v36 = vcltzq_s16(v35);
    v37 = vabsq_s16(v35);
    v38 = vcgtq_s16(v28, v37);
    v39 = vqaddq_s16(v37, v29);
    v40 = vbicq_s8(vsubq_s16(veorq_s8(vshrq_n_s16(vqdmulhq_lane_s16(vsraq_n_s16(v39, vqdmulhq_lane_s16(v39, *v11.i8, 1), 1uLL), *v12.i8, 1), 1uLL), v36), v36), v38);
    v32[-1] = vmovl_s16(*v40.i8);
    *v32 = vmovl_high_s16(v40);
    v31[-1] = vmull_lane_s16(*v40.i8, *v13.i8, 1);
    *v31 = vmull_high_lane_s16(v40, *v13.i8, 1);
    v22 = vmaxq_u16(v22, vbicq_s8(v34, vceqzq_s16(v40)));
    __asm { PRFM            #0, [X9] }

    _X9 += 2;
    v31 += 2;
    v32 += 2;
    v33 -= 8;
  }

  while (v33 > 16);
  result = vmaxvq_u16(v22);
  *a7 = result;
  return result;
}

unsigned __int16 vpx_quantize_b_32x32_neon@<H0>(int16x8_t *_X0@<X0>, int16x8_t **a2@<X1>, int32x4_t *a3@<X2>, int32x4_t *a4@<X3>, int16x8_t *a5@<X4>, unsigned __int16 *a6@<X5>, uint64_t a7@<X6>)
{
  v7 = 0;
  v8 = *a2[1031];
  v9 = *(a7 + 8);
  v10 = vrshrq_n_s16(*a2[1033], 1uLL);
  v11 = vrshrq_n_s16(*a2[1034], 1uLL);
  v12 = *a2[1032];
  v14 = *v9;
  v13 = v9 + 1;
  v15 = *a5;
  v16 = vuzp1q_s16(*_X0, _X0[1]);
  v17 = vcltzq_s16(v16);
  v18 = vabsq_s16(v16);
  v19 = vcgtq_s16(v10, v18);
  v20 = vqaddq_s16(v18, v11);
  v21 = vbicq_s8(vsubq_s16(veorq_s8(vqdmulhq_s16(vsraq_n_s16(v20, vqdmulhq_s16(v20, v8), 1uLL), v12), v17), v17), v19);
  *a3 = vmovl_s16(*v21.i8);
  a3[1] = vmovl_high_s16(v21);
  v22 = vmull_s16(*v21.i8, *v15.i8);
  *a4 = vshrq_n_s32(vsraq_n_u32(v22, v22, 0x1FuLL), 1uLL);
  a4[1] = vshrq_n_s32(vmlal_high_s16(vshrq_n_u32(vmull_high_s16(v21, v15), 0x1FuLL), v21, v15), 1uLL);
  v23 = vbicq_s8(v14, vceqzq_s16(v21));
  __asm { PRFM            #0, [X0,#0x100] }

  v29 = vdupq_lane_s16(*v10.i8, 1);
  v30 = vdupq_lane_s16(*v11.i8, 1);
  do
  {
    v31 = &a4[v7 + 2];
    v32 = &a3[v7 + 2];
    _X14 = &_X0[v7];
    v34 = vuzp1q_s16(_X0[v7 + 2], _X0[v7 + 3]);
    v35 = *v13++;
    v36 = vcltzq_s16(v34);
    v37 = vabsq_s16(v34);
    v38 = vqaddq_s16(v37, v30);
    v39 = vbicq_s8(vsubq_s16(veorq_s8(vqdmulhq_lane_s16(vsraq_n_s16(v38, vqdmulhq_lane_s16(v38, *v8.i8, 1), 1uLL), *v12.i8, 1), v36), v36), vcgtq_s16(v29, v37));
    *v32 = vmovl_s16(*v39.i8);
    v32[1] = vmovl_high_s16(v39);
    *v31 = vshrq_n_s32(vmlal_lane_s16(vshrq_n_u32(vmull_lane_s16(*v39.i8, *v15.i8, 1), 0x1FuLL), *v39.i8, *v15.i8, 1), 1uLL);
    v31[1] = vshrq_n_s32(vmlal_high_lane_s16(vshrq_n_u32(vmull_high_lane_s16(v39, *v15.i8, 1), 0x1FuLL), v39, *v15.i8, 1), 1uLL);
    v23 = vmaxq_u16(v23, vbicq_s8(v35, vceqzq_s16(v39)));
    __asm { PRFM            #0, [X14,#0x120] }

    v7 += 2;
  }

  while ((v7 * 16) != 4064);
  result = vmaxvq_u16(v23);
  *a6 = result;
  return result;
}

uint64_t vp8_update_rate_correction_factors(uint64_t result, int a2)
{
  v2 = 131936;
  v3 = *(result + 111060);
  if (v3)
  {
    if (*(result + 114516) != 1 || *(result + 143168) || !*(result + 111576) && !*(result + 111572))
    {
      v2 = 131920;
    }
  }

  else
  {
    v2 = 131928;
  }

  v4 = *(result + v2);
  v5 = ((v4 * vp8_bits_per_mb[128 * v3 + *(result + 111104)] + 0.5) * *(result + 111072) * 0.001953125);
  v6 = *(result + 103884);
  if (v6 >= 1)
  {
    v7 = v6 + 1;
    v8 = 0.99;
    do
    {
      v5 = (v8 * v5);
      v8 = v8 + 0.0000390625;
      if (v8 >= 0.999)
      {
        v8 = 0.999;
      }

      --v7;
    }

    while (v7 > 1);
  }

  if (v5 >= 1)
  {
    v9 = 100 * *(result + 131908) / v5;
    v10 = 0.25;
    if (a2 == 1)
    {
      v10 = 0.375;
    }

    if (!a2)
    {
      v10 = 0.75;
    }

    if (v9 < 103)
    {
      if (v9 <= 98)
      {
        v4 = v4 * (100.5 - (100 - v9) * v10) / 100.0;
        if (v4 < 0.01)
        {
          v4 = 0.01;
        }
      }
    }

    else
    {
      v4 = v4 * ((v9 - 100) * v10 + 100.5) / 100.0;
      if (v4 > 50.0)
      {
        v4 = 50.0;
      }
    }
  }

  if (v3)
  {
    if (*(result + 114516) == 1 && !*(result + 143168) && (*(result + 111576) || *(result + 111572)))
    {
      *(result + 131936) = v4;
    }

    else
    {
      *(result + 131920) = v4;
    }
  }

  else
  {
    *(result + 131928) = v4;
  }

  return result;
}

uint64_t vp8_regulate_q(_DWORD *a1, int a2)
{
  if (a1[35787] == 1)
  {
    v2 = a1[33040];
    a1[33041] = v2;
    return v2;
  }

  v4 = a1[33041];
  a1[25971] = 0;
  v5 = a1[28598];
  v6 = a1[27765];
  if ((v5 & 0x80000000) != 0)
  {
    v8 = 32984;
    if (v6)
    {
      if (a1[28629] != 1 || a1[35792] || !a1[27894] && !a1[27893])
      {
        v8 = 32980;
      }
    }

    else
    {
      v8 = 32982;
    }

    v9 = *&a1[v8];
    if (a2 < 0x400000)
    {
      v11 = (a2 << 9) / a1[27768];
    }

    else
    {
      v10 = a2 / a1[27768];
      v11 = v10 << 9;
      if (v10 >= 0x400000)
      {
        v11 = 0x7FFFFFFF;
      }
    }

    v12 = a1[33043];
    v13 = (v9 * vp8_bits_per_mb[128 * v6 + v12] + 0.5);
    if (v11 >= v13)
    {
      v20 = 0x7FFFFFFF;
LABEL_32:
      v5 = v12 - (v11 - v13 > v20);
      v18 = v13;
      if (v5 >= 127)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v12 <= v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = a1[33043];
      }

      v15 = v14;
      v16 = &vp8_bits_per_mb[128 * v6 + 1 + v12];
      v17 = v15 - v12;
      while (1)
      {
        v18 = v13;
        if (!v17)
        {
          break;
        }

        v19 = *v16++;
        v13 = (v9 * v19 + 0.5);
        ++v12;
        --v17;
        if (v11 >= v13)
        {
          v20 = v18 - v11;
          goto LABEL_32;
        }
      }

      v5 = v4;
      if (v4 >= 127)
      {
LABEL_35:
        if (v6)
        {
          if (a1[28629] == 1 && !a1[35792] && (a1[27894] || a1[27893] && !a1[28742]))
          {
            v21 = 16;
          }

          else
          {
            v21 = 192;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = -v21;
        v23 = 1;
        v24 = 0.99;
        do
        {
          if (v22 + v23 == 1)
          {
            break;
          }

          a1[25971] = v23;
          v18 = (v24 * v18);
          v24 = v24 + 0.0000390625;
          if (v24 >= 0.999)
          {
            v24 = 0.999;
          }

          ++v23;
        }

        while (v11 < v18);
      }
    }

    if (!v6)
    {
      return v5;
    }

    goto LABEL_46;
  }

  if (!v6)
  {
    return a1[28613];
  }

  if (a1[28629] == 1)
  {
    v7 = 28612;
    if (a1[27894] && !a1[35792])
    {
      goto LABEL_11;
    }

    if (a1[27893] && !a1[35792])
    {
      v7 = 28614;
LABEL_11:
      v5 = a1[v7];
    }
  }

LABEL_46:
  if (a1[35704] || a1[28583] != 1 || !a1[28577])
  {
    return v5;
  }

  v25 = a1[32979];
  v26 = v25 - v5;
  v27 = v25 - 12;
  if (v26 <= 12)
  {
    return v5;
  }

  else
  {
    return v27;
  }
}

uint64_t vp8_adjust_key_frame_context(uint64_t result)
{
  v1 = (result + 131908);
  if (*(result + 142816) == 2)
  {
    goto LABEL_21;
  }

  v2 = *(result + 132012);
  v3 = __OFSUB__(*v1, v2);
  v4 = *v1 - v2;
  if ((v4 < 0) ^ v3 | (v4 == 0))
  {
    goto LABEL_21;
  }

  if (*(result + 114516) < 2u)
  {
    v5 = *(result + 131964) + 7 * v4 / 8;
    *(result + 131964) = v5;
    *(result + 131956) += v4 / 8;
    if (*(result + 131984) != 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v11 = *(result + 114320);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = 2 * *(result + 132032);
    if (v12 < v11 || *(result + 114316) == 0)
    {
      v11 = v12 + 1;
    }

    *(result + 132008) = v11;
    goto LABEL_18;
  }

  v5 = *(result + 131964) + v4;
  *(result + 131964) = v5;
  if (*(result + 131984) == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = *(result + 115164);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = *(result + 131996);
  v8 = *(result + 132000);
  *(result + 131992) = v7;
  *(result + 131996) = v8;
  v9 = *(result + 132004);
  v10 = *(result + 132008);
  *(result + 132000) = v9;
  *(result + 132004) = v10;
  *(result + 132008) = v6;
  v11 = (5 * v6 + v7 + 2 * v8 + 3 * v9 + 4 * v10) / 0xF;
LABEL_18:
  if (v11 <= 1)
  {
    v11 = 1;
  }

  *(result + 131968) = v5 / v11;
LABEL_21:
  *(result + 115164) = 0;
  ++*(result + 131984);
  return result;
}

uint64_t vp8_pick_frame_size(uint64_t a1)
{
  v1 = (a1 + 142756);
  v2 = (a1 + 131904);
  v3 = (a1 + 111060);
  if (!*(a1 + 111060))
  {
    if ((*(a1 + 114392) & 0x80000000) != 0)
    {
      if (*(a1 + 142816) == 2)
      {
        v12 = *(a1 + 132012);
        v13 = *(a1 + 114300);
        if (!v13)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (*(a1 + 113852))
      {
        v33 = 132064;
        if (*(a1 + 111068))
        {
          v33 = 132076;
        }

        v34 = *(a1 + v33);
        v35 = *(a1 + 132032);
        v36 = 32;
        if (*(a1 + 114516) == 1)
        {
          v37 = llround(v35 * 2.0 + -16.0);
          v36 = v37 <= 32 ? 32 : v37;
          if (v36 >= 2000)
          {
            v36 = 2000;
          }
        }

        v38 = 1374389535 * kf_boost_qadjustment[v34] * v36;
        v39 = v38 >> 63;
        v40 = v38 >> 37;
        v41 = *(a1 + 115164);
        v42 = v40 + v39;
        v43 = v35 * 0.5;
        if (v43 > v41)
        {
          v42 = ((v42 * v41) / v43);
        }

        if (v42 <= 16)
        {
          v42 = 16;
        }

        v12 = ((v42 + 16) * *(a1 + 132012)) >> 4;
        if (v12 >= 0x7FFFFFFF)
        {
          v12 = 0x7FFFFFFFLL;
        }

        v13 = *(a1 + 114300);
        if (v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = *(a1 + 114344) >> 1;
        if (v12 >= (3 * *(a1 + 114284)) >> 1)
        {
          v12 = (3 * *(a1 + 114284)) >> 1;
        }

        v13 = *(a1 + 114300);
        if (v13)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v10 = *(a1 + 111072);
      v11 = *(a1 + 131928) * vp8_bits_per_mb[*(a1 + 114452)] + 0.5;
      LODWORD(v12) = (v10 * v11) >> 9;
      if (v10 > 2048)
      {
        LODWORD(v12) = (v11 >> 9) * v10;
      }

      v12 = v12;
      v13 = *(a1 + 114300);
      if (v13)
      {
LABEL_13:
        v14 = *(a1 + 132012) * v13;
        if (v14 / 0x64 < v12)
        {
          v12 = v14 / 0x64;
        }

        if (v12 >= 0x7FFFFFFF)
        {
          LODWORD(v12) = 0x7FFFFFFF;
        }
      }
    }

LABEL_17:
    *v2 = v12;
    if (*(a1 + 142816) != 2)
    {
      *(a1 + 132164) = *(a1 + 132160);
      return 1;
    }

    return 1;
  }

  v4 = *(a1 + 132012);
  v5 = *(a1 + 149248);
  LODWORD(v6) = v4;
  if (v5)
  {
    LODWORD(v6) = *(a1 + 216 * v5 + 149320);
    *(a1 + 132012) = v6;
  }

  v7 = *(a1 + 142816);
  if (v7 == 2)
  {
    v8 = *(a1 + 132020);
    if (v8 <= *(a1 + 132016) >> 5)
    {
      v8 = *(a1 + 132016) >> 5;
    }

    v9 = *(a1 + 111576);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = v6 >> 2;
    if (v6 <= 3)
    {
      v8 = 0;
    }

    v9 = *(a1 + 111576);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 114516) != 1)
  {
LABEL_25:
    if (v7 == 2)
    {
      goto LABEL_26;
    }

    v16 = *(a1 + 131964);
    if (v16 >= 1)
    {
      v17 = *(a1 + 131968);
      if (v17 >= v16)
      {
        v17 = *(a1 + 131964);
      }

      if (v17 >= v6 - v8)
      {
        v17 = v6 - v8;
      }

      *(a1 + 131964) = v16 - v17;
      LODWORD(v6) = v6 - v17;
      if (v6 <= v8)
      {
        LODWORD(v6) = v8;
      }
    }

    *v2 = v6;
    v18 = *(a1 + 131956);
    if (v18 >= 1)
    {
      v19 = v6 - v8;
      if (v6 > v8)
      {
        v20 = *(a1 + 131960);
        if (v20 >= v18)
        {
          v20 = *(a1 + 131956);
        }

        if (v20 < v19)
        {
          v19 = v20;
        }

        *(a1 + 131956) = v18 - v19;
        LODWORD(v6) = v6 - v19;
        *v2 = v6;
      }
    }

    if (*v1 >= 151 && *(a1 + 131948) >= 1)
    {
      v21 = *(a1 + 131952);
      if (v21 >= 8)
      {
        v22 = (*v1 - 100) >> 5;
        if (v22 >= 0xA)
        {
          v22 = 10;
        }

        v23 = (v22 * v6) / 100;
        if (v23 >= v6 - v8)
        {
          v23 = v6 - v8;
        }

        if (*(a1 + 131944) == v21 >> 1)
        {
          v24 = (v21 - 1) * v23;
          if (v24 >= v6 / 10)
          {
            v24 = v6 / 10;
          }

          LODWORD(v6) = v24 + v6;
        }

        else
        {
          LODWORD(v6) = v6 - v23;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_56;
  }

  if (v7 == 2)
  {
    LODWORD(v6) = *(a1 + 148120);
    *(a1 + 132012) = v6;
LABEL_26:
    *v2 = v6;
    goto LABEL_56;
  }

  LODWORD(v6) = *v2;
LABEL_56:
  if (v6 < v8)
  {
    *v2 = v8;
    LODWORD(v6) = v8;
    if (!v9)
    {
      goto LABEL_58;
    }

LABEL_61:
    if (v7)
    {
      goto LABEL_136;
    }

    goto LABEL_62;
  }

  if (v9)
  {
    goto LABEL_61;
  }

LABEL_58:
  *(a1 + 132024) = v6;
  if (v7)
  {
    goto LABEL_136;
  }

LABEL_62:
  if (*(a1 + 132088))
  {
    v25 = *(a1 + 114352);
    v26 = v25 / 100 + 1;
    v27 = *(a1 + 132112);
    if (v27 >= v25)
    {
      v32 = *(a1 + 132120);
      if (v32 >= v25)
      {
        v28 = *(a1 + 114332);
        v53 = v27 <= v25;
        v48 = v27 - v25;
        if (v53 || v28 != 1)
        {
          if (v32 <= v25)
          {
            LODWORD(v49) = 0;
          }

          else
          {
            v50 = *(a1 + 132080);
            if (v50 < 1)
            {
              LODWORD(v49) = *(a1 + 114340);
            }

            else
            {
              v49 = 100 * v32 / (8 * v50);
            }
          }
        }

        else
        {
          v49 = v48 / v26;
        }

        if (v49 <= *(a1 + 114340))
        {
          v51 = v49 & ~(v49 >> 31);
        }

        else
        {
          v51 = *(a1 + 114340);
        }

        v6 = v6 * v51 / 200 + v6;
        if (v6 >= 0x7FFFFFFF)
        {
          LODWORD(v6) = 0x7FFFFFFF;
        }

        *v2 = v6;
        if (*(a1 + 142808) && *(a1 + 132072) >= 151)
        {
LABEL_122:
          v31 = *(a1 + 132064);
          goto LABEL_124;
        }

LABEL_123:
        v31 = *(a1 + 132160);
LABEL_124:
        *(a1 + 132164) = v31;
        v52 = *(a1 + 132168);
        *(a1 + 132172) = v52;
        v53 = v31 <= v52;
        if (v31 <= v52)
        {
          v54 = v52 + 1;
        }

        else
        {
          v54 = v31;
        }

        if (v53 || v54 > 127)
        {
          if (v54 >= 127)
          {
            v31 = 127;
          }

          else
          {
            v31 = v54;
          }

          *(a1 + 132164) = v31;
        }

        goto LABEL_133;
      }

      v28 = *(a1 + 114332);
      v29 = v28 == 1;
      if (v32 < 0)
      {
LABEL_88:
        v30 = -100 * v32 / (8 * *(a1 + 132080));
LABEL_89:
        if (v30 <= *(a1 + 114336))
        {
          v44 = v30 & ~(v30 >> 31);
        }

        else
        {
          v44 = *(a1 + 114336);
        }

        v45 = ((v44 * v6 * 0x5C28F5C28F5C28F5) >> 64) - v44 * v6;
        LODWORD(v6) = v6 + (v45 >> 7) + (v45 >> 63);
        *v2 = v6;
        if (*(a1 + 142808) && *(a1 + 132072) >= 151)
        {
          if (v27 >= *(a1 + 132120))
          {
            v27 = *(a1 + 132120);
          }

          if (v29)
          {
            v46 = v27;
          }

          else
          {
            v46 = *(a1 + 132120);
          }

          if (v46 < v25)
          {
            v31 = *(a1 + 132160);
            v53 = v46 <= v25 >> 2;
            v47 = v46 - (v25 >> 2);
            if (!v53)
            {
              v31 -= v47 * (v31 - *(a1 + 132064)) / ((3 * v25) >> 2);
            }

            goto LABEL_124;
          }

          goto LABEL_122;
        }

        goto LABEL_123;
      }
    }

    else
    {
      v28 = *(a1 + 114332);
      if (v28 == 1)
      {
        v29 = 1;
        v30 = (v25 - v27) / v26;
        goto LABEL_89;
      }

      v29 = 0;
      v32 = *(a1 + 132120);
      if (v32 < 0)
      {
        goto LABEL_88;
      }
    }

    LODWORD(v30) = 0;
    goto LABEL_89;
  }

  v31 = *(a1 + 132160);
  *(a1 + 132164) = v31;
  v28 = *(a1 + 114332);
LABEL_133:
  if (v28 == 2)
  {
    v55 = *(a1 + 132176);
    if (v31 < v55)
    {
      *(a1 + 132164) = v55;
    }
  }

LABEL_136:
  if (*(a1 + 132180) && *(a1 + 114332) == 1 && (*(a1 + 132112) & 0x8000000000000000) != 0)
  {
    *(a1 + 132184) = 1;
    v56 = *(a1 + 132120) + *(a1 + 132016);
    *(a1 + 132120) = v56;
    v57 = *(a1 + 114360);
    if (v56 > v57)
    {
      v56 = v57;
      *(a1 + 132120) = v57;
    }

    *(a1 + 132112) = v56;
    v58 = *(a1 + 114516);
    if (v58 >= 2)
    {
      v59 = v5 + 1;
      if (v5 + 1 < v58)
      {
        v60 = ~v5 + v58;
        v61 = (a1 + 216 * v59 + 149336);
        do
        {
          v62 = *v61 + (*(v61 - 18) / *(v61 - 10));
          if (v62 >= *(v61 - 6))
          {
            v62 = *(v61 - 6);
          }

          *(v61 - 1) = v62;
          *v61 = v62;
          v61 += 27;
          --v60;
        }

        while (v60);
      }
    }
  }

  if (!*(a1 + 114472) && !*(a1 + 131948) && !*(a1 + 132184))
  {
    if (*(a1 + 143160))
    {
      v63 = *(a1 + 114304);
      *(a1 + 143168) = v63 < 0x65;
      v64 = *(a1 + 143164);
      *(a1 + 131976) = v64;
      if (*(a1 + 143028) > *(a1 + 111072) >> 1)
      {
        *(a1 + 111572) = 1;
        *v2 = (v63 + 100) * v6 / 0x64;
      }

      *(a1 + 131948) = v64;
LABEL_187:
      v2[12] = v64;
      goto LABEL_188;
    }

    v65 = *(a1 + 114392);
    if (v65 < 0)
    {
      v65 = *(a1 + 131916);
    }

    v66 = *(a1 + 142872) + *(a1 + 142868);
    v67 = 100 * *(a1 + 148160) / (*(a1 + 111080) * *(a1 + 111076));
    v68 = 100 * v66 / (*(a1 + 142864) + *(a1 + 142860) + v66);
    if (!(*(a1 + 142864) + *(a1 + 142860) + v66))
    {
      v68 = 0;
    }

    if (v67 <= v68)
    {
      v67 = v68;
    }

    if (*(a1 + 142800))
    {
      if (v7)
      {
        if (v7 != 2)
        {
          goto LABEL_167;
        }
      }

      else if (*(a1 + 142876) >= 15 && v67 <= 4)
      {
        goto LABEL_167;
      }

      *(a1 + 111572) = 1;
    }

LABEL_167:
    if (*(a1 + 111572) != 1)
    {
      goto LABEL_188;
    }

    if (*(a1 + 142804))
    {
      calc_gf_params(a1);
    }

    if (v3[977])
    {
      v69 = 0;
    }

    else if ((v3[833] & 0x80000000) != 0)
    {
      if (v1[15] == 2)
      {
        v69 = v2[27];
      }

      else
      {
        v73 = *v1;
        v74 = v2[11];
        v75 = *v1 + 100 * v74;
        v76 = v2[30] + v2[30] * v74;
        if (*v1 < 1001)
        {
          v77 = *v1;
        }

        else
        {
          do
          {
            v77 = v73 >> 1;
            v75 /= 2;
            v53 = v73 > 0x7D1;
            v73 >>= 1;
          }

          while (v53);
        }

        v53 = v75 < v76 >> 7;
        v78 = v77 * v76;
        v79 = v76 / v75 * v77;
        v69 = v78 / v75;
        if (v53)
        {
          v69 = v79;
        }
      }
    }

    else
    {
      v70 = v3[3];
      v71 = vp8_bits_per_mb[v65 + 128] + 0.5;
      if (v70 <= 2048)
      {
        v72 = (v70 * v71) >> 9;
      }

      else
      {
        v72 = (v71 >> 9) * v70;
      }

      v69 = (v72 * *v1) / 100;
    }

    *v2 = v69;
    v64 = v2[11];
    goto LABEL_187;
  }

LABEL_188:
  v2[27] = v4;
  if (v2[70])
  {
    result = 0;
    v2[70] = 0;
    return result;
  }

  return 1;
}

uint64_t vp8_drop_encodedframe_overshoot(uint64_t a1, int a2)
{
  v2 = (a1 + 143136);
  v3 = (a1 + 111060);
  v4 = *(a1 + 114736);
  v5 = *(a1 + 114716);
  if (v5 >= 2 && *(a1 + 114720))
  {
    v6 = *(v4 + 8);
    if (!v6)
    {
      result = 0;
      v28 = v2[4] + 1;
      v2[3] = 0;
      v2[4] = v28;
      return result;
    }

    if (!*v3)
    {
LABEL_47:
      v29 = *(a1 + 143152) + 1;
      *(a1 + 143148) = 0;
      *(a1 + 143152) = v29;
      if (v5 >= 2)
      {
        goto LABEL_48;
      }

      return 0;
    }
  }

  else
  {
    v6 = 0;
    if (!*v3)
    {
      goto LABEL_47;
    }
  }

  if (*(a1 + 114308) != 2 && (!*(a1 + 132180) || !v6 && (*(a1 + 131920) >= 0.08 || *(a1 + 143152) <= *(a1 + 132096))))
  {
    goto LABEL_47;
  }

  v7 = *(a1 + 132160);
  v8 = *(a1 + 132016);
  v9 = *(a1 + 111072);
  if (a2 >= (3 * v7) >> 2)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + 103592) / v9;
  v11 = v10 <= 51200 || *(a1 + 132180) == 0;
  v12 = v8 >> 5;
  if (v11)
  {
    v12 = (v8 >> 2) & 0xFFFFFFFE;
  }

  if (*(a1 + 131908) <= v12 || v10 < 3201)
  {
LABEL_23:
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  else if (!v6 && 2 * *(a1 + 143156) >= v10)
  {
LABEL_21:
    v13 = *(a1 + 143152) + 1;
    *(a1 + 143148) = 0;
    *(a1 + 143152) = v13;
    if (v5 >= 2)
    {
LABEL_48:
      result = 0;
      *(v4 + 8) = 0;
      return result;
    }

    return 0;
  }

  *(a1 + 143148) = 1;
  v15 = *(a1 + 114352);
  *(a1 + 132112) = v15;
  *(a1 + 132120) = v15;
  v16 = (v8 << 9) / v9;
  v17 = v8 / v9;
  if (v17 < 0x400000)
  {
    v18 = v17 << 9;
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  if (v8 >= 0x400000)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19 / vp8_bits_per_mb[v7 + 128];
  v21 = *(a1 + 131920);
  if (v20 > v21)
  {
    v21 = v21 + v21;
    if (v21 >= v20)
    {
      v21 = v19 / vp8_bits_per_mb[v7 + 128];
    }

    *(a1 + 131920) = v21;
  }

  if (v21 > 50.0)
  {
    *(a1 + 131920) = 0x4049000000000000;
    v21 = 50.0;
  }

  ++*(a1 + 113852);
  ++*(a1 + 115164);
  ++*v2;
  *(a1 + 143152) = 0;
  v22 = *(a1 + 114516);
  if (v22 >= 2)
  {
    v23 = (a1 + 149652);
    v24 = v22 & 0xFFFFFFFE;
    v25 = v24;
    do
    {
      *(v23 - 27) = 0x100000000;
      *v23 = 0x100000000;
      *(v23 - 260) = v21;
      *(v23 - 44) = v21;
      v23 += 54;
      v25 -= 2;
    }

    while (v25);
    v26 = v22 - v24;
    if (v22 != v24)
    {
      v27 = a1 + 432 * (v22 >> 1) + 149392;
      do
      {
        *(v27 + 44) = 0x100000000;
        *v27 = v21;
        v27 += 216;
        --v26;
      }

      while (v26);
    }
  }

  result = 1;
  if (v5 >= 2)
  {
    *(v4 + 8) = 1;
  }

  return result;
}

_DWORD *calc_gf_params(_DWORD *result)
{
  v1 = result[28598];
  v2 = v1;
  if (v1 < 0)
  {
    v2 = result[32979];
  }

  v3 = result[35718] + result[35717];
  v4 = result[35716] + result[35715] + v3;
  if (v4)
  {
    v4 = 100 * v3 / v4;
  }

  v5 = result[35704];
  if (v5 == 2)
  {
    result[32987] = result[32994];
  }

  else
  {
    v6 = 100 * result[37040] / (result[27770] * result[27769]);
    if (v6 <= v4)
    {
      v6 = v4;
    }

    v7 = result[35719];
    if (v7 >= 14)
    {
      v7 = 14;
    }

    v8 = 1374389535 * gf_intra_usage_adjustment[v7] * vp8_gf_boost_qadjustment[v2] / 100 * gf_adjust_table[v6];
    v9 = (v8 >> 37) + (v8 >> 63);
    if (!result[35727] && result[35699] == 2)
    {
      v9 = (v8 >> 38) + (v8 >> 63);
    }

    v10 = kf_gf_boost_qlimits[v2];
    if (v9 <= 110)
    {
      v11 = 110;
    }

    else
    {
      v11 = v9;
    }

    if (v9 > v10 && v5 == 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    result[35689] = v13;
    v14 = result[32994];
    result[32987] = v14;
    if (v1 != -1)
    {
      goto LABEL_24;
    }

    v15 = v14;
    if (v13 >= 751)
    {
      v15 = v14 + 1;
      result[32987] = v14 + 1;
      if (v13 >= 0x3E9)
      {
        v15 = v14 + 2;
        result[32987] = v14 + 2;
        if (v13 >= 0x4E3)
        {
          v15 = v14 + 3;
          result[32987] = v14 + 3;
          if (v13 >= 0x5DC)
          {
            v15 = v14 + 4;
            result[32987] = v14 + 4;
          }
        }
      }
    }

    v16 = gf_interval_table[v6];
    if (v16 > v15)
    {
      result[32987] = v16;
      v15 = v16;
    }

    v17 = result[32993];
    if (v15 > v17)
    {
      result[32987] = v17;
      result[28741] = 0;
    }

    else
    {
LABEL_24:
      result[28741] = 0;
    }
  }

  return result;
}

uint64_t vp8_initialize_rd_consts(int *a1, uint64_t a2, int a3)
{
  v5 = a1 + 35704;
  v6 = a1 + 28816;
  v7 = a1 + 27765;
  if (a3 >= 160)
  {
    v8 = 160;
  }

  else
  {
    v8 = a3;
  }

  v9 = v8;
  v10 = (v9 * v9 * 2.8);
  v11 = a1 + 20590;
  a1[28836] = v10;
  v12 = a1[25971];
  if (v12 >= 1)
  {
    v13 = ((v12 * 0.0015625 + 1.0) * v9);
    v10 = (v13 * v13 * 2.8);
    a1[28836] = v10;
  }

  v14 = a3;
  if (*v5 == 2)
  {
    if (*v7)
    {
      v15 = a1[36882];
      if (v15 <= 0x1F)
      {
        v10 += (rd_iifactor[v15] * v10) >> 4;
        a1[28836] = v10;
      }
    }
  }

  if ((v10 + 109) >= 0xDB)
  {
    v16 = v10 / 110;
  }

  else
  {
    v16 = v10 / 110 + 1;
  }

  *v11 = v16;
  vp8_set_speed_features(a1);
  *(a2 + 30108) = 0u;
  *(a2 + 30124) = 0u;
  *(a2 + 30076) = 0u;
  *(a2 + 30092) = 0u;
  *(a2 + 30060) = 0u;
  v17 = pow(v14, 1.25);
  if (v17 <= 8)
  {
    v17 = 8;
  }

  v18 = v6[20];
  if (v18 < 1001)
  {
    v6[21] = 100;
    v58 = 0x7FFFFFFFu / v17;
    v59 = v5[27];
    if (v59 >= (0x7FFFFFFFu / v17))
    {
      v60 = 0x7FFFFFFF;
    }

    else
    {
      v60 = v59 * v17;
    }

    *(a2 + 29976) = v60;
    *v6 = v60;
    v61 = v5[28];
    if (v61 >= v58)
    {
      v62 = 0x7FFFFFFF;
    }

    else
    {
      v62 = v61 * v17;
    }

    *(a2 + 29980) = v62;
    v6[1] = v62;
    v63 = v5[29];
    if (v63 >= v58)
    {
      v64 = 0x7FFFFFFF;
    }

    else
    {
      v64 = v63 * v17;
    }

    *(a2 + 29984) = v64;
    v6[2] = v64;
    v65 = v5[30];
    if (v65 >= v58)
    {
      v66 = 0x7FFFFFFF;
    }

    else
    {
      v66 = v65 * v17;
    }

    *(a2 + 29988) = v66;
    v6[3] = v66;
    v67 = v5[31];
    if (v67 >= v58)
    {
      v68 = 0x7FFFFFFF;
    }

    else
    {
      v68 = v67 * v17;
    }

    *(a2 + 29992) = v68;
    v6[4] = v68;
    v69 = v5[32];
    if (v69 >= v58)
    {
      v70 = 0x7FFFFFFF;
    }

    else
    {
      v70 = v69 * v17;
    }

    *(a2 + 29996) = v70;
    v6[5] = v70;
    v71 = v5[33];
    if (v71 >= v58)
    {
      v72 = 0x7FFFFFFF;
    }

    else
    {
      v72 = v71 * v17;
    }

    *(a2 + 30000) = v72;
    v6[6] = v72;
    v73 = v5[34];
    if (v73 >= v58)
    {
      v74 = 0x7FFFFFFF;
    }

    else
    {
      v74 = v73 * v17;
    }

    *(a2 + 30004) = v74;
    v6[7] = v74;
    v75 = v5[35];
    if (v75 >= v58)
    {
      v76 = 0x7FFFFFFF;
    }

    else
    {
      v76 = v75 * v17;
    }

    *(a2 + 30008) = v76;
    v6[8] = v76;
    v77 = v5[36];
    if (v77 >= v58)
    {
      v78 = 0x7FFFFFFF;
    }

    else
    {
      v78 = v77 * v17;
    }

    *(a2 + 30012) = v78;
    v6[9] = v78;
    v79 = v5[37];
    if (v79 >= v58)
    {
      v80 = 0x7FFFFFFF;
    }

    else
    {
      v80 = v79 * v17;
    }

    *(a2 + 30016) = v80;
    v6[10] = v80;
    v81 = v5[38];
    if (v81 >= v58)
    {
      v82 = 0x7FFFFFFF;
    }

    else
    {
      v82 = v81 * v17;
    }

    *(a2 + 30020) = v82;
    v6[11] = v82;
    v83 = v5[39];
    if (v83 >= v58)
    {
      v84 = 0x7FFFFFFF;
    }

    else
    {
      v84 = v83 * v17;
    }

    *(a2 + 30024) = v84;
    v6[12] = v84;
    v85 = v5[40];
    if (v85 >= v58)
    {
      v86 = 0x7FFFFFFF;
    }

    else
    {
      v86 = v85 * v17;
    }

    *(a2 + 30028) = v86;
    v6[13] = v86;
    v87 = v5[41];
    if (v87 >= v58)
    {
      v88 = 0x7FFFFFFF;
    }

    else
    {
      v88 = v87 * v17;
    }

    *(a2 + 30032) = v88;
    v6[14] = v88;
    v89 = v5[42];
    if (v89 >= v58)
    {
      v90 = 0x7FFFFFFF;
    }

    else
    {
      v90 = v89 * v17;
    }

    *(a2 + 30036) = v90;
    v6[15] = v90;
    v91 = v5[43];
    if (v91 >= v58)
    {
      v92 = 0x7FFFFFFF;
    }

    else
    {
      v92 = v91 * v17;
    }

    *(a2 + 30040) = v92;
    v6[16] = v92;
    v93 = v5[44];
    if (v93 >= v58)
    {
      v94 = 0x7FFFFFFF;
    }

    else
    {
      v94 = v93 * v17;
    }

    *(a2 + 30044) = v94;
    v6[17] = v94;
    v95 = v5[45];
    if (v95 >= v58)
    {
      v96 = 0x7FFFFFFF;
    }

    else
    {
      v96 = v95 * v17;
    }

    *(a2 + 30048) = v96;
    v6[18] = v96;
    v97 = v5[46];
    v98 = v97 * v17;
    if (v97 >= v58)
    {
      v99 = 0x7FFFFFFF;
    }

    else
    {
      v99 = v98;
    }

    v57 = 144168;
    *(a2 + 30052) = v99;
    v6[19] = v99;
    if (v7[129])
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

  v6[20] = v18 / 0x64u;
  v6[21] = 1;
  v19 = v5[27];
  v20 = 0x7FFFFFFF;
  v21 = 0x7FFFFFFF;
  if (v19 != 0x7FFFFFFF)
  {
    v21 = v19 * v17 / 100;
  }

  *(a2 + 29976) = v21;
  *v6 = v21;
  v22 = v5[28];
  if (v22 != 0x7FFFFFFF)
  {
    v20 = v22 * v17 / 100;
  }

  *(a2 + 29980) = v20;
  v6[1] = v20;
  v23 = v5[29];
  v24 = 0x7FFFFFFF;
  v25 = 0x7FFFFFFF;
  if (v23 != 0x7FFFFFFF)
  {
    v25 = v23 * v17 / 100;
  }

  *(a2 + 29984) = v25;
  v6[2] = v25;
  v26 = v5[30];
  if (v26 != 0x7FFFFFFF)
  {
    v24 = v26 * v17 / 100;
  }

  *(a2 + 29988) = v24;
  v6[3] = v24;
  v27 = v5[31];
  v28 = 0x7FFFFFFF;
  v29 = 0x7FFFFFFF;
  if (v27 != 0x7FFFFFFF)
  {
    v29 = v27 * v17 / 100;
  }

  *(a2 + 29992) = v29;
  v6[4] = v29;
  v30 = v5[32];
  if (v30 != 0x7FFFFFFF)
  {
    v28 = v30 * v17 / 100;
  }

  *(a2 + 29996) = v28;
  v6[5] = v28;
  v31 = v5[33];
  v32 = 0x7FFFFFFF;
  v33 = 0x7FFFFFFF;
  if (v31 != 0x7FFFFFFF)
  {
    v33 = v31 * v17 / 100;
  }

  *(a2 + 30000) = v33;
  v6[6] = v33;
  v34 = v5[34];
  if (v34 != 0x7FFFFFFF)
  {
    v32 = v34 * v17 / 100;
  }

  *(a2 + 30004) = v32;
  v6[7] = v32;
  v35 = v5[35];
  v36 = 0x7FFFFFFF;
  v37 = 0x7FFFFFFF;
  if (v35 != 0x7FFFFFFF)
  {
    v37 = v35 * v17 / 100;
  }

  *(a2 + 30008) = v37;
  v6[8] = v37;
  v38 = v5[36];
  if (v38 != 0x7FFFFFFF)
  {
    v36 = v38 * v17 / 100;
  }

  *(a2 + 30012) = v36;
  v6[9] = v36;
  v39 = v5[37];
  v40 = 0x7FFFFFFF;
  v41 = 0x7FFFFFFF;
  if (v39 != 0x7FFFFFFF)
  {
    v41 = v39 * v17 / 100;
  }

  *(a2 + 30016) = v41;
  v6[10] = v41;
  v42 = v5[38];
  if (v42 != 0x7FFFFFFF)
  {
    v40 = v42 * v17 / 100;
  }

  *(a2 + 30020) = v40;
  v6[11] = v40;
  v43 = v5[39];
  v44 = 0x7FFFFFFF;
  v45 = 0x7FFFFFFF;
  if (v43 != 0x7FFFFFFF)
  {
    v45 = v43 * v17 / 100;
  }

  *(a2 + 30024) = v45;
  v6[12] = v45;
  v46 = v5[40];
  if (v46 != 0x7FFFFFFF)
  {
    v44 = v46 * v17 / 100;
  }

  *(a2 + 30028) = v44;
  v6[13] = v44;
  v47 = v5[41];
  v48 = 0x7FFFFFFF;
  v49 = 0x7FFFFFFF;
  if (v47 != 0x7FFFFFFF)
  {
    v49 = v47 * v17 / 100;
  }

  *(a2 + 30032) = v49;
  v6[14] = v49;
  v50 = v5[42];
  if (v50 != 0x7FFFFFFF)
  {
    v48 = v50 * v17 / 100;
  }

  *(a2 + 30036) = v48;
  v6[15] = v48;
  v51 = v5[43];
  v52 = 0x7FFFFFFF;
  v53 = 0x7FFFFFFF;
  if (v51 != 0x7FFFFFFF)
  {
    v53 = v51 * v17 / 100;
  }

  *(a2 + 30040) = v53;
  v6[16] = v53;
  v54 = v5[44];
  if (v54 != 0x7FFFFFFF)
  {
    v52 = v54 * v17 / 100;
  }

  *(a2 + 30044) = v52;
  v6[17] = v52;
  v55 = v5[45];
  if (v55 == 0x7FFFFFFF)
  {
    *(a2 + 30048) = 0x7FFFFFFF;
    v6[18] = 0x7FFFFFFF;
    v56 = v5[46];
    if (v56 == 0x7FFFFFFF)
    {
      goto LABEL_54;
    }

LABEL_125:
    v105 = v56 * v17 / 100;
    v57 = 144168;
    *(a2 + 30052) = v105;
    v6[19] = v105;
    if (v7[129])
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

  v104 = v55 * v17 / 100;
  *(a2 + 30048) = v104;
  v6[18] = v104;
  v56 = v5[46];
  if (v56 != 0x7FFFFFFF)
  {
    goto LABEL_125;
  }

LABEL_54:
  v57 = 144168;
  *(a2 + 30052) = 0x7FFFFFFF;
  v6[19] = 0x7FFFFFFF;
  if (v7[129])
  {
LABEL_55:
    v57 = 145281;
    goto LABEL_119;
  }

LABEL_117:
  if (v7[128])
  {
    v57 = 146394;
  }

LABEL_119:
  v100 = 0;
  v101 = a1 + v57;
  v102 = *(v11 + 14) + 1104;
  do
  {
    cost(v102 - 1104, vp8_coef_tree, &v101[v100 + 19], 0, 0);
    cost(v102 - 1056, vp8_coef_tree, &v101[v100 + 30], 0, 0);
    cost(v102 - 1008, vp8_coef_tree, &v101[v100 + 41], 0, 0);
    cost(v102 - 960, vp8_coef_tree, &v101[v100 + 52], 2 * (v100 != 0), 0);
    cost(v102 - 912, vp8_coef_tree, &v101[v100 + 63], 0, 0);
    cost(v102 - 864, vp8_coef_tree, &v101[v100 + 74], 0, 0);
    cost(v102 - 816, vp8_coef_tree, &v101[v100 + 85], 2, 0);
    cost(v102 - 768, vp8_coef_tree, &v101[v100 + 96], 0, 0);
    cost(v102 - 720, vp8_coef_tree, &v101[v100 + 107], 0, 0);
    cost(v102 - 672, vp8_coef_tree, &v101[v100 + 118], 2, 0);
    cost(v102 - 624, vp8_coef_tree, &v101[v100 + 129], 0, 0);
    cost(v102 - 576, vp8_coef_tree, &v101[v100 + 140], 0, 0);
    cost(v102 - 528, vp8_coef_tree, &v101[v100 + 151], 2, 0);
    cost(v102 - 480, vp8_coef_tree, &v101[v100 + 162], 0, 0);
    cost(v102 - 432, vp8_coef_tree, &v101[v100 + 173], 0, 0);
    cost(v102 - 384, vp8_coef_tree, &v101[v100 + 184], 2, 0);
    cost(v102 - 336, vp8_coef_tree, &v101[v100 + 195], 0, 0);
    cost(v102 - 288, vp8_coef_tree, &v101[v100 + 206], 0, 0);
    cost(v102 - 240, vp8_coef_tree, &v101[v100 + 217], 2, 0);
    cost(v102 - 192, vp8_coef_tree, &v101[v100 + 228], 0, 0);
    cost(v102 - 144, vp8_coef_tree, &v101[v100 + 239], 0, 0);
    cost(v102 - 96, vp8_coef_tree, &v101[v100 + 250], 2, 0);
    cost(v102 - 48, vp8_coef_tree, &v101[v100 + 261], 0, 0);
    cost(v102, vp8_coef_tree, &v101[v100 + 272], 0, 0);
    v100 += 264;
    v102 += 1152;
  }

  while (v100 != 1056);

  return vp8_init_mode_costs(a1);
}

uint64_t vp8_mbuverror_c(void *a1)
{
  v1 = a1[410];
  v2 = a1[909];
  v3 = v1[1];
  v4 = v2[1];
  v5 = vsubl_high_s16(*v1, *v2);
  v6 = vsubl_high_s16(v3, v4);
  v7 = vsubl_s16(*v1->i8, *v2->i8);
  v8 = vsubl_s16(*v3.i8, *v4.i8);
  v9 = vaddq_s32(vmlaq_s32(vmulq_s32(v8, v8), v7, v7), vmlaq_s32(vmulq_s32(v6, v6), v5, v5));
  v10 = a1[421];
  v11 = a1[916];
  v12 = v10[1];
  v13 = v11[1];
  v14 = vsubl_high_s16(*v10, *v11);
  v15 = vsubl_high_s16(v12, v13);
  v16 = vsubl_s16(*v10->i8, *v11->i8);
  v17 = vsubl_s16(*v12.i8, *v13.i8);
  v18 = vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v17, v17), v16, v16), vmlaq_s32(vmulq_s32(v15, v15), v14, v14)), v9);
  v19 = a1[432];
  v20 = a1[923];
  v21 = v19[1];
  v22 = v20[1];
  v23 = vsubl_high_s16(*v19, *v20);
  v24 = vsubl_high_s16(v21, v22);
  v25 = vsubl_s16(*v19->i8, *v20->i8);
  v26 = vsubl_s16(*v21.i8, *v22.i8);
  v27 = vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v26, v26), v25, v25), vmlaq_s32(vmulq_s32(v24, v24), v23, v23)), v18);
  v28 = a1[443];
  v29 = a1[930];
  v30 = v28[1];
  v31 = v29[1];
  v32 = vsubl_high_s16(*v28, *v29);
  v33 = vsubl_high_s16(v30, v31);
  v34 = vsubl_s16(*v28->i8, *v29->i8);
  v35 = vsubl_s16(*v30.i8, *v31.i8);
  v36 = vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v35, v35), v34, v34), vmlaq_s32(vmulq_s32(v33, v33), v32, v32)), v27);
  v37 = a1[454];
  v38 = a1[937];
  v39 = v37[1];
  v40 = v38[1];
  v41 = vsubl_high_s16(*v37, *v38);
  v42 = vsubl_high_s16(v39, v40);
  v43 = vsubl_s16(*v37->i8, *v38->i8);
  v44 = vsubl_s16(*v39.i8, *v40.i8);
  v45 = vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v44, v44), v43, v43), vmlaq_s32(vmulq_s32(v42, v42), v41, v41)), v36);
  v46 = a1[465];
  v47 = a1[944];
  v48 = v46[1];
  v49 = v47[1];
  v50 = vsubl_high_s16(*v46, *v47);
  v51 = vsubl_high_s16(v48, v49);
  v52 = vsubl_s16(*v46->i8, *v47->i8);
  v53 = vsubl_s16(*v48.i8, *v49.i8);
  v54 = vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v53, v53), v52, v52), vmlaq_s32(vmulq_s32(v51, v51), v50, v50)), v45);
  v55 = a1[476];
  v56 = a1[951];
  v57 = v55[1];
  v58 = v56[1];
  v59 = vsubl_high_s16(*v55, *v56);
  v60 = vsubl_high_s16(v57, v58);
  v61 = vsubl_s16(*v55->i8, *v56->i8);
  v62 = vsubl_s16(*v57.i8, *v58.i8);
  v63 = vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v62, v62), v61, v61), vmlaq_s32(vmulq_s32(v60, v60), v59, v59)), v54);
  v64 = a1[487];
  v65 = a1[958];
  v66 = v64[1];
  v67 = v65[1];
  v68 = vsubl_high_s16(*v64, *v65);
  v69 = vsubl_high_s16(v66, v67);
  v70 = vsubl_s16(*v64->i8, *v65->i8);
  v71 = vsubl_s16(*v66.i8, *v67.i8);
  return vaddvq_s32(vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v71, v71), v70, v70), vmlaq_s32(vmulq_s32(v69, v69), v68, v68)), v63));
}

uint64_t VP8_UVSSE(uint64_t a1)
{
  v1 = **(a1 + 3344);
  v2 = *(a1 + 3352);
  v3 = **(a1 + 3696);
  v4 = *(a1 + 3704);
  v5 = *(a1 + 3356);
  v19 = 0;
  v6 = *(a1 + 8096);
  v7 = *(v6 + 4);
  v8 = *(v6 + 6);
  v9 = *(a1 + 7812);
  if (v7 >= 0)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7 - 1;
  }

  if (v8 >= 0)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v8 - 1;
  }

  v12 = v10 / 2;
  v13 = v11 / 2;
  v14 = ((v10 + (v10 >> 31)) >> 4) * v9 + ((v11 + (v11 >> 31)) >> 4);
  v15 = *(a1 + 7840);
  v16 = v14;
  v17 = *(a1 + 7848);
  if (((v13 | v12) & 7) != 0)
  {
    vpx_sub_pixel_variance8x8_neon(v15 + v14, v9, v13 & 7, v12 & 7, v1 + v2, v5, &v19);
    vpx_sub_pixel_variance8x8_neon(v17 + v16, v9, v13 & 7, v12 & 7, v3 + v4, v5, &v19 + 4);
  }

  else
  {
    vpx_variance8x8(v15 + v14, v9, v1 + v2, v5, &v19);
    vpx_variance8x8(v17 + v16, v9, v3 + v4, v5, &v19 + 4);
  }

  return (v19 + HIDWORD(v19));
}

uint64_t vp8_mv_pred(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int *a7, int *a8)
{
  v141 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 2);
  if (*(a3 + 2))
  {
    v9 = a2[970];
    v10 = a3 - 76 * v9;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v11 = *(v10 + 2);
    if (*(v10 + 2))
    {
      v12 = *(v10 + 4);
      LODWORD(v139) = v12;
      if (*(a6 + 4 * a5) != *(a6 + 4 * v11))
      {
        LOWORD(v139) = -v12;
        WORD1(v139) = -HIWORD(v12);
      }

      LODWORD(v137) = v11;
    }

    v13 = *(a3 - 74);
    if (*(a3 - 74))
    {
      v14 = *(a3 - 72);
      DWORD1(v139) = v14;
      if (*(a6 + 4 * a5) != *(a6 + 4 * v13))
      {
        WORD2(v139) = -v14;
        WORD3(v139) = -HIWORD(v14);
      }

      DWORD1(v137) = v13;
    }

    v15 = *(v10 - 74);
    if (*(v10 - 74))
    {
      v16 = *(v10 - 72);
      DWORD2(v139) = v16;
      if (*(a6 + 4 * a5) != *(a6 + 4 * v15))
      {
        WORD4(v139) = -v16;
        WORD5(v139) = -HIWORD(v16);
      }

      DWORD2(v137) = v15;
    }

    v17 = *(result + 111056);
    if (v17)
    {
      v18 = (result + 148168);
      v19 = v9 + 1 - (v9 + 1) * (a2[1003] / 128) - a2[1001] / 128;
      v20 = *(result + 148184);
      v21 = v19 + 1;
      v22 = *(v20 + 4 * v21);
      if (v22)
      {
        v23 = *(result + 148176);
        v24 = *(*v18 + 4 * v21);
        HIDWORD(v139) = v24;
        result = *(a6 + 4 * a5);
        if (result != *(v23 + 4 * v21))
        {
          WORD6(v139) = -v24;
          HIWORD(v139) = -HIWORD(v24);
        }

        HIDWORD(v137) = v22;
      }

      v25 = v19 - v9;
      v26 = *(v20 + 4 * (v19 - v9));
      if (v26)
      {
        v27 = v18[1];
        v28 = *(*v18 + 4 * v25);
        LODWORD(v140) = v28;
        v29 = *(v27 + 4 * v25);
        result = *(a6 + 4 * a5);
        if (result != v29)
        {
          LOWORD(v140) = -v28;
          WORD1(v140) = -HIWORD(v28);
        }

        LODWORD(v138) = v26;
      }

      v30 = *(v20 + 4 * v19);
      if (v30)
      {
        v31 = v18[1];
        v32 = *(*v18 + 4 * v19);
        DWORD1(v140) = v32;
        result = *(a6 + 4 * a5);
        if (result != *(v31 + 4 * v19))
        {
          WORD2(v140) = -v32;
          WORD3(v140) = -HIWORD(v32);
        }

        DWORD1(v138) = v30;
      }

      v33 = v19 + 2;
      v34 = *(v20 + 4 * (v19 + 2));
      if (v34)
      {
        v35 = v18[1];
        v36 = *(*v18 + 4 * v33);
        DWORD2(v140) = v36;
        if (*(a6 + 4 * a5) != *(v35 + 4 * v33))
        {
          WORD4(v140) = -v36;
          WORD5(v140) = -HIWORD(v36);
        }

        DWORD2(v138) = v34;
      }

      v37 = v21 + v9;
      v38 = *(v20 + 4 * (v37 + 1));
      if (v38)
      {
        v39 = v18[1];
        v40 = *(*v18 + 4 * (v37 + 1));
        HIDWORD(v140) = v40;
        if (*(a6 + 4 * a5) != *(v39 + 4 * v37 + 4))
        {
          WORD6(v140) = -v40;
          HIWORD(v140) = -HIWORD(v40);
        }

        HIDWORD(v138) = v38;
      }

      v41 = 4;
      v42 = *a8;
      if (*(&v137 + v42) == v8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v41 = 1;
      v42 = *a8;
      if (*(&v137 + v42) == v8)
      {
LABEL_41:
        v44 = 3;
LABEL_42:
        LODWORD(v41) = *(&v139 + v42);
        v45 = WORD1(v41);
LABEL_43:
        *a7 = v44;
        v43 = v45 << 16;
        goto LABEL_44;
      }
    }

    v42 = a8[1];
    if (*(&v137 + v42) == v8)
    {
      goto LABEL_41;
    }

    v42 = a8[2];
    if (*(&v137 + v42) == v8)
    {
      goto LABEL_41;
    }

    if (v17)
    {
      v42 = a8[3];
      if (*(&v137 + v42) == v8 || (v42 = a8[4], *(&v137 + v42) == v8) || (v42 = a8[5], *(&v137 + v42) == v8) || (v42 = a8[6], *(&v137 + v42) == v8) || (v42 = a8[7], *(&v137 + v42) == v8))
      {
        v44 = 2;
        goto LABEL_42;
      }
    }

    *v136 = v139;
    *&v136[4] = SWORD2(v139);
    *v135 = SWORD1(v139);
    *&v135[4] = SWORD3(v139);
    *&v136[8] = SWORD4(v139);
    *&v135[8] = SWORD5(v139);
    if (v17)
    {
      *&v136[12] = SWORD6(v139);
      *&v136[16] = v140;
      *&v135[12] = SHIWORD(v139);
      *&v135[16] = SWORD1(v140);
      *&v136[20] = SWORD2(v140);
      *&v136[24] = SWORD4(v140);
      *&v135[20] = SWORD3(v140);
      *&v135[24] = SWORD5(v140);
      *&v136[28] = SWORD6(v140);
      *&v135[28] = SHIWORD(v140);
    }

    v50 = *&v136[4];
    if (*v136 <= *&v136[4])
    {
      v53 = *&v136[8];
      if (*v136 <= *&v136[8])
      {
LABEL_62:
        v54 = *&v136[8];
        if (*&v136[4] > *&v136[8])
        {
          goto LABEL_63;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v51 = *v136;
      *v136 = *&v136[4];
      *&v136[4] = v51;
      v52 = v50;
      v53 = *&v136[8];
      if (v52 <= *&v136[8])
      {
        goto LABEL_62;
      }
    }

    v56 = *&v136[4];
    *&v136[4] = *v136;
    *&v136[8] = v56;
    *v136 = v53;
    v54 = v56;
    if (*&v136[4] > v56)
    {
LABEL_63:
      v55 = *&v136[4];
      *&v136[4] = v54;
      *&v136[8] = v55;
      if (!v17)
      {
        goto LABEL_94;
      }

LABEL_68:
      v57 = *&v136[12];
      if (*v136 <= *&v136[12])
      {
        v58 = *&v136[12];
        if (*&v136[4] <= *&v136[12])
        {
LABEL_70:
          v59 = *&v136[12];
          if (*&v136[8] > *&v136[12])
          {
            goto LABEL_71;
          }

          goto LABEL_131;
        }
      }

      else
      {
        *&v136[12] = *&v136[8];
        *&v136[4] = *v136;
        *v136 = v57;
        v58 = *&v136[12];
        if (*&v136[4] <= *&v136[12])
        {
          goto LABEL_70;
        }
      }

      v125 = *&v136[8];
      *&v136[8] = *&v136[4];
      *&v136[12] = v125;
      *&v136[4] = v58;
      v59 = v125;
      if (*&v136[8] > v125)
      {
LABEL_71:
        v60 = *&v136[8];
        *&v136[8] = v59;
        *&v136[12] = v60;
        v61 = *&v136[16];
        if (*v136 <= *&v136[16])
        {
          goto LABEL_72;
        }

        goto LABEL_132;
      }

LABEL_131:
      v61 = *&v136[16];
      if (*v136 <= *&v136[16])
      {
LABEL_72:
        v62 = *&v136[16];
        if (*&v136[4] > *&v136[16])
        {
          goto LABEL_73;
        }

        goto LABEL_133;
      }

LABEL_132:
      *&v136[4] = *v136;
      *v136 = v61;
      v62 = *&v136[16];
      if (*&v136[4] > *&v136[16])
      {
LABEL_73:
        *&v136[16] = *&v136[12];
        *&v136[8] = *&v136[4];
        *&v136[4] = v62;
        v63 = *&v136[16];
        if (*&v136[8] <= *&v136[16])
        {
          goto LABEL_74;
        }

        goto LABEL_134;
      }

LABEL_133:
      v63 = *&v136[16];
      if (*&v136[8] <= *&v136[16])
      {
LABEL_74:
        v64 = *&v136[16];
        if (*&v136[12] > *&v136[16])
        {
          goto LABEL_75;
        }

        goto LABEL_135;
      }

LABEL_134:
      v126 = *&v136[12];
      *&v136[12] = *&v136[8];
      *&v136[16] = v126;
      *&v136[8] = v63;
      v64 = v126;
      if (*&v136[12] > v126)
      {
LABEL_75:
        v65 = *&v136[12];
        *&v136[12] = v64;
        *&v136[16] = v65;
        v66 = *&v136[20];
        if (*v136 <= *&v136[20])
        {
          goto LABEL_76;
        }

        goto LABEL_136;
      }

LABEL_135:
      v66 = *&v136[20];
      if (*v136 <= *&v136[20])
      {
LABEL_76:
        v67 = *&v136[20];
        if (*&v136[4] > *&v136[20])
        {
          goto LABEL_77;
        }

        goto LABEL_137;
      }

LABEL_136:
      *&v136[20] = *&v136[16];
      *&v136[4] = *v136;
      *v136 = v66;
      v67 = *&v136[20];
      if (*&v136[4] > *&v136[20])
      {
LABEL_77:
        *&v136[8] = *&v136[4];
        *&v136[4] = v67;
        v68 = *&v136[20];
        if (*&v136[8] <= *&v136[20])
        {
          goto LABEL_78;
        }

        goto LABEL_138;
      }

LABEL_137:
      v68 = *&v136[20];
      if (*&v136[8] <= *&v136[20])
      {
LABEL_78:
        v69 = *&v136[20];
        if (*&v136[12] > *&v136[20])
        {
          goto LABEL_79;
        }

        goto LABEL_139;
      }

LABEL_138:
      *&v136[20] = *&v136[16];
      *&v136[12] = *&v136[8];
      *&v136[8] = v68;
      v69 = *&v136[20];
      if (*&v136[12] > *&v136[20])
      {
LABEL_79:
        v70 = *&v136[16];
        *&v136[16] = *&v136[12];
        *&v136[20] = v70;
        *&v136[12] = v69;
        v71 = v70;
        if (*&v136[16] <= v70)
        {
          goto LABEL_80;
        }

        goto LABEL_140;
      }

LABEL_139:
      v71 = *&v136[20];
      if (*&v136[16] <= *&v136[20])
      {
LABEL_80:
        v72 = *&v136[24];
        if (*v136 > *&v136[24])
        {
          goto LABEL_81;
        }

        goto LABEL_141;
      }

LABEL_140:
      v127 = *&v136[16];
      *&v136[16] = v71;
      *&v136[20] = v127;
      v72 = *&v136[24];
      if (*v136 > *&v136[24])
      {
LABEL_81:
        *&v136[12] = *&v136[8];
        *&v136[4] = *v136;
        *v136 = v72;
        v73 = *&v136[24];
        if (*&v136[4] <= *&v136[24])
        {
          goto LABEL_82;
        }

        goto LABEL_142;
      }

LABEL_141:
      v73 = *&v136[24];
      if (*&v136[4] <= *&v136[24])
      {
LABEL_82:
        v74 = *&v136[24];
        if (*&v136[8] > *&v136[24])
        {
          goto LABEL_83;
        }

        goto LABEL_143;
      }

LABEL_142:
      *&v136[24] = *&v136[20];
      *&v136[8] = *&v136[4];
      *&v136[4] = v73;
      v74 = *&v136[24];
      if (*&v136[8] > *&v136[24])
      {
LABEL_83:
        *&v136[12] = *&v136[8];
        *&v136[8] = v74;
        v75 = *&v136[24];
        if (*&v136[12] <= *&v136[24])
        {
          goto LABEL_84;
        }

        goto LABEL_144;
      }

LABEL_143:
      v75 = *&v136[24];
      if (*&v136[12] <= *&v136[24])
      {
LABEL_84:
        v76 = *&v136[24];
        if (*&v136[16] > *&v136[24])
        {
          goto LABEL_85;
        }

        goto LABEL_145;
      }

LABEL_144:
      *&v136[24] = *&v136[20];
      *&v136[16] = *&v136[12];
      *&v136[12] = v75;
      v76 = *&v136[24];
      if (*&v136[16] > *&v136[24])
      {
LABEL_85:
        v77 = *&v136[20];
        *&v136[20] = *&v136[16];
        *&v136[24] = v77;
        *&v136[16] = v76;
        v78 = v77;
        if (*&v136[20] <= v77)
        {
          goto LABEL_86;
        }

        goto LABEL_146;
      }

LABEL_145:
      v78 = *&v136[24];
      if (*&v136[20] <= *&v136[24])
      {
LABEL_86:
        v79 = *&v136[28];
        if (*v136 > *&v136[28])
        {
          goto LABEL_87;
        }

        goto LABEL_147;
      }

LABEL_146:
      v128 = *&v136[20];
      *&v136[20] = v78;
      *&v136[24] = v128;
      v79 = *&v136[28];
      if (*v136 > *&v136[28])
      {
LABEL_87:
        *&v136[28] = *&v136[24];
        *&v136[12] = *&v136[8];
        *&v136[4] = *v136;
        *v136 = v79;
        v80 = *&v136[28];
        if (*&v136[4] <= *&v136[28])
        {
          goto LABEL_88;
        }

        goto LABEL_148;
      }

LABEL_147:
      v80 = *&v136[28];
      if (*&v136[4] <= *&v136[28])
      {
LABEL_88:
        v81 = *&v136[28];
        if (*&v136[8] > *&v136[28])
        {
          goto LABEL_89;
        }

        goto LABEL_149;
      }

LABEL_148:
      *&v136[16] = *&v136[12];
      *&v136[8] = *&v136[4];
      *&v136[4] = v80;
      v81 = *&v136[28];
      if (*&v136[8] > *&v136[28])
      {
LABEL_89:
        *&v136[28] = *&v136[24];
        *&v136[12] = *&v136[8];
        *&v136[8] = v81;
        v82 = *&v136[28];
        if (*&v136[12] <= *&v136[28])
        {
          goto LABEL_90;
        }

        goto LABEL_150;
      }

LABEL_149:
      v82 = *&v136[28];
      if (*&v136[12] <= *&v136[28])
      {
LABEL_90:
        v83 = *&v136[28];
        if (*&v136[16] > *&v136[28])
        {
          goto LABEL_91;
        }

        goto LABEL_151;
      }

LABEL_150:
      *&v136[16] = *&v136[12];
      *&v136[12] = v82;
      v83 = *&v136[28];
      if (*&v136[16] > *&v136[28])
      {
LABEL_91:
        *&v136[28] = *&v136[24];
        *&v136[20] = *&v136[16];
        *&v136[16] = v83;
        v84 = *&v136[28];
        if (*&v136[20] <= *&v136[28])
        {
          goto LABEL_92;
        }

        goto LABEL_152;
      }

LABEL_151:
      v84 = *&v136[28];
      if (*&v136[20] <= *&v136[28])
      {
LABEL_92:
        v85 = *&v136[28];
        if (*&v136[24] <= *&v136[28])
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

LABEL_152:
      v129 = *&v136[24];
      *&v136[24] = *&v136[20];
      *&v136[28] = v129;
      *&v136[20] = v84;
      v85 = v129;
      if (*&v136[24] <= v129)
      {
LABEL_94:
        v87 = *&v135[4];
        if (*v135 <= *&v135[4])
        {
          v90 = *&v135[8];
          if (*v135 <= *&v135[8])
          {
LABEL_96:
            v91 = *&v135[8];
            if (*&v135[4] > *&v135[8])
            {
              goto LABEL_97;
            }

            goto LABEL_101;
          }
        }

        else
        {
          v88 = *v135;
          *v135 = *&v135[4];
          *&v135[4] = v88;
          v89 = v87;
          v90 = *&v135[8];
          if (v89 <= *&v135[8])
          {
            goto LABEL_96;
          }
        }

        v93 = *&v135[4];
        *&v135[4] = *v135;
        *&v135[8] = v93;
        *v135 = v90;
        v91 = v93;
        if (*&v135[4] > v93)
        {
LABEL_97:
          v92 = *&v135[4];
          *&v135[4] = v91;
          *&v135[8] = v92;
          if (!v17)
          {
            goto LABEL_128;
          }

          goto LABEL_102;
        }

LABEL_101:
        if (!v17)
        {
          goto LABEL_128;
        }

LABEL_102:
        v94 = *&v135[12];
        if (*v135 <= *&v135[12])
        {
          v95 = *&v135[12];
          if (*&v135[4] <= *&v135[12])
          {
LABEL_104:
            v96 = *&v135[12];
            if (*&v135[8] > *&v135[12])
            {
              goto LABEL_105;
            }

            goto LABEL_156;
          }
        }

        else
        {
          *&v135[12] = *&v135[8];
          *&v135[4] = *v135;
          *v135 = v94;
          v95 = *&v135[12];
          if (*&v135[4] <= *&v135[12])
          {
            goto LABEL_104;
          }
        }

        v130 = *&v135[8];
        *&v135[8] = *&v135[4];
        *&v135[12] = v130;
        *&v135[4] = v95;
        v96 = v130;
        if (*&v135[8] > v130)
        {
LABEL_105:
          v97 = *&v135[8];
          *&v135[8] = v96;
          *&v135[12] = v97;
          v98 = *&v135[16];
          if (*v135 <= *&v135[16])
          {
            goto LABEL_106;
          }

          goto LABEL_157;
        }

LABEL_156:
        v98 = *&v135[16];
        if (*v135 <= *&v135[16])
        {
LABEL_106:
          v99 = *&v135[16];
          if (*&v135[4] > *&v135[16])
          {
            goto LABEL_107;
          }

          goto LABEL_158;
        }

LABEL_157:
        *&v135[4] = *v135;
        *v135 = v98;
        v99 = *&v135[16];
        if (*&v135[4] > *&v135[16])
        {
LABEL_107:
          *&v135[16] = *&v135[12];
          *&v135[8] = *&v135[4];
          *&v135[4] = v99;
          v100 = *&v135[16];
          if (*&v135[8] <= *&v135[16])
          {
            goto LABEL_108;
          }

          goto LABEL_159;
        }

LABEL_158:
        v100 = *&v135[16];
        if (*&v135[8] <= *&v135[16])
        {
LABEL_108:
          v101 = *&v135[16];
          if (*&v135[12] > *&v135[16])
          {
            goto LABEL_109;
          }

          goto LABEL_160;
        }

LABEL_159:
        v131 = *&v135[12];
        *&v135[12] = *&v135[8];
        *&v135[16] = v131;
        *&v135[8] = v100;
        v101 = v131;
        if (*&v135[12] > v131)
        {
LABEL_109:
          v102 = *&v135[12];
          *&v135[12] = v101;
          *&v135[16] = v102;
          v103 = *&v135[20];
          if (*v135 <= *&v135[20])
          {
            goto LABEL_110;
          }

          goto LABEL_161;
        }

LABEL_160:
        v103 = *&v135[20];
        if (*v135 <= *&v135[20])
        {
LABEL_110:
          v104 = *&v135[20];
          if (*&v135[4] > *&v135[20])
          {
            goto LABEL_111;
          }

          goto LABEL_162;
        }

LABEL_161:
        *&v135[20] = *&v135[16];
        *&v135[4] = *v135;
        *v135 = v103;
        v104 = *&v135[20];
        if (*&v135[4] > *&v135[20])
        {
LABEL_111:
          *&v135[8] = *&v135[4];
          *&v135[4] = v104;
          v105 = *&v135[20];
          if (*&v135[8] <= *&v135[20])
          {
            goto LABEL_112;
          }

          goto LABEL_163;
        }

LABEL_162:
        v105 = *&v135[20];
        if (*&v135[8] <= *&v135[20])
        {
LABEL_112:
          v106 = *&v135[20];
          if (*&v135[12] > *&v135[20])
          {
            goto LABEL_113;
          }

          goto LABEL_164;
        }

LABEL_163:
        *&v135[20] = *&v135[16];
        *&v135[12] = *&v135[8];
        *&v135[8] = v105;
        v106 = *&v135[20];
        if (*&v135[12] > *&v135[20])
        {
LABEL_113:
          v107 = *&v135[16];
          *&v135[16] = *&v135[12];
          *&v135[20] = v107;
          *&v135[12] = v106;
          v108 = v107;
          if (*&v135[16] <= v107)
          {
            goto LABEL_114;
          }

          goto LABEL_165;
        }

LABEL_164:
        v108 = *&v135[20];
        if (*&v135[16] <= *&v135[20])
        {
LABEL_114:
          v109 = *&v135[24];
          if (*v135 > *&v135[24])
          {
            goto LABEL_115;
          }

          goto LABEL_166;
        }

LABEL_165:
        v132 = *&v135[16];
        *&v135[16] = v108;
        *&v135[20] = v132;
        v109 = *&v135[24];
        if (*v135 > *&v135[24])
        {
LABEL_115:
          *&v135[12] = *&v135[8];
          *&v135[4] = *v135;
          *v135 = v109;
          v110 = *&v135[24];
          if (*&v135[4] <= *&v135[24])
          {
            goto LABEL_116;
          }

          goto LABEL_167;
        }

LABEL_166:
        v110 = *&v135[24];
        if (*&v135[4] <= *&v135[24])
        {
LABEL_116:
          v111 = *&v135[24];
          if (*&v135[8] > *&v135[24])
          {
            goto LABEL_117;
          }

          goto LABEL_168;
        }

LABEL_167:
        *&v135[24] = *&v135[20];
        *&v135[8] = *&v135[4];
        *&v135[4] = v110;
        v111 = *&v135[24];
        if (*&v135[8] > *&v135[24])
        {
LABEL_117:
          *&v135[12] = *&v135[8];
          *&v135[8] = v111;
          v112 = *&v135[24];
          if (*&v135[12] <= *&v135[24])
          {
            goto LABEL_118;
          }

          goto LABEL_169;
        }

LABEL_168:
        v112 = *&v135[24];
        if (*&v135[12] <= *&v135[24])
        {
LABEL_118:
          v113 = *&v135[24];
          if (*&v135[16] > *&v135[24])
          {
            goto LABEL_119;
          }

          goto LABEL_170;
        }

LABEL_169:
        *&v135[24] = *&v135[20];
        *&v135[16] = *&v135[12];
        *&v135[12] = v112;
        v113 = *&v135[24];
        if (*&v135[16] > *&v135[24])
        {
LABEL_119:
          v114 = *&v135[20];
          *&v135[20] = *&v135[16];
          *&v135[24] = v114;
          *&v135[16] = v113;
          v115 = v114;
          if (*&v135[20] <= v114)
          {
            goto LABEL_120;
          }

          goto LABEL_171;
        }

LABEL_170:
        v115 = *&v135[24];
        if (*&v135[20] <= *&v135[24])
        {
LABEL_120:
          v116 = *&v135[28];
          if (*v135 > *&v135[28])
          {
            goto LABEL_121;
          }

          goto LABEL_172;
        }

LABEL_171:
        v133 = *&v135[20];
        *&v135[20] = v115;
        *&v135[24] = v133;
        v116 = *&v135[28];
        if (*v135 > *&v135[28])
        {
LABEL_121:
          *&v135[28] = *&v135[24];
          *&v135[12] = *&v135[8];
          *&v135[4] = *v135;
          *v135 = v116;
          v117 = *&v135[28];
          if (*&v135[4] <= *&v135[28])
          {
            goto LABEL_122;
          }

          goto LABEL_173;
        }

LABEL_172:
        v117 = *&v135[28];
        if (*&v135[4] <= *&v135[28])
        {
LABEL_122:
          v118 = *&v135[28];
          if (*&v135[8] > *&v135[28])
          {
            goto LABEL_123;
          }

          goto LABEL_174;
        }

LABEL_173:
        *&v135[16] = *&v135[12];
        *&v135[8] = *&v135[4];
        *&v135[4] = v117;
        v118 = *&v135[28];
        if (*&v135[8] > *&v135[28])
        {
LABEL_123:
          *&v135[28] = *&v135[24];
          *&v135[12] = *&v135[8];
          *&v135[8] = v118;
          v119 = *&v135[28];
          if (*&v135[12] <= *&v135[28])
          {
            goto LABEL_124;
          }

          goto LABEL_175;
        }

LABEL_174:
        v119 = *&v135[28];
        if (*&v135[12] <= *&v135[28])
        {
LABEL_124:
          v120 = *&v135[28];
          if (*&v135[16] > *&v135[28])
          {
            goto LABEL_125;
          }

          goto LABEL_176;
        }

LABEL_175:
        *&v135[16] = *&v135[12];
        *&v135[12] = v119;
        v120 = *&v135[28];
        if (*&v135[16] > *&v135[28])
        {
LABEL_125:
          *&v135[28] = *&v135[24];
          *&v135[20] = *&v135[16];
          *&v135[16] = v120;
          v121 = *&v135[28];
          if (*&v135[20] <= *&v135[28])
          {
            goto LABEL_126;
          }

          goto LABEL_177;
        }

LABEL_176:
        v121 = *&v135[28];
        if (*&v135[20] <= *&v135[28])
        {
LABEL_126:
          v122 = *&v135[28];
          if (*&v135[24] > *&v135[28])
          {
LABEL_127:
            v123 = *&v135[24];
            *&v135[24] = v122;
            *&v135[28] = v123;
          }

LABEL_128:
          v44 = 0;
          v124 = 4 * v41;
          LOWORD(v41) = *&v136[4 * v41];
          v45 = *&v135[v124];
          goto LABEL_43;
        }

LABEL_177:
        v134 = *&v135[24];
        *&v135[24] = *&v135[20];
        *&v135[28] = v134;
        *&v135[20] = v121;
        v122 = v134;
        if (*&v135[24] <= v134)
        {
          goto LABEL_128;
        }

        goto LABEL_127;
      }

LABEL_93:
      v86 = *&v136[24];
      *&v136[24] = v85;
      *&v136[28] = v86;
      goto LABEL_94;
    }

LABEL_67:
    if (!v17)
    {
      goto LABEL_94;
    }

    goto LABEL_68;
  }

  LOWORD(v41) = 0;
  v43 = 0;
LABEL_44:
  *a4 = v43 | v41;
  v46 = v43 >> 16;
  v47 = a2[1001] - 128;
  if (v47 > v46 || (v47 = a2[1002] + 128, v47 < v46))
  {
    *(a4 + 2) = v47;
  }

  v48 = v41;
  v49 = a2[1003] - 128;
  if (v49 > v48 || (v49 = a2[1004] + 128, v49 < v48))
  {
    *a4 = v49;
  }

  return result;
}

uint64_t vp8_cal_sad(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result;
  v9 = (result + 110548);
  *&v86[16] = 0u;
  v10 = **(a3 + 1936);
  v11 = *(a2 + 4004);
  if (!*(a2 + 4012))
  {
    LODWORD(v14) = 0x7FFFFFFF;
    *&v86[8] = 0x7FFFFFFF;
    if (!v11)
    {
      *v86 = 0x8000000080000000;
      LODWORD(v14) = 0x7FFFFFFF;
      v13 = 0x7FFFFFFF;
      v12 = 0x7FFFFFFF;
      if (!*(result + 111056))
      {
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    *v86 = 0x7FFFFFFF;
    result = (*(result + 143624))(v10, *(a3 + 1948), *(a2 + 3768) - 16, *(a2 + 3728));
    v13 = result;
    *&v86[4] = result;
    v12 = 0x7FFFFFFF;
    if (v9[127])
    {
      goto LABEL_11;
    }

LABEL_32:
    if (v12 <= v13)
    {
      v27 = v13;
      if (v12 <= v14)
      {
LABEL_37:
        if (v27 <= v14)
        {
          return result;
        }

        v29 = (a5 + 4);
        v30 = (a5 + 8);
        goto LABEL_98;
      }
    }

    else
    {
      *v86 = v13;
      *&v86[4] = v12;
      *a5 = vrev64_s32(*a5);
      v27 = v12;
      if (v13 <= v14)
      {
        goto LABEL_37;
      }
    }

    v28 = *(a5 + 8);
    v27 = *v86;
    LODWORD(v14) = *&v86[4];
    *(a5 + 4) = *a5;
    *a5 = v28;
    goto LABEL_37;
  }

  if (!v11)
  {
    *&v86[4] = 0x8000000080000000;
    result = (*(result + 143624))(v10, *(a3 + 1948), *(a2 + 3768) - 16 * *(a2 + 3728));
    v12 = result;
    *v86 = result;
    LODWORD(v14) = 0x7FFFFFFF;
    v13 = 0x7FFFFFFF;
    if (v9[127])
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

  v12 = (*(result + 143624))(v10, *(a3 + 1948), *(a2 + 3768) - 16 * *(a2 + 3728));
  *v86 = v12;
  v13 = (*(v8 + 143624))(v10, *(a3 + 1948), *(a2 + 3768) - 16, *(a2 + 3728));
  *&v86[4] = v13;
  result = (*(v8 + 143624))(v10, *(a3 + 1948), *(a2 + 3768) - 16 * *(a2 + 3728) - 16);
  LODWORD(v14) = result;
  *&v86[8] = result;
  if (!v9[127])
  {
    goto LABEL_32;
  }

LABEL_11:
  v81 = v9;
  v15 = *v9;
  v16 = *(a2 + 4012);
  if (v16)
  {
    v83 = v14;
    v17 = v8 + 160 * v15;
    v18 = *(a2 + 4004);
    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *&v86[16] = 0x7FFFFFFF;
    v83 = v14;
    v17 = v8 + 160 * v15;
    v18 = *(a2 + 4004);
    if (v18)
    {
LABEL_13:
      v82 = v13;
      v19 = v17 + 109888;
      v20 = *(a2 + 4008);
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  *&v86[20] = 0x7FFFFFFF;
  v82 = v13;
  v19 = v17 + 109888;
  v20 = *(a2 + 4008);
  if (v20)
  {
LABEL_14:
    v21 = *(v19 + 56);
    v22 = *(v19 + 16);
    v80 = *(a2 + 4016);
    if (v80)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  *&v86[24] = 0x7FFFFFFF;
  v21 = *(v19 + 56);
  v22 = *(v19 + 16);
  v80 = *(a2 + 4016);
  if (v80)
  {
LABEL_15:
    v23 = v21 + a4;
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_22:
    v79 = 0x7FFFFFFF;
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_21:
  v23 = v21 + a4;
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_16:
  v79 = (*(v8 + 143624))(v10, *(a3 + 1948), v23 - 16 * v22, v22);
  *&v86[16] = v79;
  if (v18)
  {
LABEL_17:
    v85 = (*(v8 + 143624))(v10, *(a3 + 1948), v23 - 16, v22);
    *&v86[20] = v85;
    goto LABEL_24;
  }

LABEL_23:
  v85 = 0x7FFFFFFF;
LABEL_24:
  LODWORD(v24) = (*(v8 + 143624))(v10, *(a3 + 1948), v23, v22);
  *&v86[12] = v24;
  if (v20)
  {
    *&v86[24] = (*(v8 + 143624))(v10, *(a3 + 1948), v23 + 16, v22);
    v78 = *&v86[24];
    LODWORD(v14) = v83;
    if (v80)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v78 = 0x7FFFFFFF;
    LODWORD(v14) = v83;
    if (v80)
    {
LABEL_26:
      result = (*(v8 + 143624))(v10, *(a3 + 1948), v23 + 16 * v22, v22);
      v13 = v82;
      if (!v81[127])
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }
  }

  result = 0x7FFFFFFFLL;
  v13 = v82;
  if (!v81[127])
  {
    goto LABEL_32;
  }

LABEL_27:
  if (v12 <= v13)
  {
    v25 = v13;
    v13 = v12;
    LODWORD(v26) = v78;
    if (v12 <= v14)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  *v86 = v13;
  *&v86[4] = v12;
  *a5 = vrev64_s32(*a5);
  v25 = v12;
  LODWORD(v26) = v78;
  if (v13 > v14)
  {
LABEL_40:
    v31 = *(a5 + 8);
    *&v86[4] = *v86;
    v25 = *&v86[4];
    *(a5 + 4) = *a5;
    *v86 = v14;
    *a5 = v31;
    v13 = v14;
    v14 = HIDWORD(*&v86[4]);
  }

LABEL_41:
  if (v25 <= v14)
  {
    LODWORD(v14) = v25;
    if (v13 <= v24)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  *&v86[4] = v14;
  *&v86[8] = v25;
  *(a5 + 4) = vrev64_s32(*(a5 + 4));
  if (v13 > v24)
  {
LABEL_45:
    v14 = *v86;
    *v86 = v24;
    v13 = v24;
    LODWORD(v24) = *&v86[8];
    *&v86[4] = v14;
    *&v86[12] = v24;
    v33 = *(a5 + 8);
    v32 = *(a5 + 12);
    *(a5 + 4) = *a5;
    *(a5 + 12) = v33;
    *a5 = v32;
  }

LABEL_46:
  if (v14 <= v24)
  {
    v35 = *&v86[8];
    if (*&v86[8] <= v24)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v34 = *(a5 + 12);
  *&v86[8] = *&v86[4];
  v35 = *&v86[8];
  *(a5 + 8) = *(a5 + 4);
  *&v86[4] = v24;
  *(a5 + 4) = v34;
  LODWORD(v14) = v24;
  v24 = HIDWORD(*&v86[8]);
  if (*&v86[8] > *&v86[12])
  {
LABEL_50:
    *&v86[8] = v24;
    *&v86[12] = v35;
    *(a5 + 8) = vrev64_s32(*(a5 + 8));
  }

LABEL_51:
  LODWORD(v36) = v79;
  if (v13 > v79)
  {
    v40 = *(a5 + 16);
    *&v86[4] = *v86;
    *(a5 + 4) = *a5;
    *v86 = v79;
    *a5 = v40;
    v13 = v79;
    LODWORD(v14) = *&v86[4];
    LODWORD(v36) = *&v86[16];
    if (*&v86[4] <= *&v86[16])
    {
LABEL_53:
      LODWORD(v37) = v85;
      if (*&v86[8] > v36)
      {
        goto LABEL_54;
      }

LABEL_58:
      v39 = *&v86[12];
      if (*&v86[12] <= v36)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if (v14 <= v79)
  {
    goto LABEL_53;
  }

  v41 = *&v86[4];
  *&v86[4] = v36;
  LODWORD(v14) = v36;
  v42 = *&v86[12];
  *&v86[8] = v41;
  *&v86[16] = v42;
  v43 = *(a5 + 12);
  LODWORD(v41) = *(a5 + 16);
  *(a5 + 8) = *(a5 + 4);
  *(a5 + 16) = v43;
  LODWORD(v36) = v42;
  *(a5 + 4) = v41;
  LODWORD(v37) = v85;
  if (*&v86[8] <= v42)
  {
    goto LABEL_58;
  }

LABEL_54:
  v38 = *(a5 + 16);
  *&v86[12] = *&v86[8];
  v39 = *&v86[12];
  *(a5 + 12) = *(a5 + 8);
  *&v86[8] = v36;
  *(a5 + 8) = v38;
  v36 = HIDWORD(*&v86[12]);
  if (*&v86[12] > *&v86[16])
  {
LABEL_59:
    *&v86[12] = v36;
    *&v86[16] = v39;
    *(a5 + 12) = vrev64_s32(*(a5 + 12));
  }

LABEL_60:
  if (v13 > v37)
  {
    v46 = *v86;
    *v86 = v37;
    v13 = v37;
    v47 = *&v86[16];
    *&v86[4] = v46;
    *&v86[20] = v47;
    v49 = *(a5 + 16);
    v48 = *(a5 + 20);
    *(a5 + 4) = *a5;
    *(a5 + 20) = v49;
    *a5 = v48;
    LODWORD(v14) = v46;
    LODWORD(v37) = v47;
    if (v46 <= v47)
    {
LABEL_62:
      if (*&v86[8] <= v37)
      {
        goto LABEL_63;
      }

      goto LABEL_68;
    }
  }

  else if (v14 <= v37)
  {
    goto LABEL_62;
  }

  v50 = *(a5 + 20);
  *&v86[8] = *&v86[4];
  *(a5 + 8) = *(a5 + 4);
  *&v86[4] = v37;
  *(a5 + 4) = v50;
  LODWORD(v14) = v37;
  LODWORD(v37) = *&v86[20];
  if (*&v86[8] <= *&v86[20])
  {
LABEL_63:
    if (*&v86[12] > v37)
    {
      goto LABEL_64;
    }

LABEL_69:
    v45 = *&v86[16];
    if (*&v86[16] <= v37)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_68:
  v51 = *&v86[8];
  *&v86[8] = v37;
  v52 = *&v86[16];
  *&v86[12] = v51;
  *&v86[20] = v52;
  v53 = *(a5 + 16);
  LODWORD(v51) = *(a5 + 20);
  *(a5 + 12) = *(a5 + 8);
  *(a5 + 20) = v53;
  LODWORD(v37) = v52;
  *(a5 + 8) = v51;
  if (*&v86[12] <= v52)
  {
    goto LABEL_69;
  }

LABEL_64:
  v44 = *(a5 + 20);
  *&v86[16] = *&v86[12];
  v45 = *&v86[16];
  *(a5 + 16) = *(a5 + 12);
  *&v86[12] = v37;
  *(a5 + 12) = v44;
  v37 = HIDWORD(*&v86[16]);
  if (*&v86[16] > *&v86[20])
  {
LABEL_70:
    *&v86[16] = v37;
    *&v86[20] = v45;
    *(a5 + 16) = vrev64_s32(*(a5 + 16));
  }

LABEL_71:
  if (v13 > v26)
  {
    v56 = *(a5 + 24);
    v57 = *&v86[16];
    *&v86[4] = *v86;
    *&v86[20] = v57;
    v58 = *(a5 + 16);
    *(a5 + 4) = *a5;
    *(a5 + 20) = v58;
    *v86 = v26;
    *a5 = v56;
    v13 = v26;
    LODWORD(v14) = *&v86[4];
    LODWORD(v26) = *&v86[24];
    v29 = (a5 + 24);
    if (*&v86[4] <= *&v86[24])
    {
LABEL_73:
      if (*&v86[8] <= v26)
      {
        goto LABEL_74;
      }

      goto LABEL_80;
    }
  }

  else
  {
    v29 = (a5 + 24);
    if (v14 <= v26)
    {
      goto LABEL_73;
    }
  }

  v59 = *v29;
  v60 = *&v86[4];
  *&v86[4] = v26;
  LODWORD(v14) = v26;
  v61 = *&v86[20];
  *&v86[8] = v60;
  *&v86[24] = v61;
  v62 = *(a5 + 20);
  *(a5 + 8) = *(a5 + 4);
  *(a5 + 24) = v62;
  LODWORD(v26) = v61;
  *(a5 + 4) = v59;
  if (v60 <= v61)
  {
LABEL_74:
    if (*&v86[12] <= v26)
    {
      goto LABEL_75;
    }

    goto LABEL_81;
  }

LABEL_80:
  v63 = *v29;
  *&v86[12] = *&v86[8];
  *(a5 + 12) = *(a5 + 8);
  *&v86[8] = v26;
  *(a5 + 8) = v63;
  LODWORD(v26) = *&v86[24];
  if (*&v86[12] <= *&v86[24])
  {
LABEL_75:
    if (*&v86[16] > v26)
    {
      goto LABEL_76;
    }

LABEL_82:
    v55 = *&v86[20];
    if (*&v86[20] <= v26)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_81:
  v64 = *v29;
  v65 = *&v86[12];
  *&v86[12] = v26;
  v66 = *&v86[20];
  *&v86[16] = v65;
  *&v86[24] = v66;
  LODWORD(v65) = *(a5 + 20);
  *(a5 + 16) = *(a5 + 12);
  *(a5 + 24) = v65;
  LODWORD(v26) = v66;
  *(a5 + 12) = v64;
  if (*&v86[16] <= v66)
  {
    goto LABEL_82;
  }

LABEL_76:
  v54 = *v29;
  *&v86[20] = *&v86[16];
  v55 = *&v86[20];
  *(a5 + 20) = *(a5 + 16);
  *&v86[16] = v26;
  *(a5 + 16) = v54;
  v26 = HIDWORD(*&v86[20]);
  if (*&v86[20] > *&v86[24])
  {
LABEL_83:
    *&v86[20] = v26;
    *&v86[24] = v55;
    *(a5 + 20) = vrev64_s32(*(a5 + 20));
  }

LABEL_84:
  if (v13 > result)
  {
    v68 = *&v86[16];
    *&v86[4] = *v86;
    result = *&v86[24];
    *&v86[20] = v68;
    LODWORD(v68) = *(a5 + 28);
    *(a5 + 28) = *(a5 + 24);
    v69 = *(a5 + 16);
    *(a5 + 4) = *a5;
    *(a5 + 20) = v69;
    *a5 = v68;
    v30 = (a5 + 28);
    if (*&v86[4] <= result)
    {
LABEL_86:
      if (*&v86[8] <= result)
      {
        goto LABEL_87;
      }

      goto LABEL_94;
    }
  }

  else
  {
    v30 = (a5 + 28);
    if (v14 <= result)
    {
      goto LABEL_86;
    }
  }

  v70 = *v30;
  *&v86[24] = *&v86[20];
  *&v86[8] = *&v86[4];
  v71 = *(a5 + 20);
  *(a5 + 8) = *(a5 + 4);
  *(a5 + 24) = v71;
  *(a5 + 4) = v70;
  result = *&v86[28];
  if (*&v86[8] <= *&v86[28])
  {
LABEL_87:
    if (*&v86[12] <= result)
    {
      goto LABEL_88;
    }

    goto LABEL_95;
  }

LABEL_94:
  v72 = *v30;
  result = *&v86[24];
  *&v86[12] = *&v86[8];
  v73 = *(a5 + 24);
  *(a5 + 12) = *(a5 + 8);
  *(a5 + 28) = v73;
  *(a5 + 8) = v72;
  if (*&v86[12] <= result)
  {
LABEL_88:
    if (*&v86[16] <= result)
    {
      goto LABEL_89;
    }

    goto LABEL_96;
  }

LABEL_95:
  v74 = *v30;
  *&v86[16] = *&v86[12];
  *(a5 + 16) = *(a5 + 12);
  *(a5 + 12) = v74;
  result = *&v86[28];
  if (*&v86[16] <= *&v86[28])
  {
LABEL_89:
    if (*&v86[20] > result)
    {
      goto LABEL_90;
    }

LABEL_97:
    if (*&v86[24] <= result)
    {
      return result;
    }

    goto LABEL_98;
  }

LABEL_96:
  v75 = *v30;
  result = *&v86[24];
  *&v86[20] = *&v86[16];
  v76 = *(a5 + 24);
  *(a5 + 20) = *(a5 + 16);
  *(a5 + 28) = v76;
  *(a5 + 16) = v75;
  if (*&v86[20] <= result)
  {
    goto LABEL_97;
  }

LABEL_90:
  v67 = *v30;
  result = *&v86[24];
  *v29 = *(a5 + 20);
  *(a5 + 20) = v67;
  if (*&v86[20] > *&v86[24])
  {
LABEL_98:
    v77 = *v30;
    *v30 = *v29;
    *v29 = v77;
  }

  return result;
}

void vp8_rd_pick_inter_mode(int *a1, uint64_t a2, unsigned int a3, unsigned int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, int a8, int a9)
{
  v313 = *MEMORY[0x277D85DE8];
  v283 = 0;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v12 = a1 + 27637;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v274 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v294[0] = xmmword_273BC8234;
  v294[1] = unk_273BC8244;
  v268 = 0;
  v292 = 0u;
  v293 = 0u;
  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v13 = a1[27777] + a1[27776];
  v14 = v13 & ~(v13 >> 31);
  if (v14 >= 127)
  {
    v14 = 127;
  }

  v15 = dc_qlookup[v14];
  v267 = -1;
  LODWORD(v272) = 0;
  v273 = 0;
  v285 = 0;
  memset(v296, 0, sizeof(v296));
  v286 = 0;
  v16 = 1;
  v233 = a1 + 35699;
  v17 = a1[35721];
  if ((v17 & 1) == 0)
  {
    if ((v17 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    *(&v286 + v16++) = 2;
    if ((v17 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v287 = 1;
  v16 = 2;
  if ((v17 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v17 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  *(&v286 + v16) = 3;
  if (v16 > 2)
  {
    goto LABEL_12;
  }

  ++v16;
LABEL_11:
  memset(&v286 + v16, 255, 16 - 4 * v16);
LABEL_12:
  v284 = 0;
  v18 = v296;
  if (v287 < 1)
  {
    v258 = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = vp8_find_near_mvs_bias((a2 + 4224), *(a2 + 8096), v296, v297, v295, v287, (a1 + 27898));
  v18 = v296 + 40 * v19;
  v258 = v19;
  v285 = v297[v19];
  v17 = v233[22];
  if (v17)
  {
LABEL_14:
    v20 = &a1[40 * *v12 + 27472];
    v21 = *&a1[40 * *v12 + 27488] + a4;
    *(&v289 + 1) = *&a1[40 * *v12 + 27486] + a3;
    *&v290 = v21;
    *(&v290 + 1) = *(v20 + 72) + a4;
  }

LABEL_15:
  v263 = v18;
  v261 = (a2 + 30056);
  if ((v17 & 2) != 0)
  {
    v22 = &a1[40 * v12[1] + 27472];
    v23 = *&a1[40 * v12[1] + 27488] + a4;
    *&v291 = *&a1[40 * v12[1] + 27486] + a3;
    *(&v291 + 1) = v23;
    *&v292 = *(v22 + 72) + a4;
  }

  v207 = (a2 + 34264);
  v257 = (a2 + 7832);
  v24 = a1 + 28743;
  v244 = 10 * v15;
  if ((v17 & 4) != 0)
  {
    v25 = &a1[40 * v12[2] + 27472];
    v26 = *&a1[40 * v12[2] + 27488] + a4;
    *(&v292 + 1) = *&a1[40 * v12[2] + 27486] + a3;
    *&v293 = v26;
    *(&v293 + 1) = *(v25 + 72) + a4;
  }

  v208 = a4;
  v238 = 0;
  v239 = 0;
  v242 = 0;
  v27 = 0;
  v241 = 0;
  v28 = 0;
  v230 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v226 = 0;
  v227 = 0;
  v225 = 0;
  v224 = 0;
  v29 = 0;
  v240 = 0;
  v260 = 0;
  v250 = 0;
  v216 = 0;
  *a7 = 0x7FFFFFFF;
  ++*v261;
  *(a2 + 8768) = 0;
  v30 = a2 + 29976;
  v262 = a2 + 30060;
  v252 = a2 + 29896;
  v253 = a1 + 28816;
  v254 = (a1 + 27898);
  v249 = a1 + 35906;
  v248 = a2 + 8680;
  v236 = a2 + 8600;
  v256 = a1;
  v243 = (v233 + 173);
  v223 = (v233 + 211);
  v221 = (v233 + 209);
  v237 = -1;
  v251 = 0x7FFFFFFF;
  v31 = 0x7FFFFFFF;
  v255 = 0x7FFFFFFF;
  v32 = -1;
  v259 = a2 + 29976;
  while (1)
  {
    v266 = 0;
    if (v31 <= *(v30 + 4 * v29))
    {
      goto LABEL_21;
    }

    v34 = *(&v286 + vp8_ref_frame_order[v29]);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v35 = vp8_mode_order[v29];
    LODWORD(v271) = 0;
    HIDWORD(v272) = 0;
    v36 = *(a2 + 8096);
    *v36 = v35;
    v36[2] = v34;
    if (*v24 && !v12[982])
    {
      if (((0x51uLL >> v29) & 1) == 0 || v34 != 3)
      {
        goto LABEL_20;
      }
    }

    else if (!v34)
    {
      goto LABEL_29;
    }

    v37 = &v288 + 24 * v34;
    *v257 = *v37;
    *(a2 + 7848) = *(v37 + 2);
    v38 = *(v254 + 4 * v34);
    if (v258 != v38)
    {
      v263 = v296 + 40 * v38;
      v285 = v297[v38];
      v258 = v38;
    }

LABEL_29:
    v39 = *(v262 + 4 * v29);
    if (v39)
    {
      v40 = a1[v29 + 28796];
      if (v40 >= 2 && *v261 <= v40 * v39)
      {
        goto LABEL_228;
      }
    }

    *(v262 + 4 * v29) = v39 + 1;
    if (*(a2 + 30140))
    {
      if (v34)
      {
        if ((0x51uLL >> v29))
        {
          if (v34 == 1)
          {
            v41 = 6;
          }

          else
          {
            v41 = 12;
          }
        }

        else
        {
          v41 = 4 * ((v29 - 16) > 2);
        }
      }

      else
      {
        v41 = 0;
      }

      *(a2 + 30144) = v41;
      v42 = *(a2 + 8804);
      v43 = *(a2 + 30156);
      v44 = *(a2 + 8672) + v41;
      v45 = ((v44 + v43) * SHIWORD(a1[v42 + 27080])) >> 7;
      *(a2 + 1928) = v45;
      *(a2 + 2016) = v45;
      *(a2 + 2104) = v45;
      *(a2 + 2192) = v45;
      *(a2 + 2280) = v45;
      *(a2 + 2368) = v45;
      *(a2 + 2456) = v45;
      *(a2 + 2544) = v45;
      *(a2 + 2632) = v45;
      *(a2 + 2720) = v45;
      *(a2 + 2808) = v45;
      *(a2 + 2896) = v45;
      *(a2 + 2984) = v45;
      *(a2 + 3072) = v45;
      *(a2 + 3160) = v45;
      *(a2 + 3248) = v45;
      v46 = ((v44 + v43) * SHIWORD(a1[v42 + 27336])) >> 7;
      *(a2 + 3336) = v46;
      *(a2 + 3424) = v46;
      *(a2 + 3512) = v46;
      *(a2 + 3600) = v46;
      *(a2 + 3688) = v46;
      *(a2 + 3776) = v46;
      *(a2 + 3864) = v46;
      *(a2 + 3952) = v46;
      *(a2 + 4040) = ((v44 + ((v43 + (v43 >> 31)) >> 1)) * SHIWORD(a1[v42 + 27208])) >> 7;
    }

    v264 = v31;
    if (!(v260 | v34))
    {
      rd_pick_intra_mbuv_mode(a2, &v270 + 1, &v269 + 1, &v270);
      v36 = *(a2 + 8096);
      v250 = v36[1];
      HIDWORD(v260) += vaddlvq_s16(vmovl_s8(*(a2 + 6224)));
      LODWORD(v260) = 1;
    }

    v47 = 0;
    v48 = 0x7FFFFFFFLL;
    if (v35 <= 4)
    {
      if (v35 >= 4)
      {
        v49 = v35;
        if (v35 == 4)
        {
          LODWORD(v298) = 0;
          v67 = rd_pick_intra4x4mby_modes(a2, &v274, &v271 + 1, &v298, v251);
          v68 = v271 + v274;
          v69 = HIDWORD(v272) + v298;
          LODWORD(v271) = v271 + v274;
          HIDWORD(v272) += v298;
          if (v67 >= v251)
          {
            v47 = 1;
            HIDWORD(v266) = 1;
          }

          else
          {
            v47 = 0;
            LODWORD(v271) = HIDWORD(v270) + v68;
            LODWORD(v272) = HIDWORD(v269);
            HIDWORD(v272) = v270 + v69;
            v273 = v270;
          }

          v48 = 0x7FFFFFFFLL;
        }
      }

      else
      {
        v49 = v35;
        LODWORD(v298) = 0;
        v36[2] = 0;
        vp8_build_intra_predictors_mby_s(a2 + 4224, *(a2 + 7992) - *(a2 + 7952), (*(a2 + 7992) - 1), *(a2 + 7952), a2 + 4224, 16);
        macro_block_yrd(a2, &v271 + 1, &v298);
        v47 = 0;
        LODWORD(v271) = v271 + HIDWORD(v271) + HIDWORD(v270) + *(*(a2 + 8712) + 40 * *(a2 + 8108) + 4 * **(a2 + 8096));
        LODWORD(v272) = HIDWORD(v269);
        HIDWORD(v272) += v298 + v270;
        v273 = v270;
        v48 = 0x7FFFFFFFLL;
      }

      goto LABEL_195;
    }

    v50 = v35;
    if (v35 > 7)
    {
      break;
    }

    if ((v35 - 5) >= 2)
    {
      if (v35 != 7)
      {
        v49 = v35;
        goto LABEL_195;
      }

      v70 = 7;
      v31 = v264;
      v71 = *(v263 + 14) >> 3;
      if (*(a2 + 8760) > v71)
      {
        goto LABEL_20;
      }

LABEL_133:
      if (*(a2 + 8764) >= v71)
      {
        v102 = &v263[4 * v70];
        v103 = *(v102 + 1) >> 3;
        if (*(a2 + 8752) <= v103 && *(a2 + 8756) >= v103)
        {
          v104 = *(a2 + 8096);
          v49 = v50;
          *v104 = v50;
          *(v104 + 4) = *v102;
          v48 = evaluate_inter_mode_rd(v295, &v271, &v266 + 1, a1, a2);
          v47 = HIDWORD(v266);
          goto LABEL_195;
        }
      }

      goto LABEL_20;
    }

    v31 = v264;
LABEL_122:
    v96 = &v263[4 * v50];
    v97 = *(v96 + 1);
    v98 = *(a2 + 8228) - 128;
    if (v98 > v97 || (v98 = *(a2 + 8232) + 128, v98 < v97))
    {
      *(v96 + 1) = v98;
    }

    v99 = *v96;
    v100 = *(a2 + 8236) - 128;
    if (v100 <= v99 && (v100 = *(a2 + 8240) + 128, v100 >= v99))
    {
      LOWORD(v100) = *v96;
      if ((((0x308uLL >> v29) | (0xA4uLL >> v29)) & 1) == 0)
      {
LABEL_132:
        v70 = v50;
        v71 = v100 >> 3;
        if (*(a2 + 8760) <= v71)
        {
          goto LABEL_133;
        }

        goto LABEL_20;
      }
    }

    else
    {
      *v96 = v100;
      if ((((0x308uLL >> v29) | (0xA4uLL >> v29)) & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    v101 = *v96;
    v70 = v50;
    if (v101)
    {
      v71 = v101 >> 3;
      if (*(a2 + 8760) <= v71)
      {
        goto LABEL_133;
      }
    }

LABEL_20:
    v30 = a2 + 29976;
LABEL_21:
    ++v29;
    v33 = v31;
    if (v29 == 20)
    {
      goto LABEL_232;
    }
  }

  if (v35 == 8)
  {
    v209 = v35;
    v210 = v27;
    v219 = v28;
    v211 = v12;
    LODWORD(v72) = v233[53];
    v246 = *(a2 + 8636);
    LODWORD(v298) = 0;
    v73 = SHIWORD(v285);
    v74 = v285;
    v212 = *(a2 + 8752);
    v213 = *(a2 + 8756);
    v214 = *(a2 + 8760);
    v75 = *(a2 + 8764);
    if (!v216)
    {
      vp8_cal_sad(a1, a2 + 4224, a2, a3, v294);
      v36 = *(a2 + 8096);
    }

    v76 = ((v73 + 7) >> 3) - 255;
    vp8_mv_pred(a1, (a2 + 4224), v36, &v269, v36[2], v254, &v268, v294);
    WORD1(v298) = SWORD1(v269) >> 3;
    LOWORD(v298) = v269 >> 3;
    if (*(a2 + 8752) < v76)
    {
      *(a2 + 8752) = v76;
    }

    v77 = (v73 >> 3) + 255;
    if (*(a2 + 8756) > v77)
    {
      *(a2 + 8756) = v77;
    }

    v78 = ((v74 + 7) >> 3) - 255;
    if (*(a2 + 8760) < v78)
    {
      *(a2 + 8760) = v78;
    }

    v79 = (v74 >> 3) + 255;
    if (*(a2 + 8764) > v79)
    {
      *(a2 + 8764) = v79;
    }

    if (v268 <= v72)
    {
      v72 = v72;
    }

    else
    {
      v72 = v268;
    }

    v80 = (*v243)(a2, a2 + 1864, a2 + 6368, &v298, a2 + 6416, v72, v246, &v284, v249, v248, &v285);
    v81 = *(a2 + 6416);
    *(v263 + 8) = v81;
    v82 = v233[52];
    v83 = v82 + ~v72;
    v84 = v284;
    v284 = 0;
    v85 = v84 <= v83;
    if (v84 >= v83)
    {
      v12 = v211;
      v28 = v219;
      v27 = v210;
      v31 = v264;
      if (!v85)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v217 = v75;
      v86 = 0;
      v87 = v82 - v84 - v72 - 2;
      v88 = v72 + 1;
      v89 = 1;
      v31 = v264;
      do
      {
        while (1)
        {
          while (v86)
          {
            v284 = --v86;
            ++v84;
            --v87;
            if (v84 >= v83)
            {
              goto LABEL_106;
            }
          }

          v90 = (*v243)(a2, a2 + 1864, a2 + 6368, &v298, a2 + 6416, (v88 + v84), v246, &v284, v249, v248, &v285);
          v86 = v284;
          if (v284 > v87)
          {
            v89 = 0;
          }

          if (v90 >= v80)
          {
            break;
          }

          v81 = *(a2 + 6416);
          *(v263 + 8) = v81;
          v80 = v90;
          v31 = v264;
          ++v84;
          --v87;
          if (v84 >= v83)
          {
            goto LABEL_106;
          }
        }

        v81 = *(v263 + 8);
        *(a2 + 6416) = v81;
        v31 = v264;
        ++v84;
        --v87;
      }

      while (v84 < v83);
LABEL_106:
      v124 = v89 == 1;
      v12 = v211;
      v28 = v219;
      v27 = v210;
      v75 = v217;
      if (!v124)
      {
        goto LABEL_115;
      }
    }

    if ((*(v233 + 171))(a2, a2 + 1864, a2 + 6368, a2 + 6416, v246, 8, v249, v248, &v285) < v80)
    {
      v91 = v75;
      v92 = v263;
      *(v263 + 8) = *(a2 + 6416);
      *(a2 + 8752) = v212;
      *(a2 + 8756) = v213;
      *(a2 + 8760) = v214;
      *(a2 + 8764) = v91;
      goto LABEL_116;
    }

    v81 = *(v263 + 8);
    *(a2 + 6416) = v81;
    v31 = v264;
LABEL_115:
    *(a2 + 8752) = v212;
    *(a2 + 8756) = v213;
    *(a2 + 8760) = v214;
    *(a2 + 8764) = v75;
    v92 = v263;
    if (v80 == 0x7FFFFFFF)
    {
LABEL_117:
      *(v92 + 8) = v81;
      v93 = (v81 - v285) >> 1;
      if (v93 >= 2047)
      {
        v93 = 2047;
      }

      v94 = v93 & ~(v93 >> 31);
      v95 = ((v81 >> 16) - SHIWORD(v285)) >> 1;
      if (v95 >= 2047)
      {
        v95 = 2047;
      }

      LODWORD(v271) = (96 * (*(*(a2 + 8688) + 4 * (v95 & ~(v95 >> 31))) + *(*(a2 + 8680) + 4 * v94))) >> 7;
      v216 = 1;
      v24 = a1 + 28743;
      v50 = v209;
      goto LABEL_122;
    }

LABEL_116:
    v265 = 0;
    (*(v233 + 169))(a2, a2 + 1864, a2 + 6368, a2 + 6416, &v285, *(a2 + 8632), v249, v248, &v265 + 4, &v265);
    v31 = v264;
    v81 = *(a2 + 6416);
    goto LABEL_117;
  }

  v49 = v35;
  if (v35 == 9)
  {
    v51 = 30028;
    if (((0x1200DuLL >> v29) & 1) == 0)
    {
      v51 = 30036;
    }

    if ((0x24130uLL >> v29))
    {
      v51 = 30032;
    }

    v52 = *(a2 + v51);
    v312 = 0;
    v309 = 0;
    v311 = 0u;
    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    v303 = 0u;
    v301 = 0u;
    memset(v302, 0, sizeof(v302));
    v298 = &v285;
    v300 = v251;
    v299 = v285;
    v308 = v52;
    v310 = v295;
    memset_pattern16(v302, &unk_273BC7DE0, 0x40uLL);
    if (*v233)
    {
      rd_check_segment(a1, a2, &v298, 2u);
      if (v300 < v251)
      {
        v53 = SHIWORD(v285);
        v54 = ((SHIWORD(v285) + 7) >> 3) - 255;
        v245 = *(a2 + 8752);
        if (v245 < v54)
        {
          *(a2 + 8752) = v54;
        }

        v55 = (v53 >> 3) + 255;
        v56 = *(a2 + 8756);
        if (v56 > v55)
        {
          *(a2 + 8756) = v55;
        }

        v218 = v28;
        v57 = v285;
        v58 = ((v285 + 7) >> 3) - 255;
        v59 = *(a2 + 8760);
        if (v59 < v58)
        {
          *(a2 + 8760) = v58;
        }

        v60 = (v57 >> 3) + 255;
        v61 = *(a2 + 8764);
        if (v61 > v60)
        {
          *(a2 + 8764) = v60;
        }

        *&v311 = __PAIR64__(DWORD2(v303), v303);
        *(&v311 + 1) = __PAIR64__(DWORD2(v305), v305);
        v62 = v303 - v305;
        if (v62 < 0)
        {
          v62 = v305 - v303;
        }

        v63 = v62 >> 3;
        v64 = (v303 >> 16) - (v305 >> 16);
        if (v64 < 0)
        {
          v64 = (v305 >> 16) - (v303 >> 16);
        }

        v65 = v64 >> 3;
        if (v63 > v65)
        {
          v65 = v63;
        }

        if (v65 >= 2)
        {
          if (v65 >= 0x80)
          {
            v105 = 128;
          }

          else
          {
            v105 = v65;
          }

          v66 = 7;
          do
          {
            --v66;
            v85 = v105 > 3;
            v105 >>= 1;
          }

          while (v85);
        }

        else
        {
          v66 = 7;
        }

        LODWORD(v312) = v66;
        v106 = SWORD4(v303) - SWORD4(v305);
        if (v106 < 0)
        {
          v106 = SWORD4(v305) - SWORD4(v303);
        }

        v107 = v106 >> 3;
        v108 = (SDWORD2(v303) >> 16) - (SDWORD2(v305) >> 16);
        if (v108 < 0)
        {
          v108 = (SDWORD2(v305) >> 16) - (SDWORD2(v303) >> 16);
        }

        v109 = v108 >> 3;
        if (v107 > v109)
        {
          v109 = v107;
        }

        if (v109 >= 2)
        {
          if (v109 >= 0x80)
          {
            v111 = 128;
          }

          else
          {
            v111 = v109;
          }

          v110 = 7;
          do
          {
            --v110;
            v85 = v111 > 3;
            v111 >>= 1;
          }

          while (v85);
        }

        else
        {
          v110 = 7;
        }

        HIDWORD(v312) = v110;
        rd_check_segment(a1, a2, &v298, 1u);
        v112 = v311 - SWORD2(v311);
        if (v112 < 0)
        {
          v112 = SWORD2(v311) - v311;
        }

        v113 = v112 >> 3;
        v114 = SWORD1(v311) - SWORD3(v311);
        if (v114 < 0)
        {
          v114 = SWORD3(v311) - SWORD1(v311);
        }

        v115 = v114 >> 3;
        if (v113 <= v115)
        {
          v113 = v115;
        }

        if (v113 >= 2)
        {
          if (v113 >= 0x80)
          {
            v117 = 128;
          }

          else
          {
            v117 = v113;
          }

          v116 = 7;
          do
          {
            --v116;
            v85 = v117 > 3;
            v117 >>= 1;
          }

          while (v85);
        }

        else
        {
          v116 = 7;
        }

        LODWORD(v312) = v116;
        v118 = SWORD4(v311) - SWORD6(v311);
        if (v118 < 0)
        {
          v118 = SWORD6(v311) - SWORD4(v311);
        }

        v119 = v118 >> 3;
        v120 = SWORD5(v311) - SHIWORD(v311);
        if (v120 < 0)
        {
          v120 = SHIWORD(v311) - SWORD5(v311);
        }

        v121 = v120 >> 3;
        if (v119 <= v121)
        {
          v119 = v121;
        }

        if (v119 >= 2)
        {
          if (v119 >= 0x80)
          {
            v123 = 128;
          }

          else
          {
            v123 = v119;
          }

          v122 = 7;
          do
          {
            --v122;
            v85 = v123 > 3;
            v123 >>= 1;
          }

          while (v85);
        }

        else
        {
          v122 = 7;
        }

        HIDWORD(v312) = v122;
        rd_check_segment(a1, a2, &v298, 0);
        if (v233[56])
        {
          v124 = 1;
        }

        else
        {
          v124 = v301 == 2;
        }

        if (v124)
        {
          v299 = v311;
          rd_check_segment(a1, a2, &v298, 3u);
        }

        *(a2 + 8752) = v245;
        *(a2 + 8756) = v56;
        *(a2 + 8760) = v59;
        *(a2 + 8764) = v61;
        v28 = v218;
      }
    }

    else
    {
      rd_check_segment(a1, a2, &v298, 0);
      rd_check_segment(a1, a2, &v298, 1u);
      rd_check_segment(a1, a2, &v298, 2u);
      rd_check_segment(a1, a2, &v298, 3u);
    }

    v125 = 0;
    v126 = 0;
    *(a2 + 6416) = v303;
    **(a2 + 6408) = v307;
    *(a2 + 6472) = DWORD1(v303);
    **(a2 + 6464) = BYTE1(v307);
    *(a2 + 6528) = DWORD2(v303);
    **(a2 + 6520) = BYTE2(v307);
    *(a2 + 6584) = HIDWORD(v303);
    **(a2 + 6576) = BYTE3(v307);
    *(a2 + 6640) = v304;
    **(a2 + 6632) = BYTE4(v307);
    *(a2 + 6696) = DWORD1(v304);
    **(a2 + 6688) = BYTE5(v307);
    *(a2 + 6752) = DWORD2(v304);
    **(a2 + 6744) = BYTE6(v307);
    *(a2 + 6808) = HIDWORD(v304);
    **(a2 + 6800) = BYTE7(v307);
    *(a2 + 6864) = v305;
    **(a2 + 6856) = BYTE8(v307);
    *(a2 + 6920) = DWORD1(v305);
    **(a2 + 6912) = BYTE9(v307);
    *(a2 + 6976) = DWORD2(v305);
    **(a2 + 6968) = BYTE10(v307);
    *(a2 + 7032) = HIDWORD(v305);
    **(a2 + 7024) = BYTE11(v307);
    *(a2 + 7088) = v306;
    **(a2 + 7080) = BYTE12(v307);
    *(a2 + 7144) = DWORD1(v306);
    **(a2 + 7136) = BYTE13(v307);
    *(a2 + 7200) = DWORD2(v306);
    **(a2 + 7192) = BYTE14(v307);
    *(a2 + 7256) = HIDWORD(v306);
    **(a2 + 7248) = HIBYTE(v307);
    v127 = DWORD2(v301);
    HIDWORD(v271) = HIDWORD(v301);
    v128 = DWORD1(v301);
    v129 = v301;
    *(*(a2 + 8096) + 8) = v301;
    v130 = *(a2 + 8576);
    *v130 = vp8_mbsplit_count[v129];
    v274 = v128;
    v131 = &vp8_mbsplit_offset + 16 * v129;
    do
    {
      v132 = v131[v126];
      v133 = &v130[v125];
      v133[1] = v302[v132];
      v133[2] = *(&v303 + v132);
      ++v126;
      v130 = *(a2 + 8576);
      v125 += 2;
    }

    while (v126 < *v130);
    v134 = v300;
    v130[32] = HIDWORD(v306);
    LODWORD(v271) = v128;
    HIDWORD(v272) = v127;
    if (v134 >= v251)
    {
      v47 = 1;
      HIDWORD(v266) = 1;
    }

    else
    {
      v247 = v127;
      vp8_build_inter4x4_predictors_mbuv(a2 + 4224);
      v220 = v28;
      v135 = *(a2 + 4136);
      v136 = *(a2 + 4100);
      vpx_subtract_block_neon(8, 8, (a2 + 512), 8, *(a2 + 4128), v136, (a2 + 4480), 8);
      vpx_subtract_block_neon(8, 8, (a2 + 640), 8, v135, v136, (a2 + 4544), 8);
      (*v207)(*(a2 + 3272), *(a2 + 3280), 16);
      (*v207)(*(a2 + 3448), *(a2 + 3456), 16);
      (*v207)(*(a2 + 3624), *(a2 + 3632), 16);
      (*v207)(*(a2 + 3800), *(a2 + 3808), 16);
      (*(a2 + 34280))(a2 + 3272, a2 + 7264);
      (*(a2 + 34280))(a2 + 3360, a2 + 7320);
      (*(a2 + 34280))(a2 + 3448, a2 + 7376);
      (*(a2 + 34280))(a2 + 3536, a2 + 7432);
      (*(a2 + 34280))(a2 + 3624, a2 + 7488);
      (*(a2 + 34280))(a2 + 3712, a2 + 7544);
      (*(a2 + 34280))(a2 + 3800, a2 + 7600);
      (*(a2 + 34280))(a2 + 3888, a2 + 7656);
      LODWORD(v135) = rd_cost_mbuv(a2);
      LODWORD(v272) = v135;
      v137 = vp8_mbuverror_c(a2);
      v47 = 0;
      v273 = v137 / 4;
      v138 = v135 + v128;
      v28 = v220;
      LODWORD(v271) = v138;
      HIDWORD(v272) = v137 / 4 + v247;
    }

    v48 = 0x7FFFFFFFLL;
    v24 = a1 + 28743;
  }

LABEL_195:
  v139 = calculate_final_rd_costs(v48, &v271, &v266, v47, SHIDWORD(v260), v244, a1, a2);
  v33 = v139;
  v140 = *(a2 + 8096);
  if (v140[2])
  {
    v141 = 0;
  }

  else
  {
    v141 = v139 < v255;
  }

  if (v141)
  {
    *a7 = HIDWORD(v272);
    v255 = v139;
  }

  if (v12[935])
  {
    LODWORD(v298) = 0;
    v142 = *&v263[4 * v49];
    v143 = HIWORD(v142) & 7;
    v144 = *(a2 + 7832) + *(a2 + 6400) + *(a2 + 7792) * (v142 >> 3) + (v142 >> 19);
    if (v143 | *&v263[4 * v49] & 7)
    {
      (*v223)(v144, *(a2 + 7792));
    }

    else
    {
      (*v221)(**(a2 + 1936) + *(a2 + 1944), *(a2 + 1948), v144, *(a2 + 7792), &v298);
    }

    v145 = v298;
    if (v298 < v32)
    {
      v32 = v298;
    }

    v140 = *(a2 + 8096);
    v31 = v264;
    if (((0x51uLL >> v29) & 1) != 0 && v298 < v237)
    {
      *(a2 + 8832) = v140[2];
      v237 = v145;
    }

    if (*v140 == 8 && v145 < v267)
    {
      v267 = v145;
      v146 = *&v263[4 * v49];
      v147 = HIWORD(v146) & 7;
      v148 = *(a2 + 7832) + *(a2 + 6400) + *(a2 + 7792) * (v146 >> 3) + (v146 >> 19);
      if (v147 | *&v263[4 * v49] & 7)
      {
        (*v223)(v148, *(a2 + 7792));
      }

      else
      {
        (*v221)(**(a2 + 1936) + *(a2 + 1944), *(a2 + 1948), v148, *(a2 + 7792), &v267);
      }

      *(a2 + 8820) = 8;
      v140 = *(a2 + 8096);
      *(a2 + 8824) = *(v140 + 1);
      *(a2 + 8836) = v140[10];
      *(a2 + 8828) = v140[2];
      goto LABEL_216;
    }
  }

  else
  {
LABEL_216:
    v31 = v264;
  }

  if (v33 >= v31 && !*(a2 + 8768))
  {
LABEL_228:
    v160 = *(v252 + 4 * v29);
    if (v160 <= 508)
    {
      v161 = v160 + 4;
    }

    else
    {
      v161 = 512;
    }

    *(v252 + 4 * v29) = v161;
    v30 = a2 + 29976;
    *(v259 + 4 * v29) = (v253[v29] >> 7) * v161;
    goto LABEL_21;
  }

  v149 = v271;
  v150 = HIDWORD(v272);
  *a5 = v271;
  *a6 = v150;
  if ((0x81C02uLL >> v29))
  {
    v140[1] = v250;
    *(v140 + 1) = 0;
    v140 = *(a2 + 8096);
  }

  v151 = *v140;
  v27 = v140[2];
  v251 = (v150 - v273) * *(a2 + 8644) + (((v149 - (v266 + v272) - *(v236 + 4 * v140[2])) * *(a2 + 8648) + 128) >> 8);
  LOBYTE(v239) = v140[1];
  BYTE4(v238) = v140[3];
  LODWORD(v242) = *(v140 + 1);
  WORD2(v239) = *(v140 + 4);
  v241 = v140[10];
  LOBYTE(v238) = v140[11];
  v152 = *(a2 + 8576);
  v153 = v152[7];
  v281 = v152[6];
  v282 = v153;
  v283 = *(v152 + 32);
  v154 = v152[3];
  v277 = v152[2];
  v278 = v154;
  v155 = v152[5];
  v279 = v152[4];
  v280 = v155;
  v156 = v152[1];
  v275 = *v152;
  v276 = v156;
  if (v151 == 9 || v151 == 4)
  {
    v28 = *(a2 + 6416);
    HIDWORD(v231) = *(a2 + 6472);
    LODWORD(v230) = *(a2 + 6584);
    HIDWORD(v230) = *(a2 + 6528);
    LODWORD(v229) = *(a2 + 6696);
    HIDWORD(v229) = *(a2 + 6640);
    LODWORD(v228) = *(a2 + 6808);
    HIDWORD(v228) = *(a2 + 6752);
    LODWORD(v227) = *(a2 + 6920);
    HIDWORD(v227) = *(a2 + 6864);
    LODWORD(v226) = *(a2 + 7032);
    HIDWORD(v226) = *(a2 + 6976);
    LODWORD(v225) = *(a2 + 7144);
    HIDWORD(v225) = *(a2 + 7088);
    v224 = *(a2 + 7200);
    LODWORD(v231) = *(a2 + 7256);
  }

  HIDWORD(v242) = v151;
  v157 = *(v252 + 4 * v29);
  v158 = v157 - 2;
  if (v157 <= 33)
  {
    v158 = 32;
  }

  *(v252 + 4 * v29) = v158;
  v159 = *(a2 + 8768);
  *(v259 + 4 * v29) = (v253[v29] >> 7) * v158;
  v30 = a2 + 29976;
  v31 = v33;
  v240 = v29;
  if (!v159)
  {
    goto LABEL_21;
  }

LABEL_232:
  v162 = v32;
  if ((v253[v240] - 1) <= 0x1FFFFFFD)
  {
    v163 = *(v252 + 4 * v240);
    if (v163 >= (v163 >> 2) + 32)
    {
      v164 = v163 - (v163 >> 2);
    }

    else
    {
      v164 = 32;
    }

    *(v252 + 4 * v240) = v164;
    *(v259 + 4 * v240) = v164 * (v253[v240] >> 7);
  }

  v165 = HIDWORD(v242);
  v166 = v242;
  v167 = v241;
  if (!v12[935] || ((v168 = a9 + v12[133] * a8, !*(a2 + 8820)) ? (*(a2 + 8820) = HIDWORD(v242), *(a2 + 8824) = v242, *(a2 + 8836) = v241, *(a2 + 8828) = v27, v267 = v162) : (v162 = v267), vp8_denoiser_denoise_mb(v256 + 148208, a2, v162, v237, a3, v208, (v256 + 111156), a8, a9, v168, 0), v27))
  {
LABEL_250:
    if (!*v24)
    {
      goto LABEL_256;
    }
  }

  else
  {
    v169 = *(a2 + 8832);
    if (v169)
    {
      LODWORD(v298) = 0;
      v170 = *(v236 + 4 * v169);
      v171 = LOBYTE(vp8_mode_contexts[4 * v295[0]]);
      HIDWORD(v266) = 0;
      LODWORD(v271) = vp8_prob_cost[v171] + v170;
      HIDWORD(v272) = 0;
      v172 = *(a2 + 8096);
      *(v172 + 2) = v169;
      v173 = &v288 + 24 * v169;
      *v257 = *v173;
      *(a2 + 7848) = *(v173 + 2);
      *v172 = 7;
      *(v172 + 4) = 0;
      v174 = evaluate_inter_mode_rd(v295, &v271, &v298, v256, a2);
      if (calculate_final_rd_costs(v174, &v271, &v266 + 1, v298, SHIDWORD(v260), v244, v256, a2) < v33 || *(a2 + 8768))
      {
        v175 = HIDWORD(v272);
        *a5 = v271;
        *a6 = v175;
        v176 = *(a2 + 8096);
        v165 = *v176;
        v27 = v176[2];
        LOBYTE(v239) = v176[1];
        BYTE4(v238) = v176[3];
        v166 = *(v176 + 1);
        WORD2(v239) = *(v176 + 4);
        v167 = v176[10];
        LOBYTE(v238) = v176[11];
        v177 = *(a2 + 8576);
        v178 = *v177;
        v179 = v177[1];
        v180 = v177[3];
        v277 = v177[2];
        v278 = v180;
        v275 = v178;
        v276 = v179;
        v181 = v177[4];
        v182 = v177[5];
        v183 = v177[6];
        v184 = v177[7];
        v283 = *(v177 + 32);
        v281 = v183;
        v282 = v184;
        v279 = v181;
        v280 = v182;
        if (v165 == 9 || v165 == 4)
        {
          v28 = *(a2 + 6416);
          HIDWORD(v231) = *(a2 + 6472);
          LODWORD(v230) = *(a2 + 6584);
          HIDWORD(v230) = *(a2 + 6528);
          LODWORD(v229) = *(a2 + 6696);
          HIDWORD(v229) = *(a2 + 6640);
          LODWORD(v228) = *(a2 + 6808);
          HIDWORD(v228) = *(a2 + 6752);
          LODWORD(v227) = *(a2 + 6920);
          HIDWORD(v227) = *(a2 + 6864);
          LODWORD(v226) = *(a2 + 7032);
          HIDWORD(v226) = *(a2 + 6976);
          LODWORD(v225) = *(a2 + 7144);
          HIDWORD(v225) = *(a2 + 7088);
          v224 = *(a2 + 7200);
          LODWORD(v231) = *(a2 + 7256);
        }

        goto LABEL_250;
      }
    }

    v27 = 0;
    if (!*v24)
    {
LABEL_256:
      v187 = *(a2 + 8096);
      *v187 = v165;
      *(v187 + 1) = v239;
      *(v187 + 2) = v27;
      *(v187 + 3) = BYTE4(v238);
      *(v187 + 4) = v166;
      *(v187 + 8) = WORD2(v239);
      *(v187 + 10) = v167;
      *(v187 + 11) = v238;
      if (v165 == 9)
      {
        *(*(a2 + 8096) + 12) = v28;
        *(*(a2 + 8096) + 16) = HIDWORD(v231);
        *(*(a2 + 8096) + 20) = HIDWORD(v230);
        *(*(a2 + 8096) + 24) = v230;
        *(*(a2 + 8096) + 28) = HIDWORD(v229);
        *(*(a2 + 8096) + 32) = v229;
        *(*(a2 + 8096) + 36) = HIDWORD(v228);
        *(*(a2 + 8096) + 40) = v228;
        *(*(a2 + 8096) + 44) = HIDWORD(v227);
        *(*(a2 + 8096) + 48) = v227;
        *(*(a2 + 8096) + 52) = HIDWORD(v226);
        *(*(a2 + 8096) + 56) = v226;
        *(*(a2 + 8096) + 60) = HIDWORD(v225);
        *(*(a2 + 8096) + 64) = v225;
        *(*(a2 + 8096) + 68) = v224;
        *(*(a2 + 8096) + 72) = v231;
        v190 = *(a2 + 8576);
        v191 = v278;
        *(v190 + 32) = v277;
        *(v190 + 48) = v191;
        *(v190 + 128) = v283;
        v192 = v282;
        *(v190 + 96) = v281;
        *(v190 + 112) = v192;
        v193 = v280;
        *(v190 + 64) = v279;
        *(v190 + 80) = v193;
        v194 = v276;
        *v190 = v275;
        *(v190 + 16) = v194;
        v189 = *(*(a2 + 8576) + 128);
        v188 = 4;
LABEL_260:
        *(*(a2 + 8096) + v188) = v189;
      }

      else if (v165 == 4)
      {
        *(*(a2 + 8096) + 12) = v28;
        *(*(a2 + 8096) + 16) = HIDWORD(v231);
        *(*(a2 + 8096) + 20) = HIDWORD(v230);
        *(*(a2 + 8096) + 24) = v230;
        *(*(a2 + 8096) + 28) = HIDWORD(v229);
        *(*(a2 + 8096) + 32) = v229;
        *(*(a2 + 8096) + 36) = HIDWORD(v228);
        *(*(a2 + 8096) + 40) = v228;
        *(*(a2 + 8096) + 44) = HIDWORD(v227);
        *(*(a2 + 8096) + 48) = v227;
        *(*(a2 + 8096) + 52) = HIDWORD(v226);
        *(*(a2 + 8096) + 56) = v226;
        *(*(a2 + 8096) + 60) = HIDWORD(v225);
        *(*(a2 + 8096) + 64) = v225;
        *(*(a2 + 8096) + 68) = v224;
        v188 = 72;
        v189 = v231;
        goto LABEL_260;
      }

LABEL_261:
      v195 = *(a2 + 8096);
      if (v258 != *(v254 + 4 * v195[2]))
      {
        v285 = v297[v258 == 0];
      }

      v196 = *v195;
      if (v196 == 8)
      {
        v205 = ((*(v195 + 2) - v285) >> 1) + 1023;
        if (v205 <= 0x7FE)
        {
          v206 = ((*(v195 + 3) - SHIWORD(v285)) >> 1) + 1023;
          if (v206 <= 0x7FE)
          {
            ++*(a2 + 4 * v205 + 13452);
            ++*(a2 + 4 * v206 + 21640);
          }
        }
      }

      else if (v196 == 9)
      {
        v197 = *(a2 + 8576);
        v198 = *v197;
        if (*v197 >= 1)
        {
          v199 = 0;
          v200 = v285;
          v201 = SHIWORD(v285);
          v202 = v197 + 5;
          do
          {
            if (*(v202 - 3) == 13)
            {
              v203 = ((*(v202 - 1) - v200) >> 1) + 1023;
              if (v203 <= 0x7FE)
              {
                v204 = ((*v202 - v201) >> 1) + 1023;
                if (v204 <= 0x7FE)
                {
                  ++*(a2 + 13452 + 4 * v203);
                  ++*(a2 + 21640 + 4 * v204);
                  v198 = *v197;
                }
              }
            }

            ++v199;
            v202 += 4;
          }

          while (v199 < v198);
        }
      }

      return;
    }
  }

  v185 = *(a2 + 8096);
  *v185 = 7;
  if (v165 == 7 && v27 == 3)
  {
    *(v185 + 1) = v239;
    *(v185 + 2) = 3;
    *(v185 + 3) = BYTE4(v238);
    *(v185 + 4) = v166;
    *(v185 + 8) = WORD2(v239);
    *(v185 + 10) = v167;
    *(v185 + 11) = v238;
    goto LABEL_261;
  }

  *(v185 + 2) = 3;
  *(v185 + 4) = 0;
  v186 = *(a2 + 8096);
  v186[1] = 0;
  v186[9] = v12[135];
  v186[8] = 0;
}

uint64_t rd_pick_intra_mbuv_mode(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v87 = *MEMORY[0x277D85DE8];
  *(*(a1 + 8096) + 1) = 0;
  v6 = *(a1 + 8000);
  v7 = *(a1 + 7972);
  v8 = v6 - v7;
  v9 = *(a1 + 8008);
  v10 = v9 - v7;
  v11 = *--v6;
  v79 = v11;
  v12 = *--v9;
  v71 = v12;
  v80 = *(v6 + v7);
  v72 = *(v9 + v7);
  v81 = *(v6 + 2 * v7);
  v73 = *(v9 + 2 * v7);
  v82 = *(v6 + 3 * v7);
  v74 = *(v9 + 3 * v7);
  v13 = a1 + 0x8000;
  v83 = *(v6 + 4 * v7);
  v75 = *(v9 + 4 * v7);
  v84 = *(v6 + 5 * v7);
  v76 = *(v9 + 5 * v7);
  v85 = *(v6 + 6 * v7);
  v77 = *(v9 + 6 * v7);
  v7 *= 7;
  v86 = *(v6 + v7);
  v78 = *(v9 + v7);
  v14 = dc_pred[4 * *(a1 + 8116) + 1 + 2 * *(a1 + 8112)];
  v14(a1 + 4480, 8, v8, &v79);
  v14(a1 + 4544, 8, v10, &v71);
  v15 = *(a1 + 4136);
  v16 = *(a1 + 4100);
  vpx_subtract_block_neon(8, 8, (a1 + 512), 8, *(a1 + 4128), v16, (a1 + 4480), 8);
  vpx_subtract_block_neon(8, 8, (a1 + 640), 8, v15, v16, (a1 + 4544), 8);
  (*(v13 + 1496))(*(a1 + 3272), *(a1 + 3280), 16);
  (*(v13 + 1496))(*(a1 + 3448), *(a1 + 3456), 16);
  (*(v13 + 1496))(*(a1 + 3624), *(a1 + 3632), 16);
  (*(v13 + 1496))(*(a1 + 3800), *(a1 + 3808), 16);
  (*(v13 + 1512))(a1 + 3272, a1 + 7264);
  (*(v13 + 1512))(a1 + 3360, a1 + 7320);
  (*(v13 + 1512))(a1 + 3448, a1 + 7376);
  (*(v13 + 1512))(a1 + 3536, a1 + 7432);
  (*(v13 + 1512))(a1 + 3624, a1 + 7488);
  (*(v13 + 1512))(a1 + 3712, a1 + 7544);
  (*(v13 + 1512))(a1 + 3800, a1 + 7600);
  (*(v13 + 1512))(a1 + 3888, a1 + 7656);
  v17 = rd_cost_mbuv(a1);
  v18 = *(a1 + 8096);
  v19 = *(*(a1 + 8720) + 40 * *(a1 + 8108) + 4 * *(v18 + 1)) + v17;
  v20 = vp8_mbuverror_c(a1) / 4;
  v21 = *(a1 + 8644) * v20 + ((*(a1 + 8648) * v19 + 128) >> 8);
  v69 = a3;
  if (v21 == 0x7FFFFFFF)
  {
    v20 = 0;
    v19 = 0;
    v70 = 10;
  }

  else
  {
    v70 = 0;
    *a3 = v17;
  }

  *(v18 + 1) = 1;
  v22 = *(a1 + 8000);
  v23 = *(a1 + 7972);
  v24 = v22 - v23;
  v25 = *(a1 + 8008);
  v26 = v25 - v23;
  v27 = *--v22;
  v79 = v27;
  v28 = *--v25;
  v71 = v28;
  v80 = *(v22 + v23);
  v72 = *(v25 + v23);
  v81 = *(v22 + 2 * v23);
  v73 = *(v25 + 2 * v23);
  v82 = *(v22 + 3 * v23);
  v74 = *(v25 + 3 * v23);
  v83 = *(v22 + 4 * v23);
  v75 = *(v25 + 4 * v23);
  v84 = *(v22 + 5 * v23);
  v76 = *(v25 + 5 * v23);
  v85 = *(v22 + 6 * v23);
  v77 = *(v25 + 6 * v23);
  v23 *= 7;
  v86 = *(v22 + v23);
  v78 = *(v25 + v23);
  v29 = off_280906140;
  off_280906140(a1 + 4480, 8, v24, &v79);
  v29(a1 + 4544, 8, v26, &v71);
  v30 = *(a1 + 4136);
  v31 = *(a1 + 4100);
  vpx_subtract_block_neon(8, 8, (a1 + 512), 8, *(a1 + 4128), v31, (a1 + 4480), 8);
  vpx_subtract_block_neon(8, 8, (a1 + 640), 8, v30, v31, (a1 + 4544), 8);
  (*(v13 + 1496))(*(a1 + 3272), *(a1 + 3280), 16);
  (*(v13 + 1496))(*(a1 + 3448), *(a1 + 3456), 16);
  (*(v13 + 1496))(*(a1 + 3624), *(a1 + 3632), 16);
  (*(v13 + 1496))(*(a1 + 3800), *(a1 + 3808), 16);
  (*(v13 + 1512))(a1 + 3272, a1 + 7264);
  (*(v13 + 1512))(a1 + 3360, a1 + 7320);
  (*(v13 + 1512))(a1 + 3448, a1 + 7376);
  (*(v13 + 1512))(a1 + 3536, a1 + 7432);
  (*(v13 + 1512))(a1 + 3624, a1 + 7488);
  (*(v13 + 1512))(a1 + 3712, a1 + 7544);
  (*(v13 + 1512))(a1 + 3800, a1 + 7600);
  (*(v13 + 1512))(a1 + 3888, a1 + 7656);
  v32 = rd_cost_mbuv(a1);
  v33 = *(a1 + 8096);
  v34 = *(*(a1 + 8720) + 40 * *(a1 + 8108) + 4 * *(v33 + 1)) + v32;
  v35 = vp8_mbuverror_c(a1);
  v36 = *(a1 + 8644) * (v35 / 4) + ((*(a1 + 8648) * v34 + 128) >> 8);
  if (v36 < v21)
  {
    *v69 = v32;
    v70 = 1;
    v21 = v36;
    v20 = v35 / 4;
    v19 = v34;
  }

  *(v33 + 1) = 2;
  v37 = *(a1 + 8000);
  v38 = *(a1 + 7972);
  v39 = v37 - v38;
  v40 = *(a1 + 8008);
  v41 = v40 - v38;
  v42 = *--v37;
  v79 = v42;
  v43 = *--v40;
  v71 = v43;
  v80 = *(v37 + v38);
  v72 = *(v40 + v38);
  v81 = *(v37 + 2 * v38);
  v73 = *(v40 + 2 * v38);
  v82 = *(v37 + 3 * v38);
  v74 = *(v40 + 3 * v38);
  v83 = *(v37 + 4 * v38);
  v75 = *(v40 + 4 * v38);
  v84 = *(v37 + 5 * v38);
  v76 = *(v40 + 5 * v38);
  v85 = *(v37 + 6 * v38);
  v77 = *(v40 + 6 * v38);
  v38 *= 7;
  v86 = *(v37 + v38);
  v78 = *(v40 + v38);
  v44 = off_280906150;
  off_280906150(a1 + 4480, 8, v39, &v79);
  v44(a1 + 4544, 8, v41, &v71);
  v45 = *(a1 + 4136);
  v46 = *(a1 + 4100);
  vpx_subtract_block_neon(8, 8, (a1 + 512), 8, *(a1 + 4128), v46, (a1 + 4480), 8);
  vpx_subtract_block_neon(8, 8, (a1 + 640), 8, v45, v46, (a1 + 4544), 8);
  (*(v13 + 1496))(*(a1 + 3272), *(a1 + 3280), 16);
  (*(v13 + 1496))(*(a1 + 3448), *(a1 + 3456), 16);
  (*(v13 + 1496))(*(a1 + 3624), *(a1 + 3632), 16);
  (*(v13 + 1496))(*(a1 + 3800), *(a1 + 3808), 16);
  (*(v13 + 1512))(a1 + 3272, a1 + 7264);
  (*(v13 + 1512))(a1 + 3360, a1 + 7320);
  (*(v13 + 1512))(a1 + 3448, a1 + 7376);
  (*(v13 + 1512))(a1 + 3536, a1 + 7432);
  (*(v13 + 1512))(a1 + 3624, a1 + 7488);
  (*(v13 + 1512))(a1 + 3712, a1 + 7544);
  (*(v13 + 1512))(a1 + 3800, a1 + 7600);
  (*(v13 + 1512))(a1 + 3888, a1 + 7656);
  v47 = rd_cost_mbuv(a1);
  v48 = *(a1 + 8096);
  v49 = *(*(a1 + 8720) + 40 * *(a1 + 8108) + 4 * *(v48 + 1)) + v47;
  v50 = vp8_mbuverror_c(a1);
  v51 = *(a1 + 8644) * (v50 / 4) + ((*(a1 + 8648) * v49 + 128) >> 8);
  if (v51 < v21)
  {
    *v69 = v47;
    v70 = 2;
    v21 = v51;
    v20 = v50 / 4;
    v19 = v49;
  }

  *(v48 + 1) = 3;
  v52 = *(a1 + 8000);
  v53 = *(a1 + 7972);
  v54 = v52 - v53;
  v55 = *(a1 + 8008);
  v56 = v55 - v53;
  v57 = *--v52;
  v79 = v57;
  v58 = *--v55;
  v71 = v58;
  v80 = *(v52 + v53);
  v72 = *(v55 + v53);
  v81 = *(v52 + 2 * v53);
  v73 = *(v55 + 2 * v53);
  v82 = *(v52 + 3 * v53);
  v74 = *(v55 + 3 * v53);
  v83 = *(v52 + 4 * v53);
  v75 = *(v55 + 4 * v53);
  v84 = *(v52 + 5 * v53);
  v76 = *(v55 + 5 * v53);
  v85 = *(v52 + 6 * v53);
  v77 = *(v55 + 6 * v53);
  v53 *= 7;
  v86 = *(v52 + v53);
  v78 = *(v55 + v53);
  v59 = off_280906160;
  off_280906160(a1 + 4480, 8, v54, &v79);
  v59(a1 + 4544, 8, v56, &v71);
  v60 = *(a1 + 4136);
  v61 = *(a1 + 4100);
  vpx_subtract_block_neon(8, 8, (a1 + 512), 8, *(a1 + 4128), v61, (a1 + 4480), 8);
  vpx_subtract_block_neon(8, 8, (a1 + 640), 8, v60, v61, (a1 + 4544), 8);
  (*(v13 + 1496))(*(a1 + 3272), *(a1 + 3280), 16);
  (*(v13 + 1496))(*(a1 + 3448), *(a1 + 3456), 16);
  (*(v13 + 1496))(*(a1 + 3624), *(a1 + 3632), 16);
  (*(v13 + 1496))(*(a1 + 3800), *(a1 + 3808), 16);
  (*(v13 + 1512))(a1 + 3272, a1 + 7264);
  (*(v13 + 1512))(a1 + 3360, a1 + 7320);
  (*(v13 + 1512))(a1 + 3448, a1 + 7376);
  (*(v13 + 1512))(a1 + 3536, a1 + 7432);
  (*(v13 + 1512))(a1 + 3624, a1 + 7488);
  (*(v13 + 1512))(a1 + 3712, a1 + 7544);
  (*(v13 + 1512))(a1 + 3800, a1 + 7600);
  (*(v13 + 1512))(a1 + 3888, a1 + 7656);
  v62 = rd_cost_mbuv(a1);
  v63 = *(a1 + 8096);
  v64 = *(*(a1 + 8720) + 40 * *(a1 + 8108) + 4 * *(v63 + 1)) + v62;
  result = vp8_mbuverror_c(a1);
  v66 = v70;
  if (*(a1 + 8644) * (result / 4) + ((*(a1 + 8648) * v64 + 128) >> 8) < v21)
  {
    *v69 = v62;
    v66 = 3;
    v20 = result / 4;
    v19 = v64;
  }

  *a2 = v19;
  *a4 = v20;
  *(v63 + 1) = v66;
  return result;
}

uint64_t rd_pick_intra4x4mby_modes(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v93[1] = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 16);
  v10 = *(a1 + 8176);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v12 = *(a1 + 8184);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  v14 = *(a1 + 7952);
  v15 = (*(a1 + 7992) - v14);
  v16 = v15[4];
  v15 += 4;
  v15[v14] = v16;
  v15[2 * v14] = v16;
  v15[3 * v14] = *v15;
  v61 = a1 + 6368;
  v59 = a5;
  v60 = a1 + 1864;
  v88 = v11;
  v89 = v10;
  v86 = v13;
  v87 = v12;
  v74 = a1 + 0x8000;
  v75 = *(a1 + 8736);
  v82 = a1;
  while (2)
  {
    v17 = *(a1 + 8096);
    v18 = v17 + 4 * v5;
    if (!*(a1 + 8108))
    {
      if (v5 > 3)
      {
        v19 = *(v18 - 4);
      }

      else
      {
        v19 = 0;
        v20 = (v17 - 76 * *(a1 + 8104));
        v21 = *v20;
        if (v21 > 2)
        {
          if (v21 == 3)
          {
            v19 = 1;
          }

          else if (v21 == 4)
          {
            v19 = *&v20[4 * v5 + 60];
          }
        }

        else if (v21 == 1)
        {
          v19 = 2;
        }

        else if (v21 == 2)
        {
          v19 = 3;
        }
      }

      if ((v5 & 3) != 0)
      {
        v22 = *(v18 + 8);
      }

      else
      {
        v22 = 0;
        v54 = *(v17 - 76);
        if (v54 > 2)
        {
          if (v54 == 3)
          {
            v22 = 1;
          }

          else if (v54 == 4)
          {
            v22 = *(v18 - 52);
          }
        }

        else if (v54 == 1)
        {
          v22 = 2;
        }

        else if (v54 == 2)
        {
          v22 = 3;
        }
      }

      v75 = *(a1 + 8728) + 400 * v19 + 40 * v22;
    }

    v67 = v18;
    v68 = v7;
    v62 = v9;
    v63 = v8;
    v65 = v6;
    v72 = 0;
    v71 = 0;
    v23 = 0;
    v24 = (v60 + 88 * v5);
    v25 = v61 + 56 * v5;
    v64 = v5;
    v69 = vp8_block2left[v5];
    v70 = vp8_block2above[v5];
    v26 = *(a1 + 7952);
    v27 = (*(a1 + 7992) + *(v25 + 32));
    v66 = v27;
    v80 = v27 - 1;
    v81 = (v27 - v26);
    v78 = *(&v86 + v69) + *(&v88 + v70);
    v79 = *(v27 - v26 - 1);
    v83 = v26;
    v77 = 2 * v26;
    v76 = 3 * v26;
    v84 = 0x7FFFFFFF;
    v73 = 14;
    do
    {
      v85 = *(v75 + 4 * v23);
      v28 = *(v25 + 16);
      v92[0] = *v80;
      v92[1] = v80[v83];
      v92[2] = v80[v77];
      v92[3] = v80[v76];
      v93[0] = *v81;
      v92[11] = v79;
      (*(&pred_0 + v23))(v28, 16, v93, v92);
      vpx_subtract_block_neon(4, 4, *v24, 16, (*v24[9] + *(v24 + 20)), *(v24 + 21), *(v25 + 16), 16);
      (*(v74 + 1488))(*v24, v24[1], 32);
      (*(v74 + 1512))(v24, v25);
      v29 = **(v25 + 40);
      v30 = *(v82 + 8744);
      if (v29 < 1)
      {
        v29 = 0;
        v31 = 0;
        v35 = v78;
      }

      else
      {
        v31 = 0;
        v32 = vp8_default_zig_zag1d;
        v33 = vp8_coef_bands;
        v34 = **(v25 + 40);
        v35 = v78;
        do
        {
          v36 = *v32++;
          v37 = *(*v25 + 2 * v36);
          v38 = dct_value_tokens[2 * v37 + 4096];
          LODWORD(v36) = *v33++;
          v31 += *(v30 + 144 * v36 + 48 * v35 + 4 * v38 + 3456) + dct_value_cost[v37 + 2048];
          v35 = vp8_prev_token_class[v38];
          --v34;
        }

        while (v34);
        if (v29 > 0xF)
        {
          v39 = 1;
          goto LABEL_21;
        }
      }

      v31 += *(v30 + 144 * vp8_coef_bands[v29] + 48 * v35 + 3500);
      v39 = v29 != 0;
LABEL_21:
      v40 = v24[1];
      v41 = *(v25 + 8);
      v42 = v40[1];
      v43 = v41[1];
      v44 = vsubl_high_s16(*v40, *v41);
      v45 = vsubl_high_s16(v42, v43);
      v46 = vsubl_s16(*v40->i8, *v41->i8);
      v47 = vsubl_s16(*v42.i8, *v43.i8);
      v48 = vaddvq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v47, v47), v46, v46), vmlaq_s32(vmulq_s32(v45, v45), v44, v44))) >> 2;
      v49 = v48 * *(v82 + 8644) + ((*(v82 + 8648) * (v31 + v85) + 128) >> 8);
      if (v49 < v84)
      {
        *(&v88 + v70) = v39;
        *(&v86 + v69) = v39;
        v50 = *(v25 + 16);
        v51 = v50[4];
        v91[0] = *v50;
        v91[4] = v51;
        v52 = v50[8];
        LODWORD(v50) = v50[12];
        v91[8] = v52;
        v91[12] = v50;
        v53 = v41[1];
        v72 = v31 + v85;
        v73 = v23;
        v90[0] = *v41;
        v90[1] = v53;
        v71 = __PAIR64__(v31, v48);
        v84 = v49;
      }

      ++v23;
    }

    while (v23 != 10);
    *(v25 + 48) = v73;
    vp8_short_idct4x4llm_neon(v90, v91, 16, v66, v83);
    v7 = v68 + v84;
    *(v67 + 12) = v73;
    if (v7 < v59)
    {
      v8 = HIDWORD(v71) + v63;
      v6 = v71 + v65;
      v9 = v72 + v62;
      v5 = v64 + 1;
      a1 = v82;
      if (v64 == 15)
      {
        *a2 = v9;
        *a3 = v8;
        *a4 = v6;
        return (*(v82 + 8644) * v6 + ((*(v82 + 8648) * v9 + 128) >> 8));
      }

      continue;
    }

    return 0x7FFFFFFFLL;
  }
}

uint64_t macro_block_yrd(uint64_t a1, _DWORD *a2, int *a3)
{
  v8 = a1 + 0x8000;
  v9 = *(a1 + 3976);
  vpx_subtract_block_neon(16, 16, a1, 16, **(a1 + 1936), *(a1 + 1948), (a1 + 4224), 16);
  (*(v8 + 1496))(*(a1 + 1864), *(a1 + 1872), 32);
  v10 = *(a1 + 1872);
  *v9 = *v10;
  v9[1] = v10[16];
  (*(v8 + 1496))(*(a1 + 2040), *(a1 + 2048), 32);
  v11 = *(a1 + 2048);
  v9[2] = *v11;
  v9[3] = v11[16];
  (*(v8 + 1496))(*(a1 + 2216), *(a1 + 2224), 32);
  v12 = *(a1 + 2224);
  v9[4] = *v12;
  v9[5] = v12[16];
  (*(v8 + 1496))(*(a1 + 2392), *(a1 + 2400), 32);
  v13 = *(a1 + 2400);
  v9[6] = *v13;
  v9[7] = v13[16];
  (*(v8 + 1496))(*(a1 + 2568), *(a1 + 2576), 32);
  v14 = *(a1 + 2576);
  v9[8] = *v14;
  v9[9] = v14[16];
  (*(v8 + 1496))(*(a1 + 2744), *(a1 + 2752), 32);
  v15 = *(a1 + 2752);
  v9[10] = *v15;
  v9[11] = v15[16];
  (*(v8 + 1496))(*(a1 + 2920), *(a1 + 2928), 32);
  v16 = *(a1 + 2928);
  v9[12] = *v16;
  v9[13] = v16[16];
  (*(v8 + 1496))(*(a1 + 3096), *(a1 + 3104), 32);
  v17 = *(a1 + 3104);
  v9[14] = *v17;
  v9[15] = v17[16];
  (*(v8 + 1504))(*(a1 + 3976), *(a1 + 3984), 8);
  (*(v8 + 1512))(a1 + 1864, a1 + 6368);
  (*(v8 + 1512))(a1 + 1952, a1 + 6424);
  (*(v8 + 1512))(a1 + 2040, a1 + 6480);
  (*(v8 + 1512))(a1 + 2128, a1 + 6536);
  (*(v8 + 1512))(a1 + 2216, a1 + 6592);
  (*(v8 + 1512))(a1 + 2304, a1 + 6648);
  (*(v8 + 1512))(a1 + 2392, a1 + 6704);
  (*(v8 + 1512))(a1 + 2480, a1 + 6760);
  (*(v8 + 1512))(a1 + 2568, a1 + 6816);
  (*(v8 + 1512))(a1 + 2656, a1 + 6872);
  (*(v8 + 1512))(a1 + 2744, a1 + 6928);
  (*(v8 + 1512))(a1 + 2832, a1 + 6984);
  (*(v8 + 1512))(a1 + 2920, a1 + 7040);
  (*(v8 + 1512))(a1 + 3008, a1 + 7096);
  (*(v8 + 1512))(a1 + 3096, a1 + 7152);
  (*(v8 + 1512))(a1 + 3184, a1 + 7208);
  (*(v8 + 1512))(a1 + 3976, a1 + 7712);
  v18 = 0;
  v19 = 0;
  v20 = *(a1 + 1872);
  v21 = *(a1 + 6376);
  v22 = *(a1 + 1960);
  v23 = *(a1 + 2048);
  v24 = *(a1 + 6488);
  v25 = (v23 + 30);
  v26 = (v24 + 30);
  v27.i16[4] = *(v20 + 26);
  v28 = *(a1 + 2136);
  v169.val[1] = *(v28 + 2);
  v27.i16[5] = *(v20 + 28);
  v29 = *(a1 + 2224);
  v27.i16[6] = *(v20 + 30);
  v30 = *(v29 + 2);
  v171.val[1].i64[0] = *(v29 + 20);
  v169.val[0] = vld1q_dup_s16(v25);
  v31 = vdupq_laneq_s64(v30, 1);
  v142 = *v30.i8;
  v144 = *v31.i8;
  v171.val[0] = v31;
  v171.val[0].i16[4] = *(v29 + 18);
  v32 = *(a1 + 2312);
  v172.val[1] = *(v32 + 2);
  *v172.val[0].i8 = vdup_lane_s16(*v171.val[1].i8, 3);
  v172.val[0].i16[1] = *(v29 + 28);
  v33 = *(a1 + 6544);
  v173.val[1] = *(v33 + 2);
  v34.i64[0] = *(v28 + 18);
  v35.i64[0] = *(v33 + 18);
  v172.val[0].i16[2] = *(v29 + 30);
  v36 = vextq_s8(v172.val[1], v30, 0xAuLL);
  v36.i16[3] = *(v32 + 18);
  *&v3 = *(v32 + 22);
  v37 = v36;
  v37.i16[4] = *(v32 + 20);
  v38 = *(a1 + 2400);
  v39 = *(v38 + 2);
  *v40.i8 = vdup_lane_s16(*&v3, 3);
  v40.i16[1] = *(v32 + 30);
  v41 = vdupq_laneq_s32(v39, 3);
  v41.i16[2] = *(v38 + 18);
  v42.i64[0] = 0x1110050403020100;
  v41.i16[3] = *(v38 + 20);
  v43 = *(a1 + 6600);
  v167.val[0] = *(v43 + 2);
  v140 = *(v43 + 2);
  *&v4 = *(v38 + 24);
  v44 = v41;
  v44.i16[4] = *(v38 + 22);
  *&v5 = *(v43 + 20);
  v173.val[0] = vld1q_dup_s16(v26);
  v45 = vdupq_laneq_s64(v167.val[0], 1);
  v46 = v45;
  v46.i16[4] = *(v43 + 18);
  v47 = *(a1 + 6656);
  v167.val[1] = *(v47 + 2);
  *v167.val[0].i8 = vdup_lane_s16(*&v5, 3);
  v167.val[0].i16[1] = *(v43 + 28);
  v167.val[0].i16[2] = *(v43 + 30);
  v155 = vqtbl2q_s8(v169, xmmword_273BC7DB0);
  v169.val[0] = vextq_s8(v169.val[1], v34, 6uLL);
  v168.val[1].i64[0] = *(v47 + 22);
  v48 = vqtbl2q_s8(v171, xmmword_273BC7DB0);
  v49 = vextq_s8(v167.val[1], v167.val[0], 0xAuLL);
  v49.i16[3] = *(v47 + 18);
  v50 = *(a1 + 6712);
  v168.val[0] = v49;
  v168.val[0].i16[4] = *(v47 + 20);
  v51 = *(a1 + 2488);
  v169.val[1] = vqtbl2q_s8(v172, xmmword_273BC7DC0);
  v52 = vqtbl2q_s8(*(&v3 - 1), xmmword_273BC7DB0);
  v172.val[1] = *(v51 + 2);
  v171.val[0] = vextq_s8(vextq_s8(v40, v40, 4uLL), v39, 0xCuLL);
  *v172.val[0].i8 = vdup_lane_s16(*&v4, 3);
  v170.val[0] = *(v50 + 2);
  v171.val[1] = vqtbl2q_s8(v172, xmmword_273BC7DD0);
  v40.i16[0] = vdupq_laneq_s16(v172.val[1], 7).u16[0];
  v53 = vqtbl2q_s8(v173, xmmword_273BC7DB0);
  v172.val[0] = vextq_s8(v173.val[1], v35, 6uLL);
  *v173.val[1].i8 = vdup_lane_s16(*v168.val[1].i8, 3);
  v173.val[1].i16[1] = *(v47 + 30);
  v173.val[0] = vdupq_laneq_s32(v170.val[0], 3);
  v173.val[0].i16[2] = *(v50 + 18);
  v172.val[1] = vqtbl2q_s8(v167, xmmword_273BC7DC0);
  v167.val[1].i64[0] = *(v50 + 24);
  v173.val[0].i16[3] = *(v50 + 20);
  v54 = *(a1 + 6768);
  v168.val[0] = vqtbl2q_s8(v168, xmmword_273BC7DB0);
  v173.val[1] = vextq_s8(vextq_s8(v173.val[1], v173.val[1], 4uLL), v170.val[0], 0xCuLL);
  v167.val[0] = v173.val[0];
  v167.val[0].i16[4] = *(v50 + 22);
  v170.val[1] = *(v54 + 2);
  *v170.val[0].i8 = vdup_lane_s16(*v167.val[1].i8, 3);
  v42.i16[4] = *(v22 + 28);
  v55 = *(a1 + 6432);
  v42.i16[5] = *(v22 + 30);
  v56 = vqtbl2q_s8(v170, xmmword_273BC7DD0);
  v170.val[1].i16[0] = vdupq_laneq_s16(v170.val[1], 7).u16[0];
  v170.val[0].i16[4] = *(v55 + 28);
  v168.val[1] = vsubl_high_s16(v48, vqtbl2q_s8(*(&v5 - 1), xmmword_273BC7DB0));
  v57 = vsubl_high_s16(vqtbl2q_s8(*(&v4 - 1), xmmword_273BC7DB0), vqtbl2q_s8(v167, xmmword_273BC7DB0));
  v167.val[0] = *(v24 + 2);
  v170.val[0].i16[5] = *(v55 + 30);
  v42.i32[3] = *(v23 + 2);
  v167.val[1] = vextq_s8(*(v23 + 2), v167.val[0], 4uLL);
  v170.val[0].i32[3] = v167.val[0].i32[0];
  v167.val[0] = vextq_s8(v167.val[0], v167.val[0], 4uLL);
  v58 = vsubl_high_s16(v52, v168.val[0]);
  v160 = v168.val[1];
  v161 = vsubl_s16(*v167.val[1].i8, *v167.val[0].i8);
  v167.val[1].i32[3] = *(v23 + 18);
  v167.val[0].i32[3] = *(v24 + 18);
  v59 = vsubl_high_s16(v167.val[1], v167.val[0]);
  v27.i16[7] = *(v22 + 2);
  v167.val[1].i32[2] = *(v21 + 26);
  v167.val[1].i16[6] = *(v21 + 30);
  v167.val[1].i16[7] = *(v55 + 2);
  v167.val[0] = vextq_s8(*(v22 + 2), *(v22 + 2), 2uLL);
  v168.val[0] = vextq_s8(*(v55 + 2), v167.val[0], 2uLL);
  v159 = vsubl_s16(*v167.val[0].i8, *v168.val[0].i8);
  v167.val[0].i16[7] = *(v22 + 18);
  v168.val[0].i16[7] = *(v55 + 18);
  v157 = vsubl_high_s16(v167.val[0], v168.val[0]);
  v40.i16[1] = *(v51 + 18);
  v40.i32[1] = *(v51 + 20);
  v170.val[1].i16[1] = *(v54 + 18);
  v170.val[1].i32[1] = *(v54 + 20);
  v158 = vsubl_s16(*v40.i8, *v170.val[1].i8);
  v40.i64[1] = *(v51 + 24);
  v170.val[1].i64[1] = *(v54 + 24);
  v146 = vsubl_high_s16(v40, v170.val[1]);
  v150 = vsubl_high_s16(v155, v53);
  v167.val[0].i16[0] = vdup_lane_s16(*v34.i8, 3).u16[0];
  v167.val[0].i16[1] = *(v28 + 26);
  v167.val[0].i16[2] = *(v28 + 28);
  v168.val[1] = vsubl_high_s16(v27, v167.val[1]);
  v167.val[0].i16[3] = *(v28 + 30);
  v167.val[1].i16[0] = vdup_lane_s16(*v35.i8, 3).u16[0];
  v167.val[1].i16[1] = *(v33 + 26);
  v167.val[1].i32[1] = *(v33 + 28);
  v60 = vsubl_high_s16(v42, v170.val[0]);
  v135 = vsubl_high_s16(v169.val[0], v172.val[0]);
  v147 = vsubl_s16(*v36.i8, *v49.i8);
  v148 = v168.val[1];
  v151 = vsubl_s16(*v169.val[0].i8, *v172.val[0].i8);
  v168.val[0] = *(v20 + 2);
  v168.val[1] = *(v21 + 2);
  v149 = vsubl_s16(*v41.i8, *v173.val[0].i8);
  v136 = vsubl_high_s16(v171.val[0], v173.val[1]);
  v61 = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v167.val[0].i64[0] = *(v22 + 20);
  v62 = *(a1 + 2576);
  v63 = *(a1 + 6824);
  v152 = vsubl_s16(*v171.val[0].i8, *v173.val[1].i8);
  v132 = vsubl_high_s16(v171.val[1], v56);
  v153 = vsubl_s16(*v171.val[1].i8, *v56.i8);
  v133 = vsubl_high_s16(v169.val[1], v172.val[1]);
  v154 = vsubl_s16(*v169.val[1].i8, *v172.val[1].i8);
  v156 = v61;
  v167.val[1] = *(v62 + 2);
  v134 = vsubl_s16(v142, v140);
  v64 = *(v63 + 2);
  v65 = vsubl_high_s16(v168.val[0], v168.val[1]);
  v137 = vsubl_s16(*v168.val[0].i8, *v168.val[1].i8);
  v138 = vsubl_s16(v144, *v45.i8);
  v131 = vsubl_high_s16(v167.val[1], v64);
  v139 = vsubl_s16(*v167.val[1].i8, *v64.i8);
  v141 = vsubl_s16(*v167.val[0].i8, *(v55 + 20));
  v167.val[0] = vsubl_s16(*(v20 + 18), *(v21 + 18));
  v143 = v167.val[0];
  v145 = vsubl_s16(*(v23 + 22), *(v24 + 22));
  v66 = *(a1 + 2752);
  v67 = (v66 + 30);
  v68 = *(a1 + 2840);
  v168.val[0] = *(v68 + 2);
  v167.val[1] = vld1q_dup_s16(v67);
  v69 = vqtbl2q_s8(*(&v167 + 16), xmmword_273BC7DB0);
  v167.val[0].i64[0] = *(v68 + 18);
  v167.val[1] = vextq_s8(v168.val[0], v167.val[0], 6uLL);
  v70 = *(a1 + 6936);
  v71 = (v70 + 30);
  v72 = *(a1 + 6992);
  v169.val[1] = *(v72 + 2);
  v169.val[0] = vld1q_dup_s16(v71);
  v73 = vqtbl2q_s8(v169, xmmword_273BC7DB0);
  v168.val[0].i64[0] = *(v72 + 18);
  v168.val[1] = vextq_s8(v169.val[1], v168.val[0], 6uLL);
  v74 = (v62 + 26);
  v169.val[0] = vld1q_dup_f32(v74);
  v169.val[0].i16[6] = *(v62 + 30);
  v75 = *(a1 + 2664);
  v169.val[0].i16[7] = *(v75 + 2);
  v76 = (v63 + 26);
  v77 = *(a1 + 6880);
  v169.val[1] = vld1q_dup_f32(v76);
  v169.val[1].i16[6] = *(v63 + 30);
  v169.val[1].i16[7] = *(v77 + 2);
  v169.val[0] = vsubl_high_s16(v169.val[0], v169.val[1]);
  v130 = v169.val[0];
  v169.val[0].i32[2] = *(v75 + 28);
  v169.val[0].i32[3] = *(v66 + 2);
  v27.i32[2] = *(v77 + 28);
  v78 = vsubl_high_s16(v69, v73);
  v27.i32[3] = *(v70 + 2);
  v129 = vsubl_high_s16(v169.val[0], v27);
  v79 = *(a1 + 2928);
  v80 = *(a1 + 7048);
  v169.val[0] = *(v79 + 2);
  v81 = *(v80 + 2);
  v27.i64[0] = vdupq_laneq_s64(v169.val[0], 1).u64[0];
  v35.i64[0] = vdupq_laneq_s64(v81, 1).u64[0];
  v170.val[1] = vsubl_s16(*v27.i8, *v35.i8);
  v27.i64[1] = *(v79 + 18);
  v35.i64[1] = *(v80 + 18);
  v82 = vsubl_high_s16(v27, v35);
  v169.val[1] = vextq_s8(*(v66 + 2), v167.val[0], 4uLL);
  v83 = vextq_s8(*(v70 + 2), v167.val[0], 4uLL);
  v170.val[0] = vsubl_s16(*v169.val[1].i8, *v83.i8);
  v169.val[1].i32[3] = *(v66 + 18);
  v83.i32[3] = *(v70 + 18);
  v84 = vsubl_high_s16(v169.val[1], v83);
  v85 = vsubl_high_s16(v167.val[1], v168.val[1]);
  v86 = vsubl_s16(*v167.val[1].i8, *v168.val[1].i8);
  v167.val[0].i16[0] = vdup_lane_s16(*v167.val[0].i8, 3).u16[0];
  v167.val[0].i16[1] = *(v68 + 26);
  v167.val[0].i32[1] = *(v68 + 28);
  v167.val[1].i16[0] = vdup_lane_s16(*v168.val[0].i8, 3).u16[0];
  v167.val[1].i16[1] = *(v72 + 26);
  v167.val[1].i32[1] = *(v72 + 28);
  v87 = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v88 = vsubl_s16(*v169.val[0].i8, *v81.i8);
  v167.val[0] = *(v75 + 4);
  v167.val[1] = *(v77 + 4);
  v172.val[0] = vsubl_high_s16(v167.val[0], v167.val[1]);
  v173.val[1] = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v89 = vsubl_s16(*(v62 + 18), *(v63 + 18));
  v172.val[1] = vsubl_s16(*(v66 + 22), *(v70 + 22));
  v167.val[0].i64[0] = *(v75 + 20);
  v167.val[1].i64[0] = *(v77 + 20);
  v173.val[0] = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v90 = *(a1 + 3192);
  v91 = *(a1 + 3104);
  v167.val[0].i16[0] = *(v91 + 30);
  v167.val[0].i16[1] = *(v90 + 2);
  v167.val[1].i32[0] = *(v90 + 4);
  *v167.val[0].i8 = vzip1_s32(*v167.val[0].i8, *v167.val[1].i8);
  v92 = *(a1 + 7216);
  v93 = *(a1 + 7160);
  v167.val[1].i16[0] = *(v93 + 30);
  v167.val[1].i16[1] = *(v92 + 2);
  v168.val[0].i32[0] = *(v92 + 4);
  v171.val[1] = vsubl_s16(*v167.val[0].i8, vzip1_s32(*v167.val[1].i8, *v168.val[0].i8));
  v171.val[0] = vsubl_s16(*(v90 + 8), *(v92 + 8));
  v167.val[0] = *(v90 + 16);
  v167.val[1] = *(v92 + 16);
  v94 = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v95 = vsubl_high_s16(v167.val[0], v167.val[1]);
  v96 = *(a1 + 3016);
  v97 = *(a1 + 7104);
  v167.val[0].i32[0] = *(v79 + 26);
  v167.val[0].i16[2] = *(v79 + 30);
  v167.val[0].i16[3] = *(v96 + 2);
  v167.val[1].i32[0] = *(v80 + 26);
  v167.val[1].i16[2] = *(v80 + 30);
  v167.val[1].i16[3] = *(v97 + 2);
  v98 = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v167.val[0].i32[0] = *(v96 + 28);
  v167.val[1] = *(v91 + 2);
  v167.val[0] = vextq_s8(vextq_s8(v167.val[0], v167.val[0], 4uLL), v167.val[1], 0xCuLL);
  v168.val[0].i32[0] = *(v97 + 28);
  v168.val[1] = *(v93 + 2);
  v168.val[0] = vextq_s8(vextq_s8(v168.val[0], v168.val[0], 4uLL), v168.val[1], 0xCuLL);
  v169.val[1] = vsubl_s16(*v167.val[0].i8, *v168.val[0].i8);
  v99 = vsubl_high_s16(v167.val[0], v168.val[0]);
  v167.val[0].i32[0] = vdupq_laneq_s32(v167.val[1], 3).u32[0];
  v167.val[0].i32[1] = *(v91 + 18);
  v167.val[1].i32[0] = vdupq_laneq_s32(v168.val[1], 3).u32[0];
  v167.val[1].i32[1] = *(v93 + 18);
  v169.val[0] = vsubl_s16(*v167.val[0].i8, *v167.val[1].i8);
  v167.val[0].i64[1] = *(v91 + 22);
  v167.val[1].i64[1] = *(v93 + 22);
  v100 = vsubl_high_s16(v167.val[0], v167.val[1]);
  v168.val[1] = vsubl_s16(*(v96 + 4), *(v97 + 4));
  v167.val[1] = *(v96 + 12);
  v167.val[0] = *(v97 + 12);
  v168.val[0] = vsubl_s16(*v167.val[1].i8, *v167.val[0].i8);
  v167.val[1] = vsubl_high_s16(v167.val[1], v167.val[0]);
  LODWORD(v91) = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v138, v138), v137, v137), vmlaq_s32(vmulq_s32(v149, v149), v161, v161)), vaddq_s32(vmlaq_s32(vmulq_s32(v147, v147), v159, v159), vmlaq_s32(vmulq_s32(v158, v158), v151, v151))), vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v154, v154), v143, v143), vmlaq_s32(vmulq_s32(v153, v153), v145, v145)), vaddq_s32(vmlaq_s32(vmulq_s32(v152, v152), v141, v141), vmlaq_s32(vmulq_s32(v139, v139), v156, v156)))), vaddq_s32(vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v172.val[1], v172.val[1]), v89, v89), vaddq_s32(vmlaq_s32(vmulq_s32(v86, v86), v173.val[1], v173.val[1]), vmlaq_s32(vmulq_s32(v170.val[1], v170.val[1]), v170.val[0], v170.val[0]))), vmlaq_s32(vmulq_s32(v87, v87), v173.val[0], v173.val[0])), vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v78, v78), v130, v130), vmlaq_s32(vmulq_s32(v88, v88), v129, v129)), vaddq_s32(vmlaq_s32(vmulq_s32(v85, v85), v172.val[0], v172.val[0]), vmlaq_s32(vmulq_s32(v82, v82), v84, v84))))), vaddq_s32(vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v160, v160), v65, v65), vmlaq_s32(vmulq_s32(v57, v57), v59, v59)), vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v133, v133), v148, v148), vmlaq_s32(vmulq_s32(v132, v132), v150, v150)), vaddq_s32(vmlaq_s32(vmulq_s32(v136, v136), v60, v60), vmlaq_s32(vmulq_s32(v131, v131), v134, v134)))), vaddq_s32(vmlaq_s32(vmulq_s32(v58, v58), v157, v157), vmlaq_s32(vmulq_s32(v146, v146), v135, v135)))), vaddq_s32(vaddq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v169.val[1], v169.val[1]), v98, v98), vmlaq_s32(vmulq_s32(v169.val[0], v169.val[0]), v168.val[0], v168.val[0])), vaddq_s32(vmlaq_s32(vmulq_s32(v99, v99), v168.val[1], v168.val[1]), vmlaq_s32(vmulq_s32(v100, v100), v167.val[1], v167.val[1]))), vaddq_s32(vmlaq_s32(vmulq_s32(v94, v94), v171.val[1], v171.val[1]), vmlaq_s32(vmulq_s32(v95, v95), v171.val[0], v171.val[0])))));
  v101 = *(a1 + 3984);
  v102 = *(a1 + 7720);
  v167.val[1] = *(v101 + 16);
  v168.val[1] = *(v102 + 16);
  v103 = vsubl_high_s16(*v101, *v102);
  v167.val[0] = vsubl_s16(*v101, *v102);
  v168.val[0] = vsubl_high_s16(v167.val[1], v168.val[1]);
  v167.val[1] = vsubl_s16(*v167.val[1].i8, *v168.val[1].i8);
  *a3 = (vaddvq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v167.val[1], v167.val[1]), v167.val[0], v167.val[0]), vmlaq_s32(vmulq_s32(v168.val[0], v168.val[0]), v103, v103))) + 4 * v91) >> 4;
  v104 = *(a1 + 8176);
  v165 = *v104;
  v166 = *(v104 + 8);
  v105 = *(a1 + 8184);
  v163 = *v105;
  v164 = *(v105 + 8);
  v106 = *(a1 + 8744);
  result = 0x2000;
  do
  {
    v110 = a1 + 6368 + 56 * v18;
    v111 = vp8_block2above[v18];
    v112 = vp8_block2left[v18];
    v109 = **(v110 + 40);
    v113 = *(&v163 + v112) + *(&v165 + v111);
    if (v109 < 2)
    {
      v108 = 0;
      LODWORD(v109) = 1u;
LABEL_3:
      v108 += *(v106 + 144 * vp8_coef_bands[v109] + 48 * v113 + 44);
      goto LABEL_4;
    }

    v108 = 0;
    v114 = *v110;
    v115 = &byte_273BC5541;
    v116 = &dword_273BC5564;
    v117 = v109 - 1;
    do
    {
      v118 = *v116++;
      v119 = *(v114 + 2 * v118);
      v120 = dct_value_tokens[2 * v119 + 4096];
      LODWORD(v118) = *v115++;
      v108 += *(v106 + 144 * v118 + 48 * v113 + 4 * v120) + dct_value_cost[v119 + 2048];
      v113 = vp8_prev_token_class[v120];
      --v117;
    }

    while (v117);
    if (v109 <= 0xF)
    {
      goto LABEL_3;
    }

LABEL_4:
    *(&v163 + v112) = v109 != 1;
    *(&v165 + v111) = v109 != 1;
    v19 += v108;
    ++v18;
  }

  while (v18 != 16);
  v121 = **(a1 + 7752);
  v122 = v164 + v166;
  if (v121 < 1)
  {
    v121 = 0;
    v123 = 0;
LABEL_16:
    v123 += *(v106 + 144 * vp8_coef_bands[v121] + 48 * v122 + 1196);
    goto LABEL_17;
  }

  v123 = 0;
  result = vp8_coef_bands;
  v124 = vp8_default_zig_zag1d;
  v125 = **(a1 + 7752);
  do
  {
    v126 = *v124++;
    v127 = *(*(a1 + 7712) + 2 * v126);
    v128 = dct_value_tokens[2 * v127 + 4096];
    LODWORD(v126) = *result++;
    v123 += *(v106 + 144 * v126 + 48 * v122 + 4 * v128 + 1152) + dct_value_cost[v127 + 2048];
    v122 = vp8_prev_token_class[v128];
    --v125;
  }

  while (v125);
  if (v121 <= 0xF)
  {
    goto LABEL_16;
  }

LABEL_17:
  *a2 = v123 + v19;
  return result;
}

uint64_t evaluate_inter_mode_rd(int *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8096);
  v11 = *v10;
  v12 = *(v10 + 2);
  LODWORD(v10) = *(v10 + 3);
  v13 = *(a5 + 7792);
  v14 = (*(a5 + 7832) + v13 * (v12 >> 3) + (v10 >> 3));
  if (((v10 | v12) & 7) != 0)
  {
    (*(a5 + 8272))(v14);
    if (!*(a4 + 143088))
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a5 + 4224) = *v14;
    *(a5 + 4240) = *(v14 + v13);
    v15 = (v14 + v13 + v13);
    *(a5 + 4256) = *v15;
    v16 = (v15 + v13);
    *(a5 + 4272) = *v16;
    v17 = (v16 + v13);
    *(a5 + 4288) = *v17;
    v18 = (v17 + v13);
    *(a5 + 4304) = *v18;
    v19 = (v18 + v13);
    *(a5 + 4320) = *v19;
    v20 = (v19 + v13);
    *(a5 + 4336) = *v20;
    v21 = (v20 + v13);
    *(a5 + 4352) = *v21;
    v22 = (v21 + v13);
    *(a5 + 4368) = *v22;
    v23 = (v22 + v13);
    *(a5 + 4384) = *v23;
    v24 = (v23 + v13);
    *(a5 + 4400) = *v24;
    v25 = (v24 + v13);
    *(a5 + 4416) = *v25;
    v26 = (v25 + v13);
    *(a5 + 4432) = *v26;
    v27 = (v26 + v13);
    *(a5 + 4448) = *v27;
    *(a5 + 4464) = *(v27 + v13);
    if (!*(a4 + 143088))
    {
      goto LABEL_6;
    }
  }

  if (!**(a5 + 8784))
  {
    *(a5 + 8768) = 1;
    goto LABEL_17;
  }

LABEL_6:
  v28 = *(a5 + 8772);
  if (v28)
  {
    v64 = 0;
    v29 = *(*(a5 + 6392) + 2);
    v30 = (v29 * v29) >> 4;
    v31 = v30 <= v28 ? v28 : v30;
    v32 = vpx_variance16x16(**(a5 + 1936), *(a5 + 1948), a5 + 4224, 16, &v64);
    if (v64 < v31 && (v64 - v32 < (**(a5 + 7736) * **(a5 + 7736)) >> 4 || v32 < v64 >> 1 && v64 - v32 <= 0x3F))
    {
      v33 = VP8_UVSSE(a5);
      if (v31 > 2 * v33)
      {
        *(a5 + 8768) = 1;
        *a2 = 500;
        v34 = v64 + v33;
        a2[2] = 0;
        a2[3] = v34;
        a2[4] = v33;
        *a3 = 1;
        return (a2[3] * *(a5 + 8644) + ((*(a5 + 8648) * *a2 + 128) >> 8));
      }
    }
  }

LABEL_17:
  v36 = 0;
  v37 = 0;
  v38 = a1[1];
  v66[0] = vp8_mode_contexts[4 * *a1];
  v66[1] = vp8_mode_contexts[4 * v38 + 1];
  v39 = a1[3];
  v66[2] = vp8_mode_contexts[4 * a1[2] + 2];
  v66[3] = vp8_mode_contexts[4 * v39 + 3];
  v40 = (&vp8_mv_ref_encoding_array + 8 * (v11 - 5));
  v41 = *v40;
  v42 = v40[1] - 1;
  do
  {
    v36 += vp8_prob_cost[(v66[v37 >> 1] ^ -((v41 >> v42) & 1))];
    v37 = vp8_mv_ref_tree[((v41 >> v42--) & 1) + v37];
  }

  while (v42 != -1);
  v65 = 0;
  *a2 += v36;
  macro_block_yrd(a5, a2 + 1, &v65);
  *a2 += a2[1];
  a2[3] += v65;
  v43 = *(a5 + 8096);
  v44 = *(a5 + 7812);
  v45 = *(a5 + 7768);
  v46 = v45 & ((((*(v43 + 4) >> 31) | 1) + *(v43 + 4)) / 2);
  v47 = v45 & ((((*(v43 + 6) >> 31) | 1) + *(v43 + 6)) / 2);
  v48 = (v46 >> 3) * v44 + (v47 >> 3);
  v49 = (*(a5 + 7840) + v48);
  v50 = (*(a5 + 7848) + v48);
  if (((v47 | v46) & 7) != 0)
  {
    (*(a5 + 8264))(v49, *(a5 + 7812), v47 & 7, v46 & 7, a5 + 4480, 8);
    (*(a5 + 8264))(v50, v44, v47 & 7, v46 & 7, a5 + 4544, 8);
  }

  else
  {
    *(a5 + 4480) = *v49;
    *(a5 + 4488) = *(v49 + v44);
    v51 = (v49 + v44 + v44);
    *(a5 + 4496) = *v51;
    v52 = (v51 + v44);
    *(a5 + 4504) = *v52;
    v53 = (v52 + v44);
    *(a5 + 4512) = *v53;
    v54 = (v53 + v44);
    *(a5 + 4520) = *v54;
    v55 = (v54 + v44);
    *(a5 + 4528) = *v55;
    *(a5 + 4536) = *(v55 + v44);
    *(a5 + 4544) = *v50;
    *(a5 + 4552) = *(v50 + v44);
    v56 = (v50 + v44 + v44);
    *(a5 + 4560) = *v56;
    v57 = (v56 + v44);
    *(a5 + 4568) = *v57;
    v58 = (v57 + v44);
    *(a5 + 4576) = *v58;
    v59 = (v58 + v44);
    *(a5 + 4584) = *v59;
    v60 = (v59 + v44);
    *(a5 + 4592) = *v60;
    *(a5 + 4600) = *(v60 + v44);
  }

  v61 = *(a5 + 4136);
  v62 = *(a5 + 4100);
  vpx_subtract_block_neon(8, 8, (a5 + 512), 8, *(a5 + 4128), v62, (a5 + 4480), 8);
  vpx_subtract_block_neon(8, 8, (a5 + 640), 8, v61, v62, (a5 + 4544), 8);
  (*(a5 + 34264))(*(a5 + 3272), *(a5 + 3280), 16);
  (*(a5 + 34264))(*(a5 + 3448), *(a5 + 3456), 16);
  (*(a5 + 34264))(*(a5 + 3624), *(a5 + 3632), 16);
  (*(a5 + 34264))(*(a5 + 3800), *(a5 + 3808), 16);
  (*(a5 + 34280))(a5 + 3272, a5 + 7264);
  (*(a5 + 34280))(a5 + 3360, a5 + 7320);
  (*(a5 + 34280))(a5 + 3448, a5 + 7376);
  (*(a5 + 34280))(a5 + 3536, a5 + 7432);
  (*(a5 + 34280))(a5 + 3624, a5 + 7488);
  (*(a5 + 34280))(a5 + 3712, a5 + 7544);
  (*(a5 + 34280))(a5 + 3800, a5 + 7600);
  (*(a5 + 34280))(a5 + 3888, a5 + 7656);
  LODWORD(v61) = rd_cost_mbuv(a5);
  a2[2] = v61;
  v63 = vp8_mbuverror_c(a5);
  *a2 += v61;
  a2[3] += v63 / 4;
  a2[4] = v63 / 4;
  return 0x7FFFFFFFLL;
}

uint64_t calculate_final_rd_costs(uint64_t a1, int *a2, unsigned int *a3, int a4, int a5, int a6, uint64_t a7, int8x8_t *a8)
{
  v8 = a8[1012];
  v9 = *v8;
  if (*(a7 + 111088))
  {
    v10 = *a3 + vp8_prob_cost[*(a7 + 142832)];
    *a3 = v10;
    v11 = *a2 + v10;
    *a2 = v11;
    v12 = v8[2];
    v13 = a8[1075].i32[v12] + v11;
    *a2 = v13;
    if (a4)
    {
      return result;
    }
  }

  else
  {
    v12 = v8[2];
    v13 = a8[1075].i32[v12] + *a2;
    *a2 = v13;
    if (a4)
    {
      return result;
    }
  }

  if (*(a7 + 111088))
  {
    v14 = v9 != 9;
    if (v9 == 4)
    {
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v15 = v9 == 9;
    }

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = a8[779].i8[0];
    }

    if (a8[776].i8[0] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[1] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[2] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[3] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[4] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[5] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[6] > v14)
    {
      ++v16;
    }

    if (a8[776].i8[7] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[0] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[1] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[2] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[3] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[4] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[5] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[6] > v14)
    {
      ++v16;
    }

    if (a8[777].i8[7] <= v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    if (v12)
    {
      if (!(vaddlvq_s16(vmovl_s8(a8[778])) + v17))
      {
LABEL_49:
        v13 -= a2[1] + a2[2];
        *a2 = v13;
        a2[2] = 0;
        v18 = *(a7 + 142832);
        if (v18)
        {
          v19 = vp8_prob_cost[255 - v18] - vp8_prob_cost[v18];
          *a2 = v19 + v13;
          *a3 += v19;
          v13 = *a2;
        }
      }
    }

    else if (!(v17 + a5))
    {
      goto LABEL_49;
    }
  }

  v20 = a2[3] * a8[1080].i32[1] + ((a8[1081].i32[0] * v13 + 128) >> 8);
  result = 0x7FFFFFFFLL;
  if (v20 != 0x7FFFFFFF)
  {
    if (v12)
    {
      a6 = 0;
    }

    return (v20 + a6);
  }

  return result;
}

uint64_t vp8_rd_pick_intra_mode(uint64_t a1, _DWORD *a2)
{
  v21 = 0;
  *(*(a1 + 8096) + 2) = 0;
  rd_pick_intra_mbuv_mode(a1, &v21, &v19, &v20);
  v4 = v21;
  v22 = 0;
  **(a1 + 8096) = 0;
  vp8_build_intra_predictors_mby_s(a1 + 4224, *(a1 + 7992) - *(a1 + 7952), (*(a1 + 7992) - 1), *(a1 + 7952), a1 + 4224, 16);
  macro_block_yrd(a1, &v22 + 1, &v22);
  v5 = *(a1 + 8096);
  v6 = v22 * *(a1 + 8644) + (((*(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v5) + HIDWORD(v22)) * *(a1 + 8648) + 128) >> 8);
  if (v6 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v5) + HIDWORD(v22);
  }

  if (v6 == 0x7FFFFFFF)
  {
    v8 = 10;
  }

  else
  {
    v8 = 0;
  }

  *v5 = 1;
  vp8_build_intra_predictors_mby_s(a1 + 4224, *(a1 + 7992) - *(a1 + 7952), (*(a1 + 7992) - 1), *(a1 + 7952), a1 + 4224, 16);
  macro_block_yrd(a1, &v22 + 1, &v22);
  v9 = *(a1 + 8096);
  v10 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v9) + HIDWORD(v22);
  if (v22 * *(a1 + 8644) + ((v10 * *(a1 + 8648) + 128) >> 8) < v6)
  {
    v7 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v9) + HIDWORD(v22);
    v8 = 1;
    v6 = v22 * *(a1 + 8644) + ((v10 * *(a1 + 8648) + 128) >> 8);
  }

  *v9 = 2;
  vp8_build_intra_predictors_mby_s(a1 + 4224, *(a1 + 7992) - *(a1 + 7952), (*(a1 + 7992) - 1), *(a1 + 7952), a1 + 4224, 16);
  macro_block_yrd(a1, &v22 + 1, &v22);
  v11 = *(a1 + 8096);
  v12 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v11) + HIDWORD(v22);
  if (v22 * *(a1 + 8644) + ((v12 * *(a1 + 8648) + 128) >> 8) < v6)
  {
    v7 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v11) + HIDWORD(v22);
    v8 = 2;
    v6 = v22 * *(a1 + 8644) + ((v12 * *(a1 + 8648) + 128) >> 8);
  }

  *v11 = 3;
  vp8_build_intra_predictors_mby_s(a1 + 4224, *(a1 + 7992) - *(a1 + 7952), (*(a1 + 7992) - 1), *(a1 + 7952), a1 + 4224, 16);
  macro_block_yrd(a1, &v22 + 1, &v22);
  v13 = *(a1 + 8096);
  v14 = v22 * *(a1 + 8644) + (((*(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v13) + HIDWORD(v22)) * *(a1 + 8648) + 128) >> 8);
  if (v14 >= v6)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v13) + HIDWORD(v22);
  }

  if (v14 >= v6)
  {
    v16 = v8;
  }

  else
  {
    v16 = 3;
  }

  if (v14 >= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v22 * *(a1 + 8644) + (((*(*(a1 + 8712) + 40 * *(a1 + 8108) + 4 * *v13) + HIDWORD(v22)) * *(a1 + 8648) + 128) >> 8);
  }

  *v13 = v16;
  result = rd_pick_intra4x4mby_modes(a1, &v21 + 1, &v22, &v22 + 1, v17);
  if (result < v17)
  {
    **(a1 + 8096) = 4;
    v15 = HIDWORD(v21);
  }

  *a2 = v15 + v4;
  return result;
}

uint64_t rd_cost_mbuv(uint64_t a1)
{
  v1 = *(a1 + 8176);
  v2 = v1[5];
  v3 = *(a1 + 8184);
  v4 = **(a1 + 7304);
  v5 = v3[4] + v1[4];
  v6 = *(a1 + 8744);
  if (v4 < 1)
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  v8 = vp8_coef_bands;
  v9 = vp8_default_zig_zag1d;
  v10 = **(a1 + 7304);
  do
  {
    v11 = *v9++;
    v12 = *(*(a1 + 7264) + 2 * v11);
    v13 = dct_value_tokens[2 * v12 + 4096];
    LODWORD(v11) = *v8++;
    v7 += *(v6 + 144 * v11 + 48 * v5 + 4 * v13 + 2304) + dct_value_cost[v12 + 2048];
    v5 = vp8_prev_token_class[v13];
    --v10;
  }

  while (v10);
  if (v4 <= 0xF)
  {
LABEL_8:
    v7 += *(v6 + 144 * vp8_coef_bands[v4] + 48 * v5 + 2348);
    v14 = v4 != 0;
    v15 = v3[5];
    v16 = **(a1 + 7360);
    v17 = v14 + v2;
    if (v16 < 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v14 = 1;
  v15 = v3[5];
  v16 = **(a1 + 7360);
  v17 = v2 + 1;
  if (v16 < 1)
  {
LABEL_6:
    LODWORD(v16) = 0;
    v18 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v18 = 0;
  v19 = vp8_coef_bands;
  v20 = vp8_default_zig_zag1d;
  v21 = v16;
  do
  {
    v22 = *v20++;
    v23 = *(*(a1 + 7320) + 2 * v22);
    v24 = dct_value_tokens[2 * v23 + 4096];
    LODWORD(v22) = *v19++;
    v18 += *(v6 + 144 * v22 + 48 * v17 + 4 * v24 + 2304) + dct_value_cost[v23 + 2048];
    v17 = vp8_prev_token_class[v24];
    --v21;
  }

  while (v21);
  if (v16 > 0xF)
  {
    v25 = 1;
    v26 = **(a1 + 7416);
    v27 = v14 + v15;
    if (v26 >= 1)
    {
      goto LABEL_13;
    }

LABEL_18:
    LODWORD(v26) = 0;
    v28 = 0;
    goto LABEL_19;
  }

LABEL_12:
  v18 += *(v6 + 144 * vp8_coef_bands[v16] + 48 * v17 + 2348);
  v25 = v16 != 0;
  v26 = **(a1 + 7416);
  v27 = v14 + v15;
  if (v26 < 1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v28 = 0;
  v29 = vp8_coef_bands;
  v30 = vp8_default_zig_zag1d;
  v31 = v26;
  do
  {
    v32 = *v30++;
    v33 = *(*(a1 + 7376) + 2 * v32);
    v34 = dct_value_tokens[2 * v33 + 4096];
    LODWORD(v32) = *v29++;
    v28 += *(v6 + 144 * v32 + 48 * v27 + 4 * v34 + 2304) + dct_value_cost[v33 + 2048];
    v27 = vp8_prev_token_class[v34];
    --v31;
  }

  while (v31);
  if (v26 > 0xF)
  {
    v35 = 1;
    goto LABEL_20;
  }

LABEL_19:
  v28 += *(v6 + 144 * vp8_coef_bands[v26] + 48 * v27 + 2348);
  v35 = v26 != 0;
LABEL_20:
  v36 = v1[6];
  v37 = v3[6];
  v38 = **(a1 + 7472);
  v39 = v35 + v25;
  if (v38 < 1)
  {
    v38 = 0;
    v40 = 0;
    goto LABEL_31;
  }

  v40 = 0;
  v41 = vp8_coef_bands;
  v42 = vp8_default_zig_zag1d;
  v43 = **(a1 + 7472);
  do
  {
    v44 = *v42++;
    v45 = *(*(a1 + 7432) + 2 * v44);
    v46 = dct_value_tokens[2 * v45 + 4096];
    LODWORD(v44) = *v41++;
    v40 += *(v6 + 144 * v44 + 48 * v39 + 4 * v46 + 2304) + dct_value_cost[v45 + 2048];
    v39 = vp8_prev_token_class[v46];
    --v43;
  }

  while (v43);
  if (v38 <= 0xF)
  {
LABEL_31:
    v40 += *(v6 + 144 * vp8_coef_bands[v38] + 48 * v39 + 2348);
    v47 = v1[7];
    v48 = **(a1 + 7528);
    v49 = v37 + v36;
    if (v48 >= 1)
    {
      goto LABEL_25;
    }

LABEL_32:
    LODWORD(v48) = 0;
    v50 = 0;
    goto LABEL_33;
  }

  v47 = v1[7];
  v48 = **(a1 + 7528);
  v49 = v37 + v36;
  if (v48 < 1)
  {
    goto LABEL_32;
  }

LABEL_25:
  v50 = 0;
  v51 = vp8_coef_bands;
  v52 = vp8_default_zig_zag1d;
  v53 = v48;
  do
  {
    v54 = *v52++;
    v55 = *(*(a1 + 7488) + 2 * v54);
    v56 = dct_value_tokens[2 * v55 + 4096];
    LODWORD(v54) = *v51++;
    v50 += *(v6 + 144 * v54 + 48 * v49 + 4 * v56 + 2304) + dct_value_cost[v55 + 2048];
    v49 = vp8_prev_token_class[v56];
    --v53;
  }

  while (v53);
  if (v48 <= 0xF)
  {
LABEL_33:
    v50 += *(v6 + 144 * vp8_coef_bands[v48] + 48 * v49 + 2348);
    v57 = v48 != 0;
    v58 = v3[7];
    v59 = **(a1 + 7584);
    v60 = v57 + v47;
    if (v59 < 1)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v57 = 1;
  v58 = v3[7];
  v59 = **(a1 + 7584);
  v60 = v47 + 1;
  if (v59 < 1)
  {
LABEL_29:
    LODWORD(v59) = 0;
    v61 = 0;
    goto LABEL_37;
  }

LABEL_34:
  v61 = 0;
  v62 = vp8_coef_bands;
  v63 = vp8_default_zig_zag1d;
  v64 = v59;
  do
  {
    v65 = *v63++;
    v66 = *(*(a1 + 7544) + 2 * v65);
    v67 = dct_value_tokens[2 * v66 + 4096];
    LODWORD(v65) = *v62++;
    v61 += *(v6 + 144 * v65 + 48 * v60 + 4 * v67 + 2304) + dct_value_cost[v66 + 2048];
    v60 = vp8_prev_token_class[v67];
    --v64;
  }

  while (v64);
  if (v59 > 0xF)
  {
    v68 = 1;
    v69 = **(a1 + 7640);
    v70 = v57 + v58;
    if (v69 >= 1)
    {
      goto LABEL_38;
    }

LABEL_44:
    LODWORD(v69) = 0;
    v71 = 0;
    goto LABEL_45;
  }

LABEL_37:
  v61 += *(v6 + 144 * vp8_coef_bands[v59] + 48 * v60 + 2348);
  v68 = v59 != 0;
  v69 = **(a1 + 7640);
  v70 = v57 + v58;
  if (v69 < 1)
  {
    goto LABEL_44;
  }

LABEL_38:
  v71 = 0;
  v72 = vp8_coef_bands;
  v73 = vp8_default_zig_zag1d;
  v74 = v69;
  do
  {
    v75 = *v73++;
    v76 = *(*(a1 + 7600) + 2 * v75);
    v77 = dct_value_tokens[2 * v76 + 4096];
    LODWORD(v75) = *v72++;
    v71 += *(v6 + 144 * v75 + 48 * v70 + 4 * v77 + 2304) + dct_value_cost[v76 + 2048];
    v70 = vp8_prev_token_class[v77];
    --v74;
  }

  while (v74);
  if (v69 <= 0xF)
  {
LABEL_45:
    v71 += *(v6 + 144 * vp8_coef_bands[v69] + 48 * v70 + 2348);
    v81 = v69 != 0;
    v78 = **(a1 + 7696);
    v79 = v81 + v68;
    if (v78 < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v78 = **(a1 + 7696);
  v79 = v68 + 1;
  if (v78 < 1)
  {
LABEL_42:
    LODWORD(v78) = 0;
    v80 = 0;
LABEL_49:
    v80 += *(v6 + 144 * vp8_coef_bands[v78] + 48 * v79 + 2348);
    return (v18 + v7 + v28 + v40 + v50 + v61 + v71 + v80);
  }

LABEL_46:
  v80 = 0;
  v82 = *(a1 + 7656);
  v83 = vp8_coef_bands;
  v84 = vp8_default_zig_zag1d;
  v85 = v78;
  do
  {
    v86 = *v84++;
    v87 = *(v82 + 2 * v86);
    v88 = dct_value_tokens[2 * v87 + 4096];
    LODWORD(v86) = *v83++;
    v80 += *(v6 + 144 * v86 + 48 * v79 + 4 * v88 + 2304) + dct_value_cost[v87 + 2048];
    v79 = vp8_prev_token_class[v88];
    --v85;
  }

  while (v85);
  if (v78 <= 0xF)
  {
    goto LABEL_49;
  }

  return (v18 + v7 + v28 + v40 + v50 + v61 + v71 + v80);
}

uint64_t rd_check_segment(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v6 = 0;
  v7 = 0;
  v224[2] = *MEMORY[0x277D85DE8];
  v199 = a2 + 34256;
  v170 = (a2 + 6208);
  v197 = a1 + 142796;
  v8 = *(a2 + 8176);
  v220 = *v8;
  v221 = *(v8 + 8);
  v9 = *(a2 + 8184);
  v218 = *v9;
  v219 = *(v9 + 8);
  v216 = 0;
  v217 = 0;
  v214 = 0;
  v215 = 0;
  v184 = a4;
  v171 = vp8_mbsplit_count[a4];
  v10 = (&vp8_mbsplit_encodings + 8 * a4);
  v11 = *v10;
  v12 = v10[1] - 1;
  do
  {
    v6 += vp8_prob_cost[(vp8_mbsplit_probs[v7 >> 1] ^ -((v11 >> v12) & 1))];
    v7 = vp8_mbsplit_tree[((v11 >> v12--) & 1) + v7];
  }

  while (v12 != -1);
  v13 = 0;
  v176 = 0;
  v177 = 0;
  v173 = 0;
  v14 = a1 + 32 * a4 + 143496;
  v15 = *(a3 + 184);
  v16 = (&vp8_mbsplits + 64 * a4);
  v191 = *(a3 + 176) / v171;
  v17 = vp8_prob_cost[~LOBYTE(vp8_mode_contexts[4 * v15[3] + 3])] + vp8_prob_cost[~LOBYTE(vp8_mode_contexts[4 * v15[2] + 2])] + vp8_prob_cost[~LOBYTE(vp8_mode_contexts[4 * v15[1] + 1])] + vp8_prob_cost[~LOBYTE(vp8_mode_contexts[4 * *v15])] + v6;
  v178 = (*(a2 + 8648) * v17 + 128) >> 8;
  v207 = (a2 + 8680);
  v18 = a2 + 6368;
  v182 = a3 + 208;
  v183 = a3 + 192;
  v206 = (a1 + 143488);
  v189 = a2 + 1864;
  v190 = a2 + 6192;
  v193 = (a2 + 6640);
  v192 = v16 + 4;
  result = 56;
  v188 = &vp8_mbsplit_offset + 16 * a4;
  v198 = v14;
  v194 = a2 + 6368;
  v195 = v16;
  do
  {
    v175 = v17;
    if (v13)
    {
      v20 = a4 == 3;
    }

    else
    {
      v20 = 0;
    }

    v21 = v13 == 8 || (v13 & 0x7FFFFFF7) == 4;
    v22 = v21;
    v180 = v22;
    v181 = 0;
    v174 = (v18 + 56 * v13 - 176);
    v224[0] = 0;
    v223 = 0u;
    memset(v222, 0, sizeof(v222));
    v179 = v18 + 56 * (v13 - 1);
    if (a4)
    {
      v23 = 0;
    }

    else
    {
      v23 = v13 == 1;
    }

    v24 = v23;
    v185 = v24;
    v186 = v20;
    v196 = 0x7FFFFFFF;
    v25 = 10;
    v26 = 12;
    do
    {
      v212 = v220;
      v213 = v221;
      v210 = v218;
      v211 = v219;
      v205 = v26;
      v202 = v25;
      if (v25 != 13)
      {
        v28 = 0;
        v29 = v25;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = v222 + 4 * v29;
        v35 = *v4;
        v36 = *(a2 + 8096);
        v37 = (v36 - 76 * *(a2 + 8104));
        v38 = v190;
        do
        {
          if (v13 == v16[v30])
          {
            if ((v31 & 3) != 0 && v13 == v16[v30 - 1])
            {
              LODWORD(v39) = 10;
            }

            else if (v31 >= 4 && v13 == v16[v30 - 4])
            {
              LODWORD(v39) = 11;
            }

            else
            {
              if (v29 > 0xBuLL)
              {
                if (v29 == 12)
                {
                  *v34 = 0;
                  v39 = 12;
                }

                else
                {
                  v39 = v29;
                  if (v29 == 13)
                  {
                    v44 = (*v34 - *v35) >> 1;
                    if (v44 >= 2047)
                    {
                      v44 = 2047;
                    }

                    v45 = v44 & ~(v44 >> 31);
                    v46 = (*(v34 + 1) - v35[1]) >> 1;
                    if (v46 >= 2047)
                    {
                      v46 = 2047;
                    }

                    v32 = (102 * (*(*(a2 + 8688) + 4 * (v46 & ~(v46 >> 31))) + *(*(a2 + 8680) + 4 * v45))) >> 7;
                    v39 = 13;
                  }
                }
              }

              else if (v29 == 10)
              {
                if ((v31 & 3) != 0)
                {
                  v47 = v38 + 42;
                }

                else if (*(v36 - 76) == 9)
                {
                  v47 = (v36 + v30 * 4 - 52);
                }

                else
                {
                  v47 = (v36 - 72);
                }

                *v34 = *v47;
                v39 = 10;
              }

              else if (v29 == 11)
              {
                v41 = v38;
                if (v31 <= 3)
                {
                  if (*v37 == 9)
                  {
                    v41 = &v37[v30 * 4 + 60];
                  }

                  else
                  {
                    v41 = (v37 + 4);
                  }
                }

                v42 = *v41;
                *v34 = v42;
                if ((v31 & 3) != 0)
                {
                  v43 = v38 + 42;
                }

                else if (*(v36 - 76) == 9)
                {
                  v43 = (v36 + v30 * 4 - 52);
                }

                else
                {
                  v43 = (v36 - 72);
                }

                if (*v43 == v42)
                {
                  v39 = 10;
                }

                else
                {
                  v39 = 11;
                }
              }

              else
              {
                v39 = v29;
              }

              v33 = *(*(a2 + 8736) + 4 * v39);
            }

            v38[56] = *v34;
            v40 = *(a2 + 8576) + v28;
            *(v40 + 4) = v39;
            *(v40 + 8) = *v34;
          }

          ++v31;
          ++v30;
          v28 += 8;
          v38 += 14;
        }

        while (v30 != 16);
        v201 = v33 + v32;
        result = 56;
        v48 = *v34 >> 3;
        if (*(a2 + 8760) > v48)
        {
          goto LABEL_20;
        }

LABEL_147:
        if (*(a2 + 8764) < v48)
        {
          goto LABEL_20;
        }

        v94 = *(v34 + 1) >> 3;
        if (*(a2 + 8752) > v94 || *(a2 + 8756) < v94)
        {
          goto LABEL_20;
        }

        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = *(a2 + 7792);
        v200 = *(a2 + 7832);
        v99 = v16;
        v100 = 6368;
        do
        {
          v110 = *v99++;
          if (v13 == v110)
          {
            v111 = *(a2 + v96 + 6384);
            v112 = *(a2 + v96 + 6416);
            v113 = *(a2 + v96 + 6418);
            v114 = (v200 + *(a2 + v96 + 6400) + v98 * (v112 >> 3) + (v113 >> 3));
            v203 = v97;
            if (((v112 | v113) & 7) != 0)
            {
              (*(a2 + 8248))(v114, v98, v113 & 7, v112 & 7, v111, 16);
            }

            else
            {
              *v111 = *v114;
              v111[1] = v114[1];
              v111[2] = v114[2];
              v111[3] = v114[3];
              v111[16] = v114[v98];
              v111[17] = v114[v98 + 1];
              v111[18] = v114[v98 + 2];
              v111[19] = v114[v98 + 3];
              v115 = &v114[v98 + v98];
              v111[32] = *v115;
              v111[33] = v115[1];
              v111[34] = v115[2];
              v111[35] = v115[3];
              v116 = &v115[v98];
              v111[48] = *v116;
              v111[49] = v116[1];
              v111[50] = v116[2];
              v111[51] = v116[3];
            }

            v101 = (a2 + v95 + 1864);
            vpx_subtract_block_neon(4, 4, *v101, 16, (**(a2 + v95 + 1936) + *(a2 + v95 + 1944)), *(a2 + v95 + 1948), *(a2 + v96 + 6384), 16);
            (*v199)(*v101, *(a2 + v95 + 1872), 32);
            (*(v199 + 24))(v101, a2 + v100);
            v102 = *(a2 + v95 + 1872);
            v103 = *(a2 + v96 + 6376);
            v104 = v102[1];
            v105 = v103[1];
            v106 = vsubl_high_s16(*v102, *v103);
            v107 = vsubl_high_s16(v104, v105);
            v108 = vsubl_s16(*v102->i8, *v103->i8);
            v109 = vsubl_s16(*v104.i8, *v105.i8);
            v97 = vaddvq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v109, v109), v108, v108), vmlaq_s32(vmulq_s32(v107, v107), v106, v106))) + v203;
            v14 = v198;
          }

          v96 += 56;
          v95 += 88;
          v100 += 56;
        }

        while (v96 != 896);
        v204 = v97;
        v117 = 0;
        v118 = 0;
        v4 = a3;
        v18 = v194;
        v16 = v195;
        result = 56;
        v26 = v205;
        while (1)
        {
          if (v13 != v195[v117])
          {
            goto LABEL_161;
          }

          v122 = vp8_block2above[v117];
          v123 = v194 + 56 * v117;
          v124 = vp8_block2left[v117];
          v119 = **(v123 + 40);
          v125 = *(&v210 + v124) + *(&v212 + v122);
          v126 = *(a2 + 8744);
          if (v119 < 1)
          {
            LODWORD(v119) = 0;
            v120 = 0;
          }

          else
          {
            v120 = 0;
            v127 = *v123;
            v128 = vp8_default_zig_zag1d;
            v129 = vp8_coef_bands;
            v130 = v119;
            do
            {
              v131 = *v128++;
              v132 = *(v127 + 2 * v131);
              v133 = dct_value_tokens[2 * v132 + 4096];
              LODWORD(v131) = *v129++;
              v120 += *(v126 + 144 * v131 + 48 * v125 + 4 * v133 + 3456) + dct_value_cost[v132 + 2048];
              v125 = vp8_prev_token_class[v133];
              --v130;
            }

            while (v130);
            if (v119 > 0xF)
            {
              v121 = 1;
              v26 = v205;
              result = 56;
              goto LABEL_160;
            }

            v26 = v205;
            result = 56;
          }

          v120 += *(v126 + 144 * vp8_coef_bands[v119] + 48 * v125 + 3500);
          v121 = v119 != 0;
LABEL_160:
          *(&v210 + v124) = v121;
          *(&v212 + v122) = v121;
          v118 += v120;
LABEL_161:
          if (++v117 == 16)
          {
            v134 = *(a2 + 8644) * (v204 >> 2) + ((*(a2 + 8648) * (v118 + v201) + 128) >> 8);
            if (v134 < v196)
            {
              v216 = v212;
              v217 = v213;
              v214 = v210;
              v26 = v202;
              v215 = v211;
              LODWORD(v173) = v118 + v201;
              HIDWORD(v173) = v204 >> 2;
              v196 = v134;
              v181 = v118;
            }

            goto LABEL_20;
          }
        }
      }

      v209 = 0;
      if (v196 < v191)
      {
        break;
      }

      if (!*v197)
      {
        goto LABEL_75;
      }

      if (a4 > 1)
      {
        if (!v186)
        {
LABEL_75:
          v27 = 0;
          goto LABEL_76;
        }

        *(v4 + 2) = *(v179 + 48);
        if (v180)
        {
          *(v4 + 2) = *v174;
        }

        v27 = 2;
      }

      else
      {
        *(v4 + 2) = *(v183 + 4 * v13);
        if (v185)
        {
          *(v4 + 2) = *(v4 + 50);
        }

        v27 = *(v182 + 4 * v13);
      }

LABEL_76:
      v49 = *(a2 + 8640);
      WORD2(v208) = *(v4 + 4) >> 3;
      HIWORD(v208) = *(v4 + 5) >> 3;
      v50 = v189 + 88 * v188[v13];
      v51 = v18 + 56 * v188[v13];
      v52 = (*v206)(a2, v50, v51, &v208 + 4, v224 + 4, v27, v49, &v209 + 4, v14, v207, *v4);
      v53 = HIDWORD(v209);
      HIDWORD(v209) = 0;
      if (v53 >= 7 - v27)
      {
        v16 = v195;
        if (*v197)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v54 = (v27 + v53 + 1);
        v16 = v195;
LABEL_80:
        v55 = (*v206)(a2, v50, v51, &v208 + 4, &v209, v54, v49, &v209 + 4, v14, v207, *v4);
        if (v55 < v52)
        {
          HIDWORD(v224[0]) = v209;
          v52 = v55;
        }

        while (v54 != 7)
        {
          v54 = (v54 + 1);
          if (!HIDWORD(v209))
          {
            goto LABEL_80;
          }

          --HIDWORD(v209);
        }

        if (*v197)
        {
          goto LABEL_98;
        }
      }

      if (v52 >> segmentation_to_sseshift[v184] < 4001)
      {
        goto LABEL_98;
      }

      v56 = *(a2 + 8752);
      v57 = *(a2 + 8760);
      v58 = *(a2 + 8764);
      if (v56 <= SHIWORD(v208))
      {
        LOWORD(v56) = HIWORD(v208);
      }

      if (*(a2 + 8756) < v56)
      {
        LOWORD(v56) = *(a2 + 8756);
      }

      HIWORD(v208) = v56;
      v59 = WORD2(v208);
      if (v57 > SWORD2(v208))
      {
        v59 = v57;
      }

      if (v58 < v59)
      {
        v59 = v58;
      }

      WORD2(v208) = v59;
      if (vp8_full_search_sad(a2, v50, v51, &v208 + 2, v49, 16, v14, v207, *v4) >= v52)
      {
        *(v51 + 48) = HIDWORD(v224[0]);
LABEL_98:
        if (v52 == 0x7FFFFFFF)
        {
          goto LABEL_100;
        }

        goto LABEL_99;
      }

      HIDWORD(v224[0]) = *(v51 + 48);
LABEL_99:
      v208 = 0;
      (*(v197 + 676))(a2, v50, v51, v224 + 4, *v4, *(a2 + 8632), v14, v207, &v208 + 4, &v208);
LABEL_100:
      v60 = *v4;
      v26 = v205;
      if (!v13)
      {
        v68 = (SWORD2(v224[0]) - *v60) >> 1;
        if (v68 >= 2047)
        {
          v68 = 2047;
        }

        v69 = v68 & ~(v68 >> 31);
        v70 = (SHIWORD(v224[0]) - v60[1]) >> 1;
        if (v70 >= 2047)
        {
          v70 = 2047;
        }

        v64 = (102 * (*(*(a2 + 8688) + 4 * (v70 & ~(v70 >> 31))) + *(*(a2 + 8680) + 4 * v69))) >> 7;
        v65 = *(*(a2 + 8736) + 52);
        *(a2 + 6416) = HIDWORD(v224[0]);
        v71 = *(a2 + 8576);
        *(v71 + 4) = 13;
        v67 = HIDWORD(v224[0]);
        *(v71 + 8) = HIDWORD(v224[0]);
        v18 = v194;
        result = 56;
        if (v16[1])
        {
          if (!v16[2])
          {
            goto LABEL_115;
          }

          goto LABEL_125;
        }

        v66 = 10;
        goto LABEL_121;
      }

      v18 = v194;
      result = 56;
      if (v13 == v16[1])
      {
        v61 = (SWORD2(v224[0]) - *v60) >> 1;
        if (v61 >= 2047)
        {
          v61 = 2047;
        }

        v62 = v61 & ~(v61 >> 31);
        v63 = (SHIWORD(v224[0]) - v60[1]) >> 1;
        if (v63 >= 2047)
        {
          v63 = 2047;
        }

        v64 = (102 * (*(*(a2 + 8688) + 4 * (v63 & ~(v63 >> 31))) + *(*(a2 + 8680) + 4 * v62))) >> 7;
        v65 = *(*(a2 + 8736) + 52);
        v66 = 13;
        v67 = HIDWORD(v224[0]);
LABEL_121:
        *(a2 + 6472) = v67;
        v77 = *(a2 + 8576);
        *(v77 + 12) = v66;
        v76 = HIDWORD(v224[0]);
        *(v77 + 16) = HIDWORD(v224[0]);
        if (v13 == v16[2])
        {
          v75 = 10;
          goto LABEL_123;
        }

        goto LABEL_125;
      }

      v64 = 0;
      v65 = 0;
      if (v13 == v16[2])
      {
LABEL_115:
        v72 = (SWORD2(v224[0]) - *v60) >> 1;
        if (v72 >= 2047)
        {
          v72 = 2047;
        }

        v73 = v72 & ~(v72 >> 31);
        v74 = (SHIWORD(v224[0]) - v60[1]) >> 1;
        if (v74 >= 2047)
        {
          v74 = 2047;
        }

        v64 = (102 * (*(*(a2 + 8688) + 4 * (v74 & ~(v74 >> 31))) + *(*(a2 + 8680) + 4 * v73))) >> 7;
        v65 = *(*(a2 + 8736) + 52);
        v75 = 13;
        v76 = HIDWORD(v224[0]);
LABEL_123:
        *(a2 + 6528) = v76;
        v78 = *(a2 + 8576);
        *(v78 + 20) = v75;
        v79 = HIDWORD(v224[0]);
        *(v78 + 24) = HIDWORD(v224[0]);
        if (v13 == v16[3])
        {
          v80 = 10;
LABEL_131:
          *(a2 + 6584) = v79;
          v84 = *(a2 + 8576);
          *(v84 + 28) = v80;
          *(v84 + 32) = HIDWORD(v224[0]);
          goto LABEL_132;
        }

        goto LABEL_132;
      }

LABEL_125:
      if (v13 == v16[3])
      {
        v81 = (SWORD2(v224[0]) - *v60) >> 1;
        if (v81 >= 2047)
        {
          v81 = 2047;
        }

        v82 = v81 & ~(v81 >> 31);
        v83 = (SHIWORD(v224[0]) - v60[1]) >> 1;
        if (v83 >= 2047)
        {
          v83 = 2047;
        }

        v64 = (102 * (*(*(a2 + 8688) + 4 * (v83 & ~(v83 >> 31))) + *(*(a2 + 8680) + 4 * v82))) >> 7;
        v65 = *(*(a2 + 8736) + 52);
        v80 = 13;
        v79 = HIDWORD(v224[0]);
        goto LABEL_131;
      }

LABEL_132:
      v85 = 0;
      v86 = v192;
      v87 = v193;
      v88 = 4;
      do
      {
        if (v13 == *v86)
        {
          if ((v88 & 3) != 0 && v13 == *(v86 - 1))
          {
            v92 = 10;
          }

          else if (v13 == *(v86 - 4))
          {
            v92 = 11;
          }

          else
          {
            v89 = (SWORD2(v224[0]) - *v60) >> 1;
            if (v89 >= 2047)
            {
              v89 = 2047;
            }

            v90 = v89 & ~(v89 >> 31);
            v91 = (SHIWORD(v224[0]) - v60[1]) >> 1;
            if (v91 >= 2047)
            {
              v91 = 2047;
            }

            v64 = (102 * (*(*(a2 + 8688) + 4 * (v91 & ~(v91 >> 31))) + *(*(a2 + 8680) + 4 * v90))) >> 7;
            v65 = *(*(a2 + 8736) + 52);
            v92 = 13;
          }

          *v87 = HIDWORD(v224[0]);
          v93 = *(a2 + 8576) + v85;
          *(v93 + 36) = v92;
          *(v93 + 40) = HIDWORD(v224[0]);
        }

        ++v88;
        v85 += 8;
        v87 += 14;
        ++v86;
      }

      while (v85 != 96);
      v201 = v65 + v64;
      v34 = v224 + 4;
      v48 = SWORD2(v224[0]) >> 3;
      if (*(a2 + 8760) <= v48)
      {
        goto LABEL_147;
      }

LABEL_20:
      v25 = v202 + 1;
    }

    while (v202 != 13);
    v220 = v216;
    v221 = v217;
    v218 = v214;
    v219 = v215;
    v135 = *(a2 + 8096);
    v136 = (v135 - 76 * *(a2 + 8104));
    v137 = v136 + 1;
    if (v13 != *v16)
    {
      if (v13 != v16[1])
      {
        goto LABEL_199;
      }

      if (v26 == 10)
      {
        DWORD2(v223) = *(a2 + 6416);
        goto LABEL_192;
      }

      if (v26 == 11)
      {
        v162 = v136 + 16;
        if (*v136 != 9)
        {
          v162 = v136 + 1;
        }

        v163 = *v162;
        HIDWORD(v223) = v163;
        v21 = *(a2 + 6416) == v163;
        v139 = 10;
        if (!v21)
        {
          v139 = 11;
        }
      }

      else
      {
        v139 = v26;
        if (v26 == 12)
        {
          LODWORD(v224[0]) = 0;
        }
      }

LABEL_193:
      *(a2 + 6472) = *(v222 + v26);
      v145 = *(a2 + 8576);
      *(v145 + 12) = v139;
      *(v145 + 16) = *(v222 + v26);
      v146 = 1;
      if (v13 != v16[2])
      {
        goto LABEL_194;
      }

LABEL_200:
      if ((v146 & 1) == 0)
      {
        if (v26 != 10)
        {
          if (v26 == 11)
          {
            v168 = *v136;
            v167 = v136 + 17;
            if (v168 != 9)
            {
              v167 = v137;
            }

            v169 = *v167;
            HIDWORD(v223) = v169;
            v21 = *(a2 + 6472) == v169;
            v148 = 10;
            if (!v21)
            {
              v148 = 11;
            }
          }

          else
          {
            v148 = v26;
            if (v26 == 12)
            {
              LODWORD(v224[0]) = 0;
            }
          }

LABEL_202:
          *(a2 + 6528) = *(v222 + v26);
          v149 = *(a2 + 8576);
          *(v149 + 20) = v148;
          *(v149 + 24) = *(v222 + v26);
          if (v13 != v16[3])
          {
            goto LABEL_205;
          }

LABEL_203:
          v147 = 10;
          goto LABEL_204;
        }

        DWORD2(v223) = *(a2 + 6472);
      }

      v148 = 10;
      goto LABEL_202;
    }

    if (v26 == 10)
    {
      v143 = -72;
      if (*(v135 - 76) == 9)
      {
        v143 = -52;
      }

      DWORD2(v223) = *(v135 + v143);
      v138 = 10;
    }

    else if (v26 == 11)
    {
      v140 = v136 + 15;
      if (*v136 != 9)
      {
        v140 = v136 + 1;
      }

      v141 = *v140;
      HIDWORD(v223) = v141;
      v142 = -72;
      if (*(v135 - 76) == 9)
      {
        v142 = -52;
      }

      v21 = *(v135 + v142) == v141;
      v138 = 10;
      if (!v21)
      {
        v138 = 11;
      }
    }

    else
    {
      v138 = v26;
      if (v26 == 12)
      {
        LODWORD(v224[0]) = 0;
      }
    }

    *(a2 + 6416) = *(v222 + v26);
    v144 = *(a2 + 8576);
    *(v144 + 4) = v138;
    *(v144 + 8) = *(v222 + v26);
    if (v13 == v16[1])
    {
LABEL_192:
      v139 = 10;
      goto LABEL_193;
    }

LABEL_199:
    v146 = 0;
    if (v13 == v16[2])
    {
      goto LABEL_200;
    }

LABEL_194:
    if (v13 != v16[3])
    {
      goto LABEL_205;
    }

    if (v26 == 10)
    {
      DWORD2(v223) = *(a2 + 6528);
      goto LABEL_203;
    }

    if (v26 == 11)
    {
      v165 = *v136;
      v164 = v136 + 18;
      if (v165 != 9)
      {
        v164 = v137;
      }

      v166 = *v164;
      HIDWORD(v223) = v166;
      v21 = *(a2 + 6528) == v166;
      v147 = 10;
      if (!v21)
      {
        v147 = 11;
      }
    }

    else
    {
      v147 = v26;
      if (v26 == 12)
      {
        LODWORD(v224[0]) = 0;
      }
    }

LABEL_204:
    *(a2 + 6584) = *(v222 + v26);
    v150 = *(a2 + 8576);
    *(v150 + 28) = v147;
    *(v150 + 32) = *(v222 + v26);
LABEL_205:
    v151 = (v135 - 36);
    v152 = v192;
    v153 = v193;
    v154 = 40;
    v155 = 4;
    do
    {
      if (v13 == *v152)
      {
        if ((v155 & 3) != 0 && v13 == *(v152 - 1))
        {
          v156 = 10;
        }

        else if (v13 == *(v152 - 4))
        {
          v156 = 11;
        }

        else if (v26 == 12)
        {
          LODWORD(v224[0]) = 0;
          v156 = 12;
        }

        else if (v26 == 11)
        {
          v159 = *(v153 - 56);
          HIDWORD(v223) = *(v153 - 56);
          if ((v155 & 3) != 0)
          {
            v160 = v153 - 14;
          }

          else if (*(v135 - 76) == 9)
          {
            v160 = v151;
          }

          else
          {
            v160 = (v135 - 72);
          }

          if (*v160 == v159)
          {
            v156 = 10;
          }

          else
          {
            v156 = 11;
          }
        }

        else
        {
          v156 = v26;
          if (v26 == 10)
          {
            if ((v155 & 3) != 0)
            {
              v158 = v153 - 14;
            }

            else if (*(v135 - 76) == 9)
            {
              v158 = v151;
            }

            else
            {
              v158 = (v135 - 72);
            }

            DWORD2(v223) = *v158;
            v156 = 10;
          }
        }

        *v153 = *(v222 + v26);
        v157 = (*(a2 + 8576) + v154);
        *(v157 - 1) = v156;
        *v157 = *(v222 + v26);
      }

      ++v155;
      v154 += 8;
      ++v151;
      v153 += 14;
      ++v152;
    }

    while (v154 != 136);
    v17 = v173 + v175;
    v176 += HIDWORD(v173);
    v177 += v181;
    v161 = *(v4 + 3);
    v178 += v196;
    if (v178 >= v161)
    {
      break;
    }

    ++v13;
  }

  while (v13 != v171);
  if (v178 < v161)
  {
    *(v4 + 5) = v17;
    *(v4 + 6) = v176;
    *(v4 + 7) = v177;
    *(v4 + 3) = v178;
    *(v4 + 4) = a4;
    *(v4 + 24) = *(*(a2 + 8576) + 8);
    *(v4 + 8) = *(*(a2 + 8576) + 4);
    *(v4 + 160) = *v170;
    *(v4 + 25) = *(*(a2 + 8576) + 16);
    *(v4 + 9) = *(*(a2 + 8576) + 12);
    *(v4 + 161) = v170[1];
    *(v4 + 26) = *(*(a2 + 8576) + 24);
    *(v4 + 10) = *(*(a2 + 8576) + 20);
    *(v4 + 162) = v170[2];
    *(v4 + 27) = *(*(a2 + 8576) + 32);
    *(v4 + 11) = *(*(a2 + 8576) + 28);
    *(v4 + 163) = v170[3];
    *(v4 + 28) = *(*(a2 + 8576) + 40);
    *(v4 + 12) = *(*(a2 + 8576) + 36);
    *(v4 + 164) = v170[4];
    *(v4 + 29) = *(*(a2 + 8576) + 48);
    *(v4 + 13) = *(*(a2 + 8576) + 44);
    *(v4 + 165) = v170[5];
    *(v4 + 30) = *(*(a2 + 8576) + 56);
    *(v4 + 14) = *(*(a2 + 8576) + 52);
    *(v4 + 166) = v170[6];
    *(v4 + 31) = *(*(a2 + 8576) + 64);
    *(v4 + 15) = *(*(a2 + 8576) + 60);
    *(v4 + 167) = v170[7];
    *(v4 + 32) = *(*(a2 + 8576) + 72);
    *(v4 + 16) = *(*(a2 + 8576) + 68);
    *(v4 + 168) = v170[8];
    *(v4 + 33) = *(*(a2 + 8576) + 80);
    *(v4 + 17) = *(*(a2 + 8576) + 76);
    *(v4 + 169) = v170[9];
    *(v4 + 34) = *(*(a2 + 8576) + 88);
    *(v4 + 18) = *(*(a2 + 8576) + 84);
    *(v4 + 170) = v170[10];
    *(v4 + 35) = *(*(a2 + 8576) + 96);
    *(v4 + 19) = *(*(a2 + 8576) + 92);
    *(v4 + 171) = v170[11];
    *(v4 + 36) = *(*(a2 + 8576) + 104);
    *(v4 + 20) = *(*(a2 + 8576) + 100);
    *(v4 + 172) = v170[12];
    *(v4 + 37) = *(*(a2 + 8576) + 112);
    *(v4 + 21) = *(*(a2 + 8576) + 108);
    *(v4 + 173) = v170[13];
    *(v4 + 38) = *(*(a2 + 8576) + 120);
    *(v4 + 22) = *(*(a2 + 8576) + 116);
    *(v4 + 174) = v170[14];
    *(v4 + 39) = *(*(a2 + 8576) + 128);
    *(v4 + 23) = *(*(a2 + 8576) + 124);
    *(v4 + 175) = v170[15];
  }

  return result;
}